; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!55914 () Bool)

(assert start!55914)

(declare-fun b!594093 () Bool)

(declare-fun b_free!16749 () Bool)

(declare-fun b_next!16765 () Bool)

(assert (=> b!594093 (= b_free!16749 (not b_next!16765))))

(declare-fun tp!185267 () Bool)

(declare-fun b_and!58579 () Bool)

(assert (=> b!594093 (= tp!185267 b_and!58579)))

(declare-fun b_free!16751 () Bool)

(declare-fun b_next!16767 () Bool)

(assert (=> b!594093 (= b_free!16751 (not b_next!16767))))

(declare-fun tp!185272 () Bool)

(declare-fun b_and!58581 () Bool)

(assert (=> b!594093 (= tp!185272 b_and!58581)))

(declare-fun b!594101 () Bool)

(declare-fun b_free!16753 () Bool)

(declare-fun b_next!16769 () Bool)

(assert (=> b!594101 (= b_free!16753 (not b_next!16769))))

(declare-fun tp!185264 () Bool)

(declare-fun b_and!58583 () Bool)

(assert (=> b!594101 (= tp!185264 b_and!58583)))

(declare-fun b_free!16755 () Bool)

(declare-fun b_next!16771 () Bool)

(assert (=> b!594101 (= b_free!16755 (not b_next!16771))))

(declare-fun tp!185269 () Bool)

(declare-fun b_and!58585 () Bool)

(assert (=> b!594101 (= tp!185269 b_and!58585)))

(declare-fun b!594092 () Bool)

(declare-fun e!359420 () Bool)

(declare-fun e!359412 () Bool)

(assert (=> b!594092 (= e!359420 e!359412)))

(declare-fun res!256272 () Bool)

(assert (=> b!594092 (=> (not res!256272) (not e!359412))))

(declare-datatypes ((C!3914 0))(
  ( (C!3915 (val!2183 Int)) )
))
(declare-datatypes ((List!5901 0))(
  ( (Nil!5891) (Cons!5891 (h!11292 C!3914) (t!79254 List!5901)) )
))
(declare-fun lt!251982 () List!5901)

(declare-fun input!2705 () List!5901)

(assert (=> b!594092 (= res!256272 (= lt!251982 input!2705))))

(declare-datatypes ((Regex!1496 0))(
  ( (ElementMatch!1496 (c!110691 C!3914)) (Concat!2682 (regOne!3504 Regex!1496) (regTwo!3504 Regex!1496)) (EmptyExpr!1496) (Star!1496 (reg!1825 Regex!1496)) (EmptyLang!1496) (Union!1496 (regOne!3505 Regex!1496) (regTwo!3505 Regex!1496)) )
))
(declare-datatypes ((List!5902 0))(
  ( (Nil!5892) (Cons!5892 (h!11293 (_ BitVec 16)) (t!79255 List!5902)) )
))
(declare-datatypes ((TokenValue!1186 0))(
  ( (FloatLiteralValue!2372 (text!8747 List!5902)) (TokenValueExt!1185 (__x!4270 Int)) (Broken!5930 (value!37959 List!5902)) (Object!1195) (End!1186) (Def!1186) (Underscore!1186) (Match!1186) (Else!1186) (Error!1186) (Case!1186) (If!1186) (Extends!1186) (Abstract!1186) (Class!1186) (Val!1186) (DelimiterValue!2372 (del!1246 List!5902)) (KeywordValue!1192 (value!37960 List!5902)) (CommentValue!2372 (value!37961 List!5902)) (WhitespaceValue!2372 (value!37962 List!5902)) (IndentationValue!1186 (value!37963 List!5902)) (String!7675) (Int32!1186) (Broken!5931 (value!37964 List!5902)) (Boolean!1187) (Unit!10707) (OperatorValue!1189 (op!1246 List!5902)) (IdentifierValue!2372 (value!37965 List!5902)) (IdentifierValue!2373 (value!37966 List!5902)) (WhitespaceValue!2373 (value!37967 List!5902)) (True!2372) (False!2372) (Broken!5932 (value!37968 List!5902)) (Broken!5933 (value!37969 List!5902)) (True!2373) (RightBrace!1186) (RightBracket!1186) (Colon!1186) (Null!1186) (Comma!1186) (LeftBracket!1186) (False!2373) (LeftBrace!1186) (ImaginaryLiteralValue!1186 (text!8748 List!5902)) (StringLiteralValue!3558 (value!37970 List!5902)) (EOFValue!1186 (value!37971 List!5902)) (IdentValue!1186 (value!37972 List!5902)) (DelimiterValue!2373 (value!37973 List!5902)) (DedentValue!1186 (value!37974 List!5902)) (NewLineValue!1186 (value!37975 List!5902)) (IntegerValue!3558 (value!37976 (_ BitVec 32)) (text!8749 List!5902)) (IntegerValue!3559 (value!37977 Int) (text!8750 List!5902)) (Times!1186) (Or!1186) (Equal!1186) (Minus!1186) (Broken!5934 (value!37978 List!5902)) (And!1186) (Div!1186) (LessEqual!1186) (Mod!1186) (Concat!2683) (Not!1186) (Plus!1186) (SpaceValue!1186 (value!37979 List!5902)) (IntegerValue!3560 (value!37980 Int) (text!8751 List!5902)) (StringLiteralValue!3559 (text!8752 List!5902)) (FloatLiteralValue!2373 (text!8753 List!5902)) (BytesLiteralValue!1186 (value!37981 List!5902)) (CommentValue!2373 (value!37982 List!5902)) (StringLiteralValue!3560 (value!37983 List!5902)) (ErrorTokenValue!1186 (msg!1247 List!5902)) )
))
(declare-datatypes ((String!7676 0))(
  ( (String!7677 (value!37984 String)) )
))
(declare-datatypes ((IArray!3759 0))(
  ( (IArray!3760 (innerList!1937 List!5901)) )
))
(declare-datatypes ((Conc!1879 0))(
  ( (Node!1879 (left!4773 Conc!1879) (right!5103 Conc!1879) (csize!3988 Int) (cheight!2090 Int)) (Leaf!2968 (xs!4516 IArray!3759) (csize!3989 Int)) (Empty!1879) )
))
(declare-datatypes ((BalanceConc!3766 0))(
  ( (BalanceConc!3767 (c!110692 Conc!1879)) )
))
(declare-datatypes ((TokenValueInjection!2140 0))(
  ( (TokenValueInjection!2141 (toValue!2053 Int) (toChars!1912 Int)) )
))
(declare-datatypes ((Rule!2124 0))(
  ( (Rule!2125 (regex!1162 Regex!1496) (tag!1424 String!7676) (isSeparator!1162 Bool) (transformation!1162 TokenValueInjection!2140)) )
))
(declare-datatypes ((Token!2060 0))(
  ( (Token!2061 (value!37985 TokenValue!1186) (rule!1932 Rule!2124) (size!4658 Int) (originalCharacters!1201 List!5901)) )
))
(declare-fun token!491 () Token!2060)

(declare-fun list!2467 (BalanceConc!3766) List!5901)

(declare-fun charsOf!791 (Token!2060) BalanceConc!3766)

(assert (=> b!594092 (= lt!251982 (list!2467 (charsOf!791 token!491)))))

(declare-fun e!359408 () Bool)

(assert (=> b!594093 (= e!359408 (and tp!185267 tp!185272))))

(declare-fun b!594094 () Bool)

(declare-datatypes ((Unit!10708 0))(
  ( (Unit!10709) )
))
(declare-fun e!359419 () Unit!10708)

(declare-fun Unit!10710 () Unit!10708)

(assert (=> b!594094 (= e!359419 Unit!10710)))

(assert (=> b!594094 false))

(declare-fun res!256276 () Bool)

(assert (=> start!55914 (=> (not res!256276) (not e!359420))))

(declare-datatypes ((LexerInterface!1048 0))(
  ( (LexerInterfaceExt!1045 (__x!4271 Int)) (Lexer!1046) )
))
(declare-fun thiss!22590 () LexerInterface!1048)

(assert (=> start!55914 (= res!256276 (is-Lexer!1046 thiss!22590))))

(assert (=> start!55914 e!359420))

(declare-fun e!359404 () Bool)

(assert (=> start!55914 e!359404))

(declare-fun e!359403 () Bool)

(assert (=> start!55914 e!359403))

(declare-fun e!359417 () Bool)

(declare-fun inv!7467 (Token!2060) Bool)

(assert (=> start!55914 (and (inv!7467 token!491) e!359417)))

(assert (=> start!55914 true))

(declare-fun e!359415 () Bool)

(assert (=> start!55914 e!359415))

(declare-fun b!594095 () Bool)

(declare-fun res!256273 () Bool)

(assert (=> b!594095 (=> (not res!256273) (not e!359420))))

(declare-datatypes ((List!5903 0))(
  ( (Nil!5893) (Cons!5893 (h!11294 Rule!2124) (t!79256 List!5903)) )
))
(declare-fun rules!3103 () List!5903)

(declare-fun rulesInvariant!1011 (LexerInterface!1048 List!5903) Bool)

(assert (=> b!594095 (= res!256273 (rulesInvariant!1011 thiss!22590 rules!3103))))

(declare-fun b!594096 () Bool)

(declare-fun res!256275 () Bool)

(declare-fun e!359405 () Bool)

(assert (=> b!594096 (=> (not res!256275) (not e!359405))))

(declare-datatypes ((tuple2!6818 0))(
  ( (tuple2!6819 (_1!3673 Token!2060) (_2!3673 List!5901)) )
))
(declare-datatypes ((Option!1513 0))(
  ( (None!1512) (Some!1512 (v!16399 tuple2!6818)) )
))
(declare-fun lt!251975 () Option!1513)

(declare-fun size!4659 (List!5901) Int)

(assert (=> b!594096 (= res!256275 (= (size!4658 (_1!3673 (v!16399 lt!251975))) (size!4659 (originalCharacters!1201 (_1!3673 (v!16399 lt!251975))))))))

(declare-fun b!594097 () Bool)

(declare-fun e!359409 () Bool)

(declare-fun e!359402 () Bool)

(assert (=> b!594097 (= e!359409 (not e!359402))))

(declare-fun res!256280 () Bool)

(assert (=> b!594097 (=> res!256280 e!359402)))

(declare-fun lt!251976 () List!5901)

(declare-fun isPrefix!790 (List!5901 List!5901) Bool)

(assert (=> b!594097 (= res!256280 (not (isPrefix!790 input!2705 lt!251976)))))

(assert (=> b!594097 (isPrefix!790 lt!251982 lt!251976)))

(declare-fun lt!251992 () Unit!10708)

(declare-fun suffix!1342 () List!5901)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!635 (List!5901 List!5901) Unit!10708)

(assert (=> b!594097 (= lt!251992 (lemmaConcatTwoListThenFirstIsPrefix!635 lt!251982 suffix!1342))))

(declare-fun lt!251986 () List!5901)

(assert (=> b!594097 (isPrefix!790 input!2705 lt!251986)))

(declare-fun lt!251990 () Unit!10708)

(assert (=> b!594097 (= lt!251990 (lemmaConcatTwoListThenFirstIsPrefix!635 input!2705 suffix!1342))))

(assert (=> b!594097 e!359405))

(declare-fun res!256279 () Bool)

(assert (=> b!594097 (=> (not res!256279) (not e!359405))))

(declare-fun lt!251978 () TokenValue!1186)

(assert (=> b!594097 (= res!256279 (= (value!37985 (_1!3673 (v!16399 lt!251975))) lt!251978))))

(declare-fun lt!251998 () List!5901)

(declare-fun apply!1415 (TokenValueInjection!2140 BalanceConc!3766) TokenValue!1186)

(declare-fun seqFromList!1338 (List!5901) BalanceConc!3766)

(assert (=> b!594097 (= lt!251978 (apply!1415 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))) (seqFromList!1338 lt!251998)))))

(declare-fun lt!251991 () Unit!10708)

(declare-fun lemmaInv!270 (TokenValueInjection!2140) Unit!10708)

(assert (=> b!594097 (= lt!251991 (lemmaInv!270 (transformation!1162 (rule!1932 token!491))))))

(declare-fun lt!251983 () Unit!10708)

(assert (=> b!594097 (= lt!251983 (lemmaInv!270 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))))))

(declare-fun ruleValid!360 (LexerInterface!1048 Rule!2124) Bool)

(assert (=> b!594097 (ruleValid!360 thiss!22590 (rule!1932 token!491))))

(declare-fun lt!251988 () Unit!10708)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!207 (LexerInterface!1048 Rule!2124 List!5903) Unit!10708)

(assert (=> b!594097 (= lt!251988 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!207 thiss!22590 (rule!1932 token!491) rules!3103))))

(assert (=> b!594097 (ruleValid!360 thiss!22590 (rule!1932 (_1!3673 (v!16399 lt!251975))))))

(declare-fun lt!251995 () Unit!10708)

(assert (=> b!594097 (= lt!251995 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!207 thiss!22590 (rule!1932 (_1!3673 (v!16399 lt!251975))) rules!3103))))

(assert (=> b!594097 (isPrefix!790 input!2705 input!2705)))

(declare-fun lt!251996 () Unit!10708)

(declare-fun lemmaIsPrefixRefl!526 (List!5901 List!5901) Unit!10708)

(assert (=> b!594097 (= lt!251996 (lemmaIsPrefixRefl!526 input!2705 input!2705))))

(declare-fun lt!251989 () List!5901)

(assert (=> b!594097 (= (_2!3673 (v!16399 lt!251975)) lt!251989)))

(declare-fun lt!251981 () Unit!10708)

(declare-fun lemmaSamePrefixThenSameSuffix!503 (List!5901 List!5901 List!5901 List!5901 List!5901) Unit!10708)

(assert (=> b!594097 (= lt!251981 (lemmaSamePrefixThenSameSuffix!503 lt!251998 (_2!3673 (v!16399 lt!251975)) lt!251998 lt!251989 input!2705))))

(declare-fun getSuffix!307 (List!5901 List!5901) List!5901)

(assert (=> b!594097 (= lt!251989 (getSuffix!307 input!2705 lt!251998))))

(declare-fun ++!1650 (List!5901 List!5901) List!5901)

(assert (=> b!594097 (isPrefix!790 lt!251998 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975))))))

(declare-fun lt!251980 () Unit!10708)

(assert (=> b!594097 (= lt!251980 (lemmaConcatTwoListThenFirstIsPrefix!635 lt!251998 (_2!3673 (v!16399 lt!251975))))))

