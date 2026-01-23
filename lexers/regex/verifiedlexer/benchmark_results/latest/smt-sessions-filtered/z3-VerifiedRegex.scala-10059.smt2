; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526726 () Bool)

(assert start!526726)

(declare-fun b!4985706 () Bool)

(declare-fun b_free!133179 () Bool)

(declare-fun b_next!133969 () Bool)

(assert (=> b!4985706 (= b_free!133179 (not b_next!133969))))

(declare-fun tp!1397325 () Bool)

(declare-fun b_and!349903 () Bool)

(assert (=> b!4985706 (= tp!1397325 b_and!349903)))

(declare-fun b_free!133181 () Bool)

(declare-fun b_next!133971 () Bool)

(assert (=> b!4985706 (= b_free!133181 (not b_next!133971))))

(declare-fun tp!1397326 () Bool)

(declare-fun b_and!349905 () Bool)

(assert (=> b!4985706 (= tp!1397326 b_and!349905)))

(declare-fun b!4985726 () Bool)

(declare-fun e!3116035 () Bool)

(assert (=> b!4985726 (= e!3116035 true)))

(declare-fun b!4985725 () Bool)

(declare-fun e!3116034 () Bool)

(assert (=> b!4985725 (= e!3116034 e!3116035)))

(declare-fun b!4985711 () Bool)

(assert (=> b!4985711 e!3116034))

(assert (= b!4985725 b!4985726))

(assert (= b!4985711 b!4985725))

(declare-fun lambda!248036 () Int)

(declare-datatypes ((C!27656 0))(
  ( (C!27657 (val!23194 Int)) )
))
(declare-datatypes ((List!57736 0))(
  ( (Nil!57612) (Cons!57612 (h!64060 C!27656) (t!369964 List!57736)) )
))
(declare-datatypes ((IArray!30505 0))(
  ( (IArray!30506 (innerList!15310 List!57736)) )
))
(declare-datatypes ((List!57737 0))(
  ( (Nil!57613) (Cons!57613 (h!64061 (_ BitVec 16)) (t!369965 List!57737)) )
))
(declare-datatypes ((Regex!13703 0))(
  ( (ElementMatch!13703 (c!850763 C!27656)) (Concat!22483 (regOne!27918 Regex!13703) (regTwo!27918 Regex!13703)) (EmptyExpr!13703) (Star!13703 (reg!14032 Regex!13703)) (EmptyLang!13703) (Union!13703 (regOne!27919 Regex!13703) (regTwo!27919 Regex!13703)) )
))
(declare-datatypes ((Conc!15222 0))(
  ( (Node!15222 (left!42143 Conc!15222) (right!42473 Conc!15222) (csize!30674 Int) (cheight!15433 Int)) (Leaf!25282 (xs!18548 IArray!30505) (csize!30675 Int)) (Empty!15222) )
))
(declare-datatypes ((BalanceConc!29874 0))(
  ( (BalanceConc!29875 (c!850764 Conc!15222)) )
))
(declare-datatypes ((TokenValue!8780 0))(
  ( (FloatLiteralValue!17560 (text!61905 List!57737)) (TokenValueExt!8779 (__x!34853 Int)) (Broken!43900 (value!270789 List!57737)) (Object!8903) (End!8780) (Def!8780) (Underscore!8780) (Match!8780) (Else!8780) (Error!8780) (Case!8780) (If!8780) (Extends!8780) (Abstract!8780) (Class!8780) (Val!8780) (DelimiterValue!17560 (del!8840 List!57737)) (KeywordValue!8786 (value!270790 List!57737)) (CommentValue!17560 (value!270791 List!57737)) (WhitespaceValue!17560 (value!270792 List!57737)) (IndentationValue!8780 (value!270793 List!57737)) (String!65773) (Int32!8780) (Broken!43901 (value!270794 List!57737)) (Boolean!8781) (Unit!148746) (OperatorValue!8783 (op!8840 List!57737)) (IdentifierValue!17560 (value!270795 List!57737)) (IdentifierValue!17561 (value!270796 List!57737)) (WhitespaceValue!17561 (value!270797 List!57737)) (True!17560) (False!17560) (Broken!43902 (value!270798 List!57737)) (Broken!43903 (value!270799 List!57737)) (True!17561) (RightBrace!8780) (RightBracket!8780) (Colon!8780) (Null!8780) (Comma!8780) (LeftBracket!8780) (False!17561) (LeftBrace!8780) (ImaginaryLiteralValue!8780 (text!61906 List!57737)) (StringLiteralValue!26340 (value!270800 List!57737)) (EOFValue!8780 (value!270801 List!57737)) (IdentValue!8780 (value!270802 List!57737)) (DelimiterValue!17561 (value!270803 List!57737)) (DedentValue!8780 (value!270804 List!57737)) (NewLineValue!8780 (value!270805 List!57737)) (IntegerValue!26340 (value!270806 (_ BitVec 32)) (text!61907 List!57737)) (IntegerValue!26341 (value!270807 Int) (text!61908 List!57737)) (Times!8780) (Or!8780) (Equal!8780) (Minus!8780) (Broken!43904 (value!270808 List!57737)) (And!8780) (Div!8780) (LessEqual!8780) (Mod!8780) (Concat!22484) (Not!8780) (Plus!8780) (SpaceValue!8780 (value!270809 List!57737)) (IntegerValue!26342 (value!270810 Int) (text!61909 List!57737)) (StringLiteralValue!26341 (text!61910 List!57737)) (FloatLiteralValue!17561 (text!61911 List!57737)) (BytesLiteralValue!8780 (value!270811 List!57737)) (CommentValue!17561 (value!270812 List!57737)) (StringLiteralValue!26342 (value!270813 List!57737)) (ErrorTokenValue!8780 (msg!8841 List!57737)) )
))
(declare-datatypes ((String!65774 0))(
  ( (String!65775 (value!270814 String)) )
))
(declare-datatypes ((TokenValueInjection!16868 0))(
  ( (TokenValueInjection!16869 (toValue!11473 Int) (toChars!11332 Int)) )
))
(declare-datatypes ((Rule!16740 0))(
  ( (Rule!16741 (regex!8470 Regex!13703) (tag!9334 String!65774) (isSeparator!8470 Bool) (transformation!8470 TokenValueInjection!16868)) )
))
(declare-fun rule!200 () Rule!16740)

(declare-fun order!26609 () Int)

(declare-fun order!26611 () Int)

(declare-fun dynLambda!23445 (Int Int) Int)

(declare-fun dynLambda!23446 (Int Int) Int)

(assert (=> b!4985726 (< (dynLambda!23445 order!26609 (toValue!11473 (transformation!8470 rule!200))) (dynLambda!23446 order!26611 lambda!248036))))

(declare-fun order!26613 () Int)

(declare-fun dynLambda!23447 (Int Int) Int)

(assert (=> b!4985726 (< (dynLambda!23447 order!26613 (toChars!11332 (transformation!8470 rule!200))) (dynLambda!23446 order!26611 lambda!248036))))

(declare-fun b!4985702 () Bool)

(declare-fun res!2128359 () Bool)

(declare-fun e!3116018 () Bool)

(assert (=> b!4985702 (=> res!2128359 e!3116018)))

(declare-fun lt!2060688 () Bool)

(assert (=> b!4985702 (= res!2128359 (not lt!2060688))))

(declare-fun b!4985703 () Bool)

(declare-fun e!3116020 () Bool)

(declare-fun e!3116023 () Bool)

(assert (=> b!4985703 (= e!3116020 (not e!3116023))))

(declare-fun res!2128355 () Bool)

(assert (=> b!4985703 (=> res!2128355 e!3116023)))

(declare-fun semiInverseModEq!3763 (Int Int) Bool)

(assert (=> b!4985703 (= res!2128355 (not (semiInverseModEq!3763 (toChars!11332 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200)))))))

(declare-datatypes ((Unit!148747 0))(
  ( (Unit!148748) )
))
(declare-fun lt!2060684 () Unit!148747)

(declare-fun lemmaInv!1393 (TokenValueInjection!16868) Unit!148747)

(assert (=> b!4985703 (= lt!2060684 (lemmaInv!1393 (transformation!8470 rule!200)))))

(declare-fun e!3116022 () Bool)

(assert (=> b!4985703 e!3116022))

(declare-fun res!2128361 () Bool)

(assert (=> b!4985703 (=> res!2128361 e!3116022)))

(declare-datatypes ((tuple2!62640 0))(
  ( (tuple2!62641 (_1!34623 List!57736) (_2!34623 List!57736)) )
))
(declare-fun lt!2060675 () tuple2!62640)

(declare-fun isEmpty!31156 (List!57736) Bool)

(assert (=> b!4985703 (= res!2128361 (isEmpty!31156 (_1!34623 lt!2060675)))))

(declare-fun lt!2060683 () List!57736)

(declare-fun findLongestMatchInner!1914 (Regex!13703 List!57736 Int List!57736 List!57736 Int) tuple2!62640)

(declare-fun size!38265 (List!57736) Int)

(assert (=> b!4985703 (= lt!2060675 (findLongestMatchInner!1914 (regex!8470 rule!200) Nil!57612 (size!38265 Nil!57612) lt!2060683 lt!2060683 (size!38265 lt!2060683)))))

(declare-fun lt!2060677 () Unit!148747)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1875 (Regex!13703 List!57736) Unit!148747)

(assert (=> b!4985703 (= lt!2060677 (longestMatchIsAcceptedByMatchOrIsEmpty!1875 (regex!8470 rule!200) lt!2060683))))

(declare-fun b!4985704 () Bool)

(declare-fun e!3116019 () Bool)

(declare-fun e!3116026 () Bool)

(assert (=> b!4985704 (= e!3116019 e!3116026)))

(declare-fun res!2128362 () Bool)

(assert (=> b!4985704 (=> res!2128362 e!3116026)))

(declare-fun lt!2060686 () List!57736)

(declare-datatypes ((Token!15396 0))(
  ( (Token!15397 (value!270815 TokenValue!8780) (rule!11736 Rule!16740) (size!38266 Int) (originalCharacters!8729 List!57736)) )
))
(declare-datatypes ((tuple2!62642 0))(
  ( (tuple2!62643 (_1!34624 Token!15396) (_2!34624 List!57736)) )
))
(declare-fun lt!2060680 () tuple2!62642)

(declare-fun lt!2060689 () Int)

(declare-fun lt!2060682 () Token!15396)

(declare-fun lt!2060674 () TokenValue!8780)

(assert (=> b!4985704 (= res!2128362 (or (not (= (value!270815 (_1!34624 lt!2060680)) lt!2060674)) (not (= (rule!11736 (_1!34624 lt!2060680)) rule!200)) (not (= (size!38266 (_1!34624 lt!2060680)) lt!2060689)) (not (= (originalCharacters!8729 (_1!34624 lt!2060680)) lt!2060686)) (not (= lt!2060682 (_1!34624 lt!2060680)))))))

(declare-datatypes ((Option!14559 0))(
  ( (None!14558) (Some!14558 (v!50555 tuple2!62642)) )
))
(declare-fun lt!2060687 () Option!14559)

(declare-fun get!20044 (Option!14559) tuple2!62642)

(assert (=> b!4985704 (= lt!2060680 (get!20044 lt!2060687))))

(declare-fun b!4985705 () Bool)

(declare-fun e!3116024 () Bool)

(declare-fun input!1580 () BalanceConc!29874)

(declare-fun tp!1397328 () Bool)

(declare-fun inv!75517 (Conc!15222) Bool)

(assert (=> b!4985705 (= e!3116024 (and (inv!75517 (c!850764 input!1580)) tp!1397328))))

(declare-fun e!3116021 () Bool)

(assert (=> b!4985706 (= e!3116021 (and tp!1397325 tp!1397326))))

(declare-fun b!4985707 () Bool)

(declare-fun e!3116017 () Bool)

(declare-fun totalInput!520 () BalanceConc!29874)

(declare-fun tp!1397324 () Bool)

(assert (=> b!4985707 (= e!3116017 (and (inv!75517 (c!850764 totalInput!520)) tp!1397324))))

(declare-fun b!4985709 () Bool)

(declare-fun e!3116027 () Bool)

(assert (=> b!4985709 (= e!3116026 e!3116027)))

(declare-fun res!2128367 () Bool)

(assert (=> b!4985709 (=> res!2128367 e!3116027)))

(declare-datatypes ((tuple2!62644 0))(
  ( (tuple2!62645 (_1!34625 Token!15396) (_2!34625 BalanceConc!29874)) )
))
(declare-fun lt!2060690 () tuple2!62644)

