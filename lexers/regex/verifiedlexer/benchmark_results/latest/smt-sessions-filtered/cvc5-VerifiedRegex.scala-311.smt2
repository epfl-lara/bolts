; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!9512 () Bool)

(assert start!9512)

(declare-fun b!99806 () Bool)

(declare-fun b_free!2989 () Bool)

(declare-fun b_next!2989 () Bool)

(assert (=> b!99806 (= b_free!2989 (not b_next!2989))))

(declare-fun tp!56782 () Bool)

(declare-fun b_and!4487 () Bool)

(assert (=> b!99806 (= tp!56782 b_and!4487)))

(declare-fun b_free!2991 () Bool)

(declare-fun b_next!2991 () Bool)

(assert (=> b!99806 (= b_free!2991 (not b_next!2991))))

(declare-fun tp!56781 () Bool)

(declare-fun b_and!4489 () Bool)

(assert (=> b!99806 (= tp!56781 b_and!4489)))

(declare-fun b!99805 () Bool)

(declare-fun e!55346 () Bool)

(declare-fun e!55338 () Bool)

(assert (=> b!99805 (= e!55346 e!55338)))

(declare-fun res!48516 () Bool)

(assert (=> b!99805 (=> (not res!48516) (not e!55338))))

(declare-datatypes ((C!1762 0))(
  ( (C!1763 (val!488 Int)) )
))
(declare-datatypes ((List!1620 0))(
  ( (Nil!1614) (Cons!1614 (h!7011 C!1762) (t!21217 List!1620)) )
))
(declare-datatypes ((IArray!1009 0))(
  ( (IArray!1010 (innerList!562 List!1620)) )
))
(declare-datatypes ((Conc!504 0))(
  ( (Node!504 (left!1233 Conc!504) (right!1563 Conc!504) (csize!1238 Int) (cheight!715 Int)) (Leaf!816 (xs!3091 IArray!1009) (csize!1239 Int)) (Empty!504) )
))
(declare-datatypes ((BalanceConc!1012 0))(
  ( (BalanceConc!1013 (c!24344 Conc!504)) )
))
(declare-datatypes ((List!1621 0))(
  ( (Nil!1615) (Cons!1615 (h!7012 (_ BitVec 16)) (t!21218 List!1621)) )
))
(declare-datatypes ((TokenValue!342 0))(
  ( (FloatLiteralValue!684 (text!2839 List!1621)) (TokenValueExt!341 (__x!1779 Int)) (Broken!1710 (value!12901 List!1621)) (Object!347) (End!342) (Def!342) (Underscore!342) (Match!342) (Else!342) (Error!342) (Case!342) (If!342) (Extends!342) (Abstract!342) (Class!342) (Val!342) (DelimiterValue!684 (del!402 List!1621)) (KeywordValue!348 (value!12902 List!1621)) (CommentValue!684 (value!12903 List!1621)) (WhitespaceValue!684 (value!12904 List!1621)) (IndentationValue!342 (value!12905 List!1621)) (String!2103) (Int32!342) (Broken!1711 (value!12906 List!1621)) (Boolean!343) (Unit!1074) (OperatorValue!345 (op!402 List!1621)) (IdentifierValue!684 (value!12907 List!1621)) (IdentifierValue!685 (value!12908 List!1621)) (WhitespaceValue!685 (value!12909 List!1621)) (True!684) (False!684) (Broken!1712 (value!12910 List!1621)) (Broken!1713 (value!12911 List!1621)) (True!685) (RightBrace!342) (RightBracket!342) (Colon!342) (Null!342) (Comma!342) (LeftBracket!342) (False!685) (LeftBrace!342) (ImaginaryLiteralValue!342 (text!2840 List!1621)) (StringLiteralValue!1026 (value!12912 List!1621)) (EOFValue!342 (value!12913 List!1621)) (IdentValue!342 (value!12914 List!1621)) (DelimiterValue!685 (value!12915 List!1621)) (DedentValue!342 (value!12916 List!1621)) (NewLineValue!342 (value!12917 List!1621)) (IntegerValue!1026 (value!12918 (_ BitVec 32)) (text!2841 List!1621)) (IntegerValue!1027 (value!12919 Int) (text!2842 List!1621)) (Times!342) (Or!342) (Equal!342) (Minus!342) (Broken!1714 (value!12920 List!1621)) (And!342) (Div!342) (LessEqual!342) (Mod!342) (Concat!762) (Not!342) (Plus!342) (SpaceValue!342 (value!12921 List!1621)) (IntegerValue!1028 (value!12922 Int) (text!2843 List!1621)) (StringLiteralValue!1027 (text!2844 List!1621)) (FloatLiteralValue!685 (text!2845 List!1621)) (BytesLiteralValue!342 (value!12923 List!1621)) (CommentValue!685 (value!12924 List!1621)) (StringLiteralValue!1028 (value!12925 List!1621)) (ErrorTokenValue!342 (msg!403 List!1621)) )
))
(declare-datatypes ((Regex!420 0))(
  ( (ElementMatch!420 (c!24345 C!1762)) (Concat!763 (regOne!1352 Regex!420) (regTwo!1352 Regex!420)) (EmptyExpr!420) (Star!420 (reg!749 Regex!420)) (EmptyLang!420) (Union!420 (regOne!1353 Regex!420) (regTwo!1353 Regex!420)) )
))
(declare-datatypes ((String!2104 0))(
  ( (String!2105 (value!12926 String)) )
))
(declare-datatypes ((TokenValueInjection!508 0))(
  ( (TokenValueInjection!509 (toValue!915 Int) (toChars!774 Int)) )
))
(declare-datatypes ((Rule!504 0))(
  ( (Rule!505 (regex!352 Regex!420) (tag!530 String!2104) (isSeparator!352 Bool) (transformation!352 TokenValueInjection!508)) )
))
(declare-datatypes ((Token!460 0))(
  ( (Token!461 (value!12927 TokenValue!342) (rule!857 Rule!504) (size!1429 Int) (originalCharacters!401 List!1620)) )
))
(declare-datatypes ((List!1622 0))(
  ( (Nil!1616) (Cons!1616 (h!7013 Token!460) (t!21219 List!1622)) )
))
(declare-datatypes ((IArray!1011 0))(
  ( (IArray!1012 (innerList!563 List!1622)) )
))
(declare-datatypes ((Conc!505 0))(
  ( (Node!505 (left!1234 Conc!505) (right!1564 Conc!505) (csize!1240 Int) (cheight!716 Int)) (Leaf!817 (xs!3092 IArray!1011) (csize!1241 Int)) (Empty!505) )
))
(declare-datatypes ((BalanceConc!1014 0))(
  ( (BalanceConc!1015 (c!24346 Conc!505)) )
))
(declare-datatypes ((tuple2!1760 0))(
  ( (tuple2!1761 (_1!1087 BalanceConc!1014) (_2!1087 BalanceConc!1012)) )
))
(declare-fun lt!27388 () tuple2!1760)

(declare-fun isEmpty!711 (BalanceConc!1012) Bool)

(assert (=> b!99805 (= res!48516 (not (isEmpty!711 (_2!1087 lt!27388))))))

(declare-datatypes ((LexerInterface!244 0))(
  ( (LexerInterfaceExt!241 (__x!1780 Int)) (Lexer!242) )
))
(declare-fun thiss!19403 () LexerInterface!244)

(declare-datatypes ((List!1623 0))(
  ( (Nil!1617) (Cons!1617 (h!7014 Rule!504) (t!21220 List!1623)) )
))
(declare-fun rules!2471 () List!1623)

(declare-fun input!2238 () List!1620)

(declare-fun lex!150 (LexerInterface!244 List!1623 BalanceConc!1012) tuple2!1760)

(declare-fun seqFromList!198 (List!1620) BalanceConc!1012)

(assert (=> b!99805 (= lt!27388 (lex!150 thiss!19403 rules!2471 (seqFromList!198 input!2238)))))

(declare-fun e!55344 () Bool)

(assert (=> b!99806 (= e!55344 (and tp!56782 tp!56781))))

(declare-fun b!99807 () Bool)

(declare-fun e!55342 () Bool)

(declare-fun e!55343 () Bool)

(assert (=> b!99807 (= e!55342 e!55343)))

(declare-fun res!48515 () Bool)

(assert (=> b!99807 (=> res!48515 e!55343)))

(declare-fun lt!27381 () List!1620)

(assert (=> b!99807 (= res!48515 (not (= input!2238 lt!27381)))))

(declare-fun lt!27391 () List!1620)

(declare-fun lt!27380 () List!1620)

(declare-fun lt!27382 () List!1620)

(declare-fun ++!247 (List!1620 List!1620) List!1620)

(assert (=> b!99807 (= lt!27381 (++!247 lt!27380 (++!247 lt!27382 lt!27391)))))

(declare-fun lt!27377 () BalanceConc!1014)

(declare-fun list!652 (BalanceConc!1012) List!1620)

(declare-fun print!75 (LexerInterface!244 BalanceConc!1014) BalanceConc!1012)

(assert (=> b!99807 (= lt!27382 (list!652 (print!75 thiss!19403 lt!27377)))))

(declare-fun b!99808 () Bool)

(declare-fun res!48513 () Bool)

(assert (=> b!99808 (=> (not res!48513) (not e!55346))))

(declare-fun rulesInvariant!238 (LexerInterface!244 List!1623) Bool)

(assert (=> b!99808 (= res!48513 (rulesInvariant!238 thiss!19403 rules!2471))))

(declare-fun b!99809 () Bool)

(declare-fun res!48512 () Bool)

(assert (=> b!99809 (=> (not res!48512) (not e!55346))))

(declare-fun isEmpty!712 (List!1623) Bool)

(assert (=> b!99809 (= res!48512 (not (isEmpty!712 rules!2471)))))

(declare-fun e!55339 () Bool)

(declare-fun b!99810 () Bool)

(declare-fun tp!56783 () Bool)

(declare-fun inv!1950 (String!2104) Bool)

(declare-fun inv!1953 (TokenValueInjection!508) Bool)

(assert (=> b!99810 (= e!55339 (and tp!56783 (inv!1950 (tag!530 (h!7014 rules!2471))) (inv!1953 (transformation!352 (h!7014 rules!2471))) e!55344))))

(declare-fun b!99811 () Bool)

(declare-fun e!55345 () Bool)

(assert (=> b!99811 (= e!55345 (not e!55342))))

(declare-fun res!48514 () Bool)

(assert (=> b!99811 (=> res!48514 e!55342)))

(declare-datatypes ((tuple2!1762 0))(
  ( (tuple2!1763 (_1!1088 Token!460) (_2!1088 List!1620)) )
))
(declare-fun lt!27383 () tuple2!1762)

(assert (=> b!99811 (= res!48514 (not (= input!2238 (++!247 lt!27380 (_2!1088 lt!27383)))))))

(declare-fun charsOf!83 (Token!460) BalanceConc!1012)

(assert (=> b!99811 (= lt!27380 (list!652 (charsOf!83 (_1!1088 lt!27383))))))

(declare-fun lt!27386 () List!1622)

(declare-fun lt!27385 () tuple2!1760)

(declare-fun lt!27389 () List!1620)

(declare-datatypes ((tuple2!1764 0))(
  ( (tuple2!1765 (_1!1089 List!1622) (_2!1089 List!1620)) )
))
(declare-fun list!653 (BalanceConc!1014) List!1622)

(declare-fun tail!169 (List!1622) List!1622)

(assert (=> b!99811 (= (tuple2!1765 (list!653 (_1!1087 lt!27385)) lt!27389) (tuple2!1765 (tail!169 lt!27386) lt!27391))))

(declare-datatypes ((Unit!1075 0))(
  ( (Unit!1076) )
))
(declare-fun lt!27379 () Unit!1075)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!39 (LexerInterface!244 List!1623 List!1620 List!1622 List!1620) Unit!1075)

(assert (=> b!99811 (= lt!27379 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!39 thiss!19403 rules!2471 input!2238 lt!27386 lt!27391))))

(assert (=> b!99811 (= lt!27391 (list!652 (_2!1087 lt!27388)))))

(declare-fun lt!27392 () List!1620)

(assert (=> b!99811 (= (++!247 lt!27392 lt!27389) (_2!1088 lt!27383))))

(assert (=> b!99811 (= lt!27389 (list!652 (_2!1087 lt!27385)))))

(assert (=> b!99811 (= lt!27392 (list!652 (print!75 thiss!19403 (_1!1087 lt!27385))))))

(assert (=> b!99811 (= lt!27385 (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383))))))

(declare-fun lt!27387 () Unit!1075)

(declare-fun theoremInvertFromString!49 (LexerInterface!244 List!1623 List!1620) Unit!1075)

(assert (=> b!99811 (= lt!27387 (theoremInvertFromString!49 thiss!19403 rules!2471 (_2!1088 lt!27383)))))

(declare-datatypes ((Option!179 0))(
  ( (None!178) (Some!178 (v!12967 tuple2!1762)) )
))
(declare-fun get!411 (Option!179) tuple2!1762)

(declare-fun maxPrefix!84 (LexerInterface!244 List!1623 List!1620) Option!179)

(assert (=> b!99811 (= lt!27383 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!124 (BalanceConc!1014 Token!460) BalanceConc!1014)

(assert (=> b!99811 (= lt!27386 (list!653 (prepend!124 lt!27377 (h!7013 lt!27386))))))

(declare-fun seqFromList!199 (List!1622) BalanceConc!1014)

(assert (=> b!99811 (= lt!27377 (seqFromList!199 (t!21219 lt!27386)))))

(declare-fun lt!27390 () Unit!1075)

(declare-fun seqFromListBHdTlConstructive!57 (Token!460 List!1622 BalanceConc!1014) Unit!1075)

(assert (=> b!99811 (= lt!27390 (seqFromListBHdTlConstructive!57 (h!7013 lt!27386) (t!21219 lt!27386) (_1!1087 lt!27388)))))

(declare-fun b!99812 () Bool)

(declare-fun e!55337 () Bool)

(declare-fun tp_is_empty!763 () Bool)

(declare-fun tp!56779 () Bool)

(assert (=> b!99812 (= e!55337 (and tp_is_empty!763 tp!56779))))

(declare-fun b!99814 () Bool)

(assert (=> b!99814 (= e!55343 (= (++!247 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))) lt!27391) input!2238))))

(assert (=> b!99814 (= (++!247 (++!247 lt!27380 lt!27382) lt!27391) lt!27381)))

(declare-fun lt!27384 () Unit!1075)

(declare-fun lemmaConcatAssociativity!98 (List!1620 List!1620 List!1620) Unit!1075)

(assert (=> b!99814 (= lt!27384 (lemmaConcatAssociativity!98 lt!27380 lt!27382 lt!27391))))

(declare-fun b!99815 () Bool)

(assert (=> b!99815 (= e!55338 e!55345)))

(declare-fun res!48510 () Bool)

(assert (=> b!99815 (=> (not res!48510) (not e!55345))))

(declare-fun lt!27378 () Bool)

(assert (=> b!99815 (= res!48510 (and (or lt!27378 (not (is-Nil!1616 (t!21219 lt!27386)))) (not lt!27378)))))

(assert (=> b!99815 (= lt!27378 (not (is-Cons!1616 lt!27386)))))

(assert (=> b!99815 (= lt!27386 (list!653 (_1!1087 lt!27388)))))

(declare-fun res!48511 () Bool)

(assert (=> start!9512 (=> (not res!48511) (not e!55346))))

(assert (=> start!9512 (= res!48511 (is-Lexer!242 thiss!19403))))

(assert (=> start!9512 e!55346))

(assert (=> start!9512 true))

(declare-fun e!55341 () Bool)

(assert (=> start!9512 e!55341))

(assert (=> start!9512 e!55337))

(declare-fun b!99813 () Bool)

(declare-fun tp!56780 () Bool)

(assert (=> b!99813 (= e!55341 (and e!55339 tp!56780))))

(assert (= (and start!9512 res!48511) b!99809))

(assert (= (and b!99809 res!48512) b!99808))

(assert (= (and b!99808 res!48513) b!99805))

(assert (= (and b!99805 res!48516) b!99815))

(assert (= (and b!99815 res!48510) b!99811))

(assert (= (and b!99811 (not res!48514)) b!99807))

(assert (= (and b!99807 (not res!48515)) b!99814))

(assert (= b!99810 b!99806))

(assert (= b!99813 b!99810))

(assert (= (and start!9512 (is-Cons!1617 rules!2471)) b!99813))

(assert (= (and start!9512 (is-Cons!1614 input!2238)) b!99812))

(declare-fun m!85038 () Bool)

(assert (=> b!99811 m!85038))

(declare-fun m!85040 () Bool)

(assert (=> b!99811 m!85040))

(declare-fun m!85042 () Bool)

(assert (=> b!99811 m!85042))

(declare-fun m!85044 () Bool)

(assert (=> b!99811 m!85044))

(declare-fun m!85046 () Bool)

(assert (=> b!99811 m!85046))

(declare-fun m!85048 () Bool)

(assert (=> b!99811 m!85048))

(declare-fun m!85050 () Bool)

(assert (=> b!99811 m!85050))

(declare-fun m!85052 () Bool)

(assert (=> b!99811 m!85052))

(declare-fun m!85054 () Bool)

(assert (=> b!99811 m!85054))

(declare-fun m!85056 () Bool)

(assert (=> b!99811 m!85056))

(declare-fun m!85058 () Bool)

(assert (=> b!99811 m!85058))

(declare-fun m!85060 () Bool)

(assert (=> b!99811 m!85060))

(declare-fun m!85062 () Bool)

(assert (=> b!99811 m!85062))

(declare-fun m!85064 () Bool)

(assert (=> b!99811 m!85064))

(assert (=> b!99811 m!85060))

(declare-fun m!85066 () Bool)

(assert (=> b!99811 m!85066))

(assert (=> b!99811 m!85038))

(declare-fun m!85068 () Bool)

(assert (=> b!99811 m!85068))

(declare-fun m!85070 () Bool)

(assert (=> b!99811 m!85070))

(assert (=> b!99811 m!85070))

(declare-fun m!85072 () Bool)

(assert (=> b!99811 m!85072))

(assert (=> b!99811 m!85052))

(declare-fun m!85074 () Bool)

(assert (=> b!99811 m!85074))

(assert (=> b!99811 m!85048))

(declare-fun m!85076 () Bool)

(assert (=> b!99811 m!85076))

(declare-fun m!85078 () Bool)

(assert (=> b!99805 m!85078))

(declare-fun m!85080 () Bool)

(assert (=> b!99805 m!85080))

(assert (=> b!99805 m!85080))

(declare-fun m!85082 () Bool)

(assert (=> b!99805 m!85082))

(declare-fun m!85084 () Bool)

(assert (=> b!99808 m!85084))

(declare-fun m!85086 () Bool)

(assert (=> b!99814 m!85086))

(declare-fun m!85088 () Bool)

(assert (=> b!99814 m!85088))

(declare-fun m!85090 () Bool)

(assert (=> b!99814 m!85090))

(assert (=> b!99814 m!85086))

(declare-fun m!85092 () Bool)

(assert (=> b!99814 m!85092))

(assert (=> b!99814 m!85090))

(declare-fun m!85094 () Bool)

(assert (=> b!99814 m!85094))

(assert (=> b!99814 m!85094))

(declare-fun m!85096 () Bool)

(assert (=> b!99814 m!85096))

(declare-fun m!85098 () Bool)

(assert (=> b!99807 m!85098))

(assert (=> b!99807 m!85098))

(declare-fun m!85100 () Bool)

(assert (=> b!99807 m!85100))

(declare-fun m!85102 () Bool)

(assert (=> b!99807 m!85102))

(assert (=> b!99807 m!85102))

(declare-fun m!85104 () Bool)

(assert (=> b!99807 m!85104))

(declare-fun m!85106 () Bool)

(assert (=> b!99809 m!85106))

(declare-fun m!85108 () Bool)

(assert (=> b!99815 m!85108))

(declare-fun m!85110 () Bool)

(assert (=> b!99810 m!85110))

(declare-fun m!85112 () Bool)

(assert (=> b!99810 m!85112))

(push 1)

(assert (not b_next!2989))

(assert (not b!99815))

(assert (not b!99810))

(assert b_and!4487)

(assert (not b!99811))

(assert (not b!99812))

(assert b_and!4489)

(assert (not b!99808))

(assert (not b!99813))

(assert (not b!99814))

(assert tp_is_empty!763)

(assert (not b!99805))

(assert (not b!99809))

(assert (not b_next!2991))

(assert (not b!99807))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4489)

(assert b_and!4487)

(assert (not b_next!2991))

(assert (not b_next!2989))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!99857 () Bool)

(declare-fun e!55381 () List!1620)

(assert (=> b!99857 (= e!55381 lt!27391)))

(declare-fun d!23296 () Bool)

(declare-fun e!55382 () Bool)

(assert (=> d!23296 e!55382))

(declare-fun res!48545 () Bool)

(assert (=> d!23296 (=> (not res!48545) (not e!55382))))

(declare-fun lt!27443 () List!1620)

(declare-fun content!125 (List!1620) (Set C!1762))

(assert (=> d!23296 (= res!48545 (= (content!125 lt!27443) (set.union (content!125 (++!247 lt!27380 lt!27382)) (content!125 lt!27391))))))

(assert (=> d!23296 (= lt!27443 e!55381)))

(declare-fun c!24353 () Bool)

(assert (=> d!23296 (= c!24353 (is-Nil!1614 (++!247 lt!27380 lt!27382)))))

(assert (=> d!23296 (= (++!247 (++!247 lt!27380 lt!27382) lt!27391) lt!27443)))

(declare-fun b!99860 () Bool)

(assert (=> b!99860 (= e!55382 (or (not (= lt!27391 Nil!1614)) (= lt!27443 (++!247 lt!27380 lt!27382))))))

(declare-fun b!99858 () Bool)

(assert (=> b!99858 (= e!55381 (Cons!1614 (h!7011 (++!247 lt!27380 lt!27382)) (++!247 (t!21217 (++!247 lt!27380 lt!27382)) lt!27391)))))

(declare-fun b!99859 () Bool)

(declare-fun res!48544 () Bool)

(assert (=> b!99859 (=> (not res!48544) (not e!55382))))

(declare-fun size!1431 (List!1620) Int)

(assert (=> b!99859 (= res!48544 (= (size!1431 lt!27443) (+ (size!1431 (++!247 lt!27380 lt!27382)) (size!1431 lt!27391))))))

(assert (= (and d!23296 c!24353) b!99857))

(assert (= (and d!23296 (not c!24353)) b!99858))

(assert (= (and d!23296 res!48545) b!99859))

(assert (= (and b!99859 res!48544) b!99860))

(declare-fun m!85190 () Bool)

(assert (=> d!23296 m!85190))

(assert (=> d!23296 m!85094))

(declare-fun m!85192 () Bool)

(assert (=> d!23296 m!85192))

(declare-fun m!85194 () Bool)

(assert (=> d!23296 m!85194))

(declare-fun m!85196 () Bool)

(assert (=> b!99858 m!85196))

(declare-fun m!85198 () Bool)

(assert (=> b!99859 m!85198))

(assert (=> b!99859 m!85094))

(declare-fun m!85200 () Bool)

(assert (=> b!99859 m!85200))

(declare-fun m!85202 () Bool)

(assert (=> b!99859 m!85202))

(assert (=> b!99814 d!23296))

(declare-fun b!99861 () Bool)

(declare-fun e!55383 () List!1620)

(assert (=> b!99861 (= e!55383 lt!27391)))

(declare-fun d!23298 () Bool)

(declare-fun e!55384 () Bool)

(assert (=> d!23298 e!55384))

(declare-fun res!48547 () Bool)

(assert (=> d!23298 (=> (not res!48547) (not e!55384))))

(declare-fun lt!27444 () List!1620)

(assert (=> d!23298 (= res!48547 (= (content!125 lt!27444) (set.union (content!125 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) (content!125 lt!27391))))))

(assert (=> d!23298 (= lt!27444 e!55383)))

(declare-fun c!24354 () Bool)

(assert (=> d!23298 (= c!24354 (is-Nil!1614 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))))))

(assert (=> d!23298 (= (++!247 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))) lt!27391) lt!27444)))

(declare-fun b!99864 () Bool)

(assert (=> b!99864 (= e!55384 (or (not (= lt!27391 Nil!1614)) (= lt!27444 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))))))))

(declare-fun b!99862 () Bool)

(assert (=> b!99862 (= e!55383 (Cons!1614 (h!7011 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) (++!247 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) lt!27391)))))

(declare-fun b!99863 () Bool)

(declare-fun res!48546 () Bool)

(assert (=> b!99863 (=> (not res!48546) (not e!55384))))

(assert (=> b!99863 (= res!48546 (= (size!1431 lt!27444) (+ (size!1431 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) (size!1431 lt!27391))))))

(assert (= (and d!23298 c!24354) b!99861))

(assert (= (and d!23298 (not c!24354)) b!99862))

(assert (= (and d!23298 res!48547) b!99863))

(assert (= (and b!99863 res!48546) b!99864))

(declare-fun m!85204 () Bool)

(assert (=> d!23298 m!85204))

(assert (=> d!23298 m!85086))

(declare-fun m!85206 () Bool)

(assert (=> d!23298 m!85206))

(assert (=> d!23298 m!85194))

(declare-fun m!85208 () Bool)

(assert (=> b!99862 m!85208))

(declare-fun m!85210 () Bool)

(assert (=> b!99863 m!85210))

(assert (=> b!99863 m!85086))

(declare-fun m!85212 () Bool)

(assert (=> b!99863 m!85212))

(assert (=> b!99863 m!85202))

(assert (=> b!99814 d!23298))

(declare-fun d!23300 () Bool)

(assert (=> d!23300 (= (++!247 (++!247 lt!27380 lt!27382) lt!27391) (++!247 lt!27380 (++!247 lt!27382 lt!27391)))))

(declare-fun lt!27447 () Unit!1075)

(declare-fun choose!1383 (List!1620 List!1620 List!1620) Unit!1075)

(assert (=> d!23300 (= lt!27447 (choose!1383 lt!27380 lt!27382 lt!27391))))

(assert (=> d!23300 (= (lemmaConcatAssociativity!98 lt!27380 lt!27382 lt!27391) lt!27447)))

(declare-fun bs!9779 () Bool)

(assert (= bs!9779 d!23300))

(assert (=> bs!9779 m!85094))

(assert (=> bs!9779 m!85096))

(assert (=> bs!9779 m!85094))

(assert (=> bs!9779 m!85098))

(assert (=> bs!9779 m!85098))

(assert (=> bs!9779 m!85100))

(declare-fun m!85214 () Bool)

(assert (=> bs!9779 m!85214))

(assert (=> b!99814 d!23300))

(declare-fun d!23302 () Bool)

(declare-fun lt!27450 () BalanceConc!1012)

(declare-fun printList!38 (LexerInterface!244 List!1622) List!1620)

(assert (=> d!23302 (= (list!652 lt!27450) (printList!38 thiss!19403 (list!653 (_1!1087 lt!27388))))))

(declare-fun printTailRec!38 (LexerInterface!244 BalanceConc!1014 Int BalanceConc!1012) BalanceConc!1012)

(assert (=> d!23302 (= lt!27450 (printTailRec!38 thiss!19403 (_1!1087 lt!27388) 0 (BalanceConc!1013 Empty!504)))))

(assert (=> d!23302 (= (print!75 thiss!19403 (_1!1087 lt!27388)) lt!27450)))

(declare-fun bs!9780 () Bool)

(assert (= bs!9780 d!23302))

(declare-fun m!85216 () Bool)

(assert (=> bs!9780 m!85216))

(assert (=> bs!9780 m!85108))

(assert (=> bs!9780 m!85108))

(declare-fun m!85218 () Bool)

(assert (=> bs!9780 m!85218))

(declare-fun m!85220 () Bool)

(assert (=> bs!9780 m!85220))

(assert (=> b!99814 d!23302))

(declare-fun b!99865 () Bool)

(declare-fun e!55385 () List!1620)

(assert (=> b!99865 (= e!55385 lt!27382)))

(declare-fun d!23304 () Bool)

(declare-fun e!55386 () Bool)

(assert (=> d!23304 e!55386))

(declare-fun res!48550 () Bool)

(assert (=> d!23304 (=> (not res!48550) (not e!55386))))

(declare-fun lt!27451 () List!1620)

(assert (=> d!23304 (= res!48550 (= (content!125 lt!27451) (set.union (content!125 lt!27380) (content!125 lt!27382))))))

(assert (=> d!23304 (= lt!27451 e!55385)))

(declare-fun c!24355 () Bool)

(assert (=> d!23304 (= c!24355 (is-Nil!1614 lt!27380))))

(assert (=> d!23304 (= (++!247 lt!27380 lt!27382) lt!27451)))

(declare-fun b!99868 () Bool)

(assert (=> b!99868 (= e!55386 (or (not (= lt!27382 Nil!1614)) (= lt!27451 lt!27380)))))

(declare-fun b!99866 () Bool)

(assert (=> b!99866 (= e!55385 (Cons!1614 (h!7011 lt!27380) (++!247 (t!21217 lt!27380) lt!27382)))))

(declare-fun b!99867 () Bool)

(declare-fun res!48549 () Bool)

(assert (=> b!99867 (=> (not res!48549) (not e!55386))))

(assert (=> b!99867 (= res!48549 (= (size!1431 lt!27451) (+ (size!1431 lt!27380) (size!1431 lt!27382))))))

(assert (= (and d!23304 c!24355) b!99865))

(assert (= (and d!23304 (not c!24355)) b!99866))

(assert (= (and d!23304 res!48550) b!99867))

(assert (= (and b!99867 res!48549) b!99868))

(declare-fun m!85222 () Bool)

(assert (=> d!23304 m!85222))

(declare-fun m!85224 () Bool)

(assert (=> d!23304 m!85224))

(declare-fun m!85226 () Bool)

(assert (=> d!23304 m!85226))

(declare-fun m!85228 () Bool)

(assert (=> b!99866 m!85228))

(declare-fun m!85230 () Bool)

(assert (=> b!99867 m!85230))

(declare-fun m!85232 () Bool)

(assert (=> b!99867 m!85232))

(declare-fun m!85234 () Bool)

(assert (=> b!99867 m!85234))

(assert (=> b!99814 d!23304))

(declare-fun d!23306 () Bool)

(declare-fun list!656 (Conc!504) List!1620)

(assert (=> d!23306 (= (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))) (list!656 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388)))))))

(declare-fun bs!9781 () Bool)

(assert (= bs!9781 d!23306))

(declare-fun m!85236 () Bool)

(assert (=> bs!9781 m!85236))

(assert (=> b!99814 d!23306))

(declare-fun d!23308 () Bool)

(assert (=> d!23308 (= (isEmpty!712 rules!2471) (is-Nil!1617 rules!2471))))

(assert (=> b!99809 d!23308))

(declare-fun d!23310 () Bool)

(declare-fun list!657 (Conc!505) List!1622)

(assert (=> d!23310 (= (list!653 (_1!1087 lt!27388)) (list!657 (c!24346 (_1!1087 lt!27388))))))

(declare-fun bs!9782 () Bool)

(assert (= bs!9782 d!23310))

(declare-fun m!85238 () Bool)

(assert (=> bs!9782 m!85238))

(assert (=> b!99815 d!23310))

(declare-fun d!23312 () Bool)

(assert (=> d!23312 (= (inv!1950 (tag!530 (h!7014 rules!2471))) (= (mod (str.len (value!12926 (tag!530 (h!7014 rules!2471)))) 2) 0))))

(assert (=> b!99810 d!23312))

(declare-fun d!23314 () Bool)

(declare-fun res!48556 () Bool)

(declare-fun e!55389 () Bool)

(assert (=> d!23314 (=> (not res!48556) (not e!55389))))

(declare-fun semiInverseModEq!86 (Int Int) Bool)

(assert (=> d!23314 (= res!48556 (semiInverseModEq!86 (toChars!774 (transformation!352 (h!7014 rules!2471))) (toValue!915 (transformation!352 (h!7014 rules!2471)))))))

(assert (=> d!23314 (= (inv!1953 (transformation!352 (h!7014 rules!2471))) e!55389)))

(declare-fun b!99871 () Bool)

(declare-fun equivClasses!81 (Int Int) Bool)

(assert (=> b!99871 (= e!55389 (equivClasses!81 (toChars!774 (transformation!352 (h!7014 rules!2471))) (toValue!915 (transformation!352 (h!7014 rules!2471)))))))

(assert (= (and d!23314 res!48556) b!99871))

(declare-fun m!85240 () Bool)

(assert (=> d!23314 m!85240))

(declare-fun m!85242 () Bool)

(assert (=> b!99871 m!85242))

(assert (=> b!99810 d!23314))

(declare-fun d!23316 () Bool)

(declare-fun lt!27454 () Bool)

(declare-fun isEmpty!715 (List!1620) Bool)

(assert (=> d!23316 (= lt!27454 (isEmpty!715 (list!652 (_2!1087 lt!27388))))))

(declare-fun isEmpty!716 (Conc!504) Bool)

(assert (=> d!23316 (= lt!27454 (isEmpty!716 (c!24344 (_2!1087 lt!27388))))))

(assert (=> d!23316 (= (isEmpty!711 (_2!1087 lt!27388)) lt!27454)))

(declare-fun bs!9783 () Bool)

(assert (= bs!9783 d!23316))

(assert (=> bs!9783 m!85056))

(assert (=> bs!9783 m!85056))

(declare-fun m!85244 () Bool)

(assert (=> bs!9783 m!85244))

(declare-fun m!85246 () Bool)

(assert (=> bs!9783 m!85246))

(assert (=> b!99805 d!23316))

(declare-fun e!55408 () Bool)

(declare-fun lt!27461 () tuple2!1760)

(declare-fun b!99901 () Bool)

(declare-fun lexList!72 (LexerInterface!244 List!1623 List!1620) tuple2!1764)

(assert (=> b!99901 (= e!55408 (= (list!652 (_2!1087 lt!27461)) (_2!1089 (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 input!2238))))))))

(declare-fun b!99902 () Bool)

(declare-fun res!48577 () Bool)

(assert (=> b!99902 (=> (not res!48577) (not e!55408))))

(assert (=> b!99902 (= res!48577 (= (list!653 (_1!1087 lt!27461)) (_1!1089 (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 input!2238))))))))

(declare-fun b!99903 () Bool)

(declare-fun e!55409 () Bool)

(declare-fun isEmpty!717 (BalanceConc!1014) Bool)

(assert (=> b!99903 (= e!55409 (not (isEmpty!717 (_1!1087 lt!27461))))))

(declare-fun d!23318 () Bool)

(assert (=> d!23318 e!55408))

(declare-fun res!48576 () Bool)

(assert (=> d!23318 (=> (not res!48576) (not e!55408))))

(declare-fun e!55407 () Bool)

(assert (=> d!23318 (= res!48576 e!55407)))

(declare-fun c!24362 () Bool)

(declare-fun size!1432 (BalanceConc!1014) Int)

(assert (=> d!23318 (= c!24362 (> (size!1432 (_1!1087 lt!27461)) 0))))

(declare-fun lexTailRecV2!69 (LexerInterface!244 List!1623 BalanceConc!1012 BalanceConc!1012 BalanceConc!1012 BalanceConc!1014) tuple2!1760)

(assert (=> d!23318 (= lt!27461 (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 input!2238) (BalanceConc!1013 Empty!504) (seqFromList!198 input!2238) (BalanceConc!1015 Empty!505)))))

(assert (=> d!23318 (= (lex!150 thiss!19403 rules!2471 (seqFromList!198 input!2238)) lt!27461)))

(declare-fun b!99904 () Bool)

(assert (=> b!99904 (= e!55407 e!55409)))

(declare-fun res!48578 () Bool)

(declare-fun size!1433 (BalanceConc!1012) Int)

(assert (=> b!99904 (= res!48578 (< (size!1433 (_2!1087 lt!27461)) (size!1433 (seqFromList!198 input!2238))))))

(assert (=> b!99904 (=> (not res!48578) (not e!55409))))

(declare-fun b!99905 () Bool)

(assert (=> b!99905 (= e!55407 (= (_2!1087 lt!27461) (seqFromList!198 input!2238)))))

(assert (= (and d!23318 c!24362) b!99904))

(assert (= (and d!23318 (not c!24362)) b!99905))

(assert (= (and b!99904 res!48578) b!99903))

(assert (= (and d!23318 res!48576) b!99902))

(assert (= (and b!99902 res!48577) b!99901))

(declare-fun m!85282 () Bool)

(assert (=> d!23318 m!85282))

(assert (=> d!23318 m!85080))

(assert (=> d!23318 m!85080))

(declare-fun m!85284 () Bool)

(assert (=> d!23318 m!85284))

(declare-fun m!85286 () Bool)

(assert (=> b!99902 m!85286))

(assert (=> b!99902 m!85080))

(declare-fun m!85288 () Bool)

(assert (=> b!99902 m!85288))

(assert (=> b!99902 m!85288))

(declare-fun m!85290 () Bool)

(assert (=> b!99902 m!85290))

(declare-fun m!85292 () Bool)

(assert (=> b!99904 m!85292))

(assert (=> b!99904 m!85080))

(declare-fun m!85294 () Bool)

(assert (=> b!99904 m!85294))

(declare-fun m!85296 () Bool)

(assert (=> b!99901 m!85296))

(assert (=> b!99901 m!85080))

(assert (=> b!99901 m!85288))

(assert (=> b!99901 m!85288))

(assert (=> b!99901 m!85290))

(declare-fun m!85298 () Bool)

(assert (=> b!99903 m!85298))

(assert (=> b!99805 d!23318))

(declare-fun d!23330 () Bool)

(declare-fun fromListB!90 (List!1620) BalanceConc!1012)

(assert (=> d!23330 (= (seqFromList!198 input!2238) (fromListB!90 input!2238))))

(declare-fun bs!9785 () Bool)

(assert (= bs!9785 d!23330))

(declare-fun m!85300 () Bool)

(assert (=> bs!9785 m!85300))

(assert (=> b!99805 d!23330))

(declare-fun d!23332 () Bool)

(assert (=> d!23332 (= (list!652 (_2!1087 lt!27385)) (list!656 (c!24344 (_2!1087 lt!27385))))))

(declare-fun bs!9786 () Bool)

(assert (= bs!9786 d!23332))

(declare-fun m!85302 () Bool)

(assert (=> bs!9786 m!85302))

(assert (=> b!99811 d!23332))

