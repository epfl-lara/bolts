; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404442 () Bool)

(assert start!404442)

(declare-fun b!4229430 () Bool)

(declare-fun b_free!124907 () Bool)

(declare-fun b_next!125611 () Bool)

(assert (=> b!4229430 (= b_free!124907 (not b_next!125611))))

(declare-fun tp!1295587 () Bool)

(declare-fun b_and!334161 () Bool)

(assert (=> b!4229430 (= tp!1295587 b_and!334161)))

(declare-fun b_free!124909 () Bool)

(declare-fun b_next!125613 () Bool)

(assert (=> b!4229430 (= b_free!124909 (not b_next!125613))))

(declare-fun tp!1295593 () Bool)

(declare-fun b_and!334163 () Bool)

(assert (=> b!4229430 (= tp!1295593 b_and!334163)))

(declare-fun b!4229415 () Bool)

(declare-fun b_free!124911 () Bool)

(declare-fun b_next!125615 () Bool)

(assert (=> b!4229415 (= b_free!124911 (not b_next!125615))))

(declare-fun tp!1295588 () Bool)

(declare-fun b_and!334165 () Bool)

(assert (=> b!4229415 (= tp!1295588 b_and!334165)))

(declare-fun b_free!124913 () Bool)

(declare-fun b_next!125617 () Bool)

(assert (=> b!4229415 (= b_free!124913 (not b_next!125617))))

(declare-fun tp!1295586 () Bool)

(declare-fun b_and!334167 () Bool)

(assert (=> b!4229415 (= tp!1295586 b_and!334167)))

(declare-fun b!4229411 () Bool)

(declare-fun res!1739292 () Bool)

(declare-fun e!2626218 () Bool)

(assert (=> b!4229411 (=> (not res!1739292) (not e!2626218))))

