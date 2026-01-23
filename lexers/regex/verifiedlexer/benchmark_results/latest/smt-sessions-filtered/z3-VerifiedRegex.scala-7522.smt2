; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397490 () Bool)

(assert start!397490)

(declare-fun b!4168995 () Bool)

(declare-fun b_free!120471 () Bool)

(declare-fun b_next!121175 () Bool)

(assert (=> b!4168995 (= b_free!120471 (not b_next!121175))))

(declare-fun tp!1273439 () Bool)

(declare-fun b_and!325377 () Bool)

(assert (=> b!4168995 (= tp!1273439 b_and!325377)))

(declare-fun b_free!120473 () Bool)

(declare-fun b_next!121177 () Bool)

(assert (=> b!4168995 (= b_free!120473 (not b_next!121177))))

(declare-fun tp!1273430 () Bool)

(declare-fun b_and!325379 () Bool)

(assert (=> b!4168995 (= tp!1273430 b_and!325379)))

(declare-fun b!4168993 () Bool)

(declare-fun b_free!120475 () Bool)

(declare-fun b_next!121179 () Bool)

(assert (=> b!4168993 (= b_free!120475 (not b_next!121179))))

(declare-fun tp!1273435 () Bool)

(declare-fun b_and!325381 () Bool)

(assert (=> b!4168993 (= tp!1273435 b_and!325381)))

(declare-fun b_free!120477 () Bool)

(declare-fun b_next!121181 () Bool)

(assert (=> b!4168993 (= b_free!120477 (not b_next!121181))))

(declare-fun tp!1273434 () Bool)

(declare-fun b_and!325383 () Bool)

(assert (=> b!4168993 (= tp!1273434 b_and!325383)))

(declare-fun b!4169005 () Bool)

(declare-fun b_free!120479 () Bool)

(declare-fun b_next!121183 () Bool)

(assert (=> b!4169005 (= b_free!120479 (not b_next!121183))))

(declare-fun tp!1273428 () Bool)

(declare-fun b_and!325385 () Bool)

(assert (=> b!4169005 (= tp!1273428 b_and!325385)))

(declare-fun b_free!120481 () Bool)

(declare-fun b_next!121185 () Bool)

(assert (=> b!4169005 (= b_free!120481 (not b_next!121185))))

(declare-fun tp!1273437 () Bool)

(declare-fun b_and!325387 () Bool)

(assert (=> b!4169005 (= tp!1273437 b_and!325387)))

(declare-fun b!4168990 () Bool)

(declare-fun res!1708071 () Bool)

(declare-fun e!2588097 () Bool)

(assert (=> b!4168990 (=> res!1708071 e!2588097)))

(declare-datatypes ((C!25120 0))(
  ( (C!25121 (val!14722 Int)) )
))
(declare-datatypes ((List!45771 0))(
  ( (Nil!45647) (Cons!45647 (h!51067 C!25120) (t!344250 List!45771)) )
))
(declare-datatypes ((IArray!27547 0))(
  ( (IArray!27548 (innerList!13831 List!45771)) )
))
(declare-datatypes ((Conc!13771 0))(
  ( (Node!13771 (left!34033 Conc!13771) (right!34363 Conc!13771) (csize!27772 Int) (cheight!13982 Int)) (Leaf!21294 (xs!17077 IArray!27547) (csize!27773 Int)) (Empty!13771) )
))
(declare-datatypes ((BalanceConc!27136 0))(
  ( (BalanceConc!27137 (c!712754 Conc!13771)) )
))
(declare-datatypes ((List!45772 0))(
  ( (Nil!45648) (Cons!45648 (h!51068 (_ BitVec 16)) (t!344251 List!45772)) )
))
(declare-datatypes ((TokenValue!7790 0))(
  ( (FloatLiteralValue!15580 (text!54975 List!45772)) (TokenValueExt!7789 (__x!27801 Int)) (Broken!38950 (value!235978 List!45772)) (Object!7913) (End!7790) (Def!7790) (Underscore!7790) (Match!7790) (Else!7790) (Error!7790) (Case!7790) (If!7790) (Extends!7790) (Abstract!7790) (Class!7790) (Val!7790) (DelimiterValue!15580 (del!7850 List!45772)) (KeywordValue!7796 (value!235979 List!45772)) (CommentValue!15580 (value!235980 List!45772)) (WhitespaceValue!15580 (value!235981 List!45772)) (IndentationValue!7790 (value!235982 List!45772)) (String!52815) (Int32!7790) (Broken!38951 (value!235983 List!45772)) (Boolean!7791) (Unit!64726) (OperatorValue!7793 (op!7850 List!45772)) (IdentifierValue!15580 (value!235984 List!45772)) (IdentifierValue!15581 (value!235985 List!45772)) (WhitespaceValue!15581 (value!235986 List!45772)) (True!15580) (False!15580) (Broken!38952 (value!235987 List!45772)) (Broken!38953 (value!235988 List!45772)) (True!15581) (RightBrace!7790) (RightBracket!7790) (Colon!7790) (Null!7790) (Comma!7790) (LeftBracket!7790) (False!15581) (LeftBrace!7790) (ImaginaryLiteralValue!7790 (text!54976 List!45772)) (StringLiteralValue!23370 (value!235989 List!45772)) (EOFValue!7790 (value!235990 List!45772)) (IdentValue!7790 (value!235991 List!45772)) (DelimiterValue!15581 (value!235992 List!45772)) (DedentValue!7790 (value!235993 List!45772)) (NewLineValue!7790 (value!235994 List!45772)) (IntegerValue!23370 (value!235995 (_ BitVec 32)) (text!54977 List!45772)) (IntegerValue!23371 (value!235996 Int) (text!54978 List!45772)) (Times!7790) (Or!7790) (Equal!7790) (Minus!7790) (Broken!38954 (value!235997 List!45772)) (And!7790) (Div!7790) (LessEqual!7790) (Mod!7790) (Concat!20255) (Not!7790) (Plus!7790) (SpaceValue!7790 (value!235998 List!45772)) (IntegerValue!23372 (value!235999 Int) (text!54979 List!45772)) (StringLiteralValue!23371 (text!54980 List!45772)) (FloatLiteralValue!15581 (text!54981 List!45772)) (BytesLiteralValue!7790 (value!236000 List!45772)) (CommentValue!15581 (value!236001 List!45772)) (StringLiteralValue!23372 (value!236002 List!45772)) (ErrorTokenValue!7790 (msg!7851 List!45772)) )
))
(declare-datatypes ((TokenValueInjection!15008 0))(
  ( (TokenValueInjection!15009 (toValue!10240 Int) (toChars!10099 Int)) )
))
(declare-datatypes ((Regex!12465 0))(
  ( (ElementMatch!12465 (c!712755 C!25120)) (Concat!20256 (regOne!25442 Regex!12465) (regTwo!25442 Regex!12465)) (EmptyExpr!12465) (Star!12465 (reg!12794 Regex!12465)) (EmptyLang!12465) (Union!12465 (regOne!25443 Regex!12465) (regTwo!25443 Regex!12465)) )
))
(declare-datatypes ((String!52816 0))(
  ( (String!52817 (value!236003 String)) )
))
(declare-datatypes ((Rule!14920 0))(
  ( (Rule!14921 (regex!7560 Regex!12465) (tag!8424 String!52816) (isSeparator!7560 Bool) (transformation!7560 TokenValueInjection!15008)) )
))
(declare-datatypes ((Token!13858 0))(
  ( (Token!13859 (value!236004 TokenValue!7790) (rule!10616 Rule!14920) (size!33531 Int) (originalCharacters!7960 List!45771)) )
))
(declare-datatypes ((tuple2!43550 0))(
  ( (tuple2!43551 (_1!24909 Token!13858) (_2!24909 List!45771)) )
))
(declare-datatypes ((Option!9768 0))(
  ( (None!9767) (Some!9767 (v!40555 tuple2!43550)) )
))
(declare-fun lt!1484929 () Option!9768)

(declare-datatypes ((List!45773 0))(
  ( (Nil!45649) (Cons!45649 (h!51069 Rule!14920) (t!344252 List!45773)) )
))
(declare-fun rules!3820 () List!45773)

(declare-fun input!3316 () List!45771)

(declare-datatypes ((LexerInterface!7153 0))(
  ( (LexerInterfaceExt!7150 (__x!27802 Int)) (Lexer!7151) )
))
(declare-fun thiss!25889 () LexerInterface!7153)

(declare-fun maxPrefix!4229 (LexerInterface!7153 List!45773 List!45771) Option!9768)

(assert (=> b!4168990 (= res!1708071 (not (= (maxPrefix!4229 thiss!25889 rules!3820 input!3316) lt!1484929)))))

(declare-fun tp!1273436 () Bool)

(declare-fun b!4168991 () Bool)

(declare-fun e!2588096 () Bool)

(declare-fun e!2588098 () Bool)

(declare-fun inv!60179 (String!52816) Bool)

(declare-fun inv!60181 (TokenValueInjection!15008) Bool)

(assert (=> b!4168991 (= e!2588098 (and tp!1273436 (inv!60179 (tag!8424 (h!51069 rules!3820))) (inv!60181 (transformation!7560 (h!51069 rules!3820))) e!2588096))))

(declare-fun tp!1273433 () Bool)

(declare-fun e!2588091 () Bool)

(declare-fun e!2588093 () Bool)

(declare-fun b!4168992 () Bool)

(declare-fun rBis!161 () Rule!14920)

(assert (=> b!4168992 (= e!2588093 (and tp!1273433 (inv!60179 (tag!8424 rBis!161)) (inv!60181 (transformation!7560 rBis!161)) e!2588091))))

(declare-fun res!1708072 () Bool)

(declare-fun e!2588095 () Bool)

(assert (=> start!397490 (=> (not res!1708072) (not e!2588095))))

(get-info :version)

(assert (=> start!397490 (= res!1708072 ((_ is Lexer!7151) thiss!25889))))

(assert (=> start!397490 e!2588095))

(declare-fun e!2588089 () Bool)

(assert (=> start!397490 e!2588089))

(declare-fun e!2588087 () Bool)

(assert (=> start!397490 e!2588087))

(declare-fun e!2588088 () Bool)

(assert (=> start!397490 e!2588088))

(declare-fun e!2588085 () Bool)

(assert (=> start!397490 e!2588085))

(assert (=> start!397490 true))

(assert (=> start!397490 e!2588093))

(declare-fun e!2588090 () Bool)

(assert (=> start!397490 e!2588090))

(assert (=> b!4168993 (= e!2588091 (and tp!1273435 tp!1273434))))

(declare-fun b!4168994 () Bool)

(declare-fun res!1708065 () Bool)

(assert (=> b!4168994 (=> (not res!1708065) (not e!2588095))))

(declare-fun isEmpty!27015 (List!45773) Bool)

(assert (=> b!4168994 (= res!1708065 (not (isEmpty!27015 rules!3820)))))

(declare-fun e!2588086 () Bool)

(assert (=> b!4168995 (= e!2588086 (and tp!1273439 tp!1273430))))

(declare-fun b!4168996 () Bool)

(declare-fun tp_is_empty!21893 () Bool)

(declare-fun tp!1273431 () Bool)

(assert (=> b!4168996 (= e!2588089 (and tp_is_empty!21893 tp!1273431))))

(declare-fun b!4168997 () Bool)

(declare-fun tp!1273432 () Bool)

(assert (=> b!4168997 (= e!2588087 (and e!2588098 tp!1273432))))

(declare-fun b!4168998 () Bool)

(declare-fun e!2588092 () Bool)

(assert (=> b!4168998 (= e!2588095 (not e!2588092))))

(declare-fun res!1708066 () Bool)

(assert (=> b!4168998 (=> res!1708066 e!2588092)))

(declare-fun r!4097 () Rule!14920)

(declare-fun p!2942 () List!45771)

(declare-fun matchR!6206 (Regex!12465 List!45771) Bool)

(assert (=> b!4168998 (= res!1708066 (not (matchR!6206 (regex!7560 r!4097) p!2942)))))

(declare-fun ruleValid!3282 (LexerInterface!7153 Rule!14920) Bool)

(assert (=> b!4168998 (ruleValid!3282 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64727 0))(
  ( (Unit!64728) )
))
(declare-fun lt!1484927 () Unit!64727)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2320 (LexerInterface!7153 Rule!14920 List!45773) Unit!64727)

