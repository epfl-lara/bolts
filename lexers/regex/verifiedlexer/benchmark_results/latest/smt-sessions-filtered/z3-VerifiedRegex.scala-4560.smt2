; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241386 () Bool)

(assert start!241386)

(declare-fun b!2475147 () Bool)

(declare-fun b_free!71781 () Bool)

(declare-fun b_next!72485 () Bool)

(assert (=> b!2475147 (= b_free!71781 (not b_next!72485))))

(declare-fun tp!791478 () Bool)

(declare-fun b_and!187957 () Bool)

(assert (=> b!2475147 (= tp!791478 b_and!187957)))

(declare-fun b_free!71783 () Bool)

(declare-fun b_next!72487 () Bool)

(assert (=> b!2475147 (= b_free!71783 (not b_next!72487))))

(declare-fun tp!791474 () Bool)

(declare-fun b_and!187959 () Bool)

(assert (=> b!2475147 (= tp!791474 b_and!187959)))

(declare-fun b!2475138 () Bool)

(declare-fun b_free!71785 () Bool)

(declare-fun b_next!72489 () Bool)

(assert (=> b!2475138 (= b_free!71785 (not b_next!72489))))

(declare-fun tp!791465 () Bool)

(declare-fun b_and!187961 () Bool)

(assert (=> b!2475138 (= tp!791465 b_and!187961)))

(declare-fun b_free!71787 () Bool)

(declare-fun b_next!72491 () Bool)

(assert (=> b!2475138 (= b_free!71787 (not b_next!72491))))

(declare-fun tp!791469 () Bool)

(declare-fun b_and!187963 () Bool)

(assert (=> b!2475138 (= tp!791469 b_and!187963)))

(declare-fun b!2475164 () Bool)

(declare-fun b_free!71789 () Bool)

(declare-fun b_next!72493 () Bool)

(assert (=> b!2475164 (= b_free!71789 (not b_next!72493))))

(declare-fun tp!791467 () Bool)

(declare-fun b_and!187965 () Bool)

(assert (=> b!2475164 (= tp!791467 b_and!187965)))

(declare-fun b_free!71791 () Bool)

(declare-fun b_next!72495 () Bool)

(assert (=> b!2475164 (= b_free!71791 (not b_next!72495))))

(declare-fun tp!791476 () Bool)

(declare-fun b_and!187967 () Bool)

(assert (=> b!2475164 (= tp!791476 b_and!187967)))

(declare-fun b!2475148 () Bool)

(declare-fun b_free!71793 () Bool)

(declare-fun b_next!72497 () Bool)

(assert (=> b!2475148 (= b_free!71793 (not b_next!72497))))

(declare-fun tp!791477 () Bool)

(declare-fun b_and!187969 () Bool)

(assert (=> b!2475148 (= tp!791477 b_and!187969)))

(declare-fun b_free!71795 () Bool)

(declare-fun b_next!72499 () Bool)

(assert (=> b!2475148 (= b_free!71795 (not b_next!72499))))

(declare-fun tp!791475 () Bool)

(declare-fun b_and!187971 () Bool)

(assert (=> b!2475148 (= tp!791475 b_and!187971)))

(declare-fun b!2475135 () Bool)

(declare-fun res!1047948 () Bool)

(declare-fun e!1570256 () Bool)

(assert (=> b!2475135 (=> (not res!1047948) (not e!1570256))))

(declare-fun i!1803 () Int)

