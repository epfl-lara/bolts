; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525182 () Bool)

(assert start!525182)

(declare-fun b!4977867 () Bool)

(declare-fun b_free!133067 () Bool)

(declare-fun b_next!133857 () Bool)

(assert (=> b!4977867 (= b_free!133067 (not b_next!133857))))

(declare-fun tp!1395910 () Bool)

(declare-fun b_and!349479 () Bool)

(assert (=> b!4977867 (= tp!1395910 b_and!349479)))

(declare-fun b_free!133069 () Bool)

(declare-fun b_next!133859 () Bool)

(assert (=> b!4977867 (= b_free!133069 (not b_next!133859))))

(declare-fun tp!1395908 () Bool)

(declare-fun b_and!349481 () Bool)

(assert (=> b!4977867 (= tp!1395908 b_and!349481)))

(declare-fun b!4977886 () Bool)

(declare-fun e!3111349 () Bool)

(assert (=> b!4977886 (= e!3111349 true)))

(declare-fun b!4977885 () Bool)

(declare-fun e!3111348 () Bool)

(assert (=> b!4977885 (= e!3111348 e!3111349)))

(declare-fun b!4977876 () Bool)

(assert (=> b!4977876 e!3111348))

(assert (= b!4977885 b!4977886))

(assert (= b!4977876 b!4977885))

(declare-fun order!26407 () Int)

(declare-fun lambda!247724 () Int)

(declare-datatypes ((C!27600 0))(
  ( (C!27601 (val!23166 Int)) )
))
(declare-datatypes ((List!57680 0))(
  ( (Nil!57556) (Cons!57556 (h!64004 C!27600) (t!369692 List!57680)) )
))
(declare-datatypes ((IArray!30449 0))(
  ( (IArray!30450 (innerList!15282 List!57680)) )
))
(declare-datatypes ((List!57681 0))(
  ( (Nil!57557) (Cons!57557 (h!64005 (_ BitVec 16)) (t!369693 List!57681)) )
))
(declare-datatypes ((Regex!13675 0))(
  ( (ElementMatch!13675 (c!849273 C!27600)) (Concat!22427 (regOne!27862 Regex!13675) (regTwo!27862 Regex!13675)) (EmptyExpr!13675) (Star!13675 (reg!14004 Regex!13675)) (EmptyLang!13675) (Union!13675 (regOne!27863 Regex!13675) (regTwo!27863 Regex!13675)) )
))
(declare-datatypes ((Conc!15194 0))(
  ( (Node!15194 (left!42045 Conc!15194) (right!42375 Conc!15194) (csize!30618 Int) (cheight!15405 Int)) (Leaf!25240 (xs!18520 IArray!30449) (csize!30619 Int)) (Empty!15194) )
))
(declare-datatypes ((BalanceConc!29818 0))(
  ( (BalanceConc!29819 (c!849274 Conc!15194)) )
))
(declare-datatypes ((TokenValue!8752 0))(
  ( (FloatLiteralValue!17504 (text!61709 List!57681)) (TokenValueExt!8751 (__x!34797 Int)) (Broken!43760 (value!269995 List!57681)) (Object!8875) (End!8752) (Def!8752) (Underscore!8752) (Match!8752) (Else!8752) (Error!8752) (Case!8752) (If!8752) (Extends!8752) (Abstract!8752) (Class!8752) (Val!8752) (DelimiterValue!17504 (del!8812 List!57681)) (KeywordValue!8758 (value!269996 List!57681)) (CommentValue!17504 (value!269997 List!57681)) (WhitespaceValue!17504 (value!269998 List!57681)) (IndentationValue!8752 (value!269999 List!57681)) (String!65633) (Int32!8752) (Broken!43761 (value!270000 List!57681)) (Boolean!8753) (Unit!148561) (OperatorValue!8755 (op!8812 List!57681)) (IdentifierValue!17504 (value!270001 List!57681)) (IdentifierValue!17505 (value!270002 List!57681)) (WhitespaceValue!17505 (value!270003 List!57681)) (True!17504) (False!17504) (Broken!43762 (value!270004 List!57681)) (Broken!43763 (value!270005 List!57681)) (True!17505) (RightBrace!8752) (RightBracket!8752) (Colon!8752) (Null!8752) (Comma!8752) (LeftBracket!8752) (False!17505) (LeftBrace!8752) (ImaginaryLiteralValue!8752 (text!61710 List!57681)) (StringLiteralValue!26256 (value!270006 List!57681)) (EOFValue!8752 (value!270007 List!57681)) (IdentValue!8752 (value!270008 List!57681)) (DelimiterValue!17505 (value!270009 List!57681)) (DedentValue!8752 (value!270010 List!57681)) (NewLineValue!8752 (value!270011 List!57681)) (IntegerValue!26256 (value!270012 (_ BitVec 32)) (text!61711 List!57681)) (IntegerValue!26257 (value!270013 Int) (text!61712 List!57681)) (Times!8752) (Or!8752) (Equal!8752) (Minus!8752) (Broken!43764 (value!270014 List!57681)) (And!8752) (Div!8752) (LessEqual!8752) (Mod!8752) (Concat!22428) (Not!8752) (Plus!8752) (SpaceValue!8752 (value!270015 List!57681)) (IntegerValue!26258 (value!270016 Int) (text!61713 List!57681)) (StringLiteralValue!26257 (text!61714 List!57681)) (FloatLiteralValue!17505 (text!61715 List!57681)) (BytesLiteralValue!8752 (value!270017 List!57681)) (CommentValue!17505 (value!270018 List!57681)) (StringLiteralValue!26258 (value!270019 List!57681)) (ErrorTokenValue!8752 (msg!8813 List!57681)) )
))
(declare-datatypes ((TokenValueInjection!16812 0))(
  ( (TokenValueInjection!16813 (toValue!11417 Int) (toChars!11276 Int)) )
))
(declare-datatypes ((String!65634 0))(
  ( (String!65635 (value!270020 String)) )
))
(declare-datatypes ((Rule!16684 0))(
  ( (Rule!16685 (regex!8442 Regex!13675) (tag!9306 String!65634) (isSeparator!8442 Bool) (transformation!8442 TokenValueInjection!16812)) )
))
(declare-fun rule!200 () Rule!16684)

