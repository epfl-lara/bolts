; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757196 () Bool)

(assert start!757196)

(declare-fun b!8042478 () Bool)

(declare-fun b_free!135855 () Bool)

(declare-fun b_next!136645 () Bool)

(assert (=> b!8042478 (= b_free!135855 (not b_next!136645))))

(declare-fun tp!2409789 () Bool)

(declare-fun b_and!354291 () Bool)

(assert (=> b!8042478 (= tp!2409789 b_and!354291)))

(declare-fun b_free!135857 () Bool)

(declare-fun b_next!136647 () Bool)

(assert (=> b!8042478 (= b_free!135857 (not b_next!136647))))

(declare-fun tp!2409791 () Bool)

(declare-fun b_and!354293 () Bool)

(assert (=> b!8042478 (= tp!2409791 b_and!354293)))

(declare-fun b!8042490 () Bool)

(declare-fun b_free!135859 () Bool)

(declare-fun b_next!136649 () Bool)

(assert (=> b!8042490 (= b_free!135859 (not b_next!136649))))

(declare-fun tp!2409792 () Bool)

(declare-fun b_and!354295 () Bool)

(assert (=> b!8042490 (= tp!2409792 b_and!354295)))

(declare-fun b_free!135861 () Bool)

(declare-fun b_next!136651 () Bool)

(assert (=> b!8042490 (= b_free!135861 (not b_next!136651))))

(declare-fun tp!2409795 () Bool)

(declare-fun b_and!354297 () Bool)

(assert (=> b!8042490 (= tp!2409795 b_and!354297)))

(declare-fun b!8042477 () Bool)

(declare-fun b_free!135863 () Bool)

(declare-fun b_next!136653 () Bool)

(assert (=> b!8042477 (= b_free!135863 (not b_next!136653))))

(declare-fun tp!2409786 () Bool)

(declare-fun b_and!354299 () Bool)

(assert (=> b!8042477 (= tp!2409786 b_and!354299)))

(declare-fun b_free!135865 () Bool)

(declare-fun b_next!136655 () Bool)

(assert (=> b!8042477 (= b_free!135865 (not b_next!136655))))

(declare-fun tp!2409788 () Bool)

(declare-fun b_and!354301 () Bool)

(assert (=> b!8042477 (= tp!2409788 b_and!354301)))

(declare-fun res!3179114 () Bool)

(declare-fun e!4737466 () Bool)

(assert (=> start!757196 (=> (not res!3179114) (not e!4737466))))

(declare-datatypes ((LexerInterface!8302 0))(
  ( (LexerInterfaceExt!8299 (__x!35345 Int)) (Lexer!8300) )
))
(declare-fun thiss!27104 () LexerInterface!8302)

(get-info :version)

(assert (=> start!757196 (= res!3179114 ((_ is Lexer!8300) thiss!27104))))

(assert (=> start!757196 e!4737466))

(declare-fun e!4737470 () Bool)

(assert (=> start!757196 e!4737470))

(declare-fun tp_is_empty!54561 () Bool)

(assert (=> start!757196 tp_is_empty!54561))

(assert (=> start!757196 true))

(declare-fun e!4737467 () Bool)

(assert (=> start!757196 e!4737467))

(declare-fun e!4737468 () Bool)

(assert (=> start!757196 e!4737468))

(declare-fun e!4737471 () Bool)

(assert (=> b!8042477 (= e!4737471 (and tp!2409786 tp!2409788))))

(declare-fun e!4737474 () Bool)

(assert (=> b!8042478 (= e!4737474 (and tp!2409789 tp!2409791))))

(declare-fun b!8042479 () Bool)

(declare-fun res!3179111 () Bool)

(assert (=> b!8042479 (=> (not res!3179111) (not e!4737466))))

