; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526610 () Bool)

(assert start!526610)

(declare-fun b!4985093 () Bool)

(declare-fun b_free!133163 () Bool)

(declare-fun b_next!133953 () Bool)

(assert (=> b!4985093 (= b_free!133163 (not b_next!133953))))

(declare-fun tp!1397205 () Bool)

(declare-fun b_and!349855 () Bool)

(assert (=> b!4985093 (= tp!1397205 b_and!349855)))

(declare-fun b_free!133165 () Bool)

(declare-fun b_next!133955 () Bool)

(assert (=> b!4985093 (= b_free!133165 (not b_next!133955))))

(declare-fun tp!1397203 () Bool)

(declare-fun b_and!349857 () Bool)

(assert (=> b!4985093 (= tp!1397203 b_and!349857)))

(declare-fun b!4985104 () Bool)

(declare-fun e!3115633 () Bool)

(assert (=> b!4985104 (= e!3115633 true)))

(declare-fun b!4985103 () Bool)

(declare-fun e!3115632 () Bool)

(assert (=> b!4985103 (= e!3115632 e!3115633)))

(declare-fun b!4985083 () Bool)

(assert (=> b!4985083 e!3115632))

(assert (= b!4985103 b!4985104))

(assert (= b!4985083 b!4985103))

(declare-fun order!26581 () Int)

(declare-fun lambda!247996 () Int)

(declare-datatypes ((C!27648 0))(
  ( (C!27649 (val!23190 Int)) )
))
(declare-datatypes ((List!57728 0))(
  ( (Nil!57604) (Cons!57604 (h!64052 C!27648) (t!369940 List!57728)) )
))
(declare-datatypes ((IArray!30497 0))(
  ( (IArray!30498 (innerList!15306 List!57728)) )
))
(declare-datatypes ((String!65753 0))(
  ( (String!65754 (value!270675 String)) )
))
(declare-datatypes ((List!57729 0))(
  ( (Nil!57605) (Cons!57605 (h!64053 (_ BitVec 16)) (t!369941 List!57729)) )
))
(declare-datatypes ((Regex!13699 0))(
  ( (ElementMatch!13699 (c!850675 C!27648)) (Concat!22475 (regOne!27910 Regex!13699) (regTwo!27910 Regex!13699)) (EmptyExpr!13699) (Star!13699 (reg!14028 Regex!13699)) (EmptyLang!13699) (Union!13699 (regOne!27911 Regex!13699) (regTwo!27911 Regex!13699)) )
))
(declare-datatypes ((Conc!15218 0))(
  ( (Node!15218 (left!42129 Conc!15218) (right!42459 Conc!15218) (csize!30666 Int) (cheight!15429 Int)) (Leaf!25276 (xs!18544 IArray!30497) (csize!30667 Int)) (Empty!15218) )
))
(declare-datatypes ((BalanceConc!29866 0))(
  ( (BalanceConc!29867 (c!850676 Conc!15218)) )
))
(declare-datatypes ((TokenValue!8776 0))(
  ( (FloatLiteralValue!17552 (text!61877 List!57729)) (TokenValueExt!8775 (__x!34845 Int)) (Broken!43880 (value!270676 List!57729)) (Object!8899) (End!8776) (Def!8776) (Underscore!8776) (Match!8776) (Else!8776) (Error!8776) (Case!8776) (If!8776) (Extends!8776) (Abstract!8776) (Class!8776) (Val!8776) (DelimiterValue!17552 (del!8836 List!57729)) (KeywordValue!8782 (value!270677 List!57729)) (CommentValue!17552 (value!270678 List!57729)) (WhitespaceValue!17552 (value!270679 List!57729)) (IndentationValue!8776 (value!270680 List!57729)) (String!65755) (Int32!8776) (Broken!43881 (value!270681 List!57729)) (Boolean!8777) (Unit!148726) (OperatorValue!8779 (op!8836 List!57729)) (IdentifierValue!17552 (value!270682 List!57729)) (IdentifierValue!17553 (value!270683 List!57729)) (WhitespaceValue!17553 (value!270684 List!57729)) (True!17552) (False!17552) (Broken!43882 (value!270685 List!57729)) (Broken!43883 (value!270686 List!57729)) (True!17553) (RightBrace!8776) (RightBracket!8776) (Colon!8776) (Null!8776) (Comma!8776) (LeftBracket!8776) (False!17553) (LeftBrace!8776) (ImaginaryLiteralValue!8776 (text!61878 List!57729)) (StringLiteralValue!26328 (value!270687 List!57729)) (EOFValue!8776 (value!270688 List!57729)) (IdentValue!8776 (value!270689 List!57729)) (DelimiterValue!17553 (value!270690 List!57729)) (DedentValue!8776 (value!270691 List!57729)) (NewLineValue!8776 (value!270692 List!57729)) (IntegerValue!26328 (value!270693 (_ BitVec 32)) (text!61879 List!57729)) (IntegerValue!26329 (value!270694 Int) (text!61880 List!57729)) (Times!8776) (Or!8776) (Equal!8776) (Minus!8776) (Broken!43884 (value!270695 List!57729)) (And!8776) (Div!8776) (LessEqual!8776) (Mod!8776) (Concat!22476) (Not!8776) (Plus!8776) (SpaceValue!8776 (value!270696 List!57729)) (IntegerValue!26330 (value!270697 Int) (text!61881 List!57729)) (StringLiteralValue!26329 (text!61882 List!57729)) (FloatLiteralValue!17553 (text!61883 List!57729)) (BytesLiteralValue!8776 (value!270698 List!57729)) (CommentValue!17553 (value!270699 List!57729)) (StringLiteralValue!26330 (value!270700 List!57729)) (ErrorTokenValue!8776 (msg!8837 List!57729)) )
))
(declare-datatypes ((TokenValueInjection!16860 0))(
  ( (TokenValueInjection!16861 (toValue!11467 Int) (toChars!11326 Int)) )
))
(declare-datatypes ((Rule!16732 0))(
  ( (Rule!16733 (regex!8466 Regex!13699) (tag!9330 String!65753) (isSeparator!8466 Bool) (transformation!8466 TokenValueInjection!16860)) )
))
(declare-fun rule!200 () Rule!16732)

