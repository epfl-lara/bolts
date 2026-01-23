; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536984 () Bool)

(assert start!536984)

(declare-fun b!5094348 () Bool)

(declare-fun b_free!133347 () Bool)

(declare-fun b_next!134137 () Bool)

(assert (=> b!5094348 (= b_free!133347 (not b_next!134137))))

(declare-fun tp!1420365 () Bool)

(declare-fun b_and!350231 () Bool)

(assert (=> b!5094348 (= tp!1420365 b_and!350231)))

(declare-fun b_free!133349 () Bool)

(declare-fun b_next!134139 () Bool)

(assert (=> b!5094348 (= b_free!133349 (not b_next!134139))))

(declare-fun tp!1420364 () Bool)

(declare-fun b_and!350233 () Bool)

(assert (=> b!5094348 (= tp!1420364 b_and!350233)))

(declare-fun b!5094343 () Bool)

(declare-fun e!3177110 () Bool)

(declare-fun e!3177112 () Bool)

(declare-fun tp!1420367 () Bool)

(assert (=> b!5094343 (= e!3177110 (and e!3177112 tp!1420367))))

(declare-fun b!5094344 () Bool)

(declare-fun e!3177114 () Bool)

(declare-fun e!3177113 () Bool)

(assert (=> b!5094344 (= e!3177114 (not e!3177113))))

(declare-fun res!2168015 () Bool)

(assert (=> b!5094344 (=> res!2168015 e!3177113)))

(declare-datatypes ((List!58722 0))(
  ( (Nil!58598) (Cons!58598 (h!65046 (_ BitVec 16)) (t!371677 List!58722)) )
))
(declare-datatypes ((TokenValue!8815 0))(
  ( (FloatLiteralValue!17630 (text!62150 List!58722)) (TokenValueExt!8814 (__x!34919 Int)) (Broken!44075 (value!272564 List!58722)) (Object!8938) (End!8815) (Def!8815) (Underscore!8815) (Match!8815) (Else!8815) (Error!8815) (Case!8815) (If!8815) (Extends!8815) (Abstract!8815) (Class!8815) (Val!8815) (DelimiterValue!17630 (del!8875 List!58722)) (KeywordValue!8821 (value!272565 List!58722)) (CommentValue!17630 (value!272566 List!58722)) (WhitespaceValue!17630 (value!272567 List!58722)) (IndentationValue!8815 (value!272568 List!58722)) (String!66998) (Int32!8815) (Broken!44076 (value!272569 List!58722)) (Boolean!8816) (Unit!149639) (OperatorValue!8818 (op!8875 List!58722)) (IdentifierValue!17630 (value!272570 List!58722)) (IdentifierValue!17631 (value!272571 List!58722)) (WhitespaceValue!17631 (value!272572 List!58722)) (True!17630) (False!17630) (Broken!44077 (value!272573 List!58722)) (Broken!44078 (value!272574 List!58722)) (True!17631) (RightBrace!8815) (RightBracket!8815) (Colon!8815) (Null!8815) (Comma!8815) (LeftBracket!8815) (False!17631) (LeftBrace!8815) (ImaginaryLiteralValue!8815 (text!62151 List!58722)) (StringLiteralValue!26445 (value!272575 List!58722)) (EOFValue!8815 (value!272576 List!58722)) (IdentValue!8815 (value!272577 List!58722)) (DelimiterValue!17631 (value!272578 List!58722)) (DedentValue!8815 (value!272579 List!58722)) (NewLineValue!8815 (value!272580 List!58722)) (IntegerValue!26445 (value!272581 (_ BitVec 32)) (text!62152 List!58722)) (IntegerValue!26446 (value!272582 Int) (text!62153 List!58722)) (Times!8815) (Or!8815) (Equal!8815) (Minus!8815) (Broken!44079 (value!272583 List!58722)) (And!8815) (Div!8815) (LessEqual!8815) (Mod!8815) (Concat!22791) (Not!8815) (Plus!8815) (SpaceValue!8815 (value!272584 List!58722)) (IntegerValue!26447 (value!272585 Int) (text!62154 List!58722)) (StringLiteralValue!26446 (text!62155 List!58722)) (FloatLiteralValue!17631 (text!62156 List!58722)) (BytesLiteralValue!8815 (value!272586 List!58722)) (CommentValue!17631 (value!272587 List!58722)) (StringLiteralValue!26447 (value!272588 List!58722)) (ErrorTokenValue!8815 (msg!8876 List!58722)) )
))
(declare-datatypes ((C!28210 0))(
  ( (C!28211 (val!23757 Int)) )
))
(declare-datatypes ((List!58723 0))(
  ( (Nil!58599) (Cons!58599 (h!65047 C!28210) (t!371678 List!58723)) )
))
(declare-datatypes ((IArray!31407 0))(
  ( (IArray!31408 (innerList!15761 List!58723)) )
))
(declare-datatypes ((Conc!15673 0))(
  ( (Node!15673 (left!43010 Conc!15673) (right!43340 Conc!15673) (csize!31576 Int) (cheight!15884 Int)) (Leaf!26015 (xs!19055 IArray!31407) (csize!31577 Int)) (Empty!15673) )
))
(declare-datatypes ((BalanceConc!30464 0))(
  ( (BalanceConc!30465 (c!875464 Conc!15673)) )
))
(declare-datatypes ((TokenValueInjection!16938 0))(
  ( (TokenValueInjection!16939 (toValue!11524 Int) (toChars!11383 Int)) )
))
(declare-datatypes ((Regex!13976 0))(
  ( (ElementMatch!13976 (c!875465 C!28210)) (Concat!22792 (regOne!28464 Regex!13976) (regTwo!28464 Regex!13976)) (EmptyExpr!13976) (Star!13976 (reg!14305 Regex!13976)) (EmptyLang!13976) (Union!13976 (regOne!28465 Regex!13976) (regTwo!28465 Regex!13976)) )
))
(declare-datatypes ((String!66999 0))(
  ( (String!67000 (value!272589 String)) )
))
(declare-datatypes ((Rule!16802 0))(
  ( (Rule!16803 (regex!8501 Regex!13976) (tag!9365 String!66999) (isSeparator!8501 Bool) (transformation!8501 TokenValueInjection!16938)) )
))
(declare-datatypes ((List!58724 0))(
  ( (Nil!58600) (Cons!58600 (h!65048 Rule!16802) (t!371679 List!58724)) )
))
(declare-fun rulesArg!145 () List!58724)