(declare-fun order!26405 () Int)

(declare-fun dynLambda!23294 (Int Int) Int)

(declare-fun dynLambda!23295 (Int Int) Int)

(assert (=> b!4977886 (< (dynLambda!23294 order!26405 (toValue!11417 (transformation!8442 rule!200))) (dynLambda!23295 order!26407 lambda!247724))))

(declare-fun order!26409 () Int)

(declare-fun dynLambda!23296 (Int Int) Int)

(assert (=> b!4977886 (< (dynLambda!23296 order!26409 (toChars!11276 (transformation!8442 rule!200))) (dynLambda!23295 order!26407 lambda!247724))))

(declare-fun b!4977863 () Bool)

(declare-fun e!3111332 () Bool)

(declare-datatypes ((tuple2!62432 0))(
  ( (tuple2!62433 (_1!34519 List!57680) (_2!34519 List!57680)) )
))
(declare-fun lt!2056142 () tuple2!62432)

(declare-fun matchR!6669 (Regex!13675 List!57680) Bool)

(assert (=> b!4977863 (= e!3111332 (matchR!6669 (regex!8442 rule!200) (_1!34519 lt!2056142)))))

(declare-fun b!4977864 () Bool)

(declare-fun res!2125037 () Bool)

(declare-fun e!3111336 () Bool)

(assert (=> b!4977864 (=> res!2125037 e!3111336)))

(declare-datatypes ((Token!15348 0))(
  ( (Token!15349 (value!270021 TokenValue!8752) (rule!11694 Rule!16684) (size!38173 Int) (originalCharacters!8705 List!57680)) )
))
(declare-datatypes ((tuple2!62434 0))(
  ( (tuple2!62435 (_1!34520 Token!15348) (_2!34520 BalanceConc!29818)) )
))
(declare-datatypes ((Option!14511 0))(
  ( (None!14510) (Some!14510 (v!50507 tuple2!62434)) )
))
(declare-fun lt!2056147 () Option!14511)

(declare-datatypes ((tuple2!62436 0))(
  ( (tuple2!62437 (_1!34521 Token!15348) (_2!34521 List!57680)) )
))
(declare-fun lt!2056145 () tuple2!62436)

