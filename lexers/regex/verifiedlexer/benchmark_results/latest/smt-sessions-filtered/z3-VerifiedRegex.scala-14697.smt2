; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757758 () Bool)

(assert start!757758)

(declare-fun b!8047223 () Bool)

(declare-fun b_free!136507 () Bool)

(declare-fun b_next!137297 () Bool)

(assert (=> b!8047223 (= b_free!136507 (not b_next!137297))))

(declare-fun tp!2412560 () Bool)

(declare-fun b_and!354943 () Bool)

(assert (=> b!8047223 (= tp!2412560 b_and!354943)))

(declare-fun b_free!136509 () Bool)

(declare-fun b_next!137299 () Bool)

(assert (=> b!8047223 (= b_free!136509 (not b_next!137299))))

(declare-fun tp!2412558 () Bool)

(declare-fun b_and!354945 () Bool)

(assert (=> b!8047223 (= tp!2412558 b_and!354945)))

(declare-fun b!8047220 () Bool)

(declare-fun res!3181175 () Bool)

(declare-fun e!4741214 () Bool)

(assert (=> b!8047220 (=> (not res!3181175) (not e!4741214))))

(declare-datatypes ((List!75514 0))(
  ( (Nil!75388) (Cons!75388 (h!81836 (_ BitVec 16)) (t!391284 List!75514)) )
))
(declare-datatypes ((TokenValue!9094 0))(
  ( (FloatLiteralValue!18188 (text!64103 List!75514)) (TokenValueExt!9093 (__x!35469 Int)) (Broken!45470 (value!293056 List!75514)) (Object!9219) (End!9094) (Def!9094) (Underscore!9094) (Match!9094) (Else!9094) (Error!9094) (Case!9094) (If!9094) (Extends!9094) (Abstract!9094) (Class!9094) (Val!9094) (DelimiterValue!18188 (del!9154 List!75514)) (KeywordValue!9100 (value!293057 List!75514)) (CommentValue!18188 (value!293058 List!75514)) (WhitespaceValue!18188 (value!293059 List!75514)) (IndentationValue!9094 (value!293060 List!75514)) (String!85251) (Int32!9094) (Broken!45471 (value!293061 List!75514)) (Boolean!9095) (Unit!171155) (OperatorValue!9097 (op!9154 List!75514)) (IdentifierValue!18188 (value!293062 List!75514)) (IdentifierValue!18189 (value!293063 List!75514)) (WhitespaceValue!18189 (value!293064 List!75514)) (True!18188) (False!18188) (Broken!45472 (value!293065 List!75514)) (Broken!45473 (value!293066 List!75514)) (True!18189) (RightBrace!9094) (RightBracket!9094) (Colon!9094) (Null!9094) (Comma!9094) (LeftBracket!9094) (False!18189) (LeftBrace!9094) (ImaginaryLiteralValue!9094 (text!64104 List!75514)) (StringLiteralValue!27282 (value!293067 List!75514)) (EOFValue!9094 (value!293068 List!75514)) (IdentValue!9094 (value!293069 List!75514)) (DelimiterValue!18189 (value!293070 List!75514)) (DedentValue!9094 (value!293071 List!75514)) (NewLineValue!9094 (value!293072 List!75514)) (IntegerValue!27282 (value!293073 (_ BitVec 32)) (text!64105 List!75514)) (IntegerValue!27283 (value!293074 Int) (text!64106 List!75514)) (Times!9094) (Or!9094) (Equal!9094) (Minus!9094) (Broken!45474 (value!293075 List!75514)) (And!9094) (Div!9094) (LessEqual!9094) (Mod!9094) (Concat!30939) (Not!9094) (Plus!9094) (SpaceValue!9094 (value!293076 List!75514)) (IntegerValue!27284 (value!293077 Int) (text!64107 List!75514)) (StringLiteralValue!27283 (text!64108 List!75514)) (FloatLiteralValue!18189 (text!64109 List!75514)) (BytesLiteralValue!9094 (value!293078 List!75514)) (CommentValue!18189 (value!293079 List!75514)) (StringLiteralValue!27284 (value!293080 List!75514)) (ErrorTokenValue!9094 (msg!9155 List!75514)) )
))
(declare-datatypes ((C!44028 0))(
  ( (C!44029 (val!32790 Int)) )
))
(declare-datatypes ((Regex!21845 0))(
  ( (ElementMatch!21845 (c!1475475 C!44028)) (Concat!30940 (regOne!44202 Regex!21845) (regTwo!44202 Regex!21845)) (EmptyExpr!21845) (Star!21845 (reg!22174 Regex!21845)) (EmptyLang!21845) (Union!21845 (regOne!44203 Regex!21845) (regTwo!44203 Regex!21845)) )
))
(declare-datatypes ((String!85252 0))(
  ( (String!85253 (value!293081 String)) )
))
(declare-datatypes ((List!75515 0))(
  ( (Nil!75389) (Cons!75389 (h!81837 C!44028) (t!391285 List!75515)) )
))
(declare-datatypes ((IArray!32145 0))(
  ( (IArray!32146 (innerList!16130 List!75515)) )
))
(declare-datatypes ((Conc!16042 0))(
  ( (Node!16042 (left!57407 Conc!16042) (right!57737 Conc!16042) (csize!32314 Int) (cheight!16253 Int)) (Leaf!30740 (xs!19440 IArray!32145) (csize!32315 Int)) (Empty!16042) )
))
(declare-datatypes ((BalanceConc!31040 0))(
  ( (BalanceConc!31041 (c!1475476 Conc!16042)) )
))
(declare-datatypes ((TokenValueInjection!17496 0))(
  ( (TokenValueInjection!17497 (toValue!11857 Int) (toChars!11716 Int)) )
))
(declare-datatypes ((Rule!17348 0))(
  ( (Rule!17349 (regex!8774 Regex!21845) (tag!9638 String!85252) (isSeparator!8774 Bool) (transformation!8774 TokenValueInjection!17496)) )
))
(declare-datatypes ((List!75516 0))(
  ( (Nil!75390) (Cons!75390 (h!81838 Rule!17348) (t!391286 List!75516)) )
))
(declare-fun rules!4081 () List!75516)

