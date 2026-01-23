; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525174 () Bool)

(assert start!525174)

(declare-fun b!4977663 () Bool)

(declare-fun b_free!133051 () Bool)

(declare-fun b_next!133841 () Bool)

(assert (=> b!4977663 (= b_free!133051 (not b_next!133841))))

(declare-fun tp!1395849 () Bool)

(declare-fun b_and!349463 () Bool)

(assert (=> b!4977663 (= tp!1395849 b_and!349463)))

(declare-fun b_free!133053 () Bool)

(declare-fun b_next!133843 () Bool)

(assert (=> b!4977663 (= b_free!133053 (not b_next!133843))))

(declare-fun tp!1395852 () Bool)

(declare-fun b_and!349465 () Bool)

(assert (=> b!4977663 (= tp!1395852 b_and!349465)))

(declare-fun b!4977674 () Bool)

(declare-fun e!3111175 () Bool)

(assert (=> b!4977674 (= e!3111175 true)))

(declare-fun b!4977673 () Bool)

(declare-fun e!3111174 () Bool)

(assert (=> b!4977673 (= e!3111174 e!3111175)))

(declare-fun b!4977660 () Bool)

(assert (=> b!4977660 e!3111174))

(assert (= b!4977673 b!4977674))

(assert (= b!4977660 b!4977673))

(declare-fun lambda!247696 () Int)

(declare-fun order!26383 () Int)

(declare-fun order!26381 () Int)

(declare-datatypes ((C!27592 0))(
  ( (C!27593 (val!23162 Int)) )
))
(declare-datatypes ((List!57672 0))(
  ( (Nil!57548) (Cons!57548 (h!63996 C!27592) (t!369684 List!57672)) )
))
(declare-datatypes ((IArray!30441 0))(
  ( (IArray!30442 (innerList!15278 List!57672)) )
))
(declare-datatypes ((List!57673 0))(
  ( (Nil!57549) (Cons!57549 (h!63997 (_ BitVec 16)) (t!369685 List!57673)) )
))
(declare-datatypes ((Regex!13671 0))(
  ( (ElementMatch!13671 (c!849261 C!27592)) (Concat!22419 (regOne!27854 Regex!13671) (regTwo!27854 Regex!13671)) (EmptyExpr!13671) (Star!13671 (reg!14000 Regex!13671)) (EmptyLang!13671) (Union!13671 (regOne!27855 Regex!13671) (regTwo!27855 Regex!13671)) )
))
(declare-datatypes ((String!65613 0))(
  ( (String!65614 (value!269881 String)) )
))
(declare-datatypes ((Conc!15190 0))(
  ( (Node!15190 (left!42031 Conc!15190) (right!42361 Conc!15190) (csize!30610 Int) (cheight!15401 Int)) (Leaf!25234 (xs!18516 IArray!30441) (csize!30611 Int)) (Empty!15190) )
))
(declare-datatypes ((BalanceConc!29810 0))(
  ( (BalanceConc!29811 (c!849262 Conc!15190)) )
))
(declare-datatypes ((TokenValue!8748 0))(
  ( (FloatLiteralValue!17496 (text!61681 List!57673)) (TokenValueExt!8747 (__x!34789 Int)) (Broken!43740 (value!269882 List!57673)) (Object!8871) (End!8748) (Def!8748) (Underscore!8748) (Match!8748) (Else!8748) (Error!8748) (Case!8748) (If!8748) (Extends!8748) (Abstract!8748) (Class!8748) (Val!8748) (DelimiterValue!17496 (del!8808 List!57673)) (KeywordValue!8754 (value!269883 List!57673)) (CommentValue!17496 (value!269884 List!57673)) (WhitespaceValue!17496 (value!269885 List!57673)) (IndentationValue!8748 (value!269886 List!57673)) (String!65615) (Int32!8748) (Broken!43741 (value!269887 List!57673)) (Boolean!8749) (Unit!148549) (OperatorValue!8751 (op!8808 List!57673)) (IdentifierValue!17496 (value!269888 List!57673)) (IdentifierValue!17497 (value!269889 List!57673)) (WhitespaceValue!17497 (value!269890 List!57673)) (True!17496) (False!17496) (Broken!43742 (value!269891 List!57673)) (Broken!43743 (value!269892 List!57673)) (True!17497) (RightBrace!8748) (RightBracket!8748) (Colon!8748) (Null!8748) (Comma!8748) (LeftBracket!8748) (False!17497) (LeftBrace!8748) (ImaginaryLiteralValue!8748 (text!61682 List!57673)) (StringLiteralValue!26244 (value!269893 List!57673)) (EOFValue!8748 (value!269894 List!57673)) (IdentValue!8748 (value!269895 List!57673)) (DelimiterValue!17497 (value!269896 List!57673)) (DedentValue!8748 (value!269897 List!57673)) (NewLineValue!8748 (value!269898 List!57673)) (IntegerValue!26244 (value!269899 (_ BitVec 32)) (text!61683 List!57673)) (IntegerValue!26245 (value!269900 Int) (text!61684 List!57673)) (Times!8748) (Or!8748) (Equal!8748) (Minus!8748) (Broken!43744 (value!269901 List!57673)) (And!8748) (Div!8748) (LessEqual!8748) (Mod!8748) (Concat!22420) (Not!8748) (Plus!8748) (SpaceValue!8748 (value!269902 List!57673)) (IntegerValue!26246 (value!269903 Int) (text!61685 List!57673)) (StringLiteralValue!26245 (text!61686 List!57673)) (FloatLiteralValue!17497 (text!61687 List!57673)) (BytesLiteralValue!8748 (value!269904 List!57673)) (CommentValue!17497 (value!269905 List!57673)) (StringLiteralValue!26246 (value!269906 List!57673)) (ErrorTokenValue!8748 (msg!8809 List!57673)) )
))
(declare-datatypes ((TokenValueInjection!16804 0))(
  ( (TokenValueInjection!16805 (toValue!11413 Int) (toChars!11272 Int)) )
))
(declare-datatypes ((Rule!16676 0))(
  ( (Rule!16677 (regex!8438 Regex!13671) (tag!9302 String!65613) (isSeparator!8438 Bool) (transformation!8438 TokenValueInjection!16804)) )
))
(declare-fun rule!200 () Rule!16676)