(declare-fun lt!251994 () Unit!10708)

(declare-fun lemmaCharactersSize!221 (Token!2060) Unit!10708)

(assert (=> b!594097 (= lt!251994 (lemmaCharactersSize!221 token!491))))

(declare-fun lt!251993 () Unit!10708)

(assert (=> b!594097 (= lt!251993 (lemmaCharactersSize!221 (_1!3673 (v!16399 lt!251975))))))

(declare-fun lt!251979 () Unit!10708)

(assert (=> b!594097 (= lt!251979 e!359419)))

(declare-fun c!110690 () Bool)

(declare-fun lt!251997 () Int)

(assert (=> b!594097 (= c!110690 (> lt!251997 (size!4659 lt!251982)))))

(assert (=> b!594097 (= lt!251997 (size!4659 lt!251998))))

(assert (=> b!594097 (= lt!251998 (list!2467 (charsOf!791 (_1!3673 (v!16399 lt!251975)))))))

(assert (=> b!594097 (= lt!251975 (Some!1512 (v!16399 lt!251975)))))

(declare-fun lt!251987 () Unit!10708)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!235 (List!5901 List!5901 List!5901 List!5901) Unit!10708)

(assert (=> b!594097 (= lt!251987 (lemmaConcatSameAndSameSizesThenSameLists!235 lt!251982 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!594098 () Bool)

(assert (=> b!594098 (= e!359405 (and (= (size!4658 (_1!3673 (v!16399 lt!251975))) lt!251997) (= (originalCharacters!1201 (_1!3673 (v!16399 lt!251975))) lt!251998) (= (v!16399 lt!251975) (tuple2!6819 (Token!2061 lt!251978 (rule!1932 (_1!3673 (v!16399 lt!251975))) lt!251997 lt!251998) lt!251989))))))

(declare-fun e!359414 () Bool)

(declare-fun e!359401 () Bool)

(declare-fun tp!185270 () Bool)

(declare-fun b!594099 () Bool)

(declare-fun inv!7464 (String!7676) Bool)

(declare-fun inv!7468 (TokenValueInjection!2140) Bool)

(assert (=> b!594099 (= e!359414 (and tp!185270 (inv!7464 (tag!1424 (rule!1932 token!491))) (inv!7468 (transformation!1162 (rule!1932 token!491))) e!359401))))

(declare-fun b!594100 () Bool)

(declare-fun e!359413 () Bool)

(assert (=> b!594100 (= e!359412 e!359413)))

(declare-fun res!256282 () Bool)

(assert (=> b!594100 (=> (not res!256282) (not e!359413))))

(declare-fun lt!251984 () Option!1513)

(declare-fun isDefined!1324 (Option!1513) Bool)

(assert (=> b!594100 (= res!256282 (isDefined!1324 lt!251984))))

(declare-fun maxPrefix!746 (LexerInterface!1048 List!5903 List!5901) Option!1513)

(assert (=> b!594100 (= lt!251984 (maxPrefix!746 thiss!22590 rules!3103 lt!251986))))

(assert (=> b!594100 (= lt!251986 (++!1650 input!2705 suffix!1342))))

(assert (=> b!594101 (= e!359401 (and tp!185264 tp!185269))))

(declare-fun b!594102 () Bool)

(declare-fun e!359418 () Bool)

(assert (=> b!594102 (= e!359418 e!359409)))

(declare-fun res!256274 () Bool)

(assert (=> b!594102 (=> (not res!256274) (not e!359409))))

(assert (=> b!594102 (= res!256274 (= lt!251976 lt!251986))))

(assert (=> b!594102 (= lt!251976 (++!1650 lt!251982 suffix!1342))))

(declare-fun b!594103 () Bool)

(declare-fun tp_is_empty!3347 () Bool)

(declare-fun tp!185263 () Bool)

(assert (=> b!594103 (= e!359404 (and tp_is_empty!3347 tp!185263))))

(declare-fun b!594104 () Bool)

(declare-fun res!256283 () Bool)

(assert (=> b!594104 (=> (not res!256283) (not e!359420))))

(declare-fun isEmpty!4253 (List!5901) Bool)

(assert (=> b!594104 (= res!256283 (not (isEmpty!4253 input!2705)))))

(declare-fun tp!185266 () Bool)

(declare-fun b!594105 () Bool)

(declare-fun inv!21 (TokenValue!1186) Bool)

(assert (=> b!594105 (= e!359417 (and (inv!21 (value!37985 token!491)) e!359414 tp!185266))))

(declare-fun b!594106 () Bool)

(declare-fun tp!185265 () Bool)

(assert (=> b!594106 (= e!359415 (and tp_is_empty!3347 tp!185265))))

(declare-fun b!594107 () Bool)

(declare-fun e!359400 () Bool)

(declare-fun lt!251977 () List!5901)

(assert (=> b!594107 (= e!359400 (= (++!1650 lt!251982 lt!251977) lt!251986))))

(declare-fun b!594108 () Bool)

(assert (=> b!594108 (= e!359402 e!359400)))

(declare-fun res!256278 () Bool)

(assert (=> b!594108 (=> res!256278 e!359400)))

(assert (=> b!594108 (= res!256278 (not (isPrefix!790 lt!251982 lt!251986)))))

(assert (=> b!594108 (= lt!251977 (getSuffix!307 lt!251986 lt!251982))))

(declare-fun b!594109 () Bool)

(declare-fun Unit!10711 () Unit!10708)

(assert (=> b!594109 (= e!359419 Unit!10711)))

(declare-fun b!594110 () Bool)

(declare-fun e!359416 () Bool)

(declare-fun tp!185268 () Bool)

(assert (=> b!594110 (= e!359403 (and e!359416 tp!185268))))

(declare-fun b!594111 () Bool)

(declare-fun e!359410 () Bool)

(assert (=> b!594111 (= e!359413 e!359410)))

(declare-fun res!256281 () Bool)

(assert (=> b!594111 (=> (not res!256281) (not e!359410))))

(declare-fun lt!251985 () tuple2!6818)

(assert (=> b!594111 (= res!256281 (and (= (_1!3673 lt!251985) token!491) (= (_2!3673 lt!251985) suffix!1342)))))

(declare-fun get!2258 (Option!1513) tuple2!6818)

(assert (=> b!594111 (= lt!251985 (get!2258 lt!251984))))

(declare-fun tp!185271 () Bool)

(declare-fun b!594112 () Bool)

(assert (=> b!594112 (= e!359416 (and tp!185271 (inv!7464 (tag!1424 (h!11294 rules!3103))) (inv!7468 (transformation!1162 (h!11294 rules!3103))) e!359408))))

(declare-fun b!594113 () Bool)

(declare-fun res!256277 () Bool)

(assert (=> b!594113 (=> (not res!256277) (not e!359420))))

(declare-fun isEmpty!4254 (List!5903) Bool)

(assert (=> b!594113 (= res!256277 (not (isEmpty!4254 rules!3103)))))

(declare-fun b!594114 () Bool)

(assert (=> b!594114 (= e!359410 e!359418)))

(declare-fun res!256271 () Bool)

(assert (=> b!594114 (=> (not res!256271) (not e!359418))))

(assert (=> b!594114 (= res!256271 (is-Some!1512 lt!251975))))

(assert (=> b!594114 (= lt!251975 (maxPrefix!746 thiss!22590 rules!3103 input!2705))))

(assert (= (and start!55914 res!256276) b!594113))

(assert (= (and b!594113 res!256277) b!594095))

(assert (= (and b!594095 res!256273) b!594104))

(assert (= (and b!594104 res!256283) b!594092))

(assert (= (and b!594092 res!256272) b!594100))

(assert (= (and b!594100 res!256282) b!594111))

(assert (= (and b!594111 res!256281) b!594114))

(assert (= (and b!594114 res!256271) b!594102))

(assert (= (and b!594102 res!256274) b!594097))

(assert (= (and b!594097 c!110690) b!594094))

(assert (= (and b!594097 (not c!110690)) b!594109))

(assert (= (and b!594097 res!256279) b!594096))

(assert (= (and b!594096 res!256275) b!594098))

(assert (= (and b!594097 (not res!256280)) b!594108))

(assert (= (and b!594108 (not res!256278)) b!594107))

(assert (= (and start!55914 (is-Cons!5891 suffix!1342)) b!594103))

(assert (= b!594112 b!594093))

(assert (= b!594110 b!594112))

(assert (= (and start!55914 (is-Cons!5893 rules!3103)) b!594110))

(assert (= b!594099 b!594101))

(assert (= b!594105 b!594099))

(assert (= start!55914 b!594105))

(assert (= (and start!55914 (is-Cons!5891 input!2705)) b!594106))

(declare-fun m!856109 () Bool)

(assert (=> b!594092 m!856109))

(assert (=> b!594092 m!856109))

(declare-fun m!856111 () Bool)

(assert (=> b!594092 m!856111))

(declare-fun m!856113 () Bool)

(assert (=> b!594100 m!856113))

(declare-fun m!856115 () Bool)

(assert (=> b!594100 m!856115))

(declare-fun m!856117 () Bool)

(assert (=> b!594100 m!856117))

(declare-fun m!856119 () Bool)

(assert (=> b!594104 m!856119))

(declare-fun m!856121 () Bool)

(assert (=> b!594095 m!856121))

(declare-fun m!856123 () Bool)

(assert (=> b!594097 m!856123))

(declare-fun m!856125 () Bool)

(assert (=> b!594097 m!856125))

(declare-fun m!856127 () Bool)

(assert (=> b!594097 m!856127))

(declare-fun m!856129 () Bool)

(assert (=> b!594097 m!856129))

(declare-fun m!856131 () Bool)

(assert (=> b!594097 m!856131))

(declare-fun m!856133 () Bool)

(assert (=> b!594097 m!856133))

(declare-fun m!856135 () Bool)

(assert (=> b!594097 m!856135))

(declare-fun m!856137 () Bool)

(assert (=> b!594097 m!856137))

(declare-fun m!856139 () Bool)

(assert (=> b!594097 m!856139))

(declare-fun m!856141 () Bool)

(assert (=> b!594097 m!856141))

(declare-fun m!856143 () Bool)

(assert (=> b!594097 m!856143))

(assert (=> b!594097 m!856135))

(declare-fun m!856145 () Bool)

(assert (=> b!594097 m!856145))

(declare-fun m!856147 () Bool)

(assert (=> b!594097 m!856147))

(declare-fun m!856149 () Bool)

(assert (=> b!594097 m!856149))

(declare-fun m!856151 () Bool)

(assert (=> b!594097 m!856151))

(declare-fun m!856153 () Bool)

(assert (=> b!594097 m!856153))

(declare-fun m!856155 () Bool)

(assert (=> b!594097 m!856155))

(assert (=> b!594097 m!856149))

(declare-fun m!856157 () Bool)

(assert (=> b!594097 m!856157))

(declare-fun m!856159 () Bool)

(assert (=> b!594097 m!856159))

(declare-fun m!856161 () Bool)

(assert (=> b!594097 m!856161))

(declare-fun m!856163 () Bool)

(assert (=> b!594097 m!856163))

(declare-fun m!856165 () Bool)

(assert (=> b!594097 m!856165))

(assert (=> b!594097 m!856123))

(declare-fun m!856167 () Bool)

(assert (=> b!594097 m!856167))

(declare-fun m!856169 () Bool)

(assert (=> b!594097 m!856169))

(declare-fun m!856171 () Bool)

(assert (=> b!594097 m!856171))

(declare-fun m!856173 () Bool)

(assert (=> b!594097 m!856173))

(declare-fun m!856175 () Bool)

(assert (=> b!594097 m!856175))

(declare-fun m!856177 () Bool)

(assert (=> b!594113 m!856177))

(declare-fun m!856179 () Bool)

(assert (=> b!594096 m!856179))

(declare-fun m!856181 () Bool)

(assert (=> b!594114 m!856181))

(declare-fun m!856183 () Bool)

(assert (=> b!594112 m!856183))

(declare-fun m!856185 () Bool)

(assert (=> b!594112 m!856185))

(declare-fun m!856187 () Bool)

(assert (=> b!594108 m!856187))

(declare-fun m!856189 () Bool)

(assert (=> b!594108 m!856189))

(declare-fun m!856191 () Bool)

(assert (=> b!594107 m!856191))

(declare-fun m!856193 () Bool)

(assert (=> b!594099 m!856193))

(declare-fun m!856195 () Bool)

(assert (=> b!594099 m!856195))

(declare-fun m!856197 () Bool)

(assert (=> b!594105 m!856197))

(declare-fun m!856199 () Bool)

(assert (=> b!594102 m!856199))

(declare-fun m!856201 () Bool)

(assert (=> start!55914 m!856201))

(declare-fun m!856203 () Bool)

(assert (=> b!594111 m!856203))

(push 1)

(assert (not b!594103))

(assert (not b_next!16769))

(assert (not b!594107))

(assert (not b!594108))

(assert (not b!594113))

(assert (not b_next!16765))

(assert tp_is_empty!3347)

(assert b_and!58583)

(assert (not b!594114))

(assert (not b!594102))

(assert (not b!594112))

(assert (not b!594096))

(assert (not b!594092))

(assert (not b_next!16771))

(assert (not b!594095))

(assert b_and!58581)

(assert (not b!594104))

(assert (not b!594106))

(assert (not b!594105))

(assert (not start!55914))

(assert (not b_next!16767))

(assert b_and!58579)

(assert (not b!594097))

(assert (not b!594110))

(assert (not b!594099))

(assert (not b!594100))

(assert b_and!58585)

(assert (not b!594111))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16769))

(assert (not b_next!16765))

(assert (not b_next!16767))

(assert b_and!58583)

(assert b_and!58579)

(assert b_and!58585)

(assert (not b_next!16771))

(assert b_and!58581)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!208949 () Bool)

(declare-fun res!256331 () Bool)

(declare-fun e!359486 () Bool)

(assert (=> d!208949 (=> (not res!256331) (not e!359486))))

(declare-fun rulesValid!422 (LexerInterface!1048 List!5903) Bool)

(assert (=> d!208949 (= res!256331 (rulesValid!422 thiss!22590 rules!3103))))

(assert (=> d!208949 (= (rulesInvariant!1011 thiss!22590 rules!3103) e!359486)))

(declare-fun b!594186 () Bool)

(declare-datatypes ((List!5907 0))(
  ( (Nil!5897) (Cons!5897 (h!11298 String!7676) (t!79278 List!5907)) )
))
(declare-fun noDuplicateTag!422 (LexerInterface!1048 List!5903 List!5907) Bool)

