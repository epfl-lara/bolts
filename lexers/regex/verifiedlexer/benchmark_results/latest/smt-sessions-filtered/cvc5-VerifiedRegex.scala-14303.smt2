; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747042 () Bool)

(assert start!747042)

(declare-fun b!7912096 () Bool)

(declare-fun b_free!135227 () Bool)

(declare-fun b_next!136017 () Bool)

(assert (=> b!7912096 (= b_free!135227 (not b_next!136017))))

(declare-fun tp!2356729 () Bool)

(declare-fun b_and!353583 () Bool)

(assert (=> b!7912096 (= tp!2356729 b_and!353583)))

(declare-fun b_free!135229 () Bool)

(declare-fun b_next!136019 () Bool)

(assert (=> b!7912096 (= b_free!135229 (not b_next!136019))))

(declare-fun tp!2356732 () Bool)

(declare-fun b_and!353585 () Bool)

(assert (=> b!7912096 (= tp!2356732 b_and!353585)))

(declare-fun b!7912087 () Bool)

(declare-fun e!4670487 () Bool)

(declare-fun tp_is_empty!53123 () Bool)

(declare-fun tp!2356730 () Bool)

(assert (=> b!7912087 (= e!4670487 (and tp_is_empty!53123 tp!2356730))))

(declare-fun b!7912088 () Bool)

(declare-fun e!4670492 () Bool)

(declare-fun e!4670488 () Bool)

(assert (=> b!7912088 (= e!4670492 e!4670488)))

(declare-fun res!3140387 () Bool)

(assert (=> b!7912088 (=> res!3140387 e!4670488)))

(declare-datatypes ((List!74503 0))(
  ( (Nil!74379) (Cons!74379 (h!80827 (_ BitVec 16)) (t!389940 List!74503)) )
))
(declare-datatypes ((C!43078 0))(
  ( (C!43079 (val!32003 Int)) )
))
(declare-datatypes ((List!74504 0))(
  ( (Nil!74380) (Cons!74380 (h!80828 C!43078) (t!389941 List!74504)) )
))
(declare-datatypes ((IArray!31751 0))(
  ( (IArray!31752 (innerList!15933 List!74504)) )
))
(declare-datatypes ((Conc!15845 0))(
  ( (Node!15845 (left!56772 Conc!15845) (right!57102 Conc!15845) (csize!31920 Int) (cheight!16056 Int)) (Leaf!30149 (xs!19227 IArray!31751) (csize!31921 Int)) (Empty!15845) )
))
(declare-datatypes ((BalanceConc!30808 0))(
  ( (BalanceConc!30809 (c!1451628 Conc!15845)) )
))
(declare-datatypes ((TokenValue!8987 0))(
  ( (FloatLiteralValue!17974 (text!63354 List!74503)) (TokenValueExt!8986 (__x!35261 Int)) (Broken!44935 (value!289076 List!74503)) (Object!9110) (End!8987) (Def!8987) (Underscore!8987) (Match!8987) (Else!8987) (Error!8987) (Case!8987) (If!8987) (Extends!8987) (Abstract!8987) (Class!8987) (Val!8987) (DelimiterValue!17974 (del!9047 List!74503)) (KeywordValue!8993 (value!289077 List!74503)) (CommentValue!17974 (value!289078 List!74503)) (WhitespaceValue!17974 (value!289079 List!74503)) (IndentationValue!8987 (value!289080 List!74503)) (String!83358) (Int32!8987) (Broken!44936 (value!289081 List!74503)) (Boolean!8988) (Unit!169455) (OperatorValue!8990 (op!9047 List!74503)) (IdentifierValue!17974 (value!289082 List!74503)) (IdentifierValue!17975 (value!289083 List!74503)) (WhitespaceValue!17975 (value!289084 List!74503)) (True!17974) (False!17974) (Broken!44937 (value!289085 List!74503)) (Broken!44938 (value!289086 List!74503)) (True!17975) (RightBrace!8987) (RightBracket!8987) (Colon!8987) (Null!8987) (Comma!8987) (LeftBracket!8987) (False!17975) (LeftBrace!8987) (ImaginaryLiteralValue!8987 (text!63355 List!74503)) (StringLiteralValue!26961 (value!289087 List!74503)) (EOFValue!8987 (value!289088 List!74503)) (IdentValue!8987 (value!289089 List!74503)) (DelimiterValue!17975 (value!289090 List!74503)) (DedentValue!8987 (value!289091 List!74503)) (NewLineValue!8987 (value!289092 List!74503)) (IntegerValue!26961 (value!289093 (_ BitVec 32)) (text!63356 List!74503)) (IntegerValue!26962 (value!289094 Int) (text!63357 List!74503)) (Times!8987) (Or!8987) (Equal!8987) (Minus!8987) (Broken!44939 (value!289095 List!74503)) (And!8987) (Div!8987) (LessEqual!8987) (Mod!8987) (Concat!30361) (Not!8987) (Plus!8987) (SpaceValue!8987 (value!289096 List!74503)) (IntegerValue!26963 (value!289097 Int) (text!63358 List!74503)) (StringLiteralValue!26962 (text!63359 List!74503)) (FloatLiteralValue!17975 (text!63360 List!74503)) (BytesLiteralValue!8987 (value!289098 List!74503)) (CommentValue!17975 (value!289099 List!74503)) (StringLiteralValue!26963 (value!289100 List!74503)) (ErrorTokenValue!8987 (msg!9048 List!74503)) )
))
(declare-datatypes ((String!83359 0))(
  ( (String!83360 (value!289101 String)) )
))
(declare-datatypes ((Regex!21374 0))(
  ( (ElementMatch!21374 (c!1451629 C!43078)) (Concat!30362 (regOne!43260 Regex!21374) (regTwo!43260 Regex!21374)) (EmptyExpr!21374) (Star!21374 (reg!21703 Regex!21374)) (EmptyLang!21374) (Union!21374 (regOne!43261 Regex!21374) (regTwo!43261 Regex!21374)) )
))
(declare-datatypes ((TokenValueInjection!17282 0))(
  ( (TokenValueInjection!17283 (toValue!11728 Int) (toChars!11587 Int)) )
))
(declare-datatypes ((Rule!17142 0))(
  ( (Rule!17143 (regex!8671 Regex!21374) (tag!9535 String!83359) (isSeparator!8671 Bool) (transformation!8671 TokenValueInjection!17282)) )
))
(declare-fun rule!156 () Rule!17142)

