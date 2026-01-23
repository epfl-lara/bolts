; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336642 () Bool)

(assert start!336642)

(declare-fun b!3615583 () Bool)

(declare-fun b_free!94081 () Bool)

(declare-fun b_next!94785 () Bool)

(assert (=> b!3615583 (= b_free!94081 (not b_next!94785))))

(declare-fun tp!1104865 () Bool)

(declare-fun b_and!263987 () Bool)

(assert (=> b!3615583 (= tp!1104865 b_and!263987)))

(declare-fun b_free!94083 () Bool)

(declare-fun b_next!94787 () Bool)

(assert (=> b!3615583 (= b_free!94083 (not b_next!94787))))

(declare-fun tp!1104874 () Bool)

(declare-fun b_and!263989 () Bool)

(assert (=> b!3615583 (= tp!1104874 b_and!263989)))

(declare-fun b!3615577 () Bool)

(declare-fun b_free!94085 () Bool)

(declare-fun b_next!94789 () Bool)

(assert (=> b!3615577 (= b_free!94085 (not b_next!94789))))

(declare-fun tp!1104873 () Bool)

(declare-fun b_and!263991 () Bool)

(assert (=> b!3615577 (= tp!1104873 b_and!263991)))

(declare-fun b_free!94087 () Bool)

(declare-fun b_next!94791 () Bool)

(assert (=> b!3615577 (= b_free!94087 (not b_next!94791))))

(declare-fun tp!1104861 () Bool)

(declare-fun b_and!263993 () Bool)

(assert (=> b!3615577 (= tp!1104861 b_and!263993)))

(declare-fun b!3615584 () Bool)

(declare-fun b_free!94089 () Bool)

(declare-fun b_next!94793 () Bool)

(assert (=> b!3615584 (= b_free!94089 (not b_next!94793))))

(declare-fun tp!1104871 () Bool)

(declare-fun b_and!263995 () Bool)

(assert (=> b!3615584 (= tp!1104871 b_and!263995)))

(declare-fun b_free!94091 () Bool)

(declare-fun b_next!94795 () Bool)

(assert (=> b!3615584 (= b_free!94091 (not b_next!94795))))

(declare-fun tp!1104860 () Bool)

(declare-fun b_and!263997 () Bool)

(assert (=> b!3615584 (= tp!1104860 b_and!263997)))

(declare-fun b!3615578 () Bool)

(declare-fun b_free!94093 () Bool)

(declare-fun b_next!94797 () Bool)

(assert (=> b!3615578 (= b_free!94093 (not b_next!94797))))

(declare-fun tp!1104866 () Bool)

(declare-fun b_and!263999 () Bool)

(assert (=> b!3615578 (= tp!1104866 b_and!263999)))

(declare-fun b_free!94095 () Bool)

(declare-fun b_next!94799 () Bool)

(assert (=> b!3615578 (= b_free!94095 (not b_next!94799))))

(declare-fun tp!1104864 () Bool)

(declare-fun b_and!264001 () Bool)

(assert (=> b!3615578 (= tp!1104864 b_and!264001)))

(declare-fun b!3615560 () Bool)

(declare-fun res!1462866 () Bool)

(declare-fun e!2237836 () Bool)

(assert (=> b!3615560 (=> (not res!1462866) (not e!2237836))))

(declare-datatypes ((List!38195 0))(
  ( (Nil!38071) (Cons!38071 (h!43491 (_ BitVec 16)) (t!293726 List!38195)) )
))
(declare-datatypes ((TokenValue!5888 0))(
  ( (FloatLiteralValue!11776 (text!41661 List!38195)) (TokenValueExt!5887 (__x!23993 Int)) (Broken!29440 (value!181687 List!38195)) (Object!6011) (End!5888) (Def!5888) (Underscore!5888) (Match!5888) (Else!5888) (Error!5888) (Case!5888) (If!5888) (Extends!5888) (Abstract!5888) (Class!5888) (Val!5888) (DelimiterValue!11776 (del!5948 List!38195)) (KeywordValue!5894 (value!181688 List!38195)) (CommentValue!11776 (value!181689 List!38195)) (WhitespaceValue!11776 (value!181690 List!38195)) (IndentationValue!5888 (value!181691 List!38195)) (String!42773) (Int32!5888) (Broken!29441 (value!181692 List!38195)) (Boolean!5889) (Unit!54490) (OperatorValue!5891 (op!5948 List!38195)) (IdentifierValue!11776 (value!181693 List!38195)) (IdentifierValue!11777 (value!181694 List!38195)) (WhitespaceValue!11777 (value!181695 List!38195)) (True!11776) (False!11776) (Broken!29442 (value!181696 List!38195)) (Broken!29443 (value!181697 List!38195)) (True!11777) (RightBrace!5888) (RightBracket!5888) (Colon!5888) (Null!5888) (Comma!5888) (LeftBracket!5888) (False!11777) (LeftBrace!5888) (ImaginaryLiteralValue!5888 (text!41662 List!38195)) (StringLiteralValue!17664 (value!181698 List!38195)) (EOFValue!5888 (value!181699 List!38195)) (IdentValue!5888 (value!181700 List!38195)) (DelimiterValue!11777 (value!181701 List!38195)) (DedentValue!5888 (value!181702 List!38195)) (NewLineValue!5888 (value!181703 List!38195)) (IntegerValue!17664 (value!181704 (_ BitVec 32)) (text!41663 List!38195)) (IntegerValue!17665 (value!181705 Int) (text!41664 List!38195)) (Times!5888) (Or!5888) (Equal!5888) (Minus!5888) (Broken!29444 (value!181706 List!38195)) (And!5888) (Div!5888) (LessEqual!5888) (Mod!5888) (Concat!16305) (Not!5888) (Plus!5888) (SpaceValue!5888 (value!181707 List!38195)) (IntegerValue!17666 (value!181708 Int) (text!41665 List!38195)) (StringLiteralValue!17665 (text!41666 List!38195)) (FloatLiteralValue!11777 (text!41667 List!38195)) (BytesLiteralValue!5888 (value!181709 List!38195)) (CommentValue!11777 (value!181710 List!38195)) (StringLiteralValue!17666 (value!181711 List!38195)) (ErrorTokenValue!5888 (msg!5949 List!38195)) )
))
(declare-datatypes ((C!21020 0))(
  ( (C!21021 (val!12558 Int)) )
))
(declare-datatypes ((Regex!10417 0))(
  ( (ElementMatch!10417 (c!625548 C!21020)) (Concat!16306 (regOne!21346 Regex!10417) (regTwo!21346 Regex!10417)) (EmptyExpr!10417) (Star!10417 (reg!10746 Regex!10417)) (EmptyLang!10417) (Union!10417 (regOne!21347 Regex!10417) (regTwo!21347 Regex!10417)) )
))
(declare-datatypes ((String!42774 0))(
  ( (String!42775 (value!181712 String)) )
))
(declare-datatypes ((List!38196 0))(
  ( (Nil!38072) (Cons!38072 (h!43492 C!21020) (t!293727 List!38196)) )
))
(declare-datatypes ((IArray!23215 0))(
  ( (IArray!23216 (innerList!11665 List!38196)) )
))
(declare-datatypes ((Conc!11605 0))(
  ( (Node!11605 (left!29736 Conc!11605) (right!30066 Conc!11605) (csize!23440 Int) (cheight!11816 Int)) (Leaf!18045 (xs!14807 IArray!23215) (csize!23441 Int)) (Empty!11605) )
))
(declare-datatypes ((BalanceConc!22824 0))(
  ( (BalanceConc!22825 (c!625549 Conc!11605)) )
))
(declare-datatypes ((TokenValueInjection!11204 0))(
  ( (TokenValueInjection!11205 (toValue!7942 Int) (toChars!7801 Int)) )
))
(declare-datatypes ((Rule!11116 0))(
  ( (Rule!11117 (regex!5658 Regex!10417) (tag!6370 String!42774) (isSeparator!5658 Bool) (transformation!5658 TokenValueInjection!11204)) )
))
(declare-datatypes ((List!38197 0))(
  ( (Nil!38073) (Cons!38073 (h!43493 Rule!11116) (t!293728 List!38197)) )
))
(declare-fun rules!3307 () List!38197)

(declare-fun rule!403 () Rule!11116)

(declare-fun contains!7379 (List!38197 Rule!11116) Bool)

(assert (=> b!3615560 (= res!1462866 (contains!7379 rules!3307 rule!403))))

(declare-fun b!3615561 () Bool)

(declare-fun res!1462876 () Bool)

(declare-fun e!2237808 () Bool)

(assert (=> b!3615561 (=> res!1462876 e!2237808)))

(declare-fun sepAndNonSepRulesDisjointChars!1828 (List!38197 List!38197) Bool)

(assert (=> b!3615561 (= res!1462876 (not (sepAndNonSepRulesDisjointChars!1828 rules!3307 rules!3307)))))

(declare-fun bm!261492 () Bool)

(declare-fun call!261498 () List!38196)

(declare-datatypes ((Token!10682 0))(
  ( (Token!10683 (value!181713 TokenValue!5888) (rule!8414 Rule!11116) (size!29037 Int) (originalCharacters!6372 List!38196)) )
))
(declare-datatypes ((tuple2!37956 0))(
  ( (tuple2!37957 (_1!22112 Token!10682) (_2!22112 List!38196)) )
))
(declare-fun lt!1246993 () tuple2!37956)

(declare-fun usedCharacters!872 (Regex!10417) List!38196)

(assert (=> bm!261492 (= call!261498 (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3615563 () Bool)

(assert (=> b!3615563 false))

(declare-datatypes ((Unit!54491 0))(
  ( (Unit!54492) )
))
(declare-fun lt!1246975 () Unit!54491)

(declare-fun call!261499 () Unit!54491)

(assert (=> b!3615563 (= lt!1246975 call!261499)))

(declare-fun call!261500 () Bool)

(assert (=> b!3615563 (not call!261500)))

(declare-fun lt!1247004 () C!21020)

(declare-fun lt!1246981 () Unit!54491)

(declare-datatypes ((LexerInterface!5247 0))(
  ( (LexerInterfaceExt!5244 (__x!23994 Int)) (Lexer!5245) )
))
(declare-fun thiss!23823 () LexerInterface!5247)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!246 (LexerInterface!5247 List!38197 List!38197 Rule!11116 Rule!11116 C!21020) Unit!54491)

(assert (=> b!3615563 (= lt!1246981 (lemmaSepRuleNotContainsCharContainedInANonSepRule!246 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8414 (_1!22112 lt!1246993)) lt!1247004))))

(declare-fun e!2237815 () Unit!54491)

(declare-fun Unit!54493 () Unit!54491)

(assert (=> b!3615563 (= e!2237815 Unit!54493)))

(declare-fun b!3615564 () Bool)

(declare-fun e!2237833 () Bool)

(declare-fun e!2237825 () Bool)

(assert (=> b!3615564 (= e!2237833 e!2237825)))

(declare-fun res!1462873 () Bool)

(assert (=> b!3615564 (=> res!1462873 e!2237825)))

(declare-fun lt!1246985 () TokenValue!5888)

(declare-fun lt!1246967 () Int)

(declare-datatypes ((Option!7946 0))(
  ( (None!7945) (Some!7945 (v!37699 tuple2!37956)) )
))
(declare-fun lt!1246999 () Option!7946)

(declare-fun lt!1246973 () List!38196)

(assert (=> b!3615564 (= res!1462873 (not (= lt!1246999 (Some!7945 (tuple2!37957 (Token!10683 lt!1246985 (rule!8414 (_1!22112 lt!1246993)) lt!1246967 lt!1246973) (_2!22112 lt!1246993))))))))

(declare-fun lt!1246994 () BalanceConc!22824)

(declare-fun size!29038 (BalanceConc!22824) Int)

(assert (=> b!3615564 (= lt!1246967 (size!29038 lt!1246994))))

(declare-fun apply!9164 (TokenValueInjection!11204 BalanceConc!22824) TokenValue!5888)

(assert (=> b!3615564 (= lt!1246985 (apply!9164 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246994))))

(declare-fun lt!1246979 () Unit!54491)

(declare-fun lemmaCharactersSize!711 (Token!10682) Unit!54491)

(assert (=> b!3615564 (= lt!1246979 (lemmaCharactersSize!711 (_1!22112 lt!1246993)))))

(declare-fun lt!1247001 () Unit!54491)

(declare-fun lemmaEqSameImage!849 (TokenValueInjection!11204 BalanceConc!22824 BalanceConc!22824) Unit!54491)

(declare-fun seqFromList!4211 (List!38196) BalanceConc!22824)

(assert (=> b!3615564 (= lt!1247001 (lemmaEqSameImage!849 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246994 (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993)))))))

(declare-fun lt!1246980 () Unit!54491)

(declare-fun lemmaSemiInverse!1415 (TokenValueInjection!11204 BalanceConc!22824) Unit!54491)

(assert (=> b!3615564 (= lt!1246980 (lemmaSemiInverse!1415 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246994))))

(declare-fun b!3615565 () Bool)

(declare-fun e!2237826 () Bool)

(assert (=> b!3615565 (= e!2237826 false)))

(declare-fun b!3615566 () Bool)

(declare-fun res!1462882 () Bool)

(assert (=> b!3615566 (=> (not res!1462882) (not e!2237836))))

(declare-fun anOtherTypeRule!33 () Rule!11116)

(assert (=> b!3615566 (= res!1462882 (contains!7379 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2237809 () Bool)

(declare-fun b!3615567 () Bool)

(declare-fun tp!1104863 () Bool)

(declare-fun e!2237811 () Bool)

(declare-fun inv!51453 (String!42774) Bool)

(declare-fun inv!51456 (TokenValueInjection!11204) Bool)

(assert (=> b!3615567 (= e!2237811 (and tp!1104863 (inv!51453 (tag!6370 anOtherTypeRule!33)) (inv!51456 (transformation!5658 anOtherTypeRule!33)) e!2237809))))

(declare-fun b!3615568 () Bool)

(declare-fun e!2237823 () Unit!54491)

(declare-fun Unit!54494 () Unit!54491)

(assert (=> b!3615568 (= e!2237823 Unit!54494)))

(declare-fun e!2237834 () Bool)

(declare-fun tp!1104862 () Bool)

(declare-fun b!3615569 () Bool)

(declare-fun e!2237818 () Bool)

(assert (=> b!3615569 (= e!2237818 (and tp!1104862 (inv!51453 (tag!6370 (h!43493 rules!3307))) (inv!51456 (transformation!5658 (h!43493 rules!3307))) e!2237834))))

(declare-fun b!3615570 () Bool)

(declare-fun e!2237819 () Unit!54491)

(declare-fun Unit!54495 () Unit!54491)

(assert (=> b!3615570 (= e!2237819 Unit!54495)))

(declare-fun b!3615571 () Bool)

(declare-fun res!1462863 () Bool)

(assert (=> b!3615571 (=> (not res!1462863) (not e!2237836))))

(assert (=> b!3615571 (= res!1462863 (not (= (isSeparator!5658 anOtherTypeRule!33) (isSeparator!5658 rule!403))))))

(declare-fun bm!261493 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (Regex!10417 List!38196 C!21020) Unit!54491)

(assert (=> bm!261493 (= call!261499 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973 lt!1247004))))

(declare-fun e!2237829 () Bool)

(declare-fun e!2237828 () Bool)

(declare-fun b!3615572 () Bool)

(declare-fun token!511 () Token!10682)

(declare-fun tp!1104869 () Bool)

(assert (=> b!3615572 (= e!2237828 (and tp!1104869 (inv!51453 (tag!6370 (rule!8414 token!511))) (inv!51456 (transformation!5658 (rule!8414 token!511))) e!2237829))))

(declare-fun bm!261494 () Bool)

(declare-fun call!261502 () Bool)

(declare-fun lt!1246965 () C!21020)

(declare-fun contains!7380 (List!38196 C!21020) Bool)

(assert (=> bm!261494 (= call!261502 (contains!7380 call!261498 lt!1246965))))

(declare-fun b!3615573 () Bool)

(declare-fun e!2237805 () Bool)

(declare-fun tp_is_empty!17917 () Bool)

(declare-fun tp!1104872 () Bool)

(assert (=> b!3615573 (= e!2237805 (and tp_is_empty!17917 tp!1104872))))

(declare-fun b!3615574 () Bool)

(assert (=> b!3615574 e!2237826))

(declare-fun res!1462867 () Bool)

(assert (=> b!3615574 (=> (not res!1462867) (not e!2237826))))

(declare-fun lt!1246984 () List!38196)

(declare-fun matchR!4986 (Regex!10417 List!38196) Bool)

(assert (=> b!3615574 (= res!1462867 (not (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246984)))))

(declare-fun lt!1247000 () Unit!54491)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!192 (LexerInterface!5247 List!38197 Rule!11116 List!38196 List!38196 Rule!11116) Unit!54491)

(assert (=> b!3615574 (= lt!1247000 (lemmaMaxPrefNoSmallerRuleMatches!192 thiss!23823 rules!3307 rule!403 lt!1246984 lt!1246984 (rule!8414 (_1!22112 lt!1246993))))))

(declare-fun isEmpty!22490 (List!38196) Bool)

(declare-fun getSuffix!1596 (List!38196 List!38196) List!38196)

(assert (=> b!3615574 (isEmpty!22490 (getSuffix!1596 lt!1246984 lt!1246984))))

(declare-fun lt!1246968 () Unit!54491)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!152 (List!38196) Unit!54491)

(assert (=> b!3615574 (= lt!1246968 (lemmaGetSuffixOnListWithItSelfIsEmpty!152 lt!1246984))))

(declare-fun Unit!54496 () Unit!54491)

(assert (=> b!3615574 (= e!2237823 Unit!54496)))

(declare-fun b!3615575 () Bool)

(declare-fun e!2237810 () Bool)

(declare-fun lt!1246962 () Rule!11116)

(assert (=> b!3615575 (= e!2237810 (= (rule!8414 (_1!22112 lt!1246993)) lt!1246962))))

(declare-fun b!3615562 () Bool)

(declare-fun res!1462877 () Bool)

(assert (=> b!3615562 (=> res!1462877 e!2237808)))

(assert (=> b!3615562 (= res!1462877 (not (contains!7380 (usedCharacters!872 (regex!5658 anOtherTypeRule!33)) lt!1246965)))))

(declare-fun res!1462865 () Bool)

(assert (=> start!336642 (=> (not res!1462865) (not e!2237836))))

(get-info :version)

(assert (=> start!336642 (= res!1462865 ((_ is Lexer!5245) thiss!23823))))

(assert (=> start!336642 e!2237836))

(declare-fun e!2237813 () Bool)

(assert (=> start!336642 e!2237813))

(assert (=> start!336642 e!2237805))

(assert (=> start!336642 true))

(declare-fun e!2237803 () Bool)

(declare-fun inv!51457 (Token!10682) Bool)

(assert (=> start!336642 (and (inv!51457 token!511) e!2237803)))

(declare-fun e!2237812 () Bool)

(assert (=> start!336642 e!2237812))

(assert (=> start!336642 e!2237811))

(declare-fun b!3615576 () Bool)

(declare-fun res!1462869 () Bool)

(declare-fun e!2237831 () Bool)

(assert (=> b!3615576 (=> (not res!1462869) (not e!2237831))))

(assert (=> b!3615576 (= res!1462869 (= (rule!8414 token!511) rule!403))))

(assert (=> b!3615577 (= e!2237809 (and tp!1104873 tp!1104861))))

(assert (=> b!3615578 (= e!2237829 (and tp!1104866 tp!1104864))))

(declare-fun b!3615579 () Bool)

(assert (=> b!3615579 false))

(declare-fun lt!1247005 () Unit!54491)

(declare-fun lt!1247011 () List!38196)

(assert (=> b!3615579 (= lt!1247005 (lemmaMaxPrefNoSmallerRuleMatches!192 thiss!23823 rules!3307 (rule!8414 (_1!22112 lt!1246993)) lt!1246984 lt!1247011 rule!403))))

(declare-fun e!2237806 () Unit!54491)

(declare-fun Unit!54497 () Unit!54491)

(assert (=> b!3615579 (= e!2237806 Unit!54497)))

(declare-fun b!3615580 () Bool)

(declare-fun e!2237802 () Bool)

(assert (=> b!3615580 (= e!2237802 e!2237810)))

(declare-fun res!1462874 () Bool)

(assert (=> b!3615580 (=> (not res!1462874) (not e!2237810))))

(declare-fun list!14046 (BalanceConc!22824) List!38196)

(declare-fun charsOf!3672 (Token!10682) BalanceConc!22824)

(assert (=> b!3615580 (= res!1462874 (matchR!4986 (regex!5658 lt!1246962) (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))))))

(declare-datatypes ((Option!7947 0))(
  ( (None!7946) (Some!7946 (v!37700 Rule!11116)) )
))
(declare-fun lt!1246976 () Option!7947)

(declare-fun get!12385 (Option!7947) Rule!11116)

(assert (=> b!3615580 (= lt!1246962 (get!12385 lt!1246976))))

(declare-fun bm!261495 () Bool)

(declare-fun call!261501 () List!38196)

(assert (=> bm!261495 (= call!261501 (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3615581 () Bool)

(declare-fun e!2237824 () Bool)

(assert (=> b!3615581 (= e!2237825 e!2237824)))

(declare-fun res!1462875 () Bool)

(assert (=> b!3615581 (=> res!1462875 e!2237824)))

(declare-fun lt!1246986 () List!38196)

(declare-fun lt!1246998 () Option!7946)

(assert (=> b!3615581 (= res!1462875 (or (not (= lt!1246986 (_2!22112 lt!1246993))) (not (= lt!1246998 (Some!7945 (tuple2!37957 (_1!22112 lt!1246993) lt!1246986))))))))

(assert (=> b!3615581 (= (_2!22112 lt!1246993) lt!1246986)))

(declare-fun lt!1247009 () Unit!54491)

(declare-fun lemmaSamePrefixThenSameSuffix!1376 (List!38196 List!38196 List!38196 List!38196 List!38196) Unit!54491)

(assert (=> b!3615581 (= lt!1247009 (lemmaSamePrefixThenSameSuffix!1376 lt!1246973 (_2!22112 lt!1246993) lt!1246973 lt!1246986 lt!1247011))))

(assert (=> b!3615581 (= lt!1246986 (getSuffix!1596 lt!1247011 lt!1246973))))

(declare-fun lt!1246983 () Int)

(declare-fun lt!1246977 () TokenValue!5888)

(assert (=> b!3615581 (= lt!1246998 (Some!7945 (tuple2!37957 (Token!10683 lt!1246977 (rule!8414 (_1!22112 lt!1246993)) lt!1246983 lt!1246973) (_2!22112 lt!1246993))))))

(declare-fun maxPrefixOneRule!1925 (LexerInterface!5247 Rule!11116 List!38196) Option!7946)

(assert (=> b!3615581 (= lt!1246998 (maxPrefixOneRule!1925 thiss!23823 (rule!8414 (_1!22112 lt!1246993)) lt!1247011))))

(declare-fun size!29039 (List!38196) Int)

(assert (=> b!3615581 (= lt!1246983 (size!29039 lt!1246973))))

(assert (=> b!3615581 (= lt!1246977 (apply!9164 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) (seqFromList!4211 lt!1246973)))))

(declare-fun lt!1246995 () Unit!54491)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!997 (LexerInterface!5247 List!38197 List!38196 List!38196 List!38196 Rule!11116) Unit!54491)

(assert (=> b!3615581 (= lt!1246995 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!997 thiss!23823 rules!3307 lt!1246973 lt!1247011 (_2!22112 lt!1246993) (rule!8414 (_1!22112 lt!1246993))))))

(declare-fun b!3615582 () Bool)

(declare-fun e!2237816 () Unit!54491)

(declare-fun Unit!54498 () Unit!54491)

(assert (=> b!3615582 (= e!2237816 Unit!54498)))

(declare-fun lt!1246989 () Unit!54491)

(assert (=> b!3615582 (= lt!1246989 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (regex!5658 rule!403) lt!1246984 lt!1247004))))

(assert (=> b!3615582 false))

(declare-fun e!2237801 () Bool)

(assert (=> b!3615583 (= e!2237801 (and tp!1104865 tp!1104874))))

(declare-fun call!261497 () Unit!54491)

(declare-fun bm!261496 () Bool)

(assert (=> bm!261496 (= call!261497 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973 lt!1246965))))

(assert (=> b!3615584 (= e!2237834 (and tp!1104871 tp!1104860))))

(declare-fun b!3615585 () Bool)

(assert (=> b!3615585 (= e!2237808 e!2237833)))

(declare-fun res!1462881 () Bool)

(assert (=> b!3615585 (=> res!1462881 e!2237833)))

(declare-fun isPrefix!3021 (List!38196 List!38196) Bool)

(assert (=> b!3615585 (= res!1462881 (not (isPrefix!3021 lt!1246973 lt!1247011)))))

(declare-fun ++!9474 (List!38196 List!38196) List!38196)

(assert (=> b!3615585 (isPrefix!3021 lt!1246973 (++!9474 lt!1246973 (_2!22112 lt!1246993)))))

(declare-fun lt!1246988 () Unit!54491)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1942 (List!38196 List!38196) Unit!54491)

(assert (=> b!3615585 (= lt!1246988 (lemmaConcatTwoListThenFirstIsPrefix!1942 lt!1246973 (_2!22112 lt!1246993)))))

(assert (=> b!3615585 (= lt!1246973 (list!14046 lt!1246994))))

(assert (=> b!3615585 (= lt!1246994 (charsOf!3672 (_1!22112 lt!1246993)))))

(assert (=> b!3615585 e!2237802))

(declare-fun res!1462878 () Bool)

(assert (=> b!3615585 (=> (not res!1462878) (not e!2237802))))

(declare-fun isDefined!6178 (Option!7947) Bool)

(assert (=> b!3615585 (= res!1462878 (isDefined!6178 lt!1246976))))

(declare-fun getRuleFromTag!1264 (LexerInterface!5247 List!38197 String!42774) Option!7947)

(assert (=> b!3615585 (= lt!1246976 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun lt!1247012 () Unit!54491)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1264 (LexerInterface!5247 List!38197 List!38196 Token!10682) Unit!54491)

(assert (=> b!3615585 (= lt!1247012 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1264 thiss!23823 rules!3307 lt!1247011 (_1!22112 lt!1246993)))))

(declare-fun get!12386 (Option!7946) tuple2!37956)

(assert (=> b!3615585 (= lt!1246993 (get!12386 lt!1246999))))

(declare-fun suffix!1395 () List!38196)

(declare-fun lt!1247007 () Unit!54491)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!927 (LexerInterface!5247 List!38197 List!38196 List!38196) Unit!54491)

(assert (=> b!3615585 (= lt!1247007 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!927 thiss!23823 rules!3307 lt!1246984 suffix!1395))))

(declare-fun maxPrefix!2781 (LexerInterface!5247 List!38197 List!38196) Option!7946)

(assert (=> b!3615585 (= lt!1246999 (maxPrefix!2781 thiss!23823 rules!3307 lt!1247011))))

(assert (=> b!3615585 (isPrefix!3021 lt!1246984 lt!1247011)))

(declare-fun lt!1246961 () Unit!54491)

(assert (=> b!3615585 (= lt!1246961 (lemmaConcatTwoListThenFirstIsPrefix!1942 lt!1246984 suffix!1395))))

(assert (=> b!3615585 (= lt!1247011 (++!9474 lt!1246984 suffix!1395))))

(declare-fun b!3615586 () Bool)

(declare-fun e!2237820 () Unit!54491)

(declare-fun Unit!54499 () Unit!54491)

(assert (=> b!3615586 (= e!2237820 Unit!54499)))

(declare-fun lt!1247014 () Int)

(declare-fun getIndex!440 (List!38197 Rule!11116) Int)

(assert (=> b!3615586 (= lt!1247014 (getIndex!440 rules!3307 (rule!8414 (_1!22112 lt!1246993))))))

(declare-fun lt!1246996 () Int)

(assert (=> b!3615586 (= lt!1246996 (getIndex!440 rules!3307 rule!403))))

(declare-fun c!625541 () Bool)

(assert (=> b!3615586 (= c!625541 (< lt!1247014 lt!1246996))))

(declare-fun lt!1246964 () Unit!54491)

(assert (=> b!3615586 (= lt!1246964 e!2237823)))

(declare-fun c!625542 () Bool)

(assert (=> b!3615586 (= c!625542 (< lt!1246996 lt!1247014))))

(declare-fun lt!1247008 () Unit!54491)

(assert (=> b!3615586 (= lt!1247008 e!2237806)))

(declare-fun lt!1246970 () Unit!54491)

(declare-fun lemmaSameIndexThenSameElement!208 (List!38197 Rule!11116 Rule!11116) Unit!54491)

(assert (=> b!3615586 (= lt!1246970 (lemmaSameIndexThenSameElement!208 rules!3307 (rule!8414 (_1!22112 lt!1246993)) rule!403))))

(assert (=> b!3615586 false))

(declare-fun b!3615587 () Bool)

(assert (=> b!3615587 false))

(declare-fun lt!1246966 () Unit!54491)

(assert (=> b!3615587 (= lt!1246966 call!261499)))

(assert (=> b!3615587 (not call!261500)))

(declare-fun lt!1247002 () Unit!54491)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!364 (LexerInterface!5247 List!38197 List!38197 Rule!11116 Rule!11116 C!21020) Unit!54491)

(assert (=> b!3615587 (= lt!1247002 (lemmaNonSepRuleNotContainsCharContainedInASepRule!364 thiss!23823 rules!3307 rules!3307 (rule!8414 (_1!22112 lt!1246993)) rule!403 lt!1247004))))

(declare-fun e!2237807 () Unit!54491)

(declare-fun Unit!54500 () Unit!54491)

(assert (=> b!3615587 (= e!2237807 Unit!54500)))

(declare-fun b!3615588 () Bool)

(declare-fun e!2237800 () Unit!54491)

(declare-fun Unit!54501 () Unit!54491)

(assert (=> b!3615588 (= e!2237800 Unit!54501)))

(declare-fun b!3615589 () Bool)

(declare-fun res!1462871 () Bool)

(declare-fun e!2237817 () Bool)

(assert (=> b!3615589 (=> res!1462871 e!2237817)))

(assert (=> b!3615589 (= res!1462871 (isEmpty!22490 suffix!1395))))

(declare-fun b!3615590 () Bool)

(declare-fun Unit!54502 () Unit!54491)

(assert (=> b!3615590 (= e!2237820 Unit!54502)))

(declare-fun b!3615591 () Bool)

(assert (=> b!3615591 (= e!2237817 e!2237808)))

(declare-fun res!1462880 () Bool)

(assert (=> b!3615591 (=> res!1462880 e!2237808)))

(declare-fun lt!1247006 () List!38196)

(assert (=> b!3615591 (= res!1462880 (contains!7380 lt!1247006 lt!1246965))))

(declare-fun head!7622 (List!38196) C!21020)

(assert (=> b!3615591 (= lt!1246965 (head!7622 suffix!1395))))

(assert (=> b!3615591 (= lt!1247006 (usedCharacters!872 (regex!5658 rule!403)))))

(declare-fun b!3615592 () Bool)

(declare-fun tp!1104868 () Bool)

(declare-fun inv!21 (TokenValue!5888) Bool)

(assert (=> b!3615592 (= e!2237803 (and (inv!21 (value!181713 token!511)) e!2237828 tp!1104868))))

(declare-fun b!3615593 () Bool)

(declare-fun e!2237835 () Unit!54491)

(assert (=> b!3615593 (= e!2237800 e!2237835)))