(declare-datatypes ((List!75517 0))(
  ( (Nil!75391) (Cons!75391 (h!81839 String!85252) (t!391287 List!75517)) )
))
(declare-fun acc!573 () List!75517)

(declare-datatypes ((LexerInterface!8364 0))(
  ( (LexerInterfaceExt!8361 (__x!35470 Int)) (Lexer!8362) )
))
(declare-fun thiss!26941 () LexerInterface!8364)

(declare-fun noDuplicateTag!3352 (LexerInterface!8364 List!75516 List!75517) Bool)

(assert (=> b!8047220 (= res!3181175 (noDuplicateTag!3352 thiss!26941 rules!4081 acc!573))))

(declare-fun b!8047221 () Bool)

(declare-fun res!3181176 () Bool)

(assert (=> b!8047221 (=> (not res!3181176) (not e!4741214))))

(declare-fun newAcc!87 () List!75517)

(declare-fun subseq!925 (List!75517 List!75517) Bool)

(assert (=> b!8047221 (= res!3181176 (subseq!925 newAcc!87 acc!573))))

(declare-fun b!8047222 () Bool)

(declare-fun e!4741219 () Bool)

(declare-fun tp!2412563 () Bool)

(declare-fun e!4741220 () Bool)

(declare-fun inv!97105 (String!85252) Bool)

(declare-fun inv!97107 (TokenValueInjection!17496) Bool)

(assert (=> b!8047222 (= e!4741219 (and tp!2412563 (inv!97105 (tag!9638 (h!81838 rules!4081))) (inv!97107 (transformation!8774 (h!81838 rules!4081))) e!4741220))))

(assert (=> b!8047223 (= e!4741220 (and tp!2412560 tp!2412558))))

(declare-fun b!8047224 () Bool)

(declare-fun e!4741215 () Bool)

(declare-fun tp!2412562 () Bool)

(assert (=> b!8047224 (= e!4741215 (and (inv!97105 (h!81839 newAcc!87)) tp!2412562))))

(declare-fun b!8047225 () Bool)

(declare-fun res!3181174 () Bool)

(assert (=> b!8047225 (=> (not res!3181174) (not e!4741214))))

(get-info :version)

(assert (=> b!8047225 (= res!3181174 ((_ is Cons!75390) rules!4081))))

(declare-fun b!8047226 () Bool)

(declare-fun e!4741212 () Bool)

