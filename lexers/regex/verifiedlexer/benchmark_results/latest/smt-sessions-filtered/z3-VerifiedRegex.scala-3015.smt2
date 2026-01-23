; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180238 () Bool)

(assert start!180238)

(declare-fun b!1820295 () Bool)

(declare-fun b_free!50479 () Bool)

(declare-fun b_next!51183 () Bool)

(assert (=> b!1820295 (= b_free!50479 (not b_next!51183))))

(declare-fun tp!514500 () Bool)

(declare-fun b_and!141129 () Bool)

(assert (=> b!1820295 (= tp!514500 b_and!141129)))

(declare-fun b_free!50481 () Bool)

(declare-fun b_next!51185 () Bool)

(assert (=> b!1820295 (= b_free!50481 (not b_next!51185))))

(declare-fun tp!514495 () Bool)

(declare-fun b_and!141131 () Bool)

(assert (=> b!1820295 (= tp!514495 b_and!141131)))

(declare-fun b!1820296 () Bool)

(declare-fun b_free!50483 () Bool)

(declare-fun b_next!51187 () Bool)

(assert (=> b!1820296 (= b_free!50483 (not b_next!51187))))

(declare-fun tp!514496 () Bool)

(declare-fun b_and!141133 () Bool)

(assert (=> b!1820296 (= tp!514496 b_and!141133)))

(declare-fun b_free!50485 () Bool)

(declare-fun b_next!51189 () Bool)

(assert (=> b!1820296 (= b_free!50485 (not b_next!51189))))

(declare-fun tp!514502 () Bool)

(declare-fun b_and!141135 () Bool)

(assert (=> b!1820296 (= tp!514502 b_and!141135)))

(declare-fun b!1820294 () Bool)

(declare-fun b_free!50487 () Bool)

(declare-fun b_next!51191 () Bool)

(assert (=> b!1820294 (= b_free!50487 (not b_next!51191))))

(declare-fun tp!514503 () Bool)

(declare-fun b_and!141137 () Bool)

(assert (=> b!1820294 (= tp!514503 b_and!141137)))

(declare-fun b_free!50489 () Bool)

(declare-fun b_next!51193 () Bool)

(assert (=> b!1820294 (= b_free!50489 (not b_next!51193))))

(declare-fun tp!514493 () Bool)

(declare-fun b_and!141139 () Bool)

(assert (=> b!1820294 (= tp!514493 b_and!141139)))

(declare-fun tp!514492 () Bool)

(declare-fun b!1820286 () Bool)

(declare-fun e!1163199 () Bool)

(declare-fun e!1163205 () Bool)

(declare-datatypes ((List!20002 0))(
  ( (Nil!19932) (Cons!19932 (h!25333 (_ BitVec 16)) (t!169847 List!20002)) )
))
(declare-datatypes ((TokenValue!3681 0))(
  ( (FloatLiteralValue!7362 (text!26212 List!20002)) (TokenValueExt!3680 (__x!12664 Int)) (Broken!18405 (value!111984 List!20002)) (Object!3750) (End!3681) (Def!3681) (Underscore!3681) (Match!3681) (Else!3681) (Error!3681) (Case!3681) (If!3681) (Extends!3681) (Abstract!3681) (Class!3681) (Val!3681) (DelimiterValue!7362 (del!3741 List!20002)) (KeywordValue!3687 (value!111985 List!20002)) (CommentValue!7362 (value!111986 List!20002)) (WhitespaceValue!7362 (value!111987 List!20002)) (IndentationValue!3681 (value!111988 List!20002)) (String!22736) (Int32!3681) (Broken!18406 (value!111989 List!20002)) (Boolean!3682) (Unit!34610) (OperatorValue!3684 (op!3741 List!20002)) (IdentifierValue!7362 (value!111990 List!20002)) (IdentifierValue!7363 (value!111991 List!20002)) (WhitespaceValue!7363 (value!111992 List!20002)) (True!7362) (False!7362) (Broken!18407 (value!111993 List!20002)) (Broken!18408 (value!111994 List!20002)) (True!7363) (RightBrace!3681) (RightBracket!3681) (Colon!3681) (Null!3681) (Comma!3681) (LeftBracket!3681) (False!7363) (LeftBrace!3681) (ImaginaryLiteralValue!3681 (text!26213 List!20002)) (StringLiteralValue!11043 (value!111995 List!20002)) (EOFValue!3681 (value!111996 List!20002)) (IdentValue!3681 (value!111997 List!20002)) (DelimiterValue!7363 (value!111998 List!20002)) (DedentValue!3681 (value!111999 List!20002)) (NewLineValue!3681 (value!112000 List!20002)) (IntegerValue!11043 (value!112001 (_ BitVec 32)) (text!26214 List!20002)) (IntegerValue!11044 (value!112002 Int) (text!26215 List!20002)) (Times!3681) (Or!3681) (Equal!3681) (Minus!3681) (Broken!18409 (value!112003 List!20002)) (And!3681) (Div!3681) (LessEqual!3681) (Mod!3681) (Concat!8600) (Not!3681) (Plus!3681) (SpaceValue!3681 (value!112004 List!20002)) (IntegerValue!11045 (value!112005 Int) (text!26216 List!20002)) (StringLiteralValue!11044 (text!26217 List!20002)) (FloatLiteralValue!7363 (text!26218 List!20002)) (BytesLiteralValue!3681 (value!112006 List!20002)) (CommentValue!7363 (value!112007 List!20002)) (StringLiteralValue!11045 (value!112008 List!20002)) (ErrorTokenValue!3681 (msg!3742 List!20002)) )
))
(declare-datatypes ((C!10012 0))(
  ( (C!10013 (val!5602 Int)) )
))
(declare-datatypes ((List!20003 0))(
  ( (Nil!19933) (Cons!19933 (h!25334 C!10012) (t!169848 List!20003)) )
))
(declare-datatypes ((IArray!13251 0))(
  ( (IArray!13252 (innerList!6683 List!20003)) )
))
(declare-datatypes ((Conc!6623 0))(
  ( (Node!6623 (left!15964 Conc!6623) (right!16294 Conc!6623) (csize!13476 Int) (cheight!6834 Int)) (Leaf!9639 (xs!9499 IArray!13251) (csize!13477 Int)) (Empty!6623) )
))
(declare-datatypes ((BalanceConc!13190 0))(
  ( (BalanceConc!13191 (c!297072 Conc!6623)) )
))
(declare-datatypes ((TokenValueInjection!7022 0))(
  ( (TokenValueInjection!7023 (toValue!5126 Int) (toChars!4985 Int)) )
))
(declare-datatypes ((Regex!4919 0))(
  ( (ElementMatch!4919 (c!297073 C!10012)) (Concat!8601 (regOne!10350 Regex!4919) (regTwo!10350 Regex!4919)) (EmptyExpr!4919) (Star!4919 (reg!5248 Regex!4919)) (EmptyLang!4919) (Union!4919 (regOne!10351 Regex!4919) (regTwo!10351 Regex!4919)) )
))
(declare-datatypes ((String!22737 0))(
  ( (String!22738 (value!112009 String)) )
))
(declare-datatypes ((Rule!6982 0))(
  ( (Rule!6983 (regex!3591 Regex!4919) (tag!4005 String!22737) (isSeparator!3591 Bool) (transformation!3591 TokenValueInjection!7022)) )
))
(declare-datatypes ((Token!6736 0))(
  ( (Token!6737 (value!112010 TokenValue!3681) (rule!5715 Rule!6982) (size!15819 Int) (originalCharacters!4399 List!20003)) )
))
(declare-fun token!556 () Token!6736)

(declare-fun inv!25965 (String!22737) Bool)

(declare-fun inv!25968 (TokenValueInjection!7022) Bool)

(assert (=> b!1820286 (= e!1163199 (and tp!514492 (inv!25965 (tag!4005 (rule!5715 token!556))) (inv!25968 (transformation!3591 (rule!5715 token!556))) e!1163205))))

(declare-fun b!1820287 () Bool)

(declare-fun e!1163202 () Bool)

(declare-fun e!1163209 () Bool)

(assert (=> b!1820287 (= e!1163202 e!1163209)))

(declare-fun res!818557 () Bool)

(assert (=> b!1820287 (=> (not res!818557) (not e!1163209))))

(declare-fun suffix!1667 () List!20003)

(declare-fun input!3612 () List!20003)

(declare-fun lt!707216 () List!20003)

(declare-fun ++!5415 (List!20003 List!20003) List!20003)

(assert (=> b!1820287 (= res!818557 (= input!3612 (++!5415 lt!707216 suffix!1667)))))

(declare-fun list!8105 (BalanceConc!13190) List!20003)

(declare-fun charsOf!2234 (Token!6736) BalanceConc!13190)

(assert (=> b!1820287 (= lt!707216 (list!8105 (charsOf!2234 token!556)))))

(declare-fun b!1820288 () Bool)

(declare-fun e!1163194 () Bool)

(assert (=> b!1820288 (= e!1163209 (not e!1163194))))

(declare-fun res!818561 () Bool)

(assert (=> b!1820288 (=> res!818561 e!1163194)))

(declare-fun rule!559 () Rule!6982)

(declare-fun matchR!2384 (Regex!4919 List!20003) Bool)

(assert (=> b!1820288 (= res!818561 (not (matchR!2384 (regex!3591 rule!559) lt!707216)))))

(declare-datatypes ((LexerInterface!3220 0))(
  ( (LexerInterfaceExt!3217 (__x!12665 Int)) (Lexer!3218) )
))
(declare-fun thiss!28068 () LexerInterface!3220)

(declare-fun ruleValid!1083 (LexerInterface!3220 Rule!6982) Bool)

(assert (=> b!1820288 (ruleValid!1083 thiss!28068 rule!559)))

(declare-datatypes ((List!20004 0))(
  ( (Nil!19934) (Cons!19934 (h!25335 Rule!6982) (t!169849 List!20004)) )
))
(declare-fun rules!4538 () List!20004)

(declare-datatypes ((Unit!34611 0))(
  ( (Unit!34612) )
))
(declare-fun lt!707220 () Unit!34611)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!604 (LexerInterface!3220 Rule!6982 List!20004) Unit!34611)

(assert (=> b!1820288 (= lt!707220 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!604 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1820289 () Bool)

(declare-fun e!1163206 () Bool)

(declare-fun rulesValidInductive!1232 (LexerInterface!3220 List!20004) Bool)

(assert (=> b!1820289 (= e!1163206 (rulesValidInductive!1232 thiss!28068 rules!4538))))

(declare-fun b!1820290 () Bool)

(declare-fun e!1163208 () Bool)

(declare-fun e!1163204 () Bool)

(declare-fun tp!514501 () Bool)

(assert (=> b!1820290 (= e!1163208 (and e!1163204 tp!514501))))

(declare-fun b!1820291 () Bool)

(declare-fun e!1163197 () Bool)

(declare-fun tp!514497 () Bool)

(declare-fun inv!21 (TokenValue!3681) Bool)

(assert (=> b!1820291 (= e!1163197 (and (inv!21 (value!112010 token!556)) e!1163199 tp!514497))))

(declare-fun b!1820292 () Bool)

(declare-fun e!1163196 () Bool)

(assert (=> b!1820292 (= e!1163196 e!1163202)))

(declare-fun res!818558 () Bool)

(assert (=> b!1820292 (=> (not res!818558) (not e!1163202))))

(declare-datatypes ((tuple2!19462 0))(
  ( (tuple2!19463 (_1!11133 Token!6736) (_2!11133 List!20003)) )
))
(declare-datatypes ((Option!4171 0))(
  ( (None!4170) (Some!4170 (v!25707 tuple2!19462)) )
))
(declare-fun lt!707218 () Option!4171)

(declare-fun maxPrefix!1768 (LexerInterface!3220 List!20004 List!20003) Option!4171)

(assert (=> b!1820292 (= res!818558 (= (maxPrefix!1768 thiss!28068 rules!4538 input!3612) lt!707218))))

(assert (=> b!1820292 (= lt!707218 (Some!4170 (tuple2!19463 token!556 suffix!1667)))))

(declare-fun b!1820293 () Bool)

(declare-fun res!818555 () Bool)

(assert (=> b!1820293 (=> (not res!818555) (not e!1163196))))

(declare-fun contains!3630 (List!20004 Rule!6982) Bool)

(assert (=> b!1820293 (= res!818555 (contains!3630 rules!4538 rule!559))))

(declare-fun e!1163203 () Bool)

(assert (=> b!1820294 (= e!1163203 (and tp!514503 tp!514493))))

(assert (=> b!1820296 (= e!1163205 (and tp!514496 tp!514502))))

(declare-fun b!1820297 () Bool)

(declare-fun tp!514498 () Bool)

(assert (=> b!1820297 (= e!1163204 (and tp!514498 (inv!25965 (tag!4005 (h!25335 rules!4538))) (inv!25968 (transformation!3591 (h!25335 rules!4538))) e!1163203))))

(declare-fun b!1820298 () Bool)

(declare-fun res!818559 () Bool)

(assert (=> b!1820298 (=> (not res!818559) (not e!1163196))))

(declare-fun rulesInvariant!2889 (LexerInterface!3220 List!20004) Bool)

(assert (=> b!1820298 (= res!818559 (rulesInvariant!2889 thiss!28068 rules!4538))))

(declare-fun res!818556 () Bool)

(assert (=> start!180238 (=> (not res!818556) (not e!1163196))))

(get-info :version)

(assert (=> start!180238 (= res!818556 ((_ is Lexer!3218) thiss!28068))))

(assert (=> start!180238 e!1163196))

(declare-fun e!1163211 () Bool)

(assert (=> start!180238 e!1163211))

(assert (=> start!180238 true))

(assert (=> start!180238 e!1163208))

(declare-fun inv!25969 (Token!6736) Bool)

(assert (=> start!180238 (and (inv!25969 token!556) e!1163197)))

(declare-fun e!1163198 () Bool)

(assert (=> start!180238 e!1163198))

(declare-fun e!1163201 () Bool)

(assert (=> start!180238 e!1163201))

(declare-fun e!1163192 () Bool)

(assert (=> b!1820295 (= e!1163192 (and tp!514500 tp!514495))))

(declare-fun b!1820299 () Bool)

(declare-fun tp_is_empty!8073 () Bool)

(declare-fun tp!514499 () Bool)

(assert (=> b!1820299 (= e!1163211 (and tp_is_empty!8073 tp!514499))))

(declare-fun b!1820300 () Bool)

(declare-fun res!818554 () Bool)

(assert (=> b!1820300 (=> (not res!818554) (not e!1163202))))

(assert (=> b!1820300 (= res!818554 (= (rule!5715 token!556) rule!559))))

(declare-fun b!1820301 () Bool)

(declare-fun e!1163212 () Bool)

(assert (=> b!1820301 (= e!1163194 e!1163212)))

(declare-fun res!818553 () Bool)

(assert (=> b!1820301 (=> res!818553 e!1163212)))

(declare-fun lt!707212 () Option!4171)

(assert (=> b!1820301 (= res!818553 (not (= lt!707212 lt!707218)))))

(declare-fun lt!707215 () Int)

(declare-fun lt!707217 () TokenValue!3681)

(assert (=> b!1820301 (= lt!707212 (Some!4170 (tuple2!19463 (Token!6737 lt!707217 rule!559 lt!707215 lt!707216) suffix!1667)))))

(declare-fun maxPrefixOneRule!1133 (LexerInterface!3220 Rule!6982 List!20003) Option!4171)

(assert (=> b!1820301 (= lt!707212 (maxPrefixOneRule!1133 thiss!28068 rule!559 input!3612))))

(declare-fun size!15820 (List!20003) Int)

(assert (=> b!1820301 (= lt!707215 (size!15820 lt!707216))))

(declare-fun apply!5383 (TokenValueInjection!7022 BalanceConc!13190) TokenValue!3681)

(declare-fun seqFromList!2552 (List!20003) BalanceConc!13190)

(assert (=> b!1820301 (= lt!707217 (apply!5383 (transformation!3591 rule!559) (seqFromList!2552 lt!707216)))))

(declare-fun lt!707219 () Unit!34611)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!509 (LexerInterface!3220 List!20004 List!20003 List!20003 List!20003 Rule!6982) Unit!34611)

(assert (=> b!1820301 (= lt!707219 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!509 thiss!28068 rules!4538 lt!707216 input!3612 suffix!1667 rule!559))))

