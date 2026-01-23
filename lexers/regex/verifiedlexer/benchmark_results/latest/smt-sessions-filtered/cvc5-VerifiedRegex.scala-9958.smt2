; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522006 () Bool)

(assert start!522006)

(declare-fun b!4953212 () Bool)

(declare-fun b_free!132039 () Bool)

(declare-fun b_next!132829 () Bool)

(assert (=> b!4953212 (= b_free!132039 (not b_next!132829))))

(declare-fun tp!1388557 () Bool)

(declare-fun b_and!346891 () Bool)

(assert (=> b!4953212 (= tp!1388557 b_and!346891)))

(declare-fun b_free!132041 () Bool)

(declare-fun b_next!132831 () Bool)

(assert (=> b!4953212 (= b_free!132041 (not b_next!132831))))

(declare-fun tp!1388561 () Bool)

(declare-fun b_and!346893 () Bool)

(assert (=> b!4953212 (= tp!1388561 b_and!346893)))

(declare-fun res!2113085 () Bool)

(declare-fun e!3094715 () Bool)

(assert (=> start!522006 (=> (not res!2113085) (not e!3094715))))

(declare-datatypes ((LexerInterface!7859 0))(
  ( (LexerInterfaceExt!7856 (__x!34447 Int)) (Lexer!7857) )
))
(declare-fun thiss!15247 () LexerInterface!7859)

(assert (=> start!522006 (= res!2113085 (is-Lexer!7857 thiss!15247))))

(assert (=> start!522006 e!3094715))

(assert (=> start!522006 true))

(declare-fun e!3094719 () Bool)

(assert (=> start!522006 e!3094719))

(declare-datatypes ((C!27250 0))(
  ( (C!27251 (val!22991 Int)) )
))
(declare-datatypes ((List!57187 0))(
  ( (Nil!57063) (Cons!57063 (h!63511 C!27250) (t!367753 List!57187)) )
))
(declare-datatypes ((IArray!30099 0))(
  ( (IArray!30100 (innerList!15107 List!57187)) )
))
(declare-datatypes ((Conc!15019 0))(
  ( (Node!15019 (left!41631 Conc!15019) (right!41961 Conc!15019) (csize!30268 Int) (cheight!15230 Int)) (Leaf!24978 (xs!18345 IArray!30099) (csize!30269 Int)) (Empty!15019) )
))
(declare-datatypes ((BalanceConc!29468 0))(
  ( (BalanceConc!29469 (c!845927 Conc!15019)) )
))
(declare-fun input!1342 () BalanceConc!29468)

(declare-fun e!3094714 () Bool)

(declare-fun inv!74387 (BalanceConc!29468) Bool)

(assert (=> start!522006 (and (inv!74387 input!1342) e!3094714)))

(declare-fun totalInput!464 () BalanceConc!29468)

(declare-fun e!3094712 () Bool)

(assert (=> start!522006 (and (inv!74387 totalInput!464) e!3094712)))

(declare-fun e!3094718 () Bool)

