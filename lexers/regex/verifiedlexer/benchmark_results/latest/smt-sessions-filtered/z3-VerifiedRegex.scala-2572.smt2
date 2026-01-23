; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137830 () Bool)

(assert start!137830)

(declare-fun b!1471410 () Bool)

(declare-fun b_free!37215 () Bool)

(declare-fun b_next!37919 () Bool)

(assert (=> b!1471410 (= b_free!37215 (not b_next!37919))))

(declare-fun tp!415442 () Bool)

(declare-fun b_and!100985 () Bool)

(assert (=> b!1471410 (= tp!415442 b_and!100985)))

(declare-fun b_free!37217 () Bool)

(declare-fun b_next!37921 () Bool)

(assert (=> b!1471410 (= b_free!37217 (not b_next!37921))))

(declare-fun tp!415441 () Bool)

(declare-fun b_and!100987 () Bool)

(assert (=> b!1471410 (= tp!415441 b_and!100987)))

(declare-fun b!1471423 () Bool)

(declare-fun b_free!37219 () Bool)

(declare-fun b_next!37923 () Bool)

(assert (=> b!1471423 (= b_free!37219 (not b_next!37923))))

(declare-fun tp!415449 () Bool)

(declare-fun b_and!100989 () Bool)

(assert (=> b!1471423 (= tp!415449 b_and!100989)))

(declare-fun b_free!37221 () Bool)

(declare-fun b_next!37925 () Bool)

(assert (=> b!1471423 (= b_free!37221 (not b_next!37925))))

(declare-fun tp!415438 () Bool)

(declare-fun b_and!100991 () Bool)

(assert (=> b!1471423 (= tp!415438 b_and!100991)))

(declare-fun b!1471414 () Bool)

(declare-fun b_free!37223 () Bool)

(declare-fun b_next!37927 () Bool)

(assert (=> b!1471414 (= b_free!37223 (not b_next!37927))))

(declare-fun tp!415444 () Bool)

(declare-fun b_and!100993 () Bool)

(assert (=> b!1471414 (= tp!415444 b_and!100993)))

(declare-fun b_free!37225 () Bool)

(declare-fun b_next!37929 () Bool)

(assert (=> b!1471414 (= b_free!37225 (not b_next!37929))))

(declare-fun tp!415447 () Bool)

(declare-fun b_and!100995 () Bool)

(assert (=> b!1471414 (= tp!415447 b_and!100995)))

(declare-fun e!939638 () Bool)

(assert (=> b!1471410 (= e!939638 (and tp!415442 tp!415441))))

(declare-fun e!939643 () Bool)