(declare-fun lt!2688164 () List!74504)

(declare-fun matchR!10695 (Regex!21374 List!74504) Bool)

(assert (=> b!7912088 (= res!3140387 (not (matchR!10695 (regex!8671 rule!156) lt!2688164)))))

(declare-datatypes ((Token!15754 0))(
  ( (Token!15755 (value!289102 TokenValue!8987) (rule!11971 Rule!17142) (size!43164 Int) (originalCharacters!8908 List!74504)) )
))
(declare-datatypes ((tuple2!70450 0))(
  ( (tuple2!70451 (_1!38528 Token!15754) (_2!38528 List!74504)) )
))
(declare-fun lt!2688163 () tuple2!70450)

(declare-fun list!19326 (BalanceConc!30808) List!74504)

(declare-fun charsOf!5609 (Token!15754) BalanceConc!30808)

(assert (=> b!7912088 (= lt!2688164 (list!19326 (charsOf!5609 (_1!38528 lt!2688163))))))

(declare-datatypes ((Option!17949 0))(
  ( (None!17948) (Some!17948 (v!55105 tuple2!70450)) )
))
(declare-fun get!26755 (Option!17949) tuple2!70450)

(assert (=> b!7912088 (= lt!2688163 (get!26755 None!17948))))

(declare-fun b!7912089 () Bool)

(declare-fun res!3140385 () Bool)

(assert (=> b!7912089 (=> res!3140385 e!4670488)))

(declare-fun apply!14380 (TokenValueInjection!17282 BalanceConc!30808) TokenValue!8987)

(declare-fun seqFromList!6198 (List!74504) BalanceConc!30808)

(assert (=> b!7912089 (= res!3140385 (not (= (value!289102 (_1!38528 lt!2688163)) (apply!14380 (transformation!8671 (rule!11971 (_1!38528 lt!2688163))) (seqFromList!6198 (originalCharacters!8908 (_1!38528 lt!2688163)))))))))

(declare-fun b!7912090 () Bool)

(declare-fun res!3140383 () Bool)

(assert (=> b!7912090 (=> (not res!3140383) (not e!4670492))))

(declare-datatypes ((LexerInterface!8263 0))(
  ( (LexerInterfaceExt!8260 (__x!35262 Int)) (Lexer!8261) )
))
(declare-fun thiss!15815 () LexerInterface!8263)

(declare-fun ruleValid!3982 (LexerInterface!8263 Rule!17142) Bool)

(assert (=> b!7912090 (= res!3140383 (ruleValid!3982 thiss!15815 rule!156))))

(declare-fun tp!2356731 () Bool)

(declare-fun e!4670490 () Bool)

(declare-fun e!4670491 () Bool)

(declare-fun b!7912091 () Bool)

(declare-fun inv!95446 (String!83359) Bool)

(declare-fun inv!95449 (TokenValueInjection!17282) Bool)

(assert (=> b!7912091 (= e!4670490 (and tp!2356731 (inv!95446 (tag!9535 rule!156)) (inv!95449 (transformation!8671 rule!156)) e!4670491))))

(declare-fun res!3140381 () Bool)

(assert (=> start!747042 (=> (not res!3140381) (not e!4670492))))

(assert (=> start!747042 (= res!3140381 (is-Lexer!8261 thiss!15815))))

(assert (=> start!747042 e!4670492))

(assert (=> start!747042 true))

(assert (=> start!747042 e!4670490))

(assert (=> start!747042 e!4670487))

(declare-fun b!7912092 () Bool)

(declare-fun res!3140388 () Bool)

(assert (=> b!7912092 (=> (not res!3140388) (not e!4670492))))

