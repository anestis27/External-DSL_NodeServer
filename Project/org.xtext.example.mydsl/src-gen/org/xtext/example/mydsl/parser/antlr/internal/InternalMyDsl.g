/*
 * generated by Xtext 2.12.0
 */
grammar InternalMyDsl;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.example.mydsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

}

@parser::members {

 	private MyDslGrammarAccess grammarAccess;

    public InternalMyDslParser(TokenStream input, MyDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected MyDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getMembersMemberParserRuleCall_0());
			}
			lv_members_0_0=ruleMember
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"members",
					lv_members_0_0,
					"org.xtext.example.mydsl.MyDsl.Member");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleMember
entryRuleMember returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMemberRule()); }
	iv_ruleMember=ruleMember
	{ $current=$iv_ruleMember.current; }
	EOF;

// Rule Member
ruleMember returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getMemberAccess().getServerEntityParserRuleCall_0());
		}
		this_ServerEntity_0=ruleServerEntity
		{
			$current = $this_ServerEntity_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getMemberAccess().getMemberEntityParserRuleCall_1());
		}
		this_MemberEntity_1=ruleMemberEntity
		{
			$current = $this_MemberEntity_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getMemberAccess().getVerbParserRuleCall_2());
		}
		this_Verb_2=ruleVerb
		{
			$current = $this_Verb_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleServerEntity
entryRuleServerEntity returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getServerEntityRule()); }
	iv_ruleServerEntity=ruleServerEntity
	{ $current=$iv_ruleServerEntity.current; }
	EOF;

// Rule ServerEntity
ruleServerEntity returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#'
		{
			newLeafNode(otherlv_0, grammarAccess.getServerEntityAccess().getNumberSignKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getServerEntityAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getServerEntityRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getServerEntityAccess().getIsIsServerParserRuleCall_2_0());
				}
				lv_is_2_0=ruleIsServer
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getServerEntityRule());
					}
					set(
						$current,
						"is",
						lv_is_2_0,
						"org.xtext.example.mydsl.MyDsl.IsServer");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getServerEntityAccess().getAttributesAttributeParserRuleCall_3_0());
				}
				lv_attributes_3_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getServerEntityRule());
					}
					add(
						$current,
						"attributes",
						lv_attributes_3_0,
						"org.xtext.example.mydsl.MyDsl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleIsServer
entryRuleIsServer returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getIsServerRule()); }
	iv_ruleIsServer=ruleIsServer
	{ $current=$iv_ruleIsServer.current; }
	EOF;

// Rule IsServer
ruleIsServer returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_value_0_0='SERVER'
			{
				newLeafNode(lv_value_0_0, grammarAccess.getIsServerAccess().getValueSERVERKeyword_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getIsServerRule());
				}
				setWithLastConsumed($current, "value", lv_value_0_0, "SERVER");
			}
		)
	)
;

// Entry rule entryRuleMemberEntity
entryRuleMemberEntity returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMemberEntityRule()); }
	iv_ruleMemberEntity=ruleMemberEntity
	{ $current=$iv_ruleMemberEntity.current; }
	EOF;

// Rule MemberEntity
ruleMemberEntity returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#'
		{
			newLeafNode(otherlv_0, grammarAccess.getMemberEntityAccess().getNumberSignKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getMemberEntityAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMemberEntityRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getMemberEntityAccess().getAttributesAttributeParserRuleCall_2_0());
				}
				lv_attributes_2_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMemberEntityRule());
					}
					add(
						$current,
						"attributes",
						lv_attributes_2_0,
						"org.xtext.example.mydsl.MyDsl.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	iv_ruleAttribute=ruleAttribute
	{ $current=$iv_ruleAttribute.current; }
	EOF;

// Rule Attribute
ruleAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='->'
		{
			newLeafNode(otherlv_0, grammarAccess.getAttributeAccess().getHyphenMinusGreaterThanSignKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getAttributeAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getAttributeAccess().getValueValueTypeParserRuleCall_3_0());
				}
				lv_value_3_0=ruleValueType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAttributeRule());
					}
					set(
						$current,
						"value",
						lv_value_3_0,
						"org.xtext.example.mydsl.MyDsl.ValueType");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleValueType
entryRuleValueType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getValueTypeRule()); }
	iv_ruleValueType=ruleValueType
	{ $current=$iv_ruleValueType.current; }
	EOF;

