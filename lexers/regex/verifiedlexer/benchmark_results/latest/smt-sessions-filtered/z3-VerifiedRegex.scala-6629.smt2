; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349522 () Bool)

(assert start!349522)

(declare-fun b!3705824 () Bool)

(declare-fun b_free!99137 () Bool)

(declare-fun b_next!99841 () Bool)

(assert (=> b!3705824 (= b_free!99137 (not b_next!99841))))

(declare-fun tp!1127310 () Bool)

(declare-fun b_and!277371 () Bool)

(assert (=> b!3705824 (= tp!1127310 b_and!277371)))

(declare-fun b_free!99139 () Bool)

(declare-fun b_next!99843 () Bool)

(assert (=> b!3705824 (= b_free!99139 (not b_next!99843))))

(declare-fun tp!1127309 () Bool)

(declare-fun b_and!277373 () Bool)

(assert (=> b!3705824 (= tp!1127309 b_and!277373)))

(declare-fun res!1507578 () Bool)

(declare-fun e!2295693 () Bool)

(assert (=> start!349522 (=> (not res!1507578) (not e!2295693))))

(declare-datatypes ((LexerInterface!5627 0))(
  ( (LexerInterfaceExt!5624 (__x!24753 Int)) (Lexer!5625) )
))
(declare-fun thiss!19663 () LexerInterface!5627)

(get-info :version)

(assert (=> start!349522 (= res!1507578 ((_ is Lexer!5625) thiss!19663))))

(assert (=> start!349522 e!2295693))

(assert (=> start!349522 true))

(declare-fun e!2295691 () Bool)

(assert (=> start!349522 e!2295691))

(declare-datatypes ((String!44673 0))(
  ( (String!44674 (value!192458 String)) )
))
(declare-fun tag!164 () String!44673)

(declare-fun inv!53033 (String!44673) Bool)

(assert (=> start!349522 (inv!53033 tag!164)))

(declare-fun b!3705820 () Bool)

(declare-datatypes ((List!39672 0))(
  ( (Nil!39548) (Cons!39548 (h!44968 (_ BitVec 16)) (t!302355 List!39672)) )
))
(declare-datatypes ((TokenValue!6268 0))(
  ( (FloatLiteralValue!12536 (text!44321 List!39672)) (TokenValueExt!6267 (__x!24754 Int)) (Broken!31340 (value!192459 List!39672)) (Object!6391) (End!6268) (Def!6268) (Underscore!6268) (Match!6268) (Else!6268) (Error!6268) (Case!6268) (If!6268) (Extends!6268) (Abstract!6268) (Class!6268) (Val!6268) (DelimiterValue!12536 (del!6328 List!39672)) (KeywordValue!6274 (value!192460 List!39672)) (CommentValue!12536 (value!192461 List!39672)) (WhitespaceValue!12536 (value!192462 List!39672)) (IndentationValue!6268 (value!192463 List!39672)) (String!44675) (Int32!6268) (Broken!31341 (value!192464 List!39672)) (Boolean!6269) (Unit!57435) (OperatorValue!6271 (op!6328 List!39672)) (IdentifierValue!12536 (value!192465 List!39672)) (IdentifierValue!12537 (value!192466 List!39672)) (WhitespaceValue!12537 (value!192467 List!39672)) (True!12536) (False!12536) (Broken!31342 (value!192468 List!39672)) (Broken!31343 (value!192469 List!39672)) (True!12537) (RightBrace!6268) (RightBracket!6268) (Colon!6268) (Null!6268) (Comma!6268) (LeftBracket!6268) (False!12537) (LeftBrace!6268) (ImaginaryLiteralValue!6268 (text!44322 List!39672)) (StringLiteralValue!18804 (value!192470 List!39672)) (EOFValue!6268 (value!192471 List!39672)) (IdentValue!6268 (value!192472 List!39672)) (DelimiterValue!12537 (value!192473 List!39672)) (DedentValue!6268 (value!192474 List!39672)) (NewLineValue!6268 (value!192475 List!39672)) (IntegerValue!18804 (value!192476 (_ BitVec 32)) (text!44323 List!39672)) (IntegerValue!18805 (value!192477 Int) (text!44324 List!39672)) (Times!6268) (Or!6268) (Equal!6268) (Minus!6268) (Broken!31344 (value!192478 List!39672)) (And!6268) (Div!6268) (LessEqual!6268) (Mod!6268) (Concat!17065) (Not!6268) (Plus!6268) (SpaceValue!6268 (value!192479 List!39672)) (IntegerValue!18806 (value!192480 Int) (text!44325 List!39672)) (StringLiteralValue!18805 (text!44326 List!39672)) (FloatLiteralValue!12537 (text!44327 List!39672)) (BytesLiteralValue!6268 (value!192481 List!39672)) (CommentValue!12537 (value!192482 List!39672)) (StringLiteralValue!18806 (value!192483 List!39672)) (ErrorTokenValue!6268 (msg!6329 List!39672)) )
))
(declare-datatypes ((C!21780 0))(
  ( (C!21781 (val!12938 Int)) )
))
(declare-datatypes ((List!39673 0))(
  ( (Nil!39549) (Cons!39549 (h!44969 C!21780) (t!302356 List!39673)) )
))
(declare-datatypes ((IArray!24275 0))(
  ( (IArray!24276 (innerList!12195 List!39673)) )
))
(declare-datatypes ((Conc!12135 0))(
  ( (Node!12135 (left!30712 Conc!12135) (right!31042 Conc!12135) (csize!24500 Int) (cheight!12346 Int)) (Leaf!18765 (xs!15337 IArray!24275) (csize!24501 Int)) (Empty!12135) )
))
(declare-datatypes ((BalanceConc!23884 0))(
  ( (BalanceConc!23885 (c!640046 Conc!12135)) )
))
(declare-datatypes ((Regex!10797 0))(
  ( (ElementMatch!10797 (c!640047 C!21780)) (Concat!17066 (regOne!22106 Regex!10797) (regTwo!22106 Regex!10797)) (EmptyExpr!10797) (Star!10797 (reg!11126 Regex!10797)) (EmptyLang!10797) (Union!10797 (regOne!22107 Regex!10797) (regTwo!22107 Regex!10797)) )
))
(declare-datatypes ((TokenValueInjection!11964 0))(
  ( (TokenValueInjection!11965 (toValue!8382 Int) (toChars!8241 Int)) )
))
(declare-datatypes ((Rule!11876 0))(
  ( (Rule!11877 (regex!6038 Regex!10797) (tag!6898 String!44673) (isSeparator!6038 Bool) (transformation!6038 TokenValueInjection!11964)) )
))
(declare-datatypes ((List!39674 0))(
  ( (Nil!39550) (Cons!39550 (h!44970 Rule!11876) (t!302357 List!39674)) )
))
(declare-fun rules!2525 () List!39674)

