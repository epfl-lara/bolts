; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43682 () Bool)

(assert start!43682)

(declare-fun b!459960 () Bool)

(declare-fun b_free!12881 () Bool)

(declare-fun b_next!12881 () Bool)

(assert (=> b!459960 (= b_free!12881 (not b_next!12881))))

(declare-fun tp!127388 () Bool)

(declare-fun b_and!49417 () Bool)

(assert (=> b!459960 (= tp!127388 b_and!49417)))

(declare-fun b_free!12883 () Bool)

(declare-fun b_next!12883 () Bool)

(assert (=> b!459960 (= b_free!12883 (not b_next!12883))))

(declare-fun tp!127383 () Bool)

(declare-fun b_and!49419 () Bool)

(assert (=> b!459960 (= tp!127383 b_and!49419)))

(declare-fun b!459941 () Bool)

(declare-fun b_free!12885 () Bool)

(declare-fun b_next!12885 () Bool)

(assert (=> b!459941 (= b_free!12885 (not b_next!12885))))

(declare-fun tp!127382 () Bool)

(declare-fun b_and!49421 () Bool)

(assert (=> b!459941 (= tp!127382 b_and!49421)))

(declare-fun b_free!12887 () Bool)

(declare-fun b_next!12887 () Bool)

(assert (=> b!459941 (= b_free!12887 (not b_next!12887))))

(declare-fun tp!127390 () Bool)

(declare-fun b_and!49423 () Bool)

(assert (=> b!459941 (= tp!127390 b_and!49423)))

(declare-fun b!459942 () Bool)

(declare-fun b_free!12889 () Bool)

(declare-fun b_next!12889 () Bool)

(assert (=> b!459942 (= b_free!12889 (not b_next!12889))))

(declare-fun tp!127391 () Bool)

(declare-fun b_and!49425 () Bool)

(assert (=> b!459942 (= tp!127391 b_and!49425)))

(declare-fun b_free!12891 () Bool)

(declare-fun b_next!12891 () Bool)

(assert (=> b!459942 (= b_free!12891 (not b_next!12891))))

(declare-fun tp!127384 () Bool)

(declare-fun b_and!49427 () Bool)

(assert (=> b!459942 (= tp!127384 b_and!49427)))

(declare-fun bs!57016 () Bool)

(declare-fun b!459955 () Bool)

(declare-fun b!459958 () Bool)

(assert (= bs!57016 (and b!459955 b!459958)))

(declare-fun lambda!13542 () Int)

(declare-fun lambda!13541 () Int)

(assert (=> bs!57016 (not (= lambda!13542 lambda!13541))))

(declare-fun b!459982 () Bool)

(declare-fun e!281760 () Bool)

(assert (=> b!459982 (= e!281760 true)))

(declare-fun b!459981 () Bool)

(declare-fun e!281759 () Bool)

(assert (=> b!459981 (= e!281759 e!281760)))

(declare-fun b!459980 () Bool)

(declare-fun e!281758 () Bool)

(assert (=> b!459980 (= e!281758 e!281759)))

(assert (=> b!459955 e!281758))

(assert (= b!459981 b!459982))

(assert (= b!459980 b!459981))

