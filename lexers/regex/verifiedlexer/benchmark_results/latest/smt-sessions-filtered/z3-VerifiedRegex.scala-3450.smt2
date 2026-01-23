; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!198152 () Bool)

(assert start!198152)

(declare-fun b!2014553 () Bool)

(declare-fun b_free!56273 () Bool)

(declare-fun b_next!56977 () Bool)

(assert (=> b!2014553 (= b_free!56273 (not b_next!56977))))

(declare-fun tp!600607 () Bool)

(declare-fun b_and!159493 () Bool)

(assert (=> b!2014553 (= tp!600607 b_and!159493)))

(declare-fun b_free!56275 () Bool)

(declare-fun b_next!56979 () Bool)

(assert (=> b!2014553 (= b_free!56275 (not b_next!56979))))

(declare-fun tp!600600 () Bool)

(declare-fun b_and!159495 () Bool)

(assert (=> b!2014553 (= tp!600600 b_and!159495)))

(declare-fun b!2014537 () Bool)

(declare-fun b_free!56277 () Bool)

(declare-fun b_next!56981 () Bool)

(assert (=> b!2014537 (= b_free!56277 (not b_next!56981))))

(declare-fun tp!600599 () Bool)

(declare-fun b_and!159497 () Bool)

(assert (=> b!2014537 (= tp!600599 b_and!159497)))

(declare-fun b_free!56279 () Bool)

(declare-fun b_next!56983 () Bool)

(assert (=> b!2014537 (= b_free!56279 (not b_next!56983))))

(declare-fun tp!600603 () Bool)

(declare-fun b_and!159499 () Bool)

(assert (=> b!2014537 (= tp!600603 b_and!159499)))

(declare-fun b!2014544 () Bool)

(declare-fun b_free!56281 () Bool)

(declare-fun b_next!56985 () Bool)

(assert (=> b!2014544 (= b_free!56281 (not b_next!56985))))

(declare-fun tp!600608 () Bool)

(declare-fun b_and!159501 () Bool)

(assert (=> b!2014544 (= tp!600608 b_and!159501)))

(declare-fun b_free!56283 () Bool)

(declare-fun b_next!56987 () Bool)

(assert (=> b!2014544 (= b_free!56283 (not b_next!56987))))

(declare-fun tp!600604 () Bool)

(declare-fun b_and!159503 () Bool)

(assert (=> b!2014544 (= tp!600604 b_and!159503)))

(declare-fun e!1273057 () Bool)

(assert (=> b!2014537 (= e!1273057 (and tp!600599 tp!600603))))

(declare-fun b!2014538 () Bool)

(declare-fun res!883674 () Bool)

(declare-fun e!1273063 () Bool)

(assert (=> b!2014538 (=> res!883674 e!1273063)))

(declare-datatypes ((LexerInterface!3589 0))(
  ( (LexerInterfaceExt!3586 (__x!13722 Int)) (Lexer!3587) )
))
(declare-fun thiss!23328 () LexerInterface!3589)

(declare-datatypes ((List!22216 0))(
  ( (Nil!22134) (Cons!22134 (h!27535 (_ BitVec 16)) (t!188157 List!22216)) )
))
(declare-datatypes ((TokenValue!4112 0))(
  ( (FloatLiteralValue!8224 (text!29229 List!22216)) (TokenValueExt!4111 (__x!13723 Int)) (Broken!20560 (value!124881 List!22216)) (Object!4193) (End!4112) (Def!4112) (Underscore!4112) (Match!4112) (Else!4112) (Error!4112) (Case!4112) (If!4112) (Extends!4112) (Abstract!4112) (Class!4112) (Val!4112) (DelimiterValue!8224 (del!4172 List!22216)) (KeywordValue!4118 (value!124882 List!22216)) (CommentValue!8224 (value!124883 List!22216)) (WhitespaceValue!8224 (value!124884 List!22216)) (IndentationValue!4112 (value!124885 List!22216)) (String!25677) (Int32!4112) (Broken!20561 (value!124886 List!22216)) (Boolean!4113) (Unit!36721) (OperatorValue!4115 (op!4172 List!22216)) (IdentifierValue!8224 (value!124887 List!22216)) (IdentifierValue!8225 (value!124888 List!22216)) (WhitespaceValue!8225 (value!124889 List!22216)) (True!8224) (False!8224) (Broken!20562 (value!124890 List!22216)) (Broken!20563 (value!124891 List!22216)) (True!8225) (RightBrace!4112) (RightBracket!4112) (Colon!4112) (Null!4112) (Comma!4112) (LeftBracket!4112) (False!8225) (LeftBrace!4112) (ImaginaryLiteralValue!4112 (text!29230 List!22216)) (StringLiteralValue!12336 (value!124892 List!22216)) (EOFValue!4112 (value!124893 List!22216)) (IdentValue!4112 (value!124894 List!22216)) (DelimiterValue!8225 (value!124895 List!22216)) (DedentValue!4112 (value!124896 List!22216)) (NewLineValue!4112 (value!124897 List!22216)) (IntegerValue!12336 (value!124898 (_ BitVec 32)) (text!29231 List!22216)) (IntegerValue!12337 (value!124899 Int) (text!29232 List!22216)) (Times!4112) (Or!4112) (Equal!4112) (Minus!4112) (Broken!20564 (value!124900 List!22216)) (And!4112) (Div!4112) (LessEqual!4112) (Mod!4112) (Concat!9513) (Not!4112) (Plus!4112) (SpaceValue!4112 (value!124901 List!22216)) (IntegerValue!12338 (value!124902 Int) (text!29233 List!22216)) (StringLiteralValue!12337 (text!29234 List!22216)) (FloatLiteralValue!8225 (text!29235 List!22216)) (BytesLiteralValue!4112 (value!124903 List!22216)) (CommentValue!8225 (value!124904 List!22216)) (StringLiteralValue!12338 (value!124905 List!22216)) (ErrorTokenValue!4112 (msg!4173 List!22216)) )
))
(declare-datatypes ((C!10948 0))(
  ( (C!10949 (val!6426 Int)) )
))
(declare-datatypes ((List!22217 0))(
  ( (Nil!22135) (Cons!22135 (h!27536 C!10948) (t!188158 List!22217)) )
))
(declare-datatypes ((IArray!14801 0))(
  ( (IArray!14802 (innerList!7458 List!22217)) )
))
(declare-datatypes ((Conc!7398 0))(
  ( (Node!7398 (left!17608 Conc!7398) (right!17938 Conc!7398) (csize!15026 Int) (cheight!7609 Int)) (Leaf!10849 (xs!10296 IArray!14801) (csize!15027 Int)) (Empty!7398) )
))
(declare-datatypes ((BalanceConc!14612 0))(
  ( (BalanceConc!14613 (c!325398 Conc!7398)) )
))
(declare-datatypes ((TokenValueInjection!7808 0))(
  ( (TokenValueInjection!7809 (toValue!5645 Int) (toChars!5504 Int)) )
))
(declare-datatypes ((Regex!5401 0))(
  ( (ElementMatch!5401 (c!325399 C!10948)) (Concat!9514 (regOne!11314 Regex!5401) (regTwo!11314 Regex!5401)) (EmptyExpr!5401) (Star!5401 (reg!5730 Regex!5401)) (EmptyLang!5401) (Union!5401 (regOne!11315 Regex!5401) (regTwo!11315 Regex!5401)) )
))
(declare-datatypes ((String!25678 0))(
  ( (String!25679 (value!124906 String)) )
))
(declare-datatypes ((Rule!7752 0))(
  ( (Rule!7753 (regex!3976 Regex!5401) (tag!4450 String!25678) (isSeparator!3976 Bool) (transformation!3976 TokenValueInjection!7808)) )
))
(declare-datatypes ((List!22218 0))(
  ( (Nil!22136) (Cons!22136 (h!27537 Rule!7752) (t!188159 List!22218)) )
))
(declare-fun rules!3198 () List!22218)

(declare-datatypes ((Token!7504 0))(
  ( (Token!7505 (value!124907 TokenValue!4112) (rule!6203 Rule!7752) (size!17290 Int) (originalCharacters!4783 List!22217)) )
))
(declare-datatypes ((List!22219 0))(
  ( (Nil!22137) (Cons!22137 (h!27538 Token!7504) (t!188160 List!22219)) )
))
(declare-fun tokens!598 () List!22219)

(declare-fun rulesProduceIndividualToken!1761 (LexerInterface!3589 List!22218 Token!7504) Bool)

(assert (=> b!2014538 (= res!883674 (not (rulesProduceIndividualToken!1761 thiss!23328 rules!3198 (h!27538 tokens!598))))))

(declare-fun b!2014539 () Bool)

(declare-fun e!1273051 () Bool)

(declare-fun tp!600597 () Bool)

(declare-fun e!1273056 () Bool)

(declare-fun inv!29298 (String!25678) Bool)

(declare-fun inv!29301 (TokenValueInjection!7808) Bool)

(assert (=> b!2014539 (= e!1273051 (and tp!600597 (inv!29298 (tag!4450 (rule!6203 (h!27538 tokens!598)))) (inv!29301 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) e!1273056))))

(declare-fun b!2014540 () Bool)

(declare-fun res!883661 () Bool)

(declare-fun e!1273049 () Bool)

(assert (=> b!2014540 (=> (not res!883661) (not e!1273049))))

(declare-fun separatorToken!354 () Token!7504)

(assert (=> b!2014540 (= res!883661 (rulesProduceIndividualToken!1761 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2014541 () Bool)

(declare-fun e!1273055 () Bool)

(declare-fun lt!756486 () Rule!7752)

(assert (=> b!2014541 (= e!1273055 (= (rule!6203 (h!27538 tokens!598)) lt!756486))))

(declare-fun b!2014542 () Bool)

(declare-fun e!1273069 () Bool)

(assert (=> b!2014542 (= e!1273069 false)))

(declare-fun b!2014543 () Bool)

(declare-fun e!1273065 () Bool)

(declare-fun e!1273052 () Bool)

(declare-fun tp!600601 () Bool)

(assert (=> b!2014543 (= e!1273065 (and e!1273052 tp!600601))))

(assert (=> b!2014544 (= e!1273056 (and tp!600608 tp!600604))))

(declare-fun b!2014545 () Bool)

(declare-fun tp!600602 () Bool)

(declare-fun e!1273067 () Bool)

(declare-fun inv!21 (TokenValue!4112) Bool)

(assert (=> b!2014545 (= e!1273067 (and (inv!21 (value!124907 (h!27538 tokens!598))) e!1273051 tp!600602))))

(declare-fun b!2014546 () Bool)

(declare-datatypes ((Unit!36722 0))(
  ( (Unit!36723) )
))
(declare-fun e!1273047 () Unit!36722)

(declare-fun Unit!36724 () Unit!36722)

(assert (=> b!2014546 (= e!1273047 Unit!36724)))

(declare-fun lt!756474 () List!22217)

(declare-fun lt!756490 () Unit!36722)

(declare-fun lt!756491 () C!10948)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!302 (Regex!5401 List!22217 C!10948) Unit!36722)

(assert (=> b!2014546 (= lt!756490 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!302 (regex!3976 (rule!6203 separatorToken!354)) lt!756474 lt!756491))))

(declare-fun res!883675 () Bool)

(declare-fun matchR!2667 (Regex!5401 List!22217) Bool)

(assert (=> b!2014546 (= res!883675 (not (matchR!2667 (regex!3976 (rule!6203 separatorToken!354)) lt!756474)))))

(assert (=> b!2014546 (=> (not res!883675) (not e!1273069))))

(assert (=> b!2014546 e!1273069))

(declare-fun b!2014547 () Bool)

(declare-fun res!883657 () Bool)

(assert (=> b!2014547 (=> (not res!883657) (not e!1273049))))

(declare-fun sepAndNonSepRulesDisjointChars!1074 (List!22218 List!22218) Bool)

(assert (=> b!2014547 (= res!883657 (sepAndNonSepRulesDisjointChars!1074 rules!3198 rules!3198))))

(declare-fun b!2014548 () Bool)

(declare-fun Unit!36725 () Unit!36722)

(assert (=> b!2014548 (= e!1273047 Unit!36725)))

(declare-fun b!2014549 () Bool)

(declare-fun tp!600596 () Bool)

(declare-fun e!1273060 () Bool)

(declare-fun inv!29302 (Token!7504) Bool)

(assert (=> b!2014549 (= e!1273060 (and (inv!29302 (h!27538 tokens!598)) e!1273067 tp!600596))))

(declare-fun b!2014550 () Bool)

(declare-fun e!1273050 () Bool)

(declare-datatypes ((tuple2!20796 0))(
  ( (tuple2!20797 (_1!11867 Token!7504) (_2!11867 List!22217)) )
))
(declare-datatypes ((Option!4633 0))(
  ( (None!4632) (Some!4632 (v!26897 tuple2!20796)) )
))
(declare-fun lt!756484 () Option!4633)

(declare-fun get!7012 (Option!4633) tuple2!20796)

(assert (=> b!2014550 (= e!1273050 (= (_1!11867 (get!7012 lt!756484)) (h!27538 tokens!598)))))

(declare-fun b!2014551 () Bool)

(declare-fun res!883673 () Bool)

(assert (=> b!2014551 (=> (not res!883673) (not e!1273049))))

(assert (=> b!2014551 (= res!883673 (isSeparator!3976 (rule!6203 separatorToken!354)))))

(declare-fun b!2014552 () Bool)

(declare-fun e!1273062 () Bool)

(assert (=> b!2014552 (= e!1273062 e!1273055)))

(declare-fun res!883669 () Bool)

(assert (=> b!2014552 (=> (not res!883669) (not e!1273055))))

(declare-fun lt!756478 () List!22217)

(assert (=> b!2014552 (= res!883669 (matchR!2667 (regex!3976 lt!756486) lt!756478))))

(declare-datatypes ((Option!4634 0))(
  ( (None!4633) (Some!4633 (v!26898 Rule!7752)) )
))
(declare-fun lt!756488 () Option!4634)

(declare-fun get!7013 (Option!4634) Rule!7752)

(assert (=> b!2014552 (= lt!756486 (get!7013 lt!756488))))

(declare-fun e!1273048 () Bool)

(assert (=> b!2014553 (= e!1273048 (and tp!600607 tp!600600))))

(declare-fun b!2014554 () Bool)

(declare-fun res!883663 () Bool)

(assert (=> b!2014554 (=> res!883663 e!1273063)))

(declare-datatypes ((IArray!14803 0))(
  ( (IArray!14804 (innerList!7459 List!22219)) )
))
(declare-datatypes ((Conc!7399 0))(
  ( (Node!7399 (left!17609 Conc!7399) (right!17939 Conc!7399) (csize!15028 Int) (cheight!7610 Int)) (Leaf!10850 (xs!10297 IArray!14803) (csize!15029 Int)) (Empty!7399) )
))
(declare-datatypes ((BalanceConc!14614 0))(
  ( (BalanceConc!14615 (c!325400 Conc!7399)) )
))
(declare-fun isEmpty!13747 (BalanceConc!14614) Bool)

(declare-datatypes ((tuple2!20798 0))(
  ( (tuple2!20799 (_1!11868 BalanceConc!14614) (_2!11868 BalanceConc!14612)) )
))
(declare-fun lex!1605 (LexerInterface!3589 List!22218 BalanceConc!14612) tuple2!20798)

(declare-fun seqFromList!2830 (List!22217) BalanceConc!14612)

(assert (=> b!2014554 (= res!883663 (isEmpty!13747 (_1!11868 (lex!1605 thiss!23328 rules!3198 (seqFromList!2830 lt!756478)))))))

(declare-fun b!2014555 () Bool)

(declare-fun res!883670 () Bool)

(assert (=> b!2014555 (=> (not res!883670) (not e!1273049))))

(declare-fun rulesProduceEachTokenIndividuallyList!1320 (LexerInterface!3589 List!22218 List!22219) Bool)

(assert (=> b!2014555 (= res!883670 (rulesProduceEachTokenIndividuallyList!1320 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2014556 () Bool)

(declare-fun e!1273070 () Bool)

(declare-fun e!1273046 () Bool)

(assert (=> b!2014556 (= e!1273070 e!1273046)))

(declare-fun res!883658 () Bool)

(assert (=> b!2014556 (=> (not res!883658) (not e!1273046))))

(declare-fun lt!756479 () Rule!7752)

(assert (=> b!2014556 (= res!883658 (matchR!2667 (regex!3976 lt!756479) lt!756474))))

(declare-fun lt!756487 () Option!4634)

(assert (=> b!2014556 (= lt!756479 (get!7013 lt!756487))))

(declare-fun b!2014557 () Bool)

(declare-fun tp!600606 () Bool)

(assert (=> b!2014557 (= e!1273052 (and tp!600606 (inv!29298 (tag!4450 (h!27537 rules!3198))) (inv!29301 (transformation!3976 (h!27537 rules!3198))) e!1273057))))

(declare-fun b!2014558 () Bool)

(declare-fun e!1273053 () Bool)

(assert (=> b!2014558 (= e!1273049 (not e!1273053))))

(declare-fun res!883665 () Bool)

(assert (=> b!2014558 (=> res!883665 e!1273053)))

(declare-fun lt!756473 () Option!4633)

(declare-fun lt!756483 () Bool)

(assert (=> b!2014558 (= res!883665 (or (and (not lt!756483) (= (_1!11867 (v!26897 lt!756473)) (h!27538 tokens!598))) lt!756483 (= (_1!11867 (v!26897 lt!756473)) (h!27538 tokens!598))))))

(get-info :version)

(assert (=> b!2014558 (= lt!756483 (not ((_ is Some!4632) lt!756473)))))

(declare-fun lt!756485 () List!22217)

(declare-fun maxPrefix!2025 (LexerInterface!3589 List!22218 List!22217) Option!4633)

(declare-fun ++!5973 (List!22217 List!22217) List!22217)

(assert (=> b!2014558 (= lt!756473 (maxPrefix!2025 thiss!23328 rules!3198 (++!5973 lt!756478 lt!756485)))))

(declare-fun printWithSeparatorTokenWhenNeededList!618 (LexerInterface!3589 List!22218 List!22219 Token!7504) List!22217)

(assert (=> b!2014558 (= lt!756485 (printWithSeparatorTokenWhenNeededList!618 thiss!23328 rules!3198 (t!188160 tokens!598) separatorToken!354))))

(assert (=> b!2014558 e!1273062))

(declare-fun res!883668 () Bool)

(assert (=> b!2014558 (=> (not res!883668) (not e!1273062))))

(declare-fun isDefined!3921 (Option!4634) Bool)

(assert (=> b!2014558 (= res!883668 (isDefined!3921 lt!756488))))

(declare-fun getRuleFromTag!791 (LexerInterface!3589 List!22218 String!25678) Option!4634)

(assert (=> b!2014558 (= lt!756488 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 (h!27538 tokens!598)))))))

(declare-fun lt!756493 () Unit!36722)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!791 (LexerInterface!3589 List!22218 List!22217 Token!7504) Unit!36722)

(assert (=> b!2014558 (= lt!756493 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!791 thiss!23328 rules!3198 lt!756478 (h!27538 tokens!598)))))

(assert (=> b!2014558 e!1273050))

(declare-fun res!883656 () Bool)

(assert (=> b!2014558 (=> (not res!883656) (not e!1273050))))

(declare-fun isDefined!3922 (Option!4633) Bool)

(assert (=> b!2014558 (= res!883656 (isDefined!3922 lt!756484))))

(assert (=> b!2014558 (= lt!756484 (maxPrefix!2025 thiss!23328 rules!3198 lt!756478))))

(declare-fun lt!756476 () BalanceConc!14612)

(declare-fun list!9021 (BalanceConc!14612) List!22217)

(assert (=> b!2014558 (= lt!756478 (list!9021 lt!756476))))

(assert (=> b!2014558 e!1273070))

(declare-fun res!883662 () Bool)

(assert (=> b!2014558 (=> (not res!883662) (not e!1273070))))

(assert (=> b!2014558 (= res!883662 (isDefined!3921 lt!756487))))

(assert (=> b!2014558 (= lt!756487 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 separatorToken!354))))))

(declare-fun lt!756480 () Unit!36722)

(assert (=> b!2014558 (= lt!756480 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!791 thiss!23328 rules!3198 lt!756474 separatorToken!354))))

(declare-fun charsOf!2516 (Token!7504) BalanceConc!14612)

(assert (=> b!2014558 (= lt!756474 (list!9021 (charsOf!2516 separatorToken!354)))))

(declare-fun lt!756475 () Unit!36722)

(declare-fun lemmaEqSameImage!662 (TokenValueInjection!7808 BalanceConc!14612 BalanceConc!14612) Unit!36722)

(assert (=> b!2014558 (= lt!756475 (lemmaEqSameImage!662 (transformation!3976 (rule!6203 (h!27538 tokens!598))) lt!756476 (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598)))))))

(declare-fun lt!756489 () Unit!36722)

(declare-fun lemmaSemiInverse!933 (TokenValueInjection!7808 BalanceConc!14612) Unit!36722)

(assert (=> b!2014558 (= lt!756489 (lemmaSemiInverse!933 (transformation!3976 (rule!6203 (h!27538 tokens!598))) lt!756476))))

(assert (=> b!2014558 (= lt!756476 (charsOf!2516 (h!27538 tokens!598)))))

(declare-fun b!2014559 () Bool)

(declare-fun res!883667 () Bool)

(assert (=> b!2014559 (=> (not res!883667) (not e!1273049))))

(declare-fun lambda!76225 () Int)

(declare-fun forall!4704 (List!22219 Int) Bool)

(assert (=> b!2014559 (= res!883667 (forall!4704 tokens!598 lambda!76225))))

(declare-fun b!2014560 () Bool)

(declare-fun res!883672 () Bool)

(assert (=> b!2014560 (=> (not res!883672) (not e!1273049))))

(declare-fun rulesInvariant!3196 (LexerInterface!3589 List!22218) Bool)

(assert (=> b!2014560 (= res!883672 (rulesInvariant!3196 thiss!23328 rules!3198))))

(declare-fun b!2014561 () Bool)

(declare-fun contains!4063 (List!22218 Rule!7752) Bool)

(assert (=> b!2014561 (= e!1273063 (contains!4063 rules!3198 (rule!6203 separatorToken!354)))))

(declare-fun b!2014562 () Bool)

(assert (=> b!2014562 (= e!1273053 e!1273063)))

(declare-fun res!883659 () Bool)

(assert (=> b!2014562 (=> res!883659 e!1273063)))

(declare-fun lt!756472 () List!22217)

(declare-fun lt!756471 () List!22217)

(assert (=> b!2014562 (= res!883659 (or (not (= lt!756472 lt!756471)) (not (= lt!756471 lt!756478)) (not (= lt!756472 lt!756478))))))

(declare-fun printList!1108 (LexerInterface!3589 List!22219) List!22217)

(assert (=> b!2014562 (= lt!756471 (printList!1108 thiss!23328 (Cons!22137 (h!27538 tokens!598) Nil!22137)))))

(declare-fun lt!756494 () BalanceConc!14612)

(assert (=> b!2014562 (= lt!756472 (list!9021 lt!756494))))

(declare-fun lt!756481 () BalanceConc!14614)

(declare-fun printTailRec!1057 (LexerInterface!3589 BalanceConc!14614 Int BalanceConc!14612) BalanceConc!14612)

(assert (=> b!2014562 (= lt!756494 (printTailRec!1057 thiss!23328 lt!756481 0 (BalanceConc!14613 Empty!7398)))))

(declare-fun print!1551 (LexerInterface!3589 BalanceConc!14614) BalanceConc!14612)

(assert (=> b!2014562 (= lt!756494 (print!1551 thiss!23328 lt!756481))))

(declare-fun singletonSeq!1952 (Token!7504) BalanceConc!14614)

(assert (=> b!2014562 (= lt!756481 (singletonSeq!1952 (h!27538 tokens!598)))))

(declare-fun contains!4064 (List!22217 C!10948) Bool)

(declare-fun usedCharacters!414 (Regex!5401) List!22217)

(assert (=> b!2014562 (not (contains!4064 (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598)))) lt!756491))))

(declare-fun lt!756482 () Unit!36722)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!86 (LexerInterface!3589 List!22218 List!22218 Rule!7752 Rule!7752 C!10948) Unit!36722)

(assert (=> b!2014562 (= lt!756482 (lemmaNonSepRuleNotContainsCharContainedInASepRule!86 thiss!23328 rules!3198 rules!3198 (rule!6203 (h!27538 tokens!598)) (rule!6203 separatorToken!354) lt!756491))))

(declare-fun lt!756477 () Unit!36722)

(assert (=> b!2014562 (= lt!756477 e!1273047)))

(declare-fun c!325397 () Bool)

(assert (=> b!2014562 (= c!325397 (not (contains!4064 (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354))) lt!756491)))))

(declare-fun head!4556 (List!22217) C!10948)

(assert (=> b!2014562 (= lt!756491 (head!4556 lt!756474))))

(assert (=> b!2014562 (= (++!5973 (++!5973 lt!756478 lt!756474) lt!756485) (++!5973 lt!756478 (++!5973 lt!756474 lt!756485)))))

(declare-fun lt!756492 () Unit!36722)

(declare-fun lemmaConcatAssociativity!1239 (List!22217 List!22217 List!22217) Unit!36722)

(assert (=> b!2014562 (= lt!756492 (lemmaConcatAssociativity!1239 lt!756478 lt!756474 lt!756485))))

(declare-fun b!2014563 () Bool)

(declare-fun res!883660 () Bool)

(assert (=> b!2014563 (=> (not res!883660) (not e!1273049))))

(assert (=> b!2014563 (= res!883660 ((_ is Cons!22137) tokens!598))))

(declare-fun b!2014564 () Bool)

(declare-fun res!883671 () Bool)

(assert (=> b!2014564 (=> res!883671 e!1273063)))

(assert (=> b!2014564 (= res!883671 (not (contains!4063 rules!3198 (rule!6203 (h!27538 tokens!598)))))))

(declare-fun b!2014565 () Bool)

(declare-fun e!1273068 () Bool)

(declare-fun tp!600598 () Bool)