(declare-datatypes ((List!15495 0))(
  ( (Nil!15429) (Cons!15429 (h!20830 (_ BitVec 16)) (t!135748 List!15495)) )
))
(declare-datatypes ((TokenValue!2833 0))(
  ( (FloatLiteralValue!5666 (text!20276 List!15495)) (TokenValueExt!2832 (__x!9456 Int)) (Broken!14165 (value!87797 List!15495)) (Object!2898) (End!2833) (Def!2833) (Underscore!2833) (Match!2833) (Else!2833) (Error!2833) (Case!2833) (If!2833) (Extends!2833) (Abstract!2833) (Class!2833) (Val!2833) (DelimiterValue!5666 (del!2893 List!15495)) (KeywordValue!2839 (value!87798 List!15495)) (CommentValue!5666 (value!87799 List!15495)) (WhitespaceValue!5666 (value!87800 List!15495)) (IndentationValue!2833 (value!87801 List!15495)) (String!18420) (Int32!2833) (Broken!14166 (value!87802 List!15495)) (Boolean!2834) (Unit!25120) (OperatorValue!2836 (op!2893 List!15495)) (IdentifierValue!5666 (value!87803 List!15495)) (IdentifierValue!5667 (value!87804 List!15495)) (WhitespaceValue!5667 (value!87805 List!15495)) (True!5666) (False!5666) (Broken!14167 (value!87806 List!15495)) (Broken!14168 (value!87807 List!15495)) (True!5667) (RightBrace!2833) (RightBracket!2833) (Colon!2833) (Null!2833) (Comma!2833) (LeftBracket!2833) (False!5667) (LeftBrace!2833) (ImaginaryLiteralValue!2833 (text!20277 List!15495)) (StringLiteralValue!8499 (value!87808 List!15495)) (EOFValue!2833 (value!87809 List!15495)) (IdentValue!2833 (value!87810 List!15495)) (DelimiterValue!5667 (value!87811 List!15495)) (DedentValue!2833 (value!87812 List!15495)) (NewLineValue!2833 (value!87813 List!15495)) (IntegerValue!8499 (value!87814 (_ BitVec 32)) (text!20278 List!15495)) (IntegerValue!8500 (value!87815 Int) (text!20279 List!15495)) (Times!2833) (Or!2833) (Equal!2833) (Minus!2833) (Broken!14169 (value!87816 List!15495)) (And!2833) (Div!2833) (LessEqual!2833) (Mod!2833) (Concat!6890) (Not!2833) (Plus!2833) (SpaceValue!2833 (value!87817 List!15495)) (IntegerValue!8501 (value!87818 Int) (text!20280 List!15495)) (StringLiteralValue!8500 (text!20281 List!15495)) (FloatLiteralValue!5667 (text!20282 List!15495)) (BytesLiteralValue!2833 (value!87819 List!15495)) (CommentValue!5667 (value!87820 List!15495)) (StringLiteralValue!8501 (value!87821 List!15495)) (ErrorTokenValue!2833 (msg!2894 List!15495)) )
))
(declare-datatypes ((C!8292 0))(
  ( (C!8293 (val!4716 Int)) )
))
(declare-datatypes ((Regex!4057 0))(
  ( (ElementMatch!4057 (c!242284 C!8292)) (Concat!6891 (regOne!8626 Regex!4057) (regTwo!8626 Regex!4057)) (EmptyExpr!4057) (Star!4057 (reg!4386 Regex!4057)) (EmptyLang!4057) (Union!4057 (regOne!8627 Regex!4057) (regTwo!8627 Regex!4057)) )
))
(declare-datatypes ((String!18421 0))(
  ( (String!18422 (value!87822 String)) )
))
(declare-datatypes ((List!15496 0))(
  ( (Nil!15430) (Cons!15430 (h!20831 C!8292) (t!135749 List!15496)) )
))
(declare-datatypes ((IArray!10531 0))(
  ( (IArray!10532 (innerList!5323 List!15496)) )
))
(declare-datatypes ((Conc!5263 0))(
  ( (Node!5263 (left!13057 Conc!5263) (right!13387 Conc!5263) (csize!10756 Int) (cheight!5474 Int)) (Leaf!7836 (xs!8018 IArray!10531) (csize!10757 Int)) (Empty!5263) )
))
(declare-datatypes ((BalanceConc!10466 0))(
  ( (BalanceConc!10467 (c!242285 Conc!5263)) )
))
(declare-datatypes ((TokenValueInjection!5326 0))(
  ( (TokenValueInjection!5327 (toValue!4070 Int) (toChars!3929 Int)) )
))
(declare-datatypes ((Rule!5286 0))(
  ( (Rule!5287 (regex!2743 Regex!4057) (tag!3007 String!18421) (isSeparator!2743 Bool) (transformation!2743 TokenValueInjection!5326)) )
))
(declare-datatypes ((Token!5148 0))(
  ( (Token!5149 (value!87823 TokenValue!2833) (rule!4520 Rule!5286) (size!12538 Int) (originalCharacters!3605 List!15496)) )
))
(declare-datatypes ((List!15497 0))(
  ( (Nil!15431) (Cons!15431 (h!20832 Token!5148) (t!135750 List!15497)) )
))
(declare-fun l1!3136 () List!15497)

(declare-fun b!1471411 () Bool)

(declare-fun tp!415445 () Bool)

(declare-fun inv!20636 (String!18421) Bool)

(declare-fun inv!20639 (TokenValueInjection!5326) Bool)

(assert (=> b!1471411 (= e!939643 (and tp!415445 (inv!20636 (tag!3007 (rule!4520 (h!20832 l1!3136)))) (inv!20639 (transformation!2743 (rule!4520 (h!20832 l1!3136)))) e!939638))))

(declare-fun b!1471412 () Bool)

(declare-fun e!939629 () Bool)

(declare-fun e!939639 () Bool)

(declare-fun tp!415446 () Bool)

(assert (=> b!1471412 (= e!939629 (and e!939639 tp!415446))))

(declare-fun b!1471413 () Bool)

(declare-fun e!939640 () Bool)

(assert (=> b!1471413 (= e!939640 false)))

(declare-fun lt!511467 () Bool)

(declare-fun contains!2919 (List!15497 Token!5148) Bool)

(declare-fun last!301 (List!15497) Token!5148)

(assert (=> b!1471413 (= lt!511467 (contains!2919 l1!3136 (last!301 l1!3136)))))

(declare-fun e!939644 () Bool)

(assert (=> b!1471414 (= e!939644 (and tp!415444 tp!415447))))

(declare-fun res!665130 () Bool)

(assert (=> start!137830 (=> (not res!665130) (not e!939640))))

(declare-datatypes ((LexerInterface!2399 0))(
  ( (LexerInterfaceExt!2396 (__x!9457 Int)) (Lexer!2397) )
))
(declare-fun thiss!27374 () LexerInterface!2399)