(declare-fun dynLambda!23282 (Int Int) Int)

(declare-fun dynLambda!23283 (Int Int) Int)

(assert (=> b!4977674 (< (dynLambda!23282 order!26381 (toValue!11413 (transformation!8438 rule!200))) (dynLambda!23283 order!26383 lambda!247696))))

(declare-fun order!26385 () Int)

(declare-fun dynLambda!23284 (Int Int) Int)

(assert (=> b!4977674 (< (dynLambda!23284 order!26385 (toChars!11272 (transformation!8438 rule!200))) (dynLambda!23283 order!26383 lambda!247696))))

(declare-fun b!4977653 () Bool)

(declare-fun e!3111167 () Bool)

(declare-fun e!3111163 () Bool)

(assert (=> b!4977653 (= e!3111167 e!3111163)))

(declare-fun res!2124908 () Bool)

(assert (=> b!4977653 (=> res!2124908 e!3111163)))

(declare-fun lt!2055931 () BalanceConc!29810)

(declare-fun lt!2055945 () TokenValue!8748)

(declare-fun apply!13929 (TokenValueInjection!16804 BalanceConc!29810) TokenValue!8748)

(assert (=> b!4977653 (= res!2124908 (not (= (apply!13929 (transformation!8438 rule!200) lt!2055931) lt!2055945)))))

(declare-datatypes ((tuple2!62400 0))(
  ( (tuple2!62401 (_1!34503 BalanceConc!29810) (_2!34503 BalanceConc!29810)) )
))
(declare-fun lt!2055943 () tuple2!62400)

(declare-datatypes ((Unit!148550 0))(
  ( (Unit!148551) )
))
(declare-fun lt!2055944 () Unit!148550)