(declare-fun lt!1246971 () Unit!54491)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!36 (List!38196 List!38196 List!38196 List!38196) Unit!54491)

(assert (=> b!3615593 (= lt!1246971 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!36 lt!1246984 suffix!1395 lt!1246973 lt!1247011))))

(assert (=> b!3615593 (contains!7380 lt!1246973 lt!1246965)))

(declare-fun c!625540 () Bool)

(assert (=> b!3615593 (= c!625540 (isSeparator!5658 rule!403))))

(declare-fun b!3615594 () Bool)

(assert (=> b!3615594 false))

(declare-fun lt!1246992 () Unit!54491)

(assert (=> b!3615594 (= lt!1246992 call!261497)))

(assert (=> b!3615594 (not call!261502)))

(declare-fun lt!1247003 () Unit!54491)

(assert (=> b!3615594 (= lt!1247003 (lemmaNonSepRuleNotContainsCharContainedInASepRule!364 thiss!23823 rules!3307 rules!3307 (rule!8414 (_1!22112 lt!1246993)) anOtherTypeRule!33 lt!1246965))))

(declare-fun Unit!54503 () Unit!54491)

(assert (=> b!3615594 (= e!2237835 Unit!54503)))

(declare-fun b!3615595 () Bool)

(declare-fun tp!1104867 () Bool)

(assert (=> b!3615595 (= e!2237813 (and e!2237818 tp!1104867))))

(declare-fun b!3615596 () Bool)

(declare-fun e!2237822 () Bool)

(assert (=> b!3615596 (= e!2237836 e!2237822)))

(declare-fun res!1462870 () Bool)

(assert (=> b!3615596 (=> (not res!1462870) (not e!2237822))))

(declare-fun lt!1246991 () Option!7946)

(declare-fun isDefined!6179 (Option!7946) Bool)

(assert (=> b!3615596 (= res!1462870 (isDefined!6179 lt!1246991))))

(assert (=> b!3615596 (= lt!1246991 (maxPrefix!2781 thiss!23823 rules!3307 lt!1246984))))

(declare-fun lt!1246997 () BalanceConc!22824)

(assert (=> b!3615596 (= lt!1246984 (list!14046 lt!1246997))))

(assert (=> b!3615596 (= lt!1246997 (charsOf!3672 token!511))))

(declare-fun b!3615597 () Bool)

(declare-fun Unit!54504 () Unit!54491)

(assert (=> b!3615597 (= e!2237819 Unit!54504)))

(declare-fun lt!1246990 () Unit!54491)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!306 (LexerInterface!5247 List!38197 Rule!11116 List!38196 List!38196 List!38196 Rule!11116) Unit!54491)

(assert (=> b!3615597 (= lt!1246990 (lemmaMaxPrefixOutputsMaxPrefix!306 thiss!23823 rules!3307 (rule!8414 (_1!22112 lt!1246993)) lt!1246973 lt!1247011 lt!1246984 rule!403))))

(assert (=> b!3615597 false))

(declare-fun tp!1104870 () Bool)

(declare-fun b!3615598 () Bool)

(assert (=> b!3615598 (= e!2237812 (and tp!1104870 (inv!51453 (tag!6370 rule!403)) (inv!51456 (transformation!5658 rule!403)) e!2237801))))

(declare-fun b!3615599 () Bool)

(declare-fun res!1462879 () Bool)

(assert (=> b!3615599 (=> (not res!1462879) (not e!2237836))))

(declare-fun rulesInvariant!4644 (LexerInterface!5247 List!38197) Bool)

(assert (=> b!3615599 (= res!1462879 (rulesInvariant!4644 thiss!23823 rules!3307))))

(declare-fun b!3615600 () Bool)

(declare-fun e!2237821 () Unit!54491)

(assert (=> b!3615600 (= e!2237821 e!2237815)))

(declare-fun c!625539 () Bool)

(assert (=> b!3615600 (= c!625539 (isSeparator!5658 (rule!8414 (_1!22112 lt!1246993))))))

(declare-fun b!3615601 () Bool)

(assert (=> b!3615601 false))

(declare-fun lt!1247016 () Unit!54491)

(assert (=> b!3615601 (= lt!1247016 call!261497)))

(assert (=> b!3615601 (not call!261502)))

(declare-fun lt!1246969 () Unit!54491)

(assert (=> b!3615601 (= lt!1246969 (lemmaSepRuleNotContainsCharContainedInANonSepRule!246 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8414 (_1!22112 lt!1246993)) lt!1246965))))

(declare-fun Unit!54505 () Unit!54491)

(assert (=> b!3615601 (= e!2237835 Unit!54505)))

(declare-fun b!3615602 () Bool)

(declare-fun res!1462861 () Bool)

(assert (=> b!3615602 (=> (not res!1462861) (not e!2237831))))

(declare-fun lt!1246978 () tuple2!37956)

(assert (=> b!3615602 (= res!1462861 (isEmpty!22490 (_2!22112 lt!1246978)))))

(declare-fun b!3615603 () Bool)

(assert (=> b!3615603 (= e!2237824 (>= (size!29039 lt!1247011) (size!29039 lt!1246984)))))

(declare-fun lt!1247013 () Unit!54491)

(assert (=> b!3615603 (= lt!1247013 e!2237820)))

(declare-fun c!625547 () Bool)

(assert (=> b!3615603 (= c!625547 (not (= (rule!8414 (_1!22112 lt!1246993)) (rule!8414 token!511))))))

(assert (=> b!3615603 (= lt!1246973 lt!1246984)))

(declare-fun lt!1246974 () Unit!54491)

(declare-fun lemmaIsPrefixSameLengthThenSameList!595 (List!38196 List!38196 List!38196) Unit!54491)

(assert (=> b!3615603 (= lt!1246974 (lemmaIsPrefixSameLengthThenSameList!595 lt!1246973 lt!1246984 lt!1247011))))

(declare-fun lt!1247010 () Unit!54491)

(assert (=> b!3615603 (= lt!1247010 e!2237819)))

(declare-fun c!625546 () Bool)

(declare-fun lt!1247015 () Int)

(assert (=> b!3615603 (= c!625546 (< lt!1246967 lt!1247015))))

(declare-fun lt!1246982 () Unit!54491)

(assert (=> b!3615603 (= lt!1246982 e!2237800)))

(declare-fun c!625538 () Bool)

(assert (=> b!3615603 (= c!625538 (> lt!1246967 lt!1247015))))

(assert (=> b!3615603 (= lt!1247015 (size!29038 lt!1246997))))

(declare-fun lt!1246972 () Unit!54491)

(assert (=> b!3615603 (= lt!1246972 e!2237821)))

(declare-fun c!625545 () Bool)

(assert (=> b!3615603 (= c!625545 (isSeparator!5658 rule!403))))

(declare-fun lt!1246963 () Unit!54491)

(assert (=> b!3615603 (= lt!1246963 e!2237816)))

(declare-fun c!625544 () Bool)

(assert (=> b!3615603 (= c!625544 (not (contains!7380 lt!1247006 lt!1247004)))))

(assert (=> b!3615603 (= lt!1247004 (head!7622 lt!1246973))))

(declare-fun b!3615604 () Bool)

(declare-fun Unit!54506 () Unit!54491)

(assert (=> b!3615604 (= e!2237815 Unit!54506)))

(declare-fun b!3615605 () Bool)

(assert (=> b!3615605 (= e!2237831 (not e!2237817))))

(declare-fun res!1462862 () Bool)

(assert (=> b!3615605 (=> res!1462862 e!2237817)))

(assert (=> b!3615605 (= res!1462862 (not (matchR!4986 (regex!5658 rule!403) lt!1246984)))))

(declare-fun ruleValid!1923 (LexerInterface!5247 Rule!11116) Bool)

(assert (=> b!3615605 (ruleValid!1923 thiss!23823 rule!403)))

(declare-fun lt!1246987 () Unit!54491)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1078 (LexerInterface!5247 Rule!11116 List!38197) Unit!54491)

(assert (=> b!3615605 (= lt!1246987 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1078 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3615606 () Bool)

(assert (=> b!3615606 (= e!2237821 e!2237807)))

(declare-fun c!625543 () Bool)

(assert (=> b!3615606 (= c!625543 (not (isSeparator!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun bm!261497 () Bool)

(assert (=> bm!261497 (= call!261500 (contains!7380 call!261501 lt!1247004))))

(declare-fun b!3615607 () Bool)

(declare-fun res!1462872 () Bool)

(assert (=> b!3615607 (=> (not res!1462872) (not e!2237836))))

(declare-fun isEmpty!22491 (List!38197) Bool)

(assert (=> b!3615607 (= res!1462872 (not (isEmpty!22491 rules!3307)))))

(declare-fun b!3615608 () Bool)

(declare-fun Unit!54507 () Unit!54491)

(assert (=> b!3615608 (= e!2237806 Unit!54507)))

(declare-fun b!3615609 () Bool)

(assert (=> b!3615609 (= e!2237822 e!2237831)))

(declare-fun res!1462864 () Bool)

(assert (=> b!3615609 (=> (not res!1462864) (not e!2237831))))

(assert (=> b!3615609 (= res!1462864 (= (_1!22112 lt!1246978) token!511))))

(assert (=> b!3615609 (= lt!1246978 (get!12386 lt!1246991))))

(declare-fun b!3615610 () Bool)

(declare-fun Unit!54508 () Unit!54491)

(assert (=> b!3615610 (= e!2237816 Unit!54508)))

(declare-fun b!3615611 () Bool)

(declare-fun Unit!54509 () Unit!54491)

(assert (=> b!3615611 (= e!2237807 Unit!54509)))

(declare-fun b!3615612 () Bool)

(declare-fun res!1462868 () Bool)

(assert (=> b!3615612 (=> res!1462868 e!2237833)))

(assert (=> b!3615612 (= res!1462868 (not (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973)))))

(assert (= (and start!336642 res!1462865) b!3615607))

(assert (= (and b!3615607 res!1462872) b!3615599))

(assert (= (and b!3615599 res!1462879) b!3615560))

(assert (= (and b!3615560 res!1462866) b!3615566))

(assert (= (and b!3615566 res!1462882) b!3615571))

(assert (= (and b!3615571 res!1462863) b!3615596))

(assert (= (and b!3615596 res!1462870) b!3615609))

(assert (= (and b!3615609 res!1462864) b!3615602))

(assert (= (and b!3615602 res!1462861) b!3615576))

(assert (= (and b!3615576 res!1462869) b!3615605))

(assert (= (and b!3615605 (not res!1462862)) b!3615589))

(assert (= (and b!3615589 (not res!1462871)) b!3615591))

(assert (= (and b!3615591 (not res!1462880)) b!3615562))

(assert (= (and b!3615562 (not res!1462877)) b!3615561))

(assert (= (and b!3615561 (not res!1462876)) b!3615585))

(assert (= (and b!3615585 res!1462878) b!3615580))

(assert (= (and b!3615580 res!1462874) b!3615575))

(assert (= (and b!3615585 (not res!1462881)) b!3615612))

(assert (= (and b!3615612 (not res!1462868)) b!3615564))

(assert (= (and b!3615564 (not res!1462873)) b!3615581))

(assert (= (and b!3615581 (not res!1462875)) b!3615603))

(assert (= (and b!3615603 c!625544) b!3615582))

(assert (= (and b!3615603 (not c!625544)) b!3615610))

(assert (= (and b!3615603 c!625545) b!3615606))

(assert (= (and b!3615603 (not c!625545)) b!3615600))

(assert (= (and b!3615606 c!625543) b!3615587))

(assert (= (and b!3615606 (not c!625543)) b!3615611))

(assert (= (and b!3615600 c!625539) b!3615563))

(assert (= (and b!3615600 (not c!625539)) b!3615604))

(assert (= (or b!3615587 b!3615563) bm!261493))

(assert (= (or b!3615587 b!3615563) bm!261495))

(assert (= (or b!3615587 b!3615563) bm!261497))

(assert (= (and b!3615603 c!625538) b!3615593))

(assert (= (and b!3615603 (not c!625538)) b!3615588))

(assert (= (and b!3615593 c!625540) b!3615601))

(assert (= (and b!3615593 (not c!625540)) b!3615594))

(assert (= (or b!3615601 b!3615594) bm!261496))

(assert (= (or b!3615601 b!3615594) bm!261492))

(assert (= (or b!3615601 b!3615594) bm!261494))

(assert (= (and b!3615603 c!625546) b!3615597))

(assert (= (and b!3615603 (not c!625546)) b!3615570))

(assert (= (and b!3615603 c!625547) b!3615586))

(assert (= (and b!3615603 (not c!625547)) b!3615590))

(assert (= (and b!3615586 c!625541) b!3615574))

(assert (= (and b!3615586 (not c!625541)) b!3615568))

(assert (= (and b!3615574 res!1462867) b!3615565))

(assert (= (and b!3615586 c!625542) b!3615579))

(assert (= (and b!3615586 (not c!625542)) b!3615608))

(assert (= b!3615569 b!3615584))

(assert (= b!3615595 b!3615569))

(assert (= (and start!336642 ((_ is Cons!38073) rules!3307)) b!3615595))

(assert (= (and start!336642 ((_ is Cons!38072) suffix!1395)) b!3615573))

(assert (= b!3615572 b!3615578))

(assert (= b!3615592 b!3615572))

(assert (= start!336642 b!3615592))

(assert (= b!3615598 b!3615583))

(assert (= start!336642 b!3615598))

(assert (= b!3615567 b!3615577))

(assert (= start!336642 b!3615567))

(declare-fun m!4114065 () Bool)

(assert (=> b!3615585 m!4114065))

(declare-fun m!4114067 () Bool)

(assert (=> b!3615585 m!4114067))

(declare-fun m!4114069 () Bool)

(assert (=> b!3615585 m!4114069))

(declare-fun m!4114071 () Bool)

(assert (=> b!3615585 m!4114071))

(declare-fun m!4114073 () Bool)

(assert (=> b!3615585 m!4114073))

(declare-fun m!4114075 () Bool)

(assert (=> b!3615585 m!4114075))

(declare-fun m!4114077 () Bool)

(assert (=> b!3615585 m!4114077))

(declare-fun m!4114079 () Bool)

(assert (=> b!3615585 m!4114079))

(declare-fun m!4114081 () Bool)

(assert (=> b!3615585 m!4114081))

(declare-fun m!4114083 () Bool)

(assert (=> b!3615585 m!4114083))

(declare-fun m!4114085 () Bool)

(assert (=> b!3615585 m!4114085))

(declare-fun m!4114087 () Bool)

(assert (=> b!3615585 m!4114087))

(declare-fun m!4114089 () Bool)

(assert (=> b!3615585 m!4114089))

(declare-fun m!4114091 () Bool)

(assert (=> b!3615585 m!4114091))

(assert (=> b!3615585 m!4114079))

(declare-fun m!4114093 () Bool)

(assert (=> b!3615585 m!4114093))

(declare-fun m!4114095 () Bool)

(assert (=> b!3615601 m!4114095))

(assert (=> b!3615580 m!4114091))

(assert (=> b!3615580 m!4114091))

(declare-fun m!4114097 () Bool)

(assert (=> b!3615580 m!4114097))

(assert (=> b!3615580 m!4114097))

(declare-fun m!4114099 () Bool)

(assert (=> b!3615580 m!4114099))

(declare-fun m!4114101 () Bool)

(assert (=> b!3615580 m!4114101))

(declare-fun m!4114103 () Bool)

(assert (=> b!3615563 m!4114103))

(declare-fun m!4114105 () Bool)

(assert (=> bm!261493 m!4114105))

(declare-fun m!4114107 () Bool)

(assert (=> b!3615581 m!4114107))

(declare-fun m!4114109 () Bool)

(assert (=> b!3615581 m!4114109))

(assert (=> b!3615581 m!4114109))

(declare-fun m!4114111 () Bool)

(assert (=> b!3615581 m!4114111))

(declare-fun m!4114113 () Bool)

(assert (=> b!3615581 m!4114113))

(declare-fun m!4114115 () Bool)

(assert (=> b!3615581 m!4114115))

(declare-fun m!4114117 () Bool)

(assert (=> b!3615581 m!4114117))

(declare-fun m!4114119 () Bool)

(assert (=> b!3615581 m!4114119))

(declare-fun m!4114121 () Bool)

(assert (=> b!3615572 m!4114121))

(declare-fun m!4114123 () Bool)

(assert (=> b!3615572 m!4114123))

(declare-fun m!4114125 () Bool)

(assert (=> b!3615596 m!4114125))

(declare-fun m!4114127 () Bool)

(assert (=> b!3615596 m!4114127))

(declare-fun m!4114129 () Bool)

(assert (=> b!3615596 m!4114129))

(declare-fun m!4114131 () Bool)

(assert (=> b!3615596 m!4114131))

(declare-fun m!4114133 () Bool)

(assert (=> b!3615607 m!4114133))

(declare-fun m!4114135 () Bool)

(assert (=> start!336642 m!4114135))

(declare-fun m!4114137 () Bool)

(assert (=> b!3615609 m!4114137))

(declare-fun m!4114139 () Bool)

(assert (=> b!3615566 m!4114139))

(declare-fun m!4114141 () Bool)

(assert (=> b!3615589 m!4114141))

(declare-fun m!4114143 () Bool)

(assert (=> b!3615593 m!4114143))

(declare-fun m!4114145 () Bool)

(assert (=> b!3615593 m!4114145))

(declare-fun m!4114147 () Bool)

(assert (=> b!3615602 m!4114147))

(declare-fun m!4114149 () Bool)

(assert (=> b!3615587 m!4114149))

(declare-fun m!4114151 () Bool)

(assert (=> b!3615605 m!4114151))

(declare-fun m!4114153 () Bool)

(assert (=> b!3615605 m!4114153))

(declare-fun m!4114155 () Bool)

(assert (=> b!3615605 m!4114155))

(declare-fun m!4114157 () Bool)

(assert (=> b!3615564 m!4114157))

(declare-fun m!4114159 () Bool)

(assert (=> b!3615564 m!4114159))

(declare-fun m!4114161 () Bool)

(assert (=> b!3615564 m!4114161))

(declare-fun m!4114163 () Bool)

(assert (=> b!3615564 m!4114163))

(declare-fun m!4114165 () Bool)

(assert (=> b!3615564 m!4114165))

(assert (=> b!3615564 m!4114159))

(declare-fun m!4114167 () Bool)

(assert (=> b!3615564 m!4114167))

(declare-fun m!4114169 () Bool)

(assert (=> b!3615612 m!4114169))

(declare-fun m!4114171 () Bool)

(assert (=> b!3615597 m!4114171))

(declare-fun m!4114173 () Bool)

(assert (=> b!3615562 m!4114173))

(assert (=> b!3615562 m!4114173))

(declare-fun m!4114175 () Bool)

(assert (=> b!3615562 m!4114175))

(declare-fun m!4114177 () Bool)

(assert (=> bm!261495 m!4114177))

(declare-fun m!4114179 () Bool)

(assert (=> b!3615560 m!4114179))

(declare-fun m!4114181 () Bool)

(assert (=> b!3615582 m!4114181))

(declare-fun m!4114183 () Bool)

(assert (=> b!3615586 m!4114183))

(declare-fun m!4114185 () Bool)

(assert (=> b!3615586 m!4114185))

(declare-fun m!4114187 () Bool)

(assert (=> b!3615586 m!4114187))

(declare-fun m!4114189 () Bool)

(assert (=> bm!261496 m!4114189))

(declare-fun m!4114191 () Bool)

(assert (=> b!3615569 m!4114191))

(declare-fun m!4114193 () Bool)

(assert (=> b!3615569 m!4114193))

(declare-fun m!4114195 () Bool)

(assert (=> b!3615561 m!4114195))

(declare-fun m!4114197 () Bool)

(assert (=> b!3615567 m!4114197))

(declare-fun m!4114199 () Bool)

(assert (=> b!3615567 m!4114199))

(declare-fun m!4114201 () Bool)

(assert (=> b!3615594 m!4114201))

(declare-fun m!4114203 () Bool)

(assert (=> b!3615599 m!4114203))

(declare-fun m!4114205 () Bool)

(assert (=> b!3615574 m!4114205))

(declare-fun m!4114207 () Bool)

(assert (=> b!3615574 m!4114207))

(declare-fun m!4114209 () Bool)

(assert (=> b!3615574 m!4114209))

(assert (=> b!3615574 m!4114207))

(declare-fun m!4114211 () Bool)

(assert (=> b!3615574 m!4114211))

(declare-fun m!4114213 () Bool)

(assert (=> b!3615574 m!4114213))

(declare-fun m!4114215 () Bool)

(assert (=> b!3615591 m!4114215))

(declare-fun m!4114217 () Bool)

(assert (=> b!3615591 m!4114217))

(declare-fun m!4114219 () Bool)

(assert (=> b!3615591 m!4114219))

(declare-fun m!4114221 () Bool)

(assert (=> b!3615579 m!4114221))

(declare-fun m!4114223 () Bool)

(assert (=> b!3615598 m!4114223))

(declare-fun m!4114225 () Bool)

(assert (=> b!3615598 m!4114225))

(assert (=> bm!261492 m!4114177))

(declare-fun m!4114227 () Bool)

(assert (=> bm!261497 m!4114227))

(declare-fun m!4114229 () Bool)

(assert (=> bm!261494 m!4114229))

(declare-fun m!4114231 () Bool)

(assert (=> b!3615592 m!4114231))

(declare-fun m!4114233 () Bool)

(assert (=> b!3615603 m!4114233))

(declare-fun m!4114235 () Bool)

(assert (=> b!3615603 m!4114235))

(declare-fun m!4114237 () Bool)

(assert (=> b!3615603 m!4114237))

(declare-fun m!4114239 () Bool)

(assert (=> b!3615603 m!4114239))

(declare-fun m!4114241 () Bool)

(assert (=> b!3615603 m!4114241))

(declare-fun m!4114243 () Bool)

(assert (=> b!3615603 m!4114243))

(check-sat (not b_next!94799) (not b!3615598) (not b!3615591) (not bm!261494) b_and!263997 (not b!3615594) b_and!264001 b_and!263989 (not b!3615603) (not b!3615587) (not b!3615602) (not b!3615561) (not b_next!94795) (not b!3615595) (not b_next!94793) (not b!3615586) b_and!263987 (not start!336642) (not b!3615589) (not b!3615574) (not b!3615581) (not b!3615599) (not b!3615609) (not b!3615597) (not b!3615564) (not bm!261495) (not b!3615572) (not b!3615580) b_and!263993 (not b!3615579) (not b!3615569) b_and!263999 (not b!3615612) (not b!3615605) (not b!3615573) (not b!3615567) (not b_next!94789) (not b_next!94797) (not bm!261492) (not b!3615593) (not b!3615607) (not b!3615585) (not bm!261497) (not bm!261493) (not b!3615592) (not b_next!94791) b_and!263995 (not bm!261496) (not b!3615601) (not b!3615560) (not b!3615582) (not b_next!94785) (not b!3615566) tp_is_empty!17917 (not b!3615562) (not b!3615563) (not b!3615596) b_and!263991 (not b_next!94787))
(check-sat (not b_next!94799) b_and!263993 b_and!263999 b_and!263997 (not b_next!94789) (not b_next!94797) (not b_next!94791) b_and!264001 b_and!263989 b_and!263995 (not b_next!94785) (not b_next!94795) (not b_next!94793) b_and!263987 b_and!263991 (not b_next!94787))
(get-model)

(declare-fun d!1064038 () Bool)

(assert (=> d!1064038 (not (matchR!4986 (regex!5658 rule!403) lt!1246984))))

(declare-fun lt!1247019 () Unit!54491)

(declare-fun choose!21163 (LexerInterface!5247 List!38197 Rule!11116 List!38196 List!38196 List!38196 Rule!11116) Unit!54491)

(assert (=> d!1064038 (= lt!1247019 (choose!21163 thiss!23823 rules!3307 (rule!8414 (_1!22112 lt!1246993)) lt!1246973 lt!1247011 lt!1246984 rule!403))))

(assert (=> d!1064038 (isPrefix!3021 lt!1246973 lt!1247011)))

(assert (=> d!1064038 (= (lemmaMaxPrefixOutputsMaxPrefix!306 thiss!23823 rules!3307 (rule!8414 (_1!22112 lt!1246993)) lt!1246973 lt!1247011 lt!1246984 rule!403) lt!1247019)))

(declare-fun bs!570996 () Bool)

(assert (= bs!570996 d!1064038))

(assert (=> bs!570996 m!4114151))

(declare-fun m!4114245 () Bool)

(assert (=> bs!570996 m!4114245))

(assert (=> bs!570996 m!4114071))

(assert (=> b!3615597 d!1064038))

(declare-fun d!1064040 () Bool)

(declare-fun lt!1247022 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5446 (List!38197) (InoxSet Rule!11116))

(assert (=> d!1064040 (= lt!1247022 (select (content!5446 rules!3307) rule!403))))

(declare-fun e!2237841 () Bool)

(assert (=> d!1064040 (= lt!1247022 e!2237841)))

(declare-fun res!1462892 () Bool)

(assert (=> d!1064040 (=> (not res!1462892) (not e!2237841))))

(assert (=> d!1064040 (= res!1462892 ((_ is Cons!38073) rules!3307))))

(assert (=> d!1064040 (= (contains!7379 rules!3307 rule!403) lt!1247022)))

(declare-fun b!3615617 () Bool)

(declare-fun e!2237842 () Bool)

(assert (=> b!3615617 (= e!2237841 e!2237842)))

(declare-fun res!1462891 () Bool)

(assert (=> b!3615617 (=> res!1462891 e!2237842)))

(assert (=> b!3615617 (= res!1462891 (= (h!43493 rules!3307) rule!403))))

(declare-fun b!3615618 () Bool)

(assert (=> b!3615618 (= e!2237842 (contains!7379 (t!293728 rules!3307) rule!403))))

(assert (= (and d!1064040 res!1462892) b!3615617))

(assert (= (and b!3615617 (not res!1462891)) b!3615618))

(declare-fun m!4114247 () Bool)

(assert (=> d!1064040 m!4114247))

(declare-fun m!4114249 () Bool)

(assert (=> d!1064040 m!4114249))

(declare-fun m!4114251 () Bool)

(assert (=> b!3615618 m!4114251))

(assert (=> b!3615560 d!1064040))

(declare-fun d!1064042 () Bool)

(declare-fun isEmpty!22492 (Option!7946) Bool)

(assert (=> d!1064042 (= (isDefined!6179 lt!1246991) (not (isEmpty!22492 lt!1246991)))))

(declare-fun bs!570997 () Bool)

(assert (= bs!570997 d!1064042))

(declare-fun m!4114253 () Bool)

(assert (=> bs!570997 m!4114253))

(assert (=> b!3615596 d!1064042))

(declare-fun b!3615679 () Bool)

(declare-fun res!1462935 () Bool)

(declare-fun e!2237872 () Bool)

(assert (=> b!3615679 (=> (not res!1462935) (not e!2237872))))

(declare-fun lt!1247040 () Option!7946)

(assert (=> b!3615679 (= res!1462935 (= (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247040)))) (originalCharacters!6372 (_1!22112 (get!12386 lt!1247040)))))))

(declare-fun bm!261503 () Bool)

(declare-fun call!261508 () Option!7946)

(assert (=> bm!261503 (= call!261508 (maxPrefixOneRule!1925 thiss!23823 (h!43493 rules!3307) lt!1246984))))

(declare-fun d!1064044 () Bool)

(declare-fun e!2237870 () Bool)

(assert (=> d!1064044 e!2237870))

(declare-fun res!1462939 () Bool)

(assert (=> d!1064044 (=> res!1462939 e!2237870)))

(assert (=> d!1064044 (= res!1462939 (isEmpty!22492 lt!1247040))))

(declare-fun e!2237871 () Option!7946)

(assert (=> d!1064044 (= lt!1247040 e!2237871)))

(declare-fun c!625561 () Bool)

(assert (=> d!1064044 (= c!625561 (and ((_ is Cons!38073) rules!3307) ((_ is Nil!38073) (t!293728 rules!3307))))))

(declare-fun lt!1247037 () Unit!54491)

(declare-fun lt!1247036 () Unit!54491)

(assert (=> d!1064044 (= lt!1247037 lt!1247036)))

(assert (=> d!1064044 (isPrefix!3021 lt!1246984 lt!1246984)))

(declare-fun lemmaIsPrefixRefl!1923 (List!38196 List!38196) Unit!54491)

(assert (=> d!1064044 (= lt!1247036 (lemmaIsPrefixRefl!1923 lt!1246984 lt!1246984))))

(declare-fun rulesValidInductive!1986 (LexerInterface!5247 List!38197) Bool)

(assert (=> d!1064044 (rulesValidInductive!1986 thiss!23823 rules!3307)))

(assert (=> d!1064044 (= (maxPrefix!2781 thiss!23823 rules!3307 lt!1246984) lt!1247040)))

(declare-fun b!3615680 () Bool)

(assert (=> b!3615680 (= e!2237872 (contains!7379 rules!3307 (rule!8414 (_1!22112 (get!12386 lt!1247040)))))))

(declare-fun b!3615681 () Bool)

(declare-fun lt!1247038 () Option!7946)

(declare-fun lt!1247039 () Option!7946)

(assert (=> b!3615681 (= e!2237871 (ite (and ((_ is None!7945) lt!1247038) ((_ is None!7945) lt!1247039)) None!7945 (ite ((_ is None!7945) lt!1247039) lt!1247038 (ite ((_ is None!7945) lt!1247038) lt!1247039 (ite (>= (size!29037 (_1!22112 (v!37699 lt!1247038))) (size!29037 (_1!22112 (v!37699 lt!1247039)))) lt!1247038 lt!1247039)))))))

(assert (=> b!3615681 (= lt!1247038 call!261508)))

(assert (=> b!3615681 (= lt!1247039 (maxPrefix!2781 thiss!23823 (t!293728 rules!3307) lt!1246984))))

(declare-fun b!3615682 () Bool)

(assert (=> b!3615682 (= e!2237871 call!261508)))

(declare-fun b!3615683 () Bool)

(declare-fun res!1462940 () Bool)

(assert (=> b!3615683 (=> (not res!1462940) (not e!2237872))))

(assert (=> b!3615683 (= res!1462940 (= (++!9474 (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247040)))) (_2!22112 (get!12386 lt!1247040))) lt!1246984))))

(declare-fun b!3615684 () Bool)

(declare-fun res!1462934 () Bool)

(assert (=> b!3615684 (=> (not res!1462934) (not e!2237872))))

(assert (=> b!3615684 (= res!1462934 (= (value!181713 (_1!22112 (get!12386 lt!1247040))) (apply!9164 (transformation!5658 (rule!8414 (_1!22112 (get!12386 lt!1247040)))) (seqFromList!4211 (originalCharacters!6372 (_1!22112 (get!12386 lt!1247040)))))))))

(declare-fun b!3615685 () Bool)

(assert (=> b!3615685 (= e!2237870 e!2237872)))

(declare-fun res!1462937 () Bool)

(assert (=> b!3615685 (=> (not res!1462937) (not e!2237872))))

(assert (=> b!3615685 (= res!1462937 (isDefined!6179 lt!1247040))))

(declare-fun b!3615686 () Bool)

(declare-fun res!1462938 () Bool)

(assert (=> b!3615686 (=> (not res!1462938) (not e!2237872))))

(assert (=> b!3615686 (= res!1462938 (< (size!29039 (_2!22112 (get!12386 lt!1247040))) (size!29039 lt!1246984)))))

(declare-fun b!3615687 () Bool)

(declare-fun res!1462936 () Bool)