(declare-fun get!20000 (Option!14511) tuple2!62434)

(assert (=> b!4977864 (= res!2125037 (not (= (_1!34520 (get!20000 lt!2056147)) (_1!34521 lt!2056145))))))

(declare-fun b!4977865 () Bool)

(declare-fun e!3111338 () Bool)

(assert (=> b!4977865 (= e!3111338 e!3111336)))

(declare-fun res!2125047 () Bool)

(assert (=> b!4977865 (=> res!2125047 e!3111336)))

(declare-fun lt!2056153 () Int)

(declare-fun lt!2056151 () Token!15348)

(declare-fun lt!2056150 () List!57680)

(declare-fun lt!2056148 () TokenValue!8752)

(assert (=> b!4977865 (= res!2125047 (or (not (= (value!270021 (_1!34521 lt!2056145)) lt!2056148)) (not (= (rule!11694 (_1!34521 lt!2056145)) rule!200)) (not (= (size!38173 (_1!34521 lt!2056145)) lt!2056153)) (not (= (originalCharacters!8705 (_1!34521 lt!2056145)) lt!2056150)) (not (= lt!2056151 (_1!34521 lt!2056145)))))))

(declare-datatypes ((Option!14512 0))(
  ( (None!14511) (Some!14511 (v!50508 tuple2!62436)) )
))
(declare-fun lt!2056152 () Option!14512)

(declare-fun get!20001 (Option!14512) tuple2!62436)

(assert (=> b!4977865 (= lt!2056145 (get!20001 lt!2056152))))

(declare-fun b!4977866 () Bool)

(declare-fun e!3111339 () Bool)

(declare-fun input!1580 () BalanceConc!29818)

(declare-fun tp!1395911 () Bool)

(declare-fun inv!75333 (Conc!15194) Bool)

(assert (=> b!4977866 (= e!3111339 (and (inv!75333 (c!849274 input!1580)) tp!1395911))))

(declare-fun e!3111334 () Bool)

(assert (=> b!4977867 (= e!3111334 (and tp!1395910 tp!1395908))))

(declare-fun b!4977868 () Bool)

(declare-fun e!3111337 () Bool)

(assert (=> b!4977868 (= e!3111337 e!3111338)))

(declare-fun res!2125044 () Bool)

(assert (=> b!4977868 (=> res!2125044 e!3111338)))

(declare-fun lt!2056141 () BalanceConc!29818)

(declare-fun apply!13933 (TokenValueInjection!16812 BalanceConc!29818) TokenValue!8752)

(assert (=> b!4977868 (= res!2125044 (not (= (apply!13933 (transformation!8442 rule!200) lt!2056141) lt!2056148)))))

(declare-datatypes ((Unit!148562 0))(
  ( (Unit!148563) )
))
(declare-fun lt!2056146 () Unit!148562)

(declare-datatypes ((tuple2!62438 0))(
  ( (tuple2!62439 (_1!34522 BalanceConc!29818) (_2!34522 BalanceConc!29818)) )
))
(declare-fun lt!2056139 () tuple2!62438)

(declare-fun lemmaEqSameImage!1191 (TokenValueInjection!16812 BalanceConc!29818 BalanceConc!29818) Unit!148562)

(assert (=> b!4977868 (= lt!2056146 (lemmaEqSameImage!1191 (transformation!8442 rule!200) (_1!34522 lt!2056139) lt!2056141))))

(declare-fun b!4977869 () Bool)

(declare-fun res!2125046 () Bool)

(declare-fun e!3111331 () Bool)

(assert (=> b!4977869 (=> (not res!2125046) (not e!3111331))))

(declare-datatypes ((LexerInterface!8034 0))(
  ( (LexerInterfaceExt!8031 (__x!34798 Int)) (Lexer!8032) )
))
(declare-fun thiss!16165 () LexerInterface!8034)

(declare-fun ruleValid!3850 (LexerInterface!8034 Rule!16684) Bool)

(assert (=> b!4977869 (= res!2125046 (ruleValid!3850 thiss!16165 rule!200))))

(declare-fun b!4977871 () Bool)

(declare-fun e!3111335 () Bool)

(declare-fun e!3111340 () Bool)