(declare-datatypes ((List!57188 0))(
  ( (Nil!57064) (Cons!57064 (h!63512 (_ BitVec 16)) (t!367754 List!57188)) )
))
(declare-datatypes ((TokenValue!8577 0))(
  ( (FloatLiteralValue!17154 (text!60484 List!57188)) (TokenValueExt!8576 (__x!34448 Int)) (Broken!42885 (value!265035 List!57188)) (Object!8700) (End!8577) (Def!8577) (Underscore!8577) (Match!8577) (Else!8577) (Error!8577) (Case!8577) (If!8577) (Extends!8577) (Abstract!8577) (Class!8577) (Val!8577) (DelimiterValue!17154 (del!8637 List!57188)) (KeywordValue!8583 (value!265036 List!57188)) (CommentValue!17154 (value!265037 List!57188)) (WhitespaceValue!17154 (value!265038 List!57188)) (IndentationValue!8577 (value!265039 List!57188)) (String!64760) (Int32!8577) (Broken!42886 (value!265040 List!57188)) (Boolean!8578) (Unit!147957) (OperatorValue!8580 (op!8637 List!57188)) (IdentifierValue!17154 (value!265041 List!57188)) (IdentifierValue!17155 (value!265042 List!57188)) (WhitespaceValue!17155 (value!265043 List!57188)) (True!17154) (False!17154) (Broken!42887 (value!265044 List!57188)) (Broken!42888 (value!265045 List!57188)) (True!17155) (RightBrace!8577) (RightBracket!8577) (Colon!8577) (Null!8577) (Comma!8577) (LeftBracket!8577) (False!17155) (LeftBrace!8577) (ImaginaryLiteralValue!8577 (text!60485 List!57188)) (StringLiteralValue!25731 (value!265046 List!57188)) (EOFValue!8577 (value!265047 List!57188)) (IdentValue!8577 (value!265048 List!57188)) (DelimiterValue!17155 (value!265049 List!57188)) (DedentValue!8577 (value!265050 List!57188)) (NewLineValue!8577 (value!265051 List!57188)) (IntegerValue!25731 (value!265052 (_ BitVec 32)) (text!60486 List!57188)) (IntegerValue!25732 (value!265053 Int) (text!60487 List!57188)) (Times!8577) (Or!8577) (Equal!8577) (Minus!8577) (Broken!42889 (value!265054 List!57188)) (And!8577) (Div!8577) (LessEqual!8577) (Mod!8577) (Concat!22077) (Not!8577) (Plus!8577) (SpaceValue!8577 (value!265055 List!57188)) (IntegerValue!25733 (value!265056 Int) (text!60488 List!57188)) (StringLiteralValue!25732 (text!60489 List!57188)) (FloatLiteralValue!17155 (text!60490 List!57188)) (BytesLiteralValue!8577 (value!265057 List!57188)) (CommentValue!17155 (value!265058 List!57188)) (StringLiteralValue!25733 (value!265059 List!57188)) (ErrorTokenValue!8577 (msg!8638 List!57188)) )
))
(declare-datatypes ((Regex!13500 0))(
  ( (ElementMatch!13500 (c!845928 C!27250)) (Concat!22078 (regOne!27512 Regex!13500) (regTwo!27512 Regex!13500)) (EmptyExpr!13500) (Star!13500 (reg!13829 Regex!13500)) (EmptyLang!13500) (Union!13500 (regOne!27513 Regex!13500) (regTwo!27513 Regex!13500)) )
))
(declare-datatypes ((String!64761 0))(
  ( (String!64762 (value!265060 String)) )
))
(declare-datatypes ((TokenValueInjection!16462 0))(
  ( (TokenValueInjection!16463 (toValue!11218 Int) (toChars!11077 Int)) )
))
(declare-datatypes ((Rule!16334 0))(
  ( (Rule!16335 (regex!8267 Regex!13500) (tag!9131 String!64761) (isSeparator!8267 Bool) (transformation!8267 TokenValueInjection!16462)) )
))
(declare-datatypes ((List!57189 0))(
  ( (Nil!57065) (Cons!57065 (h!63513 Rule!16334) (t!367755 List!57189)) )
))
(declare-fun rulesArg!259 () List!57189)

(declare-fun e!3094717 () Bool)

(declare-fun b!4953211 () Bool)

(declare-fun tp!1388562 () Bool)

(declare-fun inv!74384 (String!64761) Bool)

(declare-fun inv!74388 (TokenValueInjection!16462) Bool)

(assert (=> b!4953211 (= e!3094717 (and tp!1388562 (inv!74384 (tag!9131 (h!63513 rulesArg!259))) (inv!74388 (transformation!8267 (h!63513 rulesArg!259))) e!3094718))))

(assert (=> b!4953212 (= e!3094718 (and tp!1388557 tp!1388561))))

(declare-fun b!4953213 () Bool)

(declare-fun e!3094720 () Bool)

(declare-fun ruleValid!3760 (LexerInterface!7859 Rule!16334) Bool)

(assert (=> b!4953213 (= e!3094720 (ruleValid!3760 thiss!15247 (h!63513 rulesArg!259)))))

(declare-fun b!4953214 () Bool)

(declare-fun tp!1388559 () Bool)

(assert (=> b!4953214 (= e!3094719 (and e!3094717 tp!1388559))))

(declare-fun b!4953215 () Bool)

(declare-fun tp!1388558 () Bool)

(declare-fun inv!74389 (Conc!15019) Bool)

(assert (=> b!4953215 (= e!3094714 (and (inv!74389 (c!845927 input!1342)) tp!1388558))))

(declare-fun b!4953216 () Bool)

(declare-fun res!2113084 () Bool)

(assert (=> b!4953216 (=> (not res!2113084) (not e!3094715))))

(declare-fun rulesValidInductive!3170 (LexerInterface!7859 List!57189) Bool)

(assert (=> b!4953216 (= res!2113084 (rulesValidInductive!3170 thiss!15247 rulesArg!259))))

(declare-fun b!4953217 () Bool)

(declare-fun tp!1388560 () Bool)

(assert (=> b!4953217 (= e!3094712 (and (inv!74389 (c!845927 totalInput!464)) tp!1388560))))

(declare-fun b!4953218 () Bool)

(declare-fun res!2113081 () Bool)