(assert (=> b!2014565 (= e!1273068 (and tp!600598 (inv!29298 (tag!4450 (rule!6203 separatorToken!354))) (inv!29301 (transformation!3976 (rule!6203 separatorToken!354))) e!1273048))))

(declare-fun b!2014566 () Bool)

(assert (=> b!2014566 (= e!1273046 (= (rule!6203 separatorToken!354) lt!756479))))

(declare-fun b!2014567 () Bool)

(declare-fun res!883666 () Bool)

(assert (=> b!2014567 (=> (not res!883666) (not e!1273049))))

(declare-fun isEmpty!13748 (List!22218) Bool)

(assert (=> b!2014567 (= res!883666 (not (isEmpty!13748 rules!3198)))))

(declare-fun res!883664 () Bool)

(assert (=> start!198152 (=> (not res!883664) (not e!1273049))))

(assert (=> start!198152 (= res!883664 ((_ is Lexer!3587) thiss!23328))))

(assert (=> start!198152 e!1273049))

(assert (=> start!198152 true))

(assert (=> start!198152 e!1273065))

(assert (=> start!198152 e!1273060))

(declare-fun e!1273064 () Bool)

(assert (=> start!198152 (and (inv!29302 separatorToken!354) e!1273064)))

(declare-fun b!2014568 () Bool)

(declare-fun tp!600605 () Bool)

(assert (=> b!2014568 (= e!1273064 (and (inv!21 (value!124907 separatorToken!354)) e!1273068 tp!600605))))

(assert (= (and start!198152 res!883664) b!2014567))

(assert (= (and b!2014567 res!883666) b!2014560))

(assert (= (and b!2014560 res!883672) b!2014555))

(assert (= (and b!2014555 res!883670) b!2014540))

(assert (= (and b!2014540 res!883661) b!2014551))

(assert (= (and b!2014551 res!883673) b!2014559))

(assert (= (and b!2014559 res!883667) b!2014547))

(assert (= (and b!2014547 res!883657) b!2014563))

(assert (= (and b!2014563 res!883660) b!2014558))

(assert (= (and b!2014558 res!883662) b!2014556))

(assert (= (and b!2014556 res!883658) b!2014566))

(assert (= (and b!2014558 res!883656) b!2014550))

(assert (= (and b!2014558 res!883668) b!2014552))

(assert (= (and b!2014552 res!883669) b!2014541))

(assert (= (and b!2014558 (not res!883665)) b!2014562))

(assert (= (and b!2014562 c!325397) b!2014546))

(assert (= (and b!2014562 (not c!325397)) b!2014548))

(assert (= (and b!2014546 res!883675) b!2014542))

(assert (= (and b!2014562 (not res!883659)) b!2014538))

(assert (= (and b!2014538 (not res!883674)) b!2014554))

(assert (= (and b!2014554 (not res!883663)) b!2014564))

(assert (= (and b!2014564 (not res!883671)) b!2014561))

(assert (= b!2014557 b!2014537))

(assert (= b!2014543 b!2014557))

(assert (= (and start!198152 ((_ is Cons!22136) rules!3198)) b!2014543))

(assert (= b!2014539 b!2014544))

(assert (= b!2014545 b!2014539))

(assert (= b!2014549 b!2014545))

(assert (= (and start!198152 ((_ is Cons!22137) tokens!598)) b!2014549))

(assert (= b!2014565 b!2014553))

(assert (= b!2014568 b!2014565))

(assert (= start!198152 b!2014568))

(declare-fun m!2447651 () Bool)

(assert (=> b!2014549 m!2447651))

(declare-fun m!2447653 () Bool)

(assert (=> b!2014564 m!2447653))

(declare-fun m!2447655 () Bool)

(assert (=> b!2014567 m!2447655))

(declare-fun m!2447657 () Bool)

(assert (=> b!2014565 m!2447657))

(declare-fun m!2447659 () Bool)

(assert (=> b!2014565 m!2447659))

(declare-fun m!2447661 () Bool)

(assert (=> b!2014558 m!2447661))

(declare-fun m!2447663 () Bool)

(assert (=> b!2014558 m!2447663))

(declare-fun m!2447665 () Bool)

(assert (=> b!2014558 m!2447665))

(declare-fun m!2447667 () Bool)

(assert (=> b!2014558 m!2447667))

(declare-fun m!2447669 () Bool)

(assert (=> b!2014558 m!2447669))

(declare-fun m!2447671 () Bool)

(assert (=> b!2014558 m!2447671))

(declare-fun m!2447673 () Bool)

(assert (=> b!2014558 m!2447673))

(declare-fun m!2447675 () Bool)

(assert (=> b!2014558 m!2447675))

(assert (=> b!2014558 m!2447661))

(declare-fun m!2447677 () Bool)

(assert (=> b!2014558 m!2447677))

(declare-fun m!2447679 () Bool)

(assert (=> b!2014558 m!2447679))

(assert (=> b!2014558 m!2447675))

(declare-fun m!2447681 () Bool)

(assert (=> b!2014558 m!2447681))

(declare-fun m!2447683 () Bool)

(assert (=> b!2014558 m!2447683))

(declare-fun m!2447685 () Bool)

(assert (=> b!2014558 m!2447685))

(declare-fun m!2447687 () Bool)

(assert (=> b!2014558 m!2447687))

(declare-fun m!2447689 () Bool)

(assert (=> b!2014558 m!2447689))

(assert (=> b!2014558 m!2447663))

(declare-fun m!2447691 () Bool)

(assert (=> b!2014558 m!2447691))

(declare-fun m!2447693 () Bool)

(assert (=> b!2014558 m!2447693))

(declare-fun m!2447695 () Bool)

(assert (=> b!2014558 m!2447695))

(declare-fun m!2447697 () Bool)

(assert (=> b!2014556 m!2447697))

(declare-fun m!2447699 () Bool)

(assert (=> b!2014556 m!2447699))

(declare-fun m!2447701 () Bool)

(assert (=> b!2014554 m!2447701))

(assert (=> b!2014554 m!2447701))

(declare-fun m!2447703 () Bool)

(assert (=> b!2014554 m!2447703))

(declare-fun m!2447705 () Bool)

(assert (=> b!2014554 m!2447705))

(declare-fun m!2447707 () Bool)

(assert (=> b!2014557 m!2447707))

(declare-fun m!2447709 () Bool)

(assert (=> b!2014557 m!2447709))

(declare-fun m!2447711 () Bool)

(assert (=> b!2014538 m!2447711))

(declare-fun m!2447713 () Bool)

(assert (=> b!2014559 m!2447713))

(declare-fun m!2447715 () Bool)

(assert (=> b!2014550 m!2447715))

(declare-fun m!2447717 () Bool)

(assert (=> b!2014546 m!2447717))

(declare-fun m!2447719 () Bool)

(assert (=> b!2014546 m!2447719))

(declare-fun m!2447721 () Bool)

(assert (=> b!2014562 m!2447721))

(declare-fun m!2447723 () Bool)

(assert (=> b!2014562 m!2447723))

(declare-fun m!2447725 () Bool)

(assert (=> b!2014562 m!2447725))

(declare-fun m!2447727 () Bool)

(assert (=> b!2014562 m!2447727))

(declare-fun m!2447729 () Bool)

(assert (=> b!2014562 m!2447729))

(declare-fun m!2447731 () Bool)

(assert (=> b!2014562 m!2447731))

(declare-fun m!2447733 () Bool)

(assert (=> b!2014562 m!2447733))

(declare-fun m!2447735 () Bool)

(assert (=> b!2014562 m!2447735))

(declare-fun m!2447737 () Bool)

(assert (=> b!2014562 m!2447737))

(assert (=> b!2014562 m!2447735))

(declare-fun m!2447739 () Bool)

(assert (=> b!2014562 m!2447739))

(declare-fun m!2447741 () Bool)

(assert (=> b!2014562 m!2447741))

(assert (=> b!2014562 m!2447723))

(declare-fun m!2447743 () Bool)

(assert (=> b!2014562 m!2447743))

(declare-fun m!2447745 () Bool)

(assert (=> b!2014562 m!2447745))

(declare-fun m!2447747 () Bool)

(assert (=> b!2014562 m!2447747))

(declare-fun m!2447749 () Bool)

(assert (=> b!2014562 m!2447749))

(assert (=> b!2014562 m!2447745))

(assert (=> b!2014562 m!2447729))

(declare-fun m!2447751 () Bool)

(assert (=> b!2014562 m!2447751))

(declare-fun m!2447753 () Bool)

(assert (=> start!198152 m!2447753))

(declare-fun m!2447755 () Bool)

(assert (=> b!2014547 m!2447755))

(declare-fun m!2447757 () Bool)

(assert (=> b!2014545 m!2447757))

(declare-fun m!2447759 () Bool)

(assert (=> b!2014555 m!2447759))

(declare-fun m!2447761 () Bool)

(assert (=> b!2014552 m!2447761))

(declare-fun m!2447763 () Bool)

(assert (=> b!2014552 m!2447763))

(declare-fun m!2447765 () Bool)

(assert (=> b!2014561 m!2447765))

(declare-fun m!2447767 () Bool)

(assert (=> b!2014568 m!2447767))

(declare-fun m!2447769 () Bool)

(assert (=> b!2014539 m!2447769))

(declare-fun m!2447771 () Bool)

(assert (=> b!2014539 m!2447771))

(declare-fun m!2447773 () Bool)

(assert (=> b!2014560 m!2447773))

(declare-fun m!2447775 () Bool)

(assert (=> b!2014540 m!2447775))

(check-sat b_and!159503 (not b_next!56977) b_and!159493 (not b!2014539) (not b!2014552) b_and!159497 (not b!2014550) (not b!2014567) (not b!2014558) b_and!159501 (not b!2014547) (not b_next!56987) (not b!2014562) (not b!2014557) (not b!2014549) (not b!2014565) (not b_next!56979) (not b!2014568) (not b!2014556) (not b_next!56985) (not b!2014564) (not b!2014540) (not b!2014546) (not b!2014555) (not b!2014545) b_and!159499 (not b!2014560) (not start!198152) (not b_next!56983) (not b!2014561) (not b!2014559) (not b!2014554) (not b_next!56981) (not b!2014538) b_and!159495 (not b!2014543))
(check-sat b_and!159503 (not b_next!56977) (not b_next!56985) b_and!159493 b_and!159497 b_and!159501 b_and!159499 (not b_next!56983) (not b_next!56987) (not b_next!56979) (not b_next!56981) b_and!159495)
(get-model)

(declare-fun d!614877 () Bool)

(declare-fun lt!756497 () Bool)

(declare-fun isEmpty!13751 (List!22219) Bool)

(declare-fun list!9023 (BalanceConc!14614) List!22219)

(assert (=> d!614877 (= lt!756497 (isEmpty!13751 (list!9023 (_1!11868 (lex!1605 thiss!23328 rules!3198 (seqFromList!2830 lt!756478))))))))

(declare-fun isEmpty!13752 (Conc!7399) Bool)

(assert (=> d!614877 (= lt!756497 (isEmpty!13752 (c!325400 (_1!11868 (lex!1605 thiss!23328 rules!3198 (seqFromList!2830 lt!756478))))))))

(assert (=> d!614877 (= (isEmpty!13747 (_1!11868 (lex!1605 thiss!23328 rules!3198 (seqFromList!2830 lt!756478)))) lt!756497)))

(declare-fun bs!419907 () Bool)

(assert (= bs!419907 d!614877))

(declare-fun m!2447785 () Bool)

(assert (=> bs!419907 m!2447785))

(assert (=> bs!419907 m!2447785))

(declare-fun m!2447787 () Bool)

(assert (=> bs!419907 m!2447787))

(declare-fun m!2447789 () Bool)

(assert (=> bs!419907 m!2447789))

(assert (=> b!2014554 d!614877))

(declare-fun b!2014592 () Bool)

(declare-fun e!1273090 () Bool)

(declare-fun lt!756502 () tuple2!20798)

(assert (=> b!2014592 (= e!1273090 (= (_2!11868 lt!756502) (seqFromList!2830 lt!756478)))))

(declare-fun b!2014593 () Bool)

(declare-fun e!1273092 () Bool)

(assert (=> b!2014593 (= e!1273092 (not (isEmpty!13747 (_1!11868 lt!756502))))))

(declare-fun d!614879 () Bool)

(declare-fun e!1273091 () Bool)

(assert (=> d!614879 e!1273091))

(declare-fun res!883706 () Bool)

(assert (=> d!614879 (=> (not res!883706) (not e!1273091))))

(assert (=> d!614879 (= res!883706 e!1273090)))

(declare-fun c!325403 () Bool)

(declare-fun size!17292 (BalanceConc!14614) Int)

(assert (=> d!614879 (= c!325403 (> (size!17292 (_1!11868 lt!756502)) 0))))

(declare-fun lexTailRecV2!693 (LexerInterface!3589 List!22218 BalanceConc!14612 BalanceConc!14612 BalanceConc!14612 BalanceConc!14614) tuple2!20798)

(assert (=> d!614879 (= lt!756502 (lexTailRecV2!693 thiss!23328 rules!3198 (seqFromList!2830 lt!756478) (BalanceConc!14613 Empty!7398) (seqFromList!2830 lt!756478) (BalanceConc!14615 Empty!7399)))))

(assert (=> d!614879 (= (lex!1605 thiss!23328 rules!3198 (seqFromList!2830 lt!756478)) lt!756502)))

(declare-fun b!2014594 () Bool)

(assert (=> b!2014594 (= e!1273090 e!1273092)))

(declare-fun res!883707 () Bool)

(declare-fun size!17293 (BalanceConc!14612) Int)

(assert (=> b!2014594 (= res!883707 (< (size!17293 (_2!11868 lt!756502)) (size!17293 (seqFromList!2830 lt!756478))))))

(assert (=> b!2014594 (=> (not res!883707) (not e!1273092))))

(declare-fun b!2014595 () Bool)

(declare-datatypes ((tuple2!20800 0))(
  ( (tuple2!20801 (_1!11869 List!22219) (_2!11869 List!22217)) )
))
(declare-fun lexList!970 (LexerInterface!3589 List!22218 List!22217) tuple2!20800)

(assert (=> b!2014595 (= e!1273091 (= (list!9021 (_2!11868 lt!756502)) (_2!11869 (lexList!970 thiss!23328 rules!3198 (list!9021 (seqFromList!2830 lt!756478))))))))

(declare-fun b!2014596 () Bool)

(declare-fun res!883705 () Bool)

(assert (=> b!2014596 (=> (not res!883705) (not e!1273091))))

(assert (=> b!2014596 (= res!883705 (= (list!9023 (_1!11868 lt!756502)) (_1!11869 (lexList!970 thiss!23328 rules!3198 (list!9021 (seqFromList!2830 lt!756478))))))))

(assert (= (and d!614879 c!325403) b!2014594))

(assert (= (and d!614879 (not c!325403)) b!2014592))

(assert (= (and b!2014594 res!883707) b!2014593))

(assert (= (and d!614879 res!883706) b!2014596))

(assert (= (and b!2014596 res!883705) b!2014595))

(declare-fun m!2447791 () Bool)

(assert (=> b!2014596 m!2447791))

(assert (=> b!2014596 m!2447701))

(declare-fun m!2447793 () Bool)

(assert (=> b!2014596 m!2447793))

(assert (=> b!2014596 m!2447793))

(declare-fun m!2447795 () Bool)

(assert (=> b!2014596 m!2447795))

(declare-fun m!2447797 () Bool)

(assert (=> d!614879 m!2447797))

(assert (=> d!614879 m!2447701))

(assert (=> d!614879 m!2447701))

(declare-fun m!2447799 () Bool)

(assert (=> d!614879 m!2447799))

(declare-fun m!2447801 () Bool)

(assert (=> b!2014593 m!2447801))

(declare-fun m!2447803 () Bool)

(assert (=> b!2014595 m!2447803))

(assert (=> b!2014595 m!2447701))

(assert (=> b!2014595 m!2447793))

(assert (=> b!2014595 m!2447793))

(assert (=> b!2014595 m!2447795))

(declare-fun m!2447805 () Bool)

(assert (=> b!2014594 m!2447805))

(assert (=> b!2014594 m!2447701))

(declare-fun m!2447807 () Bool)

(assert (=> b!2014594 m!2447807))

(assert (=> b!2014554 d!614879))

(declare-fun d!614881 () Bool)

(declare-fun fromListB!1269 (List!22217) BalanceConc!14612)

(assert (=> d!614881 (= (seqFromList!2830 lt!756478) (fromListB!1269 lt!756478))))

(declare-fun bs!419908 () Bool)

(assert (= bs!419908 d!614881))

(declare-fun m!2447809 () Bool)

(assert (=> bs!419908 m!2447809))

(assert (=> b!2014554 d!614881))

(declare-fun d!614883 () Bool)

(declare-fun res!883712 () Bool)

(declare-fun e!1273095 () Bool)

(assert (=> d!614883 (=> (not res!883712) (not e!1273095))))

(declare-fun isEmpty!13753 (List!22217) Bool)

(assert (=> d!614883 (= res!883712 (not (isEmpty!13753 (originalCharacters!4783 separatorToken!354))))))

(assert (=> d!614883 (= (inv!29302 separatorToken!354) e!1273095)))

(declare-fun b!2014601 () Bool)

(declare-fun res!883713 () Bool)

(assert (=> b!2014601 (=> (not res!883713) (not e!1273095))))

(declare-fun dynLambda!10938 (Int TokenValue!4112) BalanceConc!14612)

(assert (=> b!2014601 (= res!883713 (= (originalCharacters!4783 separatorToken!354) (list!9021 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (value!124907 separatorToken!354)))))))

(declare-fun b!2014602 () Bool)

(declare-fun size!17294 (List!22217) Int)

(assert (=> b!2014602 (= e!1273095 (= (size!17290 separatorToken!354) (size!17294 (originalCharacters!4783 separatorToken!354))))))

(assert (= (and d!614883 res!883712) b!2014601))

(assert (= (and b!2014601 res!883713) b!2014602))

(declare-fun b_lambda!67421 () Bool)

(assert (=> (not b_lambda!67421) (not b!2014601)))

(declare-fun t!188164 () Bool)

(declare-fun tb!126045 () Bool)

(assert (=> (and b!2014553 (= (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354)))) t!188164) tb!126045))

(declare-fun b!2014607 () Bool)

(declare-fun e!1273098 () Bool)

(declare-fun tp!600611 () Bool)

(declare-fun inv!29304 (Conc!7398) Bool)

(assert (=> b!2014607 (= e!1273098 (and (inv!29304 (c!325398 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (value!124907 separatorToken!354)))) tp!600611))))

(declare-fun result!151036 () Bool)

(declare-fun inv!29306 (BalanceConc!14612) Bool)

(assert (=> tb!126045 (= result!151036 (and (inv!29306 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (value!124907 separatorToken!354))) e!1273098))))

(assert (= tb!126045 b!2014607))

(declare-fun m!2447811 () Bool)

(assert (=> b!2014607 m!2447811))

(declare-fun m!2447813 () Bool)

(assert (=> tb!126045 m!2447813))

(assert (=> b!2014601 t!188164))

(declare-fun b_and!159505 () Bool)

(assert (= b_and!159495 (and (=> t!188164 result!151036) b_and!159505)))

(declare-fun tb!126047 () Bool)

(declare-fun t!188166 () Bool)

(assert (=> (and b!2014537 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354)))) t!188166) tb!126047))

(declare-fun result!151040 () Bool)

(assert (= result!151040 result!151036))

(assert (=> b!2014601 t!188166))

(declare-fun b_and!159507 () Bool)

(assert (= b_and!159499 (and (=> t!188166 result!151040) b_and!159507)))

(declare-fun t!188168 () Bool)

(declare-fun tb!126049 () Bool)

(assert (=> (and b!2014544 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354)))) t!188168) tb!126049))

(declare-fun result!151042 () Bool)

(assert (= result!151042 result!151036))

(assert (=> b!2014601 t!188168))

(declare-fun b_and!159509 () Bool)

(assert (= b_and!159503 (and (=> t!188168 result!151042) b_and!159509)))

(declare-fun m!2447815 () Bool)

(assert (=> d!614883 m!2447815))

(declare-fun m!2447817 () Bool)

(assert (=> b!2014601 m!2447817))

(assert (=> b!2014601 m!2447817))

(declare-fun m!2447819 () Bool)

(assert (=> b!2014601 m!2447819))

(declare-fun m!2447821 () Bool)

(assert (=> b!2014602 m!2447821))

(assert (=> start!198152 d!614883))

(declare-fun bs!419915 () Bool)

(declare-fun d!614885 () Bool)

(assert (= bs!419915 (and d!614885 b!2014559)))

(declare-fun lambda!76236 () Int)

(assert (=> bs!419915 (not (= lambda!76236 lambda!76225))))

(declare-fun b!2014732 () Bool)

(declare-fun e!1273173 () Bool)

(assert (=> b!2014732 (= e!1273173 true)))

(declare-fun b!2014731 () Bool)

(declare-fun e!1273172 () Bool)

(assert (=> b!2014731 (= e!1273172 e!1273173)))

(declare-fun b!2014730 () Bool)

(declare-fun e!1273171 () Bool)

(assert (=> b!2014730 (= e!1273171 e!1273172)))

(assert (=> d!614885 e!1273171))

(assert (= b!2014731 b!2014732))

(assert (= b!2014730 b!2014731))

(assert (= (and d!614885 ((_ is Cons!22136) rules!3198)) b!2014730))

(declare-fun order!14103 () Int)

(declare-fun order!14101 () Int)

(declare-fun dynLambda!10940 (Int Int) Int)

(declare-fun dynLambda!10941 (Int Int) Int)

(assert (=> b!2014732 (< (dynLambda!10940 order!14101 (toValue!5645 (transformation!3976 (h!27537 rules!3198)))) (dynLambda!10941 order!14103 lambda!76236))))

(declare-fun order!14105 () Int)

(declare-fun dynLambda!10942 (Int Int) Int)

(assert (=> b!2014732 (< (dynLambda!10942 order!14105 (toChars!5504 (transformation!3976 (h!27537 rules!3198)))) (dynLambda!10941 order!14103 lambda!76236))))

(assert (=> d!614885 true))

(declare-fun lt!756557 () Bool)

(assert (=> d!614885 (= lt!756557 (forall!4704 tokens!598 lambda!76236))))

(declare-fun e!1273164 () Bool)

(assert (=> d!614885 (= lt!756557 e!1273164)))

(declare-fun res!883766 () Bool)

(assert (=> d!614885 (=> res!883766 e!1273164)))

(assert (=> d!614885 (= res!883766 (not ((_ is Cons!22137) tokens!598)))))

(assert (=> d!614885 (not (isEmpty!13748 rules!3198))))

(assert (=> d!614885 (= (rulesProduceEachTokenIndividuallyList!1320 thiss!23328 rules!3198 tokens!598) lt!756557)))

(declare-fun b!2014720 () Bool)

(declare-fun e!1273163 () Bool)

(assert (=> b!2014720 (= e!1273164 e!1273163)))

(declare-fun res!883767 () Bool)

(assert (=> b!2014720 (=> (not res!883767) (not e!1273163))))

(assert (=> b!2014720 (= res!883767 (rulesProduceIndividualToken!1761 thiss!23328 rules!3198 (h!27538 tokens!598)))))

(declare-fun b!2014721 () Bool)

(assert (=> b!2014721 (= e!1273163 (rulesProduceEachTokenIndividuallyList!1320 thiss!23328 rules!3198 (t!188160 tokens!598)))))

(assert (= (and d!614885 (not res!883766)) b!2014720))

(assert (= (and b!2014720 res!883767) b!2014721))

(declare-fun m!2447953 () Bool)

(assert (=> d!614885 m!2447953))

(assert (=> d!614885 m!2447655))

(assert (=> b!2014720 m!2447711))

(declare-fun m!2447955 () Bool)

(assert (=> b!2014721 m!2447955))

(assert (=> b!2014555 d!614885))

(declare-fun b!2014791 () Bool)

(declare-fun e!1273205 () Bool)

(declare-fun lt!756572 () Bool)

(declare-fun call!123256 () Bool)

(assert (=> b!2014791 (= e!1273205 (= lt!756572 call!123256))))

(declare-fun bm!123251 () Bool)

(assert (=> bm!123251 (= call!123256 (isEmpty!13753 lt!756478))))

(declare-fun b!2014792 () Bool)

(declare-fun e!1273210 () Bool)

(assert (=> b!2014792 (= e!1273205 e!1273210)))

(declare-fun c!325439 () Bool)

(assert (=> b!2014792 (= c!325439 ((_ is EmptyLang!5401) (regex!3976 lt!756486)))))

(declare-fun b!2014793 () Bool)

(declare-fun e!1273204 () Bool)

(declare-fun derivativeStep!1399 (Regex!5401 C!10948) Regex!5401)

(declare-fun tail!3035 (List!22217) List!22217)

(assert (=> b!2014793 (= e!1273204 (matchR!2667 (derivativeStep!1399 (regex!3976 lt!756486) (head!4556 lt!756478)) (tail!3035 lt!756478)))))

(declare-fun b!2014795 () Bool)

(declare-fun res!883795 () Bool)

(declare-fun e!1273209 () Bool)

(assert (=> b!2014795 (=> res!883795 e!1273209)))

(declare-fun e!1273206 () Bool)

(assert (=> b!2014795 (= res!883795 e!1273206)))

(declare-fun res!883796 () Bool)

(assert (=> b!2014795 (=> (not res!883796) (not e!1273206))))

(assert (=> b!2014795 (= res!883796 lt!756572)))

(declare-fun b!2014796 () Bool)

(declare-fun res!883790 () Bool)

(declare-fun e!1273207 () Bool)

(assert (=> b!2014796 (=> res!883790 e!1273207)))

(assert (=> b!2014796 (= res!883790 (not (isEmpty!13753 (tail!3035 lt!756478))))))

(declare-fun b!2014797 () Bool)

(declare-fun res!883793 () Bool)

(assert (=> b!2014797 (=> res!883793 e!1273209)))

(assert (=> b!2014797 (= res!883793 (not ((_ is ElementMatch!5401) (regex!3976 lt!756486))))))

(assert (=> b!2014797 (= e!1273210 e!1273209)))

(declare-fun b!2014798 () Bool)

(declare-fun res!883792 () Bool)

