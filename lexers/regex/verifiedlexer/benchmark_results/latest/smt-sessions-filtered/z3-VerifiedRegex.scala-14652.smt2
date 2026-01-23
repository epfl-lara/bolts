; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756900 () Bool)

(assert start!756900)

(declare-fun b!8039317 () Bool)

(declare-fun b_free!135347 () Bool)

(declare-fun b_next!136137 () Bool)

(assert (=> b!8039317 (= b_free!135347 (not b_next!136137))))

(declare-fun tp!2407968 () Bool)

(declare-fun b_and!353783 () Bool)

(assert (=> b!8039317 (= tp!2407968 b_and!353783)))

(declare-fun b_free!135349 () Bool)

(declare-fun b_next!136139 () Bool)

(assert (=> b!8039317 (= b_free!135349 (not b_next!136139))))

(declare-fun tp!2407970 () Bool)

(declare-fun b_and!353785 () Bool)

(assert (=> b!8039317 (= tp!2407970 b_and!353785)))

(declare-fun b!8039333 () Bool)

(declare-fun b_free!135351 () Bool)

(declare-fun b_next!136141 () Bool)

(assert (=> b!8039333 (= b_free!135351 (not b_next!136141))))

(declare-fun tp!2407981 () Bool)

(declare-fun b_and!353787 () Bool)

(assert (=> b!8039333 (= tp!2407981 b_and!353787)))

(declare-fun b_free!135353 () Bool)

(declare-fun b_next!136143 () Bool)

(assert (=> b!8039333 (= b_free!135353 (not b_next!136143))))

(declare-fun tp!2407974 () Bool)

(declare-fun b_and!353789 () Bool)

(assert (=> b!8039333 (= tp!2407974 b_and!353789)))

(declare-fun b!8039334 () Bool)

(declare-fun b_free!135355 () Bool)

(declare-fun b_next!136145 () Bool)

(assert (=> b!8039334 (= b_free!135355 (not b_next!136145))))

(declare-fun tp!2407973 () Bool)

(declare-fun b_and!353791 () Bool)

(assert (=> b!8039334 (= tp!2407973 b_and!353791)))

(declare-fun b_free!135357 () Bool)

(declare-fun b_next!136147 () Bool)

(assert (=> b!8039334 (= b_free!135357 (not b_next!136147))))

(declare-fun tp!2407975 () Bool)

(declare-fun b_and!353793 () Bool)

(assert (=> b!8039334 (= tp!2407975 b_and!353793)))

(declare-fun b!8039318 () Bool)

(declare-fun b_free!135359 () Bool)

(declare-fun b_next!136149 () Bool)

(assert (=> b!8039318 (= b_free!135359 (not b_next!136149))))

(declare-fun tp!2407980 () Bool)

(declare-fun b_and!353795 () Bool)

(assert (=> b!8039318 (= tp!2407980 b_and!353795)))

(declare-fun b_free!135361 () Bool)

(declare-fun b_next!136151 () Bool)

(assert (=> b!8039318 (= b_free!135361 (not b_next!136151))))

(declare-fun tp!2407977 () Bool)

(declare-fun b_and!353797 () Bool)

(assert (=> b!8039318 (= tp!2407977 b_and!353797)))

(declare-fun b!8039316 () Bool)

(declare-fun res!3177825 () Bool)

(declare-fun e!4735239 () Bool)

(assert (=> b!8039316 (=> (not res!3177825) (not e!4735239))))

