; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!370644 () Bool)

(assert start!370644)

(declare-fun b!3945254 () Bool)

(declare-fun b_free!108077 () Bool)

(declare-fun b_next!108781 () Bool)

(assert (=> b!3945254 (= b_free!108077 (not b_next!108781))))

(declare-fun tp!1201054 () Bool)

(declare-fun b_and!301775 () Bool)

(assert (=> b!3945254 (= tp!1201054 b_and!301775)))

(declare-fun b_free!108079 () Bool)

(declare-fun b_next!108783 () Bool)

(assert (=> b!3945254 (= b_free!108079 (not b_next!108783))))

(declare-fun tp!1201057 () Bool)

(declare-fun b_and!301777 () Bool)

(assert (=> b!3945254 (= tp!1201057 b_and!301777)))

(declare-fun b!3945260 () Bool)

(declare-fun b_free!108081 () Bool)

(declare-fun b_next!108785 () Bool)

(assert (=> b!3945260 (= b_free!108081 (not b_next!108785))))

(declare-fun tp!1201065 () Bool)

(declare-fun b_and!301779 () Bool)

(assert (=> b!3945260 (= tp!1201065 b_and!301779)))

(declare-fun b_free!108083 () Bool)

(declare-fun b_next!108787 () Bool)

(assert (=> b!3945260 (= b_free!108083 (not b_next!108787))))

(declare-fun tp!1201068 () Bool)

(declare-fun b_and!301781 () Bool)

(assert (=> b!3945260 (= tp!1201068 b_and!301781)))

(declare-fun b!3945253 () Bool)

(declare-fun b_free!108085 () Bool)

(declare-fun b_next!108789 () Bool)

(assert (=> b!3945253 (= b_free!108085 (not b_next!108789))))

(declare-fun tp!1201059 () Bool)

(declare-fun b_and!301783 () Bool)

(assert (=> b!3945253 (= tp!1201059 b_and!301783)))

(declare-fun b_free!108087 () Bool)

(declare-fun b_next!108791 () Bool)

(assert (=> b!3945253 (= b_free!108087 (not b_next!108791))))

(declare-fun tp!1201058 () Bool)

(declare-fun b_and!301785 () Bool)

(assert (=> b!3945253 (= tp!1201058 b_and!301785)))

(declare-fun e!2441282 () Bool)

(declare-fun tp!1201067 () Bool)

(declare-fun e!2441272 () Bool)

(declare-datatypes ((List!42027 0))(
  ( (Nil!41903) (Cons!41903 (h!47323 (_ BitVec 16)) (t!327618 List!42027)) )
))
(declare-datatypes ((TokenValue!6782 0))(
  ( (FloatLiteralValue!13564 (text!47919 List!42027)) (TokenValueExt!6781 (__x!25781 Int)) (Broken!33910 (value!207340 List!42027)) (Object!6905) (End!6782) (Def!6782) (Underscore!6782) (Match!6782) (Else!6782) (Error!6782) (Case!6782) (If!6782) (Extends!6782) (Abstract!6782) (Class!6782) (Val!6782) (DelimiterValue!13564 (del!6842 List!42027)) (KeywordValue!6788 (value!207341 List!42027)) (CommentValue!13564 (value!207342 List!42027)) (WhitespaceValue!13564 (value!207343 List!42027)) (IndentationValue!6782 (value!207344 List!42027)) (String!47627) (Int32!6782) (Broken!33911 (value!207345 List!42027)) (Boolean!6783) (Unit!60441) (OperatorValue!6785 (op!6842 List!42027)) (IdentifierValue!13564 (value!207346 List!42027)) (IdentifierValue!13565 (value!207347 List!42027)) (WhitespaceValue!13565 (value!207348 List!42027)) (True!13564) (False!13564) (Broken!33912 (value!207349 List!42027)) (Broken!33913 (value!207350 List!42027)) (True!13565) (RightBrace!6782) (RightBracket!6782) (Colon!6782) (Null!6782) (Comma!6782) (LeftBracket!6782) (False!13565) (LeftBrace!6782) (ImaginaryLiteralValue!6782 (text!47920 List!42027)) (StringLiteralValue!20346 (value!207351 List!42027)) (EOFValue!6782 (value!207352 List!42027)) (IdentValue!6782 (value!207353 List!42027)) (DelimiterValue!13565 (value!207354 List!42027)) (DedentValue!6782 (value!207355 List!42027)) (NewLineValue!6782 (value!207356 List!42027)) (IntegerValue!20346 (value!207357 (_ BitVec 32)) (text!47921 List!42027)) (IntegerValue!20347 (value!207358 Int) (text!47922 List!42027)) (Times!6782) (Or!6782) (Equal!6782) (Minus!6782) (Broken!33914 (value!207359 List!42027)) (And!6782) (Div!6782) (LessEqual!6782) (Mod!6782) (Concat!18239) (Not!6782) (Plus!6782) (SpaceValue!6782 (value!207360 List!42027)) (IntegerValue!20348 (value!207361 Int) (text!47923 List!42027)) (StringLiteralValue!20347 (text!47924 List!42027)) (FloatLiteralValue!13565 (text!47925 List!42027)) (BytesLiteralValue!6782 (value!207362 List!42027)) (CommentValue!13565 (value!207363 List!42027)) (StringLiteralValue!20348 (value!207364 List!42027)) (ErrorTokenValue!6782 (msg!6843 List!42027)) )
))
(declare-datatypes ((C!23100 0))(
  ( (C!23101 (val!13644 Int)) )
))
(declare-datatypes ((Regex!11457 0))(
  ( (ElementMatch!11457 (c!685302 C!23100)) (Concat!18240 (regOne!23426 Regex!11457) (regTwo!23426 Regex!11457)) (EmptyExpr!11457) (Star!11457 (reg!11786 Regex!11457)) (EmptyLang!11457) (Union!11457 (regOne!23427 Regex!11457) (regTwo!23427 Regex!11457)) )
))
(declare-datatypes ((String!47628 0))(
  ( (String!47629 (value!207365 String)) )
))
(declare-datatypes ((List!42028 0))(
  ( (Nil!41904) (Cons!41904 (h!47324 C!23100) (t!327619 List!42028)) )
))
(declare-datatypes ((IArray!25531 0))(
  ( (IArray!25532 (innerList!12823 List!42028)) )
))
(declare-datatypes ((Conc!12763 0))(
  ( (Node!12763 (left!31913 Conc!12763) (right!32243 Conc!12763) (csize!25756 Int) (cheight!12974 Int)) (Leaf!19746 (xs!16069 IArray!25531) (csize!25757 Int)) (Empty!12763) )
))
(declare-datatypes ((BalanceConc!25120 0))(
  ( (BalanceConc!25121 (c!685303 Conc!12763)) )
))
(declare-datatypes ((TokenValueInjection!12992 0))(
  ( (TokenValueInjection!12993 (toValue!9024 Int) (toChars!8883 Int)) )
))
(declare-datatypes ((Rule!12904 0))(
  ( (Rule!12905 (regex!6552 Regex!11457) (tag!7412 String!47628) (isSeparator!6552 Bool) (transformation!6552 TokenValueInjection!12992)) )
))
(declare-datatypes ((Token!12242 0))(
  ( (Token!12243 (value!207366 TokenValue!6782) (rule!9516 Rule!12904) (size!31421 Int) (originalCharacters!7152 List!42028)) )
))
(declare-datatypes ((List!42029 0))(
  ( (Nil!41905) (Cons!41905 (h!47325 Token!12242) (t!327620 List!42029)) )
))
(declare-fun suffixTokens!72 () List!42029)

(declare-fun b!3945243 () Bool)

(declare-fun inv!56121 (String!47628) Bool)

(declare-fun inv!56124 (TokenValueInjection!12992) Bool)

(assert (=> b!3945243 (= e!2441272 (and tp!1201067 (inv!56121 (tag!7412 (rule!9516 (h!47325 suffixTokens!72)))) (inv!56124 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) e!2441282))))

(declare-fun b!3945244 () Bool)

(declare-fun e!2441277 () Bool)

(declare-fun tp_is_empty!19885 () Bool)

(declare-fun tp!1201070 () Bool)

(assert (=> b!3945244 (= e!2441277 (and tp_is_empty!19885 tp!1201070))))

(declare-fun b!3945245 () Bool)

(declare-fun res!1596418 () Bool)

(declare-fun e!2441273 () Bool)

(assert (=> b!3945245 (=> (not res!1596418) (not e!2441273))))

(declare-fun suffixResult!91 () List!42028)

(declare-datatypes ((LexerInterface!6141 0))(
  ( (LexerInterfaceExt!6138 (__x!25782 Int)) (Lexer!6139) )
))
(declare-fun thiss!20629 () LexerInterface!6141)

(declare-fun suffix!1176 () List!42028)

(declare-datatypes ((List!42030 0))(
  ( (Nil!41906) (Cons!41906 (h!47326 Rule!12904) (t!327621 List!42030)) )
))
(declare-fun rules!2768 () List!42030)

(declare-datatypes ((tuple2!41194 0))(
  ( (tuple2!41195 (_1!23731 List!42029) (_2!23731 List!42028)) )
))
(declare-fun lexList!1909 (LexerInterface!6141 List!42030 List!42028) tuple2!41194)

