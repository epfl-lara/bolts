; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274060 () Bool)

(assert start!274060)

(declare-fun b!2823803 () Bool)

(declare-fun b_free!80861 () Bool)

(declare-fun b_next!81565 () Bool)

(assert (=> b!2823803 (= b_free!80861 (not b_next!81565))))

(declare-fun tp!901870 () Bool)

(declare-fun b_and!206351 () Bool)

(assert (=> b!2823803 (= tp!901870 b_and!206351)))

(declare-fun b_free!80863 () Bool)

(declare-fun b_next!81567 () Bool)

(assert (=> b!2823803 (= b_free!80863 (not b_next!81567))))

(declare-fun tp!901871 () Bool)

(declare-fun b_and!206353 () Bool)

(assert (=> b!2823803 (= tp!901871 b_and!206353)))

(declare-fun b!2823801 () Bool)

(declare-fun b_free!80865 () Bool)

(declare-fun b_next!81569 () Bool)

(assert (=> b!2823801 (= b_free!80865 (not b_next!81569))))

(declare-fun tp!901872 () Bool)

(declare-fun b_and!206355 () Bool)

(assert (=> b!2823801 (= tp!901872 b_and!206355)))

(declare-fun b_free!80867 () Bool)

(declare-fun b_next!81571 () Bool)

(assert (=> b!2823801 (= b_free!80867 (not b_next!81571))))

(declare-fun tp!901869 () Bool)

(declare-fun b_and!206357 () Bool)

(assert (=> b!2823801 (= tp!901869 b_and!206357)))

(declare-fun b!2823819 () Bool)

(declare-fun e!1786752 () Bool)

(assert (=> b!2823819 (= e!1786752 true)))

(declare-fun b!2823818 () Bool)

(declare-fun e!1786751 () Bool)

(assert (=> b!2823818 (= e!1786751 e!1786752)))

(declare-fun b!2823817 () Bool)

(declare-fun e!1786750 () Bool)

(assert (=> b!2823817 (= e!1786750 e!1786751)))

(declare-fun b!2823799 () Bool)

(assert (=> b!2823799 e!1786750))

(assert (= b!2823818 b!2823819))

(assert (= b!2823817 b!2823818))

(declare-datatypes ((C!16894 0))(
  ( (C!16895 (val!10427 Int)) )
))
(declare-datatypes ((List!33268 0))(
  ( (Nil!33144) (Cons!33144 (h!38564 (_ BitVec 16)) (t!230785 List!33268)) )
))
(declare-datatypes ((TokenValue!5196 0))(
  ( (FloatLiteralValue!10392 (text!36817 List!33268)) (TokenValueExt!5195 (__x!22065 Int)) (Broken!25980 (value!159826 List!33268)) (Object!5319) (End!5196) (Def!5196) (Underscore!5196) (Match!5196) (Else!5196) (Error!5196) (Case!5196) (If!5196) (Extends!5196) (Abstract!5196) (Class!5196) (Val!5196) (DelimiterValue!10392 (del!5256 List!33268)) (KeywordValue!5202 (value!159827 List!33268)) (CommentValue!10392 (value!159828 List!33268)) (WhitespaceValue!10392 (value!159829 List!33268)) (IndentationValue!5196 (value!159830 List!33268)) (String!36437) (Int32!5196) (Broken!25981 (value!159831 List!33268)) (Boolean!5197) (Unit!47148) (OperatorValue!5199 (op!5256 List!33268)) (IdentifierValue!10392 (value!159832 List!33268)) (IdentifierValue!10393 (value!159833 List!33268)) (WhitespaceValue!10393 (value!159834 List!33268)) (True!10392) (False!10392) (Broken!25982 (value!159835 List!33268)) (Broken!25983 (value!159836 List!33268)) (True!10393) (RightBrace!5196) (RightBracket!5196) (Colon!5196) (Null!5196) (Comma!5196) (LeftBracket!5196) (False!10393) (LeftBrace!5196) (ImaginaryLiteralValue!5196 (text!36818 List!33268)) (StringLiteralValue!15588 (value!159837 List!33268)) (EOFValue!5196 (value!159838 List!33268)) (IdentValue!5196 (value!159839 List!33268)) (DelimiterValue!10393 (value!159840 List!33268)) (DedentValue!5196 (value!159841 List!33268)) (NewLineValue!5196 (value!159842 List!33268)) (IntegerValue!15588 (value!159843 (_ BitVec 32)) (text!36819 List!33268)) (IntegerValue!15589 (value!159844 Int) (text!36820 List!33268)) (Times!5196) (Or!5196) (Equal!5196) (Minus!5196) (Broken!25984 (value!159845 List!33268)) (And!5196) (Div!5196) (LessEqual!5196) (Mod!5196) (Concat!13552) (Not!5196) (Plus!5196) (SpaceValue!5196 (value!159846 List!33268)) (IntegerValue!15590 (value!159847 Int) (text!36821 List!33268)) (StringLiteralValue!15589 (text!36822 List!33268)) (FloatLiteralValue!10393 (text!36823 List!33268)) (BytesLiteralValue!5196 (value!159848 List!33268)) (CommentValue!10393 (value!159849 List!33268)) (StringLiteralValue!15590 (value!159850 List!33268)) (ErrorTokenValue!5196 (msg!5257 List!33268)) )
))
(declare-datatypes ((List!33269 0))(
  ( (Nil!33145) (Cons!33145 (h!38565 C!16894) (t!230786 List!33269)) )
))
(declare-datatypes ((IArray!20579 0))(
  ( (IArray!20580 (innerList!10347 List!33269)) )
))
(declare-datatypes ((Conc!10287 0))(
  ( (Node!10287 (left!25039 Conc!10287) (right!25369 Conc!10287) (csize!20804 Int) (cheight!10498 Int)) (Leaf!15662 (xs!13399 IArray!20579) (csize!20805 Int)) (Empty!10287) )
))
(declare-datatypes ((BalanceConc!20212 0))(
  ( (BalanceConc!20213 (c!457284 Conc!10287)) )
))
(declare-datatypes ((TokenValueInjection!9820 0))(
  ( (TokenValueInjection!9821 (toValue!6988 Int) (toChars!6847 Int)) )
))
(declare-datatypes ((Regex!8356 0))(
  ( (ElementMatch!8356 (c!457285 C!16894)) (Concat!13553 (regOne!17224 Regex!8356) (regTwo!17224 Regex!8356)) (EmptyExpr!8356) (Star!8356 (reg!8685 Regex!8356)) (EmptyLang!8356) (Union!8356 (regOne!17225 Regex!8356) (regTwo!17225 Regex!8356)) )
))
(declare-datatypes ((String!36438 0))(
  ( (String!36439 (value!159851 String)) )
))
(declare-datatypes ((Rule!9732 0))(
  ( (Rule!9733 (regex!4966 Regex!8356) (tag!5470 String!36438) (isSeparator!4966 Bool) (transformation!4966 TokenValueInjection!9820)) )
))
(declare-datatypes ((List!33270 0))(
  ( (Nil!33146) (Cons!33146 (h!38566 Rule!9732) (t!230787 List!33270)) )
))
(declare-fun rules!4424 () List!33270)

(assert (= (and b!2823799 (is-Cons!33146 rules!4424)) b!2823817))

(declare-fun order!17651 () Int)

(declare-fun lambda!103716 () Int)

(declare-fun order!17649 () Int)

(declare-fun dynLambda!13895 (Int Int) Int)

(declare-fun dynLambda!13896 (Int Int) Int)