(declare-datatypes ((List!75188 0))(
  ( (Nil!75062) (Cons!75062 (h!81510 (_ BitVec 16)) (t!390958 List!75188)) )
))
(declare-datatypes ((TokenValue!9006 0))(
  ( (FloatLiteralValue!18012 (text!63487 List!75188)) (TokenValueExt!9005 (__x!35293 Int)) (Broken!45030 (value!290631 List!75188)) (Object!9131) (End!9006) (Def!9006) (Underscore!9006) (Match!9006) (Else!9006) (Error!9006) (Case!9006) (If!9006) (Extends!9006) (Abstract!9006) (Class!9006) (Val!9006) (DelimiterValue!18012 (del!9066 List!75188)) (KeywordValue!9012 (value!290632 List!75188)) (CommentValue!18012 (value!290633 List!75188)) (WhitespaceValue!18012 (value!290634 List!75188)) (IndentationValue!9006 (value!290635 List!75188)) (String!84803) (Int32!9006) (Broken!45031 (value!290636 List!75188)) (Boolean!9007) (Unit!171009) (OperatorValue!9009 (op!9066 List!75188)) (IdentifierValue!18012 (value!290637 List!75188)) (IdentifierValue!18013 (value!290638 List!75188)) (WhitespaceValue!18013 (value!290639 List!75188)) (True!18012) (False!18012) (Broken!45032 (value!290640 List!75188)) (Broken!45033 (value!290641 List!75188)) (True!18013) (RightBrace!9006) (RightBracket!9006) (Colon!9006) (Null!9006) (Comma!9006) (LeftBracket!9006) (False!18013) (LeftBrace!9006) (ImaginaryLiteralValue!9006 (text!63488 List!75188)) (StringLiteralValue!27018 (value!290642 List!75188)) (EOFValue!9006 (value!290643 List!75188)) (IdentValue!9006 (value!290644 List!75188)) (DelimiterValue!18013 (value!290645 List!75188)) (DedentValue!9006 (value!290646 List!75188)) (NewLineValue!9006 (value!290647 List!75188)) (IntegerValue!27018 (value!290648 (_ BitVec 32)) (text!63489 List!75188)) (IntegerValue!27019 (value!290649 Int) (text!63490 List!75188)) (Times!9006) (Or!9006) (Equal!9006) (Minus!9006) (Broken!45034 (value!290650 List!75188)) (And!9006) (Div!9006) (LessEqual!9006) (Mod!9006) (Concat!30763) (Not!9006) (Plus!9006) (SpaceValue!9006 (value!290651 List!75188)) (IntegerValue!27020 (value!290652 Int) (text!63491 List!75188)) (StringLiteralValue!27019 (text!63492 List!75188)) (FloatLiteralValue!18013 (text!63493 List!75188)) (BytesLiteralValue!9006 (value!290653 List!75188)) (CommentValue!18013 (value!290654 List!75188)) (StringLiteralValue!27020 (value!290655 List!75188)) (ErrorTokenValue!9006 (msg!9067 List!75188)) )
))
(declare-datatypes ((C!43852 0))(
  ( (C!43853 (val!32702 Int)) )
))
(declare-datatypes ((List!75189 0))(
  ( (Nil!75063) (Cons!75063 (h!81511 C!43852) (t!390959 List!75189)) )
))
(declare-datatypes ((IArray!31969 0))(
  ( (IArray!31970 (innerList!16042 List!75189)) )
))
(declare-datatypes ((Conc!15954 0))(
  ( (Node!15954 (left!57246 Conc!15954) (right!57576 Conc!15954) (csize!32138 Int) (cheight!16165 Int)) (Leaf!30607 (xs!19352 IArray!31969) (csize!32139 Int)) (Empty!15954) )
))
(declare-datatypes ((BalanceConc!30864 0))(
  ( (BalanceConc!30865 (c!1474817 Conc!15954)) )
))
(declare-datatypes ((Regex!21757 0))(
  ( (ElementMatch!21757 (c!1474818 C!43852)) (Concat!30764 (regOne!44026 Regex!21757) (regTwo!44026 Regex!21757)) (EmptyExpr!21757) (Star!21757 (reg!22086 Regex!21757)) (EmptyLang!21757) (Union!21757 (regOne!44027 Regex!21757) (regTwo!44027 Regex!21757)) )
))
(declare-datatypes ((String!84804 0))(
  ( (String!84805 (value!290656 String)) )
))
(declare-datatypes ((TokenValueInjection!17320 0))(
  ( (TokenValueInjection!17321 (toValue!11757 Int) (toChars!11616 Int)) )
))
(declare-datatypes ((Rule!17172 0))(
  ( (Rule!17173 (regex!8686 Regex!21757) (tag!9550 String!84804) (isSeparator!8686 Bool) (transformation!8686 TokenValueInjection!17320)) )
))
(declare-datatypes ((List!75190 0))(
  ( (Nil!75064) (Cons!75064 (h!81512 Rule!17172) (t!390960 List!75190)) )
))
(declare-fun rules!4142 () List!75190)

