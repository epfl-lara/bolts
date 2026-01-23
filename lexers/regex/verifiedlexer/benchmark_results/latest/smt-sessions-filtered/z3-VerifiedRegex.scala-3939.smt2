; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215820 () Bool)

(assert start!215820)

(declare-fun b_free!63983 () Bool)

(declare-fun b_next!64687 () Bool)

(assert (=> start!215820 (= b_free!63983 (not b_next!64687))))

(declare-fun tp!688352 () Bool)

(declare-fun b_and!173651 () Bool)

(assert (=> start!215820 (= tp!688352 b_and!173651)))

(declare-fun b!2214460 () Bool)

(declare-fun b_free!63985 () Bool)

(declare-fun b_next!64689 () Bool)

(assert (=> b!2214460 (= b_free!63985 (not b_next!64689))))

(declare-fun tp!688356 () Bool)

(declare-fun b_and!173653 () Bool)

(assert (=> b!2214460 (= tp!688356 b_and!173653)))

(declare-fun b_free!63987 () Bool)

(declare-fun b_next!64691 () Bool)

(assert (=> b!2214460 (= b_free!63987 (not b_next!64691))))

(declare-fun tp!688358 () Bool)

(declare-fun b_and!173655 () Bool)

(assert (=> b!2214460 (= tp!688358 b_and!173655)))

(declare-fun b!2214465 () Bool)

(declare-fun b_free!63989 () Bool)

(declare-fun b_next!64693 () Bool)

(assert (=> b!2214465 (= b_free!63989 (not b_next!64693))))

(declare-fun tp!688360 () Bool)

(declare-fun b_and!173657 () Bool)

(assert (=> b!2214465 (= tp!688360 b_and!173657)))

(declare-fun b_free!63991 () Bool)

(declare-fun b_next!64695 () Bool)

(assert (=> b!2214465 (= b_free!63991 (not b_next!64695))))

(declare-fun tp!688354 () Bool)

(declare-fun b_and!173659 () Bool)

(assert (=> b!2214465 (= tp!688354 b_and!173659)))

(declare-fun b!2214469 () Bool)

(declare-fun b_free!63993 () Bool)

(declare-fun b_next!64697 () Bool)

(assert (=> b!2214469 (= b_free!63993 (not b_next!64697))))

(declare-fun tp!688353 () Bool)

(declare-fun b_and!173661 () Bool)

(assert (=> b!2214469 (= tp!688353 b_and!173661)))

(declare-fun b_free!63995 () Bool)

(declare-fun b_next!64699 () Bool)

(assert (=> b!2214469 (= b_free!63995 (not b_next!64699))))

(declare-fun tp!688351 () Bool)

(declare-fun b_and!173663 () Bool)

(assert (=> b!2214469 (= tp!688351 b_and!173663)))

(declare-fun b!2214456 () Bool)

(declare-fun e!1414254 () Bool)

(assert (=> b!2214456 (= e!1414254 false)))

