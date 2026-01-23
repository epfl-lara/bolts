; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299658 () Bool)

(assert start!299658)

(declare-fun b!3194586 () Bool)

(declare-fun b_free!84817 () Bool)

(declare-fun b_next!85521 () Bool)

(assert (=> b!3194586 (= b_free!84817 (not b_next!85521))))

(declare-fun tp!1010336 () Bool)

(declare-fun b_and!211959 () Bool)

(assert (=> b!3194586 (= tp!1010336 b_and!211959)))

(declare-fun b_free!84819 () Bool)

(declare-fun b_next!85523 () Bool)

(assert (=> b!3194586 (= b_free!84819 (not b_next!85523))))

(declare-fun tp!1010330 () Bool)

(declare-fun b_and!211961 () Bool)

(assert (=> b!3194586 (= tp!1010330 b_and!211961)))

(declare-fun b!3194587 () Bool)

(declare-fun b_free!84821 () Bool)

(declare-fun b_next!85525 () Bool)

(assert (=> b!3194587 (= b_free!84821 (not b_next!85525))))

(declare-fun tp!1010326 () Bool)

(declare-fun b_and!211963 () Bool)

(assert (=> b!3194587 (= tp!1010326 b_and!211963)))

(declare-fun b_free!84823 () Bool)

(declare-fun b_next!85527 () Bool)

(assert (=> b!3194587 (= b_free!84823 (not b_next!85527))))

(declare-fun tp!1010328 () Bool)

(declare-fun b_and!211965 () Bool)

(assert (=> b!3194587 (= tp!1010328 b_and!211965)))

(declare-fun b!3194595 () Bool)

(declare-fun b_free!84825 () Bool)

(declare-fun b_next!85529 () Bool)

(assert (=> b!3194595 (= b_free!84825 (not b_next!85529))))

(declare-fun tp!1010329 () Bool)

(declare-fun b_and!211967 () Bool)

(assert (=> b!3194595 (= tp!1010329 b_and!211967)))

(declare-fun b_free!84827 () Bool)

(declare-fun b_next!85531 () Bool)

(assert (=> b!3194595 (= b_free!84827 (not b_next!85531))))

(declare-fun tp!1010338 () Bool)

(declare-fun b_and!211969 () Bool)

(assert (=> b!3194595 (= tp!1010338 b_and!211969)))

(declare-fun b!3194572 () Bool)

(declare-fun res!1299691 () Bool)

(declare-fun e!1991501 () Bool)

(assert (=> b!3194572 (=> res!1299691 e!1991501)))

(declare-datatypes ((C!20076 0))(
  ( (C!20077 (val!12086 Int)) )
))
(declare-datatypes ((List!36140 0))(
  ( (Nil!36016) (Cons!36016 (h!41436 C!20076) (t!236579 List!36140)) )
))
(declare-fun lt!1076307 () List!36140)

(declare-fun isEmpty!20103 (List!36140) Bool)

(assert (=> b!3194572 (= res!1299691 (isEmpty!20103 lt!1076307))))

(declare-fun b!3194573 () Bool)

(declare-fun res!1299700 () Bool)

(declare-fun e!1991508 () Bool)

(assert (=> b!3194573 (=> (not res!1299700) (not e!1991508))))

