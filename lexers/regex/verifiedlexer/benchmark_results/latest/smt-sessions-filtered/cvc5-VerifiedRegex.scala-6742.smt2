; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!352172 () Bool)

(assert start!352172)

(declare-fun b!3750902 () Bool)

(declare-fun b_free!100389 () Bool)

(declare-fun b_next!101093 () Bool)

(assert (=> b!3750902 (= b_free!100389 (not b_next!101093))))

(declare-fun tp!1145365 () Bool)

(declare-fun b_and!278767 () Bool)

(assert (=> b!3750902 (= tp!1145365 b_and!278767)))

(declare-fun b_free!100391 () Bool)

(declare-fun b_next!101095 () Bool)

(assert (=> b!3750902 (= b_free!100391 (not b_next!101095))))

(declare-fun tp!1145364 () Bool)

(declare-fun b_and!278769 () Bool)

(assert (=> b!3750902 (= tp!1145364 b_and!278769)))

(declare-fun b!3750913 () Bool)

(declare-fun e!2320150 () Bool)

(assert (=> b!3750913 (= e!2320150 true)))

(declare-fun b!3750912 () Bool)

(declare-fun e!2320149 () Bool)

(assert (=> b!3750912 (= e!2320149 e!2320150)))

(declare-fun b!3750911 () Bool)

(declare-fun e!2320148 () Bool)

(assert (=> b!3750911 (= e!2320148 e!2320149)))

(declare-fun b!3750899 () Bool)

(assert (=> b!3750899 e!2320148))

(assert (= b!3750912 b!3750913))

(assert (= b!3750911 b!3750912))

(declare-datatypes ((List!40115 0))(
  ( (Nil!39991) (Cons!39991 (h!45411 (_ BitVec 16)) (t!303082 List!40115)) )
))
(declare-datatypes ((TokenValue!6347 0))(
  ( (FloatLiteralValue!12694 (text!44874 List!40115)) (TokenValueExt!6346 (__x!24911 Int)) (Broken!31735 (value!194875 List!40115)) (Object!6470) (End!6347) (Def!6347) (Underscore!6347) (Match!6347) (Else!6347) (Error!6347) (Case!6347) (If!6347) (Extends!6347) (Abstract!6347) (Class!6347) (Val!6347) (DelimiterValue!12694 (del!6407 List!40115)) (KeywordValue!6353 (value!194876 List!40115)) (CommentValue!12694 (value!194877 List!40115)) (WhitespaceValue!12694 (value!194878 List!40115)) (IndentationValue!6347 (value!194879 List!40115)) (String!45362) (Int32!6347) (Broken!31736 (value!194880 List!40115)) (Boolean!6348) (Unit!57726) (OperatorValue!6350 (op!6407 List!40115)) (IdentifierValue!12694 (value!194881 List!40115)) (IdentifierValue!12695 (value!194882 List!40115)) (WhitespaceValue!12695 (value!194883 List!40115)) (True!12694) (False!12694) (Broken!31737 (value!194884 List!40115)) (Broken!31738 (value!194885 List!40115)) (True!12695) (RightBrace!6347) (RightBracket!6347) (Colon!6347) (Null!6347) (Comma!6347) (LeftBracket!6347) (False!12695) (LeftBrace!6347) (ImaginaryLiteralValue!6347 (text!44875 List!40115)) (StringLiteralValue!19041 (value!194886 List!40115)) (EOFValue!6347 (value!194887 List!40115)) (IdentValue!6347 (value!194888 List!40115)) (DelimiterValue!12695 (value!194889 List!40115)) (DedentValue!6347 (value!194890 List!40115)) (NewLineValue!6347 (value!194891 List!40115)) (IntegerValue!19041 (value!194892 (_ BitVec 32)) (text!44876 List!40115)) (IntegerValue!19042 (value!194893 Int) (text!44877 List!40115)) (Times!6347) (Or!6347) (Equal!6347) (Minus!6347) (Broken!31739 (value!194894 List!40115)) (And!6347) (Div!6347) (LessEqual!6347) (Mod!6347) (Concat!17369) (Not!6347) (Plus!6347) (SpaceValue!6347 (value!194895 List!40115)) (IntegerValue!19043 (value!194896 Int) (text!44878 List!40115)) (StringLiteralValue!19042 (text!44879 List!40115)) (FloatLiteralValue!12695 (text!44880 List!40115)) (BytesLiteralValue!6347 (value!194897 List!40115)) (CommentValue!12695 (value!194898 List!40115)) (StringLiteralValue!19043 (value!194899 List!40115)) (ErrorTokenValue!6347 (msg!6408 List!40115)) )
))
(declare-datatypes ((C!22230 0))(
  ( (C!22231 (val!13163 Int)) )
))
(declare-datatypes ((Regex!11022 0))(
  ( (ElementMatch!11022 (c!649210 C!22230)) (Concat!17370 (regOne!22556 Regex!11022) (regTwo!22556 Regex!11022)) (EmptyExpr!11022) (Star!11022 (reg!11351 Regex!11022)) (EmptyLang!11022) (Union!11022 (regOne!22557 Regex!11022) (regTwo!22557 Regex!11022)) )
))
(declare-datatypes ((String!45363 0))(
  ( (String!45364 (value!194900 String)) )
))
(declare-datatypes ((List!40116 0))(
  ( (Nil!39992) (Cons!39992 (h!45412 C!22230) (t!303083 List!40116)) )
))
(declare-datatypes ((IArray!24449 0))(
  ( (IArray!24450 (innerList!12282 List!40116)) )
))
(declare-datatypes ((Conc!12222 0))(
  ( (Node!12222 (left!30954 Conc!12222) (right!31284 Conc!12222) (csize!24674 Int) (cheight!12433 Int)) (Leaf!18965 (xs!15424 IArray!24449) (csize!24675 Int)) (Empty!12222) )
))
(declare-datatypes ((BalanceConc!24058 0))(
  ( (BalanceConc!24059 (c!649211 Conc!12222)) )
))
(declare-datatypes ((TokenValueInjection!12122 0))(
  ( (TokenValueInjection!12123 (toValue!8465 Int) (toChars!8324 Int)) )
))
(declare-datatypes ((Rule!12034 0))(
  ( (Rule!12035 (regex!6117 Regex!11022) (tag!6977 String!45363) (isSeparator!6117 Bool) (transformation!6117 TokenValueInjection!12122)) )
))
(declare-datatypes ((List!40117 0))(
  ( (Nil!39993) (Cons!39993 (h!45413 Rule!12034) (t!303084 List!40117)) )
))
(declare-fun rs!167 () List!40117)

