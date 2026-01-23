; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513596 () Bool)

(assert start!513596)

(declare-fun b!4901945 () Bool)

(declare-fun b_free!131779 () Bool)

(declare-fun b_next!132569 () Bool)

(assert (=> b!4901945 (= b_free!131779 (not b_next!132569))))

(declare-fun tp!1379268 () Bool)

(declare-fun b_and!346171 () Bool)

(assert (=> b!4901945 (= tp!1379268 b_and!346171)))

(declare-fun b_free!131781 () Bool)

(declare-fun b_next!132571 () Bool)

(assert (=> b!4901945 (= b_free!131781 (not b_next!132571))))

(declare-fun tp!1379271 () Bool)

(declare-fun b_and!346173 () Bool)

(assert (=> b!4901945 (= tp!1379271 b_and!346173)))

(declare-fun b!4901961 () Bool)

(declare-fun e!3064172 () Bool)

(assert (=> b!4901961 (= e!3064172 true)))

(declare-fun b!4901960 () Bool)

(declare-fun e!3064171 () Bool)

(assert (=> b!4901960 (= e!3064171 e!3064172)))

(declare-fun b!4901950 () Bool)

(assert (=> b!4901950 e!3064171))

(assert (= b!4901960 b!4901961))

(assert (= b!4901950 b!4901960))

(declare-fun order!25563 () Int)

(declare-fun lambda!244248 () Int)

(declare-datatypes ((C!26752 0))(
  ( (C!26753 (val!22710 Int)) )
))
(declare-datatypes ((Regex!13277 0))(
  ( (ElementMatch!13277 (c!833157 C!26752)) (Concat!21789 (regOne!27066 Regex!13277) (regTwo!27066 Regex!13277)) (EmptyExpr!13277) (Star!13277 (reg!13606 Regex!13277)) (EmptyLang!13277) (Union!13277 (regOne!27067 Regex!13277) (regTwo!27067 Regex!13277)) )
))
(declare-datatypes ((String!64001 0))(
  ( (String!64002 (value!262870 String)) )
))
(declare-datatypes ((List!56602 0))(
  ( (Nil!56478) (Cons!56478 (h!62926 (_ BitVec 16)) (t!366694 List!56602)) )
))
(declare-datatypes ((TokenValue!8512 0))(
  ( (FloatLiteralValue!17024 (text!60029 List!56602)) (TokenValueExt!8511 (__x!34317 Int)) (Broken!42560 (value!262871 List!56602)) (Object!8635) (End!8512) (Def!8512) (Underscore!8512) (Match!8512) (Else!8512) (Error!8512) (Case!8512) (If!8512) (Extends!8512) (Abstract!8512) (Class!8512) (Val!8512) (DelimiterValue!17024 (del!8572 List!56602)) (KeywordValue!8518 (value!262872 List!56602)) (CommentValue!17024 (value!262873 List!56602)) (WhitespaceValue!17024 (value!262874 List!56602)) (IndentationValue!8512 (value!262875 List!56602)) (String!64003) (Int32!8512) (Broken!42561 (value!262876 List!56602)) (Boolean!8513) (Unit!146574) (OperatorValue!8515 (op!8572 List!56602)) (IdentifierValue!17024 (value!262877 List!56602)) (IdentifierValue!17025 (value!262878 List!56602)) (WhitespaceValue!17025 (value!262879 List!56602)) (True!17024) (False!17024) (Broken!42562 (value!262880 List!56602)) (Broken!42563 (value!262881 List!56602)) (True!17025) (RightBrace!8512) (RightBracket!8512) (Colon!8512) (Null!8512) (Comma!8512) (LeftBracket!8512) (False!17025) (LeftBrace!8512) (ImaginaryLiteralValue!8512 (text!60030 List!56602)) (StringLiteralValue!25536 (value!262882 List!56602)) (EOFValue!8512 (value!262883 List!56602)) (IdentValue!8512 (value!262884 List!56602)) (DelimiterValue!17025 (value!262885 List!56602)) (DedentValue!8512 (value!262886 List!56602)) (NewLineValue!8512 (value!262887 List!56602)) (IntegerValue!25536 (value!262888 (_ BitVec 32)) (text!60031 List!56602)) (IntegerValue!25537 (value!262889 Int) (text!60032 List!56602)) (Times!8512) (Or!8512) (Equal!8512) (Minus!8512) (Broken!42564 (value!262890 List!56602)) (And!8512) (Div!8512) (LessEqual!8512) (Mod!8512) (Concat!21790) (Not!8512) (Plus!8512) (SpaceValue!8512 (value!262891 List!56602)) (IntegerValue!25538 (value!262892 Int) (text!60033 List!56602)) (StringLiteralValue!25537 (text!60034 List!56602)) (FloatLiteralValue!17025 (text!60035 List!56602)) (BytesLiteralValue!8512 (value!262893 List!56602)) (CommentValue!17025 (value!262894 List!56602)) (StringLiteralValue!25538 (value!262895 List!56602)) (ErrorTokenValue!8512 (msg!8573 List!56602)) )
))
(declare-datatypes ((List!56603 0))(
  ( (Nil!56479) (Cons!56479 (h!62927 C!26752) (t!366695 List!56603)) )
))
(declare-datatypes ((IArray!29601 0))(
  ( (IArray!29602 (innerList!14858 List!56603)) )
))
(declare-datatypes ((Conc!14770 0))(
  ( (Node!14770 (left!41053 Conc!14770) (right!41383 Conc!14770) (csize!29770 Int) (cheight!14981 Int)) (Leaf!24588 (xs!18086 IArray!29601) (csize!29771 Int)) (Empty!14770) )
))
(declare-datatypes ((BalanceConc!28970 0))(
  ( (BalanceConc!28971 (c!833158 Conc!14770)) )
))
(declare-datatypes ((TokenValueInjection!16332 0))(
  ( (TokenValueInjection!16333 (toValue!11113 Int) (toChars!10972 Int)) )
))
(declare-datatypes ((Rule!16204 0))(
  ( (Rule!16205 (regex!8202 Regex!13277) (tag!9066 String!64001) (isSeparator!8202 Bool) (transformation!8202 TokenValueInjection!16332)) )
))
(declare-fun rule!164 () Rule!16204)

