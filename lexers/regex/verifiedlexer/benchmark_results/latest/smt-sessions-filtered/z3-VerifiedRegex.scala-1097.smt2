; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56472 () Bool)

(assert start!56472)

(declare-fun b!597345 () Bool)

(declare-fun b_free!16941 () Bool)

(declare-fun b_next!16957 () Bool)

(assert (=> b!597345 (= b_free!16941 (not b_next!16957))))

(declare-fun tp!186249 () Bool)

(declare-fun b_and!58963 () Bool)

(assert (=> b!597345 (= tp!186249 b_and!58963)))

(declare-fun b_free!16943 () Bool)

(declare-fun b_next!16959 () Bool)

(assert (=> b!597345 (= b_free!16943 (not b_next!16959))))

(declare-fun tp!186243 () Bool)

(declare-fun b_and!58965 () Bool)

(assert (=> b!597345 (= tp!186243 b_and!58965)))

(declare-fun b!597335 () Bool)

(declare-fun b_free!16945 () Bool)

(declare-fun b_next!16961 () Bool)

(assert (=> b!597335 (= b_free!16945 (not b_next!16961))))

(declare-fun tp!186247 () Bool)

(declare-fun b_and!58967 () Bool)

(assert (=> b!597335 (= tp!186247 b_and!58967)))

(declare-fun b_free!16947 () Bool)

(declare-fun b_next!16963 () Bool)

(assert (=> b!597335 (= b_free!16947 (not b_next!16963))))

(declare-fun tp!186250 () Bool)

(declare-fun b_and!58969 () Bool)

(assert (=> b!597335 (= tp!186250 b_and!58969)))

(declare-fun b!597332 () Bool)

(declare-fun e!361699 () Bool)

(declare-fun e!361697 () Bool)

(assert (=> b!597332 (= e!361699 e!361697)))

(declare-fun res!258047 () Bool)

(assert (=> b!597332 (=> (not res!258047) (not e!361697))))