(declare-datatypes ((List!46816 0))(
  ( (Nil!46692) (Cons!46692 (h!52112 (_ BitVec 16)) (t!349445 List!46816)) )
))
(declare-datatypes ((TokenValue!8106 0))(
  ( (FloatLiteralValue!16212 (text!57187 List!46816)) (TokenValueExt!8105 (__x!28435 Int)) (Broken!40530 (value!244938 List!46816)) (Object!8229) (End!8106) (Def!8106) (Underscore!8106) (Match!8106) (Else!8106) (Error!8106) (Case!8106) (If!8106) (Extends!8106) (Abstract!8106) (Class!8106) (Val!8106) (DelimiterValue!16212 (del!8166 List!46816)) (KeywordValue!8112 (value!244939 List!46816)) (CommentValue!16212 (value!244940 List!46816)) (WhitespaceValue!16212 (value!244941 List!46816)) (IndentationValue!8106 (value!244942 List!46816)) (String!54403) (Int32!8106) (Broken!40531 (value!244943 List!46816)) (Boolean!8107) (Unit!65798) (OperatorValue!8109 (op!8166 List!46816)) (IdentifierValue!16212 (value!244944 List!46816)) (IdentifierValue!16213 (value!244945 List!46816)) (WhitespaceValue!16213 (value!244946 List!46816)) (True!16212) (False!16212) (Broken!40532 (value!244947 List!46816)) (Broken!40533 (value!244948 List!46816)) (True!16213) (RightBrace!8106) (RightBracket!8106) (Colon!8106) (Null!8106) (Comma!8106) (LeftBracket!8106) (False!16213) (LeftBrace!8106) (ImaginaryLiteralValue!8106 (text!57188 List!46816)) (StringLiteralValue!24318 (value!244949 List!46816)) (EOFValue!8106 (value!244950 List!46816)) (IdentValue!8106 (value!244951 List!46816)) (DelimiterValue!16213 (value!244952 List!46816)) (DedentValue!8106 (value!244953 List!46816)) (NewLineValue!8106 (value!244954 List!46816)) (IntegerValue!24318 (value!244955 (_ BitVec 32)) (text!57189 List!46816)) (IntegerValue!24319 (value!244956 Int) (text!57190 List!46816)) (Times!8106) (Or!8106) (Equal!8106) (Minus!8106) (Broken!40534 (value!244957 List!46816)) (And!8106) (Div!8106) (LessEqual!8106) (Mod!8106) (Concat!20887) (Not!8106) (Plus!8106) (SpaceValue!8106 (value!244958 List!46816)) (IntegerValue!24320 (value!244959 Int) (text!57191 List!46816)) (StringLiteralValue!24319 (text!57192 List!46816)) (FloatLiteralValue!16213 (text!57193 List!46816)) (BytesLiteralValue!8106 (value!244960 List!46816)) (CommentValue!16213 (value!244961 List!46816)) (StringLiteralValue!24320 (value!244962 List!46816)) (ErrorTokenValue!8106 (msg!8167 List!46816)) )
))
(declare-datatypes ((C!25760 0))(
  ( (C!25761 (val!15042 Int)) )
))
(declare-datatypes ((List!46817 0))(
  ( (Nil!46693) (Cons!46693 (h!52113 C!25760) (t!349446 List!46817)) )
))
(declare-datatypes ((IArray!28179 0))(
  ( (IArray!28180 (innerList!14147 List!46817)) )
))
(declare-datatypes ((Conc!14087 0))(
  ( (Node!14087 (left!34729 Conc!14087) (right!35059 Conc!14087) (csize!28404 Int) (cheight!14298 Int)) (Leaf!21770 (xs!17393 IArray!28179) (csize!28405 Int)) (Empty!14087) )
))
(declare-datatypes ((String!54404 0))(
  ( (String!54405 (value!244963 String)) )
))
(declare-datatypes ((BalanceConc!27768 0))(
  ( (BalanceConc!27769 (c!718866 Conc!14087)) )
))
(declare-datatypes ((TokenValueInjection!15640 0))(
  ( (TokenValueInjection!15641 (toValue!10604 Int) (toChars!10463 Int)) )
))
(declare-datatypes ((Regex!12781 0))(
  ( (ElementMatch!12781 (c!718867 C!25760)) (Concat!20888 (regOne!26074 Regex!12781) (regTwo!26074 Regex!12781)) (EmptyExpr!12781) (Star!12781 (reg!13110 Regex!12781)) (EmptyLang!12781) (Union!12781 (regOne!26075 Regex!12781) (regTwo!26075 Regex!12781)) )
))
(declare-datatypes ((Rule!15552 0))(
  ( (Rule!15553 (regex!7876 Regex!12781) (tag!8740 String!54404) (isSeparator!7876 Bool) (transformation!7876 TokenValueInjection!15640)) )
))
(declare-fun r!4334 () Rule!15552)

(declare-fun validRegex!5799 (Regex!12781) Bool)

(assert (=> b!4229411 (= res!1739292 (validRegex!5799 (regex!7876 r!4334)))))

(declare-fun res!1739301 () Bool)

(declare-fun e!2626220 () Bool)

(assert (=> start!404442 (=> (not res!1739301) (not e!2626220))))

(declare-datatypes ((LexerInterface!7471 0))(
  ( (LexerInterfaceExt!7468 (__x!28436 Int)) (Lexer!7469) )
))
(declare-fun thiss!26785 () LexerInterface!7471)

(get-info :version)

(assert (=> start!404442 (= res!1739301 ((_ is Lexer!7469) thiss!26785))))

(assert (=> start!404442 e!2626220))

(assert (=> start!404442 true))

(declare-fun e!2626225 () Bool)

(assert (=> start!404442 e!2626225))

(declare-datatypes ((Token!14386 0))(
  ( (Token!14387 (value!244964 TokenValue!8106) (rule!10992 Rule!15552) (size!34212 Int) (originalCharacters!8224 List!46817)) )
))
(declare-fun t!8425 () Token!14386)

