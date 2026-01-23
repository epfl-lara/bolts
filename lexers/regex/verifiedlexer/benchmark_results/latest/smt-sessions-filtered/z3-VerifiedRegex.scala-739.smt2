; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36926 () Bool)

(assert start!36926)

(declare-fun b!371397 () Bool)

(declare-fun b_free!11545 () Bool)

(declare-fun b_next!11545 () Bool)

(assert (=> b!371397 (= b_free!11545 (not b_next!11545))))

(declare-fun tp!116677 () Bool)

(declare-fun b_and!37357 () Bool)

(assert (=> b!371397 (= tp!116677 b_and!37357)))

(declare-fun b_free!11547 () Bool)

(declare-fun b_next!11547 () Bool)

(assert (=> b!371397 (= b_free!11547 (not b_next!11547))))

(declare-fun tp!116678 () Bool)

(declare-fun b_and!37359 () Bool)

(assert (=> b!371397 (= tp!116678 b_and!37359)))

(declare-fun b!371425 () Bool)

(declare-fun b_free!11549 () Bool)

(declare-fun b_next!11549 () Bool)

(assert (=> b!371425 (= b_free!11549 (not b_next!11549))))

(declare-fun tp!116685 () Bool)

(declare-fun b_and!37361 () Bool)

(assert (=> b!371425 (= tp!116685 b_and!37361)))

(declare-fun b_free!11551 () Bool)

(declare-fun b_next!11551 () Bool)

(assert (=> b!371425 (= b_free!11551 (not b_next!11551))))

(declare-fun tp!116676 () Bool)

(declare-fun b_and!37363 () Bool)

(assert (=> b!371425 (= tp!116676 b_and!37363)))

(declare-fun b!371408 () Bool)

(declare-fun b_free!11553 () Bool)

(declare-fun b_next!11553 () Bool)

(assert (=> b!371408 (= b_free!11553 (not b_next!11553))))

(declare-fun tp!116679 () Bool)

(declare-fun b_and!37365 () Bool)

(assert (=> b!371408 (= tp!116679 b_and!37365)))

(declare-fun b_free!11555 () Bool)

(declare-fun b_next!11555 () Bool)

(assert (=> b!371408 (= b_free!11555 (not b_next!11555))))

(declare-fun tp!116684 () Bool)

(declare-fun b_and!37367 () Bool)

(assert (=> b!371408 (= tp!116684 b_and!37367)))

(declare-fun bs!45108 () Bool)

(declare-fun b!371403 () Bool)

(declare-fun b!371405 () Bool)

(assert (= bs!45108 (and b!371403 b!371405)))

(declare-fun lambda!11546 () Int)

(declare-fun lambda!11545 () Int)

(assert (=> bs!45108 (not (= lambda!11546 lambda!11545))))

(declare-fun b!371440 () Bool)

(declare-fun e!228244 () Bool)

(assert (=> b!371440 (= e!228244 true)))

(declare-fun b!371439 () Bool)

(declare-fun e!228243 () Bool)

(assert (=> b!371439 (= e!228243 e!228244)))

(declare-fun b!371438 () Bool)

(declare-fun e!228242 () Bool)

(assert (=> b!371438 (= e!228242 e!228243)))

(assert (=> b!371403 e!228242))

(assert (= b!371439 b!371440))

(assert (= b!371438 b!371439))

(declare-datatypes ((List!4166 0))(
  ( (Nil!4156) (Cons!4156 (h!9553 (_ BitVec 16)) (t!57214 List!4166)) )
))
(declare-datatypes ((TokenValue!823 0))(
  ( (FloatLiteralValue!1646 (text!6206 List!4166)) (TokenValueExt!822 (__x!3133 Int)) (Broken!4115 (value!27118 List!4166)) (Object!832) (End!823) (Def!823) (Underscore!823) (Match!823) (Else!823) (Error!823) (Case!823) (If!823) (Extends!823) (Abstract!823) (Class!823) (Val!823) (DelimiterValue!1646 (del!883 List!4166)) (KeywordValue!829 (value!27119 List!4166)) (CommentValue!1646 (value!27120 List!4166)) (WhitespaceValue!1646 (value!27121 List!4166)) (IndentationValue!823 (value!27122 List!4166)) (String!5194) (Int32!823) (Broken!4116 (value!27123 List!4166)) (Boolean!824) (Unit!6589) (OperatorValue!826 (op!883 List!4166)) (IdentifierValue!1646 (value!27124 List!4166)) (IdentifierValue!1647 (value!27125 List!4166)) (WhitespaceValue!1647 (value!27126 List!4166)) (True!1646) (False!1646) (Broken!4117 (value!27127 List!4166)) (Broken!4118 (value!27128 List!4166)) (True!1647) (RightBrace!823) (RightBracket!823) (Colon!823) (Null!823) (Comma!823) (LeftBracket!823) (False!1647) (LeftBrace!823) (ImaginaryLiteralValue!823 (text!6207 List!4166)) (StringLiteralValue!2469 (value!27129 List!4166)) (EOFValue!823 (value!27130 List!4166)) (IdentValue!823 (value!27131 List!4166)) (DelimiterValue!1647 (value!27132 List!4166)) (DedentValue!823 (value!27133 List!4166)) (NewLineValue!823 (value!27134 List!4166)) (IntegerValue!2469 (value!27135 (_ BitVec 32)) (text!6208 List!4166)) (IntegerValue!2470 (value!27136 Int) (text!6209 List!4166)) (Times!823) (Or!823) (Equal!823) (Minus!823) (Broken!4119 (value!27137 List!4166)) (And!823) (Div!823) (LessEqual!823) (Mod!823) (Concat!1848) (Not!823) (Plus!823) (SpaceValue!823 (value!27138 List!4166)) (IntegerValue!2471 (value!27139 Int) (text!6210 List!4166)) (StringLiteralValue!2470 (text!6211 List!4166)) (FloatLiteralValue!1647 (text!6212 List!4166)) (BytesLiteralValue!823 (value!27140 List!4166)) (CommentValue!1647 (value!27141 List!4166)) (StringLiteralValue!2471 (value!27142 List!4166)) (ErrorTokenValue!823 (msg!884 List!4166)) )
))
(declare-datatypes ((C!2972 0))(
  ( (C!2973 (val!1372 Int)) )
))
(declare-datatypes ((List!4167 0))(
  ( (Nil!4157) (Cons!4157 (h!9554 C!2972) (t!57215 List!4167)) )
))
(declare-datatypes ((IArray!2849 0))(
  ( (IArray!2850 (innerList!1482 List!4167)) )
))
(declare-datatypes ((Conc!1424 0))(
  ( (Node!1424 (left!3467 Conc!1424) (right!3797 Conc!1424) (csize!3078 Int) (cheight!1635 Int)) (Leaf!2164 (xs!4043 IArray!2849) (csize!3079 Int)) (Empty!1424) )
))
(declare-datatypes ((BalanceConc!2856 0))(
  ( (BalanceConc!2857 (c!73168 Conc!1424)) )
))
(declare-datatypes ((String!5195 0))(
  ( (String!5196 (value!27143 String)) )
))
(declare-datatypes ((TokenValueInjection!1418 0))(
  ( (TokenValueInjection!1419 (toValue!1584 Int) (toChars!1443 Int)) )
))
(declare-datatypes ((Regex!1025 0))(
  ( (ElementMatch!1025 (c!73169 C!2972)) (Concat!1849 (regOne!2562 Regex!1025) (regTwo!2562 Regex!1025)) (EmptyExpr!1025) (Star!1025 (reg!1354 Regex!1025)) (EmptyLang!1025) (Union!1025 (regOne!2563 Regex!1025) (regTwo!2563 Regex!1025)) )
))
(declare-datatypes ((Rule!1402 0))(
  ( (Rule!1403 (regex!801 Regex!1025) (tag!1031 String!5195) (isSeparator!801 Bool) (transformation!801 TokenValueInjection!1418)) )
))
(declare-datatypes ((List!4168 0))(
  ( (Nil!4158) (Cons!4158 (h!9555 Rule!1402) (t!57216 List!4168)) )
))
(declare-fun rules!1920 () List!4168)

