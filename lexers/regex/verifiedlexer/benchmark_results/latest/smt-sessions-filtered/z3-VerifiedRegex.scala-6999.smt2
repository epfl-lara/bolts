; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371600 () Bool)

(assert start!371600)

(declare-fun b!3952845 () Bool)

(declare-fun b_free!108761 () Bool)

(declare-fun b_next!109465 () Bool)

(assert (=> b!3952845 (= b_free!108761 (not b_next!109465))))

(declare-fun tp!1204419 () Bool)

(declare-fun b_and!303003 () Bool)

(assert (=> b!3952845 (= tp!1204419 b_and!303003)))

(declare-fun b_free!108763 () Bool)

(declare-fun b_next!109467 () Bool)

(assert (=> b!3952845 (= b_free!108763 (not b_next!109467))))

(declare-fun tp!1204439 () Bool)

(declare-fun b_and!303005 () Bool)

(assert (=> b!3952845 (= tp!1204439 b_and!303005)))

(declare-fun b!3952848 () Bool)

(declare-fun b_free!108765 () Bool)

(declare-fun b_next!109469 () Bool)

(assert (=> b!3952848 (= b_free!108765 (not b_next!109469))))

(declare-fun tp!1204432 () Bool)

(declare-fun b_and!303007 () Bool)

(assert (=> b!3952848 (= tp!1204432 b_and!303007)))

(declare-fun b_free!108767 () Bool)

(declare-fun b_next!109471 () Bool)

(assert (=> b!3952848 (= b_free!108767 (not b_next!109471))))

(declare-fun tp!1204427 () Bool)

(declare-fun b_and!303009 () Bool)

(assert (=> b!3952848 (= tp!1204427 b_and!303009)))

(declare-fun b!3952841 () Bool)

(declare-fun b_free!108769 () Bool)

(declare-fun b_next!109473 () Bool)

(assert (=> b!3952841 (= b_free!108769 (not b_next!109473))))

(declare-fun tp!1204440 () Bool)

(declare-fun b_and!303011 () Bool)

(assert (=> b!3952841 (= tp!1204440 b_and!303011)))

(declare-fun b_free!108771 () Bool)

(declare-fun b_next!109475 () Bool)

(assert (=> b!3952841 (= b_free!108771 (not b_next!109475))))

(declare-fun tp!1204421 () Bool)

(declare-fun b_and!303013 () Bool)

(assert (=> b!3952841 (= tp!1204421 b_and!303013)))

(declare-fun b!3952850 () Bool)

(declare-fun b_free!108773 () Bool)

(declare-fun b_next!109477 () Bool)

(assert (=> b!3952850 (= b_free!108773 (not b_next!109477))))

(declare-fun tp!1204428 () Bool)

(declare-fun b_and!303015 () Bool)

(assert (=> b!3952850 (= tp!1204428 b_and!303015)))

(declare-fun b_free!108775 () Bool)

(declare-fun b_next!109479 () Bool)

(assert (=> b!3952850 (= b_free!108775 (not b_next!109479))))

(declare-fun tp!1204424 () Bool)

(declare-fun b_and!303017 () Bool)

(assert (=> b!3952850 (= tp!1204424 b_and!303017)))

(declare-fun e!2446960 () Bool)

(declare-fun b!3952822 () Bool)

