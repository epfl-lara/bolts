; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402462 () Bool)

(assert start!402462)

(declare-fun b!4211334 () Bool)

(declare-fun b_free!123275 () Bool)

(declare-fun b_next!123979 () Bool)

(assert (=> b!4211334 (= b_free!123275 (not b_next!123979))))

(declare-fun tp!1287754 () Bool)

(declare-fun b_and!331437 () Bool)

(assert (=> b!4211334 (= tp!1287754 b_and!331437)))

(declare-fun b_free!123277 () Bool)

(declare-fun b_next!123981 () Bool)

(assert (=> b!4211334 (= b_free!123277 (not b_next!123981))))

(declare-fun tp!1287755 () Bool)

(declare-fun b_and!331439 () Bool)

(assert (=> b!4211334 (= tp!1287755 b_and!331439)))

(declare-fun b!4211311 () Bool)

(declare-fun b_free!123279 () Bool)

(declare-fun b_next!123983 () Bool)

(assert (=> b!4211311 (= b_free!123279 (not b_next!123983))))

(declare-fun tp!1287756 () Bool)

(declare-fun b_and!331441 () Bool)

(assert (=> b!4211311 (= tp!1287756 b_and!331441)))

(declare-fun b_free!123281 () Bool)

(declare-fun b_next!123985 () Bool)

(assert (=> b!4211311 (= b_free!123281 (not b_next!123985))))

(declare-fun tp!1287748 () Bool)

(declare-fun b_and!331443 () Bool)

(assert (=> b!4211311 (= tp!1287748 b_and!331443)))

(declare-fun b!4211314 () Bool)

(declare-fun b_free!123283 () Bool)

(declare-fun b_next!123987 () Bool)

(assert (=> b!4211314 (= b_free!123283 (not b_next!123987))))

(declare-fun tp!1287740 () Bool)

(declare-fun b_and!331445 () Bool)

(assert (=> b!4211314 (= tp!1287740 b_and!331445)))

(declare-fun b_free!123285 () Bool)

(declare-fun b_next!123989 () Bool)

(assert (=> b!4211314 (= b_free!123285 (not b_next!123989))))

(declare-fun tp!1287746 () Bool)

(declare-fun b_and!331447 () Bool)

(assert (=> b!4211314 (= tp!1287746 b_and!331447)))

(declare-fun b!4211319 () Bool)

(declare-fun b_free!123287 () Bool)

(declare-fun b_next!123991 () Bool)

(assert (=> b!4211319 (= b_free!123287 (not b_next!123991))))

(declare-fun tp!1287749 () Bool)

(declare-fun b_and!331449 () Bool)

(assert (=> b!4211319 (= tp!1287749 b_and!331449)))

(declare-fun b_free!123289 () Bool)

(declare-fun b_next!123993 () Bool)

(assert (=> b!4211319 (= b_free!123289 (not b_next!123993))))

(declare-fun tp!1287747 () Bool)

(declare-fun b_and!331451 () Bool)

(assert (=> b!4211319 (= tp!1287747 b_and!331451)))

(declare-fun res!1729952 () Bool)

(declare-fun e!2614305 () Bool)

(assert (=> start!402462 (=> (not res!1729952) (not e!2614305))))

(declare-datatypes ((LexerInterface!7345 0))(
  ( (LexerInterfaceExt!7342 (__x!28183 Int)) (Lexer!7343) )
))
(declare-fun thiss!26544 () LexerInterface!7345)

(get-info :version)

(assert (=> start!402462 (= res!1729952 ((_ is Lexer!7343) thiss!26544))))

(assert (=> start!402462 e!2614305))

(declare-datatypes ((List!46425 0))(
  ( (Nil!46301) (Cons!46301 (h!51721 (_ BitVec 16)) (t!348024 List!46425)) )
))
(declare-datatypes ((TokenValue!7980 0))(
  ( (FloatLiteralValue!15960 (text!56305 List!46425)) (TokenValueExt!7979 (__x!28184 Int)) (Broken!39900 (value!241378 List!46425)) (Object!8103) (End!7980) (Def!7980) (Underscore!7980) (Match!7980) (Else!7980) (Error!7980) (Case!7980) (If!7980) (Extends!7980) (Abstract!7980) (Class!7980) (Val!7980) (DelimiterValue!15960 (del!8040 List!46425)) (KeywordValue!7986 (value!241379 List!46425)) (CommentValue!15960 (value!241380 List!46425)) (WhitespaceValue!15960 (value!241381 List!46425)) (IndentationValue!7980 (value!241382 List!46425)) (String!53769) (Int32!7980) (Broken!39901 (value!241383 List!46425)) (Boolean!7981) (Unit!65422) (OperatorValue!7983 (op!8040 List!46425)) (IdentifierValue!15960 (value!241384 List!46425)) (IdentifierValue!15961 (value!241385 List!46425)) (WhitespaceValue!15961 (value!241386 List!46425)) (True!15960) (False!15960) (Broken!39902 (value!241387 List!46425)) (Broken!39903 (value!241388 List!46425)) (True!15961) (RightBrace!7980) (RightBracket!7980) (Colon!7980) (Null!7980) (Comma!7980) (LeftBracket!7980) (False!15961) (LeftBrace!7980) (ImaginaryLiteralValue!7980 (text!56306 List!46425)) (StringLiteralValue!23940 (value!241389 List!46425)) (EOFValue!7980 (value!241390 List!46425)) (IdentValue!7980 (value!241391 List!46425)) (DelimiterValue!15961 (value!241392 List!46425)) (DedentValue!7980 (value!241393 List!46425)) (NewLineValue!7980 (value!241394 List!46425)) (IntegerValue!23940 (value!241395 (_ BitVec 32)) (text!56307 List!46425)) (IntegerValue!23941 (value!241396 Int) (text!56308 List!46425)) (Times!7980) (Or!7980) (Equal!7980) (Minus!7980) (Broken!39904 (value!241397 List!46425)) (And!7980) (Div!7980) (LessEqual!7980) (Mod!7980) (Concat!20635) (Not!7980) (Plus!7980) (SpaceValue!7980 (value!241398 List!46425)) (IntegerValue!23942 (value!241399 Int) (text!56309 List!46425)) (StringLiteralValue!23941 (text!56310 List!46425)) (FloatLiteralValue!15961 (text!56311 List!46425)) (BytesLiteralValue!7980 (value!241400 List!46425)) (CommentValue!15961 (value!241401 List!46425)) (StringLiteralValue!23942 (value!241402 List!46425)) (ErrorTokenValue!7980 (msg!8041 List!46425)) )
))
(declare-datatypes ((C!25504 0))(
  ( (C!25505 (val!14914 Int)) )
))
(declare-datatypes ((List!46426 0))(
  ( (Nil!46302) (Cons!46302 (h!51722 C!25504) (t!348025 List!46426)) )
))
(declare-datatypes ((IArray!27927 0))(
  ( (IArray!27928 (innerList!14021 List!46426)) )
))
(declare-datatypes ((Regex!12655 0))(
  ( (ElementMatch!12655 (c!717406 C!25504)) (Concat!20636 (regOne!25822 Regex!12655) (regTwo!25822 Regex!12655)) (EmptyExpr!12655) (Star!12655 (reg!12984 Regex!12655)) (EmptyLang!12655) (Union!12655 (regOne!25823 Regex!12655) (regTwo!25823 Regex!12655)) )
))
(declare-datatypes ((String!53770 0))(
  ( (String!53771 (value!241403 String)) )
))
(declare-datatypes ((Conc!13961 0))(
  ( (Node!13961 (left!34467 Conc!13961) (right!34797 Conc!13961) (csize!28152 Int) (cheight!14172 Int)) (Leaf!21580 (xs!17267 IArray!27927) (csize!28153 Int)) (Empty!13961) )
))
(declare-datatypes ((BalanceConc!27516 0))(
  ( (BalanceConc!27517 (c!717407 Conc!13961)) )
))
(declare-datatypes ((TokenValueInjection!15388 0))(
  ( (TokenValueInjection!15389 (toValue!10470 Int) (toChars!10329 Int)) )
))
(declare-datatypes ((Rule!15300 0))(
  ( (Rule!15301 (regex!7750 Regex!12655) (tag!8614 String!53770) (isSeparator!7750 Bool) (transformation!7750 TokenValueInjection!15388)) )
))
(declare-datatypes ((Token!14202 0))(
  ( (Token!14203 (value!241404 TokenValue!7980) (rule!10864 Rule!15300) (size!34011 Int) (originalCharacters!8132 List!46426)) )
))
(declare-fun tBis!41 () Token!14202)

(declare-fun e!2614307 () Bool)

(declare-fun inv!60919 (Token!14202) Bool)

(assert (=> start!402462 (and (inv!60919 tBis!41) e!2614307)))

(assert (=> start!402462 true))

(declare-fun e!2614306 () Bool)

(assert (=> start!402462 e!2614306))

(declare-fun e!2614299 () Bool)

(assert (=> start!402462 e!2614299))

(declare-fun e!2614311 () Bool)

(assert (=> start!402462 e!2614311))

(declare-fun e!2614308 () Bool)

(assert (=> start!402462 e!2614308))

(declare-fun t!8364 () Token!14202)

(declare-fun e!2614294 () Bool)

(assert (=> start!402462 (and (inv!60919 t!8364) e!2614294)))

(declare-fun e!2614303 () Bool)

(assert (=> start!402462 e!2614303))

(declare-fun e!2614316 () Bool)

(assert (=> start!402462 e!2614316))

(declare-fun e!2614292 () Bool)

(assert (=> start!402462 e!2614292))

(declare-fun b!4211310 () Bool)

(declare-fun tp_is_empty!22277 () Bool)

(declare-fun tp!1287752 () Bool)

(assert (=> b!4211310 (= e!2614316 (and tp_is_empty!22277 tp!1287752))))

(declare-fun e!2614309 () Bool)

(assert (=> b!4211311 (= e!2614309 (and tp!1287756 tp!1287748))))

(declare-fun b!4211312 () Bool)

(declare-fun res!1729963 () Bool)

(assert (=> b!4211312 (=> (not res!1729963) (not e!2614305))))

(declare-fun p!3001 () List!46426)

(declare-fun input!3517 () List!46426)

(declare-fun suffix!1557 () List!46426)

(declare-fun ++!11824 (List!46426 List!46426) List!46426)

(assert (=> b!4211312 (= res!1729963 (= (++!11824 p!3001 suffix!1557) input!3517))))

(declare-fun b!4211313 () Bool)

(declare-fun res!1729964 () Bool)

(assert (=> b!4211313 (=> (not res!1729964) (not e!2614305))))

(declare-fun isPrefix!4609 (List!46426 List!46426) Bool)

(assert (=> b!4211313 (= res!1729964 (isPrefix!4609 p!3001 input!3517))))

(declare-fun e!2614314 () Bool)

(assert (=> b!4211314 (= e!2614314 (and tp!1287740 tp!1287746))))

(declare-fun b!4211315 () Bool)

(declare-fun e!2614302 () Bool)

(declare-fun tp!1287745 () Bool)

(assert (=> b!4211315 (= e!2614311 (and e!2614302 tp!1287745))))

(declare-fun b!4211316 () Bool)

(declare-fun e!2614293 () Bool)

(declare-datatypes ((List!46427 0))(
  ( (Nil!46303) (Cons!46303 (h!51723 Rule!15300) (t!348026 List!46427)) )
))
(declare-fun rules!3967 () List!46427)

(declare-fun rulesValidInductive!2876 (LexerInterface!7345 List!46427) Bool)

(assert (=> b!4211316 (= e!2614293 (rulesValidInductive!2876 thiss!26544 (t!348026 rules!3967)))))

(declare-fun e!2614304 () Bool)

(declare-fun tp!1287758 () Bool)

(declare-fun b!4211317 () Bool)

(declare-fun inv!21 (TokenValue!7980) Bool)

(assert (=> b!4211317 (= e!2614294 (and (inv!21 (value!241404 t!8364)) e!2614304 tp!1287758))))

(declare-fun b!4211318 () Bool)

(declare-fun e!2614312 () Bool)

(assert (=> b!4211318 (= e!2614312 (not e!2614293))))

(declare-fun res!1729956 () Bool)

(assert (=> b!4211318 (=> res!1729956 e!2614293)))

(declare-fun rBis!178 () Rule!15300)

(declare-fun suffixBis!41 () List!46426)

(declare-datatypes ((tuple2!44042 0))(
  ( (tuple2!44043 (_1!25155 Token!14202) (_2!25155 List!46426)) )
))
(declare-datatypes ((Option!9938 0))(
  ( (None!9937) (Some!9937 (v!40807 tuple2!44042)) )
))
(declare-fun maxPrefixOneRule!3340 (LexerInterface!7345 Rule!15300 List!46426) Option!9938)

(assert (=> b!4211318 (= res!1729956 (not (= (maxPrefixOneRule!3340 thiss!26544 rBis!178 input!3517) (Some!9937 (tuple2!44043 tBis!41 suffixBis!41)))))))

(assert (=> b!4211318 (isPrefix!4609 input!3517 input!3517)))

(declare-datatypes ((Unit!65423 0))(
  ( (Unit!65424) )
))
(declare-fun lt!1499129 () Unit!65423)

(declare-fun lemmaIsPrefixRefl!3026 (List!46426 List!46426) Unit!65423)

(assert (=> b!4211318 (= lt!1499129 (lemmaIsPrefixRefl!3026 input!3517 input!3517))))

(declare-fun e!2614296 () Bool)

(assert (=> b!4211319 (= e!2614296 (and tp!1287749 tp!1287747))))

(declare-fun b!4211320 () Bool)

(assert (=> b!4211320 (= e!2614305 e!2614312)))

(declare-fun res!1729960 () Bool)

(assert (=> b!4211320 (=> (not res!1729960) (not e!2614312))))

(declare-fun lt!1499130 () Option!9938)

(declare-fun maxPrefix!4385 (LexerInterface!7345 List!46427 List!46426) Option!9938)

(assert (=> b!4211320 (= res!1729960 (= (maxPrefix!4385 thiss!26544 rules!3967 input!3517) lt!1499130))))

(assert (=> b!4211320 (= lt!1499130 (Some!9937 (tuple2!44043 t!8364 suffix!1557)))))

(declare-fun b!4211321 () Bool)

(declare-fun res!1729954 () Bool)

(assert (=> b!4211321 (=> (not res!1729954) (not e!2614305))))

(declare-fun pBis!121 () List!46426)

(assert (=> b!4211321 (= res!1729954 (isPrefix!4609 pBis!121 input!3517))))

(declare-fun b!4211322 () Bool)

(declare-fun tp!1287750 () Bool)

(assert (=> b!4211322 (= e!2614308 (and tp_is_empty!22277 tp!1287750))))

(declare-fun b!4211323 () Bool)

(declare-fun res!1729950 () Bool)

(assert (=> b!4211323 (=> res!1729950 e!2614293)))

