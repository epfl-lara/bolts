; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757050 () Bool)

(assert start!757050)

(declare-fun b!8040994 () Bool)

(declare-fun b_free!135651 () Bool)

(declare-fun b_next!136441 () Bool)

(assert (=> b!8040994 (= b_free!135651 (not b_next!136441))))

(declare-fun tp!2408974 () Bool)

(declare-fun b_and!354087 () Bool)

(assert (=> b!8040994 (= tp!2408974 b_and!354087)))

(declare-fun b_free!135653 () Bool)

(declare-fun b_next!136443 () Bool)

(assert (=> b!8040994 (= b_free!135653 (not b_next!136443))))

(declare-fun tp!2408970 () Bool)

(declare-fun b_and!354089 () Bool)

(assert (=> b!8040994 (= tp!2408970 b_and!354089)))

(declare-fun b!8040998 () Bool)

(declare-fun b_free!135655 () Bool)

(declare-fun b_next!136445 () Bool)

(assert (=> b!8040998 (= b_free!135655 (not b_next!136445))))

(declare-fun tp!2408971 () Bool)

(declare-fun b_and!354091 () Bool)

(assert (=> b!8040998 (= tp!2408971 b_and!354091)))

(declare-fun b_free!135657 () Bool)

(declare-fun b_next!136447 () Bool)

(assert (=> b!8040998 (= b_free!135657 (not b_next!136447))))

(declare-fun tp!2408978 () Bool)

(declare-fun b_and!354093 () Bool)

(assert (=> b!8040998 (= tp!2408978 b_and!354093)))

(declare-fun b!8040979 () Bool)

(declare-fun b_free!135659 () Bool)

(declare-fun b_next!136449 () Bool)

(assert (=> b!8040979 (= b_free!135659 (not b_next!136449))))

(declare-fun tp!2408975 () Bool)

(declare-fun b_and!354095 () Bool)

(assert (=> b!8040979 (= tp!2408975 b_and!354095)))

(declare-fun b_free!135661 () Bool)

(declare-fun b_next!136451 () Bool)

(assert (=> b!8040979 (= b_free!135661 (not b_next!136451))))

(declare-fun tp!2408973 () Bool)

(declare-fun b_and!354097 () Bool)

(assert (=> b!8040979 (= tp!2408973 b_and!354097)))

(declare-fun b!8040981 () Bool)

(declare-fun b_free!135663 () Bool)

(declare-fun b_next!136453 () Bool)

(assert (=> b!8040981 (= b_free!135663 (not b_next!136453))))

(declare-fun tp!2408966 () Bool)

(declare-fun b_and!354099 () Bool)

(assert (=> b!8040981 (= tp!2408966 b_and!354099)))

(declare-fun b_free!135665 () Bool)

(declare-fun b_next!136455 () Bool)

(assert (=> b!8040981 (= b_free!135665 (not b_next!136455))))

(declare-fun tp!2408979 () Bool)

(declare-fun b_and!354101 () Bool)

(assert (=> b!8040981 (= tp!2408979 b_and!354101)))

(declare-fun b!8040978 () Bool)

(declare-fun res!3178535 () Bool)

(declare-fun e!4736463 () Bool)

(assert (=> b!8040978 (=> (not res!3178535) (not e!4736463))))

(declare-datatypes ((List!75241 0))(
  ( (Nil!75115) (Cons!75115 (h!81563 (_ BitVec 16)) (t!391011 List!75241)) )
))
(declare-datatypes ((TokenValue!9021 0))(
  ( (FloatLiteralValue!18042 (text!63592 List!75241)) (TokenValueExt!9020 (__x!35323 Int)) (Broken!45105 (value!291045 List!75241)) (Object!9146) (End!9021) (Def!9021) (Underscore!9021) (Match!9021) (Else!9021) (Error!9021) (Case!9021) (If!9021) (Extends!9021) (Abstract!9021) (Class!9021) (Val!9021) (DelimiterValue!18042 (del!9081 List!75241)) (KeywordValue!9027 (value!291046 List!75241)) (CommentValue!18042 (value!291047 List!75241)) (WhitespaceValue!18042 (value!291048 List!75241)) (IndentationValue!9021 (value!291049 List!75241)) (String!84880) (Int32!9021) (Broken!45106 (value!291050 List!75241)) (Boolean!9022) (Unit!171028) (OperatorValue!9024 (op!9081 List!75241)) (IdentifierValue!18042 (value!291051 List!75241)) (IdentifierValue!18043 (value!291052 List!75241)) (WhitespaceValue!18043 (value!291053 List!75241)) (True!18042) (False!18042) (Broken!45107 (value!291054 List!75241)) (Broken!45108 (value!291055 List!75241)) (True!18043) (RightBrace!9021) (RightBracket!9021) (Colon!9021) (Null!9021) (Comma!9021) (LeftBracket!9021) (False!18043) (LeftBrace!9021) (ImaginaryLiteralValue!9021 (text!63593 List!75241)) (StringLiteralValue!27063 (value!291056 List!75241)) (EOFValue!9021 (value!291057 List!75241)) (IdentValue!9021 (value!291058 List!75241)) (DelimiterValue!18043 (value!291059 List!75241)) (DedentValue!9021 (value!291060 List!75241)) (NewLineValue!9021 (value!291061 List!75241)) (IntegerValue!27063 (value!291062 (_ BitVec 32)) (text!63594 List!75241)) (IntegerValue!27064 (value!291063 Int) (text!63595 List!75241)) (Times!9021) (Or!9021) (Equal!9021) (Minus!9021) (Broken!45109 (value!291064 List!75241)) (And!9021) (Div!9021) (LessEqual!9021) (Mod!9021) (Concat!30793) (Not!9021) (Plus!9021) (SpaceValue!9021 (value!291065 List!75241)) (IntegerValue!27065 (value!291066 Int) (text!63596 List!75241)) (StringLiteralValue!27064 (text!63597 List!75241)) (FloatLiteralValue!18043 (text!63598 List!75241)) (BytesLiteralValue!9021 (value!291067 List!75241)) (CommentValue!18043 (value!291068 List!75241)) (StringLiteralValue!27065 (value!291069 List!75241)) (ErrorTokenValue!9021 (msg!9082 List!75241)) )
))
(declare-datatypes ((C!43882 0))(
  ( (C!43883 (val!32717 Int)) )
))
(declare-datatypes ((List!75242 0))(
  ( (Nil!75116) (Cons!75116 (h!81564 C!43882) (t!391012 List!75242)) )
))
(declare-datatypes ((IArray!31999 0))(
  ( (IArray!32000 (innerList!16057 List!75242)) )
))
(declare-datatypes ((Conc!15969 0))(
  ( (Node!15969 (left!57269 Conc!15969) (right!57599 Conc!15969) (csize!32168 Int) (cheight!16180 Int)) (Leaf!30630 (xs!19367 IArray!31999) (csize!32169 Int)) (Empty!15969) )
))
(declare-datatypes ((BalanceConc!30894 0))(
  ( (BalanceConc!30895 (c!1474955 Conc!15969)) )
))
(declare-datatypes ((Regex!21772 0))(
  ( (ElementMatch!21772 (c!1474956 C!43882)) (Concat!30794 (regOne!44056 Regex!21772) (regTwo!44056 Regex!21772)) (EmptyExpr!21772) (Star!21772 (reg!22101 Regex!21772)) (EmptyLang!21772) (Union!21772 (regOne!44057 Regex!21772) (regTwo!44057 Regex!21772)) )
))
(declare-datatypes ((String!84881 0))(
  ( (String!84882 (value!291070 String)) )
))
(declare-datatypes ((TokenValueInjection!17350 0))(
  ( (TokenValueInjection!17351 (toValue!11772 Int) (toChars!11631 Int)) )
))
(declare-datatypes ((Rule!17202 0))(
  ( (Rule!17203 (regex!8701 Regex!21772) (tag!9565 String!84881) (isSeparator!8701 Bool) (transformation!8701 TokenValueInjection!17350)) )
))
(declare-datatypes ((List!75243 0))(
  ( (Nil!75117) (Cons!75117 (h!81565 Rule!17202) (t!391013 List!75243)) )
))
(declare-fun rules!4142 () List!75243)

