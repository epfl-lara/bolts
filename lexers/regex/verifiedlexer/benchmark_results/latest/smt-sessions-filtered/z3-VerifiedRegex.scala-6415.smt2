; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334846 () Bool)

(assert start!334846)

(declare-fun b!3601571 () Bool)

(declare-fun b_free!93233 () Bool)

(declare-fun b_next!93937 () Bool)

(assert (=> b!3601571 (= b_free!93233 (not b_next!93937))))

(declare-fun tp!1101683 () Bool)

(declare-fun b_and!261699 () Bool)

(assert (=> b!3601571 (= tp!1101683 b_and!261699)))

(declare-fun b_free!93235 () Bool)

(declare-fun b_next!93939 () Bool)

(assert (=> b!3601571 (= b_free!93235 (not b_next!93939))))

(declare-fun tp!1101687 () Bool)

(declare-fun b_and!261701 () Bool)

(assert (=> b!3601571 (= tp!1101687 b_and!261701)))

(declare-fun b!3601570 () Bool)

(declare-fun b_free!93237 () Bool)

(declare-fun b_next!93941 () Bool)

(assert (=> b!3601570 (= b_free!93237 (not b_next!93941))))

(declare-fun tp!1101690 () Bool)

(declare-fun b_and!261703 () Bool)

(assert (=> b!3601570 (= tp!1101690 b_and!261703)))

(declare-fun b_free!93239 () Bool)

(declare-fun b_next!93943 () Bool)

(assert (=> b!3601570 (= b_free!93239 (not b_next!93943))))

(declare-fun tp!1101682 () Bool)

(declare-fun b_and!261705 () Bool)

(assert (=> b!3601570 (= tp!1101682 b_and!261705)))

(declare-fun b!3601567 () Bool)

(declare-fun b_free!93241 () Bool)

(declare-fun b_next!93945 () Bool)

(assert (=> b!3601567 (= b_free!93241 (not b_next!93945))))

(declare-fun tp!1101693 () Bool)

(declare-fun b_and!261707 () Bool)

(assert (=> b!3601567 (= tp!1101693 b_and!261707)))

(declare-fun b_free!93243 () Bool)

(declare-fun b_next!93947 () Bool)

(assert (=> b!3601567 (= b_free!93243 (not b_next!93947))))

(declare-fun tp!1101684 () Bool)

(declare-fun b_and!261709 () Bool)

(assert (=> b!3601567 (= tp!1101684 b_and!261709)))

(declare-fun b!3601588 () Bool)

(declare-fun b_free!93245 () Bool)

(declare-fun b_next!93949 () Bool)

(assert (=> b!3601588 (= b_free!93245 (not b_next!93949))))

(declare-fun tp!1101688 () Bool)

(declare-fun b_and!261711 () Bool)

(assert (=> b!3601588 (= tp!1101688 b_and!261711)))

(declare-fun b_free!93247 () Bool)

(declare-fun b_next!93951 () Bool)

(assert (=> b!3601588 (= b_free!93247 (not b_next!93951))))

(declare-fun tp!1101686 () Bool)

(declare-fun b_and!261713 () Bool)

(assert (=> b!3601588 (= tp!1101686 b_and!261713)))

(declare-fun b!3601557 () Bool)

(declare-fun e!2228741 () Bool)

(declare-fun e!2228745 () Bool)

(assert (=> b!3601557 (= e!2228741 e!2228745)))

(declare-fun res!1455640 () Bool)

(assert (=> b!3601557 (=> res!1455640 e!2228745)))

(declare-datatypes ((List!38013 0))(
  ( (Nil!37889) (Cons!37889 (h!43309 (_ BitVec 16)) (t!292344 List!38013)) )
))
(declare-datatypes ((TokenValue!5840 0))(
  ( (FloatLiteralValue!11680 (text!41325 List!38013)) (TokenValueExt!5839 (__x!23897 Int)) (Broken!29200 (value!180319 List!38013)) (Object!5963) (End!5840) (Def!5840) (Underscore!5840) (Match!5840) (Else!5840) (Error!5840) (Case!5840) (If!5840) (Extends!5840) (Abstract!5840) (Class!5840) (Val!5840) (DelimiterValue!11680 (del!5900 List!38013)) (KeywordValue!5846 (value!180320 List!38013)) (CommentValue!11680 (value!180321 List!38013)) (WhitespaceValue!11680 (value!180322 List!38013)) (IndentationValue!5840 (value!180323 List!38013)) (String!42533) (Int32!5840) (Broken!29201 (value!180324 List!38013)) (Boolean!5841) (Unit!53934) (OperatorValue!5843 (op!5900 List!38013)) (IdentifierValue!11680 (value!180325 List!38013)) (IdentifierValue!11681 (value!180326 List!38013)) (WhitespaceValue!11681 (value!180327 List!38013)) (True!11680) (False!11680) (Broken!29202 (value!180328 List!38013)) (Broken!29203 (value!180329 List!38013)) (True!11681) (RightBrace!5840) (RightBracket!5840) (Colon!5840) (Null!5840) (Comma!5840) (LeftBracket!5840) (False!11681) (LeftBrace!5840) (ImaginaryLiteralValue!5840 (text!41326 List!38013)) (StringLiteralValue!17520 (value!180330 List!38013)) (EOFValue!5840 (value!180331 List!38013)) (IdentValue!5840 (value!180332 List!38013)) (DelimiterValue!11681 (value!180333 List!38013)) (DedentValue!5840 (value!180334 List!38013)) (NewLineValue!5840 (value!180335 List!38013)) (IntegerValue!17520 (value!180336 (_ BitVec 32)) (text!41327 List!38013)) (IntegerValue!17521 (value!180337 Int) (text!41328 List!38013)) (Times!5840) (Or!5840) (Equal!5840) (Minus!5840) (Broken!29204 (value!180338 List!38013)) (And!5840) (Div!5840) (LessEqual!5840) (Mod!5840) (Concat!16209) (Not!5840) (Plus!5840) (SpaceValue!5840 (value!180339 List!38013)) (IntegerValue!17522 (value!180340 Int) (text!41329 List!38013)) (StringLiteralValue!17521 (text!41330 List!38013)) (FloatLiteralValue!11681 (text!41331 List!38013)) (BytesLiteralValue!5840 (value!180341 List!38013)) (CommentValue!11681 (value!180342 List!38013)) (StringLiteralValue!17522 (value!180343 List!38013)) (ErrorTokenValue!5840 (msg!5901 List!38013)) )
))
(declare-datatypes ((C!20924 0))(
  ( (C!20925 (val!12510 Int)) )
))
(declare-datatypes ((Regex!10369 0))(
  ( (ElementMatch!10369 (c!623286 C!20924)) (Concat!16210 (regOne!21250 Regex!10369) (regTwo!21250 Regex!10369)) (EmptyExpr!10369) (Star!10369 (reg!10698 Regex!10369)) (EmptyLang!10369) (Union!10369 (regOne!21251 Regex!10369) (regTwo!21251 Regex!10369)) )
))
(declare-datatypes ((String!42534 0))(
  ( (String!42535 (value!180344 String)) )
))
(declare-datatypes ((List!38014 0))(
  ( (Nil!37890) (Cons!37890 (h!43310 C!20924) (t!292345 List!38014)) )
))
(declare-datatypes ((IArray!23079 0))(
  ( (IArray!23080 (innerList!11597 List!38014)) )
))
(declare-datatypes ((Conc!11537 0))(
  ( (Node!11537 (left!29604 Conc!11537) (right!29934 Conc!11537) (csize!23304 Int) (cheight!11748 Int)) (Leaf!17953 (xs!14739 IArray!23079) (csize!23305 Int)) (Empty!11537) )
))
(declare-datatypes ((BalanceConc!22688 0))(
  ( (BalanceConc!22689 (c!623287 Conc!11537)) )
))
(declare-datatypes ((TokenValueInjection!11108 0))(
  ( (TokenValueInjection!11109 (toValue!7894 Int) (toChars!7753 Int)) )
))
(declare-datatypes ((Rule!11020 0))(
  ( (Rule!11021 (regex!5610 Regex!10369) (tag!6302 String!42534) (isSeparator!5610 Bool) (transformation!5610 TokenValueInjection!11108)) )
))
(declare-datatypes ((Token!10586 0))(
  ( (Token!10587 (value!180345 TokenValue!5840) (rule!8346 Rule!11020) (size!28874 Int) (originalCharacters!6324 List!38014)) )
))
(declare-datatypes ((tuple2!37780 0))(
  ( (tuple2!37781 (_1!22024 Token!10586) (_2!22024 List!38014)) )
))
(declare-fun lt!1237596 () tuple2!37780)

(declare-datatypes ((Option!7850 0))(
  ( (None!7849) (Some!7849 (v!37563 tuple2!37780)) )
))
(declare-fun lt!1237604 () Option!7850)

(declare-fun lt!1237613 () BalanceConc!22688)

(declare-fun lt!1237586 () List!38014)

(declare-fun apply!9116 (TokenValueInjection!11108 BalanceConc!22688) TokenValue!5840)

(declare-fun size!28875 (BalanceConc!22688) Int)

(assert (=> b!3601557 (= res!1455640 (not (= lt!1237604 (Some!7849 (tuple2!37781 (Token!10587 (apply!9116 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237613) (rule!8346 (_1!22024 lt!1237596)) (size!28875 lt!1237613) lt!1237586) (_2!22024 lt!1237596))))))))

(declare-datatypes ((Unit!53935 0))(
  ( (Unit!53936) )
))
(declare-fun lt!1237588 () Unit!53935)

(declare-fun lemmaCharactersSize!663 (Token!10586) Unit!53935)

(assert (=> b!3601557 (= lt!1237588 (lemmaCharactersSize!663 (_1!22024 lt!1237596)))))

(declare-fun lt!1237600 () Unit!53935)

(declare-fun lemmaEqSameImage!801 (TokenValueInjection!11108 BalanceConc!22688 BalanceConc!22688) Unit!53935)

(declare-fun seqFromList!4163 (List!38014) BalanceConc!22688)

(assert (=> b!3601557 (= lt!1237600 (lemmaEqSameImage!801 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237613 (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596)))))))

(declare-fun lt!1237606 () Unit!53935)

(declare-fun lemmaSemiInverse!1367 (TokenValueInjection!11108 BalanceConc!22688) Unit!53935)

(assert (=> b!3601557 (= lt!1237606 (lemmaSemiInverse!1367 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237613))))

(declare-fun b!3601558 () Bool)

(declare-fun res!1455625 () Bool)

(declare-fun e!2228751 () Bool)

(assert (=> b!3601558 (=> (not res!1455625) (not e!2228751))))

(declare-datatypes ((LexerInterface!5199 0))(
  ( (LexerInterfaceExt!5196 (__x!23898 Int)) (Lexer!5197) )
))
(declare-fun thiss!23823 () LexerInterface!5199)

(declare-datatypes ((List!38015 0))(
  ( (Nil!37891) (Cons!37891 (h!43311 Rule!11020) (t!292346 List!38015)) )
))
(declare-fun rules!3307 () List!38015)

(declare-fun rulesInvariant!4596 (LexerInterface!5199 List!38015) Bool)

(assert (=> b!3601558 (= res!1455625 (rulesInvariant!4596 thiss!23823 rules!3307))))

(declare-fun b!3601560 () Bool)

(declare-fun res!1455622 () Bool)

(declare-fun e!2228740 () Bool)

(assert (=> b!3601560 (=> res!1455622 e!2228740)))

(declare-fun sepAndNonSepRulesDisjointChars!1780 (List!38015 List!38015) Bool)

(assert (=> b!3601560 (= res!1455622 (not (sepAndNonSepRulesDisjointChars!1780 rules!3307 rules!3307)))))

(declare-fun b!3601561 () Bool)

(declare-fun res!1455632 () Bool)

(assert (=> b!3601561 (=> (not res!1455632) (not e!2228751))))

(declare-fun anOtherTypeRule!33 () Rule!11020)

(declare-fun contains!7283 (List!38015 Rule!11020) Bool)

(assert (=> b!3601561 (= res!1455632 (contains!7283 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3601562 () Bool)

(declare-fun res!1455636 () Bool)

(declare-fun e!2228743 () Bool)

(assert (=> b!3601562 (=> (not res!1455636) (not e!2228743))))

(declare-fun lt!1237607 () tuple2!37780)

(declare-fun isEmpty!22354 (List!38014) Bool)

(assert (=> b!3601562 (= res!1455636 (isEmpty!22354 (_2!22024 lt!1237607)))))

(declare-fun b!3601563 () Bool)

(declare-fun res!1455628 () Bool)

(assert (=> b!3601563 (=> (not res!1455628) (not e!2228751))))

(declare-fun rule!403 () Rule!11020)

(assert (=> b!3601563 (= res!1455628 (contains!7283 rules!3307 rule!403))))

(declare-fun token!511 () Token!10586)

(declare-fun b!3601564 () Bool)

(declare-fun e!2228731 () Bool)

(declare-fun tp!1101689 () Bool)

(declare-fun e!2228732 () Bool)

(declare-fun inv!51245 (String!42534) Bool)

(declare-fun inv!51248 (TokenValueInjection!11108) Bool)

(assert (=> b!3601564 (= e!2228732 (and tp!1101689 (inv!51245 (tag!6302 (rule!8346 token!511))) (inv!51248 (transformation!5610 (rule!8346 token!511))) e!2228731))))

(declare-fun b!3601565 () Bool)

(declare-fun res!1455638 () Bool)

(assert (=> b!3601565 (=> (not res!1455638) (not e!2228751))))

(assert (=> b!3601565 (= res!1455638 (not (= (isSeparator!5610 anOtherTypeRule!33) (isSeparator!5610 rule!403))))))

(declare-fun e!2228726 () Bool)

(declare-fun b!3601566 () Bool)

(assert (=> b!3601566 (= e!2228726 (or (isSeparator!5610 rule!403) (not (isSeparator!5610 (rule!8346 (_1!22024 lt!1237596)))) (not (= lt!1237586 Nil!37890))))))

(declare-fun lt!1237587 () Unit!53935)

(declare-fun e!2228734 () Unit!53935)

(assert (=> b!3601566 (= lt!1237587 e!2228734)))

(declare-fun c!623285 () Bool)

(declare-fun lt!1237591 () List!38014)

(declare-fun lt!1237602 () C!20924)

(declare-fun contains!7284 (List!38014 C!20924) Bool)

(assert (=> b!3601566 (= c!623285 (not (contains!7284 lt!1237591 lt!1237602)))))

(declare-fun head!7554 (List!38014) C!20924)

(assert (=> b!3601566 (= lt!1237602 (head!7554 lt!1237586))))

(declare-fun e!2228744 () Bool)

(declare-fun e!2228739 () Bool)

(declare-fun b!3601559 () Bool)

(declare-fun tp!1101694 () Bool)

(assert (=> b!3601559 (= e!2228739 (and tp!1101694 (inv!51245 (tag!6302 (h!43311 rules!3307))) (inv!51248 (transformation!5610 (h!43311 rules!3307))) e!2228744))))

(declare-fun res!1455627 () Bool)

(assert (=> start!334846 (=> (not res!1455627) (not e!2228751))))

(get-info :version)

(assert (=> start!334846 (= res!1455627 ((_ is Lexer!5197) thiss!23823))))

(assert (=> start!334846 e!2228751))

(declare-fun e!2228738 () Bool)

(assert (=> start!334846 e!2228738))

(declare-fun e!2228736 () Bool)

(assert (=> start!334846 e!2228736))

(assert (=> start!334846 true))

(declare-fun e!2228748 () Bool)

(declare-fun inv!51249 (Token!10586) Bool)

(assert (=> start!334846 (and (inv!51249 token!511) e!2228748)))

(declare-fun e!2228747 () Bool)

(assert (=> start!334846 e!2228747))

(declare-fun e!2228737 () Bool)

(assert (=> start!334846 e!2228737))

(declare-fun e!2228750 () Bool)

(assert (=> b!3601567 (= e!2228750 (and tp!1101693 tp!1101684))))

(declare-fun b!3601568 () Bool)

(declare-fun res!1455623 () Bool)

(declare-fun e!2228749 () Bool)

(assert (=> b!3601568 (=> res!1455623 e!2228749)))

(declare-fun suffix!1395 () List!38014)

(assert (=> b!3601568 (= res!1455623 (isEmpty!22354 suffix!1395))))

(declare-fun b!3601569 () Bool)

(declare-fun tp!1101691 () Bool)

(assert (=> b!3601569 (= e!2228738 (and e!2228739 tp!1101691))))

(assert (=> b!3601570 (= e!2228731 (and tp!1101690 tp!1101682))))

(declare-fun e!2228742 () Bool)

(assert (=> b!3601571 (= e!2228742 (and tp!1101683 tp!1101687))))

(declare-fun b!3601572 () Bool)

(declare-fun e!2228746 () Bool)

(assert (=> b!3601572 (= e!2228746 e!2228743)))

(declare-fun res!1455634 () Bool)

(assert (=> b!3601572 (=> (not res!1455634) (not e!2228743))))

(assert (=> b!3601572 (= res!1455634 (= (_1!22024 lt!1237607) token!511))))

(declare-fun lt!1237605 () Option!7850)

(declare-fun get!12265 (Option!7850) tuple2!37780)

(assert (=> b!3601572 (= lt!1237607 (get!12265 lt!1237605))))

(declare-fun b!3601573 () Bool)

(declare-fun tp!1101680 () Bool)

(assert (=> b!3601573 (= e!2228737 (and tp!1101680 (inv!51245 (tag!6302 anOtherTypeRule!33)) (inv!51248 (transformation!5610 anOtherTypeRule!33)) e!2228742))))

(declare-fun b!3601574 () Bool)

(declare-fun res!1455624 () Bool)

(assert (=> b!3601574 (=> res!1455624 e!2228740)))

(declare-fun lt!1237598 () C!20924)

(declare-fun usedCharacters!824 (Regex!10369) List!38014)

(assert (=> b!3601574 (= res!1455624 (not (contains!7284 (usedCharacters!824 (regex!5610 anOtherTypeRule!33)) lt!1237598)))))

(declare-fun b!3601575 () Bool)

(assert (=> b!3601575 (= e!2228745 e!2228726)))

(declare-fun res!1455631 () Bool)

(assert (=> b!3601575 (=> res!1455631 e!2228726)))

(declare-fun lt!1237593 () List!38014)

(declare-fun lt!1237611 () Option!7850)

(assert (=> b!3601575 (= res!1455631 (or (not (= lt!1237593 (_2!22024 lt!1237596))) (not (= lt!1237611 (Some!7849 (tuple2!37781 (_1!22024 lt!1237596) lt!1237593))))))))

(assert (=> b!3601575 (= (_2!22024 lt!1237596) lt!1237593)))

(declare-fun lt!1237612 () List!38014)

(declare-fun lt!1237599 () Unit!53935)

(declare-fun lemmaSamePrefixThenSameSuffix!1328 (List!38014 List!38014 List!38014 List!38014 List!38014) Unit!53935)

(assert (=> b!3601575 (= lt!1237599 (lemmaSamePrefixThenSameSuffix!1328 lt!1237586 (_2!22024 lt!1237596) lt!1237586 lt!1237593 lt!1237612))))

(declare-fun getSuffix!1548 (List!38014 List!38014) List!38014)

(assert (=> b!3601575 (= lt!1237593 (getSuffix!1548 lt!1237612 lt!1237586))))

(declare-fun lt!1237595 () Int)

(declare-fun lt!1237590 () TokenValue!5840)

(assert (=> b!3601575 (= lt!1237611 (Some!7849 (tuple2!37781 (Token!10587 lt!1237590 (rule!8346 (_1!22024 lt!1237596)) lt!1237595 lt!1237586) (_2!22024 lt!1237596))))))

(declare-fun maxPrefixOneRule!1877 (LexerInterface!5199 Rule!11020 List!38014) Option!7850)

(assert (=> b!3601575 (= lt!1237611 (maxPrefixOneRule!1877 thiss!23823 (rule!8346 (_1!22024 lt!1237596)) lt!1237612))))

(declare-fun size!28876 (List!38014) Int)

(assert (=> b!3601575 (= lt!1237595 (size!28876 lt!1237586))))

(assert (=> b!3601575 (= lt!1237590 (apply!9116 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) (seqFromList!4163 lt!1237586)))))

(declare-fun lt!1237597 () Unit!53935)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!949 (LexerInterface!5199 List!38015 List!38014 List!38014 List!38014 Rule!11020) Unit!53935)

(assert (=> b!3601575 (= lt!1237597 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!949 thiss!23823 rules!3307 lt!1237586 lt!1237612 (_2!22024 lt!1237596) (rule!8346 (_1!22024 lt!1237596))))))

(declare-fun b!3601576 () Bool)

(declare-fun Unit!53937 () Unit!53935)

(assert (=> b!3601576 (= e!2228734 Unit!53937)))

(declare-fun lt!1237601 () List!38014)

(declare-fun lt!1237594 () Unit!53935)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!594 (Regex!10369 List!38014 C!20924) Unit!53935)

(assert (=> b!3601576 (= lt!1237594 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!594 (regex!5610 rule!403) lt!1237601 lt!1237602))))

(assert (=> b!3601576 false))

(declare-fun b!3601577 () Bool)

(declare-fun res!1455639 () Bool)

(assert (=> b!3601577 (=> (not res!1455639) (not e!2228751))))

(declare-fun isEmpty!22355 (List!38015) Bool)

(assert (=> b!3601577 (= res!1455639 (not (isEmpty!22355 rules!3307)))))

(declare-fun b!3601578 () Bool)

(declare-fun Unit!53938 () Unit!53935)

(assert (=> b!3601578 (= e!2228734 Unit!53938)))

(declare-fun b!3601579 () Bool)

(declare-fun tp_is_empty!17821 () Bool)

(declare-fun tp!1101685 () Bool)

(assert (=> b!3601579 (= e!2228736 (and tp_is_empty!17821 tp!1101685))))

(declare-fun b!3601580 () Bool)

(assert (=> b!3601580 (= e!2228749 e!2228740)))

(declare-fun res!1455621 () Bool)

(assert (=> b!3601580 (=> res!1455621 e!2228740)))

(assert (=> b!3601580 (= res!1455621 (contains!7284 lt!1237591 lt!1237598))))

(assert (=> b!3601580 (= lt!1237598 (head!7554 suffix!1395))))

(assert (=> b!3601580 (= lt!1237591 (usedCharacters!824 (regex!5610 rule!403)))))

(declare-fun b!3601581 () Bool)

(assert (=> b!3601581 (= e!2228751 e!2228746)))

(declare-fun res!1455626 () Bool)

(assert (=> b!3601581 (=> (not res!1455626) (not e!2228746))))

(declare-fun isDefined!6082 (Option!7850) Bool)

(assert (=> b!3601581 (= res!1455626 (isDefined!6082 lt!1237605))))

(declare-fun maxPrefix!2733 (LexerInterface!5199 List!38015 List!38014) Option!7850)

(assert (=> b!3601581 (= lt!1237605 (maxPrefix!2733 thiss!23823 rules!3307 lt!1237601))))

(declare-fun list!13958 (BalanceConc!22688) List!38014)

(declare-fun charsOf!3624 (Token!10586) BalanceConc!22688)

(assert (=> b!3601581 (= lt!1237601 (list!13958 (charsOf!3624 token!511)))))

(declare-fun b!3601582 () Bool)

(declare-fun res!1455635 () Bool)

(assert (=> b!3601582 (=> res!1455635 e!2228741)))

(declare-fun matchR!4938 (Regex!10369 List!38014) Bool)

(assert (=> b!3601582 (= res!1455635 (not (matchR!4938 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237586)))))

(declare-fun b!3601583 () Bool)

(assert (=> b!3601583 (= e!2228743 (not e!2228749))))

(declare-fun res!1455630 () Bool)

(assert (=> b!3601583 (=> res!1455630 e!2228749)))

(assert (=> b!3601583 (= res!1455630 (not (matchR!4938 (regex!5610 rule!403) lt!1237601)))))

(declare-fun ruleValid!1875 (LexerInterface!5199 Rule!11020) Bool)

(assert (=> b!3601583 (ruleValid!1875 thiss!23823 rule!403)))

(declare-fun lt!1237614 () Unit!53935)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1030 (LexerInterface!5199 Rule!11020 List!38015) Unit!53935)