(assert (=> b!3615687 (=> (not res!1462936) (not e!2237872))))

(assert (=> b!3615687 (= res!1462936 (matchR!4986 (regex!5658 (rule!8414 (_1!22112 (get!12386 lt!1247040)))) (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247040))))))))

(assert (= (and d!1064044 c!625561) b!3615682))

(assert (= (and d!1064044 (not c!625561)) b!3615681))

(assert (= (or b!3615682 b!3615681) bm!261503))

(assert (= (and d!1064044 (not res!1462939)) b!3615685))

(assert (= (and b!3615685 res!1462937) b!3615679))

(assert (= (and b!3615679 res!1462935) b!3615686))

(assert (= (and b!3615686 res!1462938) b!3615683))

(assert (= (and b!3615683 res!1462940) b!3615684))

(assert (= (and b!3615684 res!1462934) b!3615687))

(assert (= (and b!3615687 res!1462936) b!3615680))

(declare-fun m!4114281 () Bool)

(assert (=> bm!261503 m!4114281))

(declare-fun m!4114283 () Bool)

(assert (=> d!1064044 m!4114283))

(declare-fun m!4114285 () Bool)

(assert (=> d!1064044 m!4114285))

(declare-fun m!4114287 () Bool)

(assert (=> d!1064044 m!4114287))

(declare-fun m!4114289 () Bool)

(assert (=> d!1064044 m!4114289))

(declare-fun m!4114291 () Bool)

(assert (=> b!3615681 m!4114291))

(declare-fun m!4114293 () Bool)

(assert (=> b!3615683 m!4114293))

(declare-fun m!4114295 () Bool)

(assert (=> b!3615683 m!4114295))

(assert (=> b!3615683 m!4114295))

(declare-fun m!4114297 () Bool)

(assert (=> b!3615683 m!4114297))

(assert (=> b!3615683 m!4114297))

(declare-fun m!4114299 () Bool)

(assert (=> b!3615683 m!4114299))

(declare-fun m!4114301 () Bool)

(assert (=> b!3615685 m!4114301))

(assert (=> b!3615680 m!4114293))

(declare-fun m!4114303 () Bool)

(assert (=> b!3615680 m!4114303))

(assert (=> b!3615686 m!4114293))

(declare-fun m!4114305 () Bool)

(assert (=> b!3615686 m!4114305))

(assert (=> b!3615686 m!4114241))

(assert (=> b!3615687 m!4114293))

(assert (=> b!3615687 m!4114295))

(assert (=> b!3615687 m!4114295))

(assert (=> b!3615687 m!4114297))

(assert (=> b!3615687 m!4114297))

(declare-fun m!4114309 () Bool)

(assert (=> b!3615687 m!4114309))

(assert (=> b!3615679 m!4114293))

(assert (=> b!3615679 m!4114295))

(assert (=> b!3615679 m!4114295))

(assert (=> b!3615679 m!4114297))

(assert (=> b!3615684 m!4114293))

(declare-fun m!4114313 () Bool)

(assert (=> b!3615684 m!4114313))

(assert (=> b!3615684 m!4114313))

(declare-fun m!4114315 () Bool)

(assert (=> b!3615684 m!4114315))

(assert (=> b!3615596 d!1064044))

(declare-fun d!1064058 () Bool)

(declare-fun list!14048 (Conc!11605) List!38196)

(assert (=> d!1064058 (= (list!14046 lt!1246997) (list!14048 (c!625549 lt!1246997)))))

(declare-fun bs!571000 () Bool)

(assert (= bs!571000 d!1064058))

(declare-fun m!4114317 () Bool)

(assert (=> bs!571000 m!4114317))

(assert (=> b!3615596 d!1064058))

(declare-fun d!1064060 () Bool)

(declare-fun lt!1247050 () BalanceConc!22824)

(assert (=> d!1064060 (= (list!14046 lt!1247050) (originalCharacters!6372 token!511))))

(declare-fun dynLambda!16471 (Int TokenValue!5888) BalanceConc!22824)

(assert (=> d!1064060 (= lt!1247050 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 token!511))) (value!181713 token!511)))))

(assert (=> d!1064060 (= (charsOf!3672 token!511) lt!1247050)))

(declare-fun b_lambda!106955 () Bool)

(assert (=> (not b_lambda!106955) (not d!1064060)))

(declare-fun t!293746 () Bool)

(declare-fun tb!207313 () Bool)

(assert (=> (and b!3615583 (= (toChars!7801 (transformation!5658 rule!403)) (toChars!7801 (transformation!5658 (rule!8414 token!511)))) t!293746) tb!207313))

(declare-fun b!3615724 () Bool)

(declare-fun e!2237892 () Bool)

(declare-fun tp!1104881 () Bool)

(declare-fun inv!51460 (Conc!11605) Bool)

(assert (=> b!3615724 (= e!2237892 (and (inv!51460 (c!625549 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 token!511))) (value!181713 token!511)))) tp!1104881))))

(declare-fun result!252636 () Bool)

(declare-fun inv!51461 (BalanceConc!22824) Bool)

(assert (=> tb!207313 (= result!252636 (and (inv!51461 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 token!511))) (value!181713 token!511))) e!2237892))))

(assert (= tb!207313 b!3615724))

(declare-fun m!4114347 () Bool)

(assert (=> b!3615724 m!4114347))

(declare-fun m!4114349 () Bool)

(assert (=> tb!207313 m!4114349))

(assert (=> d!1064060 t!293746))

(declare-fun b_and!264019 () Bool)

(assert (= b_and!263989 (and (=> t!293746 result!252636) b_and!264019)))

(declare-fun t!293748 () Bool)

(declare-fun tb!207315 () Bool)

(assert (=> (and b!3615577 (= (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toChars!7801 (transformation!5658 (rule!8414 token!511)))) t!293748) tb!207315))

(declare-fun result!252640 () Bool)

(assert (= result!252640 result!252636))

(assert (=> d!1064060 t!293748))

(declare-fun b_and!264021 () Bool)

(assert (= b_and!263993 (and (=> t!293748 result!252640) b_and!264021)))

(declare-fun tb!207317 () Bool)

(declare-fun t!293750 () Bool)

(assert (=> (and b!3615584 (= (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toChars!7801 (transformation!5658 (rule!8414 token!511)))) t!293750) tb!207317))

(declare-fun result!252642 () Bool)

(assert (= result!252642 result!252636))

(assert (=> d!1064060 t!293750))

(declare-fun b_and!264023 () Bool)

(assert (= b_and!263997 (and (=> t!293750 result!252642) b_and!264023)))

(declare-fun t!293752 () Bool)

(declare-fun tb!207319 () Bool)

(assert (=> (and b!3615578 (= (toChars!7801 (transformation!5658 (rule!8414 token!511))) (toChars!7801 (transformation!5658 (rule!8414 token!511)))) t!293752) tb!207319))

(declare-fun result!252644 () Bool)

(assert (= result!252644 result!252636))

(assert (=> d!1064060 t!293752))

(declare-fun b_and!264025 () Bool)

(assert (= b_and!264001 (and (=> t!293752 result!252644) b_and!264025)))

(declare-fun m!4114351 () Bool)

(assert (=> d!1064060 m!4114351))

(declare-fun m!4114353 () Bool)

(assert (=> d!1064060 m!4114353))

(assert (=> b!3615596 d!1064060))

(declare-fun d!1064068 () Bool)

(declare-fun lt!1247062 () Bool)

(declare-fun content!5447 (List!38196) (InoxSet C!21020))

(assert (=> d!1064068 (= lt!1247062 (select (content!5447 (usedCharacters!872 (regex!5658 anOtherTypeRule!33))) lt!1246965))))

(declare-fun e!2237904 () Bool)

(assert (=> d!1064068 (= lt!1247062 e!2237904)))

(declare-fun res!1462971 () Bool)

(assert (=> d!1064068 (=> (not res!1462971) (not e!2237904))))

(assert (=> d!1064068 (= res!1462971 ((_ is Cons!38072) (usedCharacters!872 (regex!5658 anOtherTypeRule!33))))))

(assert (=> d!1064068 (= (contains!7380 (usedCharacters!872 (regex!5658 anOtherTypeRule!33)) lt!1246965) lt!1247062)))

(declare-fun b!3615735 () Bool)

(declare-fun e!2237903 () Bool)

(assert (=> b!3615735 (= e!2237904 e!2237903)))

(declare-fun res!1462972 () Bool)

(assert (=> b!3615735 (=> res!1462972 e!2237903)))

(assert (=> b!3615735 (= res!1462972 (= (h!43492 (usedCharacters!872 (regex!5658 anOtherTypeRule!33))) lt!1246965))))

(declare-fun b!3615736 () Bool)

(assert (=> b!3615736 (= e!2237903 (contains!7380 (t!293727 (usedCharacters!872 (regex!5658 anOtherTypeRule!33))) lt!1246965))))

(assert (= (and d!1064068 res!1462971) b!3615735))

(assert (= (and b!3615735 (not res!1462972)) b!3615736))

(assert (=> d!1064068 m!4114173))

(declare-fun m!4114367 () Bool)

(assert (=> d!1064068 m!4114367))

(declare-fun m!4114369 () Bool)

(assert (=> d!1064068 m!4114369))

(declare-fun m!4114371 () Bool)

(assert (=> b!3615736 m!4114371))

(assert (=> b!3615562 d!1064068))

(declare-fun b!3615765 () Bool)

(declare-fun e!2237922 () List!38196)

(declare-fun call!261520 () List!38196)

(assert (=> b!3615765 (= e!2237922 call!261520)))

(declare-fun bm!261513 () Bool)

(declare-fun call!261521 () List!38196)

(declare-fun c!625581 () Bool)

(assert (=> bm!261513 (= call!261521 (usedCharacters!872 (ite c!625581 (regOne!21347 (regex!5658 anOtherTypeRule!33)) (regTwo!21346 (regex!5658 anOtherTypeRule!33)))))))

(declare-fun b!3615766 () Bool)

(declare-fun e!2237921 () List!38196)

(assert (=> b!3615766 (= e!2237922 e!2237921)))

(assert (=> b!3615766 (= c!625581 ((_ is Union!10417) (regex!5658 anOtherTypeRule!33)))))

(declare-fun b!3615767 () Bool)

(declare-fun call!261519 () List!38196)

(assert (=> b!3615767 (= e!2237921 call!261519)))

(declare-fun b!3615768 () Bool)

(declare-fun e!2237920 () List!38196)

(declare-fun e!2237919 () List!38196)

(assert (=> b!3615768 (= e!2237920 e!2237919)))

(declare-fun c!625583 () Bool)

(assert (=> b!3615768 (= c!625583 ((_ is ElementMatch!10417) (regex!5658 anOtherTypeRule!33)))))

(declare-fun bm!261514 () Bool)

(declare-fun c!625584 () Bool)

(assert (=> bm!261514 (= call!261520 (usedCharacters!872 (ite c!625584 (reg!10746 (regex!5658 anOtherTypeRule!33)) (ite c!625581 (regTwo!21347 (regex!5658 anOtherTypeRule!33)) (regOne!21346 (regex!5658 anOtherTypeRule!33))))))))

(declare-fun bm!261515 () Bool)

(declare-fun call!261518 () List!38196)

(assert (=> bm!261515 (= call!261519 (++!9474 (ite c!625581 call!261521 call!261518) (ite c!625581 call!261518 call!261521)))))

(declare-fun bm!261516 () Bool)

(assert (=> bm!261516 (= call!261518 call!261520)))

(declare-fun b!3615770 () Bool)

(assert (=> b!3615770 (= e!2237919 (Cons!38072 (c!625548 (regex!5658 anOtherTypeRule!33)) Nil!38072))))

(declare-fun b!3615771 () Bool)

(assert (=> b!3615771 (= e!2237921 call!261519)))

(declare-fun b!3615772 () Bool)

(assert (=> b!3615772 (= c!625584 ((_ is Star!10417) (regex!5658 anOtherTypeRule!33)))))

(assert (=> b!3615772 (= e!2237919 e!2237922)))

(declare-fun d!1064076 () Bool)

(declare-fun c!625582 () Bool)

(assert (=> d!1064076 (= c!625582 (or ((_ is EmptyExpr!10417) (regex!5658 anOtherTypeRule!33)) ((_ is EmptyLang!10417) (regex!5658 anOtherTypeRule!33))))))

(assert (=> d!1064076 (= (usedCharacters!872 (regex!5658 anOtherTypeRule!33)) e!2237920)))

(declare-fun b!3615769 () Bool)

(assert (=> b!3615769 (= e!2237920 Nil!38072)))

(assert (= (and d!1064076 c!625582) b!3615769))

(assert (= (and d!1064076 (not c!625582)) b!3615768))

(assert (= (and b!3615768 c!625583) b!3615770))

(assert (= (and b!3615768 (not c!625583)) b!3615772))

(assert (= (and b!3615772 c!625584) b!3615765))

(assert (= (and b!3615772 (not c!625584)) b!3615766))

(assert (= (and b!3615766 c!625581) b!3615767))

(assert (= (and b!3615766 (not c!625581)) b!3615771))

(assert (= (or b!3615767 b!3615771) bm!261513))

(assert (= (or b!3615767 b!3615771) bm!261516))

(assert (= (or b!3615767 b!3615771) bm!261515))

(assert (= (or b!3615765 bm!261516) bm!261514))

(declare-fun m!4114385 () Bool)

(assert (=> bm!261513 m!4114385))

(declare-fun m!4114387 () Bool)

(assert (=> bm!261514 m!4114387))

(declare-fun m!4114393 () Bool)

(assert (=> bm!261515 m!4114393))

(assert (=> b!3615562 d!1064076))

(declare-fun b!3615803 () Bool)

(declare-fun e!2237943 () Bool)

(declare-fun lt!1247078 () Bool)

(assert (=> b!3615803 (= e!2237943 (not lt!1247078))))

(declare-fun b!3615804 () Bool)

(declare-fun e!2237938 () Bool)

(assert (=> b!3615804 (= e!2237938 (= (head!7622 (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))) (c!625548 (regex!5658 lt!1246962))))))

(declare-fun b!3615805 () Bool)

(declare-fun res!1462990 () Bool)

(assert (=> b!3615805 (=> (not res!1462990) (not e!2237938))))

(declare-fun call!261524 () Bool)

(assert (=> b!3615805 (= res!1462990 (not call!261524))))

(declare-fun b!3615806 () Bool)

(declare-fun res!1462995 () Bool)

(declare-fun e!2237942 () Bool)

(assert (=> b!3615806 (=> res!1462995 e!2237942)))

(assert (=> b!3615806 (= res!1462995 (not ((_ is ElementMatch!10417) (regex!5658 lt!1246962))))))

(assert (=> b!3615806 (= e!2237943 e!2237942)))

(declare-fun b!3615807 () Bool)

(declare-fun e!2237939 () Bool)

(declare-fun e!2237944 () Bool)

(assert (=> b!3615807 (= e!2237939 e!2237944)))

(declare-fun res!1462989 () Bool)

(assert (=> b!3615807 (=> res!1462989 e!2237944)))

(assert (=> b!3615807 (= res!1462989 call!261524)))

(declare-fun b!3615808 () Bool)

(declare-fun res!1462992 () Bool)

(assert (=> b!3615808 (=> res!1462992 e!2237944)))

(declare-fun tail!5603 (List!38196) List!38196)

(assert (=> b!3615808 (= res!1462992 (not (isEmpty!22490 (tail!5603 (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))))))))

(declare-fun d!1064092 () Bool)

(declare-fun e!2237941 () Bool)

(assert (=> d!1064092 e!2237941))

(declare-fun c!625594 () Bool)

(assert (=> d!1064092 (= c!625594 ((_ is EmptyExpr!10417) (regex!5658 lt!1246962)))))

(declare-fun e!2237940 () Bool)

(assert (=> d!1064092 (= lt!1247078 e!2237940)))

(declare-fun c!625592 () Bool)

(assert (=> d!1064092 (= c!625592 (isEmpty!22490 (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))))))

(declare-fun validRegex!4767 (Regex!10417) Bool)

(assert (=> d!1064092 (validRegex!4767 (regex!5658 lt!1246962))))

(assert (=> d!1064092 (= (matchR!4986 (regex!5658 lt!1246962) (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))) lt!1247078)))

(declare-fun b!3615809 () Bool)

(assert (=> b!3615809 (= e!2237941 (= lt!1247078 call!261524))))

(declare-fun b!3615810 () Bool)

(assert (=> b!3615810 (= e!2237941 e!2237943)))

(declare-fun c!625593 () Bool)

(assert (=> b!3615810 (= c!625593 ((_ is EmptyLang!10417) (regex!5658 lt!1246962)))))

(declare-fun bm!261519 () Bool)

(assert (=> bm!261519 (= call!261524 (isEmpty!22490 (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))))))

(declare-fun b!3615811 () Bool)

(declare-fun res!1462993 () Bool)

(assert (=> b!3615811 (=> res!1462993 e!2237942)))

(assert (=> b!3615811 (= res!1462993 e!2237938)))

(declare-fun res!1462991 () Bool)

(assert (=> b!3615811 (=> (not res!1462991) (not e!2237938))))

(assert (=> b!3615811 (= res!1462991 lt!1247078)))

(declare-fun b!3615812 () Bool)

(declare-fun derivativeStep!3154 (Regex!10417 C!21020) Regex!10417)

(assert (=> b!3615812 (= e!2237940 (matchR!4986 (derivativeStep!3154 (regex!5658 lt!1246962) (head!7622 (list!14046 (charsOf!3672 (_1!22112 lt!1246993))))) (tail!5603 (list!14046 (charsOf!3672 (_1!22112 lt!1246993))))))))

(declare-fun b!3615813 () Bool)

(assert (=> b!3615813 (= e!2237942 e!2237939)))

(declare-fun res!1462996 () Bool)

(assert (=> b!3615813 (=> (not res!1462996) (not e!2237939))))

(assert (=> b!3615813 (= res!1462996 (not lt!1247078))))

(declare-fun b!3615814 () Bool)

(assert (=> b!3615814 (= e!2237944 (not (= (head!7622 (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))) (c!625548 (regex!5658 lt!1246962)))))))

(declare-fun b!3615815 () Bool)

(declare-fun nullable!3605 (Regex!10417) Bool)

(assert (=> b!3615815 (= e!2237940 (nullable!3605 (regex!5658 lt!1246962)))))

(declare-fun b!3615816 () Bool)

(declare-fun res!1462994 () Bool)

(assert (=> b!3615816 (=> (not res!1462994) (not e!2237938))))

(assert (=> b!3615816 (= res!1462994 (isEmpty!22490 (tail!5603 (list!14046 (charsOf!3672 (_1!22112 lt!1246993))))))))

(assert (= (and d!1064092 c!625592) b!3615815))

(assert (= (and d!1064092 (not c!625592)) b!3615812))

(assert (= (and d!1064092 c!625594) b!3615809))

(assert (= (and d!1064092 (not c!625594)) b!3615810))

(assert (= (and b!3615810 c!625593) b!3615803))

(assert (= (and b!3615810 (not c!625593)) b!3615806))

(assert (= (and b!3615806 (not res!1462995)) b!3615811))

(assert (= (and b!3615811 res!1462991) b!3615805))

(assert (= (and b!3615805 res!1462990) b!3615816))

(assert (= (and b!3615816 res!1462994) b!3615804))

(assert (= (and b!3615811 (not res!1462993)) b!3615813))

(assert (= (and b!3615813 res!1462996) b!3615807))

(assert (= (and b!3615807 (not res!1462989)) b!3615808))

(assert (= (and b!3615808 (not res!1462992)) b!3615814))

(assert (= (or b!3615809 b!3615805 b!3615807) bm!261519))

(assert (=> bm!261519 m!4114097))

(declare-fun m!4114397 () Bool)

(assert (=> bm!261519 m!4114397))

(assert (=> b!3615812 m!4114097))

(declare-fun m!4114399 () Bool)

(assert (=> b!3615812 m!4114399))

(assert (=> b!3615812 m!4114399))

(declare-fun m!4114401 () Bool)

(assert (=> b!3615812 m!4114401))

(assert (=> b!3615812 m!4114097))

(declare-fun m!4114403 () Bool)

(assert (=> b!3615812 m!4114403))

(assert (=> b!3615812 m!4114401))

(assert (=> b!3615812 m!4114403))

(declare-fun m!4114405 () Bool)

(assert (=> b!3615812 m!4114405))

(assert (=> b!3615808 m!4114097))

(assert (=> b!3615808 m!4114403))

(assert (=> b!3615808 m!4114403))

(declare-fun m!4114407 () Bool)

(assert (=> b!3615808 m!4114407))

(assert (=> b!3615816 m!4114097))

(assert (=> b!3615816 m!4114403))

(assert (=> b!3615816 m!4114403))

(assert (=> b!3615816 m!4114407))

(assert (=> b!3615804 m!4114097))

(assert (=> b!3615804 m!4114399))

(declare-fun m!4114409 () Bool)

(assert (=> b!3615815 m!4114409))

(assert (=> b!3615814 m!4114097))

(assert (=> b!3615814 m!4114399))

(assert (=> d!1064092 m!4114097))

(assert (=> d!1064092 m!4114397))

(declare-fun m!4114411 () Bool)

(assert (=> d!1064092 m!4114411))

(assert (=> b!3615580 d!1064092))

(declare-fun d!1064094 () Bool)

(assert (=> d!1064094 (= (list!14046 (charsOf!3672 (_1!22112 lt!1246993))) (list!14048 (c!625549 (charsOf!3672 (_1!22112 lt!1246993)))))))

(declare-fun bs!571006 () Bool)

(assert (= bs!571006 d!1064094))

(declare-fun m!4114413 () Bool)

(assert (=> bs!571006 m!4114413))

(assert (=> b!3615580 d!1064094))

(declare-fun d!1064096 () Bool)

(declare-fun lt!1247079 () BalanceConc!22824)

(assert (=> d!1064096 (= (list!14046 lt!1247079) (originalCharacters!6372 (_1!22112 lt!1246993)))))

(assert (=> d!1064096 (= lt!1247079 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (value!181713 (_1!22112 lt!1246993))))))

(assert (=> d!1064096 (= (charsOf!3672 (_1!22112 lt!1246993)) lt!1247079)))

(declare-fun b_lambda!106957 () Bool)

(assert (=> (not b_lambda!106957) (not d!1064096)))

(declare-fun t!293754 () Bool)

(declare-fun tb!207321 () Bool)

(assert (=> (and b!3615583 (= (toChars!7801 (transformation!5658 rule!403)) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293754) tb!207321))

(declare-fun b!3615817 () Bool)

(declare-fun e!2237945 () Bool)

(declare-fun tp!1104882 () Bool)

(assert (=> b!3615817 (= e!2237945 (and (inv!51460 (c!625549 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (value!181713 (_1!22112 lt!1246993))))) tp!1104882))))

(declare-fun result!252646 () Bool)

(assert (=> tb!207321 (= result!252646 (and (inv!51461 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (value!181713 (_1!22112 lt!1246993)))) e!2237945))))

(assert (= tb!207321 b!3615817))

(declare-fun m!4114415 () Bool)

(assert (=> b!3615817 m!4114415))

(declare-fun m!4114417 () Bool)

(assert (=> tb!207321 m!4114417))

(assert (=> d!1064096 t!293754))

(declare-fun b_and!264027 () Bool)

(assert (= b_and!264019 (and (=> t!293754 result!252646) b_and!264027)))

(declare-fun t!293756 () Bool)

(declare-fun tb!207323 () Bool)

