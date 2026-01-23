; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522944 () Bool)

(assert start!522944)

(declare-fun b!4960245 () Bool)

(declare-fun b_free!132523 () Bool)

(declare-fun b_next!133313 () Bool)

(assert (=> b!4960245 (= b_free!132523 (not b_next!133313))))

(declare-fun tp!1391260 () Bool)

(declare-fun b_and!347375 () Bool)

(assert (=> b!4960245 (= tp!1391260 b_and!347375)))

(declare-fun b_free!132525 () Bool)

(declare-fun b_next!133315 () Bool)

(assert (=> b!4960245 (= b_free!132525 (not b_next!133315))))

(declare-fun tp!1391258 () Bool)

(declare-fun b_and!347377 () Bool)

(assert (=> b!4960245 (= tp!1391258 b_and!347377)))

(declare-fun res!2117032 () Bool)

(declare-fun e!3100199 () Bool)

(assert (=> start!522944 (=> (not res!2117032) (not e!3100199))))

(declare-datatypes ((LexerInterface!7957 0))(
  ( (LexerInterfaceExt!7954 (__x!34643 Int)) (Lexer!7955) )
))
(declare-fun thiss!15247 () LexerInterface!7957)

(assert (=> start!522944 (= res!2117032 (is-Lexer!7955 thiss!15247))))

(assert (=> start!522944 e!3100199))

(assert (=> start!522944 true))

(declare-fun e!3100201 () Bool)

(assert (=> start!522944 e!3100201))

(declare-datatypes ((C!27446 0))(
  ( (C!27447 (val!23089 Int)) )
))
(declare-datatypes ((List!57481 0))(
  ( (Nil!57357) (Cons!57357 (h!63805 C!27446) (t!368047 List!57481)) )
))
(declare-datatypes ((IArray!30295 0))(
  ( (IArray!30296 (innerList!15205 List!57481)) )
))
(declare-datatypes ((Conc!15117 0))(
  ( (Node!15117 (left!41826 Conc!15117) (right!42156 Conc!15117) (csize!30464 Int) (cheight!15328 Int)) (Leaf!25125 (xs!18443 IArray!30295) (csize!30465 Int)) (Empty!15117) )
))
(declare-datatypes ((BalanceConc!29664 0))(
  ( (BalanceConc!29665 (c!846494 Conc!15117)) )
))
(declare-fun input!1342 () BalanceConc!29664)

(declare-fun e!3100207 () Bool)

(declare-fun inv!74891 (BalanceConc!29664) Bool)

(assert (=> start!522944 (and (inv!74891 input!1342) e!3100207)))

(declare-fun totalInput!464 () BalanceConc!29664)

(declare-fun e!3100208 () Bool)

(assert (=> start!522944 (and (inv!74891 totalInput!464) e!3100208)))

(declare-fun b!4960237 () Bool)

(declare-fun e!3100205 () Bool)

(declare-datatypes ((List!57482 0))(
  ( (Nil!57358) (Cons!57358 (h!63806 (_ BitVec 16)) (t!368048 List!57482)) )
))
(declare-datatypes ((TokenValue!8675 0))(
  ( (FloatLiteralValue!17350 (text!61170 List!57482)) (TokenValueExt!8674 (__x!34644 Int)) (Broken!43375 (value!267820 List!57482)) (Object!8798) (End!8675) (Def!8675) (Underscore!8675) (Match!8675) (Else!8675) (Error!8675) (Case!8675) (If!8675) (Extends!8675) (Abstract!8675) (Class!8675) (Val!8675) (DelimiterValue!17350 (del!8735 List!57482)) (KeywordValue!8681 (value!267821 List!57482)) (CommentValue!17350 (value!267822 List!57482)) (WhitespaceValue!17350 (value!267823 List!57482)) (IndentationValue!8675 (value!267824 List!57482)) (String!65250) (Int32!8675) (Broken!43376 (value!267825 List!57482)) (Boolean!8676) (Unit!148251) (OperatorValue!8678 (op!8735 List!57482)) (IdentifierValue!17350 (value!267826 List!57482)) (IdentifierValue!17351 (value!267827 List!57482)) (WhitespaceValue!17351 (value!267828 List!57482)) (True!17350) (False!17350) (Broken!43377 (value!267829 List!57482)) (Broken!43378 (value!267830 List!57482)) (True!17351) (RightBrace!8675) (RightBracket!8675) (Colon!8675) (Null!8675) (Comma!8675) (LeftBracket!8675) (False!17351) (LeftBrace!8675) (ImaginaryLiteralValue!8675 (text!61171 List!57482)) (StringLiteralValue!26025 (value!267831 List!57482)) (EOFValue!8675 (value!267832 List!57482)) (IdentValue!8675 (value!267833 List!57482)) (DelimiterValue!17351 (value!267834 List!57482)) (DedentValue!8675 (value!267835 List!57482)) (NewLineValue!8675 (value!267836 List!57482)) (IntegerValue!26025 (value!267837 (_ BitVec 32)) (text!61172 List!57482)) (IntegerValue!26026 (value!267838 Int) (text!61173 List!57482)) (Times!8675) (Or!8675) (Equal!8675) (Minus!8675) (Broken!43379 (value!267839 List!57482)) (And!8675) (Div!8675) (LessEqual!8675) (Mod!8675) (Concat!22273) (Not!8675) (Plus!8675) (SpaceValue!8675 (value!267840 List!57482)) (IntegerValue!26027 (value!267841 Int) (text!61174 List!57482)) (StringLiteralValue!26026 (text!61175 List!57482)) (FloatLiteralValue!17351 (text!61176 List!57482)) (BytesLiteralValue!8675 (value!267842 List!57482)) (CommentValue!17351 (value!267843 List!57482)) (StringLiteralValue!26027 (value!267844 List!57482)) (ErrorTokenValue!8675 (msg!8736 List!57482)) )
))
(declare-datatypes ((Regex!13598 0))(
  ( (ElementMatch!13598 (c!846495 C!27446)) (Concat!22274 (regOne!27708 Regex!13598) (regTwo!27708 Regex!13598)) (EmptyExpr!13598) (Star!13598 (reg!13927 Regex!13598)) (EmptyLang!13598) (Union!13598 (regOne!27709 Regex!13598) (regTwo!27709 Regex!13598)) )
))
(declare-datatypes ((String!65251 0))(
  ( (String!65252 (value!267845 String)) )
))
(declare-datatypes ((TokenValueInjection!16658 0))(
  ( (TokenValueInjection!16659 (toValue!11316 Int) (toChars!11175 Int)) )
))
(declare-datatypes ((Rule!16530 0))(
  ( (Rule!16531 (regex!8365 Regex!13598) (tag!9229 String!65251) (isSeparator!8365 Bool) (transformation!8365 TokenValueInjection!16658)) )
))
(declare-datatypes ((Token!15230 0))(
  ( (Token!15231 (value!267846 TokenValue!8675) (rule!11593 Rule!16530) (size!38011 Int) (originalCharacters!8646 List!57481)) )
))
(declare-datatypes ((tuple2!62024 0))(
  ( (tuple2!62025 (_1!34315 Token!15230) (_2!34315 BalanceConc!29664)) )
))
(declare-fun lt!2047889 () tuple2!62024)

(declare-datatypes ((tuple2!62026 0))(
  ( (tuple2!62027 (_1!34316 Token!15230) (_2!34316 List!57481)) )
))
(declare-fun lt!2047891 () tuple2!62026)

(declare-fun list!18318 (BalanceConc!29664) List!57481)

(assert (=> b!4960237 (= e!3100205 (not (= (list!18318 (_2!34315 lt!2047889)) (_2!34316 lt!2047891))))))

(declare-fun b!4960238 () Bool)

(declare-fun e!3100196 () Bool)

(declare-fun e!3100197 () Bool)

(assert (=> b!4960238 (= e!3100196 e!3100197)))

(declare-fun res!2117037 () Bool)

(assert (=> b!4960238 (=> res!2117037 e!3100197)))

(declare-datatypes ((Option!14399 0))(
  ( (None!14398) (Some!14398 (v!50383 tuple2!62024)) )
))
(declare-fun lt!2047885 () Option!14399)

(declare-fun lt!2047893 () Option!14399)

(assert (=> b!4960238 (= res!2117037 (or (and (is-None!14398 lt!2047885) (is-None!14398 lt!2047893)) (is-None!14398 lt!2047893) (is-None!14398 lt!2047885) (>= (size!38011 (_1!34315 (v!50383 lt!2047885))) (size!38011 (_1!34315 (v!50383 lt!2047893))))))))

(declare-datatypes ((List!57483 0))(
  ( (Nil!57359) (Cons!57359 (h!63807 Rule!16530) (t!368049 List!57483)) )
))
(declare-fun rulesArg!259 () List!57483)

(declare-fun maxPrefixZipperSequenceV2!696 (LexerInterface!7957 List!57483 BalanceConc!29664 BalanceConc!29664) Option!14399)