(assert (=> b!3945245 (= res!1596418 (= (lexList!1909 thiss!20629 rules!2768 suffix!1176) (tuple2!41195 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3945246 () Bool)

(declare-fun e!2441268 () Bool)

(declare-fun e!2441279 () Bool)

(declare-fun tp!1201056 () Bool)

(assert (=> b!3945246 (= e!2441268 (and e!2441279 tp!1201056))))

(declare-fun b!3945247 () Bool)

(declare-fun res!1596422 () Bool)

(declare-fun e!2441274 () Bool)

(assert (=> b!3945247 (=> (not res!1596422) (not e!2441274))))

(declare-fun prefix!426 () List!42028)

(declare-fun isEmpty!25008 (List!42028) Bool)

(assert (=> b!3945247 (= res!1596422 (not (isEmpty!25008 prefix!426)))))

(declare-fun b!3945248 () Bool)

(declare-fun e!2441264 () Bool)

(declare-fun tp!1201060 () Bool)

(assert (=> b!3945248 (= e!2441264 (and tp_is_empty!19885 tp!1201060))))

(declare-fun b!3945249 () Bool)

(declare-fun res!1596419 () Bool)

(assert (=> b!3945249 (=> (not res!1596419) (not e!2441274))))

(declare-fun isEmpty!25009 (List!42030) Bool)

(assert (=> b!3945249 (= res!1596419 (not (isEmpty!25009 rules!2768)))))

(declare-fun res!1596423 () Bool)

(assert (=> start!370644 (=> (not res!1596423) (not e!2441274))))

(get-info :version)

(assert (=> start!370644 (= res!1596423 ((_ is Lexer!6139) thiss!20629))))

(assert (=> start!370644 e!2441274))

(assert (=> start!370644 e!2441264))

(assert (=> start!370644 true))

(declare-fun e!2441269 () Bool)

(assert (=> start!370644 e!2441269))

(assert (=> start!370644 e!2441268))

(declare-fun e!2441265 () Bool)

(assert (=> start!370644 e!2441265))

(declare-fun e!2441285 () Bool)

(assert (=> start!370644 e!2441285))

(assert (=> start!370644 e!2441277))

(declare-fun tp!1201064 () Bool)

(declare-fun e!2441280 () Bool)

(declare-fun prefixTokens!80 () List!42029)

(declare-fun b!3945250 () Bool)

(declare-fun inv!56125 (Token!12242) Bool)

(assert (=> b!3945250 (= e!2441265 (and (inv!56125 (h!47325 prefixTokens!80)) e!2441280 tp!1201064))))

(declare-fun e!2441278 () Bool)

(declare-fun b!3945251 () Bool)

(declare-fun tp!1201061 () Bool)

(assert (=> b!3945251 (= e!2441285 (and (inv!56125 (h!47325 suffixTokens!72)) e!2441278 tp!1201061))))

(declare-fun b!3945252 () Bool)

(declare-fun res!1596421 () Bool)

(assert (=> b!3945252 (=> (not res!1596421) (not e!2441274))))

(declare-fun rulesInvariant!5484 (LexerInterface!6141 List!42030) Bool)

(assert (=> b!3945252 (= res!1596421 (rulesInvariant!5484 thiss!20629 rules!2768))))

(declare-fun e!2441270 () Bool)

(assert (=> b!3945253 (= e!2441270 (and tp!1201059 tp!1201058))))

(declare-fun e!2441266 () Bool)

(assert (=> b!3945254 (= e!2441266 (and tp!1201054 tp!1201057))))

(declare-fun b!3945255 () Bool)

(assert (=> b!3945255 (= e!2441274 e!2441273)))

(declare-fun res!1596425 () Bool)

(assert (=> b!3945255 (=> (not res!1596425) (not e!2441273))))

(declare-fun lt!1379397 () List!42028)

(declare-fun ++!10861 (List!42029 List!42029) List!42029)

(assert (=> b!3945255 (= res!1596425 (= (lexList!1909 thiss!20629 rules!2768 lt!1379397) (tuple2!41195 (++!10861 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun ++!10862 (List!42028 List!42028) List!42028)

(assert (=> b!3945255 (= lt!1379397 (++!10862 prefix!426 suffix!1176))))

(declare-fun tp!1201062 () Bool)

(declare-fun e!2441281 () Bool)

(declare-fun b!3945256 () Bool)

(declare-fun inv!21 (TokenValue!6782) Bool)

(assert (=> b!3945256 (= e!2441280 (and (inv!21 (value!207366 (h!47325 prefixTokens!80))) e!2441281 tp!1201062))))

(declare-fun b!3945257 () Bool)

(declare-fun tp!1201066 () Bool)

(assert (=> b!3945257 (= e!2441279 (and tp!1201066 (inv!56121 (tag!7412 (h!47326 rules!2768))) (inv!56124 (transformation!6552 (h!47326 rules!2768))) e!2441266))))

(declare-fun b!3945258 () Bool)

(declare-fun tp!1201063 () Bool)

(assert (=> b!3945258 (= e!2441269 (and tp_is_empty!19885 tp!1201063))))

(declare-fun b!3945259 () Bool)

(declare-fun res!1596424 () Bool)

(assert (=> b!3945259 (=> (not res!1596424) (not e!2441274))))

(declare-fun isEmpty!25010 (List!42029) Bool)

(assert (=> b!3945259 (= res!1596424 (not (isEmpty!25010 prefixTokens!80)))))

(assert (=> b!3945260 (= e!2441282 (and tp!1201065 tp!1201068))))

(declare-fun b!3945261 () Bool)

(declare-fun res!1596426 () Bool)

(declare-fun e!2441275 () Bool)

(assert (=> b!3945261 (=> res!1596426 e!2441275)))

(declare-fun lt!1379396 () List!42028)

(assert (=> b!3945261 (= res!1596426 (not (= lt!1379396 lt!1379397)))))

(declare-fun b!3945262 () Bool)

(declare-fun e!2441276 () Bool)

(assert (=> b!3945262 (= e!2441273 e!2441276)))

(declare-fun res!1596420 () Bool)

(assert (=> b!3945262 (=> (not res!1596420) (not e!2441276))))

(declare-datatypes ((tuple2!41196 0))(
  ( (tuple2!41197 (_1!23732 Token!12242) (_2!23732 List!42028)) )
))
(declare-datatypes ((Option!8972 0))(
  ( (None!8971) (Some!8971 (v!39309 tuple2!41196)) )
))
(declare-fun lt!1379398 () Option!8972)

(assert (=> b!3945262 (= res!1596420 ((_ is Some!8971) lt!1379398))))

(declare-fun maxPrefix!3445 (LexerInterface!6141 List!42030 List!42028) Option!8972)

(assert (=> b!3945262 (= lt!1379398 (maxPrefix!3445 thiss!20629 rules!2768 lt!1379397))))

(declare-fun b!3945263 () Bool)

(assert (=> b!3945263 (= e!2441276 (not e!2441275))))

(declare-fun res!1596417 () Bool)

(assert (=> b!3945263 (=> res!1596417 e!2441275)))

(declare-fun lt!1379392 () List!42028)

(declare-fun isPrefix!3641 (List!42028 List!42028) Bool)

(assert (=> b!3945263 (= res!1596417 (not (isPrefix!3641 lt!1379392 lt!1379397)))))

(declare-fun lt!1379395 () List!42028)

(declare-fun getSuffix!2092 (List!42028 List!42028) List!42028)

(assert (=> b!3945263 (= lt!1379395 (getSuffix!2092 lt!1379397 lt!1379392))))

(assert (=> b!3945263 (isPrefix!3641 lt!1379392 lt!1379396)))

(assert (=> b!3945263 (= lt!1379396 (++!10862 lt!1379392 (_2!23732 (v!39309 lt!1379398))))))

(declare-datatypes ((Unit!60442 0))(
  ( (Unit!60443) )
))
(declare-fun lt!1379399 () Unit!60442)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2500 (List!42028 List!42028) Unit!60442)

(assert (=> b!3945263 (= lt!1379399 (lemmaConcatTwoListThenFirstIsPrefix!2500 lt!1379392 (_2!23732 (v!39309 lt!1379398))))))

(declare-fun list!15564 (BalanceConc!25120) List!42028)

(declare-fun charsOf!4370 (Token!12242) BalanceConc!25120)

(assert (=> b!3945263 (= lt!1379392 (list!15564 (charsOf!4370 (_1!23732 (v!39309 lt!1379398)))))))

(declare-fun ruleValid!2494 (LexerInterface!6141 Rule!12904) Bool)

(assert (=> b!3945263 (ruleValid!2494 thiss!20629 (rule!9516 (_1!23732 (v!39309 lt!1379398))))))

(declare-fun lt!1379393 () Unit!60442)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1570 (LexerInterface!6141 Rule!12904 List!42030) Unit!60442)

(assert (=> b!3945263 (= lt!1379393 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1570 thiss!20629 (rule!9516 (_1!23732 (v!39309 lt!1379398))) rules!2768))))

(declare-fun lt!1379394 () Unit!60442)

(declare-fun lemmaCharactersSize!1205 (Token!12242) Unit!60442)

(assert (=> b!3945263 (= lt!1379394 (lemmaCharactersSize!1205 (_1!23732 (v!39309 lt!1379398))))))

(declare-fun b!3945264 () Bool)

(declare-fun tp!1201055 () Bool)

(assert (=> b!3945264 (= e!2441281 (and tp!1201055 (inv!56121 (tag!7412 (rule!9516 (h!47325 prefixTokens!80)))) (inv!56124 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) e!2441270))))

(declare-fun b!3945265 () Bool)

(assert (=> b!3945265 (= e!2441275 (= (++!10862 lt!1379392 lt!1379395) lt!1379397))))

(declare-fun tp!1201069 () Bool)

(declare-fun b!3945266 () Bool)

(assert (=> b!3945266 (= e!2441278 (and (inv!21 (value!207366 (h!47325 suffixTokens!72))) e!2441272 tp!1201069))))

(assert (= (and start!370644 res!1596423) b!3945249))

(assert (= (and b!3945249 res!1596419) b!3945252))

(assert (= (and b!3945252 res!1596421) b!3945259))

(assert (= (and b!3945259 res!1596424) b!3945247))

(assert (= (and b!3945247 res!1596422) b!3945255))

(assert (= (and b!3945255 res!1596425) b!3945245))

(assert (= (and b!3945245 res!1596418) b!3945262))

(assert (= (and b!3945262 res!1596420) b!3945263))

(assert (= (and b!3945263 (not res!1596417)) b!3945261))

(assert (= (and b!3945261 (not res!1596426)) b!3945265))

(assert (= (and start!370644 ((_ is Cons!41904) suffixResult!91)) b!3945248))

(assert (= (and start!370644 ((_ is Cons!41904) suffix!1176)) b!3945258))

(assert (= b!3945257 b!3945254))

(assert (= b!3945246 b!3945257))

(assert (= (and start!370644 ((_ is Cons!41906) rules!2768)) b!3945246))

(assert (= b!3945264 b!3945253))

(assert (= b!3945256 b!3945264))

(assert (= b!3945250 b!3945256))

(assert (= (and start!370644 ((_ is Cons!41905) prefixTokens!80)) b!3945250))

(assert (= b!3945243 b!3945260))

(assert (= b!3945266 b!3945243))

(assert (= b!3945251 b!3945266))

(assert (= (and start!370644 ((_ is Cons!41905) suffixTokens!72)) b!3945251))

(assert (= (and start!370644 ((_ is Cons!41904) prefix!426)) b!3945244))

(declare-fun m!4513973 () Bool)

(assert (=> b!3945262 m!4513973))

(declare-fun m!4513975 () Bool)

(assert (=> b!3945265 m!4513975))

(declare-fun m!4513977 () Bool)

(assert (=> b!3945264 m!4513977))

(declare-fun m!4513979 () Bool)

(assert (=> b!3945264 m!4513979))

(declare-fun m!4513981 () Bool)

(assert (=> b!3945249 m!4513981))

(declare-fun m!4513983 () Bool)

(assert (=> b!3945245 m!4513983))

(declare-fun m!4513985 () Bool)

(assert (=> b!3945250 m!4513985))

(declare-fun m!4513987 () Bool)

(assert (=> b!3945255 m!4513987))

(declare-fun m!4513989 () Bool)

(assert (=> b!3945255 m!4513989))

(declare-fun m!4513991 () Bool)

(assert (=> b!3945255 m!4513991))

(declare-fun m!4513993 () Bool)

(assert (=> b!3945256 m!4513993))

(declare-fun m!4513995 () Bool)

(assert (=> b!3945251 m!4513995))

(declare-fun m!4513997 () Bool)

(assert (=> b!3945257 m!4513997))

(declare-fun m!4513999 () Bool)

(assert (=> b!3945257 m!4513999))

(declare-fun m!4514001 () Bool)

(assert (=> b!3945263 m!4514001))

(declare-fun m!4514003 () Bool)

(assert (=> b!3945263 m!4514003))

(declare-fun m!4514005 () Bool)

(assert (=> b!3945263 m!4514005))

(assert (=> b!3945263 m!4514003))

(declare-fun m!4514007 () Bool)

(assert (=> b!3945263 m!4514007))

(declare-fun m!4514009 () Bool)

(assert (=> b!3945263 m!4514009))

(declare-fun m!4514011 () Bool)

(assert (=> b!3945263 m!4514011))

(declare-fun m!4514013 () Bool)

(assert (=> b!3945263 m!4514013))

(declare-fun m!4514015 () Bool)

(assert (=> b!3945263 m!4514015))

(declare-fun m!4514017 () Bool)

(assert (=> b!3945263 m!4514017))

(declare-fun m!4514019 () Bool)

(assert (=> b!3945263 m!4514019))

(declare-fun m!4514021 () Bool)

(assert (=> b!3945252 m!4514021))

(declare-fun m!4514023 () Bool)

(assert (=> b!3945243 m!4514023))

(declare-fun m!4514025 () Bool)

(assert (=> b!3945243 m!4514025))

(declare-fun m!4514027 () Bool)

(assert (=> b!3945247 m!4514027))

(declare-fun m!4514029 () Bool)

(assert (=> b!3945259 m!4514029))

(declare-fun m!4514031 () Bool)

(assert (=> b!3945266 m!4514031))

(check-sat (not b!3945255) (not b!3945259) (not b_next!108787) (not b!3945262) b_and!301785 (not b!3945266) b_and!301777 (not b!3945244) (not b!3945257) (not b_next!108783) b_and!301783 (not b!3945247) b_and!301781 (not b_next!108791) (not b!3945246) (not b_next!108789) (not b!3945245) (not b!3945258) (not b!3945264) (not b_next!108781) (not b_next!108785) (not b!3945251) tp_is_empty!19885 (not b!3945263) (not b!3945252) b_and!301775 (not b!3945248) (not b!3945265) (not b!3945256) (not b!3945243) b_and!301779 (not b!3945250) (not b!3945249))
(check-sat (not b_next!108787) (not b_next!108789) (not b_next!108781) b_and!301785 b_and!301777 (not b_next!108785) b_and!301775 b_and!301779 (not b_next!108783) b_and!301783 b_and!301781 (not b_next!108791))
(get-model)

(declare-fun d!1170313 () Bool)

(declare-fun lt!1379408 () List!42028)

(assert (=> d!1170313 (= (++!10862 lt!1379392 lt!1379408) lt!1379397)))

(declare-fun e!2441301 () List!42028)

(assert (=> d!1170313 (= lt!1379408 e!2441301)))

(declare-fun c!685309 () Bool)

(assert (=> d!1170313 (= c!685309 ((_ is Cons!41904) lt!1379392))))

(declare-fun size!31424 (List!42028) Int)

(assert (=> d!1170313 (>= (size!31424 lt!1379397) (size!31424 lt!1379392))))

(assert (=> d!1170313 (= (getSuffix!2092 lt!1379397 lt!1379392) lt!1379408)))

(declare-fun b!3945289 () Bool)

(declare-fun tail!6107 (List!42028) List!42028)

(assert (=> b!3945289 (= e!2441301 (getSuffix!2092 (tail!6107 lt!1379397) (t!327619 lt!1379392)))))

(declare-fun b!3945290 () Bool)

(assert (=> b!3945290 (= e!2441301 lt!1379397)))

(assert (= (and d!1170313 c!685309) b!3945289))

(assert (= (and d!1170313 (not c!685309)) b!3945290))

(declare-fun m!4514053 () Bool)

(assert (=> d!1170313 m!4514053))

(declare-fun m!4514055 () Bool)

(assert (=> d!1170313 m!4514055))

(declare-fun m!4514057 () Bool)

(assert (=> d!1170313 m!4514057))

(declare-fun m!4514059 () Bool)

(assert (=> b!3945289 m!4514059))

(assert (=> b!3945289 m!4514059))

(declare-fun m!4514061 () Bool)

(assert (=> b!3945289 m!4514061))

(assert (=> b!3945263 d!1170313))

(declare-fun d!1170317 () Bool)

(assert (=> d!1170317 (ruleValid!2494 thiss!20629 (rule!9516 (_1!23732 (v!39309 lt!1379398))))))

(declare-fun lt!1379417 () Unit!60442)

(declare-fun choose!23540 (LexerInterface!6141 Rule!12904 List!42030) Unit!60442)

(assert (=> d!1170317 (= lt!1379417 (choose!23540 thiss!20629 (rule!9516 (_1!23732 (v!39309 lt!1379398))) rules!2768))))

(declare-fun contains!8392 (List!42030 Rule!12904) Bool)

(assert (=> d!1170317 (contains!8392 rules!2768 (rule!9516 (_1!23732 (v!39309 lt!1379398))))))

(assert (=> d!1170317 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1570 thiss!20629 (rule!9516 (_1!23732 (v!39309 lt!1379398))) rules!2768) lt!1379417)))

(declare-fun bs!586850 () Bool)

(assert (= bs!586850 d!1170317))

(assert (=> bs!586850 m!4514015))

(declare-fun m!4514071 () Bool)

(assert (=> bs!586850 m!4514071))

(declare-fun m!4514073 () Bool)

(assert (=> bs!586850 m!4514073))

(assert (=> b!3945263 d!1170317))

(declare-fun b!3945309 () Bool)

(declare-fun e!2441312 () List!42028)

(assert (=> b!3945309 (= e!2441312 (_2!23732 (v!39309 lt!1379398)))))

(declare-fun b!3945310 () Bool)

(assert (=> b!3945310 (= e!2441312 (Cons!41904 (h!47324 lt!1379392) (++!10862 (t!327619 lt!1379392) (_2!23732 (v!39309 lt!1379398)))))))

(declare-fun b!3945311 () Bool)

(declare-fun res!1596454 () Bool)

(declare-fun e!2441311 () Bool)

(assert (=> b!3945311 (=> (not res!1596454) (not e!2441311))))

(declare-fun lt!1379423 () List!42028)

(assert (=> b!3945311 (= res!1596454 (= (size!31424 lt!1379423) (+ (size!31424 lt!1379392) (size!31424 (_2!23732 (v!39309 lt!1379398))))))))

(declare-fun d!1170323 () Bool)

(assert (=> d!1170323 e!2441311))

(declare-fun res!1596453 () Bool)

(assert (=> d!1170323 (=> (not res!1596453) (not e!2441311))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6341 (List!42028) (InoxSet C!23100))

(assert (=> d!1170323 (= res!1596453 (= (content!6341 lt!1379423) ((_ map or) (content!6341 lt!1379392) (content!6341 (_2!23732 (v!39309 lt!1379398))))))))

(assert (=> d!1170323 (= lt!1379423 e!2441312)))

(declare-fun c!685312 () Bool)

(assert (=> d!1170323 (= c!685312 ((_ is Nil!41904) lt!1379392))))

(assert (=> d!1170323 (= (++!10862 lt!1379392 (_2!23732 (v!39309 lt!1379398))) lt!1379423)))

(declare-fun b!3945312 () Bool)

(assert (=> b!3945312 (= e!2441311 (or (not (= (_2!23732 (v!39309 lt!1379398)) Nil!41904)) (= lt!1379423 lt!1379392)))))

(assert (= (and d!1170323 c!685312) b!3945309))

(assert (= (and d!1170323 (not c!685312)) b!3945310))

(assert (= (and d!1170323 res!1596453) b!3945311))

(assert (= (and b!3945311 res!1596454) b!3945312))

(declare-fun m!4514081 () Bool)

(assert (=> b!3945310 m!4514081))

(declare-fun m!4514085 () Bool)

(assert (=> b!3945311 m!4514085))

(assert (=> b!3945311 m!4514057))

(declare-fun m!4514089 () Bool)

(assert (=> b!3945311 m!4514089))

(declare-fun m!4514091 () Bool)

(assert (=> d!1170323 m!4514091))

(declare-fun m!4514093 () Bool)

(assert (=> d!1170323 m!4514093))

(declare-fun m!4514095 () Bool)

(assert (=> d!1170323 m!4514095))

(assert (=> b!3945263 d!1170323))

(declare-fun b!3945334 () Bool)

(declare-fun e!2441328 () Bool)

(declare-fun e!2441327 () Bool)

(assert (=> b!3945334 (= e!2441328 e!2441327)))

(declare-fun res!1596470 () Bool)

(assert (=> b!3945334 (=> (not res!1596470) (not e!2441327))))

(assert (=> b!3945334 (= res!1596470 (not ((_ is Nil!41904) lt!1379397)))))

(declare-fun b!3945336 () Bool)

(assert (=> b!3945336 (= e!2441327 (isPrefix!3641 (tail!6107 lt!1379392) (tail!6107 lt!1379397)))))

(declare-fun b!3945337 () Bool)

(declare-fun e!2441326 () Bool)

(assert (=> b!3945337 (= e!2441326 (>= (size!31424 lt!1379397) (size!31424 lt!1379392)))))

(declare-fun d!1170329 () Bool)

(assert (=> d!1170329 e!2441326))

(declare-fun res!1596469 () Bool)

(assert (=> d!1170329 (=> res!1596469 e!2441326)))

(declare-fun lt!1379429 () Bool)

(assert (=> d!1170329 (= res!1596469 (not lt!1379429))))

(assert (=> d!1170329 (= lt!1379429 e!2441328)))

(declare-fun res!1596471 () Bool)

(assert (=> d!1170329 (=> res!1596471 e!2441328)))

(assert (=> d!1170329 (= res!1596471 ((_ is Nil!41904) lt!1379392))))

(assert (=> d!1170329 (= (isPrefix!3641 lt!1379392 lt!1379397) lt!1379429)))

(declare-fun b!3945335 () Bool)

(declare-fun res!1596472 () Bool)

(assert (=> b!3945335 (=> (not res!1596472) (not e!2441327))))

(declare-fun head!8381 (List!42028) C!23100)

(assert (=> b!3945335 (= res!1596472 (= (head!8381 lt!1379392) (head!8381 lt!1379397)))))

(assert (= (and d!1170329 (not res!1596471)) b!3945334))

(assert (= (and b!3945334 res!1596470) b!3945335))

(assert (= (and b!3945335 res!1596472) b!3945336))

(assert (= (and d!1170329 (not res!1596469)) b!3945337))

(declare-fun m!4514113 () Bool)

(assert (=> b!3945336 m!4514113))

(assert (=> b!3945336 m!4514059))

(assert (=> b!3945336 m!4514113))

(assert (=> b!3945336 m!4514059))

(declare-fun m!4514115 () Bool)

(assert (=> b!3945336 m!4514115))

(assert (=> b!3945337 m!4514055))

(assert (=> b!3945337 m!4514057))

(declare-fun m!4514119 () Bool)

(assert (=> b!3945335 m!4514119))

(declare-fun m!4514121 () Bool)

(assert (=> b!3945335 m!4514121))

(assert (=> b!3945263 d!1170329))

(declare-fun b!3945342 () Bool)

(declare-fun e!2441334 () Bool)

(declare-fun e!2441333 () Bool)

(assert (=> b!3945342 (= e!2441334 e!2441333)))

(declare-fun res!1596478 () Bool)

(assert (=> b!3945342 (=> (not res!1596478) (not e!2441333))))

(assert (=> b!3945342 (= res!1596478 (not ((_ is Nil!41904) lt!1379396)))))

(declare-fun b!3945344 () Bool)

(assert (=> b!3945344 (= e!2441333 (isPrefix!3641 (tail!6107 lt!1379392) (tail!6107 lt!1379396)))))

(declare-fun b!3945345 () Bool)

(declare-fun e!2441332 () Bool)

(assert (=> b!3945345 (= e!2441332 (>= (size!31424 lt!1379396) (size!31424 lt!1379392)))))

(declare-fun d!1170335 () Bool)

(assert (=> d!1170335 e!2441332))

(declare-fun res!1596477 () Bool)

(assert (=> d!1170335 (=> res!1596477 e!2441332)))

(declare-fun lt!1379431 () Bool)

(assert (=> d!1170335 (= res!1596477 (not lt!1379431))))

(assert (=> d!1170335 (= lt!1379431 e!2441334)))

(declare-fun res!1596479 () Bool)

(assert (=> d!1170335 (=> res!1596479 e!2441334)))

(assert (=> d!1170335 (= res!1596479 ((_ is Nil!41904) lt!1379392))))

(assert (=> d!1170335 (= (isPrefix!3641 lt!1379392 lt!1379396) lt!1379431)))

(declare-fun b!3945343 () Bool)

(declare-fun res!1596480 () Bool)

(assert (=> b!3945343 (=> (not res!1596480) (not e!2441333))))

(assert (=> b!3945343 (= res!1596480 (= (head!8381 lt!1379392) (head!8381 lt!1379396)))))

(assert (= (and d!1170335 (not res!1596479)) b!3945342))

(assert (= (and b!3945342 res!1596478) b!3945343))

(assert (= (and b!3945343 res!1596480) b!3945344))

(assert (= (and d!1170335 (not res!1596477)) b!3945345))

(assert (=> b!3945344 m!4514113))

(declare-fun m!4514129 () Bool)

(assert (=> b!3945344 m!4514129))

(assert (=> b!3945344 m!4514113))

(assert (=> b!3945344 m!4514129))

(declare-fun m!4514131 () Bool)

(assert (=> b!3945344 m!4514131))

(declare-fun m!4514133 () Bool)

(assert (=> b!3945345 m!4514133))

(assert (=> b!3945345 m!4514057))

(assert (=> b!3945343 m!4514119))

(declare-fun m!4514135 () Bool)

(assert (=> b!3945343 m!4514135))

(assert (=> b!3945263 d!1170335))

(declare-fun d!1170339 () Bool)

(declare-fun res!1596489 () Bool)

(declare-fun e!2441349 () Bool)

(assert (=> d!1170339 (=> (not res!1596489) (not e!2441349))))

(declare-fun validRegex!5218 (Regex!11457) Bool)

(assert (=> d!1170339 (= res!1596489 (validRegex!5218 (regex!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398))))))))

(assert (=> d!1170339 (= (ruleValid!2494 thiss!20629 (rule!9516 (_1!23732 (v!39309 lt!1379398)))) e!2441349)))

(declare-fun b!3945370 () Bool)

(declare-fun res!1596490 () Bool)

(assert (=> b!3945370 (=> (not res!1596490) (not e!2441349))))

(declare-fun nullable!4019 (Regex!11457) Bool)

(assert (=> b!3945370 (= res!1596490 (not (nullable!4019 (regex!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))))))

(declare-fun b!3945371 () Bool)

(assert (=> b!3945371 (= e!2441349 (not (= (tag!7412 (rule!9516 (_1!23732 (v!39309 lt!1379398)))) (String!47629 ""))))))

(assert (= (and d!1170339 res!1596489) b!3945370))

(assert (= (and b!3945370 res!1596490) b!3945371))

(declare-fun m!4514149 () Bool)

(assert (=> d!1170339 m!4514149))

(declare-fun m!4514151 () Bool)

(assert (=> b!3945370 m!4514151))

(assert (=> b!3945263 d!1170339))

(declare-fun d!1170349 () Bool)

(declare-fun lt!1379435 () BalanceConc!25120)

(assert (=> d!1170349 (= (list!15564 lt!1379435) (originalCharacters!7152 (_1!23732 (v!39309 lt!1379398))))))

(declare-fun dynLambda!17955 (Int TokenValue!6782) BalanceConc!25120)

(assert (=> d!1170349 (= lt!1379435 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398))))) (value!207366 (_1!23732 (v!39309 lt!1379398)))))))