(declare-datatypes ((C!3952 0))(
  ( (C!3953 (val!2202 Int)) )
))
(declare-datatypes ((Regex!1515 0))(
  ( (ElementMatch!1515 (c!111053 C!3952)) (Concat!2720 (regOne!3542 Regex!1515) (regTwo!3542 Regex!1515)) (EmptyExpr!1515) (Star!1515 (reg!1844 Regex!1515)) (EmptyLang!1515) (Union!1515 (regOne!3543 Regex!1515) (regTwo!3543 Regex!1515)) )
))
(declare-datatypes ((List!5968 0))(
  ( (Nil!5958) (Cons!5958 (h!11359 (_ BitVec 16)) (t!79549 List!5968)) )
))
(declare-datatypes ((List!5969 0))(
  ( (Nil!5959) (Cons!5959 (h!11360 C!3952) (t!79550 List!5969)) )
))
(declare-datatypes ((IArray!3797 0))(
  ( (IArray!3798 (innerList!1956 List!5969)) )
))
(declare-datatypes ((Conc!1898 0))(
  ( (Node!1898 (left!4801 Conc!1898) (right!5131 Conc!1898) (csize!4026 Int) (cheight!2109 Int)) (Leaf!2996 (xs!4535 IArray!3797) (csize!4027 Int)) (Empty!1898) )
))
(declare-datatypes ((BalanceConc!3804 0))(
  ( (BalanceConc!3805 (c!111054 Conc!1898)) )
))
(declare-datatypes ((TokenValue!1205 0))(
  ( (FloatLiteralValue!2410 (text!8880 List!5968)) (TokenValueExt!1204 (__x!4308 Int)) (Broken!6025 (value!38499 List!5968)) (Object!1214) (End!1205) (Def!1205) (Underscore!1205) (Match!1205) (Else!1205) (Error!1205) (Case!1205) (If!1205) (Extends!1205) (Abstract!1205) (Class!1205) (Val!1205) (DelimiterValue!2410 (del!1265 List!5968)) (KeywordValue!1211 (value!38500 List!5968)) (CommentValue!2410 (value!38501 List!5968)) (WhitespaceValue!2410 (value!38502 List!5968)) (IndentationValue!1205 (value!38503 List!5968)) (String!7768) (Int32!1205) (Broken!6026 (value!38504 List!5968)) (Boolean!1206) (Unit!10840) (OperatorValue!1208 (op!1265 List!5968)) (IdentifierValue!2410 (value!38505 List!5968)) (IdentifierValue!2411 (value!38506 List!5968)) (WhitespaceValue!2411 (value!38507 List!5968)) (True!2410) (False!2410) (Broken!6027 (value!38508 List!5968)) (Broken!6028 (value!38509 List!5968)) (True!2411) (RightBrace!1205) (RightBracket!1205) (Colon!1205) (Null!1205) (Comma!1205) (LeftBracket!1205) (False!2411) (LeftBrace!1205) (ImaginaryLiteralValue!1205 (text!8881 List!5968)) (StringLiteralValue!3615 (value!38510 List!5968)) (EOFValue!1205 (value!38511 List!5968)) (IdentValue!1205 (value!38512 List!5968)) (DelimiterValue!2411 (value!38513 List!5968)) (DedentValue!1205 (value!38514 List!5968)) (NewLineValue!1205 (value!38515 List!5968)) (IntegerValue!3615 (value!38516 (_ BitVec 32)) (text!8882 List!5968)) (IntegerValue!3616 (value!38517 Int) (text!8883 List!5968)) (Times!1205) (Or!1205) (Equal!1205) (Minus!1205) (Broken!6029 (value!38518 List!5968)) (And!1205) (Div!1205) (LessEqual!1205) (Mod!1205) (Concat!2721) (Not!1205) (Plus!1205) (SpaceValue!1205 (value!38519 List!5968)) (IntegerValue!3617 (value!38520 Int) (text!8884 List!5968)) (StringLiteralValue!3616 (text!8885 List!5968)) (FloatLiteralValue!2411 (text!8886 List!5968)) (BytesLiteralValue!1205 (value!38521 List!5968)) (CommentValue!2411 (value!38522 List!5968)) (StringLiteralValue!3617 (value!38523 List!5968)) (ErrorTokenValue!1205 (msg!1266 List!5968)) )
))
(declare-datatypes ((String!7769 0))(
  ( (String!7770 (value!38524 String)) )
))
(declare-datatypes ((TokenValueInjection!2178 0))(
  ( (TokenValueInjection!2179 (toValue!2072 Int) (toChars!1931 Int)) )
))
(declare-datatypes ((Rule!2162 0))(
  ( (Rule!2163 (regex!1181 Regex!1515) (tag!1443 String!7769) (isSeparator!1181 Bool) (transformation!1181 TokenValueInjection!2178)) )
))
(declare-datatypes ((Token!2098 0))(
  ( (Token!2099 (value!38525 TokenValue!1205) (rule!1951 Rule!2162) (size!4696 Int) (originalCharacters!1220 List!5969)) )
))
(declare-datatypes ((tuple2!6856 0))(
  ( (tuple2!6857 (_1!3692 Token!2098) (_2!3692 List!5969)) )
))
(declare-datatypes ((Option!1532 0))(
  ( (None!1531) (Some!1531 (v!16418 tuple2!6856)) )
))
(declare-fun lt!254104 () Option!1532)

(declare-fun isDefined!1343 (Option!1532) Bool)

(assert (=> b!597332 (= res!258047 (isDefined!1343 lt!254104))))

(declare-datatypes ((List!5970 0))(
  ( (Nil!5960) (Cons!5960 (h!11361 Rule!2162) (t!79551 List!5970)) )
))
(declare-fun rules!3103 () List!5970)

(declare-datatypes ((LexerInterface!1067 0))(
  ( (LexerInterfaceExt!1064 (__x!4309 Int)) (Lexer!1065) )
))
(declare-fun thiss!22590 () LexerInterface!1067)

(declare-fun lt!254084 () List!5969)

(declare-fun maxPrefix!765 (LexerInterface!1067 List!5970 List!5969) Option!1532)

(assert (=> b!597332 (= lt!254104 (maxPrefix!765 thiss!22590 rules!3103 lt!254084))))

(declare-fun input!2705 () List!5969)

(declare-fun suffix!1342 () List!5969)

(declare-fun ++!1669 (List!5969 List!5969) List!5969)

(assert (=> b!597332 (= lt!254084 (++!1669 input!2705 suffix!1342))))

(declare-fun e!361696 () Bool)

(declare-fun e!361687 () Bool)

(declare-fun tp!186252 () Bool)

(declare-fun b!597333 () Bool)

(declare-fun inv!7549 (String!7769) Bool)