(assert (=> b!5094344 (= res!2168015 (or (and (is-Cons!58600 rulesArg!145) (is-Nil!58600 (t!371679 rulesArg!145))) (not (is-Cons!58600 rulesArg!145))))))

(declare-fun input!1210 () List!58723)

(declare-fun isPrefix!5397 (List!58723 List!58723) Bool)

(assert (=> b!5094344 (isPrefix!5397 input!1210 input!1210)))

(declare-datatypes ((Unit!149640 0))(
  ( (Unit!149641) )
))
(declare-fun lt!2093037 () Unit!149640)

(declare-fun lemmaIsPrefixRefl!3656 (List!58723 List!58723) Unit!149640)

(assert (=> b!5094344 (= lt!2093037 (lemmaIsPrefixRefl!3656 input!1210 input!1210))))

(declare-fun b!5094345 () Bool)

(declare-fun res!2168016 () Bool)

(assert (=> b!5094345 (=> (not res!2168016) (not e!3177114))))

(declare-datatypes ((LexerInterface!8093 0))(
  ( (LexerInterfaceExt!8090 (__x!34920 Int)) (Lexer!8091) )
))
(declare-fun thiss!14775 () LexerInterface!8093)

(declare-fun rulesValidInductive!3326 (LexerInterface!8093 List!58724) Bool)

(assert (=> b!5094345 (= res!2168016 (rulesValidInductive!3326 thiss!14775 rulesArg!145))))

(declare-fun b!5094346 () Bool)

(declare-fun e!3177111 () Bool)

(declare-fun tp_is_empty!37217 () Bool)

(declare-fun tp!1420366 () Bool)

(assert (=> b!5094346 (= e!3177111 (and tp_is_empty!37217 tp!1420366))))

(declare-fun b!5094347 () Bool)

(declare-fun size!39266 (List!58724) Int)

(assert (=> b!5094347 (= e!3177113 (< (size!39266 (t!371679 rulesArg!145)) (size!39266 rulesArg!145)))))