(assert (=> b!4953218 (=> (not res!2113081) (not e!3094715))))

(declare-fun isEmpty!30687 (List!57189) Bool)

(assert (=> b!4953218 (= res!2113081 (not (isEmpty!30687 rulesArg!259)))))

(declare-fun b!4953219 () Bool)

(declare-fun e!3094716 () Bool)

(assert (=> b!4953219 (= e!3094716 (not e!3094720))))

(declare-fun res!2113083 () Bool)

(assert (=> b!4953219 (=> res!2113083 e!3094720)))

(assert (=> b!4953219 (= res!2113083 (or (not (is-Cons!57065 rulesArg!259)) (not (is-Nil!57065 (t!367755 rulesArg!259)))))))

(declare-fun lt!2044276 () List!57187)

(declare-fun isPrefix!5120 (List!57187 List!57187) Bool)

(assert (=> b!4953219 (isPrefix!5120 lt!2044276 lt!2044276)))

(declare-datatypes ((Unit!147958 0))(
  ( (Unit!147959) )
))
(declare-fun lt!2044277 () Unit!147958)

(declare-fun lemmaIsPrefixRefl!3444 (List!57187 List!57187) Unit!147958)

(assert (=> b!4953219 (= lt!2044277 (lemmaIsPrefixRefl!3444 lt!2044276 lt!2044276))))

(declare-fun b!4953220 () Bool)

(assert (=> b!4953220 (= e!3094715 e!3094716)))

(declare-fun res!2113082 () Bool)

(assert (=> b!4953220 (=> (not res!2113082) (not e!3094716))))

(declare-fun isSuffix!1066 (List!57187 List!57187) Bool)

(declare-fun list!18198 (BalanceConc!29468) List!57187)

(assert (=> b!4953220 (= res!2113082 (isSuffix!1066 lt!2044276 (list!18198 totalInput!464)))))

(assert (=> b!4953220 (= lt!2044276 (list!18198 input!1342))))

(assert (= (and start!522006 res!2113085) b!4953216))

(assert (= (and b!4953216 res!2113084) b!4953218))

(assert (= (and b!4953218 res!2113081) b!4953220))

(assert (= (and b!4953220 res!2113082) b!4953219))

(assert (= (and b!4953219 (not res!2113083)) b!4953213))

(assert (= b!4953211 b!4953212))

(assert (= b!4953214 b!4953211))

(assert (= (and start!522006 (is-Cons!57065 rulesArg!259)) b!4953214))

(assert (= start!522006 b!4953215))

(assert (= start!522006 b!4953217))

(declare-fun m!5977972 () Bool)

(assert (=> b!4953213 m!5977972))

(declare-fun m!5977974 () Bool)

(assert (=> b!4953220 m!5977974))

(assert (=> b!4953220 m!5977974))

(declare-fun m!5977976 () Bool)

(assert (=> b!4953220 m!5977976))

(declare-fun m!5977978 () Bool)

(assert (=> b!4953220 m!5977978))

(declare-fun m!5977980 () Bool)

(assert (=> b!4953211 m!5977980))

(declare-fun m!5977982 () Bool)

(assert (=> b!4953211 m!5977982))

(declare-fun m!5977984 () Bool)

(assert (=> b!4953218 m!5977984))

(declare-fun m!5977986 () Bool)

(assert (=> b!4953216 m!5977986))

(declare-fun m!5977988 () Bool)

(assert (=> b!4953215 m!5977988))

(declare-fun m!5977990 () Bool)

(assert (=> start!522006 m!5977990))

(declare-fun m!5977992 () Bool)

(assert (=> start!522006 m!5977992))

(declare-fun m!5977994 () Bool)

(assert (=> b!4953219 m!5977994))

(declare-fun m!5977996 () Bool)

(assert (=> b!4953219 m!5977996))

(declare-fun m!5977998 () Bool)

(assert (=> b!4953217 m!5977998))

(push 1)

(assert (not b_next!132831))

(assert (not b!4953218))

(assert (not b!4953213))

(assert (not b!4953219))

(assert (not b!4953211))

(assert (not b!4953220))

(assert (not b!4953217))

(assert b_and!346893)

(assert b_and!346891)

(assert (not b_next!132829))

(assert (not b!4953215))

(assert (not b!4953214))

(assert (not start!522006))

(assert (not b!4953216))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346891)

(assert b_and!346893)

(assert (not b_next!132829))

(assert (not b_next!132831))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1595161 () Bool)

(declare-fun isBalanced!4165 (Conc!15019) Bool)

(assert (=> d!1595161 (= (inv!74387 input!1342) (isBalanced!4165 (c!845927 input!1342)))))

(declare-fun bs!1182400 () Bool)

