; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19994 () Bool)

(assert start!19994)

(declare-fun b!184477 () Bool)

(declare-fun b_free!7209 () Bool)

(declare-fun b_next!7209 () Bool)

(assert (=> b!184477 (= b_free!7209 (not b_next!7209))))

(declare-fun tp!87162 () Bool)

(declare-fun b_and!12669 () Bool)

(assert (=> b!184477 (= tp!87162 b_and!12669)))

(declare-fun b_free!7211 () Bool)

(declare-fun b_next!7211 () Bool)

(assert (=> b!184477 (= b_free!7211 (not b_next!7211))))

(declare-fun tp!87169 () Bool)

(declare-fun b_and!12671 () Bool)

(assert (=> b!184477 (= tp!87169 b_and!12671)))

(declare-fun b!184469 () Bool)

(declare-fun b_free!7213 () Bool)

(declare-fun b_next!7213 () Bool)

(assert (=> b!184469 (= b_free!7213 (not b_next!7213))))

(declare-fun tp!87168 () Bool)

(declare-fun b_and!12673 () Bool)

(assert (=> b!184469 (= tp!87168 b_and!12673)))

(declare-fun b_free!7215 () Bool)

(declare-fun b_next!7215 () Bool)

(assert (=> b!184469 (= b_free!7215 (not b_next!7215))))

(declare-fun tp!87171 () Bool)

(declare-fun b_and!12675 () Bool)

(assert (=> b!184469 (= tp!87171 b_and!12675)))

(declare-fun b!184462 () Bool)

(declare-fun b_free!7217 () Bool)

(declare-fun b_next!7217 () Bool)

(assert (=> b!184462 (= b_free!7217 (not b_next!7217))))

(declare-fun tp!87167 () Bool)

(declare-fun b_and!12677 () Bool)

(assert (=> b!184462 (= tp!87167 b_and!12677)))

(declare-fun b_free!7219 () Bool)

(declare-fun b_next!7219 () Bool)

(assert (=> b!184462 (= b_free!7219 (not b_next!7219))))

(declare-fun tp!87165 () Bool)

(declare-fun b_and!12679 () Bool)

(assert (=> b!184462 (= tp!87165 b_and!12679)))

(declare-fun bs!18340 () Bool)

(declare-fun b!184474 () Bool)

(declare-fun b!184467 () Bool)

(assert (= bs!18340 (and b!184474 b!184467)))

(declare-fun lambda!5522 () Int)

(declare-fun lambda!5521 () Int)

(assert (=> bs!18340 (not (= lambda!5522 lambda!5521))))

(declare-fun b!184488 () Bool)

(declare-fun e!112715 () Bool)

(assert (=> b!184488 (= e!112715 true)))

(declare-fun b!184487 () Bool)

(declare-fun e!112714 () Bool)

(assert (=> b!184487 (= e!112714 e!112715)))

(declare-fun b!184486 () Bool)

(declare-fun e!112713 () Bool)

(assert (=> b!184486 (= e!112713 e!112714)))

(assert (=> b!184474 e!112713))

(assert (= b!184487 b!184488))

(assert (= b!184486 b!184487))