(assert (=> (and b!3615577 (= (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293756) tb!207323))

(declare-fun result!252648 () Bool)

(assert (= result!252648 result!252646))

(assert (=> d!1064096 t!293756))

(declare-fun b_and!264029 () Bool)

(assert (= b_and!264021 (and (=> t!293756 result!252648) b_and!264029)))

(declare-fun tb!207325 () Bool)

(declare-fun t!293758 () Bool)

(assert (=> (and b!3615584 (= (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293758) tb!207325))

(declare-fun result!252650 () Bool)

(assert (= result!252650 result!252646))

(assert (=> d!1064096 t!293758))

(declare-fun b_and!264031 () Bool)

(assert (= b_and!264023 (and (=> t!293758 result!252650) b_and!264031)))

(declare-fun t!293760 () Bool)

(declare-fun tb!207327 () Bool)

(assert (=> (and b!3615578 (= (toChars!7801 (transformation!5658 (rule!8414 token!511))) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293760) tb!207327))

(declare-fun result!252652 () Bool)

(assert (= result!252652 result!252646))

(assert (=> d!1064096 t!293760))

(declare-fun b_and!264033 () Bool)

(assert (= b_and!264025 (and (=> t!293760 result!252652) b_and!264033)))

(declare-fun m!4114419 () Bool)

(assert (=> d!1064096 m!4114419))

(declare-fun m!4114421 () Bool)

(assert (=> d!1064096 m!4114421))

(assert (=> b!3615580 d!1064096))

(declare-fun d!1064098 () Bool)

(assert (=> d!1064098 (= (get!12385 lt!1246976) (v!37700 lt!1246976))))

(assert (=> b!3615580 d!1064098))

(declare-fun b!3615818 () Bool)

(declare-fun e!2237949 () List!38196)

(declare-fun call!261527 () List!38196)

(assert (=> b!3615818 (= e!2237949 call!261527)))

(declare-fun bm!261520 () Bool)

(declare-fun call!261528 () List!38196)

(declare-fun c!625595 () Bool)

(assert (=> bm!261520 (= call!261528 (usedCharacters!872 (ite c!625595 (regOne!21347 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) (regTwo!21346 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))))

(declare-fun b!3615819 () Bool)

(declare-fun e!2237948 () List!38196)

(assert (=> b!3615819 (= e!2237949 e!2237948)))

(assert (=> b!3615819 (= c!625595 ((_ is Union!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3615820 () Bool)

(declare-fun call!261526 () List!38196)

(assert (=> b!3615820 (= e!2237948 call!261526)))

(declare-fun b!3615821 () Bool)

(declare-fun e!2237947 () List!38196)

(declare-fun e!2237946 () List!38196)

(assert (=> b!3615821 (= e!2237947 e!2237946)))

(declare-fun c!625597 () Bool)

(assert (=> b!3615821 (= c!625597 ((_ is ElementMatch!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun c!625598 () Bool)

(declare-fun bm!261521 () Bool)

(assert (=> bm!261521 (= call!261527 (usedCharacters!872 (ite c!625598 (reg!10746 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) (ite c!625595 (regTwo!21347 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) (regOne!21346 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))))))

(declare-fun call!261525 () List!38196)

(declare-fun bm!261522 () Bool)

(assert (=> bm!261522 (= call!261526 (++!9474 (ite c!625595 call!261528 call!261525) (ite c!625595 call!261525 call!261528)))))

(declare-fun bm!261523 () Bool)

(assert (=> bm!261523 (= call!261525 call!261527)))

(declare-fun b!3615823 () Bool)

(assert (=> b!3615823 (= e!2237946 (Cons!38072 (c!625548 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) Nil!38072))))

(declare-fun b!3615824 () Bool)

(assert (=> b!3615824 (= e!2237948 call!261526)))

(declare-fun b!3615825 () Bool)

(assert (=> b!3615825 (= c!625598 ((_ is Star!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(assert (=> b!3615825 (= e!2237946 e!2237949)))

(declare-fun d!1064100 () Bool)

(declare-fun c!625596 () Bool)

(assert (=> d!1064100 (= c!625596 (or ((_ is EmptyExpr!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) ((_ is EmptyLang!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))))

(assert (=> d!1064100 (= (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) e!2237947)))

(declare-fun b!3615822 () Bool)

(assert (=> b!3615822 (= e!2237947 Nil!38072)))

(assert (= (and d!1064100 c!625596) b!3615822))

(assert (= (and d!1064100 (not c!625596)) b!3615821))

(assert (= (and b!3615821 c!625597) b!3615823))

(assert (= (and b!3615821 (not c!625597)) b!3615825))

(assert (= (and b!3615825 c!625598) b!3615818))

(assert (= (and b!3615825 (not c!625598)) b!3615819))

(assert (= (and b!3615819 c!625595) b!3615820))

(assert (= (and b!3615819 (not c!625595)) b!3615824))

(assert (= (or b!3615820 b!3615824) bm!261520))

(assert (= (or b!3615820 b!3615824) bm!261523))

(assert (= (or b!3615820 b!3615824) bm!261522))

(assert (= (or b!3615818 bm!261523) bm!261521))

(declare-fun m!4114423 () Bool)

(assert (=> bm!261520 m!4114423))

(declare-fun m!4114425 () Bool)

(assert (=> bm!261521 m!4114425))

(declare-fun m!4114427 () Bool)

(assert (=> bm!261522 m!4114427))

(assert (=> bm!261495 d!1064100))

(declare-fun d!1064102 () Bool)

(assert (=> d!1064102 (not (matchR!4986 (regex!5658 rule!403) lt!1246984))))

(declare-fun lt!1247082 () Unit!54491)

(declare-fun choose!21168 (LexerInterface!5247 List!38197 Rule!11116 List!38196 List!38196 Rule!11116) Unit!54491)

(assert (=> d!1064102 (= lt!1247082 (choose!21168 thiss!23823 rules!3307 (rule!8414 (_1!22112 lt!1246993)) lt!1246984 lt!1247011 rule!403))))

(assert (=> d!1064102 (isPrefix!3021 lt!1246984 lt!1247011)))

(assert (=> d!1064102 (= (lemmaMaxPrefNoSmallerRuleMatches!192 thiss!23823 rules!3307 (rule!8414 (_1!22112 lt!1246993)) lt!1246984 lt!1247011 rule!403) lt!1247082)))

(declare-fun bs!571007 () Bool)

(assert (= bs!571007 d!1064102))

(assert (=> bs!571007 m!4114151))

(declare-fun m!4114429 () Bool)

(assert (=> bs!571007 m!4114429))

(assert (=> bs!571007 m!4114087))

(assert (=> b!3615579 d!1064102))

(declare-fun d!1064104 () Bool)

(assert (=> d!1064104 (= (inv!51453 (tag!6370 rule!403)) (= (mod (str.len (value!181712 (tag!6370 rule!403))) 2) 0))))

(assert (=> b!3615598 d!1064104))

(declare-fun d!1064106 () Bool)

(declare-fun res!1463001 () Bool)

(declare-fun e!2237956 () Bool)

(assert (=> d!1064106 (=> (not res!1463001) (not e!2237956))))

(declare-fun semiInverseModEq!2402 (Int Int) Bool)

(assert (=> d!1064106 (= res!1463001 (semiInverseModEq!2402 (toChars!7801 (transformation!5658 rule!403)) (toValue!7942 (transformation!5658 rule!403))))))

(assert (=> d!1064106 (= (inv!51456 (transformation!5658 rule!403)) e!2237956)))

(declare-fun b!3615834 () Bool)

(declare-fun equivClasses!2301 (Int Int) Bool)

(assert (=> b!3615834 (= e!2237956 (equivClasses!2301 (toChars!7801 (transformation!5658 rule!403)) (toValue!7942 (transformation!5658 rule!403))))))

(assert (= (and d!1064106 res!1463001) b!3615834))

(declare-fun m!4114431 () Bool)

(assert (=> d!1064106 m!4114431))

(declare-fun m!4114433 () Bool)

(assert (=> b!3615834 m!4114433))

(assert (=> b!3615598 d!1064106))

(declare-fun d!1064108 () Bool)

(declare-fun res!1463016 () Bool)

(declare-fun e!2237963 () Bool)

(assert (=> d!1064108 (=> (not res!1463016) (not e!2237963))))

(declare-fun rulesValid!2159 (LexerInterface!5247 List!38197) Bool)

(assert (=> d!1064108 (= res!1463016 (rulesValid!2159 thiss!23823 rules!3307))))

(assert (=> d!1064108 (= (rulesInvariant!4644 thiss!23823 rules!3307) e!2237963)))

(declare-fun b!3615849 () Bool)

(declare-datatypes ((List!38198 0))(
  ( (Nil!38074) (Cons!38074 (h!43494 String!42774) (t!293849 List!38198)) )
))
(declare-fun noDuplicateTag!2155 (LexerInterface!5247 List!38197 List!38198) Bool)

(assert (=> b!3615849 (= e!2237963 (noDuplicateTag!2155 thiss!23823 rules!3307 Nil!38074))))

(assert (= (and d!1064108 res!1463016) b!3615849))

(declare-fun m!4114435 () Bool)

(assert (=> d!1064108 m!4114435))

(declare-fun m!4114437 () Bool)

(assert (=> b!3615849 m!4114437))

(assert (=> b!3615599 d!1064108))

(declare-fun d!1064110 () Bool)

(declare-fun res!1463028 () Bool)

(declare-fun e!2237972 () Bool)

(assert (=> d!1064110 (=> res!1463028 e!2237972)))

(assert (=> d!1064110 (= res!1463028 (not ((_ is Cons!38073) rules!3307)))))

(assert (=> d!1064110 (= (sepAndNonSepRulesDisjointChars!1828 rules!3307 rules!3307) e!2237972)))

(declare-fun b!3615863 () Bool)

(declare-fun e!2237973 () Bool)

(assert (=> b!3615863 (= e!2237972 e!2237973)))

(declare-fun res!1463029 () Bool)

(assert (=> b!3615863 (=> (not res!1463029) (not e!2237973))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!828 (Rule!11116 List!38197) Bool)

(assert (=> b!3615863 (= res!1463029 (ruleDisjointCharsFromAllFromOtherType!828 (h!43493 rules!3307) rules!3307))))

(declare-fun b!3615864 () Bool)

(assert (=> b!3615864 (= e!2237973 (sepAndNonSepRulesDisjointChars!1828 rules!3307 (t!293728 rules!3307)))))

(assert (= (and d!1064110 (not res!1463028)) b!3615863))

(assert (= (and b!3615863 res!1463029) b!3615864))

(declare-fun m!4114447 () Bool)

(assert (=> b!3615863 m!4114447))

(declare-fun m!4114451 () Bool)

(assert (=> b!3615864 m!4114451))

(assert (=> b!3615561 d!1064110))

(declare-fun d!1064112 () Bool)

(assert (=> d!1064112 (not (matchR!4986 (regex!5658 rule!403) lt!1246984))))

(declare-fun lt!1247100 () Unit!54491)

(declare-fun choose!21171 (Regex!10417 List!38196 C!21020) Unit!54491)

(assert (=> d!1064112 (= lt!1247100 (choose!21171 (regex!5658 rule!403) lt!1246984 lt!1247004))))

(assert (=> d!1064112 (validRegex!4767 (regex!5658 rule!403))))

(assert (=> d!1064112 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (regex!5658 rule!403) lt!1246984 lt!1247004) lt!1247100)))

(declare-fun bs!571008 () Bool)

(assert (= bs!571008 d!1064112))

(assert (=> bs!571008 m!4114151))

(declare-fun m!4114487 () Bool)

(assert (=> bs!571008 m!4114487))

(declare-fun m!4114489 () Bool)

(assert (=> bs!571008 m!4114489))

(assert (=> b!3615582 d!1064112))

(declare-fun d!1064116 () Bool)

(assert (=> d!1064116 (= (isEmpty!22490 (_2!22112 lt!1246978)) ((_ is Nil!38072) (_2!22112 lt!1246978)))))

(assert (=> b!3615602 d!1064116))

(declare-fun d!1064118 () Bool)

(declare-fun lt!1247103 () Bool)

(assert (=> d!1064118 (= lt!1247103 (select (content!5447 lt!1247006) lt!1247004))))

(declare-fun e!2237975 () Bool)

(assert (=> d!1064118 (= lt!1247103 e!2237975)))

(declare-fun res!1463030 () Bool)

(assert (=> d!1064118 (=> (not res!1463030) (not e!2237975))))

(assert (=> d!1064118 (= res!1463030 ((_ is Cons!38072) lt!1247006))))

(assert (=> d!1064118 (= (contains!7380 lt!1247006 lt!1247004) lt!1247103)))

(declare-fun b!3615865 () Bool)

(declare-fun e!2237974 () Bool)

(assert (=> b!3615865 (= e!2237975 e!2237974)))

(declare-fun res!1463031 () Bool)

(assert (=> b!3615865 (=> res!1463031 e!2237974)))

(assert (=> b!3615865 (= res!1463031 (= (h!43492 lt!1247006) lt!1247004))))

(declare-fun b!3615866 () Bool)

(assert (=> b!3615866 (= e!2237974 (contains!7380 (t!293727 lt!1247006) lt!1247004))))

(assert (= (and d!1064118 res!1463030) b!3615865))

(assert (= (and b!3615865 (not res!1463031)) b!3615866))

(declare-fun m!4114493 () Bool)

(assert (=> d!1064118 m!4114493))

(declare-fun m!4114495 () Bool)

(assert (=> d!1064118 m!4114495))

(declare-fun m!4114497 () Bool)

(assert (=> b!3615866 m!4114497))

(assert (=> b!3615603 d!1064118))

(declare-fun d!1064122 () Bool)

(declare-fun lt!1247107 () Int)

(assert (=> d!1064122 (>= lt!1247107 0)))

(declare-fun e!2237978 () Int)

(assert (=> d!1064122 (= lt!1247107 e!2237978)))

(declare-fun c!625605 () Bool)

(assert (=> d!1064122 (= c!625605 ((_ is Nil!38072) lt!1246984))))

(assert (=> d!1064122 (= (size!29039 lt!1246984) lt!1247107)))

(declare-fun b!3615871 () Bool)

(assert (=> b!3615871 (= e!2237978 0)))

(declare-fun b!3615872 () Bool)

(assert (=> b!3615872 (= e!2237978 (+ 1 (size!29039 (t!293727 lt!1246984))))))

(assert (= (and d!1064122 c!625605) b!3615871))

(assert (= (and d!1064122 (not c!625605)) b!3615872))

(declare-fun m!4114499 () Bool)

(assert (=> b!3615872 m!4114499))

(assert (=> b!3615603 d!1064122))

(declare-fun d!1064124 () Bool)

(declare-fun lt!1247108 () Int)

(assert (=> d!1064124 (>= lt!1247108 0)))

(declare-fun e!2237979 () Int)

(assert (=> d!1064124 (= lt!1247108 e!2237979)))

(declare-fun c!625606 () Bool)

(assert (=> d!1064124 (= c!625606 ((_ is Nil!38072) lt!1247011))))

(assert (=> d!1064124 (= (size!29039 lt!1247011) lt!1247108)))

(declare-fun b!3615873 () Bool)

(assert (=> b!3615873 (= e!2237979 0)))

(declare-fun b!3615874 () Bool)

(assert (=> b!3615874 (= e!2237979 (+ 1 (size!29039 (t!293727 lt!1247011))))))

(assert (= (and d!1064124 c!625606) b!3615873))

(assert (= (and d!1064124 (not c!625606)) b!3615874))

(declare-fun m!4114501 () Bool)

(assert (=> b!3615874 m!4114501))

(assert (=> b!3615603 d!1064124))

(declare-fun d!1064126 () Bool)

(assert (=> d!1064126 (= lt!1246973 lt!1246984)))

(declare-fun lt!1247111 () Unit!54491)

(declare-fun choose!21172 (List!38196 List!38196 List!38196) Unit!54491)

(assert (=> d!1064126 (= lt!1247111 (choose!21172 lt!1246973 lt!1246984 lt!1247011))))

(assert (=> d!1064126 (isPrefix!3021 lt!1246973 lt!1247011)))

(assert (=> d!1064126 (= (lemmaIsPrefixSameLengthThenSameList!595 lt!1246973 lt!1246984 lt!1247011) lt!1247111)))

(declare-fun bs!571010 () Bool)

(assert (= bs!571010 d!1064126))

(declare-fun m!4114503 () Bool)

(assert (=> bs!571010 m!4114503))

(assert (=> bs!571010 m!4114071))

(assert (=> b!3615603 d!1064126))

(declare-fun d!1064128 () Bool)

(assert (=> d!1064128 (= (head!7622 lt!1246973) (h!43492 lt!1246973))))

(assert (=> b!3615603 d!1064128))

(declare-fun d!1064130 () Bool)

(declare-fun lt!1247114 () Int)

(assert (=> d!1064130 (= lt!1247114 (size!29039 (list!14046 lt!1246997)))))

(declare-fun size!29041 (Conc!11605) Int)

(assert (=> d!1064130 (= lt!1247114 (size!29041 (c!625549 lt!1246997)))))

(assert (=> d!1064130 (= (size!29038 lt!1246997) lt!1247114)))

(declare-fun bs!571011 () Bool)

(assert (= bs!571011 d!1064130))

(assert (=> bs!571011 m!4114129))

(assert (=> bs!571011 m!4114129))

(declare-fun m!4114505 () Bool)

(assert (=> bs!571011 m!4114505))

(declare-fun m!4114507 () Bool)

(assert (=> bs!571011 m!4114507))

(assert (=> b!3615603 d!1064130))

(declare-fun d!1064132 () Bool)

(declare-fun fromListB!1943 (List!38196) BalanceConc!22824)

(assert (=> d!1064132 (= (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993))) (fromListB!1943 (originalCharacters!6372 (_1!22112 lt!1246993))))))

(declare-fun bs!571012 () Bool)

(assert (= bs!571012 d!1064132))

(declare-fun m!4114509 () Bool)

(assert (=> bs!571012 m!4114509))

(assert (=> b!3615564 d!1064132))

(declare-fun b!3615924 () Bool)

(declare-fun e!2238011 () Bool)

(assert (=> b!3615924 (= e!2238011 true)))

(declare-fun d!1064134 () Bool)

(assert (=> d!1064134 e!2238011))

(assert (= d!1064134 b!3615924))

(declare-fun order!20803 () Int)

(declare-fun order!20805 () Int)

(declare-fun lambda!124092 () Int)

(declare-fun dynLambda!16473 (Int Int) Int)

(declare-fun dynLambda!16474 (Int Int) Int)

(assert (=> b!3615924 (< (dynLambda!16473 order!20803 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) (dynLambda!16474 order!20805 lambda!124092))))

(declare-fun order!20807 () Int)

(declare-fun dynLambda!16475 (Int Int) Int)

(assert (=> b!3615924 (< (dynLambda!16475 order!20807 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) (dynLambda!16474 order!20805 lambda!124092))))

(declare-fun dynLambda!16476 (Int BalanceConc!22824) TokenValue!5888)

(assert (=> d!1064134 (= (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246994) (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993)))))))

(declare-fun lt!1247126 () Unit!54491)

(declare-fun Forall2of!321 (Int BalanceConc!22824 BalanceConc!22824) Unit!54491)

(assert (=> d!1064134 (= lt!1247126 (Forall2of!321 lambda!124092 lt!1246994 (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993)))))))

(assert (=> d!1064134 (= (list!14046 lt!1246994) (list!14046 (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993)))))))

(assert (=> d!1064134 (= (lemmaEqSameImage!849 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246994 (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993)))) lt!1247126)))

(declare-fun b_lambda!106961 () Bool)

(assert (=> (not b_lambda!106961) (not d!1064134)))

(declare-fun t!293770 () Bool)

(declare-fun tb!207337 () Bool)

(assert (=> (and b!3615583 (= (toValue!7942 (transformation!5658 rule!403)) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293770) tb!207337))

(declare-fun result!252664 () Bool)

(assert (=> tb!207337 (= result!252664 (inv!21 (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246994)))))

(declare-fun m!4114553 () Bool)

(assert (=> tb!207337 m!4114553))

(assert (=> d!1064134 t!293770))

(declare-fun b_and!264043 () Bool)

(assert (= b_and!263987 (and (=> t!293770 result!252664) b_and!264043)))

(declare-fun tb!207339 () Bool)

(declare-fun t!293772 () Bool)

(assert (=> (and b!3615577 (= (toValue!7942 (transformation!5658 anOtherTypeRule!33)) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293772) tb!207339))

(declare-fun result!252668 () Bool)

(assert (= result!252668 result!252664))

(assert (=> d!1064134 t!293772))

(declare-fun b_and!264045 () Bool)

(assert (= b_and!263991 (and (=> t!293772 result!252668) b_and!264045)))

(declare-fun t!293774 () Bool)

(declare-fun tb!207341 () Bool)

(assert (=> (and b!3615584 (= (toValue!7942 (transformation!5658 (h!43493 rules!3307))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293774) tb!207341))

(declare-fun result!252670 () Bool)

(assert (= result!252670 result!252664))

(assert (=> d!1064134 t!293774))

(declare-fun b_and!264047 () Bool)

(assert (= b_and!263995 (and (=> t!293774 result!252670) b_and!264047)))

(declare-fun t!293776 () Bool)

(declare-fun tb!207343 () Bool)

(assert (=> (and b!3615578 (= (toValue!7942 (transformation!5658 (rule!8414 token!511))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293776) tb!207343))

(declare-fun result!252672 () Bool)

(assert (= result!252672 result!252664))

(assert (=> d!1064134 t!293776))

(declare-fun b_and!264049 () Bool)

(assert (= b_and!263999 (and (=> t!293776 result!252672) b_and!264049)))

(declare-fun b_lambda!106963 () Bool)

(assert (=> (not b_lambda!106963) (not d!1064134)))

(declare-fun tb!207345 () Bool)

(declare-fun t!293778 () Bool)

(assert (=> (and b!3615583 (= (toValue!7942 (transformation!5658 rule!403)) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293778) tb!207345))

(declare-fun result!252674 () Bool)

(assert (=> tb!207345 (= result!252674 (inv!21 (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (seqFromList!4211 (originalCharacters!6372 (_1!22112 lt!1246993))))))))

(declare-fun m!4114555 () Bool)

(assert (=> tb!207345 m!4114555))

(assert (=> d!1064134 t!293778))

(declare-fun b_and!264051 () Bool)

(assert (= b_and!264043 (and (=> t!293778 result!252674) b_and!264051)))

(declare-fun t!293780 () Bool)

(declare-fun tb!207347 () Bool)

(assert (=> (and b!3615577 (= (toValue!7942 (transformation!5658 anOtherTypeRule!33)) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293780) tb!207347))

(declare-fun result!252676 () Bool)

(assert (= result!252676 result!252674))

(assert (=> d!1064134 t!293780))

(declare-fun b_and!264053 () Bool)

(assert (= b_and!264045 (and (=> t!293780 result!252676) b_and!264053)))

(declare-fun t!293782 () Bool)

(declare-fun tb!207349 () Bool)

(assert (=> (and b!3615584 (= (toValue!7942 (transformation!5658 (h!43493 rules!3307))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293782) tb!207349))

(declare-fun result!252678 () Bool)

(assert (= result!252678 result!252674))

(assert (=> d!1064134 t!293782))

(declare-fun b_and!264055 () Bool)

(assert (= b_and!264047 (and (=> t!293782 result!252678) b_and!264055)))

(declare-fun tb!207351 () Bool)

(declare-fun t!293784 () Bool)

(assert (=> (and b!3615578 (= (toValue!7942 (transformation!5658 (rule!8414 token!511))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293784) tb!207351))

(declare-fun result!252680 () Bool)

(assert (= result!252680 result!252674))

(assert (=> d!1064134 t!293784))

(declare-fun b_and!264057 () Bool)

(assert (= b_and!264049 (and (=> t!293784 result!252680) b_and!264057)))

(assert (=> d!1064134 m!4114159))

(declare-fun m!4114557 () Bool)

(assert (=> d!1064134 m!4114557))

(assert (=> d!1064134 m!4114159))

(declare-fun m!4114559 () Bool)

(assert (=> d!1064134 m!4114559))

(declare-fun m!4114561 () Bool)

(assert (=> d!1064134 m!4114561))

(assert (=> d!1064134 m!4114089))

(assert (=> d!1064134 m!4114159))

(declare-fun m!4114563 () Bool)

(assert (=> d!1064134 m!4114563))

(assert (=> b!3615564 d!1064134))

(declare-fun d!1064164 () Bool)

(assert (=> d!1064164 (= (apply!9164 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246994) (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246994))))

(declare-fun b_lambda!106965 () Bool)

(assert (=> (not b_lambda!106965) (not d!1064164)))

(assert (=> d!1064164 t!293770))

(declare-fun b_and!264059 () Bool)

(assert (= b_and!264051 (and (=> t!293770 result!252664) b_and!264059)))

(assert (=> d!1064164 t!293772))

(declare-fun b_and!264061 () Bool)

(assert (= b_and!264053 (and (=> t!293772 result!252668) b_and!264061)))

(assert (=> d!1064164 t!293774))

(declare-fun b_and!264063 () Bool)

(assert (= b_and!264055 (and (=> t!293774 result!252670) b_and!264063)))

(assert (=> d!1064164 t!293776))

(declare-fun b_and!264065 () Bool)

(assert (= b_and!264057 (and (=> t!293776 result!252672) b_and!264065)))

(assert (=> d!1064164 m!4114561))

(assert (=> b!3615564 d!1064164))

(declare-fun d!1064166 () Bool)

(declare-fun lt!1247127 () Int)

(assert (=> d!1064166 (= lt!1247127 (size!29039 (list!14046 lt!1246994)))))

(assert (=> d!1064166 (= lt!1247127 (size!29041 (c!625549 lt!1246994)))))

(assert (=> d!1064166 (= (size!29038 lt!1246994) lt!1247127)))

(declare-fun bs!571017 () Bool)

(assert (= bs!571017 d!1064166))

(assert (=> bs!571017 m!4114089))

(assert (=> bs!571017 m!4114089))

(declare-fun m!4114565 () Bool)

(assert (=> bs!571017 m!4114565))

(declare-fun m!4114567 () Bool)

(assert (=> bs!571017 m!4114567))

(assert (=> b!3615564 d!1064166))

(declare-fun b!3615937 () Bool)

(declare-fun e!2238022 () Bool)

(assert (=> b!3615937 (= e!2238022 true)))

(declare-fun d!1064168 () Bool)

(assert (=> d!1064168 e!2238022))

(assert (= d!1064168 b!3615937))

(declare-fun order!20815 () Int)

(declare-fun lambda!124098 () Int)

(declare-fun dynLambda!16477 (Int Int) Int)

(assert (=> b!3615937 (< (dynLambda!16473 order!20803 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) (dynLambda!16477 order!20815 lambda!124098))))

(assert (=> b!3615937 (< (dynLambda!16475 order!20807 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) (dynLambda!16477 order!20815 lambda!124098))))

(assert (=> d!1064168 (= (list!14046 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246994))) (list!14046 lt!1246994))))

(declare-fun lt!1247131 () Unit!54491)

(declare-fun ForallOf!663 (Int BalanceConc!22824) Unit!54491)

(assert (=> d!1064168 (= lt!1247131 (ForallOf!663 lambda!124098 lt!1246994))))

(assert (=> d!1064168 (= (lemmaSemiInverse!1415 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246994) lt!1247131)))

(declare-fun b_lambda!106971 () Bool)

(assert (=> (not b_lambda!106971) (not d!1064168)))

(declare-fun tb!207365 () Bool)

(declare-fun t!293798 () Bool)

(assert (=> (and b!3615583 (= (toChars!7801 (transformation!5658 rule!403)) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293798) tb!207365))

(declare-fun tp!1104884 () Bool)

(declare-fun b!3615938 () Bool)

(declare-fun e!2238024 () Bool)

(assert (=> b!3615938 (= e!2238024 (and (inv!51460 (c!625549 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246994)))) tp!1104884))))

(declare-fun result!252694 () Bool)

(assert (=> tb!207365 (= result!252694 (and (inv!51461 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246994))) e!2238024))))

(assert (= tb!207365 b!3615938))

(declare-fun m!4114575 () Bool)

(assert (=> b!3615938 m!4114575))

(declare-fun m!4114577 () Bool)

(assert (=> tb!207365 m!4114577))

(assert (=> d!1064168 t!293798))

(declare-fun b_and!264083 () Bool)

(assert (= b_and!264027 (and (=> t!293798 result!252694) b_and!264083)))

(declare-fun t!293804 () Bool)

(declare-fun tb!207371 () Bool)

(assert (=> (and b!3615577 (= (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293804) tb!207371))

(declare-fun result!252700 () Bool)

(assert (= result!252700 result!252694))

(assert (=> d!1064168 t!293804))

(declare-fun b_and!264085 () Bool)

(assert (= b_and!264029 (and (=> t!293804 result!252700) b_and!264085)))

(declare-fun tb!207373 () Bool)

(declare-fun t!293806 () Bool)

(assert (=> (and b!3615584 (= (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293806) tb!207373))

(declare-fun result!252702 () Bool)

(assert (= result!252702 result!252694))

(assert (=> d!1064168 t!293806))

(declare-fun b_and!264087 () Bool)

(assert (= b_and!264031 (and (=> t!293806 result!252702) b_and!264087)))

(declare-fun t!293808 () Bool)

(declare-fun tb!207375 () Bool)

(assert (=> (and b!3615578 (= (toChars!7801 (transformation!5658 (rule!8414 token!511))) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293808) tb!207375))

(declare-fun result!252704 () Bool)

(assert (= result!252704 result!252694))

(assert (=> d!1064168 t!293808))

(declare-fun b_and!264089 () Bool)

(assert (= b_and!264033 (and (=> t!293808 result!252704) b_and!264089)))

(declare-fun b_lambda!106973 () Bool)

(assert (=> (not b_lambda!106973) (not d!1064168)))

(assert (=> d!1064168 t!293770))

(declare-fun b_and!264091 () Bool)

(assert (= b_and!264059 (and (=> t!293770 result!252664) b_and!264091)))

(assert (=> d!1064168 t!293772))

(declare-fun b_and!264093 () Bool)

(assert (= b_and!264061 (and (=> t!293772 result!252668) b_and!264093)))

(assert (=> d!1064168 t!293774))

(declare-fun b_and!264095 () Bool)

(assert (= b_and!264063 (and (=> t!293774 result!252670) b_and!264095)))

(assert (=> d!1064168 t!293776))

(declare-fun b_and!264097 () Bool)

(assert (= b_and!264065 (and (=> t!293776 result!252672) b_and!264097)))

(assert (=> d!1064168 m!4114561))

(assert (=> d!1064168 m!4114561))

(declare-fun m!4114587 () Bool)

(assert (=> d!1064168 m!4114587))

(assert (=> d!1064168 m!4114089))

(declare-fun m!4114589 () Bool)

(assert (=> d!1064168 m!4114589))

(assert (=> d!1064168 m!4114587))

(declare-fun m!4114591 () Bool)

(assert (=> d!1064168 m!4114591))

(assert (=> b!3615564 d!1064168))

(declare-fun d!1064174 () Bool)

(assert (=> d!1064174 (= (size!29037 (_1!22112 lt!1246993)) (size!29039 (originalCharacters!6372 (_1!22112 lt!1246993))))))

(declare-fun Unit!54511 () Unit!54491)

(assert (=> d!1064174 (= (lemmaCharactersSize!711 (_1!22112 lt!1246993)) Unit!54511)))

(declare-fun bs!571018 () Bool)

(assert (= bs!571018 d!1064174))

(declare-fun m!4114593 () Bool)

(assert (=> bs!571018 m!4114593))

(assert (=> b!3615564 d!1064174))

(declare-fun d!1064176 () Bool)

(assert (=> d!1064176 (not (contains!7380 (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246965))))

(declare-fun lt!1247136 () Unit!54491)

(declare-fun choose!21173 (LexerInterface!5247 List!38197 List!38197 Rule!11116 Rule!11116 C!21020) Unit!54491)

(assert (=> d!1064176 (= lt!1247136 (choose!21173 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8414 (_1!22112 lt!1246993)) lt!1246965))))

(assert (=> d!1064176 (rulesInvariant!4644 thiss!23823 rules!3307)))

(assert (=> d!1064176 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!246 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8414 (_1!22112 lt!1246993)) lt!1246965) lt!1247136)))

(declare-fun bs!571019 () Bool)

(assert (= bs!571019 d!1064176))

(assert (=> bs!571019 m!4114177))

(assert (=> bs!571019 m!4114177))

(declare-fun m!4114595 () Bool)

(assert (=> bs!571019 m!4114595))

(declare-fun m!4114597 () Bool)

(assert (=> bs!571019 m!4114597))

(assert (=> bs!571019 m!4114203))

(assert (=> b!3615601 d!1064176))

(assert (=> bm!261492 d!1064100))

(declare-fun d!1064178 () Bool)

(assert (=> d!1064178 (not (contains!7380 (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1247004))))

(declare-fun lt!1247137 () Unit!54491)

(assert (=> d!1064178 (= lt!1247137 (choose!21173 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8414 (_1!22112 lt!1246993)) lt!1247004))))

(assert (=> d!1064178 (rulesInvariant!4644 thiss!23823 rules!3307)))

(assert (=> d!1064178 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!246 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8414 (_1!22112 lt!1246993)) lt!1247004) lt!1247137)))

(declare-fun bs!571020 () Bool)

(assert (= bs!571020 d!1064178))

(assert (=> bs!571020 m!4114177))

(assert (=> bs!571020 m!4114177))

(declare-fun m!4114599 () Bool)

(assert (=> bs!571020 m!4114599))

(declare-fun m!4114601 () Bool)

(assert (=> bs!571020 m!4114601))

(assert (=> bs!571020 m!4114203))

(assert (=> b!3615563 d!1064178))

(declare-fun d!1064180 () Bool)

(declare-fun lt!1247139 () Int)

(assert (=> d!1064180 (>= lt!1247139 0)))

(declare-fun e!2238027 () Int)

(assert (=> d!1064180 (= lt!1247139 e!2238027)))

(declare-fun c!625627 () Bool)

(assert (=> d!1064180 (= c!625627 ((_ is Nil!38072) lt!1246973))))

(assert (=> d!1064180 (= (size!29039 lt!1246973) lt!1247139)))

(declare-fun b!3615941 () Bool)

(assert (=> b!3615941 (= e!2238027 0)))

(declare-fun b!3615942 () Bool)

(assert (=> b!3615942 (= e!2238027 (+ 1 (size!29039 (t!293727 lt!1246973))))))

(assert (= (and d!1064180 c!625627) b!3615941))

(assert (= (and d!1064180 (not c!625627)) b!3615942))

(declare-fun m!4114603 () Bool)

(assert (=> b!3615942 m!4114603))

(assert (=> b!3615581 d!1064180))

(declare-fun d!1064182 () Bool)

(assert (=> d!1064182 (= (maxPrefixOneRule!1925 thiss!23823 (rule!8414 (_1!22112 lt!1246993)) lt!1247011) (Some!7945 (tuple2!37957 (Token!10683 (apply!9164 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) (seqFromList!4211 lt!1246973)) (rule!8414 (_1!22112 lt!1246993)) (size!29039 lt!1246973) lt!1246973) (_2!22112 lt!1246993))))))

(declare-fun lt!1247152 () Unit!54491)

(declare-fun choose!21174 (LexerInterface!5247 List!38197 List!38196 List!38196 List!38196 Rule!11116) Unit!54491)

(assert (=> d!1064182 (= lt!1247152 (choose!21174 thiss!23823 rules!3307 lt!1246973 lt!1247011 (_2!22112 lt!1246993) (rule!8414 (_1!22112 lt!1246993))))))

(assert (=> d!1064182 (not (isEmpty!22491 rules!3307))))

(assert (=> d!1064182 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!997 thiss!23823 rules!3307 lt!1246973 lt!1247011 (_2!22112 lt!1246993) (rule!8414 (_1!22112 lt!1246993))) lt!1247152)))

(declare-fun bs!571022 () Bool)

(assert (= bs!571022 d!1064182))

(assert (=> bs!571022 m!4114109))

(assert (=> bs!571022 m!4114111))

(assert (=> bs!571022 m!4114119))

(assert (=> bs!571022 m!4114133))

(declare-fun m!4114637 () Bool)

(assert (=> bs!571022 m!4114637))

(assert (=> bs!571022 m!4114109))

(assert (=> bs!571022 m!4114107))

(assert (=> b!3615581 d!1064182))

(declare-fun d!1064200 () Bool)

(assert (=> d!1064200 (= (_2!22112 lt!1246993) lt!1246986)))

(declare-fun lt!1247156 () Unit!54491)

(declare-fun choose!21175 (List!38196 List!38196 List!38196 List!38196 List!38196) Unit!54491)

(assert (=> d!1064200 (= lt!1247156 (choose!21175 lt!1246973 (_2!22112 lt!1246993) lt!1246973 lt!1246986 lt!1247011))))

(assert (=> d!1064200 (isPrefix!3021 lt!1246973 lt!1247011)))

(assert (=> d!1064200 (= (lemmaSamePrefixThenSameSuffix!1376 lt!1246973 (_2!22112 lt!1246993) lt!1246973 lt!1246986 lt!1247011) lt!1247156)))

(declare-fun bs!571023 () Bool)

(assert (= bs!571023 d!1064200))

(declare-fun m!4114645 () Bool)

(assert (=> bs!571023 m!4114645))

(assert (=> bs!571023 m!4114071))

(assert (=> b!3615581 d!1064200))

(declare-fun d!1064204 () Bool)

(assert (=> d!1064204 (= (seqFromList!4211 lt!1246973) (fromListB!1943 lt!1246973))))

(declare-fun bs!571024 () Bool)

(assert (= bs!571024 d!1064204))

(declare-fun m!4114647 () Bool)

(assert (=> bs!571024 m!4114647))

(assert (=> b!3615581 d!1064204))

(declare-fun b!3616038 () Bool)

(declare-fun e!2238085 () Option!7946)

(declare-datatypes ((tuple2!37960 0))(
  ( (tuple2!37961 (_1!22114 List!38196) (_2!22114 List!38196)) )
))
(declare-fun lt!1247197 () tuple2!37960)

(assert (=> b!3616038 (= e!2238085 (Some!7945 (tuple2!37957 (Token!10683 (apply!9164 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) (seqFromList!4211 (_1!22114 lt!1247197))) (rule!8414 (_1!22112 lt!1246993)) (size!29038 (seqFromList!4211 (_1!22114 lt!1247197))) (_1!22114 lt!1247197)) (_2!22114 lt!1247197))))))

(declare-fun lt!1247195 () Unit!54491)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!984 (Regex!10417 List!38196) Unit!54491)

(assert (=> b!3616038 (= lt!1247195 (longestMatchIsAcceptedByMatchOrIsEmpty!984 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1247011))))

(declare-fun res!1463100 () Bool)

(declare-fun findLongestMatchInner!1011 (Regex!10417 List!38196 Int List!38196 List!38196 Int) tuple2!37960)

(assert (=> b!3616038 (= res!1463100 (isEmpty!22490 (_1!22114 (findLongestMatchInner!1011 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) Nil!38072 (size!29039 Nil!38072) lt!1247011 lt!1247011 (size!29039 lt!1247011)))))))

(declare-fun e!2238084 () Bool)

(assert (=> b!3616038 (=> res!1463100 e!2238084)))

(assert (=> b!3616038 e!2238084))

(declare-fun lt!1247194 () Unit!54491)

(assert (=> b!3616038 (= lt!1247194 lt!1247195)))

(declare-fun lt!1247196 () Unit!54491)

(assert (=> b!3616038 (= lt!1247196 (lemmaSemiInverse!1415 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) (seqFromList!4211 (_1!22114 lt!1247197))))))

(declare-fun d!1064206 () Bool)

(declare-fun e!2238082 () Bool)

(assert (=> d!1064206 e!2238082))

(declare-fun res!1463098 () Bool)

(assert (=> d!1064206 (=> res!1463098 e!2238082)))

(declare-fun lt!1247198 () Option!7946)

(assert (=> d!1064206 (= res!1463098 (isEmpty!22492 lt!1247198))))

(assert (=> d!1064206 (= lt!1247198 e!2238085)))

(declare-fun c!625648 () Bool)

(assert (=> d!1064206 (= c!625648 (isEmpty!22490 (_1!22114 lt!1247197)))))

(declare-fun findLongestMatch!926 (Regex!10417 List!38196) tuple2!37960)

(assert (=> d!1064206 (= lt!1247197 (findLongestMatch!926 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1247011))))

(assert (=> d!1064206 (ruleValid!1923 thiss!23823 (rule!8414 (_1!22112 lt!1246993)))))

(assert (=> d!1064206 (= (maxPrefixOneRule!1925 thiss!23823 (rule!8414 (_1!22112 lt!1246993)) lt!1247011) lt!1247198)))

(declare-fun b!3616039 () Bool)

(declare-fun res!1463095 () Bool)

(declare-fun e!2238083 () Bool)

(assert (=> b!3616039 (=> (not res!1463095) (not e!2238083))))

(assert (=> b!3616039 (= res!1463095 (= (rule!8414 (_1!22112 (get!12386 lt!1247198))) (rule!8414 (_1!22112 lt!1246993))))))

(declare-fun b!3616040 () Bool)

(declare-fun res!1463097 () Bool)

(assert (=> b!3616040 (=> (not res!1463097) (not e!2238083))))

(assert (=> b!3616040 (= res!1463097 (= (++!9474 (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247198)))) (_2!22112 (get!12386 lt!1247198))) lt!1247011))))

(declare-fun b!3616041 () Bool)

(assert (=> b!3616041 (= e!2238083 (= (size!29037 (_1!22112 (get!12386 lt!1247198))) (size!29039 (originalCharacters!6372 (_1!22112 (get!12386 lt!1247198))))))))

(declare-fun b!3616042 () Bool)

(assert (=> b!3616042 (= e!2238082 e!2238083)))

(declare-fun res!1463101 () Bool)

(assert (=> b!3616042 (=> (not res!1463101) (not e!2238083))))

(assert (=> b!3616042 (= res!1463101 (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247198))))))))

(declare-fun b!3616043 () Bool)

(declare-fun res!1463099 () Bool)

(assert (=> b!3616043 (=> (not res!1463099) (not e!2238083))))

(assert (=> b!3616043 (= res!1463099 (< (size!29039 (_2!22112 (get!12386 lt!1247198))) (size!29039 lt!1247011)))))

(declare-fun b!3616044 () Bool)

(assert (=> b!3616044 (= e!2238085 None!7945)))

(declare-fun b!3616045 () Bool)

(declare-fun res!1463096 () Bool)

(assert (=> b!3616045 (=> (not res!1463096) (not e!2238083))))

(assert (=> b!3616045 (= res!1463096 (= (value!181713 (_1!22112 (get!12386 lt!1247198))) (apply!9164 (transformation!5658 (rule!8414 (_1!22112 (get!12386 lt!1247198)))) (seqFromList!4211 (originalCharacters!6372 (_1!22112 (get!12386 lt!1247198)))))))))

(declare-fun b!3616046 () Bool)

(assert (=> b!3616046 (= e!2238084 (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) (_1!22114 (findLongestMatchInner!1011 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) Nil!38072 (size!29039 Nil!38072) lt!1247011 lt!1247011 (size!29039 lt!1247011)))))))

(assert (= (and d!1064206 c!625648) b!3616044))

(assert (= (and d!1064206 (not c!625648)) b!3616038))

(assert (= (and b!3616038 (not res!1463100)) b!3616046))

(assert (= (and d!1064206 (not res!1463098)) b!3616042))

(assert (= (and b!3616042 res!1463101) b!3616040))

(assert (= (and b!3616040 res!1463097) b!3616043))

(assert (= (and b!3616043 res!1463099) b!3616039))

(assert (= (and b!3616039 res!1463095) b!3616045))

(assert (= (and b!3616045 res!1463096) b!3616041))

(declare-fun m!4114697 () Bool)

(assert (=> b!3616042 m!4114697))

(declare-fun m!4114699 () Bool)

(assert (=> b!3616042 m!4114699))

(assert (=> b!3616042 m!4114699))

(declare-fun m!4114701 () Bool)

(assert (=> b!3616042 m!4114701))

(assert (=> b!3616042 m!4114701))

(declare-fun m!4114703 () Bool)

(assert (=> b!3616042 m!4114703))

(assert (=> b!3616043 m!4114697))

(declare-fun m!4114705 () Bool)

(assert (=> b!3616043 m!4114705))

(assert (=> b!3616043 m!4114239))

(assert (=> b!3616039 m!4114697))

(assert (=> b!3616041 m!4114697))

(declare-fun m!4114707 () Bool)

(assert (=> b!3616041 m!4114707))

(assert (=> b!3616045 m!4114697))

(declare-fun m!4114709 () Bool)

(assert (=> b!3616045 m!4114709))

(assert (=> b!3616045 m!4114709))

(declare-fun m!4114711 () Bool)

(assert (=> b!3616045 m!4114711))

(assert (=> b!3616040 m!4114697))

(assert (=> b!3616040 m!4114699))

(assert (=> b!3616040 m!4114699))

(assert (=> b!3616040 m!4114701))

(assert (=> b!3616040 m!4114701))

(declare-fun m!4114717 () Bool)

(assert (=> b!3616040 m!4114717))

(declare-fun m!4114721 () Bool)

(assert (=> d!1064206 m!4114721))

(declare-fun m!4114723 () Bool)

(assert (=> d!1064206 m!4114723))

(declare-fun m!4114727 () Bool)

(assert (=> d!1064206 m!4114727))

(declare-fun m!4114729 () Bool)

(assert (=> d!1064206 m!4114729))

(declare-fun m!4114737 () Bool)

(assert (=> b!3616038 m!4114737))

(declare-fun m!4114743 () Bool)

(assert (=> b!3616038 m!4114743))

(assert (=> b!3616038 m!4114239))

(declare-fun m!4114745 () Bool)

(assert (=> b!3616038 m!4114745))

(assert (=> b!3616038 m!4114239))

(declare-fun m!4114747 () Bool)

(assert (=> b!3616038 m!4114747))

(declare-fun m!4114749 () Bool)

(assert (=> b!3616038 m!4114749))

(declare-fun m!4114751 () Bool)

(assert (=> b!3616038 m!4114751))

(assert (=> b!3616038 m!4114749))

(declare-fun m!4114755 () Bool)

(assert (=> b!3616038 m!4114755))

(assert (=> b!3616038 m!4114745))

(assert (=> b!3616038 m!4114749))

(assert (=> b!3616038 m!4114749))

(declare-fun m!4114759 () Bool)

(assert (=> b!3616038 m!4114759))

(assert (=> b!3616046 m!4114745))

(assert (=> b!3616046 m!4114239))

(assert (=> b!3616046 m!4114745))

(assert (=> b!3616046 m!4114239))

(assert (=> b!3616046 m!4114747))

(declare-fun m!4114765 () Bool)

(assert (=> b!3616046 m!4114765))

(assert (=> b!3615581 d!1064206))

(declare-fun d!1064242 () Bool)

(declare-fun lt!1247208 () List!38196)

(assert (=> d!1064242 (= (++!9474 lt!1246973 lt!1247208) lt!1247011)))

(declare-fun e!2238095 () List!38196)

(assert (=> d!1064242 (= lt!1247208 e!2238095)))

(declare-fun c!625654 () Bool)

(assert (=> d!1064242 (= c!625654 ((_ is Cons!38072) lt!1246973))))

(assert (=> d!1064242 (>= (size!29039 lt!1247011) (size!29039 lt!1246973))))

(assert (=> d!1064242 (= (getSuffix!1596 lt!1247011 lt!1246973) lt!1247208)))

(declare-fun b!3616068 () Bool)

(assert (=> b!3616068 (= e!2238095 (getSuffix!1596 (tail!5603 lt!1247011) (t!293727 lt!1246973)))))

(declare-fun b!3616069 () Bool)

(assert (=> b!3616069 (= e!2238095 lt!1247011)))

(assert (= (and d!1064242 c!625654) b!3616068))

(assert (= (and d!1064242 (not c!625654)) b!3616069))

(declare-fun m!4114773 () Bool)

(assert (=> d!1064242 m!4114773))

(assert (=> d!1064242 m!4114239))

(assert (=> d!1064242 m!4114119))

(declare-fun m!4114775 () Bool)

(assert (=> b!3616068 m!4114775))

(assert (=> b!3616068 m!4114775))

(declare-fun m!4114777 () Bool)

(assert (=> b!3616068 m!4114777))

(assert (=> b!3615581 d!1064242))

(declare-fun d!1064246 () Bool)

(assert (=> d!1064246 (= (apply!9164 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))) (seqFromList!4211 lt!1246973)) (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (seqFromList!4211 lt!1246973)))))