(declare-datatypes ((List!42179 0))(
  ( (Nil!42055) (Cons!42055 (h!47475 (_ BitVec 16)) (t!328820 List!42179)) )
))
(declare-datatypes ((TokenValue!6816 0))(
  ( (FloatLiteralValue!13632 (text!48157 List!42179)) (TokenValueExt!6815 (__x!25849 Int)) (Broken!34080 (value!208309 List!42179)) (Object!6939) (End!6816) (Def!6816) (Underscore!6816) (Match!6816) (Else!6816) (Error!6816) (Case!6816) (If!6816) (Extends!6816) (Abstract!6816) (Class!6816) (Val!6816) (DelimiterValue!13632 (del!6876 List!42179)) (KeywordValue!6822 (value!208310 List!42179)) (CommentValue!13632 (value!208311 List!42179)) (WhitespaceValue!13632 (value!208312 List!42179)) (IndentationValue!6816 (value!208313 List!42179)) (String!47797) (Int32!6816) (Broken!34081 (value!208314 List!42179)) (Boolean!6817) (Unit!60559) (OperatorValue!6819 (op!6876 List!42179)) (IdentifierValue!13632 (value!208315 List!42179)) (IdentifierValue!13633 (value!208316 List!42179)) (WhitespaceValue!13633 (value!208317 List!42179)) (True!13632) (False!13632) (Broken!34082 (value!208318 List!42179)) (Broken!34083 (value!208319 List!42179)) (True!13633) (RightBrace!6816) (RightBracket!6816) (Colon!6816) (Null!6816) (Comma!6816) (LeftBracket!6816) (False!13633) (LeftBrace!6816) (ImaginaryLiteralValue!6816 (text!48158 List!42179)) (StringLiteralValue!20448 (value!208320 List!42179)) (EOFValue!6816 (value!208321 List!42179)) (IdentValue!6816 (value!208322 List!42179)) (DelimiterValue!13633 (value!208323 List!42179)) (DedentValue!6816 (value!208324 List!42179)) (NewLineValue!6816 (value!208325 List!42179)) (IntegerValue!20448 (value!208326 (_ BitVec 32)) (text!48159 List!42179)) (IntegerValue!20449 (value!208327 Int) (text!48160 List!42179)) (Times!6816) (Or!6816) (Equal!6816) (Minus!6816) (Broken!34084 (value!208328 List!42179)) (And!6816) (Div!6816) (LessEqual!6816) (Mod!6816) (Concat!18307) (Not!6816) (Plus!6816) (SpaceValue!6816 (value!208329 List!42179)) (IntegerValue!20450 (value!208330 Int) (text!48161 List!42179)) (StringLiteralValue!20449 (text!48162 List!42179)) (FloatLiteralValue!13633 (text!48163 List!42179)) (BytesLiteralValue!6816 (value!208331 List!42179)) (CommentValue!13633 (value!208332 List!42179)) (StringLiteralValue!20450 (value!208333 List!42179)) (ErrorTokenValue!6816 (msg!6877 List!42179)) )
))
(declare-datatypes ((C!23168 0))(
  ( (C!23169 (val!13678 Int)) )
))
(declare-datatypes ((Regex!11491 0))(
  ( (ElementMatch!11491 (c!686222 C!23168)) (Concat!18308 (regOne!23494 Regex!11491) (regTwo!23494 Regex!11491)) (EmptyExpr!11491) (Star!11491 (reg!11820 Regex!11491)) (EmptyLang!11491) (Union!11491 (regOne!23495 Regex!11491) (regTwo!23495 Regex!11491)) )
))
(declare-datatypes ((String!47798 0))(
  ( (String!47799 (value!208334 String)) )
))
(declare-datatypes ((List!42180 0))(
  ( (Nil!42056) (Cons!42056 (h!47476 C!23168) (t!328821 List!42180)) )
))
(declare-datatypes ((IArray!25599 0))(
  ( (IArray!25600 (innerList!12857 List!42180)) )
))
(declare-datatypes ((Conc!12797 0))(
  ( (Node!12797 (left!31968 Conc!12797) (right!32298 Conc!12797) (csize!25824 Int) (cheight!13008 Int)) (Leaf!19797 (xs!16103 IArray!25599) (csize!25825 Int)) (Empty!12797) )
))
(declare-datatypes ((BalanceConc!25188 0))(
  ( (BalanceConc!25189 (c!686223 Conc!12797)) )
))
(declare-datatypes ((TokenValueInjection!13060 0))(
  ( (TokenValueInjection!13061 (toValue!9062 Int) (toChars!8921 Int)) )
))
(declare-datatypes ((Rule!12972 0))(
  ( (Rule!12973 (regex!6586 Regex!11491) (tag!7446 String!47798) (isSeparator!6586 Bool) (transformation!6586 TokenValueInjection!13060)) )
))
(declare-datatypes ((Token!12310 0))(
  ( (Token!12311 (value!208335 TokenValue!6816) (rule!9556 Rule!12972) (size!31510 Int) (originalCharacters!7186 List!42180)) )
))
(declare-datatypes ((tuple2!41342 0))(
  ( (tuple2!41343 (_1!23805 Token!12310) (_2!23805 List!42180)) )
))
(declare-datatypes ((Option!9006 0))(
  ( (None!9005) (Some!9005 (v!39345 tuple2!41342)) )
))
(declare-fun err!4473 () Option!9006)

(declare-fun tp!1204430 () Bool)

(declare-fun e!2446974 () Bool)

(declare-fun inv!56281 (Token!12310) Bool)

(assert (=> b!3952822 (= e!2446974 (and (inv!56281 (_1!23805 (v!39345 err!4473))) e!2446960 tp!1204430))))

(declare-fun e!2446985 () Bool)

(declare-fun e!2446979 () Bool)

(declare-fun b!3952823 () Bool)

(declare-datatypes ((List!42181 0))(
  ( (Nil!42057) (Cons!42057 (h!47477 Token!12310) (t!328822 List!42181)) )
))
(declare-fun suffixTokens!72 () List!42181)

(declare-fun tp!1204437 () Bool)

(declare-fun inv!56278 (String!47798) Bool)

(declare-fun inv!56282 (TokenValueInjection!13060) Bool)

(assert (=> b!3952823 (= e!2446979 (and tp!1204437 (inv!56278 (tag!7446 (rule!9556 (h!47477 suffixTokens!72)))) (inv!56282 (transformation!6586 (rule!9556 (h!47477 suffixTokens!72)))) e!2446985))))

(declare-fun b!3952824 () Bool)

(declare-fun e!2446986 () Bool)

(declare-fun tp_is_empty!19953 () Bool)

(declare-fun tp!1204423 () Bool)

(assert (=> b!3952824 (= e!2446986 (and tp_is_empty!19953 tp!1204423))))

(declare-fun b!3952825 () Bool)

(declare-fun e!2446963 () Bool)

(declare-fun e!2446980 () Bool)

(assert (=> b!3952825 (= e!2446963 e!2446980)))

(declare-fun res!1599431 () Bool)

(assert (=> b!3952825 (=> res!1599431 e!2446980)))

(declare-fun lt!1382012 () List!42181)

(declare-fun lt!1381994 () List!42181)

(declare-fun lt!1382007 () List!42181)

