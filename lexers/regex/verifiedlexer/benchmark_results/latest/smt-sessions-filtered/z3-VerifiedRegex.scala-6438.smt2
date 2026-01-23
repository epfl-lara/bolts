; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336638 () Bool)

(assert start!336638)

(declare-fun b!3615265 () Bool)

(declare-fun b_free!94049 () Bool)

(declare-fun b_next!94753 () Bool)

(assert (=> b!3615265 (= b_free!94049 (not b_next!94753))))

(declare-fun tp!1104780 () Bool)

(declare-fun b_and!263955 () Bool)

(assert (=> b!3615265 (= tp!1104780 b_and!263955)))

(declare-fun b_free!94051 () Bool)

(declare-fun b_next!94755 () Bool)

(assert (=> b!3615265 (= b_free!94051 (not b_next!94755))))

(declare-fun tp!1104783 () Bool)

(declare-fun b_and!263957 () Bool)

(assert (=> b!3615265 (= tp!1104783 b_and!263957)))

(declare-fun b!3615254 () Bool)

(declare-fun b_free!94053 () Bool)

(declare-fun b_next!94757 () Bool)

(assert (=> b!3615254 (= b_free!94053 (not b_next!94757))))

(declare-fun tp!1104781 () Bool)

(declare-fun b_and!263959 () Bool)

(assert (=> b!3615254 (= tp!1104781 b_and!263959)))

(declare-fun b_free!94055 () Bool)

(declare-fun b_next!94759 () Bool)

(assert (=> b!3615254 (= b_free!94055 (not b_next!94759))))

(declare-fun tp!1104772 () Bool)

(declare-fun b_and!263961 () Bool)

(assert (=> b!3615254 (= tp!1104772 b_and!263961)))

(declare-fun b!3615245 () Bool)

(declare-fun b_free!94057 () Bool)

(declare-fun b_next!94761 () Bool)

(assert (=> b!3615245 (= b_free!94057 (not b_next!94761))))

(declare-fun tp!1104782 () Bool)

(declare-fun b_and!263963 () Bool)

(assert (=> b!3615245 (= tp!1104782 b_and!263963)))

(declare-fun b_free!94059 () Bool)

(declare-fun b_next!94763 () Bool)

(assert (=> b!3615245 (= b_free!94059 (not b_next!94763))))

(declare-fun tp!1104774 () Bool)

(declare-fun b_and!263965 () Bool)

(assert (=> b!3615245 (= tp!1104774 b_and!263965)))

(declare-fun b!3615277 () Bool)

(declare-fun b_free!94061 () Bool)

(declare-fun b_next!94765 () Bool)

(assert (=> b!3615277 (= b_free!94061 (not b_next!94765))))

(declare-fun tp!1104770 () Bool)

(declare-fun b_and!263967 () Bool)

(assert (=> b!3615277 (= tp!1104770 b_and!263967)))

(declare-fun b_free!94063 () Bool)

(declare-fun b_next!94767 () Bool)

(assert (=> b!3615277 (= b_free!94063 (not b_next!94767))))

(declare-fun tp!1104784 () Bool)

(declare-fun b_and!263969 () Bool)

(assert (=> b!3615277 (= tp!1104784 b_and!263969)))

(declare-fun b!3615243 () Bool)

(declare-fun e!2237589 () Bool)

(declare-datatypes ((List!38189 0))(
  ( (Nil!38065) (Cons!38065 (h!43485 (_ BitVec 16)) (t!293720 List!38189)) )
))
(declare-datatypes ((TokenValue!5886 0))(
  ( (FloatLiteralValue!11772 (text!41647 List!38189)) (TokenValueExt!5885 (__x!23989 Int)) (Broken!29430 (value!181630 List!38189)) (Object!6009) (End!5886) (Def!5886) (Underscore!5886) (Match!5886) (Else!5886) (Error!5886) (Case!5886) (If!5886) (Extends!5886) (Abstract!5886) (Class!5886) (Val!5886) (DelimiterValue!11772 (del!5946 List!38189)) (KeywordValue!5892 (value!181631 List!38189)) (CommentValue!11772 (value!181632 List!38189)) (WhitespaceValue!11772 (value!181633 List!38189)) (IndentationValue!5886 (value!181634 List!38189)) (String!42763) (Int32!5886) (Broken!29431 (value!181635 List!38189)) (Boolean!5887) (Unit!54452) (OperatorValue!5889 (op!5946 List!38189)) (IdentifierValue!11772 (value!181636 List!38189)) (IdentifierValue!11773 (value!181637 List!38189)) (WhitespaceValue!11773 (value!181638 List!38189)) (True!11772) (False!11772) (Broken!29432 (value!181639 List!38189)) (Broken!29433 (value!181640 List!38189)) (True!11773) (RightBrace!5886) (RightBracket!5886) (Colon!5886) (Null!5886) (Comma!5886) (LeftBracket!5886) (False!11773) (LeftBrace!5886) (ImaginaryLiteralValue!5886 (text!41648 List!38189)) (StringLiteralValue!17658 (value!181641 List!38189)) (EOFValue!5886 (value!181642 List!38189)) (IdentValue!5886 (value!181643 List!38189)) (DelimiterValue!11773 (value!181644 List!38189)) (DedentValue!5886 (value!181645 List!38189)) (NewLineValue!5886 (value!181646 List!38189)) (IntegerValue!17658 (value!181647 (_ BitVec 32)) (text!41649 List!38189)) (IntegerValue!17659 (value!181648 Int) (text!41650 List!38189)) (Times!5886) (Or!5886) (Equal!5886) (Minus!5886) (Broken!29434 (value!181649 List!38189)) (And!5886) (Div!5886) (LessEqual!5886) (Mod!5886) (Concat!16301) (Not!5886) (Plus!5886) (SpaceValue!5886 (value!181650 List!38189)) (IntegerValue!17660 (value!181651 Int) (text!41651 List!38189)) (StringLiteralValue!17659 (text!41652 List!38189)) (FloatLiteralValue!11773 (text!41653 List!38189)) (BytesLiteralValue!5886 (value!181652 List!38189)) (CommentValue!11773 (value!181653 List!38189)) (StringLiteralValue!17660 (value!181654 List!38189)) (ErrorTokenValue!5886 (msg!5947 List!38189)) )
))
(declare-datatypes ((String!42764 0))(
  ( (String!42765 (value!181655 String)) )
))
(declare-datatypes ((C!21016 0))(
  ( (C!21017 (val!12556 Int)) )
))
(declare-datatypes ((Regex!10415 0))(
  ( (ElementMatch!10415 (c!625482 C!21016)) (Concat!16302 (regOne!21342 Regex!10415) (regTwo!21342 Regex!10415)) (EmptyExpr!10415) (Star!10415 (reg!10744 Regex!10415)) (EmptyLang!10415) (Union!10415 (regOne!21343 Regex!10415) (regTwo!21343 Regex!10415)) )
))
(declare-datatypes ((List!38190 0))(
  ( (Nil!38066) (Cons!38066 (h!43486 C!21016) (t!293721 List!38190)) )
))
(declare-datatypes ((IArray!23211 0))(
  ( (IArray!23212 (innerList!11663 List!38190)) )
))
(declare-datatypes ((Conc!11603 0))(
  ( (Node!11603 (left!29733 Conc!11603) (right!30063 Conc!11603) (csize!23436 Int) (cheight!11814 Int)) (Leaf!18042 (xs!14805 IArray!23211) (csize!23437 Int)) (Empty!11603) )
))
(declare-datatypes ((BalanceConc!22820 0))(
  ( (BalanceConc!22821 (c!625483 Conc!11603)) )
))
(declare-datatypes ((TokenValueInjection!11200 0))(
  ( (TokenValueInjection!11201 (toValue!7940 Int) (toChars!7799 Int)) )
))
(declare-datatypes ((Rule!11112 0))(
  ( (Rule!11113 (regex!5656 Regex!10415) (tag!6368 String!42764) (isSeparator!5656 Bool) (transformation!5656 TokenValueInjection!11200)) )
))
(declare-datatypes ((Token!10678 0))(
  ( (Token!10679 (value!181656 TokenValue!5886) (rule!8412 Rule!11112) (size!29031 Int) (originalCharacters!6370 List!38190)) )
))
(declare-datatypes ((tuple2!37952 0))(
  ( (tuple2!37953 (_1!22110 Token!10678) (_2!22110 List!38190)) )
))
(declare-fun lt!1246660 () tuple2!37952)

