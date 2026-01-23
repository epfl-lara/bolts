; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10326 () Bool)

(assert start!10326)

(declare-fun b!104528 () Bool)

(declare-fun b_free!3129 () Bool)

(declare-fun b_next!3129 () Bool)

(assert (=> b!104528 (= b_free!3129 (not b_next!3129))))

(declare-fun tp!58106 () Bool)

(declare-fun b_and!4647 () Bool)

(assert (=> b!104528 (= tp!58106 b_and!4647)))

(declare-fun b_free!3131 () Bool)

(declare-fun b_next!3131 () Bool)

(assert (=> b!104528 (= b_free!3131 (not b_next!3131))))

(declare-fun tp!58108 () Bool)

(declare-fun b_and!4649 () Bool)

(assert (=> b!104528 (= tp!58108 b_and!4649)))

(declare-fun b!104520 () Bool)

(declare-fun e!57963 () Bool)

(assert (=> b!104520 (= e!57963 false)))

(declare-datatypes ((C!1788 0))(
  ( (C!1789 (val!501 Int)) )
))
(declare-datatypes ((List!1678 0))(
  ( (Nil!1672) (Cons!1672 (h!7069 C!1788) (t!21363 List!1678)) )
))
(declare-fun lt!29014 () List!1678)

(declare-datatypes ((List!1679 0))(
  ( (Nil!1673) (Cons!1673 (h!7070 (_ BitVec 16)) (t!21364 List!1679)) )
))
(declare-datatypes ((TokenValue!355 0))(
  ( (FloatLiteralValue!710 (text!2930 List!1679)) (TokenValueExt!354 (__x!1805 Int)) (Broken!1775 (value!13266 List!1679)) (Object!360) (End!355) (Def!355) (Underscore!355) (Match!355) (Else!355) (Error!355) (Case!355) (If!355) (Extends!355) (Abstract!355) (Class!355) (Val!355) (DelimiterValue!710 (del!415 List!1679)) (KeywordValue!361 (value!13267 List!1679)) (CommentValue!710 (value!13268 List!1679)) (WhitespaceValue!710 (value!13269 List!1679)) (IndentationValue!355 (value!13270 List!1679)) (String!2166) (Int32!355) (Broken!1776 (value!13271 List!1679)) (Boolean!356) (Unit!1111) (OperatorValue!358 (op!415 List!1679)) (IdentifierValue!710 (value!13272 List!1679)) (IdentifierValue!711 (value!13273 List!1679)) (WhitespaceValue!711 (value!13274 List!1679)) (True!710) (False!710) (Broken!1777 (value!13275 List!1679)) (Broken!1778 (value!13276 List!1679)) (True!711) (RightBrace!355) (RightBracket!355) (Colon!355) (Null!355) (Comma!355) (LeftBracket!355) (False!711) (LeftBrace!355) (ImaginaryLiteralValue!355 (text!2931 List!1679)) (StringLiteralValue!1065 (value!13277 List!1679)) (EOFValue!355 (value!13278 List!1679)) (IdentValue!355 (value!13279 List!1679)) (DelimiterValue!711 (value!13280 List!1679)) (DedentValue!355 (value!13281 List!1679)) (NewLineValue!355 (value!13282 List!1679)) (IntegerValue!1065 (value!13283 (_ BitVec 32)) (text!2932 List!1679)) (IntegerValue!1066 (value!13284 Int) (text!2933 List!1679)) (Times!355) (Or!355) (Equal!355) (Minus!355) (Broken!1779 (value!13285 List!1679)) (And!355) (Div!355) (LessEqual!355) (Mod!355) (Concat!788) (Not!355) (Plus!355) (SpaceValue!355 (value!13286 List!1679)) (IntegerValue!1067 (value!13287 Int) (text!2934 List!1679)) (StringLiteralValue!1066 (text!2935 List!1679)) (FloatLiteralValue!711 (text!2936 List!1679)) (BytesLiteralValue!355 (value!13288 List!1679)) (CommentValue!711 (value!13289 List!1679)) (StringLiteralValue!1067 (value!13290 List!1679)) (ErrorTokenValue!355 (msg!416 List!1679)) )
))
(declare-datatypes ((IArray!1053 0))(
  ( (IArray!1054 (innerList!584 List!1678)) )
))
(declare-datatypes ((Conc!526 0))(
  ( (Node!526 (left!1281 Conc!526) (right!1611 Conc!526) (csize!1282 Int) (cheight!737 Int)) (Leaf!844 (xs!3117 IArray!1053) (csize!1283 Int)) (Empty!526) )
))
(declare-datatypes ((BalanceConc!1056 0))(
  ( (BalanceConc!1057 (c!25236 Conc!526)) )
))
(declare-datatypes ((Regex!433 0))(
  ( (ElementMatch!433 (c!25237 C!1788)) (Concat!789 (regOne!1378 Regex!433) (regTwo!1378 Regex!433)) (EmptyExpr!433) (Star!433 (reg!762 Regex!433)) (EmptyLang!433) (Union!433 (regOne!1379 Regex!433) (regTwo!1379 Regex!433)) )
))
(declare-datatypes ((String!2167 0))(
  ( (String!2168 (value!13291 String)) )
))
(declare-datatypes ((TokenValueInjection!534 0))(
  ( (TokenValueInjection!535 (toValue!948 Int) (toChars!807 Int)) )
))
(declare-datatypes ((Rule!530 0))(
  ( (Rule!531 (regex!365 Regex!433) (tag!543 String!2167) (isSeparator!365 Bool) (transformation!365 TokenValueInjection!534)) )
))
(declare-datatypes ((Token!478 0))(
  ( (Token!479 (value!13292 TokenValue!355) (rule!870 Rule!530) (size!1490 Int) (originalCharacters!410 List!1678)) )
))
(declare-datatypes ((List!1680 0))(
  ( (Nil!1674) (Cons!1674 (h!7071 Token!478) (t!21365 List!1680)) )
))
(declare-datatypes ((IArray!1055 0))(
  ( (IArray!1056 (innerList!585 List!1680)) )
))
(declare-datatypes ((Conc!527 0))(
  ( (Node!527 (left!1282 Conc!527) (right!1612 Conc!527) (csize!1284 Int) (cheight!738 Int)) (Leaf!845 (xs!3118 IArray!1055) (csize!1285 Int)) (Empty!527) )
))
(declare-datatypes ((BalanceConc!1058 0))(
  ( (BalanceConc!1059 (c!25238 Conc!527)) )
))
(declare-datatypes ((tuple2!1838 0))(
  ( (tuple2!1839 (_1!1126 BalanceConc!1058) (_2!1126 BalanceConc!1056)) )
))
(declare-fun lt!29012 () tuple2!1838)