(declare-datatypes ((tuple2!41344 0))(
  ( (tuple2!41345 (_1!23806 List!42181) (_2!23806 List!42180)) )
))
(declare-fun lt!1381991 () tuple2!41344)

(declare-fun prefixTokens!80 () List!42181)

(declare-fun lt!1382005 () List!42180)

(declare-fun prefix!426 () List!42180)

(assert (=> b!3952825 (= res!1599431 (or (not (= lt!1381994 (_1!23806 lt!1381991))) (not (= lt!1381994 lt!1382012)) (not (= prefixTokens!80 lt!1382007)) (not (= prefix!426 lt!1382005))))))

(assert (=> b!3952825 (= lt!1382005 prefix!426)))

(declare-fun lt!1382008 () Option!9006)

(declare-fun suffix!1176 () List!42180)

(declare-datatypes ((Unit!60560 0))(
  ( (Unit!60561) )
))
(declare-fun lt!1382002 () Unit!60560)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!596 (List!42180 List!42180 List!42180 List!42180) Unit!60560)

(assert (=> b!3952825 (= lt!1382002 (lemmaConcatSameAndSameSizesThenSameLists!596 lt!1382005 (_2!23805 (v!39345 lt!1382008)) prefix!426 suffix!1176))))

(declare-fun b!3952826 () Bool)

(declare-fun res!1599428 () Bool)

(declare-fun e!2446975 () Bool)

(assert (=> b!3952826 (=> res!1599428 e!2446975)))

(declare-fun lt!1381999 () tuple2!41342)

(declare-fun isEmpty!25126 (List!42180) Bool)

(assert (=> b!3952826 (= res!1599428 (not (isEmpty!25126 (_2!23805 lt!1381999))))))

(declare-fun b!3952827 () Bool)

(declare-fun e!2446968 () Bool)

(declare-fun e!2446958 () Bool)

(assert (=> b!3952827 (= e!2446968 e!2446958)))

(declare-fun res!1599440 () Bool)

(assert (=> b!3952827 (=> res!1599440 e!2446958)))

(declare-fun lt!1382013 () tuple2!41344)

(assert (=> b!3952827 (= res!1599440 (or (not (= lt!1381991 (tuple2!41345 lt!1382012 (_2!23806 lt!1382013)))) (not (= lt!1382013 (tuple2!41345 (_1!23806 lt!1382013) (_2!23806 lt!1382013)))) (not (= (_2!23805 (v!39345 lt!1382008)) suffix!1176))))))

(declare-fun ++!10929 (List!42181 List!42181) List!42181)

(assert (=> b!3952827 (= lt!1382012 (++!10929 lt!1382007 (_1!23806 lt!1382013)))))

(assert (=> b!3952827 (= lt!1382007 (Cons!42057 (_1!23805 (v!39345 lt!1382008)) Nil!42057))))

(declare-fun b!3952828 () Bool)

(declare-fun res!1599444 () Bool)

(assert (=> b!3952828 (=> res!1599444 e!2446980)))

(declare-fun isPrefix!3675 (List!42180 List!42180) Bool)

(assert (=> b!3952828 (= res!1599444 (not (isPrefix!3675 Nil!42056 suffix!1176)))))

(declare-fun e!2446984 () Bool)

(declare-fun tp!1204431 () Bool)

(declare-fun b!3952829 () Bool)

(declare-fun inv!21 (TokenValue!6816) Bool)

(assert (=> b!3952829 (= e!2446960 (and (inv!21 (value!208335 (_1!23805 (v!39345 err!4473)))) e!2446984 tp!1204431))))

(declare-fun tp!1204435 () Bool)

(declare-fun b!3952831 () Bool)

(declare-fun e!2446959 () Bool)

(declare-fun e!2446951 () Bool)

(assert (=> b!3952831 (= e!2446951 (and (inv!56281 (h!47477 prefixTokens!80)) e!2446959 tp!1204435))))

(declare-fun b!3952832 () Bool)

(declare-fun e!2446966 () Bool)

(declare-fun tp!1204422 () Bool)

(assert (=> b!3952832 (= e!2446966 (and tp_is_empty!19953 tp!1204422))))

(declare-fun b!3952833 () Bool)

(assert (=> b!3952833 true))

(assert (=> b!3952833 e!2446974))

(declare-fun e!2446987 () Option!9006)

(assert (=> b!3952833 (= e!2446987 err!4473)))

(declare-fun b!3952834 () Bool)

(declare-fun e!2446965 () Bool)

(declare-fun e!2446988 () Option!9006)

(assert (=> b!3952834 (= e!2446965 (= lt!1382008 e!2446988))))

(declare-fun c!686221 () Bool)

(declare-datatypes ((List!42182 0))(
  ( (Nil!42058) (Cons!42058 (h!47478 Rule!12972) (t!328823 List!42182)) )
))
(declare-fun rules!2768 () List!42182)

(get-info :version)

(assert (=> b!3952834 (= c!686221 (and ((_ is Cons!42058) rules!2768) ((_ is Nil!42058) (t!328823 rules!2768))))))

(declare-fun b!3952835 () Bool)

(declare-fun tp!1204425 () Bool)

(declare-fun e!2446973 () Bool)

(assert (=> b!3952835 (= e!2446973 (and (inv!21 (value!208335 (h!47477 suffixTokens!72))) e!2446979 tp!1204425))))