(assert (= bs!1182400 d!1595161))

(declare-fun m!5978028 () Bool)

(assert (=> bs!1182400 m!5978028))

(assert (=> start!522006 d!1595161))

(declare-fun d!1595163 () Bool)

(assert (=> d!1595163 (= (inv!74387 totalInput!464) (isBalanced!4165 (c!845927 totalInput!464)))))

(declare-fun bs!1182401 () Bool)

(assert (= bs!1182401 d!1595163))

(declare-fun m!5978030 () Bool)

(assert (=> bs!1182401 m!5978030))

(assert (=> start!522006 d!1595163))

(declare-fun b!4953263 () Bool)

(declare-fun e!3094757 () Bool)

(declare-fun e!3094758 () Bool)

(assert (=> b!4953263 (= e!3094757 e!3094758)))

(declare-fun res!2113118 () Bool)

(assert (=> b!4953263 (=> (not res!2113118) (not e!3094758))))

(assert (=> b!4953263 (= res!2113118 (not (is-Nil!57063 lt!2044276)))))

(declare-fun b!4953264 () Bool)

(declare-fun res!2113119 () Bool)

(assert (=> b!4953264 (=> (not res!2113119) (not e!3094758))))

(declare-fun head!10632 (List!57187) C!27250)

(assert (=> b!4953264 (= res!2113119 (= (head!10632 lt!2044276) (head!10632 lt!2044276)))))

(declare-fun b!4953265 () Bool)

(declare-fun tail!9765 (List!57187) List!57187)

(assert (=> b!4953265 (= e!3094758 (isPrefix!5120 (tail!9765 lt!2044276) (tail!9765 lt!2044276)))))

(declare-fun b!4953266 () Bool)

(declare-fun e!3094756 () Bool)

(declare-fun size!37879 (List!57187) Int)

(assert (=> b!4953266 (= e!3094756 (>= (size!37879 lt!2044276) (size!37879 lt!2044276)))))

(declare-fun d!1595165 () Bool)

(assert (=> d!1595165 e!3094756))

(declare-fun res!2113120 () Bool)

(assert (=> d!1595165 (=> res!2113120 e!3094756)))

(declare-fun lt!2044286 () Bool)

(assert (=> d!1595165 (= res!2113120 (not lt!2044286))))

(assert (=> d!1595165 (= lt!2044286 e!3094757)))

(declare-fun res!2113117 () Bool)

(assert (=> d!1595165 (=> res!2113117 e!3094757)))

(assert (=> d!1595165 (= res!2113117 (is-Nil!57063 lt!2044276))))

(assert (=> d!1595165 (= (isPrefix!5120 lt!2044276 lt!2044276) lt!2044286)))

(assert (= (and d!1595165 (not res!2113117)) b!4953263))

(assert (= (and b!4953263 res!2113118) b!4953264))

(assert (= (and b!4953264 res!2113119) b!4953265))

(assert (= (and d!1595165 (not res!2113120)) b!4953266))

(declare-fun m!5978032 () Bool)

(assert (=> b!4953264 m!5978032))

(assert (=> b!4953264 m!5978032))

(declare-fun m!5978034 () Bool)

(assert (=> b!4953265 m!5978034))

(assert (=> b!4953265 m!5978034))

(assert (=> b!4953265 m!5978034))

(assert (=> b!4953265 m!5978034))

(declare-fun m!5978036 () Bool)

(assert (=> b!4953265 m!5978036))

(declare-fun m!5978038 () Bool)

(assert (=> b!4953266 m!5978038))

(assert (=> b!4953266 m!5978038))

(assert (=> b!4953219 d!1595165))

(declare-fun d!1595169 () Bool)

(assert (=> d!1595169 (isPrefix!5120 lt!2044276 lt!2044276)))

(declare-fun lt!2044289 () Unit!147958)

(declare-fun choose!36612 (List!57187 List!57187) Unit!147958)

(assert (=> d!1595169 (= lt!2044289 (choose!36612 lt!2044276 lt!2044276))))

(assert (=> d!1595169 (= (lemmaIsPrefixRefl!3444 lt!2044276 lt!2044276) lt!2044289)))

(declare-fun bs!1182402 () Bool)

(assert (= bs!1182402 d!1595169))

(assert (=> bs!1182402 m!5977994))

(declare-fun m!5978044 () Bool)

(assert (=> bs!1182402 m!5978044))

(assert (=> b!4953219 d!1595169))

(declare-fun d!1595173 () Bool)

(declare-fun e!3094771 () Bool)

(assert (=> d!1595173 e!3094771))

(declare-fun res!2113137 () Bool)

(assert (=> d!1595173 (=> res!2113137 e!3094771)))