(declare-fun order!26583 () Int)

(declare-fun dynLambda!23426 (Int Int) Int)

(declare-fun dynLambda!23427 (Int Int) Int)

(assert (=> b!4985104 (< (dynLambda!23426 order!26581 (toValue!11467 (transformation!8466 rule!200))) (dynLambda!23427 order!26583 lambda!247996))))

(declare-fun order!26585 () Int)

(declare-fun dynLambda!23428 (Int Int) Int)

(assert (=> b!4985104 (< (dynLambda!23428 order!26585 (toChars!11326 (transformation!8466 rule!200))) (dynLambda!23427 order!26583 lambda!247996))))

(declare-fun b!4985082 () Bool)

(declare-fun e!3115619 () Bool)

(declare-fun e!3115623 () Bool)

(assert (=> b!4985082 (= e!3115619 e!3115623)))

(declare-fun res!2128060 () Bool)

(assert (=> b!4985082 (=> (not res!2128060) (not e!3115623))))

(declare-datatypes ((tuple2!62608 0))(
  ( (tuple2!62609 (_1!34607 BalanceConc!29866) (_2!34607 BalanceConc!29866)) )
))
(declare-fun lt!2060214 () tuple2!62608)

(declare-fun isEmpty!31144 (BalanceConc!29866) Bool)

(assert (=> b!4985082 (= res!2128060 (not (isEmpty!31144 (_1!34607 lt!2060214))))))

(declare-fun totalInput!520 () BalanceConc!29866)

(declare-fun input!1580 () BalanceConc!29866)

(declare-fun findLongestMatchWithZipperSequenceV2!229 (Regex!13699 BalanceConc!29866 BalanceConc!29866) tuple2!62608)

(assert (=> b!4985082 (= lt!2060214 (findLongestMatchWithZipperSequenceV2!229 (regex!8466 rule!200) input!1580 totalInput!520))))

