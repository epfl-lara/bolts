; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527124 () Bool)

(assert start!527124)

(declare-fun b!4987660 () Bool)

(declare-fun b_free!133207 () Bool)

(declare-fun b_next!133997 () Bool)

(assert (=> b!4987660 (= b_free!133207 (not b_next!133997))))

(declare-fun tp!1397769 () Bool)

(declare-fun b_and!350007 () Bool)

(assert (=> b!4987660 (= tp!1397769 b_and!350007)))

(declare-fun b_free!133209 () Bool)

(declare-fun b_next!133999 () Bool)

(assert (=> b!4987660 (= b_free!133209 (not b_next!133999))))

(declare-fun tp!1397767 () Bool)

(declare-fun b_and!350009 () Bool)

(assert (=> b!4987660 (= tp!1397767 b_and!350009)))

(declare-fun b!4987668 () Bool)

(declare-fun e!3117180 () Bool)

(assert (=> b!4987668 (= e!3117180 true)))

(declare-fun b!4987667 () Bool)

(declare-fun e!3117179 () Bool)

(assert (=> b!4987667 (= e!3117179 e!3117180)))

(declare-fun b!4987657 () Bool)

(assert (=> b!4987657 e!3117179))

(assert (= b!4987667 b!4987668))

(assert (= b!4987657 b!4987667))

(declare-fun lambda!248093 () Int)

(declare-fun order!26649 () Int)

(declare-fun order!26647 () Int)

(declare-datatypes ((String!65810 0))(
  ( (String!65811 (value!270988 String)) )
))
(declare-datatypes ((C!27670 0))(
  ( (C!27671 (val!23201 Int)) )
))
(declare-datatypes ((List!57750 0))(
  ( (Nil!57626) (Cons!57626 (h!64074 C!27670) (t!370036 List!57750)) )
))
(declare-datatypes ((IArray!30519 0))(
  ( (IArray!30520 (innerList!15317 List!57750)) )
))
(declare-datatypes ((List!57751 0))(
  ( (Nil!57627) (Cons!57627 (h!64075 (_ BitVec 16)) (t!370037 List!57751)) )
))
(declare-datatypes ((Regex!13710 0))(
  ( (ElementMatch!13710 (c!851108 C!27670)) (Concat!22497 (regOne!27932 Regex!13710) (regTwo!27932 Regex!13710)) (EmptyExpr!13710) (Star!13710 (reg!14039 Regex!13710)) (EmptyLang!13710) (Union!13710 (regOne!27933 Regex!13710) (regTwo!27933 Regex!13710)) )
))
(declare-datatypes ((Conc!15229 0))(
  ( (Node!15229 (left!42164 Conc!15229) (right!42494 Conc!15229) (csize!30688 Int) (cheight!15440 Int)) (Leaf!25293 (xs!18555 IArray!30519) (csize!30689 Int)) (Empty!15229) )
))
(declare-datatypes ((BalanceConc!29888 0))(
  ( (BalanceConc!29889 (c!851109 Conc!15229)) )
))
(declare-datatypes ((TokenValue!8787 0))(
  ( (FloatLiteralValue!17574 (text!61954 List!57751)) (TokenValueExt!8786 (__x!34867 Int)) (Broken!43935 (value!270989 List!57751)) (Object!8910) (End!8787) (Def!8787) (Underscore!8787) (Match!8787) (Else!8787) (Error!8787) (Case!8787) (If!8787) (Extends!8787) (Abstract!8787) (Class!8787) (Val!8787) (DelimiterValue!17574 (del!8847 List!57751)) (KeywordValue!8793 (value!270990 List!57751)) (CommentValue!17574 (value!270991 List!57751)) (WhitespaceValue!17574 (value!270992 List!57751)) (IndentationValue!8787 (value!270993 List!57751)) (String!65812) (Int32!8787) (Broken!43936 (value!270994 List!57751)) (Boolean!8788) (Unit!148785) (OperatorValue!8790 (op!8847 List!57751)) (IdentifierValue!17574 (value!270995 List!57751)) (IdentifierValue!17575 (value!270996 List!57751)) (WhitespaceValue!17575 (value!270997 List!57751)) (True!17574) (False!17574) (Broken!43937 (value!270998 List!57751)) (Broken!43938 (value!270999 List!57751)) (True!17575) (RightBrace!8787) (RightBracket!8787) (Colon!8787) (Null!8787) (Comma!8787) (LeftBracket!8787) (False!17575) (LeftBrace!8787) (ImaginaryLiteralValue!8787 (text!61955 List!57751)) (StringLiteralValue!26361 (value!271000 List!57751)) (EOFValue!8787 (value!271001 List!57751)) (IdentValue!8787 (value!271002 List!57751)) (DelimiterValue!17575 (value!271003 List!57751)) (DedentValue!8787 (value!271004 List!57751)) (NewLineValue!8787 (value!271005 List!57751)) (IntegerValue!26361 (value!271006 (_ BitVec 32)) (text!61956 List!57751)) (IntegerValue!26362 (value!271007 Int) (text!61957 List!57751)) (Times!8787) (Or!8787) (Equal!8787) (Minus!8787) (Broken!43939 (value!271008 List!57751)) (And!8787) (Div!8787) (LessEqual!8787) (Mod!8787) (Concat!22498) (Not!8787) (Plus!8787) (SpaceValue!8787 (value!271009 List!57751)) (IntegerValue!26363 (value!271010 Int) (text!61958 List!57751)) (StringLiteralValue!26362 (text!61959 List!57751)) (FloatLiteralValue!17575 (text!61960 List!57751)) (BytesLiteralValue!8787 (value!271011 List!57751)) (CommentValue!17575 (value!271012 List!57751)) (StringLiteralValue!26363 (value!271013 List!57751)) (ErrorTokenValue!8787 (msg!8848 List!57751)) )
))
(declare-datatypes ((TokenValueInjection!16882 0))(
  ( (TokenValueInjection!16883 (toValue!11488 Int) (toChars!11347 Int)) )
))
(declare-datatypes ((Rule!16754 0))(
  ( (Rule!16755 (regex!8477 Regex!13710) (tag!9341 String!65810) (isSeparator!8477 Bool) (transformation!8477 TokenValueInjection!16882)) )
))
(declare-fun rule!200 () Rule!16754)

(declare-fun dynLambda!23479 (Int Int) Int)

(declare-fun dynLambda!23480 (Int Int) Int)

(assert (=> b!4987668 (< (dynLambda!23479 order!26647 (toValue!11488 (transformation!8477 rule!200))) (dynLambda!23480 order!26649 lambda!248093))))

(declare-fun order!26651 () Int)

(declare-fun dynLambda!23481 (Int Int) Int)

(assert (=> b!4987668 (< (dynLambda!23481 order!26651 (toChars!11347 (transformation!8477 rule!200))) (dynLambda!23480 order!26649 lambda!248093))))

(declare-fun b!4987645 () Bool)

(declare-fun e!3117165 () Bool)

(declare-fun e!3117169 () Bool)

(assert (=> b!4987645 (= e!3117165 (not e!3117169))))

(declare-fun res!2129167 () Bool)

(assert (=> b!4987645 (=> res!2129167 e!3117169)))

(declare-fun semiInverseModEq!3770 (Int Int) Bool)

(assert (=> b!4987645 (= res!2129167 (not (semiInverseModEq!3770 (toChars!11347 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200)))))))

(declare-datatypes ((Unit!148786 0))(
  ( (Unit!148787) )
))
(declare-fun lt!2061640 () Unit!148786)

(declare-fun lemmaInv!1396 (TokenValueInjection!16882) Unit!148786)

(assert (=> b!4987645 (= lt!2061640 (lemmaInv!1396 (transformation!8477 rule!200)))))

(declare-fun e!3117172 () Bool)

(assert (=> b!4987645 e!3117172))

(declare-fun res!2129172 () Bool)

(assert (=> b!4987645 (=> res!2129172 e!3117172)))

(declare-datatypes ((tuple2!62680 0))(
  ( (tuple2!62681 (_1!34643 List!57750) (_2!34643 List!57750)) )
))
(declare-fun lt!2061645 () tuple2!62680)

(declare-fun isEmpty!31184 (List!57750) Bool)

(assert (=> b!4987645 (= res!2129172 (isEmpty!31184 (_1!34643 lt!2061645)))))

(declare-fun lt!2061649 () List!57750)

(declare-fun findLongestMatchInner!1919 (Regex!13710 List!57750 Int List!57750 List!57750 Int) tuple2!62680)

(declare-fun size!38288 (List!57750) Int)

(assert (=> b!4987645 (= lt!2061645 (findLongestMatchInner!1919 (regex!8477 rule!200) Nil!57626 (size!38288 Nil!57626) lt!2061649 lt!2061649 (size!38288 lt!2061649)))))

(declare-fun lt!2061646 () Unit!148786)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1880 (Regex!13710 List!57750) Unit!148786)

(assert (=> b!4987645 (= lt!2061646 (longestMatchIsAcceptedByMatchOrIsEmpty!1880 (regex!8477 rule!200) lt!2061649))))

(declare-fun b!4987646 () Bool)

(declare-fun e!3117168 () Bool)

(declare-fun input!1580 () BalanceConc!29888)

(declare-fun tp!1397765 () Bool)

(declare-fun inv!75576 (Conc!15229) Bool)

(assert (=> b!4987646 (= e!3117168 (and (inv!75576 (c!851109 input!1580)) tp!1397765))))

(declare-fun b!4987647 () Bool)

(declare-fun e!3117173 () Bool)

(declare-fun e!3117170 () Bool)

(assert (=> b!4987647 (= e!3117173 e!3117170)))

(declare-fun res!2129169 () Bool)

(assert (=> b!4987647 (=> res!2129169 e!3117170)))

(declare-fun lt!2061639 () TokenValue!8787)

(declare-fun lt!2061654 () Int)

(declare-fun lt!2061651 () List!57750)

(declare-datatypes ((Token!15406 0))(
  ( (Token!15407 (value!271014 TokenValue!8787) (rule!11745 Rule!16754) (size!38289 Int) (originalCharacters!8734 List!57750)) )
))
(declare-datatypes ((tuple2!62682 0))(
  ( (tuple2!62683 (_1!34644 Token!15406) (_2!34644 List!57750)) )
))
(declare-fun lt!2061652 () tuple2!62682)

(assert (=> b!4987647 (= res!2129169 (or (not (= (value!271014 (_1!34644 lt!2061652)) lt!2061639)) (not (= (rule!11745 (_1!34644 lt!2061652)) rule!200)) (not (= (size!38289 (_1!34644 lt!2061652)) lt!2061654)) (not (= (originalCharacters!8734 (_1!34644 lt!2061652)) lt!2061651))))))

(declare-datatypes ((Option!14565 0))(
  ( (None!14564) (Some!14564 (v!50561 tuple2!62682)) )
))
(declare-fun lt!2061647 () Option!14565)

(declare-fun get!20054 (Option!14565) tuple2!62682)

(assert (=> b!4987647 (= lt!2061652 (get!20054 lt!2061647))))

(declare-fun b!4987648 () Bool)

(declare-fun e!3117174 () Bool)

(declare-fun e!3117171 () Bool)

(assert (=> b!4987648 (= e!3117174 e!3117171)))

(declare-fun res!2129175 () Bool)

(assert (=> b!4987648 (=> (not res!2129175) (not e!3117171))))

(declare-fun totalInput!520 () BalanceConc!29888)

(declare-fun isSuffix!1276 (List!57750 List!57750) Bool)

(declare-fun list!18507 (BalanceConc!29888) List!57750)

(assert (=> b!4987648 (= res!2129175 (isSuffix!1276 lt!2061649 (list!18507 totalInput!520)))))

(assert (=> b!4987648 (= lt!2061649 (list!18507 input!1580))))

(declare-fun b!4987649 () Bool)

(declare-fun e!3117162 () Bool)

(assert (=> b!4987649 (= e!3117169 e!3117162)))

(declare-fun res!2129174 () Bool)

(assert (=> b!4987649 (=> res!2129174 e!3117162)))

(declare-fun lt!2061648 () Bool)

(declare-fun isDefined!11472 (Option!14565) Bool)

(assert (=> b!4987649 (= res!2129174 (not (= lt!2061648 (isDefined!11472 lt!2061647))))))

(declare-fun lt!2061643 () Token!15406)

(declare-datatypes ((tuple2!62684 0))(
  ( (tuple2!62685 (_1!34645 BalanceConc!29888) (_2!34645 BalanceConc!29888)) )
))
(declare-fun lt!2061650 () tuple2!62684)

(declare-datatypes ((tuple2!62686 0))(
  ( (tuple2!62687 (_1!34646 Token!15406) (_2!34646 BalanceConc!29888)) )
))
(declare-datatypes ((Option!14566 0))(
  ( (None!14565) (Some!14565 (v!50562 tuple2!62686)) )
))
(declare-fun isDefined!11473 (Option!14566) Bool)

