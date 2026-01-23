; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406498 () Bool)

(assert start!406498)

(declare-fun b!4246295 () Bool)

(declare-fun b_free!126051 () Bool)

(declare-fun b_next!126755 () Bool)

(assert (=> b!4246295 (= b_free!126051 (not b_next!126755))))

(declare-fun tp!1302468 () Bool)

(declare-fun b_and!336397 () Bool)

(assert (=> b!4246295 (= tp!1302468 b_and!336397)))

(declare-fun b_free!126053 () Bool)

(declare-fun b_next!126757 () Bool)

(assert (=> b!4246295 (= b_free!126053 (not b_next!126757))))

(declare-fun tp!1302472 () Bool)

(declare-fun b_and!336399 () Bool)

(assert (=> b!4246295 (= tp!1302472 b_and!336399)))

(declare-fun b!4246309 () Bool)

(declare-fun b_free!126055 () Bool)

(declare-fun b_next!126759 () Bool)

(assert (=> b!4246309 (= b_free!126055 (not b_next!126759))))

(declare-fun tp!1302463 () Bool)

(declare-fun b_and!336401 () Bool)

(assert (=> b!4246309 (= tp!1302463 b_and!336401)))

(declare-fun b_free!126057 () Bool)

(declare-fun b_next!126761 () Bool)

(assert (=> b!4246309 (= b_free!126057 (not b_next!126761))))

(declare-fun tp!1302473 () Bool)

(declare-fun b_and!336403 () Bool)

(assert (=> b!4246309 (= tp!1302473 b_and!336403)))

(declare-fun e!2637284 () Bool)

(assert (=> b!4246295 (= e!2637284 (and tp!1302468 tp!1302472))))

(declare-fun b!4246296 () Bool)

(declare-fun res!1745672 () Bool)

(declare-fun e!2637282 () Bool)

(assert (=> b!4246296 (=> (not res!1745672) (not e!2637282))))

(declare-datatypes ((C!25908 0))(
  ( (C!25909 (val!15144 Int)) )
))
(declare-datatypes ((List!47119 0))(
  ( (Nil!46995) (Cons!46995 (h!52415 C!25908) (t!351736 List!47119)) )
))
(declare-fun longerInput!62 () List!47119)

(declare-fun isEmpty!27800 (List!47119) Bool)

(assert (=> b!4246296 (= res!1745672 (not (isEmpty!27800 longerInput!62)))))

(declare-fun res!1745669 () Bool)

(assert (=> start!406498 (=> (not res!1745669) (not e!2637282))))

(declare-datatypes ((LexerInterface!7545 0))(
  ( (LexerInterfaceExt!7542 (__x!28583 Int)) (Lexer!7543) )
))
(declare-fun thiss!21641 () LexerInterface!7545)

(get-info :version)

(assert (=> start!406498 (= res!1745669 ((_ is Lexer!7543) thiss!21641))))

(assert (=> start!406498 e!2637282))

(assert (=> start!406498 true))

(declare-fun e!2637285 () Bool)

(assert (=> start!406498 e!2637285))

(declare-fun e!2637287 () Bool)

(assert (=> start!406498 e!2637287))

(declare-fun e!2637283 () Bool)

(assert (=> start!406498 e!2637283))

(declare-fun e!2637277 () Bool)

(assert (=> start!406498 e!2637277))

(declare-fun e!2637278 () Bool)

(assert (=> start!406498 e!2637278))

(declare-fun b!4246297 () Bool)

(declare-fun tp_is_empty!22701 () Bool)

(declare-fun tp!1302470 () Bool)

(assert (=> b!4246297 (= e!2637278 (and tp_is_empty!22701 tp!1302470))))

(declare-fun b!4246298 () Bool)

(declare-fun e!2637279 () Bool)

(declare-fun tp!1302466 () Bool)

(assert (=> b!4246298 (= e!2637277 (and e!2637279 tp!1302466))))

(declare-fun b!4246299 () Bool)

(declare-fun res!1745668 () Bool)

(assert (=> b!4246299 (=> (not res!1745668) (not e!2637282))))

