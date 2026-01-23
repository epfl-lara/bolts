; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389588 () Bool)

(assert start!389588)

(declare-fun b!4110559 () Bool)

(declare-fun b_free!115539 () Bool)

(declare-fun b_next!116243 () Bool)

(assert (=> b!4110559 (= b_free!115539 (not b_next!116243))))

(declare-fun tp!1249449 () Bool)

(declare-fun b_and!317425 () Bool)

(assert (=> b!4110559 (= tp!1249449 b_and!317425)))

(declare-fun b_free!115541 () Bool)

(declare-fun b_next!116245 () Bool)

(assert (=> b!4110559 (= b_free!115541 (not b_next!116245))))

(declare-fun tp!1249452 () Bool)

(declare-fun b_and!317427 () Bool)

(assert (=> b!4110559 (= tp!1249452 b_and!317427)))

(declare-fun b!4110566 () Bool)

(declare-fun b_free!115543 () Bool)

(declare-fun b_next!116247 () Bool)

(assert (=> b!4110566 (= b_free!115543 (not b_next!116247))))

(declare-fun tp!1249454 () Bool)

(declare-fun b_and!317429 () Bool)

(assert (=> b!4110566 (= tp!1249454 b_and!317429)))

(declare-fun b_free!115545 () Bool)

(declare-fun b_next!116249 () Bool)

(assert (=> b!4110566 (= b_free!115545 (not b_next!116249))))

(declare-fun tp!1249457 () Bool)

(declare-fun b_and!317431 () Bool)

(assert (=> b!4110566 (= tp!1249457 b_and!317431)))

(declare-fun b!4110556 () Bool)

(declare-fun b_free!115547 () Bool)

(declare-fun b_next!116251 () Bool)

(assert (=> b!4110556 (= b_free!115547 (not b_next!116251))))

(declare-fun tp!1249453 () Bool)

(declare-fun b_and!317433 () Bool)

(assert (=> b!4110556 (= tp!1249453 b_and!317433)))

(declare-fun b_free!115549 () Bool)

(declare-fun b_next!116253 () Bool)

(assert (=> b!4110556 (= b_free!115549 (not b_next!116253))))

(declare-fun tp!1249451 () Bool)

(declare-fun b_and!317435 () Bool)

(assert (=> b!4110556 (= tp!1249451 b_and!317435)))

(declare-fun e!2550304 () Bool)

(assert (=> b!4110556 (= e!2550304 (and tp!1249453 tp!1249451))))

(declare-fun b!4110557 () Bool)

(declare-fun e!2550292 () Bool)

(declare-fun e!2550294 () Bool)

(assert (=> b!4110557 (= e!2550292 e!2550294)))

(declare-fun res!1679579 () Bool)

(assert (=> b!4110557 (=> (not res!1679579) (not e!2550294))))

(declare-datatypes ((String!50879 0))(
  ( (String!50880 (value!225663 String)) )
))
(declare-datatypes ((List!44384 0))(
  ( (Nil!44260) (Cons!44260 (h!49680 String!50879) (t!340135 List!44384)) )
))
(declare-fun lt!1468195 () List!44384)

(declare-fun lt!1468193 () List!44384)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toSet!5 (List!44384) (InoxSet String!50879))

(assert (=> b!4110557 (= res!1679579 (= (toSet!5 lt!1468195) (toSet!5 lt!1468193)))))