(assert (=> b!4987649 (= lt!2061648 (isDefined!11473 (Some!14565 (tuple2!62687 lt!2061643 (_2!34645 lt!2061650)))))))

(declare-datatypes ((LexerInterface!8069 0))(
  ( (LexerInterfaceExt!8066 (__x!34868 Int)) (Lexer!8067) )
))
(declare-fun thiss!16165 () LexerInterface!8069)

(declare-fun maxPrefixOneRule!3689 (LexerInterface!8069 Rule!16754 List!57750) Option!14565)

(assert (=> b!4987649 (= lt!2061647 (maxPrefixOneRule!3689 thiss!16165 rule!200 lt!2061649))))

(assert (=> b!4987649 (= lt!2061643 (Token!15407 lt!2061639 rule!200 lt!2061654 lt!2061651))))

(declare-fun size!38290 (BalanceConc!29888) Int)

(assert (=> b!4987649 (= lt!2061654 (size!38290 (_1!34645 lt!2061650)))))

(declare-fun apply!13962 (TokenValueInjection!16882 BalanceConc!29888) TokenValue!8787)

(assert (=> b!4987649 (= lt!2061639 (apply!13962 (transformation!8477 rule!200) (_1!34645 lt!2061650)))))

(declare-fun lt!2061641 () Unit!148786)

(declare-fun lt!2061644 () BalanceConc!29888)

(declare-fun ForallOf!1284 (Int BalanceConc!29888) Unit!148786)

(assert (=> b!4987649 (= lt!2061641 (ForallOf!1284 lambda!248093 lt!2061644))))

(declare-fun seqFromList!6096 (List!57750) BalanceConc!29888)

(assert (=> b!4987649 (= lt!2061644 (seqFromList!6096 lt!2061651))))

(assert (=> b!4987649 (= lt!2061651 (list!18507 (_1!34645 lt!2061650)))))

(declare-fun lt!2061642 () Unit!148786)

(assert (=> b!4987649 (= lt!2061642 (ForallOf!1284 lambda!248093 (_1!34645 lt!2061650)))))

(declare-fun b!4987650 () Bool)

(assert (=> b!4987650 (= e!3117171 e!3117165)))

(declare-fun res!2129170 () Bool)

(assert (=> b!4987650 (=> (not res!2129170) (not e!3117165))))

(declare-fun isEmpty!31185 (BalanceConc!29888) Bool)

(assert (=> b!4987650 (= res!2129170 (not (isEmpty!31185 (_1!34645 lt!2061650))))))

(declare-fun findLongestMatchWithZipperSequenceV2!240 (Regex!13710 BalanceConc!29888 BalanceConc!29888) tuple2!62684)

(assert (=> b!4987650 (= lt!2061650 (findLongestMatchWithZipperSequenceV2!240 (regex!8477 rule!200) input!1580 totalInput!520))))

(declare-fun b!4987651 () Bool)

(declare-fun res!2129166 () Bool)

(assert (=> b!4987651 (=> (not res!2129166) (not e!3117174))))

(declare-fun ruleValid!3885 (LexerInterface!8069 Rule!16754) Bool)

(assert (=> b!4987651 (= res!2129166 (ruleValid!3885 thiss!16165 rule!200))))

(declare-fun b!4987652 () Bool)

(declare-fun inv!75577 (Token!15406) Bool)

(assert (=> b!4987652 (= e!3117170 (inv!75577 lt!2061643))))

(declare-fun b!4987653 () Bool)

(declare-fun res!2129173 () Bool)

(assert (=> b!4987653 (=> res!2129173 e!3117162)))

(assert (=> b!4987653 (= res!2129173 (not (= (list!18507 lt!2061644) lt!2061651)))))

(declare-fun b!4987654 () Bool)

(declare-fun e!3117166 () Bool)

(declare-fun tp!1397768 () Bool)

(assert (=> b!4987654 (= e!3117166 (and (inv!75576 (c!851109 totalInput!520)) tp!1397768))))

(declare-fun b!4987655 () Bool)

(declare-fun matchR!6702 (Regex!13710 List!57750) Bool)

(assert (=> b!4987655 (= e!3117172 (matchR!6702 (regex!8477 rule!200) (_1!34643 lt!2061645)))))

(declare-fun b!4987656 () Bool)

(assert (=> b!4987656 (= e!3117162 e!3117173)))

(declare-fun res!2129177 () Bool)

(assert (=> b!4987656 (=> res!2129177 e!3117173)))

(assert (=> b!4987656 (= res!2129177 (not (= (apply!13962 (transformation!8477 rule!200) lt!2061644) lt!2061639)))))

(declare-fun lt!2061653 () Unit!148786)

(declare-fun lemmaEqSameImage!1210 (TokenValueInjection!16882 BalanceConc!29888 BalanceConc!29888) Unit!148786)

(assert (=> b!4987656 (= lt!2061653 (lemmaEqSameImage!1210 (transformation!8477 rule!200) (_1!34645 lt!2061650) lt!2061644))))

(declare-fun res!2129171 () Bool)

(assert (=> b!4987657 (=> res!2129171 e!3117169)))

(declare-fun Forall!1825 (Int) Bool)

(assert (=> b!4987657 (= res!2129171 (not (Forall!1825 lambda!248093)))))

(declare-fun res!2129168 () Bool)

(assert (=> start!527124 (=> (not res!2129168) (not e!3117174))))

(assert (=> start!527124 (= res!2129168 (is-Lexer!8067 thiss!16165))))

(assert (=> start!527124 e!3117174))

(assert (=> start!527124 true))

(declare-fun e!3117163 () Bool)

(assert (=> start!527124 e!3117163))

(declare-fun inv!75578 (BalanceConc!29888) Bool)

(assert (=> start!527124 (and (inv!75578 totalInput!520) e!3117166)))

(assert (=> start!527124 (and (inv!75578 input!1580) e!3117168)))

(declare-fun b!4987658 () Bool)

(declare-fun res!2129176 () Bool)

(assert (=> b!4987658 (=> res!2129176 e!3117162)))

(assert (=> b!4987658 (= res!2129176 (not lt!2061648))))

(declare-fun tp!1397766 () Bool)

(declare-fun e!3117167 () Bool)

(declare-fun b!4987659 () Bool)

(declare-fun inv!75573 (String!65810) Bool)

(declare-fun inv!75579 (TokenValueInjection!16882) Bool)

(assert (=> b!4987659 (= e!3117163 (and tp!1397766 (inv!75573 (tag!9341 rule!200)) (inv!75579 (transformation!8477 rule!200)) e!3117167))))

(assert (=> b!4987660 (= e!3117167 (and tp!1397769 tp!1397767))))

(assert (= (and start!527124 res!2129168) b!4987651))

(assert (= (and b!4987651 res!2129166) b!4987648))

(assert (= (and b!4987648 res!2129175) b!4987650))

(assert (= (and b!4987650 res!2129170) b!4987645))

(assert (= (and b!4987645 (not res!2129172)) b!4987655))

(assert (= (and b!4987645 (not res!2129167)) b!4987657))

(assert (= (and b!4987657 (not res!2129171)) b!4987649))

(assert (= (and b!4987649 (not res!2129174)) b!4987658))

(assert (= (and b!4987658 (not res!2129176)) b!4987653))

(assert (= (and b!4987653 (not res!2129173)) b!4987656))

(assert (= (and b!4987656 (not res!2129177)) b!4987647))

(assert (= (and b!4987647 (not res!2129169)) b!4987652))

(assert (= b!4987659 b!4987660))

(assert (= start!527124 b!4987659))

(assert (= start!527124 b!4987654))

(assert (= start!527124 b!4987646))

(declare-fun m!6019462 () Bool)

(assert (=> b!4987645 m!6019462))

(declare-fun m!6019464 () Bool)

(assert (=> b!4987645 m!6019464))

(declare-fun m!6019466 () Bool)

(assert (=> b!4987645 m!6019466))

(declare-fun m!6019468 () Bool)

(assert (=> b!4987645 m!6019468))

(declare-fun m!6019470 () Bool)

(assert (=> b!4987645 m!6019470))

(assert (=> b!4987645 m!6019468))

(assert (=> b!4987645 m!6019462))

(declare-fun m!6019472 () Bool)

(assert (=> b!4987645 m!6019472))

(declare-fun m!6019474 () Bool)

(assert (=> b!4987645 m!6019474))

(declare-fun m!6019476 () Bool)

(assert (=> b!4987650 m!6019476))

(declare-fun m!6019478 () Bool)

(assert (=> b!4987650 m!6019478))

(declare-fun m!6019480 () Bool)

(assert (=> b!4987659 m!6019480))

(declare-fun m!6019482 () Bool)

(assert (=> b!4987659 m!6019482))

(declare-fun m!6019484 () Bool)

(assert (=> b!4987656 m!6019484))

(declare-fun m!6019486 () Bool)

(assert (=> b!4987656 m!6019486))

(declare-fun m!6019488 () Bool)

(assert (=> b!4987647 m!6019488))

(declare-fun m!6019490 () Bool)

(assert (=> b!4987654 m!6019490))

(declare-fun m!6019492 () Bool)

(assert (=> b!4987655 m!6019492))

(declare-fun m!6019494 () Bool)

(assert (=> start!527124 m!6019494))

(declare-fun m!6019496 () Bool)

(assert (=> start!527124 m!6019496))

(declare-fun m!6019498 () Bool)

(assert (=> b!4987652 m!6019498))

(declare-fun m!6019500 () Bool)

(assert (=> b!4987657 m!6019500))

(declare-fun m!6019502 () Bool)

(assert (=> b!4987651 m!6019502))

(declare-fun m!6019504 () Bool)

(assert (=> b!4987649 m!6019504))

(declare-fun m!6019506 () Bool)

(assert (=> b!4987649 m!6019506))

(declare-fun m!6019508 () Bool)

(assert (=> b!4987649 m!6019508))

(declare-fun m!6019510 () Bool)

(assert (=> b!4987649 m!6019510))

(declare-fun m!6019512 () Bool)

(assert (=> b!4987649 m!6019512))

(declare-fun m!6019514 () Bool)

(assert (=> b!4987649 m!6019514))

(declare-fun m!6019516 () Bool)

(assert (=> b!4987649 m!6019516))

(declare-fun m!6019518 () Bool)

(assert (=> b!4987649 m!6019518))

(declare-fun m!6019520 () Bool)

(assert (=> b!4987649 m!6019520))

(declare-fun m!6019522 () Bool)

(assert (=> b!4987646 m!6019522))

(declare-fun m!6019524 () Bool)

(assert (=> b!4987648 m!6019524))

(assert (=> b!4987648 m!6019524))

(declare-fun m!6019526 () Bool)

(assert (=> b!4987648 m!6019526))

(declare-fun m!6019528 () Bool)

(assert (=> b!4987648 m!6019528))

(declare-fun m!6019530 () Bool)

(assert (=> b!4987653 m!6019530))

(push 1)

(assert (not b!4987652))

(assert b_and!350007)

(assert (not b!4987647))

(assert (not b!4987651))

(assert (not b_next!133999))

(assert (not b_next!133997))

(assert (not b!4987656))

(assert (not b!4987648))

(assert (not b!4987659))

(assert b_and!350009)

(assert (not b!4987654))

(assert (not b!4987657))

(assert (not b!4987646))

(assert (not b!4987645))

(assert (not b!4987655))

(assert (not b!4987649))

(assert (not start!527124))

(assert (not b!4987650))

(assert (not b!4987653))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350009)

(assert b_and!350007)

(assert (not b_next!133999))

(assert (not b_next!133997))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1606112 () Bool)

(declare-fun isBalanced!4243 (Conc!15229) Bool)

(assert (=> d!1606112 (= (inv!75578 totalInput!520) (isBalanced!4243 (c!851109 totalInput!520)))))

(declare-fun bs!1184747 () Bool)

(assert (= bs!1184747 d!1606112))

(declare-fun m!6019602 () Bool)

(assert (=> bs!1184747 m!6019602))

(assert (=> start!527124 d!1606112))

(declare-fun d!1606114 () Bool)

(assert (=> d!1606114 (= (inv!75578 input!1580) (isBalanced!4243 (c!851109 input!1580)))))

(declare-fun bs!1184748 () Bool)

(assert (= bs!1184748 d!1606114))

(declare-fun m!6019604 () Bool)

(assert (=> bs!1184748 m!6019604))

(assert (=> start!527124 d!1606114))

(declare-fun d!1606116 () Bool)

(declare-fun list!18509 (Conc!15229) List!57750)

(assert (=> d!1606116 (= (list!18507 lt!2061644) (list!18509 (c!851109 lt!2061644)))))

(declare-fun bs!1184749 () Bool)

(assert (= bs!1184749 d!1606116))

(declare-fun m!6019606 () Bool)

(assert (=> bs!1184749 m!6019606))