(assert (=> b!4985709 (= res!2128367 (not (= (_1!34625 lt!2060690) (_1!34624 lt!2060680))))))

(declare-datatypes ((Option!14560 0))(
  ( (None!14559) (Some!14559 (v!50556 tuple2!62644)) )
))
(declare-fun lt!2060678 () Option!14560)

(declare-fun get!20045 (Option!14560) tuple2!62644)

(assert (=> b!4985709 (= lt!2060690 (get!20045 lt!2060678))))

(declare-fun b!4985710 () Bool)

(declare-fun res!2128363 () Bool)

(declare-fun e!3116016 () Bool)

(assert (=> b!4985710 (=> (not res!2128363) (not e!3116016))))

(declare-datatypes ((LexerInterface!8062 0))(
  ( (LexerInterfaceExt!8059 (__x!34854 Int)) (Lexer!8060) )
))
(declare-fun thiss!16165 () LexerInterface!8062)

(declare-fun ruleValid!3878 (LexerInterface!8062 Rule!16740) Bool)

(assert (=> b!4985710 (= res!2128363 (ruleValid!3878 thiss!16165 rule!200))))

(declare-fun res!2128358 () Bool)

(assert (=> b!4985711 (=> res!2128358 e!3116023)))

(declare-fun Forall!1820 (Int) Bool)

(assert (=> b!4985711 (= res!2128358 (not (Forall!1820 lambda!248036)))))

(declare-fun b!4985712 () Bool)

(declare-fun res!2128360 () Bool)

(assert (=> b!4985712 (=> res!2128360 e!3116018)))

(declare-fun lt!2060679 () BalanceConc!29874)

(declare-fun list!18490 (BalanceConc!29874) List!57736)

(assert (=> b!4985712 (= res!2128360 (not (= (list!18490 lt!2060679) lt!2060686)))))

(declare-fun b!4985713 () Bool)

(declare-fun matchR!6697 (Regex!13703 List!57736) Bool)

(assert (=> b!4985713 (= e!3116022 (matchR!6697 (regex!8470 rule!200) (_1!34623 lt!2060675)))))

(declare-fun b!4985714 () Bool)

(declare-fun e!3116025 () Bool)

(assert (=> b!4985714 (= e!3116025 e!3116020)))

(declare-fun res!2128356 () Bool)

(assert (=> b!4985714 (=> (not res!2128356) (not e!3116020))))

(declare-datatypes ((tuple2!62646 0))(
  ( (tuple2!62647 (_1!34626 BalanceConc!29874) (_2!34626 BalanceConc!29874)) )
))
(declare-fun lt!2060676 () tuple2!62646)

(declare-fun isEmpty!31157 (BalanceConc!29874) Bool)

(assert (=> b!4985714 (= res!2128356 (not (isEmpty!31157 (_1!34626 lt!2060676))))))

(declare-fun findLongestMatchWithZipperSequenceV2!233 (Regex!13703 BalanceConc!29874 BalanceConc!29874) tuple2!62646)

(assert (=> b!4985714 (= lt!2060676 (findLongestMatchWithZipperSequenceV2!233 (regex!8470 rule!200) input!1580 totalInput!520))))

(declare-fun b!4985715 () Bool)

(assert (=> b!4985715 (= e!3116018 e!3116019)))

(declare-fun res!2128365 () Bool)

(assert (=> b!4985715 (=> res!2128365 e!3116019)))

(declare-fun apply!13957 (TokenValueInjection!16868 BalanceConc!29874) TokenValue!8780)

(assert (=> b!4985715 (= res!2128365 (not (= (apply!13957 (transformation!8470 rule!200) lt!2060679) lt!2060674)))))

(declare-fun lt!2060681 () Unit!148747)

(declare-fun lemmaEqSameImage!1209 (TokenValueInjection!16868 BalanceConc!29874 BalanceConc!29874) Unit!148747)

(assert (=> b!4985715 (= lt!2060681 (lemmaEqSameImage!1209 (transformation!8470 rule!200) (_1!34626 lt!2060676) lt!2060679))))

(declare-fun b!4985716 () Bool)

(assert (=> b!4985716 (= e!3116023 e!3116018)))

(declare-fun res!2128366 () Bool)

(assert (=> b!4985716 (=> res!2128366 e!3116018)))

(declare-fun isDefined!11468 (Option!14559) Bool)

(assert (=> b!4985716 (= res!2128366 (not (= lt!2060688 (isDefined!11468 lt!2060687))))))

(declare-fun isDefined!11469 (Option!14560) Bool)

(assert (=> b!4985716 (= lt!2060688 (isDefined!11469 lt!2060678))))

(declare-fun maxPrefixOneRule!3686 (LexerInterface!8062 Rule!16740 List!57736) Option!14559)

(assert (=> b!4985716 (= lt!2060687 (maxPrefixOneRule!3686 thiss!16165 rule!200 lt!2060683))))

(assert (=> b!4985716 (= lt!2060678 (Some!14559 (tuple2!62645 lt!2060682 (_2!34626 lt!2060676))))))

(assert (=> b!4985716 (= lt!2060682 (Token!15397 lt!2060674 rule!200 lt!2060689 lt!2060686))))

(declare-fun size!38267 (BalanceConc!29874) Int)

(assert (=> b!4985716 (= lt!2060689 (size!38267 (_1!34626 lt!2060676)))))

(assert (=> b!4985716 (= lt!2060674 (apply!13957 (transformation!8470 rule!200) (_1!34626 lt!2060676)))))

(declare-fun lt!2060673 () Unit!148747)

(declare-fun ForallOf!1280 (Int BalanceConc!29874) Unit!148747)

(assert (=> b!4985716 (= lt!2060673 (ForallOf!1280 lambda!248036 lt!2060679))))

(declare-fun seqFromList!6091 (List!57736) BalanceConc!29874)

(assert (=> b!4985716 (= lt!2060679 (seqFromList!6091 lt!2060686))))

(assert (=> b!4985716 (= lt!2060686 (list!18490 (_1!34626 lt!2060676)))))

(declare-fun lt!2060685 () Unit!148747)

(assert (=> b!4985716 (= lt!2060685 (ForallOf!1280 lambda!248036 (_1!34626 lt!2060676)))))

(declare-fun res!2128364 () Bool)

(assert (=> start!526726 (=> (not res!2128364) (not e!3116016))))

(get-info :version)

(assert (=> start!526726 (= res!2128364 ((_ is Lexer!8060) thiss!16165))))

(assert (=> start!526726 e!3116016))

(assert (=> start!526726 true))

(declare-fun e!3116028 () Bool)

(assert (=> start!526726 e!3116028))

(declare-fun inv!75518 (BalanceConc!29874) Bool)

(assert (=> start!526726 (and (inv!75518 totalInput!520) e!3116017)))

(assert (=> start!526726 (and (inv!75518 input!1580) e!3116024)))

(declare-fun b!4985708 () Bool)

(declare-fun tp!1397327 () Bool)

(declare-fun inv!75513 (String!65774) Bool)

(declare-fun inv!75519 (TokenValueInjection!16868) Bool)

(assert (=> b!4985708 (= e!3116028 (and tp!1397327 (inv!75513 (tag!9334 rule!200)) (inv!75519 (transformation!8470 rule!200)) e!3116021))))

(declare-fun b!4985717 () Bool)

(assert (=> b!4985717 (= e!3116027 (= (list!18490 (_2!34625 lt!2060690)) (_2!34624 lt!2060680)))))

(declare-fun b!4985718 () Bool)

(assert (=> b!4985718 (= e!3116016 e!3116025)))

(declare-fun res!2128357 () Bool)

(assert (=> b!4985718 (=> (not res!2128357) (not e!3116025))))

(declare-fun isSuffix!1269 (List!57736 List!57736) Bool)

(assert (=> b!4985718 (= res!2128357 (isSuffix!1269 lt!2060683 (list!18490 totalInput!520)))))

(assert (=> b!4985718 (= lt!2060683 (list!18490 input!1580))))

(assert (= (and start!526726 res!2128364) b!4985710))

(assert (= (and b!4985710 res!2128363) b!4985718))

(assert (= (and b!4985718 res!2128357) b!4985714))

(assert (= (and b!4985714 res!2128356) b!4985703))

(assert (= (and b!4985703 (not res!2128361)) b!4985713))

(assert (= (and b!4985703 (not res!2128355)) b!4985711))

(assert (= (and b!4985711 (not res!2128358)) b!4985716))

(assert (= (and b!4985716 (not res!2128366)) b!4985702))

(assert (= (and b!4985702 (not res!2128359)) b!4985712))

(assert (= (and b!4985712 (not res!2128360)) b!4985715))

(assert (= (and b!4985715 (not res!2128365)) b!4985704))

(assert (= (and b!4985704 (not res!2128362)) b!4985709))

(assert (= (and b!4985709 (not res!2128367)) b!4985717))

(assert (= b!4985708 b!4985706))

(assert (= start!526726 b!4985708))

(assert (= start!526726 b!4985707))

(assert (= start!526726 b!4985705))

(declare-fun m!6017418 () Bool)

(assert (=> b!4985711 m!6017418))

(declare-fun m!6017420 () Bool)

(assert (=> b!4985710 m!6017420))

(declare-fun m!6017422 () Bool)

(assert (=> b!4985717 m!6017422))

(declare-fun m!6017424 () Bool)

(assert (=> b!4985709 m!6017424))

(declare-fun m!6017426 () Bool)

(assert (=> b!4985714 m!6017426))

(declare-fun m!6017428 () Bool)

(assert (=> b!4985714 m!6017428))

(declare-fun m!6017430 () Bool)

(assert (=> b!4985707 m!6017430))

(declare-fun m!6017432 () Bool)

(assert (=> b!4985712 m!6017432))

(declare-fun m!6017434 () Bool)

(assert (=> b!4985705 m!6017434))

(declare-fun m!6017436 () Bool)

(assert (=> b!4985713 m!6017436))

(declare-fun m!6017438 () Bool)

(assert (=> start!526726 m!6017438))

(declare-fun m!6017440 () Bool)

(assert (=> start!526726 m!6017440))

(declare-fun m!6017442 () Bool)

(assert (=> b!4985703 m!6017442))

(declare-fun m!6017444 () Bool)

(assert (=> b!4985703 m!6017444))

(declare-fun m!6017446 () Bool)

(assert (=> b!4985703 m!6017446))

(declare-fun m!6017448 () Bool)

(assert (=> b!4985703 m!6017448))

(assert (=> b!4985703 m!6017446))

(assert (=> b!4985703 m!6017444))

(declare-fun m!6017450 () Bool)

(assert (=> b!4985703 m!6017450))

(declare-fun m!6017452 () Bool)

(assert (=> b!4985703 m!6017452))

(declare-fun m!6017454 () Bool)

(assert (=> b!4985703 m!6017454))

(declare-fun m!6017456 () Bool)

(assert (=> b!4985708 m!6017456))

(declare-fun m!6017458 () Bool)

(assert (=> b!4985708 m!6017458))

(declare-fun m!6017460 () Bool)

(assert (=> b!4985704 m!6017460))

(declare-fun m!6017462 () Bool)

(assert (=> b!4985715 m!6017462))

(declare-fun m!6017464 () Bool)

(assert (=> b!4985715 m!6017464))

(declare-fun m!6017466 () Bool)

(assert (=> b!4985716 m!6017466))

(declare-fun m!6017468 () Bool)

(assert (=> b!4985716 m!6017468))

(declare-fun m!6017470 () Bool)

(assert (=> b!4985716 m!6017470))

(declare-fun m!6017472 () Bool)

(assert (=> b!4985716 m!6017472))

(declare-fun m!6017474 () Bool)

(assert (=> b!4985716 m!6017474))

(declare-fun m!6017476 () Bool)

(assert (=> b!4985716 m!6017476))

(declare-fun m!6017478 () Bool)

(assert (=> b!4985716 m!6017478))

(declare-fun m!6017480 () Bool)

(assert (=> b!4985716 m!6017480))

(declare-fun m!6017482 () Bool)

(assert (=> b!4985716 m!6017482))

(declare-fun m!6017484 () Bool)

(assert (=> b!4985718 m!6017484))

(assert (=> b!4985718 m!6017484))

(declare-fun m!6017486 () Bool)

(assert (=> b!4985718 m!6017486))

(declare-fun m!6017488 () Bool)

(assert (=> b!4985718 m!6017488))