(declare-fun b!3952836 () Bool)

(declare-fun res!1599434 () Bool)

(declare-fun e!2446976 () Bool)

(assert (=> b!3952836 (=> (not res!1599434) (not e!2446976))))

(declare-fun suffixResult!91 () List!42180)

(declare-datatypes ((LexerInterface!6175 0))(
  ( (LexerInterfaceExt!6172 (__x!25850 Int)) (Lexer!6173) )
))
(declare-fun thiss!20629 () LexerInterface!6175)

(declare-fun lexList!1943 (LexerInterface!6175 List!42182 List!42180) tuple2!41344)

(assert (=> b!3952836 (= res!1599434 (= (lexList!1943 thiss!20629 rules!2768 suffix!1176) (tuple2!41345 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2446956 () Bool)

(declare-fun b!3952837 () Bool)

(declare-fun e!2446962 () Bool)

(declare-fun tp!1204436 () Bool)

(assert (=> b!3952837 (= e!2446956 (and tp!1204436 (inv!56278 (tag!7446 (rule!9556 (h!47477 prefixTokens!80)))) (inv!56282 (transformation!6586 (rule!9556 (h!47477 prefixTokens!80)))) e!2446962))))

(declare-fun b!3952838 () Bool)

(declare-fun res!1599445 () Bool)

(assert (=> b!3952838 (=> res!1599445 e!2446975)))

(declare-fun lt!1381998 () Option!9006)

(declare-fun lt!1382011 () Option!9006)

(assert (=> b!3952838 (= res!1599445 (not (= lt!1381998 lt!1382011)))))

(declare-fun b!3952839 () Bool)

(declare-fun e!2446969 () Bool)

(assert (=> b!3952839 (= e!2446980 e!2446969)))

(declare-fun res!1599435 () Bool)

(assert (=> b!3952839 (=> res!1599435 e!2446969)))

(declare-fun isDefined!6985 (Option!9006) Bool)

(assert (=> b!3952839 (= res!1599435 (not (isDefined!6985 lt!1381998)))))

(declare-fun maxPrefix!3479 (LexerInterface!6175 List!42182 List!42180) Option!9006)

(assert (=> b!3952839 (= lt!1381998 (maxPrefix!3479 thiss!20629 rules!2768 prefix!426))))

(declare-fun ++!10930 (List!42180 List!42180) List!42180)

(assert (=> b!3952839 (= (maxPrefix!3479 thiss!20629 rules!2768 (++!10930 prefix!426 Nil!42056)) lt!1382011)))

(assert (=> b!3952839 (= lt!1382011 (Some!9005 (tuple2!41343 (_1!23805 (v!39345 lt!1382008)) Nil!42056)))))

(declare-fun lt!1382006 () Unit!60560)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!48 (LexerInterface!6175 List!42182 List!42180 List!42180 List!42180 Token!12310 List!42180 List!42180) Unit!60560)

(assert (=> b!3952839 (= lt!1382006 (lemmaMaxPrefixThenWithShorterSuffix!48 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!42056 (_1!23805 (v!39345 lt!1382008)) suffix!1176 Nil!42056))))

(declare-fun b!3952840 () Bool)

(declare-fun e!2446953 () Bool)

(declare-fun tp!1204429 () Bool)

(assert (=> b!3952840 (= e!2446953 (and tp_is_empty!19953 tp!1204429))))

(declare-fun e!2446964 () Bool)

(assert (=> b!3952841 (= e!2446964 (and tp!1204440 tp!1204421))))

(declare-fun b!3952842 () Bool)

(declare-fun e!2446981 () Bool)

(declare-fun size!31511 (List!42180) Int)

(assert (=> b!3952842 (= e!2446981 (= (size!31510 (_1!23805 (v!39345 lt!1382008))) (size!31511 (originalCharacters!7186 (_1!23805 (v!39345 lt!1382008))))))))

(declare-fun b!3952843 () Bool)

(declare-fun e!2446971 () Bool)

(assert (=> b!3952843 (= e!2446971 (not e!2446968))))

(declare-fun res!1599441 () Bool)

(assert (=> b!3952843 (=> res!1599441 e!2446968)))

(declare-fun lt!1382004 () List!42180)

(declare-fun lt!1381993 () List!42180)

(assert (=> b!3952843 (= res!1599441 (not (= lt!1382004 lt!1381993)))))

(assert (=> b!3952843 (= lt!1382013 (lexList!1943 thiss!20629 rules!2768 (_2!23805 (v!39345 lt!1382008))))))

(declare-fun lt!1381995 () TokenValue!6816)

(declare-fun lt!1381989 () Int)

(declare-fun lt!1381990 () List!42180)

(assert (=> b!3952843 (and (= (size!31510 (_1!23805 (v!39345 lt!1382008))) lt!1381989) (= (originalCharacters!7186 (_1!23805 (v!39345 lt!1382008))) lt!1382005) (= (tuple2!41343 (_1!23805 (v!39345 lt!1382008)) (_2!23805 (v!39345 lt!1382008))) (tuple2!41343 (Token!12311 lt!1381995 (rule!9556 (_1!23805 (v!39345 lt!1382008))) lt!1381989 lt!1382005) lt!1381990)))))

(assert (=> b!3952843 (= lt!1381989 (size!31511 lt!1382005))))

(assert (=> b!3952843 e!2446981))

(declare-fun res!1599442 () Bool)

(assert (=> b!3952843 (=> (not res!1599442) (not e!2446981))))

(assert (=> b!3952843 (= res!1599442 (= (value!208335 (_1!23805 (v!39345 lt!1382008))) lt!1381995))))

(declare-fun apply!9817 (TokenValueInjection!13060 BalanceConc!25188) TokenValue!6816)

(declare-fun seqFromList!4845 (List!42180) BalanceConc!25188)

(assert (=> b!3952843 (= lt!1381995 (apply!9817 (transformation!6586 (rule!9556 (_1!23805 (v!39345 lt!1382008)))) (seqFromList!4845 lt!1382005)))))

(assert (=> b!3952843 (= (_2!23805 (v!39345 lt!1382008)) lt!1381990)))

(declare-fun lt!1382003 () Unit!60560)

(declare-fun lemmaSamePrefixThenSameSuffix!1884 (List!42180 List!42180 List!42180 List!42180 List!42180) Unit!60560)

(assert (=> b!3952843 (= lt!1382003 (lemmaSamePrefixThenSameSuffix!1884 lt!1382005 (_2!23805 (v!39345 lt!1382008)) lt!1382005 lt!1381990 lt!1381993))))

(declare-fun getSuffix!2126 (List!42180 List!42180) List!42180)

(assert (=> b!3952843 (= lt!1381990 (getSuffix!2126 lt!1381993 lt!1382005))))

(assert (=> b!3952843 (isPrefix!3675 lt!1382005 lt!1382004)))

(assert (=> b!3952843 (= lt!1382004 (++!10930 lt!1382005 (_2!23805 (v!39345 lt!1382008))))))

(declare-fun lt!1382009 () Unit!60560)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2534 (List!42180 List!42180) Unit!60560)

(assert (=> b!3952843 (= lt!1382009 (lemmaConcatTwoListThenFirstIsPrefix!2534 lt!1382005 (_2!23805 (v!39345 lt!1382008))))))

(declare-fun list!15616 (BalanceConc!25188) List!42180)

(declare-fun charsOf!4404 (Token!12310) BalanceConc!25188)

(assert (=> b!3952843 (= lt!1382005 (list!15616 (charsOf!4404 (_1!23805 (v!39345 lt!1382008)))))))

(declare-fun ruleValid!2528 (LexerInterface!6175 Rule!12972) Bool)

(assert (=> b!3952843 (ruleValid!2528 thiss!20629 (rule!9556 (_1!23805 (v!39345 lt!1382008))))))

(declare-fun lt!1382001 () Unit!60560)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1604 (LexerInterface!6175 Rule!12972 List!42182) Unit!60560)

(assert (=> b!3952843 (= lt!1382001 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1604 thiss!20629 (rule!9556 (_1!23805 (v!39345 lt!1382008))) rules!2768))))

