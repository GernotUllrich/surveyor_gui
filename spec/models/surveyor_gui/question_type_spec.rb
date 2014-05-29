# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe QuestionType do
  let(:question_group1) { FactoryGirl.create(:question_group, display_type: "grid") }
  let(:question_group2) { FactoryGirl.create(:question_group, display_type: "inline") }
  
  let(:textbox)         { FactoryGirl.create(
                            :question,
                            pick:             "none",
                            display_type:     "text",
                            question_group_id: nil
                          )
                        }
  let(:text)            { FactoryGirl.create(
                           :question,
                           pick:             "none",
                           display_type:     "default",
                           question_group_id: nil
                          )
                        }
  let(:float)           { FactoryGirl.create(
                           :question,
                           pick:             "none",
                           display_type:     "float",
                           question_group_id: nil
                         )
                        }
  let(:integer)         { FactoryGirl.create(
                           :question,
                           pick:             "none",
                           display_type:     "float",
                           question_group_id: nil
                         )
                        }
  let(:date)            { FactoryGirl.create(
                           :question,
                           pick:             "none",
                           display_type:     "date",
                           question_group_id: nil
                         )
                        }
  let(:file)            { FactoryGirl.create(
                           :question,
                           pick:             "none",
                           display_type:     "file",
                           question_group_id: nil
                         )
                        }
  let(:label)           { FactoryGirl.create(
                           :question,
                           pick:             "none",
                           display_type:     "label",
                           question_group_id: nil
                         )
                        }
  let(:pick_one)        { FactoryGirl.create(
                           :question,
                           pick:             "one",
                           display_type:      nil,
                           question_group_id: nil
                         )
                        }
  let(:pick_any)        { FactoryGirl.create(
                           :question,
                           pick:             "any",
                           display_type:      nil,
                           question_group_id: nil
                         )
                        }
  let(:dropdown)        { FactoryGirl.create(
                           :question,
                           pick:             "one",
                           display_type:      "dropdown",
                           question_group_id: nil
                         )
                        }
  let(:slider)          { FactoryGirl.create(
                           :question,
                           pick:             "one",
                           display_type:      "slider",
                           question_group_id: nil
                         )
                        }
  let(:stars)           { FactoryGirl.create(
                           :question,
                           pick:             "one",
                           display_type:      "stars",
                           question_group_id: nil
                         )
                        }
  let(:grid_one)        { FactoryGirl.create(
                           :question,
                           pick:             "one",
                           display_type:      "",
                           question_group_id: question_group1.id
                         )
                        }
  let(:grid_any)        { FactoryGirl.create(
                           :question,
                           pick:             "any",
                           display_type:      "",
                           question_group_id: question_group1.id
                         )
                        }
  let(:grid_dropdown)   { FactoryGirl.create(
                           :question,
                           pick:             "one",
                           display_type:      "dropdown",
                           question_group_id: question_group1.id
                         )
                        }
  let(:group_inline)   { FactoryGirl.create(
                           :question,
                           pick:             "",
                           display_type:      "",
                           question_group_id: question_group2.id
                         )
                        }


  context "when categorizing question" do
    before do
      text.reload
    end
    
    it "recognizes a textbox question" do
      expect(textbox.question_type.id).to eql :box
    end
    
    it "recognizes a text question" do
      expect(text.question_type.id).to eql :string
    end
    
    it "recognizes a float question" do
      expect(float.question_type.id).to eql :number
    end
    
    it "recognizes an date question" do
      expect(date.question_type.id).to eql :date
    end
    
    it "recognizes a file question" do
      expect(file.question_type.id).to eql :file
    end
    
    it "recognizes a label" do
      expect(label.question_type.id).to eql :label
    end
    
    it "recognizes a pick one question" do
      expect(pick_one.question_type.id).to eql :pick_one
    end
    
    it "recognizes a pick any question" do
      expect(pick_any.question_type.id).to eql :pick_any
    end
    
    it "recognizes a dropdown question" do
      expect(dropdown.question_type.id).to eql :dropdown
    end
    
    it "recognizes a slider question" do
      expect(slider.question_type.id).to eql :slider
    end
    
    it "recognizes a stars question" do
      expect(stars.question_type.id).to eql :stars
    end
    
    it "recognizes a grid one question" do
      expect(grid_one.question_type.id).to eql :grid_one
    end
    
    it "recognizes a grid any question" do
      expect(grid_any.question_type.id).to eql :grid_any
    end
    
    it "recognizes a grid dropdown question" do
      expect(grid_dropdown.question_type.id).to eql :grid_dropdown
    end
    
    it "recognizes a group inline question" do
      expect(group_inline.question_type.id).to eql :group_inline
    end
    
  end

end