(assert (= (and b!3750899 (is-Cons!39993 rs!167)) b!3750911))

(declare-fun order!21859 () Int)

(declare-fun lambda!125242 () Int)

(declare-fun order!21861 () Int)

(declare-fun dynLambda!17286 (Int Int) Int)

(declare-fun dynLambda!17287 (Int Int) Int)

(assert (=> b!3750913 (< (dynLambda!17286 order!21859 (toValue!8465 (transformation!6117 (h!45413 rs!167)))) (dynLambda!17287 order!21861 lambda!125242))))

(declare-fun order!21863 () Int)

(declare-fun dynLambda!17288 (Int Int) Int)

(assert (=> b!3750913 (< (dynLambda!17288 order!21863 (toChars!8324 (transformation!6117 (h!45413 rs!167)))) (dynLambda!17287 order!21861 lambda!125242))))

(assert (=> b!3750899 true))

(declare-fun tp!1145363 () Bool)

(declare-fun e!2320138 () Bool)

(declare-fun e!2320135 () Bool)

(declare-fun b!3750895 () Bool)

(declare-fun inv!53502 (String!45363) Bool)

(declare-fun inv!53505 (TokenValueInjection!12122) Bool)

(assert (=> b!3750895 (= e!2320135 (and tp!1145363 (inv!53502 (tag!6977 (h!45413 rs!167))) (inv!53505 (transformation!6117 (h!45413 rs!167))) e!2320138))))

(declare-fun lt!1299837 () Bool)

(declare-fun e!2320137 () Bool)

(declare-datatypes ((LexerInterface!5706 0))(
  ( (LexerInterfaceExt!5703 (__x!24912 Int)) (Lexer!5704) )
))
(declare-fun thiss!10925 () LexerInterface!5706)