(declare-fun res!2128061 () Bool)

(declare-fun e!3115625 () Bool)

(assert (=> b!4985083 (=> res!2128061 e!3115625)))

(declare-fun Forall!1816 (Int) Bool)

(assert (=> b!4985083 (= res!2128061 (not (Forall!1816 lambda!247996)))))

(declare-fun res!2128054 () Bool)

(declare-fun e!3115626 () Bool)

(assert (=> start!526610 (=> (not res!2128054) (not e!3115626))))

(declare-datatypes ((LexerInterface!8058 0))(
  ( (LexerInterfaceExt!8055 (__x!34846 Int)) (Lexer!8056) )
))
(declare-fun thiss!16165 () LexerInterface!8058)

(get-info :version)

(assert (=> start!526610 (= res!2128054 ((_ is Lexer!8056) thiss!16165))))

(assert (=> start!526610 e!3115626))

(assert (=> start!526610 true))

(declare-fun e!3115627 () Bool)

(assert (=> start!526610 e!3115627))

(declare-fun e!3115620 () Bool)

(declare-fun inv!75494 (BalanceConc!29866) Bool)

(assert (=> start!526610 (and (inv!75494 totalInput!520) e!3115620)))

(declare-fun e!3115622 () Bool)

(assert (=> start!526610 (and (inv!75494 input!1580) e!3115622)))

(declare-fun b!4985084 () Bool)

(declare-fun e!3115624 () Bool)

(declare-fun e!3115616 () Bool)

(assert (=> b!4985084 (= e!3115624 e!3115616)))

(declare-fun res!2128058 () Bool)

(assert (=> b!4985084 (=> res!2128058 e!3115616)))

(declare-fun lt!2060211 () TokenValue!8776)

(declare-fun lt!2060218 () BalanceConc!29866)

(declare-fun apply!13953 (TokenValueInjection!16860 BalanceConc!29866) TokenValue!8776)

(assert (=> b!4985084 (= res!2128058 (not (= (apply!13953 (transformation!8466 rule!200) lt!2060218) lt!2060211)))))

(declare-datatypes ((Unit!148727 0))(
  ( (Unit!148728) )
))
(declare-fun lt!2060219 () Unit!148727)

(declare-fun lemmaEqSameImage!1205 (TokenValueInjection!16860 BalanceConc!29866 BalanceConc!29866) Unit!148727)

(assert (=> b!4985084 (= lt!2060219 (lemmaEqSameImage!1205 (transformation!8466 rule!200) (_1!34607 lt!2060214) lt!2060218))))

(declare-fun b!4985085 () Bool)

(declare-fun res!2128055 () Bool)

(assert (=> b!4985085 (=> (not res!2128055) (not e!3115626))))

(declare-fun ruleValid!3874 (LexerInterface!8058 Rule!16732) Bool)

(assert (=> b!4985085 (= res!2128055 (ruleValid!3874 thiss!16165 rule!200))))

(declare-fun b!4985086 () Bool)

(assert (=> b!4985086 (= e!3115623 (not e!3115625))))

(declare-fun res!2128063 () Bool)

(assert (=> b!4985086 (=> res!2128063 e!3115625)))

(declare-fun semiInverseModEq!3759 (Int Int) Bool)

(assert (=> b!4985086 (= res!2128063 (not (semiInverseModEq!3759 (toChars!11326 (transformation!8466 rule!200)) (toValue!11467 (transformation!8466 rule!200)))))))

(declare-fun lt!2060210 () Unit!148727)

(declare-fun lemmaInv!1389 (TokenValueInjection!16860) Unit!148727)

(assert (=> b!4985086 (= lt!2060210 (lemmaInv!1389 (transformation!8466 rule!200)))))

(declare-fun e!3115617 () Bool)

(assert (=> b!4985086 e!3115617))

(declare-fun res!2128062 () Bool)

(assert (=> b!4985086 (=> res!2128062 e!3115617)))

(declare-datatypes ((tuple2!62610 0))(
  ( (tuple2!62611 (_1!34608 List!57728) (_2!34608 List!57728)) )
))
(declare-fun lt!2060216 () tuple2!62610)