(assert (=> b!3601583 (= lt!1237614 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1030 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1101692 () Bool)

(declare-fun b!3601584 () Bool)

(declare-fun inv!21 (TokenValue!5840) Bool)

(assert (=> b!3601584 (= e!2228748 (and (inv!21 (value!180345 token!511)) e!2228732 tp!1101692))))

(declare-fun b!3601585 () Bool)

(declare-fun tp!1101681 () Bool)

(assert (=> b!3601585 (= e!2228747 (and tp!1101681 (inv!51245 (tag!6302 rule!403)) (inv!51248 (transformation!5610 rule!403)) e!2228750))))

(declare-fun b!3601586 () Bool)

(declare-fun res!1455633 () Bool)

(assert (=> b!3601586 (=> (not res!1455633) (not e!2228743))))

(assert (=> b!3601586 (= res!1455633 (= (rule!8346 token!511) rule!403))))

(declare-fun b!3601587 () Bool)

(declare-fun e!2228735 () Bool)

(declare-fun lt!1237610 () Rule!11020)

(assert (=> b!3601587 (= e!2228735 (= (rule!8346 (_1!22024 lt!1237596)) lt!1237610))))

(assert (=> b!3601588 (= e!2228744 (and tp!1101688 tp!1101686))))

(declare-fun b!3601589 () Bool)

(assert (=> b!3601589 (= e!2228740 e!2228741)))

(declare-fun res!1455637 () Bool)

(assert (=> b!3601589 (=> res!1455637 e!2228741)))

(declare-fun isPrefix!2973 (List!38014 List!38014) Bool)

(assert (=> b!3601589 (= res!1455637 (not (isPrefix!2973 lt!1237586 lt!1237612)))))

(declare-fun ++!9426 (List!38014 List!38014) List!38014)

(assert (=> b!3601589 (isPrefix!2973 lt!1237586 (++!9426 lt!1237586 (_2!22024 lt!1237596)))))

(declare-fun lt!1237592 () Unit!53935)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1894 (List!38014 List!38014) Unit!53935)

(assert (=> b!3601589 (= lt!1237592 (lemmaConcatTwoListThenFirstIsPrefix!1894 lt!1237586 (_2!22024 lt!1237596)))))

(assert (=> b!3601589 (= lt!1237586 (list!13958 lt!1237613))))

(assert (=> b!3601589 (= lt!1237613 (charsOf!3624 (_1!22024 lt!1237596)))))

(declare-fun e!2228727 () Bool)

(assert (=> b!3601589 e!2228727))

(declare-fun res!1455620 () Bool)

(assert (=> b!3601589 (=> (not res!1455620) (not e!2228727))))

(declare-datatypes ((Option!7851 0))(
  ( (None!7850) (Some!7850 (v!37564 Rule!11020)) )
))
(declare-fun lt!1237608 () Option!7851)

(declare-fun isDefined!6083 (Option!7851) Bool)

(assert (=> b!3601589 (= res!1455620 (isDefined!6083 lt!1237608))))

(declare-fun getRuleFromTag!1216 (LexerInterface!5199 List!38015 String!42534) Option!7851)

(assert (=> b!3601589 (= lt!1237608 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 (_1!22024 lt!1237596)))))))

(declare-fun lt!1237589 () Unit!53935)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1216 (LexerInterface!5199 List!38015 List!38014 Token!10586) Unit!53935)

(assert (=> b!3601589 (= lt!1237589 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1216 thiss!23823 rules!3307 lt!1237612 (_1!22024 lt!1237596)))))

(assert (=> b!3601589 (= lt!1237596 (get!12265 lt!1237604))))

(declare-fun lt!1237603 () Unit!53935)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!879 (LexerInterface!5199 List!38015 List!38014 List!38014) Unit!53935)

(assert (=> b!3601589 (= lt!1237603 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!879 thiss!23823 rules!3307 lt!1237601 suffix!1395))))

(assert (=> b!3601589 (= lt!1237604 (maxPrefix!2733 thiss!23823 rules!3307 lt!1237612))))

(assert (=> b!3601589 (isPrefix!2973 lt!1237601 lt!1237612)))

(declare-fun lt!1237609 () Unit!53935)

(assert (=> b!3601589 (= lt!1237609 (lemmaConcatTwoListThenFirstIsPrefix!1894 lt!1237601 suffix!1395))))

(assert (=> b!3601589 (= lt!1237612 (++!9426 lt!1237601 suffix!1395))))

(declare-fun b!3601590 () Bool)

(assert (=> b!3601590 (= e!2228727 e!2228735)))

(declare-fun res!1455629 () Bool)

(assert (=> b!3601590 (=> (not res!1455629) (not e!2228735))))

(assert (=> b!3601590 (= res!1455629 (matchR!4938 (regex!5610 lt!1237610) (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))))))

(declare-fun get!12266 (Option!7851) Rule!11020)

(assert (=> b!3601590 (= lt!1237610 (get!12266 lt!1237608))))

(assert (= (and start!334846 res!1455627) b!3601577))

(assert (= (and b!3601577 res!1455639) b!3601558))

(assert (= (and b!3601558 res!1455625) b!3601563))

(assert (= (and b!3601563 res!1455628) b!3601561))

(assert (= (and b!3601561 res!1455632) b!3601565))

(assert (= (and b!3601565 res!1455638) b!3601581))

(assert (= (and b!3601581 res!1455626) b!3601572))

(assert (= (and b!3601572 res!1455634) b!3601562))

(assert (= (and b!3601562 res!1455636) b!3601586))

(assert (= (and b!3601586 res!1455633) b!3601583))

(assert (= (and b!3601583 (not res!1455630)) b!3601568))

(assert (= (and b!3601568 (not res!1455623)) b!3601580))

(assert (= (and b!3601580 (not res!1455621)) b!3601574))

(assert (= (and b!3601574 (not res!1455624)) b!3601560))

(assert (= (and b!3601560 (not res!1455622)) b!3601589))

(assert (= (and b!3601589 res!1455620) b!3601590))

(assert (= (and b!3601590 res!1455629) b!3601587))

(assert (= (and b!3601589 (not res!1455637)) b!3601582))

(assert (= (and b!3601582 (not res!1455635)) b!3601557))

(assert (= (and b!3601557 (not res!1455640)) b!3601575))

(assert (= (and b!3601575 (not res!1455631)) b!3601566))

(assert (= (and b!3601566 c!623285) b!3601576))

(assert (= (and b!3601566 (not c!623285)) b!3601578))

(assert (= b!3601559 b!3601588))

(assert (= b!3601569 b!3601559))

(assert (= (and start!334846 ((_ is Cons!37891) rules!3307)) b!3601569))

(assert (= (and start!334846 ((_ is Cons!37890) suffix!1395)) b!3601579))

(assert (= b!3601564 b!3601570))

(assert (= b!3601584 b!3601564))

(assert (= start!334846 b!3601584))

(assert (= b!3601585 b!3601567))

(assert (= start!334846 b!3601585))

(assert (= b!3601573 b!3601571))

(assert (= start!334846 b!3601573))

(declare-fun m!4097575 () Bool)

(assert (=> b!3601557 m!4097575))

(declare-fun m!4097577 () Bool)

(assert (=> b!3601557 m!4097577))

(declare-fun m!4097579 () Bool)

(assert (=> b!3601557 m!4097579))

(declare-fun m!4097581 () Bool)

(assert (=> b!3601557 m!4097581))

(declare-fun m!4097583 () Bool)

(assert (=> b!3601557 m!4097583))

(assert (=> b!3601557 m!4097581))

(declare-fun m!4097585 () Bool)

(assert (=> b!3601557 m!4097585))

(declare-fun m!4097587 () Bool)

(assert (=> b!3601566 m!4097587))

(declare-fun m!4097589 () Bool)

(assert (=> b!3601566 m!4097589))

(declare-fun m!4097591 () Bool)

(assert (=> b!3601573 m!4097591))

(declare-fun m!4097593 () Bool)

(assert (=> b!3601573 m!4097593))

(declare-fun m!4097595 () Bool)

(assert (=> b!3601558 m!4097595))

(declare-fun m!4097597 () Bool)

(assert (=> b!3601577 m!4097597))

(declare-fun m!4097599 () Bool)

(assert (=> b!3601562 m!4097599))

(declare-fun m!4097601 () Bool)

(assert (=> b!3601561 m!4097601))

(declare-fun m!4097603 () Bool)

(assert (=> b!3601560 m!4097603))

(declare-fun m!4097605 () Bool)

(assert (=> b!3601576 m!4097605))

(declare-fun m!4097607 () Bool)

(assert (=> b!3601575 m!4097607))

(declare-fun m!4097609 () Bool)

(assert (=> b!3601575 m!4097609))

(declare-fun m!4097611 () Bool)

(assert (=> b!3601575 m!4097611))

(declare-fun m!4097613 () Bool)

(assert (=> b!3601575 m!4097613))

(assert (=> b!3601575 m!4097607))

(declare-fun m!4097615 () Bool)

(assert (=> b!3601575 m!4097615))

(declare-fun m!4097617 () Bool)

(assert (=> b!3601575 m!4097617))

(declare-fun m!4097619 () Bool)

(assert (=> b!3601575 m!4097619))

(declare-fun m!4097621 () Bool)

(assert (=> b!3601589 m!4097621))

(declare-fun m!4097623 () Bool)

(assert (=> b!3601589 m!4097623))

(declare-fun m!4097625 () Bool)

(assert (=> b!3601589 m!4097625))

(declare-fun m!4097627 () Bool)

(assert (=> b!3601589 m!4097627))

(declare-fun m!4097629 () Bool)

(assert (=> b!3601589 m!4097629))

(declare-fun m!4097631 () Bool)

(assert (=> b!3601589 m!4097631))

(declare-fun m!4097633 () Bool)

(assert (=> b!3601589 m!4097633))

(declare-fun m!4097635 () Bool)

(assert (=> b!3601589 m!4097635))

(declare-fun m!4097637 () Bool)

(assert (=> b!3601589 m!4097637))

(declare-fun m!4097639 () Bool)

(assert (=> b!3601589 m!4097639))

(declare-fun m!4097641 () Bool)

(assert (=> b!3601589 m!4097641))

(declare-fun m!4097643 () Bool)

(assert (=> b!3601589 m!4097643))

(declare-fun m!4097645 () Bool)

(assert (=> b!3601589 m!4097645))

(declare-fun m!4097647 () Bool)

(assert (=> b!3601589 m!4097647))

(assert (=> b!3601589 m!4097647))

(declare-fun m!4097649 () Bool)

(assert (=> b!3601589 m!4097649))

(declare-fun m!4097651 () Bool)

(assert (=> b!3601564 m!4097651))

(declare-fun m!4097653 () Bool)

(assert (=> b!3601564 m!4097653))

(declare-fun m!4097655 () Bool)

(assert (=> b!3601572 m!4097655))

(declare-fun m!4097657 () Bool)

(assert (=> b!3601581 m!4097657))

(declare-fun m!4097659 () Bool)

(assert (=> b!3601581 m!4097659))

(declare-fun m!4097661 () Bool)

(assert (=> b!3601581 m!4097661))

(assert (=> b!3601581 m!4097661))

(declare-fun m!4097663 () Bool)

(assert (=> b!3601581 m!4097663))

(declare-fun m!4097665 () Bool)

(assert (=> b!3601583 m!4097665))

(declare-fun m!4097667 () Bool)

(assert (=> b!3601583 m!4097667))

(declare-fun m!4097669 () Bool)

(assert (=> b!3601583 m!4097669))

(declare-fun m!4097671 () Bool)

(assert (=> start!334846 m!4097671))

(declare-fun m!4097673 () Bool)

(assert (=> b!3601574 m!4097673))

(assert (=> b!3601574 m!4097673))

(declare-fun m!4097675 () Bool)

(assert (=> b!3601574 m!4097675))

(assert (=> b!3601590 m!4097625))

(assert (=> b!3601590 m!4097625))

(declare-fun m!4097677 () Bool)

(assert (=> b!3601590 m!4097677))

(assert (=> b!3601590 m!4097677))

(declare-fun m!4097679 () Bool)

(assert (=> b!3601590 m!4097679))

(declare-fun m!4097681 () Bool)

(assert (=> b!3601590 m!4097681))

(declare-fun m!4097683 () Bool)

(assert (=> b!3601585 m!4097683))

(declare-fun m!4097685 () Bool)

(assert (=> b!3601585 m!4097685))

(declare-fun m!4097687 () Bool)

(assert (=> b!3601568 m!4097687))

(declare-fun m!4097689 () Bool)

(assert (=> b!3601580 m!4097689))

(declare-fun m!4097691 () Bool)

(assert (=> b!3601580 m!4097691))

(declare-fun m!4097693 () Bool)

(assert (=> b!3601580 m!4097693))

(declare-fun m!4097695 () Bool)

(assert (=> b!3601563 m!4097695))

(declare-fun m!4097697 () Bool)

(assert (=> b!3601582 m!4097697))

(declare-fun m!4097699 () Bool)

(assert (=> b!3601559 m!4097699))

(declare-fun m!4097701 () Bool)

(assert (=> b!3601559 m!4097701))

(declare-fun m!4097703 () Bool)

(assert (=> b!3601584 m!4097703))

(check-sat b_and!261701 (not b_next!93939) (not b!3601572) b_and!261699 tp_is_empty!17821 (not b!3601568) (not b!3601580) b_and!261709 (not b!3601562) (not b!3601563) (not b!3601579) (not b!3601574) (not b!3601561) b_and!261707 b_and!261703 (not b!3601582) (not b!3601569) (not b!3601573) (not b!3601581) (not b!3601575) (not b!3601590) b_and!261713 (not b_next!93951) (not b!3601583) (not b_next!93941) (not b!3601584) b_and!261711 (not b!3601557) (not start!334846) (not b!3601564) (not b!3601559) (not b_next!93947) (not b_next!93949) (not b!3601589) (not b!3601576) b_and!261705 (not b!3601577) (not b!3601585) (not b!3601560) (not b_next!93937) (not b_next!93945) (not b_next!93943) (not b!3601566) (not b!3601558))
(check-sat b_and!261701 (not b_next!93939) b_and!261699 (not b_next!93941) b_and!261711 b_and!261705 b_and!261709 b_and!261707 b_and!261703 b_and!261713 (not b_next!93951) (not b_next!93947) (not b_next!93949) (not b_next!93937) (not b_next!93945) (not b_next!93943))
(get-model)

(declare-fun b!3601601 () Bool)

(declare-fun e!2228759 () Bool)

(declare-fun e!2228761 () Bool)

(assert (=> b!3601601 (= e!2228759 e!2228761)))

(declare-fun c!623292 () Bool)

(assert (=> b!3601601 (= c!623292 ((_ is IntegerValue!17521) (value!180345 token!511)))))

(declare-fun b!3601602 () Bool)

(declare-fun inv!16 (TokenValue!5840) Bool)

(assert (=> b!3601602 (= e!2228759 (inv!16 (value!180345 token!511)))))

(declare-fun b!3601603 () Bool)

(declare-fun e!2228760 () Bool)

(declare-fun inv!15 (TokenValue!5840) Bool)

(assert (=> b!3601603 (= e!2228760 (inv!15 (value!180345 token!511)))))

(declare-fun b!3601604 () Bool)

(declare-fun res!1455654 () Bool)

(assert (=> b!3601604 (=> res!1455654 e!2228760)))

(assert (=> b!3601604 (= res!1455654 (not ((_ is IntegerValue!17522) (value!180345 token!511))))))

(assert (=> b!3601604 (= e!2228761 e!2228760)))

(declare-fun b!3601605 () Bool)

(declare-fun inv!17 (TokenValue!5840) Bool)

(assert (=> b!3601605 (= e!2228761 (inv!17 (value!180345 token!511)))))

(declare-fun d!1061102 () Bool)

(declare-fun c!623293 () Bool)

(assert (=> d!1061102 (= c!623293 ((_ is IntegerValue!17520) (value!180345 token!511)))))

(assert (=> d!1061102 (= (inv!21 (value!180345 token!511)) e!2228759)))

(assert (= (and d!1061102 c!623293) b!3601602))

(assert (= (and d!1061102 (not c!623293)) b!3601601))

(assert (= (and b!3601601 c!623292) b!3601605))

(assert (= (and b!3601601 (not c!623292)) b!3601604))

(assert (= (and b!3601604 (not res!1455654)) b!3601603))

(declare-fun m!4097705 () Bool)

(assert (=> b!3601602 m!4097705))

(declare-fun m!4097707 () Bool)

(assert (=> b!3601603 m!4097707))

(declare-fun m!4097709 () Bool)

(assert (=> b!3601605 m!4097709))

(assert (=> b!3601584 d!1061102))

(declare-fun d!1061104 () Bool)

(declare-fun lt!1237617 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5407 (List!38015) (InoxSet Rule!11020))

(assert (=> d!1061104 (= lt!1237617 (select (content!5407 rules!3307) rule!403))))

(declare-fun e!2228767 () Bool)

(assert (=> d!1061104 (= lt!1237617 e!2228767)))

(declare-fun res!1455659 () Bool)

(assert (=> d!1061104 (=> (not res!1455659) (not e!2228767))))

(assert (=> d!1061104 (= res!1455659 ((_ is Cons!37891) rules!3307))))

(assert (=> d!1061104 (= (contains!7283 rules!3307 rule!403) lt!1237617)))

(declare-fun b!3601610 () Bool)

(declare-fun e!2228766 () Bool)

(assert (=> b!3601610 (= e!2228767 e!2228766)))

(declare-fun res!1455660 () Bool)

(assert (=> b!3601610 (=> res!1455660 e!2228766)))

(assert (=> b!3601610 (= res!1455660 (= (h!43311 rules!3307) rule!403))))

(declare-fun b!3601611 () Bool)

(assert (=> b!3601611 (= e!2228766 (contains!7283 (t!292346 rules!3307) rule!403))))

(assert (= (and d!1061104 res!1455659) b!3601610))

(assert (= (and b!3601610 (not res!1455660)) b!3601611))

(declare-fun m!4097713 () Bool)

(assert (=> d!1061104 m!4097713))

(declare-fun m!4097715 () Bool)

(assert (=> d!1061104 m!4097715))

(declare-fun m!4097717 () Bool)

(assert (=> b!3601611 m!4097717))

(assert (=> b!3601563 d!1061104))

(declare-fun d!1061110 () Bool)

(assert (=> d!1061110 (= (isEmpty!22354 (_2!22024 lt!1237607)) ((_ is Nil!37890) (_2!22024 lt!1237607)))))

(assert (=> b!3601562 d!1061110))

(declare-fun d!1061112 () Bool)

(assert (=> d!1061112 (= (inv!51245 (tag!6302 (rule!8346 token!511))) (= (mod (str.len (value!180344 (tag!6302 (rule!8346 token!511)))) 2) 0))))

(assert (=> b!3601564 d!1061112))

(declare-fun d!1061114 () Bool)

(declare-fun res!1455663 () Bool)

(declare-fun e!2228770 () Bool)

(assert (=> d!1061114 (=> (not res!1455663) (not e!2228770))))

(declare-fun semiInverseModEq!2383 (Int Int) Bool)

(assert (=> d!1061114 (= res!1455663 (semiInverseModEq!2383 (toChars!7753 (transformation!5610 (rule!8346 token!511))) (toValue!7894 (transformation!5610 (rule!8346 token!511)))))))

(assert (=> d!1061114 (= (inv!51248 (transformation!5610 (rule!8346 token!511))) e!2228770)))

(declare-fun b!3601614 () Bool)

(declare-fun equivClasses!2282 (Int Int) Bool)

(assert (=> b!3601614 (= e!2228770 (equivClasses!2282 (toChars!7753 (transformation!5610 (rule!8346 token!511))) (toValue!7894 (transformation!5610 (rule!8346 token!511)))))))

(assert (= (and d!1061114 res!1455663) b!3601614))

(declare-fun m!4097719 () Bool)

(assert (=> d!1061114 m!4097719))

(declare-fun m!4097721 () Bool)

(assert (=> b!3601614 m!4097721))

(assert (=> b!3601564 d!1061114))

(declare-fun d!1061116 () Bool)

(assert (=> d!1061116 (= (inv!51245 (tag!6302 rule!403)) (= (mod (str.len (value!180344 (tag!6302 rule!403))) 2) 0))))

(assert (=> b!3601585 d!1061116))

(declare-fun d!1061118 () Bool)

(declare-fun res!1455664 () Bool)

(declare-fun e!2228771 () Bool)

(assert (=> d!1061118 (=> (not res!1455664) (not e!2228771))))

(assert (=> d!1061118 (= res!1455664 (semiInverseModEq!2383 (toChars!7753 (transformation!5610 rule!403)) (toValue!7894 (transformation!5610 rule!403))))))

(assert (=> d!1061118 (= (inv!51248 (transformation!5610 rule!403)) e!2228771)))

(declare-fun b!3601615 () Bool)

(assert (=> b!3601615 (= e!2228771 (equivClasses!2282 (toChars!7753 (transformation!5610 rule!403)) (toValue!7894 (transformation!5610 rule!403))))))

(assert (= (and d!1061118 res!1455664) b!3601615))

(declare-fun m!4097723 () Bool)

(assert (=> d!1061118 m!4097723))

(declare-fun m!4097725 () Bool)

(assert (=> b!3601615 m!4097725))

(assert (=> b!3601585 d!1061118))

(declare-fun d!1061120 () Bool)

(declare-fun lt!1237620 () Bool)

(declare-fun content!5409 (List!38014) (InoxSet C!20924))

(assert (=> d!1061120 (= lt!1237620 (select (content!5409 lt!1237591) lt!1237602))))

(declare-fun e!2228777 () Bool)

(assert (=> d!1061120 (= lt!1237620 e!2228777)))

(declare-fun res!1455670 () Bool)

(assert (=> d!1061120 (=> (not res!1455670) (not e!2228777))))

(assert (=> d!1061120 (= res!1455670 ((_ is Cons!37890) lt!1237591))))

(assert (=> d!1061120 (= (contains!7284 lt!1237591 lt!1237602) lt!1237620)))

(declare-fun b!3601620 () Bool)

(declare-fun e!2228776 () Bool)

(assert (=> b!3601620 (= e!2228777 e!2228776)))

(declare-fun res!1455669 () Bool)

(assert (=> b!3601620 (=> res!1455669 e!2228776)))

(assert (=> b!3601620 (= res!1455669 (= (h!43310 lt!1237591) lt!1237602))))

(declare-fun b!3601621 () Bool)

(assert (=> b!3601621 (= e!2228776 (contains!7284 (t!292345 lt!1237591) lt!1237602))))

(assert (= (and d!1061120 res!1455670) b!3601620))

(assert (= (and b!3601620 (not res!1455669)) b!3601621))

(declare-fun m!4097727 () Bool)

(assert (=> d!1061120 m!4097727))

(declare-fun m!4097729 () Bool)

(assert (=> d!1061120 m!4097729))

(declare-fun m!4097731 () Bool)

(assert (=> b!3601621 m!4097731))

(assert (=> b!3601566 d!1061120))

(declare-fun d!1061122 () Bool)

(assert (=> d!1061122 (= (head!7554 lt!1237586) (h!43310 lt!1237586))))

(assert (=> b!3601566 d!1061122))

(declare-fun d!1061124 () Bool)

(assert (=> d!1061124 (= (isEmpty!22354 suffix!1395) ((_ is Nil!37890) suffix!1395))))

(assert (=> b!3601568 d!1061124))

(declare-fun d!1061126 () Bool)

(assert (=> d!1061126 (isDefined!6082 (maxPrefix!2733 thiss!23823 rules!3307 (++!9426 lt!1237601 suffix!1395)))))

(declare-fun lt!1237694 () Unit!53935)

(declare-fun e!2228848 () Unit!53935)

(assert (=> d!1061126 (= lt!1237694 e!2228848)))

(declare-fun c!623320 () Bool)

(declare-fun isEmpty!22357 (Option!7850) Bool)

(assert (=> d!1061126 (= c!623320 (isEmpty!22357 (maxPrefix!2733 thiss!23823 rules!3307 (++!9426 lt!1237601 suffix!1395))))))

(declare-fun lt!1237688 () Unit!53935)

(declare-fun lt!1237699 () Unit!53935)

(assert (=> d!1061126 (= lt!1237688 lt!1237699)))

(declare-fun e!2228849 () Bool)

(assert (=> d!1061126 e!2228849))

(declare-fun res!1455745 () Bool)

(assert (=> d!1061126 (=> (not res!1455745) (not e!2228849))))

(declare-fun lt!1237687 () Token!10586)

(assert (=> d!1061126 (= res!1455745 (isDefined!6083 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 lt!1237687)))))))

(assert (=> d!1061126 (= lt!1237699 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1216 thiss!23823 rules!3307 lt!1237601 lt!1237687))))

(declare-fun lt!1237691 () Unit!53935)

(declare-fun lt!1237685 () Unit!53935)

(assert (=> d!1061126 (= lt!1237691 lt!1237685)))

(declare-fun lt!1237692 () List!38014)