(declare-datatypes ((List!3093 0))(
  ( (Nil!3083) (Cons!3083 (h!8480 (_ BitVec 16)) (t!28527 List!3093)) )
))
(declare-datatypes ((TokenValue!583 0))(
  ( (FloatLiteralValue!1166 (text!4526 List!3093)) (TokenValueExt!582 (__x!2653 Int)) (Broken!2915 (value!20278 List!3093)) (Object!592) (End!583) (Def!583) (Underscore!583) (Match!583) (Else!583) (Error!583) (Case!583) (If!583) (Extends!583) (Abstract!583) (Class!583) (Val!583) (DelimiterValue!1166 (del!643 List!3093)) (KeywordValue!589 (value!20279 List!3093)) (CommentValue!1166 (value!20280 List!3093)) (WhitespaceValue!1166 (value!20281 List!3093)) (IndentationValue!583 (value!20282 List!3093)) (String!3994) (Int32!583) (Broken!2916 (value!20283 List!3093)) (Boolean!584) (Unit!2853) (OperatorValue!586 (op!643 List!3093)) (IdentifierValue!1166 (value!20284 List!3093)) (IdentifierValue!1167 (value!20285 List!3093)) (WhitespaceValue!1167 (value!20286 List!3093)) (True!1166) (False!1166) (Broken!2917 (value!20287 List!3093)) (Broken!2918 (value!20288 List!3093)) (True!1167) (RightBrace!583) (RightBracket!583) (Colon!583) (Null!583) (Comma!583) (LeftBracket!583) (False!1167) (LeftBrace!583) (ImaginaryLiteralValue!583 (text!4527 List!3093)) (StringLiteralValue!1749 (value!20289 List!3093)) (EOFValue!583 (value!20290 List!3093)) (IdentValue!583 (value!20291 List!3093)) (DelimiterValue!1167 (value!20292 List!3093)) (DedentValue!583 (value!20293 List!3093)) (NewLineValue!583 (value!20294 List!3093)) (IntegerValue!1749 (value!20295 (_ BitVec 32)) (text!4528 List!3093)) (IntegerValue!1750 (value!20296 Int) (text!4529 List!3093)) (Times!583) (Or!583) (Equal!583) (Minus!583) (Broken!2919 (value!20297 List!3093)) (And!583) (Div!583) (LessEqual!583) (Mod!583) (Concat!1368) (Not!583) (Plus!583) (SpaceValue!583 (value!20298 List!3093)) (IntegerValue!1751 (value!20299 Int) (text!4530 List!3093)) (StringLiteralValue!1750 (text!4531 List!3093)) (FloatLiteralValue!1167 (text!4532 List!3093)) (BytesLiteralValue!583 (value!20300 List!3093)) (CommentValue!1167 (value!20301 List!3093)) (StringLiteralValue!1751 (value!20302 List!3093)) (ErrorTokenValue!583 (msg!644 List!3093)) )
))
(declare-datatypes ((C!2492 0))(
  ( (C!2493 (val!1132 Int)) )
))
(declare-datatypes ((List!3094 0))(
  ( (Nil!3084) (Cons!3084 (h!8481 C!2492) (t!28528 List!3094)) )
))
(declare-datatypes ((IArray!1889 0))(
  ( (IArray!1890 (innerList!1002 List!3094)) )
))
(declare-datatypes ((Conc!944 0))(
  ( (Node!944 (left!2403 Conc!944) (right!2733 Conc!944) (csize!2118 Int) (cheight!1155 Int)) (Leaf!1564 (xs!3539 IArray!1889) (csize!2119 Int)) (Empty!944) )
))
(declare-datatypes ((BalanceConc!1896 0))(
  ( (BalanceConc!1897 (c!35795 Conc!944)) )
))
(declare-datatypes ((TokenValueInjection!938 0))(
  ( (TokenValueInjection!939 (toValue!1232 Int) (toChars!1091 Int)) )
))
(declare-datatypes ((Regex!785 0))(
  ( (ElementMatch!785 (c!35796 C!2492)) (Concat!1369 (regOne!2082 Regex!785) (regTwo!2082 Regex!785)) (EmptyExpr!785) (Star!785 (reg!1114 Regex!785)) (EmptyLang!785) (Union!785 (regOne!2083 Regex!785) (regTwo!2083 Regex!785)) )
))
(declare-datatypes ((String!3995 0))(
  ( (String!3996 (value!20303 String)) )
))
(declare-datatypes ((Rule!922 0))(
  ( (Rule!923 (regex!561 Regex!785) (tag!739 String!3995) (isSeparator!561 Bool) (transformation!561 TokenValueInjection!938)) )
))
(declare-datatypes ((List!3095 0))(
  ( (Nil!3085) (Cons!3085 (h!8482 Rule!922) (t!28529 List!3095)) )
))
(declare-fun rules!1920 () List!3095)

(get-info :version)

(assert (= (and b!184474 ((_ is Cons!3085) rules!1920)) b!184486))

(declare-fun order!1843 () Int)

(declare-fun order!1841 () Int)

(declare-fun dynLambda!1261 (Int Int) Int)

(declare-fun dynLambda!1262 (Int Int) Int)

(assert (=> b!184488 (< (dynLambda!1261 order!1841 (toValue!1232 (transformation!561 (h!8482 rules!1920)))) (dynLambda!1262 order!1843 lambda!5522))))

(declare-fun order!1845 () Int)

(declare-fun dynLambda!1263 (Int Int) Int)

(assert (=> b!184488 (< (dynLambda!1263 order!1845 (toChars!1091 (transformation!561 (h!8482 rules!1920)))) (dynLambda!1262 order!1843 lambda!5522))))

(assert (=> b!184474 true))

(declare-fun b!184443 () Bool)

(declare-fun e!112693 () Bool)

(declare-fun e!112700 () Bool)

(declare-fun tp!87173 () Bool)

(assert (=> b!184443 (= e!112693 (and e!112700 tp!87173))))

(declare-fun b!184444 () Bool)

(declare-fun e!112694 () Bool)

(declare-datatypes ((Token!866 0))(
  ( (Token!867 (value!20304 TokenValue!583) (rule!1076 Rule!922) (size!2503 Int) (originalCharacters!604 List!3094)) )
))
(declare-datatypes ((tuple2!3098 0))(
  ( (tuple2!3099 (_1!1765 Token!866) (_2!1765 List!3094)) )
))
(declare-datatypes ((Option!400 0))(
  ( (None!399) (Some!399 (v!13892 tuple2!3098)) )
))
(declare-fun lt!61462 () Option!400)

(declare-datatypes ((List!3096 0))(
  ( (Nil!3086) (Cons!3086 (h!8483 Token!866) (t!28530 List!3096)) )
))
(declare-fun tokens!465 () List!3096)

(declare-fun get!876 (Option!400) tuple2!3098)