(assert (=> b!4211323 (= res!1729950 (not (= (rule!10864 tBis!41) rBis!178)))))

(declare-fun b!4211324 () Bool)

(declare-fun res!1729955 () Bool)

(assert (=> b!4211324 (=> (not res!1729955) (not e!2614305))))

(declare-fun isEmpty!27418 (List!46427) Bool)

(assert (=> b!4211324 (= res!1729955 (not (isEmpty!27418 rules!3967)))))

(declare-fun b!4211325 () Bool)

(declare-fun res!1729953 () Bool)

(assert (=> b!4211325 (=> res!1729953 e!2614293)))

(assert (=> b!4211325 (= res!1729953 (not (= (++!11824 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4211326 () Bool)

(declare-fun tp!1287744 () Bool)

(assert (=> b!4211326 (= e!2614292 (and tp_is_empty!22277 tp!1287744))))

(declare-fun b!4211327 () Bool)

(declare-fun res!1729958 () Bool)

(assert (=> b!4211327 (=> (not res!1729958) (not e!2614305))))

(declare-fun contains!9571 (List!46427 Rule!15300) Bool)

(assert (=> b!4211327 (= res!1729958 (contains!9571 rules!3967 rBis!178))))

(declare-fun b!4211328 () Bool)

(declare-fun tp!1287753 () Bool)

(assert (=> b!4211328 (= e!2614299 (and tp_is_empty!22277 tp!1287753))))

(declare-fun b!4211329 () Bool)

(declare-fun res!1729965 () Bool)

(assert (=> b!4211329 (=> res!1729965 e!2614293)))

(assert (=> b!4211329 (= res!1729965 (or (and ((_ is Cons!46303) rules!3967) ((_ is Nil!46303) (t!348026 rules!3967))) (not ((_ is Cons!46303) rules!3967)) (= (h!51723 rules!3967) rBis!178)))))

(declare-fun b!4211330 () Bool)

(declare-fun res!1729961 () Bool)

(assert (=> b!4211330 (=> res!1729961 e!2614293)))

(assert (=> b!4211330 (= res!1729961 (not (= (maxPrefixOneRule!3340 thiss!26544 (h!51723 rules!3967) input!3517) lt!1499130)))))

(declare-fun b!4211331 () Bool)

(declare-fun res!1729949 () Bool)

(assert (=> b!4211331 (=> res!1729949 e!2614293)))

(declare-fun list!16743 (BalanceConc!27516) List!46426)

(declare-fun charsOf!5173 (Token!14202) BalanceConc!27516)

(assert (=> b!4211331 (= res!1729949 (not (= (list!16743 (charsOf!5173 tBis!41)) pBis!121)))))

(declare-fun tp!1287741 () Bool)

(declare-fun e!2614315 () Bool)

(declare-fun b!4211332 () Bool)

(declare-fun inv!60916 (String!53770) Bool)

(declare-fun inv!60920 (TokenValueInjection!15388) Bool)

(assert (=> b!4211332 (= e!2614302 (and tp!1287741 (inv!60916 (tag!8614 (h!51723 rules!3967))) (inv!60920 (transformation!7750 (h!51723 rules!3967))) e!2614315))))

(declare-fun e!2614301 () Bool)

(declare-fun tp!1287743 () Bool)

(declare-fun b!4211333 () Bool)

(assert (=> b!4211333 (= e!2614301 (and tp!1287743 (inv!60916 (tag!8614 (rule!10864 tBis!41))) (inv!60920 (transformation!7750 (rule!10864 tBis!41))) e!2614296))))

(assert (=> b!4211334 (= e!2614315 (and tp!1287754 tp!1287755))))

(declare-fun b!4211335 () Bool)

(declare-fun tp!1287742 () Bool)

(assert (=> b!4211335 (= e!2614303 (and tp_is_empty!22277 tp!1287742))))

(declare-fun b!4211336 () Bool)

(declare-fun tp!1287757 () Bool)

(assert (=> b!4211336 (= e!2614304 (and tp!1287757 (inv!60916 (tag!8614 (rule!10864 t!8364))) (inv!60920 (transformation!7750 (rule!10864 t!8364))) e!2614309))))

(declare-fun b!4211337 () Bool)

(declare-fun res!1729959 () Bool)

(assert (=> b!4211337 (=> res!1729959 e!2614293)))

(declare-fun isEmpty!27419 (Option!9938) Bool)

(assert (=> b!4211337 (= res!1729959 (not (isEmpty!27419 (maxPrefix!4385 thiss!26544 (t!348026 rules!3967) input!3517))))))

(declare-fun b!4211338 () Bool)

(declare-fun res!1729951 () Bool)

(assert (=> b!4211338 (=> res!1729951 e!2614293)))

(assert (=> b!4211338 (= res!1729951 (isEmpty!27418 (t!348026 rules!3967)))))

(declare-fun b!4211339 () Bool)

(declare-fun res!1729957 () Bool)

(assert (=> b!4211339 (=> (not res!1729957) (not e!2614305))))

(declare-fun rulesInvariant!6556 (LexerInterface!7345 List!46427) Bool)

(assert (=> b!4211339 (= res!1729957 (rulesInvariant!6556 thiss!26544 rules!3967))))

(declare-fun tp!1287751 () Bool)

(declare-fun b!4211340 () Bool)

(assert (=> b!4211340 (= e!2614307 (and (inv!21 (value!241404 tBis!41)) e!2614301 tp!1287751))))

(declare-fun b!4211341 () Bool)

(declare-fun res!1729962 () Bool)

(assert (=> b!4211341 (=> (not res!1729962) (not e!2614312))))

(declare-fun ruleValid!3462 (LexerInterface!7345 Rule!15300) Bool)

(assert (=> b!4211341 (= res!1729962 (ruleValid!3462 thiss!26544 rBis!178))))

(declare-fun b!4211342 () Bool)

(declare-fun tp!1287739 () Bool)

(assert (=> b!4211342 (= e!2614306 (and tp!1287739 (inv!60916 (tag!8614 rBis!178)) (inv!60920 (transformation!7750 rBis!178)) e!2614314))))

(assert (= (and start!402462 res!1729952) b!4211312))

(assert (= (and b!4211312 res!1729963) b!4211313))

(assert (= (and b!4211313 res!1729964) b!4211321))

(assert (= (and b!4211321 res!1729954) b!4211324))

(assert (= (and b!4211324 res!1729955) b!4211339))

(assert (= (and b!4211339 res!1729957) b!4211327))

(assert (= (and b!4211327 res!1729958) b!4211320))

(assert (= (and b!4211320 res!1729960) b!4211341))

(assert (= (and b!4211341 res!1729962) b!4211318))

(assert (= (and b!4211318 (not res!1729956)) b!4211323))

(assert (= (and b!4211323 (not res!1729950)) b!4211331))

(assert (= (and b!4211331 (not res!1729949)) b!4211325))

(assert (= (and b!4211325 (not res!1729953)) b!4211329))

(assert (= (and b!4211329 (not res!1729965)) b!4211330))

(assert (= (and b!4211330 (not res!1729961)) b!4211337))

(assert (= (and b!4211337 (not res!1729959)) b!4211338))

(assert (= (and b!4211338 (not res!1729951)) b!4211316))

(assert (= b!4211333 b!4211319))

(assert (= b!4211340 b!4211333))

(assert (= start!402462 b!4211340))

(assert (= b!4211342 b!4211314))

(assert (= start!402462 b!4211342))

(assert (= (and start!402462 ((_ is Cons!46302) p!3001)) b!4211328))

(assert (= b!4211332 b!4211334))

(assert (= b!4211315 b!4211332))

(assert (= (and start!402462 ((_ is Cons!46303) rules!3967)) b!4211315))

(assert (= (and start!402462 ((_ is Cons!46302) input!3517)) b!4211322))

(assert (= b!4211336 b!4211311))

(assert (= b!4211317 b!4211336))

(assert (= start!402462 b!4211317))

(assert (= (and start!402462 ((_ is Cons!46302) pBis!121)) b!4211335))

(assert (= (and start!402462 ((_ is Cons!46302) suffix!1557)) b!4211310))

(assert (= (and start!402462 ((_ is Cons!46302) suffixBis!41)) b!4211326))

(declare-fun m!4799121 () Bool)

(assert (=> b!4211324 m!4799121))

(declare-fun m!4799123 () Bool)

(assert (=> b!4211340 m!4799123))

(declare-fun m!4799125 () Bool)

(assert (=> b!4211313 m!4799125))

(declare-fun m!4799127 () Bool)

(assert (=> b!4211318 m!4799127))

(declare-fun m!4799129 () Bool)

(assert (=> b!4211318 m!4799129))

(declare-fun m!4799131 () Bool)

(assert (=> b!4211318 m!4799131))

(declare-fun m!4799133 () Bool)

(assert (=> b!4211321 m!4799133))

(declare-fun m!4799135 () Bool)

(assert (=> b!4211330 m!4799135))

(declare-fun m!4799137 () Bool)

(assert (=> b!4211333 m!4799137))

(declare-fun m!4799139 () Bool)

(assert (=> b!4211333 m!4799139))

(declare-fun m!4799141 () Bool)

(assert (=> b!4211339 m!4799141))

(declare-fun m!4799143 () Bool)

(assert (=> b!4211312 m!4799143))

(declare-fun m!4799145 () Bool)

(assert (=> b!4211331 m!4799145))

(assert (=> b!4211331 m!4799145))

(declare-fun m!4799147 () Bool)

(assert (=> b!4211331 m!4799147))

(declare-fun m!4799149 () Bool)

(assert (=> b!4211337 m!4799149))

(assert (=> b!4211337 m!4799149))

(declare-fun m!4799151 () Bool)

(assert (=> b!4211337 m!4799151))

(declare-fun m!4799153 () Bool)

(assert (=> b!4211336 m!4799153))

(declare-fun m!4799155 () Bool)

(assert (=> b!4211336 m!4799155))

(declare-fun m!4799157 () Bool)

(assert (=> b!4211327 m!4799157))

(declare-fun m!4799159 () Bool)

(assert (=> b!4211338 m!4799159))

(declare-fun m!4799161 () Bool)

(assert (=> b!4211342 m!4799161))

(declare-fun m!4799163 () Bool)

(assert (=> b!4211342 m!4799163))

(declare-fun m!4799165 () Bool)

(assert (=> b!4211316 m!4799165))

(declare-fun m!4799167 () Bool)

(assert (=> b!4211325 m!4799167))

(declare-fun m!4799169 () Bool)

(assert (=> b!4211332 m!4799169))

(declare-fun m!4799171 () Bool)

(assert (=> b!4211332 m!4799171))

(declare-fun m!4799173 () Bool)

(assert (=> b!4211320 m!4799173))

(declare-fun m!4799175 () Bool)

(assert (=> start!402462 m!4799175))

(declare-fun m!4799177 () Bool)

(assert (=> start!402462 m!4799177))

(declare-fun m!4799179 () Bool)

(assert (=> b!4211317 m!4799179))

(declare-fun m!4799181 () Bool)

(assert (=> b!4211341 m!4799181))

(check-sat tp_is_empty!22277 b_and!331449 b_and!331445 (not b_next!123985) (not b_next!123983) (not b!4211325) (not b!4211328) (not b!4211312) (not b!4211313) (not b!4211336) (not b!4211322) (not b!4211340) (not b!4211326) (not b_next!123991) (not b!4211318) (not b!4211315) b_and!331441 (not b!4211310) (not b_next!123993) (not b!4211330) b_and!331443 (not b!4211342) (not b!4211316) (not b!4211338) b_and!331437 (not b!4211327) (not b_next!123979) (not b_next!123987) (not b!4211317) (not b!4211335) (not b!4211321) (not b_next!123981) (not b!4211341) (not b!4211339) (not b_next!123989) (not b!4211332) b_and!331451 b_and!331447 (not b!4211331) b_and!331439 (not b!4211320) (not start!402462) (not b!4211324) (not b!4211333) (not b!4211337))
(check-sat b_and!331449 (not b_next!123991) b_and!331445 b_and!331441 (not b_next!123985) (not b_next!123993) (not b_next!123983) b_and!331443 (not b_next!123987) (not b_next!123981) (not b_next!123989) b_and!331439 b_and!331437 (not b_next!123979) b_and!331451 b_and!331447)
(get-model)

(declare-fun b!4211367 () Bool)

(declare-fun e!2614334 () Bool)

(declare-fun e!2614335 () Bool)

(assert (=> b!4211367 (= e!2614334 e!2614335)))

(declare-fun res!1729998 () Bool)

(assert (=> b!4211367 (=> (not res!1729998) (not e!2614335))))

(assert (=> b!4211367 (= res!1729998 (not ((_ is Nil!46302) input!3517)))))

(declare-fun b!4211369 () Bool)

(declare-fun tail!6780 (List!46426) List!46426)

(assert (=> b!4211369 (= e!2614335 (isPrefix!4609 (tail!6780 p!3001) (tail!6780 input!3517)))))

(declare-fun b!4211370 () Bool)

(declare-fun e!2614336 () Bool)

(declare-fun size!34013 (List!46426) Int)

(assert (=> b!4211370 (= e!2614336 (>= (size!34013 input!3517) (size!34013 p!3001)))))

(declare-fun d!1241153 () Bool)

(assert (=> d!1241153 e!2614336))

(declare-fun res!1729999 () Bool)

(assert (=> d!1241153 (=> res!1729999 e!2614336)))

(declare-fun lt!1499136 () Bool)

(assert (=> d!1241153 (= res!1729999 (not lt!1499136))))

(assert (=> d!1241153 (= lt!1499136 e!2614334)))

(declare-fun res!1730001 () Bool)

(assert (=> d!1241153 (=> res!1730001 e!2614334)))

(assert (=> d!1241153 (= res!1730001 ((_ is Nil!46302) p!3001))))

(assert (=> d!1241153 (= (isPrefix!4609 p!3001 input!3517) lt!1499136)))

(declare-fun b!4211368 () Bool)

(declare-fun res!1730000 () Bool)

(assert (=> b!4211368 (=> (not res!1730000) (not e!2614335))))

(declare-fun head!8933 (List!46426) C!25504)

(assert (=> b!4211368 (= res!1730000 (= (head!8933 p!3001) (head!8933 input!3517)))))

(assert (= (and d!1241153 (not res!1730001)) b!4211367))

(assert (= (and b!4211367 res!1729998) b!4211368))

(assert (= (and b!4211368 res!1730000) b!4211369))

(assert (= (and d!1241153 (not res!1729999)) b!4211370))

(declare-fun m!4799193 () Bool)

(assert (=> b!4211369 m!4799193))

(declare-fun m!4799195 () Bool)

(assert (=> b!4211369 m!4799195))

(assert (=> b!4211369 m!4799193))

(assert (=> b!4211369 m!4799195))

(declare-fun m!4799199 () Bool)

(assert (=> b!4211369 m!4799199))

(declare-fun m!4799203 () Bool)

(assert (=> b!4211370 m!4799203))

(declare-fun m!4799205 () Bool)

(assert (=> b!4211370 m!4799205))

(declare-fun m!4799207 () Bool)

(assert (=> b!4211368 m!4799207))

(declare-fun m!4799209 () Bool)

(assert (=> b!4211368 m!4799209))

(assert (=> b!4211313 d!1241153))

(declare-fun b!4211383 () Bool)

(declare-fun e!2614345 () List!46426)

(assert (=> b!4211383 (= e!2614345 suffix!1557)))

(declare-fun b!4211384 () Bool)

(assert (=> b!4211384 (= e!2614345 (Cons!46302 (h!51722 p!3001) (++!11824 (t!348025 p!3001) suffix!1557)))))

(declare-fun b!4211385 () Bool)

(declare-fun res!1730008 () Bool)

(declare-fun e!2614344 () Bool)

(assert (=> b!4211385 (=> (not res!1730008) (not e!2614344))))

(declare-fun lt!1499139 () List!46426)

(assert (=> b!4211385 (= res!1730008 (= (size!34013 lt!1499139) (+ (size!34013 p!3001) (size!34013 suffix!1557))))))

(declare-fun d!1241157 () Bool)

(assert (=> d!1241157 e!2614344))

(declare-fun res!1730009 () Bool)

(assert (=> d!1241157 (=> (not res!1730009) (not e!2614344))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7247 (List!46426) (InoxSet C!25504))

(assert (=> d!1241157 (= res!1730009 (= (content!7247 lt!1499139) ((_ map or) (content!7247 p!3001) (content!7247 suffix!1557))))))

(assert (=> d!1241157 (= lt!1499139 e!2614345)))

(declare-fun c!717410 () Bool)

(assert (=> d!1241157 (= c!717410 ((_ is Nil!46302) p!3001))))

(assert (=> d!1241157 (= (++!11824 p!3001 suffix!1557) lt!1499139)))

(declare-fun b!4211386 () Bool)

(assert (=> b!4211386 (= e!2614344 (or (not (= suffix!1557 Nil!46302)) (= lt!1499139 p!3001)))))

(assert (= (and d!1241157 c!717410) b!4211383))

(assert (= (and d!1241157 (not c!717410)) b!4211384))

(assert (= (and d!1241157 res!1730009) b!4211385))

(assert (= (and b!4211385 res!1730008) b!4211386))

(declare-fun m!4799227 () Bool)

(assert (=> b!4211384 m!4799227))

(declare-fun m!4799229 () Bool)

(assert (=> b!4211385 m!4799229))

(assert (=> b!4211385 m!4799205))

(declare-fun m!4799231 () Bool)

(assert (=> b!4211385 m!4799231))

(declare-fun m!4799233 () Bool)

(assert (=> d!1241157 m!4799233))

(declare-fun m!4799235 () Bool)

(assert (=> d!1241157 m!4799235))

(declare-fun m!4799237 () Bool)

(assert (=> d!1241157 m!4799237))

(assert (=> b!4211312 d!1241157))

(declare-fun b!4211387 () Bool)

(declare-fun e!2614347 () List!46426)

(assert (=> b!4211387 (= e!2614347 suffixBis!41)))

(declare-fun b!4211388 () Bool)

(assert (=> b!4211388 (= e!2614347 (Cons!46302 (h!51722 pBis!121) (++!11824 (t!348025 pBis!121) suffixBis!41)))))

(declare-fun b!4211389 () Bool)

(declare-fun res!1730010 () Bool)

(declare-fun e!2614346 () Bool)

(assert (=> b!4211389 (=> (not res!1730010) (not e!2614346))))

(declare-fun lt!1499140 () List!46426)

(assert (=> b!4211389 (= res!1730010 (= (size!34013 lt!1499140) (+ (size!34013 pBis!121) (size!34013 suffixBis!41))))))

(declare-fun d!1241165 () Bool)

(assert (=> d!1241165 e!2614346))

(declare-fun res!1730011 () Bool)

(assert (=> d!1241165 (=> (not res!1730011) (not e!2614346))))

(assert (=> d!1241165 (= res!1730011 (= (content!7247 lt!1499140) ((_ map or) (content!7247 pBis!121) (content!7247 suffixBis!41))))))

(assert (=> d!1241165 (= lt!1499140 e!2614347)))

(declare-fun c!717411 () Bool)

(assert (=> d!1241165 (= c!717411 ((_ is Nil!46302) pBis!121))))

(assert (=> d!1241165 (= (++!11824 pBis!121 suffixBis!41) lt!1499140)))

(declare-fun b!4211390 () Bool)

(assert (=> b!4211390 (= e!2614346 (or (not (= suffixBis!41 Nil!46302)) (= lt!1499140 pBis!121)))))

(assert (= (and d!1241165 c!717411) b!4211387))

(assert (= (and d!1241165 (not c!717411)) b!4211388))

(assert (= (and d!1241165 res!1730011) b!4211389))

(assert (= (and b!4211389 res!1730010) b!4211390))

(declare-fun m!4799239 () Bool)

(assert (=> b!4211388 m!4799239))

(declare-fun m!4799241 () Bool)

(assert (=> b!4211389 m!4799241))

(declare-fun m!4799243 () Bool)

(assert (=> b!4211389 m!4799243))

(declare-fun m!4799245 () Bool)

(assert (=> b!4211389 m!4799245))

(declare-fun m!4799247 () Bool)

(assert (=> d!1241165 m!4799247))

(declare-fun m!4799249 () Bool)

(assert (=> d!1241165 m!4799249))

(declare-fun m!4799251 () Bool)

(assert (=> d!1241165 m!4799251))

(assert (=> b!4211325 d!1241165))

(declare-fun d!1241167 () Bool)

(assert (=> d!1241167 (= (isEmpty!27418 rules!3967) ((_ is Nil!46303) rules!3967))))

(assert (=> b!4211324 d!1241167))

(declare-fun d!1241169 () Bool)

(assert (=> d!1241169 (= (isEmpty!27419 (maxPrefix!4385 thiss!26544 (t!348026 rules!3967) input!3517)) (not ((_ is Some!9937) (maxPrefix!4385 thiss!26544 (t!348026 rules!3967) input!3517))))))

(assert (=> b!4211337 d!1241169))

(declare-fun b!4211440 () Bool)

(declare-fun res!1730052 () Bool)

(declare-fun e!2614368 () Bool)

(assert (=> b!4211440 (=> (not res!1730052) (not e!2614368))))

(declare-fun lt!1499169 () Option!9938)

(declare-fun get!15059 (Option!9938) tuple2!44042)

(assert (=> b!4211440 (= res!1730052 (= (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499169)))) (originalCharacters!8132 (_1!25155 (get!15059 lt!1499169)))))))

(declare-fun b!4211441 () Bool)

(declare-fun e!2614367 () Option!9938)

(declare-fun call!292972 () Option!9938)

(assert (=> b!4211441 (= e!2614367 call!292972)))

(declare-fun d!1241171 () Bool)

(declare-fun e!2614369 () Bool)

(assert (=> d!1241171 e!2614369))

(declare-fun res!1730054 () Bool)

(assert (=> d!1241171 (=> res!1730054 e!2614369)))

(assert (=> d!1241171 (= res!1730054 (isEmpty!27419 lt!1499169))))

(assert (=> d!1241171 (= lt!1499169 e!2614367)))

(declare-fun c!717417 () Bool)

(assert (=> d!1241171 (= c!717417 (and ((_ is Cons!46303) (t!348026 rules!3967)) ((_ is Nil!46303) (t!348026 (t!348026 rules!3967)))))))

(declare-fun lt!1499172 () Unit!65423)

(declare-fun lt!1499171 () Unit!65423)

(assert (=> d!1241171 (= lt!1499172 lt!1499171)))

(assert (=> d!1241171 (isPrefix!4609 input!3517 input!3517)))

(assert (=> d!1241171 (= lt!1499171 (lemmaIsPrefixRefl!3026 input!3517 input!3517))))

(assert (=> d!1241171 (rulesValidInductive!2876 thiss!26544 (t!348026 rules!3967))))

(assert (=> d!1241171 (= (maxPrefix!4385 thiss!26544 (t!348026 rules!3967) input!3517) lt!1499169)))

(declare-fun b!4211442 () Bool)

(assert (=> b!4211442 (= e!2614369 e!2614368)))

(declare-fun res!1730056 () Bool)

(assert (=> b!4211442 (=> (not res!1730056) (not e!2614368))))

(declare-fun isDefined!7386 (Option!9938) Bool)

(assert (=> b!4211442 (= res!1730056 (isDefined!7386 lt!1499169))))

(declare-fun b!4211443 () Bool)

(declare-fun res!1730053 () Bool)

(assert (=> b!4211443 (=> (not res!1730053) (not e!2614368))))

(assert (=> b!4211443 (= res!1730053 (< (size!34013 (_2!25155 (get!15059 lt!1499169))) (size!34013 input!3517)))))

(declare-fun b!4211444 () Bool)

(declare-fun lt!1499168 () Option!9938)

(declare-fun lt!1499170 () Option!9938)

(assert (=> b!4211444 (= e!2614367 (ite (and ((_ is None!9937) lt!1499168) ((_ is None!9937) lt!1499170)) None!9937 (ite ((_ is None!9937) lt!1499170) lt!1499168 (ite ((_ is None!9937) lt!1499168) lt!1499170 (ite (>= (size!34011 (_1!25155 (v!40807 lt!1499168))) (size!34011 (_1!25155 (v!40807 lt!1499170)))) lt!1499168 lt!1499170)))))))

(assert (=> b!4211444 (= lt!1499168 call!292972)))

(assert (=> b!4211444 (= lt!1499170 (maxPrefix!4385 thiss!26544 (t!348026 (t!348026 rules!3967)) input!3517))))

(declare-fun b!4211445 () Bool)

(declare-fun res!1730057 () Bool)

(assert (=> b!4211445 (=> (not res!1730057) (not e!2614368))))

(declare-fun apply!10685 (TokenValueInjection!15388 BalanceConc!27516) TokenValue!7980)

(declare-fun seqFromList!5745 (List!46426) BalanceConc!27516)

(assert (=> b!4211445 (= res!1730057 (= (value!241404 (_1!25155 (get!15059 lt!1499169))) (apply!10685 (transformation!7750 (rule!10864 (_1!25155 (get!15059 lt!1499169)))) (seqFromList!5745 (originalCharacters!8132 (_1!25155 (get!15059 lt!1499169)))))))))

(declare-fun bm!292967 () Bool)

(assert (=> bm!292967 (= call!292972 (maxPrefixOneRule!3340 thiss!26544 (h!51723 (t!348026 rules!3967)) input!3517))))

(declare-fun b!4211446 () Bool)

(declare-fun res!1730055 () Bool)

(assert (=> b!4211446 (=> (not res!1730055) (not e!2614368))))

(declare-fun matchR!6364 (Regex!12655 List!46426) Bool)

(assert (=> b!4211446 (= res!1730055 (matchR!6364 (regex!7750 (rule!10864 (_1!25155 (get!15059 lt!1499169)))) (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499169))))))))

