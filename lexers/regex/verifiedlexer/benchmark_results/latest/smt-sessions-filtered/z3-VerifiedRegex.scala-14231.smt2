; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744824 () Bool)

(assert start!744824)

(declare-fun b!7897042 () Bool)

(declare-fun b_free!134447 () Bool)

(declare-fun b_next!135237 () Bool)

(assert (=> b!7897042 (= b_free!134447 (not b_next!135237))))

(declare-fun tp!2352701 () Bool)

(declare-fun b_and!352299 () Bool)

(assert (=> b!7897042 (= tp!2352701 b_and!352299)))

(declare-fun b_free!134449 () Bool)

(declare-fun b_next!135239 () Bool)

(assert (=> b!7897042 (= b_free!134449 (not b_next!135239))))

(declare-fun tp!2352702 () Bool)

(declare-fun b_and!352301 () Bool)

(assert (=> b!7897042 (= tp!2352702 b_and!352301)))

(declare-fun res!3132554 () Bool)

(declare-fun e!4661137 () Bool)

(assert (=> start!744824 (=> res!3132554 e!4661137)))

(declare-datatypes ((List!74109 0))(
  ( (Nil!73985) (Cons!73985 (h!80433 (_ BitVec 16)) (t!388844 List!74109)) )
))
(declare-datatypes ((TokenValue!8846 0))(
  ( (FloatLiteralValue!17692 (text!62367 List!74109)) (TokenValueExt!8845 (__x!34980 Int)) (Broken!44230 (value!285059 List!74109)) (Object!8969) (End!8846) (Def!8846) (Underscore!8846) (Match!8846) (Else!8846) (Error!8846) (Case!8846) (If!8846) (Extends!8846) (Abstract!8846) (Class!8846) (Val!8846) (DelimiterValue!17692 (del!8906 List!74109)) (KeywordValue!8852 (value!285060 List!74109)) (CommentValue!17692 (value!285061 List!74109)) (WhitespaceValue!17692 (value!285062 List!74109)) (IndentationValue!8846 (value!285063 List!74109)) (String!82649) (Int32!8846) (Broken!44231 (value!285064 List!74109)) (Boolean!8847) (Unit!169003) (OperatorValue!8849 (op!8906 List!74109)) (IdentifierValue!17692 (value!285065 List!74109)) (IdentifierValue!17693 (value!285066 List!74109)) (WhitespaceValue!17693 (value!285067 List!74109)) (True!17692) (False!17692) (Broken!44232 (value!285068 List!74109)) (Broken!44233 (value!285069 List!74109)) (True!17693) (RightBrace!8846) (RightBracket!8846) (Colon!8846) (Null!8846) (Comma!8846) (LeftBracket!8846) (False!17693) (LeftBrace!8846) (ImaginaryLiteralValue!8846 (text!62368 List!74109)) (StringLiteralValue!26538 (value!285070 List!74109)) (EOFValue!8846 (value!285071 List!74109)) (IdentValue!8846 (value!285072 List!74109)) (DelimiterValue!17693 (value!285073 List!74109)) (DedentValue!8846 (value!285074 List!74109)) (NewLineValue!8846 (value!285075 List!74109)) (IntegerValue!26538 (value!285076 (_ BitVec 32)) (text!62369 List!74109)) (IntegerValue!26539 (value!285077 Int) (text!62370 List!74109)) (Times!8846) (Or!8846) (Equal!8846) (Minus!8846) (Broken!44234 (value!285078 List!74109)) (And!8846) (Div!8846) (LessEqual!8846) (Mod!8846) (Concat!30080) (Not!8846) (Plus!8846) (SpaceValue!8846 (value!285079 List!74109)) (IntegerValue!26540 (value!285080 Int) (text!62371 List!74109)) (StringLiteralValue!26539 (text!62372 List!74109)) (FloatLiteralValue!17693 (text!62373 List!74109)) (BytesLiteralValue!8846 (value!285081 List!74109)) (CommentValue!17693 (value!285082 List!74109)) (StringLiteralValue!26540 (value!285083 List!74109)) (ErrorTokenValue!8846 (msg!8907 List!74109)) )
))
(declare-datatypes ((C!42796 0))(
  ( (C!42797 (val!31860 Int)) )
))
(declare-datatypes ((List!74110 0))(
  ( (Nil!73986) (Cons!73986 (h!80434 C!42796) (t!388845 List!74110)) )
))
(declare-datatypes ((IArray!31469 0))(
  ( (IArray!31470 (innerList!15792 List!74110)) )
))
(declare-datatypes ((Conc!15704 0))(
  ( (Node!15704 (left!56467 Conc!15704) (right!56797 Conc!15704) (csize!31638 Int) (cheight!15915 Int)) (Leaf!29936 (xs!19086 IArray!31469) (csize!31639 Int)) (Empty!15704) )
))
(declare-datatypes ((BalanceConc!30526 0))(
  ( (BalanceConc!30527 (c!1449472 Conc!15704)) )
))
(declare-datatypes ((TokenValueInjection!17000 0))(
  ( (TokenValueInjection!17001 (toValue!11563 Int) (toChars!11422 Int)) )
))
(declare-fun thiss!6958 () TokenValueInjection!17000)

