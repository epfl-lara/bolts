; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298090 () Bool)

(assert start!298090)

(declare-fun b!3181526 () Bool)

(declare-fun b_free!83881 () Bool)

(declare-fun b_next!84585 () Bool)

(assert (=> b!3181526 (= b_free!83881 (not b_next!84585))))

(declare-fun tp!1006466 () Bool)

(declare-fun b_and!210331 () Bool)

(assert (=> b!3181526 (= tp!1006466 b_and!210331)))

(declare-fun b_free!83883 () Bool)

(declare-fun b_next!84587 () Bool)

(assert (=> b!3181526 (= b_free!83883 (not b_next!84587))))

(declare-fun tp!1006464 () Bool)

(declare-fun b_and!210333 () Bool)

(assert (=> b!3181526 (= tp!1006464 b_and!210333)))

(declare-fun b!3181541 () Bool)

(declare-fun b_free!83885 () Bool)

(declare-fun b_next!84589 () Bool)

(assert (=> b!3181541 (= b_free!83885 (not b_next!84589))))

(declare-fun tp!1006465 () Bool)

(declare-fun b_and!210335 () Bool)

(assert (=> b!3181541 (= tp!1006465 b_and!210335)))

(declare-fun b_free!83887 () Bool)

(declare-fun b_next!84591 () Bool)

(assert (=> b!3181541 (= b_free!83887 (not b_next!84591))))

(declare-fun tp!1006468 () Bool)

(declare-fun b_and!210337 () Bool)

(assert (=> b!3181541 (= tp!1006468 b_and!210337)))

(declare-fun b!3181542 () Bool)

(declare-fun b_free!83889 () Bool)

(declare-fun b_next!84593 () Bool)

(assert (=> b!3181542 (= b_free!83889 (not b_next!84593))))

(declare-fun tp!1006461 () Bool)

(declare-fun b_and!210339 () Bool)

(assert (=> b!3181542 (= tp!1006461 b_and!210339)))

(declare-fun b_free!83891 () Bool)

(declare-fun b_next!84595 () Bool)

(assert (=> b!3181542 (= b_free!83891 (not b_next!84595))))

(declare-fun tp!1006463 () Bool)

(declare-fun b_and!210341 () Bool)

(assert (=> b!3181542 (= tp!1006463 b_and!210341)))

(declare-fun b!3181516 () Bool)

(declare-fun res!1293014 () Bool)

(declare-fun e!1982157 () Bool)

(assert (=> b!3181516 (=> (not res!1293014) (not e!1982157))))

(declare-datatypes ((LexerInterface!4709 0))(
  ( (LexerInterfaceExt!4706 (__x!22917 Int)) (Lexer!4707) )
))
(declare-fun thiss!18206 () LexerInterface!4709)