(declare-datatypes ((Token!15442 0))(
  ( (Token!15443 (value!272590 TokenValue!8815) (rule!11773 Rule!16802) (size!39267 Int) (originalCharacters!8752 List!58723)) )
))
(declare-datatypes ((tuple2!63324 0))(
  ( (tuple2!63325 (_1!34965 Token!15442) (_2!34965 List!58723)) )
))
(declare-datatypes ((Option!14630 0))(
  ( (None!14629) (Some!14629 (v!50642 tuple2!63324)) )
))
(declare-fun lt!2093038 () Option!14630)

(declare-fun maxPrefixOneRuleZipper!317 (LexerInterface!8093 Rule!16802 List!58723) Option!14630)

(assert (=> b!5094347 (= lt!2093038 (maxPrefixOneRuleZipper!317 thiss!14775 (h!65048 rulesArg!145) input!1210))))

(declare-fun res!2168017 () Bool)

(assert (=> start!536984 (=> (not res!2168017) (not e!3177114))))

(assert (=> start!536984 (= res!2168017 (is-Lexer!8091 thiss!14775))))

(assert (=> start!536984 e!3177114))

(assert (=> start!536984 true))

(assert (=> start!536984 e!3177110))

(assert (=> start!536984 e!3177111))

(declare-fun e!3177115 () Bool)

(assert (=> b!5094348 (= e!3177115 (and tp!1420365 tp!1420364))))

(declare-fun tp!1420368 () Bool)

(declare-fun b!5094349 () Bool)

(declare-fun inv!78095 (String!66999) Bool)

(declare-fun inv!78098 (TokenValueInjection!16938) Bool)

(assert (=> b!5094349 (= e!3177112 (and tp!1420368 (inv!78095 (tag!9365 (h!65048 rulesArg!145))) (inv!78098 (transformation!8501 (h!65048 rulesArg!145))) e!3177115))))

(declare-fun b!5094350 () Bool)

(declare-fun res!2168018 () Bool)

(assert (=> b!5094350 (=> (not res!2168018) (not e!3177114))))

(declare-fun isEmpty!31716 (List!58724) Bool)

(assert (=> b!5094350 (= res!2168018 (not (isEmpty!31716 rulesArg!145)))))

(assert (= (and start!536984 res!2168017) b!5094345))

(assert (= (and b!5094345 res!2168016) b!5094350))

(assert (= (and b!5094350 res!2168018) b!5094344))

(assert (= (and b!5094344 (not res!2168015)) b!5094347))

(assert (= b!5094349 b!5094348))

(assert (= b!5094343 b!5094349))

(assert (= (and start!536984 (is-Cons!58600 rulesArg!145)) b!5094343))

(assert (= (and start!536984 (is-Cons!58599 input!1210)) b!5094346))

(declare-fun m!6152176 () Bool)

(assert (=> b!5094345 m!6152176))

(declare-fun m!6152178 () Bool)

(assert (=> b!5094350 m!6152178))

(declare-fun m!6152180 () Bool)

(assert (=> b!5094349 m!6152180))

(declare-fun m!6152182 () Bool)

(assert (=> b!5094349 m!6152182))

(declare-fun m!6152184 () Bool)

(assert (=> b!5094344 m!6152184))

(declare-fun m!6152186 () Bool)

(assert (=> b!5094344 m!6152186))

(declare-fun m!6152188 () Bool)

(assert (=> b!5094347 m!6152188))

(declare-fun m!6152190 () Bool)

(assert (=> b!5094347 m!6152190))

(declare-fun m!6152192 () Bool)

(assert (=> b!5094347 m!6152192))

(push 1)

(assert b_and!350233)

(assert (not b!5094350))

(assert (not b!5094349))

(assert b_and!350231)

(assert tp_is_empty!37217)

(assert (not b!5094344))

(assert (not b_next!134137))

(assert (not b!5094343))

(assert (not b!5094345))

(assert (not b!5094346))

(assert (not b_next!134139))

(assert (not b!5094347))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350233)

(assert b_and!350231)

(assert (not b_next!134137))

(assert (not b_next!134139))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648820 () Bool)

(declare-fun lt!2093047 () Int)

