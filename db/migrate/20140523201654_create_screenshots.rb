# Copyright 2014 Square Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

class CreateScreenshots < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE screenshots(
        commit_id INTEGER NOT NULL REFERENCES commits(id) ON DELETE CASCADE,
        created_at timestamp without time zone,
        updated_at timestamp without time zone
      )
    SQL
  end

  def down
    drop_table :screenshots
  end
end