(declare-fun b_lambda!106981 () Bool)

(assert (=> (not b_lambda!106981) (not d!1064246)))

(declare-fun tb!207385 () Bool)

(declare-fun t!293818 () Bool)

(assert (=> (and b!3615583 (= (toValue!7942 (transformation!5658 rule!403)) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293818) tb!207385))

(declare-fun result!252714 () Bool)

(assert (=> tb!207385 (= result!252714 (inv!21 (dynLambda!16476 (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993)))) (seqFromList!4211 lt!1246973))))))

(declare-fun m!4114779 () Bool)

(assert (=> tb!207385 m!4114779))

(assert (=> d!1064246 t!293818))

(declare-fun b_and!264123 () Bool)

(assert (= b_and!264091 (and (=> t!293818 result!252714) b_and!264123)))

(declare-fun tb!207387 () Bool)

(declare-fun t!293820 () Bool)

(assert (=> (and b!3615577 (= (toValue!7942 (transformation!5658 anOtherTypeRule!33)) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293820) tb!207387))

(declare-fun result!252716 () Bool)

(assert (= result!252716 result!252714))

(assert (=> d!1064246 t!293820))

(declare-fun b_and!264125 () Bool)

(assert (= b_and!264093 (and (=> t!293820 result!252716) b_and!264125)))

(declare-fun t!293822 () Bool)

(declare-fun tb!207389 () Bool)

(assert (=> (and b!3615584 (= (toValue!7942 (transformation!5658 (h!43493 rules!3307))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293822) tb!207389))

(declare-fun result!252718 () Bool)

(assert (= result!252718 result!252714))

(assert (=> d!1064246 t!293822))

(declare-fun b_and!264127 () Bool)

(assert (= b_and!264095 (and (=> t!293822 result!252718) b_and!264127)))

(declare-fun t!293824 () Bool)

(declare-fun tb!207391 () Bool)

(assert (=> (and b!3615578 (= (toValue!7942 (transformation!5658 (rule!8414 token!511))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293824) tb!207391))

(declare-fun result!252720 () Bool)

(assert (= result!252720 result!252714))

(assert (=> d!1064246 t!293824))

(declare-fun b_and!264129 () Bool)

(assert (= b_and!264097 (and (=> t!293824 result!252720) b_and!264129)))

(assert (=> d!1064246 m!4114109))

(declare-fun m!4114781 () Bool)

(assert (=> d!1064246 m!4114781))

(assert (=> b!3615581 d!1064246))

(declare-fun b!3616074 () Bool)

(declare-fun e!2238104 () Bool)

(declare-fun lt!1247210 () Bool)

(assert (=> b!3616074 (= e!2238104 (not lt!1247210))))

(declare-fun b!3616075 () Bool)

(declare-fun e!2238099 () Bool)

(assert (=> b!3616075 (= e!2238099 (= (head!7622 lt!1246984) (c!625548 (regex!5658 rule!403))))))

(declare-fun b!3616076 () Bool)

(declare-fun res!1463116 () Bool)

(assert (=> b!3616076 (=> (not res!1463116) (not e!2238099))))

(declare-fun call!261553 () Bool)

(assert (=> b!3616076 (= res!1463116 (not call!261553))))

(declare-fun b!3616077 () Bool)

(declare-fun res!1463121 () Bool)

(declare-fun e!2238103 () Bool)

(assert (=> b!3616077 (=> res!1463121 e!2238103)))

(assert (=> b!3616077 (= res!1463121 (not ((_ is ElementMatch!10417) (regex!5658 rule!403))))))

(assert (=> b!3616077 (= e!2238104 e!2238103)))

(declare-fun b!3616078 () Bool)

(declare-fun e!2238100 () Bool)

(declare-fun e!2238105 () Bool)

(assert (=> b!3616078 (= e!2238100 e!2238105)))

(declare-fun res!1463115 () Bool)

(assert (=> b!3616078 (=> res!1463115 e!2238105)))

(assert (=> b!3616078 (= res!1463115 call!261553)))

(declare-fun b!3616079 () Bool)

(declare-fun res!1463118 () Bool)

(assert (=> b!3616079 (=> res!1463118 e!2238105)))

(assert (=> b!3616079 (= res!1463118 (not (isEmpty!22490 (tail!5603 lt!1246984))))))

(declare-fun d!1064248 () Bool)

(declare-fun e!2238102 () Bool)

(assert (=> d!1064248 e!2238102))

(declare-fun c!625658 () Bool)

(assert (=> d!1064248 (= c!625658 ((_ is EmptyExpr!10417) (regex!5658 rule!403)))))

(declare-fun e!2238101 () Bool)

(assert (=> d!1064248 (= lt!1247210 e!2238101)))

(declare-fun c!625656 () Bool)

(assert (=> d!1064248 (= c!625656 (isEmpty!22490 lt!1246984))))

(assert (=> d!1064248 (validRegex!4767 (regex!5658 rule!403))))

(assert (=> d!1064248 (= (matchR!4986 (regex!5658 rule!403) lt!1246984) lt!1247210)))

(declare-fun b!3616080 () Bool)

(assert (=> b!3616080 (= e!2238102 (= lt!1247210 call!261553))))

(declare-fun b!3616081 () Bool)

(assert (=> b!3616081 (= e!2238102 e!2238104)))

(declare-fun c!625657 () Bool)

(assert (=> b!3616081 (= c!625657 ((_ is EmptyLang!10417) (regex!5658 rule!403)))))

(declare-fun bm!261548 () Bool)

(assert (=> bm!261548 (= call!261553 (isEmpty!22490 lt!1246984))))

(declare-fun b!3616082 () Bool)

(declare-fun res!1463119 () Bool)

(assert (=> b!3616082 (=> res!1463119 e!2238103)))

(assert (=> b!3616082 (= res!1463119 e!2238099)))

(declare-fun res!1463117 () Bool)

(assert (=> b!3616082 (=> (not res!1463117) (not e!2238099))))

(assert (=> b!3616082 (= res!1463117 lt!1247210)))

(declare-fun b!3616083 () Bool)

(assert (=> b!3616083 (= e!2238101 (matchR!4986 (derivativeStep!3154 (regex!5658 rule!403) (head!7622 lt!1246984)) (tail!5603 lt!1246984)))))

(declare-fun b!3616084 () Bool)

(assert (=> b!3616084 (= e!2238103 e!2238100)))

(declare-fun res!1463122 () Bool)

(assert (=> b!3616084 (=> (not res!1463122) (not e!2238100))))

(assert (=> b!3616084 (= res!1463122 (not lt!1247210))))

(declare-fun b!3616085 () Bool)

(assert (=> b!3616085 (= e!2238105 (not (= (head!7622 lt!1246984) (c!625548 (regex!5658 rule!403)))))))

(declare-fun b!3616086 () Bool)

(assert (=> b!3616086 (= e!2238101 (nullable!3605 (regex!5658 rule!403)))))

(declare-fun b!3616087 () Bool)

(declare-fun res!1463120 () Bool)

(assert (=> b!3616087 (=> (not res!1463120) (not e!2238099))))

(assert (=> b!3616087 (= res!1463120 (isEmpty!22490 (tail!5603 lt!1246984)))))

(assert (= (and d!1064248 c!625656) b!3616086))

(assert (= (and d!1064248 (not c!625656)) b!3616083))

(assert (= (and d!1064248 c!625658) b!3616080))

(assert (= (and d!1064248 (not c!625658)) b!3616081))

(assert (= (and b!3616081 c!625657) b!3616074))

(assert (= (and b!3616081 (not c!625657)) b!3616077))

(assert (= (and b!3616077 (not res!1463121)) b!3616082))

(assert (= (and b!3616082 res!1463117) b!3616076))

(assert (= (and b!3616076 res!1463116) b!3616087))

(assert (= (and b!3616087 res!1463120) b!3616075))

(assert (= (and b!3616082 (not res!1463119)) b!3616084))

(assert (= (and b!3616084 res!1463122) b!3616078))

(assert (= (and b!3616078 (not res!1463115)) b!3616079))

(assert (= (and b!3616079 (not res!1463118)) b!3616085))

(assert (= (or b!3616080 b!3616076 b!3616078) bm!261548))

(declare-fun m!4114793 () Bool)

(assert (=> bm!261548 m!4114793))

(declare-fun m!4114795 () Bool)

(assert (=> b!3616083 m!4114795))

(assert (=> b!3616083 m!4114795))

(declare-fun m!4114797 () Bool)

(assert (=> b!3616083 m!4114797))

(declare-fun m!4114799 () Bool)

(assert (=> b!3616083 m!4114799))

(assert (=> b!3616083 m!4114797))

(assert (=> b!3616083 m!4114799))

(declare-fun m!4114801 () Bool)

(assert (=> b!3616083 m!4114801))

(assert (=> b!3616079 m!4114799))

(assert (=> b!3616079 m!4114799))

(declare-fun m!4114803 () Bool)

(assert (=> b!3616079 m!4114803))

(assert (=> b!3616087 m!4114799))

(assert (=> b!3616087 m!4114799))

(assert (=> b!3616087 m!4114803))

(assert (=> b!3616075 m!4114795))

(declare-fun m!4114805 () Bool)

(assert (=> b!3616086 m!4114805))

(assert (=> b!3616085 m!4114795))

(assert (=> d!1064248 m!4114793))

(assert (=> d!1064248 m!4114489))

(assert (=> b!3615605 d!1064248))

(declare-fun d!1064252 () Bool)

(declare-fun res!1463135 () Bool)

(declare-fun e!2238114 () Bool)

(assert (=> d!1064252 (=> (not res!1463135) (not e!2238114))))

(assert (=> d!1064252 (= res!1463135 (validRegex!4767 (regex!5658 rule!403)))))

(assert (=> d!1064252 (= (ruleValid!1923 thiss!23823 rule!403) e!2238114)))

(declare-fun b!3616100 () Bool)

(declare-fun res!1463136 () Bool)

(assert (=> b!3616100 (=> (not res!1463136) (not e!2238114))))

(assert (=> b!3616100 (= res!1463136 (not (nullable!3605 (regex!5658 rule!403))))))

(declare-fun b!3616101 () Bool)

(assert (=> b!3616101 (= e!2238114 (not (= (tag!6370 rule!403) (String!42775 ""))))))

(assert (= (and d!1064252 res!1463135) b!3616100))

(assert (= (and b!3616100 res!1463136) b!3616101))

(assert (=> d!1064252 m!4114489))

(assert (=> b!3616100 m!4114805))

(assert (=> b!3615605 d!1064252))

(declare-fun d!1064254 () Bool)

(assert (=> d!1064254 (ruleValid!1923 thiss!23823 rule!403)))

(declare-fun lt!1247216 () Unit!54491)

(declare-fun choose!21178 (LexerInterface!5247 Rule!11116 List!38197) Unit!54491)

(assert (=> d!1064254 (= lt!1247216 (choose!21178 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1064254 (contains!7379 rules!3307 rule!403)))

(assert (=> d!1064254 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1078 thiss!23823 rule!403 rules!3307) lt!1247216)))

(declare-fun bs!571032 () Bool)

(assert (= bs!571032 d!1064254))

(assert (=> bs!571032 m!4114153))

(declare-fun m!4114811 () Bool)

(assert (=> bs!571032 m!4114811))

(assert (=> bs!571032 m!4114179))

(assert (=> b!3615605 d!1064254))

(declare-fun d!1064258 () Bool)

(declare-fun lt!1247217 () Bool)

(assert (=> d!1064258 (= lt!1247217 (select (content!5446 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2238118 () Bool)

(assert (=> d!1064258 (= lt!1247217 e!2238118)))

(declare-fun res!1463142 () Bool)

(assert (=> d!1064258 (=> (not res!1463142) (not e!2238118))))

(assert (=> d!1064258 (= res!1463142 ((_ is Cons!38073) rules!3307))))

(assert (=> d!1064258 (= (contains!7379 rules!3307 anOtherTypeRule!33) lt!1247217)))

(declare-fun b!3616106 () Bool)

(declare-fun e!2238119 () Bool)

(assert (=> b!3616106 (= e!2238118 e!2238119)))

(declare-fun res!1463141 () Bool)

(assert (=> b!3616106 (=> res!1463141 e!2238119)))

(assert (=> b!3616106 (= res!1463141 (= (h!43493 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3616107 () Bool)

(assert (=> b!3616107 (= e!2238119 (contains!7379 (t!293728 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1064258 res!1463142) b!3616106))

(assert (= (and b!3616106 (not res!1463141)) b!3616107))

(assert (=> d!1064258 m!4114247))

(declare-fun m!4114813 () Bool)

(assert (=> d!1064258 m!4114813))

(declare-fun m!4114815 () Bool)

(assert (=> b!3616107 m!4114815))

(assert (=> b!3615566 d!1064258))

(declare-fun d!1064260 () Bool)

(assert (=> d!1064260 (= (inv!51453 (tag!6370 anOtherTypeRule!33)) (= (mod (str.len (value!181712 (tag!6370 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3615567 d!1064260))

(declare-fun d!1064262 () Bool)

(declare-fun res!1463143 () Bool)

(declare-fun e!2238120 () Bool)

(assert (=> d!1064262 (=> (not res!1463143) (not e!2238120))))

(assert (=> d!1064262 (= res!1463143 (semiInverseModEq!2402 (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toValue!7942 (transformation!5658 anOtherTypeRule!33))))))

(assert (=> d!1064262 (= (inv!51456 (transformation!5658 anOtherTypeRule!33)) e!2238120)))

(declare-fun b!3616108 () Bool)

(assert (=> b!3616108 (= e!2238120 (equivClasses!2301 (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toValue!7942 (transformation!5658 anOtherTypeRule!33))))))

(assert (= (and d!1064262 res!1463143) b!3616108))

(declare-fun m!4114817 () Bool)

(assert (=> d!1064262 m!4114817))

(declare-fun m!4114819 () Bool)

(assert (=> b!3616108 m!4114819))

(assert (=> b!3615567 d!1064262))

(declare-fun d!1064264 () Bool)

(assert (=> d!1064264 (not (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973))))

(declare-fun lt!1247218 () Unit!54491)

(assert (=> d!1064264 (= lt!1247218 (choose!21171 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973 lt!1246965))))

(assert (=> d!1064264 (validRegex!4767 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))

(assert (=> d!1064264 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973 lt!1246965) lt!1247218)))

(declare-fun bs!571033 () Bool)

(assert (= bs!571033 d!1064264))

(assert (=> bs!571033 m!4114169))

(declare-fun m!4114821 () Bool)

(assert (=> bs!571033 m!4114821))

(declare-fun m!4114823 () Bool)

(assert (=> bs!571033 m!4114823))

(assert (=> bm!261496 d!1064264))

(declare-fun d!1064266 () Bool)

(assert (=> d!1064266 (= (inv!51453 (tag!6370 (h!43493 rules!3307))) (= (mod (str.len (value!181712 (tag!6370 (h!43493 rules!3307)))) 2) 0))))

(assert (=> b!3615569 d!1064266))

(declare-fun d!1064268 () Bool)

(declare-fun res!1463144 () Bool)

(declare-fun e!2238121 () Bool)

(assert (=> d!1064268 (=> (not res!1463144) (not e!2238121))))

(assert (=> d!1064268 (= res!1463144 (semiInverseModEq!2402 (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toValue!7942 (transformation!5658 (h!43493 rules!3307)))))))

(assert (=> d!1064268 (= (inv!51456 (transformation!5658 (h!43493 rules!3307))) e!2238121)))

(declare-fun b!3616109 () Bool)

(assert (=> b!3616109 (= e!2238121 (equivClasses!2301 (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toValue!7942 (transformation!5658 (h!43493 rules!3307)))))))

(assert (= (and d!1064268 res!1463144) b!3616109))

(declare-fun m!4114825 () Bool)

(assert (=> d!1064268 m!4114825))

(declare-fun m!4114827 () Bool)

(assert (=> b!3616109 m!4114827))

(assert (=> b!3615569 d!1064268))

(declare-fun b!3616118 () Bool)

(declare-fun e!2238128 () Int)

(assert (=> b!3616118 (= e!2238128 0)))

(declare-fun d!1064270 () Bool)

(declare-fun lt!1247221 () Int)

(assert (=> d!1064270 (>= lt!1247221 0)))

(assert (=> d!1064270 (= lt!1247221 e!2238128)))

(declare-fun c!625664 () Bool)

(assert (=> d!1064270 (= c!625664 (and ((_ is Cons!38073) rules!3307) (= (h!43493 rules!3307) (rule!8414 (_1!22112 lt!1246993)))))))

(assert (=> d!1064270 (contains!7379 rules!3307 (rule!8414 (_1!22112 lt!1246993)))))

(assert (=> d!1064270 (= (getIndex!440 rules!3307 (rule!8414 (_1!22112 lt!1246993))) lt!1247221)))

(declare-fun b!3616119 () Bool)

(declare-fun e!2238127 () Int)

(assert (=> b!3616119 (= e!2238128 e!2238127)))

(declare-fun c!625663 () Bool)

(assert (=> b!3616119 (= c!625663 (and ((_ is Cons!38073) rules!3307) (not (= (h!43493 rules!3307) (rule!8414 (_1!22112 lt!1246993))))))))

(declare-fun b!3616120 () Bool)

(assert (=> b!3616120 (= e!2238127 (+ 1 (getIndex!440 (t!293728 rules!3307) (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3616121 () Bool)

(assert (=> b!3616121 (= e!2238127 (- 1))))

(assert (= (and d!1064270 c!625664) b!3616118))

(assert (= (and d!1064270 (not c!625664)) b!3616119))

(assert (= (and b!3616119 c!625663) b!3616120))

(assert (= (and b!3616119 (not c!625663)) b!3616121))

(declare-fun m!4114829 () Bool)

(assert (=> d!1064270 m!4114829))

(declare-fun m!4114831 () Bool)

(assert (=> b!3616120 m!4114831))

(assert (=> b!3615586 d!1064270))

(declare-fun b!3616126 () Bool)

(declare-fun e!2238131 () Int)

(assert (=> b!3616126 (= e!2238131 0)))

(declare-fun d!1064272 () Bool)

(declare-fun lt!1247224 () Int)

(assert (=> d!1064272 (>= lt!1247224 0)))

(assert (=> d!1064272 (= lt!1247224 e!2238131)))

(declare-fun c!625666 () Bool)

(assert (=> d!1064272 (= c!625666 (and ((_ is Cons!38073) rules!3307) (= (h!43493 rules!3307) rule!403)))))

(assert (=> d!1064272 (contains!7379 rules!3307 rule!403)))

(assert (=> d!1064272 (= (getIndex!440 rules!3307 rule!403) lt!1247224)))

(declare-fun b!3616127 () Bool)

(declare-fun e!2238129 () Int)

(assert (=> b!3616127 (= e!2238131 e!2238129)))

(declare-fun c!625665 () Bool)

(assert (=> b!3616127 (= c!625665 (and ((_ is Cons!38073) rules!3307) (not (= (h!43493 rules!3307) rule!403))))))

(declare-fun b!3616128 () Bool)

(assert (=> b!3616128 (= e!2238129 (+ 1 (getIndex!440 (t!293728 rules!3307) rule!403)))))

(declare-fun b!3616129 () Bool)

(assert (=> b!3616129 (= e!2238129 (- 1))))

(assert (= (and d!1064272 c!625666) b!3616126))

(assert (= (and d!1064272 (not c!625666)) b!3616127))

(assert (= (and b!3616127 c!625665) b!3616128))

(assert (= (and b!3616127 (not c!625665)) b!3616129))

(assert (=> d!1064272 m!4114179))

(declare-fun m!4114833 () Bool)

(assert (=> b!3616128 m!4114833))

(assert (=> b!3615586 d!1064272))

(declare-fun d!1064274 () Bool)

(assert (=> d!1064274 (= (rule!8414 (_1!22112 lt!1246993)) rule!403)))

(declare-fun lt!1247231 () Unit!54491)

(declare-fun choose!21180 (List!38197 Rule!11116 Rule!11116) Unit!54491)

(assert (=> d!1064274 (= lt!1247231 (choose!21180 rules!3307 (rule!8414 (_1!22112 lt!1246993)) rule!403))))

(assert (=> d!1064274 (contains!7379 rules!3307 (rule!8414 (_1!22112 lt!1246993)))))

(assert (=> d!1064274 (= (lemmaSameIndexThenSameElement!208 rules!3307 (rule!8414 (_1!22112 lt!1246993)) rule!403) lt!1247231)))

(declare-fun bs!571034 () Bool)

(assert (= bs!571034 d!1064274))

(declare-fun m!4114835 () Bool)

(assert (=> bs!571034 m!4114835))

(assert (=> bs!571034 m!4114829))

(assert (=> b!3615586 d!1064274))

(declare-fun d!1064276 () Bool)

(assert (=> d!1064276 (not (contains!7380 (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1247004))))

(declare-fun lt!1247240 () Unit!54491)

(declare-fun choose!21181 (LexerInterface!5247 List!38197 List!38197 Rule!11116 Rule!11116 C!21020) Unit!54491)

(assert (=> d!1064276 (= lt!1247240 (choose!21181 thiss!23823 rules!3307 rules!3307 (rule!8414 (_1!22112 lt!1246993)) rule!403 lt!1247004))))

(assert (=> d!1064276 (rulesInvariant!4644 thiss!23823 rules!3307)))

(assert (=> d!1064276 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!364 thiss!23823 rules!3307 rules!3307 (rule!8414 (_1!22112 lt!1246993)) rule!403 lt!1247004) lt!1247240)))

(declare-fun bs!571037 () Bool)

(assert (= bs!571037 d!1064276))

(assert (=> bs!571037 m!4114177))

(assert (=> bs!571037 m!4114177))

(assert (=> bs!571037 m!4114599))

(declare-fun m!4114853 () Bool)

(assert (=> bs!571037 m!4114853))

(assert (=> bs!571037 m!4114203))

(assert (=> b!3615587 d!1064276))

(declare-fun d!1064286 () Bool)

(assert (=> d!1064286 (= (isEmpty!22491 rules!3307) ((_ is Nil!38073) rules!3307))))

(assert (=> b!3615607 d!1064286))

(declare-fun d!1064290 () Bool)

(assert (=> d!1064290 (isPrefix!3021 lt!1246984 (++!9474 lt!1246984 suffix!1395))))

(declare-fun lt!1247245 () Unit!54491)

(declare-fun choose!21182 (List!38196 List!38196) Unit!54491)

(assert (=> d!1064290 (= lt!1247245 (choose!21182 lt!1246984 suffix!1395))))

(assert (=> d!1064290 (= (lemmaConcatTwoListThenFirstIsPrefix!1942 lt!1246984 suffix!1395) lt!1247245)))

(declare-fun bs!571039 () Bool)

(assert (= bs!571039 d!1064290))

(assert (=> bs!571039 m!4114075))

(assert (=> bs!571039 m!4114075))

(declare-fun m!4114861 () Bool)

(assert (=> bs!571039 m!4114861))

(declare-fun m!4114863 () Bool)

(assert (=> bs!571039 m!4114863))

(assert (=> b!3615585 d!1064290))

(declare-fun b!3616148 () Bool)

(declare-fun res!1463156 () Bool)

(declare-fun e!2238148 () Bool)

(assert (=> b!3616148 (=> (not res!1463156) (not e!2238148))))

(declare-fun lt!1247250 () Option!7946)

(assert (=> b!3616148 (= res!1463156 (= (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247250)))) (originalCharacters!6372 (_1!22112 (get!12386 lt!1247250)))))))

(declare-fun bm!261549 () Bool)

(declare-fun call!261554 () Option!7946)

(assert (=> bm!261549 (= call!261554 (maxPrefixOneRule!1925 thiss!23823 (h!43493 rules!3307) lt!1247011))))

(declare-fun d!1064294 () Bool)

(declare-fun e!2238146 () Bool)

(assert (=> d!1064294 e!2238146))

(declare-fun res!1463160 () Bool)

(assert (=> d!1064294 (=> res!1463160 e!2238146)))

(assert (=> d!1064294 (= res!1463160 (isEmpty!22492 lt!1247250))))

(declare-fun e!2238147 () Option!7946)

(assert (=> d!1064294 (= lt!1247250 e!2238147)))

(declare-fun c!625674 () Bool)

(assert (=> d!1064294 (= c!625674 (and ((_ is Cons!38073) rules!3307) ((_ is Nil!38073) (t!293728 rules!3307))))))

(declare-fun lt!1247247 () Unit!54491)

(declare-fun lt!1247246 () Unit!54491)

(assert (=> d!1064294 (= lt!1247247 lt!1247246)))

(assert (=> d!1064294 (isPrefix!3021 lt!1247011 lt!1247011)))

(assert (=> d!1064294 (= lt!1247246 (lemmaIsPrefixRefl!1923 lt!1247011 lt!1247011))))

(assert (=> d!1064294 (rulesValidInductive!1986 thiss!23823 rules!3307)))

(assert (=> d!1064294 (= (maxPrefix!2781 thiss!23823 rules!3307 lt!1247011) lt!1247250)))

(declare-fun b!3616149 () Bool)

(assert (=> b!3616149 (= e!2238148 (contains!7379 rules!3307 (rule!8414 (_1!22112 (get!12386 lt!1247250)))))))

(declare-fun b!3616150 () Bool)

(declare-fun lt!1247248 () Option!7946)

(declare-fun lt!1247249 () Option!7946)

(assert (=> b!3616150 (= e!2238147 (ite (and ((_ is None!7945) lt!1247248) ((_ is None!7945) lt!1247249)) None!7945 (ite ((_ is None!7945) lt!1247249) lt!1247248 (ite ((_ is None!7945) lt!1247248) lt!1247249 (ite (>= (size!29037 (_1!22112 (v!37699 lt!1247248))) (size!29037 (_1!22112 (v!37699 lt!1247249)))) lt!1247248 lt!1247249)))))))

(assert (=> b!3616150 (= lt!1247248 call!261554)))

(assert (=> b!3616150 (= lt!1247249 (maxPrefix!2781 thiss!23823 (t!293728 rules!3307) lt!1247011))))

(declare-fun b!3616151 () Bool)

(assert (=> b!3616151 (= e!2238147 call!261554)))

(declare-fun b!3616152 () Bool)

(declare-fun res!1463161 () Bool)

(assert (=> b!3616152 (=> (not res!1463161) (not e!2238148))))

(assert (=> b!3616152 (= res!1463161 (= (++!9474 (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247250)))) (_2!22112 (get!12386 lt!1247250))) lt!1247011))))

(declare-fun b!3616153 () Bool)

(declare-fun res!1463155 () Bool)

(assert (=> b!3616153 (=> (not res!1463155) (not e!2238148))))

(assert (=> b!3616153 (= res!1463155 (= (value!181713 (_1!22112 (get!12386 lt!1247250))) (apply!9164 (transformation!5658 (rule!8414 (_1!22112 (get!12386 lt!1247250)))) (seqFromList!4211 (originalCharacters!6372 (_1!22112 (get!12386 lt!1247250)))))))))

(declare-fun b!3616154 () Bool)

(assert (=> b!3616154 (= e!2238146 e!2238148)))

(declare-fun res!1463158 () Bool)

(assert (=> b!3616154 (=> (not res!1463158) (not e!2238148))))

(assert (=> b!3616154 (= res!1463158 (isDefined!6179 lt!1247250))))

(declare-fun b!3616155 () Bool)

(declare-fun res!1463159 () Bool)

(assert (=> b!3616155 (=> (not res!1463159) (not e!2238148))))

(assert (=> b!3616155 (= res!1463159 (< (size!29039 (_2!22112 (get!12386 lt!1247250))) (size!29039 lt!1247011)))))

(declare-fun b!3616156 () Bool)

(declare-fun res!1463157 () Bool)

(assert (=> b!3616156 (=> (not res!1463157) (not e!2238148))))

(assert (=> b!3616156 (= res!1463157 (matchR!4986 (regex!5658 (rule!8414 (_1!22112 (get!12386 lt!1247250)))) (list!14046 (charsOf!3672 (_1!22112 (get!12386 lt!1247250))))))))

(assert (= (and d!1064294 c!625674) b!3616151))

(assert (= (and d!1064294 (not c!625674)) b!3616150))

(assert (= (or b!3616151 b!3616150) bm!261549))

(assert (= (and d!1064294 (not res!1463160)) b!3616154))

(assert (= (and b!3616154 res!1463158) b!3616148))

(assert (= (and b!3616148 res!1463156) b!3616155))

(assert (= (and b!3616155 res!1463159) b!3616152))

(assert (= (and b!3616152 res!1463161) b!3616153))

(assert (= (and b!3616153 res!1463155) b!3616156))

(assert (= (and b!3616156 res!1463157) b!3616149))

(declare-fun m!4114865 () Bool)

(assert (=> bm!261549 m!4114865))

(declare-fun m!4114867 () Bool)

(assert (=> d!1064294 m!4114867))

(declare-fun m!4114869 () Bool)

(assert (=> d!1064294 m!4114869))

(declare-fun m!4114871 () Bool)

(assert (=> d!1064294 m!4114871))

(assert (=> d!1064294 m!4114289))

(declare-fun m!4114873 () Bool)

(assert (=> b!3616150 m!4114873))

(declare-fun m!4114875 () Bool)

(assert (=> b!3616152 m!4114875))

(declare-fun m!4114877 () Bool)

(assert (=> b!3616152 m!4114877))

(assert (=> b!3616152 m!4114877))

(declare-fun m!4114879 () Bool)

(assert (=> b!3616152 m!4114879))

(assert (=> b!3616152 m!4114879))

(declare-fun m!4114881 () Bool)

(assert (=> b!3616152 m!4114881))

(declare-fun m!4114883 () Bool)

(assert (=> b!3616154 m!4114883))

(assert (=> b!3616149 m!4114875))

(declare-fun m!4114885 () Bool)

(assert (=> b!3616149 m!4114885))

(assert (=> b!3616155 m!4114875))

(declare-fun m!4114887 () Bool)

(assert (=> b!3616155 m!4114887))

(assert (=> b!3616155 m!4114239))

(assert (=> b!3616156 m!4114875))

(assert (=> b!3616156 m!4114877))

(assert (=> b!3616156 m!4114877))

(assert (=> b!3616156 m!4114879))

(assert (=> b!3616156 m!4114879))

(declare-fun m!4114889 () Bool)

(assert (=> b!3616156 m!4114889))

(assert (=> b!3616148 m!4114875))

(assert (=> b!3616148 m!4114877))

(assert (=> b!3616148 m!4114877))

(assert (=> b!3616148 m!4114879))

(assert (=> b!3616153 m!4114875))

(declare-fun m!4114891 () Bool)

(assert (=> b!3616153 m!4114891))

(assert (=> b!3616153 m!4114891))

(declare-fun m!4114893 () Bool)

(assert (=> b!3616153 m!4114893))

(assert (=> b!3615585 d!1064294))

(declare-fun d!1064296 () Bool)

(declare-fun e!2238151 () Bool)

(assert (=> d!1064296 e!2238151))

(declare-fun res!1463166 () Bool)

(assert (=> d!1064296 (=> (not res!1463166) (not e!2238151))))

(assert (=> d!1064296 (= res!1463166 (isDefined!6178 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 (_1!22112 lt!1246993))))))))

(declare-fun lt!1247253 () Unit!54491)

(declare-fun choose!21185 (LexerInterface!5247 List!38197 List!38196 Token!10682) Unit!54491)

(assert (=> d!1064296 (= lt!1247253 (choose!21185 thiss!23823 rules!3307 lt!1247011 (_1!22112 lt!1246993)))))

(assert (=> d!1064296 (rulesInvariant!4644 thiss!23823 rules!3307)))

(assert (=> d!1064296 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1264 thiss!23823 rules!3307 lt!1247011 (_1!22112 lt!1246993)) lt!1247253)))

(declare-fun b!3616161 () Bool)

(declare-fun res!1463167 () Bool)

(assert (=> b!3616161 (=> (not res!1463167) (not e!2238151))))

(assert (=> b!3616161 (= res!1463167 (matchR!4986 (regex!5658 (get!12385 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 (_1!22112 lt!1246993)))))) (list!14046 (charsOf!3672 (_1!22112 lt!1246993)))))))

(declare-fun b!3616162 () Bool)

(assert (=> b!3616162 (= e!2238151 (= (rule!8414 (_1!22112 lt!1246993)) (get!12385 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 (_1!22112 lt!1246993)))))))))

(assert (= (and d!1064296 res!1463166) b!3616161))

(assert (= (and b!3616161 res!1463167) b!3616162))

(assert (=> d!1064296 m!4114065))

(assert (=> d!1064296 m!4114065))

(declare-fun m!4114895 () Bool)

(assert (=> d!1064296 m!4114895))

(declare-fun m!4114897 () Bool)

(assert (=> d!1064296 m!4114897))

(assert (=> d!1064296 m!4114203))

(assert (=> b!3616161 m!4114065))

(declare-fun m!4114899 () Bool)

(assert (=> b!3616161 m!4114899))

(assert (=> b!3616161 m!4114091))

(assert (=> b!3616161 m!4114097))

(assert (=> b!3616161 m!4114097))

(declare-fun m!4114901 () Bool)

(assert (=> b!3616161 m!4114901))

(assert (=> b!3616161 m!4114091))

(assert (=> b!3616161 m!4114065))

(assert (=> b!3616162 m!4114065))

(assert (=> b!3616162 m!4114065))

(assert (=> b!3616162 m!4114899))

(assert (=> b!3615585 d!1064296))

(assert (=> b!3615585 d!1064096))

(declare-fun b!3616191 () Bool)

(declare-fun res!1463186 () Bool)

(declare-fun e!2238168 () Bool)

(assert (=> b!3616191 (=> (not res!1463186) (not e!2238168))))

(declare-fun lt!1247356 () Token!10682)

(assert (=> b!3616191 (= res!1463186 (matchR!4986 (regex!5658 (get!12385 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 lt!1247356))))) (list!14046 (charsOf!3672 lt!1247356))))))

(declare-fun b!3616194 () Bool)

(declare-fun e!2238167 () Unit!54491)

(declare-fun Unit!54512 () Unit!54491)

(assert (=> b!3616194 (= e!2238167 Unit!54512)))

(declare-fun b!3616192 () Bool)

(assert (=> b!3616192 (= e!2238168 (= (rule!8414 lt!1247356) (get!12385 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 lt!1247356))))))))

(declare-fun b!3616193 () Bool)

(declare-fun Unit!54513 () Unit!54491)

(assert (=> b!3616193 (= e!2238167 Unit!54513)))

(declare-fun lt!1247346 () List!38196)

(assert (=> b!3616193 (= lt!1247346 (++!9474 lt!1246984 suffix!1395))))

(declare-fun lt!1247342 () Unit!54491)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!491 (LexerInterface!5247 Rule!11116 List!38197 List!38196) Unit!54491)