(declare-fun head!644 (List!3096) Token!866)

(assert (=> b!184444 (= e!112694 (= (_1!1765 (get!876 lt!61462)) (head!644 tokens!465)))))

(declare-fun b!184445 () Bool)

(declare-fun e!112706 () Bool)

(declare-fun e!112680 () Bool)

(assert (=> b!184445 (= e!112706 e!112680)))

(declare-fun res!83882 () Bool)

(assert (=> b!184445 (=> res!83882 e!112680)))

(declare-fun e!112685 () Bool)

(assert (=> b!184445 (= res!83882 e!112685)))

(declare-fun res!83872 () Bool)

(assert (=> b!184445 (=> (not res!83872) (not e!112685))))

(declare-fun lt!61473 () Bool)

(assert (=> b!184445 (= res!83872 (not lt!61473))))

(declare-fun lt!61464 () List!3094)

(declare-fun lt!61456 () List!3094)

(assert (=> b!184445 (= lt!61473 (= lt!61464 lt!61456))))

(declare-fun b!184446 () Bool)

(declare-fun res!83870 () Bool)

(declare-fun e!112703 () Bool)

(assert (=> b!184446 (=> (not res!83870) (not e!112703))))

(declare-fun lt!61467 () List!3094)

(declare-fun list!1135 (BalanceConc!1896) List!3094)

(declare-fun seqFromList!499 (List!3094) BalanceConc!1896)

(assert (=> b!184446 (= res!83870 (= (list!1135 (seqFromList!499 lt!61464)) lt!61467))))

(declare-fun tp!87161 () Bool)

(declare-fun e!112696 () Bool)

(declare-fun b!184447 () Bool)

(declare-fun inv!3913 (String!3995) Bool)

(declare-fun inv!3916 (TokenValueInjection!938) Bool)

(assert (=> b!184447 (= e!112700 (and tp!87161 (inv!3913 (tag!739 (h!8482 rules!1920))) (inv!3916 (transformation!561 (h!8482 rules!1920))) e!112696))))

(declare-fun b!184448 () Bool)

(declare-fun e!112695 () Bool)

(assert (=> b!184448 (= e!112695 e!112694)))

(declare-fun res!83869 () Bool)

(assert (=> b!184448 (=> (not res!83869) (not e!112694))))

(declare-fun isDefined!251 (Option!400) Bool)

(assert (=> b!184448 (= res!83869 (isDefined!251 lt!61462))))

(declare-datatypes ((LexerInterface!447 0))(
  ( (LexerInterfaceExt!444 (__x!2654 Int)) (Lexer!445) )
))
(declare-fun thiss!17480 () LexerInterface!447)

(declare-fun maxPrefix!177 (LexerInterface!447 List!3095 List!3094) Option!400)

(assert (=> b!184448 (= lt!61462 (maxPrefix!177 thiss!17480 rules!1920 lt!61464))))

(declare-fun b!184450 () Bool)

(declare-fun e!112698 () Bool)

(declare-fun e!112687 () Bool)

(assert (=> b!184450 (= e!112698 e!112687)))

(declare-fun res!83886 () Bool)

(assert (=> b!184450 (=> (not res!83886) (not e!112687))))

(declare-datatypes ((IArray!1891 0))(
  ( (IArray!1892 (innerList!1003 List!3096)) )
))
(declare-datatypes ((Conc!945 0))(
  ( (Node!945 (left!2404 Conc!945) (right!2734 Conc!945) (csize!2120 Int) (cheight!1156 Int)) (Leaf!1565 (xs!3540 IArray!1891) (csize!2121 Int)) (Empty!945) )
))
(declare-datatypes ((BalanceConc!1898 0))(
  ( (BalanceConc!1899 (c!35797 Conc!945)) )
))
(declare-fun lt!61476 () BalanceConc!1898)

(declare-fun rulesProduceEachTokenIndividually!239 (LexerInterface!447 List!3095 BalanceConc!1898) Bool)

(assert (=> b!184450 (= res!83886 (rulesProduceEachTokenIndividually!239 thiss!17480 rules!1920 lt!61476))))

(declare-fun seqFromList!500 (List!3096) BalanceConc!1898)

(assert (=> b!184450 (= lt!61476 (seqFromList!500 tokens!465))))

(declare-fun b!184451 () Bool)

(declare-fun res!83876 () Bool)

(assert (=> b!184451 (=> (not res!83876) (not e!112687))))

(assert (=> b!184451 (= res!83876 ((_ is Cons!3086) tokens!465))))

(declare-fun b!184452 () Bool)

(declare-fun res!83866 () Bool)

(declare-fun e!112686 () Bool)

(assert (=> b!184452 (=> res!83866 e!112686)))

(declare-fun lt!61468 () List!3094)

(declare-fun isEmpty!1447 (BalanceConc!1898) Bool)

