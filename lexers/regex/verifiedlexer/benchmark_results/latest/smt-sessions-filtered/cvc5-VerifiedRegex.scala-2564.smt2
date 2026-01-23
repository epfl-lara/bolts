; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137522 () Bool)

(assert start!137522)

(declare-fun res!664468 () Bool)

(declare-fun e!937906 () Bool)

(assert (=> start!137522 (=> (not res!664468) (not e!937906))))

(declare-datatypes ((List!15421 0))(
  ( (Nil!15355) (Cons!15355 (h!20756 (_ BitVec 16)) (t!135340 List!15421)) )
))
(declare-datatypes ((TokenValue!2816 0))(
  ( (FloatLiteralValue!5632 (text!20157 List!15421)) (TokenValueExt!2815 (__x!9422 Int)) (Broken!14080 (value!87314 List!15421)) (Object!2881) (End!2816) (Def!2816) (Underscore!2816) (Match!2816) (Else!2816) (Error!2816) (Case!2816) (If!2816) (Extends!2816) (Abstract!2816) (Class!2816) (Val!2816) (DelimiterValue!5632 (del!2876 List!15421)) (KeywordValue!2822 (value!87315 List!15421)) (CommentValue!5632 (value!87316 List!15421)) (WhitespaceValue!5632 (value!87317 List!15421)) (IndentationValue!2816 (value!87318 List!15421)) (String!18337) (Int32!2816) (Broken!14081 (value!87319 List!15421)) (Boolean!2817) (Unit!25087) (OperatorValue!2819 (op!2876 List!15421)) (IdentifierValue!5632 (value!87320 List!15421)) (IdentifierValue!5633 (value!87321 List!15421)) (WhitespaceValue!5633 (value!87322 List!15421)) (True!5632) (False!5632) (Broken!14082 (value!87323 List!15421)) (Broken!14083 (value!87324 List!15421)) (True!5633) (RightBrace!2816) (RightBracket!2816) (Colon!2816) (Null!2816) (Comma!2816) (LeftBracket!2816) (False!5633) (LeftBrace!2816) (ImaginaryLiteralValue!2816 (text!20158 List!15421)) (StringLiteralValue!8448 (value!87325 List!15421)) (EOFValue!2816 (value!87326 List!15421)) (IdentValue!2816 (value!87327 List!15421)) (DelimiterValue!5633 (value!87328 List!15421)) (DedentValue!2816 (value!87329 List!15421)) (NewLineValue!2816 (value!87330 List!15421)) (IntegerValue!8448 (value!87331 (_ BitVec 32)) (text!20159 List!15421)) (IntegerValue!8449 (value!87332 Int) (text!20160 List!15421)) (Times!2816) (Or!2816) (Equal!2816) (Minus!2816) (Broken!14084 (value!87333 List!15421)) (And!2816) (Div!2816) (LessEqual!2816) (Mod!2816) (Concat!6856) (Not!2816) (Plus!2816) (SpaceValue!2816 (value!87334 List!15421)) (IntegerValue!8450 (value!87335 Int) (text!20161 List!15421)) (StringLiteralValue!8449 (text!20162 List!15421)) (FloatLiteralValue!5633 (text!20163 List!15421)) (BytesLiteralValue!2816 (value!87336 List!15421)) (CommentValue!5633 (value!87337 List!15421)) (StringLiteralValue!8450 (value!87338 List!15421)) (ErrorTokenValue!2816 (msg!2877 List!15421)) )
))
(declare-datatypes ((C!8258 0))(
  ( (C!8259 (val!4699 Int)) )
))
(declare-datatypes ((Regex!4040 0))(
  ( (ElementMatch!4040 (c!242140 C!8258)) (Concat!6857 (regOne!8592 Regex!4040) (regTwo!8592 Regex!4040)) (EmptyExpr!4040) (Star!4040 (reg!4369 Regex!4040)) (EmptyLang!4040) (Union!4040 (regOne!8593 Regex!4040) (regTwo!8593 Regex!4040)) )
))
(declare-datatypes ((String!18338 0))(
  ( (String!18339 (value!87339 String)) )
))
(declare-datatypes ((List!15422 0))(
  ( (Nil!15356) (Cons!15356 (h!20757 C!8258) (t!135341 List!15422)) )
))
(declare-datatypes ((IArray!10477 0))(
  ( (IArray!10478 (innerList!5296 List!15422)) )
))
(declare-datatypes ((Conc!5236 0))(
  ( (Node!5236 (left!13006 Conc!5236) (right!13336 Conc!5236) (csize!10702 Int) (cheight!5447 Int)) (Leaf!7801 (xs!7991 IArray!10477) (csize!10703 Int)) (Empty!5236) )
))
(declare-datatypes ((BalanceConc!10412 0))(
  ( (BalanceConc!10413 (c!242141 Conc!5236)) )
))
(declare-datatypes ((TokenValueInjection!5292 0))(
  ( (TokenValueInjection!5293 (toValue!4045 Int) (toChars!3904 Int)) )
))
(declare-datatypes ((Rule!5252 0))(
  ( (Rule!5253 (regex!2726 Regex!4040) (tag!2990 String!18338) (isSeparator!2726 Bool) (transformation!2726 TokenValueInjection!5292)) )
))
(declare-datatypes ((Token!5114 0))(
  ( (Token!5115 (value!87340 TokenValue!2816) (rule!4503 Rule!5252) (size!12509 Int) (originalCharacters!3588 List!15422)) )
))
(declare-datatypes ((List!15423 0))(
  ( (Nil!15357) (Cons!15357 (h!20758 Token!5114) (t!135342 List!15423)) )
))
(declare-datatypes ((IArray!10479 0))(
  ( (IArray!10480 (innerList!5297 List!15423)) )
))
(declare-datatypes ((Conc!5237 0))(
  ( (Node!5237 (left!13007 Conc!5237) (right!13337 Conc!5237) (csize!10704 Int) (cheight!5448 Int)) (Leaf!7802 (xs!7992 IArray!10479) (csize!10705 Int)) (Empty!5237) )
))
(declare-datatypes ((BalanceConc!10414 0))(
  ( (BalanceConc!10415 (c!242142 Conc!5237)) )
))
(declare-datatypes ((List!15424 0))(
  ( (Nil!15358) (Cons!15358 (h!20759 Rule!5252) (t!135343 List!15424)) )
))
(declare-datatypes ((PrintableTokens!1150 0))(
  ( (PrintableTokens!1151 (rules!11769 List!15424) (tokens!2135 BalanceConc!10414)) )
))
(declare-fun thiss!9992 () PrintableTokens!1150)