(declare-fun rulesRec!188 () List!75190)

(declare-fun sepAndNonSepRulesDisjointChars!2046 (List!75190 List!75190) Bool)

(assert (=> b!8039316 (= res!3177825 (sepAndNonSepRulesDisjointChars!2046 rules!4142 rulesRec!188))))

(declare-fun e!4735230 () Bool)

(assert (=> b!8039318 (= e!4735230 (and tp!2407980 tp!2407977))))

(declare-fun b!8039319 () Bool)

(declare-fun e!4735227 () Bool)

(declare-fun e!4735238 () Bool)

(declare-fun tp!2407969 () Bool)

(assert (=> b!8039319 (= e!4735227 (and e!4735238 tp!2407969))))

(declare-fun e!4735228 () Bool)

(declare-fun e!4735236 () Bool)

(declare-fun rNSep!142 () Rule!17172)

(declare-fun b!8039320 () Bool)

(declare-fun tp!2407979 () Bool)

(declare-fun inv!96882 (String!84804) Bool)

(declare-fun inv!96884 (TokenValueInjection!17320) Bool)

(assert (=> b!8039320 (= e!4735228 (and tp!2407979 (inv!96882 (tag!9550 rNSep!142)) (inv!96884 (transformation!8686 rNSep!142)) e!4735236))))

(declare-fun b!8039321 () Bool)

(declare-fun res!3177820 () Bool)

(assert (=> b!8039321 (=> (not res!3177820) (not e!4735239))))

(declare-datatypes ((LexerInterface!8276 0))(
  ( (LexerInterfaceExt!8273 (__x!35294 Int)) (Lexer!8274) )
))
(declare-fun thiss!27054 () LexerInterface!8276)

(declare-fun rulesInvariant!6744 (LexerInterface!8276 List!75190) Bool)

(assert (=> b!8039321 (= res!3177820 (rulesInvariant!6744 thiss!27054 rules!4142))))

(declare-fun b!8039322 () Bool)

(declare-fun res!3177821 () Bool)

(assert (=> b!8039322 (=> (not res!3177821) (not e!4735239))))

(declare-fun contains!20955 (List!75190 Rule!17172) Bool)

(assert (=> b!8039322 (= res!3177821 (contains!20955 (t!390960 rulesRec!188) rNSep!142))))

(declare-fun b!8039323 () Bool)

(declare-fun res!3177824 () Bool)

(assert (=> b!8039323 (=> (not res!3177824) (not e!4735239))))

(get-info :version)

(assert (=> b!8039323 (= res!3177824 (and (or (not ((_ is Cons!75064) rulesRec!188)) (not (= (h!81512 rulesRec!188) rNSep!142))) ((_ is Cons!75064) rulesRec!188)))))

(declare-fun b!8039324 () Bool)

(assert (=> b!8039324 (= e!4735239 false)))

(declare-fun lt!2722182 () Bool)

(assert (=> b!8039324 (= lt!2722182 (sepAndNonSepRulesDisjointChars!2046 rules!4142 (t!390960 rulesRec!188)))))

(declare-fun tp!2407978 () Bool)