(declare-datatypes ((C!19944 0))(
  ( (C!19945 (val!12020 Int)) )
))
(declare-datatypes ((Regex!9879 0))(
  ( (ElementMatch!9879 (c!534382 C!19944)) (Concat!15229 (regOne!20270 Regex!9879) (regTwo!20270 Regex!9879)) (EmptyExpr!9879) (Star!9879 (reg!10208 Regex!9879)) (EmptyLang!9879) (Union!9879 (regOne!20271 Regex!9879) (regTwo!20271 Regex!9879)) )
))
(declare-datatypes ((List!35862 0))(
  ( (Nil!35738) (Cons!35738 (h!41158 (_ BitVec 16)) (t!235201 List!35862)) )
))
(declare-datatypes ((TokenValue!5350 0))(
  ( (FloatLiteralValue!10700 (text!37895 List!35862)) (TokenValueExt!5349 (__x!22918 Int)) (Broken!26750 (value!166354 List!35862)) (Object!5473) (End!5350) (Def!5350) (Underscore!5350) (Match!5350) (Else!5350) (Error!5350) (Case!5350) (If!5350) (Extends!5350) (Abstract!5350) (Class!5350) (Val!5350) (DelimiterValue!10700 (del!5410 List!35862)) (KeywordValue!5356 (value!166355 List!35862)) (CommentValue!10700 (value!166356 List!35862)) (WhitespaceValue!10700 (value!166357 List!35862)) (IndentationValue!5350 (value!166358 List!35862)) (String!40083) (Int32!5350) (Broken!26751 (value!166359 List!35862)) (Boolean!5351) (Unit!50141) (OperatorValue!5353 (op!5410 List!35862)) (IdentifierValue!10700 (value!166360 List!35862)) (IdentifierValue!10701 (value!166361 List!35862)) (WhitespaceValue!10701 (value!166362 List!35862)) (True!10700) (False!10700) (Broken!26752 (value!166363 List!35862)) (Broken!26753 (value!166364 List!35862)) (True!10701) (RightBrace!5350) (RightBracket!5350) (Colon!5350) (Null!5350) (Comma!5350) (LeftBracket!5350) (False!10701) (LeftBrace!5350) (ImaginaryLiteralValue!5350 (text!37896 List!35862)) (StringLiteralValue!16050 (value!166365 List!35862)) (EOFValue!5350 (value!166366 List!35862)) (IdentValue!5350 (value!166367 List!35862)) (DelimiterValue!10701 (value!166368 List!35862)) (DedentValue!5350 (value!166369 List!35862)) (NewLineValue!5350 (value!166370 List!35862)) (IntegerValue!16050 (value!166371 (_ BitVec 32)) (text!37897 List!35862)) (IntegerValue!16051 (value!166372 Int) (text!37898 List!35862)) (Times!5350) (Or!5350) (Equal!5350) (Minus!5350) (Broken!26754 (value!166373 List!35862)) (And!5350) (Div!5350) (LessEqual!5350) (Mod!5350) (Concat!15230) (Not!5350) (Plus!5350) (SpaceValue!5350 (value!166374 List!35862)) (IntegerValue!16052 (value!166375 Int) (text!37899 List!35862)) (StringLiteralValue!16051 (text!37900 List!35862)) (FloatLiteralValue!10701 (text!37901 List!35862)) (BytesLiteralValue!5350 (value!166376 List!35862)) (CommentValue!10701 (value!166377 List!35862)) (StringLiteralValue!16052 (value!166378 List!35862)) (ErrorTokenValue!5350 (msg!5411 List!35862)) )
))
(declare-datatypes ((List!35863 0))(
  ( (Nil!35739) (Cons!35739 (h!41159 C!19944) (t!235202 List!35863)) )
))
(declare-datatypes ((IArray!21235 0))(
  ( (IArray!21236 (innerList!10675 List!35863)) )
))
(declare-datatypes ((Conc!10615 0))(
  ( (Node!10615 (left!27797 Conc!10615) (right!28127 Conc!10615) (csize!21460 Int) (cheight!10826 Int)) (Leaf!16786 (xs!13733 IArray!21235) (csize!21461 Int)) (Empty!10615) )
))
(declare-datatypes ((BalanceConc!20844 0))(
  ( (BalanceConc!20845 (c!534383 Conc!10615)) )
))
(declare-datatypes ((String!40084 0))(
  ( (String!40085 (value!166379 String)) )
))
(declare-datatypes ((TokenValueInjection!10128 0))(
  ( (TokenValueInjection!10129 (toValue!7180 Int) (toChars!7039 Int)) )
))
(declare-datatypes ((Rule!10040 0))(
  ( (Rule!10041 (regex!5120 Regex!9879) (tag!5628 String!40084) (isSeparator!5120 Bool) (transformation!5120 TokenValueInjection!10128)) )
))
(declare-datatypes ((List!35864 0))(
  ( (Nil!35740) (Cons!35740 (h!41160 Rule!10040) (t!235203 List!35864)) )
))
(declare-fun rules!2135 () List!35864)

(declare-fun rulesInvariant!4106 (LexerInterface!4709 List!35864) Bool)

(assert (=> b!3181516 (= res!1293014 (rulesInvariant!4106 thiss!18206 rules!2135))))

(declare-fun b!3181517 () Bool)

(declare-fun res!1293011 () Bool)

(declare-fun e!1982142 () Bool)

(assert (=> b!3181517 (=> (not res!1293011) (not e!1982142))))

(declare-datatypes ((Token!9606 0))(
  ( (Token!9607 (value!166380 TokenValue!5350) (rule!7534 Rule!10040) (size!26970 Int) (originalCharacters!5834 List!35863)) )
))
(declare-fun separatorToken!241 () Token!9606)

(declare-fun rulesProduceIndividualToken!2201 (LexerInterface!4709 List!35864 Token!9606) Bool)