(declare-datatypes ((tuple2!3100 0))(
  ( (tuple2!3101 (_1!1766 BalanceConc!1898) (_2!1766 BalanceConc!1896)) )
))
(declare-fun lex!247 (LexerInterface!447 List!3095 BalanceConc!1896) tuple2!3100)

(assert (=> b!184452 (= res!83866 (isEmpty!1447 (_1!1766 (lex!247 thiss!17480 rules!1920 (seqFromList!499 lt!61468)))))))

(declare-fun e!112679 () Bool)

(declare-fun b!184453 () Bool)

(declare-fun e!112691 () Bool)

(declare-fun tp!87166 () Bool)

(assert (=> b!184453 (= e!112679 (and tp!87166 (inv!3913 (tag!739 (rule!1076 (h!8483 tokens!465)))) (inv!3916 (transformation!561 (rule!1076 (h!8483 tokens!465)))) e!112691))))

(declare-fun b!184454 () Bool)

(declare-fun res!83879 () Bool)

(assert (=> b!184454 (=> (not res!83879) (not e!112687))))

(declare-fun separatorToken!170 () Token!866)

(assert (=> b!184454 (= res!83879 (isSeparator!561 (rule!1076 separatorToken!170)))))

(declare-fun b!184455 () Bool)

(declare-fun res!83877 () Bool)

(declare-fun e!112692 () Bool)

(assert (=> b!184455 (=> (not res!83877) (not e!112692))))

(declare-fun lt!61458 () tuple2!3098)

(declare-fun isEmpty!1448 (List!3094) Bool)

(assert (=> b!184455 (= res!83877 (isEmpty!1448 (_2!1765 lt!61458)))))

(declare-fun b!184456 () Bool)

(declare-fun e!112699 () Bool)

(declare-fun e!112704 () Bool)

(assert (=> b!184456 (= e!112699 e!112704)))

(declare-fun res!83865 () Bool)

(assert (=> b!184456 (=> res!83865 e!112704)))

(assert (=> b!184456 (= res!83865 (not lt!61473))))

(assert (=> b!184456 e!112692))

(declare-fun res!83880 () Bool)

(assert (=> b!184456 (=> (not res!83880) (not e!112692))))

(assert (=> b!184456 (= res!83880 (= (_1!1765 lt!61458) (h!8483 tokens!465)))))

(declare-fun lt!61477 () Option!400)

(assert (=> b!184456 (= lt!61458 (get!876 lt!61477))))

(assert (=> b!184456 (isDefined!251 lt!61477)))

(assert (=> b!184456 (= lt!61477 (maxPrefix!177 thiss!17480 rules!1920 lt!61468))))

(declare-fun b!184457 () Bool)

(assert (=> b!184457 (= e!112680 e!112686)))

(declare-fun res!83883 () Bool)

(assert (=> b!184457 (=> res!83883 e!112686)))

(declare-fun lt!61470 () List!3094)

(declare-fun lt!61471 () List!3094)

(assert (=> b!184457 (= res!83883 (or (not (= lt!61471 lt!61470)) (not (= lt!61470 lt!61468)) (not (= lt!61471 lt!61468))))))

(declare-fun lt!61457 () List!3096)

(declare-fun printList!131 (LexerInterface!447 List!3096) List!3094)

(assert (=> b!184457 (= lt!61470 (printList!131 thiss!17480 lt!61457))))

(declare-fun lt!61463 () BalanceConc!1896)

(assert (=> b!184457 (= lt!61471 (list!1135 lt!61463))))

(assert (=> b!184457 (= lt!61457 (Cons!3086 (h!8483 tokens!465) Nil!3086))))

(declare-fun lt!61465 () BalanceConc!1898)

(declare-fun printTailRec!141 (LexerInterface!447 BalanceConc!1898 Int BalanceConc!1896) BalanceConc!1896)

(assert (=> b!184457 (= lt!61463 (printTailRec!141 thiss!17480 lt!61465 0 (BalanceConc!1897 Empty!944)))))

(declare-fun print!178 (LexerInterface!447 BalanceConc!1898) BalanceConc!1896)

(assert (=> b!184457 (= lt!61463 (print!178 thiss!17480 lt!61465))))

(declare-fun singletonSeq!113 (Token!866) BalanceConc!1898)

(assert (=> b!184457 (= lt!61465 (singletonSeq!113 (h!8483 tokens!465)))))

(declare-fun b!184458 () Bool)

(declare-fun res!83884 () Bool)

(declare-fun e!112689 () Bool)

(assert (=> b!184458 (=> res!83884 e!112689)))

(assert (=> b!184458 (= res!83884 (not (= tokens!465 lt!61457)))))

(declare-fun b!184459 () Bool)

(declare-fun res!83881 () Bool)

(assert (=> b!184459 (=> (not res!83881) (not e!112698))))

(declare-fun rulesInvariant!413 (LexerInterface!447 List!3095) Bool)

(assert (=> b!184459 (= res!83881 (rulesInvariant!413 thiss!17480 rules!1920))))

(declare-fun b!184460 () Bool)

(declare-fun res!83871 () Bool)