(declare-fun e!4735240 () Bool)

(declare-fun b!8039325 () Bool)

(assert (=> b!8039325 (= e!4735240 (and tp!2407978 (inv!96882 (tag!9550 (h!81512 rulesRec!188))) (inv!96884 (transformation!8686 (h!81512 rulesRec!188))) e!4735230))))

(declare-fun b!8039326 () Bool)

(declare-fun res!3177826 () Bool)

(assert (=> b!8039326 (=> (not res!3177826) (not e!4735239))))

(declare-fun rSep!142 () Rule!17172)

(declare-fun c!6865 () C!43852)

(declare-fun contains!20956 (List!75189 C!43852) Bool)

(declare-fun usedCharacters!1264 (Regex!21757) List!75189)

(assert (=> b!8039326 (= res!3177826 (contains!20956 (usedCharacters!1264 (regex!8686 rSep!142)) c!6865))))

(declare-fun tp!2407971 () Bool)

(declare-fun b!8039327 () Bool)

(declare-fun e!4735235 () Bool)

(assert (=> b!8039327 (= e!4735238 (and tp!2407971 (inv!96882 (tag!9550 (h!81512 rules!4142))) (inv!96884 (transformation!8686 (h!81512 rules!4142))) e!4735235))))

(declare-fun e!4735229 () Bool)

(assert (=> b!8039317 (= e!4735229 (and tp!2407968 tp!2407970))))

(declare-fun res!3177823 () Bool)

(assert (=> start!756900 (=> (not res!3177823) (not e!4735239))))

(assert (=> start!756900 (= res!3177823 ((_ is Lexer!8274) thiss!27054))))

(assert (=> start!756900 e!4735239))

(assert (=> start!756900 true))

(assert (=> start!756900 e!4735227))

(declare-fun e!4735237 () Bool)

(assert (=> start!756900 e!4735237))

(declare-fun e!4735241 () Bool)

(assert (=> start!756900 e!4735241))

(assert (=> start!756900 e!4735228))

(declare-fun tp_is_empty!54509 () Bool)

(assert (=> start!756900 tp_is_empty!54509))

(declare-fun b!8039328 () Bool)

(declare-fun res!3177819 () Bool)

(assert (=> b!8039328 (=> (not res!3177819) (not e!4735239))))

(assert (=> b!8039328 (= res!3177819 (and (not (isSeparator!8686 rNSep!142)) (isSeparator!8686 rSep!142)))))

(declare-fun b!8039329 () Bool)

(declare-fun res!3177827 () Bool)

(assert (=> b!8039329 (=> (not res!3177827) (not e!4735239))))

(assert (=> b!8039329 (= res!3177827 (contains!20955 rulesRec!188 rNSep!142))))

(declare-fun b!8039330 () Bool)

(declare-fun res!3177822 () Bool)

(assert (=> b!8039330 (=> (not res!3177822) (not e!4735239))))

(assert (=> b!8039330 (= res!3177822 (contains!20955 rules!4142 rNSep!142))))

(declare-fun b!8039331 () Bool)

(declare-fun res!3177818 () Bool)

(assert (=> b!8039331 (=> (not res!3177818) (not e!4735239))))

(assert (=> b!8039331 (= res!3177818 (contains!20955 rules!4142 rSep!142))))

(declare-fun b!8039332 () Bool)

(declare-fun tp!2407972 () Bool)

(assert (=> b!8039332 (= e!4735241 (and e!4735240 tp!2407972))))

(assert (=> b!8039333 (= e!4735236 (and tp!2407981 tp!2407974))))

(assert (=> b!8039334 (= e!4735235 (and tp!2407973 tp!2407975))))

(declare-fun b!8039335 () Bool)

(declare-fun tp!2407976 () Bool)

(assert (=> b!8039335 (= e!4735237 (and tp!2407976 (inv!96882 (tag!9550 rSep!142)) (inv!96884 (transformation!8686 rSep!142)) e!4735229))))