(assert (=> d!1648820 (>= lt!2093047 0)))

(declare-fun e!3177140 () Int)

(assert (=> d!1648820 (= lt!2093047 e!3177140)))

(declare-fun c!875470 () Bool)

(assert (=> d!1648820 (= c!875470 (is-Nil!58600 (t!371679 rulesArg!145)))))

(assert (=> d!1648820 (= (size!39266 (t!371679 rulesArg!145)) lt!2093047)))

(declare-fun b!5094379 () Bool)

(assert (=> b!5094379 (= e!3177140 0)))

(declare-fun b!5094380 () Bool)

(assert (=> b!5094380 (= e!3177140 (+ 1 (size!39266 (t!371679 (t!371679 rulesArg!145)))))))

(assert (= (and d!1648820 c!875470) b!5094379))

(assert (= (and d!1648820 (not c!875470)) b!5094380))

(declare-fun m!6152212 () Bool)

(assert (=> b!5094380 m!6152212))

(assert (=> b!5094347 d!1648820))

(declare-fun d!1648822 () Bool)

(declare-fun lt!2093048 () Int)

(assert (=> d!1648822 (>= lt!2093048 0)))

(declare-fun e!3177141 () Int)

(assert (=> d!1648822 (= lt!2093048 e!3177141)))

(declare-fun c!875471 () Bool)

(assert (=> d!1648822 (= c!875471 (is-Nil!58600 rulesArg!145))))

(assert (=> d!1648822 (= (size!39266 rulesArg!145) lt!2093048)))

(declare-fun b!5094381 () Bool)

(assert (=> b!5094381 (= e!3177141 0)))

(declare-fun b!5094382 () Bool)

(assert (=> b!5094382 (= e!3177141 (+ 1 (size!39266 (t!371679 rulesArg!145))))))

(assert (= (and d!1648822 c!875471) b!5094381))

(assert (= (and d!1648822 (not c!875471)) b!5094382))

(assert (=> b!5094382 m!6152188))

(assert (=> b!5094347 d!1648822))

(declare-fun d!1648824 () Bool)

(declare-fun lt!2093070 () Option!14630)

(declare-fun maxPrefixOneRule!3699 (LexerInterface!8093 Rule!16802 List!58723) Option!14630)

(assert (=> d!1648824 (= lt!2093070 (maxPrefixOneRule!3699 thiss!14775 (h!65048 rulesArg!145) input!1210))))

(declare-fun e!3177151 () Option!14630)

(assert (=> d!1648824 (= lt!2093070 e!3177151)))

(declare-fun c!875479 () Bool)

(declare-datatypes ((tuple2!63328 0))(
  ( (tuple2!63329 (_1!34967 List!58723) (_2!34967 List!58723)) )
))
(declare-fun lt!2093069 () tuple2!63328)

(declare-fun isEmpty!31718 (List!58723) Bool)

(assert (=> d!1648824 (= c!875479 (isEmpty!31718 (_1!34967 lt!2093069)))))

(declare-fun findLongestMatchWithZipper!105 (Regex!13976 List!58723) tuple2!63328)

(assert (=> d!1648824 (= lt!2093069 (findLongestMatchWithZipper!105 (regex!8501 (h!65048 rulesArg!145)) input!1210))))

(declare-fun ruleValid!3899 (LexerInterface!8093 Rule!16802) Bool)

(assert (=> d!1648824 (ruleValid!3899 thiss!14775 (h!65048 rulesArg!145))))

(assert (=> d!1648824 (= (maxPrefixOneRuleZipper!317 thiss!14775 (h!65048 rulesArg!145) input!1210) lt!2093070)))

(declare-fun b!5094397 () Bool)

(assert (=> b!5094397 (= e!3177151 None!14629)))

(declare-fun b!5094398 () Bool)

(declare-fun apply!14288 (TokenValueInjection!16938 BalanceConc!30464) TokenValue!8815)

(declare-fun seqFromList!6106 (List!58723) BalanceConc!30464)

(declare-fun size!39270 (List!58723) Int)