(declare-datatypes ((C!14748 0))(
  ( (C!14749 (val!8634 Int)) )
))
(declare-datatypes ((List!28996 0))(
  ( (Nil!28896) (Cons!28896 (h!34297 C!14748) (t!210549 List!28996)) )
))
(declare-datatypes ((IArray!18459 0))(
  ( (IArray!18460 (innerList!9287 List!28996)) )
))
(declare-datatypes ((Conc!9227 0))(
  ( (Node!9227 (left!22159 Conc!9227) (right!22489 Conc!9227) (csize!18684 Int) (cheight!9438 Int)) (Leaf!13788 (xs!12211 IArray!18459) (csize!18685 Int)) (Empty!9227) )
))
(declare-datatypes ((BalanceConc!18068 0))(
  ( (BalanceConc!18069 (c!393988 Conc!9227)) )
))
(declare-datatypes ((List!28997 0))(
  ( (Nil!28897) (Cons!28897 (h!34298 (_ BitVec 16)) (t!210550 List!28997)) )
))
(declare-datatypes ((TokenValue!4693 0))(
  ( (FloatLiteralValue!9386 (text!33296 List!28997)) (TokenValueExt!4692 (__x!18641 Int)) (Broken!23465 (value!143829 List!28997)) (Object!4792) (End!4693) (Def!4693) (Underscore!4693) (Match!4693) (Else!4693) (Error!4693) (Case!4693) (If!4693) (Extends!4693) (Abstract!4693) (Class!4693) (Val!4693) (DelimiterValue!9386 (del!4753 List!28997)) (KeywordValue!4699 (value!143830 List!28997)) (CommentValue!9386 (value!143831 List!28997)) (WhitespaceValue!9386 (value!143832 List!28997)) (IndentationValue!4693 (value!143833 List!28997)) (String!31760) (Int32!4693) (Broken!23466 (value!143834 List!28997)) (Boolean!4694) (Unit!42269) (OperatorValue!4696 (op!4753 List!28997)) (IdentifierValue!9386 (value!143835 List!28997)) (IdentifierValue!9387 (value!143836 List!28997)) (WhitespaceValue!9387 (value!143837 List!28997)) (True!9386) (False!9386) (Broken!23467 (value!143838 List!28997)) (Broken!23468 (value!143839 List!28997)) (True!9387) (RightBrace!4693) (RightBracket!4693) (Colon!4693) (Null!4693) (Comma!4693) (LeftBracket!4693) (False!9387) (LeftBrace!4693) (ImaginaryLiteralValue!4693 (text!33297 List!28997)) (StringLiteralValue!14079 (value!143840 List!28997)) (EOFValue!4693 (value!143841 List!28997)) (IdentValue!4693 (value!143842 List!28997)) (DelimiterValue!9387 (value!143843 List!28997)) (DedentValue!4693 (value!143844 List!28997)) (NewLineValue!4693 (value!143845 List!28997)) (IntegerValue!14079 (value!143846 (_ BitVec 32)) (text!33298 List!28997)) (IntegerValue!14080 (value!143847 Int) (text!33299 List!28997)) (Times!4693) (Or!4693) (Equal!4693) (Minus!4693) (Broken!23469 (value!143848 List!28997)) (And!4693) (Div!4693) (LessEqual!4693) (Mod!4693) (Concat!11988) (Not!4693) (Plus!4693) (SpaceValue!4693 (value!143849 List!28997)) (IntegerValue!14081 (value!143850 Int) (text!33300 List!28997)) (StringLiteralValue!14080 (text!33301 List!28997)) (FloatLiteralValue!9387 (text!33302 List!28997)) (BytesLiteralValue!4693 (value!143851 List!28997)) (CommentValue!9387 (value!143852 List!28997)) (StringLiteralValue!14081 (value!143853 List!28997)) (ErrorTokenValue!4693 (msg!4754 List!28997)) )
))
(declare-datatypes ((Regex!7295 0))(
  ( (ElementMatch!7295 (c!393989 C!14748)) (Concat!11989 (regOne!15102 Regex!7295) (regTwo!15102 Regex!7295)) (EmptyExpr!7295) (Star!7295 (reg!7624 Regex!7295)) (EmptyLang!7295) (Union!7295 (regOne!15103 Regex!7295) (regTwo!15103 Regex!7295)) )
))
(declare-datatypes ((String!31761 0))(
  ( (String!31762 (value!143854 String)) )
))
(declare-datatypes ((TokenValueInjection!8886 0))(
  ( (TokenValueInjection!8887 (toValue!6371 Int) (toChars!6230 Int)) )
))
(declare-datatypes ((Rule!8814 0))(
  ( (Rule!8815 (regex!4507 Regex!7295) (tag!4997 String!31761) (isSeparator!4507 Bool) (transformation!4507 TokenValueInjection!8886)) )
))
(declare-datatypes ((Token!8484 0))(
  ( (Token!8485 (value!143855 TokenValue!4693) (rule!6865 Rule!8814) (size!22487 Int) (originalCharacters!5273 List!28996)) )
))
(declare-datatypes ((List!28998 0))(
  ( (Nil!28898) (Cons!28898 (h!34299 Token!8484) (t!210551 List!28998)) )
))
(declare-fun l!6611 () List!28998)

(declare-fun size!22488 (List!28998) Int)

(assert (=> b!2475135 (= res!1047948 (< (+ 1 i!1803) (size!22488 l!6611)))))