(declare-datatypes ((Regex!9945 0))(
  ( (ElementMatch!9945 (c!536180 C!20076)) (Concat!15361 (regOne!20402 Regex!9945) (regTwo!20402 Regex!9945)) (EmptyExpr!9945) (Star!9945 (reg!10274 Regex!9945)) (EmptyLang!9945) (Union!9945 (regOne!20403 Regex!9945) (regTwo!20403 Regex!9945)) )
))
(declare-datatypes ((List!36141 0))(
  ( (Nil!36017) (Cons!36017 (h!41437 (_ BitVec 16)) (t!236580 List!36141)) )
))
(declare-datatypes ((TokenValue!5416 0))(
  ( (FloatLiteralValue!10832 (text!38357 List!36141)) (TokenValueExt!5415 (__x!23049 Int)) (Broken!27080 (value!168235 List!36141)) (Object!5539) (End!5416) (Def!5416) (Underscore!5416) (Match!5416) (Else!5416) (Error!5416) (Case!5416) (If!5416) (Extends!5416) (Abstract!5416) (Class!5416) (Val!5416) (DelimiterValue!10832 (del!5476 List!36141)) (KeywordValue!5422 (value!168236 List!36141)) (CommentValue!10832 (value!168237 List!36141)) (WhitespaceValue!10832 (value!168238 List!36141)) (IndentationValue!5416 (value!168239 List!36141)) (String!40413) (Int32!5416) (Broken!27081 (value!168240 List!36141)) (Boolean!5417) (Unit!50413) (OperatorValue!5419 (op!5476 List!36141)) (IdentifierValue!10832 (value!168241 List!36141)) (IdentifierValue!10833 (value!168242 List!36141)) (WhitespaceValue!10833 (value!168243 List!36141)) (True!10832) (False!10832) (Broken!27082 (value!168244 List!36141)) (Broken!27083 (value!168245 List!36141)) (True!10833) (RightBrace!5416) (RightBracket!5416) (Colon!5416) (Null!5416) (Comma!5416) (LeftBracket!5416) (False!10833) (LeftBrace!5416) (ImaginaryLiteralValue!5416 (text!38358 List!36141)) (StringLiteralValue!16248 (value!168246 List!36141)) (EOFValue!5416 (value!168247 List!36141)) (IdentValue!5416 (value!168248 List!36141)) (DelimiterValue!10833 (value!168249 List!36141)) (DedentValue!5416 (value!168250 List!36141)) (NewLineValue!5416 (value!168251 List!36141)) (IntegerValue!16248 (value!168252 (_ BitVec 32)) (text!38359 List!36141)) (IntegerValue!16249 (value!168253 Int) (text!38360 List!36141)) (Times!5416) (Or!5416) (Equal!5416) (Minus!5416) (Broken!27084 (value!168254 List!36141)) (And!5416) (Div!5416) (LessEqual!5416) (Mod!5416) (Concat!15362) (Not!5416) (Plus!5416) (SpaceValue!5416 (value!168255 List!36141)) (IntegerValue!16250 (value!168256 Int) (text!38361 List!36141)) (StringLiteralValue!16249 (text!38362 List!36141)) (FloatLiteralValue!10833 (text!38363 List!36141)) (BytesLiteralValue!5416 (value!168257 List!36141)) (CommentValue!10833 (value!168258 List!36141)) (StringLiteralValue!16250 (value!168259 List!36141)) (ErrorTokenValue!5416 (msg!5477 List!36141)) )
))
(declare-datatypes ((IArray!21499 0))(
  ( (IArray!21500 (innerList!10807 List!36140)) )
))
(declare-datatypes ((Conc!10747 0))(
  ( (Node!10747 (left!27990 Conc!10747) (right!28320 Conc!10747) (csize!21724 Int) (cheight!10958 Int)) (Leaf!16951 (xs!13865 IArray!21499) (csize!21725 Int)) (Empty!10747) )
))
(declare-datatypes ((BalanceConc!21108 0))(
  ( (BalanceConc!21109 (c!536181 Conc!10747)) )
))
(declare-datatypes ((String!40414 0))(
  ( (String!40415 (value!168260 String)) )
))
(declare-datatypes ((TokenValueInjection!10260 0))(
  ( (TokenValueInjection!10261 (toValue!7254 Int) (toChars!7113 Int)) )
))
(declare-datatypes ((Rule!10172 0))(
  ( (Rule!10173 (regex!5186 Regex!9945) (tag!5704 String!40414) (isSeparator!5186 Bool) (transformation!5186 TokenValueInjection!10260)) )
))
(declare-datatypes ((Token!9738 0))(
  ( (Token!9739 (value!168261 TokenValue!5416) (rule!7618 Rule!10172) (size!27122 Int) (originalCharacters!5900 List!36140)) )
))
(declare-datatypes ((List!36142 0))(
  ( (Nil!36018) (Cons!36018 (h!41438 Token!9738) (t!236581 List!36142)) )
))
(declare-fun tokens!494 () List!36142)

(declare-fun lambda!116961 () Int)

(declare-fun forall!7326 (List!36142 Int) Bool)

(assert (=> b!3194573 (= res!1299700 (forall!7326 tokens!494 lambda!116961))))

(declare-fun tp!1010337 () Bool)

(declare-fun b!3194574 () Bool)

(declare-fun separatorToken!241 () Token!9738)

(declare-fun e!1991511 () Bool)

(declare-fun e!1991512 () Bool)

(declare-fun inv!21 (TokenValue!5416) Bool)

(assert (=> b!3194574 (= e!1991511 (and (inv!21 (value!168261 separatorToken!241)) e!1991512 tp!1010337))))

(declare-fun b!3194575 () Bool)

(declare-fun res!1299703 () Bool)

(assert (=> b!3194575 (=> (not res!1299703) (not e!1991508))))

(assert (=> b!3194575 (= res!1299703 (isSeparator!5186 (rule!7618 separatorToken!241)))))

(declare-fun b!3194576 () Bool)

(declare-fun e!1991509 () Bool)

(declare-fun e!1991515 () Bool)

(assert (=> b!3194576 (= e!1991509 e!1991515)))

(declare-fun res!1299699 () Bool)

(assert (=> b!3194576 (=> res!1299699 e!1991515)))

(declare-fun lt!1076321 () List!36140)

(declare-fun lt!1076316 () List!36140)