(declare-fun lemmaEqSameImage!1187 (TokenValueInjection!16804 BalanceConc!29810 BalanceConc!29810) Unit!148550)

(assert (=> b!4977653 (= lt!2055944 (lemmaEqSameImage!1187 (transformation!8438 rule!200) (_1!34503 lt!2055943) lt!2055931))))

(declare-fun b!4977654 () Bool)

(declare-fun e!3111161 () Bool)

(assert (=> b!4977654 (= e!3111161 e!3111167)))

(declare-fun res!2124910 () Bool)

(assert (=> b!4977654 (=> res!2124910 e!3111167)))

(declare-fun lt!2055935 () Bool)

(declare-fun lt!2055933 () Bool)

(assert (=> b!4977654 (= res!2124910 (or (not (= lt!2055935 lt!2055933)) (not lt!2055935)))))

(declare-datatypes ((Token!15340 0))(
  ( (Token!15341 (value!269907 TokenValue!8748) (rule!11690 Rule!16676) (size!38161 Int) (originalCharacters!8701 List!57672)) )
))
(declare-datatypes ((tuple2!62402 0))(
  ( (tuple2!62403 (_1!34504 Token!15340) (_2!34504 List!57672)) )
))
(declare-datatypes ((Option!14503 0))(
  ( (None!14502) (Some!14502 (v!50499 tuple2!62402)) )
))
(declare-fun lt!2055932 () Option!14503)

(declare-fun isDefined!11412 (Option!14503) Bool)

(assert (=> b!4977654 (= lt!2055933 (isDefined!11412 lt!2055932))))

(declare-fun lt!2055938 () List!57672)

(declare-fun lt!2055936 () Int)

(declare-datatypes ((tuple2!62404 0))(
  ( (tuple2!62405 (_1!34505 Token!15340) (_2!34505 BalanceConc!29810)) )
))
(declare-datatypes ((Option!14504 0))(
  ( (None!14503) (Some!14503 (v!50500 tuple2!62404)) )
))
(declare-fun isDefined!11413 (Option!14504) Bool)

(assert (=> b!4977654 (= lt!2055935 (isDefined!11413 (Some!14503 (tuple2!62405 (Token!15341 lt!2055945 rule!200 lt!2055936 lt!2055938) (_2!34503 lt!2055943)))))))

(declare-fun lt!2055940 () List!57672)

(declare-datatypes ((LexerInterface!8030 0))(
  ( (LexerInterfaceExt!8027 (__x!34790 Int)) (Lexer!8028) )
))
(declare-fun thiss!16165 () LexerInterface!8030)

(declare-fun maxPrefixOneRule!3658 (LexerInterface!8030 Rule!16676 List!57672) Option!14503)

(assert (=> b!4977654 (= lt!2055932 (maxPrefixOneRule!3658 thiss!16165 rule!200 lt!2055940))))

(declare-fun size!38162 (BalanceConc!29810) Int)

(assert (=> b!4977654 (= lt!2055936 (size!38162 (_1!34503 lt!2055943)))))

(assert (=> b!4977654 (= lt!2055945 (apply!13929 (transformation!8438 rule!200) (_1!34503 lt!2055943)))))

(declare-fun lt!2055934 () Unit!148550)

(declare-fun ForallOf!1252 (Int BalanceConc!29810) Unit!148550)

(assert (=> b!4977654 (= lt!2055934 (ForallOf!1252 lambda!247696 lt!2055931))))

(declare-fun seqFromList!6063 (List!57672) BalanceConc!29810)

(assert (=> b!4977654 (= lt!2055931 (seqFromList!6063 lt!2055938))))

(declare-fun list!18430 (BalanceConc!29810) List!57672)

(assert (=> b!4977654 (= lt!2055938 (list!18430 (_1!34503 lt!2055943)))))

(declare-fun lt!2055941 () Unit!148550)

(assert (=> b!4977654 (= lt!2055941 (ForallOf!1252 lambda!247696 (_1!34503 lt!2055943)))))