(get-info :version)

(assert (=> start!137830 (= res!665130 ((_ is Lexer!2397) thiss!27374))))

(assert (=> start!137830 e!939640))

(assert (=> start!137830 true))

(assert (=> start!137830 e!939629))

(declare-fun e!939642 () Bool)

(assert (=> start!137830 e!939642))

(declare-fun e!939632 () Bool)

(assert (=> start!137830 e!939632))

(declare-fun e!939634 () Bool)

(declare-fun l2!3105 () List!15497)

(declare-fun tp!415437 () Bool)

(declare-fun b!1471415 () Bool)

(assert (=> b!1471415 (= e!939634 (and tp!415437 (inv!20636 (tag!3007 (rule!4520 (h!20832 l2!3105)))) (inv!20639 (transformation!2743 (rule!4520 (h!20832 l2!3105)))) e!939644))))

(declare-fun b!1471416 () Bool)

(declare-fun res!665132 () Bool)

(assert (=> b!1471416 (=> (not res!665132) (not e!939640))))

(declare-datatypes ((List!15498 0))(
  ( (Nil!15432) (Cons!15432 (h!20833 Rule!5286) (t!135751 List!15498)) )
))
(declare-fun rules!4290 () List!15498)

(declare-fun rulesProduceEachTokenIndividuallyList!766 (LexerInterface!2399 List!15498 List!15497) Bool)

(assert (=> b!1471416 (= res!665132 (rulesProduceEachTokenIndividuallyList!766 thiss!27374 rules!4290 l2!3105))))

(declare-fun e!939630 () Bool)

(declare-fun b!1471417 () Bool)

(declare-fun tp!415448 () Bool)

(assert (=> b!1471417 (= e!939639 (and tp!415448 (inv!20636 (tag!3007 (h!20833 rules!4290))) (inv!20639 (transformation!2743 (h!20833 rules!4290))) e!939630))))

(declare-fun b!1471418 () Bool)

(declare-fun res!665127 () Bool)

(assert (=> b!1471418 (=> (not res!665127) (not e!939640))))

(declare-fun rulesInvariant!2188 (LexerInterface!2399 List!15498) Bool)

(assert (=> b!1471418 (= res!665127 (rulesInvariant!2188 thiss!27374 rules!4290))))

(declare-fun b!1471419 () Bool)

(declare-fun res!665135 () Bool)

(assert (=> b!1471419 (=> (not res!665135) (not e!939640))))

(declare-fun isEmpty!9636 (List!15498) Bool)

(assert (=> b!1471419 (= res!665135 (not (isEmpty!9636 rules!4290)))))

(declare-fun b!1471420 () Bool)

(declare-fun res!665131 () Bool)

(assert (=> b!1471420 (=> (not res!665131) (not e!939640))))

(assert (=> b!1471420 (= res!665131 (rulesProduceEachTokenIndividuallyList!766 thiss!27374 rules!4290 l1!3136))))

(declare-fun e!939631 () Bool)

(declare-fun tp!415443 () Bool)

(declare-fun b!1471421 () Bool)

(declare-fun inv!21 (TokenValue!2833) Bool)

(assert (=> b!1471421 (= e!939631 (and (inv!21 (value!87823 (h!20832 l2!3105))) e!939634 tp!415443))))

(declare-fun b!1471422 () Bool)

(declare-fun res!665134 () Bool)

(assert (=> b!1471422 (=> (not res!665134) (not e!939640))))

(declare-fun isEmpty!9637 (List!15497) Bool)

(assert (=> b!1471422 (= res!665134 (not (isEmpty!9637 l1!3136)))))

(assert (=> b!1471423 (= e!939630 (and tp!415449 tp!415438))))

(declare-fun b!1471424 () Bool)

(declare-fun res!665133 () Bool)

(assert (=> b!1471424 (=> (not res!665133) (not e!939640))))

(assert (=> b!1471424 (= res!665133 (not (isEmpty!9637 l2!3105)))))

(declare-fun e!939628 () Bool)

(declare-fun tp!415439 () Bool)

(declare-fun b!1471425 () Bool)

(declare-fun inv!20640 (Token!5148) Bool)

(assert (=> b!1471425 (= e!939642 (and (inv!20640 (h!20832 l1!3136)) e!939628 tp!415439))))

(declare-fun b!1471426 () Bool)

(declare-fun res!665129 () Bool)

