; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14634 () Bool)

(assert start!14634)

(declare-fun b!139490 () Bool)

(declare-fun b_free!4399 () Bool)

(declare-fun b_next!4399 () Bool)

(assert (=> b!139490 (= b_free!4399 (not b_next!4399))))

(declare-fun tp!73336 () Bool)

(declare-fun b_and!6679 () Bool)

(assert (=> b!139490 (= tp!73336 b_and!6679)))

(declare-fun b_free!4401 () Bool)

(declare-fun b_next!4401 () Bool)

(assert (=> b!139490 (= b_free!4401 (not b_next!4401))))

(declare-fun tp!73327 () Bool)

(declare-fun b_and!6681 () Bool)

(assert (=> b!139490 (= tp!73327 b_and!6681)))

(declare-fun b_free!4403 () Bool)

(declare-fun b_next!4403 () Bool)

(assert (=> start!14634 (= b_free!4403 (not b_next!4403))))

(declare-fun tp!73325 () Bool)

(declare-fun b_and!6683 () Bool)

(assert (=> start!14634 (= tp!73325 b_and!6683)))

(declare-fun b!139494 () Bool)

(declare-fun b_free!4405 () Bool)

(declare-fun b_next!4405 () Bool)

(assert (=> b!139494 (= b_free!4405 (not b_next!4405))))

(declare-fun tp!73335 () Bool)

(declare-fun b_and!6685 () Bool)

(assert (=> b!139494 (= tp!73335 b_and!6685)))

(declare-fun b_free!4407 () Bool)

(declare-fun b_next!4407 () Bool)

(assert (=> b!139494 (= b_free!4407 (not b_next!4407))))

(declare-fun tp!73338 () Bool)

(declare-fun b_and!6687 () Bool)

(assert (=> b!139494 (= tp!73338 b_and!6687)))

(declare-fun b!139500 () Bool)

(declare-fun b_free!4409 () Bool)

(declare-fun b_next!4409 () Bool)

(assert (=> b!139500 (= b_free!4409 (not b_next!4409))))

(declare-fun tp!73339 () Bool)

(declare-fun b_and!6689 () Bool)

(assert (=> b!139500 (= tp!73339 b_and!6689)))

(declare-fun b_free!4411 () Bool)

(declare-fun b_next!4411 () Bool)

(assert (=> b!139500 (= b_free!4411 (not b_next!4411))))

(declare-fun tp!73326 () Bool)

(declare-fun b_and!6691 () Bool)

(assert (=> b!139500 (= tp!73326 b_and!6691)))

(declare-fun e!81964 () Bool)

(assert (=> b!139490 (= e!81964 (and tp!73336 tp!73327))))

(declare-fun b!139491 () Bool)

(declare-fun e!81967 () Bool)

(declare-fun tp!73337 () Bool)

(declare-fun e!81959 () Bool)