(declare-fun e!2626223 () Bool)

(declare-fun inv!61374 (Token!14386) Bool)

(assert (=> start!404442 (and (inv!61374 t!8425) e!2626223)))

(declare-fun e!2626219 () Bool)

(assert (=> start!404442 e!2626219))

(declare-fun e!2626229 () Bool)

(assert (=> start!404442 e!2626229))

(declare-fun e!2626227 () Bool)

(assert (=> start!404442 e!2626227))

(declare-fun e!2626231 () Bool)

(assert (=> start!404442 e!2626231))

(declare-fun b!4229412 () Bool)

(declare-fun res!1739299 () Bool)

(assert (=> b!4229412 (=> (not res!1739299) (not e!2626218))))

(declare-fun p!3014 () List!46817)

(declare-fun list!16856 (BalanceConc!27768) List!46817)

(declare-fun charsOf!5251 (Token!14386) BalanceConc!27768)

(assert (=> b!4229412 (= res!1739299 (= (list!16856 (charsOf!5251 t!8425)) p!3014))))

(declare-fun tp!1295595 () Bool)

(declare-fun b!4229413 () Bool)

(declare-fun e!2626222 () Bool)

(declare-fun e!2626224 () Bool)

(declare-fun inv!61371 (String!54404) Bool)

(declare-fun inv!61375 (TokenValueInjection!15640) Bool)

(assert (=> b!4229413 (= e!2626222 (and tp!1295595 (inv!61371 (tag!8740 (rule!10992 t!8425))) (inv!61375 (transformation!7876 (rule!10992 t!8425))) e!2626224))))

(declare-fun b!4229414 () Bool)

(declare-fun tp_is_empty!22497 () Bool)

(declare-fun tp!1295589 () Bool)

(assert (=> b!4229414 (= e!2626229 (and tp_is_empty!22497 tp!1295589))))

(declare-fun e!2626230 () Bool)

(assert (=> b!4229415 (= e!2626230 (and tp!1295588 tp!1295586))))

(declare-fun b!4229416 () Bool)

(declare-fun res!1739294 () Bool)

(assert (=> b!4229416 (=> (not res!1739294) (not e!2626220))))

(declare-fun pBis!134 () List!46817)

(declare-fun input!3586 () List!46817)

(declare-fun isPrefix!4691 (List!46817 List!46817) Bool)

(assert (=> b!4229416 (= res!1739294 (isPrefix!4691 pBis!134 input!3586))))

(declare-fun tp!1295594 () Bool)

(declare-fun b!4229417 () Bool)

(assert (=> b!4229417 (= e!2626219 (and tp!1295594 (inv!61371 (tag!8740 r!4334)) (inv!61375 (transformation!7876 r!4334)) e!2626230))))

(declare-fun b!4229418 () Bool)

(declare-fun e!2626228 () Bool)

(assert (=> b!4229418 (= e!2626220 e!2626228)))

(declare-fun res!1739297 () Bool)

(assert (=> b!4229418 (=> (not res!1739297) (not e!2626228))))

(declare-fun lt!1503533 () Int)

(declare-fun size!34213 (List!46817) Int)

(assert (=> b!4229418 (= res!1739297 (<= lt!1503533 (size!34213 input!3586)))))

(assert (=> b!4229418 (= lt!1503533 (size!34213 pBis!134))))

(declare-fun b!4229419 () Bool)

(declare-fun e!2626217 () Bool)

(assert (=> b!4229419 (= e!2626218 (not e!2626217))))

(declare-fun res!1739298 () Bool)

(assert (=> b!4229419 (=> res!1739298 e!2626217)))

(declare-fun suffix!1590 () List!46817)

(declare-datatypes ((tuple2!44294 0))(
  ( (tuple2!44295 (_1!25281 Token!14386) (_2!25281 List!46817)) )
))
(declare-datatypes ((Option!10024 0))(
  ( (None!10023) (Some!10023 (v!40951 tuple2!44294)) )
))
(declare-fun maxPrefixOneRule!3418 (LexerInterface!7471 Rule!15552 List!46817) Option!10024)