(declare-fun inv!7552 (TokenValueInjection!2178) Bool)

(assert (=> b!597333 (= e!361687 (and tp!186252 (inv!7549 (tag!1443 (h!11361 rules!3103))) (inv!7552 (transformation!1181 (h!11361 rules!3103))) e!361696))))

(declare-fun b!597334 () Bool)

(declare-fun e!361703 () Bool)

(declare-fun e!361705 () Bool)

(assert (=> b!597334 (= e!361703 e!361705)))

(declare-fun res!258048 () Bool)

(assert (=> b!597334 (=> (not res!258048) (not e!361705))))

(declare-fun lt!254099 () Option!1532)

(get-info :version)

(assert (=> b!597334 (= res!258048 ((_ is Some!1531) lt!254099))))

(assert (=> b!597334 (= lt!254099 (maxPrefix!765 thiss!22590 rules!3103 input!2705))))

(declare-fun e!361700 () Bool)

(assert (=> b!597335 (= e!361700 (and tp!186247 tp!186250))))

(declare-fun b!597336 () Bool)

(declare-fun e!361701 () Bool)

(assert (=> b!597336 (= e!361705 e!361701)))

(declare-fun res!258057 () Bool)

(assert (=> b!597336 (=> (not res!258057) (not e!361701))))

(declare-fun lt!254105 () List!5969)

(assert (=> b!597336 (= res!258057 (= lt!254105 lt!254084))))

(declare-fun lt!254098 () List!5969)

(assert (=> b!597336 (= lt!254105 (++!1669 lt!254098 suffix!1342))))

(declare-fun b!597337 () Bool)

(declare-datatypes ((Unit!10841 0))(
  ( (Unit!10842) )
))
(declare-fun e!361691 () Unit!10841)

(declare-fun Unit!10843 () Unit!10841)

(assert (=> b!597337 (= e!361691 Unit!10843)))

(assert (=> b!597337 false))

(declare-fun b!597338 () Bool)

(declare-fun lt!254108 () List!5969)

(declare-fun e!361690 () Bool)

(declare-fun lt!254097 () Int)

(declare-fun lt!254085 () List!5969)

(declare-fun lt!254102 () TokenValue!1205)

(assert (=> b!597338 (= e!361690 (and (= (size!4696 (_1!3692 (v!16418 lt!254099))) lt!254097) (= (originalCharacters!1220 (_1!3692 (v!16418 lt!254099))) lt!254085) (= (v!16418 lt!254099) (tuple2!6857 (Token!2099 lt!254102 (rule!1951 (_1!3692 (v!16418 lt!254099))) lt!254097 lt!254085) lt!254108))))))

(declare-fun b!597339 () Bool)

(declare-fun res!258046 () Bool)

(declare-fun e!361702 () Bool)

(assert (=> b!597339 (=> (not res!258046) (not e!361702))))

(declare-fun isEmpty!4301 (List!5970) Bool)

(assert (=> b!597339 (= res!258046 (not (isEmpty!4301 rules!3103)))))

(declare-fun e!361686 () Bool)

(declare-fun token!491 () Token!2098)

(declare-fun lt!254100 () Int)

(declare-fun b!597340 () Bool)

(assert (=> b!597340 (= e!361686 (and (= (size!4696 token!491) lt!254100) (= (originalCharacters!1220 token!491) lt!254098)))))

(declare-fun res!258045 () Bool)

(assert (=> start!56472 (=> (not res!258045) (not e!361702))))

(assert (=> start!56472 (= res!258045 ((_ is Lexer!1065) thiss!22590))))

(assert (=> start!56472 e!361702))

(declare-fun e!361689 () Bool)

(assert (=> start!56472 e!361689))

(declare-fun e!361694 () Bool)

(assert (=> start!56472 e!361694))

(declare-fun e!361692 () Bool)

(declare-fun inv!7553 (Token!2098) Bool)

(assert (=> start!56472 (and (inv!7553 token!491) e!361692)))

(assert (=> start!56472 true))

(declare-fun e!361704 () Bool)

(assert (=> start!56472 e!361704))

(declare-fun b!597341 () Bool)

(declare-fun Unit!10844 () Unit!10841)

(assert (=> b!597341 (= e!361691 Unit!10844)))

(declare-fun b!597342 () Bool)

(declare-fun res!258051 () Bool)