(declare-datatypes ((List!2377 0))(
  ( (Nil!2367) (Cons!2367 (h!7764 (_ BitVec 16)) (t!23163 List!2377)) )
))
(declare-datatypes ((TokenValue!417 0))(
  ( (FloatLiteralValue!834 (text!3364 List!2377)) (TokenValueExt!416 (__x!2322 Int)) (Broken!2085 (value!15547 List!2377)) (Object!426) (End!417) (Def!417) (Underscore!417) (Match!417) (Else!417) (Error!417) (Case!417) (If!417) (Extends!417) (Abstract!417) (Class!417) (Val!417) (DelimiterValue!834 (del!477 List!2377)) (KeywordValue!423 (value!15548 List!2377)) (CommentValue!834 (value!15549 List!2377)) (WhitespaceValue!834 (value!15550 List!2377)) (IndentationValue!417 (value!15551 List!2377)) (String!3164) (Int32!417) (Broken!2086 (value!15552 List!2377)) (Boolean!418) (Unit!1801) (OperatorValue!420 (op!477 List!2377)) (IdentifierValue!834 (value!15553 List!2377)) (IdentifierValue!835 (value!15554 List!2377)) (WhitespaceValue!835 (value!15555 List!2377)) (True!834) (False!834) (Broken!2087 (value!15556 List!2377)) (Broken!2088 (value!15557 List!2377)) (True!835) (RightBrace!417) (RightBracket!417) (Colon!417) (Null!417) (Comma!417) (LeftBracket!417) (False!835) (LeftBrace!417) (ImaginaryLiteralValue!417 (text!3365 List!2377)) (StringLiteralValue!1251 (value!15558 List!2377)) (EOFValue!417 (value!15559 List!2377)) (IdentValue!417 (value!15560 List!2377)) (DelimiterValue!835 (value!15561 List!2377)) (DedentValue!417 (value!15562 List!2377)) (NewLineValue!417 (value!15563 List!2377)) (IntegerValue!1251 (value!15564 (_ BitVec 32)) (text!3366 List!2377)) (IntegerValue!1252 (value!15565 Int) (text!3367 List!2377)) (Times!417) (Or!417) (Equal!417) (Minus!417) (Broken!2089 (value!15566 List!2377)) (And!417) (Div!417) (LessEqual!417) (Mod!417) (Concat!1036) (Not!417) (Plus!417) (SpaceValue!417 (value!15567 List!2377)) (IntegerValue!1253 (value!15568 Int) (text!3368 List!2377)) (StringLiteralValue!1252 (text!3369 List!2377)) (FloatLiteralValue!835 (text!3370 List!2377)) (BytesLiteralValue!417 (value!15569 List!2377)) (CommentValue!835 (value!15570 List!2377)) (StringLiteralValue!1253 (value!15571 List!2377)) (ErrorTokenValue!417 (msg!478 List!2377)) )
))
(declare-datatypes ((C!2160 0))(
  ( (C!2161 (val!966 Int)) )
))
(declare-datatypes ((List!2378 0))(
  ( (Nil!2368) (Cons!2368 (h!7765 C!2160) (t!23164 List!2378)) )
))
(declare-datatypes ((IArray!1251 0))(
  ( (IArray!1252 (innerList!683 List!2378)) )
))
(declare-datatypes ((Conc!625 0))(
  ( (Node!625 (left!1809 Conc!625) (right!2139 Conc!625) (csize!1480 Int) (cheight!836 Int)) (Leaf!1162 (xs!3220 IArray!1251) (csize!1481 Int)) (Empty!625) )
))
(declare-datatypes ((BalanceConc!1258 0))(
  ( (BalanceConc!1259 (c!29168 Conc!625)) )
))
(declare-datatypes ((TokenValueInjection!606 0))(
  ( (TokenValueInjection!607 (toValue!1006 Int) (toChars!865 Int)) )
))
(declare-datatypes ((String!3165 0))(
  ( (String!3166 (value!15572 String)) )
))
(declare-datatypes ((Regex!619 0))(
  ( (ElementMatch!619 (c!29169 C!2160)) (Concat!1037 (regOne!1750 Regex!619) (regTwo!1750 Regex!619)) (EmptyExpr!619) (Star!619 (reg!948 Regex!619)) (EmptyLang!619) (Union!619 (regOne!1751 Regex!619) (regTwo!1751 Regex!619)) )
))
(declare-datatypes ((Rule!590 0))(
  ( (Rule!591 (regex!395 Regex!619) (tag!573 String!3165) (isSeparator!395 Bool) (transformation!395 TokenValueInjection!606)) )
))
(declare-datatypes ((Token!534 0))(
  ( (Token!535 (value!15573 TokenValue!417) (rule!902 Rule!590) (size!2087 Int) (originalCharacters!438 List!2378)) )
))
(declare-datatypes ((List!2379 0))(
  ( (Nil!2369) (Cons!2369 (h!7766 Token!534) (t!23165 List!2379)) )
))
(declare-fun l2!3099 () List!2379)

(declare-fun inv!21 (TokenValue!417) Bool)

(assert (=> b!139491 (= e!81967 (and (inv!21 (value!15573 (h!7766 l2!3099))) e!81959 tp!73337))))

(declare-fun tp!73329 () Bool)

(declare-fun b!139492 () Bool)

(declare-fun e!81954 () Bool)

(declare-fun l1!3130 () List!2379)

(declare-fun e!81965 () Bool)

(declare-fun inv!3114 (String!3165) Bool)

(declare-fun inv!3117 (TokenValueInjection!606) Bool)

(assert (=> b!139492 (= e!81965 (and tp!73329 (inv!3114 (tag!573 (rule!902 (h!7766 l1!3130)))) (inv!3117 (transformation!395 (rule!902 (h!7766 l1!3130)))) e!81954))))

(declare-fun tp!73332 () Bool)

(declare-fun e!81960 () Bool)

(declare-fun e!81969 () Bool)

(declare-fun b!139493 () Bool)

(declare-fun inv!3118 (Token!534) Bool)