(assert (=> b!3181517 (= res!1293011 (rulesProduceIndividualToken!2201 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1982156 () Bool)

(declare-fun b!3181518 () Bool)

(declare-fun e!1982166 () Bool)

(declare-fun tp!1006459 () Bool)

(declare-fun inv!48588 (String!40084) Bool)

(declare-fun inv!48591 (TokenValueInjection!10128) Bool)

(assert (=> b!3181518 (= e!1982166 (and tp!1006459 (inv!48588 (tag!5628 (rule!7534 separatorToken!241))) (inv!48591 (transformation!5120 (rule!7534 separatorToken!241))) e!1982156))))

(declare-fun b!3181519 () Bool)

(declare-fun e!1982149 () Bool)

(declare-fun e!1982155 () Bool)

(assert (=> b!3181519 (= e!1982149 e!1982155)))

(declare-fun res!1293023 () Bool)

(assert (=> b!3181519 (=> (not res!1293023) (not e!1982155))))

(declare-fun lt!1069515 () Rule!10040)

(declare-fun lt!1069506 () List!35863)

(declare-fun matchR!4537 (Regex!9879 List!35863) Bool)

(assert (=> b!3181519 (= res!1293023 (matchR!4537 (regex!5120 lt!1069515) lt!1069506))))

(declare-datatypes ((Option!6971 0))(
  ( (None!6970) (Some!6970 (v!35424 Rule!10040)) )
))
(declare-fun lt!1069524 () Option!6971)

(declare-fun get!11365 (Option!6971) Rule!10040)

(assert (=> b!3181519 (= lt!1069515 (get!11365 lt!1069524))))

(declare-fun b!3181520 () Bool)

(declare-fun res!1293022 () Bool)

(assert (=> b!3181520 (=> (not res!1293022) (not e!1982142))))

(declare-datatypes ((List!35865 0))(
  ( (Nil!35741) (Cons!35741 (h!41161 Token!9606) (t!235204 List!35865)) )
))
(declare-fun tokens!494 () List!35865)

(declare-fun lambda!116413 () Int)

(declare-fun forall!7234 (List!35865 Int) Bool)

(assert (=> b!3181520 (= res!1293022 (forall!7234 tokens!494 lambda!116413))))

(declare-fun e!1982153 () Bool)

(declare-fun b!3181521 () Bool)

(declare-fun tp!1006460 () Bool)

(declare-fun inv!21 (TokenValue!5350) Bool)

(assert (=> b!3181521 (= e!1982153 (and (inv!21 (value!166380 separatorToken!241)) e!1982166 tp!1006460))))

(declare-fun b!3181522 () Bool)

(assert (=> b!3181522 (= e!1982155 (= (rule!7534 separatorToken!241) lt!1069515))))

(declare-fun b!3181523 () Bool)

(declare-fun e!1982167 () Bool)

(assert (=> b!3181523 (= e!1982167 true)))

(declare-fun lt!1069514 () Bool)

(declare-fun lt!1069509 () C!19944)

(declare-fun contains!6319 (List!35863 C!19944) Bool)

(assert (=> b!3181523 (= lt!1069514 (contains!6319 lt!1069506 lt!1069509))))

(declare-fun b!3181524 () Bool)

(declare-fun res!1293019 () Bool)

(assert (=> b!3181524 (=> (not res!1293019) (not e!1982142))))

(get-info :version)

(assert (=> b!3181524 (= res!1293019 (and (not ((_ is Nil!35741) tokens!494)) ((_ is Nil!35741) (t!235204 tokens!494))))))

(declare-fun e!1982154 () Bool)

(declare-fun tp!1006462 () Bool)

(declare-fun b!3181525 () Bool)

(declare-fun e!1982161 () Bool)

(assert (=> b!3181525 (= e!1982161 (and tp!1006462 (inv!48588 (tag!5628 (h!41160 rules!2135))) (inv!48591 (transformation!5120 (h!41160 rules!2135))) e!1982154))))

(assert (=> b!3181526 (= e!1982154 (and tp!1006466 tp!1006464))))

(declare-fun b!3181527 () Bool)

(declare-fun e!1982164 () Bool)

(declare-fun e!1982158 () Bool)

(assert (=> b!3181527 (= e!1982164 e!1982158)))

(declare-fun res!1293015 () Bool)

(assert (=> b!3181527 (=> res!1293015 e!1982158)))

(assert (=> b!3181527 (= res!1293015 (isSeparator!5120 (rule!7534 (h!41161 tokens!494))))))

(declare-datatypes ((Unit!50142 0))(
  ( (Unit!50143) )
))
(declare-fun lt!1069526 () Unit!50142)

(declare-fun forallContained!1103 (List!35865 Int Token!9606) Unit!50142)

(assert (=> b!3181527 (= lt!1069526 (forallContained!1103 tokens!494 lambda!116413 (h!41161 tokens!494)))))

(declare-fun e!1982160 () Bool)

(declare-fun e!1982152 () Bool)

(declare-fun b!3181528 () Bool)

(declare-fun tp!1006457 () Bool)

(assert (=> b!3181528 (= e!1982152 (and tp!1006457 (inv!48588 (tag!5628 (rule!7534 (h!41161 tokens!494)))) (inv!48591 (transformation!5120 (rule!7534 (h!41161 tokens!494)))) e!1982160))))

(declare-fun b!3181529 () Bool)

(declare-fun res!1293028 () Bool)

(assert (=> b!3181529 (=> (not res!1293028) (not e!1982142))))

(assert (=> b!3181529 (= res!1293028 (isSeparator!5120 (rule!7534 separatorToken!241)))))

(declare-fun b!3181530 () Bool)

(declare-fun res!1293024 () Bool)

(assert (=> b!3181530 (=> res!1293024 e!1982167)))

(declare-fun validRegex!4530 (Regex!9879) Bool)

(assert (=> b!3181530 (= res!1293024 (not (validRegex!4530 (regex!5120 (rule!7534 separatorToken!241)))))))

(declare-fun b!3181531 () Bool)

(declare-fun tp!1006458 () Bool)

(declare-fun e!1982162 () Bool)

(assert (=> b!3181531 (= e!1982162 (and (inv!21 (value!166380 (h!41161 tokens!494))) e!1982152 tp!1006458))))

(declare-fun b!3181532 () Bool)

(declare-fun e!1982144 () Bool)

(declare-fun e!1982151 () Bool)

(assert (=> b!3181532 (= e!1982144 e!1982151)))

(declare-fun res!1293021 () Bool)

(assert (=> b!3181532 (=> res!1293021 e!1982151)))

(declare-fun lt!1069523 () List!35863)

(declare-fun lt!1069513 () List!35863)

(declare-fun lt!1069517 () List!35863)

(assert (=> b!3181532 (= res!1293021 (or (not (= lt!1069513 lt!1069517)) (not (= lt!1069523 lt!1069517))))))

(declare-fun list!12685 (BalanceConc!20844) List!35863)

(declare-fun charsOf!3142 (Token!9606) BalanceConc!20844)

(assert (=> b!3181532 (= lt!1069517 (list!12685 (charsOf!3142 (h!41161 tokens!494))))))

(declare-fun b!3181533 () Bool)

(declare-fun e!1982147 () Bool)

(assert (=> b!3181533 (= e!1982158 e!1982147)))

(declare-fun res!1293031 () Bool)

(assert (=> b!3181533 (=> res!1293031 e!1982147)))

(declare-fun lt!1069510 () BalanceConc!20844)

(declare-fun ++!8544 (List!35863 List!35863) List!35863)

(assert (=> b!3181533 (= res!1293031 (not (= (list!12685 lt!1069510) (++!8544 lt!1069517 lt!1069506))))))

(assert (=> b!3181533 (= lt!1069506 (list!12685 (charsOf!3142 separatorToken!241)))))

(declare-datatypes ((IArray!21237 0))(
  ( (IArray!21238 (innerList!10676 List!35865)) )
))
(declare-datatypes ((Conc!10616 0))(
  ( (Node!10616 (left!27798 Conc!10616) (right!28128 Conc!10616) (csize!21462 Int) (cheight!10827 Int)) (Leaf!16787 (xs!13734 IArray!21237) (csize!21463 Int)) (Empty!10616) )
))
(declare-datatypes ((BalanceConc!20846 0))(
  ( (BalanceConc!20847 (c!534384 Conc!10616)) )
))
(declare-fun lt!1069518 () BalanceConc!20846)

(declare-fun printWithSeparatorToken!18 (LexerInterface!4709 BalanceConc!20846 Token!9606) BalanceConc!20844)

(assert (=> b!3181533 (= lt!1069510 (printWithSeparatorToken!18 thiss!18206 lt!1069518 separatorToken!241))))

(declare-fun b!3181534 () Bool)

(assert (=> b!3181534 (= e!1982157 e!1982142)))

(declare-fun res!1293026 () Bool)

(assert (=> b!3181534 (=> (not res!1293026) (not e!1982142))))

(declare-fun rulesProduceEachTokenIndividually!1160 (LexerInterface!4709 List!35864 BalanceConc!20846) Bool)

(assert (=> b!3181534 (= res!1293026 (rulesProduceEachTokenIndividually!1160 thiss!18206 rules!2135 lt!1069518))))

(declare-fun seqFromList!3319 (List!35865) BalanceConc!20846)

(assert (=> b!3181534 (= lt!1069518 (seqFromList!3319 tokens!494))))

(declare-fun b!3181535 () Bool)

(assert (=> b!3181535 (= e!1982142 (not e!1982144))))

(declare-fun res!1293018 () Bool)

(assert (=> b!3181535 (=> res!1293018 e!1982144)))

(assert (=> b!3181535 (= res!1293018 (not (= lt!1069523 lt!1069513)))))

(declare-fun printList!1263 (LexerInterface!4709 List!35865) List!35863)

(assert (=> b!3181535 (= lt!1069513 (printList!1263 thiss!18206 (Cons!35741 (h!41161 tokens!494) Nil!35741)))))

(declare-fun lt!1069512 () BalanceConc!20844)

(assert (=> b!3181535 (= lt!1069523 (list!12685 lt!1069512))))

(declare-fun lt!1069511 () BalanceConc!20846)

(declare-fun printTailRec!1208 (LexerInterface!4709 BalanceConc!20846 Int BalanceConc!20844) BalanceConc!20844)

(assert (=> b!3181535 (= lt!1069512 (printTailRec!1208 thiss!18206 lt!1069511 0 (BalanceConc!20845 Empty!10615)))))

(declare-fun print!1776 (LexerInterface!4709 BalanceConc!20846) BalanceConc!20844)

(assert (=> b!3181535 (= lt!1069512 (print!1776 thiss!18206 lt!1069511))))

(declare-fun singletonSeq!2216 (Token!9606) BalanceConc!20846)

(assert (=> b!3181535 (= lt!1069511 (singletonSeq!2216 (h!41161 tokens!494)))))

(declare-fun b!3181536 () Bool)

(declare-fun e!1982168 () Bool)

(declare-fun tp!1006467 () Bool)

(assert (=> b!3181536 (= e!1982168 (and e!1982161 tp!1006467))))

(declare-fun b!3181537 () Bool)

(declare-fun e!1982165 () Bool)

(declare-fun lt!1069522 () Rule!10040)

(assert (=> b!3181537 (= e!1982165 (= (rule!7534 (h!41161 tokens!494)) lt!1069522))))

(declare-fun b!3181538 () Bool)

(assert (=> b!3181538 (= e!1982151 e!1982164)))

(declare-fun res!1293012 () Bool)

(assert (=> b!3181538 (=> res!1293012 e!1982164)))

(declare-fun lt!1069508 () BalanceConc!20844)

(declare-fun isEmpty!19859 (BalanceConc!20846) Bool)

(declare-datatypes ((tuple2!35078 0))(
  ( (tuple2!35079 (_1!20673 BalanceConc!20846) (_2!20673 BalanceConc!20844)) )
))
(declare-fun lex!2049 (LexerInterface!4709 List!35864 BalanceConc!20844) tuple2!35078)

(assert (=> b!3181538 (= res!1293012 (isEmpty!19859 (_1!20673 (lex!2049 thiss!18206 rules!2135 lt!1069508))))))

(declare-fun seqFromList!3320 (List!35863) BalanceConc!20844)

(assert (=> b!3181538 (= lt!1069508 (seqFromList!3320 lt!1069517))))

(declare-fun b!3181539 () Bool)

(declare-fun e!1982146 () Bool)

(assert (=> b!3181539 (= e!1982146 e!1982165)))

(declare-fun res!1293027 () Bool)

(assert (=> b!3181539 (=> (not res!1293027) (not e!1982165))))

(assert (=> b!3181539 (= res!1293027 (matchR!4537 (regex!5120 lt!1069522) lt!1069517))))

(declare-fun lt!1069519 () Option!6971)

(assert (=> b!3181539 (= lt!1069522 (get!11365 lt!1069519))))

(declare-fun e!1982145 () Bool)

(declare-fun b!3181540 () Bool)

(declare-fun tp!1006456 () Bool)

(declare-fun inv!48592 (Token!9606) Bool)

(assert (=> b!3181540 (= e!1982145 (and (inv!48592 (h!41161 tokens!494)) e!1982162 tp!1006456))))

(assert (=> b!3181541 (= e!1982156 (and tp!1006465 tp!1006468))))

(assert (=> b!3181542 (= e!1982160 (and tp!1006461 tp!1006463))))

(declare-fun b!3181543 () Bool)

(assert (=> b!3181543 (= e!1982147 e!1982167)))

(declare-fun res!1293025 () Bool)

(assert (=> b!3181543 (=> res!1293025 e!1982167)))

(declare-fun usedCharacters!464 (Regex!9879) List!35863)

(assert (=> b!3181543 (= res!1293025 (contains!6319 (usedCharacters!464 (regex!5120 (rule!7534 separatorToken!241))) lt!1069509))))

(declare-fun head!6945 (List!35863) C!19944)

(assert (=> b!3181543 (= lt!1069509 (head!6945 lt!1069506))))

(declare-datatypes ((tuple2!35080 0))(
  ( (tuple2!35081 (_1!20674 Token!9606) (_2!20674 List!35863)) )
))
(declare-datatypes ((Option!6972 0))(
  ( (None!6971) (Some!6971 (v!35425 tuple2!35080)) )
))
(declare-fun maxPrefixOneRule!1514 (LexerInterface!4709 Rule!10040 List!35863) Option!6972)

(declare-fun apply!8036 (TokenValueInjection!10128 BalanceConc!20844) TokenValue!5350)

(declare-fun size!26971 (List!35863) Int)

(assert (=> b!3181543 (= (maxPrefixOneRule!1514 thiss!18206 (rule!7534 (h!41161 tokens!494)) lt!1069517) (Some!6971 (tuple2!35081 (Token!9607 (apply!8036 (transformation!5120 (rule!7534 (h!41161 tokens!494))) lt!1069508) (rule!7534 (h!41161 tokens!494)) (size!26971 lt!1069517) lt!1069517) Nil!35739)))))

(declare-fun lt!1069525 () Unit!50142)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!627 (LexerInterface!4709 List!35864 List!35863 List!35863 List!35863 Rule!10040) Unit!50142)

(assert (=> b!3181543 (= lt!1069525 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!627 thiss!18206 rules!2135 lt!1069517 lt!1069517 Nil!35739 (rule!7534 (h!41161 tokens!494))))))

(assert (=> b!3181543 e!1982149))

(declare-fun res!1293029 () Bool)

(assert (=> b!3181543 (=> (not res!1293029) (not e!1982149))))

(declare-fun isDefined!5464 (Option!6971) Bool)

(assert (=> b!3181543 (= res!1293029 (isDefined!5464 lt!1069524))))

(declare-fun getRuleFromTag!849 (LexerInterface!4709 List!35864 String!40084) Option!6971)

(assert (=> b!3181543 (= lt!1069524 (getRuleFromTag!849 thiss!18206 rules!2135 (tag!5628 (rule!7534 separatorToken!241))))))

(declare-fun lt!1069521 () Unit!50142)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!849 (LexerInterface!4709 List!35864 List!35863 Token!9606) Unit!50142)

