; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757400 () Bool)

(assert start!757400)

(declare-fun b!8044329 () Bool)

(declare-fun b_free!136135 () Bool)

(declare-fun b_next!136925 () Bool)

(assert (=> b!8044329 (= b_free!136135 (not b_next!136925))))

(declare-fun tp!2410759 () Bool)

(declare-fun b_and!354571 () Bool)

(assert (=> b!8044329 (= tp!2410759 b_and!354571)))

(declare-fun b_free!136137 () Bool)

(declare-fun b_next!136927 () Bool)

(assert (=> b!8044329 (= b_free!136137 (not b_next!136927))))

(declare-fun tp!2410758 () Bool)

(declare-fun b_and!354573 () Bool)

(assert (=> b!8044329 (= tp!2410758 b_and!354573)))

(declare-fun b!8044327 () Bool)

(declare-fun b_free!136139 () Bool)

(declare-fun b_next!136929 () Bool)

(assert (=> b!8044327 (= b_free!136139 (not b_next!136929))))

(declare-fun tp!2410763 () Bool)

(declare-fun b_and!354575 () Bool)

(assert (=> b!8044327 (= tp!2410763 b_and!354575)))

(declare-fun b_free!136141 () Bool)

(declare-fun b_next!136931 () Bool)

(assert (=> b!8044327 (= b_free!136141 (not b_next!136931))))

(declare-fun tp!2410764 () Bool)

(declare-fun b_and!354577 () Bool)

(assert (=> b!8044327 (= tp!2410764 b_and!354577)))

(declare-fun b!8044335 () Bool)

(declare-fun b_free!136143 () Bool)

(declare-fun b_next!136933 () Bool)

(assert (=> b!8044335 (= b_free!136143 (not b_next!136933))))

(declare-fun tp!2410761 () Bool)

(declare-fun b_and!354579 () Bool)

(assert (=> b!8044335 (= tp!2410761 b_and!354579)))

(declare-fun b_free!136145 () Bool)

(declare-fun b_next!136935 () Bool)

(assert (=> b!8044335 (= b_free!136145 (not b_next!136935))))

(declare-fun tp!2410762 () Bool)

(declare-fun b_and!354581 () Bool)

(assert (=> b!8044335 (= tp!2410762 b_and!354581)))