(assert (=> b!3194576 (= res!1299699 (not (= lt!1076321 lt!1076316)))))

(declare-fun lt!1076308 () List!36140)

(declare-fun lt!1076320 () List!36140)

(declare-fun ++!8618 (List!36140 List!36140) List!36140)

(assert (=> b!3194576 (= lt!1076316 (++!8618 (++!8618 lt!1076307 lt!1076308) lt!1076320))))

(declare-fun res!1299710 () Bool)

(assert (=> start!299658 (=> (not res!1299710) (not e!1991508))))

(declare-datatypes ((LexerInterface!4775 0))(
  ( (LexerInterfaceExt!4772 (__x!23050 Int)) (Lexer!4773) )
))
(declare-fun thiss!18206 () LexerInterface!4775)

(get-info :version)

(assert (=> start!299658 (= res!1299710 ((_ is Lexer!4773) thiss!18206))))

(assert (=> start!299658 e!1991508))

(assert (=> start!299658 true))

(declare-fun e!1991494 () Bool)

(assert (=> start!299658 e!1991494))

(declare-fun e!1991516 () Bool)

(assert (=> start!299658 e!1991516))

(declare-fun inv!48862 (Token!9738) Bool)

(assert (=> start!299658 (and (inv!48862 separatorToken!241) e!1991511)))

(declare-fun b!3194577 () Bool)

(declare-fun res!1299712 () Bool)

(assert (=> b!3194577 (=> res!1299712 e!1991501)))

(assert (=> b!3194577 (= res!1299712 (not (= lt!1076307 (++!8618 lt!1076307 Nil!36016))))))

(declare-fun b!3194578 () Bool)

(declare-fun e!1991497 () Bool)

(declare-fun lt!1076317 () Rule!10172)

(assert (=> b!3194578 (= e!1991497 (= (rule!7618 (h!41438 tokens!494)) lt!1076317))))

(declare-fun b!3194579 () Bool)

(declare-fun e!1991503 () Bool)

(assert (=> b!3194579 (= e!1991503 true)))

(declare-fun lt!1076304 () Bool)

(declare-fun matchR!4579 (Regex!9945 List!36140) Bool)

(assert (=> b!3194579 (= lt!1076304 (matchR!4579 (regex!5186 (rule!7618 (h!41438 tokens!494))) lt!1076307))))

(declare-fun ruleValid!1634 (LexerInterface!4775 Rule!10172) Bool)

(assert (=> b!3194579 (ruleValid!1634 thiss!18206 (rule!7618 (h!41438 tokens!494)))))

(declare-datatypes ((List!36143 0))(
  ( (Nil!36019) (Cons!36019 (h!41439 Rule!10172) (t!236582 List!36143)) )
))
(declare-fun rules!2135 () List!36143)

(declare-datatypes ((Unit!50414 0))(
  ( (Unit!50415) )
))
(declare-fun lt!1076306 () Unit!50414)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!928 (LexerInterface!4775 Rule!10172 List!36143) Unit!50414)

(assert (=> b!3194579 (= lt!1076306 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!928 thiss!18206 (rule!7618 (h!41438 tokens!494)) rules!2135))))

(declare-fun b!3194580 () Bool)

(declare-fun res!1299696 () Bool)

(assert (=> b!3194580 (=> (not res!1299696) (not e!1991508))))

(declare-fun sepAndNonSepRulesDisjointChars!1380 (List!36143 List!36143) Bool)

(assert (=> b!3194580 (= res!1299696 (sepAndNonSepRulesDisjointChars!1380 rules!2135 rules!2135))))

(declare-fun e!1991519 () Bool)

(declare-fun tp!1010333 () Bool)

(declare-fun b!3194581 () Bool)

(assert (=> b!3194581 (= e!1991516 (and (inv!48862 (h!41438 tokens!494)) e!1991519 tp!1010333))))

(declare-fun b!3194582 () Bool)

(declare-fun tp!1010335 () Bool)

(declare-fun e!1991496 () Bool)

(declare-fun e!1991500 () Bool)

(declare-fun inv!48859 (String!40414) Bool)

(declare-fun inv!48863 (TokenValueInjection!10260) Bool)

(assert (=> b!3194582 (= e!1991496 (and tp!1010335 (inv!48859 (tag!5704 (h!41439 rules!2135))) (inv!48863 (transformation!5186 (h!41439 rules!2135))) e!1991500))))

(declare-fun b!3194583 () Bool)

(assert (=> b!3194583 (= e!1991501 e!1991503)))

(declare-fun res!1299708 () Bool)

(assert (=> b!3194583 (=> res!1299708 e!1991503)))

(declare-fun lt!1076322 () BalanceConc!21108)

