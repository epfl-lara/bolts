; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299278 () Bool)

(assert start!299278)

(declare-fun b!3191428 () Bool)

(declare-fun b_free!84481 () Bool)

(declare-fun b_next!85185 () Bool)

(assert (=> b!3191428 (= b_free!84481 (not b_next!85185))))

(declare-fun tp!1008931 () Bool)

(declare-fun b_and!211491 () Bool)

(assert (=> b!3191428 (= tp!1008931 b_and!211491)))

(declare-fun b_free!84483 () Bool)

(declare-fun b_next!85187 () Bool)

(assert (=> b!3191428 (= b_free!84483 (not b_next!85187))))

(declare-fun tp!1008934 () Bool)

(declare-fun b_and!211493 () Bool)

(assert (=> b!3191428 (= tp!1008934 b_and!211493)))

(declare-fun b!3191426 () Bool)

(declare-fun b_free!84485 () Bool)

(declare-fun b_next!85189 () Bool)

(assert (=> b!3191426 (= b_free!84485 (not b_next!85189))))

(declare-fun tp!1008929 () Bool)

(declare-fun b_and!211495 () Bool)

(assert (=> b!3191426 (= tp!1008929 b_and!211495)))

(declare-fun b_free!84487 () Bool)

(declare-fun b_next!85191 () Bool)

(assert (=> b!3191426 (= b_free!84487 (not b_next!85191))))

(declare-fun tp!1008938 () Bool)

(declare-fun b_and!211497 () Bool)

(assert (=> b!3191426 (= tp!1008938 b_and!211497)))

(declare-fun b!3191420 () Bool)

(declare-fun b_free!84489 () Bool)

(declare-fun b_next!85193 () Bool)

(assert (=> b!3191420 (= b_free!84489 (not b_next!85193))))

(declare-fun tp!1008935 () Bool)

(declare-fun b_and!211499 () Bool)

(assert (=> b!3191420 (= tp!1008935 b_and!211499)))

(declare-fun b_free!84491 () Bool)

(declare-fun b_next!85195 () Bool)

(assert (=> b!3191420 (= b_free!84491 (not b_next!85195))))

(declare-fun tp!1008930 () Bool)

(declare-fun b_and!211501 () Bool)

(assert (=> b!3191420 (= tp!1008930 b_and!211501)))

(declare-fun res!1298167 () Bool)

(declare-fun e!1989187 () Bool)

(assert (=> start!299278 (=> (not res!1298167) (not e!1989187))))

(declare-datatypes ((LexerInterface!4751 0))(
  ( (LexerInterfaceExt!4748 (__x!23001 Int)) (Lexer!4749) )
))
(declare-fun thiss!18206 () LexerInterface!4751)

(get-info :version)

(assert (=> start!299278 (= res!1298167 ((_ is Lexer!4749) thiss!18206))))

(assert (=> start!299278 e!1989187))

(assert (=> start!299278 true))

(declare-fun e!1989185 () Bool)

(assert (=> start!299278 e!1989185))

(declare-fun e!1989190 () Bool)

(assert (=> start!299278 e!1989190))