(assert (=> b!2823819 (< (dynLambda!13895 order!17649 (toValue!6988 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103716))))

(declare-fun order!17653 () Int)

(declare-fun dynLambda!13897 (Int Int) Int)

(assert (=> b!2823819 (< (dynLambda!13897 order!17653 (toChars!6847 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103716))))

(declare-fun b!2823794 () Bool)

(declare-fun res!1175146 () Bool)

(declare-fun e!1786733 () Bool)

(assert (=> b!2823794 (=> (not res!1175146) (not e!1786733))))

(declare-datatypes ((Token!9334 0))(
  ( (Token!9335 (value!159852 TokenValue!5196) (rule!7394 Rule!9732) (size!25807 Int) (originalCharacters!5698 List!33269)) )
))
(declare-datatypes ((List!33271 0))(
  ( (Nil!33147) (Cons!33147 (h!38567 Token!9334) (t!230788 List!33271)) )
))
(declare-fun l!6581 () List!33271)

(declare-fun i!1730 () Int)

(assert (=> b!2823794 (= res!1175146 (and (not (is-Nil!33147 l!6581)) (<= i!1730 0)))))

(declare-fun b!2823795 () Bool)

(declare-fun e!1786735 () Bool)

(declare-fun e!1786734 () Bool)

(declare-fun tp!901865 () Bool)

(assert (=> b!2823795 (= e!1786735 (and e!1786734 tp!901865))))

(declare-fun e!1786742 () Bool)

(declare-fun b!2823796 () Bool)

(declare-fun tp!901867 () Bool)

(declare-fun e!1786743 () Bool)

(declare-fun inv!45073 (String!36438) Bool)

(declare-fun inv!45076 (TokenValueInjection!9820) Bool)

(assert (=> b!2823796 (= e!1786743 (and tp!901867 (inv!45073 (tag!5470 (rule!7394 (h!38567 l!6581)))) (inv!45076 (transformation!4966 (rule!7394 (h!38567 l!6581)))) e!1786742))))

(declare-fun b!2823797 () Bool)

(declare-fun res!1175149 () Bool)

(assert (=> b!2823797 (=> (not res!1175149) (not e!1786733))))

(declare-datatypes ((LexerInterface!4557 0))(
  ( (LexerInterfaceExt!4554 (__x!22066 Int)) (Lexer!4555) )
))
(declare-fun thiss!27755 () LexerInterface!4557)

(declare-fun tokensListTwoByTwoPredicateSeparableList!694 (LexerInterface!4557 List!33271 List!33270) Bool)

(assert (=> b!2823797 (= res!1175149 (tokensListTwoByTwoPredicateSeparableList!694 thiss!27755 l!6581 rules!4424))))

(declare-fun res!1175143 () Bool)

(assert (=> start!274060 (=> (not res!1175143) (not e!1786733))))

(assert (=> start!274060 (= res!1175143 (is-Lexer!4555 thiss!27755))))

(assert (=> start!274060 e!1786733))

(assert (=> start!274060 true))

(assert (=> start!274060 e!1786735))

(declare-fun e!1786741 () Bool)

(assert (=> start!274060 e!1786741))

(declare-fun e!1786737 () Bool)

(declare-fun tp!901868 () Bool)

(declare-fun b!2823798 () Bool)

(declare-fun inv!45077 (Token!9334) Bool)

(assert (=> b!2823798 (= e!1786741 (and (inv!45077 (h!38567 l!6581)) e!1786737 tp!901868))))

(declare-fun forall!6796 (List!33271 Int) Bool)

(assert (=> b!2823799 (= e!1786733 (not (forall!6796 l!6581 lambda!103716)))))

(declare-fun e!1786736 () Bool)

(declare-fun lt!1007720 () List!33271)

(declare-fun rulesProduceEachTokenIndividuallyList!1609 (LexerInterface!4557 List!33270 List!33271) Bool)

(assert (=> b!2823799 (= (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 lt!1007720) e!1786736)))

(declare-fun res!1175144 () Bool)

(assert (=> b!2823799 (=> res!1175144 e!1786736)))

(assert (=> b!2823799 (= res!1175144 (not (is-Cons!33147 lt!1007720)))))

(declare-fun take!560 (List!33271 Int) List!33271)

(assert (=> b!2823799 (= lt!1007720 (take!560 l!6581 i!1730))))

(declare-fun b!2823800 () Bool)

(declare-fun e!1786740 () Bool)

(assert (=> b!2823800 (= e!1786740 (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 (t!230788 lt!1007720)))))

(declare-fun e!1786732 () Bool)

(assert (=> b!2823801 (= e!1786732 (and tp!901872 tp!901869))))

(declare-fun b!2823802 () Bool)

(declare-fun res!1175148 () Bool)

(assert (=> b!2823802 (=> (not res!1175148) (not e!1786733))))

(declare-fun isEmpty!18331 (List!33270) Bool)

(assert (=> b!2823802 (= res!1175148 (not (isEmpty!18331 rules!4424)))))

(assert (=> b!2823803 (= e!1786742 (and tp!901870 tp!901871))))

(declare-fun b!2823804 () Bool)

(declare-fun res!1175145 () Bool)

(assert (=> b!2823804 (=> (not res!1175145) (not e!1786733))))

(assert (=> b!2823804 (= res!1175145 (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2823805 () Bool)

(declare-fun res!1175142 () Bool)

(assert (=> b!2823805 (=> (not res!1175142) (not e!1786733))))

(declare-fun rulesInvariant!3975 (LexerInterface!4557 List!33270) Bool)

(assert (=> b!2823805 (= res!1175142 (rulesInvariant!3975 thiss!27755 rules!4424))))

(declare-fun b!2823806 () Bool)

(assert (=> b!2823806 (= e!1786736 e!1786740)))

(declare-fun res!1175147 () Bool)

(assert (=> b!2823806 (=> (not res!1175147) (not e!1786740))))

(declare-fun rulesProduceIndividualToken!2095 (LexerInterface!4557 List!33270 Token!9334) Bool)

(assert (=> b!2823806 (= res!1175147 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 lt!1007720)))))

(declare-fun tp!901866 () Bool)

(declare-fun b!2823807 () Bool)

(declare-fun inv!21 (TokenValue!5196) Bool)

(assert (=> b!2823807 (= e!1786737 (and (inv!21 (value!159852 (h!38567 l!6581))) e!1786743 tp!901866))))

(declare-fun tp!901873 () Bool)

(declare-fun b!2823808 () Bool)

(assert (=> b!2823808 (= e!1786734 (and tp!901873 (inv!45073 (tag!5470 (h!38566 rules!4424))) (inv!45076 (transformation!4966 (h!38566 rules!4424))) e!1786732))))

(assert (= (and start!274060 res!1175143) b!2823802))

(assert (= (and b!2823802 res!1175148) b!2823805))

(assert (= (and b!2823805 res!1175142) b!2823804))

(assert (= (and b!2823804 res!1175145) b!2823797))

(assert (= (and b!2823797 res!1175149) b!2823794))

(assert (= (and b!2823794 res!1175146) b!2823799))

(assert (= (and b!2823799 (not res!1175144)) b!2823806))

(assert (= (and b!2823806 res!1175147) b!2823800))

(assert (= b!2823808 b!2823801))

(assert (= b!2823795 b!2823808))

(assert (= (and start!274060 (is-Cons!33146 rules!4424)) b!2823795))

(assert (= b!2823796 b!2823803))

(assert (= b!2823807 b!2823796))

(assert (= b!2823798 b!2823807))

(assert (= (and start!274060 (is-Cons!33147 l!6581)) b!2823798))

(declare-fun m!3254395 () Bool)

(assert (=> b!2823808 m!3254395))

(declare-fun m!3254397 () Bool)

(assert (=> b!2823808 m!3254397))

(declare-fun m!3254399 () Bool)

(assert (=> b!2823806 m!3254399))

(declare-fun m!3254401 () Bool)

(assert (=> b!2823797 m!3254401))

(declare-fun m!3254403 () Bool)

(assert (=> b!2823807 m!3254403))

(declare-fun m!3254405 () Bool)

(assert (=> b!2823802 m!3254405))

(declare-fun m!3254407 () Bool)

(assert (=> b!2823798 m!3254407))

(declare-fun m!3254409 () Bool)

(assert (=> b!2823796 m!3254409))

(declare-fun m!3254411 () Bool)

(assert (=> b!2823796 m!3254411))

(declare-fun m!3254413 () Bool)

(assert (=> b!2823804 m!3254413))

(declare-fun m!3254415 () Bool)

(assert (=> b!2823800 m!3254415))

(declare-fun m!3254417 () Bool)

(assert (=> b!2823799 m!3254417))

(declare-fun m!3254419 () Bool)

(assert (=> b!2823799 m!3254419))

(declare-fun m!3254421 () Bool)

(assert (=> b!2823799 m!3254421))

(declare-fun m!3254423 () Bool)

(assert (=> b!2823805 m!3254423))

(push 1)

(assert (not b!2823804))

(assert (not b!2823797))

(assert b_and!206355)

(assert (not b_next!81571))

(assert (not b!2823799))

(assert (not b_next!81569))

(assert (not b!2823805))

(assert (not b!2823798))

(assert b_and!206357)

(assert (not b!2823802))

(assert (not b!2823817))

(assert (not b!2823796))

(assert (not b!2823800))

(assert (not b!2823807))

(assert (not b!2823808))

(assert b_and!206351)

(assert (not b!2823806))

(assert (not b_next!81565))

(assert b_and!206353)

(assert (not b_next!81567))

(assert (not b!2823795))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206355)

(assert b_and!206351)

(assert (not b_next!81571))

(assert (not b_next!81567))

(assert (not b_next!81569))

(assert b_and!206357)

(assert (not b_next!81565))

(assert b_and!206353)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!819867 () Bool)

(declare-fun lt!1007728 () Bool)

(declare-fun e!1786806 () Bool)

(assert (=> d!819867 (= lt!1007728 e!1786806)))

(declare-fun res!1175186 () Bool)

(assert (=> d!819867 (=> (not res!1175186) (not e!1786806))))

(declare-datatypes ((IArray!20583 0))(
  ( (IArray!20584 (innerList!10349 List!33271)) )
))
(declare-datatypes ((Conc!10289 0))(
  ( (Node!10289 (left!25043 Conc!10289) (right!25373 Conc!10289) (csize!20808 Int) (cheight!10500 Int)) (Leaf!15664 (xs!13401 IArray!20583) (csize!20809 Int)) (Empty!10289) )
))
(declare-datatypes ((BalanceConc!20216 0))(
  ( (BalanceConc!20217 (c!457303 Conc!10289)) )
))
(declare-fun list!12421 (BalanceConc!20216) List!33271)

(declare-datatypes ((tuple2!33402 0))(
  ( (tuple2!33403 (_1!19794 BalanceConc!20216) (_2!19794 BalanceConc!20212)) )
))
(declare-fun lex!1997 (LexerInterface!4557 List!33270 BalanceConc!20212) tuple2!33402)

(declare-fun print!1716 (LexerInterface!4557 BalanceConc!20216) BalanceConc!20212)

(declare-fun singletonSeq!2142 (Token!9334) BalanceConc!20216)

(assert (=> d!819867 (= res!1175186 (= (list!12421 (_1!19794 (lex!1997 thiss!27755 rules!4424 (print!1716 thiss!27755 (singletonSeq!2142 (h!38567 lt!1007720)))))) (list!12421 (singletonSeq!2142 (h!38567 lt!1007720)))))))

(declare-fun e!1786805 () Bool)

(assert (=> d!819867 (= lt!1007728 e!1786805)))

(declare-fun res!1175185 () Bool)

(assert (=> d!819867 (=> (not res!1175185) (not e!1786805))))

(declare-fun lt!1007729 () tuple2!33402)

(declare-fun size!25809 (BalanceConc!20216) Int)

(assert (=> d!819867 (= res!1175185 (= (size!25809 (_1!19794 lt!1007729)) 1))))

(assert (=> d!819867 (= lt!1007729 (lex!1997 thiss!27755 rules!4424 (print!1716 thiss!27755 (singletonSeq!2142 (h!38567 lt!1007720)))))))

(assert (=> d!819867 (not (isEmpty!18331 rules!4424))))

(assert (=> d!819867 (= (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 lt!1007720)) lt!1007728)))