(declare-datatypes ((C!43944 0))(
  ( (C!43945 (val!32748 Int)) )
))
(declare-datatypes ((List!75348 0))(
  ( (Nil!75222) (Cons!75222 (h!81670 C!43944) (t!391118 List!75348)) )
))
(declare-datatypes ((IArray!32061 0))(
  ( (IArray!32062 (innerList!16088 List!75348)) )
))
(declare-datatypes ((Conc!16000 0))(
  ( (Node!16000 (left!57323 Conc!16000) (right!57653 Conc!16000) (csize!32230 Int) (cheight!16211 Int)) (Leaf!30676 (xs!19398 IArray!32061) (csize!32231 Int)) (Empty!16000) )
))
(declare-datatypes ((Regex!21803 0))(
  ( (ElementMatch!21803 (c!1475339 C!43944)) (Concat!30855 (regOne!44118 Regex!21803) (regTwo!44118 Regex!21803)) (EmptyExpr!21803) (Star!21803 (reg!22132 Regex!21803)) (EmptyLang!21803) (Union!21803 (regOne!44119 Regex!21803) (regTwo!44119 Regex!21803)) )
))
(declare-datatypes ((String!85033 0))(
  ( (String!85034 (value!291896 String)) )
))
(declare-datatypes ((List!75349 0))(
  ( (Nil!75223) (Cons!75223 (h!81671 (_ BitVec 16)) (t!391119 List!75349)) )
))
(declare-datatypes ((TokenValue!9052 0))(
  ( (FloatLiteralValue!18104 (text!63809 List!75349)) (TokenValueExt!9051 (__x!35385 Int)) (Broken!45260 (value!291897 List!75349)) (Object!9177) (End!9052) (Def!9052) (Underscore!9052) (Match!9052) (Else!9052) (Error!9052) (Case!9052) (If!9052) (Extends!9052) (Abstract!9052) (Class!9052) (Val!9052) (DelimiterValue!18104 (del!9112 List!75349)) (KeywordValue!9058 (value!291898 List!75349)) (CommentValue!18104 (value!291899 List!75349)) (WhitespaceValue!18104 (value!291900 List!75349)) (IndentationValue!9052 (value!291901 List!75349)) (String!85035) (Int32!9052) (Broken!45261 (value!291902 List!75349)) (Boolean!9053) (Unit!171093) (OperatorValue!9055 (op!9112 List!75349)) (IdentifierValue!18104 (value!291903 List!75349)) (IdentifierValue!18105 (value!291904 List!75349)) (WhitespaceValue!18105 (value!291905 List!75349)) (True!18104) (False!18104) (Broken!45262 (value!291906 List!75349)) (Broken!45263 (value!291907 List!75349)) (True!18105) (RightBrace!9052) (RightBracket!9052) (Colon!9052) (Null!9052) (Comma!9052) (LeftBracket!9052) (False!18105) (LeftBrace!9052) (ImaginaryLiteralValue!9052 (text!63810 List!75349)) (StringLiteralValue!27156 (value!291908 List!75349)) (EOFValue!9052 (value!291909 List!75349)) (IdentValue!9052 (value!291910 List!75349)) (DelimiterValue!18105 (value!291911 List!75349)) (DedentValue!9052 (value!291912 List!75349)) (NewLineValue!9052 (value!291913 List!75349)) (IntegerValue!27156 (value!291914 (_ BitVec 32)) (text!63811 List!75349)) (IntegerValue!27157 (value!291915 Int) (text!63812 List!75349)) (Times!9052) (Or!9052) (Equal!9052) (Minus!9052) (Broken!45264 (value!291916 List!75349)) (And!9052) (Div!9052) (LessEqual!9052) (Mod!9052) (Concat!30856) (Not!9052) (Plus!9052) (SpaceValue!9052 (value!291917 List!75349)) (IntegerValue!27158 (value!291918 Int) (text!63813 List!75349)) (StringLiteralValue!27157 (text!63814 List!75349)) (FloatLiteralValue!18105 (text!63815 List!75349)) (BytesLiteralValue!9052 (value!291919 List!75349)) (CommentValue!18105 (value!291920 List!75349)) (StringLiteralValue!27158 (value!291921 List!75349)) (ErrorTokenValue!9052 (msg!9113 List!75349)) )
))
(declare-datatypes ((BalanceConc!30956 0))(
  ( (BalanceConc!30957 (c!1475340 Conc!16000)) )
))
(declare-datatypes ((TokenValueInjection!17412 0))(
  ( (TokenValueInjection!17413 (toValue!11807 Int) (toChars!11666 Int)) )
))
(declare-datatypes ((Rule!17264 0))(
  ( (Rule!17265 (regex!8732 Regex!21803) (tag!9596 String!85033) (isSeparator!8732 Bool) (transformation!8732 TokenValueInjection!17412)) )
))
(declare-datatypes ((List!75350 0))(
  ( (Nil!75224) (Cons!75224 (h!81672 Rule!17264) (t!391120 List!75350)) )
))
(declare-fun rules!4166 () List!75350)

(declare-fun e!4738809 () Bool)

(declare-fun tp!2410760 () Bool)

(declare-fun b!8044322 () Bool)

(declare-fun e!4738813 () Bool)

(declare-fun inv!96997 (String!85033) Bool)

(declare-fun inv!96999 (TokenValueInjection!17412) Bool)

(assert (=> b!8044322 (= e!4738813 (and tp!2410760 (inv!96997 (tag!9596 (h!81672 rules!4166))) (inv!96999 (transformation!8732 (h!81672 rules!4166))) e!4738809))))

(declare-fun b!8044323 () Bool)

(declare-fun res!3179887 () Bool)

(declare-fun e!4738807 () Bool)

(assert (=> b!8044323 (=> (not res!3179887) (not e!4738807))))

(declare-fun rSep!153 () Rule!17264)

(declare-fun contains!21049 (List!75350 Rule!17264) Bool)

(assert (=> b!8044323 (= res!3179887 (contains!21049 rules!4166 rSep!153))))

(declare-fun b!8044324 () Bool)

(declare-fun res!3179884 () Bool)

(assert (=> b!8044324 (=> (not res!3179884) (not e!4738807))))

(get-info :version)

(assert (=> b!8044324 (= res!3179884 (and (or (not ((_ is Cons!75224) rules!4166)) (not (= (h!81672 rules!4166) rSep!153))) ((_ is Cons!75224) rules!4166)))))

(declare-fun b!8044325 () Bool)

(declare-fun res!3179888 () Bool)

(assert (=> b!8044325 (=> (not res!3179888) (not e!4738807))))

(declare-fun rNSep!153 () Rule!17264)

