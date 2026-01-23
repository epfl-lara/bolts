; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!379062 () Bool)

(assert start!379062)

(declare-fun b!4025149 () Bool)

(declare-fun b_free!112073 () Bool)

(declare-fun b_next!112777 () Bool)

(assert (=> b!4025149 (= b_free!112073 (not b_next!112777))))

(declare-fun tp!1223450 () Bool)

(declare-fun b_and!309255 () Bool)

(assert (=> b!4025149 (= tp!1223450 b_and!309255)))

(declare-fun b_free!112075 () Bool)

(declare-fun b_next!112779 () Bool)

(assert (=> b!4025149 (= b_free!112075 (not b_next!112779))))

(declare-fun tp!1223442 () Bool)

(declare-fun b_and!309257 () Bool)

(assert (=> b!4025149 (= tp!1223442 b_and!309257)))

(declare-fun b!4025169 () Bool)

(declare-fun b_free!112077 () Bool)

(declare-fun b_next!112781 () Bool)

(assert (=> b!4025169 (= b_free!112077 (not b_next!112781))))

(declare-fun tp!1223440 () Bool)

(declare-fun b_and!309259 () Bool)

(assert (=> b!4025169 (= tp!1223440 b_and!309259)))

(declare-fun b_free!112079 () Bool)

(declare-fun b_next!112783 () Bool)

(assert (=> b!4025169 (= b_free!112079 (not b_next!112783))))

(declare-fun tp!1223443 () Bool)

(declare-fun b_and!309261 () Bool)

(assert (=> b!4025169 (= tp!1223443 b_and!309261)))

(declare-fun b!4025147 () Bool)

(declare-fun e!2497128 () Bool)

(declare-datatypes ((C!23758 0))(
  ( (C!23759 (val!13973 Int)) )
))
(declare-datatypes ((List!43224 0))(
  ( (Nil!43100) (Cons!43100 (h!48520 C!23758) (t!333889 List!43224)) )
))
(declare-fun lt!1429972 () List!43224)

(declare-fun isEmpty!25730 (List!43224) Bool)

(assert (=> b!4025147 (= e!2497128 (not (isEmpty!25730 lt!1429972)))))

(declare-fun b!4025148 () Bool)

(declare-fun res!1638043 () Bool)

(declare-fun e!2497123 () Bool)

(assert (=> b!4025148 (=> (not res!1638043) (not e!2497123))))

(declare-fun prefix!494 () List!43224)

(declare-fun newSuffixResult!27 () List!43224)

(declare-fun newSuffix!27 () List!43224)

(declare-fun ++!11283 (List!43224 List!43224) List!43224)

(assert (=> b!4025148 (= res!1638043 (= (++!11283 lt!1429972 newSuffixResult!27) (++!11283 prefix!494 newSuffix!27)))))

(declare-fun e!2497133 () Bool)

(assert (=> b!4025149 (= e!2497133 (and tp!1223450 tp!1223442))))

(declare-fun b!4025151 () Bool)

(declare-fun res!1638035 () Bool)

(declare-fun e!2497140 () Bool)

(assert (=> b!4025151 (=> (not res!1638035) (not e!2497140))))

(declare-fun suffix!1299 () List!43224)

(declare-fun isPrefix!3968 (List!43224 List!43224) Bool)

(assert (=> b!4025151 (= res!1638035 (isPrefix!3968 newSuffix!27 suffix!1299))))

(declare-fun b!4025152 () Bool)

(declare-fun e!2497135 () Bool)

(declare-fun tp_is_empty!20543 () Bool)

(declare-fun tp!1223448 () Bool)

(assert (=> b!4025152 (= e!2497135 (and tp_is_empty!20543 tp!1223448))))

(declare-fun b!4025153 () Bool)

(declare-fun res!1638034 () Bool)

(assert (=> b!4025153 (=> res!1638034 e!2497128)))

(declare-fun lt!1429983 () List!43224)

(declare-fun lt!1429982 () List!43224)

(assert (=> b!4025153 (= res!1638034 (not (= lt!1429983 lt!1429982)))))

(declare-fun b!4025154 () Bool)

(assert (=> b!4025154 (= e!2497140 e!2497123)))

(declare-fun res!1638046 () Bool)

(assert (=> b!4025154 (=> (not res!1638046) (not e!2497123))))

(declare-fun size!32219 (List!43224) Int)

(assert (=> b!4025154 (= res!1638046 (>= (size!32219 prefix!494) (size!32219 lt!1429972)))))

(declare-datatypes ((IArray!26189 0))(
  ( (IArray!26190 (innerList!13152 List!43224)) )
))
(declare-datatypes ((Conc!13092 0))(
  ( (Node!13092 (left!32479 Conc!13092) (right!32809 Conc!13092) (csize!26414 Int) (cheight!13303 Int)) (Leaf!20240 (xs!16398 IArray!26189) (csize!26415 Int)) (Empty!13092) )
))
(declare-datatypes ((BalanceConc!25778 0))(
  ( (BalanceConc!25779 (c!695473 Conc!13092)) )
))
(declare-datatypes ((List!43225 0))(
  ( (Nil!43101) (Cons!43101 (h!48521 (_ BitVec 16)) (t!333890 List!43225)) )
))
(declare-datatypes ((TokenValue!7111 0))(
  ( (FloatLiteralValue!14222 (text!50222 List!43225)) (TokenValueExt!7110 (__x!26439 Int)) (Broken!35555 (value!216718 List!43225)) (Object!7234) (End!7111) (Def!7111) (Underscore!7111) (Match!7111) (Else!7111) (Error!7111) (Case!7111) (If!7111) (Extends!7111) (Abstract!7111) (Class!7111) (Val!7111) (DelimiterValue!14222 (del!7171 List!43225)) (KeywordValue!7117 (value!216719 List!43225)) (CommentValue!14222 (value!216720 List!43225)) (WhitespaceValue!14222 (value!216721 List!43225)) (IndentationValue!7111 (value!216722 List!43225)) (String!49274) (Int32!7111) (Broken!35556 (value!216723 List!43225)) (Boolean!7112) (Unit!62262) (OperatorValue!7114 (op!7171 List!43225)) (IdentifierValue!14222 (value!216724 List!43225)) (IdentifierValue!14223 (value!216725 List!43225)) (WhitespaceValue!14223 (value!216726 List!43225)) (True!14222) (False!14222) (Broken!35557 (value!216727 List!43225)) (Broken!35558 (value!216728 List!43225)) (True!14223) (RightBrace!7111) (RightBracket!7111) (Colon!7111) (Null!7111) (Comma!7111) (LeftBracket!7111) (False!14223) (LeftBrace!7111) (ImaginaryLiteralValue!7111 (text!50223 List!43225)) (StringLiteralValue!21333 (value!216729 List!43225)) (EOFValue!7111 (value!216730 List!43225)) (IdentValue!7111 (value!216731 List!43225)) (DelimiterValue!14223 (value!216732 List!43225)) (DedentValue!7111 (value!216733 List!43225)) (NewLineValue!7111 (value!216734 List!43225)) (IntegerValue!21333 (value!216735 (_ BitVec 32)) (text!50224 List!43225)) (IntegerValue!21334 (value!216736 Int) (text!50225 List!43225)) (Times!7111) (Or!7111) (Equal!7111) (Minus!7111) (Broken!35559 (value!216737 List!43225)) (And!7111) (Div!7111) (LessEqual!7111) (Mod!7111) (Concat!18897) (Not!7111) (Plus!7111) (SpaceValue!7111 (value!216738 List!43225)) (IntegerValue!21335 (value!216739 Int) (text!50226 List!43225)) (StringLiteralValue!21334 (text!50227 List!43225)) (FloatLiteralValue!14223 (text!50228 List!43225)) (BytesLiteralValue!7111 (value!216740 List!43225)) (CommentValue!14223 (value!216741 List!43225)) (StringLiteralValue!21335 (value!216742 List!43225)) (ErrorTokenValue!7111 (msg!7172 List!43225)) )
))
(declare-datatypes ((Regex!11786 0))(
  ( (ElementMatch!11786 (c!695474 C!23758)) (Concat!18898 (regOne!24084 Regex!11786) (regTwo!24084 Regex!11786)) (EmptyExpr!11786) (Star!11786 (reg!12115 Regex!11786)) (EmptyLang!11786) (Union!11786 (regOne!24085 Regex!11786) (regTwo!24085 Regex!11786)) )
))
(declare-datatypes ((String!49275 0))(
  ( (String!49276 (value!216743 String)) )
))
(declare-datatypes ((TokenValueInjection!13650 0))(
  ( (TokenValueInjection!13651 (toValue!9397 Int) (toChars!9256 Int)) )
))
(declare-datatypes ((Rule!13562 0))(
  ( (Rule!13563 (regex!6881 Regex!11786) (tag!7741 String!49275) (isSeparator!6881 Bool) (transformation!6881 TokenValueInjection!13650)) )
))
(declare-datatypes ((Token!12900 0))(
  ( (Token!12901 (value!216744 TokenValue!7111) (rule!9937 Rule!13562) (size!32220 Int) (originalCharacters!7481 List!43224)) )
))
(declare-fun token!484 () Token!12900)

(declare-fun list!16029 (BalanceConc!25778) List!43224)

(declare-fun charsOf!4697 (Token!12900) BalanceConc!25778)

(assert (=> b!4025154 (= lt!1429972 (list!16029 (charsOf!4697 token!484)))))

(declare-fun b!4025155 () Bool)

(declare-fun res!1638039 () Bool)

(assert (=> b!4025155 (=> (not res!1638039) (not e!2497140))))

(declare-datatypes ((List!43226 0))(
  ( (Nil!43102) (Cons!43102 (h!48522 Rule!13562) (t!333891 List!43226)) )
))
(declare-fun rules!2999 () List!43226)

(declare-fun isEmpty!25731 (List!43226) Bool)

(assert (=> b!4025155 (= res!1638039 (not (isEmpty!25731 rules!2999)))))

(declare-fun b!4025156 () Bool)

(declare-fun e!2497141 () Bool)

(declare-fun tp!1223447 () Bool)

(assert (=> b!4025156 (= e!2497141 (and tp_is_empty!20543 tp!1223447))))

(declare-fun b!4025157 () Bool)

(declare-fun e!2497126 () Bool)

(declare-fun e!2497139 () Bool)

(assert (=> b!4025157 (= e!2497126 e!2497139)))

(declare-fun res!1638038 () Bool)

(assert (=> b!4025157 (=> res!1638038 e!2497139)))

(declare-fun lt!1429985 () List!43224)

(assert (=> b!4025157 (= res!1638038 (not (= lt!1429985 prefix!494)))))

(declare-fun lt!1429971 () List!43224)

(assert (=> b!4025157 (= lt!1429985 (++!11283 lt!1429972 lt!1429971))))

(declare-fun getSuffix!2385 (List!43224 List!43224) List!43224)

(assert (=> b!4025157 (= lt!1429971 (getSuffix!2385 prefix!494 lt!1429972))))

(assert (=> b!4025157 (isPrefix!3968 lt!1429972 prefix!494)))

(declare-datatypes ((Unit!62263 0))(
  ( (Unit!62264) )
))
(declare-fun lt!1429984 () Unit!62263)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!532 (List!43224 List!43224 List!43224) Unit!62263)

(assert (=> b!4025157 (= lt!1429984 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!532 prefix!494 lt!1429972 lt!1429983))))

(declare-fun b!4025158 () Bool)

(declare-fun e!2497124 () Bool)

(assert (=> b!4025158 (= e!2497123 e!2497124)))

(declare-fun res!1638041 () Bool)

(assert (=> b!4025158 (=> (not res!1638041) (not e!2497124))))

(declare-fun suffixResult!105 () List!43224)

(declare-datatypes ((LexerInterface!6470 0))(
  ( (LexerInterfaceExt!6467 (__x!26440 Int)) (Lexer!6468) )
))
(declare-fun thiss!21717 () LexerInterface!6470)

(declare-datatypes ((tuple2!42208 0))(
  ( (tuple2!42209 (_1!24238 Token!12900) (_2!24238 List!43224)) )
))
(declare-datatypes ((Option!9295 0))(
  ( (None!9294) (Some!9294 (v!39676 tuple2!42208)) )
))
(declare-fun maxPrefix!3768 (LexerInterface!6470 List!43226 List!43224) Option!9295)

(assert (=> b!4025158 (= res!1638041 (= (maxPrefix!3768 thiss!21717 rules!2999 lt!1429983) (Some!9294 (tuple2!42209 token!484 suffixResult!105))))))

(assert (=> b!4025158 (= lt!1429983 (++!11283 prefix!494 suffix!1299))))

(declare-fun b!4025159 () Bool)

(declare-fun e!2497138 () Bool)

(assert (=> b!4025159 (= e!2497138 e!2497126)))

(declare-fun res!1638036 () Bool)

(assert (=> b!4025159 (=> res!1638036 e!2497126)))

(assert (=> b!4025159 (= res!1638036 (not (isPrefix!3968 lt!1429972 lt!1429983)))))

(assert (=> b!4025159 (isPrefix!3968 prefix!494 lt!1429983)))

(declare-fun lt!1429979 () Unit!62263)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2803 (List!43224 List!43224) Unit!62263)

(assert (=> b!4025159 (= lt!1429979 (lemmaConcatTwoListThenFirstIsPrefix!2803 prefix!494 suffix!1299))))

(assert (=> b!4025159 (isPrefix!3968 lt!1429972 lt!1429982)))

(declare-fun lt!1429974 () Unit!62263)

(assert (=> b!4025159 (= lt!1429974 (lemmaConcatTwoListThenFirstIsPrefix!2803 lt!1429972 suffixResult!105))))

(declare-fun b!4025160 () Bool)

(declare-fun e!2497142 () Bool)

(assert (=> b!4025160 (= e!2497139 e!2497142)))

(declare-fun res!1638044 () Bool)

(assert (=> b!4025160 (=> res!1638044 e!2497142)))

(declare-fun lt!1429970 () List!43224)

(declare-fun lt!1429977 () List!43224)

(assert (=> b!4025160 (= res!1638044 (or (not (= lt!1429983 lt!1429977)) (not (= lt!1429983 lt!1429970))))))

(assert (=> b!4025160 (= lt!1429977 lt!1429970)))

(declare-fun lt!1429981 () List!43224)

