; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259538 () Bool)

(assert start!259538)

(declare-fun b!2668417 () Bool)

(declare-fun b_free!74817 () Bool)

(declare-fun b_next!75521 () Bool)

(assert (=> b!2668417 (= b_free!74817 (not b_next!75521))))

(declare-fun tp!843260 () Bool)

(declare-fun b_and!196777 () Bool)

(assert (=> b!2668417 (= tp!843260 b_and!196777)))

(declare-fun b_free!74819 () Bool)

(declare-fun b_next!75523 () Bool)

(assert (=> b!2668417 (= b_free!74819 (not b_next!75523))))

(declare-fun tp!843262 () Bool)

(declare-fun b_and!196779 () Bool)

(assert (=> b!2668417 (= tp!843262 b_and!196779)))

(declare-fun b!2668406 () Bool)

(declare-fun b_free!74821 () Bool)

(declare-fun b_next!75525 () Bool)

(assert (=> b!2668406 (= b_free!74821 (not b_next!75525))))

(declare-fun tp!843252 () Bool)

(declare-fun b_and!196781 () Bool)

(assert (=> b!2668406 (= tp!843252 b_and!196781)))

(declare-fun b_free!74823 () Bool)

(declare-fun b_next!75527 () Bool)

(assert (=> b!2668406 (= b_free!74823 (not b_next!75527))))

(declare-fun tp!843259 () Bool)

(declare-fun b_and!196783 () Bool)

(assert (=> b!2668406 (= tp!843259 b_and!196783)))

(declare-fun b!2668404 () Bool)

(declare-fun b_free!74825 () Bool)

(declare-fun b_next!75529 () Bool)

(assert (=> b!2668404 (= b_free!74825 (not b_next!75529))))

(declare-fun tp!843254 () Bool)

(declare-fun b_and!196785 () Bool)

(assert (=> b!2668404 (= tp!843254 b_and!196785)))

(declare-fun b_free!74827 () Bool)

(declare-fun b_next!75531 () Bool)

(assert (=> b!2668404 (= b_free!74827 (not b_next!75531))))

(declare-fun tp!843258 () Bool)

(declare-fun b_and!196787 () Bool)

(assert (=> b!2668404 (= tp!843258 b_and!196787)))

(declare-fun b!2668399 () Bool)

(declare-fun res!1121886 () Bool)

(declare-fun e!1681447 () Bool)

(assert (=> b!2668399 (=> (not res!1121886) (not e!1681447))))

(declare-datatypes ((LexerInterface!4264 0))(
  ( (LexerInterfaceExt!4261 (__x!19611 Int)) (Lexer!4262) )
))
(declare-fun thiss!14116 () LexerInterface!4264)