(declare-fun d!23334 () Bool)

(assert (=> d!23334 (= (list!652 (_2!1087 lt!27388)) (list!656 (c!24344 (_2!1087 lt!27388))))))

(declare-fun bs!9787 () Bool)

(assert (= bs!9787 d!23334))

(declare-fun m!85304 () Bool)

(assert (=> bs!9787 m!85304))

(assert (=> b!99811 d!23334))

(declare-fun d!23336 () Bool)

(assert (=> d!23336 (= (seqFromList!198 (_2!1088 lt!27383)) (fromListB!90 (_2!1088 lt!27383)))))

(declare-fun bs!9788 () Bool)

(assert (= bs!9788 d!23336))

(declare-fun m!85306 () Bool)

(assert (=> bs!9788 m!85306))

(assert (=> b!99811 d!23336))

(declare-fun d!23338 () Bool)

(assert (=> d!23338 (= (tail!169 lt!27386) (t!21219 lt!27386))))

(assert (=> b!99811 d!23338))

(declare-fun d!23340 () Bool)

(declare-fun lt!27464 () BalanceConc!1012)

(assert (=> d!23340 (= (list!652 lt!27464) (originalCharacters!401 (_1!1088 lt!27383)))))

(declare-fun dynLambda!479 (Int TokenValue!342) BalanceConc!1012)

(assert (=> d!23340 (= lt!27464 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))))

(assert (=> d!23340 (= (charsOf!83 (_1!1088 lt!27383)) lt!27464)))

(declare-fun b_lambda!1137 () Bool)

(assert (=> (not b_lambda!1137) (not d!23340)))

(declare-fun tb!3035 () Bool)

(declare-fun t!21226 () Bool)

(assert (=> (and b!99806 (= (toChars!774 (transformation!352 (h!7014 rules!2471))) (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383))))) t!21226) tb!3035))

(declare-fun b!99910 () Bool)

(declare-fun e!55412 () Bool)

(declare-fun tp!56801 () Bool)

(declare-fun inv!1955 (Conc!504) Bool)

(assert (=> b!99910 (= e!55412 (and (inv!1955 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))) tp!56801))))

(declare-fun result!4404 () Bool)

(declare-fun inv!1956 (BalanceConc!1012) Bool)

(assert (=> tb!3035 (= result!4404 (and (inv!1956 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))) e!55412))))

(assert (= tb!3035 b!99910))

(declare-fun m!85308 () Bool)

(assert (=> b!99910 m!85308))

(declare-fun m!85310 () Bool)

(assert (=> tb!3035 m!85310))

(assert (=> d!23340 t!21226))

(declare-fun b_and!4495 () Bool)

(assert (= b_and!4489 (and (=> t!21226 result!4404) b_and!4495)))

(declare-fun m!85312 () Bool)

(assert (=> d!23340 m!85312))

(declare-fun m!85314 () Bool)

(assert (=> d!23340 m!85314))

(assert (=> b!99811 d!23340))

(declare-fun d!23342 () Bool)

(assert (=> d!23342 (= (list!653 (_1!1087 lt!27388)) (list!653 (prepend!124 (seqFromList!199 (t!21219 lt!27386)) (h!7013 lt!27386))))))

(declare-fun lt!27470 () Unit!1075)

(declare-fun choose!1384 (Token!460 List!1622 BalanceConc!1014) Unit!1075)

(assert (=> d!23342 (= lt!27470 (choose!1384 (h!7013 lt!27386) (t!21219 lt!27386) (_1!1087 lt!27388)))))

(declare-fun $colon$colon!37 (List!1622 Token!460) List!1622)

(assert (=> d!23342 (= (list!653 (_1!1087 lt!27388)) (list!653 (seqFromList!199 ($colon$colon!37 (t!21219 lt!27386) (h!7013 lt!27386)))))))

(assert (=> d!23342 (= (seqFromListBHdTlConstructive!57 (h!7013 lt!27386) (t!21219 lt!27386) (_1!1087 lt!27388)) lt!27470)))

(declare-fun bs!9790 () Bool)

(assert (= bs!9790 d!23342))

(assert (=> bs!9790 m!85108))

(declare-fun m!85324 () Bool)

(assert (=> bs!9790 m!85324))

(declare-fun m!85326 () Bool)

(assert (=> bs!9790 m!85326))

(assert (=> bs!9790 m!85044))

(declare-fun m!85328 () Bool)

(assert (=> bs!9790 m!85328))

(declare-fun m!85330 () Bool)

(assert (=> bs!9790 m!85330))

(assert (=> bs!9790 m!85324))

(assert (=> bs!9790 m!85326))

(declare-fun m!85332 () Bool)

(assert (=> bs!9790 m!85332))

(assert (=> bs!9790 m!85044))

(assert (=> bs!9790 m!85328))

(declare-fun m!85334 () Bool)

(assert (=> bs!9790 m!85334))

(assert (=> b!99811 d!23342))

(declare-fun d!23348 () Bool)

(declare-fun e!55419 () Bool)

(assert (=> d!23348 e!55419))

(declare-fun res!48585 () Bool)

(assert (=> d!23348 (=> (not res!48585) (not e!55419))))

(declare-fun isBalanced!128 (Conc!505) Bool)

(declare-fun prepend!126 (Conc!505 Token!460) Conc!505)

(assert (=> d!23348 (= res!48585 (isBalanced!128 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386))))))

(declare-fun lt!27478 () BalanceConc!1014)

(assert (=> d!23348 (= lt!27478 (BalanceConc!1015 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386))))))

(assert (=> d!23348 (= (prepend!124 lt!27377 (h!7013 lt!27386)) lt!27478)))

(declare-fun b!99921 () Bool)

(assert (=> b!99921 (= e!55419 (= (list!653 lt!27478) (Cons!1616 (h!7013 lt!27386) (list!653 lt!27377))))))

(assert (= (and d!23348 res!48585) b!99921))

(declare-fun m!85356 () Bool)

(assert (=> d!23348 m!85356))

(assert (=> d!23348 m!85356))

(declare-fun m!85358 () Bool)

(assert (=> d!23348 m!85358))

(declare-fun m!85360 () Bool)

(assert (=> b!99921 m!85360))

(declare-fun m!85362 () Bool)

(assert (=> b!99921 m!85362))

(assert (=> b!99811 d!23348))

(declare-fun d!23358 () Bool)

(assert (=> d!23358 (= (list!653 (prepend!124 lt!27377 (h!7013 lt!27386))) (list!657 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386)))))))

(declare-fun bs!9794 () Bool)

(assert (= bs!9794 d!23358))

(declare-fun m!85366 () Bool)

(assert (=> bs!9794 m!85366))

(assert (=> b!99811 d!23358))

(declare-fun d!23360 () Bool)

(assert (=> d!23360 (= (list!652 (print!75 thiss!19403 (_1!1087 lt!27385))) (list!656 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385)))))))

(declare-fun bs!9795 () Bool)

(assert (= bs!9795 d!23360))

(declare-fun m!85372 () Bool)

(assert (=> bs!9795 m!85372))

(assert (=> b!99811 d!23360))

(declare-fun b!99944 () Bool)

(declare-fun res!48608 () Bool)

(declare-fun e!55430 () Bool)

(assert (=> b!99944 (=> (not res!48608) (not e!55430))))

(declare-fun lt!27496 () Option!179)

(assert (=> b!99944 (= res!48608 (< (size!1431 (_2!1088 (get!411 lt!27496))) (size!1431 input!2238)))))

(declare-fun b!99945 () Bool)

(declare-fun res!48604 () Bool)

(assert (=> b!99945 (=> (not res!48604) (not e!55430))))

(assert (=> b!99945 (= res!48604 (= (++!247 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))) (_2!1088 (get!411 lt!27496))) input!2238))))

(declare-fun d!23364 () Bool)

(declare-fun e!55428 () Bool)

(assert (=> d!23364 e!55428))

(declare-fun res!48602 () Bool)

(assert (=> d!23364 (=> res!48602 e!55428)))

(declare-fun isEmpty!718 (Option!179) Bool)

(assert (=> d!23364 (= res!48602 (isEmpty!718 lt!27496))))

(declare-fun e!55429 () Option!179)

(assert (=> d!23364 (= lt!27496 e!55429)))

(declare-fun c!24369 () Bool)

(assert (=> d!23364 (= c!24369 (and (is-Cons!1617 rules!2471) (is-Nil!1617 (t!21220 rules!2471))))))

(declare-fun lt!27494 () Unit!1075)

(declare-fun lt!27495 () Unit!1075)

(assert (=> d!23364 (= lt!27494 lt!27495)))

(declare-fun isPrefix!42 (List!1620 List!1620) Bool)

(assert (=> d!23364 (isPrefix!42 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!42 (List!1620 List!1620) Unit!1075)

(assert (=> d!23364 (= lt!27495 (lemmaIsPrefixRefl!42 input!2238 input!2238))))

(declare-fun rulesValidInductive!71 (LexerInterface!244 List!1623) Bool)

(assert (=> d!23364 (rulesValidInductive!71 thiss!19403 rules!2471)))

(assert (=> d!23364 (= (maxPrefix!84 thiss!19403 rules!2471 input!2238) lt!27496)))

(declare-fun call!4403 () Option!179)

(declare-fun bm!4398 () Bool)

(declare-fun maxPrefixOneRule!40 (LexerInterface!244 Rule!504 List!1620) Option!179)

(assert (=> bm!4398 (= call!4403 (maxPrefixOneRule!40 thiss!19403 (h!7014 rules!2471) input!2238))))

(declare-fun b!99946 () Bool)

(declare-fun res!48605 () Bool)

(assert (=> b!99946 (=> (not res!48605) (not e!55430))))

(declare-fun apply!260 (TokenValueInjection!508 BalanceConc!1012) TokenValue!342)

(assert (=> b!99946 (= res!48605 (= (value!12927 (_1!1088 (get!411 lt!27496))) (apply!260 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))) (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27496)))))))))

(declare-fun b!99947 () Bool)

(assert (=> b!99947 (= e!55429 call!4403)))

(declare-fun b!99948 () Bool)

(declare-fun res!48606 () Bool)

(assert (=> b!99948 (=> (not res!48606) (not e!55430))))

(assert (=> b!99948 (= res!48606 (= (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))) (originalCharacters!401 (_1!1088 (get!411 lt!27496)))))))

(declare-fun b!99949 () Bool)

(declare-fun lt!27493 () Option!179)

(declare-fun lt!27492 () Option!179)

(assert (=> b!99949 (= e!55429 (ite (and (is-None!178 lt!27493) (is-None!178 lt!27492)) None!178 (ite (is-None!178 lt!27492) lt!27493 (ite (is-None!178 lt!27493) lt!27492 (ite (>= (size!1429 (_1!1088 (v!12967 lt!27493))) (size!1429 (_1!1088 (v!12967 lt!27492)))) lt!27493 lt!27492)))))))

(assert (=> b!99949 (= lt!27493 call!4403)))

(assert (=> b!99949 (= lt!27492 (maxPrefix!84 thiss!19403 (t!21220 rules!2471) input!2238))))

(declare-fun b!99950 () Bool)

(declare-fun res!48603 () Bool)

(assert (=> b!99950 (=> (not res!48603) (not e!55430))))

(declare-fun matchR!44 (Regex!420 List!1620) Bool)

(assert (=> b!99950 (= res!48603 (matchR!44 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496)))) (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))))))

(declare-fun b!99951 () Bool)

(declare-fun contains!260 (List!1623 Rule!504) Bool)

(assert (=> b!99951 (= e!55430 (contains!260 rules!2471 (rule!857 (_1!1088 (get!411 lt!27496)))))))

(declare-fun b!99952 () Bool)

(assert (=> b!99952 (= e!55428 e!55430)))

(declare-fun res!48607 () Bool)

(assert (=> b!99952 (=> (not res!48607) (not e!55430))))

(declare-fun isDefined!55 (Option!179) Bool)

(assert (=> b!99952 (= res!48607 (isDefined!55 lt!27496))))

(assert (= (and d!23364 c!24369) b!99947))

(assert (= (and d!23364 (not c!24369)) b!99949))

(assert (= (or b!99947 b!99949) bm!4398))

(assert (= (and d!23364 (not res!48602)) b!99952))

(assert (= (and b!99952 res!48607) b!99948))

(assert (= (and b!99948 res!48606) b!99944))

(assert (= (and b!99944 res!48608) b!99945))

(assert (= (and b!99945 res!48604) b!99946))

(assert (= (and b!99946 res!48605) b!99950))

(assert (= (and b!99950 res!48603) b!99951))

(declare-fun m!85392 () Bool)

(assert (=> b!99950 m!85392))

(declare-fun m!85394 () Bool)

(assert (=> b!99950 m!85394))

(assert (=> b!99950 m!85394))

(declare-fun m!85396 () Bool)

(assert (=> b!99950 m!85396))

(assert (=> b!99950 m!85396))

(declare-fun m!85398 () Bool)

(assert (=> b!99950 m!85398))

(declare-fun m!85400 () Bool)

(assert (=> bm!4398 m!85400))

(declare-fun m!85402 () Bool)

(assert (=> d!23364 m!85402))

(declare-fun m!85404 () Bool)

(assert (=> d!23364 m!85404))

(declare-fun m!85406 () Bool)

(assert (=> d!23364 m!85406))

(declare-fun m!85408 () Bool)

(assert (=> d!23364 m!85408))

(assert (=> b!99951 m!85392))

(declare-fun m!85410 () Bool)

(assert (=> b!99951 m!85410))

(assert (=> b!99944 m!85392))

(declare-fun m!85412 () Bool)

(assert (=> b!99944 m!85412))

(declare-fun m!85414 () Bool)

(assert (=> b!99944 m!85414))

(assert (=> b!99946 m!85392))

(declare-fun m!85416 () Bool)

(assert (=> b!99946 m!85416))

(assert (=> b!99946 m!85416))

(declare-fun m!85418 () Bool)

(assert (=> b!99946 m!85418))

(assert (=> b!99948 m!85392))

(assert (=> b!99948 m!85394))

(assert (=> b!99948 m!85394))

(assert (=> b!99948 m!85396))

(declare-fun m!85420 () Bool)

(assert (=> b!99952 m!85420))

(declare-fun m!85422 () Bool)

(assert (=> b!99949 m!85422))

(assert (=> b!99945 m!85392))

(assert (=> b!99945 m!85394))

(assert (=> b!99945 m!85394))

(assert (=> b!99945 m!85396))

(assert (=> b!99945 m!85396))

(declare-fun m!85424 () Bool)

(assert (=> b!99945 m!85424))

(assert (=> b!99811 d!23364))

(declare-fun d!23372 () Bool)

(assert (=> d!23372 (= (list!653 (_1!1087 lt!27385)) (list!657 (c!24346 (_1!1087 lt!27385))))))

(declare-fun bs!9798 () Bool)

(assert (= bs!9798 d!23372))

(declare-fun m!85426 () Bool)

(assert (=> bs!9798 m!85426))

(assert (=> b!99811 d!23372))

(declare-fun b!99953 () Bool)

(declare-fun e!55431 () List!1620)

(assert (=> b!99953 (= e!55431 lt!27389)))

(declare-fun d!23374 () Bool)

(declare-fun e!55432 () Bool)

(assert (=> d!23374 e!55432))

(declare-fun res!48610 () Bool)

(assert (=> d!23374 (=> (not res!48610) (not e!55432))))

(declare-fun lt!27497 () List!1620)

(assert (=> d!23374 (= res!48610 (= (content!125 lt!27497) (set.union (content!125 lt!27392) (content!125 lt!27389))))))

(assert (=> d!23374 (= lt!27497 e!55431)))

(declare-fun c!24370 () Bool)

(assert (=> d!23374 (= c!24370 (is-Nil!1614 lt!27392))))

(assert (=> d!23374 (= (++!247 lt!27392 lt!27389) lt!27497)))

(declare-fun b!99956 () Bool)

(assert (=> b!99956 (= e!55432 (or (not (= lt!27389 Nil!1614)) (= lt!27497 lt!27392)))))

(declare-fun b!99954 () Bool)

(assert (=> b!99954 (= e!55431 (Cons!1614 (h!7011 lt!27392) (++!247 (t!21217 lt!27392) lt!27389)))))

(declare-fun b!99955 () Bool)

(declare-fun res!48609 () Bool)

(assert (=> b!99955 (=> (not res!48609) (not e!55432))))

(assert (=> b!99955 (= res!48609 (= (size!1431 lt!27497) (+ (size!1431 lt!27392) (size!1431 lt!27389))))))

(assert (= (and d!23374 c!24370) b!99953))

(assert (= (and d!23374 (not c!24370)) b!99954))

(assert (= (and d!23374 res!48610) b!99955))

(assert (= (and b!99955 res!48609) b!99956))

(declare-fun m!85428 () Bool)

(assert (=> d!23374 m!85428))

(declare-fun m!85430 () Bool)

(assert (=> d!23374 m!85430))

(declare-fun m!85432 () Bool)

(assert (=> d!23374 m!85432))

(declare-fun m!85434 () Bool)

(assert (=> b!99954 m!85434))

(declare-fun m!85436 () Bool)

(assert (=> b!99955 m!85436))

(declare-fun m!85438 () Bool)

(assert (=> b!99955 m!85438))

(declare-fun m!85440 () Bool)

(assert (=> b!99955 m!85440))

(assert (=> b!99811 d!23374))

(declare-fun d!23376 () Bool)

(assert (=> d!23376 (= (list!652 (charsOf!83 (_1!1088 lt!27383))) (list!656 (c!24344 (charsOf!83 (_1!1088 lt!27383)))))))

(declare-fun bs!9799 () Bool)

(assert (= bs!9799 d!23376))

(declare-fun m!85442 () Bool)

(assert (=> bs!9799 m!85442))

(assert (=> b!99811 d!23376))

(declare-fun b!99957 () Bool)

(declare-fun e!55433 () List!1620)

(assert (=> b!99957 (= e!55433 (_2!1088 lt!27383))))

(declare-fun d!23378 () Bool)

(declare-fun e!55434 () Bool)

(assert (=> d!23378 e!55434))

(declare-fun res!48612 () Bool)

(assert (=> d!23378 (=> (not res!48612) (not e!55434))))

(declare-fun lt!27498 () List!1620)

(assert (=> d!23378 (= res!48612 (= (content!125 lt!27498) (set.union (content!125 lt!27380) (content!125 (_2!1088 lt!27383)))))))

(assert (=> d!23378 (= lt!27498 e!55433)))

(declare-fun c!24371 () Bool)

(assert (=> d!23378 (= c!24371 (is-Nil!1614 lt!27380))))

(assert (=> d!23378 (= (++!247 lt!27380 (_2!1088 lt!27383)) lt!27498)))

(declare-fun b!99960 () Bool)

(assert (=> b!99960 (= e!55434 (or (not (= (_2!1088 lt!27383) Nil!1614)) (= lt!27498 lt!27380)))))

(declare-fun b!99958 () Bool)

(assert (=> b!99958 (= e!55433 (Cons!1614 (h!7011 lt!27380) (++!247 (t!21217 lt!27380) (_2!1088 lt!27383))))))

(declare-fun b!99959 () Bool)

(declare-fun res!48611 () Bool)

(assert (=> b!99959 (=> (not res!48611) (not e!55434))))

(assert (=> b!99959 (= res!48611 (= (size!1431 lt!27498) (+ (size!1431 lt!27380) (size!1431 (_2!1088 lt!27383)))))))

(assert (= (and d!23378 c!24371) b!99957))

(assert (= (and d!23378 (not c!24371)) b!99958))

(assert (= (and d!23378 res!48612) b!99959))

(assert (= (and b!99959 res!48611) b!99960))

(declare-fun m!85444 () Bool)

(assert (=> d!23378 m!85444))

(assert (=> d!23378 m!85224))

(declare-fun m!85446 () Bool)

(assert (=> d!23378 m!85446))

(declare-fun m!85448 () Bool)

(assert (=> b!99958 m!85448))

(declare-fun m!85450 () Bool)

(assert (=> b!99959 m!85450))

(assert (=> b!99959 m!85232))

(declare-fun m!85452 () Bool)

(assert (=> b!99959 m!85452))

(assert (=> b!99811 d!23378))

(declare-fun d!23380 () Bool)

(declare-fun lt!27524 () tuple2!1760)

(assert (=> d!23380 (= (++!247 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524))) (list!652 (_2!1087 lt!27524))) (_2!1088 lt!27383))))

(assert (=> d!23380 (= lt!27524 (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383))))))

(declare-fun lt!27523 () Unit!1075)

(declare-fun choose!1385 (LexerInterface!244 List!1623 List!1620) Unit!1075)

(assert (=> d!23380 (= lt!27523 (choose!1385 thiss!19403 rules!2471 (_2!1088 lt!27383)))))

(assert (=> d!23380 (not (isEmpty!712 rules!2471))))

(assert (=> d!23380 (= (theoremInvertFromString!49 thiss!19403 rules!2471 (_2!1088 lt!27383)) lt!27523)))

(declare-fun bs!9803 () Bool)

(assert (= bs!9803 d!23380))

(declare-fun m!85524 () Bool)

(assert (=> bs!9803 m!85524))

(assert (=> bs!9803 m!85052))

(assert (=> bs!9803 m!85054))

(declare-fun m!85526 () Bool)

(assert (=> bs!9803 m!85526))

(assert (=> bs!9803 m!85106))

(declare-fun m!85528 () Bool)

(assert (=> bs!9803 m!85528))

(assert (=> bs!9803 m!85524))

(declare-fun m!85530 () Bool)

(assert (=> bs!9803 m!85530))

(assert (=> bs!9803 m!85052))

(assert (=> bs!9803 m!85530))

(assert (=> bs!9803 m!85528))

(declare-fun m!85532 () Bool)

(assert (=> bs!9803 m!85532))

(assert (=> b!99811 d!23380))

(declare-fun d!23396 () Bool)

(declare-fun lt!27536 () tuple2!1760)

(assert (=> d!23396 (= (tuple2!1765 (list!653 (_1!1087 lt!27536)) (list!652 (_2!1087 lt!27536))) (tuple2!1765 (tail!169 lt!27386) lt!27391))))

(assert (=> d!23396 (= lt!27536 (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!27535 () Unit!1075)

(declare-fun choose!1386 (LexerInterface!244 List!1623 List!1620 List!1622 List!1620) Unit!1075)

(assert (=> d!23396 (= lt!27535 (choose!1386 thiss!19403 rules!2471 input!2238 lt!27386 lt!27391))))

(assert (=> d!23396 (rulesInvariant!238 thiss!19403 rules!2471)))

(assert (=> d!23396 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!39 thiss!19403 rules!2471 input!2238 lt!27386 lt!27391) lt!27535)))

(declare-fun bs!9806 () Bool)

(assert (= bs!9806 d!23396))

(declare-fun m!85566 () Bool)

(assert (=> bs!9806 m!85566))

(assert (=> bs!9806 m!85068))

(assert (=> bs!9806 m!85070))

(assert (=> bs!9806 m!85072))

(declare-fun m!85568 () Bool)

(assert (=> bs!9806 m!85568))

(declare-fun m!85570 () Bool)

(assert (=> bs!9806 m!85570))

(assert (=> bs!9806 m!85568))

(declare-fun m!85572 () Bool)

(assert (=> bs!9806 m!85572))

(declare-fun m!85574 () Bool)

(assert (=> bs!9806 m!85574))

(assert (=> bs!9806 m!85084))

(assert (=> bs!9806 m!85070))

(assert (=> b!99811 d!23396))

(declare-fun d!23404 () Bool)

(assert (=> d!23404 (= (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)) (v!12967 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!99811 d!23404))

(declare-fun d!23406 () Bool)

(declare-fun lt!27537 () BalanceConc!1012)

(assert (=> d!23406 (= (list!652 lt!27537) (printList!38 thiss!19403 (list!653 (_1!1087 lt!27385))))))

(assert (=> d!23406 (= lt!27537 (printTailRec!38 thiss!19403 (_1!1087 lt!27385) 0 (BalanceConc!1013 Empty!504)))))

(assert (=> d!23406 (= (print!75 thiss!19403 (_1!1087 lt!27385)) lt!27537)))

(declare-fun bs!9807 () Bool)

(assert (= bs!9807 d!23406))

(declare-fun m!85576 () Bool)

(assert (=> bs!9807 m!85576))

(assert (=> bs!9807 m!85064))

(assert (=> bs!9807 m!85064))

(declare-fun m!85578 () Bool)

(assert (=> bs!9807 m!85578))

(declare-fun m!85580 () Bool)

(assert (=> bs!9807 m!85580))

(assert (=> b!99811 d!23406))

(declare-fun b!100014 () Bool)

(declare-fun e!55461 () Bool)

(declare-fun lt!27538 () tuple2!1760)

(assert (=> b!100014 (= e!55461 (= (list!652 (_2!1087 lt!27538)) (_2!1089 (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 (_2!1088 lt!27383)))))))))

(declare-fun b!100015 () Bool)

(declare-fun res!48651 () Bool)

(assert (=> b!100015 (=> (not res!48651) (not e!55461))))

(assert (=> b!100015 (= res!48651 (= (list!653 (_1!1087 lt!27538)) (_1!1089 (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 (_2!1088 lt!27383)))))))))

(declare-fun b!100016 () Bool)

(declare-fun e!55462 () Bool)

(assert (=> b!100016 (= e!55462 (not (isEmpty!717 (_1!1087 lt!27538))))))

(declare-fun d!23408 () Bool)

(assert (=> d!23408 e!55461))

(declare-fun res!48650 () Bool)

(assert (=> d!23408 (=> (not res!48650) (not e!55461))))

(declare-fun e!55460 () Bool)

(assert (=> d!23408 (= res!48650 e!55460)))

(declare-fun c!24381 () Bool)

(assert (=> d!23408 (= c!24381 (> (size!1432 (_1!1087 lt!27538)) 0))))

(assert (=> d!23408 (= lt!27538 (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383)) (BalanceConc!1013 Empty!504) (seqFromList!198 (_2!1088 lt!27383)) (BalanceConc!1015 Empty!505)))))

(assert (=> d!23408 (= (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383))) lt!27538)))

(declare-fun b!100017 () Bool)

(assert (=> b!100017 (= e!55460 e!55462)))

(declare-fun res!48652 () Bool)

(assert (=> b!100017 (= res!48652 (< (size!1433 (_2!1087 lt!27538)) (size!1433 (seqFromList!198 (_2!1088 lt!27383)))))))

(assert (=> b!100017 (=> (not res!48652) (not e!55462))))

(declare-fun b!100018 () Bool)

(assert (=> b!100018 (= e!55460 (= (_2!1087 lt!27538) (seqFromList!198 (_2!1088 lt!27383))))))

(assert (= (and d!23408 c!24381) b!100017))

(assert (= (and d!23408 (not c!24381)) b!100018))

(assert (= (and b!100017 res!48652) b!100016))

(assert (= (and d!23408 res!48650) b!100015))

(assert (= (and b!100015 res!48651) b!100014))

(declare-fun m!85582 () Bool)

(assert (=> d!23408 m!85582))

(assert (=> d!23408 m!85052))

(assert (=> d!23408 m!85052))

(declare-fun m!85584 () Bool)

(assert (=> d!23408 m!85584))

(declare-fun m!85586 () Bool)

(assert (=> b!100015 m!85586))

(assert (=> b!100015 m!85052))

(declare-fun m!85588 () Bool)

(assert (=> b!100015 m!85588))

(assert (=> b!100015 m!85588))

(declare-fun m!85590 () Bool)

(assert (=> b!100015 m!85590))

(declare-fun m!85592 () Bool)

(assert (=> b!100017 m!85592))

(assert (=> b!100017 m!85052))

(declare-fun m!85594 () Bool)

(assert (=> b!100017 m!85594))

(declare-fun m!85596 () Bool)

(assert (=> b!100014 m!85596))

(assert (=> b!100014 m!85052))

(assert (=> b!100014 m!85588))

(assert (=> b!100014 m!85588))

(assert (=> b!100014 m!85590))

(declare-fun m!85598 () Bool)

(assert (=> b!100016 m!85598))

(assert (=> b!99811 d!23408))

(declare-fun d!23410 () Bool)

(declare-fun fromListB!91 (List!1622) BalanceConc!1014)

(assert (=> d!23410 (= (seqFromList!199 (t!21219 lt!27386)) (fromListB!91 (t!21219 lt!27386)))))

(declare-fun bs!9808 () Bool)

(assert (= bs!9808 d!23410))

(declare-fun m!85600 () Bool)

(assert (=> bs!9808 m!85600))

(assert (=> b!99811 d!23410))

(declare-fun b!100019 () Bool)

(declare-fun e!55463 () List!1620)

(assert (=> b!100019 (= e!55463 (++!247 lt!27382 lt!27391))))

(declare-fun d!23412 () Bool)

(declare-fun e!55464 () Bool)

(assert (=> d!23412 e!55464))

(declare-fun res!48654 () Bool)

(assert (=> d!23412 (=> (not res!48654) (not e!55464))))

(declare-fun lt!27539 () List!1620)

(assert (=> d!23412 (= res!48654 (= (content!125 lt!27539) (set.union (content!125 lt!27380) (content!125 (++!247 lt!27382 lt!27391)))))))

(assert (=> d!23412 (= lt!27539 e!55463)))

(declare-fun c!24382 () Bool)

(assert (=> d!23412 (= c!24382 (is-Nil!1614 lt!27380))))

(assert (=> d!23412 (= (++!247 lt!27380 (++!247 lt!27382 lt!27391)) lt!27539)))

(declare-fun b!100022 () Bool)

(assert (=> b!100022 (= e!55464 (or (not (= (++!247 lt!27382 lt!27391) Nil!1614)) (= lt!27539 lt!27380)))))

(declare-fun b!100020 () Bool)

(assert (=> b!100020 (= e!55463 (Cons!1614 (h!7011 lt!27380) (++!247 (t!21217 lt!27380) (++!247 lt!27382 lt!27391))))))

(declare-fun b!100021 () Bool)

(declare-fun res!48653 () Bool)

(assert (=> b!100021 (=> (not res!48653) (not e!55464))))

(assert (=> b!100021 (= res!48653 (= (size!1431 lt!27539) (+ (size!1431 lt!27380) (size!1431 (++!247 lt!27382 lt!27391)))))))

(assert (= (and d!23412 c!24382) b!100019))

(assert (= (and d!23412 (not c!24382)) b!100020))

(assert (= (and d!23412 res!48654) b!100021))

(assert (= (and b!100021 res!48653) b!100022))

(declare-fun m!85602 () Bool)

(assert (=> d!23412 m!85602))

(assert (=> d!23412 m!85224))

(assert (=> d!23412 m!85098))

(declare-fun m!85604 () Bool)

(assert (=> d!23412 m!85604))

(assert (=> b!100020 m!85098))

(declare-fun m!85606 () Bool)

(assert (=> b!100020 m!85606))

(declare-fun m!85608 () Bool)

(assert (=> b!100021 m!85608))

(assert (=> b!100021 m!85232))

(assert (=> b!100021 m!85098))

(declare-fun m!85610 () Bool)

(assert (=> b!100021 m!85610))

(assert (=> b!99807 d!23412))

(declare-fun b!100023 () Bool)

(declare-fun e!55465 () List!1620)

(assert (=> b!100023 (= e!55465 lt!27391)))

(declare-fun d!23414 () Bool)

(declare-fun e!55466 () Bool)

(assert (=> d!23414 e!55466))

(declare-fun res!48656 () Bool)

(assert (=> d!23414 (=> (not res!48656) (not e!55466))))

(declare-fun lt!27540 () List!1620)

(assert (=> d!23414 (= res!48656 (= (content!125 lt!27540) (set.union (content!125 lt!27382) (content!125 lt!27391))))))

(assert (=> d!23414 (= lt!27540 e!55465)))

(declare-fun c!24383 () Bool)

(assert (=> d!23414 (= c!24383 (is-Nil!1614 lt!27382))))

(assert (=> d!23414 (= (++!247 lt!27382 lt!27391) lt!27540)))

(declare-fun b!100026 () Bool)

(assert (=> b!100026 (= e!55466 (or (not (= lt!27391 Nil!1614)) (= lt!27540 lt!27382)))))

(declare-fun b!100024 () Bool)

(assert (=> b!100024 (= e!55465 (Cons!1614 (h!7011 lt!27382) (++!247 (t!21217 lt!27382) lt!27391)))))

(declare-fun b!100025 () Bool)

(declare-fun res!48655 () Bool)

(assert (=> b!100025 (=> (not res!48655) (not e!55466))))

(assert (=> b!100025 (= res!48655 (= (size!1431 lt!27540) (+ (size!1431 lt!27382) (size!1431 lt!27391))))))

(assert (= (and d!23414 c!24383) b!100023))

(assert (= (and d!23414 (not c!24383)) b!100024))

(assert (= (and d!23414 res!48656) b!100025))

(assert (= (and b!100025 res!48655) b!100026))

(declare-fun m!85612 () Bool)

(assert (=> d!23414 m!85612))

(assert (=> d!23414 m!85226))

(assert (=> d!23414 m!85194))

(declare-fun m!85614 () Bool)

(assert (=> b!100024 m!85614))

(declare-fun m!85616 () Bool)

(assert (=> b!100025 m!85616))

(assert (=> b!100025 m!85234))

(assert (=> b!100025 m!85202))

(assert (=> b!99807 d!23414))

(declare-fun d!23416 () Bool)

(assert (=> d!23416 (= (list!652 (print!75 thiss!19403 lt!27377)) (list!656 (c!24344 (print!75 thiss!19403 lt!27377))))))

(declare-fun bs!9809 () Bool)

(assert (= bs!9809 d!23416))

(declare-fun m!85618 () Bool)

(assert (=> bs!9809 m!85618))

(assert (=> b!99807 d!23416))

(declare-fun d!23418 () Bool)

(declare-fun lt!27541 () BalanceConc!1012)

(assert (=> d!23418 (= (list!652 lt!27541) (printList!38 thiss!19403 (list!653 lt!27377)))))

(assert (=> d!23418 (= lt!27541 (printTailRec!38 thiss!19403 lt!27377 0 (BalanceConc!1013 Empty!504)))))

(assert (=> d!23418 (= (print!75 thiss!19403 lt!27377) lt!27541)))

(declare-fun bs!9810 () Bool)

(assert (= bs!9810 d!23418))

(declare-fun m!85620 () Bool)

(assert (=> bs!9810 m!85620))

(assert (=> bs!9810 m!85362))

(assert (=> bs!9810 m!85362))

(declare-fun m!85622 () Bool)

(assert (=> bs!9810 m!85622))

(declare-fun m!85624 () Bool)

(assert (=> bs!9810 m!85624))

(assert (=> b!99807 d!23418))

(declare-fun d!23420 () Bool)

(declare-fun res!48659 () Bool)

(declare-fun e!55469 () Bool)

(assert (=> d!23420 (=> (not res!48659) (not e!55469))))

(declare-fun rulesValid!94 (LexerInterface!244 List!1623) Bool)

(assert (=> d!23420 (= res!48659 (rulesValid!94 thiss!19403 rules!2471))))

(assert (=> d!23420 (= (rulesInvariant!238 thiss!19403 rules!2471) e!55469)))

(declare-fun b!100029 () Bool)

(declare-datatypes ((List!1628 0))(
  ( (Nil!1622) (Cons!1622 (h!7019 String!2104) (t!21231 List!1628)) )
))
(declare-fun noDuplicateTag!94 (LexerInterface!244 List!1623 List!1628) Bool)

(assert (=> b!100029 (= e!55469 (noDuplicateTag!94 thiss!19403 rules!2471 Nil!1622))))

(assert (= (and d!23420 res!48659) b!100029))

(declare-fun m!85626 () Bool)

(assert (=> d!23420 m!85626))

(declare-fun m!85628 () Bool)

(assert (=> b!100029 m!85628))

(assert (=> b!99808 d!23420))

(declare-fun e!55472 () Bool)

(assert (=> b!99810 (= tp!56783 e!55472)))

(declare-fun b!100041 () Bool)

(declare-fun tp!56815 () Bool)

(declare-fun tp!56813 () Bool)

(assert (=> b!100041 (= e!55472 (and tp!56815 tp!56813))))

(declare-fun b!100043 () Bool)

(declare-fun tp!56816 () Bool)

(declare-fun tp!56812 () Bool)

(assert (=> b!100043 (= e!55472 (and tp!56816 tp!56812))))

(declare-fun b!100042 () Bool)

(declare-fun tp!56814 () Bool)

(assert (=> b!100042 (= e!55472 tp!56814)))

(declare-fun b!100040 () Bool)

(assert (=> b!100040 (= e!55472 tp_is_empty!763)))

(assert (= (and b!99810 (is-ElementMatch!420 (regex!352 (h!7014 rules!2471)))) b!100040))

(assert (= (and b!99810 (is-Concat!763 (regex!352 (h!7014 rules!2471)))) b!100041))

(assert (= (and b!99810 (is-Star!420 (regex!352 (h!7014 rules!2471)))) b!100042))

(assert (= (and b!99810 (is-Union!420 (regex!352 (h!7014 rules!2471)))) b!100043))

(declare-fun b!100048 () Bool)

(declare-fun e!55475 () Bool)

(declare-fun tp!56819 () Bool)

(assert (=> b!100048 (= e!55475 (and tp_is_empty!763 tp!56819))))

(assert (=> b!99812 (= tp!56779 e!55475)))

(assert (= (and b!99812 (is-Cons!1614 (t!21217 input!2238))) b!100048))

(declare-fun b!100059 () Bool)

(declare-fun b_free!2997 () Bool)

(declare-fun b_next!2997 () Bool)

(assert (=> b!100059 (= b_free!2997 (not b_next!2997))))

(declare-fun tp!56828 () Bool)

(declare-fun b_and!4497 () Bool)

(assert (=> b!100059 (= tp!56828 b_and!4497)))

(declare-fun b_free!2999 () Bool)

(declare-fun b_next!2999 () Bool)

(assert (=> b!100059 (= b_free!2999 (not b_next!2999))))

(declare-fun tb!3037 () Bool)

(declare-fun t!21228 () Bool)

(assert (=> (and b!100059 (= (toChars!774 (transformation!352 (h!7014 (t!21220 rules!2471)))) (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383))))) t!21228) tb!3037))

(declare-fun result!4414 () Bool)

(assert (= result!4414 result!4404))

(assert (=> d!23340 t!21228))