(assert (=> b!4168998 (= lt!1484927 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2320 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4168999 () Bool)

(declare-fun res!1708062 () Bool)

(assert (=> b!4168999 (=> (not res!1708062) (not e!2588095))))

(declare-fun contains!9361 (List!45773 Rule!14920) Bool)

(assert (=> b!4168999 (= res!1708062 (contains!9361 rules!3820 rBis!161))))

(declare-fun b!4169000 () Bool)

(declare-fun res!1708067 () Bool)

(assert (=> b!4169000 (=> (not res!1708067) (not e!2588095))))

(declare-fun pBis!100 () List!45771)

(declare-fun isPrefix!4417 (List!45771 List!45771) Bool)

(assert (=> b!4169000 (= res!1708067 (isPrefix!4417 pBis!100 input!3316))))

(declare-fun b!4169001 () Bool)

(assert (=> b!4169001 (= e!2588092 e!2588097)))

(declare-fun res!1708064 () Bool)

(assert (=> b!4169001 (=> res!1708064 e!2588097)))

(declare-fun maxPrefixOneRule!3176 (LexerInterface!7153 Rule!14920 List!45771) Option!9768)

(assert (=> b!4169001 (= res!1708064 (not (= (maxPrefixOneRule!3176 thiss!25889 r!4097 input!3316) lt!1484929)))))

(declare-fun lt!1484928 () Int)

(declare-fun lt!1484930 () TokenValue!7790)

(declare-fun getSuffix!2724 (List!45771 List!45771) List!45771)

(assert (=> b!4169001 (= lt!1484929 (Some!9767 (tuple2!43551 (Token!13859 lt!1484930 r!4097 lt!1484928 p!2942) (getSuffix!2724 input!3316 p!2942))))))

(declare-fun size!33532 (List!45771) Int)

(assert (=> b!4169001 (= lt!1484928 (size!33532 p!2942))))

(declare-fun lt!1484931 () BalanceConc!27136)

(declare-fun apply!10537 (TokenValueInjection!15008 BalanceConc!27136) TokenValue!7790)

(assert (=> b!4169001 (= lt!1484930 (apply!10537 (transformation!7560 r!4097) lt!1484931))))

(assert (=> b!4169001 (isPrefix!4417 input!3316 input!3316)))

(declare-fun lt!1484925 () Unit!64727)

(declare-fun lemmaIsPrefixRefl!2852 (List!45771 List!45771) Unit!64727)

(assert (=> b!4169001 (= lt!1484925 (lemmaIsPrefixRefl!2852 input!3316 input!3316))))

(declare-fun lt!1484926 () Unit!64727)

(declare-fun lemmaSemiInverse!2330 (TokenValueInjection!15008 BalanceConc!27136) Unit!64727)

(assert (=> b!4169001 (= lt!1484926 (lemmaSemiInverse!2330 (transformation!7560 r!4097) lt!1484931))))

(declare-fun seqFromList!5589 (List!45771) BalanceConc!27136)

(assert (=> b!4169001 (= lt!1484931 (seqFromList!5589 p!2942))))

(declare-fun b!4169002 () Bool)

(declare-fun validRegex!5584 (Regex!12465) Bool)

(assert (=> b!4169002 (= e!2588097 (validRegex!5584 (regex!7560 r!4097)))))

(assert (=> b!4169002 (ruleValid!3282 thiss!25889 rBis!161)))

(declare-fun lt!1484932 () Unit!64727)

(assert (=> b!4169002 (= lt!1484932 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2320 thiss!25889 rBis!161 rules!3820))))

(declare-fun b!4169003 () Bool)

(declare-fun res!1708068 () Bool)

(assert (=> b!4169003 (=> (not res!1708068) (not e!2588095))))

(assert (=> b!4169003 (= res!1708068 (isPrefix!4417 p!2942 input!3316))))

(declare-fun b!4169004 () Bool)

(declare-fun res!1708063 () Bool)

(assert (=> b!4169004 (=> (not res!1708063) (not e!2588095))))

(declare-fun rulesInvariant!6366 (LexerInterface!7153 List!45773) Bool)

(assert (=> b!4169004 (= res!1708063 (rulesInvariant!6366 thiss!25889 rules!3820))))

(assert (=> b!4169005 (= e!2588096 (and tp!1273428 tp!1273437))))

(declare-fun b!4169006 () Bool)

(declare-fun res!1708070 () Bool)

(assert (=> b!4169006 (=> res!1708070 e!2588097)))

(assert (=> b!4169006 (= res!1708070 (<= (size!33532 pBis!100) lt!1484928))))

(declare-fun b!4169007 () Bool)

(declare-fun tp!1273438 () Bool)

(assert (=> b!4169007 (= e!2588088 (and tp_is_empty!21893 tp!1273438))))

(declare-fun b!4169008 () Bool)

(declare-fun res!1708069 () Bool)

(assert (=> b!4169008 (=> (not res!1708069) (not e!2588095))))

(assert (=> b!4169008 (= res!1708069 (contains!9361 rules!3820 r!4097))))

(declare-fun b!4169009 () Bool)

(declare-fun tp!1273429 () Bool)

(assert (=> b!4169009 (= e!2588085 (and tp_is_empty!21893 tp!1273429))))

(declare-fun b!4169010 () Bool)

(declare-fun tp!1273440 () Bool)

(assert (=> b!4169010 (= e!2588090 (and tp!1273440 (inv!60179 (tag!8424 r!4097)) (inv!60181 (transformation!7560 r!4097)) e!2588086))))

(assert (= (and start!397490 res!1708072) b!4169003))

(assert (= (and b!4169003 res!1708068) b!4169000))

(assert (= (and b!4169000 res!1708067) b!4168994))

(assert (= (and b!4168994 res!1708065) b!4169004))

(assert (= (and b!4169004 res!1708063) b!4169008))

(assert (= (and b!4169008 res!1708069) b!4168999))

(assert (= (and b!4168999 res!1708062) b!4168998))

(assert (= (and b!4168998 (not res!1708066)) b!4169001))

(assert (= (and b!4169001 (not res!1708064)) b!4169006))

(assert (= (and b!4169006 (not res!1708070)) b!4168990))

(assert (= (and b!4168990 (not res!1708071)) b!4169002))

(assert (= (and start!397490 ((_ is Cons!45647) pBis!100)) b!4168996))

(assert (= b!4168991 b!4169005))

(assert (= b!4168997 b!4168991))

(assert (= (and start!397490 ((_ is Cons!45649) rules!3820)) b!4168997))

(assert (= (and start!397490 ((_ is Cons!45647) p!2942)) b!4169007))

(assert (= (and start!397490 ((_ is Cons!45647) input!3316)) b!4169009))

(assert (= b!4168992 b!4168993))

(assert (= start!397490 b!4168992))

(assert (= b!4169010 b!4168995))

(assert (= start!397490 b!4169010))

(declare-fun m!4760119 () Bool)

(assert (=> b!4169004 m!4760119))

(declare-fun m!4760121 () Bool)

(assert (=> b!4169006 m!4760121))

(declare-fun m!4760123 () Bool)

(assert (=> b!4168990 m!4760123))

(declare-fun m!4760125 () Bool)

(assert (=> b!4169001 m!4760125))

(declare-fun m!4760127 () Bool)

(assert (=> b!4169001 m!4760127))

(declare-fun m!4760129 () Bool)

(assert (=> b!4169001 m!4760129))

(declare-fun m!4760131 () Bool)

(assert (=> b!4169001 m!4760131))

(declare-fun m!4760133 () Bool)

(assert (=> b!4169001 m!4760133))

(declare-fun m!4760135 () Bool)

(assert (=> b!4169001 m!4760135))

(declare-fun m!4760137 () Bool)

(assert (=> b!4169001 m!4760137))

(declare-fun m!4760139 () Bool)

(assert (=> b!4169001 m!4760139))

(declare-fun m!4760141 () Bool)

(assert (=> b!4168998 m!4760141))

(declare-fun m!4760143 () Bool)

(assert (=> b!4168998 m!4760143))

(declare-fun m!4760145 () Bool)

(assert (=> b!4168998 m!4760145))

(declare-fun m!4760147 () Bool)

(assert (=> b!4169003 m!4760147))

(declare-fun m!4760149 () Bool)

(assert (=> b!4169002 m!4760149))

(declare-fun m!4760151 () Bool)

(assert (=> b!4169002 m!4760151))

(declare-fun m!4760153 () Bool)

(assert (=> b!4169002 m!4760153))

(declare-fun m!4760155 () Bool)

(assert (=> b!4168994 m!4760155))

(declare-fun m!4760157 () Bool)

(assert (=> b!4169000 m!4760157))

(declare-fun m!4760159 () Bool)

(assert (=> b!4168999 m!4760159))

(declare-fun m!4760161 () Bool)

(assert (=> b!4168992 m!4760161))

(declare-fun m!4760163 () Bool)

(assert (=> b!4168992 m!4760163))

(declare-fun m!4760165 () Bool)

(assert (=> b!4168991 m!4760165))

(declare-fun m!4760167 () Bool)

(assert (=> b!4168991 m!4760167))

(declare-fun m!4760169 () Bool)

(assert (=> b!4169008 m!4760169))

(declare-fun m!4760171 () Bool)

(assert (=> b!4169010 m!4760171))

(declare-fun m!4760173 () Bool)

(assert (=> b!4169010 m!4760173))

(check-sat (not b!4168991) b_and!325387 (not b!4169001) (not b!4169004) (not b!4169009) b_and!325385 (not b!4169002) (not b!4169007) (not b_next!121177) (not b!4168997) (not b_next!121181) (not b!4168992) (not b_next!121185) (not b!4169008) b_and!325379 tp_is_empty!21893 (not b!4168998) (not b_next!121183) (not b!4169010) b_and!325381 (not b_next!121179) (not b!4169006) (not b!4168996) (not b_next!121175) (not b!4168999) b_and!325377 b_and!325383 (not b!4169003) (not b!4168990) (not b!4169000) (not b!4168994))
(check-sat b_and!325387 (not b_next!121185) b_and!325379 (not b_next!121183) b_and!325381 (not b_next!121179) (not b_next!121175) b_and!325385 (not b_next!121177) (not b_next!121181) b_and!325377 b_and!325383)
(get-model)

(declare-fun d!1231923 () Bool)

(declare-fun lt!1484935 () Int)

(assert (=> d!1231923 (>= lt!1484935 0)))

(declare-fun e!2588101 () Int)

(assert (=> d!1231923 (= lt!1484935 e!2588101)))

(declare-fun c!712758 () Bool)

(assert (=> d!1231923 (= c!712758 ((_ is Nil!45647) pBis!100))))

(assert (=> d!1231923 (= (size!33532 pBis!100) lt!1484935)))

(declare-fun b!4169015 () Bool)

(assert (=> b!4169015 (= e!2588101 0)))

(declare-fun b!4169016 () Bool)

(assert (=> b!4169016 (= e!2588101 (+ 1 (size!33532 (t!344250 pBis!100))))))

(assert (= (and d!1231923 c!712758) b!4169015))

(assert (= (and d!1231923 (not c!712758)) b!4169016))

(declare-fun m!4760175 () Bool)

(assert (=> b!4169016 m!4760175))

(assert (=> b!4169006 d!1231923))

(declare-fun d!1231925 () Bool)

(assert (=> d!1231925 (= (isEmpty!27015 rules!3820) ((_ is Nil!45649) rules!3820))))

(assert (=> b!4168994 d!1231925))

(declare-fun d!1231927 () Bool)

(declare-fun res!1708083 () Bool)

(declare-fun e!2588104 () Bool)

(assert (=> d!1231927 (=> (not res!1708083) (not e!2588104))))

(declare-fun rulesValid!2951 (LexerInterface!7153 List!45773) Bool)

(assert (=> d!1231927 (= res!1708083 (rulesValid!2951 thiss!25889 rules!3820))))

(assert (=> d!1231927 (= (rulesInvariant!6366 thiss!25889 rules!3820) e!2588104)))

(declare-fun b!4169019 () Bool)

(declare-datatypes ((List!45774 0))(
  ( (Nil!45650) (Cons!45650 (h!51070 String!52816) (t!344285 List!45774)) )
))
(declare-fun noDuplicateTag!3112 (LexerInterface!7153 List!45773 List!45774) Bool)

(assert (=> b!4169019 (= e!2588104 (noDuplicateTag!3112 thiss!25889 rules!3820 Nil!45650))))

(assert (= (and d!1231927 res!1708083) b!4169019))

(declare-fun m!4760177 () Bool)

(assert (=> d!1231927 m!4760177))

(declare-fun m!4760179 () Bool)

(assert (=> b!4169019 m!4760179))

(assert (=> b!4169004 d!1231927))

(declare-fun d!1231929 () Bool)

(assert (=> d!1231929 (= (inv!60179 (tag!8424 rBis!161)) (= (mod (str.len (value!236003 (tag!8424 rBis!161))) 2) 0))))

(assert (=> b!4168992 d!1231929))

(declare-fun d!1231933 () Bool)

(declare-fun res!1708094 () Bool)

(declare-fun e!2588113 () Bool)

(assert (=> d!1231933 (=> (not res!1708094) (not e!2588113))))

(declare-fun semiInverseModEq!3283 (Int Int) Bool)

(assert (=> d!1231933 (= res!1708094 (semiInverseModEq!3283 (toChars!10099 (transformation!7560 rBis!161)) (toValue!10240 (transformation!7560 rBis!161))))))

(assert (=> d!1231933 (= (inv!60181 (transformation!7560 rBis!161)) e!2588113)))

(declare-fun b!4169030 () Bool)

(declare-fun equivClasses!3182 (Int Int) Bool)

(assert (=> b!4169030 (= e!2588113 (equivClasses!3182 (toChars!10099 (transformation!7560 rBis!161)) (toValue!10240 (transformation!7560 rBis!161))))))

(assert (= (and d!1231933 res!1708094) b!4169030))

(declare-fun m!4760181 () Bool)

(assert (=> d!1231933 m!4760181))

(declare-fun m!4760183 () Bool)

(assert (=> b!4169030 m!4760183))

(assert (=> b!4168992 d!1231933))

(declare-fun b!4169049 () Bool)

(declare-fun e!2588131 () Bool)

(declare-fun e!2588130 () Bool)

(assert (=> b!4169049 (= e!2588131 e!2588130)))

(declare-fun res!1708115 () Bool)

(assert (=> b!4169049 (=> (not res!1708115) (not e!2588130))))

(assert (=> b!4169049 (= res!1708115 (not ((_ is Nil!45647) input!3316)))))

(declare-fun b!4169051 () Bool)

(declare-fun tail!6699 (List!45771) List!45771)

(assert (=> b!4169051 (= e!2588130 (isPrefix!4417 (tail!6699 p!2942) (tail!6699 input!3316)))))

(declare-fun b!4169052 () Bool)

(declare-fun e!2588129 () Bool)

(assert (=> b!4169052 (= e!2588129 (>= (size!33532 input!3316) (size!33532 p!2942)))))

(declare-fun b!4169050 () Bool)

(declare-fun res!1708116 () Bool)

(assert (=> b!4169050 (=> (not res!1708116) (not e!2588130))))

(declare-fun head!8852 (List!45771) C!25120)

(assert (=> b!4169050 (= res!1708116 (= (head!8852 p!2942) (head!8852 input!3316)))))

(declare-fun d!1231935 () Bool)

(assert (=> d!1231935 e!2588129))

(declare-fun res!1708114 () Bool)

(assert (=> d!1231935 (=> res!1708114 e!2588129)))

(declare-fun lt!1484944 () Bool)

(assert (=> d!1231935 (= res!1708114 (not lt!1484944))))

(assert (=> d!1231935 (= lt!1484944 e!2588131)))

(declare-fun res!1708113 () Bool)

(assert (=> d!1231935 (=> res!1708113 e!2588131)))

(assert (=> d!1231935 (= res!1708113 ((_ is Nil!45647) p!2942))))

(assert (=> d!1231935 (= (isPrefix!4417 p!2942 input!3316) lt!1484944)))

(assert (= (and d!1231935 (not res!1708113)) b!4169049))

(assert (= (and b!4169049 res!1708115) b!4169050))

(assert (= (and b!4169050 res!1708116) b!4169051))

(assert (= (and d!1231935 (not res!1708114)) b!4169052))

(declare-fun m!4760203 () Bool)

(assert (=> b!4169051 m!4760203))

(declare-fun m!4760205 () Bool)

(assert (=> b!4169051 m!4760205))

(assert (=> b!4169051 m!4760203))

(assert (=> b!4169051 m!4760205))

(declare-fun m!4760207 () Bool)

(assert (=> b!4169051 m!4760207))

(declare-fun m!4760209 () Bool)

(assert (=> b!4169052 m!4760209))

(assert (=> b!4169052 m!4760133))

(declare-fun m!4760211 () Bool)

(assert (=> b!4169050 m!4760211))

(declare-fun m!4760213 () Bool)

(assert (=> b!4169050 m!4760213))

(assert (=> b!4169003 d!1231935))

(declare-fun b!4169104 () Bool)

(declare-fun e!2588171 () Bool)

(declare-fun e!2588174 () Bool)

(assert (=> b!4169104 (= e!2588171 e!2588174)))

(declare-fun c!712770 () Bool)

(assert (=> b!4169104 (= c!712770 ((_ is Union!12465) (regex!7560 r!4097)))))

(declare-fun b!4169105 () Bool)

(declare-fun e!2588175 () Bool)

(declare-fun call!291178 () Bool)

(assert (=> b!4169105 (= e!2588175 call!291178)))

(declare-fun b!4169106 () Bool)

(declare-fun e!2588170 () Bool)

(declare-fun e!2588176 () Bool)

(assert (=> b!4169106 (= e!2588170 e!2588176)))

(declare-fun res!1708150 () Bool)

(assert (=> b!4169106 (=> (not res!1708150) (not e!2588176))))

(declare-fun call!291177 () Bool)

(assert (=> b!4169106 (= res!1708150 call!291177)))

(declare-fun bm!291171 () Bool)

(declare-fun call!291176 () Bool)

(assert (=> bm!291171 (= call!291176 call!291178)))

(declare-fun b!4169107 () Bool)

(declare-fun res!1708151 () Bool)

(assert (=> b!4169107 (=> res!1708151 e!2588170)))

(assert (=> b!4169107 (= res!1708151 (not ((_ is Concat!20256) (regex!7560 r!4097))))))

(assert (=> b!4169107 (= e!2588174 e!2588170)))

(declare-fun bm!291172 () Bool)

(declare-fun c!712769 () Bool)

(assert (=> bm!291172 (= call!291178 (validRegex!5584 (ite c!712769 (reg!12794 (regex!7560 r!4097)) (ite c!712770 (regTwo!25443 (regex!7560 r!4097)) (regTwo!25442 (regex!7560 r!4097))))))))

(declare-fun b!4169108 () Bool)

(assert (=> b!4169108 (= e!2588171 e!2588175)))

(declare-fun res!1708148 () Bool)

(declare-fun nullable!4375 (Regex!12465) Bool)

(assert (=> b!4169108 (= res!1708148 (not (nullable!4375 (reg!12794 (regex!7560 r!4097)))))))

(assert (=> b!4169108 (=> (not res!1708148) (not e!2588175))))

(declare-fun d!1231941 () Bool)

(declare-fun res!1708152 () Bool)

(declare-fun e!2588173 () Bool)

(assert (=> d!1231941 (=> res!1708152 e!2588173)))

(assert (=> d!1231941 (= res!1708152 ((_ is ElementMatch!12465) (regex!7560 r!4097)))))

(assert (=> d!1231941 (= (validRegex!5584 (regex!7560 r!4097)) e!2588173)))

(declare-fun b!4169109 () Bool)

(assert (=> b!4169109 (= e!2588173 e!2588171)))

(assert (=> b!4169109 (= c!712769 ((_ is Star!12465) (regex!7560 r!4097)))))

(declare-fun bm!291173 () Bool)

(assert (=> bm!291173 (= call!291177 (validRegex!5584 (ite c!712770 (regOne!25443 (regex!7560 r!4097)) (regOne!25442 (regex!7560 r!4097)))))))

(declare-fun b!4169110 () Bool)

(declare-fun res!1708149 () Bool)

(declare-fun e!2588172 () Bool)

(assert (=> b!4169110 (=> (not res!1708149) (not e!2588172))))

(assert (=> b!4169110 (= res!1708149 call!291177)))

(assert (=> b!4169110 (= e!2588174 e!2588172)))

(declare-fun b!4169111 () Bool)

(assert (=> b!4169111 (= e!2588176 call!291176)))

(declare-fun b!4169112 () Bool)

(assert (=> b!4169112 (= e!2588172 call!291176)))

(assert (= (and d!1231941 (not res!1708152)) b!4169109))

(assert (= (and b!4169109 c!712769) b!4169108))

(assert (= (and b!4169109 (not c!712769)) b!4169104))

(assert (= (and b!4169108 res!1708148) b!4169105))

(assert (= (and b!4169104 c!712770) b!4169110))

(assert (= (and b!4169104 (not c!712770)) b!4169107))

(assert (= (and b!4169110 res!1708149) b!4169112))

(assert (= (and b!4169107 (not res!1708151)) b!4169106))

(assert (= (and b!4169106 res!1708150) b!4169111))

(assert (= (or b!4169112 b!4169111) bm!291171))

(assert (= (or b!4169110 b!4169106) bm!291173))

(assert (= (or b!4169105 bm!291171) bm!291172))

(declare-fun m!4760225 () Bool)

(assert (=> bm!291172 m!4760225))

(declare-fun m!4760227 () Bool)

(assert (=> b!4169108 m!4760227))

(declare-fun m!4760229 () Bool)

(assert (=> bm!291173 m!4760229))

(assert (=> b!4169002 d!1231941))

(declare-fun d!1231947 () Bool)

(declare-fun res!1708157 () Bool)

(declare-fun e!2588179 () Bool)

(assert (=> d!1231947 (=> (not res!1708157) (not e!2588179))))

(assert (=> d!1231947 (= res!1708157 (validRegex!5584 (regex!7560 rBis!161)))))

(assert (=> d!1231947 (= (ruleValid!3282 thiss!25889 rBis!161) e!2588179)))

(declare-fun b!4169117 () Bool)

(declare-fun res!1708158 () Bool)

(assert (=> b!4169117 (=> (not res!1708158) (not e!2588179))))

(assert (=> b!4169117 (= res!1708158 (not (nullable!4375 (regex!7560 rBis!161))))))

(declare-fun b!4169118 () Bool)

(assert (=> b!4169118 (= e!2588179 (not (= (tag!8424 rBis!161) (String!52817 ""))))))

(assert (= (and d!1231947 res!1708157) b!4169117))

(assert (= (and b!4169117 res!1708158) b!4169118))

(declare-fun m!4760233 () Bool)

(assert (=> d!1231947 m!4760233))

(declare-fun m!4760235 () Bool)

(assert (=> b!4169117 m!4760235))

(assert (=> b!4169002 d!1231947))

(declare-fun d!1231951 () Bool)

(assert (=> d!1231951 (ruleValid!3282 thiss!25889 rBis!161)))

(declare-fun lt!1484950 () Unit!64727)

(declare-fun choose!25526 (LexerInterface!7153 Rule!14920 List!45773) Unit!64727)

(assert (=> d!1231951 (= lt!1484950 (choose!25526 thiss!25889 rBis!161 rules!3820))))

(assert (=> d!1231951 (contains!9361 rules!3820 rBis!161)))

(assert (=> d!1231951 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2320 thiss!25889 rBis!161 rules!3820) lt!1484950)))