(declare-datatypes ((Token!11372 0))(
  ( (Token!11373 (value!194901 TokenValue!6347) (rule!8881 Rule!12034) (size!30093 Int) (originalCharacters!6717 List!40116)) )
))
(declare-datatypes ((List!40118 0))(
  ( (Nil!39994) (Cons!39994 (h!45414 Token!11372) (t!303085 List!40118)) )
))
(declare-fun lt!1299838 () List!40118)

(declare-fun b!3750896 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1930 (LexerInterface!5706 List!40117 List!40118) Bool)

(assert (=> b!3750896 (= e!2320137 (not (= lt!1299837 (rulesProduceEachTokenIndividuallyList!1930 thiss!10925 rs!167 lt!1299838))))))

(declare-fun res!1520211 () Bool)

(declare-fun e!2320141 () Bool)

(assert (=> start!352172 (=> (not res!1520211) (not e!2320141))))

(assert (=> start!352172 (= res!1520211 (is-Lexer!5704 thiss!10925))))

(assert (=> start!352172 e!2320141))

(assert (=> start!352172 true))

(declare-fun e!2320140 () Bool)

(assert (=> start!352172 e!2320140))

(declare-datatypes ((IArray!24451 0))(
  ( (IArray!24452 (innerList!12283 List!40118)) )
))
(declare-datatypes ((Conc!12223 0))(
  ( (Node!12223 (left!30955 Conc!12223) (right!31285 Conc!12223) (csize!24676 Int) (cheight!12434 Int)) (Leaf!18966 (xs!15425 IArray!24451) (csize!24677 Int)) (Empty!12223) )
))
(declare-datatypes ((BalanceConc!24060 0))(
  ( (BalanceConc!24061 (c!649212 Conc!12223)) )
))
(declare-fun ts!107 () BalanceConc!24060)

(declare-fun e!2320136 () Bool)

(declare-fun inv!53506 (BalanceConc!24060) Bool)

(assert (=> start!352172 (and (inv!53506 ts!107) e!2320136)))

(declare-fun b!3750897 () Bool)

(declare-fun res!1520212 () Bool)

(assert (=> b!3750897 (=> (not res!1520212) (not e!2320141))))

(declare-fun isEmpty!23554 (List!40117) Bool)

(assert (=> b!3750897 (= res!1520212 (not (isEmpty!23554 rs!167)))))

(declare-fun b!3750898 () Bool)

(declare-fun tp!1145361 () Bool)

(declare-fun inv!53507 (Conc!12223) Bool)

(assert (=> b!3750898 (= e!2320136 (and (inv!53507 (c!649212 ts!107)) tp!1145361))))

(assert (=> b!3750899 (= e!2320141 e!2320137)))

(declare-fun res!1520210 () Bool)

(assert (=> b!3750899 (=> res!1520210 e!2320137)))

(declare-fun forall!8209 (List!40118 Int) Bool)

(assert (=> b!3750899 (= res!1520210 (not (= lt!1299837 (forall!8209 lt!1299838 lambda!125242))))))

(declare-fun list!14722 (BalanceConc!24060) List!40118)

(assert (=> b!3750899 (= lt!1299838 (list!14722 ts!107))))

(declare-fun forall!8210 (BalanceConc!24060 Int) Bool)

(assert (=> b!3750899 (= lt!1299837 (forall!8210 ts!107 lambda!125242))))

(declare-fun b!3750900 () Bool)

(declare-fun res!1520213 () Bool)

(assert (=> b!3750900 (=> (not res!1520213) (not e!2320141))))

(declare-fun rulesInvariant!5103 (LexerInterface!5706 List!40117) Bool)

(assert (=> b!3750900 (= res!1520213 (rulesInvariant!5103 thiss!10925 rs!167))))

(declare-fun b!3750901 () Bool)

(declare-fun tp!1145362 () Bool)

(assert (=> b!3750901 (= e!2320140 (and e!2320135 tp!1145362))))

(assert (=> b!3750902 (= e!2320138 (and tp!1145365 tp!1145364))))

(assert (= (and start!352172 res!1520211) b!3750897))

(assert (= (and b!3750897 res!1520212) b!3750900))

(assert (= (and b!3750900 res!1520213) b!3750899))

(assert (= (and b!3750899 (not res!1520210)) b!3750896))

(assert (= b!3750895 b!3750902))