(declare-fun ruleDisjointCharsFromAllFromOtherType!1006 (Rule!17264 List!75350) Bool)

(assert (=> b!8044325 (= res!3179888 (ruleDisjointCharsFromAllFromOtherType!1006 rNSep!153 rules!4166))))

(declare-fun b!8044326 () Bool)

(declare-fun res!3179889 () Bool)

(assert (=> b!8044326 (=> (not res!3179889) (not e!4738807))))

(assert (=> b!8044326 (= res!3179889 (and (not (isSeparator!8732 rNSep!153)) (isSeparator!8732 rSep!153)))))

(declare-fun e!4738806 () Bool)

(assert (=> b!8044327 (= e!4738806 (and tp!2410763 tp!2410764))))

(declare-fun b!8044328 () Bool)

(declare-fun res!3179886 () Bool)

(assert (=> b!8044328 (=> (not res!3179886) (not e!4738807))))

(declare-datatypes ((LexerInterface!8322 0))(
  ( (LexerInterfaceExt!8319 (__x!35386 Int)) (Lexer!8320) )
))
(declare-fun thiss!27104 () LexerInterface!8322)

(declare-fun rulesInvariant!6790 (LexerInterface!8322 List!75350) Bool)

(assert (=> b!8044328 (= res!3179886 (rulesInvariant!6790 thiss!27104 rules!4166))))

(declare-fun e!4738815 () Bool)

(assert (=> b!8044329 (= e!4738815 (and tp!2410759 tp!2410758))))

(declare-fun b!8044330 () Bool)

(declare-fun res!3179882 () Bool)

(assert (=> b!8044330 (=> (not res!3179882) (not e!4738807))))

(declare-fun c!6885 () C!43944)

(declare-fun contains!21050 (List!75348 C!43944) Bool)

(declare-fun usedCharacters!1310 (Regex!21803) List!75348)

(assert (=> b!8044330 (= res!3179882 (contains!21050 (usedCharacters!1310 (regex!8732 rSep!153)) c!6885))))

(declare-fun b!8044331 () Bool)

(declare-fun res!3179883 () Bool)

(declare-fun e!4738804 () Bool)

(assert (=> b!8044331 (=> res!3179883 e!4738804)))

(assert (=> b!8044331 (= res!3179883 (not (ruleDisjointCharsFromAllFromOtherType!1006 rNSep!153 (t!391120 rules!4166))))))

(declare-fun res!3179885 () Bool)

(assert (=> start!757400 (=> (not res!3179885) (not e!4738807))))

(assert (=> start!757400 (= res!3179885 ((_ is Lexer!8320) thiss!27104))))

(assert (=> start!757400 e!4738807))

(declare-fun e!4738808 () Bool)

(assert (=> start!757400 e!4738808))

(declare-fun tp_is_empty!54601 () Bool)

(assert (=> start!757400 tp_is_empty!54601))

(assert (=> start!757400 true))

(declare-fun e!4738814 () Bool)

(assert (=> start!757400 e!4738814))

(declare-fun e!4738805 () Bool)

(assert (=> start!757400 e!4738805))

(declare-fun b!8044332 () Bool)

(declare-fun tp!2410756 () Bool)

(assert (=> b!8044332 (= e!4738805 (and tp!2410756 (inv!96997 (tag!9596 rSep!153)) (inv!96999 (transformation!8732 rSep!153)) e!4738815))))

(declare-fun b!8044333 () Bool)

(assert (=> b!8044333 (= e!4738804 true)))

(assert (=> b!8044333 (not (contains!21050 (usedCharacters!1310 (regex!8732 rNSep!153)) c!6885))))

(declare-datatypes ((Unit!171094 0))(
  ( (Unit!171095) )
))
(declare-fun lt!2722550 () Unit!171094)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRuleInner!4 (LexerInterface!8322 List!75350 Rule!17264 Rule!17264 C!43944) Unit!171094)

(assert (=> b!8044333 (= lt!2722550 (lemmaNonSepRuleNotContainsCharContainedInASepRuleInner!4 thiss!27104 (t!391120 rules!4166) rNSep!153 rSep!153 c!6885))))

(declare-fun tp!2410765 () Bool)

(declare-fun b!8044334 () Bool)

(assert (=> b!8044334 (= e!4738814 (and tp!2410765 (inv!96997 (tag!9596 rNSep!153)) (inv!96999 (transformation!8732 rNSep!153)) e!4738806))))

(assert (=> b!8044335 (= e!4738809 (and tp!2410761 tp!2410762))))

(declare-fun b!8044336 () Bool)