(declare-fun rulesRec!188 () List!75243)

(declare-fun sepAndNonSepRulesDisjointChars!2061 (List!75243 List!75243) Bool)

(assert (=> b!8040978 (= res!3178535 (sepAndNonSepRulesDisjointChars!2061 rules!4142 rulesRec!188))))

(declare-fun e!4736470 () Bool)

(assert (=> b!8040979 (= e!4736470 (and tp!2408975 tp!2408973))))

(declare-fun b!8040980 () Bool)

(declare-fun res!3178544 () Bool)

(assert (=> b!8040980 (=> (not res!3178544) (not e!4736463))))

(declare-fun rNSep!142 () Rule!17202)

(declare-fun rSep!142 () Rule!17202)

(assert (=> b!8040980 (= res!3178544 (and (not (isSeparator!8701 rNSep!142)) (isSeparator!8701 rSep!142)))))

(declare-fun e!4736468 () Bool)

(assert (=> b!8040981 (= e!4736468 (and tp!2408966 tp!2408979))))

(declare-fun b!8040982 () Bool)

(declare-fun res!3178538 () Bool)

(assert (=> b!8040982 (=> (not res!3178538) (not e!4736463))))

(declare-fun c!6865 () C!43882)

(declare-fun contains!20985 (List!75242 C!43882) Bool)

(declare-fun usedCharacters!1279 (Regex!21772) List!75242)

(assert (=> b!8040982 (= res!3178538 (contains!20985 (usedCharacters!1279 (regex!8701 rSep!142)) c!6865))))

(declare-fun b!8040984 () Bool)

(declare-fun e!4736469 () Bool)

(declare-fun e!4736461 () Bool)

(declare-fun tp!2408972 () Bool)

(assert (=> b!8040984 (= e!4736469 (and e!4736461 tp!2408972))))

(declare-fun e!4736467 () Bool)

(declare-fun b!8040985 () Bool)

(declare-fun e!4736462 () Bool)

(declare-fun tp!2408968 () Bool)

(declare-fun inv!96920 (String!84881) Bool)

(declare-fun inv!96923 (TokenValueInjection!17350) Bool)

(assert (=> b!8040985 (= e!4736467 (and tp!2408968 (inv!96920 (tag!9565 rSep!142)) (inv!96923 (transformation!8701 rSep!142)) e!4736462))))

(declare-fun b!8040986 () Bool)

(declare-fun tp!2408977 () Bool)

(declare-fun e!4736471 () Bool)

(assert (=> b!8040986 (= e!4736471 (and tp!2408977 (inv!96920 (tag!9565 rNSep!142)) (inv!96923 (transformation!8701 rNSep!142)) e!4736468))))

(declare-fun tp!2408967 () Bool)

(declare-fun b!8040987 () Bool)

(assert (=> b!8040987 (= e!4736461 (and tp!2408967 (inv!96920 (tag!9565 (h!81565 rulesRec!188))) (inv!96923 (transformation!8701 (h!81565 rulesRec!188))) e!4736470))))

(declare-fun b!8040988 () Bool)

(declare-fun res!3178540 () Bool)

(assert (=> b!8040988 (=> (not res!3178540) (not e!4736463))))

(assert (=> b!8040988 (= res!3178540 (and (or (not (is-Cons!75117 rulesRec!188)) (not (= (h!81565 rulesRec!188) rNSep!142))) (is-Cons!75117 rulesRec!188)))))

(declare-fun e!4736464 () Bool)

(declare-fun e!4736472 () Bool)

(declare-fun b!8040989 () Bool)

(declare-fun tp!2408976 () Bool)

(assert (=> b!8040989 (= e!4736472 (and tp!2408976 (inv!96920 (tag!9565 (h!81565 rules!4142))) (inv!96923 (transformation!8701 (h!81565 rules!4142))) e!4736464))))

(declare-fun b!8040990 () Bool)

(declare-fun res!3178534 () Bool)

(assert (=> b!8040990 (=> (not res!3178534) (not e!4736463))))

(declare-fun contains!20986 (List!75243 Rule!17202) Bool)

(assert (=> b!8040990 (= res!3178534 (contains!20986 rules!4142 rSep!142))))

(declare-fun b!8040991 () Bool)

(declare-fun ListPrimitiveSize!529 (List!75243) Int)

(assert (=> b!8040991 (= e!4736463 (>= (ListPrimitiveSize!529 (t!391013 rulesRec!188)) (ListPrimitiveSize!529 rulesRec!188)))))

(declare-fun b!8040992 () Bool)

(declare-fun res!3178543 () Bool)

(assert (=> b!8040992 (=> (not res!3178543) (not e!4736463))))

(assert (=> b!8040992 (= res!3178543 (contains!20986 rulesRec!188 rNSep!142))))

(declare-fun b!8040983 () Bool)

(declare-fun res!3178537 () Bool)

(assert (=> b!8040983 (=> (not res!3178537) (not e!4736463))))

(assert (=> b!8040983 (= res!3178537 (sepAndNonSepRulesDisjointChars!2061 rules!4142 (t!391013 rulesRec!188)))))

(declare-fun res!3178536 () Bool)

(assert (=> start!757050 (=> (not res!3178536) (not e!4736463))))

(declare-datatypes ((LexerInterface!8291 0))(
  ( (LexerInterfaceExt!8288 (__x!35324 Int)) (Lexer!8289) )
))
(declare-fun thiss!27054 () LexerInterface!8291)

(assert (=> start!757050 (= res!3178536 (is-Lexer!8289 thiss!27054))))

(assert (=> start!757050 e!4736463))

(assert (=> start!757050 true))

(declare-fun e!4736460 () Bool)

(assert (=> start!757050 e!4736460))

(assert (=> start!757050 e!4736467))

(assert (=> start!757050 e!4736469))

(assert (=> start!757050 e!4736471))

(declare-fun tp_is_empty!54539 () Bool)

(assert (=> start!757050 tp_is_empty!54539))

(declare-fun b!8040993 () Bool)

(declare-fun res!3178542 () Bool)

(assert (=> b!8040993 (=> (not res!3178542) (not e!4736463))))