(declare-datatypes ((LexerInterface!2382 0))(
  ( (LexerInterfaceExt!2379 (__x!9423 Int)) (Lexer!2380) )
))
(declare-fun rulesInvariant!2171 (LexerInterface!2382 List!15424) Bool)

(assert (=> start!137522 (= res!664468 (rulesInvariant!2171 Lexer!2380 (rules!11769 thiss!9992)))))

(assert (=> start!137522 e!937906))

(declare-fun e!937905 () Bool)

(declare-fun inv!20547 (PrintableTokens!1150) Bool)

(assert (=> start!137522 (and (inv!20547 thiss!9992) e!937905)))

(declare-fun b!1469170 () Bool)

(assert (=> b!1469170 (= e!937906 false)))

(declare-fun lt!511224 () Bool)

(declare-fun rulesProduceEachTokenIndividually!885 (LexerInterface!2382 List!15424 BalanceConc!10414) Bool)

(assert (=> b!1469170 (= lt!511224 (rulesProduceEachTokenIndividually!885 Lexer!2380 (rules!11769 thiss!9992) (tokens!2135 thiss!9992)))))

(declare-fun b!1469172 () Bool)

(declare-fun e!937907 () Bool)

(declare-fun tp!414084 () Bool)

(declare-fun inv!20548 (Conc!5237) Bool)

(assert (=> b!1469172 (= e!937907 (and (inv!20548 (c!242142 (tokens!2135 thiss!9992))) tp!414084))))

(declare-fun b!1469171 () Bool)

(declare-fun tp!414083 () Bool)

(declare-fun inv!20549 (BalanceConc!10414) Bool)

(assert (=> b!1469171 (= e!937905 (and tp!414083 (inv!20549 (tokens!2135 thiss!9992)) e!937907))))

(assert (= (and start!137522 res!664468) b!1469170))

(assert (= b!1469171 b!1469172))

(assert (= start!137522 b!1469171))

(declare-fun m!1713697 () Bool)

(assert (=> start!137522 m!1713697))

(declare-fun m!1713699 () Bool)

(assert (=> start!137522 m!1713699))

(declare-fun m!1713701 () Bool)

(assert (=> b!1469170 m!1713701))

(declare-fun m!1713703 () Bool)

(assert (=> b!1469172 m!1713703))

(declare-fun m!1713705 () Bool)

(assert (=> b!1469171 m!1713705))

(push 1)

(assert (not start!137522))

(assert (not b!1469170))

(assert (not b!1469171))

(assert (not b!1469172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