(assert (=> b!139493 (= e!81969 (and (inv!3118 (h!7766 l1!3130)) e!81960 tp!73332))))

(assert (=> b!139494 (= e!81954 (and tp!73335 tp!73338))))

(declare-fun b!139495 () Bool)

(declare-fun tp!73333 () Bool)

(declare-datatypes ((List!2380 0))(
  ( (Nil!2370) (Cons!2370 (h!7767 Rule!590) (t!23166 List!2380)) )
))
(declare-fun rules!4268 () List!2380)

(declare-fun e!81962 () Bool)

(assert (=> b!139495 (= e!81962 (and tp!73333 (inv!3114 (tag!573 (h!7767 rules!4268))) (inv!3117 (transformation!395 (h!7767 rules!4268))) e!81964))))

(assert (=> start!14634 false))

(assert (=> start!14634 true))

(declare-fun e!81956 () Bool)

(assert (=> start!14634 e!81956))

(assert (=> start!14634 tp!73325))

(assert (=> start!14634 e!81969))

(declare-fun e!81955 () Bool)

(assert (=> start!14634 e!81955))

(declare-fun b!139496 () Bool)

(declare-fun tp!73334 () Bool)

(assert (=> b!139496 (= e!81960 (and (inv!21 (value!15573 (h!7766 l1!3130))) e!81965 tp!73334))))

(declare-fun b!139497 () Bool)

(declare-fun tp!73331 () Bool)

(assert (=> b!139497 (= e!81956 (and e!81962 tp!73331))))

(declare-fun tp!73330 () Bool)

(declare-fun b!139498 () Bool)

(assert (=> b!139498 (= e!81955 (and (inv!3118 (h!7766 l2!3099)) e!81967 tp!73330))))

(declare-fun e!81958 () Bool)

(declare-fun tp!73328 () Bool)

(declare-fun b!139499 () Bool)

(assert (=> b!139499 (= e!81959 (and tp!73328 (inv!3114 (tag!573 (rule!902 (h!7766 l2!3099)))) (inv!3117 (transformation!395 (rule!902 (h!7766 l2!3099)))) e!81958))))

(assert (=> b!139500 (= e!81958 (and tp!73339 tp!73326))))

(assert (= b!139495 b!139490))

(assert (= b!139497 b!139495))

(get-info :version)

(assert (= (and start!14634 ((_ is Cons!2370) rules!4268)) b!139497))

(assert (= b!139492 b!139494))

(assert (= b!139496 b!139492))

(assert (= b!139493 b!139496))

(assert (= (and start!14634 ((_ is Cons!2369) l1!3130)) b!139493))

(assert (= b!139499 b!139500))

(assert (= b!139491 b!139499))

(assert (= b!139498 b!139491))

(assert (= (and start!14634 ((_ is Cons!2369) l2!3099)) b!139498))

(declare-fun m!122987 () Bool)

(assert (=> b!139496 m!122987))

(declare-fun m!122989 () Bool)

(assert (=> b!139499 m!122989))

(declare-fun m!122991 () Bool)

(assert (=> b!139499 m!122991))

(declare-fun m!122993 () Bool)

(assert (=> b!139498 m!122993))

(declare-fun m!122995 () Bool)

(assert (=> b!139495 m!122995))

(declare-fun m!122997 () Bool)

(assert (=> b!139495 m!122997))

(declare-fun m!122999 () Bool)

(assert (=> b!139492 m!122999))

(declare-fun m!123001 () Bool)

(assert (=> b!139492 m!123001))

(declare-fun m!123003 () Bool)

(assert (=> b!139491 m!123003))

(declare-fun m!123005 () Bool)

(assert (=> b!139493 m!123005))

(check-sat (not b_next!4409) (not b!139495) (not b_next!4411) (not b_next!4399) (not b!139492) (not b_next!4403) (not b_next!4405) (not b!139493) b_and!6691 (not b_next!4407) (not b!139491) b_and!6689 (not b_next!4401) (not b!139497) b_and!6679 (not b!139499) (not b!139496) b_and!6681 b_and!6683 b_and!6685 (not b!139498) b_and!6687)
(check-sat (not b_next!4409) (not b_next!4411) (not b_next!4399) b_and!6689 (not b_next!4403) b_and!6681 (not b_next!4405) b_and!6687 b_and!6691 (not b_next!4407) (not b_next!4401) b_and!6679 b_and!6683 b_and!6685)