(assert (=> d!1061126 (isPrefix!2973 lt!1237692 (++!9426 lt!1237601 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!435 (List!38014 List!38014 List!38014) Unit!53935)

(assert (=> d!1061126 (= lt!1237685 (lemmaPrefixStaysPrefixWhenAddingToSuffix!435 lt!1237692 lt!1237601 suffix!1395))))

(assert (=> d!1061126 (= lt!1237692 (list!13958 (charsOf!3624 lt!1237687)))))

(declare-fun lt!1237698 () Unit!53935)

(declare-fun lt!1237690 () Unit!53935)

(assert (=> d!1061126 (= lt!1237698 lt!1237690)))

(declare-fun lt!1237701 () List!38014)

(declare-fun lt!1237700 () List!38014)

(assert (=> d!1061126 (isPrefix!2973 lt!1237701 (++!9426 lt!1237701 lt!1237700))))

(assert (=> d!1061126 (= lt!1237690 (lemmaConcatTwoListThenFirstIsPrefix!1894 lt!1237701 lt!1237700))))

(assert (=> d!1061126 (= lt!1237700 (_2!22024 (get!12265 (maxPrefix!2733 thiss!23823 rules!3307 lt!1237601))))))

(assert (=> d!1061126 (= lt!1237701 (list!13958 (charsOf!3624 lt!1237687)))))

(declare-datatypes ((List!38017 0))(
  ( (Nil!37893) (Cons!37893 (h!43313 Token!10586) (t!292468 List!38017)) )
))
(declare-fun head!7555 (List!38017) Token!10586)

(declare-datatypes ((IArray!23081 0))(
  ( (IArray!23082 (innerList!11598 List!38017)) )
))
(declare-datatypes ((Conc!11538 0))(
  ( (Node!11538 (left!29609 Conc!11538) (right!29939 Conc!11538) (csize!23306 Int) (cheight!11749 Int)) (Leaf!17954 (xs!14740 IArray!23081) (csize!23307 Int)) (Empty!11538) )
))
(declare-datatypes ((BalanceConc!22690 0))(
  ( (BalanceConc!22691 (c!623418 Conc!11538)) )
))
(declare-fun list!13960 (BalanceConc!22690) List!38017)

(declare-datatypes ((tuple2!37782 0))(
  ( (tuple2!37783 (_1!22025 BalanceConc!22690) (_2!22025 BalanceConc!22688)) )
))
(declare-fun lex!2467 (LexerInterface!5199 List!38015 BalanceConc!22688) tuple2!37782)

(assert (=> d!1061126 (= lt!1237687 (head!7555 (list!13960 (_1!22025 (lex!2467 thiss!23823 rules!3307 (seqFromList!4163 lt!1237601))))))))

(assert (=> d!1061126 (not (isEmpty!22355 rules!3307))))

(assert (=> d!1061126 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!879 thiss!23823 rules!3307 lt!1237601 suffix!1395) lt!1237694)))

(declare-fun b!3601754 () Bool)

(declare-fun Unit!53939 () Unit!53935)

(assert (=> b!3601754 (= e!2228848 Unit!53939)))

(declare-fun lt!1237696 () List!38014)

(assert (=> b!3601754 (= lt!1237696 (++!9426 lt!1237601 suffix!1395))))

(declare-fun lt!1237686 () Unit!53935)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!471 (LexerInterface!5199 Rule!11020 List!38015 List!38014) Unit!53935)

(assert (=> b!3601754 (= lt!1237686 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!471 thiss!23823 (rule!8346 lt!1237687) rules!3307 lt!1237696))))

(assert (=> b!3601754 (isEmpty!22357 (maxPrefixOneRule!1877 thiss!23823 (rule!8346 lt!1237687) lt!1237696))))

(declare-fun lt!1237697 () Unit!53935)

(assert (=> b!3601754 (= lt!1237697 lt!1237686)))

(declare-fun lt!1237689 () List!38014)

(assert (=> b!3601754 (= lt!1237689 (list!13958 (charsOf!3624 lt!1237687)))))

(declare-fun lt!1237695 () Unit!53935)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!459 (LexerInterface!5199 Rule!11020 List!38014 List!38014) Unit!53935)

(assert (=> b!3601754 (= lt!1237695 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!459 thiss!23823 (rule!8346 lt!1237687) lt!1237689 (++!9426 lt!1237601 suffix!1395)))))

(assert (=> b!3601754 (not (matchR!4938 (regex!5610 (rule!8346 lt!1237687)) lt!1237689))))

(declare-fun lt!1237693 () Unit!53935)

(assert (=> b!3601754 (= lt!1237693 lt!1237695)))

(assert (=> b!3601754 false))

(declare-fun b!3601755 () Bool)

(declare-fun Unit!53940 () Unit!53935)

(assert (=> b!3601755 (= e!2228848 Unit!53940)))

(declare-fun b!3601752 () Bool)

(declare-fun res!1455744 () Bool)

(assert (=> b!3601752 (=> (not res!1455744) (not e!2228849))))

(assert (=> b!3601752 (= res!1455744 (matchR!4938 (regex!5610 (get!12266 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 lt!1237687))))) (list!13958 (charsOf!3624 lt!1237687))))))

(declare-fun b!3601753 () Bool)

(assert (=> b!3601753 (= e!2228849 (= (rule!8346 lt!1237687) (get!12266 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 lt!1237687))))))))

(assert (= (and d!1061126 res!1455745) b!3601752))

(assert (= (and b!3601752 res!1455744) b!3601753))

(assert (= (and d!1061126 c!623320) b!3601754))

(assert (= (and d!1061126 (not c!623320)) b!3601755))

(assert (=> d!1061126 m!4097637))

(declare-fun m!4097825 () Bool)

(assert (=> d!1061126 m!4097825))

(declare-fun m!4097827 () Bool)

(assert (=> d!1061126 m!4097827))

(declare-fun m!4097829 () Bool)

(assert (=> d!1061126 m!4097829))

(assert (=> d!1061126 m!4097659))

(declare-fun m!4097831 () Bool)

(assert (=> d!1061126 m!4097831))

(declare-fun m!4097833 () Bool)

(assert (=> d!1061126 m!4097833))

(declare-fun m!4097835 () Bool)

(assert (=> d!1061126 m!4097835))

(assert (=> d!1061126 m!4097825))

(declare-fun m!4097837 () Bool)

(assert (=> d!1061126 m!4097837))

(declare-fun m!4097839 () Bool)

(assert (=> d!1061126 m!4097839))

(assert (=> d!1061126 m!4097597))

(assert (=> d!1061126 m!4097637))

(declare-fun m!4097841 () Bool)

(assert (=> d!1061126 m!4097841))

(assert (=> d!1061126 m!4097839))

(declare-fun m!4097843 () Bool)

(assert (=> d!1061126 m!4097843))

(declare-fun m!4097845 () Bool)

(assert (=> d!1061126 m!4097845))

(declare-fun m!4097847 () Bool)

(assert (=> d!1061126 m!4097847))

(declare-fun m!4097849 () Bool)

(assert (=> d!1061126 m!4097849))

(assert (=> d!1061126 m!4097827))

(declare-fun m!4097851 () Bool)

(assert (=> d!1061126 m!4097851))

(assert (=> d!1061126 m!4097825))

(declare-fun m!4097853 () Bool)

(assert (=> d!1061126 m!4097853))

(assert (=> d!1061126 m!4097835))

(declare-fun m!4097855 () Bool)

(assert (=> d!1061126 m!4097855))

(assert (=> d!1061126 m!4097851))

(declare-fun m!4097857 () Bool)

(assert (=> d!1061126 m!4097857))

(assert (=> d!1061126 m!4097845))

(assert (=> d!1061126 m!4097637))

(assert (=> d!1061126 m!4097659))

(declare-fun m!4097859 () Bool)

(assert (=> d!1061126 m!4097859))

(assert (=> b!3601754 m!4097827))

(assert (=> b!3601754 m!4097829))

(assert (=> b!3601754 m!4097827))

(assert (=> b!3601754 m!4097637))

(declare-fun m!4097861 () Bool)

(assert (=> b!3601754 m!4097861))

(declare-fun m!4097863 () Bool)

(assert (=> b!3601754 m!4097863))

(declare-fun m!4097865 () Bool)

(assert (=> b!3601754 m!4097865))

(declare-fun m!4097867 () Bool)

(assert (=> b!3601754 m!4097867))

(assert (=> b!3601754 m!4097637))

(declare-fun m!4097869 () Bool)

(assert (=> b!3601754 m!4097869))

(assert (=> b!3601754 m!4097863))

(assert (=> b!3601752 m!4097827))

(assert (=> b!3601752 m!4097829))

(assert (=> b!3601752 m!4097827))

(assert (=> b!3601752 m!4097845))

(declare-fun m!4097871 () Bool)

(assert (=> b!3601752 m!4097871))

(assert (=> b!3601752 m!4097845))

(assert (=> b!3601752 m!4097829))

(declare-fun m!4097873 () Bool)

(assert (=> b!3601752 m!4097873))

(assert (=> b!3601753 m!4097845))

(assert (=> b!3601753 m!4097845))

(assert (=> b!3601753 m!4097871))

(assert (=> b!3601589 d!1061126))

(declare-fun b!3601775 () Bool)

(declare-fun e!2228862 () Bool)

(assert (=> b!3601775 (= e!2228862 (>= (size!28876 lt!1237612) (size!28876 lt!1237601)))))

(declare-fun d!1061152 () Bool)

(assert (=> d!1061152 e!2228862))

(declare-fun res!1455759 () Bool)

(assert (=> d!1061152 (=> res!1455759 e!2228862)))

(declare-fun lt!1237738 () Bool)

(assert (=> d!1061152 (= res!1455759 (not lt!1237738))))

(declare-fun e!2228860 () Bool)

(assert (=> d!1061152 (= lt!1237738 e!2228860)))

(declare-fun res!1455758 () Bool)

(assert (=> d!1061152 (=> res!1455758 e!2228860)))

(assert (=> d!1061152 (= res!1455758 ((_ is Nil!37890) lt!1237601))))

(assert (=> d!1061152 (= (isPrefix!2973 lt!1237601 lt!1237612) lt!1237738)))

(declare-fun b!3601773 () Bool)

(declare-fun res!1455761 () Bool)

(declare-fun e!2228861 () Bool)

(assert (=> b!3601773 (=> (not res!1455761) (not e!2228861))))

(assert (=> b!3601773 (= res!1455761 (= (head!7554 lt!1237601) (head!7554 lt!1237612)))))

(declare-fun b!3601772 () Bool)

(assert (=> b!3601772 (= e!2228860 e!2228861)))

(declare-fun res!1455760 () Bool)

(assert (=> b!3601772 (=> (not res!1455760) (not e!2228861))))

(assert (=> b!3601772 (= res!1455760 (not ((_ is Nil!37890) lt!1237612)))))

(declare-fun b!3601774 () Bool)

(declare-fun tail!5583 (List!38014) List!38014)

(assert (=> b!3601774 (= e!2228861 (isPrefix!2973 (tail!5583 lt!1237601) (tail!5583 lt!1237612)))))

(assert (= (and d!1061152 (not res!1455758)) b!3601772))

(assert (= (and b!3601772 res!1455760) b!3601773))

(assert (= (and b!3601773 res!1455761) b!3601774))

(assert (= (and d!1061152 (not res!1455759)) b!3601775))

(declare-fun m!4097875 () Bool)

(assert (=> b!3601775 m!4097875))

(declare-fun m!4097877 () Bool)

(assert (=> b!3601775 m!4097877))

(declare-fun m!4097879 () Bool)

(assert (=> b!3601773 m!4097879))

(declare-fun m!4097881 () Bool)

(assert (=> b!3601773 m!4097881))

(declare-fun m!4097883 () Bool)

(assert (=> b!3601774 m!4097883))

(declare-fun m!4097885 () Bool)

(assert (=> b!3601774 m!4097885))

(assert (=> b!3601774 m!4097883))

(assert (=> b!3601774 m!4097885))

(declare-fun m!4097887 () Bool)

(assert (=> b!3601774 m!4097887))

(assert (=> b!3601589 d!1061152))

(declare-fun d!1061154 () Bool)

(declare-fun e!2228867 () Bool)

(assert (=> d!1061154 e!2228867))

(declare-fun res!1455768 () Bool)

(assert (=> d!1061154 (=> (not res!1455768) (not e!2228867))))

(assert (=> d!1061154 (= res!1455768 (isDefined!6083 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 (_1!22024 lt!1237596))))))))

(declare-fun lt!1237761 () Unit!53935)

(declare-fun choose!20999 (LexerInterface!5199 List!38015 List!38014 Token!10586) Unit!53935)

(assert (=> d!1061154 (= lt!1237761 (choose!20999 thiss!23823 rules!3307 lt!1237612 (_1!22024 lt!1237596)))))

(assert (=> d!1061154 (rulesInvariant!4596 thiss!23823 rules!3307)))

(assert (=> d!1061154 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1216 thiss!23823 rules!3307 lt!1237612 (_1!22024 lt!1237596)) lt!1237761)))

(declare-fun b!3601784 () Bool)

(declare-fun res!1455769 () Bool)

(assert (=> b!3601784 (=> (not res!1455769) (not e!2228867))))

(assert (=> b!3601784 (= res!1455769 (matchR!4938 (regex!5610 (get!12266 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 (_1!22024 lt!1237596)))))) (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))))))

(declare-fun b!3601785 () Bool)

(assert (=> b!3601785 (= e!2228867 (= (rule!8346 (_1!22024 lt!1237596)) (get!12266 (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 (_1!22024 lt!1237596)))))))))

(assert (= (and d!1061154 res!1455768) b!3601784))

(assert (= (and b!3601784 res!1455769) b!3601785))

(assert (=> d!1061154 m!4097645))

(assert (=> d!1061154 m!4097645))

(declare-fun m!4097945 () Bool)

(assert (=> d!1061154 m!4097945))

(declare-fun m!4097947 () Bool)

(assert (=> d!1061154 m!4097947))

(assert (=> d!1061154 m!4097595))

(assert (=> b!3601784 m!4097645))

(assert (=> b!3601784 m!4097625))

(assert (=> b!3601784 m!4097677))

(assert (=> b!3601784 m!4097625))

(assert (=> b!3601784 m!4097645))

(declare-fun m!4097949 () Bool)

(assert (=> b!3601784 m!4097949))

(assert (=> b!3601784 m!4097677))

(declare-fun m!4097951 () Bool)

(assert (=> b!3601784 m!4097951))

(assert (=> b!3601785 m!4097645))

(assert (=> b!3601785 m!4097645))

(assert (=> b!3601785 m!4097949))

(assert (=> b!3601589 d!1061154))

(declare-fun b!3601808 () Bool)

(declare-fun res!1455787 () Bool)

(declare-fun e!2228881 () Bool)

(assert (=> b!3601808 (=> (not res!1455787) (not e!2228881))))

(declare-fun lt!1237767 () List!38014)

(assert (=> b!3601808 (= res!1455787 (= (size!28876 lt!1237767) (+ (size!28876 lt!1237586) (size!28876 (_2!22024 lt!1237596)))))))

(declare-fun b!3601806 () Bool)

(declare-fun e!2228882 () List!38014)

(assert (=> b!3601806 (= e!2228882 (_2!22024 lt!1237596))))

(declare-fun b!3601807 () Bool)

(assert (=> b!3601807 (= e!2228882 (Cons!37890 (h!43310 lt!1237586) (++!9426 (t!292345 lt!1237586) (_2!22024 lt!1237596))))))

(declare-fun d!1061164 () Bool)

(assert (=> d!1061164 e!2228881))

(declare-fun res!1455786 () Bool)

(assert (=> d!1061164 (=> (not res!1455786) (not e!2228881))))

(assert (=> d!1061164 (= res!1455786 (= (content!5409 lt!1237767) ((_ map or) (content!5409 lt!1237586) (content!5409 (_2!22024 lt!1237596)))))))

(assert (=> d!1061164 (= lt!1237767 e!2228882)))

(declare-fun c!623326 () Bool)

(assert (=> d!1061164 (= c!623326 ((_ is Nil!37890) lt!1237586))))

(assert (=> d!1061164 (= (++!9426 lt!1237586 (_2!22024 lt!1237596)) lt!1237767)))

(declare-fun b!3601809 () Bool)

(assert (=> b!3601809 (= e!2228881 (or (not (= (_2!22024 lt!1237596) Nil!37890)) (= lt!1237767 lt!1237586)))))

(assert (= (and d!1061164 c!623326) b!3601806))

(assert (= (and d!1061164 (not c!623326)) b!3601807))

(assert (= (and d!1061164 res!1455786) b!3601808))

(assert (= (and b!3601808 res!1455787) b!3601809))

(declare-fun m!4097961 () Bool)

(assert (=> b!3601808 m!4097961))

(assert (=> b!3601808 m!4097609))

(declare-fun m!4097963 () Bool)

(assert (=> b!3601808 m!4097963))

(declare-fun m!4097965 () Bool)

(assert (=> b!3601807 m!4097965))

(declare-fun m!4097967 () Bool)

(assert (=> d!1061164 m!4097967))

(declare-fun m!4097969 () Bool)

(assert (=> d!1061164 m!4097969))

(declare-fun m!4097971 () Bool)

(assert (=> d!1061164 m!4097971))

(assert (=> b!3601589 d!1061164))

(declare-fun b!3601909 () Bool)

(declare-fun e!2228936 () Option!7850)

(declare-fun lt!1237804 () Option!7850)

(declare-fun lt!1237805 () Option!7850)

(assert (=> b!3601909 (= e!2228936 (ite (and ((_ is None!7849) lt!1237804) ((_ is None!7849) lt!1237805)) None!7849 (ite ((_ is None!7849) lt!1237805) lt!1237804 (ite ((_ is None!7849) lt!1237804) lt!1237805 (ite (>= (size!28874 (_1!22024 (v!37563 lt!1237804))) (size!28874 (_1!22024 (v!37563 lt!1237805)))) lt!1237804 lt!1237805)))))))

(declare-fun call!260447 () Option!7850)

(assert (=> b!3601909 (= lt!1237804 call!260447)))

(assert (=> b!3601909 (= lt!1237805 (maxPrefix!2733 thiss!23823 (t!292346 rules!3307) lt!1237612))))

(declare-fun b!3601910 () Bool)

(declare-fun e!2228935 () Bool)

(declare-fun e!2228937 () Bool)

(assert (=> b!3601910 (= e!2228935 e!2228937)))

(declare-fun res!1455842 () Bool)

(assert (=> b!3601910 (=> (not res!1455842) (not e!2228937))))

(declare-fun lt!1237807 () Option!7850)

(assert (=> b!3601910 (= res!1455842 (isDefined!6082 lt!1237807))))

(declare-fun b!3601911 () Bool)

(assert (=> b!3601911 (= e!2228937 (contains!7283 rules!3307 (rule!8346 (_1!22024 (get!12265 lt!1237807)))))))

(declare-fun b!3601912 () Bool)

(declare-fun res!1455848 () Bool)

(assert (=> b!3601912 (=> (not res!1455848) (not e!2228937))))

(assert (=> b!3601912 (= res!1455848 (matchR!4938 (regex!5610 (rule!8346 (_1!22024 (get!12265 lt!1237807)))) (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237807))))))))

(declare-fun b!3601913 () Bool)

(declare-fun res!1455843 () Bool)

(assert (=> b!3601913 (=> (not res!1455843) (not e!2228937))))

(assert (=> b!3601913 (= res!1455843 (= (++!9426 (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237807)))) (_2!22024 (get!12265 lt!1237807))) lt!1237612))))

(declare-fun b!3601914 () Bool)

(declare-fun res!1455845 () Bool)

(assert (=> b!3601914 (=> (not res!1455845) (not e!2228937))))

(assert (=> b!3601914 (= res!1455845 (= (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237807)))) (originalCharacters!6324 (_1!22024 (get!12265 lt!1237807)))))))

(declare-fun d!1061168 () Bool)

(assert (=> d!1061168 e!2228935))

(declare-fun res!1455847 () Bool)

(assert (=> d!1061168 (=> res!1455847 e!2228935)))

(assert (=> d!1061168 (= res!1455847 (isEmpty!22357 lt!1237807))))

(assert (=> d!1061168 (= lt!1237807 e!2228936)))

(declare-fun c!623350 () Bool)

(assert (=> d!1061168 (= c!623350 (and ((_ is Cons!37891) rules!3307) ((_ is Nil!37891) (t!292346 rules!3307))))))

(declare-fun lt!1237803 () Unit!53935)

(declare-fun lt!1237806 () Unit!53935)

(assert (=> d!1061168 (= lt!1237803 lt!1237806)))

(assert (=> d!1061168 (isPrefix!2973 lt!1237612 lt!1237612)))

(declare-fun lemmaIsPrefixRefl!1902 (List!38014 List!38014) Unit!53935)

(assert (=> d!1061168 (= lt!1237806 (lemmaIsPrefixRefl!1902 lt!1237612 lt!1237612))))

(declare-fun rulesValidInductive!1967 (LexerInterface!5199 List!38015) Bool)

(assert (=> d!1061168 (rulesValidInductive!1967 thiss!23823 rules!3307)))

(assert (=> d!1061168 (= (maxPrefix!2733 thiss!23823 rules!3307 lt!1237612) lt!1237807)))

(declare-fun b!3601915 () Bool)

(declare-fun res!1455844 () Bool)

(assert (=> b!3601915 (=> (not res!1455844) (not e!2228937))))

(assert (=> b!3601915 (= res!1455844 (< (size!28876 (_2!22024 (get!12265 lt!1237807))) (size!28876 lt!1237612)))))

(declare-fun bm!260442 () Bool)

(assert (=> bm!260442 (= call!260447 (maxPrefixOneRule!1877 thiss!23823 (h!43311 rules!3307) lt!1237612))))

(declare-fun b!3601916 () Bool)

(assert (=> b!3601916 (= e!2228936 call!260447)))

(declare-fun b!3601917 () Bool)

(declare-fun res!1455846 () Bool)

(assert (=> b!3601917 (=> (not res!1455846) (not e!2228937))))

(assert (=> b!3601917 (= res!1455846 (= (value!180345 (_1!22024 (get!12265 lt!1237807))) (apply!9116 (transformation!5610 (rule!8346 (_1!22024 (get!12265 lt!1237807)))) (seqFromList!4163 (originalCharacters!6324 (_1!22024 (get!12265 lt!1237807)))))))))

(assert (= (and d!1061168 c!623350) b!3601916))

(assert (= (and d!1061168 (not c!623350)) b!3601909))

(assert (= (or b!3601916 b!3601909) bm!260442))

(assert (= (and d!1061168 (not res!1455847)) b!3601910))

(assert (= (and b!3601910 res!1455842) b!3601914))

(assert (= (and b!3601914 res!1455845) b!3601915))

(assert (= (and b!3601915 res!1455844) b!3601913))

(assert (= (and b!3601913 res!1455843) b!3601917))

(assert (= (and b!3601917 res!1455846) b!3601912))

(assert (= (and b!3601912 res!1455848) b!3601911))

(declare-fun m!4098089 () Bool)

(assert (=> b!3601912 m!4098089))

(declare-fun m!4098091 () Bool)

(assert (=> b!3601912 m!4098091))

(assert (=> b!3601912 m!4098091))

(declare-fun m!4098093 () Bool)

(assert (=> b!3601912 m!4098093))

(assert (=> b!3601912 m!4098093))

(declare-fun m!4098095 () Bool)

(assert (=> b!3601912 m!4098095))

(assert (=> b!3601914 m!4098089))

(assert (=> b!3601914 m!4098091))

(assert (=> b!3601914 m!4098091))

(assert (=> b!3601914 m!4098093))

(declare-fun m!4098097 () Bool)

(assert (=> b!3601909 m!4098097))

(declare-fun m!4098099 () Bool)

(assert (=> b!3601910 m!4098099))

(declare-fun m!4098101 () Bool)

(assert (=> d!1061168 m!4098101))

(declare-fun m!4098103 () Bool)

(assert (=> d!1061168 m!4098103))

(declare-fun m!4098105 () Bool)

(assert (=> d!1061168 m!4098105))

(declare-fun m!4098107 () Bool)

(assert (=> d!1061168 m!4098107))

(assert (=> b!3601917 m!4098089))

(declare-fun m!4098109 () Bool)

(assert (=> b!3601917 m!4098109))

(assert (=> b!3601917 m!4098109))

(declare-fun m!4098111 () Bool)

(assert (=> b!3601917 m!4098111))

(declare-fun m!4098113 () Bool)

(assert (=> bm!260442 m!4098113))

(assert (=> b!3601913 m!4098089))

(assert (=> b!3601913 m!4098091))

(assert (=> b!3601913 m!4098091))

(assert (=> b!3601913 m!4098093))

(assert (=> b!3601913 m!4098093))

(declare-fun m!4098115 () Bool)

(assert (=> b!3601913 m!4098115))

(assert (=> b!3601911 m!4098089))

(declare-fun m!4098117 () Bool)

(assert (=> b!3601911 m!4098117))

(assert (=> b!3601915 m!4098089))

(declare-fun m!4098119 () Bool)

(assert (=> b!3601915 m!4098119))

(assert (=> b!3601915 m!4097875))

(assert (=> b!3601589 d!1061168))

(declare-fun d!1061196 () Bool)

(assert (=> d!1061196 (= (get!12265 lt!1237604) (v!37563 lt!1237604))))

(assert (=> b!3601589 d!1061196))

(declare-fun b!3601921 () Bool)

(declare-fun e!2228940 () Bool)

(assert (=> b!3601921 (= e!2228940 (>= (size!28876 (++!9426 lt!1237586 (_2!22024 lt!1237596))) (size!28876 lt!1237586)))))