(assert (= (and start!756900 res!3177823) b!8039321))

(assert (= (and b!8039321 res!3177820) b!8039331))

(assert (= (and b!8039331 res!3177818) b!8039329))

(assert (= (and b!8039329 res!3177827) b!8039330))

(assert (= (and b!8039330 res!3177822) b!8039328))

(assert (= (and b!8039328 res!3177819) b!8039326))

(assert (= (and b!8039326 res!3177826) b!8039316))

(assert (= (and b!8039316 res!3177825) b!8039323))

(assert (= (and b!8039323 res!3177824) b!8039322))

(assert (= (and b!8039322 res!3177821) b!8039324))

(assert (= b!8039327 b!8039334))

(assert (= b!8039319 b!8039327))

(assert (= (and start!756900 ((_ is Cons!75064) rules!4142)) b!8039319))

(assert (= b!8039335 b!8039317))

(assert (= start!756900 b!8039335))

(assert (= b!8039325 b!8039318))

(assert (= b!8039332 b!8039325))

(assert (= (and start!756900 ((_ is Cons!75064) rulesRec!188)) b!8039332))

(assert (= b!8039320 b!8039333))

(assert (= start!756900 b!8039320))

(declare-fun m!8394304 () Bool)

(assert (=> b!8039330 m!8394304))

(declare-fun m!8394306 () Bool)

(assert (=> b!8039322 m!8394306))

(declare-fun m!8394308 () Bool)

(assert (=> b!8039316 m!8394308))

(declare-fun m!8394310 () Bool)

(assert (=> b!8039331 m!8394310))

(declare-fun m!8394312 () Bool)

(assert (=> b!8039335 m!8394312))

(declare-fun m!8394314 () Bool)

(assert (=> b!8039335 m!8394314))

(declare-fun m!8394316 () Bool)

(assert (=> b!8039321 m!8394316))

(declare-fun m!8394318 () Bool)

(assert (=> b!8039327 m!8394318))

(declare-fun m!8394320 () Bool)

(assert (=> b!8039327 m!8394320))

(declare-fun m!8394322 () Bool)

(assert (=> b!8039324 m!8394322))

(declare-fun m!8394324 () Bool)

(assert (=> b!8039326 m!8394324))

(assert (=> b!8039326 m!8394324))

(declare-fun m!8394326 () Bool)

(assert (=> b!8039326 m!8394326))

(declare-fun m!8394328 () Bool)

(assert (=> b!8039320 m!8394328))

(declare-fun m!8394330 () Bool)

(assert (=> b!8039320 m!8394330))

(declare-fun m!8394332 () Bool)

(assert (=> b!8039325 m!8394332))

(declare-fun m!8394334 () Bool)

(assert (=> b!8039325 m!8394334))

(declare-fun m!8394336 () Bool)

(assert (=> b!8039329 m!8394336))

(check-sat b_and!353789 (not b!8039329) b_and!353787 (not b_next!136147) (not b!8039335) b_and!353791 (not b!8039319) (not b_next!136137) (not b!8039316) (not b!8039326) (not b_next!136145) (not b!8039325) (not b!8039320) b_and!353795 (not b_next!136139) b_and!353783 b_and!353797 (not b_next!136149) (not b!8039321) tp_is_empty!54509 (not b_next!136141) (not b!8039322) (not b!8039332) b_and!353785 (not b!8039330) b_and!353793 (not b!8039327) (not b_next!136151) (not b!8039331) (not b!8039324) (not b_next!136143))
(check-sat (not b_next!136141) b_and!353789 b_and!353785 b_and!353787 (not b_next!136147) b_and!353791 b_and!353793 (not b_next!136151) (not b_next!136137) (not b_next!136145) b_and!353795 (not b_next!136143) (not b_next!136139) b_and!353783 b_and!353797 (not b_next!136149))