(assert (=> b!4987653 d!1606116))

(declare-fun b!4987753 () Bool)

(declare-fun e!3117240 () Bool)

(declare-fun lt!2061705 () Bool)

(assert (=> b!4987753 (= e!3117240 (not lt!2061705))))

(declare-fun b!4987754 () Bool)

(declare-fun e!3117241 () Bool)

(declare-fun head!10707 (List!57750) C!27670)

(assert (=> b!4987754 (= e!3117241 (not (= (head!10707 (_1!34643 lt!2061645)) (c!851108 (regex!8477 rule!200)))))))

(declare-fun b!4987755 () Bool)

(declare-fun res!2129237 () Bool)

(declare-fun e!3117242 () Bool)

(assert (=> b!4987755 (=> (not res!2129237) (not e!3117242))))

(declare-fun call!348120 () Bool)

(assert (=> b!4987755 (= res!2129237 (not call!348120))))

(declare-fun b!4987756 () Bool)

(declare-fun e!3117245 () Bool)

(assert (=> b!4987756 (= e!3117245 e!3117241)))

(declare-fun res!2129239 () Bool)

(assert (=> b!4987756 (=> res!2129239 e!3117241)))

(assert (=> b!4987756 (= res!2129239 call!348120)))

(declare-fun b!4987757 () Bool)

(declare-fun e!3117246 () Bool)

(declare-fun derivativeStep!3958 (Regex!13710 C!27670) Regex!13710)

(declare-fun tail!9840 (List!57750) List!57750)

(assert (=> b!4987757 (= e!3117246 (matchR!6702 (derivativeStep!3958 (regex!8477 rule!200) (head!10707 (_1!34643 lt!2061645))) (tail!9840 (_1!34643 lt!2061645))))))

(declare-fun d!1606118 () Bool)

(declare-fun e!3117244 () Bool)

(assert (=> d!1606118 e!3117244))

(declare-fun c!851120 () Bool)

(assert (=> d!1606118 (= c!851120 (is-EmptyExpr!13710 (regex!8477 rule!200)))))

(assert (=> d!1606118 (= lt!2061705 e!3117246)))

(declare-fun c!851119 () Bool)

(assert (=> d!1606118 (= c!851119 (isEmpty!31184 (_1!34643 lt!2061645)))))

(declare-fun validRegex!6009 (Regex!13710) Bool)

(assert (=> d!1606118 (validRegex!6009 (regex!8477 rule!200))))

(assert (=> d!1606118 (= (matchR!6702 (regex!8477 rule!200) (_1!34643 lt!2061645)) lt!2061705)))

(declare-fun b!4987758 () Bool)

(assert (=> b!4987758 (= e!3117244 (= lt!2061705 call!348120))))

(declare-fun b!4987759 () Bool)

(declare-fun res!2129241 () Bool)

(declare-fun e!3117243 () Bool)

(assert (=> b!4987759 (=> res!2129241 e!3117243)))

(assert (=> b!4987759 (= res!2129241 e!3117242)))

(declare-fun res!2129240 () Bool)

(assert (=> b!4987759 (=> (not res!2129240) (not e!3117242))))

(assert (=> b!4987759 (= res!2129240 lt!2061705)))

(declare-fun bm!348115 () Bool)

(assert (=> bm!348115 (= call!348120 (isEmpty!31184 (_1!34643 lt!2061645)))))

(declare-fun b!4987760 () Bool)

(assert (=> b!4987760 (= e!3117244 e!3117240)))

(declare-fun c!851121 () Bool)

(assert (=> b!4987760 (= c!851121 (is-EmptyLang!13710 (regex!8477 rule!200)))))

(declare-fun b!4987761 () Bool)

(assert (=> b!4987761 (= e!3117243 e!3117245)))

(declare-fun res!2129234 () Bool)

(assert (=> b!4987761 (=> (not res!2129234) (not e!3117245))))

(assert (=> b!4987761 (= res!2129234 (not lt!2061705))))

(declare-fun b!4987762 () Bool)

(assert (=> b!4987762 (= e!3117242 (= (head!10707 (_1!34643 lt!2061645)) (c!851108 (regex!8477 rule!200))))))

(declare-fun b!4987763 () Bool)

(declare-fun res!2129235 () Bool)

(assert (=> b!4987763 (=> res!2129235 e!3117241)))

(assert (=> b!4987763 (= res!2129235 (not (isEmpty!31184 (tail!9840 (_1!34643 lt!2061645)))))))

(declare-fun b!4987764 () Bool)

(declare-fun nullable!4660 (Regex!13710) Bool)

(assert (=> b!4987764 (= e!3117246 (nullable!4660 (regex!8477 rule!200)))))

(declare-fun b!4987765 () Bool)

(declare-fun res!2129236 () Bool)

(assert (=> b!4987765 (=> res!2129236 e!3117243)))

(assert (=> b!4987765 (= res!2129236 (not (is-ElementMatch!13710 (regex!8477 rule!200))))))

(assert (=> b!4987765 (= e!3117240 e!3117243)))

(declare-fun b!4987766 () Bool)

(declare-fun res!2129238 () Bool)

(assert (=> b!4987766 (=> (not res!2129238) (not e!3117242))))

(assert (=> b!4987766 (= res!2129238 (isEmpty!31184 (tail!9840 (_1!34643 lt!2061645))))))

(assert (= (and d!1606118 c!851119) b!4987764))

(assert (= (and d!1606118 (not c!851119)) b!4987757))

(assert (= (and d!1606118 c!851120) b!4987758))

(assert (= (and d!1606118 (not c!851120)) b!4987760))

(assert (= (and b!4987760 c!851121) b!4987753))

(assert (= (and b!4987760 (not c!851121)) b!4987765))

(assert (= (and b!4987765 (not res!2129236)) b!4987759))

(assert (= (and b!4987759 res!2129240) b!4987755))

(assert (= (and b!4987755 res!2129237) b!4987766))

(assert (= (and b!4987766 res!2129238) b!4987762))

(assert (= (and b!4987759 (not res!2129241)) b!4987761))

(assert (= (and b!4987761 res!2129234) b!4987756))

(assert (= (and b!4987756 (not res!2129239)) b!4987763))

(assert (= (and b!4987763 (not res!2129235)) b!4987754))

(assert (= (or b!4987758 b!4987755 b!4987756) bm!348115))

(declare-fun m!6019608 () Bool)

(assert (=> b!4987762 m!6019608))

(assert (=> b!4987757 m!6019608))

(assert (=> b!4987757 m!6019608))

(declare-fun m!6019610 () Bool)

(assert (=> b!4987757 m!6019610))

(declare-fun m!6019612 () Bool)

(assert (=> b!4987757 m!6019612))

(assert (=> b!4987757 m!6019610))

(assert (=> b!4987757 m!6019612))

(declare-fun m!6019614 () Bool)

(assert (=> b!4987757 m!6019614))

(assert (=> b!4987766 m!6019612))

(assert (=> b!4987766 m!6019612))

(declare-fun m!6019616 () Bool)

(assert (=> b!4987766 m!6019616))

(assert (=> b!4987754 m!6019608))

(assert (=> bm!348115 m!6019464))

(declare-fun m!6019618 () Bool)

(assert (=> b!4987764 m!6019618))

(assert (=> b!4987763 m!6019612))

(assert (=> b!4987763 m!6019612))

(assert (=> b!4987763 m!6019616))

(assert (=> d!1606118 m!6019464))

(declare-fun m!6019620 () Bool)

(assert (=> d!1606118 m!6019620))

(assert (=> b!4987655 d!1606118))

(declare-fun d!1606120 () Bool)

(declare-fun c!851124 () Bool)

(assert (=> d!1606120 (= c!851124 (is-Node!15229 (c!851109 totalInput!520)))))

(declare-fun e!3117251 () Bool)

(assert (=> d!1606120 (= (inv!75576 (c!851109 totalInput!520)) e!3117251)))

(declare-fun b!4987773 () Bool)

(declare-fun inv!75584 (Conc!15229) Bool)

(assert (=> b!4987773 (= e!3117251 (inv!75584 (c!851109 totalInput!520)))))

(declare-fun b!4987774 () Bool)

(declare-fun e!3117252 () Bool)

(assert (=> b!4987774 (= e!3117251 e!3117252)))

(declare-fun res!2129244 () Bool)

(assert (=> b!4987774 (= res!2129244 (not (is-Leaf!25293 (c!851109 totalInput!520))))))

(assert (=> b!4987774 (=> res!2129244 e!3117252)))

(declare-fun b!4987775 () Bool)

(declare-fun inv!75585 (Conc!15229) Bool)

(assert (=> b!4987775 (= e!3117252 (inv!75585 (c!851109 totalInput!520)))))

(assert (= (and d!1606120 c!851124) b!4987773))

(assert (= (and d!1606120 (not c!851124)) b!4987774))

(assert (= (and b!4987774 (not res!2129244)) b!4987775))

(declare-fun m!6019622 () Bool)

(assert (=> b!4987773 m!6019622))

(declare-fun m!6019624 () Bool)

(assert (=> b!4987775 m!6019624))

(assert (=> b!4987654 d!1606120))

(declare-fun d!1606122 () Bool)

(declare-fun dynLambda!23485 (Int BalanceConc!29888) TokenValue!8787)

(assert (=> d!1606122 (= (apply!13962 (transformation!8477 rule!200) lt!2061644) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) lt!2061644))))

(declare-fun b_lambda!198433 () Bool)

(assert (=> (not b_lambda!198433) (not d!1606122)))

(declare-fun t!370041 () Bool)

(declare-fun tb!261779 () Bool)

(assert (=> (and b!4987660 (= (toValue!11488 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))) t!370041) tb!261779))

(declare-fun result!327242 () Bool)

(declare-fun inv!21 (TokenValue!8787) Bool)

(assert (=> tb!261779 (= result!327242 (inv!21 (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) lt!2061644)))))

(declare-fun m!6019626 () Bool)

(assert (=> tb!261779 m!6019626))

(assert (=> d!1606122 t!370041))

(declare-fun b_and!350015 () Bool)

(assert (= b_and!350007 (and (=> t!370041 result!327242) b_and!350015)))

(declare-fun m!6019628 () Bool)

(assert (=> d!1606122 m!6019628))

(assert (=> b!4987656 d!1606122))

(declare-fun b!4987784 () Bool)

(declare-fun e!3117260 () Bool)

(assert (=> b!4987784 (= e!3117260 true)))

(declare-fun d!1606124 () Bool)

(assert (=> d!1606124 e!3117260))

(assert (= d!1606124 b!4987784))

(declare-fun order!26659 () Int)

(declare-fun lambda!248103 () Int)

(declare-fun dynLambda!23486 (Int Int) Int)

(assert (=> b!4987784 (< (dynLambda!23479 order!26647 (toValue!11488 (transformation!8477 rule!200))) (dynLambda!23486 order!26659 lambda!248103))))

(assert (=> b!4987784 (< (dynLambda!23481 order!26651 (toChars!11347 (transformation!8477 rule!200))) (dynLambda!23486 order!26659 lambda!248103))))

(assert (=> d!1606124 (= (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) (_1!34645 lt!2061650)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) lt!2061644))))

(declare-fun lt!2061708 () Unit!148786)

(declare-fun Forall2of!498 (Int BalanceConc!29888 BalanceConc!29888) Unit!148786)

(assert (=> d!1606124 (= lt!2061708 (Forall2of!498 lambda!248103 (_1!34645 lt!2061650) lt!2061644))))

(assert (=> d!1606124 (= (list!18507 (_1!34645 lt!2061650)) (list!18507 lt!2061644))))

(assert (=> d!1606124 (= (lemmaEqSameImage!1210 (transformation!8477 rule!200) (_1!34645 lt!2061650) lt!2061644) lt!2061708)))

(declare-fun b_lambda!198435 () Bool)

(assert (=> (not b_lambda!198435) (not d!1606124)))

(declare-fun t!370043 () Bool)

(declare-fun tb!261781 () Bool)

(assert (=> (and b!4987660 (= (toValue!11488 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))) t!370043) tb!261781))

(declare-fun result!327246 () Bool)

(assert (=> tb!261781 (= result!327246 (inv!21 (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) (_1!34645 lt!2061650))))))

(declare-fun m!6019632 () Bool)

(assert (=> tb!261781 m!6019632))

(assert (=> d!1606124 t!370043))

(declare-fun b_and!350017 () Bool)

(assert (= b_and!350015 (and (=> t!370043 result!327246) b_and!350017)))

(declare-fun b_lambda!198437 () Bool)

(assert (=> (not b_lambda!198437) (not d!1606124)))

(assert (=> d!1606124 t!370041))

(declare-fun b_and!350019 () Bool)

(assert (= b_and!350017 (and (=> t!370041 result!327242) b_and!350019)))

(assert (=> d!1606124 m!6019520))

(assert (=> d!1606124 m!6019628))

(assert (=> d!1606124 m!6019530))