(declare-datatypes ((List!4484 0))(
  ( (Nil!4474) (Cons!4474 (h!9871 (_ BitVec 16)) (t!71792 List!4484)) )
))
(declare-datatypes ((TokenValue!893 0))(
  ( (FloatLiteralValue!1786 (text!6696 List!4484)) (TokenValueExt!892 (__x!3273 Int)) (Broken!4465 (value!29113 List!4484)) (Object!902) (End!893) (Def!893) (Underscore!893) (Match!893) (Else!893) (Error!893) (Case!893) (If!893) (Extends!893) (Abstract!893) (Class!893) (Val!893) (DelimiterValue!1786 (del!953 List!4484)) (KeywordValue!899 (value!29114 List!4484)) (CommentValue!1786 (value!29115 List!4484)) (WhitespaceValue!1786 (value!29116 List!4484)) (IndentationValue!893 (value!29117 List!4484)) (String!5544) (Int32!893) (Broken!4466 (value!29118 List!4484)) (Boolean!894) (Unit!8084) (OperatorValue!896 (op!953 List!4484)) (IdentifierValue!1786 (value!29119 List!4484)) (IdentifierValue!1787 (value!29120 List!4484)) (WhitespaceValue!1787 (value!29121 List!4484)) (True!1786) (False!1786) (Broken!4467 (value!29122 List!4484)) (Broken!4468 (value!29123 List!4484)) (True!1787) (RightBrace!893) (RightBracket!893) (Colon!893) (Null!893) (Comma!893) (LeftBracket!893) (False!1787) (LeftBrace!893) (ImaginaryLiteralValue!893 (text!6697 List!4484)) (StringLiteralValue!2679 (value!29124 List!4484)) (EOFValue!893 (value!29125 List!4484)) (IdentValue!893 (value!29126 List!4484)) (DelimiterValue!1787 (value!29127 List!4484)) (DedentValue!893 (value!29128 List!4484)) (NewLineValue!893 (value!29129 List!4484)) (IntegerValue!2679 (value!29130 (_ BitVec 32)) (text!6698 List!4484)) (IntegerValue!2680 (value!29131 Int) (text!6699 List!4484)) (Times!893) (Or!893) (Equal!893) (Minus!893) (Broken!4469 (value!29132 List!4484)) (And!893) (Div!893) (LessEqual!893) (Mod!893) (Concat!1988) (Not!893) (Plus!893) (SpaceValue!893 (value!29133 List!4484)) (IntegerValue!2681 (value!29134 Int) (text!6700 List!4484)) (StringLiteralValue!2680 (text!6701 List!4484)) (FloatLiteralValue!1787 (text!6702 List!4484)) (BytesLiteralValue!893 (value!29135 List!4484)) (CommentValue!1787 (value!29136 List!4484)) (StringLiteralValue!2681 (value!29137 List!4484)) (ErrorTokenValue!893 (msg!954 List!4484)) )
))
(declare-datatypes ((C!3112 0))(
  ( (C!3113 (val!1442 Int)) )
))
(declare-datatypes ((List!4485 0))(
  ( (Nil!4475) (Cons!4475 (h!9872 C!3112) (t!71793 List!4485)) )
))
(declare-datatypes ((IArray!3129 0))(
  ( (IArray!3130 (innerList!1622 List!4485)) )
))
(declare-datatypes ((Conc!1564 0))(
  ( (Node!1564 (left!3782 Conc!1564) (right!4112 Conc!1564) (csize!3358 Int) (cheight!1775 Int)) (Leaf!2339 (xs!4195 IArray!3129) (csize!3359 Int)) (Empty!1564) )
))
(declare-datatypes ((BalanceConc!3136 0))(
  ( (BalanceConc!3137 (c!92678 Conc!1564)) )
))
(declare-datatypes ((TokenValueInjection!1558 0))(
  ( (TokenValueInjection!1559 (toValue!1690 Int) (toChars!1549 Int)) )
))
(declare-datatypes ((Regex!1095 0))(
  ( (ElementMatch!1095 (c!92679 C!3112)) (Concat!1989 (regOne!2702 Regex!1095) (regTwo!2702 Regex!1095)) (EmptyExpr!1095) (Star!1095 (reg!1424 Regex!1095)) (EmptyLang!1095) (Union!1095 (regOne!2703 Regex!1095) (regTwo!2703 Regex!1095)) )
))
(declare-datatypes ((String!5545 0))(
  ( (String!5546 (value!29138 String)) )
))
(declare-datatypes ((Rule!1542 0))(
  ( (Rule!1543 (regex!871 Regex!1095) (tag!1131 String!5545) (isSeparator!871 Bool) (transformation!871 TokenValueInjection!1558)) )
))
(declare-datatypes ((List!4486 0))(
  ( (Nil!4476) (Cons!4476 (h!9873 Rule!1542) (t!71794 List!4486)) )
))
(declare-fun rules!1920 () List!4486)

(get-info :version)

(assert (= (and b!459955 ((_ is Cons!4476) rules!1920)) b!459980))

(declare-fun order!3985 () Int)

(declare-fun order!3987 () Int)

(declare-fun dynLambda!2728 (Int Int) Int)

(declare-fun dynLambda!2729 (Int Int) Int)

(assert (=> b!459982 (< (dynLambda!2728 order!3985 (toValue!1690 (transformation!871 (h!9873 rules!1920)))) (dynLambda!2729 order!3987 lambda!13542))))

(declare-fun order!3989 () Int)

(declare-fun dynLambda!2730 (Int Int) Int)

(assert (=> b!459982 (< (dynLambda!2730 order!3989 (toChars!1549 (transformation!871 (h!9873 rules!1920)))) (dynLambda!2729 order!3987 lambda!13542))))

(assert (=> b!459955 true))

(declare-fun lt!205199 () List!4485)

(declare-fun lt!205187 () List!4485)

(declare-fun e!281749 () Bool)

(declare-fun lt!205194 () List!4485)

(declare-fun b!459938 () Bool)

(declare-fun ++!1306 (List!4485 List!4485) List!4485)

(assert (=> b!459938 (= e!281749 (not (= lt!205194 (++!1306 lt!205187 lt!205199))))))

(declare-fun b!459939 () Bool)

(declare-fun res!204648 () Bool)

(declare-fun e!281732 () Bool)

(assert (=> b!459939 (=> (not res!204648) (not e!281732))))

(declare-datatypes ((Token!1486 0))(
  ( (Token!1487 (value!29139 TokenValue!893) (rule!1566 Rule!1542) (size!3655 Int) (originalCharacters!914 List!4485)) )
))
(declare-fun separatorToken!170 () Token!1486)

(assert (=> b!459939 (= res!204648 (isSeparator!871 (rule!1566 separatorToken!170)))))

