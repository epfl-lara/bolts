; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273174 () Bool)

(assert start!273174)

(declare-fun b!2817041 () Bool)

(declare-fun b_free!80341 () Bool)

(declare-fun b_next!81045 () Bool)

(assert (=> b!2817041 (= b_free!80341 (not b_next!81045))))

(declare-fun tp!899321 () Bool)

(declare-fun b_and!205631 () Bool)

(assert (=> b!2817041 (= tp!899321 b_and!205631)))

(declare-fun b_free!80343 () Bool)

(declare-fun b_next!81047 () Bool)

(assert (=> b!2817041 (= b_free!80343 (not b_next!81047))))

(declare-fun tp!899317 () Bool)

(declare-fun b_and!205633 () Bool)

(assert (=> b!2817041 (= tp!899317 b_and!205633)))

(declare-fun b!2817032 () Bool)

(declare-fun b_free!80345 () Bool)

(declare-fun b_next!81049 () Bool)

(assert (=> b!2817032 (= b_free!80345 (not b_next!81049))))

(declare-fun tp!899319 () Bool)

(declare-fun b_and!205635 () Bool)

(assert (=> b!2817032 (= tp!899319 b_and!205635)))

(declare-fun b_free!80347 () Bool)

(declare-fun b_next!81051 () Bool)

(assert (=> b!2817032 (= b_free!80347 (not b_next!81051))))

(declare-fun tp!899318 () Bool)

(declare-fun b_and!205637 () Bool)

(assert (=> b!2817032 (= tp!899318 b_and!205637)))

(declare-fun b!2817027 () Bool)

(declare-fun res!1172320 () Bool)

(declare-fun e!1781501 () Bool)

(assert (=> b!2817027 (=> (not res!1172320) (not e!1781501))))

(declare-datatypes ((LexerInterface!4516 0))(
  ( (LexerInterfaceExt!4513 (__x!21983 Int)) (Lexer!4514) )
))
(declare-fun thiss!27755 () LexerInterface!4516)

