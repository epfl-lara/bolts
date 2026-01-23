; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513632 () Bool)

(assert start!513632)

(declare-fun b!4902725 () Bool)

(declare-fun b_free!131851 () Bool)

(declare-fun b_next!132641 () Bool)

(assert (=> b!4902725 (= b_free!131851 (not b_next!132641))))

(declare-fun tp!1379485 () Bool)

(declare-fun b_and!346243 () Bool)

(assert (=> b!4902725 (= tp!1379485 b_and!346243)))

(declare-fun b_free!131853 () Bool)

(declare-fun b_next!132643 () Bool)

(assert (=> b!4902725 (= b_free!131853 (not b_next!132643))))

(declare-fun tp!1379486 () Bool)

(declare-fun b_and!346245 () Bool)

(assert (=> b!4902725 (= tp!1379486 b_and!346245)))

(declare-fun b!4902735 () Bool)

(declare-fun e!3064796 () Bool)

(assert (=> b!4902735 (= e!3064796 true)))

(declare-fun b!4902734 () Bool)

(declare-fun e!3064795 () Bool)

(assert (=> b!4902734 (= e!3064795 e!3064796)))

(declare-fun b!4902720 () Bool)

(assert (=> b!4902720 e!3064795))

(assert (= b!4902734 b!4902735))

(assert (= b!4902720 b!4902734))

(declare-fun order!25669 () Int)

(declare-fun order!25671 () Int)

(declare-datatypes ((C!26788 0))(
  ( (C!26789 (val!22728 Int)) )
))
(declare-datatypes ((Regex!13295 0))(
  ( (ElementMatch!13295 (c!833211 C!26788)) (Concat!21825 (regOne!27102 Regex!13295) (regTwo!27102 Regex!13295)) (EmptyExpr!13295) (Star!13295 (reg!13624 Regex!13295)) (EmptyLang!13295) (Union!13295 (regOne!27103 Regex!13295) (regTwo!27103 Regex!13295)) )
))
(declare-datatypes ((String!64091 0))(
  ( (String!64092 (value!263380 String)) )
))
(declare-datatypes ((List!56638 0))(
  ( (Nil!56514) (Cons!56514 (h!62962 (_ BitVec 16)) (t!366730 List!56638)) )
))
(declare-datatypes ((TokenValue!8530 0))(
  ( (FloatLiteralValue!17060 (text!60155 List!56638)) (TokenValueExt!8529 (__x!34353 Int)) (Broken!42650 (value!263381 List!56638)) (Object!8653) (End!8530) (Def!8530) (Underscore!8530) (Match!8530) (Else!8530) (Error!8530) (Case!8530) (If!8530) (Extends!8530) (Abstract!8530) (Class!8530) (Val!8530) (DelimiterValue!17060 (del!8590 List!56638)) (KeywordValue!8536 (value!263382 List!56638)) (CommentValue!17060 (value!263383 List!56638)) (WhitespaceValue!17060 (value!263384 List!56638)) (IndentationValue!8530 (value!263385 List!56638)) (String!64093) (Int32!8530) (Broken!42651 (value!263386 List!56638)) (Boolean!8531) (Unit!146628) (OperatorValue!8533 (op!8590 List!56638)) (IdentifierValue!17060 (value!263387 List!56638)) (IdentifierValue!17061 (value!263388 List!56638)) (WhitespaceValue!17061 (value!263389 List!56638)) (True!17060) (False!17060) (Broken!42652 (value!263390 List!56638)) (Broken!42653 (value!263391 List!56638)) (True!17061) (RightBrace!8530) (RightBracket!8530) (Colon!8530) (Null!8530) (Comma!8530) (LeftBracket!8530) (False!17061) (LeftBrace!8530) (ImaginaryLiteralValue!8530 (text!60156 List!56638)) (StringLiteralValue!25590 (value!263392 List!56638)) (EOFValue!8530 (value!263393 List!56638)) (IdentValue!8530 (value!263394 List!56638)) (DelimiterValue!17061 (value!263395 List!56638)) (DedentValue!8530 (value!263396 List!56638)) (NewLineValue!8530 (value!263397 List!56638)) (IntegerValue!25590 (value!263398 (_ BitVec 32)) (text!60157 List!56638)) (IntegerValue!25591 (value!263399 Int) (text!60158 List!56638)) (Times!8530) (Or!8530) (Equal!8530) (Minus!8530) (Broken!42654 (value!263400 List!56638)) (And!8530) (Div!8530) (LessEqual!8530) (Mod!8530) (Concat!21826) (Not!8530) (Plus!8530) (SpaceValue!8530 (value!263401 List!56638)) (IntegerValue!25592 (value!263402 Int) (text!60159 List!56638)) (StringLiteralValue!25591 (text!60160 List!56638)) (FloatLiteralValue!17061 (text!60161 List!56638)) (BytesLiteralValue!8530 (value!263403 List!56638)) (CommentValue!17061 (value!263404 List!56638)) (StringLiteralValue!25592 (value!263405 List!56638)) (ErrorTokenValue!8530 (msg!8591 List!56638)) )
))
(declare-datatypes ((List!56639 0))(
  ( (Nil!56515) (Cons!56515 (h!62963 C!26788) (t!366731 List!56639)) )
))
(declare-datatypes ((IArray!29637 0))(
  ( (IArray!29638 (innerList!14876 List!56639)) )
))
(declare-datatypes ((Conc!14788 0))(
  ( (Node!14788 (left!41116 Conc!14788) (right!41446 Conc!14788) (csize!29806 Int) (cheight!14999 Int)) (Leaf!24615 (xs!18104 IArray!29637) (csize!29807 Int)) (Empty!14788) )
))
(declare-datatypes ((BalanceConc!29006 0))(
  ( (BalanceConc!29007 (c!833212 Conc!14788)) )
))
(declare-datatypes ((TokenValueInjection!16368 0))(
  ( (TokenValueInjection!16369 (toValue!11131 Int) (toChars!10990 Int)) )
))
(declare-datatypes ((Rule!16240 0))(
  ( (Rule!16241 (regex!8220 Regex!13295) (tag!9084 String!64091) (isSeparator!8220 Bool) (transformation!8220 TokenValueInjection!16368)) )
))
(declare-fun rule!164 () Rule!16240)