(assert (=> b!8040993 (= res!3178542 (contains!20986 (t!391013 rulesRec!188) rNSep!142))))

(assert (=> b!8040994 (= e!4736462 (and tp!2408974 tp!2408970))))

(declare-fun b!8040995 () Bool)

(declare-fun res!3178539 () Bool)

(assert (=> b!8040995 (=> (not res!3178539) (not e!4736463))))

(declare-fun rulesInvariant!6759 (LexerInterface!8291 List!75243) Bool)

(assert (=> b!8040995 (= res!3178539 (rulesInvariant!6759 thiss!27054 rules!4142))))

(declare-fun b!8040996 () Bool)

(declare-fun tp!2408969 () Bool)

(assert (=> b!8040996 (= e!4736460 (and e!4736472 tp!2408969))))

(declare-fun b!8040997 () Bool)

(declare-fun res!3178541 () Bool)

(assert (=> b!8040997 (=> (not res!3178541) (not e!4736463))))

(assert (=> b!8040997 (= res!3178541 (contains!20986 rules!4142 rNSep!142))))

(assert (=> b!8040998 (= e!4736464 (and tp!2408971 tp!2408978))))

(assert (= (and start!757050 res!3178536) b!8040995))

(assert (= (and b!8040995 res!3178539) b!8040990))

(assert (= (and b!8040990 res!3178534) b!8040992))

(assert (= (and b!8040992 res!3178543) b!8040997))

(assert (= (and b!8040997 res!3178541) b!8040980))

(assert (= (and b!8040980 res!3178544) b!8040982))

(assert (= (and b!8040982 res!3178538) b!8040978))

(assert (= (and b!8040978 res!3178535) b!8040988))

(assert (= (and b!8040988 res!3178540) b!8040993))

(assert (= (and b!8040993 res!3178542) b!8040983))

(assert (= (and b!8040983 res!3178537) b!8040991))

(assert (= b!8040989 b!8040998))

(assert (= b!8040996 b!8040989))

(assert (= (and start!757050 (is-Cons!75117 rules!4142)) b!8040996))

(assert (= b!8040985 b!8040994))

(assert (= start!757050 b!8040985))

(assert (= b!8040987 b!8040979))

(assert (= b!8040984 b!8040987))

(assert (= (and start!757050 (is-Cons!75117 rulesRec!188)) b!8040984))

(assert (= b!8040986 b!8040981))

(assert (= start!757050 b!8040986))

(declare-fun m!8395310 () Bool)

(assert (=> b!8040986 m!8395310))

(declare-fun m!8395312 () Bool)

(assert (=> b!8040986 m!8395312))

(declare-fun m!8395314 () Bool)

(assert (=> b!8040991 m!8395314))

(declare-fun m!8395316 () Bool)

(assert (=> b!8040991 m!8395316))

(declare-fun m!8395318 () Bool)

(assert (=> b!8040982 m!8395318))

(assert (=> b!8040982 m!8395318))

(declare-fun m!8395320 () Bool)

(assert (=> b!8040982 m!8395320))

(declare-fun m!8395322 () Bool)

(assert (=> b!8040989 m!8395322))

(declare-fun m!8395324 () Bool)

(assert (=> b!8040989 m!8395324))

(declare-fun m!8395326 () Bool)

(assert (=> b!8040997 m!8395326))

(declare-fun m!8395328 () Bool)

(assert (=> b!8040993 m!8395328))

(declare-fun m!8395330 () Bool)

(assert (=> b!8040978 m!8395330))

(declare-fun m!8395332 () Bool)

(assert (=> b!8040990 m!8395332))

(declare-fun m!8395334 () Bool)

(assert (=> b!8040983 m!8395334))

(declare-fun m!8395336 () Bool)

(assert (=> b!8040985 m!8395336))

(declare-fun m!8395338 () Bool)

(assert (=> b!8040985 m!8395338))

(declare-fun m!8395340 () Bool)

(assert (=> b!8040995 m!8395340))

(declare-fun m!8395342 () Bool)

(assert (=> b!8040992 m!8395342))

(declare-fun m!8395344 () Bool)

(assert (=> b!8040987 m!8395344))

(declare-fun m!8395346 () Bool)

(assert (=> b!8040987 m!8395346))

(push 1)

(assert (not b_next!136441))

(assert b_and!354101)

(assert (not b!8040996))

(assert b_and!354095)

(assert (not b!8040990))

(assert (not b!8040986))

(assert b_and!354093)

(assert (not b!8040978))

(assert (not b_next!136451))

(assert (not b_next!136447))

(assert (not b!8040983))

(assert (not b_next!136453))

(assert (not b!8040993))

(assert (not b!8040995))

(assert (not b_next!136455))

(assert (not b!8040985))

(assert (not b!8040991))

(assert (not b!8040989))

(assert (not b_next!136443))

(assert b_and!354087)

(assert (not b!8040982))

(assert (not b_next!136449))

(assert b_and!354091)

(assert b_and!354089)

(assert tp_is_empty!54539)

(assert (not b_next!136445))

(assert (not b!8040984))

(assert (not b!8040992))

(assert b_and!354099)

(assert b_and!354097)

(assert (not b!8040987))

(assert (not b!8040997))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136441))

(assert b_and!354101)

(assert b_and!354095)

(assert b_and!354093)

(assert (not b_next!136451))

(assert (not b_next!136447))

(assert (not b_next!136445))

(assert (not b_next!136453))

(assert (not b_next!136455))

(assert (not b_next!136443))

(assert b_and!354087)

(assert (not b_next!136449))

(assert b_and!354091)

(assert b_and!354089)

(assert b_and!354099)

(assert b_and!354097)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395595 () Bool)

(declare-fun res!3178593 () Bool)

(declare-fun e!4736522 () Bool)

(assert (=> d!2395595 (=> res!3178593 e!4736522)))

(assert (=> d!2395595 (= res!3178593 (not (is-Cons!75117 rulesRec!188)))))

(assert (=> d!2395595 (= (sepAndNonSepRulesDisjointChars!2061 rules!4142 rulesRec!188) e!4736522)))

(declare-fun b!8041066 () Bool)

(declare-fun e!4736523 () Bool)

(assert (=> b!8041066 (= e!4736522 e!4736523)))

(declare-fun res!3178594 () Bool)