(declare-fun b!2823882 () Bool)

(declare-fun res!1175187 () Bool)

(assert (=> b!2823882 (=> (not res!1175187) (not e!1786805))))

(declare-fun apply!7741 (BalanceConc!20216 Int) Token!9334)

(assert (=> b!2823882 (= res!1175187 (= (apply!7741 (_1!19794 lt!1007729) 0) (h!38567 lt!1007720)))))

(declare-fun b!2823883 () Bool)

(declare-fun isEmpty!18333 (BalanceConc!20212) Bool)

(assert (=> b!2823883 (= e!1786805 (isEmpty!18333 (_2!19794 lt!1007729)))))

(declare-fun b!2823884 () Bool)

(assert (=> b!2823884 (= e!1786806 (isEmpty!18333 (_2!19794 (lex!1997 thiss!27755 rules!4424 (print!1716 thiss!27755 (singletonSeq!2142 (h!38567 lt!1007720)))))))))

(assert (= (and d!819867 res!1175185) b!2823882))

(assert (= (and b!2823882 res!1175187) b!2823883))

(assert (= (and d!819867 res!1175186) b!2823884))

(declare-fun m!3254455 () Bool)

(assert (=> d!819867 m!3254455))

(declare-fun m!3254457 () Bool)

(assert (=> d!819867 m!3254457))

(assert (=> d!819867 m!3254455))

(assert (=> d!819867 m!3254405))

(declare-fun m!3254459 () Bool)

(assert (=> d!819867 m!3254459))

(assert (=> d!819867 m!3254457))

(declare-fun m!3254461 () Bool)

(assert (=> d!819867 m!3254461))

(declare-fun m!3254463 () Bool)

(assert (=> d!819867 m!3254463))

(assert (=> d!819867 m!3254455))

(declare-fun m!3254465 () Bool)

(assert (=> d!819867 m!3254465))

(declare-fun m!3254467 () Bool)

(assert (=> b!2823882 m!3254467))

(declare-fun m!3254469 () Bool)

(assert (=> b!2823883 m!3254469))

(assert (=> b!2823884 m!3254455))

(assert (=> b!2823884 m!3254455))

(assert (=> b!2823884 m!3254457))

(assert (=> b!2823884 m!3254457))

(assert (=> b!2823884 m!3254461))

(declare-fun m!3254471 () Bool)

(assert (=> b!2823884 m!3254471))

(assert (=> b!2823806 d!819867))

(declare-fun bs!517836 () Bool)

(declare-fun d!819871 () Bool)

(assert (= bs!517836 (and d!819871 b!2823799)))

(declare-fun lambda!103722 () Int)

(assert (=> bs!517836 (= (= thiss!27755 Lexer!4555) (= lambda!103722 lambda!103716))))

(declare-fun b!2823893 () Bool)

(declare-fun e!1786815 () Bool)

(assert (=> b!2823893 (= e!1786815 true)))

(declare-fun b!2823892 () Bool)

(declare-fun e!1786814 () Bool)

(assert (=> b!2823892 (= e!1786814 e!1786815)))

(declare-fun b!2823891 () Bool)

(declare-fun e!1786813 () Bool)

(assert (=> b!2823891 (= e!1786813 e!1786814)))

(assert (=> d!819871 e!1786813))

(assert (= b!2823892 b!2823893))

(assert (= b!2823891 b!2823892))

(assert (= (and d!819871 (is-Cons!33146 rules!4424)) b!2823891))

(assert (=> b!2823893 (< (dynLambda!13895 order!17649 (toValue!6988 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103722))))

(assert (=> b!2823893 (< (dynLambda!13897 order!17653 (toChars!6847 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103722))))

(assert (=> d!819871 true))

(declare-fun lt!1007732 () Bool)

(assert (=> d!819871 (= lt!1007732 (forall!6796 (t!230788 lt!1007720) lambda!103722))))

(declare-fun e!1786811 () Bool)

(assert (=> d!819871 (= lt!1007732 e!1786811)))

(declare-fun res!1175192 () Bool)

(assert (=> d!819871 (=> res!1175192 e!1786811)))

(assert (=> d!819871 (= res!1175192 (not (is-Cons!33147 (t!230788 lt!1007720))))))

(assert (=> d!819871 (not (isEmpty!18331 rules!4424))))

(assert (=> d!819871 (= (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 (t!230788 lt!1007720)) lt!1007732)))

(declare-fun b!2823889 () Bool)

(declare-fun e!1786812 () Bool)

(assert (=> b!2823889 (= e!1786811 e!1786812)))

(declare-fun res!1175193 () Bool)

(assert (=> b!2823889 (=> (not res!1175193) (not e!1786812))))

(assert (=> b!2823889 (= res!1175193 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 (t!230788 lt!1007720))))))