(assert (=> b!4025160 (= lt!1429970 (++!11283 lt!1429972 lt!1429981))))

(assert (=> b!4025160 (= lt!1429977 (++!11283 lt!1429985 suffix!1299))))

(assert (=> b!4025160 (= lt!1429981 (++!11283 lt!1429971 suffix!1299))))

(declare-fun lt!1429978 () Unit!62263)

(declare-fun lemmaConcatAssociativity!2585 (List!43224 List!43224 List!43224) Unit!62263)

(assert (=> b!4025160 (= lt!1429978 (lemmaConcatAssociativity!2585 lt!1429972 lt!1429971 suffix!1299))))

(declare-fun b!4025161 () Bool)

(declare-fun e!2497144 () Bool)

(declare-fun tp!1223451 () Bool)

(assert (=> b!4025161 (= e!2497144 (and tp_is_empty!20543 tp!1223451))))

(declare-fun res!1638042 () Bool)

(assert (=> start!379062 (=> (not res!1638042) (not e!2497140))))

(assert (=> start!379062 (= res!1638042 (is-Lexer!6468 thiss!21717))))

(assert (=> start!379062 e!2497140))

(assert (=> start!379062 e!2497144))

(declare-fun e!2497130 () Bool)

(declare-fun inv!57575 (Token!12900) Bool)

(assert (=> start!379062 (and (inv!57575 token!484) e!2497130)))

(declare-fun e!2497143 () Bool)

(assert (=> start!379062 e!2497143))

(assert (=> start!379062 e!2497135))

(declare-fun e!2497125 () Bool)

(assert (=> start!379062 e!2497125))

(assert (=> start!379062 true))

(declare-fun e!2497137 () Bool)

(assert (=> start!379062 e!2497137))

(assert (=> start!379062 e!2497141))

(declare-fun b!4025150 () Bool)

(declare-fun tp!1223444 () Bool)

(assert (=> b!4025150 (= e!2497125 (and tp_is_empty!20543 tp!1223444))))

(declare-fun b!4025162 () Bool)

(declare-fun res!1638040 () Bool)

(assert (=> b!4025162 (=> (not res!1638040) (not e!2497140))))

(assert (=> b!4025162 (= res!1638040 (>= (size!32219 suffix!1299) (size!32219 newSuffix!27)))))

(declare-fun b!4025163 () Bool)

(declare-fun e!2497132 () Bool)

(declare-fun tp!1223446 () Bool)

(assert (=> b!4025163 (= e!2497137 (and e!2497132 tp!1223446))))

(declare-fun tp!1223445 () Bool)

(declare-fun b!4025164 () Bool)

(declare-fun inv!57572 (String!49275) Bool)

(declare-fun inv!57576 (TokenValueInjection!13650) Bool)

(assert (=> b!4025164 (= e!2497132 (and tp!1223445 (inv!57572 (tag!7741 (h!48522 rules!2999))) (inv!57576 (transformation!6881 (h!48522 rules!2999))) e!2497133))))

(declare-fun b!4025165 () Bool)

(assert (=> b!4025165 (= e!2497142 e!2497128)))

(declare-fun res!1638037 () Bool)

(assert (=> b!4025165 (=> res!1638037 e!2497128)))

(declare-fun contains!8561 (List!43226 Rule!13562) Bool)

(assert (=> b!4025165 (= res!1638037 (not (contains!8561 rules!2999 (rule!9937 token!484))))))

(assert (=> b!4025165 (= lt!1429981 suffixResult!105)))

(declare-fun lt!1429980 () Unit!62263)

(declare-fun lemmaSamePrefixThenSameSuffix!2129 (List!43224 List!43224 List!43224 List!43224 List!43224) Unit!62263)

(assert (=> b!4025165 (= lt!1429980 (lemmaSamePrefixThenSameSuffix!2129 lt!1429972 lt!1429981 lt!1429972 suffixResult!105 lt!1429983))))

(assert (=> b!4025165 (isPrefix!3968 lt!1429972 lt!1429970)))

(declare-fun lt!1429976 () Unit!62263)

(assert (=> b!4025165 (= lt!1429976 (lemmaConcatTwoListThenFirstIsPrefix!2803 lt!1429972 lt!1429981))))

(declare-fun b!4025166 () Bool)

(declare-fun tp!1223441 () Bool)

(assert (=> b!4025166 (= e!2497143 (and tp_is_empty!20543 tp!1223441))))

(declare-fun e!2497131 () Bool)

(declare-fun e!2497129 () Bool)

(declare-fun b!4025167 () Bool)

(declare-fun tp!1223449 () Bool)

(assert (=> b!4025167 (= e!2497131 (and tp!1223449 (inv!57572 (tag!7741 (rule!9937 token!484))) (inv!57576 (transformation!6881 (rule!9937 token!484))) e!2497129))))

(declare-fun b!4025168 () Bool)

(declare-fun tp!1223439 () Bool)

(declare-fun inv!21 (TokenValue!7111) Bool)

(assert (=> b!4025168 (= e!2497130 (and (inv!21 (value!216744 token!484)) e!2497131 tp!1223439))))

(assert (=> b!4025169 (= e!2497129 (and tp!1223440 tp!1223443))))

(declare-fun b!4025170 () Bool)

(declare-fun res!1638045 () Bool)

(assert (=> b!4025170 (=> (not res!1638045) (not e!2497140))))

(declare-fun rulesInvariant!5813 (LexerInterface!6470 List!43226) Bool)

(assert (=> b!4025170 (= res!1638045 (rulesInvariant!5813 thiss!21717 rules!2999))))

(declare-fun b!4025171 () Bool)

(assert (=> b!4025171 (= e!2497124 (not e!2497138))))

(declare-fun res!1638047 () Bool)

(assert (=> b!4025171 (=> res!1638047 e!2497138)))

(assert (=> b!4025171 (= res!1638047 (not (= lt!1429982 lt!1429983)))))

(assert (=> b!4025171 (= lt!1429982 (++!11283 lt!1429972 suffixResult!105))))

(declare-fun lt!1429975 () Unit!62263)

(declare-fun lemmaInv!1090 (TokenValueInjection!13650) Unit!62263)

(assert (=> b!4025171 (= lt!1429975 (lemmaInv!1090 (transformation!6881 (rule!9937 token!484))))))

(declare-fun ruleValid!2811 (LexerInterface!6470 Rule!13562) Bool)

(assert (=> b!4025171 (ruleValid!2811 thiss!21717 (rule!9937 token!484))))

(declare-fun lt!1429973 () Unit!62263)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1881 (LexerInterface!6470 Rule!13562 List!43226) Unit!62263)

(assert (=> b!4025171 (= lt!1429973 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1881 thiss!21717 (rule!9937 token!484) rules!2999))))

(assert (= (and start!379062 res!1638042) b!4025155))

(assert (= (and b!4025155 res!1638039) b!4025170))

(assert (= (and b!4025170 res!1638045) b!4025162))

(assert (= (and b!4025162 res!1638040) b!4025151))

(assert (= (and b!4025151 res!1638035) b!4025154))

(assert (= (and b!4025154 res!1638046) b!4025148))

(assert (= (and b!4025148 res!1638043) b!4025158))

(assert (= (and b!4025158 res!1638041) b!4025171))

(assert (= (and b!4025171 (not res!1638047)) b!4025159))

(assert (= (and b!4025159 (not res!1638036)) b!4025157))

(assert (= (and b!4025157 (not res!1638038)) b!4025160))

(assert (= (and b!4025160 (not res!1638044)) b!4025165))

(assert (= (and b!4025165 (not res!1638037)) b!4025153))

(assert (= (and b!4025153 (not res!1638034)) b!4025147))

(assert (= (and start!379062 (is-Cons!43100 prefix!494)) b!4025161))

(assert (= b!4025167 b!4025169))

(assert (= b!4025168 b!4025167))

(assert (= start!379062 b!4025168))

(assert (= (and start!379062 (is-Cons!43100 suffixResult!105)) b!4025166))

(assert (= (and start!379062 (is-Cons!43100 suffix!1299)) b!4025152))

(assert (= (and start!379062 (is-Cons!43100 newSuffix!27)) b!4025150))

(assert (= b!4025164 b!4025149))

(assert (= b!4025163 b!4025164))

(assert (= (and start!379062 (is-Cons!43102 rules!2999)) b!4025163))

(assert (= (and start!379062 (is-Cons!43100 newSuffixResult!27)) b!4025156))

(declare-fun m!4616225 () Bool)

(assert (=> b!4025170 m!4616225))

(declare-fun m!4616227 () Bool)

(assert (=> b!4025147 m!4616227))

(declare-fun m!4616229 () Bool)

(assert (=> b!4025167 m!4616229))

(declare-fun m!4616231 () Bool)

(assert (=> b!4025167 m!4616231))

(declare-fun m!4616233 () Bool)

(assert (=> b!4025160 m!4616233))

(declare-fun m!4616235 () Bool)

(assert (=> b!4025160 m!4616235))

(declare-fun m!4616237 () Bool)

(assert (=> b!4025160 m!4616237))

(declare-fun m!4616239 () Bool)

(assert (=> b!4025160 m!4616239))

(declare-fun m!4616241 () Bool)

(assert (=> b!4025165 m!4616241))

(declare-fun m!4616243 () Bool)

(assert (=> b!4025165 m!4616243))

(declare-fun m!4616245 () Bool)

(assert (=> b!4025165 m!4616245))

(declare-fun m!4616247 () Bool)

(assert (=> b!4025165 m!4616247))

(declare-fun m!4616249 () Bool)

(assert (=> b!4025157 m!4616249))

(declare-fun m!4616251 () Bool)

(assert (=> b!4025157 m!4616251))

(declare-fun m!4616253 () Bool)

(assert (=> b!4025157 m!4616253))

(declare-fun m!4616255 () Bool)

(assert (=> b!4025157 m!4616255))

(declare-fun m!4616257 () Bool)

(assert (=> b!4025164 m!4616257))

(declare-fun m!4616259 () Bool)

(assert (=> b!4025164 m!4616259))

(declare-fun m!4616261 () Bool)

(assert (=> b!4025159 m!4616261))

(declare-fun m!4616263 () Bool)

(assert (=> b!4025159 m!4616263))

(declare-fun m!4616265 () Bool)

(assert (=> b!4025159 m!4616265))

(declare-fun m!4616267 () Bool)

(assert (=> b!4025159 m!4616267))

(declare-fun m!4616269 () Bool)

(assert (=> b!4025159 m!4616269))

(declare-fun m!4616271 () Bool)

(assert (=> b!4025158 m!4616271))

(declare-fun m!4616273 () Bool)

(assert (=> b!4025158 m!4616273))

(declare-fun m!4616275 () Bool)

(assert (=> b!4025162 m!4616275))

(declare-fun m!4616277 () Bool)

(assert (=> b!4025162 m!4616277))

(declare-fun m!4616279 () Bool)

(assert (=> b!4025155 m!4616279))

(declare-fun m!4616281 () Bool)

(assert (=> b!4025151 m!4616281))

(declare-fun m!4616283 () Bool)

(assert (=> b!4025154 m!4616283))

(declare-fun m!4616285 () Bool)

(assert (=> b!4025154 m!4616285))

(declare-fun m!4616287 () Bool)

(assert (=> b!4025154 m!4616287))

(assert (=> b!4025154 m!4616287))

(declare-fun m!4616289 () Bool)

(assert (=> b!4025154 m!4616289))

(declare-fun m!4616291 () Bool)

(assert (=> b!4025148 m!4616291))

(declare-fun m!4616293 () Bool)

(assert (=> b!4025148 m!4616293))

(declare-fun m!4616295 () Bool)

(assert (=> b!4025168 m!4616295))

(declare-fun m!4616297 () Bool)

(assert (=> b!4025171 m!4616297))

(declare-fun m!4616299 () Bool)

(assert (=> b!4025171 m!4616299))

(declare-fun m!4616301 () Bool)

(assert (=> b!4025171 m!4616301))

(declare-fun m!4616303 () Bool)

(assert (=> b!4025171 m!4616303))

(declare-fun m!4616305 () Bool)

(assert (=> start!379062 m!4616305))

(push 1)

(assert (not b!4025159))

(assert b_and!309257)

(assert (not b!4025165))

(assert tp_is_empty!20543)

(assert (not b!4025171))

(assert (not b!4025150))

(assert (not b!4025158))

(assert (not b!4025155))

(assert b_and!309259)

(assert (not b!4025163))

(assert (not b!4025160))

(assert (not b!4025168))

(assert (not b_next!112783))

(assert (not b!4025162))

(assert b_and!309255)

(assert (not b!4025148))

(assert (not b!4025156))

(assert (not b_next!112777))

(assert (not start!379062))

(assert (not b_next!112779))

(assert (not b!4025161))

(assert (not b!4025167))

(assert (not b!4025154))

(assert (not b!4025151))

(assert (not b!4025166))

(assert (not b_next!112781))

(assert (not b!4025147))

(assert (not b!4025164))

(assert (not b!4025152))

(assert b_and!309261)

(assert (not b!4025157))

(assert (not b!4025170))

(check-sat)

(pop 1)

(push 1)

(assert b_and!309255)

(assert (not b_next!112777))

(assert b_and!309257)

(assert (not b_next!112779))

(assert b_and!309259)

(assert (not b_next!112781))

(assert b_and!309261)

(assert (not b_next!112783))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1191940 () Bool)

(assert (=> d!1191940 (= (inv!57572 (tag!7741 (rule!9937 token!484))) (= (mod (str.len (value!216743 (tag!7741 (rule!9937 token!484)))) 2) 0))))

(assert (=> b!4025167 d!1191940))

(declare-fun d!1191942 () Bool)

(declare-fun res!1638126 () Bool)

(declare-fun e!2497238 () Bool)

(assert (=> d!1191942 (=> (not res!1638126) (not e!2497238))))

(declare-fun semiInverseModEq!2939 (Int Int) Bool)

(assert (=> d!1191942 (= res!1638126 (semiInverseModEq!2939 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (toValue!9397 (transformation!6881 (rule!9937 token!484)))))))

(assert (=> d!1191942 (= (inv!57576 (transformation!6881 (rule!9937 token!484))) e!2497238)))

(declare-fun b!4025289 () Bool)

(declare-fun equivClasses!2838 (Int Int) Bool)

(assert (=> b!4025289 (= e!2497238 (equivClasses!2838 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (toValue!9397 (transformation!6881 (rule!9937 token!484)))))))