(assert (=> b!4977871 (= e!3111335 (not e!3111340))))

(declare-fun res!2125042 () Bool)

(assert (=> b!4977871 (=> res!2125042 e!3111340)))

(declare-fun semiInverseModEq!3735 (Int Int) Bool)

(assert (=> b!4977871 (= res!2125042 (not (semiInverseModEq!3735 (toChars!11276 (transformation!8442 rule!200)) (toValue!11417 (transformation!8442 rule!200)))))))

(declare-fun lt!2056154 () Unit!148562)

(declare-fun lemmaInv!1365 (TokenValueInjection!16812) Unit!148562)

(assert (=> b!4977871 (= lt!2056154 (lemmaInv!1365 (transformation!8442 rule!200)))))

(assert (=> b!4977871 e!3111332))

(declare-fun res!2125040 () Bool)

(assert (=> b!4977871 (=> res!2125040 e!3111332)))

(declare-fun isEmpty!31045 (List!57680) Bool)

(assert (=> b!4977871 (= res!2125040 (isEmpty!31045 (_1!34519 lt!2056142)))))

(declare-fun lt!2056149 () List!57680)

(declare-fun findLongestMatchInner!1886 (Regex!13675 List!57680 Int List!57680 List!57680 Int) tuple2!62432)

(declare-fun size!38174 (List!57680) Int)

(assert (=> b!4977871 (= lt!2056142 (findLongestMatchInner!1886 (regex!8442 rule!200) Nil!57556 (size!38174 Nil!57556) lt!2056149 lt!2056149 (size!38174 lt!2056149)))))

(declare-fun lt!2056144 () Unit!148562)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1847 (Regex!13675 List!57680) Unit!148562)

(assert (=> b!4977871 (= lt!2056144 (longestMatchIsAcceptedByMatchOrIsEmpty!1847 (regex!8442 rule!200) lt!2056149))))

(declare-fun b!4977872 () Bool)

(declare-fun e!3111341 () Bool)

(declare-fun totalInput!520 () BalanceConc!29818)

(declare-fun tp!1395912 () Bool)

(assert (=> b!4977872 (= e!3111341 (and (inv!75333 (c!849274 totalInput!520)) tp!1395912))))

(declare-fun b!4977873 () Bool)

(declare-fun e!3111342 () Bool)

(assert (=> b!4977873 (= e!3111342 e!3111335)))

(declare-fun res!2125036 () Bool)

(assert (=> b!4977873 (=> (not res!2125036) (not e!3111335))))

(declare-fun isEmpty!31046 (BalanceConc!29818) Bool)

(assert (=> b!4977873 (= res!2125036 (not (isEmpty!31046 (_1!34522 lt!2056139))))))

(declare-fun findLongestMatchWithZipperSequenceV2!205 (Regex!13675 BalanceConc!29818 BalanceConc!29818) tuple2!62438)

(assert (=> b!4977873 (= lt!2056139 (findLongestMatchWithZipperSequenceV2!205 (regex!8442 rule!200) input!1580 totalInput!520))))

(declare-fun tp!1395909 () Bool)

(declare-fun e!3111343 () Bool)

(declare-fun b!4977874 () Bool)

(declare-fun inv!75329 (String!65634) Bool)

(declare-fun inv!75334 (TokenValueInjection!16812) Bool)

(assert (=> b!4977874 (= e!3111343 (and tp!1395909 (inv!75329 (tag!9306 rule!200)) (inv!75334 (transformation!8442 rule!200)) e!3111334))))

(declare-fun b!4977875 () Bool)

(assert (=> b!4977875 (= e!3111340 e!3111337)))

(declare-fun res!2125038 () Bool)

(assert (=> b!4977875 (=> res!2125038 e!3111337)))

(declare-fun lt!2056140 () Bool)

(declare-fun lt!2056156 () Bool)

(assert (=> b!4977875 (= res!2125038 (or (not (= lt!2056140 lt!2056156)) (not lt!2056140)))))

(declare-fun isDefined!11420 (Option!14512) Bool)

(assert (=> b!4977875 (= lt!2056156 (isDefined!11420 lt!2056152))))

(declare-fun isDefined!11421 (Option!14511) Bool)

(assert (=> b!4977875 (= lt!2056140 (isDefined!11421 lt!2056147))))