(declare-fun b!2823890 () Bool)

(assert (=> b!2823890 (= e!1786812 (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 (t!230788 (t!230788 lt!1007720))))))

(assert (= (and d!819871 (not res!1175192)) b!2823889))

(assert (= (and b!2823889 res!1175193) b!2823890))

(declare-fun m!3254473 () Bool)

(assert (=> d!819871 m!3254473))

(assert (=> d!819871 m!3254405))

(declare-fun m!3254475 () Bool)

(assert (=> b!2823889 m!3254475))

(declare-fun m!3254477 () Bool)

(assert (=> b!2823890 m!3254477))

(assert (=> b!2823800 d!819871))

(declare-fun d!819873 () Bool)

(declare-fun res!1175196 () Bool)

(declare-fun e!1786818 () Bool)

(assert (=> d!819873 (=> (not res!1175196) (not e!1786818))))

(declare-fun rulesValid!1829 (LexerInterface!4557 List!33270) Bool)

(assert (=> d!819873 (= res!1175196 (rulesValid!1829 thiss!27755 rules!4424))))

(assert (=> d!819873 (= (rulesInvariant!3975 thiss!27755 rules!4424) e!1786818)))

(declare-fun b!2823898 () Bool)

(declare-datatypes ((List!33276 0))(
  ( (Nil!33152) (Cons!33152 (h!38572 String!36438) (t!230808 List!33276)) )
))
(declare-fun noDuplicateTag!1825 (LexerInterface!4557 List!33270 List!33276) Bool)

(assert (=> b!2823898 (= e!1786818 (noDuplicateTag!1825 thiss!27755 rules!4424 Nil!33152))))

(assert (= (and d!819873 res!1175196) b!2823898))

(declare-fun m!3254479 () Bool)

(assert (=> d!819873 m!3254479))

(declare-fun m!3254481 () Bool)

(assert (=> b!2823898 m!3254481))

(assert (=> b!2823805 d!819873))

(declare-fun bs!517837 () Bool)

(declare-fun d!819875 () Bool)

(assert (= bs!517837 (and d!819875 b!2823799)))

(declare-fun lambda!103723 () Int)

(assert (=> bs!517837 (= (= thiss!27755 Lexer!4555) (= lambda!103723 lambda!103716))))

(declare-fun bs!517838 () Bool)

(assert (= bs!517838 (and d!819875 d!819871)))

(assert (=> bs!517838 (= lambda!103723 lambda!103722)))

(declare-fun b!2823903 () Bool)

(declare-fun e!1786823 () Bool)

(assert (=> b!2823903 (= e!1786823 true)))

(declare-fun b!2823902 () Bool)

(declare-fun e!1786822 () Bool)

(assert (=> b!2823902 (= e!1786822 e!1786823)))

(declare-fun b!2823901 () Bool)

(declare-fun e!1786821 () Bool)

(assert (=> b!2823901 (= e!1786821 e!1786822)))

(assert (=> d!819875 e!1786821))

(assert (= b!2823902 b!2823903))

(assert (= b!2823901 b!2823902))

(assert (= (and d!819875 (is-Cons!33146 rules!4424)) b!2823901))

(assert (=> b!2823903 (< (dynLambda!13895 order!17649 (toValue!6988 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103723))))

(assert (=> b!2823903 (< (dynLambda!13897 order!17653 (toChars!6847 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103723))))

(assert (=> d!819875 true))

(declare-fun lt!1007733 () Bool)

(assert (=> d!819875 (= lt!1007733 (forall!6796 l!6581 lambda!103723))))

(declare-fun e!1786819 () Bool)

(assert (=> d!819875 (= lt!1007733 e!1786819)))

(declare-fun res!1175197 () Bool)

(assert (=> d!819875 (=> res!1175197 e!1786819)))

(assert (=> d!819875 (= res!1175197 (not (is-Cons!33147 l!6581)))))

(assert (=> d!819875 (not (isEmpty!18331 rules!4424))))

(assert (=> d!819875 (= (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 l!6581) lt!1007733)))

(declare-fun b!2823899 () Bool)

(declare-fun e!1786820 () Bool)

(assert (=> b!2823899 (= e!1786819 e!1786820)))

(declare-fun res!1175198 () Bool)

(assert (=> b!2823899 (=> (not res!1175198) (not e!1786820))))

(assert (=> b!2823899 (= res!1175198 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 l!6581)))))

(declare-fun b!2823900 () Bool)

(assert (=> b!2823900 (= e!1786820 (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 (t!230788 l!6581)))))

(assert (= (and d!819875 (not res!1175197)) b!2823899))

(assert (= (and b!2823899 res!1175198) b!2823900))

(declare-fun m!3254483 () Bool)

(assert (=> d!819875 m!3254483))

(assert (=> d!819875 m!3254405))

(declare-fun m!3254485 () Bool)

(assert (=> b!2823899 m!3254485))

(declare-fun m!3254487 () Bool)

(assert (=> b!2823900 m!3254487))

(assert (=> b!2823804 d!819875))

(declare-fun d!819877 () Bool)

(declare-fun res!1175203 () Bool)

(declare-fun e!1786828 () Bool)

(assert (=> d!819877 (=> res!1175203 e!1786828)))

(assert (=> d!819877 (= res!1175203 (is-Nil!33147 l!6581))))

(assert (=> d!819877 (= (forall!6796 l!6581 lambda!103716) e!1786828)))

(declare-fun b!2823908 () Bool)

(declare-fun e!1786829 () Bool)

(assert (=> b!2823908 (= e!1786828 e!1786829)))

(declare-fun res!1175204 () Bool)

(assert (=> b!2823908 (=> (not res!1175204) (not e!1786829))))

(declare-fun dynLambda!13901 (Int Token!9334) Bool)

(assert (=> b!2823908 (= res!1175204 (dynLambda!13901 lambda!103716 (h!38567 l!6581)))))

(declare-fun b!2823909 () Bool)

(assert (=> b!2823909 (= e!1786829 (forall!6796 (t!230788 l!6581) lambda!103716))))

(assert (= (and d!819877 (not res!1175203)) b!2823908))

(assert (= (and b!2823908 res!1175204) b!2823909))

(declare-fun b_lambda!84635 () Bool)

(assert (=> (not b_lambda!84635) (not b!2823908)))

(declare-fun m!3254489 () Bool)

(assert (=> b!2823908 m!3254489))

(declare-fun m!3254491 () Bool)

(assert (=> b!2823909 m!3254491))

(assert (=> b!2823799 d!819877))

(declare-fun bs!517839 () Bool)

(declare-fun d!819879 () Bool)

(assert (= bs!517839 (and d!819879 b!2823799)))

(declare-fun lambda!103724 () Int)

(assert (=> bs!517839 (= (= thiss!27755 Lexer!4555) (= lambda!103724 lambda!103716))))

(declare-fun bs!517840 () Bool)

(assert (= bs!517840 (and d!819879 d!819871)))

(assert (=> bs!517840 (= lambda!103724 lambda!103722)))

(declare-fun bs!517841 () Bool)

(assert (= bs!517841 (and d!819879 d!819875)))

(assert (=> bs!517841 (= lambda!103724 lambda!103723)))

(declare-fun b!2823914 () Bool)

(declare-fun e!1786834 () Bool)

(assert (=> b!2823914 (= e!1786834 true)))

(declare-fun b!2823913 () Bool)

(declare-fun e!1786833 () Bool)

(assert (=> b!2823913 (= e!1786833 e!1786834)))

(declare-fun b!2823912 () Bool)

(declare-fun e!1786832 () Bool)

(assert (=> b!2823912 (= e!1786832 e!1786833)))

(assert (=> d!819879 e!1786832))

(assert (= b!2823913 b!2823914))

(assert (= b!2823912 b!2823913))

(assert (= (and d!819879 (is-Cons!33146 rules!4424)) b!2823912))