(assert (= (and d!1191942 res!1638126) b!4025289))

(declare-fun m!4616455 () Bool)

(assert (=> d!1191942 m!4616455))

(declare-fun m!4616457 () Bool)

(assert (=> b!4025289 m!4616457))

(assert (=> b!4025167 d!1191942))

(declare-fun b!4025309 () Bool)

(declare-fun e!2497249 () List!43224)

(assert (=> b!4025309 (= e!2497249 (Cons!43100 (h!48520 lt!1429972) (++!11283 (t!333889 lt!1429972) lt!1429971)))))

(declare-fun b!4025310 () Bool)

(declare-fun res!1638136 () Bool)

(declare-fun e!2497250 () Bool)

(assert (=> b!4025310 (=> (not res!1638136) (not e!2497250))))

(declare-fun lt!1430054 () List!43224)

(assert (=> b!4025310 (= res!1638136 (= (size!32219 lt!1430054) (+ (size!32219 lt!1429972) (size!32219 lt!1429971))))))

(declare-fun b!4025311 () Bool)

(assert (=> b!4025311 (= e!2497250 (or (not (= lt!1429971 Nil!43100)) (= lt!1430054 lt!1429972)))))

(declare-fun b!4025308 () Bool)

(assert (=> b!4025308 (= e!2497249 lt!1429971)))

(declare-fun d!1191950 () Bool)

(assert (=> d!1191950 e!2497250))

(declare-fun res!1638135 () Bool)

(assert (=> d!1191950 (=> (not res!1638135) (not e!2497250))))

(declare-fun content!6541 (List!43224) (Set C!23758))

(assert (=> d!1191950 (= res!1638135 (= (content!6541 lt!1430054) (set.union (content!6541 lt!1429972) (content!6541 lt!1429971))))))

(assert (=> d!1191950 (= lt!1430054 e!2497249)))

(declare-fun c!695488 () Bool)

(assert (=> d!1191950 (= c!695488 (is-Nil!43100 lt!1429972))))

(assert (=> d!1191950 (= (++!11283 lt!1429972 lt!1429971) lt!1430054)))

(assert (= (and d!1191950 c!695488) b!4025308))

(assert (= (and d!1191950 (not c!695488)) b!4025309))

(assert (= (and d!1191950 res!1638135) b!4025310))

(assert (= (and b!4025310 res!1638136) b!4025311))

(declare-fun m!4616465 () Bool)

(assert (=> b!4025309 m!4616465))

(declare-fun m!4616467 () Bool)

(assert (=> b!4025310 m!4616467))

(assert (=> b!4025310 m!4616285))

(declare-fun m!4616469 () Bool)

(assert (=> b!4025310 m!4616469))

(declare-fun m!4616471 () Bool)

(assert (=> d!1191950 m!4616471))

(declare-fun m!4616473 () Bool)

(assert (=> d!1191950 m!4616473))

(declare-fun m!4616475 () Bool)

(assert (=> d!1191950 m!4616475))

(assert (=> b!4025157 d!1191950))

(declare-fun d!1191956 () Bool)

(declare-fun lt!1430060 () List!43224)

(assert (=> d!1191956 (= (++!11283 lt!1429972 lt!1430060) prefix!494)))

(declare-fun e!2497253 () List!43224)

(assert (=> d!1191956 (= lt!1430060 e!2497253)))

(declare-fun c!695491 () Bool)

(assert (=> d!1191956 (= c!695491 (is-Cons!43100 lt!1429972))))

(assert (=> d!1191956 (>= (size!32219 prefix!494) (size!32219 lt!1429972))))

(assert (=> d!1191956 (= (getSuffix!2385 prefix!494 lt!1429972) lt!1430060)))

(declare-fun b!4025316 () Bool)

(declare-fun tail!6266 (List!43224) List!43224)

(assert (=> b!4025316 (= e!2497253 (getSuffix!2385 (tail!6266 prefix!494) (t!333889 lt!1429972)))))

(declare-fun b!4025317 () Bool)

(assert (=> b!4025317 (= e!2497253 prefix!494)))

(assert (= (and d!1191956 c!695491) b!4025316))

(assert (= (and d!1191956 (not c!695491)) b!4025317))

(declare-fun m!4616479 () Bool)

(assert (=> d!1191956 m!4616479))

(assert (=> d!1191956 m!4616283))

(assert (=> d!1191956 m!4616285))

(declare-fun m!4616481 () Bool)

(assert (=> b!4025316 m!4616481))

(assert (=> b!4025316 m!4616481))

(declare-fun m!4616483 () Bool)

(assert (=> b!4025316 m!4616483))

(assert (=> b!4025157 d!1191956))

(declare-fun d!1191960 () Bool)

(declare-fun e!2497268 () Bool)

(assert (=> d!1191960 e!2497268))

(declare-fun res!1638153 () Bool)

(assert (=> d!1191960 (=> res!1638153 e!2497268)))

(declare-fun lt!1430066 () Bool)

(assert (=> d!1191960 (= res!1638153 (not lt!1430066))))

(declare-fun e!2497266 () Bool)

(assert (=> d!1191960 (= lt!1430066 e!2497266)))

(declare-fun res!1638152 () Bool)

(assert (=> d!1191960 (=> res!1638152 e!2497266)))

(assert (=> d!1191960 (= res!1638152 (is-Nil!43100 lt!1429972))))

(assert (=> d!1191960 (= (isPrefix!3968 lt!1429972 prefix!494) lt!1430066)))

(declare-fun b!4025334 () Bool)

(declare-fun e!2497267 () Bool)

(assert (=> b!4025334 (= e!2497267 (isPrefix!3968 (tail!6266 lt!1429972) (tail!6266 prefix!494)))))

(declare-fun b!4025335 () Bool)

(assert (=> b!4025335 (= e!2497268 (>= (size!32219 prefix!494) (size!32219 lt!1429972)))))

(declare-fun b!4025332 () Bool)

(assert (=> b!4025332 (= e!2497266 e!2497267)))

(declare-fun res!1638151 () Bool)

(assert (=> b!4025332 (=> (not res!1638151) (not e!2497267))))

(assert (=> b!4025332 (= res!1638151 (not (is-Nil!43100 prefix!494)))))

(declare-fun b!4025333 () Bool)

(declare-fun res!1638154 () Bool)

(assert (=> b!4025333 (=> (not res!1638154) (not e!2497267))))

(declare-fun head!8534 (List!43224) C!23758)

(assert (=> b!4025333 (= res!1638154 (= (head!8534 lt!1429972) (head!8534 prefix!494)))))

(assert (= (and d!1191960 (not res!1638152)) b!4025332))

(assert (= (and b!4025332 res!1638151) b!4025333))

(assert (= (and b!4025333 res!1638154) b!4025334))

(assert (= (and d!1191960 (not res!1638153)) b!4025335))

(declare-fun m!4616485 () Bool)

(assert (=> b!4025334 m!4616485))

(assert (=> b!4025334 m!4616481))

(assert (=> b!4025334 m!4616485))

(assert (=> b!4025334 m!4616481))

(declare-fun m!4616489 () Bool)

(assert (=> b!4025334 m!4616489))

(assert (=> b!4025335 m!4616283))

(assert (=> b!4025335 m!4616285))

(declare-fun m!4616491 () Bool)

(assert (=> b!4025333 m!4616491))

(declare-fun m!4616495 () Bool)

(assert (=> b!4025333 m!4616495))

(assert (=> b!4025157 d!1191960))

(declare-fun d!1191962 () Bool)

(assert (=> d!1191962 (isPrefix!3968 lt!1429972 prefix!494)))

(declare-fun lt!1430069 () Unit!62263)

(declare-fun choose!24337 (List!43224 List!43224 List!43224) Unit!62263)

(assert (=> d!1191962 (= lt!1430069 (choose!24337 prefix!494 lt!1429972 lt!1429983))))

(assert (=> d!1191962 (isPrefix!3968 prefix!494 lt!1429983)))

(assert (=> d!1191962 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!532 prefix!494 lt!1429972 lt!1429983) lt!1430069)))

(declare-fun bs!590010 () Bool)

(assert (= bs!590010 d!1191962))

(assert (=> bs!590010 m!4616253))

(declare-fun m!4616499 () Bool)

(assert (=> bs!590010 m!4616499))

(assert (=> bs!590010 m!4616267))

(assert (=> b!4025157 d!1191962))

(declare-fun b!4025350 () Bool)

(declare-fun res!1638161 () Bool)

(declare-fun e!2497279 () Bool)

(assert (=> b!4025350 (=> res!1638161 e!2497279)))

(assert (=> b!4025350 (= res!1638161 (not (is-IntegerValue!21335 (value!216744 token!484))))))

(declare-fun e!2497280 () Bool)

(assert (=> b!4025350 (= e!2497280 e!2497279)))

(declare-fun d!1191966 () Bool)

(declare-fun c!695497 () Bool)

(assert (=> d!1191966 (= c!695497 (is-IntegerValue!21333 (value!216744 token!484)))))

(declare-fun e!2497278 () Bool)

(assert (=> d!1191966 (= (inv!21 (value!216744 token!484)) e!2497278)))

(declare-fun b!4025351 () Bool)

(declare-fun inv!17 (TokenValue!7111) Bool)

(assert (=> b!4025351 (= e!2497280 (inv!17 (value!216744 token!484)))))

(declare-fun b!4025352 () Bool)

(declare-fun inv!16 (TokenValue!7111) Bool)

(assert (=> b!4025352 (= e!2497278 (inv!16 (value!216744 token!484)))))

(declare-fun b!4025353 () Bool)

(declare-fun inv!15 (TokenValue!7111) Bool)

(assert (=> b!4025353 (= e!2497279 (inv!15 (value!216744 token!484)))))

(declare-fun b!4025354 () Bool)

(assert (=> b!4025354 (= e!2497278 e!2497280)))

(declare-fun c!695496 () Bool)

(assert (=> b!4025354 (= c!695496 (is-IntegerValue!21334 (value!216744 token!484)))))

(assert (= (and d!1191966 c!695497) b!4025352))

(assert (= (and d!1191966 (not c!695497)) b!4025354))

(assert (= (and b!4025354 c!695496) b!4025351))

(assert (= (and b!4025354 (not c!695496)) b!4025350))

(assert (= (and b!4025350 (not res!1638161)) b!4025353))

(declare-fun m!4616503 () Bool)

(assert (=> b!4025351 m!4616503))

(declare-fun m!4616505 () Bool)

(assert (=> b!4025352 m!4616505))

(declare-fun m!4616507 () Bool)

(assert (=> b!4025353 m!4616507))

(assert (=> b!4025168 d!1191966))

(declare-fun d!1191970 () Bool)

(assert (=> d!1191970 (= (isEmpty!25730 lt!1429972) (is-Nil!43100 lt!1429972))))

(assert (=> b!4025147 d!1191970))

(declare-fun d!1191974 () Bool)

(declare-fun e!2497300 () Bool)

(assert (=> d!1191974 e!2497300))

(declare-fun res!1638190 () Bool)

(assert (=> d!1191974 (=> res!1638190 e!2497300)))

(declare-fun lt!1430099 () Option!9295)

(declare-fun isEmpty!25734 (Option!9295) Bool)

(assert (=> d!1191974 (= res!1638190 (isEmpty!25734 lt!1430099))))

(declare-fun e!2497301 () Option!9295)

(assert (=> d!1191974 (= lt!1430099 e!2497301)))

(declare-fun c!695505 () Bool)

(assert (=> d!1191974 (= c!695505 (and (is-Cons!43102 rules!2999) (is-Nil!43102 (t!333891 rules!2999))))))

(declare-fun lt!1430096 () Unit!62263)

(declare-fun lt!1430098 () Unit!62263)

(assert (=> d!1191974 (= lt!1430096 lt!1430098)))

(assert (=> d!1191974 (isPrefix!3968 lt!1429983 lt!1429983)))

(declare-fun lemmaIsPrefixRefl!2535 (List!43224 List!43224) Unit!62263)

(assert (=> d!1191974 (= lt!1430098 (lemmaIsPrefixRefl!2535 lt!1429983 lt!1429983))))

(declare-fun rulesValidInductive!2506 (LexerInterface!6470 List!43226) Bool)

(assert (=> d!1191974 (rulesValidInductive!2506 thiss!21717 rules!2999)))

(assert (=> d!1191974 (= (maxPrefix!3768 thiss!21717 rules!2999 lt!1429983) lt!1430099)))

(declare-fun b!4025394 () Bool)

(declare-fun call!286765 () Option!9295)

(assert (=> b!4025394 (= e!2497301 call!286765)))

(declare-fun b!4025395 () Bool)

(declare-fun e!2497299 () Bool)

(assert (=> b!4025395 (= e!2497300 e!2497299)))

(declare-fun res!1638191 () Bool)

(assert (=> b!4025395 (=> (not res!1638191) (not e!2497299))))

(declare-fun isDefined!7085 (Option!9295) Bool)

(assert (=> b!4025395 (= res!1638191 (isDefined!7085 lt!1430099))))

(declare-fun bm!286760 () Bool)

(declare-fun maxPrefixOneRule!2780 (LexerInterface!6470 Rule!13562 List!43224) Option!9295)

(assert (=> bm!286760 (= call!286765 (maxPrefixOneRule!2780 thiss!21717 (h!48522 rules!2999) lt!1429983))))

(declare-fun b!4025396 () Bool)

(declare-fun res!1638187 () Bool)

(assert (=> b!4025396 (=> (not res!1638187) (not e!2497299))))

(declare-fun get!14150 (Option!9295) tuple2!42208)

(assert (=> b!4025396 (= res!1638187 (= (++!11283 (list!16029 (charsOf!4697 (_1!24238 (get!14150 lt!1430099)))) (_2!24238 (get!14150 lt!1430099))) lt!1429983))))

(declare-fun b!4025397 () Bool)

(assert (=> b!4025397 (= e!2497299 (contains!8561 rules!2999 (rule!9937 (_1!24238 (get!14150 lt!1430099)))))))

(declare-fun b!4025398 () Bool)

(declare-fun res!1638188 () Bool)

(assert (=> b!4025398 (=> (not res!1638188) (not e!2497299))))

(declare-fun matchR!5739 (Regex!11786 List!43224) Bool)