(assert (=> b!4229419 (= res!1739298 (not (= (maxPrefixOneRule!3418 thiss!26785 r!4334 input!3586) (Some!10023 (tuple2!44295 t!8425 suffix!1590)))))))

(assert (=> b!4229419 (isPrefix!4691 input!3586 input!3586)))

(declare-datatypes ((Unit!65799 0))(
  ( (Unit!65800) )
))
(declare-fun lt!1503534 () Unit!65799)

(declare-fun lemmaIsPrefixRefl!3102 (List!46817 List!46817) Unit!65799)

(assert (=> b!4229419 (= lt!1503534 (lemmaIsPrefixRefl!3102 input!3586 input!3586))))

(declare-fun b!4229420 () Bool)

(declare-fun tp!1295590 () Bool)

(assert (=> b!4229420 (= e!2626227 (and tp_is_empty!22497 tp!1295590))))

(declare-fun b!4229421 () Bool)

(declare-fun res!1739291 () Bool)

(assert (=> b!4229421 (=> (not res!1739291) (not e!2626220))))

(declare-fun ++!11906 (List!46817 List!46817) List!46817)

(assert (=> b!4229421 (= res!1739291 (= (++!11906 p!3014 suffix!1590) input!3586))))

(declare-fun b!4229422 () Bool)

(declare-fun tp!1295592 () Bool)

(assert (=> b!4229422 (= e!2626231 (and tp_is_empty!22497 tp!1295592))))

(declare-fun b!4229423 () Bool)

(declare-fun res!1739300 () Bool)

(assert (=> b!4229423 (=> (not res!1739300) (not e!2626218))))

(declare-fun ruleValid!3572 (LexerInterface!7471 Rule!15552) Bool)

(assert (=> b!4229423 (= res!1739300 (ruleValid!3572 thiss!26785 r!4334))))

(declare-fun b!4229424 () Bool)

(declare-fun lt!1503532 () Int)

(assert (=> b!4229424 (= e!2626217 (>= lt!1503533 lt!1503532))))

(declare-fun b!4229425 () Bool)

(declare-fun res!1739295 () Bool)

(assert (=> b!4229425 (=> (not res!1739295) (not e!2626220))))

(assert (=> b!4229425 (= res!1739295 (isPrefix!4691 p!3014 input!3586))))

(declare-fun b!4229426 () Bool)

(assert (=> b!4229426 (= e!2626228 e!2626218)))

(declare-fun res!1739293 () Bool)

(assert (=> b!4229426 (=> (not res!1739293) (not e!2626218))))

(assert (=> b!4229426 (= res!1739293 (> lt!1503533 lt!1503532))))

(assert (=> b!4229426 (= lt!1503532 (size!34213 p!3014))))

(declare-fun b!4229427 () Bool)

(declare-fun tp!1295591 () Bool)

(declare-fun inv!21 (TokenValue!8106) Bool)

(assert (=> b!4229427 (= e!2626223 (and (inv!21 (value!244964 t!8425)) e!2626222 tp!1295591))))

(declare-fun b!4229428 () Bool)

(declare-fun res!1739296 () Bool)

(assert (=> b!4229428 (=> (not res!1739296) (not e!2626218))))

(declare-fun matchR!6420 (Regex!12781 List!46817) Bool)

(assert (=> b!4229428 (= res!1739296 (matchR!6420 (regex!7876 r!4334) p!3014))))

(declare-fun b!4229429 () Bool)

(declare-fun tp!1295596 () Bool)

(assert (=> b!4229429 (= e!2626225 (and tp_is_empty!22497 tp!1295596))))

(assert (=> b!4229430 (= e!2626224 (and tp!1295587 tp!1295593))))

(assert (= (and start!404442 res!1739301) b!4229421))