(get-info :version)

(assert (= (and b!371403 ((_ is Cons!4158) rules!1920)) b!371438))

(declare-fun order!3481 () Int)

(declare-fun order!3483 () Int)

(declare-fun dynLambda!2371 (Int Int) Int)

(declare-fun dynLambda!2372 (Int Int) Int)

(assert (=> b!371440 (< (dynLambda!2371 order!3481 (toValue!1584 (transformation!801 (h!9555 rules!1920)))) (dynLambda!2372 order!3483 lambda!11546))))

(declare-fun order!3485 () Int)

(declare-fun dynLambda!2373 (Int Int) Int)

(assert (=> b!371440 (< (dynLambda!2373 order!3485 (toChars!1443 (transformation!801 (h!9555 rules!1920)))) (dynLambda!2372 order!3483 lambda!11546))))

(assert (=> b!371403 true))

(declare-fun b!371386 () Bool)

(declare-fun res!166087 () Bool)

(declare-fun e!228232 () Bool)

(assert (=> b!371386 (=> (not res!166087) (not e!228232))))

(declare-fun lt!161037 () List!4167)

(declare-fun lt!161052 () List!4167)

(declare-fun list!1797 (BalanceConc!2856) List!4167)

(declare-fun seqFromList!967 (List!4167) BalanceConc!2856)

(assert (=> b!371386 (= res!166087 (= (list!1797 (seqFromList!967 lt!161037)) lt!161052))))

(declare-fun b!371387 () Bool)

(declare-fun res!166066 () Bool)

(declare-fun e!228220 () Bool)

(assert (=> b!371387 (=> (not res!166066) (not e!228220))))

(declare-datatypes ((Token!1346 0))(
  ( (Token!1347 (value!27144 TokenValue!823) (rule!1446 Rule!1402) (size!3364 Int) (originalCharacters!844 List!4167)) )
))
(declare-datatypes ((List!4169 0))(
  ( (Nil!4159) (Cons!4159 (h!9556 Token!1346) (t!57217 List!4169)) )
))
(declare-datatypes ((IArray!2851 0))(
  ( (IArray!2852 (innerList!1483 List!4169)) )
))
(declare-datatypes ((Conc!1425 0))(
  ( (Node!1425 (left!3468 Conc!1425) (right!3798 Conc!1425) (csize!3080 Int) (cheight!1636 Int)) (Leaf!2165 (xs!4044 IArray!2851) (csize!3081 Int)) (Empty!1425) )
))
(declare-datatypes ((BalanceConc!2858 0))(
  ( (BalanceConc!2859 (c!73170 Conc!1425)) )
))
(declare-datatypes ((tuple2!4890 0))(
  ( (tuple2!4891 (_1!2661 BalanceConc!2858) (_2!2661 BalanceConc!2856)) )
))
(declare-fun lt!161046 () tuple2!4890)

(declare-fun lt!161036 () Token!1346)

(declare-fun apply!966 (BalanceConc!2858 Int) Token!1346)

(assert (=> b!371387 (= res!166066 (= (apply!966 (_1!2661 lt!161046) 0) lt!161036))))

(declare-fun b!371388 () Bool)

(declare-fun res!166067 () Bool)

(declare-fun e!228207 () Bool)

(assert (=> b!371388 (=> (not res!166067) (not e!228207))))

(declare-fun lt!161061 () tuple2!4890)

(declare-fun separatorToken!170 () Token!1346)

(assert (=> b!371388 (= res!166067 (= (apply!966 (_1!2661 lt!161061) 0) separatorToken!170))))

(declare-fun res!166077 () Bool)

(declare-fun e!228202 () Bool)

(assert (=> start!36926 (=> (not res!166077) (not e!228202))))

(declare-datatypes ((LexerInterface!687 0))(
  ( (LexerInterfaceExt!684 (__x!3134 Int)) (Lexer!685) )
))
(declare-fun thiss!17480 () LexerInterface!687)

(assert (=> start!36926 (= res!166077 ((_ is Lexer!685) thiss!17480))))

(assert (=> start!36926 e!228202))

(assert (=> start!36926 true))

(declare-fun e!228231 () Bool)

(assert (=> start!36926 e!228231))

(declare-fun e!228212 () Bool)

(declare-fun inv!5169 (Token!1346) Bool)

(assert (=> start!36926 (and (inv!5169 separatorToken!170) e!228212)))

(declare-fun e!228216 () Bool)

(assert (=> start!36926 e!228216))

(declare-fun b!371389 () Bool)

(declare-fun e!228205 () Bool)

(declare-fun e!228204 () Bool)

(assert (=> b!371389 (= e!228205 e!228204)))

(declare-fun res!166079 () Bool)