(declare-fun m!6019634 () Bool)

(assert (=> d!1606124 m!6019634))

(declare-fun m!6019636 () Bool)

(assert (=> d!1606124 m!6019636))

(assert (=> b!4987656 d!1606124))

(declare-fun b!4987851 () Bool)

(declare-fun e!3117300 () tuple2!62680)

(assert (=> b!4987851 (= e!3117300 (tuple2!62681 Nil!57626 lt!2061649))))

(declare-fun b!4987852 () Bool)

(declare-fun e!3117306 () tuple2!62680)

(declare-fun lt!2061791 () tuple2!62680)

(assert (=> b!4987852 (= e!3117306 lt!2061791)))

(declare-fun b!4987853 () Bool)

(declare-fun e!3117305 () tuple2!62680)

(declare-fun call!348138 () tuple2!62680)

(assert (=> b!4987853 (= e!3117305 call!348138)))

(declare-fun bm!348132 () Bool)

(declare-fun call!348143 () Regex!13710)

(declare-fun call!348141 () C!27670)

(assert (=> bm!348132 (= call!348143 (derivativeStep!3958 (regex!8477 rule!200) call!348141))))

(declare-fun bm!348133 () Bool)

(assert (=> bm!348133 (= call!348141 (head!10707 lt!2061649))))

(declare-fun b!4987854 () Bool)

(declare-fun e!3117299 () tuple2!62680)

(assert (=> b!4987854 (= e!3117300 e!3117299)))

(declare-fun c!851144 () Bool)

(assert (=> b!4987854 (= c!851144 (= (size!38288 Nil!57626) (size!38288 lt!2061649)))))

(declare-fun b!4987855 () Bool)

(declare-fun e!3117301 () tuple2!62680)

(assert (=> b!4987855 (= e!3117301 (tuple2!62681 Nil!57626 Nil!57626))))

(declare-fun d!1606130 () Bool)

(declare-fun e!3117303 () Bool)

(assert (=> d!1606130 e!3117303))

(declare-fun res!2129275 () Bool)

(assert (=> d!1606130 (=> (not res!2129275) (not e!3117303))))

(declare-fun lt!2061790 () tuple2!62680)

(declare-fun ++!12570 (List!57750 List!57750) List!57750)

(assert (=> d!1606130 (= res!2129275 (= (++!12570 (_1!34643 lt!2061790) (_2!34643 lt!2061790)) lt!2061649))))

(assert (=> d!1606130 (= lt!2061790 e!3117300)))

(declare-fun c!851143 () Bool)

(declare-fun lostCause!1167 (Regex!13710) Bool)

(assert (=> d!1606130 (= c!851143 (lostCause!1167 (regex!8477 rule!200)))))

(declare-fun lt!2061801 () Unit!148786)

(declare-fun Unit!148791 () Unit!148786)

(assert (=> d!1606130 (= lt!2061801 Unit!148791)))

(declare-fun getSuffix!3123 (List!57750 List!57750) List!57750)

(assert (=> d!1606130 (= (getSuffix!3123 lt!2061649 Nil!57626) lt!2061649)))

(declare-fun lt!2061797 () Unit!148786)

(declare-fun lt!2061799 () Unit!148786)

(assert (=> d!1606130 (= lt!2061797 lt!2061799)))

(declare-fun lt!2061796 () List!57750)

(assert (=> d!1606130 (= lt!2061649 lt!2061796)))

(declare-fun lemmaSamePrefixThenSameSuffix!2535 (List!57750 List!57750 List!57750 List!57750 List!57750) Unit!148786)

(assert (=> d!1606130 (= lt!2061799 (lemmaSamePrefixThenSameSuffix!2535 Nil!57626 lt!2061649 Nil!57626 lt!2061796 lt!2061649))))

(assert (=> d!1606130 (= lt!2061796 (getSuffix!3123 lt!2061649 Nil!57626))))

(declare-fun lt!2061795 () Unit!148786)

(declare-fun lt!2061806 () Unit!148786)

(assert (=> d!1606130 (= lt!2061795 lt!2061806)))

(declare-fun isPrefix!5283 (List!57750 List!57750) Bool)