(declare-datatypes ((C!24388 0))(
  ( (C!24389 (val!14304 Int)) )
))
(declare-datatypes ((List!44385 0))(
  ( (Nil!44261) (Cons!44261 (h!49681 C!24388) (t!340136 List!44385)) )
))
(declare-datatypes ((IArray!26819 0))(
  ( (IArray!26820 (innerList!13467 List!44385)) )
))
(declare-datatypes ((Conc!13407 0))(
  ( (Node!13407 (left!33195 Conc!13407) (right!33525 Conc!13407) (csize!27044 Int) (cheight!13618 Int)) (Leaf!20720 (xs!16713 IArray!26819) (csize!27045 Int)) (Empty!13407) )
))
(declare-datatypes ((BalanceConc!26408 0))(
  ( (BalanceConc!26409 (c!706844 Conc!13407)) )
))
(declare-datatypes ((List!44386 0))(
  ( (Nil!44262) (Cons!44262 (h!49682 (_ BitVec 16)) (t!340137 List!44386)) )
))
(declare-datatypes ((TokenValue!7426 0))(
  ( (FloatLiteralValue!14852 (text!52427 List!44386)) (TokenValueExt!7425 (__x!27069 Int)) (Broken!37130 (value!225664 List!44386)) (Object!7549) (End!7426) (Def!7426) (Underscore!7426) (Match!7426) (Else!7426) (Error!7426) (Case!7426) (If!7426) (Extends!7426) (Abstract!7426) (Class!7426) (Val!7426) (DelimiterValue!14852 (del!7486 List!44386)) (KeywordValue!7432 (value!225665 List!44386)) (CommentValue!14852 (value!225666 List!44386)) (WhitespaceValue!14852 (value!225667 List!44386)) (IndentationValue!7426 (value!225668 List!44386)) (String!50881) (Int32!7426) (Broken!37131 (value!225669 List!44386)) (Boolean!7427) (Unit!63700) (OperatorValue!7429 (op!7486 List!44386)) (IdentifierValue!14852 (value!225670 List!44386)) (IdentifierValue!14853 (value!225671 List!44386)) (WhitespaceValue!14853 (value!225672 List!44386)) (True!14852) (False!14852) (Broken!37132 (value!225673 List!44386)) (Broken!37133 (value!225674 List!44386)) (True!14853) (RightBrace!7426) (RightBracket!7426) (Colon!7426) (Null!7426) (Comma!7426) (LeftBracket!7426) (False!14853) (LeftBrace!7426) (ImaginaryLiteralValue!7426 (text!52428 List!44386)) (StringLiteralValue!22278 (value!225675 List!44386)) (EOFValue!7426 (value!225676 List!44386)) (IdentValue!7426 (value!225677 List!44386)) (DelimiterValue!14853 (value!225678 List!44386)) (DedentValue!7426 (value!225679 List!44386)) (NewLineValue!7426 (value!225680 List!44386)) (IntegerValue!22278 (value!225681 (_ BitVec 32)) (text!52429 List!44386)) (IntegerValue!22279 (value!225682 Int) (text!52430 List!44386)) (Times!7426) (Or!7426) (Equal!7426) (Minus!7426) (Broken!37134 (value!225683 List!44386)) (And!7426) (Div!7426) (LessEqual!7426) (Mod!7426) (Concat!19527) (Not!7426) (Plus!7426) (SpaceValue!7426 (value!225684 List!44386)) (IntegerValue!22280 (value!225685 Int) (text!52431 List!44386)) (StringLiteralValue!22279 (text!52432 List!44386)) (FloatLiteralValue!14853 (text!52433 List!44386)) (BytesLiteralValue!7426 (value!225686 List!44386)) (CommentValue!14853 (value!225687 List!44386)) (StringLiteralValue!22280 (value!225688 List!44386)) (ErrorTokenValue!7426 (msg!7487 List!44386)) )
))
(declare-datatypes ((Regex!12101 0))(
  ( (ElementMatch!12101 (c!706845 C!24388)) (Concat!19528 (regOne!24714 Regex!12101) (regTwo!24714 Regex!12101)) (EmptyExpr!12101) (Star!12101 (reg!12430 Regex!12101)) (EmptyLang!12101) (Union!12101 (regOne!24715 Regex!12101) (regTwo!24715 Regex!12101)) )
))
(declare-datatypes ((TokenValueInjection!14280 0))(
  ( (TokenValueInjection!14281 (toValue!9828 Int) (toChars!9687 Int)) )
))
(declare-datatypes ((Rule!14192 0))(
  ( (Rule!14193 (regex!7196 Regex!12101) (tag!8056 String!50879) (isSeparator!7196 Bool) (transformation!7196 TokenValueInjection!14280)) )
))
(declare-fun e1!99 () Rule!14192)