(declare-fun list!708 (BalanceConc!1056) List!1678)

(assert (=> b!104520 (= lt!29014 (list!708 (_2!1126 lt!29012)))))

(declare-fun b!104521 () Bool)

(declare-fun e!57965 () Bool)

(declare-fun e!57962 () Bool)

(assert (=> b!104521 (= e!57965 e!57962)))

(declare-fun res!50333 () Bool)

(assert (=> b!104521 (=> (not res!50333) (not e!57962))))

(declare-fun lt!29010 () tuple2!1838)

(declare-fun list!709 (BalanceConc!1058) List!1680)

(assert (=> b!104521 (= res!50333 (= (list!709 (_1!1126 lt!29010)) (list!709 (BalanceConc!1059 Empty!527))))))

(declare-datatypes ((LexerInterface!257 0))(
  ( (LexerInterfaceExt!254 (__x!1806 Int)) (Lexer!255) )
))
(declare-fun thiss!11428 () LexerInterface!257)

(declare-datatypes ((List!1681 0))(
  ( (Nil!1675) (Cons!1675 (h!7072 Rule!530) (t!21366 List!1681)) )
))
(declare-fun rules!1152 () List!1681)

(declare-fun lexRec!58 (LexerInterface!257 List!1681 BalanceConc!1056) tuple2!1838)

(assert (=> b!104521 (= lt!29010 (lexRec!58 thiss!11428 rules!1152 (BalanceConc!1057 Empty!526)))))

(declare-fun b!104522 () Bool)

(declare-fun res!50329 () Bool)

(declare-fun e!57968 () Bool)

(assert (=> b!104522 (=> (not res!50329) (not e!57968))))

(declare-fun isEmpty!777 (List!1681) Bool)

(assert (=> b!104522 (= res!50329 (not (isEmpty!777 rules!1152)))))

(declare-fun b!104523 () Bool)

(assert (=> b!104523 (= e!57962 e!57963)))

(declare-fun res!50332 () Bool)

(assert (=> b!104523 (=> (not res!50332) (not e!57963))))

(declare-fun ++!277 (BalanceConc!1058 BalanceConc!1058) BalanceConc!1058)

(assert (=> b!104523 (= res!50332 (= (list!709 (_1!1126 lt!29012)) (list!709 (++!277 (BalanceConc!1059 Empty!527) (_1!1126 lt!29012)))))))

(declare-fun input!576 () BalanceConc!1056)

(assert (=> b!104523 (= lt!29012 (lexRec!58 thiss!11428 rules!1152 input!576))))

(declare-fun b!104524 () Bool)

(declare-fun e!57967 () Bool)

(declare-fun tp!58107 () Bool)

(declare-fun inv!2036 (Conc!526) Bool)

(assert (=> b!104524 (= e!57967 (and (inv!2036 (c!25236 input!576)) tp!58107))))

(declare-fun b!104525 () Bool)

(assert (=> b!104525 (= e!57968 e!57965)))

(declare-fun res!50331 () Bool)

(assert (=> b!104525 (=> (not res!50331) (not e!57965))))

(declare-fun lt!29011 () List!1678)

(declare-fun lt!29013 () List!1678)

(declare-fun ++!278 (List!1678 List!1678) List!1678)

