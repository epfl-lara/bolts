; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273418 () Bool)

(assert start!273418)

(declare-fun b!2818741 () Bool)

(declare-fun b_free!80501 () Bool)

(declare-fun b_next!81205 () Bool)

(assert (=> b!2818741 (= b_free!80501 (not b_next!81205))))

(declare-fun tp!900068 () Bool)

(declare-fun b_and!205839 () Bool)

(assert (=> b!2818741 (= tp!900068 b_and!205839)))

(declare-fun b_free!80503 () Bool)

(declare-fun b_next!81207 () Bool)

(assert (=> b!2818741 (= b_free!80503 (not b_next!81207))))

(declare-fun tp!900069 () Bool)

(declare-fun b_and!205841 () Bool)

(assert (=> b!2818741 (= tp!900069 b_and!205841)))

(declare-fun b!2818752 () Bool)

(declare-fun b_free!80505 () Bool)

(declare-fun b_next!81209 () Bool)

(assert (=> b!2818752 (= b_free!80505 (not b_next!81209))))

(declare-fun tp!900071 () Bool)

(declare-fun b_and!205843 () Bool)

(assert (=> b!2818752 (= tp!900071 b_and!205843)))

(declare-fun b_free!80507 () Bool)

(declare-fun b_next!81211 () Bool)

(assert (=> b!2818752 (= b_free!80507 (not b_next!81211))))

(declare-fun tp!900067 () Bool)

(declare-fun b_and!205845 () Bool)

(assert (=> b!2818752 (= tp!900067 b_and!205845)))

(declare-fun e!1782831 () Bool)

(assert (=> b!2818741 (= e!1782831 (and tp!900068 tp!900069))))

(declare-fun res!1172999 () Bool)

(declare-fun e!1782822 () Bool)

(assert (=> start!273418 (=> (not res!1172999) (not e!1782822))))

(declare-datatypes ((LexerInterface!4530 0))(
  ( (LexerInterfaceExt!4527 (__x!22011 Int)) (Lexer!4528) )
))
(declare-fun thiss!27755 () LexerInterface!4530)

(get-info :version)

(assert (=> start!273418 (= res!1172999 ((_ is Lexer!4528) thiss!27755))))

(assert (=> start!273418 e!1782822))

(assert (=> start!273418 true))

(declare-fun e!1782828 () Bool)

(assert (=> start!273418 e!1782828))

(declare-fun e!1782826 () Bool)

(assert (=> start!273418 e!1782826))

(declare-fun b!2818742 () Bool)

(declare-fun res!1172994 () Bool)

(assert (=> b!2818742 (=> (not res!1172994) (not e!1782822))))