(assert (=> b!3616193 (= lt!1247342 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!491 thiss!23823 (rule!8414 lt!1247356) rules!3307 lt!1247346))))

(assert (=> b!3616193 (isEmpty!22492 (maxPrefixOneRule!1925 thiss!23823 (rule!8414 lt!1247356) lt!1247346))))

(declare-fun lt!1247347 () Unit!54491)

(assert (=> b!3616193 (= lt!1247347 lt!1247342)))

(declare-fun lt!1247355 () List!38196)

(assert (=> b!3616193 (= lt!1247355 (list!14046 (charsOf!3672 lt!1247356)))))

(declare-fun lt!1247348 () Unit!54491)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!479 (LexerInterface!5247 Rule!11116 List!38196 List!38196) Unit!54491)

(assert (=> b!3616193 (= lt!1247348 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!479 thiss!23823 (rule!8414 lt!1247356) lt!1247355 (++!9474 lt!1246984 suffix!1395)))))

(assert (=> b!3616193 (not (matchR!4986 (regex!5658 (rule!8414 lt!1247356)) lt!1247355))))

(declare-fun lt!1247349 () Unit!54491)

(assert (=> b!3616193 (= lt!1247349 lt!1247348)))

(assert (=> b!3616193 false))

(declare-fun d!1064298 () Bool)

(assert (=> d!1064298 (isDefined!6179 (maxPrefix!2781 thiss!23823 rules!3307 (++!9474 lt!1246984 suffix!1395)))))

(declare-fun lt!1247358 () Unit!54491)

(assert (=> d!1064298 (= lt!1247358 e!2238167)))

(declare-fun c!625680 () Bool)

(assert (=> d!1064298 (= c!625680 (isEmpty!22492 (maxPrefix!2781 thiss!23823 rules!3307 (++!9474 lt!1246984 suffix!1395))))))

(declare-fun lt!1247345 () Unit!54491)

(declare-fun lt!1247351 () Unit!54491)

(assert (=> d!1064298 (= lt!1247345 lt!1247351)))

(assert (=> d!1064298 e!2238168))

(declare-fun res!1463187 () Bool)

(assert (=> d!1064298 (=> (not res!1463187) (not e!2238168))))

(assert (=> d!1064298 (= res!1463187 (isDefined!6178 (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 lt!1247356)))))))

(assert (=> d!1064298 (= lt!1247351 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1264 thiss!23823 rules!3307 lt!1246984 lt!1247356))))

(declare-fun lt!1247350 () Unit!54491)

(declare-fun lt!1247343 () Unit!54491)

(assert (=> d!1064298 (= lt!1247350 lt!1247343)))

(declare-fun lt!1247354 () List!38196)