(declare-fun b!459940 () Bool)

(declare-fun res!204657 () Bool)

(declare-fun e!281734 () Bool)

(assert (=> b!459940 (=> (not res!204657) (not e!281734))))

(declare-datatypes ((LexerInterface!757 0))(
  ( (LexerInterfaceExt!754 (__x!3274 Int)) (Lexer!755) )
))
(declare-fun thiss!17480 () LexerInterface!757)

(declare-fun rulesInvariant!723 (LexerInterface!757 List!4486) Bool)

(assert (=> b!459940 (= res!204657 (rulesInvariant!723 thiss!17480 rules!1920))))

(declare-fun e!281742 () Bool)

(assert (=> b!459941 (= e!281742 (and tp!127382 tp!127390))))

(declare-fun e!281738 () Bool)

(assert (=> b!459942 (= e!281738 (and tp!127391 tp!127384))))

(declare-fun b!459943 () Bool)

(declare-fun e!281726 () Bool)

(declare-fun e!281727 () Bool)

(assert (=> b!459943 (= e!281726 e!281727)))

(declare-fun res!204661 () Bool)

(assert (=> b!459943 (=> res!204661 e!281727)))

(declare-fun lt!205195 () Bool)

(assert (=> b!459943 (= res!204661 lt!205195)))

(declare-fun e!281724 () Bool)

(assert (=> b!459943 e!281724))

(declare-fun res!204644 () Bool)

(assert (=> b!459943 (=> (not res!204644) (not e!281724))))

(declare-datatypes ((tuple2!5462 0))(
  ( (tuple2!5463 (_1!2947 Token!1486) (_2!2947 List!4485)) )
))
(declare-fun lt!205180 () tuple2!5462)

(declare-datatypes ((List!4487 0))(
  ( (Nil!4477) (Cons!4477 (h!9874 Token!1486) (t!71795 List!4487)) )
))
(declare-fun tokens!465 () List!4487)

(assert (=> b!459943 (= res!204644 (= (_1!2947 lt!205180) (h!9874 tokens!465)))))

(declare-datatypes ((Option!1176 0))(
  ( (None!1175) (Some!1175 (v!15518 tuple2!5462)) )
))
(declare-fun lt!205178 () Option!1176)

(declare-fun get!1644 (Option!1176) tuple2!5462)

(assert (=> b!459943 (= lt!205180 (get!1644 lt!205178))))

(declare-fun isDefined!1015 (Option!1176) Bool)

(assert (=> b!459943 (isDefined!1015 lt!205178)))

(declare-fun maxPrefix!473 (LexerInterface!757 List!4486 List!4485) Option!1176)

(assert (=> b!459943 (= lt!205178 (maxPrefix!473 thiss!17480 rules!1920 lt!205187))))

(declare-fun b!459944 () Bool)

(declare-fun res!204656 () Bool)

(assert (=> b!459944 (=> (not res!204656) (not e!281732))))

(declare-fun sepAndNonSepRulesDisjointChars!460 (List!4486 List!4486) Bool)

(assert (=> b!459944 (= res!204656 (sepAndNonSepRulesDisjointChars!460 rules!1920 rules!1920))))

(declare-fun b!459945 () Bool)

(declare-fun e!281735 () Bool)

(assert (=> b!459945 (= e!281732 e!281735)))

(declare-fun res!204643 () Bool)

(assert (=> b!459945 (=> (not res!204643) (not e!281735))))

(declare-fun lt!205193 () List!4485)

(assert (=> b!459945 (= res!204643 (= lt!205194 lt!205193))))

(declare-datatypes ((IArray!3131 0))(
  ( (IArray!3132 (innerList!1623 List!4487)) )
))
(declare-datatypes ((Conc!1565 0))(
  ( (Node!1565 (left!3783 Conc!1565) (right!4113 Conc!1565) (csize!3360 Int) (cheight!1776 Int)) (Leaf!2340 (xs!4196 IArray!3131) (csize!3361 Int)) (Empty!1565) )
))
(declare-datatypes ((BalanceConc!3138 0))(
  ( (BalanceConc!3139 (c!92680 Conc!1565)) )
))
(declare-fun lt!205196 () BalanceConc!3138)

(declare-fun list!1992 (BalanceConc!3136) List!4485)

(declare-fun printWithSeparatorTokenWhenNeededRec!430 (LexerInterface!757 List!4486 BalanceConc!3138 Token!1486 Int) BalanceConc!3136)