(declare-datatypes ((String!84933 0))(
  ( (String!84934 (value!291346 String)) )
))
(declare-datatypes ((C!43904 0))(
  ( (C!43905 (val!32728 Int)) )
))
(declare-datatypes ((List!75278 0))(
  ( (Nil!75152) (Cons!75152 (h!81600 C!43904) (t!391048 List!75278)) )
))
(declare-datatypes ((IArray!32021 0))(
  ( (IArray!32022 (innerList!16068 List!75278)) )
))
(declare-datatypes ((Conc!15980 0))(
  ( (Node!15980 (left!57289 Conc!15980) (right!57619 Conc!15980) (csize!32190 Int) (cheight!16191 Int)) (Leaf!30646 (xs!19378 IArray!32021) (csize!32191 Int)) (Empty!15980) )
))
(declare-datatypes ((List!75279 0))(
  ( (Nil!75153) (Cons!75153 (h!81601 (_ BitVec 16)) (t!391049 List!75279)) )
))
(declare-datatypes ((Regex!21783 0))(
  ( (ElementMatch!21783 (c!1475123 C!43904)) (Concat!30815 (regOne!44078 Regex!21783) (regTwo!44078 Regex!21783)) (EmptyExpr!21783) (Star!21783 (reg!22112 Regex!21783)) (EmptyLang!21783) (Union!21783 (regOne!44079 Regex!21783) (regTwo!44079 Regex!21783)) )
))
(declare-datatypes ((TokenValue!9032 0))(
  ( (FloatLiteralValue!18064 (text!63669 List!75279)) (TokenValueExt!9031 (__x!35346 Int)) (Broken!45160 (value!291347 List!75279)) (Object!9157) (End!9032) (Def!9032) (Underscore!9032) (Match!9032) (Else!9032) (Error!9032) (Case!9032) (If!9032) (Extends!9032) (Abstract!9032) (Class!9032) (Val!9032) (DelimiterValue!18064 (del!9092 List!75279)) (KeywordValue!9038 (value!291348 List!75279)) (CommentValue!18064 (value!291349 List!75279)) (WhitespaceValue!18064 (value!291350 List!75279)) (IndentationValue!9032 (value!291351 List!75279)) (String!84935) (Int32!9032) (Broken!45161 (value!291352 List!75279)) (Boolean!9033) (Unit!171045) (OperatorValue!9035 (op!9092 List!75279)) (IdentifierValue!18064 (value!291353 List!75279)) (IdentifierValue!18065 (value!291354 List!75279)) (WhitespaceValue!18065 (value!291355 List!75279)) (True!18064) (False!18064) (Broken!45162 (value!291356 List!75279)) (Broken!45163 (value!291357 List!75279)) (True!18065) (RightBrace!9032) (RightBracket!9032) (Colon!9032) (Null!9032) (Comma!9032) (LeftBracket!9032) (False!18065) (LeftBrace!9032) (ImaginaryLiteralValue!9032 (text!63670 List!75279)) (StringLiteralValue!27096 (value!291358 List!75279)) (EOFValue!9032 (value!291359 List!75279)) (IdentValue!9032 (value!291360 List!75279)) (DelimiterValue!18065 (value!291361 List!75279)) (DedentValue!9032 (value!291362 List!75279)) (NewLineValue!9032 (value!291363 List!75279)) (IntegerValue!27096 (value!291364 (_ BitVec 32)) (text!63671 List!75279)) (IntegerValue!27097 (value!291365 Int) (text!63672 List!75279)) (Times!9032) (Or!9032) (Equal!9032) (Minus!9032) (Broken!45164 (value!291366 List!75279)) (And!9032) (Div!9032) (LessEqual!9032) (Mod!9032) (Concat!30816) (Not!9032) (Plus!9032) (SpaceValue!9032 (value!291367 List!75279)) (IntegerValue!27098 (value!291368 Int) (text!63673 List!75279)) (StringLiteralValue!27097 (text!63674 List!75279)) (FloatLiteralValue!18065 (text!63675 List!75279)) (BytesLiteralValue!9032 (value!291369 List!75279)) (CommentValue!18065 (value!291370 List!75279)) (StringLiteralValue!27098 (value!291371 List!75279)) (ErrorTokenValue!9032 (msg!9093 List!75279)) )
))
(declare-datatypes ((BalanceConc!30916 0))(
  ( (BalanceConc!30917 (c!1475124 Conc!15980)) )
))
(declare-datatypes ((TokenValueInjection!17372 0))(
  ( (TokenValueInjection!17373 (toValue!11787 Int) (toChars!11646 Int)) )
))
(declare-datatypes ((Rule!17224 0))(
  ( (Rule!17225 (regex!8712 Regex!21783) (tag!9576 String!84933) (isSeparator!8712 Bool) (transformation!8712 TokenValueInjection!17372)) )
))
(declare-fun rNSep!153 () Rule!17224)

