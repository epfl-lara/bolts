; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383432 () Bool)

(assert start!383432)

(declare-fun b!4065427 () Bool)

(declare-fun b_free!113097 () Bool)

(declare-fun b_next!113801 () Bool)

(assert (=> b!4065427 (= b_free!113097 (not b_next!113801))))

(declare-fun tp!1230879 () Bool)

(declare-fun b_and!312499 () Bool)

(assert (=> b!4065427 (= tp!1230879 b_and!312499)))

(declare-fun b_free!113099 () Bool)

(declare-fun b_next!113803 () Bool)

(assert (=> b!4065427 (= b_free!113099 (not b_next!113803))))

(declare-fun tp!1230878 () Bool)

(declare-fun b_and!312501 () Bool)

(assert (=> b!4065427 (= tp!1230878 b_and!312501)))

(declare-fun b!4065433 () Bool)

(declare-fun b_free!113101 () Bool)

(declare-fun b_next!113805 () Bool)

(assert (=> b!4065433 (= b_free!113101 (not b_next!113805))))

(declare-fun tp!1230870 () Bool)

(declare-fun b_and!312503 () Bool)

(assert (=> b!4065433 (= tp!1230870 b_and!312503)))

(declare-fun b_free!113103 () Bool)

(declare-fun b_next!113807 () Bool)

(assert (=> b!4065433 (= b_free!113103 (not b_next!113807))))

(declare-fun tp!1230872 () Bool)

(declare-fun b_and!312505 () Bool)

(assert (=> b!4065433 (= tp!1230872 b_and!312505)))

(declare-fun b!4065410 () Bool)

(declare-fun res!1659063 () Bool)

(declare-fun e!2522955 () Bool)

(assert (=> b!4065410 (=> (not res!1659063) (not e!2522955))))

(declare-datatypes ((LexerInterface!6565 0))(
  ( (LexerInterfaceExt!6562 (__x!26629 Int)) (Lexer!6563) )
))
(declare-fun thiss!21717 () LexerInterface!6565)

(declare-datatypes ((C!23948 0))(
  ( (C!23949 (val!14068 Int)) )
))
(declare-datatypes ((List!43553 0))(
  ( (Nil!43429) (Cons!43429 (h!48849 C!23948) (t!336808 List!43553)) )
))
(declare-datatypes ((IArray!26379 0))(
  ( (IArray!26380 (innerList!13247 List!43553)) )
))
(declare-datatypes ((Conc!13187 0))(
  ( (Node!13187 (left!32669 Conc!13187) (right!32999 Conc!13187) (csize!26604 Int) (cheight!13398 Int)) (Leaf!20382 (xs!16493 IArray!26379) (csize!26605 Int)) (Empty!13187) )
))
(declare-datatypes ((BalanceConc!25968 0))(
  ( (BalanceConc!25969 (c!701966 Conc!13187)) )
))
(declare-datatypes ((List!43554 0))(
  ( (Nil!43430) (Cons!43430 (h!48850 (_ BitVec 16)) (t!336809 List!43554)) )
))
(declare-datatypes ((TokenValue!7206 0))(
  ( (FloatLiteralValue!14412 (text!50887 List!43554)) (TokenValueExt!7205 (__x!26630 Int)) (Broken!36030 (value!219424 List!43554)) (Object!7329) (End!7206) (Def!7206) (Underscore!7206) (Match!7206) (Else!7206) (Error!7206) (Case!7206) (If!7206) (Extends!7206) (Abstract!7206) (Class!7206) (Val!7206) (DelimiterValue!14412 (del!7266 List!43554)) (KeywordValue!7212 (value!219425 List!43554)) (CommentValue!14412 (value!219426 List!43554)) (WhitespaceValue!14412 (value!219427 List!43554)) (IndentationValue!7206 (value!219428 List!43554)) (String!49747) (Int32!7206) (Broken!36031 (value!219429 List!43554)) (Boolean!7207) (Unit!62944) (OperatorValue!7209 (op!7266 List!43554)) (IdentifierValue!14412 (value!219430 List!43554)) (IdentifierValue!14413 (value!219431 List!43554)) (WhitespaceValue!14413 (value!219432 List!43554)) (True!14412) (False!14412) (Broken!36032 (value!219433 List!43554)) (Broken!36033 (value!219434 List!43554)) (True!14413) (RightBrace!7206) (RightBracket!7206) (Colon!7206) (Null!7206) (Comma!7206) (LeftBracket!7206) (False!14413) (LeftBrace!7206) (ImaginaryLiteralValue!7206 (text!50888 List!43554)) (StringLiteralValue!21618 (value!219435 List!43554)) (EOFValue!7206 (value!219436 List!43554)) (IdentValue!7206 (value!219437 List!43554)) (DelimiterValue!14413 (value!219438 List!43554)) (DedentValue!7206 (value!219439 List!43554)) (NewLineValue!7206 (value!219440 List!43554)) (IntegerValue!21618 (value!219441 (_ BitVec 32)) (text!50889 List!43554)) (IntegerValue!21619 (value!219442 Int) (text!50890 List!43554)) (Times!7206) (Or!7206) (Equal!7206) (Minus!7206) (Broken!36034 (value!219443 List!43554)) (And!7206) (Div!7206) (LessEqual!7206) (Mod!7206) (Concat!19087) (Not!7206) (Plus!7206) (SpaceValue!7206 (value!219444 List!43554)) (IntegerValue!21620 (value!219445 Int) (text!50891 List!43554)) (StringLiteralValue!21619 (text!50892 List!43554)) (FloatLiteralValue!14413 (text!50893 List!43554)) (BytesLiteralValue!7206 (value!219446 List!43554)) (CommentValue!14413 (value!219447 List!43554)) (StringLiteralValue!21620 (value!219448 List!43554)) (ErrorTokenValue!7206 (msg!7267 List!43554)) )
))
(declare-datatypes ((String!49748 0))(
  ( (String!49749 (value!219449 String)) )
))
(declare-datatypes ((Regex!11881 0))(
  ( (ElementMatch!11881 (c!701967 C!23948)) (Concat!19088 (regOne!24274 Regex!11881) (regTwo!24274 Regex!11881)) (EmptyExpr!11881) (Star!11881 (reg!12210 Regex!11881)) (EmptyLang!11881) (Union!11881 (regOne!24275 Regex!11881) (regTwo!24275 Regex!11881)) )
))
(declare-datatypes ((TokenValueInjection!13840 0))(
  ( (TokenValueInjection!13841 (toValue!9536 Int) (toChars!9395 Int)) )
))
(declare-datatypes ((Rule!13752 0))(
  ( (Rule!13753 (regex!6976 Regex!11881) (tag!7836 String!49748) (isSeparator!6976 Bool) (transformation!6976 TokenValueInjection!13840)) )
))
(declare-datatypes ((List!43555 0))(
  ( (Nil!43431) (Cons!43431 (h!48851 Rule!13752) (t!336810 List!43555)) )
))
(declare-fun rules!2999 () List!43555)

(declare-fun rulesInvariant!5908 (LexerInterface!6565 List!43555) Bool)

(assert (=> b!4065410 (= res!1659063 (rulesInvariant!5908 thiss!21717 rules!2999))))

(declare-fun b!4065411 () Bool)

(declare-fun e!2522965 () Bool)

(declare-fun e!2522973 () Bool)

(assert (=> b!4065411 (= e!2522965 e!2522973)))

(declare-fun res!1659062 () Bool)

(assert (=> b!4065411 (=> res!1659062 e!2522973)))

(declare-fun lt!1454292 () List!43553)

(declare-fun lt!1454301 () List!43553)

(assert (=> b!4065411 (= res!1659062 (not (= lt!1454292 lt!1454301)))))

(declare-fun lt!1454242 () List!43553)

(declare-fun lt!1454249 () List!43553)

(declare-fun ++!11378 (List!43553 List!43553) List!43553)

(assert (=> b!4065411 (= lt!1454292 (++!11378 lt!1454242 lt!1454249))))

(declare-fun getSuffix!2480 (List!43553 List!43553) List!43553)

(assert (=> b!4065411 (= lt!1454249 (getSuffix!2480 lt!1454301 lt!1454242))))

(declare-fun e!2522954 () Bool)

(assert (=> b!4065411 e!2522954))

(declare-fun res!1659077 () Bool)

(assert (=> b!4065411 (=> (not res!1659077) (not e!2522954))))

(declare-fun isPrefix!4063 (List!43553 List!43553) Bool)

(assert (=> b!4065411 (= res!1659077 (isPrefix!4063 lt!1454301 lt!1454301))))

(declare-datatypes ((Unit!62945 0))(
  ( (Unit!62946) )
))
(declare-fun lt!1454244 () Unit!62945)

(declare-fun lemmaIsPrefixRefl!2630 (List!43553 List!43553) Unit!62945)

(assert (=> b!4065411 (= lt!1454244 (lemmaIsPrefixRefl!2630 lt!1454301 lt!1454301))))

(declare-fun e!2522961 () Bool)

(declare-datatypes ((Token!13090 0))(
  ( (Token!13091 (value!219450 TokenValue!7206) (rule!10074 Rule!13752) (size!32469 Int) (originalCharacters!7576 List!43553)) )
))
(declare-fun token!484 () Token!13090)

(declare-fun b!4065412 () Bool)

(declare-fun tp!1230882 () Bool)

(declare-fun e!2522950 () Bool)

(declare-fun inv!58055 (String!49748) Bool)

(declare-fun inv!58058 (TokenValueInjection!13840) Bool)

(assert (=> b!4065412 (= e!2522950 (and tp!1230882 (inv!58055 (tag!7836 (rule!10074 token!484))) (inv!58058 (transformation!6976 (rule!10074 token!484))) e!2522961))))

(declare-fun b!4065413 () Bool)

(declare-fun e!2522979 () Bool)

(declare-fun e!2522983 () Bool)

(assert (=> b!4065413 (= e!2522979 e!2522983)))

(declare-fun res!1659057 () Bool)

(assert (=> b!4065413 (=> res!1659057 e!2522983)))

(assert (=> b!4065413 (= res!1659057 (not (isPrefix!4063 lt!1454242 lt!1454301)))))

(declare-fun prefix!494 () List!43553)

(assert (=> b!4065413 (isPrefix!4063 prefix!494 lt!1454301)))

(declare-fun lt!1454259 () Unit!62945)

(declare-fun suffix!1299 () List!43553)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2898 (List!43553 List!43553) Unit!62945)

(assert (=> b!4065413 (= lt!1454259 (lemmaConcatTwoListThenFirstIsPrefix!2898 prefix!494 suffix!1299))))

(declare-fun lt!1454284 () List!43553)

(assert (=> b!4065413 (isPrefix!4063 lt!1454242 lt!1454284)))

(declare-fun lt!1454307 () Unit!62945)

(declare-fun suffixResult!105 () List!43553)

(assert (=> b!4065413 (= lt!1454307 (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454242 suffixResult!105))))

(declare-fun b!4065414 () Bool)

(declare-fun e!2522985 () Unit!62945)

(declare-fun Unit!62947 () Unit!62945)

(assert (=> b!4065414 (= e!2522985 Unit!62947)))

(declare-datatypes ((tuple2!42482 0))(
  ( (tuple2!42483 (_1!24375 Token!13090) (_2!24375 List!43553)) )
))
(declare-datatypes ((Option!9390 0))(
  ( (None!9389) (Some!9389 (v!39815 tuple2!42482)) )
))
(declare-fun lt!1454295 () Option!9390)

(declare-fun lt!1454287 () List!43553)

(declare-fun lt!1454264 () List!43553)

(declare-fun lt!1454248 () Unit!62945)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!304 (LexerInterface!6565 List!43555 Rule!13752 List!43553 List!43553 Rule!13752) Unit!62945)

(assert (=> b!4065414 (= lt!1454248 (lemmaMaxPrefNoSmallerRuleMatches!304 thiss!21717 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454287 lt!1454264 (rule!10074 token!484)))))

(declare-fun res!1659068 () Bool)

(declare-fun matchR!5834 (Regex!11881 List!43553) Bool)

(assert (=> b!4065414 (= res!1659068 (not (matchR!5834 (regex!6976 (rule!10074 token!484)) lt!1454287)))))

(declare-fun e!2522971 () Bool)

(assert (=> b!4065414 (=> (not res!1659068) (not e!2522971))))

(assert (=> b!4065414 e!2522971))

(declare-fun b!4065415 () Bool)

(declare-fun e!2522951 () Bool)

(declare-fun e!2522966 () Bool)

(declare-fun tp!1230874 () Bool)

(assert (=> b!4065415 (= e!2522951 (and e!2522966 tp!1230874))))

(declare-fun b!4065416 () Bool)

(declare-fun e!2522978 () Bool)

(declare-fun e!2522986 () Bool)

(assert (=> b!4065416 (= e!2522978 e!2522986)))

(declare-fun res!1659079 () Bool)

(assert (=> b!4065416 (=> res!1659079 e!2522986)))

(declare-fun lt!1454279 () Int)

(declare-fun lt!1454300 () Int)

(assert (=> b!4065416 (= res!1659079 (not (= lt!1454279 lt!1454300)))))

(declare-fun lt!1454253 () Unit!62945)

(declare-fun e!2522974 () Unit!62945)

(assert (=> b!4065416 (= lt!1454253 e!2522974)))

(declare-fun c!701962 () Bool)

(assert (=> b!4065416 (= c!701962 (< lt!1454300 lt!1454279))))

(declare-fun lt!1454272 () Unit!62945)

(declare-fun e!2522957 () Unit!62945)

(assert (=> b!4065416 (= lt!1454272 e!2522957)))

(declare-fun c!701965 () Bool)

(assert (=> b!4065416 (= c!701965 (> lt!1454300 lt!1454279))))

(declare-fun lt!1454252 () List!43553)

(assert (=> b!4065416 (= (_2!24375 (v!39815 lt!1454295)) lt!1454252)))

(declare-fun lt!1454273 () Unit!62945)

(declare-fun lemmaSamePrefixThenSameSuffix!2224 (List!43553 List!43553 List!43553 List!43553 List!43553) Unit!62945)

(assert (=> b!4065416 (= lt!1454273 (lemmaSamePrefixThenSameSuffix!2224 lt!1454287 (_2!24375 (v!39815 lt!1454295)) lt!1454287 lt!1454252 lt!1454264))))

(declare-fun lt!1454246 () List!43553)

(assert (=> b!4065416 (isPrefix!4063 lt!1454287 lt!1454246)))

(declare-fun lt!1454268 () Unit!62945)

(assert (=> b!4065416 (= lt!1454268 (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454287 lt!1454252))))

(declare-fun b!4065417 () Bool)

(declare-fun e!2522956 () Bool)

(declare-fun e!2522981 () Bool)

(assert (=> b!4065417 (= e!2522956 e!2522981)))

(declare-fun res!1659074 () Bool)

(assert (=> b!4065417 (=> res!1659074 e!2522981)))

(declare-fun lt!1454262 () List!43553)

(assert (=> b!4065417 (= res!1659074 (not (= lt!1454262 suffix!1299)))))

(declare-fun newSuffix!27 () List!43553)

(declare-fun lt!1454298 () List!43553)

(assert (=> b!4065417 (= lt!1454262 (++!11378 newSuffix!27 lt!1454298))))

(assert (=> b!4065417 (= lt!1454298 (getSuffix!2480 suffix!1299 newSuffix!27))))

(declare-fun b!4065418 () Bool)

(declare-fun res!1659064 () Bool)

(assert (=> b!4065418 (=> res!1659064 e!2522986)))

(assert (=> b!4065418 (= res!1659064 (not (isPrefix!4063 lt!1454287 lt!1454264)))))

(declare-fun b!4065419 () Bool)

(declare-fun e!2522969 () Bool)

(declare-fun e!2522976 () Bool)

(assert (=> b!4065419 (= e!2522969 e!2522976)))

(declare-fun res!1659060 () Bool)

(assert (=> b!4065419 (=> res!1659060 e!2522976)))

(assert (=> b!4065419 (= res!1659060 (not (isPrefix!4063 lt!1454287 lt!1454301)))))

(declare-fun lt!1454285 () List!43553)

(assert (=> b!4065419 (isPrefix!4063 lt!1454287 lt!1454285)))

(declare-fun lt!1454245 () Unit!62945)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!856 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> b!4065419 (= lt!1454245 (lemmaPrefixStaysPrefixWhenAddingToSuffix!856 lt!1454287 lt!1454264 lt!1454298))))

(declare-fun b!4065420 () Bool)

(declare-fun Unit!62948 () Unit!62945)

(assert (=> b!4065420 (= e!2522957 Unit!62948)))

(declare-fun lt!1454274 () Unit!62945)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!502 (LexerInterface!6565 List!43555 Rule!13752 List!43553 List!43553 List!43553 Rule!13752) Unit!62945)