(declare-fun order!25561 () Int)

(declare-fun dynLambda!22714 (Int Int) Int)

(declare-fun dynLambda!22715 (Int Int) Int)

(assert (=> b!4901961 (< (dynLambda!22714 order!25561 (toValue!11113 (transformation!8202 rule!164))) (dynLambda!22715 order!25563 lambda!244248))))

(declare-fun order!25565 () Int)

(declare-fun dynLambda!22716 (Int Int) Int)

(assert (=> b!4901961 (< (dynLambda!22716 order!25565 (toChars!10972 (transformation!8202 rule!164))) (dynLambda!22715 order!25563 lambda!244248))))

(declare-fun e!3064164 () Bool)

(assert (=> b!4901945 (= e!3064164 (and tp!1379268 tp!1379271))))

(declare-fun b!4901946 () Bool)

(declare-fun e!3064162 () Bool)

(declare-datatypes ((tuple2!60576 0))(
  ( (tuple2!60577 (_1!33591 List!56603) (_2!33591 List!56603)) )
))
(declare-fun lt!2010059 () tuple2!60576)

(declare-fun matchR!6544 (Regex!13277 List!56603) Bool)

(assert (=> b!4901946 (= e!3064162 (matchR!6544 (regex!8202 rule!164) (_1!33591 lt!2010059)))))

(declare-fun b!4901947 () Bool)

(declare-fun e!3064166 () Bool)

(declare-fun input!1509 () BalanceConc!28970)

(declare-fun tp!1379270 () Bool)

(declare-fun inv!72840 (Conc!14770) Bool)

(assert (=> b!4901947 (= e!3064166 (and (inv!72840 (c!833158 input!1509)) tp!1379270))))

(declare-fun b!4901948 () Bool)

(declare-fun e!3064165 () Bool)

(declare-fun e!3064160 () Bool)

(assert (=> b!4901948 (= e!3064165 (not e!3064160))))

(declare-fun res!2093790 () Bool)

(assert (=> b!4901948 (=> res!2093790 e!3064160)))

(declare-fun semiInverseModEq!3603 (Int Int) Bool)