(assert (=> d!1170349 (= (charsOf!4370 (_1!23732 (v!39309 lt!1379398))) lt!1379435)))

(declare-fun b_lambda!115385 () Bool)

(assert (=> (not b_lambda!115385) (not d!1170349)))

(declare-fun tb!236867 () Bool)

(declare-fun t!327629 () Bool)

(assert (=> (and b!3945254 (= (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))) t!327629) tb!236867))

(declare-fun b!3945390 () Bool)

(declare-fun e!2441361 () Bool)

(declare-fun tp!1201077 () Bool)

(declare-fun inv!56128 (Conc!12763) Bool)

(assert (=> b!3945390 (= e!2441361 (and (inv!56128 (c!685303 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398))))) (value!207366 (_1!23732 (v!39309 lt!1379398)))))) tp!1201077))))

(declare-fun result!286890 () Bool)

(declare-fun inv!56129 (BalanceConc!25120) Bool)

(assert (=> tb!236867 (= result!286890 (and (inv!56129 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398))))) (value!207366 (_1!23732 (v!39309 lt!1379398))))) e!2441361))))

(assert (= tb!236867 b!3945390))

(declare-fun m!4514175 () Bool)

(assert (=> b!3945390 m!4514175))

(declare-fun m!4514179 () Bool)

(assert (=> tb!236867 m!4514179))

(assert (=> d!1170349 t!327629))

