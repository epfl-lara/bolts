; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104634 () Bool)

(assert start!104634)

(declare-fun b!1181318 () Bool)

(declare-fun b_free!28125 () Bool)

(declare-fun b_next!28829 () Bool)

(assert (=> b!1181318 (= b_free!28125 (not b_next!28829))))

(declare-fun tp!336460 () Bool)

(declare-fun b_and!81117 () Bool)

(assert (=> b!1181318 (= tp!336460 b_and!81117)))

(declare-fun b_free!28127 () Bool)

(declare-fun b_next!28831 () Bool)

(assert (=> b!1181318 (= b_free!28127 (not b_next!28831))))

(declare-fun tp!336465 () Bool)

(declare-fun b_and!81119 () Bool)

(assert (=> b!1181318 (= tp!336465 b_and!81119)))

(declare-fun b!1181327 () Bool)

(declare-fun b_free!28129 () Bool)

(declare-fun b_next!28833 () Bool)

(assert (=> b!1181327 (= b_free!28129 (not b_next!28833))))

(declare-fun tp!336464 () Bool)

(declare-fun b_and!81121 () Bool)

(assert (=> b!1181327 (= tp!336464 b_and!81121)))

(declare-fun b_free!28131 () Bool)

(declare-fun b_next!28835 () Bool)

(assert (=> b!1181327 (= b_free!28131 (not b_next!28835))))

(declare-fun tp!336459 () Bool)

(declare-fun b_and!81123 () Bool)

(assert (=> b!1181327 (= tp!336459 b_and!81123)))

(declare-fun b!1181315 () Bool)

(declare-fun res!533902 () Bool)

(declare-fun e!758236 () Bool)

(assert (=> b!1181315 (=> (not res!533902) (not e!758236))))

(declare-datatypes ((C!6952 0))(
  ( (C!6953 (val!3772 Int)) )
))
(declare-datatypes ((List!11776 0))(
  ( (Nil!11752) (Cons!11752 (h!17153 C!6952) (t!111446 List!11776)) )
))
(declare-datatypes ((IArray!7711 0))(
  ( (IArray!7712 (innerList!3913 List!11776)) )
))
(declare-datatypes ((Conc!3853 0))(
  ( (Node!3853 (left!10250 Conc!3853) (right!10580 Conc!3853) (csize!7936 Int) (cheight!4064 Int)) (Leaf!5907 (xs!6558 IArray!7711) (csize!7937 Int)) (Empty!3853) )
))
(declare-datatypes ((List!11777 0))(
  ( (Nil!11753) (Cons!11753 (h!17154 (_ BitVec 16)) (t!111447 List!11777)) )
))
(declare-datatypes ((BalanceConc!7728 0))(
  ( (BalanceConc!7729 (c!196792 Conc!3853)) )
))
(declare-datatypes ((TokenValue!2113 0))(
  ( (FloatLiteralValue!4226 (text!15236 List!11777)) (TokenValueExt!2112 (__x!7937 Int)) (Broken!10565 (value!66370 List!11777)) (Object!2136) (End!2113) (Def!2113) (Underscore!2113) (Match!2113) (Else!2113) (Error!2113) (Case!2113) (If!2113) (Extends!2113) (Abstract!2113) (Class!2113) (Val!2113) (DelimiterValue!4226 (del!2173 List!11777)) (KeywordValue!2119 (value!66371 List!11777)) (CommentValue!4226 (value!66372 List!11777)) (WhitespaceValue!4226 (value!66373 List!11777)) (IndentationValue!2113 (value!66374 List!11777)) (String!14232) (Int32!2113) (Broken!10566 (value!66375 List!11777)) (Boolean!2114) (Unit!18079) (OperatorValue!2116 (op!2173 List!11777)) (IdentifierValue!4226 (value!66376 List!11777)) (IdentifierValue!4227 (value!66377 List!11777)) (WhitespaceValue!4227 (value!66378 List!11777)) (True!4226) (False!4226) (Broken!10567 (value!66379 List!11777)) (Broken!10568 (value!66380 List!11777)) (True!4227) (RightBrace!2113) (RightBracket!2113) (Colon!2113) (Null!2113) (Comma!2113) (LeftBracket!2113) (False!4227) (LeftBrace!2113) (ImaginaryLiteralValue!2113 (text!15237 List!11777)) (StringLiteralValue!6339 (value!66381 List!11777)) (EOFValue!2113 (value!66382 List!11777)) (IdentValue!2113 (value!66383 List!11777)) (DelimiterValue!4227 (value!66384 List!11777)) (DedentValue!2113 (value!66385 List!11777)) (NewLineValue!2113 (value!66386 List!11777)) (IntegerValue!6339 (value!66387 (_ BitVec 32)) (text!15238 List!11777)) (IntegerValue!6340 (value!66388 Int) (text!15239 List!11777)) (Times!2113) (Or!2113) (Equal!2113) (Minus!2113) (Broken!10569 (value!66389 List!11777)) (And!2113) (Div!2113) (LessEqual!2113) (Mod!2113) (Concat!5430) (Not!2113) (Plus!2113) (SpaceValue!2113 (value!66390 List!11777)) (IntegerValue!6341 (value!66391 Int) (text!15240 List!11777)) (StringLiteralValue!6340 (text!15241 List!11777)) (FloatLiteralValue!4227 (text!15242 List!11777)) (BytesLiteralValue!2113 (value!66392 List!11777)) (CommentValue!4227 (value!66393 List!11777)) (StringLiteralValue!6341 (value!66394 List!11777)) (ErrorTokenValue!2113 (msg!2174 List!11777)) )
))
(declare-datatypes ((Regex!3317 0))(
  ( (ElementMatch!3317 (c!196793 C!6952)) (Concat!5431 (regOne!7146 Regex!3317) (regTwo!7146 Regex!3317)) (EmptyExpr!3317) (Star!3317 (reg!3646 Regex!3317)) (EmptyLang!3317) (Union!3317 (regOne!7147 Regex!3317) (regTwo!7147 Regex!3317)) )
))
(declare-datatypes ((String!14233 0))(
  ( (String!14234 (value!66395 String)) )
))
(declare-datatypes ((TokenValueInjection!3926 0))(
  ( (TokenValueInjection!3927 (toValue!3156 Int) (toChars!3015 Int)) )
))
(declare-datatypes ((Rule!3894 0))(
  ( (Rule!3895 (regex!2047 Regex!3317) (tag!2309 String!14233) (isSeparator!2047 Bool) (transformation!2047 TokenValueInjection!3926)) )
))
(declare-datatypes ((List!11778 0))(
  ( (Nil!11754) (Cons!11754 (h!17155 Rule!3894) (t!111448 List!11778)) )
))
(declare-fun rules!4386 () List!11778)