(assert (=> b!4065420 (= lt!1454274 (lemmaMaxPrefixOutputsMaxPrefix!502 thiss!21717 rules!2999 (rule!10074 token!484) lt!1454242 lt!1454301 lt!1454287 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun res!1659075 () Bool)

(assert (=> b!4065420 (= res!1659075 (not (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454287)))))

(declare-fun e!2522968 () Bool)

(assert (=> b!4065420 (=> (not res!1659075) (not e!2522968))))

(assert (=> b!4065420 e!2522968))

(declare-fun b!4065421 () Bool)

(declare-fun e!2522960 () Bool)

(declare-fun tp_is_empty!20733 () Bool)

(declare-fun tp!1230873 () Bool)

(assert (=> b!4065421 (= e!2522960 (and tp_is_empty!20733 tp!1230873))))

(declare-fun b!4065422 () Bool)

(declare-fun e!2522953 () Bool)

(assert (=> b!4065422 (= e!2522955 e!2522953)))

(declare-fun res!1659055 () Bool)

(assert (=> b!4065422 (=> (not res!1659055) (not e!2522953))))

(declare-fun lt!1454256 () Int)

(assert (=> b!4065422 (= res!1659055 (>= lt!1454256 lt!1454279))))

(declare-fun size!32470 (List!43553) Int)

(assert (=> b!4065422 (= lt!1454279 (size!32470 lt!1454242))))

(assert (=> b!4065422 (= lt!1454256 (size!32470 prefix!494))))

(declare-fun list!16190 (BalanceConc!25968) List!43553)

(declare-fun charsOf!4792 (Token!13090) BalanceConc!25968)

(assert (=> b!4065422 (= lt!1454242 (list!16190 (charsOf!4792 token!484)))))

(declare-fun b!4065423 () Bool)

(declare-fun e!2522975 () Bool)

(assert (=> b!4065423 (= e!2522953 e!2522975)))

(declare-fun res!1659082 () Bool)

(assert (=> b!4065423 (=> (not res!1659082) (not e!2522975))))

(declare-fun lt!1454289 () List!43553)

(assert (=> b!4065423 (= res!1659082 (= lt!1454289 lt!1454264))))

(assert (=> b!4065423 (= lt!1454264 (++!11378 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43553)

(assert (=> b!4065423 (= lt!1454289 (++!11378 lt!1454242 newSuffixResult!27))))

(declare-fun b!4065424 () Bool)

(declare-fun e!2522984 () Bool)

(assert (=> b!4065424 (= e!2522984 e!2522956)))

(declare-fun res!1659071 () Bool)

(assert (=> b!4065424 (=> res!1659071 e!2522956)))

(declare-fun lt!1454257 () Option!9390)

(assert (=> b!4065424 (= res!1659071 (not (= lt!1454257 (Some!9389 (v!39815 lt!1454295)))))))

(assert (=> b!4065424 (isPrefix!4063 lt!1454287 (++!11378 lt!1454287 newSuffixResult!27))))

(declare-fun lt!1454280 () Unit!62945)

(assert (=> b!4065424 (= lt!1454280 (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454287 newSuffixResult!27))))

(declare-fun lt!1454303 () List!43553)

(assert (=> b!4065424 (isPrefix!4063 lt!1454287 lt!1454303)))

(assert (=> b!4065424 (= lt!1454303 (++!11378 lt!1454287 (_2!24375 (v!39815 lt!1454295))))))

(declare-fun lt!1454306 () Unit!62945)

(assert (=> b!4065424 (= lt!1454306 (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454287 (_2!24375 (v!39815 lt!1454295))))))

(declare-fun lt!1454293 () TokenValue!7206)

(assert (=> b!4065424 (= lt!1454257 (Some!9389 (tuple2!42483 (Token!13091 lt!1454293 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454300 lt!1454287) (_2!24375 (v!39815 lt!1454295)))))))

(declare-fun maxPrefixOneRule!2875 (LexerInterface!6565 Rule!13752 List!43553) Option!9390)

(assert (=> b!4065424 (= lt!1454257 (maxPrefixOneRule!2875 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454264))))

(assert (=> b!4065424 (= lt!1454300 (size!32470 lt!1454287))))

(declare-fun apply!10165 (TokenValueInjection!13840 BalanceConc!25968) TokenValue!7206)

(declare-fun seqFromList!5193 (List!43553) BalanceConc!25968)

(assert (=> b!4065424 (= lt!1454293 (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (seqFromList!5193 lt!1454287)))))

(declare-fun lt!1454265 () Unit!62945)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1681 (LexerInterface!6565 List!43555 List!43553 List!43553 List!43553 Rule!13752) Unit!62945)

(assert (=> b!4065424 (= lt!1454265 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1681 thiss!21717 rules!2999 lt!1454287 lt!1454264 (_2!24375 (v!39815 lt!1454295)) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> b!4065424 (= lt!1454287 (list!16190 (charsOf!4792 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun lt!1454250 () Unit!62945)

(declare-fun lemmaInv!1185 (TokenValueInjection!13840) Unit!62945)

(assert (=> b!4065424 (= lt!1454250 (lemmaInv!1185 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(declare-fun ruleValid!2906 (LexerInterface!6565 Rule!13752) Bool)

(assert (=> b!4065424 (ruleValid!2906 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))

(declare-fun lt!1454241 () Unit!62945)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1976 (LexerInterface!6565 Rule!13752 List!43555) Unit!62945)

(assert (=> b!4065424 (= lt!1454241 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1976 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))) rules!2999))))

(declare-fun lt!1454271 () Unit!62945)

(declare-fun lemmaCharactersSize!1495 (Token!13090) Unit!62945)

(assert (=> b!4065424 (= lt!1454271 (lemmaCharactersSize!1495 token!484))))

(declare-fun lt!1454276 () Unit!62945)

(assert (=> b!4065424 (= lt!1454276 (lemmaCharactersSize!1495 (_1!24375 (v!39815 lt!1454295))))))

(declare-fun b!4065425 () Bool)

(declare-fun e!2522977 () Bool)

(assert (=> b!4065425 (= e!2522977 false)))

(declare-fun b!4065426 () Bool)

(declare-fun e!2522962 () Bool)

(assert (=> b!4065426 (= e!2522962 e!2522965)))

(declare-fun res!1659080 () Bool)

(assert (=> b!4065426 (=> res!1659080 e!2522965)))

(assert (=> b!4065426 (= res!1659080 (not (matchR!5834 (regex!6976 (rule!10074 token!484)) lt!1454242)))))

(assert (=> b!4065426 (isPrefix!4063 lt!1454242 lt!1454264)))

(declare-fun lt!1454290 () Unit!62945)

(assert (=> b!4065426 (= lt!1454290 (lemmaPrefixStaysPrefixWhenAddingToSuffix!856 lt!1454242 prefix!494 newSuffix!27))))

(declare-fun lt!1454275 () Unit!62945)

(assert (=> b!4065426 (= lt!1454275 (lemmaPrefixStaysPrefixWhenAddingToSuffix!856 lt!1454242 prefix!494 suffix!1299))))

(declare-fun e!2522963 () Bool)

(assert (=> b!4065427 (= e!2522963 (and tp!1230879 tp!1230878))))

(declare-fun b!4065428 () Bool)

(assert (=> b!4065428 (= e!2522981 e!2522969)))

(declare-fun res!1659065 () Bool)

(assert (=> b!4065428 (=> res!1659065 e!2522969)))

(assert (=> b!4065428 (= res!1659065 (not (= lt!1454285 lt!1454301)))))

(assert (=> b!4065428 (= lt!1454285 (++!11378 prefix!494 lt!1454262))))

(assert (=> b!4065428 (= lt!1454285 (++!11378 lt!1454264 lt!1454298))))

(declare-fun lt!1454291 () Unit!62945)

(declare-fun lemmaConcatAssociativity!2680 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> b!4065428 (= lt!1454291 (lemmaConcatAssociativity!2680 prefix!494 newSuffix!27 lt!1454298))))

(declare-fun b!4065429 () Bool)

(declare-fun e!2522982 () Unit!62945)

(declare-fun Unit!62949 () Unit!62945)

(assert (=> b!4065429 (= e!2522982 Unit!62949)))

(declare-fun b!4065430 () Bool)

(declare-fun Unit!62950 () Unit!62945)

(assert (=> b!4065430 (= e!2522957 Unit!62950)))

(declare-fun b!4065431 () Bool)

(declare-fun e!2522948 () Bool)

(assert (=> b!4065431 (= e!2522983 e!2522948)))

(declare-fun res!1659056 () Bool)

(assert (=> b!4065431 (=> res!1659056 e!2522948)))

(declare-fun lt!1454254 () List!43553)

(assert (=> b!4065431 (= res!1659056 (not (= lt!1454254 prefix!494)))))

(declare-fun lt!1454297 () List!43553)

(assert (=> b!4065431 (= lt!1454254 (++!11378 lt!1454242 lt!1454297))))

(assert (=> b!4065431 (= lt!1454297 (getSuffix!2480 prefix!494 lt!1454242))))

(assert (=> b!4065431 (isPrefix!4063 lt!1454242 prefix!494)))

(declare-fun lt!1454263 () Unit!62945)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!627 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> b!4065431 (= lt!1454263 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!627 prefix!494 lt!1454242 lt!1454301))))

(declare-fun b!4065432 () Bool)

(declare-fun Unit!62951 () Unit!62945)

(assert (=> b!4065432 (= e!2522974 Unit!62951)))

(declare-fun lt!1454260 () Unit!62945)

(assert (=> b!4065432 (= lt!1454260 (lemmaMaxPrefixOutputsMaxPrefix!502 thiss!21717 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454287 lt!1454264 lt!1454242 (rule!10074 token!484)))))

(assert (=> b!4065432 false))

(assert (=> b!4065433 (= e!2522961 (and tp!1230870 tp!1230872))))

(declare-fun b!4065434 () Bool)

(declare-fun Unit!62952 () Unit!62945)

(assert (=> b!4065434 (= e!2522982 Unit!62952)))

(declare-fun lt!1454286 () Unit!62945)

(assert (=> b!4065434 (= lt!1454286 (lemmaMaxPrefNoSmallerRuleMatches!304 thiss!21717 rules!2999 (rule!10074 token!484) lt!1454242 lt!1454301 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun res!1659081 () Bool)

(assert (=> b!4065434 (= res!1659081 (not (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454242)))))

(assert (=> b!4065434 (=> (not res!1659081) (not e!2522977))))

(assert (=> b!4065434 e!2522977))

(declare-fun b!4065435 () Bool)

(declare-fun Unit!62953 () Unit!62945)

(assert (=> b!4065435 (= e!2522974 Unit!62953)))

(declare-fun b!4065436 () Bool)

(assert (=> b!4065436 (= e!2522971 false)))

(declare-fun b!4065437 () Bool)

(declare-fun e!2522959 () Bool)

(assert (=> b!4065437 (= e!2522975 e!2522959)))

(declare-fun res!1659070 () Bool)

(assert (=> b!4065437 (=> (not res!1659070) (not e!2522959))))

(declare-fun lt!1454302 () Option!9390)

(declare-fun maxPrefix!3863 (LexerInterface!6565 List!43555 List!43553) Option!9390)

(assert (=> b!4065437 (= res!1659070 (= (maxPrefix!3863 thiss!21717 rules!2999 lt!1454301) lt!1454302))))

(declare-fun lt!1454266 () tuple2!42482)

(assert (=> b!4065437 (= lt!1454302 (Some!9389 lt!1454266))))

(assert (=> b!4065437 (= lt!1454266 (tuple2!42483 token!484 suffixResult!105))))

(assert (=> b!4065437 (= lt!1454301 (++!11378 prefix!494 suffix!1299))))

(declare-fun b!4065438 () Bool)

(declare-fun res!1659067 () Bool)

(assert (=> b!4065438 (=> (not res!1659067) (not e!2522955))))

(assert (=> b!4065438 (= res!1659067 (isPrefix!4063 newSuffix!27 suffix!1299))))

(declare-fun b!4065439 () Bool)

(assert (=> b!4065439 (= e!2522968 false)))

(declare-fun b!4065440 () Bool)

(assert (=> b!4065440 (= e!2522959 (not e!2522979))))

(declare-fun res!1659083 () Bool)

(assert (=> b!4065440 (=> res!1659083 e!2522979)))

(assert (=> b!4065440 (= res!1659083 (not (= lt!1454284 lt!1454301)))))

(assert (=> b!4065440 (= lt!1454284 (++!11378 lt!1454242 suffixResult!105))))

(declare-fun lt!1454247 () Unit!62945)

(assert (=> b!4065440 (= lt!1454247 (lemmaInv!1185 (transformation!6976 (rule!10074 token!484))))))

(assert (=> b!4065440 (ruleValid!2906 thiss!21717 (rule!10074 token!484))))

(declare-fun lt!1454258 () Unit!62945)

(assert (=> b!4065440 (= lt!1454258 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1976 thiss!21717 (rule!10074 token!484) rules!2999))))

(declare-fun b!4065441 () Bool)

(declare-fun res!1659066 () Bool)

(assert (=> b!4065441 (=> (not res!1659066) (not e!2522955))))

(declare-fun isEmpty!25917 (List!43555) Bool)

(assert (=> b!4065441 (= res!1659066 (not (isEmpty!25917 rules!2999)))))

(declare-fun b!4065442 () Bool)

(declare-fun e!2522952 () Bool)

(declare-fun tp!1230871 () Bool)

(assert (=> b!4065442 (= e!2522952 (and tp_is_empty!20733 tp!1230871))))

(declare-fun b!4065443 () Bool)

(declare-fun contains!8642 (List!43555 Rule!13752) Bool)

(assert (=> b!4065443 (= e!2522986 (contains!8642 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun lt!1454261 () Unit!62945)

(assert (=> b!4065443 (= lt!1454261 e!2522985)))

(declare-fun c!701963 () Bool)

(declare-fun lt!1454267 () Int)

(declare-fun lt!1454283 () Int)

(assert (=> b!4065443 (= c!701963 (> lt!1454267 lt!1454283))))

(declare-fun lt!1454299 () Unit!62945)

(assert (=> b!4065443 (= lt!1454299 e!2522982)))

(declare-fun c!701964 () Bool)

(assert (=> b!4065443 (= c!701964 (< lt!1454267 lt!1454283))))

(declare-fun getIndex!588 (List!43555 Rule!13752) Int)

(assert (=> b!4065443 (= lt!1454283 (getIndex!588 rules!2999 (rule!10074 token!484)))))

(assert (=> b!4065443 (= lt!1454267 (getIndex!588 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> b!4065443 (= (_2!24375 (v!39815 lt!1454295)) newSuffixResult!27)))

(declare-fun lt!1454304 () Unit!62945)

(assert (=> b!4065443 (= lt!1454304 (lemmaSamePrefixThenSameSuffix!2224 lt!1454287 (_2!24375 (v!39815 lt!1454295)) lt!1454242 newSuffixResult!27 lt!1454264))))

(assert (=> b!4065443 (= lt!1454287 lt!1454242)))

(declare-fun lt!1454305 () Unit!62945)

(declare-fun lemmaIsPrefixSameLengthThenSameList!953 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> b!4065443 (= lt!1454305 (lemmaIsPrefixSameLengthThenSameList!953 lt!1454287 lt!1454242 lt!1454264))))

(declare-fun b!4065444 () Bool)

(declare-fun tp!1230881 () Bool)

(assert (=> b!4065444 (= e!2522966 (and tp!1230881 (inv!58055 (tag!7836 (h!48851 rules!2999))) (inv!58058 (transformation!6976 (h!48851 rules!2999))) e!2522963))))

(declare-fun b!4065445 () Bool)

(assert (=> b!4065445 (= e!2522976 e!2522978)))

(declare-fun res!1659072 () Bool)

(assert (=> b!4065445 (=> res!1659072 e!2522978)))

(assert (=> b!4065445 (= res!1659072 (not (= lt!1454246 lt!1454264)))))

(assert (=> b!4065445 (= lt!1454246 (++!11378 lt!1454287 lt!1454252))))

(assert (=> b!4065445 (= lt!1454252 (getSuffix!2480 lt!1454264 lt!1454287))))

(declare-fun res!1659059 () Bool)

(assert (=> start!383432 (=> (not res!1659059) (not e!2522955))))

(get-info :version)

(assert (=> start!383432 (= res!1659059 ((_ is Lexer!6563) thiss!21717))))

(assert (=> start!383432 e!2522955))

(assert (=> start!383432 e!2522952))

(declare-fun e!2522970 () Bool)

(declare-fun inv!58059 (Token!13090) Bool)

(assert (=> start!383432 (and (inv!58059 token!484) e!2522970)))

(declare-fun e!2522964 () Bool)

(assert (=> start!383432 e!2522964))

(declare-fun e!2522949 () Bool)

(assert (=> start!383432 e!2522949))

(declare-fun e!2522980 () Bool)

(assert (=> start!383432 e!2522980))

(assert (=> start!383432 true))

(assert (=> start!383432 e!2522951))

(assert (=> start!383432 e!2522960))

(declare-fun b!4065446 () Bool)

(declare-fun res!1659069 () Bool)

(assert (=> b!4065446 (=> (not res!1659069) (not e!2522955))))

(assert (=> b!4065446 (= res!1659069 (>= (size!32470 suffix!1299) (size!32470 newSuffix!27)))))

(declare-fun b!4065447 () Bool)

(assert (=> b!4065447 (= e!2522954 (and (= (size!32469 token!484) lt!1454279) (= (originalCharacters!7576 token!484) lt!1454242)))))

(declare-fun b!4065448 () Bool)

(declare-fun tp!1230876 () Bool)

(assert (=> b!4065448 (= e!2522949 (and tp_is_empty!20733 tp!1230876))))

(declare-fun b!4065449 () Bool)

(assert (=> b!4065449 (= e!2522973 e!2522984)))

(declare-fun res!1659054 () Bool)

(assert (=> b!4065449 (=> res!1659054 e!2522984)))

(assert (=> b!4065449 (= res!1659054 (not ((_ is Some!9389) lt!1454295)))))

(assert (=> b!4065449 (= lt!1454295 (maxPrefix!3863 thiss!21717 rules!2999 lt!1454264))))

(declare-fun lt!1454278 () Token!13090)

(assert (=> b!4065449 (and (= suffixResult!105 lt!1454249) (= lt!1454266 (tuple2!42483 lt!1454278 lt!1454249)))))

(declare-fun lt!1454243 () Unit!62945)

(assert (=> b!4065449 (= lt!1454243 (lemmaSamePrefixThenSameSuffix!2224 lt!1454242 suffixResult!105 lt!1454242 lt!1454249 lt!1454301))))

(assert (=> b!4065449 (isPrefix!4063 lt!1454242 lt!1454292)))

(declare-fun lt!1454270 () Unit!62945)

(assert (=> b!4065449 (= lt!1454270 (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454242 lt!1454249))))

(declare-fun b!4065450 () Bool)

(declare-fun tp!1230875 () Bool)

(declare-fun inv!21 (TokenValue!7206) Bool)

(assert (=> b!4065450 (= e!2522970 (and (inv!21 (value!219450 token!484)) e!2522950 tp!1230875))))

(declare-fun b!4065451 () Bool)

(declare-fun res!1659076 () Bool)

(assert (=> b!4065451 (=> (not res!1659076) (not e!2522954))))

(assert (=> b!4065451 (= res!1659076 (= (size!32469 token!484) (size!32470 (originalCharacters!7576 token!484))))))

(declare-fun b!4065452 () Bool)

(declare-fun Unit!62954 () Unit!62945)

(assert (=> b!4065452 (= e!2522985 Unit!62954)))

(declare-fun b!4065453 () Bool)

(declare-fun res!1659078 () Bool)

(assert (=> b!4065453 (=> res!1659078 e!2522976)))

(assert (=> b!4065453 (= res!1659078 (not (= lt!1454303 lt!1454264)))))

(declare-fun b!4065454 () Bool)

(declare-fun e!2522967 () Bool)

(assert (=> b!4065454 (= e!2522948 e!2522967)))

(declare-fun res!1659061 () Bool)

(assert (=> b!4065454 (=> res!1659061 e!2522967)))

(declare-fun lt!1454277 () List!43553)

(declare-fun lt!1454282 () List!43553)

(assert (=> b!4065454 (= res!1659061 (or (not (= lt!1454301 lt!1454282)) (not (= lt!1454301 lt!1454277))))))

(assert (=> b!4065454 (= lt!1454282 lt!1454277)))

(declare-fun lt!1454269 () List!43553)

(assert (=> b!4065454 (= lt!1454277 (++!11378 lt!1454242 lt!1454269))))

(assert (=> b!4065454 (= lt!1454282 (++!11378 lt!1454254 suffix!1299))))

(assert (=> b!4065454 (= lt!1454269 (++!11378 lt!1454297 suffix!1299))))

(declare-fun lt!1454288 () Unit!62945)

(assert (=> b!4065454 (= lt!1454288 (lemmaConcatAssociativity!2680 lt!1454242 lt!1454297 suffix!1299))))

(declare-fun b!4065455 () Bool)

(declare-fun tp!1230880 () Bool)

(assert (=> b!4065455 (= e!2522980 (and tp_is_empty!20733 tp!1230880))))

(declare-fun b!4065456 () Bool)

(declare-fun tp!1230877 () Bool)

(assert (=> b!4065456 (= e!2522964 (and tp_is_empty!20733 tp!1230877))))

(declare-fun b!4065457 () Bool)

(assert (=> b!4065457 (= e!2522967 e!2522962)))

(declare-fun res!1659058 () Bool)

(assert (=> b!4065457 (=> res!1659058 e!2522962)))

(declare-fun lt!1454296 () Option!9390)

(assert (=> b!4065457 (= res!1659058 (not (= lt!1454296 lt!1454302)))))

(assert (=> b!4065457 (= lt!1454296 (Some!9389 (tuple2!42483 lt!1454278 suffixResult!105)))))

(assert (=> b!4065457 (= lt!1454296 (maxPrefixOneRule!2875 thiss!21717 (rule!10074 token!484) lt!1454301))))

(declare-fun lt!1454294 () TokenValue!7206)

(assert (=> b!4065457 (= lt!1454278 (Token!13091 lt!1454294 (rule!10074 token!484) lt!1454279 lt!1454242))))

(assert (=> b!4065457 (= lt!1454294 (apply!10165 (transformation!6976 (rule!10074 token!484)) (seqFromList!5193 lt!1454242)))))

(declare-fun lt!1454281 () Unit!62945)

(assert (=> b!4065457 (= lt!1454281 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1681 thiss!21717 rules!2999 lt!1454242 lt!1454301 suffixResult!105 (rule!10074 token!484)))))

(assert (=> b!4065457 (= lt!1454269 suffixResult!105)))

(declare-fun lt!1454251 () Unit!62945)

(assert (=> b!4065457 (= lt!1454251 (lemmaSamePrefixThenSameSuffix!2224 lt!1454242 lt!1454269 lt!1454242 suffixResult!105 lt!1454301))))

(assert (=> b!4065457 (isPrefix!4063 lt!1454242 lt!1454277)))

(declare-fun lt!1454255 () Unit!62945)

(assert (=> b!4065457 (= lt!1454255 (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454242 lt!1454269))))

(declare-fun b!4065458 () Bool)

(declare-fun res!1659073 () Bool)

(assert (=> b!4065458 (=> (not res!1659073) (not e!2522954))))

(assert (=> b!4065458 (= res!1659073 (= (value!219450 token!484) lt!1454294))))

(assert (= (and start!383432 res!1659059) b!4065441))

(assert (= (and b!4065441 res!1659066) b!4065410))

(assert (= (and b!4065410 res!1659063) b!4065446))

(assert (= (and b!4065446 res!1659069) b!4065438))

(assert (= (and b!4065438 res!1659067) b!4065422))

(assert (= (and b!4065422 res!1659055) b!4065423))

(assert (= (and b!4065423 res!1659082) b!4065437))

(assert (= (and b!4065437 res!1659070) b!4065440))

(assert (= (and b!4065440 (not res!1659083)) b!4065413))

(assert (= (and b!4065413 (not res!1659057)) b!4065431))

(assert (= (and b!4065431 (not res!1659056)) b!4065454))

(assert (= (and b!4065454 (not res!1659061)) b!4065457))

(assert (= (and b!4065457 (not res!1659058)) b!4065426))

(assert (= (and b!4065426 (not res!1659080)) b!4065411))

(assert (= (and b!4065411 res!1659077) b!4065458))

(assert (= (and b!4065458 res!1659073) b!4065451))

(assert (= (and b!4065451 res!1659076) b!4065447))

(assert (= (and b!4065411 (not res!1659062)) b!4065449))

(assert (= (and b!4065449 (not res!1659054)) b!4065424))

(assert (= (and b!4065424 (not res!1659071)) b!4065417))

(assert (= (and b!4065417 (not res!1659074)) b!4065428))

(assert (= (and b!4065428 (not res!1659065)) b!4065419))

(assert (= (and b!4065419 (not res!1659060)) b!4065453))

(assert (= (and b!4065453 (not res!1659078)) b!4065445))

(assert (= (and b!4065445 (not res!1659072)) b!4065416))

(assert (= (and b!4065416 c!701965) b!4065420))

(assert (= (and b!4065416 (not c!701965)) b!4065430))

(assert (= (and b!4065420 res!1659075) b!4065439))

(assert (= (and b!4065416 c!701962) b!4065432))

(assert (= (and b!4065416 (not c!701962)) b!4065435))

(assert (= (and b!4065416 (not res!1659079)) b!4065418))

(assert (= (and b!4065418 (not res!1659064)) b!4065443))

(assert (= (and b!4065443 c!701964) b!4065434))

(assert (= (and b!4065443 (not c!701964)) b!4065429))

(assert (= (and b!4065434 res!1659081) b!4065425))

(assert (= (and b!4065443 c!701963) b!4065414))

(assert (= (and b!4065443 (not c!701963)) b!4065452))

(assert (= (and b!4065414 res!1659068) b!4065436))

(assert (= (and start!383432 ((_ is Cons!43429) prefix!494)) b!4065442))

(assert (= b!4065412 b!4065433))

(assert (= b!4065450 b!4065412))

(assert (= start!383432 b!4065450))

(assert (= (and start!383432 ((_ is Cons!43429) suffixResult!105)) b!4065456))

(assert (= (and start!383432 ((_ is Cons!43429) suffix!1299)) b!4065448))

(assert (= (and start!383432 ((_ is Cons!43429) newSuffix!27)) b!4065455))

(assert (= b!4065444 b!4065427))

(assert (= b!4065415 b!4065444))

(assert (= (and start!383432 ((_ is Cons!43431) rules!2999)) b!4065415))

(assert (= (and start!383432 ((_ is Cons!43429) newSuffixResult!27)) b!4065421))

(declare-fun m!4672909 () Bool)

(assert (=> b!4065424 m!4672909))

(declare-fun m!4672911 () Bool)

(assert (=> b!4065424 m!4672911))

(declare-fun m!4672913 () Bool)

(assert (=> b!4065424 m!4672913))

(declare-fun m!4672915 () Bool)

(assert (=> b!4065424 m!4672915))

(declare-fun m!4672917 () Bool)

(assert (=> b!4065424 m!4672917))

(assert (=> b!4065424 m!4672913))

(declare-fun m!4672919 () Bool)

(assert (=> b!4065424 m!4672919))

(declare-fun m!4672921 () Bool)

(assert (=> b!4065424 m!4672921))

(declare-fun m!4672923 () Bool)

(assert (=> b!4065424 m!4672923))

(declare-fun m!4672925 () Bool)

(assert (=> b!4065424 m!4672925))

(declare-fun m!4672927 () Bool)

(assert (=> b!4065424 m!4672927))

(assert (=> b!4065424 m!4672927))

(declare-fun m!4672929 () Bool)

(assert (=> b!4065424 m!4672929))

(declare-fun m!4672931 () Bool)

(assert (=> b!4065424 m!4672931))

(declare-fun m!4672933 () Bool)

(assert (=> b!4065424 m!4672933))

(declare-fun m!4672935 () Bool)

(assert (=> b!4065424 m!4672935))

(declare-fun m!4672937 () Bool)

(assert (=> b!4065424 m!4672937))

(declare-fun m!4672939 () Bool)

(assert (=> b!4065424 m!4672939))

(declare-fun m!4672941 () Bool)

(assert (=> b!4065424 m!4672941))

(assert (=> b!4065424 m!4672909))

(declare-fun m!4672943 () Bool)

(assert (=> b!4065424 m!4672943))

(declare-fun m!4672945 () Bool)

(assert (=> b!4065422 m!4672945))

(declare-fun m!4672947 () Bool)

(assert (=> b!4065422 m!4672947))

(declare-fun m!4672949 () Bool)

(assert (=> b!4065422 m!4672949))

(assert (=> b!4065422 m!4672949))

(declare-fun m!4672951 () Bool)

(assert (=> b!4065422 m!4672951))

(declare-fun m!4672953 () Bool)

(assert (=> b!4065445 m!4672953))

(declare-fun m!4672955 () Bool)

(assert (=> b!4065445 m!4672955))

(declare-fun m!4672957 () Bool)

(assert (=> b!4065414 m!4672957))

(declare-fun m!4672959 () Bool)

(assert (=> b!4065414 m!4672959))

(declare-fun m!4672961 () Bool)

(assert (=> b!4065441 m!4672961))

(declare-fun m!4672963 () Bool)

(assert (=> b!4065449 m!4672963))

(declare-fun m!4672965 () Bool)

(assert (=> b!4065449 m!4672965))

(declare-fun m!4672967 () Bool)

(assert (=> b!4065449 m!4672967))

(declare-fun m!4672969 () Bool)

(assert (=> b!4065449 m!4672969))

(declare-fun m!4672971 () Bool)

(assert (=> b!4065434 m!4672971))

(declare-fun m!4672973 () Bool)

(assert (=> b!4065434 m!4672973))

(declare-fun m!4672975 () Bool)

(assert (=> b!4065420 m!4672975))

(declare-fun m!4672977 () Bool)

(assert (=> b!4065420 m!4672977))

(declare-fun m!4672979 () Bool)

(assert (=> b!4065443 m!4672979))

(declare-fun m!4672981 () Bool)

(assert (=> b!4065443 m!4672981))

(declare-fun m!4672983 () Bool)

(assert (=> b!4065443 m!4672983))

(declare-fun m!4672985 () Bool)

(assert (=> b!4065443 m!4672985))

(declare-fun m!4672987 () Bool)

(assert (=> b!4065443 m!4672987))

(declare-fun m!4672989 () Bool)

(assert (=> b!4065450 m!4672989))

(declare-fun m!4672991 () Bool)

(assert (=> b!4065451 m!4672991))

(declare-fun m!4672993 () Bool)

(assert (=> b!4065426 m!4672993))

(declare-fun m!4672995 () Bool)

(assert (=> b!4065426 m!4672995))

(declare-fun m!4672997 () Bool)

(assert (=> b!4065426 m!4672997))

(declare-fun m!4672999 () Bool)

(assert (=> b!4065426 m!4672999))

(declare-fun m!4673001 () Bool)

(assert (=> b!4065431 m!4673001))

(declare-fun m!4673003 () Bool)

(assert (=> b!4065431 m!4673003))

(declare-fun m!4673005 () Bool)

(assert (=> b!4065431 m!4673005))

(declare-fun m!4673007 () Bool)

(assert (=> b!4065431 m!4673007))

(declare-fun m!4673009 () Bool)

(assert (=> b!4065428 m!4673009))

(declare-fun m!4673011 () Bool)

(assert (=> b!4065428 m!4673011))

(declare-fun m!4673013 () Bool)

(assert (=> b!4065428 m!4673013))

(declare-fun m!4673015 () Bool)

(assert (=> b!4065412 m!4673015))

(declare-fun m!4673017 () Bool)

(assert (=> b!4065412 m!4673017))

(declare-fun m!4673019 () Bool)

(assert (=> b!4065418 m!4673019))

(declare-fun m!4673021 () Bool)

(assert (=> b!4065416 m!4673021))

(declare-fun m!4673023 () Bool)

(assert (=> b!4065416 m!4673023))

(declare-fun m!4673025 () Bool)

(assert (=> b!4065416 m!4673025))

(declare-fun m!4673027 () Bool)

(assert (=> b!4065446 m!4673027))

(declare-fun m!4673029 () Bool)

(assert (=> b!4065446 m!4673029))

(declare-fun m!4673031 () Bool)

(assert (=> b!4065457 m!4673031))

(declare-fun m!4673033 () Bool)

(assert (=> b!4065457 m!4673033))

(declare-fun m!4673035 () Bool)

(assert (=> b!4065457 m!4673035))

(declare-fun m!4673037 () Bool)

(assert (=> b!4065457 m!4673037))

(assert (=> b!4065457 m!4673031))

(declare-fun m!4673039 () Bool)

(assert (=> b!4065457 m!4673039))

(declare-fun m!4673041 () Bool)

(assert (=> b!4065457 m!4673041))

(declare-fun m!4673043 () Bool)

(assert (=> b!4065457 m!4673043))

(declare-fun m!4673045 () Bool)

(assert (=> b!4065440 m!4673045))

(declare-fun m!4673047 () Bool)

(assert (=> b!4065440 m!4673047))

(declare-fun m!4673049 () Bool)

(assert (=> b!4065440 m!4673049))

(declare-fun m!4673051 () Bool)

(assert (=> b!4065440 m!4673051))

(declare-fun m!4673053 () Bool)

(assert (=> start!383432 m!4673053))

(declare-fun m!4673055 () Bool)

(assert (=> b!4065454 m!4673055))

(declare-fun m!4673057 () Bool)

(assert (=> b!4065454 m!4673057))

(declare-fun m!4673059 () Bool)

(assert (=> b!4065454 m!4673059))

(declare-fun m!4673061 () Bool)

(assert (=> b!4065454 m!4673061))

(declare-fun m!4673063 () Bool)

(assert (=> b!4065437 m!4673063))

(declare-fun m!4673065 () Bool)

(assert (=> b!4065437 m!4673065))

(declare-fun m!4673067 () Bool)

(assert (=> b!4065417 m!4673067))

(declare-fun m!4673069 () Bool)

(assert (=> b!4065417 m!4673069))

(declare-fun m!4673071 () Bool)

(assert (=> b!4065438 m!4673071))

(declare-fun m!4673073 () Bool)

(assert (=> b!4065413 m!4673073))

(declare-fun m!4673075 () Bool)

(assert (=> b!4065413 m!4673075))

(declare-fun m!4673077 () Bool)

(assert (=> b!4065413 m!4673077))

(declare-fun m!4673079 () Bool)

(assert (=> b!4065413 m!4673079))

(declare-fun m!4673081 () Bool)

(assert (=> b!4065413 m!4673081))

(declare-fun m!4673083 () Bool)

(assert (=> b!4065419 m!4673083))

(declare-fun m!4673085 () Bool)

(assert (=> b!4065419 m!4673085))

(declare-fun m!4673087 () Bool)

(assert (=> b!4065419 m!4673087))

(declare-fun m!4673089 () Bool)

(assert (=> b!4065423 m!4673089))

(declare-fun m!4673091 () Bool)

(assert (=> b!4065423 m!4673091))

(declare-fun m!4673093 () Bool)

(assert (=> b!4065432 m!4673093))

(declare-fun m!4673095 () Bool)

(assert (=> b!4065410 m!4673095))

(declare-fun m!4673097 () Bool)

(assert (=> b!4065411 m!4673097))

(declare-fun m!4673099 () Bool)

(assert (=> b!4065411 m!4673099))

(declare-fun m!4673101 () Bool)

(assert (=> b!4065411 m!4673101))

(declare-fun m!4673103 () Bool)

(assert (=> b!4065411 m!4673103))

(declare-fun m!4673105 () Bool)

(assert (=> b!4065444 m!4673105))

(declare-fun m!4673107 () Bool)

(assert (=> b!4065444 m!4673107))

(check-sat (not b_next!113803) (not b!4065438) (not b!4065410) (not b!4065423) (not b!4065440) b_and!312505 (not b!4065451) b_and!312501 (not b!4065444) (not b_next!113807) (not b!4065432) (not b!4065422) (not b!4065441) (not b!4065419) (not b!4065426) (not b!4065448) (not b!4065413) (not b!4065442) (not b!4065457) (not b!4065418) (not b_next!113805) (not b_next!113801) b_and!312503 (not b!4065411) (not b!4065443) (not b!4065428) tp_is_empty!20733 (not b!4065415) (not b!4065420) (not b!4065456) (not b!4065417) (not b!4065446) (not b!4065454) (not b!4065416) (not b!4065431) (not b!4065412) (not b!4065437) (not b!4065421) (not b!4065450) (not b!4065414) (not b!4065449) (not b!4065455) (not b!4065445) (not b!4065424) (not start!383432) (not b!4065434) b_and!312499)
(check-sat (not b_next!113805) (not b_next!113803) b_and!312505 b_and!312501 (not b_next!113807) b_and!312499 (not b_next!113801) b_and!312503)
(get-model)

(declare-fun b!4065485 () Bool)

(declare-fun e!2523004 () Bool)

(declare-fun e!2523005 () Bool)

(assert (=> b!4065485 (= e!2523004 e!2523005)))

(declare-fun c!701976 () Bool)

(assert (=> b!4065485 (= c!701976 ((_ is IntegerValue!21619) (value!219450 token!484)))))

(declare-fun b!4065486 () Bool)

(declare-fun e!2523003 () Bool)

(declare-fun inv!15 (TokenValue!7206) Bool)

(assert (=> b!4065486 (= e!2523003 (inv!15 (value!219450 token!484)))))

(declare-fun b!4065487 () Bool)

(declare-fun res!1659093 () Bool)

(assert (=> b!4065487 (=> res!1659093 e!2523003)))

(assert (=> b!4065487 (= res!1659093 (not ((_ is IntegerValue!21620) (value!219450 token!484))))))

(assert (=> b!4065487 (= e!2523005 e!2523003)))

(declare-fun d!1208365 () Bool)

(declare-fun c!701977 () Bool)

(assert (=> d!1208365 (= c!701977 ((_ is IntegerValue!21618) (value!219450 token!484)))))

(assert (=> d!1208365 (= (inv!21 (value!219450 token!484)) e!2523004)))

(declare-fun b!4065488 () Bool)

(declare-fun inv!17 (TokenValue!7206) Bool)

(assert (=> b!4065488 (= e!2523005 (inv!17 (value!219450 token!484)))))

(declare-fun b!4065489 () Bool)

(declare-fun inv!16 (TokenValue!7206) Bool)

(assert (=> b!4065489 (= e!2523004 (inv!16 (value!219450 token!484)))))

(assert (= (and d!1208365 c!701977) b!4065489))

(assert (= (and d!1208365 (not c!701977)) b!4065485))

(assert (= (and b!4065485 c!701976) b!4065488))

(assert (= (and b!4065485 (not c!701976)) b!4065487))

(assert (= (and b!4065487 (not res!1659093)) b!4065486))

(declare-fun m!4673127 () Bool)

(assert (=> b!4065486 m!4673127))

(declare-fun m!4673129 () Bool)

(assert (=> b!4065488 m!4673129))

(declare-fun m!4673131 () Bool)

(assert (=> b!4065489 m!4673131))

(assert (=> b!4065450 d!1208365))

(declare-fun b!4065517 () Bool)

(declare-fun e!2523017 () List!43553)

(assert (=> b!4065517 (= e!2523017 (Cons!43429 (h!48849 prefix!494) (++!11378 (t!336808 prefix!494) lt!1454262)))))

(declare-fun b!4065519 () Bool)

(declare-fun e!2523016 () Bool)

(declare-fun lt!1454327 () List!43553)

(assert (=> b!4065519 (= e!2523016 (or (not (= lt!1454262 Nil!43429)) (= lt!1454327 prefix!494)))))

(declare-fun b!4065518 () Bool)

(declare-fun res!1659112 () Bool)

(assert (=> b!4065518 (=> (not res!1659112) (not e!2523016))))

(assert (=> b!4065518 (= res!1659112 (= (size!32470 lt!1454327) (+ (size!32470 prefix!494) (size!32470 lt!1454262))))))

(declare-fun d!1208367 () Bool)

(assert (=> d!1208367 e!2523016))

(declare-fun res!1659113 () Bool)

(assert (=> d!1208367 (=> (not res!1659113) (not e!2523016))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6628 (List!43553) (InoxSet C!23948))

(assert (=> d!1208367 (= res!1659113 (= (content!6628 lt!1454327) ((_ map or) (content!6628 prefix!494) (content!6628 lt!1454262))))))

(assert (=> d!1208367 (= lt!1454327 e!2523017)))

(declare-fun c!701982 () Bool)

(assert (=> d!1208367 (= c!701982 ((_ is Nil!43429) prefix!494))))

(assert (=> d!1208367 (= (++!11378 prefix!494 lt!1454262) lt!1454327)))

(declare-fun b!4065516 () Bool)

(assert (=> b!4065516 (= e!2523017 lt!1454262)))

(assert (= (and d!1208367 c!701982) b!4065516))

(assert (= (and d!1208367 (not c!701982)) b!4065517))

(assert (= (and d!1208367 res!1659113) b!4065518))

(assert (= (and b!4065518 res!1659112) b!4065519))

(declare-fun m!4673133 () Bool)

(assert (=> b!4065517 m!4673133))

(declare-fun m!4673135 () Bool)

(assert (=> b!4065518 m!4673135))

(assert (=> b!4065518 m!4672947))

(declare-fun m!4673137 () Bool)

(assert (=> b!4065518 m!4673137))

(declare-fun m!4673139 () Bool)

(assert (=> d!1208367 m!4673139))

(declare-fun m!4673141 () Bool)

(assert (=> d!1208367 m!4673141))

(declare-fun m!4673143 () Bool)

(assert (=> d!1208367 m!4673143))

(assert (=> b!4065428 d!1208367))

(declare-fun b!4065521 () Bool)

(declare-fun e!2523019 () List!43553)

(assert (=> b!4065521 (= e!2523019 (Cons!43429 (h!48849 lt!1454264) (++!11378 (t!336808 lt!1454264) lt!1454298)))))

(declare-fun b!4065523 () Bool)

(declare-fun e!2523018 () Bool)

(declare-fun lt!1454328 () List!43553)

(assert (=> b!4065523 (= e!2523018 (or (not (= lt!1454298 Nil!43429)) (= lt!1454328 lt!1454264)))))

(declare-fun b!4065522 () Bool)

(declare-fun res!1659114 () Bool)

(assert (=> b!4065522 (=> (not res!1659114) (not e!2523018))))

(assert (=> b!4065522 (= res!1659114 (= (size!32470 lt!1454328) (+ (size!32470 lt!1454264) (size!32470 lt!1454298))))))

(declare-fun d!1208369 () Bool)

(assert (=> d!1208369 e!2523018))

(declare-fun res!1659115 () Bool)

(assert (=> d!1208369 (=> (not res!1659115) (not e!2523018))))

(assert (=> d!1208369 (= res!1659115 (= (content!6628 lt!1454328) ((_ map or) (content!6628 lt!1454264) (content!6628 lt!1454298))))))

(assert (=> d!1208369 (= lt!1454328 e!2523019)))

(declare-fun c!701983 () Bool)

(assert (=> d!1208369 (= c!701983 ((_ is Nil!43429) lt!1454264))))

(assert (=> d!1208369 (= (++!11378 lt!1454264 lt!1454298) lt!1454328)))

(declare-fun b!4065520 () Bool)

(assert (=> b!4065520 (= e!2523019 lt!1454298)))

(assert (= (and d!1208369 c!701983) b!4065520))

(assert (= (and d!1208369 (not c!701983)) b!4065521))

(assert (= (and d!1208369 res!1659115) b!4065522))

(assert (= (and b!4065522 res!1659114) b!4065523))

(declare-fun m!4673145 () Bool)

(assert (=> b!4065521 m!4673145))

(declare-fun m!4673147 () Bool)

(assert (=> b!4065522 m!4673147))

(declare-fun m!4673149 () Bool)

(assert (=> b!4065522 m!4673149))

(declare-fun m!4673151 () Bool)

(assert (=> b!4065522 m!4673151))

(declare-fun m!4673153 () Bool)

(assert (=> d!1208369 m!4673153))

(declare-fun m!4673155 () Bool)

(assert (=> d!1208369 m!4673155))

(declare-fun m!4673157 () Bool)

(assert (=> d!1208369 m!4673157))

(assert (=> b!4065428 d!1208369))

(declare-fun d!1208371 () Bool)

(assert (=> d!1208371 (= (++!11378 (++!11378 prefix!494 newSuffix!27) lt!1454298) (++!11378 prefix!494 (++!11378 newSuffix!27 lt!1454298)))))

(declare-fun lt!1454336 () Unit!62945)

(declare-fun choose!24747 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> d!1208371 (= lt!1454336 (choose!24747 prefix!494 newSuffix!27 lt!1454298))))

(assert (=> d!1208371 (= (lemmaConcatAssociativity!2680 prefix!494 newSuffix!27 lt!1454298) lt!1454336)))

(declare-fun bs!592316 () Bool)

(assert (= bs!592316 d!1208371))

(assert (=> bs!592316 m!4673089))

(assert (=> bs!592316 m!4673089))

(declare-fun m!4673193 () Bool)

(assert (=> bs!592316 m!4673193))

(assert (=> bs!592316 m!4673067))

(assert (=> bs!592316 m!4673067))

(declare-fun m!4673195 () Bool)

(assert (=> bs!592316 m!4673195))

(declare-fun m!4673197 () Bool)

(assert (=> bs!592316 m!4673197))

(assert (=> b!4065428 d!1208371))

(declare-fun b!4065596 () Bool)

(declare-fun res!1659174 () Bool)

(declare-fun e!2523058 () Bool)

(assert (=> b!4065596 (=> (not res!1659174) (not e!2523058))))

(declare-fun lt!1454375 () Option!9390)

(declare-fun get!14242 (Option!9390) tuple2!42482)

(assert (=> b!4065596 (= res!1659174 (< (size!32470 (_2!24375 (get!14242 lt!1454375))) (size!32470 lt!1454264)))))

(declare-fun b!4065597 () Bool)

(declare-fun e!2523056 () Option!9390)

(declare-fun lt!1454374 () Option!9390)

(declare-fun lt!1454376 () Option!9390)

(assert (=> b!4065597 (= e!2523056 (ite (and ((_ is None!9389) lt!1454374) ((_ is None!9389) lt!1454376)) None!9389 (ite ((_ is None!9389) lt!1454376) lt!1454374 (ite ((_ is None!9389) lt!1454374) lt!1454376 (ite (>= (size!32469 (_1!24375 (v!39815 lt!1454374))) (size!32469 (_1!24375 (v!39815 lt!1454376)))) lt!1454374 lt!1454376)))))))

(declare-fun call!288278 () Option!9390)

(assert (=> b!4065597 (= lt!1454374 call!288278)))

(assert (=> b!4065597 (= lt!1454376 (maxPrefix!3863 thiss!21717 (t!336810 rules!2999) lt!1454264))))

(declare-fun d!1208375 () Bool)

(declare-fun e!2523057 () Bool)

(assert (=> d!1208375 e!2523057))

(declare-fun res!1659175 () Bool)

(assert (=> d!1208375 (=> res!1659175 e!2523057)))

(declare-fun isEmpty!25920 (Option!9390) Bool)

(assert (=> d!1208375 (= res!1659175 (isEmpty!25920 lt!1454375))))

(assert (=> d!1208375 (= lt!1454375 e!2523056)))

(declare-fun c!701990 () Bool)

(assert (=> d!1208375 (= c!701990 (and ((_ is Cons!43431) rules!2999) ((_ is Nil!43431) (t!336810 rules!2999))))))

(declare-fun lt!1454378 () Unit!62945)

(declare-fun lt!1454377 () Unit!62945)

(assert (=> d!1208375 (= lt!1454378 lt!1454377)))

(assert (=> d!1208375 (isPrefix!4063 lt!1454264 lt!1454264)))

(assert (=> d!1208375 (= lt!1454377 (lemmaIsPrefixRefl!2630 lt!1454264 lt!1454264))))

(declare-fun rulesValidInductive!2551 (LexerInterface!6565 List!43555) Bool)

(assert (=> d!1208375 (rulesValidInductive!2551 thiss!21717 rules!2999)))

(assert (=> d!1208375 (= (maxPrefix!3863 thiss!21717 rules!2999 lt!1454264) lt!1454375)))

(declare-fun b!4065598 () Bool)

(declare-fun res!1659176 () Bool)

(assert (=> b!4065598 (=> (not res!1659176) (not e!2523058))))

(assert (=> b!4065598 (= res!1659176 (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (get!14242 lt!1454375)))) (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454375))))))))

(declare-fun b!4065599 () Bool)

(assert (=> b!4065599 (= e!2523058 (contains!8642 rules!2999 (rule!10074 (_1!24375 (get!14242 lt!1454375)))))))

(declare-fun bm!288273 () Bool)

(assert (=> bm!288273 (= call!288278 (maxPrefixOneRule!2875 thiss!21717 (h!48851 rules!2999) lt!1454264))))

(declare-fun b!4065600 () Bool)

(assert (=> b!4065600 (= e!2523057 e!2523058)))

(declare-fun res!1659177 () Bool)

(assert (=> b!4065600 (=> (not res!1659177) (not e!2523058))))

(declare-fun isDefined!7130 (Option!9390) Bool)

(assert (=> b!4065600 (= res!1659177 (isDefined!7130 lt!1454375))))

(declare-fun b!4065601 () Bool)

(assert (=> b!4065601 (= e!2523056 call!288278)))

(declare-fun b!4065602 () Bool)

(declare-fun res!1659178 () Bool)

(assert (=> b!4065602 (=> (not res!1659178) (not e!2523058))))

(assert (=> b!4065602 (= res!1659178 (= (value!219450 (_1!24375 (get!14242 lt!1454375))) (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (get!14242 lt!1454375)))) (seqFromList!5193 (originalCharacters!7576 (_1!24375 (get!14242 lt!1454375)))))))))

(declare-fun b!4065603 () Bool)

(declare-fun res!1659179 () Bool)

(assert (=> b!4065603 (=> (not res!1659179) (not e!2523058))))

(assert (=> b!4065603 (= res!1659179 (= (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454375)))) (originalCharacters!7576 (_1!24375 (get!14242 lt!1454375)))))))

(declare-fun b!4065604 () Bool)

(declare-fun res!1659180 () Bool)

(assert (=> b!4065604 (=> (not res!1659180) (not e!2523058))))

(assert (=> b!4065604 (= res!1659180 (= (++!11378 (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454375)))) (_2!24375 (get!14242 lt!1454375))) lt!1454264))))

(assert (= (and d!1208375 c!701990) b!4065601))

(assert (= (and d!1208375 (not c!701990)) b!4065597))

(assert (= (or b!4065601 b!4065597) bm!288273))

(assert (= (and d!1208375 (not res!1659175)) b!4065600))

(assert (= (and b!4065600 res!1659177) b!4065603))

(assert (= (and b!4065603 res!1659179) b!4065596))

(assert (= (and b!4065596 res!1659174) b!4065604))

(assert (= (and b!4065604 res!1659180) b!4065602))

(assert (= (and b!4065602 res!1659178) b!4065598))

(assert (= (and b!4065598 res!1659176) b!4065599))

(declare-fun m!4673281 () Bool)

(assert (=> b!4065603 m!4673281))

(declare-fun m!4673283 () Bool)

(assert (=> b!4065603 m!4673283))

(assert (=> b!4065603 m!4673283))

(declare-fun m!4673285 () Bool)

(assert (=> b!4065603 m!4673285))

(declare-fun m!4673287 () Bool)

(assert (=> b!4065597 m!4673287))

(declare-fun m!4673289 () Bool)

(assert (=> bm!288273 m!4673289))

(assert (=> b!4065599 m!4673281))

(declare-fun m!4673291 () Bool)

(assert (=> b!4065599 m!4673291))

(declare-fun m!4673293 () Bool)

(assert (=> b!4065600 m!4673293))

(assert (=> b!4065596 m!4673281))

(declare-fun m!4673295 () Bool)

(assert (=> b!4065596 m!4673295))