(declare-fun tp!56830 () Bool)

(declare-fun b_and!4499 () Bool)

(assert (=> b!100059 (= tp!56830 (and (=> t!21228 result!4414) b_and!4499))))

(declare-fun e!55485 () Bool)

(assert (=> b!100059 (= e!55485 (and tp!56828 tp!56830))))

(declare-fun e!55484 () Bool)

(declare-fun b!100058 () Bool)

(declare-fun tp!56829 () Bool)

(assert (=> b!100058 (= e!55484 (and tp!56829 (inv!1950 (tag!530 (h!7014 (t!21220 rules!2471)))) (inv!1953 (transformation!352 (h!7014 (t!21220 rules!2471)))) e!55485))))

(declare-fun b!100057 () Bool)

(declare-fun e!55487 () Bool)

(declare-fun tp!56831 () Bool)

(assert (=> b!100057 (= e!55487 (and e!55484 tp!56831))))

(assert (=> b!99813 (= tp!56780 e!55487)))

(assert (= b!100058 b!100059))

(assert (= b!100057 b!100058))

(assert (= (and b!99813 (is-Cons!1617 (t!21220 rules!2471))) b!100057))

(declare-fun m!85630 () Bool)

(assert (=> b!100058 m!85630))

(declare-fun m!85632 () Bool)

(assert (=> b!100058 m!85632))

(push 1)

(assert b_and!4497)

(assert (not b!100017))

(assert (not b!100057))

(assert (not b!99948))

(assert (not d!23406))

(assert (not b!99959))

(assert (not d!23298))

(assert (not b!99958))

(assert (not b!100016))

(assert (not b!99951))

(assert (not d!23364))

(assert (not d!23306))

(assert (not b!100014))

(assert (not b_next!2989))

(assert (not d!23418))

(assert (not d!23310))

(assert (not d!23396))

(assert (not d!23336))

(assert (not b!100058))

(assert (not d!23372))

(assert (not d!23330))

(assert (not d!23300))

(assert (not b!99946))

(assert (not b!100025))

(assert (not b!99866))

(assert (not d!23304))

(assert (not b!99867))

(assert (not d!23360))

(assert (not b!100048))

(assert (not b!99945))

(assert (not b!99871))

(assert (not b!100015))

(assert (not b!99910))

(assert (not b_next!2991))

(assert (not b!100024))

(assert b_and!4487)

(assert (not b!99944))

(assert (not d!23380))

(assert (not b!99954))

(assert (not b!100029))

(assert (not b!100041))

(assert (not d!23420))

(assert (not b!99955))

(assert (not b!99859))

(assert (not d!23378))

(assert (not b!100043))

(assert (not d!23334))

(assert (not d!23332))

(assert (not d!23416))

(assert (not d!23412))

(assert (not tb!3035))

(assert (not d!23302))

(assert (not d!23376))

(assert (not b!99950))

(assert (not b!99863))

(assert (not d!23342))

(assert (not d!23340))

(assert (not b!99903))

(assert (not b!99904))

(assert (not b!99862))

(assert (not d!23414))

(assert (not b_lambda!1137))

(assert (not bm!4398))

(assert (not b!100021))

(assert (not b!100020))

(assert (not d!23314))

(assert (not b!99921))

(assert (not b!99949))

(assert (not d!23358))

(assert (not b!99858))

(assert (not d!23318))

(assert (not d!23316))

(assert (not b_next!2997))

(assert b_and!4499)

(assert (not b!99901))

(assert (not d!23348))

(assert (not d!23296))

(assert (not b!99902))

(assert tp_is_empty!763)

(assert (not d!23410))

(assert (not d!23408))

(assert (not b_next!2999))

(assert (not b!100042))

(assert (not d!23374))

(assert b_and!4495)

(assert (not b!99952))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2989))

(assert b_and!4497)

(assert (not b_next!2991))

(assert b_and!4487)

(assert (not b_next!2997))

(assert b_and!4499)

(assert (not b_next!2999))

(assert b_and!4495)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!23448 () Bool)

(assert (=> d!23448 (= (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))) (list!656 (c!24344 (charsOf!83 (_1!1088 (get!411 lt!27496))))))))

(declare-fun bs!9819 () Bool)

(assert (= bs!9819 d!23448))

(declare-fun m!85702 () Bool)

(assert (=> bs!9819 m!85702))

(assert (=> b!99948 d!23448))

(declare-fun d!23450 () Bool)

(declare-fun lt!27561 () BalanceConc!1012)

(assert (=> d!23450 (= (list!652 lt!27561) (originalCharacters!401 (_1!1088 (get!411 lt!27496))))))

(assert (=> d!23450 (= lt!27561 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496))))) (value!12927 (_1!1088 (get!411 lt!27496)))))))

(assert (=> d!23450 (= (charsOf!83 (_1!1088 (get!411 lt!27496))) lt!27561)))

(declare-fun b_lambda!1141 () Bool)

(assert (=> (not b_lambda!1141) (not d!23450)))

(declare-fun t!21236 () Bool)

(declare-fun tb!3043 () Bool)

(assert (=> (and b!99806 (= (toChars!774 (transformation!352 (h!7014 rules!2471))) (toChars!774 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))))) t!21236) tb!3043))

(declare-fun b!100103 () Bool)

(declare-fun e!55515 () Bool)

(declare-fun tp!56865 () Bool)

(assert (=> b!100103 (= e!55515 (and (inv!1955 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496))))) (value!12927 (_1!1088 (get!411 lt!27496)))))) tp!56865))))

(declare-fun result!4428 () Bool)

(assert (=> tb!3043 (= result!4428 (and (inv!1956 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496))))) (value!12927 (_1!1088 (get!411 lt!27496))))) e!55515))))

(assert (= tb!3043 b!100103))

(declare-fun m!85704 () Bool)

(assert (=> b!100103 m!85704))

(declare-fun m!85706 () Bool)

(assert (=> tb!3043 m!85706))

(assert (=> d!23450 t!21236))

(declare-fun b_and!4507 () Bool)

(assert (= b_and!4495 (and (=> t!21236 result!4428) b_and!4507)))

(declare-fun tb!3045 () Bool)

(declare-fun t!21238 () Bool)

(assert (=> (and b!100059 (= (toChars!774 (transformation!352 (h!7014 (t!21220 rules!2471)))) (toChars!774 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))))) t!21238) tb!3045))

(declare-fun result!4430 () Bool)

(assert (= result!4430 result!4428))

(assert (=> d!23450 t!21238))

(declare-fun b_and!4509 () Bool)

(assert (= b_and!4499 (and (=> t!21238 result!4430) b_and!4509)))

(declare-fun m!85708 () Bool)

(assert (=> d!23450 m!85708))

(declare-fun m!85710 () Bool)

(assert (=> d!23450 m!85710))

(assert (=> b!99948 d!23450))

(declare-fun d!23452 () Bool)

(assert (=> d!23452 (= (get!411 lt!27496) (v!12967 lt!27496))))

(assert (=> b!99948 d!23452))

(declare-fun b!100104 () Bool)

(declare-fun e!55516 () List!1620)

(assert (=> b!100104 (= e!55516 lt!27391)))

(declare-fun d!23454 () Bool)

(declare-fun e!55517 () Bool)

(assert (=> d!23454 e!55517))

(declare-fun res!48669 () Bool)

(assert (=> d!23454 (=> (not res!48669) (not e!55517))))

(declare-fun lt!27562 () List!1620)

(assert (=> d!23454 (= res!48669 (= (content!125 lt!27562) (set.union (content!125 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))))) (content!125 lt!27391))))))

(assert (=> d!23454 (= lt!27562 e!55516)))

(declare-fun c!24385 () Bool)

(assert (=> d!23454 (= c!24385 (is-Nil!1614 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))))))))

(assert (=> d!23454 (= (++!247 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) lt!27391) lt!27562)))

(declare-fun b!100107 () Bool)

(assert (=> b!100107 (= e!55517 (or (not (= lt!27391 Nil!1614)) (= lt!27562 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))))))))

(declare-fun b!100105 () Bool)

(assert (=> b!100105 (= e!55516 (Cons!1614 (h!7011 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))))) (++!247 (t!21217 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))))) lt!27391)))))

(declare-fun b!100106 () Bool)

(declare-fun res!48668 () Bool)

(assert (=> b!100106 (=> (not res!48668) (not e!55517))))

(assert (=> b!100106 (= res!48668 (= (size!1431 lt!27562) (+ (size!1431 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388))))) (size!1431 lt!27391))))))

(assert (= (and d!23454 c!24385) b!100104))

(assert (= (and d!23454 (not c!24385)) b!100105))

(assert (= (and d!23454 res!48669) b!100106))

(assert (= (and b!100106 res!48668) b!100107))

(declare-fun m!85712 () Bool)

(assert (=> d!23454 m!85712))

(declare-fun m!85714 () Bool)

(assert (=> d!23454 m!85714))

(assert (=> d!23454 m!85194))

(declare-fun m!85716 () Bool)

(assert (=> b!100105 m!85716))

(declare-fun m!85718 () Bool)

(assert (=> b!100106 m!85718))

(declare-fun m!85720 () Bool)

(assert (=> b!100106 m!85720))

(assert (=> b!100106 m!85202))

(assert (=> b!99862 d!23454))

(declare-fun b!100108 () Bool)

(declare-fun e!55518 () List!1620)

(assert (=> b!100108 (= e!55518 (_2!1088 lt!27383))))

(declare-fun d!23456 () Bool)

(declare-fun e!55519 () Bool)

(assert (=> d!23456 e!55519))

(declare-fun res!48671 () Bool)

(assert (=> d!23456 (=> (not res!48671) (not e!55519))))

(declare-fun lt!27563 () List!1620)

(assert (=> d!23456 (= res!48671 (= (content!125 lt!27563) (set.union (content!125 (t!21217 lt!27380)) (content!125 (_2!1088 lt!27383)))))))

(assert (=> d!23456 (= lt!27563 e!55518)))

(declare-fun c!24386 () Bool)

(assert (=> d!23456 (= c!24386 (is-Nil!1614 (t!21217 lt!27380)))))

(assert (=> d!23456 (= (++!247 (t!21217 lt!27380) (_2!1088 lt!27383)) lt!27563)))

(declare-fun b!100111 () Bool)

(assert (=> b!100111 (= e!55519 (or (not (= (_2!1088 lt!27383) Nil!1614)) (= lt!27563 (t!21217 lt!27380))))))

(declare-fun b!100109 () Bool)

(assert (=> b!100109 (= e!55518 (Cons!1614 (h!7011 (t!21217 lt!27380)) (++!247 (t!21217 (t!21217 lt!27380)) (_2!1088 lt!27383))))))

(declare-fun b!100110 () Bool)

(declare-fun res!48670 () Bool)

(assert (=> b!100110 (=> (not res!48670) (not e!55519))))

(assert (=> b!100110 (= res!48670 (= (size!1431 lt!27563) (+ (size!1431 (t!21217 lt!27380)) (size!1431 (_2!1088 lt!27383)))))))

(assert (= (and d!23456 c!24386) b!100108))

(assert (= (and d!23456 (not c!24386)) b!100109))

(assert (= (and d!23456 res!48671) b!100110))

(assert (= (and b!100110 res!48670) b!100111))

(declare-fun m!85722 () Bool)

(assert (=> d!23456 m!85722))

(declare-fun m!85724 () Bool)

(assert (=> d!23456 m!85724))

(assert (=> d!23456 m!85446))

(declare-fun m!85726 () Bool)

(assert (=> b!100109 m!85726))

(declare-fun m!85728 () Bool)

(assert (=> b!100110 m!85728))

(declare-fun m!85730 () Bool)

(assert (=> b!100110 m!85730))

(assert (=> b!100110 m!85452))

(assert (=> b!99958 d!23456))

(declare-fun d!23458 () Bool)

(declare-fun lt!27566 () Int)

(assert (=> d!23458 (= lt!27566 (size!1431 (list!652 (_2!1087 lt!27461))))))

(declare-fun size!1437 (Conc!504) Int)

(assert (=> d!23458 (= lt!27566 (size!1437 (c!24344 (_2!1087 lt!27461))))))

(assert (=> d!23458 (= (size!1433 (_2!1087 lt!27461)) lt!27566)))

(declare-fun bs!9820 () Bool)

(assert (= bs!9820 d!23458))

(assert (=> bs!9820 m!85296))

(assert (=> bs!9820 m!85296))

(declare-fun m!85732 () Bool)

(assert (=> bs!9820 m!85732))

(declare-fun m!85734 () Bool)

(assert (=> bs!9820 m!85734))

(assert (=> b!99904 d!23458))

(declare-fun d!23460 () Bool)

(declare-fun lt!27567 () Int)

(assert (=> d!23460 (= lt!27567 (size!1431 (list!652 (seqFromList!198 input!2238))))))

(assert (=> d!23460 (= lt!27567 (size!1437 (c!24344 (seqFromList!198 input!2238))))))

(assert (=> d!23460 (= (size!1433 (seqFromList!198 input!2238)) lt!27567)))

(declare-fun bs!9821 () Bool)

(assert (= bs!9821 d!23460))

(assert (=> bs!9821 m!85080))

(assert (=> bs!9821 m!85288))

(assert (=> bs!9821 m!85288))

(declare-fun m!85736 () Bool)

(assert (=> bs!9821 m!85736))

(declare-fun m!85738 () Bool)

(assert (=> bs!9821 m!85738))

(assert (=> b!99904 d!23460))

(assert (=> b!99946 d!23452))

(declare-fun d!23462 () Bool)

(declare-fun dynLambda!481 (Int BalanceConc!1012) TokenValue!342)

(assert (=> d!23462 (= (apply!260 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))) (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27496))))) (dynLambda!481 (toValue!915 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496))))) (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27496))))))))

(declare-fun b_lambda!1143 () Bool)

(assert (=> (not b_lambda!1143) (not d!23462)))

(declare-fun t!21240 () Bool)

(declare-fun tb!3047 () Bool)

(assert (=> (and b!99806 (= (toValue!915 (transformation!352 (h!7014 rules!2471))) (toValue!915 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))))) t!21240) tb!3047))

(declare-fun result!4432 () Bool)

(declare-fun inv!21 (TokenValue!342) Bool)

(assert (=> tb!3047 (= result!4432 (inv!21 (dynLambda!481 (toValue!915 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496))))) (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27496)))))))))

(declare-fun m!85740 () Bool)

(assert (=> tb!3047 m!85740))

(assert (=> d!23462 t!21240))

(declare-fun b_and!4511 () Bool)

(assert (= b_and!4487 (and (=> t!21240 result!4432) b_and!4511)))

(declare-fun t!21242 () Bool)

(declare-fun tb!3049 () Bool)

(assert (=> (and b!100059 (= (toValue!915 (transformation!352 (h!7014 (t!21220 rules!2471)))) (toValue!915 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))))) t!21242) tb!3049))

(declare-fun result!4436 () Bool)

(assert (= result!4436 result!4432))

(assert (=> d!23462 t!21242))

(declare-fun b_and!4513 () Bool)

(assert (= b_and!4497 (and (=> t!21242 result!4436) b_and!4513)))

(assert (=> d!23462 m!85416))

(declare-fun m!85742 () Bool)

(assert (=> d!23462 m!85742))

(assert (=> b!99946 d!23462))

(declare-fun d!23464 () Bool)

(assert (=> d!23464 (= (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27496)))) (fromListB!90 (originalCharacters!401 (_1!1088 (get!411 lt!27496)))))))

(declare-fun bs!9822 () Bool)

(assert (= bs!9822 d!23464))

(declare-fun m!85744 () Bool)

(assert (=> bs!9822 m!85744))

(assert (=> b!99946 d!23464))

(declare-fun b!100122 () Bool)

(declare-fun e!55527 () List!1622)

(assert (=> b!100122 (= e!55527 Nil!1616)))

(declare-fun d!23466 () Bool)

(declare-fun c!24391 () Bool)

(assert (=> d!23466 (= c!24391 (is-Empty!505 (c!24346 (_1!1087 lt!27385))))))

(assert (=> d!23466 (= (list!657 (c!24346 (_1!1087 lt!27385))) e!55527)))

(declare-fun b!100124 () Bool)

(declare-fun e!55528 () List!1622)

(declare-fun list!660 (IArray!1011) List!1622)

(assert (=> b!100124 (= e!55528 (list!660 (xs!3092 (c!24346 (_1!1087 lt!27385)))))))

(declare-fun b!100123 () Bool)

(assert (=> b!100123 (= e!55527 e!55528)))

(declare-fun c!24392 () Bool)

(assert (=> b!100123 (= c!24392 (is-Leaf!817 (c!24346 (_1!1087 lt!27385))))))

(declare-fun b!100125 () Bool)

(declare-fun ++!249 (List!1622 List!1622) List!1622)

(assert (=> b!100125 (= e!55528 (++!249 (list!657 (left!1234 (c!24346 (_1!1087 lt!27385)))) (list!657 (right!1564 (c!24346 (_1!1087 lt!27385))))))))

(assert (= (and d!23466 c!24391) b!100122))

(assert (= (and d!23466 (not c!24391)) b!100123))

(assert (= (and b!100123 c!24392) b!100124))

(assert (= (and b!100123 (not c!24392)) b!100125))

(declare-fun m!85746 () Bool)

(assert (=> b!100124 m!85746))

(declare-fun m!85748 () Bool)

(assert (=> b!100125 m!85748))

(declare-fun m!85750 () Bool)

(assert (=> b!100125 m!85750))

(assert (=> b!100125 m!85748))

(assert (=> b!100125 m!85750))

(declare-fun m!85752 () Bool)

(assert (=> b!100125 m!85752))

(assert (=> d!23372 d!23466))

(declare-fun d!23468 () Bool)

(declare-fun e!55531 () Bool)

(assert (=> d!23468 e!55531))

(declare-fun res!48674 () Bool)

(assert (=> d!23468 (=> (not res!48674) (not e!55531))))

(declare-fun lt!27570 () BalanceConc!1012)

(assert (=> d!23468 (= res!48674 (= (list!652 lt!27570) input!2238))))

(declare-fun fromList!61 (List!1620) Conc!504)

(assert (=> d!23468 (= lt!27570 (BalanceConc!1013 (fromList!61 input!2238)))))

(assert (=> d!23468 (= (fromListB!90 input!2238) lt!27570)))

(declare-fun b!100128 () Bool)

(declare-fun isBalanced!130 (Conc!504) Bool)

(assert (=> b!100128 (= e!55531 (isBalanced!130 (fromList!61 input!2238)))))

(assert (= (and d!23468 res!48674) b!100128))

(declare-fun m!85754 () Bool)

(assert (=> d!23468 m!85754))

(declare-fun m!85756 () Bool)

(assert (=> d!23468 m!85756))

(assert (=> b!100128 m!85756))

(assert (=> b!100128 m!85756))

(declare-fun m!85758 () Bool)

(assert (=> b!100128 m!85758))

(assert (=> d!23330 d!23468))

(declare-fun d!23470 () Bool)

(assert (=> d!23470 (= (isEmpty!718 lt!27496) (not (is-Some!178 lt!27496)))))

(assert (=> d!23364 d!23470))

(declare-fun b!100137 () Bool)

(declare-fun e!55540 () Bool)

(declare-fun e!55538 () Bool)

(assert (=> b!100137 (= e!55540 e!55538)))

(declare-fun res!48685 () Bool)

(assert (=> b!100137 (=> (not res!48685) (not e!55538))))

(assert (=> b!100137 (= res!48685 (not (is-Nil!1614 input!2238)))))

(declare-fun d!23472 () Bool)

(declare-fun e!55539 () Bool)

(assert (=> d!23472 e!55539))

(declare-fun res!48686 () Bool)

(assert (=> d!23472 (=> res!48686 e!55539)))

(declare-fun lt!27573 () Bool)

(assert (=> d!23472 (= res!48686 (not lt!27573))))

(assert (=> d!23472 (= lt!27573 e!55540)))

(declare-fun res!48683 () Bool)

(assert (=> d!23472 (=> res!48683 e!55540)))

(assert (=> d!23472 (= res!48683 (is-Nil!1614 input!2238))))

(assert (=> d!23472 (= (isPrefix!42 input!2238 input!2238) lt!27573)))

(declare-fun b!100140 () Bool)

(assert (=> b!100140 (= e!55539 (>= (size!1431 input!2238) (size!1431 input!2238)))))

(declare-fun b!100139 () Bool)

(declare-fun tail!171 (List!1620) List!1620)

(assert (=> b!100139 (= e!55538 (isPrefix!42 (tail!171 input!2238) (tail!171 input!2238)))))

(declare-fun b!100138 () Bool)

(declare-fun res!48684 () Bool)

(assert (=> b!100138 (=> (not res!48684) (not e!55538))))

(declare-fun head!457 (List!1620) C!1762)

(assert (=> b!100138 (= res!48684 (= (head!457 input!2238) (head!457 input!2238)))))

(assert (= (and d!23472 (not res!48683)) b!100137))

(assert (= (and b!100137 res!48685) b!100138))

(assert (= (and b!100138 res!48684) b!100139))

(assert (= (and d!23472 (not res!48686)) b!100140))

(assert (=> b!100140 m!85414))

(assert (=> b!100140 m!85414))

(declare-fun m!85760 () Bool)

(assert (=> b!100139 m!85760))

(assert (=> b!100139 m!85760))

(assert (=> b!100139 m!85760))

(assert (=> b!100139 m!85760))

(declare-fun m!85762 () Bool)

(assert (=> b!100139 m!85762))

(declare-fun m!85764 () Bool)

(assert (=> b!100138 m!85764))

(assert (=> b!100138 m!85764))

(assert (=> d!23364 d!23472))

(declare-fun d!23474 () Bool)

(assert (=> d!23474 (isPrefix!42 input!2238 input!2238)))

(declare-fun lt!27576 () Unit!1075)

(declare-fun choose!1391 (List!1620 List!1620) Unit!1075)

(assert (=> d!23474 (= lt!27576 (choose!1391 input!2238 input!2238))))

(assert (=> d!23474 (= (lemmaIsPrefixRefl!42 input!2238 input!2238) lt!27576)))

(declare-fun bs!9823 () Bool)

(assert (= bs!9823 d!23474))

(assert (=> bs!9823 m!85404))

(declare-fun m!85766 () Bool)

(assert (=> bs!9823 m!85766))

(assert (=> d!23364 d!23474))

(declare-fun d!23476 () Bool)

(assert (=> d!23476 true))

(declare-fun lt!27579 () Bool)

(declare-fun lambda!1810 () Int)

(declare-fun forall!215 (List!1623 Int) Bool)

(assert (=> d!23476 (= lt!27579 (forall!215 rules!2471 lambda!1810))))

(declare-fun e!55545 () Bool)

(assert (=> d!23476 (= lt!27579 e!55545)))

(declare-fun res!48695 () Bool)

(assert (=> d!23476 (=> res!48695 e!55545)))

(assert (=> d!23476 (= res!48695 (not (is-Cons!1617 rules!2471)))))

(assert (=> d!23476 (= (rulesValidInductive!71 thiss!19403 rules!2471) lt!27579)))

(declare-fun b!100145 () Bool)

(declare-fun e!55546 () Bool)

(assert (=> b!100145 (= e!55545 e!55546)))

(declare-fun res!48696 () Bool)

(assert (=> b!100145 (=> (not res!48696) (not e!55546))))

(declare-fun ruleValid!43 (LexerInterface!244 Rule!504) Bool)

(assert (=> b!100145 (= res!48696 (ruleValid!43 thiss!19403 (h!7014 rules!2471)))))

(declare-fun b!100146 () Bool)

(assert (=> b!100146 (= e!55546 (rulesValidInductive!71 thiss!19403 (t!21220 rules!2471)))))

(assert (= (and d!23476 (not res!48695)) b!100145))

(assert (= (and b!100145 res!48696) b!100146))

(declare-fun m!85768 () Bool)

(assert (=> d!23476 m!85768))

(declare-fun m!85770 () Bool)

(assert (=> b!100145 m!85770))

(declare-fun m!85772 () Bool)

(assert (=> b!100146 m!85772))

(assert (=> d!23364 d!23476))

(declare-fun d!23480 () Bool)

(declare-fun res!48703 () Bool)

(declare-fun e!55557 () Bool)

(assert (=> d!23480 (=> res!48703 e!55557)))

(assert (=> d!23480 (= res!48703 (is-Nil!1617 rules!2471))))

(assert (=> d!23480 (= (noDuplicateTag!94 thiss!19403 rules!2471 Nil!1622) e!55557)))

(declare-fun b!100165 () Bool)

(declare-fun e!55558 () Bool)

(assert (=> b!100165 (= e!55557 e!55558)))

(declare-fun res!48704 () Bool)

(assert (=> b!100165 (=> (not res!48704) (not e!55558))))

(declare-fun contains!262 (List!1628 String!2104) Bool)

(assert (=> b!100165 (= res!48704 (not (contains!262 Nil!1622 (tag!530 (h!7014 rules!2471)))))))

(declare-fun b!100166 () Bool)

(assert (=> b!100166 (= e!55558 (noDuplicateTag!94 thiss!19403 (t!21220 rules!2471) (Cons!1622 (tag!530 (h!7014 rules!2471)) Nil!1622)))))

(assert (= (and d!23480 (not res!48703)) b!100165))

(assert (= (and b!100165 res!48704) b!100166))

(declare-fun m!85784 () Bool)

(assert (=> b!100165 m!85784))

(declare-fun m!85786 () Bool)

(assert (=> b!100166 m!85786))

(assert (=> b!100029 d!23480))

(declare-fun b!100186 () Bool)

(declare-fun e!55568 () List!1620)

(assert (=> b!100186 (= e!55568 (++!247 (list!656 (left!1233 (c!24344 (_2!1087 lt!27385)))) (list!656 (right!1563 (c!24344 (_2!1087 lt!27385))))))))

(declare-fun b!100184 () Bool)

(declare-fun e!55567 () List!1620)

(assert (=> b!100184 (= e!55567 e!55568)))

(declare-fun c!24408 () Bool)

(assert (=> b!100184 (= c!24408 (is-Leaf!816 (c!24344 (_2!1087 lt!27385))))))

(declare-fun b!100183 () Bool)

(assert (=> b!100183 (= e!55567 Nil!1614)))

(declare-fun b!100185 () Bool)

(declare-fun list!661 (IArray!1009) List!1620)

(assert (=> b!100185 (= e!55568 (list!661 (xs!3091 (c!24344 (_2!1087 lt!27385)))))))

(declare-fun d!23484 () Bool)

(declare-fun c!24407 () Bool)

(assert (=> d!23484 (= c!24407 (is-Empty!504 (c!24344 (_2!1087 lt!27385))))))

(assert (=> d!23484 (= (list!656 (c!24344 (_2!1087 lt!27385))) e!55567)))

(assert (= (and d!23484 c!24407) b!100183))

(assert (= (and d!23484 (not c!24407)) b!100184))

(assert (= (and b!100184 c!24408) b!100185))

(assert (= (and b!100184 (not c!24408)) b!100186))

(declare-fun m!85804 () Bool)

(assert (=> b!100186 m!85804))

(declare-fun m!85806 () Bool)

(assert (=> b!100186 m!85806))

(assert (=> b!100186 m!85804))

(assert (=> b!100186 m!85806))

(declare-fun m!85808 () Bool)

(assert (=> b!100186 m!85808))

(declare-fun m!85810 () Bool)

(assert (=> b!100185 m!85810))

(assert (=> d!23332 d!23484))

(declare-fun d!23490 () Bool)

(assert (=> d!23490 (= (list!652 lt!27450) (list!656 (c!24344 lt!27450)))))

(declare-fun bs!9824 () Bool)

(assert (= bs!9824 d!23490))

(declare-fun m!85812 () Bool)

(assert (=> bs!9824 m!85812))

(assert (=> d!23302 d!23490))

(declare-fun d!23492 () Bool)

(declare-fun c!24419 () Bool)

(assert (=> d!23492 (= c!24419 (is-Cons!1616 (list!653 (_1!1087 lt!27388))))))

(declare-fun e!55579 () List!1620)

(assert (=> d!23492 (= (printList!38 thiss!19403 (list!653 (_1!1087 lt!27388))) e!55579)))

(declare-fun b!100207 () Bool)

(assert (=> b!100207 (= e!55579 (++!247 (list!652 (charsOf!83 (h!7013 (list!653 (_1!1087 lt!27388))))) (printList!38 thiss!19403 (t!21219 (list!653 (_1!1087 lt!27388))))))))

(declare-fun b!100208 () Bool)

(assert (=> b!100208 (= e!55579 Nil!1614)))

(assert (= (and d!23492 c!24419) b!100207))

(assert (= (and d!23492 (not c!24419)) b!100208))

(declare-fun m!85830 () Bool)

(assert (=> b!100207 m!85830))

(assert (=> b!100207 m!85830))

(declare-fun m!85832 () Bool)

(assert (=> b!100207 m!85832))

(declare-fun m!85834 () Bool)

(assert (=> b!100207 m!85834))

(assert (=> b!100207 m!85832))

(assert (=> b!100207 m!85834))

(declare-fun m!85836 () Bool)

(assert (=> b!100207 m!85836))

(assert (=> d!23302 d!23492))

(assert (=> d!23302 d!23310))

(declare-fun d!23498 () Bool)

(declare-fun lt!27607 () BalanceConc!1012)

(declare-fun printListTailRec!27 (LexerInterface!244 List!1622 List!1620) List!1620)

(declare-fun dropList!35 (BalanceConc!1014 Int) List!1622)

(assert (=> d!23498 (= (list!652 lt!27607) (printListTailRec!27 thiss!19403 (dropList!35 (_1!1087 lt!27388) 0) (list!652 (BalanceConc!1013 Empty!504))))))

(declare-fun e!55616 () BalanceConc!1012)

(assert (=> d!23498 (= lt!27607 e!55616)))

(declare-fun c!24436 () Bool)

(assert (=> d!23498 (= c!24436 (>= 0 (size!1432 (_1!1087 lt!27388))))))

(declare-fun e!55615 () Bool)

(assert (=> d!23498 e!55615))

(declare-fun res!48728 () Bool)

(assert (=> d!23498 (=> (not res!48728) (not e!55615))))

(assert (=> d!23498 (= res!48728 (>= 0 0))))

(assert (=> d!23498 (= (printTailRec!38 thiss!19403 (_1!1087 lt!27388) 0 (BalanceConc!1013 Empty!504)) lt!27607)))

(declare-fun b!100264 () Bool)

(assert (=> b!100264 (= e!55615 (<= 0 (size!1432 (_1!1087 lt!27388))))))

(declare-fun b!100265 () Bool)

(assert (=> b!100265 (= e!55616 (BalanceConc!1013 Empty!504))))

(declare-fun b!100266 () Bool)

(declare-fun ++!250 (BalanceConc!1012 BalanceConc!1012) BalanceConc!1012)

(declare-fun apply!262 (BalanceConc!1014 Int) Token!460)

(assert (=> b!100266 (= e!55616 (printTailRec!38 thiss!19403 (_1!1087 lt!27388) (+ 0 1) (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (apply!262 (_1!1087 lt!27388) 0)))))))

(declare-fun lt!27605 () List!1622)

(assert (=> b!100266 (= lt!27605 (list!653 (_1!1087 lt!27388)))))

(declare-fun lt!27609 () Unit!1075)

(declare-fun lemmaDropApply!91 (List!1622 Int) Unit!1075)

(assert (=> b!100266 (= lt!27609 (lemmaDropApply!91 lt!27605 0))))

(declare-fun head!458 (List!1622) Token!460)

(declare-fun drop!97 (List!1622 Int) List!1622)

(declare-fun apply!263 (List!1622 Int) Token!460)

(assert (=> b!100266 (= (head!458 (drop!97 lt!27605 0)) (apply!263 lt!27605 0))))

(declare-fun lt!27608 () Unit!1075)

(assert (=> b!100266 (= lt!27608 lt!27609)))

(declare-fun lt!27604 () List!1622)

(assert (=> b!100266 (= lt!27604 (list!653 (_1!1087 lt!27388)))))

(declare-fun lt!27610 () Unit!1075)

(declare-fun lemmaDropTail!83 (List!1622 Int) Unit!1075)

(assert (=> b!100266 (= lt!27610 (lemmaDropTail!83 lt!27604 0))))

(assert (=> b!100266 (= (tail!169 (drop!97 lt!27604 0)) (drop!97 lt!27604 (+ 0 1)))))

(declare-fun lt!27606 () Unit!1075)

(assert (=> b!100266 (= lt!27606 lt!27610)))

(assert (= (and d!23498 res!48728) b!100264))

(assert (= (and d!23498 c!24436) b!100265))

(assert (= (and d!23498 (not c!24436)) b!100266))

(declare-fun m!85890 () Bool)

(assert (=> d!23498 m!85890))

(declare-fun m!85892 () Bool)

(assert (=> d!23498 m!85892))

(declare-fun m!85894 () Bool)

(assert (=> d!23498 m!85894))

(declare-fun m!85896 () Bool)

(assert (=> d!23498 m!85896))

(assert (=> d!23498 m!85892))

(assert (=> d!23498 m!85890))

(declare-fun m!85898 () Bool)

(assert (=> d!23498 m!85898))

(assert (=> b!100264 m!85896))

(declare-fun m!85900 () Bool)

(assert (=> b!100266 m!85900))

(declare-fun m!85902 () Bool)

(assert (=> b!100266 m!85902))

(declare-fun m!85904 () Bool)

(assert (=> b!100266 m!85904))

(declare-fun m!85906 () Bool)

(assert (=> b!100266 m!85906))

(assert (=> b!100266 m!85108))

(declare-fun m!85908 () Bool)

(assert (=> b!100266 m!85908))

(declare-fun m!85910 () Bool)

(assert (=> b!100266 m!85910))

(assert (=> b!100266 m!85910))

(declare-fun m!85912 () Bool)

(assert (=> b!100266 m!85912))

(declare-fun m!85914 () Bool)

(assert (=> b!100266 m!85914))

(declare-fun m!85916 () Bool)

(assert (=> b!100266 m!85916))

(assert (=> b!100266 m!85900))

(assert (=> b!100266 m!85914))

(assert (=> b!100266 m!85904))

(assert (=> b!100266 m!85916))

(declare-fun m!85918 () Bool)

(assert (=> b!100266 m!85918))

(declare-fun m!85920 () Bool)

(assert (=> b!100266 m!85920))

(declare-fun m!85922 () Bool)

(assert (=> b!100266 m!85922))

(assert (=> d!23302 d!23498))

(declare-fun d!23526 () Bool)

(assert (=> d!23526 (= (seqFromList!199 ($colon$colon!37 (t!21219 lt!27386) (h!7013 lt!27386))) (fromListB!91 ($colon$colon!37 (t!21219 lt!27386) (h!7013 lt!27386))))))

(declare-fun bs!9827 () Bool)

(assert (= bs!9827 d!23526))

(assert (=> bs!9827 m!85324))

(declare-fun m!85924 () Bool)

(assert (=> bs!9827 m!85924))

(assert (=> d!23342 d!23526))

(declare-fun d!23528 () Bool)

(assert (=> d!23528 (= (list!653 (seqFromList!199 ($colon$colon!37 (t!21219 lt!27386) (h!7013 lt!27386)))) (list!657 (c!24346 (seqFromList!199 ($colon$colon!37 (t!21219 lt!27386) (h!7013 lt!27386))))))))

(declare-fun bs!9828 () Bool)

(assert (= bs!9828 d!23528))

(declare-fun m!85926 () Bool)

(assert (=> bs!9828 m!85926))

(assert (=> d!23342 d!23528))

(declare-fun d!23530 () Bool)

(declare-fun e!55617 () Bool)

(assert (=> d!23530 e!55617))

(declare-fun res!48729 () Bool)

(assert (=> d!23530 (=> (not res!48729) (not e!55617))))

(assert (=> d!23530 (= res!48729 (isBalanced!128 (prepend!126 (c!24346 (seqFromList!199 (t!21219 lt!27386))) (h!7013 lt!27386))))))

(declare-fun lt!27611 () BalanceConc!1014)

(assert (=> d!23530 (= lt!27611 (BalanceConc!1015 (prepend!126 (c!24346 (seqFromList!199 (t!21219 lt!27386))) (h!7013 lt!27386))))))

(assert (=> d!23530 (= (prepend!124 (seqFromList!199 (t!21219 lt!27386)) (h!7013 lt!27386)) lt!27611)))

(declare-fun b!100267 () Bool)

(assert (=> b!100267 (= e!55617 (= (list!653 lt!27611) (Cons!1616 (h!7013 lt!27386) (list!653 (seqFromList!199 (t!21219 lt!27386))))))))

(assert (= (and d!23530 res!48729) b!100267))

(declare-fun m!85928 () Bool)

(assert (=> d!23530 m!85928))

(assert (=> d!23530 m!85928))

(declare-fun m!85930 () Bool)

(assert (=> d!23530 m!85930))

(declare-fun m!85932 () Bool)

(assert (=> b!100267 m!85932))

(assert (=> b!100267 m!85044))

(declare-fun m!85934 () Bool)

(assert (=> b!100267 m!85934))

(assert (=> d!23342 d!23530))

(declare-fun d!23532 () Bool)

(assert (=> d!23532 (= (list!653 (prepend!124 (seqFromList!199 (t!21219 lt!27386)) (h!7013 lt!27386))) (list!657 (c!24346 (prepend!124 (seqFromList!199 (t!21219 lt!27386)) (h!7013 lt!27386)))))))

(declare-fun bs!9829 () Bool)

(assert (= bs!9829 d!23532))

(declare-fun m!85936 () Bool)

(assert (=> bs!9829 m!85936))

(assert (=> d!23342 d!23532))

(declare-fun d!23534 () Bool)

(assert (=> d!23534 (= (list!653 (_1!1087 lt!27388)) (list!653 (prepend!124 (seqFromList!199 (t!21219 lt!27386)) (h!7013 lt!27386))))))

(assert (=> d!23534 true))

(declare-fun _$1!9889 () Unit!1075)

(assert (=> d!23534 (= (choose!1384 (h!7013 lt!27386) (t!21219 lt!27386) (_1!1087 lt!27388)) _$1!9889)))

(declare-fun bs!9830 () Bool)

(assert (= bs!9830 d!23534))

(assert (=> bs!9830 m!85108))

(assert (=> bs!9830 m!85044))

(assert (=> bs!9830 m!85044))

(assert (=> bs!9830 m!85328))