(declare-fun maxPrefixOneRule!3662 (LexerInterface!8034 Rule!16684 List!57680) Option!14512)

(assert (=> b!4977875 (= lt!2056152 (maxPrefixOneRule!3662 thiss!16165 rule!200 lt!2056149))))

(assert (=> b!4977875 (= lt!2056147 (Some!14510 (tuple2!62435 lt!2056151 (_2!34522 lt!2056139))))))

(assert (=> b!4977875 (= lt!2056151 (Token!15349 lt!2056148 rule!200 lt!2056153 lt!2056150))))

(declare-fun size!38175 (BalanceConc!29818) Int)

(assert (=> b!4977875 (= lt!2056153 (size!38175 (_1!34522 lt!2056139)))))

(assert (=> b!4977875 (= lt!2056148 (apply!13933 (transformation!8442 rule!200) (_1!34522 lt!2056139)))))

(declare-fun lt!2056143 () Unit!148562)

(declare-fun ForallOf!1256 (Int BalanceConc!29818) Unit!148562)

(assert (=> b!4977875 (= lt!2056143 (ForallOf!1256 lambda!247724 lt!2056141))))

(declare-fun seqFromList!6067 (List!57680) BalanceConc!29818)

(assert (=> b!4977875 (= lt!2056141 (seqFromList!6067 lt!2056150))))

(declare-fun list!18434 (BalanceConc!29818) List!57680)

(assert (=> b!4977875 (= lt!2056150 (list!18434 (_1!34522 lt!2056139)))))

(declare-fun lt!2056155 () Unit!148562)

(assert (=> b!4977875 (= lt!2056155 (ForallOf!1256 lambda!247724 (_1!34522 lt!2056139)))))

(declare-fun res!2125039 () Bool)

(assert (=> b!4977876 (=> res!2125039 e!3111340)))

(declare-fun Forall!1792 (Int) Bool)

(assert (=> b!4977876 (= res!2125039 (not (Forall!1792 lambda!247724)))))

(declare-fun res!2125041 () Bool)

(assert (=> start!525182 (=> (not res!2125041) (not e!3111331))))

(get-info :version)

(assert (=> start!525182 (= res!2125041 ((_ is Lexer!8032) thiss!16165))))

(assert (=> start!525182 e!3111331))

(assert (=> start!525182 true))

(assert (=> start!525182 e!3111343))

(declare-fun inv!75335 (BalanceConc!29818) Bool)

(assert (=> start!525182 (and (inv!75335 totalInput!520) e!3111341)))

(assert (=> start!525182 (and (inv!75335 input!1580) e!3111339)))

(declare-fun b!4977870 () Bool)

(declare-fun res!2125043 () Bool)

(assert (=> b!4977870 (=> res!2125043 e!3111337)))

(assert (=> b!4977870 (= res!2125043 (not (= (list!18434 lt!2056141) lt!2056150)))))

(declare-fun b!4977877 () Bool)

(assert (=> b!4977877 (= e!3111336 lt!2056156)))

(declare-fun b!4977878 () Bool)

(assert (=> b!4977878 (= e!3111331 e!3111342)))

(declare-fun res!2125045 () Bool)

(assert (=> b!4977878 (=> (not res!2125045) (not e!3111342))))

(declare-fun isSuffix!1241 (List!57680 List!57680) Bool)

(assert (=> b!4977878 (= res!2125045 (isSuffix!1241 lt!2056149 (list!18434 totalInput!520)))))

(assert (=> b!4977878 (= lt!2056149 (list!18434 input!1580))))

(assert (= (and start!525182 res!2125041) b!4977869))

(assert (= (and b!4977869 res!2125046) b!4977878))

(assert (= (and b!4977878 res!2125045) b!4977873))

(assert (= (and b!4977873 res!2125036) b!4977871))

(assert (= (and b!4977871 (not res!2125040)) b!4977863))

(assert (= (and b!4977871 (not res!2125042)) b!4977876))

(assert (= (and b!4977876 (not res!2125039)) b!4977875))

(assert (= (and b!4977875 (not res!2125038)) b!4977870))

(assert (= (and b!4977870 (not res!2125043)) b!4977868))

(assert (= (and b!4977868 (not res!2125044)) b!4977865))