(assert (=> b!2823914 (< (dynLambda!13895 order!17649 (toValue!6988 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103724))))

(assert (=> b!2823914 (< (dynLambda!13897 order!17653 (toChars!6847 (transformation!4966 (h!38566 rules!4424)))) (dynLambda!13896 order!17651 lambda!103724))))

(assert (=> d!819879 true))

(declare-fun lt!1007734 () Bool)

(assert (=> d!819879 (= lt!1007734 (forall!6796 lt!1007720 lambda!103724))))

(declare-fun e!1786830 () Bool)

(assert (=> d!819879 (= lt!1007734 e!1786830)))

(declare-fun res!1175205 () Bool)

(assert (=> d!819879 (=> res!1175205 e!1786830)))

(assert (=> d!819879 (= res!1175205 (not (is-Cons!33147 lt!1007720)))))

(assert (=> d!819879 (not (isEmpty!18331 rules!4424))))

(assert (=> d!819879 (= (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 lt!1007720) lt!1007734)))

(declare-fun b!2823910 () Bool)

(declare-fun e!1786831 () Bool)

(assert (=> b!2823910 (= e!1786830 e!1786831)))

(declare-fun res!1175206 () Bool)

(assert (=> b!2823910 (=> (not res!1175206) (not e!1786831))))

(assert (=> b!2823910 (= res!1175206 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 lt!1007720)))))

(declare-fun b!2823911 () Bool)

(assert (=> b!2823911 (= e!1786831 (rulesProduceEachTokenIndividuallyList!1609 thiss!27755 rules!4424 (t!230788 lt!1007720)))))

(assert (= (and d!819879 (not res!1175205)) b!2823910))

(assert (= (and b!2823910 res!1175206) b!2823911))

(declare-fun m!3254493 () Bool)

(assert (=> d!819879 m!3254493))

(assert (=> d!819879 m!3254405))

(assert (=> b!2823910 m!3254399))

(assert (=> b!2823911 m!3254415))

(assert (=> b!2823799 d!819879))

(declare-fun b!2823929 () Bool)

(declare-fun e!1786844 () List!33271)

(assert (=> b!2823929 (= e!1786844 Nil!33147)))

(declare-fun b!2823930 () Bool)

(assert (=> b!2823930 (= e!1786844 (Cons!33147 (h!38567 l!6581) (take!560 (t!230788 l!6581) (- i!1730 1))))))

(declare-fun d!819881 () Bool)

(declare-fun e!1786845 () Bool)

(assert (=> d!819881 e!1786845))

(declare-fun res!1175209 () Bool)

(assert (=> d!819881 (=> (not res!1175209) (not e!1786845))))

(declare-fun lt!1007737 () List!33271)

(declare-fun content!4619 (List!33271) (Set Token!9334))

(assert (=> d!819881 (= res!1175209 (set.subset (content!4619 lt!1007737) (content!4619 l!6581)))))

(assert (=> d!819881 (= lt!1007737 e!1786844)))

(declare-fun c!457296 () Bool)

(assert (=> d!819881 (= c!457296 (or (is-Nil!33147 l!6581) (<= i!1730 0)))))

(assert (=> d!819881 (= (take!560 l!6581 i!1730) lt!1007737)))

(declare-fun b!2823931 () Bool)

(declare-fun e!1786846 () Int)

(declare-fun size!25810 (List!33271) Int)

(assert (=> b!2823931 (= e!1786845 (= (size!25810 lt!1007737) e!1786846))))

(declare-fun c!457295 () Bool)

(assert (=> b!2823931 (= c!457295 (<= i!1730 0))))

(declare-fun b!2823932 () Bool)

(declare-fun e!1786843 () Int)

(assert (=> b!2823932 (= e!1786846 e!1786843)))

(declare-fun c!457294 () Bool)

(assert (=> b!2823932 (= c!457294 (>= i!1730 (size!25810 l!6581)))))

(declare-fun b!2823933 () Bool)

(assert (=> b!2823933 (= e!1786843 i!1730)))

(declare-fun b!2823934 () Bool)

(assert (=> b!2823934 (= e!1786843 (size!25810 l!6581))))

(declare-fun b!2823935 () Bool)

(assert (=> b!2823935 (= e!1786846 0)))

(assert (= (and d!819881 c!457296) b!2823929))

(assert (= (and d!819881 (not c!457296)) b!2823930))

(assert (= (and d!819881 res!1175209) b!2823931))

(assert (= (and b!2823931 c!457295) b!2823935))

(assert (= (and b!2823931 (not c!457295)) b!2823932))

(assert (= (and b!2823932 c!457294) b!2823934))

(assert (= (and b!2823932 (not c!457294)) b!2823933))

(declare-fun m!3254495 () Bool)

(assert (=> b!2823934 m!3254495))

(declare-fun m!3254497 () Bool)

(assert (=> b!2823931 m!3254497))

(declare-fun m!3254499 () Bool)

(assert (=> d!819881 m!3254499))

(declare-fun m!3254501 () Bool)

(assert (=> d!819881 m!3254501))

(declare-fun m!3254503 () Bool)

(assert (=> b!2823930 m!3254503))

(assert (=> b!2823932 m!3254495))

(assert (=> b!2823799 d!819881))

(declare-fun d!819883 () Bool)

(declare-fun res!1175214 () Bool)

(declare-fun e!1786849 () Bool)

(assert (=> d!819883 (=> (not res!1175214) (not e!1786849))))

(declare-fun isEmpty!18334 (List!33269) Bool)

(assert (=> d!819883 (= res!1175214 (not (isEmpty!18334 (originalCharacters!5698 (h!38567 l!6581)))))))

(assert (=> d!819883 (= (inv!45077 (h!38567 l!6581)) e!1786849)))

(declare-fun b!2823940 () Bool)

(declare-fun res!1175215 () Bool)

(assert (=> b!2823940 (=> (not res!1175215) (not e!1786849))))

(declare-fun list!12422 (BalanceConc!20212) List!33269)

(declare-fun dynLambda!13902 (Int TokenValue!5196) BalanceConc!20212)

(assert (=> b!2823940 (= res!1175215 (= (originalCharacters!5698 (h!38567 l!6581)) (list!12422 (dynLambda!13902 (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))) (value!159852 (h!38567 l!6581))))))))

(declare-fun b!2823941 () Bool)

(declare-fun size!25811 (List!33269) Int)

(assert (=> b!2823941 (= e!1786849 (= (size!25807 (h!38567 l!6581)) (size!25811 (originalCharacters!5698 (h!38567 l!6581)))))))

(assert (= (and d!819883 res!1175214) b!2823940))

(assert (= (and b!2823940 res!1175215) b!2823941))

(declare-fun b_lambda!84637 () Bool)

(assert (=> (not b_lambda!84637) (not b!2823940)))

(declare-fun t!230799 () Bool)

(declare-fun tb!153957 () Bool)

(assert (=> (and b!2823803 (= (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581))))) t!230799) tb!153957))

(declare-fun b!2823946 () Bool)

(declare-fun e!1786852 () Bool)

(declare-fun tp!901903 () Bool)

(declare-fun inv!45080 (Conc!10287) Bool)

(assert (=> b!2823946 (= e!1786852 (and (inv!45080 (c!457284 (dynLambda!13902 (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))) (value!159852 (h!38567 l!6581))))) tp!901903))))

(declare-fun result!191734 () Bool)

(declare-fun inv!45081 (BalanceConc!20212) Bool)

(assert (=> tb!153957 (= result!191734 (and (inv!45081 (dynLambda!13902 (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))) (value!159852 (h!38567 l!6581)))) e!1786852))))

(assert (= tb!153957 b!2823946))

(declare-fun m!3254505 () Bool)

(assert (=> b!2823946 m!3254505))

(declare-fun m!3254507 () Bool)

(assert (=> tb!153957 m!3254507))

(assert (=> b!2823940 t!230799))

(declare-fun b_and!206367 () Bool)

(assert (= b_and!206353 (and (=> t!230799 result!191734) b_and!206367)))

(declare-fun tb!153959 () Bool)

(declare-fun t!230801 () Bool)