(assert (=> bs!9830 m!85328))

(assert (=> bs!9830 m!85330))

(assert (=> d!23342 d!23534))

(assert (=> d!23342 d!23310))

(declare-fun d!23536 () Bool)

(assert (=> d!23536 (= ($colon$colon!37 (t!21219 lt!27386) (h!7013 lt!27386)) (Cons!1616 (h!7013 lt!27386) (t!21219 lt!27386)))))

(assert (=> d!23342 d!23536))

(assert (=> d!23342 d!23410))

(declare-fun d!23538 () Bool)

(assert (=> d!23538 (= (isDefined!55 lt!27496) (not (isEmpty!718 lt!27496)))))

(declare-fun bs!9831 () Bool)

(assert (= bs!9831 d!23538))

(assert (=> bs!9831 m!85402))

(assert (=> b!99952 d!23538))

(declare-fun d!23540 () Bool)

(assert (=> d!23540 (= (list!652 lt!27541) (list!656 (c!24344 lt!27541)))))

(declare-fun bs!9832 () Bool)

(assert (= bs!9832 d!23540))

(declare-fun m!85938 () Bool)

(assert (=> bs!9832 m!85938))

(assert (=> d!23418 d!23540))

(declare-fun d!23542 () Bool)

(declare-fun c!24437 () Bool)

(assert (=> d!23542 (= c!24437 (is-Cons!1616 (list!653 lt!27377)))))

(declare-fun e!55618 () List!1620)

(assert (=> d!23542 (= (printList!38 thiss!19403 (list!653 lt!27377)) e!55618)))

(declare-fun b!100268 () Bool)

(assert (=> b!100268 (= e!55618 (++!247 (list!652 (charsOf!83 (h!7013 (list!653 lt!27377)))) (printList!38 thiss!19403 (t!21219 (list!653 lt!27377)))))))

(declare-fun b!100269 () Bool)

(assert (=> b!100269 (= e!55618 Nil!1614)))

(assert (= (and d!23542 c!24437) b!100268))

(assert (= (and d!23542 (not c!24437)) b!100269))

(declare-fun m!85940 () Bool)

(assert (=> b!100268 m!85940))

(assert (=> b!100268 m!85940))

(declare-fun m!85942 () Bool)

(assert (=> b!100268 m!85942))

(declare-fun m!85944 () Bool)

(assert (=> b!100268 m!85944))

(assert (=> b!100268 m!85942))

(assert (=> b!100268 m!85944))

(declare-fun m!85946 () Bool)

(assert (=> b!100268 m!85946))

(assert (=> d!23418 d!23542))

(declare-fun d!23544 () Bool)

(assert (=> d!23544 (= (list!653 lt!27377) (list!657 (c!24346 lt!27377)))))

(declare-fun bs!9833 () Bool)

(assert (= bs!9833 d!23544))

(declare-fun m!85948 () Bool)

(assert (=> bs!9833 m!85948))

(assert (=> d!23418 d!23544))

(declare-fun d!23546 () Bool)

(declare-fun lt!27615 () BalanceConc!1012)

(assert (=> d!23546 (= (list!652 lt!27615) (printListTailRec!27 thiss!19403 (dropList!35 lt!27377 0) (list!652 (BalanceConc!1013 Empty!504))))))

(declare-fun e!55620 () BalanceConc!1012)

(assert (=> d!23546 (= lt!27615 e!55620)))

(declare-fun c!24438 () Bool)

(assert (=> d!23546 (= c!24438 (>= 0 (size!1432 lt!27377)))))

(declare-fun e!55619 () Bool)

(assert (=> d!23546 e!55619))

(declare-fun res!48730 () Bool)

(assert (=> d!23546 (=> (not res!48730) (not e!55619))))

(assert (=> d!23546 (= res!48730 (>= 0 0))))

(assert (=> d!23546 (= (printTailRec!38 thiss!19403 lt!27377 0 (BalanceConc!1013 Empty!504)) lt!27615)))

(declare-fun b!100270 () Bool)

(assert (=> b!100270 (= e!55619 (<= 0 (size!1432 lt!27377)))))

(declare-fun b!100271 () Bool)

(assert (=> b!100271 (= e!55620 (BalanceConc!1013 Empty!504))))

(declare-fun b!100272 () Bool)

(assert (=> b!100272 (= e!55620 (printTailRec!38 thiss!19403 lt!27377 (+ 0 1) (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (apply!262 lt!27377 0)))))))

(declare-fun lt!27613 () List!1622)

(assert (=> b!100272 (= lt!27613 (list!653 lt!27377))))

(declare-fun lt!27617 () Unit!1075)

(assert (=> b!100272 (= lt!27617 (lemmaDropApply!91 lt!27613 0))))

(assert (=> b!100272 (= (head!458 (drop!97 lt!27613 0)) (apply!263 lt!27613 0))))

(declare-fun lt!27616 () Unit!1075)

(assert (=> b!100272 (= lt!27616 lt!27617)))

(declare-fun lt!27612 () List!1622)

(assert (=> b!100272 (= lt!27612 (list!653 lt!27377))))

(declare-fun lt!27618 () Unit!1075)

(assert (=> b!100272 (= lt!27618 (lemmaDropTail!83 lt!27612 0))))

(assert (=> b!100272 (= (tail!169 (drop!97 lt!27612 0)) (drop!97 lt!27612 (+ 0 1)))))

(declare-fun lt!27614 () Unit!1075)

(assert (=> b!100272 (= lt!27614 lt!27618)))

(assert (= (and d!23546 res!48730) b!100270))

(assert (= (and d!23546 c!24438) b!100271))

(assert (= (and d!23546 (not c!24438)) b!100272))

(assert (=> d!23546 m!85890))

(declare-fun m!85950 () Bool)

(assert (=> d!23546 m!85950))

(declare-fun m!85952 () Bool)

(assert (=> d!23546 m!85952))

(declare-fun m!85954 () Bool)

(assert (=> d!23546 m!85954))

(assert (=> d!23546 m!85950))

(assert (=> d!23546 m!85890))

(declare-fun m!85956 () Bool)

(assert (=> d!23546 m!85956))

(assert (=> b!100270 m!85954))

(declare-fun m!85958 () Bool)

(assert (=> b!100272 m!85958))

(declare-fun m!85960 () Bool)

(assert (=> b!100272 m!85960))

(declare-fun m!85962 () Bool)

(assert (=> b!100272 m!85962))

(declare-fun m!85964 () Bool)

(assert (=> b!100272 m!85964))

(assert (=> b!100272 m!85362))

(declare-fun m!85966 () Bool)

(assert (=> b!100272 m!85966))

(declare-fun m!85968 () Bool)

(assert (=> b!100272 m!85968))

(assert (=> b!100272 m!85968))

(declare-fun m!85970 () Bool)

(assert (=> b!100272 m!85970))

(declare-fun m!85972 () Bool)

(assert (=> b!100272 m!85972))

(declare-fun m!85974 () Bool)

(assert (=> b!100272 m!85974))

(assert (=> b!100272 m!85958))

(assert (=> b!100272 m!85972))

(assert (=> b!100272 m!85962))

(assert (=> b!100272 m!85974))

(declare-fun m!85976 () Bool)

(assert (=> b!100272 m!85976))

(declare-fun m!85978 () Bool)

(assert (=> b!100272 m!85978))

(declare-fun m!85980 () Bool)

(assert (=> b!100272 m!85980))

(assert (=> d!23418 d!23546))

(declare-fun d!23548 () Bool)

(declare-fun lt!27621 () Int)

(declare-fun size!1438 (List!1622) Int)

(assert (=> d!23548 (= lt!27621 (size!1438 (list!653 (_1!1087 lt!27538))))))

(declare-fun size!1439 (Conc!505) Int)

(assert (=> d!23548 (= lt!27621 (size!1439 (c!24346 (_1!1087 lt!27538))))))

(assert (=> d!23548 (= (size!1432 (_1!1087 lt!27538)) lt!27621)))

(declare-fun bs!9834 () Bool)

(assert (= bs!9834 d!23548))

(assert (=> bs!9834 m!85586))

(assert (=> bs!9834 m!85586))

(declare-fun m!85982 () Bool)

(assert (=> bs!9834 m!85982))

(declare-fun m!85984 () Bool)

(assert (=> bs!9834 m!85984))

(assert (=> d!23408 d!23548))

(declare-fun b!100287 () Bool)

(declare-fun e!55629 () tuple2!1760)

(assert (=> b!100287 (= e!55629 (tuple2!1761 (BalanceConc!1015 Empty!505) (seqFromList!198 (_2!1088 lt!27383))))))

(declare-fun lt!27706 () tuple2!1760)

(declare-datatypes ((tuple2!1772 0))(
  ( (tuple2!1773 (_1!1093 Token!460) (_2!1093 BalanceConc!1012)) )
))
(declare-datatypes ((Option!181 0))(
  ( (None!180) (Some!180 (v!12978 tuple2!1772)) )
))
(declare-fun lt!27722 () Option!181)

(declare-fun b!100288 () Bool)

(declare-fun lexRec!49 (LexerInterface!244 List!1623 BalanceConc!1012) tuple2!1760)

(assert (=> b!100288 (= lt!27706 (lexRec!49 thiss!19403 rules!2471 (_2!1093 (v!12978 lt!27722))))))

(declare-fun e!55631 () tuple2!1760)

(assert (=> b!100288 (= e!55631 (tuple2!1761 (prepend!124 (_1!1087 lt!27706) (_1!1093 (v!12978 lt!27722))) (_2!1087 lt!27706)))))

(declare-fun lt!27710 () BalanceConc!1012)

(declare-fun lt!27705 () Option!181)

(declare-fun b!100289 () Bool)

(declare-fun append!58 (BalanceConc!1014 Token!460) BalanceConc!1014)

(assert (=> b!100289 (= e!55629 (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383)) lt!27710 (_2!1093 (v!12978 lt!27705)) (append!58 (BalanceConc!1015 Empty!505) (_1!1093 (v!12978 lt!27705)))))))

(declare-fun lt!27715 () tuple2!1760)

(assert (=> b!100289 (= lt!27715 (lexRec!49 thiss!19403 rules!2471 (_2!1093 (v!12978 lt!27705))))))

(declare-fun lt!27718 () List!1620)

(assert (=> b!100289 (= lt!27718 (list!652 (BalanceConc!1013 Empty!504)))))

(declare-fun lt!27699 () List!1620)

(assert (=> b!100289 (= lt!27699 (list!652 (charsOf!83 (_1!1093 (v!12978 lt!27705)))))))

(declare-fun lt!27717 () List!1620)

(assert (=> b!100289 (= lt!27717 (list!652 (_2!1093 (v!12978 lt!27705))))))

(declare-fun lt!27695 () Unit!1075)

(assert (=> b!100289 (= lt!27695 (lemmaConcatAssociativity!98 lt!27718 lt!27699 lt!27717))))

(assert (=> b!100289 (= (++!247 (++!247 lt!27718 lt!27699) lt!27717) (++!247 lt!27718 (++!247 lt!27699 lt!27717)))))

(declare-fun lt!27716 () Unit!1075)

(assert (=> b!100289 (= lt!27716 lt!27695)))

(declare-fun maxPrefixZipperSequence!47 (LexerInterface!244 List!1623 BalanceConc!1012) Option!181)

(assert (=> b!100289 (= lt!27722 (maxPrefixZipperSequence!47 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383))))))

(declare-fun c!24445 () Bool)

(assert (=> b!100289 (= c!24445 (is-Some!180 lt!27722))))

(assert (=> b!100289 (= (lexRec!49 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383))) e!55631)))

(declare-fun lt!27707 () Unit!1075)

(declare-fun Unit!1080 () Unit!1075)

(assert (=> b!100289 (= lt!27707 Unit!1080)))

(declare-fun lt!27714 () List!1622)

(assert (=> b!100289 (= lt!27714 (list!653 (BalanceConc!1015 Empty!505)))))

(declare-fun lt!27708 () List!1622)

(assert (=> b!100289 (= lt!27708 (Cons!1616 (_1!1093 (v!12978 lt!27705)) Nil!1616))))

(declare-fun lt!27704 () List!1622)

(assert (=> b!100289 (= lt!27704 (list!653 (_1!1087 lt!27715)))))

(declare-fun lt!27703 () Unit!1075)

(declare-fun lemmaConcatAssociativity!100 (List!1622 List!1622 List!1622) Unit!1075)

(assert (=> b!100289 (= lt!27703 (lemmaConcatAssociativity!100 lt!27714 lt!27708 lt!27704))))

(assert (=> b!100289 (= (++!249 (++!249 lt!27714 lt!27708) lt!27704) (++!249 lt!27714 (++!249 lt!27708 lt!27704)))))

(declare-fun lt!27693 () Unit!1075)

(assert (=> b!100289 (= lt!27693 lt!27703)))

(declare-fun lt!27723 () List!1620)

(assert (=> b!100289 (= lt!27723 (++!247 (list!652 (BalanceConc!1013 Empty!504)) (list!652 (charsOf!83 (_1!1093 (v!12978 lt!27705))))))))

(declare-fun lt!27702 () List!1620)

(assert (=> b!100289 (= lt!27702 (list!652 (_2!1093 (v!12978 lt!27705))))))

(declare-fun lt!27721 () List!1622)

(assert (=> b!100289 (= lt!27721 (list!653 (append!58 (BalanceConc!1015 Empty!505) (_1!1093 (v!12978 lt!27705)))))))

(declare-fun lt!27694 () Unit!1075)

(declare-fun lemmaLexThenLexPrefix!44 (LexerInterface!244 List!1623 List!1620 List!1620 List!1622 List!1622 List!1620) Unit!1075)

(assert (=> b!100289 (= lt!27694 (lemmaLexThenLexPrefix!44 thiss!19403 rules!2471 lt!27723 lt!27702 lt!27721 (list!653 (_1!1087 lt!27715)) (list!652 (_2!1087 lt!27715))))))

(assert (=> b!100289 (= (lexList!72 thiss!19403 rules!2471 lt!27723) (tuple2!1765 lt!27721 Nil!1614))))

(declare-fun lt!27691 () Unit!1075)

(assert (=> b!100289 (= lt!27691 lt!27694)))

(declare-fun lt!27696 () BalanceConc!1012)

(assert (=> b!100289 (= lt!27696 (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (_1!1093 (v!12978 lt!27705)))))))

(declare-fun lt!27701 () Option!181)

(assert (=> b!100289 (= lt!27701 (maxPrefixZipperSequence!47 thiss!19403 rules!2471 lt!27696))))

(declare-fun c!24446 () Bool)

(assert (=> b!100289 (= c!24446 (is-Some!180 lt!27701))))

(declare-fun e!55630 () tuple2!1760)

(assert (=> b!100289 (= (lexRec!49 thiss!19403 rules!2471 (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (_1!1093 (v!12978 lt!27705))))) e!55630)))

(declare-fun lt!27720 () Unit!1075)

(declare-fun Unit!1081 () Unit!1075)

(assert (=> b!100289 (= lt!27720 Unit!1081)))

(assert (=> b!100289 (= lt!27710 (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (_1!1093 (v!12978 lt!27705)))))))

(declare-fun lt!27719 () List!1620)

(assert (=> b!100289 (= lt!27719 (list!652 lt!27710))))

(declare-fun lt!27711 () List!1620)

(assert (=> b!100289 (= lt!27711 (list!652 (_2!1093 (v!12978 lt!27705))))))

(declare-fun lt!27697 () Unit!1075)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!44 (List!1620 List!1620) Unit!1075)

(assert (=> b!100289 (= lt!27697 (lemmaConcatTwoListThenFSndIsSuffix!44 lt!27719 lt!27711))))

(declare-fun isSuffix!44 (List!1620 List!1620) Bool)

(assert (=> b!100289 (isSuffix!44 lt!27711 (++!247 lt!27719 lt!27711))))

(declare-fun lt!27692 () Unit!1075)

(assert (=> b!100289 (= lt!27692 lt!27697)))

(declare-fun lt!27690 () tuple2!1760)

(declare-fun b!100290 () Bool)

(assert (=> b!100290 (= lt!27690 (lexRec!49 thiss!19403 rules!2471 (_2!1093 (v!12978 lt!27701))))))

(assert (=> b!100290 (= e!55630 (tuple2!1761 (prepend!124 (_1!1087 lt!27690) (_1!1093 (v!12978 lt!27701))) (_2!1087 lt!27690)))))

(declare-fun b!100291 () Bool)

(assert (=> b!100291 (= e!55631 (tuple2!1761 (BalanceConc!1015 Empty!505) (seqFromList!198 (_2!1088 lt!27383))))))

(declare-fun b!100292 () Bool)

(assert (=> b!100292 (= e!55630 (tuple2!1761 (BalanceConc!1015 Empty!505) lt!27696))))

(declare-fun e!55632 () Bool)

(declare-fun b!100293 () Bool)

(declare-fun lt!27712 () tuple2!1760)

(assert (=> b!100293 (= e!55632 (= (list!652 (_2!1087 lt!27712)) (list!652 (_2!1087 (lexRec!49 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383)))))))))

(declare-fun d!23550 () Bool)

(assert (=> d!23550 e!55632))

(declare-fun res!48733 () Bool)

(assert (=> d!23550 (=> (not res!48733) (not e!55632))))

(assert (=> d!23550 (= res!48733 (= (list!653 (_1!1087 lt!27712)) (list!653 (_1!1087 (lexRec!49 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383)))))))))

(assert (=> d!23550 (= lt!27712 e!55629)))

(declare-fun c!24447 () Bool)

(assert (=> d!23550 (= c!24447 (is-Some!180 lt!27705))))

(declare-fun maxPrefixZipperSequenceV2!44 (LexerInterface!244 List!1623 BalanceConc!1012 BalanceConc!1012) Option!181)

(assert (=> d!23550 (= lt!27705 (maxPrefixZipperSequenceV2!44 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383)) (seqFromList!198 (_2!1088 lt!27383))))))

(declare-fun lt!27713 () Unit!1075)

(declare-fun lt!27700 () Unit!1075)

(assert (=> d!23550 (= lt!27713 lt!27700)))

(declare-fun lt!27709 () List!1620)

(declare-fun lt!27698 () List!1620)

(assert (=> d!23550 (isSuffix!44 lt!27709 (++!247 lt!27698 lt!27709))))

(assert (=> d!23550 (= lt!27700 (lemmaConcatTwoListThenFSndIsSuffix!44 lt!27698 lt!27709))))

(assert (=> d!23550 (= lt!27709 (list!652 (seqFromList!198 (_2!1088 lt!27383))))))

(assert (=> d!23550 (= lt!27698 (list!652 (BalanceConc!1013 Empty!504)))))

(assert (=> d!23550 (= (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383)) (BalanceConc!1013 Empty!504) (seqFromList!198 (_2!1088 lt!27383)) (BalanceConc!1015 Empty!505)) lt!27712)))

(assert (= (and d!23550 c!24447) b!100289))

(assert (= (and d!23550 (not c!24447)) b!100287))

(assert (= (and b!100289 c!24445) b!100288))

(assert (= (and b!100289 (not c!24445)) b!100291))

(assert (= (and b!100289 c!24446) b!100290))

(assert (= (and b!100289 (not c!24446)) b!100292))

(assert (= (and d!23550 res!48733) b!100293))

(declare-fun m!85986 () Bool)

(assert (=> d!23550 m!85986))

(assert (=> d!23550 m!85052))

(declare-fun m!85988 () Bool)

(assert (=> d!23550 m!85988))

(assert (=> d!23550 m!85986))

(declare-fun m!85990 () Bool)

(assert (=> d!23550 m!85990))

(declare-fun m!85992 () Bool)

(assert (=> d!23550 m!85992))

(declare-fun m!85994 () Bool)

(assert (=> d!23550 m!85994))

(assert (=> d!23550 m!85052))

(assert (=> d!23550 m!85052))

(declare-fun m!85996 () Bool)

(assert (=> d!23550 m!85996))

(declare-fun m!85998 () Bool)

(assert (=> d!23550 m!85998))

(assert (=> d!23550 m!85890))

(assert (=> d!23550 m!85052))

(assert (=> d!23550 m!85588))

(declare-fun m!86000 () Bool)

(assert (=> b!100288 m!86000))

(declare-fun m!86002 () Bool)

(assert (=> b!100288 m!86002))

(declare-fun m!86004 () Bool)

(assert (=> b!100290 m!86004))

(declare-fun m!86006 () Bool)

(assert (=> b!100290 m!86006))

(declare-fun m!86008 () Bool)

(assert (=> b!100289 m!86008))

(assert (=> b!100289 m!85052))

(declare-fun m!86010 () Bool)

(assert (=> b!100289 m!86010))

(declare-fun m!86012 () Bool)

(assert (=> b!100289 m!86012))

(declare-fun m!86014 () Bool)

(assert (=> b!100289 m!86014))

(assert (=> b!100289 m!85890))

(declare-fun m!86016 () Bool)

(assert (=> b!100289 m!86016))

(declare-fun m!86018 () Bool)

(assert (=> b!100289 m!86018))

(declare-fun m!86020 () Bool)

(assert (=> b!100289 m!86020))

(declare-fun m!86022 () Bool)

(assert (=> b!100289 m!86022))

(assert (=> b!100289 m!86016))

(declare-fun m!86024 () Bool)

(assert (=> b!100289 m!86024))

(declare-fun m!86026 () Bool)

(assert (=> b!100289 m!86026))

(declare-fun m!86028 () Bool)

(assert (=> b!100289 m!86028))

(assert (=> b!100289 m!86026))

(declare-fun m!86030 () Bool)

(assert (=> b!100289 m!86030))

(declare-fun m!86032 () Bool)

(assert (=> b!100289 m!86032))

(declare-fun m!86034 () Bool)

(assert (=> b!100289 m!86034))

(declare-fun m!86036 () Bool)

(assert (=> b!100289 m!86036))

(assert (=> b!100289 m!86028))

(declare-fun m!86038 () Bool)

(assert (=> b!100289 m!86038))

(declare-fun m!86040 () Bool)

(assert (=> b!100289 m!86040))

(declare-fun m!86042 () Bool)

(assert (=> b!100289 m!86042))

(declare-fun m!86044 () Bool)

(assert (=> b!100289 m!86044))

(declare-fun m!86046 () Bool)

(assert (=> b!100289 m!86046))

(assert (=> b!100289 m!86042))

(assert (=> b!100289 m!86008))

(declare-fun m!86048 () Bool)

(assert (=> b!100289 m!86048))

(declare-fun m!86050 () Bool)

(assert (=> b!100289 m!86050))

(assert (=> b!100289 m!86040))

(declare-fun m!86052 () Bool)

(assert (=> b!100289 m!86052))

(declare-fun m!86054 () Bool)

(assert (=> b!100289 m!86054))

(declare-fun m!86056 () Bool)

(assert (=> b!100289 m!86056))

(declare-fun m!86058 () Bool)

(assert (=> b!100289 m!86058))

(assert (=> b!100289 m!85890))

(assert (=> b!100289 m!86030))

(declare-fun m!86060 () Bool)

(assert (=> b!100289 m!86060))

(assert (=> b!100289 m!86034))

(assert (=> b!100289 m!86022))

(assert (=> b!100289 m!86012))

(declare-fun m!86062 () Bool)

(assert (=> b!100289 m!86062))

(assert (=> b!100289 m!85052))

(assert (=> b!100289 m!85988))

(assert (=> b!100289 m!86026))

(assert (=> b!100289 m!86054))

(declare-fun m!86064 () Bool)

(assert (=> b!100289 m!86064))

(declare-fun m!86066 () Bool)

(assert (=> b!100289 m!86066))

(assert (=> b!100289 m!85052))

(assert (=> b!100289 m!86034))

(declare-fun m!86068 () Bool)

(assert (=> b!100289 m!86068))

(declare-fun m!86070 () Bool)

(assert (=> b!100293 m!86070))

(assert (=> b!100293 m!85052))

(assert (=> b!100293 m!85988))

(declare-fun m!86072 () Bool)

(assert (=> b!100293 m!86072))

(assert (=> d!23408 d!23550))

(declare-fun d!23552 () Bool)

(declare-fun c!24450 () Bool)

(assert (=> d!23552 (= c!24450 (is-Nil!1614 lt!27540))))

(declare-fun e!55635 () (Set C!1762))

(assert (=> d!23552 (= (content!125 lt!27540) e!55635)))

(declare-fun b!100298 () Bool)

(assert (=> b!100298 (= e!55635 (as set.empty (Set C!1762)))))

(declare-fun b!100299 () Bool)

(assert (=> b!100299 (= e!55635 (set.union (set.insert (h!7011 lt!27540) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27540))))))

(assert (= (and d!23552 c!24450) b!100298))

(assert (= (and d!23552 (not c!24450)) b!100299))

(declare-fun m!86074 () Bool)

(assert (=> b!100299 m!86074))

(declare-fun m!86076 () Bool)

(assert (=> b!100299 m!86076))

(assert (=> d!23414 d!23552))

(declare-fun d!23554 () Bool)

(declare-fun c!24451 () Bool)

(assert (=> d!23554 (= c!24451 (is-Nil!1614 lt!27382))))

(declare-fun e!55636 () (Set C!1762))

(assert (=> d!23554 (= (content!125 lt!27382) e!55636)))

(declare-fun b!100300 () Bool)

(assert (=> b!100300 (= e!55636 (as set.empty (Set C!1762)))))

(declare-fun b!100301 () Bool)

(assert (=> b!100301 (= e!55636 (set.union (set.insert (h!7011 lt!27382) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27382))))))

(assert (= (and d!23554 c!24451) b!100300))

(assert (= (and d!23554 (not c!24451)) b!100301))

(declare-fun m!86078 () Bool)

(assert (=> b!100301 m!86078))

(declare-fun m!86080 () Bool)

(assert (=> b!100301 m!86080))

(assert (=> d!23414 d!23554))

(declare-fun d!23556 () Bool)

(declare-fun c!24452 () Bool)

(assert (=> d!23556 (= c!24452 (is-Nil!1614 lt!27391))))

(declare-fun e!55637 () (Set C!1762))

(assert (=> d!23556 (= (content!125 lt!27391) e!55637)))

(declare-fun b!100302 () Bool)

(assert (=> b!100302 (= e!55637 (as set.empty (Set C!1762)))))

(declare-fun b!100303 () Bool)

(assert (=> b!100303 (= e!55637 (set.union (set.insert (h!7011 lt!27391) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27391))))))

(assert (= (and d!23556 c!24452) b!100302))

(assert (= (and d!23556 (not c!24452)) b!100303))

(declare-fun m!86082 () Bool)

(assert (=> b!100303 m!86082))

(declare-fun m!86084 () Bool)

(assert (=> b!100303 m!86084))

(assert (=> d!23414 d!23556))

(declare-fun b!100332 () Bool)

(declare-fun e!55653 () Bool)

(declare-fun lt!27726 () Bool)

(assert (=> b!100332 (= e!55653 (not lt!27726))))

(declare-fun b!100333 () Bool)

(declare-fun e!55655 () Bool)

(declare-fun e!55658 () Bool)

(assert (=> b!100333 (= e!55655 e!55658)))

(declare-fun res!48756 () Bool)

(assert (=> b!100333 (=> (not res!48756) (not e!55658))))

(assert (=> b!100333 (= res!48756 (not lt!27726))))

(declare-fun b!100334 () Bool)

(declare-fun res!48754 () Bool)

(assert (=> b!100334 (=> res!48754 e!55655)))

(declare-fun e!55654 () Bool)

(assert (=> b!100334 (= res!48754 e!55654)))

(declare-fun res!48755 () Bool)

(assert (=> b!100334 (=> (not res!48755) (not e!55654))))

(assert (=> b!100334 (= res!48755 lt!27726)))

(declare-fun b!100335 () Bool)

(declare-fun e!55652 () Bool)

(declare-fun call!4409 () Bool)

(assert (=> b!100335 (= e!55652 (= lt!27726 call!4409))))

(declare-fun b!100336 () Bool)

(declare-fun res!48753 () Bool)

(assert (=> b!100336 (=> (not res!48753) (not e!55654))))

(assert (=> b!100336 (= res!48753 (not call!4409))))

(declare-fun d!23558 () Bool)

(assert (=> d!23558 e!55652))

(declare-fun c!24459 () Bool)

(assert (=> d!23558 (= c!24459 (is-EmptyExpr!420 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496))))))))

(declare-fun e!55656 () Bool)

(assert (=> d!23558 (= lt!27726 e!55656)))

(declare-fun c!24460 () Bool)

(assert (=> d!23558 (= c!24460 (isEmpty!715 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))))))

(declare-fun validRegex!58 (Regex!420) Bool)

(assert (=> d!23558 (validRegex!58 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496)))))))

(assert (=> d!23558 (= (matchR!44 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496)))) (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) lt!27726)))

(declare-fun bm!4404 () Bool)

(assert (=> bm!4404 (= call!4409 (isEmpty!715 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))))))

(declare-fun b!100337 () Bool)

(declare-fun nullable!51 (Regex!420) Bool)

(assert (=> b!100337 (= e!55656 (nullable!51 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496))))))))

(declare-fun b!100338 () Bool)

(declare-fun res!48750 () Bool)

(assert (=> b!100338 (=> (not res!48750) (not e!55654))))

(assert (=> b!100338 (= res!48750 (isEmpty!715 (tail!171 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))))))))

(declare-fun b!100339 () Bool)

(declare-fun e!55657 () Bool)

(assert (=> b!100339 (= e!55658 e!55657)))

(declare-fun res!48757 () Bool)

(assert (=> b!100339 (=> res!48757 e!55657)))

(assert (=> b!100339 (= res!48757 call!4409)))

(declare-fun b!100340 () Bool)

(assert (=> b!100340 (= e!55657 (not (= (head!457 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) (c!24345 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496))))))))))

(declare-fun b!100341 () Bool)

(declare-fun derivativeStep!33 (Regex!420 C!1762) Regex!420)

(assert (=> b!100341 (= e!55656 (matchR!44 (derivativeStep!33 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496)))) (head!457 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))))) (tail!171 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))))))))

(declare-fun b!100342 () Bool)

(declare-fun res!48751 () Bool)

(assert (=> b!100342 (=> res!48751 e!55657)))

(assert (=> b!100342 (= res!48751 (not (isEmpty!715 (tail!171 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))))))))

(declare-fun b!100343 () Bool)

(declare-fun res!48752 () Bool)

(assert (=> b!100343 (=> res!48752 e!55655)))

(assert (=> b!100343 (= res!48752 (not (is-ElementMatch!420 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496)))))))))

(assert (=> b!100343 (= e!55653 e!55655)))

(declare-fun b!100344 () Bool)

(assert (=> b!100344 (= e!55652 e!55653)))

(declare-fun c!24461 () Bool)

(assert (=> b!100344 (= c!24461 (is-EmptyLang!420 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496))))))))

(declare-fun b!100345 () Bool)

(assert (=> b!100345 (= e!55654 (= (head!457 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) (c!24345 (regex!352 (rule!857 (_1!1088 (get!411 lt!27496)))))))))

(assert (= (and d!23558 c!24460) b!100337))

(assert (= (and d!23558 (not c!24460)) b!100341))

(assert (= (and d!23558 c!24459) b!100335))

(assert (= (and d!23558 (not c!24459)) b!100344))

(assert (= (and b!100344 c!24461) b!100332))

(assert (= (and b!100344 (not c!24461)) b!100343))

(assert (= (and b!100343 (not res!48752)) b!100334))

(assert (= (and b!100334 res!48755) b!100336))

(assert (= (and b!100336 res!48753) b!100338))

(assert (= (and b!100338 res!48750) b!100345))

(assert (= (and b!100334 (not res!48754)) b!100333))

(assert (= (and b!100333 res!48756) b!100339))

(assert (= (and b!100339 (not res!48757)) b!100342))

(assert (= (and b!100342 (not res!48751)) b!100340))

(assert (= (or b!100335 b!100336 b!100339) bm!4404))

(assert (=> b!100345 m!85396))

(declare-fun m!86086 () Bool)

(assert (=> b!100345 m!86086))

(assert (=> bm!4404 m!85396))

(declare-fun m!86088 () Bool)

(assert (=> bm!4404 m!86088))

(assert (=> b!100340 m!85396))

(assert (=> b!100340 m!86086))

(assert (=> b!100338 m!85396))

(declare-fun m!86090 () Bool)

(assert (=> b!100338 m!86090))

(assert (=> b!100338 m!86090))

(declare-fun m!86092 () Bool)

(assert (=> b!100338 m!86092))

(declare-fun m!86094 () Bool)

(assert (=> b!100337 m!86094))

(assert (=> b!100342 m!85396))

(assert (=> b!100342 m!86090))

(assert (=> b!100342 m!86090))

(assert (=> b!100342 m!86092))

(assert (=> b!100341 m!85396))

(assert (=> b!100341 m!86086))

(assert (=> b!100341 m!86086))

(declare-fun m!86096 () Bool)

(assert (=> b!100341 m!86096))

(assert (=> b!100341 m!85396))

(assert (=> b!100341 m!86090))

(assert (=> b!100341 m!86096))

(assert (=> b!100341 m!86090))

(declare-fun m!86098 () Bool)

(assert (=> b!100341 m!86098))

(assert (=> d!23558 m!85396))

(assert (=> d!23558 m!86088))

(declare-fun m!86100 () Bool)

(assert (=> d!23558 m!86100))

(assert (=> b!99950 d!23558))

(assert (=> b!99950 d!23452))

(assert (=> b!99950 d!23448))

(assert (=> b!99950 d!23450))

(declare-fun b!100349 () Bool)

(declare-fun e!55660 () List!1620)

(assert (=> b!100349 (= e!55660 (++!247 (list!656 (left!1233 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388))))) (list!656 (right!1563 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388)))))))))

(declare-fun b!100347 () Bool)

(declare-fun e!55659 () List!1620)

(assert (=> b!100347 (= e!55659 e!55660)))

(declare-fun c!24463 () Bool)

(assert (=> b!100347 (= c!24463 (is-Leaf!816 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388)))))))

(declare-fun b!100346 () Bool)

(assert (=> b!100346 (= e!55659 Nil!1614)))

(declare-fun b!100348 () Bool)

(assert (=> b!100348 (= e!55660 (list!661 (xs!3091 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388))))))))

(declare-fun d!23560 () Bool)

(declare-fun c!24462 () Bool)

(assert (=> d!23560 (= c!24462 (is-Empty!504 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388)))))))

(assert (=> d!23560 (= (list!656 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27388)))) e!55659)))

(assert (= (and d!23560 c!24462) b!100346))

(assert (= (and d!23560 (not c!24462)) b!100347))

(assert (= (and b!100347 c!24463) b!100348))

(assert (= (and b!100347 (not c!24463)) b!100349))

(declare-fun m!86102 () Bool)

(assert (=> b!100349 m!86102))

(declare-fun m!86104 () Bool)

(assert (=> b!100349 m!86104))

(assert (=> b!100349 m!86102))

(assert (=> b!100349 m!86104))

(declare-fun m!86106 () Bool)

(assert (=> b!100349 m!86106))

(declare-fun m!86108 () Bool)

(assert (=> b!100348 m!86108))

(assert (=> d!23306 d!23560))

(declare-fun d!23562 () Bool)

(declare-fun lt!27729 () Int)

(assert (=> d!23562 (>= lt!27729 0)))

(declare-fun e!55663 () Int)

(assert (=> d!23562 (= lt!27729 e!55663)))

(declare-fun c!24466 () Bool)

(assert (=> d!23562 (= c!24466 (is-Nil!1614 lt!27497))))

(assert (=> d!23562 (= (size!1431 lt!27497) lt!27729)))

(declare-fun b!100354 () Bool)

(assert (=> b!100354 (= e!55663 0)))

(declare-fun b!100355 () Bool)

(assert (=> b!100355 (= e!55663 (+ 1 (size!1431 (t!21217 lt!27497))))))

(assert (= (and d!23562 c!24466) b!100354))

(assert (= (and d!23562 (not c!24466)) b!100355))

(declare-fun m!86110 () Bool)

(assert (=> b!100355 m!86110))

(assert (=> b!99955 d!23562))

(declare-fun d!23564 () Bool)

(declare-fun lt!27730 () Int)

(assert (=> d!23564 (>= lt!27730 0)))

(declare-fun e!55664 () Int)

(assert (=> d!23564 (= lt!27730 e!55664)))

(declare-fun c!24467 () Bool)

(assert (=> d!23564 (= c!24467 (is-Nil!1614 lt!27392))))

(assert (=> d!23564 (= (size!1431 lt!27392) lt!27730)))

(declare-fun b!100356 () Bool)

(assert (=> b!100356 (= e!55664 0)))

(declare-fun b!100357 () Bool)

(assert (=> b!100357 (= e!55664 (+ 1 (size!1431 (t!21217 lt!27392))))))

(assert (= (and d!23564 c!24467) b!100356))

(assert (= (and d!23564 (not c!24467)) b!100357))

(declare-fun m!86112 () Bool)

(assert (=> b!100357 m!86112))

(assert (=> b!99955 d!23564))

(declare-fun d!23566 () Bool)

(declare-fun lt!27731 () Int)

(assert (=> d!23566 (>= lt!27731 0)))

(declare-fun e!55665 () Int)

(assert (=> d!23566 (= lt!27731 e!55665)))

(declare-fun c!24468 () Bool)

(assert (=> d!23566 (= c!24468 (is-Nil!1614 lt!27389))))

(assert (=> d!23566 (= (size!1431 lt!27389) lt!27731)))

(declare-fun b!100358 () Bool)

(assert (=> b!100358 (= e!55665 0)))

(declare-fun b!100359 () Bool)

(assert (=> b!100359 (= e!55665 (+ 1 (size!1431 (t!21217 lt!27389))))))

(assert (= (and d!23566 c!24468) b!100358))

(assert (= (and d!23566 (not c!24468)) b!100359))

(declare-fun m!86114 () Bool)

(assert (=> b!100359 m!86114))

(assert (=> b!99955 d!23566))

(declare-fun b!100360 () Bool)

(declare-fun e!55666 () List!1620)

(assert (=> b!100360 (= e!55666 lt!27391)))

(declare-fun d!23568 () Bool)

(declare-fun e!55667 () Bool)

(assert (=> d!23568 e!55667))

(declare-fun res!48759 () Bool)

(assert (=> d!23568 (=> (not res!48759) (not e!55667))))

(declare-fun lt!27732 () List!1620)