(declare-datatypes ((List!47120 0))(
  ( (Nil!46996) (Cons!46996 (h!52416 (_ BitVec 16)) (t!351737 List!47120)) )
))
(declare-datatypes ((TokenValue!8180 0))(
  ( (FloatLiteralValue!16360 (text!57705 List!47120)) (TokenValueExt!8179 (__x!28584 Int)) (Broken!40900 (value!247085 List!47120)) (Object!8303) (End!8180) (Def!8180) (Underscore!8180) (Match!8180) (Else!8180) (Error!8180) (Case!8180) (If!8180) (Extends!8180) (Abstract!8180) (Class!8180) (Val!8180) (DelimiterValue!16360 (del!8240 List!47120)) (KeywordValue!8186 (value!247086 List!47120)) (CommentValue!16360 (value!247087 List!47120)) (WhitespaceValue!16360 (value!247088 List!47120)) (IndentationValue!8180 (value!247089 List!47120)) (String!54829) (Int32!8180) (Broken!40901 (value!247090 List!47120)) (Boolean!8181) (Unit!66022) (OperatorValue!8183 (op!8240 List!47120)) (IdentifierValue!16360 (value!247091 List!47120)) (IdentifierValue!16361 (value!247092 List!47120)) (WhitespaceValue!16361 (value!247093 List!47120)) (True!16360) (False!16360) (Broken!40902 (value!247094 List!47120)) (Broken!40903 (value!247095 List!47120)) (True!16361) (RightBrace!8180) (RightBracket!8180) (Colon!8180) (Null!8180) (Comma!8180) (LeftBracket!8180) (False!16361) (LeftBrace!8180) (ImaginaryLiteralValue!8180 (text!57706 List!47120)) (StringLiteralValue!24540 (value!247096 List!47120)) (EOFValue!8180 (value!247097 List!47120)) (IdentValue!8180 (value!247098 List!47120)) (DelimiterValue!16361 (value!247099 List!47120)) (DedentValue!8180 (value!247100 List!47120)) (NewLineValue!8180 (value!247101 List!47120)) (IntegerValue!24540 (value!247102 (_ BitVec 32)) (text!57707 List!47120)) (IntegerValue!24541 (value!247103 Int) (text!57708 List!47120)) (Times!8180) (Or!8180) (Equal!8180) (Minus!8180) (Broken!40904 (value!247104 List!47120)) (And!8180) (Div!8180) (LessEqual!8180) (Mod!8180) (Concat!21035) (Not!8180) (Plus!8180) (SpaceValue!8180 (value!247105 List!47120)) (IntegerValue!24542 (value!247106 Int) (text!57709 List!47120)) (StringLiteralValue!24541 (text!57710 List!47120)) (FloatLiteralValue!16361 (text!57711 List!47120)) (BytesLiteralValue!8180 (value!247107 List!47120)) (CommentValue!16361 (value!247108 List!47120)) (StringLiteralValue!24542 (value!247109 List!47120)) (ErrorTokenValue!8180 (msg!8241 List!47120)) )
))
(declare-datatypes ((IArray!28327 0))(
  ( (IArray!28328 (innerList!14221 List!47119)) )
))
(declare-datatypes ((Conc!14161 0))(
  ( (Node!14161 (left!34890 Conc!14161) (right!35220 Conc!14161) (csize!28552 Int) (cheight!14372 Int)) (Leaf!21895 (xs!17467 IArray!28327) (csize!28553 Int)) (Empty!14161) )
))
(declare-datatypes ((BalanceConc!27916 0))(
  ( (BalanceConc!27917 (c!721250 Conc!14161)) )
))
(declare-datatypes ((TokenValueInjection!15788 0))(
  ( (TokenValueInjection!15789 (toValue!10714 Int) (toChars!10573 Int)) )
))
(declare-datatypes ((Regex!12855 0))(
  ( (ElementMatch!12855 (c!721251 C!25908)) (Concat!21036 (regOne!26222 Regex!12855) (regTwo!26222 Regex!12855)) (EmptyExpr!12855) (Star!12855 (reg!13184 Regex!12855)) (EmptyLang!12855) (Union!12855 (regOne!26223 Regex!12855) (regTwo!26223 Regex!12855)) )
))
(declare-datatypes ((String!54830 0))(
  ( (String!54831 (value!247110 String)) )
))
(declare-datatypes ((Rule!15700 0))(
  ( (Rule!15701 (regex!7950 Regex!12855) (tag!8814 String!54830) (isSeparator!7950 Bool) (transformation!7950 TokenValueInjection!15788)) )
))
(declare-datatypes ((List!47121 0))(
  ( (Nil!46997) (Cons!46997 (h!52417 Rule!15700) (t!351738 List!47121)) )
))
(declare-fun rules!2971 () List!47121)