(assert (=> b!2014798 (=> (not res!883792) (not e!1273206))))

(assert (=> b!2014798 (= res!883792 (isEmpty!13753 (tail!3035 lt!756478)))))

(declare-fun b!2014799 () Bool)

(assert (=> b!2014799 (= e!1273207 (not (= (head!4556 lt!756478) (c!325399 (regex!3976 lt!756486)))))))

(declare-fun b!2014800 () Bool)

(declare-fun e!1273208 () Bool)

(assert (=> b!2014800 (= e!1273209 e!1273208)))

(declare-fun res!883791 () Bool)

(assert (=> b!2014800 (=> (not res!883791) (not e!1273208))))

(assert (=> b!2014800 (= res!883791 (not lt!756572))))

(declare-fun b!2014801 () Bool)

(assert (=> b!2014801 (= e!1273208 e!1273207)))

(declare-fun res!883794 () Bool)

(assert (=> b!2014801 (=> res!883794 e!1273207)))

(assert (=> b!2014801 (= res!883794 call!123256)))

(declare-fun b!2014802 () Bool)

(declare-fun nullable!1640 (Regex!5401) Bool)

(assert (=> b!2014802 (= e!1273204 (nullable!1640 (regex!3976 lt!756486)))))

(declare-fun b!2014803 () Bool)

(declare-fun res!883797 () Bool)

(assert (=> b!2014803 (=> (not res!883797) (not e!1273206))))

(assert (=> b!2014803 (= res!883797 (not call!123256))))

(declare-fun b!2014804 () Bool)

(assert (=> b!2014804 (= e!1273210 (not lt!756572))))

(declare-fun b!2014794 () Bool)

(assert (=> b!2014794 (= e!1273206 (= (head!4556 lt!756478) (c!325399 (regex!3976 lt!756486))))))

(declare-fun d!614913 () Bool)

(assert (=> d!614913 e!1273205))

(declare-fun c!325438 () Bool)

(assert (=> d!614913 (= c!325438 ((_ is EmptyExpr!5401) (regex!3976 lt!756486)))))

(assert (=> d!614913 (= lt!756572 e!1273204)))

(declare-fun c!325437 () Bool)

(assert (=> d!614913 (= c!325437 (isEmpty!13753 lt!756478))))

(declare-fun validRegex!2166 (Regex!5401) Bool)

(assert (=> d!614913 (validRegex!2166 (regex!3976 lt!756486))))

(assert (=> d!614913 (= (matchR!2667 (regex!3976 lt!756486) lt!756478) lt!756572)))

(assert (= (and d!614913 c!325437) b!2014802))

(assert (= (and d!614913 (not c!325437)) b!2014793))

(assert (= (and d!614913 c!325438) b!2014791))

(assert (= (and d!614913 (not c!325438)) b!2014792))

(assert (= (and b!2014792 c!325439) b!2014804))

(assert (= (and b!2014792 (not c!325439)) b!2014797))

(assert (= (and b!2014797 (not res!883793)) b!2014795))

(assert (= (and b!2014795 res!883796) b!2014803))

(assert (= (and b!2014803 res!883797) b!2014798))

(assert (= (and b!2014798 res!883792) b!2014794))

(assert (= (and b!2014795 (not res!883795)) b!2014800))

(assert (= (and b!2014800 res!883791) b!2014801))

(assert (= (and b!2014801 (not res!883794)) b!2014796))

(assert (= (and b!2014796 (not res!883790)) b!2014799))

(assert (= (or b!2014791 b!2014801 b!2014803) bm!123251))

(declare-fun m!2448015 () Bool)

(assert (=> b!2014802 m!2448015))

(declare-fun m!2448017 () Bool)

(assert (=> b!2014793 m!2448017))

(assert (=> b!2014793 m!2448017))

(declare-fun m!2448019 () Bool)

(assert (=> b!2014793 m!2448019))

(declare-fun m!2448021 () Bool)

(assert (=> b!2014793 m!2448021))

(assert (=> b!2014793 m!2448019))

(assert (=> b!2014793 m!2448021))

(declare-fun m!2448023 () Bool)

(assert (=> b!2014793 m!2448023))

(assert (=> b!2014799 m!2448017))

(declare-fun m!2448025 () Bool)

(assert (=> bm!123251 m!2448025))

(assert (=> b!2014798 m!2448021))

(assert (=> b!2014798 m!2448021))

(declare-fun m!2448027 () Bool)

(assert (=> b!2014798 m!2448027))

(assert (=> b!2014796 m!2448021))

(assert (=> b!2014796 m!2448021))

(assert (=> b!2014796 m!2448027))

(assert (=> b!2014794 m!2448017))

(assert (=> d!614913 m!2448025))

(declare-fun m!2448029 () Bool)

(assert (=> d!614913 m!2448029))

(assert (=> b!2014552 d!614913))

(declare-fun d!614925 () Bool)

(assert (=> d!614925 (= (get!7013 lt!756488) (v!26898 lt!756488))))

(assert (=> b!2014552 d!614925))

(declare-fun d!614927 () Bool)

(declare-fun lt!756588 () Bool)

(declare-fun e!1273241 () Bool)

(assert (=> d!614927 (= lt!756588 e!1273241)))

(declare-fun res!883830 () Bool)

(assert (=> d!614927 (=> (not res!883830) (not e!1273241))))

(assert (=> d!614927 (= res!883830 (= (list!9023 (_1!11868 (lex!1605 thiss!23328 rules!3198 (print!1551 thiss!23328 (singletonSeq!1952 (h!27538 tokens!598)))))) (list!9023 (singletonSeq!1952 (h!27538 tokens!598)))))))

(declare-fun e!1273242 () Bool)

(assert (=> d!614927 (= lt!756588 e!1273242)))

(declare-fun res!883828 () Bool)

(assert (=> d!614927 (=> (not res!883828) (not e!1273242))))

(declare-fun lt!756587 () tuple2!20798)

(assert (=> d!614927 (= res!883828 (= (size!17292 (_1!11868 lt!756587)) 1))))

(assert (=> d!614927 (= lt!756587 (lex!1605 thiss!23328 rules!3198 (print!1551 thiss!23328 (singletonSeq!1952 (h!27538 tokens!598)))))))

(assert (=> d!614927 (not (isEmpty!13748 rules!3198))))

(assert (=> d!614927 (= (rulesProduceIndividualToken!1761 thiss!23328 rules!3198 (h!27538 tokens!598)) lt!756588)))

(declare-fun b!2014860 () Bool)

(declare-fun res!883829 () Bool)

(assert (=> b!2014860 (=> (not res!883829) (not e!1273242))))

(declare-fun apply!5807 (BalanceConc!14614 Int) Token!7504)

(assert (=> b!2014860 (= res!883829 (= (apply!5807 (_1!11868 lt!756587) 0) (h!27538 tokens!598)))))

(declare-fun b!2014861 () Bool)

(declare-fun isEmpty!13755 (BalanceConc!14612) Bool)

(assert (=> b!2014861 (= e!1273242 (isEmpty!13755 (_2!11868 lt!756587)))))

(declare-fun b!2014862 () Bool)

(assert (=> b!2014862 (= e!1273241 (isEmpty!13755 (_2!11868 (lex!1605 thiss!23328 rules!3198 (print!1551 thiss!23328 (singletonSeq!1952 (h!27538 tokens!598)))))))))

(assert (= (and d!614927 res!883828) b!2014860))

(assert (= (and b!2014860 res!883829) b!2014861))

(assert (= (and d!614927 res!883830) b!2014862))

(declare-fun m!2448063 () Bool)

(assert (=> d!614927 m!2448063))

(assert (=> d!614927 m!2447739))

(declare-fun m!2448065 () Bool)

(assert (=> d!614927 m!2448065))

(declare-fun m!2448067 () Bool)

(assert (=> d!614927 m!2448067))

(assert (=> d!614927 m!2447655))

(assert (=> d!614927 m!2447739))

(declare-fun m!2448069 () Bool)

(assert (=> d!614927 m!2448069))

(assert (=> d!614927 m!2448065))

(declare-fun m!2448071 () Bool)

(assert (=> d!614927 m!2448071))

(assert (=> d!614927 m!2447739))

(declare-fun m!2448073 () Bool)

(assert (=> b!2014860 m!2448073))

(declare-fun m!2448075 () Bool)

(assert (=> b!2014861 m!2448075))

(assert (=> b!2014862 m!2447739))

(assert (=> b!2014862 m!2447739))

(assert (=> b!2014862 m!2448065))

(assert (=> b!2014862 m!2448065))

(assert (=> b!2014862 m!2448071))

(declare-fun m!2448077 () Bool)

(assert (=> b!2014862 m!2448077))

(assert (=> b!2014538 d!614927))

(declare-fun d!614937 () Bool)

(declare-fun res!883835 () Bool)

(declare-fun e!1273247 () Bool)

(assert (=> d!614937 (=> res!883835 e!1273247)))

(assert (=> d!614937 (= res!883835 ((_ is Nil!22137) tokens!598))))

(assert (=> d!614937 (= (forall!4704 tokens!598 lambda!76225) e!1273247)))

(declare-fun b!2014867 () Bool)

(declare-fun e!1273248 () Bool)

(assert (=> b!2014867 (= e!1273247 e!1273248)))

(declare-fun res!883836 () Bool)

(assert (=> b!2014867 (=> (not res!883836) (not e!1273248))))

(declare-fun dynLambda!10944 (Int Token!7504) Bool)

(assert (=> b!2014867 (= res!883836 (dynLambda!10944 lambda!76225 (h!27538 tokens!598)))))

(declare-fun b!2014868 () Bool)

(assert (=> b!2014868 (= e!1273248 (forall!4704 (t!188160 tokens!598) lambda!76225))))

(assert (= (and d!614937 (not res!883835)) b!2014867))

(assert (= (and b!2014867 res!883836) b!2014868))

(declare-fun b_lambda!67435 () Bool)

(assert (=> (not b_lambda!67435) (not b!2014867)))

(declare-fun m!2448079 () Bool)

(assert (=> b!2014867 m!2448079))

(declare-fun m!2448081 () Bool)

(assert (=> b!2014868 m!2448081))

(assert (=> b!2014559 d!614937))

(declare-fun d!614939 () Bool)

(declare-fun res!883839 () Bool)

(declare-fun e!1273251 () Bool)

(assert (=> d!614939 (=> (not res!883839) (not e!1273251))))

(declare-fun rulesValid!1484 (LexerInterface!3589 List!22218) Bool)

(assert (=> d!614939 (= res!883839 (rulesValid!1484 thiss!23328 rules!3198))))

(assert (=> d!614939 (= (rulesInvariant!3196 thiss!23328 rules!3198) e!1273251)))

(declare-fun b!2014871 () Bool)

(declare-datatypes ((List!22221 0))(
  ( (Nil!22139) (Cons!22139 (h!27540 String!25678) (t!188274 List!22221)) )
))
(declare-fun noDuplicateTag!1482 (LexerInterface!3589 List!22218 List!22221) Bool)

(assert (=> b!2014871 (= e!1273251 (noDuplicateTag!1482 thiss!23328 rules!3198 Nil!22139))))

(assert (= (and d!614939 res!883839) b!2014871))

(declare-fun m!2448083 () Bool)

(assert (=> d!614939 m!2448083))

(declare-fun m!2448085 () Bool)

(assert (=> b!2014871 m!2448085))

(assert (=> b!2014560 d!614939))

(declare-fun d!614941 () Bool)

(assert (=> d!614941 (= (inv!29298 (tag!4450 (rule!6203 (h!27538 tokens!598)))) (= (mod (str.len (value!124906 (tag!4450 (rule!6203 (h!27538 tokens!598))))) 2) 0))))

(assert (=> b!2014539 d!614941))

(declare-fun d!614943 () Bool)

(declare-fun res!883848 () Bool)

(declare-fun e!1273260 () Bool)

(assert (=> d!614943 (=> (not res!883848) (not e!1273260))))

(declare-fun semiInverseModEq!1596 (Int Int) Bool)

(assert (=> d!614943 (= res!883848 (semiInverseModEq!1596 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))))))

(assert (=> d!614943 (= (inv!29301 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) e!1273260)))

(declare-fun b!2014884 () Bool)

(declare-fun equivClasses!1523 (Int Int) Bool)

(assert (=> b!2014884 (= e!1273260 (equivClasses!1523 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))))))

(assert (= (and d!614943 res!883848) b!2014884))

(declare-fun m!2448087 () Bool)

(assert (=> d!614943 m!2448087))

(declare-fun m!2448089 () Bool)

(assert (=> b!2014884 m!2448089))

(assert (=> b!2014539 d!614943))

(declare-fun b!2014885 () Bool)

(declare-fun e!1273262 () Bool)

(declare-fun lt!756591 () Bool)

(declare-fun call!123260 () Bool)

(assert (=> b!2014885 (= e!1273262 (= lt!756591 call!123260))))

(declare-fun bm!123255 () Bool)

(assert (=> bm!123255 (= call!123260 (isEmpty!13753 lt!756474))))

(declare-fun b!2014886 () Bool)

(declare-fun e!1273267 () Bool)

(assert (=> b!2014886 (= e!1273262 e!1273267)))

(declare-fun c!325454 () Bool)

(assert (=> b!2014886 (= c!325454 ((_ is EmptyLang!5401) (regex!3976 lt!756479)))))

(declare-fun b!2014887 () Bool)

(declare-fun e!1273261 () Bool)

(assert (=> b!2014887 (= e!1273261 (matchR!2667 (derivativeStep!1399 (regex!3976 lt!756479) (head!4556 lt!756474)) (tail!3035 lt!756474)))))

(declare-fun b!2014889 () Bool)

(declare-fun res!883854 () Bool)

(declare-fun e!1273266 () Bool)

(assert (=> b!2014889 (=> res!883854 e!1273266)))

(declare-fun e!1273263 () Bool)

(assert (=> b!2014889 (= res!883854 e!1273263)))

(declare-fun res!883855 () Bool)

(assert (=> b!2014889 (=> (not res!883855) (not e!1273263))))

(assert (=> b!2014889 (= res!883855 lt!756591)))

(declare-fun b!2014890 () Bool)

(declare-fun res!883849 () Bool)

(declare-fun e!1273264 () Bool)

(assert (=> b!2014890 (=> res!883849 e!1273264)))

(assert (=> b!2014890 (= res!883849 (not (isEmpty!13753 (tail!3035 lt!756474))))))

(declare-fun b!2014891 () Bool)

(declare-fun res!883852 () Bool)

(assert (=> b!2014891 (=> res!883852 e!1273266)))

(assert (=> b!2014891 (= res!883852 (not ((_ is ElementMatch!5401) (regex!3976 lt!756479))))))

(assert (=> b!2014891 (= e!1273267 e!1273266)))

(declare-fun b!2014892 () Bool)

(declare-fun res!883851 () Bool)

(assert (=> b!2014892 (=> (not res!883851) (not e!1273263))))

(assert (=> b!2014892 (= res!883851 (isEmpty!13753 (tail!3035 lt!756474)))))

(declare-fun b!2014893 () Bool)

(assert (=> b!2014893 (= e!1273264 (not (= (head!4556 lt!756474) (c!325399 (regex!3976 lt!756479)))))))

(declare-fun b!2014894 () Bool)

(declare-fun e!1273265 () Bool)

(assert (=> b!2014894 (= e!1273266 e!1273265)))

(declare-fun res!883850 () Bool)

(assert (=> b!2014894 (=> (not res!883850) (not e!1273265))))

(assert (=> b!2014894 (= res!883850 (not lt!756591))))

(declare-fun b!2014895 () Bool)

(assert (=> b!2014895 (= e!1273265 e!1273264)))

(declare-fun res!883853 () Bool)

(assert (=> b!2014895 (=> res!883853 e!1273264)))

(assert (=> b!2014895 (= res!883853 call!123260)))

(declare-fun b!2014896 () Bool)

(assert (=> b!2014896 (= e!1273261 (nullable!1640 (regex!3976 lt!756479)))))

(declare-fun b!2014897 () Bool)

(declare-fun res!883856 () Bool)

(assert (=> b!2014897 (=> (not res!883856) (not e!1273263))))

(assert (=> b!2014897 (= res!883856 (not call!123260))))

(declare-fun b!2014898 () Bool)

(assert (=> b!2014898 (= e!1273267 (not lt!756591))))

(declare-fun b!2014888 () Bool)

(assert (=> b!2014888 (= e!1273263 (= (head!4556 lt!756474) (c!325399 (regex!3976 lt!756479))))))

(declare-fun d!614945 () Bool)

(assert (=> d!614945 e!1273262))

(declare-fun c!325453 () Bool)

(assert (=> d!614945 (= c!325453 ((_ is EmptyExpr!5401) (regex!3976 lt!756479)))))

(assert (=> d!614945 (= lt!756591 e!1273261)))

(declare-fun c!325452 () Bool)

(assert (=> d!614945 (= c!325452 (isEmpty!13753 lt!756474))))

(assert (=> d!614945 (validRegex!2166 (regex!3976 lt!756479))))

(assert (=> d!614945 (= (matchR!2667 (regex!3976 lt!756479) lt!756474) lt!756591)))

(assert (= (and d!614945 c!325452) b!2014896))

(assert (= (and d!614945 (not c!325452)) b!2014887))

(assert (= (and d!614945 c!325453) b!2014885))

(assert (= (and d!614945 (not c!325453)) b!2014886))

(assert (= (and b!2014886 c!325454) b!2014898))

(assert (= (and b!2014886 (not c!325454)) b!2014891))

(assert (= (and b!2014891 (not res!883852)) b!2014889))

(assert (= (and b!2014889 res!883855) b!2014897))

(assert (= (and b!2014897 res!883856) b!2014892))

(assert (= (and b!2014892 res!883851) b!2014888))

(assert (= (and b!2014889 (not res!883854)) b!2014894))

(assert (= (and b!2014894 res!883850) b!2014895))

(assert (= (and b!2014895 (not res!883853)) b!2014890))

(assert (= (and b!2014890 (not res!883849)) b!2014893))

(assert (= (or b!2014885 b!2014895 b!2014897) bm!123255))

(declare-fun m!2448091 () Bool)

(assert (=> b!2014896 m!2448091))

(assert (=> b!2014887 m!2447749))

(assert (=> b!2014887 m!2447749))

(declare-fun m!2448093 () Bool)

(assert (=> b!2014887 m!2448093))

(declare-fun m!2448095 () Bool)

(assert (=> b!2014887 m!2448095))

(assert (=> b!2014887 m!2448093))

(assert (=> b!2014887 m!2448095))

(declare-fun m!2448097 () Bool)

(assert (=> b!2014887 m!2448097))

(assert (=> b!2014893 m!2447749))

(declare-fun m!2448099 () Bool)

(assert (=> bm!123255 m!2448099))

(assert (=> b!2014892 m!2448095))

(assert (=> b!2014892 m!2448095))

(declare-fun m!2448101 () Bool)

(assert (=> b!2014892 m!2448101))

(assert (=> b!2014890 m!2448095))

(assert (=> b!2014890 m!2448095))

(assert (=> b!2014890 m!2448101))

(assert (=> b!2014888 m!2447749))

(assert (=> d!614945 m!2448099))

(declare-fun m!2448103 () Bool)

(assert (=> d!614945 m!2448103))

(assert (=> b!2014556 d!614945))

(declare-fun d!614947 () Bool)

(assert (=> d!614947 (= (get!7013 lt!756487) (v!26898 lt!756487))))

(assert (=> b!2014556 d!614947))

(declare-fun d!614949 () Bool)

(assert (=> d!614949 (= (inv!29298 (tag!4450 (h!27537 rules!3198))) (= (mod (str.len (value!124906 (tag!4450 (h!27537 rules!3198)))) 2) 0))))

(assert (=> b!2014557 d!614949))

(declare-fun d!614951 () Bool)

(declare-fun res!883857 () Bool)

(declare-fun e!1273268 () Bool)

(assert (=> d!614951 (=> (not res!883857) (not e!1273268))))

(assert (=> d!614951 (= res!883857 (semiInverseModEq!1596 (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (h!27537 rules!3198)))))))

(assert (=> d!614951 (= (inv!29301 (transformation!3976 (h!27537 rules!3198))) e!1273268)))

(declare-fun b!2014899 () Bool)

(assert (=> b!2014899 (= e!1273268 (equivClasses!1523 (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (h!27537 rules!3198)))))))

(assert (= (and d!614951 res!883857) b!2014899))

(declare-fun m!2448105 () Bool)

(assert (=> d!614951 m!2448105))

(declare-fun m!2448107 () Bool)

(assert (=> b!2014899 m!2448107))

(assert (=> b!2014557 d!614951))

(declare-fun d!614953 () Bool)

(declare-fun e!1273274 () Bool)

(assert (=> d!614953 e!1273274))

(declare-fun res!883865 () Bool)

(assert (=> d!614953 (=> (not res!883865) (not e!1273274))))

(assert (=> d!614953 (= res!883865 (isDefined!3921 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 (h!27538 tokens!598))))))))

(declare-fun lt!756595 () Unit!36722)

(declare-fun choose!12272 (LexerInterface!3589 List!22218 List!22217 Token!7504) Unit!36722)

(assert (=> d!614953 (= lt!756595 (choose!12272 thiss!23328 rules!3198 lt!756478 (h!27538 tokens!598)))))

(assert (=> d!614953 (rulesInvariant!3196 thiss!23328 rules!3198)))

(assert (=> d!614953 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!791 thiss!23328 rules!3198 lt!756478 (h!27538 tokens!598)) lt!756595)))

(declare-fun b!2014909 () Bool)

(declare-fun res!883866 () Bool)

(assert (=> b!2014909 (=> (not res!883866) (not e!1273274))))

(assert (=> b!2014909 (= res!883866 (matchR!2667 (regex!3976 (get!7013 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 (h!27538 tokens!598)))))) (list!9021 (charsOf!2516 (h!27538 tokens!598)))))))

(declare-fun b!2014910 () Bool)

(assert (=> b!2014910 (= e!1273274 (= (rule!6203 (h!27538 tokens!598)) (get!7013 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 (h!27538 tokens!598)))))))))

(assert (= (and d!614953 res!883865) b!2014909))

(assert (= (and b!2014909 res!883866) b!2014910))

(assert (=> d!614953 m!2447693))

(assert (=> d!614953 m!2447693))

(declare-fun m!2448129 () Bool)

(assert (=> d!614953 m!2448129))

(declare-fun m!2448131 () Bool)

(assert (=> d!614953 m!2448131))

(assert (=> d!614953 m!2447773))

(assert (=> b!2014909 m!2447691))

(assert (=> b!2014909 m!2447691))

(declare-fun m!2448133 () Bool)

(assert (=> b!2014909 m!2448133))

(assert (=> b!2014909 m!2448133))

(declare-fun m!2448135 () Bool)

(assert (=> b!2014909 m!2448135))

(assert (=> b!2014909 m!2447693))

(assert (=> b!2014909 m!2447693))

(declare-fun m!2448137 () Bool)

(assert (=> b!2014909 m!2448137))

(assert (=> b!2014910 m!2447693))

(assert (=> b!2014910 m!2447693))

(assert (=> b!2014910 m!2448137))

(assert (=> b!2014558 d!614953))

(declare-fun bm!123258 () Bool)

(declare-fun call!123263 () Option!4633)

(declare-fun maxPrefixOneRule!1255 (LexerInterface!3589 Rule!7752 List!22217) Option!4633)

(assert (=> bm!123258 (= call!123263 (maxPrefixOneRule!1255 thiss!23328 (h!27537 rules!3198) (++!5973 lt!756478 lt!756485)))))

(declare-fun b!2014929 () Bool)

(declare-fun e!1273283 () Option!4633)

(assert (=> b!2014929 (= e!1273283 call!123263)))

(declare-fun b!2014930 () Bool)

(declare-fun res!883885 () Bool)

(declare-fun e!1273282 () Bool)

(assert (=> b!2014930 (=> (not res!883885) (not e!1273282))))

(declare-fun lt!756606 () Option!4633)

(assert (=> b!2014930 (= res!883885 (= (++!5973 (list!9021 (charsOf!2516 (_1!11867 (get!7012 lt!756606)))) (_2!11867 (get!7012 lt!756606))) (++!5973 lt!756478 lt!756485)))))

(declare-fun b!2014931 () Bool)

(declare-fun res!883884 () Bool)

(assert (=> b!2014931 (=> (not res!883884) (not e!1273282))))

(declare-fun apply!5809 (TokenValueInjection!7808 BalanceConc!14612) TokenValue!4112)

(assert (=> b!2014931 (= res!883884 (= (value!124907 (_1!11867 (get!7012 lt!756606))) (apply!5809 (transformation!3976 (rule!6203 (_1!11867 (get!7012 lt!756606)))) (seqFromList!2830 (originalCharacters!4783 (_1!11867 (get!7012 lt!756606)))))))))

(declare-fun b!2014932 () Bool)

(declare-fun lt!756610 () Option!4633)

(declare-fun lt!756607 () Option!4633)

(assert (=> b!2014932 (= e!1273283 (ite (and ((_ is None!4632) lt!756610) ((_ is None!4632) lt!756607)) None!4632 (ite ((_ is None!4632) lt!756607) lt!756610 (ite ((_ is None!4632) lt!756610) lt!756607 (ite (>= (size!17290 (_1!11867 (v!26897 lt!756610))) (size!17290 (_1!11867 (v!26897 lt!756607)))) lt!756610 lt!756607)))))))

(assert (=> b!2014932 (= lt!756610 call!123263)))

(assert (=> b!2014932 (= lt!756607 (maxPrefix!2025 thiss!23328 (t!188159 rules!3198) (++!5973 lt!756478 lt!756485)))))

(declare-fun b!2014933 () Bool)

(declare-fun res!883886 () Bool)

(assert (=> b!2014933 (=> (not res!883886) (not e!1273282))))

(assert (=> b!2014933 (= res!883886 (= (list!9021 (charsOf!2516 (_1!11867 (get!7012 lt!756606)))) (originalCharacters!4783 (_1!11867 (get!7012 lt!756606)))))))

(declare-fun b!2014935 () Bool)

(assert (=> b!2014935 (= e!1273282 (contains!4063 rules!3198 (rule!6203 (_1!11867 (get!7012 lt!756606)))))))