(assert (=> d!23568 (= res!48759 (= (content!125 lt!27732) (set.union (content!125 (t!21217 lt!27382)) (content!125 lt!27391))))))

(assert (=> d!23568 (= lt!27732 e!55666)))

(declare-fun c!24469 () Bool)

(assert (=> d!23568 (= c!24469 (is-Nil!1614 (t!21217 lt!27382)))))

(assert (=> d!23568 (= (++!247 (t!21217 lt!27382) lt!27391) lt!27732)))

(declare-fun b!100363 () Bool)

(assert (=> b!100363 (= e!55667 (or (not (= lt!27391 Nil!1614)) (= lt!27732 (t!21217 lt!27382))))))

(declare-fun b!100361 () Bool)

(assert (=> b!100361 (= e!55666 (Cons!1614 (h!7011 (t!21217 lt!27382)) (++!247 (t!21217 (t!21217 lt!27382)) lt!27391)))))

(declare-fun b!100362 () Bool)

(declare-fun res!48758 () Bool)

(assert (=> b!100362 (=> (not res!48758) (not e!55667))))

(assert (=> b!100362 (= res!48758 (= (size!1431 lt!27732) (+ (size!1431 (t!21217 lt!27382)) (size!1431 lt!27391))))))

(assert (= (and d!23568 c!24469) b!100360))

(assert (= (and d!23568 (not c!24469)) b!100361))

(assert (= (and d!23568 res!48759) b!100362))

(assert (= (and b!100362 res!48758) b!100363))

(declare-fun m!86116 () Bool)

(assert (=> d!23568 m!86116))

(assert (=> d!23568 m!86080))

(assert (=> d!23568 m!85194))

(declare-fun m!86118 () Bool)

(assert (=> b!100361 m!86118))

(declare-fun m!86120 () Bool)

(assert (=> b!100362 m!86120))

(declare-fun m!86122 () Bool)

(assert (=> b!100362 m!86122))

(assert (=> b!100362 m!85202))

(assert (=> b!100024 d!23568))

(declare-fun b!100364 () Bool)

(declare-fun e!55668 () List!1622)

(assert (=> b!100364 (= e!55668 Nil!1616)))

(declare-fun d!23570 () Bool)

(declare-fun c!24470 () Bool)

(assert (=> d!23570 (= c!24470 (is-Empty!505 (c!24346 (_1!1087 lt!27388))))))

(assert (=> d!23570 (= (list!657 (c!24346 (_1!1087 lt!27388))) e!55668)))

(declare-fun b!100366 () Bool)

(declare-fun e!55669 () List!1622)

(assert (=> b!100366 (= e!55669 (list!660 (xs!3092 (c!24346 (_1!1087 lt!27388)))))))

(declare-fun b!100365 () Bool)

(assert (=> b!100365 (= e!55668 e!55669)))

(declare-fun c!24471 () Bool)

(assert (=> b!100365 (= c!24471 (is-Leaf!817 (c!24346 (_1!1087 lt!27388))))))

(declare-fun b!100367 () Bool)

(assert (=> b!100367 (= e!55669 (++!249 (list!657 (left!1234 (c!24346 (_1!1087 lt!27388)))) (list!657 (right!1564 (c!24346 (_1!1087 lt!27388))))))))

(assert (= (and d!23570 c!24470) b!100364))

(assert (= (and d!23570 (not c!24470)) b!100365))

(assert (= (and b!100365 c!24471) b!100366))

(assert (= (and b!100365 (not c!24471)) b!100367))

(declare-fun m!86124 () Bool)

(assert (=> b!100366 m!86124))

(declare-fun m!86126 () Bool)

(assert (=> b!100367 m!86126))

(declare-fun m!86128 () Bool)

(assert (=> b!100367 m!86128))

(assert (=> b!100367 m!86126))

(assert (=> b!100367 m!86128))

(declare-fun m!86130 () Bool)

(assert (=> b!100367 m!86130))

(assert (=> d!23310 d!23570))

(declare-fun d!23572 () Bool)

(declare-fun lt!27733 () Int)

(assert (=> d!23572 (>= lt!27733 0)))

(declare-fun e!55670 () Int)

(assert (=> d!23572 (= lt!27733 e!55670)))

(declare-fun c!24472 () Bool)

(assert (=> d!23572 (= c!24472 (is-Nil!1614 lt!27539))))

(assert (=> d!23572 (= (size!1431 lt!27539) lt!27733)))

(declare-fun b!100368 () Bool)

(assert (=> b!100368 (= e!55670 0)))

(declare-fun b!100369 () Bool)

(assert (=> b!100369 (= e!55670 (+ 1 (size!1431 (t!21217 lt!27539))))))

(assert (= (and d!23572 c!24472) b!100368))

(assert (= (and d!23572 (not c!24472)) b!100369))

(declare-fun m!86132 () Bool)

(assert (=> b!100369 m!86132))

(assert (=> b!100021 d!23572))

(declare-fun d!23574 () Bool)

(declare-fun lt!27734 () Int)

(assert (=> d!23574 (>= lt!27734 0)))

(declare-fun e!55671 () Int)

(assert (=> d!23574 (= lt!27734 e!55671)))

(declare-fun c!24473 () Bool)

(assert (=> d!23574 (= c!24473 (is-Nil!1614 lt!27380))))

(assert (=> d!23574 (= (size!1431 lt!27380) lt!27734)))

(declare-fun b!100370 () Bool)

(assert (=> b!100370 (= e!55671 0)))

(declare-fun b!100371 () Bool)

(assert (=> b!100371 (= e!55671 (+ 1 (size!1431 (t!21217 lt!27380))))))

(assert (= (and d!23574 c!24473) b!100370))

(assert (= (and d!23574 (not c!24473)) b!100371))

(assert (=> b!100371 m!85730))

(assert (=> b!100021 d!23574))

(declare-fun d!23576 () Bool)

(declare-fun lt!27735 () Int)

(assert (=> d!23576 (>= lt!27735 0)))

(declare-fun e!55672 () Int)

(assert (=> d!23576 (= lt!27735 e!55672)))

(declare-fun c!24474 () Bool)

(assert (=> d!23576 (= c!24474 (is-Nil!1614 (++!247 lt!27382 lt!27391)))))

(assert (=> d!23576 (= (size!1431 (++!247 lt!27382 lt!27391)) lt!27735)))

(declare-fun b!100372 () Bool)

(assert (=> b!100372 (= e!55672 0)))

(declare-fun b!100373 () Bool)

(assert (=> b!100373 (= e!55672 (+ 1 (size!1431 (t!21217 (++!247 lt!27382 lt!27391)))))))

(assert (= (and d!23576 c!24474) b!100372))

(assert (= (and d!23576 (not c!24474)) b!100373))

(declare-fun m!86134 () Bool)

(assert (=> b!100373 m!86134))

(assert (=> b!100021 d!23576))

(declare-fun b!100374 () Bool)

(declare-fun e!55673 () List!1622)

(assert (=> b!100374 (= e!55673 Nil!1616)))

(declare-fun d!23578 () Bool)

(declare-fun c!24475 () Bool)

(assert (=> d!23578 (= c!24475 (is-Empty!505 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386)))))))

(assert (=> d!23578 (= (list!657 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386)))) e!55673)))

(declare-fun b!100376 () Bool)

(declare-fun e!55674 () List!1622)

(assert (=> b!100376 (= e!55674 (list!660 (xs!3092 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386))))))))

(declare-fun b!100375 () Bool)

(assert (=> b!100375 (= e!55673 e!55674)))

(declare-fun c!24476 () Bool)

(assert (=> b!100375 (= c!24476 (is-Leaf!817 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386)))))))

(declare-fun b!100377 () Bool)

(assert (=> b!100377 (= e!55674 (++!249 (list!657 (left!1234 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386))))) (list!657 (right!1564 (c!24346 (prepend!124 lt!27377 (h!7013 lt!27386)))))))))

(assert (= (and d!23578 c!24475) b!100374))

(assert (= (and d!23578 (not c!24475)) b!100375))

(assert (= (and b!100375 c!24476) b!100376))

(assert (= (and b!100375 (not c!24476)) b!100377))

(declare-fun m!86136 () Bool)

(assert (=> b!100376 m!86136))

(declare-fun m!86138 () Bool)

(assert (=> b!100377 m!86138))

(declare-fun m!86140 () Bool)

(assert (=> b!100377 m!86140))

(assert (=> b!100377 m!86138))

(assert (=> b!100377 m!86140))

(declare-fun m!86142 () Bool)

(assert (=> b!100377 m!86142))

(assert (=> d!23358 d!23578))

(declare-fun d!23580 () Bool)

(declare-fun res!48773 () Bool)

(declare-fun e!55679 () Bool)

(assert (=> d!23580 (=> res!48773 e!55679)))

(assert (=> d!23580 (= res!48773 (not (is-Node!505 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)))))))

(assert (=> d!23580 (= (isBalanced!128 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386))) e!55679)))

(declare-fun b!100390 () Bool)

(declare-fun e!55680 () Bool)

(declare-fun isEmpty!723 (Conc!505) Bool)

(assert (=> b!100390 (= e!55680 (not (isEmpty!723 (right!1564 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386))))))))

(declare-fun b!100391 () Bool)

(assert (=> b!100391 (= e!55679 e!55680)))

(declare-fun res!48775 () Bool)

(assert (=> b!100391 (=> (not res!48775) (not e!55680))))

(declare-fun height!47 (Conc!505) Int)

(assert (=> b!100391 (= res!48775 (<= (- 1) (- (height!47 (left!1234 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)))) (height!47 (right!1564 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)))))))))

(declare-fun b!100392 () Bool)

(declare-fun res!48776 () Bool)

(assert (=> b!100392 (=> (not res!48776) (not e!55680))))

(assert (=> b!100392 (= res!48776 (not (isEmpty!723 (left!1234 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386))))))))

(declare-fun b!100393 () Bool)

(declare-fun res!48774 () Bool)

(assert (=> b!100393 (=> (not res!48774) (not e!55680))))

(assert (=> b!100393 (= res!48774 (<= (- (height!47 (left!1234 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)))) (height!47 (right!1564 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386))))) 1))))

(declare-fun b!100394 () Bool)

(declare-fun res!48772 () Bool)

(assert (=> b!100394 (=> (not res!48772) (not e!55680))))

(assert (=> b!100394 (= res!48772 (isBalanced!128 (right!1564 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)))))))

(declare-fun b!100395 () Bool)

(declare-fun res!48777 () Bool)

(assert (=> b!100395 (=> (not res!48777) (not e!55680))))

(assert (=> b!100395 (= res!48777 (isBalanced!128 (left!1234 (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)))))))

(assert (= (and d!23580 (not res!48773)) b!100391))

(assert (= (and b!100391 res!48775) b!100393))

(assert (= (and b!100393 res!48774) b!100395))

(assert (= (and b!100395 res!48777) b!100394))

(assert (= (and b!100394 res!48772) b!100392))

(assert (= (and b!100392 res!48776) b!100390))

(declare-fun m!86144 () Bool)

(assert (=> b!100391 m!86144))

(declare-fun m!86146 () Bool)

(assert (=> b!100391 m!86146))

(declare-fun m!86148 () Bool)

(assert (=> b!100395 m!86148))

(declare-fun m!86150 () Bool)

(assert (=> b!100394 m!86150))

(declare-fun m!86152 () Bool)

(assert (=> b!100390 m!86152))

(assert (=> b!100393 m!86144))

(assert (=> b!100393 m!86146))

(declare-fun m!86154 () Bool)

(assert (=> b!100392 m!86154))

(assert (=> d!23348 d!23580))

(declare-fun d!23582 () Bool)

(declare-fun e!55683 () Bool)

(assert (=> d!23582 e!55683))

(declare-fun res!48780 () Bool)

(assert (=> d!23582 (=> (not res!48780) (not e!55683))))

(declare-fun lt!27738 () Conc!505)

(assert (=> d!23582 (= res!48780 (isBalanced!128 lt!27738))))

(declare-fun ++!251 (Conc!505 Conc!505) Conc!505)

(declare-fun fill!28 (Int Token!460) IArray!1011)

(assert (=> d!23582 (= lt!27738 (++!251 (Leaf!817 (fill!28 1 (h!7013 lt!27386)) 1) (c!24346 lt!27377)))))

(assert (=> d!23582 (isBalanced!128 (c!24346 lt!27377))))

(assert (=> d!23582 (= (prepend!126 (c!24346 lt!27377) (h!7013 lt!27386)) lt!27738)))

(declare-fun b!100398 () Bool)

(assert (=> b!100398 (= e!55683 (= (list!657 lt!27738) (Cons!1616 (h!7013 lt!27386) (list!657 (c!24346 lt!27377)))))))

(assert (= (and d!23582 res!48780) b!100398))

(declare-fun m!86156 () Bool)

(assert (=> d!23582 m!86156))

(declare-fun m!86158 () Bool)

(assert (=> d!23582 m!86158))

(declare-fun m!86160 () Bool)

(assert (=> d!23582 m!86160))

(declare-fun m!86162 () Bool)

(assert (=> d!23582 m!86162))

(declare-fun m!86164 () Bool)

(assert (=> b!100398 m!86164))

(assert (=> b!100398 m!85948))

(assert (=> d!23348 d!23582))

(declare-fun d!23584 () Bool)

(assert (=> d!23584 true))

(declare-fun order!733 () Int)

(declare-fun order!735 () Int)

(declare-fun lambda!1813 () Int)

(declare-fun dynLambda!482 (Int Int) Int)

(declare-fun dynLambda!483 (Int Int) Int)

(assert (=> d!23584 (< (dynLambda!482 order!733 (toChars!774 (transformation!352 (h!7014 rules!2471)))) (dynLambda!483 order!735 lambda!1813))))

(assert (=> d!23584 true))

(declare-fun order!737 () Int)

(declare-fun dynLambda!484 (Int Int) Int)

(assert (=> d!23584 (< (dynLambda!484 order!737 (toValue!915 (transformation!352 (h!7014 rules!2471)))) (dynLambda!483 order!735 lambda!1813))))

(declare-fun Forall!65 (Int) Bool)

(assert (=> d!23584 (= (semiInverseModEq!86 (toChars!774 (transformation!352 (h!7014 rules!2471))) (toValue!915 (transformation!352 (h!7014 rules!2471)))) (Forall!65 lambda!1813))))

(declare-fun bs!9835 () Bool)

(assert (= bs!9835 d!23584))

(declare-fun m!86166 () Bool)

(assert (=> bs!9835 m!86166))

(assert (=> d!23314 d!23584))

(declare-fun b!100406 () Bool)

(declare-fun e!55685 () List!1620)

(assert (=> b!100406 (= e!55685 (++!247 (list!656 (left!1233 (c!24344 (charsOf!83 (_1!1088 lt!27383))))) (list!656 (right!1563 (c!24344 (charsOf!83 (_1!1088 lt!27383)))))))))

(declare-fun b!100404 () Bool)

(declare-fun e!55684 () List!1620)

(assert (=> b!100404 (= e!55684 e!55685)))

(declare-fun c!24478 () Bool)

(assert (=> b!100404 (= c!24478 (is-Leaf!816 (c!24344 (charsOf!83 (_1!1088 lt!27383)))))))

(declare-fun b!100403 () Bool)

(assert (=> b!100403 (= e!55684 Nil!1614)))

(declare-fun b!100405 () Bool)

(assert (=> b!100405 (= e!55685 (list!661 (xs!3091 (c!24344 (charsOf!83 (_1!1088 lt!27383))))))))

(declare-fun d!23586 () Bool)

(declare-fun c!24477 () Bool)

(assert (=> d!23586 (= c!24477 (is-Empty!504 (c!24344 (charsOf!83 (_1!1088 lt!27383)))))))

(assert (=> d!23586 (= (list!656 (c!24344 (charsOf!83 (_1!1088 lt!27383)))) e!55684)))

(assert (= (and d!23586 c!24477) b!100403))

(assert (= (and d!23586 (not c!24477)) b!100404))

(assert (= (and b!100404 c!24478) b!100405))

(assert (= (and b!100404 (not c!24478)) b!100406))

(declare-fun m!86168 () Bool)

(assert (=> b!100406 m!86168))

(declare-fun m!86170 () Bool)

(assert (=> b!100406 m!86170))

(assert (=> b!100406 m!86168))

(assert (=> b!100406 m!86170))

(declare-fun m!86172 () Bool)

(assert (=> b!100406 m!86172))

(declare-fun m!86174 () Bool)

(assert (=> b!100405 m!86174))

(assert (=> d!23376 d!23586))

(declare-fun d!23588 () Bool)

(declare-fun lt!27739 () Int)

(assert (=> d!23588 (>= lt!27739 0)))

(declare-fun e!55686 () Int)

(assert (=> d!23588 (= lt!27739 e!55686)))

(declare-fun c!24479 () Bool)

(assert (=> d!23588 (= c!24479 (is-Nil!1614 (_2!1088 (get!411 lt!27496))))))

(assert (=> d!23588 (= (size!1431 (_2!1088 (get!411 lt!27496))) lt!27739)))

(declare-fun b!100407 () Bool)

(assert (=> b!100407 (= e!55686 0)))

(declare-fun b!100408 () Bool)

(assert (=> b!100408 (= e!55686 (+ 1 (size!1431 (t!21217 (_2!1088 (get!411 lt!27496))))))))

(assert (= (and d!23588 c!24479) b!100407))

(assert (= (and d!23588 (not c!24479)) b!100408))

(declare-fun m!86176 () Bool)

(assert (=> b!100408 m!86176))

(assert (=> b!99944 d!23588))

(assert (=> b!99944 d!23452))

(declare-fun d!23590 () Bool)

(declare-fun lt!27740 () Int)

(assert (=> d!23590 (>= lt!27740 0)))

(declare-fun e!55687 () Int)

(assert (=> d!23590 (= lt!27740 e!55687)))

(declare-fun c!24480 () Bool)

(assert (=> d!23590 (= c!24480 (is-Nil!1614 input!2238))))

(assert (=> d!23590 (= (size!1431 input!2238) lt!27740)))

(declare-fun b!100409 () Bool)

(assert (=> b!100409 (= e!55687 0)))

(declare-fun b!100410 () Bool)

(assert (=> b!100410 (= e!55687 (+ 1 (size!1431 (t!21217 input!2238))))))

(assert (= (and d!23590 c!24480) b!100409))

(assert (= (and d!23590 (not c!24480)) b!100410))

(declare-fun m!86178 () Bool)

(assert (=> b!100410 m!86178))

(assert (=> b!99944 d!23590))

(declare-fun b!100411 () Bool)

(declare-fun e!55688 () List!1620)

(assert (=> b!100411 (= e!55688 lt!27391)))

(declare-fun d!23592 () Bool)

(declare-fun e!55689 () Bool)

(assert (=> d!23592 e!55689))

(declare-fun res!48782 () Bool)

(assert (=> d!23592 (=> (not res!48782) (not e!55689))))

(declare-fun lt!27741 () List!1620)

(assert (=> d!23592 (= res!48782 (= (content!125 lt!27741) (set.union (content!125 (t!21217 (++!247 lt!27380 lt!27382))) (content!125 lt!27391))))))

(assert (=> d!23592 (= lt!27741 e!55688)))

(declare-fun c!24481 () Bool)

(assert (=> d!23592 (= c!24481 (is-Nil!1614 (t!21217 (++!247 lt!27380 lt!27382))))))

(assert (=> d!23592 (= (++!247 (t!21217 (++!247 lt!27380 lt!27382)) lt!27391) lt!27741)))

(declare-fun b!100414 () Bool)

(assert (=> b!100414 (= e!55689 (or (not (= lt!27391 Nil!1614)) (= lt!27741 (t!21217 (++!247 lt!27380 lt!27382)))))))

(declare-fun b!100412 () Bool)

(assert (=> b!100412 (= e!55688 (Cons!1614 (h!7011 (t!21217 (++!247 lt!27380 lt!27382))) (++!247 (t!21217 (t!21217 (++!247 lt!27380 lt!27382))) lt!27391)))))

(declare-fun b!100413 () Bool)

(declare-fun res!48781 () Bool)

(assert (=> b!100413 (=> (not res!48781) (not e!55689))))

(assert (=> b!100413 (= res!48781 (= (size!1431 lt!27741) (+ (size!1431 (t!21217 (++!247 lt!27380 lt!27382))) (size!1431 lt!27391))))))

(assert (= (and d!23592 c!24481) b!100411))

(assert (= (and d!23592 (not c!24481)) b!100412))

(assert (= (and d!23592 res!48782) b!100413))

(assert (= (and b!100413 res!48781) b!100414))

(declare-fun m!86180 () Bool)

(assert (=> d!23592 m!86180))

(declare-fun m!86182 () Bool)

(assert (=> d!23592 m!86182))

(assert (=> d!23592 m!85194))

(declare-fun m!86184 () Bool)

(assert (=> b!100412 m!86184))

(declare-fun m!86186 () Bool)

(assert (=> b!100413 m!86186))

(declare-fun m!86188 () Bool)

(assert (=> b!100413 m!86188))

(assert (=> b!100413 m!85202))

(assert (=> b!99858 d!23592))

(declare-fun d!23594 () Bool)

(assert (=> d!23594 (= (list!652 (_2!1087 lt!27461)) (list!656 (c!24344 (_2!1087 lt!27461))))))

(declare-fun bs!9836 () Bool)

(assert (= bs!9836 d!23594))

(declare-fun m!86190 () Bool)

(assert (=> bs!9836 m!86190))

(assert (=> b!99901 d!23594))

(declare-fun b!100425 () Bool)

(declare-fun e!55697 () Bool)

(declare-fun e!55696 () Bool)

(assert (=> b!100425 (= e!55697 e!55696)))

(declare-fun res!48785 () Bool)

(declare-fun lt!27749 () tuple2!1764)

(assert (=> b!100425 (= res!48785 (< (size!1431 (_2!1089 lt!27749)) (size!1431 (list!652 (seqFromList!198 input!2238)))))))

(assert (=> b!100425 (=> (not res!48785) (not e!55696))))

(declare-fun b!100426 () Bool)

(declare-fun e!55698 () tuple2!1764)

(declare-fun lt!27748 () Option!179)

(declare-fun lt!27750 () tuple2!1764)

(assert (=> b!100426 (= e!55698 (tuple2!1765 (Cons!1616 (_1!1088 (v!12967 lt!27748)) (_1!1089 lt!27750)) (_2!1089 lt!27750)))))

(assert (=> b!100426 (= lt!27750 (lexList!72 thiss!19403 rules!2471 (_2!1088 (v!12967 lt!27748))))))

(declare-fun b!100427 () Bool)

(assert (=> b!100427 (= e!55698 (tuple2!1765 Nil!1616 (list!652 (seqFromList!198 input!2238))))))

(declare-fun b!100428 () Bool)

(assert (=> b!100428 (= e!55697 (= (_2!1089 lt!27749) (list!652 (seqFromList!198 input!2238))))))

(declare-fun d!23596 () Bool)

(assert (=> d!23596 e!55697))

(declare-fun c!24487 () Bool)

(assert (=> d!23596 (= c!24487 (> (size!1438 (_1!1089 lt!27749)) 0))))

(assert (=> d!23596 (= lt!27749 e!55698)))

(declare-fun c!24486 () Bool)

(assert (=> d!23596 (= c!24486 (is-Some!178 lt!27748))))

(assert (=> d!23596 (= lt!27748 (maxPrefix!84 thiss!19403 rules!2471 (list!652 (seqFromList!198 input!2238))))))

(assert (=> d!23596 (= (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 input!2238))) lt!27749)))

(declare-fun b!100429 () Bool)

(declare-fun isEmpty!724 (List!1622) Bool)

(assert (=> b!100429 (= e!55696 (not (isEmpty!724 (_1!1089 lt!27749))))))

(assert (= (and d!23596 c!24486) b!100426))

(assert (= (and d!23596 (not c!24486)) b!100427))

(assert (= (and d!23596 c!24487) b!100425))

(assert (= (and d!23596 (not c!24487)) b!100428))

(assert (= (and b!100425 res!48785) b!100429))

(declare-fun m!86192 () Bool)

(assert (=> b!100425 m!86192))

(assert (=> b!100425 m!85288))

(assert (=> b!100425 m!85736))

(declare-fun m!86194 () Bool)

(assert (=> b!100426 m!86194))

(declare-fun m!86196 () Bool)

(assert (=> d!23596 m!86196))

(assert (=> d!23596 m!85288))

(declare-fun m!86198 () Bool)

(assert (=> d!23596 m!86198))

(declare-fun m!86200 () Bool)

(assert (=> b!100429 m!86200))

(assert (=> b!99901 d!23596))

(declare-fun d!23598 () Bool)

(assert (=> d!23598 (= (list!652 (seqFromList!198 input!2238)) (list!656 (c!24344 (seqFromList!198 input!2238))))))

(declare-fun bs!9837 () Bool)

(assert (= bs!9837 d!23598))

(declare-fun m!86202 () Bool)

(assert (=> bs!9837 m!86202))

(assert (=> b!99901 d!23598))

(assert (=> d!23396 d!23364))

(declare-fun d!23600 () Bool)

(assert (=> d!23600 (= (list!652 (_2!1087 lt!27536)) (list!656 (c!24344 (_2!1087 lt!27536))))))

(declare-fun bs!9838 () Bool)

(assert (= bs!9838 d!23600))

(declare-fun m!86204 () Bool)

(assert (=> bs!9838 m!86204))

(assert (=> d!23396 d!23600))

(assert (=> d!23396 d!23420))

(declare-fun d!23602 () Bool)

(assert (=> d!23602 (= (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))) (fromListB!90 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))))))

(declare-fun bs!9839 () Bool)

(assert (= bs!9839 d!23602))

(declare-fun m!86206 () Bool)

(assert (=> bs!9839 m!86206))

(assert (=> d!23396 d!23602))

(assert (=> d!23396 d!23338))

(declare-fun d!23604 () Bool)

(declare-fun lt!27757 () tuple2!1760)

(assert (=> d!23604 (= (tuple2!1765 (list!653 (_1!1087 lt!27757)) (list!652 (_2!1087 lt!27757))) (tuple2!1765 (tail!169 lt!27386) lt!27391))))

(assert (=> d!23604 (= lt!27757 (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!23604 true))

(declare-fun _$54!171 () Unit!1075)

(assert (=> d!23604 (= (choose!1386 thiss!19403 rules!2471 input!2238 lt!27386 lt!27391) _$54!171)))

(declare-fun bs!9842 () Bool)

(assert (= bs!9842 d!23604))

(assert (=> bs!9842 m!85070))

(assert (=> bs!9842 m!85568))

(declare-fun m!86220 () Bool)

(assert (=> bs!9842 m!86220))

(assert (=> bs!9842 m!85068))

(declare-fun m!86222 () Bool)

(assert (=> bs!9842 m!86222))

(assert (=> bs!9842 m!85568))

(assert (=> bs!9842 m!85572))

(assert (=> bs!9842 m!85070))

(assert (=> bs!9842 m!85072))

(assert (=> d!23396 d!23604))

(declare-fun lt!27758 () tuple2!1760)

(declare-fun e!55702 () Bool)

(declare-fun b!100434 () Bool)

(assert (=> b!100434 (= e!55702 (= (list!652 (_2!1087 lt!27758)) (_2!1089 (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!100435 () Bool)

(declare-fun res!48789 () Bool)

(assert (=> b!100435 (=> (not res!48789) (not e!55702))))

(assert (=> b!100435 (= res!48789 (= (list!653 (_1!1087 lt!27758)) (_1!1089 (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))))))))))

(declare-fun b!100436 () Bool)

(declare-fun e!55703 () Bool)

(assert (=> b!100436 (= e!55703 (not (isEmpty!717 (_1!1087 lt!27758))))))

(declare-fun d!23612 () Bool)

(assert (=> d!23612 e!55702))

(declare-fun res!48788 () Bool)

(assert (=> d!23612 (=> (not res!48788) (not e!55702))))

(declare-fun e!55701 () Bool)

(assert (=> d!23612 (= res!48788 e!55701)))

(declare-fun c!24488 () Bool)

(assert (=> d!23612 (= c!24488 (> (size!1432 (_1!1087 lt!27758)) 0))))

(assert (=> d!23612 (= lt!27758 (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))) (BalanceConc!1013 Empty!504) (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))) (BalanceConc!1015 Empty!505)))))

(assert (=> d!23612 (= (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238))))) lt!27758)))

(declare-fun b!100437 () Bool)

(assert (=> b!100437 (= e!55701 e!55703)))

(declare-fun res!48790 () Bool)

(assert (=> b!100437 (= res!48790 (< (size!1433 (_2!1087 lt!27758)) (size!1433 (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238)))))))))

(assert (=> b!100437 (=> (not res!48790) (not e!55703))))

(declare-fun b!100438 () Bool)

(assert (=> b!100438 (= e!55701 (= (_2!1087 lt!27758) (seqFromList!198 (_2!1088 (get!411 (maxPrefix!84 thiss!19403 rules!2471 input!2238))))))))

(assert (= (and d!23612 c!24488) b!100437))

(assert (= (and d!23612 (not c!24488)) b!100438))

(assert (= (and b!100437 res!48790) b!100436))

(assert (= (and d!23612 res!48788) b!100435))

(assert (= (and b!100435 res!48789) b!100434))

(declare-fun m!86224 () Bool)

(assert (=> d!23612 m!86224))

(assert (=> d!23612 m!85568))

(assert (=> d!23612 m!85568))

(declare-fun m!86226 () Bool)

(assert (=> d!23612 m!86226))

(declare-fun m!86228 () Bool)

(assert (=> b!100435 m!86228))

(assert (=> b!100435 m!85568))

(declare-fun m!86230 () Bool)

(assert (=> b!100435 m!86230))

(assert (=> b!100435 m!86230))

(declare-fun m!86232 () Bool)

(assert (=> b!100435 m!86232))

(declare-fun m!86234 () Bool)

(assert (=> b!100437 m!86234))

(assert (=> b!100437 m!85568))

(declare-fun m!86236 () Bool)

(assert (=> b!100437 m!86236))

(declare-fun m!86238 () Bool)

(assert (=> b!100434 m!86238))

(assert (=> b!100434 m!85568))

(assert (=> b!100434 m!86230))

(assert (=> b!100434 m!86230))

(assert (=> b!100434 m!86232))

(declare-fun m!86240 () Bool)

(assert (=> b!100436 m!86240))

(assert (=> d!23396 d!23612))

(declare-fun d!23614 () Bool)

(assert (=> d!23614 (= (list!653 (_1!1087 lt!27536)) (list!657 (c!24346 (_1!1087 lt!27536))))))

(declare-fun bs!9843 () Bool)

(assert (= bs!9843 d!23614))

(declare-fun m!86242 () Bool)

(assert (=> bs!9843 m!86242))

(assert (=> d!23396 d!23614))

(assert (=> d!23396 d!23404))

(declare-fun d!23616 () Bool)

(declare-fun e!55704 () Bool)

(assert (=> d!23616 e!55704))

(declare-fun res!48791 () Bool)

(assert (=> d!23616 (=> (not res!48791) (not e!55704))))

(declare-fun lt!27759 () BalanceConc!1012)

(assert (=> d!23616 (= res!48791 (= (list!652 lt!27759) (_2!1088 lt!27383)))))

(assert (=> d!23616 (= lt!27759 (BalanceConc!1013 (fromList!61 (_2!1088 lt!27383))))))

(assert (=> d!23616 (= (fromListB!90 (_2!1088 lt!27383)) lt!27759)))

(declare-fun b!100439 () Bool)

(assert (=> b!100439 (= e!55704 (isBalanced!130 (fromList!61 (_2!1088 lt!27383))))))

(assert (= (and d!23616 res!48791) b!100439))

(declare-fun m!86244 () Bool)

(assert (=> d!23616 m!86244))

(declare-fun m!86246 () Bool)

(assert (=> d!23616 m!86246))

(assert (=> b!100439 m!86246))

(assert (=> b!100439 m!86246))

(declare-fun m!86248 () Bool)

(assert (=> b!100439 m!86248))

(assert (=> d!23336 d!23616))

(declare-fun d!23618 () Bool)

(declare-fun e!55707 () Bool)

(assert (=> d!23618 e!55707))

(declare-fun res!48794 () Bool)

(assert (=> d!23618 (=> (not res!48794) (not e!55707))))

(declare-fun lt!27762 () BalanceConc!1014)

(assert (=> d!23618 (= res!48794 (= (list!653 lt!27762) (t!21219 lt!27386)))))

(declare-fun fromList!62 (List!1622) Conc!505)

(assert (=> d!23618 (= lt!27762 (BalanceConc!1015 (fromList!62 (t!21219 lt!27386))))))

(assert (=> d!23618 (= (fromListB!91 (t!21219 lt!27386)) lt!27762)))

(declare-fun b!100442 () Bool)

(assert (=> b!100442 (= e!55707 (isBalanced!128 (fromList!62 (t!21219 lt!27386))))))

(assert (= (and d!23618 res!48794) b!100442))

(declare-fun m!86250 () Bool)

(assert (=> d!23618 m!86250))

(declare-fun m!86252 () Bool)

(assert (=> d!23618 m!86252))

(assert (=> b!100442 m!86252))

(assert (=> b!100442 m!86252))

(declare-fun m!86254 () Bool)

(assert (=> b!100442 m!86254))

(assert (=> d!23410 d!23618))

(declare-fun d!23620 () Bool)

(declare-fun lt!27763 () Int)

(assert (=> d!23620 (= lt!27763 (size!1431 (list!652 (_2!1087 lt!27538))))))

(assert (=> d!23620 (= lt!27763 (size!1437 (c!24344 (_2!1087 lt!27538))))))

(assert (=> d!23620 (= (size!1433 (_2!1087 lt!27538)) lt!27763)))

(declare-fun bs!9844 () Bool)

(assert (= bs!9844 d!23620))

(assert (=> bs!9844 m!85596))

(assert (=> bs!9844 m!85596))

(declare-fun m!86256 () Bool)

(assert (=> bs!9844 m!86256))

(declare-fun m!86258 () Bool)

(assert (=> bs!9844 m!86258))

(assert (=> b!100017 d!23620))

(declare-fun d!23622 () Bool)

(declare-fun lt!27764 () Int)

(assert (=> d!23622 (= lt!27764 (size!1431 (list!652 (seqFromList!198 (_2!1088 lt!27383)))))))

(assert (=> d!23622 (= lt!27764 (size!1437 (c!24344 (seqFromList!198 (_2!1088 lt!27383)))))))

(assert (=> d!23622 (= (size!1433 (seqFromList!198 (_2!1088 lt!27383))) lt!27764)))

(declare-fun bs!9845 () Bool)

(assert (= bs!9845 d!23622))

(assert (=> bs!9845 m!85052))

(assert (=> bs!9845 m!85588))

(assert (=> bs!9845 m!85588))

(declare-fun m!86260 () Bool)

(assert (=> bs!9845 m!86260))

(declare-fun m!86262 () Bool)

(assert (=> bs!9845 m!86262))

(assert (=> b!100017 d!23622))

(declare-fun d!23624 () Bool)

(assert (=> d!23624 (= (list!653 lt!27478) (list!657 (c!24346 lt!27478)))))

(declare-fun bs!9846 () Bool)

(assert (= bs!9846 d!23624))

(declare-fun m!86264 () Bool)

(assert (=> bs!9846 m!86264))

(assert (=> b!99921 d!23624))

(assert (=> b!99921 d!23544))

(assert (=> d!23300 d!23296))

(declare-fun d!23626 () Bool)

(assert (=> d!23626 (= (++!247 (++!247 lt!27380 lt!27382) lt!27391) (++!247 lt!27380 (++!247 lt!27382 lt!27391)))))

(assert (=> d!23626 true))

(declare-fun _$52!534 () Unit!1075)

(assert (=> d!23626 (= (choose!1383 lt!27380 lt!27382 lt!27391) _$52!534)))

(declare-fun bs!9847 () Bool)

(assert (= bs!9847 d!23626))

(assert (=> bs!9847 m!85094))

(assert (=> bs!9847 m!85094))

(assert (=> bs!9847 m!85096))

(assert (=> bs!9847 m!85098))

(assert (=> bs!9847 m!85098))

(assert (=> bs!9847 m!85100))

(assert (=> d!23300 d!23626))

(assert (=> d!23300 d!23414))

(assert (=> d!23300 d!23412))

(assert (=> d!23300 d!23304))

(declare-fun bs!9848 () Bool)

(declare-fun d!23628 () Bool)

(assert (= bs!9848 (and d!23628 d!23476)))

(declare-fun lambda!1819 () Int)

(assert (=> bs!9848 (= lambda!1819 lambda!1810)))

(assert (=> d!23628 true))

(declare-fun lt!27767 () Bool)

(assert (=> d!23628 (= lt!27767 (rulesValidInductive!71 thiss!19403 rules!2471))))

(assert (=> d!23628 (= lt!27767 (forall!215 rules!2471 lambda!1819))))

(assert (=> d!23628 (= (rulesValid!94 thiss!19403 rules!2471) lt!27767)))

(declare-fun bs!9849 () Bool)

(assert (= bs!9849 d!23628))

(assert (=> bs!9849 m!85408))

(declare-fun m!86266 () Bool)

(assert (=> bs!9849 m!86266))

(assert (=> d!23420 d!23628))

(declare-fun b!100443 () Bool)

(declare-fun e!55708 () List!1620)

(assert (=> b!100443 (= e!55708 lt!27382)))

(declare-fun d!23630 () Bool)

(declare-fun e!55709 () Bool)

(assert (=> d!23630 e!55709))

(declare-fun res!48796 () Bool)

(assert (=> d!23630 (=> (not res!48796) (not e!55709))))

(declare-fun lt!27768 () List!1620)

(assert (=> d!23630 (= res!48796 (= (content!125 lt!27768) (set.union (content!125 (t!21217 lt!27380)) (content!125 lt!27382))))))

(assert (=> d!23630 (= lt!27768 e!55708)))

(declare-fun c!24490 () Bool)

(assert (=> d!23630 (= c!24490 (is-Nil!1614 (t!21217 lt!27380)))))

(assert (=> d!23630 (= (++!247 (t!21217 lt!27380) lt!27382) lt!27768)))

(declare-fun b!100446 () Bool)

(assert (=> b!100446 (= e!55709 (or (not (= lt!27382 Nil!1614)) (= lt!27768 (t!21217 lt!27380))))))

(declare-fun b!100444 () Bool)

