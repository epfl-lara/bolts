; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192284 () Bool)

(assert start!192284)

(declare-fun b!1919563 () Bool)

(declare-fun b_free!54745 () Bool)

(declare-fun b_next!55449 () Bool)

(assert (=> b!1919563 (= b_free!54745 (not b_next!55449))))

(declare-fun tp!548321 () Bool)

(declare-fun b_and!149951 () Bool)

(assert (=> b!1919563 (= tp!548321 b_and!149951)))

(declare-fun b_free!54747 () Bool)

(declare-fun b_next!55451 () Bool)

(assert (=> b!1919563 (= b_free!54747 (not b_next!55451))))

(declare-fun tp!548313 () Bool)

(declare-fun b_and!149953 () Bool)

(assert (=> b!1919563 (= tp!548313 b_and!149953)))

(declare-fun b!1919565 () Bool)

(declare-fun b_free!54749 () Bool)

(declare-fun b_next!55453 () Bool)

(assert (=> b!1919565 (= b_free!54749 (not b_next!55453))))

(declare-fun tp!548319 () Bool)

(declare-fun b_and!149955 () Bool)

(assert (=> b!1919565 (= tp!548319 b_and!149955)))

(declare-fun b_free!54751 () Bool)

(declare-fun b_next!55455 () Bool)

(assert (=> b!1919565 (= b_free!54751 (not b_next!55455))))

(declare-fun tp!548317 () Bool)

(declare-fun b_and!149957 () Bool)

(assert (=> b!1919565 (= tp!548317 b_and!149957)))

(declare-fun b!1919566 () Bool)

(declare-fun b_free!54753 () Bool)

(declare-fun b_next!55457 () Bool)

(assert (=> b!1919566 (= b_free!54753 (not b_next!55457))))

(declare-fun tp!548312 () Bool)

(declare-fun b_and!149959 () Bool)

(assert (=> b!1919566 (= tp!548312 b_and!149959)))

(declare-fun b_free!54755 () Bool)

(declare-fun b_next!55459 () Bool)

(assert (=> b!1919566 (= b_free!54755 (not b_next!55459))))

(declare-fun tp!548310 () Bool)

(declare-fun b_and!149961 () Bool)

(assert (=> b!1919566 (= tp!548310 b_and!149961)))

(declare-fun e!1226882 () Bool)

(assert (=> b!1919563 (= e!1226882 (and tp!548321 tp!548313))))

(declare-fun e!1226879 () Bool)