(declare-fun b!4211447 () Bool)

(assert (=> b!4211447 (= e!2614368 (contains!9571 (t!348026 rules!3967) (rule!10864 (_1!25155 (get!15059 lt!1499169)))))))

(declare-fun b!4211448 () Bool)

(declare-fun res!1730051 () Bool)

(assert (=> b!4211448 (=> (not res!1730051) (not e!2614368))))

(assert (=> b!4211448 (= res!1730051 (= (++!11824 (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499169)))) (_2!25155 (get!15059 lt!1499169))) input!3517))))

(assert (= (and d!1241171 c!717417) b!4211441))

(assert (= (and d!1241171 (not c!717417)) b!4211444))

(assert (= (or b!4211441 b!4211444) bm!292967))

(assert (= (and d!1241171 (not res!1730054)) b!4211442))

(assert (= (and b!4211442 res!1730056) b!4211440))

(assert (= (and b!4211440 res!1730052) b!4211443))

(assert (= (and b!4211443 res!1730053) b!4211448))

(assert (= (and b!4211448 res!1730051) b!4211445))

(assert (= (and b!4211445 res!1730057) b!4211446))

(assert (= (and b!4211446 res!1730055) b!4211447))

(declare-fun m!4799281 () Bool)

(assert (=> b!4211444 m!4799281))

(declare-fun m!4799283 () Bool)

(assert (=> b!4211442 m!4799283))

(declare-fun m!4799285 () Bool)

(assert (=> b!4211445 m!4799285))

(declare-fun m!4799287 () Bool)

(assert (=> b!4211445 m!4799287))

(assert (=> b!4211445 m!4799287))

(declare-fun m!4799289 () Bool)

(assert (=> b!4211445 m!4799289))

(assert (=> b!4211440 m!4799285))

(declare-fun m!4799291 () Bool)

(assert (=> b!4211440 m!4799291))

(assert (=> b!4211440 m!4799291))

(declare-fun m!4799293 () Bool)

(assert (=> b!4211440 m!4799293))

(assert (=> b!4211446 m!4799285))

(assert (=> b!4211446 m!4799291))

(assert (=> b!4211446 m!4799291))

(assert (=> b!4211446 m!4799293))

(assert (=> b!4211446 m!4799293))

(declare-fun m!4799295 () Bool)

(assert (=> b!4211446 m!4799295))

(assert (=> b!4211443 m!4799285))

(declare-fun m!4799297 () Bool)

(assert (=> b!4211443 m!4799297))

(assert (=> b!4211443 m!4799203))

(assert (=> b!4211448 m!4799285))

(assert (=> b!4211448 m!4799291))

(assert (=> b!4211448 m!4799291))

(assert (=> b!4211448 m!4799293))

(assert (=> b!4211448 m!4799293))

(declare-fun m!4799299 () Bool)

(assert (=> b!4211448 m!4799299))

(assert (=> b!4211447 m!4799285))

(declare-fun m!4799301 () Bool)

(assert (=> b!4211447 m!4799301))

(declare-fun m!4799303 () Bool)

(assert (=> d!1241171 m!4799303))

(assert (=> d!1241171 m!4799129))

(assert (=> d!1241171 m!4799131))

(assert (=> d!1241171 m!4799165))

(declare-fun m!4799305 () Bool)

(assert (=> bm!292967 m!4799305))

(assert (=> b!4211337 d!1241171))

(declare-fun d!1241175 () Bool)

(assert (=> d!1241175 (= (inv!60916 (tag!8614 (rule!10864 t!8364))) (= (mod (str.len (value!241403 (tag!8614 (rule!10864 t!8364)))) 2) 0))))

(assert (=> b!4211336 d!1241175))

(declare-fun d!1241177 () Bool)

(declare-fun res!1730060 () Bool)

(declare-fun e!2614372 () Bool)

(assert (=> d!1241177 (=> (not res!1730060) (not e!2614372))))

(declare-fun semiInverseModEq!3366 (Int Int) Bool)