(assert (=> b!1471426 (=> (not res!665129) (not e!939640))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!259 (LexerInterface!2399 List!15497 List!15498) Bool)

(assert (=> b!1471426 (= res!665129 (tokensListTwoByTwoPredicateSeparableList!259 thiss!27374 l2!3105 rules!4290))))

(declare-fun tp!415450 () Bool)

(declare-fun b!1471427 () Bool)

(assert (=> b!1471427 (= e!939628 (and (inv!21 (value!87823 (h!20832 l1!3136))) e!939643 tp!415450))))

(declare-fun b!1471428 () Bool)

(declare-fun res!665128 () Bool)

(assert (=> b!1471428 (=> (not res!665128) (not e!939640))))

(assert (=> b!1471428 (= res!665128 (tokensListTwoByTwoPredicateSeparableList!259 thiss!27374 l1!3136 rules!4290))))

(declare-fun tp!415440 () Bool)

(declare-fun b!1471429 () Bool)

(assert (=> b!1471429 (= e!939632 (and (inv!20640 (h!20832 l2!3105)) e!939631 tp!415440))))

(assert (= (and start!137830 res!665130) b!1471419))

(assert (= (and b!1471419 res!665135) b!1471418))

(assert (= (and b!1471418 res!665127) b!1471420))

(assert (= (and b!1471420 res!665131) b!1471416))

(assert (= (and b!1471416 res!665132) b!1471428))

(assert (= (and b!1471428 res!665128) b!1471426))

(assert (= (and b!1471426 res!665129) b!1471422))

(assert (= (and b!1471422 res!665134) b!1471424))

(assert (= (and b!1471424 res!665133) b!1471413))

(assert (= b!1471417 b!1471423))

(assert (= b!1471412 b!1471417))

(assert (= (and start!137830 ((_ is Cons!15432) rules!4290)) b!1471412))

(assert (= b!1471411 b!1471410))

(assert (= b!1471427 b!1471411))

(assert (= b!1471425 b!1471427))

(assert (= (and start!137830 ((_ is Cons!15431) l1!3136)) b!1471425))

(assert (= b!1471415 b!1471414))

(assert (= b!1471421 b!1471415))

(assert (= b!1471429 b!1471421))

(assert (= (and start!137830 ((_ is Cons!15431) l2!3105)) b!1471429))

(declare-fun m!1715561 () Bool)

(assert (=> b!1471427 m!1715561))

(declare-fun m!1715563 () Bool)

(assert (=> b!1471418 m!1715563))

(declare-fun m!1715565 () Bool)

(assert (=> b!1471413 m!1715565))

(assert (=> b!1471413 m!1715565))

(declare-fun m!1715567 () Bool)

(assert (=> b!1471413 m!1715567))

(declare-fun m!1715569 () Bool)

(assert (=> b!1471416 m!1715569))

(declare-fun m!1715571 () Bool)

(assert (=> b!1471422 m!1715571))

(declare-fun m!1715573 () Bool)

(assert (=> b!1471424 m!1715573))

(declare-fun m!1715575 () Bool)

(assert (=> b!1471419 m!1715575))

(declare-fun m!1715577 () Bool)

(assert (=> b!1471411 m!1715577))

(declare-fun m!1715579 () Bool)

(assert (=> b!1471411 m!1715579))

(declare-fun m!1715581 () Bool)

(assert (=> b!1471425 m!1715581))

(declare-fun m!1715583 () Bool)

(assert (=> b!1471421 m!1715583))

(declare-fun m!1715585 () Bool)

(assert (=> b!1471420 m!1715585))

(declare-fun m!1715587 () Bool)

(assert (=> b!1471415 m!1715587))

(declare-fun m!1715589 () Bool)

(assert (=> b!1471415 m!1715589))

(declare-fun m!1715591 () Bool)

(assert (=> b!1471417 m!1715591))

(declare-fun m!1715593 () Bool)

(assert (=> b!1471417 m!1715593))

(declare-fun m!1715595 () Bool)

(assert (=> b!1471426 m!1715595))

(declare-fun m!1715597 () Bool)

(assert (=> b!1471428 m!1715597))

(declare-fun m!1715599 () Bool)

(assert (=> b!1471429 m!1715599))

(check-sat (not b!1471422) b_and!100987 (not b!1471427) (not b!1471415) (not b_next!37923) (not b!1471420) (not b!1471425) (not b!1471426) (not b_next!37925) b_and!100991 (not b!1471413) b_and!100989 b_and!100995 (not b_next!37927) (not b!1471424) (not b!1471421) (not b!1471416) (not b!1471429) (not b_next!37919) (not b!1471419) b_and!100993 (not b!1471411) (not b!1471417) (not b_next!37929) (not b_next!37921) b_and!100985 (not b!1471428) (not b!1471412) (not b!1471418))
(check-sat b_and!100987 (not b_next!37923) (not b_next!37919) b_and!100993 (not b_next!37925) b_and!100991 b_and!100989 b_and!100995 (not b_next!37927) (not b_next!37929) (not b_next!37921) b_and!100985)