(declare-fun lt!2044295 () Bool)

(assert (=> d!1595173 (= res!2113137 (not lt!2044295))))

(declare-fun drop!2313 (List!57187 Int) List!57187)

(assert (=> d!1595173 (= lt!2044295 (= lt!2044276 (drop!2313 (list!18198 totalInput!464) (- (size!37879 (list!18198 totalInput!464)) (size!37879 lt!2044276)))))))

(assert (=> d!1595173 (= (isSuffix!1066 lt!2044276 (list!18198 totalInput!464)) lt!2044295)))

(declare-fun b!4953283 () Bool)

(assert (=> b!4953283 (= e!3094771 (>= (size!37879 (list!18198 totalInput!464)) (size!37879 lt!2044276)))))

(assert (= (and d!1595173 (not res!2113137)) b!4953283))

(assert (=> d!1595173 m!5977974))

(declare-fun m!5978054 () Bool)

(assert (=> d!1595173 m!5978054))

(assert (=> d!1595173 m!5978038))

(assert (=> d!1595173 m!5977974))

(declare-fun m!5978056 () Bool)

(assert (=> d!1595173 m!5978056))

(assert (=> b!4953283 m!5977974))

(assert (=> b!4953283 m!5978054))

(assert (=> b!4953283 m!5978038))

(assert (=> b!4953220 d!1595173))

(declare-fun d!1595177 () Bool)

(declare-fun list!18200 (Conc!15019) List!57187)

(assert (=> d!1595177 (= (list!18198 totalInput!464) (list!18200 (c!845927 totalInput!464)))))

(declare-fun bs!1182403 () Bool)

(assert (= bs!1182403 d!1595177))

(declare-fun m!5978058 () Bool)

(assert (=> bs!1182403 m!5978058))

(assert (=> b!4953220 d!1595177))

(declare-fun d!1595179 () Bool)

(assert (=> d!1595179 (= (list!18198 input!1342) (list!18200 (c!845927 input!1342)))))

(declare-fun bs!1182405 () Bool)

(assert (= bs!1182405 d!1595179))

(declare-fun m!5978062 () Bool)

(assert (=> bs!1182405 m!5978062))

(assert (=> b!4953220 d!1595179))

(declare-fun d!1595183 () Bool)

(assert (=> d!1595183 (= (isEmpty!30687 rulesArg!259) (is-Nil!57065 rulesArg!259))))

(assert (=> b!4953218 d!1595183))

(declare-fun d!1595185 () Bool)

(declare-fun res!2113147 () Bool)

(declare-fun e!3094782 () Bool)

(assert (=> d!1595185 (=> (not res!2113147) (not e!3094782))))

(declare-fun validRegex!5961 (Regex!13500) Bool)

(assert (=> d!1595185 (= res!2113147 (validRegex!5961 (regex!8267 (h!63513 rulesArg!259))))))

(assert (=> d!1595185 (= (ruleValid!3760 thiss!15247 (h!63513 rulesArg!259)) e!3094782)))

(declare-fun b!4953299 () Bool)

(declare-fun res!2113148 () Bool)

(assert (=> b!4953299 (=> (not res!2113148) (not e!3094782))))

(declare-fun nullable!4612 (Regex!13500) Bool)

(assert (=> b!4953299 (= res!2113148 (not (nullable!4612 (regex!8267 (h!63513 rulesArg!259)))))))

(declare-fun b!4953300 () Bool)

(assert (=> b!4953300 (= e!3094782 (not (= (tag!9131 (h!63513 rulesArg!259)) (String!64762 ""))))))

(assert (= (and d!1595185 res!2113147) b!4953299))

(assert (= (and b!4953299 res!2113148) b!4953300))

(declare-fun m!5978068 () Bool)

(assert (=> d!1595185 m!5978068))

(declare-fun m!5978070 () Bool)

(assert (=> b!4953299 m!5978070))

(assert (=> b!4953213 d!1595185))

(declare-fun d!1595189 () Bool)

(assert (=> d!1595189 (= (inv!74384 (tag!9131 (h!63513 rulesArg!259))) (= (mod (str.len (value!265060 (tag!9131 (h!63513 rulesArg!259)))) 2) 0))))

(assert (=> b!4953211 d!1595189))

(declare-fun d!1595191 () Bool)

(declare-fun res!2113152 () Bool)

(declare-fun e!3094786 () Bool)

(assert (=> d!1595191 (=> (not res!2113152) (not e!3094786))))

(declare-fun semiInverseModEq!3664 (Int Int) Bool)

(assert (=> d!1595191 (= res!2113152 (semiInverseModEq!3664 (toChars!11077 (transformation!8267 (h!63513 rulesArg!259))) (toValue!11218 (transformation!8267 (h!63513 rulesArg!259)))))))

