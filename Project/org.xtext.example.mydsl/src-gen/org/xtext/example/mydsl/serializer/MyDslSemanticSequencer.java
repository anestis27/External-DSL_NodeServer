/*
 * generated by Xtext 2.12.0
 */
package org.xtext.example.mydsl.serializer;

import com.google.inject.Inject;
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import org.xtext.example.mydsl.myDsl.And;
import org.xtext.example.mydsl.myDsl.ArrayElement;
import org.xtext.example.mydsl.myDsl.ArrayType;
import org.xtext.example.mydsl.myDsl.Attribute;
import org.xtext.example.mydsl.myDsl.BoolConstant;
import org.xtext.example.mydsl.myDsl.BoolType;
import org.xtext.example.mydsl.myDsl.Comparison;
import org.xtext.example.mydsl.myDsl.Condition;
import org.xtext.example.mydsl.myDsl.Entity;
import org.xtext.example.mydsl.myDsl.EntityType;
import org.xtext.example.mydsl.myDsl.Equality;
import org.xtext.example.mydsl.myDsl.IntConstant;
import org.xtext.example.mydsl.myDsl.IntType;
import org.xtext.example.mydsl.myDsl.IsServer;
import org.xtext.example.mydsl.myDsl.Minus;
import org.xtext.example.mydsl.myDsl.Model;
import org.xtext.example.mydsl.myDsl.MulOrDiv;
import org.xtext.example.mydsl.myDsl.MyDslPackage;
import org.xtext.example.mydsl.myDsl.Not;
import org.xtext.example.mydsl.myDsl.Or;
import org.xtext.example.mydsl.myDsl.Plus;
import org.xtext.example.mydsl.myDsl.Rule;
import org.xtext.example.mydsl.myDsl.StringConstant;
import org.xtext.example.mydsl.myDsl.StringType;
import org.xtext.example.mydsl.myDsl.ValueType;
import org.xtext.example.mydsl.myDsl.VariableConstant;
import org.xtext.example.mydsl.myDsl.Verb;
import org.xtext.example.mydsl.services.MyDslGrammarAccess;