(assert (=> b!4025398 (= res!1638188 (matchR!5739 (regex!6881 (rule!9937 (_1!24238 (get!14150 lt!1430099)))) (list!16029 (charsOf!4697 (_1!24238 (get!14150 lt!1430099))))))))

(declare-fun b!4025399 () Bool)

(declare-fun res!1638189 () Bool)

(assert (=> b!4025399 (=> (not res!1638189) (not e!2497299))))

(assert (=> b!4025399 (= res!1638189 (< (size!32219 (_2!24238 (get!14150 lt!1430099))) (size!32219 lt!1429983)))))

(declare-fun b!4025400 () Bool)

(declare-fun res!1638192 () Bool)

(assert (=> b!4025400 (=> (not res!1638192) (not e!2497299))))

(assert (=> b!4025400 (= res!1638192 (= (list!16029 (charsOf!4697 (_1!24238 (get!14150 lt!1430099)))) (originalCharacters!7481 (_1!24238 (get!14150 lt!1430099)))))))

(declare-fun b!4025401 () Bool)

(declare-fun lt!1430095 () Option!9295)

(declare-fun lt!1430097 () Option!9295)

(assert (=> b!4025401 (= e!2497301 (ite (and (is-None!9294 lt!1430095) (is-None!9294 lt!1430097)) None!9294 (ite (is-None!9294 lt!1430097) lt!1430095 (ite (is-None!9294 lt!1430095) lt!1430097 (ite (>= (size!32220 (_1!24238 (v!39676 lt!1430095))) (size!32220 (_1!24238 (v!39676 lt!1430097)))) lt!1430095 lt!1430097)))))))

(assert (=> b!4025401 (= lt!1430095 call!286765)))

(assert (=> b!4025401 (= lt!1430097 (maxPrefix!3768 thiss!21717 (t!333891 rules!2999) lt!1429983))))

(declare-fun b!4025402 () Bool)

(declare-fun res!1638193 () Bool)

(assert (=> b!4025402 (=> (not res!1638193) (not e!2497299))))

(declare-fun apply!10070 (TokenValueInjection!13650 BalanceConc!25778) TokenValue!7111)

(declare-fun seqFromList!5098 (List!43224) BalanceConc!25778)

(assert (=> b!4025402 (= res!1638193 (= (value!216744 (_1!24238 (get!14150 lt!1430099))) (apply!10070 (transformation!6881 (rule!9937 (_1!24238 (get!14150 lt!1430099)))) (seqFromList!5098 (originalCharacters!7481 (_1!24238 (get!14150 lt!1430099)))))))))

(assert (= (and d!1191974 c!695505) b!4025394))

(assert (= (and d!1191974 (not c!695505)) b!4025401))

(assert (= (or b!4025394 b!4025401) bm!286760))

(assert (= (and d!1191974 (not res!1638190)) b!4025395))

(assert (= (and b!4025395 res!1638191) b!4025400))

(assert (= (and b!4025400 res!1638192) b!4025399))

(assert (= (and b!4025399 res!1638189) b!4025396))

(assert (= (and b!4025396 res!1638187) b!4025402))

(assert (= (and b!4025402 res!1638193) b!4025398))

(assert (= (and b!4025398 res!1638188) b!4025397))

(declare-fun m!4616547 () Bool)

(assert (=> bm!286760 m!4616547))

(declare-fun m!4616549 () Bool)

(assert (=> d!1191974 m!4616549))

(declare-fun m!4616551 () Bool)

(assert (=> d!1191974 m!4616551))

(declare-fun m!4616553 () Bool)

(assert (=> d!1191974 m!4616553))

(declare-fun m!4616555 () Bool)

(assert (=> d!1191974 m!4616555))

(declare-fun m!4616557 () Bool)

(assert (=> b!4025399 m!4616557))

(declare-fun m!4616559 () Bool)

(assert (=> b!4025399 m!4616559))

(declare-fun m!4616561 () Bool)

(assert (=> b!4025399 m!4616561))

(assert (=> b!4025397 m!4616557))

(declare-fun m!4616563 () Bool)

(assert (=> b!4025397 m!4616563))

(assert (=> b!4025398 m!4616557))

(declare-fun m!4616565 () Bool)

(assert (=> b!4025398 m!4616565))

(assert (=> b!4025398 m!4616565))

(declare-fun m!4616567 () Bool)

(assert (=> b!4025398 m!4616567))

(assert (=> b!4025398 m!4616567))

(declare-fun m!4616569 () Bool)

(assert (=> b!4025398 m!4616569))

(assert (=> b!4025400 m!4616557))

(assert (=> b!4025400 m!4616565))

(assert (=> b!4025400 m!4616565))

(assert (=> b!4025400 m!4616567))

(assert (=> b!4025396 m!4616557))

(assert (=> b!4025396 m!4616565))

(assert (=> b!4025396 m!4616565))

(assert (=> b!4025396 m!4616567))

(assert (=> b!4025396 m!4616567))

(declare-fun m!4616571 () Bool)

(assert (=> b!4025396 m!4616571))

(declare-fun m!4616573 () Bool)

(assert (=> b!4025395 m!4616573))

(assert (=> b!4025402 m!4616557))

(declare-fun m!4616575 () Bool)

(assert (=> b!4025402 m!4616575))

(assert (=> b!4025402 m!4616575))

(declare-fun m!4616577 () Bool)

(assert (=> b!4025402 m!4616577))

(declare-fun m!4616579 () Bool)

(assert (=> b!4025401 m!4616579))

(assert (=> b!4025158 d!1191974))

(declare-fun b!4025408 () Bool)

(declare-fun e!2497304 () List!43224)

(assert (=> b!4025408 (= e!2497304 (Cons!43100 (h!48520 prefix!494) (++!11283 (t!333889 prefix!494) suffix!1299)))))

(declare-fun b!4025409 () Bool)

(declare-fun res!1638195 () Bool)

(declare-fun e!2497305 () Bool)

(assert (=> b!4025409 (=> (not res!1638195) (not e!2497305))))

(declare-fun lt!1430101 () List!43224)

(assert (=> b!4025409 (= res!1638195 (= (size!32219 lt!1430101) (+ (size!32219 prefix!494) (size!32219 suffix!1299))))))

(declare-fun b!4025410 () Bool)

(assert (=> b!4025410 (= e!2497305 (or (not (= suffix!1299 Nil!43100)) (= lt!1430101 prefix!494)))))

(declare-fun b!4025407 () Bool)

(assert (=> b!4025407 (= e!2497304 suffix!1299)))

(declare-fun d!1191994 () Bool)

(assert (=> d!1191994 e!2497305))

(declare-fun res!1638194 () Bool)

(assert (=> d!1191994 (=> (not res!1638194) (not e!2497305))))

(assert (=> d!1191994 (= res!1638194 (= (content!6541 lt!1430101) (set.union (content!6541 prefix!494) (content!6541 suffix!1299))))))

(assert (=> d!1191994 (= lt!1430101 e!2497304)))

(declare-fun c!695506 () Bool)

(assert (=> d!1191994 (= c!695506 (is-Nil!43100 prefix!494))))

(assert (=> d!1191994 (= (++!11283 prefix!494 suffix!1299) lt!1430101)))

(assert (= (and d!1191994 c!695506) b!4025407))

(assert (= (and d!1191994 (not c!695506)) b!4025408))

(assert (= (and d!1191994 res!1638194) b!4025409))

(assert (= (and b!4025409 res!1638195) b!4025410))

(declare-fun m!4616581 () Bool)

(assert (=> b!4025408 m!4616581))

(declare-fun m!4616583 () Bool)

(assert (=> b!4025409 m!4616583))

(assert (=> b!4025409 m!4616283))

(assert (=> b!4025409 m!4616275))

(declare-fun m!4616585 () Bool)

(assert (=> d!1191994 m!4616585))

(declare-fun m!4616587 () Bool)

(assert (=> d!1191994 m!4616587))

(declare-fun m!4616589 () Bool)

(assert (=> d!1191994 m!4616589))

(assert (=> b!4025158 d!1191994))

(declare-fun b!4025413 () Bool)

(declare-fun e!2497307 () List!43224)

(assert (=> b!4025413 (= e!2497307 (Cons!43100 (h!48520 lt!1429972) (++!11283 (t!333889 lt!1429972) newSuffixResult!27)))))

(declare-fun b!4025414 () Bool)

(declare-fun res!1638197 () Bool)

(declare-fun e!2497308 () Bool)

(assert (=> b!4025414 (=> (not res!1638197) (not e!2497308))))

(declare-fun lt!1430102 () List!43224)

(assert (=> b!4025414 (= res!1638197 (= (size!32219 lt!1430102) (+ (size!32219 lt!1429972) (size!32219 newSuffixResult!27))))))

(declare-fun b!4025415 () Bool)

(assert (=> b!4025415 (= e!2497308 (or (not (= newSuffixResult!27 Nil!43100)) (= lt!1430102 lt!1429972)))))

(declare-fun b!4025412 () Bool)

(assert (=> b!4025412 (= e!2497307 newSuffixResult!27)))

(declare-fun d!1191996 () Bool)

(assert (=> d!1191996 e!2497308))

(declare-fun res!1638196 () Bool)

(assert (=> d!1191996 (=> (not res!1638196) (not e!2497308))))

(assert (=> d!1191996 (= res!1638196 (= (content!6541 lt!1430102) (set.union (content!6541 lt!1429972) (content!6541 newSuffixResult!27))))))

(assert (=> d!1191996 (= lt!1430102 e!2497307)))

(declare-fun c!695507 () Bool)

(assert (=> d!1191996 (= c!695507 (is-Nil!43100 lt!1429972))))

(assert (=> d!1191996 (= (++!11283 lt!1429972 newSuffixResult!27) lt!1430102)))

(assert (= (and d!1191996 c!695507) b!4025412))

(assert (= (and d!1191996 (not c!695507)) b!4025413))

(assert (= (and d!1191996 res!1638196) b!4025414))

(assert (= (and b!4025414 res!1638197) b!4025415))

(declare-fun m!4616595 () Bool)

(assert (=> b!4025413 m!4616595))

(declare-fun m!4616597 () Bool)

(assert (=> b!4025414 m!4616597))

(assert (=> b!4025414 m!4616285))

(declare-fun m!4616599 () Bool)

(assert (=> b!4025414 m!4616599))

(declare-fun m!4616601 () Bool)

(assert (=> d!1191996 m!4616601))

(assert (=> d!1191996 m!4616473))

(declare-fun m!4616603 () Bool)

(assert (=> d!1191996 m!4616603))

(assert (=> b!4025148 d!1191996))

(declare-fun b!4025417 () Bool)

(declare-fun e!2497309 () List!43224)

(assert (=> b!4025417 (= e!2497309 (Cons!43100 (h!48520 prefix!494) (++!11283 (t!333889 prefix!494) newSuffix!27)))))

(declare-fun b!4025418 () Bool)

(declare-fun res!1638199 () Bool)

(declare-fun e!2497310 () Bool)

(assert (=> b!4025418 (=> (not res!1638199) (not e!2497310))))

(declare-fun lt!1430103 () List!43224)

(assert (=> b!4025418 (= res!1638199 (= (size!32219 lt!1430103) (+ (size!32219 prefix!494) (size!32219 newSuffix!27))))))

(declare-fun b!4025419 () Bool)

(assert (=> b!4025419 (= e!2497310 (or (not (= newSuffix!27 Nil!43100)) (= lt!1430103 prefix!494)))))

(declare-fun b!4025416 () Bool)

(assert (=> b!4025416 (= e!2497309 newSuffix!27)))

(declare-fun d!1191998 () Bool)

(assert (=> d!1191998 e!2497310))

(declare-fun res!1638198 () Bool)

(assert (=> d!1191998 (=> (not res!1638198) (not e!2497310))))

(assert (=> d!1191998 (= res!1638198 (= (content!6541 lt!1430103) (set.union (content!6541 prefix!494) (content!6541 newSuffix!27))))))

(assert (=> d!1191998 (= lt!1430103 e!2497309)))

(declare-fun c!695508 () Bool)

(assert (=> d!1191998 (= c!695508 (is-Nil!43100 prefix!494))))

(assert (=> d!1191998 (= (++!11283 prefix!494 newSuffix!27) lt!1430103)))

(assert (= (and d!1191998 c!695508) b!4025416))

(assert (= (and d!1191998 (not c!695508)) b!4025417))

(assert (= (and d!1191998 res!1638198) b!4025418))

(assert (= (and b!4025418 res!1638199) b!4025419))

(declare-fun m!4616609 () Bool)

(assert (=> b!4025417 m!4616609))

(declare-fun m!4616611 () Bool)

(assert (=> b!4025418 m!4616611))

(assert (=> b!4025418 m!4616283))

(assert (=> b!4025418 m!4616277))

(declare-fun m!4616613 () Bool)

(assert (=> d!1191998 m!4616613))

(assert (=> d!1191998 m!4616587))

(declare-fun m!4616615 () Bool)

(assert (=> d!1191998 m!4616615))

(assert (=> b!4025148 d!1191998))

(declare-fun d!1192002 () Bool)

(declare-fun e!2497313 () Bool)

(assert (=> d!1192002 e!2497313))

(declare-fun res!1638202 () Bool)

(assert (=> d!1192002 (=> res!1638202 e!2497313)))

(declare-fun lt!1430104 () Bool)

(assert (=> d!1192002 (= res!1638202 (not lt!1430104))))

(declare-fun e!2497311 () Bool)

(assert (=> d!1192002 (= lt!1430104 e!2497311)))

(declare-fun res!1638201 () Bool)

(assert (=> d!1192002 (=> res!1638201 e!2497311)))

(assert (=> d!1192002 (= res!1638201 (is-Nil!43100 lt!1429972))))

(assert (=> d!1192002 (= (isPrefix!3968 lt!1429972 lt!1429982) lt!1430104)))

(declare-fun b!4025422 () Bool)

(declare-fun e!2497312 () Bool)

(assert (=> b!4025422 (= e!2497312 (isPrefix!3968 (tail!6266 lt!1429972) (tail!6266 lt!1429982)))))

(declare-fun b!4025423 () Bool)

(assert (=> b!4025423 (= e!2497313 (>= (size!32219 lt!1429982) (size!32219 lt!1429972)))))

(declare-fun b!4025420 () Bool)

(assert (=> b!4025420 (= e!2497311 e!2497312)))

(declare-fun res!1638200 () Bool)