(declare-fun b_and!301799 () Bool)

(assert (= b_and!301777 (and (=> t!327629 result!286890) b_and!301799)))

(declare-fun tb!236875 () Bool)

(declare-fun t!327637 () Bool)

(assert (=> (and b!3945260 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))) t!327637) tb!236875))

(declare-fun result!286900 () Bool)

(assert (= result!286900 result!286890))

(assert (=> d!1170349 t!327637))

(declare-fun b_and!301801 () Bool)

(assert (= b_and!301781 (and (=> t!327637 result!286900) b_and!301801)))

(declare-fun t!327639 () Bool)

(declare-fun tb!236877 () Bool)

(assert (=> (and b!3945253 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))) t!327639) tb!236877))

(declare-fun result!286902 () Bool)

(assert (= result!286902 result!286890))

(assert (=> d!1170349 t!327639))

(declare-fun b_and!301803 () Bool)

(assert (= b_and!301785 (and (=> t!327639 result!286902) b_and!301803)))

(declare-fun m!4514187 () Bool)

(assert (=> d!1170349 m!4514187))

(declare-fun m!4514189 () Bool)

(assert (=> d!1170349 m!4514189))

(assert (=> b!3945263 d!1170349))

(declare-fun d!1170363 () Bool)

(assert (=> d!1170363 (isPrefix!3641 lt!1379392 (++!10862 lt!1379392 (_2!23732 (v!39309 lt!1379398))))))

(declare-fun lt!1379438 () Unit!60442)

(declare-fun choose!23541 (List!42028 List!42028) Unit!60442)

(assert (=> d!1170363 (= lt!1379438 (choose!23541 lt!1379392 (_2!23732 (v!39309 lt!1379398))))))

(assert (=> d!1170363 (= (lemmaConcatTwoListThenFirstIsPrefix!2500 lt!1379392 (_2!23732 (v!39309 lt!1379398))) lt!1379438)))

(declare-fun bs!586852 () Bool)

(assert (= bs!586852 d!1170363))

(assert (=> bs!586852 m!4514001))

(assert (=> bs!586852 m!4514001))

(declare-fun m!4514195 () Bool)

(assert (=> bs!586852 m!4514195))

(declare-fun m!4514197 () Bool)

(assert (=> bs!586852 m!4514197))

(assert (=> b!3945263 d!1170363))

(declare-fun d!1170369 () Bool)

(declare-fun list!15566 (Conc!12763) List!42028)

(assert (=> d!1170369 (= (list!15564 (charsOf!4370 (_1!23732 (v!39309 lt!1379398)))) (list!15566 (c!685303 (charsOf!4370 (_1!23732 (v!39309 lt!1379398))))))))

(declare-fun bs!586853 () Bool)

(assert (= bs!586853 d!1170369))

(declare-fun m!4514199 () Bool)

(assert (=> bs!586853 m!4514199))

(assert (=> b!3945263 d!1170369))

(declare-fun d!1170371 () Bool)

(assert (=> d!1170371 (= (size!31421 (_1!23732 (v!39309 lt!1379398))) (size!31424 (originalCharacters!7152 (_1!23732 (v!39309 lt!1379398)))))))

(declare-fun Unit!60445 () Unit!60442)

(assert (=> d!1170371 (= (lemmaCharactersSize!1205 (_1!23732 (v!39309 lt!1379398))) Unit!60445)))

(declare-fun bs!586854 () Bool)

(assert (= bs!586854 d!1170371))

(declare-fun m!4514201 () Bool)

(assert (=> bs!586854 m!4514201))

(assert (=> b!3945263 d!1170371))

(declare-fun d!1170373 () Bool)

(declare-fun res!1596508 () Bool)

(declare-fun e!2441368 () Bool)

(assert (=> d!1170373 (=> (not res!1596508) (not e!2441368))))

(declare-fun rulesValid!2557 (LexerInterface!6141 List!42030) Bool)

(assert (=> d!1170373 (= res!1596508 (rulesValid!2557 thiss!20629 rules!2768))))

(assert (=> d!1170373 (= (rulesInvariant!5484 thiss!20629 rules!2768) e!2441368)))

(declare-fun b!3945397 () Bool)

(declare-datatypes ((List!42032 0))(
  ( (Nil!41908) (Cons!41908 (h!47328 String!47628) (t!327695 List!42032)) )
))
(declare-fun noDuplicateTag!2558 (LexerInterface!6141 List!42030 List!42032) Bool)

(assert (=> b!3945397 (= e!2441368 (noDuplicateTag!2558 thiss!20629 rules!2768 Nil!41908))))

(assert (= (and d!1170373 res!1596508) b!3945397))

(declare-fun m!4514203 () Bool)

(assert (=> d!1170373 m!4514203))

(declare-fun m!4514205 () Bool)

(assert (=> b!3945397 m!4514205))

(assert (=> b!3945252 d!1170373))

(declare-fun b!3945543 () Bool)

(declare-fun res!1596559 () Bool)

(declare-fun e!2441456 () Bool)

(assert (=> b!3945543 (=> (not res!1596559) (not e!2441456))))

(declare-fun lt!1379484 () Option!8972)

(declare-fun get!13840 (Option!8972) tuple2!41196)

(declare-fun apply!9783 (TokenValueInjection!12992 BalanceConc!25120) TokenValue!6782)

(declare-fun seqFromList!4811 (List!42028) BalanceConc!25120)

(assert (=> b!3945543 (= res!1596559 (= (value!207366 (_1!23732 (get!13840 lt!1379484))) (apply!9783 (transformation!6552 (rule!9516 (_1!23732 (get!13840 lt!1379484)))) (seqFromList!4811 (originalCharacters!7152 (_1!23732 (get!13840 lt!1379484)))))))))

(declare-fun b!3945544 () Bool)

(declare-fun e!2441457 () Option!8972)

(declare-fun lt!1379480 () Option!8972)

(declare-fun lt!1379481 () Option!8972)

(assert (=> b!3945544 (= e!2441457 (ite (and ((_ is None!8971) lt!1379480) ((_ is None!8971) lt!1379481)) None!8971 (ite ((_ is None!8971) lt!1379481) lt!1379480 (ite ((_ is None!8971) lt!1379480) lt!1379481 (ite (>= (size!31421 (_1!23732 (v!39309 lt!1379480))) (size!31421 (_1!23732 (v!39309 lt!1379481)))) lt!1379480 lt!1379481)))))))

(declare-fun call!285142 () Option!8972)

(assert (=> b!3945544 (= lt!1379480 call!285142)))

(assert (=> b!3945544 (= lt!1379481 (maxPrefix!3445 thiss!20629 (t!327621 rules!2768) lt!1379397))))

(declare-fun b!3945545 () Bool)

(declare-fun res!1596561 () Bool)

(assert (=> b!3945545 (=> (not res!1596561) (not e!2441456))))

(declare-fun matchR!5502 (Regex!11457 List!42028) Bool)

(assert (=> b!3945545 (= res!1596561 (matchR!5502 (regex!6552 (rule!9516 (_1!23732 (get!13840 lt!1379484)))) (list!15564 (charsOf!4370 (_1!23732 (get!13840 lt!1379484))))))))

(declare-fun b!3945546 () Bool)

(declare-fun res!1596562 () Bool)

(assert (=> b!3945546 (=> (not res!1596562) (not e!2441456))))

(assert (=> b!3945546 (= res!1596562 (= (list!15564 (charsOf!4370 (_1!23732 (get!13840 lt!1379484)))) (originalCharacters!7152 (_1!23732 (get!13840 lt!1379484)))))))

(declare-fun d!1170375 () Bool)

(declare-fun e!2441455 () Bool)

(assert (=> d!1170375 e!2441455))

(declare-fun res!1596564 () Bool)

(assert (=> d!1170375 (=> res!1596564 e!2441455)))

(declare-fun isEmpty!25012 (Option!8972) Bool)

(assert (=> d!1170375 (= res!1596564 (isEmpty!25012 lt!1379484))))

(assert (=> d!1170375 (= lt!1379484 e!2441457)))

(declare-fun c!685342 () Bool)

(assert (=> d!1170375 (= c!685342 (and ((_ is Cons!41906) rules!2768) ((_ is Nil!41906) (t!327621 rules!2768))))))

(declare-fun lt!1379482 () Unit!60442)

(declare-fun lt!1379483 () Unit!60442)

(assert (=> d!1170375 (= lt!1379482 lt!1379483)))

(assert (=> d!1170375 (isPrefix!3641 lt!1379397 lt!1379397)))

(declare-fun lemmaIsPrefixRefl!2300 (List!42028 List!42028) Unit!60442)

(assert (=> d!1170375 (= lt!1379483 (lemmaIsPrefixRefl!2300 lt!1379397 lt!1379397))))

(declare-fun rulesValidInductive!2370 (LexerInterface!6141 List!42030) Bool)

(assert (=> d!1170375 (rulesValidInductive!2370 thiss!20629 rules!2768)))

(assert (=> d!1170375 (= (maxPrefix!3445 thiss!20629 rules!2768 lt!1379397) lt!1379484)))

(declare-fun b!3945547 () Bool)

(assert (=> b!3945547 (= e!2441456 (contains!8392 rules!2768 (rule!9516 (_1!23732 (get!13840 lt!1379484)))))))

(declare-fun b!3945548 () Bool)

(assert (=> b!3945548 (= e!2441457 call!285142)))

(declare-fun b!3945549 () Bool)

(declare-fun res!1596565 () Bool)

(assert (=> b!3945549 (=> (not res!1596565) (not e!2441456))))

(assert (=> b!3945549 (= res!1596565 (< (size!31424 (_2!23732 (get!13840 lt!1379484))) (size!31424 lt!1379397)))))

(declare-fun b!3945550 () Bool)

(declare-fun res!1596560 () Bool)

(assert (=> b!3945550 (=> (not res!1596560) (not e!2441456))))

(assert (=> b!3945550 (= res!1596560 (= (++!10862 (list!15564 (charsOf!4370 (_1!23732 (get!13840 lt!1379484)))) (_2!23732 (get!13840 lt!1379484))) lt!1379397))))

(declare-fun bm!285137 () Bool)

(declare-fun maxPrefixOneRule!2507 (LexerInterface!6141 Rule!12904 List!42028) Option!8972)

(assert (=> bm!285137 (= call!285142 (maxPrefixOneRule!2507 thiss!20629 (h!47326 rules!2768) lt!1379397))))

(declare-fun b!3945551 () Bool)

(assert (=> b!3945551 (= e!2441455 e!2441456)))

(declare-fun res!1596563 () Bool)

(assert (=> b!3945551 (=> (not res!1596563) (not e!2441456))))

(declare-fun isDefined!6969 (Option!8972) Bool)

(assert (=> b!3945551 (= res!1596563 (isDefined!6969 lt!1379484))))

(assert (= (and d!1170375 c!685342) b!3945548))

(assert (= (and d!1170375 (not c!685342)) b!3945544))

(assert (= (or b!3945548 b!3945544) bm!285137))

(assert (= (and d!1170375 (not res!1596564)) b!3945551))

(assert (= (and b!3945551 res!1596563) b!3945546))

(assert (= (and b!3945546 res!1596562) b!3945549))

(assert (= (and b!3945549 res!1596565) b!3945550))

(assert (= (and b!3945550 res!1596560) b!3945543))

(assert (= (and b!3945543 res!1596559) b!3945545))

(assert (= (and b!3945545 res!1596561) b!3945547))

(declare-fun m!4514321 () Bool)

(assert (=> b!3945545 m!4514321))

(declare-fun m!4514323 () Bool)

(assert (=> b!3945545 m!4514323))

(assert (=> b!3945545 m!4514323))

(declare-fun m!4514325 () Bool)

(assert (=> b!3945545 m!4514325))

(assert (=> b!3945545 m!4514325))

(declare-fun m!4514327 () Bool)

(assert (=> b!3945545 m!4514327))

(assert (=> b!3945549 m!4514321))

(declare-fun m!4514329 () Bool)

(assert (=> b!3945549 m!4514329))

(assert (=> b!3945549 m!4514055))

(assert (=> b!3945546 m!4514321))

(assert (=> b!3945546 m!4514323))

(assert (=> b!3945546 m!4514323))

(assert (=> b!3945546 m!4514325))

(assert (=> b!3945547 m!4514321))

(declare-fun m!4514331 () Bool)

(assert (=> b!3945547 m!4514331))

(declare-fun m!4514333 () Bool)

(assert (=> bm!285137 m!4514333))

(declare-fun m!4514335 () Bool)

(assert (=> d!1170375 m!4514335))

(declare-fun m!4514337 () Bool)

(assert (=> d!1170375 m!4514337))

(declare-fun m!4514339 () Bool)

(assert (=> d!1170375 m!4514339))

(declare-fun m!4514341 () Bool)

(assert (=> d!1170375 m!4514341))

(declare-fun m!4514343 () Bool)

(assert (=> b!3945544 m!4514343))

(declare-fun m!4514345 () Bool)

(assert (=> b!3945551 m!4514345))

(assert (=> b!3945550 m!4514321))