(declare-datatypes ((List!75280 0))(
  ( (Nil!75154) (Cons!75154 (h!81602 Rule!17224) (t!391050 List!75280)) )
))
(declare-fun rules!4166 () List!75280)

(declare-fun ruleDisjointCharsFromAllFromOtherType!986 (Rule!17224 List!75280) Bool)

(assert (=> b!8042479 (= res!3179111 (ruleDisjointCharsFromAllFromOtherType!986 rNSep!153 rules!4166))))

(declare-fun b!8042480 () Bool)

(declare-fun res!3179112 () Bool)

(assert (=> b!8042480 (=> (not res!3179112) (not e!4737466))))

(declare-fun rSep!153 () Rule!17224)

(declare-fun c!6885 () C!43904)

(declare-fun contains!21009 (List!75278 C!43904) Bool)

(declare-fun usedCharacters!1290 (Regex!21783) List!75278)

(assert (=> b!8042480 (= res!3179112 (contains!21009 (usedCharacters!1290 (regex!8712 rSep!153)) c!6885))))

(declare-fun b!8042481 () Bool)

(declare-fun e!4737477 () Bool)

(assert (=> b!8042481 (= e!4737466 (not e!4737477))))

(declare-fun res!3179110 () Bool)

(assert (=> b!8042481 (=> res!3179110 e!4737477)))

(declare-fun contains!21010 (List!75280 Rule!17224) Bool)

(assert (=> b!8042481 (= res!3179110 (not (contains!21010 (t!391050 rules!4166) rSep!153)))))

(declare-fun rulesInvariant!6770 (LexerInterface!8302 List!75280) Bool)

(assert (=> b!8042481 (rulesInvariant!6770 thiss!27104 (t!391050 rules!4166))))

(declare-datatypes ((Unit!171046 0))(
  ( (Unit!171047) )
))
(declare-fun lt!2722377 () Unit!171046)

(declare-fun lemmaInvariantOnRulesThenOnTail!886 (LexerInterface!8302 Rule!17224 List!75280) Unit!171046)

(assert (=> b!8042481 (= lt!2722377 (lemmaInvariantOnRulesThenOnTail!886 thiss!27104 (h!81602 rules!4166) (t!391050 rules!4166)))))

(declare-fun b!8042482 () Bool)

(declare-fun res!3179115 () Bool)

(assert (=> b!8042482 (=> (not res!3179115) (not e!4737466))))

(assert (=> b!8042482 (= res!3179115 (and (not (isSeparator!8712 rNSep!153)) (isSeparator!8712 rSep!153)))))

(declare-fun tp!2409794 () Bool)

(declare-fun b!8042483 () Bool)

(declare-fun inv!96947 (String!84933) Bool)

(declare-fun inv!96949 (TokenValueInjection!17372) Bool)

(assert (=> b!8042483 (= e!4737467 (and tp!2409794 (inv!96947 (tag!9576 rNSep!153)) (inv!96949 (transformation!8712 rNSep!153)) e!4737474))))

(declare-fun b!8042484 () Bool)

(declare-fun e!4737473 () Bool)

(declare-fun tp!2409793 () Bool)

(assert (=> b!8042484 (= e!4737470 (and e!4737473 tp!2409793))))

(declare-fun b!8042485 () Bool)

(declare-fun e!4737475 () Bool)

(declare-fun tp!2409787 () Bool)

(assert (=> b!8042485 (= e!4737473 (and tp!2409787 (inv!96947 (tag!9576 (h!81602 rules!4166))) (inv!96949 (transformation!8712 (h!81602 rules!4166))) e!4737475))))

(declare-fun b!8042486 () Bool)

(declare-fun res!3179113 () Bool)

(assert (=> b!8042486 (=> (not res!3179113) (not e!4737466))))

(assert (=> b!8042486 (= res!3179113 (and (or (not ((_ is Cons!75154) rules!4166)) (not (= (h!81602 rules!4166) rSep!153))) ((_ is Cons!75154) rules!4166)))))

(declare-fun b!8042487 () Bool)

(declare-fun res!3179117 () Bool)