(declare-fun b!2475136 () Bool)

(declare-fun res!1047947 () Bool)

(assert (=> b!2475136 (=> (not res!1047947) (not e!1570256))))

(declare-datatypes ((LexerInterface!4104 0))(
  ( (LexerInterfaceExt!4101 (__x!18642 Int)) (Lexer!4102) )
))
(declare-fun thiss!27932 () LexerInterface!4104)

(declare-datatypes ((List!28999 0))(
  ( (Nil!28899) (Cons!28899 (h!34300 Rule!8814) (t!210552 List!28999)) )
))
(declare-fun rules!4472 () List!28999)

(declare-fun tokensListTwoByTwoPredicateSeparableList!643 (LexerInterface!4104 List!28998 List!28999) Bool)

(assert (=> b!2475136 (= res!1047947 (tokensListTwoByTwoPredicateSeparableList!643 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2475137 () Bool)

(declare-fun res!1047952 () Bool)

(assert (=> b!2475137 (=> (not res!1047952) (not e!1570256))))

(declare-fun rulesInvariant!3604 (LexerInterface!4104 List!28999) Bool)

(assert (=> b!2475137 (= res!1047952 (rulesInvariant!3604 thiss!27932 rules!4472))))

(declare-fun e!1570243 () Bool)

(assert (=> b!2475138 (= e!1570243 (and tp!791465 tp!791469))))

(declare-fun b!2475139 () Bool)

(declare-fun tp!791472 () Bool)

(declare-fun e!1570253 () Bool)

(declare-fun e!1570255 () Bool)

(declare-fun t2!67 () Token!8484)

(declare-fun inv!38987 (String!31761) Bool)

(declare-fun inv!38990 (TokenValueInjection!8886) Bool)

(assert (=> b!2475139 (= e!1570255 (and tp!791472 (inv!38987 (tag!4997 (rule!6865 t2!67))) (inv!38990 (transformation!4507 (rule!6865 t2!67))) e!1570253))))

(declare-fun res!1047940 () Bool)

(assert (=> start!241386 (=> (not res!1047940) (not e!1570256))))

(get-info :version)

(assert (=> start!241386 (= res!1047940 ((_ is Lexer!4102) thiss!27932))))

(assert (=> start!241386 e!1570256))

(assert (=> start!241386 true))

(declare-fun e!1570237 () Bool)

(assert (=> start!241386 e!1570237))

(declare-fun e!1570245 () Bool)

(declare-fun inv!38991 (Token!8484) Bool)

(assert (=> start!241386 (and (inv!38991 t2!67) e!1570245)))

(declare-fun e!1570235 () Bool)

(assert (=> start!241386 e!1570235))

(declare-fun t1!67 () Token!8484)

(declare-fun e!1570248 () Bool)

(assert (=> start!241386 (and (inv!38991 t1!67) e!1570248)))

(declare-fun b!2475140 () Bool)

(declare-fun e!1570247 () Bool)

(declare-fun tp!791479 () Bool)

(declare-fun e!1570236 () Bool)

(assert (=> b!2475140 (= e!1570247 (and tp!791479 (inv!38987 (tag!4997 (rule!6865 t1!67))) (inv!38990 (transformation!4507 (rule!6865 t1!67))) e!1570236))))

(declare-fun b!2475141 () Bool)

(declare-fun res!1047945 () Bool)

(assert (=> b!2475141 (=> (not res!1047945) (not e!1570256))))

(declare-fun isEmpty!16770 (List!28999) Bool)

(assert (=> b!2475141 (= res!1047945 (not (isEmpty!16770 rules!4472)))))

(declare-fun b!2475142 () Bool)

(declare-fun res!1047942 () Bool)

(assert (=> b!2475142 (=> (not res!1047942) (not e!1570256))))

(declare-fun apply!6820 (List!28998 Int) Token!8484)

(assert (=> b!2475142 (= res!1047942 (= (apply!6820 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun tp!791471 () Bool)

(declare-fun b!2475143 () Bool)

(declare-fun e!1570240 () Bool)

(declare-fun e!1570246 () Bool)

(declare-fun inv!21 (TokenValue!4693) Bool)

(assert (=> b!2475143 (= e!1570246 (and (inv!21 (value!143855 (h!34299 l!6611))) e!1570240 tp!791471))))

(declare-fun b!2475144 () Bool)

(declare-fun res!1047939 () Bool)

(assert (=> b!2475144 (=> (not res!1047939) (not e!1570256))))

(assert (=> b!2475144 (= res!1047939 (= (apply!6820 l!6611 i!1803) t1!67))))

(declare-fun b!2475145 () Bool)

(declare-fun res!1047950 () Bool)

(declare-fun e!1570242 () Bool)

(assert (=> b!2475145 (=> (not res!1047950) (not e!1570242))))

(declare-fun lt!883944 () List!28998)

(assert (=> b!2475145 (= res!1047950 (= (apply!6820 lt!883944 (- i!1803 1)) t1!67))))

(declare-fun b!2475146 () Bool)

(declare-fun e!1570241 () Bool)

(assert (=> b!2475146 (= e!1570256 e!1570241)))

(declare-fun res!1047946 () Bool)

(assert (=> b!2475146 (=> (not res!1047946) (not e!1570241))))

(declare-fun rulesProduceEachTokenIndividuallyList!1420 (LexerInterface!4104 List!28999 List!28998) Bool)

(assert (=> b!2475146 (= res!1047946 (rulesProduceEachTokenIndividuallyList!1420 thiss!27932 rules!4472 lt!883944))))

(declare-fun tail!3940 (List!28998) List!28998)

(assert (=> b!2475146 (= lt!883944 (tail!3940 l!6611))))

(declare-fun e!1570251 () Bool)

(assert (=> b!2475147 (= e!1570251 (and tp!791478 tp!791474))))

(assert (=> b!2475148 (= e!1570253 (and tp!791477 tp!791475))))

(declare-fun b!2475149 () Bool)

(assert (=> b!2475149 (= e!1570242 (not true))))

(declare-datatypes ((Unit!42270 0))(
  ( (Unit!42271) )
))
(declare-fun lt!883946 () Unit!42270)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!693 (LexerInterface!4104 List!28999 List!28998 Token!8484) Unit!42270)

(assert (=> b!2475149 (= lt!883946 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!693 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun e!1570238 () Bool)

(assert (=> b!2475149 e!1570238))

(declare-fun res!1047953 () Bool)

(assert (=> b!2475149 (=> (not res!1047953) (not e!1570238))))

(declare-fun rulesProduceIndividualToken!1832 (LexerInterface!4104 List!28999 Token!8484) Bool)

(assert (=> b!2475149 (= res!1047953 (rulesProduceIndividualToken!1832 thiss!27932 rules!4472 t2!67))))

(declare-fun lt!883945 () Unit!42270)

(assert (=> b!2475149 (= lt!883945 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!693 thiss!27932 rules!4472 lt!883944 t2!67))))

(assert (=> b!2475149 (rulesProduceIndividualToken!1832 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!883943 () Unit!42270)

(assert (=> b!2475149 (= lt!883943 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!693 thiss!27932 rules!4472 lt!883944 t1!67))))

(declare-fun lt!883947 () Unit!42270)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!14 (LexerInterface!4104 List!28998 List!28999 Token!8484 Token!8484 Int) Unit!42270)

(assert (=> b!2475149 (= lt!883947 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!14 thiss!27932 lt!883944 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun b!2475150 () Bool)

(declare-fun separableTokensPredicate!879 (LexerInterface!4104 Token!8484 Token!8484 List!28999) Bool)

(assert (=> b!2475150 (= e!1570238 (separableTokensPredicate!879 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2475151 () Bool)

(declare-fun res!1047937 () Bool)

(assert (=> b!2475151 (=> (not res!1047937) (not e!1570241))))

(assert (=> b!2475151 (= res!1047937 (>= (- i!1803 1) 0))))

(declare-fun b!2475152 () Bool)

(declare-fun res!1047938 () Bool)

(assert (=> b!2475152 (=> (not res!1047938) (not e!1570242))))

(declare-fun lt!883948 () Int)

(assert (=> b!2475152 (= res!1047938 (= (apply!6820 lt!883944 lt!883948) t2!67))))

(declare-fun b!2475153 () Bool)

(declare-fun res!1047951 () Bool)

(assert (=> b!2475153 (=> (not res!1047951) (not e!1570256))))

(assert (=> b!2475153 (= res!1047951 (rulesProduceEachTokenIndividuallyList!1420 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2475154 () Bool)

(declare-fun e!1570252 () Bool)

(declare-fun tp!791468 () Bool)

(assert (=> b!2475154 (= e!1570237 (and e!1570252 tp!791468))))

(declare-fun b!2475155 () Bool)

(assert (=> b!2475155 (= e!1570241 e!1570242)))

(declare-fun res!1047941 () Bool)

(assert (=> b!2475155 (=> (not res!1047941) (not e!1570242))))

(assert (=> b!2475155 (= res!1047941 (< lt!883948 (size!22488 lt!883944)))))

(assert (=> b!2475155 (= lt!883948 (+ 1 (- i!1803 1)))))

(declare-fun tp!791470 () Bool)

(declare-fun b!2475156 () Bool)

(assert (=> b!2475156 (= e!1570248 (and (inv!21 (value!143855 t1!67)) e!1570247 tp!791470))))

(declare-fun b!2475157 () Bool)

(declare-fun tp!791481 () Bool)

(assert (=> b!2475157 (= e!1570235 (and (inv!38991 (h!34299 l!6611)) e!1570246 tp!791481))))

(declare-fun b!2475158 () Bool)

(declare-fun res!1047949 () Bool)

(assert (=> b!2475158 (=> (not res!1047949) (not e!1570256))))

(assert (=> b!2475158 (= res!1047949 (>= i!1803 0))))

(declare-fun b!2475159 () Bool)

(declare-fun res!1047944 () Bool)

(assert (=> b!2475159 (=> (not res!1047944) (not e!1570241))))

(assert (=> b!2475159 (= res!1047944 (tokensListTwoByTwoPredicateSeparableList!643 thiss!27932 lt!883944 rules!4472))))

(declare-fun tp!791473 () Bool)

(declare-fun b!2475160 () Bool)

(assert (=> b!2475160 (= e!1570245 (and (inv!21 (value!143855 t2!67)) e!1570255 tp!791473))))

(declare-fun b!2475161 () Bool)

(declare-fun tp!791466 () Bool)

(assert (=> b!2475161 (= e!1570252 (and tp!791466 (inv!38987 (tag!4997 (h!34300 rules!4472))) (inv!38990 (transformation!4507 (h!34300 rules!4472))) e!1570251))))

(declare-fun tp!791480 () Bool)

(declare-fun b!2475162 () Bool)

(assert (=> b!2475162 (= e!1570240 (and tp!791480 (inv!38987 (tag!4997 (rule!6865 (h!34299 l!6611)))) (inv!38990 (transformation!4507 (rule!6865 (h!34299 l!6611)))) e!1570243))))

(declare-fun b!2475163 () Bool)

(declare-fun res!1047943 () Bool)

(assert (=> b!2475163 (=> (not res!1047943) (not e!1570256))))

(assert (=> b!2475163 (= res!1047943 (not (= i!1803 0)))))

(assert (=> b!2475164 (= e!1570236 (and tp!791467 tp!791476))))

(assert (= (and start!241386 res!1047940) b!2475141))

(assert (= (and b!2475141 res!1047945) b!2475137))

(assert (= (and b!2475137 res!1047952) b!2475153))

(assert (= (and b!2475153 res!1047951) b!2475136))

(assert (= (and b!2475136 res!1047947) b!2475158))

(assert (= (and b!2475158 res!1047949) b!2475135))

(assert (= (and b!2475135 res!1047948) b!2475144))

(assert (= (and b!2475144 res!1047939) b!2475142))

(assert (= (and b!2475142 res!1047942) b!2475163))

(assert (= (and b!2475163 res!1047943) b!2475146))

(assert (= (and b!2475146 res!1047946) b!2475159))

(assert (= (and b!2475159 res!1047944) b!2475151))

(assert (= (and b!2475151 res!1047937) b!2475155))

(assert (= (and b!2475155 res!1047941) b!2475145))

(assert (= (and b!2475145 res!1047950) b!2475152))

(assert (= (and b!2475152 res!1047938) b!2475149))

(assert (= (and b!2475149 res!1047953) b!2475150))

(assert (= b!2475161 b!2475147))

(assert (= b!2475154 b!2475161))

(assert (= (and start!241386 ((_ is Cons!28899) rules!4472)) b!2475154))

(assert (= b!2475139 b!2475148))

(assert (= b!2475160 b!2475139))

(assert (= start!241386 b!2475160))

(assert (= b!2475162 b!2475138))

(assert (= b!2475143 b!2475162))

(assert (= b!2475157 b!2475143))

(assert (= (and start!241386 ((_ is Cons!28898) l!6611)) b!2475157))

(assert (= b!2475140 b!2475164))

(assert (= b!2475156 b!2475140))

(assert (= start!241386 b!2475156))

(declare-fun m!2843343 () Bool)

(assert (=> b!2475161 m!2843343))

(declare-fun m!2843345 () Bool)

(assert (=> b!2475161 m!2843345))

(declare-fun m!2843347 () Bool)

(assert (=> b!2475139 m!2843347))

(declare-fun m!2843349 () Bool)

(assert (=> b!2475139 m!2843349))

(declare-fun m!2843351 () Bool)

(assert (=> b!2475160 m!2843351))

(declare-fun m!2843353 () Bool)

(assert (=> b!2475145 m!2843353))

(declare-fun m!2843355 () Bool)

(assert (=> b!2475149 m!2843355))

(declare-fun m!2843357 () Bool)

(assert (=> b!2475149 m!2843357))

(declare-fun m!2843359 () Bool)

(assert (=> b!2475149 m!2843359))

(declare-fun m!2843361 () Bool)

(assert (=> b!2475149 m!2843361))

(declare-fun m!2843363 () Bool)

(assert (=> b!2475149 m!2843363))

(declare-fun m!2843365 () Bool)

(assert (=> b!2475149 m!2843365))

(declare-fun m!2843367 () Bool)

(assert (=> b!2475159 m!2843367))

(declare-fun m!2843369 () Bool)

(assert (=> b!2475155 m!2843369))

(declare-fun m!2843371 () Bool)

(assert (=> b!2475136 m!2843371))

(declare-fun m!2843373 () Bool)

(assert (=> b!2475146 m!2843373))

(declare-fun m!2843375 () Bool)

(assert (=> b!2475146 m!2843375))

(declare-fun m!2843377 () Bool)

(assert (=> b!2475153 m!2843377))

(declare-fun m!2843379 () Bool)

(assert (=> b!2475142 m!2843379))

(declare-fun m!2843381 () Bool)

(assert (=> b!2475150 m!2843381))

(declare-fun m!2843383 () Bool)

(assert (=> b!2475144 m!2843383))

(declare-fun m!2843385 () Bool)

(assert (=> b!2475135 m!2843385))

(declare-fun m!2843387 () Bool)

(assert (=> start!241386 m!2843387))

(declare-fun m!2843389 () Bool)

(assert (=> start!241386 m!2843389))

(declare-fun m!2843391 () Bool)

(assert (=> b!2475156 m!2843391))

(declare-fun m!2843393 () Bool)

(assert (=> b!2475137 m!2843393))

(declare-fun m!2843395 () Bool)

(assert (=> b!2475143 m!2843395))

(declare-fun m!2843397 () Bool)

(assert (=> b!2475162 m!2843397))

(declare-fun m!2843399 () Bool)

(assert (=> b!2475162 m!2843399))

(declare-fun m!2843401 () Bool)

(assert (=> b!2475140 m!2843401))

(declare-fun m!2843403 () Bool)

(assert (=> b!2475140 m!2843403))

(declare-fun m!2843405 () Bool)

(assert (=> b!2475157 m!2843405))

(declare-fun m!2843407 () Bool)

(assert (=> b!2475152 m!2843407))

(declare-fun m!2843409 () Bool)

(assert (=> b!2475141 m!2843409))

(check-sat b_and!187959 b_and!187963 b_and!187957 (not b_next!72485) (not b!2475140) b_and!187967 (not b_next!72499) (not b!2475139) b_and!187969 (not b!2475143) b_and!187971 (not b!2475149) (not b!2475159) (not b!2475160) (not b!2475135) (not b_next!72493) (not b!2475157) (not b!2475156) (not b!2475141) b_and!187965 (not b_next!72491) (not b!2475144) (not b!2475145) (not b_next!72489) (not b!2475154) (not b!2475150) (not start!241386) (not b!2475137) (not b!2475136) (not b!2475142) (not b!2475153) (not b!2475155) (not b_next!72487) (not b_next!72495) b_and!187961 (not b!2475161) (not b!2475146) (not b!2475162) (not b_next!72497) (not b!2475152))
(check-sat (not b_next!72493) b_and!187959 b_and!187963 b_and!187957 (not b_next!72485) b_and!187965 (not b_next!72491) (not b_next!72489) b_and!187967 (not b_next!72499) b_and!187969 b_and!187971 b_and!187961 (not b_next!72497) (not b_next!72487) (not b_next!72495))