(declare-fun lt!1246644 () Rule!11112)

(assert (=> b!3615243 (= e!2237589 (= (rule!8412 (_1!22110 lt!1246660)) lt!1246644))))

(declare-fun b!3615244 () Bool)

(declare-fun res!1462728 () Bool)

(declare-fun e!2237585 () Bool)

(assert (=> b!3615244 (=> res!1462728 e!2237585)))

(declare-fun anOtherTypeRule!33 () Rule!11112)

(declare-fun lt!1246650 () C!21016)

(declare-fun contains!7375 (List!38190 C!21016) Bool)

(declare-fun usedCharacters!870 (Regex!10415) List!38190)

(assert (=> b!3615244 (= res!1462728 (not (contains!7375 (usedCharacters!870 (regex!5656 anOtherTypeRule!33)) lt!1246650)))))

(declare-fun e!2237602 () Bool)

(assert (=> b!3615245 (= e!2237602 (and tp!1104782 tp!1104774))))

(declare-fun b!3615246 () Bool)

(declare-datatypes ((Unit!54453 0))(
  ( (Unit!54454) )
))
(declare-fun e!2237595 () Unit!54453)

(declare-fun Unit!54455 () Unit!54453)

(assert (=> b!3615246 (= e!2237595 Unit!54455)))

(declare-fun bm!261456 () Bool)

(declare-fun call!261466 () Bool)

(declare-fun call!261464 () List!38190)

(assert (=> bm!261456 (= call!261466 (contains!7375 call!261464 lt!1246650))))

(declare-fun b!3615247 () Bool)

(declare-fun Unit!54456 () Unit!54453)

(assert (=> b!3615247 (= e!2237595 Unit!54456)))

(declare-fun lt!1246648 () Unit!54453)

(declare-datatypes ((LexerInterface!5245 0))(
  ( (LexerInterfaceExt!5242 (__x!23990 Int)) (Lexer!5243) )
))
(declare-fun thiss!23823 () LexerInterface!5245)

(declare-fun rule!403 () Rule!11112)

(declare-fun lt!1246631 () List!38190)

(declare-datatypes ((List!38191 0))(
  ( (Nil!38067) (Cons!38067 (h!43487 Rule!11112) (t!293722 List!38191)) )
))
(declare-fun rules!3307 () List!38191)

(declare-fun lt!1246651 () List!38190)

(declare-fun lt!1246665 () List!38190)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!304 (LexerInterface!5245 List!38191 Rule!11112 List!38190 List!38190 List!38190 Rule!11112) Unit!54453)

(assert (=> b!3615247 (= lt!1246648 (lemmaMaxPrefixOutputsMaxPrefix!304 thiss!23823 rules!3307 (rule!8412 (_1!22110 lt!1246660)) lt!1246651 lt!1246631 lt!1246665 rule!403))))

(assert (=> b!3615247 false))

(declare-fun b!3615248 () Bool)

(declare-fun res!1462729 () Bool)

(declare-fun e!2237613 () Bool)

(assert (=> b!3615248 (=> (not res!1462729) (not e!2237613))))

(declare-fun contains!7376 (List!38191 Rule!11112) Bool)

(assert (=> b!3615248 (= res!1462729 (contains!7376 rules!3307 rule!403))))

(declare-fun b!3615249 () Bool)

(declare-fun e!2237599 () Unit!54453)

(declare-fun Unit!54457 () Unit!54453)

(assert (=> b!3615249 (= e!2237599 Unit!54457)))

(declare-fun b!3615250 () Bool)

(declare-fun e!2237606 () Bool)

(declare-fun e!2237614 () Bool)

(assert (=> b!3615250 (= e!2237606 (not e!2237614))))

(declare-fun res!1462732 () Bool)

(assert (=> b!3615250 (=> res!1462732 e!2237614)))

(declare-fun matchR!4984 (Regex!10415 List!38190) Bool)

(assert (=> b!3615250 (= res!1462732 (not (matchR!4984 (regex!5656 rule!403) lt!1246665)))))

(declare-fun ruleValid!1921 (LexerInterface!5245 Rule!11112) Bool)

(assert (=> b!3615250 (ruleValid!1921 thiss!23823 rule!403)))

(declare-fun lt!1246671 () Unit!54453)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1076 (LexerInterface!5245 Rule!11112 List!38191) Unit!54453)