(assert (=> b!8041066 (=> (not res!3178594) (not e!4736523))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!978 (Rule!17202 List!75243) Bool)

(assert (=> b!8041066 (= res!3178594 (ruleDisjointCharsFromAllFromOtherType!978 (h!81565 rulesRec!188) rules!4142))))

(declare-fun b!8041067 () Bool)

(assert (=> b!8041067 (= e!4736523 (sepAndNonSepRulesDisjointChars!2061 rules!4142 (t!391013 rulesRec!188)))))

(assert (= (and d!2395595 (not res!3178593)) b!8041066))

(assert (= (and b!8041066 res!3178594) b!8041067))

(declare-fun m!8395386 () Bool)

(assert (=> b!8041066 m!8395386))

(assert (=> b!8041067 m!8395334))

(assert (=> b!8040978 d!2395595))

(declare-fun d!2395597 () Bool)

(assert (=> d!2395597 (= (inv!96920 (tag!9565 (h!81565 rules!4142))) (= (mod (str.len (value!291070 (tag!9565 (h!81565 rules!4142)))) 2) 0))))

(assert (=> b!8040989 d!2395597))

(declare-fun d!2395599 () Bool)

(declare-fun res!3178597 () Bool)

(declare-fun e!4736526 () Bool)

(assert (=> d!2395599 (=> (not res!3178597) (not e!4736526))))

(declare-fun semiInverseModEq!3862 (Int Int) Bool)

(assert (=> d!2395599 (= res!3178597 (semiInverseModEq!3862 (toChars!11631 (transformation!8701 (h!81565 rules!4142))) (toValue!11772 (transformation!8701 (h!81565 rules!4142)))))))

(assert (=> d!2395599 (= (inv!96923 (transformation!8701 (h!81565 rules!4142))) e!4736526)))

(declare-fun b!8041070 () Bool)

(declare-fun equivClasses!3677 (Int Int) Bool)

(assert (=> b!8041070 (= e!4736526 (equivClasses!3677 (toChars!11631 (transformation!8701 (h!81565 rules!4142))) (toValue!11772 (transformation!8701 (h!81565 rules!4142)))))))

(assert (= (and d!2395599 res!3178597) b!8041070))

(declare-fun m!8395388 () Bool)

(assert (=> d!2395599 m!8395388))

(declare-fun m!8395390 () Bool)

(assert (=> b!8041070 m!8395390))

(assert (=> b!8040989 d!2395599))

(declare-fun d!2395601 () Bool)

(declare-fun lt!2722277 () Bool)

(declare-fun content!16036 (List!75243) (Set Rule!17202))

(assert (=> d!2395601 (= lt!2722277 (set.member rSep!142 (content!16036 rules!4142)))))

(declare-fun e!4736532 () Bool)

(assert (=> d!2395601 (= lt!2722277 e!4736532)))

(declare-fun res!3178602 () Bool)

(assert (=> d!2395601 (=> (not res!3178602) (not e!4736532))))

(assert (=> d!2395601 (= res!3178602 (is-Cons!75117 rules!4142))))

(assert (=> d!2395601 (= (contains!20986 rules!4142 rSep!142) lt!2722277)))

(declare-fun b!8041075 () Bool)

(declare-fun e!4736531 () Bool)

(assert (=> b!8041075 (= e!4736532 e!4736531)))

(declare-fun res!3178603 () Bool)

(assert (=> b!8041075 (=> res!3178603 e!4736531)))

(assert (=> b!8041075 (= res!3178603 (= (h!81565 rules!4142) rSep!142))))

(declare-fun b!8041076 () Bool)

(assert (=> b!8041076 (= e!4736531 (contains!20986 (t!391013 rules!4142) rSep!142))))

(assert (= (and d!2395601 res!3178602) b!8041075))

(assert (= (and b!8041075 (not res!3178603)) b!8041076))

(declare-fun m!8395392 () Bool)

(assert (=> d!2395601 m!8395392))

(declare-fun m!8395394 () Bool)

(assert (=> d!2395601 m!8395394))

(declare-fun m!8395396 () Bool)

(assert (=> b!8041076 m!8395396))

(assert (=> b!8040990 d!2395601))

(declare-fun d!2395603 () Bool)

(declare-fun lt!2722280 () Int)

(assert (=> d!2395603 (>= lt!2722280 0)))

(declare-fun e!4736535 () Int)

(assert (=> d!2395603 (= lt!2722280 e!4736535)))

(declare-fun c!1474961 () Bool)

(assert (=> d!2395603 (= c!1474961 (is-Nil!75117 (t!391013 rulesRec!188)))))

(assert (=> d!2395603 (= (ListPrimitiveSize!529 (t!391013 rulesRec!188)) lt!2722280)))

(declare-fun b!8041081 () Bool)

(assert (=> b!8041081 (= e!4736535 0)))

(declare-fun b!8041082 () Bool)

(assert (=> b!8041082 (= e!4736535 (+ 1 (ListPrimitiveSize!529 (t!391013 (t!391013 rulesRec!188)))))))

(assert (= (and d!2395603 c!1474961) b!8041081))

(assert (= (and d!2395603 (not c!1474961)) b!8041082))

(declare-fun m!8395398 () Bool)

(assert (=> b!8041082 m!8395398))

(assert (=> b!8040991 d!2395603))

(declare-fun d!2395605 () Bool)

(declare-fun lt!2722281 () Int)

(assert (=> d!2395605 (>= lt!2722281 0)))

(declare-fun e!4736536 () Int)

(assert (=> d!2395605 (= lt!2722281 e!4736536)))

(declare-fun c!1474962 () Bool)

(assert (=> d!2395605 (= c!1474962 (is-Nil!75117 rulesRec!188))))

(assert (=> d!2395605 (= (ListPrimitiveSize!529 rulesRec!188) lt!2722281)))

(declare-fun b!8041083 () Bool)

(assert (=> b!8041083 (= e!4736536 0)))

(declare-fun b!8041084 () Bool)

(assert (=> b!8041084 (= e!4736536 (+ 1 (ListPrimitiveSize!529 (t!391013 rulesRec!188))))))

(assert (= (and d!2395605 c!1474962) b!8041083))

(assert (= (and d!2395605 (not c!1474962)) b!8041084))

(assert (=> b!8041084 m!8395314))

(assert (=> b!8040991 d!2395605))

(declare-fun d!2395607 () Bool)

(declare-fun lt!2722282 () Bool)

(assert (=> d!2395607 (= lt!2722282 (set.member rNSep!142 (content!16036 rulesRec!188)))))

(declare-fun e!4736538 () Bool)

(assert (=> d!2395607 (= lt!2722282 e!4736538)))

(declare-fun res!3178604 () Bool)

(assert (=> d!2395607 (=> (not res!3178604) (not e!4736538))))

(assert (=> d!2395607 (= res!3178604 (is-Cons!75117 rulesRec!188))))

(assert (=> d!2395607 (= (contains!20986 rulesRec!188 rNSep!142) lt!2722282)))

(declare-fun b!8041085 () Bool)

(declare-fun e!4736537 () Bool)

(assert (=> b!8041085 (= e!4736538 e!4736537)))

(declare-fun res!3178605 () Bool)

(assert (=> b!8041085 (=> res!3178605 e!4736537)))

(assert (=> b!8041085 (= res!3178605 (= (h!81565 rulesRec!188) rNSep!142))))

(declare-fun b!8041086 () Bool)

(assert (=> b!8041086 (= e!4736537 (contains!20986 (t!391013 rulesRec!188) rNSep!142))))

(assert (= (and d!2395607 res!3178604) b!8041085))

(assert (= (and b!8041085 (not res!3178605)) b!8041086))

(declare-fun m!8395400 () Bool)

(assert (=> d!2395607 m!8395400))

(declare-fun m!8395402 () Bool)

(assert (=> d!2395607 m!8395402))

(assert (=> b!8041086 m!8395328))

(assert (=> b!8040992 d!2395607))

(declare-fun d!2395611 () Bool)

(declare-fun lt!2722285 () Bool)

(declare-fun content!16037 (List!75242) (Set C!43882))

(assert (=> d!2395611 (= lt!2722285 (set.member c!6865 (content!16037 (usedCharacters!1279 (regex!8701 rSep!142)))))))

(declare-fun e!4736544 () Bool)

(assert (=> d!2395611 (= lt!2722285 e!4736544)))

(declare-fun res!3178611 () Bool)

(assert (=> d!2395611 (=> (not res!3178611) (not e!4736544))))

(assert (=> d!2395611 (= res!3178611 (is-Cons!75116 (usedCharacters!1279 (regex!8701 rSep!142))))))

(assert (=> d!2395611 (= (contains!20985 (usedCharacters!1279 (regex!8701 rSep!142)) c!6865) lt!2722285)))

(declare-fun b!8041091 () Bool)

(declare-fun e!4736543 () Bool)

(assert (=> b!8041091 (= e!4736544 e!4736543)))

(declare-fun res!3178610 () Bool)

(assert (=> b!8041091 (=> res!3178610 e!4736543)))

(assert (=> b!8041091 (= res!3178610 (= (h!81564 (usedCharacters!1279 (regex!8701 rSep!142))) c!6865))))

(declare-fun b!8041092 () Bool)

(assert (=> b!8041092 (= e!4736543 (contains!20985 (t!391012 (usedCharacters!1279 (regex!8701 rSep!142))) c!6865))))

(assert (= (and d!2395611 res!3178611) b!8041091))

(assert (= (and b!8041091 (not res!3178610)) b!8041092))

(assert (=> d!2395611 m!8395318))

(declare-fun m!8395404 () Bool)

(assert (=> d!2395611 m!8395404))

(declare-fun m!8395406 () Bool)

(assert (=> d!2395611 m!8395406))

(declare-fun m!8395408 () Bool)

(assert (=> b!8041092 m!8395408))

(assert (=> b!8040982 d!2395611))

(declare-fun b!8041117 () Bool)

(declare-fun e!4736557 () List!75242)

(declare-fun call!746406 () List!75242)

(assert (=> b!8041117 (= e!4736557 call!746406)))

(declare-fun bm!746400 () Bool)

(declare-fun call!746408 () List!75242)

(declare-fun call!746407 () List!75242)

(declare-fun ++!18623 (List!75242 List!75242) List!75242)

(assert (=> bm!746400 (= call!746406 (++!18623 call!746408 call!746407))))

(declare-fun b!8041118 () Bool)

(declare-fun c!1474977 () Bool)

(assert (=> b!8041118 (= c!1474977 (is-Star!21772 (regex!8701 rSep!142)))))

(declare-fun e!4736558 () List!75242)

(declare-fun e!4736560 () List!75242)

(assert (=> b!8041118 (= e!4736558 e!4736560)))

(declare-fun b!8041119 () Bool)

(assert (=> b!8041119 (= e!4736560 e!4736557)))

(declare-fun c!1474978 () Bool)

(assert (=> b!8041119 (= c!1474978 (is-Union!21772 (regex!8701 rSep!142)))))

(declare-fun call!746405 () List!75242)

(declare-fun bm!746401 () Bool)

(assert (=> bm!746401 (= call!746405 (usedCharacters!1279 (ite c!1474977 (reg!22101 (regex!8701 rSep!142)) (ite c!1474978 (regOne!44057 (regex!8701 rSep!142)) (regOne!44056 (regex!8701 rSep!142))))))))

(declare-fun b!8041120 () Bool)

(assert (=> b!8041120 (= e!4736560 call!746405)))

(declare-fun d!2395613 () Bool)

(declare-fun c!1474976 () Bool)

(assert (=> d!2395613 (= c!1474976 (or (is-EmptyExpr!21772 (regex!8701 rSep!142)) (is-EmptyLang!21772 (regex!8701 rSep!142))))))

(declare-fun e!4736559 () List!75242)

(assert (=> d!2395613 (= (usedCharacters!1279 (regex!8701 rSep!142)) e!4736559)))

(declare-fun b!8041121 () Bool)

(assert (=> b!8041121 (= e!4736559 e!4736558)))

(declare-fun c!1474975 () Bool)

(assert (=> b!8041121 (= c!1474975 (is-ElementMatch!21772 (regex!8701 rSep!142)))))

(declare-fun bm!746402 () Bool)

(assert (=> bm!746402 (= call!746407 (usedCharacters!1279 (ite c!1474978 (regTwo!44057 (regex!8701 rSep!142)) (regTwo!44056 (regex!8701 rSep!142)))))))

(declare-fun b!8041122 () Bool)

(assert (=> b!8041122 (= e!4736558 (Cons!75116 (c!1474956 (regex!8701 rSep!142)) Nil!75116))))

(declare-fun b!8041123 () Bool)

(assert (=> b!8041123 (= e!4736559 Nil!75116)))

(declare-fun b!8041124 () Bool)

(assert (=> b!8041124 (= e!4736557 call!746406)))

(declare-fun bm!746403 () Bool)

(assert (=> bm!746403 (= call!746408 call!746405)))

(assert (= (and d!2395613 c!1474976) b!8041123))

(assert (= (and d!2395613 (not c!1474976)) b!8041121))

(assert (= (and b!8041121 c!1474975) b!8041122))

(assert (= (and b!8041121 (not c!1474975)) b!8041118))

(assert (= (and b!8041118 c!1474977) b!8041120))

(assert (= (and b!8041118 (not c!1474977)) b!8041119))

(assert (= (and b!8041119 c!1474978) b!8041117))

(assert (= (and b!8041119 (not c!1474978)) b!8041124))

(assert (= (or b!8041117 b!8041124) bm!746402))

(assert (= (or b!8041117 b!8041124) bm!746403))

(assert (= (or b!8041117 b!8041124) bm!746400))

(assert (= (or b!8041120 bm!746403) bm!746401))

(declare-fun m!8395412 () Bool)

(assert (=> bm!746400 m!8395412))

(declare-fun m!8395414 () Bool)

(assert (=> bm!746401 m!8395414))

(declare-fun m!8395416 () Bool)

(assert (=> bm!746402 m!8395416))

(assert (=> b!8040982 d!2395613))

(declare-fun d!2395621 () Bool)

(declare-fun lt!2722290 () Bool)

(assert (=> d!2395621 (= lt!2722290 (set.member rNSep!142 (content!16036 (t!391013 rulesRec!188))))))

(declare-fun e!4736562 () Bool)

(assert (=> d!2395621 (= lt!2722290 e!4736562)))

(declare-fun res!3178612 () Bool)

(assert (=> d!2395621 (=> (not res!3178612) (not e!4736562))))

(assert (=> d!2395621 (= res!3178612 (is-Cons!75117 (t!391013 rulesRec!188)))))

(assert (=> d!2395621 (= (contains!20986 (t!391013 rulesRec!188) rNSep!142) lt!2722290)))

(declare-fun b!8041125 () Bool)

(declare-fun e!4736561 () Bool)

(assert (=> b!8041125 (= e!4736562 e!4736561)))

(declare-fun res!3178613 () Bool)

(assert (=> b!8041125 (=> res!3178613 e!4736561)))

(assert (=> b!8041125 (= res!3178613 (= (h!81565 (t!391013 rulesRec!188)) rNSep!142))))

(declare-fun b!8041126 () Bool)

(assert (=> b!8041126 (= e!4736561 (contains!20986 (t!391013 (t!391013 rulesRec!188)) rNSep!142))))

(assert (= (and d!2395621 res!3178612) b!8041125))

(assert (= (and b!8041125 (not res!3178613)) b!8041126))

(declare-fun m!8395418 () Bool)

(assert (=> d!2395621 m!8395418))

(declare-fun m!8395420 () Bool)

(assert (=> d!2395621 m!8395420))

(declare-fun m!8395422 () Bool)

(assert (=> b!8041126 m!8395422))

(assert (=> b!8040993 d!2395621))

(declare-fun d!2395623 () Bool)

(declare-fun res!3178614 () Bool)

(declare-fun e!4736563 () Bool)

(assert (=> d!2395623 (=> res!3178614 e!4736563)))

(assert (=> d!2395623 (= res!3178614 (not (is-Cons!75117 (t!391013 rulesRec!188))))))

(assert (=> d!2395623 (= (sepAndNonSepRulesDisjointChars!2061 rules!4142 (t!391013 rulesRec!188)) e!4736563)))

(declare-fun b!8041127 () Bool)

(declare-fun e!4736564 () Bool)

(assert (=> b!8041127 (= e!4736563 e!4736564)))

(declare-fun res!3178615 () Bool)

(assert (=> b!8041127 (=> (not res!3178615) (not e!4736564))))

(assert (=> b!8041127 (= res!3178615 (ruleDisjointCharsFromAllFromOtherType!978 (h!81565 (t!391013 rulesRec!188)) rules!4142))))

(declare-fun b!8041128 () Bool)

(assert (=> b!8041128 (= e!4736564 (sepAndNonSepRulesDisjointChars!2061 rules!4142 (t!391013 (t!391013 rulesRec!188))))))

(assert (= (and d!2395623 (not res!3178614)) b!8041127))

(assert (= (and b!8041127 res!3178615) b!8041128))

(declare-fun m!8395424 () Bool)

(assert (=> b!8041127 m!8395424))

(declare-fun m!8395426 () Bool)

(assert (=> b!8041128 m!8395426))

(assert (=> b!8040983 d!2395623))

(declare-fun d!2395625 () Bool)

(declare-fun res!3178618 () Bool)

(declare-fun e!4736567 () Bool)

(assert (=> d!2395625 (=> (not res!3178618) (not e!4736567))))

(declare-fun rulesValid!3139 (LexerInterface!8291 List!75243) Bool)

(assert (=> d!2395625 (= res!3178618 (rulesValid!3139 thiss!27054 rules!4142))))

(assert (=> d!2395625 (= (rulesInvariant!6759 thiss!27054 rules!4142) e!4736567)))

(declare-fun b!8041131 () Bool)

(declare-datatypes ((List!75247 0))(
  ( (Nil!75121) (Cons!75121 (h!81569 String!84881) (t!391017 List!75247)) )
))
(declare-fun noDuplicateTag!3300 (LexerInterface!8291 List!75243 List!75247) Bool)

(assert (=> b!8041131 (= e!4736567 (noDuplicateTag!3300 thiss!27054 rules!4142 Nil!75121))))

(assert (= (and d!2395625 res!3178618) b!8041131))

(declare-fun m!8395428 () Bool)

(assert (=> d!2395625 m!8395428))

(declare-fun m!8395430 () Bool)

(assert (=> b!8041131 m!8395430))

(assert (=> b!8040995 d!2395625))

(declare-fun d!2395627 () Bool)

(assert (=> d!2395627 (= (inv!96920 (tag!9565 rSep!142)) (= (mod (str.len (value!291070 (tag!9565 rSep!142))) 2) 0))))

(assert (=> b!8040985 d!2395627))

(declare-fun d!2395629 () Bool)

(declare-fun res!3178619 () Bool)

(declare-fun e!4736568 () Bool)

(assert (=> d!2395629 (=> (not res!3178619) (not e!4736568))))

(assert (=> d!2395629 (= res!3178619 (semiInverseModEq!3862 (toChars!11631 (transformation!8701 rSep!142)) (toValue!11772 (transformation!8701 rSep!142))))))

(assert (=> d!2395629 (= (inv!96923 (transformation!8701 rSep!142)) e!4736568)))

(declare-fun b!8041132 () Bool)

(assert (=> b!8041132 (= e!4736568 (equivClasses!3677 (toChars!11631 (transformation!8701 rSep!142)) (toValue!11772 (transformation!8701 rSep!142))))))

(assert (= (and d!2395629 res!3178619) b!8041132))

(declare-fun m!8395432 () Bool)

(assert (=> d!2395629 m!8395432))

(declare-fun m!8395434 () Bool)

(assert (=> b!8041132 m!8395434))

(assert (=> b!8040985 d!2395629))

(declare-fun d!2395631 () Bool)

(assert (=> d!2395631 (= (inv!96920 (tag!9565 rNSep!142)) (= (mod (str.len (value!291070 (tag!9565 rNSep!142))) 2) 0))))

(assert (=> b!8040986 d!2395631))

(declare-fun d!2395633 () Bool)

(declare-fun res!3178622 () Bool)

(declare-fun e!4736571 () Bool)

(assert (=> d!2395633 (=> (not res!3178622) (not e!4736571))))

(assert (=> d!2395633 (= res!3178622 (semiInverseModEq!3862 (toChars!11631 (transformation!8701 rNSep!142)) (toValue!11772 (transformation!8701 rNSep!142))))))

(assert (=> d!2395633 (= (inv!96923 (transformation!8701 rNSep!142)) e!4736571)))

(declare-fun b!8041135 () Bool)

(assert (=> b!8041135 (= e!4736571 (equivClasses!3677 (toChars!11631 (transformation!8701 rNSep!142)) (toValue!11772 (transformation!8701 rNSep!142))))))

(assert (= (and d!2395633 res!3178622) b!8041135))

(declare-fun m!8395436 () Bool)

(assert (=> d!2395633 m!8395436))

(declare-fun m!8395438 () Bool)

(assert (=> b!8041135 m!8395438))

(assert (=> b!8040986 d!2395633))

(declare-fun d!2395635 () Bool)

(declare-fun lt!2722291 () Bool)

(assert (=> d!2395635 (= lt!2722291 (set.member rNSep!142 (content!16036 rules!4142)))))

(declare-fun e!4736573 () Bool)

(assert (=> d!2395635 (= lt!2722291 e!4736573)))

(declare-fun res!3178623 () Bool)

(assert (=> d!2395635 (=> (not res!3178623) (not e!4736573))))

(assert (=> d!2395635 (= res!3178623 (is-Cons!75117 rules!4142))))

(assert (=> d!2395635 (= (contains!20986 rules!4142 rNSep!142) lt!2722291)))

(declare-fun b!8041136 () Bool)

(declare-fun e!4736572 () Bool)

(assert (=> b!8041136 (= e!4736573 e!4736572)))

(declare-fun res!3178624 () Bool)

(assert (=> b!8041136 (=> res!3178624 e!4736572)))

(assert (=> b!8041136 (= res!3178624 (= (h!81565 rules!4142) rNSep!142))))

(declare-fun b!8041137 () Bool)

(assert (=> b!8041137 (= e!4736572 (contains!20986 (t!391013 rules!4142) rNSep!142))))

(assert (= (and d!2395635 res!3178623) b!8041136))

(assert (= (and b!8041136 (not res!3178624)) b!8041137))

(assert (=> d!2395635 m!8395392))

(declare-fun m!8395440 () Bool)

(assert (=> d!2395635 m!8395440))

(declare-fun m!8395442 () Bool)

(assert (=> b!8041137 m!8395442))

(assert (=> b!8040997 d!2395635))

(declare-fun d!2395637 () Bool)

(assert (=> d!2395637 (= (inv!96920 (tag!9565 (h!81565 rulesRec!188))) (= (mod (str.len (value!291070 (tag!9565 (h!81565 rulesRec!188)))) 2) 0))))

(assert (=> b!8040987 d!2395637))

(declare-fun d!2395639 () Bool)

(declare-fun res!3178625 () Bool)

(declare-fun e!4736574 () Bool)

(assert (=> d!2395639 (=> (not res!3178625) (not e!4736574))))

(assert (=> d!2395639 (= res!3178625 (semiInverseModEq!3862 (toChars!11631 (transformation!8701 (h!81565 rulesRec!188))) (toValue!11772 (transformation!8701 (h!81565 rulesRec!188)))))))

(assert (=> d!2395639 (= (inv!96923 (transformation!8701 (h!81565 rulesRec!188))) e!4736574)))

(declare-fun b!8041138 () Bool)

(assert (=> b!8041138 (= e!4736574 (equivClasses!3677 (toChars!11631 (transformation!8701 (h!81565 rulesRec!188))) (toValue!11772 (transformation!8701 (h!81565 rulesRec!188)))))))

(assert (= (and d!2395639 res!3178625) b!8041138))

(declare-fun m!8395444 () Bool)

(assert (=> d!2395639 m!8395444))

(declare-fun m!8395446 () Bool)

(assert (=> b!8041138 m!8395446))

(assert (=> b!8040987 d!2395639))

(declare-fun b!8041151 () Bool)

(declare-fun e!4736578 () Bool)

(declare-fun tp!2409033 () Bool)

(declare-fun tp!2409036 () Bool)

(assert (=> b!8041151 (= e!4736578 (and tp!2409033 tp!2409036))))

(declare-fun b!8041153 () Bool)

(declare-fun tp!2409034 () Bool)

(declare-fun tp!2409032 () Bool)

(assert (=> b!8041153 (= e!4736578 (and tp!2409034 tp!2409032))))

(assert (=> b!8040989 (= tp!2408976 e!4736578)))

(declare-fun b!8041152 () Bool)

(declare-fun tp!2409035 () Bool)

(assert (=> b!8041152 (= e!4736578 tp!2409035)))

(declare-fun b!8041150 () Bool)

(assert (=> b!8041150 (= e!4736578 tp_is_empty!54539)))

(assert (= (and b!8040989 (is-ElementMatch!21772 (regex!8701 (h!81565 rules!4142)))) b!8041150))

(assert (= (and b!8040989 (is-Concat!30794 (regex!8701 (h!81565 rules!4142)))) b!8041151))

(assert (= (and b!8040989 (is-Star!21772 (regex!8701 (h!81565 rules!4142)))) b!8041152))

(assert (= (and b!8040989 (is-Union!21772 (regex!8701 (h!81565 rules!4142)))) b!8041153))

(declare-fun b!8041164 () Bool)

(declare-fun b_free!135683 () Bool)

(declare-fun b_next!136473 () Bool)

(assert (=> b!8041164 (= b_free!135683 (not b_next!136473))))

(declare-fun tp!2409045 () Bool)

(declare-fun b_and!354119 () Bool)

(assert (=> b!8041164 (= tp!2409045 b_and!354119)))

(declare-fun b_free!135685 () Bool)

(declare-fun b_next!136475 () Bool)

(assert (=> b!8041164 (= b_free!135685 (not b_next!136475))))

(declare-fun tp!2409047 () Bool)

(declare-fun b_and!354121 () Bool)

(assert (=> b!8041164 (= tp!2409047 b_and!354121)))

(declare-fun e!4736588 () Bool)

(assert (=> b!8041164 (= e!4736588 (and tp!2409045 tp!2409047))))

(declare-fun b!8041163 () Bool)

(declare-fun e!4736589 () Bool)

(declare-fun tp!2409048 () Bool)

(assert (=> b!8041163 (= e!4736589 (and tp!2409048 (inv!96920 (tag!9565 (h!81565 (t!391013 rulesRec!188)))) (inv!96923 (transformation!8701 (h!81565 (t!391013 rulesRec!188)))) e!4736588))))

(declare-fun b!8041162 () Bool)

(declare-fun e!4736587 () Bool)

(declare-fun tp!2409046 () Bool)

(assert (=> b!8041162 (= e!4736587 (and e!4736589 tp!2409046))))

(assert (=> b!8040984 (= tp!2408972 e!4736587)))

(assert (= b!8041163 b!8041164))

(assert (= b!8041162 b!8041163))

(assert (= (and b!8040984 (is-Cons!75117 (t!391013 rulesRec!188))) b!8041162))

(declare-fun m!8395452 () Bool)

(assert (=> b!8041163 m!8395452))

(declare-fun m!8395454 () Bool)

(assert (=> b!8041163 m!8395454))

(declare-fun b!8041166 () Bool)

(declare-fun e!4736591 () Bool)

(declare-fun tp!2409050 () Bool)

(declare-fun tp!2409053 () Bool)

(assert (=> b!8041166 (= e!4736591 (and tp!2409050 tp!2409053))))

(declare-fun b!8041168 () Bool)

(declare-fun tp!2409051 () Bool)

(declare-fun tp!2409049 () Bool)

(assert (=> b!8041168 (= e!4736591 (and tp!2409051 tp!2409049))))

(assert (=> b!8040985 (= tp!2408968 e!4736591)))

(declare-fun b!8041167 () Bool)

(declare-fun tp!2409052 () Bool)

(assert (=> b!8041167 (= e!4736591 tp!2409052)))

(declare-fun b!8041165 () Bool)

(assert (=> b!8041165 (= e!4736591 tp_is_empty!54539)))

(assert (= (and b!8040985 (is-ElementMatch!21772 (regex!8701 rSep!142))) b!8041165))

(assert (= (and b!8040985 (is-Concat!30794 (regex!8701 rSep!142))) b!8041166))

(assert (= (and b!8040985 (is-Star!21772 (regex!8701 rSep!142))) b!8041167))

(assert (= (and b!8040985 (is-Union!21772 (regex!8701 rSep!142))) b!8041168))

(declare-fun b!8041171 () Bool)

(declare-fun b_free!135687 () Bool)

(declare-fun b_next!136477 () Bool)

(assert (=> b!8041171 (= b_free!135687 (not b_next!136477))))

(declare-fun tp!2409054 () Bool)

(declare-fun b_and!354123 () Bool)

(assert (=> b!8041171 (= tp!2409054 b_and!354123)))

(declare-fun b_free!135689 () Bool)

(declare-fun b_next!136479 () Bool)

(assert (=> b!8041171 (= b_free!135689 (not b_next!136479))))

(declare-fun tp!2409056 () Bool)

(declare-fun b_and!354125 () Bool)

(assert (=> b!8041171 (= tp!2409056 b_and!354125)))

(declare-fun e!4736593 () Bool)

(assert (=> b!8041171 (= e!4736593 (and tp!2409054 tp!2409056))))

(declare-fun tp!2409057 () Bool)

(declare-fun b!8041170 () Bool)

(declare-fun e!4736594 () Bool)

(assert (=> b!8041170 (= e!4736594 (and tp!2409057 (inv!96920 (tag!9565 (h!81565 (t!391013 rules!4142)))) (inv!96923 (transformation!8701 (h!81565 (t!391013 rules!4142)))) e!4736593))))

(declare-fun b!8041169 () Bool)

(declare-fun e!4736592 () Bool)

(declare-fun tp!2409055 () Bool)

(assert (=> b!8041169 (= e!4736592 (and e!4736594 tp!2409055))))

(assert (=> b!8040996 (= tp!2408969 e!4736592)))

(assert (= b!8041170 b!8041171))

(assert (= b!8041169 b!8041170))

(assert (= (and b!8040996 (is-Cons!75117 (t!391013 rules!4142))) b!8041169))

(declare-fun m!8395456 () Bool)

(assert (=> b!8041170 m!8395456))

(declare-fun m!8395458 () Bool)

(assert (=> b!8041170 m!8395458))

(declare-fun b!8041173 () Bool)

(declare-fun e!4736596 () Bool)

(declare-fun tp!2409059 () Bool)

(declare-fun tp!2409062 () Bool)

(assert (=> b!8041173 (= e!4736596 (and tp!2409059 tp!2409062))))

(declare-fun b!8041175 () Bool)

(declare-fun tp!2409060 () Bool)

(declare-fun tp!2409058 () Bool)

(assert (=> b!8041175 (= e!4736596 (and tp!2409060 tp!2409058))))

(assert (=> b!8040986 (= tp!2408977 e!4736596)))

(declare-fun b!8041174 () Bool)

(declare-fun tp!2409061 () Bool)

(assert (=> b!8041174 (= e!4736596 tp!2409061)))

(declare-fun b!8041172 () Bool)

(assert (=> b!8041172 (= e!4736596 tp_is_empty!54539)))

(assert (= (and b!8040986 (is-ElementMatch!21772 (regex!8701 rNSep!142))) b!8041172))

(assert (= (and b!8040986 (is-Concat!30794 (regex!8701 rNSep!142))) b!8041173))

(assert (= (and b!8040986 (is-Star!21772 (regex!8701 rNSep!142))) b!8041174))

(assert (= (and b!8040986 (is-Union!21772 (regex!8701 rNSep!142))) b!8041175))

(declare-fun b!8041177 () Bool)

(declare-fun e!4736597 () Bool)

(declare-fun tp!2409064 () Bool)

(declare-fun tp!2409067 () Bool)

(assert (=> b!8041177 (= e!4736597 (and tp!2409064 tp!2409067))))

(declare-fun b!8041179 () Bool)

(declare-fun tp!2409065 () Bool)

(declare-fun tp!2409063 () Bool)

(assert (=> b!8041179 (= e!4736597 (and tp!2409065 tp!2409063))))

(assert (=> b!8040987 (= tp!2408967 e!4736597)))

(declare-fun b!8041178 () Bool)

(declare-fun tp!2409066 () Bool)

(assert (=> b!8041178 (= e!4736597 tp!2409066)))

(declare-fun b!8041176 () Bool)

(assert (=> b!8041176 (= e!4736597 tp_is_empty!54539)))

(assert (= (and b!8040987 (is-ElementMatch!21772 (regex!8701 (h!81565 rulesRec!188)))) b!8041176))

(assert (= (and b!8040987 (is-Concat!30794 (regex!8701 (h!81565 rulesRec!188)))) b!8041177))

(assert (= (and b!8040987 (is-Star!21772 (regex!8701 (h!81565 rulesRec!188)))) b!8041178))

(assert (= (and b!8040987 (is-Union!21772 (regex!8701 (h!81565 rulesRec!188)))) b!8041179))

(push 1)

(assert (not b_next!136441))

(assert b_and!354101)

(assert b_and!354095)

(assert (not d!2395629))

(assert (not b!8041070))

(assert (not b!8041127))

(assert (not b!8041082))

(assert (not bm!746400))

(assert (not b_next!136449))

(assert b_and!354089)

(assert (not b!8041178))

(assert b_and!354091)

(assert (not b!8041126))

(assert (not b!8041132))

(assert (not b_next!136475))

(assert b_and!354093)

(assert (not b!8041066))

(assert (not d!2395611))

(assert (not d!2395635))

(assert (not b!8041086))

(assert (not b!8041175))

(assert (not b!8041137))

(assert (not b_next!136477))

(assert (not b!8041128))

(assert (not b!8041076))

(assert (not b!8041151))

(assert (not b_next!136451))

(assert (not b!8041138))

(assert (not b_next!136447))

(assert tp_is_empty!54539)

(assert (not b_next!136445))

(assert (not b!8041174))

(assert (not b!8041131))

(assert (not b_next!136453))

(assert (not b_next!136479))

(assert b_and!354099)

(assert b_and!354097)

(assert (not b!8041092))

(assert (not b!8041084))

(assert (not d!2395639))

(assert (not b_next!136473))

(assert (not b!8041168))

(assert (not bm!746402))

(assert (not b_next!136455))

(assert b_and!354121)

(assert (not bm!746401))

(assert (not b!8041067))

(assert (not d!2395621))

(assert (not b!8041166))

(assert b_and!354123)

(assert (not b!8041162))

(assert (not b!8041163))

(assert (not d!2395599))

(assert (not b!8041170))

(assert (not b!8041169))

(assert (not b!8041167))

(assert (not d!2395601))

(assert (not b_next!136443))

(assert (not b!8041179))

(assert (not b!8041173))

(assert b_and!354119)

(assert (not d!2395633))

(assert b_and!354125)

(assert (not d!2395625))

(assert (not b!8041135))

(assert b_and!354087)

(assert (not d!2395607))

(assert (not b!8041153))

(assert (not b!8041177))

(assert (not b!8041152))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136441))

(assert b_and!354101)

(assert (not b_next!136475))

(assert b_and!354095)

(assert b_and!354093)

(assert (not b_next!136477))

(assert (not b_next!136451))

(assert (not b_next!136447))

(assert (not b_next!136445))

(assert (not b_next!136453))

(assert (not b_next!136473))

(assert b_and!354123)

(assert (not b_next!136443))

(assert b_and!354087)

(assert (not b_next!136449))

(assert b_and!354091)

(assert b_and!354089)

(assert (not b_next!136479))

(assert b_and!354099)

(assert b_and!354097)

(assert (not b_next!136455))

(assert b_and!354121)

(assert b_and!354119)

(assert b_and!354125)

(check-sat)

(pop 1)