(assert (= b!3750901 b!3750895))

(assert (= (and start!352172 (is-Cons!39993 rs!167)) b!3750901))

(assert (= start!352172 b!3750898))

(declare-fun m!4241817 () Bool)

(assert (=> b!3750895 m!4241817))

(declare-fun m!4241819 () Bool)

(assert (=> b!3750895 m!4241819))

(declare-fun m!4241821 () Bool)

(assert (=> b!3750897 m!4241821))

(declare-fun m!4241823 () Bool)

(assert (=> b!3750896 m!4241823))

(declare-fun m!4241825 () Bool)

(assert (=> b!3750900 m!4241825))

(declare-fun m!4241827 () Bool)

(assert (=> b!3750898 m!4241827))

(declare-fun m!4241829 () Bool)

(assert (=> start!352172 m!4241829))

(declare-fun m!4241831 () Bool)

(assert (=> b!3750899 m!4241831))

(declare-fun m!4241833 () Bool)

(assert (=> b!3750899 m!4241833))

(declare-fun m!4241835 () Bool)

(assert (=> b!3750899 m!4241835))

(push 1)

(assert (not b!3750897))

(assert (not b_next!101093))

(assert (not b!3750911))

(assert (not b!3750900))

(assert (not start!352172))

(assert (not b_next!101095))

(assert b_and!278769)

(assert (not b!3750895))

(assert (not b!3750896))

(assert b_and!278767)

(assert (not b!3750901))

(assert (not b!3750898))

(assert (not b!3750899))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278769)

(assert b_and!278767)

(assert (not b_next!101095))

(assert (not b_next!101093))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1094115 () Bool)

(declare-fun res!1520231 () Bool)

(declare-fun e!2320189 () Bool)

(assert (=> d!1094115 (=> (not res!1520231) (not e!2320189))))

(declare-fun rulesValid!2376 (LexerInterface!5706 List!40117) Bool)

(assert (=> d!1094115 (= res!1520231 (rulesValid!2376 thiss!10925 rs!167))))

(assert (=> d!1094115 (= (rulesInvariant!5103 thiss!10925 rs!167) e!2320189)))

(declare-fun b!3750964 () Bool)

(declare-datatypes ((List!40123 0))(
  ( (Nil!39999) (Cons!39999 (h!45419 String!45363) (t!303096 List!40123)) )
))
(declare-fun noDuplicateTag!2377 (LexerInterface!5706 List!40117 List!40123) Bool)

(assert (=> b!3750964 (= e!2320189 (noDuplicateTag!2377 thiss!10925 rs!167 Nil!39999))))

(assert (= (and d!1094115 res!1520231) b!3750964))

(declare-fun m!4241861 () Bool)

(assert (=> d!1094115 m!4241861))

(declare-fun m!4241863 () Bool)

(assert (=> b!3750964 m!4241863))

(assert (=> b!3750900 d!1094115))

(declare-fun d!1094119 () Bool)

(declare-fun res!1520236 () Bool)

(declare-fun e!2320194 () Bool)

(assert (=> d!1094119 (=> res!1520236 e!2320194)))

(assert (=> d!1094119 (= res!1520236 (is-Nil!39994 lt!1299838))))

(assert (=> d!1094119 (= (forall!8209 lt!1299838 lambda!125242) e!2320194)))

(declare-fun b!3750969 () Bool)

(declare-fun e!2320195 () Bool)

(assert (=> b!3750969 (= e!2320194 e!2320195)))

(declare-fun res!1520237 () Bool)

(assert (=> b!3750969 (=> (not res!1520237) (not e!2320195))))

(declare-fun dynLambda!17292 (Int Token!11372) Bool)

(assert (=> b!3750969 (= res!1520237 (dynLambda!17292 lambda!125242 (h!45414 lt!1299838)))))

(declare-fun b!3750970 () Bool)

(assert (=> b!3750970 (= e!2320195 (forall!8209 (t!303085 lt!1299838) lambda!125242))))

(assert (= (and d!1094119 (not res!1520236)) b!3750969))

(assert (= (and b!3750969 res!1520237) b!3750970))

(declare-fun b_lambda!109963 () Bool)

(assert (=> (not b_lambda!109963) (not b!3750969)))

(declare-fun m!4241865 () Bool)