(declare-fun bs!595983 () Bool)

(assert (= bs!595983 d!1231951))

(assert (=> bs!595983 m!4760151))

(declare-fun m!4760237 () Bool)

(assert (=> bs!595983 m!4760237))

(assert (=> bs!595983 m!4760159))

(assert (=> b!4169002 d!1231951))

(declare-fun d!1231953 () Bool)

(assert (=> d!1231953 (= (inv!60179 (tag!8424 (h!51069 rules!3820))) (= (mod (str.len (value!236003 (tag!8424 (h!51069 rules!3820)))) 2) 0))))

(assert (=> b!4168991 d!1231953))

(declare-fun d!1231955 () Bool)

(declare-fun res!1708159 () Bool)

(declare-fun e!2588182 () Bool)

(assert (=> d!1231955 (=> (not res!1708159) (not e!2588182))))

(assert (=> d!1231955 (= res!1708159 (semiInverseModEq!3283 (toChars!10099 (transformation!7560 (h!51069 rules!3820))) (toValue!10240 (transformation!7560 (h!51069 rules!3820)))))))

(assert (=> d!1231955 (= (inv!60181 (transformation!7560 (h!51069 rules!3820))) e!2588182)))

(declare-fun b!4169123 () Bool)

(assert (=> b!4169123 (= e!2588182 (equivClasses!3182 (toChars!10099 (transformation!7560 (h!51069 rules!3820))) (toValue!10240 (transformation!7560 (h!51069 rules!3820)))))))