(assert (=> b!3181543 (= lt!1069521 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!849 thiss!18206 rules!2135 lt!1069506 separatorToken!241))))

(assert (=> b!3181543 e!1982146))

(declare-fun res!1293017 () Bool)

(assert (=> b!3181543 (=> (not res!1293017) (not e!1982146))))

(assert (=> b!3181543 (= res!1293017 (isDefined!5464 lt!1069519))))

(assert (=> b!3181543 (= lt!1069519 (getRuleFromTag!849 thiss!18206 rules!2135 (tag!5628 (rule!7534 (h!41161 tokens!494)))))))

(declare-fun lt!1069516 () Unit!50142)

(assert (=> b!3181543 (= lt!1069516 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!849 thiss!18206 rules!2135 lt!1069517 (h!41161 tokens!494)))))

(declare-fun lt!1069520 () Unit!50142)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!770 (LexerInterface!4709 List!35864 List!35865 Token!9606) Unit!50142)

(assert (=> b!3181543 (= lt!1069520 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!770 thiss!18206 rules!2135 tokens!494 (h!41161 tokens!494)))))

(declare-fun isEmpty!19860 (List!35863) Bool)

(declare-fun getSuffix!1336 (List!35863 List!35863) List!35863)

(assert (=> b!3181543 (isEmpty!19860 (getSuffix!1336 lt!1069517 lt!1069517))))