(declare-fun d!1061198 () Bool)

(assert (=> d!1061198 e!2228940))

(declare-fun res!1455850 () Bool)

(assert (=> d!1061198 (=> res!1455850 e!2228940)))

(declare-fun lt!1237808 () Bool)

(assert (=> d!1061198 (= res!1455850 (not lt!1237808))))

(declare-fun e!2228938 () Bool)

(assert (=> d!1061198 (= lt!1237808 e!2228938)))

(declare-fun res!1455849 () Bool)

(assert (=> d!1061198 (=> res!1455849 e!2228938)))

(assert (=> d!1061198 (= res!1455849 ((_ is Nil!37890) lt!1237586))))

(assert (=> d!1061198 (= (isPrefix!2973 lt!1237586 (++!9426 lt!1237586 (_2!22024 lt!1237596))) lt!1237808)))

(declare-fun b!3601919 () Bool)

(declare-fun res!1455852 () Bool)

(declare-fun e!2228939 () Bool)

(assert (=> b!3601919 (=> (not res!1455852) (not e!2228939))))

(assert (=> b!3601919 (= res!1455852 (= (head!7554 lt!1237586) (head!7554 (++!9426 lt!1237586 (_2!22024 lt!1237596)))))))

(declare-fun b!3601918 () Bool)

(assert (=> b!3601918 (= e!2228938 e!2228939)))

(declare-fun res!1455851 () Bool)

(assert (=> b!3601918 (=> (not res!1455851) (not e!2228939))))

(assert (=> b!3601918 (= res!1455851 (not ((_ is Nil!37890) (++!9426 lt!1237586 (_2!22024 lt!1237596)))))))

(declare-fun b!3601920 () Bool)

(assert (=> b!3601920 (= e!2228939 (isPrefix!2973 (tail!5583 lt!1237586) (tail!5583 (++!9426 lt!1237586 (_2!22024 lt!1237596)))))))

(assert (= (and d!1061198 (not res!1455849)) b!3601918))

(assert (= (and b!3601918 res!1455851) b!3601919))

(assert (= (and b!3601919 res!1455852) b!3601920))

(assert (= (and d!1061198 (not res!1455850)) b!3601921))

(assert (=> b!3601921 m!4097647))

(declare-fun m!4098121 () Bool)

(assert (=> b!3601921 m!4098121))

(assert (=> b!3601921 m!4097609))

(assert (=> b!3601919 m!4097589))

(assert (=> b!3601919 m!4097647))

(declare-fun m!4098123 () Bool)

(assert (=> b!3601919 m!4098123))

(declare-fun m!4098125 () Bool)

(assert (=> b!3601920 m!4098125))

(assert (=> b!3601920 m!4097647))

(declare-fun m!4098127 () Bool)

(assert (=> b!3601920 m!4098127))

(assert (=> b!3601920 m!4098125))

(assert (=> b!3601920 m!4098127))

(declare-fun m!4098129 () Bool)

(assert (=> b!3601920 m!4098129))

(assert (=> b!3601589 d!1061198))

(declare-fun d!1061200 () Bool)

(declare-fun list!13962 (Conc!11537) List!38014)

(assert (=> d!1061200 (= (list!13958 lt!1237613) (list!13962 (c!623287 lt!1237613)))))

(declare-fun bs!570567 () Bool)

(assert (= bs!570567 d!1061200))

(declare-fun m!4098131 () Bool)

(assert (=> bs!570567 m!4098131))

(assert (=> b!3601589 d!1061200))

(declare-fun b!3601925 () Bool)

(declare-fun e!2228943 () Bool)

(assert (=> b!3601925 (= e!2228943 (>= (size!28876 lt!1237612) (size!28876 lt!1237586)))))

(declare-fun d!1061202 () Bool)

(assert (=> d!1061202 e!2228943))

(declare-fun res!1455854 () Bool)

(assert (=> d!1061202 (=> res!1455854 e!2228943)))

(declare-fun lt!1237809 () Bool)

(assert (=> d!1061202 (= res!1455854 (not lt!1237809))))

(declare-fun e!2228941 () Bool)

(assert (=> d!1061202 (= lt!1237809 e!2228941)))

(declare-fun res!1455853 () Bool)

(assert (=> d!1061202 (=> res!1455853 e!2228941)))

(assert (=> d!1061202 (= res!1455853 ((_ is Nil!37890) lt!1237586))))

(assert (=> d!1061202 (= (isPrefix!2973 lt!1237586 lt!1237612) lt!1237809)))

(declare-fun b!3601923 () Bool)

(declare-fun res!1455856 () Bool)

(declare-fun e!2228942 () Bool)

(assert (=> b!3601923 (=> (not res!1455856) (not e!2228942))))

(assert (=> b!3601923 (= res!1455856 (= (head!7554 lt!1237586) (head!7554 lt!1237612)))))

(declare-fun b!3601922 () Bool)

(assert (=> b!3601922 (= e!2228941 e!2228942)))

(declare-fun res!1455855 () Bool)

(assert (=> b!3601922 (=> (not res!1455855) (not e!2228942))))

(assert (=> b!3601922 (= res!1455855 (not ((_ is Nil!37890) lt!1237612)))))

(declare-fun b!3601924 () Bool)

(assert (=> b!3601924 (= e!2228942 (isPrefix!2973 (tail!5583 lt!1237586) (tail!5583 lt!1237612)))))

(assert (= (and d!1061202 (not res!1455853)) b!3601922))

(assert (= (and b!3601922 res!1455855) b!3601923))

(assert (= (and b!3601923 res!1455856) b!3601924))

(assert (= (and d!1061202 (not res!1455854)) b!3601925))

(assert (=> b!3601925 m!4097875))

(assert (=> b!3601925 m!4097609))

(assert (=> b!3601923 m!4097589))

(assert (=> b!3601923 m!4097881))

(assert (=> b!3601924 m!4098125))

(assert (=> b!3601924 m!4097885))

(assert (=> b!3601924 m!4098125))

(assert (=> b!3601924 m!4097885))

(declare-fun m!4098133 () Bool)

(assert (=> b!3601924 m!4098133))

(assert (=> b!3601589 d!1061202))

(declare-fun b!3601938 () Bool)

(declare-fun lt!1237817 () Unit!53935)

(declare-fun lt!1237818 () Unit!53935)

(assert (=> b!3601938 (= lt!1237817 lt!1237818)))

(assert (=> b!3601938 (rulesInvariant!4596 thiss!23823 (t!292346 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!516 (LexerInterface!5199 Rule!11020 List!38015) Unit!53935)

(assert (=> b!3601938 (= lt!1237818 (lemmaInvariantOnRulesThenOnTail!516 thiss!23823 (h!43311 rules!3307) (t!292346 rules!3307)))))

(declare-fun e!2228953 () Option!7851)

(assert (=> b!3601938 (= e!2228953 (getRuleFromTag!1216 thiss!23823 (t!292346 rules!3307) (tag!6302 (rule!8346 (_1!22024 lt!1237596)))))))

(declare-fun b!3601939 () Bool)

(declare-fun e!2228955 () Bool)

(declare-fun lt!1237816 () Option!7851)

(assert (=> b!3601939 (= e!2228955 (= (tag!6302 (get!12266 lt!1237816)) (tag!6302 (rule!8346 (_1!22024 lt!1237596)))))))

(declare-fun b!3601940 () Bool)

(declare-fun e!2228952 () Option!7851)

(assert (=> b!3601940 (= e!2228952 e!2228953)))

(declare-fun c!623355 () Bool)

(assert (=> b!3601940 (= c!623355 (and ((_ is Cons!37891) rules!3307) (not (= (tag!6302 (h!43311 rules!3307)) (tag!6302 (rule!8346 (_1!22024 lt!1237596)))))))))

(declare-fun b!3601941 () Bool)

(assert (=> b!3601941 (= e!2228953 None!7850)))

(declare-fun d!1061204 () Bool)

(declare-fun e!2228954 () Bool)

(assert (=> d!1061204 e!2228954))

(declare-fun res!1455862 () Bool)

(assert (=> d!1061204 (=> res!1455862 e!2228954)))

(declare-fun isEmpty!22359 (Option!7851) Bool)

(assert (=> d!1061204 (= res!1455862 (isEmpty!22359 lt!1237816))))

(assert (=> d!1061204 (= lt!1237816 e!2228952)))

(declare-fun c!623356 () Bool)

(assert (=> d!1061204 (= c!623356 (and ((_ is Cons!37891) rules!3307) (= (tag!6302 (h!43311 rules!3307)) (tag!6302 (rule!8346 (_1!22024 lt!1237596))))))))

(assert (=> d!1061204 (rulesInvariant!4596 thiss!23823 rules!3307)))

(assert (=> d!1061204 (= (getRuleFromTag!1216 thiss!23823 rules!3307 (tag!6302 (rule!8346 (_1!22024 lt!1237596)))) lt!1237816)))

(declare-fun b!3601942 () Bool)

(assert (=> b!3601942 (= e!2228954 e!2228955)))

(declare-fun res!1455861 () Bool)

(assert (=> b!3601942 (=> (not res!1455861) (not e!2228955))))

(assert (=> b!3601942 (= res!1455861 (contains!7283 rules!3307 (get!12266 lt!1237816)))))

(declare-fun b!3601943 () Bool)

(assert (=> b!3601943 (= e!2228952 (Some!7850 (h!43311 rules!3307)))))

(assert (= (and d!1061204 c!623356) b!3601943))

(assert (= (and d!1061204 (not c!623356)) b!3601940))

(assert (= (and b!3601940 c!623355) b!3601938))

(assert (= (and b!3601940 (not c!623355)) b!3601941))

(assert (= (and d!1061204 (not res!1455862)) b!3601942))

(assert (= (and b!3601942 res!1455861) b!3601939))

(declare-fun m!4098135 () Bool)

(assert (=> b!3601938 m!4098135))

(declare-fun m!4098137 () Bool)

(assert (=> b!3601938 m!4098137))

(declare-fun m!4098139 () Bool)

(assert (=> b!3601938 m!4098139))

(declare-fun m!4098141 () Bool)

(assert (=> b!3601939 m!4098141))

(declare-fun m!4098143 () Bool)

(assert (=> d!1061204 m!4098143))

(assert (=> d!1061204 m!4097595))

(assert (=> b!3601942 m!4098141))

(assert (=> b!3601942 m!4098141))

(declare-fun m!4098145 () Bool)

(assert (=> b!3601942 m!4098145))

(assert (=> b!3601589 d!1061204))

(declare-fun d!1061206 () Bool)

(assert (=> d!1061206 (isPrefix!2973 lt!1237586 (++!9426 lt!1237586 (_2!22024 lt!1237596)))))

(declare-fun lt!1237821 () Unit!53935)

(declare-fun choose!21000 (List!38014 List!38014) Unit!53935)

(assert (=> d!1061206 (= lt!1237821 (choose!21000 lt!1237586 (_2!22024 lt!1237596)))))

(assert (=> d!1061206 (= (lemmaConcatTwoListThenFirstIsPrefix!1894 lt!1237586 (_2!22024 lt!1237596)) lt!1237821)))

(declare-fun bs!570568 () Bool)

(assert (= bs!570568 d!1061206))

(assert (=> bs!570568 m!4097647))

(assert (=> bs!570568 m!4097647))

(assert (=> bs!570568 m!4097649))

(declare-fun m!4098147 () Bool)

(assert (=> bs!570568 m!4098147))

(assert (=> b!3601589 d!1061206))

(declare-fun d!1061208 () Bool)

(assert (=> d!1061208 (= (isDefined!6083 lt!1237608) (not (isEmpty!22359 lt!1237608)))))

(declare-fun bs!570569 () Bool)

(assert (= bs!570569 d!1061208))

(declare-fun m!4098149 () Bool)

(assert (=> bs!570569 m!4098149))

(assert (=> b!3601589 d!1061208))

(declare-fun b!3601946 () Bool)

(declare-fun res!1455864 () Bool)

(declare-fun e!2228956 () Bool)

(assert (=> b!3601946 (=> (not res!1455864) (not e!2228956))))

(declare-fun lt!1237822 () List!38014)

(assert (=> b!3601946 (= res!1455864 (= (size!28876 lt!1237822) (+ (size!28876 lt!1237601) (size!28876 suffix!1395))))))

(declare-fun b!3601944 () Bool)

(declare-fun e!2228957 () List!38014)

(assert (=> b!3601944 (= e!2228957 suffix!1395)))

(declare-fun b!3601945 () Bool)

(assert (=> b!3601945 (= e!2228957 (Cons!37890 (h!43310 lt!1237601) (++!9426 (t!292345 lt!1237601) suffix!1395)))))

(declare-fun d!1061210 () Bool)

(assert (=> d!1061210 e!2228956))

(declare-fun res!1455863 () Bool)

(assert (=> d!1061210 (=> (not res!1455863) (not e!2228956))))

(assert (=> d!1061210 (= res!1455863 (= (content!5409 lt!1237822) ((_ map or) (content!5409 lt!1237601) (content!5409 suffix!1395))))))

(assert (=> d!1061210 (= lt!1237822 e!2228957)))

(declare-fun c!623357 () Bool)

(assert (=> d!1061210 (= c!623357 ((_ is Nil!37890) lt!1237601))))

(assert (=> d!1061210 (= (++!9426 lt!1237601 suffix!1395) lt!1237822)))

(declare-fun b!3601947 () Bool)

(assert (=> b!3601947 (= e!2228956 (or (not (= suffix!1395 Nil!37890)) (= lt!1237822 lt!1237601)))))

(assert (= (and d!1061210 c!623357) b!3601944))

(assert (= (and d!1061210 (not c!623357)) b!3601945))

(assert (= (and d!1061210 res!1455863) b!3601946))

(assert (= (and b!3601946 res!1455864) b!3601947))

(declare-fun m!4098151 () Bool)

(assert (=> b!3601946 m!4098151))

(assert (=> b!3601946 m!4097877))

(declare-fun m!4098153 () Bool)

(assert (=> b!3601946 m!4098153))

(declare-fun m!4098155 () Bool)

(assert (=> b!3601945 m!4098155))

(declare-fun m!4098157 () Bool)

(assert (=> d!1061210 m!4098157))

(declare-fun m!4098159 () Bool)

(assert (=> d!1061210 m!4098159))

(declare-fun m!4098161 () Bool)

(assert (=> d!1061210 m!4098161))

(assert (=> b!3601589 d!1061210))

(declare-fun d!1061212 () Bool)

(declare-fun lt!1237825 () BalanceConc!22688)

(assert (=> d!1061212 (= (list!13958 lt!1237825) (originalCharacters!6324 (_1!22024 lt!1237596)))))

(declare-fun dynLambda!16352 (Int TokenValue!5840) BalanceConc!22688)

(assert (=> d!1061212 (= lt!1237825 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (value!180345 (_1!22024 lt!1237596))))))

(assert (=> d!1061212 (= (charsOf!3624 (_1!22024 lt!1237596)) lt!1237825)))

(declare-fun b_lambda!106515 () Bool)

(assert (=> (not b_lambda!106515) (not d!1061212)))

(declare-fun tb!206113 () Bool)

(declare-fun t!292364 () Bool)

(assert (=> (and b!3601571 (= (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292364) tb!206113))

(declare-fun b!3601952 () Bool)

(declare-fun e!2228960 () Bool)

(declare-fun tp!1101701 () Bool)

(declare-fun inv!51252 (Conc!11537) Bool)

(assert (=> b!3601952 (= e!2228960 (and (inv!51252 (c!623287 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (value!180345 (_1!22024 lt!1237596))))) tp!1101701))))

(declare-fun result!251236 () Bool)

(declare-fun inv!51253 (BalanceConc!22688) Bool)

(assert (=> tb!206113 (= result!251236 (and (inv!51253 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (value!180345 (_1!22024 lt!1237596)))) e!2228960))))

(assert (= tb!206113 b!3601952))

(declare-fun m!4098163 () Bool)

(assert (=> b!3601952 m!4098163))

(declare-fun m!4098165 () Bool)

(assert (=> tb!206113 m!4098165))

(assert (=> d!1061212 t!292364))

(declare-fun b_and!261731 () Bool)

(assert (= b_and!261701 (and (=> t!292364 result!251236) b_and!261731)))

(declare-fun t!292366 () Bool)

(declare-fun tb!206115 () Bool)

(assert (=> (and b!3601570 (= (toChars!7753 (transformation!5610 (rule!8346 token!511))) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292366) tb!206115))

(declare-fun result!251240 () Bool)

(assert (= result!251240 result!251236))

(assert (=> d!1061212 t!292366))

(declare-fun b_and!261733 () Bool)

(assert (= b_and!261705 (and (=> t!292366 result!251240) b_and!261733)))

(declare-fun t!292368 () Bool)

(declare-fun tb!206117 () Bool)

(assert (=> (and b!3601567 (= (toChars!7753 (transformation!5610 rule!403)) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292368) tb!206117))

(declare-fun result!251242 () Bool)

(assert (= result!251242 result!251236))

(assert (=> d!1061212 t!292368))

(declare-fun b_and!261735 () Bool)

(assert (= b_and!261709 (and (=> t!292368 result!251242) b_and!261735)))

(declare-fun tb!206119 () Bool)

(declare-fun t!292370 () Bool)

(assert (=> (and b!3601588 (= (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292370) tb!206119))

(declare-fun result!251244 () Bool)

(assert (= result!251244 result!251236))

(assert (=> d!1061212 t!292370))

(declare-fun b_and!261737 () Bool)

(assert (= b_and!261713 (and (=> t!292370 result!251244) b_and!261737)))

(declare-fun m!4098167 () Bool)

(assert (=> d!1061212 m!4098167))

(declare-fun m!4098169 () Bool)

(assert (=> d!1061212 m!4098169))

(assert (=> b!3601589 d!1061212))

(declare-fun d!1061214 () Bool)

(assert (=> d!1061214 (isPrefix!2973 lt!1237601 (++!9426 lt!1237601 suffix!1395))))

(declare-fun lt!1237826 () Unit!53935)

(assert (=> d!1061214 (= lt!1237826 (choose!21000 lt!1237601 suffix!1395))))

(assert (=> d!1061214 (= (lemmaConcatTwoListThenFirstIsPrefix!1894 lt!1237601 suffix!1395) lt!1237826)))

(declare-fun bs!570570 () Bool)

(assert (= bs!570570 d!1061214))

(assert (=> bs!570570 m!4097637))

(assert (=> bs!570570 m!4097637))

(declare-fun m!4098171 () Bool)

(assert (=> bs!570570 m!4098171))

(declare-fun m!4098173 () Bool)

(assert (=> bs!570570 m!4098173))

(assert (=> b!3601589 d!1061214))

(declare-fun d!1061216 () Bool)

(declare-fun res!1455869 () Bool)

(declare-fun e!2228963 () Bool)

(assert (=> d!1061216 (=> (not res!1455869) (not e!2228963))))

(assert (=> d!1061216 (= res!1455869 (not (isEmpty!22354 (originalCharacters!6324 token!511))))))

(assert (=> d!1061216 (= (inv!51249 token!511) e!2228963)))

(declare-fun b!3601957 () Bool)

(declare-fun res!1455870 () Bool)

(assert (=> b!3601957 (=> (not res!1455870) (not e!2228963))))

(assert (=> b!3601957 (= res!1455870 (= (originalCharacters!6324 token!511) (list!13958 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 token!511))) (value!180345 token!511)))))))

(declare-fun b!3601958 () Bool)

(assert (=> b!3601958 (= e!2228963 (= (size!28874 token!511) (size!28876 (originalCharacters!6324 token!511))))))

(assert (= (and d!1061216 res!1455869) b!3601957))

(assert (= (and b!3601957 res!1455870) b!3601958))

(declare-fun b_lambda!106517 () Bool)

(assert (=> (not b_lambda!106517) (not b!3601957)))

(declare-fun t!292372 () Bool)

(declare-fun tb!206121 () Bool)

(assert (=> (and b!3601571 (= (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toChars!7753 (transformation!5610 (rule!8346 token!511)))) t!292372) tb!206121))

(declare-fun b!3601959 () Bool)

(declare-fun e!2228964 () Bool)

(declare-fun tp!1101702 () Bool)

(assert (=> b!3601959 (= e!2228964 (and (inv!51252 (c!623287 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 token!511))) (value!180345 token!511)))) tp!1101702))))

(declare-fun result!251246 () Bool)

(assert (=> tb!206121 (= result!251246 (and (inv!51253 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 token!511))) (value!180345 token!511))) e!2228964))))

(assert (= tb!206121 b!3601959))

(declare-fun m!4098175 () Bool)

(assert (=> b!3601959 m!4098175))

(declare-fun m!4098177 () Bool)

(assert (=> tb!206121 m!4098177))

(assert (=> b!3601957 t!292372))

(declare-fun b_and!261739 () Bool)

(assert (= b_and!261731 (and (=> t!292372 result!251246) b_and!261739)))

(declare-fun t!292374 () Bool)

(declare-fun tb!206123 () Bool)

(assert (=> (and b!3601570 (= (toChars!7753 (transformation!5610 (rule!8346 token!511))) (toChars!7753 (transformation!5610 (rule!8346 token!511)))) t!292374) tb!206123))

(declare-fun result!251248 () Bool)

(assert (= result!251248 result!251246))

(assert (=> b!3601957 t!292374))

(declare-fun b_and!261741 () Bool)

(assert (= b_and!261733 (and (=> t!292374 result!251248) b_and!261741)))

(declare-fun t!292376 () Bool)

(declare-fun tb!206125 () Bool)

(assert (=> (and b!3601567 (= (toChars!7753 (transformation!5610 rule!403)) (toChars!7753 (transformation!5610 (rule!8346 token!511)))) t!292376) tb!206125))

(declare-fun result!251250 () Bool)

(assert (= result!251250 result!251246))

(assert (=> b!3601957 t!292376))

(declare-fun b_and!261743 () Bool)

(assert (= b_and!261735 (and (=> t!292376 result!251250) b_and!261743)))

(declare-fun tb!206127 () Bool)

(declare-fun t!292378 () Bool)

(assert (=> (and b!3601588 (= (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toChars!7753 (transformation!5610 (rule!8346 token!511)))) t!292378) tb!206127))

(declare-fun result!251252 () Bool)

(assert (= result!251252 result!251246))

(assert (=> b!3601957 t!292378))

(declare-fun b_and!261745 () Bool)

(assert (= b_and!261737 (and (=> t!292378 result!251252) b_and!261745)))

(declare-fun m!4098179 () Bool)

(assert (=> d!1061216 m!4098179))

(declare-fun m!4098181 () Bool)

(assert (=> b!3601957 m!4098181))

(assert (=> b!3601957 m!4098181))

(declare-fun m!4098183 () Bool)

(assert (=> b!3601957 m!4098183))

(declare-fun m!4098185 () Bool)

(assert (=> b!3601958 m!4098185))

(assert (=> start!334846 d!1061216))

(declare-fun d!1061218 () Bool)

(declare-fun e!2228979 () Bool)

(assert (=> d!1061218 e!2228979))

(declare-fun c!623365 () Bool)

(assert (=> d!1061218 (= c!623365 ((_ is EmptyExpr!10369) (regex!5610 lt!1237610)))))

(declare-fun lt!1237829 () Bool)

(declare-fun e!2228984 () Bool)

(assert (=> d!1061218 (= lt!1237829 e!2228984)))

(declare-fun c!623364 () Bool)

(assert (=> d!1061218 (= c!623364 (isEmpty!22354 (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))))))

(declare-fun validRegex!4745 (Regex!10369) Bool)

(assert (=> d!1061218 (validRegex!4745 (regex!5610 lt!1237610))))

(assert (=> d!1061218 (= (matchR!4938 (regex!5610 lt!1237610) (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))) lt!1237829)))

(declare-fun b!3601988 () Bool)

(declare-fun e!2228983 () Bool)

(declare-fun e!2228981 () Bool)

(assert (=> b!3601988 (= e!2228983 e!2228981)))

(declare-fun res!1455892 () Bool)

(assert (=> b!3601988 (=> res!1455892 e!2228981)))

(declare-fun call!260450 () Bool)

(assert (=> b!3601988 (= res!1455892 call!260450)))

(declare-fun b!3601989 () Bool)

(declare-fun e!2228982 () Bool)

(assert (=> b!3601989 (= e!2228982 (not lt!1237829))))

(declare-fun b!3601990 () Bool)

(assert (=> b!3601990 (= e!2228979 e!2228982)))

(declare-fun c!623366 () Bool)

(assert (=> b!3601990 (= c!623366 ((_ is EmptyLang!10369) (regex!5610 lt!1237610)))))

(declare-fun b!3601991 () Bool)

(declare-fun e!2228980 () Bool)

(assert (=> b!3601991 (= e!2228980 e!2228983)))

(declare-fun res!1455894 () Bool)

(assert (=> b!3601991 (=> (not res!1455894) (not e!2228983))))

(assert (=> b!3601991 (= res!1455894 (not lt!1237829))))

(declare-fun b!3601992 () Bool)