(declare-fun rulesInvariant!6656 (LexerInterface!7545 List!47121) Bool)

(assert (=> b!4246299 (= res!1745668 (rulesInvariant!6656 thiss!21641 rules!2971))))

(declare-fun b!4246300 () Bool)

(declare-fun tp!1302464 () Bool)

(assert (=> b!4246300 (= e!2637287 (and tp_is_empty!22701 tp!1302464))))

(declare-fun b!4246301 () Bool)

(declare-fun res!1745667 () Bool)

(assert (=> b!4246301 (=> (not res!1745667) (not e!2637282))))

(declare-fun shorterInput!62 () List!47119)

(declare-fun size!34418 (List!47119) Int)

(assert (=> b!4246301 (= res!1745667 (> (size!34418 longerInput!62) (size!34418 shorterInput!62)))))

(declare-fun b!4246302 () Bool)

(declare-datatypes ((Token!14526 0))(
  ( (Token!14527 (value!247111 TokenValue!8180) (rule!11080 Rule!15700) (size!34419 Int) (originalCharacters!8294 List!47119)) )
))
(declare-datatypes ((List!47122 0))(
  ( (Nil!46998) (Cons!46998 (h!52418 Token!14526) (t!351739 List!47122)) )
))
(declare-fun tokens!592 () List!47122)

(declare-fun e!2637288 () Bool)

(declare-fun tp!1302465 () Bool)

(declare-fun inv!61758 (String!54830) Bool)

(declare-fun inv!61761 (TokenValueInjection!15788) Bool)

(assert (=> b!4246302 (= e!2637288 (and tp!1302465 (inv!61758 (tag!8814 (rule!11080 (h!52418 tokens!592)))) (inv!61761 (transformation!7950 (rule!11080 (h!52418 tokens!592)))) e!2637284))))

(declare-fun b!4246303 () Bool)

(declare-fun res!1745671 () Bool)

(assert (=> b!4246303 (=> (not res!1745671) (not e!2637282))))

(declare-fun isEmpty!27801 (List!47121) Bool)

(assert (=> b!4246303 (= res!1745671 (not (isEmpty!27801 rules!2971)))))

(declare-fun b!4246304 () Bool)

(declare-fun tp!1302471 () Bool)

(declare-fun e!2637289 () Bool)

(declare-fun inv!61762 (Token!14526) Bool)

(assert (=> b!4246304 (= e!2637283 (and (inv!61762 (h!52418 tokens!592)) e!2637289 tp!1302471))))

(declare-fun b!4246305 () Bool)

(declare-fun res!1745670 () Bool)

(assert (=> b!4246305 (=> (not res!1745670) (not e!2637282))))

(declare-fun suffix!1284 () List!47119)

(declare-datatypes ((tuple2!44560 0))(
  ( (tuple2!44561 (_1!25414 List!47122) (_2!25414 List!47119)) )
))
(declare-fun lexList!2051 (LexerInterface!7545 List!47121 List!47119) tuple2!44560)

(assert (=> b!4246305 (= res!1745670 (= (lexList!2051 thiss!21641 rules!2971 longerInput!62) (tuple2!44561 tokens!592 suffix!1284)))))

(declare-fun tp!1302474 () Bool)

(declare-fun b!4246306 () Bool)

(declare-fun inv!21 (TokenValue!8180) Bool)

(assert (=> b!4246306 (= e!2637289 (and (inv!21 (value!247111 (h!52418 tokens!592))) e!2637288 tp!1302474))))