(declare-fun lt!1382010 () Unit!60560)

(declare-fun lemmaCharactersSize!1239 (Token!12310) Unit!60560)

(assert (=> b!3952843 (= lt!1382010 (lemmaCharactersSize!1239 (_1!23805 (v!39345 lt!1382008))))))

(declare-fun b!3952844 () Bool)

(declare-fun res!1599437 () Bool)

(declare-fun e!2446982 () Bool)

(assert (=> b!3952844 (=> (not res!1599437) (not e!2446982))))

(declare-fun isEmpty!25127 (List!42181) Bool)

(assert (=> b!3952844 (= res!1599437 (not (isEmpty!25127 prefixTokens!80)))))

(declare-fun e!2446967 () Bool)

(assert (=> b!3952845 (= e!2446967 (and tp!1204419 tp!1204439))))

(declare-fun b!3952846 () Bool)

(declare-fun lt!1381997 () tuple2!41344)

(assert (=> b!3952846 (= e!2446975 (or (not (= lt!1381997 (tuple2!41345 lt!1382007 Nil!42056))) (= lt!1381997 (tuple2!41345 prefixTokens!80 Nil!42056))))))

(assert (=> b!3952846 (= lt!1381997 (lexList!1943 thiss!20629 rules!2768 prefix!426))))

(declare-fun b!3952847 () Bool)

(declare-fun tp!1204420 () Bool)

(declare-fun e!2446978 () Bool)

(assert (=> b!3952847 (= e!2446978 (and (inv!56281 (h!47477 suffixTokens!72)) e!2446973 tp!1204420))))

(assert (=> b!3952848 (= e!2446985 (and tp!1204432 tp!1204427))))

(declare-fun b!3952849 () Bool)

(assert (=> b!3952849 (= e!2446958 e!2446963)))

(declare-fun res!1599446 () Bool)

(assert (=> b!3952849 (=> res!1599446 e!2446963)))

(assert (=> b!3952849 (= res!1599446 (not (= lt!1382008 (Some!9005 (tuple2!41343 (_1!23805 (v!39345 lt!1382008)) (_2!23805 (v!39345 lt!1382008)))))))))

(assert (=> b!3952849 e!2446965))

(declare-fun res!1599432 () Bool)

(assert (=> b!3952849 (=> (not res!1599432) (not e!2446965))))

(assert (=> b!3952849 (= res!1599432 (isPrefix!3675 lt!1381993 lt!1381993))))

(declare-fun lt!1381992 () Unit!60560)