(declare-fun lt!1069507 () Unit!50142)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!14 (List!35863) Unit!50142)

(assert (=> b!3181543 (= lt!1069507 (lemmaGetSuffixOnListWithItSelfIsEmpty!14 lt!1069517))))

(declare-fun b!3181544 () Bool)

(declare-fun res!1293016 () Bool)

(assert (=> b!3181544 (=> (not res!1293016) (not e!1982157))))

(declare-fun isEmpty!19861 (List!35864) Bool)

(assert (=> b!3181544 (= res!1293016 (not (isEmpty!19861 rules!2135)))))

(declare-fun b!3181545 () Bool)

(declare-fun res!1293030 () Bool)

(assert (=> b!3181545 (=> res!1293030 e!1982151)))

(assert (=> b!3181545 (= res!1293030 (not (rulesProduceIndividualToken!2201 thiss!18206 rules!2135 (h!41161 tokens!494))))))

(declare-fun b!3181546 () Bool)

(declare-fun res!1293013 () Bool)

(assert (=> b!3181546 (=> (not res!1293013) (not e!1982142))))

(declare-fun sepAndNonSepRulesDisjointChars!1314 (List!35864 List!35864) Bool)

(assert (=> b!3181546 (= res!1293013 (sepAndNonSepRulesDisjointChars!1314 rules!2135 rules!2135))))