(declare-datatypes ((tuple2!35374 0))(
  ( (tuple2!35375 (_1!20821 Token!9738) (_2!20821 List!36140)) )
))
(declare-datatypes ((Option!7063 0))(
  ( (None!7062) (Some!7062 (v!35574 tuple2!35374)) )
))
(declare-fun maxPrefix!2433 (LexerInterface!4775 List!36143 List!36140) Option!7063)

(declare-fun apply!8110 (TokenValueInjection!10260 BalanceConc!21108) TokenValue!5416)

(declare-fun size!27123 (List!36140) Int)

(assert (=> b!3194583 (= res!1299708 (not (= (maxPrefix!2433 thiss!18206 rules!2135 lt!1076307) (Some!7062 (tuple2!35375 (Token!9739 (apply!8110 (transformation!5186 (rule!7618 (h!41438 tokens!494))) lt!1076322) (rule!7618 (h!41438 tokens!494)) (size!27123 lt!1076307) lt!1076307) Nil!36016)))))))

(declare-fun lt!1076318 () Unit!50414)

(declare-fun lemmaSemiInverse!1165 (TokenValueInjection!10260 BalanceConc!21108) Unit!50414)

(assert (=> b!3194583 (= lt!1076318 (lemmaSemiInverse!1165 (transformation!5186 (rule!7618 (h!41438 tokens!494))) lt!1076322))))

(declare-fun b!3194584 () Bool)

(declare-fun res!1299698 () Bool)

(assert (=> b!3194584 (=> (not res!1299698) (not e!1991508))))

(assert (=> b!3194584 (= res!1299698 (and (not ((_ is Nil!36018) tokens!494)) (not ((_ is Nil!36018) (t!236581 tokens!494)))))))

(declare-fun b!3194585 () Bool)

(declare-fun e!1991498 () Bool)

(assert (=> b!3194585 (= e!1991508 (not e!1991498))))

(declare-fun res!1299692 () Bool)

(assert (=> b!3194585 (=> res!1299692 e!1991498)))

(declare-fun lt!1076314 () List!36140)

(declare-fun lt!1076311 () List!36140)

(assert (=> b!3194585 (= res!1299692 (not (= lt!1076314 lt!1076311)))))

(declare-fun printList!1325 (LexerInterface!4775 List!36142) List!36140)

(assert (=> b!3194585 (= lt!1076311 (printList!1325 thiss!18206 (Cons!36018 (h!41438 tokens!494) Nil!36018)))))

(declare-fun lt!1076303 () BalanceConc!21108)

(declare-fun list!12795 (BalanceConc!21108) List!36140)

(assert (=> b!3194585 (= lt!1076314 (list!12795 lt!1076303))))

(declare-datatypes ((IArray!21501 0))(
  ( (IArray!21502 (innerList!10808 List!36142)) )
))
(declare-datatypes ((Conc!10748 0))(
  ( (Node!10748 (left!27991 Conc!10748) (right!28321 Conc!10748) (csize!21726 Int) (cheight!10959 Int)) (Leaf!16952 (xs!13866 IArray!21501) (csize!21727 Int)) (Empty!10748) )
))
(declare-datatypes ((BalanceConc!21110 0))(
  ( (BalanceConc!21111 (c!536182 Conc!10748)) )
))
(declare-fun lt!1076324 () BalanceConc!21110)

(declare-fun printTailRec!1272 (LexerInterface!4775 BalanceConc!21110 Int BalanceConc!21108) BalanceConc!21108)

(assert (=> b!3194585 (= lt!1076303 (printTailRec!1272 thiss!18206 lt!1076324 0 (BalanceConc!21109 Empty!10747)))))

(declare-fun print!1840 (LexerInterface!4775 BalanceConc!21110) BalanceConc!21108)

(assert (=> b!3194585 (= lt!1076303 (print!1840 thiss!18206 lt!1076324))))

(declare-fun singletonSeq!2282 (Token!9738) BalanceConc!21110)

(assert (=> b!3194585 (= lt!1076324 (singletonSeq!2282 (h!41438 tokens!494)))))

(assert (=> b!3194586 (= e!1991500 (and tp!1010336 tp!1010330))))

(declare-fun e!1991510 () Bool)

(assert (=> b!3194587 (= e!1991510 (and tp!1010326 tp!1010328))))

(declare-fun b!3194588 () Bool)

(declare-fun e!1991506 () Bool)

(declare-fun tp!1010331 () Bool)

(assert (=> b!3194588 (= e!1991519 (and (inv!21 (value!168261 (h!41438 tokens!494))) e!1991506 tp!1010331))))

(declare-fun b!3194589 () Bool)

(declare-fun e!1991507 () Bool)

(assert (=> b!3194589 (= e!1991507 e!1991497)))

(declare-fun res!1299693 () Bool)

(assert (=> b!3194589 (=> (not res!1299693) (not e!1991497))))