(assert (=> b!3945550 m!4514323))

(assert (=> b!3945550 m!4514323))

(assert (=> b!3945550 m!4514325))

(assert (=> b!3945550 m!4514325))

(declare-fun m!4514347 () Bool)

(assert (=> b!3945550 m!4514347))

(assert (=> b!3945543 m!4514321))

(declare-fun m!4514349 () Bool)

(assert (=> b!3945543 m!4514349))

(assert (=> b!3945543 m!4514349))

(declare-fun m!4514351 () Bool)

(assert (=> b!3945543 m!4514351))

(assert (=> b!3945262 d!1170375))

(declare-fun d!1170391 () Bool)

(assert (=> d!1170391 (= (inv!56121 (tag!7412 (rule!9516 (h!47325 suffixTokens!72)))) (= (mod (str.len (value!207365 (tag!7412 (rule!9516 (h!47325 suffixTokens!72))))) 2) 0))))

(assert (=> b!3945243 d!1170391))

(declare-fun d!1170393 () Bool)

(declare-fun res!1596568 () Bool)

(declare-fun e!2441460 () Bool)

(assert (=> d!1170393 (=> (not res!1596568) (not e!2441460))))

(declare-fun semiInverseModEq!2823 (Int Int) Bool)

(assert (=> d!1170393 (= res!1596568 (semiInverseModEq!2823 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (toValue!9024 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))))))

(assert (=> d!1170393 (= (inv!56124 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) e!2441460)))

(declare-fun b!3945554 () Bool)

(declare-fun equivClasses!2722 (Int Int) Bool)

(assert (=> b!3945554 (= e!2441460 (equivClasses!2722 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (toValue!9024 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))))))

(assert (= (and d!1170393 res!1596568) b!3945554))

(declare-fun m!4514353 () Bool)

(assert (=> d!1170393 m!4514353))

(declare-fun m!4514355 () Bool)

(assert (=> b!3945554 m!4514355))

(assert (=> b!3945243 d!1170393))

(declare-fun d!1170395 () Bool)

(assert (=> d!1170395 (= (inv!56121 (tag!7412 (rule!9516 (h!47325 prefixTokens!80)))) (= (mod (str.len (value!207365 (tag!7412 (rule!9516 (h!47325 prefixTokens!80))))) 2) 0))))

(assert (=> b!3945264 d!1170395))

(declare-fun d!1170397 () Bool)

(declare-fun res!1596569 () Bool)

(declare-fun e!2441461 () Bool)

(assert (=> d!1170397 (=> (not res!1596569) (not e!2441461))))

(assert (=> d!1170397 (= res!1596569 (semiInverseModEq!2823 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (toValue!9024 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))))))

(assert (=> d!1170397 (= (inv!56124 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) e!2441461)))

(declare-fun b!3945555 () Bool)

(assert (=> b!3945555 (= e!2441461 (equivClasses!2722 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (toValue!9024 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))))))

(assert (= (and d!1170397 res!1596569) b!3945555))

(declare-fun m!4514357 () Bool)

(assert (=> d!1170397 m!4514357))

(declare-fun m!4514359 () Bool)

(assert (=> b!3945555 m!4514359))

(assert (=> b!3945264 d!1170397))

(declare-fun b!3945566 () Bool)

(declare-fun e!2441468 () Bool)

(declare-fun lt!1379492 () tuple2!41194)

(assert (=> b!3945566 (= e!2441468 (not (isEmpty!25010 (_1!23731 lt!1379492))))))

(declare-fun b!3945567 () Bool)

(declare-fun e!2441469 () tuple2!41194)

(declare-fun lt!1379493 () Option!8972)

(declare-fun lt!1379491 () tuple2!41194)

(assert (=> b!3945567 (= e!2441469 (tuple2!41195 (Cons!41905 (_1!23732 (v!39309 lt!1379493)) (_1!23731 lt!1379491)) (_2!23731 lt!1379491)))))

(assert (=> b!3945567 (= lt!1379491 (lexList!1909 thiss!20629 rules!2768 (_2!23732 (v!39309 lt!1379493))))))

(declare-fun b!3945568 () Bool)

(assert (=> b!3945568 (= e!2441469 (tuple2!41195 Nil!41905 lt!1379397))))

(declare-fun b!3945569 () Bool)

(declare-fun e!2441470 () Bool)

(assert (=> b!3945569 (= e!2441470 e!2441468)))

(declare-fun res!1596572 () Bool)

(assert (=> b!3945569 (= res!1596572 (< (size!31424 (_2!23731 lt!1379492)) (size!31424 lt!1379397)))))

(assert (=> b!3945569 (=> (not res!1596572) (not e!2441468))))

(declare-fun d!1170399 () Bool)

(assert (=> d!1170399 e!2441470))

(declare-fun c!685347 () Bool)

(declare-fun size!31425 (List!42029) Int)

(assert (=> d!1170399 (= c!685347 (> (size!31425 (_1!23731 lt!1379492)) 0))))

(assert (=> d!1170399 (= lt!1379492 e!2441469)))

(declare-fun c!685348 () Bool)

(assert (=> d!1170399 (= c!685348 ((_ is Some!8971) lt!1379493))))

(assert (=> d!1170399 (= lt!1379493 (maxPrefix!3445 thiss!20629 rules!2768 lt!1379397))))

(assert (=> d!1170399 (= (lexList!1909 thiss!20629 rules!2768 lt!1379397) lt!1379492)))

(declare-fun b!3945570 () Bool)

(assert (=> b!3945570 (= e!2441470 (= (_2!23731 lt!1379492) lt!1379397))))

(assert (= (and d!1170399 c!685348) b!3945567))

(assert (= (and d!1170399 (not c!685348)) b!3945568))

(assert (= (and d!1170399 c!685347) b!3945569))

(assert (= (and d!1170399 (not c!685347)) b!3945570))

(assert (= (and b!3945569 res!1596572) b!3945566))

(declare-fun m!4514361 () Bool)

(assert (=> b!3945566 m!4514361))

(declare-fun m!4514363 () Bool)

(assert (=> b!3945567 m!4514363))

(declare-fun m!4514365 () Bool)

(assert (=> b!3945569 m!4514365))

(assert (=> b!3945569 m!4514055))

(declare-fun m!4514367 () Bool)

(assert (=> d!1170399 m!4514367))

(assert (=> d!1170399 m!4513973))

(assert (=> b!3945255 d!1170399))

(declare-fun d!1170401 () Bool)

(declare-fun e!2441476 () Bool)

(assert (=> d!1170401 e!2441476))

(declare-fun res!1596578 () Bool)

(assert (=> d!1170401 (=> (not res!1596578) (not e!2441476))))

(declare-fun lt!1379496 () List!42029)

(declare-fun content!6343 (List!42029) (InoxSet Token!12242))

(assert (=> d!1170401 (= res!1596578 (= (content!6343 lt!1379496) ((_ map or) (content!6343 prefixTokens!80) (content!6343 suffixTokens!72))))))

(declare-fun e!2441475 () List!42029)

(assert (=> d!1170401 (= lt!1379496 e!2441475)))

(declare-fun c!685351 () Bool)

(assert (=> d!1170401 (= c!685351 ((_ is Nil!41905) prefixTokens!80))))

(assert (=> d!1170401 (= (++!10861 prefixTokens!80 suffixTokens!72) lt!1379496)))

(declare-fun b!3945579 () Bool)

(assert (=> b!3945579 (= e!2441475 suffixTokens!72)))

(declare-fun b!3945580 () Bool)