// Rule ValueType
ruleValueType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getValueTypeAccess().getElementTypeElementTypeParserRuleCall_0());
			}
			lv_elementType_0_0=ruleElementType
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getValueTypeRule());
				}
				set(
					$current,
					"elementType",
					lv_elementType_0_0,
					"org.xtext.example.mydsl.MyDsl.ElementType");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleElementType
entryRuleElementType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getElementTypeRule()); }
	iv_ruleElementType=ruleElementType
	{ $current=$iv_ruleElementType.current; }
	EOF;

// Rule ElementType
ruleElementType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getElementTypeAccess().getBasicTypeParserRuleCall_0());
		}
		this_BasicType_0=ruleBasicType
		{
			$current = $this_BasicType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getElementTypeAccess().getEntityTypeParserRuleCall_1());
		}
		this_EntityType_1=ruleEntityType
		{
			$current = $this_EntityType_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getElementTypeAccess().getArrayTypeParserRuleCall_2());
		}
		this_ArrayType_2=ruleArrayType
		{
			$current = $this_ArrayType_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleEntityType
entryRuleEntityType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEntityTypeRule()); }
	iv_ruleEntityType=ruleEntityType
	{ $current=$iv_ruleEntityType.current; }
	EOF;

// Rule EntityType
ruleEntityType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getEntityTypeRule());
				}
			}
			otherlv_0=RULE_ID
			{
				newLeafNode(otherlv_0, grammarAccess.getEntityTypeAccess().getEntityEntityCrossReference_0());
			}
		)
	)
;

// Entry rule entryRuleBasicType
entryRuleBasicType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBasicTypeRule()); }
	iv_ruleBasicType=ruleBasicType
	{ $current=$iv_ruleBasicType.current; }
	EOF;

// Rule BasicType
ruleBasicType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getBasicTypeAccess().getIntTypeAction_0_0(),
						$current);
				}
			)
			(
				(
					lv_value_1_0=RULE_INT
					{
						newLeafNode(lv_value_1_0, grammarAccess.getBasicTypeAccess().getValueINTTerminalRuleCall_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getBasicTypeRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_1_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getBasicTypeAccess().getStringTypeAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_value_3_0=RULE_STRING
					{
						newLeafNode(lv_value_3_0, grammarAccess.getBasicTypeAccess().getValueSTRINGTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getBasicTypeRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_3_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getBasicTypeAccess().getBoolTypeAction_2_0(),
						$current);
				}
			)
			(
				(
					(
						lv_value_5_1='true'
						{
							newLeafNode(lv_value_5_1, grammarAccess.getBasicTypeAccess().getValueTrueKeyword_2_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getBasicTypeRule());
							}
							setWithLastConsumed($current, "value", lv_value_5_1, null);
						}
						    |
						lv_value_5_2='false'
						{
							newLeafNode(lv_value_5_2, grammarAccess.getBasicTypeAccess().getValueFalseKeyword_2_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getBasicTypeRule());
							}
							setWithLastConsumed($current, "value", lv_value_5_2, null);
						}
					)
				)
			)
		)
	)
;

// Entry rule entryRuleArrayType
entryRuleArrayType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getArrayTypeRule()); }
	iv_ruleArrayType=ruleArrayType
	{ $current=$iv_ruleArrayType.current; }
	EOF;

// Rule ArrayType
ruleArrayType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getArrayTypeAccess().getArrayElementsArrayElementParserRuleCall_0());
			}
			lv_arrayElements_0_0=ruleArrayElement
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getArrayTypeRule());
				}
				add(
					$current,
					"arrayElements",
					lv_arrayElements_0_0,
					"org.xtext.example.mydsl.MyDsl.ArrayElement");
				afterParserOrEnumRuleCall();
			}
		)
	)+
;

// Entry rule entryRuleArrayElement
entryRuleArrayElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getArrayElementRule()); }
	iv_ruleArrayElement=ruleArrayElement
	{ $current=$iv_ruleArrayElement.current; }
	EOF;

// Rule ArrayElement
ruleArrayElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='-'
		{
			newLeafNode(otherlv_0, grammarAccess.getArrayElementAccess().getHyphenMinusKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getArrayElementAccess().getValueBasicTypeParserRuleCall_1_0());
				}
				lv_value_1_0=ruleBasicType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getArrayElementRule());
					}
					set(
						$current,
						"value",
						lv_value_1_0,
						"org.xtext.example.mydsl.MyDsl.BasicType");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleVerb
entryRuleVerb returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVerbRule()); }
	iv_ruleVerb=ruleVerb
	{ $current=$iv_ruleVerb.current; }
	EOF;