(assert (=> (and b!2823801 (= (toChars!6847 (transformation!4966 (h!38566 rules!4424))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581))))) t!230801) tb!153959))

(declare-fun result!191738 () Bool)

(assert (= result!191738 result!191734))

(assert (=> b!2823940 t!230801))

(declare-fun b_and!206369 () Bool)

(assert (= b_and!206357 (and (=> t!230801 result!191738) b_and!206369)))

(declare-fun m!3254509 () Bool)

(assert (=> d!819883 m!3254509))

(declare-fun m!3254511 () Bool)

(assert (=> b!2823940 m!3254511))

(assert (=> b!2823940 m!3254511))

(declare-fun m!3254513 () Bool)

(assert (=> b!2823940 m!3254513))

(declare-fun m!3254515 () Bool)

(assert (=> b!2823941 m!3254515))

(assert (=> b!2823798 d!819883))

(declare-fun d!819885 () Bool)

(assert (=> d!819885 (= (inv!45073 (tag!5470 (h!38566 rules!4424))) (= (mod (str.len (value!159851 (tag!5470 (h!38566 rules!4424)))) 2) 0))))

(assert (=> b!2823808 d!819885))

(declare-fun d!819887 () Bool)

(declare-fun res!1175218 () Bool)

(declare-fun e!1786855 () Bool)

(assert (=> d!819887 (=> (not res!1175218) (not e!1786855))))

(declare-fun semiInverseModEq!2059 (Int Int) Bool)

(assert (=> d!819887 (= res!1175218 (semiInverseModEq!2059 (toChars!6847 (transformation!4966 (h!38566 rules!4424))) (toValue!6988 (transformation!4966 (h!38566 rules!4424)))))))

(assert (=> d!819887 (= (inv!45076 (transformation!4966 (h!38566 rules!4424))) e!1786855)))

(declare-fun b!2823949 () Bool)

(declare-fun equivClasses!1958 (Int Int) Bool)

(assert (=> b!2823949 (= e!1786855 (equivClasses!1958 (toChars!6847 (transformation!4966 (h!38566 rules!4424))) (toValue!6988 (transformation!4966 (h!38566 rules!4424)))))))

(assert (= (and d!819887 res!1175218) b!2823949))

(declare-fun m!3254517 () Bool)

(assert (=> d!819887 m!3254517))

(declare-fun m!3254519 () Bool)

(assert (=> b!2823949 m!3254519))

(assert (=> b!2823808 d!819887))

(declare-fun d!819889 () Bool)

(assert (=> d!819889 (= (isEmpty!18331 rules!4424) (is-Nil!33146 rules!4424))))

(assert (=> b!2823802 d!819889))

(declare-fun d!819891 () Bool)

(declare-fun res!1175235 () Bool)

(declare-fun e!1786873 () Bool)

(assert (=> d!819891 (=> res!1175235 e!1786873)))

(assert (=> d!819891 (= res!1175235 (or (not (is-Cons!33147 l!6581)) (not (is-Cons!33147 (t!230788 l!6581)))))))

(assert (=> d!819891 (= (tokensListTwoByTwoPredicateSeparableList!694 thiss!27755 l!6581 rules!4424) e!1786873)))

(declare-fun b!2823966 () Bool)

(declare-fun e!1786872 () Bool)

(assert (=> b!2823966 (= e!1786873 e!1786872)))

(declare-fun res!1175236 () Bool)

(assert (=> b!2823966 (=> (not res!1175236) (not e!1786872))))

(declare-fun separableTokensPredicate!899 (LexerInterface!4557 Token!9334 Token!9334 List!33270) Bool)

(assert (=> b!2823966 (= res!1175236 (separableTokensPredicate!899 thiss!27755 (h!38567 l!6581) (h!38567 (t!230788 l!6581)) rules!4424))))

(declare-datatypes ((Unit!47150 0))(
  ( (Unit!47151) )
))
(declare-fun lt!1007773 () Unit!47150)

(declare-fun Unit!47152 () Unit!47150)

(assert (=> b!2823966 (= lt!1007773 Unit!47152)))

(declare-fun size!25812 (BalanceConc!20212) Int)

(declare-fun charsOf!3074 (Token!9334) BalanceConc!20212)

(assert (=> b!2823966 (> (size!25812 (charsOf!3074 (h!38567 (t!230788 l!6581)))) 0)))

(declare-fun lt!1007774 () Unit!47150)

(declare-fun Unit!47153 () Unit!47150)

(assert (=> b!2823966 (= lt!1007774 Unit!47153)))

(assert (=> b!2823966 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 (t!230788 l!6581)))))

(declare-fun lt!1007775 () Unit!47150)

(declare-fun Unit!47154 () Unit!47150)

(assert (=> b!2823966 (= lt!1007775 Unit!47154)))

(assert (=> b!2823966 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 l!6581))))

(declare-fun lt!1007779 () Unit!47150)

(declare-fun lt!1007778 () Unit!47150)

(assert (=> b!2823966 (= lt!1007779 lt!1007778)))

(assert (=> b!2823966 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 (t!230788 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!713 (LexerInterface!4557 List!33270 List!33271 Token!9334) Unit!47150)

(assert (=> b!2823966 (= lt!1007778 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!713 thiss!27755 rules!4424 l!6581 (h!38567 (t!230788 l!6581))))))

(declare-fun lt!1007776 () Unit!47150)

(declare-fun lt!1007777 () Unit!47150)

(assert (=> b!2823966 (= lt!1007776 lt!1007777)))

(assert (=> b!2823966 (rulesProduceIndividualToken!2095 thiss!27755 rules!4424 (h!38567 l!6581))))

(assert (=> b!2823966 (= lt!1007777 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!713 thiss!27755 rules!4424 l!6581 (h!38567 l!6581)))))

(declare-fun b!2823967 () Bool)

(assert (=> b!2823967 (= e!1786872 (tokensListTwoByTwoPredicateSeparableList!694 thiss!27755 (Cons!33147 (h!38567 (t!230788 l!6581)) (t!230788 (t!230788 l!6581))) rules!4424))))

(assert (= (and d!819891 (not res!1175235)) b!2823966))

(assert (= (and b!2823966 res!1175236) b!2823967))

(declare-fun m!3254541 () Bool)

(assert (=> b!2823966 m!3254541))

(declare-fun m!3254543 () Bool)

(assert (=> b!2823966 m!3254543))

(declare-fun m!3254545 () Bool)

(assert (=> b!2823966 m!3254545))

(declare-fun m!3254547 () Bool)

(assert (=> b!2823966 m!3254547))

(declare-fun m!3254549 () Bool)

(assert (=> b!2823966 m!3254549))

(assert (=> b!2823966 m!3254485))

(assert (=> b!2823966 m!3254541))

(declare-fun m!3254551 () Bool)

(assert (=> b!2823966 m!3254551))

(declare-fun m!3254553 () Bool)

(assert (=> b!2823967 m!3254553))

(assert (=> b!2823797 d!819891))

(declare-fun d!819897 () Bool)

(assert (=> d!819897 (= (inv!45073 (tag!5470 (rule!7394 (h!38567 l!6581)))) (= (mod (str.len (value!159851 (tag!5470 (rule!7394 (h!38567 l!6581))))) 2) 0))))

(assert (=> b!2823796 d!819897))

(declare-fun d!819899 () Bool)

(declare-fun res!1175237 () Bool)

(declare-fun e!1786874 () Bool)

(assert (=> d!819899 (=> (not res!1175237) (not e!1786874))))

(assert (=> d!819899 (= res!1175237 (semiInverseModEq!2059 (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))) (toValue!6988 (transformation!4966 (rule!7394 (h!38567 l!6581))))))))

(assert (=> d!819899 (= (inv!45076 (transformation!4966 (rule!7394 (h!38567 l!6581)))) e!1786874)))

(declare-fun b!2823968 () Bool)

(assert (=> b!2823968 (= e!1786874 (equivClasses!1958 (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))) (toValue!6988 (transformation!4966 (rule!7394 (h!38567 l!6581))))))))

(assert (= (and d!819899 res!1175237) b!2823968))

(declare-fun m!3254555 () Bool)