(declare-fun tp!2412559 () Bool)

(assert (=> b!8047226 (= e!4741212 (and e!4741219 tp!2412559))))

(declare-fun res!3181173 () Bool)

(assert (=> start!757758 (=> (not res!3181173) (not e!4741214))))

(assert (=> start!757758 (= res!3181173 ((_ is Lexer!8362) thiss!26941))))

(assert (=> start!757758 e!4741214))

(assert (=> start!757758 true))

(assert (=> start!757758 e!4741215))

(declare-fun e!4741217 () Bool)

(assert (=> start!757758 e!4741217))

(assert (=> start!757758 e!4741212))

(declare-fun b!8047227 () Bool)

(assert (=> b!8047227 (= e!4741214 (not (noDuplicateTag!3352 thiss!26941 rules!4081 newAcc!87)))))

(declare-datatypes ((Unit!171156 0))(
  ( (Unit!171157) )
))
(declare-fun lt!2722865 () Unit!171156)

(declare-fun subseqNotContains!4 (List!75517 List!75517 String!85252) Unit!171156)

(assert (=> b!8047227 (= lt!2722865 (subseqNotContains!4 newAcc!87 acc!573 (tag!9638 (h!81838 rules!4081))))))

(declare-fun lt!2722866 () List!75517)

(assert (=> b!8047227 (noDuplicateTag!3352 thiss!26941 (t!391286 rules!4081) lt!2722866)))

(declare-fun lt!2722864 () Unit!171156)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!56 (LexerInterface!8364 List!75517 List!75517 List!75516) Unit!171156)

(assert (=> b!8047227 (= lt!2722864 (lemmaNoDupTagThenAlsoWithSubListAcc!56 thiss!26941 (Cons!75391 (tag!9638 (h!81838 rules!4081)) acc!573) lt!2722866 (t!391286 rules!4081)))))

(assert (=> b!8047227 (= lt!2722866 (Cons!75391 (tag!9638 (h!81838 rules!4081)) newAcc!87))))

(declare-fun b!8047228 () Bool)

(declare-fun tp!2412561 () Bool)

(assert (=> b!8047228 (= e!4741217 (and (inv!97105 (h!81839 acc!573)) tp!2412561))))

(assert (= (and start!757758 res!3181173) b!8047221))

(assert (= (and b!8047221 res!3181176) b!8047220))

(assert (= (and b!8047220 res!3181175) b!8047225))

(assert (= (and b!8047225 res!3181174) b!8047227))

(assert (= (and start!757758 ((_ is Cons!75391) newAcc!87)) b!8047224))

(assert (= (and start!757758 ((_ is Cons!75391) acc!573)) b!8047228))

(assert (= b!8047222 b!8047223))

(assert (= b!8047226 b!8047222))

(assert (= (and start!757758 ((_ is Cons!75390) rules!4081)) b!8047226))

(declare-fun m!8398966 () Bool)

(assert (=> b!8047224 m!8398966))

(declare-fun m!8398968 () Bool)

(assert (=> b!8047228 m!8398968))

(declare-fun m!8398970 () Bool)

(assert (=> b!8047227 m!8398970))

(declare-fun m!8398972 () Bool)

(assert (=> b!8047227 m!8398972))

(declare-fun m!8398974 () Bool)

(assert (=> b!8047227 m!8398974))

(declare-fun m!8398976 () Bool)

(assert (=> b!8047227 m!8398976))

(declare-fun m!8398978 () Bool)

(assert (=> b!8047222 m!8398978))

(declare-fun m!8398980 () Bool)

(assert (=> b!8047222 m!8398980))

(declare-fun m!8398982 () Bool)

(assert (=> b!8047221 m!8398982))

(declare-fun m!8398984 () Bool)

(assert (=> b!8047220 m!8398984))

(check-sat (not b!8047221) (not b!8047228) (not b!8047226) (not b_next!137297) (not b!8047220) (not b!8047222) b_and!354945 b_and!354943 (not b!8047224) (not b!8047227) (not b_next!137299))
(check-sat b_and!354945 b_and!354943 (not b_next!137299) (not b_next!137297))
(get-model)

(declare-fun d!2396728 () Bool)

(assert (=> d!2396728 (= (inv!97105 (h!81839 acc!573)) (= (mod (str.len (value!293081 (h!81839 acc!573))) 2) 0))))