(declare-fun b!2014936 () Bool)

(declare-fun res!883881 () Bool)

(assert (=> b!2014936 (=> (not res!883881) (not e!1273282))))

(assert (=> b!2014936 (= res!883881 (< (size!17294 (_2!11867 (get!7012 lt!756606))) (size!17294 (++!5973 lt!756478 lt!756485))))))

(declare-fun b!2014937 () Bool)

(declare-fun res!883883 () Bool)

(assert (=> b!2014937 (=> (not res!883883) (not e!1273282))))

(assert (=> b!2014937 (= res!883883 (matchR!2667 (regex!3976 (rule!6203 (_1!11867 (get!7012 lt!756606)))) (list!9021 (charsOf!2516 (_1!11867 (get!7012 lt!756606))))))))

(declare-fun b!2014934 () Bool)

(declare-fun e!1273281 () Bool)

(assert (=> b!2014934 (= e!1273281 e!1273282)))

(declare-fun res!883887 () Bool)

(assert (=> b!2014934 (=> (not res!883887) (not e!1273282))))

(assert (=> b!2014934 (= res!883887 (isDefined!3922 lt!756606))))

(declare-fun d!614959 () Bool)

(assert (=> d!614959 e!1273281))

(declare-fun res!883882 () Bool)

(assert (=> d!614959 (=> res!883882 e!1273281)))

(declare-fun isEmpty!13759 (Option!4633) Bool)

(assert (=> d!614959 (= res!883882 (isEmpty!13759 lt!756606))))

(assert (=> d!614959 (= lt!756606 e!1273283)))

(declare-fun c!325458 () Bool)

(assert (=> d!614959 (= c!325458 (and ((_ is Cons!22136) rules!3198) ((_ is Nil!22136) (t!188159 rules!3198))))))

(declare-fun lt!756609 () Unit!36722)

(declare-fun lt!756608 () Unit!36722)

(assert (=> d!614959 (= lt!756609 lt!756608)))

(declare-fun isPrefix!1973 (List!22217 List!22217) Bool)

(assert (=> d!614959 (isPrefix!1973 (++!5973 lt!756478 lt!756485) (++!5973 lt!756478 lt!756485))))

(declare-fun lemmaIsPrefixRefl!1291 (List!22217 List!22217) Unit!36722)

(assert (=> d!614959 (= lt!756608 (lemmaIsPrefixRefl!1291 (++!5973 lt!756478 lt!756485) (++!5973 lt!756478 lt!756485)))))

(declare-fun rulesValidInductive!1372 (LexerInterface!3589 List!22218) Bool)

(assert (=> d!614959 (rulesValidInductive!1372 thiss!23328 rules!3198)))

(assert (=> d!614959 (= (maxPrefix!2025 thiss!23328 rules!3198 (++!5973 lt!756478 lt!756485)) lt!756606)))

(assert (= (and d!614959 c!325458) b!2014929))

(assert (= (and d!614959 (not c!325458)) b!2014932))

(assert (= (or b!2014929 b!2014932) bm!123258))

(assert (= (and d!614959 (not res!883882)) b!2014934))

(assert (= (and b!2014934 res!883887) b!2014933))

(assert (= (and b!2014933 res!883886) b!2014936))

(assert (= (and b!2014936 res!883881) b!2014930))

(assert (= (and b!2014930 res!883885) b!2014931))

(assert (= (and b!2014931 res!883884) b!2014937))

(assert (= (and b!2014937 res!883883) b!2014935))

(assert (=> b!2014932 m!2447663))

(declare-fun m!2448139 () Bool)

(assert (=> b!2014932 m!2448139))

(assert (=> bm!123258 m!2447663))

(declare-fun m!2448141 () Bool)

(assert (=> bm!123258 m!2448141))

(declare-fun m!2448143 () Bool)

(assert (=> b!2014935 m!2448143))

(declare-fun m!2448145 () Bool)

(assert (=> b!2014935 m!2448145))

(assert (=> b!2014933 m!2448143))

(declare-fun m!2448147 () Bool)

(assert (=> b!2014933 m!2448147))

(assert (=> b!2014933 m!2448147))

(declare-fun m!2448149 () Bool)

(assert (=> b!2014933 m!2448149))

(assert (=> b!2014936 m!2448143))

(declare-fun m!2448151 () Bool)

(assert (=> b!2014936 m!2448151))

(assert (=> b!2014936 m!2447663))

(declare-fun m!2448153 () Bool)

(assert (=> b!2014936 m!2448153))

(declare-fun m!2448155 () Bool)

(assert (=> d!614959 m!2448155))

(assert (=> d!614959 m!2447663))

(assert (=> d!614959 m!2447663))

(declare-fun m!2448157 () Bool)

(assert (=> d!614959 m!2448157))

(assert (=> d!614959 m!2447663))

(assert (=> d!614959 m!2447663))

(declare-fun m!2448159 () Bool)

(assert (=> d!614959 m!2448159))

(declare-fun m!2448161 () Bool)

(assert (=> d!614959 m!2448161))

(assert (=> b!2014930 m!2448143))

(assert (=> b!2014930 m!2448147))

(assert (=> b!2014930 m!2448147))

(assert (=> b!2014930 m!2448149))

(assert (=> b!2014930 m!2448149))

(declare-fun m!2448163 () Bool)

(assert (=> b!2014930 m!2448163))

(declare-fun m!2448165 () Bool)

(assert (=> b!2014934 m!2448165))

(assert (=> b!2014931 m!2448143))

(declare-fun m!2448167 () Bool)

(assert (=> b!2014931 m!2448167))

(assert (=> b!2014931 m!2448167))

(declare-fun m!2448169 () Bool)

(assert (=> b!2014931 m!2448169))

(assert (=> b!2014937 m!2448143))

(assert (=> b!2014937 m!2448147))

(assert (=> b!2014937 m!2448147))

(assert (=> b!2014937 m!2448149))

(assert (=> b!2014937 m!2448149))

(declare-fun m!2448171 () Bool)

(assert (=> b!2014937 m!2448171))

(assert (=> b!2014558 d!614959))

(declare-fun bm!123259 () Bool)

(declare-fun call!123264 () Option!4633)

(assert (=> bm!123259 (= call!123264 (maxPrefixOneRule!1255 thiss!23328 (h!27537 rules!3198) lt!756478))))

(declare-fun b!2014938 () Bool)

(declare-fun e!1273286 () Option!4633)

(assert (=> b!2014938 (= e!1273286 call!123264)))

(declare-fun b!2014939 () Bool)

(declare-fun res!883892 () Bool)

(declare-fun e!1273285 () Bool)

(assert (=> b!2014939 (=> (not res!883892) (not e!1273285))))

(declare-fun lt!756611 () Option!4633)

(assert (=> b!2014939 (= res!883892 (= (++!5973 (list!9021 (charsOf!2516 (_1!11867 (get!7012 lt!756611)))) (_2!11867 (get!7012 lt!756611))) lt!756478))))

(declare-fun b!2014940 () Bool)

(declare-fun res!883891 () Bool)

(assert (=> b!2014940 (=> (not res!883891) (not e!1273285))))

(assert (=> b!2014940 (= res!883891 (= (value!124907 (_1!11867 (get!7012 lt!756611))) (apply!5809 (transformation!3976 (rule!6203 (_1!11867 (get!7012 lt!756611)))) (seqFromList!2830 (originalCharacters!4783 (_1!11867 (get!7012 lt!756611)))))))))

(declare-fun b!2014941 () Bool)

(declare-fun lt!756615 () Option!4633)

(declare-fun lt!756612 () Option!4633)

(assert (=> b!2014941 (= e!1273286 (ite (and ((_ is None!4632) lt!756615) ((_ is None!4632) lt!756612)) None!4632 (ite ((_ is None!4632) lt!756612) lt!756615 (ite ((_ is None!4632) lt!756615) lt!756612 (ite (>= (size!17290 (_1!11867 (v!26897 lt!756615))) (size!17290 (_1!11867 (v!26897 lt!756612)))) lt!756615 lt!756612)))))))

(assert (=> b!2014941 (= lt!756615 call!123264)))

(assert (=> b!2014941 (= lt!756612 (maxPrefix!2025 thiss!23328 (t!188159 rules!3198) lt!756478))))

(declare-fun b!2014942 () Bool)

(declare-fun res!883893 () Bool)

(assert (=> b!2014942 (=> (not res!883893) (not e!1273285))))

(assert (=> b!2014942 (= res!883893 (= (list!9021 (charsOf!2516 (_1!11867 (get!7012 lt!756611)))) (originalCharacters!4783 (_1!11867 (get!7012 lt!756611)))))))

(declare-fun b!2014944 () Bool)

(assert (=> b!2014944 (= e!1273285 (contains!4063 rules!3198 (rule!6203 (_1!11867 (get!7012 lt!756611)))))))

(declare-fun b!2014945 () Bool)

(declare-fun res!883888 () Bool)

(assert (=> b!2014945 (=> (not res!883888) (not e!1273285))))

(assert (=> b!2014945 (= res!883888 (< (size!17294 (_2!11867 (get!7012 lt!756611))) (size!17294 lt!756478)))))

(declare-fun b!2014946 () Bool)

(declare-fun res!883890 () Bool)

(assert (=> b!2014946 (=> (not res!883890) (not e!1273285))))

(assert (=> b!2014946 (= res!883890 (matchR!2667 (regex!3976 (rule!6203 (_1!11867 (get!7012 lt!756611)))) (list!9021 (charsOf!2516 (_1!11867 (get!7012 lt!756611))))))))

(declare-fun b!2014943 () Bool)

(declare-fun e!1273284 () Bool)

(assert (=> b!2014943 (= e!1273284 e!1273285)))

(declare-fun res!883894 () Bool)

(assert (=> b!2014943 (=> (not res!883894) (not e!1273285))))

(assert (=> b!2014943 (= res!883894 (isDefined!3922 lt!756611))))

(declare-fun d!614961 () Bool)

(assert (=> d!614961 e!1273284))

(declare-fun res!883889 () Bool)

(assert (=> d!614961 (=> res!883889 e!1273284)))

(assert (=> d!614961 (= res!883889 (isEmpty!13759 lt!756611))))

(assert (=> d!614961 (= lt!756611 e!1273286)))

(declare-fun c!325459 () Bool)

(assert (=> d!614961 (= c!325459 (and ((_ is Cons!22136) rules!3198) ((_ is Nil!22136) (t!188159 rules!3198))))))

(declare-fun lt!756614 () Unit!36722)

(declare-fun lt!756613 () Unit!36722)

(assert (=> d!614961 (= lt!756614 lt!756613)))

(assert (=> d!614961 (isPrefix!1973 lt!756478 lt!756478)))

(assert (=> d!614961 (= lt!756613 (lemmaIsPrefixRefl!1291 lt!756478 lt!756478))))

(assert (=> d!614961 (rulesValidInductive!1372 thiss!23328 rules!3198)))

(assert (=> d!614961 (= (maxPrefix!2025 thiss!23328 rules!3198 lt!756478) lt!756611)))

(assert (= (and d!614961 c!325459) b!2014938))

(assert (= (and d!614961 (not c!325459)) b!2014941))

(assert (= (or b!2014938 b!2014941) bm!123259))

(assert (= (and d!614961 (not res!883889)) b!2014943))

(assert (= (and b!2014943 res!883894) b!2014942))

(assert (= (and b!2014942 res!883893) b!2014945))

(assert (= (and b!2014945 res!883888) b!2014939))

(assert (= (and b!2014939 res!883892) b!2014940))

(assert (= (and b!2014940 res!883891) b!2014946))

(assert (= (and b!2014946 res!883890) b!2014944))

(declare-fun m!2448173 () Bool)

(assert (=> b!2014941 m!2448173))

(declare-fun m!2448175 () Bool)

(assert (=> bm!123259 m!2448175))

(declare-fun m!2448177 () Bool)

(assert (=> b!2014944 m!2448177))

(declare-fun m!2448179 () Bool)

(assert (=> b!2014944 m!2448179))

(assert (=> b!2014942 m!2448177))

(declare-fun m!2448181 () Bool)

(assert (=> b!2014942 m!2448181))

(assert (=> b!2014942 m!2448181))

(declare-fun m!2448183 () Bool)

(assert (=> b!2014942 m!2448183))

(assert (=> b!2014945 m!2448177))

(declare-fun m!2448185 () Bool)

(assert (=> b!2014945 m!2448185))

(declare-fun m!2448187 () Bool)

(assert (=> b!2014945 m!2448187))

(declare-fun m!2448189 () Bool)

(assert (=> d!614961 m!2448189))

(declare-fun m!2448191 () Bool)

(assert (=> d!614961 m!2448191))

(declare-fun m!2448193 () Bool)

(assert (=> d!614961 m!2448193))

(assert (=> d!614961 m!2448161))

(assert (=> b!2014939 m!2448177))

(assert (=> b!2014939 m!2448181))

(assert (=> b!2014939 m!2448181))

(assert (=> b!2014939 m!2448183))

(assert (=> b!2014939 m!2448183))

(declare-fun m!2448195 () Bool)

(assert (=> b!2014939 m!2448195))

(declare-fun m!2448197 () Bool)

(assert (=> b!2014943 m!2448197))

(assert (=> b!2014940 m!2448177))

(declare-fun m!2448199 () Bool)

(assert (=> b!2014940 m!2448199))

(assert (=> b!2014940 m!2448199))

(declare-fun m!2448201 () Bool)

(assert (=> b!2014940 m!2448201))

(assert (=> b!2014946 m!2448177))

(assert (=> b!2014946 m!2448181))

(assert (=> b!2014946 m!2448181))

(assert (=> b!2014946 m!2448183))

(assert (=> b!2014946 m!2448183))

(declare-fun m!2448203 () Bool)

(assert (=> b!2014946 m!2448203))

(assert (=> b!2014558 d!614961))

(declare-fun bs!419925 () Bool)

(declare-fun b!2015110 () Bool)

(assert (= bs!419925 (and b!2015110 b!2014559)))

(declare-fun lambda!76243 () Int)

(assert (=> bs!419925 (not (= lambda!76243 lambda!76225))))

(declare-fun bs!419926 () Bool)

(assert (= bs!419926 (and b!2015110 d!614885)))

(assert (=> bs!419926 (= lambda!76243 lambda!76236)))

(declare-fun b!2015115 () Bool)

(declare-fun e!1273392 () Bool)

(assert (=> b!2015115 (= e!1273392 true)))

(declare-fun b!2015114 () Bool)

(declare-fun e!1273391 () Bool)

(assert (=> b!2015114 (= e!1273391 e!1273392)))

(declare-fun b!2015113 () Bool)

(declare-fun e!1273390 () Bool)

(assert (=> b!2015113 (= e!1273390 e!1273391)))

(assert (=> b!2015110 e!1273390))

(assert (= b!2015114 b!2015115))

(assert (= b!2015113 b!2015114))

(assert (= (and b!2015110 ((_ is Cons!22136) rules!3198)) b!2015113))

(assert (=> b!2015115 (< (dynLambda!10940 order!14101 (toValue!5645 (transformation!3976 (h!27537 rules!3198)))) (dynLambda!10941 order!14103 lambda!76243))))

(assert (=> b!2015115 (< (dynLambda!10942 order!14105 (toChars!5504 (transformation!3976 (h!27537 rules!3198)))) (dynLambda!10941 order!14103 lambda!76243))))

(assert (=> b!2015110 true))

(declare-fun b!2015106 () Bool)

(declare-fun e!1273389 () List!22217)

(declare-fun call!123296 () BalanceConc!14612)

(assert (=> b!2015106 (= e!1273389 (list!9021 call!123296))))

(declare-fun b!2015107 () Bool)

(declare-fun e!1273388 () List!22217)

(declare-fun call!123292 () List!22217)

(declare-fun lt!756682 () List!22217)

(assert (=> b!2015107 (= e!1273388 (++!5973 call!123292 lt!756682))))

(declare-fun bm!123287 () Bool)

(assert (=> bm!123287 (= call!123296 (charsOf!2516 (h!27538 (t!188160 tokens!598))))))

(declare-fun call!123294 () BalanceConc!14612)

(declare-fun call!123295 () List!22217)

(declare-fun bm!123288 () Bool)

(declare-fun c!325504 () Bool)

(assert (=> bm!123288 (= call!123295 (list!9021 (ite c!325504 call!123296 call!123294)))))

(declare-fun b!2015108 () Bool)

(assert (=> b!2015108 (= e!1273388 Nil!22135)))

(assert (=> b!2015108 (= (print!1551 thiss!23328 (singletonSeq!1952 (h!27538 (t!188160 tokens!598)))) (printTailRec!1057 thiss!23328 (singletonSeq!1952 (h!27538 (t!188160 tokens!598))) 0 (BalanceConc!14613 Empty!7398)))))

(declare-fun lt!756684 () Unit!36722)

(declare-fun Unit!36728 () Unit!36722)

(assert (=> b!2015108 (= lt!756684 Unit!36728)))

(declare-fun call!123293 () List!22217)

(declare-fun lt!756687 () Unit!36722)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!767 (LexerInterface!3589 List!22218 List!22217 List!22217) Unit!36722)

(assert (=> b!2015108 (= lt!756687 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!767 thiss!23328 rules!3198 call!123293 lt!756682))))

(assert (=> b!2015108 false))

(declare-fun lt!756686 () Unit!36722)

(declare-fun Unit!36729 () Unit!36722)

(assert (=> b!2015108 (= lt!756686 Unit!36729)))

(declare-fun bm!123289 () Bool)

(declare-fun c!325507 () Bool)

(assert (=> bm!123289 (= call!123294 (charsOf!2516 (ite c!325507 separatorToken!354 (h!27538 (t!188160 tokens!598)))))))

(declare-fun bm!123290 () Bool)

(declare-fun c!325505 () Bool)

(assert (=> bm!123290 (= c!325505 c!325504)))

(assert (=> bm!123290 (= call!123292 (++!5973 e!1273389 (ite c!325504 lt!756682 call!123293)))))

(declare-fun b!2015109 () Bool)

(declare-fun lt!756683 () Option!4633)

(assert (=> b!2015109 (= c!325507 (and ((_ is Some!4632) lt!756683) (not (= (_1!11867 (v!26897 lt!756683)) (h!27538 (t!188160 tokens!598))))))))

(declare-fun e!1273387 () List!22217)

(assert (=> b!2015109 (= e!1273387 e!1273388)))

(declare-fun bm!123291 () Bool)

(assert (=> bm!123291 (= call!123293 call!123295)))

(declare-fun e!1273386 () List!22217)

(assert (=> b!2015110 (= e!1273386 e!1273387)))

(declare-fun lt!756685 () Unit!36722)

(declare-fun forallContained!736 (List!22219 Int Token!7504) Unit!36722)

(assert (=> b!2015110 (= lt!756685 (forallContained!736 (t!188160 tokens!598) lambda!76243 (h!27538 (t!188160 tokens!598))))))

(assert (=> b!2015110 (= lt!756682 (printWithSeparatorTokenWhenNeededList!618 thiss!23328 rules!3198 (t!188160 (t!188160 tokens!598)) separatorToken!354))))

(assert (=> b!2015110 (= lt!756683 (maxPrefix!2025 thiss!23328 rules!3198 (++!5973 (list!9021 (charsOf!2516 (h!27538 (t!188160 tokens!598)))) lt!756682)))))

(assert (=> b!2015110 (= c!325504 (and ((_ is Some!4632) lt!756683) (= (_1!11867 (v!26897 lt!756683)) (h!27538 (t!188160 tokens!598)))))))

(declare-fun b!2015105 () Bool)

(assert (=> b!2015105 (= e!1273386 Nil!22135)))

(declare-fun d!614963 () Bool)

(declare-fun c!325506 () Bool)

(assert (=> d!614963 (= c!325506 ((_ is Cons!22137) (t!188160 tokens!598)))))

(assert (=> d!614963 (= (printWithSeparatorTokenWhenNeededList!618 thiss!23328 rules!3198 (t!188160 tokens!598) separatorToken!354) e!1273386)))

(declare-fun b!2015111 () Bool)

(assert (=> b!2015111 (= e!1273389 call!123295)))

(declare-fun b!2015112 () Bool)

(assert (=> b!2015112 (= e!1273387 call!123292)))

(assert (= (and d!614963 c!325506) b!2015110))

(assert (= (and d!614963 (not c!325506)) b!2015105))

(assert (= (and b!2015110 c!325504) b!2015112))

(assert (= (and b!2015110 (not c!325504)) b!2015109))

(assert (= (and b!2015109 c!325507) b!2015107))

(assert (= (and b!2015109 (not c!325507)) b!2015108))

(assert (= (or b!2015107 b!2015108) bm!123289))

(assert (= (or b!2015107 b!2015108) bm!123291))

(assert (= (or b!2015112 b!2015107) bm!123287))

(assert (= (or b!2015112 bm!123291) bm!123288))

(assert (= (or b!2015112 b!2015107) bm!123290))

(assert (= (and bm!123290 c!325505) b!2015111))

(assert (= (and bm!123290 (not c!325505)) b!2015106))

(declare-fun m!2448421 () Bool)

(assert (=> bm!123287 m!2448421))

(declare-fun m!2448423 () Bool)

(assert (=> b!2015108 m!2448423))

(assert (=> b!2015108 m!2448423))

(declare-fun m!2448425 () Bool)

(assert (=> b!2015108 m!2448425))

(assert (=> b!2015108 m!2448423))

(declare-fun m!2448427 () Bool)

(assert (=> b!2015108 m!2448427))

(declare-fun m!2448429 () Bool)

(assert (=> b!2015108 m!2448429))

(declare-fun m!2448431 () Bool)

(assert (=> b!2015107 m!2448431))

(declare-fun m!2448433 () Bool)

(assert (=> bm!123289 m!2448433))

(assert (=> b!2015110 m!2448421))

(declare-fun m!2448435 () Bool)

(assert (=> b!2015110 m!2448435))

(declare-fun m!2448437 () Bool)

(assert (=> b!2015110 m!2448437))

(declare-fun m!2448439 () Bool)

(assert (=> b!2015110 m!2448439))

(declare-fun m!2448441 () Bool)

(assert (=> b!2015110 m!2448441))

(assert (=> b!2015110 m!2448435))

(assert (=> b!2015110 m!2448437))

(declare-fun m!2448443 () Bool)

(assert (=> b!2015110 m!2448443))

(assert (=> b!2015110 m!2448421))

(declare-fun m!2448447 () Bool)

(assert (=> bm!123290 m!2448447))

(declare-fun m!2448449 () Bool)

(assert (=> b!2015106 m!2448449))

(declare-fun m!2448455 () Bool)

(assert (=> bm!123288 m!2448455))

(assert (=> b!2014558 d!614963))

(declare-fun d!615033 () Bool)

(declare-fun list!9025 (Conc!7398) List!22217)

(assert (=> d!615033 (= (list!9021 (charsOf!2516 separatorToken!354)) (list!9025 (c!325398 (charsOf!2516 separatorToken!354))))))

(declare-fun bs!419928 () Bool)

(assert (= bs!419928 d!615033))

(declare-fun m!2448463 () Bool)

(assert (=> bs!419928 m!2448463))

(assert (=> b!2014558 d!615033))

(declare-fun b!2015171 () Bool)

(declare-fun e!1273440 () Bool)

(assert (=> b!2015171 (= e!1273440 true)))

(declare-fun d!615039 () Bool)

(assert (=> d!615039 e!1273440))

(assert (= d!615039 b!2015171))

(declare-fun order!14109 () Int)

(declare-fun lambda!76246 () Int)

(declare-fun dynLambda!10945 (Int Int) Int)

(assert (=> b!2015171 (< (dynLambda!10940 order!14101 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) (dynLambda!10945 order!14109 lambda!76246))))

(assert (=> b!2015171 (< (dynLambda!10942 order!14105 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) (dynLambda!10945 order!14109 lambda!76246))))

(declare-fun dynLambda!10946 (Int BalanceConc!14612) TokenValue!4112)

(assert (=> d!615039 (= (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) lt!756476) (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598)))))))

(declare-fun lt!756694 () Unit!36722)

(declare-fun Forall2of!233 (Int BalanceConc!14612 BalanceConc!14612) Unit!36722)

(assert (=> d!615039 (= lt!756694 (Forall2of!233 lambda!76246 lt!756476 (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598)))))))

(assert (=> d!615039 (= (list!9021 lt!756476) (list!9021 (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598)))))))

(assert (=> d!615039 (= (lemmaEqSameImage!662 (transformation!3976 (rule!6203 (h!27538 tokens!598))) lt!756476 (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598)))) lt!756694)))

(declare-fun b_lambda!67443 () Bool)

(assert (=> (not b_lambda!67443) (not d!615039)))

(declare-fun tb!126101 () Bool)

(declare-fun t!188229 () Bool)