(assert (=> b!7912092 (= res!3140388 false)))

(declare-fun b!7912093 () Bool)

(declare-fun res!3140382 () Bool)

(assert (=> b!7912093 (=> res!3140382 e!4670488)))

(assert (=> b!7912093 (= res!3140382 (not (= (rule!11971 (_1!38528 lt!2688163)) rule!156)))))

(declare-fun b!7912094 () Bool)

(declare-fun res!3140389 () Bool)

(assert (=> b!7912094 (=> (not res!3140389) (not e!4670492))))

(declare-fun input!1480 () List!74504)

(declare-fun isEmpty!42712 (List!74504) Bool)

(declare-datatypes ((tuple2!70452 0))(
  ( (tuple2!70453 (_1!38529 List!74504) (_2!38529 List!74504)) )
))
(declare-fun findLongestMatch!1964 (Regex!21374 List!74504) tuple2!70452)

(assert (=> b!7912094 (= res!3140389 (isEmpty!42712 (_1!38529 (findLongestMatch!1964 (regex!8671 rule!156) input!1480))))))

(declare-fun b!7912095 () Bool)

(declare-fun size!43165 (List!74504) Int)

(assert (=> b!7912095 (= e!4670488 (not (= (size!43164 (_1!38528 lt!2688163)) (size!43165 (originalCharacters!8908 (_1!38528 lt!2688163))))))))

(assert (=> b!7912096 (= e!4670491 (and tp!2356729 tp!2356732))))

(declare-fun b!7912097 () Bool)

(declare-fun res!3140384 () Bool)

(assert (=> b!7912097 (=> res!3140384 e!4670488)))

(declare-fun ++!18217 (List!74504 List!74504) List!74504)

(assert (=> b!7912097 (= res!3140384 (not (= (++!18217 lt!2688164 (_2!38528 lt!2688163)) input!1480)))))

(declare-fun b!7912098 () Bool)

(declare-fun res!3140386 () Bool)

(assert (=> b!7912098 (=> res!3140386 e!4670488)))

(assert (=> b!7912098 (= res!3140386 (>= (size!43165 (_2!38528 lt!2688163)) (size!43165 input!1480)))))

(assert (= (and start!747042 res!3140381) b!7912090))

(assert (= (and b!7912090 res!3140383) b!7912094))

(assert (= (and b!7912094 res!3140389) b!7912092))

(assert (= (and b!7912092 res!3140388) b!7912088))

(assert (= (and b!7912088 (not res!3140387)) b!7912097))

(assert (= (and b!7912097 (not res!3140384)) b!7912098))

(assert (= (and b!7912098 (not res!3140386)) b!7912093))

(assert (= (and b!7912093 (not res!3140382)) b!7912089))

(assert (= (and b!7912089 (not res!3140385)) b!7912095))

(assert (= b!7912091 b!7912096))

(assert (= start!747042 b!7912091))

(assert (= (and start!747042 (is-Cons!74380 input!1480)) b!7912087))

(declare-fun m!8285680 () Bool)

(assert (=> b!7912097 m!8285680))

(declare-fun m!8285682 () Bool)

(assert (=> b!7912090 m!8285682))

(declare-fun m!8285684 () Bool)

(assert (=> b!7912088 m!8285684))

(declare-fun m!8285686 () Bool)

(assert (=> b!7912088 m!8285686))

(assert (=> b!7912088 m!8285686))

(declare-fun m!8285688 () Bool)

(assert (=> b!7912088 m!8285688))

(declare-fun m!8285690 () Bool)

(assert (=> b!7912088 m!8285690))

(declare-fun m!8285692 () Bool)

(assert (=> b!7912094 m!8285692))

(declare-fun m!8285694 () Bool)

(assert (=> b!7912094 m!8285694))

(declare-fun m!8285696 () Bool)

(assert (=> b!7912098 m!8285696))

(declare-fun m!8285698 () Bool)

(assert (=> b!7912098 m!8285698))

(declare-fun m!8285700 () Bool)

(assert (=> b!7912091 m!8285700))

(declare-fun m!8285702 () Bool)

(assert (=> b!7912091 m!8285702))

(declare-fun m!8285704 () Bool)

(assert (=> b!7912095 m!8285704))

(declare-fun m!8285706 () Bool)

(assert (=> b!7912089 m!8285706))

(assert (=> b!7912089 m!8285706))

(declare-fun m!8285708 () Bool)

(assert (=> b!7912089 m!8285708))

(push 1)

(assert (not b!7912087))

(assert (not b!7912090))

(assert (not b_next!136017))

(assert (not b!7912095))

(assert b_and!353583)

(assert (not b_next!136019))

(assert (not b!7912098))

(assert (not b!7912091))

(assert b_and!353585)

(assert (not b!7912094))

(assert (not b!7912097))

(assert tp_is_empty!53123)

(assert (not b!7912089))

(assert (not b!7912088))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353583)

(assert b_and!353585)

(assert (not b_next!136017))

(assert (not b_next!136019))

(check-sat)

(pop 1)