(declare-datatypes ((List!30729 0))(
  ( (Nil!30629) (Cons!30629 (h!36049 (_ BitVec 16)) (t!222928 List!30729)) )
))
(declare-datatypes ((TokenValue!4889 0))(
  ( (FloatLiteralValue!9778 (text!34668 List!30729)) (TokenValueExt!4888 (__x!19612 Int)) (Broken!24445 (value!150588 List!30729)) (Object!4988) (End!4889) (Def!4889) (Underscore!4889) (Match!4889) (Else!4889) (Error!4889) (Case!4889) (If!4889) (Extends!4889) (Abstract!4889) (Class!4889) (Val!4889) (DelimiterValue!9778 (del!4949 List!30729)) (KeywordValue!4895 (value!150589 List!30729)) (CommentValue!9778 (value!150590 List!30729)) (WhitespaceValue!9778 (value!150591 List!30729)) (IndentationValue!4889 (value!150592 List!30729)) (String!34328) (Int32!4889) (Broken!24446 (value!150593 List!30729)) (Boolean!4890) (Unit!44874) (OperatorValue!4892 (op!4949 List!30729)) (IdentifierValue!9778 (value!150594 List!30729)) (IdentifierValue!9779 (value!150595 List!30729)) (WhitespaceValue!9779 (value!150596 List!30729)) (True!9778) (False!9778) (Broken!24447 (value!150597 List!30729)) (Broken!24448 (value!150598 List!30729)) (True!9779) (RightBrace!4889) (RightBracket!4889) (Colon!4889) (Null!4889) (Comma!4889) (LeftBracket!4889) (False!9779) (LeftBrace!4889) (ImaginaryLiteralValue!4889 (text!34669 List!30729)) (StringLiteralValue!14667 (value!150599 List!30729)) (EOFValue!4889 (value!150600 List!30729)) (IdentValue!4889 (value!150601 List!30729)) (DelimiterValue!9779 (value!150602 List!30729)) (DedentValue!4889 (value!150603 List!30729)) (NewLineValue!4889 (value!150604 List!30729)) (IntegerValue!14667 (value!150605 (_ BitVec 32)) (text!34670 List!30729)) (IntegerValue!14668 (value!150606 Int) (text!34671 List!30729)) (Times!4889) (Or!4889) (Equal!4889) (Minus!4889) (Broken!24449 (value!150607 List!30729)) (And!4889) (Div!4889) (LessEqual!4889) (Mod!4889) (Concat!12700) (Not!4889) (Plus!4889) (SpaceValue!4889 (value!150608 List!30729)) (IntegerValue!14669 (value!150609 Int) (text!34672 List!30729)) (StringLiteralValue!14668 (text!34673 List!30729)) (FloatLiteralValue!9779 (text!34674 List!30729)) (BytesLiteralValue!4889 (value!150610 List!30729)) (CommentValue!9779 (value!150611 List!30729)) (StringLiteralValue!14669 (value!150612 List!30729)) (ErrorTokenValue!4889 (msg!4950 List!30729)) )
))
(declare-datatypes ((C!15780 0))(
  ( (C!15781 (val!9824 Int)) )
))
(declare-datatypes ((List!30730 0))(
  ( (Nil!30630) (Cons!30630 (h!36050 C!15780) (t!222929 List!30730)) )
))
(declare-datatypes ((IArray!19155 0))(
  ( (IArray!19156 (innerList!9635 List!30730)) )
))
(declare-datatypes ((Conc!9575 0))(
  ( (Node!9575 (left!23680 Conc!9575) (right!24010 Conc!9575) (csize!19380 Int) (cheight!9786 Int)) (Leaf!14649 (xs!12605 IArray!19155) (csize!19381 Int)) (Empty!9575) )
))
(declare-datatypes ((BalanceConc!18764 0))(
  ( (BalanceConc!18765 (c!430371 Conc!9575)) )
))
(declare-datatypes ((Regex!7811 0))(
  ( (ElementMatch!7811 (c!430372 C!15780)) (Concat!12701 (regOne!16134 Regex!7811) (regTwo!16134 Regex!7811)) (EmptyExpr!7811) (Star!7811 (reg!8140 Regex!7811)) (EmptyLang!7811) (Union!7811 (regOne!16135 Regex!7811) (regTwo!16135 Regex!7811)) )
))
(declare-datatypes ((TokenValueInjection!9218 0))(
  ( (TokenValueInjection!9219 (toValue!6605 Int) (toChars!6464 Int)) )
))
(declare-datatypes ((String!34329 0))(
  ( (String!34330 (value!150613 String)) )
))
(declare-datatypes ((Rule!9134 0))(
  ( (Rule!9135 (regex!4667 Regex!7811) (tag!5169 String!34329) (isSeparator!4667 Bool) (transformation!4667 TokenValueInjection!9218)) )
))
(declare-datatypes ((List!30731 0))(
  ( (Nil!30631) (Cons!30631 (h!36051 Rule!9134) (t!222930 List!30731)) )
))
(declare-fun rules!1712 () List!30731)

(declare-datatypes ((Token!8804 0))(
  ( (Token!8805 (value!150614 TokenValue!4889) (rule!7073 Rule!9134) (size!23717 Int) (originalCharacters!5433 List!30730)) )
))
(declare-datatypes ((List!30732 0))(
  ( (Nil!30632) (Cons!30632 (h!36052 Token!8804) (t!222931 List!30732)) )
))
(declare-fun l!4335 () List!30732)

(declare-fun rulesProduceEachTokenIndividuallyList!1486 (LexerInterface!4264 List!30731 List!30732) Bool)