(declare-datatypes ((List!33146 0))(
  ( (Nil!33022) (Cons!33022 (h!38442 (_ BitVec 16)) (t!230295 List!33146)) )
))
(declare-datatypes ((TokenValue!5169 0))(
  ( (FloatLiteralValue!10338 (text!36628 List!33146)) (TokenValueExt!5168 (__x!22012 Int)) (Broken!25845 (value!159055 List!33146)) (Object!5292) (End!5169) (Def!5169) (Underscore!5169) (Match!5169) (Else!5169) (Error!5169) (Case!5169) (If!5169) (Extends!5169) (Abstract!5169) (Class!5169) (Val!5169) (DelimiterValue!10338 (del!5229 List!33146)) (KeywordValue!5175 (value!159056 List!33146)) (CommentValue!10338 (value!159057 List!33146)) (WhitespaceValue!10338 (value!159058 List!33146)) (IndentationValue!5169 (value!159059 List!33146)) (String!36300) (Int32!5169) (Broken!25846 (value!159060 List!33146)) (Boolean!5170) (Unit!46970) (OperatorValue!5172 (op!5229 List!33146)) (IdentifierValue!10338 (value!159061 List!33146)) (IdentifierValue!10339 (value!159062 List!33146)) (WhitespaceValue!10339 (value!159063 List!33146)) (True!10338) (False!10338) (Broken!25847 (value!159064 List!33146)) (Broken!25848 (value!159065 List!33146)) (True!10339) (RightBrace!5169) (RightBracket!5169) (Colon!5169) (Null!5169) (Comma!5169) (LeftBracket!5169) (False!10339) (LeftBrace!5169) (ImaginaryLiteralValue!5169 (text!36629 List!33146)) (StringLiteralValue!15507 (value!159066 List!33146)) (EOFValue!5169 (value!159067 List!33146)) (IdentValue!5169 (value!159068 List!33146)) (DelimiterValue!10339 (value!159069 List!33146)) (DedentValue!5169 (value!159070 List!33146)) (NewLineValue!5169 (value!159071 List!33146)) (IntegerValue!15507 (value!159072 (_ BitVec 32)) (text!36630 List!33146)) (IntegerValue!15508 (value!159073 Int) (text!36631 List!33146)) (Times!5169) (Or!5169) (Equal!5169) (Minus!5169) (Broken!25849 (value!159074 List!33146)) (And!5169) (Div!5169) (LessEqual!5169) (Mod!5169) (Concat!13498) (Not!5169) (Plus!5169) (SpaceValue!5169 (value!159075 List!33146)) (IntegerValue!15509 (value!159076 Int) (text!36632 List!33146)) (StringLiteralValue!15508 (text!36633 List!33146)) (FloatLiteralValue!10339 (text!36634 List!33146)) (BytesLiteralValue!5169 (value!159077 List!33146)) (CommentValue!10339 (value!159078 List!33146)) (StringLiteralValue!15509 (value!159079 List!33146)) (ErrorTokenValue!5169 (msg!5230 List!33146)) )
))
(declare-datatypes ((C!16840 0))(
  ( (C!16841 (val!10400 Int)) )
))
(declare-datatypes ((List!33147 0))(
  ( (Nil!33023) (Cons!33023 (h!38443 C!16840) (t!230296 List!33147)) )
))
(declare-datatypes ((IArray!20497 0))(
  ( (IArray!20498 (innerList!10306 List!33147)) )
))
(declare-datatypes ((Conc!10246 0))(
  ( (Node!10246 (left!24930 Conc!10246) (right!25260 Conc!10246) (csize!20722 Int) (cheight!10457 Int)) (Leaf!15607 (xs!13358 IArray!20497) (csize!20723 Int)) (Empty!10246) )
))
(declare-datatypes ((BalanceConc!20130 0))(
  ( (BalanceConc!20131 (c!456888 Conc!10246)) )
))
(declare-datatypes ((TokenValueInjection!9766 0))(
  ( (TokenValueInjection!9767 (toValue!6953 Int) (toChars!6812 Int)) )
))
(declare-datatypes ((Regex!8329 0))(
  ( (ElementMatch!8329 (c!456889 C!16840)) (Concat!13499 (regOne!17170 Regex!8329) (regTwo!17170 Regex!8329)) (EmptyExpr!8329) (Star!8329 (reg!8658 Regex!8329)) (EmptyLang!8329) (Union!8329 (regOne!17171 Regex!8329) (regTwo!17171 Regex!8329)) )
))
(declare-datatypes ((String!36301 0))(
  ( (String!36302 (value!159080 String)) )
))
(declare-datatypes ((Rule!9678 0))(
  ( (Rule!9679 (regex!4939 Regex!8329) (tag!5443 String!36301) (isSeparator!4939 Bool) (transformation!4939 TokenValueInjection!9766)) )
))
(declare-datatypes ((Token!9280 0))(
  ( (Token!9281 (value!159081 TokenValue!5169) (rule!7367 Rule!9678) (size!25717 Int) (originalCharacters!5671 List!33147)) )
))
(declare-datatypes ((List!33148 0))(
  ( (Nil!33024) (Cons!33024 (h!38444 Token!9280) (t!230297 List!33148)) )
))
(declare-fun l!6581 () List!33148)

(declare-datatypes ((List!33149 0))(
  ( (Nil!33025) (Cons!33025 (h!38445 Rule!9678) (t!230298 List!33149)) )
))
(declare-fun rules!4424 () List!33149)