(declare-fun b!4246307 () Bool)

(assert (=> b!4246307 (= e!2637282 false)))

(declare-fun lt!1507594 () Bool)

(declare-fun rulesValidInductive!2988 (LexerInterface!7545 List!47121) Bool)

(assert (=> b!4246307 (= lt!1507594 (rulesValidInductive!2988 thiss!21641 rules!2971))))

(declare-fun b!4246308 () Bool)

(declare-fun tp!1302469 () Bool)

(assert (=> b!4246308 (= e!2637285 (and tp_is_empty!22701 tp!1302469))))

(declare-fun e!2637280 () Bool)

(assert (=> b!4246309 (= e!2637280 (and tp!1302463 tp!1302473))))

(declare-fun b!4246310 () Bool)

(declare-fun tp!1302467 () Bool)

(assert (=> b!4246310 (= e!2637279 (and tp!1302467 (inv!61758 (tag!8814 (h!52417 rules!2971))) (inv!61761 (transformation!7950 (h!52417 rules!2971))) e!2637280))))

(assert (= (and start!406498 res!1745669) b!4246303))

(assert (= (and b!4246303 res!1745671) b!4246299))

(assert (= (and b!4246299 res!1745668) b!4246296))

(assert (= (and b!4246296 res!1745672) b!4246301))

(assert (= (and b!4246301 res!1745667) b!4246305))

(assert (= (and b!4246305 res!1745670) b!4246307))

(assert (= (and start!406498 ((_ is Cons!46995) suffix!1284)) b!4246308))

(assert (= (and start!406498 ((_ is Cons!46995) longerInput!62)) b!4246300))

(assert (= b!4246302 b!4246295))

(assert (= b!4246306 b!4246302))

(assert (= b!4246304 b!4246306))

(assert (= (and start!406498 ((_ is Cons!46998) tokens!592)) b!4246304))

(assert (= b!4246310 b!4246309))

(assert (= b!4246298 b!4246310))

(assert (= (and start!406498 ((_ is Cons!46997) rules!2971)) b!4246298))

(assert (= (and start!406498 ((_ is Cons!46995) shorterInput!62)) b!4246297))

(declare-fun m!4831249 () Bool)

(assert (=> b!4246305 m!4831249))

(declare-fun m!4831251 () Bool)

(assert (=> b!4246299 m!4831251))

(declare-fun m!4831253 () Bool)

(assert (=> b!4246310 m!4831253))

(declare-fun m!4831255 () Bool)

(assert (=> b!4246310 m!4831255))

(declare-fun m!4831257 () Bool)

(assert (=> b!4246306 m!4831257))

(declare-fun m!4831259 () Bool)

(assert (=> b!4246304 m!4831259))

(declare-fun m!4831261 () Bool)

(assert (=> b!4246303 m!4831261))

(declare-fun m!4831263 () Bool)

(assert (=> b!4246302 m!4831263))

(declare-fun m!4831265 () Bool)

(assert (=> b!4246302 m!4831265))

(declare-fun m!4831267 () Bool)

(assert (=> b!4246301 m!4831267))

(declare-fun m!4831269 () Bool)

(assert (=> b!4246301 m!4831269))

(declare-fun m!4831271 () Bool)

(assert (=> b!4246296 m!4831271))

(declare-fun m!4831273 () Bool)

(assert (=> b!4246307 m!4831273))

(check-sat b_and!336399 b_and!336403 b_and!336397 (not b!4246308) (not b!4246304) (not b!4246303) (not b!4246298) tp_is_empty!22701 (not b_next!126755) (not b_next!126759) (not b!4246302) (not b!4246306) (not b!4246307) (not b!4246300) (not b!4246305) (not b!4246310) (not b!4246299) (not b!4246297) (not b_next!126761) b_and!336401 (not b_next!126757) (not b!4246296) (not b!4246301))
(check-sat b_and!336399 b_and!336403 b_and!336397 (not b_next!126761) (not b_next!126755) (not b_next!126759) b_and!336401 (not b_next!126757))