(assert (=> b!3615250 (= lt!1246671 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1076 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3615251 () Bool)

(declare-fun res!1462740 () Bool)

(assert (=> b!3615251 (=> (not res!1462740) (not e!2237606))))

(declare-fun token!511 () Token!10678)

(assert (=> b!3615251 (= res!1462740 (= (rule!8412 token!511) rule!403))))

(declare-fun b!3615252 () Bool)

(declare-fun e!2237592 () Bool)

(assert (=> b!3615252 (= e!2237592 e!2237589)))

(declare-fun res!1462739 () Bool)

(assert (=> b!3615252 (=> (not res!1462739) (not e!2237589))))

(declare-fun list!14044 (BalanceConc!22820) List!38190)

(declare-fun charsOf!3670 (Token!10678) BalanceConc!22820)

(assert (=> b!3615252 (= res!1462739 (matchR!4984 (regex!5656 lt!1246644) (list!14044 (charsOf!3670 (_1!22110 lt!1246660)))))))

(declare-datatypes ((Option!7942 0))(
  ( (None!7941) (Some!7941 (v!37695 Rule!11112)) )
))
(declare-fun lt!1246629 () Option!7942)

(declare-fun get!12380 (Option!7942) Rule!11112)

(assert (=> b!3615252 (= lt!1246644 (get!12380 lt!1246629))))

(declare-fun bm!261457 () Bool)

(declare-fun call!261461 () List!38190)

(assert (=> bm!261457 (= call!261461 (usedCharacters!870 (regex!5656 (rule!8412 (_1!22110 lt!1246660)))))))

(declare-fun b!3615253 () Bool)

(declare-fun e!2237608 () Unit!54453)

(declare-fun e!2237607 () Unit!54453)

(assert (=> b!3615253 (= e!2237608 e!2237607)))

(declare-fun c!625481 () Bool)

(assert (=> b!3615253 (= c!625481 (not (isSeparator!5656 (rule!8412 (_1!22110 lt!1246660)))))))

(declare-fun call!261462 () Unit!54453)

(declare-fun bm!261458 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!640 (Regex!10415 List!38190 C!21016) Unit!54453)

(assert (=> bm!261458 (= call!261462 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!640 (regex!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246651 lt!1246650))))

(declare-fun res!1462741 () Bool)

(assert (=> start!336638 (=> (not res!1462741) (not e!2237613))))

(get-info :version)

(assert (=> start!336638 (= res!1462741 ((_ is Lexer!5243) thiss!23823))))

(assert (=> start!336638 e!2237613))

(declare-fun e!2237588 () Bool)

(assert (=> start!336638 e!2237588))

(declare-fun e!2237610 () Bool)

(assert (=> start!336638 e!2237610))

(assert (=> start!336638 true))

(declare-fun e!2237584 () Bool)

(declare-fun inv!51449 (Token!10678) Bool)

(assert (=> start!336638 (and (inv!51449 token!511) e!2237584)))

(declare-fun e!2237586 () Bool)

(assert (=> start!336638 e!2237586))

(declare-fun e!2237582 () Bool)

(assert (=> start!336638 e!2237582))

(declare-fun e!2237579 () Bool)

(assert (=> b!3615254 (= e!2237579 (and tp!1104781 tp!1104772))))

(declare-fun b!3615255 () Bool)

(declare-fun res!1462742 () Bool)

(assert (=> b!3615255 (=> (not res!1462742) (not e!2237613))))

(assert (=> b!3615255 (= res!1462742 (contains!7376 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3615256 () Bool)

(declare-fun tp_is_empty!17913 () Bool)

(declare-fun tp!1104777 () Bool)

(assert (=> b!3615256 (= e!2237610 (and tp_is_empty!17913 tp!1104777))))

(declare-fun bm!261459 () Bool)

(declare-fun call!261463 () Bool)

(declare-fun lt!1246649 () C!21016)

(assert (=> bm!261459 (= call!261463 (contains!7375 call!261461 lt!1246649))))

(declare-fun b!3615257 () Bool)

(declare-fun e!2237578 () Unit!54453)

(declare-fun Unit!54458 () Unit!54453)

(assert (=> b!3615257 (= e!2237578 Unit!54458)))

(declare-fun b!3615258 () Bool)

(declare-fun e!2237609 () Unit!54453)

(assert (=> b!3615258 (= e!2237608 e!2237609)))

(declare-fun c!625473 () Bool)

(assert (=> b!3615258 (= c!625473 (isSeparator!5656 (rule!8412 (_1!22110 lt!1246660))))))

(declare-fun b!3615259 () Bool)

(declare-fun e!2237593 () Unit!54453)

(declare-fun Unit!54459 () Unit!54453)

(assert (=> b!3615259 (= e!2237593 Unit!54459)))

(declare-fun lt!1246636 () Unit!54453)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!190 (LexerInterface!5245 List!38191 Rule!11112 List!38190 List!38190 Rule!11112) Unit!54453)

(assert (=> b!3615259 (= lt!1246636 (lemmaMaxPrefNoSmallerRuleMatches!190 thiss!23823 rules!3307 (rule!8412 (_1!22110 lt!1246660)) lt!1246665 lt!1246631 rule!403))))

(assert (=> b!3615259 false))

(declare-fun b!3615260 () Bool)

(declare-fun res!1462730 () Bool)

(assert (=> b!3615260 (=> res!1462730 e!2237614)))

(declare-fun suffix!1395 () List!38190)

(declare-fun isEmpty!22486 (List!38190) Bool)

(assert (=> b!3615260 (= res!1462730 (isEmpty!22486 suffix!1395))))

(declare-fun tp!1104775 () Bool)

(declare-fun b!3615261 () Bool)

(declare-fun inv!51446 (String!42764) Bool)

(declare-fun inv!51450 (TokenValueInjection!11200) Bool)

(assert (=> b!3615261 (= e!2237586 (and tp!1104775 (inv!51446 (tag!6368 rule!403)) (inv!51450 (transformation!5656 rule!403)) e!2237579))))

(declare-fun b!3615262 () Bool)

(declare-fun tp!1104779 () Bool)

(declare-fun e!2237604 () Bool)

(declare-fun inv!21 (TokenValue!5886) Bool)

(assert (=> b!3615262 (= e!2237584 (and (inv!21 (value!181656 token!511)) e!2237604 tp!1104779))))

(declare-fun b!3615263 () Bool)

(declare-fun res!1462735 () Bool)

(assert (=> b!3615263 (=> (not res!1462735) (not e!2237606))))

(declare-fun lt!1246669 () tuple2!37952)

(assert (=> b!3615263 (= res!1462735 (isEmpty!22486 (_2!22110 lt!1246669)))))

(declare-fun b!3615264 () Bool)

(declare-fun e!2237605 () Bool)

(assert (=> b!3615264 (= e!2237605 true)))

(declare-fun lt!1246673 () Bool)

(assert (=> b!3615264 (= lt!1246673 (contains!7376 rules!3307 (rule!8412 (_1!22110 lt!1246660))))))

(declare-fun lt!1246654 () Unit!54453)

(assert (=> b!3615264 (= lt!1246654 e!2237593)))

(declare-fun c!625475 () Bool)

(declare-fun lt!1246635 () Int)

(declare-fun lt!1246674 () Int)

(assert (=> b!3615264 (= c!625475 (< lt!1246635 lt!1246674))))

(declare-fun lt!1246628 () Unit!54453)

(assert (=> b!3615264 (= lt!1246628 e!2237578)))

(declare-fun c!625477 () Bool)

(assert (=> b!3615264 (= c!625477 (< lt!1246674 lt!1246635))))

(declare-fun getIndex!438 (List!38191 Rule!11112) Int)

(assert (=> b!3615264 (= lt!1246635 (getIndex!438 rules!3307 rule!403))))

(assert (=> b!3615264 (= lt!1246674 (getIndex!438 rules!3307 (rule!8412 (_1!22110 lt!1246660))))))

(declare-fun e!2237598 () Bool)

(assert (=> b!3615265 (= e!2237598 (and tp!1104780 tp!1104783))))

(declare-fun b!3615266 () Bool)

(declare-fun e!2237594 () Bool)

(assert (=> b!3615266 (= e!2237585 e!2237594)))

(declare-fun res!1462734 () Bool)

(assert (=> b!3615266 (=> res!1462734 e!2237594)))

(declare-fun isPrefix!3019 (List!38190 List!38190) Bool)

(assert (=> b!3615266 (= res!1462734 (not (isPrefix!3019 lt!1246651 lt!1246631)))))

(declare-fun ++!9472 (List!38190 List!38190) List!38190)

(assert (=> b!3615266 (isPrefix!3019 lt!1246651 (++!9472 lt!1246651 (_2!22110 lt!1246660)))))

(declare-fun lt!1246626 () Unit!54453)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1940 (List!38190 List!38190) Unit!54453)

(assert (=> b!3615266 (= lt!1246626 (lemmaConcatTwoListThenFirstIsPrefix!1940 lt!1246651 (_2!22110 lt!1246660)))))

(declare-fun lt!1246643 () BalanceConc!22820)

(assert (=> b!3615266 (= lt!1246651 (list!14044 lt!1246643))))

(assert (=> b!3615266 (= lt!1246643 (charsOf!3670 (_1!22110 lt!1246660)))))

(assert (=> b!3615266 e!2237592))

(declare-fun res!1462745 () Bool)

(assert (=> b!3615266 (=> (not res!1462745) (not e!2237592))))

(declare-fun isDefined!6174 (Option!7942) Bool)

(assert (=> b!3615266 (= res!1462745 (isDefined!6174 lt!1246629))))

(declare-fun getRuleFromTag!1262 (LexerInterface!5245 List!38191 String!42764) Option!7942)

(assert (=> b!3615266 (= lt!1246629 (getRuleFromTag!1262 thiss!23823 rules!3307 (tag!6368 (rule!8412 (_1!22110 lt!1246660)))))))

(declare-fun lt!1246637 () Unit!54453)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1262 (LexerInterface!5245 List!38191 List!38190 Token!10678) Unit!54453)

(assert (=> b!3615266 (= lt!1246637 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1262 thiss!23823 rules!3307 lt!1246631 (_1!22110 lt!1246660)))))

(declare-datatypes ((Option!7943 0))(
  ( (None!7942) (Some!7942 (v!37696 tuple2!37952)) )
))
(declare-fun lt!1246670 () Option!7943)

(declare-fun get!12381 (Option!7943) tuple2!37952)

(assert (=> b!3615266 (= lt!1246660 (get!12381 lt!1246670))))

(declare-fun lt!1246658 () Unit!54453)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!925 (LexerInterface!5245 List!38191 List!38190 List!38190) Unit!54453)