(check-sat (not b!4985713) (not b!4985704) (not b!4985705) (not b!4985718) (not b!4985715) (not b!4985710) (not b_next!133969) (not b!4985703) (not start!526726) (not b!4985717) b_and!349905 b_and!349903 (not b!4985712) (not b!4985714) (not b!4985707) (not b!4985716) (not b!4985711) (not b!4985709) (not b_next!133971) (not b!4985708))
(check-sat b_and!349905 b_and!349903 (not b_next!133971) (not b_next!133969))
(get-model)

(declare-fun d!1605530 () Bool)

(declare-fun dynLambda!23451 (Int BalanceConc!29874) TokenValue!8780)

(assert (=> d!1605530 (= (apply!13957 (transformation!8470 rule!200) lt!2060679) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) lt!2060679))))

(declare-fun b_lambda!198299 () Bool)

(assert (=> (not b_lambda!198299) (not d!1605530)))

(declare-fun t!369969 () Bool)

(declare-fun tb!261729 () Bool)

(assert (=> (and b!4985706 (= (toValue!11473 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))) t!369969) tb!261729))

(declare-fun result!327134 () Bool)

(declare-fun inv!21 (TokenValue!8780) Bool)

(assert (=> tb!261729 (= result!327134 (inv!21 (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) lt!2060679)))))

(declare-fun m!6017514 () Bool)

(assert (=> tb!261729 m!6017514))

(assert (=> d!1605530 t!369969))

(declare-fun b_and!349909 () Bool)

(assert (= b_and!349903 (and (=> t!369969 result!327134) b_and!349909)))

(declare-fun m!6017516 () Bool)

(assert (=> d!1605530 m!6017516))

(assert (=> b!4985715 d!1605530))

(declare-fun b!4985764 () Bool)

(declare-fun e!3116058 () Bool)

(assert (=> b!4985764 (= e!3116058 true)))

(declare-fun d!1605532 () Bool)

(assert (=> d!1605532 e!3116058))

(assert (= d!1605532 b!4985764))

(declare-fun order!26615 () Int)

(declare-fun lambda!248039 () Int)

(declare-fun dynLambda!23452 (Int Int) Int)

(assert (=> b!4985764 (< (dynLambda!23445 order!26609 (toValue!11473 (transformation!8470 rule!200))) (dynLambda!23452 order!26615 lambda!248039))))

(assert (=> b!4985764 (< (dynLambda!23447 order!26613 (toChars!11332 (transformation!8470 rule!200))) (dynLambda!23452 order!26615 lambda!248039))))

(assert (=> d!1605532 (= (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) (_1!34626 lt!2060676)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) lt!2060679))))

(declare-fun lt!2060710 () Unit!148747)

(declare-fun Forall2of!497 (Int BalanceConc!29874 BalanceConc!29874) Unit!148747)

(assert (=> d!1605532 (= lt!2060710 (Forall2of!497 lambda!248039 (_1!34626 lt!2060676) lt!2060679))))

(assert (=> d!1605532 (= (list!18490 (_1!34626 lt!2060676)) (list!18490 lt!2060679))))

(assert (=> d!1605532 (= (lemmaEqSameImage!1209 (transformation!8470 rule!200) (_1!34626 lt!2060676) lt!2060679) lt!2060710)))

(declare-fun b_lambda!198301 () Bool)

(assert (=> (not b_lambda!198301) (not d!1605532)))

(declare-fun t!369971 () Bool)

(declare-fun tb!261731 () Bool)

(assert (=> (and b!4985706 (= (toValue!11473 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))) t!369971) tb!261731))

(declare-fun result!327138 () Bool)

(assert (=> tb!261731 (= result!327138 (inv!21 (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) (_1!34626 lt!2060676))))))

(declare-fun m!6017524 () Bool)

(assert (=> tb!261731 m!6017524))

(assert (=> d!1605532 t!369971))

(declare-fun b_and!349911 () Bool)

(assert (= b_and!349909 (and (=> t!369971 result!327138) b_and!349911)))

(declare-fun b_lambda!198303 () Bool)

(assert (=> (not b_lambda!198303) (not d!1605532)))

(assert (=> d!1605532 t!369969))

(declare-fun b_and!349913 () Bool)

(assert (= b_and!349911 (and (=> t!369969 result!327134) b_and!349913)))

(assert (=> d!1605532 m!6017482))

(assert (=> d!1605532 m!6017432))

(declare-fun m!6017536 () Bool)

(assert (=> d!1605532 m!6017536))

(assert (=> d!1605532 m!6017516))

(declare-fun m!6017544 () Bool)

(assert (=> d!1605532 m!6017544))

(assert (=> b!4985715 d!1605532))

(declare-fun d!1605534 () Bool)

(assert (=> d!1605534 (= (get!20044 lt!2060687) (v!50555 lt!2060687))))

(assert (=> b!4985704 d!1605534))

(declare-fun d!1605538 () Bool)

(declare-fun lt!2060720 () Bool)

(assert (=> d!1605538 (= lt!2060720 (isEmpty!31156 (list!18490 (_1!34626 lt!2060676))))))

(declare-fun isEmpty!31161 (Conc!15222) Bool)

(assert (=> d!1605538 (= lt!2060720 (isEmpty!31161 (c!850764 (_1!34626 lt!2060676))))))

(assert (=> d!1605538 (= (isEmpty!31157 (_1!34626 lt!2060676)) lt!2060720)))

(declare-fun bs!1184614 () Bool)

(assert (= bs!1184614 d!1605538))

(assert (=> bs!1184614 m!6017482))

(assert (=> bs!1184614 m!6017482))

(declare-fun m!6017564 () Bool)

(assert (=> bs!1184614 m!6017564))

(declare-fun m!6017566 () Bool)

(assert (=> bs!1184614 m!6017566))

(assert (=> b!4985714 d!1605538))

(declare-fun d!1605542 () Bool)

(declare-fun lt!2060733 () tuple2!62646)

(declare-fun findLongestMatch!1728 (Regex!13703 List!57736) tuple2!62640)

(assert (=> d!1605542 (= (tuple2!62641 (list!18490 (_1!34626 lt!2060733)) (list!18490 (_2!34626 lt!2060733))) (findLongestMatch!1728 (regex!8470 rule!200) (list!18490 input!1580)))))

(declare-fun choose!36857 (Regex!13703 BalanceConc!29874 BalanceConc!29874) tuple2!62646)

(assert (=> d!1605542 (= lt!2060733 (choose!36857 (regex!8470 rule!200) input!1580 totalInput!520))))

(declare-fun validRegex!6002 (Regex!13703) Bool)

(assert (=> d!1605542 (validRegex!6002 (regex!8470 rule!200))))

(assert (=> d!1605542 (= (findLongestMatchWithZipperSequenceV2!233 (regex!8470 rule!200) input!1580 totalInput!520) lt!2060733)))

(declare-fun bs!1184620 () Bool)

(assert (= bs!1184620 d!1605542))

(declare-fun m!6017600 () Bool)

(assert (=> bs!1184620 m!6017600))

(declare-fun m!6017602 () Bool)

(assert (=> bs!1184620 m!6017602))

(declare-fun m!6017604 () Bool)

(assert (=> bs!1184620 m!6017604))

(declare-fun m!6017606 () Bool)

(assert (=> bs!1184620 m!6017606))

(assert (=> bs!1184620 m!6017488))

(assert (=> bs!1184620 m!6017488))

(declare-fun m!6017608 () Bool)

(assert (=> bs!1184620 m!6017608))

(assert (=> b!4985714 d!1605542))

(declare-fun d!1605566 () Bool)

(assert (=> d!1605566 (= (isEmpty!31156 (_1!34623 lt!2060675)) ((_ is Nil!57612) (_1!34623 lt!2060675)))))

(assert (=> b!4985703 d!1605566))

(declare-fun d!1605568 () Bool)

(declare-fun lt!2060736 () Int)

(assert (=> d!1605568 (>= lt!2060736 0)))

(declare-fun e!3116080 () Int)

(assert (=> d!1605568 (= lt!2060736 e!3116080)))

(declare-fun c!850773 () Bool)

(assert (=> d!1605568 (= c!850773 ((_ is Nil!57612) lt!2060683))))

(assert (=> d!1605568 (= (size!38265 lt!2060683) lt!2060736)))

(declare-fun b!4985794 () Bool)

(assert (=> b!4985794 (= e!3116080 0)))

(declare-fun b!4985795 () Bool)

(assert (=> b!4985795 (= e!3116080 (+ 1 (size!38265 (t!369964 lt!2060683))))))

(assert (= (and d!1605568 c!850773) b!4985794))

(assert (= (and d!1605568 (not c!850773)) b!4985795))

(declare-fun m!6017610 () Bool)

(assert (=> b!4985795 m!6017610))

(assert (=> b!4985703 d!1605568))

(declare-fun d!1605570 () Bool)

(declare-fun e!3116092 () Bool)

(assert (=> d!1605570 e!3116092))

(declare-fun res!2128417 () Bool)

(assert (=> d!1605570 (=> res!2128417 e!3116092)))

(assert (=> d!1605570 (= res!2128417 (isEmpty!31156 (_1!34623 (findLongestMatchInner!1914 (regex!8470 rule!200) Nil!57612 (size!38265 Nil!57612) lt!2060683 lt!2060683 (size!38265 lt!2060683)))))))

(declare-fun lt!2060745 () Unit!148747)

(declare-fun choose!36858 (Regex!13703 List!57736) Unit!148747)

(assert (=> d!1605570 (= lt!2060745 (choose!36858 (regex!8470 rule!200) lt!2060683))))

(assert (=> d!1605570 (validRegex!6002 (regex!8470 rule!200))))

(assert (=> d!1605570 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1875 (regex!8470 rule!200) lt!2060683) lt!2060745)))

(declare-fun b!4985810 () Bool)

(assert (=> b!4985810 (= e!3116092 (matchR!6697 (regex!8470 rule!200) (_1!34623 (findLongestMatchInner!1914 (regex!8470 rule!200) Nil!57612 (size!38265 Nil!57612) lt!2060683 lt!2060683 (size!38265 lt!2060683)))))))

(assert (= (and d!1605570 (not res!2128417)) b!4985810))

(assert (=> d!1605570 m!6017446))

(declare-fun m!6017618 () Bool)

(assert (=> d!1605570 m!6017618))

(declare-fun m!6017620 () Bool)

(assert (=> d!1605570 m!6017620))

(assert (=> d!1605570 m!6017444))

(assert (=> d!1605570 m!6017604))

(assert (=> d!1605570 m!6017444))

(assert (=> d!1605570 m!6017446))

(assert (=> d!1605570 m!6017448))

(assert (=> b!4985810 m!6017444))

(assert (=> b!4985810 m!6017446))

(assert (=> b!4985810 m!6017444))

(assert (=> b!4985810 m!6017446))

(assert (=> b!4985810 m!6017448))

(declare-fun m!6017622 () Bool)

(assert (=> b!4985810 m!6017622))

(assert (=> b!4985703 d!1605570))

(declare-fun d!1605578 () Bool)

(declare-fun lt!2060746 () Int)

(assert (=> d!1605578 (>= lt!2060746 0)))

(declare-fun e!3116093 () Int)

(assert (=> d!1605578 (= lt!2060746 e!3116093)))

(declare-fun c!850777 () Bool)

(assert (=> d!1605578 (= c!850777 ((_ is Nil!57612) Nil!57612))))

(assert (=> d!1605578 (= (size!38265 Nil!57612) lt!2060746)))

(declare-fun b!4985811 () Bool)

(assert (=> b!4985811 (= e!3116093 0)))

(declare-fun b!4985812 () Bool)

(assert (=> b!4985812 (= e!3116093 (+ 1 (size!38265 (t!369964 Nil!57612))))))

(assert (= (and d!1605578 c!850777) b!4985811))

(assert (= (and d!1605578 (not c!850777)) b!4985812))

(declare-fun m!6017624 () Bool)

(assert (=> b!4985812 m!6017624))

(assert (=> b!4985703 d!1605578))

(declare-fun bs!1184621 () Bool)

(declare-fun d!1605580 () Bool)

(assert (= bs!1184621 (and d!1605580 b!4985711)))

(declare-fun lambda!248045 () Int)

(assert (=> bs!1184621 (= lambda!248045 lambda!248036)))

(assert (=> d!1605580 true))

(assert (=> d!1605580 (< (dynLambda!23447 order!26613 (toChars!11332 (transformation!8470 rule!200))) (dynLambda!23446 order!26611 lambda!248045))))

(assert (=> d!1605580 true))

(assert (=> d!1605580 (< (dynLambda!23445 order!26609 (toValue!11473 (transformation!8470 rule!200))) (dynLambda!23446 order!26611 lambda!248045))))