(assert (=> d!1595191 (= (inv!74388 (transformation!8267 (h!63513 rulesArg!259))) e!3094786)))

(declare-fun b!4953304 () Bool)

(declare-fun equivClasses!3512 (Int Int) Bool)

(assert (=> b!4953304 (= e!3094786 (equivClasses!3512 (toChars!11077 (transformation!8267 (h!63513 rulesArg!259))) (toValue!11218 (transformation!8267 (h!63513 rulesArg!259)))))))

(assert (= (and d!1595191 res!2113152) b!4953304))

(declare-fun m!5978084 () Bool)

(assert (=> d!1595191 m!5978084))

(declare-fun m!5978086 () Bool)

(assert (=> b!4953304 m!5978086))

(assert (=> b!4953211 d!1595191))

(declare-fun d!1595205 () Bool)

(declare-fun c!845936 () Bool)

(assert (=> d!1595205 (= c!845936 (is-Node!15019 (c!845927 totalInput!464)))))

(declare-fun e!3094794 () Bool)

(assert (=> d!1595205 (= (inv!74389 (c!845927 totalInput!464)) e!3094794)))

(declare-fun b!4953314 () Bool)

(declare-fun inv!74393 (Conc!15019) Bool)

(assert (=> b!4953314 (= e!3094794 (inv!74393 (c!845927 totalInput!464)))))

(declare-fun b!4953315 () Bool)

(declare-fun e!3094795 () Bool)

(assert (=> b!4953315 (= e!3094794 e!3094795)))

(declare-fun res!2113158 () Bool)

(assert (=> b!4953315 (= res!2113158 (not (is-Leaf!24978 (c!845927 totalInput!464))))))

(assert (=> b!4953315 (=> res!2113158 e!3094795)))

(declare-fun b!4953316 () Bool)

(declare-fun inv!74394 (Conc!15019) Bool)

(assert (=> b!4953316 (= e!3094795 (inv!74394 (c!845927 totalInput!464)))))

(assert (= (and d!1595205 c!845936) b!4953314))

(assert (= (and d!1595205 (not c!845936)) b!4953315))

(assert (= (and b!4953315 (not res!2113158)) b!4953316))

(declare-fun m!5978088 () Bool)

(assert (=> b!4953314 m!5978088))

(declare-fun m!5978090 () Bool)

(assert (=> b!4953316 m!5978090))

(assert (=> b!4953217 d!1595205))

(declare-fun d!1595207 () Bool)

(declare-fun c!845937 () Bool)

(assert (=> d!1595207 (= c!845937 (is-Node!15019 (c!845927 input!1342)))))

(declare-fun e!3094796 () Bool)

(assert (=> d!1595207 (= (inv!74389 (c!845927 input!1342)) e!3094796)))

(declare-fun b!4953317 () Bool)

(assert (=> b!4953317 (= e!3094796 (inv!74393 (c!845927 input!1342)))))

(declare-fun b!4953318 () Bool)

(declare-fun e!3094797 () Bool)

(assert (=> b!4953318 (= e!3094796 e!3094797)))

(declare-fun res!2113159 () Bool)

(assert (=> b!4953318 (= res!2113159 (not (is-Leaf!24978 (c!845927 input!1342))))))

(assert (=> b!4953318 (=> res!2113159 e!3094797)))

(declare-fun b!4953319 () Bool)

(assert (=> b!4953319 (= e!3094797 (inv!74394 (c!845927 input!1342)))))

(assert (= (and d!1595207 c!845937) b!4953317))

(assert (= (and d!1595207 (not c!845937)) b!4953318))

(assert (= (and b!4953318 (not res!2113159)) b!4953319))

(declare-fun m!5978092 () Bool)

(assert (=> b!4953317 m!5978092))

(declare-fun m!5978094 () Bool)

(assert (=> b!4953319 m!5978094))

(assert (=> b!4953215 d!1595207))

(declare-fun d!1595209 () Bool)

(assert (=> d!1595209 true))

(declare-fun lt!2044306 () Bool)

(declare-fun lambda!247023 () Int)

(declare-fun forall!13291 (List!57189 Int) Bool)

(assert (=> d!1595209 (= lt!2044306 (forall!13291 rulesArg!259 lambda!247023))))

(declare-fun e!3094806 () Bool)

(assert (=> d!1595209 (= lt!2044306 e!3094806)))

(declare-fun res!2113169 () Bool)

(assert (=> d!1595209 (=> res!2113169 e!3094806)))

(assert (=> d!1595209 (= res!2113169 (not (is-Cons!57065 rulesArg!259)))))