(assert (=> b!597342 (=> (not res!258051) (not e!361690))))

(declare-fun size!4697 (List!5969) Int)

(assert (=> b!597342 (= res!258051 (= (size!4696 (_1!3692 (v!16418 lt!254099))) (size!4697 (originalCharacters!1220 (_1!3692 (v!16418 lt!254099))))))))

(declare-fun b!597343 () Bool)

(assert (=> b!597343 (= e!361697 e!361703)))

(declare-fun res!258054 () Bool)

(assert (=> b!597343 (=> (not res!258054) (not e!361703))))

(declare-fun lt!254110 () tuple2!6856)

(assert (=> b!597343 (= res!258054 (and (= (_1!3692 lt!254110) token!491) (= (_2!3692 lt!254110) suffix!1342)))))

(declare-fun get!2286 (Option!1532) tuple2!6856)

(assert (=> b!597343 (= lt!254110 (get!2286 lt!254104))))

(declare-fun lt!254086 () List!5969)

(declare-fun e!361688 () Bool)

(declare-fun b!597344 () Bool)

(declare-fun lt!254089 () TokenValue!1205)

(assert (=> b!597344 (= e!361688 (= (tuple2!6857 token!491 suffix!1342) (tuple2!6857 (Token!2099 lt!254089 (rule!1951 token!491) lt!254100 lt!254098) lt!254086)))))

(assert (=> b!597344 e!361686))

(declare-fun res!258050 () Bool)

(assert (=> b!597344 (=> (not res!258050) (not e!361686))))

(assert (=> b!597344 (= res!258050 (= (value!38525 token!491) lt!254089))))

(declare-fun apply!1434 (TokenValueInjection!2178 BalanceConc!3804) TokenValue!1205)

(declare-fun seqFromList!1357 (List!5969) BalanceConc!3804)

(assert (=> b!597344 (= lt!254089 (apply!1434 (transformation!1181 (rule!1951 token!491)) (seqFromList!1357 lt!254098)))))

(assert (=> b!597344 (= suffix!1342 lt!254086)))

(declare-fun lt!254109 () Unit!10841)

(declare-fun lemmaSamePrefixThenSameSuffix!522 (List!5969 List!5969 List!5969 List!5969 List!5969) Unit!10841)

(assert (=> b!597344 (= lt!254109 (lemmaSamePrefixThenSameSuffix!522 lt!254098 suffix!1342 lt!254098 lt!254086 lt!254084))))

(declare-fun getSuffix!326 (List!5969 List!5969) List!5969)

(assert (=> b!597344 (= lt!254086 (getSuffix!326 lt!254084 lt!254098))))

(assert (=> b!597345 (= e!361696 (and tp!186249 tp!186243))))

(declare-fun b!597346 () Bool)

(declare-fun res!258052 () Bool)

(assert (=> b!597346 (=> (not res!258052) (not e!361702))))

(declare-fun isEmpty!4302 (List!5969) Bool)

(assert (=> b!597346 (= res!258052 (not (isEmpty!4302 input!2705)))))

(declare-fun b!597347 () Bool)

(assert (=> b!597347 (= e!361701 (not e!361688))))

(declare-fun res!258058 () Bool)

(assert (=> b!597347 (=> res!258058 e!361688)))

(declare-fun isPrefix!809 (List!5969 List!5969) Bool)

(assert (=> b!597347 (= res!258058 (not (isPrefix!809 input!2705 lt!254105)))))

(assert (=> b!597347 (isPrefix!809 lt!254098 lt!254105)))

(declare-fun lt!254094 () Unit!10841)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!654 (List!5969 List!5969) Unit!10841)

(assert (=> b!597347 (= lt!254094 (lemmaConcatTwoListThenFirstIsPrefix!654 lt!254098 suffix!1342))))

(assert (=> b!597347 (isPrefix!809 input!2705 lt!254084)))

(declare-fun lt!254091 () Unit!10841)

(assert (=> b!597347 (= lt!254091 (lemmaConcatTwoListThenFirstIsPrefix!654 input!2705 suffix!1342))))

(assert (=> b!597347 e!361690))

(declare-fun res!258049 () Bool)

(assert (=> b!597347 (=> (not res!258049) (not e!361690))))

(assert (=> b!597347 (= res!258049 (= (value!38525 (_1!3692 (v!16418 lt!254099))) lt!254102))))