(assert (=> d!1606130 (isPrefix!5283 Nil!57626 (++!12570 Nil!57626 lt!2061649))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3381 (List!57750 List!57750) Unit!148786)

(assert (=> d!1606130 (= lt!2061806 (lemmaConcatTwoListThenFirstIsPrefix!3381 Nil!57626 lt!2061649))))

(assert (=> d!1606130 (validRegex!6009 (regex!8477 rule!200))))

(assert (=> d!1606130 (= (findLongestMatchInner!1919 (regex!8477 rule!200) Nil!57626 (size!38288 Nil!57626) lt!2061649 lt!2061649 (size!38288 lt!2061649)) lt!2061790)))

(declare-fun bm!348134 () Bool)

(declare-fun call!348144 () Bool)

(assert (=> bm!348134 (= call!348144 (nullable!4660 (regex!8477 rule!200)))))

(declare-fun b!4987856 () Bool)

(declare-fun e!3117304 () Bool)

(assert (=> b!4987856 (= e!3117304 (>= (size!38288 (_1!34643 lt!2061790)) (size!38288 Nil!57626)))))

(declare-fun b!4987857 () Bool)

(declare-fun c!851147 () Bool)

(assert (=> b!4987857 (= c!851147 call!348144)))

(declare-fun lt!2061800 () Unit!148786)

(declare-fun lt!2061793 () Unit!148786)

(assert (=> b!4987857 (= lt!2061800 lt!2061793)))

(declare-fun lt!2061789 () C!27670)

(declare-fun lt!2061810 () List!57750)

(assert (=> b!4987857 (= (++!12570 (++!12570 Nil!57626 (Cons!57626 lt!2061789 Nil!57626)) lt!2061810) lt!2061649)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1480 (List!57750 C!27670 List!57750 List!57750) Unit!148786)

(assert (=> b!4987857 (= lt!2061793 (lemmaMoveElementToOtherListKeepsConcatEq!1480 Nil!57626 lt!2061789 lt!2061810 lt!2061649))))

(assert (=> b!4987857 (= lt!2061810 (tail!9840 lt!2061649))))

(assert (=> b!4987857 (= lt!2061789 (head!10707 lt!2061649))))

(declare-fun lt!2061807 () Unit!148786)

(declare-fun lt!2061808 () Unit!148786)

(assert (=> b!4987857 (= lt!2061807 lt!2061808)))

(assert (=> b!4987857 (isPrefix!5283 (++!12570 Nil!57626 (Cons!57626 (head!10707 (getSuffix!3123 lt!2061649 Nil!57626)) Nil!57626)) lt!2061649)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!869 (List!57750 List!57750) Unit!148786)

(assert (=> b!4987857 (= lt!2061808 (lemmaAddHeadSuffixToPrefixStillPrefix!869 Nil!57626 lt!2061649))))

(declare-fun lt!2061792 () Unit!148786)

(declare-fun lt!2061788 () Unit!148786)

(assert (=> b!4987857 (= lt!2061792 lt!2061788)))

(assert (=> b!4987857 (= lt!2061788 (lemmaAddHeadSuffixToPrefixStillPrefix!869 Nil!57626 lt!2061649))))

(declare-fun lt!2061802 () List!57750)

(assert (=> b!4987857 (= lt!2061802 (++!12570 Nil!57626 (Cons!57626 (head!10707 lt!2061649) Nil!57626)))))

(declare-fun lt!2061783 () Unit!148786)

(declare-fun e!3117302 () Unit!148786)

(assert (=> b!4987857 (= lt!2061783 e!3117302)))

(declare-fun c!851148 () Bool)

(assert (=> b!4987857 (= c!851148 (= (size!38288 Nil!57626) (size!38288 lt!2061649)))))

(declare-fun lt!2061803 () Unit!148786)

(declare-fun lt!2061785 () Unit!148786)

(assert (=> b!4987857 (= lt!2061803 lt!2061785)))

(assert (=> b!4987857 (<= (size!38288 Nil!57626) (size!38288 lt!2061649))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!795 (List!57750 List!57750) Unit!148786)

(assert (=> b!4987857 (= lt!2061785 (lemmaIsPrefixThenSmallerEqSize!795 Nil!57626 lt!2061649))))

(assert (=> b!4987857 (= e!3117299 e!3117305)))

(declare-fun b!4987858 () Bool)

(declare-fun c!851145 () Bool)

(assert (=> b!4987858 (= c!851145 call!348144)))

(declare-fun lt!2061805 () Unit!148786)

(declare-fun lt!2061786 () Unit!148786)

(assert (=> b!4987858 (= lt!2061805 lt!2061786)))

(assert (=> b!4987858 (= lt!2061649 Nil!57626)))

(declare-fun call!348142 () Unit!148786)

(assert (=> b!4987858 (= lt!2061786 call!348142)))

(declare-fun lt!2061804 () Unit!148786)

(declare-fun lt!2061794 () Unit!148786)

(assert (=> b!4987858 (= lt!2061804 lt!2061794)))

(declare-fun call!348139 () Bool)

(assert (=> b!4987858 call!348139))

(declare-fun call!348140 () Unit!148786)

(assert (=> b!4987858 (= lt!2061794 call!348140)))

(assert (=> b!4987858 (= e!3117299 e!3117301)))

(declare-fun b!4987859 () Bool)

(declare-fun Unit!148792 () Unit!148786)

(assert (=> b!4987859 (= e!3117302 Unit!148792)))

(declare-fun lt!2061787 () Unit!148786)

(assert (=> b!4987859 (= lt!2061787 call!348140)))

(assert (=> b!4987859 call!348139))

(declare-fun lt!2061809 () Unit!148786)

(assert (=> b!4987859 (= lt!2061809 lt!2061787)))

(declare-fun lt!2061798 () Unit!148786)

(assert (=> b!4987859 (= lt!2061798 call!348142)))

(assert (=> b!4987859 (= lt!2061649 Nil!57626)))

(declare-fun lt!2061784 () Unit!148786)

(assert (=> b!4987859 (= lt!2061784 lt!2061798)))

(assert (=> b!4987859 false))

(declare-fun bm!348135 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1243 (List!57750 List!57750 List!57750) Unit!148786)

(assert (=> bm!348135 (= call!348142 (lemmaIsPrefixSameLengthThenSameList!1243 lt!2061649 Nil!57626 lt!2061649))))

(declare-fun b!4987860 () Bool)

(declare-fun Unit!148793 () Unit!148786)

(assert (=> b!4987860 (= e!3117302 Unit!148793)))

(declare-fun bm!348136 () Bool)

(assert (=> bm!348136 (= call!348139 (isPrefix!5283 lt!2061649 lt!2061649))))

(declare-fun b!4987861 () Bool)

(assert (=> b!4987861 (= e!3117306 (tuple2!62681 Nil!57626 lt!2061649))))

(declare-fun b!4987862 () Bool)

(assert (=> b!4987862 (= e!3117301 (tuple2!62681 Nil!57626 lt!2061649))))

(declare-fun b!4987863 () Bool)

(assert (=> b!4987863 (= e!3117305 e!3117306)))

(assert (=> b!4987863 (= lt!2061791 call!348138)))

(declare-fun c!851146 () Bool)

(assert (=> b!4987863 (= c!851146 (isEmpty!31184 (_1!34643 lt!2061791)))))

(declare-fun bm!348137 () Bool)

(declare-fun call!348137 () List!57750)

(assert (=> bm!348137 (= call!348138 (findLongestMatchInner!1919 call!348143 lt!2061802 (+ (size!38288 Nil!57626) 1) call!348137 lt!2061649 (size!38288 lt!2061649)))))

(declare-fun bm!348138 () Bool)

(assert (=> bm!348138 (= call!348137 (tail!9840 lt!2061649))))

(declare-fun bm!348139 () Bool)

(declare-fun lemmaIsPrefixRefl!3606 (List!57750 List!57750) Unit!148786)

(assert (=> bm!348139 (= call!348140 (lemmaIsPrefixRefl!3606 lt!2061649 lt!2061649))))

(declare-fun b!4987864 () Bool)

(assert (=> b!4987864 (= e!3117303 e!3117304)))

(declare-fun res!2129276 () Bool)

(assert (=> b!4987864 (=> res!2129276 e!3117304)))

(assert (=> b!4987864 (= res!2129276 (isEmpty!31184 (_1!34643 lt!2061790)))))

(assert (= (and d!1606130 c!851143) b!4987851))

(assert (= (and d!1606130 (not c!851143)) b!4987854))

(assert (= (and b!4987854 c!851144) b!4987858))

(assert (= (and b!4987854 (not c!851144)) b!4987857))

(assert (= (and b!4987858 c!851145) b!4987855))

(assert (= (and b!4987858 (not c!851145)) b!4987862))

(assert (= (and b!4987857 c!851148) b!4987859))

(assert (= (and b!4987857 (not c!851148)) b!4987860))

(assert (= (and b!4987857 c!851147) b!4987863))

(assert (= (and b!4987857 (not c!851147)) b!4987853))

(assert (= (and b!4987863 c!851146) b!4987861))

(assert (= (and b!4987863 (not c!851146)) b!4987852))

(assert (= (or b!4987863 b!4987853) bm!348133))

(assert (= (or b!4987863 b!4987853) bm!348138))

(assert (= (or b!4987863 b!4987853) bm!348132))

(assert (= (or b!4987863 b!4987853) bm!348137))

(assert (= (or b!4987858 b!4987859) bm!348136))

(assert (= (or b!4987858 b!4987859) bm!348135))

(assert (= (or b!4987858 b!4987859) bm!348139))

(assert (= (or b!4987858 b!4987857) bm!348134))

(assert (= (and d!1606130 res!2129275) b!4987864))

(assert (= (and b!4987864 (not res!2129276)) b!4987856))

(declare-fun m!6019652 () Bool)

(assert (=> bm!348132 m!6019652))

(assert (=> bm!348134 m!6019618))

(declare-fun m!6019654 () Bool)

(assert (=> bm!348139 m!6019654))

(assert (=> bm!348137 m!6019462))

(declare-fun m!6019656 () Bool)

(assert (=> bm!348137 m!6019656))

(declare-fun m!6019658 () Bool)

(assert (=> bm!348133 m!6019658))

(declare-fun m!6019660 () Bool)

(assert (=> bm!348135 m!6019660))

(declare-fun m!6019662 () Bool)

(assert (=> bm!348136 m!6019662))

(declare-fun m!6019664 () Bool)

(assert (=> bm!348138 m!6019664))

(declare-fun m!6019666 () Bool)

(assert (=> b!4987864 m!6019666))

(declare-fun m!6019668 () Bool)

(assert (=> b!4987857 m!6019668))

(assert (=> b!4987857 m!6019658))

(declare-fun m!6019670 () Bool)

(assert (=> b!4987857 m!6019670))

(declare-fun m!6019672 () Bool)

(assert (=> b!4987857 m!6019672))

(declare-fun m!6019674 () Bool)

(assert (=> b!4987857 m!6019674))

(assert (=> b!4987857 m!6019462))

(declare-fun m!6019676 () Bool)

(assert (=> b!4987857 m!6019676))

(assert (=> b!4987857 m!6019664))

(declare-fun m!6019678 () Bool)

(assert (=> b!4987857 m!6019678))

(declare-fun m!6019680 () Bool)

(assert (=> b!4987857 m!6019680))

(assert (=> b!4987857 m!6019670))

(assert (=> b!4987857 m!6019674))

(declare-fun m!6019684 () Bool)

(assert (=> b!4987857 m!6019684))

(assert (=> b!4987857 m!6019468))

(declare-fun m!6019686 () Bool)

(assert (=> b!4987857 m!6019686))

(assert (=> b!4987857 m!6019678))

(declare-fun m!6019690 () Bool)

(assert (=> b!4987857 m!6019690))

(declare-fun m!6019692 () Bool)

(assert (=> b!4987863 m!6019692))

(assert (=> d!1606130 m!6019620))

(declare-fun m!6019694 () Bool)

(assert (=> d!1606130 m!6019694))

(declare-fun m!6019696 () Bool)

(assert (=> d!1606130 m!6019696))

(assert (=> d!1606130 m!6019674))

(assert (=> d!1606130 m!6019694))

(declare-fun m!6019700 () Bool)

(assert (=> d!1606130 m!6019700))

(declare-fun m!6019702 () Bool)

(assert (=> d!1606130 m!6019702))

(declare-fun m!6019704 () Bool)

(assert (=> d!1606130 m!6019704))

(declare-fun m!6019708 () Bool)

(assert (=> d!1606130 m!6019708))

(declare-fun m!6019710 () Bool)

(assert (=> b!4987856 m!6019710))

(assert (=> b!4987856 m!6019468))

(assert (=> b!4987645 d!1606130))

(declare-fun d!1606140 () Bool)

(declare-fun lt!2061813 () Int)

(assert (=> d!1606140 (>= lt!2061813 0)))

(declare-fun e!3117309 () Int)

(assert (=> d!1606140 (= lt!2061813 e!3117309)))

(declare-fun c!851151 () Bool)

(assert (=> d!1606140 (= c!851151 (is-Nil!57626 lt!2061649))))

(assert (=> d!1606140 (= (size!38288 lt!2061649) lt!2061813)))

(declare-fun b!4987869 () Bool)

(assert (=> b!4987869 (= e!3117309 0)))

(declare-fun b!4987870 () Bool)

(assert (=> b!4987870 (= e!3117309 (+ 1 (size!38288 (t!370036 lt!2061649))))))

(assert (= (and d!1606140 c!851151) b!4987869))

(assert (= (and d!1606140 (not c!851151)) b!4987870))

(declare-fun m!6019738 () Bool)

(assert (=> b!4987870 m!6019738))

(assert (=> b!4987645 d!1606140))

(declare-fun d!1606142 () Bool)

(declare-fun e!3117312 () Bool)

(assert (=> d!1606142 e!3117312))

(declare-fun res!2129279 () Bool)

(assert (=> d!1606142 (=> res!2129279 e!3117312)))

(assert (=> d!1606142 (= res!2129279 (isEmpty!31184 (_1!34643 (findLongestMatchInner!1919 (regex!8477 rule!200) Nil!57626 (size!38288 Nil!57626) lt!2061649 lt!2061649 (size!38288 lt!2061649)))))))

(declare-fun lt!2061820 () Unit!148786)

(declare-fun choose!36874 (Regex!13710 List!57750) Unit!148786)

(assert (=> d!1606142 (= lt!2061820 (choose!36874 (regex!8477 rule!200) lt!2061649))))

(assert (=> d!1606142 (validRegex!6009 (regex!8477 rule!200))))

(assert (=> d!1606142 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1880 (regex!8477 rule!200) lt!2061649) lt!2061820)))

(declare-fun b!4987873 () Bool)

(assert (=> b!4987873 (= e!3117312 (matchR!6702 (regex!8477 rule!200) (_1!34643 (findLongestMatchInner!1919 (regex!8477 rule!200) Nil!57626 (size!38288 Nil!57626) lt!2061649 lt!2061649 (size!38288 lt!2061649)))))))

(assert (= (and d!1606142 (not res!2129279)) b!4987873))

(declare-fun m!6019754 () Bool)

(assert (=> d!1606142 m!6019754))

(assert (=> d!1606142 m!6019462))

(assert (=> d!1606142 m!6019468))

(assert (=> d!1606142 m!6019462))

(assert (=> d!1606142 m!6019472))

(assert (=> d!1606142 m!6019468))

(assert (=> d!1606142 m!6019620))

(declare-fun m!6019756 () Bool)

(assert (=> d!1606142 m!6019756))

(assert (=> b!4987873 m!6019468))

(assert (=> b!4987873 m!6019462))

(assert (=> b!4987873 m!6019468))

(assert (=> b!4987873 m!6019462))

(assert (=> b!4987873 m!6019472))

(declare-fun m!6019758 () Bool)

(assert (=> b!4987873 m!6019758))

(assert (=> b!4987645 d!1606142))

(declare-fun d!1606154 () Bool)

(declare-fun lt!2061821 () Int)

(assert (=> d!1606154 (>= lt!2061821 0)))

(declare-fun e!3117313 () Int)

(assert (=> d!1606154 (= lt!2061821 e!3117313)))

(declare-fun c!851152 () Bool)

(assert (=> d!1606154 (= c!851152 (is-Nil!57626 Nil!57626))))

(assert (=> d!1606154 (= (size!38288 Nil!57626) lt!2061821)))

(declare-fun b!4987874 () Bool)

(assert (=> b!4987874 (= e!3117313 0)))

(declare-fun b!4987875 () Bool)

(assert (=> b!4987875 (= e!3117313 (+ 1 (size!38288 (t!370036 Nil!57626))))))

(assert (= (and d!1606154 c!851152) b!4987874))

(assert (= (and d!1606154 (not c!851152)) b!4987875))

(declare-fun m!6019760 () Bool)

(assert (=> b!4987875 m!6019760))

(assert (=> b!4987645 d!1606154))

(declare-fun d!1606156 () Bool)

(declare-fun e!3117316 () Bool)

(assert (=> d!1606156 e!3117316))

(declare-fun res!2129282 () Bool)

(assert (=> d!1606156 (=> (not res!2129282) (not e!3117316))))

(assert (=> d!1606156 (= res!2129282 (semiInverseModEq!3770 (toChars!11347 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))))))

(declare-fun Unit!148794 () Unit!148786)

(assert (=> d!1606156 (= (lemmaInv!1396 (transformation!8477 rule!200)) Unit!148794)))

(declare-fun b!4987878 () Bool)

(declare-fun equivClasses!3589 (Int Int) Bool)

(assert (=> b!4987878 (= e!3117316 (equivClasses!3589 (toChars!11347 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))))))

(assert (= (and d!1606156 res!2129282) b!4987878))

(assert (=> d!1606156 m!6019470))

(declare-fun m!6019764 () Bool)

(assert (=> b!4987878 m!6019764))

(assert (=> b!4987645 d!1606156))

(declare-fun d!1606160 () Bool)

(assert (=> d!1606160 (= (isEmpty!31184 (_1!34643 lt!2061645)) (is-Nil!57626 (_1!34643 lt!2061645)))))

(assert (=> b!4987645 d!1606160))

(declare-fun bs!1184760 () Bool)

(declare-fun d!1606162 () Bool)

(assert (= bs!1184760 (and d!1606162 b!4987657)))

(declare-fun lambda!248106 () Int)

(assert (=> bs!1184760 (= lambda!248106 lambda!248093)))

(assert (=> d!1606162 true))

(assert (=> d!1606162 (< (dynLambda!23481 order!26651 (toChars!11347 (transformation!8477 rule!200))) (dynLambda!23480 order!26649 lambda!248106))))

(assert (=> d!1606162 true))

(assert (=> d!1606162 (< (dynLambda!23479 order!26647 (toValue!11488 (transformation!8477 rule!200))) (dynLambda!23480 order!26649 lambda!248106))))

(assert (=> d!1606162 (= (semiInverseModEq!3770 (toChars!11347 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))) (Forall!1825 lambda!248106))))

(declare-fun bs!1184761 () Bool)

(assert (= bs!1184761 d!1606162))

(declare-fun m!6019770 () Bool)

(assert (=> bs!1184761 m!6019770))

(assert (=> b!4987645 d!1606162))

(declare-fun d!1606170 () Bool)

(assert (=> d!1606170 (= (get!20054 lt!2061647) (v!50561 lt!2061647))))

(assert (=> b!4987647 d!1606170))

(declare-fun d!1606172 () Bool)

(declare-fun choose!36875 (Int) Bool)

(assert (=> d!1606172 (= (Forall!1825 lambda!248093) (choose!36875 lambda!248093))))

(declare-fun bs!1184762 () Bool)

(assert (= bs!1184762 d!1606172))

(declare-fun m!6019772 () Bool)

(assert (=> bs!1184762 m!6019772))

(assert (=> b!4987657 d!1606172))

(declare-fun d!1606174 () Bool)

(declare-fun c!851153 () Bool)

(assert (=> d!1606174 (= c!851153 (is-Node!15229 (c!851109 input!1580)))))

(declare-fun e!3117319 () Bool)

(assert (=> d!1606174 (= (inv!75576 (c!851109 input!1580)) e!3117319)))

(declare-fun b!4987887 () Bool)

(assert (=> b!4987887 (= e!3117319 (inv!75584 (c!851109 input!1580)))))

(declare-fun b!4987888 () Bool)

(declare-fun e!3117320 () Bool)

(assert (=> b!4987888 (= e!3117319 e!3117320)))

(declare-fun res!2129287 () Bool)

(assert (=> b!4987888 (= res!2129287 (not (is-Leaf!25293 (c!851109 input!1580))))))

(assert (=> b!4987888 (=> res!2129287 e!3117320)))

(declare-fun b!4987889 () Bool)

(assert (=> b!4987889 (= e!3117320 (inv!75585 (c!851109 input!1580)))))

(assert (= (and d!1606174 c!851153) b!4987887))

(assert (= (and d!1606174 (not c!851153)) b!4987888))

(assert (= (and b!4987888 (not res!2129287)) b!4987889))

(declare-fun m!6019774 () Bool)

(assert (=> b!4987887 m!6019774))

(declare-fun m!6019776 () Bool)

(assert (=> b!4987889 m!6019776))

(assert (=> b!4987646 d!1606174))

(declare-fun d!1606176 () Bool)

(assert (=> d!1606176 (= (inv!75573 (tag!9341 rule!200)) (= (mod (str.len (value!270988 (tag!9341 rule!200))) 2) 0))))

(assert (=> b!4987659 d!1606176))