(assert (=> d!1064298 (isPrefix!3021 lt!1247354 (++!9474 lt!1246984 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!455 (List!38196 List!38196 List!38196) Unit!54491)

(assert (=> d!1064298 (= lt!1247343 (lemmaPrefixStaysPrefixWhenAddingToSuffix!455 lt!1247354 lt!1246984 suffix!1395))))

(assert (=> d!1064298 (= lt!1247354 (list!14046 (charsOf!3672 lt!1247356)))))

(declare-fun lt!1247353 () Unit!54491)

(declare-fun lt!1247352 () Unit!54491)

(assert (=> d!1064298 (= lt!1247353 lt!1247352)))

(declare-fun lt!1247344 () List!38196)

(declare-fun lt!1247357 () List!38196)

(assert (=> d!1064298 (isPrefix!3021 lt!1247344 (++!9474 lt!1247344 lt!1247357))))

(assert (=> d!1064298 (= lt!1247352 (lemmaConcatTwoListThenFirstIsPrefix!1942 lt!1247344 lt!1247357))))

(assert (=> d!1064298 (= lt!1247357 (_2!22112 (get!12386 (maxPrefix!2781 thiss!23823 rules!3307 lt!1246984))))))

(assert (=> d!1064298 (= lt!1247344 (list!14046 (charsOf!3672 lt!1247356)))))

(declare-datatypes ((List!38200 0))(
  ( (Nil!38076) (Cons!38076 (h!43496 Token!10682) (t!293851 List!38200)) )
))
(declare-fun head!7623 (List!38200) Token!10682)

(declare-datatypes ((IArray!23217 0))(
  ( (IArray!23218 (innerList!11666 List!38200)) )
))
(declare-datatypes ((Conc!11606 0))(
  ( (Node!11606 (left!29741 Conc!11606) (right!30071 Conc!11606) (csize!23442 Int) (cheight!11817 Int)) (Leaf!18046 (xs!14808 IArray!23217) (csize!23443 Int)) (Empty!11606) )
))
(declare-datatypes ((BalanceConc!22826 0))(
  ( (BalanceConc!22827 (c!625720 Conc!11606)) )
))
(declare-fun list!14049 (BalanceConc!22826) List!38200)

(declare-datatypes ((tuple2!37962 0))(
  ( (tuple2!37963 (_1!22115 BalanceConc!22826) (_2!22115 BalanceConc!22824)) )
))
(declare-fun lex!2487 (LexerInterface!5247 List!38197 BalanceConc!22824) tuple2!37962)

(assert (=> d!1064298 (= lt!1247356 (head!7623 (list!14049 (_1!22115 (lex!2487 thiss!23823 rules!3307 (seqFromList!4211 lt!1246984))))))))

(assert (=> d!1064298 (not (isEmpty!22491 rules!3307))))

(assert (=> d!1064298 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!927 thiss!23823 rules!3307 lt!1246984 suffix!1395) lt!1247358)))

(assert (= (and d!1064298 res!1463187) b!3616191))

(assert (= (and b!3616191 res!1463186) b!3616192))

(assert (= (and d!1064298 c!625680) b!3616193))

(assert (= (and d!1064298 (not c!625680)) b!3616194))

(declare-fun m!4114971 () Bool)

(assert (=> b!3616191 m!4114971))

(declare-fun m!4114973 () Bool)

(assert (=> b!3616191 m!4114973))

(declare-fun m!4114975 () Bool)

(assert (=> b!3616191 m!4114975))

(declare-fun m!4114977 () Bool)

(assert (=> b!3616191 m!4114977))

(declare-fun m!4114979 () Bool)

(assert (=> b!3616191 m!4114979))

(assert (=> b!3616191 m!4114971))

(assert (=> b!3616191 m!4114973))

(assert (=> b!3616191 m!4114977))

(assert (=> b!3616192 m!4114977))

(assert (=> b!3616192 m!4114977))

(assert (=> b!3616192 m!4114979))

(assert (=> b!3616193 m!4114971))

(declare-fun m!4114981 () Bool)

(assert (=> b!3616193 m!4114981))

(declare-fun m!4114983 () Bool)

(assert (=> b!3616193 m!4114983))

(assert (=> b!3616193 m!4114075))

(declare-fun m!4114985 () Bool)

(assert (=> b!3616193 m!4114985))

(assert (=> b!3616193 m!4114971))

(assert (=> b!3616193 m!4114973))

(assert (=> b!3616193 m!4114981))

(declare-fun m!4114993 () Bool)

(assert (=> b!3616193 m!4114993))

(assert (=> b!3616193 m!4114075))

(declare-fun m!4115001 () Bool)

(assert (=> b!3616193 m!4115001))

(declare-fun m!4115003 () Bool)

(assert (=> d!1064298 m!4115003))

(declare-fun m!4115005 () Bool)

(assert (=> d!1064298 m!4115005))

(assert (=> d!1064298 m!4115003))

(declare-fun m!4115007 () Bool)

(assert (=> d!1064298 m!4115007))

(assert (=> d!1064298 m!4114133))

(assert (=> d!1064298 m!4114971))

(assert (=> d!1064298 m!4114973))

(declare-fun m!4115009 () Bool)

(assert (=> d!1064298 m!4115009))

(assert (=> d!1064298 m!4114127))

(assert (=> d!1064298 m!4114127))

(declare-fun m!4115011 () Bool)

(assert (=> d!1064298 m!4115011))

(assert (=> d!1064298 m!4114977))

(declare-fun m!4115013 () Bool)

(assert (=> d!1064298 m!4115013))

(assert (=> d!1064298 m!4114977))

(assert (=> d!1064298 m!4114971))

(declare-fun m!4115021 () Bool)

(assert (=> d!1064298 m!4115021))

(declare-fun m!4115023 () Bool)

(assert (=> d!1064298 m!4115023))

(assert (=> d!1064298 m!4115021))

(declare-fun m!4115025 () Bool)

(assert (=> d!1064298 m!4115025))

(declare-fun m!4115027 () Bool)

(assert (=> d!1064298 m!4115027))

(declare-fun m!4115029 () Bool)

(assert (=> d!1064298 m!4115029))

(declare-fun m!4115031 () Bool)

(assert (=> d!1064298 m!4115031))

(assert (=> d!1064298 m!4114075))

(assert (=> d!1064298 m!4115021))

(assert (=> d!1064298 m!4114075))

(assert (=> d!1064298 m!4114075))

(declare-fun m!4115033 () Bool)

(assert (=> d!1064298 m!4115033))

(assert (=> d!1064298 m!4115027))

(assert (=> d!1064298 m!4115031))

(declare-fun m!4115035 () Bool)

(assert (=> d!1064298 m!4115035))

(declare-fun m!4115039 () Bool)

(assert (=> d!1064298 m!4115039))

(assert (=> b!3615585 d!1064298))

(declare-fun b!3616221 () Bool)

(declare-fun res!1463210 () Bool)

(declare-fun e!2238185 () Bool)

(assert (=> b!3616221 (=> (not res!1463210) (not e!2238185))))

(assert (=> b!3616221 (= res!1463210 (= (head!7622 lt!1246973) (head!7622 (++!9474 lt!1246973 (_2!22112 lt!1246993)))))))

(declare-fun b!3616220 () Bool)

(declare-fun e!2238184 () Bool)

(assert (=> b!3616220 (= e!2238184 e!2238185)))

(declare-fun res!1463211 () Bool)

(assert (=> b!3616220 (=> (not res!1463211) (not e!2238185))))

(assert (=> b!3616220 (= res!1463211 (not ((_ is Nil!38072) (++!9474 lt!1246973 (_2!22112 lt!1246993)))))))

(declare-fun b!3616222 () Bool)

(assert (=> b!3616222 (= e!2238185 (isPrefix!3021 (tail!5603 lt!1246973) (tail!5603 (++!9474 lt!1246973 (_2!22112 lt!1246993)))))))

(declare-fun b!3616223 () Bool)

(declare-fun e!2238183 () Bool)

(assert (=> b!3616223 (= e!2238183 (>= (size!29039 (++!9474 lt!1246973 (_2!22112 lt!1246993))) (size!29039 lt!1246973)))))

(declare-fun d!1064314 () Bool)

(assert (=> d!1064314 e!2238183))

(declare-fun res!1463212 () Bool)

(assert (=> d!1064314 (=> res!1463212 e!2238183)))

(declare-fun lt!1247371 () Bool)

(assert (=> d!1064314 (= res!1463212 (not lt!1247371))))

(assert (=> d!1064314 (= lt!1247371 e!2238184)))

(declare-fun res!1463209 () Bool)

(assert (=> d!1064314 (=> res!1463209 e!2238184)))

(assert (=> d!1064314 (= res!1463209 ((_ is Nil!38072) lt!1246973))))

(assert (=> d!1064314 (= (isPrefix!3021 lt!1246973 (++!9474 lt!1246973 (_2!22112 lt!1246993))) lt!1247371)))

(assert (= (and d!1064314 (not res!1463209)) b!3616220))

(assert (= (and b!3616220 res!1463211) b!3616221))

(assert (= (and b!3616221 res!1463210) b!3616222))

(assert (= (and d!1064314 (not res!1463212)) b!3616223))

(assert (=> b!3616221 m!4114235))

(assert (=> b!3616221 m!4114079))

(declare-fun m!4115079 () Bool)

(assert (=> b!3616221 m!4115079))

(declare-fun m!4115081 () Bool)

(assert (=> b!3616222 m!4115081))

(assert (=> b!3616222 m!4114079))

(declare-fun m!4115085 () Bool)

(assert (=> b!3616222 m!4115085))

(assert (=> b!3616222 m!4115081))

(assert (=> b!3616222 m!4115085))

(declare-fun m!4115087 () Bool)

(assert (=> b!3616222 m!4115087))

(assert (=> b!3616223 m!4114079))

(declare-fun m!4115089 () Bool)

(assert (=> b!3616223 m!4115089))

(assert (=> b!3616223 m!4114119))

(assert (=> b!3615585 d!1064314))

(declare-fun d!1064328 () Bool)

(assert (=> d!1064328 (= (get!12386 lt!1246999) (v!37699 lt!1246999))))

(assert (=> b!3615585 d!1064328))

(declare-fun b!3616249 () Bool)

(declare-fun e!2238198 () List!38196)

(assert (=> b!3616249 (= e!2238198 (Cons!38072 (h!43492 lt!1246984) (++!9474 (t!293727 lt!1246984) suffix!1395)))))

(declare-fun e!2238199 () Bool)

(declare-fun b!3616251 () Bool)

(declare-fun lt!1247380 () List!38196)

(assert (=> b!3616251 (= e!2238199 (or (not (= suffix!1395 Nil!38072)) (= lt!1247380 lt!1246984)))))

(declare-fun d!1064330 () Bool)

(assert (=> d!1064330 e!2238199))

(declare-fun res!1463225 () Bool)

(assert (=> d!1064330 (=> (not res!1463225) (not e!2238199))))

(assert (=> d!1064330 (= res!1463225 (= (content!5447 lt!1247380) ((_ map or) (content!5447 lt!1246984) (content!5447 suffix!1395))))))

(assert (=> d!1064330 (= lt!1247380 e!2238198)))

(declare-fun c!625689 () Bool)

(assert (=> d!1064330 (= c!625689 ((_ is Nil!38072) lt!1246984))))

(assert (=> d!1064330 (= (++!9474 lt!1246984 suffix!1395) lt!1247380)))

(declare-fun b!3616248 () Bool)

(assert (=> b!3616248 (= e!2238198 suffix!1395)))

(declare-fun b!3616250 () Bool)

(declare-fun res!1463226 () Bool)

(assert (=> b!3616250 (=> (not res!1463226) (not e!2238199))))

(assert (=> b!3616250 (= res!1463226 (= (size!29039 lt!1247380) (+ (size!29039 lt!1246984) (size!29039 suffix!1395))))))

(assert (= (and d!1064330 c!625689) b!3616248))

(assert (= (and d!1064330 (not c!625689)) b!3616249))

(assert (= (and d!1064330 res!1463225) b!3616250))

(assert (= (and b!3616250 res!1463226) b!3616251))

(declare-fun m!4115099 () Bool)

(assert (=> b!3616249 m!4115099))

(declare-fun m!4115101 () Bool)

(assert (=> d!1064330 m!4115101))

(declare-fun m!4115103 () Bool)

(assert (=> d!1064330 m!4115103))

(declare-fun m!4115105 () Bool)

(assert (=> d!1064330 m!4115105))

(declare-fun m!4115107 () Bool)

(assert (=> b!3616250 m!4115107))

(assert (=> b!3616250 m!4114241))

(declare-fun m!4115109 () Bool)

(assert (=> b!3616250 m!4115109))

(assert (=> b!3615585 d!1064330))

(declare-fun b!3616263 () Bool)

(declare-fun e!2238206 () List!38196)

(assert (=> b!3616263 (= e!2238206 (Cons!38072 (h!43492 lt!1246973) (++!9474 (t!293727 lt!1246973) (_2!22112 lt!1246993))))))

(declare-fun b!3616265 () Bool)

(declare-fun e!2238207 () Bool)

(declare-fun lt!1247381 () List!38196)

(assert (=> b!3616265 (= e!2238207 (or (not (= (_2!22112 lt!1246993) Nil!38072)) (= lt!1247381 lt!1246973)))))

(declare-fun d!1064338 () Bool)

(assert (=> d!1064338 e!2238207))

(declare-fun res!1463229 () Bool)

(assert (=> d!1064338 (=> (not res!1463229) (not e!2238207))))

(assert (=> d!1064338 (= res!1463229 (= (content!5447 lt!1247381) ((_ map or) (content!5447 lt!1246973) (content!5447 (_2!22112 lt!1246993)))))))

(assert (=> d!1064338 (= lt!1247381 e!2238206)))

(declare-fun c!625694 () Bool)

(assert (=> d!1064338 (= c!625694 ((_ is Nil!38072) lt!1246973))))

(assert (=> d!1064338 (= (++!9474 lt!1246973 (_2!22112 lt!1246993)) lt!1247381)))

(declare-fun b!3616262 () Bool)

(assert (=> b!3616262 (= e!2238206 (_2!22112 lt!1246993))))

(declare-fun b!3616264 () Bool)

(declare-fun res!1463230 () Bool)

(assert (=> b!3616264 (=> (not res!1463230) (not e!2238207))))

(assert (=> b!3616264 (= res!1463230 (= (size!29039 lt!1247381) (+ (size!29039 lt!1246973) (size!29039 (_2!22112 lt!1246993)))))))

(assert (= (and d!1064338 c!625694) b!3616262))

(assert (= (and d!1064338 (not c!625694)) b!3616263))

(assert (= (and d!1064338 res!1463229) b!3616264))

(assert (= (and b!3616264 res!1463230) b!3616265))

(declare-fun m!4115111 () Bool)

(assert (=> b!3616263 m!4115111))

(declare-fun m!4115113 () Bool)

(assert (=> d!1064338 m!4115113))

(declare-fun m!4115115 () Bool)

(assert (=> d!1064338 m!4115115))

(declare-fun m!4115117 () Bool)

(assert (=> d!1064338 m!4115117))

(declare-fun m!4115119 () Bool)

(assert (=> b!3616264 m!4115119))

(assert (=> b!3616264 m!4114119))

(declare-fun m!4115121 () Bool)

(assert (=> b!3616264 m!4115121))

(assert (=> b!3615585 d!1064338))

(declare-fun d!1064340 () Bool)

(declare-fun isEmpty!22495 (Option!7947) Bool)

(assert (=> d!1064340 (= (isDefined!6178 lt!1246976) (not (isEmpty!22495 lt!1246976)))))

(declare-fun bs!571046 () Bool)

(assert (= bs!571046 d!1064340))

(declare-fun m!4115123 () Bool)

(assert (=> bs!571046 m!4115123))

(assert (=> b!3615585 d!1064340))

(declare-fun d!1064342 () Bool)

(assert (=> d!1064342 (= (list!14046 lt!1246994) (list!14048 (c!625549 lt!1246994)))))

(declare-fun bs!571047 () Bool)

(assert (= bs!571047 d!1064342))

(declare-fun m!4115125 () Bool)

(assert (=> bs!571047 m!4115125))

(assert (=> b!3615585 d!1064342))

(declare-fun d!1064344 () Bool)

(declare-fun e!2238248 () Bool)

(assert (=> d!1064344 e!2238248))

(declare-fun res!1463245 () Bool)

(assert (=> d!1064344 (=> res!1463245 e!2238248)))

(declare-fun lt!1247389 () Option!7947)

(assert (=> d!1064344 (= res!1463245 (isEmpty!22495 lt!1247389))))

(declare-fun e!2238249 () Option!7947)

(assert (=> d!1064344 (= lt!1247389 e!2238249)))

(declare-fun c!625702 () Bool)

(assert (=> d!1064344 (= c!625702 (and ((_ is Cons!38073) rules!3307) (= (tag!6370 (h!43493 rules!3307)) (tag!6370 (rule!8414 (_1!22112 lt!1246993))))))))

(assert (=> d!1064344 (rulesInvariant!4644 thiss!23823 rules!3307)))

(assert (=> d!1064344 (= (getRuleFromTag!1264 thiss!23823 rules!3307 (tag!6370 (rule!8414 (_1!22112 lt!1246993)))) lt!1247389)))

(declare-fun b!3616333 () Bool)

(declare-fun e!2238251 () Option!7947)

(assert (=> b!3616333 (= e!2238249 e!2238251)))

(declare-fun c!625701 () Bool)

(assert (=> b!3616333 (= c!625701 (and ((_ is Cons!38073) rules!3307) (not (= (tag!6370 (h!43493 rules!3307)) (tag!6370 (rule!8414 (_1!22112 lt!1246993)))))))))

(declare-fun b!3616334 () Bool)

(assert (=> b!3616334 (= e!2238251 None!7946)))

(declare-fun b!3616335 () Bool)

(assert (=> b!3616335 (= e!2238249 (Some!7946 (h!43493 rules!3307)))))

(declare-fun b!3616336 () Bool)

(declare-fun e!2238250 () Bool)

(assert (=> b!3616336 (= e!2238250 (= (tag!6370 (get!12385 lt!1247389)) (tag!6370 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3616337 () Bool)

(declare-fun lt!1247390 () Unit!54491)

(declare-fun lt!1247391 () Unit!54491)

(assert (=> b!3616337 (= lt!1247390 lt!1247391)))

(assert (=> b!3616337 (rulesInvariant!4644 thiss!23823 (t!293728 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!535 (LexerInterface!5247 Rule!11116 List!38197) Unit!54491)

(assert (=> b!3616337 (= lt!1247391 (lemmaInvariantOnRulesThenOnTail!535 thiss!23823 (h!43493 rules!3307) (t!293728 rules!3307)))))

(assert (=> b!3616337 (= e!2238251 (getRuleFromTag!1264 thiss!23823 (t!293728 rules!3307) (tag!6370 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3616338 () Bool)

(assert (=> b!3616338 (= e!2238248 e!2238250)))

(declare-fun res!1463244 () Bool)

(assert (=> b!3616338 (=> (not res!1463244) (not e!2238250))))

(assert (=> b!3616338 (= res!1463244 (contains!7379 rules!3307 (get!12385 lt!1247389)))))

(assert (= (and d!1064344 c!625702) b!3616335))

(assert (= (and d!1064344 (not c!625702)) b!3616333))

(assert (= (and b!3616333 c!625701) b!3616337))

(assert (= (and b!3616333 (not c!625701)) b!3616334))

(assert (= (and d!1064344 (not res!1463245)) b!3616338))

(assert (= (and b!3616338 res!1463244) b!3616336))

(declare-fun m!4115145 () Bool)

(assert (=> d!1064344 m!4115145))

(assert (=> d!1064344 m!4114203))

(declare-fun m!4115147 () Bool)

(assert (=> b!3616336 m!4115147))

(declare-fun m!4115149 () Bool)

(assert (=> b!3616337 m!4115149))

(declare-fun m!4115151 () Bool)

(assert (=> b!3616337 m!4115151))

(declare-fun m!4115153 () Bool)

(assert (=> b!3616337 m!4115153))

(assert (=> b!3616338 m!4115147))

(assert (=> b!3616338 m!4115147))

(declare-fun m!4115155 () Bool)

(assert (=> b!3616338 m!4115155))

(assert (=> b!3615585 d!1064344))

(declare-fun b!3616341 () Bool)

(declare-fun res!1463247 () Bool)

(declare-fun e!2238255 () Bool)

(assert (=> b!3616341 (=> (not res!1463247) (not e!2238255))))

(assert (=> b!3616341 (= res!1463247 (= (head!7622 lt!1246984) (head!7622 lt!1247011)))))

(declare-fun b!3616340 () Bool)

(declare-fun e!2238254 () Bool)

(assert (=> b!3616340 (= e!2238254 e!2238255)))

(declare-fun res!1463248 () Bool)

(assert (=> b!3616340 (=> (not res!1463248) (not e!2238255))))

(assert (=> b!3616340 (= res!1463248 (not ((_ is Nil!38072) lt!1247011)))))

(declare-fun b!3616342 () Bool)

(assert (=> b!3616342 (= e!2238255 (isPrefix!3021 (tail!5603 lt!1246984) (tail!5603 lt!1247011)))))

(declare-fun b!3616343 () Bool)

(declare-fun e!2238253 () Bool)

(assert (=> b!3616343 (= e!2238253 (>= (size!29039 lt!1247011) (size!29039 lt!1246984)))))

(declare-fun d!1064350 () Bool)

(assert (=> d!1064350 e!2238253))

(declare-fun res!1463249 () Bool)

(assert (=> d!1064350 (=> res!1463249 e!2238253)))

(declare-fun lt!1247392 () Bool)

(assert (=> d!1064350 (= res!1463249 (not lt!1247392))))

(assert (=> d!1064350 (= lt!1247392 e!2238254)))

(declare-fun res!1463246 () Bool)

(assert (=> d!1064350 (=> res!1463246 e!2238254)))

(assert (=> d!1064350 (= res!1463246 ((_ is Nil!38072) lt!1246984))))

(assert (=> d!1064350 (= (isPrefix!3021 lt!1246984 lt!1247011) lt!1247392)))

(assert (= (and d!1064350 (not res!1463246)) b!3616340))

(assert (= (and b!3616340 res!1463248) b!3616341))

(assert (= (and b!3616341 res!1463247) b!3616342))

(assert (= (and d!1064350 (not res!1463249)) b!3616343))

(assert (=> b!3616341 m!4114795))

(declare-fun m!4115157 () Bool)

(assert (=> b!3616341 m!4115157))

(assert (=> b!3616342 m!4114799))

(assert (=> b!3616342 m!4114775))

(assert (=> b!3616342 m!4114799))

(assert (=> b!3616342 m!4114775))

(declare-fun m!4115159 () Bool)

(assert (=> b!3616342 m!4115159))

(assert (=> b!3616343 m!4114239))

(assert (=> b!3616343 m!4114241))

(assert (=> b!3615585 d!1064350))

(declare-fun b!3616345 () Bool)

(declare-fun res!1463251 () Bool)

(declare-fun e!2238258 () Bool)

(assert (=> b!3616345 (=> (not res!1463251) (not e!2238258))))

(assert (=> b!3616345 (= res!1463251 (= (head!7622 lt!1246973) (head!7622 lt!1247011)))))

(declare-fun b!3616344 () Bool)

(declare-fun e!2238257 () Bool)

(assert (=> b!3616344 (= e!2238257 e!2238258)))

(declare-fun res!1463252 () Bool)

(assert (=> b!3616344 (=> (not res!1463252) (not e!2238258))))

(assert (=> b!3616344 (= res!1463252 (not ((_ is Nil!38072) lt!1247011)))))

(declare-fun b!3616346 () Bool)

(assert (=> b!3616346 (= e!2238258 (isPrefix!3021 (tail!5603 lt!1246973) (tail!5603 lt!1247011)))))

(declare-fun b!3616347 () Bool)

(declare-fun e!2238256 () Bool)

(assert (=> b!3616347 (= e!2238256 (>= (size!29039 lt!1247011) (size!29039 lt!1246973)))))

(declare-fun d!1064352 () Bool)

(assert (=> d!1064352 e!2238256))

(declare-fun res!1463253 () Bool)

(assert (=> d!1064352 (=> res!1463253 e!2238256)))

(declare-fun lt!1247393 () Bool)

(assert (=> d!1064352 (= res!1463253 (not lt!1247393))))

(assert (=> d!1064352 (= lt!1247393 e!2238257)))

(declare-fun res!1463250 () Bool)

(assert (=> d!1064352 (=> res!1463250 e!2238257)))

(assert (=> d!1064352 (= res!1463250 ((_ is Nil!38072) lt!1246973))))

(assert (=> d!1064352 (= (isPrefix!3021 lt!1246973 lt!1247011) lt!1247393)))

(assert (= (and d!1064352 (not res!1463250)) b!3616344))

(assert (= (and b!3616344 res!1463252) b!3616345))

(assert (= (and b!3616345 res!1463251) b!3616346))

(assert (= (and d!1064352 (not res!1463253)) b!3616347))

(assert (=> b!3616345 m!4114235))

(assert (=> b!3616345 m!4115157))

(assert (=> b!3616346 m!4115081))

(assert (=> b!3616346 m!4114775))

(assert (=> b!3616346 m!4115081))

(assert (=> b!3616346 m!4114775))

(declare-fun m!4115161 () Bool)

(assert (=> b!3616346 m!4115161))

(assert (=> b!3616347 m!4114239))

(assert (=> b!3616347 m!4114119))

(assert (=> b!3615585 d!1064352))

(declare-fun d!1064354 () Bool)

(assert (=> d!1064354 (isPrefix!3021 lt!1246973 (++!9474 lt!1246973 (_2!22112 lt!1246993)))))

(declare-fun lt!1247394 () Unit!54491)

(assert (=> d!1064354 (= lt!1247394 (choose!21182 lt!1246973 (_2!22112 lt!1246993)))))

(assert (=> d!1064354 (= (lemmaConcatTwoListThenFirstIsPrefix!1942 lt!1246973 (_2!22112 lt!1246993)) lt!1247394)))

(declare-fun bs!571048 () Bool)

(assert (= bs!571048 d!1064354))

(assert (=> bs!571048 m!4114079))

(assert (=> bs!571048 m!4114079))

(assert (=> bs!571048 m!4114093))

(declare-fun m!4115163 () Bool)

(assert (=> bs!571048 m!4115163))

(assert (=> b!3615585 d!1064354))

(declare-fun d!1064356 () Bool)

(declare-fun lt!1247395 () Bool)

(assert (=> d!1064356 (= lt!1247395 (select (content!5447 call!261501) lt!1247004))))

(declare-fun e!2238260 () Bool)

(assert (=> d!1064356 (= lt!1247395 e!2238260)))

(declare-fun res!1463254 () Bool)

(assert (=> d!1064356 (=> (not res!1463254) (not e!2238260))))

(assert (=> d!1064356 (= res!1463254 ((_ is Cons!38072) call!261501))))

(assert (=> d!1064356 (= (contains!7380 call!261501 lt!1247004) lt!1247395)))

(declare-fun b!3616348 () Bool)

(declare-fun e!2238259 () Bool)

(assert (=> b!3616348 (= e!2238260 e!2238259)))

(declare-fun res!1463255 () Bool)

(assert (=> b!3616348 (=> res!1463255 e!2238259)))

(assert (=> b!3616348 (= res!1463255 (= (h!43492 call!261501) lt!1247004))))

(declare-fun b!3616349 () Bool)

(assert (=> b!3616349 (= e!2238259 (contains!7380 (t!293727 call!261501) lt!1247004))))

(assert (= (and d!1064356 res!1463254) b!3616348))

(assert (= (and b!3616348 (not res!1463255)) b!3616349))

(declare-fun m!4115165 () Bool)

(assert (=> d!1064356 m!4115165))

(declare-fun m!4115167 () Bool)

(assert (=> d!1064356 m!4115167))

(declare-fun m!4115169 () Bool)

(assert (=> b!3616349 m!4115169))

(assert (=> bm!261497 d!1064356))

(declare-fun d!1064358 () Bool)

(assert (=> d!1064358 (= (isEmpty!22490 suffix!1395) ((_ is Nil!38072) suffix!1395))))

(assert (=> b!3615589 d!1064358))

(declare-fun d!1064360 () Bool)

(assert (=> d!1064360 (= (get!12386 lt!1246991) (v!37699 lt!1246991))))

(assert (=> b!3615609 d!1064360))

(declare-fun d!1064362 () Bool)

(assert (=> d!1064362 (not (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973))))

(declare-fun lt!1247396 () Unit!54491)

(assert (=> d!1064362 (= lt!1247396 (choose!21171 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973 lt!1247004))))

(assert (=> d!1064362 (validRegex!4767 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))

(assert (=> d!1064362 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!642 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973 lt!1247004) lt!1247396)))

(declare-fun bs!571049 () Bool)

(assert (= bs!571049 d!1064362))

(assert (=> bs!571049 m!4114169))

(declare-fun m!4115171 () Bool)

(assert (=> bs!571049 m!4115171))

(assert (=> bs!571049 m!4114823))

(assert (=> bm!261493 d!1064362))

(declare-fun b!3616350 () Bool)

(declare-fun e!2238266 () Bool)

(declare-fun lt!1247397 () Bool)

(assert (=> b!3616350 (= e!2238266 (not lt!1247397))))

(declare-fun b!3616351 () Bool)

(declare-fun e!2238261 () Bool)

(assert (=> b!3616351 (= e!2238261 (= (head!7622 lt!1246973) (c!625548 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))))

(declare-fun b!3616352 () Bool)

(declare-fun res!1463257 () Bool)

(assert (=> b!3616352 (=> (not res!1463257) (not e!2238261))))

(declare-fun call!261557 () Bool)

(assert (=> b!3616352 (= res!1463257 (not call!261557))))

(declare-fun b!3616353 () Bool)

(declare-fun res!1463262 () Bool)

(declare-fun e!2238265 () Bool)

(assert (=> b!3616353 (=> res!1463262 e!2238265)))

(assert (=> b!3616353 (= res!1463262 (not ((_ is ElementMatch!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))))

(assert (=> b!3616353 (= e!2238266 e!2238265)))

(declare-fun b!3616354 () Bool)

(declare-fun e!2238262 () Bool)

(declare-fun e!2238267 () Bool)

(assert (=> b!3616354 (= e!2238262 e!2238267)))

(declare-fun res!1463256 () Bool)

(assert (=> b!3616354 (=> res!1463256 e!2238267)))

(assert (=> b!3616354 (= res!1463256 call!261557)))

(declare-fun b!3616355 () Bool)

(declare-fun res!1463259 () Bool)

(assert (=> b!3616355 (=> res!1463259 e!2238267)))

(assert (=> b!3616355 (= res!1463259 (not (isEmpty!22490 (tail!5603 lt!1246973))))))

(declare-fun d!1064364 () Bool)

(declare-fun e!2238264 () Bool)

(assert (=> d!1064364 e!2238264))

(declare-fun c!625705 () Bool)

(assert (=> d!1064364 (= c!625705 ((_ is EmptyExpr!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun e!2238263 () Bool)

(assert (=> d!1064364 (= lt!1247397 e!2238263)))

(declare-fun c!625703 () Bool)

(assert (=> d!1064364 (= c!625703 (isEmpty!22490 lt!1246973))))

(assert (=> d!1064364 (validRegex!4767 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))

(assert (=> d!1064364 (= (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246973) lt!1247397)))

(declare-fun b!3616356 () Bool)

(assert (=> b!3616356 (= e!2238264 (= lt!1247397 call!261557))))

(declare-fun b!3616357 () Bool)

(assert (=> b!3616357 (= e!2238264 e!2238266)))

(declare-fun c!625704 () Bool)

(assert (=> b!3616357 (= c!625704 ((_ is EmptyLang!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun bm!261552 () Bool)

(assert (=> bm!261552 (= call!261557 (isEmpty!22490 lt!1246973))))

(declare-fun b!3616358 () Bool)

(declare-fun res!1463260 () Bool)

(assert (=> b!3616358 (=> res!1463260 e!2238265)))

(assert (=> b!3616358 (= res!1463260 e!2238261)))

(declare-fun res!1463258 () Bool)

(assert (=> b!3616358 (=> (not res!1463258) (not e!2238261))))

(assert (=> b!3616358 (= res!1463258 lt!1247397)))

(declare-fun b!3616359 () Bool)

(assert (=> b!3616359 (= e!2238263 (matchR!4986 (derivativeStep!3154 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) (head!7622 lt!1246973)) (tail!5603 lt!1246973)))))

(declare-fun b!3616360 () Bool)

(assert (=> b!3616360 (= e!2238265 e!2238262)))

(declare-fun res!1463263 () Bool)

(assert (=> b!3616360 (=> (not res!1463263) (not e!2238262))))

(assert (=> b!3616360 (= res!1463263 (not lt!1247397))))

(declare-fun b!3616361 () Bool)

(assert (=> b!3616361 (= e!2238267 (not (= (head!7622 lt!1246973) (c!625548 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))))

(declare-fun b!3616362 () Bool)

(assert (=> b!3616362 (= e!2238263 (nullable!3605 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3616363 () Bool)

(declare-fun res!1463261 () Bool)

(assert (=> b!3616363 (=> (not res!1463261) (not e!2238261))))

(assert (=> b!3616363 (= res!1463261 (isEmpty!22490 (tail!5603 lt!1246973)))))

(assert (= (and d!1064364 c!625703) b!3616362))

(assert (= (and d!1064364 (not c!625703)) b!3616359))

(assert (= (and d!1064364 c!625705) b!3616356))

(assert (= (and d!1064364 (not c!625705)) b!3616357))

(assert (= (and b!3616357 c!625704) b!3616350))

(assert (= (and b!3616357 (not c!625704)) b!3616353))

(assert (= (and b!3616353 (not res!1463262)) b!3616358))

(assert (= (and b!3616358 res!1463258) b!3616352))

(assert (= (and b!3616352 res!1463257) b!3616363))

(assert (= (and b!3616363 res!1463261) b!3616351))

(assert (= (and b!3616358 (not res!1463260)) b!3616360))

(assert (= (and b!3616360 res!1463263) b!3616354))

(assert (= (and b!3616354 (not res!1463256)) b!3616355))

(assert (= (and b!3616355 (not res!1463259)) b!3616361))

(assert (= (or b!3616356 b!3616352 b!3616354) bm!261552))

(declare-fun m!4115173 () Bool)

(assert (=> bm!261552 m!4115173))

(assert (=> b!3616359 m!4114235))

(assert (=> b!3616359 m!4114235))

(declare-fun m!4115175 () Bool)

(assert (=> b!3616359 m!4115175))

(assert (=> b!3616359 m!4115081))

(assert (=> b!3616359 m!4115175))

(assert (=> b!3616359 m!4115081))

(declare-fun m!4115177 () Bool)

(assert (=> b!3616359 m!4115177))

(assert (=> b!3616355 m!4115081))

(assert (=> b!3616355 m!4115081))

(declare-fun m!4115179 () Bool)

(assert (=> b!3616355 m!4115179))

(assert (=> b!3616363 m!4115081))

(assert (=> b!3616363 m!4115081))

(assert (=> b!3616363 m!4115179))

(assert (=> b!3616351 m!4114235))

(declare-fun m!4115181 () Bool)

(assert (=> b!3616362 m!4115181))

(assert (=> b!3616361 m!4114235))

(assert (=> d!1064364 m!4115173))

(assert (=> d!1064364 m!4114823))

(assert (=> b!3615612 d!1064364))

(declare-fun d!1064366 () Bool)

(declare-fun lt!1247398 () Bool)

(assert (=> d!1064366 (= lt!1247398 (select (content!5447 call!261498) lt!1246965))))

(declare-fun e!2238269 () Bool)

(assert (=> d!1064366 (= lt!1247398 e!2238269)))

(declare-fun res!1463264 () Bool)

(assert (=> d!1064366 (=> (not res!1463264) (not e!2238269))))

(assert (=> d!1064366 (= res!1463264 ((_ is Cons!38072) call!261498))))

(assert (=> d!1064366 (= (contains!7380 call!261498 lt!1246965) lt!1247398)))

(declare-fun b!3616364 () Bool)

(declare-fun e!2238268 () Bool)

(assert (=> b!3616364 (= e!2238269 e!2238268)))

(declare-fun res!1463265 () Bool)

(assert (=> b!3616364 (=> res!1463265 e!2238268)))

(assert (=> b!3616364 (= res!1463265 (= (h!43492 call!261498) lt!1246965))))

(declare-fun b!3616365 () Bool)

(assert (=> b!3616365 (= e!2238268 (contains!7380 (t!293727 call!261498) lt!1246965))))

(assert (= (and d!1064366 res!1463264) b!3616364))

(assert (= (and b!3616364 (not res!1463265)) b!3616365))

(declare-fun m!4115183 () Bool)

(assert (=> d!1064366 m!4115183))

(declare-fun m!4115185 () Bool)

(assert (=> d!1064366 m!4115185))

(declare-fun m!4115187 () Bool)

(assert (=> b!3616365 m!4115187))

(assert (=> bm!261494 d!1064366))

(declare-fun d!1064368 () Bool)

(declare-fun res!1463270 () Bool)

(declare-fun e!2238272 () Bool)

(assert (=> d!1064368 (=> (not res!1463270) (not e!2238272))))

(assert (=> d!1064368 (= res!1463270 (not (isEmpty!22490 (originalCharacters!6372 token!511))))))

(assert (=> d!1064368 (= (inv!51457 token!511) e!2238272)))

(declare-fun b!3616370 () Bool)

(declare-fun res!1463271 () Bool)

(assert (=> b!3616370 (=> (not res!1463271) (not e!2238272))))

(assert (=> b!3616370 (= res!1463271 (= (originalCharacters!6372 token!511) (list!14046 (dynLambda!16471 (toChars!7801 (transformation!5658 (rule!8414 token!511))) (value!181713 token!511)))))))

(declare-fun b!3616371 () Bool)

(assert (=> b!3616371 (= e!2238272 (= (size!29037 token!511) (size!29039 (originalCharacters!6372 token!511))))))

(assert (= (and d!1064368 res!1463270) b!3616370))

(assert (= (and b!3616370 res!1463271) b!3616371))

(declare-fun b_lambda!106989 () Bool)

(assert (=> (not b_lambda!106989) (not b!3616370)))

(assert (=> b!3616370 t!293746))

(declare-fun b_and!264143 () Bool)

(assert (= b_and!264083 (and (=> t!293746 result!252636) b_and!264143)))

(assert (=> b!3616370 t!293748))

(declare-fun b_and!264145 () Bool)

(assert (= b_and!264085 (and (=> t!293748 result!252640) b_and!264145)))

(assert (=> b!3616370 t!293750))

(declare-fun b_and!264147 () Bool)

(assert (= b_and!264087 (and (=> t!293750 result!252642) b_and!264147)))

(assert (=> b!3616370 t!293752))

(declare-fun b_and!264149 () Bool)

(assert (= b_and!264089 (and (=> t!293752 result!252644) b_and!264149)))

(declare-fun m!4115189 () Bool)

(assert (=> d!1064368 m!4115189))

(assert (=> b!3616370 m!4114353))

(assert (=> b!3616370 m!4114353))

(declare-fun m!4115191 () Bool)

(assert (=> b!3616370 m!4115191))

(declare-fun m!4115193 () Bool)

(assert (=> b!3616371 m!4115193))

(assert (=> start!336642 d!1064368))

(declare-fun b!3616382 () Bool)

(declare-fun e!2238280 () Bool)

(declare-fun inv!16 (TokenValue!5888) Bool)

(assert (=> b!3616382 (= e!2238280 (inv!16 (value!181713 token!511)))))

(declare-fun b!3616383 () Bool)

(declare-fun res!1463274 () Bool)

(declare-fun e!2238281 () Bool)

(assert (=> b!3616383 (=> res!1463274 e!2238281)))

(assert (=> b!3616383 (= res!1463274 (not ((_ is IntegerValue!17666) (value!181713 token!511))))))

(declare-fun e!2238279 () Bool)

(assert (=> b!3616383 (= e!2238279 e!2238281)))

(declare-fun b!3616384 () Bool)

(declare-fun inv!17 (TokenValue!5888) Bool)

(assert (=> b!3616384 (= e!2238279 (inv!17 (value!181713 token!511)))))

(declare-fun b!3616385 () Bool)

(assert (=> b!3616385 (= e!2238280 e!2238279)))

(declare-fun c!625711 () Bool)

(assert (=> b!3616385 (= c!625711 ((_ is IntegerValue!17665) (value!181713 token!511)))))

(declare-fun b!3616386 () Bool)

(declare-fun inv!15 (TokenValue!5888) Bool)

(assert (=> b!3616386 (= e!2238281 (inv!15 (value!181713 token!511)))))

(declare-fun d!1064370 () Bool)

(declare-fun c!625710 () Bool)

(assert (=> d!1064370 (= c!625710 ((_ is IntegerValue!17664) (value!181713 token!511)))))

(assert (=> d!1064370 (= (inv!21 (value!181713 token!511)) e!2238280)))

(assert (= (and d!1064370 c!625710) b!3616382))

(assert (= (and d!1064370 (not c!625710)) b!3616385))

(assert (= (and b!3616385 c!625711) b!3616384))

(assert (= (and b!3616385 (not c!625711)) b!3616383))

(assert (= (and b!3616383 (not res!1463274)) b!3616386))

(declare-fun m!4115195 () Bool)

(assert (=> b!3616382 m!4115195))

(declare-fun m!4115197 () Bool)

(assert (=> b!3616384 m!4115197))

(declare-fun m!4115199 () Bool)

(assert (=> b!3616386 m!4115199))

(assert (=> b!3615592 d!1064370))

(declare-fun d!1064372 () Bool)

(assert (=> d!1064372 (= (inv!51453 (tag!6370 (rule!8414 token!511))) (= (mod (str.len (value!181712 (tag!6370 (rule!8414 token!511)))) 2) 0))))

(assert (=> b!3615572 d!1064372))

(declare-fun d!1064374 () Bool)

(declare-fun res!1463275 () Bool)

(declare-fun e!2238282 () Bool)

(assert (=> d!1064374 (=> (not res!1463275) (not e!2238282))))

(assert (=> d!1064374 (= res!1463275 (semiInverseModEq!2402 (toChars!7801 (transformation!5658 (rule!8414 token!511))) (toValue!7942 (transformation!5658 (rule!8414 token!511)))))))

(assert (=> d!1064374 (= (inv!51456 (transformation!5658 (rule!8414 token!511))) e!2238282)))

(declare-fun b!3616387 () Bool)

(assert (=> b!3616387 (= e!2238282 (equivClasses!2301 (toChars!7801 (transformation!5658 (rule!8414 token!511))) (toValue!7942 (transformation!5658 (rule!8414 token!511)))))))

(assert (= (and d!1064374 res!1463275) b!3616387))

(declare-fun m!4115201 () Bool)

(assert (=> d!1064374 m!4115201))

(declare-fun m!4115203 () Bool)

(assert (=> b!3616387 m!4115203))

(assert (=> b!3615572 d!1064374))

(declare-fun d!1064376 () Bool)

(declare-fun lt!1247399 () Bool)

(assert (=> d!1064376 (= lt!1247399 (select (content!5447 lt!1247006) lt!1246965))))

(declare-fun e!2238284 () Bool)

(assert (=> d!1064376 (= lt!1247399 e!2238284)))

(declare-fun res!1463276 () Bool)

(assert (=> d!1064376 (=> (not res!1463276) (not e!2238284))))

(assert (=> d!1064376 (= res!1463276 ((_ is Cons!38072) lt!1247006))))

(assert (=> d!1064376 (= (contains!7380 lt!1247006 lt!1246965) lt!1247399)))

(declare-fun b!3616388 () Bool)

(declare-fun e!2238283 () Bool)

(assert (=> b!3616388 (= e!2238284 e!2238283)))

(declare-fun res!1463277 () Bool)

(assert (=> b!3616388 (=> res!1463277 e!2238283)))

(assert (=> b!3616388 (= res!1463277 (= (h!43492 lt!1247006) lt!1246965))))

(declare-fun b!3616389 () Bool)

(assert (=> b!3616389 (= e!2238283 (contains!7380 (t!293727 lt!1247006) lt!1246965))))

(assert (= (and d!1064376 res!1463276) b!3616388))

(assert (= (and b!3616388 (not res!1463277)) b!3616389))

(assert (=> d!1064376 m!4114493))

(declare-fun m!4115205 () Bool)

(assert (=> d!1064376 m!4115205))

(declare-fun m!4115207 () Bool)

(assert (=> b!3616389 m!4115207))

(assert (=> b!3615591 d!1064376))

(declare-fun d!1064378 () Bool)

(assert (=> d!1064378 (= (head!7622 suffix!1395) (h!43492 suffix!1395))))

(assert (=> b!3615591 d!1064378))

(declare-fun b!3616390 () Bool)

(declare-fun e!2238288 () List!38196)

(declare-fun call!261560 () List!38196)

(assert (=> b!3616390 (= e!2238288 call!261560)))

(declare-fun bm!261553 () Bool)

(declare-fun call!261561 () List!38196)

(declare-fun c!625712 () Bool)

(assert (=> bm!261553 (= call!261561 (usedCharacters!872 (ite c!625712 (regOne!21347 (regex!5658 rule!403)) (regTwo!21346 (regex!5658 rule!403)))))))

(declare-fun b!3616391 () Bool)

(declare-fun e!2238287 () List!38196)

(assert (=> b!3616391 (= e!2238288 e!2238287)))

(assert (=> b!3616391 (= c!625712 ((_ is Union!10417) (regex!5658 rule!403)))))

(declare-fun b!3616392 () Bool)

(declare-fun call!261559 () List!38196)

(assert (=> b!3616392 (= e!2238287 call!261559)))

(declare-fun b!3616393 () Bool)

(declare-fun e!2238286 () List!38196)

(declare-fun e!2238285 () List!38196)

(assert (=> b!3616393 (= e!2238286 e!2238285)))

(declare-fun c!625714 () Bool)

(assert (=> b!3616393 (= c!625714 ((_ is ElementMatch!10417) (regex!5658 rule!403)))))

(declare-fun bm!261554 () Bool)

(declare-fun c!625715 () Bool)

(assert (=> bm!261554 (= call!261560 (usedCharacters!872 (ite c!625715 (reg!10746 (regex!5658 rule!403)) (ite c!625712 (regTwo!21347 (regex!5658 rule!403)) (regOne!21346 (regex!5658 rule!403))))))))

(declare-fun call!261558 () List!38196)

(declare-fun bm!261555 () Bool)

(assert (=> bm!261555 (= call!261559 (++!9474 (ite c!625712 call!261561 call!261558) (ite c!625712 call!261558 call!261561)))))

(declare-fun bm!261556 () Bool)

(assert (=> bm!261556 (= call!261558 call!261560)))

(declare-fun b!3616395 () Bool)

(assert (=> b!3616395 (= e!2238285 (Cons!38072 (c!625548 (regex!5658 rule!403)) Nil!38072))))

(declare-fun b!3616396 () Bool)

(assert (=> b!3616396 (= e!2238287 call!261559)))

(declare-fun b!3616397 () Bool)

(assert (=> b!3616397 (= c!625715 ((_ is Star!10417) (regex!5658 rule!403)))))

(assert (=> b!3616397 (= e!2238285 e!2238288)))

(declare-fun d!1064380 () Bool)

(declare-fun c!625713 () Bool)

(assert (=> d!1064380 (= c!625713 (or ((_ is EmptyExpr!10417) (regex!5658 rule!403)) ((_ is EmptyLang!10417) (regex!5658 rule!403))))))

(assert (=> d!1064380 (= (usedCharacters!872 (regex!5658 rule!403)) e!2238286)))

(declare-fun b!3616394 () Bool)

(assert (=> b!3616394 (= e!2238286 Nil!38072)))

(assert (= (and d!1064380 c!625713) b!3616394))

(assert (= (and d!1064380 (not c!625713)) b!3616393))

(assert (= (and b!3616393 c!625714) b!3616395))

(assert (= (and b!3616393 (not c!625714)) b!3616397))

(assert (= (and b!3616397 c!625715) b!3616390))

(assert (= (and b!3616397 (not c!625715)) b!3616391))

(assert (= (and b!3616391 c!625712) b!3616392))

(assert (= (and b!3616391 (not c!625712)) b!3616396))

(assert (= (or b!3616392 b!3616396) bm!261553))

(assert (= (or b!3616392 b!3616396) bm!261556))

(assert (= (or b!3616392 b!3616396) bm!261555))

(assert (= (or b!3616390 bm!261556) bm!261554))

(declare-fun m!4115209 () Bool)

(assert (=> bm!261553 m!4115209))

(declare-fun m!4115211 () Bool)

(assert (=> bm!261554 m!4115211))

(declare-fun m!4115213 () Bool)

(assert (=> bm!261555 m!4115213))

(assert (=> b!3615591 d!1064380))

(declare-fun d!1064382 () Bool)

(assert (=> d!1064382 (not (contains!7380 (usedCharacters!872 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))) lt!1246965))))

(declare-fun lt!1247400 () Unit!54491)

(assert (=> d!1064382 (= lt!1247400 (choose!21181 thiss!23823 rules!3307 rules!3307 (rule!8414 (_1!22112 lt!1246993)) anOtherTypeRule!33 lt!1246965))))

(assert (=> d!1064382 (rulesInvariant!4644 thiss!23823 rules!3307)))

(assert (=> d!1064382 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!364 thiss!23823 rules!3307 rules!3307 (rule!8414 (_1!22112 lt!1246993)) anOtherTypeRule!33 lt!1246965) lt!1247400)))

(declare-fun bs!571050 () Bool)

(assert (= bs!571050 d!1064382))

(assert (=> bs!571050 m!4114177))

(assert (=> bs!571050 m!4114177))

(assert (=> bs!571050 m!4114595))

(declare-fun m!4115215 () Bool)

(assert (=> bs!571050 m!4115215))

(assert (=> bs!571050 m!4114203))

(assert (=> b!3615594 d!1064382))

(declare-fun d!1064384 () Bool)

(assert (=> d!1064384 (contains!7380 lt!1246973 (head!7622 suffix!1395))))

(declare-fun lt!1247403 () Unit!54491)

(declare-fun choose!21188 (List!38196 List!38196 List!38196 List!38196) Unit!54491)

(assert (=> d!1064384 (= lt!1247403 (choose!21188 lt!1246984 suffix!1395 lt!1246973 lt!1247011))))

(assert (=> d!1064384 (isPrefix!3021 lt!1246973 lt!1247011)))

(assert (=> d!1064384 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!36 lt!1246984 suffix!1395 lt!1246973 lt!1247011) lt!1247403)))

(declare-fun bs!571051 () Bool)

(assert (= bs!571051 d!1064384))

(assert (=> bs!571051 m!4114217))

(assert (=> bs!571051 m!4114217))

(declare-fun m!4115217 () Bool)

(assert (=> bs!571051 m!4115217))

(declare-fun m!4115219 () Bool)

(assert (=> bs!571051 m!4115219))

(assert (=> bs!571051 m!4114071))

(assert (=> b!3615593 d!1064384))

(declare-fun d!1064386 () Bool)

(declare-fun lt!1247404 () Bool)

(assert (=> d!1064386 (= lt!1247404 (select (content!5447 lt!1246973) lt!1246965))))

(declare-fun e!2238290 () Bool)

(assert (=> d!1064386 (= lt!1247404 e!2238290)))

(declare-fun res!1463278 () Bool)

(assert (=> d!1064386 (=> (not res!1463278) (not e!2238290))))

(assert (=> d!1064386 (= res!1463278 ((_ is Cons!38072) lt!1246973))))

(assert (=> d!1064386 (= (contains!7380 lt!1246973 lt!1246965) lt!1247404)))

(declare-fun b!3616398 () Bool)

(declare-fun e!2238289 () Bool)

(assert (=> b!3616398 (= e!2238290 e!2238289)))

(declare-fun res!1463279 () Bool)

(assert (=> b!3616398 (=> res!1463279 e!2238289)))

(assert (=> b!3616398 (= res!1463279 (= (h!43492 lt!1246973) lt!1246965))))

(declare-fun b!3616399 () Bool)

(assert (=> b!3616399 (= e!2238289 (contains!7380 (t!293727 lt!1246973) lt!1246965))))

(assert (= (and d!1064386 res!1463278) b!3616398))

(assert (= (and b!3616398 (not res!1463279)) b!3616399))

(assert (=> d!1064386 m!4115115))

(declare-fun m!4115221 () Bool)

(assert (=> d!1064386 m!4115221))

(declare-fun m!4115223 () Bool)

(assert (=> b!3616399 m!4115223))

(assert (=> b!3615593 d!1064386))

(declare-fun d!1064388 () Bool)

(assert (=> d!1064388 (= (isEmpty!22490 (getSuffix!1596 lt!1246984 lt!1246984)) ((_ is Nil!38072) (getSuffix!1596 lt!1246984 lt!1246984)))))

(assert (=> b!3615574 d!1064388))

(declare-fun b!3616400 () Bool)

(declare-fun e!2238296 () Bool)

(declare-fun lt!1247405 () Bool)

(assert (=> b!3616400 (= e!2238296 (not lt!1247405))))

(declare-fun b!3616401 () Bool)

(declare-fun e!2238291 () Bool)

(assert (=> b!3616401 (= e!2238291 (= (head!7622 lt!1246984) (c!625548 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))))

(declare-fun b!3616402 () Bool)

(declare-fun res!1463281 () Bool)

(assert (=> b!3616402 (=> (not res!1463281) (not e!2238291))))

(declare-fun call!261562 () Bool)

(assert (=> b!3616402 (= res!1463281 (not call!261562))))

(declare-fun b!3616403 () Bool)

(declare-fun res!1463286 () Bool)

(declare-fun e!2238295 () Bool)

(assert (=> b!3616403 (=> res!1463286 e!2238295)))

(assert (=> b!3616403 (= res!1463286 (not ((_ is ElementMatch!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))))

(assert (=> b!3616403 (= e!2238296 e!2238295)))

(declare-fun b!3616404 () Bool)

(declare-fun e!2238292 () Bool)

(declare-fun e!2238297 () Bool)

(assert (=> b!3616404 (= e!2238292 e!2238297)))

(declare-fun res!1463280 () Bool)

(assert (=> b!3616404 (=> res!1463280 e!2238297)))

(assert (=> b!3616404 (= res!1463280 call!261562)))

(declare-fun b!3616405 () Bool)

(declare-fun res!1463283 () Bool)

(assert (=> b!3616405 (=> res!1463283 e!2238297)))

(assert (=> b!3616405 (= res!1463283 (not (isEmpty!22490 (tail!5603 lt!1246984))))))

(declare-fun d!1064390 () Bool)

(declare-fun e!2238294 () Bool)

(assert (=> d!1064390 e!2238294))

(declare-fun c!625718 () Bool)

(assert (=> d!1064390 (= c!625718 ((_ is EmptyExpr!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun e!2238293 () Bool)

(assert (=> d!1064390 (= lt!1247405 e!2238293)))

(declare-fun c!625716 () Bool)

(assert (=> d!1064390 (= c!625716 (isEmpty!22490 lt!1246984))))

(assert (=> d!1064390 (validRegex!4767 (regex!5658 (rule!8414 (_1!22112 lt!1246993))))))

(assert (=> d!1064390 (= (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246984) lt!1247405)))

(declare-fun b!3616406 () Bool)

(assert (=> b!3616406 (= e!2238294 (= lt!1247405 call!261562))))

(declare-fun b!3616407 () Bool)

(assert (=> b!3616407 (= e!2238294 e!2238296)))

(declare-fun c!625717 () Bool)

(assert (=> b!3616407 (= c!625717 ((_ is EmptyLang!10417) (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun bm!261557 () Bool)

(assert (=> bm!261557 (= call!261562 (isEmpty!22490 lt!1246984))))

(declare-fun b!3616408 () Bool)

(declare-fun res!1463284 () Bool)

(assert (=> b!3616408 (=> res!1463284 e!2238295)))

(assert (=> b!3616408 (= res!1463284 e!2238291)))

(declare-fun res!1463282 () Bool)

(assert (=> b!3616408 (=> (not res!1463282) (not e!2238291))))

(assert (=> b!3616408 (= res!1463282 lt!1247405)))

(declare-fun b!3616409 () Bool)

(assert (=> b!3616409 (= e!2238293 (matchR!4986 (derivativeStep!3154 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) (head!7622 lt!1246984)) (tail!5603 lt!1246984)))))

(declare-fun b!3616410 () Bool)

(assert (=> b!3616410 (= e!2238295 e!2238292)))

(declare-fun res!1463287 () Bool)

(assert (=> b!3616410 (=> (not res!1463287) (not e!2238292))))

(assert (=> b!3616410 (= res!1463287 (not lt!1247405))))

(declare-fun b!3616411 () Bool)

(assert (=> b!3616411 (= e!2238297 (not (= (head!7622 lt!1246984) (c!625548 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))))

(declare-fun b!3616412 () Bool)

(assert (=> b!3616412 (= e!2238293 (nullable!3605 (regex!5658 (rule!8414 (_1!22112 lt!1246993)))))))

(declare-fun b!3616413 () Bool)

(declare-fun res!1463285 () Bool)

(assert (=> b!3616413 (=> (not res!1463285) (not e!2238291))))

(assert (=> b!3616413 (= res!1463285 (isEmpty!22490 (tail!5603 lt!1246984)))))

(assert (= (and d!1064390 c!625716) b!3616412))

(assert (= (and d!1064390 (not c!625716)) b!3616409))

(assert (= (and d!1064390 c!625718) b!3616406))

(assert (= (and d!1064390 (not c!625718)) b!3616407))

(assert (= (and b!3616407 c!625717) b!3616400))

(assert (= (and b!3616407 (not c!625717)) b!3616403))

(assert (= (and b!3616403 (not res!1463286)) b!3616408))

(assert (= (and b!3616408 res!1463282) b!3616402))

(assert (= (and b!3616402 res!1463281) b!3616413))

(assert (= (and b!3616413 res!1463285) b!3616401))

(assert (= (and b!3616408 (not res!1463284)) b!3616410))

(assert (= (and b!3616410 res!1463287) b!3616404))

(assert (= (and b!3616404 (not res!1463280)) b!3616405))

(assert (= (and b!3616405 (not res!1463283)) b!3616411))

(assert (= (or b!3616406 b!3616402 b!3616404) bm!261557))

(assert (=> bm!261557 m!4114793))

(assert (=> b!3616409 m!4114795))

(assert (=> b!3616409 m!4114795))

(declare-fun m!4115225 () Bool)

(assert (=> b!3616409 m!4115225))

(assert (=> b!3616409 m!4114799))

(assert (=> b!3616409 m!4115225))

(assert (=> b!3616409 m!4114799))

(declare-fun m!4115227 () Bool)

(assert (=> b!3616409 m!4115227))

(assert (=> b!3616405 m!4114799))

(assert (=> b!3616405 m!4114799))

(assert (=> b!3616405 m!4114803))

(assert (=> b!3616413 m!4114799))

(assert (=> b!3616413 m!4114799))

(assert (=> b!3616413 m!4114803))

(assert (=> b!3616401 m!4114795))

(assert (=> b!3616412 m!4115181))

(assert (=> b!3616411 m!4114795))

(assert (=> d!1064390 m!4114793))

(assert (=> d!1064390 m!4114823))

(assert (=> b!3615574 d!1064390))

(declare-fun d!1064392 () Bool)

(assert (=> d!1064392 (not (matchR!4986 (regex!5658 (rule!8414 (_1!22112 lt!1246993))) lt!1246984))))

(declare-fun lt!1247406 () Unit!54491)

(assert (=> d!1064392 (= lt!1247406 (choose!21168 thiss!23823 rules!3307 rule!403 lt!1246984 lt!1246984 (rule!8414 (_1!22112 lt!1246993))))))

(assert (=> d!1064392 (isPrefix!3021 lt!1246984 lt!1246984)))

(assert (=> d!1064392 (= (lemmaMaxPrefNoSmallerRuleMatches!192 thiss!23823 rules!3307 rule!403 lt!1246984 lt!1246984 (rule!8414 (_1!22112 lt!1246993))) lt!1247406)))

(declare-fun bs!571052 () Bool)

(assert (= bs!571052 d!1064392))

(assert (=> bs!571052 m!4114213))

(declare-fun m!4115229 () Bool)

(assert (=> bs!571052 m!4115229))

(assert (=> bs!571052 m!4114285))

(assert (=> b!3615574 d!1064392))

(declare-fun d!1064394 () Bool)

(declare-fun lt!1247407 () List!38196)

(assert (=> d!1064394 (= (++!9474 lt!1246984 lt!1247407) lt!1246984)))

(declare-fun e!2238298 () List!38196)

(assert (=> d!1064394 (= lt!1247407 e!2238298)))

(declare-fun c!625719 () Bool)

(assert (=> d!1064394 (= c!625719 ((_ is Cons!38072) lt!1246984))))

(assert (=> d!1064394 (>= (size!29039 lt!1246984) (size!29039 lt!1246984))))

(assert (=> d!1064394 (= (getSuffix!1596 lt!1246984 lt!1246984) lt!1247407)))

(declare-fun b!3616414 () Bool)

(assert (=> b!3616414 (= e!2238298 (getSuffix!1596 (tail!5603 lt!1246984) (t!293727 lt!1246984)))))

(declare-fun b!3616415 () Bool)

(assert (=> b!3616415 (= e!2238298 lt!1246984)))

(assert (= (and d!1064394 c!625719) b!3616414))

(assert (= (and d!1064394 (not c!625719)) b!3616415))

(declare-fun m!4115231 () Bool)

(assert (=> d!1064394 m!4115231))

(assert (=> d!1064394 m!4114241))

(assert (=> d!1064394 m!4114241))

(assert (=> b!3616414 m!4114799))

(assert (=> b!3616414 m!4114799))

(declare-fun m!4115233 () Bool)

(assert (=> b!3616414 m!4115233))

(assert (=> b!3615574 d!1064394))

(declare-fun d!1064396 () Bool)

(assert (=> d!1064396 (isEmpty!22490 (getSuffix!1596 lt!1246984 lt!1246984))))

(declare-fun lt!1247410 () Unit!54491)

(declare-fun choose!21189 (List!38196) Unit!54491)

(assert (=> d!1064396 (= lt!1247410 (choose!21189 lt!1246984))))

(assert (=> d!1064396 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!152 lt!1246984) lt!1247410)))

(declare-fun bs!571053 () Bool)

(assert (= bs!571053 d!1064396))

(assert (=> bs!571053 m!4114207))

(assert (=> bs!571053 m!4114207))

(assert (=> bs!571053 m!4114211))

(declare-fun m!4115235 () Bool)

(assert (=> bs!571053 m!4115235))

(assert (=> b!3615574 d!1064396))

(declare-fun b!3616429 () Bool)

(declare-fun e!2238301 () Bool)

(declare-fun tp!1104945 () Bool)

(declare-fun tp!1104943 () Bool)

(assert (=> b!3616429 (= e!2238301 (and tp!1104945 tp!1104943))))

(declare-fun b!3616427 () Bool)

(declare-fun tp!1104944 () Bool)

(declare-fun tp!1104942 () Bool)

(assert (=> b!3616427 (= e!2238301 (and tp!1104944 tp!1104942))))

(declare-fun b!3616426 () Bool)

(assert (=> b!3616426 (= e!2238301 tp_is_empty!17917)))

(assert (=> b!3615569 (= tp!1104862 e!2238301)))

(declare-fun b!3616428 () Bool)

(declare-fun tp!1104941 () Bool)

(assert (=> b!3616428 (= e!2238301 tp!1104941)))

(assert (= (and b!3615569 ((_ is ElementMatch!10417) (regex!5658 (h!43493 rules!3307)))) b!3616426))

(assert (= (and b!3615569 ((_ is Concat!16306) (regex!5658 (h!43493 rules!3307)))) b!3616427))

(assert (= (and b!3615569 ((_ is Star!10417) (regex!5658 (h!43493 rules!3307)))) b!3616428))

(assert (= (and b!3615569 ((_ is Union!10417) (regex!5658 (h!43493 rules!3307)))) b!3616429))

(declare-fun b!3616434 () Bool)

(declare-fun e!2238304 () Bool)

(declare-fun tp!1104948 () Bool)

(assert (=> b!3616434 (= e!2238304 (and tp_is_empty!17917 tp!1104948))))

(assert (=> b!3615573 (= tp!1104872 e!2238304)))

(assert (= (and b!3615573 ((_ is Cons!38072) (t!293727 suffix!1395))) b!3616434))

(declare-fun b!3616435 () Bool)

(declare-fun e!2238305 () Bool)

(declare-fun tp!1104949 () Bool)

(assert (=> b!3616435 (= e!2238305 (and tp_is_empty!17917 tp!1104949))))

(assert (=> b!3615592 (= tp!1104868 e!2238305)))

(assert (= (and b!3615592 ((_ is Cons!38072) (originalCharacters!6372 token!511))) b!3616435))

(declare-fun b!3616439 () Bool)

(declare-fun e!2238306 () Bool)

(declare-fun tp!1104954 () Bool)

(declare-fun tp!1104952 () Bool)

(assert (=> b!3616439 (= e!2238306 (and tp!1104954 tp!1104952))))

(declare-fun b!3616437 () Bool)

(declare-fun tp!1104953 () Bool)

(declare-fun tp!1104951 () Bool)

(assert (=> b!3616437 (= e!2238306 (and tp!1104953 tp!1104951))))

(declare-fun b!3616436 () Bool)

(assert (=> b!3616436 (= e!2238306 tp_is_empty!17917)))

(assert (=> b!3615572 (= tp!1104869 e!2238306)))

(declare-fun b!3616438 () Bool)

(declare-fun tp!1104950 () Bool)

(assert (=> b!3616438 (= e!2238306 tp!1104950)))

(assert (= (and b!3615572 ((_ is ElementMatch!10417) (regex!5658 (rule!8414 token!511)))) b!3616436))

(assert (= (and b!3615572 ((_ is Concat!16306) (regex!5658 (rule!8414 token!511)))) b!3616437))

(assert (= (and b!3615572 ((_ is Star!10417) (regex!5658 (rule!8414 token!511)))) b!3616438))

(assert (= (and b!3615572 ((_ is Union!10417) (regex!5658 (rule!8414 token!511)))) b!3616439))

(declare-fun b!3616450 () Bool)

(declare-fun b_free!94101 () Bool)

(declare-fun b_next!94805 () Bool)

(assert (=> b!3616450 (= b_free!94101 (not b_next!94805))))

(declare-fun t!293838 () Bool)

(declare-fun tb!207405 () Bool)

(assert (=> (and b!3616450 (= (toValue!7942 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293838) tb!207405))

(declare-fun result!252746 () Bool)

(assert (= result!252746 result!252664))

(assert (=> d!1064168 t!293838))

(declare-fun tb!207407 () Bool)

(declare-fun t!293840 () Bool)

(assert (=> (and b!3616450 (= (toValue!7942 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293840) tb!207407))

(declare-fun result!252748 () Bool)

(assert (= result!252748 result!252714))

(assert (=> d!1064246 t!293840))

(assert (=> d!1064134 t!293838))

(declare-fun t!293842 () Bool)

(declare-fun tb!207409 () Bool)

(assert (=> (and b!3616450 (= (toValue!7942 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toValue!7942 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293842) tb!207409))

(declare-fun result!252750 () Bool)

(assert (= result!252750 result!252674))

(assert (=> d!1064134 t!293842))

(assert (=> d!1064164 t!293838))

(declare-fun b_and!264151 () Bool)

(declare-fun tp!1104965 () Bool)

(assert (=> b!3616450 (= tp!1104965 (and (=> t!293840 result!252748) (=> t!293838 result!252746) (=> t!293842 result!252750) b_and!264151))))

(declare-fun b_free!94103 () Bool)

(declare-fun b_next!94807 () Bool)

(assert (=> b!3616450 (= b_free!94103 (not b_next!94807))))

(declare-fun t!293844 () Bool)

(declare-fun tb!207411 () Bool)

(assert (=> (and b!3616450 (= (toChars!7801 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toChars!7801 (transformation!5658 (rule!8414 token!511)))) t!293844) tb!207411))

(declare-fun result!252752 () Bool)

(assert (= result!252752 result!252636))

(assert (=> d!1064060 t!293844))

(declare-fun tb!207413 () Bool)

(declare-fun t!293846 () Bool)

(assert (=> (and b!3616450 (= (toChars!7801 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293846) tb!207413))

(declare-fun result!252754 () Bool)

(assert (= result!252754 result!252646))

(assert (=> d!1064096 t!293846))

(declare-fun t!293848 () Bool)

(declare-fun tb!207415 () Bool)

(assert (=> (and b!3616450 (= (toChars!7801 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toChars!7801 (transformation!5658 (rule!8414 (_1!22112 lt!1246993))))) t!293848) tb!207415))

(declare-fun result!252756 () Bool)

(assert (= result!252756 result!252694))

(assert (=> d!1064168 t!293848))

(assert (=> b!3616370 t!293844))

(declare-fun b_and!264153 () Bool)

(declare-fun tp!1104964 () Bool)

(assert (=> b!3616450 (= tp!1104964 (and (=> t!293844 result!252752) (=> t!293846 result!252754) (=> t!293848 result!252756) b_and!264153))))

(declare-fun e!2238315 () Bool)

(assert (=> b!3616450 (= e!2238315 (and tp!1104965 tp!1104964))))

(declare-fun b!3616449 () Bool)

(declare-fun tp!1104963 () Bool)

(declare-fun e!2238317 () Bool)

(assert (=> b!3616449 (= e!2238317 (and tp!1104963 (inv!51453 (tag!6370 (h!43493 (t!293728 rules!3307)))) (inv!51456 (transformation!5658 (h!43493 (t!293728 rules!3307)))) e!2238315))))

(declare-fun b!3616448 () Bool)

(declare-fun e!2238318 () Bool)

(declare-fun tp!1104966 () Bool)

(assert (=> b!3616448 (= e!2238318 (and e!2238317 tp!1104966))))

(assert (=> b!3615595 (= tp!1104867 e!2238318)))

(assert (= b!3616449 b!3616450))

(assert (= b!3616448 b!3616449))

(assert (= (and b!3615595 ((_ is Cons!38073) (t!293728 rules!3307))) b!3616448))

(declare-fun m!4115237 () Bool)

(assert (=> b!3616449 m!4115237))

(declare-fun m!4115239 () Bool)

(assert (=> b!3616449 m!4115239))

(declare-fun b!3616454 () Bool)

(declare-fun e!2238319 () Bool)

(declare-fun tp!1104971 () Bool)

(declare-fun tp!1104969 () Bool)

(assert (=> b!3616454 (= e!2238319 (and tp!1104971 tp!1104969))))

(declare-fun b!3616452 () Bool)

(declare-fun tp!1104970 () Bool)

(declare-fun tp!1104968 () Bool)

(assert (=> b!3616452 (= e!2238319 (and tp!1104970 tp!1104968))))

(declare-fun b!3616451 () Bool)

(assert (=> b!3616451 (= e!2238319 tp_is_empty!17917)))

(assert (=> b!3615567 (= tp!1104863 e!2238319)))

(declare-fun b!3616453 () Bool)

(declare-fun tp!1104967 () Bool)

(assert (=> b!3616453 (= e!2238319 tp!1104967)))

(assert (= (and b!3615567 ((_ is ElementMatch!10417) (regex!5658 anOtherTypeRule!33))) b!3616451))

(assert (= (and b!3615567 ((_ is Concat!16306) (regex!5658 anOtherTypeRule!33))) b!3616452))

(assert (= (and b!3615567 ((_ is Star!10417) (regex!5658 anOtherTypeRule!33))) b!3616453))

(assert (= (and b!3615567 ((_ is Union!10417) (regex!5658 anOtherTypeRule!33))) b!3616454))

(declare-fun b!3616458 () Bool)

(declare-fun e!2238320 () Bool)

(declare-fun tp!1104976 () Bool)

(declare-fun tp!1104974 () Bool)

(assert (=> b!3616458 (= e!2238320 (and tp!1104976 tp!1104974))))

(declare-fun b!3616456 () Bool)

(declare-fun tp!1104975 () Bool)

(declare-fun tp!1104973 () Bool)

(assert (=> b!3616456 (= e!2238320 (and tp!1104975 tp!1104973))))

(declare-fun b!3616455 () Bool)

(assert (=> b!3616455 (= e!2238320 tp_is_empty!17917)))

(assert (=> b!3615598 (= tp!1104870 e!2238320)))

(declare-fun b!3616457 () Bool)

(declare-fun tp!1104972 () Bool)

(assert (=> b!3616457 (= e!2238320 tp!1104972)))

(assert (= (and b!3615598 ((_ is ElementMatch!10417) (regex!5658 rule!403))) b!3616455))

(assert (= (and b!3615598 ((_ is Concat!16306) (regex!5658 rule!403))) b!3616456))

(assert (= (and b!3615598 ((_ is Star!10417) (regex!5658 rule!403))) b!3616457))

(assert (= (and b!3615598 ((_ is Union!10417) (regex!5658 rule!403))) b!3616458))

(declare-fun b_lambda!106991 () Bool)

(assert (= b_lambda!106989 (or (and b!3615578 b_free!94095) (and b!3615584 b_free!94091 (= (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) (and b!3615577 b_free!94087 (= (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) (and b!3616450 b_free!94103 (= (toChars!7801 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) (and b!3615583 b_free!94083 (= (toChars!7801 (transformation!5658 rule!403)) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) b_lambda!106991)))

(declare-fun b_lambda!106993 () Bool)

(assert (= b_lambda!106955 (or (and b!3615578 b_free!94095) (and b!3615584 b_free!94091 (= (toChars!7801 (transformation!5658 (h!43493 rules!3307))) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) (and b!3615577 b_free!94087 (= (toChars!7801 (transformation!5658 anOtherTypeRule!33)) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) (and b!3616450 b_free!94103 (= (toChars!7801 (transformation!5658 (h!43493 (t!293728 rules!3307)))) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) (and b!3615583 b_free!94083 (= (toChars!7801 (transformation!5658 rule!403)) (toChars!7801 (transformation!5658 (rule!8414 token!511))))) b_lambda!106993)))

(check-sat (not b!3616389) (not b!3616458) (not b_next!94799) (not b!3616448) (not d!1064268) (not d!1064134) (not d!1064384) (not d!1064254) (not tb!207345) (not d!1064376) (not b!3615815) (not b_next!94793) b_and!264151 (not b!3616456) b_and!264147 (not b!3616040) (not d!1064242) (not d!1064248) (not b!3615874) (not b!3616100) (not bm!261503) (not b!3615942) (not d!1064396) (not b!3616192) (not d!1064178) (not b!3615687) (not b!3616341) b_and!264153 (not b!3616449) (not b!3615834) (not d!1064270) (not b!3616355) (not b!3616038) (not b!3616338) (not b!3616086) (not d!1064386) (not d!1064258) (not d!1064112) (not tb!207385) (not d!1064060) (not d!1064204) (not bm!261554) (not b!3616046) (not d!1064362) (not b!3616382) (not d!1064356) (not b!3616068) (not d!1064342) (not b!3615816) (not b!3615866) (not b!3616454) (not d!1064174) (not d!1064252) (not d!1064374) (not b!3616412) (not b!3615684) b_and!264127 (not b!3616149) (not d!1064272) (not b!3616221) (not b!3615724) (not b!3616343) (not b_next!94807) (not b_lambda!106963) (not b!3616120) (not bm!261521) (not b_lambda!106965) (not b!3615812) (not b!3616148) (not b_lambda!106961) (not d!1064040) (not b!3615618) (not b!3616452) (not b!3615849) (not b!3616351) (not b!3616399) (not b!3616361) (not d!1064102) (not d!1064262) (not b_next!94805) (not d!1064382) (not bm!261519) (not b!3616162) (not b!3616435) b_and!264123 (not b!3616128) (not b!3616083) (not b!3616401) (not b!3616150) (not d!1064354) (not b!3616191) (not d!1064108) (not bm!261555) b_and!264143 (not b!3616154) (not d!1064330) (not b!3615938) (not bm!261548) (not bm!261515) (not d!1064058) (not d!1064132) (not b_next!94789) (not b_lambda!106993) (not b!3615808) (not b!3615680) (not b!3615685) (not b_next!94797) (not d!1064368) (not tb!207337) (not b!3616263) (not b!3616336) (not d!1064290) (not d!1064296) (not d!1064182) (not tb!207365) (not b!3616039) (not b!3615804) (not d!1064166) (not b!3616359) (not d!1064092) (not b_lambda!106971) (not b!3615864) (not b_lambda!106973) (not b!3616409) (not bm!261514) (not b!3616152) (not b_lambda!106991) (not d!1064274) (not b!3615814) (not b!3616222) (not d!1064294) (not b_lambda!106981) (not d!1064200) (not b_next!94791) (not bm!261557) (not b!3616223) (not bm!261553) (not b!3615863) (not b!3616371) (not b!3616363) (not d!1064118) (not d!1064366) (not d!1064344) (not b!3616453) (not bm!261513) b_and!264129 (not b!3616365) (not b!3616370) (not b!3615736) (not b!3616043) (not b!3616342) (not d!1064094) (not b!3616161) (not b!3616042) (not d!1064338) (not d!1064264) (not d!1064206) (not b!3616156) (not b!3616427) (not b!3615872) (not d!1064176) (not b!3616457) b_and!264145 (not b!3616193) (not b!3616045) (not b!3616387) (not b!3616079) (not d!1064126) (not bm!261522) (not b_next!94785) (not b!3616414) b_and!264149 (not b!3616428) (not b!3615679) tp_is_empty!17917 (not b!3616413) (not b!3616347) (not d!1064392) (not b!3616107) (not b!3616362) (not d!1064364) (not d!1064394) (not b!3616108) (not b!3615681) (not b!3616109) (not b!3616264) (not b!3615686) (not b!3616438) (not b!3616411) (not d!1064298) (not b!3616075) (not b!3616386) (not d!1064276) (not b!3615817) (not b!3616437) (not tb!207321) (not bm!261520) (not b!3616429) (not b!3616439) (not b!3616041) (not b!3616349) (not d!1064390) (not d!1064340) (not d!1064168) (not b!3616087) (not d!1064106) (not b!3616405) (not b!3616153) (not b!3616249) (not b!3616155) (not bm!261552) (not b!3616085) (not b_next!94787) (not bm!261549) (not b!3616346) (not b!3616337) (not b!3616345) (not b!3616384) (not d!1064038) (not d!1064044) (not d!1064068) (not b!3615683) b_and!264125 (not d!1064130) (not d!1064042) (not tb!207313) (not b!3616250) (not b!3616434) (not b_lambda!106957) (not d!1064096) (not b_next!94795))
(check-sat (not b_next!94799) b_and!264153 b_and!264127 (not b_next!94807) (not b_next!94805) b_and!264123 (not b_next!94797) (not b_next!94791) b_and!264129 b_and!264149 (not b_next!94787) b_and!264147 (not b_next!94793) b_and!264151 b_and!264143 (not b_next!94789) b_and!264145 (not b_next!94785) b_and!264125 (not b_next!94795))