(assert (= (and d!1231955 res!1708159) b!4169123))

(declare-fun m!4760239 () Bool)

(assert (=> d!1231955 m!4760239))

(declare-fun m!4760241 () Bool)

(assert (=> b!4169123 m!4760241))

(assert (=> b!4168991 d!1231955))

(declare-fun b!4169206 () Bool)

(declare-fun res!1708219 () Bool)

(declare-fun e!2588225 () Bool)

(assert (=> b!4169206 (=> (not res!1708219) (not e!2588225))))

(declare-fun lt!1484977 () Option!9768)

(declare-fun get!14835 (Option!9768) tuple2!43550)

(declare-fun list!16521 (BalanceConc!27136) List!45771)

(declare-fun charsOf!5031 (Token!13858) BalanceConc!27136)

(assert (=> b!4169206 (= res!1708219 (matchR!6206 (regex!7560 (rule!10616 (_1!24909 (get!14835 lt!1484977)))) (list!16521 (charsOf!5031 (_1!24909 (get!14835 lt!1484977))))))))

(declare-fun b!4169207 () Bool)

(declare-fun e!2588223 () Option!9768)

(declare-fun call!291184 () Option!9768)

(assert (=> b!4169207 (= e!2588223 call!291184)))

(declare-fun b!4169209 () Bool)

(declare-fun e!2588224 () Bool)

(assert (=> b!4169209 (= e!2588224 e!2588225)))

(declare-fun res!1708224 () Bool)

(assert (=> b!4169209 (=> (not res!1708224) (not e!2588225))))

(declare-fun isDefined!7315 (Option!9768) Bool)

(assert (=> b!4169209 (= res!1708224 (isDefined!7315 lt!1484977))))

(declare-fun b!4169210 () Bool)

(declare-fun res!1708222 () Bool)

(assert (=> b!4169210 (=> (not res!1708222) (not e!2588225))))

(assert (=> b!4169210 (= res!1708222 (= (value!236004 (_1!24909 (get!14835 lt!1484977))) (apply!10537 (transformation!7560 (rule!10616 (_1!24909 (get!14835 lt!1484977)))) (seqFromList!5589 (originalCharacters!7960 (_1!24909 (get!14835 lt!1484977)))))))))

(declare-fun bm!291179 () Bool)

(assert (=> bm!291179 (= call!291184 (maxPrefixOneRule!3176 thiss!25889 (h!51069 rules!3820) input!3316))))

(declare-fun b!4169211 () Bool)

(declare-fun res!1708220 () Bool)

(assert (=> b!4169211 (=> (not res!1708220) (not e!2588225))))

(declare-fun ++!11668 (List!45771 List!45771) List!45771)

(assert (=> b!4169211 (= res!1708220 (= (++!11668 (list!16521 (charsOf!5031 (_1!24909 (get!14835 lt!1484977)))) (_2!24909 (get!14835 lt!1484977))) input!3316))))

(declare-fun b!4169212 () Bool)

(declare-fun res!1708221 () Bool)

(assert (=> b!4169212 (=> (not res!1708221) (not e!2588225))))

(assert (=> b!4169212 (= res!1708221 (< (size!33532 (_2!24909 (get!14835 lt!1484977))) (size!33532 input!3316)))))

(declare-fun b!4169208 () Bool)

(assert (=> b!4169208 (= e!2588225 (contains!9361 rules!3820 (rule!10616 (_1!24909 (get!14835 lt!1484977)))))))

(declare-fun d!1231957 () Bool)

(assert (=> d!1231957 e!2588224))

(declare-fun res!1708223 () Bool)

(assert (=> d!1231957 (=> res!1708223 e!2588224)))

(declare-fun isEmpty!27018 (Option!9768) Bool)

(assert (=> d!1231957 (= res!1708223 (isEmpty!27018 lt!1484977))))

(assert (=> d!1231957 (= lt!1484977 e!2588223)))

(declare-fun c!712784 () Bool)

(assert (=> d!1231957 (= c!712784 (and ((_ is Cons!45649) rules!3820) ((_ is Nil!45649) (t!344252 rules!3820))))))

(declare-fun lt!1484976 () Unit!64727)

(declare-fun lt!1484980 () Unit!64727)

(assert (=> d!1231957 (= lt!1484976 lt!1484980)))

(assert (=> d!1231957 (isPrefix!4417 input!3316 input!3316)))

(assert (=> d!1231957 (= lt!1484980 (lemmaIsPrefixRefl!2852 input!3316 input!3316))))

(declare-fun rulesValidInductive!2789 (LexerInterface!7153 List!45773) Bool)

(assert (=> d!1231957 (rulesValidInductive!2789 thiss!25889 rules!3820)))

(assert (=> d!1231957 (= (maxPrefix!4229 thiss!25889 rules!3820 input!3316) lt!1484977)))

(declare-fun b!4169213 () Bool)

(declare-fun res!1708218 () Bool)

(assert (=> b!4169213 (=> (not res!1708218) (not e!2588225))))

(assert (=> b!4169213 (= res!1708218 (= (list!16521 (charsOf!5031 (_1!24909 (get!14835 lt!1484977)))) (originalCharacters!7960 (_1!24909 (get!14835 lt!1484977)))))))

(declare-fun b!4169214 () Bool)

(declare-fun lt!1484979 () Option!9768)

(declare-fun lt!1484978 () Option!9768)

(assert (=> b!4169214 (= e!2588223 (ite (and ((_ is None!9767) lt!1484979) ((_ is None!9767) lt!1484978)) None!9767 (ite ((_ is None!9767) lt!1484978) lt!1484979 (ite ((_ is None!9767) lt!1484979) lt!1484978 (ite (>= (size!33531 (_1!24909 (v!40555 lt!1484979))) (size!33531 (_1!24909 (v!40555 lt!1484978)))) lt!1484979 lt!1484978)))))))

(assert (=> b!4169214 (= lt!1484979 call!291184)))

(assert (=> b!4169214 (= lt!1484978 (maxPrefix!4229 thiss!25889 (t!344252 rules!3820) input!3316))))

(assert (= (and d!1231957 c!712784) b!4169207))

(assert (= (and d!1231957 (not c!712784)) b!4169214))

(assert (= (or b!4169207 b!4169214) bm!291179))

(assert (= (and d!1231957 (not res!1708223)) b!4169209))

(assert (= (and b!4169209 res!1708224) b!4169213))

(assert (= (and b!4169213 res!1708218) b!4169212))

(assert (= (and b!4169212 res!1708221) b!4169211))

(assert (= (and b!4169211 res!1708220) b!4169210))

(assert (= (and b!4169210 res!1708222) b!4169206))

(assert (= (and b!4169206 res!1708219) b!4169208))

(declare-fun m!4760265 () Bool)

(assert (=> b!4169208 m!4760265))

(declare-fun m!4760267 () Bool)

(assert (=> b!4169208 m!4760267))

(assert (=> b!4169211 m!4760265))

(declare-fun m!4760269 () Bool)

(assert (=> b!4169211 m!4760269))

(assert (=> b!4169211 m!4760269))

(declare-fun m!4760271 () Bool)

(assert (=> b!4169211 m!4760271))

(assert (=> b!4169211 m!4760271))

(declare-fun m!4760273 () Bool)

(assert (=> b!4169211 m!4760273))

(declare-fun m!4760275 () Bool)

(assert (=> b!4169214 m!4760275))

(assert (=> b!4169206 m!4760265))

(assert (=> b!4169206 m!4760269))

(assert (=> b!4169206 m!4760269))

(assert (=> b!4169206 m!4760271))

(assert (=> b!4169206 m!4760271))

(declare-fun m!4760277 () Bool)

(assert (=> b!4169206 m!4760277))

(declare-fun m!4760279 () Bool)

(assert (=> b!4169209 m!4760279))

(assert (=> b!4169212 m!4760265))

(declare-fun m!4760281 () Bool)

(assert (=> b!4169212 m!4760281))

(assert (=> b!4169212 m!4760209))

(declare-fun m!4760283 () Bool)

(assert (=> bm!291179 m!4760283))

(assert (=> b!4169213 m!4760265))

(assert (=> b!4169213 m!4760269))

(assert (=> b!4169213 m!4760269))

(assert (=> b!4169213 m!4760271))

(assert (=> b!4169210 m!4760265))

(declare-fun m!4760285 () Bool)

(assert (=> b!4169210 m!4760285))

(assert (=> b!4169210 m!4760285))

(declare-fun m!4760287 () Bool)

(assert (=> b!4169210 m!4760287))

(declare-fun m!4760289 () Bool)

(assert (=> d!1231957 m!4760289))

(assert (=> d!1231957 m!4760127))

(assert (=> d!1231957 m!4760131))

(declare-fun m!4760291 () Bool)

(assert (=> d!1231957 m!4760291))

(assert (=> b!4168990 d!1231957))

(declare-fun b!4169248 () Bool)

(declare-fun res!1708252 () Bool)

(declare-fun e!2588243 () Bool)

(assert (=> b!4169248 (=> (not res!1708252) (not e!2588243))))

(declare-fun lt!1485008 () Option!9768)

(assert (=> b!4169248 (= res!1708252 (= (++!11668 (list!16521 (charsOf!5031 (_1!24909 (get!14835 lt!1485008)))) (_2!24909 (get!14835 lt!1485008))) input!3316))))

(declare-fun b!4169249 () Bool)

(declare-fun res!1708246 () Bool)

(assert (=> b!4169249 (=> (not res!1708246) (not e!2588243))))

(assert (=> b!4169249 (= res!1708246 (= (value!236004 (_1!24909 (get!14835 lt!1485008))) (apply!10537 (transformation!7560 (rule!10616 (_1!24909 (get!14835 lt!1485008)))) (seqFromList!5589 (originalCharacters!7960 (_1!24909 (get!14835 lt!1485008)))))))))

(declare-fun b!4169250 () Bool)

(declare-fun e!2588244 () Option!9768)

(assert (=> b!4169250 (= e!2588244 None!9767)))

(declare-fun b!4169251 () Bool)

(declare-fun res!1708250 () Bool)

(assert (=> b!4169251 (=> (not res!1708250) (not e!2588243))))

(assert (=> b!4169251 (= res!1708250 (< (size!33532 (_2!24909 (get!14835 lt!1485008))) (size!33532 input!3316)))))

(declare-fun b!4169252 () Bool)

(declare-fun e!2588242 () Bool)

(declare-datatypes ((tuple2!43554 0))(
  ( (tuple2!43555 (_1!24911 List!45771) (_2!24911 List!45771)) )
))
(declare-fun findLongestMatchInner!1569 (Regex!12465 List!45771 Int List!45771 List!45771 Int) tuple2!43554)

(assert (=> b!4169252 (= e!2588242 (matchR!6206 (regex!7560 r!4097) (_1!24911 (findLongestMatchInner!1569 (regex!7560 r!4097) Nil!45647 (size!33532 Nil!45647) input!3316 input!3316 (size!33532 input!3316)))))))

(declare-fun b!4169253 () Bool)

(declare-fun res!1708249 () Bool)

(assert (=> b!4169253 (=> (not res!1708249) (not e!2588243))))

(assert (=> b!4169253 (= res!1708249 (= (rule!10616 (_1!24909 (get!14835 lt!1485008))) r!4097))))

(declare-fun b!4169254 () Bool)

(declare-fun e!2588241 () Bool)

(assert (=> b!4169254 (= e!2588241 e!2588243)))

(declare-fun res!1708247 () Bool)

(assert (=> b!4169254 (=> (not res!1708247) (not e!2588243))))

(assert (=> b!4169254 (= res!1708247 (matchR!6206 (regex!7560 r!4097) (list!16521 (charsOf!5031 (_1!24909 (get!14835 lt!1485008))))))))

(declare-fun d!1231969 () Bool)

(assert (=> d!1231969 e!2588241))

(declare-fun res!1708248 () Bool)