(assert (=> b!594186 (= e!359486 (noDuplicateTag!422 thiss!22590 rules!3103 Nil!5897))))

(assert (= (and d!208949 res!256331) b!594186))

(declare-fun m!856301 () Bool)

(assert (=> d!208949 m!856301))

(declare-fun m!856303 () Bool)

(assert (=> b!594186 m!856303))

(assert (=> b!594095 d!208949))

(declare-fun d!208951 () Bool)

(declare-fun lt!252073 () Int)

(assert (=> d!208951 (>= lt!252073 0)))

(declare-fun e!359489 () Int)

(assert (=> d!208951 (= lt!252073 e!359489)))

(declare-fun c!110701 () Bool)

(assert (=> d!208951 (= c!110701 (is-Nil!5891 (originalCharacters!1201 (_1!3673 (v!16399 lt!251975)))))))

(assert (=> d!208951 (= (size!4659 (originalCharacters!1201 (_1!3673 (v!16399 lt!251975)))) lt!252073)))

(declare-fun b!594191 () Bool)

(assert (=> b!594191 (= e!359489 0)))

(declare-fun b!594192 () Bool)

(assert (=> b!594192 (= e!359489 (+ 1 (size!4659 (t!79254 (originalCharacters!1201 (_1!3673 (v!16399 lt!251975)))))))))

(assert (= (and d!208951 c!110701) b!594191))

(assert (= (and d!208951 (not c!110701)) b!594192))

(declare-fun m!856305 () Bool)

(assert (=> b!594192 m!856305))

(assert (=> b!594096 d!208951))

(declare-fun b!594204 () Bool)

(declare-fun lt!252076 () List!5901)

(declare-fun e!359494 () Bool)

(assert (=> b!594204 (= e!359494 (or (not (= lt!251977 Nil!5891)) (= lt!252076 lt!251982)))))

(declare-fun b!594202 () Bool)

(declare-fun e!359495 () List!5901)

(assert (=> b!594202 (= e!359495 (Cons!5891 (h!11292 lt!251982) (++!1650 (t!79254 lt!251982) lt!251977)))))

(declare-fun b!594203 () Bool)

(declare-fun res!256339 () Bool)

(assert (=> b!594203 (=> (not res!256339) (not e!359494))))

(assert (=> b!594203 (= res!256339 (= (size!4659 lt!252076) (+ (size!4659 lt!251982) (size!4659 lt!251977))))))

(declare-fun d!208953 () Bool)

(assert (=> d!208953 e!359494))

(declare-fun res!256338 () Bool)

(assert (=> d!208953 (=> (not res!256338) (not e!359494))))

(declare-fun content!1060 (List!5901) (Set C!3914))

(assert (=> d!208953 (= res!256338 (= (content!1060 lt!252076) (set.union (content!1060 lt!251982) (content!1060 lt!251977))))))

(assert (=> d!208953 (= lt!252076 e!359495)))

(declare-fun c!110704 () Bool)

(assert (=> d!208953 (= c!110704 (is-Nil!5891 lt!251982))))

(assert (=> d!208953 (= (++!1650 lt!251982 lt!251977) lt!252076)))

(declare-fun b!594201 () Bool)

(assert (=> b!594201 (= e!359495 lt!251977)))

(assert (= (and d!208953 c!110704) b!594201))

(assert (= (and d!208953 (not c!110704)) b!594202))

(assert (= (and d!208953 res!256338) b!594203))

(assert (= (and b!594203 res!256339) b!594204))

(declare-fun m!856307 () Bool)

(assert (=> b!594202 m!856307))

(declare-fun m!856309 () Bool)

(assert (=> b!594203 m!856309))

(assert (=> b!594203 m!856133))

(declare-fun m!856311 () Bool)

(assert (=> b!594203 m!856311))

(declare-fun m!856313 () Bool)

(assert (=> d!208953 m!856313))

(declare-fun m!856315 () Bool)

(assert (=> d!208953 m!856315))

(declare-fun m!856317 () Bool)

(assert (=> d!208953 m!856317))

(assert (=> b!594107 d!208953))

(declare-fun d!208955 () Bool)

(assert (=> d!208955 (isPrefix!790 lt!251982 (++!1650 lt!251982 suffix!1342))))

(declare-fun lt!252079 () Unit!10708)

(declare-fun choose!4298 (List!5901 List!5901) Unit!10708)

(assert (=> d!208955 (= lt!252079 (choose!4298 lt!251982 suffix!1342))))

(assert (=> d!208955 (= (lemmaConcatTwoListThenFirstIsPrefix!635 lt!251982 suffix!1342) lt!252079)))

(declare-fun bs!70514 () Bool)

(assert (= bs!70514 d!208955))

(assert (=> bs!70514 m!856199))

(assert (=> bs!70514 m!856199))

(declare-fun m!856319 () Bool)

(assert (=> bs!70514 m!856319))

(declare-fun m!856321 () Bool)

(assert (=> bs!70514 m!856321))

(assert (=> b!594097 d!208955))

(declare-fun d!208957 () Bool)

(declare-fun fromListB!585 (List!5901) BalanceConc!3766)

(assert (=> d!208957 (= (seqFromList!1338 lt!251998) (fromListB!585 lt!251998))))

(declare-fun bs!70515 () Bool)

(assert (= bs!70515 d!208957))

(declare-fun m!856323 () Bool)

(assert (=> bs!70515 m!856323))

(assert (=> b!594097 d!208957))

(declare-fun d!208959 () Bool)

(assert (=> d!208959 (ruleValid!360 thiss!22590 (rule!1932 (_1!3673 (v!16399 lt!251975))))))

(declare-fun lt!252082 () Unit!10708)

(declare-fun choose!4299 (LexerInterface!1048 Rule!2124 List!5903) Unit!10708)

(assert (=> d!208959 (= lt!252082 (choose!4299 thiss!22590 (rule!1932 (_1!3673 (v!16399 lt!251975))) rules!3103))))

(declare-fun contains!1384 (List!5903 Rule!2124) Bool)

(assert (=> d!208959 (contains!1384 rules!3103 (rule!1932 (_1!3673 (v!16399 lt!251975))))))

(assert (=> d!208959 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!207 thiss!22590 (rule!1932 (_1!3673 (v!16399 lt!251975))) rules!3103) lt!252082)))

(declare-fun bs!70516 () Bool)

(assert (= bs!70516 d!208959))

(assert (=> bs!70516 m!856143))

(declare-fun m!856325 () Bool)

(assert (=> bs!70516 m!856325))

(declare-fun m!856327 () Bool)

(assert (=> bs!70516 m!856327))

(assert (=> b!594097 d!208959))

(declare-fun lt!252083 () List!5901)

(declare-fun b!594208 () Bool)

(declare-fun e!359496 () Bool)

(assert (=> b!594208 (= e!359496 (or (not (= (_2!3673 (v!16399 lt!251975)) Nil!5891)) (= lt!252083 lt!251998)))))

(declare-fun b!594206 () Bool)

(declare-fun e!359497 () List!5901)

(assert (=> b!594206 (= e!359497 (Cons!5891 (h!11292 lt!251998) (++!1650 (t!79254 lt!251998) (_2!3673 (v!16399 lt!251975)))))))

(declare-fun b!594207 () Bool)

(declare-fun res!256341 () Bool)

(assert (=> b!594207 (=> (not res!256341) (not e!359496))))

(assert (=> b!594207 (= res!256341 (= (size!4659 lt!252083) (+ (size!4659 lt!251998) (size!4659 (_2!3673 (v!16399 lt!251975))))))))

(declare-fun d!208961 () Bool)

(assert (=> d!208961 e!359496))

(declare-fun res!256340 () Bool)

(assert (=> d!208961 (=> (not res!256340) (not e!359496))))

(assert (=> d!208961 (= res!256340 (= (content!1060 lt!252083) (set.union (content!1060 lt!251998) (content!1060 (_2!3673 (v!16399 lt!251975))))))))

(assert (=> d!208961 (= lt!252083 e!359497)))

(declare-fun c!110705 () Bool)

(assert (=> d!208961 (= c!110705 (is-Nil!5891 lt!251998))))

(assert (=> d!208961 (= (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975))) lt!252083)))

(declare-fun b!594205 () Bool)

(assert (=> b!594205 (= e!359497 (_2!3673 (v!16399 lt!251975)))))

(assert (= (and d!208961 c!110705) b!594205))

(assert (= (and d!208961 (not c!110705)) b!594206))

(assert (= (and d!208961 res!256340) b!594207))

(assert (= (and b!594207 res!256341) b!594208))

(declare-fun m!856329 () Bool)

(assert (=> b!594206 m!856329))

(declare-fun m!856331 () Bool)

(assert (=> b!594207 m!856331))

(assert (=> b!594207 m!856129))

(declare-fun m!856333 () Bool)

(assert (=> b!594207 m!856333))

(declare-fun m!856335 () Bool)

(assert (=> d!208961 m!856335))

(declare-fun m!856337 () Bool)

(assert (=> d!208961 m!856337))

(declare-fun m!856339 () Bool)

(assert (=> d!208961 m!856339))

(assert (=> b!594097 d!208961))

(declare-fun b!594219 () Bool)

(declare-fun e!359504 () Bool)

(declare-fun tail!786 (List!5901) List!5901)

(assert (=> b!594219 (= e!359504 (isPrefix!790 (tail!786 input!2705) (tail!786 lt!251986)))))

(declare-fun b!594220 () Bool)

(declare-fun e!359506 () Bool)

(assert (=> b!594220 (= e!359506 (>= (size!4659 lt!251986) (size!4659 input!2705)))))

(declare-fun b!594218 () Bool)

(declare-fun res!256352 () Bool)

(assert (=> b!594218 (=> (not res!256352) (not e!359504))))

(declare-fun head!1257 (List!5901) C!3914)

(assert (=> b!594218 (= res!256352 (= (head!1257 input!2705) (head!1257 lt!251986)))))

(declare-fun d!208963 () Bool)

(assert (=> d!208963 e!359506))

(declare-fun res!256353 () Bool)

(assert (=> d!208963 (=> res!256353 e!359506)))

(declare-fun lt!252086 () Bool)

(assert (=> d!208963 (= res!256353 (not lt!252086))))

(declare-fun e!359505 () Bool)

(assert (=> d!208963 (= lt!252086 e!359505)))

(declare-fun res!256350 () Bool)

(assert (=> d!208963 (=> res!256350 e!359505)))

(assert (=> d!208963 (= res!256350 (is-Nil!5891 input!2705))))

(assert (=> d!208963 (= (isPrefix!790 input!2705 lt!251986) lt!252086)))

(declare-fun b!594217 () Bool)

(assert (=> b!594217 (= e!359505 e!359504)))

(declare-fun res!256351 () Bool)

(assert (=> b!594217 (=> (not res!256351) (not e!359504))))

(assert (=> b!594217 (= res!256351 (not (is-Nil!5891 lt!251986)))))

(assert (= (and d!208963 (not res!256350)) b!594217))

(assert (= (and b!594217 res!256351) b!594218))

(assert (= (and b!594218 res!256352) b!594219))

(assert (= (and d!208963 (not res!256353)) b!594220))

(declare-fun m!856341 () Bool)

(assert (=> b!594219 m!856341))

(declare-fun m!856343 () Bool)

(assert (=> b!594219 m!856343))

(assert (=> b!594219 m!856341))

(assert (=> b!594219 m!856343))

(declare-fun m!856345 () Bool)

(assert (=> b!594219 m!856345))

(declare-fun m!856347 () Bool)

(assert (=> b!594220 m!856347))

(declare-fun m!856349 () Bool)

(assert (=> b!594220 m!856349))

(declare-fun m!856351 () Bool)

(assert (=> b!594218 m!856351))

(declare-fun m!856353 () Bool)

(assert (=> b!594218 m!856353))

(assert (=> b!594097 d!208963))

(declare-fun d!208965 () Bool)

(assert (=> d!208965 (isPrefix!790 input!2705 input!2705)))

(declare-fun lt!252089 () Unit!10708)

(declare-fun choose!4300 (List!5901 List!5901) Unit!10708)

(assert (=> d!208965 (= lt!252089 (choose!4300 input!2705 input!2705))))

(assert (=> d!208965 (= (lemmaIsPrefixRefl!526 input!2705 input!2705) lt!252089)))

(declare-fun bs!70517 () Bool)

(assert (= bs!70517 d!208965))

(assert (=> bs!70517 m!856173))

(declare-fun m!856355 () Bool)

(assert (=> bs!70517 m!856355))

(assert (=> b!594097 d!208965))

(declare-fun d!208967 () Bool)

(declare-fun dynLambda!3425 (Int BalanceConc!3766) TokenValue!1186)

(assert (=> d!208967 (= (apply!1415 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))) (seqFromList!1338 lt!251998)) (dynLambda!3425 (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (seqFromList!1338 lt!251998)))))

(declare-fun b_lambda!23393 () Bool)

(assert (=> (not b_lambda!23393) (not d!208967)))

(declare-fun tb!51891 () Bool)

(declare-fun t!79261 () Bool)

(assert (=> (and b!594093 (= (toValue!2053 (transformation!1162 (h!11294 rules!3103))) (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))) t!79261) tb!51891))

(declare-fun result!58254 () Bool)

(assert (=> tb!51891 (= result!58254 (inv!21 (dynLambda!3425 (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (seqFromList!1338 lt!251998))))))

(declare-fun m!856357 () Bool)

(assert (=> tb!51891 m!856357))

(assert (=> d!208967 t!79261))

(declare-fun b_and!58595 () Bool)

(assert (= b_and!58579 (and (=> t!79261 result!58254) b_and!58595)))

(declare-fun t!79263 () Bool)

(declare-fun tb!51893 () Bool)

(assert (=> (and b!594101 (= (toValue!2053 (transformation!1162 (rule!1932 token!491))) (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))) t!79263) tb!51893))

(declare-fun result!58258 () Bool)

(assert (= result!58258 result!58254))

(assert (=> d!208967 t!79263))

(declare-fun b_and!58597 () Bool)

(assert (= b_and!58583 (and (=> t!79263 result!58258) b_and!58597)))

(assert (=> d!208967 m!856135))

(declare-fun m!856359 () Bool)

(assert (=> d!208967 m!856359))

(assert (=> b!594097 d!208967))

(declare-fun d!208969 () Bool)