(declare-fun isEmpty!31145 (List!57728) Bool)

(assert (=> b!4985086 (= res!2128062 (isEmpty!31145 (_1!34608 lt!2060216)))))

(declare-fun lt!2060212 () List!57728)

(declare-fun findLongestMatchInner!1910 (Regex!13699 List!57728 Int List!57728 List!57728 Int) tuple2!62610)

(declare-fun size!38252 (List!57728) Int)

(assert (=> b!4985086 (= lt!2060216 (findLongestMatchInner!1910 (regex!8466 rule!200) Nil!57604 (size!38252 Nil!57604) lt!2060212 lt!2060212 (size!38252 lt!2060212)))))

(declare-fun lt!2060209 () Unit!148727)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1871 (Regex!13699 List!57728) Unit!148727)

(assert (=> b!4985086 (= lt!2060209 (longestMatchIsAcceptedByMatchOrIsEmpty!1871 (regex!8466 rule!200) lt!2060212))))

(declare-fun b!4985087 () Bool)

(assert (=> b!4985087 (= e!3115626 e!3115619)))

(declare-fun res!2128057 () Bool)

(assert (=> b!4985087 (=> (not res!2128057) (not e!3115619))))

(declare-fun isSuffix!1265 (List!57728 List!57728) Bool)

(declare-fun list!18484 (BalanceConc!29866) List!57728)

(assert (=> b!4985087 (= res!2128057 (isSuffix!1265 lt!2060212 (list!18484 totalInput!520)))))

(assert (=> b!4985087 (= lt!2060212 (list!18484 input!1580))))

(declare-fun b!4985088 () Bool)

(declare-fun tp!1397206 () Bool)

(declare-fun inv!75495 (Conc!15218) Bool)

(assert (=> b!4985088 (= e!3115620 (and (inv!75495 (c!850676 totalInput!520)) tp!1397206))))

(declare-fun b!4985089 () Bool)

(assert (=> b!4985089 (= e!3115625 e!3115624)))

(declare-fun res!2128056 () Bool)

(assert (=> b!4985089 (=> res!2128056 e!3115624)))

(declare-fun lt!2060224 () Bool)

(declare-datatypes ((Token!15388 0))(
  ( (Token!15389 (value!270701 TokenValue!8776) (rule!11730 Rule!16732) (size!38253 Int) (originalCharacters!8725 List!57728)) )
))
(declare-datatypes ((tuple2!62612 0))(
  ( (tuple2!62613 (_1!34609 Token!15388) (_2!34609 List!57728)) )
))
(declare-datatypes ((Option!14551 0))(
  ( (None!14550) (Some!14550 (v!50547 tuple2!62612)) )
))
(declare-fun lt!2060221 () Option!14551)

(declare-fun isDefined!11460 (Option!14551) Bool)

(assert (=> b!4985089 (= res!2128056 (not (= lt!2060224 (isDefined!11460 lt!2060221))))))

(declare-fun lt!2060222 () Token!15388)

(declare-datatypes ((tuple2!62614 0))(
  ( (tuple2!62615 (_1!34610 Token!15388) (_2!34610 BalanceConc!29866)) )
))
(declare-datatypes ((Option!14552 0))(
  ( (None!14551) (Some!14551 (v!50548 tuple2!62614)) )
))
(declare-fun isDefined!11461 (Option!14552) Bool)

(assert (=> b!4985089 (= lt!2060224 (isDefined!11461 (Some!14551 (tuple2!62615 lt!2060222 (_2!34607 lt!2060214)))))))

(declare-fun maxPrefixOneRule!3682 (LexerInterface!8058 Rule!16732 List!57728) Option!14551)

(assert (=> b!4985089 (= lt!2060221 (maxPrefixOneRule!3682 thiss!16165 rule!200 lt!2060212))))

(declare-fun lt!2060220 () List!57728)

(declare-fun lt!2060217 () Int)

(assert (=> b!4985089 (= lt!2060222 (Token!15389 lt!2060211 rule!200 lt!2060217 lt!2060220))))