(declare-datatypes ((C!20028 0))(
  ( (C!20029 (val!12062 Int)) )
))
(declare-datatypes ((Regex!9921 0))(
  ( (ElementMatch!9921 (c!535860 C!20028)) (Concat!15313 (regOne!20354 Regex!9921) (regTwo!20354 Regex!9921)) (EmptyExpr!9921) (Star!9921 (reg!10250 Regex!9921)) (EmptyLang!9921) (Union!9921 (regOne!20355 Regex!9921) (regTwo!20355 Regex!9921)) )
))
(declare-datatypes ((List!36040 0))(
  ( (Nil!35916) (Cons!35916 (h!41336 (_ BitVec 16)) (t!236203 List!36040)) )
))
(declare-datatypes ((TokenValue!5392 0))(
  ( (FloatLiteralValue!10784 (text!38189 List!36040)) (TokenValueExt!5391 (__x!23002 Int)) (Broken!26960 (value!167551 List!36040)) (Object!5515) (End!5392) (Def!5392) (Underscore!5392) (Match!5392) (Else!5392) (Error!5392) (Case!5392) (If!5392) (Extends!5392) (Abstract!5392) (Class!5392) (Val!5392) (DelimiterValue!10784 (del!5452 List!36040)) (KeywordValue!5398 (value!167552 List!36040)) (CommentValue!10784 (value!167553 List!36040)) (WhitespaceValue!10784 (value!167554 List!36040)) (IndentationValue!5392 (value!167555 List!36040)) (String!40293) (Int32!5392) (Broken!26961 (value!167556 List!36040)) (Boolean!5393) (Unit!50355) (OperatorValue!5395 (op!5452 List!36040)) (IdentifierValue!10784 (value!167557 List!36040)) (IdentifierValue!10785 (value!167558 List!36040)) (WhitespaceValue!10785 (value!167559 List!36040)) (True!10784) (False!10784) (Broken!26962 (value!167560 List!36040)) (Broken!26963 (value!167561 List!36040)) (True!10785) (RightBrace!5392) (RightBracket!5392) (Colon!5392) (Null!5392) (Comma!5392) (LeftBracket!5392) (False!10785) (LeftBrace!5392) (ImaginaryLiteralValue!5392 (text!38190 List!36040)) (StringLiteralValue!16176 (value!167562 List!36040)) (EOFValue!5392 (value!167563 List!36040)) (IdentValue!5392 (value!167564 List!36040)) (DelimiterValue!10785 (value!167565 List!36040)) (DedentValue!5392 (value!167566 List!36040)) (NewLineValue!5392 (value!167567 List!36040)) (IntegerValue!16176 (value!167568 (_ BitVec 32)) (text!38191 List!36040)) (IntegerValue!16177 (value!167569 Int) (text!38192 List!36040)) (Times!5392) (Or!5392) (Equal!5392) (Minus!5392) (Broken!26964 (value!167570 List!36040)) (And!5392) (Div!5392) (LessEqual!5392) (Mod!5392) (Concat!15314) (Not!5392) (Plus!5392) (SpaceValue!5392 (value!167571 List!36040)) (IntegerValue!16178 (value!167572 Int) (text!38193 List!36040)) (StringLiteralValue!16177 (text!38194 List!36040)) (FloatLiteralValue!10785 (text!38195 List!36040)) (BytesLiteralValue!5392 (value!167573 List!36040)) (CommentValue!10785 (value!167574 List!36040)) (StringLiteralValue!16178 (value!167575 List!36040)) (ErrorTokenValue!5392 (msg!5453 List!36040)) )
))
(declare-datatypes ((List!36041 0))(
  ( (Nil!35917) (Cons!35917 (h!41337 C!20028) (t!236204 List!36041)) )
))
(declare-datatypes ((IArray!21403 0))(
  ( (IArray!21404 (innerList!10759 List!36041)) )
))
(declare-datatypes ((Conc!10699 0))(
  ( (Node!10699 (left!27922 Conc!10699) (right!28252 Conc!10699) (csize!21628 Int) (cheight!10910 Int)) (Leaf!16891 (xs!13817 IArray!21403) (csize!21629 Int)) (Empty!10699) )
))
(declare-datatypes ((BalanceConc!21012 0))(
  ( (BalanceConc!21013 (c!535861 Conc!10699)) )
))
(declare-datatypes ((String!40294 0))(
  ( (String!40295 (value!167576 String)) )
))
(declare-datatypes ((TokenValueInjection!10212 0))(
  ( (TokenValueInjection!10213 (toValue!7226 Int) (toChars!7085 Int)) )
))
(declare-datatypes ((Rule!10124 0))(
  ( (Rule!10125 (regex!5162 Regex!9921) (tag!5680 String!40294) (isSeparator!5162 Bool) (transformation!5162 TokenValueInjection!10212)) )
))
(declare-datatypes ((Token!9690 0))(
  ( (Token!9691 (value!167577 TokenValue!5392) (rule!7594 Rule!10124) (size!27079 Int) (originalCharacters!5876 List!36041)) )
))
(declare-fun separatorToken!241 () Token!9690)