(assert (=> d!1605580 (= (semiInverseModEq!3763 (toChars!11332 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))) (Forall!1820 lambda!248045))))

(declare-fun bs!1184622 () Bool)

(assert (= bs!1184622 d!1605580))

(declare-fun m!6017626 () Bool)

(assert (=> bs!1184622 m!6017626))

(assert (=> b!4985703 d!1605580))

(declare-fun b!4985975 () Bool)

(declare-fun e!3116181 () tuple2!62640)

(assert (=> b!4985975 (= e!3116181 (tuple2!62641 Nil!57612 Nil!57612))))

(declare-fun bm!347950 () Bool)

(declare-fun call!347957 () Bool)

(declare-fun nullable!4653 (Regex!13703) Bool)

(assert (=> bm!347950 (= call!347957 (nullable!4653 (regex!8470 rule!200)))))

(declare-fun b!4985976 () Bool)

(assert (=> b!4985976 (= e!3116181 (tuple2!62641 Nil!57612 lt!2060683))))

(declare-fun bm!347951 () Bool)

(declare-fun call!347959 () Unit!148747)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1238 (List!57736 List!57736 List!57736) Unit!148747)

(assert (=> bm!347951 (= call!347959 (lemmaIsPrefixSameLengthThenSameList!1238 lt!2060683 Nil!57612 lt!2060683))))

(declare-fun bm!347952 () Bool)

(declare-fun call!347955 () List!57736)

(declare-fun tail!9835 (List!57736) List!57736)

(assert (=> bm!347952 (= call!347955 (tail!9835 lt!2060683))))

(declare-fun b!4985977 () Bool)

(declare-fun e!3116178 () Unit!148747)

(declare-fun Unit!148753 () Unit!148747)

(assert (=> b!4985977 (= e!3116178 Unit!148753)))

(declare-fun b!4985978 () Bool)

(declare-fun c!850822 () Bool)

(assert (=> b!4985978 (= c!850822 call!347957)))

(declare-fun lt!2060910 () Unit!148747)

(declare-fun lt!2060914 () Unit!148747)

(assert (=> b!4985978 (= lt!2060910 lt!2060914)))

(declare-fun lt!2060905 () C!27656)

(declare-fun lt!2060913 () List!57736)

(declare-fun ++!12565 (List!57736 List!57736) List!57736)