(assert (=> b!3615266 (= lt!1246658 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!925 thiss!23823 rules!3307 lt!1246665 suffix!1395))))

(declare-fun maxPrefix!2779 (LexerInterface!5245 List!38191 List!38190) Option!7943)

(assert (=> b!3615266 (= lt!1246670 (maxPrefix!2779 thiss!23823 rules!3307 lt!1246631))))

(assert (=> b!3615266 (isPrefix!3019 lt!1246665 lt!1246631)))

(declare-fun lt!1246664 () Unit!54453)

(assert (=> b!3615266 (= lt!1246664 (lemmaConcatTwoListThenFirstIsPrefix!1940 lt!1246665 suffix!1395))))

(assert (=> b!3615266 (= lt!1246631 (++!9472 lt!1246665 suffix!1395))))

(declare-fun b!3615267 () Bool)

(declare-fun e!2237583 () Unit!54453)

(declare-fun Unit!54460 () Unit!54453)

(assert (=> b!3615267 (= e!2237583 Unit!54460)))

(declare-fun lt!1246639 () Unit!54453)

(assert (=> b!3615267 (= lt!1246639 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!640 (regex!5656 rule!403) lt!1246665 lt!1246649))))

(assert (=> b!3615267 false))

(declare-fun b!3615268 () Bool)

(declare-fun res!1462731 () Bool)

(assert (=> b!3615268 (=> res!1462731 e!2237594)))

(assert (=> b!3615268 (= res!1462731 (not (matchR!4984 (regex!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246651)))))

(declare-fun b!3615269 () Bool)

(declare-fun e!2237591 () Bool)

(assert (=> b!3615269 (= e!2237591 e!2237605)))

(declare-fun res!1462743 () Bool)

(assert (=> b!3615269 (=> res!1462743 e!2237605)))

(assert (=> b!3615269 (= res!1462743 (= (rule!8412 (_1!22110 lt!1246660)) (rule!8412 token!511)))))

(assert (=> b!3615269 (= lt!1246651 lt!1246665)))

(declare-fun lt!1246633 () Unit!54453)

(declare-fun lemmaIsPrefixSameLengthThenSameList!593 (List!38190 List!38190 List!38190) Unit!54453)

(assert (=> b!3615269 (= lt!1246633 (lemmaIsPrefixSameLengthThenSameList!593 lt!1246651 lt!1246665 lt!1246631))))

(declare-fun lt!1246672 () Unit!54453)

(assert (=> b!3615269 (= lt!1246672 e!2237595)))

(declare-fun c!625479 () Bool)

(declare-fun lt!1246641 () Int)

(declare-fun lt!1246652 () Int)

(assert (=> b!3615269 (= c!625479 (< lt!1246641 lt!1246652))))

(declare-fun lt!1246627 () Unit!54453)

(assert (=> b!3615269 (= lt!1246627 e!2237599)))

(declare-fun c!625476 () Bool)

(assert (=> b!3615269 (= c!625476 (> lt!1246641 lt!1246652))))

(declare-fun lt!1246662 () BalanceConc!22820)

(declare-fun size!29032 (BalanceConc!22820) Int)

(assert (=> b!3615269 (= lt!1246652 (size!29032 lt!1246662))))

(declare-fun lt!1246659 () Unit!54453)

(assert (=> b!3615269 (= lt!1246659 e!2237608)))

(declare-fun c!625480 () Bool)

(assert (=> b!3615269 (= c!625480 (isSeparator!5656 rule!403))))

(declare-fun lt!1246657 () Unit!54453)

(assert (=> b!3615269 (= lt!1246657 e!2237583)))

(declare-fun c!625474 () Bool)

(declare-fun lt!1246680 () List!38190)

(assert (=> b!3615269 (= c!625474 (not (contains!7375 lt!1246680 lt!1246649)))))

(declare-fun head!7620 (List!38190) C!21016)

(assert (=> b!3615269 (= lt!1246649 (head!7620 lt!1246651))))

(declare-fun b!3615270 () Bool)

(declare-fun e!2237590 () Bool)

(assert (=> b!3615270 (= e!2237590 e!2237591)))

(declare-fun res!1462748 () Bool)

(assert (=> b!3615270 (=> res!1462748 e!2237591)))

(declare-fun lt!1246675 () Option!7943)

(declare-fun lt!1246666 () List!38190)

(assert (=> b!3615270 (= res!1462748 (or (not (= lt!1246666 (_2!22110 lt!1246660))) (not (= lt!1246675 (Some!7942 (tuple2!37953 (_1!22110 lt!1246660) lt!1246666))))))))

(assert (=> b!3615270 (= (_2!22110 lt!1246660) lt!1246666)))

(declare-fun lt!1246645 () Unit!54453)

(declare-fun lemmaSamePrefixThenSameSuffix!1374 (List!38190 List!38190 List!38190 List!38190 List!38190) Unit!54453)

(assert (=> b!3615270 (= lt!1246645 (lemmaSamePrefixThenSameSuffix!1374 lt!1246651 (_2!22110 lt!1246660) lt!1246651 lt!1246666 lt!1246631))))

(declare-fun getSuffix!1594 (List!38190 List!38190) List!38190)

(assert (=> b!3615270 (= lt!1246666 (getSuffix!1594 lt!1246631 lt!1246651))))

(declare-fun lt!1246647 () TokenValue!5886)

(declare-fun lt!1246668 () Int)

(assert (=> b!3615270 (= lt!1246675 (Some!7942 (tuple2!37953 (Token!10679 lt!1246647 (rule!8412 (_1!22110 lt!1246660)) lt!1246668 lt!1246651) (_2!22110 lt!1246660))))))

(declare-fun maxPrefixOneRule!1923 (LexerInterface!5245 Rule!11112 List!38190) Option!7943)

(assert (=> b!3615270 (= lt!1246675 (maxPrefixOneRule!1923 thiss!23823 (rule!8412 (_1!22110 lt!1246660)) lt!1246631))))

(declare-fun size!29033 (List!38190) Int)

(assert (=> b!3615270 (= lt!1246668 (size!29033 lt!1246651))))

(declare-fun apply!9162 (TokenValueInjection!11200 BalanceConc!22820) TokenValue!5886)

(declare-fun seqFromList!4209 (List!38190) BalanceConc!22820)

(assert (=> b!3615270 (= lt!1246647 (apply!9162 (transformation!5656 (rule!8412 (_1!22110 lt!1246660))) (seqFromList!4209 lt!1246651)))))

(declare-fun lt!1246646 () Unit!54453)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!995 (LexerInterface!5245 List!38191 List!38190 List!38190 List!38190 Rule!11112) Unit!54453)