(assert (=> d!1231969 (=> res!1708248 e!2588241)))

(assert (=> d!1231969 (= res!1708248 (isEmpty!27018 lt!1485008))))

(assert (=> d!1231969 (= lt!1485008 e!2588244)))

(declare-fun c!712792 () Bool)

(declare-fun lt!1485007 () tuple2!43554)

(declare-fun isEmpty!27019 (List!45771) Bool)

(assert (=> d!1231969 (= c!712792 (isEmpty!27019 (_1!24911 lt!1485007)))))

(declare-fun findLongestMatch!1482 (Regex!12465 List!45771) tuple2!43554)

(assert (=> d!1231969 (= lt!1485007 (findLongestMatch!1482 (regex!7560 r!4097) input!3316))))

(assert (=> d!1231969 (ruleValid!3282 thiss!25889 r!4097)))

(assert (=> d!1231969 (= (maxPrefixOneRule!3176 thiss!25889 r!4097 input!3316) lt!1485008)))

(declare-fun b!4169255 () Bool)

(declare-fun size!33534 (BalanceConc!27136) Int)

(assert (=> b!4169255 (= e!2588244 (Some!9767 (tuple2!43551 (Token!13859 (apply!10537 (transformation!7560 r!4097) (seqFromList!5589 (_1!24911 lt!1485007))) r!4097 (size!33534 (seqFromList!5589 (_1!24911 lt!1485007))) (_1!24911 lt!1485007)) (_2!24911 lt!1485007))))))

(declare-fun lt!1485006 () Unit!64727)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1542 (Regex!12465 List!45771) Unit!64727)

(assert (=> b!4169255 (= lt!1485006 (longestMatchIsAcceptedByMatchOrIsEmpty!1542 (regex!7560 r!4097) input!3316))))

(declare-fun res!1708251 () Bool)

(assert (=> b!4169255 (= res!1708251 (isEmpty!27019 (_1!24911 (findLongestMatchInner!1569 (regex!7560 r!4097) Nil!45647 (size!33532 Nil!45647) input!3316 input!3316 (size!33532 input!3316)))))))

(assert (=> b!4169255 (=> res!1708251 e!2588242)))

(assert (=> b!4169255 e!2588242))

(declare-fun lt!1485005 () Unit!64727)

(assert (=> b!4169255 (= lt!1485005 lt!1485006)))

(declare-fun lt!1485004 () Unit!64727)

(assert (=> b!4169255 (= lt!1485004 (lemmaSemiInverse!2330 (transformation!7560 r!4097) (seqFromList!5589 (_1!24911 lt!1485007))))))

(declare-fun b!4169256 () Bool)

(assert (=> b!4169256 (= e!2588243 (= (size!33531 (_1!24909 (get!14835 lt!1485008))) (size!33532 (originalCharacters!7960 (_1!24909 (get!14835 lt!1485008))))))))

(assert (= (and d!1231969 c!712792) b!4169250))

(assert (= (and d!1231969 (not c!712792)) b!4169255))

(assert (= (and b!4169255 (not res!1708251)) b!4169252))

(assert (= (and d!1231969 (not res!1708248)) b!4169254))

(assert (= (and b!4169254 res!1708247) b!4169248))

(assert (= (and b!4169248 res!1708252) b!4169251))

(assert (= (and b!4169251 res!1708250) b!4169253))

(assert (= (and b!4169253 res!1708249) b!4169249))

(assert (= (and b!4169249 res!1708246) b!4169256))

(declare-fun m!4760339 () Bool)

(assert (=> b!4169253 m!4760339))

(assert (=> b!4169256 m!4760339))

(declare-fun m!4760341 () Bool)

(assert (=> b!4169256 m!4760341))

(assert (=> b!4169249 m!4760339))

(declare-fun m!4760343 () Bool)

(assert (=> b!4169249 m!4760343))

(assert (=> b!4169249 m!4760343))

(declare-fun m!4760345 () Bool)

(assert (=> b!4169249 m!4760345))

(assert (=> b!4169251 m!4760339))

(declare-fun m!4760347 () Bool)

(assert (=> b!4169251 m!4760347))

(assert (=> b!4169251 m!4760209))

(declare-fun m!4760349 () Bool)

(assert (=> b!4169252 m!4760349))

(assert (=> b!4169252 m!4760209))

(assert (=> b!4169252 m!4760349))

(assert (=> b!4169252 m!4760209))

(declare-fun m!4760351 () Bool)

(assert (=> b!4169252 m!4760351))

(declare-fun m!4760353 () Bool)

(assert (=> b!4169252 m!4760353))

(declare-fun m!4760355 () Bool)

(assert (=> d!1231969 m!4760355))

(declare-fun m!4760357 () Bool)

(assert (=> d!1231969 m!4760357))

(declare-fun m!4760359 () Bool)

(assert (=> d!1231969 m!4760359))

(assert (=> d!1231969 m!4760143))

(assert (=> b!4169254 m!4760339))

(declare-fun m!4760361 () Bool)

(assert (=> b!4169254 m!4760361))

(assert (=> b!4169254 m!4760361))

(declare-fun m!4760363 () Bool)

(assert (=> b!4169254 m!4760363))

(assert (=> b!4169254 m!4760363))

(declare-fun m!4760365 () Bool)

(assert (=> b!4169254 m!4760365))

(declare-fun m!4760367 () Bool)

(assert (=> b!4169255 m!4760367))

(declare-fun m!4760369 () Bool)

(assert (=> b!4169255 m!4760369))

(assert (=> b!4169255 m!4760367))

(declare-fun m!4760371 () Bool)

(assert (=> b!4169255 m!4760371))

(assert (=> b!4169255 m!4760367))

(assert (=> b!4169255 m!4760367))

(declare-fun m!4760373 () Bool)

(assert (=> b!4169255 m!4760373))

(declare-fun m!4760375 () Bool)

(assert (=> b!4169255 m!4760375))

(assert (=> b!4169255 m!4760349))

(assert (=> b!4169255 m!4760209))

(assert (=> b!4169255 m!4760349))

(assert (=> b!4169255 m!4760209))

(assert (=> b!4169255 m!4760351))

(declare-fun m!4760377 () Bool)

(assert (=> b!4169255 m!4760377))

(assert (=> b!4169248 m!4760339))

(assert (=> b!4169248 m!4760361))

(assert (=> b!4169248 m!4760361))

(assert (=> b!4169248 m!4760363))

(assert (=> b!4169248 m!4760363))

(declare-fun m!4760379 () Bool)

(assert (=> b!4169248 m!4760379))

(assert (=> b!4169001 d!1231969))

(declare-fun d!1231977 () Bool)

(declare-fun dynLambda!19577 (Int BalanceConc!27136) TokenValue!7790)

(assert (=> d!1231977 (= (apply!10537 (transformation!7560 r!4097) lt!1484931) (dynLambda!19577 (toValue!10240 (transformation!7560 r!4097)) lt!1484931))))

(declare-fun b_lambda!122465 () Bool)

(assert (=> (not b_lambda!122465) (not d!1231977)))

(declare-fun t!344260 () Bool)

(declare-fun tb!249705 () Bool)

(assert (=> (and b!4168995 (= (toValue!10240 (transformation!7560 r!4097)) (toValue!10240 (transformation!7560 r!4097))) t!344260) tb!249705))

(declare-fun result!304176 () Bool)

(declare-fun inv!21 (TokenValue!7790) Bool)

(assert (=> tb!249705 (= result!304176 (inv!21 (dynLambda!19577 (toValue!10240 (transformation!7560 r!4097)) lt!1484931)))))

(declare-fun m!4760381 () Bool)

(assert (=> tb!249705 m!4760381))

(assert (=> d!1231977 t!344260))

(declare-fun b_and!325395 () Bool)

(assert (= b_and!325377 (and (=> t!344260 result!304176) b_and!325395)))

(declare-fun tb!249707 () Bool)

(declare-fun t!344262 () Bool)

(assert (=> (and b!4168993 (= (toValue!10240 (transformation!7560 rBis!161)) (toValue!10240 (transformation!7560 r!4097))) t!344262) tb!249707))

(declare-fun result!304180 () Bool)

(assert (= result!304180 result!304176))

(assert (=> d!1231977 t!344262))

(declare-fun b_and!325397 () Bool)

(assert (= b_and!325381 (and (=> t!344262 result!304180) b_and!325397)))

(declare-fun t!344264 () Bool)

(declare-fun tb!249709 () Bool)

(assert (=> (and b!4169005 (= (toValue!10240 (transformation!7560 (h!51069 rules!3820))) (toValue!10240 (transformation!7560 r!4097))) t!344264) tb!249709))

(declare-fun result!304182 () Bool)

(assert (= result!304182 result!304176))

(assert (=> d!1231977 t!344264))

(declare-fun b_and!325399 () Bool)

(assert (= b_and!325385 (and (=> t!344264 result!304182) b_and!325399)))

(declare-fun m!4760383 () Bool)

(assert (=> d!1231977 m!4760383))

(assert (=> b!4169001 d!1231977))

(declare-fun d!1231979 () Bool)

(declare-fun lt!1485009 () Int)

(assert (=> d!1231979 (>= lt!1485009 0)))

(declare-fun e!2588248 () Int)

(assert (=> d!1231979 (= lt!1485009 e!2588248)))

(declare-fun c!712793 () Bool)

(assert (=> d!1231979 (= c!712793 ((_ is Nil!45647) p!2942))))

(assert (=> d!1231979 (= (size!33532 p!2942) lt!1485009)))

(declare-fun b!4169259 () Bool)

(assert (=> b!4169259 (= e!2588248 0)))

(declare-fun b!4169260 () Bool)

(assert (=> b!4169260 (= e!2588248 (+ 1 (size!33532 (t!344250 p!2942))))))

(assert (= (and d!1231979 c!712793) b!4169259))

(assert (= (and d!1231979 (not c!712793)) b!4169260))

(declare-fun m!4760385 () Bool)

(assert (=> b!4169260 m!4760385))

(assert (=> b!4169001 d!1231979))

(declare-fun b!4169364 () Bool)

(declare-fun e!2588305 () Bool)

(assert (=> b!4169364 (= e!2588305 true)))

(declare-fun d!1231981 () Bool)

(assert (=> d!1231981 e!2588305))

(assert (= d!1231981 b!4169364))

(declare-fun lambda!129223 () Int)

(declare-fun order!24081 () Int)

(declare-fun order!24083 () Int)

(declare-fun dynLambda!19578 (Int Int) Int)

(declare-fun dynLambda!19579 (Int Int) Int)

(assert (=> b!4169364 (< (dynLambda!19578 order!24081 (toValue!10240 (transformation!7560 r!4097))) (dynLambda!19579 order!24083 lambda!129223))))

(declare-fun order!24085 () Int)

(declare-fun dynLambda!19580 (Int Int) Int)

(assert (=> b!4169364 (< (dynLambda!19580 order!24085 (toChars!10099 (transformation!7560 r!4097))) (dynLambda!19579 order!24083 lambda!129223))))

(declare-fun dynLambda!19581 (Int TokenValue!7790) BalanceConc!27136)

(assert (=> d!1231981 (= (list!16521 (dynLambda!19581 (toChars!10099 (transformation!7560 r!4097)) (dynLambda!19577 (toValue!10240 (transformation!7560 r!4097)) lt!1484931))) (list!16521 lt!1484931))))

(declare-fun lt!1485034 () Unit!64727)

(declare-fun ForallOf!1018 (Int BalanceConc!27136) Unit!64727)

(assert (=> d!1231981 (= lt!1485034 (ForallOf!1018 lambda!129223 lt!1484931))))

(assert (=> d!1231981 (= (lemmaSemiInverse!2330 (transformation!7560 r!4097) lt!1484931) lt!1485034)))

(declare-fun b_lambda!122477 () Bool)

(assert (=> (not b_lambda!122477) (not d!1231981)))

(declare-fun t!344276 () Bool)

(declare-fun tb!249721 () Bool)

(assert (=> (and b!4168995 (= (toChars!10099 (transformation!7560 r!4097)) (toChars!10099 (transformation!7560 r!4097))) t!344276) tb!249721))

(declare-fun e!2588308 () Bool)

(declare-fun b!4169369 () Bool)

(declare-fun tp!1273488 () Bool)

(declare-fun inv!60184 (Conc!13771) Bool)