(declare-fun lemmaIsPrefixRefl!2326 (List!42180 List!42180) Unit!60560)

(assert (=> b!3952849 (= lt!1381992 (lemmaIsPrefixRefl!2326 lt!1381993 lt!1381993))))

(assert (=> b!3952849 (= lt!1381991 (tuple2!41345 (Cons!42057 (_1!23805 (v!39345 lt!1382008)) (_1!23806 lt!1382013)) (_2!23806 lt!1382013)))))

(assert (=> b!3952850 (= e!2446962 (and tp!1204428 tp!1204424))))

(declare-fun res!1599433 () Bool)

(assert (=> start!371600 (=> (not res!1599433) (not e!2446982))))

(assert (=> start!371600 (= res!1599433 ((_ is Lexer!6173) thiss!20629))))

(assert (=> start!371600 e!2446982))

(assert (=> start!371600 e!2446986))

(assert (=> start!371600 true))

(assert (=> start!371600 e!2446966))

(declare-fun e!2446977 () Bool)

(assert (=> start!371600 e!2446977))

(assert (=> start!371600 e!2446951))

(assert (=> start!371600 e!2446978))

(assert (=> start!371600 e!2446953))

(declare-fun tp!1204426 () Bool)

(declare-fun b!3952830 () Bool)

(assert (=> b!3952830 (= e!2446959 (and (inv!21 (value!208335 (h!47477 prefixTokens!80))) e!2446956 tp!1204426))))

(declare-fun b!3952851 () Bool)

(declare-fun res!1599430 () Bool)

(assert (=> b!3952851 (=> (not res!1599430) (not e!2446982))))

(declare-fun isEmpty!25128 (List!42182) Bool)

(assert (=> b!3952851 (= res!1599430 (not (isEmpty!25128 rules!2768)))))

(declare-fun b!3952852 () Bool)

(declare-fun lt!1382000 () Option!9006)

(assert (=> b!3952852 (= lt!1382000 (maxPrefix!3479 thiss!20629 (t!328823 rules!2768) lt!1381993))))

(declare-fun lt!1381996 () Option!9006)

(declare-fun call!285264 () Option!9006)

(assert (=> b!3952852 (= lt!1381996 call!285264)))

(assert (=> b!3952852 (= e!2446987 (ite (and ((_ is None!9005) lt!1381996) ((_ is None!9005) lt!1382000)) None!9005 (ite ((_ is None!9005) lt!1382000) lt!1381996 (ite ((_ is None!9005) lt!1381996) lt!1382000 (ite (>= (size!31510 (_1!23805 (v!39345 lt!1381996))) (size!31510 (_1!23805 (v!39345 lt!1382000)))) (Some!9005 (v!39345 lt!1381996)) lt!1382000)))))))

(declare-fun tp!1204433 () Bool)

(declare-fun b!3952853 () Bool)

(declare-fun e!2446970 () Bool)

(assert (=> b!3952853 (= e!2446970 (and tp!1204433 (inv!56278 (tag!7446 (h!47478 rules!2768))) (inv!56282 (transformation!6586 (h!47478 rules!2768))) e!2446967))))

(declare-fun b!3952854 () Bool)

(declare-fun tp!1204434 () Bool)

(assert (=> b!3952854 (= e!2446977 (and e!2446970 tp!1204434))))

(declare-fun b!3952855 () Bool)

(assert (=> b!3952855 (= e!2446988 call!285264)))

(declare-fun b!3952856 () Bool)

(assert (=> b!3952856 (= e!2446988 e!2446987)))

(declare-fun c!686220 () Bool)

(assert (=> b!3952856 (= c!686220 ((_ is Cons!42058) rules!2768))))

(declare-fun b!3952857 () Bool)

(assert (=> b!3952857 (= e!2446976 e!2446971)))

(declare-fun res!1599438 () Bool)

(assert (=> b!3952857 (=> (not res!1599438) (not e!2446971))))

(assert (=> b!3952857 (= res!1599438 ((_ is Some!9005) lt!1382008))))

(assert (=> b!3952857 (= lt!1382008 (maxPrefix!3479 thiss!20629 rules!2768 lt!1381993))))

(declare-fun tp!1204438 () Bool)

(declare-fun b!3952858 () Bool)

(assert (=> b!3952858 (= e!2446984 (and tp!1204438 (inv!56278 (tag!7446 (rule!9556 (_1!23805 (v!39345 err!4473))))) (inv!56282 (transformation!6586 (rule!9556 (_1!23805 (v!39345 err!4473))))) e!2446964))))

(declare-fun b!3952859 () Bool)

(assert (=> b!3952859 (= e!2446969 e!2446975)))

(declare-fun res!1599439 () Bool)

(assert (=> b!3952859 (=> res!1599439 e!2446975)))

(assert (=> b!3952859 (= res!1599439 (not (= (_1!23805 lt!1381999) (_1!23805 (v!39345 lt!1382008)))))))

(declare-fun get!13873 (Option!9006) tuple2!41342)

(assert (=> b!3952859 (= lt!1381999 (get!13873 lt!1381998))))

(declare-fun b!3952860 () Bool)

(declare-fun res!1599429 () Bool)

(assert (=> b!3952860 (=> (not res!1599429) (not e!2446982))))

(assert (=> b!3952860 (= res!1599429 (not (isEmpty!25126 prefix!426)))))