(assert (=> b!4960238 (= lt!2047893 (maxPrefixZipperSequenceV2!696 thiss!15247 (t!368049 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!349 (LexerInterface!7957 Rule!16530 BalanceConc!29664 BalanceConc!29664) Option!14399)

(assert (=> b!4960238 (= lt!2047885 (maxPrefixOneRuleZipperSequenceV2!349 thiss!15247 (h!63807 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4960239 () Bool)

(declare-fun e!3100203 () Bool)

(declare-fun tp!1391257 () Bool)

(assert (=> b!4960239 (= e!3100201 (and e!3100203 tp!1391257))))

(declare-fun b!4960240 () Bool)

(declare-fun e!3100209 () Bool)

(declare-fun e!3100204 () Bool)

(assert (=> b!4960240 (= e!3100209 e!3100204)))

(declare-fun res!2117039 () Bool)

(assert (=> b!4960240 (=> res!2117039 e!3100204)))

(declare-fun e!3100198 () Bool)

(assert (=> b!4960240 (= res!2117039 e!3100198)))

(declare-fun res!2117033 () Bool)

(assert (=> b!4960240 (=> (not res!2117033) (not e!3100198))))

(declare-fun lt!2047887 () Bool)

(assert (=> b!4960240 (= res!2117033 (not lt!2047887))))

(declare-fun lt!2047892 () Bool)

(assert (=> b!4960240 (= lt!2047887 (not lt!2047892))))

(declare-fun b!4960241 () Bool)

(declare-fun res!2117034 () Bool)

(assert (=> b!4960241 (=> (not res!2117034) (not e!3100199))))

(declare-fun rulesValidInductive!3268 (LexerInterface!7957 List!57483) Bool)

(assert (=> b!4960241 (= res!2117034 (rulesValidInductive!3268 thiss!15247 rulesArg!259))))

(declare-fun lt!2047890 () List!57481)

(declare-fun b!4960242 () Bool)

(declare-datatypes ((Option!14400 0))(
  ( (None!14399) (Some!14399 (v!50384 tuple2!62026)) )
))
(declare-fun isDefined!11314 (Option!14400) Bool)

(declare-fun maxPrefix!4644 (LexerInterface!7957 List!57483 List!57481) Option!14400)

(assert (=> b!4960242 (= e!3100204 (isDefined!11314 (maxPrefix!4644 thiss!15247 rulesArg!259 lt!2047890)))))

(declare-fun b!4960243 () Bool)

(declare-fun tp!1391259 () Bool)

(declare-fun inv!74892 (Conc!15117) Bool)

(assert (=> b!4960243 (= e!3100207 (and (inv!74892 (c!846494 input!1342)) tp!1391259))))

(declare-fun b!4960244 () Bool)

(declare-fun res!2117031 () Bool)

(assert (=> b!4960244 (=> res!2117031 e!3100204)))

(assert (=> b!4960244 (= res!2117031 lt!2047887)))

(declare-fun e!3100200 () Bool)

(assert (=> b!4960245 (= e!3100200 (and tp!1391260 tp!1391258))))

(declare-fun b!4960246 () Bool)

(assert (=> b!4960246 (= e!3100198 e!3100205)))

(declare-fun res!2117036 () Bool)

(assert (=> b!4960246 (=> res!2117036 e!3100205)))

(assert (=> b!4960246 (= res!2117036 (not (= (_1!34315 lt!2047889) (_1!34316 lt!2047891))))))

(declare-fun lt!2047888 () Option!14400)

(declare-fun get!19882 (Option!14400) tuple2!62026)

(assert (=> b!4960246 (= lt!2047891 (get!19882 lt!2047888))))

(declare-fun get!19883 (Option!14399) tuple2!62024)

(assert (=> b!4960246 (= lt!2047889 (get!19883 lt!2047893))))

(declare-fun b!4960247 () Bool)

(declare-fun e!3100206 () Bool)

(assert (=> b!4960247 (= e!3100199 e!3100206)))

(declare-fun res!2117030 () Bool)

(assert (=> b!4960247 (=> (not res!2117030) (not e!3100206))))

(declare-fun isSuffix!1164 (List!57481 List!57481) Bool)

(assert (=> b!4960247 (= res!2117030 (isSuffix!1164 lt!2047890 (list!18318 totalInput!464)))))

(assert (=> b!4960247 (= lt!2047890 (list!18318 input!1342))))

(declare-fun b!4960248 () Bool)

(assert (=> b!4960248 (= e!3100197 e!3100209)))

(declare-fun res!2117029 () Bool)

(assert (=> b!4960248 (=> res!2117029 e!3100209)))

(assert (=> b!4960248 (= res!2117029 (not (= lt!2047892 (isDefined!11314 lt!2047888))))))

(declare-fun isDefined!11315 (Option!14399) Bool)

(assert (=> b!4960248 (= lt!2047892 (isDefined!11315 lt!2047893))))

(declare-fun maxPrefixZipper!762 (LexerInterface!7957 List!57483 List!57481) Option!14400)

(assert (=> b!4960248 (= lt!2047888 (maxPrefixZipper!762 thiss!15247 rulesArg!259 lt!2047890))))

(declare-fun b!4960249 () Bool)

(declare-fun res!2117035 () Bool)

(assert (=> b!4960249 (=> (not res!2117035) (not e!3100199))))

(declare-fun isEmpty!30853 (List!57483) Bool)

(assert (=> b!4960249 (= res!2117035 (not (isEmpty!30853 rulesArg!259)))))

(declare-fun b!4960250 () Bool)

(assert (=> b!4960250 (= e!3100206 (not e!3100196))))

(declare-fun res!2117038 () Bool)

(assert (=> b!4960250 (=> res!2117038 e!3100196)))

(assert (=> b!4960250 (= res!2117038 (or (and (is-Cons!57359 rulesArg!259) (is-Nil!57359 (t!368049 rulesArg!259))) (not (is-Cons!57359 rulesArg!259))))))

(declare-fun isPrefix!5218 (List!57481 List!57481) Bool)

(assert (=> b!4960250 (isPrefix!5218 lt!2047890 lt!2047890)))

(declare-datatypes ((Unit!148252 0))(
  ( (Unit!148253) )
))
(declare-fun lt!2047886 () Unit!148252)

(declare-fun lemmaIsPrefixRefl!3542 (List!57481 List!57481) Unit!148252)

(assert (=> b!4960250 (= lt!2047886 (lemmaIsPrefixRefl!3542 lt!2047890 lt!2047890))))

(declare-fun tp!1391261 () Bool)

(declare-fun b!4960251 () Bool)

(declare-fun inv!74888 (String!65251) Bool)

(declare-fun inv!74893 (TokenValueInjection!16658) Bool)

(assert (=> b!4960251 (= e!3100203 (and tp!1391261 (inv!74888 (tag!9229 (h!63807 rulesArg!259))) (inv!74893 (transformation!8365 (h!63807 rulesArg!259))) e!3100200))))

(declare-fun b!4960252 () Bool)

(declare-fun tp!1391262 () Bool)

(assert (=> b!4960252 (= e!3100208 (and (inv!74892 (c!846494 totalInput!464)) tp!1391262))))

(assert (= (and start!522944 res!2117032) b!4960241))

(assert (= (and b!4960241 res!2117034) b!4960249))

(assert (= (and b!4960249 res!2117035) b!4960247))

(assert (= (and b!4960247 res!2117030) b!4960250))

(assert (= (and b!4960250 (not res!2117038)) b!4960238))

(assert (= (and b!4960238 (not res!2117037)) b!4960248))

(assert (= (and b!4960248 (not res!2117029)) b!4960240))

(assert (= (and b!4960240 res!2117033) b!4960246))

(assert (= (and b!4960246 (not res!2117036)) b!4960237))

(assert (= (and b!4960240 (not res!2117039)) b!4960244))

(assert (= (and b!4960244 (not res!2117031)) b!4960242))

(assert (= b!4960251 b!4960245))

(assert (= b!4960239 b!4960251))

(assert (= (and start!522944 (is-Cons!57359 rulesArg!259)) b!4960239))

(assert (= start!522944 b!4960243))

(assert (= start!522944 b!4960252))

(declare-fun m!5984800 () Bool)

(assert (=> b!4960251 m!5984800))

(declare-fun m!5984802 () Bool)

(assert (=> b!4960251 m!5984802))

(declare-fun m!5984804 () Bool)

(assert (=> b!4960242 m!5984804))

(assert (=> b!4960242 m!5984804))

(declare-fun m!5984806 () Bool)

(assert (=> b!4960242 m!5984806))

(declare-fun m!5984808 () Bool)

(assert (=> b!4960249 m!5984808))

(declare-fun m!5984810 () Bool)

(assert (=> b!4960246 m!5984810))

(declare-fun m!5984812 () Bool)

(assert (=> b!4960246 m!5984812))

(declare-fun m!5984814 () Bool)

(assert (=> b!4960241 m!5984814))

(declare-fun m!5984816 () Bool)

(assert (=> b!4960248 m!5984816))

(declare-fun m!5984818 () Bool)

(assert (=> b!4960248 m!5984818))

(declare-fun m!5984820 () Bool)

(assert (=> b!4960248 m!5984820))

(declare-fun m!5984822 () Bool)

(assert (=> b!4960250 m!5984822))

(declare-fun m!5984824 () Bool)

(assert (=> b!4960250 m!5984824))

(declare-fun m!5984826 () Bool)

(assert (=> b!4960247 m!5984826))

(assert (=> b!4960247 m!5984826))

(declare-fun m!5984828 () Bool)

(assert (=> b!4960247 m!5984828))

(declare-fun m!5984830 () Bool)

(assert (=> b!4960247 m!5984830))

(declare-fun m!5984832 () Bool)

(assert (=> b!4960252 m!5984832))

(declare-fun m!5984834 () Bool)

(assert (=> b!4960243 m!5984834))

(declare-fun m!5984836 () Bool)

(assert (=> start!522944 m!5984836))

(declare-fun m!5984838 () Bool)

(assert (=> start!522944 m!5984838))

(declare-fun m!5984840 () Bool)

(assert (=> b!4960238 m!5984840))

(declare-fun m!5984842 () Bool)

(assert (=> b!4960238 m!5984842))

(declare-fun m!5984844 () Bool)

(assert (=> b!4960237 m!5984844))

(push 1)

(assert (not b_next!133313))

(assert (not b!4960238))

(assert (not b!4960247))

(assert (not b!4960243))

(assert b_and!347377)

(assert (not b!4960239))

(assert (not b!4960248))

(assert (not start!522944))

(assert (not b!4960242))

(assert b_and!347375)

(assert (not b!4960241))

(assert (not b!4960249))

(assert (not b!4960252))

(assert (not b!4960246))

(assert (not b!4960251))

(assert (not b_next!133315))

(assert (not b!4960250))

(assert (not b!4960237))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347375)

(assert b_and!347377)

(assert (not b_next!133313))

(assert (not b_next!133315))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4960309 () Bool)

(declare-fun e!3100259 () Bool)

(declare-fun e!3100260 () Bool)

(assert (=> b!4960309 (= e!3100259 e!3100260)))

(declare-fun res!2117098 () Bool)

(assert (=> b!4960309 (=> (not res!2117098) (not e!3100260))))

(assert (=> b!4960309 (= res!2117098 (not (is-Nil!57357 lt!2047890)))))

(declare-fun b!4960310 () Bool)

(declare-fun res!2117096 () Bool)

(assert (=> b!4960310 (=> (not res!2117096) (not e!3100260))))

(declare-fun head!10654 (List!57481) C!27446)

(assert (=> b!4960310 (= res!2117096 (= (head!10654 lt!2047890) (head!10654 lt!2047890)))))

(declare-fun b!4960311 () Bool)

(declare-fun tail!9787 (List!57481) List!57481)

(assert (=> b!4960311 (= e!3100260 (isPrefix!5218 (tail!9787 lt!2047890) (tail!9787 lt!2047890)))))

(declare-fun d!1596188 () Bool)

(declare-fun e!3100258 () Bool)

(assert (=> d!1596188 e!3100258))

(declare-fun res!2117095 () Bool)

(assert (=> d!1596188 (=> res!2117095 e!3100258)))

(declare-fun lt!2047923 () Bool)

(assert (=> d!1596188 (= res!2117095 (not lt!2047923))))

(assert (=> d!1596188 (= lt!2047923 e!3100259)))

(declare-fun res!2117097 () Bool)

(assert (=> d!1596188 (=> res!2117097 e!3100259)))

(assert (=> d!1596188 (= res!2117097 (is-Nil!57357 lt!2047890))))

(assert (=> d!1596188 (= (isPrefix!5218 lt!2047890 lt!2047890) lt!2047923)))

(declare-fun b!4960312 () Bool)

(declare-fun size!38013 (List!57481) Int)

(assert (=> b!4960312 (= e!3100258 (>= (size!38013 lt!2047890) (size!38013 lt!2047890)))))

(assert (= (and d!1596188 (not res!2117097)) b!4960309))

(assert (= (and b!4960309 res!2117098) b!4960310))

(assert (= (and b!4960310 res!2117096) b!4960311))

(assert (= (and d!1596188 (not res!2117095)) b!4960312))

(declare-fun m!5984892 () Bool)

(assert (=> b!4960310 m!5984892))

(assert (=> b!4960310 m!5984892))

(declare-fun m!5984894 () Bool)

(assert (=> b!4960311 m!5984894))

(assert (=> b!4960311 m!5984894))

(assert (=> b!4960311 m!5984894))

(assert (=> b!4960311 m!5984894))

(declare-fun m!5984896 () Bool)

(assert (=> b!4960311 m!5984896))

(declare-fun m!5984898 () Bool)

(assert (=> b!4960312 m!5984898))

(assert (=> b!4960312 m!5984898))

(assert (=> b!4960250 d!1596188))

(declare-fun d!1596190 () Bool)

(assert (=> d!1596190 (isPrefix!5218 lt!2047890 lt!2047890)))

(declare-fun lt!2047926 () Unit!148252)

(declare-fun choose!36634 (List!57481 List!57481) Unit!148252)

(assert (=> d!1596190 (= lt!2047926 (choose!36634 lt!2047890 lt!2047890))))

(assert (=> d!1596190 (= (lemmaIsPrefixRefl!3542 lt!2047890 lt!2047890) lt!2047926)))

(declare-fun bs!1182685 () Bool)

(assert (= bs!1182685 d!1596190))

(assert (=> bs!1182685 m!5984822))

(declare-fun m!5984900 () Bool)

(assert (=> bs!1182685 m!5984900))

(assert (=> b!4960250 d!1596190))

(declare-fun d!1596192 () Bool)

(assert (=> d!1596192 true))

(declare-fun lt!2047950 () Bool)

(declare-fun lambda!247199 () Int)

(declare-fun forall!13313 (List!57483 Int) Bool)

(assert (=> d!1596192 (= lt!2047950 (forall!13313 rulesArg!259 lambda!247199))))

(declare-fun e!3100284 () Bool)

(assert (=> d!1596192 (= lt!2047950 e!3100284)))

(declare-fun res!2117122 () Bool)

(assert (=> d!1596192 (=> res!2117122 e!3100284)))

(assert (=> d!1596192 (= res!2117122 (not (is-Cons!57359 rulesArg!259)))))

(assert (=> d!1596192 (= (rulesValidInductive!3268 thiss!15247 rulesArg!259) lt!2047950)))

(declare-fun b!4960341 () Bool)

(declare-fun e!3100283 () Bool)

(assert (=> b!4960341 (= e!3100284 e!3100283)))

(declare-fun res!2117121 () Bool)

(assert (=> b!4960341 (=> (not res!2117121) (not e!3100283))))

(declare-fun ruleValid!3787 (LexerInterface!7957 Rule!16530) Bool)

(assert (=> b!4960341 (= res!2117121 (ruleValid!3787 thiss!15247 (h!63807 rulesArg!259)))))

(declare-fun b!4960342 () Bool)

(assert (=> b!4960342 (= e!3100283 (rulesValidInductive!3268 thiss!15247 (t!368049 rulesArg!259)))))

(assert (= (and d!1596192 (not res!2117122)) b!4960341))

(assert (= (and b!4960341 res!2117121) b!4960342))

(declare-fun m!5984928 () Bool)

(assert (=> d!1596192 m!5984928))

(declare-fun m!5984930 () Bool)

(assert (=> b!4960341 m!5984930))

(declare-fun m!5984932 () Bool)

(assert (=> b!4960342 m!5984932))

(assert (=> b!4960241 d!1596192))

(declare-fun d!1596198 () Bool)

(assert (=> d!1596198 (= (inv!74888 (tag!9229 (h!63807 rulesArg!259))) (= (mod (str.len (value!267845 (tag!9229 (h!63807 rulesArg!259)))) 2) 0))))

(assert (=> b!4960251 d!1596198))

(declare-fun d!1596200 () Bool)

(declare-fun res!2117125 () Bool)

(declare-fun e!3100287 () Bool)

(assert (=> d!1596200 (=> (not res!2117125) (not e!3100287))))

(declare-fun semiInverseModEq!3685 (Int Int) Bool)

(assert (=> d!1596200 (= res!2117125 (semiInverseModEq!3685 (toChars!11175 (transformation!8365 (h!63807 rulesArg!259))) (toValue!11316 (transformation!8365 (h!63807 rulesArg!259)))))))

(assert (=> d!1596200 (= (inv!74893 (transformation!8365 (h!63807 rulesArg!259))) e!3100287)))

(declare-fun b!4960347 () Bool)

(declare-fun equivClasses!3533 (Int Int) Bool)

(assert (=> b!4960347 (= e!3100287 (equivClasses!3533 (toChars!11175 (transformation!8365 (h!63807 rulesArg!259))) (toValue!11316 (transformation!8365 (h!63807 rulesArg!259)))))))

(assert (= (and d!1596200 res!2117125) b!4960347))

(declare-fun m!5984934 () Bool)

(assert (=> d!1596200 m!5984934))

(declare-fun m!5984936 () Bool)

(assert (=> b!4960347 m!5984936))

(assert (=> b!4960251 d!1596200))

(declare-fun d!1596202 () Bool)

(declare-fun list!18320 (Conc!15117) List!57481)

(assert (=> d!1596202 (= (list!18318 (_2!34315 lt!2047889)) (list!18320 (c!846494 (_2!34315 lt!2047889))))))

(declare-fun bs!1182686 () Bool)

(assert (= bs!1182686 d!1596202))

(declare-fun m!5984938 () Bool)

(assert (=> bs!1182686 m!5984938))

(assert (=> b!4960237 d!1596202))

(declare-fun d!1596204 () Bool)

(declare-fun e!3100290 () Bool)

(assert (=> d!1596204 e!3100290))

(declare-fun res!2117128 () Bool)

(assert (=> d!1596204 (=> res!2117128 e!3100290)))

(declare-fun lt!2047953 () Bool)

(assert (=> d!1596204 (= res!2117128 (not lt!2047953))))

(declare-fun drop!2334 (List!57481 Int) List!57481)

(assert (=> d!1596204 (= lt!2047953 (= lt!2047890 (drop!2334 (list!18318 totalInput!464) (- (size!38013 (list!18318 totalInput!464)) (size!38013 lt!2047890)))))))

(assert (=> d!1596204 (= (isSuffix!1164 lt!2047890 (list!18318 totalInput!464)) lt!2047953)))

(declare-fun b!4960350 () Bool)

(assert (=> b!4960350 (= e!3100290 (>= (size!38013 (list!18318 totalInput!464)) (size!38013 lt!2047890)))))

(assert (= (and d!1596204 (not res!2117128)) b!4960350))

(assert (=> d!1596204 m!5984826))

(declare-fun m!5984940 () Bool)

(assert (=> d!1596204 m!5984940))

(assert (=> d!1596204 m!5984898))

(assert (=> d!1596204 m!5984826))

(declare-fun m!5984942 () Bool)

(assert (=> d!1596204 m!5984942))

(assert (=> b!4960350 m!5984826))

(assert (=> b!4960350 m!5984940))

(assert (=> b!4960350 m!5984898))

(assert (=> b!4960247 d!1596204))

(declare-fun d!1596206 () Bool)

(assert (=> d!1596206 (= (list!18318 totalInput!464) (list!18320 (c!846494 totalInput!464)))))

(declare-fun bs!1182687 () Bool)

(assert (= bs!1182687 d!1596206))

(declare-fun m!5984944 () Bool)

(assert (=> bs!1182687 m!5984944))

(assert (=> b!4960247 d!1596206))

(declare-fun d!1596208 () Bool)

(assert (=> d!1596208 (= (list!18318 input!1342) (list!18320 (c!846494 input!1342)))))

(declare-fun bs!1182688 () Bool)

(assert (= bs!1182688 d!1596208))

(declare-fun m!5984946 () Bool)

(assert (=> bs!1182688 m!5984946))

(assert (=> b!4960247 d!1596208))

(declare-fun d!1596210 () Bool)

(assert (=> d!1596210 (= (isEmpty!30853 rulesArg!259) (is-Nil!57359 rulesArg!259))))

(assert (=> b!4960249 d!1596210))

(declare-fun b!4960373 () Bool)

(declare-fun e!3100307 () Bool)

(declare-fun e!3100312 () Bool)

(assert (=> b!4960373 (= e!3100307 e!3100312)))

(declare-fun res!2117143 () Bool)

(assert (=> b!4960373 (=> res!2117143 e!3100312)))

(declare-fun lt!2047986 () Option!14399)

(assert (=> b!4960373 (= res!2117143 (not (isDefined!11315 lt!2047986)))))

(declare-fun b!4960374 () Bool)

(declare-fun e!3100310 () Option!14399)

(declare-fun lt!2047982 () Option!14399)

(declare-fun lt!2047985 () Option!14399)

(assert (=> b!4960374 (= e!3100310 (ite (and (is-None!14398 lt!2047982) (is-None!14398 lt!2047985)) None!14398 (ite (is-None!14398 lt!2047985) lt!2047982 (ite (is-None!14398 lt!2047982) lt!2047985 (ite (>= (size!38011 (_1!34315 (v!50383 lt!2047982))) (size!38011 (_1!34315 (v!50383 lt!2047985)))) lt!2047982 lt!2047985)))))))

(declare-fun call!345997 () Option!14399)

(assert (=> b!4960374 (= lt!2047982 call!345997)))

(assert (=> b!4960374 (= lt!2047985 (maxPrefixZipperSequenceV2!696 thiss!15247 (t!368049 (t!368049 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4960375 () Bool)

(declare-fun e!3100311 () Bool)

(declare-fun e!3100309 () Bool)

(assert (=> b!4960375 (= e!3100311 e!3100309)))

(declare-fun res!2117144 () Bool)

(assert (=> b!4960375 (=> (not res!2117144) (not e!3100309))))

(assert (=> b!4960375 (= res!2117144 (= (_1!34315 (get!19883 lt!2047986)) (_1!34316 (get!19882 (maxPrefixZipper!762 thiss!15247 (t!368049 rulesArg!259) (list!18318 input!1342))))))))

(declare-fun e!3100308 () Bool)

(declare-fun b!4960376 () Bool)

(assert (=> b!4960376 (= e!3100308 (= (list!18318 (_2!34315 (get!19883 lt!2047986))) (_2!34316 (get!19882 (maxPrefix!4644 thiss!15247 (t!368049 rulesArg!259) (list!18318 input!1342))))))))

(declare-fun bm!345992 () Bool)

(assert (=> bm!345992 (= call!345997 (maxPrefixOneRuleZipperSequenceV2!349 thiss!15247 (h!63807 (t!368049 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun d!1596212 () Bool)

(assert (=> d!1596212 e!3100307))

(declare-fun res!2117145 () Bool)

(assert (=> d!1596212 (=> (not res!2117145) (not e!3100307))))

(assert (=> d!1596212 (= res!2117145 (= (isDefined!11315 lt!2047986) (isDefined!11314 (maxPrefixZipper!762 thiss!15247 (t!368049 rulesArg!259) (list!18318 input!1342)))))))

(assert (=> d!1596212 (= lt!2047986 e!3100310)))

(declare-fun c!846506 () Bool)

(assert (=> d!1596212 (= c!846506 (and (is-Cons!57359 (t!368049 rulesArg!259)) (is-Nil!57359 (t!368049 (t!368049 rulesArg!259)))))))

(declare-fun lt!2047987 () Unit!148252)

(declare-fun lt!2047988 () Unit!148252)

(assert (=> d!1596212 (= lt!2047987 lt!2047988)))

(declare-fun lt!2047983 () List!57481)

(declare-fun lt!2047984 () List!57481)

(assert (=> d!1596212 (isPrefix!5218 lt!2047983 lt!2047984)))

(assert (=> d!1596212 (= lt!2047988 (lemmaIsPrefixRefl!3542 lt!2047983 lt!2047984))))

(assert (=> d!1596212 (= lt!2047984 (list!18318 input!1342))))

(assert (=> d!1596212 (= lt!2047983 (list!18318 input!1342))))

(assert (=> d!1596212 (rulesValidInductive!3268 thiss!15247 (t!368049 rulesArg!259))))

(assert (=> d!1596212 (= (maxPrefixZipperSequenceV2!696 thiss!15247 (t!368049 rulesArg!259) input!1342 totalInput!464) lt!2047986)))

(declare-fun b!4960377 () Bool)

(assert (=> b!4960377 (= e!3100312 e!3100308)))

(declare-fun res!2117148 () Bool)

(assert (=> b!4960377 (=> (not res!2117148) (not e!3100308))))

(assert (=> b!4960377 (= res!2117148 (= (_1!34315 (get!19883 lt!2047986)) (_1!34316 (get!19882 (maxPrefix!4644 thiss!15247 (t!368049 rulesArg!259) (list!18318 input!1342))))))))

(declare-fun b!4960378 () Bool)

(declare-fun res!2117147 () Bool)

(assert (=> b!4960378 (=> (not res!2117147) (not e!3100307))))

(assert (=> b!4960378 (= res!2117147 e!3100311)))

(declare-fun res!2117146 () Bool)

(assert (=> b!4960378 (=> res!2117146 e!3100311)))

(assert (=> b!4960378 (= res!2117146 (not (isDefined!11315 lt!2047986)))))

(declare-fun b!4960379 () Bool)

(assert (=> b!4960379 (= e!3100310 call!345997)))

(declare-fun b!4960380 () Bool)

(assert (=> b!4960380 (= e!3100309 (= (list!18318 (_2!34315 (get!19883 lt!2047986))) (_2!34316 (get!19882 (maxPrefixZipper!762 thiss!15247 (t!368049 rulesArg!259) (list!18318 input!1342))))))))

(assert (= (and d!1596212 c!846506) b!4960379))

(assert (= (and d!1596212 (not c!846506)) b!4960374))

(assert (= (or b!4960379 b!4960374) bm!345992))

(assert (= (and d!1596212 res!2117145) b!4960378))

(assert (= (and b!4960378 (not res!2117146)) b!4960375))

(assert (= (and b!4960375 res!2117144) b!4960380))

(assert (= (and b!4960378 res!2117147) b!4960373))

(assert (= (and b!4960373 (not res!2117143)) b!4960377))

(assert (= (and b!4960377 res!2117148) b!4960376))

(declare-fun m!5984948 () Bool)

(assert (=> b!4960373 m!5984948))

(declare-fun m!5984950 () Bool)

(assert (=> b!4960375 m!5984950))

(assert (=> b!4960375 m!5984830))

(assert (=> b!4960375 m!5984830))

(declare-fun m!5984952 () Bool)

(assert (=> b!4960375 m!5984952))

(assert (=> b!4960375 m!5984952))

(declare-fun m!5984954 () Bool)

(assert (=> b!4960375 m!5984954))

(assert (=> b!4960376 m!5984830))

(assert (=> b!4960376 m!5984950))

(declare-fun m!5984956 () Bool)

(assert (=> b!4960376 m!5984956))

(declare-fun m!5984958 () Bool)

(assert (=> b!4960376 m!5984958))

(declare-fun m!5984960 () Bool)

(assert (=> b!4960376 m!5984960))

(assert (=> b!4960376 m!5984830))

(assert (=> b!4960376 m!5984956))

(assert (=> b!4960378 m!5984948))

(declare-fun m!5984962 () Bool)

(assert (=> d!1596212 m!5984962))

(assert (=> d!1596212 m!5984830))

(declare-fun m!5984964 () Bool)

(assert (=> d!1596212 m!5984964))

(assert (=> d!1596212 m!5984948))

(assert (=> d!1596212 m!5984952))

(declare-fun m!5984966 () Bool)

(assert (=> d!1596212 m!5984966))

(assert (=> d!1596212 m!5984830))

(assert (=> d!1596212 m!5984952))

(assert (=> d!1596212 m!5984932))

(assert (=> b!4960380 m!5984830))

(assert (=> b!4960380 m!5984952))

(assert (=> b!4960380 m!5984954))

(assert (=> b!4960380 m!5984950))

(assert (=> b!4960380 m!5984830))

(assert (=> b!4960380 m!5984952))

(assert (=> b!4960380 m!5984960))

(assert (=> b!4960377 m!5984950))

(assert (=> b!4960377 m!5984830))

(assert (=> b!4960377 m!5984830))

(assert (=> b!4960377 m!5984956))

(assert (=> b!4960377 m!5984956))

(assert (=> b!4960377 m!5984958))

(declare-fun m!5984968 () Bool)

(assert (=> b!4960374 m!5984968))

(declare-fun m!5984970 () Bool)

(assert (=> bm!345992 m!5984970))

(assert (=> b!4960238 d!1596212))

(declare-fun b!4960406 () Bool)

(declare-fun e!3100333 () Bool)

(assert (=> b!4960406 (= e!3100333 true)))

(declare-fun b!4960405 () Bool)

(declare-fun e!3100332 () Bool)

(assert (=> b!4960405 (= e!3100332 e!3100333)))

(declare-fun b!4960395 () Bool)

(assert (=> b!4960395 e!3100332))

(assert (= b!4960405 b!4960406))

(assert (= b!4960395 b!4960405))

(declare-fun lambda!247204 () Int)

(declare-fun order!26135 () Int)

(declare-fun order!26137 () Int)

(declare-fun dynLambda!23105 (Int Int) Int)

(declare-fun dynLambda!23106 (Int Int) Int)

(assert (=> b!4960406 (< (dynLambda!23105 order!26135 (toValue!11316 (transformation!8365 (h!63807 rulesArg!259)))) (dynLambda!23106 order!26137 lambda!247204))))

(declare-fun order!26139 () Int)

(declare-fun dynLambda!23107 (Int Int) Int)

(assert (=> b!4960406 (< (dynLambda!23107 order!26139 (toChars!11175 (transformation!8365 (h!63807 rulesArg!259)))) (dynLambda!23106 order!26137 lambda!247204))))

(declare-fun b!4960393 () Bool)

(declare-fun e!3100324 () Option!14399)

(assert (=> b!4960393 (= e!3100324 None!14398)))

(declare-fun b!4960394 () Bool)

(declare-fun e!3100325 () Bool)

(declare-fun e!3100327 () Bool)

(assert (=> b!4960394 (= e!3100325 e!3100327)))

(declare-fun res!2117158 () Bool)

(assert (=> b!4960394 (=> (not res!2117158) (not e!3100327))))

(declare-fun lt!2048010 () Option!14399)

(declare-fun maxPrefixOneRule!3615 (LexerInterface!7957 Rule!16530 List!57481) Option!14400)

(assert (=> b!4960394 (= res!2117158 (= (_1!34315 (get!19883 lt!2048010)) (_1!34316 (get!19882 (maxPrefixOneRule!3615 thiss!15247 (h!63807 rulesArg!259) (list!18318 input!1342))))))))

(declare-datatypes ((tuple2!62032 0))(
  ( (tuple2!62033 (_1!34319 BalanceConc!29664) (_2!34319 BalanceConc!29664)) )
))
(declare-fun lt!2048013 () tuple2!62032)

(declare-fun apply!13890 (TokenValueInjection!16658 BalanceConc!29664) TokenValue!8675)

(declare-fun size!38014 (BalanceConc!29664) Int)

(assert (=> b!4960395 (= e!3100324 (Some!14398 (tuple2!62025 (Token!15231 (apply!13890 (transformation!8365 (h!63807 rulesArg!259)) (_1!34319 lt!2048013)) (h!63807 rulesArg!259) (size!38014 (_1!34319 lt!2048013)) (list!18318 (_1!34319 lt!2048013))) (_2!34319 lt!2048013))))))

(declare-fun lt!2048016 () List!57481)

(assert (=> b!4960395 (= lt!2048016 (list!18318 input!1342))))

(declare-fun lt!2048011 () Unit!148252)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1806 (Regex!13598 List!57481) Unit!148252)

(assert (=> b!4960395 (= lt!2048011 (longestMatchIsAcceptedByMatchOrIsEmpty!1806 (regex!8365 (h!63807 rulesArg!259)) lt!2048016))))

(declare-fun res!2117159 () Bool)

(declare-fun isEmpty!30855 (List!57481) Bool)

(declare-datatypes ((tuple2!62034 0))(
  ( (tuple2!62035 (_1!34320 List!57481) (_2!34320 List!57481)) )
))
(declare-fun findLongestMatchInner!1845 (Regex!13598 List!57481 Int List!57481 List!57481 Int) tuple2!62034)

(assert (=> b!4960395 (= res!2117159 (isEmpty!30855 (_1!34320 (findLongestMatchInner!1845 (regex!8365 (h!63807 rulesArg!259)) Nil!57357 (size!38013 Nil!57357) lt!2048016 lt!2048016 (size!38013 lt!2048016)))))))

(declare-fun e!3100323 () Bool)

(assert (=> b!4960395 (=> res!2117159 e!3100323)))

(assert (=> b!4960395 e!3100323))

(declare-fun lt!2048014 () Unit!148252)

(assert (=> b!4960395 (= lt!2048014 lt!2048011)))

(declare-fun lt!2048015 () Unit!148252)

(declare-fun lemmaInv!1324 (TokenValueInjection!16658) Unit!148252)

(assert (=> b!4960395 (= lt!2048015 (lemmaInv!1324 (transformation!8365 (h!63807 rulesArg!259))))))

(declare-fun lt!2048017 () Unit!148252)

(declare-fun ForallOf!1217 (Int BalanceConc!29664) Unit!148252)

(assert (=> b!4960395 (= lt!2048017 (ForallOf!1217 lambda!247204 (_1!34319 lt!2048013)))))

(declare-fun lt!2048018 () Unit!148252)

(declare-fun seqFromList!6022 (List!57481) BalanceConc!29664)

(assert (=> b!4960395 (= lt!2048018 (ForallOf!1217 lambda!247204 (seqFromList!6022 (list!18318 (_1!34319 lt!2048013)))))))

(declare-fun lt!2048012 () Option!14399)

(assert (=> b!4960395 (= lt!2048012 (Some!14398 (tuple2!62025 (Token!15231 (apply!13890 (transformation!8365 (h!63807 rulesArg!259)) (_1!34319 lt!2048013)) (h!63807 rulesArg!259) (size!38014 (_1!34319 lt!2048013)) (list!18318 (_1!34319 lt!2048013))) (_2!34319 lt!2048013))))))

(declare-fun lt!2048009 () Unit!148252)

(declare-fun lemmaEqSameImage!1158 (TokenValueInjection!16658 BalanceConc!29664 BalanceConc!29664) Unit!148252)

(assert (=> b!4960395 (= lt!2048009 (lemmaEqSameImage!1158 (transformation!8365 (h!63807 rulesArg!259)) (_1!34319 lt!2048013) (seqFromList!6022 (list!18318 (_1!34319 lt!2048013)))))))

(declare-fun b!4960396 () Bool)

(declare-fun matchR!6622 (Regex!13598 List!57481) Bool)

(assert (=> b!4960396 (= e!3100323 (matchR!6622 (regex!8365 (h!63807 rulesArg!259)) (_1!34320 (findLongestMatchInner!1845 (regex!8365 (h!63807 rulesArg!259)) Nil!57357 (size!38013 Nil!57357) lt!2048016 lt!2048016 (size!38013 lt!2048016)))))))

(declare-fun b!4960397 () Bool)

(declare-fun e!3100326 () Bool)

(assert (=> b!4960397 (= e!3100326 e!3100325)))

(declare-fun res!2117160 () Bool)

(assert (=> b!4960397 (=> res!2117160 e!3100325)))

(assert (=> b!4960397 (= res!2117160 (not (isDefined!11315 lt!2048010)))))

(declare-fun b!4960398 () Bool)

(assert (=> b!4960398 (= e!3100327 (= (list!18318 (_2!34315 (get!19883 lt!2048010))) (_2!34316 (get!19882 (maxPrefixOneRule!3615 thiss!15247 (h!63807 rulesArg!259) (list!18318 input!1342))))))))

(declare-fun d!1596214 () Bool)

(assert (=> d!1596214 e!3100326))

(declare-fun res!2117157 () Bool)

(assert (=> d!1596214 (=> (not res!2117157) (not e!3100326))))

(assert (=> d!1596214 (= res!2117157 (= (isDefined!11315 lt!2048010) (isDefined!11314 (maxPrefixOneRule!3615 thiss!15247 (h!63807 rulesArg!259) (list!18318 input!1342)))))))

(assert (=> d!1596214 (= lt!2048010 e!3100324)))

(declare-fun c!846509 () Bool)

(declare-fun isEmpty!30856 (BalanceConc!29664) Bool)

(assert (=> d!1596214 (= c!846509 (isEmpty!30856 (_1!34319 lt!2048013)))))

(declare-fun findLongestMatchWithZipperSequenceV2!154 (Regex!13598 BalanceConc!29664 BalanceConc!29664) tuple2!62032)

(assert (=> d!1596214 (= lt!2048013 (findLongestMatchWithZipperSequenceV2!154 (regex!8365 (h!63807 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1596214 (ruleValid!3787 thiss!15247 (h!63807 rulesArg!259))))

(assert (=> d!1596214 (= (maxPrefixOneRuleZipperSequenceV2!349 thiss!15247 (h!63807 rulesArg!259) input!1342 totalInput!464) lt!2048010)))

(assert (= (and d!1596214 c!846509) b!4960393))

(assert (= (and d!1596214 (not c!846509)) b!4960395))

(assert (= (and b!4960395 (not res!2117159)) b!4960396))

(assert (= (and d!1596214 res!2117157) b!4960397))

(assert (= (and b!4960397 (not res!2117160)) b!4960394))

(assert (= (and b!4960394 res!2117158) b!4960398))

(declare-fun m!5984972 () Bool)

(assert (=> b!4960395 m!5984972))

(declare-fun m!5984974 () Bool)

(assert (=> b!4960395 m!5984974))

(declare-fun m!5984976 () Bool)

(assert (=> b!4960395 m!5984976))

(declare-fun m!5984978 () Bool)

(assert (=> b!4960395 m!5984978))

(declare-fun m!5984980 () Bool)

(assert (=> b!4960395 m!5984980))

(assert (=> b!4960395 m!5984974))

(declare-fun m!5984982 () Bool)

(assert (=> b!4960395 m!5984982))

(declare-fun m!5984984 () Bool)

(assert (=> b!4960395 m!5984984))

(declare-fun m!5984986 () Bool)

(assert (=> b!4960395 m!5984986))

(assert (=> b!4960395 m!5984978))

(assert (=> b!4960395 m!5984986))

(assert (=> b!4960395 m!5984978))

(declare-fun m!5984988 () Bool)

(assert (=> b!4960395 m!5984988))

(declare-fun m!5984990 () Bool)

(assert (=> b!4960395 m!5984990))

(declare-fun m!5984992 () Bool)

(assert (=> b!4960395 m!5984992))

(assert (=> b!4960395 m!5984972))

(assert (=> b!4960395 m!5984830))

(declare-fun m!5984994 () Bool)

(assert (=> b!4960395 m!5984994))

(declare-fun m!5984996 () Bool)

(assert (=> b!4960395 m!5984996))

(declare-fun m!5984998 () Bool)

(assert (=> b!4960394 m!5984998))

(assert (=> b!4960394 m!5984830))

(assert (=> b!4960394 m!5984830))

(declare-fun m!5985000 () Bool)

(assert (=> b!4960394 m!5985000))

(assert (=> b!4960394 m!5985000))

(declare-fun m!5985002 () Bool)

(assert (=> b!4960394 m!5985002))

(declare-fun m!5985004 () Bool)

(assert (=> d!1596214 m!5985004))

(declare-fun m!5985006 () Bool)

(assert (=> d!1596214 m!5985006))

(assert (=> d!1596214 m!5984830))

(assert (=> d!1596214 m!5985000))

(declare-fun m!5985008 () Bool)

(assert (=> d!1596214 m!5985008))

(declare-fun m!5985010 () Bool)

(assert (=> d!1596214 m!5985010))

(assert (=> d!1596214 m!5984830))

(assert (=> d!1596214 m!5985000))

(assert (=> d!1596214 m!5984930))

(assert (=> b!4960396 m!5984972))

(assert (=> b!4960396 m!5984974))

(assert (=> b!4960396 m!5984972))

(assert (=> b!4960396 m!5984974))

(assert (=> b!4960396 m!5984976))

(declare-fun m!5985012 () Bool)

(assert (=> b!4960396 m!5985012))

(assert (=> b!4960398 m!5984830))

(assert (=> b!4960398 m!5984830))

(assert (=> b!4960398 m!5985000))

(declare-fun m!5985014 () Bool)

(assert (=> b!4960398 m!5985014))

(assert (=> b!4960398 m!5984998))

(assert (=> b!4960398 m!5985000))

(assert (=> b!4960398 m!5985002))

(assert (=> b!4960397 m!5985004))

(assert (=> b!4960238 d!1596214))

(declare-fun d!1596216 () Bool)

(declare-fun isEmpty!30857 (Option!14400) Bool)

(assert (=> d!1596216 (= (isDefined!11314 lt!2047888) (not (isEmpty!30857 lt!2047888)))))

(declare-fun bs!1182689 () Bool)

(assert (= bs!1182689 d!1596216))

(declare-fun m!5985016 () Bool)

(assert (=> bs!1182689 m!5985016))

(assert (=> b!4960248 d!1596216))

(declare-fun d!1596218 () Bool)

(declare-fun isEmpty!30858 (Option!14399) Bool)

(assert (=> d!1596218 (= (isDefined!11315 lt!2047893) (not (isEmpty!30858 lt!2047893)))))

(declare-fun bs!1182690 () Bool)

(assert (= bs!1182690 d!1596218))

(declare-fun m!5985018 () Bool)

(assert (=> bs!1182690 m!5985018))

(assert (=> b!4960248 d!1596218))

(declare-fun d!1596220 () Bool)

(declare-fun lt!2048033 () Option!14400)

(assert (=> d!1596220 (= lt!2048033 (maxPrefix!4644 thiss!15247 rulesArg!259 lt!2047890))))

(declare-fun e!3100336 () Option!14400)

(assert (=> d!1596220 (= lt!2048033 e!3100336)))

(declare-fun c!846512 () Bool)

(assert (=> d!1596220 (= c!846512 (and (is-Cons!57359 rulesArg!259) (is-Nil!57359 (t!368049 rulesArg!259))))))

(declare-fun lt!2048029 () Unit!148252)

(declare-fun lt!2048031 () Unit!148252)

(assert (=> d!1596220 (= lt!2048029 lt!2048031)))

(assert (=> d!1596220 (isPrefix!5218 lt!2047890 lt!2047890)))

(assert (=> d!1596220 (= lt!2048031 (lemmaIsPrefixRefl!3542 lt!2047890 lt!2047890))))

(assert (=> d!1596220 (rulesValidInductive!3268 thiss!15247 rulesArg!259)))

(assert (=> d!1596220 (= (maxPrefixZipper!762 thiss!15247 rulesArg!259 lt!2047890) lt!2048033)))

(declare-fun call!346000 () Option!14400)

(declare-fun bm!345995 () Bool)

(declare-fun maxPrefixOneRuleZipper!284 (LexerInterface!7957 Rule!16530 List!57481) Option!14400)

(assert (=> bm!345995 (= call!346000 (maxPrefixOneRuleZipper!284 thiss!15247 (h!63807 rulesArg!259) lt!2047890))))

(declare-fun b!4960411 () Bool)

(assert (=> b!4960411 (= e!3100336 call!346000)))

(declare-fun b!4960412 () Bool)

(declare-fun lt!2048032 () Option!14400)

(declare-fun lt!2048030 () Option!14400)

(assert (=> b!4960412 (= e!3100336 (ite (and (is-None!14399 lt!2048032) (is-None!14399 lt!2048030)) None!14399 (ite (is-None!14399 lt!2048030) lt!2048032 (ite (is-None!14399 lt!2048032) lt!2048030 (ite (>= (size!38011 (_1!34316 (v!50384 lt!2048032))) (size!38011 (_1!34316 (v!50384 lt!2048030)))) lt!2048032 lt!2048030)))))))

(assert (=> b!4960412 (= lt!2048032 call!346000)))

(assert (=> b!4960412 (= lt!2048030 (maxPrefixZipper!762 thiss!15247 (t!368049 rulesArg!259) lt!2047890))))

(assert (= (and d!1596220 c!846512) b!4960411))

(assert (= (and d!1596220 (not c!846512)) b!4960412))

(assert (= (or b!4960411 b!4960412) bm!345995))

(assert (=> d!1596220 m!5984804))

(assert (=> d!1596220 m!5984822))

(assert (=> d!1596220 m!5984824))

(assert (=> d!1596220 m!5984814))

(declare-fun m!5985020 () Bool)

(assert (=> bm!345995 m!5985020))

(declare-fun m!5985022 () Bool)

(assert (=> b!4960412 m!5985022))

(assert (=> b!4960248 d!1596220))

(declare-fun d!1596222 () Bool)

(assert (=> d!1596222 (= (get!19882 lt!2047888) (v!50384 lt!2047888))))

(assert (=> b!4960246 d!1596222))

(declare-fun d!1596224 () Bool)

(assert (=> d!1596224 (= (get!19883 lt!2047893) (v!50383 lt!2047893))))

(assert (=> b!4960246 d!1596224))

(declare-fun d!1596226 () Bool)

(assert (=> d!1596226 (= (isDefined!11314 (maxPrefix!4644 thiss!15247 rulesArg!259 lt!2047890)) (not (isEmpty!30857 (maxPrefix!4644 thiss!15247 rulesArg!259 lt!2047890))))))

(declare-fun bs!1182691 () Bool)

(assert (= bs!1182691 d!1596226))

(assert (=> bs!1182691 m!5984804))

(declare-fun m!5985024 () Bool)

(assert (=> bs!1182691 m!5985024))

(assert (=> b!4960242 d!1596226))

(declare-fun b!4960431 () Bool)

(declare-fun res!2117178 () Bool)

(declare-fun e!3100343 () Bool)

(assert (=> b!4960431 (=> (not res!2117178) (not e!3100343))))

(declare-fun lt!2048046 () Option!14400)

(assert (=> b!4960431 (= res!2117178 (= (value!267846 (_1!34316 (get!19882 lt!2048046))) (apply!13890 (transformation!8365 (rule!11593 (_1!34316 (get!19882 lt!2048046)))) (seqFromList!6022 (originalCharacters!8646 (_1!34316 (get!19882 lt!2048046)))))))))

(declare-fun b!4960432 () Bool)

(declare-fun res!2117175 () Bool)

(assert (=> b!4960432 (=> (not res!2117175) (not e!3100343))))

(declare-fun charsOf!5425 (Token!15230) BalanceConc!29664)

(assert (=> b!4960432 (= res!2117175 (matchR!6622 (regex!8365 (rule!11593 (_1!34316 (get!19882 lt!2048046)))) (list!18318 (charsOf!5425 (_1!34316 (get!19882 lt!2048046))))))))

(declare-fun b!4960433 () Bool)

(declare-fun res!2117179 () Bool)

(assert (=> b!4960433 (=> (not res!2117179) (not e!3100343))))

(assert (=> b!4960433 (= res!2117179 (< (size!38013 (_2!34316 (get!19882 lt!2048046))) (size!38013 lt!2047890)))))

(declare-fun b!4960434 () Bool)

(declare-fun e!3100345 () Option!14400)

(declare-fun call!346003 () Option!14400)

(assert (=> b!4960434 (= e!3100345 call!346003)))

(declare-fun b!4960435 () Bool)

(declare-fun e!3100344 () Bool)

(assert (=> b!4960435 (= e!3100344 e!3100343)))

(declare-fun res!2117180 () Bool)

(assert (=> b!4960435 (=> (not res!2117180) (not e!3100343))))

(assert (=> b!4960435 (= res!2117180 (isDefined!11314 lt!2048046))))

(declare-fun b!4960436 () Bool)

(declare-fun contains!19526 (List!57483 Rule!16530) Bool)

(assert (=> b!4960436 (= e!3100343 (contains!19526 rulesArg!259 (rule!11593 (_1!34316 (get!19882 lt!2048046)))))))

(declare-fun d!1596228 () Bool)

(assert (=> d!1596228 e!3100344))

(declare-fun res!2117176 () Bool)

(assert (=> d!1596228 (=> res!2117176 e!3100344)))

(assert (=> d!1596228 (= res!2117176 (isEmpty!30857 lt!2048046))))

(assert (=> d!1596228 (= lt!2048046 e!3100345)))

(declare-fun c!846515 () Bool)

(assert (=> d!1596228 (= c!846515 (and (is-Cons!57359 rulesArg!259) (is-Nil!57359 (t!368049 rulesArg!259))))))

(declare-fun lt!2048048 () Unit!148252)

(declare-fun lt!2048047 () Unit!148252)

(assert (=> d!1596228 (= lt!2048048 lt!2048047)))

(assert (=> d!1596228 (isPrefix!5218 lt!2047890 lt!2047890)))

(assert (=> d!1596228 (= lt!2048047 (lemmaIsPrefixRefl!3542 lt!2047890 lt!2047890))))

(assert (=> d!1596228 (rulesValidInductive!3268 thiss!15247 rulesArg!259)))

(assert (=> d!1596228 (= (maxPrefix!4644 thiss!15247 rulesArg!259 lt!2047890) lt!2048046)))

(declare-fun bm!345998 () Bool)

(assert (=> bm!345998 (= call!346003 (maxPrefixOneRule!3615 thiss!15247 (h!63807 rulesArg!259) lt!2047890))))

(declare-fun b!4960437 () Bool)

(declare-fun res!2117177 () Bool)

(assert (=> b!4960437 (=> (not res!2117177) (not e!3100343))))

(declare-fun ++!12520 (List!57481 List!57481) List!57481)

(assert (=> b!4960437 (= res!2117177 (= (++!12520 (list!18318 (charsOf!5425 (_1!34316 (get!19882 lt!2048046)))) (_2!34316 (get!19882 lt!2048046))) lt!2047890))))

(declare-fun b!4960438 () Bool)

(declare-fun res!2117181 () Bool)

(assert (=> b!4960438 (=> (not res!2117181) (not e!3100343))))

(assert (=> b!4960438 (= res!2117181 (= (list!18318 (charsOf!5425 (_1!34316 (get!19882 lt!2048046)))) (originalCharacters!8646 (_1!34316 (get!19882 lt!2048046)))))))

(declare-fun b!4960439 () Bool)

(declare-fun lt!2048044 () Option!14400)

(declare-fun lt!2048045 () Option!14400)

(assert (=> b!4960439 (= e!3100345 (ite (and (is-None!14399 lt!2048044) (is-None!14399 lt!2048045)) None!14399 (ite (is-None!14399 lt!2048045) lt!2048044 (ite (is-None!14399 lt!2048044) lt!2048045 (ite (>= (size!38011 (_1!34316 (v!50384 lt!2048044))) (size!38011 (_1!34316 (v!50384 lt!2048045)))) lt!2048044 lt!2048045)))))))

(assert (=> b!4960439 (= lt!2048044 call!346003)))

(assert (=> b!4960439 (= lt!2048045 (maxPrefix!4644 thiss!15247 (t!368049 rulesArg!259) lt!2047890))))

(assert (= (and d!1596228 c!846515) b!4960434))

(assert (= (and d!1596228 (not c!846515)) b!4960439))

(assert (= (or b!4960434 b!4960439) bm!345998))

(assert (= (and d!1596228 (not res!2117176)) b!4960435))

(assert (= (and b!4960435 res!2117180) b!4960438))

(assert (= (and b!4960438 res!2117181) b!4960433))

(assert (= (and b!4960433 res!2117179) b!4960437))

(assert (= (and b!4960437 res!2117177) b!4960431))

(assert (= (and b!4960431 res!2117178) b!4960432))

(assert (= (and b!4960432 res!2117175) b!4960436))

(declare-fun m!5985026 () Bool)

(assert (=> b!4960432 m!5985026))

(declare-fun m!5985028 () Bool)

(assert (=> b!4960432 m!5985028))

(assert (=> b!4960432 m!5985028))

(declare-fun m!5985030 () Bool)

(assert (=> b!4960432 m!5985030))

(assert (=> b!4960432 m!5985030))

(declare-fun m!5985032 () Bool)

(assert (=> b!4960432 m!5985032))

(assert (=> b!4960433 m!5985026))

(declare-fun m!5985034 () Bool)

(assert (=> b!4960433 m!5985034))

(assert (=> b!4960433 m!5984898))

(declare-fun m!5985036 () Bool)

(assert (=> b!4960435 m!5985036))

(declare-fun m!5985038 () Bool)

(assert (=> d!1596228 m!5985038))

(assert (=> d!1596228 m!5984822))

(assert (=> d!1596228 m!5984824))

(assert (=> d!1596228 m!5984814))

(assert (=> b!4960436 m!5985026))

(declare-fun m!5985040 () Bool)

(assert (=> b!4960436 m!5985040))

(declare-fun m!5985042 () Bool)

(assert (=> bm!345998 m!5985042))

(declare-fun m!5985044 () Bool)

(assert (=> b!4960439 m!5985044))

(assert (=> b!4960437 m!5985026))

(assert (=> b!4960437 m!5985028))

(assert (=> b!4960437 m!5985028))

(assert (=> b!4960437 m!5985030))

(assert (=> b!4960437 m!5985030))

(declare-fun m!5985046 () Bool)

(assert (=> b!4960437 m!5985046))

(assert (=> b!4960438 m!5985026))

(assert (=> b!4960438 m!5985028))

(assert (=> b!4960438 m!5985028))

(assert (=> b!4960438 m!5985030))

(assert (=> b!4960431 m!5985026))

(declare-fun m!5985048 () Bool)

(assert (=> b!4960431 m!5985048))

(assert (=> b!4960431 m!5985048))

(declare-fun m!5985050 () Bool)

(assert (=> b!4960431 m!5985050))

(assert (=> b!4960242 d!1596228))

(declare-fun d!1596230 () Bool)

(declare-fun c!846518 () Bool)

(assert (=> d!1596230 (= c!846518 (is-Node!15117 (c!846494 totalInput!464)))))

(declare-fun e!3100350 () Bool)

(assert (=> d!1596230 (= (inv!74892 (c!846494 totalInput!464)) e!3100350)))

(declare-fun b!4960446 () Bool)

(declare-fun inv!74897 (Conc!15117) Bool)

(assert (=> b!4960446 (= e!3100350 (inv!74897 (c!846494 totalInput!464)))))

(declare-fun b!4960447 () Bool)

(declare-fun e!3100351 () Bool)

(assert (=> b!4960447 (= e!3100350 e!3100351)))

(declare-fun res!2117184 () Bool)

(assert (=> b!4960447 (= res!2117184 (not (is-Leaf!25125 (c!846494 totalInput!464))))))

(assert (=> b!4960447 (=> res!2117184 e!3100351)))

(declare-fun b!4960448 () Bool)

(declare-fun inv!74898 (Conc!15117) Bool)

(assert (=> b!4960448 (= e!3100351 (inv!74898 (c!846494 totalInput!464)))))

(assert (= (and d!1596230 c!846518) b!4960446))

(assert (= (and d!1596230 (not c!846518)) b!4960447))

(assert (= (and b!4960447 (not res!2117184)) b!4960448))

(declare-fun m!5985052 () Bool)

(assert (=> b!4960446 m!5985052))

(declare-fun m!5985054 () Bool)

(assert (=> b!4960448 m!5985054))

(assert (=> b!4960252 d!1596230))

(declare-fun d!1596232 () Bool)

(declare-fun c!846519 () Bool)

(assert (=> d!1596232 (= c!846519 (is-Node!15117 (c!846494 input!1342)))))

(declare-fun e!3100352 () Bool)

(assert (=> d!1596232 (= (inv!74892 (c!846494 input!1342)) e!3100352)))

(declare-fun b!4960449 () Bool)

(assert (=> b!4960449 (= e!3100352 (inv!74897 (c!846494 input!1342)))))

(declare-fun b!4960450 () Bool)

(declare-fun e!3100353 () Bool)

(assert (=> b!4960450 (= e!3100352 e!3100353)))

(declare-fun res!2117185 () Bool)

(assert (=> b!4960450 (= res!2117185 (not (is-Leaf!25125 (c!846494 input!1342))))))

(assert (=> b!4960450 (=> res!2117185 e!3100353)))

(declare-fun b!4960451 () Bool)

(assert (=> b!4960451 (= e!3100353 (inv!74898 (c!846494 input!1342)))))

(assert (= (and d!1596232 c!846519) b!4960449))

(assert (= (and d!1596232 (not c!846519)) b!4960450))

(assert (= (and b!4960450 (not res!2117185)) b!4960451))

(declare-fun m!5985056 () Bool)

(assert (=> b!4960449 m!5985056))

(declare-fun m!5985058 () Bool)

(assert (=> b!4960451 m!5985058))

(assert (=> b!4960243 d!1596232))

(declare-fun d!1596234 () Bool)

(declare-fun isBalanced!4187 (Conc!15117) Bool)

(assert (=> d!1596234 (= (inv!74891 input!1342) (isBalanced!4187 (c!846494 input!1342)))))

(declare-fun bs!1182692 () Bool)

(assert (= bs!1182692 d!1596234))

(declare-fun m!5985060 () Bool)

(assert (=> bs!1182692 m!5985060))

(assert (=> start!522944 d!1596234))

(declare-fun d!1596236 () Bool)

(assert (=> d!1596236 (= (inv!74891 totalInput!464) (isBalanced!4187 (c!846494 totalInput!464)))))

(declare-fun bs!1182693 () Bool)

(assert (= bs!1182693 d!1596236))

(declare-fun m!5985062 () Bool)

(assert (=> bs!1182693 m!5985062))

(assert (=> start!522944 d!1596236))

(declare-fun b!4960468 () Bool)

(declare-fun b_free!132531 () Bool)

(declare-fun b_next!133321 () Bool)

(assert (=> b!4960468 (= b_free!132531 (not b_next!133321))))

(declare-fun tp!1391292 () Bool)

(declare-fun b_and!347383 () Bool)

(assert (=> b!4960468 (= tp!1391292 b_and!347383)))

(declare-fun b_free!132533 () Bool)

(declare-fun b_next!133323 () Bool)

(assert (=> b!4960468 (= b_free!132533 (not b_next!133323))))

(declare-fun tp!1391289 () Bool)

(declare-fun b_and!347385 () Bool)

(assert (=> b!4960468 (= tp!1391289 b_and!347385)))

(declare-fun e!3100371 () Bool)

(assert (=> b!4960468 (= e!3100371 (and tp!1391292 tp!1391289))))

(declare-fun b!4960467 () Bool)

(declare-fun e!3100368 () Bool)

(declare-fun tp!1391290 () Bool)

(assert (=> b!4960467 (= e!3100368 (and tp!1391290 (inv!74888 (tag!9229 (h!63807 (t!368049 rulesArg!259)))) (inv!74893 (transformation!8365 (h!63807 (t!368049 rulesArg!259)))) e!3100371))))

(declare-fun b!4960466 () Bool)

(declare-fun e!3100370 () Bool)

(declare-fun tp!1391291 () Bool)

(assert (=> b!4960466 (= e!3100370 (and e!3100368 tp!1391291))))

(assert (=> b!4960239 (= tp!1391257 e!3100370)))

(assert (= b!4960467 b!4960468))

(assert (= b!4960466 b!4960467))

(assert (= (and b!4960239 (is-Cons!57359 (t!368049 rulesArg!259))) b!4960466))

(declare-fun m!5985064 () Bool)

(assert (=> b!4960467 m!5985064))

(declare-fun m!5985066 () Bool)

(assert (=> b!4960467 m!5985066))

(declare-fun b!4960481 () Bool)

(declare-fun e!3100374 () Bool)

(declare-fun tp!1391304 () Bool)

(assert (=> b!4960481 (= e!3100374 tp!1391304)))

(declare-fun b!4960480 () Bool)

(declare-fun tp!1391303 () Bool)

(declare-fun tp!1391307 () Bool)

(assert (=> b!4960480 (= e!3100374 (and tp!1391303 tp!1391307))))

(declare-fun b!4960482 () Bool)

(declare-fun tp!1391305 () Bool)

(declare-fun tp!1391306 () Bool)

(assert (=> b!4960482 (= e!3100374 (and tp!1391305 tp!1391306))))

(declare-fun b!4960479 () Bool)

(declare-fun tp_is_empty!36301 () Bool)

(assert (=> b!4960479 (= e!3100374 tp_is_empty!36301)))

(assert (=> b!4960251 (= tp!1391261 e!3100374)))

(assert (= (and b!4960251 (is-ElementMatch!13598 (regex!8365 (h!63807 rulesArg!259)))) b!4960479))

(assert (= (and b!4960251 (is-Concat!22274 (regex!8365 (h!63807 rulesArg!259)))) b!4960480))

(assert (= (and b!4960251 (is-Star!13598 (regex!8365 (h!63807 rulesArg!259)))) b!4960481))

(assert (= (and b!4960251 (is-Union!13598 (regex!8365 (h!63807 rulesArg!259)))) b!4960482))

(declare-fun tp!1391314 () Bool)

(declare-fun tp!1391316 () Bool)

(declare-fun e!3100380 () Bool)

(declare-fun b!4960491 () Bool)

(assert (=> b!4960491 (= e!3100380 (and (inv!74892 (left!41826 (c!846494 totalInput!464))) tp!1391316 (inv!74892 (right!42156 (c!846494 totalInput!464))) tp!1391314))))

(declare-fun b!4960493 () Bool)

(declare-fun e!3100379 () Bool)

(declare-fun tp!1391315 () Bool)

(assert (=> b!4960493 (= e!3100379 tp!1391315)))

(declare-fun b!4960492 () Bool)

(declare-fun inv!74899 (IArray!30295) Bool)

(assert (=> b!4960492 (= e!3100380 (and (inv!74899 (xs!18443 (c!846494 totalInput!464))) e!3100379))))

(assert (=> b!4960252 (= tp!1391262 (and (inv!74892 (c!846494 totalInput!464)) e!3100380))))

(assert (= (and b!4960252 (is-Node!15117 (c!846494 totalInput!464))) b!4960491))

(assert (= b!4960492 b!4960493))

(assert (= (and b!4960252 (is-Leaf!25125 (c!846494 totalInput!464))) b!4960492))

(declare-fun m!5985068 () Bool)

(assert (=> b!4960491 m!5985068))

(declare-fun m!5985070 () Bool)

(assert (=> b!4960491 m!5985070))

(declare-fun m!5985072 () Bool)

(assert (=> b!4960492 m!5985072))

(assert (=> b!4960252 m!5984832))

(declare-fun tp!1391317 () Bool)

(declare-fun tp!1391319 () Bool)

(declare-fun e!3100382 () Bool)

(declare-fun b!4960494 () Bool)

(assert (=> b!4960494 (= e!3100382 (and (inv!74892 (left!41826 (c!846494 input!1342))) tp!1391319 (inv!74892 (right!42156 (c!846494 input!1342))) tp!1391317))))

(declare-fun b!4960496 () Bool)

(declare-fun e!3100381 () Bool)

(declare-fun tp!1391318 () Bool)

(assert (=> b!4960496 (= e!3100381 tp!1391318)))

(declare-fun b!4960495 () Bool)

(assert (=> b!4960495 (= e!3100382 (and (inv!74899 (xs!18443 (c!846494 input!1342))) e!3100381))))

(assert (=> b!4960243 (= tp!1391259 (and (inv!74892 (c!846494 input!1342)) e!3100382))))

(assert (= (and b!4960243 (is-Node!15117 (c!846494 input!1342))) b!4960494))

(assert (= b!4960495 b!4960496))

(assert (= (and b!4960243 (is-Leaf!25125 (c!846494 input!1342))) b!4960495))

(declare-fun m!5985074 () Bool)

(assert (=> b!4960494 m!5985074))

(declare-fun m!5985076 () Bool)

(assert (=> b!4960494 m!5985076))

(declare-fun m!5985078 () Bool)

(assert (=> b!4960495 m!5985078))

(assert (=> b!4960243 m!5984834))

(push 1)

(assert (not b!4960374))

(assert (not bm!345998))

(assert (not d!1596192))

(assert (not bm!345992))

(assert (not d!1596218))

(assert (not b!4960480))

(assert (not d!1596226))

(assert (not d!1596228))

(assert (not b!4960373))

(assert (not b!4960496))

(assert (not b!4960435))

(assert (not b!4960436))

(assert (not b!4960310))

(assert (not b_next!133313))

(assert (not b!4960350))

(assert (not d!1596214))

(assert (not b!4960412))

(assert (not b_next!133321))

(assert (not b!4960378))

(assert tp_is_empty!36301)

(assert (not d!1596206))

(assert (not d!1596216))

(assert (not b!4960377))

(assert (not b!4960448))

(assert (not b!4960243))

(assert (not d!1596236))

(assert (not b!4960397))

(assert (not b!4960491))

(assert (not b!4960375))

(assert (not d!1596208))

(assert (not b!4960494))

(assert b_and!347377)

(assert (not b!4960341))

(assert (not b!4960312))

(assert (not bm!345995))

(assert (not b!4960467))

(assert (not d!1596190))

(assert (not d!1596220))

(assert (not b!4960252))

(assert (not b!4960493))

(assert (not b!4960431))

(assert (not b!4960398))

(assert (not b!4960482))

(assert (not b!4960449))

(assert (not b!4960492))

(assert (not b_next!133315))

(assert (not b!4960311))

(assert (not b!4960395))

(assert (not b!4960396))

(assert (not b!4960495))

(assert (not d!1596234))

(assert (not b!4960466))

(assert (not b!4960394))

(assert (not b_next!133323))

(assert (not b!4960432))

(assert (not b!4960481))

(assert b_and!347375)

(assert (not b!4960437))

(assert (not b!4960451))

(assert (not d!1596204))

(assert (not b!4960376))

(assert (not d!1596212))

(assert (not b!4960347))

(assert (not b!4960446))

(assert (not d!1596202))

(assert (not b!4960342))

(assert (not b!4960438))

(assert (not b!4960380))

(assert b_and!347385)

(assert (not d!1596200))

(assert (not b!4960439))

(assert (not b!4960433))

(assert b_and!347383)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133313))

(assert (not b_next!133321))

(assert b_and!347377)

(assert (not b_next!133315))

(assert (not b_next!133323))

(assert b_and!347375)

(assert b_and!347385)

(assert b_and!347383)

(check-sat)

(pop 1)