(declare-fun semiInverseModEq!3802 (Int Int) Bool)

(assert (=> start!744824 (= res!3132554 (not (semiInverseModEq!3802 (toChars!11422 thiss!6958) (toValue!11563 thiss!6958))))))

(assert (=> start!744824 e!4661137))

(declare-fun e!4661138 () Bool)

(declare-fun inv!94977 (TokenValueInjection!17000) Bool)

(assert (=> start!744824 (and (inv!94977 thiss!6958) e!4661138)))

(declare-fun b!7897041 () Bool)

(declare-fun equivClasses!3617 (Int Int) Bool)

(assert (=> b!7897041 (= e!4661137 (not (equivClasses!3617 (toChars!11422 thiss!6958) (toValue!11563 thiss!6958))))))

(assert (=> b!7897042 (= e!4661138 (and tp!2352701 tp!2352702))))

(assert (= (and start!744824 (not res!3132554)) b!7897041))

(assert (= start!744824 b!7897042))

(declare-fun m!8272346 () Bool)

(assert (=> start!744824 m!8272346))

(declare-fun m!8272348 () Bool)

(assert (=> start!744824 m!8272348))

(declare-fun m!8272350 () Bool)

(assert (=> b!7897041 m!8272350))

(check-sat (not b_next!135239) (not b!7897041) (not start!744824) (not b_next!135237) b_and!352299 b_and!352301)
(check-sat b_and!352301 b_and!352299 (not b_next!135237) (not b_next!135239))
(get-model)

(declare-fun d!2357534 () Bool)

(assert (=> d!2357534 true))

(declare-fun order!29761 () Int)

(declare-fun order!29763 () Int)

(declare-fun lambda!472336 () Int)

(declare-fun dynLambda!30009 (Int Int) Int)

(declare-fun dynLambda!30010 (Int Int) Int)

(assert (=> d!2357534 (< (dynLambda!30009 order!29761 (toChars!11422 thiss!6958)) (dynLambda!30010 order!29763 lambda!472336))))

(assert (=> d!2357534 true))

(declare-fun order!29765 () Int)

(declare-fun dynLambda!30011 (Int Int) Int)

(assert (=> d!2357534 (< (dynLambda!30011 order!29765 (toValue!11563 thiss!6958)) (dynLambda!30010 order!29763 lambda!472336))))

(declare-fun Forall!1836 (Int) Bool)

(assert (=> d!2357534 (= (semiInverseModEq!3802 (toChars!11422 thiss!6958) (toValue!11563 thiss!6958)) (Forall!1836 lambda!472336))))

(declare-fun bs!1967804 () Bool)

(assert (= bs!1967804 d!2357534))

(declare-fun m!8272352 () Bool)

(assert (=> bs!1967804 m!8272352))

(assert (=> start!744824 d!2357534))

(declare-fun d!2357536 () Bool)

(declare-fun res!3132561 () Bool)

(declare-fun e!4661141 () Bool)

(assert (=> d!2357536 (=> (not res!3132561) (not e!4661141))))

(assert (=> d!2357536 (= res!3132561 (semiInverseModEq!3802 (toChars!11422 thiss!6958) (toValue!11563 thiss!6958)))))

(assert (=> d!2357536 (= (inv!94977 thiss!6958) e!4661141)))

(declare-fun b!7897049 () Bool)

(assert (=> b!7897049 (= e!4661141 (equivClasses!3617 (toChars!11422 thiss!6958) (toValue!11563 thiss!6958)))))

(assert (= (and d!2357536 res!3132561) b!7897049))

(assert (=> d!2357536 m!8272346))

(assert (=> b!7897049 m!8272350))

(assert (=> start!744824 d!2357536))

(declare-fun d!2357538 () Bool)

(assert (=> d!2357538 true))

(declare-fun lambda!472342 () Int)

(declare-fun order!29773 () Int)

(declare-fun dynLambda!30012 (Int Int) Int)

(assert (=> d!2357538 (< (dynLambda!30011 order!29765 (toValue!11563 thiss!6958)) (dynLambda!30012 order!29773 lambda!472342))))

(declare-fun Forall2!1308 (Int) Bool)

(assert (=> d!2357538 (= (equivClasses!3617 (toChars!11422 thiss!6958) (toValue!11563 thiss!6958)) (Forall2!1308 lambda!472342))))

(declare-fun bs!1967806 () Bool)

(assert (= bs!1967806 d!2357538))

(declare-fun m!8272356 () Bool)

(assert (=> bs!1967806 m!8272356))

(assert (=> b!7897041 d!2357538))

(check-sat (not b_next!135239) (not b!7897049) (not d!2357534) (not b_next!135237) (not d!2357538) b_and!352299 b_and!352301 (not d!2357536))
(check-sat b_and!352301 b_and!352299 (not b_next!135237) (not b_next!135239))