(assert (=> b!8042487 (=> (not res!3179117) (not e!4737466))))

(assert (=> b!8042487 (= res!3179117 (contains!21010 rules!4166 rSep!153))))

(declare-fun tp!2409790 () Bool)

(declare-fun b!8042488 () Bool)

(assert (=> b!8042488 (= e!4737468 (and tp!2409790 (inv!96947 (tag!9576 rSep!153)) (inv!96949 (transformation!8712 rSep!153)) e!4737471))))

(declare-fun b!8042489 () Bool)

(assert (=> b!8042489 (= e!4737477 true)))

(declare-fun lt!2722378 () Bool)

(assert (=> b!8042489 (= lt!2722378 (ruleDisjointCharsFromAllFromOtherType!986 rNSep!153 (t!391050 rules!4166)))))

(assert (=> b!8042490 (= e!4737475 (and tp!2409792 tp!2409795))))

(declare-fun b!8042491 () Bool)

(declare-fun res!3179116 () Bool)

(assert (=> b!8042491 (=> (not res!3179116) (not e!4737466))))

(assert (=> b!8042491 (= res!3179116 (rulesInvariant!6770 thiss!27104 rules!4166))))

(assert (= (and start!757196 res!3179114) b!8042491))

(assert (= (and b!8042491 res!3179116) b!8042487))

(assert (= (and b!8042487 res!3179117) b!8042480))

(assert (= (and b!8042480 res!3179112) b!8042482))

(assert (= (and b!8042482 res!3179115) b!8042479))

(assert (= (and b!8042479 res!3179111) b!8042486))

(assert (= (and b!8042486 res!3179113) b!8042481))

(assert (= (and b!8042481 (not res!3179110)) b!8042489))

(assert (= b!8042485 b!8042490))

(assert (= b!8042484 b!8042485))

(assert (= (and start!757196 ((_ is Cons!75154) rules!4166)) b!8042484))

(assert (= b!8042483 b!8042478))

(assert (= start!757196 b!8042483))

(assert (= b!8042488 b!8042477))

(assert (= start!757196 b!8042488))

(declare-fun m!8396232 () Bool)

(assert (=> b!8042483 m!8396232))

(declare-fun m!8396234 () Bool)

(assert (=> b!8042483 m!8396234))

(declare-fun m!8396236 () Bool)

(assert (=> b!8042481 m!8396236))

(declare-fun m!8396238 () Bool)

(assert (=> b!8042481 m!8396238))

(declare-fun m!8396240 () Bool)

(assert (=> b!8042481 m!8396240))

(declare-fun m!8396242 () Bool)

(assert (=> b!8042487 m!8396242))

(declare-fun m!8396244 () Bool)

(assert (=> b!8042488 m!8396244))

(declare-fun m!8396246 () Bool)

(assert (=> b!8042488 m!8396246))

(declare-fun m!8396248 () Bool)

(assert (=> b!8042491 m!8396248))

(declare-fun m!8396250 () Bool)

(assert (=> b!8042489 m!8396250))

(declare-fun m!8396252 () Bool)

(assert (=> b!8042479 m!8396252))

(declare-fun m!8396254 () Bool)

(assert (=> b!8042485 m!8396254))

(declare-fun m!8396256 () Bool)

(assert (=> b!8042485 m!8396256))

(declare-fun m!8396258 () Bool)

(assert (=> b!8042480 m!8396258))

(assert (=> b!8042480 m!8396258))

(declare-fun m!8396260 () Bool)

(assert (=> b!8042480 m!8396260))

(check-sat (not b_next!136655) (not b!8042479) (not b!8042489) (not b!8042483) (not b_next!136653) tp_is_empty!54561 b_and!354301 (not b_next!136645) (not b!8042481) b_and!354291 (not b!8042485) (not b_next!136651) b_and!354295 (not b_next!136649) (not b!8042491) (not b!8042484) (not b!8042488) (not b_next!136647) b_and!354299 (not b!8042480) b_and!354293 (not b!8042487) b_and!354297)
(check-sat (not b_next!136655) b_and!354291 (not b_next!136651) (not b_next!136653) b_and!354301 (not b_next!136645) (not b_next!136647) b_and!354299 b_and!354295 (not b_next!136649) b_and!354293 b_and!354297)