(declare-fun e2!99 () Rule!14192)

(assert (=> b!4110557 (= lt!1468193 (Cons!44260 (tag!8056 e1!99) (Cons!44260 (tag!8056 e2!99) Nil!44260)))))

(declare-fun b!4110558 () Bool)

(declare-fun e!2550293 () Bool)

(declare-fun e!2550291 () Bool)

(assert (=> b!4110558 (= e!2550293 e!2550291)))

(declare-fun res!1679577 () Bool)

(assert (=> b!4110558 (=> (not res!1679577) (not e!2550291))))

(declare-datatypes ((List!44387 0))(
  ( (Nil!44263) (Cons!44263 (h!49683 Rule!14192) (t!340138 List!44387)) )
))
(declare-fun lt!1468194 () List!44387)

(declare-datatypes ((LexerInterface!6785 0))(
  ( (LexerInterfaceExt!6782 (__x!27070 Int)) (Lexer!6783) )
))
(declare-fun thiss!26878 () LexerInterface!6785)

(declare-fun lt!1468191 () List!44384)

(declare-fun noDuplicateTag!2873 (LexerInterface!6785 List!44387 List!44384) Bool)

(assert (=> b!4110558 (= res!1679577 (noDuplicateTag!2873 thiss!26878 lt!1468194 lt!1468191))))

(assert (=> b!4110558 (= lt!1468191 (Cons!44260 (tag!8056 e1!99) Nil!44260))))

(declare-fun e!2550298 () Bool)

(assert (=> b!4110559 (= e!2550298 (and tp!1249449 tp!1249452))))

(declare-fun b!4110560 () Bool)

(assert (=> b!4110560 (= e!2550291 e!2550292)))

(declare-fun res!1679575 () Bool)

(assert (=> b!4110560 (=> (not res!1679575) (not e!2550292))))

(declare-fun l!6462 () List!44387)

(assert (=> b!4110560 (= res!1679575 (noDuplicateTag!2873 thiss!26878 l!6462 lt!1468195))))

(assert (=> b!4110560 (= lt!1468195 (Cons!44260 (tag!8056 e2!99) lt!1468191))))

(declare-fun res!1679576 () Bool)

(declare-fun e!2550300 () Bool)

(assert (=> start!389588 (=> (not res!1679576) (not e!2550300))))

(get-info :version)

(assert (=> start!389588 (= res!1679576 ((_ is Lexer!6783) thiss!26878))))

(assert (=> start!389588 e!2550300))

(assert (=> start!389588 true))

(declare-fun e!2550301 () Bool)

(assert (=> start!389588 e!2550301))

(declare-fun e!2550295 () Bool)

(assert (=> start!389588 e!2550295))

(declare-fun e!2550302 () Bool)

(assert (=> start!389588 e!2550302))

(declare-fun e!2550297 () Bool)

(declare-fun b!4110561 () Bool)

(declare-fun tp!1249456 () Bool)

(declare-fun inv!58899 (String!50879) Bool)

(declare-fun inv!58901 (TokenValueInjection!14280) Bool)

(assert (=> b!4110561 (= e!2550297 (and tp!1249456 (inv!58899 (tag!8056 (h!49683 l!6462))) (inv!58901 (transformation!7196 (h!49683 l!6462))) e!2550304))))

(declare-fun b!4110562 () Bool)

(assert (=> b!4110562 (= e!2550300 e!2550293)))

(declare-fun res!1679578 () Bool)

(assert (=> b!4110562 (=> (not res!1679578) (not e!2550293))))

(assert (=> b!4110562 (= res!1679578 (noDuplicateTag!2873 thiss!26878 (Cons!44263 e1!99 lt!1468194) Nil!44260))))

(assert (=> b!4110562 (= lt!1468194 (Cons!44263 e2!99 l!6462))))

(declare-fun tp!1249458 () Bool)

(declare-fun b!4110563 () Bool)