(assert (=> b!104525 (= res!50331 (= lt!29011 (++!278 lt!29013 lt!29011)))))

(assert (=> b!104525 (= lt!29011 (list!708 input!576))))

(assert (=> b!104525 (= lt!29013 (list!708 (BalanceConc!1057 Empty!526)))))

(declare-fun b!104526 () Bool)

(declare-fun res!50330 () Bool)

(assert (=> b!104526 (=> (not res!50330) (not e!57968))))

(declare-fun rulesInvariant!251 (LexerInterface!257 List!1681) Bool)

(assert (=> b!104526 (= res!50330 (rulesInvariant!251 thiss!11428 rules!1152))))

(declare-fun b!104527 () Bool)

(declare-fun e!57960 () Bool)

(declare-fun e!57964 () Bool)

(declare-fun tp!58104 () Bool)

(assert (=> b!104527 (= e!57960 (and e!57964 tp!58104))))

(declare-fun e!57961 () Bool)

(assert (=> b!104528 (= e!57961 (and tp!58106 tp!58108))))

(declare-fun res!50335 () Bool)

(assert (=> start!10326 (=> (not res!50335) (not e!57968))))

(get-info :version)

(assert (=> start!10326 (= res!50335 ((_ is Lexer!255) thiss!11428))))

(assert (=> start!10326 e!57968))

(assert (=> start!10326 true))

(assert (=> start!10326 e!57960))

(declare-fun inv!2037 (BalanceConc!1056) Bool)

(assert (=> start!10326 (and (inv!2037 input!576) e!57967)))

(declare-fun tp!58105 () Bool)

(declare-fun b!104529 () Bool)

(declare-fun inv!2032 (String!2167) Bool)

(declare-fun inv!2038 (TokenValueInjection!534) Bool)

(assert (=> b!104529 (= e!57964 (and tp!58105 (inv!2032 (tag!543 (h!7072 rules!1152))) (inv!2038 (transformation!365 (h!7072 rules!1152))) e!57961))))

(declare-fun b!104530 () Bool)

(declare-fun res!50334 () Bool)

(assert (=> b!104530 (=> (not res!50334) (not e!57962))))

(declare-fun isEmpty!778 (List!1678) Bool)

(assert (=> b!104530 (= res!50334 (isEmpty!778 (list!708 (_2!1126 lt!29010))))))

(assert (= (and start!10326 res!50335) b!104522))

(assert (= (and b!104522 res!50329) b!104526))

(assert (= (and b!104526 res!50330) b!104525))

(assert (= (and b!104525 res!50331) b!104521))

(assert (= (and b!104521 res!50333) b!104530))

(assert (= (and b!104530 res!50334) b!104523))

(assert (= (and b!104523 res!50332) b!104520))

(assert (= b!104529 b!104528))

(assert (= b!104527 b!104529))

(assert (= (and start!10326 ((_ is Cons!1675) rules!1152)) b!104527))

(assert (= start!10326 b!104524))

(declare-fun m!91048 () Bool)

(assert (=> b!104521 m!91048))

(declare-fun m!91050 () Bool)

(assert (=> b!104521 m!91050))

(declare-fun m!91052 () Bool)

(assert (=> b!104521 m!91052))

(declare-fun m!91054 () Bool)

(assert (=> b!104530 m!91054))

(assert (=> b!104530 m!91054))

(declare-fun m!91056 () Bool)

(assert (=> b!104530 m!91056))

(declare-fun m!91058 () Bool)

(assert (=> b!104524 m!91058))

(declare-fun m!91060 () Bool)

(assert (=> b!104529 m!91060))

(declare-fun m!91062 () Bool)

(assert (=> b!104529 m!91062))

(declare-fun m!91064 () Bool)

(assert (=> b!104525 m!91064))

(declare-fun m!91066 () Bool)

(assert (=> b!104525 m!91066))

(declare-fun m!91068 () Bool)

(assert (=> b!104525 m!91068))

(declare-fun m!91070 () Bool)

(assert (=> start!10326 m!91070))

(declare-fun m!91072 () Bool)

(assert (=> b!104523 m!91072))

(declare-fun m!91074 () Bool)

(assert (=> b!104523 m!91074))

(assert (=> b!104523 m!91074))

(declare-fun m!91076 () Bool)

(assert (=> b!104523 m!91076))

(declare-fun m!91078 () Bool)

(assert (=> b!104523 m!91078))

(declare-fun m!91080 () Bool)

(assert (=> b!104526 m!91080))

(declare-fun m!91082 () Bool)

(assert (=> b!104522 m!91082))

(declare-fun m!91084 () Bool)

(assert (=> b!104520 m!91084))

(check-sat (not b!104526) (not b!104530) b_and!4649 (not b!104527) (not b!104523) (not b!104522) b_and!4647 (not b!104529) (not b_next!3129) (not b!104521) (not b!104520) (not b!104525) (not b_next!3131) (not b!104524) (not start!10326))
(check-sat b_and!4649 b_and!4647 (not b_next!3131) (not b_next!3129))