(declare-fun bm!285259 () Bool)

(declare-fun maxPrefixOneRule!2533 (LexerInterface!6175 Rule!12972 List!42180) Option!9006)

(assert (=> bm!285259 (= call!285264 (maxPrefixOneRule!2533 thiss!20629 (h!47478 rules!2768) lt!1381993))))

(declare-fun b!3952861 () Bool)

(assert (=> b!3952861 (= e!2446982 e!2446976)))

(declare-fun res!1599436 () Bool)

(assert (=> b!3952861 (=> (not res!1599436) (not e!2446976))))

(assert (=> b!3952861 (= res!1599436 (= lt!1381991 (tuple2!41345 lt!1381994 suffixResult!91)))))

(assert (=> b!3952861 (= lt!1381991 (lexList!1943 thiss!20629 rules!2768 lt!1381993))))

(assert (=> b!3952861 (= lt!1381994 (++!10929 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3952861 (= lt!1381993 (++!10930 prefix!426 suffix!1176))))

(declare-fun b!3952862 () Bool)

(declare-fun res!1599443 () Bool)

(assert (=> b!3952862 (=> (not res!1599443) (not e!2446982))))

(declare-fun rulesInvariant!5518 (LexerInterface!6175 List!42182) Bool)

(assert (=> b!3952862 (= res!1599443 (rulesInvariant!5518 thiss!20629 rules!2768))))

(assert (= (and start!371600 res!1599433) b!3952851))

(assert (= (and b!3952851 res!1599430) b!3952862))

(assert (= (and b!3952862 res!1599443) b!3952844))

(assert (= (and b!3952844 res!1599437) b!3952860))

(assert (= (and b!3952860 res!1599429) b!3952861))

(assert (= (and b!3952861 res!1599436) b!3952836))

(assert (= (and b!3952836 res!1599434) b!3952857))

(assert (= (and b!3952857 res!1599438) b!3952843))

(assert (= (and b!3952843 res!1599442) b!3952842))

(assert (= (and b!3952843 (not res!1599441)) b!3952827))

(assert (= (and b!3952827 (not res!1599440)) b!3952849))

(assert (= (and b!3952849 res!1599432) b!3952834))

(assert (= (and b!3952834 c!686221) b!3952855))

(assert (= (and b!3952834 (not c!686221)) b!3952856))

(assert (= (and b!3952856 c!686220) b!3952852))

(assert (= (and b!3952856 (not c!686220)) b!3952833))

(assert (= b!3952858 b!3952841))

(assert (= b!3952829 b!3952858))

(assert (= b!3952822 b!3952829))

(assert (= (and b!3952833 ((_ is Some!9005) err!4473)) b!3952822))

(assert (= (or b!3952855 b!3952852) bm!285259))

(assert (= (and b!3952849 (not res!1599446)) b!3952825))

(assert (= (and b!3952825 (not res!1599431)) b!3952828))

(assert (= (and b!3952828 (not res!1599444)) b!3952839))

(assert (= (and b!3952839 (not res!1599435)) b!3952859))

(assert (= (and b!3952859 (not res!1599439)) b!3952826))

(assert (= (and b!3952826 (not res!1599428)) b!3952838))

(assert (= (and b!3952838 (not res!1599445)) b!3952846))

(assert (= (and start!371600 ((_ is Cons!42056) suffixResult!91)) b!3952824))

(assert (= (and start!371600 ((_ is Cons!42056) suffix!1176)) b!3952832))

(assert (= b!3952853 b!3952845))

(assert (= b!3952854 b!3952853))

(assert (= (and start!371600 ((_ is Cons!42058) rules!2768)) b!3952854))

(assert (= b!3952837 b!3952850))

(assert (= b!3952830 b!3952837))

(assert (= b!3952831 b!3952830))

(assert (= (and start!371600 ((_ is Cons!42057) prefixTokens!80)) b!3952831))

(assert (= b!3952823 b!3952848))

(assert (= b!3952835 b!3952823))

(assert (= b!3952847 b!3952835))

(assert (= (and start!371600 ((_ is Cons!42057) suffixTokens!72)) b!3952847))

(assert (= (and start!371600 ((_ is Cons!42056) prefix!426)) b!3952840))

(declare-fun m!4521583 () Bool)

(assert (=> b!3952827 m!4521583))

(declare-fun m!4521585 () Bool)

(assert (=> b!3952837 m!4521585))

(declare-fun m!4521587 () Bool)

(assert (=> b!3952837 m!4521587))

(declare-fun m!4521589 () Bool)

(assert (=> b!3952859 m!4521589))

(declare-fun m!4521591 () Bool)

(assert (=> b!3952857 m!4521591))

(declare-fun m!4521593 () Bool)

(assert (=> b!3952828 m!4521593))

(declare-fun m!4521595 () Bool)

(assert (=> b!3952849 m!4521595))

(declare-fun m!4521597 () Bool)

(assert (=> b!3952849 m!4521597))

(declare-fun m!4521599 () Bool)

(assert (=> b!3952825 m!4521599))

(declare-fun m!4521601 () Bool)

(assert (=> b!3952861 m!4521601))

(declare-fun m!4521603 () Bool)

(assert (=> b!3952861 m!4521603))

(declare-fun m!4521605 () Bool)

(assert (=> b!3952861 m!4521605))

(declare-fun m!4521607 () Bool)

(assert (=> b!3952842 m!4521607))

(declare-fun m!4521609 () Bool)

(assert (=> b!3952858 m!4521609))

(declare-fun m!4521611 () Bool)

(assert (=> b!3952858 m!4521611))

(declare-fun m!4521613 () Bool)

(assert (=> b!3952843 m!4521613))

(declare-fun m!4521615 () Bool)

(assert (=> b!3952843 m!4521615))

(declare-fun m!4521617 () Bool)

(assert (=> b!3952843 m!4521617))

(declare-fun m!4521619 () Bool)

(assert (=> b!3952843 m!4521619))

(declare-fun m!4521621 () Bool)

(assert (=> b!3952843 m!4521621))

(declare-fun m!4521623 () Bool)

(assert (=> b!3952843 m!4521623))

(assert (=> b!3952843 m!4521613))

(declare-fun m!4521625 () Bool)

(assert (=> b!3952843 m!4521625))

(declare-fun m!4521627 () Bool)

(assert (=> b!3952843 m!4521627))

(declare-fun m!4521629 () Bool)

(assert (=> b!3952843 m!4521629))

(declare-fun m!4521631 () Bool)

(assert (=> b!3952843 m!4521631))

(declare-fun m!4521633 () Bool)

(assert (=> b!3952843 m!4521633))

(declare-fun m!4521635 () Bool)

(assert (=> b!3952843 m!4521635))

(assert (=> b!3952843 m!4521631))

(declare-fun m!4521637 () Bool)

(assert (=> b!3952843 m!4521637))

(declare-fun m!4521639 () Bool)

(assert (=> b!3952843 m!4521639))

(declare-fun m!4521641 () Bool)

(assert (=> b!3952829 m!4521641))

(declare-fun m!4521643 () Bool)

(assert (=> b!3952836 m!4521643))

(declare-fun m!4521645 () Bool)

(assert (=> b!3952846 m!4521645))

(declare-fun m!4521647 () Bool)

(assert (=> b!3952851 m!4521647))

(declare-fun m!4521649 () Bool)

(assert (=> b!3952860 m!4521649))

(declare-fun m!4521651 () Bool)

(assert (=> b!3952852 m!4521651))

(declare-fun m!4521653 () Bool)

(assert (=> b!3952831 m!4521653))

(declare-fun m!4521655 () Bool)

(assert (=> b!3952830 m!4521655))

(declare-fun m!4521657 () Bool)

(assert (=> b!3952853 m!4521657))

(declare-fun m!4521659 () Bool)

(assert (=> b!3952853 m!4521659))

(declare-fun m!4521661 () Bool)

(assert (=> b!3952862 m!4521661))

(declare-fun m!4521663 () Bool)

(assert (=> b!3952823 m!4521663))

(declare-fun m!4521665 () Bool)

(assert (=> b!3952823 m!4521665))

(declare-fun m!4521667 () Bool)

(assert (=> b!3952847 m!4521667))

(declare-fun m!4521669 () Bool)

(assert (=> b!3952835 m!4521669))

(declare-fun m!4521671 () Bool)

(assert (=> b!3952844 m!4521671))

(declare-fun m!4521673 () Bool)

(assert (=> b!3952822 m!4521673))

(declare-fun m!4521675 () Bool)

(assert (=> b!3952839 m!4521675))

(declare-fun m!4521677 () Bool)

(assert (=> b!3952839 m!4521677))

(declare-fun m!4521679 () Bool)

(assert (=> b!3952839 m!4521679))

(declare-fun m!4521681 () Bool)

(assert (=> b!3952839 m!4521681))

(assert (=> b!3952839 m!4521675))

(declare-fun m!4521683 () Bool)

(assert (=> b!3952839 m!4521683))

(declare-fun m!4521685 () Bool)

(assert (=> bm!285259 m!4521685))

(declare-fun m!4521687 () Bool)

(assert (=> b!3952826 m!4521687))

(check-sat (not b_next!109473) (not b!3952846) (not b!3952849) (not b!3952862) b_and!303005 (not b!3952828) (not b!3952854) b_and!303003 (not b_next!109475) (not b!3952825) (not b!3952858) (not b!3952831) (not b_next!109467) (not b!3952839) (not b_next!109469) b_and!303007 (not b_next!109479) tp_is_empty!19953 (not b!3952843) b_and!303009 (not b!3952835) (not b!3952840) (not b!3952832) b_and!303011 b_and!303013 (not b!3952824) (not b!3952826) (not b_next!109477) (not b!3952844) (not b!3952822) (not b!3952842) (not b!3952837) b_and!303015 (not b!3952836) (not b!3952829) (not b!3952827) (not b!3952830) b_and!303017 (not b!3952861) (not b_next!109471) (not b!3952851) (not b!3952857) (not b!3952853) (not b!3952852) (not b!3952847) (not b!3952823) (not bm!285259) (not b!3952860) (not b_next!109465) (not b!3952859))
(check-sat (not b_next!109473) (not b_next!109467) b_and!303009 b_and!303011 b_and!303013 b_and!303005 (not b_next!109477) b_and!303015 b_and!303017 (not b_next!109471) b_and!303003 (not b_next!109475) (not b_next!109465) (not b_next!109469) b_and!303007 (not b_next!109479))