(declare-datatypes ((List!25993 0))(
  ( (Nil!25909) (Cons!25909 (h!31310 (_ BitVec 16)) (t!198845 List!25993)) )
))
(declare-datatypes ((TokenValue!4311 0))(
  ( (FloatLiteralValue!8622 (text!30622 List!25993)) (TokenValueExt!4310 (__x!17075 Int)) (Broken!21555 (value!131694 List!25993)) (Object!4394) (End!4311) (Def!4311) (Underscore!4311) (Match!4311) (Else!4311) (Error!4311) (Case!4311) (If!4311) (Extends!4311) (Abstract!4311) (Class!4311) (Val!4311) (DelimiterValue!8622 (del!4371 List!25993)) (KeywordValue!4317 (value!131695 List!25993)) (CommentValue!8622 (value!131696 List!25993)) (WhitespaceValue!8622 (value!131697 List!25993)) (IndentationValue!4311 (value!131698 List!25993)) (String!28230) (Int32!4311) (Broken!21556 (value!131699 List!25993)) (Boolean!4312) (Unit!38923) (OperatorValue!4314 (op!4371 List!25993)) (IdentifierValue!8622 (value!131700 List!25993)) (IdentifierValue!8623 (value!131701 List!25993)) (WhitespaceValue!8623 (value!131702 List!25993)) (True!8622) (False!8622) (Broken!21557 (value!131703 List!25993)) (Broken!21558 (value!131704 List!25993)) (True!8623) (RightBrace!4311) (RightBracket!4311) (Colon!4311) (Null!4311) (Comma!4311) (LeftBracket!4311) (False!8623) (LeftBrace!4311) (ImaginaryLiteralValue!4311 (text!30623 List!25993)) (StringLiteralValue!12933 (value!131705 List!25993)) (EOFValue!4311 (value!131706 List!25993)) (IdentValue!4311 (value!131707 List!25993)) (DelimiterValue!8623 (value!131708 List!25993)) (DedentValue!4311 (value!131709 List!25993)) (NewLineValue!4311 (value!131710 List!25993)) (IntegerValue!12933 (value!131711 (_ BitVec 32)) (text!30624 List!25993)) (IntegerValue!12934 (value!131712 Int) (text!30625 List!25993)) (Times!4311) (Or!4311) (Equal!4311) (Minus!4311) (Broken!21559 (value!131713 List!25993)) (And!4311) (Div!4311) (LessEqual!4311) (Mod!4311) (Concat!10630) (Not!4311) (Plus!4311) (SpaceValue!4311 (value!131714 List!25993)) (IntegerValue!12935 (value!131715 Int) (text!30626 List!25993)) (StringLiteralValue!12934 (text!30627 List!25993)) (FloatLiteralValue!8623 (text!30628 List!25993)) (BytesLiteralValue!4311 (value!131716 List!25993)) (CommentValue!8623 (value!131717 List!25993)) (StringLiteralValue!12935 (value!131718 List!25993)) (ErrorTokenValue!4311 (msg!4372 List!25993)) )
))
(declare-datatypes ((C!12784 0))(
  ( (C!12785 (val!7404 Int)) )
))
(declare-datatypes ((List!25994 0))(
  ( (Nil!25910) (Cons!25910 (h!31311 C!12784) (t!198846 List!25994)) )
))
(declare-datatypes ((IArray!16959 0))(
  ( (IArray!16960 (innerList!8537 List!25994)) )
))
(declare-datatypes ((Conc!8477 0))(
  ( (Node!8477 (left!19920 Conc!8477) (right!20250 Conc!8477) (csize!17184 Int) (cheight!8688 Int)) (Leaf!12417 (xs!11419 IArray!16959) (csize!17185 Int)) (Empty!8477) )
))
(declare-datatypes ((BalanceConc!16672 0))(
  ( (BalanceConc!16673 (c!353859 Conc!8477)) )
))
(declare-datatypes ((Regex!6319 0))(
  ( (ElementMatch!6319 (c!353860 C!12784)) (Concat!10631 (regOne!13150 Regex!6319) (regTwo!13150 Regex!6319)) (EmptyExpr!6319) (Star!6319 (reg!6648 Regex!6319)) (EmptyLang!6319) (Union!6319 (regOne!13151 Regex!6319) (regTwo!13151 Regex!6319)) )
))
(declare-datatypes ((TokenValueInjection!8206 0))(
  ( (TokenValueInjection!8207 (toValue!5886 Int) (toChars!5745 Int)) )
))
(declare-datatypes ((String!28231 0))(
  ( (String!28232 (value!131719 String)) )
))
(declare-datatypes ((Rule!8150 0))(
  ( (Rule!8151 (regex!4175 Regex!6319) (tag!4665 String!28231) (isSeparator!4175 Bool) (transformation!4175 TokenValueInjection!8206)) )
))
(declare-datatypes ((Token!7832 0))(
  ( (Token!7833 (value!131720 TokenValue!4311) (rule!6475 Rule!8150) (size!20225 Int) (originalCharacters!4947 List!25994)) )
))
(declare-fun lt!826763 () Token!7832)

(declare-datatypes ((List!25995 0))(
  ( (Nil!25911) (Cons!25911 (h!31312 Token!7832) (t!198847 List!25995)) )
))
(declare-fun l!6601 () List!25995)

(declare-fun i!1797 () Int)