(assert (=> b!597347 (= lt!254102 (apply!1434 (transformation!1181 (rule!1951 (_1!3692 (v!16418 lt!254099)))) (seqFromList!1357 lt!254085)))))

(declare-fun lt!254107 () Unit!10841)

(declare-fun lemmaInv!289 (TokenValueInjection!2178) Unit!10841)

(assert (=> b!597347 (= lt!254107 (lemmaInv!289 (transformation!1181 (rule!1951 token!491))))))

(declare-fun lt!254092 () Unit!10841)

(assert (=> b!597347 (= lt!254092 (lemmaInv!289 (transformation!1181 (rule!1951 (_1!3692 (v!16418 lt!254099))))))))

(declare-fun ruleValid!379 (LexerInterface!1067 Rule!2162) Bool)

(assert (=> b!597347 (ruleValid!379 thiss!22590 (rule!1951 token!491))))

(declare-fun lt!254087 () Unit!10841)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!226 (LexerInterface!1067 Rule!2162 List!5970) Unit!10841)

(assert (=> b!597347 (= lt!254087 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!226 thiss!22590 (rule!1951 token!491) rules!3103))))

(assert (=> b!597347 (ruleValid!379 thiss!22590 (rule!1951 (_1!3692 (v!16418 lt!254099))))))

(declare-fun lt!254088 () Unit!10841)

(assert (=> b!597347 (= lt!254088 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!226 thiss!22590 (rule!1951 (_1!3692 (v!16418 lt!254099))) rules!3103))))

(assert (=> b!597347 (isPrefix!809 input!2705 input!2705)))

(declare-fun lt!254093 () Unit!10841)

(declare-fun lemmaIsPrefixRefl!545 (List!5969 List!5969) Unit!10841)

(assert (=> b!597347 (= lt!254093 (lemmaIsPrefixRefl!545 input!2705 input!2705))))

(assert (=> b!597347 (= (_2!3692 (v!16418 lt!254099)) lt!254108)))

(declare-fun lt!254095 () Unit!10841)

(assert (=> b!597347 (= lt!254095 (lemmaSamePrefixThenSameSuffix!522 lt!254085 (_2!3692 (v!16418 lt!254099)) lt!254085 lt!254108 input!2705))))

(assert (=> b!597347 (= lt!254108 (getSuffix!326 input!2705 lt!254085))))

(assert (=> b!597347 (isPrefix!809 lt!254085 (++!1669 lt!254085 (_2!3692 (v!16418 lt!254099))))))

(declare-fun lt!254101 () Unit!10841)

(assert (=> b!597347 (= lt!254101 (lemmaConcatTwoListThenFirstIsPrefix!654 lt!254085 (_2!3692 (v!16418 lt!254099))))))

(declare-fun lt!254096 () Unit!10841)

(declare-fun lemmaCharactersSize!240 (Token!2098) Unit!10841)

(assert (=> b!597347 (= lt!254096 (lemmaCharactersSize!240 token!491))))

(declare-fun lt!254090 () Unit!10841)

(assert (=> b!597347 (= lt!254090 (lemmaCharactersSize!240 (_1!3692 (v!16418 lt!254099))))))

(declare-fun lt!254106 () Unit!10841)

(assert (=> b!597347 (= lt!254106 e!361691)))

(declare-fun c!111052 () Bool)

(assert (=> b!597347 (= c!111052 (> lt!254097 lt!254100))))

(assert (=> b!597347 (= lt!254100 (size!4697 lt!254098))))

(assert (=> b!597347 (= lt!254097 (size!4697 lt!254085))))

(declare-fun list!2496 (BalanceConc!3804) List!5969)

(declare-fun charsOf!810 (Token!2098) BalanceConc!3804)

(assert (=> b!597347 (= lt!254085 (list!2496 (charsOf!810 (_1!3692 (v!16418 lt!254099)))))))

(assert (=> b!597347 (= lt!254099 (Some!1531 (v!16418 lt!254099)))))

(declare-fun lt!254103 () Unit!10841)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!254 (List!5969 List!5969 List!5969 List!5969) Unit!10841)