(assert (=> d!1241177 (= res!1730060 (semiInverseModEq!3366 (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (toValue!10470 (transformation!7750 (rule!10864 t!8364)))))))

(assert (=> d!1241177 (= (inv!60920 (transformation!7750 (rule!10864 t!8364))) e!2614372)))

(declare-fun b!4211451 () Bool)

(declare-fun equivClasses!3265 (Int Int) Bool)

(assert (=> b!4211451 (= e!2614372 (equivClasses!3265 (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (toValue!10470 (transformation!7750 (rule!10864 t!8364)))))))

(assert (= (and d!1241177 res!1730060) b!4211451))

(declare-fun m!4799307 () Bool)

(assert (=> d!1241177 m!4799307))

(declare-fun m!4799309 () Bool)

(assert (=> b!4211451 m!4799309))

(assert (=> b!4211336 d!1241177))

(declare-fun d!1241179 () Bool)

(declare-fun res!1730065 () Bool)

(declare-fun e!2614375 () Bool)

(assert (=> d!1241179 (=> (not res!1730065) (not e!2614375))))

(declare-fun isEmpty!27421 (List!46426) Bool)

(assert (=> d!1241179 (= res!1730065 (not (isEmpty!27421 (originalCharacters!8132 tBis!41))))))

(assert (=> d!1241179 (= (inv!60919 tBis!41) e!2614375)))

(declare-fun b!4211456 () Bool)

(declare-fun res!1730066 () Bool)

(assert (=> b!4211456 (=> (not res!1730066) (not e!2614375))))

(declare-fun dynLambda!19970 (Int TokenValue!7980) BalanceConc!27516)

(assert (=> b!4211456 (= res!1730066 (= (originalCharacters!8132 tBis!41) (list!16743 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (value!241404 tBis!41)))))))

(declare-fun b!4211457 () Bool)

(assert (=> b!4211457 (= e!2614375 (= (size!34011 tBis!41) (size!34013 (originalCharacters!8132 tBis!41))))))

(assert (= (and d!1241179 res!1730065) b!4211456))

(assert (= (and b!4211456 res!1730066) b!4211457))

(declare-fun b_lambda!124051 () Bool)

(assert (=> (not b_lambda!124051) (not b!4211456)))

(declare-fun t!348044 () Bool)

(declare-fun tb!252815 () Bool)

(assert (=> (and b!4211334 (= (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41)))) t!348044) tb!252815))

(declare-fun b!4211462 () Bool)

(declare-fun e!2614378 () Bool)

(declare-fun tp!1287765 () Bool)

(declare-fun inv!60923 (Conc!13961) Bool)

(assert (=> b!4211462 (= e!2614378 (and (inv!60923 (c!717407 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (value!241404 tBis!41)))) tp!1287765))))

(declare-fun result!308114 () Bool)

(declare-fun inv!60924 (BalanceConc!27516) Bool)

(assert (=> tb!252815 (= result!308114 (and (inv!60924 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (value!241404 tBis!41))) e!2614378))))

(assert (= tb!252815 b!4211462))

(declare-fun m!4799311 () Bool)

(assert (=> b!4211462 m!4799311))

(declare-fun m!4799313 () Bool)

(assert (=> tb!252815 m!4799313))

(assert (=> b!4211456 t!348044))

(declare-fun b_and!331469 () Bool)

(assert (= b_and!331439 (and (=> t!348044 result!308114) b_and!331469)))

(declare-fun tb!252817 () Bool)

(declare-fun t!348046 () Bool)

(assert (=> (and b!4211311 (= (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41)))) t!348046) tb!252817))

(declare-fun result!308118 () Bool)

(assert (= result!308118 result!308114))

(assert (=> b!4211456 t!348046))

(declare-fun b_and!331471 () Bool)

(assert (= b_and!331443 (and (=> t!348046 result!308118) b_and!331471)))

(declare-fun tb!252819 () Bool)

(declare-fun t!348048 () Bool)

(assert (=> (and b!4211314 (= (toChars!10329 (transformation!7750 rBis!178)) (toChars!10329 (transformation!7750 (rule!10864 tBis!41)))) t!348048) tb!252819))

(declare-fun result!308120 () Bool)

(assert (= result!308120 result!308114))

(assert (=> b!4211456 t!348048))

(declare-fun b_and!331473 () Bool)

(assert (= b_and!331447 (and (=> t!348048 result!308120) b_and!331473)))

(declare-fun t!348050 () Bool)

(declare-fun tb!252821 () Bool)

(assert (=> (and b!4211319 (= (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41)))) t!348050) tb!252821))

(declare-fun result!308122 () Bool)

(assert (= result!308122 result!308114))

(assert (=> b!4211456 t!348050))

(declare-fun b_and!331475 () Bool)

(assert (= b_and!331451 (and (=> t!348050 result!308122) b_and!331475)))

(declare-fun m!4799315 () Bool)

(assert (=> d!1241179 m!4799315))

(declare-fun m!4799317 () Bool)

(assert (=> b!4211456 m!4799317))

(assert (=> b!4211456 m!4799317))

(declare-fun m!4799319 () Bool)

(assert (=> b!4211456 m!4799319))

(declare-fun m!4799321 () Bool)

(assert (=> b!4211457 m!4799321))

(assert (=> start!402462 d!1241179))

(declare-fun d!1241181 () Bool)

(declare-fun res!1730067 () Bool)

(declare-fun e!2614379 () Bool)

(assert (=> d!1241181 (=> (not res!1730067) (not e!2614379))))

(assert (=> d!1241181 (= res!1730067 (not (isEmpty!27421 (originalCharacters!8132 t!8364))))))

(assert (=> d!1241181 (= (inv!60919 t!8364) e!2614379)))

(declare-fun b!4211463 () Bool)

(declare-fun res!1730068 () Bool)

(assert (=> b!4211463 (=> (not res!1730068) (not e!2614379))))

(assert (=> b!4211463 (= res!1730068 (= (originalCharacters!8132 t!8364) (list!16743 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (value!241404 t!8364)))))))

(declare-fun b!4211464 () Bool)

(assert (=> b!4211464 (= e!2614379 (= (size!34011 t!8364) (size!34013 (originalCharacters!8132 t!8364))))))

(assert (= (and d!1241181 res!1730067) b!4211463))

(assert (= (and b!4211463 res!1730068) b!4211464))

(declare-fun b_lambda!124053 () Bool)

(assert (=> (not b_lambda!124053) (not b!4211463)))

(declare-fun t!348052 () Bool)

(declare-fun tb!252823 () Bool)

(assert (=> (and b!4211334 (= (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toChars!10329 (transformation!7750 (rule!10864 t!8364)))) t!348052) tb!252823))

(declare-fun b!4211465 () Bool)

(declare-fun e!2614380 () Bool)

(declare-fun tp!1287766 () Bool)

(assert (=> b!4211465 (= e!2614380 (and (inv!60923 (c!717407 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (value!241404 t!8364)))) tp!1287766))))

(declare-fun result!308124 () Bool)

(assert (=> tb!252823 (= result!308124 (and (inv!60924 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (value!241404 t!8364))) e!2614380))))

(assert (= tb!252823 b!4211465))

(declare-fun m!4799323 () Bool)

(assert (=> b!4211465 m!4799323))

(declare-fun m!4799325 () Bool)

(assert (=> tb!252823 m!4799325))

(assert (=> b!4211463 t!348052))

(declare-fun b_and!331477 () Bool)

(assert (= b_and!331469 (and (=> t!348052 result!308124) b_and!331477)))

(declare-fun t!348054 () Bool)

(declare-fun tb!252825 () Bool)

(assert (=> (and b!4211311 (= (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (toChars!10329 (transformation!7750 (rule!10864 t!8364)))) t!348054) tb!252825))

(declare-fun result!308126 () Bool)

(assert (= result!308126 result!308124))

(assert (=> b!4211463 t!348054))

(declare-fun b_and!331479 () Bool)

(assert (= b_and!331471 (and (=> t!348054 result!308126) b_and!331479)))

(declare-fun t!348056 () Bool)

(declare-fun tb!252827 () Bool)

(assert (=> (and b!4211314 (= (toChars!10329 (transformation!7750 rBis!178)) (toChars!10329 (transformation!7750 (rule!10864 t!8364)))) t!348056) tb!252827))

(declare-fun result!308128 () Bool)

(assert (= result!308128 result!308124))

(assert (=> b!4211463 t!348056))

(declare-fun b_and!331481 () Bool)

(assert (= b_and!331473 (and (=> t!348056 result!308128) b_and!331481)))

(declare-fun t!348058 () Bool)

(declare-fun tb!252829 () Bool)

(assert (=> (and b!4211319 (= (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (toChars!10329 (transformation!7750 (rule!10864 t!8364)))) t!348058) tb!252829))

(declare-fun result!308130 () Bool)

(assert (= result!308130 result!308124))

(assert (=> b!4211463 t!348058))

(declare-fun b_and!331483 () Bool)

(assert (= b_and!331475 (and (=> t!348058 result!308130) b_and!331483)))

(declare-fun m!4799327 () Bool)

(assert (=> d!1241181 m!4799327))

(declare-fun m!4799329 () Bool)

(assert (=> b!4211463 m!4799329))

(assert (=> b!4211463 m!4799329))

(declare-fun m!4799331 () Bool)

(assert (=> b!4211463 m!4799331))

(declare-fun m!4799333 () Bool)

(assert (=> b!4211464 m!4799333))

(assert (=> start!402462 d!1241181))

(declare-fun d!1241183 () Bool)

(assert (=> d!1241183 (= (isEmpty!27418 (t!348026 rules!3967)) ((_ is Nil!46303) (t!348026 rules!3967)))))

(assert (=> b!4211338 d!1241183))

(declare-fun b!4211476 () Bool)

(declare-fun e!2614387 () Bool)

(declare-fun inv!17 (TokenValue!7980) Bool)

(assert (=> b!4211476 (= e!2614387 (inv!17 (value!241404 t!8364)))))

(declare-fun d!1241185 () Bool)

(declare-fun c!717422 () Bool)

(assert (=> d!1241185 (= c!717422 ((_ is IntegerValue!23940) (value!241404 t!8364)))))

(declare-fun e!2614388 () Bool)

(assert (=> d!1241185 (= (inv!21 (value!241404 t!8364)) e!2614388)))

(declare-fun b!4211477 () Bool)

(declare-fun inv!16 (TokenValue!7980) Bool)

(assert (=> b!4211477 (= e!2614388 (inv!16 (value!241404 t!8364)))))

(declare-fun b!4211478 () Bool)

(assert (=> b!4211478 (= e!2614388 e!2614387)))

(declare-fun c!717423 () Bool)

(assert (=> b!4211478 (= c!717423 ((_ is IntegerValue!23941) (value!241404 t!8364)))))

(declare-fun b!4211479 () Bool)

(declare-fun res!1730071 () Bool)

(declare-fun e!2614389 () Bool)

(assert (=> b!4211479 (=> res!1730071 e!2614389)))

(assert (=> b!4211479 (= res!1730071 (not ((_ is IntegerValue!23942) (value!241404 t!8364))))))

(assert (=> b!4211479 (= e!2614387 e!2614389)))

(declare-fun b!4211480 () Bool)

(declare-fun inv!15 (TokenValue!7980) Bool)

(assert (=> b!4211480 (= e!2614389 (inv!15 (value!241404 t!8364)))))

(assert (= (and d!1241185 c!717422) b!4211477))

(assert (= (and d!1241185 (not c!717422)) b!4211478))

(assert (= (and b!4211478 c!717423) b!4211476))

(assert (= (and b!4211478 (not c!717423)) b!4211479))

(assert (= (and b!4211479 (not res!1730071)) b!4211480))

(declare-fun m!4799335 () Bool)

(assert (=> b!4211476 m!4799335))

(declare-fun m!4799337 () Bool)

(assert (=> b!4211477 m!4799337))

(declare-fun m!4799339 () Bool)

(assert (=> b!4211480 m!4799339))

(assert (=> b!4211317 d!1241185))

(declare-fun d!1241187 () Bool)

(assert (=> d!1241187 true))

(declare-fun lt!1499199 () Bool)

(declare-fun lambda!129787 () Int)

(declare-fun forall!8494 (List!46427 Int) Bool)

(assert (=> d!1241187 (= lt!1499199 (forall!8494 (t!348026 rules!3967) lambda!129787))))

(declare-fun e!2614425 () Bool)

(assert (=> d!1241187 (= lt!1499199 e!2614425)))

(declare-fun res!1730122 () Bool)

(assert (=> d!1241187 (=> res!1730122 e!2614425)))

(assert (=> d!1241187 (= res!1730122 (not ((_ is Cons!46303) (t!348026 rules!3967))))))

(assert (=> d!1241187 (= (rulesValidInductive!2876 thiss!26544 (t!348026 rules!3967)) lt!1499199)))

(declare-fun b!4211541 () Bool)

(declare-fun e!2614424 () Bool)

(assert (=> b!4211541 (= e!2614425 e!2614424)))

(declare-fun res!1730123 () Bool)

(assert (=> b!4211541 (=> (not res!1730123) (not e!2614424))))

(assert (=> b!4211541 (= res!1730123 (ruleValid!3462 thiss!26544 (h!51723 (t!348026 rules!3967))))))

(declare-fun b!4211542 () Bool)

(assert (=> b!4211542 (= e!2614424 (rulesValidInductive!2876 thiss!26544 (t!348026 (t!348026 rules!3967))))))

(assert (= (and d!1241187 (not res!1730122)) b!4211541))

(assert (= (and b!4211541 res!1730123) b!4211542))

(declare-fun m!4799429 () Bool)

(assert (=> d!1241187 m!4799429))

(declare-fun m!4799431 () Bool)

(assert (=> b!4211541 m!4799431))

(declare-fun m!4799433 () Bool)

(assert (=> b!4211542 m!4799433))

(assert (=> b!4211316 d!1241187))

(declare-fun d!1241209 () Bool)

(declare-fun lt!1499205 () Bool)

(declare-fun content!7248 (List!46427) (InoxSet Rule!15300))

(assert (=> d!1241209 (= lt!1499205 (select (content!7248 rules!3967) rBis!178))))

(declare-fun e!2614438 () Bool)

(assert (=> d!1241209 (= lt!1499205 e!2614438)))

(declare-fun res!1730132 () Bool)

(assert (=> d!1241209 (=> (not res!1730132) (not e!2614438))))

(assert (=> d!1241209 (= res!1730132 ((_ is Cons!46303) rules!3967))))

(assert (=> d!1241209 (= (contains!9571 rules!3967 rBis!178) lt!1499205)))

(declare-fun b!4211560 () Bool)

(declare-fun e!2614437 () Bool)

(assert (=> b!4211560 (= e!2614438 e!2614437)))

(declare-fun res!1730131 () Bool)

(assert (=> b!4211560 (=> res!1730131 e!2614437)))

(assert (=> b!4211560 (= res!1730131 (= (h!51723 rules!3967) rBis!178))))

(declare-fun b!4211561 () Bool)

(assert (=> b!4211561 (= e!2614437 (contains!9571 (t!348026 rules!3967) rBis!178))))

(assert (= (and d!1241209 res!1730132) b!4211560))

(assert (= (and b!4211560 (not res!1730131)) b!4211561))

(declare-fun m!4799439 () Bool)

(assert (=> d!1241209 m!4799439))

(declare-fun m!4799441 () Bool)

(assert (=> d!1241209 m!4799441))

(declare-fun m!4799445 () Bool)

(assert (=> b!4211561 m!4799445))

(assert (=> b!4211327 d!1241209))

(declare-fun d!1241213 () Bool)

(declare-fun e!2614506 () Bool)

(assert (=> d!1241213 e!2614506))

(declare-fun res!1730184 () Bool)

(assert (=> d!1241213 (=> res!1730184 e!2614506)))

(declare-fun lt!1499231 () Option!9938)

(assert (=> d!1241213 (= res!1730184 (isEmpty!27419 lt!1499231))))

(declare-fun e!2614505 () Option!9938)

(assert (=> d!1241213 (= lt!1499231 e!2614505)))

(declare-fun c!717443 () Bool)

(declare-datatypes ((tuple2!44046 0))(
  ( (tuple2!44047 (_1!25157 List!46426) (_2!25157 List!46426)) )
))
(declare-fun lt!1499230 () tuple2!44046)

(assert (=> d!1241213 (= c!717443 (isEmpty!27421 (_1!25157 lt!1499230)))))

(declare-fun findLongestMatch!1558 (Regex!12655 List!46426) tuple2!44046)

(assert (=> d!1241213 (= lt!1499230 (findLongestMatch!1558 (regex!7750 rBis!178) input!3517))))

(assert (=> d!1241213 (ruleValid!3462 thiss!26544 rBis!178)))

(assert (=> d!1241213 (= (maxPrefixOneRule!3340 thiss!26544 rBis!178 input!3517) lt!1499231)))

(declare-fun b!4211681 () Bool)

(declare-fun res!1730186 () Bool)

(declare-fun e!2614507 () Bool)

(assert (=> b!4211681 (=> (not res!1730186) (not e!2614507))))

(assert (=> b!4211681 (= res!1730186 (= (value!241404 (_1!25155 (get!15059 lt!1499231))) (apply!10685 (transformation!7750 (rule!10864 (_1!25155 (get!15059 lt!1499231)))) (seqFromList!5745 (originalCharacters!8132 (_1!25155 (get!15059 lt!1499231)))))))))

(declare-fun b!4211682 () Bool)

(assert (=> b!4211682 (= e!2614507 (= (size!34011 (_1!25155 (get!15059 lt!1499231))) (size!34013 (originalCharacters!8132 (_1!25155 (get!15059 lt!1499231))))))))

(declare-fun b!4211683 () Bool)

(assert (=> b!4211683 (= e!2614505 None!9937)))

(declare-fun b!4211684 () Bool)

(declare-fun size!34015 (BalanceConc!27516) Int)

(assert (=> b!4211684 (= e!2614505 (Some!9937 (tuple2!44043 (Token!14203 (apply!10685 (transformation!7750 rBis!178) (seqFromList!5745 (_1!25157 lt!1499230))) rBis!178 (size!34015 (seqFromList!5745 (_1!25157 lt!1499230))) (_1!25157 lt!1499230)) (_2!25157 lt!1499230))))))

(declare-fun lt!1499232 () Unit!65423)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1618 (Regex!12655 List!46426) Unit!65423)

(assert (=> b!4211684 (= lt!1499232 (longestMatchIsAcceptedByMatchOrIsEmpty!1618 (regex!7750 rBis!178) input!3517))))

(declare-fun res!1730185 () Bool)

(declare-fun findLongestMatchInner!1645 (Regex!12655 List!46426 Int List!46426 List!46426 Int) tuple2!44046)

(assert (=> b!4211684 (= res!1730185 (isEmpty!27421 (_1!25157 (findLongestMatchInner!1645 (regex!7750 rBis!178) Nil!46302 (size!34013 Nil!46302) input!3517 input!3517 (size!34013 input!3517)))))))

(declare-fun e!2614508 () Bool)

(assert (=> b!4211684 (=> res!1730185 e!2614508)))

(assert (=> b!4211684 e!2614508))

(declare-fun lt!1499234 () Unit!65423)

(assert (=> b!4211684 (= lt!1499234 lt!1499232)))

(declare-fun lt!1499233 () Unit!65423)

(declare-fun lemmaSemiInverse!2486 (TokenValueInjection!15388 BalanceConc!27516) Unit!65423)

(assert (=> b!4211684 (= lt!1499233 (lemmaSemiInverse!2486 (transformation!7750 rBis!178) (seqFromList!5745 (_1!25157 lt!1499230))))))

(declare-fun b!4211685 () Bool)

(declare-fun res!1730188 () Bool)

(assert (=> b!4211685 (=> (not res!1730188) (not e!2614507))))

(assert (=> b!4211685 (= res!1730188 (= (rule!10864 (_1!25155 (get!15059 lt!1499231))) rBis!178))))

(declare-fun b!4211686 () Bool)

(assert (=> b!4211686 (= e!2614508 (matchR!6364 (regex!7750 rBis!178) (_1!25157 (findLongestMatchInner!1645 (regex!7750 rBis!178) Nil!46302 (size!34013 Nil!46302) input!3517 input!3517 (size!34013 input!3517)))))))

(declare-fun b!4211687 () Bool)

(assert (=> b!4211687 (= e!2614506 e!2614507)))

(declare-fun res!1730182 () Bool)

(assert (=> b!4211687 (=> (not res!1730182) (not e!2614507))))

(assert (=> b!4211687 (= res!1730182 (matchR!6364 (regex!7750 rBis!178) (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499231))))))))

