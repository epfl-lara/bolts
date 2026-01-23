; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396406 () Bool)

(assert start!396406)

(declare-fun b!4160277 () Bool)

(declare-fun b_free!119687 () Bool)

(declare-fun b_next!120391 () Bool)

(assert (=> b!4160277 (= b_free!119687 (not b_next!120391))))

(declare-fun tp!1269436 () Bool)

(declare-fun b_and!324049 () Bool)

(assert (=> b!4160277 (= tp!1269436 b_and!324049)))

(declare-fun b_free!119689 () Bool)

(declare-fun b_next!120393 () Bool)

(assert (=> b!4160277 (= b_free!119689 (not b_next!120393))))

(declare-fun tp!1269433 () Bool)

(declare-fun b_and!324051 () Bool)

(assert (=> b!4160277 (= tp!1269433 b_and!324051)))

(declare-fun b!4160279 () Bool)

(declare-fun b_free!119691 () Bool)

(declare-fun b_next!120395 () Bool)

(assert (=> b!4160279 (= b_free!119691 (not b_next!120395))))

(declare-fun tp!1269435 () Bool)

(declare-fun b_and!324053 () Bool)

(assert (=> b!4160279 (= tp!1269435 b_and!324053)))

(declare-fun b_free!119693 () Bool)

(declare-fun b_next!120397 () Bool)

(assert (=> b!4160279 (= b_free!119693 (not b_next!120397))))

(declare-fun tp!1269432 () Bool)

(declare-fun b_and!324055 () Bool)

(assert (=> b!4160279 (= tp!1269432 b_and!324055)))

(declare-fun e!2582139 () Bool)

(declare-fun b!4160272 () Bool)

(declare-fun tp!1269434 () Bool)