(declare-fun lambda!244374 () Int)

(declare-fun dynLambda!22768 (Int Int) Int)

(declare-fun dynLambda!22769 (Int Int) Int)

(assert (=> b!4902735 (< (dynLambda!22768 order!25669 (toValue!11131 (transformation!8220 rule!164))) (dynLambda!22769 order!25671 lambda!244374))))

(declare-fun order!25673 () Int)

(declare-fun dynLambda!22770 (Int Int) Int)

(assert (=> b!4902735 (< (dynLambda!22770 order!25673 (toChars!10990 (transformation!8220 rule!164))) (dynLambda!22769 order!25671 lambda!244374))))

(declare-fun b!4902716 () Bool)

(declare-fun e!3064788 () Bool)

(declare-fun e!3064786 () Bool)

(assert (=> b!4902716 (= e!3064788 e!3064786)))

(declare-fun res!2094258 () Bool)

(assert (=> b!4902716 (=> res!2094258 e!3064786)))

(declare-fun lt!2010809 () BalanceConc!29006)

(declare-fun lt!2010805 () TokenValue!8530)

(declare-fun apply!13568 (TokenValueInjection!16368 BalanceConc!29006) TokenValue!8530)

(assert (=> b!4902716 (= res!2094258 (not (= (apply!13568 (transformation!8220 rule!164) lt!2010809) lt!2010805)))))

(declare-datatypes ((Unit!146629 0))(
  ( (Unit!146630) )
))
(declare-fun lt!2010810 () Unit!146629)

(declare-datatypes ((tuple2!60708 0))(
  ( (tuple2!60709 (_1!33657 BalanceConc!29006) (_2!33657 BalanceConc!29006)) )
))
(declare-fun lt!2010804 () tuple2!60708)

(declare-fun lemmaEqSameImage!1112 (TokenValueInjection!16368 BalanceConc!29006 BalanceConc!29006) Unit!146629)

(assert (=> b!4902716 (= lt!2010810 (lemmaEqSameImage!1112 (transformation!8220 rule!164) (_1!33657 lt!2010804) lt!2010809))))

(declare-fun b!4902717 () Bool)

(declare-fun e!3064790 () Bool)

(assert (=> b!4902717 (= e!3064790 e!3064788)))

(declare-fun res!2094251 () Bool)

(assert (=> b!4902717 (=> res!2094251 e!3064788)))

(declare-fun lt!2010801 () Bool)

(declare-fun lt!2010807 () Bool)

(assert (=> b!4902717 (= res!2094251 (or (not (= lt!2010801 lt!2010807)) (not lt!2010801)))))