(declare-fun b!4211688 () Bool)

(declare-fun res!1730187 () Bool)

(assert (=> b!4211688 (=> (not res!1730187) (not e!2614507))))

(assert (=> b!4211688 (= res!1730187 (< (size!34013 (_2!25155 (get!15059 lt!1499231))) (size!34013 input!3517)))))

(declare-fun b!4211689 () Bool)

(declare-fun res!1730183 () Bool)

(assert (=> b!4211689 (=> (not res!1730183) (not e!2614507))))

(assert (=> b!4211689 (= res!1730183 (= (++!11824 (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499231)))) (_2!25155 (get!15059 lt!1499231))) input!3517))))

(assert (= (and d!1241213 c!717443) b!4211683))

(assert (= (and d!1241213 (not c!717443)) b!4211684))

(assert (= (and b!4211684 (not res!1730185)) b!4211686))

(assert (= (and d!1241213 (not res!1730184)) b!4211687))

(assert (= (and b!4211687 res!1730182) b!4211689))

(assert (= (and b!4211689 res!1730183) b!4211688))

(assert (= (and b!4211688 res!1730187) b!4211685))

(assert (= (and b!4211685 res!1730188) b!4211681))

(assert (= (and b!4211681 res!1730186) b!4211682))

(declare-fun m!4799559 () Bool)

(assert (=> b!4211681 m!4799559))

(declare-fun m!4799561 () Bool)

(assert (=> b!4211681 m!4799561))

(assert (=> b!4211681 m!4799561))

(declare-fun m!4799563 () Bool)

(assert (=> b!4211681 m!4799563))

(declare-fun m!4799565 () Bool)

(assert (=> b!4211686 m!4799565))

(assert (=> b!4211686 m!4799203))

(assert (=> b!4211686 m!4799565))

(assert (=> b!4211686 m!4799203))

(declare-fun m!4799567 () Bool)

(assert (=> b!4211686 m!4799567))

(declare-fun m!4799569 () Bool)

(assert (=> b!4211686 m!4799569))

(assert (=> b!4211682 m!4799559))

(declare-fun m!4799571 () Bool)

(assert (=> b!4211682 m!4799571))

(assert (=> b!4211685 m!4799559))

(assert (=> b!4211687 m!4799559))

(declare-fun m!4799573 () Bool)

(assert (=> b!4211687 m!4799573))

(assert (=> b!4211687 m!4799573))

(declare-fun m!4799575 () Bool)

(assert (=> b!4211687 m!4799575))

(assert (=> b!4211687 m!4799575))

(declare-fun m!4799577 () Bool)

(assert (=> b!4211687 m!4799577))

(assert (=> b!4211689 m!4799559))

(assert (=> b!4211689 m!4799573))

(assert (=> b!4211689 m!4799573))

(assert (=> b!4211689 m!4799575))

(assert (=> b!4211689 m!4799575))

(declare-fun m!4799579 () Bool)

(assert (=> b!4211689 m!4799579))

(declare-fun m!4799581 () Bool)

(assert (=> d!1241213 m!4799581))

(declare-fun m!4799583 () Bool)

(assert (=> d!1241213 m!4799583))

(declare-fun m!4799585 () Bool)

(assert (=> d!1241213 m!4799585))

(assert (=> d!1241213 m!4799181))

(declare-fun m!4799587 () Bool)

(assert (=> b!4211684 m!4799587))

(declare-fun m!4799589 () Bool)

(assert (=> b!4211684 m!4799589))

(assert (=> b!4211684 m!4799565))

(assert (=> b!4211684 m!4799203))

(assert (=> b!4211684 m!4799567))

(declare-fun m!4799591 () Bool)

(assert (=> b!4211684 m!4799591))

(declare-fun m!4799593 () Bool)

(assert (=> b!4211684 m!4799593))

(assert (=> b!4211684 m!4799591))

(declare-fun m!4799595 () Bool)

(assert (=> b!4211684 m!4799595))

(assert (=> b!4211684 m!4799591))

(assert (=> b!4211684 m!4799203))

(assert (=> b!4211684 m!4799565))

(assert (=> b!4211684 m!4799591))

(declare-fun m!4799597 () Bool)

(assert (=> b!4211684 m!4799597))

(assert (=> b!4211688 m!4799559))

(declare-fun m!4799599 () Bool)

(assert (=> b!4211688 m!4799599))

(assert (=> b!4211688 m!4799203))

(assert (=> b!4211318 d!1241213))

(declare-fun b!4211690 () Bool)

(declare-fun e!2614509 () Bool)

(declare-fun e!2614510 () Bool)

(assert (=> b!4211690 (= e!2614509 e!2614510)))

(declare-fun res!1730189 () Bool)

(assert (=> b!4211690 (=> (not res!1730189) (not e!2614510))))

(assert (=> b!4211690 (= res!1730189 (not ((_ is Nil!46302) input!3517)))))

(declare-fun b!4211692 () Bool)

(assert (=> b!4211692 (= e!2614510 (isPrefix!4609 (tail!6780 input!3517) (tail!6780 input!3517)))))

(declare-fun b!4211693 () Bool)

(declare-fun e!2614511 () Bool)

(assert (=> b!4211693 (= e!2614511 (>= (size!34013 input!3517) (size!34013 input!3517)))))

(declare-fun d!1241243 () Bool)

(assert (=> d!1241243 e!2614511))

(declare-fun res!1730190 () Bool)

(assert (=> d!1241243 (=> res!1730190 e!2614511)))

(declare-fun lt!1499235 () Bool)

(assert (=> d!1241243 (= res!1730190 (not lt!1499235))))

(assert (=> d!1241243 (= lt!1499235 e!2614509)))

(declare-fun res!1730192 () Bool)

(assert (=> d!1241243 (=> res!1730192 e!2614509)))

(assert (=> d!1241243 (= res!1730192 ((_ is Nil!46302) input!3517))))

(assert (=> d!1241243 (= (isPrefix!4609 input!3517 input!3517) lt!1499235)))

(declare-fun b!4211691 () Bool)

(declare-fun res!1730191 () Bool)

(assert (=> b!4211691 (=> (not res!1730191) (not e!2614510))))

(assert (=> b!4211691 (= res!1730191 (= (head!8933 input!3517) (head!8933 input!3517)))))

(assert (= (and d!1241243 (not res!1730192)) b!4211690))

(assert (= (and b!4211690 res!1730189) b!4211691))

(assert (= (and b!4211691 res!1730191) b!4211692))

(assert (= (and d!1241243 (not res!1730190)) b!4211693))

(assert (=> b!4211692 m!4799195))

(assert (=> b!4211692 m!4799195))

(assert (=> b!4211692 m!4799195))

(assert (=> b!4211692 m!4799195))

(declare-fun m!4799601 () Bool)

(assert (=> b!4211692 m!4799601))

(assert (=> b!4211693 m!4799203))

(assert (=> b!4211693 m!4799203))

(assert (=> b!4211691 m!4799209))

(assert (=> b!4211691 m!4799209))

(assert (=> b!4211318 d!1241243))

(declare-fun d!1241245 () Bool)

(assert (=> d!1241245 (isPrefix!4609 input!3517 input!3517)))

(declare-fun lt!1499238 () Unit!65423)

(declare-fun choose!25802 (List!46426 List!46426) Unit!65423)

(assert (=> d!1241245 (= lt!1499238 (choose!25802 input!3517 input!3517))))

(assert (=> d!1241245 (= (lemmaIsPrefixRefl!3026 input!3517 input!3517) lt!1499238)))

(declare-fun bs!597452 () Bool)

(assert (= bs!597452 d!1241245))

(assert (=> bs!597452 m!4799129))

(declare-fun m!4799603 () Bool)

(assert (=> bs!597452 m!4799603))

(assert (=> b!4211318 d!1241245))

(declare-fun d!1241247 () Bool)

(declare-fun res!1730195 () Bool)

(declare-fun e!2614514 () Bool)

(assert (=> d!1241247 (=> (not res!1730195) (not e!2614514))))

(declare-fun rulesValid!3034 (LexerInterface!7345 List!46427) Bool)

(assert (=> d!1241247 (= res!1730195 (rulesValid!3034 thiss!26544 rules!3967))))

(assert (=> d!1241247 (= (rulesInvariant!6556 thiss!26544 rules!3967) e!2614514)))

(declare-fun b!4211696 () Bool)

(declare-datatypes ((List!46429 0))(
  ( (Nil!46305) (Cons!46305 (h!51725 String!53770) (t!348068 List!46429)) )
))
(declare-fun noDuplicateTag!3195 (LexerInterface!7345 List!46427 List!46429) Bool)

(assert (=> b!4211696 (= e!2614514 (noDuplicateTag!3195 thiss!26544 rules!3967 Nil!46305))))

(assert (= (and d!1241247 res!1730195) b!4211696))

(declare-fun m!4799605 () Bool)

(assert (=> d!1241247 m!4799605))

(declare-fun m!4799607 () Bool)

(assert (=> b!4211696 m!4799607))

(assert (=> b!4211339 d!1241247))

(declare-fun d!1241249 () Bool)

(declare-fun e!2614516 () Bool)

(assert (=> d!1241249 e!2614516))

(declare-fun res!1730198 () Bool)

(assert (=> d!1241249 (=> res!1730198 e!2614516)))

(declare-fun lt!1499240 () Option!9938)