(assert (=> b!4169369 (= e!2588308 (and (inv!60184 (c!712754 (dynLambda!19581 (toChars!10099 (transformation!7560 r!4097)) (dynLambda!19577 (toValue!10240 (transformation!7560 r!4097)) lt!1484931)))) tp!1273488))))

(declare-fun result!304202 () Bool)

(declare-fun inv!60185 (BalanceConc!27136) Bool)

(assert (=> tb!249721 (= result!304202 (and (inv!60185 (dynLambda!19581 (toChars!10099 (transformation!7560 r!4097)) (dynLambda!19577 (toValue!10240 (transformation!7560 r!4097)) lt!1484931))) e!2588308))))

(assert (= tb!249721 b!4169369))

(declare-fun m!4760461 () Bool)

(assert (=> b!4169369 m!4760461))

(declare-fun m!4760463 () Bool)

(assert (=> tb!249721 m!4760463))

(assert (=> d!1231981 t!344276))

(declare-fun b_and!325417 () Bool)

(assert (= b_and!325379 (and (=> t!344276 result!304202) b_and!325417)))

(declare-fun t!344278 () Bool)

(declare-fun tb!249723 () Bool)

(assert (=> (and b!4168993 (= (toChars!10099 (transformation!7560 rBis!161)) (toChars!10099 (transformation!7560 r!4097))) t!344278) tb!249723))

(declare-fun result!304206 () Bool)

(assert (= result!304206 result!304202))

(assert (=> d!1231981 t!344278))

(declare-fun b_and!325419 () Bool)

(assert (= b_and!325383 (and (=> t!344278 result!304206) b_and!325419)))

(declare-fun t!344280 () Bool)

(declare-fun tb!249725 () Bool)

(assert (=> (and b!4169005 (= (toChars!10099 (transformation!7560 (h!51069 rules!3820))) (toChars!10099 (transformation!7560 r!4097))) t!344280) tb!249725))

(declare-fun result!304208 () Bool)

(assert (= result!304208 result!304202))

(assert (=> d!1231981 t!344280))

(declare-fun b_and!325421 () Bool)

(assert (= b_and!325387 (and (=> t!344280 result!304208) b_and!325421)))

(declare-fun b_lambda!122479 () Bool)

(assert (=> (not b_lambda!122479) (not d!1231981)))

(assert (=> d!1231981 t!344260))

(declare-fun b_and!325423 () Bool)

(assert (= b_and!325395 (and (=> t!344260 result!304176) b_and!325423)))

(assert (=> d!1231981 t!344262))

(declare-fun b_and!325425 () Bool)

(assert (= b_and!325397 (and (=> t!344262 result!304180) b_and!325425)))

(assert (=> d!1231981 t!344264))

(declare-fun b_and!325427 () Bool)

(assert (= b_and!325399 (and (=> t!344264 result!304182) b_and!325427)))

(declare-fun m!4760465 () Bool)

(assert (=> d!1231981 m!4760465))

(declare-fun m!4760467 () Bool)

(assert (=> d!1231981 m!4760467))

(assert (=> d!1231981 m!4760383))

(declare-fun m!4760469 () Bool)

(assert (=> d!1231981 m!4760469))

(declare-fun m!4760471 () Bool)

(assert (=> d!1231981 m!4760471))

(assert (=> d!1231981 m!4760383))

(assert (=> d!1231981 m!4760465))

(assert (=> b!4169001 d!1231981))

(declare-fun d!1232011 () Bool)

(assert (=> d!1232011 (isPrefix!4417 input!3316 input!3316)))

(declare-fun lt!1485037 () Unit!64727)

(declare-fun choose!25528 (List!45771 List!45771) Unit!64727)

(assert (=> d!1232011 (= lt!1485037 (choose!25528 input!3316 input!3316))))

(assert (=> d!1232011 (= (lemmaIsPrefixRefl!2852 input!3316 input!3316) lt!1485037)))

(declare-fun bs!595987 () Bool)

(assert (= bs!595987 d!1232011))

(assert (=> bs!595987 m!4760127))

(declare-fun m!4760473 () Bool)

(assert (=> bs!595987 m!4760473))

(assert (=> b!4169001 d!1232011))

(declare-fun d!1232013 () Bool)

(declare-fun fromListB!2567 (List!45771) BalanceConc!27136)

(assert (=> d!1232013 (= (seqFromList!5589 p!2942) (fromListB!2567 p!2942))))

(declare-fun bs!595988 () Bool)

(assert (= bs!595988 d!1232013))

(declare-fun m!4760475 () Bool)

(assert (=> bs!595988 m!4760475))

(assert (=> b!4169001 d!1232013))

(declare-fun d!1232015 () Bool)

(declare-fun lt!1485040 () List!45771)

(assert (=> d!1232015 (= (++!11668 p!2942 lt!1485040) input!3316)))

(declare-fun e!2588311 () List!45771)

(assert (=> d!1232015 (= lt!1485040 e!2588311)))

(declare-fun c!712804 () Bool)

(assert (=> d!1232015 (= c!712804 ((_ is Cons!45647) p!2942))))

(assert (=> d!1232015 (>= (size!33532 input!3316) (size!33532 p!2942))))

(assert (=> d!1232015 (= (getSuffix!2724 input!3316 p!2942) lt!1485040)))

(declare-fun b!4169374 () Bool)

(assert (=> b!4169374 (= e!2588311 (getSuffix!2724 (tail!6699 input!3316) (t!344250 p!2942)))))

(declare-fun b!4169375 () Bool)

(assert (=> b!4169375 (= e!2588311 input!3316)))

(assert (= (and d!1232015 c!712804) b!4169374))

(assert (= (and d!1232015 (not c!712804)) b!4169375))

(declare-fun m!4760477 () Bool)

(assert (=> d!1232015 m!4760477))

(assert (=> d!1232015 m!4760209))

(assert (=> d!1232015 m!4760133))

(assert (=> b!4169374 m!4760205))

(assert (=> b!4169374 m!4760205))

(declare-fun m!4760479 () Bool)

(assert (=> b!4169374 m!4760479))

(assert (=> b!4169001 d!1232015))

(declare-fun b!4169376 () Bool)

(declare-fun e!2588314 () Bool)

(declare-fun e!2588313 () Bool)

(assert (=> b!4169376 (= e!2588314 e!2588313)))

(declare-fun res!1708290 () Bool)

(assert (=> b!4169376 (=> (not res!1708290) (not e!2588313))))

(assert (=> b!4169376 (= res!1708290 (not ((_ is Nil!45647) input!3316)))))

(declare-fun b!4169378 () Bool)

(assert (=> b!4169378 (= e!2588313 (isPrefix!4417 (tail!6699 input!3316) (tail!6699 input!3316)))))

(declare-fun b!4169379 () Bool)

(declare-fun e!2588312 () Bool)

(assert (=> b!4169379 (= e!2588312 (>= (size!33532 input!3316) (size!33532 input!3316)))))

(declare-fun b!4169377 () Bool)

(declare-fun res!1708291 () Bool)

(assert (=> b!4169377 (=> (not res!1708291) (not e!2588313))))

(assert (=> b!4169377 (= res!1708291 (= (head!8852 input!3316) (head!8852 input!3316)))))

(declare-fun d!1232017 () Bool)

(assert (=> d!1232017 e!2588312))

(declare-fun res!1708289 () Bool)

(assert (=> d!1232017 (=> res!1708289 e!2588312)))

(declare-fun lt!1485041 () Bool)

(assert (=> d!1232017 (= res!1708289 (not lt!1485041))))

(assert (=> d!1232017 (= lt!1485041 e!2588314)))

(declare-fun res!1708288 () Bool)

(assert (=> d!1232017 (=> res!1708288 e!2588314)))

(assert (=> d!1232017 (= res!1708288 ((_ is Nil!45647) input!3316))))

(assert (=> d!1232017 (= (isPrefix!4417 input!3316 input!3316) lt!1485041)))

(assert (= (and d!1232017 (not res!1708288)) b!4169376))

(assert (= (and b!4169376 res!1708290) b!4169377))

(assert (= (and b!4169377 res!1708291) b!4169378))

(assert (= (and d!1232017 (not res!1708289)) b!4169379))

(assert (=> b!4169378 m!4760205))

(assert (=> b!4169378 m!4760205))

(assert (=> b!4169378 m!4760205))

(assert (=> b!4169378 m!4760205))

(declare-fun m!4760481 () Bool)

(assert (=> b!4169378 m!4760481))

(assert (=> b!4169379 m!4760209))

(assert (=> b!4169379 m!4760209))

(assert (=> b!4169377 m!4760213))

(assert (=> b!4169377 m!4760213))

(assert (=> b!4169001 d!1232017))

(declare-fun b!4169380 () Bool)

(declare-fun e!2588317 () Bool)

(declare-fun e!2588316 () Bool)

(assert (=> b!4169380 (= e!2588317 e!2588316)))

(declare-fun res!1708294 () Bool)

(assert (=> b!4169380 (=> (not res!1708294) (not e!2588316))))

(assert (=> b!4169380 (= res!1708294 (not ((_ is Nil!45647) input!3316)))))

(declare-fun b!4169382 () Bool)

(assert (=> b!4169382 (= e!2588316 (isPrefix!4417 (tail!6699 pBis!100) (tail!6699 input!3316)))))

(declare-fun b!4169383 () Bool)

(declare-fun e!2588315 () Bool)

(assert (=> b!4169383 (= e!2588315 (>= (size!33532 input!3316) (size!33532 pBis!100)))))

(declare-fun b!4169381 () Bool)

(declare-fun res!1708295 () Bool)

(assert (=> b!4169381 (=> (not res!1708295) (not e!2588316))))

(assert (=> b!4169381 (= res!1708295 (= (head!8852 pBis!100) (head!8852 input!3316)))))

(declare-fun d!1232019 () Bool)

(assert (=> d!1232019 e!2588315))

(declare-fun res!1708293 () Bool)

(assert (=> d!1232019 (=> res!1708293 e!2588315)))

(declare-fun lt!1485042 () Bool)

(assert (=> d!1232019 (= res!1708293 (not lt!1485042))))

(assert (=> d!1232019 (= lt!1485042 e!2588317)))

(declare-fun res!1708292 () Bool)

(assert (=> d!1232019 (=> res!1708292 e!2588317)))

(assert (=> d!1232019 (= res!1708292 ((_ is Nil!45647) pBis!100))))

(assert (=> d!1232019 (= (isPrefix!4417 pBis!100 input!3316) lt!1485042)))

(assert (= (and d!1232019 (not res!1708292)) b!4169380))

(assert (= (and b!4169380 res!1708294) b!4169381))

(assert (= (and b!4169381 res!1708295) b!4169382))

(assert (= (and d!1232019 (not res!1708293)) b!4169383))

(declare-fun m!4760483 () Bool)

(assert (=> b!4169382 m!4760483))

(assert (=> b!4169382 m!4760205))

(assert (=> b!4169382 m!4760483))

(assert (=> b!4169382 m!4760205))

(declare-fun m!4760485 () Bool)

(assert (=> b!4169382 m!4760485))

(assert (=> b!4169383 m!4760209))

(assert (=> b!4169383 m!4760121))

(declare-fun m!4760487 () Bool)

(assert (=> b!4169381 m!4760487))

(assert (=> b!4169381 m!4760213))

(assert (=> b!4169000 d!1232019))

(declare-fun d!1232021 () Bool)

(assert (=> d!1232021 (= (inv!60179 (tag!8424 r!4097)) (= (mod (str.len (value!236003 (tag!8424 r!4097))) 2) 0))))

(assert (=> b!4169010 d!1232021))

(declare-fun d!1232023 () Bool)

(declare-fun res!1708296 () Bool)

(declare-fun e!2588318 () Bool)

(assert (=> d!1232023 (=> (not res!1708296) (not e!2588318))))

(assert (=> d!1232023 (= res!1708296 (semiInverseModEq!3283 (toChars!10099 (transformation!7560 r!4097)) (toValue!10240 (transformation!7560 r!4097))))))

(assert (=> d!1232023 (= (inv!60181 (transformation!7560 r!4097)) e!2588318)))

(declare-fun b!4169384 () Bool)

(assert (=> b!4169384 (= e!2588318 (equivClasses!3182 (toChars!10099 (transformation!7560 r!4097)) (toValue!10240 (transformation!7560 r!4097))))))

(assert (= (and d!1232023 res!1708296) b!4169384))

(declare-fun m!4760489 () Bool)