(assert (=> b!5094398 (= e!3177151 (Some!14629 (tuple2!63325 (Token!15443 (apply!14288 (transformation!8501 (h!65048 rulesArg!145)) (seqFromList!6106 (_1!34967 lt!2093069))) (h!65048 rulesArg!145) (size!39270 (_1!34967 lt!2093069)) (_1!34967 lt!2093069)) (_2!34967 lt!2093069))))))

(declare-fun lt!2093067 () Unit!149640)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1966 (Regex!13976 List!58723) Unit!149640)

(assert (=> b!5094398 (= lt!2093067 (longestMatchIsAcceptedByMatchOrIsEmpty!1966 (regex!8501 (h!65048 rulesArg!145)) input!1210))))

(declare-fun res!2168039 () Bool)

(declare-fun findLongestMatchInner!2013 (Regex!13976 List!58723 Int List!58723 List!58723 Int) tuple2!63328)

(assert (=> b!5094398 (= res!2168039 (isEmpty!31718 (_1!34967 (findLongestMatchInner!2013 (regex!8501 (h!65048 rulesArg!145)) Nil!58599 (size!39270 Nil!58599) input!1210 input!1210 (size!39270 input!1210)))))))

(declare-fun e!3177150 () Bool)

(assert (=> b!5094398 (=> res!2168039 e!3177150)))

(assert (=> b!5094398 e!3177150))

(declare-fun lt!2093066 () Unit!149640)

(assert (=> b!5094398 (= lt!2093066 lt!2093067)))

(declare-fun lt!2093068 () Unit!149640)

(declare-fun lemmaInv!1406 (TokenValueInjection!16938) Unit!149640)

(assert (=> b!5094398 (= lt!2093068 (lemmaInv!1406 (transformation!8501 (h!65048 rulesArg!145))))))

(declare-fun lt!2093065 () Unit!149640)

(declare-fun lemmaSemiInverse!2639 (TokenValueInjection!16938 BalanceConc!30464) Unit!149640)

(assert (=> b!5094398 (= lt!2093065 (lemmaSemiInverse!2639 (transformation!8501 (h!65048 rulesArg!145)) (seqFromList!6106 (_1!34967 lt!2093069))))))

(declare-fun b!5094399 () Bool)

(declare-fun matchR!6788 (Regex!13976 List!58723) Bool)

(assert (=> b!5094399 (= e!3177150 (matchR!6788 (regex!8501 (h!65048 rulesArg!145)) (_1!34967 (findLongestMatchInner!2013 (regex!8501 (h!65048 rulesArg!145)) Nil!58599 (size!39270 Nil!58599) input!1210 input!1210 (size!39270 input!1210)))))))

(assert (= (and d!1648824 c!875479) b!5094397))

(assert (= (and d!1648824 (not c!875479)) b!5094398))

(assert (= (and b!5094398 (not res!2168039)) b!5094399))

(declare-fun m!6152216 () Bool)

(assert (=> d!1648824 m!6152216))

(declare-fun m!6152218 () Bool)

(assert (=> d!1648824 m!6152218))

(declare-fun m!6152220 () Bool)

(assert (=> d!1648824 m!6152220))

(declare-fun m!6152222 () Bool)

(assert (=> d!1648824 m!6152222))

(declare-fun m!6152224 () Bool)

(assert (=> b!5094398 m!6152224))

(assert (=> b!5094398 m!6152224))

(declare-fun m!6152226 () Bool)

(assert (=> b!5094398 m!6152226))

(declare-fun m!6152228 () Bool)

(assert (=> b!5094398 m!6152228))

(declare-fun m!6152230 () Bool)

(assert (=> b!5094398 m!6152230))

(declare-fun m!6152232 () Bool)

(assert (=> b!5094398 m!6152232))

(declare-fun m!6152234 () Bool)

(assert (=> b!5094398 m!6152234))

(declare-fun m!6152236 () Bool)

(assert (=> b!5094398 m!6152236))

(assert (=> b!5094398 m!6152226))

(declare-fun m!6152238 () Bool)

(assert (=> b!5094398 m!6152238))

(declare-fun m!6152240 () Bool)

(assert (=> b!5094398 m!6152240))

(assert (=> b!5094398 m!6152230))

(declare-fun m!6152242 () Bool)

(assert (=> b!5094398 m!6152242))

(assert (=> b!5094398 m!6152230))

(assert (=> b!5094399 m!6152224))