(assert (=> b!4065596 m!4673149))

(declare-fun m!4673297 () Bool)

(assert (=> d!1208375 m!4673297))

(declare-fun m!4673299 () Bool)

(assert (=> d!1208375 m!4673299))

(declare-fun m!4673301 () Bool)

(assert (=> d!1208375 m!4673301))

(declare-fun m!4673303 () Bool)

(assert (=> d!1208375 m!4673303))

(assert (=> b!4065604 m!4673281))

(assert (=> b!4065604 m!4673283))

(assert (=> b!4065604 m!4673283))

(assert (=> b!4065604 m!4673285))

(assert (=> b!4065604 m!4673285))

(declare-fun m!4673305 () Bool)

(assert (=> b!4065604 m!4673305))

(assert (=> b!4065602 m!4673281))

(declare-fun m!4673307 () Bool)

(assert (=> b!4065602 m!4673307))

(assert (=> b!4065602 m!4673307))

(declare-fun m!4673309 () Bool)

(assert (=> b!4065602 m!4673309))

(assert (=> b!4065598 m!4673281))

(assert (=> b!4065598 m!4673283))

(assert (=> b!4065598 m!4673283))

(assert (=> b!4065598 m!4673285))

(assert (=> b!4065598 m!4673285))

(declare-fun m!4673311 () Bool)

(assert (=> b!4065598 m!4673311))

(assert (=> b!4065449 d!1208375))

(declare-fun d!1208395 () Bool)

(assert (=> d!1208395 (= suffixResult!105 lt!1454249)))

(declare-fun lt!1454389 () Unit!62945)

(declare-fun choose!24748 (List!43553 List!43553 List!43553 List!43553 List!43553) Unit!62945)

(assert (=> d!1208395 (= lt!1454389 (choose!24748 lt!1454242 suffixResult!105 lt!1454242 lt!1454249 lt!1454301))))

(assert (=> d!1208395 (isPrefix!4063 lt!1454242 lt!1454301)))

(assert (=> d!1208395 (= (lemmaSamePrefixThenSameSuffix!2224 lt!1454242 suffixResult!105 lt!1454242 lt!1454249 lt!1454301) lt!1454389)))

(declare-fun bs!592325 () Bool)

(assert (= bs!592325 d!1208395))

(declare-fun m!4673339 () Bool)

(assert (=> bs!592325 m!4673339))

(assert (=> bs!592325 m!4673081))

(assert (=> b!4065449 d!1208395))

(declare-fun b!4065645 () Bool)

(declare-fun e!2523081 () Bool)

(assert (=> b!4065645 (= e!2523081 (>= (size!32470 lt!1454292) (size!32470 lt!1454242)))))

(declare-fun d!1208407 () Bool)

(assert (=> d!1208407 e!2523081))

(declare-fun res!1659213 () Bool)

(assert (=> d!1208407 (=> res!1659213 e!2523081)))

(declare-fun lt!1454402 () Bool)

(assert (=> d!1208407 (= res!1659213 (not lt!1454402))))

(declare-fun e!2523082 () Bool)

(assert (=> d!1208407 (= lt!1454402 e!2523082)))

(declare-fun res!1659215 () Bool)

(assert (=> d!1208407 (=> res!1659215 e!2523082)))

(assert (=> d!1208407 (= res!1659215 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208407 (= (isPrefix!4063 lt!1454242 lt!1454292) lt!1454402)))

(declare-fun b!4065642 () Bool)

(declare-fun e!2523083 () Bool)

(assert (=> b!4065642 (= e!2523082 e!2523083)))

(declare-fun res!1659214 () Bool)

(assert (=> b!4065642 (=> (not res!1659214) (not e!2523083))))

(assert (=> b!4065642 (= res!1659214 (not ((_ is Nil!43429) lt!1454292)))))

(declare-fun b!4065643 () Bool)

(declare-fun res!1659212 () Bool)

(assert (=> b!4065643 (=> (not res!1659212) (not e!2523083))))

(declare-fun head!8579 (List!43553) C!23948)

(assert (=> b!4065643 (= res!1659212 (= (head!8579 lt!1454242) (head!8579 lt!1454292)))))

(declare-fun b!4065644 () Bool)

(declare-fun tail!6311 (List!43553) List!43553)

(assert (=> b!4065644 (= e!2523083 (isPrefix!4063 (tail!6311 lt!1454242) (tail!6311 lt!1454292)))))

(assert (= (and d!1208407 (not res!1659215)) b!4065642))

(assert (= (and b!4065642 res!1659214) b!4065643))

(assert (= (and b!4065643 res!1659212) b!4065644))

(assert (= (and d!1208407 (not res!1659213)) b!4065645))

(declare-fun m!4673383 () Bool)

(assert (=> b!4065645 m!4673383))

(assert (=> b!4065645 m!4672945))

(declare-fun m!4673391 () Bool)

(assert (=> b!4065643 m!4673391))

(declare-fun m!4673393 () Bool)

(assert (=> b!4065643 m!4673393))

(declare-fun m!4673395 () Bool)

(assert (=> b!4065644 m!4673395))

(declare-fun m!4673397 () Bool)

(assert (=> b!4065644 m!4673397))

(assert (=> b!4065644 m!4673395))

(assert (=> b!4065644 m!4673397))

(declare-fun m!4673399 () Bool)

(assert (=> b!4065644 m!4673399))

(assert (=> b!4065449 d!1208407))

(declare-fun d!1208417 () Bool)

(assert (=> d!1208417 (isPrefix!4063 lt!1454242 (++!11378 lt!1454242 lt!1454249))))

(declare-fun lt!1454411 () Unit!62945)

(declare-fun choose!24750 (List!43553 List!43553) Unit!62945)

(assert (=> d!1208417 (= lt!1454411 (choose!24750 lt!1454242 lt!1454249))))

(assert (=> d!1208417 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454242 lt!1454249) lt!1454411)))

(declare-fun bs!592328 () Bool)

(assert (= bs!592328 d!1208417))

(assert (=> bs!592328 m!4673097))

(assert (=> bs!592328 m!4673097))

(declare-fun m!4673429 () Bool)

(assert (=> bs!592328 m!4673429))

(declare-fun m!4673431 () Bool)

(assert (=> bs!592328 m!4673431))

(assert (=> b!4065449 d!1208417))

(declare-fun d!1208425 () Bool)

(assert (=> d!1208425 (not (matchR!5834 (regex!6976 (rule!10074 token!484)) lt!1454242))))

(declare-fun lt!1454416 () Unit!62945)

(declare-fun choose!24752 (LexerInterface!6565 List!43555 Rule!13752 List!43553 List!43553 List!43553 Rule!13752) Unit!62945)

(assert (=> d!1208425 (= lt!1454416 (choose!24752 thiss!21717 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454287 lt!1454264 lt!1454242 (rule!10074 token!484)))))

(assert (=> d!1208425 (isPrefix!4063 lt!1454287 lt!1454264)))

(assert (=> d!1208425 (= (lemmaMaxPrefixOutputsMaxPrefix!502 thiss!21717 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454287 lt!1454264 lt!1454242 (rule!10074 token!484)) lt!1454416)))

(declare-fun bs!592330 () Bool)

(assert (= bs!592330 d!1208425))

(assert (=> bs!592330 m!4672993))

(declare-fun m!4673441 () Bool)

(assert (=> bs!592330 m!4673441))

(assert (=> bs!592330 m!4673019))

(assert (=> b!4065432 d!1208425))

(declare-fun d!1208431 () Bool)

(declare-fun res!1659227 () Bool)

(declare-fun e!2523101 () Bool)

(assert (=> d!1208431 (=> (not res!1659227) (not e!2523101))))

(declare-fun rulesValid!2718 (LexerInterface!6565 List!43555) Bool)

(assert (=> d!1208431 (= res!1659227 (rulesValid!2718 thiss!21717 rules!2999))))

(assert (=> d!1208431 (= (rulesInvariant!5908 thiss!21717 rules!2999) e!2523101)))

(declare-fun b!4065675 () Bool)

(declare-datatypes ((List!43557 0))(
  ( (Nil!43433) (Cons!43433 (h!48853 String!49748) (t!336860 List!43557)) )
))
(declare-fun noDuplicateTag!2719 (LexerInterface!6565 List!43555 List!43557) Bool)

(assert (=> b!4065675 (= e!2523101 (noDuplicateTag!2719 thiss!21717 rules!2999 Nil!43433))))

(assert (= (and d!1208431 res!1659227) b!4065675))

(declare-fun m!4673443 () Bool)

(assert (=> d!1208431 m!4673443))

(declare-fun m!4673445 () Bool)

(assert (=> b!4065675 m!4673445))

(assert (=> b!4065410 d!1208431))

(declare-fun b!4065677 () Bool)

(declare-fun e!2523103 () List!43553)

(assert (=> b!4065677 (= e!2523103 (Cons!43429 (h!48849 lt!1454242) (++!11378 (t!336808 lt!1454242) lt!1454297)))))

(declare-fun lt!1454418 () List!43553)

(declare-fun b!4065679 () Bool)

(declare-fun e!2523102 () Bool)

(assert (=> b!4065679 (= e!2523102 (or (not (= lt!1454297 Nil!43429)) (= lt!1454418 lt!1454242)))))

(declare-fun b!4065678 () Bool)

(declare-fun res!1659228 () Bool)

(assert (=> b!4065678 (=> (not res!1659228) (not e!2523102))))

(assert (=> b!4065678 (= res!1659228 (= (size!32470 lt!1454418) (+ (size!32470 lt!1454242) (size!32470 lt!1454297))))))

(declare-fun d!1208433 () Bool)

(assert (=> d!1208433 e!2523102))

(declare-fun res!1659229 () Bool)

(assert (=> d!1208433 (=> (not res!1659229) (not e!2523102))))

(assert (=> d!1208433 (= res!1659229 (= (content!6628 lt!1454418) ((_ map or) (content!6628 lt!1454242) (content!6628 lt!1454297))))))

(assert (=> d!1208433 (= lt!1454418 e!2523103)))

(declare-fun c!702003 () Bool)

(assert (=> d!1208433 (= c!702003 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208433 (= (++!11378 lt!1454242 lt!1454297) lt!1454418)))

(declare-fun b!4065676 () Bool)

(assert (=> b!4065676 (= e!2523103 lt!1454297)))

(assert (= (and d!1208433 c!702003) b!4065676))

(assert (= (and d!1208433 (not c!702003)) b!4065677))

(assert (= (and d!1208433 res!1659229) b!4065678))

(assert (= (and b!4065678 res!1659228) b!4065679))

(declare-fun m!4673447 () Bool)

(assert (=> b!4065677 m!4673447))

(declare-fun m!4673449 () Bool)

(assert (=> b!4065678 m!4673449))

(assert (=> b!4065678 m!4672945))

(declare-fun m!4673451 () Bool)

(assert (=> b!4065678 m!4673451))

(declare-fun m!4673453 () Bool)

(assert (=> d!1208433 m!4673453))

(declare-fun m!4673455 () Bool)

(assert (=> d!1208433 m!4673455))

(declare-fun m!4673457 () Bool)

(assert (=> d!1208433 m!4673457))

(assert (=> b!4065431 d!1208433))

(declare-fun d!1208435 () Bool)

(declare-fun lt!1454424 () List!43553)

(assert (=> d!1208435 (= (++!11378 lt!1454242 lt!1454424) prefix!494)))

(declare-fun e!2523127 () List!43553)

(assert (=> d!1208435 (= lt!1454424 e!2523127)))

(declare-fun c!702015 () Bool)

(assert (=> d!1208435 (= c!702015 ((_ is Cons!43429) lt!1454242))))

(assert (=> d!1208435 (>= (size!32470 prefix!494) (size!32470 lt!1454242))))

(assert (=> d!1208435 (= (getSuffix!2480 prefix!494 lt!1454242) lt!1454424)))

(declare-fun b!4065726 () Bool)

(assert (=> b!4065726 (= e!2523127 (getSuffix!2480 (tail!6311 prefix!494) (t!336808 lt!1454242)))))

(declare-fun b!4065727 () Bool)

(assert (=> b!4065727 (= e!2523127 prefix!494)))

(assert (= (and d!1208435 c!702015) b!4065726))

(assert (= (and d!1208435 (not c!702015)) b!4065727))

(declare-fun m!4673471 () Bool)

(assert (=> d!1208435 m!4673471))

(assert (=> d!1208435 m!4672947))

(assert (=> d!1208435 m!4672945))

(declare-fun m!4673473 () Bool)

(assert (=> b!4065726 m!4673473))

(assert (=> b!4065726 m!4673473))

(declare-fun m!4673475 () Bool)

(assert (=> b!4065726 m!4673475))

(assert (=> b!4065431 d!1208435))

(declare-fun b!4065731 () Bool)

(declare-fun e!2523128 () Bool)

(assert (=> b!4065731 (= e!2523128 (>= (size!32470 prefix!494) (size!32470 lt!1454242)))))

(declare-fun d!1208439 () Bool)

(assert (=> d!1208439 e!2523128))

(declare-fun res!1659255 () Bool)

(assert (=> d!1208439 (=> res!1659255 e!2523128)))

(declare-fun lt!1454425 () Bool)

(assert (=> d!1208439 (= res!1659255 (not lt!1454425))))

(declare-fun e!2523129 () Bool)

(assert (=> d!1208439 (= lt!1454425 e!2523129)))

(declare-fun res!1659257 () Bool)

(assert (=> d!1208439 (=> res!1659257 e!2523129)))

(assert (=> d!1208439 (= res!1659257 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208439 (= (isPrefix!4063 lt!1454242 prefix!494) lt!1454425)))

(declare-fun b!4065728 () Bool)

(declare-fun e!2523130 () Bool)

(assert (=> b!4065728 (= e!2523129 e!2523130)))

(declare-fun res!1659256 () Bool)

(assert (=> b!4065728 (=> (not res!1659256) (not e!2523130))))

(assert (=> b!4065728 (= res!1659256 (not ((_ is Nil!43429) prefix!494)))))

(declare-fun b!4065729 () Bool)

(declare-fun res!1659254 () Bool)

(assert (=> b!4065729 (=> (not res!1659254) (not e!2523130))))

(assert (=> b!4065729 (= res!1659254 (= (head!8579 lt!1454242) (head!8579 prefix!494)))))

(declare-fun b!4065730 () Bool)

(assert (=> b!4065730 (= e!2523130 (isPrefix!4063 (tail!6311 lt!1454242) (tail!6311 prefix!494)))))

(assert (= (and d!1208439 (not res!1659257)) b!4065728))

(assert (= (and b!4065728 res!1659256) b!4065729))

(assert (= (and b!4065729 res!1659254) b!4065730))

(assert (= (and d!1208439 (not res!1659255)) b!4065731))

(assert (=> b!4065731 m!4672947))

(assert (=> b!4065731 m!4672945))

(assert (=> b!4065729 m!4673391))

(declare-fun m!4673477 () Bool)

(assert (=> b!4065729 m!4673477))

(assert (=> b!4065730 m!4673395))

(assert (=> b!4065730 m!4673473))

(assert (=> b!4065730 m!4673395))

(assert (=> b!4065730 m!4673473))

(declare-fun m!4673479 () Bool)

(assert (=> b!4065730 m!4673479))

(assert (=> b!4065431 d!1208439))

(declare-fun d!1208441 () Bool)

(assert (=> d!1208441 (isPrefix!4063 lt!1454242 prefix!494)))

(declare-fun lt!1454429 () Unit!62945)

(declare-fun choose!24753 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> d!1208441 (= lt!1454429 (choose!24753 prefix!494 lt!1454242 lt!1454301))))

(assert (=> d!1208441 (isPrefix!4063 prefix!494 lt!1454301)))

(assert (=> d!1208441 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!627 prefix!494 lt!1454242 lt!1454301) lt!1454429)))

(declare-fun bs!592331 () Bool)

(assert (= bs!592331 d!1208441))

(assert (=> bs!592331 m!4673005))

(declare-fun m!4673497 () Bool)

(assert (=> bs!592331 m!4673497))

(assert (=> bs!592331 m!4673077))

(assert (=> b!4065431 d!1208441))

(declare-fun d!1208447 () Bool)

(declare-fun lt!1454436 () Int)

(assert (=> d!1208447 (>= lt!1454436 0)))

(declare-fun e!2523144 () Int)

(assert (=> d!1208447 (= lt!1454436 e!2523144)))

(declare-fun c!702022 () Bool)

(assert (=> d!1208447 (= c!702022 ((_ is Nil!43429) (originalCharacters!7576 token!484)))))

(assert (=> d!1208447 (= (size!32470 (originalCharacters!7576 token!484)) lt!1454436)))

(declare-fun b!4065756 () Bool)

(assert (=> b!4065756 (= e!2523144 0)))

(declare-fun b!4065757 () Bool)

(assert (=> b!4065757 (= e!2523144 (+ 1 (size!32470 (t!336808 (originalCharacters!7576 token!484)))))))

(assert (= (and d!1208447 c!702022) b!4065756))

(assert (= (and d!1208447 (not c!702022)) b!4065757))

(declare-fun m!4673505 () Bool)

(assert (=> b!4065757 m!4673505))

(assert (=> b!4065451 d!1208447))

(declare-fun b!4065759 () Bool)

(declare-fun e!2523146 () List!43553)

(assert (=> b!4065759 (= e!2523146 (Cons!43429 (h!48849 lt!1454287) (++!11378 (t!336808 lt!1454287) newSuffixResult!27)))))

(declare-fun lt!1454439 () List!43553)

(declare-fun e!2523145 () Bool)

(declare-fun b!4065761 () Bool)

(assert (=> b!4065761 (= e!2523145 (or (not (= newSuffixResult!27 Nil!43429)) (= lt!1454439 lt!1454287)))))

(declare-fun b!4065760 () Bool)

(declare-fun res!1659270 () Bool)

(assert (=> b!4065760 (=> (not res!1659270) (not e!2523145))))

(assert (=> b!4065760 (= res!1659270 (= (size!32470 lt!1454439) (+ (size!32470 lt!1454287) (size!32470 newSuffixResult!27))))))

(declare-fun d!1208453 () Bool)

(assert (=> d!1208453 e!2523145))

(declare-fun res!1659271 () Bool)

(assert (=> d!1208453 (=> (not res!1659271) (not e!2523145))))

(assert (=> d!1208453 (= res!1659271 (= (content!6628 lt!1454439) ((_ map or) (content!6628 lt!1454287) (content!6628 newSuffixResult!27))))))

(assert (=> d!1208453 (= lt!1454439 e!2523146)))

(declare-fun c!702023 () Bool)