(declare-fun rulesProduceEachTokenIndividuallyList!1582 (LexerInterface!4530 List!33149 List!33148) Bool)

(assert (=> b!2818742 (= res!1172994 (rulesProduceEachTokenIndividuallyList!1582 thiss!27755 rules!4424 l!6581))))

(declare-fun e!1782832 () Bool)

(declare-fun tp!900073 () Bool)

(declare-fun b!2818743 () Bool)

(declare-fun inv!44942 (Token!9280) Bool)

(assert (=> b!2818743 (= e!1782826 (and (inv!44942 (h!38444 l!6581)) e!1782832 tp!900073))))

(declare-fun b!2818744 () Bool)

(assert (=> b!2818744 (= e!1782822 (not true))))

(declare-fun e!1782823 () Bool)

(declare-fun lt!1006371 () List!33148)

(assert (=> b!2818744 (= (rulesProduceEachTokenIndividuallyList!1582 thiss!27755 rules!4424 lt!1006371) e!1782823)))

(declare-fun res!1172996 () Bool)

(assert (=> b!2818744 (=> res!1172996 e!1782823)))

(assert (=> b!2818744 (= res!1172996 (not ((_ is Cons!33024) lt!1006371)))))

(declare-fun i!1730 () Int)

(declare-fun take!533 (List!33148 Int) List!33148)

(assert (=> b!2818744 (= lt!1006371 (take!533 l!6581 i!1730))))

(declare-fun b!2818745 () Bool)

(declare-fun res!1172998 () Bool)

