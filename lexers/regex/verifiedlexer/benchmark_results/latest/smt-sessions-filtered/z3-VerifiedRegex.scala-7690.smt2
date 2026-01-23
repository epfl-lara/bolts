; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404706 () Bool)

(assert start!404706)

(declare-fun b!4231524 () Bool)

(declare-fun b_free!124991 () Bool)

(declare-fun b_next!125695 () Bool)

(assert (=> b!4231524 (= b_free!124991 (not b_next!125695))))

(declare-fun tp!1296174 () Bool)

(declare-fun b_and!334301 () Bool)

(assert (=> b!4231524 (= tp!1296174 b_and!334301)))

(declare-fun b_free!124993 () Bool)

(declare-fun b_next!125697 () Bool)

(assert (=> b!4231524 (= b_free!124993 (not b_next!125697))))

(declare-fun tp!1296176 () Bool)

(declare-fun b_and!334303 () Bool)

(assert (=> b!4231524 (= tp!1296176 b_and!334303)))

(declare-fun b!4231522 () Bool)

(declare-fun res!1740284 () Bool)

(declare-fun e!2627495 () Bool)

(assert (=> b!4231522 (=> (not res!1740284) (not e!2627495))))

(declare-datatypes ((LexerInterface!7487 0))(
  ( (LexerInterfaceExt!7484 (__x!28467 Int)) (Lexer!7485) )
))
(declare-fun thiss!26814 () LexerInterface!7487)

(declare-datatypes ((List!46848 0))(
  ( (Nil!46724) (Cons!46724 (h!52144 (_ BitVec 16)) (t!349519 List!46848)) )
))
(declare-datatypes ((TokenValue!8122 0))(
  ( (FloatLiteralValue!16244 (text!57299 List!46848)) (TokenValueExt!8121 (__x!28468 Int)) (Broken!40610 (value!245392 List!46848)) (Object!8245) (End!8122) (Def!8122) (Underscore!8122) (Match!8122) (Else!8122) (Error!8122) (Case!8122) (If!8122) (Extends!8122) (Abstract!8122) (Class!8122) (Val!8122) (DelimiterValue!16244 (del!8182 List!46848)) (KeywordValue!8128 (value!245393 List!46848)) (CommentValue!16244 (value!245394 List!46848)) (WhitespaceValue!16244 (value!245395 List!46848)) (IndentationValue!8122 (value!245396 List!46848)) (String!54483) (Int32!8122) (Broken!40611 (value!245397 List!46848)) (Boolean!8123) (Unit!65852) (OperatorValue!8125 (op!8182 List!46848)) (IdentifierValue!16244 (value!245398 List!46848)) (IdentifierValue!16245 (value!245399 List!46848)) (WhitespaceValue!16245 (value!245400 List!46848)) (True!16244) (False!16244) (Broken!40612 (value!245401 List!46848)) (Broken!40613 (value!245402 List!46848)) (True!16245) (RightBrace!8122) (RightBracket!8122) (Colon!8122) (Null!8122) (Comma!8122) (LeftBracket!8122) (False!16245) (LeftBrace!8122) (ImaginaryLiteralValue!8122 (text!57300 List!46848)) (StringLiteralValue!24366 (value!245403 List!46848)) (EOFValue!8122 (value!245404 List!46848)) (IdentValue!8122 (value!245405 List!46848)) (DelimiterValue!16245 (value!245406 List!46848)) (DedentValue!8122 (value!245407 List!46848)) (NewLineValue!8122 (value!245408 List!46848)) (IntegerValue!24366 (value!245409 (_ BitVec 32)) (text!57301 List!46848)) (IntegerValue!24367 (value!245410 Int) (text!57302 List!46848)) (Times!8122) (Or!8122) (Equal!8122) (Minus!8122) (Broken!40614 (value!245411 List!46848)) (And!8122) (Div!8122) (LessEqual!8122) (Mod!8122) (Concat!20919) (Not!8122) (Plus!8122) (SpaceValue!8122 (value!245412 List!46848)) (IntegerValue!24368 (value!245413 Int) (text!57303 List!46848)) (StringLiteralValue!24367 (text!57304 List!46848)) (FloatLiteralValue!16245 (text!57305 List!46848)) (BytesLiteralValue!8122 (value!245414 List!46848)) (CommentValue!16245 (value!245415 List!46848)) (StringLiteralValue!24368 (value!245416 List!46848)) (ErrorTokenValue!8122 (msg!8183 List!46848)) )
))
(declare-datatypes ((C!25792 0))(
  ( (C!25793 (val!15058 Int)) )
))
(declare-datatypes ((Regex!12797 0))(
  ( (ElementMatch!12797 (c!719202 C!25792)) (Concat!20920 (regOne!26106 Regex!12797) (regTwo!26106 Regex!12797)) (EmptyExpr!12797) (Star!12797 (reg!13126 Regex!12797)) (EmptyLang!12797) (Union!12797 (regOne!26107 Regex!12797) (regTwo!26107 Regex!12797)) )
))
(declare-datatypes ((String!54484 0))(
  ( (String!54485 (value!245417 String)) )
))
(declare-datatypes ((List!46849 0))(
  ( (Nil!46725) (Cons!46725 (h!52145 C!25792) (t!349520 List!46849)) )
))
(declare-datatypes ((IArray!28211 0))(
  ( (IArray!28212 (innerList!14163 List!46849)) )
))
(declare-datatypes ((Conc!14103 0))(
  ( (Node!14103 (left!34757 Conc!14103) (right!35087 Conc!14103) (csize!28436 Int) (cheight!14314 Int)) (Leaf!21794 (xs!17409 IArray!28211) (csize!28437 Int)) (Empty!14103) )
))
(declare-datatypes ((BalanceConc!27800 0))(
  ( (BalanceConc!27801 (c!719203 Conc!14103)) )
))
(declare-datatypes ((TokenValueInjection!15672 0))(
  ( (TokenValueInjection!15673 (toValue!10624 Int) (toChars!10483 Int)) )
))
(declare-datatypes ((Rule!15584 0))(
  ( (Rule!15585 (regex!7892 Regex!12797) (tag!8756 String!54484) (isSeparator!7892 Bool) (transformation!7892 TokenValueInjection!15672)) )
))
(declare-fun r!4353 () Rule!15584)