(declare-datatypes ((List!33086 0))(
  ( (Nil!32962) (Cons!32962 (h!38382 (_ BitVec 16)) (t!230135 List!33086)) )
))
(declare-datatypes ((TokenValue!5155 0))(
  ( (FloatLiteralValue!10310 (text!36530 List!33086)) (TokenValueExt!5154 (__x!21984 Int)) (Broken!25775 (value!158656 List!33086)) (Object!5278) (End!5155) (Def!5155) (Underscore!5155) (Match!5155) (Else!5155) (Error!5155) (Case!5155) (If!5155) (Extends!5155) (Abstract!5155) (Class!5155) (Val!5155) (DelimiterValue!10310 (del!5215 List!33086)) (KeywordValue!5161 (value!158657 List!33086)) (CommentValue!10310 (value!158658 List!33086)) (WhitespaceValue!10310 (value!158659 List!33086)) (IndentationValue!5155 (value!158660 List!33086)) (String!36230) (Int32!5155) (Broken!25776 (value!158661 List!33086)) (Boolean!5156) (Unit!46929) (OperatorValue!5158 (op!5215 List!33086)) (IdentifierValue!10310 (value!158662 List!33086)) (IdentifierValue!10311 (value!158663 List!33086)) (WhitespaceValue!10311 (value!158664 List!33086)) (True!10310) (False!10310) (Broken!25777 (value!158665 List!33086)) (Broken!25778 (value!158666 List!33086)) (True!10311) (RightBrace!5155) (RightBracket!5155) (Colon!5155) (Null!5155) (Comma!5155) (LeftBracket!5155) (False!10311) (LeftBrace!5155) (ImaginaryLiteralValue!5155 (text!36531 List!33086)) (StringLiteralValue!15465 (value!158667 List!33086)) (EOFValue!5155 (value!158668 List!33086)) (IdentValue!5155 (value!158669 List!33086)) (DelimiterValue!10311 (value!158670 List!33086)) (DedentValue!5155 (value!158671 List!33086)) (NewLineValue!5155 (value!158672 List!33086)) (IntegerValue!15465 (value!158673 (_ BitVec 32)) (text!36532 List!33086)) (IntegerValue!15466 (value!158674 Int) (text!36533 List!33086)) (Times!5155) (Or!5155) (Equal!5155) (Minus!5155) (Broken!25779 (value!158675 List!33086)) (And!5155) (Div!5155) (LessEqual!5155) (Mod!5155) (Concat!13470) (Not!5155) (Plus!5155) (SpaceValue!5155 (value!158676 List!33086)) (IntegerValue!15467 (value!158677 Int) (text!36534 List!33086)) (StringLiteralValue!15466 (text!36535 List!33086)) (FloatLiteralValue!10311 (text!36536 List!33086)) (BytesLiteralValue!5155 (value!158678 List!33086)) (CommentValue!10311 (value!158679 List!33086)) (StringLiteralValue!15467 (value!158680 List!33086)) (ErrorTokenValue!5155 (msg!5216 List!33086)) )
))
(declare-datatypes ((C!16812 0))(
  ( (C!16813 (val!10386 Int)) )
))
(declare-datatypes ((Regex!8315 0))(
  ( (ElementMatch!8315 (c!456748 C!16812)) (Concat!13471 (regOne!17142 Regex!8315) (regTwo!17142 Regex!8315)) (EmptyExpr!8315) (Star!8315 (reg!8644 Regex!8315)) (EmptyLang!8315) (Union!8315 (regOne!17143 Regex!8315) (regTwo!17143 Regex!8315)) )
))
(declare-datatypes ((String!36231 0))(
  ( (String!36232 (value!158681 String)) )
))
(declare-datatypes ((List!33087 0))(
  ( (Nil!32963) (Cons!32963 (h!38383 C!16812) (t!230136 List!33087)) )
))
(declare-datatypes ((IArray!20461 0))(
  ( (IArray!20462 (innerList!10288 List!33087)) )
))
(declare-datatypes ((Conc!10228 0))(
  ( (Node!10228 (left!24893 Conc!10228) (right!25223 Conc!10228) (csize!20686 Int) (cheight!10439 Int)) (Leaf!15582 (xs!13340 IArray!20461) (csize!20687 Int)) (Empty!10228) )
))
(declare-datatypes ((BalanceConc!20094 0))(
  ( (BalanceConc!20095 (c!456749 Conc!10228)) )
))
(declare-datatypes ((TokenValueInjection!9738 0))(
  ( (TokenValueInjection!9739 (toValue!6935 Int) (toChars!6794 Int)) )
))
(declare-datatypes ((Rule!9650 0))(
  ( (Rule!9651 (regex!4925 Regex!8315) (tag!5429 String!36231) (isSeparator!4925 Bool) (transformation!4925 TokenValueInjection!9738)) )
))
(declare-datatypes ((Token!9252 0))(
  ( (Token!9253 (value!158682 TokenValue!5155) (rule!7353 Rule!9650) (size!25685 Int) (originalCharacters!5657 List!33087)) )
))
(declare-datatypes ((List!33088 0))(
  ( (Nil!32964) (Cons!32964 (h!38384 Token!9252) (t!230137 List!33088)) )
))
(declare-fun l!6581 () List!33088)

(declare-datatypes ((List!33089 0))(
  ( (Nil!32965) (Cons!32965 (h!38385 Rule!9650) (t!230138 List!33089)) )
))
(declare-fun rules!4424 () List!33089)

(declare-fun tokensListTwoByTwoPredicateSeparableList!653 (LexerInterface!4516 List!33088 List!33089) Bool)

(assert (=> b!2817027 (= res!1172320 (tokensListTwoByTwoPredicateSeparableList!653 thiss!27755 l!6581 rules!4424))))

(declare-fun res!1172317 () Bool)

(assert (=> start!273174 (=> (not res!1172317) (not e!1781501))))

(get-info :version)

(assert (=> start!273174 (= res!1172317 ((_ is Lexer!4514) thiss!27755))))

(assert (=> start!273174 e!1781501))