(assert (=> b!3750969 m!4241865))

(declare-fun m!4241867 () Bool)

(assert (=> b!3750970 m!4241867))

(assert (=> b!3750899 d!1094119))

(declare-fun d!1094121 () Bool)

(declare-fun list!14724 (Conc!12223) List!40118)

(assert (=> d!1094121 (= (list!14722 ts!107) (list!14724 (c!649212 ts!107)))))

(declare-fun bs!575374 () Bool)

(assert (= bs!575374 d!1094121))

(declare-fun m!4241869 () Bool)

(assert (=> bs!575374 m!4241869))

(assert (=> b!3750899 d!1094121))

(declare-fun d!1094123 () Bool)

(declare-fun lt!1299847 () Bool)

(assert (=> d!1094123 (= lt!1299847 (forall!8209 (list!14722 ts!107) lambda!125242))))

(declare-fun forall!8213 (Conc!12223 Int) Bool)

(assert (=> d!1094123 (= lt!1299847 (forall!8213 (c!649212 ts!107) lambda!125242))))

(assert (=> d!1094123 (= (forall!8210 ts!107 lambda!125242) lt!1299847)))

(declare-fun bs!575375 () Bool)

(assert (= bs!575375 d!1094123))

(assert (=> bs!575375 m!4241833))

(assert (=> bs!575375 m!4241833))

(declare-fun m!4241875 () Bool)

(assert (=> bs!575375 m!4241875))

(declare-fun m!4241877 () Bool)

(assert (=> bs!575375 m!4241877))

(assert (=> b!3750899 d!1094123))

(declare-fun bs!575377 () Bool)

(declare-fun d!1094127 () Bool)

(assert (= bs!575377 (and d!1094127 b!3750899)))

(declare-fun lambda!125250 () Int)

(assert (=> bs!575377 (= lambda!125250 lambda!125242)))

(declare-fun b!3750982 () Bool)

(declare-fun e!2320207 () Bool)

(assert (=> b!3750982 (= e!2320207 true)))

(declare-fun b!3750981 () Bool)

(declare-fun e!2320206 () Bool)

(assert (=> b!3750981 (= e!2320206 e!2320207)))

(declare-fun b!3750980 () Bool)

(declare-fun e!2320205 () Bool)

(assert (=> b!3750980 (= e!2320205 e!2320206)))

(assert (=> d!1094127 e!2320205))

(assert (= b!3750981 b!3750982))

(assert (= b!3750980 b!3750981))

(assert (= (and d!1094127 (is-Cons!39993 rs!167)) b!3750980))

(assert (=> b!3750982 (< (dynLambda!17286 order!21859 (toValue!8465 (transformation!6117 (h!45413 rs!167)))) (dynLambda!17287 order!21861 lambda!125250))))

(assert (=> b!3750982 (< (dynLambda!17288 order!21863 (toChars!8324 (transformation!6117 (h!45413 rs!167)))) (dynLambda!17287 order!21861 lambda!125250))))

(assert (=> d!1094127 true))

(declare-fun lt!1299850 () Bool)

(assert (=> d!1094127 (= lt!1299850 (forall!8209 lt!1299838 lambda!125250))))

(declare-fun e!2320203 () Bool)

(assert (=> d!1094127 (= lt!1299850 e!2320203)))

(declare-fun res!1520245 () Bool)

(assert (=> d!1094127 (=> res!1520245 e!2320203)))

(assert (=> d!1094127 (= res!1520245 (not (is-Cons!39994 lt!1299838)))))

(assert (=> d!1094127 (not (isEmpty!23554 rs!167))))

(assert (=> d!1094127 (= (rulesProduceEachTokenIndividuallyList!1930 thiss!10925 rs!167 lt!1299838) lt!1299850)))

(declare-fun b!3750978 () Bool)

(declare-fun e!2320204 () Bool)

(assert (=> b!3750978 (= e!2320203 e!2320204)))

(declare-fun res!1520246 () Bool)

(assert (=> b!3750978 (=> (not res!1520246) (not e!2320204))))

(declare-fun rulesProduceIndividualToken!2618 (LexerInterface!5706 List!40117 Token!11372) Bool)

(assert (=> b!3750978 (= res!1520246 (rulesProduceIndividualToken!2618 thiss!10925 rs!167 (h!45414 lt!1299838)))))