(assert (=> b!100444 (= e!55708 (Cons!1614 (h!7011 (t!21217 lt!27380)) (++!247 (t!21217 (t!21217 lt!27380)) lt!27382)))))

(declare-fun b!100445 () Bool)

(declare-fun res!48795 () Bool)

(assert (=> b!100445 (=> (not res!48795) (not e!55709))))

(assert (=> b!100445 (= res!48795 (= (size!1431 lt!27768) (+ (size!1431 (t!21217 lt!27380)) (size!1431 lt!27382))))))

(assert (= (and d!23630 c!24490) b!100443))

(assert (= (and d!23630 (not c!24490)) b!100444))

(assert (= (and d!23630 res!48796) b!100445))

(assert (= (and b!100445 res!48795) b!100446))

(declare-fun m!86268 () Bool)

(assert (=> d!23630 m!86268))

(assert (=> d!23630 m!85724))

(assert (=> d!23630 m!85226))

(declare-fun m!86270 () Bool)

(assert (=> b!100444 m!86270))

(declare-fun m!86272 () Bool)

(assert (=> b!100445 m!86272))

(assert (=> b!100445 m!85730))

(assert (=> b!100445 m!85234))

(assert (=> b!99866 d!23630))

(declare-fun d!23632 () Bool)

(assert (=> d!23632 (= (list!653 (_1!1087 lt!27538)) (list!657 (c!24346 (_1!1087 lt!27538))))))

(declare-fun bs!9850 () Bool)

(assert (= bs!9850 d!23632))

(declare-fun m!86274 () Bool)

(assert (=> bs!9850 m!86274))

(assert (=> b!100015 d!23632))

(declare-fun b!100447 () Bool)

(declare-fun e!55711 () Bool)

(declare-fun e!55710 () Bool)

(assert (=> b!100447 (= e!55711 e!55710)))

(declare-fun res!48797 () Bool)

(declare-fun lt!27770 () tuple2!1764)

(assert (=> b!100447 (= res!48797 (< (size!1431 (_2!1089 lt!27770)) (size!1431 (list!652 (seqFromList!198 (_2!1088 lt!27383))))))))

(assert (=> b!100447 (=> (not res!48797) (not e!55710))))

(declare-fun b!100448 () Bool)

(declare-fun e!55712 () tuple2!1764)

(declare-fun lt!27769 () Option!179)

(declare-fun lt!27771 () tuple2!1764)

(assert (=> b!100448 (= e!55712 (tuple2!1765 (Cons!1616 (_1!1088 (v!12967 lt!27769)) (_1!1089 lt!27771)) (_2!1089 lt!27771)))))

(assert (=> b!100448 (= lt!27771 (lexList!72 thiss!19403 rules!2471 (_2!1088 (v!12967 lt!27769))))))

(declare-fun b!100449 () Bool)

(assert (=> b!100449 (= e!55712 (tuple2!1765 Nil!1616 (list!652 (seqFromList!198 (_2!1088 lt!27383)))))))

(declare-fun b!100450 () Bool)

(assert (=> b!100450 (= e!55711 (= (_2!1089 lt!27770) (list!652 (seqFromList!198 (_2!1088 lt!27383)))))))

(declare-fun d!23634 () Bool)

(assert (=> d!23634 e!55711))

(declare-fun c!24492 () Bool)

(assert (=> d!23634 (= c!24492 (> (size!1438 (_1!1089 lt!27770)) 0))))

(assert (=> d!23634 (= lt!27770 e!55712)))

(declare-fun c!24491 () Bool)

(assert (=> d!23634 (= c!24491 (is-Some!178 lt!27769))))

(assert (=> d!23634 (= lt!27769 (maxPrefix!84 thiss!19403 rules!2471 (list!652 (seqFromList!198 (_2!1088 lt!27383)))))))

(assert (=> d!23634 (= (lexList!72 thiss!19403 rules!2471 (list!652 (seqFromList!198 (_2!1088 lt!27383)))) lt!27770)))

(declare-fun b!100451 () Bool)

(assert (=> b!100451 (= e!55710 (not (isEmpty!724 (_1!1089 lt!27770))))))

(assert (= (and d!23634 c!24491) b!100448))

(assert (= (and d!23634 (not c!24491)) b!100449))

(assert (= (and d!23634 c!24492) b!100447))

(assert (= (and d!23634 (not c!24492)) b!100450))

(assert (= (and b!100447 res!48797) b!100451))

(declare-fun m!86276 () Bool)

(assert (=> b!100447 m!86276))

(assert (=> b!100447 m!85588))

(assert (=> b!100447 m!86260))

(declare-fun m!86278 () Bool)

(assert (=> b!100448 m!86278))

(declare-fun m!86280 () Bool)

(assert (=> d!23634 m!86280))

(assert (=> d!23634 m!85588))

(declare-fun m!86282 () Bool)

(assert (=> d!23634 m!86282))

(declare-fun m!86284 () Bool)

(assert (=> b!100451 m!86284))

(assert (=> b!100015 d!23634))

(declare-fun d!23636 () Bool)

(assert (=> d!23636 (= (list!652 (seqFromList!198 (_2!1088 lt!27383))) (list!656 (c!24344 (seqFromList!198 (_2!1088 lt!27383)))))))

(declare-fun bs!9851 () Bool)

(assert (= bs!9851 d!23636))

(declare-fun m!86286 () Bool)

(assert (=> bs!9851 m!86286))

(assert (=> b!100015 d!23636))

(assert (=> d!23380 d!23308))

(declare-fun b!100452 () Bool)

(declare-fun e!55713 () List!1620)

(assert (=> b!100452 (= e!55713 (list!652 (_2!1087 lt!27524)))))

(declare-fun d!23638 () Bool)

(declare-fun e!55714 () Bool)

(assert (=> d!23638 e!55714))

(declare-fun res!48799 () Bool)

(assert (=> d!23638 (=> (not res!48799) (not e!55714))))

(declare-fun lt!27772 () List!1620)

(assert (=> d!23638 (= res!48799 (= (content!125 lt!27772) (set.union (content!125 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524)))) (content!125 (list!652 (_2!1087 lt!27524))))))))

(assert (=> d!23638 (= lt!27772 e!55713)))

(declare-fun c!24493 () Bool)

(assert (=> d!23638 (= c!24493 (is-Nil!1614 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524)))))))

(assert (=> d!23638 (= (++!247 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524))) (list!652 (_2!1087 lt!27524))) lt!27772)))

(declare-fun b!100455 () Bool)

(assert (=> b!100455 (= e!55714 (or (not (= (list!652 (_2!1087 lt!27524)) Nil!1614)) (= lt!27772 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524))))))))

(declare-fun b!100453 () Bool)

(assert (=> b!100453 (= e!55713 (Cons!1614 (h!7011 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524)))) (++!247 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524)))) (list!652 (_2!1087 lt!27524)))))))

(declare-fun b!100454 () Bool)

(declare-fun res!48798 () Bool)

(assert (=> b!100454 (=> (not res!48798) (not e!55714))))

(assert (=> b!100454 (= res!48798 (= (size!1431 lt!27772) (+ (size!1431 (list!652 (print!75 thiss!19403 (_1!1087 lt!27524)))) (size!1431 (list!652 (_2!1087 lt!27524))))))))

(assert (= (and d!23638 c!24493) b!100452))

(assert (= (and d!23638 (not c!24493)) b!100453))

(assert (= (and d!23638 res!48799) b!100454))

(assert (= (and b!100454 res!48798) b!100455))

(declare-fun m!86288 () Bool)

(assert (=> d!23638 m!86288))

(assert (=> d!23638 m!85530))

(declare-fun m!86290 () Bool)

(assert (=> d!23638 m!86290))

(assert (=> d!23638 m!85528))

(declare-fun m!86292 () Bool)

(assert (=> d!23638 m!86292))

(assert (=> b!100453 m!85528))

(declare-fun m!86294 () Bool)

(assert (=> b!100453 m!86294))

(declare-fun m!86296 () Bool)

(assert (=> b!100454 m!86296))

(assert (=> b!100454 m!85530))

(declare-fun m!86298 () Bool)

(assert (=> b!100454 m!86298))

(assert (=> b!100454 m!85528))

(declare-fun m!86300 () Bool)

(assert (=> b!100454 m!86300))

(assert (=> d!23380 d!23638))

(declare-fun d!23640 () Bool)

(declare-fun lt!27773 () BalanceConc!1012)

(assert (=> d!23640 (= (list!652 lt!27773) (printList!38 thiss!19403 (list!653 (_1!1087 lt!27524))))))

(assert (=> d!23640 (= lt!27773 (printTailRec!38 thiss!19403 (_1!1087 lt!27524) 0 (BalanceConc!1013 Empty!504)))))

(assert (=> d!23640 (= (print!75 thiss!19403 (_1!1087 lt!27524)) lt!27773)))

(declare-fun bs!9852 () Bool)

(assert (= bs!9852 d!23640))

(declare-fun m!86302 () Bool)

(assert (=> bs!9852 m!86302))

(declare-fun m!86304 () Bool)

(assert (=> bs!9852 m!86304))

(assert (=> bs!9852 m!86304))

(declare-fun m!86306 () Bool)

(assert (=> bs!9852 m!86306))

(declare-fun m!86308 () Bool)

(assert (=> bs!9852 m!86308))

(assert (=> d!23380 d!23640))

(declare-fun d!23642 () Bool)

(assert (=> d!23642 (= (list!652 (print!75 thiss!19403 (_1!1087 lt!27524))) (list!656 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27524)))))))

(declare-fun bs!9853 () Bool)

(assert (= bs!9853 d!23642))

(declare-fun m!86310 () Bool)

(assert (=> bs!9853 m!86310))

(assert (=> d!23380 d!23642))

(declare-fun d!23644 () Bool)

(assert (=> d!23644 (= (list!652 (_2!1087 lt!27524)) (list!656 (c!24344 (_2!1087 lt!27524))))))

(declare-fun bs!9854 () Bool)

(assert (= bs!9854 d!23644))

(declare-fun m!86312 () Bool)

(assert (=> bs!9854 m!86312))

(assert (=> d!23380 d!23644))

(assert (=> d!23380 d!23408))

(assert (=> d!23380 d!23336))

(declare-fun d!23646 () Bool)

(declare-fun lt!27885 () tuple2!1760)

(assert (=> d!23646 (= (++!247 (list!652 (print!75 thiss!19403 (_1!1087 lt!27885))) (list!652 (_2!1087 lt!27885))) (_2!1088 lt!27383))))

(assert (=> d!23646 (= lt!27885 (lex!150 thiss!19403 rules!2471 (seqFromList!198 (_2!1088 lt!27383))))))

(assert (=> d!23646 true))

(declare-fun _$31!127 () Unit!1075)

(assert (=> d!23646 (= (choose!1385 thiss!19403 rules!2471 (_2!1088 lt!27383)) _$31!127)))

(declare-fun bs!9855 () Bool)

(assert (= bs!9855 d!23646))

(assert (=> bs!9855 m!85052))

(declare-fun m!86418 () Bool)

(assert (=> bs!9855 m!86418))

(declare-fun m!86420 () Bool)

(assert (=> bs!9855 m!86420))

(declare-fun m!86422 () Bool)

(assert (=> bs!9855 m!86422))

(assert (=> bs!9855 m!86420))

(assert (=> bs!9855 m!86422))

(assert (=> bs!9855 m!86418))

(declare-fun m!86424 () Bool)

(assert (=> bs!9855 m!86424))

(assert (=> bs!9855 m!85052))

(assert (=> bs!9855 m!85054))

(assert (=> d!23380 d!23646))

(declare-fun d!23658 () Bool)

(declare-fun c!24510 () Bool)

(assert (=> d!23658 (= c!24510 (is-Nil!1614 lt!27539))))

(declare-fun e!55738 () (Set C!1762))

(assert (=> d!23658 (= (content!125 lt!27539) e!55738)))

(declare-fun b!100495 () Bool)

(assert (=> b!100495 (= e!55738 (as set.empty (Set C!1762)))))

(declare-fun b!100496 () Bool)

(assert (=> b!100496 (= e!55738 (set.union (set.insert (h!7011 lt!27539) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27539))))))

(assert (= (and d!23658 c!24510) b!100495))

(assert (= (and d!23658 (not c!24510)) b!100496))

(declare-fun m!86426 () Bool)

(assert (=> b!100496 m!86426))

(declare-fun m!86428 () Bool)

(assert (=> b!100496 m!86428))

(assert (=> d!23412 d!23658))

(declare-fun d!23660 () Bool)

(declare-fun c!24511 () Bool)

(assert (=> d!23660 (= c!24511 (is-Nil!1614 lt!27380))))

(declare-fun e!55741 () (Set C!1762))

(assert (=> d!23660 (= (content!125 lt!27380) e!55741)))

(declare-fun b!100499 () Bool)

(assert (=> b!100499 (= e!55741 (as set.empty (Set C!1762)))))

(declare-fun b!100500 () Bool)

(assert (=> b!100500 (= e!55741 (set.union (set.insert (h!7011 lt!27380) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27380))))))

(assert (= (and d!23660 c!24511) b!100499))

(assert (= (and d!23660 (not c!24511)) b!100500))

(declare-fun m!86436 () Bool)

(assert (=> b!100500 m!86436))

(assert (=> b!100500 m!85724))

(assert (=> d!23412 d!23660))

(declare-fun d!23664 () Bool)

(declare-fun c!24512 () Bool)

(assert (=> d!23664 (= c!24512 (is-Nil!1614 (++!247 lt!27382 lt!27391)))))

(declare-fun e!55742 () (Set C!1762))

(assert (=> d!23664 (= (content!125 (++!247 lt!27382 lt!27391)) e!55742)))

(declare-fun b!100501 () Bool)

(assert (=> b!100501 (= e!55742 (as set.empty (Set C!1762)))))

(declare-fun b!100502 () Bool)

(assert (=> b!100502 (= e!55742 (set.union (set.insert (h!7011 (++!247 lt!27382 lt!27391)) (as set.empty (Set C!1762))) (content!125 (t!21217 (++!247 lt!27382 lt!27391)))))))

(assert (= (and d!23664 c!24512) b!100501))

(assert (= (and d!23664 (not c!24512)) b!100502))

(declare-fun m!86438 () Bool)

(assert (=> b!100502 m!86438))

(declare-fun m!86440 () Bool)

(assert (=> b!100502 m!86440))

(assert (=> d!23412 d!23664))

(declare-fun b!100503 () Bool)

(declare-fun res!48815 () Bool)

(declare-fun e!55745 () Bool)

(assert (=> b!100503 (=> (not res!48815) (not e!55745))))

(declare-fun lt!27891 () Option!179)

(assert (=> b!100503 (= res!48815 (< (size!1431 (_2!1088 (get!411 lt!27891))) (size!1431 input!2238)))))

(declare-fun b!100504 () Bool)

(declare-fun res!48811 () Bool)

(assert (=> b!100504 (=> (not res!48811) (not e!55745))))

(assert (=> b!100504 (= res!48811 (= (++!247 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27891)))) (_2!1088 (get!411 lt!27891))) input!2238))))

(declare-fun d!23668 () Bool)

(declare-fun e!55743 () Bool)

(assert (=> d!23668 e!55743))

(declare-fun res!48809 () Bool)

(assert (=> d!23668 (=> res!48809 e!55743)))

(assert (=> d!23668 (= res!48809 (isEmpty!718 lt!27891))))

(declare-fun e!55744 () Option!179)

(assert (=> d!23668 (= lt!27891 e!55744)))

(declare-fun c!24513 () Bool)

(assert (=> d!23668 (= c!24513 (and (is-Cons!1617 (t!21220 rules!2471)) (is-Nil!1617 (t!21220 (t!21220 rules!2471)))))))

(declare-fun lt!27889 () Unit!1075)

(declare-fun lt!27890 () Unit!1075)

(assert (=> d!23668 (= lt!27889 lt!27890)))

(assert (=> d!23668 (isPrefix!42 input!2238 input!2238)))

(assert (=> d!23668 (= lt!27890 (lemmaIsPrefixRefl!42 input!2238 input!2238))))

(assert (=> d!23668 (rulesValidInductive!71 thiss!19403 (t!21220 rules!2471))))

(assert (=> d!23668 (= (maxPrefix!84 thiss!19403 (t!21220 rules!2471) input!2238) lt!27891)))

(declare-fun call!4410 () Option!179)

(declare-fun bm!4405 () Bool)

(assert (=> bm!4405 (= call!4410 (maxPrefixOneRule!40 thiss!19403 (h!7014 (t!21220 rules!2471)) input!2238))))

(declare-fun b!100505 () Bool)

(declare-fun res!48812 () Bool)

(assert (=> b!100505 (=> (not res!48812) (not e!55745))))

(assert (=> b!100505 (= res!48812 (= (value!12927 (_1!1088 (get!411 lt!27891))) (apply!260 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27891)))) (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27891)))))))))

(declare-fun b!100506 () Bool)

(assert (=> b!100506 (= e!55744 call!4410)))

(declare-fun b!100507 () Bool)

(declare-fun res!48813 () Bool)

(assert (=> b!100507 (=> (not res!48813) (not e!55745))))

(assert (=> b!100507 (= res!48813 (= (list!652 (charsOf!83 (_1!1088 (get!411 lt!27891)))) (originalCharacters!401 (_1!1088 (get!411 lt!27891)))))))

(declare-fun b!100508 () Bool)

(declare-fun lt!27888 () Option!179)

(declare-fun lt!27887 () Option!179)

(assert (=> b!100508 (= e!55744 (ite (and (is-None!178 lt!27888) (is-None!178 lt!27887)) None!178 (ite (is-None!178 lt!27887) lt!27888 (ite (is-None!178 lt!27888) lt!27887 (ite (>= (size!1429 (_1!1088 (v!12967 lt!27888))) (size!1429 (_1!1088 (v!12967 lt!27887)))) lt!27888 lt!27887)))))))

(assert (=> b!100508 (= lt!27888 call!4410)))

(assert (=> b!100508 (= lt!27887 (maxPrefix!84 thiss!19403 (t!21220 (t!21220 rules!2471)) input!2238))))

(declare-fun b!100509 () Bool)

(declare-fun res!48810 () Bool)

(assert (=> b!100509 (=> (not res!48810) (not e!55745))))

(assert (=> b!100509 (= res!48810 (matchR!44 (regex!352 (rule!857 (_1!1088 (get!411 lt!27891)))) (list!652 (charsOf!83 (_1!1088 (get!411 lt!27891))))))))

(declare-fun b!100510 () Bool)

(assert (=> b!100510 (= e!55745 (contains!260 (t!21220 rules!2471) (rule!857 (_1!1088 (get!411 lt!27891)))))))

(declare-fun b!100511 () Bool)

(assert (=> b!100511 (= e!55743 e!55745)))

(declare-fun res!48814 () Bool)

(assert (=> b!100511 (=> (not res!48814) (not e!55745))))

(assert (=> b!100511 (= res!48814 (isDefined!55 lt!27891))))

(assert (= (and d!23668 c!24513) b!100506))

(assert (= (and d!23668 (not c!24513)) b!100508))

(assert (= (or b!100506 b!100508) bm!4405))

(assert (= (and d!23668 (not res!48809)) b!100511))

(assert (= (and b!100511 res!48814) b!100507))

(assert (= (and b!100507 res!48813) b!100503))

(assert (= (and b!100503 res!48815) b!100504))

(assert (= (and b!100504 res!48811) b!100505))

(assert (= (and b!100505 res!48812) b!100509))

(assert (= (and b!100509 res!48810) b!100510))

(declare-fun m!86442 () Bool)

(assert (=> b!100509 m!86442))

(declare-fun m!86444 () Bool)

(assert (=> b!100509 m!86444))

(assert (=> b!100509 m!86444))

(declare-fun m!86446 () Bool)

(assert (=> b!100509 m!86446))

(assert (=> b!100509 m!86446))

(declare-fun m!86448 () Bool)

(assert (=> b!100509 m!86448))

(declare-fun m!86450 () Bool)

(assert (=> bm!4405 m!86450))

(declare-fun m!86452 () Bool)

(assert (=> d!23668 m!86452))

(assert (=> d!23668 m!85404))

(assert (=> d!23668 m!85406))

(assert (=> d!23668 m!85772))

(assert (=> b!100510 m!86442))

(declare-fun m!86454 () Bool)

(assert (=> b!100510 m!86454))

(assert (=> b!100503 m!86442))

(declare-fun m!86456 () Bool)

(assert (=> b!100503 m!86456))

(assert (=> b!100503 m!85414))

(assert (=> b!100505 m!86442))

(declare-fun m!86458 () Bool)

(assert (=> b!100505 m!86458))

(assert (=> b!100505 m!86458))

(declare-fun m!86462 () Bool)

(assert (=> b!100505 m!86462))

(assert (=> b!100507 m!86442))

(assert (=> b!100507 m!86444))

(assert (=> b!100507 m!86444))

(assert (=> b!100507 m!86446))

(declare-fun m!86466 () Bool)

(assert (=> b!100511 m!86466))

(declare-fun m!86468 () Bool)

(assert (=> b!100508 m!86468))

(assert (=> b!100504 m!86442))

(assert (=> b!100504 m!86444))

(assert (=> b!100504 m!86444))

(assert (=> b!100504 m!86446))

(assert (=> b!100504 m!86446))

(declare-fun m!86470 () Bool)

(assert (=> b!100504 m!86470))

(assert (=> b!99949 d!23668))

(declare-fun d!23672 () Bool)

(declare-fun lt!27892 () Int)

(assert (=> d!23672 (>= lt!27892 0)))

(declare-fun e!55752 () Int)

(assert (=> d!23672 (= lt!27892 e!55752)))

(declare-fun c!24514 () Bool)

(assert (=> d!23672 (= c!24514 (is-Nil!1614 lt!27444))))

(assert (=> d!23672 (= (size!1431 lt!27444) lt!27892)))

(declare-fun b!100518 () Bool)

(assert (=> b!100518 (= e!55752 0)))

(declare-fun b!100519 () Bool)

(assert (=> b!100519 (= e!55752 (+ 1 (size!1431 (t!21217 lt!27444))))))

(assert (= (and d!23672 c!24514) b!100518))

(assert (= (and d!23672 (not c!24514)) b!100519))

(declare-fun m!86472 () Bool)

(assert (=> b!100519 m!86472))

(assert (=> b!99863 d!23672))

(declare-fun d!23676 () Bool)

(declare-fun lt!27893 () Int)

(assert (=> d!23676 (>= lt!27893 0)))

(declare-fun e!55753 () Int)

(assert (=> d!23676 (= lt!27893 e!55753)))

(declare-fun c!24515 () Bool)

(assert (=> d!23676 (= c!24515 (is-Nil!1614 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))))))

(assert (=> d!23676 (= (size!1431 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) lt!27893)))

(declare-fun b!100520 () Bool)

(assert (=> b!100520 (= e!55753 0)))

(declare-fun b!100521 () Bool)

(assert (=> b!100521 (= e!55753 (+ 1 (size!1431 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))))))))

(assert (= (and d!23676 c!24515) b!100520))

(assert (= (and d!23676 (not c!24515)) b!100521))

(assert (=> b!100521 m!85720))

(assert (=> b!99863 d!23676))

(declare-fun d!23678 () Bool)

(declare-fun lt!27894 () Int)

(assert (=> d!23678 (>= lt!27894 0)))

(declare-fun e!55754 () Int)

(assert (=> d!23678 (= lt!27894 e!55754)))

(declare-fun c!24516 () Bool)

(assert (=> d!23678 (= c!24516 (is-Nil!1614 lt!27391))))

(assert (=> d!23678 (= (size!1431 lt!27391) lt!27894)))

(declare-fun b!100522 () Bool)

(assert (=> b!100522 (= e!55754 0)))

(declare-fun b!100523 () Bool)

(assert (=> b!100523 (= e!55754 (+ 1 (size!1431 (t!21217 lt!27391))))))

(assert (= (and d!23678 c!24516) b!100522))

(assert (= (and d!23678 (not c!24516)) b!100523))

(declare-fun m!86474 () Bool)

(assert (=> b!100523 m!86474))

(assert (=> b!99863 d!23678))

(declare-fun d!23680 () Bool)

(declare-fun lt!27895 () Int)

(assert (=> d!23680 (>= lt!27895 0)))

(declare-fun e!55755 () Int)

(assert (=> d!23680 (= lt!27895 e!55755)))

(declare-fun c!24517 () Bool)

(assert (=> d!23680 (= c!24517 (is-Nil!1614 lt!27498))))

(assert (=> d!23680 (= (size!1431 lt!27498) lt!27895)))

(declare-fun b!100524 () Bool)

(assert (=> b!100524 (= e!55755 0)))

(declare-fun b!100525 () Bool)

(assert (=> b!100525 (= e!55755 (+ 1 (size!1431 (t!21217 lt!27498))))))

(assert (= (and d!23680 c!24517) b!100524))

(assert (= (and d!23680 (not c!24517)) b!100525))

(declare-fun m!86476 () Bool)

(assert (=> b!100525 m!86476))

(assert (=> b!99959 d!23680))

(assert (=> b!99959 d!23574))

(declare-fun d!23682 () Bool)

(declare-fun lt!27896 () Int)

(assert (=> d!23682 (>= lt!27896 0)))

(declare-fun e!55756 () Int)

(assert (=> d!23682 (= lt!27896 e!55756)))

(declare-fun c!24518 () Bool)

(assert (=> d!23682 (= c!24518 (is-Nil!1614 (_2!1088 lt!27383)))))

(assert (=> d!23682 (= (size!1431 (_2!1088 lt!27383)) lt!27896)))

(declare-fun b!100526 () Bool)

(assert (=> b!100526 (= e!55756 0)))

(declare-fun b!100527 () Bool)

(assert (=> b!100527 (= e!55756 (+ 1 (size!1431 (t!21217 (_2!1088 lt!27383)))))))

(assert (= (and d!23682 c!24518) b!100526))

(assert (= (and d!23682 (not c!24518)) b!100527))

(declare-fun m!86478 () Bool)

(assert (=> b!100527 m!86478))

(assert (=> b!99959 d!23682))

(declare-fun b!100531 () Bool)

(declare-fun e!55758 () List!1620)

(assert (=> b!100531 (= e!55758 (++!247 (list!656 (left!1233 (c!24344 (print!75 thiss!19403 lt!27377)))) (list!656 (right!1563 (c!24344 (print!75 thiss!19403 lt!27377))))))))

(declare-fun b!100529 () Bool)

(declare-fun e!55757 () List!1620)

(assert (=> b!100529 (= e!55757 e!55758)))

(declare-fun c!24520 () Bool)

(assert (=> b!100529 (= c!24520 (is-Leaf!816 (c!24344 (print!75 thiss!19403 lt!27377))))))

(declare-fun b!100528 () Bool)

(assert (=> b!100528 (= e!55757 Nil!1614)))

(declare-fun b!100530 () Bool)

(assert (=> b!100530 (= e!55758 (list!661 (xs!3091 (c!24344 (print!75 thiss!19403 lt!27377)))))))

(declare-fun d!23684 () Bool)

(declare-fun c!24519 () Bool)

(assert (=> d!23684 (= c!24519 (is-Empty!504 (c!24344 (print!75 thiss!19403 lt!27377))))))

(assert (=> d!23684 (= (list!656 (c!24344 (print!75 thiss!19403 lt!27377))) e!55757)))

(assert (= (and d!23684 c!24519) b!100528))

(assert (= (and d!23684 (not c!24519)) b!100529))

(assert (= (and b!100529 c!24520) b!100530))

(assert (= (and b!100529 (not c!24520)) b!100531))

(declare-fun m!86480 () Bool)

(assert (=> b!100531 m!86480))

(declare-fun m!86482 () Bool)

(assert (=> b!100531 m!86482))

(assert (=> b!100531 m!86480))

(assert (=> b!100531 m!86482))

(declare-fun m!86484 () Bool)

(assert (=> b!100531 m!86484))

(declare-fun m!86486 () Bool)

(assert (=> b!100530 m!86486))

(assert (=> d!23416 d!23684))

(declare-fun b!100568 () Bool)

(declare-fun e!55778 () Option!179)

(declare-datatypes ((tuple2!1776 0))(
  ( (tuple2!1777 (_1!1095 List!1620) (_2!1095 List!1620)) )
))
(declare-fun lt!27923 () tuple2!1776)

(assert (=> b!100568 (= e!55778 (Some!178 (tuple2!1763 (Token!461 (apply!260 (transformation!352 (h!7014 rules!2471)) (seqFromList!198 (_1!1095 lt!27923))) (h!7014 rules!2471) (size!1433 (seqFromList!198 (_1!1095 lt!27923))) (_1!1095 lt!27923)) (_2!1095 lt!27923))))))

(declare-fun lt!27924 () Unit!1075)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!29 (Regex!420 List!1620) Unit!1075)

(assert (=> b!100568 (= lt!27924 (longestMatchIsAcceptedByMatchOrIsEmpty!29 (regex!352 (h!7014 rules!2471)) input!2238))))

(declare-fun res!48851 () Bool)

(declare-fun findLongestMatchInner!28 (Regex!420 List!1620 Int List!1620 List!1620 Int) tuple2!1776)

(assert (=> b!100568 (= res!48851 (isEmpty!715 (_1!1095 (findLongestMatchInner!28 (regex!352 (h!7014 rules!2471)) Nil!1614 (size!1431 Nil!1614) input!2238 input!2238 (size!1431 input!2238)))))))

(declare-fun e!55776 () Bool)

(assert (=> b!100568 (=> res!48851 e!55776)))

(assert (=> b!100568 e!55776))

(declare-fun lt!27921 () Unit!1075)

(assert (=> b!100568 (= lt!27921 lt!27924)))

(declare-fun lt!27920 () Unit!1075)

(declare-fun lemmaSemiInverse!27 (TokenValueInjection!508 BalanceConc!1012) Unit!1075)

(assert (=> b!100568 (= lt!27920 (lemmaSemiInverse!27 (transformation!352 (h!7014 rules!2471)) (seqFromList!198 (_1!1095 lt!27923))))))

(declare-fun b!100569 () Bool)

(declare-fun res!48850 () Bool)

(declare-fun e!55775 () Bool)

(assert (=> b!100569 (=> (not res!48850) (not e!55775))))

(declare-fun lt!27922 () Option!179)

(assert (=> b!100569 (= res!48850 (= (++!247 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27922)))) (_2!1088 (get!411 lt!27922))) input!2238))))

(declare-fun d!23686 () Bool)

(declare-fun e!55777 () Bool)

(assert (=> d!23686 e!55777))

(declare-fun res!48853 () Bool)

(assert (=> d!23686 (=> res!48853 e!55777)))

(assert (=> d!23686 (= res!48853 (isEmpty!718 lt!27922))))

(assert (=> d!23686 (= lt!27922 e!55778)))

(declare-fun c!24525 () Bool)

(assert (=> d!23686 (= c!24525 (isEmpty!715 (_1!1095 lt!27923)))))

(declare-fun findLongestMatch!27 (Regex!420 List!1620) tuple2!1776)

(assert (=> d!23686 (= lt!27923 (findLongestMatch!27 (regex!352 (h!7014 rules!2471)) input!2238))))

(assert (=> d!23686 (ruleValid!43 thiss!19403 (h!7014 rules!2471))))

(assert (=> d!23686 (= (maxPrefixOneRule!40 thiss!19403 (h!7014 rules!2471) input!2238) lt!27922)))

(declare-fun b!100570 () Bool)

(assert (=> b!100570 (= e!55775 (= (size!1429 (_1!1088 (get!411 lt!27922))) (size!1431 (originalCharacters!401 (_1!1088 (get!411 lt!27922))))))))

(declare-fun b!100571 () Bool)

(declare-fun res!48854 () Bool)

(assert (=> b!100571 (=> (not res!48854) (not e!55775))))

(assert (=> b!100571 (= res!48854 (< (size!1431 (_2!1088 (get!411 lt!27922))) (size!1431 input!2238)))))

(declare-fun b!100572 () Bool)

(assert (=> b!100572 (= e!55776 (matchR!44 (regex!352 (h!7014 rules!2471)) (_1!1095 (findLongestMatchInner!28 (regex!352 (h!7014 rules!2471)) Nil!1614 (size!1431 Nil!1614) input!2238 input!2238 (size!1431 input!2238)))))))

(declare-fun b!100573 () Bool)

(assert (=> b!100573 (= e!55778 None!178)))

(declare-fun b!100574 () Bool)

(declare-fun res!48856 () Bool)

(assert (=> b!100574 (=> (not res!48856) (not e!55775))))

(assert (=> b!100574 (= res!48856 (= (rule!857 (_1!1088 (get!411 lt!27922))) (h!7014 rules!2471)))))

(declare-fun b!100575 () Bool)

(declare-fun res!48852 () Bool)

(assert (=> b!100575 (=> (not res!48852) (not e!55775))))

(assert (=> b!100575 (= res!48852 (= (value!12927 (_1!1088 (get!411 lt!27922))) (apply!260 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27922)))) (seqFromList!198 (originalCharacters!401 (_1!1088 (get!411 lt!27922)))))))))

(declare-fun b!100576 () Bool)

(assert (=> b!100576 (= e!55777 e!55775)))

(declare-fun res!48855 () Bool)

(assert (=> b!100576 (=> (not res!48855) (not e!55775))))

(assert (=> b!100576 (= res!48855 (matchR!44 (regex!352 (h!7014 rules!2471)) (list!652 (charsOf!83 (_1!1088 (get!411 lt!27922))))))))

(assert (= (and d!23686 c!24525) b!100573))

(assert (= (and d!23686 (not c!24525)) b!100568))

(assert (= (and b!100568 (not res!48851)) b!100572))

(assert (= (and d!23686 (not res!48853)) b!100576))

(assert (= (and b!100576 res!48855) b!100569))

(assert (= (and b!100569 res!48850) b!100571))

(assert (= (and b!100571 res!48854) b!100574))

(assert (= (and b!100574 res!48856) b!100575))

(assert (= (and b!100575 res!48852) b!100570))

(declare-fun m!86492 () Bool)

(assert (=> b!100575 m!86492))

(declare-fun m!86494 () Bool)

(assert (=> b!100575 m!86494))

(assert (=> b!100575 m!86494))

(declare-fun m!86496 () Bool)

(assert (=> b!100575 m!86496))

(declare-fun m!86498 () Bool)

(assert (=> b!100572 m!86498))

(assert (=> b!100572 m!85414))

(assert (=> b!100572 m!86498))

(assert (=> b!100572 m!85414))

(declare-fun m!86500 () Bool)

(assert (=> b!100572 m!86500))

(declare-fun m!86504 () Bool)

(assert (=> b!100572 m!86504))

(assert (=> b!100571 m!86492))

(declare-fun m!86508 () Bool)

(assert (=> b!100571 m!86508))

(assert (=> b!100571 m!85414))

(declare-fun m!86510 () Bool)

(assert (=> b!100568 m!86510))

(assert (=> b!100568 m!86498))

(assert (=> b!100568 m!86510))

(declare-fun m!86514 () Bool)

(assert (=> b!100568 m!86514))

(assert (=> b!100568 m!86498))

(assert (=> b!100568 m!85414))

(assert (=> b!100568 m!86500))

(assert (=> b!100568 m!85414))

(assert (=> b!100568 m!86510))

(declare-fun m!86518 () Bool)

(assert (=> b!100568 m!86518))

(declare-fun m!86522 () Bool)

(assert (=> b!100568 m!86522))

(assert (=> b!100568 m!86510))

(declare-fun m!86524 () Bool)

(assert (=> b!100568 m!86524))

(declare-fun m!86530 () Bool)

(assert (=> b!100568 m!86530))

(assert (=> b!100576 m!86492))

(declare-fun m!86532 () Bool)

(assert (=> b!100576 m!86532))

(assert (=> b!100576 m!86532))

(declare-fun m!86536 () Bool)

(assert (=> b!100576 m!86536))

(assert (=> b!100576 m!86536))

(declare-fun m!86542 () Bool)

(assert (=> b!100576 m!86542))

(declare-fun m!86546 () Bool)

(assert (=> d!23686 m!86546))

(declare-fun m!86550 () Bool)

(assert (=> d!23686 m!86550))

(declare-fun m!86554 () Bool)

(assert (=> d!23686 m!86554))

(assert (=> d!23686 m!85770))

(assert (=> b!100570 m!86492))

(declare-fun m!86556 () Bool)

(assert (=> b!100570 m!86556))

(assert (=> b!100574 m!86492))

(assert (=> b!100569 m!86492))

(assert (=> b!100569 m!86532))

(assert (=> b!100569 m!86532))

(assert (=> b!100569 m!86536))

(assert (=> b!100569 m!86536))

(declare-fun m!86562 () Bool)

(assert (=> b!100569 m!86562))

(assert (=> bm!4398 d!23686))

(declare-fun b!100589 () Bool)

(declare-fun e!55784 () List!1620)

(assert (=> b!100589 (= e!55784 (++!247 (list!656 (left!1233 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385))))) (list!656 (right!1563 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385)))))))))

(declare-fun b!100587 () Bool)

(declare-fun e!55783 () List!1620)

(assert (=> b!100587 (= e!55783 e!55784)))

(declare-fun c!24528 () Bool)

(assert (=> b!100587 (= c!24528 (is-Leaf!816 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385)))))))

(declare-fun b!100586 () Bool)

(assert (=> b!100586 (= e!55783 Nil!1614)))

(declare-fun b!100588 () Bool)

(assert (=> b!100588 (= e!55784 (list!661 (xs!3091 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385))))))))

(declare-fun d!23690 () Bool)

(declare-fun c!24527 () Bool)

(assert (=> d!23690 (= c!24527 (is-Empty!504 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385)))))))

(assert (=> d!23690 (= (list!656 (c!24344 (print!75 thiss!19403 (_1!1087 lt!27385)))) e!55783)))

(assert (= (and d!23690 c!24527) b!100586))

(assert (= (and d!23690 (not c!24527)) b!100587))

(assert (= (and b!100587 c!24528) b!100588))

(assert (= (and b!100587 (not c!24528)) b!100589))

(declare-fun m!86576 () Bool)

(assert (=> b!100589 m!86576))

(declare-fun m!86578 () Bool)

(assert (=> b!100589 m!86578))

(assert (=> b!100589 m!86576))

(assert (=> b!100589 m!86578))

(declare-fun m!86580 () Bool)

(assert (=> b!100589 m!86580))

(declare-fun m!86582 () Bool)

(assert (=> b!100588 m!86582))