(assert (=> d!819899 m!3254555))

(declare-fun m!3254557 () Bool)

(assert (=> b!2823968 m!3254557))

(assert (=> b!2823796 d!819899))

(declare-fun b!2823979 () Bool)

(declare-fun e!1786881 () Bool)

(declare-fun e!1786882 () Bool)

(assert (=> b!2823979 (= e!1786881 e!1786882)))

(declare-fun c!457302 () Bool)

(assert (=> b!2823979 (= c!457302 (is-IntegerValue!15589 (value!159852 (h!38567 l!6581))))))

(declare-fun b!2823980 () Bool)

(declare-fun e!1786883 () Bool)

(declare-fun inv!15 (TokenValue!5196) Bool)

(assert (=> b!2823980 (= e!1786883 (inv!15 (value!159852 (h!38567 l!6581))))))

(declare-fun d!819901 () Bool)

(declare-fun c!457301 () Bool)

(assert (=> d!819901 (= c!457301 (is-IntegerValue!15588 (value!159852 (h!38567 l!6581))))))

(assert (=> d!819901 (= (inv!21 (value!159852 (h!38567 l!6581))) e!1786881)))

(declare-fun b!2823981 () Bool)

(declare-fun inv!17 (TokenValue!5196) Bool)

(assert (=> b!2823981 (= e!1786882 (inv!17 (value!159852 (h!38567 l!6581))))))

(declare-fun b!2823982 () Bool)

(declare-fun res!1175240 () Bool)

(assert (=> b!2823982 (=> res!1175240 e!1786883)))

(assert (=> b!2823982 (= res!1175240 (not (is-IntegerValue!15590 (value!159852 (h!38567 l!6581)))))))

(assert (=> b!2823982 (= e!1786882 e!1786883)))

(declare-fun b!2823983 () Bool)

(declare-fun inv!16 (TokenValue!5196) Bool)

(assert (=> b!2823983 (= e!1786881 (inv!16 (value!159852 (h!38567 l!6581))))))

(assert (= (and d!819901 c!457301) b!2823983))

(assert (= (and d!819901 (not c!457301)) b!2823979))

(assert (= (and b!2823979 c!457302) b!2823981))

(assert (= (and b!2823979 (not c!457302)) b!2823982))

(assert (= (and b!2823982 (not res!1175240)) b!2823980))

(declare-fun m!3254559 () Bool)

(assert (=> b!2823980 m!3254559))

(declare-fun m!3254561 () Bool)

(assert (=> b!2823981 m!3254561))

(declare-fun m!3254563 () Bool)

(assert (=> b!2823983 m!3254563))

(assert (=> b!2823807 d!819901))

(declare-fun b!2823994 () Bool)

(declare-fun b_free!80877 () Bool)

(declare-fun b_next!81581 () Bool)

(assert (=> b!2823994 (= b_free!80877 (not b_next!81581))))

(declare-fun tp!901914 () Bool)

(declare-fun b_and!206371 () Bool)

(assert (=> b!2823994 (= tp!901914 b_and!206371)))

(declare-fun b_free!80879 () Bool)

(declare-fun b_next!81583 () Bool)

(assert (=> b!2823994 (= b_free!80879 (not b_next!81583))))

(declare-fun t!230803 () Bool)

(declare-fun tb!153961 () Bool)

(assert (=> (and b!2823994 (= (toChars!6847 (transformation!4966 (h!38566 (t!230787 rules!4424)))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581))))) t!230803) tb!153961))

(declare-fun result!191742 () Bool)

(assert (= result!191742 result!191734))

(assert (=> b!2823940 t!230803))

(declare-fun b_and!206373 () Bool)

(declare-fun tp!901912 () Bool)

(assert (=> b!2823994 (= tp!901912 (and (=> t!230803 result!191742) b_and!206373))))

(declare-fun e!1786892 () Bool)

(assert (=> b!2823994 (= e!1786892 (and tp!901914 tp!901912))))

(declare-fun tp!901915 () Bool)

(declare-fun e!1786895 () Bool)

(declare-fun b!2823993 () Bool)

(assert (=> b!2823993 (= e!1786895 (and tp!901915 (inv!45073 (tag!5470 (h!38566 (t!230787 rules!4424)))) (inv!45076 (transformation!4966 (h!38566 (t!230787 rules!4424)))) e!1786892))))

(declare-fun b!2823992 () Bool)

(declare-fun e!1786894 () Bool)

(declare-fun tp!901913 () Bool)

(assert (=> b!2823992 (= e!1786894 (and e!1786895 tp!901913))))

(assert (=> b!2823795 (= tp!901865 e!1786894)))

(assert (= b!2823993 b!2823994))

(assert (= b!2823992 b!2823993))

(assert (= (and b!2823795 (is-Cons!33146 (t!230787 rules!4424))) b!2823992))

(declare-fun m!3254565 () Bool)

(assert (=> b!2823993 m!3254565))

(declare-fun m!3254567 () Bool)

(assert (=> b!2823993 m!3254567))

(declare-fun b!2824008 () Bool)

(declare-fun b_free!80881 () Bool)

(declare-fun b_next!81585 () Bool)

(assert (=> b!2824008 (= b_free!80881 (not b_next!81585))))

(declare-fun tp!901930 () Bool)

(declare-fun b_and!206375 () Bool)

(assert (=> b!2824008 (= tp!901930 b_and!206375)))

(declare-fun b_free!80883 () Bool)

(declare-fun b_next!81587 () Bool)

(assert (=> b!2824008 (= b_free!80883 (not b_next!81587))))

(declare-fun t!230805 () Bool)

(declare-fun tb!153963 () Bool)

(assert (=> (and b!2824008 (= (toChars!6847 (transformation!4966 (rule!7394 (h!38567 (t!230788 l!6581))))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581))))) t!230805) tb!153963))

(declare-fun result!191746 () Bool)

(assert (= result!191746 result!191734))

(assert (=> b!2823940 t!230805))

(declare-fun tp!901927 () Bool)

(declare-fun b_and!206377 () Bool)

(assert (=> b!2824008 (= tp!901927 (and (=> t!230805 result!191746) b_and!206377))))

(declare-fun tp!901926 () Bool)

(declare-fun b!2824007 () Bool)

(declare-fun e!1786909 () Bool)

(declare-fun e!1786912 () Bool)

(assert (=> b!2824007 (= e!1786909 (and tp!901926 (inv!45073 (tag!5470 (rule!7394 (h!38567 (t!230788 l!6581))))) (inv!45076 (transformation!4966 (rule!7394 (h!38567 (t!230788 l!6581))))) e!1786912))))

(assert (=> b!2824008 (= e!1786912 (and tp!901930 tp!901927))))

(declare-fun e!1786908 () Bool)

(declare-fun b!2824005 () Bool)

(declare-fun e!1786913 () Bool)

(declare-fun tp!901928 () Bool)

(assert (=> b!2824005 (= e!1786908 (and (inv!45077 (h!38567 (t!230788 l!6581))) e!1786913 tp!901928))))

(declare-fun b!2824006 () Bool)

(declare-fun tp!901929 () Bool)

(assert (=> b!2824006 (= e!1786913 (and (inv!21 (value!159852 (h!38567 (t!230788 l!6581)))) e!1786909 tp!901929))))

(assert (=> b!2823798 (= tp!901868 e!1786908)))

(assert (= b!2824007 b!2824008))

(assert (= b!2824006 b!2824007))

(assert (= b!2824005 b!2824006))

(assert (= (and b!2823798 (is-Cons!33147 (t!230788 l!6581))) b!2824005))

(declare-fun m!3254569 () Bool)

(assert (=> b!2824007 m!3254569))

(declare-fun m!3254571 () Bool)

(assert (=> b!2824007 m!3254571))

(declare-fun m!3254573 () Bool)

(assert (=> b!2824005 m!3254573))

(declare-fun m!3254575 () Bool)

(assert (=> b!2824006 m!3254575))

(declare-fun b!2824020 () Bool)

(declare-fun e!1786916 () Bool)

(declare-fun tp!901942 () Bool)

(declare-fun tp!901945 () Bool)