(assert (=> b!4025420 (=> (not res!1638200) (not e!2497312))))

(assert (=> b!4025420 (= res!1638200 (not (is-Nil!43100 lt!1429982)))))

(declare-fun b!4025421 () Bool)

(declare-fun res!1638203 () Bool)

(assert (=> b!4025421 (=> (not res!1638203) (not e!2497312))))

(assert (=> b!4025421 (= res!1638203 (= (head!8534 lt!1429972) (head!8534 lt!1429982)))))

(assert (= (and d!1192002 (not res!1638201)) b!4025420))

(assert (= (and b!4025420 res!1638200) b!4025421))

(assert (= (and b!4025421 res!1638203) b!4025422))

(assert (= (and d!1192002 (not res!1638202)) b!4025423))

(assert (=> b!4025422 m!4616485))

(declare-fun m!4616617 () Bool)

(assert (=> b!4025422 m!4616617))

(assert (=> b!4025422 m!4616485))

(assert (=> b!4025422 m!4616617))

(declare-fun m!4616619 () Bool)

(assert (=> b!4025422 m!4616619))

(declare-fun m!4616621 () Bool)

(assert (=> b!4025423 m!4616621))

(assert (=> b!4025423 m!4616285))

(assert (=> b!4025421 m!4616491))

(declare-fun m!4616623 () Bool)

(assert (=> b!4025421 m!4616623))

(assert (=> b!4025159 d!1192002))

(declare-fun d!1192004 () Bool)

(assert (=> d!1192004 (isPrefix!3968 lt!1429972 (++!11283 lt!1429972 suffixResult!105))))

(declare-fun lt!1430107 () Unit!62263)

(declare-fun choose!24339 (List!43224 List!43224) Unit!62263)

(assert (=> d!1192004 (= lt!1430107 (choose!24339 lt!1429972 suffixResult!105))))

(assert (=> d!1192004 (= (lemmaConcatTwoListThenFirstIsPrefix!2803 lt!1429972 suffixResult!105) lt!1430107)))

(declare-fun bs!590015 () Bool)

(assert (= bs!590015 d!1192004))

(assert (=> bs!590015 m!4616297))

(assert (=> bs!590015 m!4616297))

(declare-fun m!4616625 () Bool)

(assert (=> bs!590015 m!4616625))

(declare-fun m!4616627 () Bool)

(assert (=> bs!590015 m!4616627))

(assert (=> b!4025159 d!1192004))

(declare-fun d!1192006 () Bool)

(declare-fun e!2497316 () Bool)

(assert (=> d!1192006 e!2497316))

(declare-fun res!1638206 () Bool)

(assert (=> d!1192006 (=> res!1638206 e!2497316)))

(declare-fun lt!1430108 () Bool)

(assert (=> d!1192006 (= res!1638206 (not lt!1430108))))

(declare-fun e!2497314 () Bool)

(assert (=> d!1192006 (= lt!1430108 e!2497314)))

(declare-fun res!1638205 () Bool)

(assert (=> d!1192006 (=> res!1638205 e!2497314)))

(assert (=> d!1192006 (= res!1638205 (is-Nil!43100 prefix!494))))

(assert (=> d!1192006 (= (isPrefix!3968 prefix!494 lt!1429983) lt!1430108)))

(declare-fun b!4025426 () Bool)

(declare-fun e!2497315 () Bool)

(assert (=> b!4025426 (= e!2497315 (isPrefix!3968 (tail!6266 prefix!494) (tail!6266 lt!1429983)))))

(declare-fun b!4025427 () Bool)

(assert (=> b!4025427 (= e!2497316 (>= (size!32219 lt!1429983) (size!32219 prefix!494)))))

(declare-fun b!4025424 () Bool)

(assert (=> b!4025424 (= e!2497314 e!2497315)))

(declare-fun res!1638204 () Bool)

(assert (=> b!4025424 (=> (not res!1638204) (not e!2497315))))

(assert (=> b!4025424 (= res!1638204 (not (is-Nil!43100 lt!1429983)))))

(declare-fun b!4025425 () Bool)

(declare-fun res!1638207 () Bool)

(assert (=> b!4025425 (=> (not res!1638207) (not e!2497315))))

(assert (=> b!4025425 (= res!1638207 (= (head!8534 prefix!494) (head!8534 lt!1429983)))))

(assert (= (and d!1192006 (not res!1638205)) b!4025424))

(assert (= (and b!4025424 res!1638204) b!4025425))

(assert (= (and b!4025425 res!1638207) b!4025426))

(assert (= (and d!1192006 (not res!1638206)) b!4025427))

(assert (=> b!4025426 m!4616481))

(declare-fun m!4616629 () Bool)

(assert (=> b!4025426 m!4616629))

(assert (=> b!4025426 m!4616481))

(assert (=> b!4025426 m!4616629))

(declare-fun m!4616631 () Bool)

(assert (=> b!4025426 m!4616631))

(assert (=> b!4025427 m!4616561))

(assert (=> b!4025427 m!4616283))

(assert (=> b!4025425 m!4616495))

(declare-fun m!4616633 () Bool)

(assert (=> b!4025425 m!4616633))

(assert (=> b!4025159 d!1192006))

(declare-fun d!1192008 () Bool)

(declare-fun e!2497319 () Bool)

(assert (=> d!1192008 e!2497319))

(declare-fun res!1638210 () Bool)

(assert (=> d!1192008 (=> res!1638210 e!2497319)))

(declare-fun lt!1430109 () Bool)

(assert (=> d!1192008 (= res!1638210 (not lt!1430109))))

(declare-fun e!2497317 () Bool)

(assert (=> d!1192008 (= lt!1430109 e!2497317)))

(declare-fun res!1638209 () Bool)

(assert (=> d!1192008 (=> res!1638209 e!2497317)))

(assert (=> d!1192008 (= res!1638209 (is-Nil!43100 lt!1429972))))

(assert (=> d!1192008 (= (isPrefix!3968 lt!1429972 lt!1429983) lt!1430109)))

(declare-fun b!4025430 () Bool)

(declare-fun e!2497318 () Bool)

(assert (=> b!4025430 (= e!2497318 (isPrefix!3968 (tail!6266 lt!1429972) (tail!6266 lt!1429983)))))

(declare-fun b!4025431 () Bool)

(assert (=> b!4025431 (= e!2497319 (>= (size!32219 lt!1429983) (size!32219 lt!1429972)))))

(declare-fun b!4025428 () Bool)

(assert (=> b!4025428 (= e!2497317 e!2497318)))

(declare-fun res!1638208 () Bool)

(assert (=> b!4025428 (=> (not res!1638208) (not e!2497318))))

(assert (=> b!4025428 (= res!1638208 (not (is-Nil!43100 lt!1429983)))))

(declare-fun b!4025429 () Bool)

(declare-fun res!1638211 () Bool)

(assert (=> b!4025429 (=> (not res!1638211) (not e!2497318))))

(assert (=> b!4025429 (= res!1638211 (= (head!8534 lt!1429972) (head!8534 lt!1429983)))))

(assert (= (and d!1192008 (not res!1638209)) b!4025428))

(assert (= (and b!4025428 res!1638208) b!4025429))

(assert (= (and b!4025429 res!1638211) b!4025430))

(assert (= (and d!1192008 (not res!1638210)) b!4025431))

(assert (=> b!4025430 m!4616485))

(assert (=> b!4025430 m!4616629))

(assert (=> b!4025430 m!4616485))

(assert (=> b!4025430 m!4616629))

(declare-fun m!4616635 () Bool)

(assert (=> b!4025430 m!4616635))

(assert (=> b!4025431 m!4616561))

(assert (=> b!4025431 m!4616285))

(assert (=> b!4025429 m!4616491))

(assert (=> b!4025429 m!4616633))

(assert (=> b!4025159 d!1192008))

(declare-fun d!1192010 () Bool)

(assert (=> d!1192010 (isPrefix!3968 prefix!494 (++!11283 prefix!494 suffix!1299))))

(declare-fun lt!1430110 () Unit!62263)

(assert (=> d!1192010 (= lt!1430110 (choose!24339 prefix!494 suffix!1299))))

(assert (=> d!1192010 (= (lemmaConcatTwoListThenFirstIsPrefix!2803 prefix!494 suffix!1299) lt!1430110)))

(declare-fun bs!590016 () Bool)

(assert (= bs!590016 d!1192010))

(assert (=> bs!590016 m!4616273))

(assert (=> bs!590016 m!4616273))

(declare-fun m!4616637 () Bool)

(assert (=> bs!590016 m!4616637))

(declare-fun m!4616639 () Bool)

(assert (=> bs!590016 m!4616639))

(assert (=> b!4025159 d!1192010))

(declare-fun d!1192012 () Bool)

(declare-fun res!1638214 () Bool)

(declare-fun e!2497322 () Bool)

(assert (=> d!1192012 (=> (not res!1638214) (not e!2497322))))

(declare-fun rulesValid!2673 (LexerInterface!6470 List!43226) Bool)

(assert (=> d!1192012 (= res!1638214 (rulesValid!2673 thiss!21717 rules!2999))))

(assert (=> d!1192012 (= (rulesInvariant!5813 thiss!21717 rules!2999) e!2497322)))

(declare-fun b!4025434 () Bool)

(declare-datatypes ((List!43230 0))(
  ( (Nil!43106) (Cons!43106 (h!48526 String!49275) (t!333907 List!43230)) )
))
(declare-fun noDuplicateTag!2674 (LexerInterface!6470 List!43226 List!43230) Bool)

(assert (=> b!4025434 (= e!2497322 (noDuplicateTag!2674 thiss!21717 rules!2999 Nil!43106))))

(assert (= (and d!1192012 res!1638214) b!4025434))

(declare-fun m!4616641 () Bool)

(assert (=> d!1192012 m!4616641))

(declare-fun m!4616643 () Bool)

(assert (=> b!4025434 m!4616643))

(assert (=> b!4025170 d!1192012))

(declare-fun b!4025436 () Bool)

(declare-fun e!2497323 () List!43224)

(assert (=> b!4025436 (= e!2497323 (Cons!43100 (h!48520 lt!1429972) (++!11283 (t!333889 lt!1429972) lt!1429981)))))

(declare-fun b!4025437 () Bool)

(declare-fun res!1638216 () Bool)

(declare-fun e!2497324 () Bool)

(assert (=> b!4025437 (=> (not res!1638216) (not e!2497324))))

(declare-fun lt!1430111 () List!43224)

(assert (=> b!4025437 (= res!1638216 (= (size!32219 lt!1430111) (+ (size!32219 lt!1429972) (size!32219 lt!1429981))))))

(declare-fun b!4025438 () Bool)

(assert (=> b!4025438 (= e!2497324 (or (not (= lt!1429981 Nil!43100)) (= lt!1430111 lt!1429972)))))

(declare-fun b!4025435 () Bool)

(assert (=> b!4025435 (= e!2497323 lt!1429981)))

(declare-fun d!1192014 () Bool)

(assert (=> d!1192014 e!2497324))

(declare-fun res!1638215 () Bool)

(assert (=> d!1192014 (=> (not res!1638215) (not e!2497324))))

(assert (=> d!1192014 (= res!1638215 (= (content!6541 lt!1430111) (set.union (content!6541 lt!1429972) (content!6541 lt!1429981))))))

(assert (=> d!1192014 (= lt!1430111 e!2497323)))

(declare-fun c!695509 () Bool)

(assert (=> d!1192014 (= c!695509 (is-Nil!43100 lt!1429972))))

(assert (=> d!1192014 (= (++!11283 lt!1429972 lt!1429981) lt!1430111)))

(assert (= (and d!1192014 c!695509) b!4025435))

(assert (= (and d!1192014 (not c!695509)) b!4025436))

(assert (= (and d!1192014 res!1638215) b!4025437))

(assert (= (and b!4025437 res!1638216) b!4025438))

(declare-fun m!4616645 () Bool)

(assert (=> b!4025436 m!4616645))

(declare-fun m!4616647 () Bool)

(assert (=> b!4025437 m!4616647))

(assert (=> b!4025437 m!4616285))

(declare-fun m!4616649 () Bool)

(assert (=> b!4025437 m!4616649))

(declare-fun m!4616651 () Bool)

(assert (=> d!1192014 m!4616651))

(assert (=> d!1192014 m!4616473))

(declare-fun m!4616653 () Bool)

(assert (=> d!1192014 m!4616653))

(assert (=> b!4025160 d!1192014))

(declare-fun b!4025440 () Bool)

(declare-fun e!2497325 () List!43224)

(assert (=> b!4025440 (= e!2497325 (Cons!43100 (h!48520 lt!1429985) (++!11283 (t!333889 lt!1429985) suffix!1299)))))

(declare-fun b!4025441 () Bool)

(declare-fun res!1638218 () Bool)

(declare-fun e!2497326 () Bool)

(assert (=> b!4025441 (=> (not res!1638218) (not e!2497326))))

(declare-fun lt!1430112 () List!43224)

(assert (=> b!4025441 (= res!1638218 (= (size!32219 lt!1430112) (+ (size!32219 lt!1429985) (size!32219 suffix!1299))))))

(declare-fun b!4025442 () Bool)

(assert (=> b!4025442 (= e!2497326 (or (not (= suffix!1299 Nil!43100)) (= lt!1430112 lt!1429985)))))

(declare-fun b!4025439 () Bool)

(assert (=> b!4025439 (= e!2497325 suffix!1299)))

(declare-fun d!1192016 () Bool)

(assert (=> d!1192016 e!2497326))

(declare-fun res!1638217 () Bool)

(assert (=> d!1192016 (=> (not res!1638217) (not e!2497326))))

(assert (=> d!1192016 (= res!1638217 (= (content!6541 lt!1430112) (set.union (content!6541 lt!1429985) (content!6541 suffix!1299))))))

(assert (=> d!1192016 (= lt!1430112 e!2497325)))

(declare-fun c!695510 () Bool)

(assert (=> d!1192016 (= c!695510 (is-Nil!43100 lt!1429985))))

(assert (=> d!1192016 (= (++!11283 lt!1429985 suffix!1299) lt!1430112)))

(assert (= (and d!1192016 c!695510) b!4025439))

(assert (= (and d!1192016 (not c!695510)) b!4025440))

(assert (= (and d!1192016 res!1638217) b!4025441))

(assert (= (and b!4025441 res!1638218) b!4025442))

