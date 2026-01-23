; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522328 () Bool)

(assert start!522328)

(declare-fun b!4955272 () Bool)

(declare-fun b_free!132187 () Bool)

(declare-fun b_next!132977 () Bool)

(assert (=> b!4955272 (= b_free!132187 (not b_next!132977))))

(declare-fun tp!1389455 () Bool)

(declare-fun b_and!347039 () Bool)

(assert (=> b!4955272 (= tp!1389455 b_and!347039)))

(declare-fun b_free!132189 () Bool)

(declare-fun b_next!132979 () Bool)

(assert (=> b!4955272 (= b_free!132189 (not b_next!132979))))

(declare-fun tp!1389451 () Bool)

(declare-fun b_and!347041 () Bool)

(assert (=> b!4955272 (= tp!1389451 b_and!347041)))

(declare-fun b!4955265 () Bool)

(declare-fun tp!1389452 () Bool)

(declare-fun e!3096287 () Bool)

(declare-datatypes ((List!57271 0))(
  ( (Nil!57147) (Cons!57147 (h!63595 (_ BitVec 16)) (t!367837 List!57271)) )
))
(declare-datatypes ((TokenValue!8605 0))(
  ( (FloatLiteralValue!17210 (text!60680 List!57271)) (TokenValueExt!8604 (__x!34503 Int)) (Broken!43025 (value!265825 List!57271)) (Object!8728) (End!8605) (Def!8605) (Underscore!8605) (Match!8605) (Else!8605) (Error!8605) (Case!8605) (If!8605) (Extends!8605) (Abstract!8605) (Class!8605) (Val!8605) (DelimiterValue!17210 (del!8665 List!57271)) (KeywordValue!8611 (value!265826 List!57271)) (CommentValue!17210 (value!265827 List!57271)) (WhitespaceValue!17210 (value!265828 List!57271)) (IndentationValue!8605 (value!265829 List!57271)) (String!64900) (Int32!8605) (Broken!43026 (value!265830 List!57271)) (Boolean!8606) (Unit!148041) (OperatorValue!8608 (op!8665 List!57271)) (IdentifierValue!17210 (value!265831 List!57271)) (IdentifierValue!17211 (value!265832 List!57271)) (WhitespaceValue!17211 (value!265833 List!57271)) (True!17210) (False!17210) (Broken!43027 (value!265834 List!57271)) (Broken!43028 (value!265835 List!57271)) (True!17211) (RightBrace!8605) (RightBracket!8605) (Colon!8605) (Null!8605) (Comma!8605) (LeftBracket!8605) (False!17211) (LeftBrace!8605) (ImaginaryLiteralValue!8605 (text!60681 List!57271)) (StringLiteralValue!25815 (value!265836 List!57271)) (EOFValue!8605 (value!265837 List!57271)) (IdentValue!8605 (value!265838 List!57271)) (DelimiterValue!17211 (value!265839 List!57271)) (DedentValue!8605 (value!265840 List!57271)) (NewLineValue!8605 (value!265841 List!57271)) (IntegerValue!25815 (value!265842 (_ BitVec 32)) (text!60682 List!57271)) (IntegerValue!25816 (value!265843 Int) (text!60683 List!57271)) (Times!8605) (Or!8605) (Equal!8605) (Minus!8605) (Broken!43029 (value!265844 List!57271)) (And!8605) (Div!8605) (LessEqual!8605) (Mod!8605) (Concat!22133) (Not!8605) (Plus!8605) (SpaceValue!8605 (value!265845 List!57271)) (IntegerValue!25817 (value!265846 Int) (text!60684 List!57271)) (StringLiteralValue!25816 (text!60685 List!57271)) (FloatLiteralValue!17211 (text!60686 List!57271)) (BytesLiteralValue!8605 (value!265847 List!57271)) (CommentValue!17211 (value!265848 List!57271)) (StringLiteralValue!25817 (value!265849 List!57271)) (ErrorTokenValue!8605 (msg!8666 List!57271)) )
))
(declare-datatypes ((C!27306 0))(
  ( (C!27307 (val!23019 Int)) )
))
(declare-datatypes ((List!57272 0))(
  ( (Nil!57148) (Cons!57148 (h!63596 C!27306) (t!367838 List!57272)) )
))
(declare-datatypes ((IArray!30155 0))(
  ( (IArray!30156 (innerList!15135 List!57272)) )
))
(declare-datatypes ((Regex!13528 0))(
  ( (ElementMatch!13528 (c!846081 C!27306)) (Concat!22134 (regOne!27568 Regex!13528) (regTwo!27568 Regex!13528)) (EmptyExpr!13528) (Star!13528 (reg!13857 Regex!13528)) (EmptyLang!13528) (Union!13528 (regOne!27569 Regex!13528) (regTwo!27569 Regex!13528)) )
))
(declare-datatypes ((String!64901 0))(
  ( (String!64902 (value!265850 String)) )
))
(declare-datatypes ((Conc!15047 0))(
  ( (Node!15047 (left!41693 Conc!15047) (right!42023 Conc!15047) (csize!30324 Int) (cheight!15258 Int)) (Leaf!25020 (xs!18373 IArray!30155) (csize!30325 Int)) (Empty!15047) )
))
(declare-datatypes ((BalanceConc!29524 0))(
  ( (BalanceConc!29525 (c!846082 Conc!15047)) )
))
(declare-datatypes ((TokenValueInjection!16518 0))(
  ( (TokenValueInjection!16519 (toValue!11246 Int) (toChars!11105 Int)) )
))
(declare-datatypes ((Rule!16390 0))(
  ( (Rule!16391 (regex!8295 Regex!13528) (tag!9159 String!64901) (isSeparator!8295 Bool) (transformation!8295 TokenValueInjection!16518)) )
))
(declare-datatypes ((List!57273 0))(
  ( (Nil!57149) (Cons!57149 (h!63597 Rule!16390) (t!367839 List!57273)) )
))
(declare-fun rulesArg!259 () List!57273)

(declare-fun e!3096285 () Bool)

(declare-fun inv!74533 (String!64901) Bool)

(declare-fun inv!74536 (TokenValueInjection!16518) Bool)

(assert (=> b!4955265 (= e!3096285 (and tp!1389452 (inv!74533 (tag!9159 (h!63597 rulesArg!259))) (inv!74536 (transformation!8295 (h!63597 rulesArg!259))) e!3096287))))

(declare-fun b!4955266 () Bool)

(declare-fun res!2114124 () Bool)

(declare-fun e!3096291 () Bool)

(assert (=> b!4955266 (=> (not res!2114124) (not e!3096291))))