(assert (=> b!3194589 (= res!1299693 (matchR!4579 (regex!5186 lt!1076317) lt!1076307))))

(declare-datatypes ((Option!7064 0))(
  ( (None!7063) (Some!7063 (v!35575 Rule!10172)) )
))
(declare-fun lt!1076312 () Option!7064)

(declare-fun get!11452 (Option!7064) Rule!10172)

(assert (=> b!3194589 (= lt!1076317 (get!11452 lt!1076312))))

(declare-fun b!3194590 () Bool)

(declare-fun e!1991517 () Bool)

(assert (=> b!3194590 (= e!1991515 e!1991517)))

(declare-fun res!1299690 () Bool)

(assert (=> b!3194590 (=> res!1299690 e!1991517)))

(declare-fun lt!1076323 () List!36140)

(assert (=> b!3194590 (= res!1299690 (not (= lt!1076321 lt!1076323)))))

(assert (=> b!3194590 (= lt!1076316 lt!1076323)))

(declare-fun lt!1076305 () List!36140)

(assert (=> b!3194590 (= lt!1076323 (++!8618 lt!1076307 lt!1076305))))

(declare-fun lt!1076315 () Unit!50414)

(declare-fun lemmaConcatAssociativity!1700 (List!36140 List!36140 List!36140) Unit!50414)

(assert (=> b!3194590 (= lt!1076315 (lemmaConcatAssociativity!1700 lt!1076307 lt!1076308 lt!1076320))))

(declare-fun b!3194591 () Bool)

(declare-fun tp!1010334 () Bool)

(assert (=> b!3194591 (= e!1991512 (and tp!1010334 (inv!48859 (tag!5704 (rule!7618 separatorToken!241))) (inv!48863 (transformation!5186 (rule!7618 separatorToken!241))) e!1991510))))

(declare-fun b!3194592 () Bool)

(declare-fun res!1299695 () Bool)

(assert (=> b!3194592 (=> (not res!1299695) (not e!1991508))))

(declare-fun isEmpty!20104 (List!36143) Bool)

(assert (=> b!3194592 (= res!1299695 (not (isEmpty!20104 rules!2135)))))

(declare-fun b!3194593 () Bool)

(declare-fun e!1991518 () Bool)

(assert (=> b!3194593 (= e!1991498 e!1991518)))

(declare-fun res!1299697 () Bool)

(assert (=> b!3194593 (=> res!1299697 e!1991518)))

(assert (=> b!3194593 (= res!1299697 (or (not (= lt!1076311 lt!1076307)) (not (= lt!1076314 lt!1076307))))))

(declare-fun charsOf!3202 (Token!9738) BalanceConc!21108)

(assert (=> b!3194593 (= lt!1076307 (list!12795 (charsOf!3202 (h!41438 tokens!494))))))

(declare-fun b!3194594 () Bool)

(declare-fun res!1299706 () Bool)

(assert (=> b!3194594 (=> (not res!1299706) (not e!1991508))))

(declare-fun rulesProduceEachTokenIndividually!1226 (LexerInterface!4775 List!36143 BalanceConc!21110) Bool)

(declare-fun seqFromList!3443 (List!36142) BalanceConc!21110)

(assert (=> b!3194594 (= res!1299706 (rulesProduceEachTokenIndividually!1226 thiss!18206 rules!2135 (seqFromList!3443 tokens!494)))))

(declare-fun e!1991513 () Bool)

(assert (=> b!3194595 (= e!1991513 (and tp!1010329 tp!1010338))))

(declare-fun b!3194596 () Bool)

(declare-fun tp!1010327 () Bool)

(assert (=> b!3194596 (= e!1991494 (and e!1991496 tp!1010327))))

(declare-fun b!3194597 () Bool)

(declare-fun res!1299704 () Bool)

(assert (=> b!3194597 (=> (not res!1299704) (not e!1991508))))

(declare-fun rulesProduceIndividualToken!2267 (LexerInterface!4775 List!36143 Token!9738) Bool)