(assert (=> b!8047228 d!2396728))

(declare-fun d!2396730 () Bool)

(declare-fun res!3181193 () Bool)

(declare-fun e!4741234 () Bool)

(assert (=> d!2396730 (=> res!3181193 e!4741234)))

(assert (=> d!2396730 (= res!3181193 ((_ is Nil!75390) rules!4081))))

(assert (=> d!2396730 (= (noDuplicateTag!3352 thiss!26941 rules!4081 newAcc!87) e!4741234)))

(declare-fun b!8047241 () Bool)

(declare-fun e!4741236 () Bool)

(assert (=> b!8047241 (= e!4741234 e!4741236)))

(declare-fun res!3181196 () Bool)

(assert (=> b!8047241 (=> (not res!3181196) (not e!4741236))))

(declare-fun contains!21072 (List!75517 String!85252) Bool)

(assert (=> b!8047241 (= res!3181196 (not (contains!21072 newAcc!87 (tag!9638 (h!81838 rules!4081)))))))

(declare-fun b!8047242 () Bool)

(assert (=> b!8047242 (= e!4741236 (noDuplicateTag!3352 thiss!26941 (t!391286 rules!4081) (Cons!75391 (tag!9638 (h!81838 rules!4081)) newAcc!87)))))

(assert (= (and d!2396730 (not res!3181193)) b!8047241))

(assert (= (and b!8047241 res!3181196) b!8047242))

(declare-fun m!8398986 () Bool)

(assert (=> b!8047241 m!8398986))

(declare-fun m!8398990 () Bool)

(assert (=> b!8047242 m!8398990))

(assert (=> b!8047227 d!2396730))

(declare-fun d!2396732 () Bool)

(assert (=> d!2396732 (not (contains!21072 newAcc!87 (tag!9638 (h!81838 rules!4081))))))

(declare-fun lt!2722869 () Unit!171156)

(declare-fun choose!60487 (List!75517 List!75517 String!85252) Unit!171156)

(assert (=> d!2396732 (= lt!2722869 (choose!60487 newAcc!87 acc!573 (tag!9638 (h!81838 rules!4081))))))

(declare-fun e!4741241 () Bool)

(assert (=> d!2396732 e!4741241))

(declare-fun res!3181201 () Bool)

(assert (=> d!2396732 (=> (not res!3181201) (not e!4741241))))

(assert (=> d!2396732 (= res!3181201 (subseq!925 newAcc!87 acc!573))))

(assert (=> d!2396732 (= (subseqNotContains!4 newAcc!87 acc!573 (tag!9638 (h!81838 rules!4081))) lt!2722869)))

(declare-fun b!8047249 () Bool)

(assert (=> b!8047249 (= e!4741241 (not (contains!21072 acc!573 (tag!9638 (h!81838 rules!4081)))))))

(assert (= (and d!2396732 res!3181201) b!8047249))

(assert (=> d!2396732 m!8398986))

(declare-fun m!8398994 () Bool)

(assert (=> d!2396732 m!8398994))

(assert (=> d!2396732 m!8398982))

(declare-fun m!8398996 () Bool)

(assert (=> b!8047249 m!8398996))

(assert (=> b!8047227 d!2396732))

(declare-fun d!2396740 () Bool)

(declare-fun res!3181202 () Bool)

(declare-fun e!4741242 () Bool)

(assert (=> d!2396740 (=> res!3181202 e!4741242)))

(assert (=> d!2396740 (= res!3181202 ((_ is Nil!75390) (t!391286 rules!4081)))))

(assert (=> d!2396740 (= (noDuplicateTag!3352 thiss!26941 (t!391286 rules!4081) lt!2722866) e!4741242)))

(declare-fun b!8047250 () Bool)

(declare-fun e!4741243 () Bool)

(assert (=> b!8047250 (= e!4741242 e!4741243)))

(declare-fun res!3181203 () Bool)

(assert (=> b!8047250 (=> (not res!3181203) (not e!4741243))))

(assert (=> b!8047250 (= res!3181203 (not (contains!21072 lt!2722866 (tag!9638 (h!81838 (t!391286 rules!4081))))))))

(declare-fun b!8047251 () Bool)