(declare-fun b!3750979 () Bool)

(assert (=> b!3750979 (= e!2320204 (rulesProduceEachTokenIndividuallyList!1930 thiss!10925 rs!167 (t!303085 lt!1299838)))))

(assert (= (and d!1094127 (not res!1520245)) b!3750978))

(assert (= (and b!3750978 res!1520246) b!3750979))

(declare-fun m!4241881 () Bool)

(assert (=> d!1094127 m!4241881))

(assert (=> d!1094127 m!4241821))

(declare-fun m!4241883 () Bool)

(assert (=> b!3750978 m!4241883))

(declare-fun m!4241885 () Bool)

(assert (=> b!3750979 m!4241885))

(assert (=> b!3750896 d!1094127))

(declare-fun d!1094131 () Bool)

(assert (=> d!1094131 (= (inv!53502 (tag!6977 (h!45413 rs!167))) (= (mod (str.len (value!194900 (tag!6977 (h!45413 rs!167)))) 2) 0))))

(assert (=> b!3750895 d!1094131))

(declare-fun d!1094133 () Bool)

(declare-fun res!1520249 () Bool)

(declare-fun e!2320210 () Bool)

(assert (=> d!1094133 (=> (not res!1520249) (not e!2320210))))

(declare-fun semiInverseModEq!2621 (Int Int) Bool)

(assert (=> d!1094133 (= res!1520249 (semiInverseModEq!2621 (toChars!8324 (transformation!6117 (h!45413 rs!167))) (toValue!8465 (transformation!6117 (h!45413 rs!167)))))))

(assert (=> d!1094133 (= (inv!53505 (transformation!6117 (h!45413 rs!167))) e!2320210)))

(declare-fun b!3750985 () Bool)

(declare-fun equivClasses!2520 (Int Int) Bool)

(assert (=> b!3750985 (= e!2320210 (equivClasses!2520 (toChars!8324 (transformation!6117 (h!45413 rs!167))) (toValue!8465 (transformation!6117 (h!45413 rs!167)))))))

(assert (= (and d!1094133 res!1520249) b!3750985))

(declare-fun m!4241887 () Bool)

(assert (=> d!1094133 m!4241887))

(declare-fun m!4241889 () Bool)

(assert (=> b!3750985 m!4241889))

(assert (=> b!3750895 d!1094133))

(declare-fun d!1094135 () Bool)

(assert (=> d!1094135 (= (isEmpty!23554 rs!167) (is-Nil!39993 rs!167))))

(assert (=> b!3750897 d!1094135))

(declare-fun d!1094137 () Bool)

(declare-fun isBalanced!3524 (Conc!12223) Bool)

(assert (=> d!1094137 (= (inv!53506 ts!107) (isBalanced!3524 (c!649212 ts!107)))))

(declare-fun bs!575378 () Bool)

(assert (= bs!575378 d!1094137))

(declare-fun m!4241891 () Bool)

(assert (=> bs!575378 m!4241891))

(assert (=> start!352172 d!1094137))

(declare-fun d!1094139 () Bool)

(declare-fun c!649221 () Bool)

(assert (=> d!1094139 (= c!649221 (is-Node!12223 (c!649212 ts!107)))))

(declare-fun e!2320215 () Bool)

(assert (=> d!1094139 (= (inv!53507 (c!649212 ts!107)) e!2320215)))

(declare-fun b!3750992 () Bool)

(declare-fun inv!53511 (Conc!12223) Bool)

(assert (=> b!3750992 (= e!2320215 (inv!53511 (c!649212 ts!107)))))

(declare-fun b!3750993 () Bool)

(declare-fun e!2320216 () Bool)

(assert (=> b!3750993 (= e!2320215 e!2320216)))

(declare-fun res!1520252 () Bool)

(assert (=> b!3750993 (= res!1520252 (not (is-Leaf!18966 (c!649212 ts!107))))))

(assert (=> b!3750993 (=> res!1520252 e!2320216)))

(declare-fun b!3750994 () Bool)

(declare-fun inv!53512 (Conc!12223) Bool)

(assert (=> b!3750994 (= e!2320216 (inv!53512 (c!649212 ts!107)))))

(assert (= (and d!1094139 c!649221) b!3750992))