(assert (=> b!3705820 (= e!2295693 (and (or (not ((_ is Cons!39550) rules!2525)) (not (= (tag!6898 (h!44970 rules!2525)) tag!164))) (or (not ((_ is Cons!39550) rules!2525)) (= (tag!6898 (h!44970 rules!2525)) tag!164)) (not ((_ is Nil!39550) rules!2525))))))

(declare-fun b!3705821 () Bool)

(declare-fun e!2295689 () Bool)

(declare-fun tp!1127308 () Bool)

(assert (=> b!3705821 (= e!2295691 (and e!2295689 tp!1127308))))

(declare-fun b!3705822 () Bool)

(declare-fun res!1507577 () Bool)

(assert (=> b!3705822 (=> (not res!1507577) (not e!2295693))))

(declare-fun rulesInvariant!5024 (LexerInterface!5627 List!39674) Bool)

(assert (=> b!3705822 (= res!1507577 (rulesInvariant!5024 thiss!19663 rules!2525))))

(declare-fun tp!1127307 () Bool)

(declare-fun b!3705823 () Bool)

(declare-fun e!2295690 () Bool)

(declare-fun inv!53035 (TokenValueInjection!11964) Bool)

(assert (=> b!3705823 (= e!2295689 (and tp!1127307 (inv!53033 (tag!6898 (h!44970 rules!2525))) (inv!53035 (transformation!6038 (h!44970 rules!2525))) e!2295690))))

(assert (=> b!3705824 (= e!2295690 (and tp!1127310 tp!1127309))))

(assert (= (and start!349522 res!1507578) b!3705822))

(assert (= (and b!3705822 res!1507577) b!3705820))

(assert (= b!3705823 b!3705824))

(assert (= b!3705821 b!3705823))

(assert (= (and start!349522 ((_ is Cons!39550) rules!2525)) b!3705821))

(declare-fun m!4216005 () Bool)

(assert (=> start!349522 m!4216005))

(declare-fun m!4216007 () Bool)

(assert (=> b!3705822 m!4216007))

(declare-fun m!4216009 () Bool)

(assert (=> b!3705823 m!4216009))

(declare-fun m!4216011 () Bool)

(assert (=> b!3705823 m!4216011))

(check-sat b_and!277373 (not b_next!99843) (not b_next!99841) (not b!3705821) (not b!3705822) b_and!277371 (not b!3705823) (not start!349522))
(check-sat b_and!277373 b_and!277371 (not b_next!99843) (not b_next!99841))