(assert (= (and b!4229421 res!1739291) b!4229425))

(assert (= (and b!4229425 res!1739295) b!4229416))

(assert (= (and b!4229416 res!1739294) b!4229418))

(assert (= (and b!4229418 res!1739297) b!4229426))

(assert (= (and b!4229426 res!1739293) b!4229423))

(assert (= (and b!4229423 res!1739300) b!4229411))

(assert (= (and b!4229411 res!1739292) b!4229428))

(assert (= (and b!4229428 res!1739296) b!4229412))

(assert (= (and b!4229412 res!1739299) b!4229419))

(assert (= (and b!4229419 (not res!1739298)) b!4229424))

(assert (= (and start!404442 ((_ is Cons!46693) p!3014)) b!4229429))

(assert (= b!4229413 b!4229430))

(assert (= b!4229427 b!4229413))

(assert (= start!404442 b!4229427))

(assert (= b!4229417 b!4229415))

(assert (= start!404442 b!4229417))

(assert (= (and start!404442 ((_ is Cons!46693) input!3586)) b!4229414))

(assert (= (and start!404442 ((_ is Cons!46693) pBis!134)) b!4229420))

(assert (= (and start!404442 ((_ is Cons!46693) suffix!1590)) b!4229422))

(declare-fun m!4816075 () Bool)

(assert (=> b!4229421 m!4816075))

(declare-fun m!4816077 () Bool)

(assert (=> b!4229416 m!4816077))

(declare-fun m!4816079 () Bool)

(assert (=> b!4229413 m!4816079))

(declare-fun m!4816081 () Bool)

(assert (=> b!4229413 m!4816081))

(declare-fun m!4816083 () Bool)

(assert (=> b!4229423 m!4816083))

(declare-fun m!4816085 () Bool)

(assert (=> b!4229427 m!4816085))

(declare-fun m!4816087 () Bool)

(assert (=> b!4229417 m!4816087))

(declare-fun m!4816089 () Bool)

(assert (=> b!4229417 m!4816089))

(declare-fun m!4816091 () Bool)

(assert (=> b!4229428 m!4816091))

(declare-fun m!4816093 () Bool)

(assert (=> b!4229419 m!4816093))

(declare-fun m!4816095 () Bool)

(assert (=> b!4229419 m!4816095))

(declare-fun m!4816097 () Bool)

(assert (=> b!4229419 m!4816097))

(declare-fun m!4816099 () Bool)

(assert (=> b!4229418 m!4816099))

(declare-fun m!4816101 () Bool)

(assert (=> b!4229418 m!4816101))

(declare-fun m!4816103 () Bool)

(assert (=> b!4229425 m!4816103))

(declare-fun m!4816105 () Bool)

(assert (=> b!4229411 m!4816105))

(declare-fun m!4816107 () Bool)

(assert (=> start!404442 m!4816107))

(declare-fun m!4816109 () Bool)

(assert (=> b!4229412 m!4816109))

(assert (=> b!4229412 m!4816109))

(declare-fun m!4816111 () Bool)

(assert (=> b!4229412 m!4816111))

(declare-fun m!4816113 () Bool)

(assert (=> b!4229426 m!4816113))

(check-sat (not b_next!125615) (not b!4229421) tp_is_empty!22497 (not b!4229414) b_and!334165 (not start!404442) (not b!4229413) (not b!4229427) (not b_next!125617) (not b!4229426) b_and!334167 (not b!4229411) b_and!334161 (not b!4229428) (not b!4229419) (not b!4229425) (not b!4229417) (not b!4229418) (not b_next!125613) (not b_next!125611) (not b!4229412) (not b!4229429) (not b!4229423) b_and!334163 (not b!4229422) (not b!4229416) (not b!4229420))
(check-sat (not b_next!125615) b_and!334165 b_and!334163 (not b_next!125617) b_and!334167 b_and!334161 (not b_next!125613) (not b_next!125611))