(assert (=> d!208969 (and (= lt!251982 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!252092 () Unit!10708)

(declare-fun choose!4301 (List!5901 List!5901 List!5901 List!5901) Unit!10708)

(assert (=> d!208969 (= lt!252092 (choose!4301 lt!251982 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!208969 (= (++!1650 lt!251982 suffix!1342) (++!1650 input!2705 suffix!1342))))

(assert (=> d!208969 (= (lemmaConcatSameAndSameSizesThenSameLists!235 lt!251982 suffix!1342 input!2705 suffix!1342) lt!252092)))

(declare-fun bs!70518 () Bool)

(assert (= bs!70518 d!208969))

(declare-fun m!856361 () Bool)

(assert (=> bs!70518 m!856361))

(assert (=> bs!70518 m!856199))

(assert (=> bs!70518 m!856117))

(assert (=> b!594097 d!208969))

(declare-fun d!208971 () Bool)

(declare-fun lt!252093 () Int)

(assert (=> d!208971 (>= lt!252093 0)))

(declare-fun e!359510 () Int)

(assert (=> d!208971 (= lt!252093 e!359510)))

(declare-fun c!110706 () Bool)

(assert (=> d!208971 (= c!110706 (is-Nil!5891 lt!251998))))

(assert (=> d!208971 (= (size!4659 lt!251998) lt!252093)))

(declare-fun b!594223 () Bool)

(assert (=> b!594223 (= e!359510 0)))

(declare-fun b!594224 () Bool)

(assert (=> b!594224 (= e!359510 (+ 1 (size!4659 (t!79254 lt!251998))))))

(assert (= (and d!208971 c!110706) b!594223))

(assert (= (and d!208971 (not c!110706)) b!594224))

(declare-fun m!856363 () Bool)

(assert (=> b!594224 m!856363))

(assert (=> b!594097 d!208971))

(declare-fun d!208973 () Bool)

(declare-fun lt!252096 () List!5901)

(assert (=> d!208973 (= (++!1650 lt!251998 lt!252096) input!2705)))

(declare-fun e!359513 () List!5901)

(assert (=> d!208973 (= lt!252096 e!359513)))

(declare-fun c!110709 () Bool)

(assert (=> d!208973 (= c!110709 (is-Cons!5891 lt!251998))))

(assert (=> d!208973 (>= (size!4659 input!2705) (size!4659 lt!251998))))

(assert (=> d!208973 (= (getSuffix!307 input!2705 lt!251998) lt!252096)))

(declare-fun b!594229 () Bool)

(assert (=> b!594229 (= e!359513 (getSuffix!307 (tail!786 input!2705) (t!79254 lt!251998)))))

(declare-fun b!594230 () Bool)

(assert (=> b!594230 (= e!359513 input!2705)))

(assert (= (and d!208973 c!110709) b!594229))

(assert (= (and d!208973 (not c!110709)) b!594230))

(declare-fun m!856365 () Bool)

(assert (=> d!208973 m!856365))

(assert (=> d!208973 m!856349))

(assert (=> d!208973 m!856129))

(assert (=> b!594229 m!856341))

(assert (=> b!594229 m!856341))

(declare-fun m!856367 () Bool)

(assert (=> b!594229 m!856367))

(assert (=> b!594097 d!208973))

(declare-fun b!594233 () Bool)

(declare-fun e!359514 () Bool)

(assert (=> b!594233 (= e!359514 (isPrefix!790 (tail!786 lt!251998) (tail!786 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975))))))))

(declare-fun b!594234 () Bool)

(declare-fun e!359516 () Bool)

(assert (=> b!594234 (= e!359516 (>= (size!4659 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975)))) (size!4659 lt!251998)))))

(declare-fun b!594232 () Bool)

(declare-fun res!256356 () Bool)

(assert (=> b!594232 (=> (not res!256356) (not e!359514))))

(assert (=> b!594232 (= res!256356 (= (head!1257 lt!251998) (head!1257 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975))))))))

(declare-fun d!208979 () Bool)

(assert (=> d!208979 e!359516))

(declare-fun res!256357 () Bool)

(assert (=> d!208979 (=> res!256357 e!359516)))

(declare-fun lt!252097 () Bool)

(assert (=> d!208979 (= res!256357 (not lt!252097))))

(declare-fun e!359515 () Bool)

(assert (=> d!208979 (= lt!252097 e!359515)))

(declare-fun res!256354 () Bool)

(assert (=> d!208979 (=> res!256354 e!359515)))

(assert (=> d!208979 (= res!256354 (is-Nil!5891 lt!251998))))

(assert (=> d!208979 (= (isPrefix!790 lt!251998 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975)))) lt!252097)))

(declare-fun b!594231 () Bool)

(assert (=> b!594231 (= e!359515 e!359514)))

(declare-fun res!256355 () Bool)

(assert (=> b!594231 (=> (not res!256355) (not e!359514))))

(assert (=> b!594231 (= res!256355 (not (is-Nil!5891 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975))))))))

(assert (= (and d!208979 (not res!256354)) b!594231))

(assert (= (and b!594231 res!256355) b!594232))

(assert (= (and b!594232 res!256356) b!594233))

(assert (= (and d!208979 (not res!256357)) b!594234))

(declare-fun m!856369 () Bool)

(assert (=> b!594233 m!856369))

(assert (=> b!594233 m!856123))

(declare-fun m!856371 () Bool)

(assert (=> b!594233 m!856371))

(assert (=> b!594233 m!856369))

(assert (=> b!594233 m!856371))

(declare-fun m!856373 () Bool)

(assert (=> b!594233 m!856373))

(assert (=> b!594234 m!856123))

(declare-fun m!856375 () Bool)

(assert (=> b!594234 m!856375))

(assert (=> b!594234 m!856129))

(declare-fun m!856377 () Bool)

(assert (=> b!594232 m!856377))

(assert (=> b!594232 m!856123))

(declare-fun m!856379 () Bool)

(assert (=> b!594232 m!856379))

(assert (=> b!594097 d!208979))

(declare-fun d!208981 () Bool)

(assert (=> d!208981 (isPrefix!790 lt!251998 (++!1650 lt!251998 (_2!3673 (v!16399 lt!251975))))))

(declare-fun lt!252098 () Unit!10708)

(assert (=> d!208981 (= lt!252098 (choose!4298 lt!251998 (_2!3673 (v!16399 lt!251975))))))

(assert (=> d!208981 (= (lemmaConcatTwoListThenFirstIsPrefix!635 lt!251998 (_2!3673 (v!16399 lt!251975))) lt!252098)))

(declare-fun bs!70519 () Bool)

(assert (= bs!70519 d!208981))

(assert (=> bs!70519 m!856123))

(assert (=> bs!70519 m!856123))

(assert (=> bs!70519 m!856167))

(declare-fun m!856381 () Bool)

(assert (=> bs!70519 m!856381))

(assert (=> b!594097 d!208981))

(declare-fun d!208983 () Bool)

(declare-fun e!359519 () Bool)

(assert (=> d!208983 e!359519))

(declare-fun res!256360 () Bool)

(assert (=> d!208983 (=> (not res!256360) (not e!359519))))

(declare-fun semiInverseModEq!458 (Int Int) Bool)

(assert (=> d!208983 (= res!256360 (semiInverseModEq!458 (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))))))

(declare-fun Unit!10717 () Unit!10708)

(assert (=> d!208983 (= (lemmaInv!270 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) Unit!10717)))

(declare-fun b!594237 () Bool)

(declare-fun equivClasses!441 (Int Int) Bool)

(assert (=> b!594237 (= e!359519 (equivClasses!441 (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))))))

(assert (= (and d!208983 res!256360) b!594237))

(declare-fun m!856383 () Bool)

(assert (=> d!208983 m!856383))

(declare-fun m!856385 () Bool)

(assert (=> b!594237 m!856385))

(assert (=> b!594097 d!208983))

(declare-fun d!208985 () Bool)

(assert (=> d!208985 (= (size!4658 (_1!3673 (v!16399 lt!251975))) (size!4659 (originalCharacters!1201 (_1!3673 (v!16399 lt!251975)))))))

(declare-fun Unit!10718 () Unit!10708)

(assert (=> d!208985 (= (lemmaCharactersSize!221 (_1!3673 (v!16399 lt!251975))) Unit!10718)))

(declare-fun bs!70520 () Bool)

(assert (= bs!70520 d!208985))

(assert (=> bs!70520 m!856179))

(assert (=> b!594097 d!208985))

(declare-fun b!594240 () Bool)

(declare-fun e!359520 () Bool)

(assert (=> b!594240 (= e!359520 (isPrefix!790 (tail!786 input!2705) (tail!786 input!2705)))))

(declare-fun b!594241 () Bool)

(declare-fun e!359522 () Bool)

(assert (=> b!594241 (= e!359522 (>= (size!4659 input!2705) (size!4659 input!2705)))))

(declare-fun b!594239 () Bool)

(declare-fun res!256363 () Bool)

(assert (=> b!594239 (=> (not res!256363) (not e!359520))))

(assert (=> b!594239 (= res!256363 (= (head!1257 input!2705) (head!1257 input!2705)))))

(declare-fun d!208987 () Bool)

(assert (=> d!208987 e!359522))

(declare-fun res!256364 () Bool)

(assert (=> d!208987 (=> res!256364 e!359522)))

(declare-fun lt!252099 () Bool)

(assert (=> d!208987 (= res!256364 (not lt!252099))))

(declare-fun e!359521 () Bool)

(assert (=> d!208987 (= lt!252099 e!359521)))

(declare-fun res!256361 () Bool)

(assert (=> d!208987 (=> res!256361 e!359521)))

(assert (=> d!208987 (= res!256361 (is-Nil!5891 input!2705))))

(assert (=> d!208987 (= (isPrefix!790 input!2705 input!2705) lt!252099)))

(declare-fun b!594238 () Bool)

(assert (=> b!594238 (= e!359521 e!359520)))

(declare-fun res!256362 () Bool)

(assert (=> b!594238 (=> (not res!256362) (not e!359520))))

(assert (=> b!594238 (= res!256362 (not (is-Nil!5891 input!2705)))))

(assert (= (and d!208987 (not res!256361)) b!594238))

(assert (= (and b!594238 res!256362) b!594239))

(assert (= (and b!594239 res!256363) b!594240))

(assert (= (and d!208987 (not res!256364)) b!594241))

(assert (=> b!594240 m!856341))

(assert (=> b!594240 m!856341))

(assert (=> b!594240 m!856341))

(assert (=> b!594240 m!856341))

(declare-fun m!856387 () Bool)

(assert (=> b!594240 m!856387))

(assert (=> b!594241 m!856349))

(assert (=> b!594241 m!856349))

(assert (=> b!594239 m!856351))

(assert (=> b!594239 m!856351))

(assert (=> b!594097 d!208987))

(declare-fun d!208989 () Bool)

(assert (=> d!208989 (ruleValid!360 thiss!22590 (rule!1932 token!491))))

(declare-fun lt!252100 () Unit!10708)

(assert (=> d!208989 (= lt!252100 (choose!4299 thiss!22590 (rule!1932 token!491) rules!3103))))

(assert (=> d!208989 (contains!1384 rules!3103 (rule!1932 token!491))))

(assert (=> d!208989 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!207 thiss!22590 (rule!1932 token!491) rules!3103) lt!252100)))

(declare-fun bs!70521 () Bool)

(assert (= bs!70521 d!208989))

(assert (=> bs!70521 m!856127))

(declare-fun m!856389 () Bool)

(assert (=> bs!70521 m!856389))

(declare-fun m!856391 () Bool)

(assert (=> bs!70521 m!856391))

(assert (=> b!594097 d!208989))

(declare-fun d!208991 () Bool)

(assert (=> d!208991 (isPrefix!790 input!2705 (++!1650 input!2705 suffix!1342))))

(declare-fun lt!252101 () Unit!10708)

(assert (=> d!208991 (= lt!252101 (choose!4298 input!2705 suffix!1342))))

(assert (=> d!208991 (= (lemmaConcatTwoListThenFirstIsPrefix!635 input!2705 suffix!1342) lt!252101)))

(declare-fun bs!70522 () Bool)

(assert (= bs!70522 d!208991))

(assert (=> bs!70522 m!856117))

(assert (=> bs!70522 m!856117))

(declare-fun m!856393 () Bool)

(assert (=> bs!70522 m!856393))

(declare-fun m!856395 () Bool)

(assert (=> bs!70522 m!856395))

(assert (=> b!594097 d!208991))

(declare-fun d!208993 () Bool)

(declare-fun lt!252102 () Int)

(assert (=> d!208993 (>= lt!252102 0)))

(declare-fun e!359523 () Int)

(assert (=> d!208993 (= lt!252102 e!359523)))

(declare-fun c!110710 () Bool)

(assert (=> d!208993 (= c!110710 (is-Nil!5891 lt!251982))))

(assert (=> d!208993 (= (size!4659 lt!251982) lt!252102)))

(declare-fun b!594242 () Bool)

(assert (=> b!594242 (= e!359523 0)))

(declare-fun b!594243 () Bool)

(assert (=> b!594243 (= e!359523 (+ 1 (size!4659 (t!79254 lt!251982))))))

(assert (= (and d!208993 c!110710) b!594242))

(assert (= (and d!208993 (not c!110710)) b!594243))

(declare-fun m!856397 () Bool)

(assert (=> b!594243 m!856397))

(assert (=> b!594097 d!208993))

(declare-fun d!208995 () Bool)

(declare-fun list!2469 (Conc!1879) List!5901)

(assert (=> d!208995 (= (list!2467 (charsOf!791 (_1!3673 (v!16399 lt!251975)))) (list!2469 (c!110692 (charsOf!791 (_1!3673 (v!16399 lt!251975))))))))

(declare-fun bs!70523 () Bool)

(assert (= bs!70523 d!208995))

(declare-fun m!856399 () Bool)

(assert (=> bs!70523 m!856399))

(assert (=> b!594097 d!208995))

(declare-fun d!208997 () Bool)

(declare-fun res!256369 () Bool)

(declare-fun e!359526 () Bool)

(assert (=> d!208997 (=> (not res!256369) (not e!359526))))

(declare-fun validRegex!511 (Regex!1496) Bool)

(assert (=> d!208997 (= res!256369 (validRegex!511 (regex!1162 (rule!1932 token!491))))))

(assert (=> d!208997 (= (ruleValid!360 thiss!22590 (rule!1932 token!491)) e!359526)))

(declare-fun b!594248 () Bool)

(declare-fun res!256370 () Bool)