(assert (=> b!3615270 (= lt!1246646 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!995 thiss!23823 rules!3307 lt!1246651 lt!1246631 (_2!22110 lt!1246660) (rule!8412 (_1!22110 lt!1246660))))))

(declare-fun b!3615271 () Bool)

(declare-fun Unit!54461 () Unit!54453)

(assert (=> b!3615271 (= e!2237583 Unit!54461)))

(declare-fun b!3615272 () Bool)

(declare-fun res!1462749 () Bool)

(assert (=> b!3615272 (=> (not res!1462749) (not e!2237613))))

(assert (=> b!3615272 (= res!1462749 (not (= (isSeparator!5656 anOtherTypeRule!33) (isSeparator!5656 rule!403))))))

(declare-fun b!3615273 () Bool)

(declare-fun Unit!54462 () Unit!54453)

(assert (=> b!3615273 (= e!2237593 Unit!54462)))

(declare-fun b!3615274 () Bool)

(declare-fun res!1462747 () Bool)

(assert (=> b!3615274 (=> (not res!1462747) (not e!2237613))))

(declare-fun rulesInvariant!4642 (LexerInterface!5245 List!38191) Bool)

(assert (=> b!3615274 (= res!1462747 (rulesInvariant!4642 thiss!23823 rules!3307))))

(declare-fun b!3615275 () Bool)

(declare-fun e!2237612 () Bool)

(assert (=> b!3615275 (= e!2237612 false)))

(declare-fun b!3615276 () Bool)

(assert (=> b!3615276 (= e!2237594 e!2237590)))

(declare-fun res!1462737 () Bool)

(assert (=> b!3615276 (=> res!1462737 e!2237590)))

(declare-fun lt!1246655 () TokenValue!5886)

(assert (=> b!3615276 (= res!1462737 (not (= lt!1246670 (Some!7942 (tuple2!37953 (Token!10679 lt!1246655 (rule!8412 (_1!22110 lt!1246660)) lt!1246641 lt!1246651) (_2!22110 lt!1246660))))))))

(assert (=> b!3615276 (= lt!1246641 (size!29032 lt!1246643))))

(assert (=> b!3615276 (= lt!1246655 (apply!9162 (transformation!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246643))))

(declare-fun lt!1246640 () Unit!54453)

(declare-fun lemmaCharactersSize!709 (Token!10678) Unit!54453)

(assert (=> b!3615276 (= lt!1246640 (lemmaCharactersSize!709 (_1!22110 lt!1246660)))))

(declare-fun lt!1246678 () Unit!54453)

(declare-fun lemmaEqSameImage!847 (TokenValueInjection!11200 BalanceConc!22820 BalanceConc!22820) Unit!54453)

(assert (=> b!3615276 (= lt!1246678 (lemmaEqSameImage!847 (transformation!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246643 (seqFromList!4209 (originalCharacters!6370 (_1!22110 lt!1246660)))))))

(declare-fun lt!1246638 () Unit!54453)

(declare-fun lemmaSemiInverse!1413 (TokenValueInjection!11200 BalanceConc!22820) Unit!54453)

(assert (=> b!3615276 (= lt!1246638 (lemmaSemiInverse!1413 (transformation!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246643))))

(declare-fun e!2237603 () Bool)

(assert (=> b!3615277 (= e!2237603 (and tp!1104770 tp!1104784))))

(declare-fun b!3615278 () Bool)

(declare-fun Unit!54463 () Unit!54453)

(assert (=> b!3615278 (= e!2237609 Unit!54463)))

(declare-fun tp!1104771 () Bool)

(declare-fun b!3615279 () Bool)

(assert (=> b!3615279 (= e!2237582 (and tp!1104771 (inv!51446 (tag!6368 anOtherTypeRule!33)) (inv!51450 (transformation!5656 anOtherTypeRule!33)) e!2237602))))

(declare-fun call!261465 () Unit!54453)

(declare-fun bm!261460 () Bool)

(assert (=> bm!261460 (= call!261465 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!640 (regex!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246651 lt!1246649))))

(declare-fun b!3615280 () Bool)

(declare-fun e!2237611 () Unit!54453)

(assert (=> b!3615280 (= e!2237599 e!2237611)))

(declare-fun lt!1246630 () Unit!54453)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!34 (List!38190 List!38190 List!38190 List!38190) Unit!54453)

(assert (=> b!3615280 (= lt!1246630 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!34 lt!1246665 suffix!1395 lt!1246651 lt!1246631))))

(assert (=> b!3615280 (contains!7375 lt!1246651 lt!1246650)))

(declare-fun c!625478 () Bool)

(assert (=> b!3615280 (= c!625478 (isSeparator!5656 rule!403))))

(declare-fun b!3615281 () Bool)

(declare-fun Unit!54464 () Unit!54453)

(assert (=> b!3615281 (= e!2237578 Unit!54464)))

(declare-fun lt!1246677 () Unit!54453)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!150 (List!38190) Unit!54453)

(assert (=> b!3615281 (= lt!1246677 (lemmaGetSuffixOnListWithItSelfIsEmpty!150 lt!1246665))))

(assert (=> b!3615281 (isEmpty!22486 (getSuffix!1594 lt!1246665 lt!1246665))))