(declare-fun d!1606182 () Bool)

(declare-fun res!2129292 () Bool)

(declare-fun e!3117324 () Bool)

(assert (=> d!1606182 (=> (not res!2129292) (not e!3117324))))

(assert (=> d!1606182 (= res!2129292 (semiInverseModEq!3770 (toChars!11347 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))))))

(assert (=> d!1606182 (= (inv!75579 (transformation!8477 rule!200)) e!3117324)))

(declare-fun b!4987894 () Bool)

(assert (=> b!4987894 (= e!3117324 (equivClasses!3589 (toChars!11347 (transformation!8477 rule!200)) (toValue!11488 (transformation!8477 rule!200))))))

(assert (= (and d!1606182 res!2129292) b!4987894))

(assert (=> d!1606182 m!6019470))

(assert (=> b!4987894 m!6019764))

(assert (=> b!4987659 d!1606182))

(declare-fun d!1606184 () Bool)

(declare-fun e!3117329 () Bool)

(assert (=> d!1606184 e!3117329))

(declare-fun res!2129299 () Bool)

(assert (=> d!1606184 (=> res!2129299 e!3117329)))

(declare-fun lt!2061824 () Bool)

(assert (=> d!1606184 (= res!2129299 (not lt!2061824))))

(declare-fun drop!2391 (List!57750 Int) List!57750)

(assert (=> d!1606184 (= lt!2061824 (= lt!2061649 (drop!2391 (list!18507 totalInput!520) (- (size!38288 (list!18507 totalInput!520)) (size!38288 lt!2061649)))))))

(assert (=> d!1606184 (= (isSuffix!1276 lt!2061649 (list!18507 totalInput!520)) lt!2061824)))

(declare-fun b!4987901 () Bool)

(assert (=> b!4987901 (= e!3117329 (>= (size!38288 (list!18507 totalInput!520)) (size!38288 lt!2061649)))))

(assert (= (and d!1606184 (not res!2129299)) b!4987901))

(assert (=> d!1606184 m!6019524))

(declare-fun m!6019784 () Bool)

(assert (=> d!1606184 m!6019784))

(assert (=> d!1606184 m!6019462))

(assert (=> d!1606184 m!6019524))

(declare-fun m!6019786 () Bool)

(assert (=> d!1606184 m!6019786))

(assert (=> b!4987901 m!6019524))

(assert (=> b!4987901 m!6019784))

(assert (=> b!4987901 m!6019462))

(assert (=> b!4987648 d!1606184))

(declare-fun d!1606186 () Bool)

(assert (=> d!1606186 (= (list!18507 totalInput!520) (list!18509 (c!851109 totalInput!520)))))

(declare-fun bs!1184764 () Bool)

(assert (= bs!1184764 d!1606186))

(declare-fun m!6019788 () Bool)

(assert (=> bs!1184764 m!6019788))

(assert (=> b!4987648 d!1606186))

(declare-fun d!1606188 () Bool)

(assert (=> d!1606188 (= (list!18507 input!1580) (list!18509 (c!851109 input!1580)))))

(declare-fun bs!1184765 () Bool)

(assert (= bs!1184765 d!1606188))

(declare-fun m!6019790 () Bool)

(assert (=> bs!1184765 m!6019790))

(assert (=> b!4987648 d!1606188))

(declare-fun d!1606190 () Bool)

(declare-fun lt!2061827 () Int)

(assert (=> d!1606190 (= lt!2061827 (size!38288 (list!18507 (_1!34645 lt!2061650))))))

(declare-fun size!38294 (Conc!15229) Int)

(assert (=> d!1606190 (= lt!2061827 (size!38294 (c!851109 (_1!34645 lt!2061650))))))

(assert (=> d!1606190 (= (size!38290 (_1!34645 lt!2061650)) lt!2061827)))

(declare-fun bs!1184766 () Bool)

(assert (= bs!1184766 d!1606190))

(assert (=> bs!1184766 m!6019520))

(assert (=> bs!1184766 m!6019520))

(declare-fun m!6019798 () Bool)

(assert (=> bs!1184766 m!6019798))

(declare-fun m!6019802 () Bool)

(assert (=> bs!1184766 m!6019802))

(assert (=> b!4987649 d!1606190))

(declare-fun d!1606192 () Bool)

(declare-fun isEmpty!31188 (Option!14565) Bool)

(assert (=> d!1606192 (= (isDefined!11472 lt!2061647) (not (isEmpty!31188 lt!2061647)))))

(declare-fun bs!1184767 () Bool)

(assert (= bs!1184767 d!1606192))

(declare-fun m!6019808 () Bool)

(assert (=> bs!1184767 m!6019808))

(assert (=> b!4987649 d!1606192))

(declare-fun d!1606196 () Bool)

(declare-fun dynLambda!23487 (Int BalanceConc!29888) Bool)

(assert (=> d!1606196 (dynLambda!23487 lambda!248093 lt!2061644)))

(declare-fun lt!2061830 () Unit!148786)

(declare-fun choose!36876 (Int BalanceConc!29888) Unit!148786)

(assert (=> d!1606196 (= lt!2061830 (choose!36876 lambda!248093 lt!2061644))))

(assert (=> d!1606196 (Forall!1825 lambda!248093)))

(assert (=> d!1606196 (= (ForallOf!1284 lambda!248093 lt!2061644) lt!2061830)))

(declare-fun b_lambda!198447 () Bool)

(assert (=> (not b_lambda!198447) (not d!1606196)))

(declare-fun bs!1184768 () Bool)

(assert (= bs!1184768 d!1606196))

(declare-fun m!6019810 () Bool)

(assert (=> bs!1184768 m!6019810))

(declare-fun m!6019812 () Bool)

(assert (=> bs!1184768 m!6019812))

(assert (=> bs!1184768 m!6019500))

(assert (=> b!4987649 d!1606196))

(declare-fun d!1606200 () Bool)

(declare-fun fromListB!2761 (List!57750) BalanceConc!29888)

(assert (=> d!1606200 (= (seqFromList!6096 lt!2061651) (fromListB!2761 lt!2061651))))

(declare-fun bs!1184769 () Bool)

(assert (= bs!1184769 d!1606200))

(declare-fun m!6019814 () Bool)

(assert (=> bs!1184769 m!6019814))

(assert (=> b!4987649 d!1606200))

(declare-fun b!4987944 () Bool)

(declare-fun e!3117356 () Bool)

(assert (=> b!4987944 (= e!3117356 (matchR!6702 (regex!8477 rule!200) (_1!34643 (findLongestMatchInner!1919 (regex!8477 rule!200) Nil!57626 (size!38288 Nil!57626) lt!2061649 lt!2061649 (size!38288 lt!2061649)))))))

(declare-fun b!4987945 () Bool)

(declare-fun res!2129328 () Bool)

(declare-fun e!3117358 () Bool)

(assert (=> b!4987945 (=> (not res!2129328) (not e!3117358))))

(declare-fun lt!2061849 () Option!14565)

(assert (=> b!4987945 (= res!2129328 (< (size!38288 (_2!34644 (get!20054 lt!2061849))) (size!38288 lt!2061649)))))

(declare-fun b!4987946 () Bool)

(declare-fun res!2129326 () Bool)

(assert (=> b!4987946 (=> (not res!2129326) (not e!3117358))))

(assert (=> b!4987946 (= res!2129326 (= (value!271014 (_1!34644 (get!20054 lt!2061849))) (apply!13962 (transformation!8477 (rule!11745 (_1!34644 (get!20054 lt!2061849)))) (seqFromList!6096 (originalCharacters!8734 (_1!34644 (get!20054 lt!2061849)))))))))

(declare-fun b!4987947 () Bool)

(declare-fun res!2129325 () Bool)

(assert (=> b!4987947 (=> (not res!2129325) (not e!3117358))))

(assert (=> b!4987947 (= res!2129325 (= (rule!11745 (_1!34644 (get!20054 lt!2061849))) rule!200))))

(declare-fun b!4987948 () Bool)

(assert (=> b!4987948 (= e!3117358 (= (size!38289 (_1!34644 (get!20054 lt!2061849))) (size!38288 (originalCharacters!8734 (_1!34644 (get!20054 lt!2061849))))))))

(declare-fun b!4987949 () Bool)

(declare-fun e!3117355 () Option!14565)

(declare-fun lt!2061852 () tuple2!62680)

(assert (=> b!4987949 (= e!3117355 (Some!14564 (tuple2!62683 (Token!15407 (apply!13962 (transformation!8477 rule!200) (seqFromList!6096 (_1!34643 lt!2061852))) rule!200 (size!38290 (seqFromList!6096 (_1!34643 lt!2061852))) (_1!34643 lt!2061852)) (_2!34643 lt!2061852))))))

(declare-fun lt!2061848 () Unit!148786)

(assert (=> b!4987949 (= lt!2061848 (longestMatchIsAcceptedByMatchOrIsEmpty!1880 (regex!8477 rule!200) lt!2061649))))

(declare-fun res!2129331 () Bool)

(assert (=> b!4987949 (= res!2129331 (isEmpty!31184 (_1!34643 (findLongestMatchInner!1919 (regex!8477 rule!200) Nil!57626 (size!38288 Nil!57626) lt!2061649 lt!2061649 (size!38288 lt!2061649)))))))

(assert (=> b!4987949 (=> res!2129331 e!3117356)))

(assert (=> b!4987949 e!3117356))

(declare-fun lt!2061851 () Unit!148786)

(assert (=> b!4987949 (= lt!2061851 lt!2061848)))

(declare-fun lt!2061850 () Unit!148786)

(declare-fun lemmaSemiInverse!2631 (TokenValueInjection!16882 BalanceConc!29888) Unit!148786)

(assert (=> b!4987949 (= lt!2061850 (lemmaSemiInverse!2631 (transformation!8477 rule!200) (seqFromList!6096 (_1!34643 lt!2061852))))))

(declare-fun b!4987950 () Bool)

(declare-fun res!2129329 () Bool)

(assert (=> b!4987950 (=> (not res!2129329) (not e!3117358))))

(declare-fun charsOf!5468 (Token!15406) BalanceConc!29888)

(assert (=> b!4987950 (= res!2129329 (= (++!12570 (list!18507 (charsOf!5468 (_1!34644 (get!20054 lt!2061849)))) (_2!34644 (get!20054 lt!2061849))) lt!2061649))))

(declare-fun d!1606202 () Bool)

(declare-fun e!3117357 () Bool)

(assert (=> d!1606202 e!3117357))

(declare-fun res!2129330 () Bool)

(assert (=> d!1606202 (=> res!2129330 e!3117357)))

(assert (=> d!1606202 (= res!2129330 (isEmpty!31188 lt!2061849))))

(assert (=> d!1606202 (= lt!2061849 e!3117355)))

(declare-fun c!851160 () Bool)

(assert (=> d!1606202 (= c!851160 (isEmpty!31184 (_1!34643 lt!2061852)))))

(declare-fun findLongestMatch!1735 (Regex!13710 List!57750) tuple2!62680)

(assert (=> d!1606202 (= lt!2061852 (findLongestMatch!1735 (regex!8477 rule!200) lt!2061649))))

(assert (=> d!1606202 (ruleValid!3885 thiss!16165 rule!200)))

(assert (=> d!1606202 (= (maxPrefixOneRule!3689 thiss!16165 rule!200 lt!2061649) lt!2061849)))

(declare-fun b!4987951 () Bool)

(assert (=> b!4987951 (= e!3117357 e!3117358)))

(declare-fun res!2129327 () Bool)

(assert (=> b!4987951 (=> (not res!2129327) (not e!3117358))))

(assert (=> b!4987951 (= res!2129327 (matchR!6702 (regex!8477 rule!200) (list!18507 (charsOf!5468 (_1!34644 (get!20054 lt!2061849))))))))

(declare-fun b!4987952 () Bool)

(assert (=> b!4987952 (= e!3117355 None!14564)))

(assert (= (and d!1606202 c!851160) b!4987952))

(assert (= (and d!1606202 (not c!851160)) b!4987949))

(assert (= (and b!4987949 (not res!2129331)) b!4987944))

(assert (= (and d!1606202 (not res!2129330)) b!4987951))

(assert (= (and b!4987951 res!2129327) b!4987950))

(assert (= (and b!4987950 res!2129329) b!4987945))

(assert (= (and b!4987945 res!2129328) b!4987947))

(assert (= (and b!4987947 res!2129325) b!4987946))

(assert (= (and b!4987946 res!2129326) b!4987948))

(declare-fun m!6019830 () Bool)

(assert (=> d!1606202 m!6019830))

(declare-fun m!6019832 () Bool)

(assert (=> d!1606202 m!6019832))

(declare-fun m!6019834 () Bool)

(assert (=> d!1606202 m!6019834))

(assert (=> d!1606202 m!6019502))

(declare-fun m!6019836 () Bool)

(assert (=> b!4987945 m!6019836))