(assert (=> start!273174 true))

(declare-fun e!1781499 () Bool)

(assert (=> start!273174 e!1781499))

(declare-fun e!1781507 () Bool)

(assert (=> start!273174 e!1781507))

(declare-fun b!2817028 () Bool)

(declare-fun e!1781510 () Bool)

(declare-fun tp!899320 () Bool)

(assert (=> b!2817028 (= e!1781499 (and e!1781510 tp!899320))))

(declare-fun b!2817029 () Bool)

(declare-fun tp!899322 () Bool)

(declare-fun e!1781508 () Bool)

(declare-fun inv!44880 (Token!9252) Bool)

(assert (=> b!2817029 (= e!1781507 (and (inv!44880 (h!38384 l!6581)) e!1781508 tp!899322))))

(declare-fun b!2817030 () Bool)

(declare-fun e!1781498 () Bool)

(declare-fun e!1781509 () Bool)

(assert (=> b!2817030 (= e!1781498 e!1781509)))

(declare-fun res!1172315 () Bool)

(assert (=> b!2817030 (=> (not res!1172315) (not e!1781509))))

(declare-fun lt!1006013 () List!33088)

(declare-fun rulesProduceIndividualToken!2056 (LexerInterface!4516 List!33089 Token!9252) Bool)

(assert (=> b!2817030 (= res!1172315 (rulesProduceIndividualToken!2056 thiss!27755 rules!4424 (h!38384 lt!1006013)))))

(declare-fun b!2817031 () Bool)

(declare-fun tp!899316 () Bool)

(declare-fun e!1781500 () Bool)

(declare-fun e!1781505 () Bool)

(declare-fun inv!44877 (String!36231) Bool)

(declare-fun inv!44881 (TokenValueInjection!9738) Bool)

(assert (=> b!2817031 (= e!1781500 (and tp!899316 (inv!44877 (tag!5429 (rule!7353 (h!38384 l!6581)))) (inv!44881 (transformation!4925 (rule!7353 (h!38384 l!6581)))) e!1781505))))

(assert (=> b!2817032 (= e!1781505 (and tp!899319 tp!899318))))

(declare-fun b!2817033 () Bool)

(declare-fun tp!899314 () Bool)

(declare-fun e!1781503 () Bool)

(assert (=> b!2817033 (= e!1781510 (and tp!899314 (inv!44877 (tag!5429 (h!38385 rules!4424))) (inv!44881 (transformation!4925 (h!38385 rules!4424))) e!1781503))))

(declare-fun tp!899315 () Bool)

(declare-fun b!2817034 () Bool)

(declare-fun inv!21 (TokenValue!5155) Bool)

(assert (=> b!2817034 (= e!1781508 (and (inv!21 (value!158682 (h!38384 l!6581))) e!1781500 tp!899315))))

(declare-fun b!2817035 () Bool)

(declare-fun res!1172322 () Bool)

(assert (=> b!2817035 (=> (not res!1172322) (not e!1781501))))

(declare-fun rulesProduceEachTokenIndividuallyList!1568 (LexerInterface!4516 List!33089 List!33088) Bool)