(assert (=> b!2824020 (= e!1786916 (and tp!901942 tp!901945))))

(declare-fun b!2824022 () Bool)

(declare-fun tp!901943 () Bool)

(declare-fun tp!901941 () Bool)

(assert (=> b!2824022 (= e!1786916 (and tp!901943 tp!901941))))

(declare-fun b!2824019 () Bool)

(declare-fun tp_is_empty!14465 () Bool)

(assert (=> b!2824019 (= e!1786916 tp_is_empty!14465)))

(declare-fun b!2824021 () Bool)

(declare-fun tp!901944 () Bool)

(assert (=> b!2824021 (= e!1786916 tp!901944)))

(assert (=> b!2823808 (= tp!901873 e!1786916)))

(assert (= (and b!2823808 (is-ElementMatch!8356 (regex!4966 (h!38566 rules!4424)))) b!2824019))

(assert (= (and b!2823808 (is-Concat!13553 (regex!4966 (h!38566 rules!4424)))) b!2824020))

(assert (= (and b!2823808 (is-Star!8356 (regex!4966 (h!38566 rules!4424)))) b!2824021))

(assert (= (and b!2823808 (is-Union!8356 (regex!4966 (h!38566 rules!4424)))) b!2824022))

(declare-fun b!2824024 () Bool)

(declare-fun e!1786917 () Bool)

(declare-fun tp!901947 () Bool)

(declare-fun tp!901950 () Bool)

(assert (=> b!2824024 (= e!1786917 (and tp!901947 tp!901950))))

(declare-fun b!2824026 () Bool)

(declare-fun tp!901948 () Bool)

(declare-fun tp!901946 () Bool)

(assert (=> b!2824026 (= e!1786917 (and tp!901948 tp!901946))))

(declare-fun b!2824023 () Bool)

(assert (=> b!2824023 (= e!1786917 tp_is_empty!14465)))

(declare-fun b!2824025 () Bool)

(declare-fun tp!901949 () Bool)

(assert (=> b!2824025 (= e!1786917 tp!901949)))

(assert (=> b!2823796 (= tp!901867 e!1786917)))

(assert (= (and b!2823796 (is-ElementMatch!8356 (regex!4966 (rule!7394 (h!38567 l!6581))))) b!2824023))

(assert (= (and b!2823796 (is-Concat!13553 (regex!4966 (rule!7394 (h!38567 l!6581))))) b!2824024))

(assert (= (and b!2823796 (is-Star!8356 (regex!4966 (rule!7394 (h!38567 l!6581))))) b!2824025))

(assert (= (and b!2823796 (is-Union!8356 (regex!4966 (rule!7394 (h!38567 l!6581))))) b!2824026))

(declare-fun b!2824031 () Bool)

(declare-fun e!1786920 () Bool)

(declare-fun tp!901953 () Bool)

(assert (=> b!2824031 (= e!1786920 (and tp_is_empty!14465 tp!901953))))

(assert (=> b!2823807 (= tp!901866 e!1786920)))

(assert (= (and b!2823807 (is-Cons!33145 (originalCharacters!5698 (h!38567 l!6581)))) b!2824031))

(declare-fun b!2824034 () Bool)

(declare-fun e!1786923 () Bool)

(assert (=> b!2824034 (= e!1786923 true)))

(declare-fun b!2824033 () Bool)

(declare-fun e!1786922 () Bool)

(assert (=> b!2824033 (= e!1786922 e!1786923)))

(declare-fun b!2824032 () Bool)

(declare-fun e!1786921 () Bool)

(assert (=> b!2824032 (= e!1786921 e!1786922)))

(assert (=> b!2823817 e!1786921))

(assert (= b!2824033 b!2824034))

(assert (= b!2824032 b!2824033))

(assert (= (and b!2823817 (is-Cons!33146 (t!230787 rules!4424))) b!2824032))

(assert (=> b!2824034 (< (dynLambda!13895 order!17649 (toValue!6988 (transformation!4966 (h!38566 (t!230787 rules!4424))))) (dynLambda!13896 order!17651 lambda!103716))))

(assert (=> b!2824034 (< (dynLambda!13897 order!17653 (toChars!6847 (transformation!4966 (h!38566 (t!230787 rules!4424))))) (dynLambda!13896 order!17651 lambda!103716))))

(declare-fun b_lambda!84641 () Bool)

(assert (= b_lambda!84637 (or (and b!2823803 b_free!80863) (and b!2823801 b_free!80867 (= (toChars!6847 (transformation!4966 (h!38566 rules!4424))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))))) (and b!2823994 b_free!80879 (= (toChars!6847 (transformation!4966 (h!38566 (t!230787 rules!4424)))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))))) (and b!2824008 b_free!80883 (= (toChars!6847 (transformation!4966 (rule!7394 (h!38567 (t!230788 l!6581))))) (toChars!6847 (transformation!4966 (rule!7394 (h!38567 l!6581)))))) b_lambda!84641)))

(declare-fun b_lambda!84643 () Bool)

(assert (= b_lambda!84635 (or b!2823799 b_lambda!84643)))

(declare-fun bs!517842 () Bool)

(declare-fun d!819903 () Bool)

(assert (= bs!517842 (and d!819903 b!2823799)))

(assert (=> bs!517842 (= (dynLambda!13901 lambda!103716 (h!38567 l!6581)) (rulesProduceIndividualToken!2095 Lexer!4555 rules!4424 (h!38567 l!6581)))))

(declare-fun m!3254577 () Bool)

(assert (=> bs!517842 m!3254577))

(assert (=> b!2823908 d!819903))

(push 1)

(assert (not b!2823909))

(assert (not b!2824032))

(assert b_and!206355)

(assert (not b_next!81565))

(assert (not b_next!81583))

(assert b_and!206367)

(assert (not b!2823949))

(assert (not b!2823966))

(assert (not b!2824021))

(assert (not d!819867))

(assert (not b!2823910))

(assert (not b!2824022))

(assert (not b!2823940))

(assert (not b!2823967))

(assert (not b!2823968))

(assert (not b!2823901))

(assert (not b!2824025))

(assert (not b!2823882))

(assert (not b!2823992))

(assert (not d!819879))

(assert b_and!206351)

(assert (not d!819887))

(assert b_and!206371)

(assert (not tb!153957))

(assert (not b!2823930))

(assert (not b!2823911))

(assert (not b_next!81571))

(assert (not b_lambda!84641))

(assert (not b!2824024))

(assert b_and!206373)

(assert (not b!2823883))

(assert (not b!2823912))

(assert (not d!819899))

(assert (not b!2823889))

(assert (not b!2824031))

(assert (not b!2823934))

(assert (not b!2824007))

(assert (not b!2824005))

(assert (not bs!517842))

(assert b_and!206369)

(assert (not b_next!81567))

(assert (not b!2823932))

(assert (not b!2824020))

(assert (not b!2823899))

(assert (not b!2823983))

(assert (not d!819875))

(assert b_and!206375)

(assert (not b_next!81569))

(assert (not d!819871))

(assert (not b!2824006))

(assert (not b_lambda!84643))

(assert (not b!2823900))

(assert (not d!819881))

(assert (not b!2824026))

(assert (not b!2823931))

(assert (not d!819873))

(assert (not d!819883))

(assert (not b!2823993))

(assert (not b!2823891))

(assert b_and!206377)

(assert (not b!2823941))

(assert (not b!2823884))

(assert (not b!2823980))

(assert (not b!2823981))

(assert (not b!2823890))

(assert (not b!2823946))

(assert (not b_next!81581))

(assert (not b_next!81585))

(assert (not b_next!81587))

(assert tp_is_empty!14465)

(assert (not b!2823898))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206355)

(assert (not b_next!81571))

(assert b_and!206373)

(assert (not b_next!81565))

(assert (not b_next!81583))

(assert b_and!206367)

(assert b_and!206377)

(assert (not b_next!81587))

(assert b_and!206351)

(assert b_and!206371)

(assert (not b_next!81567))

(assert b_and!206369)

(assert b_and!206375)

(assert (not b_next!81569))

(assert (not b_next!81581))

(assert (not b_next!81585))

(check-sat)

(pop 1)