(assert (=> b!8047251 (= e!4741243 (noDuplicateTag!3352 thiss!26941 (t!391286 (t!391286 rules!4081)) (Cons!75391 (tag!9638 (h!81838 (t!391286 rules!4081))) lt!2722866)))))

(assert (= (and d!2396740 (not res!3181202)) b!8047250))

(assert (= (and b!8047250 res!3181203) b!8047251))

(declare-fun m!8398998 () Bool)

(assert (=> b!8047250 m!8398998))

(declare-fun m!8399000 () Bool)

(assert (=> b!8047251 m!8399000))

(assert (=> b!8047227 d!2396740))

(declare-fun d!2396742 () Bool)

(assert (=> d!2396742 (noDuplicateTag!3352 thiss!26941 (t!391286 rules!4081) lt!2722866)))

(declare-fun lt!2722872 () Unit!171156)

(declare-fun choose!60488 (LexerInterface!8364 List!75517 List!75517 List!75516) Unit!171156)

(assert (=> d!2396742 (= lt!2722872 (choose!60488 thiss!26941 (Cons!75391 (tag!9638 (h!81838 rules!4081)) acc!573) lt!2722866 (t!391286 rules!4081)))))

(assert (=> d!2396742 (subseq!925 lt!2722866 (Cons!75391 (tag!9638 (h!81838 rules!4081)) acc!573))))

(assert (=> d!2396742 (= (lemmaNoDupTagThenAlsoWithSubListAcc!56 thiss!26941 (Cons!75391 (tag!9638 (h!81838 rules!4081)) acc!573) lt!2722866 (t!391286 rules!4081)) lt!2722872)))

(declare-fun bs!1971765 () Bool)

(assert (= bs!1971765 d!2396742))

(assert (=> bs!1971765 m!8398974))

(declare-fun m!8399006 () Bool)

(assert (=> bs!1971765 m!8399006))

(declare-fun m!8399008 () Bool)

(assert (=> bs!1971765 m!8399008))

(assert (=> b!8047227 d!2396742))

(declare-fun d!2396748 () Bool)

(assert (=> d!2396748 (= (inv!97105 (tag!9638 (h!81838 rules!4081))) (= (mod (str.len (value!293081 (tag!9638 (h!81838 rules!4081)))) 2) 0))))

(assert (=> b!8047222 d!2396748))

(declare-fun d!2396750 () Bool)

(declare-fun res!3181217 () Bool)

(declare-fun e!4741257 () Bool)

(assert (=> d!2396750 (=> (not res!3181217) (not e!4741257))))

(declare-fun semiInverseModEq!3897 (Int Int) Bool)

(assert (=> d!2396750 (= res!3181217 (semiInverseModEq!3897 (toChars!11716 (transformation!8774 (h!81838 rules!4081))) (toValue!11857 (transformation!8774 (h!81838 rules!4081)))))))

(assert (=> d!2396750 (= (inv!97107 (transformation!8774 (h!81838 rules!4081))) e!4741257)))

(declare-fun b!8047265 () Bool)

(declare-fun equivClasses!3712 (Int Int) Bool)

(assert (=> b!8047265 (= e!4741257 (equivClasses!3712 (toChars!11716 (transformation!8774 (h!81838 rules!4081))) (toValue!11857 (transformation!8774 (h!81838 rules!4081)))))))

(assert (= (and d!2396750 res!3181217) b!8047265))

(declare-fun m!8399014 () Bool)

(assert (=> d!2396750 m!8399014))

(declare-fun m!8399016 () Bool)

(assert (=> b!8047265 m!8399016))

(assert (=> b!8047222 d!2396750))

(declare-fun d!2396754 () Bool)

(declare-fun res!3181218 () Bool)

(declare-fun e!4741258 () Bool)

(assert (=> d!2396754 (=> res!3181218 e!4741258)))

(assert (=> d!2396754 (= res!3181218 ((_ is Nil!75390) rules!4081))))

(assert (=> d!2396754 (= (noDuplicateTag!3352 thiss!26941 rules!4081 acc!573) e!4741258)))

(declare-fun b!8047266 () Bool)

(declare-fun e!4741259 () Bool)

(assert (=> b!8047266 (= e!4741258 e!4741259)))

(declare-fun res!3181219 () Bool)

(assert (=> b!8047266 (=> (not res!3181219) (not e!4741259))))