(assert (=> b!5094399 m!6152226))

(assert (=> b!5094399 m!6152224))

(assert (=> b!5094399 m!6152226))

(assert (=> b!5094399 m!6152228))

(declare-fun m!6152244 () Bool)

(assert (=> b!5094399 m!6152244))

(assert (=> b!5094347 d!1648824))

(declare-fun b!5094409 () Bool)

(declare-fun res!2168051 () Bool)

(declare-fun e!3177160 () Bool)

(assert (=> b!5094409 (=> (not res!2168051) (not e!3177160))))

(declare-fun head!10816 (List!58723) C!28210)

(assert (=> b!5094409 (= res!2168051 (= (head!10816 input!1210) (head!10816 input!1210)))))

(declare-fun b!5094410 () Bool)

(declare-fun tail!9971 (List!58723) List!58723)

(assert (=> b!5094410 (= e!3177160 (isPrefix!5397 (tail!9971 input!1210) (tail!9971 input!1210)))))

(declare-fun d!1648832 () Bool)

(declare-fun e!3177158 () Bool)

(assert (=> d!1648832 e!3177158))

(declare-fun res!2168049 () Bool)

(assert (=> d!1648832 (=> res!2168049 e!3177158)))

(declare-fun lt!2093073 () Bool)

(assert (=> d!1648832 (= res!2168049 (not lt!2093073))))

(declare-fun e!3177159 () Bool)

(assert (=> d!1648832 (= lt!2093073 e!3177159)))

(declare-fun res!2168050 () Bool)

(assert (=> d!1648832 (=> res!2168050 e!3177159)))

(assert (=> d!1648832 (= res!2168050 (is-Nil!58599 input!1210))))

(assert (=> d!1648832 (= (isPrefix!5397 input!1210 input!1210) lt!2093073)))

(declare-fun b!5094411 () Bool)

(assert (=> b!5094411 (= e!3177158 (>= (size!39270 input!1210) (size!39270 input!1210)))))

(declare-fun b!5094408 () Bool)

(assert (=> b!5094408 (= e!3177159 e!3177160)))

(declare-fun res!2168048 () Bool)

(assert (=> b!5094408 (=> (not res!2168048) (not e!3177160))))

(assert (=> b!5094408 (= res!2168048 (not (is-Nil!58599 input!1210)))))

(assert (= (and d!1648832 (not res!2168050)) b!5094408))

(assert (= (and b!5094408 res!2168048) b!5094409))

(assert (= (and b!5094409 res!2168051) b!5094410))

(assert (= (and d!1648832 (not res!2168049)) b!5094411))

(declare-fun m!6152246 () Bool)

(assert (=> b!5094409 m!6152246))

(assert (=> b!5094409 m!6152246))

(declare-fun m!6152248 () Bool)

(assert (=> b!5094410 m!6152248))

(assert (=> b!5094410 m!6152248))

(assert (=> b!5094410 m!6152248))

(assert (=> b!5094410 m!6152248))

(declare-fun m!6152250 () Bool)

(assert (=> b!5094410 m!6152250))

(assert (=> b!5094411 m!6152226))

(assert (=> b!5094411 m!6152226))

(assert (=> b!5094344 d!1648832))

(declare-fun d!1648834 () Bool)

(assert (=> d!1648834 (isPrefix!5397 input!1210 input!1210)))

(declare-fun lt!2093076 () Unit!149640)

(declare-fun choose!37303 (List!58723 List!58723) Unit!149640)

(assert (=> d!1648834 (= lt!2093076 (choose!37303 input!1210 input!1210))))

(assert (=> d!1648834 (= (lemmaIsPrefixRefl!3656 input!1210 input!1210) lt!2093076)))

(declare-fun bs!1191297 () Bool)

(assert (= bs!1191297 d!1648834))

(assert (=> bs!1191297 m!6152184))

(declare-fun m!6152252 () Bool)

(assert (=> bs!1191297 m!6152252))

(assert (=> b!5094344 d!1648834))

(declare-fun d!1648836 () Bool)

(assert (=> d!1648836 (= (inv!78095 (tag!9365 (h!65048 rulesArg!145))) (= (mod (str.len (value!272589 (tag!9365 (h!65048 rulesArg!145)))) 2) 0))))