(declare-fun e!1989192 () Bool)

(declare-fun inv!48764 (Token!9690) Bool)

(assert (=> start!299278 (and (inv!48764 separatorToken!241) e!1989192)))

(declare-fun b!3191418 () Bool)

(assert (=> b!3191418 (= e!1989187 false)))

(declare-datatypes ((List!36042 0))(
  ( (Nil!35918) (Cons!35918 (h!41338 Token!9690) (t!236205 List!36042)) )
))
(declare-datatypes ((IArray!21405 0))(
  ( (IArray!21406 (innerList!10760 List!36042)) )
))
(declare-datatypes ((Conc!10700 0))(
  ( (Node!10700 (left!27923 Conc!10700) (right!28253 Conc!10700) (csize!21630 Int) (cheight!10911 Int)) (Leaf!16892 (xs!13818 IArray!21405) (csize!21631 Int)) (Empty!10700) )
))
(declare-datatypes ((BalanceConc!21014 0))(
  ( (BalanceConc!21015 (c!535862 Conc!10700)) )
))
(declare-fun lt!1075070 () BalanceConc!21014)

(declare-fun tokens!494 () List!36042)

(declare-fun singletonSeq!2258 (Token!9690) BalanceConc!21014)

(assert (=> b!3191418 (= lt!1075070 (singletonSeq!2258 (h!41338 tokens!494)))))

(declare-fun b!3191419 () Bool)

(declare-fun res!1298170 () Bool)

(assert (=> b!3191419 (=> (not res!1298170) (not e!1989187))))

(assert (=> b!3191419 (= res!1298170 (and (not ((_ is Nil!35918) tokens!494)) (not ((_ is Nil!35918) (t!236205 tokens!494)))))))

(declare-fun e!1989188 () Bool)

(assert (=> b!3191420 (= e!1989188 (and tp!1008935 tp!1008930))))

(declare-fun b!3191421 () Bool)

(declare-fun res!1298169 () Bool)

(assert (=> b!3191421 (=> (not res!1298169) (not e!1989187))))

(declare-datatypes ((List!36043 0))(
  ( (Nil!35919) (Cons!35919 (h!41339 Rule!10124) (t!236206 List!36043)) )
))
(declare-fun rules!2135 () List!36043)

(declare-fun isEmpty!20045 (List!36043) Bool)

(assert (=> b!3191421 (= res!1298169 (not (isEmpty!20045 rules!2135)))))

(declare-fun e!1989195 () Bool)

(declare-fun b!3191422 () Bool)

(declare-fun e!1989196 () Bool)

(declare-fun tp!1008926 () Bool)

(declare-fun inv!21 (TokenValue!5392) Bool)

(assert (=> b!3191422 (= e!1989195 (and (inv!21 (value!167577 (h!41338 tokens!494))) e!1989196 tp!1008926))))

(declare-fun b!3191423 () Bool)

(declare-fun tp!1008933 () Bool)

(declare-fun e!1989189 () Bool)

(assert (=> b!3191423 (= e!1989192 (and (inv!21 (value!167577 separatorToken!241)) e!1989189 tp!1008933))))

(declare-fun b!3191424 () Bool)

(declare-fun e!1989198 () Bool)

(declare-fun tp!1008937 () Bool)

(assert (=> b!3191424 (= e!1989185 (and e!1989198 tp!1008937))))

(declare-fun tp!1008928 () Bool)