(assert (=> b!8047266 (= res!3181219 (not (contains!21072 acc!573 (tag!9638 (h!81838 rules!4081)))))))

(declare-fun b!8047267 () Bool)

(assert (=> b!8047267 (= e!4741259 (noDuplicateTag!3352 thiss!26941 (t!391286 rules!4081) (Cons!75391 (tag!9638 (h!81838 rules!4081)) acc!573)))))

(assert (= (and d!2396754 (not res!3181218)) b!8047266))

(assert (= (and b!8047266 res!3181219) b!8047267))

(assert (=> b!8047266 m!8398996))

(declare-fun m!8399018 () Bool)

(assert (=> b!8047267 m!8399018))

(assert (=> b!8047220 d!2396754))

(declare-fun b!8047282 () Bool)

(declare-fun e!4741276 () Bool)

(declare-fun e!4741275 () Bool)

(assert (=> b!8047282 (= e!4741276 e!4741275)))

(declare-fun res!3181235 () Bool)

(assert (=> b!8047282 (=> res!3181235 e!4741275)))

(declare-fun e!4741274 () Bool)

(assert (=> b!8047282 (= res!3181235 e!4741274)))

(declare-fun res!3181233 () Bool)

(assert (=> b!8047282 (=> (not res!3181233) (not e!4741274))))

(assert (=> b!8047282 (= res!3181233 (= (h!81839 newAcc!87) (h!81839 acc!573)))))

(declare-fun d!2396756 () Bool)

(declare-fun res!3181236 () Bool)

(declare-fun e!4741273 () Bool)

(assert (=> d!2396756 (=> res!3181236 e!4741273)))

(assert (=> d!2396756 (= res!3181236 ((_ is Nil!75391) newAcc!87))))

(assert (=> d!2396756 (= (subseq!925 newAcc!87 acc!573) e!4741273)))

(declare-fun b!8047284 () Bool)

(assert (=> b!8047284 (= e!4741275 (subseq!925 newAcc!87 (t!391287 acc!573)))))

(declare-fun b!8047283 () Bool)

(assert (=> b!8047283 (= e!4741274 (subseq!925 (t!391287 newAcc!87) (t!391287 acc!573)))))

(declare-fun b!8047281 () Bool)

(assert (=> b!8047281 (= e!4741273 e!4741276)))

(declare-fun res!3181234 () Bool)

(assert (=> b!8047281 (=> (not res!3181234) (not e!4741276))))

(assert (=> b!8047281 (= res!3181234 ((_ is Cons!75391) acc!573))))

(assert (= (and d!2396756 (not res!3181236)) b!8047281))

(assert (= (and b!8047281 res!3181234) b!8047282))

(assert (= (and b!8047282 res!3181233) b!8047283))

(assert (= (and b!8047282 (not res!3181235)) b!8047284))

(declare-fun m!8399034 () Bool)

(assert (=> b!8047284 m!8399034))

(declare-fun m!8399036 () Bool)

(assert (=> b!8047283 m!8399036))

(assert (=> b!8047221 d!2396756))

(declare-fun d!2396764 () Bool)

(assert (=> d!2396764 (= (inv!97105 (h!81839 newAcc!87)) (= (mod (str.len (value!293081 (h!81839 newAcc!87))) 2) 0))))

(assert (=> b!8047224 d!2396764))

(declare-fun b!8047300 () Bool)

(declare-fun e!4741289 () Bool)

(declare-fun tp!2412571 () Bool)

(assert (=> b!8047300 (= e!4741289 (and (inv!97105 (h!81839 (t!391287 acc!573))) tp!2412571))))

(assert (=> b!8047228 (= tp!2412561 e!4741289)))

(assert (= (and b!8047228 ((_ is Cons!75391) (t!391287 acc!573))) b!8047300))

(declare-fun m!8399040 () Bool)

(assert (=> b!8047300 m!8399040))

(declare-fun b!8047320 () Bool)

(declare-fun e!4741294 () Bool)

(declare-fun tp!2412595 () Bool)

(declare-fun tp!2412598 () Bool)

(assert (=> b!8047320 (= e!4741294 (and tp!2412595 tp!2412598))))

(declare-fun b!8047321 () Bool)

(declare-fun tp!2412597 () Bool)

(assert (=> b!8047321 (= e!4741294 tp!2412597)))

(assert (=> b!8047222 (= tp!2412563 e!4741294)))