(assert (=> b!4901948 (= res!2093790 (not (semiInverseModEq!3603 (toChars!10972 (transformation!8202 rule!164)) (toValue!11113 (transformation!8202 rule!164)))))))

(declare-datatypes ((Unit!146575 0))(
  ( (Unit!146576) )
))
(declare-fun lt!2010063 () Unit!146575)

(declare-fun lemmaInv!1248 (TokenValueInjection!16332) Unit!146575)

(assert (=> b!4901948 (= lt!2010063 (lemmaInv!1248 (transformation!8202 rule!164)))))

(assert (=> b!4901948 e!3064162))

(declare-fun res!2093785 () Bool)

(assert (=> b!4901948 (=> res!2093785 e!3064162)))

(declare-fun isEmpty!30339 (List!56603) Bool)

(assert (=> b!4901948 (= res!2093785 (isEmpty!30339 (_1!33591 lt!2010059)))))

(declare-fun lt!2010060 () List!56603)

(declare-fun findLongestMatchInner!1765 (Regex!13277 List!56603 Int List!56603 List!56603 Int) tuple2!60576)

(declare-fun size!37190 (List!56603) Int)

(assert (=> b!4901948 (= lt!2010059 (findLongestMatchInner!1765 (regex!8202 rule!164) Nil!56479 (size!37190 Nil!56479) lt!2010060 lt!2010060 (size!37190 lt!2010060)))))

(declare-fun lt!2010065 () Unit!146575)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1728 (Regex!13277 List!56603) Unit!146575)

(assert (=> b!4901948 (= lt!2010065 (longestMatchIsAcceptedByMatchOrIsEmpty!1728 (regex!8202 rule!164) lt!2010060))))

(declare-fun list!17772 (BalanceConc!28970) List!56603)

(assert (=> b!4901948 (= lt!2010060 (list!17772 input!1509))))

(declare-fun b!4901949 () Bool)

(declare-fun res!2093789 () Bool)

(declare-fun e!3064163 () Bool)

(assert (=> b!4901949 (=> (not res!2093789) (not e!3064163))))

(declare-datatypes ((LexerInterface!7794 0))(
  ( (LexerInterfaceExt!7791 (__x!34318 Int)) (Lexer!7792) )
))
(declare-fun thiss!15943 () LexerInterface!7794)

(declare-fun ruleValid!3699 (LexerInterface!7794 Rule!16204) Bool)

(assert (=> b!4901949 (= res!2093789 (ruleValid!3699 thiss!15943 rule!164))))

(declare-fun res!2093788 () Bool)

(assert (=> b!4901950 (=> res!2093788 e!3064160)))

(declare-fun Forall!1699 (Int) Bool)

(assert (=> b!4901950 (= res!2093788 (not (Forall!1699 lambda!244248)))))

(declare-fun res!2093787 () Bool)

(assert (=> start!513596 (=> (not res!2093787) (not e!3064163))))

(get-info :version)

(assert (=> start!513596 (= res!2093787 ((_ is Lexer!7792) thiss!15943))))

(assert (=> start!513596 e!3064163))

(assert (=> start!513596 true))

(declare-fun e!3064161 () Bool)

(assert (=> start!513596 e!3064161))

(declare-fun inv!72841 (BalanceConc!28970) Bool)

(assert (=> start!513596 (and (inv!72841 input!1509) e!3064166)))

(declare-fun b!4901951 () Bool)

(assert (=> b!4901951 (= e!3064163 e!3064165)))

(declare-fun res!2093786 () Bool)

(assert (=> b!4901951 (=> (not res!2093786) (not e!3064165))))

(declare-datatypes ((tuple2!60578 0))(
  ( (tuple2!60579 (_1!33592 BalanceConc!28970) (_2!33592 BalanceConc!28970)) )
))
(declare-fun lt!2010062 () tuple2!60578)

(declare-fun isEmpty!30340 (BalanceConc!28970) Bool)

(assert (=> b!4901951 (= res!2093786 (not (isEmpty!30340 (_1!33592 lt!2010062))))))

(declare-fun findLongestMatchWithZipperSequence!290 (Regex!13277 BalanceConc!28970) tuple2!60578)