(assert (=> b!3194597 (= res!1299704 (rulesProduceIndividualToken!2267 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3194598 () Bool)

(declare-fun tp!1010332 () Bool)

(assert (=> b!3194598 (= e!1991506 (and tp!1010332 (inv!48859 (tag!5704 (rule!7618 (h!41438 tokens!494)))) (inv!48863 (transformation!5186 (rule!7618 (h!41438 tokens!494)))) e!1991513))))

(declare-fun b!3194599 () Bool)

(declare-fun e!1991520 () Bool)

(assert (=> b!3194599 (= e!1991520 e!1991509)))

(declare-fun res!1299709 () Bool)

(assert (=> b!3194599 (=> res!1299709 e!1991509)))

(declare-fun printWithSeparatorTokenList!120 (LexerInterface!4775 List!36142 Token!9738) List!36140)

(assert (=> b!3194599 (= res!1299709 (not (= lt!1076320 (++!8618 (++!8618 (list!12795 (charsOf!3202 (h!41438 (t!236581 tokens!494)))) lt!1076308) (printWithSeparatorTokenList!120 thiss!18206 (t!236581 (t!236581 tokens!494)) separatorToken!241)))))))

(assert (=> b!3194599 (= lt!1076305 (++!8618 lt!1076308 lt!1076320))))

(assert (=> b!3194599 (= lt!1076308 (list!12795 (charsOf!3202 separatorToken!241)))))

(assert (=> b!3194599 (= lt!1076320 (printWithSeparatorTokenList!120 thiss!18206 (t!236581 tokens!494) separatorToken!241))))

(assert (=> b!3194599 (= lt!1076321 (printWithSeparatorTokenList!120 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3194600 () Bool)

(declare-fun e!1991499 () Bool)

(assert (=> b!3194600 (= e!1991518 e!1991499)))

(declare-fun res!1299707 () Bool)

(assert (=> b!3194600 (=> res!1299707 e!1991499)))

(declare-fun isEmpty!20105 (BalanceConc!21110) Bool)

(declare-datatypes ((tuple2!35376 0))(
  ( (tuple2!35377 (_1!20822 BalanceConc!21110) (_2!20822 BalanceConc!21108)) )
))
(declare-fun lex!2105 (LexerInterface!4775 List!36143 BalanceConc!21108) tuple2!35376)

(assert (=> b!3194600 (= res!1299707 (isEmpty!20105 (_1!20822 (lex!2105 thiss!18206 rules!2135 lt!1076322))))))

(declare-fun seqFromList!3444 (List!36140) BalanceConc!21108)

(assert (=> b!3194600 (= lt!1076322 (seqFromList!3444 lt!1076307))))

(declare-fun b!3194601 () Bool)

(assert (=> b!3194601 (= e!1991499 e!1991520)))

(declare-fun res!1299694 () Bool)

(assert (=> b!3194601 (=> res!1299694 e!1991520)))

(assert (=> b!3194601 (= res!1299694 (or (isSeparator!5186 (rule!7618 (h!41438 tokens!494))) (isSeparator!5186 (rule!7618 (h!41438 (t!236581 tokens!494))))))))

(declare-fun lt!1076310 () Unit!50414)

(declare-fun forallContained!1157 (List!36142 Int Token!9738) Unit!50414)

(assert (=> b!3194601 (= lt!1076310 (forallContained!1157 tokens!494 lambda!116961 (h!41438 (t!236581 tokens!494))))))

(declare-fun lt!1076319 () Unit!50414)

(assert (=> b!3194601 (= lt!1076319 (forallContained!1157 tokens!494 lambda!116961 (h!41438 tokens!494)))))

(declare-fun b!3194602 () Bool)

(assert (=> b!3194602 (= e!1991517 e!1991501)))

(declare-fun res!1299705 () Bool)

(assert (=> b!3194602 (=> res!1299705 e!1991501)))

(declare-fun contains!6395 (List!36143 Rule!10172) Bool)

(assert (=> b!3194602 (= res!1299705 (not (contains!6395 rules!2135 (rule!7618 (h!41438 tokens!494)))))))

(assert (=> b!3194602 e!1991507))

(declare-fun res!1299701 () Bool)

(assert (=> b!3194602 (=> (not res!1299701) (not e!1991507))))

(declare-fun isDefined!5514 (Option!7064) Bool)

(assert (=> b!3194602 (= res!1299701 (isDefined!5514 lt!1076312))))

(declare-fun getRuleFromTag!891 (LexerInterface!4775 List!36143 String!40414) Option!7064)

(assert (=> b!3194602 (= lt!1076312 (getRuleFromTag!891 thiss!18206 rules!2135 (tag!5704 (rule!7618 (h!41438 tokens!494)))))))

(declare-fun lt!1076313 () Unit!50414)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!891 (LexerInterface!4775 List!36143 List!36140 Token!9738) Unit!50414)

(assert (=> b!3194602 (= lt!1076313 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!891 thiss!18206 rules!2135 lt!1076307 (h!41438 tokens!494)))))

(declare-fun lt!1076309 () Unit!50414)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!814 (LexerInterface!4775 List!36143 List!36142 Token!9738) Unit!50414)

(assert (=> b!3194602 (= lt!1076309 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!814 thiss!18206 rules!2135 tokens!494 (h!41438 tokens!494)))))

(declare-fun b!3194603 () Bool)

(declare-fun res!1299702 () Bool)

(assert (=> b!3194603 (=> (not res!1299702) (not e!1991508))))

(declare-fun rulesInvariant!4172 (LexerInterface!4775 List!36143) Bool)

(assert (=> b!3194603 (= res!1299702 (rulesInvariant!4172 thiss!18206 rules!2135))))

(declare-fun b!3194604 () Bool)

(declare-fun res!1299711 () Bool)

(assert (=> b!3194604 (=> res!1299711 e!1991518)))

(assert (=> b!3194604 (= res!1299711 (not (rulesProduceIndividualToken!2267 thiss!18206 rules!2135 (h!41438 tokens!494))))))

(assert (= (and start!299658 res!1299710) b!3194592))

(assert (= (and b!3194592 res!1299695) b!3194603))

(assert (= (and b!3194603 res!1299702) b!3194594))

(assert (= (and b!3194594 res!1299706) b!3194597))

(assert (= (and b!3194597 res!1299704) b!3194575))

(assert (= (and b!3194575 res!1299703) b!3194573))

(assert (= (and b!3194573 res!1299700) b!3194580))

(assert (= (and b!3194580 res!1299696) b!3194584))

(assert (= (and b!3194584 res!1299698) b!3194585))

(assert (= (and b!3194585 (not res!1299692)) b!3194593))

(assert (= (and b!3194593 (not res!1299697)) b!3194604))

(assert (= (and b!3194604 (not res!1299711)) b!3194600))

(assert (= (and b!3194600 (not res!1299707)) b!3194601))

(assert (= (and b!3194601 (not res!1299694)) b!3194599))

(assert (= (and b!3194599 (not res!1299709)) b!3194576))

(assert (= (and b!3194576 (not res!1299699)) b!3194590))

(assert (= (and b!3194590 (not res!1299690)) b!3194602))

(assert (= (and b!3194602 res!1299701) b!3194589))

(assert (= (and b!3194589 res!1299693) b!3194578))

(assert (= (and b!3194602 (not res!1299705)) b!3194577))

(assert (= (and b!3194577 (not res!1299712)) b!3194572))

(assert (= (and b!3194572 (not res!1299691)) b!3194583))

(assert (= (and b!3194583 (not res!1299708)) b!3194579))

(assert (= b!3194582 b!3194586))

(assert (= b!3194596 b!3194582))

(assert (= (and start!299658 ((_ is Cons!36019) rules!2135)) b!3194596))

(assert (= b!3194598 b!3194595))

(assert (= b!3194588 b!3194598))

(assert (= b!3194581 b!3194588))

(assert (= (and start!299658 ((_ is Cons!36018) tokens!494)) b!3194581))

(assert (= b!3194591 b!3194587))

(assert (= b!3194574 b!3194591))

(assert (= start!299658 b!3194574))

(declare-fun m!3454343 () Bool)

(assert (=> b!3194572 m!3454343))

(declare-fun m!3454345 () Bool)

(assert (=> b!3194580 m!3454345))

(declare-fun m!3454347 () Bool)

(assert (=> b!3194601 m!3454347))

(declare-fun m!3454349 () Bool)

(assert (=> b!3194601 m!3454349))

(declare-fun m!3454351 () Bool)

(assert (=> b!3194593 m!3454351))

(assert (=> b!3194593 m!3454351))

(declare-fun m!3454353 () Bool)

(assert (=> b!3194593 m!3454353))

(declare-fun m!3454355 () Bool)

(assert (=> b!3194600 m!3454355))

(declare-fun m!3454357 () Bool)

(assert (=> b!3194600 m!3454357))

(declare-fun m!3454359 () Bool)

(assert (=> b!3194600 m!3454359))

(declare-fun m!3454361 () Bool)

(assert (=> b!3194576 m!3454361))

(assert (=> b!3194576 m!3454361))

(declare-fun m!3454363 () Bool)

(assert (=> b!3194576 m!3454363))

(declare-fun m!3454365 () Bool)

(assert (=> b!3194590 m!3454365))

(declare-fun m!3454367 () Bool)

(assert (=> b!3194590 m!3454367))

(declare-fun m!3454369 () Bool)

(assert (=> b!3194599 m!3454369))

(declare-fun m!3454371 () Bool)

(assert (=> b!3194599 m!3454371))

(declare-fun m!3454373 () Bool)

(assert (=> b!3194599 m!3454373))

(assert (=> b!3194599 m!3454369))

(declare-fun m!3454375 () Bool)

(assert (=> b!3194599 m!3454375))

(declare-fun m!3454377 () Bool)

(assert (=> b!3194599 m!3454377))

(declare-fun m!3454379 () Bool)

(assert (=> b!3194599 m!3454379))

(declare-fun m!3454381 () Bool)

(assert (=> b!3194599 m!3454381))

(assert (=> b!3194599 m!3454375))

(declare-fun m!3454383 () Bool)

(assert (=> b!3194599 m!3454383))

(declare-fun m!3454385 () Bool)

(assert (=> b!3194599 m!3454385))

(assert (=> b!3194599 m!3454383))

(assert (=> b!3194599 m!3454377))

(declare-fun m!3454387 () Bool)

(assert (=> b!3194599 m!3454387))

(assert (=> b!3194599 m!3454379))

(declare-fun m!3454389 () Bool)

(assert (=> b!3194589 m!3454389))

(declare-fun m!3454391 () Bool)

(assert (=> b!3194589 m!3454391))

(declare-fun m!3454393 () Bool)

(assert (=> b!3194582 m!3454393))

(declare-fun m!3454395 () Bool)

(assert (=> b!3194582 m!3454395))

(declare-fun m!3454397 () Bool)

(assert (=> b!3194594 m!3454397))

(assert (=> b!3194594 m!3454397))

(declare-fun m!3454399 () Bool)

(assert (=> b!3194594 m!3454399))

(declare-fun m!3454401 () Bool)

(assert (=> b!3194602 m!3454401))

(declare-fun m!3454403 () Bool)

(assert (=> b!3194602 m!3454403))

(declare-fun m!3454405 () Bool)

(assert (=> b!3194602 m!3454405))

(declare-fun m!3454407 () Bool)

(assert (=> b!3194602 m!3454407))

(declare-fun m!3454409 () Bool)

(assert (=> b!3194602 m!3454409))

(declare-fun m!3454411 () Bool)

(assert (=> b!3194592 m!3454411))

(declare-fun m!3454413 () Bool)

(assert (=> b!3194583 m!3454413))

(declare-fun m!3454415 () Bool)

(assert (=> b!3194583 m!3454415))

(declare-fun m!3454417 () Bool)

(assert (=> b!3194583 m!3454417))

(declare-fun m!3454419 () Bool)

(assert (=> b!3194583 m!3454419))

(declare-fun m!3454421 () Bool)

(assert (=> b!3194585 m!3454421))

(declare-fun m!3454423 () Bool)

(assert (=> b!3194585 m!3454423))

(declare-fun m!3454425 () Bool)

(assert (=> b!3194585 m!3454425))

(declare-fun m!3454427 () Bool)

(assert (=> b!3194585 m!3454427))

(declare-fun m!3454429 () Bool)

(assert (=> b!3194585 m!3454429))

(declare-fun m!3454431 () Bool)

(assert (=> b!3194577 m!3454431))

(declare-fun m!3454433 () Bool)

(assert (=> b!3194598 m!3454433))

(declare-fun m!3454435 () Bool)

(assert (=> b!3194598 m!3454435))

(declare-fun m!3454437 () Bool)

(assert (=> b!3194574 m!3454437))

(declare-fun m!3454439 () Bool)

(assert (=> b!3194581 m!3454439))

(declare-fun m!3454441 () Bool)

(assert (=> b!3194603 m!3454441))

(declare-fun m!3454443 () Bool)

(assert (=> b!3194597 m!3454443))

(declare-fun m!3454445 () Bool)

(assert (=> b!3194604 m!3454445))

(declare-fun m!3454447 () Bool)

(assert (=> start!299658 m!3454447))

(declare-fun m!3454449 () Bool)

(assert (=> b!3194588 m!3454449))

(declare-fun m!3454451 () Bool)

(assert (=> b!3194573 m!3454451))

(declare-fun m!3454453 () Bool)

(assert (=> b!3194579 m!3454453))

(declare-fun m!3454455 () Bool)

(assert (=> b!3194579 m!3454455))

(declare-fun m!3454457 () Bool)

(assert (=> b!3194579 m!3454457))

(declare-fun m!3454459 () Bool)

(assert (=> b!3194591 m!3454459))

(declare-fun m!3454461 () Bool)

(assert (=> b!3194591 m!3454461))

(check-sat (not b_next!85521) (not b!3194592) (not b!3194574) b_and!211965 (not b!3194588) (not b!3194596) (not b_next!85529) (not b!3194573) (not b!3194581) (not b!3194599) (not b_next!85525) (not b_next!85523) (not start!299658) (not b!3194604) (not b!3194593) b_and!211963 (not b!3194579) (not b!3194580) b_and!211961 (not b!3194589) (not b!3194603) (not b!3194583) (not b!3194597) (not b!3194590) b_and!211967 (not b!3194601) (not b!3194602) (not b_next!85531) b_and!211969 (not b!3194582) (not b!3194572) (not b_next!85527) b_and!211959 (not b!3194600) (not b!3194576) (not b!3194594) (not b!3194591) (not b!3194598) (not b!3194585) (not b!3194577))
(check-sat b_and!211963 (not b_next!85521) b_and!211965 b_and!211961 b_and!211967 (not b_next!85531) b_and!211969 (not b_next!85527) (not b_next!85529) b_and!211959 (not b_next!85525) (not b_next!85523))