(declare-fun m!4616655 () Bool)

(assert (=> b!4025440 m!4616655))

(declare-fun m!4616657 () Bool)

(assert (=> b!4025441 m!4616657))

(declare-fun m!4616659 () Bool)

(assert (=> b!4025441 m!4616659))

(assert (=> b!4025441 m!4616275))

(declare-fun m!4616661 () Bool)

(assert (=> d!1192016 m!4616661))

(declare-fun m!4616663 () Bool)

(assert (=> d!1192016 m!4616663))

(assert (=> d!1192016 m!4616589))

(assert (=> b!4025160 d!1192016))

(declare-fun b!4025444 () Bool)

(declare-fun e!2497327 () List!43224)

(assert (=> b!4025444 (= e!2497327 (Cons!43100 (h!48520 lt!1429971) (++!11283 (t!333889 lt!1429971) suffix!1299)))))

(declare-fun b!4025445 () Bool)

(declare-fun res!1638220 () Bool)

(declare-fun e!2497328 () Bool)

(assert (=> b!4025445 (=> (not res!1638220) (not e!2497328))))

(declare-fun lt!1430113 () List!43224)

(assert (=> b!4025445 (= res!1638220 (= (size!32219 lt!1430113) (+ (size!32219 lt!1429971) (size!32219 suffix!1299))))))

(declare-fun b!4025446 () Bool)

(assert (=> b!4025446 (= e!2497328 (or (not (= suffix!1299 Nil!43100)) (= lt!1430113 lt!1429971)))))

(declare-fun b!4025443 () Bool)

(assert (=> b!4025443 (= e!2497327 suffix!1299)))

(declare-fun d!1192018 () Bool)

(assert (=> d!1192018 e!2497328))

(declare-fun res!1638219 () Bool)

(assert (=> d!1192018 (=> (not res!1638219) (not e!2497328))))

(assert (=> d!1192018 (= res!1638219 (= (content!6541 lt!1430113) (set.union (content!6541 lt!1429971) (content!6541 suffix!1299))))))

(assert (=> d!1192018 (= lt!1430113 e!2497327)))

(declare-fun c!695511 () Bool)

(assert (=> d!1192018 (= c!695511 (is-Nil!43100 lt!1429971))))

(assert (=> d!1192018 (= (++!11283 lt!1429971 suffix!1299) lt!1430113)))

(assert (= (and d!1192018 c!695511) b!4025443))

(assert (= (and d!1192018 (not c!695511)) b!4025444))

(assert (= (and d!1192018 res!1638219) b!4025445))

(assert (= (and b!4025445 res!1638220) b!4025446))

(declare-fun m!4616665 () Bool)

(assert (=> b!4025444 m!4616665))

(declare-fun m!4616667 () Bool)

(assert (=> b!4025445 m!4616667))

(assert (=> b!4025445 m!4616469))

(assert (=> b!4025445 m!4616275))

(declare-fun m!4616669 () Bool)

(assert (=> d!1192018 m!4616669))

(assert (=> d!1192018 m!4616475))

(assert (=> d!1192018 m!4616589))

(assert (=> b!4025160 d!1192018))

(declare-fun d!1192020 () Bool)

(assert (=> d!1192020 (= (++!11283 (++!11283 lt!1429972 lt!1429971) suffix!1299) (++!11283 lt!1429972 (++!11283 lt!1429971 suffix!1299)))))

(declare-fun lt!1430116 () Unit!62263)

(declare-fun choose!24340 (List!43224 List!43224 List!43224) Unit!62263)

(assert (=> d!1192020 (= lt!1430116 (choose!24340 lt!1429972 lt!1429971 suffix!1299))))

(assert (=> d!1192020 (= (lemmaConcatAssociativity!2585 lt!1429972 lt!1429971 suffix!1299) lt!1430116)))

(declare-fun bs!590017 () Bool)

(assert (= bs!590017 d!1192020))

(assert (=> bs!590017 m!4616249))

(declare-fun m!4616671 () Bool)

(assert (=> bs!590017 m!4616671))

(declare-fun m!4616673 () Bool)

(assert (=> bs!590017 m!4616673))

(assert (=> bs!590017 m!4616249))

(assert (=> bs!590017 m!4616237))

(assert (=> bs!590017 m!4616237))

(declare-fun m!4616675 () Bool)

(assert (=> bs!590017 m!4616675))

(assert (=> b!4025160 d!1192020))

(declare-fun b!4025448 () Bool)

(declare-fun e!2497329 () List!43224)

(assert (=> b!4025448 (= e!2497329 (Cons!43100 (h!48520 lt!1429972) (++!11283 (t!333889 lt!1429972) suffixResult!105)))))

(declare-fun b!4025449 () Bool)

(declare-fun res!1638222 () Bool)

(declare-fun e!2497330 () Bool)

(assert (=> b!4025449 (=> (not res!1638222) (not e!2497330))))

(declare-fun lt!1430117 () List!43224)

(assert (=> b!4025449 (= res!1638222 (= (size!32219 lt!1430117) (+ (size!32219 lt!1429972) (size!32219 suffixResult!105))))))

(declare-fun b!4025450 () Bool)

(assert (=> b!4025450 (= e!2497330 (or (not (= suffixResult!105 Nil!43100)) (= lt!1430117 lt!1429972)))))

(declare-fun b!4025447 () Bool)

(assert (=> b!4025447 (= e!2497329 suffixResult!105)))

(declare-fun d!1192022 () Bool)

(assert (=> d!1192022 e!2497330))

(declare-fun res!1638221 () Bool)

(assert (=> d!1192022 (=> (not res!1638221) (not e!2497330))))

(assert (=> d!1192022 (= res!1638221 (= (content!6541 lt!1430117) (set.union (content!6541 lt!1429972) (content!6541 suffixResult!105))))))

(assert (=> d!1192022 (= lt!1430117 e!2497329)))

(declare-fun c!695512 () Bool)

(assert (=> d!1192022 (= c!695512 (is-Nil!43100 lt!1429972))))

(assert (=> d!1192022 (= (++!11283 lt!1429972 suffixResult!105) lt!1430117)))

(assert (= (and d!1192022 c!695512) b!4025447))

(assert (= (and d!1192022 (not c!695512)) b!4025448))

(assert (= (and d!1192022 res!1638221) b!4025449))

(assert (= (and b!4025449 res!1638222) b!4025450))

(declare-fun m!4616677 () Bool)

(assert (=> b!4025448 m!4616677))

(declare-fun m!4616679 () Bool)

(assert (=> b!4025449 m!4616679))

(assert (=> b!4025449 m!4616285))

(declare-fun m!4616681 () Bool)

(assert (=> b!4025449 m!4616681))

(declare-fun m!4616683 () Bool)

(assert (=> d!1192022 m!4616683))

(assert (=> d!1192022 m!4616473))

(declare-fun m!4616685 () Bool)

(assert (=> d!1192022 m!4616685))

(assert (=> b!4025171 d!1192022))

(declare-fun d!1192024 () Bool)

(declare-fun e!2497333 () Bool)

(assert (=> d!1192024 e!2497333))

(declare-fun res!1638225 () Bool)

(assert (=> d!1192024 (=> (not res!1638225) (not e!2497333))))

(assert (=> d!1192024 (= res!1638225 (semiInverseModEq!2939 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (toValue!9397 (transformation!6881 (rule!9937 token!484)))))))

(declare-fun Unit!62268 () Unit!62263)

(assert (=> d!1192024 (= (lemmaInv!1090 (transformation!6881 (rule!9937 token!484))) Unit!62268)))

(declare-fun b!4025453 () Bool)

(assert (=> b!4025453 (= e!2497333 (equivClasses!2838 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (toValue!9397 (transformation!6881 (rule!9937 token!484)))))))

(assert (= (and d!1192024 res!1638225) b!4025453))

(assert (=> d!1192024 m!4616455))

(assert (=> b!4025453 m!4616457))

(assert (=> b!4025171 d!1192024))

(declare-fun d!1192026 () Bool)

(declare-fun res!1638230 () Bool)

(declare-fun e!2497336 () Bool)

(assert (=> d!1192026 (=> (not res!1638230) (not e!2497336))))

(declare-fun validRegex!5331 (Regex!11786) Bool)

(assert (=> d!1192026 (= res!1638230 (validRegex!5331 (regex!6881 (rule!9937 token!484))))))

(assert (=> d!1192026 (= (ruleValid!2811 thiss!21717 (rule!9937 token!484)) e!2497336)))

(declare-fun b!4025458 () Bool)

(declare-fun res!1638231 () Bool)

(assert (=> b!4025458 (=> (not res!1638231) (not e!2497336))))

(declare-fun nullable!4131 (Regex!11786) Bool)

(assert (=> b!4025458 (= res!1638231 (not (nullable!4131 (regex!6881 (rule!9937 token!484)))))))

(declare-fun b!4025459 () Bool)

(assert (=> b!4025459 (= e!2497336 (not (= (tag!7741 (rule!9937 token!484)) (String!49276 ""))))))

(assert (= (and d!1192026 res!1638230) b!4025458))

(assert (= (and b!4025458 res!1638231) b!4025459))

(declare-fun m!4616687 () Bool)

(assert (=> d!1192026 m!4616687))

(declare-fun m!4616689 () Bool)

(assert (=> b!4025458 m!4616689))

(assert (=> b!4025171 d!1192026))

(declare-fun d!1192028 () Bool)

(assert (=> d!1192028 (ruleValid!2811 thiss!21717 (rule!9937 token!484))))

(declare-fun lt!1430120 () Unit!62263)

(declare-fun choose!24341 (LexerInterface!6470 Rule!13562 List!43226) Unit!62263)

(assert (=> d!1192028 (= lt!1430120 (choose!24341 thiss!21717 (rule!9937 token!484) rules!2999))))

(assert (=> d!1192028 (contains!8561 rules!2999 (rule!9937 token!484))))

(assert (=> d!1192028 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1881 thiss!21717 (rule!9937 token!484) rules!2999) lt!1430120)))

(declare-fun bs!590018 () Bool)

(assert (= bs!590018 d!1192028))

(assert (=> bs!590018 m!4616301))

(declare-fun m!4616691 () Bool)

(assert (=> bs!590018 m!4616691))

(assert (=> bs!590018 m!4616241))

(assert (=> b!4025171 d!1192028))

(declare-fun d!1192030 () Bool)

(declare-fun e!2497339 () Bool)

(assert (=> d!1192030 e!2497339))

(declare-fun res!1638234 () Bool)

(assert (=> d!1192030 (=> res!1638234 e!2497339)))

(declare-fun lt!1430121 () Bool)

(assert (=> d!1192030 (= res!1638234 (not lt!1430121))))

(declare-fun e!2497337 () Bool)

(assert (=> d!1192030 (= lt!1430121 e!2497337)))

(declare-fun res!1638233 () Bool)

(assert (=> d!1192030 (=> res!1638233 e!2497337)))

(assert (=> d!1192030 (= res!1638233 (is-Nil!43100 newSuffix!27))))

(assert (=> d!1192030 (= (isPrefix!3968 newSuffix!27 suffix!1299) lt!1430121)))

(declare-fun b!4025462 () Bool)

(declare-fun e!2497338 () Bool)

(assert (=> b!4025462 (= e!2497338 (isPrefix!3968 (tail!6266 newSuffix!27) (tail!6266 suffix!1299)))))

(declare-fun b!4025463 () Bool)

(assert (=> b!4025463 (= e!2497339 (>= (size!32219 suffix!1299) (size!32219 newSuffix!27)))))

(declare-fun b!4025460 () Bool)

(assert (=> b!4025460 (= e!2497337 e!2497338)))

(declare-fun res!1638232 () Bool)

(assert (=> b!4025460 (=> (not res!1638232) (not e!2497338))))

(assert (=> b!4025460 (= res!1638232 (not (is-Nil!43100 suffix!1299)))))

(declare-fun b!4025461 () Bool)

(declare-fun res!1638235 () Bool)

(assert (=> b!4025461 (=> (not res!1638235) (not e!2497338))))

(assert (=> b!4025461 (= res!1638235 (= (head!8534 newSuffix!27) (head!8534 suffix!1299)))))

(assert (= (and d!1192030 (not res!1638233)) b!4025460))

(assert (= (and b!4025460 res!1638232) b!4025461))

(assert (= (and b!4025461 res!1638235) b!4025462))

(assert (= (and d!1192030 (not res!1638234)) b!4025463))

(declare-fun m!4616693 () Bool)

(assert (=> b!4025462 m!4616693))

(declare-fun m!4616695 () Bool)

(assert (=> b!4025462 m!4616695))

(assert (=> b!4025462 m!4616693))

(assert (=> b!4025462 m!4616695))

(declare-fun m!4616697 () Bool)

(assert (=> b!4025462 m!4616697))

(assert (=> b!4025463 m!4616275))

(assert (=> b!4025463 m!4616277))

(declare-fun m!4616699 () Bool)

(assert (=> b!4025461 m!4616699))

(declare-fun m!4616701 () Bool)

(assert (=> b!4025461 m!4616701))

(assert (=> b!4025151 d!1192030))

(declare-fun d!1192032 () Bool)

(declare-fun lt!1430124 () Int)

(assert (=> d!1192032 (>= lt!1430124 0)))

(declare-fun e!2497342 () Int)

(assert (=> d!1192032 (= lt!1430124 e!2497342)))

(declare-fun c!695515 () Bool)

(assert (=> d!1192032 (= c!695515 (is-Nil!43100 suffix!1299))))

(assert (=> d!1192032 (= (size!32219 suffix!1299) lt!1430124)))

(declare-fun b!4025468 () Bool)

(assert (=> b!4025468 (= e!2497342 0)))

(declare-fun b!4025469 () Bool)

(assert (=> b!4025469 (= e!2497342 (+ 1 (size!32219 (t!333889 suffix!1299))))))

(assert (= (and d!1192032 c!695515) b!4025468))

(assert (= (and d!1192032 (not c!695515)) b!4025469))

(declare-fun m!4616703 () Bool)

(assert (=> b!4025469 m!4616703))

(assert (=> b!4025162 d!1192032))

(declare-fun d!1192034 () Bool)

(declare-fun lt!1430125 () Int)

(assert (=> d!1192034 (>= lt!1430125 0)))

(declare-fun e!2497343 () Int)

(assert (=> d!1192034 (= lt!1430125 e!2497343)))