(declare-fun size!38254 (BalanceConc!29866) Int)

(assert (=> b!4985089 (= lt!2060217 (size!38254 (_1!34607 lt!2060214)))))

(assert (=> b!4985089 (= lt!2060211 (apply!13953 (transformation!8466 rule!200) (_1!34607 lt!2060214)))))

(declare-fun lt!2060213 () Unit!148727)

(declare-fun ForallOf!1276 (Int BalanceConc!29866) Unit!148727)

(assert (=> b!4985089 (= lt!2060213 (ForallOf!1276 lambda!247996 lt!2060218))))

(declare-fun seqFromList!6087 (List!57728) BalanceConc!29866)

(assert (=> b!4985089 (= lt!2060218 (seqFromList!6087 lt!2060220))))

(assert (=> b!4985089 (= lt!2060220 (list!18484 (_1!34607 lt!2060214)))))

(declare-fun lt!2060215 () Unit!148727)

(assert (=> b!4985089 (= lt!2060215 (ForallOf!1276 lambda!247996 (_1!34607 lt!2060214)))))

(declare-fun b!4985090 () Bool)

(declare-fun tp!1397204 () Bool)

(assert (=> b!4985090 (= e!3115622 (and (inv!75495 (c!850676 input!1580)) tp!1397204))))

(declare-fun b!4985091 () Bool)

(declare-fun lt!2060223 () tuple2!62612)

(assert (=> b!4985091 (= e!3115616 (or (not (= (value!270701 (_1!34609 lt!2060223)) lt!2060211)) (not (= (rule!11730 (_1!34609 lt!2060223)) rule!200)) (not (= (size!38253 (_1!34609 lt!2060223)) lt!2060217)) (not (= (originalCharacters!8725 (_1!34609 lt!2060223)) lt!2060220)) (= lt!2060222 (_1!34609 lt!2060223))))))

(declare-fun get!20035 (Option!14551) tuple2!62612)

(assert (=> b!4985091 (= lt!2060223 (get!20035 lt!2060221))))

(declare-fun b!4985092 () Bool)

(declare-fun res!2128053 () Bool)

(assert (=> b!4985092 (=> res!2128053 e!3115624)))

(assert (=> b!4985092 (= res!2128053 (not lt!2060224))))

(declare-fun e!3115621 () Bool)

(assert (=> b!4985093 (= e!3115621 (and tp!1397205 tp!1397203))))

(declare-fun b!4985094 () Bool)

(declare-fun res!2128059 () Bool)

(assert (=> b!4985094 (=> res!2128059 e!3115624)))

(assert (=> b!4985094 (= res!2128059 (not (= (list!18484 lt!2060218) lt!2060220)))))

(declare-fun b!4985095 () Bool)

(declare-fun tp!1397202 () Bool)

(declare-fun inv!75490 (String!65753) Bool)

(declare-fun inv!75496 (TokenValueInjection!16860) Bool)

(assert (=> b!4985095 (= e!3115627 (and tp!1397202 (inv!75490 (tag!9330 rule!200)) (inv!75496 (transformation!8466 rule!200)) e!3115621))))

(declare-fun b!4985096 () Bool)

(declare-fun matchR!6693 (Regex!13699 List!57728) Bool)

(assert (=> b!4985096 (= e!3115617 (matchR!6693 (regex!8466 rule!200) (_1!34608 lt!2060216)))))

(assert (= (and start!526610 res!2128054) b!4985085))

(assert (= (and b!4985085 res!2128055) b!4985087))

(assert (= (and b!4985087 res!2128057) b!4985082))

(assert (= (and b!4985082 res!2128060) b!4985086))

(assert (= (and b!4985086 (not res!2128062)) b!4985096))

(assert (= (and b!4985086 (not res!2128063)) b!4985083))

(assert (= (and b!4985083 (not res!2128061)) b!4985089))

(assert (= (and b!4985089 (not res!2128056)) b!4985092))

(assert (= (and b!4985092 (not res!2128053)) b!4985094))