// Rule Verb
ruleVerb returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='@'
		{
			newLeafNode(otherlv_0, grammarAccess.getVerbAccess().getCommercialAtKeyword_0());
		}
		(
			(
				(
					lv_verb_1_1='get'
					{
						newLeafNode(lv_verb_1_1, grammarAccess.getVerbAccess().getVerbGetKeyword_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getVerbRule());
						}
						setWithLastConsumed($current, "verb", lv_verb_1_1, null);
					}
					    |
					lv_verb_1_2='put'
					{
						newLeafNode(lv_verb_1_2, grammarAccess.getVerbAccess().getVerbPutKeyword_1_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getVerbRule());
						}
						setWithLastConsumed($current, "verb", lv_verb_1_2, null);
					}
					    |
					lv_verb_1_3='post'
					{
						newLeafNode(lv_verb_1_3, grammarAccess.getVerbAccess().getVerbPostKeyword_1_0_2());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getVerbRule());
						}
						setWithLastConsumed($current, "verb", lv_verb_1_3, null);
					}
					    |
					lv_verb_1_4='delete'
					{
						newLeafNode(lv_verb_1_4, grammarAccess.getVerbAccess().getVerbDeleteKeyword_1_0_3());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getVerbRule());
						}
						setWithLastConsumed($current, "verb", lv_verb_1_4, null);
					}
				)
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getVerbAccess().getQaQualifiedNameParserRuleCall_2_0());
				}
				lv_qa_2_0=ruleQualifiedName
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVerbRule());
					}
					set(
						$current,
						"qa",
						lv_qa_2_0,
						"org.xtext.example.mydsl.MyDsl.QualifiedName");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getVerbAccess().getRulesRuleParserRuleCall_3_0());
				}
				lv_rules_3_0=ruleRule
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVerbRule());
					}
					add(
						$current,
						"rules",
						lv_rules_3_0,
						"org.xtext.example.mydsl.MyDsl.Rule");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleRule
entryRuleRule returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRuleRule()); }
	iv_ruleRule=ruleRule
	{ $current=$iv_ruleRule.current; }
	EOF;

// Rule Rule
ruleRule returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getRuleAccess().getConditionConditionParserRuleCall_0_0());
				}
				lv_condition_0_0=ruleCondition
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRuleRule());
					}
					set(
						$current,
						"condition",
						lv_condition_0_0,
						"org.xtext.example.mydsl.MyDsl.Condition");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getRuleAccess().getUrlArrayTypeParserRuleCall_1_0());
				}
				lv_url_1_0=ruleArrayType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRuleRule());
					}
					set(
						$current,
						"url",
						lv_url_1_0,
						"org.xtext.example.mydsl.MyDsl.ArrayType");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleCondition
entryRuleCondition returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getConditionRule()); }
	iv_ruleCondition=ruleCondition
	{ $current=$iv_ruleCondition.current; }
	EOF;

// Rule Condition
ruleCondition returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='REQUIRE'
		{
			newLeafNode(otherlv_0, grammarAccess.getConditionAccess().getREQUIREKeyword_0());
		}
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getConditionAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getConditionAccess().getExpressionExpressionParserRuleCall_2_0());
				}
				lv_expression_2_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getConditionRule());
					}
					set(
						$current,
						"expression",
						lv_expression_2_0,
						"org.xtext.example.mydsl.MyDsl.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=')'
		{
			newLeafNode(otherlv_3, grammarAccess.getConditionAccess().getRightParenthesisKeyword_3());
		}
	)
;

// Entry rule entryRuleExpression
entryRuleExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExpressionRule()); }
	iv_ruleExpression=ruleExpression
	{ $current=$iv_ruleExpression.current; }
	EOF;

// Rule Expression
ruleExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getExpressionAccess().getOrParserRuleCall());
	}
	this_Or_0=ruleOr
	{
		$current = $this_Or_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleOr
entryRuleOr returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOrRule()); }
	iv_ruleOr=ruleOr
	{ $current=$iv_ruleOr.current; }
	EOF;