(declare-fun b!1820302 () Bool)

(declare-fun e!1163195 () Bool)

(assert (=> b!1820302 (= e!1163212 e!1163195)))

(declare-fun res!818560 () Bool)

(assert (=> b!1820302 (=> res!818560 e!1163195)))

(declare-fun lambda!71222 () Int)

(declare-fun rulesRegex!923 (LexerInterface!3220 List!20004) Regex!4919)

(declare-datatypes ((List!20005 0))(
  ( (Nil!19935) (Cons!19935 (h!25336 Regex!4919) (t!169850 List!20005)) )
))
(declare-fun generalisedUnion!446 (List!20005) Regex!4919)

(declare-fun map!4117 (List!20004 Int) List!20005)

(assert (=> b!1820302 (= res!818560 (not (= (rulesRegex!923 thiss!28068 rules!4538) (generalisedUnion!446 (map!4117 rules!4538 lambda!71222)))))))

(declare-fun lt!707214 () Unit!34611)

(declare-fun lemma!449 (List!20003 Rule!6982 List!20004 List!20003 LexerInterface!3220 Token!6736 List!20004) Unit!34611)

(assert (=> b!1820302 (= lt!707214 (lemma!449 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1820303 () Bool)

(assert (=> b!1820303 (= e!1163195 e!1163206)))

(declare-fun res!818562 () Bool)

(assert (=> b!1820303 (=> res!818562 e!1163206)))

(declare-fun contains!3631 (List!20005 Regex!4919) Bool)

(assert (=> b!1820303 (= res!818562 (not (contains!3631 (map!4117 rules!4538 lambda!71222) (regex!3591 rule!559))))))

(declare-fun lt!707213 () Unit!34611)

(declare-fun lemma!450 (List!20003 Rule!6982 List!20004 List!20003 LexerInterface!3220 Token!6736 List!20004) Unit!34611)

(assert (=> b!1820303 (= lt!707213 (lemma!450 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1820304 () Bool)

(declare-fun tp!514494 () Bool)

(assert (=> b!1820304 (= e!1163198 (and tp!514494 (inv!25965 (tag!4005 rule!559)) (inv!25968 (transformation!3591 rule!559)) e!1163192))))

(declare-fun b!1820305 () Bool)

(declare-fun res!818552 () Bool)

(assert (=> b!1820305 (=> (not res!818552) (not e!1163196))))

(declare-fun isEmpty!12599 (List!20004) Bool)

(assert (=> b!1820305 (= res!818552 (not (isEmpty!12599 rules!4538)))))

(declare-fun b!1820306 () Bool)

(declare-fun tp!514504 () Bool)

(assert (=> b!1820306 (= e!1163201 (and tp_is_empty!8073 tp!514504))))

(assert (= (and start!180238 res!818556) b!1820305))

(assert (= (and b!1820305 res!818552) b!1820298))

(assert (= (and b!1820298 res!818559) b!1820293))

(assert (= (and b!1820293 res!818555) b!1820292))

(assert (= (and b!1820292 res!818558) b!1820300))

(assert (= (and b!1820300 res!818554) b!1820287))

(assert (= (and b!1820287 res!818557) b!1820288))

(assert (= (and b!1820288 (not res!818561)) b!1820301))

(assert (= (and b!1820301 (not res!818553)) b!1820302))

(assert (= (and b!1820302 (not res!818560)) b!1820303))

(assert (= (and b!1820303 (not res!818562)) b!1820289))

(assert (= (and start!180238 ((_ is Cons!19933) suffix!1667)) b!1820299))

(assert (= b!1820297 b!1820294))

(assert (= b!1820290 b!1820297))

(assert (= (and start!180238 ((_ is Cons!19934) rules!4538)) b!1820290))

(assert (= b!1820286 b!1820296))

(assert (= b!1820291 b!1820286))

(assert (= start!180238 b!1820291))

(assert (= b!1820304 b!1820295))

(assert (= start!180238 b!1820304))

(assert (= (and start!180238 ((_ is Cons!19933) input!3612)) b!1820306))

(declare-fun m!2249237 () Bool)

(assert (=> b!1820293 m!2249237))

(declare-fun m!2249239 () Bool)

(assert (=> b!1820301 m!2249239))

(declare-fun m!2249241 () Bool)

(assert (=> b!1820301 m!2249241))

(declare-fun m!2249243 () Bool)

(assert (=> b!1820301 m!2249243))

(assert (=> b!1820301 m!2249239))

(declare-fun m!2249245 () Bool)

(assert (=> b!1820301 m!2249245))

(declare-fun m!2249247 () Bool)

(assert (=> b!1820301 m!2249247))

(declare-fun m!2249249 () Bool)

(assert (=> b!1820305 m!2249249))

(declare-fun m!2249251 () Bool)

(assert (=> b!1820287 m!2249251))

(declare-fun m!2249253 () Bool)

(assert (=> b!1820287 m!2249253))

(assert (=> b!1820287 m!2249253))

(declare-fun m!2249255 () Bool)

(assert (=> b!1820287 m!2249255))

(declare-fun m!2249257 () Bool)

(assert (=> b!1820291 m!2249257))

(declare-fun m!2249259 () Bool)

(assert (=> b!1820292 m!2249259))

(declare-fun m!2249261 () Bool)

(assert (=> b!1820286 m!2249261))

(declare-fun m!2249263 () Bool)

(assert (=> b!1820286 m!2249263))

(declare-fun m!2249265 () Bool)

(assert (=> start!180238 m!2249265))

(declare-fun m!2249267 () Bool)

(assert (=> b!1820298 m!2249267))

(declare-fun m!2249269 () Bool)

(assert (=> b!1820302 m!2249269))

(declare-fun m!2249271 () Bool)

(assert (=> b!1820302 m!2249271))

(assert (=> b!1820302 m!2249271))

(declare-fun m!2249273 () Bool)

(assert (=> b!1820302 m!2249273))

(declare-fun m!2249275 () Bool)

(assert (=> b!1820302 m!2249275))

(declare-fun m!2249277 () Bool)

(assert (=> b!1820288 m!2249277))

(declare-fun m!2249279 () Bool)

(assert (=> b!1820288 m!2249279))

(declare-fun m!2249281 () Bool)

(assert (=> b!1820288 m!2249281))

(declare-fun m!2249283 () Bool)

(assert (=> b!1820289 m!2249283))

(declare-fun m!2249285 () Bool)

(assert (=> b!1820297 m!2249285))

(declare-fun m!2249287 () Bool)

(assert (=> b!1820297 m!2249287))

(declare-fun m!2249289 () Bool)

(assert (=> b!1820304 m!2249289))

(declare-fun m!2249291 () Bool)

(assert (=> b!1820304 m!2249291))

(assert (=> b!1820303 m!2249271))

(assert (=> b!1820303 m!2249271))

(declare-fun m!2249293 () Bool)

(assert (=> b!1820303 m!2249293))

(declare-fun m!2249295 () Bool)

(assert (=> b!1820303 m!2249295))

(check-sat (not b!1820297) (not b_next!51189) (not b!1820302) (not b!1820293) (not b_next!51187) (not b!1820286) b_and!141135 b_and!141131 (not b!1820304) (not b!1820305) (not b!1820299) tp_is_empty!8073 (not b_next!51193) (not b_next!51183) (not start!180238) (not b!1820290) (not b!1820301) b_and!141139 (not b!1820291) (not b!1820292) (not b!1820306) (not b_next!51185) b_and!141137 (not b_next!51191) (not b!1820288) (not b!1820289) b_and!141129 (not b!1820303) (not b!1820298) b_and!141133 (not b!1820287))
(check-sat (not b_next!51189) b_and!141139 (not b_next!51187) b_and!141135 b_and!141131 (not b_next!51185) b_and!141129 b_and!141133 (not b_next!51193) (not b_next!51183) b_and!141137 (not b_next!51191))
(get-model)

(declare-fun b!1820368 () Bool)

(declare-fun e!1163252 () Bool)

(declare-fun e!1163251 () Bool)

(assert (=> b!1820368 (= e!1163252 e!1163251)))

(declare-fun res!818603 () Bool)

(assert (=> b!1820368 (=> res!818603 e!1163251)))

(declare-fun call!114297 () Bool)

(assert (=> b!1820368 (= res!818603 call!114297)))

(declare-fun b!1820369 () Bool)

(declare-fun e!1163254 () Bool)

(declare-fun lt!707229 () Bool)

(assert (=> b!1820369 (= e!1163254 (= lt!707229 call!114297))))

(declare-fun b!1820370 () Bool)

(declare-fun e!1163248 () Bool)

(declare-fun nullable!1523 (Regex!4919) Bool)

(assert (=> b!1820370 (= e!1163248 (nullable!1523 (regex!3591 rule!559)))))

(declare-fun b!1820371 () Bool)

(declare-fun res!818604 () Bool)

(declare-fun e!1163249 () Bool)

(assert (=> b!1820371 (=> res!818604 e!1163249)))

(assert (=> b!1820371 (= res!818604 (not ((_ is ElementMatch!4919) (regex!3591 rule!559))))))

(declare-fun e!1163253 () Bool)

(assert (=> b!1820371 (= e!1163253 e!1163249)))

(declare-fun b!1820372 () Bool)

(declare-fun e!1163250 () Bool)

(declare-fun head!4241 (List!20003) C!10012)

(assert (=> b!1820372 (= e!1163250 (= (head!4241 lt!707216) (c!297073 (regex!3591 rule!559))))))

(declare-fun b!1820373 () Bool)

(declare-fun res!818605 () Bool)

(assert (=> b!1820373 (=> (not res!818605) (not e!1163250))))

(assert (=> b!1820373 (= res!818605 (not call!114297))))

(declare-fun d!557660 () Bool)

(assert (=> d!557660 e!1163254))

(declare-fun c!297088 () Bool)

(assert (=> d!557660 (= c!297088 ((_ is EmptyExpr!4919) (regex!3591 rule!559)))))

(assert (=> d!557660 (= lt!707229 e!1163248)))

(declare-fun c!297087 () Bool)

(declare-fun isEmpty!12602 (List!20003) Bool)

(assert (=> d!557660 (= c!297087 (isEmpty!12602 lt!707216))))

(declare-fun validRegex!1997 (Regex!4919) Bool)

(assert (=> d!557660 (validRegex!1997 (regex!3591 rule!559))))

(assert (=> d!557660 (= (matchR!2384 (regex!3591 rule!559) lt!707216) lt!707229)))

(declare-fun b!1820367 () Bool)

(assert (=> b!1820367 (= e!1163251 (not (= (head!4241 lt!707216) (c!297073 (regex!3591 rule!559)))))))

(declare-fun b!1820374 () Bool)

(declare-fun derivativeStep!1288 (Regex!4919 C!10012) Regex!4919)

(declare-fun tail!2700 (List!20003) List!20003)

(assert (=> b!1820374 (= e!1163248 (matchR!2384 (derivativeStep!1288 (regex!3591 rule!559) (head!4241 lt!707216)) (tail!2700 lt!707216)))))

(declare-fun bm!114292 () Bool)

(assert (=> bm!114292 (= call!114297 (isEmpty!12602 lt!707216))))

(declare-fun b!1820375 () Bool)

(declare-fun res!818602 () Bool)

(assert (=> b!1820375 (=> (not res!818602) (not e!1163250))))

(assert (=> b!1820375 (= res!818602 (isEmpty!12602 (tail!2700 lt!707216)))))

(declare-fun b!1820376 () Bool)

(assert (=> b!1820376 (= e!1163254 e!1163253)))

(declare-fun c!297086 () Bool)

(assert (=> b!1820376 (= c!297086 ((_ is EmptyLang!4919) (regex!3591 rule!559)))))

(declare-fun b!1820377 () Bool)

(declare-fun res!818599 () Bool)

(assert (=> b!1820377 (=> res!818599 e!1163249)))

(assert (=> b!1820377 (= res!818599 e!1163250)))

(declare-fun res!818598 () Bool)

(assert (=> b!1820377 (=> (not res!818598) (not e!1163250))))

(assert (=> b!1820377 (= res!818598 lt!707229)))

(declare-fun b!1820378 () Bool)

(declare-fun res!818600 () Bool)

(assert (=> b!1820378 (=> res!818600 e!1163251)))

(assert (=> b!1820378 (= res!818600 (not (isEmpty!12602 (tail!2700 lt!707216))))))

(declare-fun b!1820379 () Bool)

(assert (=> b!1820379 (= e!1163249 e!1163252)))

(declare-fun res!818601 () Bool)

(assert (=> b!1820379 (=> (not res!818601) (not e!1163252))))

(assert (=> b!1820379 (= res!818601 (not lt!707229))))

(declare-fun b!1820380 () Bool)

(assert (=> b!1820380 (= e!1163253 (not lt!707229))))

(assert (= (and d!557660 c!297087) b!1820370))

(assert (= (and d!557660 (not c!297087)) b!1820374))

(assert (= (and d!557660 c!297088) b!1820369))

(assert (= (and d!557660 (not c!297088)) b!1820376))

(assert (= (and b!1820376 c!297086) b!1820380))

(assert (= (and b!1820376 (not c!297086)) b!1820371))

(assert (= (and b!1820371 (not res!818604)) b!1820377))

(assert (= (and b!1820377 res!818598) b!1820373))

(assert (= (and b!1820373 res!818605) b!1820375))

(assert (= (and b!1820375 res!818602) b!1820372))

(assert (= (and b!1820377 (not res!818599)) b!1820379))

(assert (= (and b!1820379 res!818601) b!1820368))

(assert (= (and b!1820368 (not res!818603)) b!1820378))

(assert (= (and b!1820378 (not res!818600)) b!1820367))

(assert (= (or b!1820369 b!1820368 b!1820373) bm!114292))

(declare-fun m!2249327 () Bool)

(assert (=> b!1820375 m!2249327))

(assert (=> b!1820375 m!2249327))

(declare-fun m!2249329 () Bool)

(assert (=> b!1820375 m!2249329))

(declare-fun m!2249331 () Bool)

(assert (=> bm!114292 m!2249331))

(assert (=> d!557660 m!2249331))

(declare-fun m!2249333 () Bool)

(assert (=> d!557660 m!2249333))

(declare-fun m!2249335 () Bool)

(assert (=> b!1820372 m!2249335))

(assert (=> b!1820367 m!2249335))

(declare-fun m!2249337 () Bool)

(assert (=> b!1820370 m!2249337))

(assert (=> b!1820374 m!2249335))

(assert (=> b!1820374 m!2249335))

(declare-fun m!2249339 () Bool)

(assert (=> b!1820374 m!2249339))

(assert (=> b!1820374 m!2249327))

(assert (=> b!1820374 m!2249339))

(assert (=> b!1820374 m!2249327))

(declare-fun m!2249341 () Bool)

(assert (=> b!1820374 m!2249341))

(assert (=> b!1820378 m!2249327))

(assert (=> b!1820378 m!2249327))

(assert (=> b!1820378 m!2249329))

(assert (=> b!1820288 d!557660))

(declare-fun d!557664 () Bool)

(declare-fun res!818610 () Bool)

(declare-fun e!1163257 () Bool)

(assert (=> d!557664 (=> (not res!818610) (not e!1163257))))

(assert (=> d!557664 (= res!818610 (validRegex!1997 (regex!3591 rule!559)))))

(assert (=> d!557664 (= (ruleValid!1083 thiss!28068 rule!559) e!1163257)))

(declare-fun b!1820385 () Bool)

(declare-fun res!818611 () Bool)

(assert (=> b!1820385 (=> (not res!818611) (not e!1163257))))

(assert (=> b!1820385 (= res!818611 (not (nullable!1523 (regex!3591 rule!559))))))

(declare-fun b!1820386 () Bool)

(assert (=> b!1820386 (= e!1163257 (not (= (tag!4005 rule!559) (String!22738 ""))))))

(assert (= (and d!557664 res!818610) b!1820385))

(assert (= (and b!1820385 res!818611) b!1820386))

(assert (=> d!557664 m!2249333))

(assert (=> b!1820385 m!2249337))

(assert (=> b!1820288 d!557664))

(declare-fun d!557666 () Bool)

(assert (=> d!557666 (ruleValid!1083 thiss!28068 rule!559)))

(declare-fun lt!707232 () Unit!34611)

(declare-fun choose!11473 (LexerInterface!3220 Rule!6982 List!20004) Unit!34611)

(assert (=> d!557666 (= lt!707232 (choose!11473 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557666 (contains!3630 rules!4538 rule!559)))

(assert (=> d!557666 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!604 thiss!28068 rule!559 rules!4538) lt!707232)))

(declare-fun bs!407312 () Bool)

(assert (= bs!407312 d!557666))

(assert (=> bs!407312 m!2249279))

(declare-fun m!2249343 () Bool)

(assert (=> bs!407312 m!2249343))

(assert (=> bs!407312 m!2249237))

(assert (=> b!1820288 d!557666))

(declare-fun d!557668 () Bool)

(assert (=> d!557668 true))

(declare-fun lt!707289 () Bool)

(declare-fun lambda!71243 () Int)

(declare-fun forall!4302 (List!20004 Int) Bool)

(assert (=> d!557668 (= lt!707289 (forall!4302 rules!4538 lambda!71243))))

(declare-fun e!1163339 () Bool)

(assert (=> d!557668 (= lt!707289 e!1163339)))

(declare-fun res!818678 () Bool)

(assert (=> d!557668 (=> res!818678 e!1163339)))

(assert (=> d!557668 (= res!818678 (not ((_ is Cons!19934) rules!4538)))))

(assert (=> d!557668 (= (rulesValidInductive!1232 thiss!28068 rules!4538) lt!707289)))

(declare-fun b!1820521 () Bool)

(declare-fun e!1163340 () Bool)

(assert (=> b!1820521 (= e!1163339 e!1163340)))

(declare-fun res!818679 () Bool)

(assert (=> b!1820521 (=> (not res!818679) (not e!1163340))))

(assert (=> b!1820521 (= res!818679 (ruleValid!1083 thiss!28068 (h!25335 rules!4538)))))

(declare-fun b!1820522 () Bool)

(assert (=> b!1820522 (= e!1163340 (rulesValidInductive!1232 thiss!28068 (t!169849 rules!4538)))))

(assert (= (and d!557668 (not res!818678)) b!1820521))

(assert (= (and b!1820521 res!818679) b!1820522))

(declare-fun m!2249465 () Bool)

(assert (=> d!557668 m!2249465))

(declare-fun m!2249467 () Bool)

(assert (=> b!1820521 m!2249467))

(declare-fun m!2249469 () Bool)

(assert (=> b!1820522 m!2249469))

(assert (=> b!1820289 d!557668))

(declare-fun d!557708 () Bool)

(declare-fun res!818684 () Bool)

(declare-fun e!1163343 () Bool)

(assert (=> d!557708 (=> (not res!818684) (not e!1163343))))

(assert (=> d!557708 (= res!818684 (not (isEmpty!12602 (originalCharacters!4399 token!556))))))

(assert (=> d!557708 (= (inv!25969 token!556) e!1163343)))

(declare-fun b!1820529 () Bool)

(declare-fun res!818685 () Bool)

(assert (=> b!1820529 (=> (not res!818685) (not e!1163343))))

(declare-fun dynLambda!9922 (Int TokenValue!3681) BalanceConc!13190)

(assert (=> b!1820529 (= res!818685 (= (originalCharacters!4399 token!556) (list!8105 (dynLambda!9922 (toChars!4985 (transformation!3591 (rule!5715 token!556))) (value!112010 token!556)))))))

(declare-fun b!1820530 () Bool)

(assert (=> b!1820530 (= e!1163343 (= (size!15819 token!556) (size!15820 (originalCharacters!4399 token!556))))))

(assert (= (and d!557708 res!818684) b!1820529))

(assert (= (and b!1820529 res!818685) b!1820530))

(declare-fun b_lambda!60103 () Bool)

(assert (=> (not b_lambda!60103) (not b!1820529)))

(declare-fun t!169858 () Bool)

(declare-fun tb!111243 () Bool)

(assert (=> (and b!1820295 (= (toChars!4985 (transformation!3591 rule!559)) (toChars!4985 (transformation!3591 (rule!5715 token!556)))) t!169858) tb!111243))

(declare-fun b!1820535 () Bool)

(declare-fun e!1163346 () Bool)

(declare-fun tp!514510 () Bool)

(declare-fun inv!25972 (Conc!6623) Bool)

(assert (=> b!1820535 (= e!1163346 (and (inv!25972 (c!297072 (dynLambda!9922 (toChars!4985 (transformation!3591 (rule!5715 token!556))) (value!112010 token!556)))) tp!514510))))

(declare-fun result!133680 () Bool)

(declare-fun inv!25973 (BalanceConc!13190) Bool)

(assert (=> tb!111243 (= result!133680 (and (inv!25973 (dynLambda!9922 (toChars!4985 (transformation!3591 (rule!5715 token!556))) (value!112010 token!556))) e!1163346))))

(assert (= tb!111243 b!1820535))

(declare-fun m!2249471 () Bool)

(assert (=> b!1820535 m!2249471))

(declare-fun m!2249473 () Bool)

(assert (=> tb!111243 m!2249473))

(assert (=> b!1820529 t!169858))

(declare-fun b_and!141153 () Bool)

(assert (= b_and!141131 (and (=> t!169858 result!133680) b_and!141153)))

(declare-fun t!169860 () Bool)

(declare-fun tb!111245 () Bool)

(assert (=> (and b!1820296 (= (toChars!4985 (transformation!3591 (rule!5715 token!556))) (toChars!4985 (transformation!3591 (rule!5715 token!556)))) t!169860) tb!111245))

(declare-fun result!133684 () Bool)

(assert (= result!133684 result!133680))

(assert (=> b!1820529 t!169860))

(declare-fun b_and!141155 () Bool)

(assert (= b_and!141135 (and (=> t!169860 result!133684) b_and!141155)))

(declare-fun tb!111247 () Bool)

(declare-fun t!169862 () Bool)

(assert (=> (and b!1820294 (= (toChars!4985 (transformation!3591 (h!25335 rules!4538))) (toChars!4985 (transformation!3591 (rule!5715 token!556)))) t!169862) tb!111247))

(declare-fun result!133686 () Bool)

(assert (= result!133686 result!133680))

(assert (=> b!1820529 t!169862))

(declare-fun b_and!141157 () Bool)

(assert (= b_and!141139 (and (=> t!169862 result!133686) b_and!141157)))

(declare-fun m!2249475 () Bool)

(assert (=> d!557708 m!2249475))

(declare-fun m!2249477 () Bool)

(assert (=> b!1820529 m!2249477))

(assert (=> b!1820529 m!2249477))

(declare-fun m!2249479 () Bool)

(assert (=> b!1820529 m!2249479))

(declare-fun m!2249481 () Bool)

(assert (=> b!1820530 m!2249481))

(assert (=> start!180238 d!557708))

(declare-fun d!557710 () Bool)

(assert (=> d!557710 (= (inv!25965 (tag!4005 (rule!5715 token!556))) (= (mod (str.len (value!112009 (tag!4005 (rule!5715 token!556)))) 2) 0))))

(assert (=> b!1820286 d!557710))

(declare-fun d!557712 () Bool)

(declare-fun res!818688 () Bool)

(declare-fun e!1163349 () Bool)

(assert (=> d!557712 (=> (not res!818688) (not e!1163349))))

(declare-fun semiInverseModEq!1438 (Int Int) Bool)

(assert (=> d!557712 (= res!818688 (semiInverseModEq!1438 (toChars!4985 (transformation!3591 (rule!5715 token!556))) (toValue!5126 (transformation!3591 (rule!5715 token!556)))))))

(assert (=> d!557712 (= (inv!25968 (transformation!3591 (rule!5715 token!556))) e!1163349)))

(declare-fun b!1820538 () Bool)

(declare-fun equivClasses!1379 (Int Int) Bool)

(assert (=> b!1820538 (= e!1163349 (equivClasses!1379 (toChars!4985 (transformation!3591 (rule!5715 token!556))) (toValue!5126 (transformation!3591 (rule!5715 token!556)))))))

(assert (= (and d!557712 res!818688) b!1820538))

(declare-fun m!2249483 () Bool)

(assert (=> d!557712 m!2249483))

(declare-fun m!2249485 () Bool)

(assert (=> b!1820538 m!2249485))

(assert (=> b!1820286 d!557712))

(declare-fun d!557714 () Bool)

(assert (=> d!557714 (= (inv!25965 (tag!4005 (h!25335 rules!4538))) (= (mod (str.len (value!112009 (tag!4005 (h!25335 rules!4538)))) 2) 0))))

(assert (=> b!1820297 d!557714))

(declare-fun d!557716 () Bool)

(declare-fun res!818689 () Bool)

(declare-fun e!1163350 () Bool)

(assert (=> d!557716 (=> (not res!818689) (not e!1163350))))

(assert (=> d!557716 (= res!818689 (semiInverseModEq!1438 (toChars!4985 (transformation!3591 (h!25335 rules!4538))) (toValue!5126 (transformation!3591 (h!25335 rules!4538)))))))

(assert (=> d!557716 (= (inv!25968 (transformation!3591 (h!25335 rules!4538))) e!1163350)))

(declare-fun b!1820539 () Bool)

(assert (=> b!1820539 (= e!1163350 (equivClasses!1379 (toChars!4985 (transformation!3591 (h!25335 rules!4538))) (toValue!5126 (transformation!3591 (h!25335 rules!4538)))))))

(assert (= (and d!557716 res!818689) b!1820539))

(declare-fun m!2249487 () Bool)

(assert (=> d!557716 m!2249487))

(declare-fun m!2249489 () Bool)

(assert (=> b!1820539 m!2249489))

(assert (=> b!1820297 d!557716))

(declare-fun b!1820549 () Bool)

(declare-fun e!1163356 () List!20003)

(assert (=> b!1820549 (= e!1163356 (Cons!19933 (h!25334 lt!707216) (++!5415 (t!169848 lt!707216) suffix!1667)))))

(declare-fun b!1820548 () Bool)

(assert (=> b!1820548 (= e!1163356 suffix!1667)))

(declare-fun b!1820550 () Bool)

(declare-fun res!818695 () Bool)

(declare-fun e!1163355 () Bool)

(assert (=> b!1820550 (=> (not res!818695) (not e!1163355))))

(declare-fun lt!707292 () List!20003)

(assert (=> b!1820550 (= res!818695 (= (size!15820 lt!707292) (+ (size!15820 lt!707216) (size!15820 suffix!1667))))))

(declare-fun b!1820551 () Bool)

(assert (=> b!1820551 (= e!1163355 (or (not (= suffix!1667 Nil!19933)) (= lt!707292 lt!707216)))))

(declare-fun d!557718 () Bool)

(assert (=> d!557718 e!1163355))

(declare-fun res!818694 () Bool)

(assert (=> d!557718 (=> (not res!818694) (not e!1163355))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2925 (List!20003) (InoxSet C!10012))

(assert (=> d!557718 (= res!818694 (= (content!2925 lt!707292) ((_ map or) (content!2925 lt!707216) (content!2925 suffix!1667))))))

(assert (=> d!557718 (= lt!707292 e!1163356)))

(declare-fun c!297124 () Bool)

(assert (=> d!557718 (= c!297124 ((_ is Nil!19933) lt!707216))))

(assert (=> d!557718 (= (++!5415 lt!707216 suffix!1667) lt!707292)))

(assert (= (and d!557718 c!297124) b!1820548))

(assert (= (and d!557718 (not c!297124)) b!1820549))

(assert (= (and d!557718 res!818694) b!1820550))

(assert (= (and b!1820550 res!818695) b!1820551))

(declare-fun m!2249491 () Bool)

(assert (=> b!1820549 m!2249491))

(declare-fun m!2249493 () Bool)

(assert (=> b!1820550 m!2249493))

(assert (=> b!1820550 m!2249247))

(declare-fun m!2249495 () Bool)

(assert (=> b!1820550 m!2249495))

(declare-fun m!2249497 () Bool)

(assert (=> d!557718 m!2249497))

(declare-fun m!2249499 () Bool)

(assert (=> d!557718 m!2249499))

(declare-fun m!2249501 () Bool)

(assert (=> d!557718 m!2249501))

(assert (=> b!1820287 d!557718))

(declare-fun d!557720 () Bool)

(declare-fun list!8107 (Conc!6623) List!20003)

(assert (=> d!557720 (= (list!8105 (charsOf!2234 token!556)) (list!8107 (c!297072 (charsOf!2234 token!556))))))

(declare-fun bs!407321 () Bool)

(assert (= bs!407321 d!557720))

(declare-fun m!2249503 () Bool)

(assert (=> bs!407321 m!2249503))

(assert (=> b!1820287 d!557720))

(declare-fun d!557722 () Bool)

(declare-fun lt!707295 () BalanceConc!13190)

(assert (=> d!557722 (= (list!8105 lt!707295) (originalCharacters!4399 token!556))))

(assert (=> d!557722 (= lt!707295 (dynLambda!9922 (toChars!4985 (transformation!3591 (rule!5715 token!556))) (value!112010 token!556)))))

(assert (=> d!557722 (= (charsOf!2234 token!556) lt!707295)))

(declare-fun b_lambda!60105 () Bool)

(assert (=> (not b_lambda!60105) (not d!557722)))

(assert (=> d!557722 t!169858))

(declare-fun b_and!141159 () Bool)

(assert (= b_and!141153 (and (=> t!169858 result!133680) b_and!141159)))

(assert (=> d!557722 t!169860))

(declare-fun b_and!141161 () Bool)

(assert (= b_and!141155 (and (=> t!169860 result!133684) b_and!141161)))

(assert (=> d!557722 t!169862))

(declare-fun b_and!141163 () Bool)

(assert (= b_and!141157 (and (=> t!169862 result!133686) b_and!141163)))

(declare-fun m!2249505 () Bool)

(assert (=> d!557722 m!2249505))

(assert (=> d!557722 m!2249477))

(assert (=> b!1820287 d!557722))

(declare-fun d!557724 () Bool)

(declare-fun res!818698 () Bool)

(declare-fun e!1163359 () Bool)

(assert (=> d!557724 (=> (not res!818698) (not e!1163359))))

(declare-fun rulesValid!1365 (LexerInterface!3220 List!20004) Bool)

(assert (=> d!557724 (= res!818698 (rulesValid!1365 thiss!28068 rules!4538))))

(assert (=> d!557724 (= (rulesInvariant!2889 thiss!28068 rules!4538) e!1163359)))

(declare-fun b!1820554 () Bool)

(declare-datatypes ((List!20007 0))(
  ( (Nil!19937) (Cons!19937 (h!25338 String!22737) (t!169884 List!20007)) )
))
(declare-fun noDuplicateTag!1363 (LexerInterface!3220 List!20004 List!20007) Bool)

(assert (=> b!1820554 (= e!1163359 (noDuplicateTag!1363 thiss!28068 rules!4538 Nil!19937))))

(assert (= (and d!557724 res!818698) b!1820554))

(declare-fun m!2249507 () Bool)

(assert (=> d!557724 m!2249507))

(declare-fun m!2249509 () Bool)

(assert (=> b!1820554 m!2249509))

(assert (=> b!1820298 d!557724))

(declare-fun d!557726 () Bool)

(declare-fun lt!707298 () Bool)

(declare-fun content!2926 (List!20004) (InoxSet Rule!6982))

(assert (=> d!557726 (= lt!707298 (select (content!2926 rules!4538) rule!559))))

(declare-fun e!1163365 () Bool)

(assert (=> d!557726 (= lt!707298 e!1163365)))

(declare-fun res!818704 () Bool)

(assert (=> d!557726 (=> (not res!818704) (not e!1163365))))

(assert (=> d!557726 (= res!818704 ((_ is Cons!19934) rules!4538))))

(assert (=> d!557726 (= (contains!3630 rules!4538 rule!559) lt!707298)))

(declare-fun b!1820559 () Bool)

(declare-fun e!1163364 () Bool)

(assert (=> b!1820559 (= e!1163365 e!1163364)))

(declare-fun res!818703 () Bool)

(assert (=> b!1820559 (=> res!818703 e!1163364)))

(assert (=> b!1820559 (= res!818703 (= (h!25335 rules!4538) rule!559))))

(declare-fun b!1820560 () Bool)

(assert (=> b!1820560 (= e!1163364 (contains!3630 (t!169849 rules!4538) rule!559))))

(assert (= (and d!557726 res!818704) b!1820559))

(assert (= (and b!1820559 (not res!818703)) b!1820560))

(declare-fun m!2249511 () Bool)

(assert (=> d!557726 m!2249511))

(declare-fun m!2249513 () Bool)

(assert (=> d!557726 m!2249513))

(declare-fun m!2249515 () Bool)

(assert (=> b!1820560 m!2249515))

(assert (=> b!1820293 d!557726))

(declare-fun d!557728 () Bool)

(assert (=> d!557728 (= (inv!25965 (tag!4005 rule!559)) (= (mod (str.len (value!112009 (tag!4005 rule!559))) 2) 0))))

(assert (=> b!1820304 d!557728))

(declare-fun d!557730 () Bool)

(declare-fun res!818705 () Bool)

(declare-fun e!1163366 () Bool)

(assert (=> d!557730 (=> (not res!818705) (not e!1163366))))

(assert (=> d!557730 (= res!818705 (semiInverseModEq!1438 (toChars!4985 (transformation!3591 rule!559)) (toValue!5126 (transformation!3591 rule!559))))))

(assert (=> d!557730 (= (inv!25968 (transformation!3591 rule!559)) e!1163366)))

(declare-fun b!1820561 () Bool)

(assert (=> b!1820561 (= e!1163366 (equivClasses!1379 (toChars!4985 (transformation!3591 rule!559)) (toValue!5126 (transformation!3591 rule!559))))))

(assert (= (and d!557730 res!818705) b!1820561))

(declare-fun m!2249517 () Bool)

(assert (=> d!557730 m!2249517))

(declare-fun m!2249519 () Bool)

(assert (=> b!1820561 m!2249519))

(assert (=> b!1820304 d!557730))

(declare-fun d!557732 () Bool)

(assert (=> d!557732 (= (isEmpty!12599 rules!4538) ((_ is Nil!19934) rules!4538))))

(assert (=> b!1820305 d!557732))

(declare-fun d!557734 () Bool)

(declare-fun fromListB!1168 (List!20003) BalanceConc!13190)

(assert (=> d!557734 (= (seqFromList!2552 lt!707216) (fromListB!1168 lt!707216))))

(declare-fun bs!407322 () Bool)

(assert (= bs!407322 d!557734))

(declare-fun m!2249521 () Bool)

(assert (=> bs!407322 m!2249521))

(assert (=> b!1820301 d!557734))

(declare-fun b!1820615 () Bool)

(declare-fun res!818747 () Bool)

(declare-fun e!1163394 () Bool)

(assert (=> b!1820615 (=> (not res!818747) (not e!1163394))))

(declare-fun lt!707330 () Option!4171)

(declare-fun get!6170 (Option!4171) tuple2!19462)

(assert (=> b!1820615 (= res!818747 (= (rule!5715 (_1!11133 (get!6170 lt!707330))) rule!559))))

(declare-fun b!1820616 () Bool)

(declare-fun e!1163396 () Bool)

(assert (=> b!1820616 (= e!1163396 e!1163394)))

(declare-fun res!818741 () Bool)

(assert (=> b!1820616 (=> (not res!818741) (not e!1163394))))

(assert (=> b!1820616 (= res!818741 (matchR!2384 (regex!3591 rule!559) (list!8105 (charsOf!2234 (_1!11133 (get!6170 lt!707330))))))))

(declare-fun b!1820618 () Bool)

(declare-fun res!818742 () Bool)

(assert (=> b!1820618 (=> (not res!818742) (not e!1163394))))

(assert (=> b!1820618 (= res!818742 (= (++!5415 (list!8105 (charsOf!2234 (_1!11133 (get!6170 lt!707330)))) (_2!11133 (get!6170 lt!707330))) input!3612))))

(declare-fun b!1820619 () Bool)

(declare-fun res!818745 () Bool)

(assert (=> b!1820619 (=> (not res!818745) (not e!1163394))))

(assert (=> b!1820619 (= res!818745 (< (size!15820 (_2!11133 (get!6170 lt!707330))) (size!15820 input!3612)))))

(declare-fun b!1820620 () Bool)

(declare-fun res!818744 () Bool)

(assert (=> b!1820620 (=> (not res!818744) (not e!1163394))))

(assert (=> b!1820620 (= res!818744 (= (value!112010 (_1!11133 (get!6170 lt!707330))) (apply!5383 (transformation!3591 (rule!5715 (_1!11133 (get!6170 lt!707330)))) (seqFromList!2552 (originalCharacters!4399 (_1!11133 (get!6170 lt!707330)))))))))

(declare-fun b!1820621 () Bool)

(declare-fun e!1163395 () Bool)

(declare-datatypes ((tuple2!19466 0))(
  ( (tuple2!19467 (_1!11135 List!20003) (_2!11135 List!20003)) )
))
(declare-fun findLongestMatchInner!497 (Regex!4919 List!20003 Int List!20003 List!20003 Int) tuple2!19466)

(assert (=> b!1820621 (= e!1163395 (matchR!2384 (regex!3591 rule!559) (_1!11135 (findLongestMatchInner!497 (regex!3591 rule!559) Nil!19933 (size!15820 Nil!19933) input!3612 input!3612 (size!15820 input!3612)))))))

(declare-fun d!557736 () Bool)

(assert (=> d!557736 e!1163396))

(declare-fun res!818743 () Bool)

(assert (=> d!557736 (=> res!818743 e!1163396)))

(declare-fun isEmpty!12604 (Option!4171) Bool)

(assert (=> d!557736 (= res!818743 (isEmpty!12604 lt!707330))))

(declare-fun e!1163393 () Option!4171)

(assert (=> d!557736 (= lt!707330 e!1163393)))

(declare-fun c!297133 () Bool)

(declare-fun lt!707333 () tuple2!19466)

(assert (=> d!557736 (= c!297133 (isEmpty!12602 (_1!11135 lt!707333)))))

(declare-fun findLongestMatch!424 (Regex!4919 List!20003) tuple2!19466)

(assert (=> d!557736 (= lt!707333 (findLongestMatch!424 (regex!3591 rule!559) input!3612))))

(assert (=> d!557736 (ruleValid!1083 thiss!28068 rule!559)))

(assert (=> d!557736 (= (maxPrefixOneRule!1133 thiss!28068 rule!559 input!3612) lt!707330)))

(declare-fun b!1820617 () Bool)

(assert (=> b!1820617 (= e!1163393 None!4170)))

(declare-fun b!1820622 () Bool)

(declare-fun size!15824 (BalanceConc!13190) Int)

(assert (=> b!1820622 (= e!1163393 (Some!4170 (tuple2!19463 (Token!6737 (apply!5383 (transformation!3591 rule!559) (seqFromList!2552 (_1!11135 lt!707333))) rule!559 (size!15824 (seqFromList!2552 (_1!11135 lt!707333))) (_1!11135 lt!707333)) (_2!11135 lt!707333))))))

(declare-fun lt!707331 () Unit!34611)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!481 (Regex!4919 List!20003) Unit!34611)

(assert (=> b!1820622 (= lt!707331 (longestMatchIsAcceptedByMatchOrIsEmpty!481 (regex!3591 rule!559) input!3612))))

(declare-fun res!818746 () Bool)

(assert (=> b!1820622 (= res!818746 (isEmpty!12602 (_1!11135 (findLongestMatchInner!497 (regex!3591 rule!559) Nil!19933 (size!15820 Nil!19933) input!3612 input!3612 (size!15820 input!3612)))))))

(assert (=> b!1820622 (=> res!818746 e!1163395)))

(assert (=> b!1820622 e!1163395))

(declare-fun lt!707334 () Unit!34611)

(assert (=> b!1820622 (= lt!707334 lt!707331)))

(declare-fun lt!707332 () Unit!34611)

(declare-fun lemmaSemiInverse!711 (TokenValueInjection!7022 BalanceConc!13190) Unit!34611)

(assert (=> b!1820622 (= lt!707332 (lemmaSemiInverse!711 (transformation!3591 rule!559) (seqFromList!2552 (_1!11135 lt!707333))))))

(declare-fun b!1820623 () Bool)

(assert (=> b!1820623 (= e!1163394 (= (size!15819 (_1!11133 (get!6170 lt!707330))) (size!15820 (originalCharacters!4399 (_1!11133 (get!6170 lt!707330))))))))

(assert (= (and d!557736 c!297133) b!1820617))

(assert (= (and d!557736 (not c!297133)) b!1820622))

(assert (= (and b!1820622 (not res!818746)) b!1820621))

(assert (= (and d!557736 (not res!818743)) b!1820616))

(assert (= (and b!1820616 res!818741) b!1820618))

(assert (= (and b!1820618 res!818742) b!1820619))

(assert (= (and b!1820619 res!818745) b!1820615))

(assert (= (and b!1820615 res!818747) b!1820620))

(assert (= (and b!1820620 res!818744) b!1820623))

(declare-fun m!2249577 () Bool)

(assert (=> b!1820615 m!2249577))

(declare-fun m!2249579 () Bool)

(assert (=> d!557736 m!2249579))

(declare-fun m!2249581 () Bool)

(assert (=> d!557736 m!2249581))

(declare-fun m!2249583 () Bool)

(assert (=> d!557736 m!2249583))

(assert (=> d!557736 m!2249279))

(assert (=> b!1820618 m!2249577))

(declare-fun m!2249585 () Bool)

(assert (=> b!1820618 m!2249585))

(assert (=> b!1820618 m!2249585))

(declare-fun m!2249587 () Bool)

(assert (=> b!1820618 m!2249587))

(assert (=> b!1820618 m!2249587))

(declare-fun m!2249589 () Bool)

(assert (=> b!1820618 m!2249589))

(assert (=> b!1820616 m!2249577))

(assert (=> b!1820616 m!2249585))

(assert (=> b!1820616 m!2249585))

(assert (=> b!1820616 m!2249587))

(assert (=> b!1820616 m!2249587))

(declare-fun m!2249591 () Bool)

(assert (=> b!1820616 m!2249591))

(assert (=> b!1820619 m!2249577))

(declare-fun m!2249593 () Bool)

(assert (=> b!1820619 m!2249593))

(declare-fun m!2249595 () Bool)

(assert (=> b!1820619 m!2249595))

(assert (=> b!1820620 m!2249577))

(declare-fun m!2249597 () Bool)

(assert (=> b!1820620 m!2249597))

(assert (=> b!1820620 m!2249597))

(declare-fun m!2249599 () Bool)

(assert (=> b!1820620 m!2249599))

(declare-fun m!2249601 () Bool)

(assert (=> b!1820621 m!2249601))

(assert (=> b!1820621 m!2249595))

(assert (=> b!1820621 m!2249601))

(assert (=> b!1820621 m!2249595))

(declare-fun m!2249603 () Bool)

(assert (=> b!1820621 m!2249603))

(declare-fun m!2249605 () Bool)

(assert (=> b!1820621 m!2249605))

(assert (=> b!1820623 m!2249577))

(declare-fun m!2249607 () Bool)

(assert (=> b!1820623 m!2249607))

(declare-fun m!2249609 () Bool)

(assert (=> b!1820622 m!2249609))

(assert (=> b!1820622 m!2249595))

(assert (=> b!1820622 m!2249609))

(declare-fun m!2249611 () Bool)

(assert (=> b!1820622 m!2249611))

(assert (=> b!1820622 m!2249601))

(assert (=> b!1820622 m!2249609))

(declare-fun m!2249613 () Bool)

(assert (=> b!1820622 m!2249613))

(declare-fun m!2249615 () Bool)

(assert (=> b!1820622 m!2249615))

(assert (=> b!1820622 m!2249601))

(assert (=> b!1820622 m!2249595))

(assert (=> b!1820622 m!2249603))

(assert (=> b!1820622 m!2249609))

(declare-fun m!2249617 () Bool)

(assert (=> b!1820622 m!2249617))

(declare-fun m!2249619 () Bool)

(assert (=> b!1820622 m!2249619))

(assert (=> b!1820301 d!557736))

(declare-fun d!557748 () Bool)

(assert (=> d!557748 (= (maxPrefixOneRule!1133 thiss!28068 rule!559 input!3612) (Some!4170 (tuple2!19463 (Token!6737 (apply!5383 (transformation!3591 rule!559) (seqFromList!2552 lt!707216)) rule!559 (size!15820 lt!707216) lt!707216) suffix!1667)))))

(declare-fun lt!707347 () Unit!34611)

(declare-fun choose!11475 (LexerInterface!3220 List!20004 List!20003 List!20003 List!20003 Rule!6982) Unit!34611)

(assert (=> d!557748 (= lt!707347 (choose!11475 thiss!28068 rules!4538 lt!707216 input!3612 suffix!1667 rule!559))))

(assert (=> d!557748 (not (isEmpty!12599 rules!4538))))

(assert (=> d!557748 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!509 thiss!28068 rules!4538 lt!707216 input!3612 suffix!1667 rule!559) lt!707347)))

(declare-fun bs!407325 () Bool)

(assert (= bs!407325 d!557748))

(assert (=> bs!407325 m!2249239))

(assert (=> bs!407325 m!2249249))

(declare-fun m!2249621 () Bool)

(assert (=> bs!407325 m!2249621))

(assert (=> bs!407325 m!2249239))

(assert (=> bs!407325 m!2249245))

(assert (=> bs!407325 m!2249243))

(assert (=> bs!407325 m!2249247))

(assert (=> b!1820301 d!557748))

(declare-fun d!557750 () Bool)

(declare-fun dynLambda!9924 (Int BalanceConc!13190) TokenValue!3681)

(assert (=> d!557750 (= (apply!5383 (transformation!3591 rule!559) (seqFromList!2552 lt!707216)) (dynLambda!9924 (toValue!5126 (transformation!3591 rule!559)) (seqFromList!2552 lt!707216)))))

(declare-fun b_lambda!60109 () Bool)

(assert (=> (not b_lambda!60109) (not d!557750)))

(declare-fun t!169870 () Bool)

(declare-fun tb!111255 () Bool)

(assert (=> (and b!1820295 (= (toValue!5126 (transformation!3591 rule!559)) (toValue!5126 (transformation!3591 rule!559))) t!169870) tb!111255))

(declare-fun result!133696 () Bool)

(assert (=> tb!111255 (= result!133696 (inv!21 (dynLambda!9924 (toValue!5126 (transformation!3591 rule!559)) (seqFromList!2552 lt!707216))))))

(declare-fun m!2249623 () Bool)

(assert (=> tb!111255 m!2249623))

(assert (=> d!557750 t!169870))

(declare-fun b_and!141171 () Bool)

(assert (= b_and!141129 (and (=> t!169870 result!133696) b_and!141171)))

(declare-fun tb!111257 () Bool)

(declare-fun t!169872 () Bool)

(assert (=> (and b!1820296 (= (toValue!5126 (transformation!3591 (rule!5715 token!556))) (toValue!5126 (transformation!3591 rule!559))) t!169872) tb!111257))

(declare-fun result!133700 () Bool)

(assert (= result!133700 result!133696))

(assert (=> d!557750 t!169872))

(declare-fun b_and!141173 () Bool)

(assert (= b_and!141133 (and (=> t!169872 result!133700) b_and!141173)))

(declare-fun t!169874 () Bool)

(declare-fun tb!111259 () Bool)

(assert (=> (and b!1820294 (= (toValue!5126 (transformation!3591 (h!25335 rules!4538))) (toValue!5126 (transformation!3591 rule!559))) t!169874) tb!111259))

(declare-fun result!133702 () Bool)

(assert (= result!133702 result!133696))

(assert (=> d!557750 t!169874))

(declare-fun b_and!141175 () Bool)

(assert (= b_and!141137 (and (=> t!169874 result!133702) b_and!141175)))

(assert (=> d!557750 m!2249239))

(declare-fun m!2249631 () Bool)

(assert (=> d!557750 m!2249631))

(assert (=> b!1820301 d!557750))

(declare-fun d!557752 () Bool)

(declare-fun lt!707355 () Int)

(assert (=> d!557752 (>= lt!707355 0)))

(declare-fun e!1163416 () Int)

(assert (=> d!557752 (= lt!707355 e!1163416)))

(declare-fun c!297139 () Bool)

(assert (=> d!557752 (= c!297139 ((_ is Nil!19933) lt!707216))))

(assert (=> d!557752 (= (size!15820 lt!707216) lt!707355)))

(declare-fun b!1820668 () Bool)

(assert (=> b!1820668 (= e!1163416 0)))

(declare-fun b!1820669 () Bool)

(assert (=> b!1820669 (= e!1163416 (+ 1 (size!15820 (t!169848 lt!707216))))))

(assert (= (and d!557752 c!297139) b!1820668))

(assert (= (and d!557752 (not c!297139)) b!1820669))

(declare-fun m!2249657 () Bool)

(assert (=> b!1820669 m!2249657))

(assert (=> b!1820301 d!557752))

(declare-fun b!1820700 () Bool)

(declare-fun e!1163437 () Bool)

(declare-fun inv!15 (TokenValue!3681) Bool)

(assert (=> b!1820700 (= e!1163437 (inv!15 (value!112010 token!556)))))

(declare-fun b!1820701 () Bool)

(declare-fun res!818771 () Bool)

(assert (=> b!1820701 (=> res!818771 e!1163437)))

(assert (=> b!1820701 (= res!818771 (not ((_ is IntegerValue!11045) (value!112010 token!556))))))

(declare-fun e!1163439 () Bool)

(assert (=> b!1820701 (= e!1163439 e!1163437)))

(declare-fun b!1820702 () Bool)

(declare-fun e!1163438 () Bool)

(declare-fun inv!16 (TokenValue!3681) Bool)

(assert (=> b!1820702 (= e!1163438 (inv!16 (value!112010 token!556)))))

(declare-fun b!1820703 () Bool)

(assert (=> b!1820703 (= e!1163438 e!1163439)))

(declare-fun c!297144 () Bool)

(assert (=> b!1820703 (= c!297144 ((_ is IntegerValue!11044) (value!112010 token!556)))))

(declare-fun d!557754 () Bool)

(declare-fun c!297145 () Bool)

(assert (=> d!557754 (= c!297145 ((_ is IntegerValue!11043) (value!112010 token!556)))))

(assert (=> d!557754 (= (inv!21 (value!112010 token!556)) e!1163438)))

(declare-fun b!1820704 () Bool)

(declare-fun inv!17 (TokenValue!3681) Bool)

(assert (=> b!1820704 (= e!1163439 (inv!17 (value!112010 token!556)))))

(assert (= (and d!557754 c!297145) b!1820702))

(assert (= (and d!557754 (not c!297145)) b!1820703))

(assert (= (and b!1820703 c!297144) b!1820704))

(assert (= (and b!1820703 (not c!297144)) b!1820701))

(assert (= (and b!1820701 (not res!818771)) b!1820700))

(declare-fun m!2249663 () Bool)

(assert (=> b!1820700 m!2249663))

(declare-fun m!2249665 () Bool)

(assert (=> b!1820702 m!2249665))

(declare-fun m!2249667 () Bool)

(assert (=> b!1820704 m!2249667))

(assert (=> b!1820291 d!557754))

(declare-fun bs!407327 () Bool)

(declare-fun d!557756 () Bool)

(assert (= bs!407327 (and d!557756 b!1820302)))

(declare-fun lambda!71246 () Int)

(assert (=> bs!407327 (= lambda!71246 lambda!71222)))

(declare-fun lt!707358 () Unit!34611)

(declare-fun lemma!452 (List!20004 LexerInterface!3220 List!20004) Unit!34611)

(assert (=> d!557756 (= lt!707358 (lemma!452 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!557756 (= (rulesRegex!923 thiss!28068 rules!4538) (generalisedUnion!446 (map!4117 rules!4538 lambda!71246)))))

(declare-fun bs!407328 () Bool)

(assert (= bs!407328 d!557756))

(declare-fun m!2249669 () Bool)

(assert (=> bs!407328 m!2249669))

(declare-fun m!2249671 () Bool)

(assert (=> bs!407328 m!2249671))

(assert (=> bs!407328 m!2249671))

(declare-fun m!2249673 () Bool)

(assert (=> bs!407328 m!2249673))

(assert (=> b!1820302 d!557756))

(declare-fun b!1820734 () Bool)

(declare-fun e!1163460 () Bool)

(declare-fun e!1163457 () Bool)

(assert (=> b!1820734 (= e!1163460 e!1163457)))

(declare-fun c!297155 () Bool)

(declare-fun isEmpty!12605 (List!20005) Bool)

(declare-fun tail!2701 (List!20005) List!20005)

(assert (=> b!1820734 (= c!297155 (isEmpty!12605 (tail!2701 (map!4117 rules!4538 lambda!71222))))))

(declare-fun b!1820735 () Bool)

(declare-fun e!1163459 () Regex!4919)

(assert (=> b!1820735 (= e!1163459 EmptyLang!4919)))

(declare-fun b!1820736 () Bool)

(declare-fun lt!707361 () Regex!4919)

(declare-fun head!4242 (List!20005) Regex!4919)

(assert (=> b!1820736 (= e!1163457 (= lt!707361 (head!4242 (map!4117 rules!4538 lambda!71222))))))

(declare-fun b!1820737 () Bool)

(declare-fun isUnion!111 (Regex!4919) Bool)

(assert (=> b!1820737 (= e!1163457 (isUnion!111 lt!707361))))

(declare-fun b!1820738 () Bool)

(declare-fun e!1163456 () Regex!4919)

(assert (=> b!1820738 (= e!1163456 (h!25336 (map!4117 rules!4538 lambda!71222)))))

(declare-fun b!1820739 () Bool)

(declare-fun isEmptyLang!111 (Regex!4919) Bool)

(assert (=> b!1820739 (= e!1163460 (isEmptyLang!111 lt!707361))))

(declare-fun b!1820740 () Bool)

(assert (=> b!1820740 (= e!1163459 (Union!4919 (h!25336 (map!4117 rules!4538 lambda!71222)) (generalisedUnion!446 (t!169850 (map!4117 rules!4538 lambda!71222)))))))

(declare-fun b!1820741 () Bool)

(declare-fun e!1163458 () Bool)

(assert (=> b!1820741 (= e!1163458 e!1163460)))

(declare-fun c!297154 () Bool)

(assert (=> b!1820741 (= c!297154 (isEmpty!12605 (map!4117 rules!4538 lambda!71222)))))

(declare-fun d!557760 () Bool)

(assert (=> d!557760 e!1163458))

(declare-fun res!818777 () Bool)

(assert (=> d!557760 (=> (not res!818777) (not e!1163458))))

(assert (=> d!557760 (= res!818777 (validRegex!1997 lt!707361))))

(assert (=> d!557760 (= lt!707361 e!1163456)))

(declare-fun c!297157 () Bool)

(declare-fun e!1163455 () Bool)

(assert (=> d!557760 (= c!297157 e!1163455)))

(declare-fun res!818776 () Bool)

(assert (=> d!557760 (=> (not res!818776) (not e!1163455))))

(assert (=> d!557760 (= res!818776 ((_ is Cons!19935) (map!4117 rules!4538 lambda!71222)))))

(declare-fun lambda!71249 () Int)

(declare-fun forall!4303 (List!20005 Int) Bool)

(assert (=> d!557760 (forall!4303 (map!4117 rules!4538 lambda!71222) lambda!71249)))

(assert (=> d!557760 (= (generalisedUnion!446 (map!4117 rules!4538 lambda!71222)) lt!707361)))

(declare-fun b!1820742 () Bool)

(assert (=> b!1820742 (= e!1163456 e!1163459)))

(declare-fun c!297156 () Bool)

(assert (=> b!1820742 (= c!297156 ((_ is Cons!19935) (map!4117 rules!4538 lambda!71222)))))

(declare-fun b!1820743 () Bool)

(assert (=> b!1820743 (= e!1163455 (isEmpty!12605 (t!169850 (map!4117 rules!4538 lambda!71222))))))

(assert (= (and d!557760 res!818776) b!1820743))

(assert (= (and d!557760 c!297157) b!1820738))

(assert (= (and d!557760 (not c!297157)) b!1820742))

(assert (= (and b!1820742 c!297156) b!1820740))

(assert (= (and b!1820742 (not c!297156)) b!1820735))

(assert (= (and d!557760 res!818777) b!1820741))

(assert (= (and b!1820741 c!297154) b!1820739))

(assert (= (and b!1820741 (not c!297154)) b!1820734))

(assert (= (and b!1820734 c!297155) b!1820736))

(assert (= (and b!1820734 (not c!297155)) b!1820737))

(assert (=> b!1820734 m!2249271))

(declare-fun m!2249675 () Bool)

(assert (=> b!1820734 m!2249675))

(assert (=> b!1820734 m!2249675))

(declare-fun m!2249677 () Bool)

(assert (=> b!1820734 m!2249677))

(declare-fun m!2249679 () Bool)

(assert (=> b!1820740 m!2249679))

(declare-fun m!2249681 () Bool)

(assert (=> b!1820743 m!2249681))

(assert (=> b!1820736 m!2249271))

(declare-fun m!2249683 () Bool)

(assert (=> b!1820736 m!2249683))

(declare-fun m!2249685 () Bool)

(assert (=> b!1820739 m!2249685))

(assert (=> b!1820741 m!2249271))

(declare-fun m!2249687 () Bool)

(assert (=> b!1820741 m!2249687))

(declare-fun m!2249689 () Bool)

(assert (=> b!1820737 m!2249689))

(declare-fun m!2249691 () Bool)

(assert (=> d!557760 m!2249691))

(assert (=> d!557760 m!2249271))

(declare-fun m!2249693 () Bool)

(assert (=> d!557760 m!2249693))

(assert (=> b!1820302 d!557760))

(declare-fun d!557762 () Bool)

(declare-fun lt!707364 () List!20005)

(declare-fun size!15825 (List!20005) Int)

(declare-fun size!15826 (List!20004) Int)

(assert (=> d!557762 (= (size!15825 lt!707364) (size!15826 rules!4538))))

(declare-fun e!1163463 () List!20005)

(assert (=> d!557762 (= lt!707364 e!1163463)))

(declare-fun c!297160 () Bool)

(assert (=> d!557762 (= c!297160 ((_ is Nil!19934) rules!4538))))

(assert (=> d!557762 (= (map!4117 rules!4538 lambda!71222) lt!707364)))

(declare-fun b!1820748 () Bool)

(assert (=> b!1820748 (= e!1163463 Nil!19935)))

(declare-fun b!1820749 () Bool)

(declare-fun $colon$colon!444 (List!20005 Regex!4919) List!20005)

(declare-fun dynLambda!9925 (Int Rule!6982) Regex!4919)

(assert (=> b!1820749 (= e!1163463 ($colon$colon!444 (map!4117 (t!169849 rules!4538) lambda!71222) (dynLambda!9925 lambda!71222 (h!25335 rules!4538))))))

(assert (= (and d!557762 c!297160) b!1820748))

(assert (= (and d!557762 (not c!297160)) b!1820749))

(declare-fun b_lambda!60119 () Bool)

(assert (=> (not b_lambda!60119) (not b!1820749)))

(declare-fun m!2249695 () Bool)

(assert (=> d!557762 m!2249695))

(declare-fun m!2249697 () Bool)

(assert (=> d!557762 m!2249697))

(declare-fun m!2249699 () Bool)

(assert (=> b!1820749 m!2249699))

(declare-fun m!2249701 () Bool)

(assert (=> b!1820749 m!2249701))

(assert (=> b!1820749 m!2249699))

(assert (=> b!1820749 m!2249701))

(declare-fun m!2249703 () Bool)

(assert (=> b!1820749 m!2249703))

(assert (=> b!1820302 d!557762))

(declare-fun bs!407329 () Bool)

(declare-fun d!557764 () Bool)

(assert (= bs!407329 (and d!557764 b!1820302)))

(declare-fun lambda!71254 () Int)

(assert (=> bs!407329 (= lambda!71254 lambda!71222)))

(declare-fun bs!407330 () Bool)

(assert (= bs!407330 (and d!557764 d!557756)))

(assert (=> bs!407330 (= lambda!71254 lambda!71246)))

(declare-fun bs!407331 () Bool)

(assert (= bs!407331 (and d!557764 d!557760)))

(declare-fun lambda!71255 () Int)

(assert (=> bs!407331 (= lambda!71255 lambda!71249)))

(assert (=> d!557764 (forall!4303 (map!4117 rules!4538 lambda!71254) lambda!71255)))

(declare-fun lt!707378 () Unit!34611)

(declare-fun e!1163466 () Unit!34611)

(assert (=> d!557764 (= lt!707378 e!1163466)))

(declare-fun c!297163 () Bool)

(assert (=> d!557764 (= c!297163 ((_ is Nil!19934) rules!4538))))

(assert (=> d!557764 (rulesValid!1365 thiss!28068 rules!4538)))

(declare-fun lt!707379 () Unit!34611)

(declare-fun lt!707375 () Unit!34611)

(assert (=> d!557764 (= lt!707379 lt!707375)))

(declare-fun lt!707376 () List!20003)

(assert (=> d!557764 (= (maxPrefixOneRule!1133 thiss!28068 rule!559 input!3612) (Some!4170 (tuple2!19463 (Token!6737 (apply!5383 (transformation!3591 rule!559) (seqFromList!2552 lt!707376)) rule!559 (size!15820 lt!707376) lt!707376) suffix!1667)))))

(assert (=> d!557764 (= lt!707375 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!509 thiss!28068 rules!4538 lt!707376 input!3612 suffix!1667 rule!559))))

(assert (=> d!557764 (= lt!707376 (list!8105 (charsOf!2234 token!556)))))

(assert (=> d!557764 (= (lemma!449 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!707378)))

(declare-fun b!1820754 () Bool)

(declare-fun Unit!34616 () Unit!34611)

(assert (=> b!1820754 (= e!1163466 Unit!34616)))

(declare-fun b!1820755 () Bool)

(declare-fun Unit!34617 () Unit!34611)

(assert (=> b!1820755 (= e!1163466 Unit!34617)))

(declare-fun lt!707377 () Unit!34611)

(assert (=> b!1820755 (= lt!707377 (lemma!449 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169849 rules!4538)))))

(assert (= (and d!557764 c!297163) b!1820754))

(assert (= (and d!557764 (not c!297163)) b!1820755))

(assert (=> d!557764 m!2249243))

(declare-fun m!2249705 () Bool)

(assert (=> d!557764 m!2249705))

(assert (=> d!557764 m!2249253))

(assert (=> d!557764 m!2249255))

(declare-fun m!2249707 () Bool)

(assert (=> d!557764 m!2249707))

(declare-fun m!2249709 () Bool)

(assert (=> d!557764 m!2249709))

(assert (=> d!557764 m!2249253))

(assert (=> d!557764 m!2249507))

(declare-fun m!2249711 () Bool)

(assert (=> d!557764 m!2249711))

(assert (=> d!557764 m!2249707))

(declare-fun m!2249713 () Bool)

(assert (=> d!557764 m!2249713))

(declare-fun m!2249715 () Bool)

(assert (=> d!557764 m!2249715))

(assert (=> d!557764 m!2249713))

(declare-fun m!2249717 () Bool)

(assert (=> b!1820755 m!2249717))

(assert (=> b!1820302 d!557764))

(declare-fun b!1820774 () Bool)

(declare-fun res!818797 () Bool)

(declare-fun e!1163475 () Bool)

(assert (=> b!1820774 (=> (not res!818797) (not e!1163475))))

(declare-fun lt!707391 () Option!4171)

(assert (=> b!1820774 (= res!818797 (= (value!112010 (_1!11133 (get!6170 lt!707391))) (apply!5383 (transformation!3591 (rule!5715 (_1!11133 (get!6170 lt!707391)))) (seqFromList!2552 (originalCharacters!4399 (_1!11133 (get!6170 lt!707391)))))))))

(declare-fun b!1820775 () Bool)

(declare-fun res!818793 () Bool)

(assert (=> b!1820775 (=> (not res!818793) (not e!1163475))))

(assert (=> b!1820775 (= res!818793 (= (list!8105 (charsOf!2234 (_1!11133 (get!6170 lt!707391)))) (originalCharacters!4399 (_1!11133 (get!6170 lt!707391)))))))

(declare-fun b!1820776 () Bool)

(declare-fun e!1163473 () Bool)

(assert (=> b!1820776 (= e!1163473 e!1163475)))

(declare-fun res!818796 () Bool)

(assert (=> b!1820776 (=> (not res!818796) (not e!1163475))))

(declare-fun isDefined!3500 (Option!4171) Bool)

(assert (=> b!1820776 (= res!818796 (isDefined!3500 lt!707391))))

(declare-fun b!1820777 () Bool)

(assert (=> b!1820777 (= e!1163475 (contains!3630 rules!4538 (rule!5715 (_1!11133 (get!6170 lt!707391)))))))

(declare-fun b!1820778 () Bool)

(declare-fun res!818795 () Bool)

(assert (=> b!1820778 (=> (not res!818795) (not e!1163475))))

(assert (=> b!1820778 (= res!818795 (= (++!5415 (list!8105 (charsOf!2234 (_1!11133 (get!6170 lt!707391)))) (_2!11133 (get!6170 lt!707391))) input!3612))))

(declare-fun d!557766 () Bool)

(assert (=> d!557766 e!1163473))

(declare-fun res!818792 () Bool)

(assert (=> d!557766 (=> res!818792 e!1163473)))

(assert (=> d!557766 (= res!818792 (isEmpty!12604 lt!707391))))

(declare-fun e!1163474 () Option!4171)

(assert (=> d!557766 (= lt!707391 e!1163474)))

(declare-fun c!297166 () Bool)

(assert (=> d!557766 (= c!297166 (and ((_ is Cons!19934) rules!4538) ((_ is Nil!19934) (t!169849 rules!4538))))))

(declare-fun lt!707393 () Unit!34611)

(declare-fun lt!707392 () Unit!34611)

(assert (=> d!557766 (= lt!707393 lt!707392)))

(declare-fun isPrefix!1813 (List!20003 List!20003) Bool)

(assert (=> d!557766 (isPrefix!1813 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1190 (List!20003 List!20003) Unit!34611)

(assert (=> d!557766 (= lt!707392 (lemmaIsPrefixRefl!1190 input!3612 input!3612))))

(assert (=> d!557766 (rulesValidInductive!1232 thiss!28068 rules!4538)))

(assert (=> d!557766 (= (maxPrefix!1768 thiss!28068 rules!4538 input!3612) lt!707391)))

(declare-fun b!1820779 () Bool)

(declare-fun res!818798 () Bool)

(assert (=> b!1820779 (=> (not res!818798) (not e!1163475))))

(assert (=> b!1820779 (= res!818798 (matchR!2384 (regex!3591 (rule!5715 (_1!11133 (get!6170 lt!707391)))) (list!8105 (charsOf!2234 (_1!11133 (get!6170 lt!707391))))))))

(declare-fun b!1820780 () Bool)

(declare-fun lt!707394 () Option!4171)

(declare-fun lt!707390 () Option!4171)

(assert (=> b!1820780 (= e!1163474 (ite (and ((_ is None!4170) lt!707394) ((_ is None!4170) lt!707390)) None!4170 (ite ((_ is None!4170) lt!707390) lt!707394 (ite ((_ is None!4170) lt!707394) lt!707390 (ite (>= (size!15819 (_1!11133 (v!25707 lt!707394))) (size!15819 (_1!11133 (v!25707 lt!707390)))) lt!707394 lt!707390)))))))

(declare-fun call!114306 () Option!4171)

(assert (=> b!1820780 (= lt!707394 call!114306)))

(assert (=> b!1820780 (= lt!707390 (maxPrefix!1768 thiss!28068 (t!169849 rules!4538) input!3612))))

(declare-fun b!1820781 () Bool)

(declare-fun res!818794 () Bool)

(assert (=> b!1820781 (=> (not res!818794) (not e!1163475))))

(assert (=> b!1820781 (= res!818794 (< (size!15820 (_2!11133 (get!6170 lt!707391))) (size!15820 input!3612)))))

(declare-fun b!1820782 () Bool)

(assert (=> b!1820782 (= e!1163474 call!114306)))

(declare-fun bm!114301 () Bool)

(assert (=> bm!114301 (= call!114306 (maxPrefixOneRule!1133 thiss!28068 (h!25335 rules!4538) input!3612))))

(assert (= (and d!557766 c!297166) b!1820782))

(assert (= (and d!557766 (not c!297166)) b!1820780))

(assert (= (or b!1820782 b!1820780) bm!114301))

(assert (= (and d!557766 (not res!818792)) b!1820776))

(assert (= (and b!1820776 res!818796) b!1820775))

(assert (= (and b!1820775 res!818793) b!1820781))

(assert (= (and b!1820781 res!818794) b!1820778))

(assert (= (and b!1820778 res!818795) b!1820774))

(assert (= (and b!1820774 res!818797) b!1820779))

(assert (= (and b!1820779 res!818798) b!1820777))

(declare-fun m!2249719 () Bool)

(assert (=> b!1820775 m!2249719))

(declare-fun m!2249721 () Bool)

(assert (=> b!1820775 m!2249721))

(assert (=> b!1820775 m!2249721))

(declare-fun m!2249723 () Bool)

(assert (=> b!1820775 m!2249723))

(declare-fun m!2249725 () Bool)

(assert (=> b!1820776 m!2249725))

(assert (=> b!1820774 m!2249719))

(declare-fun m!2249727 () Bool)

(assert (=> b!1820774 m!2249727))

(assert (=> b!1820774 m!2249727))

(declare-fun m!2249729 () Bool)

(assert (=> b!1820774 m!2249729))

(declare-fun m!2249731 () Bool)

(assert (=> bm!114301 m!2249731))

(declare-fun m!2249733 () Bool)

(assert (=> d!557766 m!2249733))

(declare-fun m!2249735 () Bool)

(assert (=> d!557766 m!2249735))

(declare-fun m!2249737 () Bool)

(assert (=> d!557766 m!2249737))

(assert (=> d!557766 m!2249283))

(assert (=> b!1820777 m!2249719))

(declare-fun m!2249739 () Bool)

(assert (=> b!1820777 m!2249739))

(declare-fun m!2249741 () Bool)

(assert (=> b!1820780 m!2249741))

(assert (=> b!1820778 m!2249719))

(assert (=> b!1820778 m!2249721))

(assert (=> b!1820778 m!2249721))

(assert (=> b!1820778 m!2249723))

(assert (=> b!1820778 m!2249723))

(declare-fun m!2249743 () Bool)

(assert (=> b!1820778 m!2249743))

(assert (=> b!1820779 m!2249719))

(assert (=> b!1820779 m!2249721))

(assert (=> b!1820779 m!2249721))

(assert (=> b!1820779 m!2249723))

(assert (=> b!1820779 m!2249723))

(declare-fun m!2249745 () Bool)

(assert (=> b!1820779 m!2249745))

(assert (=> b!1820781 m!2249719))

(declare-fun m!2249747 () Bool)

(assert (=> b!1820781 m!2249747))

(assert (=> b!1820781 m!2249595))

(assert (=> b!1820292 d!557766))

(declare-fun lt!707397 () Bool)

(declare-fun d!557768 () Bool)

(declare-fun content!2927 (List!20005) (InoxSet Regex!4919))

(assert (=> d!557768 (= lt!707397 (select (content!2927 (map!4117 rules!4538 lambda!71222)) (regex!3591 rule!559)))))

(declare-fun e!1163480 () Bool)

(assert (=> d!557768 (= lt!707397 e!1163480)))

(declare-fun res!818803 () Bool)

(assert (=> d!557768 (=> (not res!818803) (not e!1163480))))

(assert (=> d!557768 (= res!818803 ((_ is Cons!19935) (map!4117 rules!4538 lambda!71222)))))

(assert (=> d!557768 (= (contains!3631 (map!4117 rules!4538 lambda!71222) (regex!3591 rule!559)) lt!707397)))

(declare-fun b!1820787 () Bool)

(declare-fun e!1163481 () Bool)

(assert (=> b!1820787 (= e!1163480 e!1163481)))

(declare-fun res!818804 () Bool)

(assert (=> b!1820787 (=> res!818804 e!1163481)))

(assert (=> b!1820787 (= res!818804 (= (h!25336 (map!4117 rules!4538 lambda!71222)) (regex!3591 rule!559)))))

(declare-fun b!1820788 () Bool)

(assert (=> b!1820788 (= e!1163481 (contains!3631 (t!169850 (map!4117 rules!4538 lambda!71222)) (regex!3591 rule!559)))))

(assert (= (and d!557768 res!818803) b!1820787))

(assert (= (and b!1820787 (not res!818804)) b!1820788))

(assert (=> d!557768 m!2249271))

(declare-fun m!2249749 () Bool)

(assert (=> d!557768 m!2249749))

(declare-fun m!2249751 () Bool)

(assert (=> d!557768 m!2249751))

(declare-fun m!2249753 () Bool)

(assert (=> b!1820788 m!2249753))

(assert (=> b!1820303 d!557768))

(assert (=> b!1820303 d!557762))

(declare-fun bs!407332 () Bool)

(declare-fun d!557770 () Bool)

(assert (= bs!407332 (and d!557770 b!1820302)))

(declare-fun lambda!71258 () Int)

(assert (=> bs!407332 (= lambda!71258 lambda!71222)))

(declare-fun bs!407333 () Bool)

(assert (= bs!407333 (and d!557770 d!557756)))

(assert (=> bs!407333 (= lambda!71258 lambda!71246)))

(declare-fun bs!407334 () Bool)

(assert (= bs!407334 (and d!557770 d!557764)))

(assert (=> bs!407334 (= lambda!71258 lambda!71254)))

(assert (=> d!557770 (contains!3631 (map!4117 rules!4538 lambda!71258) (regex!3591 rule!559))))

(declare-fun lt!707409 () Unit!34611)

(declare-fun e!1163484 () Unit!34611)

(assert (=> d!557770 (= lt!707409 e!1163484)))

(declare-fun c!297169 () Bool)

(assert (=> d!557770 (= c!297169 (and ((_ is Cons!19934) rules!4538) (not (= (h!25335 rules!4538) rule!559))))))

(assert (=> d!557770 (rulesValid!1365 thiss!28068 rules!4538)))

(declare-fun lt!707408 () Unit!34611)

(assert (=> d!557770 (= lt!707408 (lemma!449 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun lt!707410 () Unit!34611)

(declare-fun lt!707412 () Unit!34611)

(assert (=> d!557770 (= lt!707410 lt!707412)))

(declare-fun lt!707411 () List!20003)

(assert (=> d!557770 (= (maxPrefixOneRule!1133 thiss!28068 rule!559 input!3612) (Some!4170 (tuple2!19463 (Token!6737 (apply!5383 (transformation!3591 rule!559) (seqFromList!2552 lt!707411)) rule!559 (size!15820 lt!707411) lt!707411) suffix!1667)))))

(assert (=> d!557770 (= lt!707412 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!509 thiss!28068 rules!4538 lt!707411 input!3612 suffix!1667 rule!559))))

(assert (=> d!557770 (= lt!707411 (list!8105 (charsOf!2234 token!556)))))

(assert (=> d!557770 (= (lemma!450 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!707409)))

(declare-fun b!1820793 () Bool)

(assert (=> b!1820793 (= e!1163484 (lemma!450 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169849 rules!4538)))))

(declare-fun b!1820794 () Bool)

(declare-fun Unit!34618 () Unit!34611)

(assert (=> b!1820794 (= e!1163484 Unit!34618)))

(assert (= (and d!557770 c!297169) b!1820793))

(assert (= (and d!557770 (not c!297169)) b!1820794))

(declare-fun m!2249755 () Bool)

(assert (=> d!557770 m!2249755))

(assert (=> d!557770 m!2249253))

(declare-fun m!2249757 () Bool)

(assert (=> d!557770 m!2249757))

(declare-fun m!2249759 () Bool)

(assert (=> d!557770 m!2249759))

(assert (=> d!557770 m!2249275))

(assert (=> d!557770 m!2249755))

(declare-fun m!2249761 () Bool)

(assert (=> d!557770 m!2249761))

(assert (=> d!557770 m!2249759))

(declare-fun m!2249763 () Bool)

(assert (=> d!557770 m!2249763))

(assert (=> d!557770 m!2249507))

(declare-fun m!2249765 () Bool)

(assert (=> d!557770 m!2249765))

(assert (=> d!557770 m!2249243))

(assert (=> d!557770 m!2249253))

(assert (=> d!557770 m!2249255))

(declare-fun m!2249767 () Bool)

(assert (=> b!1820793 m!2249767))

(assert (=> b!1820303 d!557770))

(declare-fun b!1820806 () Bool)

(declare-fun e!1163487 () Bool)

(declare-fun tp!514564 () Bool)

(declare-fun tp!514565 () Bool)

(assert (=> b!1820806 (= e!1163487 (and tp!514564 tp!514565))))

(declare-fun b!1820805 () Bool)

(assert (=> b!1820805 (= e!1163487 tp_is_empty!8073)))

(declare-fun b!1820808 () Bool)

(declare-fun tp!514566 () Bool)

(declare-fun tp!514563 () Bool)

(assert (=> b!1820808 (= e!1163487 (and tp!514566 tp!514563))))

(assert (=> b!1820304 (= tp!514494 e!1163487)))

(declare-fun b!1820807 () Bool)

(declare-fun tp!514567 () Bool)

(assert (=> b!1820807 (= e!1163487 tp!514567)))

(assert (= (and b!1820304 ((_ is ElementMatch!4919) (regex!3591 rule!559))) b!1820805))

(assert (= (and b!1820304 ((_ is Concat!8601) (regex!3591 rule!559))) b!1820806))

(assert (= (and b!1820304 ((_ is Star!4919) (regex!3591 rule!559))) b!1820807))

(assert (= (and b!1820304 ((_ is Union!4919) (regex!3591 rule!559))) b!1820808))

(declare-fun b!1820813 () Bool)

(declare-fun e!1163490 () Bool)

(declare-fun tp!514570 () Bool)

(assert (=> b!1820813 (= e!1163490 (and tp_is_empty!8073 tp!514570))))

(assert (=> b!1820299 (= tp!514499 e!1163490)))

(assert (= (and b!1820299 ((_ is Cons!19933) (t!169848 suffix!1667))) b!1820813))

(declare-fun b!1820824 () Bool)

(declare-fun b_free!50495 () Bool)

(declare-fun b_next!51199 () Bool)

(assert (=> b!1820824 (= b_free!50495 (not b_next!51199))))

(declare-fun tb!111265 () Bool)

(declare-fun t!169880 () Bool)

(assert (=> (and b!1820824 (= (toValue!5126 (transformation!3591 (h!25335 (t!169849 rules!4538)))) (toValue!5126 (transformation!3591 rule!559))) t!169880) tb!111265))

(declare-fun result!133720 () Bool)

(assert (= result!133720 result!133696))

(assert (=> d!557750 t!169880))

(declare-fun tp!514582 () Bool)

(declare-fun b_and!141181 () Bool)

(assert (=> b!1820824 (= tp!514582 (and (=> t!169880 result!133720) b_and!141181))))

(declare-fun b_free!50497 () Bool)

(declare-fun b_next!51201 () Bool)

(assert (=> b!1820824 (= b_free!50497 (not b_next!51201))))

(declare-fun tb!111267 () Bool)

(declare-fun t!169882 () Bool)

(assert (=> (and b!1820824 (= (toChars!4985 (transformation!3591 (h!25335 (t!169849 rules!4538)))) (toChars!4985 (transformation!3591 (rule!5715 token!556)))) t!169882) tb!111267))

(declare-fun result!133722 () Bool)

(assert (= result!133722 result!133680))

(assert (=> b!1820529 t!169882))

(assert (=> d!557722 t!169882))

(declare-fun tp!514579 () Bool)

(declare-fun b_and!141183 () Bool)

(assert (=> b!1820824 (= tp!514579 (and (=> t!169882 result!133722) b_and!141183))))

(declare-fun e!1163499 () Bool)

(assert (=> b!1820824 (= e!1163499 (and tp!514582 tp!514579))))

(declare-fun e!1163501 () Bool)

(declare-fun b!1820823 () Bool)

(declare-fun tp!514581 () Bool)

(assert (=> b!1820823 (= e!1163501 (and tp!514581 (inv!25965 (tag!4005 (h!25335 (t!169849 rules!4538)))) (inv!25968 (transformation!3591 (h!25335 (t!169849 rules!4538)))) e!1163499))))

(declare-fun b!1820822 () Bool)

(declare-fun e!1163502 () Bool)

(declare-fun tp!514580 () Bool)

(assert (=> b!1820822 (= e!1163502 (and e!1163501 tp!514580))))

(assert (=> b!1820290 (= tp!514501 e!1163502)))

(assert (= b!1820823 b!1820824))

(assert (= b!1820822 b!1820823))

(assert (= (and b!1820290 ((_ is Cons!19934) (t!169849 rules!4538))) b!1820822))

(declare-fun m!2249769 () Bool)

(assert (=> b!1820823 m!2249769))

(declare-fun m!2249771 () Bool)

(assert (=> b!1820823 m!2249771))

(declare-fun b!1820825 () Bool)

(declare-fun e!1163503 () Bool)

(declare-fun tp!514583 () Bool)

(assert (=> b!1820825 (= e!1163503 (and tp_is_empty!8073 tp!514583))))

(assert (=> b!1820306 (= tp!514504 e!1163503)))

(assert (= (and b!1820306 ((_ is Cons!19933) (t!169848 input!3612))) b!1820825))

(declare-fun b!1820826 () Bool)

(declare-fun e!1163504 () Bool)

(declare-fun tp!514584 () Bool)

(assert (=> b!1820826 (= e!1163504 (and tp_is_empty!8073 tp!514584))))

(assert (=> b!1820291 (= tp!514497 e!1163504)))

(assert (= (and b!1820291 ((_ is Cons!19933) (originalCharacters!4399 token!556))) b!1820826))

(declare-fun b!1820828 () Bool)

(declare-fun e!1163505 () Bool)

(declare-fun tp!514586 () Bool)

(declare-fun tp!514587 () Bool)

(assert (=> b!1820828 (= e!1163505 (and tp!514586 tp!514587))))

(declare-fun b!1820827 () Bool)

(assert (=> b!1820827 (= e!1163505 tp_is_empty!8073)))

(declare-fun b!1820830 () Bool)

(declare-fun tp!514588 () Bool)

(declare-fun tp!514585 () Bool)

(assert (=> b!1820830 (= e!1163505 (and tp!514588 tp!514585))))

(assert (=> b!1820286 (= tp!514492 e!1163505)))

(declare-fun b!1820829 () Bool)

(declare-fun tp!514589 () Bool)

(assert (=> b!1820829 (= e!1163505 tp!514589)))

(assert (= (and b!1820286 ((_ is ElementMatch!4919) (regex!3591 (rule!5715 token!556)))) b!1820827))

(assert (= (and b!1820286 ((_ is Concat!8601) (regex!3591 (rule!5715 token!556)))) b!1820828))

(assert (= (and b!1820286 ((_ is Star!4919) (regex!3591 (rule!5715 token!556)))) b!1820829))

(assert (= (and b!1820286 ((_ is Union!4919) (regex!3591 (rule!5715 token!556)))) b!1820830))

(declare-fun b!1820832 () Bool)

(declare-fun e!1163506 () Bool)

(declare-fun tp!514591 () Bool)

(declare-fun tp!514592 () Bool)

(assert (=> b!1820832 (= e!1163506 (and tp!514591 tp!514592))))

(declare-fun b!1820831 () Bool)

(assert (=> b!1820831 (= e!1163506 tp_is_empty!8073)))

(declare-fun b!1820834 () Bool)

(declare-fun tp!514593 () Bool)

(declare-fun tp!514590 () Bool)

(assert (=> b!1820834 (= e!1163506 (and tp!514593 tp!514590))))

(assert (=> b!1820297 (= tp!514498 e!1163506)))

(declare-fun b!1820833 () Bool)

(declare-fun tp!514594 () Bool)

(assert (=> b!1820833 (= e!1163506 tp!514594)))

(assert (= (and b!1820297 ((_ is ElementMatch!4919) (regex!3591 (h!25335 rules!4538)))) b!1820831))

(assert (= (and b!1820297 ((_ is Concat!8601) (regex!3591 (h!25335 rules!4538)))) b!1820832))

(assert (= (and b!1820297 ((_ is Star!4919) (regex!3591 (h!25335 rules!4538)))) b!1820833))

(assert (= (and b!1820297 ((_ is Union!4919) (regex!3591 (h!25335 rules!4538)))) b!1820834))

(declare-fun b_lambda!60121 () Bool)

(assert (= b_lambda!60105 (or (and b!1820295 b_free!50481 (= (toChars!4985 (transformation!3591 rule!559)) (toChars!4985 (transformation!3591 (rule!5715 token!556))))) (and b!1820296 b_free!50485) (and b!1820294 b_free!50489 (= (toChars!4985 (transformation!3591 (h!25335 rules!4538))) (toChars!4985 (transformation!3591 (rule!5715 token!556))))) (and b!1820824 b_free!50497 (= (toChars!4985 (transformation!3591 (h!25335 (t!169849 rules!4538)))) (toChars!4985 (transformation!3591 (rule!5715 token!556))))) b_lambda!60121)))

(declare-fun b_lambda!60123 () Bool)

(assert (= b_lambda!60119 (or b!1820302 b_lambda!60123)))

(declare-fun bs!407335 () Bool)

(declare-fun d!557772 () Bool)

(assert (= bs!407335 (and d!557772 b!1820302)))

(assert (=> bs!407335 (= (dynLambda!9925 lambda!71222 (h!25335 rules!4538)) (regex!3591 (h!25335 rules!4538)))))

(assert (=> b!1820749 d!557772))

(declare-fun b_lambda!60125 () Bool)

(assert (= b_lambda!60103 (or (and b!1820295 b_free!50481 (= (toChars!4985 (transformation!3591 rule!559)) (toChars!4985 (transformation!3591 (rule!5715 token!556))))) (and b!1820296 b_free!50485) (and b!1820294 b_free!50489 (= (toChars!4985 (transformation!3591 (h!25335 rules!4538))) (toChars!4985 (transformation!3591 (rule!5715 token!556))))) (and b!1820824 b_free!50497 (= (toChars!4985 (transformation!3591 (h!25335 (t!169849 rules!4538)))) (toChars!4985 (transformation!3591 (rule!5715 token!556))))) b_lambda!60125)))

(declare-fun b_lambda!60127 () Bool)

(assert (= b_lambda!60109 (or (and b!1820295 b_free!50479) (and b!1820296 b_free!50483 (= (toValue!5126 (transformation!3591 (rule!5715 token!556))) (toValue!5126 (transformation!3591 rule!559)))) (and b!1820294 b_free!50487 (= (toValue!5126 (transformation!3591 (h!25335 rules!4538))) (toValue!5126 (transformation!3591 rule!559)))) (and b!1820824 b_free!50495 (= (toValue!5126 (transformation!3591 (h!25335 (t!169849 rules!4538)))) (toValue!5126 (transformation!3591 rule!559)))) b_lambda!60127)))

(check-sat (not b!1820778) (not b_lambda!60123) (not b!1820621) (not b_next!51187) (not b!1820755) (not b!1820623) (not b!1820561) (not b!1820615) (not d!557718) (not d!557720) (not d!557726) (not b_next!51189) (not d!557760) (not b!1820749) (not d!557734) (not b!1820741) (not tb!111243) (not b_next!51201) (not d!557762) (not b!1820669) (not d!557712) b_and!141161 (not b!1820554) (not b!1820806) (not d!557764) (not d!557770) (not b!1820550) (not tb!111255) (not d!557766) (not b_lambda!60125) (not b!1820616) (not b!1820702) (not b!1820779) (not b!1820822) (not d!557768) (not b!1820807) (not b!1820740) (not b!1820370) (not b!1820535) (not b_lambda!60121) (not b!1820825) b_and!141159 (not d!557724) (not d!557666) (not b!1820832) (not d!557716) (not d!557736) (not b!1820828) (not d!557660) (not b!1820734) (not b_next!51185) (not b_next!51191) (not b!1820530) (not b!1820622) (not b!1820793) (not b!1820777) (not b!1820739) (not b!1820829) (not b!1820833) (not b!1820823) b_and!141175 (not b!1820620) (not b_next!51199) (not b!1820834) (not b!1820560) (not b!1820372) (not b!1820808) (not b!1820385) (not b_lambda!60127) b_and!141163 (not d!557756) (not b!1820549) (not d!557730) (not b!1820367) (not bm!114292) (not b!1820619) (not b!1820813) (not b!1820774) (not b!1820538) (not b!1820830) b_and!141171 (not b!1820781) tp_is_empty!8073 (not d!557722) b_and!141181 (not b!1820780) (not b!1820743) (not b!1820522) (not b!1820539) (not b!1820375) (not b!1820776) (not b!1820826) b_and!141183 (not b!1820775) (not b!1820736) (not b!1820737) (not b!1820700) (not b!1820788) (not d!557664) (not d!557708) (not b!1820704) b_and!141173 (not b!1820618) (not bm!114301) (not b_next!51193) (not d!557668) (not b!1820529) (not b!1820374) (not b!1820378) (not b!1820521) (not b_next!51183) (not d!557748))
(check-sat (not b_next!51189) (not b_next!51201) b_and!141161 (not b_next!51187) b_and!141159 (not b_next!51185) (not b_next!51191) b_and!141163 b_and!141171 b_and!141181 b_and!141183 b_and!141173 (not b_next!51193) (not b_next!51183) b_and!141175 (not b_next!51199))