(assert (=> d!1232023 m!4760489))

(declare-fun m!4760491 () Bool)

(assert (=> b!4169384 m!4760491))

(assert (=> b!4169010 d!1232023))

(declare-fun d!1232025 () Bool)

(declare-fun lt!1485045 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7100 (List!45773) (InoxSet Rule!14920))

(assert (=> d!1232025 (= lt!1485045 (select (content!7100 rules!3820) rBis!161))))

(declare-fun e!2588323 () Bool)

(assert (=> d!1232025 (= lt!1485045 e!2588323)))

(declare-fun res!1708302 () Bool)

(assert (=> d!1232025 (=> (not res!1708302) (not e!2588323))))

(assert (=> d!1232025 (= res!1708302 ((_ is Cons!45649) rules!3820))))

(assert (=> d!1232025 (= (contains!9361 rules!3820 rBis!161) lt!1485045)))

(declare-fun b!4169389 () Bool)

(declare-fun e!2588324 () Bool)

(assert (=> b!4169389 (= e!2588323 e!2588324)))

(declare-fun res!1708301 () Bool)

(assert (=> b!4169389 (=> res!1708301 e!2588324)))

(assert (=> b!4169389 (= res!1708301 (= (h!51069 rules!3820) rBis!161))))

(declare-fun b!4169390 () Bool)

(assert (=> b!4169390 (= e!2588324 (contains!9361 (t!344252 rules!3820) rBis!161))))

(assert (= (and d!1232025 res!1708302) b!4169389))

(assert (= (and b!4169389 (not res!1708301)) b!4169390))

(declare-fun m!4760493 () Bool)

(assert (=> d!1232025 m!4760493))

(declare-fun m!4760495 () Bool)

(assert (=> d!1232025 m!4760495))

(declare-fun m!4760497 () Bool)

(assert (=> b!4169390 m!4760497))

(assert (=> b!4168999 d!1232025))

(declare-fun b!4169419 () Bool)

(declare-fun res!1708323 () Bool)

(declare-fun e!2588345 () Bool)

(assert (=> b!4169419 (=> res!1708323 e!2588345)))

(declare-fun e!2588340 () Bool)

(assert (=> b!4169419 (= res!1708323 e!2588340)))

(declare-fun res!1708319 () Bool)

(assert (=> b!4169419 (=> (not res!1708319) (not e!2588340))))

(declare-fun lt!1485048 () Bool)

(assert (=> b!4169419 (= res!1708319 lt!1485048)))

(declare-fun b!4169421 () Bool)

(declare-fun e!2588343 () Bool)

(declare-fun e!2588344 () Bool)

(assert (=> b!4169421 (= e!2588343 e!2588344)))

(declare-fun res!1708326 () Bool)

(assert (=> b!4169421 (=> res!1708326 e!2588344)))

(declare-fun call!291190 () Bool)

(assert (=> b!4169421 (= res!1708326 call!291190)))

(declare-fun b!4169422 () Bool)

(assert (=> b!4169422 (= e!2588340 (= (head!8852 p!2942) (c!712755 (regex!7560 r!4097))))))

(declare-fun b!4169423 () Bool)

(assert (=> b!4169423 (= e!2588345 e!2588343)))

(declare-fun res!1708325 () Bool)

(assert (=> b!4169423 (=> (not res!1708325) (not e!2588343))))

(assert (=> b!4169423 (= res!1708325 (not lt!1485048))))

(declare-fun b!4169424 () Bool)

(declare-fun res!1708322 () Bool)

(assert (=> b!4169424 (=> res!1708322 e!2588345)))

(assert (=> b!4169424 (= res!1708322 (not ((_ is ElementMatch!12465) (regex!7560 r!4097))))))

(declare-fun e!2588342 () Bool)

(assert (=> b!4169424 (= e!2588342 e!2588345)))

(declare-fun b!4169425 () Bool)

(declare-fun e!2588341 () Bool)

(assert (=> b!4169425 (= e!2588341 (nullable!4375 (regex!7560 r!4097)))))

(declare-fun bm!291185 () Bool)

(assert (=> bm!291185 (= call!291190 (isEmpty!27019 p!2942))))

(declare-fun b!4169426 () Bool)

(assert (=> b!4169426 (= e!2588344 (not (= (head!8852 p!2942) (c!712755 (regex!7560 r!4097)))))))

(declare-fun b!4169427 () Bool)

(assert (=> b!4169427 (= e!2588342 (not lt!1485048))))

(declare-fun b!4169428 () Bool)

(declare-fun derivativeStep!3765 (Regex!12465 C!25120) Regex!12465)

(assert (=> b!4169428 (= e!2588341 (matchR!6206 (derivativeStep!3765 (regex!7560 r!4097) (head!8852 p!2942)) (tail!6699 p!2942)))))

(declare-fun d!1232027 () Bool)

(declare-fun e!2588339 () Bool)

(assert (=> d!1232027 e!2588339))

(declare-fun c!712813 () Bool)

(assert (=> d!1232027 (= c!712813 ((_ is EmptyExpr!12465) (regex!7560 r!4097)))))

(assert (=> d!1232027 (= lt!1485048 e!2588341)))

(declare-fun c!712811 () Bool)

(assert (=> d!1232027 (= c!712811 (isEmpty!27019 p!2942))))

(assert (=> d!1232027 (validRegex!5584 (regex!7560 r!4097))))

(assert (=> d!1232027 (= (matchR!6206 (regex!7560 r!4097) p!2942) lt!1485048)))

(declare-fun b!4169420 () Bool)

(declare-fun res!1708324 () Bool)

(assert (=> b!4169420 (=> (not res!1708324) (not e!2588340))))

(assert (=> b!4169420 (= res!1708324 (not call!291190))))

(declare-fun b!4169429 () Bool)

(declare-fun res!1708321 () Bool)

(assert (=> b!4169429 (=> res!1708321 e!2588344)))

(assert (=> b!4169429 (= res!1708321 (not (isEmpty!27019 (tail!6699 p!2942))))))

(declare-fun b!4169430 () Bool)

(declare-fun res!1708320 () Bool)

(assert (=> b!4169430 (=> (not res!1708320) (not e!2588340))))

(assert (=> b!4169430 (= res!1708320 (isEmpty!27019 (tail!6699 p!2942)))))

(declare-fun b!4169431 () Bool)

(assert (=> b!4169431 (= e!2588339 (= lt!1485048 call!291190))))

(declare-fun b!4169432 () Bool)

(assert (=> b!4169432 (= e!2588339 e!2588342)))

(declare-fun c!712812 () Bool)

(assert (=> b!4169432 (= c!712812 ((_ is EmptyLang!12465) (regex!7560 r!4097)))))

(assert (= (and d!1232027 c!712811) b!4169425))

(assert (= (and d!1232027 (not c!712811)) b!4169428))

(assert (= (and d!1232027 c!712813) b!4169431))

(assert (= (and d!1232027 (not c!712813)) b!4169432))

(assert (= (and b!4169432 c!712812) b!4169427))

(assert (= (and b!4169432 (not c!712812)) b!4169424))

(assert (= (and b!4169424 (not res!1708322)) b!4169419))

(assert (= (and b!4169419 res!1708319) b!4169420))

(assert (= (and b!4169420 res!1708324) b!4169430))

(assert (= (and b!4169430 res!1708320) b!4169422))

(assert (= (and b!4169419 (not res!1708323)) b!4169423))

(assert (= (and b!4169423 res!1708325) b!4169421))

(assert (= (and b!4169421 (not res!1708326)) b!4169429))

(assert (= (and b!4169429 (not res!1708321)) b!4169426))

(assert (= (or b!4169431 b!4169420 b!4169421) bm!291185))

(declare-fun m!4760499 () Bool)

(assert (=> b!4169425 m!4760499))

(declare-fun m!4760501 () Bool)

(assert (=> d!1232027 m!4760501))

(assert (=> d!1232027 m!4760149))

(assert (=> b!4169430 m!4760203))

(assert (=> b!4169430 m!4760203))

(declare-fun m!4760503 () Bool)

(assert (=> b!4169430 m!4760503))

(assert (=> b!4169428 m!4760211))

(assert (=> b!4169428 m!4760211))

(declare-fun m!4760505 () Bool)

(assert (=> b!4169428 m!4760505))

(assert (=> b!4169428 m!4760203))

(assert (=> b!4169428 m!4760505))

(assert (=> b!4169428 m!4760203))

(declare-fun m!4760507 () Bool)

(assert (=> b!4169428 m!4760507))

(assert (=> b!4169422 m!4760211))

(assert (=> b!4169426 m!4760211))

(assert (=> bm!291185 m!4760501))

(assert (=> b!4169429 m!4760203))

(assert (=> b!4169429 m!4760203))

(assert (=> b!4169429 m!4760503))

(assert (=> b!4168998 d!1232027))

(declare-fun d!1232029 () Bool)

(declare-fun res!1708327 () Bool)

(declare-fun e!2588346 () Bool)

(assert (=> d!1232029 (=> (not res!1708327) (not e!2588346))))

(assert (=> d!1232029 (= res!1708327 (validRegex!5584 (regex!7560 r!4097)))))

(assert (=> d!1232029 (= (ruleValid!3282 thiss!25889 r!4097) e!2588346)))

(declare-fun b!4169433 () Bool)

(declare-fun res!1708328 () Bool)

(assert (=> b!4169433 (=> (not res!1708328) (not e!2588346))))

(assert (=> b!4169433 (= res!1708328 (not (nullable!4375 (regex!7560 r!4097))))))

(declare-fun b!4169434 () Bool)

(assert (=> b!4169434 (= e!2588346 (not (= (tag!8424 r!4097) (String!52817 ""))))))

(assert (= (and d!1232029 res!1708327) b!4169433))

(assert (= (and b!4169433 res!1708328) b!4169434))

(assert (=> d!1232029 m!4760149))

(assert (=> b!4169433 m!4760499))

(assert (=> b!4168998 d!1232029))

(declare-fun d!1232031 () Bool)

(assert (=> d!1232031 (ruleValid!3282 thiss!25889 r!4097)))

(declare-fun lt!1485049 () Unit!64727)

(assert (=> d!1232031 (= lt!1485049 (choose!25526 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1232031 (contains!9361 rules!3820 r!4097)))

(assert (=> d!1232031 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2320 thiss!25889 r!4097 rules!3820) lt!1485049)))

(declare-fun bs!595989 () Bool)

(assert (= bs!595989 d!1232031))

(assert (=> bs!595989 m!4760143))

(declare-fun m!4760509 () Bool)

(assert (=> bs!595989 m!4760509))

(assert (=> bs!595989 m!4760169))

(assert (=> b!4168998 d!1232031))

(declare-fun d!1232033 () Bool)

(declare-fun lt!1485050 () Bool)

(assert (=> d!1232033 (= lt!1485050 (select (content!7100 rules!3820) r!4097))))

(declare-fun e!2588347 () Bool)

(assert (=> d!1232033 (= lt!1485050 e!2588347)))

(declare-fun res!1708330 () Bool)

(assert (=> d!1232033 (=> (not res!1708330) (not e!2588347))))

(assert (=> d!1232033 (= res!1708330 ((_ is Cons!45649) rules!3820))))

(assert (=> d!1232033 (= (contains!9361 rules!3820 r!4097) lt!1485050)))

(declare-fun b!4169435 () Bool)

(declare-fun e!2588348 () Bool)

(assert (=> b!4169435 (= e!2588347 e!2588348)))

(declare-fun res!1708329 () Bool)

(assert (=> b!4169435 (=> res!1708329 e!2588348)))

(assert (=> b!4169435 (= res!1708329 (= (h!51069 rules!3820) r!4097))))

(declare-fun b!4169436 () Bool)

(assert (=> b!4169436 (= e!2588348 (contains!9361 (t!344252 rules!3820) r!4097))))

(assert (= (and d!1232033 res!1708330) b!4169435))

(assert (= (and b!4169435 (not res!1708329)) b!4169436))

(assert (=> d!1232033 m!4760493))

(declare-fun m!4760511 () Bool)

(assert (=> d!1232033 m!4760511))

(declare-fun m!4760513 () Bool)

(assert (=> b!4169436 m!4760513))

(assert (=> b!4169008 d!1232033))

(declare-fun b!4169450 () Bool)

(declare-fun e!2588351 () Bool)

(declare-fun tp!1273503 () Bool)