(declare-fun isEmpty!30731 (List!57273) Bool)

(assert (=> b!4955266 (= res!2114124 (not (isEmpty!30731 rulesArg!259)))))

(declare-fun b!4955267 () Bool)

(declare-fun e!3096288 () Bool)

(declare-fun e!3096289 () Bool)

(assert (=> b!4955267 (= e!3096288 e!3096289)))

(declare-fun res!2114125 () Bool)

(assert (=> b!4955267 (=> res!2114125 e!3096289)))

(declare-datatypes ((LexerInterface!7887 0))(
  ( (LexerInterfaceExt!7884 (__x!34504 Int)) (Lexer!7885) )
))
(declare-fun thiss!15247 () LexerInterface!7887)

(declare-fun rulesValidInductive!3198 (LexerInterface!7887 List!57273) Bool)

(assert (=> b!4955267 (= res!2114125 (not (rulesValidInductive!3198 thiss!15247 (t!367839 rulesArg!259))))))

(declare-datatypes ((Token!15090 0))(
  ( (Token!15091 (value!265851 TokenValue!8605) (rule!11509 Rule!16390) (size!37913 Int) (originalCharacters!8576 List!57272)) )
))
(declare-datatypes ((tuple2!61696 0))(
  ( (tuple2!61697 (_1!34151 Token!15090) (_2!34151 BalanceConc!29524)) )
))
(declare-datatypes ((Option!14263 0))(
  ( (None!14262) (Some!14262 (v!50247 tuple2!61696)) )
))
(declare-fun lt!2045099 () Option!14263)

(declare-fun input!1342 () BalanceConc!29524)

(declare-fun totalInput!464 () BalanceConc!29524)

(declare-fun maxPrefixOneRuleZipperSequenceV2!279 (LexerInterface!7887 Rule!16390 BalanceConc!29524 BalanceConc!29524) Option!14263)