(declare-fun lt!1246661 () Unit!54453)

(assert (=> b!3615281 (= lt!1246661 (lemmaMaxPrefNoSmallerRuleMatches!190 thiss!23823 rules!3307 rule!403 lt!1246665 lt!1246665 (rule!8412 (_1!22110 lt!1246660))))))

(declare-fun res!1462733 () Bool)

(assert (=> b!3615281 (= res!1462733 (not (matchR!4984 (regex!5656 (rule!8412 (_1!22110 lt!1246660))) lt!1246665)))))

(assert (=> b!3615281 (=> (not res!1462733) (not e!2237612))))

(assert (=> b!3615281 e!2237612))

(declare-fun b!3615282 () Bool)

(declare-fun res!1462744 () Bool)

(assert (=> b!3615282 (=> (not res!1462744) (not e!2237613))))

(declare-fun isEmpty!22487 (List!38191) Bool)

(assert (=> b!3615282 (= res!1462744 (not (isEmpty!22487 rules!3307)))))

(declare-fun b!3615283 () Bool)

(declare-fun tp!1104778 () Bool)

(assert (=> b!3615283 (= e!2237604 (and tp!1104778 (inv!51446 (tag!6368 (rule!8412 token!511))) (inv!51450 (transformation!5656 (rule!8412 token!511))) e!2237598))))

(declare-fun b!3615284 () Bool)

(assert (=> b!3615284 false))

(declare-fun lt!1246667 () Unit!54453)

(assert (=> b!3615284 (= lt!1246667 call!261465)))

(assert (=> b!3615284 (not call!261463)))

(declare-fun lt!1246663 () Unit!54453)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!362 (LexerInterface!5245 List!38191 List!38191 Rule!11112 Rule!11112 C!21016) Unit!54453)

(assert (=> b!3615284 (= lt!1246663 (lemmaNonSepRuleNotContainsCharContainedInASepRule!362 thiss!23823 rules!3307 rules!3307 (rule!8412 (_1!22110 lt!1246660)) rule!403 lt!1246649))))

(declare-fun Unit!54465 () Unit!54453)

(assert (=> b!3615284 (= e!2237607 Unit!54465)))

(declare-fun b!3615285 () Bool)

(declare-fun e!2237596 () Bool)

(declare-fun tp!1104776 () Bool)

(assert (=> b!3615285 (= e!2237588 (and e!2237596 tp!1104776))))

(declare-fun b!3615286 () Bool)

(declare-fun e!2237581 () Bool)

(assert (=> b!3615286 (= e!2237613 e!2237581)))

(declare-fun res!1462746 () Bool)

(assert (=> b!3615286 (=> (not res!1462746) (not e!2237581))))

(declare-fun lt!1246634 () Option!7943)

(declare-fun isDefined!6175 (Option!7943) Bool)

(assert (=> b!3615286 (= res!1462746 (isDefined!6175 lt!1246634))))

(assert (=> b!3615286 (= lt!1246634 (maxPrefix!2779 thiss!23823 rules!3307 lt!1246665))))

(assert (=> b!3615286 (= lt!1246665 (list!14044 lt!1246662))))

(assert (=> b!3615286 (= lt!1246662 (charsOf!3670 token!511))))

(declare-fun b!3615287 () Bool)

(assert (=> b!3615287 false))

(declare-fun lt!1246656 () Unit!54453)

(assert (=> b!3615287 (= lt!1246656 call!261462)))

(assert (=> b!3615287 (not call!261466)))

(declare-fun lt!1246642 () Unit!54453)

(assert (=> b!3615287 (= lt!1246642 (lemmaNonSepRuleNotContainsCharContainedInASepRule!362 thiss!23823 rules!3307 rules!3307 (rule!8412 (_1!22110 lt!1246660)) anOtherTypeRule!33 lt!1246650))))

(declare-fun Unit!54466 () Unit!54453)

(assert (=> b!3615287 (= e!2237611 Unit!54466)))

(declare-fun bm!261461 () Bool)

(assert (=> bm!261461 (= call!261464 (usedCharacters!870 (regex!5656 (rule!8412 (_1!22110 lt!1246660)))))))

(declare-fun b!3615288 () Bool)

(declare-fun res!1462736 () Bool)

(assert (=> b!3615288 (=> res!1462736 e!2237585)))

(declare-fun sepAndNonSepRulesDisjointChars!1826 (List!38191 List!38191) Bool)

(assert (=> b!3615288 (= res!1462736 (not (sepAndNonSepRulesDisjointChars!1826 rules!3307 rules!3307)))))

(declare-fun b!3615289 () Bool)

(assert (=> b!3615289 (= e!2237581 e!2237606)))

(declare-fun res!1462750 () Bool)

(assert (=> b!3615289 (=> (not res!1462750) (not e!2237606))))

(assert (=> b!3615289 (= res!1462750 (= (_1!22110 lt!1246669) token!511))))

(assert (=> b!3615289 (= lt!1246669 (get!12381 lt!1246634))))

(declare-fun b!3615290 () Bool)

(assert (=> b!3615290 false))

(declare-fun lt!1246653 () Unit!54453)

(assert (=> b!3615290 (= lt!1246653 call!261462)))

(assert (=> b!3615290 (not call!261466)))

(declare-fun lt!1246676 () Unit!54453)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!244 (LexerInterface!5245 List!38191 List!38191 Rule!11112 Rule!11112 C!21016) Unit!54453)

(assert (=> b!3615290 (= lt!1246676 (lemmaSepRuleNotContainsCharContainedInANonSepRule!244 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8412 (_1!22110 lt!1246660)) lt!1246650))))

(declare-fun Unit!54467 () Unit!54453)

(assert (=> b!3615290 (= e!2237611 Unit!54467)))

(declare-fun b!3615291 () Bool)

(declare-fun Unit!54468 () Unit!54453)

(assert (=> b!3615291 (= e!2237607 Unit!54468)))

(declare-fun b!3615292 () Bool)

(assert (=> b!3615292 (= e!2237614 e!2237585)))

(declare-fun res!1462738 () Bool)

(assert (=> b!3615292 (=> res!1462738 e!2237585)))

(assert (=> b!3615292 (= res!1462738 (contains!7375 lt!1246680 lt!1246650))))

(assert (=> b!3615292 (= lt!1246650 (head!7620 suffix!1395))))

(assert (=> b!3615292 (= lt!1246680 (usedCharacters!870 (regex!5656 rule!403)))))

(declare-fun b!3615293 () Bool)

(assert (=> b!3615293 false))

(declare-fun lt!1246679 () Unit!54453)

(assert (=> b!3615293 (= lt!1246679 call!261465)))

(assert (=> b!3615293 (not call!261463)))

(declare-fun lt!1246632 () Unit!54453)

(assert (=> b!3615293 (= lt!1246632 (lemmaSepRuleNotContainsCharContainedInANonSepRule!244 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8412 (_1!22110 lt!1246660)) lt!1246649))))

(declare-fun Unit!54469 () Unit!54453)