(assert (=> (and b!2014553 (= (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188229) tb!126101))

(declare-fun result!151106 () Bool)

(assert (=> tb!126101 (= result!151106 (inv!21 (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) lt!756476)))))

(declare-fun m!2448477 () Bool)

(assert (=> tb!126101 m!2448477))

(assert (=> d!615039 t!188229))

(declare-fun b_and!159567 () Bool)

(assert (= b_and!159493 (and (=> t!188229 result!151106) b_and!159567)))

(declare-fun tb!126103 () Bool)

(declare-fun t!188231 () Bool)

(assert (=> (and b!2014537 (= (toValue!5645 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188231) tb!126103))

(declare-fun result!151110 () Bool)

(assert (= result!151110 result!151106))

(assert (=> d!615039 t!188231))

(declare-fun b_and!159569 () Bool)

(assert (= b_and!159497 (and (=> t!188231 result!151110) b_and!159569)))

(declare-fun t!188233 () Bool)

(declare-fun tb!126105 () Bool)

(assert (=> (and b!2014544 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188233) tb!126105))

(declare-fun result!151112 () Bool)

(assert (= result!151112 result!151106))

(assert (=> d!615039 t!188233))

(declare-fun b_and!159571 () Bool)

(assert (= b_and!159501 (and (=> t!188233 result!151112) b_and!159571)))

(declare-fun b_lambda!67445 () Bool)

(assert (=> (not b_lambda!67445) (not d!615039)))

(declare-fun tb!126107 () Bool)

(declare-fun t!188235 () Bool)

(assert (=> (and b!2014553 (= (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188235) tb!126107))

(declare-fun result!151114 () Bool)

(assert (=> tb!126107 (= result!151114 (inv!21 (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598))))))))

(declare-fun m!2448479 () Bool)

(assert (=> tb!126107 m!2448479))

(assert (=> d!615039 t!188235))

(declare-fun b_and!159573 () Bool)

(assert (= b_and!159567 (and (=> t!188235 result!151114) b_and!159573)))

(declare-fun tb!126109 () Bool)

(declare-fun t!188237 () Bool)

(assert (=> (and b!2014537 (= (toValue!5645 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188237) tb!126109))

(declare-fun result!151116 () Bool)

(assert (= result!151116 result!151114))

(assert (=> d!615039 t!188237))

(declare-fun b_and!159575 () Bool)

(assert (= b_and!159569 (and (=> t!188237 result!151116) b_and!159575)))

(declare-fun t!188239 () Bool)

(declare-fun tb!126111 () Bool)

(assert (=> (and b!2014544 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188239) tb!126111))

(declare-fun result!151118 () Bool)

(assert (= result!151118 result!151114))

(assert (=> d!615039 t!188239))

(declare-fun b_and!159577 () Bool)

(assert (= b_and!159571 (and (=> t!188239 result!151118) b_and!159577)))

(assert (=> d!615039 m!2447661))

(declare-fun m!2448481 () Bool)

(assert (=> d!615039 m!2448481))

(assert (=> d!615039 m!2447685))

(assert (=> d!615039 m!2447661))

(declare-fun m!2448483 () Bool)

(assert (=> d!615039 m!2448483))

(assert (=> d!615039 m!2447661))

(declare-fun m!2448485 () Bool)

(assert (=> d!615039 m!2448485))

(declare-fun m!2448487 () Bool)

(assert (=> d!615039 m!2448487))

(assert (=> b!2014558 d!615039))

(declare-fun d!615041 () Bool)

(assert (=> d!615041 (= (isDefined!3922 lt!756484) (not (isEmpty!13759 lt!756484)))))

(declare-fun bs!419929 () Bool)

(assert (= bs!419929 d!615041))

(declare-fun m!2448489 () Bool)

(assert (=> bs!419929 m!2448489))

(assert (=> b!2014558 d!615041))

(declare-fun d!615045 () Bool)

(declare-fun isEmpty!13760 (Option!4634) Bool)

(assert (=> d!615045 (= (isDefined!3921 lt!756487) (not (isEmpty!13760 lt!756487)))))

(declare-fun bs!419931 () Bool)

(assert (= bs!419931 d!615045))

(declare-fun m!2448491 () Bool)

(assert (=> bs!419931 m!2448491))

(assert (=> b!2014558 d!615045))

(declare-fun b!2015209 () Bool)

(declare-fun e!1273462 () Bool)

(declare-fun lt!756703 () Option!4634)

(assert (=> b!2015209 (= e!1273462 (= (tag!4450 (get!7013 lt!756703)) (tag!4450 (rule!6203 separatorToken!354))))))

(declare-fun b!2015210 () Bool)

(declare-fun e!1273459 () Bool)

(assert (=> b!2015210 (= e!1273459 e!1273462)))

(declare-fun res!883982 () Bool)

(assert (=> b!2015210 (=> (not res!883982) (not e!1273462))))

(assert (=> b!2015210 (= res!883982 (contains!4063 rules!3198 (get!7013 lt!756703)))))

(declare-fun b!2015212 () Bool)

(declare-fun lt!756702 () Unit!36722)

(declare-fun lt!756701 () Unit!36722)

(assert (=> b!2015212 (= lt!756702 lt!756701)))

(assert (=> b!2015212 (rulesInvariant!3196 thiss!23328 (t!188159 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!298 (LexerInterface!3589 Rule!7752 List!22218) Unit!36722)

(assert (=> b!2015212 (= lt!756701 (lemmaInvariantOnRulesThenOnTail!298 thiss!23328 (h!27537 rules!3198) (t!188159 rules!3198)))))

(declare-fun e!1273461 () Option!4634)

(assert (=> b!2015212 (= e!1273461 (getRuleFromTag!791 thiss!23328 (t!188159 rules!3198) (tag!4450 (rule!6203 separatorToken!354))))))

(declare-fun b!2015213 () Bool)

(declare-fun e!1273460 () Option!4634)

(assert (=> b!2015213 (= e!1273460 e!1273461)))

(declare-fun c!325519 () Bool)

(assert (=> b!2015213 (= c!325519 (and ((_ is Cons!22136) rules!3198) (not (= (tag!4450 (h!27537 rules!3198)) (tag!4450 (rule!6203 separatorToken!354))))))))

(declare-fun b!2015214 () Bool)

(assert (=> b!2015214 (= e!1273461 None!4633)))

(declare-fun d!615047 () Bool)

(assert (=> d!615047 e!1273459))

(declare-fun res!883983 () Bool)

(assert (=> d!615047 (=> res!883983 e!1273459)))

(assert (=> d!615047 (= res!883983 (isEmpty!13760 lt!756703))))

(assert (=> d!615047 (= lt!756703 e!1273460)))

(declare-fun c!325518 () Bool)

(assert (=> d!615047 (= c!325518 (and ((_ is Cons!22136) rules!3198) (= (tag!4450 (h!27537 rules!3198)) (tag!4450 (rule!6203 separatorToken!354)))))))

(assert (=> d!615047 (rulesInvariant!3196 thiss!23328 rules!3198)))

(assert (=> d!615047 (= (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 separatorToken!354))) lt!756703)))

(declare-fun b!2015211 () Bool)

(assert (=> b!2015211 (= e!1273460 (Some!4633 (h!27537 rules!3198)))))

(assert (= (and d!615047 c!325518) b!2015211))

(assert (= (and d!615047 (not c!325518)) b!2015213))

(assert (= (and b!2015213 c!325519) b!2015212))

(assert (= (and b!2015213 (not c!325519)) b!2015214))

(assert (= (and d!615047 (not res!883983)) b!2015210))

(assert (= (and b!2015210 res!883982) b!2015209))

(declare-fun m!2448493 () Bool)

(assert (=> b!2015209 m!2448493))

(assert (=> b!2015210 m!2448493))

(assert (=> b!2015210 m!2448493))

(declare-fun m!2448495 () Bool)

(assert (=> b!2015210 m!2448495))

(declare-fun m!2448497 () Bool)

(assert (=> b!2015212 m!2448497))

(declare-fun m!2448499 () Bool)

(assert (=> b!2015212 m!2448499))

(declare-fun m!2448501 () Bool)

(assert (=> b!2015212 m!2448501))

(declare-fun m!2448503 () Bool)

(assert (=> d!615047 m!2448503))

(assert (=> d!615047 m!2447773))

(assert (=> b!2014558 d!615047))

(declare-fun b!2015215 () Bool)

(declare-fun e!1273466 () Bool)

(declare-fun lt!756706 () Option!4634)

(assert (=> b!2015215 (= e!1273466 (= (tag!4450 (get!7013 lt!756706)) (tag!4450 (rule!6203 (h!27538 tokens!598)))))))

(declare-fun b!2015216 () Bool)

(declare-fun e!1273463 () Bool)

(assert (=> b!2015216 (= e!1273463 e!1273466)))

(declare-fun res!883984 () Bool)

(assert (=> b!2015216 (=> (not res!883984) (not e!1273466))))

(assert (=> b!2015216 (= res!883984 (contains!4063 rules!3198 (get!7013 lt!756706)))))

(declare-fun b!2015218 () Bool)

(declare-fun lt!756705 () Unit!36722)

(declare-fun lt!756704 () Unit!36722)

(assert (=> b!2015218 (= lt!756705 lt!756704)))

(assert (=> b!2015218 (rulesInvariant!3196 thiss!23328 (t!188159 rules!3198))))

(assert (=> b!2015218 (= lt!756704 (lemmaInvariantOnRulesThenOnTail!298 thiss!23328 (h!27537 rules!3198) (t!188159 rules!3198)))))

(declare-fun e!1273465 () Option!4634)

(assert (=> b!2015218 (= e!1273465 (getRuleFromTag!791 thiss!23328 (t!188159 rules!3198) (tag!4450 (rule!6203 (h!27538 tokens!598)))))))

(declare-fun b!2015219 () Bool)

(declare-fun e!1273464 () Option!4634)

(assert (=> b!2015219 (= e!1273464 e!1273465)))

(declare-fun c!325521 () Bool)

(assert (=> b!2015219 (= c!325521 (and ((_ is Cons!22136) rules!3198) (not (= (tag!4450 (h!27537 rules!3198)) (tag!4450 (rule!6203 (h!27538 tokens!598)))))))))

(declare-fun b!2015220 () Bool)

(assert (=> b!2015220 (= e!1273465 None!4633)))

(declare-fun d!615049 () Bool)

(assert (=> d!615049 e!1273463))

(declare-fun res!883985 () Bool)

(assert (=> d!615049 (=> res!883985 e!1273463)))

(assert (=> d!615049 (= res!883985 (isEmpty!13760 lt!756706))))

(assert (=> d!615049 (= lt!756706 e!1273464)))

(declare-fun c!325520 () Bool)

(assert (=> d!615049 (= c!325520 (and ((_ is Cons!22136) rules!3198) (= (tag!4450 (h!27537 rules!3198)) (tag!4450 (rule!6203 (h!27538 tokens!598))))))))

(assert (=> d!615049 (rulesInvariant!3196 thiss!23328 rules!3198)))

(assert (=> d!615049 (= (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 (h!27538 tokens!598)))) lt!756706)))

(declare-fun b!2015217 () Bool)

(assert (=> b!2015217 (= e!1273464 (Some!4633 (h!27537 rules!3198)))))

(assert (= (and d!615049 c!325520) b!2015217))

(assert (= (and d!615049 (not c!325520)) b!2015219))

(assert (= (and b!2015219 c!325521) b!2015218))

(assert (= (and b!2015219 (not c!325521)) b!2015220))

(assert (= (and d!615049 (not res!883985)) b!2015216))

(assert (= (and b!2015216 res!883984) b!2015215))

(declare-fun m!2448505 () Bool)

(assert (=> b!2015215 m!2448505))

(assert (=> b!2015216 m!2448505))

(assert (=> b!2015216 m!2448505))

(declare-fun m!2448507 () Bool)

(assert (=> b!2015216 m!2448507))

(assert (=> b!2015218 m!2448497))

(assert (=> b!2015218 m!2448499))

(declare-fun m!2448509 () Bool)

(assert (=> b!2015218 m!2448509))

(declare-fun m!2448511 () Bool)

(assert (=> d!615049 m!2448511))

(assert (=> d!615049 m!2447773))

(assert (=> b!2014558 d!615049))

(declare-fun b!2015225 () Bool)

(declare-fun e!1273469 () Bool)

(assert (=> b!2015225 (= e!1273469 true)))

(declare-fun d!615051 () Bool)

(assert (=> d!615051 e!1273469))

(assert (= d!615051 b!2015225))

(declare-fun lambda!76249 () Int)

(declare-fun order!14111 () Int)

(declare-fun dynLambda!10947 (Int Int) Int)

(assert (=> b!2015225 (< (dynLambda!10940 order!14101 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) (dynLambda!10947 order!14111 lambda!76249))))

(assert (=> b!2015225 (< (dynLambda!10942 order!14105 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) (dynLambda!10947 order!14111 lambda!76249))))

(assert (=> d!615051 (= (list!9021 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) lt!756476))) (list!9021 lt!756476))))

(declare-fun lt!756709 () Unit!36722)

(declare-fun ForallOf!437 (Int BalanceConc!14612) Unit!36722)

(assert (=> d!615051 (= lt!756709 (ForallOf!437 lambda!76249 lt!756476))))

(assert (=> d!615051 (= (lemmaSemiInverse!933 (transformation!3976 (rule!6203 (h!27538 tokens!598))) lt!756476) lt!756709)))

(declare-fun b_lambda!67465 () Bool)

(assert (=> (not b_lambda!67465) (not d!615051)))

(declare-fun t!188242 () Bool)

(declare-fun tb!126113 () Bool)

(assert (=> (and b!2014553 (= (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188242) tb!126113))

(declare-fun b!2015226 () Bool)

(declare-fun tp!600673 () Bool)

(declare-fun e!1273470 () Bool)

(assert (=> b!2015226 (= e!1273470 (and (inv!29304 (c!325398 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) lt!756476)))) tp!600673))))

(declare-fun result!151120 () Bool)

(assert (=> tb!126113 (= result!151120 (and (inv!29306 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (dynLambda!10946 (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) lt!756476))) e!1273470))))

(assert (= tb!126113 b!2015226))

(declare-fun m!2448513 () Bool)

(assert (=> b!2015226 m!2448513))

(declare-fun m!2448515 () Bool)

(assert (=> tb!126113 m!2448515))

(assert (=> d!615051 t!188242))

(declare-fun b_and!159579 () Bool)

(assert (= b_and!159505 (and (=> t!188242 result!151120) b_and!159579)))

(declare-fun t!188244 () Bool)

(declare-fun tb!126115 () Bool)

(assert (=> (and b!2014537 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188244) tb!126115))

(declare-fun result!151122 () Bool)

(assert (= result!151122 result!151120))

(assert (=> d!615051 t!188244))

(declare-fun b_and!159581 () Bool)

(assert (= b_and!159507 (and (=> t!188244 result!151122) b_and!159581)))

(declare-fun t!188246 () Bool)

(declare-fun tb!126117 () Bool)

(assert (=> (and b!2014544 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188246) tb!126117))

(declare-fun result!151124 () Bool)

(assert (= result!151124 result!151120))

(assert (=> d!615051 t!188246))

(declare-fun b_and!159583 () Bool)

(assert (= b_and!159509 (and (=> t!188246 result!151124) b_and!159583)))

(declare-fun b_lambda!67467 () Bool)

(assert (=> (not b_lambda!67467) (not d!615051)))

(assert (=> d!615051 t!188229))

(declare-fun b_and!159585 () Bool)

(assert (= b_and!159573 (and (=> t!188229 result!151106) b_and!159585)))

(assert (=> d!615051 t!188231))

(declare-fun b_and!159587 () Bool)

(assert (= b_and!159575 (and (=> t!188231 result!151110) b_and!159587)))

(assert (=> d!615051 t!188233))

(declare-fun b_and!159589 () Bool)

(assert (= b_and!159577 (and (=> t!188233 result!151112) b_and!159589)))

(declare-fun m!2448517 () Bool)

(assert (=> d!615051 m!2448517))

(declare-fun m!2448519 () Bool)

(assert (=> d!615051 m!2448519))

(assert (=> d!615051 m!2448487))

(assert (=> d!615051 m!2448517))

(declare-fun m!2448521 () Bool)

(assert (=> d!615051 m!2448521))

(assert (=> d!615051 m!2447685))

(assert (=> d!615051 m!2448487))

(assert (=> b!2014558 d!615051))

(declare-fun d!615053 () Bool)

(declare-fun e!1273471 () Bool)

(assert (=> d!615053 e!1273471))

(declare-fun res!883986 () Bool)

(assert (=> d!615053 (=> (not res!883986) (not e!1273471))))

(assert (=> d!615053 (= res!883986 (isDefined!3921 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 separatorToken!354)))))))

(declare-fun lt!756710 () Unit!36722)

(assert (=> d!615053 (= lt!756710 (choose!12272 thiss!23328 rules!3198 lt!756474 separatorToken!354))))

(assert (=> d!615053 (rulesInvariant!3196 thiss!23328 rules!3198)))

(assert (=> d!615053 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!791 thiss!23328 rules!3198 lt!756474 separatorToken!354) lt!756710)))

(declare-fun b!2015227 () Bool)

(declare-fun res!883987 () Bool)

(assert (=> b!2015227 (=> (not res!883987) (not e!1273471))))

(assert (=> b!2015227 (= res!883987 (matchR!2667 (regex!3976 (get!7013 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 separatorToken!354))))) (list!9021 (charsOf!2516 separatorToken!354))))))

(declare-fun b!2015228 () Bool)

(assert (=> b!2015228 (= e!1273471 (= (rule!6203 separatorToken!354) (get!7013 (getRuleFromTag!791 thiss!23328 rules!3198 (tag!4450 (rule!6203 separatorToken!354))))))))

(assert (= (and d!615053 res!883986) b!2015227))

(assert (= (and b!2015227 res!883987) b!2015228))

(assert (=> d!615053 m!2447689))

(assert (=> d!615053 m!2447689))

(declare-fun m!2448523 () Bool)

(assert (=> d!615053 m!2448523))

(declare-fun m!2448525 () Bool)

(assert (=> d!615053 m!2448525))

(assert (=> d!615053 m!2447773))

(assert (=> b!2015227 m!2447675))

(assert (=> b!2015227 m!2447675))

(assert (=> b!2015227 m!2447681))

(assert (=> b!2015227 m!2447681))

(declare-fun m!2448527 () Bool)

(assert (=> b!2015227 m!2448527))

(assert (=> b!2015227 m!2447689))

(assert (=> b!2015227 m!2447689))

(declare-fun m!2448529 () Bool)

(assert (=> b!2015227 m!2448529))

(assert (=> b!2015228 m!2447689))

(assert (=> b!2015228 m!2447689))

(assert (=> b!2015228 m!2448529))

(assert (=> b!2014558 d!615053))

(declare-fun d!615055 () Bool)

(declare-fun lt!756713 () BalanceConc!14612)

(assert (=> d!615055 (= (list!9021 lt!756713) (originalCharacters!4783 (h!27538 tokens!598)))))

(assert (=> d!615055 (= lt!756713 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (value!124907 (h!27538 tokens!598))))))

(assert (=> d!615055 (= (charsOf!2516 (h!27538 tokens!598)) lt!756713)))

(declare-fun b_lambda!67469 () Bool)

(assert (=> (not b_lambda!67469) (not d!615055)))

(declare-fun tb!126119 () Bool)

(declare-fun t!188248 () Bool)

(assert (=> (and b!2014553 (= (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188248) tb!126119))

(declare-fun b!2015229 () Bool)

(declare-fun e!1273472 () Bool)

(declare-fun tp!600674 () Bool)

(assert (=> b!2015229 (= e!1273472 (and (inv!29304 (c!325398 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (value!124907 (h!27538 tokens!598))))) tp!600674))))

(declare-fun result!151126 () Bool)

(assert (=> tb!126119 (= result!151126 (and (inv!29306 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (value!124907 (h!27538 tokens!598)))) e!1273472))))

(assert (= tb!126119 b!2015229))

(declare-fun m!2448531 () Bool)

(assert (=> b!2015229 m!2448531))

(declare-fun m!2448533 () Bool)

(assert (=> tb!126119 m!2448533))

(assert (=> d!615055 t!188248))

(declare-fun b_and!159591 () Bool)

(assert (= b_and!159579 (and (=> t!188248 result!151126) b_and!159591)))

(declare-fun tb!126121 () Bool)

(declare-fun t!188250 () Bool)

(assert (=> (and b!2014537 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188250) tb!126121))

(declare-fun result!151128 () Bool)

(assert (= result!151128 result!151126))

(assert (=> d!615055 t!188250))

(declare-fun b_and!159593 () Bool)

(assert (= b_and!159581 (and (=> t!188250 result!151128) b_and!159593)))

(declare-fun t!188252 () Bool)

(declare-fun tb!126123 () Bool)

(assert (=> (and b!2014544 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188252) tb!126123))

(declare-fun result!151130 () Bool)

(assert (= result!151130 result!151126))

(assert (=> d!615055 t!188252))

(declare-fun b_and!159595 () Bool)

(assert (= b_and!159583 (and (=> t!188252 result!151130) b_and!159595)))

(declare-fun m!2448535 () Bool)

(assert (=> d!615055 m!2448535))

(declare-fun m!2448537 () Bool)

(assert (=> d!615055 m!2448537))

(assert (=> b!2014558 d!615055))

(declare-fun d!615057 () Bool)

(assert (=> d!615057 (= (seqFromList!2830 (originalCharacters!4783 (h!27538 tokens!598))) (fromListB!1269 (originalCharacters!4783 (h!27538 tokens!598))))))

(declare-fun bs!419932 () Bool)

(assert (= bs!419932 d!615057))

(declare-fun m!2448539 () Bool)

(assert (=> bs!419932 m!2448539))

(assert (=> b!2014558 d!615057))

(declare-fun b!2015240 () Bool)

(declare-fun res!883993 () Bool)

(declare-fun e!1273477 () Bool)

(assert (=> b!2015240 (=> (not res!883993) (not e!1273477))))

(declare-fun lt!756716 () List!22217)

(assert (=> b!2015240 (= res!883993 (= (size!17294 lt!756716) (+ (size!17294 lt!756478) (size!17294 lt!756485))))))

(declare-fun b!2015241 () Bool)

(assert (=> b!2015241 (= e!1273477 (or (not (= lt!756485 Nil!22135)) (= lt!756716 lt!756478)))))

(declare-fun b!2015238 () Bool)

(declare-fun e!1273478 () List!22217)

(assert (=> b!2015238 (= e!1273478 lt!756485)))

(declare-fun d!615059 () Bool)

(assert (=> d!615059 e!1273477))

(declare-fun res!883992 () Bool)

(assert (=> d!615059 (=> (not res!883992) (not e!1273477))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3252 (List!22217) (InoxSet C!10948))

(assert (=> d!615059 (= res!883992 (= (content!3252 lt!756716) ((_ map or) (content!3252 lt!756478) (content!3252 lt!756485))))))

(assert (=> d!615059 (= lt!756716 e!1273478)))

(declare-fun c!325525 () Bool)

(assert (=> d!615059 (= c!325525 ((_ is Nil!22135) lt!756478))))

(assert (=> d!615059 (= (++!5973 lt!756478 lt!756485) lt!756716)))

(declare-fun b!2015239 () Bool)

(assert (=> b!2015239 (= e!1273478 (Cons!22135 (h!27536 lt!756478) (++!5973 (t!188158 lt!756478) lt!756485)))))

(assert (= (and d!615059 c!325525) b!2015238))

(assert (= (and d!615059 (not c!325525)) b!2015239))

(assert (= (and d!615059 res!883992) b!2015240))

(assert (= (and b!2015240 res!883993) b!2015241))

(declare-fun m!2448541 () Bool)

(assert (=> b!2015240 m!2448541))

(assert (=> b!2015240 m!2448187))

(declare-fun m!2448543 () Bool)

(assert (=> b!2015240 m!2448543))

(declare-fun m!2448545 () Bool)

(assert (=> d!615059 m!2448545))

(declare-fun m!2448547 () Bool)

(assert (=> d!615059 m!2448547))

(declare-fun m!2448549 () Bool)

(assert (=> d!615059 m!2448549))

(declare-fun m!2448551 () Bool)

(assert (=> b!2015239 m!2448551))

(assert (=> b!2014558 d!615059))

(declare-fun d!615061 () Bool)

(declare-fun lt!756717 () BalanceConc!14612)

(assert (=> d!615061 (= (list!9021 lt!756717) (originalCharacters!4783 separatorToken!354))))

(assert (=> d!615061 (= lt!756717 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (value!124907 separatorToken!354)))))

(assert (=> d!615061 (= (charsOf!2516 separatorToken!354) lt!756717)))

(declare-fun b_lambda!67471 () Bool)

(assert (=> (not b_lambda!67471) (not d!615061)))

(assert (=> d!615061 t!188164))

(declare-fun b_and!159597 () Bool)

(assert (= b_and!159591 (and (=> t!188164 result!151036) b_and!159597)))

(assert (=> d!615061 t!188166))

(declare-fun b_and!159599 () Bool)

(assert (= b_and!159593 (and (=> t!188166 result!151040) b_and!159599)))

(assert (=> d!615061 t!188168))

(declare-fun b_and!159601 () Bool)

(assert (= b_and!159595 (and (=> t!188168 result!151042) b_and!159601)))

(declare-fun m!2448553 () Bool)

(assert (=> d!615061 m!2448553))

(assert (=> d!615061 m!2447817))

(assert (=> b!2014558 d!615061))

(declare-fun d!615063 () Bool)

(assert (=> d!615063 (= (isDefined!3921 lt!756488) (not (isEmpty!13760 lt!756488)))))

(declare-fun bs!419933 () Bool)

(assert (= bs!419933 d!615063))

(declare-fun m!2448555 () Bool)

(assert (=> bs!419933 m!2448555))

(assert (=> b!2014558 d!615063))

(declare-fun d!615065 () Bool)

(assert (=> d!615065 (= (list!9021 lt!756476) (list!9025 (c!325398 lt!756476)))))

(declare-fun bs!419934 () Bool)

(assert (= bs!419934 d!615065))

(declare-fun m!2448557 () Bool)

(assert (=> bs!419934 m!2448557))

(assert (=> b!2014558 d!615065))

(declare-fun d!615067 () Bool)

(declare-fun lt!756720 () Bool)

(declare-fun content!3253 (List!22218) (InoxSet Rule!7752))

(assert (=> d!615067 (= lt!756720 (select (content!3253 rules!3198) (rule!6203 (h!27538 tokens!598))))))

(declare-fun e!1273484 () Bool)

(assert (=> d!615067 (= lt!756720 e!1273484)))

(declare-fun res!883998 () Bool)

(assert (=> d!615067 (=> (not res!883998) (not e!1273484))))

(assert (=> d!615067 (= res!883998 ((_ is Cons!22136) rules!3198))))

(assert (=> d!615067 (= (contains!4063 rules!3198 (rule!6203 (h!27538 tokens!598))) lt!756720)))

(declare-fun b!2015246 () Bool)

(declare-fun e!1273483 () Bool)

(assert (=> b!2015246 (= e!1273484 e!1273483)))

(declare-fun res!883999 () Bool)

(assert (=> b!2015246 (=> res!883999 e!1273483)))

(assert (=> b!2015246 (= res!883999 (= (h!27537 rules!3198) (rule!6203 (h!27538 tokens!598))))))

(declare-fun b!2015247 () Bool)

(assert (=> b!2015247 (= e!1273483 (contains!4063 (t!188159 rules!3198) (rule!6203 (h!27538 tokens!598))))))