(assert (=> d!1241249 (= res!1730198 (isEmpty!27419 lt!1499240))))

(declare-fun e!2614515 () Option!9938)

(assert (=> d!1241249 (= lt!1499240 e!2614515)))

(declare-fun c!717444 () Bool)

(declare-fun lt!1499239 () tuple2!44046)

(assert (=> d!1241249 (= c!717444 (isEmpty!27421 (_1!25157 lt!1499239)))))

(assert (=> d!1241249 (= lt!1499239 (findLongestMatch!1558 (regex!7750 (h!51723 rules!3967)) input!3517))))

(assert (=> d!1241249 (ruleValid!3462 thiss!26544 (h!51723 rules!3967))))

(assert (=> d!1241249 (= (maxPrefixOneRule!3340 thiss!26544 (h!51723 rules!3967) input!3517) lt!1499240)))

(declare-fun b!4211697 () Bool)

(declare-fun res!1730200 () Bool)

(declare-fun e!2614517 () Bool)

(assert (=> b!4211697 (=> (not res!1730200) (not e!2614517))))

(assert (=> b!4211697 (= res!1730200 (= (value!241404 (_1!25155 (get!15059 lt!1499240))) (apply!10685 (transformation!7750 (rule!10864 (_1!25155 (get!15059 lt!1499240)))) (seqFromList!5745 (originalCharacters!8132 (_1!25155 (get!15059 lt!1499240)))))))))

(declare-fun b!4211698 () Bool)

(assert (=> b!4211698 (= e!2614517 (= (size!34011 (_1!25155 (get!15059 lt!1499240))) (size!34013 (originalCharacters!8132 (_1!25155 (get!15059 lt!1499240))))))))

(declare-fun b!4211699 () Bool)

(assert (=> b!4211699 (= e!2614515 None!9937)))

(declare-fun b!4211700 () Bool)

(assert (=> b!4211700 (= e!2614515 (Some!9937 (tuple2!44043 (Token!14203 (apply!10685 (transformation!7750 (h!51723 rules!3967)) (seqFromList!5745 (_1!25157 lt!1499239))) (h!51723 rules!3967) (size!34015 (seqFromList!5745 (_1!25157 lt!1499239))) (_1!25157 lt!1499239)) (_2!25157 lt!1499239))))))

(declare-fun lt!1499241 () Unit!65423)

(assert (=> b!4211700 (= lt!1499241 (longestMatchIsAcceptedByMatchOrIsEmpty!1618 (regex!7750 (h!51723 rules!3967)) input!3517))))

(declare-fun res!1730199 () Bool)

(assert (=> b!4211700 (= res!1730199 (isEmpty!27421 (_1!25157 (findLongestMatchInner!1645 (regex!7750 (h!51723 rules!3967)) Nil!46302 (size!34013 Nil!46302) input!3517 input!3517 (size!34013 input!3517)))))))

(declare-fun e!2614518 () Bool)

(assert (=> b!4211700 (=> res!1730199 e!2614518)))

(assert (=> b!4211700 e!2614518))

(declare-fun lt!1499243 () Unit!65423)

(assert (=> b!4211700 (= lt!1499243 lt!1499241)))

(declare-fun lt!1499242 () Unit!65423)

(assert (=> b!4211700 (= lt!1499242 (lemmaSemiInverse!2486 (transformation!7750 (h!51723 rules!3967)) (seqFromList!5745 (_1!25157 lt!1499239))))))

(declare-fun b!4211701 () Bool)

(declare-fun res!1730202 () Bool)

(assert (=> b!4211701 (=> (not res!1730202) (not e!2614517))))

(assert (=> b!4211701 (= res!1730202 (= (rule!10864 (_1!25155 (get!15059 lt!1499240))) (h!51723 rules!3967)))))

(declare-fun b!4211702 () Bool)

(assert (=> b!4211702 (= e!2614518 (matchR!6364 (regex!7750 (h!51723 rules!3967)) (_1!25157 (findLongestMatchInner!1645 (regex!7750 (h!51723 rules!3967)) Nil!46302 (size!34013 Nil!46302) input!3517 input!3517 (size!34013 input!3517)))))))

(declare-fun b!4211703 () Bool)

(assert (=> b!4211703 (= e!2614516 e!2614517)))

(declare-fun res!1730196 () Bool)

(assert (=> b!4211703 (=> (not res!1730196) (not e!2614517))))

(assert (=> b!4211703 (= res!1730196 (matchR!6364 (regex!7750 (h!51723 rules!3967)) (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499240))))))))

(declare-fun b!4211704 () Bool)

(declare-fun res!1730201 () Bool)

(assert (=> b!4211704 (=> (not res!1730201) (not e!2614517))))

(assert (=> b!4211704 (= res!1730201 (< (size!34013 (_2!25155 (get!15059 lt!1499240))) (size!34013 input!3517)))))

(declare-fun b!4211705 () Bool)

(declare-fun res!1730197 () Bool)

(assert (=> b!4211705 (=> (not res!1730197) (not e!2614517))))

(assert (=> b!4211705 (= res!1730197 (= (++!11824 (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499240)))) (_2!25155 (get!15059 lt!1499240))) input!3517))))

(assert (= (and d!1241249 c!717444) b!4211699))

(assert (= (and d!1241249 (not c!717444)) b!4211700))

(assert (= (and b!4211700 (not res!1730199)) b!4211702))

(assert (= (and d!1241249 (not res!1730198)) b!4211703))

(assert (= (and b!4211703 res!1730196) b!4211705))

(assert (= (and b!4211705 res!1730197) b!4211704))

(assert (= (and b!4211704 res!1730201) b!4211701))

(assert (= (and b!4211701 res!1730202) b!4211697))

(assert (= (and b!4211697 res!1730200) b!4211698))

(declare-fun m!4799609 () Bool)

(assert (=> b!4211697 m!4799609))

(declare-fun m!4799611 () Bool)

(assert (=> b!4211697 m!4799611))

(assert (=> b!4211697 m!4799611))

(declare-fun m!4799613 () Bool)

(assert (=> b!4211697 m!4799613))

(assert (=> b!4211702 m!4799565))

(assert (=> b!4211702 m!4799203))

(assert (=> b!4211702 m!4799565))

(assert (=> b!4211702 m!4799203))

(declare-fun m!4799615 () Bool)

(assert (=> b!4211702 m!4799615))

(declare-fun m!4799617 () Bool)

(assert (=> b!4211702 m!4799617))

(assert (=> b!4211698 m!4799609))

(declare-fun m!4799619 () Bool)

(assert (=> b!4211698 m!4799619))

(assert (=> b!4211701 m!4799609))

(assert (=> b!4211703 m!4799609))

(declare-fun m!4799621 () Bool)

(assert (=> b!4211703 m!4799621))

(assert (=> b!4211703 m!4799621))

(declare-fun m!4799623 () Bool)

(assert (=> b!4211703 m!4799623))

(assert (=> b!4211703 m!4799623))

(declare-fun m!4799625 () Bool)

(assert (=> b!4211703 m!4799625))

(assert (=> b!4211705 m!4799609))

(assert (=> b!4211705 m!4799621))

(assert (=> b!4211705 m!4799621))

(assert (=> b!4211705 m!4799623))

(assert (=> b!4211705 m!4799623))

(declare-fun m!4799627 () Bool)

(assert (=> b!4211705 m!4799627))

(declare-fun m!4799629 () Bool)

(assert (=> d!1241249 m!4799629))

(declare-fun m!4799631 () Bool)

(assert (=> d!1241249 m!4799631))

(declare-fun m!4799633 () Bool)

(assert (=> d!1241249 m!4799633))

(declare-fun m!4799635 () Bool)

(assert (=> d!1241249 m!4799635))

(declare-fun m!4799637 () Bool)

(assert (=> b!4211700 m!4799637))

(declare-fun m!4799639 () Bool)

(assert (=> b!4211700 m!4799639))

(assert (=> b!4211700 m!4799565))

(assert (=> b!4211700 m!4799203))

(assert (=> b!4211700 m!4799615))

(declare-fun m!4799641 () Bool)

(assert (=> b!4211700 m!4799641))

(declare-fun m!4799643 () Bool)

(assert (=> b!4211700 m!4799643))

(assert (=> b!4211700 m!4799641))

(declare-fun m!4799645 () Bool)

(assert (=> b!4211700 m!4799645))

(assert (=> b!4211700 m!4799641))

(assert (=> b!4211700 m!4799203))

(assert (=> b!4211700 m!4799565))

(assert (=> b!4211700 m!4799641))

(declare-fun m!4799647 () Bool)

(assert (=> b!4211700 m!4799647))

(assert (=> b!4211704 m!4799609))

(declare-fun m!4799649 () Bool)

(assert (=> b!4211704 m!4799649))

(assert (=> b!4211704 m!4799203))

(assert (=> b!4211330 d!1241249))

(declare-fun d!1241251 () Bool)

(declare-fun res!1730207 () Bool)

(declare-fun e!2614521 () Bool)

(assert (=> d!1241251 (=> (not res!1730207) (not e!2614521))))

(declare-fun validRegex!5744 (Regex!12655) Bool)

(assert (=> d!1241251 (= res!1730207 (validRegex!5744 (regex!7750 rBis!178)))))

(assert (=> d!1241251 (= (ruleValid!3462 thiss!26544 rBis!178) e!2614521)))

(declare-fun b!4211710 () Bool)

(declare-fun res!1730208 () Bool)

(assert (=> b!4211710 (=> (not res!1730208) (not e!2614521))))

(declare-fun nullable!4457 (Regex!12655) Bool)

(assert (=> b!4211710 (= res!1730208 (not (nullable!4457 (regex!7750 rBis!178))))))

(declare-fun b!4211711 () Bool)

(assert (=> b!4211711 (= e!2614521 (not (= (tag!8614 rBis!178) (String!53771 ""))))))

(assert (= (and d!1241251 res!1730207) b!4211710))

(assert (= (and b!4211710 res!1730208) b!4211711))

(declare-fun m!4799651 () Bool)

(assert (=> d!1241251 m!4799651))

(declare-fun m!4799653 () Bool)

(assert (=> b!4211710 m!4799653))

(assert (=> b!4211341 d!1241251))

(declare-fun b!4211712 () Bool)

(declare-fun e!2614522 () Bool)

(assert (=> b!4211712 (= e!2614522 (inv!17 (value!241404 tBis!41)))))

(declare-fun d!1241253 () Bool)

(declare-fun c!717445 () Bool)

(assert (=> d!1241253 (= c!717445 ((_ is IntegerValue!23940) (value!241404 tBis!41)))))

(declare-fun e!2614523 () Bool)

(assert (=> d!1241253 (= (inv!21 (value!241404 tBis!41)) e!2614523)))

(declare-fun b!4211713 () Bool)

(assert (=> b!4211713 (= e!2614523 (inv!16 (value!241404 tBis!41)))))

(declare-fun b!4211714 () Bool)

(assert (=> b!4211714 (= e!2614523 e!2614522)))

(declare-fun c!717446 () Bool)

(assert (=> b!4211714 (= c!717446 ((_ is IntegerValue!23941) (value!241404 tBis!41)))))

(declare-fun b!4211715 () Bool)

(declare-fun res!1730209 () Bool)

(declare-fun e!2614524 () Bool)

(assert (=> b!4211715 (=> res!1730209 e!2614524)))

(assert (=> b!4211715 (= res!1730209 (not ((_ is IntegerValue!23942) (value!241404 tBis!41))))))

(assert (=> b!4211715 (= e!2614522 e!2614524)))

(declare-fun b!4211716 () Bool)

(assert (=> b!4211716 (= e!2614524 (inv!15 (value!241404 tBis!41)))))

(assert (= (and d!1241253 c!717445) b!4211713))

(assert (= (and d!1241253 (not c!717445)) b!4211714))

(assert (= (and b!4211714 c!717446) b!4211712))

(assert (= (and b!4211714 (not c!717446)) b!4211715))

(assert (= (and b!4211715 (not res!1730209)) b!4211716))

(declare-fun m!4799655 () Bool)

(assert (=> b!4211712 m!4799655))

(declare-fun m!4799657 () Bool)

(assert (=> b!4211713 m!4799657))

(declare-fun m!4799659 () Bool)

(assert (=> b!4211716 m!4799659))

(assert (=> b!4211340 d!1241253))

(declare-fun d!1241255 () Bool)

(assert (=> d!1241255 (= (inv!60916 (tag!8614 rBis!178)) (= (mod (str.len (value!241403 (tag!8614 rBis!178))) 2) 0))))

(assert (=> b!4211342 d!1241255))

(declare-fun d!1241257 () Bool)

(declare-fun res!1730210 () Bool)

(declare-fun e!2614525 () Bool)

(assert (=> d!1241257 (=> (not res!1730210) (not e!2614525))))

(assert (=> d!1241257 (= res!1730210 (semiInverseModEq!3366 (toChars!10329 (transformation!7750 rBis!178)) (toValue!10470 (transformation!7750 rBis!178))))))

(assert (=> d!1241257 (= (inv!60920 (transformation!7750 rBis!178)) e!2614525)))

(declare-fun b!4211717 () Bool)

(assert (=> b!4211717 (= e!2614525 (equivClasses!3265 (toChars!10329 (transformation!7750 rBis!178)) (toValue!10470 (transformation!7750 rBis!178))))))

(assert (= (and d!1241257 res!1730210) b!4211717))

(declare-fun m!4799661 () Bool)

(assert (=> d!1241257 m!4799661))

(declare-fun m!4799663 () Bool)

(assert (=> b!4211717 m!4799663))

(assert (=> b!4211342 d!1241257))

(declare-fun b!4211718 () Bool)

(declare-fun e!2614526 () Bool)

(declare-fun e!2614527 () Bool)

(assert (=> b!4211718 (= e!2614526 e!2614527)))

(declare-fun res!1730211 () Bool)

(assert (=> b!4211718 (=> (not res!1730211) (not e!2614527))))

(assert (=> b!4211718 (= res!1730211 (not ((_ is Nil!46302) input!3517)))))

(declare-fun b!4211720 () Bool)

(assert (=> b!4211720 (= e!2614527 (isPrefix!4609 (tail!6780 pBis!121) (tail!6780 input!3517)))))

(declare-fun b!4211721 () Bool)

(declare-fun e!2614528 () Bool)

(assert (=> b!4211721 (= e!2614528 (>= (size!34013 input!3517) (size!34013 pBis!121)))))

(declare-fun d!1241259 () Bool)

(assert (=> d!1241259 e!2614528))

(declare-fun res!1730212 () Bool)

(assert (=> d!1241259 (=> res!1730212 e!2614528)))

(declare-fun lt!1499244 () Bool)

(assert (=> d!1241259 (= res!1730212 (not lt!1499244))))

(assert (=> d!1241259 (= lt!1499244 e!2614526)))

(declare-fun res!1730214 () Bool)

(assert (=> d!1241259 (=> res!1730214 e!2614526)))