(declare-fun tp!1273501 () Bool)

(assert (=> b!4169450 (= e!2588351 (and tp!1273503 tp!1273501))))

(declare-fun b!4169447 () Bool)

(assert (=> b!4169447 (= e!2588351 tp_is_empty!21893)))

(declare-fun b!4169449 () Bool)

(declare-fun tp!1273499 () Bool)

(assert (=> b!4169449 (= e!2588351 tp!1273499)))

(declare-fun b!4169448 () Bool)

(declare-fun tp!1273500 () Bool)

(declare-fun tp!1273502 () Bool)

(assert (=> b!4169448 (= e!2588351 (and tp!1273500 tp!1273502))))

(assert (=> b!4169010 (= tp!1273440 e!2588351)))

(assert (= (and b!4169010 ((_ is ElementMatch!12465) (regex!7560 r!4097))) b!4169447))

(assert (= (and b!4169010 ((_ is Concat!20256) (regex!7560 r!4097))) b!4169448))

(assert (= (and b!4169010 ((_ is Star!12465) (regex!7560 r!4097))) b!4169449))

(assert (= (and b!4169010 ((_ is Union!12465) (regex!7560 r!4097))) b!4169450))

(declare-fun b!4169455 () Bool)

(declare-fun e!2588354 () Bool)

(declare-fun tp!1273506 () Bool)

(assert (=> b!4169455 (= e!2588354 (and tp_is_empty!21893 tp!1273506))))

(assert (=> b!4169009 (= tp!1273429 e!2588354)))

(assert (= (and b!4169009 ((_ is Cons!45647) (t!344250 input!3316))) b!4169455))

(declare-fun b!4169459 () Bool)

(declare-fun e!2588355 () Bool)

(declare-fun tp!1273511 () Bool)

(declare-fun tp!1273509 () Bool)

(assert (=> b!4169459 (= e!2588355 (and tp!1273511 tp!1273509))))

(declare-fun b!4169456 () Bool)

(assert (=> b!4169456 (= e!2588355 tp_is_empty!21893)))

(declare-fun b!4169458 () Bool)

(declare-fun tp!1273507 () Bool)

(assert (=> b!4169458 (= e!2588355 tp!1273507)))

(declare-fun b!4169457 () Bool)

(declare-fun tp!1273508 () Bool)

(declare-fun tp!1273510 () Bool)

(assert (=> b!4169457 (= e!2588355 (and tp!1273508 tp!1273510))))

(assert (=> b!4168992 (= tp!1273433 e!2588355)))

(assert (= (and b!4168992 ((_ is ElementMatch!12465) (regex!7560 rBis!161))) b!4169456))

(assert (= (and b!4168992 ((_ is Concat!20256) (regex!7560 rBis!161))) b!4169457))

(assert (= (and b!4168992 ((_ is Star!12465) (regex!7560 rBis!161))) b!4169458))

(assert (= (and b!4168992 ((_ is Union!12465) (regex!7560 rBis!161))) b!4169459))

(declare-fun b!4169470 () Bool)

(declare-fun b_free!120487 () Bool)

(declare-fun b_next!121191 () Bool)

(assert (=> b!4169470 (= b_free!120487 (not b_next!121191))))

(declare-fun tb!249727 () Bool)

(declare-fun t!344282 () Bool)

(assert (=> (and b!4169470 (= (toValue!10240 (transformation!7560 (h!51069 (t!344252 rules!3820)))) (toValue!10240 (transformation!7560 r!4097))) t!344282) tb!249727))

(declare-fun result!304216 () Bool)

(assert (= result!304216 result!304176))

(assert (=> d!1231977 t!344282))

(assert (=> d!1231981 t!344282))

(declare-fun tp!1273521 () Bool)

(declare-fun b_and!325429 () Bool)

(assert (=> b!4169470 (= tp!1273521 (and (=> t!344282 result!304216) b_and!325429))))

(declare-fun b_free!120489 () Bool)

(declare-fun b_next!121193 () Bool)

(assert (=> b!4169470 (= b_free!120489 (not b_next!121193))))

(declare-fun tb!249729 () Bool)

(declare-fun t!344284 () Bool)

(assert (=> (and b!4169470 (= (toChars!10099 (transformation!7560 (h!51069 (t!344252 rules!3820)))) (toChars!10099 (transformation!7560 r!4097))) t!344284) tb!249729))

(declare-fun result!304218 () Bool)

(assert (= result!304218 result!304202))

(assert (=> d!1231981 t!344284))

(declare-fun b_and!325431 () Bool)

(declare-fun tp!1273523 () Bool)

(assert (=> b!4169470 (= tp!1273523 (and (=> t!344284 result!304218) b_and!325431))))

(declare-fun e!2588366 () Bool)

(assert (=> b!4169470 (= e!2588366 (and tp!1273521 tp!1273523))))

(declare-fun e!2588365 () Bool)

(declare-fun tp!1273522 () Bool)

(declare-fun b!4169469 () Bool)

(assert (=> b!4169469 (= e!2588365 (and tp!1273522 (inv!60179 (tag!8424 (h!51069 (t!344252 rules!3820)))) (inv!60181 (transformation!7560 (h!51069 (t!344252 rules!3820)))) e!2588366))))

(declare-fun b!4169468 () Bool)

(declare-fun e!2588367 () Bool)

(declare-fun tp!1273520 () Bool)

(assert (=> b!4169468 (= e!2588367 (and e!2588365 tp!1273520))))

(assert (=> b!4168997 (= tp!1273432 e!2588367)))

(assert (= b!4169469 b!4169470))

(assert (= b!4169468 b!4169469))

(assert (= (and b!4168997 ((_ is Cons!45649) (t!344252 rules!3820))) b!4169468))

(declare-fun m!4760515 () Bool)

(assert (=> b!4169469 m!4760515))

(declare-fun m!4760517 () Bool)

(assert (=> b!4169469 m!4760517))

(declare-fun b!4169471 () Bool)

(declare-fun e!2588368 () Bool)

(declare-fun tp!1273524 () Bool)

(assert (=> b!4169471 (= e!2588368 (and tp_is_empty!21893 tp!1273524))))

(assert (=> b!4168996 (= tp!1273431 e!2588368)))

(assert (= (and b!4168996 ((_ is Cons!45647) (t!344250 pBis!100))) b!4169471))

(declare-fun b!4169475 () Bool)

(declare-fun e!2588369 () Bool)

(declare-fun tp!1273529 () Bool)

(declare-fun tp!1273527 () Bool)

(assert (=> b!4169475 (= e!2588369 (and tp!1273529 tp!1273527))))

(declare-fun b!4169472 () Bool)

(assert (=> b!4169472 (= e!2588369 tp_is_empty!21893)))

(declare-fun b!4169474 () Bool)

(declare-fun tp!1273525 () Bool)

(assert (=> b!4169474 (= e!2588369 tp!1273525)))

(declare-fun b!4169473 () Bool)

(declare-fun tp!1273526 () Bool)

(declare-fun tp!1273528 () Bool)

(assert (=> b!4169473 (= e!2588369 (and tp!1273526 tp!1273528))))

(assert (=> b!4168991 (= tp!1273436 e!2588369)))

(assert (= (and b!4168991 ((_ is ElementMatch!12465) (regex!7560 (h!51069 rules!3820)))) b!4169472))

(assert (= (and b!4168991 ((_ is Concat!20256) (regex!7560 (h!51069 rules!3820)))) b!4169473))

(assert (= (and b!4168991 ((_ is Star!12465) (regex!7560 (h!51069 rules!3820)))) b!4169474))

(assert (= (and b!4168991 ((_ is Union!12465) (regex!7560 (h!51069 rules!3820)))) b!4169475))

(declare-fun b!4169476 () Bool)

(declare-fun e!2588370 () Bool)

(declare-fun tp!1273530 () Bool)

(assert (=> b!4169476 (= e!2588370 (and tp_is_empty!21893 tp!1273530))))

(assert (=> b!4169007 (= tp!1273438 e!2588370)))

(assert (= (and b!4169007 ((_ is Cons!45647) (t!344250 p!2942))) b!4169476))

(declare-fun b_lambda!122481 () Bool)

(assert (= b_lambda!122465 (or (and b!4168995 b_free!120471) (and b!4168993 b_free!120475 (= (toValue!10240 (transformation!7560 rBis!161)) (toValue!10240 (transformation!7560 r!4097)))) (and b!4169005 b_free!120479 (= (toValue!10240 (transformation!7560 (h!51069 rules!3820))) (toValue!10240 (transformation!7560 r!4097)))) (and b!4169470 b_free!120487 (= (toValue!10240 (transformation!7560 (h!51069 (t!344252 rules!3820)))) (toValue!10240 (transformation!7560 r!4097)))) b_lambda!122481)))

(declare-fun b_lambda!122483 () Bool)

(assert (= b_lambda!122477 (or (and b!4168995 b_free!120473) (and b!4168993 b_free!120477 (= (toChars!10099 (transformation!7560 rBis!161)) (toChars!10099 (transformation!7560 r!4097)))) (and b!4169005 b_free!120481 (= (toChars!10099 (transformation!7560 (h!51069 rules!3820))) (toChars!10099 (transformation!7560 r!4097)))) (and b!4169470 b_free!120489 (= (toChars!10099 (transformation!7560 (h!51069 (t!344252 rules!3820)))) (toChars!10099 (transformation!7560 r!4097)))) b_lambda!122483)))

(declare-fun b_lambda!122485 () Bool)

(assert (= b_lambda!122479 (or (and b!4168995 b_free!120471) (and b!4168993 b_free!120475 (= (toValue!10240 (transformation!7560 rBis!161)) (toValue!10240 (transformation!7560 r!4097)))) (and b!4169005 b_free!120479 (= (toValue!10240 (transformation!7560 (h!51069 rules!3820))) (toValue!10240 (transformation!7560 r!4097)))) (and b!4169470 b_free!120487 (= (toValue!10240 (transformation!7560 (h!51069 (t!344252 rules!3820)))) (toValue!10240 (transformation!7560 r!4097)))) b_lambda!122485)))

(check-sat (not b!4169253) (not b_next!121175) (not b_lambda!122485) (not d!1231933) (not b!4169211) (not b_next!121191) (not b!4169455) (not b!4169382) (not d!1232025) (not b!4169433) (not b!4169108) (not b!4169212) (not d!1232015) (not b!4169030) (not bm!291179) (not b!4169378) (not b_next!121177) (not d!1232033) (not b_next!121181) (not d!1232011) b_and!325427 (not b_lambda!122481) (not b!4169426) (not b!4169450) b_and!325431 (not bm!291172) (not b!4169260) (not b!4169428) (not b_next!121185) (not b!4169255) (not b!4169422) b_and!325417 (not b!4169051) (not d!1231981) (not b!4169369) (not b!4169248) (not b!4169469) (not b!4169436) tp_is_empty!21893 (not b!4169459) (not b!4169213) (not d!1231927) (not b!4169468) (not b_next!121183) (not b!4169449) (not d!1231951) (not b!4169209) (not b!4169019) (not d!1232013) (not b!4169252) (not b!4169374) (not b!4169379) (not b!4169457) (not b!4169377) (not b!4169117) (not b!4169384) (not b_next!121193) (not b!4169251) (not b_next!121179) (not b!4169052) (not b!4169474) b_and!325425 (not b!4169050) (not d!1231969) (not b!4169458) (not b!4169256) (not d!1232029) (not b!4169471) (not b!4169473) (not d!1232027) (not tb!249705) (not b!4169123) (not b!4169475) b_and!325423 (not d!1232031) (not b!4169430) (not bm!291185) (not b!4169429) (not d!1231955) (not b!4169381) (not b!4169254) (not b!4169210) (not b!4169448) (not b_lambda!122483) (not b!4169214) (not d!1232023) b_and!325429 (not b!4169425) (not b!4169390) (not d!1231947) (not b!4169476) (not b!4169249) (not tb!249721) (not bm!291173) (not b!4169383) (not b!4169206) b_and!325419 (not b!4169208) (not b!4169016) (not d!1231957) b_and!325421)
(check-sat (not b_next!121191) b_and!325427 b_and!325431 (not b_next!121185) b_and!325417 (not b_next!121183) (not b_next!121193) (not b_next!121179) b_and!325425 (not b_next!121175) b_and!325423 b_and!325429 b_and!325419 b_and!325421 (not b_next!121177) (not b_next!121181))