(declare-fun res!1293020 () Bool)

(assert (=> start!298090 (=> (not res!1293020) (not e!1982157))))

(assert (=> start!298090 (= res!1293020 ((_ is Lexer!4707) thiss!18206))))

(assert (=> start!298090 e!1982157))

(assert (=> start!298090 true))

(assert (=> start!298090 e!1982168))

(assert (=> start!298090 (and (inv!48592 separatorToken!241) e!1982153)))

(assert (=> start!298090 e!1982145))

(assert (= (and start!298090 res!1293020) b!3181544))

(assert (= (and b!3181544 res!1293016) b!3181516))

(assert (= (and b!3181516 res!1293014) b!3181534))

(assert (= (and b!3181534 res!1293026) b!3181517))

(assert (= (and b!3181517 res!1293011) b!3181529))

(assert (= (and b!3181529 res!1293028) b!3181520))

(assert (= (and b!3181520 res!1293022) b!3181546))

(assert (= (and b!3181546 res!1293013) b!3181524))

(assert (= (and b!3181524 res!1293019) b!3181535))

(assert (= (and b!3181535 (not res!1293018)) b!3181532))

(assert (= (and b!3181532 (not res!1293021)) b!3181545))

(assert (= (and b!3181545 (not res!1293030)) b!3181538))