(declare-fun b!4977655 () Bool)

(declare-fun e!3111165 () Bool)

(declare-fun input!1580 () BalanceConc!29810)

(declare-fun tp!1395850 () Bool)

(declare-fun inv!75315 (Conc!15190) Bool)

(assert (=> b!4977655 (= e!3111165 (and (inv!75315 (c!849262 input!1580)) tp!1395850))))

(declare-fun b!4977656 () Bool)

(declare-fun e!3111166 () Bool)

(declare-fun e!3111168 () Bool)

(assert (=> b!4977656 (= e!3111166 e!3111168)))

(declare-fun res!2124906 () Bool)

(assert (=> b!4977656 (=> (not res!2124906) (not e!3111168))))

(declare-fun isEmpty!31037 (BalanceConc!29810) Bool)

(assert (=> b!4977656 (= res!2124906 (not (isEmpty!31037 (_1!34503 lt!2055943))))))

(declare-fun totalInput!520 () BalanceConc!29810)

(declare-fun findLongestMatchWithZipperSequenceV2!201 (Regex!13671 BalanceConc!29810 BalanceConc!29810) tuple2!62400)

(assert (=> b!4977656 (= lt!2055943 (findLongestMatchWithZipperSequenceV2!201 (regex!8438 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977657 () Bool)

(declare-fun e!3111169 () Bool)

(declare-fun tp!1395851 () Bool)

(assert (=> b!4977657 (= e!3111169 (and (inv!75315 (c!849262 totalInput!520)) tp!1395851))))

(declare-fun b!4977658 () Bool)

(declare-fun res!2124914 () Bool)

(assert (=> b!4977658 (=> res!2124914 e!3111167)))

(assert (=> b!4977658 (= res!2124914 (not (= (list!18430 lt!2055931) lt!2055938)))))

(declare-fun b!4977659 () Bool)

(declare-fun res!2124907 () Bool)

(declare-fun e!3111159 () Bool)

(assert (=> b!4977659 (=> (not res!2124907) (not e!3111159))))

(declare-fun ruleValid!3846 (LexerInterface!8030 Rule!16676) Bool)

(assert (=> b!4977659 (= res!2124907 (ruleValid!3846 thiss!16165 rule!200))))

(declare-fun res!2124911 () Bool)

(assert (=> b!4977660 (=> res!2124911 e!3111161)))

(declare-fun Forall!1788 (Int) Bool)

(assert (=> b!4977660 (= res!2124911 (not (Forall!1788 lambda!247696)))))

(declare-fun e!3111164 () Bool)

(declare-fun e!3111158 () Bool)

(declare-fun b!4977661 () Bool)

(declare-fun tp!1395848 () Bool)

(declare-fun inv!75311 (String!65613) Bool)

(declare-fun inv!75316 (TokenValueInjection!16804) Bool)

(assert (=> b!4977661 (= e!3111158 (and tp!1395848 (inv!75311 (tag!9302 rule!200)) (inv!75316 (transformation!8438 rule!200)) e!3111164))))

(declare-fun b!4977662 () Bool)

(declare-fun lt!2055942 () tuple2!62402)

(assert (=> b!4977662 (= e!3111163 (or (not (= (value!269907 (_1!34504 lt!2055942)) lt!2055945)) (not (= (rule!11690 (_1!34504 lt!2055942)) rule!200)) (not (= (size!38161 (_1!34504 lt!2055942)) lt!2055936)) (not (= (originalCharacters!8701 (_1!34504 lt!2055942)) lt!2055938)) lt!2055933))))

(declare-fun get!19993 (Option!14503) tuple2!62402)

(assert (=> b!4977662 (= lt!2055942 (get!19993 lt!2055932))))

(declare-fun b!4977664 () Bool)

(declare-fun e!3111162 () Bool)

(declare-datatypes ((tuple2!62406 0))(
  ( (tuple2!62407 (_1!34506 List!57672) (_2!34506 List!57672)) )
))
(declare-fun lt!2055946 () tuple2!62406)

(declare-fun matchR!6665 (Regex!13671 List!57672) Bool)

(assert (=> b!4977664 (= e!3111162 (matchR!6665 (regex!8438 rule!200) (_1!34506 lt!2055946)))))

(declare-fun b!4977665 () Bool)

(assert (=> b!4977665 (= e!3111159 e!3111166)))

(declare-fun res!2124909 () Bool)

(assert (=> b!4977665 (=> (not res!2124909) (not e!3111166))))

(declare-fun isSuffix!1237 (List!57672 List!57672) Bool)

(assert (=> b!4977665 (= res!2124909 (isSuffix!1237 lt!2055940 (list!18430 totalInput!520)))))

(assert (=> b!4977665 (= lt!2055940 (list!18430 input!1580))))

(declare-fun b!4977666 () Bool)

(assert (=> b!4977666 (= e!3111168 (not e!3111161))))

(declare-fun res!2124913 () Bool)

(assert (=> b!4977666 (=> res!2124913 e!3111161)))

(declare-fun semiInverseModEq!3731 (Int Int) Bool)

(assert (=> b!4977666 (= res!2124913 (not (semiInverseModEq!3731 (toChars!11272 (transformation!8438 rule!200)) (toValue!11413 (transformation!8438 rule!200)))))))

(declare-fun lt!2055939 () Unit!148550)

(declare-fun lemmaInv!1361 (TokenValueInjection!16804) Unit!148550)

(assert (=> b!4977666 (= lt!2055939 (lemmaInv!1361 (transformation!8438 rule!200)))))

(assert (=> b!4977666 e!3111162))

(declare-fun res!2124912 () Bool)

(assert (=> b!4977666 (=> res!2124912 e!3111162)))

(declare-fun isEmpty!31038 (List!57672) Bool)

(assert (=> b!4977666 (= res!2124912 (isEmpty!31038 (_1!34506 lt!2055946)))))

(declare-fun findLongestMatchInner!1882 (Regex!13671 List!57672 Int List!57672 List!57672 Int) tuple2!62406)

(declare-fun size!38163 (List!57672) Int)

(assert (=> b!4977666 (= lt!2055946 (findLongestMatchInner!1882 (regex!8438 rule!200) Nil!57548 (size!38163 Nil!57548) lt!2055940 lt!2055940 (size!38163 lt!2055940)))))

(declare-fun lt!2055937 () Unit!148550)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1843 (Regex!13671 List!57672) Unit!148550)

(assert (=> b!4977666 (= lt!2055937 (longestMatchIsAcceptedByMatchOrIsEmpty!1843 (regex!8438 rule!200) lt!2055940))))

(assert (=> b!4977663 (= e!3111164 (and tp!1395849 tp!1395852))))

(declare-fun res!2124915 () Bool)

(assert (=> start!525174 (=> (not res!2124915) (not e!3111159))))

(get-info :version)

(assert (=> start!525174 (= res!2124915 ((_ is Lexer!8028) thiss!16165))))

(assert (=> start!525174 e!3111159))

(assert (=> start!525174 true))

(assert (=> start!525174 e!3111158))

(declare-fun inv!75317 (BalanceConc!29810) Bool)

(assert (=> start!525174 (and (inv!75317 totalInput!520) e!3111169)))

(assert (=> start!525174 (and (inv!75317 input!1580) e!3111165)))

(assert (= (and start!525174 res!2124915) b!4977659))

(assert (= (and b!4977659 res!2124907) b!4977665))

(assert (= (and b!4977665 res!2124909) b!4977656))

(assert (= (and b!4977656 res!2124906) b!4977666))

(assert (= (and b!4977666 (not res!2124912)) b!4977664))

(assert (= (and b!4977666 (not res!2124913)) b!4977660))

(assert (= (and b!4977660 (not res!2124911)) b!4977654))

(assert (= (and b!4977654 (not res!2124910)) b!4977658))

(assert (= (and b!4977658 (not res!2124914)) b!4977653))

(assert (= (and b!4977653 (not res!2124908)) b!4977662))

(assert (= b!4977661 b!4977663))

(assert (= start!525174 b!4977661))

(assert (= start!525174 b!4977657))

(assert (= start!525174 b!4977655))

(declare-fun m!6008114 () Bool)

(assert (=> b!4977656 m!6008114))

(declare-fun m!6008116 () Bool)

(assert (=> b!4977656 m!6008116))

(declare-fun m!6008118 () Bool)

(assert (=> b!4977660 m!6008118))

(declare-fun m!6008120 () Bool)

(assert (=> b!4977661 m!6008120))

(declare-fun m!6008122 () Bool)

(assert (=> b!4977661 m!6008122))

(declare-fun m!6008124 () Bool)

(assert (=> b!4977654 m!6008124))

(declare-fun m!6008126 () Bool)

(assert (=> b!4977654 m!6008126))

(declare-fun m!6008128 () Bool)

(assert (=> b!4977654 m!6008128))

(declare-fun m!6008130 () Bool)

(assert (=> b!4977654 m!6008130))

(declare-fun m!6008132 () Bool)

(assert (=> b!4977654 m!6008132))

(declare-fun m!6008134 () Bool)

(assert (=> b!4977654 m!6008134))

(declare-fun m!6008136 () Bool)

(assert (=> b!4977654 m!6008136))

(declare-fun m!6008138 () Bool)

(assert (=> b!4977654 m!6008138))

(declare-fun m!6008140 () Bool)

(assert (=> b!4977654 m!6008140))

(declare-fun m!6008142 () Bool)

(assert (=> b!4977658 m!6008142))

(declare-fun m!6008144 () Bool)

(assert (=> b!4977664 m!6008144))

(declare-fun m!6008146 () Bool)

(assert (=> b!4977653 m!6008146))

(declare-fun m!6008148 () Bool)

(assert (=> b!4977653 m!6008148))

(declare-fun m!6008150 () Bool)

(assert (=> b!4977655 m!6008150))

(declare-fun m!6008152 () Bool)

(assert (=> b!4977659 m!6008152))

(declare-fun m!6008154 () Bool)

(assert (=> b!4977657 m!6008154))

(declare-fun m!6008156 () Bool)

(assert (=> b!4977662 m!6008156))

(declare-fun m!6008158 () Bool)

(assert (=> b!4977665 m!6008158))

(assert (=> b!4977665 m!6008158))

(declare-fun m!6008160 () Bool)

(assert (=> b!4977665 m!6008160))

(declare-fun m!6008162 () Bool)

(assert (=> b!4977665 m!6008162))

(declare-fun m!6008164 () Bool)

(assert (=> start!525174 m!6008164))

(declare-fun m!6008166 () Bool)

(assert (=> start!525174 m!6008166))

(declare-fun m!6008168 () Bool)

(assert (=> b!4977666 m!6008168))

(declare-fun m!6008170 () Bool)

(assert (=> b!4977666 m!6008170))

(declare-fun m!6008172 () Bool)

(assert (=> b!4977666 m!6008172))

(declare-fun m!6008174 () Bool)

(assert (=> b!4977666 m!6008174))

(declare-fun m!6008176 () Bool)

(assert (=> b!4977666 m!6008176))

(assert (=> b!4977666 m!6008172))

(declare-fun m!6008178 () Bool)

(assert (=> b!4977666 m!6008178))

(assert (=> b!4977666 m!6008174))

(declare-fun m!6008180 () Bool)

(assert (=> b!4977666 m!6008180))

(check-sat (not start!525174) (not b!4977666) (not b!4977658) (not b!4977659) b_and!349465 b_and!349463 (not b!4977662) (not b!4977661) (not b!4977656) (not b!4977664) (not b_next!133843) (not b!4977660) (not b!4977665) (not b_next!133841) (not b!4977653) (not b!4977654) (not b!4977655) (not b!4977657))
(check-sat b_and!349465 b_and!349463 (not b_next!133843) (not b_next!133841))