(assert (=> d!1241259 (= res!1730214 ((_ is Nil!46302) pBis!121))))

(assert (=> d!1241259 (= (isPrefix!4609 pBis!121 input!3517) lt!1499244)))

(declare-fun b!4211719 () Bool)

(declare-fun res!1730213 () Bool)

(assert (=> b!4211719 (=> (not res!1730213) (not e!2614527))))

(assert (=> b!4211719 (= res!1730213 (= (head!8933 pBis!121) (head!8933 input!3517)))))

(assert (= (and d!1241259 (not res!1730214)) b!4211718))

(assert (= (and b!4211718 res!1730211) b!4211719))

(assert (= (and b!4211719 res!1730213) b!4211720))

(assert (= (and d!1241259 (not res!1730212)) b!4211721))

(declare-fun m!4799665 () Bool)

(assert (=> b!4211720 m!4799665))

(assert (=> b!4211720 m!4799195))

(assert (=> b!4211720 m!4799665))

(assert (=> b!4211720 m!4799195))

(declare-fun m!4799667 () Bool)

(assert (=> b!4211720 m!4799667))

(assert (=> b!4211721 m!4799203))

(assert (=> b!4211721 m!4799243))

(declare-fun m!4799669 () Bool)

(assert (=> b!4211719 m!4799669))

(assert (=> b!4211719 m!4799209))

(assert (=> b!4211321 d!1241259))

(declare-fun b!4211722 () Bool)

(declare-fun res!1730216 () Bool)

(declare-fun e!2614530 () Bool)

(assert (=> b!4211722 (=> (not res!1730216) (not e!2614530))))

(declare-fun lt!1499246 () Option!9938)

(assert (=> b!4211722 (= res!1730216 (= (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499246)))) (originalCharacters!8132 (_1!25155 (get!15059 lt!1499246)))))))

(declare-fun b!4211723 () Bool)

(declare-fun e!2614529 () Option!9938)

(declare-fun call!292974 () Option!9938)

(assert (=> b!4211723 (= e!2614529 call!292974)))

(declare-fun d!1241261 () Bool)

(declare-fun e!2614531 () Bool)

(assert (=> d!1241261 e!2614531))

(declare-fun res!1730218 () Bool)

(assert (=> d!1241261 (=> res!1730218 e!2614531)))

(assert (=> d!1241261 (= res!1730218 (isEmpty!27419 lt!1499246))))

(assert (=> d!1241261 (= lt!1499246 e!2614529)))

(declare-fun c!717447 () Bool)

(assert (=> d!1241261 (= c!717447 (and ((_ is Cons!46303) rules!3967) ((_ is Nil!46303) (t!348026 rules!3967))))))

(declare-fun lt!1499249 () Unit!65423)

(declare-fun lt!1499248 () Unit!65423)

(assert (=> d!1241261 (= lt!1499249 lt!1499248)))

(assert (=> d!1241261 (isPrefix!4609 input!3517 input!3517)))

(assert (=> d!1241261 (= lt!1499248 (lemmaIsPrefixRefl!3026 input!3517 input!3517))))

(assert (=> d!1241261 (rulesValidInductive!2876 thiss!26544 rules!3967)))

(assert (=> d!1241261 (= (maxPrefix!4385 thiss!26544 rules!3967 input!3517) lt!1499246)))

(declare-fun b!4211724 () Bool)

(assert (=> b!4211724 (= e!2614531 e!2614530)))

(declare-fun res!1730220 () Bool)

(assert (=> b!4211724 (=> (not res!1730220) (not e!2614530))))

(assert (=> b!4211724 (= res!1730220 (isDefined!7386 lt!1499246))))

(declare-fun b!4211725 () Bool)

(declare-fun res!1730217 () Bool)

(assert (=> b!4211725 (=> (not res!1730217) (not e!2614530))))

(assert (=> b!4211725 (= res!1730217 (< (size!34013 (_2!25155 (get!15059 lt!1499246))) (size!34013 input!3517)))))

(declare-fun b!4211726 () Bool)

(declare-fun lt!1499245 () Option!9938)

(declare-fun lt!1499247 () Option!9938)

(assert (=> b!4211726 (= e!2614529 (ite (and ((_ is None!9937) lt!1499245) ((_ is None!9937) lt!1499247)) None!9937 (ite ((_ is None!9937) lt!1499247) lt!1499245 (ite ((_ is None!9937) lt!1499245) lt!1499247 (ite (>= (size!34011 (_1!25155 (v!40807 lt!1499245))) (size!34011 (_1!25155 (v!40807 lt!1499247)))) lt!1499245 lt!1499247)))))))

(assert (=> b!4211726 (= lt!1499245 call!292974)))

(assert (=> b!4211726 (= lt!1499247 (maxPrefix!4385 thiss!26544 (t!348026 rules!3967) input!3517))))

(declare-fun b!4211727 () Bool)

(declare-fun res!1730221 () Bool)

(assert (=> b!4211727 (=> (not res!1730221) (not e!2614530))))

(assert (=> b!4211727 (= res!1730221 (= (value!241404 (_1!25155 (get!15059 lt!1499246))) (apply!10685 (transformation!7750 (rule!10864 (_1!25155 (get!15059 lt!1499246)))) (seqFromList!5745 (originalCharacters!8132 (_1!25155 (get!15059 lt!1499246)))))))))

(declare-fun bm!292969 () Bool)

(assert (=> bm!292969 (= call!292974 (maxPrefixOneRule!3340 thiss!26544 (h!51723 rules!3967) input!3517))))

(declare-fun b!4211728 () Bool)

(declare-fun res!1730219 () Bool)

(assert (=> b!4211728 (=> (not res!1730219) (not e!2614530))))

(assert (=> b!4211728 (= res!1730219 (matchR!6364 (regex!7750 (rule!10864 (_1!25155 (get!15059 lt!1499246)))) (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499246))))))))

(declare-fun b!4211729 () Bool)

(assert (=> b!4211729 (= e!2614530 (contains!9571 rules!3967 (rule!10864 (_1!25155 (get!15059 lt!1499246)))))))

(declare-fun b!4211730 () Bool)

(declare-fun res!1730215 () Bool)

(assert (=> b!4211730 (=> (not res!1730215) (not e!2614530))))

(assert (=> b!4211730 (= res!1730215 (= (++!11824 (list!16743 (charsOf!5173 (_1!25155 (get!15059 lt!1499246)))) (_2!25155 (get!15059 lt!1499246))) input!3517))))

(assert (= (and d!1241261 c!717447) b!4211723))

(assert (= (and d!1241261 (not c!717447)) b!4211726))

(assert (= (or b!4211723 b!4211726) bm!292969))

(assert (= (and d!1241261 (not res!1730218)) b!4211724))

(assert (= (and b!4211724 res!1730220) b!4211722))

(assert (= (and b!4211722 res!1730216) b!4211725))

(assert (= (and b!4211725 res!1730217) b!4211730))

(assert (= (and b!4211730 res!1730215) b!4211727))

(assert (= (and b!4211727 res!1730221) b!4211728))

(assert (= (and b!4211728 res!1730219) b!4211729))

(assert (=> b!4211726 m!4799149))

(declare-fun m!4799671 () Bool)

(assert (=> b!4211724 m!4799671))

(declare-fun m!4799673 () Bool)

(assert (=> b!4211727 m!4799673))

(declare-fun m!4799675 () Bool)

(assert (=> b!4211727 m!4799675))

(assert (=> b!4211727 m!4799675))

(declare-fun m!4799677 () Bool)

(assert (=> b!4211727 m!4799677))

(assert (=> b!4211722 m!4799673))

(declare-fun m!4799679 () Bool)

(assert (=> b!4211722 m!4799679))

(assert (=> b!4211722 m!4799679))

(declare-fun m!4799681 () Bool)

(assert (=> b!4211722 m!4799681))

(assert (=> b!4211728 m!4799673))

(assert (=> b!4211728 m!4799679))

(assert (=> b!4211728 m!4799679))

(assert (=> b!4211728 m!4799681))

(assert (=> b!4211728 m!4799681))

(declare-fun m!4799683 () Bool)

(assert (=> b!4211728 m!4799683))

(assert (=> b!4211725 m!4799673))

(declare-fun m!4799685 () Bool)

(assert (=> b!4211725 m!4799685))

(assert (=> b!4211725 m!4799203))

(assert (=> b!4211730 m!4799673))

(assert (=> b!4211730 m!4799679))

(assert (=> b!4211730 m!4799679))

(assert (=> b!4211730 m!4799681))

(assert (=> b!4211730 m!4799681))

(declare-fun m!4799687 () Bool)

(assert (=> b!4211730 m!4799687))

(assert (=> b!4211729 m!4799673))

(declare-fun m!4799689 () Bool)

(assert (=> b!4211729 m!4799689))

(declare-fun m!4799691 () Bool)

(assert (=> d!1241261 m!4799691))

(assert (=> d!1241261 m!4799129))

(assert (=> d!1241261 m!4799131))

(declare-fun m!4799693 () Bool)

(assert (=> d!1241261 m!4799693))

(assert (=> bm!292969 m!4799135))

(assert (=> b!4211320 d!1241261))

(declare-fun d!1241263 () Bool)

(declare-fun list!16745 (Conc!13961) List!46426)

(assert (=> d!1241263 (= (list!16743 (charsOf!5173 tBis!41)) (list!16745 (c!717407 (charsOf!5173 tBis!41))))))

(declare-fun bs!597453 () Bool)

(assert (= bs!597453 d!1241263))

(declare-fun m!4799695 () Bool)

(assert (=> bs!597453 m!4799695))

(assert (=> b!4211331 d!1241263))

(declare-fun d!1241265 () Bool)

(declare-fun lt!1499252 () BalanceConc!27516)

(assert (=> d!1241265 (= (list!16743 lt!1499252) (originalCharacters!8132 tBis!41))))