(assert (= (and b!4985094 (not res!2128059)) b!4985084))

(assert (= (and b!4985084 (not res!2128058)) b!4985091))

(assert (= b!4985095 b!4985093))

(assert (= start!526610 b!4985095))

(assert (= start!526610 b!4985088))

(assert (= start!526610 b!4985090))

(declare-fun m!6016726 () Bool)

(assert (=> b!4985083 m!6016726))

(declare-fun m!6016728 () Bool)

(assert (=> b!4985094 m!6016728))

(declare-fun m!6016730 () Bool)

(assert (=> b!4985091 m!6016730))

(declare-fun m!6016732 () Bool)

(assert (=> b!4985089 m!6016732))

(declare-fun m!6016734 () Bool)

(assert (=> b!4985089 m!6016734))

(declare-fun m!6016736 () Bool)

(assert (=> b!4985089 m!6016736))

(declare-fun m!6016738 () Bool)

(assert (=> b!4985089 m!6016738))

(declare-fun m!6016740 () Bool)

(assert (=> b!4985089 m!6016740))

(declare-fun m!6016742 () Bool)

(assert (=> b!4985089 m!6016742))

(declare-fun m!6016744 () Bool)

(assert (=> b!4985089 m!6016744))

(declare-fun m!6016746 () Bool)

(assert (=> b!4985089 m!6016746))

(declare-fun m!6016748 () Bool)

(assert (=> b!4985089 m!6016748))

(declare-fun m!6016750 () Bool)

(assert (=> b!4985086 m!6016750))

(declare-fun m!6016752 () Bool)

(assert (=> b!4985086 m!6016752))

(declare-fun m!6016754 () Bool)

(assert (=> b!4985086 m!6016754))

(declare-fun m!6016756 () Bool)

(assert (=> b!4985086 m!6016756))

(declare-fun m!6016758 () Bool)

(assert (=> b!4985086 m!6016758))

(assert (=> b!4985086 m!6016756))

(assert (=> b!4985086 m!6016754))

(declare-fun m!6016760 () Bool)

(assert (=> b!4985086 m!6016760))

(declare-fun m!6016762 () Bool)

(assert (=> b!4985086 m!6016762))

(declare-fun m!6016764 () Bool)

(assert (=> b!4985088 m!6016764))

(declare-fun m!6016766 () Bool)

(assert (=> b!4985085 m!6016766))

(declare-fun m!6016768 () Bool)

(assert (=> b!4985087 m!6016768))

(assert (=> b!4985087 m!6016768))

(declare-fun m!6016770 () Bool)

(assert (=> b!4985087 m!6016770))

(declare-fun m!6016772 () Bool)

(assert (=> b!4985087 m!6016772))

(declare-fun m!6016774 () Bool)

(assert (=> b!4985090 m!6016774))

(declare-fun m!6016776 () Bool)

(assert (=> b!4985082 m!6016776))

(declare-fun m!6016778 () Bool)

(assert (=> b!4985082 m!6016778))

(declare-fun m!6016780 () Bool)

(assert (=> start!526610 m!6016780))

(declare-fun m!6016782 () Bool)

(assert (=> start!526610 m!6016782))

(declare-fun m!6016784 () Bool)

(assert (=> b!4985095 m!6016784))

(declare-fun m!6016786 () Bool)

(assert (=> b!4985095 m!6016786))

(declare-fun m!6016788 () Bool)

(assert (=> b!4985096 m!6016788))

(declare-fun m!6016790 () Bool)

(assert (=> b!4985084 m!6016790))

(declare-fun m!6016792 () Bool)

(assert (=> b!4985084 m!6016792))

(check-sat b_and!349857 (not b!4985089) (not b!4985096) (not b_next!133955) (not b!4985094) (not b!4985091) (not b!4985085) (not b!4985082) (not b!4985084) (not b!4985087) b_and!349855 (not b!4985083) (not b_next!133953) (not b!4985088) (not b!4985095) (not b!4985090) (not start!526610) (not b!4985086))
(check-sat b_and!349857 b_and!349855 (not b_next!133955) (not b_next!133953))