(assert (=> b!3945580 (= e!2441475 (Cons!41905 (h!47325 prefixTokens!80) (++!10861 (t!327620 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3945582 () Bool)

(assert (=> b!3945582 (= e!2441476 (or (not (= suffixTokens!72 Nil!41905)) (= lt!1379496 prefixTokens!80)))))

(declare-fun b!3945581 () Bool)

(declare-fun res!1596577 () Bool)

(assert (=> b!3945581 (=> (not res!1596577) (not e!2441476))))

(assert (=> b!3945581 (= res!1596577 (= (size!31425 lt!1379496) (+ (size!31425 prefixTokens!80) (size!31425 suffixTokens!72))))))

(assert (= (and d!1170401 c!685351) b!3945579))

(assert (= (and d!1170401 (not c!685351)) b!3945580))

(assert (= (and d!1170401 res!1596578) b!3945581))

(assert (= (and b!3945581 res!1596577) b!3945582))

(declare-fun m!4514369 () Bool)

(assert (=> d!1170401 m!4514369))

(declare-fun m!4514371 () Bool)

(assert (=> d!1170401 m!4514371))

(declare-fun m!4514373 () Bool)

(assert (=> d!1170401 m!4514373))

(declare-fun m!4514375 () Bool)

(assert (=> b!3945580 m!4514375))

(declare-fun m!4514377 () Bool)

(assert (=> b!3945581 m!4514377))

(declare-fun m!4514379 () Bool)

(assert (=> b!3945581 m!4514379))

(declare-fun m!4514381 () Bool)

(assert (=> b!3945581 m!4514381))

(assert (=> b!3945255 d!1170401))

(declare-fun b!3945583 () Bool)

(declare-fun e!2441478 () List!42028)

(assert (=> b!3945583 (= e!2441478 suffix!1176)))

(declare-fun b!3945584 () Bool)

(assert (=> b!3945584 (= e!2441478 (Cons!41904 (h!47324 prefix!426) (++!10862 (t!327619 prefix!426) suffix!1176)))))

(declare-fun b!3945585 () Bool)

(declare-fun res!1596580 () Bool)

(declare-fun e!2441477 () Bool)

(assert (=> b!3945585 (=> (not res!1596580) (not e!2441477))))

(declare-fun lt!1379497 () List!42028)

(assert (=> b!3945585 (= res!1596580 (= (size!31424 lt!1379497) (+ (size!31424 prefix!426) (size!31424 suffix!1176))))))

(declare-fun d!1170403 () Bool)

(assert (=> d!1170403 e!2441477))

(declare-fun res!1596579 () Bool)

(assert (=> d!1170403 (=> (not res!1596579) (not e!2441477))))

(assert (=> d!1170403 (= res!1596579 (= (content!6341 lt!1379497) ((_ map or) (content!6341 prefix!426) (content!6341 suffix!1176))))))

(assert (=> d!1170403 (= lt!1379497 e!2441478)))

(declare-fun c!685352 () Bool)

(assert (=> d!1170403 (= c!685352 ((_ is Nil!41904) prefix!426))))

(assert (=> d!1170403 (= (++!10862 prefix!426 suffix!1176) lt!1379497)))

(declare-fun b!3945586 () Bool)

(assert (=> b!3945586 (= e!2441477 (or (not (= suffix!1176 Nil!41904)) (= lt!1379497 prefix!426)))))

(assert (= (and d!1170403 c!685352) b!3945583))

(assert (= (and d!1170403 (not c!685352)) b!3945584))

(assert (= (and d!1170403 res!1596579) b!3945585))

(assert (= (and b!3945585 res!1596580) b!3945586))

(declare-fun m!4514383 () Bool)

(assert (=> b!3945584 m!4514383))

(declare-fun m!4514385 () Bool)

(assert (=> b!3945585 m!4514385))

(declare-fun m!4514387 () Bool)

(assert (=> b!3945585 m!4514387))

(declare-fun m!4514389 () Bool)

(assert (=> b!3945585 m!4514389))

(declare-fun m!4514391 () Bool)

(assert (=> d!1170403 m!4514391))

(declare-fun m!4514393 () Bool)

(assert (=> d!1170403 m!4514393))

(declare-fun m!4514395 () Bool)

(assert (=> d!1170403 m!4514395))

(assert (=> b!3945255 d!1170403))

(declare-fun b!3945587 () Bool)

(declare-fun e!2441480 () List!42028)

(assert (=> b!3945587 (= e!2441480 lt!1379395)))

(declare-fun b!3945588 () Bool)

(assert (=> b!3945588 (= e!2441480 (Cons!41904 (h!47324 lt!1379392) (++!10862 (t!327619 lt!1379392) lt!1379395)))))

(declare-fun b!3945589 () Bool)

(declare-fun res!1596582 () Bool)

(declare-fun e!2441479 () Bool)

(assert (=> b!3945589 (=> (not res!1596582) (not e!2441479))))

(declare-fun lt!1379498 () List!42028)

(assert (=> b!3945589 (= res!1596582 (= (size!31424 lt!1379498) (+ (size!31424 lt!1379392) (size!31424 lt!1379395))))))

(declare-fun d!1170405 () Bool)

(assert (=> d!1170405 e!2441479))

(declare-fun res!1596581 () Bool)

(assert (=> d!1170405 (=> (not res!1596581) (not e!2441479))))

(assert (=> d!1170405 (= res!1596581 (= (content!6341 lt!1379498) ((_ map or) (content!6341 lt!1379392) (content!6341 lt!1379395))))))

(assert (=> d!1170405 (= lt!1379498 e!2441480)))

(declare-fun c!685353 () Bool)

(assert (=> d!1170405 (= c!685353 ((_ is Nil!41904) lt!1379392))))

(assert (=> d!1170405 (= (++!10862 lt!1379392 lt!1379395) lt!1379498)))

(declare-fun b!3945590 () Bool)

(assert (=> b!3945590 (= e!2441479 (or (not (= lt!1379395 Nil!41904)) (= lt!1379498 lt!1379392)))))

(assert (= (and d!1170405 c!685353) b!3945587))

(assert (= (and d!1170405 (not c!685353)) b!3945588))

(assert (= (and d!1170405 res!1596581) b!3945589))

(assert (= (and b!3945589 res!1596582) b!3945590))

(declare-fun m!4514397 () Bool)

(assert (=> b!3945588 m!4514397))

(declare-fun m!4514399 () Bool)

(assert (=> b!3945589 m!4514399))

(assert (=> b!3945589 m!4514057))

(declare-fun m!4514401 () Bool)

(assert (=> b!3945589 m!4514401))

(declare-fun m!4514403 () Bool)

(assert (=> d!1170405 m!4514403))

(assert (=> d!1170405 m!4514093))

(declare-fun m!4514405 () Bool)

(assert (=> d!1170405 m!4514405))

(assert (=> b!3945265 d!1170405))

(declare-fun b!3945601 () Bool)

(declare-fun e!2441488 () Bool)

(declare-fun e!2441487 () Bool)

(assert (=> b!3945601 (= e!2441488 e!2441487)))

(declare-fun c!685359 () Bool)

(assert (=> b!3945601 (= c!685359 ((_ is IntegerValue!20347) (value!207366 (h!47325 prefixTokens!80))))))

(declare-fun b!3945602 () Bool)

(declare-fun e!2441489 () Bool)

(declare-fun inv!15 (TokenValue!6782) Bool)

(assert (=> b!3945602 (= e!2441489 (inv!15 (value!207366 (h!47325 prefixTokens!80))))))

(declare-fun b!3945603 () Bool)

(declare-fun inv!16 (TokenValue!6782) Bool)

(assert (=> b!3945603 (= e!2441488 (inv!16 (value!207366 (h!47325 prefixTokens!80))))))

(declare-fun d!1170407 () Bool)

(declare-fun c!685358 () Bool)

(assert (=> d!1170407 (= c!685358 ((_ is IntegerValue!20346) (value!207366 (h!47325 prefixTokens!80))))))

(assert (=> d!1170407 (= (inv!21 (value!207366 (h!47325 prefixTokens!80))) e!2441488)))

(declare-fun b!3945604 () Bool)

(declare-fun res!1596585 () Bool)

(assert (=> b!3945604 (=> res!1596585 e!2441489)))

(assert (=> b!3945604 (= res!1596585 (not ((_ is IntegerValue!20348) (value!207366 (h!47325 prefixTokens!80)))))))

(assert (=> b!3945604 (= e!2441487 e!2441489)))

(declare-fun b!3945605 () Bool)

(declare-fun inv!17 (TokenValue!6782) Bool)

(assert (=> b!3945605 (= e!2441487 (inv!17 (value!207366 (h!47325 prefixTokens!80))))))

(assert (= (and d!1170407 c!685358) b!3945603))

(assert (= (and d!1170407 (not c!685358)) b!3945601))

(assert (= (and b!3945601 c!685359) b!3945605))

(assert (= (and b!3945601 (not c!685359)) b!3945604))

(assert (= (and b!3945604 (not res!1596585)) b!3945602))

(declare-fun m!4514407 () Bool)

(assert (=> b!3945602 m!4514407))

(declare-fun m!4514409 () Bool)

(assert (=> b!3945603 m!4514409))

(declare-fun m!4514411 () Bool)

(assert (=> b!3945605 m!4514411))

(assert (=> b!3945256 d!1170407))

(declare-fun b!3945606 () Bool)

(declare-fun e!2441490 () Bool)

(declare-fun lt!1379500 () tuple2!41194)

(assert (=> b!3945606 (= e!2441490 (not (isEmpty!25010 (_1!23731 lt!1379500))))))

(declare-fun b!3945607 () Bool)

(declare-fun e!2441491 () tuple2!41194)

(declare-fun lt!1379501 () Option!8972)

(declare-fun lt!1379499 () tuple2!41194)

(assert (=> b!3945607 (= e!2441491 (tuple2!41195 (Cons!41905 (_1!23732 (v!39309 lt!1379501)) (_1!23731 lt!1379499)) (_2!23731 lt!1379499)))))

(assert (=> b!3945607 (= lt!1379499 (lexList!1909 thiss!20629 rules!2768 (_2!23732 (v!39309 lt!1379501))))))

(declare-fun b!3945608 () Bool)

(assert (=> b!3945608 (= e!2441491 (tuple2!41195 Nil!41905 suffix!1176))))

(declare-fun b!3945609 () Bool)

(declare-fun e!2441492 () Bool)

(assert (=> b!3945609 (= e!2441492 e!2441490)))

(declare-fun res!1596586 () Bool)

(assert (=> b!3945609 (= res!1596586 (< (size!31424 (_2!23731 lt!1379500)) (size!31424 suffix!1176)))))

(assert (=> b!3945609 (=> (not res!1596586) (not e!2441490))))

(declare-fun d!1170409 () Bool)

(assert (=> d!1170409 e!2441492))

(declare-fun c!685360 () Bool)

(assert (=> d!1170409 (= c!685360 (> (size!31425 (_1!23731 lt!1379500)) 0))))

(assert (=> d!1170409 (= lt!1379500 e!2441491)))

(declare-fun c!685361 () Bool)

(assert (=> d!1170409 (= c!685361 ((_ is Some!8971) lt!1379501))))

(assert (=> d!1170409 (= lt!1379501 (maxPrefix!3445 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1170409 (= (lexList!1909 thiss!20629 rules!2768 suffix!1176) lt!1379500)))

(declare-fun b!3945610 () Bool)

(assert (=> b!3945610 (= e!2441492 (= (_2!23731 lt!1379500) suffix!1176))))

(assert (= (and d!1170409 c!685361) b!3945607))

(assert (= (and d!1170409 (not c!685361)) b!3945608))

(assert (= (and d!1170409 c!685360) b!3945609))

(assert (= (and d!1170409 (not c!685360)) b!3945610))

(assert (= (and b!3945609 res!1596586) b!3945606))

(declare-fun m!4514413 () Bool)

(assert (=> b!3945606 m!4514413))

(declare-fun m!4514415 () Bool)

(assert (=> b!3945607 m!4514415))

(declare-fun m!4514417 () Bool)

(assert (=> b!3945609 m!4514417))

(assert (=> b!3945609 m!4514389))

(declare-fun m!4514419 () Bool)

(assert (=> d!1170409 m!4514419))

(declare-fun m!4514421 () Bool)

(assert (=> d!1170409 m!4514421))

(assert (=> b!3945245 d!1170409))

(declare-fun b!3945611 () Bool)

(declare-fun e!2441494 () Bool)

(declare-fun e!2441493 () Bool)

(assert (=> b!3945611 (= e!2441494 e!2441493)))

(declare-fun c!685363 () Bool)

(assert (=> b!3945611 (= c!685363 ((_ is IntegerValue!20347) (value!207366 (h!47325 suffixTokens!72))))))

(declare-fun b!3945612 () Bool)

(declare-fun e!2441495 () Bool)

(assert (=> b!3945612 (= e!2441495 (inv!15 (value!207366 (h!47325 suffixTokens!72))))))

(declare-fun b!3945613 () Bool)

(assert (=> b!3945613 (= e!2441494 (inv!16 (value!207366 (h!47325 suffixTokens!72))))))

(declare-fun d!1170411 () Bool)

(declare-fun c!685362 () Bool)

(assert (=> d!1170411 (= c!685362 ((_ is IntegerValue!20346) (value!207366 (h!47325 suffixTokens!72))))))

(assert (=> d!1170411 (= (inv!21 (value!207366 (h!47325 suffixTokens!72))) e!2441494)))

(declare-fun b!3945614 () Bool)

(declare-fun res!1596587 () Bool)

(assert (=> b!3945614 (=> res!1596587 e!2441495)))

(assert (=> b!3945614 (= res!1596587 (not ((_ is IntegerValue!20348) (value!207366 (h!47325 suffixTokens!72)))))))

(assert (=> b!3945614 (= e!2441493 e!2441495)))

(declare-fun b!3945615 () Bool)

(assert (=> b!3945615 (= e!2441493 (inv!17 (value!207366 (h!47325 suffixTokens!72))))))

(assert (= (and d!1170411 c!685362) b!3945613))

(assert (= (and d!1170411 (not c!685362)) b!3945611))

(assert (= (and b!3945611 c!685363) b!3945615))

(assert (= (and b!3945611 (not c!685363)) b!3945614))

(assert (= (and b!3945614 (not res!1596587)) b!3945612))

(declare-fun m!4514423 () Bool)

(assert (=> b!3945612 m!4514423))

(declare-fun m!4514425 () Bool)

(assert (=> b!3945613 m!4514425))

(declare-fun m!4514427 () Bool)

(assert (=> b!3945615 m!4514427))

(assert (=> b!3945266 d!1170411))

(declare-fun d!1170413 () Bool)

(assert (=> d!1170413 (= (isEmpty!25008 prefix!426) ((_ is Nil!41904) prefix!426))))

(assert (=> b!3945247 d!1170413))

(declare-fun d!1170415 () Bool)

(assert (=> d!1170415 (= (inv!56121 (tag!7412 (h!47326 rules!2768))) (= (mod (str.len (value!207365 (tag!7412 (h!47326 rules!2768)))) 2) 0))))

(assert (=> b!3945257 d!1170415))

(declare-fun d!1170417 () Bool)

(declare-fun res!1596588 () Bool)

(declare-fun e!2441496 () Bool)

(assert (=> d!1170417 (=> (not res!1596588) (not e!2441496))))

(assert (=> d!1170417 (= res!1596588 (semiInverseModEq!2823 (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toValue!9024 (transformation!6552 (h!47326 rules!2768)))))))

(assert (=> d!1170417 (= (inv!56124 (transformation!6552 (h!47326 rules!2768))) e!2441496)))

(declare-fun b!3945616 () Bool)

(assert (=> b!3945616 (= e!2441496 (equivClasses!2722 (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toValue!9024 (transformation!6552 (h!47326 rules!2768)))))))

(assert (= (and d!1170417 res!1596588) b!3945616))

(declare-fun m!4514429 () Bool)

(assert (=> d!1170417 m!4514429))

(declare-fun m!4514431 () Bool)

(assert (=> b!3945616 m!4514431))

(assert (=> b!3945257 d!1170417))

(declare-fun d!1170419 () Bool)

(assert (=> d!1170419 (= (isEmpty!25010 prefixTokens!80) ((_ is Nil!41905) prefixTokens!80))))

(assert (=> b!3945259 d!1170419))

(declare-fun d!1170421 () Bool)

(assert (=> d!1170421 (= (isEmpty!25009 rules!2768) ((_ is Nil!41906) rules!2768))))

(assert (=> b!3945249 d!1170421))

(declare-fun d!1170423 () Bool)

(declare-fun res!1596593 () Bool)

(declare-fun e!2441499 () Bool)

(assert (=> d!1170423 (=> (not res!1596593) (not e!2441499))))

(assert (=> d!1170423 (= res!1596593 (not (isEmpty!25008 (originalCharacters!7152 (h!47325 suffixTokens!72)))))))

(assert (=> d!1170423 (= (inv!56125 (h!47325 suffixTokens!72)) e!2441499)))

(declare-fun b!3945621 () Bool)

(declare-fun res!1596594 () Bool)

(assert (=> b!3945621 (=> (not res!1596594) (not e!2441499))))

(assert (=> b!3945621 (= res!1596594 (= (originalCharacters!7152 (h!47325 suffixTokens!72)) (list!15564 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (value!207366 (h!47325 suffixTokens!72))))))))

(declare-fun b!3945622 () Bool)

(assert (=> b!3945622 (= e!2441499 (= (size!31421 (h!47325 suffixTokens!72)) (size!31424 (originalCharacters!7152 (h!47325 suffixTokens!72)))))))

(assert (= (and d!1170423 res!1596593) b!3945621))

(assert (= (and b!3945621 res!1596594) b!3945622))

(declare-fun b_lambda!115395 () Bool)

(assert (=> (not b_lambda!115395) (not b!3945621)))

(declare-fun tb!236903 () Bool)

(declare-fun t!327665 () Bool)

(assert (=> (and b!3945254 (= (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))) t!327665) tb!236903))

(declare-fun b!3945623 () Bool)

(declare-fun e!2441500 () Bool)

(declare-fun tp!1201143 () Bool)

(assert (=> b!3945623 (= e!2441500 (and (inv!56128 (c!685303 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (value!207366 (h!47325 suffixTokens!72))))) tp!1201143))))

(declare-fun result!286936 () Bool)

(assert (=> tb!236903 (= result!286936 (and (inv!56129 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (value!207366 (h!47325 suffixTokens!72)))) e!2441500))))

(assert (= tb!236903 b!3945623))

(declare-fun m!4514433 () Bool)

(assert (=> b!3945623 m!4514433))

(declare-fun m!4514435 () Bool)

(assert (=> tb!236903 m!4514435))

(assert (=> b!3945621 t!327665))

(declare-fun b_and!301823 () Bool)

(assert (= b_and!301799 (and (=> t!327665 result!286936) b_and!301823)))

(declare-fun t!327667 () Bool)

(declare-fun tb!236905 () Bool)

(assert (=> (and b!3945260 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))) t!327667) tb!236905))