(declare-datatypes ((List!21884 0))(
  ( (Nil!21802) (Cons!21802 (h!27203 (_ BitVec 16)) (t!178677 List!21884)) )
))
(declare-datatypes ((TokenValue!4040 0))(
  ( (FloatLiteralValue!8080 (text!28725 List!21884)) (TokenValueExt!4039 (__x!13578 Int)) (Broken!20200 (value!122829 List!21884)) (Object!4121) (End!4040) (Def!4040) (Underscore!4040) (Match!4040) (Else!4040) (Error!4040) (Case!4040) (If!4040) (Extends!4040) (Abstract!4040) (Class!4040) (Val!4040) (DelimiterValue!8080 (del!4100 List!21884)) (KeywordValue!4046 (value!122830 List!21884)) (CommentValue!8080 (value!122831 List!21884)) (WhitespaceValue!8080 (value!122832 List!21884)) (IndentationValue!4040 (value!122833 List!21884)) (String!25317) (Int32!4040) (Broken!20201 (value!122834 List!21884)) (Boolean!4041) (Unit!36169) (OperatorValue!4043 (op!4100 List!21884)) (IdentifierValue!8080 (value!122835 List!21884)) (IdentifierValue!8081 (value!122836 List!21884)) (WhitespaceValue!8081 (value!122837 List!21884)) (True!8080) (False!8080) (Broken!20202 (value!122838 List!21884)) (Broken!20203 (value!122839 List!21884)) (True!8081) (RightBrace!4040) (RightBracket!4040) (Colon!4040) (Null!4040) (Comma!4040) (LeftBracket!4040) (False!8081) (LeftBrace!4040) (ImaginaryLiteralValue!4040 (text!28726 List!21884)) (StringLiteralValue!12120 (value!122840 List!21884)) (EOFValue!4040 (value!122841 List!21884)) (IdentValue!4040 (value!122842 List!21884)) (DelimiterValue!8081 (value!122843 List!21884)) (DedentValue!4040 (value!122844 List!21884)) (NewLineValue!4040 (value!122845 List!21884)) (IntegerValue!12120 (value!122846 (_ BitVec 32)) (text!28727 List!21884)) (IntegerValue!12121 (value!122847 Int) (text!28728 List!21884)) (Times!4040) (Or!4040) (Equal!4040) (Minus!4040) (Broken!20204 (value!122848 List!21884)) (And!4040) (Div!4040) (LessEqual!4040) (Mod!4040) (Concat!9369) (Not!4040) (Plus!4040) (SpaceValue!4040 (value!122849 List!21884)) (IntegerValue!12122 (value!122850 Int) (text!28729 List!21884)) (StringLiteralValue!12121 (text!28730 List!21884)) (FloatLiteralValue!8081 (text!28731 List!21884)) (BytesLiteralValue!4040 (value!122851 List!21884)) (CommentValue!8081 (value!122852 List!21884)) (StringLiteralValue!12122 (value!122853 List!21884)) (ErrorTokenValue!4040 (msg!4101 List!21884)) )
))
(declare-datatypes ((C!10804 0))(
  ( (C!10805 (val!6354 Int)) )
))
(declare-datatypes ((List!21885 0))(
  ( (Nil!21803) (Cons!21803 (h!27204 C!10804) (t!178678 List!21885)) )
))
(declare-datatypes ((Regex!5329 0))(
  ( (ElementMatch!5329 (c!312135 C!10804)) (Concat!9370 (regOne!11170 Regex!5329) (regTwo!11170 Regex!5329)) (EmptyExpr!5329) (Star!5329 (reg!5658 Regex!5329)) (EmptyLang!5329) (Union!5329 (regOne!11171 Regex!5329) (regTwo!11171 Regex!5329)) )
))
(declare-datatypes ((String!25318 0))(
  ( (String!25319 (value!122854 String)) )
))
(declare-datatypes ((IArray!14559 0))(
  ( (IArray!14560 (innerList!7337 List!21885)) )
))
(declare-datatypes ((Conc!7277 0))(
  ( (Node!7277 (left!17363 Conc!7277) (right!17693 Conc!7277) (csize!14784 Int) (cheight!7488 Int)) (Leaf!10692 (xs!10171 IArray!14559) (csize!14785 Int)) (Empty!7277) )
))
(declare-datatypes ((BalanceConc!14370 0))(
  ( (BalanceConc!14371 (c!312136 Conc!7277)) )
))
(declare-datatypes ((TokenValueInjection!7664 0))(
  ( (TokenValueInjection!7665 (toValue!5533 Int) (toChars!5392 Int)) )
))
(declare-datatypes ((Rule!7608 0))(
  ( (Rule!7609 (regex!3904 Regex!5329) (tag!4344 String!25318) (isSeparator!3904 Bool) (transformation!3904 TokenValueInjection!7664)) )
))
(declare-datatypes ((Token!7360 0))(
  ( (Token!7361 (value!122855 TokenValue!4040) (rule!6107 Rule!7608) (size!17050 Int) (originalCharacters!4711 List!21885)) )
))
(declare-fun separatorToken!354 () Token!7360)

(declare-fun b!1919564 () Bool)

(declare-fun tp!548322 () Bool)

(declare-fun e!1226889 () Bool)

(declare-fun inv!28879 (String!25318) Bool)

(declare-fun inv!28882 (TokenValueInjection!7664) Bool)

(assert (=> b!1919564 (= e!1226879 (and tp!548322 (inv!28879 (tag!4344 (rule!6107 separatorToken!354))) (inv!28882 (transformation!3904 (rule!6107 separatorToken!354))) e!1226889))))

(assert (=> b!1919565 (= e!1226889 (and tp!548319 tp!548317))))

(declare-fun res!858450 () Bool)

(declare-fun e!1226880 () Bool)

(assert (=> start!192284 (=> (not res!858450) (not e!1226880))))

(declare-datatypes ((LexerInterface!3517 0))(
  ( (LexerInterfaceExt!3514 (__x!13579 Int)) (Lexer!3515) )
))
(declare-fun thiss!23328 () LexerInterface!3517)

(get-info :version)

(assert (=> start!192284 (= res!858450 ((_ is Lexer!3515) thiss!23328))))

(assert (=> start!192284 e!1226880))

(assert (=> start!192284 true))

(declare-fun e!1226875 () Bool)

(assert (=> start!192284 e!1226875))

(declare-fun e!1226890 () Bool)

(assert (=> start!192284 e!1226890))

(declare-fun e!1226883 () Bool)

(declare-fun inv!28883 (Token!7360) Bool)

(assert (=> start!192284 (and (inv!28883 separatorToken!354) e!1226883)))

(declare-fun e!1226877 () Bool)