(declare-fun apply!6421 (List!25995 Int) Token!7832)

(assert (=> b!2214456 (= lt!826763 (apply!6421 l!6601 (+ 1 i!1797)))))

(declare-fun b!2214457 () Bool)

(declare-fun res!951659 () Bool)

(assert (=> b!2214457 (=> (not res!951659) (not e!1414254))))

(declare-fun t1!61 () Token!7832)

(assert (=> b!2214457 (= res!951659 (= (apply!6421 l!6601 i!1797) t1!61))))

(declare-fun b!2214458 () Bool)

(declare-fun res!951656 () Bool)

(assert (=> b!2214458 (=> (not res!951656) (not e!1414254))))

(declare-datatypes ((LexerInterface!3772 0))(
  ( (LexerInterfaceExt!3769 (__x!17076 Int)) (Lexer!3770) )
))
(declare-fun thiss!27908 () LexerInterface!3772)

(declare-datatypes ((List!25996 0))(
  ( (Nil!25912) (Cons!25912 (h!31313 Rule!8150) (t!198848 List!25996)) )
))
(declare-fun rules!4462 () List!25996)

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!42 (LexerInterface!3772 List!25995 List!25996 Int) Bool)

(assert (=> b!2214458 (= res!951656 (tokensListTwoByTwoPredicateList!42 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun res!951655 () Bool)

(assert (=> start!215820 (=> (not res!951655) (not e!1414254))))

(get-info :version)

(assert (=> start!215820 (= res!951655 ((_ is Lexer!3770) thiss!27908))))

(assert (=> start!215820 e!1414254))

(assert (=> start!215820 true))

(declare-fun e!1414265 () Bool)

(assert (=> start!215820 e!1414265))

(assert (=> start!215820 tp!688352))

(declare-fun e!1414256 () Bool)

(assert (=> start!215820 e!1414256))

(declare-fun e!1414258 () Bool)

(declare-fun inv!35112 (Token!7832) Bool)

(assert (=> start!215820 (and (inv!35112 t1!61) e!1414258)))

(declare-fun b!2214459 () Bool)

(declare-fun e!1414264 () Bool)

(declare-fun tp!688361 () Bool)

(assert (=> b!2214459 (= e!1414265 (and e!1414264 tp!688361))))

(declare-fun e!1414267 () Bool)

(assert (=> b!2214460 (= e!1414267 (and tp!688356 tp!688358))))

(declare-fun b!2214461 () Bool)

(declare-fun res!951658 () Bool)

(assert (=> b!2214461 (=> (not res!951658) (not e!1414254))))

(assert (=> b!2214461 (= res!951658 (>= i!1797 0))))

(declare-fun e!1414257 () Bool)

(declare-fun tp!688355 () Bool)

(declare-fun b!2214462 () Bool)

(declare-fun inv!21 (TokenValue!4311) Bool)

(assert (=> b!2214462 (= e!1414258 (and (inv!21 (value!131720 t1!61)) e!1414257 tp!688355))))

(declare-fun b!2214463 () Bool)

(declare-fun res!951657 () Bool)

(assert (=> b!2214463 (=> (not res!951657) (not e!1414254))))

(declare-fun size!20226 (List!25995) Int)

(assert (=> b!2214463 (= res!951657 (< (+ 1 i!1797) (size!20226 l!6601)))))

(declare-fun e!1414252 () Bool)

(declare-fun tp!688362 () Bool)

(declare-fun b!2214464 () Bool)

(declare-fun e!1414262 () Bool)

(assert (=> b!2214464 (= e!1414252 (and (inv!21 (value!131720 (h!31312 l!6601))) e!1414262 tp!688362))))

(declare-fun e!1414261 () Bool)

(assert (=> b!2214465 (= e!1414261 (and tp!688360 tp!688354))))

(declare-fun tp!688363 () Bool)

(declare-fun b!2214466 () Bool)

(declare-fun inv!35109 (String!28231) Bool)

(declare-fun inv!35113 (TokenValueInjection!8206) Bool)

(assert (=> b!2214466 (= e!1414262 (and tp!688363 (inv!35109 (tag!4665 (rule!6475 (h!31312 l!6601)))) (inv!35113 (transformation!4175 (rule!6475 (h!31312 l!6601)))) e!1414261))))

(declare-fun tp!688364 () Bool)

(declare-fun b!2214467 () Bool)

(assert (=> b!2214467 (= e!1414256 (and (inv!35112 (h!31312 l!6601)) e!1414252 tp!688364))))

(declare-fun tp!688357 () Bool)

(declare-fun b!2214468 () Bool)

(assert (=> b!2214468 (= e!1414257 (and tp!688357 (inv!35109 (tag!4665 (rule!6475 t1!61))) (inv!35113 (transformation!4175 (rule!6475 t1!61))) e!1414267))))

(declare-fun e!1414266 () Bool)

(assert (=> b!2214469 (= e!1414266 (and tp!688353 tp!688351))))

(declare-fun tp!688359 () Bool)

(declare-fun b!2214470 () Bool)

(assert (=> b!2214470 (= e!1414264 (and tp!688359 (inv!35109 (tag!4665 (h!31313 rules!4462))) (inv!35113 (transformation!4175 (h!31313 rules!4462))) e!1414266))))

(assert (= (and start!215820 res!951655) b!2214458))

(assert (= (and b!2214458 res!951656) b!2214461))

(assert (= (and b!2214461 res!951658) b!2214463))

(assert (= (and b!2214463 res!951657) b!2214457))

(assert (= (and b!2214457 res!951659) b!2214456))

(assert (= b!2214470 b!2214469))

(assert (= b!2214459 b!2214470))

(assert (= (and start!215820 ((_ is Cons!25912) rules!4462)) b!2214459))

(assert (= b!2214466 b!2214465))

(assert (= b!2214464 b!2214466))

(assert (= b!2214467 b!2214464))

(assert (= (and start!215820 ((_ is Cons!25911) l!6601)) b!2214467))

(assert (= b!2214468 b!2214460))

(assert (= b!2214462 b!2214468))

(assert (= start!215820 b!2214462))

(declare-fun m!2656563 () Bool)

(assert (=> b!2214470 m!2656563))

(declare-fun m!2656565 () Bool)

(assert (=> b!2214470 m!2656565))

(declare-fun m!2656567 () Bool)

(assert (=> b!2214458 m!2656567))

(declare-fun m!2656569 () Bool)

(assert (=> b!2214468 m!2656569))

(declare-fun m!2656571 () Bool)

(assert (=> b!2214468 m!2656571))

(declare-fun m!2656573 () Bool)

(assert (=> b!2214463 m!2656573))

(declare-fun m!2656575 () Bool)

(assert (=> b!2214457 m!2656575))

(declare-fun m!2656577 () Bool)

(assert (=> b!2214462 m!2656577))

(declare-fun m!2656579 () Bool)

(assert (=> start!215820 m!2656579))

(declare-fun m!2656581 () Bool)

(assert (=> b!2214466 m!2656581))

(declare-fun m!2656583 () Bool)

(assert (=> b!2214466 m!2656583))

(declare-fun m!2656585 () Bool)

(assert (=> b!2214456 m!2656585))

(declare-fun m!2656587 () Bool)

(assert (=> b!2214464 m!2656587))

(declare-fun m!2656589 () Bool)

(assert (=> b!2214467 m!2656589))

(check-sat b_and!173657 (not b!2214457) b_and!173651 (not b!2214468) b_and!173659 b_and!173653 (not b!2214470) (not b!2214456) (not b_next!64697) (not b!2214458) (not b_next!64699) b_and!173661 (not b_next!64687) b_and!173663 (not b_next!64695) (not b!2214462) b_and!173655 (not b!2214459) (not b_next!64691) (not b_next!64689) (not b!2214464) (not b!2214467) (not start!215820) (not b!2214463) (not b_next!64693) (not b!2214466))
(check-sat (not b_next!64699) b_and!173655 b_and!173657 b_and!173651 b_and!173659 b_and!173653 (not b_next!64693) (not b_next!64697) b_and!173661 (not b_next!64687) b_and!173663 (not b_next!64695) (not b_next!64691) (not b_next!64689))