(declare-fun result!286938 () Bool)

(assert (= result!286938 result!286936))

(assert (=> b!3945621 t!327667))

(declare-fun b_and!301825 () Bool)

(assert (= b_and!301801 (and (=> t!327667 result!286938) b_and!301825)))

(declare-fun t!327669 () Bool)

(declare-fun tb!236907 () Bool)

(assert (=> (and b!3945253 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))) t!327669) tb!236907))

(declare-fun result!286940 () Bool)

(assert (= result!286940 result!286936))

(assert (=> b!3945621 t!327669))

(declare-fun b_and!301827 () Bool)

(assert (= b_and!301803 (and (=> t!327669 result!286940) b_and!301827)))

(declare-fun m!4514437 () Bool)

(assert (=> d!1170423 m!4514437))

(declare-fun m!4514439 () Bool)

(assert (=> b!3945621 m!4514439))

(assert (=> b!3945621 m!4514439))

(declare-fun m!4514441 () Bool)

(assert (=> b!3945621 m!4514441))

(declare-fun m!4514443 () Bool)

(assert (=> b!3945622 m!4514443))

(assert (=> b!3945251 d!1170423))

(declare-fun d!1170425 () Bool)

(declare-fun res!1596595 () Bool)

(declare-fun e!2441501 () Bool)

(assert (=> d!1170425 (=> (not res!1596595) (not e!2441501))))

(assert (=> d!1170425 (= res!1596595 (not (isEmpty!25008 (originalCharacters!7152 (h!47325 prefixTokens!80)))))))

(assert (=> d!1170425 (= (inv!56125 (h!47325 prefixTokens!80)) e!2441501)))

(declare-fun b!3945624 () Bool)

(declare-fun res!1596596 () Bool)

(assert (=> b!3945624 (=> (not res!1596596) (not e!2441501))))

(assert (=> b!3945624 (= res!1596596 (= (originalCharacters!7152 (h!47325 prefixTokens!80)) (list!15564 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (value!207366 (h!47325 prefixTokens!80))))))))

(declare-fun b!3945625 () Bool)

(assert (=> b!3945625 (= e!2441501 (= (size!31421 (h!47325 prefixTokens!80)) (size!31424 (originalCharacters!7152 (h!47325 prefixTokens!80)))))))

(assert (= (and d!1170425 res!1596595) b!3945624))

(assert (= (and b!3945624 res!1596596) b!3945625))

(declare-fun b_lambda!115397 () Bool)

(assert (=> (not b_lambda!115397) (not b!3945624)))

(declare-fun tb!236909 () Bool)

(declare-fun t!327671 () Bool)

(assert (=> (and b!3945254 (= (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))) t!327671) tb!236909))

(declare-fun b!3945626 () Bool)

(declare-fun e!2441502 () Bool)

(declare-fun tp!1201144 () Bool)

(assert (=> b!3945626 (= e!2441502 (and (inv!56128 (c!685303 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (value!207366 (h!47325 prefixTokens!80))))) tp!1201144))))

(declare-fun result!286942 () Bool)

(assert (=> tb!236909 (= result!286942 (and (inv!56129 (dynLambda!17955 (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (value!207366 (h!47325 prefixTokens!80)))) e!2441502))))

(assert (= tb!236909 b!3945626))

(declare-fun m!4514445 () Bool)

(assert (=> b!3945626 m!4514445))

(declare-fun m!4514447 () Bool)

(assert (=> tb!236909 m!4514447))

(assert (=> b!3945624 t!327671))

(declare-fun b_and!301829 () Bool)

(assert (= b_and!301823 (and (=> t!327671 result!286942) b_and!301829)))

(declare-fun t!327673 () Bool)

(declare-fun tb!236911 () Bool)

(assert (=> (and b!3945260 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))) t!327673) tb!236911))

(declare-fun result!286944 () Bool)

(assert (= result!286944 result!286942))

(assert (=> b!3945624 t!327673))

(declare-fun b_and!301831 () Bool)

(assert (= b_and!301825 (and (=> t!327673 result!286944) b_and!301831)))

(declare-fun t!327675 () Bool)

(declare-fun tb!236913 () Bool)

(assert (=> (and b!3945253 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))) t!327675) tb!236913))

(declare-fun result!286946 () Bool)

(assert (= result!286946 result!286942))

(assert (=> b!3945624 t!327675))

(declare-fun b_and!301833 () Bool)

(assert (= b_and!301827 (and (=> t!327675 result!286946) b_and!301833)))

(declare-fun m!4514449 () Bool)

(assert (=> d!1170425 m!4514449))

(declare-fun m!4514451 () Bool)

(assert (=> b!3945624 m!4514451))

(assert (=> b!3945624 m!4514451))

(declare-fun m!4514453 () Bool)

(assert (=> b!3945624 m!4514453))

(declare-fun m!4514455 () Bool)

(assert (=> b!3945625 m!4514455))

(assert (=> b!3945250 d!1170425))

(declare-fun b!3945637 () Bool)

(declare-fun e!2441505 () Bool)

(assert (=> b!3945637 (= e!2441505 tp_is_empty!19885)))

(declare-fun b!3945639 () Bool)

(declare-fun tp!1201159 () Bool)

(assert (=> b!3945639 (= e!2441505 tp!1201159)))

(declare-fun b!3945638 () Bool)

(declare-fun tp!1201155 () Bool)

(declare-fun tp!1201158 () Bool)

(assert (=> b!3945638 (= e!2441505 (and tp!1201155 tp!1201158))))

(declare-fun b!3945640 () Bool)

(declare-fun tp!1201156 () Bool)

(declare-fun tp!1201157 () Bool)

(assert (=> b!3945640 (= e!2441505 (and tp!1201156 tp!1201157))))

(assert (=> b!3945243 (= tp!1201067 e!2441505)))

(assert (= (and b!3945243 ((_ is ElementMatch!11457) (regex!6552 (rule!9516 (h!47325 suffixTokens!72))))) b!3945637))

(assert (= (and b!3945243 ((_ is Concat!18240) (regex!6552 (rule!9516 (h!47325 suffixTokens!72))))) b!3945638))

(assert (= (and b!3945243 ((_ is Star!11457) (regex!6552 (rule!9516 (h!47325 suffixTokens!72))))) b!3945639))

(assert (= (and b!3945243 ((_ is Union!11457) (regex!6552 (rule!9516 (h!47325 suffixTokens!72))))) b!3945640))

(declare-fun b!3945641 () Bool)

(declare-fun e!2441506 () Bool)

(assert (=> b!3945641 (= e!2441506 tp_is_empty!19885)))

(declare-fun b!3945643 () Bool)

(declare-fun tp!1201164 () Bool)

(assert (=> b!3945643 (= e!2441506 tp!1201164)))

(declare-fun b!3945642 () Bool)

(declare-fun tp!1201160 () Bool)

(declare-fun tp!1201163 () Bool)

(assert (=> b!3945642 (= e!2441506 (and tp!1201160 tp!1201163))))

(declare-fun b!3945644 () Bool)

(declare-fun tp!1201161 () Bool)

(declare-fun tp!1201162 () Bool)

(assert (=> b!3945644 (= e!2441506 (and tp!1201161 tp!1201162))))

(assert (=> b!3945264 (= tp!1201055 e!2441506)))

(assert (= (and b!3945264 ((_ is ElementMatch!11457) (regex!6552 (rule!9516 (h!47325 prefixTokens!80))))) b!3945641))

(assert (= (and b!3945264 ((_ is Concat!18240) (regex!6552 (rule!9516 (h!47325 prefixTokens!80))))) b!3945642))

(assert (= (and b!3945264 ((_ is Star!11457) (regex!6552 (rule!9516 (h!47325 prefixTokens!80))))) b!3945643))

(assert (= (and b!3945264 ((_ is Union!11457) (regex!6552 (rule!9516 (h!47325 prefixTokens!80))))) b!3945644))

(declare-fun b!3945649 () Bool)

(declare-fun e!2441509 () Bool)

(declare-fun tp!1201167 () Bool)

(assert (=> b!3945649 (= e!2441509 (and tp_is_empty!19885 tp!1201167))))

(assert (=> b!3945244 (= tp!1201070 e!2441509)))

(assert (= (and b!3945244 ((_ is Cons!41904) (t!327619 prefix!426))) b!3945649))

(declare-fun b!3945650 () Bool)

(declare-fun e!2441510 () Bool)

(declare-fun tp!1201168 () Bool)

(assert (=> b!3945650 (= e!2441510 (and tp_is_empty!19885 tp!1201168))))

(assert (=> b!3945256 (= tp!1201062 e!2441510)))

(assert (= (and b!3945256 ((_ is Cons!41904) (originalCharacters!7152 (h!47325 prefixTokens!80)))) b!3945650))

(declare-fun b!3945651 () Bool)

(declare-fun e!2441511 () Bool)

(declare-fun tp!1201169 () Bool)

(assert (=> b!3945651 (= e!2441511 (and tp_is_empty!19885 tp!1201169))))

(assert (=> b!3945266 (= tp!1201069 e!2441511)))

(assert (= (and b!3945266 ((_ is Cons!41904) (originalCharacters!7152 (h!47325 suffixTokens!72)))) b!3945651))

(declare-fun b!3945652 () Bool)

(declare-fun e!2441512 () Bool)

(assert (=> b!3945652 (= e!2441512 tp_is_empty!19885)))

(declare-fun b!3945654 () Bool)

(declare-fun tp!1201174 () Bool)

(assert (=> b!3945654 (= e!2441512 tp!1201174)))

(declare-fun b!3945653 () Bool)

(declare-fun tp!1201170 () Bool)

(declare-fun tp!1201173 () Bool)

(assert (=> b!3945653 (= e!2441512 (and tp!1201170 tp!1201173))))

(declare-fun b!3945655 () Bool)

(declare-fun tp!1201171 () Bool)

(declare-fun tp!1201172 () Bool)

(assert (=> b!3945655 (= e!2441512 (and tp!1201171 tp!1201172))))

(assert (=> b!3945257 (= tp!1201066 e!2441512)))

(assert (= (and b!3945257 ((_ is ElementMatch!11457) (regex!6552 (h!47326 rules!2768)))) b!3945652))

(assert (= (and b!3945257 ((_ is Concat!18240) (regex!6552 (h!47326 rules!2768)))) b!3945653))

(assert (= (and b!3945257 ((_ is Star!11457) (regex!6552 (h!47326 rules!2768)))) b!3945654))

(assert (= (and b!3945257 ((_ is Union!11457) (regex!6552 (h!47326 rules!2768)))) b!3945655))

(declare-fun b!3945666 () Bool)

(declare-fun b_free!108101 () Bool)

(declare-fun b_next!108805 () Bool)

(assert (=> b!3945666 (= b_free!108101 (not b_next!108805))))

(declare-fun tp!1201185 () Bool)

(declare-fun b_and!301835 () Bool)

(assert (=> b!3945666 (= tp!1201185 b_and!301835)))

(declare-fun b_free!108103 () Bool)

(declare-fun b_next!108807 () Bool)

(assert (=> b!3945666 (= b_free!108103 (not b_next!108807))))

(declare-fun tb!236915 () Bool)

(declare-fun t!327678 () Bool)

(assert (=> (and b!3945666 (= (toChars!8883 (transformation!6552 (h!47326 (t!327621 rules!2768)))) (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))) t!327678) tb!236915))

(declare-fun result!286954 () Bool)

(assert (= result!286954 result!286890))

(assert (=> d!1170349 t!327678))

(declare-fun tb!236917 () Bool)

(declare-fun t!327680 () Bool)