@SuppressWarnings("all")
public class MyDslSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private MyDslGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == MyDslPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case MyDslPackage.AND:
				sequence_And(context, (And) semanticObject); 
				return; 
			case MyDslPackage.ARRAY_ELEMENT:
				sequence_ArrayElement(context, (ArrayElement) semanticObject); 
				return; 
			case MyDslPackage.ARRAY_TYPE:
				sequence_ArrayType(context, (ArrayType) semanticObject); 
				return; 
			case MyDslPackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case MyDslPackage.BOOL_CONSTANT:
				sequence_Atomic(context, (BoolConstant) semanticObject); 
				return; 
			case MyDslPackage.BOOL_TYPE:
				sequence_BasicType(context, (BoolType) semanticObject); 
				return; 
			case MyDslPackage.COMPARISON:
				sequence_Comparison(context, (Comparison) semanticObject); 
				return; 
			case MyDslPackage.CONDITION:
				sequence_Condition(context, (Condition) semanticObject); 
				return; 
			case MyDslPackage.ENTITY:
				if (rule == grammarAccess.getMemberEntityRule()) {
					sequence_MemberEntity(context, (Entity) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getMemberRule()) {
					sequence_MemberEntity_ServerEntity(context, (Entity) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getServerEntityRule()) {
					sequence_ServerEntity(context, (Entity) semanticObject); 
					return; 
				}
				else break;
			case MyDslPackage.ENTITY_TYPE:
				sequence_EntityType(context, (EntityType) semanticObject); 
				return; 
			case MyDslPackage.EQUALITY:
				sequence_Equality(context, (Equality) semanticObject); 
				return; 
			case MyDslPackage.INT_CONSTANT:
				sequence_Atomic(context, (IntConstant) semanticObject); 
				return; 
			case MyDslPackage.INT_TYPE:
				sequence_BasicType(context, (IntType) semanticObject); 
				return; 
			case MyDslPackage.IS_SERVER:
				sequence_IsServer(context, (IsServer) semanticObject); 
				return; 
			case MyDslPackage.MINUS:
				sequence_PlusOrMinus(context, (Minus) semanticObject); 
				return; 
			case MyDslPackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case MyDslPackage.MUL_OR_DIV:
				sequence_MulOrDiv(context, (MulOrDiv) semanticObject); 
				return; 
			case MyDslPackage.NOT:
				sequence_Primary(context, (Not) semanticObject); 
				return; 
			case MyDslPackage.OR:
				sequence_Or(context, (Or) semanticObject); 
				return; 
			case MyDslPackage.PLUS:
				sequence_PlusOrMinus(context, (Plus) semanticObject); 
				return; 
			case MyDslPackage.RULE:
				sequence_Rule(context, (Rule) semanticObject); 
				return; 
			case MyDslPackage.STRING_CONSTANT:
				sequence_Atomic(context, (StringConstant) semanticObject); 
				return; 
			case MyDslPackage.STRING_TYPE:
				sequence_BasicType(context, (StringType) semanticObject); 
				return; 
			case MyDslPackage.VALUE_TYPE:
				sequence_ValueType(context, (ValueType) semanticObject); 
				return; 
			case MyDslPackage.VARIABLE_CONSTANT:
				sequence_Atomic(context, (VariableConstant) semanticObject); 
				return; 
			case MyDslPackage.VERB:
				sequence_Verb(context, (Verb) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Contexts:
	 *     Expression returns And
	 *     Or returns And
	 *     Or.Or_1_0 returns And
	 *     And returns And
	 *     And.And_1_0 returns And
	 *     Equality returns And
	 *     Equality.Equality_1_0 returns And
	 *     Comparison returns And
	 *     Comparison.Comparison_1_0 returns And
	 *     PlusOrMinus returns And
	 *     PlusOrMinus.Plus_1_0_0_0 returns And
	 *     PlusOrMinus.Minus_1_0_1_0 returns And
	 *     MulOrDiv returns And
	 *     MulOrDiv.MulOrDiv_1_0_0 returns And
	 *     Primary returns And
	 *
	 * Constraint:
	 *     (left=And_And_1_0 right=Equality)
	 */
	protected void sequence_And(ISerializationContext context, And semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.AND__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.AND__LEFT));
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.AND__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.AND__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAndAccess().getAndLeftAction_1_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getAndAccess().getRightEqualityParserRuleCall_1_2_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ArrayElement returns ArrayElement
	 *
	 * Constraint:
	 *     value=BasicType
	 */
	protected void sequence_ArrayElement(ISerializationContext context, ArrayElement semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.ARRAY_ELEMENT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.ARRAY_ELEMENT__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getArrayElementAccess().getValueBasicTypeParserRuleCall_1_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ElementType returns ArrayType
	 *     ArrayType returns ArrayType
	 *
	 * Constraint:
	 *     arrayElements+=ArrayElement+
	 */
	protected void sequence_ArrayType(ISerializationContext context, ArrayType semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns BoolConstant
	 *     Or returns BoolConstant
	 *     Or.Or_1_0 returns BoolConstant
	 *     And returns BoolConstant
	 *     And.And_1_0 returns BoolConstant
	 *     Equality returns BoolConstant
	 *     Equality.Equality_1_0 returns BoolConstant
	 *     Comparison returns BoolConstant
	 *     Comparison.Comparison_1_0 returns BoolConstant
	 *     PlusOrMinus returns BoolConstant
	 *     PlusOrMinus.Plus_1_0_0_0 returns BoolConstant
	 *     PlusOrMinus.Minus_1_0_1_0 returns BoolConstant
	 *     MulOrDiv returns BoolConstant
	 *     MulOrDiv.MulOrDiv_1_0_0 returns BoolConstant
	 *     Primary returns BoolConstant
	 *     Atomic returns BoolConstant
	 *
	 * Constraint:
	 *     (value='True' | value='False')
	 */
	protected void sequence_Atomic(ISerializationContext context, BoolConstant semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns IntConstant
	 *     Or returns IntConstant
	 *     Or.Or_1_0 returns IntConstant
	 *     And returns IntConstant
	 *     And.And_1_0 returns IntConstant
	 *     Equality returns IntConstant
	 *     Equality.Equality_1_0 returns IntConstant
	 *     Comparison returns IntConstant
	 *     Comparison.Comparison_1_0 returns IntConstant
	 *     PlusOrMinus returns IntConstant
	 *     PlusOrMinus.Plus_1_0_0_0 returns IntConstant
	 *     PlusOrMinus.Minus_1_0_1_0 returns IntConstant
	 *     MulOrDiv returns IntConstant
	 *     MulOrDiv.MulOrDiv_1_0_0 returns IntConstant
	 *     Primary returns IntConstant
	 *     Atomic returns IntConstant
	 *
	 * Constraint:
	 *     value=INT
	 */
	protected void sequence_Atomic(ISerializationContext context, IntConstant semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.INT_CONSTANT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.INT_CONSTANT__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAtomicAccess().getValueINTTerminalRuleCall_0_1_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns StringConstant
	 *     Or returns StringConstant
	 *     Or.Or_1_0 returns StringConstant
	 *     And returns StringConstant
	 *     And.And_1_0 returns StringConstant
	 *     Equality returns StringConstant
	 *     Equality.Equality_1_0 returns StringConstant
	 *     Comparison returns StringConstant
	 *     Comparison.Comparison_1_0 returns StringConstant
	 *     PlusOrMinus returns StringConstant
	 *     PlusOrMinus.Plus_1_0_0_0 returns StringConstant
	 *     PlusOrMinus.Minus_1_0_1_0 returns StringConstant
	 *     MulOrDiv returns StringConstant
	 *     MulOrDiv.MulOrDiv_1_0_0 returns StringConstant
	 *     Primary returns StringConstant
	 *     Atomic returns StringConstant
	 *
	 * Constraint:
	 *     value=STRING
	 */
	protected void sequence_Atomic(ISerializationContext context, StringConstant semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.STRING_CONSTANT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.STRING_CONSTANT__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAtomicAccess().getValueSTRINGTerminalRuleCall_1_1_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns VariableConstant
	 *     Or returns VariableConstant
	 *     Or.Or_1_0 returns VariableConstant
	 *     And returns VariableConstant
	 *     And.And_1_0 returns VariableConstant
	 *     Equality returns VariableConstant
	 *     Equality.Equality_1_0 returns VariableConstant
	 *     Comparison returns VariableConstant
	 *     Comparison.Comparison_1_0 returns VariableConstant
	 *     PlusOrMinus returns VariableConstant
	 *     PlusOrMinus.Plus_1_0_0_0 returns VariableConstant
	 *     PlusOrMinus.Minus_1_0_1_0 returns VariableConstant
	 *     MulOrDiv returns VariableConstant
	 *     MulOrDiv.MulOrDiv_1_0_0 returns VariableConstant
	 *     Primary returns VariableConstant
	 *     Atomic returns VariableConstant
	 *
	 * Constraint:
	 *     value=[Attribute|QualifiedName]
	 */
	protected void sequence_Atomic(ISerializationContext context, VariableConstant semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.VARIABLE_CONSTANT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.VARIABLE_CONSTANT__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAtomicAccess().getValueAttributeQualifiedNameParserRuleCall_3_1_0_1(), semanticObject.eGet(MyDslPackage.Literals.VARIABLE_CONSTANT__VALUE, false));
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     (name=ID value=ValueType)
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.ATTRIBUTE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.ATTRIBUTE__NAME));
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.ATTRIBUTE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.ATTRIBUTE__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getAttributeAccess().getValueValueTypeParserRuleCall_3_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ElementType returns BoolType
	 *     BasicType returns BoolType
	 *
	 * Constraint:
	 *     (value='true' | value='false')
	 */
	protected void sequence_BasicType(ISerializationContext context, BoolType semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     ElementType returns IntType
	 *     BasicType returns IntType
	 *
	 * Constraint:
	 *     value=INT
	 */
	protected void sequence_BasicType(ISerializationContext context, IntType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.INT_TYPE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.INT_TYPE__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getBasicTypeAccess().getValueINTTerminalRuleCall_0_1_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ElementType returns StringType
	 *     BasicType returns StringType
	 *
	 * Constraint:
	 *     value=STRING
	 */
	protected void sequence_BasicType(ISerializationContext context, StringType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.STRING_TYPE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.STRING_TYPE__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getBasicTypeAccess().getValueSTRINGTerminalRuleCall_1_1_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns Comparison
	 *     Or returns Comparison
	 *     Or.Or_1_0 returns Comparison
	 *     And returns Comparison
	 *     And.And_1_0 returns Comparison
	 *     Equality returns Comparison
	 *     Equality.Equality_1_0 returns Comparison
	 *     Comparison returns Comparison
	 *     Comparison.Comparison_1_0 returns Comparison
	 *     PlusOrMinus returns Comparison
	 *     PlusOrMinus.Plus_1_0_0_0 returns Comparison
	 *     PlusOrMinus.Minus_1_0_1_0 returns Comparison
	 *     MulOrDiv returns Comparison
	 *     MulOrDiv.MulOrDiv_1_0_0 returns Comparison
	 *     Primary returns Comparison
	 *
	 * Constraint:
	 *     (left=Comparison_Comparison_1_0 (op='>=' | op='<=' | op='>' | op='<') right=PlusOrMinus)
	 */
	protected void sequence_Comparison(ISerializationContext context, Comparison semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Condition returns Condition
	 *
	 * Constraint:
	 *     expression=Expression
	 */
	protected void sequence_Condition(ISerializationContext context, Condition semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.CONDITION__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.CONDITION__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getConditionAccess().getExpressionExpressionParserRuleCall_2_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ElementType returns EntityType
	 *     EntityType returns EntityType
	 *
	 * Constraint:
	 *     entity=[Entity|ID]
	 */
	protected void sequence_EntityType(ISerializationContext context, EntityType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.ENTITY_TYPE__ENTITY) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.ENTITY_TYPE__ENTITY));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getEntityTypeAccess().getEntityEntityIDTerminalRuleCall_0_1(), semanticObject.eGet(MyDslPackage.Literals.ENTITY_TYPE__ENTITY, false));
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns Equality
	 *     Or returns Equality
	 *     Or.Or_1_0 returns Equality
	 *     And returns Equality
	 *     And.And_1_0 returns Equality
	 *     Equality returns Equality
	 *     Equality.Equality_1_0 returns Equality
	 *     Comparison returns Equality
	 *     Comparison.Comparison_1_0 returns Equality
	 *     PlusOrMinus returns Equality
	 *     PlusOrMinus.Plus_1_0_0_0 returns Equality
	 *     PlusOrMinus.Minus_1_0_1_0 returns Equality
	 *     MulOrDiv returns Equality
	 *     MulOrDiv.MulOrDiv_1_0_0 returns Equality
	 *     Primary returns Equality
	 *
	 * Constraint:
	 *     (left=Equality_Equality_1_0 (op='==' | op='!=') right=Comparison)
	 */
	protected void sequence_Equality(ISerializationContext context, Equality semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     IsServer returns IsServer
	 *
	 * Constraint:
	 *     value='SERVER'
	 */
	protected void sequence_IsServer(ISerializationContext context, IsServer semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.IS_SERVER__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.IS_SERVER__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getIsServerAccess().getValueSERVERKeyword_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     MemberEntity returns Entity
	 *
	 * Constraint:
	 *     (name=ID attributes+=Attribute*)
	 */
	protected void sequence_MemberEntity(ISerializationContext context, Entity semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Member returns Entity
	 *
	 * Constraint:
	 *     ((name=ID is=IsServer attributes+=Attribute*) | (name=ID attributes+=Attribute*))
	 */
	protected void sequence_MemberEntity_ServerEntity(ISerializationContext context, Entity semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     members+=Member+
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns MulOrDiv
	 *     Or returns MulOrDiv
	 *     Or.Or_1_0 returns MulOrDiv
	 *     And returns MulOrDiv
	 *     And.And_1_0 returns MulOrDiv
	 *     Equality returns MulOrDiv
	 *     Equality.Equality_1_0 returns MulOrDiv
	 *     Comparison returns MulOrDiv
	 *     Comparison.Comparison_1_0 returns MulOrDiv
	 *     PlusOrMinus returns MulOrDiv
	 *     PlusOrMinus.Plus_1_0_0_0 returns MulOrDiv
	 *     PlusOrMinus.Minus_1_0_1_0 returns MulOrDiv
	 *     MulOrDiv returns MulOrDiv
	 *     MulOrDiv.MulOrDiv_1_0_0 returns MulOrDiv
	 *     Primary returns MulOrDiv
	 *
	 * Constraint:
	 *     (left=MulOrDiv_MulOrDiv_1_0_0 (op='*' | op='/') right=Primary)
	 */
	protected void sequence_MulOrDiv(ISerializationContext context, MulOrDiv semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns Or
	 *     Or returns Or
	 *     Or.Or_1_0 returns Or
	 *     And returns Or
	 *     And.And_1_0 returns Or
	 *     Equality returns Or
	 *     Equality.Equality_1_0 returns Or
	 *     Comparison returns Or
	 *     Comparison.Comparison_1_0 returns Or
	 *     PlusOrMinus returns Or
	 *     PlusOrMinus.Plus_1_0_0_0 returns Or
	 *     PlusOrMinus.Minus_1_0_1_0 returns Or
	 *     MulOrDiv returns Or
	 *     MulOrDiv.MulOrDiv_1_0_0 returns Or
	 *     Primary returns Or
	 *
	 * Constraint:
	 *     (left=Or_Or_1_0 right=And)
	 */
	protected void sequence_Or(ISerializationContext context, Or semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.OR__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.OR__LEFT));
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.OR__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.OR__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getOrAccess().getOrLeftAction_1_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getOrAccess().getRightAndParserRuleCall_1_2_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns Minus
	 *     Or returns Minus
	 *     Or.Or_1_0 returns Minus
	 *     And returns Minus
	 *     And.And_1_0 returns Minus
	 *     Equality returns Minus
	 *     Equality.Equality_1_0 returns Minus
	 *     Comparison returns Minus
	 *     Comparison.Comparison_1_0 returns Minus
	 *     PlusOrMinus returns Minus
	 *     PlusOrMinus.Plus_1_0_0_0 returns Minus
	 *     PlusOrMinus.Minus_1_0_1_0 returns Minus
	 *     MulOrDiv returns Minus
	 *     MulOrDiv.MulOrDiv_1_0_0 returns Minus
	 *     Primary returns Minus
	 *
	 * Constraint:
	 *     (left=PlusOrMinus_Minus_1_0_1_0 right=MulOrDiv)
	 */
	protected void sequence_PlusOrMinus(ISerializationContext context, Minus semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.MINUS__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.MINUS__LEFT));
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.MINUS__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.MINUS__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPlusOrMinusAccess().getMinusLeftAction_1_0_1_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getPlusOrMinusAccess().getRightMulOrDivParserRuleCall_1_1_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns Plus
	 *     Or returns Plus
	 *     Or.Or_1_0 returns Plus
	 *     And returns Plus
	 *     And.And_1_0 returns Plus
	 *     Equality returns Plus
	 *     Equality.Equality_1_0 returns Plus
	 *     Comparison returns Plus
	 *     Comparison.Comparison_1_0 returns Plus
	 *     PlusOrMinus returns Plus
	 *     PlusOrMinus.Plus_1_0_0_0 returns Plus
	 *     PlusOrMinus.Minus_1_0_1_0 returns Plus
	 *     MulOrDiv returns Plus
	 *     MulOrDiv.MulOrDiv_1_0_0 returns Plus
	 *     Primary returns Plus
	 *
	 * Constraint:
	 *     (left=PlusOrMinus_Plus_1_0_0_0 right=MulOrDiv)
	 */
	protected void sequence_PlusOrMinus(ISerializationContext context, Plus semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.PLUS__LEFT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.PLUS__LEFT));
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.PLUS__RIGHT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.PLUS__RIGHT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPlusOrMinusAccess().getPlusLeftAction_1_0_0_0(), semanticObject.getLeft());
		feeder.accept(grammarAccess.getPlusOrMinusAccess().getRightMulOrDivParserRuleCall_1_1_0(), semanticObject.getRight());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Expression returns Not
	 *     Or returns Not
	 *     Or.Or_1_0 returns Not
	 *     And returns Not
	 *     And.And_1_0 returns Not
	 *     Equality returns Not
	 *     Equality.Equality_1_0 returns Not
	 *     Comparison returns Not
	 *     Comparison.Comparison_1_0 returns Not
	 *     PlusOrMinus returns Not
	 *     PlusOrMinus.Plus_1_0_0_0 returns Not
	 *     PlusOrMinus.Minus_1_0_1_0 returns Not
	 *     MulOrDiv returns Not
	 *     MulOrDiv.MulOrDiv_1_0_0 returns Not
	 *     Primary returns Not
	 *
	 * Constraint:
	 *     expression=Primary
	 */
	protected void sequence_Primary(ISerializationContext context, Not semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.NOT__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.NOT__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPrimaryAccess().getExpressionPrimaryParserRuleCall_1_2_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Rule returns Rule
	 *
	 * Constraint:
	 *     (condition=Condition url=ArrayType)
	 */
	protected void sequence_Rule(ISerializationContext context, Rule semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.RULE__CONDITION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.RULE__CONDITION));
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.RULE__URL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.RULE__URL));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getRuleAccess().getConditionConditionParserRuleCall_0_0(), semanticObject.getCondition());
		feeder.accept(grammarAccess.getRuleAccess().getUrlArrayTypeParserRuleCall_1_0(), semanticObject.getUrl());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     ServerEntity returns Entity
	 *
	 * Constraint:
	 *     (name=ID is=IsServer attributes+=Attribute*)
	 */
	protected void sequence_ServerEntity(ISerializationContext context, Entity semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Contexts:
	 *     ValueType returns ValueType
	 *
	 * Constraint:
	 *     elementType=ElementType
	 */
	protected void sequence_ValueType(ISerializationContext context, ValueType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, MyDslPackage.Literals.VALUE_TYPE__ELEMENT_TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, MyDslPackage.Literals.VALUE_TYPE__ELEMENT_TYPE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getValueTypeAccess().getElementTypeElementTypeParserRuleCall_0(), semanticObject.getElementType());
		feeder.finish();
	}
	
	
	/**
	 * Contexts:
	 *     Member returns Verb
	 *     Verb returns Verb
	 *
	 * Constraint:
	 *     ((verb='get' | verb='put' | verb='post' | verb='delete') qa=QualifiedName rules+=Rule)
	 */
	protected void sequence_Verb(ISerializationContext context, Verb semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}