(declare-fun ruleValid!3588 (LexerInterface!7487 Rule!15584) Bool)

(assert (=> b!4231522 (= res!1740284 (ruleValid!3588 thiss!26814 r!4353))))

(declare-fun b!4231523 () Bool)

(declare-fun e!2627497 () Bool)

(declare-fun tp_is_empty!22529 () Bool)

(declare-fun tp!1296172 () Bool)

(assert (=> b!4231523 (= e!2627497 (and tp_is_empty!22529 tp!1296172))))

(declare-fun e!2627494 () Bool)

(assert (=> b!4231524 (= e!2627494 (and tp!1296174 tp!1296176))))

(declare-fun b!4231525 () Bool)

(declare-fun res!1740286 () Bool)

(assert (=> b!4231525 (=> (not res!1740286) (not e!2627495))))

(declare-fun validRegex!5813 (Regex!12797) Bool)

(assert (=> b!4231525 (= res!1740286 (validRegex!5813 (regex!7892 r!4353)))))

(declare-fun b!4231526 () Bool)

(declare-fun res!1740287 () Bool)

(assert (=> b!4231526 (=> (not res!1740287) (not e!2627495))))

(declare-fun p!3018 () List!46849)

(declare-fun input!3600 () List!46849)

(declare-fun isPrefix!4707 (List!46849 List!46849) Bool)

(assert (=> b!4231526 (= res!1740287 (isPrefix!4707 p!3018 input!3600))))

(declare-fun b!4231527 () Bool)

(declare-fun e!2627496 () Bool)