(assert (=> b!4985978 (= (++!12565 (++!12565 Nil!57612 (Cons!57612 lt!2060905 Nil!57612)) lt!2060913) lt!2060683)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1475 (List!57736 C!27656 List!57736 List!57736) Unit!148747)

(assert (=> b!4985978 (= lt!2060914 (lemmaMoveElementToOtherListKeepsConcatEq!1475 Nil!57612 lt!2060905 lt!2060913 lt!2060683))))

(assert (=> b!4985978 (= lt!2060913 (tail!9835 lt!2060683))))

(declare-fun head!10702 (List!57736) C!27656)

(assert (=> b!4985978 (= lt!2060905 (head!10702 lt!2060683))))

(declare-fun lt!2060911 () Unit!148747)

(declare-fun lt!2060891 () Unit!148747)

(assert (=> b!4985978 (= lt!2060911 lt!2060891)))

(declare-fun isPrefix!5278 (List!57736 List!57736) Bool)

(declare-fun getSuffix!3118 (List!57736 List!57736) List!57736)

(assert (=> b!4985978 (isPrefix!5278 (++!12565 Nil!57612 (Cons!57612 (head!10702 (getSuffix!3118 lt!2060683 Nil!57612)) Nil!57612)) lt!2060683)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!864 (List!57736 List!57736) Unit!148747)

(assert (=> b!4985978 (= lt!2060891 (lemmaAddHeadSuffixToPrefixStillPrefix!864 Nil!57612 lt!2060683))))

(declare-fun lt!2060900 () Unit!148747)

(declare-fun lt!2060893 () Unit!148747)

(assert (=> b!4985978 (= lt!2060900 lt!2060893)))

(assert (=> b!4985978 (= lt!2060893 (lemmaAddHeadSuffixToPrefixStillPrefix!864 Nil!57612 lt!2060683))))

(declare-fun lt!2060897 () List!57736)

(assert (=> b!4985978 (= lt!2060897 (++!12565 Nil!57612 (Cons!57612 (head!10702 lt!2060683) Nil!57612)))))

(declare-fun lt!2060892 () Unit!148747)

(assert (=> b!4985978 (= lt!2060892 e!3116178)))

(declare-fun c!850820 () Bool)

(assert (=> b!4985978 (= c!850820 (= (size!38265 Nil!57612) (size!38265 lt!2060683)))))

(declare-fun lt!2060901 () Unit!148747)

(declare-fun lt!2060894 () Unit!148747)

(assert (=> b!4985978 (= lt!2060901 lt!2060894)))

(assert (=> b!4985978 (<= (size!38265 Nil!57612) (size!38265 lt!2060683))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!790 (List!57736 List!57736) Unit!148747)

(assert (=> b!4985978 (= lt!2060894 (lemmaIsPrefixThenSmallerEqSize!790 Nil!57612 lt!2060683))))

(declare-fun e!3116182 () tuple2!62640)

(declare-fun e!3116183 () tuple2!62640)

(assert (=> b!4985978 (= e!3116182 e!3116183)))

(declare-fun call!347958 () Regex!13703)

(declare-fun bm!347953 () Bool)

(declare-fun call!347962 () tuple2!62640)

(assert (=> bm!347953 (= call!347962 (findLongestMatchInner!1914 call!347958 lt!2060897 (+ (size!38265 Nil!57612) 1) call!347955 lt!2060683 (size!38265 lt!2060683)))))

(declare-fun bm!347954 () Bool)

(declare-fun call!347960 () C!27656)

(declare-fun derivativeStep!3953 (Regex!13703 C!27656) Regex!13703)

(assert (=> bm!347954 (= call!347958 (derivativeStep!3953 (regex!8470 rule!200) call!347960))))

(declare-fun b!4985979 () Bool)

(declare-fun Unit!148754 () Unit!148747)

(assert (=> b!4985979 (= e!3116178 Unit!148754)))

(declare-fun lt!2060906 () Unit!148747)

(declare-fun call!347961 () Unit!148747)

(assert (=> b!4985979 (= lt!2060906 call!347961)))

(declare-fun call!347956 () Bool)

(assert (=> b!4985979 call!347956))

(declare-fun lt!2060912 () Unit!148747)

(assert (=> b!4985979 (= lt!2060912 lt!2060906)))

(declare-fun lt!2060915 () Unit!148747)

(assert (=> b!4985979 (= lt!2060915 call!347959)))

(assert (=> b!4985979 (= lt!2060683 Nil!57612)))

(declare-fun lt!2060898 () Unit!148747)

(assert (=> b!4985979 (= lt!2060898 lt!2060915)))

(assert (=> b!4985979 false))

(declare-fun b!4985980 () Bool)

(declare-fun e!3116179 () tuple2!62640)

(assert (=> b!4985980 (= e!3116179 (tuple2!62641 Nil!57612 lt!2060683))))

(declare-fun b!4985981 () Bool)

(assert (=> b!4985981 (= e!3116183 e!3116179)))

(declare-fun lt!2060895 () tuple2!62640)

(assert (=> b!4985981 (= lt!2060895 call!347962)))

(declare-fun c!850821 () Bool)

(assert (=> b!4985981 (= c!850821 (isEmpty!31156 (_1!34623 lt!2060895)))))

(declare-fun b!4985982 () Bool)

(declare-fun e!3116180 () tuple2!62640)

(assert (=> b!4985982 (= e!3116180 e!3116182)))

(declare-fun c!850819 () Bool)

(assert (=> b!4985982 (= c!850819 (= (size!38265 Nil!57612) (size!38265 lt!2060683)))))

(declare-fun bm!347955 () Bool)

(declare-fun lemmaIsPrefixRefl!3601 (List!57736 List!57736) Unit!148747)

(assert (=> bm!347955 (= call!347961 (lemmaIsPrefixRefl!3601 lt!2060683 lt!2060683))))

(declare-fun b!4985983 () Bool)

(assert (=> b!4985983 (= e!3116179 lt!2060895)))

(declare-fun b!4985984 () Bool)

(declare-fun e!3116177 () Bool)

(declare-fun lt!2060907 () tuple2!62640)

(assert (=> b!4985984 (= e!3116177 (>= (size!38265 (_1!34623 lt!2060907)) (size!38265 Nil!57612)))))

(declare-fun bm!347956 () Bool)

(assert (=> bm!347956 (= call!347956 (isPrefix!5278 lt!2060683 lt!2060683))))

(declare-fun d!1605582 () Bool)

(declare-fun e!3116176 () Bool)

(assert (=> d!1605582 e!3116176))

(declare-fun res!2128456 () Bool)

(assert (=> d!1605582 (=> (not res!2128456) (not e!3116176))))

(assert (=> d!1605582 (= res!2128456 (= (++!12565 (_1!34623 lt!2060907) (_2!34623 lt!2060907)) lt!2060683))))

(assert (=> d!1605582 (= lt!2060907 e!3116180)))

(declare-fun c!850824 () Bool)

(declare-fun lostCause!1162 (Regex!13703) Bool)

(assert (=> d!1605582 (= c!850824 (lostCause!1162 (regex!8470 rule!200)))))

(declare-fun lt!2060916 () Unit!148747)

(declare-fun Unit!148755 () Unit!148747)

(assert (=> d!1605582 (= lt!2060916 Unit!148755)))

(assert (=> d!1605582 (= (getSuffix!3118 lt!2060683 Nil!57612) lt!2060683)))

(declare-fun lt!2060899 () Unit!148747)

(declare-fun lt!2060904 () Unit!148747)

(assert (=> d!1605582 (= lt!2060899 lt!2060904)))

(declare-fun lt!2060896 () List!57736)

(assert (=> d!1605582 (= lt!2060683 lt!2060896)))

(declare-fun lemmaSamePrefixThenSameSuffix!2530 (List!57736 List!57736 List!57736 List!57736 List!57736) Unit!148747)

(assert (=> d!1605582 (= lt!2060904 (lemmaSamePrefixThenSameSuffix!2530 Nil!57612 lt!2060683 Nil!57612 lt!2060896 lt!2060683))))

(assert (=> d!1605582 (= lt!2060896 (getSuffix!3118 lt!2060683 Nil!57612))))

(declare-fun lt!2060902 () Unit!148747)

(declare-fun lt!2060909 () Unit!148747)

(assert (=> d!1605582 (= lt!2060902 lt!2060909)))

(assert (=> d!1605582 (isPrefix!5278 Nil!57612 (++!12565 Nil!57612 lt!2060683))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3376 (List!57736 List!57736) Unit!148747)

(assert (=> d!1605582 (= lt!2060909 (lemmaConcatTwoListThenFirstIsPrefix!3376 Nil!57612 lt!2060683))))

(assert (=> d!1605582 (validRegex!6002 (regex!8470 rule!200))))

(assert (=> d!1605582 (= (findLongestMatchInner!1914 (regex!8470 rule!200) Nil!57612 (size!38265 Nil!57612) lt!2060683 lt!2060683 (size!38265 lt!2060683)) lt!2060907)))

(declare-fun b!4985985 () Bool)

(declare-fun c!850823 () Bool)

(assert (=> b!4985985 (= c!850823 call!347957)))

(declare-fun lt!2060908 () Unit!148747)

(declare-fun lt!2060917 () Unit!148747)

(assert (=> b!4985985 (= lt!2060908 lt!2060917)))

(assert (=> b!4985985 (= lt!2060683 Nil!57612)))

(assert (=> b!4985985 (= lt!2060917 call!347959)))

(declare-fun lt!2060918 () Unit!148747)

(declare-fun lt!2060903 () Unit!148747)

(assert (=> b!4985985 (= lt!2060918 lt!2060903)))

(assert (=> b!4985985 call!347956))

(assert (=> b!4985985 (= lt!2060903 call!347961)))

(assert (=> b!4985985 (= e!3116182 e!3116181)))

(declare-fun b!4985986 () Bool)

(assert (=> b!4985986 (= e!3116180 (tuple2!62641 Nil!57612 lt!2060683))))

(declare-fun bm!347957 () Bool)

(assert (=> bm!347957 (= call!347960 (head!10702 lt!2060683))))

(declare-fun b!4985987 () Bool)

(assert (=> b!4985987 (= e!3116183 call!347962)))

(declare-fun b!4985988 () Bool)

(assert (=> b!4985988 (= e!3116176 e!3116177)))

(declare-fun res!2128457 () Bool)

(assert (=> b!4985988 (=> res!2128457 e!3116177)))

(assert (=> b!4985988 (= res!2128457 (isEmpty!31156 (_1!34623 lt!2060907)))))

(assert (= (and d!1605582 c!850824) b!4985986))

(assert (= (and d!1605582 (not c!850824)) b!4985982))

(assert (= (and b!4985982 c!850819) b!4985985))

(assert (= (and b!4985982 (not c!850819)) b!4985978))

(assert (= (and b!4985985 c!850823) b!4985975))

(assert (= (and b!4985985 (not c!850823)) b!4985976))

(assert (= (and b!4985978 c!850820) b!4985979))

(assert (= (and b!4985978 (not c!850820)) b!4985977))

(assert (= (and b!4985978 c!850822) b!4985981))

(assert (= (and b!4985978 (not c!850822)) b!4985987))

(assert (= (and b!4985981 c!850821) b!4985980))

(assert (= (and b!4985981 (not c!850821)) b!4985983))

(assert (= (or b!4985981 b!4985987) bm!347957))

(assert (= (or b!4985981 b!4985987) bm!347952))

(assert (= (or b!4985981 b!4985987) bm!347954))

(assert (= (or b!4985981 b!4985987) bm!347953))

(assert (= (or b!4985985 b!4985979) bm!347956))

(assert (= (or b!4985985 b!4985979) bm!347951))

(assert (= (or b!4985985 b!4985979) bm!347955))

(assert (= (or b!4985985 b!4985978) bm!347950))

(assert (= (and d!1605582 res!2128456) b!4985988))

(assert (= (and b!4985988 (not res!2128457)) b!4985984))

(declare-fun m!6017734 () Bool)

(assert (=> b!4985988 m!6017734))

(declare-fun m!6017736 () Bool)

(assert (=> bm!347951 m!6017736))

(assert (=> bm!347953 m!6017446))

(declare-fun m!6017738 () Bool)

(assert (=> bm!347953 m!6017738))

(declare-fun m!6017740 () Bool)

(assert (=> bm!347954 m!6017740))

(assert (=> d!1605582 m!6017604))

(declare-fun m!6017742 () Bool)

(assert (=> d!1605582 m!6017742))

(declare-fun m!6017744 () Bool)

(assert (=> d!1605582 m!6017744))

(declare-fun m!6017746 () Bool)

(assert (=> d!1605582 m!6017746))

(declare-fun m!6017748 () Bool)

(assert (=> d!1605582 m!6017748))

(declare-fun m!6017750 () Bool)

(assert (=> d!1605582 m!6017750))

(assert (=> d!1605582 m!6017748))

(declare-fun m!6017752 () Bool)

(assert (=> d!1605582 m!6017752))

(declare-fun m!6017754 () Bool)

(assert (=> d!1605582 m!6017754))

(declare-fun m!6017756 () Bool)

(assert (=> bm!347957 m!6017756))

(declare-fun m!6017758 () Bool)

(assert (=> bm!347955 m!6017758))

(declare-fun m!6017760 () Bool)

(assert (=> b!4985978 m!6017760))

(assert (=> b!4985978 m!6017756))

(declare-fun m!6017762 () Bool)

(assert (=> b!4985978 m!6017762))

(declare-fun m!6017764 () Bool)

(assert (=> b!4985978 m!6017764))

(declare-fun m!6017766 () Bool)

(assert (=> b!4985978 m!6017766))

(assert (=> b!4985978 m!6017766))

(declare-fun m!6017768 () Bool)

(assert (=> b!4985978 m!6017768))

(assert (=> b!4985978 m!6017746))

(declare-fun m!6017770 () Bool)

(assert (=> b!4985978 m!6017770))

(assert (=> b!4985978 m!6017762))

(declare-fun m!6017772 () Bool)

(assert (=> b!4985978 m!6017772))

(assert (=> b!4985978 m!6017746))

(declare-fun m!6017774 () Bool)

(assert (=> b!4985978 m!6017774))

(assert (=> b!4985978 m!6017444))

(assert (=> b!4985978 m!6017446))

(declare-fun m!6017776 () Bool)

(assert (=> b!4985978 m!6017776))

(declare-fun m!6017778 () Bool)

(assert (=> b!4985978 m!6017778))

(declare-fun m!6017780 () Bool)

(assert (=> bm!347950 m!6017780))

(assert (=> bm!347952 m!6017770))

(declare-fun m!6017782 () Bool)

(assert (=> b!4985981 m!6017782))

(declare-fun m!6017784 () Bool)

(assert (=> bm!347956 m!6017784))

(declare-fun m!6017786 () Bool)

(assert (=> b!4985984 m!6017786))

(assert (=> b!4985984 m!6017444))

(assert (=> b!4985703 d!1605582))

(declare-fun d!1605610 () Bool)

(declare-fun e!3116186 () Bool)

(assert (=> d!1605610 e!3116186))

(declare-fun res!2128460 () Bool)

(assert (=> d!1605610 (=> (not res!2128460) (not e!3116186))))

(assert (=> d!1605610 (= res!2128460 (semiInverseModEq!3763 (toChars!11332 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))))))

(declare-fun Unit!148756 () Unit!148747)

(assert (=> d!1605610 (= (lemmaInv!1393 (transformation!8470 rule!200)) Unit!148756)))

(declare-fun b!4985991 () Bool)

(declare-fun equivClasses!3582 (Int Int) Bool)

(assert (=> b!4985991 (= e!3116186 (equivClasses!3582 (toChars!11332 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))))))

(assert (= (and d!1605610 res!2128460) b!4985991))

(assert (=> d!1605610 m!6017450))

(declare-fun m!6017788 () Bool)

(assert (=> b!4985991 m!6017788))

(assert (=> b!4985703 d!1605610))

(declare-fun bm!347960 () Bool)

(declare-fun call!347965 () Bool)

(assert (=> bm!347960 (= call!347965 (isEmpty!31156 (_1!34623 lt!2060675)))))

(declare-fun b!4986020 () Bool)

(declare-fun e!3116202 () Bool)

(assert (=> b!4986020 (= e!3116202 (matchR!6697 (derivativeStep!3953 (regex!8470 rule!200) (head!10702 (_1!34623 lt!2060675))) (tail!9835 (_1!34623 lt!2060675))))))

(declare-fun b!4986021 () Bool)

(declare-fun res!2128480 () Bool)

(declare-fun e!3116204 () Bool)

(assert (=> b!4986021 (=> res!2128480 e!3116204)))

(assert (=> b!4986021 (= res!2128480 (not (isEmpty!31156 (tail!9835 (_1!34623 lt!2060675)))))))

(declare-fun b!4986022 () Bool)

(assert (=> b!4986022 (= e!3116204 (not (= (head!10702 (_1!34623 lt!2060675)) (c!850763 (regex!8470 rule!200)))))))

(declare-fun b!4986023 () Bool)

(declare-fun res!2128484 () Bool)

(declare-fun e!3116205 () Bool)

(assert (=> b!4986023 (=> (not res!2128484) (not e!3116205))))

(assert (=> b!4986023 (= res!2128484 (isEmpty!31156 (tail!9835 (_1!34623 lt!2060675))))))

(declare-fun d!1605612 () Bool)

(declare-fun e!3116201 () Bool)

(assert (=> d!1605612 e!3116201))

(declare-fun c!850833 () Bool)

(assert (=> d!1605612 (= c!850833 ((_ is EmptyExpr!13703) (regex!8470 rule!200)))))

(declare-fun lt!2060921 () Bool)

(assert (=> d!1605612 (= lt!2060921 e!3116202)))

(declare-fun c!850831 () Bool)

(assert (=> d!1605612 (= c!850831 (isEmpty!31156 (_1!34623 lt!2060675)))))

(assert (=> d!1605612 (validRegex!6002 (regex!8470 rule!200))))

(assert (=> d!1605612 (= (matchR!6697 (regex!8470 rule!200) (_1!34623 lt!2060675)) lt!2060921)))

(declare-fun b!4986024 () Bool)

(assert (=> b!4986024 (= e!3116202 (nullable!4653 (regex!8470 rule!200)))))

(declare-fun b!4986025 () Bool)

(assert (=> b!4986025 (= e!3116201 (= lt!2060921 call!347965))))

(declare-fun b!4986026 () Bool)

(declare-fun res!2128482 () Bool)

(declare-fun e!3116203 () Bool)

(assert (=> b!4986026 (=> res!2128482 e!3116203)))

(assert (=> b!4986026 (= res!2128482 (not ((_ is ElementMatch!13703) (regex!8470 rule!200))))))

(declare-fun e!3116206 () Bool)

(assert (=> b!4986026 (= e!3116206 e!3116203)))

(declare-fun b!4986027 () Bool)

(declare-fun res!2128477 () Bool)

(assert (=> b!4986027 (=> res!2128477 e!3116203)))

(assert (=> b!4986027 (= res!2128477 e!3116205)))

(declare-fun res!2128478 () Bool)

(assert (=> b!4986027 (=> (not res!2128478) (not e!3116205))))

(assert (=> b!4986027 (= res!2128478 lt!2060921)))

(declare-fun b!4986028 () Bool)

(assert (=> b!4986028 (= e!3116201 e!3116206)))

(declare-fun c!850832 () Bool)

(assert (=> b!4986028 (= c!850832 ((_ is EmptyLang!13703) (regex!8470 rule!200)))))

(declare-fun b!4986029 () Bool)

(declare-fun e!3116207 () Bool)

(assert (=> b!4986029 (= e!3116203 e!3116207)))

(declare-fun res!2128481 () Bool)

(assert (=> b!4986029 (=> (not res!2128481) (not e!3116207))))

(assert (=> b!4986029 (= res!2128481 (not lt!2060921))))

(declare-fun b!4986030 () Bool)

(assert (=> b!4986030 (= e!3116206 (not lt!2060921))))

(declare-fun b!4986031 () Bool)

(assert (=> b!4986031 (= e!3116205 (= (head!10702 (_1!34623 lt!2060675)) (c!850763 (regex!8470 rule!200))))))

(declare-fun b!4986032 () Bool)

(declare-fun res!2128479 () Bool)

(assert (=> b!4986032 (=> (not res!2128479) (not e!3116205))))

(assert (=> b!4986032 (= res!2128479 (not call!347965))))

(declare-fun b!4986033 () Bool)

(assert (=> b!4986033 (= e!3116207 e!3116204)))

(declare-fun res!2128483 () Bool)

(assert (=> b!4986033 (=> res!2128483 e!3116204)))

(assert (=> b!4986033 (= res!2128483 call!347965)))

(assert (= (and d!1605612 c!850831) b!4986024))

(assert (= (and d!1605612 (not c!850831)) b!4986020))

(assert (= (and d!1605612 c!850833) b!4986025))

(assert (= (and d!1605612 (not c!850833)) b!4986028))

(assert (= (and b!4986028 c!850832) b!4986030))

(assert (= (and b!4986028 (not c!850832)) b!4986026))

(assert (= (and b!4986026 (not res!2128482)) b!4986027))

(assert (= (and b!4986027 res!2128478) b!4986032))

(assert (= (and b!4986032 res!2128479) b!4986023))

(assert (= (and b!4986023 res!2128484) b!4986031))

(assert (= (and b!4986027 (not res!2128477)) b!4986029))

(assert (= (and b!4986029 res!2128481) b!4986033))

(assert (= (and b!4986033 (not res!2128483)) b!4986021))

(assert (= (and b!4986021 (not res!2128480)) b!4986022))

(assert (= (or b!4986025 b!4986032 b!4986033) bm!347960))

(declare-fun m!6017790 () Bool)

(assert (=> b!4986022 m!6017790))

(declare-fun m!6017792 () Bool)

(assert (=> b!4986021 m!6017792))

(assert (=> b!4986021 m!6017792))

(declare-fun m!6017794 () Bool)

(assert (=> b!4986021 m!6017794))

(assert (=> b!4986031 m!6017790))

(assert (=> b!4986023 m!6017792))

(assert (=> b!4986023 m!6017792))

(assert (=> b!4986023 m!6017794))

(assert (=> b!4986024 m!6017780))

(assert (=> b!4986020 m!6017790))

(assert (=> b!4986020 m!6017790))

(declare-fun m!6017796 () Bool)

(assert (=> b!4986020 m!6017796))

(assert (=> b!4986020 m!6017792))

(assert (=> b!4986020 m!6017796))

(assert (=> b!4986020 m!6017792))

(declare-fun m!6017798 () Bool)

(assert (=> b!4986020 m!6017798))

(assert (=> d!1605612 m!6017454))

(assert (=> d!1605612 m!6017604))

(assert (=> bm!347960 m!6017454))

(assert (=> b!4985713 d!1605612))

(declare-fun d!1605614 () Bool)

(declare-fun list!18492 (Conc!15222) List!57736)

(assert (=> d!1605614 (= (list!18490 lt!2060679) (list!18492 (c!850764 lt!2060679)))))

(declare-fun bs!1184631 () Bool)

(assert (= bs!1184631 d!1605614))

(declare-fun m!6017800 () Bool)

(assert (=> bs!1184631 m!6017800))

(assert (=> b!4985712 d!1605614))

(declare-fun d!1605616 () Bool)

(declare-fun choose!36859 (Int) Bool)

(assert (=> d!1605616 (= (Forall!1820 lambda!248036) (choose!36859 lambda!248036))))

(declare-fun bs!1184632 () Bool)

(assert (= bs!1184632 d!1605616))

(declare-fun m!6017802 () Bool)

(assert (=> bs!1184632 m!6017802))

(assert (=> b!4985711 d!1605616))

(declare-fun d!1605618 () Bool)

(declare-fun res!2128489 () Bool)

(declare-fun e!3116210 () Bool)

(assert (=> d!1605618 (=> (not res!2128489) (not e!3116210))))

(assert (=> d!1605618 (= res!2128489 (validRegex!6002 (regex!8470 rule!200)))))

(assert (=> d!1605618 (= (ruleValid!3878 thiss!16165 rule!200) e!3116210)))

(declare-fun b!4986038 () Bool)

(declare-fun res!2128490 () Bool)

(assert (=> b!4986038 (=> (not res!2128490) (not e!3116210))))

(assert (=> b!4986038 (= res!2128490 (not (nullable!4653 (regex!8470 rule!200))))))

(declare-fun b!4986039 () Bool)

(assert (=> b!4986039 (= e!3116210 (not (= (tag!9334 rule!200) (String!65775 ""))))))

(assert (= (and d!1605618 res!2128489) b!4986038))

(assert (= (and b!4986038 res!2128490) b!4986039))

(assert (=> d!1605618 m!6017604))

(assert (=> b!4986038 m!6017780))

(assert (=> b!4985710 d!1605618))

(declare-fun d!1605620 () Bool)

(assert (=> d!1605620 (= (get!20045 lt!2060678) (v!50556 lt!2060678))))

(assert (=> b!4985709 d!1605620))

(declare-fun d!1605622 () Bool)

(assert (=> d!1605622 (= (inv!75513 (tag!9334 rule!200)) (= (mod (str.len (value!270814 (tag!9334 rule!200))) 2) 0))))

(assert (=> b!4985708 d!1605622))

(declare-fun d!1605624 () Bool)

(declare-fun res!2128493 () Bool)

(declare-fun e!3116213 () Bool)

(assert (=> d!1605624 (=> (not res!2128493) (not e!3116213))))

(assert (=> d!1605624 (= res!2128493 (semiInverseModEq!3763 (toChars!11332 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))))))

(assert (=> d!1605624 (= (inv!75519 (transformation!8470 rule!200)) e!3116213)))

(declare-fun b!4986042 () Bool)

(assert (=> b!4986042 (= e!3116213 (equivClasses!3582 (toChars!11332 (transformation!8470 rule!200)) (toValue!11473 (transformation!8470 rule!200))))))

(assert (= (and d!1605624 res!2128493) b!4986042))

(assert (=> d!1605624 m!6017450))

(assert (=> b!4986042 m!6017788))

(assert (=> b!4985708 d!1605624))

(declare-fun d!1605626 () Bool)

(declare-fun e!3116216 () Bool)

(assert (=> d!1605626 e!3116216))

(declare-fun res!2128496 () Bool)

(assert (=> d!1605626 (=> res!2128496 e!3116216)))

(declare-fun lt!2060924 () Bool)

(assert (=> d!1605626 (= res!2128496 (not lt!2060924))))

(declare-fun drop!2384 (List!57736 Int) List!57736)

(assert (=> d!1605626 (= lt!2060924 (= lt!2060683 (drop!2384 (list!18490 totalInput!520) (- (size!38265 (list!18490 totalInput!520)) (size!38265 lt!2060683)))))))

(assert (=> d!1605626 (= (isSuffix!1269 lt!2060683 (list!18490 totalInput!520)) lt!2060924)))

(declare-fun b!4986045 () Bool)

(assert (=> b!4986045 (= e!3116216 (>= (size!38265 (list!18490 totalInput!520)) (size!38265 lt!2060683)))))

(assert (= (and d!1605626 (not res!2128496)) b!4986045))

(assert (=> d!1605626 m!6017484))

(declare-fun m!6017804 () Bool)

(assert (=> d!1605626 m!6017804))

(assert (=> d!1605626 m!6017446))

(assert (=> d!1605626 m!6017484))

(declare-fun m!6017806 () Bool)

(assert (=> d!1605626 m!6017806))

(assert (=> b!4986045 m!6017484))

(assert (=> b!4986045 m!6017804))

(assert (=> b!4986045 m!6017446))

(assert (=> b!4985718 d!1605626))

(declare-fun d!1605628 () Bool)

(assert (=> d!1605628 (= (list!18490 totalInput!520) (list!18492 (c!850764 totalInput!520)))))

(declare-fun bs!1184633 () Bool)

(assert (= bs!1184633 d!1605628))

(declare-fun m!6017808 () Bool)

(assert (=> bs!1184633 m!6017808))

(assert (=> b!4985718 d!1605628))

(declare-fun d!1605630 () Bool)

(assert (=> d!1605630 (= (list!18490 input!1580) (list!18492 (c!850764 input!1580)))))

(declare-fun bs!1184634 () Bool)

(assert (= bs!1184634 d!1605630))

(declare-fun m!6017810 () Bool)

(assert (=> bs!1184634 m!6017810))

(assert (=> b!4985718 d!1605630))

(declare-fun d!1605632 () Bool)

(declare-fun isBalanced!4236 (Conc!15222) Bool)

(assert (=> d!1605632 (= (inv!75518 totalInput!520) (isBalanced!4236 (c!850764 totalInput!520)))))

(declare-fun bs!1184635 () Bool)

(assert (= bs!1184635 d!1605632))

(declare-fun m!6017812 () Bool)

(assert (=> bs!1184635 m!6017812))

(assert (=> start!526726 d!1605632))

(declare-fun d!1605634 () Bool)

(assert (=> d!1605634 (= (inv!75518 input!1580) (isBalanced!4236 (c!850764 input!1580)))))

(declare-fun bs!1184636 () Bool)

(assert (= bs!1184636 d!1605634))

(declare-fun m!6017814 () Bool)

(assert (=> bs!1184636 m!6017814))

(assert (=> start!526726 d!1605634))

(declare-fun d!1605636 () Bool)

(declare-fun c!850836 () Bool)

(assert (=> d!1605636 (= c!850836 ((_ is Node!15222) (c!850764 totalInput!520)))))

(declare-fun e!3116221 () Bool)

(assert (=> d!1605636 (= (inv!75517 (c!850764 totalInput!520)) e!3116221)))

(declare-fun b!4986052 () Bool)

(declare-fun inv!75523 (Conc!15222) Bool)

(assert (=> b!4986052 (= e!3116221 (inv!75523 (c!850764 totalInput!520)))))

(declare-fun b!4986053 () Bool)

(declare-fun e!3116222 () Bool)

(assert (=> b!4986053 (= e!3116221 e!3116222)))

(declare-fun res!2128499 () Bool)

(assert (=> b!4986053 (= res!2128499 (not ((_ is Leaf!25282) (c!850764 totalInput!520))))))

(assert (=> b!4986053 (=> res!2128499 e!3116222)))

(declare-fun b!4986054 () Bool)

(declare-fun inv!75524 (Conc!15222) Bool)

(assert (=> b!4986054 (= e!3116222 (inv!75524 (c!850764 totalInput!520)))))

(assert (= (and d!1605636 c!850836) b!4986052))

(assert (= (and d!1605636 (not c!850836)) b!4986053))

(assert (= (and b!4986053 (not res!2128499)) b!4986054))

(declare-fun m!6017816 () Bool)

(assert (=> b!4986052 m!6017816))

(declare-fun m!6017818 () Bool)

(assert (=> b!4986054 m!6017818))

(assert (=> b!4985707 d!1605636))

(declare-fun d!1605638 () Bool)

(assert (=> d!1605638 (= (list!18490 (_2!34625 lt!2060690)) (list!18492 (c!850764 (_2!34625 lt!2060690))))))

(declare-fun bs!1184637 () Bool)

(assert (= bs!1184637 d!1605638))

(declare-fun m!6017820 () Bool)

(assert (=> bs!1184637 m!6017820))

(assert (=> b!4985717 d!1605638))

(declare-fun d!1605640 () Bool)

(declare-fun dynLambda!23454 (Int BalanceConc!29874) Bool)

(assert (=> d!1605640 (dynLambda!23454 lambda!248036 lt!2060679)))

(declare-fun lt!2060927 () Unit!148747)

(declare-fun choose!36860 (Int BalanceConc!29874) Unit!148747)

(assert (=> d!1605640 (= lt!2060927 (choose!36860 lambda!248036 lt!2060679))))

(assert (=> d!1605640 (Forall!1820 lambda!248036)))

(assert (=> d!1605640 (= (ForallOf!1280 lambda!248036 lt!2060679) lt!2060927)))

(declare-fun b_lambda!198331 () Bool)

(assert (=> (not b_lambda!198331) (not d!1605640)))

(declare-fun bs!1184638 () Bool)

(assert (= bs!1184638 d!1605640))

(declare-fun m!6017822 () Bool)

(assert (=> bs!1184638 m!6017822))

(declare-fun m!6017824 () Bool)

(assert (=> bs!1184638 m!6017824))

(assert (=> bs!1184638 m!6017418))

(assert (=> b!4985716 d!1605640))

(declare-fun d!1605642 () Bool)

(assert (=> d!1605642 (= (list!18490 (_1!34626 lt!2060676)) (list!18492 (c!850764 (_1!34626 lt!2060676))))))

(declare-fun bs!1184639 () Bool)

(assert (= bs!1184639 d!1605642))

(declare-fun m!6017826 () Bool)

(assert (=> bs!1184639 m!6017826))

(assert (=> b!4985716 d!1605642))

(declare-fun d!1605644 () Bool)

(assert (=> d!1605644 (dynLambda!23454 lambda!248036 (_1!34626 lt!2060676))))

(declare-fun lt!2060928 () Unit!148747)

(assert (=> d!1605644 (= lt!2060928 (choose!36860 lambda!248036 (_1!34626 lt!2060676)))))

(assert (=> d!1605644 (Forall!1820 lambda!248036)))

(assert (=> d!1605644 (= (ForallOf!1280 lambda!248036 (_1!34626 lt!2060676)) lt!2060928)))

(declare-fun b_lambda!198333 () Bool)

(assert (=> (not b_lambda!198333) (not d!1605644)))

(declare-fun bs!1184640 () Bool)

(assert (= bs!1184640 d!1605644))

(declare-fun m!6017828 () Bool)

(assert (=> bs!1184640 m!6017828))

(declare-fun m!6017830 () Bool)

(assert (=> bs!1184640 m!6017830))

(assert (=> bs!1184640 m!6017418))

(assert (=> b!4985716 d!1605644))

(declare-fun d!1605646 () Bool)

(declare-fun fromListB!2756 (List!57736) BalanceConc!29874)

(assert (=> d!1605646 (= (seqFromList!6091 lt!2060686) (fromListB!2756 lt!2060686))))

(declare-fun bs!1184641 () Bool)

(assert (= bs!1184641 d!1605646))

(declare-fun m!6017832 () Bool)

(assert (=> bs!1184641 m!6017832))

(assert (=> b!4985716 d!1605646))

(declare-fun d!1605648 () Bool)

(declare-fun lt!2060931 () Int)

(assert (=> d!1605648 (= lt!2060931 (size!38265 (list!18490 (_1!34626 lt!2060676))))))

(declare-fun size!38269 (Conc!15222) Int)

(assert (=> d!1605648 (= lt!2060931 (size!38269 (c!850764 (_1!34626 lt!2060676))))))

(assert (=> d!1605648 (= (size!38267 (_1!34626 lt!2060676)) lt!2060931)))

(declare-fun bs!1184642 () Bool)

(assert (= bs!1184642 d!1605648))

(assert (=> bs!1184642 m!6017482))

(assert (=> bs!1184642 m!6017482))

(declare-fun m!6017834 () Bool)

(assert (=> bs!1184642 m!6017834))

(declare-fun m!6017836 () Bool)

(assert (=> bs!1184642 m!6017836))

(assert (=> b!4985716 d!1605648))

(declare-fun d!1605650 () Bool)

(declare-fun isEmpty!31162 (Option!14559) Bool)

(assert (=> d!1605650 (= (isDefined!11468 lt!2060687) (not (isEmpty!31162 lt!2060687)))))

(declare-fun bs!1184643 () Bool)

(assert (= bs!1184643 d!1605650))

(declare-fun m!6017838 () Bool)

(assert (=> bs!1184643 m!6017838))

(assert (=> b!4985716 d!1605650))

(declare-fun b!4986073 () Bool)

(declare-fun res!2128516 () Bool)

(declare-fun e!3116232 () Bool)

(assert (=> b!4986073 (=> (not res!2128516) (not e!3116232))))

(declare-fun lt!2060946 () Option!14559)

(assert (=> b!4986073 (= res!2128516 (= (rule!11736 (_1!34624 (get!20044 lt!2060946))) rule!200))))

(declare-fun b!4986074 () Bool)

(declare-fun res!2128519 () Bool)

(assert (=> b!4986074 (=> (not res!2128519) (not e!3116232))))

(assert (=> b!4986074 (= res!2128519 (< (size!38265 (_2!34624 (get!20044 lt!2060946))) (size!38265 lt!2060683)))))

(declare-fun b!4986075 () Bool)

(declare-fun e!3116234 () Bool)

(assert (=> b!4986075 (= e!3116234 e!3116232)))

(declare-fun res!2128518 () Bool)

(assert (=> b!4986075 (=> (not res!2128518) (not e!3116232))))

(declare-fun charsOf!5465 (Token!15396) BalanceConc!29874)

(assert (=> b!4986075 (= res!2128518 (matchR!6697 (regex!8470 rule!200) (list!18490 (charsOf!5465 (_1!34624 (get!20044 lt!2060946))))))))

(declare-fun b!4986076 () Bool)

(declare-fun e!3116231 () Bool)

(assert (=> b!4986076 (= e!3116231 (matchR!6697 (regex!8470 rule!200) (_1!34623 (findLongestMatchInner!1914 (regex!8470 rule!200) Nil!57612 (size!38265 Nil!57612) lt!2060683 lt!2060683 (size!38265 lt!2060683)))))))

(declare-fun b!4986077 () Bool)

(assert (=> b!4986077 (= e!3116232 (= (size!38266 (_1!34624 (get!20044 lt!2060946))) (size!38265 (originalCharacters!8729 (_1!34624 (get!20044 lt!2060946))))))))

(declare-fun b!4986078 () Bool)

(declare-fun res!2128515 () Bool)

(assert (=> b!4986078 (=> (not res!2128515) (not e!3116232))))

(assert (=> b!4986078 (= res!2128515 (= (value!270815 (_1!34624 (get!20044 lt!2060946))) (apply!13957 (transformation!8470 (rule!11736 (_1!34624 (get!20044 lt!2060946)))) (seqFromList!6091 (originalCharacters!8729 (_1!34624 (get!20044 lt!2060946)))))))))

(declare-fun b!4986079 () Bool)

(declare-fun res!2128514 () Bool)

(assert (=> b!4986079 (=> (not res!2128514) (not e!3116232))))

(assert (=> b!4986079 (= res!2128514 (= (++!12565 (list!18490 (charsOf!5465 (_1!34624 (get!20044 lt!2060946)))) (_2!34624 (get!20044 lt!2060946))) lt!2060683))))

(declare-fun d!1605652 () Bool)

(assert (=> d!1605652 e!3116234))

(declare-fun res!2128520 () Bool)

(assert (=> d!1605652 (=> res!2128520 e!3116234)))

(assert (=> d!1605652 (= res!2128520 (isEmpty!31162 lt!2060946))))

(declare-fun e!3116233 () Option!14559)

(assert (=> d!1605652 (= lt!2060946 e!3116233)))

(declare-fun c!850839 () Bool)

(declare-fun lt!2060943 () tuple2!62640)

(assert (=> d!1605652 (= c!850839 (isEmpty!31156 (_1!34623 lt!2060943)))))

(assert (=> d!1605652 (= lt!2060943 (findLongestMatch!1728 (regex!8470 rule!200) lt!2060683))))

(assert (=> d!1605652 (ruleValid!3878 thiss!16165 rule!200)))

(assert (=> d!1605652 (= (maxPrefixOneRule!3686 thiss!16165 rule!200 lt!2060683) lt!2060946)))

(declare-fun b!4986080 () Bool)

(assert (=> b!4986080 (= e!3116233 (Some!14558 (tuple2!62643 (Token!15397 (apply!13957 (transformation!8470 rule!200) (seqFromList!6091 (_1!34623 lt!2060943))) rule!200 (size!38267 (seqFromList!6091 (_1!34623 lt!2060943))) (_1!34623 lt!2060943)) (_2!34623 lt!2060943))))))

(declare-fun lt!2060945 () Unit!148747)

(assert (=> b!4986080 (= lt!2060945 (longestMatchIsAcceptedByMatchOrIsEmpty!1875 (regex!8470 rule!200) lt!2060683))))

(declare-fun res!2128517 () Bool)

(assert (=> b!4986080 (= res!2128517 (isEmpty!31156 (_1!34623 (findLongestMatchInner!1914 (regex!8470 rule!200) Nil!57612 (size!38265 Nil!57612) lt!2060683 lt!2060683 (size!38265 lt!2060683)))))))

(assert (=> b!4986080 (=> res!2128517 e!3116231)))

(assert (=> b!4986080 e!3116231))

(declare-fun lt!2060942 () Unit!148747)

(assert (=> b!4986080 (= lt!2060942 lt!2060945)))

(declare-fun lt!2060944 () Unit!148747)

(declare-fun lemmaSemiInverse!2628 (TokenValueInjection!16868 BalanceConc!29874) Unit!148747)

(assert (=> b!4986080 (= lt!2060944 (lemmaSemiInverse!2628 (transformation!8470 rule!200) (seqFromList!6091 (_1!34623 lt!2060943))))))

(declare-fun b!4986081 () Bool)

(assert (=> b!4986081 (= e!3116233 None!14558)))

(assert (= (and d!1605652 c!850839) b!4986081))

(assert (= (and d!1605652 (not c!850839)) b!4986080))

(assert (= (and b!4986080 (not res!2128517)) b!4986076))

(assert (= (and d!1605652 (not res!2128520)) b!4986075))

(assert (= (and b!4986075 res!2128518) b!4986079))

(assert (= (and b!4986079 res!2128514) b!4986074))

(assert (= (and b!4986074 res!2128519) b!4986073))

(assert (= (and b!4986073 res!2128516) b!4986078))

(assert (= (and b!4986078 res!2128515) b!4986077))

(declare-fun m!6017840 () Bool)

(assert (=> b!4986075 m!6017840))

(declare-fun m!6017842 () Bool)

(assert (=> b!4986075 m!6017842))

(assert (=> b!4986075 m!6017842))

(declare-fun m!6017844 () Bool)

(assert (=> b!4986075 m!6017844))

(assert (=> b!4986075 m!6017844))

(declare-fun m!6017846 () Bool)

(assert (=> b!4986075 m!6017846))

(declare-fun m!6017848 () Bool)

(assert (=> d!1605652 m!6017848))

(declare-fun m!6017850 () Bool)

(assert (=> d!1605652 m!6017850))

(declare-fun m!6017852 () Bool)

(assert (=> d!1605652 m!6017852))

(assert (=> d!1605652 m!6017420))

(assert (=> b!4986079 m!6017840))

(assert (=> b!4986079 m!6017842))

(assert (=> b!4986079 m!6017842))

(assert (=> b!4986079 m!6017844))

(assert (=> b!4986079 m!6017844))

(declare-fun m!6017854 () Bool)

(assert (=> b!4986079 m!6017854))

(assert (=> b!4986077 m!6017840))

(declare-fun m!6017856 () Bool)

(assert (=> b!4986077 m!6017856))

(assert (=> b!4986073 m!6017840))

(declare-fun m!6017858 () Bool)

(assert (=> b!4986080 m!6017858))

(declare-fun m!6017860 () Bool)

(assert (=> b!4986080 m!6017860))

(assert (=> b!4986080 m!6017444))

(assert (=> b!4986080 m!6017446))

(assert (=> b!4986080 m!6017448))

(assert (=> b!4986080 m!6017452))

(assert (=> b!4986080 m!6017858))

(declare-fun m!6017862 () Bool)

(assert (=> b!4986080 m!6017862))

(assert (=> b!4986080 m!6017444))

(assert (=> b!4986080 m!6017858))

(assert (=> b!4986080 m!6017620))

(assert (=> b!4986080 m!6017858))

(declare-fun m!6017864 () Bool)

(assert (=> b!4986080 m!6017864))

(assert (=> b!4986080 m!6017446))

(assert (=> b!4986078 m!6017840))

(declare-fun m!6017866 () Bool)

(assert (=> b!4986078 m!6017866))

(assert (=> b!4986078 m!6017866))

(declare-fun m!6017868 () Bool)

(assert (=> b!4986078 m!6017868))

(assert (=> b!4986076 m!6017444))

(assert (=> b!4986076 m!6017446))

(assert (=> b!4986076 m!6017444))

(assert (=> b!4986076 m!6017446))

(assert (=> b!4986076 m!6017448))

(assert (=> b!4986076 m!6017622))

(assert (=> b!4986074 m!6017840))

(declare-fun m!6017870 () Bool)

(assert (=> b!4986074 m!6017870))

(assert (=> b!4986074 m!6017446))

(assert (=> b!4985716 d!1605652))

(declare-fun d!1605654 () Bool)

(assert (=> d!1605654 (= (apply!13957 (transformation!8470 rule!200) (_1!34626 lt!2060676)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) (_1!34626 lt!2060676)))))