// Rule Or
ruleOr returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getOrAccess().getAndParserRuleCall_0());
		}
		this_And_0=ruleAnd
		{
			$current = $this_And_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getOrAccess().getOrLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='||'
			{
				newLeafNode(otherlv_2, grammarAccess.getOrAccess().getVerticalLineVerticalLineKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getOrAccess().getRightAndParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleAnd
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOrRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl.MyDsl.And");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleAnd
entryRuleAnd returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAndRule()); }
	iv_ruleAnd=ruleAnd
	{ $current=$iv_ruleAnd.current; }
	EOF;

// Rule And
ruleAnd returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAndAccess().getEqualityParserRuleCall_0());
		}
		this_Equality_0=ruleEquality
		{
			$current = $this_Equality_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getAndAccess().getAndLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='&&'
			{
				newLeafNode(otherlv_2, grammarAccess.getAndAccess().getAmpersandAmpersandKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getAndAccess().getRightEqualityParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleEquality
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getAndRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl.MyDsl.Equality");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleEquality
entryRuleEquality returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEqualityRule()); }
	iv_ruleEquality=ruleEquality
	{ $current=$iv_ruleEquality.current; }
	EOF;

// Rule Equality
ruleEquality returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getEqualityAccess().getComparisonParserRuleCall_0());
		}
		this_Comparison_0=ruleComparison
		{
			$current = $this_Comparison_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getEqualityAccess().getEqualityLeftAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='=='
						{
							newLeafNode(lv_op_2_1, grammarAccess.getEqualityAccess().getOpEqualsSignEqualsSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEqualityRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='!='
						{
							newLeafNode(lv_op_2_2, grammarAccess.getEqualityAccess().getOpExclamationMarkEqualsSignKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEqualityRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getEqualityAccess().getRightComparisonParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleComparison
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEqualityRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl.MyDsl.Comparison");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleComparison
entryRuleComparison returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComparisonRule()); }
	iv_ruleComparison=ruleComparison
	{ $current=$iv_ruleComparison.current; }
	EOF;

// Rule Comparison
ruleComparison returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getComparisonAccess().getPlusOrMinusParserRuleCall_0());
		}
		this_PlusOrMinus_0=rulePlusOrMinus
		{
			$current = $this_PlusOrMinus_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getComparisonAccess().getComparisonLeftAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='>='
						{
							newLeafNode(lv_op_2_1, grammarAccess.getComparisonAccess().getOpGreaterThanSignEqualsSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='<='
						{
							newLeafNode(lv_op_2_2, grammarAccess.getComparisonAccess().getOpLessThanSignEqualsSignKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
						    |
						lv_op_2_3='>'
						{
							newLeafNode(lv_op_2_3, grammarAccess.getComparisonAccess().getOpGreaterThanSignKeyword_1_1_0_2());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_3, null);
						}
						    |
						lv_op_2_4='<'
						{
							newLeafNode(lv_op_2_4, grammarAccess.getComparisonAccess().getOpLessThanSignKeyword_1_1_0_3());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_4, null);
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getComparisonAccess().getRightPlusOrMinusParserRuleCall_1_2_0());
					}
					lv_right_3_0=rulePlusOrMinus
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getComparisonRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl.MyDsl.PlusOrMinus");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePlusOrMinus
entryRulePlusOrMinus returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPlusOrMinusRule()); }
	iv_rulePlusOrMinus=rulePlusOrMinus
	{ $current=$iv_rulePlusOrMinus.current; }
	EOF;

// Rule PlusOrMinus
rulePlusOrMinus returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getPlusOrMinusAccess().getMulOrDivParserRuleCall_0());
		}
		this_MulOrDiv_0=ruleMulOrDiv
		{
			$current = $this_MulOrDiv_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getPlusOrMinusAccess().getPlusLeftAction_1_0_0_0(),
								$current);
						}
					)
					otherlv_2='+'
					{
						newLeafNode(otherlv_2, grammarAccess.getPlusOrMinusAccess().getPlusSignKeyword_1_0_0_1());
					}
				)
				    |
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getPlusOrMinusAccess().getMinusLeftAction_1_0_1_0(),
								$current);
						}
					)
					otherlv_4='-'
					{
						newLeafNode(otherlv_4, grammarAccess.getPlusOrMinusAccess().getHyphenMinusKeyword_1_0_1_1());
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getPlusOrMinusAccess().getRightMulOrDivParserRuleCall_1_1_0());
					}
					lv_right_5_0=ruleMulOrDiv
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPlusOrMinusRule());
						}
						set(
							$current,
							"right",
							lv_right_5_0,
							"org.xtext.example.mydsl.MyDsl.MulOrDiv");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleMulOrDiv
entryRuleMulOrDiv returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMulOrDivRule()); }
	iv_ruleMulOrDiv=ruleMulOrDiv
	{ $current=$iv_ruleMulOrDiv.current; }
	EOF;

// Rule MulOrDiv
ruleMulOrDiv returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getMulOrDivAccess().getPrimaryParserRuleCall_0());
		}
		this_Primary_0=rulePrimary
		{
			$current = $this_Primary_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getMulOrDivAccess().getMulOrDivLeftAction_1_0_0(),
							$current);
					}
				)
				(
					(
						(
							lv_op_2_1='*'
							{
								newLeafNode(lv_op_2_1, grammarAccess.getMulOrDivAccess().getOpAsteriskKeyword_1_0_1_0_0());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getMulOrDivRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_1, null);
							}
							    |
							lv_op_2_2='/'
							{
								newLeafNode(lv_op_2_2, grammarAccess.getMulOrDivAccess().getOpSolidusKeyword_1_0_1_0_1());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getMulOrDivRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_2, null);
							}
						)
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getMulOrDivAccess().getRightPrimaryParserRuleCall_1_1_0());
					}
					lv_right_3_0=rulePrimary
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMulOrDivRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"org.xtext.example.mydsl.MyDsl.Primary");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePrimary
entryRulePrimary returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimaryRule()); }
	iv_rulePrimary=rulePrimary
	{ $current=$iv_rulePrimary.current; }
	EOF;

// Rule Primary
rulePrimary returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='('
			{
				newLeafNode(otherlv_0, grammarAccess.getPrimaryAccess().getLeftParenthesisKeyword_0_0());
			}
			{
				newCompositeNode(grammarAccess.getPrimaryAccess().getExpressionParserRuleCall_0_1());
			}
			this_Expression_1=ruleExpression
			{
				$current = $this_Expression_1.current;
				afterParserOrEnumRuleCall();
			}
			otherlv_2=')'
			{
				newLeafNode(otherlv_2, grammarAccess.getPrimaryAccess().getRightParenthesisKeyword_0_2());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getPrimaryAccess().getNotAction_1_0(),
						$current);
				}
			)
			otherlv_4='!'
			{
				newLeafNode(otherlv_4, grammarAccess.getPrimaryAccess().getExclamationMarkKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getPrimaryAccess().getExpressionPrimaryParserRuleCall_1_2_0());
					}
					lv_expression_5_0=rulePrimary
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPrimaryRule());
						}
						set(
							$current,
							"expression",
							lv_expression_5_0,
							"org.xtext.example.mydsl.MyDsl.Primary");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		{
			newCompositeNode(grammarAccess.getPrimaryAccess().getAtomicParserRuleCall_2());
		}
		this_Atomic_6=ruleAtomic
		{
			$current = $this_Atomic_6.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleAtomic
entryRuleAtomic returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAtomicRule()); }
	iv_ruleAtomic=ruleAtomic
	{ $current=$iv_ruleAtomic.current; }
	EOF;

// Rule Atomic
ruleAtomic returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getIntConstantAction_0_0(),
						$current);
				}
			)
			(
				(
					lv_value_1_0=RULE_INT
					{
						newLeafNode(lv_value_1_0, grammarAccess.getAtomicAccess().getValueINTTerminalRuleCall_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAtomicRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_1_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getStringConstantAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_value_3_0=RULE_STRING
					{
						newLeafNode(lv_value_3_0, grammarAccess.getAtomicAccess().getValueSTRINGTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAtomicRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_3_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getBoolConstantAction_2_0(),
						$current);
				}
			)
			(
				(
					(
						lv_value_5_1='True'
						{
							newLeafNode(lv_value_5_1, grammarAccess.getAtomicAccess().getValueTrueKeyword_2_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getAtomicRule());
							}
							setWithLastConsumed($current, "value", lv_value_5_1, null);
						}
						    |
						lv_value_5_2='False'
						{
							newLeafNode(lv_value_5_2, grammarAccess.getAtomicAccess().getValueFalseKeyword_2_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getAtomicRule());
							}
							setWithLastConsumed($current, "value", lv_value_5_2, null);
						}
					)
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getVariableConstantAction_3_0(),
						$current);
				}
			)
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAtomicRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getAtomicAccess().getValueAttributeCrossReference_3_1_0());
					}
					ruleQualifiedName
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
	)
;

// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); }
	iv_ruleQualifiedName=ruleQualifiedName
	{ $current=$iv_ruleQualifiedName.current.getText(); }
	EOF;

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1());
			}
		)*
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;