(assert (=> d!23360 d!23690))

(declare-fun d!23694 () Bool)

(declare-fun lt!27937 () Bool)

(assert (=> d!23694 (= lt!27937 (isEmpty!724 (list!653 (_1!1087 lt!27461))))))

(assert (=> d!23694 (= lt!27937 (isEmpty!723 (c!24346 (_1!1087 lt!27461))))))

(assert (=> d!23694 (= (isEmpty!717 (_1!1087 lt!27461)) lt!27937)))

(declare-fun bs!9857 () Bool)

(assert (= bs!9857 d!23694))

(assert (=> bs!9857 m!85286))

(assert (=> bs!9857 m!85286))

(declare-fun m!86592 () Bool)

(assert (=> bs!9857 m!86592))

(declare-fun m!86594 () Bool)

(assert (=> bs!9857 m!86594))

(assert (=> b!99903 d!23694))

(declare-fun d!23698 () Bool)

(declare-fun c!24532 () Bool)

(assert (=> d!23698 (= c!24532 (is-Nil!1614 lt!27443))))

(declare-fun e!55790 () (Set C!1762))

(assert (=> d!23698 (= (content!125 lt!27443) e!55790)))

(declare-fun b!100603 () Bool)

(assert (=> b!100603 (= e!55790 (as set.empty (Set C!1762)))))

(declare-fun b!100604 () Bool)

(assert (=> b!100604 (= e!55790 (set.union (set.insert (h!7011 lt!27443) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27443))))))

(assert (= (and d!23698 c!24532) b!100603))

(assert (= (and d!23698 (not c!24532)) b!100604))

(declare-fun m!86604 () Bool)

(assert (=> b!100604 m!86604))

(declare-fun m!86606 () Bool)

(assert (=> b!100604 m!86606))

(assert (=> d!23296 d!23698))

(declare-fun d!23700 () Bool)

(declare-fun c!24533 () Bool)

(assert (=> d!23700 (= c!24533 (is-Nil!1614 (++!247 lt!27380 lt!27382)))))

(declare-fun e!55791 () (Set C!1762))

(assert (=> d!23700 (= (content!125 (++!247 lt!27380 lt!27382)) e!55791)))

(declare-fun b!100605 () Bool)

(assert (=> b!100605 (= e!55791 (as set.empty (Set C!1762)))))

(declare-fun b!100606 () Bool)

(assert (=> b!100606 (= e!55791 (set.union (set.insert (h!7011 (++!247 lt!27380 lt!27382)) (as set.empty (Set C!1762))) (content!125 (t!21217 (++!247 lt!27380 lt!27382)))))))

(assert (= (and d!23700 c!24533) b!100605))

(assert (= (and d!23700 (not c!24533)) b!100606))

(declare-fun m!86614 () Bool)

(assert (=> b!100606 m!86614))

(assert (=> b!100606 m!86182))

(assert (=> d!23296 d!23700))

(assert (=> d!23296 d!23556))

(declare-fun d!23702 () Bool)

(assert (=> d!23702 true))

(declare-fun order!739 () Int)

(declare-fun lambda!1822 () Int)

(declare-fun dynLambda!485 (Int Int) Int)

(assert (=> d!23702 (< (dynLambda!484 order!737 (toValue!915 (transformation!352 (h!7014 rules!2471)))) (dynLambda!485 order!739 lambda!1822))))

(declare-fun Forall2!54 (Int) Bool)

(assert (=> d!23702 (= (equivClasses!81 (toChars!774 (transformation!352 (h!7014 rules!2471))) (toValue!915 (transformation!352 (h!7014 rules!2471)))) (Forall2!54 lambda!1822))))

(declare-fun bs!9860 () Bool)

(assert (= bs!9860 d!23702))

(declare-fun m!86650 () Bool)

(assert (=> bs!9860 m!86650))

(assert (=> b!99871 d!23702))

(declare-fun d!23712 () Bool)

(assert (=> d!23712 (= (list!652 lt!27464) (list!656 (c!24344 lt!27464)))))

(declare-fun bs!9861 () Bool)

(assert (= bs!9861 d!23712))

(declare-fun m!86652 () Bool)

(assert (=> bs!9861 m!86652))

(assert (=> d!23340 d!23712))

(declare-fun d!23714 () Bool)

(declare-fun c!24535 () Bool)

(assert (=> d!23714 (= c!24535 (is-Nil!1614 lt!27451))))

(declare-fun e!55797 () (Set C!1762))

(assert (=> d!23714 (= (content!125 lt!27451) e!55797)))

(declare-fun b!100616 () Bool)

(assert (=> b!100616 (= e!55797 (as set.empty (Set C!1762)))))

(declare-fun b!100617 () Bool)

(assert (=> b!100617 (= e!55797 (set.union (set.insert (h!7011 lt!27451) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27451))))))

(assert (= (and d!23714 c!24535) b!100616))

(assert (= (and d!23714 (not c!24535)) b!100617))

(declare-fun m!86654 () Bool)

(assert (=> b!100617 m!86654))

(declare-fun m!86656 () Bool)

(assert (=> b!100617 m!86656))

(assert (=> d!23304 d!23714))

(assert (=> d!23304 d!23660))

(assert (=> d!23304 d!23554))

(declare-fun d!23716 () Bool)

(declare-fun lt!27941 () Bool)

(declare-fun content!128 (List!1623) (Set Rule!504))

(assert (=> d!23716 (= lt!27941 (set.member (rule!857 (_1!1088 (get!411 lt!27496))) (content!128 rules!2471)))))

(declare-fun e!55803 () Bool)

(assert (=> d!23716 (= lt!27941 e!55803)))

(declare-fun res!48881 () Bool)

(assert (=> d!23716 (=> (not res!48881) (not e!55803))))

(assert (=> d!23716 (= res!48881 (is-Cons!1617 rules!2471))))

(assert (=> d!23716 (= (contains!260 rules!2471 (rule!857 (_1!1088 (get!411 lt!27496)))) lt!27941)))

(declare-fun b!100622 () Bool)

(declare-fun e!55802 () Bool)

(assert (=> b!100622 (= e!55803 e!55802)))

(declare-fun res!48880 () Bool)

(assert (=> b!100622 (=> res!48880 e!55802)))

(assert (=> b!100622 (= res!48880 (= (h!7014 rules!2471) (rule!857 (_1!1088 (get!411 lt!27496)))))))

(declare-fun b!100623 () Bool)

(assert (=> b!100623 (= e!55802 (contains!260 (t!21220 rules!2471) (rule!857 (_1!1088 (get!411 lt!27496)))))))

(assert (= (and d!23716 res!48881) b!100622))

(assert (= (and b!100622 (not res!48880)) b!100623))

(declare-fun m!86658 () Bool)

(assert (=> d!23716 m!86658))

(declare-fun m!86660 () Bool)

(assert (=> d!23716 m!86660))

(declare-fun m!86662 () Bool)

(assert (=> b!100623 m!86662))

(assert (=> b!99951 d!23716))

(assert (=> b!99951 d!23452))

(declare-fun d!23718 () Bool)

(declare-fun c!24536 () Bool)

(assert (=> d!23718 (= c!24536 (is-Nil!1614 lt!27497))))

(declare-fun e!55804 () (Set C!1762))

(assert (=> d!23718 (= (content!125 lt!27497) e!55804)))

(declare-fun b!100624 () Bool)

(assert (=> b!100624 (= e!55804 (as set.empty (Set C!1762)))))

(declare-fun b!100625 () Bool)

(assert (=> b!100625 (= e!55804 (set.union (set.insert (h!7011 lt!27497) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27497))))))

(assert (= (and d!23718 c!24536) b!100624))

(assert (= (and d!23718 (not c!24536)) b!100625))

(declare-fun m!86664 () Bool)

(assert (=> b!100625 m!86664))

(declare-fun m!86666 () Bool)

(assert (=> b!100625 m!86666))

(assert (=> d!23374 d!23718))

(declare-fun d!23720 () Bool)

(declare-fun c!24537 () Bool)

(assert (=> d!23720 (= c!24537 (is-Nil!1614 lt!27392))))

(declare-fun e!55805 () (Set C!1762))

(assert (=> d!23720 (= (content!125 lt!27392) e!55805)))

(declare-fun b!100626 () Bool)

(assert (=> b!100626 (= e!55805 (as set.empty (Set C!1762)))))

(declare-fun b!100627 () Bool)

(assert (=> b!100627 (= e!55805 (set.union (set.insert (h!7011 lt!27392) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27392))))))

(assert (= (and d!23720 c!24537) b!100626))

(assert (= (and d!23720 (not c!24537)) b!100627))

(declare-fun m!86668 () Bool)

(assert (=> b!100627 m!86668))

(declare-fun m!86670 () Bool)

(assert (=> b!100627 m!86670))

(assert (=> d!23374 d!23720))

(declare-fun d!23722 () Bool)

(declare-fun c!24538 () Bool)

(assert (=> d!23722 (= c!24538 (is-Nil!1614 lt!27389))))

(declare-fun e!55806 () (Set C!1762))

(assert (=> d!23722 (= (content!125 lt!27389) e!55806)))

(declare-fun b!100628 () Bool)

(assert (=> b!100628 (= e!55806 (as set.empty (Set C!1762)))))

(declare-fun b!100629 () Bool)

(assert (=> b!100629 (= e!55806 (set.union (set.insert (h!7011 lt!27389) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27389))))))

(assert (= (and d!23722 c!24538) b!100628))

(assert (= (and d!23722 (not c!24538)) b!100629))

(declare-fun m!86672 () Bool)

(assert (=> b!100629 m!86672))

(declare-fun m!86674 () Bool)

(assert (=> b!100629 m!86674))

(assert (=> d!23374 d!23722))

(declare-fun d!23724 () Bool)

(assert (=> d!23724 (= (list!652 (_2!1087 lt!27538)) (list!656 (c!24344 (_2!1087 lt!27538))))))

(declare-fun bs!9862 () Bool)

(assert (= bs!9862 d!23724))

(declare-fun m!86676 () Bool)

(assert (=> bs!9862 m!86676))

(assert (=> b!100014 d!23724))

(assert (=> b!100014 d!23634))

(assert (=> b!100014 d!23636))

(declare-fun d!23726 () Bool)

(declare-fun c!24539 () Bool)

(assert (=> d!23726 (= c!24539 (is-Nil!1614 lt!27498))))

(declare-fun e!55807 () (Set C!1762))

(assert (=> d!23726 (= (content!125 lt!27498) e!55807)))

(declare-fun b!100630 () Bool)

(assert (=> b!100630 (= e!55807 (as set.empty (Set C!1762)))))

(declare-fun b!100631 () Bool)

(assert (=> b!100631 (= e!55807 (set.union (set.insert (h!7011 lt!27498) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27498))))))

(assert (= (and d!23726 c!24539) b!100630))

(assert (= (and d!23726 (not c!24539)) b!100631))

(declare-fun m!86678 () Bool)

(assert (=> b!100631 m!86678))

(declare-fun m!86680 () Bool)

(assert (=> b!100631 m!86680))

(assert (=> d!23378 d!23726))

(assert (=> d!23378 d!23660))

(declare-fun d!23728 () Bool)

(declare-fun c!24540 () Bool)

(assert (=> d!23728 (= c!24540 (is-Nil!1614 (_2!1088 lt!27383)))))

(declare-fun e!55808 () (Set C!1762))

(assert (=> d!23728 (= (content!125 (_2!1088 lt!27383)) e!55808)))

(declare-fun b!100632 () Bool)

(assert (=> b!100632 (= e!55808 (as set.empty (Set C!1762)))))

(declare-fun b!100633 () Bool)

(assert (=> b!100633 (= e!55808 (set.union (set.insert (h!7011 (_2!1088 lt!27383)) (as set.empty (Set C!1762))) (content!125 (t!21217 (_2!1088 lt!27383)))))))

(assert (= (and d!23728 c!24540) b!100632))

(assert (= (and d!23728 (not c!24540)) b!100633))

(declare-fun m!86682 () Bool)

(assert (=> b!100633 m!86682))

(declare-fun m!86684 () Bool)

(assert (=> b!100633 m!86684))

(assert (=> d!23378 d!23728))

(declare-fun b!100634 () Bool)

(declare-fun e!55809 () List!1620)

(assert (=> b!100634 (= e!55809 lt!27389)))

(declare-fun d!23730 () Bool)

(declare-fun e!55810 () Bool)

(assert (=> d!23730 e!55810))

(declare-fun res!48883 () Bool)

(assert (=> d!23730 (=> (not res!48883) (not e!55810))))

(declare-fun lt!27942 () List!1620)

(assert (=> d!23730 (= res!48883 (= (content!125 lt!27942) (set.union (content!125 (t!21217 lt!27392)) (content!125 lt!27389))))))

(assert (=> d!23730 (= lt!27942 e!55809)))

(declare-fun c!24541 () Bool)

(assert (=> d!23730 (= c!24541 (is-Nil!1614 (t!21217 lt!27392)))))

(assert (=> d!23730 (= (++!247 (t!21217 lt!27392) lt!27389) lt!27942)))

(declare-fun b!100637 () Bool)

(assert (=> b!100637 (= e!55810 (or (not (= lt!27389 Nil!1614)) (= lt!27942 (t!21217 lt!27392))))))

(declare-fun b!100635 () Bool)

(assert (=> b!100635 (= e!55809 (Cons!1614 (h!7011 (t!21217 lt!27392)) (++!247 (t!21217 (t!21217 lt!27392)) lt!27389)))))

(declare-fun b!100636 () Bool)

(declare-fun res!48882 () Bool)

(assert (=> b!100636 (=> (not res!48882) (not e!55810))))

(assert (=> b!100636 (= res!48882 (= (size!1431 lt!27942) (+ (size!1431 (t!21217 lt!27392)) (size!1431 lt!27389))))))

(assert (= (and d!23730 c!24541) b!100634))

(assert (= (and d!23730 (not c!24541)) b!100635))

(assert (= (and d!23730 res!48883) b!100636))

(assert (= (and b!100636 res!48882) b!100637))

(declare-fun m!86686 () Bool)

(assert (=> d!23730 m!86686))

(assert (=> d!23730 m!86670))

(assert (=> d!23730 m!85432))

(declare-fun m!86688 () Bool)

(assert (=> b!100635 m!86688))

(declare-fun m!86690 () Bool)

(assert (=> b!100636 m!86690))

(assert (=> b!100636 m!86112))

(assert (=> b!100636 m!85440))

(assert (=> b!99954 d!23730))

(declare-fun b!100641 () Bool)

(declare-fun e!55812 () List!1620)

(assert (=> b!100641 (= e!55812 (++!247 (list!656 (left!1233 (c!24344 (_2!1087 lt!27388)))) (list!656 (right!1563 (c!24344 (_2!1087 lt!27388))))))))

(declare-fun b!100639 () Bool)

(declare-fun e!55811 () List!1620)

(assert (=> b!100639 (= e!55811 e!55812)))

(declare-fun c!24543 () Bool)

(assert (=> b!100639 (= c!24543 (is-Leaf!816 (c!24344 (_2!1087 lt!27388))))))

(declare-fun b!100638 () Bool)

(assert (=> b!100638 (= e!55811 Nil!1614)))

(declare-fun b!100640 () Bool)

(assert (=> b!100640 (= e!55812 (list!661 (xs!3091 (c!24344 (_2!1087 lt!27388)))))))

(declare-fun d!23732 () Bool)

(declare-fun c!24542 () Bool)

(assert (=> d!23732 (= c!24542 (is-Empty!504 (c!24344 (_2!1087 lt!27388))))))

(assert (=> d!23732 (= (list!656 (c!24344 (_2!1087 lt!27388))) e!55811)))

(assert (= (and d!23732 c!24542) b!100638))

(assert (= (and d!23732 (not c!24542)) b!100639))

(assert (= (and b!100639 c!24543) b!100640))

(assert (= (and b!100639 (not c!24543)) b!100641))

(declare-fun m!86692 () Bool)

(assert (=> b!100641 m!86692))

(declare-fun m!86694 () Bool)

(assert (=> b!100641 m!86694))

(assert (=> b!100641 m!86692))

(assert (=> b!100641 m!86694))

(declare-fun m!86696 () Bool)

(assert (=> b!100641 m!86696))

(declare-fun m!86698 () Bool)

(assert (=> b!100640 m!86698))

(assert (=> d!23334 d!23732))

(declare-fun d!23734 () Bool)

(declare-fun lt!27943 () Int)

(assert (=> d!23734 (>= lt!27943 0)))

(declare-fun e!55813 () Int)

(assert (=> d!23734 (= lt!27943 e!55813)))

(declare-fun c!24544 () Bool)

(assert (=> d!23734 (= c!24544 (is-Nil!1614 lt!27540))))

(assert (=> d!23734 (= (size!1431 lt!27540) lt!27943)))

(declare-fun b!100642 () Bool)

(assert (=> b!100642 (= e!55813 0)))

(declare-fun b!100643 () Bool)

(assert (=> b!100643 (= e!55813 (+ 1 (size!1431 (t!21217 lt!27540))))))

(assert (= (and d!23734 c!24544) b!100642))

(assert (= (and d!23734 (not c!24544)) b!100643))

(declare-fun m!86700 () Bool)

(assert (=> b!100643 m!86700))

(assert (=> b!100025 d!23734))

(declare-fun d!23736 () Bool)

(declare-fun lt!27944 () Int)

(assert (=> d!23736 (>= lt!27944 0)))

(declare-fun e!55814 () Int)

(assert (=> d!23736 (= lt!27944 e!55814)))

(declare-fun c!24545 () Bool)

(assert (=> d!23736 (= c!24545 (is-Nil!1614 lt!27382))))

(assert (=> d!23736 (= (size!1431 lt!27382) lt!27944)))

(declare-fun b!100644 () Bool)

(assert (=> b!100644 (= e!55814 0)))

(declare-fun b!100645 () Bool)

(assert (=> b!100645 (= e!55814 (+ 1 (size!1431 (t!21217 lt!27382))))))

(assert (= (and d!23736 c!24545) b!100644))

(assert (= (and d!23736 (not c!24545)) b!100645))

(assert (=> b!100645 m!86122))

(assert (=> b!100025 d!23736))

(assert (=> b!100025 d!23678))

(declare-fun d!23738 () Bool)

(assert (=> d!23738 (= (isEmpty!715 (list!652 (_2!1087 lt!27388))) (is-Nil!1614 (list!652 (_2!1087 lt!27388))))))

(assert (=> d!23316 d!23738))

(assert (=> d!23316 d!23334))

(declare-fun d!23740 () Bool)

(declare-fun lt!27947 () Bool)

(assert (=> d!23740 (= lt!27947 (isEmpty!715 (list!656 (c!24344 (_2!1087 lt!27388)))))))

(assert (=> d!23740 (= lt!27947 (= (size!1437 (c!24344 (_2!1087 lt!27388))) 0))))

(assert (=> d!23740 (= (isEmpty!716 (c!24344 (_2!1087 lt!27388))) lt!27947)))

(declare-fun bs!9863 () Bool)

(assert (= bs!9863 d!23740))

(assert (=> bs!9863 m!85304))

(assert (=> bs!9863 m!85304))

(declare-fun m!86702 () Bool)

(assert (=> bs!9863 m!86702))

(declare-fun m!86704 () Bool)

(assert (=> bs!9863 m!86704))

(assert (=> d!23316 d!23740))

(declare-fun b!100646 () Bool)

(declare-fun e!55815 () List!1620)

(assert (=> b!100646 (= e!55815 (++!247 lt!27382 lt!27391))))

(declare-fun d!23742 () Bool)

(declare-fun e!55816 () Bool)

(assert (=> d!23742 e!55816))

(declare-fun res!48885 () Bool)

(assert (=> d!23742 (=> (not res!48885) (not e!55816))))

(declare-fun lt!27948 () List!1620)

(assert (=> d!23742 (= res!48885 (= (content!125 lt!27948) (set.union (content!125 (t!21217 lt!27380)) (content!125 (++!247 lt!27382 lt!27391)))))))

(assert (=> d!23742 (= lt!27948 e!55815)))

(declare-fun c!24546 () Bool)

(assert (=> d!23742 (= c!24546 (is-Nil!1614 (t!21217 lt!27380)))))

(assert (=> d!23742 (= (++!247 (t!21217 lt!27380) (++!247 lt!27382 lt!27391)) lt!27948)))

(declare-fun b!100649 () Bool)

(assert (=> b!100649 (= e!55816 (or (not (= (++!247 lt!27382 lt!27391) Nil!1614)) (= lt!27948 (t!21217 lt!27380))))))

(declare-fun b!100647 () Bool)

(assert (=> b!100647 (= e!55815 (Cons!1614 (h!7011 (t!21217 lt!27380)) (++!247 (t!21217 (t!21217 lt!27380)) (++!247 lt!27382 lt!27391))))))

(declare-fun b!100648 () Bool)

(declare-fun res!48884 () Bool)

(assert (=> b!100648 (=> (not res!48884) (not e!55816))))

(assert (=> b!100648 (= res!48884 (= (size!1431 lt!27948) (+ (size!1431 (t!21217 lt!27380)) (size!1431 (++!247 lt!27382 lt!27391)))))))

(assert (= (and d!23742 c!24546) b!100646))

(assert (= (and d!23742 (not c!24546)) b!100647))

(assert (= (and d!23742 res!48885) b!100648))

(assert (= (and b!100648 res!48884) b!100649))

(declare-fun m!86706 () Bool)

(assert (=> d!23742 m!86706))

(assert (=> d!23742 m!85724))

(assert (=> d!23742 m!85098))

(assert (=> d!23742 m!85604))

(assert (=> b!100647 m!85098))

(declare-fun m!86708 () Bool)

(assert (=> b!100647 m!86708))

(declare-fun m!86710 () Bool)

(assert (=> b!100648 m!86710))

(assert (=> b!100648 m!85730))

(assert (=> b!100648 m!85098))

(assert (=> b!100648 m!85610))

(assert (=> b!100020 d!23742))

(declare-fun d!23744 () Bool)

(declare-fun lt!27949 () Int)

(assert (=> d!23744 (= lt!27949 (size!1438 (list!653 (_1!1087 lt!27461))))))

(assert (=> d!23744 (= lt!27949 (size!1439 (c!24346 (_1!1087 lt!27461))))))

(assert (=> d!23744 (= (size!1432 (_1!1087 lt!27461)) lt!27949)))

(declare-fun bs!9864 () Bool)

(assert (= bs!9864 d!23744))

(assert (=> bs!9864 m!85286))

(assert (=> bs!9864 m!85286))

(declare-fun m!86712 () Bool)

(assert (=> bs!9864 m!86712))

(declare-fun m!86714 () Bool)

(assert (=> bs!9864 m!86714))

(assert (=> d!23318 d!23744))

(declare-fun b!100650 () Bool)

(declare-fun e!55817 () tuple2!1760)

(assert (=> b!100650 (= e!55817 (tuple2!1761 (BalanceConc!1015 Empty!505) (seqFromList!198 input!2238)))))

(declare-fun lt!27982 () Option!181)

(declare-fun lt!27966 () tuple2!1760)

(declare-fun b!100651 () Bool)

(assert (=> b!100651 (= lt!27966 (lexRec!49 thiss!19403 rules!2471 (_2!1093 (v!12978 lt!27982))))))

(declare-fun e!55819 () tuple2!1760)

(assert (=> b!100651 (= e!55819 (tuple2!1761 (prepend!124 (_1!1087 lt!27966) (_1!1093 (v!12978 lt!27982))) (_2!1087 lt!27966)))))

(declare-fun lt!27970 () BalanceConc!1012)

(declare-fun lt!27965 () Option!181)

(declare-fun b!100652 () Bool)

(assert (=> b!100652 (= e!55817 (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 input!2238) lt!27970 (_2!1093 (v!12978 lt!27965)) (append!58 (BalanceConc!1015 Empty!505) (_1!1093 (v!12978 lt!27965)))))))

(declare-fun lt!27975 () tuple2!1760)

(assert (=> b!100652 (= lt!27975 (lexRec!49 thiss!19403 rules!2471 (_2!1093 (v!12978 lt!27965))))))

(declare-fun lt!27978 () List!1620)

(assert (=> b!100652 (= lt!27978 (list!652 (BalanceConc!1013 Empty!504)))))

(declare-fun lt!27959 () List!1620)

(assert (=> b!100652 (= lt!27959 (list!652 (charsOf!83 (_1!1093 (v!12978 lt!27965)))))))

(declare-fun lt!27977 () List!1620)

(assert (=> b!100652 (= lt!27977 (list!652 (_2!1093 (v!12978 lt!27965))))))

(declare-fun lt!27955 () Unit!1075)

(assert (=> b!100652 (= lt!27955 (lemmaConcatAssociativity!98 lt!27978 lt!27959 lt!27977))))

(assert (=> b!100652 (= (++!247 (++!247 lt!27978 lt!27959) lt!27977) (++!247 lt!27978 (++!247 lt!27959 lt!27977)))))

(declare-fun lt!27976 () Unit!1075)

(assert (=> b!100652 (= lt!27976 lt!27955)))

(assert (=> b!100652 (= lt!27982 (maxPrefixZipperSequence!47 thiss!19403 rules!2471 (seqFromList!198 input!2238)))))

(declare-fun c!24547 () Bool)

(assert (=> b!100652 (= c!24547 (is-Some!180 lt!27982))))

(assert (=> b!100652 (= (lexRec!49 thiss!19403 rules!2471 (seqFromList!198 input!2238)) e!55819)))

(declare-fun lt!27967 () Unit!1075)

(declare-fun Unit!1084 () Unit!1075)

(assert (=> b!100652 (= lt!27967 Unit!1084)))

(declare-fun lt!27974 () List!1622)

(assert (=> b!100652 (= lt!27974 (list!653 (BalanceConc!1015 Empty!505)))))

(declare-fun lt!27968 () List!1622)

(assert (=> b!100652 (= lt!27968 (Cons!1616 (_1!1093 (v!12978 lt!27965)) Nil!1616))))

(declare-fun lt!27964 () List!1622)

(assert (=> b!100652 (= lt!27964 (list!653 (_1!1087 lt!27975)))))

(declare-fun lt!27963 () Unit!1075)

(assert (=> b!100652 (= lt!27963 (lemmaConcatAssociativity!100 lt!27974 lt!27968 lt!27964))))

(assert (=> b!100652 (= (++!249 (++!249 lt!27974 lt!27968) lt!27964) (++!249 lt!27974 (++!249 lt!27968 lt!27964)))))

(declare-fun lt!27953 () Unit!1075)

(assert (=> b!100652 (= lt!27953 lt!27963)))

(declare-fun lt!27983 () List!1620)

(assert (=> b!100652 (= lt!27983 (++!247 (list!652 (BalanceConc!1013 Empty!504)) (list!652 (charsOf!83 (_1!1093 (v!12978 lt!27965))))))))

(declare-fun lt!27962 () List!1620)

(assert (=> b!100652 (= lt!27962 (list!652 (_2!1093 (v!12978 lt!27965))))))

(declare-fun lt!27981 () List!1622)

(assert (=> b!100652 (= lt!27981 (list!653 (append!58 (BalanceConc!1015 Empty!505) (_1!1093 (v!12978 lt!27965)))))))

(declare-fun lt!27954 () Unit!1075)

(assert (=> b!100652 (= lt!27954 (lemmaLexThenLexPrefix!44 thiss!19403 rules!2471 lt!27983 lt!27962 lt!27981 (list!653 (_1!1087 lt!27975)) (list!652 (_2!1087 lt!27975))))))

(assert (=> b!100652 (= (lexList!72 thiss!19403 rules!2471 lt!27983) (tuple2!1765 lt!27981 Nil!1614))))

(declare-fun lt!27951 () Unit!1075)

(assert (=> b!100652 (= lt!27951 lt!27954)))

(declare-fun lt!27956 () BalanceConc!1012)

(assert (=> b!100652 (= lt!27956 (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (_1!1093 (v!12978 lt!27965)))))))

(declare-fun lt!27961 () Option!181)

(assert (=> b!100652 (= lt!27961 (maxPrefixZipperSequence!47 thiss!19403 rules!2471 lt!27956))))

(declare-fun c!24548 () Bool)

(assert (=> b!100652 (= c!24548 (is-Some!180 lt!27961))))

(declare-fun e!55818 () tuple2!1760)

(assert (=> b!100652 (= (lexRec!49 thiss!19403 rules!2471 (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (_1!1093 (v!12978 lt!27965))))) e!55818)))

(declare-fun lt!27980 () Unit!1075)

(declare-fun Unit!1085 () Unit!1075)

(assert (=> b!100652 (= lt!27980 Unit!1085)))

(assert (=> b!100652 (= lt!27970 (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (_1!1093 (v!12978 lt!27965)))))))

(declare-fun lt!27979 () List!1620)

(assert (=> b!100652 (= lt!27979 (list!652 lt!27970))))

(declare-fun lt!27971 () List!1620)

(assert (=> b!100652 (= lt!27971 (list!652 (_2!1093 (v!12978 lt!27965))))))

(declare-fun lt!27957 () Unit!1075)

(assert (=> b!100652 (= lt!27957 (lemmaConcatTwoListThenFSndIsSuffix!44 lt!27979 lt!27971))))

(assert (=> b!100652 (isSuffix!44 lt!27971 (++!247 lt!27979 lt!27971))))

(declare-fun lt!27952 () Unit!1075)

(assert (=> b!100652 (= lt!27952 lt!27957)))

(declare-fun b!100653 () Bool)

(declare-fun lt!27950 () tuple2!1760)

(assert (=> b!100653 (= lt!27950 (lexRec!49 thiss!19403 rules!2471 (_2!1093 (v!12978 lt!27961))))))

(assert (=> b!100653 (= e!55818 (tuple2!1761 (prepend!124 (_1!1087 lt!27950) (_1!1093 (v!12978 lt!27961))) (_2!1087 lt!27950)))))

(declare-fun b!100654 () Bool)

(assert (=> b!100654 (= e!55819 (tuple2!1761 (BalanceConc!1015 Empty!505) (seqFromList!198 input!2238)))))

(declare-fun b!100655 () Bool)

(assert (=> b!100655 (= e!55818 (tuple2!1761 (BalanceConc!1015 Empty!505) lt!27956))))

(declare-fun e!55820 () Bool)

(declare-fun lt!27972 () tuple2!1760)

(declare-fun b!100656 () Bool)

(assert (=> b!100656 (= e!55820 (= (list!652 (_2!1087 lt!27972)) (list!652 (_2!1087 (lexRec!49 thiss!19403 rules!2471 (seqFromList!198 input!2238))))))))

(declare-fun d!23746 () Bool)

(assert (=> d!23746 e!55820))

(declare-fun res!48886 () Bool)

(assert (=> d!23746 (=> (not res!48886) (not e!55820))))

(assert (=> d!23746 (= res!48886 (= (list!653 (_1!1087 lt!27972)) (list!653 (_1!1087 (lexRec!49 thiss!19403 rules!2471 (seqFromList!198 input!2238))))))))

(assert (=> d!23746 (= lt!27972 e!55817)))

(declare-fun c!24549 () Bool)

(assert (=> d!23746 (= c!24549 (is-Some!180 lt!27965))))

(assert (=> d!23746 (= lt!27965 (maxPrefixZipperSequenceV2!44 thiss!19403 rules!2471 (seqFromList!198 input!2238) (seqFromList!198 input!2238)))))

(declare-fun lt!27973 () Unit!1075)

(declare-fun lt!27960 () Unit!1075)

(assert (=> d!23746 (= lt!27973 lt!27960)))

(declare-fun lt!27969 () List!1620)

(declare-fun lt!27958 () List!1620)

(assert (=> d!23746 (isSuffix!44 lt!27969 (++!247 lt!27958 lt!27969))))

(assert (=> d!23746 (= lt!27960 (lemmaConcatTwoListThenFSndIsSuffix!44 lt!27958 lt!27969))))

(assert (=> d!23746 (= lt!27969 (list!652 (seqFromList!198 input!2238)))))

(assert (=> d!23746 (= lt!27958 (list!652 (BalanceConc!1013 Empty!504)))))

(assert (=> d!23746 (= (lexTailRecV2!69 thiss!19403 rules!2471 (seqFromList!198 input!2238) (BalanceConc!1013 Empty!504) (seqFromList!198 input!2238) (BalanceConc!1015 Empty!505)) lt!27972)))

(assert (= (and d!23746 c!24549) b!100652))

(assert (= (and d!23746 (not c!24549)) b!100650))

(assert (= (and b!100652 c!24547) b!100651))

(assert (= (and b!100652 (not c!24547)) b!100654))

(assert (= (and b!100652 c!24548) b!100653))

(assert (= (and b!100652 (not c!24548)) b!100655))

(assert (= (and d!23746 res!48886) b!100656))

(declare-fun m!86716 () Bool)

(assert (=> d!23746 m!86716))

(assert (=> d!23746 m!85080))

(declare-fun m!86718 () Bool)

(assert (=> d!23746 m!86718))

(assert (=> d!23746 m!86716))

(declare-fun m!86720 () Bool)

(assert (=> d!23746 m!86720))

(declare-fun m!86722 () Bool)

(assert (=> d!23746 m!86722))

(declare-fun m!86724 () Bool)

(assert (=> d!23746 m!86724))

(assert (=> d!23746 m!85080))

(assert (=> d!23746 m!85080))

(declare-fun m!86726 () Bool)

(assert (=> d!23746 m!86726))

(declare-fun m!86728 () Bool)

(assert (=> d!23746 m!86728))

(assert (=> d!23746 m!85890))

(assert (=> d!23746 m!85080))

(assert (=> d!23746 m!85288))

(declare-fun m!86730 () Bool)

(assert (=> b!100651 m!86730))

(declare-fun m!86732 () Bool)

(assert (=> b!100651 m!86732))

(declare-fun m!86734 () Bool)

(assert (=> b!100653 m!86734))

(declare-fun m!86736 () Bool)

(assert (=> b!100653 m!86736))

(declare-fun m!86738 () Bool)

(assert (=> b!100652 m!86738))

(assert (=> b!100652 m!85080))

(declare-fun m!86740 () Bool)

(assert (=> b!100652 m!86740))

(declare-fun m!86742 () Bool)

(assert (=> b!100652 m!86742))

(assert (=> b!100652 m!86014))

(assert (=> b!100652 m!85890))

(declare-fun m!86744 () Bool)

(assert (=> b!100652 m!86744))

(declare-fun m!86746 () Bool)

(assert (=> b!100652 m!86746))

(declare-fun m!86748 () Bool)

(assert (=> b!100652 m!86748))

(declare-fun m!86750 () Bool)

(assert (=> b!100652 m!86750))

(assert (=> b!100652 m!86744))

(declare-fun m!86752 () Bool)

(assert (=> b!100652 m!86752))

(declare-fun m!86754 () Bool)

(assert (=> b!100652 m!86754))

(declare-fun m!86756 () Bool)

(assert (=> b!100652 m!86756))

(assert (=> b!100652 m!86754))

(declare-fun m!86758 () Bool)

(assert (=> b!100652 m!86758))

(declare-fun m!86760 () Bool)

(assert (=> b!100652 m!86760))

(declare-fun m!86762 () Bool)

(assert (=> b!100652 m!86762))

(declare-fun m!86764 () Bool)

(assert (=> b!100652 m!86764))

(assert (=> b!100652 m!86756))

(declare-fun m!86766 () Bool)

(assert (=> b!100652 m!86766))

(declare-fun m!86768 () Bool)

(assert (=> b!100652 m!86768))

(declare-fun m!86770 () Bool)

(assert (=> b!100652 m!86770))

(declare-fun m!86772 () Bool)

(assert (=> b!100652 m!86772))

(declare-fun m!86774 () Bool)

(assert (=> b!100652 m!86774))

(assert (=> b!100652 m!86770))

(assert (=> b!100652 m!86738))

(declare-fun m!86776 () Bool)

(assert (=> b!100652 m!86776))

(declare-fun m!86778 () Bool)

(assert (=> b!100652 m!86778))

(assert (=> b!100652 m!86768))

(declare-fun m!86780 () Bool)

(assert (=> b!100652 m!86780))

(declare-fun m!86782 () Bool)

(assert (=> b!100652 m!86782))

(declare-fun m!86784 () Bool)

(assert (=> b!100652 m!86784))

(declare-fun m!86786 () Bool)

(assert (=> b!100652 m!86786))

(assert (=> b!100652 m!85890))

(assert (=> b!100652 m!86758))

(declare-fun m!86788 () Bool)

(assert (=> b!100652 m!86788))

(assert (=> b!100652 m!86762))

(assert (=> b!100652 m!86750))

(assert (=> b!100652 m!86742))

(declare-fun m!86790 () Bool)

(assert (=> b!100652 m!86790))

(assert (=> b!100652 m!85080))

(assert (=> b!100652 m!86718))

(assert (=> b!100652 m!86754))

(assert (=> b!100652 m!86782))

(declare-fun m!86792 () Bool)

(assert (=> b!100652 m!86792))

(declare-fun m!86794 () Bool)

(assert (=> b!100652 m!86794))

(assert (=> b!100652 m!85080))

(assert (=> b!100652 m!86762))

(declare-fun m!86796 () Bool)

(assert (=> b!100652 m!86796))

(declare-fun m!86798 () Bool)

(assert (=> b!100656 m!86798))

(assert (=> b!100656 m!85080))

(assert (=> b!100656 m!86718))

(declare-fun m!86800 () Bool)

(assert (=> b!100656 m!86800))

(assert (=> d!23318 d!23746))

(declare-fun d!23748 () Bool)

(assert (=> d!23748 (= (list!653 (_1!1087 lt!27461)) (list!657 (c!24346 (_1!1087 lt!27461))))))

(declare-fun bs!9865 () Bool)

(assert (= bs!9865 d!23748))

(declare-fun m!86802 () Bool)

(assert (=> bs!9865 m!86802))

(assert (=> b!99902 d!23748))

(assert (=> b!99902 d!23596))

(assert (=> b!99902 d!23598))

(declare-fun b!100657 () Bool)

(declare-fun e!55821 () List!1620)

(assert (=> b!100657 (= e!55821 (_2!1088 (get!411 lt!27496)))))

(declare-fun d!23750 () Bool)

(declare-fun e!55822 () Bool)

(assert (=> d!23750 e!55822))

(declare-fun res!48888 () Bool)

(assert (=> d!23750 (=> (not res!48888) (not e!55822))))