(declare-fun b!3191425 () Bool)

(declare-fun inv!48761 (String!40294) Bool)

(declare-fun inv!48765 (TokenValueInjection!10212) Bool)

(assert (=> b!3191425 (= e!1989198 (and tp!1008928 (inv!48761 (tag!5680 (h!41339 rules!2135))) (inv!48765 (transformation!5162 (h!41339 rules!2135))) e!1989188))))

(declare-fun e!1989193 () Bool)

(assert (=> b!3191426 (= e!1989193 (and tp!1008929 tp!1008938))))

(declare-fun b!3191427 () Bool)

(declare-fun res!1298171 () Bool)

(assert (=> b!3191427 (=> (not res!1298171) (not e!1989187))))

(declare-fun sepAndNonSepRulesDisjointChars!1356 (List!36043 List!36043) Bool)

(assert (=> b!3191427 (= res!1298171 (sepAndNonSepRulesDisjointChars!1356 rules!2135 rules!2135))))

(declare-fun e!1989197 () Bool)

(assert (=> b!3191428 (= e!1989197 (and tp!1008931 tp!1008934))))

(declare-fun tp!1008932 () Bool)

(declare-fun b!3191429 () Bool)

(assert (=> b!3191429 (= e!1989190 (and (inv!48764 (h!41338 tokens!494)) e!1989195 tp!1008932))))

(declare-fun b!3191430 () Bool)

(declare-fun res!1298168 () Bool)

(assert (=> b!3191430 (=> (not res!1298168) (not e!1989187))))

(declare-fun rulesProduceIndividualToken!2243 (LexerInterface!4751 List!36043 Token!9690) Bool)