(assert (=> b!3615293 (= e!2237609 Unit!54469)))

(declare-fun tp!1104773 () Bool)

(declare-fun b!3615294 () Bool)

(assert (=> b!3615294 (= e!2237596 (and tp!1104773 (inv!51446 (tag!6368 (h!43487 rules!3307))) (inv!51450 (transformation!5656 (h!43487 rules!3307))) e!2237603))))

(assert (= (and start!336638 res!1462741) b!3615282))

(assert (= (and b!3615282 res!1462744) b!3615274))

(assert (= (and b!3615274 res!1462747) b!3615248))

(assert (= (and b!3615248 res!1462729) b!3615255))

(assert (= (and b!3615255 res!1462742) b!3615272))

(assert (= (and b!3615272 res!1462749) b!3615286))

(assert (= (and b!3615286 res!1462746) b!3615289))

(assert (= (and b!3615289 res!1462750) b!3615263))

(assert (= (and b!3615263 res!1462735) b!3615251))

(assert (= (and b!3615251 res!1462740) b!3615250))

(assert (= (and b!3615250 (not res!1462732)) b!3615260))

(assert (= (and b!3615260 (not res!1462730)) b!3615292))

(assert (= (and b!3615292 (not res!1462738)) b!3615244))

(assert (= (and b!3615244 (not res!1462728)) b!3615288))

(assert (= (and b!3615288 (not res!1462736)) b!3615266))

(assert (= (and b!3615266 res!1462745) b!3615252))

(assert (= (and b!3615252 res!1462739) b!3615243))

(assert (= (and b!3615266 (not res!1462734)) b!3615268))

(assert (= (and b!3615268 (not res!1462731)) b!3615276))

(assert (= (and b!3615276 (not res!1462737)) b!3615270))

(assert (= (and b!3615270 (not res!1462748)) b!3615269))

(assert (= (and b!3615269 c!625474) b!3615267))

(assert (= (and b!3615269 (not c!625474)) b!3615271))

(assert (= (and b!3615269 c!625480) b!3615253))

(assert (= (and b!3615269 (not c!625480)) b!3615258))

(assert (= (and b!3615253 c!625481) b!3615284))

(assert (= (and b!3615253 (not c!625481)) b!3615291))

(assert (= (and b!3615258 c!625473) b!3615293))

(assert (= (and b!3615258 (not c!625473)) b!3615278))

(assert (= (or b!3615284 b!3615293) bm!261460))

(assert (= (or b!3615284 b!3615293) bm!261457))

(assert (= (or b!3615284 b!3615293) bm!261459))

(assert (= (and b!3615269 c!625476) b!3615280))

(assert (= (and b!3615269 (not c!625476)) b!3615249))

(assert (= (and b!3615280 c!625478) b!3615290))

(assert (= (and b!3615280 (not c!625478)) b!3615287))

(assert (= (or b!3615290 b!3615287) bm!261458))

(assert (= (or b!3615290 b!3615287) bm!261461))

(assert (= (or b!3615290 b!3615287) bm!261456))

(assert (= (and b!3615269 c!625479) b!3615247))

(assert (= (and b!3615269 (not c!625479)) b!3615246))

(assert (= (and b!3615269 (not res!1462743)) b!3615264))

(assert (= (and b!3615264 c!625477) b!3615281))

(assert (= (and b!3615264 (not c!625477)) b!3615257))

(assert (= (and b!3615281 res!1462733) b!3615275))

(assert (= (and b!3615264 c!625475) b!3615259))

(assert (= (and b!3615264 (not c!625475)) b!3615273))

(assert (= b!3615294 b!3615277))

(assert (= b!3615285 b!3615294))

(assert (= (and start!336638 ((_ is Cons!38067) rules!3307)) b!3615285))

(assert (= (and start!336638 ((_ is Cons!38066) suffix!1395)) b!3615256))

(assert (= b!3615283 b!3615265))

(assert (= b!3615262 b!3615283))

(assert (= start!336638 b!3615262))

(assert (= b!3615261 b!3615254))

(assert (= start!336638 b!3615261))

(assert (= b!3615279 b!3615245))

(assert (= start!336638 b!3615279))

(declare-fun m!4113709 () Bool)

(assert (=> b!3615269 m!4113709))

(declare-fun m!4113711 () Bool)

(assert (=> b!3615269 m!4113711))

(declare-fun m!4113713 () Bool)

(assert (=> b!3615269 m!4113713))

(declare-fun m!4113715 () Bool)

(assert (=> b!3615269 m!4113715))

(declare-fun m!4113717 () Bool)

(assert (=> bm!261457 m!4113717))

(declare-fun m!4113719 () Bool)

(assert (=> b!3615263 m!4113719))

(declare-fun m!4113721 () Bool)

(assert (=> b!3615267 m!4113721))

(declare-fun m!4113723 () Bool)

(assert (=> b!3615274 m!4113723))

(declare-fun m!4113725 () Bool)

(assert (=> b!3615286 m!4113725))

(declare-fun m!4113727 () Bool)

(assert (=> b!3615286 m!4113727))

(declare-fun m!4113729 () Bool)

(assert (=> b!3615286 m!4113729))

(declare-fun m!4113731 () Bool)

(assert (=> b!3615286 m!4113731))

(declare-fun m!4113733 () Bool)

(assert (=> b!3615281 m!4113733))

(declare-fun m!4113735 () Bool)

(assert (=> b!3615281 m!4113735))

(assert (=> b!3615281 m!4113733))

(declare-fun m!4113737 () Bool)

(assert (=> b!3615281 m!4113737))

(declare-fun m!4113739 () Bool)

(assert (=> b!3615281 m!4113739))

(declare-fun m!4113741 () Bool)

(assert (=> b!3615281 m!4113741))

(declare-fun m!4113743 () Bool)

(assert (=> b!3615283 m!4113743))

(declare-fun m!4113745 () Bool)

(assert (=> b!3615283 m!4113745))

(declare-fun m!4113747 () Bool)

(assert (=> b!3615288 m!4113747))

(declare-fun m!4113749 () Bool)

(assert (=> b!3615250 m!4113749))

(declare-fun m!4113751 () Bool)

(assert (=> b!3615250 m!4113751))

(declare-fun m!4113753 () Bool)

(assert (=> b!3615250 m!4113753))

(declare-fun m!4113755 () Bool)

(assert (=> bm!261456 m!4113755))

(declare-fun m!4113757 () Bool)

(assert (=> b!3615289 m!4113757))

(declare-fun m!4113759 () Bool)

(assert (=> b!3615262 m!4113759))

(declare-fun m!4113761 () Bool)

(assert (=> b!3615266 m!4113761))

(declare-fun m!4113763 () Bool)

(assert (=> b!3615266 m!4113763))

(declare-fun m!4113765 () Bool)

(assert (=> b!3615266 m!4113765))

(declare-fun m!4113767 () Bool)

(assert (=> b!3615266 m!4113767))

(declare-fun m!4113769 () Bool)

(assert (=> b!3615266 m!4113769))

(declare-fun m!4113771 () Bool)

(assert (=> b!3615266 m!4113771))