(declare-datatypes ((Token!14976 0))(
  ( (Token!14977 (value!263406 TokenValue!8530) (rule!11420 Rule!16240) (size!37240 Int) (originalCharacters!8519 List!56639)) )
))
(declare-datatypes ((tuple2!60710 0))(
  ( (tuple2!60711 (_1!33658 Token!14976) (_2!33658 List!56639)) )
))
(declare-datatypes ((Option!14085 0))(
  ( (None!14084) (Some!14084 (v!50046 tuple2!60710)) )
))
(declare-fun lt!2010815 () Option!14085)

(declare-fun isDefined!11094 (Option!14085) Bool)

(assert (=> b!4902717 (= lt!2010807 (isDefined!11094 lt!2010815))))

(declare-fun lt!2010799 () Token!14976)

(declare-datatypes ((tuple2!60712 0))(
  ( (tuple2!60713 (_1!33659 Token!14976) (_2!33659 BalanceConc!29006)) )
))
(declare-datatypes ((Option!14086 0))(
  ( (None!14085) (Some!14085 (v!50047 tuple2!60712)) )
))
(declare-fun isDefined!11095 (Option!14086) Bool)

(assert (=> b!4902717 (= lt!2010801 (isDefined!11095 (Some!14085 (tuple2!60713 lt!2010799 (_2!33657 lt!2010804)))))))

(declare-fun lt!2010806 () List!56639)

(declare-datatypes ((LexerInterface!7812 0))(
  ( (LexerInterfaceExt!7809 (__x!34354 Int)) (Lexer!7810) )
))
(declare-fun thiss!15943 () LexerInterface!7812)

(declare-fun maxPrefixOneRule!3561 (LexerInterface!7812 Rule!16240 List!56639) Option!14085)

(assert (=> b!4902717 (= lt!2010815 (maxPrefixOneRule!3561 thiss!15943 rule!164 lt!2010806))))

(declare-fun lt!2010800 () Int)

(declare-fun lt!2010802 () List!56639)

(assert (=> b!4902717 (= lt!2010799 (Token!14977 lt!2010805 rule!164 lt!2010800 lt!2010802))))

(declare-fun size!37241 (BalanceConc!29006) Int)

(assert (=> b!4902717 (= lt!2010800 (size!37241 (_1!33657 lt!2010804)))))

(assert (=> b!4902717 (= lt!2010805 (apply!13568 (transformation!8220 rule!164) (_1!33657 lt!2010804)))))

(declare-fun lt!2010803 () Unit!146629)

(declare-fun ForallOf!1161 (Int BalanceConc!29006) Unit!146629)

(assert (=> b!4902717 (= lt!2010803 (ForallOf!1161 lambda!244374 lt!2010809))))

(declare-fun seqFromList!5966 (List!56639) BalanceConc!29006)

(assert (=> b!4902717 (= lt!2010809 (seqFromList!5966 lt!2010802))))

(declare-fun list!17790 (BalanceConc!29006) List!56639)

(assert (=> b!4902717 (= lt!2010802 (list!17790 (_1!33657 lt!2010804)))))

(declare-fun lt!2010812 () Unit!146629)

(assert (=> b!4902717 (= lt!2010812 (ForallOf!1161 lambda!244374 (_1!33657 lt!2010804)))))

(declare-fun b!4902718 () Bool)

(declare-fun e!3064787 () Bool)

(declare-fun e!3064785 () Bool)

(assert (=> b!4902718 (= e!3064787 e!3064785)))

(declare-fun res!2094253 () Bool)

(assert (=> b!4902718 (=> (not res!2094253) (not e!3064785))))

(declare-fun isEmpty!30375 (BalanceConc!29006) Bool)

(assert (=> b!4902718 (= res!2094253 (not (isEmpty!30375 (_1!33657 lt!2010804))))))

(declare-fun input!1509 () BalanceConc!29006)

(declare-fun findLongestMatchWithZipperSequence!308 (Regex!13295 BalanceConc!29006) tuple2!60708)

(assert (=> b!4902718 (= lt!2010804 (findLongestMatchWithZipperSequence!308 (regex!8220 rule!164) input!1509))))

(declare-fun b!4902719 () Bool)

(declare-fun res!2094252 () Bool)

(assert (=> b!4902719 (=> res!2094252 e!3064788)))

(assert (=> b!4902719 (= res!2094252 (not (= (list!17790 lt!2010809) lt!2010802)))))

(declare-fun res!2094254 () Bool)

(assert (=> b!4902720 (=> res!2094254 e!3064790)))

(declare-fun Forall!1717 (Int) Bool)

(assert (=> b!4902720 (= res!2094254 (not (Forall!1717 lambda!244374)))))

(declare-fun lt!2010814 () tuple2!60710)