(assert (=> b!371389 (=> res!166079 e!228204)))

(declare-fun lt!161042 () Bool)

(assert (=> b!371389 (= res!166079 (not lt!161042))))

(declare-fun e!228223 () Bool)

(assert (=> b!371389 e!228223))

(declare-fun res!166085 () Bool)

(assert (=> b!371389 (=> (not res!166085) (not e!228223))))

(declare-datatypes ((tuple2!4892 0))(
  ( (tuple2!4893 (_1!2662 Token!1346) (_2!2662 List!4167)) )
))
(declare-fun lt!161054 () tuple2!4892)

(declare-fun tokens!465 () List!4169)

(assert (=> b!371389 (= res!166085 (= (_1!2662 lt!161054) (h!9556 tokens!465)))))

(declare-datatypes ((Option!985 0))(
  ( (None!984) (Some!984 (v!15107 tuple2!4892)) )
))
(declare-fun lt!161056 () Option!985)

(declare-fun get!1451 (Option!985) tuple2!4892)

(assert (=> b!371389 (= lt!161054 (get!1451 lt!161056))))

(declare-fun isDefined!824 (Option!985) Bool)

(assert (=> b!371389 (isDefined!824 lt!161056)))

(declare-fun lt!161065 () List!4167)

(declare-fun maxPrefix!403 (LexerInterface!687 List!4168 List!4167) Option!985)

(assert (=> b!371389 (= lt!161056 (maxPrefix!403 thiss!17480 rules!1920 lt!161065))))

(declare-fun e!228210 () Bool)

(declare-fun b!371390 () Bool)

(declare-fun tp!116680 () Bool)

(assert (=> b!371390 (= e!228216 (and (inv!5169 (h!9556 tokens!465)) e!228210 tp!116680))))

(declare-fun b!371391 () Bool)

(declare-fun e!228219 () Bool)

(declare-fun tp!116681 () Bool)

(assert (=> b!371391 (= e!228231 (and e!228219 tp!116681))))

(declare-fun b!371392 () Bool)

(declare-datatypes ((Unit!6590 0))(
  ( (Unit!6591) )
))
(declare-fun e!228229 () Unit!6590)

(declare-fun Unit!6592 () Unit!6590)

(assert (=> b!371392 (= e!228229 Unit!6592)))

(assert (=> b!371392 false))

(declare-fun b!371393 () Bool)

(declare-fun res!166092 () Bool)

(assert (=> b!371393 (=> (not res!166092) (not e!228202))))

(declare-fun isEmpty!2950 (List!4168) Bool)

(assert (=> b!371393 (= res!166092 (not (isEmpty!2950 rules!1920)))))

(declare-fun b!371394 () Bool)

(declare-fun res!166063 () Bool)

(declare-fun e!228203 () Bool)

(assert (=> b!371394 (=> res!166063 e!228203)))

(declare-fun isEmpty!2951 (BalanceConc!2858) Bool)

(declare-fun lex!479 (LexerInterface!687 List!4168 BalanceConc!2856) tuple2!4890)

(assert (=> b!371394 (= res!166063 (isEmpty!2951 (_1!2661 (lex!479 thiss!17480 rules!1920 (seqFromList!967 lt!161065)))))))

(declare-fun b!371395 () Bool)

(declare-fun res!166069 () Bool)

(declare-fun e!228213 () Bool)

(assert (=> b!371395 (=> (not res!166069) (not e!228213))))

(declare-fun rulesProduceIndividualToken!436 (LexerInterface!687 List!4168 Token!1346) Bool)