(assert (= (and b!3181538 (not res!1293012)) b!3181527))

(assert (= (and b!3181527 (not res!1293015)) b!3181533))

(assert (= (and b!3181533 (not res!1293031)) b!3181543))

(assert (= (and b!3181543 res!1293017) b!3181539))

(assert (= (and b!3181539 res!1293027) b!3181537))

(assert (= (and b!3181543 res!1293029) b!3181519))

(assert (= (and b!3181519 res!1293023) b!3181522))

(assert (= (and b!3181543 (not res!1293025)) b!3181530))

(assert (= (and b!3181530 (not res!1293024)) b!3181523))

(assert (= b!3181525 b!3181526))

(assert (= b!3181536 b!3181525))

(assert (= (and start!298090 ((_ is Cons!35740) rules!2135)) b!3181536))

(assert (= b!3181518 b!3181541))

(assert (= b!3181521 b!3181518))

(assert (= start!298090 b!3181521))

(assert (= b!3181528 b!3181542))

(assert (= b!3181531 b!3181528))

(assert (= b!3181540 b!3181531))

(assert (= (and start!298090 ((_ is Cons!35741) tokens!494)) b!3181540))

(declare-fun m!3438249 () Bool)

(assert (=> b!3181520 m!3438249))

(declare-fun m!3438251 () Bool)

(assert (=> b!3181545 m!3438251))

(declare-fun m!3438253 () Bool)

(assert (=> b!3181521 m!3438253))

(declare-fun m!3438255 () Bool)

(assert (=> b!3181518 m!3438255))

(declare-fun m!3438257 () Bool)

(assert (=> b!3181518 m!3438257))

(declare-fun m!3438259 () Bool)

(assert (=> b!3181539 m!3438259))

(declare-fun m!3438261 () Bool)

(assert (=> b!3181539 m!3438261))

(declare-fun m!3438263 () Bool)

(assert (=> b!3181530 m!3438263))

(declare-fun m!3438265 () Bool)

(assert (=> b!3181516 m!3438265))

(declare-fun m!3438267 () Bool)

(assert (=> b!3181544 m!3438267))

(declare-fun m!3438269 () Bool)

(assert (=> b!3181531 m!3438269))

(declare-fun m!3438271 () Bool)

(assert (=> b!3181534 m!3438271))

(declare-fun m!3438273 () Bool)

(assert (=> b!3181534 m!3438273))

(declare-fun m!3438275 () Bool)

(assert (=> b!3181543 m!3438275))

(declare-fun m!3438277 () Bool)

(assert (=> b!3181543 m!3438277))

(declare-fun m!3438279 () Bool)

(assert (=> b!3181543 m!3438279))

(declare-fun m!3438281 () Bool)

(assert (=> b!3181543 m!3438281))

(declare-fun m!3438283 () Bool)

(assert (=> b!3181543 m!3438283))

(declare-fun m!3438285 () Bool)

(assert (=> b!3181543 m!3438285))

(declare-fun m!3438287 () Bool)

(assert (=> b!3181543 m!3438287))

(declare-fun m!3438289 () Bool)