(assert (=> b!2818745 (=> (not res!1172998) (not e!1782822))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!667 (LexerInterface!4530 List!33148 List!33149) Bool)

(assert (=> b!2818745 (= res!1172998 (tokensListTwoByTwoPredicateSeparableList!667 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2818746 () Bool)

(declare-fun res!1172993 () Bool)

(assert (=> b!2818746 (=> (not res!1172993) (not e!1782822))))

(assert (=> b!2818746 (= res!1172993 (and (not ((_ is Nil!33024) l!6581)) (<= i!1730 0)))))

(declare-fun b!2818747 () Bool)

(declare-fun e!1782824 () Bool)

(declare-fun tp!900074 () Bool)

(assert (=> b!2818747 (= e!1782828 (and e!1782824 tp!900074))))

(declare-fun b!2818748 () Bool)

(declare-fun e!1782830 () Bool)

(assert (=> b!2818748 (= e!1782823 e!1782830)))

(declare-fun res!1172997 () Bool)

(assert (=> b!2818748 (=> (not res!1172997) (not e!1782830))))

(declare-fun rulesProduceIndividualToken!2068 (LexerInterface!4530 List!33149 Token!9280) Bool)

(assert (=> b!2818748 (= res!1172997 (rulesProduceIndividualToken!2068 thiss!27755 rules!4424 (h!38444 lt!1006371)))))

(declare-fun tp!900070 () Bool)

(declare-fun e!1782825 () Bool)

(declare-fun e!1782821 () Bool)

(declare-fun b!2818749 () Bool)

(declare-fun inv!44939 (String!36301) Bool)

(declare-fun inv!44943 (TokenValueInjection!9766) Bool)

(assert (=> b!2818749 (= e!1782821 (and tp!900070 (inv!44939 (tag!5443 (rule!7367 (h!38444 l!6581)))) (inv!44943 (transformation!4939 (rule!7367 (h!38444 l!6581)))) e!1782825))))

(declare-fun tp!900072 () Bool)

(declare-fun b!2818750 () Bool)

(assert (=> b!2818750 (= e!1782824 (and tp!900072 (inv!44939 (tag!5443 (h!38445 rules!4424))) (inv!44943 (transformation!4939 (h!38445 rules!4424))) e!1782831))))

(declare-fun b!2818751 () Bool)

(assert (=> b!2818751 (= e!1782830 (rulesProduceEachTokenIndividuallyList!1582 thiss!27755 rules!4424 (t!230297 lt!1006371)))))

(assert (=> b!2818752 (= e!1782825 (and tp!900071 tp!900067))))

(declare-fun b!2818753 () Bool)

(declare-fun res!1172995 () Bool)

(assert (=> b!2818753 (=> (not res!1172995) (not e!1782822))))

(declare-fun rulesInvariant!3948 (LexerInterface!4530 List!33149) Bool)

(assert (=> b!2818753 (= res!1172995 (rulesInvariant!3948 thiss!27755 rules!4424))))

(declare-fun b!2818754 () Bool)

(declare-fun res!1172992 () Bool)

(assert (=> b!2818754 (=> (not res!1172992) (not e!1782822))))

(declare-fun isEmpty!18268 (List!33149) Bool)

(assert (=> b!2818754 (= res!1172992 (not (isEmpty!18268 rules!4424)))))

(declare-fun tp!900066 () Bool)

(declare-fun b!2818755 () Bool)

(declare-fun inv!21 (TokenValue!5169) Bool)

(assert (=> b!2818755 (= e!1782832 (and (inv!21 (value!159081 (h!38444 l!6581))) e!1782821 tp!900066))))

(assert (= (and start!273418 res!1172999) b!2818754))

(assert (= (and b!2818754 res!1172992) b!2818753))

(assert (= (and b!2818753 res!1172995) b!2818742))

(assert (= (and b!2818742 res!1172994) b!2818745))

(assert (= (and b!2818745 res!1172998) b!2818746))

(assert (= (and b!2818746 res!1172993) b!2818744))

(assert (= (and b!2818744 (not res!1172996)) b!2818748))

(assert (= (and b!2818748 res!1172997) b!2818751))

(assert (= b!2818750 b!2818741))

(assert (= b!2818747 b!2818750))

(assert (= (and start!273418 ((_ is Cons!33025) rules!4424)) b!2818747))

(assert (= b!2818749 b!2818752))

(assert (= b!2818755 b!2818749))

(assert (= b!2818743 b!2818755))

(assert (= (and start!273418 ((_ is Cons!33024) l!6581)) b!2818743))

(declare-fun m!3249511 () Bool)

(assert (=> b!2818744 m!3249511))

(declare-fun m!3249513 () Bool)

(assert (=> b!2818744 m!3249513))

(declare-fun m!3249515 () Bool)

(assert (=> b!2818750 m!3249515))

(declare-fun m!3249517 () Bool)

(assert (=> b!2818750 m!3249517))

(declare-fun m!3249519 () Bool)

(assert (=> b!2818755 m!3249519))

(declare-fun m!3249521 () Bool)

(assert (=> b!2818749 m!3249521))

(declare-fun m!3249523 () Bool)

(assert (=> b!2818749 m!3249523))

(declare-fun m!3249525 () Bool)

(assert (=> b!2818748 m!3249525))

(declare-fun m!3249527 () Bool)

(assert (=> b!2818753 m!3249527))

(declare-fun m!3249529 () Bool)

(assert (=> b!2818754 m!3249529))

(declare-fun m!3249531 () Bool)

(assert (=> b!2818742 m!3249531))

(declare-fun m!3249533 () Bool)

(assert (=> b!2818745 m!3249533))

(declare-fun m!3249535 () Bool)

(assert (=> b!2818743 m!3249535))

(declare-fun m!3249537 () Bool)

(assert (=> b!2818751 m!3249537))

(check-sat (not b!2818745) (not b!2818743) (not b!2818742) b_and!205845 (not b!2818749) (not b!2818747) b_and!205839 (not b!2818754) (not b!2818748) (not b_next!81211) (not b!2818744) (not b!2818750) b_and!205843 b_and!205841 (not b_next!81207) (not b_next!81205) (not b!2818755) (not b!2818753) (not b!2818751) (not b_next!81209))
(check-sat b_and!205845 (not b_next!81205) (not b_next!81209) b_and!205839 (not b_next!81211) b_and!205843 b_and!205841 (not b_next!81207))