(assert (=> b!371395 (= res!166069 (rulesProduceIndividualToken!436 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!371396 () Bool)

(declare-fun res!166093 () Bool)

(assert (=> b!371396 (=> (not res!166093) (not e!228202))))

(declare-fun rulesInvariant!653 (LexerInterface!687 List!4168) Bool)

(assert (=> b!371396 (= res!166093 (rulesInvariant!653 thiss!17480 rules!1920))))

(declare-fun e!228201 () Bool)

(assert (=> b!371397 (= e!228201 (and tp!116677 tp!116678))))

(declare-fun e!228226 () Bool)

(declare-fun tp!116686 () Bool)

(declare-fun b!371398 () Bool)

(declare-fun inv!21 (TokenValue!823) Bool)

(assert (=> b!371398 (= e!228210 (and (inv!21 (value!27144 (h!9556 tokens!465))) e!228226 tp!116686))))

(declare-fun b!371399 () Bool)

(declare-fun e!228233 () Bool)

(assert (=> b!371399 (= e!228233 false)))

(declare-fun lt!161063 () List!4167)

(declare-fun matchR!343 (Regex!1025 List!4167) Bool)

(assert (=> b!371399 (not (matchR!343 (regex!801 (rule!1446 lt!161036)) lt!161063))))

(declare-fun lt!161049 () C!2972)

(declare-fun lt!161053 () Unit!6590)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!80 (Regex!1025 List!4167 C!2972) Unit!6590)

(assert (=> b!371399 (= lt!161053 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!80 (regex!801 (rule!1446 lt!161036)) lt!161063 lt!161049))))

(declare-fun b!371400 () Bool)

(assert (=> b!371400 (= e!228213 e!228232)))

(declare-fun res!166083 () Bool)

(assert (=> b!371400 (=> (not res!166083) (not e!228232))))

(assert (=> b!371400 (= res!166083 (= lt!161037 lt!161052))))

(declare-fun lt!161045 () BalanceConc!2858)

(declare-fun printWithSeparatorTokenWhenNeededRec!360 (LexerInterface!687 List!4168 BalanceConc!2858 Token!1346 Int) BalanceConc!2856)

(assert (=> b!371400 (= lt!161052 (list!1797 (printWithSeparatorTokenWhenNeededRec!360 thiss!17480 rules!1920 lt!161045 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!368 (LexerInterface!687 List!4168 List!4169 Token!1346) List!4167)

(assert (=> b!371400 (= lt!161037 (printWithSeparatorTokenWhenNeededList!368 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!371401 () Bool)

(declare-fun Unit!6593 () Unit!6590)

(assert (=> b!371401 (= e!228229 Unit!6593)))

(declare-fun b!371402 () Bool)

(declare-fun e!228228 () Bool)

(assert (=> b!371402 (= e!228228 e!228203)))

(declare-fun res!166076 () Bool)

(assert (=> b!371402 (=> res!166076 e!228203)))

(declare-fun lt!161040 () List!4167)

(declare-fun lt!161058 () List!4167)

(assert (=> b!371402 (= res!166076 (or (not (= lt!161058 lt!161040)) (not (= lt!161040 lt!161065)) (not (= lt!161058 lt!161065))))))

(declare-fun printList!361 (LexerInterface!687 List!4169) List!4167)

(assert (=> b!371402 (= lt!161040 (printList!361 thiss!17480 (Cons!4159 (h!9556 tokens!465) Nil!4159)))))

(declare-fun lt!161044 () BalanceConc!2856)

(assert (=> b!371402 (= lt!161058 (list!1797 lt!161044))))

(declare-fun lt!161057 () BalanceConc!2858)

(declare-fun printTailRec!373 (LexerInterface!687 BalanceConc!2858 Int BalanceConc!2856) BalanceConc!2856)

(assert (=> b!371402 (= lt!161044 (printTailRec!373 thiss!17480 lt!161057 0 (BalanceConc!2857 Empty!1424)))))

(declare-fun print!412 (LexerInterface!687 BalanceConc!2858) BalanceConc!2856)

(assert (=> b!371402 (= lt!161044 (print!412 thiss!17480 lt!161057))))

(declare-fun singletonSeq!347 (Token!1346) BalanceConc!2858)

(assert (=> b!371402 (= lt!161057 (singletonSeq!347 (h!9556 tokens!465)))))

(assert (=> b!371403 (= e!228203 e!228205)))

(declare-fun res!166088 () Bool)

(assert (=> b!371403 (=> res!166088 e!228205)))

(declare-datatypes ((tuple2!4894 0))(
  ( (tuple2!4895 (_1!2663 Token!1346) (_2!2663 BalanceConc!2856)) )
))
(declare-datatypes ((Option!986 0))(
  ( (None!985) (Some!985 (v!15108 tuple2!4894)) )
))
(declare-fun isDefined!825 (Option!986) Bool)

(declare-fun maxPrefixZipperSequence!366 (LexerInterface!687 List!4168 BalanceConc!2856) Option!986)

(assert (=> b!371403 (= res!166088 (not (isDefined!825 (maxPrefixZipperSequence!366 thiss!17480 rules!1920 (seqFromList!967 (originalCharacters!844 (h!9556 tokens!465)))))))))

(declare-fun lt!161027 () Unit!6590)

(declare-fun forallContained!354 (List!4169 Int Token!1346) Unit!6590)

(assert (=> b!371403 (= lt!161027 (forallContained!354 tokens!465 lambda!11546 (h!9556 tokens!465)))))

(assert (=> b!371403 (= lt!161065 (originalCharacters!844 (h!9556 tokens!465)))))

(declare-fun b!371404 () Bool)

(declare-fun e!228224 () Bool)

(assert (=> b!371404 (= e!228232 (not e!228224))))

(declare-fun res!166090 () Bool)

(assert (=> b!371404 (=> res!166090 e!228224)))

(declare-fun lt!161032 () List!4167)

(declare-fun seqFromList!968 (List!4169) BalanceConc!2858)

(assert (=> b!371404 (= res!166090 (not (= lt!161032 (list!1797 (printWithSeparatorTokenWhenNeededRec!360 thiss!17480 rules!1920 (seqFromList!968 (t!57217 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!161066 () List!4167)

(declare-fun lt!161038 () List!4167)

(assert (=> b!371404 (= lt!161066 lt!161038)))

(declare-fun lt!161050 () List!4167)

(declare-fun ++!1162 (List!4167 List!4167) List!4167)

(assert (=> b!371404 (= lt!161038 (++!1162 lt!161065 lt!161050))))

(declare-fun lt!161041 () List!4167)

(assert (=> b!371404 (= lt!161066 (++!1162 (++!1162 lt!161065 lt!161041) lt!161032))))

(declare-fun lt!161047 () Unit!6590)

(declare-fun lemmaConcatAssociativity!520 (List!4167 List!4167 List!4167) Unit!6590)

(assert (=> b!371404 (= lt!161047 (lemmaConcatAssociativity!520 lt!161065 lt!161041 lt!161032))))

(declare-fun charsOf!444 (Token!1346) BalanceConc!2856)

(assert (=> b!371404 (= lt!161065 (list!1797 (charsOf!444 (h!9556 tokens!465))))))

(assert (=> b!371404 (= lt!161050 (++!1162 lt!161041 lt!161032))))

(assert (=> b!371404 (= lt!161032 (printWithSeparatorTokenWhenNeededList!368 thiss!17480 rules!1920 (t!57217 tokens!465) separatorToken!170))))

(assert (=> b!371404 (= lt!161041 (list!1797 (charsOf!444 separatorToken!170)))))

(declare-fun res!166086 () Bool)

(assert (=> b!371405 (=> (not res!166086) (not e!228213))))

(declare-fun forall!1148 (List!4169 Int) Bool)

(assert (=> b!371405 (= res!166086 (forall!1148 tokens!465 lambda!11545))))

(declare-fun b!371406 () Bool)

(declare-fun isEmpty!2952 (BalanceConc!2856) Bool)

(assert (=> b!371406 (= e!228220 (isEmpty!2952 (_2!2661 lt!161046)))))

(declare-fun b!371407 () Bool)

(assert (=> b!371407 (= e!228224 e!228228)))

(declare-fun res!166064 () Bool)

(assert (=> b!371407 (=> res!166064 e!228228)))

(declare-fun e!228214 () Bool)

(assert (=> b!371407 (= res!166064 e!228214)))

(declare-fun res!166082 () Bool)

(assert (=> b!371407 (=> (not res!166082) (not e!228214))))

(assert (=> b!371407 (= res!166082 (not lt!161042))))

(assert (=> b!371407 (= lt!161042 (= lt!161037 lt!161038))))

(declare-fun e!228209 () Bool)

(assert (=> b!371408 (= e!228209 (and tp!116679 tp!116684))))

(declare-fun b!371409 () Bool)

(declare-fun e!228221 () Bool)

(declare-fun lt!161033 () Rule!1402)

(assert (=> b!371409 (= e!228221 (= (rule!1446 lt!161036) lt!161033))))

(declare-fun b!371410 () Bool)

(assert (=> b!371410 (= e!228214 (not (= lt!161037 (++!1162 lt!161065 lt!161032))))))

(declare-fun b!371411 () Bool)

(declare-fun res!166075 () Bool)

(assert (=> b!371411 (=> (not res!166075) (not e!228223))))

(declare-fun isEmpty!2953 (List!4167) Bool)

(assert (=> b!371411 (= res!166075 (isEmpty!2953 (_2!2662 lt!161054)))))

(declare-fun b!371412 () Bool)

(assert (=> b!371412 (= e!228202 e!228213)))

(declare-fun res!166089 () Bool)

(assert (=> b!371412 (=> (not res!166089) (not e!228213))))

(declare-fun rulesProduceEachTokenIndividually!479 (LexerInterface!687 List!4168 BalanceConc!2858) Bool)

(assert (=> b!371412 (= res!166089 (rulesProduceEachTokenIndividually!479 thiss!17480 rules!1920 lt!161045))))

(assert (=> b!371412 (= lt!161045 (seqFromList!968 tokens!465))))

(declare-fun b!371413 () Bool)

(declare-fun res!166062 () Bool)

(assert (=> b!371413 (=> (not res!166062) (not e!228213))))

(assert (=> b!371413 (= res!166062 (isSeparator!801 (rule!1446 separatorToken!170)))))

(declare-fun e!228230 () Bool)

(declare-fun tp!116687 () Bool)

(declare-fun b!371414 () Bool)

(declare-fun inv!5166 (String!5195) Bool)

(declare-fun inv!5170 (TokenValueInjection!1418) Bool)

(assert (=> b!371414 (= e!228230 (and tp!116687 (inv!5166 (tag!1031 (rule!1446 separatorToken!170))) (inv!5170 (transformation!801 (rule!1446 separatorToken!170))) e!228201))))

(declare-fun b!371415 () Bool)

(declare-fun res!166071 () Bool)

(assert (=> b!371415 (=> (not res!166071) (not e!228213))))

(assert (=> b!371415 (= res!166071 ((_ is Cons!4159) tokens!465))))

(declare-fun b!371416 () Bool)

(declare-fun res!166080 () Bool)

(assert (=> b!371416 (=> res!166080 e!228203)))

(assert (=> b!371416 (= res!166080 (not (rulesProduceIndividualToken!436 thiss!17480 rules!1920 (h!9556 tokens!465))))))

(declare-fun b!371417 () Bool)

(assert (=> b!371417 (= e!228223 (matchR!343 (regex!801 (rule!1446 (h!9556 tokens!465))) lt!161065))))

(declare-fun tp!116682 () Bool)

(declare-fun b!371418 () Bool)

(assert (=> b!371418 (= e!228212 (and (inv!21 (value!27144 separatorToken!170)) e!228230 tp!116682))))

(declare-fun b!371419 () Bool)

(declare-fun res!166070 () Bool)

(assert (=> b!371419 (=> (not res!166070) (not e!228213))))

(declare-fun sepAndNonSepRulesDisjointChars!390 (List!4168 List!4168) Bool)

(assert (=> b!371419 (= res!166070 (sepAndNonSepRulesDisjointChars!390 rules!1920 rules!1920))))

(declare-fun b!371420 () Bool)

(assert (=> b!371420 (= e!228207 (isEmpty!2952 (_2!2661 lt!161061)))))

(declare-fun b!371421 () Bool)

(declare-fun e!228206 () Bool)

(assert (=> b!371421 (= e!228206 e!228221)))

(declare-fun res!166078 () Bool)

(assert (=> b!371421 (=> (not res!166078) (not e!228221))))

(assert (=> b!371421 (= res!166078 (matchR!343 (regex!801 lt!161033) lt!161063))))

(declare-datatypes ((Option!987 0))(
  ( (None!986) (Some!986 (v!15109 Rule!1402)) )
))
(declare-fun lt!161029 () Option!987)

(declare-fun get!1452 (Option!987) Rule!1402)

(assert (=> b!371421 (= lt!161033 (get!1452 lt!161029))))

(declare-fun b!371422 () Bool)

(declare-fun e!228208 () Bool)

(declare-fun lt!161043 () Option!985)

(declare-fun head!1003 (List!4169) Token!1346)

(assert (=> b!371422 (= e!228208 (= (_1!2662 (get!1451 lt!161043)) (head!1003 tokens!465)))))

(declare-fun e!228234 () Bool)

(declare-fun b!371423 () Bool)

(declare-fun tp!116675 () Bool)

(assert (=> b!371423 (= e!228219 (and tp!116675 (inv!5166 (tag!1031 (h!9555 rules!1920))) (inv!5170 (transformation!801 (h!9555 rules!1920))) e!228234))))

(declare-fun b!371424 () Bool)

(declare-fun tp!116683 () Bool)

(assert (=> b!371424 (= e!228226 (and tp!116683 (inv!5166 (tag!1031 (rule!1446 (h!9556 tokens!465)))) (inv!5170 (transformation!801 (rule!1446 (h!9556 tokens!465)))) e!228209))))

(assert (=> b!371425 (= e!228234 (and tp!116685 tp!116676))))

(declare-fun b!371426 () Bool)

(declare-fun e!228217 () Bool)

(declare-fun e!228235 () Bool)

(assert (=> b!371426 (= e!228217 e!228235)))

(declare-fun res!166072 () Bool)

(assert (=> b!371426 (=> (not res!166072) (not e!228235))))

(declare-fun lt!161028 () Rule!1402)

(assert (=> b!371426 (= res!166072 (matchR!343 (regex!801 lt!161028) lt!161041))))

(declare-fun lt!161034 () Option!987)

(assert (=> b!371426 (= lt!161028 (get!1452 lt!161034))))

(declare-fun b!371427 () Bool)

(assert (=> b!371427 (= e!228235 (= (rule!1446 separatorToken!170) lt!161028))))

(declare-fun b!371428 () Bool)

(assert (=> b!371428 (= e!228204 e!228233)))

(declare-fun res!166073 () Bool)

(assert (=> b!371428 (=> res!166073 e!228233)))

(declare-fun contains!851 (List!4167 C!2972) Bool)

(declare-fun usedCharacters!102 (Regex!1025) List!4167)

(assert (=> b!371428 (= res!166073 (contains!851 (usedCharacters!102 (regex!801 (rule!1446 lt!161036))) lt!161049))))

(declare-fun head!1004 (List!4167) C!2972)

(assert (=> b!371428 (= lt!161049 (head!1004 lt!161063))))

(assert (=> b!371428 e!228206))

(declare-fun res!166068 () Bool)

(assert (=> b!371428 (=> (not res!166068) (not e!228206))))

(declare-fun isDefined!826 (Option!987) Bool)

(assert (=> b!371428 (= res!166068 (isDefined!826 lt!161029))))

(declare-fun getRuleFromTag!160 (LexerInterface!687 List!4168 String!5195) Option!987)

(assert (=> b!371428 (= lt!161029 (getRuleFromTag!160 thiss!17480 rules!1920 (tag!1031 (rule!1446 lt!161036))))))

(declare-fun lt!161039 () Unit!6590)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!160 (LexerInterface!687 List!4168 List!4167 Token!1346) Unit!6590)

(assert (=> b!371428 (= lt!161039 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!160 thiss!17480 rules!1920 lt!161063 lt!161036))))

(assert (=> b!371428 (= lt!161063 (list!1797 (charsOf!444 lt!161036)))))

(declare-fun lt!161031 () Unit!6590)

(assert (=> b!371428 (= lt!161031 (forallContained!354 tokens!465 lambda!11546 lt!161036))))

(assert (=> b!371428 e!228220))

(declare-fun res!166084 () Bool)

(assert (=> b!371428 (=> (not res!166084) (not e!228220))))

(declare-fun size!3365 (BalanceConc!2858) Int)

(assert (=> b!371428 (= res!166084 (= (size!3365 (_1!2661 lt!161046)) 1))))

(declare-fun lt!161059 () BalanceConc!2856)

(assert (=> b!371428 (= lt!161046 (lex!479 thiss!17480 rules!1920 lt!161059))))

(declare-fun lt!161060 () BalanceConc!2858)

(assert (=> b!371428 (= lt!161059 (printTailRec!373 thiss!17480 lt!161060 0 (BalanceConc!2857 Empty!1424)))))

(assert (=> b!371428 (= lt!161059 (print!412 thiss!17480 lt!161060))))

(assert (=> b!371428 (= lt!161060 (singletonSeq!347 lt!161036))))

(assert (=> b!371428 e!228217))

(declare-fun res!166074 () Bool)

(assert (=> b!371428 (=> (not res!166074) (not e!228217))))

(assert (=> b!371428 (= res!166074 (isDefined!826 lt!161034))))

(assert (=> b!371428 (= lt!161034 (getRuleFromTag!160 thiss!17480 rules!1920 (tag!1031 (rule!1446 separatorToken!170))))))

(declare-fun lt!161064 () Unit!6590)

(assert (=> b!371428 (= lt!161064 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!160 thiss!17480 rules!1920 lt!161041 separatorToken!170))))

(assert (=> b!371428 e!228207))

(declare-fun res!166091 () Bool)

(assert (=> b!371428 (=> (not res!166091) (not e!228207))))

(assert (=> b!371428 (= res!166091 (= (size!3365 (_1!2661 lt!161061)) 1))))

(declare-fun lt!161025 () BalanceConc!2856)

(assert (=> b!371428 (= lt!161061 (lex!479 thiss!17480 rules!1920 lt!161025))))

(declare-fun lt!161026 () BalanceConc!2858)

(assert (=> b!371428 (= lt!161025 (printTailRec!373 thiss!17480 lt!161026 0 (BalanceConc!2857 Empty!1424)))))

(assert (=> b!371428 (= lt!161025 (print!412 thiss!17480 lt!161026))))

(assert (=> b!371428 (= lt!161026 (singletonSeq!347 separatorToken!170))))

(assert (=> b!371428 (rulesProduceIndividualToken!436 thiss!17480 rules!1920 lt!161036)))

(declare-fun lt!161062 () Unit!6590)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!150 (LexerInterface!687 List!4168 List!4169 Token!1346) Unit!6590)

(assert (=> b!371428 (= lt!161062 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!150 thiss!17480 rules!1920 tokens!465 lt!161036))))

(assert (=> b!371428 (= lt!161036 (head!1003 (t!57217 tokens!465)))))

(declare-fun lt!161035 () Unit!6590)

(assert (=> b!371428 (= lt!161035 e!228229)))

(declare-fun c!73167 () Bool)

(declare-fun isEmpty!2954 (List!4169) Bool)

(assert (=> b!371428 (= c!73167 (isEmpty!2954 (t!57217 tokens!465)))))

(declare-fun lt!161051 () Option!985)

(assert (=> b!371428 (= lt!161051 (maxPrefix!403 thiss!17480 rules!1920 lt!161050))))

(declare-fun lt!161048 () tuple2!4892)

(assert (=> b!371428 (= lt!161050 (_2!2662 lt!161048))))

(declare-fun lt!161024 () Unit!6590)

(declare-fun lemmaSamePrefixThenSameSuffix!246 (List!4167 List!4167 List!4167 List!4167 List!4167) Unit!6590)

(assert (=> b!371428 (= lt!161024 (lemmaSamePrefixThenSameSuffix!246 lt!161065 lt!161050 lt!161065 (_2!2662 lt!161048) lt!161037))))

(assert (=> b!371428 (= lt!161048 (get!1451 (maxPrefix!403 thiss!17480 rules!1920 lt!161037)))))

(declare-fun isPrefix!461 (List!4167 List!4167) Bool)

(assert (=> b!371428 (isPrefix!461 lt!161065 lt!161038)))

(declare-fun lt!161055 () Unit!6590)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!352 (List!4167 List!4167) Unit!6590)

(assert (=> b!371428 (= lt!161055 (lemmaConcatTwoListThenFirstIsPrefix!352 lt!161065 lt!161050))))

(declare-fun e!228211 () Bool)

(assert (=> b!371428 e!228211))

(declare-fun res!166081 () Bool)

(assert (=> b!371428 (=> res!166081 e!228211)))

(assert (=> b!371428 (= res!166081 (isEmpty!2954 tokens!465))))

(declare-fun lt!161030 () Unit!6590)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!208 (LexerInterface!687 List!4168 List!4169 Token!1346) Unit!6590)

(assert (=> b!371428 (= lt!161030 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!208 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!371429 () Bool)

(assert (=> b!371429 (= e!228211 e!228208)))

(declare-fun res!166065 () Bool)

(assert (=> b!371429 (=> (not res!166065) (not e!228208))))

(assert (=> b!371429 (= res!166065 (isDefined!824 lt!161043))))

(assert (=> b!371429 (= lt!161043 (maxPrefix!403 thiss!17480 rules!1920 lt!161037))))

(assert (= (and start!36926 res!166077) b!371393))

(assert (= (and b!371393 res!166092) b!371396))

(assert (= (and b!371396 res!166093) b!371412))

(assert (= (and b!371412 res!166089) b!371395))

(assert (= (and b!371395 res!166069) b!371413))

(assert (= (and b!371413 res!166062) b!371405))

(assert (= (and b!371405 res!166086) b!371419))

(assert (= (and b!371419 res!166070) b!371415))

(assert (= (and b!371415 res!166071) b!371400))

(assert (= (and b!371400 res!166083) b!371386))

(assert (= (and b!371386 res!166087) b!371404))

(assert (= (and b!371404 (not res!166090)) b!371407))

(assert (= (and b!371407 res!166082) b!371410))

(assert (= (and b!371407 (not res!166064)) b!371402))

(assert (= (and b!371402 (not res!166076)) b!371416))

(assert (= (and b!371416 (not res!166080)) b!371394))

(assert (= (and b!371394 (not res!166063)) b!371403))

(assert (= (and b!371403 (not res!166088)) b!371389))

(assert (= (and b!371389 res!166085) b!371411))

(assert (= (and b!371411 res!166075) b!371417))

(assert (= (and b!371389 (not res!166079)) b!371428))

(assert (= (and b!371428 (not res!166081)) b!371429))

(assert (= (and b!371429 res!166065) b!371422))

(assert (= (and b!371428 c!73167) b!371392))

(assert (= (and b!371428 (not c!73167)) b!371401))

(assert (= (and b!371428 res!166091) b!371388))

(assert (= (and b!371388 res!166067) b!371420))

(assert (= (and b!371428 res!166074) b!371426))

(assert (= (and b!371426 res!166072) b!371427))

(assert (= (and b!371428 res!166084) b!371387))

(assert (= (and b!371387 res!166066) b!371406))

(assert (= (and b!371428 res!166068) b!371421))

(assert (= (and b!371421 res!166078) b!371409))

(assert (= (and b!371428 (not res!166073)) b!371399))

(assert (= b!371423 b!371425))

(assert (= b!371391 b!371423))

(assert (= (and start!36926 ((_ is Cons!4158) rules!1920)) b!371391))

(assert (= b!371414 b!371397))

(assert (= b!371418 b!371414))

(assert (= start!36926 b!371418))

(assert (= b!371424 b!371408))

(assert (= b!371398 b!371424))

(assert (= b!371390 b!371398))

(assert (= (and start!36926 ((_ is Cons!4159) tokens!465)) b!371390))

(declare-fun m!550613 () Bool)

(assert (=> b!371422 m!550613))

(declare-fun m!550615 () Bool)

(assert (=> b!371422 m!550615))

(declare-fun m!550617 () Bool)

(assert (=> b!371388 m!550617))

(declare-fun m!550619 () Bool)

(assert (=> start!36926 m!550619))

(declare-fun m!550621 () Bool)

(assert (=> b!371386 m!550621))

(assert (=> b!371386 m!550621))

(declare-fun m!550623 () Bool)

(assert (=> b!371386 m!550623))

(declare-fun m!550625 () Bool)

(assert (=> b!371429 m!550625))

(declare-fun m!550627 () Bool)

(assert (=> b!371429 m!550627))

(declare-fun m!550629 () Bool)

(assert (=> b!371394 m!550629))

(assert (=> b!371394 m!550629))

(declare-fun m!550631 () Bool)

(assert (=> b!371394 m!550631))

(declare-fun m!550633 () Bool)

(assert (=> b!371394 m!550633))

(declare-fun m!550635 () Bool)

(assert (=> b!371416 m!550635))

(declare-fun m!550637 () Bool)

(assert (=> b!371418 m!550637))

(declare-fun m!550639 () Bool)

(assert (=> b!371406 m!550639))

(declare-fun m!550641 () Bool)

(assert (=> b!371393 m!550641))

(declare-fun m!550643 () Bool)

(assert (=> b!371423 m!550643))

(declare-fun m!550645 () Bool)

(assert (=> b!371423 m!550645))

(declare-fun m!550647 () Bool)

(assert (=> b!371414 m!550647))

(declare-fun m!550649 () Bool)

(assert (=> b!371414 m!550649))

(declare-fun m!550651 () Bool)

(assert (=> b!371389 m!550651))

(declare-fun m!550653 () Bool)

(assert (=> b!371389 m!550653))

(declare-fun m!550655 () Bool)

(assert (=> b!371389 m!550655))

(declare-fun m!550657 () Bool)

(assert (=> b!371405 m!550657))

(declare-fun m!550659 () Bool)

(assert (=> b!371417 m!550659))

(declare-fun m!550661 () Bool)

(assert (=> b!371424 m!550661))

(declare-fun m!550663 () Bool)

(assert (=> b!371424 m!550663))

(declare-fun m!550665 () Bool)

(assert (=> b!371428 m!550665))

(declare-fun m!550667 () Bool)

(assert (=> b!371428 m!550667))

(declare-fun m!550669 () Bool)

(assert (=> b!371428 m!550669))

(declare-fun m!550671 () Bool)

(assert (=> b!371428 m!550671))

(declare-fun m!550673 () Bool)

(assert (=> b!371428 m!550673))

(declare-fun m!550675 () Bool)

(assert (=> b!371428 m!550675))

(declare-fun m!550677 () Bool)

(assert (=> b!371428 m!550677))

(assert (=> b!371428 m!550671))

(declare-fun m!550679 () Bool)

(assert (=> b!371428 m!550679))

(declare-fun m!550681 () Bool)

(assert (=> b!371428 m!550681))

(declare-fun m!550683 () Bool)

(assert (=> b!371428 m!550683))

(declare-fun m!550685 () Bool)

(assert (=> b!371428 m!550685))

(declare-fun m!550687 () Bool)

(assert (=> b!371428 m!550687))

(declare-fun m!550689 () Bool)

(assert (=> b!371428 m!550689))

(declare-fun m!550691 () Bool)

(assert (=> b!371428 m!550691))

(declare-fun m!550693 () Bool)

(assert (=> b!371428 m!550693))

(declare-fun m!550695 () Bool)

(assert (=> b!371428 m!550695))

(declare-fun m!550697 () Bool)

(assert (=> b!371428 m!550697))

(declare-fun m!550699 () Bool)

(assert (=> b!371428 m!550699))

(declare-fun m!550701 () Bool)

(assert (=> b!371428 m!550701))

(declare-fun m!550703 () Bool)

(assert (=> b!371428 m!550703))

(declare-fun m!550705 () Bool)

(assert (=> b!371428 m!550705))

(declare-fun m!550707 () Bool)

(assert (=> b!371428 m!550707))

(declare-fun m!550709 () Bool)

(assert (=> b!371428 m!550709))

(declare-fun m!550711 () Bool)

(assert (=> b!371428 m!550711))

(declare-fun m!550713 () Bool)

(assert (=> b!371428 m!550713))

(assert (=> b!371428 m!550627))

(declare-fun m!550715 () Bool)

(assert (=> b!371428 m!550715))

(declare-fun m!550717 () Bool)

(assert (=> b!371428 m!550717))

(assert (=> b!371428 m!550627))

(assert (=> b!371428 m!550685))

(declare-fun m!550719 () Bool)

(assert (=> b!371428 m!550719))

(declare-fun m!550721 () Bool)

(assert (=> b!371428 m!550721))

(declare-fun m!550723 () Bool)

(assert (=> b!371428 m!550723))

(declare-fun m!550725 () Bool)

(assert (=> b!371428 m!550725))

(declare-fun m!550727 () Bool)

(assert (=> b!371428 m!550727))

(declare-fun m!550729 () Bool)

(assert (=> b!371428 m!550729))

(declare-fun m!550731 () Bool)

(assert (=> b!371403 m!550731))

(assert (=> b!371403 m!550731))

(declare-fun m!550733 () Bool)

(assert (=> b!371403 m!550733))

(assert (=> b!371403 m!550733))

(declare-fun m!550735 () Bool)

(assert (=> b!371403 m!550735))

(declare-fun m!550737 () Bool)

(assert (=> b!371403 m!550737))

(declare-fun m!550739 () Bool)

(assert (=> b!371412 m!550739))

(declare-fun m!550741 () Bool)

(assert (=> b!371412 m!550741))

(declare-fun m!550743 () Bool)

(assert (=> b!371398 m!550743))

(declare-fun m!550745 () Bool)

(assert (=> b!371390 m!550745))

(declare-fun m!550747 () Bool)

(assert (=> b!371410 m!550747))

(declare-fun m!550749 () Bool)

(assert (=> b!371395 m!550749))

(declare-fun m!550751 () Bool)

(assert (=> b!371402 m!550751))

(declare-fun m!550753 () Bool)

(assert (=> b!371402 m!550753))

(declare-fun m!550755 () Bool)

(assert (=> b!371402 m!550755))

(declare-fun m!550757 () Bool)

(assert (=> b!371402 m!550757))

(declare-fun m!550759 () Bool)

(assert (=> b!371402 m!550759))

(declare-fun m!550761 () Bool)

(assert (=> b!371421 m!550761))

(declare-fun m!550763 () Bool)

(assert (=> b!371421 m!550763))

(declare-fun m!550765 () Bool)

(assert (=> b!371420 m!550765))

(declare-fun m!550767 () Bool)

(assert (=> b!371387 m!550767))

(declare-fun m!550769 () Bool)

(assert (=> b!371399 m!550769))

(declare-fun m!550771 () Bool)

(assert (=> b!371399 m!550771))

(declare-fun m!550773 () Bool)

(assert (=> b!371419 m!550773))

(declare-fun m!550775 () Bool)

(assert (=> b!371396 m!550775))

(declare-fun m!550777 () Bool)

(assert (=> b!371400 m!550777))

(assert (=> b!371400 m!550777))

(declare-fun m!550779 () Bool)

(assert (=> b!371400 m!550779))

(declare-fun m!550781 () Bool)

(assert (=> b!371400 m!550781))

(declare-fun m!550783 () Bool)

(assert (=> b!371411 m!550783))

(declare-fun m!550785 () Bool)

(assert (=> b!371426 m!550785))

(declare-fun m!550787 () Bool)

(assert (=> b!371426 m!550787))

(declare-fun m!550789 () Bool)

(assert (=> b!371404 m!550789))

(declare-fun m!550791 () Bool)

(assert (=> b!371404 m!550791))

(declare-fun m!550793 () Bool)

(assert (=> b!371404 m!550793))

(declare-fun m!550795 () Bool)

(assert (=> b!371404 m!550795))

(declare-fun m!550797 () Bool)

(assert (=> b!371404 m!550797))

(declare-fun m!550799 () Bool)

(assert (=> b!371404 m!550799))

(declare-fun m!550801 () Bool)

(assert (=> b!371404 m!550801))

(assert (=> b!371404 m!550799))

(declare-fun m!550803 () Bool)

(assert (=> b!371404 m!550803))

(assert (=> b!371404 m!550791))

(declare-fun m!550805 () Bool)

(assert (=> b!371404 m!550805))

(assert (=> b!371404 m!550789))

(declare-fun m!550807 () Bool)

(assert (=> b!371404 m!550807))

(declare-fun m!550809 () Bool)

(assert (=> b!371404 m!550809))

(assert (=> b!371404 m!550809))

(declare-fun m!550811 () Bool)

(assert (=> b!371404 m!550811))

(assert (=> b!371404 m!550807))

(declare-fun m!550813 () Bool)

(assert (=> b!371404 m!550813))

(check-sat (not b!371388) (not b!371386) (not b!371438) (not b_next!11553) (not b_next!11551) (not b_next!11547) (not b!371399) (not b!371404) (not b!371428) b_and!37359 (not b!371411) (not b!371423) (not b!371387) (not b!371417) (not b!371403) (not b!371393) (not b_next!11545) (not b!371420) (not start!36926) (not b!371416) (not b!371410) (not b!371400) b_and!37365 (not b!371394) (not b!371429) b_and!37363 (not b!371389) (not b!371396) (not b!371402) (not b!371412) (not b!371414) b_and!37367 (not b!371391) (not b!371421) (not b!371398) (not b!371418) (not b_next!11549) (not b!371426) (not b!371419) (not b_next!11555) (not b!371395) (not b!371406) b_and!37361 (not b!371390) b_and!37357 (not b!371422) (not b!371405) (not b!371424))
(check-sat (not b_next!11545) b_and!37365 b_and!37363 (not b_next!11553) (not b_next!11551) (not b_next!11547) b_and!37367 (not b_next!11549) (not b_next!11555) b_and!37361 b_and!37357 b_and!37359)