(assert (=> b!594248 (=> (not res!256370) (not e!359526))))

(declare-fun nullable!416 (Regex!1496) Bool)

(assert (=> b!594248 (= res!256370 (not (nullable!416 (regex!1162 (rule!1932 token!491)))))))

(declare-fun b!594249 () Bool)

(assert (=> b!594249 (= e!359526 (not (= (tag!1424 (rule!1932 token!491)) (String!7677 ""))))))

(assert (= (and d!208997 res!256369) b!594248))

(assert (= (and b!594248 res!256370) b!594249))

(declare-fun m!856401 () Bool)

(assert (=> d!208997 m!856401))

(declare-fun m!856403 () Bool)

(assert (=> b!594248 m!856403))

(assert (=> b!594097 d!208997))

(declare-fun b!594252 () Bool)

(declare-fun e!359527 () Bool)

(assert (=> b!594252 (= e!359527 (isPrefix!790 (tail!786 lt!251982) (tail!786 lt!251976)))))

(declare-fun b!594253 () Bool)

(declare-fun e!359529 () Bool)

(assert (=> b!594253 (= e!359529 (>= (size!4659 lt!251976) (size!4659 lt!251982)))))

(declare-fun b!594251 () Bool)

(declare-fun res!256373 () Bool)

(assert (=> b!594251 (=> (not res!256373) (not e!359527))))

(assert (=> b!594251 (= res!256373 (= (head!1257 lt!251982) (head!1257 lt!251976)))))

(declare-fun d!208999 () Bool)

(assert (=> d!208999 e!359529))

(declare-fun res!256374 () Bool)

(assert (=> d!208999 (=> res!256374 e!359529)))

(declare-fun lt!252103 () Bool)

(assert (=> d!208999 (= res!256374 (not lt!252103))))

(declare-fun e!359528 () Bool)

(assert (=> d!208999 (= lt!252103 e!359528)))

(declare-fun res!256371 () Bool)

(assert (=> d!208999 (=> res!256371 e!359528)))

(assert (=> d!208999 (= res!256371 (is-Nil!5891 lt!251982))))

(assert (=> d!208999 (= (isPrefix!790 lt!251982 lt!251976) lt!252103)))

(declare-fun b!594250 () Bool)

(assert (=> b!594250 (= e!359528 e!359527)))

(declare-fun res!256372 () Bool)

(assert (=> b!594250 (=> (not res!256372) (not e!359527))))

(assert (=> b!594250 (= res!256372 (not (is-Nil!5891 lt!251976)))))

(assert (= (and d!208999 (not res!256371)) b!594250))

(assert (= (and b!594250 res!256372) b!594251))

(assert (= (and b!594251 res!256373) b!594252))

(assert (= (and d!208999 (not res!256374)) b!594253))

(declare-fun m!856405 () Bool)

(assert (=> b!594252 m!856405))

(declare-fun m!856407 () Bool)

(assert (=> b!594252 m!856407))

(assert (=> b!594252 m!856405))

(assert (=> b!594252 m!856407))

(declare-fun m!856409 () Bool)

(assert (=> b!594252 m!856409))

(declare-fun m!856411 () Bool)

(assert (=> b!594253 m!856411))

(assert (=> b!594253 m!856133))

(declare-fun m!856413 () Bool)

(assert (=> b!594251 m!856413))

(declare-fun m!856415 () Bool)

(assert (=> b!594251 m!856415))

(assert (=> b!594097 d!208999))

(declare-fun d!209001 () Bool)

(declare-fun res!256375 () Bool)

(declare-fun e!359530 () Bool)

(assert (=> d!209001 (=> (not res!256375) (not e!359530))))

(assert (=> d!209001 (= res!256375 (validRegex!511 (regex!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))))))

(assert (=> d!209001 (= (ruleValid!360 thiss!22590 (rule!1932 (_1!3673 (v!16399 lt!251975)))) e!359530)))

(declare-fun b!594254 () Bool)

(declare-fun res!256376 () Bool)

(assert (=> b!594254 (=> (not res!256376) (not e!359530))))

(assert (=> b!594254 (= res!256376 (not (nullable!416 (regex!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))))))

(declare-fun b!594255 () Bool)

(assert (=> b!594255 (= e!359530 (not (= (tag!1424 (rule!1932 (_1!3673 (v!16399 lt!251975)))) (String!7677 ""))))))

(assert (= (and d!209001 res!256375) b!594254))

(assert (= (and b!594254 res!256376) b!594255))

(declare-fun m!856417 () Bool)

(assert (=> d!209001 m!856417))

(declare-fun m!856419 () Bool)

(assert (=> b!594254 m!856419))

(assert (=> b!594097 d!209001))

(declare-fun d!209003 () Bool)

(assert (=> d!209003 (= (_2!3673 (v!16399 lt!251975)) lt!251989)))

(declare-fun lt!252106 () Unit!10708)

(declare-fun choose!4302 (List!5901 List!5901 List!5901 List!5901 List!5901) Unit!10708)

(assert (=> d!209003 (= lt!252106 (choose!4302 lt!251998 (_2!3673 (v!16399 lt!251975)) lt!251998 lt!251989 input!2705))))

(assert (=> d!209003 (isPrefix!790 lt!251998 input!2705)))

(assert (=> d!209003 (= (lemmaSamePrefixThenSameSuffix!503 lt!251998 (_2!3673 (v!16399 lt!251975)) lt!251998 lt!251989 input!2705) lt!252106)))

(declare-fun bs!70524 () Bool)

(assert (= bs!70524 d!209003))

(declare-fun m!856421 () Bool)

(assert (=> bs!70524 m!856421))

(declare-fun m!856423 () Bool)

(assert (=> bs!70524 m!856423))

(assert (=> b!594097 d!209003))

(declare-fun b!594258 () Bool)

(declare-fun e!359531 () Bool)

(assert (=> b!594258 (= e!359531 (isPrefix!790 (tail!786 input!2705) (tail!786 lt!251976)))))

(declare-fun b!594259 () Bool)

(declare-fun e!359533 () Bool)

(assert (=> b!594259 (= e!359533 (>= (size!4659 lt!251976) (size!4659 input!2705)))))

(declare-fun b!594257 () Bool)

(declare-fun res!256379 () Bool)

(assert (=> b!594257 (=> (not res!256379) (not e!359531))))

(assert (=> b!594257 (= res!256379 (= (head!1257 input!2705) (head!1257 lt!251976)))))

(declare-fun d!209005 () Bool)

(assert (=> d!209005 e!359533))

(declare-fun res!256380 () Bool)

(assert (=> d!209005 (=> res!256380 e!359533)))

(declare-fun lt!252107 () Bool)

(assert (=> d!209005 (= res!256380 (not lt!252107))))

(declare-fun e!359532 () Bool)

(assert (=> d!209005 (= lt!252107 e!359532)))

(declare-fun res!256377 () Bool)

(assert (=> d!209005 (=> res!256377 e!359532)))

(assert (=> d!209005 (= res!256377 (is-Nil!5891 input!2705))))

(assert (=> d!209005 (= (isPrefix!790 input!2705 lt!251976) lt!252107)))

(declare-fun b!594256 () Bool)

(assert (=> b!594256 (= e!359532 e!359531)))

(declare-fun res!256378 () Bool)

(assert (=> b!594256 (=> (not res!256378) (not e!359531))))

(assert (=> b!594256 (= res!256378 (not (is-Nil!5891 lt!251976)))))

(assert (= (and d!209005 (not res!256377)) b!594256))

(assert (= (and b!594256 res!256378) b!594257))

(assert (= (and b!594257 res!256379) b!594258))

(assert (= (and d!209005 (not res!256380)) b!594259))

(assert (=> b!594258 m!856341))

(assert (=> b!594258 m!856407))

(assert (=> b!594258 m!856341))

(assert (=> b!594258 m!856407))

(declare-fun m!856425 () Bool)

(assert (=> b!594258 m!856425))

(assert (=> b!594259 m!856411))

(assert (=> b!594259 m!856349))

(assert (=> b!594257 m!856351))

(assert (=> b!594257 m!856415))

(assert (=> b!594097 d!209005))

(declare-fun d!209007 () Bool)

(declare-fun e!359534 () Bool)

(assert (=> d!209007 e!359534))

(declare-fun res!256381 () Bool)

(assert (=> d!209007 (=> (not res!256381) (not e!359534))))

(assert (=> d!209007 (= res!256381 (semiInverseModEq!458 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (toValue!2053 (transformation!1162 (rule!1932 token!491)))))))

(declare-fun Unit!10719 () Unit!10708)

(assert (=> d!209007 (= (lemmaInv!270 (transformation!1162 (rule!1932 token!491))) Unit!10719)))

(declare-fun b!594260 () Bool)

(assert (=> b!594260 (= e!359534 (equivClasses!441 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (toValue!2053 (transformation!1162 (rule!1932 token!491)))))))

(assert (= (and d!209007 res!256381) b!594260))

(declare-fun m!856427 () Bool)

(assert (=> d!209007 m!856427))

(declare-fun m!856429 () Bool)

(assert (=> b!594260 m!856429))

(assert (=> b!594097 d!209007))

(declare-fun d!209009 () Bool)

(declare-fun lt!252110 () BalanceConc!3766)

(assert (=> d!209009 (= (list!2467 lt!252110) (originalCharacters!1201 (_1!3673 (v!16399 lt!251975))))))

(declare-fun dynLambda!3426 (Int TokenValue!1186) BalanceConc!3766)

(assert (=> d!209009 (= lt!252110 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (value!37985 (_1!3673 (v!16399 lt!251975)))))))

(assert (=> d!209009 (= (charsOf!791 (_1!3673 (v!16399 lt!251975))) lt!252110)))

(declare-fun b_lambda!23395 () Bool)

(assert (=> (not b_lambda!23395) (not d!209009)))

(declare-fun t!79265 () Bool)

(declare-fun tb!51895 () Bool)

(assert (=> (and b!594093 (= (toChars!1912 (transformation!1162 (h!11294 rules!3103))) (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))) t!79265) tb!51895))

(declare-fun b!594265 () Bool)

(declare-fun e!359537 () Bool)

(declare-fun tp!185305 () Bool)

(declare-fun inv!7471 (Conc!1879) Bool)

(assert (=> b!594265 (= e!359537 (and (inv!7471 (c!110692 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (value!37985 (_1!3673 (v!16399 lt!251975)))))) tp!185305))))

(declare-fun result!58260 () Bool)

(declare-fun inv!7472 (BalanceConc!3766) Bool)

(assert (=> tb!51895 (= result!58260 (and (inv!7472 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975))))) (value!37985 (_1!3673 (v!16399 lt!251975))))) e!359537))))

(assert (= tb!51895 b!594265))

(declare-fun m!856431 () Bool)

(assert (=> b!594265 m!856431))

(declare-fun m!856433 () Bool)

(assert (=> tb!51895 m!856433))

(assert (=> d!209009 t!79265))

(declare-fun b_and!58599 () Bool)

(assert (= b_and!58581 (and (=> t!79265 result!58260) b_and!58599)))

(declare-fun tb!51897 () Bool)

(declare-fun t!79267 () Bool)

(assert (=> (and b!594101 (= (toChars!1912 (transformation!1162 (rule!1932 token!491))) (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))) t!79267) tb!51897))

(declare-fun result!58264 () Bool)

(assert (= result!58264 result!58260))

(assert (=> d!209009 t!79267))

(declare-fun b_and!58601 () Bool)

(assert (= b_and!58585 (and (=> t!79267 result!58264) b_and!58601)))

(declare-fun m!856435 () Bool)

(assert (=> d!209009 m!856435))

(declare-fun m!856437 () Bool)

(assert (=> d!209009 m!856437))

(assert (=> b!594097 d!209009))

(declare-fun d!209011 () Bool)

(assert (=> d!209011 (= (size!4658 token!491) (size!4659 (originalCharacters!1201 token!491)))))

(declare-fun Unit!10720 () Unit!10708)

(assert (=> d!209011 (= (lemmaCharactersSize!221 token!491) Unit!10720)))

(declare-fun bs!70525 () Bool)

(assert (= bs!70525 d!209011))

(declare-fun m!856439 () Bool)

(assert (=> bs!70525 m!856439))

(assert (=> b!594097 d!209011))

(declare-fun b!594268 () Bool)

(declare-fun e!359538 () Bool)

(assert (=> b!594268 (= e!359538 (isPrefix!790 (tail!786 lt!251982) (tail!786 lt!251986)))))

(declare-fun b!594269 () Bool)

(declare-fun e!359540 () Bool)

(assert (=> b!594269 (= e!359540 (>= (size!4659 lt!251986) (size!4659 lt!251982)))))

(declare-fun b!594267 () Bool)

(declare-fun res!256384 () Bool)

(assert (=> b!594267 (=> (not res!256384) (not e!359538))))

(assert (=> b!594267 (= res!256384 (= (head!1257 lt!251982) (head!1257 lt!251986)))))

(declare-fun d!209013 () Bool)

(assert (=> d!209013 e!359540))

(declare-fun res!256385 () Bool)

(assert (=> d!209013 (=> res!256385 e!359540)))

(declare-fun lt!252111 () Bool)

(assert (=> d!209013 (= res!256385 (not lt!252111))))

(declare-fun e!359539 () Bool)

(assert (=> d!209013 (= lt!252111 e!359539)))

(declare-fun res!256382 () Bool)

(assert (=> d!209013 (=> res!256382 e!359539)))

(assert (=> d!209013 (= res!256382 (is-Nil!5891 lt!251982))))

(assert (=> d!209013 (= (isPrefix!790 lt!251982 lt!251986) lt!252111)))

(declare-fun b!594266 () Bool)

(assert (=> b!594266 (= e!359539 e!359538)))

(declare-fun res!256383 () Bool)

(assert (=> b!594266 (=> (not res!256383) (not e!359538))))

(assert (=> b!594266 (= res!256383 (not (is-Nil!5891 lt!251986)))))

(assert (= (and d!209013 (not res!256382)) b!594266))

(assert (= (and b!594266 res!256383) b!594267))

(assert (= (and b!594267 res!256384) b!594268))

(assert (= (and d!209013 (not res!256385)) b!594269))

(assert (=> b!594268 m!856405))

(assert (=> b!594268 m!856343))

(assert (=> b!594268 m!856405))

(assert (=> b!594268 m!856343))

(declare-fun m!856441 () Bool)

(assert (=> b!594268 m!856441))

(assert (=> b!594269 m!856347))

(assert (=> b!594269 m!856133))