(assert (=> b!2668399 (= res!1121886 (rulesProduceEachTokenIndividuallyList!1486 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1681444 () Bool)

(declare-fun tp!843251 () Bool)

(declare-fun b!2668400 () Bool)

(declare-fun e!1681446 () Bool)

(declare-fun inv!41636 (Token!8804) Bool)

(assert (=> b!2668400 (= e!1681444 (and (inv!41636 (h!36052 l!4335)) e!1681446 tp!843251))))

(declare-fun b!2668401 () Bool)

(declare-fun res!1121890 () Bool)

(assert (=> b!2668401 (=> (not res!1121890) (not e!1681447))))

(get-info :version)

(assert (=> b!2668401 (= res!1121890 ((_ is Cons!30632) l!4335))))

(declare-fun res!1121891 () Bool)

(assert (=> start!259538 (=> (not res!1121891) (not e!1681447))))

(assert (=> start!259538 (= res!1121891 ((_ is Lexer!4262) thiss!14116))))

(assert (=> start!259538 e!1681447))

(assert (=> start!259538 true))

(declare-fun e!1681441 () Bool)

(assert (=> start!259538 e!1681441))

(assert (=> start!259538 e!1681444))

(declare-fun separatorToken!152 () Token!8804)

(declare-fun e!1681442 () Bool)

(assert (=> start!259538 (and (inv!41636 separatorToken!152) e!1681442)))

(declare-fun b!2668402 () Bool)

(declare-fun res!1121884 () Bool)

(assert (=> b!2668402 (=> (not res!1121884) (not e!1681447))))

(declare-fun rulesInvariant!3764 (LexerInterface!4264 List!30731) Bool)

(assert (=> b!2668402 (= res!1121884 (rulesInvariant!3764 thiss!14116 rules!1712))))

(declare-fun b!2668403 () Bool)

(declare-fun tp!843253 () Bool)

(declare-fun e!1681445 () Bool)

(declare-fun inv!21 (TokenValue!4889) Bool)

(assert (=> b!2668403 (= e!1681446 (and (inv!21 (value!150614 (h!36052 l!4335))) e!1681445 tp!843253))))

(declare-fun e!1681438 () Bool)

(assert (=> b!2668404 (= e!1681438 (and tp!843254 tp!843258))))

(declare-fun b!2668405 () Bool)

(assert (=> b!2668405 (= e!1681447 false)))

(declare-fun lt!940342 () Bool)

(declare-fun contains!5875 (List!30732 Token!8804) Bool)

(assert (=> b!2668405 (= lt!940342 (contains!5875 l!4335 (h!36052 l!4335)))))

(declare-fun e!1681449 () Bool)

(assert (=> b!2668406 (= e!1681449 (and tp!843252 tp!843259))))

(declare-fun b!2668407 () Bool)

(declare-fun res!1121892 () Bool)

(assert (=> b!2668407 (=> (not res!1121892) (not e!1681447))))

(declare-fun isEmpty!17531 (List!30731) Bool)

(assert (=> b!2668407 (= res!1121892 (not (isEmpty!17531 rules!1712)))))

(declare-fun b!2668408 () Bool)

(declare-fun res!1121888 () Bool)

(assert (=> b!2668408 (=> (not res!1121888) (not e!1681447))))

(declare-fun rulesProduceIndividualToken!1976 (LexerInterface!4264 List!30731 Token!8804) Bool)

(assert (=> b!2668408 (= res!1121888 (rulesProduceIndividualToken!1976 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun tp!843255 () Bool)

(declare-fun b!2668409 () Bool)

(declare-fun e!1681443 () Bool)

(declare-fun inv!41633 (String!34329) Bool)

(declare-fun inv!41637 (TokenValueInjection!9218) Bool)

(assert (=> b!2668409 (= e!1681445 (and tp!843255 (inv!41633 (tag!5169 (rule!7073 (h!36052 l!4335)))) (inv!41637 (transformation!4667 (rule!7073 (h!36052 l!4335)))) e!1681443))))

(declare-fun tp!843261 () Bool)

(declare-fun e!1681450 () Bool)

(declare-fun b!2668410 () Bool)

(assert (=> b!2668410 (= e!1681442 (and (inv!21 (value!150614 separatorToken!152)) e!1681450 tp!843261))))

(declare-fun b!2668411 () Bool)

(declare-fun e!1681452 () Bool)

(declare-fun tp!843250 () Bool)

(assert (=> b!2668411 (= e!1681452 (and tp!843250 (inv!41633 (tag!5169 (h!36051 rules!1712))) (inv!41637 (transformation!4667 (h!36051 rules!1712))) e!1681449))))

(declare-fun b!2668412 () Bool)

(declare-fun tp!843257 () Bool)

(assert (=> b!2668412 (= e!1681450 (and tp!843257 (inv!41633 (tag!5169 (rule!7073 separatorToken!152))) (inv!41637 (transformation!4667 (rule!7073 separatorToken!152))) e!1681438))))

(declare-fun b!2668413 () Bool)

(declare-fun res!1121889 () Bool)

(assert (=> b!2668413 (=> (not res!1121889) (not e!1681447))))

(declare-fun sepAndNonSepRulesDisjointChars!1240 (List!30731 List!30731) Bool)

(assert (=> b!2668413 (= res!1121889 (sepAndNonSepRulesDisjointChars!1240 rules!1712 rules!1712))))

(declare-fun b!2668414 () Bool)

(declare-fun res!1121887 () Bool)

(assert (=> b!2668414 (=> (not res!1121887) (not e!1681447))))

(assert (=> b!2668414 (= res!1121887 (isSeparator!4667 (rule!7073 separatorToken!152)))))

(declare-fun b!2668415 () Bool)

(declare-fun tp!843256 () Bool)

(assert (=> b!2668415 (= e!1681441 (and e!1681452 tp!843256))))

(declare-fun b!2668416 () Bool)

(declare-fun res!1121885 () Bool)

(assert (=> b!2668416 (=> (not res!1121885) (not e!1681447))))

(declare-fun lambda!99586 () Int)

(declare-fun forall!6480 (List!30732 Int) Bool)

(assert (=> b!2668416 (= res!1121885 (forall!6480 l!4335 lambda!99586))))

(assert (=> b!2668417 (= e!1681443 (and tp!843260 tp!843262))))

(assert (= (and start!259538 res!1121891) b!2668407))

(assert (= (and b!2668407 res!1121892) b!2668402))

(assert (= (and b!2668402 res!1121884) b!2668399))

(assert (= (and b!2668399 res!1121886) b!2668408))

(assert (= (and b!2668408 res!1121888) b!2668414))

(assert (= (and b!2668414 res!1121887) b!2668416))

(assert (= (and b!2668416 res!1121885) b!2668413))

(assert (= (and b!2668413 res!1121889) b!2668401))

(assert (= (and b!2668401 res!1121890) b!2668405))

(assert (= b!2668411 b!2668406))

(assert (= b!2668415 b!2668411))

(assert (= (and start!259538 ((_ is Cons!30631) rules!1712)) b!2668415))

(assert (= b!2668409 b!2668417))

(assert (= b!2668403 b!2668409))

(assert (= b!2668400 b!2668403))

(assert (= (and start!259538 ((_ is Cons!30632) l!4335)) b!2668400))

(assert (= b!2668412 b!2668404))

(assert (= b!2668410 b!2668412))

(assert (= start!259538 b!2668410))

(declare-fun m!3035221 () Bool)

(assert (=> b!2668408 m!3035221))

(declare-fun m!3035223 () Bool)

(assert (=> b!2668407 m!3035223))

(declare-fun m!3035225 () Bool)

(assert (=> b!2668403 m!3035225))

(declare-fun m!3035227 () Bool)

(assert (=> b!2668399 m!3035227))

(declare-fun m!3035229 () Bool)

(assert (=> b!2668412 m!3035229))

(declare-fun m!3035231 () Bool)

(assert (=> b!2668412 m!3035231))

(declare-fun m!3035233 () Bool)

(assert (=> b!2668409 m!3035233))

(declare-fun m!3035235 () Bool)

(assert (=> b!2668409 m!3035235))

(declare-fun m!3035237 () Bool)

(assert (=> b!2668405 m!3035237))

(declare-fun m!3035239 () Bool)

(assert (=> b!2668416 m!3035239))

(declare-fun m!3035241 () Bool)

(assert (=> b!2668413 m!3035241))

(declare-fun m!3035243 () Bool)

(assert (=> b!2668400 m!3035243))

(declare-fun m!3035245 () Bool)

(assert (=> b!2668402 m!3035245))

(declare-fun m!3035247 () Bool)

(assert (=> b!2668411 m!3035247))

(declare-fun m!3035249 () Bool)

(assert (=> b!2668411 m!3035249))

(declare-fun m!3035251 () Bool)

(assert (=> b!2668410 m!3035251))

(declare-fun m!3035253 () Bool)

(assert (=> start!259538 m!3035253))

(check-sat (not b_next!75525) (not b_next!75527) (not b!2668399) (not start!259538) (not b_next!75529) (not b!2668400) b_and!196785 (not b!2668405) (not b_next!75521) (not b!2668409) b_and!196779 (not b!2668413) b_and!196781 (not b!2668416) (not b!2668402) (not b_next!75523) (not b!2668411) (not b!2668415) (not b!2668412) b_and!196787 (not b!2668407) (not b_next!75531) (not b!2668403) b_and!196777 (not b!2668408) b_and!196783 (not b!2668410))
(check-sat (not b_next!75525) (not b_next!75527) (not b_next!75529) b_and!196781 (not b_next!75523) b_and!196785 (not b_next!75521) b_and!196777 b_and!196783 b_and!196779 b_and!196787 (not b_next!75531))