(declare-fun b!4902721 () Bool)

(assert (=> b!4902721 (= e!3064786 (or (not (= (value!263406 (_1!33658 lt!2010814)) lt!2010805)) (not (= (rule!11420 (_1!33658 lt!2010814)) rule!164)) (not (= (size!37240 (_1!33658 lt!2010814)) lt!2010800)) (not (= (originalCharacters!8519 (_1!33658 lt!2010814)) lt!2010802)) (not (= lt!2010799 (_1!33658 lt!2010814))) lt!2010807))))

(declare-fun get!19536 (Option!14085) tuple2!60710)

(assert (=> b!4902721 (= lt!2010814 (get!19536 lt!2010815))))

(declare-fun b!4902722 () Bool)

(declare-fun e!3064783 () Bool)

(declare-datatypes ((tuple2!60714 0))(
  ( (tuple2!60715 (_1!33660 List!56639) (_2!33660 List!56639)) )
))
(declare-fun lt!2010811 () tuple2!60714)

(declare-fun matchR!6562 (Regex!13295 List!56639) Bool)

(assert (=> b!4902722 (= e!3064783 (matchR!6562 (regex!8220 rule!164) (_1!33660 lt!2010811)))))

(declare-fun b!4902723 () Bool)

(declare-fun res!2094255 () Bool)

(assert (=> b!4902723 (=> (not res!2094255) (not e!3064787))))

(declare-fun ruleValid!3717 (LexerInterface!7812 Rule!16240) Bool)

(assert (=> b!4902723 (= res!2094255 (ruleValid!3717 thiss!15943 rule!164))))

(declare-fun b!4902724 () Bool)

(declare-fun e!3064781 () Bool)

(declare-fun tp!1379484 () Bool)

(declare-fun inv!72921 (Conc!14788) Bool)

(assert (=> b!4902724 (= e!3064781 (and (inv!72921 (c!833212 input!1509)) tp!1379484))))

(declare-fun res!2094250 () Bool)

(assert (=> start!513632 (=> (not res!2094250) (not e!3064787))))

(get-info :version)

(assert (=> start!513632 (= res!2094250 ((_ is Lexer!7810) thiss!15943))))

(assert (=> start!513632 e!3064787))

(assert (=> start!513632 true))

(declare-fun e!3064784 () Bool)

(assert (=> start!513632 e!3064784))

(declare-fun inv!72922 (BalanceConc!29006) Bool)

(assert (=> start!513632 (and (inv!72922 input!1509) e!3064781)))

(declare-fun e!3064789 () Bool)

(assert (=> b!4902725 (= e!3064789 (and tp!1379485 tp!1379486))))

(declare-fun b!4902726 () Bool)

(declare-fun tp!1379487 () Bool)

(declare-fun inv!72917 (String!64091) Bool)

(declare-fun inv!72923 (TokenValueInjection!16368) Bool)

(assert (=> b!4902726 (= e!3064784 (and tp!1379487 (inv!72917 (tag!9084 rule!164)) (inv!72923 (transformation!8220 rule!164)) e!3064789))))

(declare-fun b!4902727 () Bool)

(assert (=> b!4902727 (= e!3064785 (not e!3064790))))

(declare-fun res!2094256 () Bool)

(assert (=> b!4902727 (=> res!2094256 e!3064790)))

(declare-fun semiInverseModEq!3621 (Int Int) Bool)

(assert (=> b!4902727 (= res!2094256 (not (semiInverseModEq!3621 (toChars!10990 (transformation!8220 rule!164)) (toValue!11131 (transformation!8220 rule!164)))))))

(declare-fun lt!2010808 () Unit!146629)

(declare-fun lemmaInv!1266 (TokenValueInjection!16368) Unit!146629)

(assert (=> b!4902727 (= lt!2010808 (lemmaInv!1266 (transformation!8220 rule!164)))))

(assert (=> b!4902727 e!3064783))

(declare-fun res!2094257 () Bool)

(assert (=> b!4902727 (=> res!2094257 e!3064783)))

(declare-fun isEmpty!30376 (List!56639) Bool)

(assert (=> b!4902727 (= res!2094257 (isEmpty!30376 (_1!33660 lt!2010811)))))

(declare-fun findLongestMatchInner!1783 (Regex!13295 List!56639 Int List!56639 List!56639 Int) tuple2!60714)

(declare-fun size!37242 (List!56639) Int)

(assert (=> b!4902727 (= lt!2010811 (findLongestMatchInner!1783 (regex!8220 rule!164) Nil!56515 (size!37242 Nil!56515) lt!2010806 lt!2010806 (size!37242 lt!2010806)))))