(assert (=> d!1241265 (= lt!1499252 (dynLambda!19970 (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (value!241404 tBis!41)))))

(assert (=> d!1241265 (= (charsOf!5173 tBis!41) lt!1499252)))

(declare-fun b_lambda!124063 () Bool)

(assert (=> (not b_lambda!124063) (not d!1241265)))

(assert (=> d!1241265 t!348044))

(declare-fun b_and!331497 () Bool)

(assert (= b_and!331477 (and (=> t!348044 result!308114) b_and!331497)))

(assert (=> d!1241265 t!348046))

(declare-fun b_and!331499 () Bool)

(assert (= b_and!331479 (and (=> t!348046 result!308118) b_and!331499)))

(assert (=> d!1241265 t!348048))

(declare-fun b_and!331501 () Bool)

(assert (= b_and!331481 (and (=> t!348048 result!308120) b_and!331501)))

(assert (=> d!1241265 t!348050))

(declare-fun b_and!331503 () Bool)

(assert (= b_and!331483 (and (=> t!348050 result!308122) b_and!331503)))

(declare-fun m!4799697 () Bool)

(assert (=> d!1241265 m!4799697))

(assert (=> d!1241265 m!4799317))

(assert (=> b!4211331 d!1241265))

(declare-fun d!1241267 () Bool)

(assert (=> d!1241267 (= (inv!60916 (tag!8614 (rule!10864 tBis!41))) (= (mod (str.len (value!241403 (tag!8614 (rule!10864 tBis!41)))) 2) 0))))

(assert (=> b!4211333 d!1241267))

(declare-fun d!1241269 () Bool)

(declare-fun res!1730222 () Bool)

(declare-fun e!2614532 () Bool)

(assert (=> d!1241269 (=> (not res!1730222) (not e!2614532))))

(assert (=> d!1241269 (= res!1730222 (semiInverseModEq!3366 (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (toValue!10470 (transformation!7750 (rule!10864 tBis!41)))))))

(assert (=> d!1241269 (= (inv!60920 (transformation!7750 (rule!10864 tBis!41))) e!2614532)))

(declare-fun b!4211731 () Bool)

(assert (=> b!4211731 (= e!2614532 (equivClasses!3265 (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (toValue!10470 (transformation!7750 (rule!10864 tBis!41)))))))

(assert (= (and d!1241269 res!1730222) b!4211731))

(declare-fun m!4799699 () Bool)

(assert (=> d!1241269 m!4799699))

(declare-fun m!4799701 () Bool)

(assert (=> b!4211731 m!4799701))

(assert (=> b!4211333 d!1241269))

(declare-fun d!1241271 () Bool)

(assert (=> d!1241271 (= (inv!60916 (tag!8614 (h!51723 rules!3967))) (= (mod (str.len (value!241403 (tag!8614 (h!51723 rules!3967)))) 2) 0))))

(assert (=> b!4211332 d!1241271))

(declare-fun d!1241273 () Bool)

(declare-fun res!1730223 () Bool)

(declare-fun e!2614533 () Bool)

(assert (=> d!1241273 (=> (not res!1730223) (not e!2614533))))

(assert (=> d!1241273 (= res!1730223 (semiInverseModEq!3366 (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toValue!10470 (transformation!7750 (h!51723 rules!3967)))))))

(assert (=> d!1241273 (= (inv!60920 (transformation!7750 (h!51723 rules!3967))) e!2614533)))

(declare-fun b!4211732 () Bool)

(assert (=> b!4211732 (= e!2614533 (equivClasses!3265 (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toValue!10470 (transformation!7750 (h!51723 rules!3967)))))))

(assert (= (and d!1241273 res!1730223) b!4211732))

(declare-fun m!4799703 () Bool)

(assert (=> d!1241273 m!4799703))

(declare-fun m!4799705 () Bool)

(assert (=> b!4211732 m!4799705))

(assert (=> b!4211332 d!1241273))

(declare-fun b!4211737 () Bool)

(declare-fun e!2614536 () Bool)

(declare-fun tp!1287820 () Bool)

(assert (=> b!4211737 (= e!2614536 (and tp_is_empty!22277 tp!1287820))))

(assert (=> b!4211335 (= tp!1287742 e!2614536)))

(assert (= (and b!4211335 ((_ is Cons!46302) (t!348025 pBis!121))) b!4211737))

(declare-fun b!4211738 () Bool)

(declare-fun e!2614537 () Bool)

(declare-fun tp!1287821 () Bool)

(assert (=> b!4211738 (= e!2614537 (and tp_is_empty!22277 tp!1287821))))

(assert (=> b!4211326 (= tp!1287744 e!2614537)))

(assert (= (and b!4211326 ((_ is Cons!46302) (t!348025 suffixBis!41))) b!4211738))

(declare-fun b!4211750 () Bool)

(declare-fun e!2614540 () Bool)

(declare-fun tp!1287836 () Bool)

(declare-fun tp!1287833 () Bool)

(assert (=> b!4211750 (= e!2614540 (and tp!1287836 tp!1287833))))

(declare-fun b!4211751 () Bool)

(declare-fun tp!1287832 () Bool)

(assert (=> b!4211751 (= e!2614540 tp!1287832)))

(declare-fun b!4211752 () Bool)

(declare-fun tp!1287835 () Bool)

(declare-fun tp!1287834 () Bool)

(assert (=> b!4211752 (= e!2614540 (and tp!1287835 tp!1287834))))

(declare-fun b!4211749 () Bool)

(assert (=> b!4211749 (= e!2614540 tp_is_empty!22277)))

(assert (=> b!4211336 (= tp!1287757 e!2614540)))

(assert (= (and b!4211336 ((_ is ElementMatch!12655) (regex!7750 (rule!10864 t!8364)))) b!4211749))

(assert (= (and b!4211336 ((_ is Concat!20636) (regex!7750 (rule!10864 t!8364)))) b!4211750))

(assert (= (and b!4211336 ((_ is Star!12655) (regex!7750 (rule!10864 t!8364)))) b!4211751))

(assert (= (and b!4211336 ((_ is Union!12655) (regex!7750 (rule!10864 t!8364)))) b!4211752))

(declare-fun b!4211763 () Bool)

(declare-fun b_free!123295 () Bool)

(declare-fun b_next!123999 () Bool)

(assert (=> b!4211763 (= b_free!123295 (not b_next!123999))))

(declare-fun tp!1287845 () Bool)

(declare-fun b_and!331505 () Bool)

(assert (=> b!4211763 (= tp!1287845 b_and!331505)))

(declare-fun b_free!123297 () Bool)

(declare-fun b_next!124001 () Bool)

(assert (=> b!4211763 (= b_free!123297 (not b_next!124001))))

(declare-fun t!348064 () Bool)

(declare-fun tb!252835 () Bool)

(assert (=> (and b!4211763 (= (toChars!10329 (transformation!7750 (h!51723 (t!348026 rules!3967)))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41)))) t!348064) tb!252835))

(declare-fun result!308148 () Bool)

(assert (= result!308148 result!308114))

(assert (=> b!4211456 t!348064))

(declare-fun t!348066 () Bool)

(declare-fun tb!252837 () Bool)

(assert (=> (and b!4211763 (= (toChars!10329 (transformation!7750 (h!51723 (t!348026 rules!3967)))) (toChars!10329 (transformation!7750 (rule!10864 t!8364)))) t!348066) tb!252837))

(declare-fun result!308150 () Bool)

(assert (= result!308150 result!308124))

(assert (=> b!4211463 t!348066))

(assert (=> d!1241265 t!348064))

(declare-fun tp!1287846 () Bool)

(declare-fun b_and!331507 () Bool)

(assert (=> b!4211763 (= tp!1287846 (and (=> t!348064 result!308148) (=> t!348066 result!308150) b_and!331507))))

(declare-fun e!2614551 () Bool)

(assert (=> b!4211763 (= e!2614551 (and tp!1287845 tp!1287846))))

(declare-fun b!4211762 () Bool)

(declare-fun e!2614552 () Bool)

(declare-fun tp!1287848 () Bool)

(assert (=> b!4211762 (= e!2614552 (and tp!1287848 (inv!60916 (tag!8614 (h!51723 (t!348026 rules!3967)))) (inv!60920 (transformation!7750 (h!51723 (t!348026 rules!3967)))) e!2614551))))

(declare-fun b!4211761 () Bool)

(declare-fun e!2614549 () Bool)

(declare-fun tp!1287847 () Bool)

(assert (=> b!4211761 (= e!2614549 (and e!2614552 tp!1287847))))

(assert (=> b!4211315 (= tp!1287745 e!2614549)))

(assert (= b!4211762 b!4211763))

(assert (= b!4211761 b!4211762))

(assert (= (and b!4211315 ((_ is Cons!46303) (t!348026 rules!3967))) b!4211761))

(declare-fun m!4799707 () Bool)

(assert (=> b!4211762 m!4799707))

(declare-fun m!4799709 () Bool)

(assert (=> b!4211762 m!4799709))

(declare-fun b!4211764 () Bool)

(declare-fun e!2614553 () Bool)

(declare-fun tp!1287849 () Bool)

(assert (=> b!4211764 (= e!2614553 (and tp_is_empty!22277 tp!1287849))))

(assert (=> b!4211317 (= tp!1287758 e!2614553)))

(assert (= (and b!4211317 ((_ is Cons!46302) (originalCharacters!8132 t!8364))) b!4211764))

(declare-fun b!4211765 () Bool)

(declare-fun e!2614554 () Bool)

(declare-fun tp!1287850 () Bool)

(assert (=> b!4211765 (= e!2614554 (and tp_is_empty!22277 tp!1287850))))

(assert (=> b!4211328 (= tp!1287753 e!2614554)))

(assert (= (and b!4211328 ((_ is Cons!46302) (t!348025 p!3001))) b!4211765))

(declare-fun b!4211766 () Bool)

(declare-fun e!2614555 () Bool)

(declare-fun tp!1287851 () Bool)

(assert (=> b!4211766 (= e!2614555 (and tp_is_empty!22277 tp!1287851))))

(assert (=> b!4211340 (= tp!1287751 e!2614555)))

(assert (= (and b!4211340 ((_ is Cons!46302) (originalCharacters!8132 tBis!41))) b!4211766))

(declare-fun b!4211768 () Bool)

(declare-fun e!2614556 () Bool)

(declare-fun tp!1287856 () Bool)

(declare-fun tp!1287853 () Bool)

(assert (=> b!4211768 (= e!2614556 (and tp!1287856 tp!1287853))))

(declare-fun b!4211769 () Bool)

(declare-fun tp!1287852 () Bool)

(assert (=> b!4211769 (= e!2614556 tp!1287852)))

(declare-fun b!4211770 () Bool)

(declare-fun tp!1287855 () Bool)

(declare-fun tp!1287854 () Bool)

(assert (=> b!4211770 (= e!2614556 (and tp!1287855 tp!1287854))))

(declare-fun b!4211767 () Bool)

(assert (=> b!4211767 (= e!2614556 tp_is_empty!22277)))

(assert (=> b!4211342 (= tp!1287739 e!2614556)))

(assert (= (and b!4211342 ((_ is ElementMatch!12655) (regex!7750 rBis!178))) b!4211767))

(assert (= (and b!4211342 ((_ is Concat!20636) (regex!7750 rBis!178))) b!4211768))

(assert (= (and b!4211342 ((_ is Star!12655) (regex!7750 rBis!178))) b!4211769))

(assert (= (and b!4211342 ((_ is Union!12655) (regex!7750 rBis!178))) b!4211770))

(declare-fun b!4211771 () Bool)

(declare-fun e!2614557 () Bool)

(declare-fun tp!1287857 () Bool)

(assert (=> b!4211771 (= e!2614557 (and tp_is_empty!22277 tp!1287857))))

(assert (=> b!4211310 (= tp!1287752 e!2614557)))

(assert (= (and b!4211310 ((_ is Cons!46302) (t!348025 suffix!1557))) b!4211771))

(declare-fun b!4211772 () Bool)

(declare-fun e!2614558 () Bool)

(declare-fun tp!1287858 () Bool)

(assert (=> b!4211772 (= e!2614558 (and tp_is_empty!22277 tp!1287858))))

(assert (=> b!4211322 (= tp!1287750 e!2614558)))

(assert (= (and b!4211322 ((_ is Cons!46302) (t!348025 input!3517))) b!4211772))

(declare-fun b!4211774 () Bool)

(declare-fun e!2614559 () Bool)

(declare-fun tp!1287863 () Bool)

(declare-fun tp!1287860 () Bool)

(assert (=> b!4211774 (= e!2614559 (and tp!1287863 tp!1287860))))

(declare-fun b!4211775 () Bool)

(declare-fun tp!1287859 () Bool)

(assert (=> b!4211775 (= e!2614559 tp!1287859)))

(declare-fun b!4211776 () Bool)

(declare-fun tp!1287862 () Bool)

(declare-fun tp!1287861 () Bool)

(assert (=> b!4211776 (= e!2614559 (and tp!1287862 tp!1287861))))

(declare-fun b!4211773 () Bool)

(assert (=> b!4211773 (= e!2614559 tp_is_empty!22277)))

(assert (=> b!4211333 (= tp!1287743 e!2614559)))

(assert (= (and b!4211333 ((_ is ElementMatch!12655) (regex!7750 (rule!10864 tBis!41)))) b!4211773))

(assert (= (and b!4211333 ((_ is Concat!20636) (regex!7750 (rule!10864 tBis!41)))) b!4211774))

(assert (= (and b!4211333 ((_ is Star!12655) (regex!7750 (rule!10864 tBis!41)))) b!4211775))

(assert (= (and b!4211333 ((_ is Union!12655) (regex!7750 (rule!10864 tBis!41)))) b!4211776))

(declare-fun b!4211778 () Bool)

(declare-fun e!2614560 () Bool)

(declare-fun tp!1287868 () Bool)

(declare-fun tp!1287865 () Bool)

(assert (=> b!4211778 (= e!2614560 (and tp!1287868 tp!1287865))))

(declare-fun b!4211779 () Bool)

(declare-fun tp!1287864 () Bool)

(assert (=> b!4211779 (= e!2614560 tp!1287864)))

(declare-fun b!4211780 () Bool)

(declare-fun tp!1287867 () Bool)

(declare-fun tp!1287866 () Bool)

(assert (=> b!4211780 (= e!2614560 (and tp!1287867 tp!1287866))))

(declare-fun b!4211777 () Bool)

(assert (=> b!4211777 (= e!2614560 tp_is_empty!22277)))

(assert (=> b!4211332 (= tp!1287741 e!2614560)))

(assert (= (and b!4211332 ((_ is ElementMatch!12655) (regex!7750 (h!51723 rules!3967)))) b!4211777))

(assert (= (and b!4211332 ((_ is Concat!20636) (regex!7750 (h!51723 rules!3967)))) b!4211778))

(assert (= (and b!4211332 ((_ is Star!12655) (regex!7750 (h!51723 rules!3967)))) b!4211779))

(assert (= (and b!4211332 ((_ is Union!12655) (regex!7750 (h!51723 rules!3967)))) b!4211780))

(declare-fun b_lambda!124065 () Bool)

(assert (= b_lambda!124053 (or (and b!4211763 b_free!123297 (= (toChars!10329 (transformation!7750 (h!51723 (t!348026 rules!3967)))) (toChars!10329 (transformation!7750 (rule!10864 t!8364))))) (and b!4211319 b_free!123289 (= (toChars!10329 (transformation!7750 (rule!10864 tBis!41))) (toChars!10329 (transformation!7750 (rule!10864 t!8364))))) (and b!4211334 b_free!123277 (= (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toChars!10329 (transformation!7750 (rule!10864 t!8364))))) (and b!4211314 b_free!123285 (= (toChars!10329 (transformation!7750 rBis!178)) (toChars!10329 (transformation!7750 (rule!10864 t!8364))))) (and b!4211311 b_free!123281) b_lambda!124065)))

(declare-fun b_lambda!124067 () Bool)

(assert (= b_lambda!124051 (or (and b!4211763 b_free!123297 (= (toChars!10329 (transformation!7750 (h!51723 (t!348026 rules!3967)))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) (and b!4211314 b_free!123285 (= (toChars!10329 (transformation!7750 rBis!178)) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) (and b!4211334 b_free!123277 (= (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) (and b!4211319 b_free!123289) (and b!4211311 b_free!123281 (= (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) b_lambda!124067)))

(declare-fun b_lambda!124069 () Bool)

(assert (= b_lambda!124063 (or (and b!4211763 b_free!123297 (= (toChars!10329 (transformation!7750 (h!51723 (t!348026 rules!3967)))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) (and b!4211314 b_free!123285 (= (toChars!10329 (transformation!7750 rBis!178)) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) (and b!4211334 b_free!123277 (= (toChars!10329 (transformation!7750 (h!51723 rules!3967))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) (and b!4211319 b_free!123289) (and b!4211311 b_free!123281 (= (toChars!10329 (transformation!7750 (rule!10864 t!8364))) (toChars!10329 (transformation!7750 (rule!10864 tBis!41))))) b_lambda!124069)))

(check-sat (not d!1241181) (not b!4211720) (not b!4211692) (not d!1241157) (not b!4211687) tp_is_empty!22277 (not b!4211732) (not b!4211388) (not b!4211686) (not b!4211774) b_and!331449 (not b!4211442) (not d!1241263) (not b!4211542) (not b_next!123991) (not b!4211462) (not b!4211446) (not b!4211712) (not b!4211719) (not d!1241165) (not b!4211457) (not b!4211766) (not b!4211682) (not d!1241245) b_and!331445 b_and!331441 (not b!4211463) (not d!1241187) (not b!4211384) (not b!4211464) (not b!4211370) (not b_next!123985) (not b_next!124001) (not b!4211727) (not b_next!123993) (not d!1241261) (not b!4211691) (not b!4211731) (not d!1241209) b_and!331501 (not b!4211705) (not b_next!123983) (not b!4211697) (not b!4211738) (not b!4211721) (not d!1241179) (not b!4211684) (not b!4211698) (not b!4211702) (not b!4211443) (not d!1241171) (not b!4211716) (not b!4211444) (not d!1241177) (not b!4211703) (not b!4211780) (not d!1241249) (not b!4211456) (not b!4211775) (not d!1241247) (not b!4211451) (not b!4211772) b_and!331497 (not b!4211771) (not tb!252823) (not d!1241273) (not b!4211369) (not b!4211448) (not b!4211726) (not b_lambda!124065) (not b!4211445) (not bm!292969) (not d!1241251) (not b!4211765) (not b_lambda!124069) (not b_next!123979) (not b!4211737) (not b!4211476) (not b!4211761) b_and!331437 (not b!4211764) (not b_next!123987) (not b!4211681) (not b!4211368) (not b!4211769) (not b!4211730) b_and!331507 (not b!4211762) b_and!331505 (not d!1241213) (not b!4211768) (not bm!292967) (not b_next!123981) (not b!4211750) (not b!4211389) (not b!4211696) (not b!4211778) (not b!4211685) (not b_lambda!124067) (not b!4211440) (not b!4211700) (not b!4211689) (not b!4211725) (not b_next!123989) (not b!4211752) (not b!4211704) b_and!331503 (not b!4211688) (not b!4211447) (not b!4211770) (not b!4211751) (not b!4211713) (not tb!252815) (not b!4211701) (not b!4211717) (not b!4211477) (not b!4211541) (not b!4211385) (not b!4211722) (not b_next!123999) (not d!1241269) (not b!4211480) (not b!4211724) (not b!4211465) (not b!4211693) (not b!4211728) (not b!4211729) (not b!4211710) (not b!4211776) b_and!331499 (not d!1241257) (not b!4211779) (not b!4211561) (not d!1241265))
(check-sat b_and!331449 (not b_next!123991) b_and!331445 b_and!331441 (not b_next!123983) b_and!331497 (not b_next!123987) (not b_next!123981) (not b_next!123989) b_and!331503 (not b_next!123999) b_and!331499 (not b_next!123985) (not b_next!124001) (not b_next!123993) b_and!331501 b_and!331437 (not b_next!123979) b_and!331507 b_and!331505)