(assert (= (and d!1094139 (not c!649221)) b!3750993))

(assert (= (and b!3750993 (not res!1520252)) b!3750994))

(declare-fun m!4241893 () Bool)

(assert (=> b!3750992 m!4241893))

(declare-fun m!4241895 () Bool)

(assert (=> b!3750994 m!4241895))

(assert (=> b!3750898 d!1094139))

(declare-fun b!3750997 () Bool)

(declare-fun e!2320219 () Bool)

(assert (=> b!3750997 (= e!2320219 true)))

(declare-fun b!3750996 () Bool)

(declare-fun e!2320218 () Bool)

(assert (=> b!3750996 (= e!2320218 e!2320219)))

(declare-fun b!3750995 () Bool)

(declare-fun e!2320217 () Bool)

(assert (=> b!3750995 (= e!2320217 e!2320218)))

(assert (=> b!3750911 e!2320217))

(assert (= b!3750996 b!3750997))

(assert (= b!3750995 b!3750996))

(assert (= (and b!3750911 (is-Cons!39993 (t!303084 rs!167))) b!3750995))

(assert (=> b!3750997 (< (dynLambda!17286 order!21859 (toValue!8465 (transformation!6117 (h!45413 (t!303084 rs!167))))) (dynLambda!17287 order!21861 lambda!125242))))

(assert (=> b!3750997 (< (dynLambda!17288 order!21863 (toChars!8324 (transformation!6117 (h!45413 (t!303084 rs!167))))) (dynLambda!17287 order!21861 lambda!125242))))

(declare-fun b!3751008 () Bool)

(declare-fun b_free!100397 () Bool)

(declare-fun b_next!101101 () Bool)

(assert (=> b!3751008 (= b_free!100397 (not b_next!101101))))

(declare-fun tp!1145389 () Bool)

(declare-fun b_and!278775 () Bool)

(assert (=> b!3751008 (= tp!1145389 b_and!278775)))

(declare-fun b_free!100399 () Bool)

(declare-fun b_next!101103 () Bool)

(assert (=> b!3751008 (= b_free!100399 (not b_next!101103))))

(declare-fun tp!1145392 () Bool)

(declare-fun b_and!278777 () Bool)

(assert (=> b!3751008 (= tp!1145392 b_and!278777)))

(declare-fun e!2320228 () Bool)

(assert (=> b!3751008 (= e!2320228 (and tp!1145389 tp!1145392))))

(declare-fun b!3751007 () Bool)

(declare-fun tp!1145390 () Bool)

(declare-fun e!2320230 () Bool)

(assert (=> b!3751007 (= e!2320230 (and tp!1145390 (inv!53502 (tag!6977 (h!45413 (t!303084 rs!167)))) (inv!53505 (transformation!6117 (h!45413 (t!303084 rs!167)))) e!2320228))))

(declare-fun b!3751006 () Bool)

(declare-fun e!2320231 () Bool)

(declare-fun tp!1145391 () Bool)

(assert (=> b!3751006 (= e!2320231 (and e!2320230 tp!1145391))))

(assert (=> b!3750901 (= tp!1145362 e!2320231)))

(assert (= b!3751007 b!3751008))

(assert (= b!3751006 b!3751007))

(assert (= (and b!3750901 (is-Cons!39993 (t!303084 rs!167))) b!3751006))

(declare-fun m!4241897 () Bool)

(assert (=> b!3751007 m!4241897))

(declare-fun m!4241899 () Bool)

(assert (=> b!3751007 m!4241899))

(declare-fun b!3751021 () Bool)

(declare-fun e!2320234 () Bool)

(declare-fun tp!1145406 () Bool)

(assert (=> b!3751021 (= e!2320234 tp!1145406)))

(declare-fun b!3751022 () Bool)

(declare-fun tp!1145407 () Bool)

(declare-fun tp!1145404 () Bool)

(assert (=> b!3751022 (= e!2320234 (and tp!1145407 tp!1145404))))

(declare-fun b!3751020 () Bool)

(declare-fun tp!1145403 () Bool)

(declare-fun tp!1145405 () Bool)

(assert (=> b!3751020 (= e!2320234 (and tp!1145403 tp!1145405))))

(assert (=> b!3750895 (= tp!1145363 e!2320234)))