(assert (= (and d!615067 res!883998) b!2015246))

(assert (= (and b!2015246 (not res!883999)) b!2015247))

(declare-fun m!2448559 () Bool)

(assert (=> d!615067 m!2448559))

(declare-fun m!2448561 () Bool)

(assert (=> d!615067 m!2448561))

(declare-fun m!2448563 () Bool)

(assert (=> b!2015247 m!2448563))

(assert (=> b!2014564 d!615067))

(declare-fun d!615069 () Bool)

(assert (=> d!615069 (= (inv!29298 (tag!4450 (rule!6203 separatorToken!354))) (= (mod (str.len (value!124906 (tag!4450 (rule!6203 separatorToken!354)))) 2) 0))))

(assert (=> b!2014565 d!615069))

(declare-fun d!615071 () Bool)

(declare-fun res!884000 () Bool)

(declare-fun e!1273485 () Bool)

(assert (=> d!615071 (=> (not res!884000) (not e!1273485))))

(assert (=> d!615071 (= res!884000 (semiInverseModEq!1596 (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354)))))))

(assert (=> d!615071 (= (inv!29301 (transformation!3976 (rule!6203 separatorToken!354))) e!1273485)))

(declare-fun b!2015248 () Bool)

(assert (=> b!2015248 (= e!1273485 (equivClasses!1523 (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354)))))))

(assert (= (and d!615071 res!884000) b!2015248))

(declare-fun m!2448565 () Bool)

(assert (=> d!615071 m!2448565))

(declare-fun m!2448567 () Bool)

(assert (=> b!2015248 m!2448567))

(assert (=> b!2014565 d!615071))

(declare-fun d!615073 () Bool)

(declare-fun lt!756722 () Bool)

(declare-fun e!1273486 () Bool)

(assert (=> d!615073 (= lt!756722 e!1273486)))

(declare-fun res!884003 () Bool)

(assert (=> d!615073 (=> (not res!884003) (not e!1273486))))

(assert (=> d!615073 (= res!884003 (= (list!9023 (_1!11868 (lex!1605 thiss!23328 rules!3198 (print!1551 thiss!23328 (singletonSeq!1952 separatorToken!354))))) (list!9023 (singletonSeq!1952 separatorToken!354))))))

(declare-fun e!1273487 () Bool)

(assert (=> d!615073 (= lt!756722 e!1273487)))

(declare-fun res!884001 () Bool)

(assert (=> d!615073 (=> (not res!884001) (not e!1273487))))

(declare-fun lt!756721 () tuple2!20798)

(assert (=> d!615073 (= res!884001 (= (size!17292 (_1!11868 lt!756721)) 1))))

(assert (=> d!615073 (= lt!756721 (lex!1605 thiss!23328 rules!3198 (print!1551 thiss!23328 (singletonSeq!1952 separatorToken!354))))))

(assert (=> d!615073 (not (isEmpty!13748 rules!3198))))

(assert (=> d!615073 (= (rulesProduceIndividualToken!1761 thiss!23328 rules!3198 separatorToken!354) lt!756722)))

(declare-fun b!2015249 () Bool)

(declare-fun res!884002 () Bool)

(assert (=> b!2015249 (=> (not res!884002) (not e!1273487))))

(assert (=> b!2015249 (= res!884002 (= (apply!5807 (_1!11868 lt!756721) 0) separatorToken!354))))

(declare-fun b!2015250 () Bool)

(assert (=> b!2015250 (= e!1273487 (isEmpty!13755 (_2!11868 lt!756721)))))

(declare-fun b!2015251 () Bool)

(assert (=> b!2015251 (= e!1273486 (isEmpty!13755 (_2!11868 (lex!1605 thiss!23328 rules!3198 (print!1551 thiss!23328 (singletonSeq!1952 separatorToken!354))))))))

(assert (= (and d!615073 res!884001) b!2015249))

(assert (= (and b!2015249 res!884002) b!2015250))

(assert (= (and d!615073 res!884003) b!2015251))

(declare-fun m!2448569 () Bool)

(assert (=> d!615073 m!2448569))

(declare-fun m!2448571 () Bool)

(assert (=> d!615073 m!2448571))

(declare-fun m!2448573 () Bool)

(assert (=> d!615073 m!2448573))

(declare-fun m!2448575 () Bool)

(assert (=> d!615073 m!2448575))

(assert (=> d!615073 m!2447655))

(assert (=> d!615073 m!2448571))

(declare-fun m!2448577 () Bool)

(assert (=> d!615073 m!2448577))

(assert (=> d!615073 m!2448573))

(declare-fun m!2448579 () Bool)

(assert (=> d!615073 m!2448579))

(assert (=> d!615073 m!2448571))

(declare-fun m!2448581 () Bool)

(assert (=> b!2015249 m!2448581))

(declare-fun m!2448583 () Bool)

(assert (=> b!2015250 m!2448583))

(assert (=> b!2015251 m!2448571))

(assert (=> b!2015251 m!2448571))

(assert (=> b!2015251 m!2448573))

(assert (=> b!2015251 m!2448573))

(assert (=> b!2015251 m!2448579))

(declare-fun m!2448585 () Bool)

(assert (=> b!2015251 m!2448585))

(assert (=> b!2014540 d!615073))

(declare-fun d!615075 () Bool)

(declare-fun lt!756723 () Bool)

(assert (=> d!615075 (= lt!756723 (select (content!3253 rules!3198) (rule!6203 separatorToken!354)))))

(declare-fun e!1273489 () Bool)

(assert (=> d!615075 (= lt!756723 e!1273489)))

(declare-fun res!884004 () Bool)

(assert (=> d!615075 (=> (not res!884004) (not e!1273489))))

(assert (=> d!615075 (= res!884004 ((_ is Cons!22136) rules!3198))))

(assert (=> d!615075 (= (contains!4063 rules!3198 (rule!6203 separatorToken!354)) lt!756723)))

(declare-fun b!2015252 () Bool)

(declare-fun e!1273488 () Bool)

(assert (=> b!2015252 (= e!1273489 e!1273488)))

(declare-fun res!884005 () Bool)

(assert (=> b!2015252 (=> res!884005 e!1273488)))

(assert (=> b!2015252 (= res!884005 (= (h!27537 rules!3198) (rule!6203 separatorToken!354)))))

(declare-fun b!2015253 () Bool)

(assert (=> b!2015253 (= e!1273488 (contains!4063 (t!188159 rules!3198) (rule!6203 separatorToken!354)))))

(assert (= (and d!615075 res!884004) b!2015252))

(assert (= (and b!2015252 (not res!884005)) b!2015253))

(assert (=> d!615075 m!2448559))

(declare-fun m!2448587 () Bool)

(assert (=> d!615075 m!2448587))

(declare-fun m!2448589 () Bool)

(assert (=> b!2015253 m!2448589))

(assert (=> b!2014561 d!615075))

(declare-fun b!2015256 () Bool)

(declare-fun res!884007 () Bool)

(declare-fun e!1273490 () Bool)

(assert (=> b!2015256 (=> (not res!884007) (not e!1273490))))

(declare-fun lt!756724 () List!22217)

(assert (=> b!2015256 (= res!884007 (= (size!17294 lt!756724) (+ (size!17294 lt!756478) (size!17294 (++!5973 lt!756474 lt!756485)))))))

(declare-fun b!2015257 () Bool)

(assert (=> b!2015257 (= e!1273490 (or (not (= (++!5973 lt!756474 lt!756485) Nil!22135)) (= lt!756724 lt!756478)))))

(declare-fun b!2015254 () Bool)

(declare-fun e!1273491 () List!22217)

(assert (=> b!2015254 (= e!1273491 (++!5973 lt!756474 lt!756485))))

(declare-fun d!615077 () Bool)

(assert (=> d!615077 e!1273490))

(declare-fun res!884006 () Bool)

(assert (=> d!615077 (=> (not res!884006) (not e!1273490))))

(assert (=> d!615077 (= res!884006 (= (content!3252 lt!756724) ((_ map or) (content!3252 lt!756478) (content!3252 (++!5973 lt!756474 lt!756485)))))))

(assert (=> d!615077 (= lt!756724 e!1273491)))

(declare-fun c!325526 () Bool)

(assert (=> d!615077 (= c!325526 ((_ is Nil!22135) lt!756478))))

(assert (=> d!615077 (= (++!5973 lt!756478 (++!5973 lt!756474 lt!756485)) lt!756724)))

(declare-fun b!2015255 () Bool)

(assert (=> b!2015255 (= e!1273491 (Cons!22135 (h!27536 lt!756478) (++!5973 (t!188158 lt!756478) (++!5973 lt!756474 lt!756485))))))

(assert (= (and d!615077 c!325526) b!2015254))

(assert (= (and d!615077 (not c!325526)) b!2015255))

(assert (= (and d!615077 res!884006) b!2015256))

(assert (= (and b!2015256 res!884007) b!2015257))

(declare-fun m!2448591 () Bool)

(assert (=> b!2015256 m!2448591))

(assert (=> b!2015256 m!2448187))

(assert (=> b!2015256 m!2447735))

(declare-fun m!2448593 () Bool)

(assert (=> b!2015256 m!2448593))

(declare-fun m!2448595 () Bool)

(assert (=> d!615077 m!2448595))

(assert (=> d!615077 m!2448547))

(assert (=> d!615077 m!2447735))

(declare-fun m!2448597 () Bool)

(assert (=> d!615077 m!2448597))

(assert (=> b!2015255 m!2447735))

(declare-fun m!2448599 () Bool)

(assert (=> b!2015255 m!2448599))

(assert (=> b!2014562 d!615077))

(declare-fun d!615079 () Bool)

(declare-fun c!325529 () Bool)

(assert (=> d!615079 (= c!325529 ((_ is Cons!22137) (Cons!22137 (h!27538 tokens!598) Nil!22137)))))

(declare-fun e!1273494 () List!22217)

(assert (=> d!615079 (= (printList!1108 thiss!23328 (Cons!22137 (h!27538 tokens!598) Nil!22137)) e!1273494)))

(declare-fun b!2015262 () Bool)

(assert (=> b!2015262 (= e!1273494 (++!5973 (list!9021 (charsOf!2516 (h!27538 (Cons!22137 (h!27538 tokens!598) Nil!22137)))) (printList!1108 thiss!23328 (t!188160 (Cons!22137 (h!27538 tokens!598) Nil!22137)))))))

(declare-fun b!2015263 () Bool)

(assert (=> b!2015263 (= e!1273494 Nil!22135)))

(assert (= (and d!615079 c!325529) b!2015262))

(assert (= (and d!615079 (not c!325529)) b!2015263))

(declare-fun m!2448601 () Bool)

(assert (=> b!2015262 m!2448601))

(assert (=> b!2015262 m!2448601))

(declare-fun m!2448603 () Bool)

(assert (=> b!2015262 m!2448603))

(declare-fun m!2448605 () Bool)

(assert (=> b!2015262 m!2448605))

(assert (=> b!2015262 m!2448603))

(assert (=> b!2015262 m!2448605))

(declare-fun m!2448607 () Bool)

(assert (=> b!2015262 m!2448607))

(assert (=> b!2014562 d!615079))

(declare-fun c!325539 () Bool)

(declare-fun c!325540 () Bool)

(declare-fun bm!123301 () Bool)

(declare-fun call!123306 () List!22217)

(assert (=> bm!123301 (= call!123306 (usedCharacters!414 (ite c!325539 (reg!5730 (regex!3976 (rule!6203 separatorToken!354))) (ite c!325540 (regOne!11315 (regex!3976 (rule!6203 separatorToken!354))) (regTwo!11314 (regex!3976 (rule!6203 separatorToken!354)))))))))

(declare-fun d!615081 () Bool)

(declare-fun c!325541 () Bool)

(assert (=> d!615081 (= c!325541 (or ((_ is EmptyExpr!5401) (regex!3976 (rule!6203 separatorToken!354))) ((_ is EmptyLang!5401) (regex!3976 (rule!6203 separatorToken!354)))))))

(declare-fun e!1273504 () List!22217)

(assert (=> d!615081 (= (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354))) e!1273504)))

(declare-fun b!2015280 () Bool)

(declare-fun e!1273506 () List!22217)

(assert (=> b!2015280 (= e!1273504 e!1273506)))

(declare-fun c!325538 () Bool)

(assert (=> b!2015280 (= c!325538 ((_ is ElementMatch!5401) (regex!3976 (rule!6203 separatorToken!354))))))

(declare-fun b!2015281 () Bool)

(declare-fun e!1273503 () List!22217)

(declare-fun call!123307 () List!22217)

(assert (=> b!2015281 (= e!1273503 call!123307)))

(declare-fun bm!123302 () Bool)

(declare-fun call!123309 () List!22217)

(assert (=> bm!123302 (= call!123309 (usedCharacters!414 (ite c!325540 (regTwo!11315 (regex!3976 (rule!6203 separatorToken!354))) (regOne!11314 (regex!3976 (rule!6203 separatorToken!354))))))))

(declare-fun b!2015282 () Bool)

(declare-fun e!1273505 () List!22217)

(assert (=> b!2015282 (= e!1273505 call!123306)))

(declare-fun b!2015283 () Bool)

(assert (=> b!2015283 (= e!1273505 e!1273503)))

(assert (=> b!2015283 (= c!325540 ((_ is Union!5401) (regex!3976 (rule!6203 separatorToken!354))))))

(declare-fun b!2015284 () Bool)

(assert (=> b!2015284 (= e!1273504 Nil!22135)))

(declare-fun call!123308 () List!22217)

(declare-fun bm!123303 () Bool)

(assert (=> bm!123303 (= call!123307 (++!5973 (ite c!325540 call!123308 call!123309) (ite c!325540 call!123309 call!123308)))))

(declare-fun b!2015285 () Bool)

(assert (=> b!2015285 (= c!325539 ((_ is Star!5401) (regex!3976 (rule!6203 separatorToken!354))))))

(assert (=> b!2015285 (= e!1273506 e!1273505)))

(declare-fun b!2015286 () Bool)

(assert (=> b!2015286 (= e!1273503 call!123307)))

(declare-fun bm!123304 () Bool)

(assert (=> bm!123304 (= call!123308 call!123306)))

(declare-fun b!2015287 () Bool)

(assert (=> b!2015287 (= e!1273506 (Cons!22135 (c!325399 (regex!3976 (rule!6203 separatorToken!354))) Nil!22135))))

(assert (= (and d!615081 c!325541) b!2015284))

(assert (= (and d!615081 (not c!325541)) b!2015280))

(assert (= (and b!2015280 c!325538) b!2015287))

(assert (= (and b!2015280 (not c!325538)) b!2015285))

(assert (= (and b!2015285 c!325539) b!2015282))

(assert (= (and b!2015285 (not c!325539)) b!2015283))

(assert (= (and b!2015283 c!325540) b!2015286))

(assert (= (and b!2015283 (not c!325540)) b!2015281))

(assert (= (or b!2015286 b!2015281) bm!123304))

(assert (= (or b!2015286 b!2015281) bm!123302))

(assert (= (or b!2015286 b!2015281) bm!123303))

(assert (= (or b!2015282 bm!123304) bm!123301))

(declare-fun m!2448609 () Bool)

(assert (=> bm!123301 m!2448609))

(declare-fun m!2448611 () Bool)

(assert (=> bm!123302 m!2448611))

(declare-fun m!2448613 () Bool)

(assert (=> bm!123303 m!2448613))

(assert (=> b!2014562 d!615081))

(declare-fun b!2015290 () Bool)

(declare-fun res!884009 () Bool)

(declare-fun e!1273507 () Bool)

(assert (=> b!2015290 (=> (not res!884009) (not e!1273507))))

(declare-fun lt!756725 () List!22217)

(assert (=> b!2015290 (= res!884009 (= (size!17294 lt!756725) (+ (size!17294 lt!756478) (size!17294 lt!756474))))))

(declare-fun b!2015291 () Bool)

(assert (=> b!2015291 (= e!1273507 (or (not (= lt!756474 Nil!22135)) (= lt!756725 lt!756478)))))

(declare-fun b!2015288 () Bool)

(declare-fun e!1273508 () List!22217)

(assert (=> b!2015288 (= e!1273508 lt!756474)))

(declare-fun d!615083 () Bool)

(assert (=> d!615083 e!1273507))

(declare-fun res!884008 () Bool)

(assert (=> d!615083 (=> (not res!884008) (not e!1273507))))

(assert (=> d!615083 (= res!884008 (= (content!3252 lt!756725) ((_ map or) (content!3252 lt!756478) (content!3252 lt!756474))))))

(assert (=> d!615083 (= lt!756725 e!1273508)))

(declare-fun c!325542 () Bool)

(assert (=> d!615083 (= c!325542 ((_ is Nil!22135) lt!756478))))

(assert (=> d!615083 (= (++!5973 lt!756478 lt!756474) lt!756725)))

(declare-fun b!2015289 () Bool)

(assert (=> b!2015289 (= e!1273508 (Cons!22135 (h!27536 lt!756478) (++!5973 (t!188158 lt!756478) lt!756474)))))

(assert (= (and d!615083 c!325542) b!2015288))

(assert (= (and d!615083 (not c!325542)) b!2015289))

(assert (= (and d!615083 res!884008) b!2015290))

(assert (= (and b!2015290 res!884009) b!2015291))

(declare-fun m!2448615 () Bool)

(assert (=> b!2015290 m!2448615))

(assert (=> b!2015290 m!2448187))

(declare-fun m!2448617 () Bool)

(assert (=> b!2015290 m!2448617))

(declare-fun m!2448619 () Bool)

(assert (=> d!615083 m!2448619))

(assert (=> d!615083 m!2448547))

(declare-fun m!2448621 () Bool)

(assert (=> d!615083 m!2448621))

(declare-fun m!2448623 () Bool)

(assert (=> b!2015289 m!2448623))

(assert (=> b!2014562 d!615083))

(declare-fun d!615085 () Bool)

(assert (=> d!615085 (= (head!4556 lt!756474) (h!27536 lt!756474))))

(assert (=> b!2014562 d!615085))

(declare-fun b!2015294 () Bool)

(declare-fun res!884011 () Bool)

(declare-fun e!1273509 () Bool)

(assert (=> b!2015294 (=> (not res!884011) (not e!1273509))))

(declare-fun lt!756726 () List!22217)

(assert (=> b!2015294 (= res!884011 (= (size!17294 lt!756726) (+ (size!17294 (++!5973 lt!756478 lt!756474)) (size!17294 lt!756485))))))

(declare-fun b!2015295 () Bool)

(assert (=> b!2015295 (= e!1273509 (or (not (= lt!756485 Nil!22135)) (= lt!756726 (++!5973 lt!756478 lt!756474))))))

(declare-fun b!2015292 () Bool)

(declare-fun e!1273510 () List!22217)

(assert (=> b!2015292 (= e!1273510 lt!756485)))

(declare-fun d!615087 () Bool)

(assert (=> d!615087 e!1273509))

(declare-fun res!884010 () Bool)

(assert (=> d!615087 (=> (not res!884010) (not e!1273509))))

(assert (=> d!615087 (= res!884010 (= (content!3252 lt!756726) ((_ map or) (content!3252 (++!5973 lt!756478 lt!756474)) (content!3252 lt!756485))))))

(assert (=> d!615087 (= lt!756726 e!1273510)))

(declare-fun c!325543 () Bool)

(assert (=> d!615087 (= c!325543 ((_ is Nil!22135) (++!5973 lt!756478 lt!756474)))))

(assert (=> d!615087 (= (++!5973 (++!5973 lt!756478 lt!756474) lt!756485) lt!756726)))

(declare-fun b!2015293 () Bool)

(assert (=> b!2015293 (= e!1273510 (Cons!22135 (h!27536 (++!5973 lt!756478 lt!756474)) (++!5973 (t!188158 (++!5973 lt!756478 lt!756474)) lt!756485)))))

(assert (= (and d!615087 c!325543) b!2015292))

(assert (= (and d!615087 (not c!325543)) b!2015293))

(assert (= (and d!615087 res!884010) b!2015294))

(assert (= (and b!2015294 res!884011) b!2015295))

(declare-fun m!2448625 () Bool)

(assert (=> b!2015294 m!2448625))

(assert (=> b!2015294 m!2447745))

(declare-fun m!2448627 () Bool)

(assert (=> b!2015294 m!2448627))

(assert (=> b!2015294 m!2448543))

(declare-fun m!2448629 () Bool)

(assert (=> d!615087 m!2448629))

(assert (=> d!615087 m!2447745))

(declare-fun m!2448631 () Bool)

(assert (=> d!615087 m!2448631))

(assert (=> d!615087 m!2448549))

(declare-fun m!2448633 () Bool)

(assert (=> b!2015293 m!2448633))

(assert (=> b!2014562 d!615087))

(declare-fun d!615089 () Bool)

(declare-fun lt!756729 () BalanceConc!14612)

(assert (=> d!615089 (= (list!9021 lt!756729) (printList!1108 thiss!23328 (list!9023 lt!756481)))))

(assert (=> d!615089 (= lt!756729 (printTailRec!1057 thiss!23328 lt!756481 0 (BalanceConc!14613 Empty!7398)))))

(assert (=> d!615089 (= (print!1551 thiss!23328 lt!756481) lt!756729)))

(declare-fun bs!419935 () Bool)

(assert (= bs!419935 d!615089))

(declare-fun m!2448635 () Bool)

(assert (=> bs!419935 m!2448635))

(declare-fun m!2448637 () Bool)

(assert (=> bs!419935 m!2448637))

(assert (=> bs!419935 m!2448637))

(declare-fun m!2448639 () Bool)

(assert (=> bs!419935 m!2448639))

(assert (=> bs!419935 m!2447741))

(assert (=> b!2014562 d!615089))

(declare-fun d!615091 () Bool)

(declare-fun lt!756732 () Bool)

(assert (=> d!615091 (= lt!756732 (select (content!3252 (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598))))) lt!756491))))

(declare-fun e!1273515 () Bool)

(assert (=> d!615091 (= lt!756732 e!1273515)))

(declare-fun res!884017 () Bool)

(assert (=> d!615091 (=> (not res!884017) (not e!1273515))))

(assert (=> d!615091 (= res!884017 ((_ is Cons!22135) (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598))))))))

(assert (=> d!615091 (= (contains!4064 (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598)))) lt!756491) lt!756732)))

(declare-fun b!2015300 () Bool)

(declare-fun e!1273516 () Bool)

(assert (=> b!2015300 (= e!1273515 e!1273516)))

(declare-fun res!884016 () Bool)

(assert (=> b!2015300 (=> res!884016 e!1273516)))

(assert (=> b!2015300 (= res!884016 (= (h!27536 (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598))))) lt!756491))))

(declare-fun b!2015301 () Bool)

(assert (=> b!2015301 (= e!1273516 (contains!4064 (t!188158 (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598))))) lt!756491))))

(assert (= (and d!615091 res!884017) b!2015300))

(assert (= (and b!2015300 (not res!884016)) b!2015301))

(assert (=> d!615091 m!2447723))

(declare-fun m!2448641 () Bool)

(assert (=> d!615091 m!2448641))

(declare-fun m!2448643 () Bool)

(assert (=> d!615091 m!2448643))

(declare-fun m!2448645 () Bool)

(assert (=> b!2015301 m!2448645))

(assert (=> b!2014562 d!615091))

(declare-fun d!615093 () Bool)

(assert (=> d!615093 (= (++!5973 (++!5973 lt!756478 lt!756474) lt!756485) (++!5973 lt!756478 (++!5973 lt!756474 lt!756485)))))

(declare-fun lt!756735 () Unit!36722)

(declare-fun choose!12276 (List!22217 List!22217 List!22217) Unit!36722)

(assert (=> d!615093 (= lt!756735 (choose!12276 lt!756478 lt!756474 lt!756485))))

(assert (=> d!615093 (= (lemmaConcatAssociativity!1239 lt!756478 lt!756474 lt!756485) lt!756735)))

(declare-fun bs!419936 () Bool)

(assert (= bs!419936 d!615093))

(assert (=> bs!419936 m!2447745))

(assert (=> bs!419936 m!2447745))

(assert (=> bs!419936 m!2447747))

(assert (=> bs!419936 m!2447735))

(assert (=> bs!419936 m!2447735))

(assert (=> bs!419936 m!2447737))

(declare-fun m!2448647 () Bool)

(assert (=> bs!419936 m!2448647))

(assert (=> b!2014562 d!615093))

(declare-fun b!2015304 () Bool)

(declare-fun res!884019 () Bool)

(declare-fun e!1273517 () Bool)

(assert (=> b!2015304 (=> (not res!884019) (not e!1273517))))

(declare-fun lt!756736 () List!22217)

(assert (=> b!2015304 (= res!884019 (= (size!17294 lt!756736) (+ (size!17294 lt!756474) (size!17294 lt!756485))))))

(declare-fun b!2015305 () Bool)

(assert (=> b!2015305 (= e!1273517 (or (not (= lt!756485 Nil!22135)) (= lt!756736 lt!756474)))))

(declare-fun b!2015302 () Bool)

(declare-fun e!1273518 () List!22217)

(assert (=> b!2015302 (= e!1273518 lt!756485)))

(declare-fun d!615095 () Bool)

(assert (=> d!615095 e!1273517))

(declare-fun res!884018 () Bool)

(assert (=> d!615095 (=> (not res!884018) (not e!1273517))))

(assert (=> d!615095 (= res!884018 (= (content!3252 lt!756736) ((_ map or) (content!3252 lt!756474) (content!3252 lt!756485))))))

(assert (=> d!615095 (= lt!756736 e!1273518)))

(declare-fun c!325544 () Bool)

(assert (=> d!615095 (= c!325544 ((_ is Nil!22135) lt!756474))))

(assert (=> d!615095 (= (++!5973 lt!756474 lt!756485) lt!756736)))

(declare-fun b!2015303 () Bool)

(assert (=> b!2015303 (= e!1273518 (Cons!22135 (h!27536 lt!756474) (++!5973 (t!188158 lt!756474) lt!756485)))))

(assert (= (and d!615095 c!325544) b!2015302))

(assert (= (and d!615095 (not c!325544)) b!2015303))

(assert (= (and d!615095 res!884018) b!2015304))