(assert (=> b!597347 (= lt!254103 (lemmaConcatSameAndSameSizesThenSameLists!254 lt!254098 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!597348 () Bool)

(declare-fun tp_is_empty!3385 () Bool)

(declare-fun tp!186245 () Bool)

(assert (=> b!597348 (= e!361704 (and tp_is_empty!3385 tp!186245))))

(declare-fun b!597349 () Bool)

(declare-fun res!258053 () Bool)

(assert (=> b!597349 (=> (not res!258053) (not e!361686))))

(assert (=> b!597349 (= res!258053 (= (size!4696 token!491) (size!4697 (originalCharacters!1220 token!491))))))

(declare-fun b!597350 () Bool)

(declare-fun tp!186251 () Bool)

(assert (=> b!597350 (= e!361689 (and tp_is_empty!3385 tp!186251))))

(declare-fun b!597351 () Bool)

(declare-fun tp!186246 () Bool)

(assert (=> b!597351 (= e!361694 (and e!361687 tp!186246))))

(declare-fun b!597352 () Bool)

(assert (=> b!597352 (= e!361702 e!361699)))

(declare-fun res!258055 () Bool)

(assert (=> b!597352 (=> (not res!258055) (not e!361699))))

(assert (=> b!597352 (= res!258055 (= lt!254098 input!2705))))

(assert (=> b!597352 (= lt!254098 (list!2496 (charsOf!810 token!491)))))

(declare-fun b!597353 () Bool)

(declare-fun res!258056 () Bool)

(assert (=> b!597353 (=> (not res!258056) (not e!361702))))

(declare-fun rulesInvariant!1030 (LexerInterface!1067 List!5970) Bool)

(assert (=> b!597353 (= res!258056 (rulesInvariant!1030 thiss!22590 rules!3103))))

(declare-fun e!361695 () Bool)

(declare-fun tp!186248 () Bool)

(declare-fun b!597354 () Bool)

(assert (=> b!597354 (= e!361695 (and tp!186248 (inv!7549 (tag!1443 (rule!1951 token!491))) (inv!7552 (transformation!1181 (rule!1951 token!491))) e!361700))))

(declare-fun tp!186244 () Bool)

(declare-fun b!597355 () Bool)

(declare-fun inv!21 (TokenValue!1205) Bool)

(assert (=> b!597355 (= e!361692 (and (inv!21 (value!38525 token!491)) e!361695 tp!186244))))

(assert (= (and start!56472 res!258045) b!597339))

(assert (= (and b!597339 res!258046) b!597353))

(assert (= (and b!597353 res!258056) b!597346))

(assert (= (and b!597346 res!258052) b!597352))

(assert (= (and b!597352 res!258055) b!597332))

(assert (= (and b!597332 res!258047) b!597343))

(assert (= (and b!597343 res!258054) b!597334))

(assert (= (and b!597334 res!258048) b!597336))

(assert (= (and b!597336 res!258057) b!597347))

(assert (= (and b!597347 c!111052) b!597337))

(assert (= (and b!597347 (not c!111052)) b!597341))

(assert (= (and b!597347 res!258049) b!597342))

(assert (= (and b!597342 res!258051) b!597338))

(assert (= (and b!597347 (not res!258058)) b!597344))

(assert (= (and b!597344 res!258050) b!597349))

(assert (= (and b!597349 res!258053) b!597340))

(assert (= (and start!56472 ((_ is Cons!5959) suffix!1342)) b!597350))

(assert (= b!597333 b!597345))

(assert (= b!597351 b!597333))

(assert (= (and start!56472 ((_ is Cons!5960) rules!3103)) b!597351))

(assert (= b!597354 b!597335))

(assert (= b!597355 b!597354))

(assert (= start!56472 b!597355))

(assert (= (and start!56472 ((_ is Cons!5959) input!2705)) b!597348))

(declare-fun m!860501 () Bool)

(assert (=> b!597339 m!860501))

(declare-fun m!860503 () Bool)

(assert (=> b!597352 m!860503))

(assert (=> b!597352 m!860503))

(declare-fun m!860505 () Bool)

(assert (=> b!597352 m!860505))

(declare-fun m!860507 () Bool)

(assert (=> b!597349 m!860507))

(declare-fun m!860509 () Bool)

(assert (=> b!597343 m!860509))

(declare-fun m!860511 () Bool)

(assert (=> b!597344 m!860511))

(assert (=> b!597344 m!860511))

(declare-fun m!860513 () Bool)

(assert (=> b!597344 m!860513))

(declare-fun m!860515 () Bool)

(assert (=> b!597344 m!860515))

(declare-fun m!860517 () Bool)

(assert (=> b!597344 m!860517))

(declare-fun m!860519 () Bool)

(assert (=> b!597332 m!860519))

(declare-fun m!860521 () Bool)

(assert (=> b!597332 m!860521))

(declare-fun m!860523 () Bool)

(assert (=> b!597332 m!860523))

(declare-fun m!860525 () Bool)

(assert (=> b!597353 m!860525))

(declare-fun m!860527 () Bool)

(assert (=> b!597334 m!860527))

(declare-fun m!860529 () Bool)

(assert (=> start!56472 m!860529))

(declare-fun m!860531 () Bool)

(assert (=> b!597354 m!860531))

(declare-fun m!860533 () Bool)

(assert (=> b!597354 m!860533))

(declare-fun m!860535 () Bool)

(assert (=> b!597333 m!860535))

(declare-fun m!860537 () Bool)

(assert (=> b!597333 m!860537))

(declare-fun m!860539 () Bool)

(assert (=> b!597347 m!860539))

(declare-fun m!860541 () Bool)

(assert (=> b!597347 m!860541))

(declare-fun m!860543 () Bool)

(assert (=> b!597347 m!860543))

(declare-fun m!860545 () Bool)

(assert (=> b!597347 m!860545))

(declare-fun m!860547 () Bool)

(assert (=> b!597347 m!860547))

(declare-fun m!860549 () Bool)

(assert (=> b!597347 m!860549))

(declare-fun m!860551 () Bool)

(assert (=> b!597347 m!860551))

(declare-fun m!860553 () Bool)

(assert (=> b!597347 m!860553))

(declare-fun m!860555 () Bool)

(assert (=> b!597347 m!860555))

(declare-fun m!860557 () Bool)

(assert (=> b!597347 m!860557))

(declare-fun m!860559 () Bool)

(assert (=> b!597347 m!860559))

(declare-fun m!860561 () Bool)

(assert (=> b!597347 m!860561))

(declare-fun m!860563 () Bool)

(assert (=> b!597347 m!860563))

(declare-fun m!860565 () Bool)

(assert (=> b!597347 m!860565))

(declare-fun m!860567 () Bool)

(assert (=> b!597347 m!860567))

(declare-fun m!860569 () Bool)

(assert (=> b!597347 m!860569))

(assert (=> b!597347 m!860557))

(declare-fun m!860571 () Bool)

(assert (=> b!597347 m!860571))

(declare-fun m!860573 () Bool)

(assert (=> b!597347 m!860573))

(assert (=> b!597347 m!860549))

(declare-fun m!860575 () Bool)

(assert (=> b!597347 m!860575))

(declare-fun m!860577 () Bool)

(assert (=> b!597347 m!860577))

(declare-fun m!860579 () Bool)

(assert (=> b!597347 m!860579))

(declare-fun m!860581 () Bool)

(assert (=> b!597347 m!860581))

(declare-fun m!860583 () Bool)

(assert (=> b!597347 m!860583))

(declare-fun m!860585 () Bool)

(assert (=> b!597347 m!860585))

(assert (=> b!597347 m!860559))

(declare-fun m!860587 () Bool)

(assert (=> b!597347 m!860587))

(declare-fun m!860589 () Bool)

(assert (=> b!597347 m!860589))

(declare-fun m!860591 () Bool)

(assert (=> b!597347 m!860591))

(declare-fun m!860593 () Bool)

(assert (=> b!597336 m!860593))

(declare-fun m!860595 () Bool)

(assert (=> b!597355 m!860595))

(declare-fun m!860597 () Bool)

(assert (=> b!597346 m!860597))

(declare-fun m!860599 () Bool)

(assert (=> b!597342 m!860599))

(check-sat (not b!597350) b_and!58969 tp_is_empty!3385 (not b!597351) (not b!597349) (not b!597355) (not start!56472) (not b_next!16963) (not b!597347) (not b!597334) b_and!58967 (not b!597339) (not b!597333) (not b!597346) (not b!597343) (not b!597352) (not b!597336) b_and!58965 (not b!597353) (not b!597344) (not b!597342) (not b_next!16961) (not b_next!16957) (not b!597354) b_and!58963 (not b_next!16959) (not b!597332) (not b!597348))
(check-sat b_and!58969 b_and!58965 (not b_next!16961) (not b_next!16963) b_and!58967 (not b_next!16957) b_and!58963 (not b_next!16959))