(assert (=> b!594267 m!856413))

(assert (=> b!594267 m!856353))

(assert (=> b!594108 d!209013))

(declare-fun d!209015 () Bool)

(declare-fun lt!252112 () List!5901)

(assert (=> d!209015 (= (++!1650 lt!251982 lt!252112) lt!251986)))

(declare-fun e!359541 () List!5901)

(assert (=> d!209015 (= lt!252112 e!359541)))

(declare-fun c!110711 () Bool)

(assert (=> d!209015 (= c!110711 (is-Cons!5891 lt!251982))))

(assert (=> d!209015 (>= (size!4659 lt!251986) (size!4659 lt!251982))))

(assert (=> d!209015 (= (getSuffix!307 lt!251986 lt!251982) lt!252112)))

(declare-fun b!594270 () Bool)

(assert (=> b!594270 (= e!359541 (getSuffix!307 (tail!786 lt!251986) (t!79254 lt!251982)))))

(declare-fun b!594271 () Bool)

(assert (=> b!594271 (= e!359541 lt!251986)))

(assert (= (and d!209015 c!110711) b!594270))

(assert (= (and d!209015 (not c!110711)) b!594271))

(declare-fun m!856443 () Bool)

(assert (=> d!209015 m!856443))

(assert (=> d!209015 m!856347))

(assert (=> d!209015 m!856133))

(assert (=> b!594270 m!856343))

(assert (=> b!594270 m!856343))

(declare-fun m!856445 () Bool)

(assert (=> b!594270 m!856445))

(assert (=> b!594108 d!209015))

(declare-fun d!209017 () Bool)

(assert (=> d!209017 (= (inv!7464 (tag!1424 (rule!1932 token!491))) (= (mod (str.len (value!37984 (tag!1424 (rule!1932 token!491)))) 2) 0))))

(assert (=> b!594099 d!209017))

(declare-fun d!209019 () Bool)

(declare-fun res!256388 () Bool)

(declare-fun e!359544 () Bool)

(assert (=> d!209019 (=> (not res!256388) (not e!359544))))

(assert (=> d!209019 (= res!256388 (semiInverseModEq!458 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (toValue!2053 (transformation!1162 (rule!1932 token!491)))))))

(assert (=> d!209019 (= (inv!7468 (transformation!1162 (rule!1932 token!491))) e!359544)))

(declare-fun b!594274 () Bool)

(assert (=> b!594274 (= e!359544 (equivClasses!441 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (toValue!2053 (transformation!1162 (rule!1932 token!491)))))))

(assert (= (and d!209019 res!256388) b!594274))

(assert (=> d!209019 m!856427))

(assert (=> b!594274 m!856429))

(assert (=> b!594099 d!209019))

(declare-fun d!209021 () Bool)

(declare-fun isEmpty!4257 (Option!1513) Bool)

(assert (=> d!209021 (= (isDefined!1324 lt!251984) (not (isEmpty!4257 lt!251984)))))

(declare-fun bs!70526 () Bool)

(assert (= bs!70526 d!209021))

(declare-fun m!856447 () Bool)

(assert (=> bs!70526 m!856447))

(assert (=> b!594100 d!209021))

(declare-fun b!594293 () Bool)

(declare-fun res!256408 () Bool)

(declare-fun e!359552 () Bool)

(assert (=> b!594293 (=> (not res!256408) (not e!359552))))

(declare-fun lt!252124 () Option!1513)

(declare-fun matchR!619 (Regex!1496 List!5901) Bool)

(assert (=> b!594293 (= res!256408 (matchR!619 (regex!1162 (rule!1932 (_1!3673 (get!2258 lt!252124)))) (list!2467 (charsOf!791 (_1!3673 (get!2258 lt!252124))))))))

(declare-fun b!594294 () Bool)

(declare-fun e!359553 () Bool)

(assert (=> b!594294 (= e!359553 e!359552)))

(declare-fun res!256409 () Bool)

(assert (=> b!594294 (=> (not res!256409) (not e!359552))))

(assert (=> b!594294 (= res!256409 (isDefined!1324 lt!252124))))

(declare-fun b!594295 () Bool)

(declare-fun e!359551 () Option!1513)

(declare-fun lt!252126 () Option!1513)

(declare-fun lt!252123 () Option!1513)

(assert (=> b!594295 (= e!359551 (ite (and (is-None!1512 lt!252126) (is-None!1512 lt!252123)) None!1512 (ite (is-None!1512 lt!252123) lt!252126 (ite (is-None!1512 lt!252126) lt!252123 (ite (>= (size!4658 (_1!3673 (v!16399 lt!252126))) (size!4658 (_1!3673 (v!16399 lt!252123)))) lt!252126 lt!252123)))))))

(declare-fun call!40384 () Option!1513)

(assert (=> b!594295 (= lt!252126 call!40384)))

(assert (=> b!594295 (= lt!252123 (maxPrefix!746 thiss!22590 (t!79256 rules!3103) lt!251986))))

(declare-fun b!594296 () Bool)

(assert (=> b!594296 (= e!359551 call!40384)))

(declare-fun d!209023 () Bool)

(assert (=> d!209023 e!359553))

(declare-fun res!256404 () Bool)

(assert (=> d!209023 (=> res!256404 e!359553)))

(assert (=> d!209023 (= res!256404 (isEmpty!4257 lt!252124))))

(assert (=> d!209023 (= lt!252124 e!359551)))

(declare-fun c!110714 () Bool)

(assert (=> d!209023 (= c!110714 (and (is-Cons!5893 rules!3103) (is-Nil!5893 (t!79256 rules!3103))))))

(declare-fun lt!252125 () Unit!10708)

(declare-fun lt!252127 () Unit!10708)

(assert (=> d!209023 (= lt!252125 lt!252127)))

(assert (=> d!209023 (isPrefix!790 lt!251986 lt!251986)))

(assert (=> d!209023 (= lt!252127 (lemmaIsPrefixRefl!526 lt!251986 lt!251986))))

(declare-fun rulesValidInductive!427 (LexerInterface!1048 List!5903) Bool)

(assert (=> d!209023 (rulesValidInductive!427 thiss!22590 rules!3103)))

(assert (=> d!209023 (= (maxPrefix!746 thiss!22590 rules!3103 lt!251986) lt!252124)))

(declare-fun bm!40379 () Bool)

(declare-fun maxPrefixOneRule!423 (LexerInterface!1048 Rule!2124 List!5901) Option!1513)

(assert (=> bm!40379 (= call!40384 (maxPrefixOneRule!423 thiss!22590 (h!11294 rules!3103) lt!251986))))

(declare-fun b!594297 () Bool)

(declare-fun res!256406 () Bool)

(assert (=> b!594297 (=> (not res!256406) (not e!359552))))

(assert (=> b!594297 (= res!256406 (< (size!4659 (_2!3673 (get!2258 lt!252124))) (size!4659 lt!251986)))))

(declare-fun b!594298 () Bool)

(declare-fun res!256407 () Bool)

(assert (=> b!594298 (=> (not res!256407) (not e!359552))))

(assert (=> b!594298 (= res!256407 (= (list!2467 (charsOf!791 (_1!3673 (get!2258 lt!252124)))) (originalCharacters!1201 (_1!3673 (get!2258 lt!252124)))))))

(declare-fun b!594299 () Bool)

(assert (=> b!594299 (= e!359552 (contains!1384 rules!3103 (rule!1932 (_1!3673 (get!2258 lt!252124)))))))

(declare-fun b!594300 () Bool)

(declare-fun res!256405 () Bool)

(assert (=> b!594300 (=> (not res!256405) (not e!359552))))

(assert (=> b!594300 (= res!256405 (= (++!1650 (list!2467 (charsOf!791 (_1!3673 (get!2258 lt!252124)))) (_2!3673 (get!2258 lt!252124))) lt!251986))))

(declare-fun b!594301 () Bool)

(declare-fun res!256403 () Bool)

(assert (=> b!594301 (=> (not res!256403) (not e!359552))))

(assert (=> b!594301 (= res!256403 (= (value!37985 (_1!3673 (get!2258 lt!252124))) (apply!1415 (transformation!1162 (rule!1932 (_1!3673 (get!2258 lt!252124)))) (seqFromList!1338 (originalCharacters!1201 (_1!3673 (get!2258 lt!252124)))))))))

(assert (= (and d!209023 c!110714) b!594296))

(assert (= (and d!209023 (not c!110714)) b!594295))

(assert (= (or b!594296 b!594295) bm!40379))

(assert (= (and d!209023 (not res!256404)) b!594294))

(assert (= (and b!594294 res!256409) b!594298))

(assert (= (and b!594298 res!256407) b!594297))

(assert (= (and b!594297 res!256406) b!594300))

(assert (= (and b!594300 res!256405) b!594301))

(assert (= (and b!594301 res!256403) b!594293))

(assert (= (and b!594293 res!256408) b!594299))

(declare-fun m!856449 () Bool)

(assert (=> d!209023 m!856449))

(declare-fun m!856451 () Bool)

(assert (=> d!209023 m!856451))

(declare-fun m!856453 () Bool)

(assert (=> d!209023 m!856453))

(declare-fun m!856455 () Bool)

(assert (=> d!209023 m!856455))

(declare-fun m!856457 () Bool)

(assert (=> bm!40379 m!856457))

(declare-fun m!856459 () Bool)

(assert (=> b!594297 m!856459))

(declare-fun m!856461 () Bool)

(assert (=> b!594297 m!856461))

(assert (=> b!594297 m!856347))

(declare-fun m!856463 () Bool)

(assert (=> b!594295 m!856463))

(assert (=> b!594299 m!856459))

(declare-fun m!856465 () Bool)

(assert (=> b!594299 m!856465))

(assert (=> b!594301 m!856459))

(declare-fun m!856467 () Bool)

(assert (=> b!594301 m!856467))

(assert (=> b!594301 m!856467))

(declare-fun m!856469 () Bool)

(assert (=> b!594301 m!856469))

(declare-fun m!856471 () Bool)

(assert (=> b!594294 m!856471))

(assert (=> b!594298 m!856459))

(declare-fun m!856473 () Bool)

(assert (=> b!594298 m!856473))

(assert (=> b!594298 m!856473))

(declare-fun m!856475 () Bool)

(assert (=> b!594298 m!856475))

(assert (=> b!594300 m!856459))

(assert (=> b!594300 m!856473))

(assert (=> b!594300 m!856473))

(assert (=> b!594300 m!856475))

(assert (=> b!594300 m!856475))

(declare-fun m!856477 () Bool)

(assert (=> b!594300 m!856477))

(assert (=> b!594293 m!856459))

(assert (=> b!594293 m!856473))

(assert (=> b!594293 m!856473))

(assert (=> b!594293 m!856475))

(assert (=> b!594293 m!856475))

(declare-fun m!856479 () Bool)

(assert (=> b!594293 m!856479))

(assert (=> b!594100 d!209023))

(declare-fun e!359556 () Bool)

(declare-fun b!594309 () Bool)

(declare-fun lt!252138 () List!5901)

(assert (=> b!594309 (= e!359556 (or (not (= suffix!1342 Nil!5891)) (= lt!252138 input!2705)))))

(declare-fun b!594307 () Bool)

(declare-fun e!359557 () List!5901)

(assert (=> b!594307 (= e!359557 (Cons!5891 (h!11292 input!2705) (++!1650 (t!79254 input!2705) suffix!1342)))))

(declare-fun b!594308 () Bool)

(declare-fun res!256411 () Bool)

(assert (=> b!594308 (=> (not res!256411) (not e!359556))))

(assert (=> b!594308 (= res!256411 (= (size!4659 lt!252138) (+ (size!4659 input!2705) (size!4659 suffix!1342))))))

(declare-fun d!209025 () Bool)

(assert (=> d!209025 e!359556))

(declare-fun res!256410 () Bool)

(assert (=> d!209025 (=> (not res!256410) (not e!359556))))

(assert (=> d!209025 (= res!256410 (= (content!1060 lt!252138) (set.union (content!1060 input!2705) (content!1060 suffix!1342))))))

(assert (=> d!209025 (= lt!252138 e!359557)))

(declare-fun c!110717 () Bool)

(assert (=> d!209025 (= c!110717 (is-Nil!5891 input!2705))))

(assert (=> d!209025 (= (++!1650 input!2705 suffix!1342) lt!252138)))

(declare-fun b!594306 () Bool)

(assert (=> b!594306 (= e!359557 suffix!1342)))

(assert (= (and d!209025 c!110717) b!594306))

(assert (= (and d!209025 (not c!110717)) b!594307))

(assert (= (and d!209025 res!256410) b!594308))

(assert (= (and b!594308 res!256411) b!594309))

(declare-fun m!856481 () Bool)

(assert (=> b!594307 m!856481))

(declare-fun m!856483 () Bool)

(assert (=> b!594308 m!856483))

(assert (=> b!594308 m!856349))

(declare-fun m!856485 () Bool)

(assert (=> b!594308 m!856485))

(declare-fun m!856487 () Bool)

(assert (=> d!209025 m!856487))

(declare-fun m!856489 () Bool)

(assert (=> d!209025 m!856489))

(declare-fun m!856491 () Bool)

(assert (=> d!209025 m!856491))

(assert (=> b!594100 d!209025))

(declare-fun d!209027 () Bool)

(assert (=> d!209027 (= (get!2258 lt!251984) (v!16399 lt!251984))))

(assert (=> b!594111 d!209027))

(declare-fun d!209029 () Bool)

(declare-fun res!256430 () Bool)

(declare-fun e!359564 () Bool)

(assert (=> d!209029 (=> (not res!256430) (not e!359564))))

(assert (=> d!209029 (= res!256430 (not (isEmpty!4253 (originalCharacters!1201 token!491))))))

(assert (=> d!209029 (= (inv!7467 token!491) e!359564)))

(declare-fun b!594328 () Bool)

(declare-fun res!256431 () Bool)

(assert (=> b!594328 (=> (not res!256431) (not e!359564))))

(assert (=> b!594328 (= res!256431 (= (originalCharacters!1201 token!491) (list!2467 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (value!37985 token!491)))))))

(declare-fun b!594329 () Bool)

(assert (=> b!594329 (= e!359564 (= (size!4658 token!491) (size!4659 (originalCharacters!1201 token!491))))))

(assert (= (and d!209029 res!256430) b!594328))

(assert (= (and b!594328 res!256431) b!594329))

(declare-fun b_lambda!23397 () Bool)

(assert (=> (not b_lambda!23397) (not b!594328)))