(assert (=> b!3191430 (= res!1298168 (rulesProduceIndividualToken!2243 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3191431 () Bool)

(declare-fun res!1298166 () Bool)

(assert (=> b!3191431 (=> (not res!1298166) (not e!1989187))))

(declare-fun rulesProduceEachTokenIndividually!1202 (LexerInterface!4751 List!36043 BalanceConc!21014) Bool)

(declare-fun seqFromList!3402 (List!36042) BalanceConc!21014)

(assert (=> b!3191431 (= res!1298166 (rulesProduceEachTokenIndividually!1202 thiss!18206 rules!2135 (seqFromList!3402 tokens!494)))))

(declare-fun b!3191432 () Bool)

(declare-fun res!1298165 () Bool)

(assert (=> b!3191432 (=> (not res!1298165) (not e!1989187))))

(declare-fun rulesInvariant!4148 (LexerInterface!4751 List!36043) Bool)

(assert (=> b!3191432 (= res!1298165 (rulesInvariant!4148 thiss!18206 rules!2135))))

(declare-fun b!3191433 () Bool)

(declare-fun tp!1008927 () Bool)

(assert (=> b!3191433 (= e!1989196 (and tp!1008927 (inv!48761 (tag!5680 (rule!7594 (h!41338 tokens!494)))) (inv!48765 (transformation!5162 (rule!7594 (h!41338 tokens!494)))) e!1989193))))

(declare-fun b!3191434 () Bool)

(declare-fun res!1298164 () Bool)

(assert (=> b!3191434 (=> (not res!1298164) (not e!1989187))))

(declare-fun lambda!116777 () Int)

(declare-fun forall!7294 (List!36042 Int) Bool)

(assert (=> b!3191434 (= res!1298164 (forall!7294 tokens!494 lambda!116777))))

(declare-fun b!3191435 () Bool)

(declare-fun res!1298163 () Bool)

(assert (=> b!3191435 (=> (not res!1298163) (not e!1989187))))

(assert (=> b!3191435 (= res!1298163 (isSeparator!5162 (rule!7594 separatorToken!241)))))

(declare-fun tp!1008936 () Bool)

(declare-fun b!3191436 () Bool)

(assert (=> b!3191436 (= e!1989189 (and tp!1008936 (inv!48761 (tag!5680 (rule!7594 separatorToken!241))) (inv!48765 (transformation!5162 (rule!7594 separatorToken!241))) e!1989197))))

(assert (= (and start!299278 res!1298167) b!3191421))

(assert (= (and b!3191421 res!1298169) b!3191432))

(assert (= (and b!3191432 res!1298165) b!3191431))

(assert (= (and b!3191431 res!1298166) b!3191430))

(assert (= (and b!3191430 res!1298168) b!3191435))

(assert (= (and b!3191435 res!1298163) b!3191434))

(assert (= (and b!3191434 res!1298164) b!3191427))

(assert (= (and b!3191427 res!1298171) b!3191419))

(assert (= (and b!3191419 res!1298170) b!3191418))

(assert (= b!3191425 b!3191420))

(assert (= b!3191424 b!3191425))

(assert (= (and start!299278 ((_ is Cons!35919) rules!2135)) b!3191424))

(assert (= b!3191433 b!3191426))

(assert (= b!3191422 b!3191433))

(assert (= b!3191429 b!3191422))

(assert (= (and start!299278 ((_ is Cons!35918) tokens!494)) b!3191429))

(assert (= b!3191436 b!3191428))

(assert (= b!3191423 b!3191436))

(assert (= start!299278 b!3191423))

(declare-fun m!3450775 () Bool)

(assert (=> b!3191429 m!3450775))

(declare-fun m!3450777 () Bool)

(assert (=> b!3191430 m!3450777))

(declare-fun m!3450779 () Bool)

(assert (=> b!3191422 m!3450779))

(declare-fun m!3450781 () Bool)

(assert (=> b!3191421 m!3450781))

(declare-fun m!3450783 () Bool)

(assert (=> b!3191425 m!3450783))

(declare-fun m!3450785 () Bool)

(assert (=> b!3191425 m!3450785))

(declare-fun m!3450787 () Bool)

(assert (=> start!299278 m!3450787))

(declare-fun m!3450789 () Bool)

(assert (=> b!3191433 m!3450789))

(declare-fun m!3450791 () Bool)

(assert (=> b!3191433 m!3450791))

(declare-fun m!3450793 () Bool)

(assert (=> b!3191431 m!3450793))

(assert (=> b!3191431 m!3450793))

(declare-fun m!3450795 () Bool)

(assert (=> b!3191431 m!3450795))

(declare-fun m!3450797 () Bool)

(assert (=> b!3191427 m!3450797))

(declare-fun m!3450799 () Bool)

(assert (=> b!3191423 m!3450799))

(declare-fun m!3450801 () Bool)

(assert (=> b!3191432 m!3450801))

(declare-fun m!3450803 () Bool)

(assert (=> b!3191418 m!3450803))

(declare-fun m!3450805 () Bool)

(assert (=> b!3191434 m!3450805))

(declare-fun m!3450807 () Bool)

(assert (=> b!3191436 m!3450807))

(declare-fun m!3450809 () Bool)

(assert (=> b!3191436 m!3450809))

(check-sat (not b!3191432) (not b!3191425) (not b_next!85191) b_and!211499 (not b!3191434) (not b_next!85193) (not b!3191418) (not b!3191421) b_and!211501 (not b!3191436) (not start!299278) (not b!3191422) (not b!3191430) b_and!211491 (not b_next!85195) (not b!3191429) b_and!211493 (not b_next!85185) (not b_next!85189) (not b!3191424) (not b!3191427) (not b!3191433) (not b!3191431) (not b!3191423) b_and!211495 (not b_next!85187) b_and!211497)
(check-sat b_and!211501 (not b_next!85189) (not b_next!85191) b_and!211499 (not b_next!85193) b_and!211495 b_and!211491 (not b_next!85195) b_and!211493 (not b_next!85185) (not b_next!85187) b_and!211497)