(declare-fun b!8047319 () Bool)

(declare-fun tp_is_empty!54649 () Bool)

(assert (=> b!8047319 (= e!4741294 tp_is_empty!54649)))

(declare-fun b!8047322 () Bool)

(declare-fun tp!2412596 () Bool)

(declare-fun tp!2412599 () Bool)

(assert (=> b!8047322 (= e!4741294 (and tp!2412596 tp!2412599))))

(assert (= (and b!8047222 ((_ is ElementMatch!21845) (regex!8774 (h!81838 rules!4081)))) b!8047319))

(assert (= (and b!8047222 ((_ is Concat!30940) (regex!8774 (h!81838 rules!4081)))) b!8047320))

(assert (= (and b!8047222 ((_ is Star!21845) (regex!8774 (h!81838 rules!4081)))) b!8047321))

(assert (= (and b!8047222 ((_ is Union!21845) (regex!8774 (h!81838 rules!4081)))) b!8047322))

(declare-fun b!8047345 () Bool)

(declare-fun b_free!136513 () Bool)

(declare-fun b_next!137303 () Bool)

(assert (=> b!8047345 (= b_free!136513 (not b_next!137303))))

(declare-fun tp!2412624 () Bool)

(declare-fun b_and!354949 () Bool)

(assert (=> b!8047345 (= tp!2412624 b_and!354949)))

(declare-fun b_free!136517 () Bool)

(declare-fun b_next!137307 () Bool)

(assert (=> b!8047345 (= b_free!136517 (not b_next!137307))))

(declare-fun tp!2412623 () Bool)

(declare-fun b_and!354953 () Bool)

(assert (=> b!8047345 (= tp!2412623 b_and!354953)))

(declare-fun e!4741317 () Bool)

(assert (=> b!8047345 (= e!4741317 (and tp!2412624 tp!2412623))))

(declare-fun tp!2412622 () Bool)

(declare-fun b!8047344 () Bool)

(declare-fun e!4741320 () Bool)

(assert (=> b!8047344 (= e!4741320 (and tp!2412622 (inv!97105 (tag!9638 (h!81838 (t!391286 rules!4081)))) (inv!97107 (transformation!8774 (h!81838 (t!391286 rules!4081)))) e!4741317))))

(declare-fun b!8047343 () Bool)

(declare-fun e!4741318 () Bool)

(declare-fun tp!2412621 () Bool)

(assert (=> b!8047343 (= e!4741318 (and e!4741320 tp!2412621))))

(assert (=> b!8047226 (= tp!2412559 e!4741318)))

(assert (= b!8047344 b!8047345))

(assert (= b!8047343 b!8047344))

(assert (= (and b!8047226 ((_ is Cons!75390) (t!391286 rules!4081))) b!8047343))

(declare-fun m!8399046 () Bool)

(assert (=> b!8047344 m!8399046))

(declare-fun m!8399050 () Bool)

(assert (=> b!8047344 m!8399050))

(declare-fun b!8047346 () Bool)

(declare-fun e!4741321 () Bool)

(declare-fun tp!2412625 () Bool)

(assert (=> b!8047346 (= e!4741321 (and (inv!97105 (h!81839 (t!391287 newAcc!87))) tp!2412625))))

(assert (=> b!8047224 (= tp!2412562 e!4741321)))

(assert (= (and b!8047224 ((_ is Cons!75391) (t!391287 newAcc!87))) b!8047346))

(declare-fun m!8399052 () Bool)

(assert (=> b!8047346 m!8399052))

(check-sat b_and!354953 (not d!2396750) (not b!8047300) (not b!8047320) (not b!8047265) (not b!8047284) (not b!8047242) (not b_next!137297) (not b_next!137299) (not b!8047346) (not b!8047344) tp_is_empty!54649 (not b_next!137303) (not b!8047266) (not b!8047241) (not b!8047249) (not b!8047322) (not d!2396742) (not b_next!137307) (not b!8047343) (not b!8047321) (not b!8047267) b_and!354945 b_and!354943 (not b!8047251) (not b!8047283) b_and!354949 (not b!8047250) (not d!2396732))
(check-sat (not b_next!137303) b_and!354953 (not b_next!137307) (not b_next!137297) (not b_next!137299) b_and!354949 b_and!354945 b_and!354943)