(declare-fun tp!2410757 () Bool)

(assert (=> b!8044336 (= e!4738808 (and e!4738813 tp!2410757))))

(declare-fun b!8044337 () Bool)

(assert (=> b!8044337 (= e!4738807 (not e!4738804))))

(declare-fun res!3179890 () Bool)

(assert (=> b!8044337 (=> res!3179890 e!4738804)))

(assert (=> b!8044337 (= res!3179890 (not (contains!21049 (t!391120 rules!4166) rSep!153)))))

(assert (=> b!8044337 (rulesInvariant!6790 thiss!27104 (t!391120 rules!4166))))

(declare-fun lt!2722549 () Unit!171094)

(declare-fun lemmaInvariantOnRulesThenOnTail!898 (LexerInterface!8322 Rule!17264 List!75350) Unit!171094)

(assert (=> b!8044337 (= lt!2722549 (lemmaInvariantOnRulesThenOnTail!898 thiss!27104 (h!81672 rules!4166) (t!391120 rules!4166)))))

(assert (= (and start!757400 res!3179885) b!8044328))

(assert (= (and b!8044328 res!3179886) b!8044323))

(assert (= (and b!8044323 res!3179887) b!8044330))

(assert (= (and b!8044330 res!3179882) b!8044326))

(assert (= (and b!8044326 res!3179889) b!8044325))

(assert (= (and b!8044325 res!3179888) b!8044324))

(assert (= (and b!8044324 res!3179884) b!8044337))

(assert (= (and b!8044337 (not res!3179890)) b!8044331))

(assert (= (and b!8044331 (not res!3179883)) b!8044333))

(assert (= b!8044322 b!8044335))

(assert (= b!8044336 b!8044322))

(assert (= (and start!757400 ((_ is Cons!75224) rules!4166)) b!8044336))

(assert (= b!8044334 b!8044327))

(assert (= start!757400 b!8044334))

(assert (= b!8044332 b!8044329))

(assert (= start!757400 b!8044332))

(declare-fun m!8397326 () Bool)

(assert (=> b!8044337 m!8397326))

(declare-fun m!8397328 () Bool)

(assert (=> b!8044337 m!8397328))

(declare-fun m!8397330 () Bool)

(assert (=> b!8044337 m!8397330))

(declare-fun m!8397332 () Bool)

(assert (=> b!8044331 m!8397332))

(declare-fun m!8397334 () Bool)

(assert (=> b!8044323 m!8397334))

(declare-fun m!8397336 () Bool)

(assert (=> b!8044325 m!8397336))

(declare-fun m!8397338 () Bool)

(assert (=> b!8044328 m!8397338))

(declare-fun m!8397340 () Bool)

(assert (=> b!8044333 m!8397340))

(assert (=> b!8044333 m!8397340))

(declare-fun m!8397342 () Bool)

(assert (=> b!8044333 m!8397342))

(declare-fun m!8397344 () Bool)

(assert (=> b!8044333 m!8397344))

(declare-fun m!8397346 () Bool)

(assert (=> b!8044334 m!8397346))

(declare-fun m!8397348 () Bool)

(assert (=> b!8044334 m!8397348))

(declare-fun m!8397350 () Bool)

(assert (=> b!8044322 m!8397350))

(declare-fun m!8397352 () Bool)

(assert (=> b!8044322 m!8397352))

(declare-fun m!8397354 () Bool)

(assert (=> b!8044332 m!8397354))

(declare-fun m!8397356 () Bool)

(assert (=> b!8044332 m!8397356))

(declare-fun m!8397358 () Bool)

(assert (=> b!8044330 m!8397358))

(assert (=> b!8044330 m!8397358))

(declare-fun m!8397360 () Bool)

(assert (=> b!8044330 m!8397360))

(check-sat (not b_next!136931) (not b!8044336) (not b!8044330) (not b_next!136935) (not b!8044333) b_and!354575 (not b!8044334) (not b!8044325) b_and!354579 b_and!354577 (not b!8044322) (not b!8044332) (not b!8044331) (not b!8044328) (not b_next!136925) (not b!8044337) (not b!8044323) (not b_next!136929) tp_is_empty!54601 b_and!354573 (not b_next!136933) b_and!354581 b_and!354571 (not b_next!136927))
(check-sat (not b_next!136931) b_and!354577 (not b_next!136925) (not b_next!136935) (not b_next!136929) b_and!354575 b_and!354579 b_and!354573 (not b_next!136933) b_and!354581 b_and!354571 (not b_next!136927))