(declare-fun b_lambda!198335 () Bool)

(assert (=> (not b_lambda!198335) (not d!1605654)))

(assert (=> d!1605654 t!369971))

(declare-fun b_and!349929 () Bool)

(assert (= b_and!349913 (and (=> t!369971 result!327138) b_and!349929)))

(assert (=> d!1605654 m!6017536))

(assert (=> b!4985716 d!1605654))

(declare-fun d!1605656 () Bool)

(declare-fun isEmpty!31163 (Option!14560) Bool)

(assert (=> d!1605656 (= (isDefined!11469 lt!2060678) (not (isEmpty!31163 lt!2060678)))))

(declare-fun bs!1184644 () Bool)

(assert (= bs!1184644 d!1605656))

(declare-fun m!6017872 () Bool)

(assert (=> bs!1184644 m!6017872))

(assert (=> b!4985716 d!1605656))

(declare-fun d!1605658 () Bool)

(declare-fun c!850840 () Bool)

(assert (=> d!1605658 (= c!850840 ((_ is Node!15222) (c!850764 input!1580)))))

(declare-fun e!3116235 () Bool)

(assert (=> d!1605658 (= (inv!75517 (c!850764 input!1580)) e!3116235)))

(declare-fun b!4986082 () Bool)

(assert (=> b!4986082 (= e!3116235 (inv!75523 (c!850764 input!1580)))))