(assert (=> (and b!3945666 (= (toChars!8883 (transformation!6552 (h!47326 (t!327621 rules!2768)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))) t!327680) tb!236917))

(declare-fun result!286956 () Bool)

(assert (= result!286956 result!286936))

(assert (=> b!3945621 t!327680))

(declare-fun tb!236919 () Bool)

(declare-fun t!327682 () Bool)

(assert (=> (and b!3945666 (= (toChars!8883 (transformation!6552 (h!47326 (t!327621 rules!2768)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))) t!327682) tb!236919))

(declare-fun result!286958 () Bool)

(assert (= result!286958 result!286942))

(assert (=> b!3945624 t!327682))

(declare-fun tp!1201186 () Bool)

(declare-fun b_and!301837 () Bool)

(assert (=> b!3945666 (= tp!1201186 (and (=> t!327678 result!286954) (=> t!327680 result!286956) (=> t!327682 result!286958) b_and!301837))))

(declare-fun e!2441521 () Bool)

(assert (=> b!3945666 (= e!2441521 (and tp!1201185 tp!1201186))))

(declare-fun tp!1201184 () Bool)

(declare-fun e!2441524 () Bool)

(declare-fun b!3945665 () Bool)

(assert (=> b!3945665 (= e!2441524 (and tp!1201184 (inv!56121 (tag!7412 (h!47326 (t!327621 rules!2768)))) (inv!56124 (transformation!6552 (h!47326 (t!327621 rules!2768)))) e!2441521))))

(declare-fun b!3945664 () Bool)

(declare-fun e!2441522 () Bool)

(declare-fun tp!1201183 () Bool)

(assert (=> b!3945664 (= e!2441522 (and e!2441524 tp!1201183))))

(assert (=> b!3945246 (= tp!1201056 e!2441522)))

(assert (= b!3945665 b!3945666))

(assert (= b!3945664 b!3945665))

(assert (= (and b!3945246 ((_ is Cons!41906) (t!327621 rules!2768))) b!3945664))

(declare-fun m!4514457 () Bool)

(assert (=> b!3945665 m!4514457))

(declare-fun m!4514459 () Bool)

(assert (=> b!3945665 m!4514459))

(declare-fun b!3945667 () Bool)

(declare-fun e!2441525 () Bool)

(declare-fun tp!1201187 () Bool)

(assert (=> b!3945667 (= e!2441525 (and tp_is_empty!19885 tp!1201187))))

(assert (=> b!3945248 (= tp!1201060 e!2441525)))

(assert (= (and b!3945248 ((_ is Cons!41904) (t!327619 suffixResult!91))) b!3945667))

(declare-fun b!3945668 () Bool)

(declare-fun e!2441526 () Bool)

(declare-fun tp!1201188 () Bool)

(assert (=> b!3945668 (= e!2441526 (and tp_is_empty!19885 tp!1201188))))

(assert (=> b!3945258 (= tp!1201063 e!2441526)))

(assert (= (and b!3945258 ((_ is Cons!41904) (t!327619 suffix!1176))) b!3945668))

(declare-fun b!3945682 () Bool)

(declare-fun b_free!108105 () Bool)

(declare-fun b_next!108809 () Bool)

(assert (=> b!3945682 (= b_free!108105 (not b_next!108809))))

(declare-fun tp!1201199 () Bool)

(declare-fun b_and!301839 () Bool)

(assert (=> b!3945682 (= tp!1201199 b_and!301839)))

(declare-fun b_free!108107 () Bool)

(declare-fun b_next!108811 () Bool)

(assert (=> b!3945682 (= b_free!108107 (not b_next!108811))))

(declare-fun tb!236921 () Bool)

(declare-fun t!327684 () Bool)

(assert (=> (and b!3945682 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))) t!327684) tb!236921))

(declare-fun result!286962 () Bool)

(assert (= result!286962 result!286890))

(assert (=> d!1170349 t!327684))

(declare-fun t!327686 () Bool)

(declare-fun tb!236923 () Bool)

(assert (=> (and b!3945682 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))) t!327686) tb!236923))

(declare-fun result!286964 () Bool)

(assert (= result!286964 result!286936))

(assert (=> b!3945621 t!327686))

(declare-fun t!327688 () Bool)

(declare-fun tb!236925 () Bool)

(assert (=> (and b!3945682 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))) t!327688) tb!236925))

(declare-fun result!286966 () Bool)

(assert (= result!286966 result!286942))

(assert (=> b!3945624 t!327688))

(declare-fun b_and!301841 () Bool)

(declare-fun tp!1201200 () Bool)

(assert (=> b!3945682 (= tp!1201200 (and (=> t!327684 result!286962) (=> t!327686 result!286964) (=> t!327688 result!286966) b_and!301841))))

(declare-fun e!2441540 () Bool)

(assert (=> b!3945682 (= e!2441540 (and tp!1201199 tp!1201200))))

(declare-fun tp!1201203 () Bool)

(declare-fun b!3945681 () Bool)

(declare-fun e!2441544 () Bool)

(assert (=> b!3945681 (= e!2441544 (and tp!1201203 (inv!56121 (tag!7412 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) (inv!56124 (transformation!6552 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) e!2441540))))

(declare-fun b!3945680 () Bool)

(declare-fun e!2441539 () Bool)

(declare-fun tp!1201202 () Bool)

(assert (=> b!3945680 (= e!2441539 (and (inv!21 (value!207366 (h!47325 (t!327620 suffixTokens!72)))) e!2441544 tp!1201202))))

(declare-fun e!2441541 () Bool)

(assert (=> b!3945251 (= tp!1201061 e!2441541)))

(declare-fun b!3945679 () Bool)

(declare-fun tp!1201201 () Bool)

(assert (=> b!3945679 (= e!2441541 (and (inv!56125 (h!47325 (t!327620 suffixTokens!72))) e!2441539 tp!1201201))))

(assert (= b!3945681 b!3945682))

(assert (= b!3945680 b!3945681))

(assert (= b!3945679 b!3945680))

(assert (= (and b!3945251 ((_ is Cons!41905) (t!327620 suffixTokens!72))) b!3945679))

(declare-fun m!4514461 () Bool)

(assert (=> b!3945681 m!4514461))

(declare-fun m!4514463 () Bool)

(assert (=> b!3945681 m!4514463))

(declare-fun m!4514465 () Bool)

(assert (=> b!3945680 m!4514465))

(declare-fun m!4514467 () Bool)

(assert (=> b!3945679 m!4514467))

(declare-fun b!3945686 () Bool)

(declare-fun b_free!108109 () Bool)

(declare-fun b_next!108813 () Bool)

(assert (=> b!3945686 (= b_free!108109 (not b_next!108813))))

(declare-fun tp!1201204 () Bool)

(declare-fun b_and!301843 () Bool)

(assert (=> b!3945686 (= tp!1201204 b_and!301843)))

(declare-fun b_free!108111 () Bool)

(declare-fun b_next!108815 () Bool)

(assert (=> b!3945686 (= b_free!108111 (not b_next!108815))))

(declare-fun tb!236927 () Bool)

(declare-fun t!327690 () Bool)

(assert (=> (and b!3945686 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) (toChars!8883 (transformation!6552 (rule!9516 (_1!23732 (v!39309 lt!1379398)))))) t!327690) tb!236927))

(declare-fun result!286968 () Bool)

(assert (= result!286968 result!286890))

(assert (=> d!1170349 t!327690))

(declare-fun t!327692 () Bool)

(declare-fun tb!236929 () Bool)

(assert (=> (and b!3945686 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72))))) t!327692) tb!236929))

(declare-fun result!286970 () Bool)

(assert (= result!286970 result!286936))

(assert (=> b!3945621 t!327692))

(declare-fun t!327694 () Bool)

(declare-fun tb!236931 () Bool)

(assert (=> (and b!3945686 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80))))) t!327694) tb!236931))

(declare-fun result!286972 () Bool)

(assert (= result!286972 result!286942))

(assert (=> b!3945624 t!327694))

(declare-fun b_and!301845 () Bool)

(declare-fun tp!1201205 () Bool)

(assert (=> b!3945686 (= tp!1201205 (and (=> t!327690 result!286968) (=> t!327692 result!286970) (=> t!327694 result!286972) b_and!301845))))

(declare-fun e!2441546 () Bool)

(assert (=> b!3945686 (= e!2441546 (and tp!1201204 tp!1201205))))

(declare-fun tp!1201208 () Bool)

(declare-fun b!3945685 () Bool)

(declare-fun e!2441550 () Bool)

(assert (=> b!3945685 (= e!2441550 (and tp!1201208 (inv!56121 (tag!7412 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) (inv!56124 (transformation!6552 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) e!2441546))))

(declare-fun e!2441545 () Bool)

(declare-fun tp!1201207 () Bool)

(declare-fun b!3945684 () Bool)

(assert (=> b!3945684 (= e!2441545 (and (inv!21 (value!207366 (h!47325 (t!327620 prefixTokens!80)))) e!2441550 tp!1201207))))

(declare-fun e!2441547 () Bool)

(assert (=> b!3945250 (= tp!1201064 e!2441547)))

(declare-fun tp!1201206 () Bool)

(declare-fun b!3945683 () Bool)

(assert (=> b!3945683 (= e!2441547 (and (inv!56125 (h!47325 (t!327620 prefixTokens!80))) e!2441545 tp!1201206))))

(assert (= b!3945685 b!3945686))

(assert (= b!3945684 b!3945685))

(assert (= b!3945683 b!3945684))

(assert (= (and b!3945250 ((_ is Cons!41905) (t!327620 prefixTokens!80))) b!3945683))

(declare-fun m!4514469 () Bool)

(assert (=> b!3945685 m!4514469))

(declare-fun m!4514471 () Bool)

(assert (=> b!3945685 m!4514471))

(declare-fun m!4514473 () Bool)

(assert (=> b!3945684 m!4514473))

(declare-fun m!4514475 () Bool)

(assert (=> b!3945683 m!4514475))

(declare-fun b_lambda!115399 () Bool)

(assert (= b_lambda!115395 (or (and b!3945253 b_free!108087 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))))) (and b!3945686 b_free!108111 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))))) (and b!3945682 b_free!108107 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))))) (and b!3945254 b_free!108079 (= (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))))) (and b!3945666 b_free!108103 (= (toChars!8883 (transformation!6552 (h!47326 (t!327621 rules!2768)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))))) (and b!3945260 b_free!108083) b_lambda!115399)))

(declare-fun b_lambda!115401 () Bool)

(assert (= b_lambda!115397 (or (and b!3945253 b_free!108087) (and b!3945686 b_free!108111 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 prefixTokens!80))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))))) (and b!3945254 b_free!108079 (= (toChars!8883 (transformation!6552 (h!47326 rules!2768))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))))) (and b!3945682 b_free!108107 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 (t!327620 suffixTokens!72))))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))))) (and b!3945260 b_free!108083 (= (toChars!8883 (transformation!6552 (rule!9516 (h!47325 suffixTokens!72)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))))) (and b!3945666 b_free!108103 (= (toChars!8883 (transformation!6552 (h!47326 (t!327621 rules!2768)))) (toChars!8883 (transformation!6552 (rule!9516 (h!47325 prefixTokens!80)))))) b_lambda!115401)))

(check-sat (not b_next!108809) (not b_next!108807) (not d!1170401) (not b!3945547) (not b!3945626) (not b!3945605) (not b!3945655) (not tb!236903) (not d!1170317) (not d!1170393) (not b!3945613) (not b!3945549) (not b!3945679) (not b!3945567) (not b!3945390) (not b!3945551) (not b!3945664) (not b_lambda!115401) (not b!3945581) (not b!3945289) (not b!3945653) (not b!3945609) (not b!3945624) (not b_next!108787) (not d!1170363) (not b!3945603) (not b_next!108783) b_and!301783 (not d!1170409) (not b!3945566) (not b!3945606) (not b!3945681) (not b!3945550) b_and!301837 (not b_next!108791) (not d!1170417) (not b!3945335) (not d!1170423) (not b!3945684) b_and!301835 (not b!3945344) (not b!3945680) (not b!3945311) (not b_next!108789) (not tb!236867) (not d!1170313) (not d!1170371) (not b!3945622) (not b!3945638) (not b!3945310) b_and!301829 b_and!301845 (not b_next!108781) (not d!1170339) (not b_next!108805) (not b!3945370) (not b!3945336) b_and!301839 (not d!1170399) (not b!3945345) b_and!301841 (not b!3945584) (not b_lambda!115399) (not b!3945397) b_and!301831 (not b!3945543) (not b!3945554) (not d!1170403) b_and!301843 (not b!3945623) (not bm!285137) (not b_next!108785) (not d!1170405) (not b_lambda!115385) (not b!3945667) tp_is_empty!19885 (not d!1170373) b_and!301833 (not b!3945651) (not b!3945640) b_and!301775 (not b!3945639) (not b!3945621) (not d!1170375) (not d!1170369) (not b!3945544) (not b!3945546) (not b!3945654) (not d!1170323) (not d!1170397) (not b!3945607) (not b!3945642) (not b!3945649) (not b!3945545) b_and!301779 (not b!3945615) (not b!3945612) (not b!3945589) (not b_next!108815) (not b!3945668) (not b!3945343) (not tb!236909) (not b!3945685) (not b!3945337) (not b!3945665) (not b_next!108811) (not b!3945625) (not b!3945643) (not b!3945683) (not b!3945602) (not b!3945650) (not b!3945588) (not b!3945644) (not d!1170425) (not b_next!108813) (not b!3945580) (not b!3945585) (not b!3945569) (not b!3945616) (not d!1170349) (not b!3945555))
(check-sat (not b_next!108809) (not b_next!108787) (not b_next!108789) (not b_next!108807) b_and!301843 (not b_next!108785) b_and!301833 b_and!301775 (not b_next!108811) (not b_next!108813) (not b_next!108783) b_and!301783 b_and!301837 b_and!301835 (not b_next!108791) b_and!301829 b_and!301845 (not b_next!108781) (not b_next!108805) b_and!301839 b_and!301841 b_and!301831 b_and!301779 (not b_next!108815))
