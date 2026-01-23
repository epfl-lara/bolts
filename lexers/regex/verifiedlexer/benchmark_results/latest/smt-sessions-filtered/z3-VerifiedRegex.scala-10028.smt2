; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525114 () Bool)

(assert start!525114)

(declare-fun b!4976482 () Bool)

(declare-fun b_free!132931 () Bool)

(declare-fun b_next!133721 () Bool)

(assert (=> b!4976482 (= b_free!132931 (not b_next!133721))))

(declare-fun tp!1395399 () Bool)

(declare-fun b_and!349343 () Bool)

(assert (=> b!4976482 (= tp!1395399 b_and!349343)))

(declare-fun b_free!132933 () Bool)

(declare-fun b_next!133723 () Bool)

(assert (=> b!4976482 (= b_free!132933 (not b_next!133723))))

(declare-fun tp!1395401 () Bool)

(declare-fun b_and!349345 () Bool)

(assert (=> b!4976482 (= tp!1395401 b_and!349345)))

(declare-fun res!2124241 () Bool)

(declare-fun e!3110181 () Bool)

(assert (=> start!525114 (=> (not res!2124241) (not e!3110181))))

(declare-datatypes ((LexerInterface!8000 0))(
  ( (LexerInterfaceExt!7997 (__x!34729 Int)) (Lexer!7998) )
))
(declare-fun thiss!16165 () LexerInterface!8000)

(get-info :version)

(assert (=> start!525114 (= res!2124241 ((_ is Lexer!7998) thiss!16165))))

(assert (=> start!525114 e!3110181))

(assert (=> start!525114 true))

(declare-fun e!3110182 () Bool)

(assert (=> start!525114 e!3110182))

(declare-datatypes ((C!27532 0))(
  ( (C!27533 (val!23132 Int)) )
))
(declare-datatypes ((List!57612 0))(
  ( (Nil!57488) (Cons!57488 (h!63936 C!27532) (t!369624 List!57612)) )
))
(declare-datatypes ((IArray!30381 0))(
  ( (IArray!30382 (innerList!15248 List!57612)) )
))
(declare-datatypes ((Conc!15160 0))(
  ( (Node!15160 (left!41946 Conc!15160) (right!42276 Conc!15160) (csize!30550 Int) (cheight!15371 Int)) (Leaf!25189 (xs!18486 IArray!30381) (csize!30551 Int)) (Empty!15160) )
))
(declare-datatypes ((BalanceConc!29750 0))(
  ( (BalanceConc!29751 (c!849183 Conc!15160)) )
))
(declare-fun input!1580 () BalanceConc!29750)

(declare-fun e!3110185 () Bool)

(declare-fun inv!75180 (BalanceConc!29750) Bool)

(assert (=> start!525114 (and (inv!75180 input!1580) e!3110185)))

(declare-fun totalInput!520 () BalanceConc!29750)

(declare-fun e!3110180 () Bool)

(assert (=> start!525114 (and (inv!75180 totalInput!520) e!3110180)))

(declare-fun b!4976476 () Bool)

(declare-fun res!2124243 () Bool)

(assert (=> b!4976476 (=> (not res!2124243) (not e!3110181))))

(declare-fun isSuffix!1207 (List!57612 List!57612) Bool)

(declare-fun list!18400 (BalanceConc!29750) List!57612)

(assert (=> b!4976476 (= res!2124243 (isSuffix!1207 (list!18400 input!1580) (list!18400 totalInput!520)))))

(declare-fun b!4976477 () Bool)

(declare-fun res!2124242 () Bool)

(assert (=> b!4976477 (=> (not res!2124242) (not e!3110181))))