(declare-datatypes ((List!45562 0))(
  ( (Nil!45438) (Cons!45438 (h!50858 (_ BitVec 16)) (t!343593 List!45562)) )
))
(declare-datatypes ((TokenValue!7732 0))(
  ( (FloatLiteralValue!15464 (text!54569 List!45562)) (TokenValueExt!7731 (__x!27683 Int)) (Broken!38660 (value!234353 List!45562)) (Object!7855) (End!7732) (Def!7732) (Underscore!7732) (Match!7732) (Else!7732) (Error!7732) (Case!7732) (If!7732) (Extends!7732) (Abstract!7732) (Class!7732) (Val!7732) (DelimiterValue!15464 (del!7792 List!45562)) (KeywordValue!7738 (value!234354 List!45562)) (CommentValue!15464 (value!234355 List!45562)) (WhitespaceValue!15464 (value!234356 List!45562)) (IndentationValue!7732 (value!234357 List!45562)) (String!52521) (Int32!7732) (Broken!38661 (value!234358 List!45562)) (Boolean!7733) (Unit!64578) (OperatorValue!7735 (op!7792 List!45562)) (IdentifierValue!15464 (value!234359 List!45562)) (IdentifierValue!15465 (value!234360 List!45562)) (WhitespaceValue!15465 (value!234361 List!45562)) (True!15464) (False!15464) (Broken!38662 (value!234362 List!45562)) (Broken!38663 (value!234363 List!45562)) (True!15465) (RightBrace!7732) (RightBracket!7732) (Colon!7732) (Null!7732) (Comma!7732) (LeftBracket!7732) (False!15465) (LeftBrace!7732) (ImaginaryLiteralValue!7732 (text!54570 List!45562)) (StringLiteralValue!23196 (value!234364 List!45562)) (EOFValue!7732 (value!234365 List!45562)) (IdentValue!7732 (value!234366 List!45562)) (DelimiterValue!15465 (value!234367 List!45562)) (DedentValue!7732 (value!234368 List!45562)) (NewLineValue!7732 (value!234369 List!45562)) (IntegerValue!23196 (value!234370 (_ BitVec 32)) (text!54571 List!45562)) (IntegerValue!23197 (value!234371 Int) (text!54572 List!45562)) (Times!7732) (Or!7732) (Equal!7732) (Minus!7732) (Broken!38664 (value!234372 List!45562)) (And!7732) (Div!7732) (LessEqual!7732) (Mod!7732) (Concat!20139) (Not!7732) (Plus!7732) (SpaceValue!7732 (value!234373 List!45562)) (IntegerValue!23198 (value!234374 Int) (text!54573 List!45562)) (StringLiteralValue!23197 (text!54574 List!45562)) (FloatLiteralValue!15465 (text!54575 List!45562)) (BytesLiteralValue!7732 (value!234375 List!45562)) (CommentValue!15465 (value!234376 List!45562)) (StringLiteralValue!23198 (value!234377 List!45562)) (ErrorTokenValue!7732 (msg!7793 List!45562)) )
))
(declare-datatypes ((C!25000 0))(
  ( (C!25001 (val!14662 Int)) )
))
(declare-datatypes ((List!45563 0))(
  ( (Nil!45439) (Cons!45439 (h!50859 C!25000) (t!343594 List!45563)) )
))
(declare-datatypes ((IArray!27431 0))(
  ( (IArray!27432 (innerList!13773 List!45563)) )
))
(declare-datatypes ((Conc!13713 0))(
  ( (Node!13713 (left!33913 Conc!13713) (right!34243 Conc!13713) (csize!27656 Int) (cheight!13924 Int)) (Leaf!21206 (xs!17019 IArray!27431) (csize!27657 Int)) (Empty!13713) )
))
(declare-datatypes ((BalanceConc!27020 0))(
  ( (BalanceConc!27021 (c!711900 Conc!13713)) )
))
(declare-datatypes ((TokenValueInjection!14892 0))(
  ( (TokenValueInjection!14893 (toValue!10166 Int) (toChars!10025 Int)) )
))
(declare-datatypes ((String!52522 0))(
  ( (String!52523 (value!234378 String)) )
))
(declare-datatypes ((Regex!12407 0))(
  ( (ElementMatch!12407 (c!711901 C!25000)) (Concat!20140 (regOne!25326 Regex!12407) (regTwo!25326 Regex!12407)) (EmptyExpr!12407) (Star!12407 (reg!12736 Regex!12407)) (EmptyLang!12407) (Union!12407 (regOne!25327 Regex!12407) (regTwo!25327 Regex!12407)) )
))
(declare-datatypes ((Rule!14804 0))(
  ( (Rule!14805 (regex!7502 Regex!12407) (tag!8366 String!52522) (isSeparator!7502 Bool) (transformation!7502 TokenValueInjection!14892)) )
))
(declare-fun r!4395 () Rule!14804)

(declare-fun e!2582138 () Bool)

(declare-fun inv!59981 (String!52522) Bool)

(declare-fun inv!59983 (TokenValueInjection!14892) Bool)

(assert (=> b!4160272 (= e!2582138 (and tp!1269434 (inv!59981 (tag!8366 r!4395)) (inv!59983 (transformation!7502 r!4395)) e!2582139))))

(declare-fun b!4160273 () Bool)

(declare-fun e!2582144 () Bool)

(assert (=> b!4160273 (= e!2582144 false)))

(declare-fun lt!1482812 () Bool)

(declare-datatypes ((List!45564 0))(
  ( (Nil!45440) (Cons!45440 (h!50860 Rule!14804) (t!343595 List!45564)) )
))
(declare-fun rules!4132 () List!45564)

(declare-fun contains!9282 (List!45564 Rule!14804) Bool)

(assert (=> b!4160273 (= lt!1482812 (contains!9282 rules!4132 r!4395))))

(declare-fun b!4160274 () Bool)

(declare-fun res!1704139 () Bool)

(assert (=> b!4160274 (=> (not res!1704139) (not e!2582144))))

(declare-datatypes ((List!45565 0))(
  ( (Nil!45441) (Cons!45441 (h!50861 String!52522) (t!343596 List!45565)) )
))
(declare-fun acc!617 () List!45565)

(declare-fun tag!272 () String!52522)

(declare-fun contains!9283 (List!45565 String!52522) Bool)

(assert (=> b!4160274 (= res!1704139 (contains!9283 acc!617 tag!272))))

(declare-fun res!1704138 () Bool)