(assert (=> b!3601992 (= e!2228979 (= lt!1237829 call!260450))))

(declare-fun b!3601993 () Bool)

(declare-fun nullable!3585 (Regex!10369) Bool)

(assert (=> b!3601993 (= e!2228984 (nullable!3585 (regex!5610 lt!1237610)))))

(declare-fun b!3601994 () Bool)

(assert (=> b!3601994 (= e!2228981 (not (= (head!7554 (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))) (c!623286 (regex!5610 lt!1237610)))))))

(declare-fun b!3601995 () Bool)

(declare-fun res!1455889 () Bool)

(declare-fun e!2228985 () Bool)

(assert (=> b!3601995 (=> (not res!1455889) (not e!2228985))))

(assert (=> b!3601995 (= res!1455889 (not call!260450))))

(declare-fun b!3601996 () Bool)

(declare-fun res!1455891 () Bool)

(assert (=> b!3601996 (=> res!1455891 e!2228981)))

(assert (=> b!3601996 (= res!1455891 (not (isEmpty!22354 (tail!5583 (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))))))))

(declare-fun b!3601997 () Bool)

(declare-fun res!1455887 () Bool)

(assert (=> b!3601997 (=> res!1455887 e!2228980)))

(assert (=> b!3601997 (= res!1455887 (not ((_ is ElementMatch!10369) (regex!5610 lt!1237610))))))

(assert (=> b!3601997 (= e!2228982 e!2228980)))

(declare-fun b!3601998 () Bool)

(declare-fun res!1455893 () Bool)

(assert (=> b!3601998 (=> (not res!1455893) (not e!2228985))))

(assert (=> b!3601998 (= res!1455893 (isEmpty!22354 (tail!5583 (list!13958 (charsOf!3624 (_1!22024 lt!1237596))))))))

(declare-fun b!3601999 () Bool)

(declare-fun res!1455888 () Bool)

(assert (=> b!3601999 (=> res!1455888 e!2228980)))

(assert (=> b!3601999 (= res!1455888 e!2228985)))

(declare-fun res!1455890 () Bool)

(assert (=> b!3601999 (=> (not res!1455890) (not e!2228985))))

(assert (=> b!3601999 (= res!1455890 lt!1237829)))

(declare-fun b!3602000 () Bool)

(declare-fun derivativeStep!3134 (Regex!10369 C!20924) Regex!10369)

(assert (=> b!3602000 (= e!2228984 (matchR!4938 (derivativeStep!3134 (regex!5610 lt!1237610) (head!7554 (list!13958 (charsOf!3624 (_1!22024 lt!1237596))))) (tail!5583 (list!13958 (charsOf!3624 (_1!22024 lt!1237596))))))))

(declare-fun b!3602001 () Bool)

(assert (=> b!3602001 (= e!2228985 (= (head!7554 (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))) (c!623286 (regex!5610 lt!1237610))))))

(declare-fun bm!260445 () Bool)

(assert (=> bm!260445 (= call!260450 (isEmpty!22354 (list!13958 (charsOf!3624 (_1!22024 lt!1237596)))))))

(assert (= (and d!1061218 c!623364) b!3601993))

(assert (= (and d!1061218 (not c!623364)) b!3602000))

(assert (= (and d!1061218 c!623365) b!3601992))

(assert (= (and d!1061218 (not c!623365)) b!3601990))

(assert (= (and b!3601990 c!623366) b!3601989))

(assert (= (and b!3601990 (not c!623366)) b!3601997))

(assert (= (and b!3601997 (not res!1455887)) b!3601999))

(assert (= (and b!3601999 res!1455890) b!3601995))

(assert (= (and b!3601995 res!1455889) b!3601998))

(assert (= (and b!3601998 res!1455893) b!3602001))

(assert (= (and b!3601999 (not res!1455888)) b!3601991))

(assert (= (and b!3601991 res!1455894) b!3601988))

(assert (= (and b!3601988 (not res!1455892)) b!3601996))

(assert (= (and b!3601996 (not res!1455891)) b!3601994))

(assert (= (or b!3601992 b!3601988 b!3601995) bm!260445))

(declare-fun m!4098187 () Bool)

(assert (=> b!3601993 m!4098187))

(assert (=> b!3601994 m!4097677))

(declare-fun m!4098189 () Bool)

(assert (=> b!3601994 m!4098189))

(assert (=> d!1061218 m!4097677))

(declare-fun m!4098191 () Bool)

(assert (=> d!1061218 m!4098191))

(declare-fun m!4098193 () Bool)

(assert (=> d!1061218 m!4098193))

(assert (=> b!3602001 m!4097677))

(assert (=> b!3602001 m!4098189))

(assert (=> b!3602000 m!4097677))

(assert (=> b!3602000 m!4098189))

(assert (=> b!3602000 m!4098189))

(declare-fun m!4098195 () Bool)

(assert (=> b!3602000 m!4098195))

(assert (=> b!3602000 m!4097677))

(declare-fun m!4098197 () Bool)

(assert (=> b!3602000 m!4098197))

(assert (=> b!3602000 m!4098195))

(assert (=> b!3602000 m!4098197))

(declare-fun m!4098199 () Bool)

(assert (=> b!3602000 m!4098199))

(assert (=> bm!260445 m!4097677))

(assert (=> bm!260445 m!4098191))

(assert (=> b!3601998 m!4097677))

(assert (=> b!3601998 m!4098197))

(assert (=> b!3601998 m!4098197))

(declare-fun m!4098201 () Bool)

(assert (=> b!3601998 m!4098201))

(assert (=> b!3601996 m!4097677))

(assert (=> b!3601996 m!4098197))

(assert (=> b!3601996 m!4098197))

(assert (=> b!3601996 m!4098201))

(assert (=> b!3601590 d!1061218))

(declare-fun d!1061220 () Bool)

(assert (=> d!1061220 (= (list!13958 (charsOf!3624 (_1!22024 lt!1237596))) (list!13962 (c!623287 (charsOf!3624 (_1!22024 lt!1237596)))))))

(declare-fun bs!570571 () Bool)

(assert (= bs!570571 d!1061220))

(declare-fun m!4098203 () Bool)

(assert (=> bs!570571 m!4098203))

(assert (=> b!3601590 d!1061220))

(assert (=> b!3601590 d!1061212))

(declare-fun d!1061222 () Bool)

(assert (=> d!1061222 (= (get!12266 lt!1237608) (v!37564 lt!1237608))))

(assert (=> b!3601590 d!1061222))

(declare-fun d!1061224 () Bool)

(assert (=> d!1061224 (= (get!12265 lt!1237605) (v!37563 lt!1237605))))

(assert (=> b!3601572 d!1061224))

(declare-fun d!1061226 () Bool)

(assert (=> d!1061226 (= (inv!51245 (tag!6302 anOtherTypeRule!33)) (= (mod (str.len (value!180344 (tag!6302 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3601573 d!1061226))

(declare-fun d!1061228 () Bool)

(declare-fun res!1455895 () Bool)

(declare-fun e!2228986 () Bool)

(assert (=> d!1061228 (=> (not res!1455895) (not e!2228986))))

(assert (=> d!1061228 (= res!1455895 (semiInverseModEq!2383 (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toValue!7894 (transformation!5610 anOtherTypeRule!33))))))

(assert (=> d!1061228 (= (inv!51248 (transformation!5610 anOtherTypeRule!33)) e!2228986)))

(declare-fun b!3602002 () Bool)

(assert (=> b!3602002 (= e!2228986 (equivClasses!2282 (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toValue!7894 (transformation!5610 anOtherTypeRule!33))))))

(assert (= (and d!1061228 res!1455895) b!3602002))

(declare-fun m!4098205 () Bool)

(assert (=> d!1061228 m!4098205))

(declare-fun m!4098207 () Bool)

(assert (=> b!3602002 m!4098207))

(assert (=> b!3601573 d!1061228))

(declare-fun d!1061230 () Bool)

(assert (=> d!1061230 (= (_2!22024 lt!1237596) lt!1237593)))

(declare-fun lt!1237832 () Unit!53935)

(declare-fun choose!21001 (List!38014 List!38014 List!38014 List!38014 List!38014) Unit!53935)

(assert (=> d!1061230 (= lt!1237832 (choose!21001 lt!1237586 (_2!22024 lt!1237596) lt!1237586 lt!1237593 lt!1237612))))

(assert (=> d!1061230 (isPrefix!2973 lt!1237586 lt!1237612)))

(assert (=> d!1061230 (= (lemmaSamePrefixThenSameSuffix!1328 lt!1237586 (_2!22024 lt!1237596) lt!1237586 lt!1237593 lt!1237612) lt!1237832)))

(declare-fun bs!570572 () Bool)

(assert (= bs!570572 d!1061230))

(declare-fun m!4098209 () Bool)

(assert (=> bs!570572 m!4098209))

(assert (=> bs!570572 m!4097639))

(assert (=> b!3601575 d!1061230))

(declare-fun b!3602021 () Bool)

(declare-fun res!1455912 () Bool)

(declare-fun e!2228996 () Bool)

(assert (=> b!3602021 (=> (not res!1455912) (not e!2228996))))

(declare-fun lt!1237846 () Option!7850)

(assert (=> b!3602021 (= res!1455912 (= (rule!8346 (_1!22024 (get!12265 lt!1237846))) (rule!8346 (_1!22024 lt!1237596))))))

(declare-fun b!3602022 () Bool)

(declare-fun res!1455911 () Bool)

(assert (=> b!3602022 (=> (not res!1455911) (not e!2228996))))

(assert (=> b!3602022 (= res!1455911 (= (++!9426 (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237846)))) (_2!22024 (get!12265 lt!1237846))) lt!1237612))))

(declare-fun b!3602024 () Bool)

(declare-fun e!2228997 () Bool)

(declare-datatypes ((tuple2!37786 0))(
  ( (tuple2!37787 (_1!22027 List!38014) (_2!22027 List!38014)) )
))
(declare-fun findLongestMatchInner!990 (Regex!10369 List!38014 Int List!38014 List!38014 Int) tuple2!37786)

(assert (=> b!3602024 (= e!2228997 (matchR!4938 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) (_1!22027 (findLongestMatchInner!990 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) Nil!37890 (size!28876 Nil!37890) lt!1237612 lt!1237612 (size!28876 lt!1237612)))))))

(declare-fun b!3602025 () Bool)

(declare-fun e!2228998 () Option!7850)

(declare-fun lt!1237847 () tuple2!37786)

(assert (=> b!3602025 (= e!2228998 (Some!7849 (tuple2!37781 (Token!10587 (apply!9116 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) (seqFromList!4163 (_1!22027 lt!1237847))) (rule!8346 (_1!22024 lt!1237596)) (size!28875 (seqFromList!4163 (_1!22027 lt!1237847))) (_1!22027 lt!1237847)) (_2!22027 lt!1237847))))))

(declare-fun lt!1237843 () Unit!53935)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!963 (Regex!10369 List!38014) Unit!53935)

(assert (=> b!3602025 (= lt!1237843 (longestMatchIsAcceptedByMatchOrIsEmpty!963 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237612))))

(declare-fun res!1455910 () Bool)

(assert (=> b!3602025 (= res!1455910 (isEmpty!22354 (_1!22027 (findLongestMatchInner!990 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) Nil!37890 (size!28876 Nil!37890) lt!1237612 lt!1237612 (size!28876 lt!1237612)))))))

(assert (=> b!3602025 (=> res!1455910 e!2228997)))

(assert (=> b!3602025 e!2228997))

(declare-fun lt!1237844 () Unit!53935)

(assert (=> b!3602025 (= lt!1237844 lt!1237843)))

(declare-fun lt!1237845 () Unit!53935)

(assert (=> b!3602025 (= lt!1237845 (lemmaSemiInverse!1367 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) (seqFromList!4163 (_1!22027 lt!1237847))))))

(declare-fun b!3602026 () Bool)

(assert (=> b!3602026 (= e!2228998 None!7849)))

(declare-fun b!3602027 () Bool)

(declare-fun e!2228995 () Bool)

(assert (=> b!3602027 (= e!2228995 e!2228996)))

(declare-fun res!1455916 () Bool)

(assert (=> b!3602027 (=> (not res!1455916) (not e!2228996))))

(assert (=> b!3602027 (= res!1455916 (matchR!4938 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237846))))))))

(declare-fun b!3602028 () Bool)

(assert (=> b!3602028 (= e!2228996 (= (size!28874 (_1!22024 (get!12265 lt!1237846))) (size!28876 (originalCharacters!6324 (_1!22024 (get!12265 lt!1237846))))))))

(declare-fun b!3602029 () Bool)

(declare-fun res!1455913 () Bool)

(assert (=> b!3602029 (=> (not res!1455913) (not e!2228996))))

(assert (=> b!3602029 (= res!1455913 (< (size!28876 (_2!22024 (get!12265 lt!1237846))) (size!28876 lt!1237612)))))

(declare-fun d!1061232 () Bool)

(assert (=> d!1061232 e!2228995))

(declare-fun res!1455915 () Bool)

(assert (=> d!1061232 (=> res!1455915 e!2228995)))

(assert (=> d!1061232 (= res!1455915 (isEmpty!22357 lt!1237846))))

(assert (=> d!1061232 (= lt!1237846 e!2228998)))

(declare-fun c!623369 () Bool)

(assert (=> d!1061232 (= c!623369 (isEmpty!22354 (_1!22027 lt!1237847)))))

(declare-fun findLongestMatch!905 (Regex!10369 List!38014) tuple2!37786)

(assert (=> d!1061232 (= lt!1237847 (findLongestMatch!905 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237612))))

(assert (=> d!1061232 (ruleValid!1875 thiss!23823 (rule!8346 (_1!22024 lt!1237596)))))

(assert (=> d!1061232 (= (maxPrefixOneRule!1877 thiss!23823 (rule!8346 (_1!22024 lt!1237596)) lt!1237612) lt!1237846)))

(declare-fun b!3602023 () Bool)

(declare-fun res!1455914 () Bool)

(assert (=> b!3602023 (=> (not res!1455914) (not e!2228996))))

(assert (=> b!3602023 (= res!1455914 (= (value!180345 (_1!22024 (get!12265 lt!1237846))) (apply!9116 (transformation!5610 (rule!8346 (_1!22024 (get!12265 lt!1237846)))) (seqFromList!4163 (originalCharacters!6324 (_1!22024 (get!12265 lt!1237846)))))))))

(assert (= (and d!1061232 c!623369) b!3602026))

(assert (= (and d!1061232 (not c!623369)) b!3602025))

(assert (= (and b!3602025 (not res!1455910)) b!3602024))

(assert (= (and d!1061232 (not res!1455915)) b!3602027))

(assert (= (and b!3602027 res!1455916) b!3602022))

(assert (= (and b!3602022 res!1455911) b!3602029))

(assert (= (and b!3602029 res!1455913) b!3602021))

(assert (= (and b!3602021 res!1455912) b!3602023))

(assert (= (and b!3602023 res!1455914) b!3602028))

(declare-fun m!4098211 () Bool)

(assert (=> b!3602027 m!4098211))

(declare-fun m!4098213 () Bool)

(assert (=> b!3602027 m!4098213))

(assert (=> b!3602027 m!4098213))

(declare-fun m!4098215 () Bool)

(assert (=> b!3602027 m!4098215))

(assert (=> b!3602027 m!4098215))

(declare-fun m!4098217 () Bool)

(assert (=> b!3602027 m!4098217))

(declare-fun m!4098219 () Bool)

(assert (=> b!3602025 m!4098219))

(assert (=> b!3602025 m!4097875))

(declare-fun m!4098221 () Bool)

(assert (=> b!3602025 m!4098221))

(declare-fun m!4098223 () Bool)

(assert (=> b!3602025 m!4098223))

(declare-fun m!4098225 () Bool)

(assert (=> b!3602025 m!4098225))

(declare-fun m!4098227 () Bool)

(assert (=> b!3602025 m!4098227))

(declare-fun m!4098229 () Bool)

(assert (=> b!3602025 m!4098229))

(assert (=> b!3602025 m!4098225))

(declare-fun m!4098231 () Bool)

(assert (=> b!3602025 m!4098231))

(assert (=> b!3602025 m!4098225))

(assert (=> b!3602025 m!4098219))

(assert (=> b!3602025 m!4098225))

(declare-fun m!4098233 () Bool)

(assert (=> b!3602025 m!4098233))

(assert (=> b!3602025 m!4097875))

(assert (=> b!3602022 m!4098211))

(assert (=> b!3602022 m!4098213))

(assert (=> b!3602022 m!4098213))

(assert (=> b!3602022 m!4098215))

(assert (=> b!3602022 m!4098215))

(declare-fun m!4098235 () Bool)

(assert (=> b!3602022 m!4098235))

(assert (=> b!3602021 m!4098211))

(assert (=> b!3602023 m!4098211))

(declare-fun m!4098237 () Bool)

(assert (=> b!3602023 m!4098237))

(assert (=> b!3602023 m!4098237))

(declare-fun m!4098239 () Bool)

(assert (=> b!3602023 m!4098239))

(declare-fun m!4098241 () Bool)

(assert (=> d!1061232 m!4098241))

(declare-fun m!4098243 () Bool)

(assert (=> d!1061232 m!4098243))

(declare-fun m!4098245 () Bool)

(assert (=> d!1061232 m!4098245))

(declare-fun m!4098247 () Bool)

(assert (=> d!1061232 m!4098247))

(assert (=> b!3602024 m!4098219))

(assert (=> b!3602024 m!4097875))

(assert (=> b!3602024 m!4098219))

(assert (=> b!3602024 m!4097875))

(assert (=> b!3602024 m!4098221))

(declare-fun m!4098249 () Bool)

(assert (=> b!3602024 m!4098249))

(assert (=> b!3602028 m!4098211))

(declare-fun m!4098251 () Bool)

(assert (=> b!3602028 m!4098251))

(assert (=> b!3602029 m!4098211))

(declare-fun m!4098253 () Bool)

(assert (=> b!3602029 m!4098253))

(assert (=> b!3602029 m!4097875))

(assert (=> b!3601575 d!1061232))

(declare-fun d!1061234 () Bool)

(declare-fun dynLambda!16358 (Int BalanceConc!22688) TokenValue!5840)

(assert (=> d!1061234 (= (apply!9116 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) (seqFromList!4163 lt!1237586)) (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (seqFromList!4163 lt!1237586)))))

(declare-fun b_lambda!106519 () Bool)

(assert (=> (not b_lambda!106519) (not d!1061234)))

(declare-fun tb!206129 () Bool)

(declare-fun t!292380 () Bool)