(declare-fun b!4986083 () Bool)

(declare-fun e!3116236 () Bool)

(assert (=> b!4986083 (= e!3116235 e!3116236)))

(declare-fun res!2128521 () Bool)

(assert (=> b!4986083 (= res!2128521 (not ((_ is Leaf!25282) (c!850764 input!1580))))))

(assert (=> b!4986083 (=> res!2128521 e!3116236)))

(declare-fun b!4986084 () Bool)

(assert (=> b!4986084 (= e!3116236 (inv!75524 (c!850764 input!1580)))))

(assert (= (and d!1605658 c!850840) b!4986082))

(assert (= (and d!1605658 (not c!850840)) b!4986083))

(assert (= (and b!4986083 (not res!2128521)) b!4986084))

(declare-fun m!6017874 () Bool)

(assert (=> b!4986082 m!6017874))

(declare-fun m!6017876 () Bool)

(assert (=> b!4986084 m!6017876))

(assert (=> b!4985705 d!1605658))

(declare-fun b!4986097 () Bool)

(declare-fun e!3116239 () Bool)

(declare-fun tp!1397371 () Bool)

(assert (=> b!4986097 (= e!3116239 tp!1397371)))

(declare-fun b!4986095 () Bool)

(declare-fun tp_is_empty!36407 () Bool)