(assert (=> d!1208453 (= c!702023 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208453 (= (++!11378 lt!1454287 newSuffixResult!27) lt!1454439)))

(declare-fun b!4065758 () Bool)

(assert (=> b!4065758 (= e!2523146 newSuffixResult!27)))

(assert (= (and d!1208453 c!702023) b!4065758))

(assert (= (and d!1208453 (not c!702023)) b!4065759))

(assert (= (and d!1208453 res!1659271) b!4065760))

(assert (= (and b!4065760 res!1659270) b!4065761))

(declare-fun m!4673509 () Bool)

(assert (=> b!4065759 m!4673509))

(declare-fun m!4673511 () Bool)

(assert (=> b!4065760 m!4673511))

(assert (=> b!4065760 m!4672921))

(declare-fun m!4673513 () Bool)

(assert (=> b!4065760 m!4673513))

(declare-fun m!4673515 () Bool)

(assert (=> d!1208453 m!4673515))

(declare-fun m!4673517 () Bool)

(assert (=> d!1208453 m!4673517))

(declare-fun m!4673519 () Bool)

(assert (=> d!1208453 m!4673519))

(assert (=> b!4065424 d!1208453))

(declare-fun b!4065767 () Bool)

(declare-fun e!2523150 () List!43553)

(assert (=> b!4065767 (= e!2523150 (Cons!43429 (h!48849 lt!1454287) (++!11378 (t!336808 lt!1454287) (_2!24375 (v!39815 lt!1454295)))))))

(declare-fun lt!1454442 () List!43553)

(declare-fun e!2523149 () Bool)

(declare-fun b!4065769 () Bool)

(assert (=> b!4065769 (= e!2523149 (or (not (= (_2!24375 (v!39815 lt!1454295)) Nil!43429)) (= lt!1454442 lt!1454287)))))

(declare-fun b!4065768 () Bool)

(declare-fun res!1659274 () Bool)

(assert (=> b!4065768 (=> (not res!1659274) (not e!2523149))))

(assert (=> b!4065768 (= res!1659274 (= (size!32470 lt!1454442) (+ (size!32470 lt!1454287) (size!32470 (_2!24375 (v!39815 lt!1454295))))))))

(declare-fun d!1208457 () Bool)

(assert (=> d!1208457 e!2523149))

(declare-fun res!1659275 () Bool)

(assert (=> d!1208457 (=> (not res!1659275) (not e!2523149))))

(assert (=> d!1208457 (= res!1659275 (= (content!6628 lt!1454442) ((_ map or) (content!6628 lt!1454287) (content!6628 (_2!24375 (v!39815 lt!1454295))))))))

(assert (=> d!1208457 (= lt!1454442 e!2523150)))

(declare-fun c!702025 () Bool)

(assert (=> d!1208457 (= c!702025 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208457 (= (++!11378 lt!1454287 (_2!24375 (v!39815 lt!1454295))) lt!1454442)))

(declare-fun b!4065766 () Bool)

(assert (=> b!4065766 (= e!2523150 (_2!24375 (v!39815 lt!1454295)))))

(assert (= (and d!1208457 c!702025) b!4065766))

(assert (= (and d!1208457 (not c!702025)) b!4065767))

(assert (= (and d!1208457 res!1659275) b!4065768))

(assert (= (and b!4065768 res!1659274) b!4065769))

(declare-fun m!4673539 () Bool)

(assert (=> b!4065767 m!4673539))

(declare-fun m!4673541 () Bool)

(assert (=> b!4065768 m!4673541))

(assert (=> b!4065768 m!4672921))

(declare-fun m!4673543 () Bool)

(assert (=> b!4065768 m!4673543))

(declare-fun m!4673545 () Bool)

(assert (=> d!1208457 m!4673545))

(assert (=> d!1208457 m!4673517))

(declare-fun m!4673547 () Bool)

(assert (=> d!1208457 m!4673547))

(assert (=> b!4065424 d!1208457))

(declare-fun d!1208463 () Bool)

(declare-fun e!2523167 () Bool)

(assert (=> d!1208463 e!2523167))

(declare-fun res!1659292 () Bool)

(assert (=> d!1208463 (=> (not res!1659292) (not e!2523167))))

(declare-fun semiInverseModEq!2983 (Int Int) Bool)

(assert (=> d!1208463 (= res!1659292 (semiInverseModEq!2983 (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(declare-fun Unit!62955 () Unit!62945)

(assert (=> d!1208463 (= (lemmaInv!1185 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) Unit!62955)))

(declare-fun b!4065794 () Bool)

(declare-fun equivClasses!2882 (Int Int) Bool)

(assert (=> b!4065794 (= e!2523167 (equivClasses!2882 (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(assert (= (and d!1208463 res!1659292) b!4065794))

(declare-fun m!4673603 () Bool)

(assert (=> d!1208463 m!4673603))

(declare-fun m!4673605 () Bool)

(assert (=> b!4065794 m!4673605))

(assert (=> b!4065424 d!1208463))

(declare-fun d!1208483 () Bool)

(declare-fun list!16192 (Conc!13187) List!43553)

(assert (=> d!1208483 (= (list!16190 (charsOf!4792 (_1!24375 (v!39815 lt!1454295)))) (list!16192 (c!701966 (charsOf!4792 (_1!24375 (v!39815 lt!1454295))))))))

(declare-fun bs!592334 () Bool)

(assert (= bs!592334 d!1208483))

(declare-fun m!4673607 () Bool)

(assert (=> bs!592334 m!4673607))

(assert (=> b!4065424 d!1208483))

(declare-fun d!1208485 () Bool)

(declare-fun dynLambda!18449 (Int BalanceConc!25968) TokenValue!7206)

(assert (=> d!1208485 (= (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (seqFromList!5193 lt!1454287)) (dynLambda!18449 (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (seqFromList!5193 lt!1454287)))))

(declare-fun b_lambda!118781 () Bool)

(assert (=> (not b_lambda!118781) (not d!1208485)))

(declare-fun tb!244489 () Bool)

(declare-fun t!336820 () Bool)

(assert (=> (and b!4065427 (= (toValue!9536 (transformation!6976 (h!48851 rules!2999))) (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))) t!336820) tb!244489))

(declare-fun result!296270 () Bool)

(assert (=> tb!244489 (= result!296270 (inv!21 (dynLambda!18449 (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (seqFromList!5193 lt!1454287))))))

(declare-fun m!4673617 () Bool)

(assert (=> tb!244489 m!4673617))

(assert (=> d!1208485 t!336820))

(declare-fun b_and!312519 () Bool)

(assert (= b_and!312499 (and (=> t!336820 result!296270) b_and!312519)))

(declare-fun t!336822 () Bool)

(declare-fun tb!244491 () Bool)

(assert (=> (and b!4065433 (= (toValue!9536 (transformation!6976 (rule!10074 token!484))) (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))) t!336822) tb!244491))

(declare-fun result!296274 () Bool)

(assert (= result!296274 result!296270))

(assert (=> d!1208485 t!336822))

(declare-fun b_and!312521 () Bool)

(assert (= b_and!312503 (and (=> t!336822 result!296274) b_and!312521)))

(assert (=> d!1208485 m!4672927))

(declare-fun m!4673619 () Bool)

(assert (=> d!1208485 m!4673619))

(assert (=> b!4065424 d!1208485))

(declare-fun d!1208493 () Bool)

(declare-fun fromListB!2370 (List!43553) BalanceConc!25968)

(assert (=> d!1208493 (= (seqFromList!5193 lt!1454287) (fromListB!2370 lt!1454287))))

(declare-fun bs!592336 () Bool)

(assert (= bs!592336 d!1208493))

(declare-fun m!4673627 () Bool)

(assert (=> bs!592336 m!4673627))

(assert (=> b!4065424 d!1208493))

(declare-fun d!1208497 () Bool)

(declare-fun lt!1454463 () BalanceConc!25968)

(assert (=> d!1208497 (= (list!16190 lt!1454463) (originalCharacters!7576 (_1!24375 (v!39815 lt!1454295))))))

(declare-fun dynLambda!18450 (Int TokenValue!7206) BalanceConc!25968)

(assert (=> d!1208497 (= lt!1454463 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (value!219450 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> d!1208497 (= (charsOf!4792 (_1!24375 (v!39815 lt!1454295))) lt!1454463)))

(declare-fun b_lambda!118783 () Bool)

(assert (=> (not b_lambda!118783) (not d!1208497)))

(declare-fun t!336824 () Bool)

(declare-fun tb!244493 () Bool)

(assert (=> (and b!4065427 (= (toChars!9395 (transformation!6976 (h!48851 rules!2999))) (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))) t!336824) tb!244493))

(declare-fun b!4065831 () Bool)

(declare-fun e!2523194 () Bool)

(declare-fun tp!1230888 () Bool)

(declare-fun inv!58062 (Conc!13187) Bool)

(assert (=> b!4065831 (= e!2523194 (and (inv!58062 (c!701966 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (value!219450 (_1!24375 (v!39815 lt!1454295)))))) tp!1230888))))

(declare-fun result!296276 () Bool)

(declare-fun inv!58063 (BalanceConc!25968) Bool)

(assert (=> tb!244493 (= result!296276 (and (inv!58063 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))) (value!219450 (_1!24375 (v!39815 lt!1454295))))) e!2523194))))

(assert (= tb!244493 b!4065831))

(declare-fun m!4673649 () Bool)

(assert (=> b!4065831 m!4673649))

(declare-fun m!4673651 () Bool)

(assert (=> tb!244493 m!4673651))

(assert (=> d!1208497 t!336824))

(declare-fun b_and!312523 () Bool)

(assert (= b_and!312501 (and (=> t!336824 result!296276) b_and!312523)))

(declare-fun t!336826 () Bool)

(declare-fun tb!244495 () Bool)

(assert (=> (and b!4065433 (= (toChars!9395 (transformation!6976 (rule!10074 token!484))) (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))) t!336826) tb!244495))

(declare-fun result!296280 () Bool)

(assert (= result!296280 result!296276))

(assert (=> d!1208497 t!336826))

(declare-fun b_and!312525 () Bool)

(assert (= b_and!312505 (and (=> t!336826 result!296280) b_and!312525)))

(declare-fun m!4673653 () Bool)

(assert (=> d!1208497 m!4673653))

(declare-fun m!4673655 () Bool)

(assert (=> d!1208497 m!4673655))

(assert (=> b!4065424 d!1208497))

(declare-fun b!4065835 () Bool)

(declare-fun e!2523195 () Bool)

(assert (=> b!4065835 (= e!2523195 (>= (size!32470 lt!1454303) (size!32470 lt!1454287)))))

(declare-fun d!1208511 () Bool)

(assert (=> d!1208511 e!2523195))

(declare-fun res!1659308 () Bool)

(assert (=> d!1208511 (=> res!1659308 e!2523195)))

(declare-fun lt!1454469 () Bool)

(assert (=> d!1208511 (= res!1659308 (not lt!1454469))))

(declare-fun e!2523196 () Bool)

(assert (=> d!1208511 (= lt!1454469 e!2523196)))

(declare-fun res!1659310 () Bool)

(assert (=> d!1208511 (=> res!1659310 e!2523196)))

(assert (=> d!1208511 (= res!1659310 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208511 (= (isPrefix!4063 lt!1454287 lt!1454303) lt!1454469)))

(declare-fun b!4065832 () Bool)

(declare-fun e!2523197 () Bool)

(assert (=> b!4065832 (= e!2523196 e!2523197)))

(declare-fun res!1659309 () Bool)

(assert (=> b!4065832 (=> (not res!1659309) (not e!2523197))))

(assert (=> b!4065832 (= res!1659309 (not ((_ is Nil!43429) lt!1454303)))))

(declare-fun b!4065833 () Bool)

(declare-fun res!1659307 () Bool)

(assert (=> b!4065833 (=> (not res!1659307) (not e!2523197))))

(assert (=> b!4065833 (= res!1659307 (= (head!8579 lt!1454287) (head!8579 lt!1454303)))))

(declare-fun b!4065834 () Bool)

(assert (=> b!4065834 (= e!2523197 (isPrefix!4063 (tail!6311 lt!1454287) (tail!6311 lt!1454303)))))

(assert (= (and d!1208511 (not res!1659310)) b!4065832))

(assert (= (and b!4065832 res!1659309) b!4065833))

(assert (= (and b!4065833 res!1659307) b!4065834))

(assert (= (and d!1208511 (not res!1659308)) b!4065835))

(declare-fun m!4673659 () Bool)

(assert (=> b!4065835 m!4673659))

(assert (=> b!4065835 m!4672921))

(declare-fun m!4673661 () Bool)

(assert (=> b!4065833 m!4673661))

(declare-fun m!4673663 () Bool)

(assert (=> b!4065833 m!4673663))

(declare-fun m!4673665 () Bool)

(assert (=> b!4065834 m!4673665))

(declare-fun m!4673667 () Bool)

(assert (=> b!4065834 m!4673667))

(assert (=> b!4065834 m!4673665))

(assert (=> b!4065834 m!4673667))

(declare-fun m!4673669 () Bool)

(assert (=> b!4065834 m!4673669))

(assert (=> b!4065424 d!1208511))

(declare-fun d!1208517 () Bool)

(assert (=> d!1208517 (= (maxPrefixOneRule!2875 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454264) (Some!9389 (tuple2!42483 (Token!13091 (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (seqFromList!5193 lt!1454287)) (rule!10074 (_1!24375 (v!39815 lt!1454295))) (size!32470 lt!1454287) lt!1454287) (_2!24375 (v!39815 lt!1454295)))))))

(declare-fun lt!1454486 () Unit!62945)

(declare-fun choose!24755 (LexerInterface!6565 List!43555 List!43553 List!43553 List!43553 Rule!13752) Unit!62945)

(assert (=> d!1208517 (= lt!1454486 (choose!24755 thiss!21717 rules!2999 lt!1454287 lt!1454264 (_2!24375 (v!39815 lt!1454295)) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> d!1208517 (not (isEmpty!25917 rules!2999))))

(assert (=> d!1208517 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1681 thiss!21717 rules!2999 lt!1454287 lt!1454264 (_2!24375 (v!39815 lt!1454295)) (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454486)))

(declare-fun bs!592345 () Bool)

(assert (= bs!592345 d!1208517))

(assert (=> bs!592345 m!4672939))

(assert (=> bs!592345 m!4672927))

(assert (=> bs!592345 m!4672961))

(declare-fun m!4673763 () Bool)

(assert (=> bs!592345 m!4673763))

(assert (=> bs!592345 m!4672927))

(assert (=> bs!592345 m!4672929))

(assert (=> bs!592345 m!4672921))

(assert (=> b!4065424 d!1208517))

(declare-fun d!1208541 () Bool)

(declare-fun res!1659347 () Bool)

(declare-fun e!2523228 () Bool)

(assert (=> d!1208541 (=> (not res!1659347) (not e!2523228))))

(declare-fun validRegex!5376 (Regex!11881) Bool)

(assert (=> d!1208541 (= res!1659347 (validRegex!5376 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(assert (=> d!1208541 (= (ruleValid!2906 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) e!2523228)))

(declare-fun b!4065885 () Bool)

(declare-fun res!1659348 () Bool)

(assert (=> b!4065885 (=> (not res!1659348) (not e!2523228))))

(declare-fun nullable!4176 (Regex!11881) Bool)

(assert (=> b!4065885 (= res!1659348 (not (nullable!4176 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(declare-fun b!4065886 () Bool)

(assert (=> b!4065886 (= e!2523228 (not (= (tag!7836 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (String!49749 ""))))))

(assert (= (and d!1208541 res!1659347) b!4065885))

(assert (= (and b!4065885 res!1659348) b!4065886))

(declare-fun m!4673789 () Bool)

(assert (=> d!1208541 m!4673789))

(declare-fun m!4673791 () Bool)

(assert (=> b!4065885 m!4673791))

(assert (=> b!4065424 d!1208541))

(declare-fun d!1208559 () Bool)

(assert (=> d!1208559 (isPrefix!4063 lt!1454287 (++!11378 lt!1454287 newSuffixResult!27))))

(declare-fun lt!1454495 () Unit!62945)

(assert (=> d!1208559 (= lt!1454495 (choose!24750 lt!1454287 newSuffixResult!27))))

(assert (=> d!1208559 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454287 newSuffixResult!27) lt!1454495)))

(declare-fun bs!592350 () Bool)

(assert (= bs!592350 d!1208559))

(assert (=> bs!592350 m!4672909))

(assert (=> bs!592350 m!4672909))

(assert (=> bs!592350 m!4672911))

(declare-fun m!4673801 () Bool)

(assert (=> bs!592350 m!4673801))

(assert (=> b!4065424 d!1208559))

(declare-fun d!1208563 () Bool)

(assert (=> d!1208563 (ruleValid!2906 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))

(declare-fun lt!1454502 () Unit!62945)

(declare-fun choose!24756 (LexerInterface!6565 Rule!13752 List!43555) Unit!62945)

(assert (=> d!1208563 (= lt!1454502 (choose!24756 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))) rules!2999))))

(assert (=> d!1208563 (contains!8642 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))

(assert (=> d!1208563 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1976 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))) rules!2999) lt!1454502)))

(declare-fun bs!592352 () Bool)

(assert (= bs!592352 d!1208563))

(assert (=> bs!592352 m!4672935))

(declare-fun m!4673815 () Bool)

(assert (=> bs!592352 m!4673815))

(assert (=> bs!592352 m!4672985))

(assert (=> b!4065424 d!1208563))

(declare-fun d!1208571 () Bool)

(assert (=> d!1208571 (= (size!32469 (_1!24375 (v!39815 lt!1454295))) (size!32470 (originalCharacters!7576 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun Unit!62956 () Unit!62945)

(assert (=> d!1208571 (= (lemmaCharactersSize!1495 (_1!24375 (v!39815 lt!1454295))) Unit!62956)))

(declare-fun bs!592353 () Bool)

(assert (= bs!592353 d!1208571))

(declare-fun m!4673827 () Bool)

(assert (=> bs!592353 m!4673827))

(assert (=> b!4065424 d!1208571))

(declare-fun d!1208577 () Bool)

(assert (=> d!1208577 (= (size!32469 token!484) (size!32470 (originalCharacters!7576 token!484)))))

(declare-fun Unit!62957 () Unit!62945)

(assert (=> d!1208577 (= (lemmaCharactersSize!1495 token!484) Unit!62957)))

(declare-fun bs!592355 () Bool)

(assert (= bs!592355 d!1208577))

(assert (=> bs!592355 m!4672991))

(assert (=> b!4065424 d!1208577))

(declare-fun b!4065928 () Bool)

(declare-fun e!2523250 () Bool)

(assert (=> b!4065928 (= e!2523250 (>= (size!32470 (++!11378 lt!1454287 newSuffixResult!27)) (size!32470 lt!1454287)))))

(declare-fun d!1208581 () Bool)

(assert (=> d!1208581 e!2523250))

(declare-fun res!1659374 () Bool)

(assert (=> d!1208581 (=> res!1659374 e!2523250)))

(declare-fun lt!1454506 () Bool)

(assert (=> d!1208581 (= res!1659374 (not lt!1454506))))

(declare-fun e!2523251 () Bool)

(assert (=> d!1208581 (= lt!1454506 e!2523251)))

(declare-fun res!1659376 () Bool)

(assert (=> d!1208581 (=> res!1659376 e!2523251)))

(assert (=> d!1208581 (= res!1659376 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208581 (= (isPrefix!4063 lt!1454287 (++!11378 lt!1454287 newSuffixResult!27)) lt!1454506)))

(declare-fun b!4065925 () Bool)

(declare-fun e!2523252 () Bool)

(assert (=> b!4065925 (= e!2523251 e!2523252)))

(declare-fun res!1659375 () Bool)

(assert (=> b!4065925 (=> (not res!1659375) (not e!2523252))))

(assert (=> b!4065925 (= res!1659375 (not ((_ is Nil!43429) (++!11378 lt!1454287 newSuffixResult!27))))))

(declare-fun b!4065926 () Bool)

(declare-fun res!1659373 () Bool)

(assert (=> b!4065926 (=> (not res!1659373) (not e!2523252))))

(assert (=> b!4065926 (= res!1659373 (= (head!8579 lt!1454287) (head!8579 (++!11378 lt!1454287 newSuffixResult!27))))))

(declare-fun b!4065927 () Bool)

(assert (=> b!4065927 (= e!2523252 (isPrefix!4063 (tail!6311 lt!1454287) (tail!6311 (++!11378 lt!1454287 newSuffixResult!27))))))

(assert (= (and d!1208581 (not res!1659376)) b!4065925))

(assert (= (and b!4065925 res!1659375) b!4065926))

(assert (= (and b!4065926 res!1659373) b!4065927))

(assert (= (and d!1208581 (not res!1659374)) b!4065928))

(assert (=> b!4065928 m!4672909))

(declare-fun m!4673837 () Bool)

(assert (=> b!4065928 m!4673837))

(assert (=> b!4065928 m!4672921))

(assert (=> b!4065926 m!4673661))

(assert (=> b!4065926 m!4672909))

(declare-fun m!4673839 () Bool)

(assert (=> b!4065926 m!4673839))

(assert (=> b!4065927 m!4673665))

(assert (=> b!4065927 m!4672909))

(declare-fun m!4673841 () Bool)

(assert (=> b!4065927 m!4673841))

(assert (=> b!4065927 m!4673665))

(assert (=> b!4065927 m!4673841))

(declare-fun m!4673845 () Bool)

(assert (=> b!4065927 m!4673845))

(assert (=> b!4065424 d!1208581))

(declare-fun d!1208587 () Bool)

(declare-fun lt!1454508 () Int)

(assert (=> d!1208587 (>= lt!1454508 0)))

(declare-fun e!2523253 () Int)

(assert (=> d!1208587 (= lt!1454508 e!2523253)))

(declare-fun c!702052 () Bool)

(assert (=> d!1208587 (= c!702052 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208587 (= (size!32470 lt!1454287) lt!1454508)))

(declare-fun b!4065929 () Bool)

(assert (=> b!4065929 (= e!2523253 0)))

(declare-fun b!4065930 () Bool)

(assert (=> b!4065930 (= e!2523253 (+ 1 (size!32470 (t!336808 lt!1454287))))))

(assert (= (and d!1208587 c!702052) b!4065929))

(assert (= (and d!1208587 (not c!702052)) b!4065930))

(declare-fun m!4673847 () Bool)

(assert (=> b!4065930 m!4673847))

(assert (=> b!4065424 d!1208587))

(declare-fun b!4066033 () Bool)

(declare-fun e!2523313 () Bool)

(declare-fun e!2523310 () Bool)

(assert (=> b!4066033 (= e!2523313 e!2523310)))

(declare-fun res!1659416 () Bool)

(assert (=> b!4066033 (=> (not res!1659416) (not e!2523310))))

(declare-fun lt!1454534 () Option!9390)

(assert (=> b!4066033 (= res!1659416 (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454534))))))))

(declare-fun d!1208589 () Bool)

(assert (=> d!1208589 e!2523313))

(declare-fun res!1659419 () Bool)

(assert (=> d!1208589 (=> res!1659419 e!2523313)))

(assert (=> d!1208589 (= res!1659419 (isEmpty!25920 lt!1454534))))

(declare-fun e!2523311 () Option!9390)

(assert (=> d!1208589 (= lt!1454534 e!2523311)))

(declare-fun c!702064 () Bool)

(declare-datatypes ((tuple2!42486 0))(
  ( (tuple2!42487 (_1!24377 List!43553) (_2!24377 List!43553)) )
))
(declare-fun lt!1454532 () tuple2!42486)

(declare-fun isEmpty!25921 (List!43553) Bool)

(assert (=> d!1208589 (= c!702064 (isEmpty!25921 (_1!24377 lt!1454532)))))

(declare-fun findLongestMatch!1326 (Regex!11881 List!43553) tuple2!42486)

(assert (=> d!1208589 (= lt!1454532 (findLongestMatch!1326 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454264))))

(assert (=> d!1208589 (ruleValid!2906 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))

(assert (=> d!1208589 (= (maxPrefixOneRule!2875 thiss!21717 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454264) lt!1454534)))

(declare-fun b!4066034 () Bool)

(declare-fun res!1659417 () Bool)

(assert (=> b!4066034 (=> (not res!1659417) (not e!2523310))))

(assert (=> b!4066034 (= res!1659417 (= (value!219450 (_1!24375 (get!14242 lt!1454534))) (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (get!14242 lt!1454534)))) (seqFromList!5193 (originalCharacters!7576 (_1!24375 (get!14242 lt!1454534)))))))))

(declare-fun b!4066035 () Bool)

(assert (=> b!4066035 (= e!2523310 (= (size!32469 (_1!24375 (get!14242 lt!1454534))) (size!32470 (originalCharacters!7576 (_1!24375 (get!14242 lt!1454534))))))))

(declare-fun b!4066036 () Bool)

(assert (=> b!4066036 (= e!2523311 None!9389)))

(declare-fun b!4066037 () Bool)

(declare-fun res!1659420 () Bool)

(assert (=> b!4066037 (=> (not res!1659420) (not e!2523310))))

(assert (=> b!4066037 (= res!1659420 (< (size!32470 (_2!24375 (get!14242 lt!1454534))) (size!32470 lt!1454264)))))

(declare-fun b!4066038 () Bool)

(declare-fun size!32472 (BalanceConc!25968) Int)

(assert (=> b!4066038 (= e!2523311 (Some!9389 (tuple2!42483 (Token!13091 (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (seqFromList!5193 (_1!24377 lt!1454532))) (rule!10074 (_1!24375 (v!39815 lt!1454295))) (size!32472 (seqFromList!5193 (_1!24377 lt!1454532))) (_1!24377 lt!1454532)) (_2!24377 lt!1454532))))))

(declare-fun lt!1454533 () Unit!62945)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1386 (Regex!11881 List!43553) Unit!62945)

(assert (=> b!4066038 (= lt!1454533 (longestMatchIsAcceptedByMatchOrIsEmpty!1386 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454264))))

(declare-fun res!1659421 () Bool)

(declare-fun findLongestMatchInner!1413 (Regex!11881 List!43553 Int List!43553 List!43553 Int) tuple2!42486)

(assert (=> b!4066038 (= res!1659421 (isEmpty!25921 (_1!24377 (findLongestMatchInner!1413 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) Nil!43429 (size!32470 Nil!43429) lt!1454264 lt!1454264 (size!32470 lt!1454264)))))))

(declare-fun e!2523312 () Bool)

(assert (=> b!4066038 (=> res!1659421 e!2523312)))

(assert (=> b!4066038 e!2523312))

(declare-fun lt!1454536 () Unit!62945)

(assert (=> b!4066038 (= lt!1454536 lt!1454533)))

(declare-fun lt!1454535 () Unit!62945)

(declare-fun lemmaSemiInverse!1945 (TokenValueInjection!13840 BalanceConc!25968) Unit!62945)

(assert (=> b!4066038 (= lt!1454535 (lemmaSemiInverse!1945 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (seqFromList!5193 (_1!24377 lt!1454532))))))

(declare-fun b!4066039 () Bool)

(declare-fun res!1659418 () Bool)

(assert (=> b!4066039 (=> (not res!1659418) (not e!2523310))))

(assert (=> b!4066039 (= res!1659418 (= (++!11378 (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454534)))) (_2!24375 (get!14242 lt!1454534))) lt!1454264))))

(declare-fun b!4066040 () Bool)

(assert (=> b!4066040 (= e!2523312 (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (_1!24377 (findLongestMatchInner!1413 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) Nil!43429 (size!32470 Nil!43429) lt!1454264 lt!1454264 (size!32470 lt!1454264)))))))

(declare-fun b!4066041 () Bool)

(declare-fun res!1659422 () Bool)

(assert (=> b!4066041 (=> (not res!1659422) (not e!2523310))))

(assert (=> b!4066041 (= res!1659422 (= (rule!10074 (_1!24375 (get!14242 lt!1454534))) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (= (and d!1208589 c!702064) b!4066036))

(assert (= (and d!1208589 (not c!702064)) b!4066038))

(assert (= (and b!4066038 (not res!1659421)) b!4066040))

(assert (= (and d!1208589 (not res!1659419)) b!4066033))

(assert (= (and b!4066033 res!1659416) b!4066039))

(assert (= (and b!4066039 res!1659418) b!4066037))

(assert (= (and b!4066037 res!1659420) b!4066041))

(assert (= (and b!4066041 res!1659422) b!4066034))

(assert (= (and b!4066034 res!1659417) b!4066035))

(declare-fun m!4673907 () Bool)

(assert (=> b!4066040 m!4673907))

(assert (=> b!4066040 m!4673149))

(assert (=> b!4066040 m!4673907))

(assert (=> b!4066040 m!4673149))

(declare-fun m!4673909 () Bool)

(assert (=> b!4066040 m!4673909))

(declare-fun m!4673911 () Bool)

(assert (=> b!4066040 m!4673911))

(declare-fun m!4673913 () Bool)

(assert (=> b!4066033 m!4673913))

(declare-fun m!4673915 () Bool)

(assert (=> b!4066033 m!4673915))

(assert (=> b!4066033 m!4673915))

(declare-fun m!4673917 () Bool)

(assert (=> b!4066033 m!4673917))

(assert (=> b!4066033 m!4673917))

(declare-fun m!4673919 () Bool)

(assert (=> b!4066033 m!4673919))

(assert (=> b!4066037 m!4673913))

(declare-fun m!4673921 () Bool)

(assert (=> b!4066037 m!4673921))

(assert (=> b!4066037 m!4673149))

(assert (=> b!4066039 m!4673913))

(assert (=> b!4066039 m!4673915))

(assert (=> b!4066039 m!4673915))

(assert (=> b!4066039 m!4673917))

(assert (=> b!4066039 m!4673917))

(declare-fun m!4673923 () Bool)

(assert (=> b!4066039 m!4673923))

(declare-fun m!4673925 () Bool)

(assert (=> d!1208589 m!4673925))

(declare-fun m!4673927 () Bool)

(assert (=> d!1208589 m!4673927))

(declare-fun m!4673929 () Bool)

(assert (=> d!1208589 m!4673929))

(assert (=> d!1208589 m!4672935))

(declare-fun m!4673931 () Bool)

(assert (=> b!4066038 m!4673931))

(declare-fun m!4673933 () Bool)

(assert (=> b!4066038 m!4673933))

(assert (=> b!4066038 m!4673149))

(assert (=> b!4066038 m!4673907))

(assert (=> b!4066038 m!4673149))

(assert (=> b!4066038 m!4673909))

(declare-fun m!4673935 () Bool)

(assert (=> b!4066038 m!4673935))

(declare-fun m!4673937 () Bool)

(assert (=> b!4066038 m!4673937))

(assert (=> b!4066038 m!4673931))

(declare-fun m!4673939 () Bool)

(assert (=> b!4066038 m!4673939))

(assert (=> b!4066038 m!4673931))

(declare-fun m!4673941 () Bool)

(assert (=> b!4066038 m!4673941))

(assert (=> b!4066038 m!4673907))

(assert (=> b!4066038 m!4673931))

(assert (=> b!4066035 m!4673913))

(declare-fun m!4673943 () Bool)

(assert (=> b!4066035 m!4673943))

(assert (=> b!4066034 m!4673913))

(declare-fun m!4673945 () Bool)

(assert (=> b!4066034 m!4673945))

(assert (=> b!4066034 m!4673945))

(declare-fun m!4673947 () Bool)

(assert (=> b!4066034 m!4673947))

(assert (=> b!4066041 m!4673913))

(assert (=> b!4065424 d!1208589))

(declare-fun d!1208615 () Bool)

(assert (=> d!1208615 (isPrefix!4063 lt!1454287 (++!11378 lt!1454287 (_2!24375 (v!39815 lt!1454295))))))

(declare-fun lt!1454537 () Unit!62945)

(assert (=> d!1208615 (= lt!1454537 (choose!24750 lt!1454287 (_2!24375 (v!39815 lt!1454295))))))

(assert (=> d!1208615 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454287 (_2!24375 (v!39815 lt!1454295))) lt!1454537)))

(declare-fun bs!592360 () Bool)

(assert (= bs!592360 d!1208615))

(assert (=> bs!592360 m!4672923))

(assert (=> bs!592360 m!4672923))

(declare-fun m!4673949 () Bool)

(assert (=> bs!592360 m!4673949))

(declare-fun m!4673951 () Bool)

(assert (=> bs!592360 m!4673951))

(assert (=> b!4065424 d!1208615))

(declare-fun b!4066043 () Bool)

(declare-fun e!2523315 () List!43553)

(assert (=> b!4066043 (= e!2523315 (Cons!43429 (h!48849 lt!1454287) (++!11378 (t!336808 lt!1454287) lt!1454252)))))

(declare-fun b!4066045 () Bool)

(declare-fun lt!1454538 () List!43553)

(declare-fun e!2523314 () Bool)

(assert (=> b!4066045 (= e!2523314 (or (not (= lt!1454252 Nil!43429)) (= lt!1454538 lt!1454287)))))

(declare-fun b!4066044 () Bool)

(declare-fun res!1659423 () Bool)

(assert (=> b!4066044 (=> (not res!1659423) (not e!2523314))))

(assert (=> b!4066044 (= res!1659423 (= (size!32470 lt!1454538) (+ (size!32470 lt!1454287) (size!32470 lt!1454252))))))

(declare-fun d!1208617 () Bool)

(assert (=> d!1208617 e!2523314))

(declare-fun res!1659424 () Bool)

(assert (=> d!1208617 (=> (not res!1659424) (not e!2523314))))

(assert (=> d!1208617 (= res!1659424 (= (content!6628 lt!1454538) ((_ map or) (content!6628 lt!1454287) (content!6628 lt!1454252))))))

(assert (=> d!1208617 (= lt!1454538 e!2523315)))

(declare-fun c!702065 () Bool)

(assert (=> d!1208617 (= c!702065 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208617 (= (++!11378 lt!1454287 lt!1454252) lt!1454538)))

(declare-fun b!4066042 () Bool)

(assert (=> b!4066042 (= e!2523315 lt!1454252)))

(assert (= (and d!1208617 c!702065) b!4066042))

(assert (= (and d!1208617 (not c!702065)) b!4066043))

(assert (= (and d!1208617 res!1659424) b!4066044))

(assert (= (and b!4066044 res!1659423) b!4066045))

(declare-fun m!4673953 () Bool)

(assert (=> b!4066043 m!4673953))

(declare-fun m!4673955 () Bool)

(assert (=> b!4066044 m!4673955))

(assert (=> b!4066044 m!4672921))

(declare-fun m!4673957 () Bool)

(assert (=> b!4066044 m!4673957))

(declare-fun m!4673959 () Bool)

(assert (=> d!1208617 m!4673959))

(assert (=> d!1208617 m!4673517))

(declare-fun m!4673961 () Bool)

(assert (=> d!1208617 m!4673961))

(assert (=> b!4065445 d!1208617))

(declare-fun d!1208619 () Bool)

(declare-fun lt!1454539 () List!43553)

(assert (=> d!1208619 (= (++!11378 lt!1454287 lt!1454539) lt!1454264)))

(declare-fun e!2523316 () List!43553)

(assert (=> d!1208619 (= lt!1454539 e!2523316)))

(declare-fun c!702066 () Bool)

(assert (=> d!1208619 (= c!702066 ((_ is Cons!43429) lt!1454287))))

(assert (=> d!1208619 (>= (size!32470 lt!1454264) (size!32470 lt!1454287))))

(assert (=> d!1208619 (= (getSuffix!2480 lt!1454264 lt!1454287) lt!1454539)))

(declare-fun b!4066046 () Bool)

(assert (=> b!4066046 (= e!2523316 (getSuffix!2480 (tail!6311 lt!1454264) (t!336808 lt!1454287)))))

(declare-fun b!4066047 () Bool)

(assert (=> b!4066047 (= e!2523316 lt!1454264)))

(assert (= (and d!1208619 c!702066) b!4066046))

(assert (= (and d!1208619 (not c!702066)) b!4066047))

(declare-fun m!4673963 () Bool)

(assert (=> d!1208619 m!4673963))

(assert (=> d!1208619 m!4673149))

(assert (=> d!1208619 m!4672921))

(declare-fun m!4673965 () Bool)

(assert (=> b!4066046 m!4673965))

(assert (=> b!4066046 m!4673965))

(declare-fun m!4673967 () Bool)

(assert (=> b!4066046 m!4673967))

(assert (=> b!4065445 d!1208619))

(declare-fun b!4066049 () Bool)

(declare-fun e!2523318 () List!43553)

(assert (=> b!4066049 (= e!2523318 (Cons!43429 (h!48849 prefix!494) (++!11378 (t!336808 prefix!494) newSuffix!27)))))

(declare-fun b!4066051 () Bool)

(declare-fun e!2523317 () Bool)

(declare-fun lt!1454540 () List!43553)

(assert (=> b!4066051 (= e!2523317 (or (not (= newSuffix!27 Nil!43429)) (= lt!1454540 prefix!494)))))

(declare-fun b!4066050 () Bool)

(declare-fun res!1659425 () Bool)

(assert (=> b!4066050 (=> (not res!1659425) (not e!2523317))))

(assert (=> b!4066050 (= res!1659425 (= (size!32470 lt!1454540) (+ (size!32470 prefix!494) (size!32470 newSuffix!27))))))

(declare-fun d!1208621 () Bool)

(assert (=> d!1208621 e!2523317))

(declare-fun res!1659426 () Bool)

(assert (=> d!1208621 (=> (not res!1659426) (not e!2523317))))

(assert (=> d!1208621 (= res!1659426 (= (content!6628 lt!1454540) ((_ map or) (content!6628 prefix!494) (content!6628 newSuffix!27))))))

(assert (=> d!1208621 (= lt!1454540 e!2523318)))

(declare-fun c!702067 () Bool)

(assert (=> d!1208621 (= c!702067 ((_ is Nil!43429) prefix!494))))

(assert (=> d!1208621 (= (++!11378 prefix!494 newSuffix!27) lt!1454540)))

(declare-fun b!4066048 () Bool)

(assert (=> b!4066048 (= e!2523318 newSuffix!27)))

(assert (= (and d!1208621 c!702067) b!4066048))

(assert (= (and d!1208621 (not c!702067)) b!4066049))

(assert (= (and d!1208621 res!1659426) b!4066050))

(assert (= (and b!4066050 res!1659425) b!4066051))

(declare-fun m!4673969 () Bool)

(assert (=> b!4066049 m!4673969))

(declare-fun m!4673971 () Bool)

(assert (=> b!4066050 m!4673971))

(assert (=> b!4066050 m!4672947))

(assert (=> b!4066050 m!4673029))

(declare-fun m!4673973 () Bool)

(assert (=> d!1208621 m!4673973))

(assert (=> d!1208621 m!4673141))

(declare-fun m!4673975 () Bool)

(assert (=> d!1208621 m!4673975))

(assert (=> b!4065423 d!1208621))

(declare-fun b!4066053 () Bool)

(declare-fun e!2523320 () List!43553)

(assert (=> b!4066053 (= e!2523320 (Cons!43429 (h!48849 lt!1454242) (++!11378 (t!336808 lt!1454242) newSuffixResult!27)))))

(declare-fun b!4066055 () Bool)

(declare-fun e!2523319 () Bool)

(declare-fun lt!1454541 () List!43553)

(assert (=> b!4066055 (= e!2523319 (or (not (= newSuffixResult!27 Nil!43429)) (= lt!1454541 lt!1454242)))))

(declare-fun b!4066054 () Bool)

(declare-fun res!1659427 () Bool)

(assert (=> b!4066054 (=> (not res!1659427) (not e!2523319))))

(assert (=> b!4066054 (= res!1659427 (= (size!32470 lt!1454541) (+ (size!32470 lt!1454242) (size!32470 newSuffixResult!27))))))

(declare-fun d!1208623 () Bool)

(assert (=> d!1208623 e!2523319))

(declare-fun res!1659428 () Bool)

(assert (=> d!1208623 (=> (not res!1659428) (not e!2523319))))

(assert (=> d!1208623 (= res!1659428 (= (content!6628 lt!1454541) ((_ map or) (content!6628 lt!1454242) (content!6628 newSuffixResult!27))))))

(assert (=> d!1208623 (= lt!1454541 e!2523320)))

(declare-fun c!702068 () Bool)

(assert (=> d!1208623 (= c!702068 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208623 (= (++!11378 lt!1454242 newSuffixResult!27) lt!1454541)))

(declare-fun b!4066052 () Bool)

(assert (=> b!4066052 (= e!2523320 newSuffixResult!27)))

(assert (= (and d!1208623 c!702068) b!4066052))

(assert (= (and d!1208623 (not c!702068)) b!4066053))

(assert (= (and d!1208623 res!1659428) b!4066054))

(assert (= (and b!4066054 res!1659427) b!4066055))

(declare-fun m!4673977 () Bool)

(assert (=> b!4066053 m!4673977))

(declare-fun m!4673979 () Bool)

(assert (=> b!4066054 m!4673979))

(assert (=> b!4066054 m!4672945))

(assert (=> b!4066054 m!4673513))

(declare-fun m!4673981 () Bool)

(assert (=> d!1208623 m!4673981))

(assert (=> d!1208623 m!4673455))

(assert (=> d!1208623 m!4673519))

(assert (=> b!4065423 d!1208623))

(declare-fun d!1208625 () Bool)

(assert (=> d!1208625 (= (inv!58055 (tag!7836 (h!48851 rules!2999))) (= (mod (str.len (value!219449 (tag!7836 (h!48851 rules!2999)))) 2) 0))))

(assert (=> b!4065444 d!1208625))

(declare-fun d!1208627 () Bool)

(declare-fun res!1659431 () Bool)

(declare-fun e!2523323 () Bool)

(assert (=> d!1208627 (=> (not res!1659431) (not e!2523323))))

(assert (=> d!1208627 (= res!1659431 (semiInverseModEq!2983 (toChars!9395 (transformation!6976 (h!48851 rules!2999))) (toValue!9536 (transformation!6976 (h!48851 rules!2999)))))))

(assert (=> d!1208627 (= (inv!58058 (transformation!6976 (h!48851 rules!2999))) e!2523323)))

(declare-fun b!4066058 () Bool)

(assert (=> b!4066058 (= e!2523323 (equivClasses!2882 (toChars!9395 (transformation!6976 (h!48851 rules!2999))) (toValue!9536 (transformation!6976 (h!48851 rules!2999)))))))

(assert (= (and d!1208627 res!1659431) b!4066058))

(declare-fun m!4673983 () Bool)

(assert (=> d!1208627 m!4673983))

(declare-fun m!4673985 () Bool)

(assert (=> b!4066058 m!4673985))

(assert (=> b!4065444 d!1208627))

(declare-fun d!1208629 () Bool)

(declare-fun lt!1454542 () Int)

(assert (=> d!1208629 (>= lt!1454542 0)))

(declare-fun e!2523324 () Int)

(assert (=> d!1208629 (= lt!1454542 e!2523324)))

(declare-fun c!702069 () Bool)

(assert (=> d!1208629 (= c!702069 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208629 (= (size!32470 lt!1454242) lt!1454542)))

(declare-fun b!4066059 () Bool)

(assert (=> b!4066059 (= e!2523324 0)))

(declare-fun b!4066060 () Bool)

(assert (=> b!4066060 (= e!2523324 (+ 1 (size!32470 (t!336808 lt!1454242))))))

(assert (= (and d!1208629 c!702069) b!4066059))

(assert (= (and d!1208629 (not c!702069)) b!4066060))

(declare-fun m!4673987 () Bool)

(assert (=> b!4066060 m!4673987))

(assert (=> b!4065422 d!1208629))

(declare-fun d!1208631 () Bool)

(declare-fun lt!1454543 () Int)

(assert (=> d!1208631 (>= lt!1454543 0)))

(declare-fun e!2523325 () Int)

(assert (=> d!1208631 (= lt!1454543 e!2523325)))

(declare-fun c!702070 () Bool)

(assert (=> d!1208631 (= c!702070 ((_ is Nil!43429) prefix!494))))

(assert (=> d!1208631 (= (size!32470 prefix!494) lt!1454543)))

(declare-fun b!4066061 () Bool)

(assert (=> b!4066061 (= e!2523325 0)))

(declare-fun b!4066062 () Bool)

(assert (=> b!4066062 (= e!2523325 (+ 1 (size!32470 (t!336808 prefix!494))))))

(assert (= (and d!1208631 c!702070) b!4066061))

(assert (= (and d!1208631 (not c!702070)) b!4066062))

(declare-fun m!4673989 () Bool)

(assert (=> b!4066062 m!4673989))

(assert (=> b!4065422 d!1208631))

(declare-fun d!1208633 () Bool)

(assert (=> d!1208633 (= (list!16190 (charsOf!4792 token!484)) (list!16192 (c!701966 (charsOf!4792 token!484))))))

(declare-fun bs!592361 () Bool)

(assert (= bs!592361 d!1208633))

(declare-fun m!4673991 () Bool)

(assert (=> bs!592361 m!4673991))

(assert (=> b!4065422 d!1208633))

(declare-fun d!1208635 () Bool)

(declare-fun lt!1454544 () BalanceConc!25968)

(assert (=> d!1208635 (= (list!16190 lt!1454544) (originalCharacters!7576 token!484))))

(assert (=> d!1208635 (= lt!1454544 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (value!219450 token!484)))))

(assert (=> d!1208635 (= (charsOf!4792 token!484) lt!1454544)))

(declare-fun b_lambda!118795 () Bool)

(assert (=> (not b_lambda!118795) (not d!1208635)))

(declare-fun tb!244513 () Bool)

(declare-fun t!336845 () Bool)

(assert (=> (and b!4065427 (= (toChars!9395 (transformation!6976 (h!48851 rules!2999))) (toChars!9395 (transformation!6976 (rule!10074 token!484)))) t!336845) tb!244513))

(declare-fun b!4066063 () Bool)

(declare-fun e!2523326 () Bool)

(declare-fun tp!1230930 () Bool)

(assert (=> b!4066063 (= e!2523326 (and (inv!58062 (c!701966 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (value!219450 token!484)))) tp!1230930))))

(declare-fun result!296304 () Bool)

(assert (=> tb!244513 (= result!296304 (and (inv!58063 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (value!219450 token!484))) e!2523326))))

(assert (= tb!244513 b!4066063))

(declare-fun m!4673993 () Bool)

(assert (=> b!4066063 m!4673993))

(declare-fun m!4673995 () Bool)

(assert (=> tb!244513 m!4673995))

(assert (=> d!1208635 t!336845))

(declare-fun b_and!312539 () Bool)

(assert (= b_and!312523 (and (=> t!336845 result!296304) b_and!312539)))

(declare-fun t!336847 () Bool)

(declare-fun tb!244515 () Bool)

(assert (=> (and b!4065433 (= (toChars!9395 (transformation!6976 (rule!10074 token!484))) (toChars!9395 (transformation!6976 (rule!10074 token!484)))) t!336847) tb!244515))

(declare-fun result!296306 () Bool)

(assert (= result!296306 result!296304))

(assert (=> d!1208635 t!336847))

(declare-fun b_and!312541 () Bool)

(assert (= b_and!312525 (and (=> t!336847 result!296306) b_and!312541)))

(declare-fun m!4673997 () Bool)

(assert (=> d!1208635 m!4673997))

(declare-fun m!4673999 () Bool)

(assert (=> d!1208635 m!4673999))

(assert (=> b!4065422 d!1208635))

(declare-fun d!1208637 () Bool)

(declare-fun lt!1454547 () Bool)

(declare-fun content!6631 (List!43555) (InoxSet Rule!13752))

(assert (=> d!1208637 (= lt!1454547 (select (content!6631 rules!2999) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun e!2523331 () Bool)

(assert (=> d!1208637 (= lt!1454547 e!2523331)))

(declare-fun res!1659437 () Bool)

(assert (=> d!1208637 (=> (not res!1659437) (not e!2523331))))

(assert (=> d!1208637 (= res!1659437 ((_ is Cons!43431) rules!2999))))

(assert (=> d!1208637 (= (contains!8642 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454547)))

(declare-fun b!4066068 () Bool)

(declare-fun e!2523332 () Bool)

(assert (=> b!4066068 (= e!2523331 e!2523332)))

(declare-fun res!1659436 () Bool)

(assert (=> b!4066068 (=> res!1659436 e!2523332)))

(assert (=> b!4066068 (= res!1659436 (= (h!48851 rules!2999) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(declare-fun b!4066069 () Bool)

(assert (=> b!4066069 (= e!2523332 (contains!8642 (t!336810 rules!2999) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (= (and d!1208637 res!1659437) b!4066068))

(assert (= (and b!4066068 (not res!1659436)) b!4066069))

(declare-fun m!4674001 () Bool)

(assert (=> d!1208637 m!4674001))

(declare-fun m!4674003 () Bool)

(assert (=> d!1208637 m!4674003))

(declare-fun m!4674005 () Bool)

(assert (=> b!4066069 m!4674005))

(assert (=> b!4065443 d!1208637))

(declare-fun d!1208639 () Bool)

(assert (=> d!1208639 (= (_2!24375 (v!39815 lt!1454295)) newSuffixResult!27)))

(declare-fun lt!1454548 () Unit!62945)

(assert (=> d!1208639 (= lt!1454548 (choose!24748 lt!1454287 (_2!24375 (v!39815 lt!1454295)) lt!1454242 newSuffixResult!27 lt!1454264))))

(assert (=> d!1208639 (isPrefix!4063 lt!1454287 lt!1454264)))

(assert (=> d!1208639 (= (lemmaSamePrefixThenSameSuffix!2224 lt!1454287 (_2!24375 (v!39815 lt!1454295)) lt!1454242 newSuffixResult!27 lt!1454264) lt!1454548)))

(declare-fun bs!592362 () Bool)

(assert (= bs!592362 d!1208639))

(declare-fun m!4674007 () Bool)

(assert (=> bs!592362 m!4674007))

(assert (=> bs!592362 m!4673019))

(assert (=> b!4065443 d!1208639))

(declare-fun b!4066079 () Bool)

(declare-fun e!2523339 () Int)

(declare-fun e!2523338 () Int)

(assert (=> b!4066079 (= e!2523339 e!2523338)))

(declare-fun c!702076 () Bool)

(assert (=> b!4066079 (= c!702076 (and ((_ is Cons!43431) rules!2999) (not (= (h!48851 rules!2999) (rule!10074 token!484)))))))

(declare-fun b!4066081 () Bool)

(assert (=> b!4066081 (= e!2523338 (- 1))))

(declare-fun d!1208641 () Bool)

(declare-fun lt!1454551 () Int)

(assert (=> d!1208641 (>= lt!1454551 0)))

(assert (=> d!1208641 (= lt!1454551 e!2523339)))

(declare-fun c!702075 () Bool)

(assert (=> d!1208641 (= c!702075 (and ((_ is Cons!43431) rules!2999) (= (h!48851 rules!2999) (rule!10074 token!484))))))

(assert (=> d!1208641 (contains!8642 rules!2999 (rule!10074 token!484))))

(assert (=> d!1208641 (= (getIndex!588 rules!2999 (rule!10074 token!484)) lt!1454551)))

(declare-fun b!4066078 () Bool)

(assert (=> b!4066078 (= e!2523339 0)))

(declare-fun b!4066080 () Bool)

(assert (=> b!4066080 (= e!2523338 (+ 1 (getIndex!588 (t!336810 rules!2999) (rule!10074 token!484))))))

(assert (= (and d!1208641 c!702075) b!4066078))

(assert (= (and d!1208641 (not c!702075)) b!4066079))

(assert (= (and b!4066079 c!702076) b!4066080))

(assert (= (and b!4066079 (not c!702076)) b!4066081))

(declare-fun m!4674009 () Bool)

(assert (=> d!1208641 m!4674009))

(declare-fun m!4674011 () Bool)

(assert (=> b!4066080 m!4674011))

(assert (=> b!4065443 d!1208641))

(declare-fun b!4066083 () Bool)

(declare-fun e!2523341 () Int)

(declare-fun e!2523340 () Int)

(assert (=> b!4066083 (= e!2523341 e!2523340)))

(declare-fun c!702078 () Bool)

(assert (=> b!4066083 (= c!702078 (and ((_ is Cons!43431) rules!2999) (not (= (h!48851 rules!2999) (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(declare-fun b!4066085 () Bool)

(assert (=> b!4066085 (= e!2523340 (- 1))))

(declare-fun d!1208643 () Bool)

(declare-fun lt!1454552 () Int)

(assert (=> d!1208643 (>= lt!1454552 0)))

(assert (=> d!1208643 (= lt!1454552 e!2523341)))

(declare-fun c!702077 () Bool)

(assert (=> d!1208643 (= c!702077 (and ((_ is Cons!43431) rules!2999) (= (h!48851 rules!2999) (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(assert (=> d!1208643 (contains!8642 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))

(assert (=> d!1208643 (= (getIndex!588 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454552)))

(declare-fun b!4066082 () Bool)

(assert (=> b!4066082 (= e!2523341 0)))

(declare-fun b!4066084 () Bool)

(assert (=> b!4066084 (= e!2523340 (+ 1 (getIndex!588 (t!336810 rules!2999) (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(assert (= (and d!1208643 c!702077) b!4066082))

(assert (= (and d!1208643 (not c!702077)) b!4066083))

(assert (= (and b!4066083 c!702078) b!4066084))

(assert (= (and b!4066083 (not c!702078)) b!4066085))

(assert (=> d!1208643 m!4672985))

(declare-fun m!4674013 () Bool)

(assert (=> b!4066084 m!4674013))

(assert (=> b!4065443 d!1208643))

(declare-fun d!1208645 () Bool)

(assert (=> d!1208645 (= lt!1454287 lt!1454242)))

(declare-fun lt!1454555 () Unit!62945)

(declare-fun choose!24759 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> d!1208645 (= lt!1454555 (choose!24759 lt!1454287 lt!1454242 lt!1454264))))

(assert (=> d!1208645 (isPrefix!4063 lt!1454287 lt!1454264)))

(assert (=> d!1208645 (= (lemmaIsPrefixSameLengthThenSameList!953 lt!1454287 lt!1454242 lt!1454264) lt!1454555)))

(declare-fun bs!592363 () Bool)

(assert (= bs!592363 d!1208645))

(declare-fun m!4674015 () Bool)

(assert (=> bs!592363 m!4674015))

(assert (=> bs!592363 m!4673019))

(assert (=> b!4065443 d!1208645))

(declare-fun d!1208647 () Bool)

(declare-fun res!1659442 () Bool)

(declare-fun e!2523344 () Bool)

(assert (=> d!1208647 (=> (not res!1659442) (not e!2523344))))

(assert (=> d!1208647 (= res!1659442 (not (isEmpty!25921 (originalCharacters!7576 token!484))))))

(assert (=> d!1208647 (= (inv!58059 token!484) e!2523344)))

(declare-fun b!4066090 () Bool)

(declare-fun res!1659443 () Bool)

(assert (=> b!4066090 (=> (not res!1659443) (not e!2523344))))

(assert (=> b!4066090 (= res!1659443 (= (originalCharacters!7576 token!484) (list!16190 (dynLambda!18450 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (value!219450 token!484)))))))

(declare-fun b!4066091 () Bool)

(assert (=> b!4066091 (= e!2523344 (= (size!32469 token!484) (size!32470 (originalCharacters!7576 token!484))))))

(assert (= (and d!1208647 res!1659442) b!4066090))

(assert (= (and b!4066090 res!1659443) b!4066091))

(declare-fun b_lambda!118797 () Bool)

(assert (=> (not b_lambda!118797) (not b!4066090)))

(assert (=> b!4066090 t!336845))

(declare-fun b_and!312543 () Bool)

(assert (= b_and!312539 (and (=> t!336845 result!296304) b_and!312543)))

(assert (=> b!4066090 t!336847))

(declare-fun b_and!312545 () Bool)

(assert (= b_and!312541 (and (=> t!336847 result!296306) b_and!312545)))

(declare-fun m!4674017 () Bool)

(assert (=> d!1208647 m!4674017))

(assert (=> b!4066090 m!4673999))

(assert (=> b!4066090 m!4673999))

(declare-fun m!4674019 () Bool)

(assert (=> b!4066090 m!4674019))

(assert (=> b!4066091 m!4672991))

(assert (=> start!383432 d!1208647))

(declare-fun b!4066120 () Bool)

(declare-fun e!2523365 () Bool)

(declare-fun e!2523361 () Bool)

(assert (=> b!4066120 (= e!2523365 e!2523361)))

(declare-fun res!1659466 () Bool)

(assert (=> b!4066120 (=> res!1659466 e!2523361)))

(declare-fun call!288288 () Bool)

(assert (=> b!4066120 (= res!1659466 call!288288)))

(declare-fun b!4066121 () Bool)

(declare-fun res!1659460 () Bool)

(assert (=> b!4066121 (=> res!1659460 e!2523361)))

(assert (=> b!4066121 (= res!1659460 (not (isEmpty!25921 (tail!6311 lt!1454242))))))

(declare-fun b!4066122 () Bool)

(declare-fun e!2523363 () Bool)

(declare-fun derivativeStep!3581 (Regex!11881 C!23948) Regex!11881)

(assert (=> b!4066122 (= e!2523363 (matchR!5834 (derivativeStep!3581 (regex!6976 (rule!10074 token!484)) (head!8579 lt!1454242)) (tail!6311 lt!1454242)))))

(declare-fun b!4066123 () Bool)

(declare-fun e!2523360 () Bool)

(declare-fun lt!1454558 () Bool)

(assert (=> b!4066123 (= e!2523360 (= lt!1454558 call!288288))))

(declare-fun b!4066125 () Bool)

(declare-fun e!2523362 () Bool)

(assert (=> b!4066125 (= e!2523360 e!2523362)))

(declare-fun c!702087 () Bool)

(assert (=> b!4066125 (= c!702087 ((_ is EmptyLang!11881) (regex!6976 (rule!10074 token!484))))))

(declare-fun b!4066126 () Bool)

(assert (=> b!4066126 (= e!2523362 (not lt!1454558))))

(declare-fun b!4066127 () Bool)

(declare-fun res!1659462 () Bool)

(declare-fun e!2523359 () Bool)

(assert (=> b!4066127 (=> res!1659462 e!2523359)))

(declare-fun e!2523364 () Bool)

(assert (=> b!4066127 (= res!1659462 e!2523364)))

(declare-fun res!1659467 () Bool)

(assert (=> b!4066127 (=> (not res!1659467) (not e!2523364))))

(assert (=> b!4066127 (= res!1659467 lt!1454558)))

(declare-fun bm!288283 () Bool)

(assert (=> bm!288283 (= call!288288 (isEmpty!25921 lt!1454242))))

(declare-fun b!4066128 () Bool)

(declare-fun res!1659465 () Bool)

(assert (=> b!4066128 (=> (not res!1659465) (not e!2523364))))

(assert (=> b!4066128 (= res!1659465 (not call!288288))))

(declare-fun d!1208649 () Bool)

(assert (=> d!1208649 e!2523360))

(declare-fun c!702086 () Bool)

(assert (=> d!1208649 (= c!702086 ((_ is EmptyExpr!11881) (regex!6976 (rule!10074 token!484))))))

(assert (=> d!1208649 (= lt!1454558 e!2523363)))

(declare-fun c!702085 () Bool)

(assert (=> d!1208649 (= c!702085 (isEmpty!25921 lt!1454242))))

(assert (=> d!1208649 (validRegex!5376 (regex!6976 (rule!10074 token!484)))))

(assert (=> d!1208649 (= (matchR!5834 (regex!6976 (rule!10074 token!484)) lt!1454242) lt!1454558)))

(declare-fun b!4066124 () Bool)

(declare-fun res!1659461 () Bool)

(assert (=> b!4066124 (=> res!1659461 e!2523359)))

(assert (=> b!4066124 (= res!1659461 (not ((_ is ElementMatch!11881) (regex!6976 (rule!10074 token!484)))))))

(assert (=> b!4066124 (= e!2523362 e!2523359)))

(declare-fun b!4066129 () Bool)

(assert (=> b!4066129 (= e!2523363 (nullable!4176 (regex!6976 (rule!10074 token!484))))))

(declare-fun b!4066130 () Bool)

(declare-fun res!1659463 () Bool)

(assert (=> b!4066130 (=> (not res!1659463) (not e!2523364))))

(assert (=> b!4066130 (= res!1659463 (isEmpty!25921 (tail!6311 lt!1454242)))))

(declare-fun b!4066131 () Bool)

(assert (=> b!4066131 (= e!2523359 e!2523365)))

(declare-fun res!1659464 () Bool)

(assert (=> b!4066131 (=> (not res!1659464) (not e!2523365))))

(assert (=> b!4066131 (= res!1659464 (not lt!1454558))))

(declare-fun b!4066132 () Bool)

(assert (=> b!4066132 (= e!2523361 (not (= (head!8579 lt!1454242) (c!701967 (regex!6976 (rule!10074 token!484))))))))

(declare-fun b!4066133 () Bool)

(assert (=> b!4066133 (= e!2523364 (= (head!8579 lt!1454242) (c!701967 (regex!6976 (rule!10074 token!484)))))))

(assert (= (and d!1208649 c!702085) b!4066129))

(assert (= (and d!1208649 (not c!702085)) b!4066122))

(assert (= (and d!1208649 c!702086) b!4066123))

(assert (= (and d!1208649 (not c!702086)) b!4066125))

(assert (= (and b!4066125 c!702087) b!4066126))

(assert (= (and b!4066125 (not c!702087)) b!4066124))

(assert (= (and b!4066124 (not res!1659461)) b!4066127))

(assert (= (and b!4066127 res!1659467) b!4066128))

(assert (= (and b!4066128 res!1659465) b!4066130))

(assert (= (and b!4066130 res!1659463) b!4066133))

(assert (= (and b!4066127 (not res!1659462)) b!4066131))

(assert (= (and b!4066131 res!1659464) b!4066120))

(assert (= (and b!4066120 (not res!1659466)) b!4066121))

(assert (= (and b!4066121 (not res!1659460)) b!4066132))

(assert (= (or b!4066123 b!4066120 b!4066128) bm!288283))

(assert (=> b!4066133 m!4673391))

(assert (=> b!4066121 m!4673395))

(assert (=> b!4066121 m!4673395))

(declare-fun m!4674021 () Bool)

(assert (=> b!4066121 m!4674021))

(assert (=> b!4066132 m!4673391))

(declare-fun m!4674023 () Bool)

(assert (=> b!4066129 m!4674023))

(assert (=> b!4066130 m!4673395))

(assert (=> b!4066130 m!4673395))

(assert (=> b!4066130 m!4674021))

(assert (=> b!4066122 m!4673391))

(assert (=> b!4066122 m!4673391))

(declare-fun m!4674025 () Bool)

(assert (=> b!4066122 m!4674025))

(assert (=> b!4066122 m!4673395))

(assert (=> b!4066122 m!4674025))

(assert (=> b!4066122 m!4673395))

(declare-fun m!4674027 () Bool)

(assert (=> b!4066122 m!4674027))

(declare-fun m!4674029 () Bool)

(assert (=> d!1208649 m!4674029))

(declare-fun m!4674031 () Bool)

(assert (=> d!1208649 m!4674031))

(assert (=> bm!288283 m!4674029))

(assert (=> b!4065426 d!1208649))

(declare-fun b!4066137 () Bool)

(declare-fun e!2523366 () Bool)

(assert (=> b!4066137 (= e!2523366 (>= (size!32470 lt!1454264) (size!32470 lt!1454242)))))

(declare-fun d!1208651 () Bool)

(assert (=> d!1208651 e!2523366))

(declare-fun res!1659469 () Bool)

(assert (=> d!1208651 (=> res!1659469 e!2523366)))

(declare-fun lt!1454559 () Bool)

(assert (=> d!1208651 (= res!1659469 (not lt!1454559))))

(declare-fun e!2523367 () Bool)

(assert (=> d!1208651 (= lt!1454559 e!2523367)))

(declare-fun res!1659471 () Bool)

(assert (=> d!1208651 (=> res!1659471 e!2523367)))

(assert (=> d!1208651 (= res!1659471 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208651 (= (isPrefix!4063 lt!1454242 lt!1454264) lt!1454559)))

(declare-fun b!4066134 () Bool)

(declare-fun e!2523368 () Bool)

(assert (=> b!4066134 (= e!2523367 e!2523368)))

(declare-fun res!1659470 () Bool)

(assert (=> b!4066134 (=> (not res!1659470) (not e!2523368))))

(assert (=> b!4066134 (= res!1659470 (not ((_ is Nil!43429) lt!1454264)))))

(declare-fun b!4066135 () Bool)

(declare-fun res!1659468 () Bool)

(assert (=> b!4066135 (=> (not res!1659468) (not e!2523368))))

(assert (=> b!4066135 (= res!1659468 (= (head!8579 lt!1454242) (head!8579 lt!1454264)))))

(declare-fun b!4066136 () Bool)

(assert (=> b!4066136 (= e!2523368 (isPrefix!4063 (tail!6311 lt!1454242) (tail!6311 lt!1454264)))))

(assert (= (and d!1208651 (not res!1659471)) b!4066134))

(assert (= (and b!4066134 res!1659470) b!4066135))

(assert (= (and b!4066135 res!1659468) b!4066136))

(assert (= (and d!1208651 (not res!1659469)) b!4066137))

(assert (=> b!4066137 m!4673149))

(assert (=> b!4066137 m!4672945))

(assert (=> b!4066135 m!4673391))

(declare-fun m!4674033 () Bool)

(assert (=> b!4066135 m!4674033))

(assert (=> b!4066136 m!4673395))

(assert (=> b!4066136 m!4673965))

(assert (=> b!4066136 m!4673395))

(assert (=> b!4066136 m!4673965))

(declare-fun m!4674035 () Bool)

(assert (=> b!4066136 m!4674035))

(assert (=> b!4065426 d!1208651))

(declare-fun d!1208653 () Bool)

(assert (=> d!1208653 (isPrefix!4063 lt!1454242 (++!11378 prefix!494 newSuffix!27))))

(declare-fun lt!1454562 () Unit!62945)

(declare-fun choose!24760 (List!43553 List!43553 List!43553) Unit!62945)

(assert (=> d!1208653 (= lt!1454562 (choose!24760 lt!1454242 prefix!494 newSuffix!27))))

(assert (=> d!1208653 (isPrefix!4063 lt!1454242 prefix!494)))

(assert (=> d!1208653 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!856 lt!1454242 prefix!494 newSuffix!27) lt!1454562)))

(declare-fun bs!592364 () Bool)

(assert (= bs!592364 d!1208653))

(assert (=> bs!592364 m!4673089))

(assert (=> bs!592364 m!4673089))

(declare-fun m!4674037 () Bool)

(assert (=> bs!592364 m!4674037))

(declare-fun m!4674039 () Bool)

(assert (=> bs!592364 m!4674039))

(assert (=> bs!592364 m!4673005))

(assert (=> b!4065426 d!1208653))

(declare-fun d!1208655 () Bool)

(assert (=> d!1208655 (isPrefix!4063 lt!1454242 (++!11378 prefix!494 suffix!1299))))

(declare-fun lt!1454563 () Unit!62945)

(assert (=> d!1208655 (= lt!1454563 (choose!24760 lt!1454242 prefix!494 suffix!1299))))

(assert (=> d!1208655 (isPrefix!4063 lt!1454242 prefix!494)))

(assert (=> d!1208655 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!856 lt!1454242 prefix!494 suffix!1299) lt!1454563)))

(declare-fun bs!592365 () Bool)

(assert (= bs!592365 d!1208655))

(assert (=> bs!592365 m!4673065))

(assert (=> bs!592365 m!4673065))

(declare-fun m!4674041 () Bool)

(assert (=> bs!592365 m!4674041))

(declare-fun m!4674043 () Bool)

(assert (=> bs!592365 m!4674043))

(assert (=> bs!592365 m!4673005))

(assert (=> b!4065426 d!1208655))

(declare-fun d!1208657 () Bool)

(declare-fun lt!1454564 () Int)

(assert (=> d!1208657 (>= lt!1454564 0)))

(declare-fun e!2523369 () Int)

(assert (=> d!1208657 (= lt!1454564 e!2523369)))

(declare-fun c!702088 () Bool)

(assert (=> d!1208657 (= c!702088 ((_ is Nil!43429) suffix!1299))))

(assert (=> d!1208657 (= (size!32470 suffix!1299) lt!1454564)))

(declare-fun b!4066138 () Bool)

(assert (=> b!4066138 (= e!2523369 0)))

(declare-fun b!4066139 () Bool)

(assert (=> b!4066139 (= e!2523369 (+ 1 (size!32470 (t!336808 suffix!1299))))))

(assert (= (and d!1208657 c!702088) b!4066138))

(assert (= (and d!1208657 (not c!702088)) b!4066139))

(declare-fun m!4674045 () Bool)

(assert (=> b!4066139 m!4674045))

(assert (=> b!4065446 d!1208657))

(declare-fun d!1208659 () Bool)

(declare-fun lt!1454565 () Int)

(assert (=> d!1208659 (>= lt!1454565 0)))

(declare-fun e!2523370 () Int)

(assert (=> d!1208659 (= lt!1454565 e!2523370)))

(declare-fun c!702089 () Bool)

(assert (=> d!1208659 (= c!702089 ((_ is Nil!43429) newSuffix!27))))

(assert (=> d!1208659 (= (size!32470 newSuffix!27) lt!1454565)))

(declare-fun b!4066140 () Bool)

(assert (=> b!4066140 (= e!2523370 0)))

(declare-fun b!4066141 () Bool)

(assert (=> b!4066141 (= e!2523370 (+ 1 (size!32470 (t!336808 newSuffix!27))))))

(assert (= (and d!1208659 c!702089) b!4066140))

(assert (= (and d!1208659 (not c!702089)) b!4066141))

(declare-fun m!4674047 () Bool)

(assert (=> b!4066141 m!4674047))

(assert (=> b!4065446 d!1208659))

(declare-fun b!4066143 () Bool)

(declare-fun e!2523372 () List!43553)

(assert (=> b!4066143 (= e!2523372 (Cons!43429 (h!48849 lt!1454242) (++!11378 (t!336808 lt!1454242) suffixResult!105)))))

(declare-fun b!4066145 () Bool)

(declare-fun lt!1454566 () List!43553)

(declare-fun e!2523371 () Bool)

(assert (=> b!4066145 (= e!2523371 (or (not (= suffixResult!105 Nil!43429)) (= lt!1454566 lt!1454242)))))

(declare-fun b!4066144 () Bool)

(declare-fun res!1659472 () Bool)

(assert (=> b!4066144 (=> (not res!1659472) (not e!2523371))))

(assert (=> b!4066144 (= res!1659472 (= (size!32470 lt!1454566) (+ (size!32470 lt!1454242) (size!32470 suffixResult!105))))))

(declare-fun d!1208661 () Bool)

(assert (=> d!1208661 e!2523371))

(declare-fun res!1659473 () Bool)

(assert (=> d!1208661 (=> (not res!1659473) (not e!2523371))))

(assert (=> d!1208661 (= res!1659473 (= (content!6628 lt!1454566) ((_ map or) (content!6628 lt!1454242) (content!6628 suffixResult!105))))))

(assert (=> d!1208661 (= lt!1454566 e!2523372)))

(declare-fun c!702090 () Bool)

(assert (=> d!1208661 (= c!702090 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208661 (= (++!11378 lt!1454242 suffixResult!105) lt!1454566)))

(declare-fun b!4066142 () Bool)

(assert (=> b!4066142 (= e!2523372 suffixResult!105)))

(assert (= (and d!1208661 c!702090) b!4066142))

(assert (= (and d!1208661 (not c!702090)) b!4066143))

(assert (= (and d!1208661 res!1659473) b!4066144))

(assert (= (and b!4066144 res!1659472) b!4066145))

(declare-fun m!4674049 () Bool)

(assert (=> b!4066143 m!4674049))

(declare-fun m!4674051 () Bool)

(assert (=> b!4066144 m!4674051))

(assert (=> b!4066144 m!4672945))

(declare-fun m!4674053 () Bool)

(assert (=> b!4066144 m!4674053))

(declare-fun m!4674055 () Bool)

(assert (=> d!1208661 m!4674055))

(assert (=> d!1208661 m!4673455))

(declare-fun m!4674057 () Bool)

(assert (=> d!1208661 m!4674057))

(assert (=> b!4065440 d!1208661))

(declare-fun d!1208663 () Bool)

(declare-fun e!2523373 () Bool)

(assert (=> d!1208663 e!2523373))

(declare-fun res!1659474 () Bool)

(assert (=> d!1208663 (=> (not res!1659474) (not e!2523373))))

(assert (=> d!1208663 (= res!1659474 (semiInverseModEq!2983 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))))))

(declare-fun Unit!62961 () Unit!62945)

(assert (=> d!1208663 (= (lemmaInv!1185 (transformation!6976 (rule!10074 token!484))) Unit!62961)))

(declare-fun b!4066146 () Bool)

(assert (=> b!4066146 (= e!2523373 (equivClasses!2882 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))))))

(assert (= (and d!1208663 res!1659474) b!4066146))

(declare-fun m!4674059 () Bool)

(assert (=> d!1208663 m!4674059))

(declare-fun m!4674061 () Bool)

(assert (=> b!4066146 m!4674061))

(assert (=> b!4065440 d!1208663))

(declare-fun d!1208665 () Bool)

(declare-fun res!1659475 () Bool)

(declare-fun e!2523374 () Bool)

(assert (=> d!1208665 (=> (not res!1659475) (not e!2523374))))

(assert (=> d!1208665 (= res!1659475 (validRegex!5376 (regex!6976 (rule!10074 token!484))))))

(assert (=> d!1208665 (= (ruleValid!2906 thiss!21717 (rule!10074 token!484)) e!2523374)))

(declare-fun b!4066147 () Bool)

(declare-fun res!1659476 () Bool)

(assert (=> b!4066147 (=> (not res!1659476) (not e!2523374))))

(assert (=> b!4066147 (= res!1659476 (not (nullable!4176 (regex!6976 (rule!10074 token!484)))))))

(declare-fun b!4066148 () Bool)

(assert (=> b!4066148 (= e!2523374 (not (= (tag!7836 (rule!10074 token!484)) (String!49749 ""))))))

(assert (= (and d!1208665 res!1659475) b!4066147))

(assert (= (and b!4066147 res!1659476) b!4066148))

(assert (=> d!1208665 m!4674031))

(assert (=> b!4066147 m!4674023))

(assert (=> b!4065440 d!1208665))

(declare-fun d!1208667 () Bool)

(assert (=> d!1208667 (ruleValid!2906 thiss!21717 (rule!10074 token!484))))

(declare-fun lt!1454567 () Unit!62945)

(assert (=> d!1208667 (= lt!1454567 (choose!24756 thiss!21717 (rule!10074 token!484) rules!2999))))

(assert (=> d!1208667 (contains!8642 rules!2999 (rule!10074 token!484))))

(assert (=> d!1208667 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1976 thiss!21717 (rule!10074 token!484) rules!2999) lt!1454567)))

(declare-fun bs!592366 () Bool)

(assert (= bs!592366 d!1208667))

(assert (=> bs!592366 m!4673049))

(declare-fun m!4674063 () Bool)

(assert (=> bs!592366 m!4674063))

(assert (=> bs!592366 m!4674009))

(assert (=> b!4065440 d!1208667))

(declare-fun b!4066152 () Bool)

(declare-fun e!2523375 () Bool)

(assert (=> b!4066152 (= e!2523375 (>= (size!32470 lt!1454264) (size!32470 lt!1454287)))))

(declare-fun d!1208669 () Bool)

(assert (=> d!1208669 e!2523375))

(declare-fun res!1659478 () Bool)

(assert (=> d!1208669 (=> res!1659478 e!2523375)))

(declare-fun lt!1454568 () Bool)

(assert (=> d!1208669 (= res!1659478 (not lt!1454568))))

(declare-fun e!2523376 () Bool)

(assert (=> d!1208669 (= lt!1454568 e!2523376)))

(declare-fun res!1659480 () Bool)

(assert (=> d!1208669 (=> res!1659480 e!2523376)))

(assert (=> d!1208669 (= res!1659480 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208669 (= (isPrefix!4063 lt!1454287 lt!1454264) lt!1454568)))

(declare-fun b!4066149 () Bool)

(declare-fun e!2523377 () Bool)

(assert (=> b!4066149 (= e!2523376 e!2523377)))

(declare-fun res!1659479 () Bool)

(assert (=> b!4066149 (=> (not res!1659479) (not e!2523377))))

(assert (=> b!4066149 (= res!1659479 (not ((_ is Nil!43429) lt!1454264)))))

(declare-fun b!4066150 () Bool)

(declare-fun res!1659477 () Bool)

(assert (=> b!4066150 (=> (not res!1659477) (not e!2523377))))

(assert (=> b!4066150 (= res!1659477 (= (head!8579 lt!1454287) (head!8579 lt!1454264)))))

(declare-fun b!4066151 () Bool)

(assert (=> b!4066151 (= e!2523377 (isPrefix!4063 (tail!6311 lt!1454287) (tail!6311 lt!1454264)))))

(assert (= (and d!1208669 (not res!1659480)) b!4066149))

(assert (= (and b!4066149 res!1659479) b!4066150))

(assert (= (and b!4066150 res!1659477) b!4066151))

(assert (= (and d!1208669 (not res!1659478)) b!4066152))

(assert (=> b!4066152 m!4673149))

(assert (=> b!4066152 m!4672921))

(assert (=> b!4066150 m!4673661))

(assert (=> b!4066150 m!4674033))

(assert (=> b!4066151 m!4673665))

(assert (=> b!4066151 m!4673965))

(assert (=> b!4066151 m!4673665))

(assert (=> b!4066151 m!4673965))

(declare-fun m!4674065 () Bool)

(assert (=> b!4066151 m!4674065))

(assert (=> b!4065418 d!1208669))

(declare-fun b!4066154 () Bool)

(declare-fun e!2523379 () List!43553)

(assert (=> b!4066154 (= e!2523379 (Cons!43429 (h!48849 newSuffix!27) (++!11378 (t!336808 newSuffix!27) lt!1454298)))))

(declare-fun e!2523378 () Bool)

(declare-fun lt!1454569 () List!43553)

(declare-fun b!4066156 () Bool)

(assert (=> b!4066156 (= e!2523378 (or (not (= lt!1454298 Nil!43429)) (= lt!1454569 newSuffix!27)))))

(declare-fun b!4066155 () Bool)

(declare-fun res!1659481 () Bool)

(assert (=> b!4066155 (=> (not res!1659481) (not e!2523378))))

(assert (=> b!4066155 (= res!1659481 (= (size!32470 lt!1454569) (+ (size!32470 newSuffix!27) (size!32470 lt!1454298))))))

(declare-fun d!1208671 () Bool)

(assert (=> d!1208671 e!2523378))

(declare-fun res!1659482 () Bool)

(assert (=> d!1208671 (=> (not res!1659482) (not e!2523378))))

(assert (=> d!1208671 (= res!1659482 (= (content!6628 lt!1454569) ((_ map or) (content!6628 newSuffix!27) (content!6628 lt!1454298))))))

(assert (=> d!1208671 (= lt!1454569 e!2523379)))

(declare-fun c!702091 () Bool)

(assert (=> d!1208671 (= c!702091 ((_ is Nil!43429) newSuffix!27))))

(assert (=> d!1208671 (= (++!11378 newSuffix!27 lt!1454298) lt!1454569)))

(declare-fun b!4066153 () Bool)

(assert (=> b!4066153 (= e!2523379 lt!1454298)))

(assert (= (and d!1208671 c!702091) b!4066153))

(assert (= (and d!1208671 (not c!702091)) b!4066154))

(assert (= (and d!1208671 res!1659482) b!4066155))

(assert (= (and b!4066155 res!1659481) b!4066156))

(declare-fun m!4674067 () Bool)

(assert (=> b!4066154 m!4674067))

(declare-fun m!4674069 () Bool)

(assert (=> b!4066155 m!4674069))

(assert (=> b!4066155 m!4673029))

(assert (=> b!4066155 m!4673151))

(declare-fun m!4674071 () Bool)

(assert (=> d!1208671 m!4674071))

(assert (=> d!1208671 m!4673975))

(assert (=> d!1208671 m!4673157))

(assert (=> b!4065417 d!1208671))

(declare-fun d!1208673 () Bool)

(declare-fun lt!1454570 () List!43553)

(assert (=> d!1208673 (= (++!11378 newSuffix!27 lt!1454570) suffix!1299)))

(declare-fun e!2523380 () List!43553)

(assert (=> d!1208673 (= lt!1454570 e!2523380)))

(declare-fun c!702092 () Bool)

(assert (=> d!1208673 (= c!702092 ((_ is Cons!43429) newSuffix!27))))

(assert (=> d!1208673 (>= (size!32470 suffix!1299) (size!32470 newSuffix!27))))

(assert (=> d!1208673 (= (getSuffix!2480 suffix!1299 newSuffix!27) lt!1454570)))

(declare-fun b!4066157 () Bool)

(assert (=> b!4066157 (= e!2523380 (getSuffix!2480 (tail!6311 suffix!1299) (t!336808 newSuffix!27)))))

(declare-fun b!4066158 () Bool)

(assert (=> b!4066158 (= e!2523380 suffix!1299)))

(assert (= (and d!1208673 c!702092) b!4066157))

(assert (= (and d!1208673 (not c!702092)) b!4066158))

(declare-fun m!4674073 () Bool)

(assert (=> d!1208673 m!4674073))

(assert (=> d!1208673 m!4673027))

(assert (=> d!1208673 m!4673029))

(declare-fun m!4674075 () Bool)

(assert (=> b!4066157 m!4674075))

(assert (=> b!4066157 m!4674075))

(declare-fun m!4674077 () Bool)

(assert (=> b!4066157 m!4674077))

(assert (=> b!4065417 d!1208673))

(declare-fun b!4066162 () Bool)

(declare-fun e!2523381 () Bool)

(assert (=> b!4066162 (= e!2523381 (>= (size!32470 suffix!1299) (size!32470 newSuffix!27)))))

(declare-fun d!1208675 () Bool)

(assert (=> d!1208675 e!2523381))

(declare-fun res!1659484 () Bool)

(assert (=> d!1208675 (=> res!1659484 e!2523381)))

(declare-fun lt!1454571 () Bool)

(assert (=> d!1208675 (= res!1659484 (not lt!1454571))))

(declare-fun e!2523382 () Bool)

(assert (=> d!1208675 (= lt!1454571 e!2523382)))

(declare-fun res!1659486 () Bool)

(assert (=> d!1208675 (=> res!1659486 e!2523382)))

(assert (=> d!1208675 (= res!1659486 ((_ is Nil!43429) newSuffix!27))))

(assert (=> d!1208675 (= (isPrefix!4063 newSuffix!27 suffix!1299) lt!1454571)))

(declare-fun b!4066159 () Bool)

(declare-fun e!2523383 () Bool)

(assert (=> b!4066159 (= e!2523382 e!2523383)))

(declare-fun res!1659485 () Bool)

(assert (=> b!4066159 (=> (not res!1659485) (not e!2523383))))

(assert (=> b!4066159 (= res!1659485 (not ((_ is Nil!43429) suffix!1299)))))

(declare-fun b!4066160 () Bool)

(declare-fun res!1659483 () Bool)

(assert (=> b!4066160 (=> (not res!1659483) (not e!2523383))))

(assert (=> b!4066160 (= res!1659483 (= (head!8579 newSuffix!27) (head!8579 suffix!1299)))))

(declare-fun b!4066161 () Bool)

(assert (=> b!4066161 (= e!2523383 (isPrefix!4063 (tail!6311 newSuffix!27) (tail!6311 suffix!1299)))))

(assert (= (and d!1208675 (not res!1659486)) b!4066159))

(assert (= (and b!4066159 res!1659485) b!4066160))

(assert (= (and b!4066160 res!1659483) b!4066161))

(assert (= (and d!1208675 (not res!1659484)) b!4066162))

(assert (=> b!4066162 m!4673027))

(assert (=> b!4066162 m!4673029))

(declare-fun m!4674079 () Bool)

(assert (=> b!4066160 m!4674079))

(declare-fun m!4674081 () Bool)

(assert (=> b!4066160 m!4674081))

(declare-fun m!4674083 () Bool)

(assert (=> b!4066161 m!4674083))

(assert (=> b!4066161 m!4674075))

(assert (=> b!4066161 m!4674083))

(assert (=> b!4066161 m!4674075))

(declare-fun m!4674085 () Bool)

(assert (=> b!4066161 m!4674085))

(assert (=> b!4065438 d!1208675))

(declare-fun d!1208677 () Bool)

(assert (=> d!1208677 (not (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454287))))

(declare-fun lt!1454572 () Unit!62945)

(assert (=> d!1208677 (= lt!1454572 (choose!24752 thiss!21717 rules!2999 (rule!10074 token!484) lt!1454242 lt!1454301 lt!1454287 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> d!1208677 (isPrefix!4063 lt!1454242 lt!1454301)))

(assert (=> d!1208677 (= (lemmaMaxPrefixOutputsMaxPrefix!502 thiss!21717 rules!2999 (rule!10074 token!484) lt!1454242 lt!1454301 lt!1454287 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454572)))

(declare-fun bs!592367 () Bool)

(assert (= bs!592367 d!1208677))

(assert (=> bs!592367 m!4672977))

(declare-fun m!4674087 () Bool)

(assert (=> bs!592367 m!4674087))

(assert (=> bs!592367 m!4673081))

(assert (=> b!4065420 d!1208677))

(declare-fun b!4066163 () Bool)

(declare-fun e!2523390 () Bool)

(declare-fun e!2523386 () Bool)

(assert (=> b!4066163 (= e!2523390 e!2523386)))

(declare-fun res!1659493 () Bool)

(assert (=> b!4066163 (=> res!1659493 e!2523386)))

(declare-fun call!288289 () Bool)

(assert (=> b!4066163 (= res!1659493 call!288289)))

(declare-fun b!4066164 () Bool)

(declare-fun res!1659487 () Bool)

(assert (=> b!4066164 (=> res!1659487 e!2523386)))

(assert (=> b!4066164 (= res!1659487 (not (isEmpty!25921 (tail!6311 lt!1454287))))))

(declare-fun b!4066165 () Bool)

(declare-fun e!2523388 () Bool)

(assert (=> b!4066165 (= e!2523388 (matchR!5834 (derivativeStep!3581 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (head!8579 lt!1454287)) (tail!6311 lt!1454287)))))

(declare-fun b!4066166 () Bool)

(declare-fun e!2523385 () Bool)

(declare-fun lt!1454573 () Bool)

(assert (=> b!4066166 (= e!2523385 (= lt!1454573 call!288289))))

(declare-fun b!4066168 () Bool)

(declare-fun e!2523387 () Bool)

(assert (=> b!4066168 (= e!2523385 e!2523387)))

(declare-fun c!702095 () Bool)

(assert (=> b!4066168 (= c!702095 ((_ is EmptyLang!11881) (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(declare-fun b!4066169 () Bool)

(assert (=> b!4066169 (= e!2523387 (not lt!1454573))))

(declare-fun b!4066170 () Bool)

(declare-fun res!1659489 () Bool)

(declare-fun e!2523384 () Bool)

(assert (=> b!4066170 (=> res!1659489 e!2523384)))

(declare-fun e!2523389 () Bool)

(assert (=> b!4066170 (= res!1659489 e!2523389)))

(declare-fun res!1659494 () Bool)

(assert (=> b!4066170 (=> (not res!1659494) (not e!2523389))))

(assert (=> b!4066170 (= res!1659494 lt!1454573)))

(declare-fun bm!288284 () Bool)

(assert (=> bm!288284 (= call!288289 (isEmpty!25921 lt!1454287))))

(declare-fun b!4066171 () Bool)

(declare-fun res!1659492 () Bool)

(assert (=> b!4066171 (=> (not res!1659492) (not e!2523389))))

(assert (=> b!4066171 (= res!1659492 (not call!288289))))

(declare-fun d!1208679 () Bool)

(assert (=> d!1208679 e!2523385))

(declare-fun c!702094 () Bool)

(assert (=> d!1208679 (= c!702094 ((_ is EmptyExpr!11881) (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(assert (=> d!1208679 (= lt!1454573 e!2523388)))

(declare-fun c!702093 () Bool)

(assert (=> d!1208679 (= c!702093 (isEmpty!25921 lt!1454287))))

(assert (=> d!1208679 (validRegex!5376 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> d!1208679 (= (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454287) lt!1454573)))

(declare-fun b!4066167 () Bool)

(declare-fun res!1659488 () Bool)

(assert (=> b!4066167 (=> res!1659488 e!2523384)))

(assert (=> b!4066167 (= res!1659488 (not ((_ is ElementMatch!11881) (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(assert (=> b!4066167 (= e!2523387 e!2523384)))

(declare-fun b!4066172 () Bool)

(assert (=> b!4066172 (= e!2523388 (nullable!4176 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(declare-fun b!4066173 () Bool)

(declare-fun res!1659490 () Bool)

(assert (=> b!4066173 (=> (not res!1659490) (not e!2523389))))

(assert (=> b!4066173 (= res!1659490 (isEmpty!25921 (tail!6311 lt!1454287)))))

(declare-fun b!4066174 () Bool)

(assert (=> b!4066174 (= e!2523384 e!2523390)))

(declare-fun res!1659491 () Bool)

(assert (=> b!4066174 (=> (not res!1659491) (not e!2523390))))

(assert (=> b!4066174 (= res!1659491 (not lt!1454573))))

(declare-fun b!4066175 () Bool)

(assert (=> b!4066175 (= e!2523386 (not (= (head!8579 lt!1454287) (c!701967 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))))

(declare-fun b!4066176 () Bool)

(assert (=> b!4066176 (= e!2523389 (= (head!8579 lt!1454287) (c!701967 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(assert (= (and d!1208679 c!702093) b!4066172))

(assert (= (and d!1208679 (not c!702093)) b!4066165))

(assert (= (and d!1208679 c!702094) b!4066166))

(assert (= (and d!1208679 (not c!702094)) b!4066168))

(assert (= (and b!4066168 c!702095) b!4066169))

(assert (= (and b!4066168 (not c!702095)) b!4066167))

(assert (= (and b!4066167 (not res!1659488)) b!4066170))

(assert (= (and b!4066170 res!1659494) b!4066171))

(assert (= (and b!4066171 res!1659492) b!4066173))

(assert (= (and b!4066173 res!1659490) b!4066176))

(assert (= (and b!4066170 (not res!1659489)) b!4066174))

(assert (= (and b!4066174 res!1659491) b!4066163))

(assert (= (and b!4066163 (not res!1659493)) b!4066164))

(assert (= (and b!4066164 (not res!1659487)) b!4066175))

(assert (= (or b!4066166 b!4066163 b!4066171) bm!288284))

(assert (=> b!4066176 m!4673661))

(assert (=> b!4066164 m!4673665))

(assert (=> b!4066164 m!4673665))

(declare-fun m!4674089 () Bool)

(assert (=> b!4066164 m!4674089))

(assert (=> b!4066175 m!4673661))

(assert (=> b!4066172 m!4673791))

(assert (=> b!4066173 m!4673665))

(assert (=> b!4066173 m!4673665))

(assert (=> b!4066173 m!4674089))

(assert (=> b!4066165 m!4673661))

(assert (=> b!4066165 m!4673661))

(declare-fun m!4674091 () Bool)

(assert (=> b!4066165 m!4674091))

(assert (=> b!4066165 m!4673665))

(assert (=> b!4066165 m!4674091))

(assert (=> b!4066165 m!4673665))

(declare-fun m!4674093 () Bool)

(assert (=> b!4066165 m!4674093))

(declare-fun m!4674095 () Bool)

(assert (=> d!1208679 m!4674095))

(assert (=> d!1208679 m!4673789))

(assert (=> bm!288284 m!4674095))

(assert (=> b!4065420 d!1208679))

(declare-fun d!1208681 () Bool)

(assert (=> d!1208681 (= (isEmpty!25917 rules!2999) ((_ is Nil!43431) rules!2999))))

(assert (=> b!4065441 d!1208681))

(declare-fun b!4066180 () Bool)

(declare-fun e!2523391 () Bool)

(assert (=> b!4066180 (= e!2523391 (>= (size!32470 lt!1454301) (size!32470 lt!1454287)))))

(declare-fun d!1208683 () Bool)

(assert (=> d!1208683 e!2523391))

(declare-fun res!1659496 () Bool)

(assert (=> d!1208683 (=> res!1659496 e!2523391)))

(declare-fun lt!1454574 () Bool)

(assert (=> d!1208683 (= res!1659496 (not lt!1454574))))

(declare-fun e!2523392 () Bool)

(assert (=> d!1208683 (= lt!1454574 e!2523392)))

(declare-fun res!1659498 () Bool)

(assert (=> d!1208683 (=> res!1659498 e!2523392)))

(assert (=> d!1208683 (= res!1659498 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208683 (= (isPrefix!4063 lt!1454287 lt!1454301) lt!1454574)))

(declare-fun b!4066177 () Bool)

(declare-fun e!2523393 () Bool)

(assert (=> b!4066177 (= e!2523392 e!2523393)))

(declare-fun res!1659497 () Bool)

(assert (=> b!4066177 (=> (not res!1659497) (not e!2523393))))

(assert (=> b!4066177 (= res!1659497 (not ((_ is Nil!43429) lt!1454301)))))

(declare-fun b!4066178 () Bool)

(declare-fun res!1659495 () Bool)

(assert (=> b!4066178 (=> (not res!1659495) (not e!2523393))))

(assert (=> b!4066178 (= res!1659495 (= (head!8579 lt!1454287) (head!8579 lt!1454301)))))

(declare-fun b!4066179 () Bool)

(assert (=> b!4066179 (= e!2523393 (isPrefix!4063 (tail!6311 lt!1454287) (tail!6311 lt!1454301)))))

(assert (= (and d!1208683 (not res!1659498)) b!4066177))

(assert (= (and b!4066177 res!1659497) b!4066178))

(assert (= (and b!4066178 res!1659495) b!4066179))

(assert (= (and d!1208683 (not res!1659496)) b!4066180))

(declare-fun m!4674097 () Bool)

(assert (=> b!4066180 m!4674097))

(assert (=> b!4066180 m!4672921))

(assert (=> b!4066178 m!4673661))

(declare-fun m!4674099 () Bool)

(assert (=> b!4066178 m!4674099))

(assert (=> b!4066179 m!4673665))

(declare-fun m!4674101 () Bool)

(assert (=> b!4066179 m!4674101))

(assert (=> b!4066179 m!4673665))

(assert (=> b!4066179 m!4674101))

(declare-fun m!4674103 () Bool)

(assert (=> b!4066179 m!4674103))

(assert (=> b!4065419 d!1208683))

(declare-fun b!4066184 () Bool)

(declare-fun e!2523394 () Bool)

(assert (=> b!4066184 (= e!2523394 (>= (size!32470 lt!1454285) (size!32470 lt!1454287)))))

(declare-fun d!1208685 () Bool)

(assert (=> d!1208685 e!2523394))

(declare-fun res!1659500 () Bool)

(assert (=> d!1208685 (=> res!1659500 e!2523394)))

(declare-fun lt!1454575 () Bool)

(assert (=> d!1208685 (= res!1659500 (not lt!1454575))))

(declare-fun e!2523395 () Bool)

(assert (=> d!1208685 (= lt!1454575 e!2523395)))

(declare-fun res!1659502 () Bool)

(assert (=> d!1208685 (=> res!1659502 e!2523395)))

(assert (=> d!1208685 (= res!1659502 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208685 (= (isPrefix!4063 lt!1454287 lt!1454285) lt!1454575)))

(declare-fun b!4066181 () Bool)

(declare-fun e!2523396 () Bool)

(assert (=> b!4066181 (= e!2523395 e!2523396)))

(declare-fun res!1659501 () Bool)

(assert (=> b!4066181 (=> (not res!1659501) (not e!2523396))))

(assert (=> b!4066181 (= res!1659501 (not ((_ is Nil!43429) lt!1454285)))))

(declare-fun b!4066182 () Bool)

(declare-fun res!1659499 () Bool)

(assert (=> b!4066182 (=> (not res!1659499) (not e!2523396))))

(assert (=> b!4066182 (= res!1659499 (= (head!8579 lt!1454287) (head!8579 lt!1454285)))))

(declare-fun b!4066183 () Bool)

(assert (=> b!4066183 (= e!2523396 (isPrefix!4063 (tail!6311 lt!1454287) (tail!6311 lt!1454285)))))

(assert (= (and d!1208685 (not res!1659502)) b!4066181))

(assert (= (and b!4066181 res!1659501) b!4066182))

(assert (= (and b!4066182 res!1659499) b!4066183))

(assert (= (and d!1208685 (not res!1659500)) b!4066184))

(declare-fun m!4674105 () Bool)

(assert (=> b!4066184 m!4674105))

(assert (=> b!4066184 m!4672921))

(assert (=> b!4066182 m!4673661))

(declare-fun m!4674107 () Bool)

(assert (=> b!4066182 m!4674107))

(assert (=> b!4066183 m!4673665))

(declare-fun m!4674109 () Bool)

(assert (=> b!4066183 m!4674109))

(assert (=> b!4066183 m!4673665))

(assert (=> b!4066183 m!4674109))

(declare-fun m!4674111 () Bool)

(assert (=> b!4066183 m!4674111))

(assert (=> b!4065419 d!1208685))

(declare-fun d!1208687 () Bool)

(assert (=> d!1208687 (isPrefix!4063 lt!1454287 (++!11378 lt!1454264 lt!1454298))))

(declare-fun lt!1454576 () Unit!62945)

(assert (=> d!1208687 (= lt!1454576 (choose!24760 lt!1454287 lt!1454264 lt!1454298))))

(assert (=> d!1208687 (isPrefix!4063 lt!1454287 lt!1454264)))

(assert (=> d!1208687 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!856 lt!1454287 lt!1454264 lt!1454298) lt!1454576)))

(declare-fun bs!592368 () Bool)

(assert (= bs!592368 d!1208687))

(assert (=> bs!592368 m!4673011))

(assert (=> bs!592368 m!4673011))

(declare-fun m!4674113 () Bool)

(assert (=> bs!592368 m!4674113))

(declare-fun m!4674115 () Bool)

(assert (=> bs!592368 m!4674115))

(assert (=> bs!592368 m!4673019))

(assert (=> b!4065419 d!1208687))

(declare-fun d!1208689 () Bool)

(assert (=> d!1208689 (isPrefix!4063 lt!1454242 (++!11378 lt!1454242 suffixResult!105))))

(declare-fun lt!1454577 () Unit!62945)

(assert (=> d!1208689 (= lt!1454577 (choose!24750 lt!1454242 suffixResult!105))))

(assert (=> d!1208689 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454242 suffixResult!105) lt!1454577)))

(declare-fun bs!592369 () Bool)

(assert (= bs!592369 d!1208689))

(assert (=> bs!592369 m!4673045))

(assert (=> bs!592369 m!4673045))

(declare-fun m!4674117 () Bool)

(assert (=> bs!592369 m!4674117))

(declare-fun m!4674119 () Bool)

(assert (=> bs!592369 m!4674119))

(assert (=> b!4065413 d!1208689))

(declare-fun b!4066188 () Bool)

(declare-fun e!2523397 () Bool)

(assert (=> b!4066188 (= e!2523397 (>= (size!32470 lt!1454301) (size!32470 lt!1454242)))))

(declare-fun d!1208691 () Bool)

(assert (=> d!1208691 e!2523397))

(declare-fun res!1659504 () Bool)

(assert (=> d!1208691 (=> res!1659504 e!2523397)))

(declare-fun lt!1454578 () Bool)

(assert (=> d!1208691 (= res!1659504 (not lt!1454578))))

(declare-fun e!2523398 () Bool)

(assert (=> d!1208691 (= lt!1454578 e!2523398)))

(declare-fun res!1659506 () Bool)

(assert (=> d!1208691 (=> res!1659506 e!2523398)))

(assert (=> d!1208691 (= res!1659506 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208691 (= (isPrefix!4063 lt!1454242 lt!1454301) lt!1454578)))

(declare-fun b!4066185 () Bool)

(declare-fun e!2523399 () Bool)

(assert (=> b!4066185 (= e!2523398 e!2523399)))

(declare-fun res!1659505 () Bool)

(assert (=> b!4066185 (=> (not res!1659505) (not e!2523399))))

(assert (=> b!4066185 (= res!1659505 (not ((_ is Nil!43429) lt!1454301)))))

(declare-fun b!4066186 () Bool)

(declare-fun res!1659503 () Bool)

(assert (=> b!4066186 (=> (not res!1659503) (not e!2523399))))

(assert (=> b!4066186 (= res!1659503 (= (head!8579 lt!1454242) (head!8579 lt!1454301)))))

(declare-fun b!4066187 () Bool)

(assert (=> b!4066187 (= e!2523399 (isPrefix!4063 (tail!6311 lt!1454242) (tail!6311 lt!1454301)))))

(assert (= (and d!1208691 (not res!1659506)) b!4066185))

(assert (= (and b!4066185 res!1659505) b!4066186))

(assert (= (and b!4066186 res!1659503) b!4066187))

(assert (= (and d!1208691 (not res!1659504)) b!4066188))

(assert (=> b!4066188 m!4674097))

(assert (=> b!4066188 m!4672945))

(assert (=> b!4066186 m!4673391))

(assert (=> b!4066186 m!4674099))

(assert (=> b!4066187 m!4673395))

(assert (=> b!4066187 m!4674101))

(assert (=> b!4066187 m!4673395))

(assert (=> b!4066187 m!4674101))

(declare-fun m!4674121 () Bool)

(assert (=> b!4066187 m!4674121))

(assert (=> b!4065413 d!1208691))

(declare-fun b!4066192 () Bool)

(declare-fun e!2523400 () Bool)

(assert (=> b!4066192 (= e!2523400 (>= (size!32470 lt!1454301) (size!32470 prefix!494)))))

(declare-fun d!1208693 () Bool)

(assert (=> d!1208693 e!2523400))

(declare-fun res!1659508 () Bool)

(assert (=> d!1208693 (=> res!1659508 e!2523400)))

(declare-fun lt!1454579 () Bool)

(assert (=> d!1208693 (= res!1659508 (not lt!1454579))))

(declare-fun e!2523401 () Bool)

(assert (=> d!1208693 (= lt!1454579 e!2523401)))

(declare-fun res!1659510 () Bool)

(assert (=> d!1208693 (=> res!1659510 e!2523401)))

(assert (=> d!1208693 (= res!1659510 ((_ is Nil!43429) prefix!494))))

(assert (=> d!1208693 (= (isPrefix!4063 prefix!494 lt!1454301) lt!1454579)))

(declare-fun b!4066189 () Bool)

(declare-fun e!2523402 () Bool)

(assert (=> b!4066189 (= e!2523401 e!2523402)))

(declare-fun res!1659509 () Bool)

(assert (=> b!4066189 (=> (not res!1659509) (not e!2523402))))

(assert (=> b!4066189 (= res!1659509 (not ((_ is Nil!43429) lt!1454301)))))

(declare-fun b!4066190 () Bool)

(declare-fun res!1659507 () Bool)

(assert (=> b!4066190 (=> (not res!1659507) (not e!2523402))))

(assert (=> b!4066190 (= res!1659507 (= (head!8579 prefix!494) (head!8579 lt!1454301)))))

(declare-fun b!4066191 () Bool)

(assert (=> b!4066191 (= e!2523402 (isPrefix!4063 (tail!6311 prefix!494) (tail!6311 lt!1454301)))))

(assert (= (and d!1208693 (not res!1659510)) b!4066189))

(assert (= (and b!4066189 res!1659509) b!4066190))

(assert (= (and b!4066190 res!1659507) b!4066191))

(assert (= (and d!1208693 (not res!1659508)) b!4066192))

(assert (=> b!4066192 m!4674097))

(assert (=> b!4066192 m!4672947))

(assert (=> b!4066190 m!4673477))

(assert (=> b!4066190 m!4674099))

(assert (=> b!4066191 m!4673473))

(assert (=> b!4066191 m!4674101))

(assert (=> b!4066191 m!4673473))

(assert (=> b!4066191 m!4674101))

(declare-fun m!4674123 () Bool)

(assert (=> b!4066191 m!4674123))

(assert (=> b!4065413 d!1208693))

(declare-fun d!1208695 () Bool)

(assert (=> d!1208695 (isPrefix!4063 prefix!494 (++!11378 prefix!494 suffix!1299))))

(declare-fun lt!1454580 () Unit!62945)

(assert (=> d!1208695 (= lt!1454580 (choose!24750 prefix!494 suffix!1299))))

(assert (=> d!1208695 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 prefix!494 suffix!1299) lt!1454580)))

(declare-fun bs!592370 () Bool)

(assert (= bs!592370 d!1208695))

(assert (=> bs!592370 m!4673065))

(assert (=> bs!592370 m!4673065))

(declare-fun m!4674125 () Bool)

(assert (=> bs!592370 m!4674125))

(declare-fun m!4674127 () Bool)

(assert (=> bs!592370 m!4674127))

(assert (=> b!4065413 d!1208695))

(declare-fun b!4066196 () Bool)

(declare-fun e!2523403 () Bool)

(assert (=> b!4066196 (= e!2523403 (>= (size!32470 lt!1454284) (size!32470 lt!1454242)))))

(declare-fun d!1208697 () Bool)

(assert (=> d!1208697 e!2523403))

(declare-fun res!1659512 () Bool)

(assert (=> d!1208697 (=> res!1659512 e!2523403)))

(declare-fun lt!1454581 () Bool)

(assert (=> d!1208697 (= res!1659512 (not lt!1454581))))

(declare-fun e!2523404 () Bool)

(assert (=> d!1208697 (= lt!1454581 e!2523404)))

(declare-fun res!1659514 () Bool)

(assert (=> d!1208697 (=> res!1659514 e!2523404)))

(assert (=> d!1208697 (= res!1659514 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208697 (= (isPrefix!4063 lt!1454242 lt!1454284) lt!1454581)))

(declare-fun b!4066193 () Bool)

(declare-fun e!2523405 () Bool)

(assert (=> b!4066193 (= e!2523404 e!2523405)))

(declare-fun res!1659513 () Bool)

(assert (=> b!4066193 (=> (not res!1659513) (not e!2523405))))

(assert (=> b!4066193 (= res!1659513 (not ((_ is Nil!43429) lt!1454284)))))

(declare-fun b!4066194 () Bool)

(declare-fun res!1659511 () Bool)

(assert (=> b!4066194 (=> (not res!1659511) (not e!2523405))))

(assert (=> b!4066194 (= res!1659511 (= (head!8579 lt!1454242) (head!8579 lt!1454284)))))

(declare-fun b!4066195 () Bool)

(assert (=> b!4066195 (= e!2523405 (isPrefix!4063 (tail!6311 lt!1454242) (tail!6311 lt!1454284)))))

(assert (= (and d!1208697 (not res!1659514)) b!4066193))

(assert (= (and b!4066193 res!1659513) b!4066194))

(assert (= (and b!4066194 res!1659511) b!4066195))

(assert (= (and d!1208697 (not res!1659512)) b!4066196))

(declare-fun m!4674129 () Bool)

(assert (=> b!4066196 m!4674129))

(assert (=> b!4066196 m!4672945))

(assert (=> b!4066194 m!4673391))

(declare-fun m!4674131 () Bool)

(assert (=> b!4066194 m!4674131))

(assert (=> b!4066195 m!4673395))

(declare-fun m!4674133 () Bool)

(assert (=> b!4066195 m!4674133))

(assert (=> b!4066195 m!4673395))

(assert (=> b!4066195 m!4674133))

(declare-fun m!4674135 () Bool)

(assert (=> b!4066195 m!4674135))

(assert (=> b!4065413 d!1208697))

(declare-fun d!1208699 () Bool)

(assert (=> d!1208699 (not (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454242))))

(declare-fun lt!1454584 () Unit!62945)

(declare-fun choose!24762 (LexerInterface!6565 List!43555 Rule!13752 List!43553 List!43553 Rule!13752) Unit!62945)

(assert (=> d!1208699 (= lt!1454584 (choose!24762 thiss!21717 rules!2999 (rule!10074 token!484) lt!1454242 lt!1454301 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> d!1208699 (isPrefix!4063 lt!1454242 lt!1454301)))

(assert (=> d!1208699 (= (lemmaMaxPrefNoSmallerRuleMatches!304 thiss!21717 rules!2999 (rule!10074 token!484) lt!1454242 lt!1454301 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454584)))

(declare-fun bs!592371 () Bool)

(assert (= bs!592371 d!1208699))

(assert (=> bs!592371 m!4672973))

(declare-fun m!4674137 () Bool)

(assert (=> bs!592371 m!4674137))

(assert (=> bs!592371 m!4673081))

(assert (=> b!4065434 d!1208699))

(declare-fun b!4066197 () Bool)

(declare-fun e!2523412 () Bool)

(declare-fun e!2523408 () Bool)

(assert (=> b!4066197 (= e!2523412 e!2523408)))

(declare-fun res!1659521 () Bool)

(assert (=> b!4066197 (=> res!1659521 e!2523408)))

(declare-fun call!288290 () Bool)

(assert (=> b!4066197 (= res!1659521 call!288290)))

(declare-fun b!4066198 () Bool)

(declare-fun res!1659515 () Bool)

(assert (=> b!4066198 (=> res!1659515 e!2523408)))

(assert (=> b!4066198 (= res!1659515 (not (isEmpty!25921 (tail!6311 lt!1454242))))))

(declare-fun b!4066199 () Bool)

(declare-fun e!2523410 () Bool)

(assert (=> b!4066199 (= e!2523410 (matchR!5834 (derivativeStep!3581 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) (head!8579 lt!1454242)) (tail!6311 lt!1454242)))))

(declare-fun b!4066200 () Bool)

(declare-fun e!2523407 () Bool)

(declare-fun lt!1454585 () Bool)

(assert (=> b!4066200 (= e!2523407 (= lt!1454585 call!288290))))

(declare-fun b!4066202 () Bool)

(declare-fun e!2523409 () Bool)

(assert (=> b!4066202 (= e!2523407 e!2523409)))

(declare-fun c!702098 () Bool)

(assert (=> b!4066202 (= c!702098 ((_ is EmptyLang!11881) (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(declare-fun b!4066203 () Bool)

(assert (=> b!4066203 (= e!2523409 (not lt!1454585))))

(declare-fun b!4066204 () Bool)

(declare-fun res!1659517 () Bool)

(declare-fun e!2523406 () Bool)

(assert (=> b!4066204 (=> res!1659517 e!2523406)))

(declare-fun e!2523411 () Bool)

(assert (=> b!4066204 (= res!1659517 e!2523411)))

(declare-fun res!1659522 () Bool)

(assert (=> b!4066204 (=> (not res!1659522) (not e!2523411))))

(assert (=> b!4066204 (= res!1659522 lt!1454585)))

(declare-fun bm!288285 () Bool)

(assert (=> bm!288285 (= call!288290 (isEmpty!25921 lt!1454242))))

(declare-fun b!4066205 () Bool)

(declare-fun res!1659520 () Bool)

(assert (=> b!4066205 (=> (not res!1659520) (not e!2523411))))

(assert (=> b!4066205 (= res!1659520 (not call!288290))))

(declare-fun d!1208701 () Bool)

(assert (=> d!1208701 e!2523407))

(declare-fun c!702097 () Bool)

(assert (=> d!1208701 (= c!702097 ((_ is EmptyExpr!11881) (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(assert (=> d!1208701 (= lt!1454585 e!2523410)))

(declare-fun c!702096 () Bool)

(assert (=> d!1208701 (= c!702096 (isEmpty!25921 lt!1454242))))

(assert (=> d!1208701 (validRegex!5376 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))

(assert (=> d!1208701 (= (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))) lt!1454242) lt!1454585)))

(declare-fun b!4066201 () Bool)

(declare-fun res!1659516 () Bool)

(assert (=> b!4066201 (=> res!1659516 e!2523406)))

(assert (=> b!4066201 (= res!1659516 (not ((_ is ElementMatch!11881) (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(assert (=> b!4066201 (= e!2523409 e!2523406)))

(declare-fun b!4066206 () Bool)

(assert (=> b!4066206 (= e!2523410 (nullable!4176 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))

(declare-fun b!4066207 () Bool)

(declare-fun res!1659518 () Bool)

(assert (=> b!4066207 (=> (not res!1659518) (not e!2523411))))

(assert (=> b!4066207 (= res!1659518 (isEmpty!25921 (tail!6311 lt!1454242)))))

(declare-fun b!4066208 () Bool)

(assert (=> b!4066208 (= e!2523406 e!2523412)))

(declare-fun res!1659519 () Bool)

(assert (=> b!4066208 (=> (not res!1659519) (not e!2523412))))

(assert (=> b!4066208 (= res!1659519 (not lt!1454585))))

(declare-fun b!4066209 () Bool)

(assert (=> b!4066209 (= e!2523408 (not (= (head!8579 lt!1454242) (c!701967 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295))))))))))

(declare-fun b!4066210 () Bool)

(assert (=> b!4066210 (= e!2523411 (= (head!8579 lt!1454242) (c!701967 (regex!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))))))

(assert (= (and d!1208701 c!702096) b!4066206))

(assert (= (and d!1208701 (not c!702096)) b!4066199))

(assert (= (and d!1208701 c!702097) b!4066200))

(assert (= (and d!1208701 (not c!702097)) b!4066202))

(assert (= (and b!4066202 c!702098) b!4066203))

(assert (= (and b!4066202 (not c!702098)) b!4066201))

(assert (= (and b!4066201 (not res!1659516)) b!4066204))

(assert (= (and b!4066204 res!1659522) b!4066205))

(assert (= (and b!4066205 res!1659520) b!4066207))

(assert (= (and b!4066207 res!1659518) b!4066210))

(assert (= (and b!4066204 (not res!1659517)) b!4066208))

(assert (= (and b!4066208 res!1659519) b!4066197))

(assert (= (and b!4066197 (not res!1659521)) b!4066198))

(assert (= (and b!4066198 (not res!1659515)) b!4066209))

(assert (= (or b!4066200 b!4066197 b!4066205) bm!288285))

(assert (=> b!4066210 m!4673391))

(assert (=> b!4066198 m!4673395))

(assert (=> b!4066198 m!4673395))

(assert (=> b!4066198 m!4674021))

(assert (=> b!4066209 m!4673391))

(assert (=> b!4066206 m!4673791))

(assert (=> b!4066207 m!4673395))

(assert (=> b!4066207 m!4673395))

(assert (=> b!4066207 m!4674021))

(assert (=> b!4066199 m!4673391))

(assert (=> b!4066199 m!4673391))

(declare-fun m!4674139 () Bool)

(assert (=> b!4066199 m!4674139))

(assert (=> b!4066199 m!4673395))

(assert (=> b!4066199 m!4674139))

(assert (=> b!4066199 m!4673395))

(declare-fun m!4674141 () Bool)

(assert (=> b!4066199 m!4674141))

(assert (=> d!1208701 m!4674029))

(assert (=> d!1208701 m!4673789))

(assert (=> bm!288285 m!4674029))

(assert (=> b!4065434 d!1208701))

(declare-fun d!1208703 () Bool)

(assert (=> d!1208703 (= (inv!58055 (tag!7836 (rule!10074 token!484))) (= (mod (str.len (value!219449 (tag!7836 (rule!10074 token!484)))) 2) 0))))

(assert (=> b!4065412 d!1208703))

(declare-fun d!1208705 () Bool)

(declare-fun res!1659523 () Bool)

(declare-fun e!2523413 () Bool)

(assert (=> d!1208705 (=> (not res!1659523) (not e!2523413))))

(assert (=> d!1208705 (= res!1659523 (semiInverseModEq!2983 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))))))

(assert (=> d!1208705 (= (inv!58058 (transformation!6976 (rule!10074 token!484))) e!2523413)))

(declare-fun b!4066211 () Bool)

(assert (=> b!4066211 (= e!2523413 (equivClasses!2882 (toChars!9395 (transformation!6976 (rule!10074 token!484))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))))))

(assert (= (and d!1208705 res!1659523) b!4066211))

(assert (=> d!1208705 m!4674059))

(assert (=> b!4066211 m!4674061))

(assert (=> b!4065412 d!1208705))

(declare-fun b!4066213 () Bool)

(declare-fun e!2523415 () List!43553)

(assert (=> b!4066213 (= e!2523415 (Cons!43429 (h!48849 lt!1454242) (++!11378 (t!336808 lt!1454242) lt!1454269)))))

(declare-fun b!4066215 () Bool)

(declare-fun lt!1454586 () List!43553)

(declare-fun e!2523414 () Bool)

(assert (=> b!4066215 (= e!2523414 (or (not (= lt!1454269 Nil!43429)) (= lt!1454586 lt!1454242)))))

(declare-fun b!4066214 () Bool)

(declare-fun res!1659524 () Bool)

(assert (=> b!4066214 (=> (not res!1659524) (not e!2523414))))

(assert (=> b!4066214 (= res!1659524 (= (size!32470 lt!1454586) (+ (size!32470 lt!1454242) (size!32470 lt!1454269))))))

(declare-fun d!1208707 () Bool)

(assert (=> d!1208707 e!2523414))

(declare-fun res!1659525 () Bool)

(assert (=> d!1208707 (=> (not res!1659525) (not e!2523414))))

(assert (=> d!1208707 (= res!1659525 (= (content!6628 lt!1454586) ((_ map or) (content!6628 lt!1454242) (content!6628 lt!1454269))))))

(assert (=> d!1208707 (= lt!1454586 e!2523415)))

(declare-fun c!702099 () Bool)

(assert (=> d!1208707 (= c!702099 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208707 (= (++!11378 lt!1454242 lt!1454269) lt!1454586)))

(declare-fun b!4066212 () Bool)

(assert (=> b!4066212 (= e!2523415 lt!1454269)))

(assert (= (and d!1208707 c!702099) b!4066212))

(assert (= (and d!1208707 (not c!702099)) b!4066213))

(assert (= (and d!1208707 res!1659525) b!4066214))

(assert (= (and b!4066214 res!1659524) b!4066215))

(declare-fun m!4674143 () Bool)

(assert (=> b!4066213 m!4674143))

(declare-fun m!4674145 () Bool)

(assert (=> b!4066214 m!4674145))

(assert (=> b!4066214 m!4672945))

(declare-fun m!4674147 () Bool)

(assert (=> b!4066214 m!4674147))

(declare-fun m!4674149 () Bool)

(assert (=> d!1208707 m!4674149))

(assert (=> d!1208707 m!4673455))

(declare-fun m!4674151 () Bool)

(assert (=> d!1208707 m!4674151))

(assert (=> b!4065454 d!1208707))

(declare-fun b!4066217 () Bool)

(declare-fun e!2523417 () List!43553)

(assert (=> b!4066217 (= e!2523417 (Cons!43429 (h!48849 lt!1454254) (++!11378 (t!336808 lt!1454254) suffix!1299)))))

(declare-fun lt!1454587 () List!43553)

(declare-fun e!2523416 () Bool)

(declare-fun b!4066219 () Bool)

(assert (=> b!4066219 (= e!2523416 (or (not (= suffix!1299 Nil!43429)) (= lt!1454587 lt!1454254)))))

(declare-fun b!4066218 () Bool)

(declare-fun res!1659526 () Bool)

(assert (=> b!4066218 (=> (not res!1659526) (not e!2523416))))

(assert (=> b!4066218 (= res!1659526 (= (size!32470 lt!1454587) (+ (size!32470 lt!1454254) (size!32470 suffix!1299))))))

(declare-fun d!1208709 () Bool)

(assert (=> d!1208709 e!2523416))

(declare-fun res!1659527 () Bool)

(assert (=> d!1208709 (=> (not res!1659527) (not e!2523416))))

(assert (=> d!1208709 (= res!1659527 (= (content!6628 lt!1454587) ((_ map or) (content!6628 lt!1454254) (content!6628 suffix!1299))))))

(assert (=> d!1208709 (= lt!1454587 e!2523417)))

(declare-fun c!702100 () Bool)

(assert (=> d!1208709 (= c!702100 ((_ is Nil!43429) lt!1454254))))

(assert (=> d!1208709 (= (++!11378 lt!1454254 suffix!1299) lt!1454587)))

(declare-fun b!4066216 () Bool)

(assert (=> b!4066216 (= e!2523417 suffix!1299)))

(assert (= (and d!1208709 c!702100) b!4066216))

(assert (= (and d!1208709 (not c!702100)) b!4066217))

(assert (= (and d!1208709 res!1659527) b!4066218))

(assert (= (and b!4066218 res!1659526) b!4066219))

(declare-fun m!4674153 () Bool)

(assert (=> b!4066217 m!4674153))

(declare-fun m!4674155 () Bool)

(assert (=> b!4066218 m!4674155))

(declare-fun m!4674157 () Bool)

(assert (=> b!4066218 m!4674157))

(assert (=> b!4066218 m!4673027))

(declare-fun m!4674159 () Bool)

(assert (=> d!1208709 m!4674159))

(declare-fun m!4674161 () Bool)

(assert (=> d!1208709 m!4674161))

(declare-fun m!4674163 () Bool)

(assert (=> d!1208709 m!4674163))

(assert (=> b!4065454 d!1208709))

(declare-fun b!4066221 () Bool)

(declare-fun e!2523419 () List!43553)

(assert (=> b!4066221 (= e!2523419 (Cons!43429 (h!48849 lt!1454297) (++!11378 (t!336808 lt!1454297) suffix!1299)))))

(declare-fun e!2523418 () Bool)

(declare-fun b!4066223 () Bool)

(declare-fun lt!1454588 () List!43553)

(assert (=> b!4066223 (= e!2523418 (or (not (= suffix!1299 Nil!43429)) (= lt!1454588 lt!1454297)))))

(declare-fun b!4066222 () Bool)

(declare-fun res!1659528 () Bool)

(assert (=> b!4066222 (=> (not res!1659528) (not e!2523418))))

(assert (=> b!4066222 (= res!1659528 (= (size!32470 lt!1454588) (+ (size!32470 lt!1454297) (size!32470 suffix!1299))))))

(declare-fun d!1208711 () Bool)

(assert (=> d!1208711 e!2523418))

(declare-fun res!1659529 () Bool)

(assert (=> d!1208711 (=> (not res!1659529) (not e!2523418))))

(assert (=> d!1208711 (= res!1659529 (= (content!6628 lt!1454588) ((_ map or) (content!6628 lt!1454297) (content!6628 suffix!1299))))))

(assert (=> d!1208711 (= lt!1454588 e!2523419)))

(declare-fun c!702101 () Bool)

(assert (=> d!1208711 (= c!702101 ((_ is Nil!43429) lt!1454297))))

(assert (=> d!1208711 (= (++!11378 lt!1454297 suffix!1299) lt!1454588)))

(declare-fun b!4066220 () Bool)

(assert (=> b!4066220 (= e!2523419 suffix!1299)))

(assert (= (and d!1208711 c!702101) b!4066220))

(assert (= (and d!1208711 (not c!702101)) b!4066221))

(assert (= (and d!1208711 res!1659529) b!4066222))

(assert (= (and b!4066222 res!1659528) b!4066223))

(declare-fun m!4674165 () Bool)

(assert (=> b!4066221 m!4674165))

(declare-fun m!4674167 () Bool)

(assert (=> b!4066222 m!4674167))

(assert (=> b!4066222 m!4673451))

(assert (=> b!4066222 m!4673027))

(declare-fun m!4674169 () Bool)

(assert (=> d!1208711 m!4674169))

(assert (=> d!1208711 m!4673457))

(assert (=> d!1208711 m!4674163))

(assert (=> b!4065454 d!1208711))

(declare-fun d!1208713 () Bool)

(assert (=> d!1208713 (= (++!11378 (++!11378 lt!1454242 lt!1454297) suffix!1299) (++!11378 lt!1454242 (++!11378 lt!1454297 suffix!1299)))))

(declare-fun lt!1454589 () Unit!62945)

(assert (=> d!1208713 (= lt!1454589 (choose!24747 lt!1454242 lt!1454297 suffix!1299))))

(assert (=> d!1208713 (= (lemmaConcatAssociativity!2680 lt!1454242 lt!1454297 suffix!1299) lt!1454589)))

(declare-fun bs!592372 () Bool)

(assert (= bs!592372 d!1208713))

(assert (=> bs!592372 m!4673001))

(assert (=> bs!592372 m!4673001))

(declare-fun m!4674171 () Bool)

(assert (=> bs!592372 m!4674171))

(assert (=> bs!592372 m!4673059))

(assert (=> bs!592372 m!4673059))

(declare-fun m!4674173 () Bool)

(assert (=> bs!592372 m!4674173))

(declare-fun m!4674175 () Bool)

(assert (=> bs!592372 m!4674175))

(assert (=> b!4065454 d!1208713))

(declare-fun b!4066225 () Bool)

(declare-fun e!2523421 () List!43553)

(assert (=> b!4066225 (= e!2523421 (Cons!43429 (h!48849 lt!1454242) (++!11378 (t!336808 lt!1454242) lt!1454249)))))

(declare-fun b!4066227 () Bool)

(declare-fun e!2523420 () Bool)

(declare-fun lt!1454590 () List!43553)

(assert (=> b!4066227 (= e!2523420 (or (not (= lt!1454249 Nil!43429)) (= lt!1454590 lt!1454242)))))

(declare-fun b!4066226 () Bool)

(declare-fun res!1659530 () Bool)

(assert (=> b!4066226 (=> (not res!1659530) (not e!2523420))))

(assert (=> b!4066226 (= res!1659530 (= (size!32470 lt!1454590) (+ (size!32470 lt!1454242) (size!32470 lt!1454249))))))

(declare-fun d!1208715 () Bool)

(assert (=> d!1208715 e!2523420))

(declare-fun res!1659531 () Bool)

(assert (=> d!1208715 (=> (not res!1659531) (not e!2523420))))

(assert (=> d!1208715 (= res!1659531 (= (content!6628 lt!1454590) ((_ map or) (content!6628 lt!1454242) (content!6628 lt!1454249))))))

(assert (=> d!1208715 (= lt!1454590 e!2523421)))

(declare-fun c!702102 () Bool)

(assert (=> d!1208715 (= c!702102 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208715 (= (++!11378 lt!1454242 lt!1454249) lt!1454590)))

(declare-fun b!4066224 () Bool)

(assert (=> b!4066224 (= e!2523421 lt!1454249)))

(assert (= (and d!1208715 c!702102) b!4066224))

(assert (= (and d!1208715 (not c!702102)) b!4066225))

(assert (= (and d!1208715 res!1659531) b!4066226))

(assert (= (and b!4066226 res!1659530) b!4066227))

(declare-fun m!4674177 () Bool)

(assert (=> b!4066225 m!4674177))

(declare-fun m!4674179 () Bool)

(assert (=> b!4066226 m!4674179))

(assert (=> b!4066226 m!4672945))

(declare-fun m!4674181 () Bool)

(assert (=> b!4066226 m!4674181))

(declare-fun m!4674183 () Bool)

(assert (=> d!1208715 m!4674183))

(assert (=> d!1208715 m!4673455))

(declare-fun m!4674185 () Bool)

(assert (=> d!1208715 m!4674185))

(assert (=> b!4065411 d!1208715))

(declare-fun d!1208717 () Bool)

(declare-fun lt!1454591 () List!43553)

(assert (=> d!1208717 (= (++!11378 lt!1454242 lt!1454591) lt!1454301)))

(declare-fun e!2523422 () List!43553)

(assert (=> d!1208717 (= lt!1454591 e!2523422)))

(declare-fun c!702103 () Bool)

(assert (=> d!1208717 (= c!702103 ((_ is Cons!43429) lt!1454242))))

(assert (=> d!1208717 (>= (size!32470 lt!1454301) (size!32470 lt!1454242))))

(assert (=> d!1208717 (= (getSuffix!2480 lt!1454301 lt!1454242) lt!1454591)))

(declare-fun b!4066228 () Bool)

(assert (=> b!4066228 (= e!2523422 (getSuffix!2480 (tail!6311 lt!1454301) (t!336808 lt!1454242)))))

(declare-fun b!4066229 () Bool)

(assert (=> b!4066229 (= e!2523422 lt!1454301)))

(assert (= (and d!1208717 c!702103) b!4066228))

(assert (= (and d!1208717 (not c!702103)) b!4066229))

(declare-fun m!4674187 () Bool)

(assert (=> d!1208717 m!4674187))

(assert (=> d!1208717 m!4674097))

(assert (=> d!1208717 m!4672945))

(assert (=> b!4066228 m!4674101))

(assert (=> b!4066228 m!4674101))

(declare-fun m!4674189 () Bool)

(assert (=> b!4066228 m!4674189))

(assert (=> b!4065411 d!1208717))

(declare-fun b!4066233 () Bool)

(declare-fun e!2523423 () Bool)

(assert (=> b!4066233 (= e!2523423 (>= (size!32470 lt!1454301) (size!32470 lt!1454301)))))

(declare-fun d!1208719 () Bool)

(assert (=> d!1208719 e!2523423))

(declare-fun res!1659533 () Bool)

(assert (=> d!1208719 (=> res!1659533 e!2523423)))

(declare-fun lt!1454592 () Bool)

(assert (=> d!1208719 (= res!1659533 (not lt!1454592))))

(declare-fun e!2523424 () Bool)

(assert (=> d!1208719 (= lt!1454592 e!2523424)))

(declare-fun res!1659535 () Bool)

(assert (=> d!1208719 (=> res!1659535 e!2523424)))

(assert (=> d!1208719 (= res!1659535 ((_ is Nil!43429) lt!1454301))))

(assert (=> d!1208719 (= (isPrefix!4063 lt!1454301 lt!1454301) lt!1454592)))

(declare-fun b!4066230 () Bool)

(declare-fun e!2523425 () Bool)

(assert (=> b!4066230 (= e!2523424 e!2523425)))

(declare-fun res!1659534 () Bool)

(assert (=> b!4066230 (=> (not res!1659534) (not e!2523425))))

(assert (=> b!4066230 (= res!1659534 (not ((_ is Nil!43429) lt!1454301)))))

(declare-fun b!4066231 () Bool)

(declare-fun res!1659532 () Bool)

(assert (=> b!4066231 (=> (not res!1659532) (not e!2523425))))

(assert (=> b!4066231 (= res!1659532 (= (head!8579 lt!1454301) (head!8579 lt!1454301)))))

(declare-fun b!4066232 () Bool)

(assert (=> b!4066232 (= e!2523425 (isPrefix!4063 (tail!6311 lt!1454301) (tail!6311 lt!1454301)))))

(assert (= (and d!1208719 (not res!1659535)) b!4066230))

(assert (= (and b!4066230 res!1659534) b!4066231))

(assert (= (and b!4066231 res!1659532) b!4066232))

(assert (= (and d!1208719 (not res!1659533)) b!4066233))

(assert (=> b!4066233 m!4674097))

(assert (=> b!4066233 m!4674097))

(assert (=> b!4066231 m!4674099))

(assert (=> b!4066231 m!4674099))

(assert (=> b!4066232 m!4674101))

(assert (=> b!4066232 m!4674101))

(assert (=> b!4066232 m!4674101))

(assert (=> b!4066232 m!4674101))

(declare-fun m!4674191 () Bool)

(assert (=> b!4066232 m!4674191))

(assert (=> b!4065411 d!1208719))

(declare-fun d!1208721 () Bool)

(assert (=> d!1208721 (isPrefix!4063 lt!1454301 lt!1454301)))

(declare-fun lt!1454595 () Unit!62945)

(declare-fun choose!24763 (List!43553 List!43553) Unit!62945)

(assert (=> d!1208721 (= lt!1454595 (choose!24763 lt!1454301 lt!1454301))))

(assert (=> d!1208721 (= (lemmaIsPrefixRefl!2630 lt!1454301 lt!1454301) lt!1454595)))

(declare-fun bs!592373 () Bool)

(assert (= bs!592373 d!1208721))

(assert (=> bs!592373 m!4673101))

(declare-fun m!4674193 () Bool)

(assert (=> bs!592373 m!4674193))

(assert (=> b!4065411 d!1208721))

(declare-fun d!1208723 () Bool)

(assert (=> d!1208723 (= (_2!24375 (v!39815 lt!1454295)) lt!1454252)))

(declare-fun lt!1454596 () Unit!62945)

(assert (=> d!1208723 (= lt!1454596 (choose!24748 lt!1454287 (_2!24375 (v!39815 lt!1454295)) lt!1454287 lt!1454252 lt!1454264))))

(assert (=> d!1208723 (isPrefix!4063 lt!1454287 lt!1454264)))

(assert (=> d!1208723 (= (lemmaSamePrefixThenSameSuffix!2224 lt!1454287 (_2!24375 (v!39815 lt!1454295)) lt!1454287 lt!1454252 lt!1454264) lt!1454596)))

(declare-fun bs!592374 () Bool)

(assert (= bs!592374 d!1208723))

(declare-fun m!4674195 () Bool)

(assert (=> bs!592374 m!4674195))

(assert (=> bs!592374 m!4673019))

(assert (=> b!4065416 d!1208723))

(declare-fun b!4066237 () Bool)

(declare-fun e!2523426 () Bool)

(assert (=> b!4066237 (= e!2523426 (>= (size!32470 lt!1454246) (size!32470 lt!1454287)))))

(declare-fun d!1208725 () Bool)

(assert (=> d!1208725 e!2523426))

(declare-fun res!1659537 () Bool)

(assert (=> d!1208725 (=> res!1659537 e!2523426)))

(declare-fun lt!1454597 () Bool)

(assert (=> d!1208725 (= res!1659537 (not lt!1454597))))

(declare-fun e!2523427 () Bool)

(assert (=> d!1208725 (= lt!1454597 e!2523427)))

(declare-fun res!1659539 () Bool)

(assert (=> d!1208725 (=> res!1659539 e!2523427)))

(assert (=> d!1208725 (= res!1659539 ((_ is Nil!43429) lt!1454287))))

(assert (=> d!1208725 (= (isPrefix!4063 lt!1454287 lt!1454246) lt!1454597)))

(declare-fun b!4066234 () Bool)

(declare-fun e!2523428 () Bool)

(assert (=> b!4066234 (= e!2523427 e!2523428)))

(declare-fun res!1659538 () Bool)

(assert (=> b!4066234 (=> (not res!1659538) (not e!2523428))))

(assert (=> b!4066234 (= res!1659538 (not ((_ is Nil!43429) lt!1454246)))))

(declare-fun b!4066235 () Bool)

(declare-fun res!1659536 () Bool)

(assert (=> b!4066235 (=> (not res!1659536) (not e!2523428))))

(assert (=> b!4066235 (= res!1659536 (= (head!8579 lt!1454287) (head!8579 lt!1454246)))))

(declare-fun b!4066236 () Bool)

(assert (=> b!4066236 (= e!2523428 (isPrefix!4063 (tail!6311 lt!1454287) (tail!6311 lt!1454246)))))

(assert (= (and d!1208725 (not res!1659539)) b!4066234))

(assert (= (and b!4066234 res!1659538) b!4066235))

(assert (= (and b!4066235 res!1659536) b!4066236))

(assert (= (and d!1208725 (not res!1659537)) b!4066237))

(declare-fun m!4674197 () Bool)

(assert (=> b!4066237 m!4674197))

(assert (=> b!4066237 m!4672921))

(assert (=> b!4066235 m!4673661))

(declare-fun m!4674199 () Bool)

(assert (=> b!4066235 m!4674199))

(assert (=> b!4066236 m!4673665))

(declare-fun m!4674201 () Bool)

(assert (=> b!4066236 m!4674201))

(assert (=> b!4066236 m!4673665))

(assert (=> b!4066236 m!4674201))

(declare-fun m!4674203 () Bool)

(assert (=> b!4066236 m!4674203))

(assert (=> b!4065416 d!1208725))

(declare-fun d!1208727 () Bool)

(assert (=> d!1208727 (isPrefix!4063 lt!1454287 (++!11378 lt!1454287 lt!1454252))))

(declare-fun lt!1454598 () Unit!62945)

(assert (=> d!1208727 (= lt!1454598 (choose!24750 lt!1454287 lt!1454252))))

(assert (=> d!1208727 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454287 lt!1454252) lt!1454598)))

(declare-fun bs!592375 () Bool)

(assert (= bs!592375 d!1208727))

(assert (=> bs!592375 m!4672953))

(assert (=> bs!592375 m!4672953))

(declare-fun m!4674205 () Bool)

(assert (=> bs!592375 m!4674205))

(declare-fun m!4674207 () Bool)

(assert (=> bs!592375 m!4674207))

(assert (=> b!4065416 d!1208727))

(declare-fun b!4066238 () Bool)

(declare-fun res!1659540 () Bool)

(declare-fun e!2523431 () Bool)

(assert (=> b!4066238 (=> (not res!1659540) (not e!2523431))))

(declare-fun lt!1454600 () Option!9390)

(assert (=> b!4066238 (= res!1659540 (< (size!32470 (_2!24375 (get!14242 lt!1454600))) (size!32470 lt!1454301)))))

(declare-fun b!4066239 () Bool)

(declare-fun e!2523429 () Option!9390)

(declare-fun lt!1454599 () Option!9390)

(declare-fun lt!1454601 () Option!9390)

(assert (=> b!4066239 (= e!2523429 (ite (and ((_ is None!9389) lt!1454599) ((_ is None!9389) lt!1454601)) None!9389 (ite ((_ is None!9389) lt!1454601) lt!1454599 (ite ((_ is None!9389) lt!1454599) lt!1454601 (ite (>= (size!32469 (_1!24375 (v!39815 lt!1454599))) (size!32469 (_1!24375 (v!39815 lt!1454601)))) lt!1454599 lt!1454601)))))))

(declare-fun call!288291 () Option!9390)

(assert (=> b!4066239 (= lt!1454599 call!288291)))

(assert (=> b!4066239 (= lt!1454601 (maxPrefix!3863 thiss!21717 (t!336810 rules!2999) lt!1454301))))

(declare-fun d!1208729 () Bool)

(declare-fun e!2523430 () Bool)

(assert (=> d!1208729 e!2523430))

(declare-fun res!1659541 () Bool)

(assert (=> d!1208729 (=> res!1659541 e!2523430)))

(assert (=> d!1208729 (= res!1659541 (isEmpty!25920 lt!1454600))))

(assert (=> d!1208729 (= lt!1454600 e!2523429)))

(declare-fun c!702104 () Bool)

(assert (=> d!1208729 (= c!702104 (and ((_ is Cons!43431) rules!2999) ((_ is Nil!43431) (t!336810 rules!2999))))))

(declare-fun lt!1454603 () Unit!62945)

(declare-fun lt!1454602 () Unit!62945)

(assert (=> d!1208729 (= lt!1454603 lt!1454602)))

(assert (=> d!1208729 (isPrefix!4063 lt!1454301 lt!1454301)))

(assert (=> d!1208729 (= lt!1454602 (lemmaIsPrefixRefl!2630 lt!1454301 lt!1454301))))

(assert (=> d!1208729 (rulesValidInductive!2551 thiss!21717 rules!2999)))

(assert (=> d!1208729 (= (maxPrefix!3863 thiss!21717 rules!2999 lt!1454301) lt!1454600)))

(declare-fun b!4066240 () Bool)

(declare-fun res!1659542 () Bool)

(assert (=> b!4066240 (=> (not res!1659542) (not e!2523431))))

(assert (=> b!4066240 (= res!1659542 (matchR!5834 (regex!6976 (rule!10074 (_1!24375 (get!14242 lt!1454600)))) (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454600))))))))

(declare-fun b!4066241 () Bool)

(assert (=> b!4066241 (= e!2523431 (contains!8642 rules!2999 (rule!10074 (_1!24375 (get!14242 lt!1454600)))))))

(declare-fun bm!288286 () Bool)

(assert (=> bm!288286 (= call!288291 (maxPrefixOneRule!2875 thiss!21717 (h!48851 rules!2999) lt!1454301))))

(declare-fun b!4066242 () Bool)

(assert (=> b!4066242 (= e!2523430 e!2523431)))

(declare-fun res!1659543 () Bool)

(assert (=> b!4066242 (=> (not res!1659543) (not e!2523431))))

(assert (=> b!4066242 (= res!1659543 (isDefined!7130 lt!1454600))))

(declare-fun b!4066243 () Bool)

(assert (=> b!4066243 (= e!2523429 call!288291)))

(declare-fun b!4066244 () Bool)

(declare-fun res!1659544 () Bool)

(assert (=> b!4066244 (=> (not res!1659544) (not e!2523431))))

(assert (=> b!4066244 (= res!1659544 (= (value!219450 (_1!24375 (get!14242 lt!1454600))) (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (get!14242 lt!1454600)))) (seqFromList!5193 (originalCharacters!7576 (_1!24375 (get!14242 lt!1454600)))))))))

(declare-fun b!4066245 () Bool)

(declare-fun res!1659545 () Bool)

(assert (=> b!4066245 (=> (not res!1659545) (not e!2523431))))

(assert (=> b!4066245 (= res!1659545 (= (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454600)))) (originalCharacters!7576 (_1!24375 (get!14242 lt!1454600)))))))

(declare-fun b!4066246 () Bool)

(declare-fun res!1659546 () Bool)

(assert (=> b!4066246 (=> (not res!1659546) (not e!2523431))))

(assert (=> b!4066246 (= res!1659546 (= (++!11378 (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454600)))) (_2!24375 (get!14242 lt!1454600))) lt!1454301))))

(assert (= (and d!1208729 c!702104) b!4066243))

(assert (= (and d!1208729 (not c!702104)) b!4066239))

(assert (= (or b!4066243 b!4066239) bm!288286))

(assert (= (and d!1208729 (not res!1659541)) b!4066242))

(assert (= (and b!4066242 res!1659543) b!4066245))

(assert (= (and b!4066245 res!1659545) b!4066238))

(assert (= (and b!4066238 res!1659540) b!4066246))

(assert (= (and b!4066246 res!1659546) b!4066244))

(assert (= (and b!4066244 res!1659544) b!4066240))

(assert (= (and b!4066240 res!1659542) b!4066241))

(declare-fun m!4674209 () Bool)

(assert (=> b!4066245 m!4674209))

(declare-fun m!4674211 () Bool)

(assert (=> b!4066245 m!4674211))

(assert (=> b!4066245 m!4674211))

(declare-fun m!4674213 () Bool)

(assert (=> b!4066245 m!4674213))

(declare-fun m!4674215 () Bool)

(assert (=> b!4066239 m!4674215))

(declare-fun m!4674217 () Bool)

(assert (=> bm!288286 m!4674217))

(assert (=> b!4066241 m!4674209))

(declare-fun m!4674219 () Bool)

(assert (=> b!4066241 m!4674219))

(declare-fun m!4674221 () Bool)

(assert (=> b!4066242 m!4674221))

(assert (=> b!4066238 m!4674209))

(declare-fun m!4674223 () Bool)

(assert (=> b!4066238 m!4674223))

(assert (=> b!4066238 m!4674097))

(declare-fun m!4674225 () Bool)

(assert (=> d!1208729 m!4674225))

(assert (=> d!1208729 m!4673101))

(assert (=> d!1208729 m!4673103))

(assert (=> d!1208729 m!4673303))

(assert (=> b!4066246 m!4674209))

(assert (=> b!4066246 m!4674211))

(assert (=> b!4066246 m!4674211))

(assert (=> b!4066246 m!4674213))

(assert (=> b!4066246 m!4674213))

(declare-fun m!4674227 () Bool)

(assert (=> b!4066246 m!4674227))

(assert (=> b!4066244 m!4674209))

(declare-fun m!4674229 () Bool)

(assert (=> b!4066244 m!4674229))

(assert (=> b!4066244 m!4674229))

(declare-fun m!4674231 () Bool)

(assert (=> b!4066244 m!4674231))

(assert (=> b!4066240 m!4674209))

(assert (=> b!4066240 m!4674211))

(assert (=> b!4066240 m!4674211))

(assert (=> b!4066240 m!4674213))

(assert (=> b!4066240 m!4674213))

(declare-fun m!4674233 () Bool)

(assert (=> b!4066240 m!4674233))

(assert (=> b!4065437 d!1208729))

(declare-fun b!4066248 () Bool)

(declare-fun e!2523433 () List!43553)

(assert (=> b!4066248 (= e!2523433 (Cons!43429 (h!48849 prefix!494) (++!11378 (t!336808 prefix!494) suffix!1299)))))

(declare-fun b!4066250 () Bool)

(declare-fun e!2523432 () Bool)

(declare-fun lt!1454604 () List!43553)

(assert (=> b!4066250 (= e!2523432 (or (not (= suffix!1299 Nil!43429)) (= lt!1454604 prefix!494)))))

(declare-fun b!4066249 () Bool)

(declare-fun res!1659547 () Bool)

(assert (=> b!4066249 (=> (not res!1659547) (not e!2523432))))

(assert (=> b!4066249 (= res!1659547 (= (size!32470 lt!1454604) (+ (size!32470 prefix!494) (size!32470 suffix!1299))))))

(declare-fun d!1208731 () Bool)

(assert (=> d!1208731 e!2523432))

(declare-fun res!1659548 () Bool)

(assert (=> d!1208731 (=> (not res!1659548) (not e!2523432))))

(assert (=> d!1208731 (= res!1659548 (= (content!6628 lt!1454604) ((_ map or) (content!6628 prefix!494) (content!6628 suffix!1299))))))

(assert (=> d!1208731 (= lt!1454604 e!2523433)))

(declare-fun c!702105 () Bool)

(assert (=> d!1208731 (= c!702105 ((_ is Nil!43429) prefix!494))))

(assert (=> d!1208731 (= (++!11378 prefix!494 suffix!1299) lt!1454604)))

(declare-fun b!4066247 () Bool)

(assert (=> b!4066247 (= e!2523433 suffix!1299)))

(assert (= (and d!1208731 c!702105) b!4066247))

(assert (= (and d!1208731 (not c!702105)) b!4066248))

(assert (= (and d!1208731 res!1659548) b!4066249))

(assert (= (and b!4066249 res!1659547) b!4066250))

(declare-fun m!4674235 () Bool)

(assert (=> b!4066248 m!4674235))

(declare-fun m!4674237 () Bool)

(assert (=> b!4066249 m!4674237))

(assert (=> b!4066249 m!4672947))

(assert (=> b!4066249 m!4673027))

(declare-fun m!4674239 () Bool)

(assert (=> d!1208731 m!4674239))

(assert (=> d!1208731 m!4673141))

(assert (=> d!1208731 m!4674163))

(assert (=> b!4065437 d!1208731))

(declare-fun b!4066254 () Bool)

(declare-fun e!2523434 () Bool)

(assert (=> b!4066254 (= e!2523434 (>= (size!32470 lt!1454277) (size!32470 lt!1454242)))))

(declare-fun d!1208733 () Bool)

(assert (=> d!1208733 e!2523434))

(declare-fun res!1659550 () Bool)

(assert (=> d!1208733 (=> res!1659550 e!2523434)))

(declare-fun lt!1454605 () Bool)

(assert (=> d!1208733 (= res!1659550 (not lt!1454605))))

(declare-fun e!2523435 () Bool)

(assert (=> d!1208733 (= lt!1454605 e!2523435)))

(declare-fun res!1659552 () Bool)

(assert (=> d!1208733 (=> res!1659552 e!2523435)))

(assert (=> d!1208733 (= res!1659552 ((_ is Nil!43429) lt!1454242))))

(assert (=> d!1208733 (= (isPrefix!4063 lt!1454242 lt!1454277) lt!1454605)))

(declare-fun b!4066251 () Bool)

(declare-fun e!2523436 () Bool)

(assert (=> b!4066251 (= e!2523435 e!2523436)))

(declare-fun res!1659551 () Bool)

(assert (=> b!4066251 (=> (not res!1659551) (not e!2523436))))

(assert (=> b!4066251 (= res!1659551 (not ((_ is Nil!43429) lt!1454277)))))

(declare-fun b!4066252 () Bool)

(declare-fun res!1659549 () Bool)

(assert (=> b!4066252 (=> (not res!1659549) (not e!2523436))))

(assert (=> b!4066252 (= res!1659549 (= (head!8579 lt!1454242) (head!8579 lt!1454277)))))

(declare-fun b!4066253 () Bool)

(assert (=> b!4066253 (= e!2523436 (isPrefix!4063 (tail!6311 lt!1454242) (tail!6311 lt!1454277)))))

(assert (= (and d!1208733 (not res!1659552)) b!4066251))

(assert (= (and b!4066251 res!1659551) b!4066252))

(assert (= (and b!4066252 res!1659549) b!4066253))

(assert (= (and d!1208733 (not res!1659550)) b!4066254))

(declare-fun m!4674241 () Bool)

(assert (=> b!4066254 m!4674241))

(assert (=> b!4066254 m!4672945))

(assert (=> b!4066252 m!4673391))

(declare-fun m!4674243 () Bool)

(assert (=> b!4066252 m!4674243))

(assert (=> b!4066253 m!4673395))

(declare-fun m!4674245 () Bool)

(assert (=> b!4066253 m!4674245))

(assert (=> b!4066253 m!4673395))

(assert (=> b!4066253 m!4674245))

(declare-fun m!4674247 () Bool)

(assert (=> b!4066253 m!4674247))

(assert (=> b!4065457 d!1208733))

(declare-fun d!1208735 () Bool)

(assert (=> d!1208735 (= lt!1454269 suffixResult!105)))

(declare-fun lt!1454606 () Unit!62945)

(assert (=> d!1208735 (= lt!1454606 (choose!24748 lt!1454242 lt!1454269 lt!1454242 suffixResult!105 lt!1454301))))

(assert (=> d!1208735 (isPrefix!4063 lt!1454242 lt!1454301)))

(assert (=> d!1208735 (= (lemmaSamePrefixThenSameSuffix!2224 lt!1454242 lt!1454269 lt!1454242 suffixResult!105 lt!1454301) lt!1454606)))

(declare-fun bs!592376 () Bool)

(assert (= bs!592376 d!1208735))

(declare-fun m!4674249 () Bool)

(assert (=> bs!592376 m!4674249))

(assert (=> bs!592376 m!4673081))

(assert (=> b!4065457 d!1208735))

(declare-fun d!1208737 () Bool)

(assert (=> d!1208737 (= (maxPrefixOneRule!2875 thiss!21717 (rule!10074 token!484) lt!1454301) (Some!9389 (tuple2!42483 (Token!13091 (apply!10165 (transformation!6976 (rule!10074 token!484)) (seqFromList!5193 lt!1454242)) (rule!10074 token!484) (size!32470 lt!1454242) lt!1454242) suffixResult!105)))))

(declare-fun lt!1454607 () Unit!62945)

(assert (=> d!1208737 (= lt!1454607 (choose!24755 thiss!21717 rules!2999 lt!1454242 lt!1454301 suffixResult!105 (rule!10074 token!484)))))

(assert (=> d!1208737 (not (isEmpty!25917 rules!2999))))

(assert (=> d!1208737 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1681 thiss!21717 rules!2999 lt!1454242 lt!1454301 suffixResult!105 (rule!10074 token!484)) lt!1454607)))

(declare-fun bs!592377 () Bool)

(assert (= bs!592377 d!1208737))

(assert (=> bs!592377 m!4673043))

(assert (=> bs!592377 m!4673031))

(assert (=> bs!592377 m!4672961))

(declare-fun m!4674251 () Bool)

(assert (=> bs!592377 m!4674251))

(assert (=> bs!592377 m!4673031))

(assert (=> bs!592377 m!4673033))

(assert (=> bs!592377 m!4672945))

(assert (=> b!4065457 d!1208737))

(declare-fun b!4066255 () Bool)

(declare-fun e!2523440 () Bool)

(declare-fun e!2523437 () Bool)

(assert (=> b!4066255 (= e!2523440 e!2523437)))

(declare-fun res!1659553 () Bool)

(assert (=> b!4066255 (=> (not res!1659553) (not e!2523437))))

(declare-fun lt!1454610 () Option!9390)

(assert (=> b!4066255 (= res!1659553 (matchR!5834 (regex!6976 (rule!10074 token!484)) (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454610))))))))

(declare-fun d!1208739 () Bool)

(assert (=> d!1208739 e!2523440))

(declare-fun res!1659556 () Bool)

(assert (=> d!1208739 (=> res!1659556 e!2523440)))

(assert (=> d!1208739 (= res!1659556 (isEmpty!25920 lt!1454610))))

(declare-fun e!2523438 () Option!9390)

(assert (=> d!1208739 (= lt!1454610 e!2523438)))

(declare-fun c!702106 () Bool)

(declare-fun lt!1454608 () tuple2!42486)

(assert (=> d!1208739 (= c!702106 (isEmpty!25921 (_1!24377 lt!1454608)))))

(assert (=> d!1208739 (= lt!1454608 (findLongestMatch!1326 (regex!6976 (rule!10074 token!484)) lt!1454301))))

(assert (=> d!1208739 (ruleValid!2906 thiss!21717 (rule!10074 token!484))))

(assert (=> d!1208739 (= (maxPrefixOneRule!2875 thiss!21717 (rule!10074 token!484) lt!1454301) lt!1454610)))

(declare-fun b!4066256 () Bool)

(declare-fun res!1659554 () Bool)

(assert (=> b!4066256 (=> (not res!1659554) (not e!2523437))))

(assert (=> b!4066256 (= res!1659554 (= (value!219450 (_1!24375 (get!14242 lt!1454610))) (apply!10165 (transformation!6976 (rule!10074 (_1!24375 (get!14242 lt!1454610)))) (seqFromList!5193 (originalCharacters!7576 (_1!24375 (get!14242 lt!1454610)))))))))

(declare-fun b!4066257 () Bool)

(assert (=> b!4066257 (= e!2523437 (= (size!32469 (_1!24375 (get!14242 lt!1454610))) (size!32470 (originalCharacters!7576 (_1!24375 (get!14242 lt!1454610))))))))

(declare-fun b!4066258 () Bool)

(assert (=> b!4066258 (= e!2523438 None!9389)))

(declare-fun b!4066259 () Bool)

(declare-fun res!1659557 () Bool)

(assert (=> b!4066259 (=> (not res!1659557) (not e!2523437))))

(assert (=> b!4066259 (= res!1659557 (< (size!32470 (_2!24375 (get!14242 lt!1454610))) (size!32470 lt!1454301)))))

(declare-fun b!4066260 () Bool)

(assert (=> b!4066260 (= e!2523438 (Some!9389 (tuple2!42483 (Token!13091 (apply!10165 (transformation!6976 (rule!10074 token!484)) (seqFromList!5193 (_1!24377 lt!1454608))) (rule!10074 token!484) (size!32472 (seqFromList!5193 (_1!24377 lt!1454608))) (_1!24377 lt!1454608)) (_2!24377 lt!1454608))))))

(declare-fun lt!1454609 () Unit!62945)

(assert (=> b!4066260 (= lt!1454609 (longestMatchIsAcceptedByMatchOrIsEmpty!1386 (regex!6976 (rule!10074 token!484)) lt!1454301))))

(declare-fun res!1659558 () Bool)

(assert (=> b!4066260 (= res!1659558 (isEmpty!25921 (_1!24377 (findLongestMatchInner!1413 (regex!6976 (rule!10074 token!484)) Nil!43429 (size!32470 Nil!43429) lt!1454301 lt!1454301 (size!32470 lt!1454301)))))))

(declare-fun e!2523439 () Bool)

(assert (=> b!4066260 (=> res!1659558 e!2523439)))

(assert (=> b!4066260 e!2523439))

(declare-fun lt!1454612 () Unit!62945)

(assert (=> b!4066260 (= lt!1454612 lt!1454609)))

(declare-fun lt!1454611 () Unit!62945)

(assert (=> b!4066260 (= lt!1454611 (lemmaSemiInverse!1945 (transformation!6976 (rule!10074 token!484)) (seqFromList!5193 (_1!24377 lt!1454608))))))

(declare-fun b!4066261 () Bool)

(declare-fun res!1659555 () Bool)

(assert (=> b!4066261 (=> (not res!1659555) (not e!2523437))))

(assert (=> b!4066261 (= res!1659555 (= (++!11378 (list!16190 (charsOf!4792 (_1!24375 (get!14242 lt!1454610)))) (_2!24375 (get!14242 lt!1454610))) lt!1454301))))

(declare-fun b!4066262 () Bool)

(assert (=> b!4066262 (= e!2523439 (matchR!5834 (regex!6976 (rule!10074 token!484)) (_1!24377 (findLongestMatchInner!1413 (regex!6976 (rule!10074 token!484)) Nil!43429 (size!32470 Nil!43429) lt!1454301 lt!1454301 (size!32470 lt!1454301)))))))

(declare-fun b!4066263 () Bool)

(declare-fun res!1659559 () Bool)

(assert (=> b!4066263 (=> (not res!1659559) (not e!2523437))))

(assert (=> b!4066263 (= res!1659559 (= (rule!10074 (_1!24375 (get!14242 lt!1454610))) (rule!10074 token!484)))))

(assert (= (and d!1208739 c!702106) b!4066258))

(assert (= (and d!1208739 (not c!702106)) b!4066260))

(assert (= (and b!4066260 (not res!1659558)) b!4066262))

(assert (= (and d!1208739 (not res!1659556)) b!4066255))

(assert (= (and b!4066255 res!1659553) b!4066261))

(assert (= (and b!4066261 res!1659555) b!4066259))

(assert (= (and b!4066259 res!1659557) b!4066263))

(assert (= (and b!4066263 res!1659559) b!4066256))

(assert (= (and b!4066256 res!1659554) b!4066257))

(assert (=> b!4066262 m!4673907))

(assert (=> b!4066262 m!4674097))

(assert (=> b!4066262 m!4673907))

(assert (=> b!4066262 m!4674097))

(declare-fun m!4674253 () Bool)

(assert (=> b!4066262 m!4674253))

(declare-fun m!4674255 () Bool)

(assert (=> b!4066262 m!4674255))

(declare-fun m!4674257 () Bool)

(assert (=> b!4066255 m!4674257))

(declare-fun m!4674259 () Bool)

(assert (=> b!4066255 m!4674259))

(assert (=> b!4066255 m!4674259))

(declare-fun m!4674261 () Bool)

(assert (=> b!4066255 m!4674261))

(assert (=> b!4066255 m!4674261))

(declare-fun m!4674263 () Bool)

(assert (=> b!4066255 m!4674263))

(assert (=> b!4066259 m!4674257))

(declare-fun m!4674265 () Bool)

(assert (=> b!4066259 m!4674265))

(assert (=> b!4066259 m!4674097))

(assert (=> b!4066261 m!4674257))

(assert (=> b!4066261 m!4674259))

(assert (=> b!4066261 m!4674259))

(assert (=> b!4066261 m!4674261))

(assert (=> b!4066261 m!4674261))

(declare-fun m!4674267 () Bool)

(assert (=> b!4066261 m!4674267))

(declare-fun m!4674269 () Bool)

(assert (=> d!1208739 m!4674269))

(declare-fun m!4674271 () Bool)

(assert (=> d!1208739 m!4674271))

(declare-fun m!4674273 () Bool)

(assert (=> d!1208739 m!4674273))

(assert (=> d!1208739 m!4673049))

(declare-fun m!4674275 () Bool)

(assert (=> b!4066260 m!4674275))

(declare-fun m!4674277 () Bool)

(assert (=> b!4066260 m!4674277))

(assert (=> b!4066260 m!4674097))

(assert (=> b!4066260 m!4673907))

(assert (=> b!4066260 m!4674097))

(assert (=> b!4066260 m!4674253))

(declare-fun m!4674279 () Bool)

(assert (=> b!4066260 m!4674279))

(declare-fun m!4674281 () Bool)

(assert (=> b!4066260 m!4674281))

(assert (=> b!4066260 m!4674275))

(declare-fun m!4674283 () Bool)

(assert (=> b!4066260 m!4674283))

(assert (=> b!4066260 m!4674275))

(declare-fun m!4674285 () Bool)

(assert (=> b!4066260 m!4674285))

(assert (=> b!4066260 m!4673907))

(assert (=> b!4066260 m!4674275))

(assert (=> b!4066257 m!4674257))

(declare-fun m!4674287 () Bool)

(assert (=> b!4066257 m!4674287))

(assert (=> b!4066256 m!4674257))

(declare-fun m!4674289 () Bool)

(assert (=> b!4066256 m!4674289))

(assert (=> b!4066256 m!4674289))

(declare-fun m!4674291 () Bool)

(assert (=> b!4066256 m!4674291))

(assert (=> b!4066263 m!4674257))

(assert (=> b!4065457 d!1208739))

(declare-fun d!1208741 () Bool)

(assert (=> d!1208741 (isPrefix!4063 lt!1454242 (++!11378 lt!1454242 lt!1454269))))

(declare-fun lt!1454613 () Unit!62945)

(assert (=> d!1208741 (= lt!1454613 (choose!24750 lt!1454242 lt!1454269))))

(assert (=> d!1208741 (= (lemmaConcatTwoListThenFirstIsPrefix!2898 lt!1454242 lt!1454269) lt!1454613)))

(declare-fun bs!592378 () Bool)

(assert (= bs!592378 d!1208741))

(assert (=> bs!592378 m!4673055))

(assert (=> bs!592378 m!4673055))

(declare-fun m!4674293 () Bool)

(assert (=> bs!592378 m!4674293))

(declare-fun m!4674295 () Bool)

(assert (=> bs!592378 m!4674295))

(assert (=> b!4065457 d!1208741))

(declare-fun d!1208743 () Bool)

(assert (=> d!1208743 (= (seqFromList!5193 lt!1454242) (fromListB!2370 lt!1454242))))

(declare-fun bs!592379 () Bool)

(assert (= bs!592379 d!1208743))

(declare-fun m!4674297 () Bool)

(assert (=> bs!592379 m!4674297))

(assert (=> b!4065457 d!1208743))

(declare-fun d!1208745 () Bool)

(assert (=> d!1208745 (= (apply!10165 (transformation!6976 (rule!10074 token!484)) (seqFromList!5193 lt!1454242)) (dynLambda!18449 (toValue!9536 (transformation!6976 (rule!10074 token!484))) (seqFromList!5193 lt!1454242)))))

(declare-fun b_lambda!118799 () Bool)

(assert (=> (not b_lambda!118799) (not d!1208745)))

(declare-fun t!336849 () Bool)

(declare-fun tb!244517 () Bool)

(assert (=> (and b!4065427 (= (toValue!9536 (transformation!6976 (h!48851 rules!2999))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))) t!336849) tb!244517))

(declare-fun result!296308 () Bool)

(assert (=> tb!244517 (= result!296308 (inv!21 (dynLambda!18449 (toValue!9536 (transformation!6976 (rule!10074 token!484))) (seqFromList!5193 lt!1454242))))))

(declare-fun m!4674299 () Bool)

(assert (=> tb!244517 m!4674299))

(assert (=> d!1208745 t!336849))

(declare-fun b_and!312547 () Bool)

(assert (= b_and!312519 (and (=> t!336849 result!296308) b_and!312547)))

(declare-fun t!336851 () Bool)

(declare-fun tb!244519 () Bool)

(assert (=> (and b!4065433 (= (toValue!9536 (transformation!6976 (rule!10074 token!484))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))) t!336851) tb!244519))

(declare-fun result!296310 () Bool)

(assert (= result!296310 result!296308))

(assert (=> d!1208745 t!336851))

(declare-fun b_and!312549 () Bool)

(assert (= b_and!312521 (and (=> t!336851 result!296310) b_and!312549)))

(assert (=> d!1208745 m!4673031))

(declare-fun m!4674301 () Bool)

(assert (=> d!1208745 m!4674301))

(assert (=> b!4065457 d!1208745))

(declare-fun d!1208747 () Bool)

(assert (=> d!1208747 (not (matchR!5834 (regex!6976 (rule!10074 token!484)) lt!1454287))))

(declare-fun lt!1454614 () Unit!62945)

(assert (=> d!1208747 (= lt!1454614 (choose!24762 thiss!21717 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454287 lt!1454264 (rule!10074 token!484)))))

(assert (=> d!1208747 (isPrefix!4063 lt!1454287 lt!1454264)))

(assert (=> d!1208747 (= (lemmaMaxPrefNoSmallerRuleMatches!304 thiss!21717 rules!2999 (rule!10074 (_1!24375 (v!39815 lt!1454295))) lt!1454287 lt!1454264 (rule!10074 token!484)) lt!1454614)))

(declare-fun bs!592380 () Bool)

(assert (= bs!592380 d!1208747))

(assert (=> bs!592380 m!4672959))

(declare-fun m!4674303 () Bool)

(assert (=> bs!592380 m!4674303))

(assert (=> bs!592380 m!4673019))

(assert (=> b!4065414 d!1208747))

(declare-fun b!4066264 () Bool)

(declare-fun e!2523448 () Bool)

(declare-fun e!2523444 () Bool)

(assert (=> b!4066264 (= e!2523448 e!2523444)))

(declare-fun res!1659566 () Bool)

(assert (=> b!4066264 (=> res!1659566 e!2523444)))

(declare-fun call!288292 () Bool)

(assert (=> b!4066264 (= res!1659566 call!288292)))

(declare-fun b!4066265 () Bool)

(declare-fun res!1659560 () Bool)

(assert (=> b!4066265 (=> res!1659560 e!2523444)))

(assert (=> b!4066265 (= res!1659560 (not (isEmpty!25921 (tail!6311 lt!1454287))))))

(declare-fun b!4066266 () Bool)

(declare-fun e!2523446 () Bool)

(assert (=> b!4066266 (= e!2523446 (matchR!5834 (derivativeStep!3581 (regex!6976 (rule!10074 token!484)) (head!8579 lt!1454287)) (tail!6311 lt!1454287)))))

(declare-fun b!4066267 () Bool)

(declare-fun e!2523443 () Bool)

(declare-fun lt!1454615 () Bool)

(assert (=> b!4066267 (= e!2523443 (= lt!1454615 call!288292))))

(declare-fun b!4066269 () Bool)

(declare-fun e!2523445 () Bool)

(assert (=> b!4066269 (= e!2523443 e!2523445)))

(declare-fun c!702109 () Bool)

(assert (=> b!4066269 (= c!702109 ((_ is EmptyLang!11881) (regex!6976 (rule!10074 token!484))))))

(declare-fun b!4066270 () Bool)

(assert (=> b!4066270 (= e!2523445 (not lt!1454615))))

(declare-fun b!4066271 () Bool)

(declare-fun res!1659562 () Bool)

(declare-fun e!2523442 () Bool)

(assert (=> b!4066271 (=> res!1659562 e!2523442)))

(declare-fun e!2523447 () Bool)

(assert (=> b!4066271 (= res!1659562 e!2523447)))

(declare-fun res!1659567 () Bool)

(assert (=> b!4066271 (=> (not res!1659567) (not e!2523447))))

(assert (=> b!4066271 (= res!1659567 lt!1454615)))

(declare-fun bm!288287 () Bool)

(assert (=> bm!288287 (= call!288292 (isEmpty!25921 lt!1454287))))

(declare-fun b!4066272 () Bool)

(declare-fun res!1659565 () Bool)

(assert (=> b!4066272 (=> (not res!1659565) (not e!2523447))))

(assert (=> b!4066272 (= res!1659565 (not call!288292))))

(declare-fun d!1208749 () Bool)

(assert (=> d!1208749 e!2523443))

(declare-fun c!702108 () Bool)

(assert (=> d!1208749 (= c!702108 ((_ is EmptyExpr!11881) (regex!6976 (rule!10074 token!484))))))

(assert (=> d!1208749 (= lt!1454615 e!2523446)))

(declare-fun c!702107 () Bool)

(assert (=> d!1208749 (= c!702107 (isEmpty!25921 lt!1454287))))

(assert (=> d!1208749 (validRegex!5376 (regex!6976 (rule!10074 token!484)))))

(assert (=> d!1208749 (= (matchR!5834 (regex!6976 (rule!10074 token!484)) lt!1454287) lt!1454615)))

(declare-fun b!4066268 () Bool)

(declare-fun res!1659561 () Bool)

(assert (=> b!4066268 (=> res!1659561 e!2523442)))

(assert (=> b!4066268 (= res!1659561 (not ((_ is ElementMatch!11881) (regex!6976 (rule!10074 token!484)))))))

(assert (=> b!4066268 (= e!2523445 e!2523442)))

(declare-fun b!4066273 () Bool)

(assert (=> b!4066273 (= e!2523446 (nullable!4176 (regex!6976 (rule!10074 token!484))))))

(declare-fun b!4066274 () Bool)

(declare-fun res!1659563 () Bool)

(assert (=> b!4066274 (=> (not res!1659563) (not e!2523447))))

(assert (=> b!4066274 (= res!1659563 (isEmpty!25921 (tail!6311 lt!1454287)))))

(declare-fun b!4066275 () Bool)

(assert (=> b!4066275 (= e!2523442 e!2523448)))

(declare-fun res!1659564 () Bool)

(assert (=> b!4066275 (=> (not res!1659564) (not e!2523448))))

(assert (=> b!4066275 (= res!1659564 (not lt!1454615))))

(declare-fun b!4066276 () Bool)

(assert (=> b!4066276 (= e!2523444 (not (= (head!8579 lt!1454287) (c!701967 (regex!6976 (rule!10074 token!484))))))))

(declare-fun b!4066277 () Bool)

(assert (=> b!4066277 (= e!2523447 (= (head!8579 lt!1454287) (c!701967 (regex!6976 (rule!10074 token!484)))))))

(assert (= (and d!1208749 c!702107) b!4066273))

(assert (= (and d!1208749 (not c!702107)) b!4066266))

(assert (= (and d!1208749 c!702108) b!4066267))

(assert (= (and d!1208749 (not c!702108)) b!4066269))

(assert (= (and b!4066269 c!702109) b!4066270))

(assert (= (and b!4066269 (not c!702109)) b!4066268))

(assert (= (and b!4066268 (not res!1659561)) b!4066271))

(assert (= (and b!4066271 res!1659567) b!4066272))

(assert (= (and b!4066272 res!1659565) b!4066274))

(assert (= (and b!4066274 res!1659563) b!4066277))

(assert (= (and b!4066271 (not res!1659562)) b!4066275))

(assert (= (and b!4066275 res!1659564) b!4066264))

(assert (= (and b!4066264 (not res!1659566)) b!4066265))

(assert (= (and b!4066265 (not res!1659560)) b!4066276))

(assert (= (or b!4066267 b!4066264 b!4066272) bm!288287))

(assert (=> b!4066277 m!4673661))

(assert (=> b!4066265 m!4673665))

(assert (=> b!4066265 m!4673665))

(assert (=> b!4066265 m!4674089))

(assert (=> b!4066276 m!4673661))

(assert (=> b!4066273 m!4674023))

(assert (=> b!4066274 m!4673665))

(assert (=> b!4066274 m!4673665))

(assert (=> b!4066274 m!4674089))

(assert (=> b!4066266 m!4673661))

(assert (=> b!4066266 m!4673661))

(declare-fun m!4674305 () Bool)

(assert (=> b!4066266 m!4674305))

(assert (=> b!4066266 m!4673665))

(assert (=> b!4066266 m!4674305))

(assert (=> b!4066266 m!4673665))

(declare-fun m!4674307 () Bool)

(assert (=> b!4066266 m!4674307))

(assert (=> d!1208749 m!4674095))

(assert (=> d!1208749 m!4674031))

(assert (=> bm!288287 m!4674095))

(assert (=> b!4065414 d!1208749))

(declare-fun b!4066282 () Bool)

(declare-fun e!2523451 () Bool)

(declare-fun tp!1230933 () Bool)

(assert (=> b!4066282 (= e!2523451 (and tp_is_empty!20733 tp!1230933))))

(assert (=> b!4065456 (= tp!1230877 e!2523451)))

(assert (= (and b!4065456 ((_ is Cons!43429) (t!336808 suffixResult!105))) b!4066282))

(declare-fun b!4066283 () Bool)

(declare-fun e!2523452 () Bool)

(declare-fun tp!1230934 () Bool)

(assert (=> b!4066283 (= e!2523452 (and tp_is_empty!20733 tp!1230934))))

(assert (=> b!4065450 (= tp!1230875 e!2523452)))

(assert (= (and b!4065450 ((_ is Cons!43429) (originalCharacters!7576 token!484))) b!4066283))

(declare-fun b!4066284 () Bool)

(declare-fun e!2523453 () Bool)

(declare-fun tp!1230935 () Bool)

(assert (=> b!4066284 (= e!2523453 (and tp_is_empty!20733 tp!1230935))))

(assert (=> b!4065455 (= tp!1230880 e!2523453)))

(assert (= (and b!4065455 ((_ is Cons!43429) (t!336808 newSuffix!27))) b!4066284))

(declare-fun b!4066298 () Bool)

(declare-fun e!2523456 () Bool)

(declare-fun tp!1230946 () Bool)

(declare-fun tp!1230950 () Bool)

(assert (=> b!4066298 (= e!2523456 (and tp!1230946 tp!1230950))))

(declare-fun b!4066297 () Bool)

(declare-fun tp!1230949 () Bool)

(assert (=> b!4066297 (= e!2523456 tp!1230949)))

(declare-fun b!4066295 () Bool)

(assert (=> b!4066295 (= e!2523456 tp_is_empty!20733)))

(declare-fun b!4066296 () Bool)

(declare-fun tp!1230947 () Bool)

(declare-fun tp!1230948 () Bool)

(assert (=> b!4066296 (= e!2523456 (and tp!1230947 tp!1230948))))

(assert (=> b!4065412 (= tp!1230882 e!2523456)))

(assert (= (and b!4065412 ((_ is ElementMatch!11881) (regex!6976 (rule!10074 token!484)))) b!4066295))

(assert (= (and b!4065412 ((_ is Concat!19088) (regex!6976 (rule!10074 token!484)))) b!4066296))

(assert (= (and b!4065412 ((_ is Star!11881) (regex!6976 (rule!10074 token!484)))) b!4066297))

(assert (= (and b!4065412 ((_ is Union!11881) (regex!6976 (rule!10074 token!484)))) b!4066298))

(declare-fun b!4066302 () Bool)

(declare-fun e!2523457 () Bool)

(declare-fun tp!1230951 () Bool)

(declare-fun tp!1230955 () Bool)

(assert (=> b!4066302 (= e!2523457 (and tp!1230951 tp!1230955))))

(declare-fun b!4066301 () Bool)

(declare-fun tp!1230954 () Bool)

(assert (=> b!4066301 (= e!2523457 tp!1230954)))

(declare-fun b!4066299 () Bool)

(assert (=> b!4066299 (= e!2523457 tp_is_empty!20733)))

(declare-fun b!4066300 () Bool)

(declare-fun tp!1230952 () Bool)

(declare-fun tp!1230953 () Bool)

(assert (=> b!4066300 (= e!2523457 (and tp!1230952 tp!1230953))))

(assert (=> b!4065444 (= tp!1230881 e!2523457)))

(assert (= (and b!4065444 ((_ is ElementMatch!11881) (regex!6976 (h!48851 rules!2999)))) b!4066299))

(assert (= (and b!4065444 ((_ is Concat!19088) (regex!6976 (h!48851 rules!2999)))) b!4066300))

(assert (= (and b!4065444 ((_ is Star!11881) (regex!6976 (h!48851 rules!2999)))) b!4066301))

(assert (= (and b!4065444 ((_ is Union!11881) (regex!6976 (h!48851 rules!2999)))) b!4066302))

(declare-fun b!4066303 () Bool)

(declare-fun e!2523458 () Bool)

(declare-fun tp!1230956 () Bool)

(assert (=> b!4066303 (= e!2523458 (and tp_is_empty!20733 tp!1230956))))

(assert (=> b!4065448 (= tp!1230876 e!2523458)))

(assert (= (and b!4065448 ((_ is Cons!43429) (t!336808 suffix!1299))) b!4066303))

(declare-fun b!4066304 () Bool)

(declare-fun e!2523459 () Bool)

(declare-fun tp!1230957 () Bool)

(assert (=> b!4066304 (= e!2523459 (and tp_is_empty!20733 tp!1230957))))

(assert (=> b!4065421 (= tp!1230873 e!2523459)))

(assert (= (and b!4065421 ((_ is Cons!43429) (t!336808 newSuffixResult!27))) b!4066304))

(declare-fun b!4066305 () Bool)

(declare-fun e!2523460 () Bool)

(declare-fun tp!1230958 () Bool)

(assert (=> b!4066305 (= e!2523460 (and tp_is_empty!20733 tp!1230958))))

(assert (=> b!4065442 (= tp!1230871 e!2523460)))

(assert (= (and b!4065442 ((_ is Cons!43429) (t!336808 prefix!494))) b!4066305))

(declare-fun b!4066316 () Bool)

(declare-fun b_free!113109 () Bool)

(declare-fun b_next!113813 () Bool)

(assert (=> b!4066316 (= b_free!113109 (not b_next!113813))))

(declare-fun t!336853 () Bool)

(declare-fun tb!244521 () Bool)

(assert (=> (and b!4066316 (= (toValue!9536 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toValue!9536 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))) t!336853) tb!244521))

(declare-fun result!296318 () Bool)

(assert (= result!296318 result!296270))

(assert (=> d!1208485 t!336853))

(declare-fun tb!244523 () Bool)

(declare-fun t!336855 () Bool)

(assert (=> (and b!4066316 (= (toValue!9536 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toValue!9536 (transformation!6976 (rule!10074 token!484)))) t!336855) tb!244523))

(declare-fun result!296320 () Bool)

(assert (= result!296320 result!296308))

(assert (=> d!1208745 t!336855))

(declare-fun tp!1230970 () Bool)

(declare-fun b_and!312551 () Bool)

(assert (=> b!4066316 (= tp!1230970 (and (=> t!336853 result!296318) (=> t!336855 result!296320) b_and!312551))))

(declare-fun b_free!113111 () Bool)

(declare-fun b_next!113815 () Bool)

(assert (=> b!4066316 (= b_free!113111 (not b_next!113815))))

(declare-fun tb!244525 () Bool)

(declare-fun t!336857 () Bool)

(assert (=> (and b!4066316 (= (toChars!9395 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toChars!9395 (transformation!6976 (rule!10074 (_1!24375 (v!39815 lt!1454295)))))) t!336857) tb!244525))

(declare-fun result!296322 () Bool)

(assert (= result!296322 result!296276))

(assert (=> d!1208497 t!336857))

(declare-fun t!336859 () Bool)

(declare-fun tb!244527 () Bool)

(assert (=> (and b!4066316 (= (toChars!9395 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toChars!9395 (transformation!6976 (rule!10074 token!484)))) t!336859) tb!244527))

(declare-fun result!296324 () Bool)

(assert (= result!296324 result!296304))

(assert (=> d!1208635 t!336859))

(assert (=> b!4066090 t!336859))

(declare-fun b_and!312553 () Bool)

(declare-fun tp!1230968 () Bool)

(assert (=> b!4066316 (= tp!1230968 (and (=> t!336857 result!296322) (=> t!336859 result!296324) b_and!312553))))

(declare-fun e!2523470 () Bool)

(assert (=> b!4066316 (= e!2523470 (and tp!1230970 tp!1230968))))

(declare-fun e!2523472 () Bool)

(declare-fun tp!1230967 () Bool)

(declare-fun b!4066315 () Bool)

(assert (=> b!4066315 (= e!2523472 (and tp!1230967 (inv!58055 (tag!7836 (h!48851 (t!336810 rules!2999)))) (inv!58058 (transformation!6976 (h!48851 (t!336810 rules!2999)))) e!2523470))))

(declare-fun b!4066314 () Bool)

(declare-fun e!2523469 () Bool)

(declare-fun tp!1230969 () Bool)

(assert (=> b!4066314 (= e!2523469 (and e!2523472 tp!1230969))))

(assert (=> b!4065415 (= tp!1230874 e!2523469)))

(assert (= b!4066315 b!4066316))

(assert (= b!4066314 b!4066315))

(assert (= (and b!4065415 ((_ is Cons!43431) (t!336810 rules!2999))) b!4066314))

(declare-fun m!4674309 () Bool)

(assert (=> b!4066315 m!4674309))

(declare-fun m!4674311 () Bool)

(assert (=> b!4066315 m!4674311))

(declare-fun b_lambda!118801 () Bool)

(assert (= b_lambda!118797 (or (and b!4065427 b_free!113099 (= (toChars!9395 (transformation!6976 (h!48851 rules!2999))) (toChars!9395 (transformation!6976 (rule!10074 token!484))))) (and b!4065433 b_free!113103) (and b!4066316 b_free!113111 (= (toChars!9395 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toChars!9395 (transformation!6976 (rule!10074 token!484))))) b_lambda!118801)))

(declare-fun b_lambda!118803 () Bool)

(assert (= b_lambda!118795 (or (and b!4065427 b_free!113099 (= (toChars!9395 (transformation!6976 (h!48851 rules!2999))) (toChars!9395 (transformation!6976 (rule!10074 token!484))))) (and b!4065433 b_free!113103) (and b!4066316 b_free!113111 (= (toChars!9395 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toChars!9395 (transformation!6976 (rule!10074 token!484))))) b_lambda!118803)))

(declare-fun b_lambda!118805 () Bool)

(assert (= b_lambda!118799 (or (and b!4065427 b_free!113097 (= (toValue!9536 (transformation!6976 (h!48851 rules!2999))) (toValue!9536 (transformation!6976 (rule!10074 token!484))))) (and b!4065433 b_free!113101) (and b!4066316 b_free!113109 (= (toValue!9536 (transformation!6976 (h!48851 (t!336810 rules!2999)))) (toValue!9536 (transformation!6976 (rule!10074 token!484))))) b_lambda!118805)))

(check-sat b_and!312545 (not b!4066188) (not d!1208727) (not b!4066222) b_and!312547 (not b!4066217) (not b!4065677) (not b!4066211) (not b!4065726) (not b!4066139) (not b!4066161) (not b!4066262) b_and!312553 (not d!1208649) (not b!4065834) (not b!4066152) (not b!4066187) (not d!1208417) (not b_next!113805) (not b!4065835) b_and!312549 (not d!1208699) (not d!1208621) (not bm!288283) (not b_next!113801) (not b!4066041) (not d!1208741) (not b!4066150) (not b!4066191) (not b!4066195) (not b!4066144) (not d!1208617) (not b!4066199) (not d!1208577) (not b!4065644) (not b!4066259) (not d!1208371) (not b!4066209) (not b!4065522) (not b!4066261) (not d!1208635) (not b!4066314) (not b!4065730) (not b!4066196) (not b!4066236) (not b!4065517) tp_is_empty!20733 (not d!1208661) (not b!4066050) (not b!4065926) (not b!4066154) (not b!4066304) (not d!1208743) (not d!1208707) (not b!4065760) (not b!4065794) (not tb!244513) (not b!4066039) (not d!1208739) (not b!4065604) (not d!1208695) (not b_next!113803) (not d!1208563) (not tb!244489) (not b!4066254) (not d!1208677) (not b!4065603) (not b!4065643) (not d!1208425) (not b!4066245) (not b!4066049) (not b!4066298) (not b!4066147) (not b!4065930) (not b!4065927) (not d!1208639) (not b!4066179) (not d!1208723) (not b!4066090) (not b!4066084) (not bm!288273) (not bm!288285) (not b!4066228) (not b!4066282) (not d!1208633) (not b!4065928) (not b_next!113813) (not b!4066252) (not d!1208497) (not b!4066121) (not b!4066053) (not d!1208705) (not b!4066238) (not b!4066235) (not d!1208667) (not b!4066263) (not b!4066256) (not b!4066186) (not d!1208735) (not b!4066226) (not b!4066266) (not b!4066257) (not b!4065885) (not d!1208463) (not d!1208441) (not b!4066273) (not d!1208729) (not b!4066210) (not b_lambda!118781) (not b!4065596) (not b!4066260) (not d!1208571) (not b!4066284) (not b!4066063) (not d!1208615) (not b!4066130) (not d!1208711) (not d!1208747) (not b!4065597) (not b!4066133) (not b!4066165) (not b!4066315) (not d!1208453) (not d!1208369) (not b!4066276) (not d!1208589) (not d!1208717) (not d!1208645) (not b!4066132) (not b!4065757) (not b!4066246) (not b!4066058) (not b!4066233) b_and!312551 (not b!4065489) (not d!1208457) (not b!4065767) (not b!4066218) (not b!4065488) (not d!1208671) (not b!4066300) (not d!1208367) (not d!1208627) (not b!4066225) (not b!4066060) (not b!4066176) (not b!4066198) (not d!1208663) (not b!4065600) (not b!4066155) (not d!1208687) (not b!4066141) (not b!4066221) (not b!4066240) (not b!4066182) (not b!4066213) (not d!1208647) (not b!4066242) (not b!4066160) (not b!4065599) (not d!1208559) (not b!4066214) (not b!4066265) b_and!312543 (not d!1208431) (not d!1208715) (not b!4066283) (not b!4065833) (not b!4066207) (not b!4066248) (not b!4065831) (not b!4066135) (not b!4066183) (not b!4066184) (not d!1208483) (not b!4066301) (not b!4066151) (not b!4066232) (not d!1208709) (not d!1208701) (not b!4066037) (not d!1208395) (not d!1208749) (not b!4065675) (not tb!244493) (not b!4065729) (not d!1208689) (not b_lambda!118805) (not b!4065759) (not b!4065645) (not b!4066172) (not b!4066180) (not d!1208641) (not b!4066044) (not b!4066244) (not d!1208541) (not d!1208655) (not d!1208713) (not d!1208721) (not bm!288287) (not b!4065521) (not b!4066143) (not d!1208433) (not b!4066136) (not b!4066190) (not b!4066249) (not b!4066080) (not b_next!113815) (not d!1208737) (not d!1208619) (not b!4066129) (not b!4066069) (not b_lambda!118801) (not b!4066253) (not b!4065731) (not b!4066034) (not b!4066173) (not b!4066241) (not b!4066043) (not b!4066231) (not b!4066237) (not b!4066303) (not b_next!113807) (not b!4066122) (not b!4066146) (not b!4066194) (not d!1208517) (not d!1208679) (not b!4065768) (not b!4066178) (not b!4065602) (not d!1208623) (not tb!244517) (not d!1208375) (not b!4066206) (not b!4066040) (not b!4066192) (not b!4066296) (not b!4066164) (not d!1208637) (not d!1208673) (not b!4065598) (not b!4066035) (not d!1208653) (not b_lambda!118783) (not d!1208435) (not d!1208493) (not b!4066062) (not b!4066137) (not bm!288284) (not b!4066239) (not b!4066297) (not b!4066162) (not b!4066046) (not b!4066091) (not d!1208643) (not b!4066038) (not b_lambda!118803) (not bm!288286) (not b!4066054) (not b!4066305) (not b!4066274) (not b!4066033) (not b!4066175) (not b!4066277) (not d!1208731) (not b!4066157) (not b!4065678) (not b!4065518) (not b!4065486) (not d!1208665) (not b!4066302) (not b!4066255))
(check-sat (not b_next!113801) (not b_next!113803) (not b_next!113813) b_and!312551 b_and!312543 (not b_next!113815) (not b_next!113807) b_and!312545 b_and!312547 b_and!312553 (not b_next!113805) b_and!312549)