(assert (=> b!184460 (=> res!83871 e!112686)))

(declare-fun rulesProduceIndividualToken!196 (LexerInterface!447 List!3095 Token!866) Bool)

(assert (=> b!184460 (= res!83871 (not (rulesProduceIndividualToken!196 thiss!17480 rules!1920 (h!8483 tokens!465))))))

(declare-fun b!184461 () Bool)

(assert (=> b!184461 (= e!112689 true)))

(declare-fun lt!61478 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!137 (LexerInterface!447 List!3095 List!3096) Bool)

(assert (=> b!184461 (= lt!61478 (rulesProduceEachTokenIndividuallyList!137 thiss!17480 rules!1920 (t!28530 tokens!465)))))

(assert (=> b!184462 (= e!112691 (and tp!87167 tp!87165))))

(declare-fun tp!87172 () Bool)

(declare-fun b!184463 () Bool)

(declare-fun e!112681 () Bool)

(declare-fun e!112702 () Bool)

(declare-fun inv!21 (TokenValue!583) Bool)

(assert (=> b!184463 (= e!112681 (and (inv!21 (value!20304 separatorToken!170)) e!112702 tp!87172))))

(declare-fun b!184464 () Bool)

(assert (=> b!184464 (= e!112703 (not e!112706))))

(declare-fun res!83885 () Bool)

(assert (=> b!184464 (=> res!83885 e!112706)))

(declare-fun lt!61466 () List!3094)

(declare-fun printWithSeparatorTokenWhenNeededRec!130 (LexerInterface!447 List!3095 BalanceConc!1898 Token!866 Int) BalanceConc!1896)