(declare-fun m!6019838 () Bool)

(assert (=> b!4987945 m!6019838))

(assert (=> b!4987945 m!6019462))

(assert (=> b!4987949 m!6019462))

(declare-fun m!6019840 () Bool)

(assert (=> b!4987949 m!6019840))

(assert (=> b!4987949 m!6019840))

(declare-fun m!6019842 () Bool)

(assert (=> b!4987949 m!6019842))

(assert (=> b!4987949 m!6019840))

(declare-fun m!6019844 () Bool)

(assert (=> b!4987949 m!6019844))

(assert (=> b!4987949 m!6019468))

(assert (=> b!4987949 m!6019754))

(assert (=> b!4987949 m!6019840))

(declare-fun m!6019846 () Bool)

(assert (=> b!4987949 m!6019846))

(assert (=> b!4987949 m!6019468))

(assert (=> b!4987949 m!6019462))

(assert (=> b!4987949 m!6019472))

(assert (=> b!4987949 m!6019474))

(assert (=> b!4987951 m!6019836))

(declare-fun m!6019848 () Bool)

(assert (=> b!4987951 m!6019848))

(assert (=> b!4987951 m!6019848))

(declare-fun m!6019850 () Bool)

(assert (=> b!4987951 m!6019850))

(assert (=> b!4987951 m!6019850))

(declare-fun m!6019852 () Bool)

(assert (=> b!4987951 m!6019852))

(assert (=> b!4987948 m!6019836))

(declare-fun m!6019854 () Bool)

(assert (=> b!4987948 m!6019854))

(assert (=> b!4987947 m!6019836))

(assert (=> b!4987946 m!6019836))

(declare-fun m!6019856 () Bool)

(assert (=> b!4987946 m!6019856))

(assert (=> b!4987946 m!6019856))

(declare-fun m!6019858 () Bool)

(assert (=> b!4987946 m!6019858))

(assert (=> b!4987944 m!6019468))

(assert (=> b!4987944 m!6019462))

(assert (=> b!4987944 m!6019468))

(assert (=> b!4987944 m!6019462))

(assert (=> b!4987944 m!6019472))

(assert (=> b!4987944 m!6019758))

(assert (=> b!4987950 m!6019836))

(assert (=> b!4987950 m!6019848))

(assert (=> b!4987950 m!6019848))

(assert (=> b!4987950 m!6019850))

(assert (=> b!4987950 m!6019850))

(declare-fun m!6019860 () Bool)

(assert (=> b!4987950 m!6019860))

(assert (=> b!4987649 d!1606202))

(declare-fun d!1606220 () Bool)

(assert (=> d!1606220 (= (apply!13962 (transformation!8477 rule!200) (_1!34645 lt!2061650)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) (_1!34645 lt!2061650)))))

(declare-fun b_lambda!198449 () Bool)

(assert (=> (not b_lambda!198449) (not d!1606220)))

(assert (=> d!1606220 t!370043))

(declare-fun b_and!350025 () Bool)

(assert (= b_and!350019 (and (=> t!370043 result!327246) b_and!350025)))

(assert (=> d!1606220 m!6019636))

(assert (=> b!4987649 d!1606220))

(declare-fun d!1606222 () Bool)

(assert (=> d!1606222 (dynLambda!23487 lambda!248093 (_1!34645 lt!2061650))))

(declare-fun lt!2061855 () Unit!148786)

(assert (=> d!1606222 (= lt!2061855 (choose!36876 lambda!248093 (_1!34645 lt!2061650)))))

(assert (=> d!1606222 (Forall!1825 lambda!248093)))

(assert (=> d!1606222 (= (ForallOf!1284 lambda!248093 (_1!34645 lt!2061650)) lt!2061855)))

(declare-fun b_lambda!198451 () Bool)

(assert (=> (not b_lambda!198451) (not d!1606222)))

(declare-fun bs!1184772 () Bool)

(assert (= bs!1184772 d!1606222))

(declare-fun m!6019862 () Bool)

(assert (=> bs!1184772 m!6019862))

(declare-fun m!6019864 () Bool)

(assert (=> bs!1184772 m!6019864))

(assert (=> bs!1184772 m!6019500))

(assert (=> b!4987649 d!1606222))

(declare-fun d!1606224 () Bool)

(declare-fun isEmpty!31189 (Option!14566) Bool)

(assert (=> d!1606224 (= (isDefined!11473 (Some!14565 (tuple2!62687 lt!2061643 (_2!34645 lt!2061650)))) (not (isEmpty!31189 (Some!14565 (tuple2!62687 lt!2061643 (_2!34645 lt!2061650))))))))

(declare-fun bs!1184773 () Bool)

(assert (= bs!1184773 d!1606224))

(declare-fun m!6019866 () Bool)

(assert (=> bs!1184773 m!6019866))

(assert (=> b!4987649 d!1606224))

(declare-fun d!1606226 () Bool)

(assert (=> d!1606226 (= (list!18507 (_1!34645 lt!2061650)) (list!18509 (c!851109 (_1!34645 lt!2061650))))))

(declare-fun bs!1184774 () Bool)

(assert (= bs!1184774 d!1606226))

(declare-fun m!6019868 () Bool)

(assert (=> bs!1184774 m!6019868))

(assert (=> b!4987649 d!1606226))

(declare-fun d!1606228 () Bool)

(declare-fun res!2129339 () Bool)

(declare-fun e!3117364 () Bool)

(assert (=> d!1606228 (=> (not res!2129339) (not e!3117364))))

(assert (=> d!1606228 (= res!2129339 (validRegex!6009 (regex!8477 rule!200)))))

(assert (=> d!1606228 (= (ruleValid!3885 thiss!16165 rule!200) e!3117364)))

(declare-fun b!4987960 () Bool)

(declare-fun res!2129340 () Bool)

(assert (=> b!4987960 (=> (not res!2129340) (not e!3117364))))

(assert (=> b!4987960 (= res!2129340 (not (nullable!4660 (regex!8477 rule!200))))))

(declare-fun b!4987961 () Bool)

(assert (=> b!4987961 (= e!3117364 (not (= (tag!9341 rule!200) (String!65811 ""))))))

(assert (= (and d!1606228 res!2129339) b!4987960))

(assert (= (and b!4987960 res!2129340) b!4987961))

(assert (=> d!1606228 m!6019620))

(assert (=> b!4987960 m!6019618))

(assert (=> b!4987651 d!1606228))

(declare-fun d!1606232 () Bool)

(declare-fun lt!2061859 () Bool)

(assert (=> d!1606232 (= lt!2061859 (isEmpty!31184 (list!18507 (_1!34645 lt!2061650))))))

(declare-fun isEmpty!31190 (Conc!15229) Bool)

(assert (=> d!1606232 (= lt!2061859 (isEmpty!31190 (c!851109 (_1!34645 lt!2061650))))))

(assert (=> d!1606232 (= (isEmpty!31185 (_1!34645 lt!2061650)) lt!2061859)))

(declare-fun bs!1184775 () Bool)

(assert (= bs!1184775 d!1606232))

(assert (=> bs!1184775 m!6019520))

(assert (=> bs!1184775 m!6019520))

(declare-fun m!6019872 () Bool)

(assert (=> bs!1184775 m!6019872))

(declare-fun m!6019874 () Bool)

(assert (=> bs!1184775 m!6019874))

(assert (=> b!4987650 d!1606232))

(declare-fun d!1606234 () Bool)

(declare-fun lt!2061862 () tuple2!62684)

(assert (=> d!1606234 (= (tuple2!62681 (list!18507 (_1!34645 lt!2061862)) (list!18507 (_2!34645 lt!2061862))) (findLongestMatch!1735 (regex!8477 rule!200) (list!18507 input!1580)))))

(declare-fun choose!36877 (Regex!13710 BalanceConc!29888 BalanceConc!29888) tuple2!62684)

(assert (=> d!1606234 (= lt!2061862 (choose!36877 (regex!8477 rule!200) input!1580 totalInput!520))))

(assert (=> d!1606234 (validRegex!6009 (regex!8477 rule!200))))

(assert (=> d!1606234 (= (findLongestMatchWithZipperSequenceV2!240 (regex!8477 rule!200) input!1580 totalInput!520) lt!2061862)))

(declare-fun bs!1184776 () Bool)

(assert (= bs!1184776 d!1606234))

(declare-fun m!6019876 () Bool)

(assert (=> bs!1184776 m!6019876))

(assert (=> bs!1184776 m!6019620))

(assert (=> bs!1184776 m!6019528))

(declare-fun m!6019878 () Bool)

(assert (=> bs!1184776 m!6019878))

(assert (=> bs!1184776 m!6019528))

(declare-fun m!6019880 () Bool)

(assert (=> bs!1184776 m!6019880))

(declare-fun m!6019882 () Bool)

(assert (=> bs!1184776 m!6019882))

(assert (=> b!4987650 d!1606234))

(declare-fun d!1606236 () Bool)

(declare-fun res!2129345 () Bool)

(declare-fun e!3117367 () Bool)

(assert (=> d!1606236 (=> (not res!2129345) (not e!3117367))))

(assert (=> d!1606236 (= res!2129345 (not (isEmpty!31184 (originalCharacters!8734 lt!2061643))))))

(assert (=> d!1606236 (= (inv!75577 lt!2061643) e!3117367)))

(declare-fun b!4987966 () Bool)

(declare-fun res!2129346 () Bool)

(assert (=> b!4987966 (=> (not res!2129346) (not e!3117367))))

(declare-fun dynLambda!23488 (Int TokenValue!8787) BalanceConc!29888)

(assert (=> b!4987966 (= res!2129346 (= (originalCharacters!8734 lt!2061643) (list!18507 (dynLambda!23488 (toChars!11347 (transformation!8477 (rule!11745 lt!2061643))) (value!271014 lt!2061643)))))))

(declare-fun b!4987967 () Bool)

(assert (=> b!4987967 (= e!3117367 (= (size!38289 lt!2061643) (size!38288 (originalCharacters!8734 lt!2061643))))))

(assert (= (and d!1606236 res!2129345) b!4987966))

(assert (= (and b!4987966 res!2129346) b!4987967))

(declare-fun b_lambda!198453 () Bool)

(assert (=> (not b_lambda!198453) (not b!4987966)))

(declare-fun tb!261787 () Bool)

(declare-fun t!370049 () Bool)

(assert (=> (and b!4987660 (= (toChars!11347 (transformation!8477 rule!200)) (toChars!11347 (transformation!8477 (rule!11745 lt!2061643)))) t!370049) tb!261787))

(declare-fun b!4987972 () Bool)

(declare-fun e!3117370 () Bool)

(declare-fun tp!1397790 () Bool)

(assert (=> b!4987972 (= e!3117370 (and (inv!75576 (c!851109 (dynLambda!23488 (toChars!11347 (transformation!8477 (rule!11745 lt!2061643))) (value!271014 lt!2061643)))) tp!1397790))))

(declare-fun result!327256 () Bool)

(assert (=> tb!261787 (= result!327256 (and (inv!75578 (dynLambda!23488 (toChars!11347 (transformation!8477 (rule!11745 lt!2061643))) (value!271014 lt!2061643))) e!3117370))))

(assert (= tb!261787 b!4987972))

(declare-fun m!6019884 () Bool)

(assert (=> b!4987972 m!6019884))

(declare-fun m!6019886 () Bool)

(assert (=> tb!261787 m!6019886))

(assert (=> b!4987966 t!370049))

(declare-fun b_and!350027 () Bool)

(assert (= b_and!350009 (and (=> t!370049 result!327256) b_and!350027)))

(declare-fun m!6019888 () Bool)

(assert (=> d!1606236 m!6019888))

(declare-fun m!6019890 () Bool)

(assert (=> b!4987966 m!6019890))

(assert (=> b!4987966 m!6019890))

(declare-fun m!6019892 () Bool)

(assert (=> b!4987966 m!6019892))

(declare-fun m!6019894 () Bool)

(assert (=> b!4987967 m!6019894))

(assert (=> b!4987652 d!1606236))

(declare-fun b!4987983 () Bool)

(declare-fun e!3117373 () Bool)

(declare-fun tp_is_empty!36421 () Bool)

(assert (=> b!4987983 (= e!3117373 tp_is_empty!36421)))

(declare-fun b!4987985 () Bool)

(declare-fun tp!1397805 () Bool)

(assert (=> b!4987985 (= e!3117373 tp!1397805)))

(declare-fun b!4987984 () Bool)

(declare-fun tp!1397802 () Bool)

(declare-fun tp!1397803 () Bool)

(assert (=> b!4987984 (= e!3117373 (and tp!1397802 tp!1397803))))

(assert (=> b!4987659 (= tp!1397766 e!3117373)))

(declare-fun b!4987986 () Bool)

(declare-fun tp!1397804 () Bool)

(declare-fun tp!1397801 () Bool)