(assert (=> (and b!3601571 (= (toValue!7894 (transformation!5610 anOtherTypeRule!33)) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292380) tb!206129))

(declare-fun result!251254 () Bool)

(assert (=> tb!206129 (= result!251254 (inv!21 (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (seqFromList!4163 lt!1237586))))))

(declare-fun m!4098255 () Bool)

(assert (=> tb!206129 m!4098255))

(assert (=> d!1061234 t!292380))

(declare-fun b_and!261747 () Bool)

(assert (= b_and!261699 (and (=> t!292380 result!251254) b_and!261747)))

(declare-fun tb!206131 () Bool)

(declare-fun t!292382 () Bool)

(assert (=> (and b!3601570 (= (toValue!7894 (transformation!5610 (rule!8346 token!511))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292382) tb!206131))

(declare-fun result!251258 () Bool)

(assert (= result!251258 result!251254))

(assert (=> d!1061234 t!292382))

(declare-fun b_and!261749 () Bool)

(assert (= b_and!261703 (and (=> t!292382 result!251258) b_and!261749)))

(declare-fun t!292384 () Bool)

(declare-fun tb!206133 () Bool)

(assert (=> (and b!3601567 (= (toValue!7894 (transformation!5610 rule!403)) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292384) tb!206133))

(declare-fun result!251260 () Bool)

(assert (= result!251260 result!251254))

(assert (=> d!1061234 t!292384))

(declare-fun b_and!261751 () Bool)

(assert (= b_and!261707 (and (=> t!292384 result!251260) b_and!261751)))

(declare-fun tb!206135 () Bool)

(declare-fun t!292386 () Bool)

(assert (=> (and b!3601588 (= (toValue!7894 (transformation!5610 (h!43311 rules!3307))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292386) tb!206135))

(declare-fun result!251262 () Bool)

(assert (= result!251262 result!251254))

(assert (=> d!1061234 t!292386))

(declare-fun b_and!261753 () Bool)

(assert (= b_and!261711 (and (=> t!292386 result!251262) b_and!261753)))

(assert (=> d!1061234 m!4097607))

(declare-fun m!4098257 () Bool)

(assert (=> d!1061234 m!4098257))

(assert (=> b!3601575 d!1061234))

(declare-fun d!1061236 () Bool)

(assert (=> d!1061236 (= (maxPrefixOneRule!1877 thiss!23823 (rule!8346 (_1!22024 lt!1237596)) lt!1237612) (Some!7849 (tuple2!37781 (Token!10587 (apply!9116 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) (seqFromList!4163 lt!1237586)) (rule!8346 (_1!22024 lt!1237596)) (size!28876 lt!1237586) lt!1237586) (_2!22024 lt!1237596))))))

(declare-fun lt!1237850 () Unit!53935)

(declare-fun choose!21002 (LexerInterface!5199 List!38015 List!38014 List!38014 List!38014 Rule!11020) Unit!53935)

(assert (=> d!1061236 (= lt!1237850 (choose!21002 thiss!23823 rules!3307 lt!1237586 lt!1237612 (_2!22024 lt!1237596) (rule!8346 (_1!22024 lt!1237596))))))

(assert (=> d!1061236 (not (isEmpty!22355 rules!3307))))

(assert (=> d!1061236 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!949 thiss!23823 rules!3307 lt!1237586 lt!1237612 (_2!22024 lt!1237596) (rule!8346 (_1!22024 lt!1237596))) lt!1237850)))

(declare-fun bs!570573 () Bool)

(assert (= bs!570573 d!1061236))

(assert (=> bs!570573 m!4097607))

(declare-fun m!4098259 () Bool)

(assert (=> bs!570573 m!4098259))

(assert (=> bs!570573 m!4097597))

(assert (=> bs!570573 m!4097607))

(assert (=> bs!570573 m!4097615))

(assert (=> bs!570573 m!4097617))

(assert (=> bs!570573 m!4097609))

(assert (=> b!3601575 d!1061236))

(declare-fun d!1061238 () Bool)

(declare-fun lt!1237853 () List!38014)

(assert (=> d!1061238 (= (++!9426 lt!1237586 lt!1237853) lt!1237612)))

(declare-fun e!2229004 () List!38014)

(assert (=> d!1061238 (= lt!1237853 e!2229004)))

(declare-fun c!623372 () Bool)

(assert (=> d!1061238 (= c!623372 ((_ is Cons!37890) lt!1237586))))

(assert (=> d!1061238 (>= (size!28876 lt!1237612) (size!28876 lt!1237586))))

(assert (=> d!1061238 (= (getSuffix!1548 lt!1237612 lt!1237586) lt!1237853)))

(declare-fun b!3602036 () Bool)

(assert (=> b!3602036 (= e!2229004 (getSuffix!1548 (tail!5583 lt!1237612) (t!292345 lt!1237586)))))

(declare-fun b!3602037 () Bool)

(assert (=> b!3602037 (= e!2229004 lt!1237612)))

(assert (= (and d!1061238 c!623372) b!3602036))

(assert (= (and d!1061238 (not c!623372)) b!3602037))

(declare-fun m!4098261 () Bool)

(assert (=> d!1061238 m!4098261))

(assert (=> d!1061238 m!4097875))

(assert (=> d!1061238 m!4097609))

(assert (=> b!3602036 m!4097885))

(assert (=> b!3602036 m!4097885))

(declare-fun m!4098263 () Bool)

(assert (=> b!3602036 m!4098263))

(assert (=> b!3601575 d!1061238))

(declare-fun d!1061240 () Bool)

(declare-fun lt!1237856 () Int)

(assert (=> d!1061240 (>= lt!1237856 0)))

(declare-fun e!2229007 () Int)

(assert (=> d!1061240 (= lt!1237856 e!2229007)))

(declare-fun c!623375 () Bool)

(assert (=> d!1061240 (= c!623375 ((_ is Nil!37890) lt!1237586))))

(assert (=> d!1061240 (= (size!28876 lt!1237586) lt!1237856)))

(declare-fun b!3602042 () Bool)

(assert (=> b!3602042 (= e!2229007 0)))

(declare-fun b!3602043 () Bool)

(assert (=> b!3602043 (= e!2229007 (+ 1 (size!28876 (t!292345 lt!1237586))))))

(assert (= (and d!1061240 c!623375) b!3602042))

(assert (= (and d!1061240 (not c!623375)) b!3602043))

(declare-fun m!4098265 () Bool)

(assert (=> b!3602043 m!4098265))

(assert (=> b!3601575 d!1061240))

(declare-fun d!1061242 () Bool)

(declare-fun fromListB!1923 (List!38014) BalanceConc!22688)

(assert (=> d!1061242 (= (seqFromList!4163 lt!1237586) (fromListB!1923 lt!1237586))))

(declare-fun bs!570574 () Bool)

(assert (= bs!570574 d!1061242))

(declare-fun m!4098267 () Bool)

(assert (=> bs!570574 m!4098267))

(assert (=> b!3601575 d!1061242))

(declare-fun d!1061244 () Bool)

(declare-fun lt!1237857 () Bool)

(assert (=> d!1061244 (= lt!1237857 (select (content!5409 (usedCharacters!824 (regex!5610 anOtherTypeRule!33))) lt!1237598))))

(declare-fun e!2229009 () Bool)

(assert (=> d!1061244 (= lt!1237857 e!2229009)))

(declare-fun res!1455918 () Bool)

(assert (=> d!1061244 (=> (not res!1455918) (not e!2229009))))

(assert (=> d!1061244 (= res!1455918 ((_ is Cons!37890) (usedCharacters!824 (regex!5610 anOtherTypeRule!33))))))

(assert (=> d!1061244 (= (contains!7284 (usedCharacters!824 (regex!5610 anOtherTypeRule!33)) lt!1237598) lt!1237857)))

(declare-fun b!3602044 () Bool)

(declare-fun e!2229008 () Bool)

(assert (=> b!3602044 (= e!2229009 e!2229008)))

(declare-fun res!1455917 () Bool)

(assert (=> b!3602044 (=> res!1455917 e!2229008)))

(assert (=> b!3602044 (= res!1455917 (= (h!43310 (usedCharacters!824 (regex!5610 anOtherTypeRule!33))) lt!1237598))))

(declare-fun b!3602045 () Bool)

(assert (=> b!3602045 (= e!2229008 (contains!7284 (t!292345 (usedCharacters!824 (regex!5610 anOtherTypeRule!33))) lt!1237598))))

(assert (= (and d!1061244 res!1455918) b!3602044))

(assert (= (and b!3602044 (not res!1455917)) b!3602045))

(assert (=> d!1061244 m!4097673))

(declare-fun m!4098269 () Bool)

(assert (=> d!1061244 m!4098269))

(declare-fun m!4098271 () Bool)

(assert (=> d!1061244 m!4098271))

(declare-fun m!4098273 () Bool)

(assert (=> b!3602045 m!4098273))

(assert (=> b!3601574 d!1061244))

(declare-fun d!1061246 () Bool)

(declare-fun c!623387 () Bool)

(assert (=> d!1061246 (= c!623387 (or ((_ is EmptyExpr!10369) (regex!5610 anOtherTypeRule!33)) ((_ is EmptyLang!10369) (regex!5610 anOtherTypeRule!33))))))

(declare-fun e!2229019 () List!38014)

(assert (=> d!1061246 (= (usedCharacters!824 (regex!5610 anOtherTypeRule!33)) e!2229019)))

(declare-fun b!3602062 () Bool)

(declare-fun e!2229021 () List!38014)

(assert (=> b!3602062 (= e!2229021 (Cons!37890 (c!623286 (regex!5610 anOtherTypeRule!33)) Nil!37890))))

(declare-fun c!623386 () Bool)

(declare-fun c!623384 () Bool)

(declare-fun bm!260454 () Bool)

(declare-fun call!260462 () List!38014)

(assert (=> bm!260454 (= call!260462 (usedCharacters!824 (ite c!623384 (reg!10698 (regex!5610 anOtherTypeRule!33)) (ite c!623386 (regOne!21251 (regex!5610 anOtherTypeRule!33)) (regTwo!21250 (regex!5610 anOtherTypeRule!33))))))))

(declare-fun b!3602063 () Bool)

(declare-fun e!2229020 () List!38014)

(declare-fun call!260461 () List!38014)

(assert (=> b!3602063 (= e!2229020 call!260461)))

(declare-fun b!3602064 () Bool)

(assert (=> b!3602064 (= e!2229020 call!260461)))

(declare-fun b!3602065 () Bool)

(assert (=> b!3602065 (= e!2229019 Nil!37890)))

(declare-fun call!260460 () List!38014)

(declare-fun call!260459 () List!38014)

(declare-fun bm!260455 () Bool)

(assert (=> bm!260455 (= call!260461 (++!9426 (ite c!623386 call!260459 call!260460) (ite c!623386 call!260460 call!260459)))))

(declare-fun bm!260456 () Bool)

(assert (=> bm!260456 (= call!260460 (usedCharacters!824 (ite c!623386 (regTwo!21251 (regex!5610 anOtherTypeRule!33)) (regOne!21250 (regex!5610 anOtherTypeRule!33)))))))

(declare-fun b!3602066 () Bool)

(declare-fun e!2229018 () List!38014)

(assert (=> b!3602066 (= e!2229018 e!2229020)))

(assert (=> b!3602066 (= c!623386 ((_ is Union!10369) (regex!5610 anOtherTypeRule!33)))))

(declare-fun b!3602067 () Bool)

(assert (=> b!3602067 (= e!2229019 e!2229021)))

(declare-fun c!623385 () Bool)

(assert (=> b!3602067 (= c!623385 ((_ is ElementMatch!10369) (regex!5610 anOtherTypeRule!33)))))

(declare-fun b!3602068 () Bool)

(assert (=> b!3602068 (= e!2229018 call!260462)))

(declare-fun bm!260457 () Bool)

(assert (=> bm!260457 (= call!260459 call!260462)))

(declare-fun b!3602069 () Bool)

(assert (=> b!3602069 (= c!623384 ((_ is Star!10369) (regex!5610 anOtherTypeRule!33)))))

(assert (=> b!3602069 (= e!2229021 e!2229018)))

(assert (= (and d!1061246 c!623387) b!3602065))

(assert (= (and d!1061246 (not c!623387)) b!3602067))

(assert (= (and b!3602067 c!623385) b!3602062))

(assert (= (and b!3602067 (not c!623385)) b!3602069))

(assert (= (and b!3602069 c!623384) b!3602068))

(assert (= (and b!3602069 (not c!623384)) b!3602066))

(assert (= (and b!3602066 c!623386) b!3602063))

(assert (= (and b!3602066 (not c!623386)) b!3602064))

(assert (= (or b!3602063 b!3602064) bm!260457))

(assert (= (or b!3602063 b!3602064) bm!260456))

(assert (= (or b!3602063 b!3602064) bm!260455))

(assert (= (or b!3602068 bm!260457) bm!260454))

(declare-fun m!4098275 () Bool)

(assert (=> bm!260454 m!4098275))

(declare-fun m!4098277 () Bool)

(assert (=> bm!260455 m!4098277))

(declare-fun m!4098279 () Bool)

(assert (=> bm!260456 m!4098279))

(assert (=> b!3601574 d!1061246))

(declare-fun d!1061248 () Bool)

(assert (=> d!1061248 (not (matchR!4938 (regex!5610 rule!403) lt!1237601))))

(declare-fun lt!1237860 () Unit!53935)

(declare-fun choose!21003 (Regex!10369 List!38014 C!20924) Unit!53935)

(assert (=> d!1061248 (= lt!1237860 (choose!21003 (regex!5610 rule!403) lt!1237601 lt!1237602))))

(assert (=> d!1061248 (validRegex!4745 (regex!5610 rule!403))))

(assert (=> d!1061248 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!594 (regex!5610 rule!403) lt!1237601 lt!1237602) lt!1237860)))

(declare-fun bs!570575 () Bool)

(assert (= bs!570575 d!1061248))

(assert (=> bs!570575 m!4097665))

(declare-fun m!4098281 () Bool)

(assert (=> bs!570575 m!4098281))

(declare-fun m!4098283 () Bool)

(assert (=> bs!570575 m!4098283))

(assert (=> b!3601576 d!1061248))

(declare-fun d!1061250 () Bool)

(assert (=> d!1061250 (= (isEmpty!22355 rules!3307) ((_ is Nil!37891) rules!3307))))

(assert (=> b!3601577 d!1061250))

(declare-fun d!1061252 () Bool)

(assert (=> d!1061252 (= (apply!9116 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237613) (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) lt!1237613))))

(declare-fun b_lambda!106521 () Bool)

(assert (=> (not b_lambda!106521) (not d!1061252)))

(declare-fun tb!206137 () Bool)

(declare-fun t!292388 () Bool)

(assert (=> (and b!3601571 (= (toValue!7894 (transformation!5610 anOtherTypeRule!33)) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292388) tb!206137))

(declare-fun result!251264 () Bool)

(assert (=> tb!206137 (= result!251264 (inv!21 (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) lt!1237613)))))

(declare-fun m!4098285 () Bool)

(assert (=> tb!206137 m!4098285))

(assert (=> d!1061252 t!292388))

(declare-fun b_and!261755 () Bool)

(assert (= b_and!261747 (and (=> t!292388 result!251264) b_and!261755)))

(declare-fun t!292390 () Bool)

(declare-fun tb!206139 () Bool)

(assert (=> (and b!3601570 (= (toValue!7894 (transformation!5610 (rule!8346 token!511))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292390) tb!206139))

(declare-fun result!251266 () Bool)

(assert (= result!251266 result!251264))

(assert (=> d!1061252 t!292390))

(declare-fun b_and!261757 () Bool)

(assert (= b_and!261749 (and (=> t!292390 result!251266) b_and!261757)))

(declare-fun tb!206141 () Bool)

(declare-fun t!292392 () Bool)

(assert (=> (and b!3601567 (= (toValue!7894 (transformation!5610 rule!403)) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292392) tb!206141))

(declare-fun result!251268 () Bool)

(assert (= result!251268 result!251264))

(assert (=> d!1061252 t!292392))

(declare-fun b_and!261759 () Bool)

(assert (= b_and!261751 (and (=> t!292392 result!251268) b_and!261759)))

(declare-fun t!292394 () Bool)

(declare-fun tb!206143 () Bool)

(assert (=> (and b!3601588 (= (toValue!7894 (transformation!5610 (h!43311 rules!3307))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292394) tb!206143))

(declare-fun result!251270 () Bool)

(assert (= result!251270 result!251264))

(assert (=> d!1061252 t!292394))

(declare-fun b_and!261761 () Bool)

(assert (= b_and!261753 (and (=> t!292394 result!251270) b_and!261761)))

(declare-fun m!4098287 () Bool)

(assert (=> d!1061252 m!4098287))

(assert (=> b!3601557 d!1061252))

(declare-fun d!1061254 () Bool)

(declare-fun lt!1237863 () Int)

(assert (=> d!1061254 (= lt!1237863 (size!28876 (list!13958 lt!1237613)))))

(declare-fun size!28878 (Conc!11537) Int)

(assert (=> d!1061254 (= lt!1237863 (size!28878 (c!623287 lt!1237613)))))

(assert (=> d!1061254 (= (size!28875 lt!1237613) lt!1237863)))

(declare-fun bs!570576 () Bool)

(assert (= bs!570576 d!1061254))

(assert (=> bs!570576 m!4097621))

(assert (=> bs!570576 m!4097621))

(declare-fun m!4098289 () Bool)

(assert (=> bs!570576 m!4098289))

(declare-fun m!4098291 () Bool)

(assert (=> bs!570576 m!4098291))

(assert (=> b!3601557 d!1061254))

(declare-fun d!1061256 () Bool)

(assert (=> d!1061256 (= (size!28874 (_1!22024 lt!1237596)) (size!28876 (originalCharacters!6324 (_1!22024 lt!1237596))))))

(declare-fun Unit!53944 () Unit!53935)

(assert (=> d!1061256 (= (lemmaCharactersSize!663 (_1!22024 lt!1237596)) Unit!53944)))

(declare-fun bs!570577 () Bool)

(assert (= bs!570577 d!1061256))

(declare-fun m!4098293 () Bool)

(assert (=> bs!570577 m!4098293))

(assert (=> b!3601557 d!1061256))

(declare-fun b!3602222 () Bool)

(declare-fun e!2229113 () Bool)

(assert (=> b!3602222 (= e!2229113 true)))

(declare-fun d!1061258 () Bool)

(assert (=> d!1061258 e!2229113))

(assert (= d!1061258 b!3602222))

(declare-fun order!20653 () Int)

(declare-fun lambda!123978 () Int)

(declare-fun order!20651 () Int)

(declare-fun dynLambda!16359 (Int Int) Int)

(declare-fun dynLambda!16360 (Int Int) Int)

(assert (=> b!3602222 (< (dynLambda!16359 order!20651 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) (dynLambda!16360 order!20653 lambda!123978))))

(declare-fun order!20655 () Int)

(declare-fun dynLambda!16361 (Int Int) Int)

(assert (=> b!3602222 (< (dynLambda!16361 order!20655 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) (dynLambda!16360 order!20653 lambda!123978))))

(assert (=> d!1061258 (= (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) lt!1237613) (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596)))))))

(declare-fun lt!1237910 () Unit!53935)

(declare-fun Forall2of!303 (Int BalanceConc!22688 BalanceConc!22688) Unit!53935)

(assert (=> d!1061258 (= lt!1237910 (Forall2of!303 lambda!123978 lt!1237613 (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596)))))))

(assert (=> d!1061258 (= (list!13958 lt!1237613) (list!13958 (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596)))))))

(assert (=> d!1061258 (= (lemmaEqSameImage!801 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237613 (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596)))) lt!1237910)))

(declare-fun b_lambda!106541 () Bool)

(assert (=> (not b_lambda!106541) (not d!1061258)))

(assert (=> d!1061258 t!292388))

(declare-fun b_and!261823 () Bool)

(assert (= b_and!261755 (and (=> t!292388 result!251264) b_and!261823)))

(assert (=> d!1061258 t!292390))

(declare-fun b_and!261825 () Bool)

(assert (= b_and!261757 (and (=> t!292390 result!251266) b_and!261825)))

(assert (=> d!1061258 t!292392))

(declare-fun b_and!261827 () Bool)

(assert (= b_and!261759 (and (=> t!292392 result!251268) b_and!261827)))

(assert (=> d!1061258 t!292394))

(declare-fun b_and!261829 () Bool)

(assert (= b_and!261761 (and (=> t!292394 result!251270) b_and!261829)))

(declare-fun b_lambda!106543 () Bool)

(assert (=> (not b_lambda!106543) (not d!1061258)))

(declare-fun tb!206189 () Bool)

(declare-fun t!292440 () Bool)

(assert (=> (and b!3601571 (= (toValue!7894 (transformation!5610 anOtherTypeRule!33)) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292440) tb!206189))

(declare-fun result!251324 () Bool)

(assert (=> tb!206189 (= result!251324 (inv!21 (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596))))))))

(declare-fun m!4098447 () Bool)

(assert (=> tb!206189 m!4098447))

(assert (=> d!1061258 t!292440))

(declare-fun b_and!261831 () Bool)

(assert (= b_and!261823 (and (=> t!292440 result!251324) b_and!261831)))

(declare-fun t!292442 () Bool)

(declare-fun tb!206191 () Bool)

(assert (=> (and b!3601570 (= (toValue!7894 (transformation!5610 (rule!8346 token!511))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292442) tb!206191))

(declare-fun result!251326 () Bool)

(assert (= result!251326 result!251324))

(assert (=> d!1061258 t!292442))

(declare-fun b_and!261833 () Bool)

(assert (= b_and!261825 (and (=> t!292442 result!251326) b_and!261833)))

(declare-fun t!292444 () Bool)

(declare-fun tb!206193 () Bool)

(assert (=> (and b!3601567 (= (toValue!7894 (transformation!5610 rule!403)) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292444) tb!206193))

(declare-fun result!251328 () Bool)

(assert (= result!251328 result!251324))

(assert (=> d!1061258 t!292444))

(declare-fun b_and!261835 () Bool)

(assert (= b_and!261827 (and (=> t!292444 result!251328) b_and!261835)))

(declare-fun tb!206195 () Bool)

(declare-fun t!292446 () Bool)

(assert (=> (and b!3601588 (= (toValue!7894 (transformation!5610 (h!43311 rules!3307))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292446) tb!206195))

(declare-fun result!251330 () Bool)

(assert (= result!251330 result!251324))

(assert (=> d!1061258 t!292446))

(declare-fun b_and!261837 () Bool)

(assert (= b_and!261829 (and (=> t!292446 result!251330) b_and!261837)))

(assert (=> d!1061258 m!4097581))

(declare-fun m!4098449 () Bool)

(assert (=> d!1061258 m!4098449))

(assert (=> d!1061258 m!4097581))

(declare-fun m!4098451 () Bool)

(assert (=> d!1061258 m!4098451))

(assert (=> d!1061258 m!4097621))

(assert (=> d!1061258 m!4097581))

(declare-fun m!4098453 () Bool)

(assert (=> d!1061258 m!4098453))

(assert (=> d!1061258 m!4098287))

(assert (=> b!3601557 d!1061258))

(declare-fun d!1061326 () Bool)

(assert (=> d!1061326 (= (seqFromList!4163 (originalCharacters!6324 (_1!22024 lt!1237596))) (fromListB!1923 (originalCharacters!6324 (_1!22024 lt!1237596))))))

(declare-fun bs!570586 () Bool)

(assert (= bs!570586 d!1061326))

(declare-fun m!4098455 () Bool)

(assert (=> bs!570586 m!4098455))

(assert (=> b!3601557 d!1061326))

(declare-fun b!3602227 () Bool)

(declare-fun e!2229117 () Bool)

(assert (=> b!3602227 (= e!2229117 true)))

(declare-fun d!1061328 () Bool)

(assert (=> d!1061328 e!2229117))

(assert (= d!1061328 b!3602227))

(declare-fun order!20657 () Int)

(declare-fun lambda!123981 () Int)

(declare-fun dynLambda!16362 (Int Int) Int)

(assert (=> b!3602227 (< (dynLambda!16359 order!20651 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) (dynLambda!16362 order!20657 lambda!123981))))

(assert (=> b!3602227 (< (dynLambda!16361 order!20655 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) (dynLambda!16362 order!20657 lambda!123981))))

(assert (=> d!1061328 (= (list!13958 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) lt!1237613))) (list!13958 lt!1237613))))

(declare-fun lt!1237913 () Unit!53935)

(declare-fun ForallOf!644 (Int BalanceConc!22688) Unit!53935)

(assert (=> d!1061328 (= lt!1237913 (ForallOf!644 lambda!123981 lt!1237613))))

(assert (=> d!1061328 (= (lemmaSemiInverse!1367 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237613) lt!1237913)))

(declare-fun b_lambda!106545 () Bool)

(assert (=> (not b_lambda!106545) (not d!1061328)))

(declare-fun t!292448 () Bool)

(declare-fun tb!206197 () Bool)

(assert (=> (and b!3601571 (= (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292448) tb!206197))

(declare-fun tp!1101750 () Bool)

(declare-fun e!2229118 () Bool)

(declare-fun b!3602228 () Bool)

(assert (=> b!3602228 (= e!2229118 (and (inv!51252 (c!623287 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) lt!1237613)))) tp!1101750))))

(declare-fun result!251332 () Bool)

(assert (=> tb!206197 (= result!251332 (and (inv!51253 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) (dynLambda!16358 (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596)))) lt!1237613))) e!2229118))))

(assert (= tb!206197 b!3602228))

(declare-fun m!4098457 () Bool)

(assert (=> b!3602228 m!4098457))

(declare-fun m!4098459 () Bool)

(assert (=> tb!206197 m!4098459))

(assert (=> d!1061328 t!292448))

(declare-fun b_and!261839 () Bool)

(assert (= b_and!261739 (and (=> t!292448 result!251332) b_and!261839)))

(declare-fun t!292450 () Bool)

(declare-fun tb!206199 () Bool)