(assert (=> b!4901951 (= lt!2010062 (findLongestMatchWithZipperSequence!290 (regex!8202 rule!164) input!1509))))

(declare-fun b!4901952 () Bool)

(assert (=> b!4901952 (= e!3064160 (Forall!1699 lambda!244248))))

(declare-fun lt!2010064 () BalanceConc!28970)

(declare-fun seqFromList!5948 (List!56603) BalanceConc!28970)

(assert (=> b!4901952 (= lt!2010064 (seqFromList!5948 (list!17772 (_1!33592 lt!2010062))))))

(declare-fun lt!2010061 () Unit!146575)

(declare-fun ForallOf!1143 (Int BalanceConc!28970) Unit!146575)

(assert (=> b!4901952 (= lt!2010061 (ForallOf!1143 lambda!244248 (_1!33592 lt!2010062)))))

(declare-fun tp!1379269 () Bool)

(declare-fun b!4901953 () Bool)

(declare-fun inv!72836 (String!64001) Bool)

(declare-fun inv!72842 (TokenValueInjection!16332) Bool)

(assert (=> b!4901953 (= e!3064161 (and tp!1379269 (inv!72836 (tag!9066 rule!164)) (inv!72842 (transformation!8202 rule!164)) e!3064164))))

(assert (= (and start!513596 res!2093787) b!4901949))

(assert (= (and b!4901949 res!2093789) b!4901951))

(assert (= (and b!4901951 res!2093786) b!4901948))

(assert (= (and b!4901948 (not res!2093785)) b!4901946))

(assert (= (and b!4901948 (not res!2093790)) b!4901950))

(assert (= (and b!4901950 (not res!2093788)) b!4901952))

(assert (= b!4901953 b!4901945))

(assert (= start!513596 b!4901953))

(assert (= start!513596 b!4901947))

(declare-fun m!5910582 () Bool)

(assert (=> b!4901946 m!5910582))

(declare-fun m!5910584 () Bool)

(assert (=> b!4901952 m!5910584))

(declare-fun m!5910586 () Bool)

(assert (=> b!4901952 m!5910586))

(assert (=> b!4901952 m!5910586))

(declare-fun m!5910588 () Bool)

(assert (=> b!4901952 m!5910588))

(declare-fun m!5910590 () Bool)

(assert (=> b!4901952 m!5910590))

(declare-fun m!5910592 () Bool)

(assert (=> b!4901951 m!5910592))

(declare-fun m!5910594 () Bool)

(assert (=> b!4901951 m!5910594))

(assert (=> b!4901950 m!5910584))

(declare-fun m!5910596 () Bool)

(assert (=> start!513596 m!5910596))

(declare-fun m!5910598 () Bool)

(assert (=> b!4901949 m!5910598))

(declare-fun m!5910600 () Bool)

(assert (=> b!4901953 m!5910600))

(declare-fun m!5910602 () Bool)

(assert (=> b!4901953 m!5910602))

(declare-fun m!5910604 () Bool)

(assert (=> b!4901947 m!5910604))

(declare-fun m!5910606 () Bool)

(assert (=> b!4901948 m!5910606))

(declare-fun m!5910608 () Bool)

(assert (=> b!4901948 m!5910608))

(assert (=> b!4901948 m!5910608))

(declare-fun m!5910610 () Bool)

(assert (=> b!4901948 m!5910610))

(declare-fun m!5910612 () Bool)

(assert (=> b!4901948 m!5910612))

(declare-fun m!5910614 () Bool)

(assert (=> b!4901948 m!5910614))

(declare-fun m!5910616 () Bool)

(assert (=> b!4901948 m!5910616))

(assert (=> b!4901948 m!5910610))

(declare-fun m!5910618 () Bool)

(assert (=> b!4901948 m!5910618))

(declare-fun m!5910620 () Bool)

(assert (=> b!4901948 m!5910620))

(check-sat (not b!4901952) (not b!4901950) (not b!4901946) b_and!346171 (not b!4901949) (not b!4901953) (not b!4901948) (not start!513596) (not b!4901947) (not b_next!132569) (not b!4901951) (not b_next!132571) b_and!346173)
(check-sat b_and!346173 b_and!346171 (not b_next!132571) (not b_next!132569))