(assert (=> b!4110563 (= e!2550295 (and tp!1249458 (inv!58899 (tag!8056 e2!99)) (inv!58901 (transformation!7196 e2!99)) e!2550298))))

(declare-fun b!4110564 () Bool)

(declare-fun tp!1249450 () Bool)

(assert (=> b!4110564 (= e!2550302 (and e!2550297 tp!1249450))))

(declare-fun tp!1249455 () Bool)

(declare-fun e!2550305 () Bool)

(declare-fun b!4110565 () Bool)

(assert (=> b!4110565 (= e!2550301 (and tp!1249455 (inv!58899 (tag!8056 e1!99)) (inv!58901 (transformation!7196 e1!99)) e!2550305))))

(assert (=> b!4110566 (= e!2550305 (and tp!1249454 tp!1249457))))

(declare-fun b!4110567 () Bool)

(assert (=> b!4110567 (= e!2550294 (not true))))

(assert (=> b!4110567 (noDuplicateTag!2873 thiss!26878 l!6462 lt!1468193)))

(declare-datatypes ((Unit!63701 0))(
  ( (Unit!63702) )
))
(declare-fun lt!1468192 () Unit!63701)

(declare-fun lemmaNoDuplicateSameWithAccWithSameContent!2 (LexerInterface!6785 List!44387 List!44384 List!44384) Unit!63701)

(assert (=> b!4110567 (= lt!1468192 (lemmaNoDuplicateSameWithAccWithSameContent!2 thiss!26878 l!6462 lt!1468195 lt!1468193))))

(assert (= (and start!389588 res!1679576) b!4110562))

(assert (= (and b!4110562 res!1679578) b!4110558))

(assert (= (and b!4110558 res!1679577) b!4110560))

(assert (= (and b!4110560 res!1679575) b!4110557))

(assert (= (and b!4110557 res!1679579) b!4110567))

(assert (= b!4110565 b!4110566))

(assert (= start!389588 b!4110565))

(assert (= b!4110563 b!4110559))

(assert (= start!389588 b!4110563))

(assert (= b!4110561 b!4110556))

(assert (= b!4110564 b!4110561))

(assert (= (and start!389588 ((_ is Cons!44263) l!6462)) b!4110564))

(declare-fun m!4712839 () Bool)

(assert (=> b!4110562 m!4712839))

(declare-fun m!4712841 () Bool)

(assert (=> b!4110567 m!4712841))

(declare-fun m!4712843 () Bool)

(assert (=> b!4110567 m!4712843))

(declare-fun m!4712845 () Bool)

(assert (=> b!4110561 m!4712845))

(declare-fun m!4712847 () Bool)

(assert (=> b!4110561 m!4712847))

(declare-fun m!4712849 () Bool)

(assert (=> b!4110563 m!4712849))

(declare-fun m!4712851 () Bool)

(assert (=> b!4110563 m!4712851))

(declare-fun m!4712853 () Bool)

(assert (=> b!4110558 m!4712853))

(declare-fun m!4712855 () Bool)

(assert (=> b!4110565 m!4712855))

(declare-fun m!4712857 () Bool)

(assert (=> b!4110565 m!4712857))

(declare-fun m!4712859 () Bool)

(assert (=> b!4110557 m!4712859))

(declare-fun m!4712861 () Bool)

(assert (=> b!4110557 m!4712861))

(declare-fun m!4712863 () Bool)

(assert (=> b!4110560 m!4712863))

(check-sat (not b!4110562) (not b!4110563) (not b!4110558) (not b!4110561) (not b_next!116247) (not b!4110567) (not b_next!116245) b_and!317425 b_and!317433 (not b_next!116243) b_and!317429 b_and!317427 (not b_next!116251) (not b_next!116249) b_and!317435 (not b!4110557) (not b_next!116253) (not b!4110560) (not b!4110565) b_and!317431 (not b!4110564))
(check-sat (not b_next!116247) (not b_next!116253) (not b_next!116245) b_and!317431 b_and!317425 b_and!317433 (not b_next!116243) b_and!317429 b_and!317427 (not b_next!116251) (not b_next!116249) b_and!317435)