(declare-fun c!695516 () Bool)

(assert (=> d!1192034 (= c!695516 (is-Nil!43100 newSuffix!27))))

(assert (=> d!1192034 (= (size!32219 newSuffix!27) lt!1430125)))

(declare-fun b!4025470 () Bool)

(assert (=> b!4025470 (= e!2497343 0)))

(declare-fun b!4025471 () Bool)

(assert (=> b!4025471 (= e!2497343 (+ 1 (size!32219 (t!333889 newSuffix!27))))))

(assert (= (and d!1192034 c!695516) b!4025470))

(assert (= (and d!1192034 (not c!695516)) b!4025471))

(declare-fun m!4616705 () Bool)

(assert (=> b!4025471 m!4616705))

(assert (=> b!4025162 d!1192034))

(declare-fun d!1192036 () Bool)

(assert (=> d!1192036 (= (inv!57572 (tag!7741 (h!48522 rules!2999))) (= (mod (str.len (value!216743 (tag!7741 (h!48522 rules!2999)))) 2) 0))))

(assert (=> b!4025164 d!1192036))

(declare-fun d!1192038 () Bool)

(declare-fun res!1638236 () Bool)

(declare-fun e!2497344 () Bool)

(assert (=> d!1192038 (=> (not res!1638236) (not e!2497344))))

(assert (=> d!1192038 (= res!1638236 (semiInverseModEq!2939 (toChars!9256 (transformation!6881 (h!48522 rules!2999))) (toValue!9397 (transformation!6881 (h!48522 rules!2999)))))))

(assert (=> d!1192038 (= (inv!57576 (transformation!6881 (h!48522 rules!2999))) e!2497344)))

(declare-fun b!4025472 () Bool)

(assert (=> b!4025472 (= e!2497344 (equivClasses!2838 (toChars!9256 (transformation!6881 (h!48522 rules!2999))) (toValue!9397 (transformation!6881 (h!48522 rules!2999)))))))

(assert (= (and d!1192038 res!1638236) b!4025472))

(declare-fun m!4616707 () Bool)

(assert (=> d!1192038 m!4616707))

(declare-fun m!4616709 () Bool)

(assert (=> b!4025472 m!4616709))

(assert (=> b!4025164 d!1192038))

(declare-fun d!1192040 () Bool)

(declare-fun lt!1430126 () Int)

(assert (=> d!1192040 (>= lt!1430126 0)))

(declare-fun e!2497345 () Int)

(assert (=> d!1192040 (= lt!1430126 e!2497345)))

(declare-fun c!695517 () Bool)

(assert (=> d!1192040 (= c!695517 (is-Nil!43100 prefix!494))))

(assert (=> d!1192040 (= (size!32219 prefix!494) lt!1430126)))

(declare-fun b!4025473 () Bool)

(assert (=> b!4025473 (= e!2497345 0)))

(declare-fun b!4025474 () Bool)

(assert (=> b!4025474 (= e!2497345 (+ 1 (size!32219 (t!333889 prefix!494))))))

(assert (= (and d!1192040 c!695517) b!4025473))

(assert (= (and d!1192040 (not c!695517)) b!4025474))

(declare-fun m!4616711 () Bool)

(assert (=> b!4025474 m!4616711))

(assert (=> b!4025154 d!1192040))

(declare-fun d!1192042 () Bool)

(declare-fun lt!1430127 () Int)

(assert (=> d!1192042 (>= lt!1430127 0)))

(declare-fun e!2497346 () Int)

(assert (=> d!1192042 (= lt!1430127 e!2497346)))

(declare-fun c!695518 () Bool)

(assert (=> d!1192042 (= c!695518 (is-Nil!43100 lt!1429972))))

(assert (=> d!1192042 (= (size!32219 lt!1429972) lt!1430127)))

(declare-fun b!4025475 () Bool)

(assert (=> b!4025475 (= e!2497346 0)))

(declare-fun b!4025476 () Bool)

(assert (=> b!4025476 (= e!2497346 (+ 1 (size!32219 (t!333889 lt!1429972))))))

(assert (= (and d!1192042 c!695518) b!4025475))

(assert (= (and d!1192042 (not c!695518)) b!4025476))

(declare-fun m!4616713 () Bool)

(assert (=> b!4025476 m!4616713))

(assert (=> b!4025154 d!1192042))

(declare-fun d!1192044 () Bool)

(declare-fun list!16031 (Conc!13092) List!43224)

(assert (=> d!1192044 (= (list!16029 (charsOf!4697 token!484)) (list!16031 (c!695473 (charsOf!4697 token!484))))))

(declare-fun bs!590019 () Bool)

(assert (= bs!590019 d!1192044))

(declare-fun m!4616715 () Bool)

(assert (=> bs!590019 m!4616715))

(assert (=> b!4025154 d!1192044))

(declare-fun d!1192046 () Bool)

(declare-fun lt!1430130 () BalanceConc!25778)

(assert (=> d!1192046 (= (list!16029 lt!1430130) (originalCharacters!7481 token!484))))

(declare-fun dynLambda!18265 (Int TokenValue!7111) BalanceConc!25778)

(assert (=> d!1192046 (= lt!1430130 (dynLambda!18265 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (value!216744 token!484)))))

(assert (=> d!1192046 (= (charsOf!4697 token!484) lt!1430130)))

(declare-fun b_lambda!117421 () Bool)

(assert (=> (not b_lambda!117421) (not d!1192046)))

(declare-fun tb!241917 () Bool)

(declare-fun t!333900 () Bool)

(assert (=> (and b!4025149 (= (toChars!9256 (transformation!6881 (h!48522 rules!2999))) (toChars!9256 (transformation!6881 (rule!9937 token!484)))) t!333900) tb!241917))

(declare-fun b!4025481 () Bool)

(declare-fun e!2497349 () Bool)

(declare-fun tp!1223496 () Bool)

(declare-fun inv!57579 (Conc!13092) Bool)

(assert (=> b!4025481 (= e!2497349 (and (inv!57579 (c!695473 (dynLambda!18265 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (value!216744 token!484)))) tp!1223496))))

(declare-fun result!293216 () Bool)

(declare-fun inv!57580 (BalanceConc!25778) Bool)

(assert (=> tb!241917 (= result!293216 (and (inv!57580 (dynLambda!18265 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (value!216744 token!484))) e!2497349))))

(assert (= tb!241917 b!4025481))

(declare-fun m!4616717 () Bool)

(assert (=> b!4025481 m!4616717))

(declare-fun m!4616719 () Bool)

(assert (=> tb!241917 m!4616719))

(assert (=> d!1192046 t!333900))

(declare-fun b_and!309275 () Bool)

(assert (= b_and!309257 (and (=> t!333900 result!293216) b_and!309275)))

(declare-fun t!333902 () Bool)

(declare-fun tb!241919 () Bool)

(assert (=> (and b!4025169 (= (toChars!9256 (transformation!6881 (rule!9937 token!484))) (toChars!9256 (transformation!6881 (rule!9937 token!484)))) t!333902) tb!241919))

(declare-fun result!293220 () Bool)

(assert (= result!293220 result!293216))

(assert (=> d!1192046 t!333902))

(declare-fun b_and!309277 () Bool)

(assert (= b_and!309261 (and (=> t!333902 result!293220) b_and!309277)))

(declare-fun m!4616721 () Bool)

(assert (=> d!1192046 m!4616721))

(declare-fun m!4616723 () Bool)

(assert (=> d!1192046 m!4616723))

(assert (=> b!4025154 d!1192046))

(declare-fun d!1192048 () Bool)

(declare-fun res!1638241 () Bool)

(declare-fun e!2497352 () Bool)

(assert (=> d!1192048 (=> (not res!1638241) (not e!2497352))))

(assert (=> d!1192048 (= res!1638241 (not (isEmpty!25730 (originalCharacters!7481 token!484))))))

(assert (=> d!1192048 (= (inv!57575 token!484) e!2497352)))

(declare-fun b!4025486 () Bool)

(declare-fun res!1638242 () Bool)

(assert (=> b!4025486 (=> (not res!1638242) (not e!2497352))))

(assert (=> b!4025486 (= res!1638242 (= (originalCharacters!7481 token!484) (list!16029 (dynLambda!18265 (toChars!9256 (transformation!6881 (rule!9937 token!484))) (value!216744 token!484)))))))

(declare-fun b!4025487 () Bool)

(assert (=> b!4025487 (= e!2497352 (= (size!32220 token!484) (size!32219 (originalCharacters!7481 token!484))))))

(assert (= (and d!1192048 res!1638241) b!4025486))

(assert (= (and b!4025486 res!1638242) b!4025487))

(declare-fun b_lambda!117423 () Bool)

(assert (=> (not b_lambda!117423) (not b!4025486)))

(assert (=> b!4025486 t!333900))

(declare-fun b_and!309279 () Bool)

(assert (= b_and!309275 (and (=> t!333900 result!293216) b_and!309279)))

(assert (=> b!4025486 t!333902))

(declare-fun b_and!309281 () Bool)

(assert (= b_and!309277 (and (=> t!333902 result!293220) b_and!309281)))

(declare-fun m!4616725 () Bool)

(assert (=> d!1192048 m!4616725))

(assert (=> b!4025486 m!4616723))

(assert (=> b!4025486 m!4616723))

(declare-fun m!4616727 () Bool)

(assert (=> b!4025486 m!4616727))

(declare-fun m!4616729 () Bool)

(assert (=> b!4025487 m!4616729))

(assert (=> start!379062 d!1192048))

(declare-fun d!1192050 () Bool)

(declare-fun lt!1430133 () Bool)

(declare-fun content!6544 (List!43226) (Set Rule!13562))

(assert (=> d!1192050 (= lt!1430133 (set.member (rule!9937 token!484) (content!6544 rules!2999)))))

(declare-fun e!2497358 () Bool)

(assert (=> d!1192050 (= lt!1430133 e!2497358)))

(declare-fun res!1638247 () Bool)

(assert (=> d!1192050 (=> (not res!1638247) (not e!2497358))))

(assert (=> d!1192050 (= res!1638247 (is-Cons!43102 rules!2999))))

(assert (=> d!1192050 (= (contains!8561 rules!2999 (rule!9937 token!484)) lt!1430133)))

(declare-fun b!4025492 () Bool)

(declare-fun e!2497357 () Bool)

(assert (=> b!4025492 (= e!2497358 e!2497357)))

(declare-fun res!1638248 () Bool)

(assert (=> b!4025492 (=> res!1638248 e!2497357)))

(assert (=> b!4025492 (= res!1638248 (= (h!48522 rules!2999) (rule!9937 token!484)))))

(declare-fun b!4025493 () Bool)

(assert (=> b!4025493 (= e!2497357 (contains!8561 (t!333891 rules!2999) (rule!9937 token!484)))))

(assert (= (and d!1192050 res!1638247) b!4025492))

(assert (= (and b!4025492 (not res!1638248)) b!4025493))

(declare-fun m!4616731 () Bool)

(assert (=> d!1192050 m!4616731))

(declare-fun m!4616733 () Bool)

(assert (=> d!1192050 m!4616733))

(declare-fun m!4616735 () Bool)

(assert (=> b!4025493 m!4616735))

(assert (=> b!4025165 d!1192050))

(declare-fun d!1192052 () Bool)

(assert (=> d!1192052 (= lt!1429981 suffixResult!105)))

(declare-fun lt!1430136 () Unit!62263)

(declare-fun choose!24344 (List!43224 List!43224 List!43224 List!43224 List!43224) Unit!62263)

(assert (=> d!1192052 (= lt!1430136 (choose!24344 lt!1429972 lt!1429981 lt!1429972 suffixResult!105 lt!1429983))))

(assert (=> d!1192052 (isPrefix!3968 lt!1429972 lt!1429983)))

(assert (=> d!1192052 (= (lemmaSamePrefixThenSameSuffix!2129 lt!1429972 lt!1429981 lt!1429972 suffixResult!105 lt!1429983) lt!1430136)))

(declare-fun bs!590020 () Bool)

(assert (= bs!590020 d!1192052))

(declare-fun m!4616737 () Bool)

(assert (=> bs!590020 m!4616737))

(assert (=> bs!590020 m!4616261))

(assert (=> b!4025165 d!1192052))

(declare-fun d!1192054 () Bool)

(declare-fun e!2497361 () Bool)

(assert (=> d!1192054 e!2497361))

(declare-fun res!1638251 () Bool)

(assert (=> d!1192054 (=> res!1638251 e!2497361)))

(declare-fun lt!1430137 () Bool)

(assert (=> d!1192054 (= res!1638251 (not lt!1430137))))

(declare-fun e!2497359 () Bool)

(assert (=> d!1192054 (= lt!1430137 e!2497359)))

(declare-fun res!1638250 () Bool)

(assert (=> d!1192054 (=> res!1638250 e!2497359)))

(assert (=> d!1192054 (= res!1638250 (is-Nil!43100 lt!1429972))))

(assert (=> d!1192054 (= (isPrefix!3968 lt!1429972 lt!1429970) lt!1430137)))

(declare-fun b!4025496 () Bool)

(declare-fun e!2497360 () Bool)

(assert (=> b!4025496 (= e!2497360 (isPrefix!3968 (tail!6266 lt!1429972) (tail!6266 lt!1429970)))))

(declare-fun b!4025497 () Bool)

(assert (=> b!4025497 (= e!2497361 (>= (size!32219 lt!1429970) (size!32219 lt!1429972)))))

(declare-fun b!4025494 () Bool)

(assert (=> b!4025494 (= e!2497359 e!2497360)))

(declare-fun res!1638249 () Bool)

(assert (=> b!4025494 (=> (not res!1638249) (not e!2497360))))

(assert (=> b!4025494 (= res!1638249 (not (is-Nil!43100 lt!1429970)))))

(declare-fun b!4025495 () Bool)

(declare-fun res!1638252 () Bool)

(assert (=> b!4025495 (=> (not res!1638252) (not e!2497360))))

(assert (=> b!4025495 (= res!1638252 (= (head!8534 lt!1429972) (head!8534 lt!1429970)))))

(assert (= (and d!1192054 (not res!1638250)) b!4025494))

(assert (= (and b!4025494 res!1638249) b!4025495))

(assert (= (and b!4025495 res!1638252) b!4025496))

(assert (= (and d!1192054 (not res!1638251)) b!4025497))

(assert (=> b!4025496 m!4616485))