(assert (=> d!1595209 (= (rulesValidInductive!3170 thiss!15247 rulesArg!259) lt!2044306)))

(declare-fun b!4953328 () Bool)

(declare-fun e!3094807 () Bool)

(assert (=> b!4953328 (= e!3094806 e!3094807)))

(declare-fun res!2113168 () Bool)

(assert (=> b!4953328 (=> (not res!2113168) (not e!3094807))))

(assert (=> b!4953328 (= res!2113168 (ruleValid!3760 thiss!15247 (h!63513 rulesArg!259)))))

(declare-fun b!4953329 () Bool)

(assert (=> b!4953329 (= e!3094807 (rulesValidInductive!3170 thiss!15247 (t!367755 rulesArg!259)))))

(assert (= (and d!1595209 (not res!2113169)) b!4953328))

(assert (= (and b!4953328 res!2113168) b!4953329))

(declare-fun m!5978100 () Bool)

(assert (=> d!1595209 m!5978100))

(assert (=> b!4953328 m!5977972))

(declare-fun m!5978102 () Bool)

(assert (=> b!4953329 m!5978102))

(assert (=> b!4953216 d!1595209))

(declare-fun b!4953342 () Bool)

(declare-fun b_free!132047 () Bool)

(declare-fun b_next!132837 () Bool)

(assert (=> b!4953342 (= b_free!132047 (not b_next!132837))))

(declare-fun tp!1388590 () Bool)

(declare-fun b_and!346899 () Bool)

(assert (=> b!4953342 (= tp!1388590 b_and!346899)))

(declare-fun b_free!132049 () Bool)

(declare-fun b_next!132839 () Bool)

(assert (=> b!4953342 (= b_free!132049 (not b_next!132839))))

(declare-fun tp!1388589 () Bool)

(declare-fun b_and!346901 () Bool)

(assert (=> b!4953342 (= tp!1388589 b_and!346901)))

(declare-fun e!3094816 () Bool)

(assert (=> b!4953342 (= e!3094816 (and tp!1388590 tp!1388589))))

(declare-fun e!3094818 () Bool)

(declare-fun b!4953341 () Bool)

(declare-fun tp!1388592 () Bool)

(assert (=> b!4953341 (= e!3094818 (and tp!1388592 (inv!74384 (tag!9131 (h!63513 (t!367755 rulesArg!259)))) (inv!74388 (transformation!8267 (h!63513 (t!367755 rulesArg!259)))) e!3094816))))

(declare-fun b!4953340 () Bool)

(declare-fun e!3094819 () Bool)

(declare-fun tp!1388591 () Bool)

(assert (=> b!4953340 (= e!3094819 (and e!3094818 tp!1388591))))

(assert (=> b!4953214 (= tp!1388559 e!3094819)))

(assert (= b!4953341 b!4953342))

(assert (= b!4953340 b!4953341))

(assert (= (and b!4953214 (is-Cons!57065 (t!367755 rulesArg!259))) b!4953340))

(declare-fun m!5978104 () Bool)

(assert (=> b!4953341 m!5978104))

(declare-fun m!5978106 () Bool)

(assert (=> b!4953341 m!5978106))

(declare-fun b!4953353 () Bool)

(declare-fun e!3094822 () Bool)

(declare-fun tp_is_empty!36253 () Bool)

(assert (=> b!4953353 (= e!3094822 tp_is_empty!36253)))

(declare-fun b!4953355 () Bool)

(declare-fun tp!1388606 () Bool)

(assert (=> b!4953355 (= e!3094822 tp!1388606)))

(assert (=> b!4953211 (= tp!1388562 e!3094822)))

(declare-fun b!4953354 () Bool)

(declare-fun tp!1388604 () Bool)

(declare-fun tp!1388603 () Bool)

(assert (=> b!4953354 (= e!3094822 (and tp!1388604 tp!1388603))))

(declare-fun b!4953356 () Bool)

(declare-fun tp!1388605 () Bool)

(declare-fun tp!1388607 () Bool)

(assert (=> b!4953356 (= e!3094822 (and tp!1388605 tp!1388607))))

(assert (= (and b!4953211 (is-ElementMatch!13500 (regex!8267 (h!63513 rulesArg!259)))) b!4953353))

(assert (= (and b!4953211 (is-Concat!22078 (regex!8267 (h!63513 rulesArg!259)))) b!4953354))

(assert (= (and b!4953211 (is-Star!13500 (regex!8267 (h!63513 rulesArg!259)))) b!4953355))

(assert (= (and b!4953211 (is-Union!13500 (regex!8267 (h!63513 rulesArg!259)))) b!4953356))