(assert (=> b!4987986 (= e!3117373 (and tp!1397804 tp!1397801))))

(assert (= (and b!4987659 (is-ElementMatch!13710 (regex!8477 rule!200))) b!4987983))

(assert (= (and b!4987659 (is-Concat!22497 (regex!8477 rule!200))) b!4987984))

(assert (= (and b!4987659 (is-Star!13710 (regex!8477 rule!200))) b!4987985))

(assert (= (and b!4987659 (is-Union!13710 (regex!8477 rule!200))) b!4987986))

(declare-fun tp!1397813 () Bool)

(declare-fun tp!1397814 () Bool)

(declare-fun e!3117378 () Bool)

(declare-fun b!4987995 () Bool)

(assert (=> b!4987995 (= e!3117378 (and (inv!75576 (left!42164 (c!851109 totalInput!520))) tp!1397813 (inv!75576 (right!42494 (c!851109 totalInput!520))) tp!1397814))))

(declare-fun b!4987997 () Bool)

(declare-fun e!3117379 () Bool)

(declare-fun tp!1397812 () Bool)

(assert (=> b!4987997 (= e!3117379 tp!1397812)))

(declare-fun b!4987996 () Bool)

(declare-fun inv!75586 (IArray!30519) Bool)

(assert (=> b!4987996 (= e!3117378 (and (inv!75586 (xs!18555 (c!851109 totalInput!520))) e!3117379))))

(assert (=> b!4987654 (= tp!1397768 (and (inv!75576 (c!851109 totalInput!520)) e!3117378))))

(assert (= (and b!4987654 (is-Node!15229 (c!851109 totalInput!520))) b!4987995))

(assert (= b!4987996 b!4987997))

(assert (= (and b!4987654 (is-Leaf!25293 (c!851109 totalInput!520))) b!4987996))

(declare-fun m!6019896 () Bool)

(assert (=> b!4987995 m!6019896))

(declare-fun m!6019898 () Bool)

(assert (=> b!4987995 m!6019898))

(declare-fun m!6019900 () Bool)

(assert (=> b!4987996 m!6019900))

(assert (=> b!4987654 m!6019490))

(declare-fun tp!1397817 () Bool)

(declare-fun e!3117380 () Bool)

(declare-fun b!4987998 () Bool)

(declare-fun tp!1397816 () Bool)

(assert (=> b!4987998 (= e!3117380 (and (inv!75576 (left!42164 (c!851109 input!1580))) tp!1397816 (inv!75576 (right!42494 (c!851109 input!1580))) tp!1397817))))

(declare-fun b!4988000 () Bool)

(declare-fun e!3117381 () Bool)

(declare-fun tp!1397815 () Bool)

(assert (=> b!4988000 (= e!3117381 tp!1397815)))

(declare-fun b!4987999 () Bool)

(assert (=> b!4987999 (= e!3117380 (and (inv!75586 (xs!18555 (c!851109 input!1580))) e!3117381))))

(assert (=> b!4987646 (= tp!1397765 (and (inv!75576 (c!851109 input!1580)) e!3117380))))

(assert (= (and b!4987646 (is-Node!15229 (c!851109 input!1580))) b!4987998))

(assert (= b!4987999 b!4988000))

(assert (= (and b!4987646 (is-Leaf!25293 (c!851109 input!1580))) b!4987999))

(declare-fun m!6019902 () Bool)

(assert (=> b!4987998 m!6019902))

(declare-fun m!6019904 () Bool)

(assert (=> b!4987998 m!6019904))

(declare-fun m!6019906 () Bool)

(assert (=> b!4987999 m!6019906))

(assert (=> b!4987646 m!6019522))

(declare-fun b_lambda!198455 () Bool)

(assert (= b_lambda!198437 (or (and b!4987660 b_free!133207) b_lambda!198455)))

(declare-fun b_lambda!198457 () Bool)

(assert (= b_lambda!198447 (or b!4987657 b_lambda!198457)))

(declare-fun bs!1184777 () Bool)

(declare-fun d!1606238 () Bool)

(assert (= bs!1184777 (and d!1606238 b!4987657)))

(assert (=> bs!1184777 (= (dynLambda!23487 lambda!248093 lt!2061644) (= (list!18507 (dynLambda!23488 (toChars!11347 (transformation!8477 rule!200)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) lt!2061644))) (list!18507 lt!2061644)))))

(declare-fun b_lambda!198467 () Bool)

(assert (=> (not b_lambda!198467) (not bs!1184777)))

(declare-fun t!370051 () Bool)

(declare-fun tb!261789 () Bool)

(assert (=> (and b!4987660 (= (toChars!11347 (transformation!8477 rule!200)) (toChars!11347 (transformation!8477 rule!200))) t!370051) tb!261789))

(declare-fun b!4988001 () Bool)

(declare-fun e!3117382 () Bool)

(declare-fun tp!1397818 () Bool)

(assert (=> b!4988001 (= e!3117382 (and (inv!75576 (c!851109 (dynLambda!23488 (toChars!11347 (transformation!8477 rule!200)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) lt!2061644)))) tp!1397818))))

(declare-fun result!327264 () Bool)

(assert (=> tb!261789 (= result!327264 (and (inv!75578 (dynLambda!23488 (toChars!11347 (transformation!8477 rule!200)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) lt!2061644))) e!3117382))))

(assert (= tb!261789 b!4988001))

(declare-fun m!6019908 () Bool)

(assert (=> b!4988001 m!6019908))

(declare-fun m!6019910 () Bool)

(assert (=> tb!261789 m!6019910))

(assert (=> bs!1184777 t!370051))

(declare-fun b_and!350029 () Bool)

(assert (= b_and!350027 (and (=> t!370051 result!327264) b_and!350029)))

(declare-fun b_lambda!198469 () Bool)

(assert (=> (not b_lambda!198469) (not bs!1184777)))

(assert (=> bs!1184777 t!370041))

(declare-fun b_and!350031 () Bool)

(assert (= b_and!350025 (and (=> t!370041 result!327242) b_and!350031)))

(assert (=> bs!1184777 m!6019628))

(declare-fun m!6019912 () Bool)

(assert (=> bs!1184777 m!6019912))

(assert (=> bs!1184777 m!6019530))

(assert (=> bs!1184777 m!6019628))

(assert (=> bs!1184777 m!6019912))

(declare-fun m!6019914 () Bool)

(assert (=> bs!1184777 m!6019914))

(assert (=> d!1606196 d!1606238))

(declare-fun b_lambda!198459 () Bool)

(assert (= b_lambda!198433 (or (and b!4987660 b_free!133207) b_lambda!198459)))

(declare-fun b_lambda!198461 () Bool)

(assert (= b_lambda!198435 (or (and b!4987660 b_free!133207) b_lambda!198461)))

(declare-fun b_lambda!198463 () Bool)

(assert (= b_lambda!198451 (or b!4987657 b_lambda!198463)))

(declare-fun bs!1184778 () Bool)

(declare-fun d!1606240 () Bool)

(assert (= bs!1184778 (and d!1606240 b!4987657)))

(assert (=> bs!1184778 (= (dynLambda!23487 lambda!248093 (_1!34645 lt!2061650)) (= (list!18507 (dynLambda!23488 (toChars!11347 (transformation!8477 rule!200)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) (_1!34645 lt!2061650)))) (list!18507 (_1!34645 lt!2061650))))))

(declare-fun b_lambda!198471 () Bool)

(assert (=> (not b_lambda!198471) (not bs!1184778)))

(declare-fun t!370053 () Bool)

(declare-fun tb!261791 () Bool)

(assert (=> (and b!4987660 (= (toChars!11347 (transformation!8477 rule!200)) (toChars!11347 (transformation!8477 rule!200))) t!370053) tb!261791))

(declare-fun tp!1397819 () Bool)

(declare-fun e!3117383 () Bool)

(declare-fun b!4988002 () Bool)

(assert (=> b!4988002 (= e!3117383 (and (inv!75576 (c!851109 (dynLambda!23488 (toChars!11347 (transformation!8477 rule!200)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) (_1!34645 lt!2061650))))) tp!1397819))))

(declare-fun result!327266 () Bool)

(assert (=> tb!261791 (= result!327266 (and (inv!75578 (dynLambda!23488 (toChars!11347 (transformation!8477 rule!200)) (dynLambda!23485 (toValue!11488 (transformation!8477 rule!200)) (_1!34645 lt!2061650)))) e!3117383))))

(assert (= tb!261791 b!4988002))

(declare-fun m!6019916 () Bool)

(assert (=> b!4988002 m!6019916))

(declare-fun m!6019918 () Bool)

(assert (=> tb!261791 m!6019918))

(assert (=> bs!1184778 t!370053))

(declare-fun b_and!350033 () Bool)

(assert (= b_and!350029 (and (=> t!370053 result!327266) b_and!350033)))

(declare-fun b_lambda!198473 () Bool)

(assert (=> (not b_lambda!198473) (not bs!1184778)))

(assert (=> bs!1184778 t!370043))

(declare-fun b_and!350035 () Bool)

(assert (= b_and!350031 (and (=> t!370043 result!327246) b_and!350035)))

(assert (=> bs!1184778 m!6019636))

(declare-fun m!6019920 () Bool)

(assert (=> bs!1184778 m!6019920))

(assert (=> bs!1184778 m!6019520))

(assert (=> bs!1184778 m!6019636))

(assert (=> bs!1184778 m!6019920))

(declare-fun m!6019922 () Bool)

(assert (=> bs!1184778 m!6019922))

(assert (=> d!1606222 d!1606240))

(declare-fun b_lambda!198465 () Bool)

(assert (= b_lambda!198449 (or (and b!4987660 b_free!133207) b_lambda!198465)))

(push 1)

(assert (not d!1606156))

(assert (not b!4988000))

(assert (not b!4987996))

(assert (not b!4987967))

(assert (not d!1606112))

(assert (not bm!348115))

(assert (not d!1606200))

(assert (not b!4987966))

(assert (not tb!261787))

(assert (not b!4987775))

(assert (not b!4988002))

(assert (not b!4987864))

(assert (not b!4987949))

(assert (not tb!261789))

(assert (not b_lambda!198455))

(assert (not d!1606228))

(assert (not d!1606162))

(assert (not b_lambda!198463))

(assert (not d!1606114))

(assert (not b!4987986))

(assert (not d!1606130))

(assert (not b!4987889))

(assert (not d!1606224))

(assert (not d!1606142))

(assert (not b!4987999))

(assert (not b!4987863))

(assert (not d!1606202))

(assert (not b!4987654))

(assert (not d!1606226))

(assert tp_is_empty!36421)

(assert (not d!1606232))

(assert (not b_lambda!198467))

(assert (not b!4987984))

(assert (not b_lambda!198465))

(assert (not b!4987944))

(assert (not b!4987998))

(assert (not b_lambda!198461))

(assert (not b!4987878))

(assert (not d!1606172))

(assert (not d!1606118))

(assert (not bm!348137))

(assert (not d!1606222))

(assert (not b!4987646))

(assert (not b!4987766))

(assert b_and!350035)

(assert (not d!1606186))

(assert (not b!4987873))

(assert (not d!1606192))

(assert (not b_lambda!198459))

(assert (not d!1606234))

(assert (not b!4987947))

(assert (not d!1606196))

(assert (not d!1606190))

(assert (not b!4987945))

(assert (not b!4987997))

(assert (not b!4987950))

(assert (not b!4987995))

(assert (not d!1606236))

(assert (not b!4987757))

(assert (not b!4987887))

(assert (not b!4987875))

(assert b_and!350033)

(assert (not bs!1184778))

(assert (not b!4987870))

(assert (not b!4987985))

(assert (not tb!261791))

(assert (not d!1606184))

(assert (not b!4987773))

(assert (not bs!1184777))

(assert (not tb!261781))

(assert (not b!4987764))

(assert (not b!4987946))

(assert (not b_lambda!198473))

(assert (not b_next!133999))

(assert (not bm!348132))

(assert (not tb!261779))

(assert (not d!1606116))

(assert (not d!1606182))

(assert (not d!1606124))

(assert (not bm!348136))

(assert (not b!4987894))

(assert (not bm!348135))

(assert (not b!4987972))

(assert (not b!4987856))

(assert (not b!4987763))

(assert (not b_lambda!198469))

(assert (not b!4987762))

(assert (not b!4987857))

(assert (not b!4987948))

(assert (not b_lambda!198457))

(assert (not d!1606188))

(assert (not b!4987960))

(assert (not b!4987951))

(assert (not b!4987901))

(assert (not b!4987754))

(assert (not b!4988001))

(assert (not bm!348139))

(assert (not b_lambda!198453))

(assert (not b_lambda!198471))

(assert (not bm!348134))

(assert (not b_next!133997))

(assert (not bm!348133))

(assert (not bm!348138))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350033)

(assert b_and!350035)

(assert (not b_next!133999))

(assert (not b_next!133997))

(check-sat)

(pop 1)