(assert (=> b!5094349 d!1648836))

(declare-fun d!1648838 () Bool)

(declare-fun res!2168054 () Bool)

(declare-fun e!3177163 () Bool)

(assert (=> d!1648838 (=> (not res!2168054) (not e!3177163))))

(declare-fun semiInverseModEq!3786 (Int Int) Bool)

(assert (=> d!1648838 (= res!2168054 (semiInverseModEq!3786 (toChars!11383 (transformation!8501 (h!65048 rulesArg!145))) (toValue!11524 (transformation!8501 (h!65048 rulesArg!145)))))))

(assert (=> d!1648838 (= (inv!78098 (transformation!8501 (h!65048 rulesArg!145))) e!3177163)))

(declare-fun b!5094414 () Bool)

(declare-fun equivClasses!3601 (Int Int) Bool)

(assert (=> b!5094414 (= e!3177163 (equivClasses!3601 (toChars!11383 (transformation!8501 (h!65048 rulesArg!145))) (toValue!11524 (transformation!8501 (h!65048 rulesArg!145)))))))

(assert (= (and d!1648838 res!2168054) b!5094414))

(declare-fun m!6152254 () Bool)

(assert (=> d!1648838 m!6152254))

(declare-fun m!6152256 () Bool)

(assert (=> b!5094414 m!6152256))

(assert (=> b!5094349 d!1648838))

(declare-fun d!1648840 () Bool)

(assert (=> d!1648840 true))

(declare-fun lt!2093105 () Bool)

(declare-fun lambda!249853 () Int)

(declare-fun forall!13473 (List!58724 Int) Bool)

(assert (=> d!1648840 (= lt!2093105 (forall!13473 rulesArg!145 lambda!249853))))

(declare-fun e!3177187 () Bool)

(assert (=> d!1648840 (= lt!2093105 e!3177187)))

(declare-fun res!2168078 () Bool)

(assert (=> d!1648840 (=> res!2168078 e!3177187)))

(assert (=> d!1648840 (= res!2168078 (not (is-Cons!58600 rulesArg!145)))))

(assert (=> d!1648840 (= (rulesValidInductive!3326 thiss!14775 rulesArg!145) lt!2093105)))

(declare-fun b!5094444 () Bool)

(declare-fun e!3177188 () Bool)

(assert (=> b!5094444 (= e!3177187 e!3177188)))

(declare-fun res!2168079 () Bool)

(assert (=> b!5094444 (=> (not res!2168079) (not e!3177188))))

(assert (=> b!5094444 (= res!2168079 (ruleValid!3899 thiss!14775 (h!65048 rulesArg!145)))))

(declare-fun b!5094445 () Bool)

(assert (=> b!5094445 (= e!3177188 (rulesValidInductive!3326 thiss!14775 (t!371679 rulesArg!145)))))

(assert (= (and d!1648840 (not res!2168078)) b!5094444))

(assert (= (and b!5094444 res!2168079) b!5094445))

(declare-fun m!6152296 () Bool)

(assert (=> d!1648840 m!6152296))

(assert (=> b!5094444 m!6152222))

(declare-fun m!6152298 () Bool)

(assert (=> b!5094445 m!6152298))

(assert (=> b!5094345 d!1648840))

(declare-fun d!1648848 () Bool)

(assert (=> d!1648848 (= (isEmpty!31716 rulesArg!145) (is-Nil!58600 rulesArg!145))))

(assert (=> b!5094350 d!1648848))

(declare-fun b!5094459 () Bool)

(declare-fun e!3177191 () Bool)

(declare-fun tp!1420395 () Bool)

(declare-fun tp!1420396 () Bool)

(assert (=> b!5094459 (= e!3177191 (and tp!1420395 tp!1420396))))

(declare-fun b!5094460 () Bool)

(declare-fun tp!1420397 () Bool)

(assert (=> b!5094460 (= e!3177191 tp!1420397)))

(declare-fun b!5094461 () Bool)

(declare-fun tp!1420394 () Bool)

(declare-fun tp!1420398 () Bool)

(assert (=> b!5094461 (= e!3177191 (and tp!1420394 tp!1420398))))

(declare-fun b!5094458 () Bool)