(declare-datatypes ((List!57613 0))(
  ( (Nil!57489) (Cons!57489 (h!63937 (_ BitVec 16)) (t!369625 List!57613)) )
))
(declare-datatypes ((String!65463 0))(
  ( (String!65464 (value!269037 String)) )
))
(declare-datatypes ((Regex!13641 0))(
  ( (ElementMatch!13641 (c!849184 C!27532)) (Concat!22359 (regOne!27794 Regex!13641) (regTwo!27794 Regex!13641)) (EmptyExpr!13641) (Star!13641 (reg!13970 Regex!13641)) (EmptyLang!13641) (Union!13641 (regOne!27795 Regex!13641) (regTwo!27795 Regex!13641)) )
))
(declare-datatypes ((TokenValue!8718 0))(
  ( (FloatLiteralValue!17436 (text!61471 List!57613)) (TokenValueExt!8717 (__x!34730 Int)) (Broken!43590 (value!269038 List!57613)) (Object!8841) (End!8718) (Def!8718) (Underscore!8718) (Match!8718) (Else!8718) (Error!8718) (Case!8718) (If!8718) (Extends!8718) (Abstract!8718) (Class!8718) (Val!8718) (DelimiterValue!17436 (del!8778 List!57613)) (KeywordValue!8724 (value!269039 List!57613)) (CommentValue!17436 (value!269040 List!57613)) (WhitespaceValue!17436 (value!269041 List!57613)) (IndentationValue!8718 (value!269042 List!57613)) (String!65465) (Int32!8718) (Broken!43591 (value!269043 List!57613)) (Boolean!8719) (Unit!148481) (OperatorValue!8721 (op!8778 List!57613)) (IdentifierValue!17436 (value!269044 List!57613)) (IdentifierValue!17437 (value!269045 List!57613)) (WhitespaceValue!17437 (value!269046 List!57613)) (True!17436) (False!17436) (Broken!43592 (value!269047 List!57613)) (Broken!43593 (value!269048 List!57613)) (True!17437) (RightBrace!8718) (RightBracket!8718) (Colon!8718) (Null!8718) (Comma!8718) (LeftBracket!8718) (False!17437) (LeftBrace!8718) (ImaginaryLiteralValue!8718 (text!61472 List!57613)) (StringLiteralValue!26154 (value!269049 List!57613)) (EOFValue!8718 (value!269050 List!57613)) (IdentValue!8718 (value!269051 List!57613)) (DelimiterValue!17437 (value!269052 List!57613)) (DedentValue!8718 (value!269053 List!57613)) (NewLineValue!8718 (value!269054 List!57613)) (IntegerValue!26154 (value!269055 (_ BitVec 32)) (text!61473 List!57613)) (IntegerValue!26155 (value!269056 Int) (text!61474 List!57613)) (Times!8718) (Or!8718) (Equal!8718) (Minus!8718) (Broken!43594 (value!269057 List!57613)) (And!8718) (Div!8718) (LessEqual!8718) (Mod!8718) (Concat!22360) (Not!8718) (Plus!8718) (SpaceValue!8718 (value!269058 List!57613)) (IntegerValue!26156 (value!269059 Int) (text!61475 List!57613)) (StringLiteralValue!26155 (text!61476 List!57613)) (FloatLiteralValue!17437 (text!61477 List!57613)) (BytesLiteralValue!8718 (value!269060 List!57613)) (CommentValue!17437 (value!269061 List!57613)) (StringLiteralValue!26156 (value!269062 List!57613)) (ErrorTokenValue!8718 (msg!8779 List!57613)) )
))
(declare-datatypes ((TokenValueInjection!16744 0))(
  ( (TokenValueInjection!16745 (toValue!11383 Int) (toChars!11242 Int)) )
))
(declare-datatypes ((Rule!16616 0))(
  ( (Rule!16617 (regex!8408 Regex!13641) (tag!9272 String!65463) (isSeparator!8408 Bool) (transformation!8408 TokenValueInjection!16744)) )
))
(declare-fun rule!200 () Rule!16616)

(declare-fun ruleValid!3816 (LexerInterface!8000 Rule!16616) Bool)

(assert (=> b!4976477 (= res!2124242 (ruleValid!3816 thiss!16165 rule!200))))

(declare-fun b!4976478 () Bool)

(declare-fun tp!1395398 () Bool)

(declare-fun inv!75181 (Conc!15160) Bool)

(assert (=> b!4976478 (= e!3110185 (and (inv!75181 (c!849183 input!1580)) tp!1395398))))

(declare-fun b!4976479 () Bool)

(declare-fun tp!1395402 () Bool)

(assert (=> b!4976479 (= e!3110180 (and (inv!75181 (c!849183 totalInput!520)) tp!1395402))))

(declare-fun tp!1395400 () Bool)

(declare-fun b!4976480 () Bool)

(declare-fun e!3110183 () Bool)

(declare-fun inv!75176 (String!65463) Bool)

(declare-fun inv!75182 (TokenValueInjection!16744) Bool)

(assert (=> b!4976480 (= e!3110182 (and tp!1395400 (inv!75176 (tag!9272 rule!200)) (inv!75182 (transformation!8408 rule!200)) e!3110183))))

(declare-fun b!4976481 () Bool)

(assert (=> b!4976481 (= e!3110181 false)))

(assert (=> b!4976482 (= e!3110183 (and tp!1395399 tp!1395401))))

(assert (= (and start!525114 res!2124241) b!4976477))

(assert (= (and b!4976477 res!2124242) b!4976476))

(assert (= (and b!4976476 res!2124243) b!4976481))

(assert (= b!4976480 b!4976482))

(assert (= start!525114 b!4976480))

(assert (= start!525114 b!4976478))

(assert (= start!525114 b!4976479))

(declare-fun m!6006674 () Bool)

(assert (=> b!4976479 m!6006674))

(declare-fun m!6006676 () Bool)

(assert (=> b!4976476 m!6006676))

(declare-fun m!6006678 () Bool)

(assert (=> b!4976476 m!6006678))

(assert (=> b!4976476 m!6006676))

(assert (=> b!4976476 m!6006678))

(declare-fun m!6006680 () Bool)

(assert (=> b!4976476 m!6006680))

(declare-fun m!6006682 () Bool)

(assert (=> b!4976480 m!6006682))

(declare-fun m!6006684 () Bool)

(assert (=> b!4976480 m!6006684))

(declare-fun m!6006686 () Bool)

(assert (=> b!4976478 m!6006686))

(declare-fun m!6006688 () Bool)

(assert (=> start!525114 m!6006688))

(declare-fun m!6006690 () Bool)

(assert (=> start!525114 m!6006690))

(declare-fun m!6006692 () Bool)

(assert (=> b!4976477 m!6006692))

(check-sat (not b!4976477) (not start!525114) (not b_next!133721) (not b_next!133723) b_and!349343 b_and!349345 (not b!4976479) (not b!4976476) (not b!4976480) (not b!4976478))
(check-sat b_and!349345 b_and!349343 (not b_next!133723) (not b_next!133721))