(assert (=> b!1919566 (= e!1226877 (and tp!548312 tp!548310))))

(declare-fun b!1919567 () Bool)

(declare-fun res!858449 () Bool)

(assert (=> b!1919567 (=> (not res!858449) (not e!1226880))))

(declare-datatypes ((List!21886 0))(
  ( (Nil!21804) (Cons!21804 (h!27205 Token!7360) (t!178679 List!21886)) )
))
(declare-fun tokens!598 () List!21886)

(declare-fun lambda!74923 () Int)

(declare-fun forall!4600 (List!21886 Int) Bool)

(assert (=> b!1919567 (= res!858449 (forall!4600 tokens!598 lambda!74923))))

(declare-fun b!1919568 () Bool)

(declare-fun res!858454 () Bool)

(assert (=> b!1919568 (=> (not res!858454) (not e!1226880))))

(declare-datatypes ((List!21887 0))(
  ( (Nil!21805) (Cons!21805 (h!27206 Rule!7608) (t!178680 List!21887)) )
))
(declare-fun rules!3198 () List!21887)

(declare-fun rulesProduceEachTokenIndividuallyList!1248 (LexerInterface!3517 List!21887 List!21886) Bool)

(assert (=> b!1919568 (= res!858454 (rulesProduceEachTokenIndividuallyList!1248 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1919569 () Bool)

(declare-fun res!858451 () Bool)

(assert (=> b!1919569 (=> (not res!858451) (not e!1226880))))

(declare-fun sepAndNonSepRulesDisjointChars!1002 (List!21887 List!21887) Bool)

(assert (=> b!1919569 (= res!858451 (sepAndNonSepRulesDisjointChars!1002 rules!3198 rules!3198))))

(declare-fun b!1919570 () Bool)

(declare-fun res!858453 () Bool)

(assert (=> b!1919570 (=> (not res!858453) (not e!1226880))))

(assert (=> b!1919570 (= res!858453 (isSeparator!3904 (rule!6107 separatorToken!354)))))

(declare-fun b!1919571 () Bool)

(declare-fun res!858455 () Bool)

(assert (=> b!1919571 (=> (not res!858455) (not e!1226880))))

(declare-fun rulesInvariant!3124 (LexerInterface!3517 List!21887) Bool)

(assert (=> b!1919571 (= res!858455 (rulesInvariant!3124 thiss!23328 rules!3198))))

(declare-fun b!1919572 () Bool)

(declare-fun res!858448 () Bool)

(assert (=> b!1919572 (=> (not res!858448) (not e!1226880))))

(declare-fun rulesProduceIndividualToken!1689 (LexerInterface!3517 List!21887 Token!7360) Bool)

(assert (=> b!1919572 (= res!858448 (rulesProduceIndividualToken!1689 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1226878 () Bool)

(declare-fun tp!548311 () Bool)

(declare-fun b!1919573 () Bool)

(assert (=> b!1919573 (= e!1226878 (and tp!548311 (inv!28879 (tag!4344 (h!27206 rules!3198))) (inv!28882 (transformation!3904 (h!27206 rules!3198))) e!1226877))))

(declare-fun b!1919574 () Bool)

(assert (=> b!1919574 (= e!1226880 (not (forall!4600 tokens!598 lambda!74923)))))

(declare-fun b!1919575 () Bool)

(declare-fun res!858447 () Bool)

(assert (=> b!1919575 (=> (not res!858447) (not e!1226880))))

(assert (=> b!1919575 (= res!858447 (not ((_ is Cons!21804) tokens!598)))))

(declare-fun b!1919576 () Bool)

(declare-fun tp!548315 () Bool)

(assert (=> b!1919576 (= e!1226875 (and e!1226878 tp!548315))))

(declare-fun b!1919577 () Bool)

(declare-fun tp!548318 () Bool)

(declare-fun e!1226876 () Bool)

(declare-fun e!1226884 () Bool)

(declare-fun inv!21 (TokenValue!4040) Bool)

(assert (=> b!1919577 (= e!1226884 (and (inv!21 (value!122855 (h!27205 tokens!598))) e!1226876 tp!548318))))

(declare-fun b!1919578 () Bool)

(declare-fun tp!548316 () Bool)

(assert (=> b!1919578 (= e!1226883 (and (inv!21 (value!122855 separatorToken!354)) e!1226879 tp!548316))))

(declare-fun b!1919579 () Bool)

(declare-fun tp!548314 () Bool)

(assert (=> b!1919579 (= e!1226876 (and tp!548314 (inv!28879 (tag!4344 (rule!6107 (h!27205 tokens!598)))) (inv!28882 (transformation!3904 (rule!6107 (h!27205 tokens!598)))) e!1226882))))

(declare-fun tp!548320 () Bool)

(declare-fun b!1919580 () Bool)

(assert (=> b!1919580 (= e!1226890 (and (inv!28883 (h!27205 tokens!598)) e!1226884 tp!548320))))

(declare-fun b!1919581 () Bool)

(declare-fun res!858452 () Bool)

(assert (=> b!1919581 (=> (not res!858452) (not e!1226880))))

(declare-fun isEmpty!13413 (List!21887) Bool)

(assert (=> b!1919581 (= res!858452 (not (isEmpty!13413 rules!3198)))))

(declare-fun b!1919582 () Bool)

(declare-fun res!858456 () Bool)

(assert (=> b!1919582 (=> (not res!858456) (not e!1226880))))

(declare-fun isEmpty!13414 (List!21886) Bool)

(assert (=> b!1919582 (= res!858456 (not (isEmpty!13414 tokens!598)))))

(assert (= (and start!192284 res!858450) b!1919581))

(assert (= (and b!1919581 res!858452) b!1919571))

(assert (= (and b!1919571 res!858455) b!1919568))

(assert (= (and b!1919568 res!858454) b!1919572))

(assert (= (and b!1919572 res!858448) b!1919570))

(assert (= (and b!1919570 res!858453) b!1919567))

(assert (= (and b!1919567 res!858449) b!1919569))

(assert (= (and b!1919569 res!858451) b!1919575))

(assert (= (and b!1919575 res!858447) b!1919582))

(assert (= (and b!1919582 res!858456) b!1919574))

(assert (= b!1919573 b!1919566))

(assert (= b!1919576 b!1919573))

(assert (= (and start!192284 ((_ is Cons!21805) rules!3198)) b!1919576))

(assert (= b!1919579 b!1919563))

(assert (= b!1919577 b!1919579))

(assert (= b!1919580 b!1919577))

(assert (= (and start!192284 ((_ is Cons!21804) tokens!598)) b!1919580))

(assert (= b!1919564 b!1919565))

(assert (= b!1919578 b!1919564))

(assert (= start!192284 b!1919578))

(declare-fun m!2355025 () Bool)

(assert (=> b!1919573 m!2355025))

(declare-fun m!2355027 () Bool)

(assert (=> b!1919573 m!2355027))

(declare-fun m!2355029 () Bool)

(assert (=> b!1919564 m!2355029))

(declare-fun m!2355031 () Bool)

(assert (=> b!1919564 m!2355031))

(declare-fun m!2355033 () Bool)

(assert (=> b!1919569 m!2355033))

(declare-fun m!2355035 () Bool)

(assert (=> b!1919580 m!2355035))

(declare-fun m!2355037 () Bool)

(assert (=> b!1919568 m!2355037))

(declare-fun m!2355039 () Bool)

(assert (=> b!1919572 m!2355039))

(declare-fun m!2355041 () Bool)

(assert (=> b!1919579 m!2355041))

(declare-fun m!2355043 () Bool)

(assert (=> b!1919579 m!2355043))

(declare-fun m!2355045 () Bool)

(assert (=> b!1919578 m!2355045))

(declare-fun m!2355047 () Bool)

(assert (=> b!1919571 m!2355047))

(declare-fun m!2355049 () Bool)

(assert (=> b!1919577 m!2355049))

(declare-fun m!2355051 () Bool)

(assert (=> b!1919581 m!2355051))

(declare-fun m!2355053 () Bool)

(assert (=> b!1919582 m!2355053))

(declare-fun m!2355055 () Bool)

(assert (=> b!1919567 m!2355055))

(declare-fun m!2355057 () Bool)

(assert (=> start!192284 m!2355057))

(assert (=> b!1919574 m!2355055))

(check-sat b_and!149953 (not b!1919569) b_and!149951 (not b!1919567) (not b!1919572) (not b_next!55455) (not start!192284) b_and!149959 (not b!1919568) (not b!1919582) (not b!1919580) (not b_next!55451) b_and!149957 b_and!149961 (not b_next!55457) (not b!1919579) (not b!1919571) (not b_next!55449) (not b!1919581) (not b!1919564) b_and!149955 (not b!1919573) (not b!1919578) (not b!1919574) (not b!1919576) (not b_next!55453) (not b!1919577) (not b_next!55459))
(check-sat b_and!149953 b_and!149951 (not b_next!55455) b_and!149959 (not b_next!55449) b_and!149955 (not b_next!55451) b_and!149957 (not b_next!55453) (not b_next!55459) b_and!149961 (not b_next!55457))