(declare-fun t!79269 () Bool)

(declare-fun tb!51899 () Bool)

(assert (=> (and b!594093 (= (toChars!1912 (transformation!1162 (h!11294 rules!3103))) (toChars!1912 (transformation!1162 (rule!1932 token!491)))) t!79269) tb!51899))

(declare-fun b!594330 () Bool)

(declare-fun e!359565 () Bool)

(declare-fun tp!185306 () Bool)

(assert (=> b!594330 (= e!359565 (and (inv!7471 (c!110692 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (value!37985 token!491)))) tp!185306))))

(declare-fun result!58266 () Bool)

(assert (=> tb!51899 (= result!58266 (and (inv!7472 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (value!37985 token!491))) e!359565))))

(assert (= tb!51899 b!594330))

(declare-fun m!856493 () Bool)

(assert (=> b!594330 m!856493))

(declare-fun m!856495 () Bool)

(assert (=> tb!51899 m!856495))

(assert (=> b!594328 t!79269))

(declare-fun b_and!58603 () Bool)

(assert (= b_and!58599 (and (=> t!79269 result!58266) b_and!58603)))

(declare-fun t!79271 () Bool)

(declare-fun tb!51901 () Bool)

(assert (=> (and b!594101 (= (toChars!1912 (transformation!1162 (rule!1932 token!491))) (toChars!1912 (transformation!1162 (rule!1932 token!491)))) t!79271) tb!51901))

(declare-fun result!58268 () Bool)

(assert (= result!58268 result!58266))

(assert (=> b!594328 t!79271))

(declare-fun b_and!58605 () Bool)

(assert (= b_and!58601 (and (=> t!79271 result!58268) b_and!58605)))

(declare-fun m!856497 () Bool)

(assert (=> d!209029 m!856497))

(declare-fun m!856499 () Bool)

(assert (=> b!594328 m!856499))

(assert (=> b!594328 m!856499))

(declare-fun m!856501 () Bool)

(assert (=> b!594328 m!856501))

(assert (=> b!594329 m!856439))

(assert (=> start!55914 d!209029))

(declare-fun d!209031 () Bool)

(assert (=> d!209031 (= (inv!7464 (tag!1424 (h!11294 rules!3103))) (= (mod (str.len (value!37984 (tag!1424 (h!11294 rules!3103)))) 2) 0))))

(assert (=> b!594112 d!209031))

(declare-fun d!209033 () Bool)

(declare-fun res!256432 () Bool)

(declare-fun e!359566 () Bool)

(assert (=> d!209033 (=> (not res!256432) (not e!359566))))

(assert (=> d!209033 (= res!256432 (semiInverseModEq!458 (toChars!1912 (transformation!1162 (h!11294 rules!3103))) (toValue!2053 (transformation!1162 (h!11294 rules!3103)))))))

(assert (=> d!209033 (= (inv!7468 (transformation!1162 (h!11294 rules!3103))) e!359566)))

(declare-fun b!594331 () Bool)

(assert (=> b!594331 (= e!359566 (equivClasses!441 (toChars!1912 (transformation!1162 (h!11294 rules!3103))) (toValue!2053 (transformation!1162 (h!11294 rules!3103)))))))

(assert (= (and d!209033 res!256432) b!594331))

(declare-fun m!856503 () Bool)

(assert (=> d!209033 m!856503))

(declare-fun m!856505 () Bool)

(assert (=> b!594331 m!856505))

(assert (=> b!594112 d!209033))

(declare-fun e!359567 () Bool)

(declare-fun b!594335 () Bool)

(declare-fun lt!252139 () List!5901)

(assert (=> b!594335 (= e!359567 (or (not (= suffix!1342 Nil!5891)) (= lt!252139 lt!251982)))))

(declare-fun b!594333 () Bool)

(declare-fun e!359568 () List!5901)

(assert (=> b!594333 (= e!359568 (Cons!5891 (h!11292 lt!251982) (++!1650 (t!79254 lt!251982) suffix!1342)))))

(declare-fun b!594334 () Bool)

(declare-fun res!256434 () Bool)

(assert (=> b!594334 (=> (not res!256434) (not e!359567))))

(assert (=> b!594334 (= res!256434 (= (size!4659 lt!252139) (+ (size!4659 lt!251982) (size!4659 suffix!1342))))))

(declare-fun d!209035 () Bool)

(assert (=> d!209035 e!359567))

(declare-fun res!256433 () Bool)

(assert (=> d!209035 (=> (not res!256433) (not e!359567))))

(assert (=> d!209035 (= res!256433 (= (content!1060 lt!252139) (set.union (content!1060 lt!251982) (content!1060 suffix!1342))))))

(assert (=> d!209035 (= lt!252139 e!359568)))

(declare-fun c!110718 () Bool)

(assert (=> d!209035 (= c!110718 (is-Nil!5891 lt!251982))))

(assert (=> d!209035 (= (++!1650 lt!251982 suffix!1342) lt!252139)))

(declare-fun b!594332 () Bool)

(assert (=> b!594332 (= e!359568 suffix!1342)))

(assert (= (and d!209035 c!110718) b!594332))

(assert (= (and d!209035 (not c!110718)) b!594333))

(assert (= (and d!209035 res!256433) b!594334))

(assert (= (and b!594334 res!256434) b!594335))

(declare-fun m!856507 () Bool)

(assert (=> b!594333 m!856507))

(declare-fun m!856509 () Bool)

(assert (=> b!594334 m!856509))

(assert (=> b!594334 m!856133))

(assert (=> b!594334 m!856485))

(declare-fun m!856511 () Bool)

(assert (=> d!209035 m!856511))

(assert (=> d!209035 m!856315))

(assert (=> d!209035 m!856491))

(assert (=> b!594102 d!209035))

(declare-fun d!209037 () Bool)

(assert (=> d!209037 (= (isEmpty!4254 rules!3103) (is-Nil!5893 rules!3103))))

(assert (=> b!594113 d!209037))

(declare-fun d!209039 () Bool)

(assert (=> d!209039 (= (list!2467 (charsOf!791 token!491)) (list!2469 (c!110692 (charsOf!791 token!491))))))

(declare-fun bs!70527 () Bool)

(assert (= bs!70527 d!209039))

(declare-fun m!856513 () Bool)

(assert (=> bs!70527 m!856513))

(assert (=> b!594092 d!209039))

(declare-fun d!209041 () Bool)

(declare-fun lt!252140 () BalanceConc!3766)

(assert (=> d!209041 (= (list!2467 lt!252140) (originalCharacters!1201 token!491))))

(assert (=> d!209041 (= lt!252140 (dynLambda!3426 (toChars!1912 (transformation!1162 (rule!1932 token!491))) (value!37985 token!491)))))

(assert (=> d!209041 (= (charsOf!791 token!491) lt!252140)))

(declare-fun b_lambda!23399 () Bool)

(assert (=> (not b_lambda!23399) (not d!209041)))

(assert (=> d!209041 t!79269))

(declare-fun b_and!58607 () Bool)

(assert (= b_and!58603 (and (=> t!79269 result!58266) b_and!58607)))

(assert (=> d!209041 t!79271))

(declare-fun b_and!58609 () Bool)

(assert (= b_and!58605 (and (=> t!79271 result!58268) b_and!58609)))

(declare-fun m!856515 () Bool)

(assert (=> d!209041 m!856515))

(assert (=> d!209041 m!856499))

(assert (=> b!594092 d!209041))

(declare-fun b!594336 () Bool)

(declare-fun res!256440 () Bool)

(declare-fun e!359570 () Bool)

(assert (=> b!594336 (=> (not res!256440) (not e!359570))))

(declare-fun lt!252142 () Option!1513)

(assert (=> b!594336 (= res!256440 (matchR!619 (regex!1162 (rule!1932 (_1!3673 (get!2258 lt!252142)))) (list!2467 (charsOf!791 (_1!3673 (get!2258 lt!252142))))))))

(declare-fun b!594337 () Bool)

(declare-fun e!359571 () Bool)

(assert (=> b!594337 (= e!359571 e!359570)))

(declare-fun res!256441 () Bool)

(assert (=> b!594337 (=> (not res!256441) (not e!359570))))

(assert (=> b!594337 (= res!256441 (isDefined!1324 lt!252142))))

(declare-fun b!594338 () Bool)

(declare-fun e!359569 () Option!1513)

(declare-fun lt!252144 () Option!1513)

(declare-fun lt!252141 () Option!1513)

(assert (=> b!594338 (= e!359569 (ite (and (is-None!1512 lt!252144) (is-None!1512 lt!252141)) None!1512 (ite (is-None!1512 lt!252141) lt!252144 (ite (is-None!1512 lt!252144) lt!252141 (ite (>= (size!4658 (_1!3673 (v!16399 lt!252144))) (size!4658 (_1!3673 (v!16399 lt!252141)))) lt!252144 lt!252141)))))))

(declare-fun call!40387 () Option!1513)

(assert (=> b!594338 (= lt!252144 call!40387)))

(assert (=> b!594338 (= lt!252141 (maxPrefix!746 thiss!22590 (t!79256 rules!3103) input!2705))))

(declare-fun b!594339 () Bool)

(assert (=> b!594339 (= e!359569 call!40387)))

(declare-fun d!209043 () Bool)

(assert (=> d!209043 e!359571))

(declare-fun res!256436 () Bool)

(assert (=> d!209043 (=> res!256436 e!359571)))

(assert (=> d!209043 (= res!256436 (isEmpty!4257 lt!252142))))

(assert (=> d!209043 (= lt!252142 e!359569)))

(declare-fun c!110719 () Bool)

(assert (=> d!209043 (= c!110719 (and (is-Cons!5893 rules!3103) (is-Nil!5893 (t!79256 rules!3103))))))

(declare-fun lt!252143 () Unit!10708)

(declare-fun lt!252145 () Unit!10708)

(assert (=> d!209043 (= lt!252143 lt!252145)))

(assert (=> d!209043 (isPrefix!790 input!2705 input!2705)))

(assert (=> d!209043 (= lt!252145 (lemmaIsPrefixRefl!526 input!2705 input!2705))))

(assert (=> d!209043 (rulesValidInductive!427 thiss!22590 rules!3103)))

(assert (=> d!209043 (= (maxPrefix!746 thiss!22590 rules!3103 input!2705) lt!252142)))

(declare-fun bm!40382 () Bool)

(assert (=> bm!40382 (= call!40387 (maxPrefixOneRule!423 thiss!22590 (h!11294 rules!3103) input!2705))))

(declare-fun b!594340 () Bool)

(declare-fun res!256438 () Bool)

(assert (=> b!594340 (=> (not res!256438) (not e!359570))))

(assert (=> b!594340 (= res!256438 (< (size!4659 (_2!3673 (get!2258 lt!252142))) (size!4659 input!2705)))))

(declare-fun b!594341 () Bool)

(declare-fun res!256439 () Bool)

(assert (=> b!594341 (=> (not res!256439) (not e!359570))))

(assert (=> b!594341 (= res!256439 (= (list!2467 (charsOf!791 (_1!3673 (get!2258 lt!252142)))) (originalCharacters!1201 (_1!3673 (get!2258 lt!252142)))))))

(declare-fun b!594342 () Bool)

(assert (=> b!594342 (= e!359570 (contains!1384 rules!3103 (rule!1932 (_1!3673 (get!2258 lt!252142)))))))

(declare-fun b!594343 () Bool)

(declare-fun res!256437 () Bool)

(assert (=> b!594343 (=> (not res!256437) (not e!359570))))

(assert (=> b!594343 (= res!256437 (= (++!1650 (list!2467 (charsOf!791 (_1!3673 (get!2258 lt!252142)))) (_2!3673 (get!2258 lt!252142))) input!2705))))

(declare-fun b!594344 () Bool)

(declare-fun res!256435 () Bool)

(assert (=> b!594344 (=> (not res!256435) (not e!359570))))

(assert (=> b!594344 (= res!256435 (= (value!37985 (_1!3673 (get!2258 lt!252142))) (apply!1415 (transformation!1162 (rule!1932 (_1!3673 (get!2258 lt!252142)))) (seqFromList!1338 (originalCharacters!1201 (_1!3673 (get!2258 lt!252142)))))))))

(assert (= (and d!209043 c!110719) b!594339))

(assert (= (and d!209043 (not c!110719)) b!594338))

(assert (= (or b!594339 b!594338) bm!40382))

(assert (= (and d!209043 (not res!256436)) b!594337))

(assert (= (and b!594337 res!256441) b!594341))

(assert (= (and b!594341 res!256439) b!594340))

(assert (= (and b!594340 res!256438) b!594343))

(assert (= (and b!594343 res!256437) b!594344))

(assert (= (and b!594344 res!256435) b!594336))

(assert (= (and b!594336 res!256440) b!594342))

(declare-fun m!856517 () Bool)

(assert (=> d!209043 m!856517))

(assert (=> d!209043 m!856173))

(assert (=> d!209043 m!856147))

(assert (=> d!209043 m!856455))

(declare-fun m!856519 () Bool)

(assert (=> bm!40382 m!856519))

(declare-fun m!856521 () Bool)

(assert (=> b!594340 m!856521))

(declare-fun m!856523 () Bool)

(assert (=> b!594340 m!856523))

(assert (=> b!594340 m!856349))

(declare-fun m!856525 () Bool)

(assert (=> b!594338 m!856525))

(assert (=> b!594342 m!856521))

(declare-fun m!856527 () Bool)

(assert (=> b!594342 m!856527))

(assert (=> b!594344 m!856521))

(declare-fun m!856529 () Bool)

(assert (=> b!594344 m!856529))

(assert (=> b!594344 m!856529))

(declare-fun m!856531 () Bool)

(assert (=> b!594344 m!856531))

(declare-fun m!856533 () Bool)

(assert (=> b!594337 m!856533))

(assert (=> b!594341 m!856521))

(declare-fun m!856535 () Bool)

(assert (=> b!594341 m!856535))

(assert (=> b!594341 m!856535))

(declare-fun m!856537 () Bool)

(assert (=> b!594341 m!856537))

(assert (=> b!594343 m!856521))

(assert (=> b!594343 m!856535))

(assert (=> b!594343 m!856535))

(assert (=> b!594343 m!856537))

(assert (=> b!594343 m!856537))

(declare-fun m!856539 () Bool)

(assert (=> b!594343 m!856539))

(assert (=> b!594336 m!856521))

(assert (=> b!594336 m!856535))

(assert (=> b!594336 m!856535))