(declare-fun b!4953365 () Bool)

(declare-fun e!3094828 () Bool)

(declare-fun tp!1388614 () Bool)

(declare-fun tp!1388615 () Bool)

(assert (=> b!4953365 (= e!3094828 (and (inv!74389 (left!41631 (c!845927 totalInput!464))) tp!1388614 (inv!74389 (right!41961 (c!845927 totalInput!464))) tp!1388615))))

(declare-fun b!4953367 () Bool)

(declare-fun e!3094827 () Bool)

(declare-fun tp!1388616 () Bool)

(assert (=> b!4953367 (= e!3094827 tp!1388616)))

(declare-fun b!4953366 () Bool)

(declare-fun inv!74395 (IArray!30099) Bool)

(assert (=> b!4953366 (= e!3094828 (and (inv!74395 (xs!18345 (c!845927 totalInput!464))) e!3094827))))

(assert (=> b!4953217 (= tp!1388560 (and (inv!74389 (c!845927 totalInput!464)) e!3094828))))

(assert (= (and b!4953217 (is-Node!15019 (c!845927 totalInput!464))) b!4953365))

(assert (= b!4953366 b!4953367))

(assert (= (and b!4953217 (is-Leaf!24978 (c!845927 totalInput!464))) b!4953366))

(declare-fun m!5978108 () Bool)

(assert (=> b!4953365 m!5978108))

(declare-fun m!5978110 () Bool)

(assert (=> b!4953365 m!5978110))

(declare-fun m!5978112 () Bool)

(assert (=> b!4953366 m!5978112))

(assert (=> b!4953217 m!5977998))

(declare-fun e!3094830 () Bool)

(declare-fun tp!1388618 () Bool)

(declare-fun tp!1388617 () Bool)

(declare-fun b!4953368 () Bool)

(assert (=> b!4953368 (= e!3094830 (and (inv!74389 (left!41631 (c!845927 input!1342))) tp!1388617 (inv!74389 (right!41961 (c!845927 input!1342))) tp!1388618))))

(declare-fun b!4953370 () Bool)

(declare-fun e!3094829 () Bool)

(declare-fun tp!1388619 () Bool)

(assert (=> b!4953370 (= e!3094829 tp!1388619)))

(declare-fun b!4953369 () Bool)

(assert (=> b!4953369 (= e!3094830 (and (inv!74395 (xs!18345 (c!845927 input!1342))) e!3094829))))

(assert (=> b!4953215 (= tp!1388558 (and (inv!74389 (c!845927 input!1342)) e!3094830))))

(assert (= (and b!4953215 (is-Node!15019 (c!845927 input!1342))) b!4953368))

(assert (= b!4953369 b!4953370))

(assert (= (and b!4953215 (is-Leaf!24978 (c!845927 input!1342))) b!4953369))

(declare-fun m!5978114 () Bool)

(assert (=> b!4953368 m!5978114))

(declare-fun m!5978116 () Bool)

(assert (=> b!4953368 m!5978116))

(declare-fun m!5978118 () Bool)

(assert (=> b!4953369 m!5978118))

(assert (=> b!4953215 m!5977988))

(push 1)

(assert (not d!1595169))

(assert (not b!4953215))

(assert (not b!4953340))

(assert b_and!346901)

(assert (not d!1595163))

(assert (not b!4953266))

(assert (not b!4953317))

(assert (not b!4953316))

(assert (not b!4953328))

(assert (not d!1595191))

(assert (not b_next!132831))

(assert (not d!1595161))

(assert (not d!1595185))

(assert (not b_next!132837))

(assert (not d!1595173))

(assert (not b!4953356))

(assert (not b!4953319))

(assert (not b!4953368))

(assert (not b!4953341))

(assert (not b!4953283))

(assert b_and!346899)

(assert (not b!4953367))

(assert (not b!4953366))

(assert (not b!4953217))

(assert (not b!4953370))

(assert b_and!346893)

(assert (not d!1595177))

(assert (not b!4953265))

(assert tp_is_empty!36253)

(assert (not b_next!132839))

(assert (not b!4953355))

(assert (not b!4953304))

(assert (not d!1595179))

(assert (not b!4953264))

(assert (not b!4953354))

(assert (not b!4953329))

(assert b_and!346891)

(assert (not b!4953299))

(assert (not b!4953365))

(assert (not b!4953369))

(assert (not b_next!132829))

(assert (not b!4953314))

(assert (not d!1595209))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132831))

(assert (not b_next!132837))

(assert b_and!346901)

(assert b_and!346899)

(assert b_and!346893)

(assert (not b_next!132839))

(assert b_and!346891)

(assert (not b_next!132829))

(check-sat)

(pop 1)