(assert (= (and b!2015304 res!884019) b!2015305))

(declare-fun m!2448649 () Bool)

(assert (=> b!2015304 m!2448649))

(assert (=> b!2015304 m!2448617))

(assert (=> b!2015304 m!2448543))

(declare-fun m!2448651 () Bool)

(assert (=> d!615095 m!2448651))

(assert (=> d!615095 m!2448621))

(assert (=> d!615095 m!2448549))

(declare-fun m!2448653 () Bool)

(assert (=> b!2015303 m!2448653))

(assert (=> b!2014562 d!615095))

(declare-fun d!615097 () Bool)

(assert (=> d!615097 (= (list!9021 lt!756494) (list!9025 (c!325398 lt!756494)))))

(declare-fun bs!419937 () Bool)

(assert (= bs!419937 d!615097))

(declare-fun m!2448655 () Bool)

(assert (=> bs!419937 m!2448655))

(assert (=> b!2014562 d!615097))

(declare-fun d!615099 () Bool)

(declare-fun lt!756753 () BalanceConc!14612)

(declare-fun printListTailRec!477 (LexerInterface!3589 List!22219 List!22217) List!22217)

(declare-fun dropList!808 (BalanceConc!14614 Int) List!22219)

(assert (=> d!615099 (= (list!9021 lt!756753) (printListTailRec!477 thiss!23328 (dropList!808 lt!756481 0) (list!9021 (BalanceConc!14613 Empty!7398))))))

(declare-fun e!1273523 () BalanceConc!14612)

(assert (=> d!615099 (= lt!756753 e!1273523)))

(declare-fun c!325547 () Bool)

(assert (=> d!615099 (= c!325547 (>= 0 (size!17292 lt!756481)))))

(declare-fun e!1273524 () Bool)

(assert (=> d!615099 e!1273524))

(declare-fun res!884022 () Bool)

(assert (=> d!615099 (=> (not res!884022) (not e!1273524))))

(assert (=> d!615099 (= res!884022 (>= 0 0))))

(assert (=> d!615099 (= (printTailRec!1057 thiss!23328 lt!756481 0 (BalanceConc!14613 Empty!7398)) lt!756753)))

(declare-fun b!2015312 () Bool)

(assert (=> b!2015312 (= e!1273524 (<= 0 (size!17292 lt!756481)))))

(declare-fun b!2015313 () Bool)

(assert (=> b!2015313 (= e!1273523 (BalanceConc!14613 Empty!7398))))

(declare-fun b!2015314 () Bool)

(declare-fun ++!5975 (BalanceConc!14612 BalanceConc!14612) BalanceConc!14612)

(assert (=> b!2015314 (= e!1273523 (printTailRec!1057 thiss!23328 lt!756481 (+ 0 1) (++!5975 (BalanceConc!14613 Empty!7398) (charsOf!2516 (apply!5807 lt!756481 0)))))))

(declare-fun lt!756757 () List!22219)

(assert (=> b!2015314 (= lt!756757 (list!9023 lt!756481))))

(declare-fun lt!756754 () Unit!36722)

(declare-fun lemmaDropApply!732 (List!22219 Int) Unit!36722)

(assert (=> b!2015314 (= lt!756754 (lemmaDropApply!732 lt!756757 0))))

(declare-fun head!4558 (List!22219) Token!7504)

(declare-fun drop!1107 (List!22219 Int) List!22219)

(declare-fun apply!5811 (List!22219 Int) Token!7504)

(assert (=> b!2015314 (= (head!4558 (drop!1107 lt!756757 0)) (apply!5811 lt!756757 0))))

(declare-fun lt!756756 () Unit!36722)

(assert (=> b!2015314 (= lt!756756 lt!756754)))

(declare-fun lt!756751 () List!22219)

(assert (=> b!2015314 (= lt!756751 (list!9023 lt!756481))))

(declare-fun lt!756752 () Unit!36722)

(declare-fun lemmaDropTail!708 (List!22219 Int) Unit!36722)

(assert (=> b!2015314 (= lt!756752 (lemmaDropTail!708 lt!756751 0))))

(declare-fun tail!3038 (List!22219) List!22219)

(assert (=> b!2015314 (= (tail!3038 (drop!1107 lt!756751 0)) (drop!1107 lt!756751 (+ 0 1)))))

(declare-fun lt!756755 () Unit!36722)

(assert (=> b!2015314 (= lt!756755 lt!756752)))

(assert (= (and d!615099 res!884022) b!2015312))

(assert (= (and d!615099 c!325547) b!2015313))

(assert (= (and d!615099 (not c!325547)) b!2015314))

(declare-fun m!2448657 () Bool)

(assert (=> d!615099 m!2448657))

(declare-fun m!2448659 () Bool)

(assert (=> d!615099 m!2448659))

(declare-fun m!2448661 () Bool)

(assert (=> d!615099 m!2448661))

(assert (=> d!615099 m!2448661))

(declare-fun m!2448663 () Bool)

(assert (=> d!615099 m!2448663))

(declare-fun m!2448665 () Bool)

(assert (=> d!615099 m!2448665))

(assert (=> d!615099 m!2448663))

(assert (=> b!2015312 m!2448659))

(assert (=> b!2015314 m!2448637))

(declare-fun m!2448667 () Bool)

(assert (=> b!2015314 m!2448667))

(declare-fun m!2448669 () Bool)

(assert (=> b!2015314 m!2448669))

(declare-fun m!2448671 () Bool)

(assert (=> b!2015314 m!2448671))

(declare-fun m!2448673 () Bool)

(assert (=> b!2015314 m!2448673))

(declare-fun m!2448675 () Bool)

(assert (=> b!2015314 m!2448675))

(declare-fun m!2448677 () Bool)

(assert (=> b!2015314 m!2448677))

(declare-fun m!2448679 () Bool)

(assert (=> b!2015314 m!2448679))

(assert (=> b!2015314 m!2448667))

(declare-fun m!2448681 () Bool)

(assert (=> b!2015314 m!2448681))

(assert (=> b!2015314 m!2448673))

(assert (=> b!2015314 m!2448681))

(assert (=> b!2015314 m!2448669))

(declare-fun m!2448683 () Bool)

(assert (=> b!2015314 m!2448683))

(assert (=> b!2015314 m!2448677))

(declare-fun m!2448685 () Bool)

(assert (=> b!2015314 m!2448685))

(declare-fun m!2448687 () Bool)

(assert (=> b!2015314 m!2448687))

(declare-fun m!2448689 () Bool)

(assert (=> b!2015314 m!2448689))

(assert (=> b!2014562 d!615099))

(declare-fun c!325549 () Bool)

(declare-fun call!123310 () List!22217)

(declare-fun c!325550 () Bool)

(declare-fun bm!123305 () Bool)

(assert (=> bm!123305 (= call!123310 (usedCharacters!414 (ite c!325549 (reg!5730 (regex!3976 (rule!6203 (h!27538 tokens!598)))) (ite c!325550 (regOne!11315 (regex!3976 (rule!6203 (h!27538 tokens!598)))) (regTwo!11314 (regex!3976 (rule!6203 (h!27538 tokens!598))))))))))

(declare-fun d!615101 () Bool)

(declare-fun c!325551 () Bool)

(assert (=> d!615101 (= c!325551 (or ((_ is EmptyExpr!5401) (regex!3976 (rule!6203 (h!27538 tokens!598)))) ((_ is EmptyLang!5401) (regex!3976 (rule!6203 (h!27538 tokens!598))))))))

(declare-fun e!1273526 () List!22217)

(assert (=> d!615101 (= (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598)))) e!1273526)))

(declare-fun b!2015315 () Bool)

(declare-fun e!1273528 () List!22217)

(assert (=> b!2015315 (= e!1273526 e!1273528)))

(declare-fun c!325548 () Bool)

(assert (=> b!2015315 (= c!325548 ((_ is ElementMatch!5401) (regex!3976 (rule!6203 (h!27538 tokens!598)))))))

(declare-fun b!2015316 () Bool)

(declare-fun e!1273525 () List!22217)

(declare-fun call!123311 () List!22217)

(assert (=> b!2015316 (= e!1273525 call!123311)))

(declare-fun bm!123306 () Bool)

(declare-fun call!123313 () List!22217)

(assert (=> bm!123306 (= call!123313 (usedCharacters!414 (ite c!325550 (regTwo!11315 (regex!3976 (rule!6203 (h!27538 tokens!598)))) (regOne!11314 (regex!3976 (rule!6203 (h!27538 tokens!598)))))))))

(declare-fun b!2015317 () Bool)

(declare-fun e!1273527 () List!22217)

(assert (=> b!2015317 (= e!1273527 call!123310)))

(declare-fun b!2015318 () Bool)

(assert (=> b!2015318 (= e!1273527 e!1273525)))

(assert (=> b!2015318 (= c!325550 ((_ is Union!5401) (regex!3976 (rule!6203 (h!27538 tokens!598)))))))

(declare-fun b!2015319 () Bool)

(assert (=> b!2015319 (= e!1273526 Nil!22135)))

(declare-fun bm!123307 () Bool)

(declare-fun call!123312 () List!22217)

(assert (=> bm!123307 (= call!123311 (++!5973 (ite c!325550 call!123312 call!123313) (ite c!325550 call!123313 call!123312)))))

(declare-fun b!2015320 () Bool)

(assert (=> b!2015320 (= c!325549 ((_ is Star!5401) (regex!3976 (rule!6203 (h!27538 tokens!598)))))))

(assert (=> b!2015320 (= e!1273528 e!1273527)))

(declare-fun b!2015321 () Bool)

(assert (=> b!2015321 (= e!1273525 call!123311)))

(declare-fun bm!123308 () Bool)

(assert (=> bm!123308 (= call!123312 call!123310)))

(declare-fun b!2015322 () Bool)

(assert (=> b!2015322 (= e!1273528 (Cons!22135 (c!325399 (regex!3976 (rule!6203 (h!27538 tokens!598)))) Nil!22135))))

(assert (= (and d!615101 c!325551) b!2015319))

(assert (= (and d!615101 (not c!325551)) b!2015315))

(assert (= (and b!2015315 c!325548) b!2015322))

(assert (= (and b!2015315 (not c!325548)) b!2015320))

(assert (= (and b!2015320 c!325549) b!2015317))

(assert (= (and b!2015320 (not c!325549)) b!2015318))

(assert (= (and b!2015318 c!325550) b!2015321))

(assert (= (and b!2015318 (not c!325550)) b!2015316))

(assert (= (or b!2015321 b!2015316) bm!123308))

(assert (= (or b!2015321 b!2015316) bm!123306))

(assert (= (or b!2015321 b!2015316) bm!123307))

(assert (= (or b!2015317 bm!123308) bm!123305))

(declare-fun m!2448691 () Bool)

(assert (=> bm!123305 m!2448691))

(declare-fun m!2448693 () Bool)

(assert (=> bm!123306 m!2448693))

(declare-fun m!2448695 () Bool)

(assert (=> bm!123307 m!2448695))

(assert (=> b!2014562 d!615101))

(declare-fun d!615103 () Bool)

(declare-fun e!1273531 () Bool)

(assert (=> d!615103 e!1273531))

(declare-fun res!884025 () Bool)

(assert (=> d!615103 (=> (not res!884025) (not e!1273531))))

(declare-fun lt!756760 () BalanceConc!14614)

(assert (=> d!615103 (= res!884025 (= (list!9023 lt!756760) (Cons!22137 (h!27538 tokens!598) Nil!22137)))))

(declare-fun singleton!872 (Token!7504) BalanceConc!14614)

(assert (=> d!615103 (= lt!756760 (singleton!872 (h!27538 tokens!598)))))

(assert (=> d!615103 (= (singletonSeq!1952 (h!27538 tokens!598)) lt!756760)))

(declare-fun b!2015325 () Bool)

(declare-fun isBalanced!2301 (Conc!7399) Bool)

(assert (=> b!2015325 (= e!1273531 (isBalanced!2301 (c!325400 lt!756760)))))

(assert (= (and d!615103 res!884025) b!2015325))

(declare-fun m!2448697 () Bool)

(assert (=> d!615103 m!2448697))

(declare-fun m!2448699 () Bool)

(assert (=> d!615103 m!2448699))

(declare-fun m!2448701 () Bool)

(assert (=> b!2015325 m!2448701))

(assert (=> b!2014562 d!615103))

(declare-fun d!615105 () Bool)

(assert (=> d!615105 (not (contains!4064 (usedCharacters!414 (regex!3976 (rule!6203 (h!27538 tokens!598)))) lt!756491))))

(declare-fun lt!756763 () Unit!36722)

(declare-fun choose!12277 (LexerInterface!3589 List!22218 List!22218 Rule!7752 Rule!7752 C!10948) Unit!36722)

(assert (=> d!615105 (= lt!756763 (choose!12277 thiss!23328 rules!3198 rules!3198 (rule!6203 (h!27538 tokens!598)) (rule!6203 separatorToken!354) lt!756491))))

(assert (=> d!615105 (rulesInvariant!3196 thiss!23328 rules!3198)))

(assert (=> d!615105 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!86 thiss!23328 rules!3198 rules!3198 (rule!6203 (h!27538 tokens!598)) (rule!6203 separatorToken!354) lt!756491) lt!756763)))

(declare-fun bs!419938 () Bool)

(assert (= bs!419938 d!615105))

(assert (=> bs!419938 m!2447723))

(assert (=> bs!419938 m!2447723))

(assert (=> bs!419938 m!2447743))

(declare-fun m!2448703 () Bool)

(assert (=> bs!419938 m!2448703))

(assert (=> bs!419938 m!2447773))

(assert (=> b!2014562 d!615105))

(declare-fun d!615107 () Bool)

(declare-fun lt!756764 () Bool)

(assert (=> d!615107 (= lt!756764 (select (content!3252 (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354)))) lt!756491))))

(declare-fun e!1273532 () Bool)

(assert (=> d!615107 (= lt!756764 e!1273532)))

(declare-fun res!884027 () Bool)

(assert (=> d!615107 (=> (not res!884027) (not e!1273532))))

(assert (=> d!615107 (= res!884027 ((_ is Cons!22135) (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354)))))))

(assert (=> d!615107 (= (contains!4064 (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354))) lt!756491) lt!756764)))

(declare-fun b!2015326 () Bool)

(declare-fun e!1273533 () Bool)

(assert (=> b!2015326 (= e!1273532 e!1273533)))

(declare-fun res!884026 () Bool)

(assert (=> b!2015326 (=> res!884026 e!1273533)))

(assert (=> b!2015326 (= res!884026 (= (h!27536 (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354)))) lt!756491))))

(declare-fun b!2015327 () Bool)

(assert (=> b!2015327 (= e!1273533 (contains!4064 (t!188158 (usedCharacters!414 (regex!3976 (rule!6203 separatorToken!354)))) lt!756491))))

(assert (= (and d!615107 res!884027) b!2015326))

(assert (= (and b!2015326 (not res!884026)) b!2015327))

(assert (=> d!615107 m!2447729))

(declare-fun m!2448705 () Bool)

(assert (=> d!615107 m!2448705))

(declare-fun m!2448707 () Bool)

(assert (=> d!615107 m!2448707))

(declare-fun m!2448709 () Bool)

(assert (=> b!2015327 m!2448709))

(assert (=> b!2014562 d!615107))

(declare-fun d!615109 () Bool)

(declare-fun res!884028 () Bool)

(declare-fun e!1273534 () Bool)

(assert (=> d!615109 (=> (not res!884028) (not e!1273534))))

(assert (=> d!615109 (= res!884028 (not (isEmpty!13753 (originalCharacters!4783 (h!27538 tokens!598)))))))

(assert (=> d!615109 (= (inv!29302 (h!27538 tokens!598)) e!1273534)))

(declare-fun b!2015328 () Bool)

(declare-fun res!884029 () Bool)

(assert (=> b!2015328 (=> (not res!884029) (not e!1273534))))

(assert (=> b!2015328 (= res!884029 (= (originalCharacters!4783 (h!27538 tokens!598)) (list!9021 (dynLambda!10938 (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (value!124907 (h!27538 tokens!598))))))))

(declare-fun b!2015329 () Bool)

(assert (=> b!2015329 (= e!1273534 (= (size!17290 (h!27538 tokens!598)) (size!17294 (originalCharacters!4783 (h!27538 tokens!598)))))))

(assert (= (and d!615109 res!884028) b!2015328))

(assert (= (and b!2015328 res!884029) b!2015329))

(declare-fun b_lambda!67473 () Bool)

(assert (=> (not b_lambda!67473) (not b!2015328)))

(assert (=> b!2015328 t!188248))

(declare-fun b_and!159603 () Bool)

(assert (= b_and!159597 (and (=> t!188248 result!151126) b_and!159603)))

(assert (=> b!2015328 t!188250))

(declare-fun b_and!159605 () Bool)

(assert (= b_and!159599 (and (=> t!188250 result!151128) b_and!159605)))

(assert (=> b!2015328 t!188252))

(declare-fun b_and!159607 () Bool)

(assert (= b_and!159601 (and (=> t!188252 result!151130) b_and!159607)))

(declare-fun m!2448711 () Bool)

(assert (=> d!615109 m!2448711))

(assert (=> b!2015328 m!2448537))

(assert (=> b!2015328 m!2448537))

(declare-fun m!2448713 () Bool)

(assert (=> b!2015328 m!2448713))

(declare-fun m!2448715 () Bool)

(assert (=> b!2015329 m!2448715))

(assert (=> b!2014549 d!615109))

(declare-fun d!615111 () Bool)

(assert (=> d!615111 (= (get!7012 lt!756484) (v!26897 lt!756484))))

(assert (=> b!2014550 d!615111))

(declare-fun d!615113 () Bool)

(declare-fun c!325557 () Bool)

(assert (=> d!615113 (= c!325557 ((_ is IntegerValue!12336) (value!124907 (h!27538 tokens!598))))))

(declare-fun e!1273541 () Bool)

(assert (=> d!615113 (= (inv!21 (value!124907 (h!27538 tokens!598))) e!1273541)))

(declare-fun b!2015340 () Bool)

(declare-fun e!1273542 () Bool)

(assert (=> b!2015340 (= e!1273541 e!1273542)))

(declare-fun c!325558 () Bool)

(assert (=> b!2015340 (= c!325558 ((_ is IntegerValue!12337) (value!124907 (h!27538 tokens!598))))))

(declare-fun b!2015341 () Bool)

(declare-fun inv!16 (TokenValue!4112) Bool)

(assert (=> b!2015341 (= e!1273541 (inv!16 (value!124907 (h!27538 tokens!598))))))

(declare-fun b!2015342 () Bool)

(declare-fun e!1273543 () Bool)

(declare-fun inv!15 (TokenValue!4112) Bool)

(assert (=> b!2015342 (= e!1273543 (inv!15 (value!124907 (h!27538 tokens!598))))))

(declare-fun b!2015343 () Bool)

(declare-fun inv!17 (TokenValue!4112) Bool)

(assert (=> b!2015343 (= e!1273542 (inv!17 (value!124907 (h!27538 tokens!598))))))

(declare-fun b!2015344 () Bool)

(declare-fun res!884032 () Bool)

(assert (=> b!2015344 (=> res!884032 e!1273543)))

(assert (=> b!2015344 (= res!884032 (not ((_ is IntegerValue!12338) (value!124907 (h!27538 tokens!598)))))))

(assert (=> b!2015344 (= e!1273542 e!1273543)))

(assert (= (and d!615113 c!325557) b!2015341))

(assert (= (and d!615113 (not c!325557)) b!2015340))

(assert (= (and b!2015340 c!325558) b!2015343))

(assert (= (and b!2015340 (not c!325558)) b!2015344))

(assert (= (and b!2015344 (not res!884032)) b!2015342))

(declare-fun m!2448717 () Bool)

(assert (=> b!2015341 m!2448717))

(declare-fun m!2448719 () Bool)

(assert (=> b!2015342 m!2448719))

(declare-fun m!2448721 () Bool)

(assert (=> b!2015343 m!2448721))

(assert (=> b!2014545 d!615113))

(declare-fun d!615115 () Bool)

(assert (=> d!615115 (not (matchR!2667 (regex!3976 (rule!6203 separatorToken!354)) lt!756474))))

(declare-fun lt!756767 () Unit!36722)

(declare-fun choose!12278 (Regex!5401 List!22217 C!10948) Unit!36722)

(assert (=> d!615115 (= lt!756767 (choose!12278 (regex!3976 (rule!6203 separatorToken!354)) lt!756474 lt!756491))))

(assert (=> d!615115 (validRegex!2166 (regex!3976 (rule!6203 separatorToken!354)))))

(assert (=> d!615115 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!302 (regex!3976 (rule!6203 separatorToken!354)) lt!756474 lt!756491) lt!756767)))

(declare-fun bs!419939 () Bool)

(assert (= bs!419939 d!615115))

(assert (=> bs!419939 m!2447719))

(declare-fun m!2448723 () Bool)

(assert (=> bs!419939 m!2448723))

(declare-fun m!2448725 () Bool)

(assert (=> bs!419939 m!2448725))

(assert (=> b!2014546 d!615115))

(declare-fun b!2015345 () Bool)

(declare-fun e!1273545 () Bool)

(declare-fun lt!756768 () Bool)

(declare-fun call!123314 () Bool)

(assert (=> b!2015345 (= e!1273545 (= lt!756768 call!123314))))

(declare-fun bm!123309 () Bool)

(assert (=> bm!123309 (= call!123314 (isEmpty!13753 lt!756474))))

(declare-fun b!2015346 () Bool)

(declare-fun e!1273550 () Bool)

(assert (=> b!2015346 (= e!1273545 e!1273550)))

(declare-fun c!325562 () Bool)

(assert (=> b!2015346 (= c!325562 ((_ is EmptyLang!5401) (regex!3976 (rule!6203 separatorToken!354))))))

(declare-fun b!2015347 () Bool)

(declare-fun e!1273544 () Bool)

(assert (=> b!2015347 (= e!1273544 (matchR!2667 (derivativeStep!1399 (regex!3976 (rule!6203 separatorToken!354)) (head!4556 lt!756474)) (tail!3035 lt!756474)))))

(declare-fun b!2015349 () Bool)

(declare-fun res!884038 () Bool)

(declare-fun e!1273549 () Bool)

(assert (=> b!2015349 (=> res!884038 e!1273549)))

(declare-fun e!1273546 () Bool)

(assert (=> b!2015349 (= res!884038 e!1273546)))

(declare-fun res!884039 () Bool)

(assert (=> b!2015349 (=> (not res!884039) (not e!1273546))))

(assert (=> b!2015349 (= res!884039 lt!756768)))

(declare-fun b!2015350 () Bool)

(declare-fun res!884033 () Bool)

(declare-fun e!1273547 () Bool)

(assert (=> b!2015350 (=> res!884033 e!1273547)))

(assert (=> b!2015350 (= res!884033 (not (isEmpty!13753 (tail!3035 lt!756474))))))

(declare-fun b!2015351 () Bool)

(declare-fun res!884036 () Bool)

(assert (=> b!2015351 (=> res!884036 e!1273549)))

(assert (=> b!2015351 (= res!884036 (not ((_ is ElementMatch!5401) (regex!3976 (rule!6203 separatorToken!354)))))))

(assert (=> b!2015351 (= e!1273550 e!1273549)))

(declare-fun b!2015352 () Bool)

(declare-fun res!884035 () Bool)

(assert (=> b!2015352 (=> (not res!884035) (not e!1273546))))

(assert (=> b!2015352 (= res!884035 (isEmpty!13753 (tail!3035 lt!756474)))))

(declare-fun b!2015353 () Bool)

(assert (=> b!2015353 (= e!1273547 (not (= (head!4556 lt!756474) (c!325399 (regex!3976 (rule!6203 separatorToken!354))))))))

(declare-fun b!2015354 () Bool)

(declare-fun e!1273548 () Bool)

(assert (=> b!2015354 (= e!1273549 e!1273548)))

(declare-fun res!884034 () Bool)

(assert (=> b!2015354 (=> (not res!884034) (not e!1273548))))

(assert (=> b!2015354 (= res!884034 (not lt!756768))))

(declare-fun b!2015355 () Bool)

(assert (=> b!2015355 (= e!1273548 e!1273547)))

(declare-fun res!884037 () Bool)

(assert (=> b!2015355 (=> res!884037 e!1273547)))

(assert (=> b!2015355 (= res!884037 call!123314)))

(declare-fun b!2015356 () Bool)

(assert (=> b!2015356 (= e!1273544 (nullable!1640 (regex!3976 (rule!6203 separatorToken!354))))))

(declare-fun b!2015357 () Bool)

(declare-fun res!884040 () Bool)

(assert (=> b!2015357 (=> (not res!884040) (not e!1273546))))

(assert (=> b!2015357 (= res!884040 (not call!123314))))

(declare-fun b!2015358 () Bool)

(assert (=> b!2015358 (= e!1273550 (not lt!756768))))

(declare-fun b!2015348 () Bool)

(assert (=> b!2015348 (= e!1273546 (= (head!4556 lt!756474) (c!325399 (regex!3976 (rule!6203 separatorToken!354)))))))

(declare-fun d!615117 () Bool)

(assert (=> d!615117 e!1273545))

(declare-fun c!325561 () Bool)

(assert (=> d!615117 (= c!325561 ((_ is EmptyExpr!5401) (regex!3976 (rule!6203 separatorToken!354))))))

(assert (=> d!615117 (= lt!756768 e!1273544)))

(declare-fun c!325560 () Bool)

(assert (=> d!615117 (= c!325560 (isEmpty!13753 lt!756474))))

(assert (=> d!615117 (validRegex!2166 (regex!3976 (rule!6203 separatorToken!354)))))

(assert (=> d!615117 (= (matchR!2667 (regex!3976 (rule!6203 separatorToken!354)) lt!756474) lt!756768)))

(assert (= (and d!615117 c!325560) b!2015356))

(assert (= (and d!615117 (not c!325560)) b!2015347))

(assert (= (and d!615117 c!325561) b!2015345))

(assert (= (and d!615117 (not c!325561)) b!2015346))

(assert (= (and b!2015346 c!325562) b!2015358))

(assert (= (and b!2015346 (not c!325562)) b!2015351))

(assert (= (and b!2015351 (not res!884036)) b!2015349))