(assert (=> b!459945 (= lt!205193 (list!1992 (printWithSeparatorTokenWhenNeededRec!430 thiss!17480 rules!1920 lt!205196 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!438 (LexerInterface!757 List!4486 List!4487 Token!1486) List!4485)

(assert (=> b!459945 (= lt!205194 (printWithSeparatorTokenWhenNeededList!438 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!127393 () Bool)

(declare-fun b!459946 () Bool)

(declare-fun e!281744 () Bool)

(declare-fun inv!5552 (String!5545) Bool)

(declare-fun inv!5555 (TokenValueInjection!1558) Bool)

(assert (=> b!459946 (= e!281744 (and tp!127393 (inv!5552 (tag!1131 (rule!1566 (h!9874 tokens!465)))) (inv!5555 (transformation!871 (rule!1566 (h!9874 tokens!465)))) e!281738))))

(declare-fun b!459947 () Bool)

(assert (=> b!459947 (= e!281734 e!281732)))

(declare-fun res!204641 () Bool)

(assert (=> b!459947 (=> (not res!204641) (not e!281732))))

(declare-fun rulesProduceEachTokenIndividually!549 (LexerInterface!757 List!4486 BalanceConc!3138) Bool)

(assert (=> b!459947 (= res!204641 (rulesProduceEachTokenIndividually!549 thiss!17480 rules!1920 lt!205196))))

(declare-fun seqFromList!1107 (List!4487) BalanceConc!3138)

(assert (=> b!459947 (= lt!205196 (seqFromList!1107 tokens!465))))

(declare-fun e!281748 () Bool)

(declare-fun b!459948 () Bool)

(declare-fun e!281750 () Bool)

(declare-fun tp!127389 () Bool)

(assert (=> b!459948 (= e!281750 (and tp!127389 (inv!5552 (tag!1131 (rule!1566 separatorToken!170))) (inv!5555 (transformation!871 (rule!1566 separatorToken!170))) e!281748))))

(declare-fun b!459949 () Bool)

(declare-fun res!204642 () Bool)

(declare-fun e!281737 () Bool)

(assert (=> b!459949 (=> res!204642 e!281737)))

(declare-fun isEmpty!3458 (BalanceConc!3138) Bool)

(declare-datatypes ((tuple2!5464 0))(
  ( (tuple2!5465 (_1!2948 BalanceConc!3138) (_2!2948 BalanceConc!3136)) )
))
(declare-fun lex!549 (LexerInterface!757 List!4486 BalanceConc!3136) tuple2!5464)

(declare-fun seqFromList!1108 (List!4485) BalanceConc!3136)

(assert (=> b!459949 (= res!204642 (isEmpty!3458 (_1!2948 (lex!549 thiss!17480 rules!1920 (seqFromList!1108 lt!205187)))))))

(declare-fun b!459950 () Bool)

(declare-fun res!204662 () Bool)

(assert (=> b!459950 (=> (not res!204662) (not e!281732))))

(assert (=> b!459950 (= res!204662 ((_ is Cons!4477) tokens!465))))

(declare-fun b!459951 () Bool)

(declare-fun matchR!413 (Regex!1095 List!4485) Bool)

(assert (=> b!459951 (= e!281724 (matchR!413 (regex!871 (rule!1566 (h!9874 tokens!465))) lt!205187))))

(declare-fun b!459952 () Bool)

(declare-fun e!281751 () Bool)

(assert (=> b!459952 (= e!281727 e!281751)))

(declare-fun res!204647 () Bool)

(assert (=> b!459952 (=> res!204647 e!281751)))

(declare-fun isPrefix!523 (List!4485 List!4485) Bool)

(assert (=> b!459952 (= res!204647 (not (isPrefix!523 lt!205187 lt!205194)))))

(declare-fun lt!205190 () Option!1176)

(assert (=> b!459952 (= lt!205190 (maxPrefix!473 thiss!17480 rules!1920 lt!205194))))

(declare-fun lt!205197 () List!4485)

(assert (=> b!459952 (isPrefix!523 lt!205187 lt!205197)))

(assert (=> b!459952 (= lt!205197 (++!1306 lt!205187 lt!205199))))

(declare-datatypes ((Unit!8085 0))(
  ( (Unit!8086) )
))
(declare-fun lt!205188 () Unit!8085)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!408 (List!4485 List!4485) Unit!8085)

(assert (=> b!459952 (= lt!205188 (lemmaConcatTwoListThenFirstIsPrefix!408 lt!205187 lt!205199))))

(declare-fun lt!205191 () BalanceConc!3136)

(declare-fun filter!99 (List!4487 Int) List!4487)

(declare-fun list!1993 (BalanceConc!3138) List!4487)

(assert (=> b!459952 (= (filter!99 (list!1993 (_1!2948 (lex!549 thiss!17480 rules!1920 lt!205191))) lambda!13541) (t!71795 tokens!465))))

(declare-fun lt!205201 () Unit!8085)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!90 (LexerInterface!757 List!4486 List!4487 Token!1486) Unit!8085)

(assert (=> b!459952 (= lt!205201 (theoremInvertabilityFromTokensSepTokenWhenNeeded!90 thiss!17480 rules!1920 (t!71795 tokens!465) separatorToken!170))))

(declare-fun e!281731 () Bool)

(assert (=> b!459952 e!281731))

(declare-fun res!204649 () Bool)

(assert (=> b!459952 (=> res!204649 e!281731)))

(declare-fun isEmpty!3459 (List!4487) Bool)

(assert (=> b!459952 (= res!204649 (isEmpty!3459 tokens!465))))

(declare-fun lt!205200 () Unit!8085)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!272 (LexerInterface!757 List!4486 List!4487 Token!1486) Unit!8085)

(assert (=> b!459952 (= lt!205200 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!272 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!459953 () Bool)

(declare-fun res!204653 () Bool)

(assert (=> b!459953 (=> res!204653 e!281737)))

(declare-fun rulesProduceIndividualToken!506 (LexerInterface!757 List!4486 Token!1486) Bool)

(assert (=> b!459953 (= res!204653 (not (rulesProduceIndividualToken!506 thiss!17480 rules!1920 (h!9874 tokens!465))))))

(declare-fun b!459954 () Bool)

(declare-fun e!281743 () Bool)

(declare-fun e!281740 () Bool)

(declare-fun tp!127392 () Bool)

(assert (=> b!459954 (= e!281743 (and e!281740 tp!127392))))

(assert (=> b!459955 (= e!281737 e!281726)))

(declare-fun res!204650 () Bool)

(assert (=> b!459955 (=> res!204650 e!281726)))

(declare-datatypes ((tuple2!5466 0))(
  ( (tuple2!5467 (_1!2949 Token!1486) (_2!2949 BalanceConc!3136)) )
))
(declare-datatypes ((Option!1177 0))(
  ( (None!1176) (Some!1176 (v!15519 tuple2!5466)) )
))
(declare-fun isDefined!1016 (Option!1177) Bool)

(declare-fun maxPrefixZipperSequence!436 (LexerInterface!757 List!4486 BalanceConc!3136) Option!1177)

(assert (=> b!459955 (= res!204650 (not (isDefined!1016 (maxPrefixZipperSequence!436 thiss!17480 rules!1920 (seqFromList!1108 (originalCharacters!914 (h!9874 tokens!465)))))))))

(declare-fun lt!205185 () Unit!8085)

(declare-fun forallContained!424 (List!4487 Int Token!1486) Unit!8085)

(assert (=> b!459955 (= lt!205185 (forallContained!424 tokens!465 lambda!13542 (h!9874 tokens!465)))))

(assert (=> b!459955 (= lt!205187 (originalCharacters!914 (h!9874 tokens!465)))))

(declare-fun b!459956 () Bool)

(declare-fun tp!127381 () Bool)

(declare-fun e!281747 () Bool)

(declare-fun inv!21 (TokenValue!893) Bool)

(assert (=> b!459956 (= e!281747 (and (inv!21 (value!29139 (h!9874 tokens!465))) e!281744 tp!127381))))

(declare-fun b!459957 () Bool)

(declare-fun res!204640 () Bool)

(assert (=> b!459957 (=> (not res!204640) (not e!281735))))

(assert (=> b!459957 (= res!204640 (= (list!1992 (seqFromList!1108 lt!205194)) lt!205193))))

(declare-fun res!204646 () Bool)

(assert (=> b!459958 (=> (not res!204646) (not e!281732))))

(declare-fun forall!1302 (List!4487 Int) Bool)

(assert (=> b!459958 (= res!204646 (forall!1302 tokens!465 lambda!13541))))

(declare-fun tp!127385 () Bool)

(declare-fun b!459959 () Bool)

(assert (=> b!459959 (= e!281740 (and tp!127385 (inv!5552 (tag!1131 (h!9873 rules!1920))) (inv!5555 (transformation!871 (h!9873 rules!1920))) e!281742))))

(assert (=> b!459960 (= e!281748 (and tp!127388 tp!127383))))

(declare-fun b!459961 () Bool)

(declare-fun e!281745 () Bool)

(assert (=> b!459961 (= e!281745 e!281737)))

(declare-fun res!204654 () Bool)

(assert (=> b!459961 (=> res!204654 e!281737)))

(declare-fun lt!205183 () List!4485)

(declare-fun lt!205186 () List!4485)

(assert (=> b!459961 (= res!204654 (or (not (= lt!205186 lt!205183)) (not (= lt!205183 lt!205187)) (not (= lt!205186 lt!205187))))))

(declare-fun printList!431 (LexerInterface!757 List!4487) List!4485)

(assert (=> b!459961 (= lt!205183 (printList!431 thiss!17480 (Cons!4477 (h!9874 tokens!465) Nil!4477)))))

(declare-fun lt!205179 () BalanceConc!3136)

(assert (=> b!459961 (= lt!205186 (list!1992 lt!205179))))

(declare-fun lt!205182 () BalanceConc!3138)

(declare-fun printTailRec!443 (LexerInterface!757 BalanceConc!3138 Int BalanceConc!3136) BalanceConc!3136)

(assert (=> b!459961 (= lt!205179 (printTailRec!443 thiss!17480 lt!205182 0 (BalanceConc!3137 Empty!1564)))))

(declare-fun print!482 (LexerInterface!757 BalanceConc!3138) BalanceConc!3136)

(assert (=> b!459961 (= lt!205179 (print!482 thiss!17480 lt!205182))))

(declare-fun singletonSeq!417 (Token!1486) BalanceConc!3138)

(assert (=> b!459961 (= lt!205182 (singletonSeq!417 (h!9874 tokens!465)))))

(declare-fun b!459962 () Bool)

(assert (=> b!459962 (= e!281751 (= lt!205197 lt!205194))))

(declare-fun b!459963 () Bool)

(declare-fun e!281741 () Bool)

(assert (=> b!459963 (= e!281731 e!281741)))

(declare-fun res!204645 () Bool)

(assert (=> b!459963 (=> (not res!204645) (not e!281741))))

(declare-fun lt!205181 () Option!1176)

(assert (=> b!459963 (= res!204645 (isDefined!1015 lt!205181))))

(assert (=> b!459963 (= lt!205181 (maxPrefix!473 thiss!17480 rules!1920 lt!205194))))

(declare-fun b!459964 () Bool)

(declare-fun res!204660 () Bool)

(assert (=> b!459964 (=> (not res!204660) (not e!281724))))

(declare-fun isEmpty!3460 (List!4485) Bool)

(assert (=> b!459964 (= res!204660 (isEmpty!3460 (_2!2947 lt!205180)))))

(declare-fun b!459965 () Bool)

(declare-fun res!204639 () Bool)

(assert (=> b!459965 (=> (not res!204639) (not e!281732))))

(assert (=> b!459965 (= res!204639 (rulesProduceIndividualToken!506 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!281733 () Bool)

(declare-fun b!459966 () Bool)

(declare-fun tp!127387 () Bool)

(declare-fun inv!5556 (Token!1486) Bool)

(assert (=> b!459966 (= e!281733 (and (inv!5556 (h!9874 tokens!465)) e!281747 tp!127387))))

(declare-fun b!459967 () Bool)

(declare-fun e!281746 () Bool)

(assert (=> b!459967 (= e!281735 (not e!281746))))

(declare-fun res!204652 () Bool)

(assert (=> b!459967 (=> res!204652 e!281746)))

(assert (=> b!459967 (= res!204652 (not (= lt!205199 (list!1992 lt!205191))))))

(assert (=> b!459967 (= lt!205191 (printWithSeparatorTokenWhenNeededRec!430 thiss!17480 rules!1920 (seqFromList!1107 (t!71795 tokens!465)) separatorToken!170 0))))

(declare-fun lt!205184 () List!4485)

(declare-fun lt!205189 () List!4485)

(assert (=> b!459967 (= lt!205184 lt!205189)))

(declare-fun lt!205192 () List!4485)

(assert (=> b!459967 (= lt!205189 (++!1306 lt!205187 lt!205192))))

(declare-fun lt!205202 () List!4485)

(assert (=> b!459967 (= lt!205184 (++!1306 (++!1306 lt!205187 lt!205202) lt!205199))))

(declare-fun lt!205198 () Unit!8085)

(declare-fun lemmaConcatAssociativity!608 (List!4485 List!4485 List!4485) Unit!8085)

(assert (=> b!459967 (= lt!205198 (lemmaConcatAssociativity!608 lt!205187 lt!205202 lt!205199))))

(declare-fun charsOf!514 (Token!1486) BalanceConc!3136)

(assert (=> b!459967 (= lt!205187 (list!1992 (charsOf!514 (h!9874 tokens!465))))))

(assert (=> b!459967 (= lt!205192 (++!1306 lt!205202 lt!205199))))

(assert (=> b!459967 (= lt!205199 (printWithSeparatorTokenWhenNeededList!438 thiss!17480 rules!1920 (t!71795 tokens!465) separatorToken!170))))

(assert (=> b!459967 (= lt!205202 (list!1992 (charsOf!514 separatorToken!170)))))

(declare-fun res!204658 () Bool)

(assert (=> start!43682 (=> (not res!204658) (not e!281734))))

(assert (=> start!43682 (= res!204658 ((_ is Lexer!755) thiss!17480))))

(assert (=> start!43682 e!281734))

(assert (=> start!43682 true))

(assert (=> start!43682 e!281743))

(declare-fun e!281730 () Bool)

(assert (=> start!43682 (and (inv!5556 separatorToken!170) e!281730)))

(assert (=> start!43682 e!281733))

(declare-fun b!459968 () Bool)

(declare-fun res!204655 () Bool)

(assert (=> b!459968 (=> (not res!204655) (not e!281734))))

(declare-fun isEmpty!3461 (List!4486) Bool)

(assert (=> b!459968 (= res!204655 (not (isEmpty!3461 rules!1920)))))

(declare-fun b!459969 () Bool)

(declare-fun head!1126 (List!4487) Token!1486)

(assert (=> b!459969 (= e!281741 (= (_1!2947 (get!1644 lt!205181)) (head!1126 tokens!465)))))

(declare-fun b!459970 () Bool)

(assert (=> b!459970 (= e!281746 e!281745)))

(declare-fun res!204659 () Bool)

(assert (=> b!459970 (=> res!204659 e!281745)))

(assert (=> b!459970 (= res!204659 e!281749)))

(declare-fun res!204651 () Bool)

(assert (=> b!459970 (=> (not res!204651) (not e!281749))))

(assert (=> b!459970 (= res!204651 (not lt!205195))))

(assert (=> b!459970 (= lt!205195 (= lt!205194 lt!205189))))

(declare-fun tp!127386 () Bool)

(declare-fun b!459971 () Bool)

(assert (=> b!459971 (= e!281730 (and (inv!21 (value!29139 separatorToken!170)) e!281750 tp!127386))))

(assert (= (and start!43682 res!204658) b!459968))

(assert (= (and b!459968 res!204655) b!459940))

(assert (= (and b!459940 res!204657) b!459947))

(assert (= (and b!459947 res!204641) b!459965))

(assert (= (and b!459965 res!204639) b!459939))

(assert (= (and b!459939 res!204648) b!459958))

(assert (= (and b!459958 res!204646) b!459944))

(assert (= (and b!459944 res!204656) b!459950))

(assert (= (and b!459950 res!204662) b!459945))

(assert (= (and b!459945 res!204643) b!459957))

(assert (= (and b!459957 res!204640) b!459967))

(assert (= (and b!459967 (not res!204652)) b!459970))

(assert (= (and b!459970 res!204651) b!459938))

(assert (= (and b!459970 (not res!204659)) b!459961))

(assert (= (and b!459961 (not res!204654)) b!459953))

(assert (= (and b!459953 (not res!204653)) b!459949))

(assert (= (and b!459949 (not res!204642)) b!459955))

(assert (= (and b!459955 (not res!204650)) b!459943))

(assert (= (and b!459943 res!204644) b!459964))

(assert (= (and b!459964 res!204660) b!459951))

(assert (= (and b!459943 (not res!204661)) b!459952))

(assert (= (and b!459952 (not res!204649)) b!459963))

(assert (= (and b!459963 res!204645) b!459969))

(assert (= (and b!459952 (not res!204647)) b!459962))

(assert (= b!459959 b!459941))

(assert (= b!459954 b!459959))

(assert (= (and start!43682 ((_ is Cons!4476) rules!1920)) b!459954))

(assert (= b!459948 b!459960))

(assert (= b!459971 b!459948))

(assert (= start!43682 b!459971))

(assert (= b!459946 b!459942))

(assert (= b!459956 b!459946))

(assert (= b!459966 b!459956))

(assert (= (and start!43682 ((_ is Cons!4477) tokens!465)) b!459966))

(declare-fun m!727993 () Bool)

(assert (=> b!459961 m!727993))

(declare-fun m!727995 () Bool)

(assert (=> b!459961 m!727995))

(declare-fun m!727997 () Bool)

(assert (=> b!459961 m!727997))

(declare-fun m!727999 () Bool)

(assert (=> b!459961 m!727999))

(declare-fun m!728001 () Bool)

(assert (=> b!459961 m!728001))

(declare-fun m!728003 () Bool)

(assert (=> b!459958 m!728003))

(declare-fun m!728005 () Bool)

(assert (=> b!459969 m!728005))

(declare-fun m!728007 () Bool)

(assert (=> b!459969 m!728007))

(declare-fun m!728009 () Bool)

(assert (=> b!459968 m!728009))

(declare-fun m!728011 () Bool)

(assert (=> b!459938 m!728011))

(declare-fun m!728013 () Bool)

(assert (=> b!459943 m!728013))

(declare-fun m!728015 () Bool)

(assert (=> b!459943 m!728015))

(declare-fun m!728017 () Bool)

(assert (=> b!459943 m!728017))

(declare-fun m!728019 () Bool)

(assert (=> b!459955 m!728019))

(assert (=> b!459955 m!728019))

(declare-fun m!728021 () Bool)

(assert (=> b!459955 m!728021))

(assert (=> b!459955 m!728021))

(declare-fun m!728023 () Bool)

(assert (=> b!459955 m!728023))

(declare-fun m!728025 () Bool)

(assert (=> b!459955 m!728025))

(declare-fun m!728027 () Bool)

(assert (=> b!459940 m!728027))

(declare-fun m!728029 () Bool)

(assert (=> b!459948 m!728029))

(declare-fun m!728031 () Bool)

(assert (=> b!459948 m!728031))

(declare-fun m!728033 () Bool)

(assert (=> start!43682 m!728033))

(declare-fun m!728035 () Bool)

(assert (=> b!459956 m!728035))

(declare-fun m!728037 () Bool)

(assert (=> b!459957 m!728037))

(assert (=> b!459957 m!728037))

(declare-fun m!728039 () Bool)

(assert (=> b!459957 m!728039))

(declare-fun m!728041 () Bool)

(assert (=> b!459951 m!728041))

(declare-fun m!728043 () Bool)

(assert (=> b!459944 m!728043))

(declare-fun m!728045 () Bool)

(assert (=> b!459949 m!728045))

(assert (=> b!459949 m!728045))

(declare-fun m!728047 () Bool)

(assert (=> b!459949 m!728047))

(declare-fun m!728049 () Bool)

(assert (=> b!459949 m!728049))

(declare-fun m!728051 () Bool)

(assert (=> b!459963 m!728051))

(declare-fun m!728053 () Bool)

(assert (=> b!459963 m!728053))

(declare-fun m!728055 () Bool)

(assert (=> b!459945 m!728055))

(assert (=> b!459945 m!728055))

(declare-fun m!728057 () Bool)

(assert (=> b!459945 m!728057))

(declare-fun m!728059 () Bool)

(assert (=> b!459945 m!728059))

(declare-fun m!728061 () Bool)

(assert (=> b!459967 m!728061))

(declare-fun m!728063 () Bool)

(assert (=> b!459967 m!728063))

(declare-fun m!728065 () Bool)

(assert (=> b!459967 m!728065))

(assert (=> b!459967 m!728063))

(declare-fun m!728067 () Bool)

(assert (=> b!459967 m!728067))

(declare-fun m!728069 () Bool)

(assert (=> b!459967 m!728069))

(declare-fun m!728071 () Bool)

(assert (=> b!459967 m!728071))

(declare-fun m!728073 () Bool)

(assert (=> b!459967 m!728073))

(declare-fun m!728075 () Bool)

(assert (=> b!459967 m!728075))

(declare-fun m!728077 () Bool)

(assert (=> b!459967 m!728077))

(declare-fun m!728079 () Bool)

(assert (=> b!459967 m!728079))

(declare-fun m!728081 () Bool)

(assert (=> b!459967 m!728081))

(assert (=> b!459967 m!728073))

(declare-fun m!728083 () Bool)

(assert (=> b!459967 m!728083))

(declare-fun m!728085 () Bool)

(assert (=> b!459967 m!728085))

(assert (=> b!459967 m!728069))

(assert (=> b!459967 m!728079))

(declare-fun m!728087 () Bool)

(assert (=> b!459966 m!728087))

(declare-fun m!728089 () Bool)

(assert (=> b!459946 m!728089))

(declare-fun m!728091 () Bool)

(assert (=> b!459946 m!728091))

(declare-fun m!728093 () Bool)

(assert (=> b!459964 m!728093))

(declare-fun m!728095 () Bool)

(assert (=> b!459953 m!728095))

(assert (=> b!459952 m!728053))

(declare-fun m!728097 () Bool)

(assert (=> b!459952 m!728097))

(assert (=> b!459952 m!728011))

(declare-fun m!728099 () Bool)

(assert (=> b!459952 m!728099))

(declare-fun m!728101 () Bool)

(assert (=> b!459952 m!728101))

(declare-fun m!728103 () Bool)

(assert (=> b!459952 m!728103))

(declare-fun m!728105 () Bool)

(assert (=> b!459952 m!728105))

(declare-fun m!728107 () Bool)

(assert (=> b!459952 m!728107))

(declare-fun m!728109 () Bool)

(assert (=> b!459952 m!728109))

(declare-fun m!728111 () Bool)

(assert (=> b!459952 m!728111))

(declare-fun m!728113 () Bool)

(assert (=> b!459952 m!728113))

(assert (=> b!459952 m!728099))

(declare-fun m!728115 () Bool)

(assert (=> b!459947 m!728115))

(declare-fun m!728117 () Bool)

(assert (=> b!459947 m!728117))

(declare-fun m!728119 () Bool)

(assert (=> b!459971 m!728119))

(declare-fun m!728121 () Bool)

(assert (=> b!459959 m!728121))

(declare-fun m!728123 () Bool)

(assert (=> b!459959 m!728123))

(declare-fun m!728125 () Bool)

(assert (=> b!459965 m!728125))

(check-sat (not b_next!12887) (not b!459964) (not b!459945) (not b!459947) (not b!459948) (not start!43682) b_and!49425 b_and!49419 (not b!459955) (not b_next!12883) (not b!459954) (not b!459951) (not b!459965) (not b_next!12889) (not b!459963) (not b!459959) (not b_next!12891) (not b!459958) (not b!459971) (not b_next!12881) (not b!459967) b_and!49423 (not b!459966) (not b!459956) (not b_next!12885) (not b!459944) (not b!459946) (not b!459961) b_and!49427 (not b!459943) (not b!459957) (not b!459940) (not b!459969) b_and!49417 (not b!459980) (not b!459968) (not b!459938) (not b!459949) b_and!49421 (not b!459953) (not b!459952))
(check-sat (not b_next!12887) (not b_next!12883) (not b_next!12889) (not b_next!12891) (not b_next!12881) b_and!49423 (not b_next!12885) b_and!49427 b_and!49425 b_and!49417 b_and!49419 b_and!49421)