(assert (= (and b!4977865 (not res!2125047)) b!4977864))

(assert (= (and b!4977864 (not res!2125037)) b!4977877))

(assert (= b!4977874 b!4977867))

(assert (= start!525182 b!4977874))

(assert (= start!525182 b!4977872))

(assert (= start!525182 b!4977866))

(declare-fun m!6008388 () Bool)

(assert (=> b!4977864 m!6008388))

(declare-fun m!6008390 () Bool)

(assert (=> b!4977876 m!6008390))

(declare-fun m!6008392 () Bool)

(assert (=> b!4977866 m!6008392))

(declare-fun m!6008394 () Bool)

(assert (=> b!4977868 m!6008394))

(declare-fun m!6008396 () Bool)

(assert (=> b!4977868 m!6008396))

(declare-fun m!6008398 () Bool)

(assert (=> b!4977871 m!6008398))

(declare-fun m!6008400 () Bool)

(assert (=> b!4977871 m!6008400))

(declare-fun m!6008402 () Bool)

(assert (=> b!4977871 m!6008402))

(declare-fun m!6008404 () Bool)

(assert (=> b!4977871 m!6008404))

(assert (=> b!4977871 m!6008400))

(declare-fun m!6008406 () Bool)

(assert (=> b!4977871 m!6008406))

(declare-fun m!6008408 () Bool)

(assert (=> b!4977871 m!6008408))

(assert (=> b!4977871 m!6008402))

(declare-fun m!6008410 () Bool)

(assert (=> b!4977871 m!6008410))

(declare-fun m!6008412 () Bool)

(assert (=> b!4977878 m!6008412))

(assert (=> b!4977878 m!6008412))

(declare-fun m!6008414 () Bool)

(assert (=> b!4977878 m!6008414))

(declare-fun m!6008416 () Bool)

(assert (=> b!4977878 m!6008416))

(declare-fun m!6008418 () Bool)

(assert (=> b!4977874 m!6008418))

(declare-fun m!6008420 () Bool)

(assert (=> b!4977874 m!6008420))

(declare-fun m!6008422 () Bool)

(assert (=> b!4977869 m!6008422))

(declare-fun m!6008424 () Bool)

(assert (=> b!4977865 m!6008424))

(declare-fun m!6008426 () Bool)

(assert (=> start!525182 m!6008426))

(declare-fun m!6008428 () Bool)

(assert (=> start!525182 m!6008428))

(declare-fun m!6008430 () Bool)

(assert (=> b!4977863 m!6008430))

(declare-fun m!6008432 () Bool)

(assert (=> b!4977870 m!6008432))

(declare-fun m!6008434 () Bool)

(assert (=> b!4977873 m!6008434))

(declare-fun m!6008436 () Bool)

(assert (=> b!4977873 m!6008436))

(declare-fun m!6008438 () Bool)

(assert (=> b!4977872 m!6008438))

(declare-fun m!6008440 () Bool)

(assert (=> b!4977875 m!6008440))

(declare-fun m!6008442 () Bool)

(assert (=> b!4977875 m!6008442))

(declare-fun m!6008444 () Bool)

(assert (=> b!4977875 m!6008444))

(declare-fun m!6008446 () Bool)

(assert (=> b!4977875 m!6008446))

(declare-fun m!6008448 () Bool)

(assert (=> b!4977875 m!6008448))

(declare-fun m!6008450 () Bool)

(assert (=> b!4977875 m!6008450))

(declare-fun m!6008452 () Bool)

(assert (=> b!4977875 m!6008452))

(declare-fun m!6008454 () Bool)

(assert (=> b!4977875 m!6008454))

(declare-fun m!6008456 () Bool)

(assert (=> b!4977875 m!6008456))

(check-sat (not b!4977866) (not b!4977871) b_and!349481 (not b_next!133857) (not b!4977875) (not start!525182) (not b!4977869) b_and!349479 (not b!4977873) (not b!4977876) (not b!4977865) (not b_next!133859) (not b!4977863) (not b!4977868) (not b!4977878) (not b!4977870) (not b!4977864) (not b!4977872) (not b!4977874))
(check-sat b_and!349481 b_and!349479 (not b_next!133859) (not b_next!133857))