(assert (=> b!5094458 (= e!3177191 tp_is_empty!37217)))

(assert (=> b!5094349 (= tp!1420368 e!3177191)))

(assert (= (and b!5094349 (is-ElementMatch!13976 (regex!8501 (h!65048 rulesArg!145)))) b!5094458))

(assert (= (and b!5094349 (is-Concat!22792 (regex!8501 (h!65048 rulesArg!145)))) b!5094459))

(assert (= (and b!5094349 (is-Star!13976 (regex!8501 (h!65048 rulesArg!145)))) b!5094460))

(assert (= (and b!5094349 (is-Union!13976 (regex!8501 (h!65048 rulesArg!145)))) b!5094461))

(declare-fun b!5094472 () Bool)

(declare-fun b_free!133355 () Bool)

(declare-fun b_next!134145 () Bool)

(assert (=> b!5094472 (= b_free!133355 (not b_next!134145))))

(declare-fun tp!1420407 () Bool)

(declare-fun b_and!350239 () Bool)

(assert (=> b!5094472 (= tp!1420407 b_and!350239)))

(declare-fun b_free!133357 () Bool)

(declare-fun b_next!134147 () Bool)

(assert (=> b!5094472 (= b_free!133357 (not b_next!134147))))

(declare-fun tp!1420409 () Bool)

(declare-fun b_and!350241 () Bool)

(assert (=> b!5094472 (= tp!1420409 b_and!350241)))

(declare-fun e!3177202 () Bool)

(assert (=> b!5094472 (= e!3177202 (and tp!1420407 tp!1420409))))

(declare-fun e!3177200 () Bool)

(declare-fun tp!1420410 () Bool)

(declare-fun b!5094471 () Bool)

(assert (=> b!5094471 (= e!3177200 (and tp!1420410 (inv!78095 (tag!9365 (h!65048 (t!371679 rulesArg!145)))) (inv!78098 (transformation!8501 (h!65048 (t!371679 rulesArg!145)))) e!3177202))))

(declare-fun b!5094470 () Bool)

(declare-fun e!3177201 () Bool)

(declare-fun tp!1420408 () Bool)

(assert (=> b!5094470 (= e!3177201 (and e!3177200 tp!1420408))))

(assert (=> b!5094343 (= tp!1420367 e!3177201)))

(assert (= b!5094471 b!5094472))

(assert (= b!5094470 b!5094471))

(assert (= (and b!5094343 (is-Cons!58600 (t!371679 rulesArg!145))) b!5094470))

(declare-fun m!6152300 () Bool)

(assert (=> b!5094471 m!6152300))

(declare-fun m!6152302 () Bool)

(assert (=> b!5094471 m!6152302))

(declare-fun b!5094477 () Bool)

(declare-fun e!3177206 () Bool)

(declare-fun tp!1420413 () Bool)

(assert (=> b!5094477 (= e!3177206 (and tp_is_empty!37217 tp!1420413))))

(assert (=> b!5094346 (= tp!1420366 e!3177206)))

(assert (= (and b!5094346 (is-Cons!58599 (t!371678 input!1210))) b!5094477))

(push 1)

(assert b_and!350233)

(assert (not b!5094459))

(assert (not b!5094399))

(assert b_and!350241)

(assert (not b!5094471))

(assert (not b!5094477))

(assert (not b!5094382))

(assert (not d!1648838))

(assert (not b!5094409))

(assert b_and!350231)

(assert b_and!350239)

(assert (not b!5094470))

(assert (not b!5094461))

(assert tp_is_empty!37217)

(assert (not b_next!134147))

(assert (not b!5094460))

(assert (not d!1648824))

(assert (not b!5094398))

(assert (not b!5094445))

(assert (not d!1648834))

(assert (not b_next!134137))

(assert (not b!5094444))

(assert (not b_next!134139))

(assert (not b!5094380))

(assert (not b!5094414))

(assert (not d!1648840))

(assert (not b!5094411))

(assert (not b_next!134145))

(assert (not b!5094410))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350233)

(assert (not b_next!134137))

(assert b_and!350241)

(assert b_and!350231)

(assert b_and!350239)

(assert (not b_next!134147))

(assert (not b_next!134139))

(assert (not b_next!134145))

(check-sat)

(pop 1)