(assert (=> b!4955267 (= lt!2045099 (maxPrefixOneRuleZipperSequenceV2!279 thiss!15247 (h!63597 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955269 () Bool)

(declare-fun e!3096284 () Bool)

(declare-fun tp!1389454 () Bool)

(assert (=> b!4955269 (= e!3096284 (and e!3096285 tp!1389454))))

(declare-fun b!4955270 () Bool)

(declare-fun e!3096290 () Bool)

(assert (=> b!4955270 (= e!3096290 (not e!3096288))))

(declare-fun res!2114122 () Bool)

(assert (=> b!4955270 (=> res!2114122 e!3096288)))

(assert (=> b!4955270 (= res!2114122 (or (and (is-Cons!57149 rulesArg!259) (is-Nil!57149 (t!367839 rulesArg!259))) (not (is-Cons!57149 rulesArg!259))))))

(declare-fun lt!2045101 () List!57272)

(declare-fun isPrefix!5148 (List!57272 List!57272) Bool)

(assert (=> b!4955270 (isPrefix!5148 lt!2045101 lt!2045101)))

(declare-datatypes ((Unit!148042 0))(
  ( (Unit!148043) )
))
(declare-fun lt!2045100 () Unit!148042)

(declare-fun lemmaIsPrefixRefl!3472 (List!57272 List!57272) Unit!148042)

(assert (=> b!4955270 (= lt!2045100 (lemmaIsPrefixRefl!3472 lt!2045101 lt!2045101))))

(declare-fun b!4955271 () Bool)

(declare-fun e!3096286 () Bool)

(declare-fun tp!1389456 () Bool)

(declare-fun inv!74537 (Conc!15047) Bool)

(assert (=> b!4955271 (= e!3096286 (and (inv!74537 (c!846082 totalInput!464)) tp!1389456))))

(assert (=> b!4955272 (= e!3096287 (and tp!1389455 tp!1389451))))

(declare-fun b!4955273 () Bool)

(assert (=> b!4955273 (= e!3096291 e!3096290)))

(declare-fun res!2114126 () Bool)

(assert (=> b!4955273 (=> (not res!2114126) (not e!3096290))))

(declare-fun isSuffix!1094 (List!57272 List!57272) Bool)

(declare-fun list!18234 (BalanceConc!29524) List!57272)

(assert (=> b!4955273 (= res!2114126 (isSuffix!1094 lt!2045101 (list!18234 totalInput!464)))))

(assert (=> b!4955273 (= lt!2045101 (list!18234 input!1342))))

(declare-fun b!4955268 () Bool)

(declare-fun e!3096283 () Bool)

(declare-fun tp!1389453 () Bool)

(assert (=> b!4955268 (= e!3096283 (and (inv!74537 (c!846082 input!1342)) tp!1389453))))

(declare-fun res!2114127 () Bool)

(assert (=> start!522328 (=> (not res!2114127) (not e!3096291))))

(assert (=> start!522328 (= res!2114127 (is-Lexer!7885 thiss!15247))))

(assert (=> start!522328 e!3096291))

(assert (=> start!522328 true))

(assert (=> start!522328 e!3096284))

(declare-fun inv!74538 (BalanceConc!29524) Bool)

(assert (=> start!522328 (and (inv!74538 input!1342) e!3096283)))

(assert (=> start!522328 (and (inv!74538 totalInput!464) e!3096286)))

(declare-fun b!4955274 () Bool)

(declare-fun res!2114123 () Bool)

(assert (=> b!4955274 (=> (not res!2114123) (not e!3096291))))

(assert (=> b!4955274 (= res!2114123 (rulesValidInductive!3198 thiss!15247 rulesArg!259))))

(declare-fun b!4955275 () Bool)

(assert (=> b!4955275 (= e!3096289 (not (isEmpty!30731 (t!367839 rulesArg!259))))))

(assert (= (and start!522328 res!2114127) b!4955274))

(assert (= (and b!4955274 res!2114123) b!4955266))

(assert (= (and b!4955266 res!2114124) b!4955273))

(assert (= (and b!4955273 res!2114126) b!4955270))

(assert (= (and b!4955270 (not res!2114122)) b!4955267))

(assert (= (and b!4955267 (not res!2114125)) b!4955275))

(assert (= b!4955265 b!4955272))

(assert (= b!4955269 b!4955265))

(assert (= (and start!522328 (is-Cons!57149 rulesArg!259)) b!4955269))

(assert (= start!522328 b!4955268))

(assert (= start!522328 b!4955271))

(declare-fun m!5979884 () Bool)

(assert (=> b!4955273 m!5979884))

(assert (=> b!4955273 m!5979884))

(declare-fun m!5979886 () Bool)

(assert (=> b!4955273 m!5979886))

(declare-fun m!5979888 () Bool)

(assert (=> b!4955273 m!5979888))

(declare-fun m!5979890 () Bool)

(assert (=> b!4955268 m!5979890))

(declare-fun m!5979892 () Bool)

(assert (=> b!4955265 m!5979892))

(declare-fun m!5979894 () Bool)

(assert (=> b!4955265 m!5979894))

(declare-fun m!5979896 () Bool)

(assert (=> b!4955275 m!5979896))

(declare-fun m!5979898 () Bool)

(assert (=> b!4955274 m!5979898))

(declare-fun m!5979900 () Bool)

(assert (=> b!4955271 m!5979900))

(declare-fun m!5979902 () Bool)

(assert (=> start!522328 m!5979902))

(declare-fun m!5979904 () Bool)

(assert (=> start!522328 m!5979904))

(declare-fun m!5979906 () Bool)

(assert (=> b!4955267 m!5979906))

(declare-fun m!5979908 () Bool)

(assert (=> b!4955267 m!5979908))

(declare-fun m!5979910 () Bool)

(assert (=> b!4955270 m!5979910))

(declare-fun m!5979912 () Bool)

(assert (=> b!4955270 m!5979912))

(declare-fun m!5979914 () Bool)

(assert (=> b!4955266 m!5979914))

(push 1)

(assert (not b!4955268))

(assert (not b_next!132979))

(assert (not b!4955269))

(assert (not b!4955271))

(assert (not b!4955267))

(assert (not b!4955273))

(assert b_and!347041)

(assert (not start!522328))

(assert b_and!347039)

(assert (not b_next!132977))

(assert (not b!4955275))

(assert (not b!4955270))

(assert (not b!4955265))

(assert (not b!4955274))

(assert (not b!4955266))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347039)

(assert b_and!347041)

(assert (not b_next!132977))

(assert (not b_next!132979))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4955326 () Bool)

(declare-fun e!3096334 () Bool)

(declare-fun size!37915 (List!57272) Int)

(assert (=> b!4955326 (= e!3096334 (>= (size!37915 lt!2045101) (size!37915 lt!2045101)))))

(declare-fun d!1595525 () Bool)

(assert (=> d!1595525 e!3096334))

(declare-fun res!2114162 () Bool)

(assert (=> d!1595525 (=> res!2114162 e!3096334)))

(declare-fun lt!2045113 () Bool)

(assert (=> d!1595525 (= res!2114162 (not lt!2045113))))

(declare-fun e!3096333 () Bool)

(assert (=> d!1595525 (= lt!2045113 e!3096333)))

(declare-fun res!2114165 () Bool)

(assert (=> d!1595525 (=> res!2114165 e!3096333)))

(assert (=> d!1595525 (= res!2114165 (is-Nil!57148 lt!2045101))))

(assert (=> d!1595525 (= (isPrefix!5148 lt!2045101 lt!2045101) lt!2045113)))

(declare-fun b!4955324 () Bool)

(declare-fun res!2114164 () Bool)

(declare-fun e!3096332 () Bool)

(assert (=> b!4955324 (=> (not res!2114164) (not e!3096332))))

(declare-fun head!10641 (List!57272) C!27306)

(assert (=> b!4955324 (= res!2114164 (= (head!10641 lt!2045101) (head!10641 lt!2045101)))))

(declare-fun b!4955325 () Bool)

(declare-fun tail!9774 (List!57272) List!57272)

(assert (=> b!4955325 (= e!3096332 (isPrefix!5148 (tail!9774 lt!2045101) (tail!9774 lt!2045101)))))

(declare-fun b!4955323 () Bool)

(assert (=> b!4955323 (= e!3096333 e!3096332)))

(declare-fun res!2114163 () Bool)

(assert (=> b!4955323 (=> (not res!2114163) (not e!3096332))))

(assert (=> b!4955323 (= res!2114163 (not (is-Nil!57148 lt!2045101)))))

(assert (= (and d!1595525 (not res!2114165)) b!4955323))

(assert (= (and b!4955323 res!2114163) b!4955324))

(assert (= (and b!4955324 res!2114164) b!4955325))

(assert (= (and d!1595525 (not res!2114162)) b!4955326))

(declare-fun m!5979948 () Bool)

(assert (=> b!4955326 m!5979948))

(assert (=> b!4955326 m!5979948))

(declare-fun m!5979952 () Bool)

(assert (=> b!4955324 m!5979952))

(assert (=> b!4955324 m!5979952))

(declare-fun m!5979956 () Bool)

(assert (=> b!4955325 m!5979956))

(assert (=> b!4955325 m!5979956))

(assert (=> b!4955325 m!5979956))

(assert (=> b!4955325 m!5979956))

(declare-fun m!5979958 () Bool)

(assert (=> b!4955325 m!5979958))

(assert (=> b!4955270 d!1595525))

(declare-fun d!1595533 () Bool)

(assert (=> d!1595533 (isPrefix!5148 lt!2045101 lt!2045101)))

(declare-fun lt!2045116 () Unit!148042)

(declare-fun choose!36621 (List!57272 List!57272) Unit!148042)

(assert (=> d!1595533 (= lt!2045116 (choose!36621 lt!2045101 lt!2045101))))

(assert (=> d!1595533 (= (lemmaIsPrefixRefl!3472 lt!2045101 lt!2045101) lt!2045116)))

(declare-fun bs!1182495 () Bool)

(assert (= bs!1182495 d!1595533))

(assert (=> bs!1182495 m!5979910))

(declare-fun m!5979960 () Bool)

(assert (=> bs!1182495 m!5979960))

(assert (=> b!4955270 d!1595533))

(declare-fun d!1595535 () Bool)

(assert (=> d!1595535 (= (isEmpty!30731 (t!367839 rulesArg!259)) (is-Nil!57149 (t!367839 rulesArg!259)))))

(assert (=> b!4955275 d!1595535))

(declare-fun d!1595537 () Bool)

(assert (=> d!1595537 (= (inv!74533 (tag!9159 (h!63597 rulesArg!259))) (= (mod (str.len (value!265850 (tag!9159 (h!63597 rulesArg!259)))) 2) 0))))

(assert (=> b!4955265 d!1595537))

(declare-fun d!1595539 () Bool)

(declare-fun res!2114181 () Bool)

(declare-fun e!3096348 () Bool)

(assert (=> d!1595539 (=> (not res!2114181) (not e!3096348))))

(declare-fun semiInverseModEq!3672 (Int Int) Bool)

(assert (=> d!1595539 (= res!2114181 (semiInverseModEq!3672 (toChars!11105 (transformation!8295 (h!63597 rulesArg!259))) (toValue!11246 (transformation!8295 (h!63597 rulesArg!259)))))))

(assert (=> d!1595539 (= (inv!74536 (transformation!8295 (h!63597 rulesArg!259))) e!3096348)))

(declare-fun b!4955344 () Bool)

(declare-fun equivClasses!3520 (Int Int) Bool)

(assert (=> b!4955344 (= e!3096348 (equivClasses!3520 (toChars!11105 (transformation!8295 (h!63597 rulesArg!259))) (toValue!11246 (transformation!8295 (h!63597 rulesArg!259)))))))

(assert (= (and d!1595539 res!2114181) b!4955344))

(declare-fun m!5979970 () Bool)

(assert (=> d!1595539 m!5979970))

(declare-fun m!5979972 () Bool)

(assert (=> b!4955344 m!5979972))

(assert (=> b!4955265 d!1595539))

(declare-fun d!1595543 () Bool)

(assert (=> d!1595543 true))

(declare-fun lt!2045130 () Bool)

(declare-fun lambda!247085 () Int)

(declare-fun forall!13299 (List!57273 Int) Bool)

(assert (=> d!1595543 (= lt!2045130 (forall!13299 rulesArg!259 lambda!247085))))

(declare-fun e!3096362 () Bool)

(assert (=> d!1595543 (= lt!2045130 e!3096362)))

(declare-fun res!2114194 () Bool)

(assert (=> d!1595543 (=> res!2114194 e!3096362)))

(assert (=> d!1595543 (= res!2114194 (not (is-Cons!57149 rulesArg!259)))))

(assert (=> d!1595543 (= (rulesValidInductive!3198 thiss!15247 rulesArg!259) lt!2045130)))

(declare-fun b!4955359 () Bool)

(declare-fun e!3096363 () Bool)

(assert (=> b!4955359 (= e!3096362 e!3096363)))

(declare-fun res!2114195 () Bool)

(assert (=> b!4955359 (=> (not res!2114195) (not e!3096363))))

(declare-fun ruleValid!3773 (LexerInterface!7887 Rule!16390) Bool)

(assert (=> b!4955359 (= res!2114195 (ruleValid!3773 thiss!15247 (h!63597 rulesArg!259)))))

(declare-fun b!4955360 () Bool)

(assert (=> b!4955360 (= e!3096363 (rulesValidInductive!3198 thiss!15247 (t!367839 rulesArg!259)))))

(assert (= (and d!1595543 (not res!2114194)) b!4955359))

(assert (= (and b!4955359 res!2114195) b!4955360))

(declare-fun m!5979992 () Bool)

(assert (=> d!1595543 m!5979992))

(declare-fun m!5979994 () Bool)

(assert (=> b!4955359 m!5979994))

(assert (=> b!4955360 m!5979906))

(assert (=> b!4955274 d!1595543))

(declare-fun d!1595559 () Bool)

(declare-fun isBalanced!4173 (Conc!15047) Bool)

(assert (=> d!1595559 (= (inv!74538 input!1342) (isBalanced!4173 (c!846082 input!1342)))))

(declare-fun bs!1182501 () Bool)

(assert (= bs!1182501 d!1595559))

(declare-fun m!5979996 () Bool)

(assert (=> bs!1182501 m!5979996))

(assert (=> start!522328 d!1595559))

(declare-fun d!1595561 () Bool)

(assert (=> d!1595561 (= (inv!74538 totalInput!464) (isBalanced!4173 (c!846082 totalInput!464)))))

(declare-fun bs!1182502 () Bool)

(assert (= bs!1182502 d!1595561))

(declare-fun m!5979998 () Bool)

(assert (=> bs!1182502 m!5979998))

(assert (=> start!522328 d!1595561))

(declare-fun bs!1182503 () Bool)

(declare-fun d!1595563 () Bool)

(assert (= bs!1182503 (and d!1595563 d!1595543)))

(declare-fun lambda!247086 () Int)

(assert (=> bs!1182503 (= lambda!247086 lambda!247085)))

(assert (=> d!1595563 true))

(declare-fun lt!2045131 () Bool)

(assert (=> d!1595563 (= lt!2045131 (forall!13299 (t!367839 rulesArg!259) lambda!247086))))

(declare-fun e!3096364 () Bool)

(assert (=> d!1595563 (= lt!2045131 e!3096364)))

(declare-fun res!2114196 () Bool)

(assert (=> d!1595563 (=> res!2114196 e!3096364)))

(assert (=> d!1595563 (= res!2114196 (not (is-Cons!57149 (t!367839 rulesArg!259))))))

(assert (=> d!1595563 (= (rulesValidInductive!3198 thiss!15247 (t!367839 rulesArg!259)) lt!2045131)))

(declare-fun b!4955363 () Bool)

(declare-fun e!3096365 () Bool)

(assert (=> b!4955363 (= e!3096364 e!3096365)))

(declare-fun res!2114197 () Bool)

(assert (=> b!4955363 (=> (not res!2114197) (not e!3096365))))

(assert (=> b!4955363 (= res!2114197 (ruleValid!3773 thiss!15247 (h!63597 (t!367839 rulesArg!259))))))

(declare-fun b!4955364 () Bool)

(assert (=> b!4955364 (= e!3096365 (rulesValidInductive!3198 thiss!15247 (t!367839 (t!367839 rulesArg!259))))))

(assert (= (and d!1595563 (not res!2114196)) b!4955363))

(assert (= (and b!4955363 res!2114197) b!4955364))

(declare-fun m!5980000 () Bool)

(assert (=> d!1595563 m!5980000))

(declare-fun m!5980002 () Bool)

(assert (=> b!4955363 m!5980002))

(declare-fun m!5980004 () Bool)

(assert (=> b!4955364 m!5980004))

(assert (=> b!4955267 d!1595563))

(declare-fun b!4955394 () Bool)

(declare-fun e!3096388 () Bool)

(assert (=> b!4955394 (= e!3096388 true)))

(declare-fun b!4955393 () Bool)

(declare-fun e!3096387 () Bool)

(assert (=> b!4955393 (= e!3096387 e!3096388)))

(declare-fun b!4955382 () Bool)

(assert (=> b!4955382 e!3096387))

(assert (= b!4955393 b!4955394))

(assert (= b!4955382 b!4955393))

(declare-fun order!26053 () Int)

(declare-fun order!26051 () Int)

(declare-fun lambda!247094 () Int)

(declare-fun dynLambda!23063 (Int Int) Int)

(declare-fun dynLambda!23064 (Int Int) Int)

(assert (=> b!4955394 (< (dynLambda!23063 order!26051 (toValue!11246 (transformation!8295 (h!63597 rulesArg!259)))) (dynLambda!23064 order!26053 lambda!247094))))

(declare-fun order!26055 () Int)

(declare-fun dynLambda!23065 (Int Int) Int)

(assert (=> b!4955394 (< (dynLambda!23065 order!26055 (toChars!11105 (transformation!8295 (h!63597 rulesArg!259)))) (dynLambda!23064 order!26053 lambda!247094))))

(declare-fun b!4955381 () Bool)

(declare-fun e!3096378 () Bool)

(declare-fun lt!2045162 () List!57272)

(declare-fun matchR!6608 (Regex!13528 List!57272) Bool)

(declare-datatypes ((tuple2!61700 0))(
  ( (tuple2!61701 (_1!34153 List!57272) (_2!34153 List!57272)) )
))
(declare-fun findLongestMatchInner!1831 (Regex!13528 List!57272 Int List!57272 List!57272 Int) tuple2!61700)

(assert (=> b!4955381 (= e!3096378 (matchR!6608 (regex!8295 (h!63597 rulesArg!259)) (_1!34153 (findLongestMatchInner!1831 (regex!8295 (h!63597 rulesArg!259)) Nil!57148 (size!37915 Nil!57148) lt!2045162 lt!2045162 (size!37915 lt!2045162)))))))

(declare-fun e!3096379 () Option!14263)

(declare-datatypes ((tuple2!61702 0))(
  ( (tuple2!61703 (_1!34154 BalanceConc!29524) (_2!34154 BalanceConc!29524)) )
))
(declare-fun lt!2045156 () tuple2!61702)

(declare-fun apply!13876 (TokenValueInjection!16518 BalanceConc!29524) TokenValue!8605)

(declare-fun size!37916 (BalanceConc!29524) Int)

(assert (=> b!4955382 (= e!3096379 (Some!14262 (tuple2!61697 (Token!15091 (apply!13876 (transformation!8295 (h!63597 rulesArg!259)) (_1!34154 lt!2045156)) (h!63597 rulesArg!259) (size!37916 (_1!34154 lt!2045156)) (list!18234 (_1!34154 lt!2045156))) (_2!34154 lt!2045156))))))

(assert (=> b!4955382 (= lt!2045162 (list!18234 input!1342))))

(declare-fun lt!2045160 () Unit!148042)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1792 (Regex!13528 List!57272) Unit!148042)

(assert (=> b!4955382 (= lt!2045160 (longestMatchIsAcceptedByMatchOrIsEmpty!1792 (regex!8295 (h!63597 rulesArg!259)) lt!2045162))))

(declare-fun res!2114210 () Bool)

(declare-fun isEmpty!30733 (List!57272) Bool)

(assert (=> b!4955382 (= res!2114210 (isEmpty!30733 (_1!34153 (findLongestMatchInner!1831 (regex!8295 (h!63597 rulesArg!259)) Nil!57148 (size!37915 Nil!57148) lt!2045162 lt!2045162 (size!37915 lt!2045162)))))))

(assert (=> b!4955382 (=> res!2114210 e!3096378)))

(assert (=> b!4955382 e!3096378))

(declare-fun lt!2045159 () Unit!148042)

(assert (=> b!4955382 (= lt!2045159 lt!2045160)))

(declare-fun lt!2045155 () Unit!148042)

(declare-fun lemmaInv!1310 (TokenValueInjection!16518) Unit!148042)

(assert (=> b!4955382 (= lt!2045155 (lemmaInv!1310 (transformation!8295 (h!63597 rulesArg!259))))))

(declare-fun lt!2045153 () Unit!148042)

(declare-fun ForallOf!1203 (Int BalanceConc!29524) Unit!148042)

(assert (=> b!4955382 (= lt!2045153 (ForallOf!1203 lambda!247094 (_1!34154 lt!2045156)))))

(declare-fun lt!2045157 () Unit!148042)

(declare-fun seqFromList!6008 (List!57272) BalanceConc!29524)

(assert (=> b!4955382 (= lt!2045157 (ForallOf!1203 lambda!247094 (seqFromList!6008 (list!18234 (_1!34154 lt!2045156)))))))

(declare-fun lt!2045158 () Option!14263)

(assert (=> b!4955382 (= lt!2045158 (Some!14262 (tuple2!61697 (Token!15091 (apply!13876 (transformation!8295 (h!63597 rulesArg!259)) (_1!34154 lt!2045156)) (h!63597 rulesArg!259) (size!37916 (_1!34154 lt!2045156)) (list!18234 (_1!34154 lt!2045156))) (_2!34154 lt!2045156))))))

(declare-fun lt!2045161 () Unit!148042)

(declare-fun lemmaEqSameImage!1144 (TokenValueInjection!16518 BalanceConc!29524 BalanceConc!29524) Unit!148042)

(assert (=> b!4955382 (= lt!2045161 (lemmaEqSameImage!1144 (transformation!8295 (h!63597 rulesArg!259)) (_1!34154 lt!2045156) (seqFromList!6008 (list!18234 (_1!34154 lt!2045156)))))))

(declare-fun b!4955383 () Bool)

(assert (=> b!4955383 (= e!3096379 None!14262)))

(declare-fun e!3096381 () Bool)

(declare-fun lt!2045154 () Option!14263)

(declare-fun b!4955384 () Bool)

(declare-fun get!19755 (Option!14263) tuple2!61696)

(declare-datatypes ((tuple2!61704 0))(
  ( (tuple2!61705 (_1!34155 Token!15090) (_2!34155 List!57272)) )
))
(declare-datatypes ((Option!14265 0))(
  ( (None!14264) (Some!14264 (v!50249 tuple2!61704)) )
))
(declare-fun get!19756 (Option!14265) tuple2!61704)

(declare-fun maxPrefixOneRule!3601 (LexerInterface!7887 Rule!16390 List!57272) Option!14265)

(assert (=> b!4955384 (= e!3096381 (= (list!18234 (_2!34151 (get!19755 lt!2045154))) (_2!34155 (get!19756 (maxPrefixOneRule!3601 thiss!15247 (h!63597 rulesArg!259) (list!18234 input!1342))))))))

(declare-fun d!1595565 () Bool)

(declare-fun e!3096380 () Bool)

(assert (=> d!1595565 e!3096380))

(declare-fun res!2114209 () Bool)

(assert (=> d!1595565 (=> (not res!2114209) (not e!3096380))))

(declare-fun isDefined!11214 (Option!14263) Bool)

(declare-fun isDefined!11215 (Option!14265) Bool)

(assert (=> d!1595565 (= res!2114209 (= (isDefined!11214 lt!2045154) (isDefined!11215 (maxPrefixOneRule!3601 thiss!15247 (h!63597 rulesArg!259) (list!18234 input!1342)))))))

(assert (=> d!1595565 (= lt!2045154 e!3096379)))

(declare-fun c!846092 () Bool)

(declare-fun isEmpty!30734 (BalanceConc!29524) Bool)

(assert (=> d!1595565 (= c!846092 (isEmpty!30734 (_1!34154 lt!2045156)))))

(declare-fun findLongestMatchWithZipperSequenceV2!140 (Regex!13528 BalanceConc!29524 BalanceConc!29524) tuple2!61702)

(assert (=> d!1595565 (= lt!2045156 (findLongestMatchWithZipperSequenceV2!140 (regex!8295 (h!63597 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595565 (ruleValid!3773 thiss!15247 (h!63597 rulesArg!259))))

(assert (=> d!1595565 (= (maxPrefixOneRuleZipperSequenceV2!279 thiss!15247 (h!63597 rulesArg!259) input!1342 totalInput!464) lt!2045154)))

(declare-fun b!4955385 () Bool)

(declare-fun e!3096382 () Bool)

(assert (=> b!4955385 (= e!3096382 e!3096381)))

(declare-fun res!2114208 () Bool)

(assert (=> b!4955385 (=> (not res!2114208) (not e!3096381))))

(assert (=> b!4955385 (= res!2114208 (= (_1!34151 (get!19755 lt!2045154)) (_1!34155 (get!19756 (maxPrefixOneRule!3601 thiss!15247 (h!63597 rulesArg!259) (list!18234 input!1342))))))))

(declare-fun b!4955386 () Bool)

(assert (=> b!4955386 (= e!3096380 e!3096382)))

(declare-fun res!2114211 () Bool)

(assert (=> b!4955386 (=> res!2114211 e!3096382)))

(assert (=> b!4955386 (= res!2114211 (not (isDefined!11214 lt!2045154)))))

(assert (= (and d!1595565 c!846092) b!4955383))

(assert (= (and d!1595565 (not c!846092)) b!4955382))

(assert (= (and b!4955382 (not res!2114210)) b!4955381))

(assert (= (and d!1595565 res!2114209) b!4955386))

(assert (= (and b!4955386 (not res!2114211)) b!4955385))

(assert (= (and b!4955385 res!2114208) b!4955384))

(assert (=> b!4955384 m!5979888))

(declare-fun m!5980012 () Bool)

(assert (=> b!4955384 m!5980012))

(assert (=> b!4955384 m!5979888))

(declare-fun m!5980014 () Bool)

(assert (=> b!4955384 m!5980014))

(declare-fun m!5980016 () Bool)

(assert (=> b!4955384 m!5980016))

(assert (=> b!4955384 m!5980014))

(declare-fun m!5980018 () Bool)

(assert (=> b!4955384 m!5980018))

(declare-fun m!5980020 () Bool)

(assert (=> b!4955382 m!5980020))

(declare-fun m!5980022 () Bool)

(assert (=> b!4955382 m!5980022))

(declare-fun m!5980024 () Bool)

(assert (=> b!4955382 m!5980024))

(declare-fun m!5980026 () Bool)

(assert (=> b!4955382 m!5980026))

(declare-fun m!5980028 () Bool)

(assert (=> b!4955382 m!5980028))

(declare-fun m!5980030 () Bool)

(assert (=> b!4955382 m!5980030))

(declare-fun m!5980032 () Bool)

(assert (=> b!4955382 m!5980032))

(assert (=> b!4955382 m!5980020))

(assert (=> b!4955382 m!5980022))

(declare-fun m!5980034 () Bool)

(assert (=> b!4955382 m!5980034))

(declare-fun m!5980036 () Bool)

(assert (=> b!4955382 m!5980036))

(declare-fun m!5980038 () Bool)

(assert (=> b!4955382 m!5980038))

(assert (=> b!4955382 m!5980026))

(assert (=> b!4955382 m!5980026))

(declare-fun m!5980040 () Bool)

(assert (=> b!4955382 m!5980040))

(assert (=> b!4955382 m!5979888))

(assert (=> b!4955382 m!5980038))

(declare-fun m!5980042 () Bool)

(assert (=> b!4955382 m!5980042))

(declare-fun m!5980044 () Bool)

(assert (=> b!4955382 m!5980044))

(declare-fun m!5980046 () Bool)

(assert (=> b!4955386 m!5980046))

(assert (=> b!4955385 m!5980016))

(assert (=> b!4955385 m!5979888))

(assert (=> b!4955385 m!5979888))

(assert (=> b!4955385 m!5980014))

(assert (=> b!4955385 m!5980014))

(assert (=> b!4955385 m!5980018))

(assert (=> b!4955381 m!5980020))

(assert (=> b!4955381 m!5980022))

(assert (=> b!4955381 m!5980020))

(assert (=> b!4955381 m!5980022))

(assert (=> b!4955381 m!5980034))

(declare-fun m!5980048 () Bool)

(assert (=> b!4955381 m!5980048))

(assert (=> d!1595565 m!5979888))

(assert (=> d!1595565 m!5980046))

(assert (=> d!1595565 m!5980014))

(declare-fun m!5980050 () Bool)

(assert (=> d!1595565 m!5980050))

(declare-fun m!5980052 () Bool)

(assert (=> d!1595565 m!5980052))

(declare-fun m!5980054 () Bool)

(assert (=> d!1595565 m!5980054))

(assert (=> d!1595565 m!5979994))

(assert (=> d!1595565 m!5979888))

(assert (=> d!1595565 m!5980014))

(assert (=> b!4955267 d!1595565))

(declare-fun d!1595569 () Bool)

(declare-fun c!846095 () Bool)

(assert (=> d!1595569 (= c!846095 (is-Node!15047 (c!846082 input!1342)))))

(declare-fun e!3096393 () Bool)

(assert (=> d!1595569 (= (inv!74537 (c!846082 input!1342)) e!3096393)))

(declare-fun b!4955401 () Bool)

(declare-fun inv!74542 (Conc!15047) Bool)

(assert (=> b!4955401 (= e!3096393 (inv!74542 (c!846082 input!1342)))))

(declare-fun b!4955402 () Bool)

(declare-fun e!3096394 () Bool)

(assert (=> b!4955402 (= e!3096393 e!3096394)))

(declare-fun res!2114214 () Bool)

(assert (=> b!4955402 (= res!2114214 (not (is-Leaf!25020 (c!846082 input!1342))))))

(assert (=> b!4955402 (=> res!2114214 e!3096394)))

(declare-fun b!4955403 () Bool)

(declare-fun inv!74544 (Conc!15047) Bool)

(assert (=> b!4955403 (= e!3096394 (inv!74544 (c!846082 input!1342)))))

(assert (= (and d!1595569 c!846095) b!4955401))

(assert (= (and d!1595569 (not c!846095)) b!4955402))

(assert (= (and b!4955402 (not res!2114214)) b!4955403))

(declare-fun m!5980056 () Bool)

(assert (=> b!4955401 m!5980056))

(declare-fun m!5980058 () Bool)

(assert (=> b!4955403 m!5980058))

(assert (=> b!4955268 d!1595569))

(declare-fun d!1595571 () Bool)

(declare-fun e!3096397 () Bool)

(assert (=> d!1595571 e!3096397))

(declare-fun res!2114217 () Bool)

(assert (=> d!1595571 (=> res!2114217 e!3096397)))

(declare-fun lt!2045165 () Bool)

(assert (=> d!1595571 (= res!2114217 (not lt!2045165))))

(declare-fun drop!2321 (List!57272 Int) List!57272)

(assert (=> d!1595571 (= lt!2045165 (= lt!2045101 (drop!2321 (list!18234 totalInput!464) (- (size!37915 (list!18234 totalInput!464)) (size!37915 lt!2045101)))))))

(assert (=> d!1595571 (= (isSuffix!1094 lt!2045101 (list!18234 totalInput!464)) lt!2045165)))

(declare-fun b!4955406 () Bool)

(assert (=> b!4955406 (= e!3096397 (>= (size!37915 (list!18234 totalInput!464)) (size!37915 lt!2045101)))))

(assert (= (and d!1595571 (not res!2114217)) b!4955406))

(assert (=> d!1595571 m!5979884))

(declare-fun m!5980060 () Bool)

(assert (=> d!1595571 m!5980060))

(assert (=> d!1595571 m!5979948))

(assert (=> d!1595571 m!5979884))

(declare-fun m!5980062 () Bool)

(assert (=> d!1595571 m!5980062))

(assert (=> b!4955406 m!5979884))

(assert (=> b!4955406 m!5980060))

(assert (=> b!4955406 m!5979948))

(assert (=> b!4955273 d!1595571))

(declare-fun d!1595573 () Bool)

(declare-fun list!18236 (Conc!15047) List!57272)

(assert (=> d!1595573 (= (list!18234 totalInput!464) (list!18236 (c!846082 totalInput!464)))))

(declare-fun bs!1182504 () Bool)

(assert (= bs!1182504 d!1595573))

(declare-fun m!5980064 () Bool)

(assert (=> bs!1182504 m!5980064))

(assert (=> b!4955273 d!1595573))

(declare-fun d!1595575 () Bool)

(assert (=> d!1595575 (= (list!18234 input!1342) (list!18236 (c!846082 input!1342)))))

(declare-fun bs!1182505 () Bool)

(assert (= bs!1182505 d!1595575))

(declare-fun m!5980066 () Bool)

(assert (=> bs!1182505 m!5980066))

(assert (=> b!4955273 d!1595575))

(declare-fun d!1595577 () Bool)

(assert (=> d!1595577 (= (isEmpty!30731 rulesArg!259) (is-Nil!57149 rulesArg!259))))

(assert (=> b!4955266 d!1595577))

(declare-fun d!1595579 () Bool)

(declare-fun c!846096 () Bool)

(assert (=> d!1595579 (= c!846096 (is-Node!15047 (c!846082 totalInput!464)))))

(declare-fun e!3096398 () Bool)

(assert (=> d!1595579 (= (inv!74537 (c!846082 totalInput!464)) e!3096398)))

(declare-fun b!4955407 () Bool)

(assert (=> b!4955407 (= e!3096398 (inv!74542 (c!846082 totalInput!464)))))

(declare-fun b!4955408 () Bool)

(declare-fun e!3096399 () Bool)

(assert (=> b!4955408 (= e!3096398 e!3096399)))

(declare-fun res!2114218 () Bool)

(assert (=> b!4955408 (= res!2114218 (not (is-Leaf!25020 (c!846082 totalInput!464))))))

(assert (=> b!4955408 (=> res!2114218 e!3096399)))

(declare-fun b!4955409 () Bool)

(assert (=> b!4955409 (= e!3096399 (inv!74544 (c!846082 totalInput!464)))))

(assert (= (and d!1595579 c!846096) b!4955407))

(assert (= (and d!1595579 (not c!846096)) b!4955408))

(assert (= (and b!4955408 (not res!2114218)) b!4955409))

(declare-fun m!5980068 () Bool)

(assert (=> b!4955407 m!5980068))

(declare-fun m!5980070 () Bool)

(assert (=> b!4955409 m!5980070))

(assert (=> b!4955271 d!1595579))

(declare-fun b!4955420 () Bool)

(declare-fun e!3096402 () Bool)

(declare-fun tp_is_empty!36273 () Bool)

(assert (=> b!4955420 (= e!3096402 tp_is_empty!36273)))

(declare-fun b!4955423 () Bool)

(declare-fun tp!1389486 () Bool)

(declare-fun tp!1389485 () Bool)

(assert (=> b!4955423 (= e!3096402 (and tp!1389486 tp!1389485))))

(declare-fun b!4955421 () Bool)

(declare-fun tp!1389488 () Bool)

(declare-fun tp!1389489 () Bool)

(assert (=> b!4955421 (= e!3096402 (and tp!1389488 tp!1389489))))

(declare-fun b!4955422 () Bool)

(declare-fun tp!1389487 () Bool)

(assert (=> b!4955422 (= e!3096402 tp!1389487)))

(assert (=> b!4955265 (= tp!1389452 e!3096402)))

(assert (= (and b!4955265 (is-ElementMatch!13528 (regex!8295 (h!63597 rulesArg!259)))) b!4955420))

(assert (= (and b!4955265 (is-Concat!22134 (regex!8295 (h!63597 rulesArg!259)))) b!4955421))

(assert (= (and b!4955265 (is-Star!13528 (regex!8295 (h!63597 rulesArg!259)))) b!4955422))

(assert (= (and b!4955265 (is-Union!13528 (regex!8295 (h!63597 rulesArg!259)))) b!4955423))

(declare-fun b!4955434 () Bool)

(declare-fun b_free!132195 () Bool)

(declare-fun b_next!132985 () Bool)

(assert (=> b!4955434 (= b_free!132195 (not b_next!132985))))

(declare-fun tp!1389501 () Bool)

(declare-fun b_and!347047 () Bool)

(assert (=> b!4955434 (= tp!1389501 b_and!347047)))

(declare-fun b_free!132197 () Bool)

(declare-fun b_next!132987 () Bool)

(assert (=> b!4955434 (= b_free!132197 (not b_next!132987))))

(declare-fun tp!1389499 () Bool)

(declare-fun b_and!347049 () Bool)

(assert (=> b!4955434 (= tp!1389499 b_and!347049)))

(declare-fun e!3096413 () Bool)

(assert (=> b!4955434 (= e!3096413 (and tp!1389501 tp!1389499))))

(declare-fun b!4955433 () Bool)

(declare-fun e!3096412 () Bool)

(declare-fun tp!1389500 () Bool)

(assert (=> b!4955433 (= e!3096412 (and tp!1389500 (inv!74533 (tag!9159 (h!63597 (t!367839 rulesArg!259)))) (inv!74536 (transformation!8295 (h!63597 (t!367839 rulesArg!259)))) e!3096413))))

(declare-fun b!4955432 () Bool)

(declare-fun e!3096414 () Bool)

(declare-fun tp!1389498 () Bool)

(assert (=> b!4955432 (= e!3096414 (and e!3096412 tp!1389498))))

(assert (=> b!4955269 (= tp!1389454 e!3096414)))

(assert (= b!4955433 b!4955434))

(assert (= b!4955432 b!4955433))

(assert (= (and b!4955269 (is-Cons!57149 (t!367839 rulesArg!259))) b!4955432))

(declare-fun m!5980072 () Bool)

(assert (=> b!4955433 m!5980072))

(declare-fun m!5980074 () Bool)

(assert (=> b!4955433 m!5980074))

(declare-fun e!3096419 () Bool)

(declare-fun tp!1389510 () Bool)

(declare-fun tp!1389509 () Bool)

(declare-fun b!4955443 () Bool)

(assert (=> b!4955443 (= e!3096419 (and (inv!74537 (left!41693 (c!846082 input!1342))) tp!1389510 (inv!74537 (right!42023 (c!846082 input!1342))) tp!1389509))))

(declare-fun b!4955445 () Bool)

(declare-fun e!3096420 () Bool)

(declare-fun tp!1389508 () Bool)

(assert (=> b!4955445 (= e!3096420 tp!1389508)))

(declare-fun b!4955444 () Bool)

(declare-fun inv!74546 (IArray!30155) Bool)

(assert (=> b!4955444 (= e!3096419 (and (inv!74546 (xs!18373 (c!846082 input!1342))) e!3096420))))

(assert (=> b!4955268 (= tp!1389453 (and (inv!74537 (c!846082 input!1342)) e!3096419))))

(assert (= (and b!4955268 (is-Node!15047 (c!846082 input!1342))) b!4955443))

(assert (= b!4955444 b!4955445))

(assert (= (and b!4955268 (is-Leaf!25020 (c!846082 input!1342))) b!4955444))

(declare-fun m!5980076 () Bool)

(assert (=> b!4955443 m!5980076))

(declare-fun m!5980078 () Bool)

(assert (=> b!4955443 m!5980078))

(declare-fun m!5980080 () Bool)

(assert (=> b!4955444 m!5980080))

(assert (=> b!4955268 m!5979890))

(declare-fun tp!1389513 () Bool)

(declare-fun e!3096421 () Bool)

(declare-fun tp!1389512 () Bool)

(declare-fun b!4955446 () Bool)

(assert (=> b!4955446 (= e!3096421 (and (inv!74537 (left!41693 (c!846082 totalInput!464))) tp!1389513 (inv!74537 (right!42023 (c!846082 totalInput!464))) tp!1389512))))

(declare-fun b!4955448 () Bool)

(declare-fun e!3096422 () Bool)

(declare-fun tp!1389511 () Bool)

(assert (=> b!4955448 (= e!3096422 tp!1389511)))

(declare-fun b!4955447 () Bool)

(assert (=> b!4955447 (= e!3096421 (and (inv!74546 (xs!18373 (c!846082 totalInput!464))) e!3096422))))

(assert (=> b!4955271 (= tp!1389456 (and (inv!74537 (c!846082 totalInput!464)) e!3096421))))

(assert (= (and b!4955271 (is-Node!15047 (c!846082 totalInput!464))) b!4955446))

(assert (= b!4955447 b!4955448))

(assert (= (and b!4955271 (is-Leaf!25020 (c!846082 totalInput!464))) b!4955447))

(declare-fun m!5980082 () Bool)

(assert (=> b!4955446 m!5980082))

(declare-fun m!5980084 () Bool)

(assert (=> b!4955446 m!5980084))

(declare-fun m!5980086 () Bool)

(assert (=> b!4955447 m!5980086))

(assert (=> b!4955271 m!5979900))

(push 1)

(assert (not b!4955382))

(assert (not d!1595561))

(assert (not b!4955433))

(assert (not b_next!132979))

(assert (not d!1595575))

(assert (not b!4955271))

(assert (not b!4955386))

(assert (not b!4955421))

(assert (not d!1595565))

(assert (not b_next!132987))

(assert tp_is_empty!36273)

(assert (not b_next!132977))

(assert (not b!4955364))

(assert (not d!1595571))

(assert (not b_next!132985))

(assert (not b!4955448))

(assert (not b!4955446))

(assert (not b!4955360))

(assert (not d!1595573))

(assert (not b!4955423))

(assert (not d!1595539))

(assert b_and!347047)

(assert (not b!4955268))

(assert (not b!4955384))

(assert (not b!4955403))

(assert (not b!4955385))

(assert (not b!4955445))

(assert (not b!4955344))

(assert (not b!4955422))

(assert (not b!4955407))

(assert (not b!4955401))

(assert (not b!4955443))

(assert (not b!4955326))

(assert (not d!1595543))

(assert (not d!1595559))

(assert (not b!4955381))

(assert (not d!1595563))

(assert (not b!4955444))

(assert (not d!1595533))

(assert (not b!4955409))

(assert (not b!4955447))

(assert (not b!4955363))

(assert b_and!347049)

(assert b_and!347041)

(assert (not b!4955359))

(assert b_and!347039)

(assert (not b!4955432))

(assert (not b!4955325))

(assert (not b!4955324))

(assert (not b!4955406))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132985))

(assert b_and!347047)

(assert (not b_next!132979))

(assert (not b_next!132987))

(assert b_and!347039)

(assert (not b_next!132977))

(assert b_and!347049)

(assert b_and!347041)

(check-sat)

(pop 1)