(declare-fun m!4113773 () Bool)

(assert (=> b!3615266 m!4113773))

(declare-fun m!4113775 () Bool)

(assert (=> b!3615266 m!4113775))

(declare-fun m!4113777 () Bool)

(assert (=> b!3615266 m!4113777))

(declare-fun m!4113779 () Bool)

(assert (=> b!3615266 m!4113779))

(declare-fun m!4113781 () Bool)

(assert (=> b!3615266 m!4113781))

(declare-fun m!4113783 () Bool)

(assert (=> b!3615266 m!4113783))

(declare-fun m!4113785 () Bool)

(assert (=> b!3615266 m!4113785))

(declare-fun m!4113787 () Bool)

(assert (=> b!3615266 m!4113787))

(assert (=> b!3615266 m!4113781))

(declare-fun m!4113789 () Bool)

(assert (=> b!3615266 m!4113789))

(declare-fun m!4113791 () Bool)

(assert (=> b!3615259 m!4113791))

(declare-fun m!4113793 () Bool)

(assert (=> b!3615247 m!4113793))

(declare-fun m!4113795 () Bool)

(assert (=> b!3615261 m!4113795))

(declare-fun m!4113797 () Bool)

(assert (=> b!3615261 m!4113797))

(declare-fun m!4113799 () Bool)

(assert (=> b!3615244 m!4113799))

(assert (=> b!3615244 m!4113799))

(declare-fun m!4113801 () Bool)

(assert (=> b!3615244 m!4113801))

(declare-fun m!4113803 () Bool)

(assert (=> b!3615264 m!4113803))

(declare-fun m!4113805 () Bool)

(assert (=> b!3615264 m!4113805))

(declare-fun m!4113807 () Bool)

(assert (=> b!3615264 m!4113807))

(declare-fun m!4113809 () Bool)

(assert (=> b!3615293 m!4113809))

(declare-fun m!4113811 () Bool)

(assert (=> bm!261459 m!4113811))

(assert (=> b!3615252 m!4113765))

(assert (=> b!3615252 m!4113765))

(declare-fun m!4113813 () Bool)

(assert (=> b!3615252 m!4113813))

(assert (=> b!3615252 m!4113813))

(declare-fun m!4113815 () Bool)

(assert (=> b!3615252 m!4113815))

(declare-fun m!4113817 () Bool)

(assert (=> b!3615252 m!4113817))

(declare-fun m!4113819 () Bool)

(assert (=> bm!261460 m!4113819))

(assert (=> bm!261461 m!4113717))

(declare-fun m!4113821 () Bool)

(assert (=> start!336638 m!4113821))

(declare-fun m!4113823 () Bool)

(assert (=> b!3615248 m!4113823))

(declare-fun m!4113825 () Bool)

(assert (=> bm!261458 m!4113825))

(declare-fun m!4113827 () Bool)

(assert (=> b!3615284 m!4113827))

(declare-fun m!4113829 () Bool)

(assert (=> b!3615282 m!4113829))

(declare-fun m!4113831 () Bool)

(assert (=> b!3615276 m!4113831))

(declare-fun m!4113833 () Bool)

(assert (=> b!3615276 m!4113833))

(declare-fun m!4113835 () Bool)

(assert (=> b!3615276 m!4113835))

(declare-fun m!4113837 () Bool)

(assert (=> b!3615276 m!4113837))

(declare-fun m!4113839 () Bool)

(assert (=> b!3615276 m!4113839))

(assert (=> b!3615276 m!4113837))

(declare-fun m!4113841 () Bool)

(assert (=> b!3615276 m!4113841))

(declare-fun m!4113843 () Bool)

(assert (=> b!3615268 m!4113843))

(declare-fun m!4113845 () Bool)

(assert (=> b!3615287 m!4113845))

(declare-fun m!4113847 () Bool)

(assert (=> b!3615292 m!4113847))

(declare-fun m!4113849 () Bool)

(assert (=> b!3615292 m!4113849))

(declare-fun m!4113851 () Bool)

(assert (=> b!3615292 m!4113851))

(declare-fun m!4113853 () Bool)

(assert (=> b!3615270 m!4113853))

(declare-fun m!4113855 () Bool)

(assert (=> b!3615270 m!4113855))

(declare-fun m!4113857 () Bool)

(assert (=> b!3615270 m!4113857))

(declare-fun m!4113859 () Bool)

(assert (=> b!3615270 m!4113859))

(declare-fun m!4113861 () Bool)

(assert (=> b!3615270 m!4113861))

(declare-fun m!4113863 () Bool)

(assert (=> b!3615270 m!4113863))

(declare-fun m!4113865 () Bool)

(assert (=> b!3615270 m!4113865))

(assert (=> b!3615270 m!4113857))

(declare-fun m!4113867 () Bool)

(assert (=> b!3615294 m!4113867))

(declare-fun m!4113869 () Bool)

(assert (=> b!3615294 m!4113869))

(declare-fun m!4113871 () Bool)

(assert (=> b!3615279 m!4113871))

(declare-fun m!4113873 () Bool)

(assert (=> b!3615279 m!4113873))

(declare-fun m!4113875 () Bool)

(assert (=> b!3615280 m!4113875))

(declare-fun m!4113877 () Bool)

(assert (=> b!3615280 m!4113877))

(declare-fun m!4113879 () Bool)

(assert (=> b!3615260 m!4113879))

(declare-fun m!4113881 () Bool)

(assert (=> b!3615290 m!4113881))

(declare-fun m!4113883 () Bool)

(assert (=> b!3615255 m!4113883))

(check-sat (not b_next!94763) tp_is_empty!17913 (not b_next!94767) (not b!3615252) (not b_next!94765) (not b!3615262) (not b!3615282) b_and!263963 (not b!3615281) (not b!3615292) (not b_next!94761) (not b!3615250) (not b!3615267) (not b_next!94753) (not b!3615280) (not start!336638) (not b_next!94755) (not b!3615260) (not b!3615288) (not b!3615270) (not b!3615283) (not b!3615289) b_and!263967 (not bm!261458) (not b!3615284) (not bm!261457) (not b!3615276) (not b!3615256) (not b!3615294) (not b_next!94759) (not bm!261460) b_and!263955 b_and!263965 (not b!3615279) b_and!263957 b_and!263961 (not b!3615248) (not b!3615266) (not b!3615268) (not b!3615244) (not b!3615261) b_and!263959 (not bm!261456) (not b!3615290) (not b!3615287) (not b!3615255) (not bm!261461) (not bm!261459) (not b!3615274) (not b!3615247) (not b!3615263) (not b!3615293) (not b!3615286) (not b!3615264) b_and!263969 (not b!3615269) (not b_next!94757) (not b!3615259) (not b!3615285))
(check-sat (not b_next!94761) (not b_next!94753) (not b_next!94755) b_and!263967 (not b_next!94763) (not b_next!94767) b_and!263965 (not b_next!94765) b_and!263959 b_and!263969 (not b_next!94757) b_and!263963 b_and!263955 (not b_next!94759) b_and!263957 b_and!263961)