(assert (=> b!3181543 m!3438289))

(declare-fun m!3438291 () Bool)

(assert (=> b!3181543 m!3438291))

(declare-fun m!3438293 () Bool)

(assert (=> b!3181543 m!3438293))

(declare-fun m!3438295 () Bool)

(assert (=> b!3181543 m!3438295))

(assert (=> b!3181543 m!3438293))

(declare-fun m!3438297 () Bool)

(assert (=> b!3181543 m!3438297))

(declare-fun m!3438299 () Bool)

(assert (=> b!3181543 m!3438299))

(assert (=> b!3181543 m!3438289))

(declare-fun m!3438301 () Bool)

(assert (=> b!3181543 m!3438301))

(declare-fun m!3438303 () Bool)

(assert (=> b!3181543 m!3438303))

(declare-fun m!3438305 () Bool)

(assert (=> b!3181543 m!3438305))

(declare-fun m!3438307 () Bool)

(assert (=> b!3181543 m!3438307))

(declare-fun m!3438309 () Bool)

(assert (=> b!3181519 m!3438309))

(declare-fun m!3438311 () Bool)

(assert (=> b!3181519 m!3438311))

(declare-fun m!3438313 () Bool)

(assert (=> b!3181523 m!3438313))

(declare-fun m!3438315 () Bool)

(assert (=> b!3181538 m!3438315))

(declare-fun m!3438317 () Bool)

(assert (=> b!3181538 m!3438317))

(declare-fun m!3438319 () Bool)

(assert (=> b!3181538 m!3438319))

(declare-fun m!3438321 () Bool)

(assert (=> b!3181525 m!3438321))

(declare-fun m!3438323 () Bool)

(assert (=> b!3181525 m!3438323))

(declare-fun m!3438325 () Bool)

(assert (=> start!298090 m!3438325))

(declare-fun m!3438327 () Bool)

(assert (=> b!3181527 m!3438327))

(declare-fun m!3438329 () Bool)

(assert (=> b!3181528 m!3438329))

(declare-fun m!3438331 () Bool)

(assert (=> b!3181528 m!3438331))

(declare-fun m!3438333 () Bool)

(assert (=> b!3181540 m!3438333))

(declare-fun m!3438335 () Bool)

(assert (=> b!3181532 m!3438335))

(assert (=> b!3181532 m!3438335))

(declare-fun m!3438337 () Bool)

(assert (=> b!3181532 m!3438337))

(declare-fun m!3438339 () Bool)

(assert (=> b!3181535 m!3438339))

(declare-fun m!3438341 () Bool)

(assert (=> b!3181535 m!3438341))

(declare-fun m!3438343 () Bool)

(assert (=> b!3181535 m!3438343))

(declare-fun m!3438345 () Bool)

(assert (=> b!3181535 m!3438345))

(declare-fun m!3438347 () Bool)

(assert (=> b!3181535 m!3438347))

(declare-fun m!3438349 () Bool)

(assert (=> b!3181517 m!3438349))

(declare-fun m!3438351 () Bool)

(assert (=> b!3181533 m!3438351))

(declare-fun m!3438353 () Bool)

(assert (=> b!3181533 m!3438353))

(declare-fun m!3438355 () Bool)

(assert (=> b!3181533 m!3438355))

(declare-fun m!3438357 () Bool)

(assert (=> b!3181533 m!3438357))

(assert (=> b!3181533 m!3438353))

(declare-fun m!3438359 () Bool)

(assert (=> b!3181533 m!3438359))

(declare-fun m!3438361 () Bool)

(assert (=> b!3181546 m!3438361))

(check-sat (not b!3181536) b_and!210341 (not b_next!84585) (not b_next!84591) (not b!3181520) b_and!210333 (not start!298090) (not b!3181538) (not b!3181519) (not b!3181531) (not b!3181539) (not b!3181535) (not b_next!84587) (not b!3181546) (not b!3181544) (not b_next!84589) b_and!210337 (not b!3181545) (not b!3181521) b_and!210335 (not b!3181530) (not b_next!84595) b_and!210331 (not b!3181517) (not b!3181532) (not b_next!84593) (not b!3181518) (not b!3181527) (not b!3181533) (not b!3181540) b_and!210339 (not b!3181534) (not b!3181523) (not b!3181543) (not b!3181516) (not b!3181525) (not b!3181528))
(check-sat b_and!210341 (not b_next!84585) (not b_next!84591) b_and!210331 (not b_next!84593) b_and!210333 b_and!210339 (not b_next!84587) (not b_next!84589) b_and!210337 b_and!210335 (not b_next!84595))