(assert (=> (and b!3601570 (= (toChars!7753 (transformation!5610 (rule!8346 token!511))) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292450) tb!206199))

(declare-fun result!251334 () Bool)

(assert (= result!251334 result!251332))

(assert (=> d!1061328 t!292450))

(declare-fun b_and!261841 () Bool)

(assert (= b_and!261741 (and (=> t!292450 result!251334) b_and!261841)))

(declare-fun t!292452 () Bool)

(declare-fun tb!206201 () Bool)

(assert (=> (and b!3601567 (= (toChars!7753 (transformation!5610 rule!403)) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292452) tb!206201))

(declare-fun result!251336 () Bool)

(assert (= result!251336 result!251332))

(assert (=> d!1061328 t!292452))

(declare-fun b_and!261843 () Bool)

(assert (= b_and!261743 (and (=> t!292452 result!251336) b_and!261843)))

(declare-fun t!292454 () Bool)

(declare-fun tb!206203 () Bool)

(assert (=> (and b!3601588 (= (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292454) tb!206203))

(declare-fun result!251338 () Bool)

(assert (= result!251338 result!251332))

(assert (=> d!1061328 t!292454))

(declare-fun b_and!261845 () Bool)

(assert (= b_and!261745 (and (=> t!292454 result!251338) b_and!261845)))

(declare-fun b_lambda!106547 () Bool)

(assert (=> (not b_lambda!106547) (not d!1061328)))

(assert (=> d!1061328 t!292388))

(declare-fun b_and!261847 () Bool)

(assert (= b_and!261831 (and (=> t!292388 result!251264) b_and!261847)))

(assert (=> d!1061328 t!292390))

(declare-fun b_and!261849 () Bool)

(assert (= b_and!261833 (and (=> t!292390 result!251266) b_and!261849)))

(assert (=> d!1061328 t!292392))

(declare-fun b_and!261851 () Bool)

(assert (= b_and!261835 (and (=> t!292392 result!251268) b_and!261851)))

(assert (=> d!1061328 t!292394))

(declare-fun b_and!261853 () Bool)

(assert (= b_and!261837 (and (=> t!292394 result!251270) b_and!261853)))

(declare-fun m!4098461 () Bool)

(assert (=> d!1061328 m!4098461))

(assert (=> d!1061328 m!4098287))

(declare-fun m!4098463 () Bool)

(assert (=> d!1061328 m!4098463))

(declare-fun m!4098465 () Bool)

(assert (=> d!1061328 m!4098465))

(assert (=> d!1061328 m!4098287))

(assert (=> d!1061328 m!4098463))

(assert (=> d!1061328 m!4097621))

(assert (=> b!3601557 d!1061328))

(declare-fun d!1061330 () Bool)

(declare-fun lt!1237914 () Bool)

(assert (=> d!1061330 (= lt!1237914 (select (content!5409 lt!1237591) lt!1237598))))

(declare-fun e!2229120 () Bool)

(assert (=> d!1061330 (= lt!1237914 e!2229120)))

(declare-fun res!1455980 () Bool)

(assert (=> d!1061330 (=> (not res!1455980) (not e!2229120))))

(assert (=> d!1061330 (= res!1455980 ((_ is Cons!37890) lt!1237591))))

(assert (=> d!1061330 (= (contains!7284 lt!1237591 lt!1237598) lt!1237914)))

(declare-fun b!3602229 () Bool)

(declare-fun e!2229119 () Bool)

(assert (=> b!3602229 (= e!2229120 e!2229119)))

(declare-fun res!1455979 () Bool)

(assert (=> b!3602229 (=> res!1455979 e!2229119)))

(assert (=> b!3602229 (= res!1455979 (= (h!43310 lt!1237591) lt!1237598))))

(declare-fun b!3602230 () Bool)

(assert (=> b!3602230 (= e!2229119 (contains!7284 (t!292345 lt!1237591) lt!1237598))))

(assert (= (and d!1061330 res!1455980) b!3602229))

(assert (= (and b!3602229 (not res!1455979)) b!3602230))

(assert (=> d!1061330 m!4097727))

(declare-fun m!4098467 () Bool)

(assert (=> d!1061330 m!4098467))

(declare-fun m!4098469 () Bool)

(assert (=> b!3602230 m!4098469))

(assert (=> b!3601580 d!1061330))

(declare-fun d!1061332 () Bool)

(assert (=> d!1061332 (= (head!7554 suffix!1395) (h!43310 suffix!1395))))

(assert (=> b!3601580 d!1061332))

(declare-fun d!1061334 () Bool)

(declare-fun c!623410 () Bool)

(assert (=> d!1061334 (= c!623410 (or ((_ is EmptyExpr!10369) (regex!5610 rule!403)) ((_ is EmptyLang!10369) (regex!5610 rule!403))))))

(declare-fun e!2229122 () List!38014)

(assert (=> d!1061334 (= (usedCharacters!824 (regex!5610 rule!403)) e!2229122)))

(declare-fun b!3602231 () Bool)

(declare-fun e!2229124 () List!38014)

(assert (=> b!3602231 (= e!2229124 (Cons!37890 (c!623286 (regex!5610 rule!403)) Nil!37890))))

(declare-fun c!623407 () Bool)

(declare-fun call!260471 () List!38014)

(declare-fun bm!260463 () Bool)

(declare-fun c!623409 () Bool)

(assert (=> bm!260463 (= call!260471 (usedCharacters!824 (ite c!623407 (reg!10698 (regex!5610 rule!403)) (ite c!623409 (regOne!21251 (regex!5610 rule!403)) (regTwo!21250 (regex!5610 rule!403))))))))

(declare-fun b!3602232 () Bool)

(declare-fun e!2229123 () List!38014)

(declare-fun call!260470 () List!38014)

(assert (=> b!3602232 (= e!2229123 call!260470)))

(declare-fun b!3602233 () Bool)

(assert (=> b!3602233 (= e!2229123 call!260470)))

(declare-fun b!3602234 () Bool)

(assert (=> b!3602234 (= e!2229122 Nil!37890)))

(declare-fun call!260468 () List!38014)

(declare-fun bm!260464 () Bool)

(declare-fun call!260469 () List!38014)

(assert (=> bm!260464 (= call!260470 (++!9426 (ite c!623409 call!260468 call!260469) (ite c!623409 call!260469 call!260468)))))

(declare-fun bm!260465 () Bool)

(assert (=> bm!260465 (= call!260469 (usedCharacters!824 (ite c!623409 (regTwo!21251 (regex!5610 rule!403)) (regOne!21250 (regex!5610 rule!403)))))))

(declare-fun b!3602235 () Bool)

(declare-fun e!2229121 () List!38014)

(assert (=> b!3602235 (= e!2229121 e!2229123)))

(assert (=> b!3602235 (= c!623409 ((_ is Union!10369) (regex!5610 rule!403)))))

(declare-fun b!3602236 () Bool)

(assert (=> b!3602236 (= e!2229122 e!2229124)))

(declare-fun c!623408 () Bool)

(assert (=> b!3602236 (= c!623408 ((_ is ElementMatch!10369) (regex!5610 rule!403)))))

(declare-fun b!3602237 () Bool)

(assert (=> b!3602237 (= e!2229121 call!260471)))

(declare-fun bm!260466 () Bool)

(assert (=> bm!260466 (= call!260468 call!260471)))

(declare-fun b!3602238 () Bool)

(assert (=> b!3602238 (= c!623407 ((_ is Star!10369) (regex!5610 rule!403)))))

(assert (=> b!3602238 (= e!2229124 e!2229121)))

(assert (= (and d!1061334 c!623410) b!3602234))

(assert (= (and d!1061334 (not c!623410)) b!3602236))

(assert (= (and b!3602236 c!623408) b!3602231))

(assert (= (and b!3602236 (not c!623408)) b!3602238))

(assert (= (and b!3602238 c!623407) b!3602237))

(assert (= (and b!3602238 (not c!623407)) b!3602235))

(assert (= (and b!3602235 c!623409) b!3602232))

(assert (= (and b!3602235 (not c!623409)) b!3602233))

(assert (= (or b!3602232 b!3602233) bm!260466))

(assert (= (or b!3602232 b!3602233) bm!260465))

(assert (= (or b!3602232 b!3602233) bm!260464))

(assert (= (or b!3602237 bm!260466) bm!260463))

(declare-fun m!4098471 () Bool)

(assert (=> bm!260463 m!4098471))

(declare-fun m!4098473 () Bool)

(assert (=> bm!260464 m!4098473))

(declare-fun m!4098475 () Bool)

(assert (=> bm!260465 m!4098475))

(assert (=> b!3601580 d!1061334))

(declare-fun d!1061336 () Bool)

(assert (=> d!1061336 (= (inv!51245 (tag!6302 (h!43311 rules!3307))) (= (mod (str.len (value!180344 (tag!6302 (h!43311 rules!3307)))) 2) 0))))

(assert (=> b!3601559 d!1061336))

(declare-fun d!1061338 () Bool)

(declare-fun res!1455981 () Bool)

(declare-fun e!2229125 () Bool)

(assert (=> d!1061338 (=> (not res!1455981) (not e!2229125))))

(assert (=> d!1061338 (= res!1455981 (semiInverseModEq!2383 (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toValue!7894 (transformation!5610 (h!43311 rules!3307)))))))

(assert (=> d!1061338 (= (inv!51248 (transformation!5610 (h!43311 rules!3307))) e!2229125)))

(declare-fun b!3602239 () Bool)

(assert (=> b!3602239 (= e!2229125 (equivClasses!2282 (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toValue!7894 (transformation!5610 (h!43311 rules!3307)))))))

(assert (= (and d!1061338 res!1455981) b!3602239))

(declare-fun m!4098477 () Bool)

(assert (=> d!1061338 m!4098477))

(declare-fun m!4098479 () Bool)

(assert (=> b!3602239 m!4098479))

(assert (=> b!3601559 d!1061338))

(declare-fun d!1061340 () Bool)

(declare-fun res!1455984 () Bool)

(declare-fun e!2229128 () Bool)

(assert (=> d!1061340 (=> (not res!1455984) (not e!2229128))))

(declare-fun rulesValid!2142 (LexerInterface!5199 List!38015) Bool)

(assert (=> d!1061340 (= res!1455984 (rulesValid!2142 thiss!23823 rules!3307))))

(assert (=> d!1061340 (= (rulesInvariant!4596 thiss!23823 rules!3307) e!2229128)))

(declare-fun b!3602242 () Bool)

(declare-datatypes ((List!38019 0))(
  ( (Nil!37895) (Cons!37895 (h!43315 String!42534) (t!292470 List!38019)) )
))
(declare-fun noDuplicateTag!2138 (LexerInterface!5199 List!38015 List!38019) Bool)

(assert (=> b!3602242 (= e!2229128 (noDuplicateTag!2138 thiss!23823 rules!3307 Nil!37895))))

(assert (= (and d!1061340 res!1455984) b!3602242))

(declare-fun m!4098481 () Bool)

(assert (=> d!1061340 m!4098481))

(declare-fun m!4098483 () Bool)

(assert (=> b!3602242 m!4098483))

(assert (=> b!3601558 d!1061340))

(declare-fun d!1061342 () Bool)

(declare-fun res!1455989 () Bool)

(declare-fun e!2229133 () Bool)

(assert (=> d!1061342 (=> res!1455989 e!2229133)))

(assert (=> d!1061342 (= res!1455989 (not ((_ is Cons!37891) rules!3307)))))

(assert (=> d!1061342 (= (sepAndNonSepRulesDisjointChars!1780 rules!3307 rules!3307) e!2229133)))

(declare-fun b!3602247 () Bool)

(declare-fun e!2229134 () Bool)

(assert (=> b!3602247 (= e!2229133 e!2229134)))

(declare-fun res!1455990 () Bool)

(assert (=> b!3602247 (=> (not res!1455990) (not e!2229134))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!809 (Rule!11020 List!38015) Bool)

(assert (=> b!3602247 (= res!1455990 (ruleDisjointCharsFromAllFromOtherType!809 (h!43311 rules!3307) rules!3307))))

(declare-fun b!3602248 () Bool)

(assert (=> b!3602248 (= e!2229134 (sepAndNonSepRulesDisjointChars!1780 rules!3307 (t!292346 rules!3307)))))

(assert (= (and d!1061342 (not res!1455989)) b!3602247))

(assert (= (and b!3602247 res!1455990) b!3602248))

(declare-fun m!4098485 () Bool)

(assert (=> b!3602247 m!4098485))

(declare-fun m!4098487 () Bool)

(assert (=> b!3602248 m!4098487))

(assert (=> b!3601560 d!1061342))

(declare-fun d!1061344 () Bool)

(assert (=> d!1061344 (= (isDefined!6082 lt!1237605) (not (isEmpty!22357 lt!1237605)))))

(declare-fun bs!570587 () Bool)

(assert (= bs!570587 d!1061344))

(declare-fun m!4098489 () Bool)

(assert (=> bs!570587 m!4098489))

(assert (=> b!3601581 d!1061344))

(declare-fun b!3602249 () Bool)

(declare-fun e!2229136 () Option!7850)

(declare-fun lt!1237916 () Option!7850)

(declare-fun lt!1237917 () Option!7850)

(assert (=> b!3602249 (= e!2229136 (ite (and ((_ is None!7849) lt!1237916) ((_ is None!7849) lt!1237917)) None!7849 (ite ((_ is None!7849) lt!1237917) lt!1237916 (ite ((_ is None!7849) lt!1237916) lt!1237917 (ite (>= (size!28874 (_1!22024 (v!37563 lt!1237916))) (size!28874 (_1!22024 (v!37563 lt!1237917)))) lt!1237916 lt!1237917)))))))

(declare-fun call!260472 () Option!7850)

(assert (=> b!3602249 (= lt!1237916 call!260472)))

(assert (=> b!3602249 (= lt!1237917 (maxPrefix!2733 thiss!23823 (t!292346 rules!3307) lt!1237601))))

(declare-fun b!3602250 () Bool)

(declare-fun e!2229135 () Bool)

(declare-fun e!2229137 () Bool)

(assert (=> b!3602250 (= e!2229135 e!2229137)))

(declare-fun res!1455991 () Bool)

(assert (=> b!3602250 (=> (not res!1455991) (not e!2229137))))

(declare-fun lt!1237919 () Option!7850)

(assert (=> b!3602250 (= res!1455991 (isDefined!6082 lt!1237919))))

(declare-fun b!3602251 () Bool)

(assert (=> b!3602251 (= e!2229137 (contains!7283 rules!3307 (rule!8346 (_1!22024 (get!12265 lt!1237919)))))))

(declare-fun b!3602252 () Bool)

(declare-fun res!1455997 () Bool)

(assert (=> b!3602252 (=> (not res!1455997) (not e!2229137))))

(assert (=> b!3602252 (= res!1455997 (matchR!4938 (regex!5610 (rule!8346 (_1!22024 (get!12265 lt!1237919)))) (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237919))))))))

(declare-fun b!3602253 () Bool)

(declare-fun res!1455992 () Bool)

(assert (=> b!3602253 (=> (not res!1455992) (not e!2229137))))

(assert (=> b!3602253 (= res!1455992 (= (++!9426 (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237919)))) (_2!22024 (get!12265 lt!1237919))) lt!1237601))))

(declare-fun b!3602254 () Bool)

(declare-fun res!1455994 () Bool)

(assert (=> b!3602254 (=> (not res!1455994) (not e!2229137))))

(assert (=> b!3602254 (= res!1455994 (= (list!13958 (charsOf!3624 (_1!22024 (get!12265 lt!1237919)))) (originalCharacters!6324 (_1!22024 (get!12265 lt!1237919)))))))

(declare-fun d!1061346 () Bool)

(assert (=> d!1061346 e!2229135))

(declare-fun res!1455996 () Bool)

(assert (=> d!1061346 (=> res!1455996 e!2229135)))

(assert (=> d!1061346 (= res!1455996 (isEmpty!22357 lt!1237919))))

(assert (=> d!1061346 (= lt!1237919 e!2229136)))

(declare-fun c!623411 () Bool)

(assert (=> d!1061346 (= c!623411 (and ((_ is Cons!37891) rules!3307) ((_ is Nil!37891) (t!292346 rules!3307))))))

(declare-fun lt!1237915 () Unit!53935)

(declare-fun lt!1237918 () Unit!53935)

(assert (=> d!1061346 (= lt!1237915 lt!1237918)))

(assert (=> d!1061346 (isPrefix!2973 lt!1237601 lt!1237601)))

(assert (=> d!1061346 (= lt!1237918 (lemmaIsPrefixRefl!1902 lt!1237601 lt!1237601))))

(assert (=> d!1061346 (rulesValidInductive!1967 thiss!23823 rules!3307)))

(assert (=> d!1061346 (= (maxPrefix!2733 thiss!23823 rules!3307 lt!1237601) lt!1237919)))

(declare-fun b!3602255 () Bool)

(declare-fun res!1455993 () Bool)

(assert (=> b!3602255 (=> (not res!1455993) (not e!2229137))))

(assert (=> b!3602255 (= res!1455993 (< (size!28876 (_2!22024 (get!12265 lt!1237919))) (size!28876 lt!1237601)))))

(declare-fun bm!260467 () Bool)

(assert (=> bm!260467 (= call!260472 (maxPrefixOneRule!1877 thiss!23823 (h!43311 rules!3307) lt!1237601))))

(declare-fun b!3602256 () Bool)

(assert (=> b!3602256 (= e!2229136 call!260472)))

(declare-fun b!3602257 () Bool)

(declare-fun res!1455995 () Bool)

(assert (=> b!3602257 (=> (not res!1455995) (not e!2229137))))

(assert (=> b!3602257 (= res!1455995 (= (value!180345 (_1!22024 (get!12265 lt!1237919))) (apply!9116 (transformation!5610 (rule!8346 (_1!22024 (get!12265 lt!1237919)))) (seqFromList!4163 (originalCharacters!6324 (_1!22024 (get!12265 lt!1237919)))))))))

(assert (= (and d!1061346 c!623411) b!3602256))

(assert (= (and d!1061346 (not c!623411)) b!3602249))

(assert (= (or b!3602256 b!3602249) bm!260467))

(assert (= (and d!1061346 (not res!1455996)) b!3602250))

(assert (= (and b!3602250 res!1455991) b!3602254))

(assert (= (and b!3602254 res!1455994) b!3602255))

(assert (= (and b!3602255 res!1455993) b!3602253))

(assert (= (and b!3602253 res!1455992) b!3602257))

(assert (= (and b!3602257 res!1455995) b!3602252))

(assert (= (and b!3602252 res!1455997) b!3602251))

(declare-fun m!4098491 () Bool)

(assert (=> b!3602252 m!4098491))

(declare-fun m!4098493 () Bool)

(assert (=> b!3602252 m!4098493))

(assert (=> b!3602252 m!4098493))

(declare-fun m!4098495 () Bool)

(assert (=> b!3602252 m!4098495))

(assert (=> b!3602252 m!4098495))

(declare-fun m!4098497 () Bool)

(assert (=> b!3602252 m!4098497))

(assert (=> b!3602254 m!4098491))

(assert (=> b!3602254 m!4098493))

(assert (=> b!3602254 m!4098493))

(assert (=> b!3602254 m!4098495))

(declare-fun m!4098499 () Bool)

(assert (=> b!3602249 m!4098499))

(declare-fun m!4098501 () Bool)

(assert (=> b!3602250 m!4098501))

(declare-fun m!4098503 () Bool)

(assert (=> d!1061346 m!4098503))

(declare-fun m!4098505 () Bool)

(assert (=> d!1061346 m!4098505))

(declare-fun m!4098507 () Bool)

(assert (=> d!1061346 m!4098507))

(assert (=> d!1061346 m!4098107))

(assert (=> b!3602257 m!4098491))

(declare-fun m!4098509 () Bool)

(assert (=> b!3602257 m!4098509))

(assert (=> b!3602257 m!4098509))

(declare-fun m!4098511 () Bool)

(assert (=> b!3602257 m!4098511))

(declare-fun m!4098513 () Bool)

(assert (=> bm!260467 m!4098513))

(assert (=> b!3602253 m!4098491))

(assert (=> b!3602253 m!4098493))

(assert (=> b!3602253 m!4098493))

(assert (=> b!3602253 m!4098495))

(assert (=> b!3602253 m!4098495))

(declare-fun m!4098515 () Bool)

(assert (=> b!3602253 m!4098515))

(assert (=> b!3602251 m!4098491))

(declare-fun m!4098517 () Bool)

(assert (=> b!3602251 m!4098517))

(assert (=> b!3602255 m!4098491))

(declare-fun m!4098519 () Bool)

(assert (=> b!3602255 m!4098519))

(assert (=> b!3602255 m!4097877))

(assert (=> b!3601581 d!1061346))

(declare-fun d!1061348 () Bool)

(assert (=> d!1061348 (= (list!13958 (charsOf!3624 token!511)) (list!13962 (c!623287 (charsOf!3624 token!511))))))

(declare-fun bs!570588 () Bool)

(assert (= bs!570588 d!1061348))

(declare-fun m!4098521 () Bool)

(assert (=> bs!570588 m!4098521))

(assert (=> b!3601581 d!1061348))

(declare-fun d!1061350 () Bool)

(declare-fun lt!1237920 () BalanceConc!22688)

(assert (=> d!1061350 (= (list!13958 lt!1237920) (originalCharacters!6324 token!511))))

(assert (=> d!1061350 (= lt!1237920 (dynLambda!16352 (toChars!7753 (transformation!5610 (rule!8346 token!511))) (value!180345 token!511)))))

(assert (=> d!1061350 (= (charsOf!3624 token!511) lt!1237920)))

(declare-fun b_lambda!106549 () Bool)

(assert (=> (not b_lambda!106549) (not d!1061350)))

(assert (=> d!1061350 t!292372))

(declare-fun b_and!261855 () Bool)

(assert (= b_and!261839 (and (=> t!292372 result!251246) b_and!261855)))

(assert (=> d!1061350 t!292374))

(declare-fun b_and!261857 () Bool)

(assert (= b_and!261841 (and (=> t!292374 result!251248) b_and!261857)))

(assert (=> d!1061350 t!292376))

(declare-fun b_and!261859 () Bool)

(assert (= b_and!261843 (and (=> t!292376 result!251250) b_and!261859)))

(assert (=> d!1061350 t!292378))

(declare-fun b_and!261861 () Bool)

(assert (= b_and!261845 (and (=> t!292378 result!251252) b_and!261861)))

(declare-fun m!4098523 () Bool)

(assert (=> d!1061350 m!4098523))

(assert (=> d!1061350 m!4098181))

(assert (=> b!3601581 d!1061350))

(declare-fun d!1061352 () Bool)

(declare-fun e!2229138 () Bool)

(assert (=> d!1061352 e!2229138))

(declare-fun c!623413 () Bool)

(assert (=> d!1061352 (= c!623413 ((_ is EmptyExpr!10369) (regex!5610 rule!403)))))

(declare-fun lt!1237921 () Bool)

(declare-fun e!2229143 () Bool)

(assert (=> d!1061352 (= lt!1237921 e!2229143)))

(declare-fun c!623412 () Bool)

(assert (=> d!1061352 (= c!623412 (isEmpty!22354 lt!1237601))))

(assert (=> d!1061352 (validRegex!4745 (regex!5610 rule!403))))

(assert (=> d!1061352 (= (matchR!4938 (regex!5610 rule!403) lt!1237601) lt!1237921)))

(declare-fun b!3602258 () Bool)

(declare-fun e!2229142 () Bool)

(declare-fun e!2229140 () Bool)

(assert (=> b!3602258 (= e!2229142 e!2229140)))

(declare-fun res!1456003 () Bool)

(assert (=> b!3602258 (=> res!1456003 e!2229140)))

(declare-fun call!260473 () Bool)

(assert (=> b!3602258 (= res!1456003 call!260473)))

(declare-fun b!3602259 () Bool)

(declare-fun e!2229141 () Bool)

(assert (=> b!3602259 (= e!2229141 (not lt!1237921))))

(declare-fun b!3602260 () Bool)

(assert (=> b!3602260 (= e!2229138 e!2229141)))

(declare-fun c!623414 () Bool)

(assert (=> b!3602260 (= c!623414 ((_ is EmptyLang!10369) (regex!5610 rule!403)))))

(declare-fun b!3602261 () Bool)

(declare-fun e!2229139 () Bool)

(assert (=> b!3602261 (= e!2229139 e!2229142)))

(declare-fun res!1456005 () Bool)

(assert (=> b!3602261 (=> (not res!1456005) (not e!2229142))))

(assert (=> b!3602261 (= res!1456005 (not lt!1237921))))

(declare-fun b!3602262 () Bool)

(assert (=> b!3602262 (= e!2229138 (= lt!1237921 call!260473))))

(declare-fun b!3602263 () Bool)

(assert (=> b!3602263 (= e!2229143 (nullable!3585 (regex!5610 rule!403)))))

(declare-fun b!3602264 () Bool)

(assert (=> b!3602264 (= e!2229140 (not (= (head!7554 lt!1237601) (c!623286 (regex!5610 rule!403)))))))

(declare-fun b!3602265 () Bool)

(declare-fun res!1456000 () Bool)

(declare-fun e!2229144 () Bool)

(assert (=> b!3602265 (=> (not res!1456000) (not e!2229144))))

(assert (=> b!3602265 (= res!1456000 (not call!260473))))

(declare-fun b!3602266 () Bool)

(declare-fun res!1456002 () Bool)

(assert (=> b!3602266 (=> res!1456002 e!2229140)))

(assert (=> b!3602266 (= res!1456002 (not (isEmpty!22354 (tail!5583 lt!1237601))))))

(declare-fun b!3602267 () Bool)

(declare-fun res!1455998 () Bool)

(assert (=> b!3602267 (=> res!1455998 e!2229139)))

(assert (=> b!3602267 (= res!1455998 (not ((_ is ElementMatch!10369) (regex!5610 rule!403))))))

(assert (=> b!3602267 (= e!2229141 e!2229139)))

(declare-fun b!3602268 () Bool)

(declare-fun res!1456004 () Bool)

(assert (=> b!3602268 (=> (not res!1456004) (not e!2229144))))

(assert (=> b!3602268 (= res!1456004 (isEmpty!22354 (tail!5583 lt!1237601)))))

(declare-fun b!3602269 () Bool)

(declare-fun res!1455999 () Bool)

(assert (=> b!3602269 (=> res!1455999 e!2229139)))

(assert (=> b!3602269 (= res!1455999 e!2229144)))

(declare-fun res!1456001 () Bool)

(assert (=> b!3602269 (=> (not res!1456001) (not e!2229144))))

(assert (=> b!3602269 (= res!1456001 lt!1237921)))

(declare-fun b!3602270 () Bool)

(assert (=> b!3602270 (= e!2229143 (matchR!4938 (derivativeStep!3134 (regex!5610 rule!403) (head!7554 lt!1237601)) (tail!5583 lt!1237601)))))

(declare-fun b!3602271 () Bool)

(assert (=> b!3602271 (= e!2229144 (= (head!7554 lt!1237601) (c!623286 (regex!5610 rule!403))))))

(declare-fun bm!260468 () Bool)

(assert (=> bm!260468 (= call!260473 (isEmpty!22354 lt!1237601))))

(assert (= (and d!1061352 c!623412) b!3602263))

(assert (= (and d!1061352 (not c!623412)) b!3602270))

(assert (= (and d!1061352 c!623413) b!3602262))

(assert (= (and d!1061352 (not c!623413)) b!3602260))

(assert (= (and b!3602260 c!623414) b!3602259))

(assert (= (and b!3602260 (not c!623414)) b!3602267))

(assert (= (and b!3602267 (not res!1455998)) b!3602269))

(assert (= (and b!3602269 res!1456001) b!3602265))

(assert (= (and b!3602265 res!1456000) b!3602268))

(assert (= (and b!3602268 res!1456004) b!3602271))

(assert (= (and b!3602269 (not res!1455999)) b!3602261))

(assert (= (and b!3602261 res!1456005) b!3602258))

(assert (= (and b!3602258 (not res!1456003)) b!3602266))

(assert (= (and b!3602266 (not res!1456002)) b!3602264))

(assert (= (or b!3602262 b!3602258 b!3602265) bm!260468))

(declare-fun m!4098525 () Bool)

(assert (=> b!3602263 m!4098525))

(assert (=> b!3602264 m!4097879))

(declare-fun m!4098527 () Bool)

(assert (=> d!1061352 m!4098527))

(assert (=> d!1061352 m!4098283))

(assert (=> b!3602271 m!4097879))

(assert (=> b!3602270 m!4097879))

(assert (=> b!3602270 m!4097879))

(declare-fun m!4098529 () Bool)

(assert (=> b!3602270 m!4098529))

(assert (=> b!3602270 m!4097883))

(assert (=> b!3602270 m!4098529))

(assert (=> b!3602270 m!4097883))

(declare-fun m!4098531 () Bool)

(assert (=> b!3602270 m!4098531))

(assert (=> bm!260468 m!4098527))

(assert (=> b!3602268 m!4097883))

(assert (=> b!3602268 m!4097883))

(declare-fun m!4098533 () Bool)

(assert (=> b!3602268 m!4098533))

(assert (=> b!3602266 m!4097883))

(assert (=> b!3602266 m!4097883))

(assert (=> b!3602266 m!4098533))

(assert (=> b!3601583 d!1061352))

(declare-fun d!1061354 () Bool)

(declare-fun res!1456010 () Bool)

(declare-fun e!2229147 () Bool)

(assert (=> d!1061354 (=> (not res!1456010) (not e!2229147))))

(assert (=> d!1061354 (= res!1456010 (validRegex!4745 (regex!5610 rule!403)))))

(assert (=> d!1061354 (= (ruleValid!1875 thiss!23823 rule!403) e!2229147)))

(declare-fun b!3602276 () Bool)

(declare-fun res!1456011 () Bool)

(assert (=> b!3602276 (=> (not res!1456011) (not e!2229147))))

(assert (=> b!3602276 (= res!1456011 (not (nullable!3585 (regex!5610 rule!403))))))

(declare-fun b!3602277 () Bool)

(assert (=> b!3602277 (= e!2229147 (not (= (tag!6302 rule!403) (String!42535 ""))))))

(assert (= (and d!1061354 res!1456010) b!3602276))

(assert (= (and b!3602276 res!1456011) b!3602277))

(assert (=> d!1061354 m!4098283))

(assert (=> b!3602276 m!4098525))

(assert (=> b!3601583 d!1061354))

(declare-fun d!1061356 () Bool)