(assert (=> b!2817035 (= res!1172322 (rulesProduceEachTokenIndividuallyList!1568 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2817036 () Bool)

(declare-fun res!1172316 () Bool)

(assert (=> b!2817036 (=> (not res!1172316) (not e!1781501))))

(assert (=> b!2817036 (= res!1172316 ((_ is Nil!32964) l!6581))))

(declare-fun b!2817037 () Bool)

(declare-fun res!1172321 () Bool)

(assert (=> b!2817037 (=> (not res!1172321) (not e!1781501))))

(declare-fun rulesInvariant!3934 (LexerInterface!4516 List!33089) Bool)

(assert (=> b!2817037 (= res!1172321 (rulesInvariant!3934 thiss!27755 rules!4424))))

(declare-fun b!2817038 () Bool)

(declare-fun res!1172318 () Bool)

(assert (=> b!2817038 (=> (not res!1172318) (not e!1781501))))

(declare-fun isEmpty!18242 (List!33089) Bool)

(assert (=> b!2817038 (= res!1172318 (not (isEmpty!18242 rules!4424)))))

(declare-fun b!2817039 () Bool)

(assert (=> b!2817039 (= e!1781509 (rulesProduceEachTokenIndividuallyList!1568 thiss!27755 rules!4424 (t!230137 lt!1006013)))))

(declare-fun b!2817040 () Bool)

(assert (=> b!2817040 (= e!1781501 (not true))))

(assert (=> b!2817040 (= (rulesProduceEachTokenIndividuallyList!1568 thiss!27755 rules!4424 lt!1006013) e!1781498)))

(declare-fun res!1172319 () Bool)

(assert (=> b!2817040 (=> res!1172319 e!1781498)))

(assert (=> b!2817040 (= res!1172319 (not ((_ is Cons!32964) lt!1006013)))))

(declare-fun i!1730 () Int)

(declare-fun take!519 (List!33088 Int) List!33088)

(assert (=> b!2817040 (= lt!1006013 (take!519 l!6581 i!1730))))

(assert (=> b!2817041 (= e!1781503 (and tp!899321 tp!899317))))

(assert (= (and start!273174 res!1172317) b!2817038))

(assert (= (and b!2817038 res!1172318) b!2817037))

(assert (= (and b!2817037 res!1172321) b!2817035))

(assert (= (and b!2817035 res!1172322) b!2817027))

(assert (= (and b!2817027 res!1172320) b!2817036))

(assert (= (and b!2817036 res!1172316) b!2817040))

(assert (= (and b!2817040 (not res!1172319)) b!2817030))

(assert (= (and b!2817030 res!1172315) b!2817039))

(assert (= b!2817033 b!2817041))

(assert (= b!2817028 b!2817033))

(assert (= (and start!273174 ((_ is Cons!32965) rules!4424)) b!2817028))

(assert (= b!2817031 b!2817032))

(assert (= b!2817034 b!2817031))

(assert (= b!2817029 b!2817034))

(assert (= (and start!273174 ((_ is Cons!32964) l!6581)) b!2817029))

(declare-fun m!3248019 () Bool)

(assert (=> b!2817035 m!3248019))

(declare-fun m!3248021 () Bool)

(assert (=> b!2817033 m!3248021))

(declare-fun m!3248023 () Bool)

(assert (=> b!2817033 m!3248023))

(declare-fun m!3248025 () Bool)

(assert (=> b!2817029 m!3248025))

(declare-fun m!3248027 () Bool)

(assert (=> b!2817030 m!3248027))

(declare-fun m!3248029 () Bool)

(assert (=> b!2817038 m!3248029))

(declare-fun m!3248031 () Bool)

(assert (=> b!2817037 m!3248031))

(declare-fun m!3248033 () Bool)

(assert (=> b!2817027 m!3248033))

(declare-fun m!3248035 () Bool)

(assert (=> b!2817040 m!3248035))

(declare-fun m!3248037 () Bool)

(assert (=> b!2817040 m!3248037))

(declare-fun m!3248039 () Bool)

(assert (=> b!2817034 m!3248039))

(declare-fun m!3248041 () Bool)

(assert (=> b!2817039 m!3248041))

(declare-fun m!3248043 () Bool)

(assert (=> b!2817031 m!3248043))

(declare-fun m!3248045 () Bool)

(assert (=> b!2817031 m!3248045))

(check-sat (not b!2817027) (not b_next!81049) (not b!2817039) (not b!2817033) (not b!2817034) (not b!2817029) (not b!2817038) (not b_next!81047) (not b!2817030) b_and!205635 (not b!2817037) (not b_next!81051) (not b!2817040) (not b!2817031) (not b!2817028) b_and!205631 b_and!205637 b_and!205633 (not b!2817035) (not b_next!81045))
(check-sat b_and!205631 (not b_next!81049) (not b_next!81047) b_and!205635 (not b_next!81045) (not b_next!81051) b_and!205637 b_and!205633)