(declare-fun lt!2010813 () Unit!146629)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1746 (Regex!13295 List!56639) Unit!146629)

(assert (=> b!4902727 (= lt!2010813 (longestMatchIsAcceptedByMatchOrIsEmpty!1746 (regex!8220 rule!164) lt!2010806))))

(assert (=> b!4902727 (= lt!2010806 (list!17790 input!1509))))

(assert (= (and start!513632 res!2094250) b!4902723))

(assert (= (and b!4902723 res!2094255) b!4902718))

(assert (= (and b!4902718 res!2094253) b!4902727))

(assert (= (and b!4902727 (not res!2094257)) b!4902722))

(assert (= (and b!4902727 (not res!2094256)) b!4902720))

(assert (= (and b!4902720 (not res!2094254)) b!4902717))

(assert (= (and b!4902717 (not res!2094251)) b!4902719))

(assert (= (and b!4902719 (not res!2094252)) b!4902716))

(assert (= (and b!4902716 (not res!2094258)) b!4902721))

(assert (= b!4902726 b!4902725))

(assert (= start!513632 b!4902726))

(assert (= start!513632 b!4902724))

(declare-fun m!5911594 () Bool)

(assert (=> start!513632 m!5911594))

(declare-fun m!5911596 () Bool)

(assert (=> b!4902720 m!5911596))

(declare-fun m!5911598 () Bool)

(assert (=> b!4902716 m!5911598))

(declare-fun m!5911600 () Bool)

(assert (=> b!4902716 m!5911600))

(declare-fun m!5911602 () Bool)

(assert (=> b!4902719 m!5911602))

(declare-fun m!5911604 () Bool)

(assert (=> b!4902721 m!5911604))

(declare-fun m!5911606 () Bool)

(assert (=> b!4902727 m!5911606))

(declare-fun m!5911608 () Bool)

(assert (=> b!4902727 m!5911608))

(declare-fun m!5911610 () Bool)

(assert (=> b!4902727 m!5911610))

(declare-fun m!5911612 () Bool)

(assert (=> b!4902727 m!5911612))

(declare-fun m!5911614 () Bool)

(assert (=> b!4902727 m!5911614))

(assert (=> b!4902727 m!5911610))

(declare-fun m!5911616 () Bool)

(assert (=> b!4902727 m!5911616))

(assert (=> b!4902727 m!5911614))

(declare-fun m!5911618 () Bool)

(assert (=> b!4902727 m!5911618))

(declare-fun m!5911620 () Bool)

(assert (=> b!4902727 m!5911620))

(declare-fun m!5911622 () Bool)

(assert (=> b!4902718 m!5911622))

(declare-fun m!5911624 () Bool)

(assert (=> b!4902718 m!5911624))

(declare-fun m!5911626 () Bool)

(assert (=> b!4902717 m!5911626))

(declare-fun m!5911628 () Bool)

(assert (=> b!4902717 m!5911628))

(declare-fun m!5911630 () Bool)

(assert (=> b!4902717 m!5911630))

(declare-fun m!5911632 () Bool)

(assert (=> b!4902717 m!5911632))

(declare-fun m!5911634 () Bool)

(assert (=> b!4902717 m!5911634))

(declare-fun m!5911636 () Bool)

(assert (=> b!4902717 m!5911636))

(declare-fun m!5911638 () Bool)

(assert (=> b!4902717 m!5911638))

(declare-fun m!5911640 () Bool)

(assert (=> b!4902717 m!5911640))

(declare-fun m!5911642 () Bool)

(assert (=> b!4902717 m!5911642))

(declare-fun m!5911644 () Bool)

(assert (=> b!4902724 m!5911644))

(declare-fun m!5911646 () Bool)

(assert (=> b!4902726 m!5911646))

(declare-fun m!5911648 () Bool)

(assert (=> b!4902726 m!5911648))

(declare-fun m!5911650 () Bool)

(assert (=> b!4902723 m!5911650))

(declare-fun m!5911652 () Bool)

(assert (=> b!4902722 m!5911652))

(check-sat (not b!4902718) (not b!4902724) b_and!346245 (not b!4902722) (not b!4902720) (not start!513632) (not b_next!132643) b_and!346243 (not b!4902723) (not b!4902717) (not b_next!132641) (not b!4902716) (not b!4902727) (not b!4902721) (not b!4902726) (not b!4902719))
(check-sat b_and!346245 b_and!346243 (not b_next!132643) (not b_next!132641))