(assert (=> b!594336 m!856537))

(assert (=> b!594336 m!856537))

(declare-fun m!856541 () Bool)

(assert (=> b!594336 m!856541))

(assert (=> b!594114 d!209043))

(declare-fun d!209045 () Bool)

(assert (=> d!209045 (= (isEmpty!4253 input!2705) (is-Nil!5891 input!2705))))

(assert (=> b!594104 d!209045))

(declare-fun b!594355 () Bool)

(declare-fun e!359578 () Bool)

(declare-fun inv!16 (TokenValue!1186) Bool)

(assert (=> b!594355 (= e!359578 (inv!16 (value!37985 token!491)))))

(declare-fun b!594356 () Bool)

(declare-fun e!359580 () Bool)

(assert (=> b!594356 (= e!359578 e!359580)))

(declare-fun c!110725 () Bool)

(assert (=> b!594356 (= c!110725 (is-IntegerValue!3559 (value!37985 token!491)))))

(declare-fun b!594357 () Bool)

(declare-fun e!359579 () Bool)

(declare-fun inv!15 (TokenValue!1186) Bool)

(assert (=> b!594357 (= e!359579 (inv!15 (value!37985 token!491)))))

(declare-fun d!209047 () Bool)

(declare-fun c!110724 () Bool)

(assert (=> d!209047 (= c!110724 (is-IntegerValue!3558 (value!37985 token!491)))))

(assert (=> d!209047 (= (inv!21 (value!37985 token!491)) e!359578)))

(declare-fun b!594358 () Bool)

(declare-fun inv!17 (TokenValue!1186) Bool)

(assert (=> b!594358 (= e!359580 (inv!17 (value!37985 token!491)))))

(declare-fun b!594359 () Bool)

(declare-fun res!256444 () Bool)

(assert (=> b!594359 (=> res!256444 e!359579)))

(assert (=> b!594359 (= res!256444 (not (is-IntegerValue!3560 (value!37985 token!491))))))

(assert (=> b!594359 (= e!359580 e!359579)))

(assert (= (and d!209047 c!110724) b!594355))

(assert (= (and d!209047 (not c!110724)) b!594356))

(assert (= (and b!594356 c!110725) b!594358))

(assert (= (and b!594356 (not c!110725)) b!594359))

(assert (= (and b!594359 (not res!256444)) b!594357))

(declare-fun m!856543 () Bool)

(assert (=> b!594355 m!856543))

(declare-fun m!856545 () Bool)

(assert (=> b!594357 m!856545))

(declare-fun m!856547 () Bool)

(assert (=> b!594358 m!856547))

(assert (=> b!594105 d!209047))

(declare-fun b!594364 () Bool)

(declare-fun e!359583 () Bool)

(declare-fun tp!185309 () Bool)

(assert (=> b!594364 (= e!359583 (and tp_is_empty!3347 tp!185309))))

(assert (=> b!594106 (= tp!185265 e!359583)))

(assert (= (and b!594106 (is-Cons!5891 (t!79254 input!2705))) b!594364))

(declare-fun b!594376 () Bool)

(declare-fun e!359586 () Bool)

(declare-fun tp!185323 () Bool)

(declare-fun tp!185324 () Bool)

(assert (=> b!594376 (= e!359586 (and tp!185323 tp!185324))))

(declare-fun b!594377 () Bool)

(declare-fun tp!185322 () Bool)

(assert (=> b!594377 (= e!359586 tp!185322)))

(declare-fun b!594375 () Bool)

(assert (=> b!594375 (= e!359586 tp_is_empty!3347)))

(assert (=> b!594112 (= tp!185271 e!359586)))

(declare-fun b!594378 () Bool)

(declare-fun tp!185321 () Bool)

(declare-fun tp!185320 () Bool)

(assert (=> b!594378 (= e!359586 (and tp!185321 tp!185320))))

(assert (= (and b!594112 (is-ElementMatch!1496 (regex!1162 (h!11294 rules!3103)))) b!594375))

(assert (= (and b!594112 (is-Concat!2682 (regex!1162 (h!11294 rules!3103)))) b!594376))

(assert (= (and b!594112 (is-Star!1496 (regex!1162 (h!11294 rules!3103)))) b!594377))

(assert (= (and b!594112 (is-Union!1496 (regex!1162 (h!11294 rules!3103)))) b!594378))

(declare-fun b!594388 () Bool)

(declare-fun e!359590 () Bool)

(declare-fun tp!185325 () Bool)

(assert (=> b!594388 (= e!359590 (and tp_is_empty!3347 tp!185325))))

(assert (=> b!594103 (= tp!185263 e!359590)))

(assert (= (and b!594103 (is-Cons!5891 (t!79254 suffix!1342))) b!594388))

(declare-fun b!594390 () Bool)

(declare-fun e!359591 () Bool)

(declare-fun tp!185329 () Bool)

(declare-fun tp!185330 () Bool)

(assert (=> b!594390 (= e!359591 (and tp!185329 tp!185330))))

(declare-fun b!594391 () Bool)

(declare-fun tp!185328 () Bool)

(assert (=> b!594391 (= e!359591 tp!185328)))

(declare-fun b!594389 () Bool)

(assert (=> b!594389 (= e!359591 tp_is_empty!3347)))

(assert (=> b!594099 (= tp!185270 e!359591)))

(declare-fun b!594392 () Bool)

(declare-fun tp!185327 () Bool)

(declare-fun tp!185326 () Bool)

(assert (=> b!594392 (= e!359591 (and tp!185327 tp!185326))))

(assert (= (and b!594099 (is-ElementMatch!1496 (regex!1162 (rule!1932 token!491)))) b!594389))

(assert (= (and b!594099 (is-Concat!2682 (regex!1162 (rule!1932 token!491)))) b!594390))

(assert (= (and b!594099 (is-Star!1496 (regex!1162 (rule!1932 token!491)))) b!594391))

(assert (= (and b!594099 (is-Union!1496 (regex!1162 (rule!1932 token!491)))) b!594392))

(declare-fun b!594403 () Bool)

(declare-fun b_free!16765 () Bool)

(declare-fun b_next!16781 () Bool)

(assert (=> b!594403 (= b_free!16765 (not b_next!16781))))

(declare-fun t!79273 () Bool)

(declare-fun tb!51903 () Bool)

(assert (=> (and b!594403 (= (toValue!2053 (transformation!1162 (h!11294 (t!79256 rules!3103)))) (toValue!2053 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))) t!79273) tb!51903))

(declare-fun result!58276 () Bool)

(assert (= result!58276 result!58254))

(assert (=> d!208967 t!79273))

(declare-fun b_and!58611 () Bool)

(declare-fun tp!185340 () Bool)

(assert (=> b!594403 (= tp!185340 (and (=> t!79273 result!58276) b_and!58611))))

(declare-fun b_free!16767 () Bool)

(declare-fun b_next!16783 () Bool)

(assert (=> b!594403 (= b_free!16767 (not b_next!16783))))

(declare-fun tb!51905 () Bool)

(declare-fun t!79275 () Bool)

(assert (=> (and b!594403 (= (toChars!1912 (transformation!1162 (h!11294 (t!79256 rules!3103)))) (toChars!1912 (transformation!1162 (rule!1932 (_1!3673 (v!16399 lt!251975)))))) t!79275) tb!51905))

(declare-fun result!58278 () Bool)

(assert (= result!58278 result!58260))

(assert (=> d!209009 t!79275))

(declare-fun tb!51907 () Bool)

(declare-fun t!79277 () Bool)

(assert (=> (and b!594403 (= (toChars!1912 (transformation!1162 (h!11294 (t!79256 rules!3103)))) (toChars!1912 (transformation!1162 (rule!1932 token!491)))) t!79277) tb!51907))

(declare-fun result!58280 () Bool)

(assert (= result!58280 result!58266))

(assert (=> b!594328 t!79277))

(assert (=> d!209041 t!79277))

(declare-fun tp!185342 () Bool)

(declare-fun b_and!58613 () Bool)

(assert (=> b!594403 (= tp!185342 (and (=> t!79275 result!58278) (=> t!79277 result!58280) b_and!58613))))

(declare-fun e!359603 () Bool)

(assert (=> b!594403 (= e!359603 (and tp!185340 tp!185342))))

(declare-fun tp!185341 () Bool)

(declare-fun e!359601 () Bool)

(declare-fun b!594402 () Bool)

(assert (=> b!594402 (= e!359601 (and tp!185341 (inv!7464 (tag!1424 (h!11294 (t!79256 rules!3103)))) (inv!7468 (transformation!1162 (h!11294 (t!79256 rules!3103)))) e!359603))))

(declare-fun b!594401 () Bool)

(declare-fun e!359602 () Bool)

(declare-fun tp!185339 () Bool)

(assert (=> b!594401 (= e!359602 (and e!359601 tp!185339))))

(assert (=> b!594110 (= tp!185268 e!359602)))

(assert (= b!594402 b!594403))

(assert (= b!594401 b!594402))

(assert (= (and b!594110 (is-Cons!5893 (t!79256 rules!3103))) b!594401))

(declare-fun m!856549 () Bool)

(assert (=> b!594402 m!856549))

(declare-fun m!856551 () Bool)

(assert (=> b!594402 m!856551))

(declare-fun b!594404 () Bool)

(declare-fun e!359604 () Bool)

(declare-fun tp!185343 () Bool)

(assert (=> b!594404 (= e!359604 (and tp_is_empty!3347 tp!185343))))

(assert (=> b!594105 (= tp!185266 e!359604)))

(assert (= (and b!594105 (is-Cons!5891 (originalCharacters!1201 token!491))) b!594404))

(declare-fun b_lambda!23401 () Bool)

(assert (= b_lambda!23397 (or (and b!594093 b_free!16751 (= (toChars!1912 (transformation!1162 (h!11294 rules!3103))) (toChars!1912 (transformation!1162 (rule!1932 token!491))))) (and b!594101 b_free!16755) (and b!594403 b_free!16767 (= (toChars!1912 (transformation!1162 (h!11294 (t!79256 rules!3103)))) (toChars!1912 (transformation!1162 (rule!1932 token!491))))) b_lambda!23401)))

(declare-fun b_lambda!23403 () Bool)

(assert (= b_lambda!23399 (or (and b!594093 b_free!16751 (= (toChars!1912 (transformation!1162 (h!11294 rules!3103))) (toChars!1912 (transformation!1162 (rule!1932 token!491))))) (and b!594101 b_free!16755) (and b!594403 b_free!16767 (= (toChars!1912 (transformation!1162 (h!11294 (t!79256 rules!3103)))) (toChars!1912 (transformation!1162 (rule!1932 token!491))))) b_lambda!23403)))

(push 1)

(assert (not d!209015))

(assert (not b!594328))

(assert (not d!209023))

(assert (not b!594300))

(assert (not b!594329))

(assert (not b!594377))

(assert (not b!594239))

(assert (not b_lambda!23393))

(assert (not d!209009))

(assert (not d!209011))

(assert b_and!58607)

(assert (not b!594257))

(assert (not b!594340))

(assert (not d!209035))

(assert (not b_next!16769))

(assert b_and!58595)

(assert (not b!594376))

(assert (not d!208953))

(assert (not d!209003))

(assert (not b_next!16771))

(assert (not b!594253))

(assert (not b!594336))

(assert (not b!594267))

(assert (not b!594207))

(assert (not b!594274))

(assert (not b!594254))

(assert (not b_next!16783))

(assert (not b!594401))

(assert (not b!594203))

(assert (not d!209043))

(assert (not bm!40379))

(assert (not b!594270))

(assert (not b!594265))

(assert (not b!594404))

(assert (not d!208995))

(assert (not b!594243))

(assert (not b!594192))

(assert (not b!594341))

(assert (not b!594388))

(assert b_and!58597)

(assert (not b!594237))

(assert (not b!594337))

(assert (not b!594293))

(assert (not d!208959))

(assert (not d!209041))

(assert (not b_next!16765))

(assert (not b!594297))

(assert (not d!208997))

(assert (not b!594248))

(assert (not b!594259))

(assert (not b!594402))

(assert (not b!594295))

(assert (not d!208983))

(assert b_and!58609)

(assert tp_is_empty!3347)

(assert (not d!208969))

(assert (not b!594299))

(assert (not b!594344))

(assert (not b!594260))

(assert (not b_next!16767))

(assert (not d!209019))

(assert (not b!594298))

(assert (not d!208989))

(assert (not b!594218))

(assert (not b!594233))

(assert (not b!594240))

(assert (not b!594301))

(assert (not b!594186))

(assert (not b!594390))

(assert (not b!594355))

(assert (not b!594206))

(assert (not b!594251))

(assert (not b!594364))

(assert (not b!594342))

(assert b_and!58611)

(assert (not d!208965))

(assert (not d!208957))

(assert (not d!209007))

(assert (not b!594333))

(assert (not tb!51891))

(assert (not b!594234))

(assert (not b!594343))

(assert (not tb!51895))

(assert (not d!208949))

(assert (not b!594229))

(assert (not b!594269))

(assert (not b!594378))

(assert (not b!594252))

(assert (not b!594268))

(assert (not b!594220))

(assert (not b!594338))

(assert (not b!594224))

(assert (not d!208961))

(assert (not b_next!16781))

(assert (not d!209033))

(assert (not d!208981))

(assert (not b!594219))

(assert (not d!208955))

(assert (not b!594391))

(assert (not d!209021))

(assert (not b!594232))

(assert (not tb!51899))

(assert (not b!594241))

(assert (not bm!40382))

(assert (not b!594330))

(assert (not b!594202))

(assert (not b!594308))

(assert (not b_lambda!23395))

(assert (not d!209039))

(assert (not d!209029))

(assert (not d!209001))

(assert (not d!208973))

(assert (not b!594331))

(assert (not d!208985))

(assert (not d!208991))

(assert b_and!58613)

(assert (not b_lambda!23403))

(assert (not b!594334))

(assert (not b!594258))

(assert (not b!594294))

(assert (not b!594358))

(assert (not d!209025))

(assert (not b!594392))

(assert (not b!594357))

(assert (not b!594307))

(assert (not b_lambda!23401))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16771))

(assert (not b_next!16783))

(assert b_and!58597)

(assert (not b_next!16765))

(assert b_and!58609)

(assert (not b_next!16767))

(assert b_and!58611)

(assert (not b_next!16781))

(assert b_and!58613)

(assert b_and!58607)

(assert (not b_next!16769))

(assert b_and!58595)

(check-sat)

(pop 1)