(assert (=> b!4986095 (= e!3116239 tp_is_empty!36407)))

(assert (=> b!4985708 (= tp!1397327 e!3116239)))

(declare-fun b!4986096 () Bool)

(declare-fun tp!1397372 () Bool)

(declare-fun tp!1397374 () Bool)

(assert (=> b!4986096 (= e!3116239 (and tp!1397372 tp!1397374))))

(declare-fun b!4986098 () Bool)

(declare-fun tp!1397370 () Bool)

(declare-fun tp!1397373 () Bool)

(assert (=> b!4986098 (= e!3116239 (and tp!1397370 tp!1397373))))

(assert (= (and b!4985708 ((_ is ElementMatch!13703) (regex!8470 rule!200))) b!4986095))

(assert (= (and b!4985708 ((_ is Concat!22483) (regex!8470 rule!200))) b!4986096))

(assert (= (and b!4985708 ((_ is Star!13703) (regex!8470 rule!200))) b!4986097))

(assert (= (and b!4985708 ((_ is Union!13703) (regex!8470 rule!200))) b!4986098))

(declare-fun tp!1397382 () Bool)

(declare-fun tp!1397383 () Bool)

(declare-fun e!3116245 () Bool)

(declare-fun b!4986107 () Bool)

(assert (=> b!4986107 (= e!3116245 (and (inv!75517 (left!42143 (c!850764 totalInput!520))) tp!1397383 (inv!75517 (right!42473 (c!850764 totalInput!520))) tp!1397382))))

(declare-fun b!4986109 () Bool)

(declare-fun e!3116244 () Bool)

(declare-fun tp!1397381 () Bool)

(assert (=> b!4986109 (= e!3116244 tp!1397381)))

(declare-fun b!4986108 () Bool)

(declare-fun inv!75525 (IArray!30505) Bool)

(assert (=> b!4986108 (= e!3116245 (and (inv!75525 (xs!18548 (c!850764 totalInput!520))) e!3116244))))

(assert (=> b!4985707 (= tp!1397324 (and (inv!75517 (c!850764 totalInput!520)) e!3116245))))

(assert (= (and b!4985707 ((_ is Node!15222) (c!850764 totalInput!520))) b!4986107))

(assert (= b!4986108 b!4986109))

(assert (= (and b!4985707 ((_ is Leaf!25282) (c!850764 totalInput!520))) b!4986108))

(declare-fun m!6017878 () Bool)

(assert (=> b!4986107 m!6017878))

(declare-fun m!6017880 () Bool)

(assert (=> b!4986107 m!6017880))

(declare-fun m!6017882 () Bool)

(assert (=> b!4986108 m!6017882))

(assert (=> b!4985707 m!6017430))

(declare-fun tp!1397385 () Bool)

(declare-fun b!4986110 () Bool)

(declare-fun e!3116247 () Bool)

(declare-fun tp!1397386 () Bool)

(assert (=> b!4986110 (= e!3116247 (and (inv!75517 (left!42143 (c!850764 input!1580))) tp!1397386 (inv!75517 (right!42473 (c!850764 input!1580))) tp!1397385))))

(declare-fun b!4986112 () Bool)

(declare-fun e!3116246 () Bool)

(declare-fun tp!1397384 () Bool)

(assert (=> b!4986112 (= e!3116246 tp!1397384)))

(declare-fun b!4986111 () Bool)

(assert (=> b!4986111 (= e!3116247 (and (inv!75525 (xs!18548 (c!850764 input!1580))) e!3116246))))

(assert (=> b!4985705 (= tp!1397328 (and (inv!75517 (c!850764 input!1580)) e!3116247))))

(assert (= (and b!4985705 ((_ is Node!15222) (c!850764 input!1580))) b!4986110))

(assert (= b!4986111 b!4986112))

(assert (= (and b!4985705 ((_ is Leaf!25282) (c!850764 input!1580))) b!4986111))

(declare-fun m!6017884 () Bool)

(assert (=> b!4986110 m!6017884))

(declare-fun m!6017886 () Bool)

(assert (=> b!4986110 m!6017886))

(declare-fun m!6017888 () Bool)

(assert (=> b!4986111 m!6017888))

(assert (=> b!4985705 m!6017434))

(declare-fun b_lambda!198337 () Bool)

(assert (= b_lambda!198331 (or b!4985711 b_lambda!198337)))

(declare-fun bs!1184645 () Bool)

(declare-fun d!1605660 () Bool)

(assert (= bs!1184645 (and d!1605660 b!4985711)))

(declare-fun dynLambda!23455 (Int TokenValue!8780) BalanceConc!29874)

(assert (=> bs!1184645 (= (dynLambda!23454 lambda!248036 lt!2060679) (= (list!18490 (dynLambda!23455 (toChars!11332 (transformation!8470 rule!200)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) lt!2060679))) (list!18490 lt!2060679)))))

(declare-fun b_lambda!198349 () Bool)

(assert (=> (not b_lambda!198349) (not bs!1184645)))

(declare-fun t!369979 () Bool)

(declare-fun tb!261739 () Bool)

(assert (=> (and b!4985706 (= (toChars!11332 (transformation!8470 rule!200)) (toChars!11332 (transformation!8470 rule!200))) t!369979) tb!261739))

(declare-fun b!4986117 () Bool)

(declare-fun tp!1397389 () Bool)

(declare-fun e!3116250 () Bool)

(assert (=> b!4986117 (= e!3116250 (and (inv!75517 (c!850764 (dynLambda!23455 (toChars!11332 (transformation!8470 rule!200)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) lt!2060679)))) tp!1397389))))

(declare-fun result!327156 () Bool)

(assert (=> tb!261739 (= result!327156 (and (inv!75518 (dynLambda!23455 (toChars!11332 (transformation!8470 rule!200)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) lt!2060679))) e!3116250))))

(assert (= tb!261739 b!4986117))

(declare-fun m!6017890 () Bool)

(assert (=> b!4986117 m!6017890))

(declare-fun m!6017892 () Bool)

(assert (=> tb!261739 m!6017892))

(assert (=> bs!1184645 t!369979))

(declare-fun b_and!349931 () Bool)

(assert (= b_and!349905 (and (=> t!369979 result!327156) b_and!349931)))

(declare-fun b_lambda!198351 () Bool)

(assert (=> (not b_lambda!198351) (not bs!1184645)))

(assert (=> bs!1184645 t!369969))

(declare-fun b_and!349933 () Bool)

(assert (= b_and!349929 (and (=> t!369969 result!327134) b_and!349933)))

(assert (=> bs!1184645 m!6017432))

(assert (=> bs!1184645 m!6017516))

(assert (=> bs!1184645 m!6017516))

(declare-fun m!6017894 () Bool)

(assert (=> bs!1184645 m!6017894))

(assert (=> bs!1184645 m!6017894))

(declare-fun m!6017896 () Bool)

(assert (=> bs!1184645 m!6017896))

(assert (=> d!1605640 d!1605660))

(declare-fun b_lambda!198339 () Bool)

(assert (= b_lambda!198303 (or (and b!4985706 b_free!133179) b_lambda!198339)))

(declare-fun b_lambda!198341 () Bool)

(assert (= b_lambda!198299 (or (and b!4985706 b_free!133179) b_lambda!198341)))

(declare-fun b_lambda!198343 () Bool)

(assert (= b_lambda!198333 (or b!4985711 b_lambda!198343)))

(declare-fun bs!1184646 () Bool)

(declare-fun d!1605662 () Bool)

(assert (= bs!1184646 (and d!1605662 b!4985711)))

(assert (=> bs!1184646 (= (dynLambda!23454 lambda!248036 (_1!34626 lt!2060676)) (= (list!18490 (dynLambda!23455 (toChars!11332 (transformation!8470 rule!200)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) (_1!34626 lt!2060676)))) (list!18490 (_1!34626 lt!2060676))))))

(declare-fun b_lambda!198353 () Bool)

(assert (=> (not b_lambda!198353) (not bs!1184646)))

(declare-fun t!369981 () Bool)

(declare-fun tb!261741 () Bool)

(assert (=> (and b!4985706 (= (toChars!11332 (transformation!8470 rule!200)) (toChars!11332 (transformation!8470 rule!200))) t!369981) tb!261741))

(declare-fun b!4986118 () Bool)

(declare-fun tp!1397390 () Bool)

(declare-fun e!3116251 () Bool)

(assert (=> b!4986118 (= e!3116251 (and (inv!75517 (c!850764 (dynLambda!23455 (toChars!11332 (transformation!8470 rule!200)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) (_1!34626 lt!2060676))))) tp!1397390))))

(declare-fun result!327160 () Bool)

(assert (=> tb!261741 (= result!327160 (and (inv!75518 (dynLambda!23455 (toChars!11332 (transformation!8470 rule!200)) (dynLambda!23451 (toValue!11473 (transformation!8470 rule!200)) (_1!34626 lt!2060676)))) e!3116251))))

(assert (= tb!261741 b!4986118))

(declare-fun m!6017898 () Bool)

(assert (=> b!4986118 m!6017898))

(declare-fun m!6017900 () Bool)

(assert (=> tb!261741 m!6017900))

(assert (=> bs!1184646 t!369981))

(declare-fun b_and!349935 () Bool)

(assert (= b_and!349931 (and (=> t!369981 result!327160) b_and!349935)))

(declare-fun b_lambda!198355 () Bool)

(assert (=> (not b_lambda!198355) (not bs!1184646)))

(assert (=> bs!1184646 t!369971))

(declare-fun b_and!349937 () Bool)

(assert (= b_and!349933 (and (=> t!369971 result!327138) b_and!349937)))

(assert (=> bs!1184646 m!6017482))

(assert (=> bs!1184646 m!6017536))

(assert (=> bs!1184646 m!6017536))

(declare-fun m!6017902 () Bool)

(assert (=> bs!1184646 m!6017902))

(assert (=> bs!1184646 m!6017902))

(declare-fun m!6017904 () Bool)

(assert (=> bs!1184646 m!6017904))

(assert (=> d!1605644 d!1605662))

(declare-fun b_lambda!198345 () Bool)

(assert (= b_lambda!198301 (or (and b!4985706 b_free!133179) b_lambda!198345)))

(declare-fun b_lambda!198347 () Bool)

(assert (= b_lambda!198335 (or (and b!4985706 b_free!133179) b_lambda!198347)))

(check-sat (not bm!347952) (not b!4986023) (not bm!347957) (not b!4985981) (not b!4986112) (not d!1605614) (not b_lambda!198345) (not b_lambda!198353) (not d!1605580) (not b!4986098) (not b!4986110) (not b!4986111) (not d!1605542) (not d!1605648) (not b!4986097) (not tb!261739) (not b!4986024) (not b!4986077) (not b!4986022) (not d!1605646) (not d!1605616) (not b!4985707) (not bm!347955) (not bm!347954) (not b_lambda!198341) (not d!1605582) (not d!1605610) tp_is_empty!36407 (not d!1605626) (not b!4986074) (not b_lambda!198349) (not b!4986084) (not b!4986042) (not b!4986109) (not b!4986038) (not b!4985705) (not d!1605634) (not b_lambda!198355) (not b!4986073) (not b!4986020) (not bs!1184645) (not b!4985795) (not d!1605644) (not b_lambda!198339) (not b!4985812) (not b!4985810) (not d!1605630) (not b!4986080) (not b_lambda!198337) (not b!4986108) (not bs!1184646) (not bm!347956) (not b!4986045) b_and!349935 (not b_lambda!198343) (not b!4986021) (not b_next!133969) (not b!4986117) (not b!4986054) (not d!1605650) (not bm!347960) (not b!4986076) (not b!4986031) b_and!349937 (not b_lambda!198347) (not d!1605532) (not d!1605618) (not bm!347950) (not b!4986052) (not bm!347953) (not d!1605640) (not bm!347951) (not b!4986107) (not b_lambda!198351) (not tb!261741) (not b!4985984) (not b!4986118) (not d!1605638) (not d!1605538) (not d!1605642) (not b_next!133971) (not tb!261731) (not d!1605570) (not b!4986078) (not tb!261729) (not b!4986075) (not d!1605612) (not b!4985988) (not d!1605656) (not b!4985991) (not d!1605628) (not b!4986082) (not b!4985978) (not d!1605624) (not b!4986079) (not d!1605652) (not b!4986096) (not d!1605632))
(check-sat b_and!349935 b_and!349937 (not b_next!133971) (not b_next!133969))