(declare-fun lt!27984 () List!1620)

(assert (=> d!23750 (= res!48888 (= (content!125 lt!27984) (set.union (content!125 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) (content!125 (_2!1088 (get!411 lt!27496))))))))

(assert (=> d!23750 (= lt!27984 e!55821)))

(declare-fun c!24550 () Bool)

(assert (=> d!23750 (= c!24550 (is-Nil!1614 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))))))

(assert (=> d!23750 (= (++!247 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))) (_2!1088 (get!411 lt!27496))) lt!27984)))

(declare-fun b!100660 () Bool)

(assert (=> b!100660 (= e!55822 (or (not (= (_2!1088 (get!411 lt!27496)) Nil!1614)) (= lt!27984 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496)))))))))

(declare-fun b!100658 () Bool)

(assert (=> b!100658 (= e!55821 (Cons!1614 (h!7011 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) (++!247 (t!21217 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) (_2!1088 (get!411 lt!27496)))))))

(declare-fun b!100659 () Bool)

(declare-fun res!48887 () Bool)

(assert (=> b!100659 (=> (not res!48887) (not e!55822))))

(assert (=> b!100659 (= res!48887 (= (size!1431 lt!27984) (+ (size!1431 (list!652 (charsOf!83 (_1!1088 (get!411 lt!27496))))) (size!1431 (_2!1088 (get!411 lt!27496))))))))

(assert (= (and d!23750 c!24550) b!100657))

(assert (= (and d!23750 (not c!24550)) b!100658))

(assert (= (and d!23750 res!48888) b!100659))

(assert (= (and b!100659 res!48887) b!100660))

(declare-fun m!86804 () Bool)

(assert (=> d!23750 m!86804))

(assert (=> d!23750 m!85396))

(declare-fun m!86806 () Bool)

(assert (=> d!23750 m!86806))

(declare-fun m!86808 () Bool)

(assert (=> d!23750 m!86808))

(declare-fun m!86810 () Bool)

(assert (=> b!100658 m!86810))

(declare-fun m!86812 () Bool)

(assert (=> b!100659 m!86812))

(assert (=> b!100659 m!85396))

(declare-fun m!86814 () Bool)

(assert (=> b!100659 m!86814))

(assert (=> b!100659 m!85412))

(assert (=> b!99945 d!23750))

(assert (=> b!99945 d!23448))

(assert (=> b!99945 d!23450))

(assert (=> b!99945 d!23452))

(declare-fun d!23752 () Bool)

(declare-fun lt!27985 () Int)

(assert (=> d!23752 (>= lt!27985 0)))

(declare-fun e!55823 () Int)

(assert (=> d!23752 (= lt!27985 e!55823)))

(declare-fun c!24551 () Bool)

(assert (=> d!23752 (= c!24551 (is-Nil!1614 lt!27443))))

(assert (=> d!23752 (= (size!1431 lt!27443) lt!27985)))

(declare-fun b!100661 () Bool)

(assert (=> b!100661 (= e!55823 0)))

(declare-fun b!100662 () Bool)

(assert (=> b!100662 (= e!55823 (+ 1 (size!1431 (t!21217 lt!27443))))))

(assert (= (and d!23752 c!24551) b!100661))

(assert (= (and d!23752 (not c!24551)) b!100662))

(declare-fun m!86816 () Bool)

(assert (=> b!100662 m!86816))

(assert (=> b!99859 d!23752))

(declare-fun d!23754 () Bool)

(declare-fun lt!27986 () Int)

(assert (=> d!23754 (>= lt!27986 0)))

(declare-fun e!55824 () Int)

(assert (=> d!23754 (= lt!27986 e!55824)))

(declare-fun c!24552 () Bool)

(assert (=> d!23754 (= c!24552 (is-Nil!1614 (++!247 lt!27380 lt!27382)))))

(assert (=> d!23754 (= (size!1431 (++!247 lt!27380 lt!27382)) lt!27986)))

(declare-fun b!100663 () Bool)

(assert (=> b!100663 (= e!55824 0)))

(declare-fun b!100664 () Bool)

(assert (=> b!100664 (= e!55824 (+ 1 (size!1431 (t!21217 (++!247 lt!27380 lt!27382)))))))

(assert (= (and d!23754 c!24552) b!100663))

(assert (= (and d!23754 (not c!24552)) b!100664))

(assert (=> b!100664 m!86188))

(assert (=> b!99859 d!23754))

(assert (=> b!99859 d!23678))

(declare-fun d!23756 () Bool)

(assert (=> d!23756 (= (inv!1956 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))) (isBalanced!130 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))))))

(declare-fun bs!9866 () Bool)

(assert (= bs!9866 d!23756))

(declare-fun m!86818 () Bool)

(assert (=> bs!9866 m!86818))

(assert (=> tb!3035 d!23756))

(declare-fun d!23758 () Bool)

(declare-fun lt!27987 () Bool)

(assert (=> d!23758 (= lt!27987 (isEmpty!724 (list!653 (_1!1087 lt!27538))))))

(assert (=> d!23758 (= lt!27987 (isEmpty!723 (c!24346 (_1!1087 lt!27538))))))

(assert (=> d!23758 (= (isEmpty!717 (_1!1087 lt!27538)) lt!27987)))

(declare-fun bs!9867 () Bool)

(assert (= bs!9867 d!23758))

(assert (=> bs!9867 m!85586))

(assert (=> bs!9867 m!85586))

(declare-fun m!86820 () Bool)

(assert (=> bs!9867 m!86820))

(declare-fun m!86822 () Bool)

(assert (=> bs!9867 m!86822))

(assert (=> b!100016 d!23758))

(declare-fun d!23760 () Bool)

(declare-fun c!24555 () Bool)

(assert (=> d!23760 (= c!24555 (is-Node!504 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))))))

(declare-fun e!55829 () Bool)

(assert (=> d!23760 (= (inv!1955 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))) e!55829)))

(declare-fun b!100671 () Bool)

(declare-fun inv!1961 (Conc!504) Bool)

(assert (=> b!100671 (= e!55829 (inv!1961 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))))))

(declare-fun b!100672 () Bool)

(declare-fun e!55830 () Bool)

(assert (=> b!100672 (= e!55829 e!55830)))

(declare-fun res!48891 () Bool)

(assert (=> b!100672 (= res!48891 (not (is-Leaf!816 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))))))))

(assert (=> b!100672 (=> res!48891 e!55830)))

(declare-fun b!100673 () Bool)

(declare-fun inv!1962 (Conc!504) Bool)

(assert (=> b!100673 (= e!55830 (inv!1962 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))))))

(assert (= (and d!23760 c!24555) b!100671))

(assert (= (and d!23760 (not c!24555)) b!100672))

(assert (= (and b!100672 (not res!48891)) b!100673))

(declare-fun m!86824 () Bool)

(assert (=> b!100671 m!86824))

(declare-fun m!86826 () Bool)

(assert (=> b!100673 m!86826))

(assert (=> b!99910 d!23760))

(declare-fun d!23762 () Bool)

(assert (=> d!23762 (= (list!652 lt!27537) (list!656 (c!24344 lt!27537)))))

(declare-fun bs!9868 () Bool)

(assert (= bs!9868 d!23762))

(declare-fun m!86828 () Bool)

(assert (=> bs!9868 m!86828))

(assert (=> d!23406 d!23762))

(declare-fun d!23764 () Bool)

(declare-fun c!24556 () Bool)

(assert (=> d!23764 (= c!24556 (is-Cons!1616 (list!653 (_1!1087 lt!27385))))))

(declare-fun e!55831 () List!1620)

(assert (=> d!23764 (= (printList!38 thiss!19403 (list!653 (_1!1087 lt!27385))) e!55831)))

(declare-fun b!100674 () Bool)

(assert (=> b!100674 (= e!55831 (++!247 (list!652 (charsOf!83 (h!7013 (list!653 (_1!1087 lt!27385))))) (printList!38 thiss!19403 (t!21219 (list!653 (_1!1087 lt!27385))))))))

(declare-fun b!100675 () Bool)

(assert (=> b!100675 (= e!55831 Nil!1614)))

(assert (= (and d!23764 c!24556) b!100674))

(assert (= (and d!23764 (not c!24556)) b!100675))

(declare-fun m!86830 () Bool)

(assert (=> b!100674 m!86830))

(assert (=> b!100674 m!86830))

(declare-fun m!86832 () Bool)

(assert (=> b!100674 m!86832))

(declare-fun m!86834 () Bool)

(assert (=> b!100674 m!86834))

(assert (=> b!100674 m!86832))

(assert (=> b!100674 m!86834))

(declare-fun m!86836 () Bool)

(assert (=> b!100674 m!86836))

(assert (=> d!23406 d!23764))

(assert (=> d!23406 d!23372))

(declare-fun d!23766 () Bool)

(declare-fun lt!27991 () BalanceConc!1012)

(assert (=> d!23766 (= (list!652 lt!27991) (printListTailRec!27 thiss!19403 (dropList!35 (_1!1087 lt!27385) 0) (list!652 (BalanceConc!1013 Empty!504))))))

(declare-fun e!55833 () BalanceConc!1012)

(assert (=> d!23766 (= lt!27991 e!55833)))

(declare-fun c!24557 () Bool)

(assert (=> d!23766 (= c!24557 (>= 0 (size!1432 (_1!1087 lt!27385))))))

(declare-fun e!55832 () Bool)

(assert (=> d!23766 e!55832))

(declare-fun res!48892 () Bool)

(assert (=> d!23766 (=> (not res!48892) (not e!55832))))

(assert (=> d!23766 (= res!48892 (>= 0 0))))

(assert (=> d!23766 (= (printTailRec!38 thiss!19403 (_1!1087 lt!27385) 0 (BalanceConc!1013 Empty!504)) lt!27991)))

(declare-fun b!100676 () Bool)

(assert (=> b!100676 (= e!55832 (<= 0 (size!1432 (_1!1087 lt!27385))))))

(declare-fun b!100677 () Bool)

(assert (=> b!100677 (= e!55833 (BalanceConc!1013 Empty!504))))

(declare-fun b!100678 () Bool)

(assert (=> b!100678 (= e!55833 (printTailRec!38 thiss!19403 (_1!1087 lt!27385) (+ 0 1) (++!250 (BalanceConc!1013 Empty!504) (charsOf!83 (apply!262 (_1!1087 lt!27385) 0)))))))

(declare-fun lt!27989 () List!1622)

(assert (=> b!100678 (= lt!27989 (list!653 (_1!1087 lt!27385)))))

(declare-fun lt!27993 () Unit!1075)

(assert (=> b!100678 (= lt!27993 (lemmaDropApply!91 lt!27989 0))))

(assert (=> b!100678 (= (head!458 (drop!97 lt!27989 0)) (apply!263 lt!27989 0))))

(declare-fun lt!27992 () Unit!1075)

(assert (=> b!100678 (= lt!27992 lt!27993)))

(declare-fun lt!27988 () List!1622)

(assert (=> b!100678 (= lt!27988 (list!653 (_1!1087 lt!27385)))))

(declare-fun lt!27994 () Unit!1075)

(assert (=> b!100678 (= lt!27994 (lemmaDropTail!83 lt!27988 0))))

(assert (=> b!100678 (= (tail!169 (drop!97 lt!27988 0)) (drop!97 lt!27988 (+ 0 1)))))

(declare-fun lt!27990 () Unit!1075)

(assert (=> b!100678 (= lt!27990 lt!27994)))

(assert (= (and d!23766 res!48892) b!100676))

(assert (= (and d!23766 c!24557) b!100677))

(assert (= (and d!23766 (not c!24557)) b!100678))

(assert (=> d!23766 m!85890))

(declare-fun m!86838 () Bool)

(assert (=> d!23766 m!86838))

(declare-fun m!86840 () Bool)

(assert (=> d!23766 m!86840))

(declare-fun m!86842 () Bool)

(assert (=> d!23766 m!86842))

(assert (=> d!23766 m!86838))

(assert (=> d!23766 m!85890))

(declare-fun m!86844 () Bool)

(assert (=> d!23766 m!86844))

(assert (=> b!100676 m!86842))

(declare-fun m!86846 () Bool)

(assert (=> b!100678 m!86846))

(declare-fun m!86848 () Bool)

(assert (=> b!100678 m!86848))

(declare-fun m!86850 () Bool)

(assert (=> b!100678 m!86850))

(declare-fun m!86852 () Bool)

(assert (=> b!100678 m!86852))

(assert (=> b!100678 m!85064))

(declare-fun m!86854 () Bool)

(assert (=> b!100678 m!86854))

(declare-fun m!86856 () Bool)

(assert (=> b!100678 m!86856))

(assert (=> b!100678 m!86856))

(declare-fun m!86858 () Bool)

(assert (=> b!100678 m!86858))

(declare-fun m!86860 () Bool)

(assert (=> b!100678 m!86860))

(declare-fun m!86862 () Bool)

(assert (=> b!100678 m!86862))

(assert (=> b!100678 m!86846))

(assert (=> b!100678 m!86860))

(assert (=> b!100678 m!86850))

(assert (=> b!100678 m!86862))

(declare-fun m!86864 () Bool)

(assert (=> b!100678 m!86864))

(declare-fun m!86866 () Bool)

(assert (=> b!100678 m!86866))

(declare-fun m!86868 () Bool)

(assert (=> b!100678 m!86868))

(assert (=> d!23406 d!23766))

(declare-fun d!23768 () Bool)

(declare-fun lt!27995 () Int)

(assert (=> d!23768 (>= lt!27995 0)))

(declare-fun e!55834 () Int)

(assert (=> d!23768 (= lt!27995 e!55834)))

(declare-fun c!24558 () Bool)

(assert (=> d!23768 (= c!24558 (is-Nil!1614 lt!27451))))

(assert (=> d!23768 (= (size!1431 lt!27451) lt!27995)))

(declare-fun b!100679 () Bool)

(assert (=> b!100679 (= e!55834 0)))

(declare-fun b!100680 () Bool)

(assert (=> b!100680 (= e!55834 (+ 1 (size!1431 (t!21217 lt!27451))))))

(assert (= (and d!23768 c!24558) b!100679))

(assert (= (and d!23768 (not c!24558)) b!100680))

(declare-fun m!86870 () Bool)

(assert (=> b!100680 m!86870))

(assert (=> b!99867 d!23768))

(assert (=> b!99867 d!23574))

(assert (=> b!99867 d!23736))

(declare-fun d!23770 () Bool)

(assert (=> d!23770 (= (inv!1950 (tag!530 (h!7014 (t!21220 rules!2471)))) (= (mod (str.len (value!12926 (tag!530 (h!7014 (t!21220 rules!2471))))) 2) 0))))

(assert (=> b!100058 d!23770))

(declare-fun d!23772 () Bool)

(declare-fun res!48893 () Bool)

(declare-fun e!55835 () Bool)

(assert (=> d!23772 (=> (not res!48893) (not e!55835))))

(assert (=> d!23772 (= res!48893 (semiInverseModEq!86 (toChars!774 (transformation!352 (h!7014 (t!21220 rules!2471)))) (toValue!915 (transformation!352 (h!7014 (t!21220 rules!2471))))))))

(assert (=> d!23772 (= (inv!1953 (transformation!352 (h!7014 (t!21220 rules!2471)))) e!55835)))

(declare-fun b!100681 () Bool)

(assert (=> b!100681 (= e!55835 (equivClasses!81 (toChars!774 (transformation!352 (h!7014 (t!21220 rules!2471)))) (toValue!915 (transformation!352 (h!7014 (t!21220 rules!2471))))))))

(assert (= (and d!23772 res!48893) b!100681))

(declare-fun m!86872 () Bool)

(assert (=> d!23772 m!86872))

(declare-fun m!86874 () Bool)

(assert (=> b!100681 m!86874))

(assert (=> b!100058 d!23772))

(declare-fun d!23774 () Bool)

(declare-fun c!24559 () Bool)

(assert (=> d!23774 (= c!24559 (is-Nil!1614 lt!27444))))

(declare-fun e!55836 () (Set C!1762))

(assert (=> d!23774 (= (content!125 lt!27444) e!55836)))

(declare-fun b!100682 () Bool)

(assert (=> b!100682 (= e!55836 (as set.empty (Set C!1762)))))

(declare-fun b!100683 () Bool)

(assert (=> b!100683 (= e!55836 (set.union (set.insert (h!7011 lt!27444) (as set.empty (Set C!1762))) (content!125 (t!21217 lt!27444))))))

(assert (= (and d!23774 c!24559) b!100682))

(assert (= (and d!23774 (not c!24559)) b!100683))

(declare-fun m!86876 () Bool)

(assert (=> b!100683 m!86876))

(declare-fun m!86878 () Bool)

(assert (=> b!100683 m!86878))

(assert (=> d!23298 d!23774))

(declare-fun d!23776 () Bool)

(declare-fun c!24560 () Bool)

(assert (=> d!23776 (= c!24560 (is-Nil!1614 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))))))

(declare-fun e!55837 () (Set C!1762))

(assert (=> d!23776 (= (content!125 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) e!55837)))

(declare-fun b!100684 () Bool)

(assert (=> b!100684 (= e!55837 (as set.empty (Set C!1762)))))

(declare-fun b!100685 () Bool)

(assert (=> b!100685 (= e!55837 (set.union (set.insert (h!7011 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))) (as set.empty (Set C!1762))) (content!125 (t!21217 (list!652 (print!75 thiss!19403 (_1!1087 lt!27388)))))))))

(assert (= (and d!23776 c!24560) b!100684))

(assert (= (and d!23776 (not c!24560)) b!100685))

(declare-fun m!86880 () Bool)

(assert (=> b!100685 m!86880))

(assert (=> b!100685 m!85714))

(assert (=> d!23298 d!23776))

(assert (=> d!23298 d!23556))

(declare-fun e!55838 () Bool)

(assert (=> b!100041 (= tp!56815 e!55838)))

(declare-fun b!100687 () Bool)

(declare-fun tp!56869 () Bool)

(declare-fun tp!56867 () Bool)

(assert (=> b!100687 (= e!55838 (and tp!56869 tp!56867))))

(declare-fun b!100689 () Bool)

(declare-fun tp!56870 () Bool)

(declare-fun tp!56866 () Bool)

(assert (=> b!100689 (= e!55838 (and tp!56870 tp!56866))))

(declare-fun b!100688 () Bool)

(declare-fun tp!56868 () Bool)

(assert (=> b!100688 (= e!55838 tp!56868)))

(declare-fun b!100686 () Bool)

(assert (=> b!100686 (= e!55838 tp_is_empty!763)))

(assert (= (and b!100041 (is-ElementMatch!420 (regOne!1352 (regex!352 (h!7014 rules!2471))))) b!100686))

(assert (= (and b!100041 (is-Concat!763 (regOne!1352 (regex!352 (h!7014 rules!2471))))) b!100687))

(assert (= (and b!100041 (is-Star!420 (regOne!1352 (regex!352 (h!7014 rules!2471))))) b!100688))

(assert (= (and b!100041 (is-Union!420 (regOne!1352 (regex!352 (h!7014 rules!2471))))) b!100689))

(declare-fun e!55839 () Bool)

(assert (=> b!100041 (= tp!56813 e!55839)))

(declare-fun b!100691 () Bool)

(declare-fun tp!56874 () Bool)

(declare-fun tp!56872 () Bool)

(assert (=> b!100691 (= e!55839 (and tp!56874 tp!56872))))

(declare-fun b!100693 () Bool)

(declare-fun tp!56875 () Bool)

(declare-fun tp!56871 () Bool)

(assert (=> b!100693 (= e!55839 (and tp!56875 tp!56871))))

(declare-fun b!100692 () Bool)

(declare-fun tp!56873 () Bool)

(assert (=> b!100692 (= e!55839 tp!56873)))

(declare-fun b!100690 () Bool)

(assert (=> b!100690 (= e!55839 tp_is_empty!763)))

(assert (= (and b!100041 (is-ElementMatch!420 (regTwo!1352 (regex!352 (h!7014 rules!2471))))) b!100690))

(assert (= (and b!100041 (is-Concat!763 (regTwo!1352 (regex!352 (h!7014 rules!2471))))) b!100691))

(assert (= (and b!100041 (is-Star!420 (regTwo!1352 (regex!352 (h!7014 rules!2471))))) b!100692))

(assert (= (and b!100041 (is-Union!420 (regTwo!1352 (regex!352 (h!7014 rules!2471))))) b!100693))

(declare-fun b!100694 () Bool)

(declare-fun e!55840 () Bool)

(declare-fun tp!56876 () Bool)

(assert (=> b!100694 (= e!55840 (and tp_is_empty!763 tp!56876))))

(assert (=> b!100048 (= tp!56819 e!55840)))

(assert (= (and b!100048 (is-Cons!1614 (t!21217 (t!21217 input!2238)))) b!100694))

(declare-fun e!55841 () Bool)

(assert (=> b!100042 (= tp!56814 e!55841)))

(declare-fun b!100696 () Bool)

(declare-fun tp!56880 () Bool)

(declare-fun tp!56878 () Bool)

(assert (=> b!100696 (= e!55841 (and tp!56880 tp!56878))))

(declare-fun b!100698 () Bool)

(declare-fun tp!56881 () Bool)

(declare-fun tp!56877 () Bool)

(assert (=> b!100698 (= e!55841 (and tp!56881 tp!56877))))

(declare-fun b!100697 () Bool)

(declare-fun tp!56879 () Bool)

(assert (=> b!100697 (= e!55841 tp!56879)))

(declare-fun b!100695 () Bool)

(assert (=> b!100695 (= e!55841 tp_is_empty!763)))

(assert (= (and b!100042 (is-ElementMatch!420 (reg!749 (regex!352 (h!7014 rules!2471))))) b!100695))

(assert (= (and b!100042 (is-Concat!763 (reg!749 (regex!352 (h!7014 rules!2471))))) b!100696))

(assert (= (and b!100042 (is-Star!420 (reg!749 (regex!352 (h!7014 rules!2471))))) b!100697))

(assert (= (and b!100042 (is-Union!420 (reg!749 (regex!352 (h!7014 rules!2471))))) b!100698))

(declare-fun b!100701 () Bool)

(declare-fun b_free!3005 () Bool)

(declare-fun b_next!3005 () Bool)

(assert (=> b!100701 (= b_free!3005 (not b_next!3005))))

(declare-fun tb!3051 () Bool)

(declare-fun t!21253 () Bool)

(assert (=> (and b!100701 (= (toValue!915 (transformation!352 (h!7014 (t!21220 (t!21220 rules!2471))))) (toValue!915 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))))) t!21253) tb!3051))

(declare-fun result!4438 () Bool)

(assert (= result!4438 result!4432))

(assert (=> d!23462 t!21253))

(declare-fun b_and!4515 () Bool)

(declare-fun tp!56882 () Bool)

(assert (=> b!100701 (= tp!56882 (and (=> t!21253 result!4438) b_and!4515))))

(declare-fun b_free!3007 () Bool)

(declare-fun b_next!3007 () Bool)

(assert (=> b!100701 (= b_free!3007 (not b_next!3007))))

(declare-fun t!21255 () Bool)

(declare-fun tb!3053 () Bool)

(assert (=> (and b!100701 (= (toChars!774 (transformation!352 (h!7014 (t!21220 (t!21220 rules!2471))))) (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383))))) t!21255) tb!3053))

(declare-fun result!4440 () Bool)

(assert (= result!4440 result!4404))

(assert (=> d!23340 t!21255))

(declare-fun t!21257 () Bool)

(declare-fun tb!3055 () Bool)

(assert (=> (and b!100701 (= (toChars!774 (transformation!352 (h!7014 (t!21220 (t!21220 rules!2471))))) (toChars!774 (transformation!352 (rule!857 (_1!1088 (get!411 lt!27496)))))) t!21257) tb!3055))

(declare-fun result!4442 () Bool)

(assert (= result!4442 result!4428))

(assert (=> d!23450 t!21257))

(declare-fun tp!56884 () Bool)

(declare-fun b_and!4517 () Bool)

(assert (=> b!100701 (= tp!56884 (and (=> t!21255 result!4440) (=> t!21257 result!4442) b_and!4517))))

(declare-fun e!55843 () Bool)

(assert (=> b!100701 (= e!55843 (and tp!56882 tp!56884))))

(declare-fun e!55842 () Bool)

(declare-fun b!100700 () Bool)

(declare-fun tp!56883 () Bool)

(assert (=> b!100700 (= e!55842 (and tp!56883 (inv!1950 (tag!530 (h!7014 (t!21220 (t!21220 rules!2471))))) (inv!1953 (transformation!352 (h!7014 (t!21220 (t!21220 rules!2471))))) e!55843))))

(declare-fun b!100699 () Bool)

(declare-fun e!55845 () Bool)

(declare-fun tp!56885 () Bool)

(assert (=> b!100699 (= e!55845 (and e!55842 tp!56885))))

(assert (=> b!100057 (= tp!56831 e!55845)))

(assert (= b!100700 b!100701))

(assert (= b!100699 b!100700))

(assert (= (and b!100057 (is-Cons!1617 (t!21220 (t!21220 rules!2471)))) b!100699))

(declare-fun m!86882 () Bool)

(assert (=> b!100700 m!86882))

(declare-fun m!86884 () Bool)

(assert (=> b!100700 m!86884))

(declare-fun b!100710 () Bool)

(declare-fun e!55850 () Bool)

(declare-fun tp!56894 () Bool)

(declare-fun tp!56893 () Bool)

(assert (=> b!100710 (= e!55850 (and (inv!1955 (left!1233 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))))) tp!56893 (inv!1955 (right!1563 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))))) tp!56894))))

(declare-fun b!100712 () Bool)

(declare-fun e!55851 () Bool)

(declare-fun tp!56892 () Bool)

(assert (=> b!100712 (= e!55851 tp!56892)))

(declare-fun b!100711 () Bool)

(declare-fun inv!1963 (IArray!1009) Bool)

(assert (=> b!100711 (= e!55850 (and (inv!1963 (xs!3091 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))))) e!55851))))

(assert (=> b!99910 (= tp!56801 (and (inv!1955 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383))))) e!55850))))

(assert (= (and b!99910 (is-Node!504 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))))) b!100710))

(assert (= b!100711 b!100712))

(assert (= (and b!99910 (is-Leaf!816 (c!24344 (dynLambda!479 (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))) (value!12927 (_1!1088 lt!27383)))))) b!100711))

(declare-fun m!86886 () Bool)

(assert (=> b!100710 m!86886))

(declare-fun m!86888 () Bool)

(assert (=> b!100710 m!86888))

(declare-fun m!86890 () Bool)

(assert (=> b!100711 m!86890))

(assert (=> b!99910 m!85308))

(declare-fun e!55852 () Bool)

(assert (=> b!100058 (= tp!56829 e!55852)))

(declare-fun b!100714 () Bool)

(declare-fun tp!56898 () Bool)

(declare-fun tp!56896 () Bool)

(assert (=> b!100714 (= e!55852 (and tp!56898 tp!56896))))

(declare-fun b!100716 () Bool)

(declare-fun tp!56899 () Bool)

(declare-fun tp!56895 () Bool)

(assert (=> b!100716 (= e!55852 (and tp!56899 tp!56895))))

(declare-fun b!100715 () Bool)

(declare-fun tp!56897 () Bool)

(assert (=> b!100715 (= e!55852 tp!56897)))

(declare-fun b!100713 () Bool)

(assert (=> b!100713 (= e!55852 tp_is_empty!763)))

(assert (= (and b!100058 (is-ElementMatch!420 (regex!352 (h!7014 (t!21220 rules!2471))))) b!100713))

(assert (= (and b!100058 (is-Concat!763 (regex!352 (h!7014 (t!21220 rules!2471))))) b!100714))

(assert (= (and b!100058 (is-Star!420 (regex!352 (h!7014 (t!21220 rules!2471))))) b!100715))

(assert (= (and b!100058 (is-Union!420 (regex!352 (h!7014 (t!21220 rules!2471))))) b!100716))

(declare-fun e!55853 () Bool)

(assert (=> b!100043 (= tp!56816 e!55853)))

(declare-fun b!100718 () Bool)

(declare-fun tp!56903 () Bool)

(declare-fun tp!56901 () Bool)

(assert (=> b!100718 (= e!55853 (and tp!56903 tp!56901))))

(declare-fun b!100720 () Bool)

(declare-fun tp!56904 () Bool)

(declare-fun tp!56900 () Bool)

(assert (=> b!100720 (= e!55853 (and tp!56904 tp!56900))))

(declare-fun b!100719 () Bool)

(declare-fun tp!56902 () Bool)

(assert (=> b!100719 (= e!55853 tp!56902)))

(declare-fun b!100717 () Bool)

(assert (=> b!100717 (= e!55853 tp_is_empty!763)))

(assert (= (and b!100043 (is-ElementMatch!420 (regOne!1353 (regex!352 (h!7014 rules!2471))))) b!100717))

(assert (= (and b!100043 (is-Concat!763 (regOne!1353 (regex!352 (h!7014 rules!2471))))) b!100718))

(assert (= (and b!100043 (is-Star!420 (regOne!1353 (regex!352 (h!7014 rules!2471))))) b!100719))

(assert (= (and b!100043 (is-Union!420 (regOne!1353 (regex!352 (h!7014 rules!2471))))) b!100720))

(declare-fun e!55854 () Bool)

(assert (=> b!100043 (= tp!56812 e!55854)))

(declare-fun b!100722 () Bool)

(declare-fun tp!56908 () Bool)

(declare-fun tp!56906 () Bool)

(assert (=> b!100722 (= e!55854 (and tp!56908 tp!56906))))

(declare-fun b!100724 () Bool)

(declare-fun tp!56909 () Bool)

(declare-fun tp!56905 () Bool)

(assert (=> b!100724 (= e!55854 (and tp!56909 tp!56905))))

(declare-fun b!100723 () Bool)

(declare-fun tp!56907 () Bool)

(assert (=> b!100723 (= e!55854 tp!56907)))

(declare-fun b!100721 () Bool)

(assert (=> b!100721 (= e!55854 tp_is_empty!763)))

(assert (= (and b!100043 (is-ElementMatch!420 (regTwo!1353 (regex!352 (h!7014 rules!2471))))) b!100721))

(assert (= (and b!100043 (is-Concat!763 (regTwo!1353 (regex!352 (h!7014 rules!2471))))) b!100722))

(assert (= (and b!100043 (is-Star!420 (regTwo!1353 (regex!352 (h!7014 rules!2471))))) b!100723))

(assert (= (and b!100043 (is-Union!420 (regTwo!1353 (regex!352 (h!7014 rules!2471))))) b!100724))

(declare-fun b_lambda!1145 () Bool)

(assert (= b_lambda!1137 (or (and b!99806 b_free!2991 (= (toChars!774 (transformation!352 (h!7014 rules!2471))) (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))))) (and b!100059 b_free!2999 (= (toChars!774 (transformation!352 (h!7014 (t!21220 rules!2471)))) (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))))) (and b!100701 b_free!3007 (= (toChars!774 (transformation!352 (h!7014 (t!21220 (t!21220 rules!2471))))) (toChars!774 (transformation!352 (rule!857 (_1!1088 lt!27383)))))) b_lambda!1145)))

(push 1)

(assert (not d!23756))

(assert (not b!100266))

(assert (not d!23498))

(assert (not b!100569))

(assert (not b!100571))

(assert b_and!4513)

(assert (not b!100589))

(assert (not b!100405))

(assert (not b!100696))

(assert (not b!100575))

(assert (not b!100502))

(assert (not b!100641))

(assert (not b_next!2989))

(assert (not bm!4404))

(assert (not d!23638))

(assert (not d!23600))

(assert (not b!100357))

(assert (not d!23618))

(assert (not b!100437))

(assert (not b!100711))

(assert (not b!100647))

(assert (not b!100348))

(assert (not b!100426))

(assert (not b!100442))

(assert (not b!100166))

(assert (not b!100139))

(assert (not b!100434))

(assert (not d!23772))

(assert (not b!100377))

(assert (not d!23490))

(assert (not d!23540))

(assert (not b!100270))

(assert (not b!100439))

(assert (not b!100691))

(assert (not b!100145))

(assert (not d!23746))

(assert (not b!100500))

(assert (not d!23602))

(assert (not b!100698))

(assert (not b!100521))

(assert (not b!100345))

(assert (not b!100629))

(assert (not d!23758))

(assert (not b!100653))

(assert (not b!100700))

(assert (not b!100527))

(assert (not d!23748))

(assert (not b!100138))

(assert (not b!100410))

(assert (not b!100640))

(assert (not b!100367))

(assert (not b!100633))

(assert (not b!100369))

(assert (not d!23614))

(assert (not b!100627))

(assert (not b!100342))

(assert (not b!100429))

(assert (not d!23530))

(assert (not b!100680))

(assert b_and!4507)

(assert (not b!100140))

(assert (not b_lambda!1141))

(assert (not d!23550))

(assert (not b!100391))

(assert (not b!100511))

(assert (not b!100445))

(assert (not b!100652))

(assert (not d!23604))

(assert (not b!100186))

(assert (not b!100568))

(assert (not b!100496))

(assert (not b!100110))

(assert (not b!100712))

(assert (not d!23712))

(assert (not bm!4405))

(assert (not b!100572))

(assert (not b!100338))

(assert (not b!100267))

(assert (not d!23538))

(assert (not tb!3043))

(assert (not b!100531))

(assert (not b!100448))

(assert (not b!100125))

(assert (not b!100371))

(assert (not b!100588))

(assert (not b!100718))

(assert (not b!100165))

(assert (not b!99910))

(assert (not b!100355))

(assert (not d!23766))

(assert (not d!23558))

(assert (not d!23724))

(assert (not d!23450))

(assert b_and!4517)

(assert (not b!100289))

(assert (not b!100716))

(assert b_and!4509)

(assert (not d!23730))

(assert (not b!100454))

(assert (not b_next!2991))

(assert (not b!100688))

(assert (not b!100408))

(assert (not b!100288))

(assert (not d!23596))

(assert (not d!23646))

(assert b_and!4511)

(assert (not b!100699))

(assert (not b!100436))

(assert (not d!23612))

(assert (not b!100617))

(assert (not tb!3047))

(assert (not d!23634))

(assert (not b!100447))

(assert (not d!23544))

(assert (not d!23582))

(assert (not b!100606))

(assert (not b!100651))

(assert (not b!100109))

(assert (not b!100681))

(assert (not b!100659))

(assert (not d!23742))

(assert (not b!100519))

(assert (not b!100340))

(assert (not d!23636))

(assert (not b!100714))

(assert (not b!100574))

(assert (not b!100299))

(assert b_and!4515)

(assert (not b!100290))

(assert (not d!23592))

(assert (not b!100146))

(assert (not d!23468))

(assert (not d!23568))

(assert (not b!100664))

(assert (not d!23620))

(assert (not b!100185))

(assert (not b!100719))

(assert (not b!100648))

(assert (not b!100366))

(assert (not b!100412))

(assert (not b!100635))

(assert (not b!100361))

(assert (not d!23594))

(assert (not b!100662))

(assert (not b!100645))

(assert (not b!100671))

(assert (not b!100570))

(assert (not d!23642))

(assert (not d!23686))

(assert (not b!100128))

(assert (not b!100103))

(assert (not b!100678))

(assert (not d!23458))

(assert (not b!100674))

(assert (not d!23644))

(assert (not d!23598))

(assert (not b!100697))

(assert (not b!100393))

(assert (not b!100508))

(assert (not b!100510))

(assert (not b!100631))

(assert (not d!23534))

(assert (not b!100689))

(assert (not b!100105))

(assert (not b!100425))

(assert (not b!100576))

(assert (not b!100623))

(assert (not b!100106))

(assert (not d!23740))

(assert (not d!23716))

(assert (not b!100503))

(assert (not b!100523))

(assert (not d!23528))

(assert (not b!100124))

(assert (not b!100337))

(assert (not d!23584))

(assert (not b!100604))

(assert (not d!23464))

(assert (not b!100683))

(assert (not d!23532))

(assert (not d!23548))

(assert (not d!23630))

(assert (not d!23546))

(assert (not d!23626))

(assert (not b!100390))

(assert (not b!100509))

(assert (not b!100504))

(assert (not b!100362))

(assert (not b!100658))

(assert (not b_lambda!1143))

(assert (not b!100293))

(assert (not b!100376))

(assert (not d!23456))

(assert (not b!100373))

(assert (not b!100693))

(assert (not d!23640))

(assert (not b!100625))

(assert (not b!100207))

(assert (not b!100395))

(assert (not b!100656))

(assert (not d!23628))

(assert (not b!100525))

(assert (not b_next!3007))

(assert (not b!100453))

(assert (not b_lambda!1145))

(assert (not b!100692))

(assert (not b!100451))

(assert (not b!100722))

(assert (not b!100398))

(assert (not b!100685))

(assert (not d!23744))

(assert (not d!23762))

(assert (not b!100406))

(assert (not b_next!2997))

(assert (not b!100676))

(assert (not b!100392))

(assert (not b!100505))

(assert (not b!100643))

(assert (not d!23694))

(assert (not b!100673))

(assert (not b!100349))

(assert (not b!100720))

(assert (not b!100507))

(assert (not b!100413))

(assert (not d!23632))

(assert (not d!23622))

(assert (not d!23476))

(assert (not b!100715))

(assert (not b!100264))

(assert (not b!100435))

(assert (not b!100636))

(assert (not d!23624))

(assert (not d!23616))

(assert (not d!23460))

(assert (not b!100687))

(assert (not b!100303))

(assert (not d!23454))

(assert (not d!23702))

(assert (not b!100724))

(assert (not b!100694))

(assert (not b!100301))

(assert (not b!100359))

(assert (not b!100341))

(assert (not b!100394))

(assert (not b!100272))

(assert tp_is_empty!763)

(assert (not d!23448))

(assert (not d!23526))

(assert (not d!23668))

(assert (not b_next!3005))

(assert (not d!23750))

(assert (not b!100268))

(assert (not b!100530))

(assert (not b!100723))

(assert (not d!23474))

(assert (not b!100710))

(assert (not b_next!2999))

(assert (not b!100444))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4513)

(assert (not b_next!2989))

(assert b_and!4507)

(assert b_and!4511)

(assert b_and!4515)

(assert (not b_next!3007))

(assert (not b_next!2997))

(assert b_and!4509)

(assert (not b_next!2991))

(assert b_and!4517)

(assert (not b_next!2999))

(assert (not b_next!3005))

(check-sat)

(pop 1)