(assert (=> d!1061356 (ruleValid!1875 thiss!23823 rule!403)))

(declare-fun lt!1237924 () Unit!53935)

(declare-fun choose!21008 (LexerInterface!5199 Rule!11020 List!38015) Unit!53935)

(assert (=> d!1061356 (= lt!1237924 (choose!21008 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1061356 (contains!7283 rules!3307 rule!403)))

(assert (=> d!1061356 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1030 thiss!23823 rule!403 rules!3307) lt!1237924)))

(declare-fun bs!570589 () Bool)

(assert (= bs!570589 d!1061356))

(assert (=> bs!570589 m!4097667))

(declare-fun m!4098535 () Bool)

(assert (=> bs!570589 m!4098535))

(assert (=> bs!570589 m!4097695))

(assert (=> b!3601583 d!1061356))

(declare-fun d!1061358 () Bool)

(declare-fun e!2229148 () Bool)

(assert (=> d!1061358 e!2229148))

(declare-fun c!623416 () Bool)

(assert (=> d!1061358 (= c!623416 ((_ is EmptyExpr!10369) (regex!5610 (rule!8346 (_1!22024 lt!1237596)))))))

(declare-fun lt!1237925 () Bool)

(declare-fun e!2229153 () Bool)

(assert (=> d!1061358 (= lt!1237925 e!2229153)))

(declare-fun c!623415 () Bool)

(assert (=> d!1061358 (= c!623415 (isEmpty!22354 lt!1237586))))

(assert (=> d!1061358 (validRegex!4745 (regex!5610 (rule!8346 (_1!22024 lt!1237596))))))

(assert (=> d!1061358 (= (matchR!4938 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) lt!1237586) lt!1237925)))

(declare-fun b!3602278 () Bool)

(declare-fun e!2229152 () Bool)

(declare-fun e!2229150 () Bool)

(assert (=> b!3602278 (= e!2229152 e!2229150)))

(declare-fun res!1456017 () Bool)

(assert (=> b!3602278 (=> res!1456017 e!2229150)))

(declare-fun call!260474 () Bool)

(assert (=> b!3602278 (= res!1456017 call!260474)))

(declare-fun b!3602279 () Bool)

(declare-fun e!2229151 () Bool)

(assert (=> b!3602279 (= e!2229151 (not lt!1237925))))

(declare-fun b!3602280 () Bool)

(assert (=> b!3602280 (= e!2229148 e!2229151)))

(declare-fun c!623417 () Bool)

(assert (=> b!3602280 (= c!623417 ((_ is EmptyLang!10369) (regex!5610 (rule!8346 (_1!22024 lt!1237596)))))))

(declare-fun b!3602281 () Bool)

(declare-fun e!2229149 () Bool)

(assert (=> b!3602281 (= e!2229149 e!2229152)))

(declare-fun res!1456019 () Bool)

(assert (=> b!3602281 (=> (not res!1456019) (not e!2229152))))

(assert (=> b!3602281 (= res!1456019 (not lt!1237925))))

(declare-fun b!3602282 () Bool)

(assert (=> b!3602282 (= e!2229148 (= lt!1237925 call!260474))))

(declare-fun b!3602283 () Bool)

(assert (=> b!3602283 (= e!2229153 (nullable!3585 (regex!5610 (rule!8346 (_1!22024 lt!1237596)))))))

(declare-fun b!3602284 () Bool)

(assert (=> b!3602284 (= e!2229150 (not (= (head!7554 lt!1237586) (c!623286 (regex!5610 (rule!8346 (_1!22024 lt!1237596)))))))))

(declare-fun b!3602285 () Bool)

(declare-fun res!1456014 () Bool)

(declare-fun e!2229154 () Bool)

(assert (=> b!3602285 (=> (not res!1456014) (not e!2229154))))

(assert (=> b!3602285 (= res!1456014 (not call!260474))))

(declare-fun b!3602286 () Bool)

(declare-fun res!1456016 () Bool)

(assert (=> b!3602286 (=> res!1456016 e!2229150)))

(assert (=> b!3602286 (= res!1456016 (not (isEmpty!22354 (tail!5583 lt!1237586))))))

(declare-fun b!3602287 () Bool)

(declare-fun res!1456012 () Bool)

(assert (=> b!3602287 (=> res!1456012 e!2229149)))

(assert (=> b!3602287 (= res!1456012 (not ((_ is ElementMatch!10369) (regex!5610 (rule!8346 (_1!22024 lt!1237596))))))))

(assert (=> b!3602287 (= e!2229151 e!2229149)))

(declare-fun b!3602288 () Bool)

(declare-fun res!1456018 () Bool)

(assert (=> b!3602288 (=> (not res!1456018) (not e!2229154))))

(assert (=> b!3602288 (= res!1456018 (isEmpty!22354 (tail!5583 lt!1237586)))))

(declare-fun b!3602289 () Bool)

(declare-fun res!1456013 () Bool)

(assert (=> b!3602289 (=> res!1456013 e!2229149)))

(assert (=> b!3602289 (= res!1456013 e!2229154)))

(declare-fun res!1456015 () Bool)

(assert (=> b!3602289 (=> (not res!1456015) (not e!2229154))))

(assert (=> b!3602289 (= res!1456015 lt!1237925)))

(declare-fun b!3602290 () Bool)

(assert (=> b!3602290 (= e!2229153 (matchR!4938 (derivativeStep!3134 (regex!5610 (rule!8346 (_1!22024 lt!1237596))) (head!7554 lt!1237586)) (tail!5583 lt!1237586)))))

(declare-fun b!3602291 () Bool)

(assert (=> b!3602291 (= e!2229154 (= (head!7554 lt!1237586) (c!623286 (regex!5610 (rule!8346 (_1!22024 lt!1237596))))))))

(declare-fun bm!260469 () Bool)

(assert (=> bm!260469 (= call!260474 (isEmpty!22354 lt!1237586))))

(assert (= (and d!1061358 c!623415) b!3602283))

(assert (= (and d!1061358 (not c!623415)) b!3602290))

(assert (= (and d!1061358 c!623416) b!3602282))

(assert (= (and d!1061358 (not c!623416)) b!3602280))

(assert (= (and b!3602280 c!623417) b!3602279))

(assert (= (and b!3602280 (not c!623417)) b!3602287))

(assert (= (and b!3602287 (not res!1456012)) b!3602289))

(assert (= (and b!3602289 res!1456015) b!3602285))

(assert (= (and b!3602285 res!1456014) b!3602288))

(assert (= (and b!3602288 res!1456018) b!3602291))

(assert (= (and b!3602289 (not res!1456013)) b!3602281))

(assert (= (and b!3602281 res!1456019) b!3602278))

(assert (= (and b!3602278 (not res!1456017)) b!3602286))

(assert (= (and b!3602286 (not res!1456016)) b!3602284))

(assert (= (or b!3602282 b!3602278 b!3602285) bm!260469))

(declare-fun m!4098537 () Bool)

(assert (=> b!3602283 m!4098537))

(assert (=> b!3602284 m!4097589))

(declare-fun m!4098539 () Bool)

(assert (=> d!1061358 m!4098539))

(declare-fun m!4098541 () Bool)

(assert (=> d!1061358 m!4098541))

(assert (=> b!3602291 m!4097589))

(assert (=> b!3602290 m!4097589))

(assert (=> b!3602290 m!4097589))

(declare-fun m!4098543 () Bool)

(assert (=> b!3602290 m!4098543))

(assert (=> b!3602290 m!4098125))

(assert (=> b!3602290 m!4098543))

(assert (=> b!3602290 m!4098125))

(declare-fun m!4098545 () Bool)

(assert (=> b!3602290 m!4098545))

(assert (=> bm!260469 m!4098539))

(assert (=> b!3602288 m!4098125))

(assert (=> b!3602288 m!4098125))

(declare-fun m!4098547 () Bool)

(assert (=> b!3602288 m!4098547))

(assert (=> b!3602286 m!4098125))

(assert (=> b!3602286 m!4098125))

(assert (=> b!3602286 m!4098547))

(assert (=> b!3601582 d!1061358))

(declare-fun d!1061360 () Bool)

(declare-fun lt!1237926 () Bool)

(assert (=> d!1061360 (= lt!1237926 (select (content!5407 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2229156 () Bool)

(assert (=> d!1061360 (= lt!1237926 e!2229156)))

(declare-fun res!1456020 () Bool)

(assert (=> d!1061360 (=> (not res!1456020) (not e!2229156))))

(assert (=> d!1061360 (= res!1456020 ((_ is Cons!37891) rules!3307))))

(assert (=> d!1061360 (= (contains!7283 rules!3307 anOtherTypeRule!33) lt!1237926)))

(declare-fun b!3602292 () Bool)

(declare-fun e!2229155 () Bool)

(assert (=> b!3602292 (= e!2229156 e!2229155)))

(declare-fun res!1456021 () Bool)

(assert (=> b!3602292 (=> res!1456021 e!2229155)))

(assert (=> b!3602292 (= res!1456021 (= (h!43311 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3602293 () Bool)

(assert (=> b!3602293 (= e!2229155 (contains!7283 (t!292346 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1061360 res!1456020) b!3602292))

(assert (= (and b!3602292 (not res!1456021)) b!3602293))

(assert (=> d!1061360 m!4097713))

(declare-fun m!4098549 () Bool)

(assert (=> d!1061360 m!4098549))

(declare-fun m!4098551 () Bool)

(assert (=> b!3602293 m!4098551))

(assert (=> b!3601561 d!1061360))

(declare-fun b!3602298 () Bool)

(declare-fun e!2229159 () Bool)

(declare-fun tp!1101753 () Bool)

(assert (=> b!3602298 (= e!2229159 (and tp_is_empty!17821 tp!1101753))))

(assert (=> b!3601584 (= tp!1101692 e!2229159)))

(assert (= (and b!3601584 ((_ is Cons!37890) (originalCharacters!6324 token!511))) b!3602298))

(declare-fun b!3602299 () Bool)

(declare-fun e!2229160 () Bool)

(declare-fun tp!1101754 () Bool)

(assert (=> b!3602299 (= e!2229160 (and tp_is_empty!17821 tp!1101754))))

(assert (=> b!3601579 (= tp!1101685 e!2229160)))

(assert (= (and b!3601579 ((_ is Cons!37890) (t!292345 suffix!1395))) b!3602299))

(declare-fun b!3602313 () Bool)

(declare-fun e!2229163 () Bool)

(declare-fun tp!1101766 () Bool)

(declare-fun tp!1101767 () Bool)

(assert (=> b!3602313 (= e!2229163 (and tp!1101766 tp!1101767))))

(assert (=> b!3601573 (= tp!1101680 e!2229163)))

(declare-fun b!3602311 () Bool)

(declare-fun tp!1101765 () Bool)

(declare-fun tp!1101768 () Bool)

(assert (=> b!3602311 (= e!2229163 (and tp!1101765 tp!1101768))))

(declare-fun b!3602312 () Bool)

(declare-fun tp!1101769 () Bool)

(assert (=> b!3602312 (= e!2229163 tp!1101769)))

(declare-fun b!3602310 () Bool)

(assert (=> b!3602310 (= e!2229163 tp_is_empty!17821)))

(assert (= (and b!3601573 ((_ is ElementMatch!10369) (regex!5610 anOtherTypeRule!33))) b!3602310))

(assert (= (and b!3601573 ((_ is Concat!16210) (regex!5610 anOtherTypeRule!33))) b!3602311))

(assert (= (and b!3601573 ((_ is Star!10369) (regex!5610 anOtherTypeRule!33))) b!3602312))

(assert (= (and b!3601573 ((_ is Union!10369) (regex!5610 anOtherTypeRule!33))) b!3602313))

(declare-fun b!3602317 () Bool)

(declare-fun e!2229164 () Bool)

(declare-fun tp!1101771 () Bool)

(declare-fun tp!1101772 () Bool)

(assert (=> b!3602317 (= e!2229164 (and tp!1101771 tp!1101772))))

(assert (=> b!3601564 (= tp!1101689 e!2229164)))

(declare-fun b!3602315 () Bool)

(declare-fun tp!1101770 () Bool)

(declare-fun tp!1101773 () Bool)

(assert (=> b!3602315 (= e!2229164 (and tp!1101770 tp!1101773))))

(declare-fun b!3602316 () Bool)

(declare-fun tp!1101774 () Bool)

(assert (=> b!3602316 (= e!2229164 tp!1101774)))

(declare-fun b!3602314 () Bool)

(assert (=> b!3602314 (= e!2229164 tp_is_empty!17821)))

(assert (= (and b!3601564 ((_ is ElementMatch!10369) (regex!5610 (rule!8346 token!511)))) b!3602314))

(assert (= (and b!3601564 ((_ is Concat!16210) (regex!5610 (rule!8346 token!511)))) b!3602315))

(assert (= (and b!3601564 ((_ is Star!10369) (regex!5610 (rule!8346 token!511)))) b!3602316))

(assert (= (and b!3601564 ((_ is Union!10369) (regex!5610 (rule!8346 token!511)))) b!3602317))

(declare-fun b!3602321 () Bool)

(declare-fun e!2229165 () Bool)

(declare-fun tp!1101776 () Bool)

(declare-fun tp!1101777 () Bool)

(assert (=> b!3602321 (= e!2229165 (and tp!1101776 tp!1101777))))

(assert (=> b!3601559 (= tp!1101694 e!2229165)))

(declare-fun b!3602319 () Bool)

(declare-fun tp!1101775 () Bool)

(declare-fun tp!1101778 () Bool)

(assert (=> b!3602319 (= e!2229165 (and tp!1101775 tp!1101778))))

(declare-fun b!3602320 () Bool)

(declare-fun tp!1101779 () Bool)

(assert (=> b!3602320 (= e!2229165 tp!1101779)))

(declare-fun b!3602318 () Bool)

(assert (=> b!3602318 (= e!2229165 tp_is_empty!17821)))

(assert (= (and b!3601559 ((_ is ElementMatch!10369) (regex!5610 (h!43311 rules!3307)))) b!3602318))

(assert (= (and b!3601559 ((_ is Concat!16210) (regex!5610 (h!43311 rules!3307)))) b!3602319))

(assert (= (and b!3601559 ((_ is Star!10369) (regex!5610 (h!43311 rules!3307)))) b!3602320))

(assert (= (and b!3601559 ((_ is Union!10369) (regex!5610 (h!43311 rules!3307)))) b!3602321))

(declare-fun b!3602325 () Bool)

(declare-fun e!2229166 () Bool)

(declare-fun tp!1101781 () Bool)

(declare-fun tp!1101782 () Bool)

(assert (=> b!3602325 (= e!2229166 (and tp!1101781 tp!1101782))))

(assert (=> b!3601585 (= tp!1101681 e!2229166)))

(declare-fun b!3602323 () Bool)

(declare-fun tp!1101780 () Bool)

(declare-fun tp!1101783 () Bool)

(assert (=> b!3602323 (= e!2229166 (and tp!1101780 tp!1101783))))

(declare-fun b!3602324 () Bool)

(declare-fun tp!1101784 () Bool)

(assert (=> b!3602324 (= e!2229166 tp!1101784)))

(declare-fun b!3602322 () Bool)

(assert (=> b!3602322 (= e!2229166 tp_is_empty!17821)))

(assert (= (and b!3601585 ((_ is ElementMatch!10369) (regex!5610 rule!403))) b!3602322))

(assert (= (and b!3601585 ((_ is Concat!16210) (regex!5610 rule!403))) b!3602323))

(assert (= (and b!3601585 ((_ is Star!10369) (regex!5610 rule!403))) b!3602324))

(assert (= (and b!3601585 ((_ is Union!10369) (regex!5610 rule!403))) b!3602325))

(declare-fun b!3602336 () Bool)

(declare-fun b_free!93253 () Bool)

(declare-fun b_next!93957 () Bool)

(assert (=> b!3602336 (= b_free!93253 (not b_next!93957))))

(declare-fun tb!206205 () Bool)

(declare-fun t!292457 () Bool)

(assert (=> (and b!3602336 (= (toValue!7894 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292457) tb!206205))

(declare-fun result!251346 () Bool)

(assert (= result!251346 result!251324))

(assert (=> d!1061258 t!292457))

(declare-fun tb!206207 () Bool)

(declare-fun t!292459 () Bool)

(assert (=> (and b!3602336 (= (toValue!7894 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292459) tb!206207))

(declare-fun result!251348 () Bool)

(assert (= result!251348 result!251264))

(assert (=> d!1061328 t!292459))

(declare-fun tb!206209 () Bool)

(declare-fun t!292461 () Bool)

(assert (=> (and b!3602336 (= (toValue!7894 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toValue!7894 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292461) tb!206209))

(declare-fun result!251350 () Bool)

(assert (= result!251350 result!251254))

(assert (=> d!1061234 t!292461))

(assert (=> d!1061258 t!292459))

(assert (=> d!1061252 t!292459))

(declare-fun tp!1101795 () Bool)

(declare-fun b_and!261863 () Bool)

(assert (=> b!3602336 (= tp!1101795 (and (=> t!292459 result!251348) (=> t!292457 result!251346) (=> t!292461 result!251350) b_and!261863))))

(declare-fun b_free!93255 () Bool)

(declare-fun b_next!93959 () Bool)

(assert (=> b!3602336 (= b_free!93255 (not b_next!93959))))

(declare-fun tb!206211 () Bool)

(declare-fun t!292463 () Bool)

(assert (=> (and b!3602336 (= (toChars!7753 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292463) tb!206211))

(declare-fun result!251352 () Bool)

(assert (= result!251352 result!251236))

(assert (=> d!1061212 t!292463))

(declare-fun t!292465 () Bool)

(declare-fun tb!206213 () Bool)

(assert (=> (and b!3602336 (= (toChars!7753 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toChars!7753 (transformation!5610 (rule!8346 token!511)))) t!292465) tb!206213))

(declare-fun result!251354 () Bool)

(assert (= result!251354 result!251246))

(assert (=> b!3601957 t!292465))

(declare-fun tb!206215 () Bool)

(declare-fun t!292467 () Bool)

(assert (=> (and b!3602336 (= (toChars!7753 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toChars!7753 (transformation!5610 (rule!8346 (_1!22024 lt!1237596))))) t!292467) tb!206215))

(declare-fun result!251356 () Bool)

(assert (= result!251356 result!251332))

(assert (=> d!1061328 t!292467))

(assert (=> d!1061350 t!292465))

(declare-fun b_and!261865 () Bool)

(declare-fun tp!1101796 () Bool)

(assert (=> b!3602336 (= tp!1101796 (and (=> t!292463 result!251352) (=> t!292465 result!251354) (=> t!292467 result!251356) b_and!261865))))

(declare-fun e!2229178 () Bool)

(assert (=> b!3602336 (= e!2229178 (and tp!1101795 tp!1101796))))

(declare-fun e!2229177 () Bool)

(declare-fun b!3602335 () Bool)

(declare-fun tp!1101793 () Bool)

(assert (=> b!3602335 (= e!2229177 (and tp!1101793 (inv!51245 (tag!6302 (h!43311 (t!292346 rules!3307)))) (inv!51248 (transformation!5610 (h!43311 (t!292346 rules!3307)))) e!2229178))))

(declare-fun b!3602334 () Bool)

(declare-fun e!2229175 () Bool)

(declare-fun tp!1101794 () Bool)

(assert (=> b!3602334 (= e!2229175 (and e!2229177 tp!1101794))))

(assert (=> b!3601569 (= tp!1101691 e!2229175)))

(assert (= b!3602335 b!3602336))

(assert (= b!3602334 b!3602335))

(assert (= (and b!3601569 ((_ is Cons!37891) (t!292346 rules!3307))) b!3602334))

(declare-fun m!4098553 () Bool)

(assert (=> b!3602335 m!4098553))

(declare-fun m!4098555 () Bool)

(assert (=> b!3602335 m!4098555))

(declare-fun b_lambda!106551 () Bool)

(assert (= b_lambda!106549 (or (and b!3602336 b_free!93255 (= (toChars!7753 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601571 b_free!93235 (= (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601588 b_free!93247 (= (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601567 b_free!93243 (= (toChars!7753 (transformation!5610 rule!403)) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601570 b_free!93239) b_lambda!106551)))

(declare-fun b_lambda!106553 () Bool)

(assert (= b_lambda!106517 (or (and b!3602336 b_free!93255 (= (toChars!7753 (transformation!5610 (h!43311 (t!292346 rules!3307)))) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601571 b_free!93235 (= (toChars!7753 (transformation!5610 anOtherTypeRule!33)) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601588 b_free!93247 (= (toChars!7753 (transformation!5610 (h!43311 rules!3307))) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601567 b_free!93243 (= (toChars!7753 (transformation!5610 rule!403)) (toChars!7753 (transformation!5610 (rule!8346 token!511))))) (and b!3601570 b_free!93239) b_lambda!106553)))

(check-sat (not b!3601909) (not b!3602319) (not d!1061214) (not bm!260456) (not b!3602239) (not b!3602022) (not b_lambda!106553) (not b!3602045) (not b!3602242) (not b!3601958) (not b!3602321) (not b!3602268) (not d!1061258) b_and!261865 (not b_lambda!106543) (not b!3601994) (not tb!206121) (not b!3601938) (not b!3601754) (not d!1061360) (not b!3602028) (not b!3601773) (not d!1061118) (not b!3602023) (not d!1061350) (not d!1061328) (not b_lambda!106521) (not b_next!93939) (not b!3602000) (not b!3601914) (not d!1061164) (not d!1061356) (not d!1061340) (not b!3601957) (not b!3601925) (not bm!260463) (not b!3602002) (not b!3602320) tp_is_empty!17821 (not d!1061168) (not b!3602253) (not b_lambda!106551) (not b!3602024) (not bm!260464) b_and!261861 (not b_lambda!106541) (not b!3601605) b_and!261857 (not b!3602248) (not d!1061338) (not b!3602264) (not d!1061244) (not d!1061220) b_and!261851 (not b_next!93957) (not b!3601959) (not b!3602311) (not b!3601917) (not tb!206129) (not b!3602230) (not d!1061236) (not d!1061256) (not b!3601807) (not b_lambda!106519) (not b!3601939) (not d!1061228) (not b!3601614) (not b!3601603) (not b!3601911) (not b!3601945) (not b!3602250) (not bm!260455) (not tb!206113) (not d!1061248) (not b!3602325) (not b!3602263) (not b!3602271) (not b!3601752) (not b!3601753) (not b!3602291) (not b!3601910) (not b!3601919) (not bm!260442) (not b!3601998) (not b!3602290) (not b_next!93951) (not b!3602249) (not b_next!93941) (not b!3601784) (not b!3602298) (not b!3602001) b_and!261863 (not d!1061212) (not b!3602247) (not b!3602255) (not d!1061254) (not d!1061230) (not d!1061208) (not b!3601775) (not d!1061216) (not d!1061344) (not b!3602021) (not d!1061126) (not b!3602317) (not b!3601915) (not b!3601602) (not tb!206189) (not d!1061330) (not b!3602270) (not b!3602312) (not d!1061352) (not b!3601785) (not d!1061210) (not d!1061200) (not d!1061238) (not b!3602276) (not d!1061114) b_and!261859 (not d!1061204) (not b!3602254) (not b!3601946) (not b!3601920) (not b!3601611) (not d!1061242) (not d!1061358) (not d!1061104) (not b_next!93947) (not b_next!93949) (not b!3602284) (not b!3601913) (not d!1061218) (not b!3602335) (not b!3602257) (not d!1061232) (not b!3602316) (not b_lambda!106545) (not b!3602324) (not b!3601952) (not b!3602252) (not b!3601996) (not b!3602251) (not b!3601615) (not tb!206137) (not b!3602293) (not b!3601621) (not b!3602286) (not bm!260467) (not b!3602283) (not bm!260445) (not d!1061346) (not b!3602288) (not b!3602315) (not b!3601774) (not d!1061154) (not b!3602036) (not b!3602025) (not bm!260469) (not b_next!93959) (not b!3602323) b_and!261855 (not b!3601921) (not b!3602228) (not d!1061326) (not b!3602027) (not d!1061354) (not b!3601923) (not b!3602266) (not b_lambda!106515) (not b_next!93937) (not d!1061206) (not b_next!93945) (not b_next!93943) (not tb!206197) (not b!3601993) b_and!261853 (not b!3602029) (not b!3601924) (not bm!260454) (not b!3602334) b_and!261847 (not b!3602299) (not b!3601942) (not b!3601912) (not d!1061348) (not bm!260465) (not b!3602313) (not bm!260468) b_and!261849 (not b!3602043) (not d!1061120) (not b!3601808) (not b_lambda!106547))
(check-sat b_and!261865 (not b_next!93939) (not b_next!93951) b_and!261859 b_and!261853 b_and!261847 b_and!261849 b_and!261861 b_and!261857 b_and!261851 (not b_next!93957) b_and!261863 (not b_next!93941) (not b_next!93947) (not b_next!93949) (not b_next!93959) b_and!261855 (not b_next!93937) (not b_next!93945) (not b_next!93943))