(assert (=> b!184464 (= res!83885 (not (= lt!61466 (list!1135 (printWithSeparatorTokenWhenNeededRec!130 thiss!17480 rules!1920 (seqFromList!500 (t!28530 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!61455 () List!3094)

(assert (=> b!184464 (= lt!61455 lt!61456)))

(declare-fun lt!61460 () List!3094)

(declare-fun ++!730 (List!3094 List!3094) List!3094)

(assert (=> b!184464 (= lt!61456 (++!730 lt!61468 lt!61460))))

(declare-fun lt!61479 () List!3094)

(assert (=> b!184464 (= lt!61455 (++!730 (++!730 lt!61468 lt!61479) lt!61466))))

(declare-datatypes ((Unit!2854 0))(
  ( (Unit!2855) )
))
(declare-fun lt!61480 () Unit!2854)

(declare-fun lemmaConcatAssociativity!250 (List!3094 List!3094 List!3094) Unit!2854)

(assert (=> b!184464 (= lt!61480 (lemmaConcatAssociativity!250 lt!61468 lt!61479 lt!61466))))

(declare-fun charsOf!216 (Token!866) BalanceConc!1896)

(assert (=> b!184464 (= lt!61468 (list!1135 (charsOf!216 (h!8483 tokens!465))))))

(assert (=> b!184464 (= lt!61460 (++!730 lt!61479 lt!61466))))

(declare-fun printWithSeparatorTokenWhenNeededList!140 (LexerInterface!447 List!3095 List!3096 Token!866) List!3094)

(assert (=> b!184464 (= lt!61466 (printWithSeparatorTokenWhenNeededList!140 thiss!17480 rules!1920 (t!28530 tokens!465) separatorToken!170))))

(assert (=> b!184464 (= lt!61479 (list!1135 (charsOf!216 separatorToken!170)))))

(declare-fun b!184465 () Bool)

(assert (=> b!184465 (= e!112685 (not (= lt!61464 (++!730 lt!61468 lt!61466))))))

(declare-fun res!83878 () Bool)

(assert (=> start!19994 (=> (not res!83878) (not e!112698))))

(assert (=> start!19994 (= res!83878 ((_ is Lexer!445) thiss!17480))))

(assert (=> start!19994 e!112698))

(assert (=> start!19994 true))

(assert (=> start!19994 e!112693))

(declare-fun inv!3917 (Token!866) Bool)

(assert (=> start!19994 (and (inv!3917 separatorToken!170) e!112681)))

(declare-fun e!112682 () Bool)

(assert (=> start!19994 e!112682))

(declare-fun tp!87164 () Bool)

(declare-fun e!112697 () Bool)

(declare-fun b!184449 () Bool)

(assert (=> b!184449 (= e!112702 (and tp!87164 (inv!3913 (tag!739 (rule!1076 separatorToken!170))) (inv!3916 (transformation!561 (rule!1076 separatorToken!170))) e!112697))))

(declare-fun tp!87170 () Bool)

(declare-fun b!184466 () Bool)

(declare-fun e!112690 () Bool)

(assert (=> b!184466 (= e!112682 (and (inv!3917 (h!8483 tokens!465)) e!112690 tp!87170))))

(declare-fun res!83867 () Bool)

(assert (=> b!184467 (=> (not res!83867) (not e!112687))))

(declare-fun forall!637 (List!3096 Int) Bool)

(assert (=> b!184467 (= res!83867 (forall!637 tokens!465 lambda!5521))))

(declare-fun b!184468 () Bool)

(declare-fun res!83863 () Bool)

(assert (=> b!184468 (=> (not res!83863) (not e!112687))))

(declare-fun sepAndNonSepRulesDisjointChars!150 (List!3095 List!3095) Bool)

(assert (=> b!184468 (= res!83863 (sepAndNonSepRulesDisjointChars!150 rules!1920 rules!1920))))

(assert (=> b!184469 (= e!112696 (and tp!87168 tp!87171))))

(declare-fun b!184470 () Bool)

(declare-fun res!83874 () Bool)

(assert (=> b!184470 (=> (not res!83874) (not e!112698))))

(declare-fun isEmpty!1449 (List!3095) Bool)

(assert (=> b!184470 (= res!83874 (not (isEmpty!1449 rules!1920)))))

(declare-fun b!184471 () Bool)

(declare-fun matchR!123 (Regex!785 List!3094) Bool)

(assert (=> b!184471 (= e!112692 (matchR!123 (regex!561 (rule!1076 (h!8483 tokens!465))) lt!61468))))

(declare-fun b!184472 () Bool)

(assert (=> b!184472 (= e!112687 e!112703)))

(declare-fun res!83875 () Bool)

(assert (=> b!184472 (=> (not res!83875) (not e!112703))))

(assert (=> b!184472 (= res!83875 (= lt!61464 lt!61467))))

(assert (=> b!184472 (= lt!61467 (list!1135 (printWithSeparatorTokenWhenNeededRec!130 thiss!17480 rules!1920 lt!61476 separatorToken!170 0)))))

(assert (=> b!184472 (= lt!61464 (printWithSeparatorTokenWhenNeededList!140 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!87163 () Bool)

(declare-fun b!184473 () Bool)

(assert (=> b!184473 (= e!112690 (and (inv!21 (value!20304 (h!8483 tokens!465))) e!112679 tp!87163))))

(assert (=> b!184474 (= e!112686 e!112699)))

(declare-fun res!83873 () Bool)

(assert (=> b!184474 (=> res!83873 e!112699)))

(declare-datatypes ((tuple2!3102 0))(
  ( (tuple2!3103 (_1!1767 Token!866) (_2!1767 BalanceConc!1896)) )
))
(declare-datatypes ((Option!401 0))(
  ( (None!400) (Some!400 (v!13893 tuple2!3102)) )
))
(declare-fun isDefined!252 (Option!401) Bool)

(declare-fun maxPrefixZipperSequence!140 (LexerInterface!447 List!3095 BalanceConc!1896) Option!401)

(assert (=> b!184474 (= res!83873 (not (isDefined!252 (maxPrefixZipperSequence!140 thiss!17480 rules!1920 (seqFromList!499 (originalCharacters!604 (h!8483 tokens!465)))))))))

(declare-fun lt!61469 () Unit!2854)

(declare-fun forallContained!128 (List!3096 Int Token!866) Unit!2854)

(assert (=> b!184474 (= lt!61469 (forallContained!128 tokens!465 lambda!5522 (h!8483 tokens!465)))))

(assert (=> b!184474 (= lt!61468 (originalCharacters!604 (h!8483 tokens!465)))))

(declare-fun b!184475 () Bool)

(assert (=> b!184475 (= e!112704 e!112689)))

(declare-fun res!83868 () Bool)

(assert (=> b!184475 (=> res!83868 e!112689)))

(declare-fun isEmpty!1450 (List!3096) Bool)

(assert (=> b!184475 (= res!83868 (not (isEmpty!1450 (t!28530 tokens!465))))))

(declare-fun lt!61475 () Option!400)

(assert (=> b!184475 (= lt!61475 (maxPrefix!177 thiss!17480 rules!1920 lt!61460))))

(declare-fun lt!61459 () tuple2!3098)

(assert (=> b!184475 (= lt!61460 (_2!1765 lt!61459))))

(declare-fun lt!61461 () Unit!2854)

(declare-fun lemmaSamePrefixThenSameSuffix!82 (List!3094 List!3094 List!3094 List!3094 List!3094) Unit!2854)

(assert (=> b!184475 (= lt!61461 (lemmaSamePrefixThenSameSuffix!82 lt!61468 lt!61460 lt!61468 (_2!1765 lt!61459) lt!61464))))

(assert (=> b!184475 (= lt!61459 (get!876 (maxPrefix!177 thiss!17480 rules!1920 lt!61464)))))

(declare-fun isPrefix!257 (List!3094 List!3094) Bool)

(assert (=> b!184475 (isPrefix!257 lt!61468 lt!61456)))

(declare-fun lt!61474 () Unit!2854)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!152 (List!3094 List!3094) Unit!2854)

(assert (=> b!184475 (= lt!61474 (lemmaConcatTwoListThenFirstIsPrefix!152 lt!61468 lt!61460))))

(assert (=> b!184475 e!112695))

(declare-fun res!83862 () Bool)

(assert (=> b!184475 (=> res!83862 e!112695)))

(assert (=> b!184475 (= res!83862 (isEmpty!1450 tokens!465))))

(declare-fun lt!61472 () Unit!2854)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!22 (LexerInterface!447 List!3095 List!3096 Token!866) Unit!2854)

(assert (=> b!184475 (= lt!61472 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!22 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!184476 () Bool)

(declare-fun res!83864 () Bool)

(assert (=> b!184476 (=> (not res!83864) (not e!112687))))

(assert (=> b!184476 (= res!83864 (rulesProduceIndividualToken!196 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!184477 (= e!112697 (and tp!87162 tp!87169))))

(assert (= (and start!19994 res!83878) b!184470))

(assert (= (and b!184470 res!83874) b!184459))

(assert (= (and b!184459 res!83881) b!184450))

(assert (= (and b!184450 res!83886) b!184476))

(assert (= (and b!184476 res!83864) b!184454))

(assert (= (and b!184454 res!83879) b!184467))

(assert (= (and b!184467 res!83867) b!184468))

(assert (= (and b!184468 res!83863) b!184451))

(assert (= (and b!184451 res!83876) b!184472))

(assert (= (and b!184472 res!83875) b!184446))

(assert (= (and b!184446 res!83870) b!184464))

(assert (= (and b!184464 (not res!83885)) b!184445))

(assert (= (and b!184445 res!83872) b!184465))

(assert (= (and b!184445 (not res!83882)) b!184457))

(assert (= (and b!184457 (not res!83883)) b!184460))

(assert (= (and b!184460 (not res!83871)) b!184452))

(assert (= (and b!184452 (not res!83866)) b!184474))

(assert (= (and b!184474 (not res!83873)) b!184456))

(assert (= (and b!184456 res!83880) b!184455))

(assert (= (and b!184455 res!83877) b!184471))

(assert (= (and b!184456 (not res!83865)) b!184475))

(assert (= (and b!184475 (not res!83862)) b!184448))

(assert (= (and b!184448 res!83869) b!184444))

(assert (= (and b!184475 (not res!83868)) b!184458))

(assert (= (and b!184458 (not res!83884)) b!184461))

(assert (= b!184447 b!184469))

(assert (= b!184443 b!184447))

(assert (= (and start!19994 ((_ is Cons!3085) rules!1920)) b!184443))

(assert (= b!184449 b!184477))

(assert (= b!184463 b!184449))

(assert (= start!19994 b!184463))

(assert (= b!184453 b!184462))

(assert (= b!184473 b!184453))

(assert (= b!184466 b!184473))

(assert (= (and start!19994 ((_ is Cons!3086) tokens!465)) b!184466))

(declare-fun m!188069 () Bool)

(assert (=> b!184464 m!188069))

(declare-fun m!188071 () Bool)

(assert (=> b!184464 m!188071))

(declare-fun m!188073 () Bool)

(assert (=> b!184464 m!188073))

(declare-fun m!188075 () Bool)

(assert (=> b!184464 m!188075))

(declare-fun m!188077 () Bool)

(assert (=> b!184464 m!188077))

(declare-fun m!188079 () Bool)

(assert (=> b!184464 m!188079))

(assert (=> b!184464 m!188073))

(assert (=> b!184464 m!188069))

(declare-fun m!188081 () Bool)

(assert (=> b!184464 m!188081))

(declare-fun m!188083 () Bool)

(assert (=> b!184464 m!188083))

(declare-fun m!188085 () Bool)

(assert (=> b!184464 m!188085))

(assert (=> b!184464 m!188079))

(declare-fun m!188087 () Bool)

(assert (=> b!184464 m!188087))

(declare-fun m!188089 () Bool)

(assert (=> b!184464 m!188089))

(assert (=> b!184464 m!188085))

(declare-fun m!188091 () Bool)

(assert (=> b!184464 m!188091))

(assert (=> b!184464 m!188081))

(declare-fun m!188093 () Bool)

(assert (=> b!184464 m!188093))

(declare-fun m!188095 () Bool)

(assert (=> b!184465 m!188095))

(declare-fun m!188097 () Bool)

(assert (=> b!184452 m!188097))

(assert (=> b!184452 m!188097))

(declare-fun m!188099 () Bool)

(assert (=> b!184452 m!188099))

(declare-fun m!188101 () Bool)

(assert (=> b!184452 m!188101))

(declare-fun m!188103 () Bool)

(assert (=> b!184457 m!188103))

(declare-fun m!188105 () Bool)

(assert (=> b!184457 m!188105))

(declare-fun m!188107 () Bool)

(assert (=> b!184457 m!188107))

(declare-fun m!188109 () Bool)

(assert (=> b!184457 m!188109))

(declare-fun m!188111 () Bool)

(assert (=> b!184457 m!188111))

(declare-fun m!188113 () Bool)

(assert (=> b!184472 m!188113))

(assert (=> b!184472 m!188113))

(declare-fun m!188115 () Bool)

(assert (=> b!184472 m!188115))

(declare-fun m!188117 () Bool)

(assert (=> b!184472 m!188117))

(declare-fun m!188119 () Bool)

(assert (=> b!184460 m!188119))

(declare-fun m!188121 () Bool)

(assert (=> b!184468 m!188121))

(declare-fun m!188123 () Bool)

(assert (=> b!184471 m!188123))

(declare-fun m!188125 () Bool)

(assert (=> b!184473 m!188125))

(declare-fun m!188127 () Bool)

(assert (=> b!184474 m!188127))

(assert (=> b!184474 m!188127))

(declare-fun m!188129 () Bool)

(assert (=> b!184474 m!188129))

(assert (=> b!184474 m!188129))

(declare-fun m!188131 () Bool)

(assert (=> b!184474 m!188131))

(declare-fun m!188133 () Bool)

(assert (=> b!184474 m!188133))

(declare-fun m!188135 () Bool)

(assert (=> b!184475 m!188135))

(declare-fun m!188137 () Bool)

(assert (=> b!184475 m!188137))

(declare-fun m!188139 () Bool)

(assert (=> b!184475 m!188139))

(declare-fun m!188141 () Bool)

(assert (=> b!184475 m!188141))

(declare-fun m!188143 () Bool)

(assert (=> b!184475 m!188143))

(declare-fun m!188145 () Bool)

(assert (=> b!184475 m!188145))

(declare-fun m!188147 () Bool)

(assert (=> b!184475 m!188147))

(assert (=> b!184475 m!188145))

(declare-fun m!188149 () Bool)

(assert (=> b!184475 m!188149))

(declare-fun m!188151 () Bool)

(assert (=> b!184475 m!188151))

(declare-fun m!188153 () Bool)

(assert (=> b!184446 m!188153))

(assert (=> b!184446 m!188153))

(declare-fun m!188155 () Bool)

(assert (=> b!184446 m!188155))

(declare-fun m!188157 () Bool)

(assert (=> b!184461 m!188157))

(declare-fun m!188159 () Bool)

(assert (=> b!184455 m!188159))

(declare-fun m!188161 () Bool)

(assert (=> b!184467 m!188161))

(declare-fun m!188163 () Bool)

(assert (=> b!184448 m!188163))

(assert (=> b!184448 m!188145))

(declare-fun m!188165 () Bool)

(assert (=> b!184456 m!188165))

(declare-fun m!188167 () Bool)

(assert (=> b!184456 m!188167))

(declare-fun m!188169 () Bool)

(assert (=> b!184456 m!188169))

(declare-fun m!188171 () Bool)

(assert (=> b!184449 m!188171))

(declare-fun m!188173 () Bool)

(assert (=> b!184449 m!188173))

(declare-fun m!188175 () Bool)

(assert (=> b!184450 m!188175))

(declare-fun m!188177 () Bool)

(assert (=> b!184450 m!188177))

(declare-fun m!188179 () Bool)

(assert (=> b!184476 m!188179))

(declare-fun m!188181 () Bool)

(assert (=> b!184444 m!188181))

(declare-fun m!188183 () Bool)

(assert (=> b!184444 m!188183))

(declare-fun m!188185 () Bool)

(assert (=> b!184447 m!188185))

(declare-fun m!188187 () Bool)

(assert (=> b!184447 m!188187))

(declare-fun m!188189 () Bool)

(assert (=> b!184466 m!188189))

(declare-fun m!188191 () Bool)

(assert (=> b!184463 m!188191))

(declare-fun m!188193 () Bool)

(assert (=> start!19994 m!188193))

(declare-fun m!188195 () Bool)

(assert (=> b!184453 m!188195))

(declare-fun m!188197 () Bool)

(assert (=> b!184453 m!188197))

(declare-fun m!188199 () Bool)

(assert (=> b!184470 m!188199))

(declare-fun m!188201 () Bool)

(assert (=> b!184459 m!188201))

(check-sat (not b!184474) (not b!184452) (not b!184453) (not b!184461) (not b!184457) (not b_next!7211) (not b!184455) (not b!184448) (not b!184463) (not b_next!7209) (not b!184470) (not b!184459) b_and!12669 (not b!184476) (not b!184443) (not b!184444) b_and!12671 (not b!184450) b_and!12675 (not b!184456) b_and!12673 (not b!184447) (not b!184449) b_and!12679 (not b!184471) (not b!184465) (not b!184475) (not b!184464) b_and!12677 (not b!184466) (not b!184446) (not b_next!7215) (not b!184467) (not b!184472) (not b_next!7213) (not b!184468) (not b!184486) (not b!184473) (not b_next!7219) (not b!184460) (not start!19994) (not b_next!7217))
(check-sat (not b_next!7209) b_and!12669 b_and!12671 b_and!12679 b_and!12677 (not b_next!7211) (not b_next!7215) (not b_next!7213) (not b_next!7219) (not b_next!7217) b_and!12675 b_and!12673)