(assert (= (and b!2015349 res!884039) b!2015357))

(assert (= (and b!2015357 res!884040) b!2015352))

(assert (= (and b!2015352 res!884035) b!2015348))

(assert (= (and b!2015349 (not res!884038)) b!2015354))

(assert (= (and b!2015354 res!884034) b!2015355))

(assert (= (and b!2015355 (not res!884037)) b!2015350))

(assert (= (and b!2015350 (not res!884033)) b!2015353))

(assert (= (or b!2015345 b!2015355 b!2015357) bm!123309))

(declare-fun m!2448727 () Bool)

(assert (=> b!2015356 m!2448727))

(assert (=> b!2015347 m!2447749))

(assert (=> b!2015347 m!2447749))

(declare-fun m!2448729 () Bool)

(assert (=> b!2015347 m!2448729))

(assert (=> b!2015347 m!2448095))

(assert (=> b!2015347 m!2448729))

(assert (=> b!2015347 m!2448095))

(declare-fun m!2448731 () Bool)

(assert (=> b!2015347 m!2448731))

(assert (=> b!2015353 m!2447749))

(assert (=> bm!123309 m!2448099))

(assert (=> b!2015352 m!2448095))

(assert (=> b!2015352 m!2448095))

(assert (=> b!2015352 m!2448101))

(assert (=> b!2015350 m!2448095))

(assert (=> b!2015350 m!2448095))

(assert (=> b!2015350 m!2448101))

(assert (=> b!2015348 m!2447749))

(assert (=> d!615117 m!2448099))

(assert (=> d!615117 m!2448725))

(assert (=> b!2014546 d!615117))

(declare-fun d!615119 () Bool)

(assert (=> d!615119 (= (isEmpty!13748 rules!3198) ((_ is Nil!22136) rules!3198))))

(assert (=> b!2014567 d!615119))

(declare-fun d!615121 () Bool)

(declare-fun c!325563 () Bool)

(assert (=> d!615121 (= c!325563 ((_ is IntegerValue!12336) (value!124907 separatorToken!354)))))

(declare-fun e!1273551 () Bool)

(assert (=> d!615121 (= (inv!21 (value!124907 separatorToken!354)) e!1273551)))

(declare-fun b!2015359 () Bool)

(declare-fun e!1273552 () Bool)

(assert (=> b!2015359 (= e!1273551 e!1273552)))

(declare-fun c!325564 () Bool)

(assert (=> b!2015359 (= c!325564 ((_ is IntegerValue!12337) (value!124907 separatorToken!354)))))

(declare-fun b!2015360 () Bool)

(assert (=> b!2015360 (= e!1273551 (inv!16 (value!124907 separatorToken!354)))))

(declare-fun b!2015361 () Bool)

(declare-fun e!1273553 () Bool)

(assert (=> b!2015361 (= e!1273553 (inv!15 (value!124907 separatorToken!354)))))

(declare-fun b!2015362 () Bool)

(assert (=> b!2015362 (= e!1273552 (inv!17 (value!124907 separatorToken!354)))))

(declare-fun b!2015363 () Bool)

(declare-fun res!884041 () Bool)

(assert (=> b!2015363 (=> res!884041 e!1273553)))

(assert (=> b!2015363 (= res!884041 (not ((_ is IntegerValue!12338) (value!124907 separatorToken!354))))))

(assert (=> b!2015363 (= e!1273552 e!1273553)))

(assert (= (and d!615121 c!325563) b!2015360))

(assert (= (and d!615121 (not c!325563)) b!2015359))

(assert (= (and b!2015359 c!325564) b!2015362))

(assert (= (and b!2015359 (not c!325564)) b!2015363))

(assert (= (and b!2015363 (not res!884041)) b!2015361))

(declare-fun m!2448733 () Bool)

(assert (=> b!2015360 m!2448733))

(declare-fun m!2448735 () Bool)

(assert (=> b!2015361 m!2448735))

(declare-fun m!2448737 () Bool)

(assert (=> b!2015362 m!2448737))

(assert (=> b!2014568 d!615121))

(declare-fun d!615123 () Bool)

(declare-fun res!884046 () Bool)

(declare-fun e!1273558 () Bool)

(assert (=> d!615123 (=> res!884046 e!1273558)))

(assert (=> d!615123 (= res!884046 (not ((_ is Cons!22136) rules!3198)))))

(assert (=> d!615123 (= (sepAndNonSepRulesDisjointChars!1074 rules!3198 rules!3198) e!1273558)))

(declare-fun b!2015368 () Bool)

(declare-fun e!1273559 () Bool)

(assert (=> b!2015368 (= e!1273558 e!1273559)))

(declare-fun res!884047 () Bool)

(assert (=> b!2015368 (=> (not res!884047) (not e!1273559))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!481 (Rule!7752 List!22218) Bool)

(assert (=> b!2015368 (= res!884047 (ruleDisjointCharsFromAllFromOtherType!481 (h!27537 rules!3198) rules!3198))))

(declare-fun b!2015369 () Bool)

(assert (=> b!2015369 (= e!1273559 (sepAndNonSepRulesDisjointChars!1074 rules!3198 (t!188159 rules!3198)))))

(assert (= (and d!615123 (not res!884046)) b!2015368))

(assert (= (and b!2015368 res!884047) b!2015369))

(declare-fun m!2448739 () Bool)

(assert (=> b!2015368 m!2448739))

(declare-fun m!2448741 () Bool)

(assert (=> b!2015369 m!2448741))

(assert (=> b!2014547 d!615123))

(declare-fun b!2015380 () Bool)

(declare-fun b_free!56293 () Bool)

(declare-fun b_next!56997 () Bool)

(assert (=> b!2015380 (= b_free!56293 (not b_next!56997))))

(declare-fun t!188255 () Bool)

(declare-fun tb!126125 () Bool)

(assert (=> (and b!2015380 (= (toValue!5645 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188255) tb!126125))

(declare-fun result!151134 () Bool)

(assert (= result!151134 result!151106))

(assert (=> d!615039 t!188255))

(declare-fun tb!126127 () Bool)

(declare-fun t!188257 () Bool)

(assert (=> (and b!2015380 (= (toValue!5645 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188257) tb!126127))

(declare-fun result!151136 () Bool)

(assert (= result!151136 result!151114))

(assert (=> d!615039 t!188257))

(assert (=> d!615051 t!188255))

(declare-fun tp!600684 () Bool)

(declare-fun b_and!159609 () Bool)

(assert (=> b!2015380 (= tp!600684 (and (=> t!188255 result!151134) (=> t!188257 result!151136) b_and!159609))))

(declare-fun b_free!56295 () Bool)

(declare-fun b_next!56999 () Bool)

(assert (=> b!2015380 (= b_free!56295 (not b_next!56999))))

(declare-fun t!188259 () Bool)

(declare-fun tb!126129 () Bool)

(assert (=> (and b!2015380 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188259) tb!126129))

(declare-fun result!151138 () Bool)

(assert (= result!151138 result!151120))

(assert (=> d!615051 t!188259))

(declare-fun t!188261 () Bool)

(declare-fun tb!126131 () Bool)

(assert (=> (and b!2015380 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188261) tb!126131))

(declare-fun result!151140 () Bool)

(assert (= result!151140 result!151126))

(assert (=> d!615055 t!188261))

(assert (=> b!2015328 t!188261))

(declare-fun tb!126133 () Bool)

(declare-fun t!188263 () Bool)

(assert (=> (and b!2015380 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354)))) t!188263) tb!126133))

(declare-fun result!151142 () Bool)

(assert (= result!151142 result!151036))

(assert (=> d!615061 t!188263))

(assert (=> b!2014601 t!188263))

(declare-fun tp!600685 () Bool)

(declare-fun b_and!159611 () Bool)

(assert (=> b!2015380 (= tp!600685 (and (=> t!188263 result!151142) (=> t!188259 result!151138) (=> t!188261 result!151140) b_and!159611))))

(declare-fun e!1273568 () Bool)

(assert (=> b!2015380 (= e!1273568 (and tp!600684 tp!600685))))

(declare-fun tp!600683 () Bool)

(declare-fun e!1273569 () Bool)

(declare-fun b!2015379 () Bool)

(assert (=> b!2015379 (= e!1273569 (and tp!600683 (inv!29298 (tag!4450 (h!27537 (t!188159 rules!3198)))) (inv!29301 (transformation!3976 (h!27537 (t!188159 rules!3198)))) e!1273568))))

(declare-fun b!2015378 () Bool)

(declare-fun e!1273570 () Bool)

(declare-fun tp!600686 () Bool)

(assert (=> b!2015378 (= e!1273570 (and e!1273569 tp!600686))))

(assert (=> b!2014543 (= tp!600601 e!1273570)))

(assert (= b!2015379 b!2015380))

(assert (= b!2015378 b!2015379))

(assert (= (and b!2014543 ((_ is Cons!22136) (t!188159 rules!3198))) b!2015378))

(declare-fun m!2448743 () Bool)

(assert (=> b!2015379 m!2448743))

(declare-fun m!2448745 () Bool)

(assert (=> b!2015379 m!2448745))

(declare-fun b!2015394 () Bool)

(declare-fun e!1273574 () Bool)

(declare-fun tp!600698 () Bool)

(declare-fun tp!600699 () Bool)

(assert (=> b!2015394 (= e!1273574 (and tp!600698 tp!600699))))

(declare-fun b!2015392 () Bool)

(declare-fun tp!600701 () Bool)

(declare-fun tp!600700 () Bool)

(assert (=> b!2015392 (= e!1273574 (and tp!600701 tp!600700))))

(declare-fun b!2015393 () Bool)

(declare-fun tp!600697 () Bool)

(assert (=> b!2015393 (= e!1273574 tp!600697)))

(assert (=> b!2014565 (= tp!600598 e!1273574)))

(declare-fun b!2015391 () Bool)

(declare-fun tp_is_empty!9201 () Bool)

(assert (=> b!2015391 (= e!1273574 tp_is_empty!9201)))

(assert (= (and b!2014565 ((_ is ElementMatch!5401) (regex!3976 (rule!6203 separatorToken!354)))) b!2015391))

(assert (= (and b!2014565 ((_ is Concat!9514) (regex!3976 (rule!6203 separatorToken!354)))) b!2015392))

(assert (= (and b!2014565 ((_ is Star!5401) (regex!3976 (rule!6203 separatorToken!354)))) b!2015393))

(assert (= (and b!2014565 ((_ is Union!5401) (regex!3976 (rule!6203 separatorToken!354)))) b!2015394))

(declare-fun b!2015408 () Bool)

(declare-fun b_free!56297 () Bool)

(declare-fun b_next!57001 () Bool)

(assert (=> b!2015408 (= b_free!56297 (not b_next!57001))))

(declare-fun t!188265 () Bool)

(declare-fun tb!126135 () Bool)

(assert (=> (and b!2015408 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188265) tb!126135))

(declare-fun result!151148 () Bool)

(assert (= result!151148 result!151106))

(assert (=> d!615039 t!188265))

(declare-fun t!188267 () Bool)

(declare-fun tb!126137 () Bool)

(assert (=> (and b!2015408 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188267) tb!126137))

(declare-fun result!151150 () Bool)

(assert (= result!151150 result!151114))

(assert (=> d!615039 t!188267))

(assert (=> d!615051 t!188265))

(declare-fun tp!600714 () Bool)

(declare-fun b_and!159613 () Bool)

(assert (=> b!2015408 (= tp!600714 (and (=> t!188265 result!151148) (=> t!188267 result!151150) b_and!159613))))

(declare-fun b_free!56299 () Bool)

(declare-fun b_next!57003 () Bool)

(assert (=> b!2015408 (= b_free!56299 (not b_next!57003))))

(declare-fun t!188269 () Bool)

(declare-fun tb!126139 () Bool)

(assert (=> (and b!2015408 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188269) tb!126139))

(declare-fun result!151152 () Bool)

(assert (= result!151152 result!151120))

(assert (=> d!615051 t!188269))

(declare-fun t!188271 () Bool)

(declare-fun tb!126141 () Bool)

(assert (=> (and b!2015408 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598))))) t!188271) tb!126141))

(declare-fun result!151154 () Bool)

(assert (= result!151154 result!151126))

(assert (=> d!615055 t!188271))

(assert (=> b!2015328 t!188271))

(declare-fun tb!126143 () Bool)

(declare-fun t!188273 () Bool)

(assert (=> (and b!2015408 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354)))) t!188273) tb!126143))

(declare-fun result!151156 () Bool)

(assert (= result!151156 result!151036))

(assert (=> d!615061 t!188273))

(assert (=> b!2014601 t!188273))

(declare-fun tp!600712 () Bool)

(declare-fun b_and!159615 () Bool)

(assert (=> b!2015408 (= tp!600712 (and (=> t!188269 result!151152) (=> t!188271 result!151154) (=> t!188273 result!151156) b_and!159615))))

(declare-fun e!1273590 () Bool)

(declare-fun e!1273592 () Bool)

(declare-fun tp!600716 () Bool)

(declare-fun b!2015405 () Bool)

(assert (=> b!2015405 (= e!1273590 (and (inv!29302 (h!27538 (t!188160 tokens!598))) e!1273592 tp!600716))))

(declare-fun b!2015407 () Bool)

(declare-fun e!1273589 () Bool)

(declare-fun tp!600713 () Bool)

(declare-fun e!1273591 () Bool)

(assert (=> b!2015407 (= e!1273591 (and tp!600713 (inv!29298 (tag!4450 (rule!6203 (h!27538 (t!188160 tokens!598))))) (inv!29301 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) e!1273589))))

(declare-fun tp!600715 () Bool)

(declare-fun b!2015406 () Bool)

(assert (=> b!2015406 (= e!1273592 (and (inv!21 (value!124907 (h!27538 (t!188160 tokens!598)))) e!1273591 tp!600715))))

(assert (=> b!2014549 (= tp!600596 e!1273590)))

(assert (=> b!2015408 (= e!1273589 (and tp!600714 tp!600712))))

(assert (= b!2015407 b!2015408))

(assert (= b!2015406 b!2015407))

(assert (= b!2015405 b!2015406))

(assert (= (and b!2014549 ((_ is Cons!22137) (t!188160 tokens!598))) b!2015405))

(declare-fun m!2448747 () Bool)

(assert (=> b!2015405 m!2448747))

(declare-fun m!2448749 () Bool)

(assert (=> b!2015407 m!2448749))

(declare-fun m!2448751 () Bool)

(assert (=> b!2015407 m!2448751))

(declare-fun m!2448753 () Bool)

(assert (=> b!2015406 m!2448753))

(declare-fun b!2015412 () Bool)

(declare-fun e!1273593 () Bool)

(declare-fun tp!600718 () Bool)

(declare-fun tp!600719 () Bool)

(assert (=> b!2015412 (= e!1273593 (and tp!600718 tp!600719))))

(declare-fun b!2015410 () Bool)

(declare-fun tp!600721 () Bool)

(declare-fun tp!600720 () Bool)

(assert (=> b!2015410 (= e!1273593 (and tp!600721 tp!600720))))

(declare-fun b!2015411 () Bool)

(declare-fun tp!600717 () Bool)

(assert (=> b!2015411 (= e!1273593 tp!600717)))

(assert (=> b!2014539 (= tp!600597 e!1273593)))

(declare-fun b!2015409 () Bool)

(assert (=> b!2015409 (= e!1273593 tp_is_empty!9201)))

(assert (= (and b!2014539 ((_ is ElementMatch!5401) (regex!3976 (rule!6203 (h!27538 tokens!598))))) b!2015409))

(assert (= (and b!2014539 ((_ is Concat!9514) (regex!3976 (rule!6203 (h!27538 tokens!598))))) b!2015410))

(assert (= (and b!2014539 ((_ is Star!5401) (regex!3976 (rule!6203 (h!27538 tokens!598))))) b!2015411))

(assert (= (and b!2014539 ((_ is Union!5401) (regex!3976 (rule!6203 (h!27538 tokens!598))))) b!2015412))

(declare-fun b!2015417 () Bool)

(declare-fun e!1273596 () Bool)

(declare-fun tp!600724 () Bool)

(assert (=> b!2015417 (= e!1273596 (and tp_is_empty!9201 tp!600724))))

(assert (=> b!2014545 (= tp!600602 e!1273596)))

(assert (= (and b!2014545 ((_ is Cons!22135) (originalCharacters!4783 (h!27538 tokens!598)))) b!2015417))

(declare-fun b!2015418 () Bool)

(declare-fun e!1273597 () Bool)

(declare-fun tp!600725 () Bool)

(assert (=> b!2015418 (= e!1273597 (and tp_is_empty!9201 tp!600725))))

(assert (=> b!2014568 (= tp!600605 e!1273597)))

(assert (= (and b!2014568 ((_ is Cons!22135) (originalCharacters!4783 separatorToken!354))) b!2015418))

(declare-fun b!2015422 () Bool)

(declare-fun e!1273598 () Bool)

(declare-fun tp!600727 () Bool)

(declare-fun tp!600728 () Bool)

(assert (=> b!2015422 (= e!1273598 (and tp!600727 tp!600728))))

(declare-fun b!2015420 () Bool)

(declare-fun tp!600730 () Bool)

(declare-fun tp!600729 () Bool)

(assert (=> b!2015420 (= e!1273598 (and tp!600730 tp!600729))))

(declare-fun b!2015421 () Bool)

(declare-fun tp!600726 () Bool)

(assert (=> b!2015421 (= e!1273598 tp!600726)))

(assert (=> b!2014557 (= tp!600606 e!1273598)))

(declare-fun b!2015419 () Bool)

(assert (=> b!2015419 (= e!1273598 tp_is_empty!9201)))

(assert (= (and b!2014557 ((_ is ElementMatch!5401) (regex!3976 (h!27537 rules!3198)))) b!2015419))

(assert (= (and b!2014557 ((_ is Concat!9514) (regex!3976 (h!27537 rules!3198)))) b!2015420))

(assert (= (and b!2014557 ((_ is Star!5401) (regex!3976 (h!27537 rules!3198)))) b!2015421))

(assert (= (and b!2014557 ((_ is Union!5401) (regex!3976 (h!27537 rules!3198)))) b!2015422))

(declare-fun b_lambda!67475 () Bool)

(assert (= b_lambda!67467 (or (and b!2015380 b_free!56293 (= (toValue!5645 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014537 b_free!56277 (= (toValue!5645 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014553 b_free!56273 (= (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2015408 b_free!56297 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014544 b_free!56281) b_lambda!67475)))

(declare-fun b_lambda!67477 () Bool)

(assert (= b_lambda!67421 (or (and b!2015380 b_free!56295 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) (and b!2014553 b_free!56275) (and b!2015408 b_free!56299 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) (and b!2014537 b_free!56279 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) (and b!2014544 b_free!56283 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) b_lambda!67477)))

(declare-fun b_lambda!67479 () Bool)

(assert (= b_lambda!67445 (or (and b!2015380 b_free!56293 (= (toValue!5645 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014537 b_free!56277 (= (toValue!5645 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014553 b_free!56273 (= (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2015408 b_free!56297 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014544 b_free!56281) b_lambda!67479)))

(declare-fun b_lambda!67481 () Bool)

(assert (= b_lambda!67471 (or (and b!2015380 b_free!56295 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) (and b!2014553 b_free!56275) (and b!2015408 b_free!56299 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) (and b!2014537 b_free!56279 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) (and b!2014544 b_free!56283 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))) (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))))) b_lambda!67481)))

(declare-fun b_lambda!67483 () Bool)

(assert (= b_lambda!67443 (or (and b!2015380 b_free!56293 (= (toValue!5645 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014537 b_free!56277 (= (toValue!5645 (transformation!3976 (h!27537 rules!3198))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014553 b_free!56273 (= (toValue!5645 (transformation!3976 (rule!6203 separatorToken!354))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2015408 b_free!56297 (= (toValue!5645 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toValue!5645 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014544 b_free!56281) b_lambda!67483)))

(declare-fun b_lambda!67485 () Bool)

(assert (= b_lambda!67435 (or b!2014559 b_lambda!67485)))

(declare-fun bs!419940 () Bool)

(declare-fun d!615125 () Bool)

(assert (= bs!419940 (and d!615125 b!2014559)))

(assert (=> bs!419940 (= (dynLambda!10944 lambda!76225 (h!27538 tokens!598)) (not (isSeparator!3976 (rule!6203 (h!27538 tokens!598)))))))

(assert (=> b!2014867 d!615125))

(declare-fun b_lambda!67487 () Bool)

(assert (= b_lambda!67465 (or (and b!2014544 b_free!56283) (and b!2015380 b_free!56295 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014553 b_free!56275 (= (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2015408 b_free!56299 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014537 b_free!56279 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) b_lambda!67487)))

(declare-fun b_lambda!67489 () Bool)

(assert (= b_lambda!67469 (or (and b!2014544 b_free!56283) (and b!2015380 b_free!56295 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014553 b_free!56275 (= (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2015408 b_free!56299 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014537 b_free!56279 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) b_lambda!67489)))

(declare-fun b_lambda!67491 () Bool)

(assert (= b_lambda!67473 (or (and b!2014544 b_free!56283) (and b!2015380 b_free!56295 (= (toChars!5504 (transformation!3976 (h!27537 (t!188159 rules!3198)))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014553 b_free!56275 (= (toChars!5504 (transformation!3976 (rule!6203 separatorToken!354))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2015408 b_free!56299 (= (toChars!5504 (transformation!3976 (rule!6203 (h!27538 (t!188160 tokens!598))))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) (and b!2014537 b_free!56279 (= (toChars!5504 (transformation!3976 (h!27537 rules!3198))) (toChars!5504 (transformation!3976 (rule!6203 (h!27538 tokens!598)))))) b_lambda!67491)))

(check-sat (not b_lambda!67483) (not b!2015247) (not b!2015303) (not b!2014796) (not d!615065) (not b_lambda!67489) (not d!615097) (not d!614913) (not b!2015216) (not d!615073) (not b!2015342) (not b_next!56977) (not b!2014931) (not d!615059) (not d!615089) (not b!2014910) (not b!2015369) (not d!614879) (not bm!123303) (not b!2014890) (not b!2014887) (not b!2014607) (not b!2015341) (not b!2014720) (not d!614961) (not b!2015250) (not b_lambda!67485) (not d!615051) (not d!615103) (not d!614945) (not b_next!56985) (not d!615077) (not d!615057) (not d!615041) (not bm!123251) b_and!159605 (not bm!123307) (not b!2015290) (not b!2015405) (not b!2014933) (not b!2015412) (not bm!123309) (not b!2015329) (not b!2014943) (not b!2014799) (not b!2015314) (not b!2015253) (not b!2015343) (not b!2015108) (not b!2015304) (not b!2015301) (not b!2015410) (not bm!123259) (not d!615083) (not d!614881) (not b_next!57001) (not b!2014862) (not d!615047) (not b!2015240) (not b!2014596) (not b!2014793) (not d!615033) (not b!2015356) (not b!2015347) (not d!615087) (not b!2015251) (not b!2014909) (not bm!123289) (not d!615091) (not b_next!56999) (not d!614877) b_and!159585 (not d!615053) (not d!615115) tp_is_empty!9201 (not b!2014601) (not b!2014721) (not b!2015256) (not b!2014871) (not d!615055) (not b!2015411) (not b!2014937) b_and!159615 (not d!615075) (not b!2014594) (not b!2015212) (not b!2014936) (not b!2015239) (not b!2015420) (not b!2015422) (not b!2015421) (not b!2014934) (not b!2015248) b_and!159611 (not b!2015215) (not b!2014892) (not d!615063) (not b_next!57003) (not b!2015327) (not d!614939) (not b!2015328) (not bm!123258) (not b!2015255) (not d!615039) (not b!2015106) (not b!2014602) (not b!2015407) (not b!2014595) (not b!2015294) (not bm!123287) b_and!159613 (not b!2015417) (not b!2015289) (not b!2014860) (not b!2015312) (not b!2015226) (not d!614927) (not b_next!56997) (not b!2015352) (not b!2015393) (not tb!126101) (not b!2014944) (not d!615067) (not d!614943) (not b!2015378) (not b!2014942) (not b!2015368) (not b!2014868) (not d!614953) b_and!159589 (not d!615045) (not b!2015360) (not d!615105) (not d!615095) (not b!2015210) (not b!2015350) (not b!2015218) (not b!2014794) (not b!2014802) (not b_lambda!67481) (not d!615109) (not b_lambda!67491) (not b!2014730) (not tb!126119) (not b!2014884) (not b!2014593) (not b!2015379) b_and!159587 (not d!615049) (not bm!123301) (not b!2014932) (not b!2015406) (not d!614951) (not b!2015353) (not d!615117) (not tb!126113) (not bm!123305) (not b_lambda!67479) (not b!2014893) (not b!2014930) (not b!2014899) (not b_next!56983) (not b!2015418) b_and!159607 (not b!2015392) (not tb!126107) (not bm!123302) (not b!2015394) (not b!2014888) (not b!2015110) (not b!2015361) (not d!615107) (not b!2014940) (not b_next!56987) (not bm!123290) (not d!614885) (not b!2015229) (not b!2014896) (not d!615099) (not d!615061) (not b!2014939) (not b!2015228) (not d!615071) (not bm!123255) (not bm!123288) (not b!2015227) b_and!159603 (not b_lambda!67475) (not b!2014941) (not b_lambda!67487) (not b!2015249) (not b_next!56979) (not bm!123306) (not b!2014945) (not b!2015293) (not b!2015113) (not tb!126045) (not b!2015325) (not b!2015209) (not d!615093) (not b!2015262) (not b!2015362) (not b!2015107) (not b!2014935) (not b!2014861) (not b!2015348) b_and!159609 (not b!2014798) (not b_lambda!67477) (not b!2014946) (not b_next!56981) (not d!614883) (not d!614959))
(check-sat (not b_next!56977) (not b_next!56985) b_and!159605 (not b_next!57001) b_and!159615 b_and!159613 (not b_next!56997) b_and!159589 b_and!159587 (not b_next!56983) b_and!159603 (not b_next!56979) b_and!159585 (not b_next!56999) b_and!159611 (not b_next!57003) b_and!159607 (not b_next!56987) (not b_next!56981) b_and!159609)