(declare-fun tp!1296175 () Bool)

(assert (=> b!4231527 (= e!2627496 (and tp_is_empty!22529 tp!1296175))))

(declare-fun res!1740285 () Bool)

(assert (=> start!404706 (=> (not res!1740285) (not e!2627495))))

(get-info :version)

(assert (=> start!404706 (= res!1740285 ((_ is Lexer!7485) thiss!26814))))

(assert (=> start!404706 e!2627495))

(assert (=> start!404706 true))

(assert (=> start!404706 e!2627497))

(assert (=> start!404706 e!2627496))

(declare-fun e!2627498 () Bool)

(assert (=> start!404706 e!2627498))

(declare-fun b!4231528 () Bool)

(declare-fun tp!1296173 () Bool)

(declare-fun inv!61426 (String!54484) Bool)

(declare-fun inv!61428 (TokenValueInjection!15672) Bool)

(assert (=> b!4231528 (= e!2627498 (and tp!1296173 (inv!61426 (tag!8756 r!4353)) (inv!61428 (transformation!7892 r!4353)) e!2627494))))

(declare-fun b!4231529 () Bool)

(assert (=> b!4231529 (= e!2627495 false)))

(declare-fun lt!1504234 () Bool)

(assert (=> b!4231529 (= lt!1504234 (isPrefix!4707 Nil!46725 input!3600))))

(declare-fun b!4231530 () Bool)

(declare-fun res!1740288 () Bool)

(assert (=> b!4231530 (=> (not res!1740288) (not e!2627495))))

(declare-datatypes ((Token!14414 0))(
  ( (Token!14415 (value!245418 TokenValue!8122) (rule!11012 Rule!15584) (size!34245 Int) (originalCharacters!8238 List!46849)) )
))
(declare-datatypes ((tuple2!44344 0))(
  ( (tuple2!44345 (_1!25306 Token!14414) (_2!25306 List!46849)) )
))
(declare-datatypes ((Option!10038 0))(
  ( (None!10037) (Some!10037 (v!40965 tuple2!44344)) )
))
(declare-fun maxPrefixOneRule!3432 (LexerInterface!7487 Rule!15584 List!46849) Option!10038)

(assert (=> b!4231530 (= res!1740288 (= (maxPrefixOneRule!3432 thiss!26814 r!4353 input!3600) None!10037))))

(assert (= (and start!404706 res!1740285) b!4231526))

(assert (= (and b!4231526 res!1740287) b!4231522))

(assert (= (and b!4231522 res!1740284) b!4231530))

(assert (= (and b!4231530 res!1740288) b!4231525))

(assert (= (and b!4231525 res!1740286) b!4231529))

(assert (= (and start!404706 ((_ is Cons!46725) p!3018)) b!4231523))

(assert (= (and start!404706 ((_ is Cons!46725) input!3600)) b!4231527))

(assert (= b!4231528 b!4231524))

(assert (= start!404706 b!4231528))

(declare-fun m!4817921 () Bool)

(assert (=> b!4231528 m!4817921))

(declare-fun m!4817923 () Bool)

(assert (=> b!4231528 m!4817923))

(declare-fun m!4817925 () Bool)

(assert (=> b!4231529 m!4817925))

(declare-fun m!4817927 () Bool)

(assert (=> b!4231526 m!4817927))

(declare-fun m!4817929 () Bool)

(assert (=> b!4231522 m!4817929))

(declare-fun m!4817931 () Bool)

(assert (=> b!4231525 m!4817931))

(declare-fun m!4817933 () Bool)

(assert (=> b!4231530 m!4817933))

(check-sat (not b_next!125695) (not b!4231526) tp_is_empty!22529 (not b!4231523) (not b!4231527) (not b!4231528) (not b!4231530) (not b!4231522) (not b!4231529) b_and!334303 (not b_next!125697) (not b!4231525) b_and!334301)
(check-sat b_and!334301 b_and!334303 (not b_next!125697) (not b_next!125695))