(declare-fun b!3751019 () Bool)

(declare-fun tp_is_empty!19035 () Bool)

(assert (=> b!3751019 (= e!2320234 tp_is_empty!19035)))

(assert (= (and b!3750895 (is-ElementMatch!11022 (regex!6117 (h!45413 rs!167)))) b!3751019))

(assert (= (and b!3750895 (is-Concat!17370 (regex!6117 (h!45413 rs!167)))) b!3751020))

(assert (= (and b!3750895 (is-Star!11022 (regex!6117 (h!45413 rs!167)))) b!3751021))

(assert (= (and b!3750895 (is-Union!11022 (regex!6117 (h!45413 rs!167)))) b!3751022))

(declare-fun e!2320240 () Bool)

(declare-fun tp!1145414 () Bool)

(declare-fun b!3751031 () Bool)

(declare-fun tp!1145415 () Bool)

(assert (=> b!3751031 (= e!2320240 (and (inv!53507 (left!30955 (c!649212 ts!107))) tp!1145415 (inv!53507 (right!31285 (c!649212 ts!107))) tp!1145414))))

(declare-fun b!3751033 () Bool)

(declare-fun e!2320239 () Bool)

(declare-fun tp!1145416 () Bool)

(assert (=> b!3751033 (= e!2320239 tp!1145416)))

(declare-fun b!3751032 () Bool)

(declare-fun inv!53513 (IArray!24451) Bool)

(assert (=> b!3751032 (= e!2320240 (and (inv!53513 (xs!15425 (c!649212 ts!107))) e!2320239))))

(assert (=> b!3750898 (= tp!1145361 (and (inv!53507 (c!649212 ts!107)) e!2320240))))

(assert (= (and b!3750898 (is-Node!12223 (c!649212 ts!107))) b!3751031))

(assert (= b!3751032 b!3751033))

(assert (= (and b!3750898 (is-Leaf!18966 (c!649212 ts!107))) b!3751032))

(declare-fun m!4241901 () Bool)

(assert (=> b!3751031 m!4241901))

(declare-fun m!4241903 () Bool)

(assert (=> b!3751031 m!4241903))

(declare-fun m!4241905 () Bool)

(assert (=> b!3751032 m!4241905))

(assert (=> b!3750898 m!4241827))

(declare-fun b_lambda!109965 () Bool)

(assert (= b_lambda!109963 (or b!3750899 b_lambda!109965)))

(declare-fun bs!575379 () Bool)

(declare-fun d!1094141 () Bool)

(assert (= bs!575379 (and d!1094141 b!3750899)))

(assert (=> bs!575379 (= (dynLambda!17292 lambda!125242 (h!45414 lt!1299838)) (rulesProduceIndividualToken!2618 thiss!10925 rs!167 (h!45414 lt!1299838)))))

(assert (=> bs!575379 m!4241883))

(assert (=> b!3750969 d!1094141))

(push 1)

(assert (not b!3750995))

(assert (not b!3751022))

(assert (not b!3751032))

(assert (not d!1094137))

(assert tp_is_empty!19035)

(assert (not b!3750970))

(assert (not b!3751031))

(assert (not d!1094123))

(assert (not b!3750992))

(assert b_and!278767)

(assert (not b!3750978))

(assert (not b_lambda!109965))

(assert (not b_next!101095))

(assert b_and!278769)

(assert (not d!1094121))

(assert (not bs!575379))

(assert (not d!1094127))

(assert (not b!3751021))

(assert b_and!278777)

(assert (not b_next!101093))

(assert (not b_next!101103))

(assert (not b!3751020))

(assert (not b!3751006))

(assert (not b!3750994))

(assert (not b!3751007))

(assert (not d!1094115))

(assert (not b!3750985))

(assert (not b!3751033))

(assert (not b_next!101101))

(assert b_and!278775)

(assert (not d!1094133))

(assert (not b!3750964))

(assert (not b!3750898))

(assert (not b!3750980))

(assert (not b!3750979))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278777)

(assert b_and!278767)

(assert (not b_next!101095))

(assert b_and!278769)

(assert (not b_next!101101))

(assert b_and!278775)

(assert (not b_next!101093))

(assert (not b_next!101103))

(check-sat)

(pop 1)