(assert (=> start!396406 (=> (not res!1704138) (not e!2582144))))

(declare-datatypes ((LexerInterface!7093 0))(
  ( (LexerInterfaceExt!7090 (__x!27684 Int)) (Lexer!7091) )
))
(declare-fun thiss!27036 () LexerInterface!7093)

(get-info :version)

(assert (=> start!396406 (= res!1704138 ((_ is Lexer!7091) thiss!27036))))

(assert (=> start!396406 e!2582144))

(assert (=> start!396406 e!2582138))

(assert (=> start!396406 true))

(assert (=> start!396406 (inv!59981 tag!272)))

(declare-fun e!2582140 () Bool)

(assert (=> start!396406 e!2582140))

(declare-fun e!2582142 () Bool)

(assert (=> start!396406 e!2582142))

(declare-fun tp!1269429 () Bool)

(declare-fun e!2582145 () Bool)

(declare-fun b!4160275 () Bool)

(declare-fun e!2582136 () Bool)

(assert (=> b!4160275 (= e!2582136 (and tp!1269429 (inv!59981 (tag!8366 (h!50860 rules!4132))) (inv!59983 (transformation!7502 (h!50860 rules!4132))) e!2582145))))

(declare-fun b!4160276 () Bool)

(declare-fun res!1704140 () Bool)

(assert (=> b!4160276 (=> (not res!1704140) (not e!2582144))))

(declare-fun noDuplicateTag!3079 (LexerInterface!7093 List!45564 List!45565) Bool)

(assert (=> b!4160276 (= res!1704140 (noDuplicateTag!3079 thiss!27036 rules!4132 acc!617))))

(assert (=> b!4160277 (= e!2582139 (and tp!1269436 tp!1269433))))

(declare-fun b!4160278 () Bool)

(declare-fun tp!1269431 () Bool)

(assert (=> b!4160278 (= e!2582140 (and (inv!59981 (h!50861 acc!617)) tp!1269431))))

(assert (=> b!4160279 (= e!2582145 (and tp!1269435 tp!1269432))))

(declare-fun b!4160280 () Bool)

(declare-fun tp!1269430 () Bool)

(assert (=> b!4160280 (= e!2582142 (and e!2582136 tp!1269430))))

(assert (= (and start!396406 res!1704138) b!4160274))

(assert (= (and b!4160274 res!1704139) b!4160276))

(assert (= (and b!4160276 res!1704140) b!4160273))

(assert (= b!4160272 b!4160277))

(assert (= start!396406 b!4160272))

(assert (= (and start!396406 ((_ is Cons!45441) acc!617)) b!4160278))

(assert (= b!4160275 b!4160279))

(assert (= b!4160280 b!4160275))

(assert (= (and start!396406 ((_ is Cons!45440) rules!4132)) b!4160280))

(declare-fun m!4753659 () Bool)

(assert (=> b!4160273 m!4753659))

(declare-fun m!4753661 () Bool)

(assert (=> b!4160272 m!4753661))

(declare-fun m!4753663 () Bool)

(assert (=> b!4160272 m!4753663))

(declare-fun m!4753665 () Bool)

(assert (=> b!4160278 m!4753665))

(declare-fun m!4753667 () Bool)

(assert (=> b!4160276 m!4753667))

(declare-fun m!4753669 () Bool)

(assert (=> b!4160274 m!4753669))

(declare-fun m!4753671 () Bool)

(assert (=> b!4160275 m!4753671))

(declare-fun m!4753673 () Bool)

(assert (=> b!4160275 m!4753673))

(declare-fun m!4753675 () Bool)

(assert (=> start!396406 m!4753675))

(check-sat b_and!324049 b_and!324053 (not start!396406) b_and!324055 (not b!4160278) (not b!4160273) (not b!4160275) (not b!4160274) (not b_next!120391) (not b!4160276) b_and!324051 (not b_next!120397) (not b_next!120395) (not b!4160272) (not b_next!120393) (not b!4160280))
(check-sat b_and!324049 b_and!324053 b_and!324055 (not b_next!120395) (not b_next!120391) (not b_next!120393) b_and!324051 (not b_next!120397))