(declare-datatypes ((Token!3756 0))(
  ( (Token!3757 (value!66396 TokenValue!2113) (rule!3468 Rule!3894) (size!9299 Int) (originalCharacters!2601 List!11776)) )
))
(declare-datatypes ((List!11779 0))(
  ( (Nil!11755) (Cons!11755 (h!17156 Token!3756) (t!111449 List!11779)) )
))
(declare-fun l!6534 () List!11779)

(declare-datatypes ((LexerInterface!1742 0))(
  ( (LexerInterfaceExt!1739 (__x!7938 Int)) (Lexer!1740) )
))
(declare-fun thiss!27592 () LexerInterface!1742)

(declare-fun tokensListTwoByTwoPredicateSeparableList!136 (LexerInterface!1742 List!11779 List!11778) Bool)

(assert (=> b!1181315 (= res!533902 (tokensListTwoByTwoPredicateSeparableList!136 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1181316 () Bool)

(declare-fun e!758243 () Bool)

(declare-fun e!758238 () Bool)

(declare-fun tp!336462 () Bool)

(assert (=> b!1181316 (= e!758243 (and e!758238 tp!336462))))

(declare-fun res!533901 () Bool)

(assert (=> start!104634 (=> (not res!533901) (not e!758236))))

(get-info :version)

(assert (=> start!104634 (= res!533901 ((_ is Lexer!1740) thiss!27592))))

(assert (=> start!104634 e!758236))

(assert (=> start!104634 true))

(assert (=> start!104634 e!758243))

(declare-fun e!758239 () Bool)

(assert (=> start!104634 e!758239))

(declare-fun b!1181317 () Bool)

(declare-fun res!533900 () Bool)

(assert (=> b!1181317 (=> (not res!533900) (not e!758236))))

(declare-fun rulesInvariant!1616 (LexerInterface!1742 List!11778) Bool)

(assert (=> b!1181317 (= res!533900 (rulesInvariant!1616 thiss!27592 rules!4386))))

(declare-fun e!758234 () Bool)

(assert (=> b!1181318 (= e!758234 (and tp!336460 tp!336465))))

(declare-fun b!1181319 () Bool)

(declare-fun res!533899 () Bool)

(assert (=> b!1181319 (=> (not res!533899) (not e!758236))))

(declare-fun rulesProduceEachTokenIndividuallyList!608 (LexerInterface!1742 List!11778 List!11779) Bool)

(assert (=> b!1181319 (= res!533899 (rulesProduceEachTokenIndividuallyList!608 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1181320 () Bool)

(declare-fun res!533903 () Bool)

(assert (=> b!1181320 (=> (not res!533903) (not e!758236))))

(declare-fun isEmpty!7100 (List!11778) Bool)

(assert (=> b!1181320 (= res!533903 (not (isEmpty!7100 rules!4386)))))

(declare-fun b!1181321 () Bool)

(declare-fun res!533898 () Bool)

(assert (=> b!1181321 (=> (not res!533898) (not e!758236))))

(declare-fun i!1621 () Int)

(assert (=> b!1181321 (= res!533898 (and (not ((_ is Nil!11755) l!6534)) (<= i!1621 0)))))

(declare-fun b!1181322 () Bool)

(declare-fun e!758237 () Bool)

(declare-fun e!758241 () Bool)

(declare-fun tp!336461 () Bool)

(declare-fun inv!15574 (String!14233) Bool)

(declare-fun inv!15577 (TokenValueInjection!3926) Bool)

(assert (=> b!1181322 (= e!758237 (and tp!336461 (inv!15574 (tag!2309 (rule!3468 (h!17156 l!6534)))) (inv!15577 (transformation!2047 (rule!3468 (h!17156 l!6534)))) e!758241))))

(declare-fun b!1181323 () Bool)

(assert (=> b!1181323 (= e!758236 false)))

(declare-fun lt!406752 () List!11779)

(declare-fun drop!527 (List!11779 Int) List!11779)

(assert (=> b!1181323 (= lt!406752 (drop!527 l!6534 i!1621))))

(declare-fun tp!336463 () Bool)

(declare-fun e!758242 () Bool)

(declare-fun b!1181324 () Bool)

(declare-fun inv!15578 (Token!3756) Bool)

(assert (=> b!1181324 (= e!758239 (and (inv!15578 (h!17156 l!6534)) e!758242 tp!336463))))

(declare-fun tp!336466 () Bool)

(declare-fun b!1181325 () Bool)

(assert (=> b!1181325 (= e!758238 (and tp!336466 (inv!15574 (tag!2309 (h!17155 rules!4386))) (inv!15577 (transformation!2047 (h!17155 rules!4386))) e!758234))))

(declare-fun tp!336458 () Bool)

(declare-fun b!1181326 () Bool)

(declare-fun inv!21 (TokenValue!2113) Bool)

(assert (=> b!1181326 (= e!758242 (and (inv!21 (value!66396 (h!17156 l!6534))) e!758237 tp!336458))))

(assert (=> b!1181327 (= e!758241 (and tp!336464 tp!336459))))

(assert (= (and start!104634 res!533901) b!1181320))

(assert (= (and b!1181320 res!533903) b!1181317))

(assert (= (and b!1181317 res!533900) b!1181319))

(assert (= (and b!1181319 res!533899) b!1181315))

(assert (= (and b!1181315 res!533902) b!1181321))

(assert (= (and b!1181321 res!533898) b!1181323))

(assert (= b!1181325 b!1181318))

(assert (= b!1181316 b!1181325))

(assert (= (and start!104634 ((_ is Cons!11754) rules!4386)) b!1181316))

(assert (= b!1181322 b!1181327))

(assert (= b!1181326 b!1181322))

(assert (= b!1181324 b!1181326))

(assert (= (and start!104634 ((_ is Cons!11755) l!6534)) b!1181324))

(declare-fun m!1357499 () Bool)

(assert (=> b!1181326 m!1357499))

(declare-fun m!1357501 () Bool)

(assert (=> b!1181317 m!1357501))

(declare-fun m!1357503 () Bool)

(assert (=> b!1181319 m!1357503))

(declare-fun m!1357505 () Bool)

(assert (=> b!1181325 m!1357505))

(declare-fun m!1357507 () Bool)

(assert (=> b!1181325 m!1357507))

(declare-fun m!1357509 () Bool)

(assert (=> b!1181323 m!1357509))

(declare-fun m!1357511 () Bool)

(assert (=> b!1181315 m!1357511))

(declare-fun m!1357513 () Bool)

(assert (=> b!1181324 m!1357513))

(declare-fun m!1357515 () Bool)

(assert (=> b!1181322 m!1357515))

(declare-fun m!1357517 () Bool)

(assert (=> b!1181322 m!1357517))

(declare-fun m!1357519 () Bool)

(assert (=> b!1181320 m!1357519))

(check-sat (not b!1181324) b_and!81117 (not b!1181317) b_and!81119 b_and!81121 (not b!1181320) (not b_next!28835) (not b!1181319) (not b_next!28829) (not b!1181326) (not b_next!28831) (not b!1181325) (not b!1181316) (not b!1181315) (not b_next!28833) (not b!1181322) b_and!81123 (not b!1181323))
(check-sat b_and!81117 b_and!81119 b_and!81121 (not b_next!28831) (not b_next!28835) (not b_next!28829) (not b_next!28833) b_and!81123)