(declare-fun m!4616739 () Bool)

(assert (=> b!4025496 m!4616739))

(assert (=> b!4025496 m!4616485))

(assert (=> b!4025496 m!4616739))

(declare-fun m!4616741 () Bool)

(assert (=> b!4025496 m!4616741))

(declare-fun m!4616743 () Bool)

(assert (=> b!4025497 m!4616743))

(assert (=> b!4025497 m!4616285))

(assert (=> b!4025495 m!4616491))

(declare-fun m!4616745 () Bool)

(assert (=> b!4025495 m!4616745))

(assert (=> b!4025165 d!1192054))

(declare-fun d!1192056 () Bool)

(assert (=> d!1192056 (isPrefix!3968 lt!1429972 (++!11283 lt!1429972 lt!1429981))))

(declare-fun lt!1430138 () Unit!62263)

(assert (=> d!1192056 (= lt!1430138 (choose!24339 lt!1429972 lt!1429981))))

(assert (=> d!1192056 (= (lemmaConcatTwoListThenFirstIsPrefix!2803 lt!1429972 lt!1429981) lt!1430138)))

(declare-fun bs!590021 () Bool)

(assert (= bs!590021 d!1192056))

(assert (=> bs!590021 m!4616233))

(assert (=> bs!590021 m!4616233))

(declare-fun m!4616747 () Bool)

(assert (=> bs!590021 m!4616747))

(declare-fun m!4616749 () Bool)

(assert (=> bs!590021 m!4616749))

(assert (=> b!4025165 d!1192056))

(declare-fun d!1192058 () Bool)

(assert (=> d!1192058 (= (isEmpty!25731 rules!2999) (is-Nil!43102 rules!2999))))

(assert (=> b!4025155 d!1192058))

(declare-fun b!4025502 () Bool)

(declare-fun e!2497364 () Bool)

(declare-fun tp!1223499 () Bool)

(assert (=> b!4025502 (= e!2497364 (and tp_is_empty!20543 tp!1223499))))

(assert (=> b!4025166 (= tp!1223441 e!2497364)))

(assert (= (and b!4025166 (is-Cons!43100 (t!333889 suffixResult!105))) b!4025502))

(declare-fun b!4025503 () Bool)

(declare-fun e!2497365 () Bool)

(declare-fun tp!1223500 () Bool)

(assert (=> b!4025503 (= e!2497365 (and tp_is_empty!20543 tp!1223500))))

(assert (=> b!4025150 (= tp!1223444 e!2497365)))

(assert (= (and b!4025150 (is-Cons!43100 (t!333889 newSuffix!27))) b!4025503))

(declare-fun b!4025504 () Bool)

(declare-fun e!2497366 () Bool)

(declare-fun tp!1223501 () Bool)

(assert (=> b!4025504 (= e!2497366 (and tp_is_empty!20543 tp!1223501))))

(assert (=> b!4025161 (= tp!1223451 e!2497366)))

(assert (= (and b!4025161 (is-Cons!43100 (t!333889 prefix!494))) b!4025504))

(declare-fun b!4025505 () Bool)

(declare-fun e!2497367 () Bool)

(declare-fun tp!1223502 () Bool)

(assert (=> b!4025505 (= e!2497367 (and tp_is_empty!20543 tp!1223502))))

(assert (=> b!4025156 (= tp!1223447 e!2497367)))

(assert (= (and b!4025156 (is-Cons!43100 (t!333889 newSuffixResult!27))) b!4025505))

(declare-fun b!4025516 () Bool)

(declare-fun e!2497370 () Bool)

(assert (=> b!4025516 (= e!2497370 tp_is_empty!20543)))

(assert (=> b!4025167 (= tp!1223449 e!2497370)))

(declare-fun b!4025517 () Bool)

(declare-fun tp!1223515 () Bool)

(declare-fun tp!1223514 () Bool)

(assert (=> b!4025517 (= e!2497370 (and tp!1223515 tp!1223514))))

(declare-fun b!4025518 () Bool)

(declare-fun tp!1223517 () Bool)

(assert (=> b!4025518 (= e!2497370 tp!1223517)))

(declare-fun b!4025519 () Bool)

(declare-fun tp!1223513 () Bool)

(declare-fun tp!1223516 () Bool)

(assert (=> b!4025519 (= e!2497370 (and tp!1223513 tp!1223516))))

(assert (= (and b!4025167 (is-ElementMatch!11786 (regex!6881 (rule!9937 token!484)))) b!4025516))

(assert (= (and b!4025167 (is-Concat!18898 (regex!6881 (rule!9937 token!484)))) b!4025517))

(assert (= (and b!4025167 (is-Star!11786 (regex!6881 (rule!9937 token!484)))) b!4025518))

(assert (= (and b!4025167 (is-Union!11786 (regex!6881 (rule!9937 token!484)))) b!4025519))

(declare-fun b!4025520 () Bool)

(declare-fun e!2497371 () Bool)

(declare-fun tp!1223518 () Bool)

(assert (=> b!4025520 (= e!2497371 (and tp_is_empty!20543 tp!1223518))))

(assert (=> b!4025168 (= tp!1223439 e!2497371)))

(assert (= (and b!4025168 (is-Cons!43100 (originalCharacters!7481 token!484))) b!4025520))

(declare-fun b!4025521 () Bool)

(declare-fun e!2497372 () Bool)

(declare-fun tp!1223519 () Bool)

(assert (=> b!4025521 (= e!2497372 (and tp_is_empty!20543 tp!1223519))))

(assert (=> b!4025152 (= tp!1223448 e!2497372)))

(assert (= (and b!4025152 (is-Cons!43100 (t!333889 suffix!1299))) b!4025521))

(declare-fun b!4025532 () Bool)

(declare-fun b_free!112089 () Bool)

(declare-fun b_next!112793 () Bool)

(assert (=> b!4025532 (= b_free!112089 (not b_next!112793))))

(declare-fun tp!1223531 () Bool)

(declare-fun b_and!309283 () Bool)

(assert (=> b!4025532 (= tp!1223531 b_and!309283)))

(declare-fun b_free!112091 () Bool)

(declare-fun b_next!112795 () Bool)

(assert (=> b!4025532 (= b_free!112091 (not b_next!112795))))

(declare-fun tb!241921 () Bool)

(declare-fun t!333904 () Bool)

(assert (=> (and b!4025532 (= (toChars!9256 (transformation!6881 (h!48522 (t!333891 rules!2999)))) (toChars!9256 (transformation!6881 (rule!9937 token!484)))) t!333904) tb!241921))

(declare-fun result!293228 () Bool)

(assert (= result!293228 result!293216))

(assert (=> d!1192046 t!333904))

(assert (=> b!4025486 t!333904))

(declare-fun tp!1223529 () Bool)

(declare-fun b_and!309285 () Bool)

(assert (=> b!4025532 (= tp!1223529 (and (=> t!333904 result!293228) b_and!309285))))

(declare-fun e!2497382 () Bool)

(assert (=> b!4025532 (= e!2497382 (and tp!1223531 tp!1223529))))

(declare-fun b!4025531 () Bool)

(declare-fun tp!1223528 () Bool)

(declare-fun e!2497384 () Bool)

(assert (=> b!4025531 (= e!2497384 (and tp!1223528 (inv!57572 (tag!7741 (h!48522 (t!333891 rules!2999)))) (inv!57576 (transformation!6881 (h!48522 (t!333891 rules!2999)))) e!2497382))))

(declare-fun b!4025530 () Bool)

(declare-fun e!2497383 () Bool)

(declare-fun tp!1223530 () Bool)

(assert (=> b!4025530 (= e!2497383 (and e!2497384 tp!1223530))))

(assert (=> b!4025163 (= tp!1223446 e!2497383)))

(assert (= b!4025531 b!4025532))

(assert (= b!4025530 b!4025531))

(assert (= (and b!4025163 (is-Cons!43102 (t!333891 rules!2999))) b!4025530))

(declare-fun m!4616751 () Bool)

(assert (=> b!4025531 m!4616751))

(declare-fun m!4616753 () Bool)

(assert (=> b!4025531 m!4616753))

(declare-fun b!4025533 () Bool)

(declare-fun e!2497385 () Bool)

(assert (=> b!4025533 (= e!2497385 tp_is_empty!20543)))

(assert (=> b!4025164 (= tp!1223445 e!2497385)))

(declare-fun b!4025534 () Bool)

(declare-fun tp!1223534 () Bool)

(declare-fun tp!1223533 () Bool)

(assert (=> b!4025534 (= e!2497385 (and tp!1223534 tp!1223533))))

(declare-fun b!4025535 () Bool)

(declare-fun tp!1223536 () Bool)

(assert (=> b!4025535 (= e!2497385 tp!1223536)))

(declare-fun b!4025536 () Bool)

(declare-fun tp!1223532 () Bool)

(declare-fun tp!1223535 () Bool)

(assert (=> b!4025536 (= e!2497385 (and tp!1223532 tp!1223535))))

(assert (= (and b!4025164 (is-ElementMatch!11786 (regex!6881 (h!48522 rules!2999)))) b!4025533))

(assert (= (and b!4025164 (is-Concat!18898 (regex!6881 (h!48522 rules!2999)))) b!4025534))

(assert (= (and b!4025164 (is-Star!11786 (regex!6881 (h!48522 rules!2999)))) b!4025535))

(assert (= (and b!4025164 (is-Union!11786 (regex!6881 (h!48522 rules!2999)))) b!4025536))

(declare-fun b_lambda!117425 () Bool)

(assert (= b_lambda!117421 (or (and b!4025149 b_free!112075 (= (toChars!9256 (transformation!6881 (h!48522 rules!2999))) (toChars!9256 (transformation!6881 (rule!9937 token!484))))) (and b!4025169 b_free!112079) (and b!4025532 b_free!112091 (= (toChars!9256 (transformation!6881 (h!48522 (t!333891 rules!2999)))) (toChars!9256 (transformation!6881 (rule!9937 token!484))))) b_lambda!117425)))

(declare-fun b_lambda!117427 () Bool)

(assert (= b_lambda!117423 (or (and b!4025149 b_free!112075 (= (toChars!9256 (transformation!6881 (h!48522 rules!2999))) (toChars!9256 (transformation!6881 (rule!9937 token!484))))) (and b!4025169 b_free!112079) (and b!4025532 b_free!112091 (= (toChars!9256 (transformation!6881 (h!48522 (t!333891 rules!2999)))) (toChars!9256 (transformation!6881 (rule!9937 token!484))))) b_lambda!117427)))

(push 1)

(assert (not b!4025444))

(assert (not b!4025396))

(assert (not b!4025497))

(assert (not b!4025462))

(assert (not d!1191996))

(assert (not b!4025502))

(assert (not b!4025448))

(assert (not b!4025535))

(assert (not d!1192024))

(assert b_and!309255)

(assert (not b!4025458))

(assert (not b!4025505))

(assert (not b!4025504))

(assert (not b_next!112795))

(assert (not b_next!112777))

(assert (not b!4025400))

(assert (not b!4025521))

(assert (not b!4025413))

(assert (not b!4025437))

(assert (not b!4025397))

(assert (not b!4025520))

(assert (not d!1191942))

(assert (not b!4025440))

(assert (not b!4025408))

(assert (not d!1192050))

(assert (not d!1192014))

(assert (not b!4025289))

(assert tp_is_empty!20543)

(assert (not b_next!112793))

(assert (not b!4025423))

(assert (not b!4025434))

(assert (not d!1191994))

(assert (not b!4025536))

(assert (not bm!286760))

(assert (not b_next!112779))

(assert (not d!1191998))

(assert (not b!4025427))

(assert (not b!4025398))

(assert (not d!1192018))

(assert (not d!1192048))

(assert (not d!1192046))

(assert (not b!4025352))

(assert (not b!4025395))

(assert (not b!4025474))

(assert (not b!4025402))

(assert b_and!309285)

(assert (not b!4025430))

(assert (not b!4025445))

(assert (not b!4025351))

(assert (not b!4025472))

(assert (not d!1192038))

(assert (not b!4025421))

(assert (not d!1192016))

(assert (not d!1192020))

(assert (not b!4025531))

(assert (not b!4025495))

(assert (not b!4025399))

(assert (not b!4025476))

(assert (not b!4025453))

(assert b_and!309283)

(assert (not b!4025461))

(assert (not d!1192052))

(assert (not b!4025401))

(assert (not b!4025429))

(assert (not b!4025335))

(assert (not b!4025518))

(assert (not b!4025449))

(assert (not b_lambda!117425))

(assert (not b!4025493))

(assert (not b!4025481))

(assert (not b!4025310))

(assert (not b!4025471))

(assert (not b!4025496))

(assert (not d!1192010))

(assert (not b!4025469))

(assert b_and!309281)

(assert b_and!309259)

(assert (not b!4025486))

(assert (not d!1192022))

(assert (not b!4025503))

(assert (not b!4025414))

(assert (not b_lambda!117427))

(assert (not b!4025418))

(assert (not tb!241917))

(assert (not d!1191974))

(assert (not b!4025417))

(assert (not b!4025534))

(assert (not d!1192056))

(assert (not b!4025519))

(assert (not d!1192012))

(assert (not d!1192028))

(assert (not b!4025436))

(assert (not b!4025487))

(assert (not b!4025353))

(assert (not d!1191962))

(assert (not b_next!112781))

(assert (not d!1191950))

(assert (not b!4025333))

(assert (not d!1191956))

(assert (not d!1192026))

(assert (not b!4025425))

(assert (not b!4025431))

(assert b_and!309279)

(assert (not b!4025441))

(assert (not b!4025316))

(assert (not d!1192004))

(assert (not b!4025409))

(assert (not d!1192044))

(assert (not b!4025309))

(assert (not b!4025422))

(assert (not b!4025517))

(assert (not b!4025530))

(assert (not b_next!112783))

(assert (not b!4025426))

(assert (not b!4025334))

(assert (not b!4025463))

(check-sat)

(pop 1)

(push 1)

(assert b_and!309255)

(assert (not b_next!112793))

(assert (not b_next!112779))

(assert b_and!309285)

(assert b_and!309283)

(assert (not b_next!112781))

(assert b_and!309279)

(assert (not b_next!112783))

(assert (not b_next!112795))

(assert (not b_next!112777))

(assert b_and!309281)

(assert b_and!309259)

(check-sat)

(pop 1)

