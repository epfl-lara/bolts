; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271928 () Bool)

(assert start!271928)

(declare-fun b!2810350 () Bool)

(declare-fun b_free!80229 () Bool)

(declare-fun b_next!80933 () Bool)

(assert (=> b!2810350 (= b_free!80229 (not b_next!80933))))

(declare-fun tp!897333 () Bool)

(declare-fun b_and!205495 () Bool)

(assert (=> b!2810350 (= tp!897333 b_and!205495)))

(declare-fun b_free!80231 () Bool)

(declare-fun b_next!80935 () Bool)

(assert (=> b!2810350 (= b_free!80231 (not b_next!80935))))

(declare-fun tp!897336 () Bool)

(declare-fun b_and!205497 () Bool)

(assert (=> b!2810350 (= tp!897336 b_and!205497)))

(declare-fun b!2810347 () Bool)

(declare-fun b_free!80233 () Bool)

(declare-fun b_next!80937 () Bool)

(assert (=> b!2810347 (= b_free!80233 (not b_next!80937))))

(declare-fun tp!897339 () Bool)

(declare-fun b_and!205499 () Bool)

(assert (=> b!2810347 (= tp!897339 b_and!205499)))

(declare-fun b_free!80235 () Bool)

(declare-fun b_next!80939 () Bool)

(assert (=> b!2810347 (= b_free!80235 (not b_next!80939))))

(declare-fun tp!897335 () Bool)

(declare-fun b_and!205501 () Bool)

(assert (=> b!2810347 (= tp!897335 b_and!205501)))

(declare-fun e!1777296 () Bool)

(declare-fun e!1777294 () Bool)

(declare-fun b!2810345 () Bool)

(declare-datatypes ((List!32907 0))(
  ( (Nil!32807) (Cons!32807 (h!38227 (_ BitVec 16)) (t!229823 List!32907)) )
))
(declare-datatypes ((TokenValue!5139 0))(
  ( (FloatLiteralValue!10278 (text!36418 List!32907)) (TokenValueExt!5138 (__x!21935 Int)) (Broken!25695 (value!158018 List!32907)) (Object!5238) (End!5139) (Def!5139) (Underscore!5139) (Match!5139) (Else!5139) (Error!5139) (Case!5139) (If!5139) (Extends!5139) (Abstract!5139) (Class!5139) (Val!5139) (DelimiterValue!10278 (del!5199 List!32907)) (KeywordValue!5145 (value!158019 List!32907)) (CommentValue!10278 (value!158020 List!32907)) (WhitespaceValue!10278 (value!158021 List!32907)) (IndentationValue!5139 (value!158022 List!32907)) (String!36030) (Int32!5139) (Broken!25696 (value!158023 List!32907)) (Boolean!5140) (Unit!46833) (OperatorValue!5142 (op!5199 List!32907)) (IdentifierValue!10278 (value!158024 List!32907)) (IdentifierValue!10279 (value!158025 List!32907)) (WhitespaceValue!10279 (value!158026 List!32907)) (True!10278) (False!10278) (Broken!25697 (value!158027 List!32907)) (Broken!25698 (value!158028 List!32907)) (True!10279) (RightBrace!5139) (RightBracket!5139) (Colon!5139) (Null!5139) (Comma!5139) (LeftBracket!5139) (False!10279) (LeftBrace!5139) (ImaginaryLiteralValue!5139 (text!36419 List!32907)) (StringLiteralValue!15417 (value!158029 List!32907)) (EOFValue!5139 (value!158030 List!32907)) (IdentValue!5139 (value!158031 List!32907)) (DelimiterValue!10279 (value!158032 List!32907)) (DedentValue!5139 (value!158033 List!32907)) (NewLineValue!5139 (value!158034 List!32907)) (IntegerValue!15417 (value!158035 (_ BitVec 32)) (text!36420 List!32907)) (IntegerValue!15418 (value!158036 Int) (text!36421 List!32907)) (Times!5139) (Or!5139) (Equal!5139) (Minus!5139) (Broken!25699 (value!158037 List!32907)) (And!5139) (Div!5139) (LessEqual!5139) (Mod!5139) (Concat!13426) (Not!5139) (Plus!5139) (SpaceValue!5139 (value!158038 List!32907)) (IntegerValue!15419 (value!158039 Int) (text!36422 List!32907)) (StringLiteralValue!15418 (text!36423 List!32907)) (FloatLiteralValue!10279 (text!36424 List!32907)) (BytesLiteralValue!5139 (value!158040 List!32907)) (CommentValue!10279 (value!158041 List!32907)) (StringLiteralValue!15419 (value!158042 List!32907)) (ErrorTokenValue!5139 (msg!5200 List!32907)) )
))
(declare-datatypes ((C!16732 0))(
  ( (C!16733 (val!10300 Int)) )
))
(declare-datatypes ((List!32908 0))(
  ( (Nil!32808) (Cons!32808 (h!38228 C!16732) (t!229824 List!32908)) )
))
(declare-datatypes ((IArray!20317 0))(
  ( (IArray!20318 (innerList!10216 List!32908)) )
))
(declare-datatypes ((Conc!10156 0))(
  ( (Node!10156 (left!24749 Conc!10156) (right!25079 Conc!10156) (csize!20542 Int) (cheight!10367 Int)) (Leaf!15468 (xs!13268 IArray!20317) (csize!20543 Int)) (Empty!10156) )
))
(declare-datatypes ((BalanceConc!19926 0))(
  ( (BalanceConc!19927 (c!455296 Conc!10156)) )
))
(declare-datatypes ((TokenValueInjection!9718 0))(
  ( (TokenValueInjection!9719 (toValue!6919 Int) (toChars!6778 Int)) )
))
(declare-datatypes ((Regex!8287 0))(
  ( (ElementMatch!8287 (c!455297 C!16732)) (Concat!13427 (regOne!17086 Regex!8287) (regTwo!17086 Regex!8287)) (EmptyExpr!8287) (Star!8287 (reg!8616 Regex!8287)) (EmptyLang!8287) (Union!8287 (regOne!17087 Regex!8287) (regTwo!17087 Regex!8287)) )
))
(declare-datatypes ((String!36031 0))(
  ( (String!36032 (value!158043 String)) )
))
(declare-datatypes ((Rule!9634 0))(
  ( (Rule!9635 (regex!4917 Regex!8287) (tag!5421 String!36031) (isSeparator!4917 Bool) (transformation!4917 TokenValueInjection!9718)) )
))
(declare-datatypes ((Token!9236 0))(
  ( (Token!9237 (value!158044 TokenValue!5139) (rule!7345 Rule!9634) (size!25572 Int) (originalCharacters!5649 List!32908)) )
))
(declare-fun separatorToken!99 () Token!9236)

(declare-fun tp!897337 () Bool)

(declare-fun inv!21 (TokenValue!5139) Bool)

(assert (=> b!2810345 (= e!1777294 (and (inv!21 (value!158044 separatorToken!99)) e!1777296 tp!897337))))

(declare-fun tp!897334 () Bool)

(declare-fun b!2810346 () Bool)

(declare-fun e!1777298 () Bool)

(declare-fun inv!44524 (String!36031) Bool)

(declare-fun inv!44527 (TokenValueInjection!9718) Bool)

(assert (=> b!2810346 (= e!1777296 (and tp!897334 (inv!44524 (tag!5421 (rule!7345 separatorToken!99))) (inv!44527 (transformation!4917 (rule!7345 separatorToken!99))) e!1777298))))

(assert (=> b!2810347 (= e!1777298 (and tp!897339 tp!897335))))

(declare-fun res!1170180 () Bool)

(declare-fun e!1777301 () Bool)

(assert (=> start!271928 (=> (not res!1170180) (not e!1777301))))

(declare-datatypes ((LexerInterface!4508 0))(
  ( (LexerInterfaceExt!4505 (__x!21936 Int)) (Lexer!4506) )
))
(declare-fun thiss!13843 () LexerInterface!4508)

(declare-datatypes ((List!32909 0))(
  ( (Nil!32809) (Cons!32809 (h!38229 Token!9236) (t!229825 List!32909)) )
))
(declare-fun l!4240 () List!32909)

(get-info :version)

(assert (=> start!271928 (= res!1170180 (and ((_ is Lexer!4506) thiss!13843) (isSeparator!4917 (rule!7345 separatorToken!99)) (not ((_ is Cons!32809) l!4240))))))

(assert (=> start!271928 e!1777301))

(assert (=> start!271928 true))

(declare-fun inv!44528 (Token!9236) Bool)

(assert (=> start!271928 (and (inv!44528 separatorToken!99) e!1777294)))

(declare-fun e!1777299 () Bool)

(assert (=> start!271928 e!1777299))

(declare-fun e!1777300 () Bool)

(declare-fun tp!897340 () Bool)

(declare-fun e!1777295 () Bool)

(declare-fun b!2810348 () Bool)

(assert (=> b!2810348 (= e!1777300 (and (inv!21 (value!158044 (h!38229 l!4240))) e!1777295 tp!897340))))

(declare-fun b!2810349 () Bool)

(declare-fun tp!897332 () Bool)

(assert (=> b!2810349 (= e!1777299 (and (inv!44528 (h!38229 l!4240)) e!1777300 tp!897332))))

(declare-fun e!1777297 () Bool)

(assert (=> b!2810350 (= e!1777297 (and tp!897333 tp!897336))))

(declare-fun b!2810351 () Bool)

(declare-fun printList!1216 (LexerInterface!4508 List!32909) List!32908)

(declare-fun printWithSeparatorTokenList!86 (LexerInterface!4508 List!32909 Token!9236) List!32908)

(assert (=> b!2810351 (= e!1777301 (not (= (printList!1216 thiss!13843 Nil!32809) (printWithSeparatorTokenList!86 thiss!13843 l!4240 separatorToken!99))))))

(declare-fun b!2810352 () Bool)

(declare-fun tp!897338 () Bool)

(assert (=> b!2810352 (= e!1777295 (and tp!897338 (inv!44524 (tag!5421 (rule!7345 (h!38229 l!4240)))) (inv!44527 (transformation!4917 (rule!7345 (h!38229 l!4240)))) e!1777297))))

(assert (= (and start!271928 res!1170180) b!2810351))

(assert (= b!2810346 b!2810347))

(assert (= b!2810345 b!2810346))

(assert (= start!271928 b!2810345))

(assert (= b!2810352 b!2810350))

(assert (= b!2810348 b!2810352))

(assert (= b!2810349 b!2810348))

(assert (= (and start!271928 ((_ is Cons!32809) l!4240)) b!2810349))

(declare-fun m!3240273 () Bool)

(assert (=> b!2810346 m!3240273))

(declare-fun m!3240275 () Bool)

(assert (=> b!2810346 m!3240275))

(declare-fun m!3240277 () Bool)

(assert (=> b!2810349 m!3240277))

(declare-fun m!3240279 () Bool)

(assert (=> b!2810345 m!3240279))

(declare-fun m!3240281 () Bool)

(assert (=> b!2810348 m!3240281))

(declare-fun m!3240283 () Bool)

(assert (=> start!271928 m!3240283))

(declare-fun m!3240285 () Bool)

(assert (=> b!2810351 m!3240285))

(declare-fun m!3240287 () Bool)

(assert (=> b!2810351 m!3240287))

(declare-fun m!3240289 () Bool)

(assert (=> b!2810352 m!3240289))

(declare-fun m!3240291 () Bool)

(assert (=> b!2810352 m!3240291))

(check-sat (not b_next!80935) (not b!2810345) b_and!205499 (not b!2810351) (not b_next!80937) b_and!205495 (not b!2810346) (not b!2810348) (not b!2810352) (not b_next!80939) (not start!271928) (not b!2810349) (not b_next!80933) b_and!205497 b_and!205501)
(check-sat (not b_next!80935) b_and!205499 (not b_next!80937) b_and!205495 (not b_next!80939) (not b_next!80933) b_and!205497 b_and!205501)
(get-model)

(declare-fun d!815776 () Bool)

(declare-fun res!1170189 () Bool)

(declare-fun e!1777307 () Bool)

(assert (=> d!815776 (=> (not res!1170189) (not e!1777307))))

(declare-fun isEmpty!18215 (List!32908) Bool)

(assert (=> d!815776 (= res!1170189 (not (isEmpty!18215 (originalCharacters!5649 separatorToken!99))))))

(assert (=> d!815776 (= (inv!44528 separatorToken!99) e!1777307)))

(declare-fun b!2810357 () Bool)

(declare-fun res!1170190 () Bool)

(assert (=> b!2810357 (=> (not res!1170190) (not e!1777307))))

(declare-fun list!12288 (BalanceConc!19926) List!32908)

(declare-fun dynLambda!13732 (Int TokenValue!5139) BalanceConc!19926)

(assert (=> b!2810357 (= res!1170190 (= (originalCharacters!5649 separatorToken!99) (list!12288 (dynLambda!13732 (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (value!158044 separatorToken!99)))))))

(declare-fun b!2810358 () Bool)

(declare-fun size!25573 (List!32908) Int)

(assert (=> b!2810358 (= e!1777307 (= (size!25572 separatorToken!99) (size!25573 (originalCharacters!5649 separatorToken!99))))))

(assert (= (and d!815776 res!1170189) b!2810357))

(assert (= (and b!2810357 res!1170190) b!2810358))

(declare-fun b_lambda!84167 () Bool)

(assert (=> (not b_lambda!84167) (not b!2810357)))

(declare-fun t!229827 () Bool)

(declare-fun tb!153637 () Bool)

(assert (=> (and b!2810350 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99)))) t!229827) tb!153637))

(declare-fun b!2810363 () Bool)

(declare-fun e!1777310 () Bool)

(declare-fun tp!897343 () Bool)

(declare-fun inv!44529 (Conc!10156) Bool)

(assert (=> b!2810363 (= e!1777310 (and (inv!44529 (c!455296 (dynLambda!13732 (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (value!158044 separatorToken!99)))) tp!897343))))

(declare-fun result!190972 () Bool)

(declare-fun inv!44530 (BalanceConc!19926) Bool)

(assert (=> tb!153637 (= result!190972 (and (inv!44530 (dynLambda!13732 (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (value!158044 separatorToken!99))) e!1777310))))

(assert (= tb!153637 b!2810363))

(declare-fun m!3240293 () Bool)

(assert (=> b!2810363 m!3240293))

(declare-fun m!3240295 () Bool)

(assert (=> tb!153637 m!3240295))

(assert (=> b!2810357 t!229827))

(declare-fun b_and!205503 () Bool)

(assert (= b_and!205497 (and (=> t!229827 result!190972) b_and!205503)))

(declare-fun t!229829 () Bool)

(declare-fun tb!153639 () Bool)

(assert (=> (and b!2810347 (= (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99)))) t!229829) tb!153639))

(declare-fun result!190976 () Bool)

(assert (= result!190976 result!190972))

(assert (=> b!2810357 t!229829))

(declare-fun b_and!205505 () Bool)

(assert (= b_and!205501 (and (=> t!229829 result!190976) b_and!205505)))

(declare-fun m!3240297 () Bool)

(assert (=> d!815776 m!3240297))

(declare-fun m!3240299 () Bool)

(assert (=> b!2810357 m!3240299))

(assert (=> b!2810357 m!3240299))

(declare-fun m!3240301 () Bool)

(assert (=> b!2810357 m!3240301))

(declare-fun m!3240303 () Bool)

(assert (=> b!2810358 m!3240303))

(assert (=> start!271928 d!815776))

(declare-fun b!2810385 () Bool)

(declare-fun e!1777323 () Bool)

(declare-fun e!1777325 () Bool)

(assert (=> b!2810385 (= e!1777323 e!1777325)))

(declare-fun c!455303 () Bool)

(assert (=> b!2810385 (= c!455303 ((_ is IntegerValue!15418) (value!158044 (h!38229 l!4240))))))

(declare-fun b!2810386 () Bool)

(declare-fun inv!16 (TokenValue!5139) Bool)

(assert (=> b!2810386 (= e!1777323 (inv!16 (value!158044 (h!38229 l!4240))))))

(declare-fun d!815780 () Bool)

(declare-fun c!455302 () Bool)

(assert (=> d!815780 (= c!455302 ((_ is IntegerValue!15417) (value!158044 (h!38229 l!4240))))))

(assert (=> d!815780 (= (inv!21 (value!158044 (h!38229 l!4240))) e!1777323)))

(declare-fun b!2810387 () Bool)

(declare-fun e!1777324 () Bool)

(declare-fun inv!15 (TokenValue!5139) Bool)

(assert (=> b!2810387 (= e!1777324 (inv!15 (value!158044 (h!38229 l!4240))))))

(declare-fun b!2810388 () Bool)

(declare-fun res!1170199 () Bool)

(assert (=> b!2810388 (=> res!1170199 e!1777324)))

(assert (=> b!2810388 (= res!1170199 (not ((_ is IntegerValue!15419) (value!158044 (h!38229 l!4240)))))))

(assert (=> b!2810388 (= e!1777325 e!1777324)))

(declare-fun b!2810389 () Bool)

(declare-fun inv!17 (TokenValue!5139) Bool)

(assert (=> b!2810389 (= e!1777325 (inv!17 (value!158044 (h!38229 l!4240))))))

(assert (= (and d!815780 c!455302) b!2810386))

(assert (= (and d!815780 (not c!455302)) b!2810385))

(assert (= (and b!2810385 c!455303) b!2810389))

(assert (= (and b!2810385 (not c!455303)) b!2810388))

(assert (= (and b!2810388 (not res!1170199)) b!2810387))

(declare-fun m!3240317 () Bool)

(assert (=> b!2810386 m!3240317))

(declare-fun m!3240319 () Bool)

(assert (=> b!2810387 m!3240319))

(declare-fun m!3240321 () Bool)

(assert (=> b!2810389 m!3240321))

(assert (=> b!2810348 d!815780))

(declare-fun d!815784 () Bool)

(declare-fun c!455306 () Bool)

(assert (=> d!815784 (= c!455306 ((_ is Cons!32809) Nil!32809))))

(declare-fun e!1777330 () List!32908)

(assert (=> d!815784 (= (printList!1216 thiss!13843 Nil!32809) e!1777330)))

(declare-fun b!2810396 () Bool)

(declare-fun ++!8056 (List!32908 List!32908) List!32908)

(declare-fun charsOf!3055 (Token!9236) BalanceConc!19926)

(assert (=> b!2810396 (= e!1777330 (++!8056 (list!12288 (charsOf!3055 (h!38229 Nil!32809))) (printList!1216 thiss!13843 (t!229825 Nil!32809))))))

(declare-fun b!2810397 () Bool)

(assert (=> b!2810397 (= e!1777330 Nil!32808)))

(assert (= (and d!815784 c!455306) b!2810396))

(assert (= (and d!815784 (not c!455306)) b!2810397))

(declare-fun m!3240323 () Bool)

(assert (=> b!2810396 m!3240323))

(assert (=> b!2810396 m!3240323))

(declare-fun m!3240325 () Bool)

(assert (=> b!2810396 m!3240325))

(declare-fun m!3240327 () Bool)

(assert (=> b!2810396 m!3240327))

(assert (=> b!2810396 m!3240325))

(assert (=> b!2810396 m!3240327))

(declare-fun m!3240329 () Bool)

(assert (=> b!2810396 m!3240329))

(assert (=> b!2810351 d!815784))

(declare-fun d!815788 () Bool)

(declare-fun c!455312 () Bool)

(assert (=> d!815788 (= c!455312 ((_ is Cons!32809) l!4240))))

(declare-fun e!1777337 () List!32908)

(assert (=> d!815788 (= (printWithSeparatorTokenList!86 thiss!13843 l!4240 separatorToken!99) e!1777337)))

(declare-fun b!2810409 () Bool)

(assert (=> b!2810409 (= e!1777337 (++!8056 (++!8056 (list!12288 (charsOf!3055 (h!38229 l!4240))) (list!12288 (charsOf!3055 separatorToken!99))) (printWithSeparatorTokenList!86 thiss!13843 (t!229825 l!4240) separatorToken!99)))))

(declare-fun b!2810410 () Bool)

(assert (=> b!2810410 (= e!1777337 Nil!32808)))

(assert (= (and d!815788 c!455312) b!2810409))

(assert (= (and d!815788 (not c!455312)) b!2810410))

(declare-fun m!3240343 () Bool)

(assert (=> b!2810409 m!3240343))

(assert (=> b!2810409 m!3240343))

(declare-fun m!3240345 () Bool)

(assert (=> b!2810409 m!3240345))

(assert (=> b!2810409 m!3240345))

(declare-fun m!3240347 () Bool)

(assert (=> b!2810409 m!3240347))

(declare-fun m!3240349 () Bool)

(assert (=> b!2810409 m!3240349))

(declare-fun m!3240351 () Bool)

(assert (=> b!2810409 m!3240351))

(declare-fun m!3240353 () Bool)

(assert (=> b!2810409 m!3240353))

(assert (=> b!2810409 m!3240349))

(assert (=> b!2810409 m!3240353))

(declare-fun m!3240355 () Bool)

(assert (=> b!2810409 m!3240355))

(assert (=> b!2810409 m!3240351))

(assert (=> b!2810409 m!3240347))

(assert (=> b!2810351 d!815788))

(declare-fun d!815794 () Bool)

(assert (=> d!815794 (= (inv!44524 (tag!5421 (rule!7345 separatorToken!99))) (= (mod (str.len (value!158043 (tag!5421 (rule!7345 separatorToken!99)))) 2) 0))))

(assert (=> b!2810346 d!815794))

(declare-fun d!815796 () Bool)

(declare-fun res!1170206 () Bool)

(declare-fun e!1777344 () Bool)

(assert (=> d!815796 (=> (not res!1170206) (not e!1777344))))

(declare-fun semiInverseModEq!2036 (Int Int) Bool)

(assert (=> d!815796 (= res!1170206 (semiInverseModEq!2036 (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (toValue!6919 (transformation!4917 (rule!7345 separatorToken!99)))))))

(assert (=> d!815796 (= (inv!44527 (transformation!4917 (rule!7345 separatorToken!99))) e!1777344)))

(declare-fun b!2810420 () Bool)

(declare-fun equivClasses!1937 (Int Int) Bool)

(assert (=> b!2810420 (= e!1777344 (equivClasses!1937 (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (toValue!6919 (transformation!4917 (rule!7345 separatorToken!99)))))))

(assert (= (and d!815796 res!1170206) b!2810420))

(declare-fun m!3240373 () Bool)

(assert (=> d!815796 m!3240373))

(declare-fun m!3240377 () Bool)

(assert (=> b!2810420 m!3240377))

(assert (=> b!2810346 d!815796))

(declare-fun d!815804 () Bool)

(assert (=> d!815804 (= (inv!44524 (tag!5421 (rule!7345 (h!38229 l!4240)))) (= (mod (str.len (value!158043 (tag!5421 (rule!7345 (h!38229 l!4240))))) 2) 0))))

(assert (=> b!2810352 d!815804))

(declare-fun d!815806 () Bool)

(declare-fun res!1170207 () Bool)

(declare-fun e!1777345 () Bool)

(assert (=> d!815806 (=> (not res!1170207) (not e!1777345))))

(assert (=> d!815806 (= res!1170207 (semiInverseModEq!2036 (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (toValue!6919 (transformation!4917 (rule!7345 (h!38229 l!4240))))))))

(assert (=> d!815806 (= (inv!44527 (transformation!4917 (rule!7345 (h!38229 l!4240)))) e!1777345)))

(declare-fun b!2810421 () Bool)

(assert (=> b!2810421 (= e!1777345 (equivClasses!1937 (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (toValue!6919 (transformation!4917 (rule!7345 (h!38229 l!4240))))))))

(assert (= (and d!815806 res!1170207) b!2810421))

(declare-fun m!3240379 () Bool)

(assert (=> d!815806 m!3240379))

(declare-fun m!3240381 () Bool)

(assert (=> b!2810421 m!3240381))

(assert (=> b!2810352 d!815806))

(declare-fun b!2810422 () Bool)

(declare-fun e!1777346 () Bool)

(declare-fun e!1777348 () Bool)

(assert (=> b!2810422 (= e!1777346 e!1777348)))

(declare-fun c!455317 () Bool)

(assert (=> b!2810422 (= c!455317 ((_ is IntegerValue!15418) (value!158044 separatorToken!99)))))

(declare-fun b!2810423 () Bool)

(assert (=> b!2810423 (= e!1777346 (inv!16 (value!158044 separatorToken!99)))))

(declare-fun d!815808 () Bool)

(declare-fun c!455316 () Bool)

(assert (=> d!815808 (= c!455316 ((_ is IntegerValue!15417) (value!158044 separatorToken!99)))))

(assert (=> d!815808 (= (inv!21 (value!158044 separatorToken!99)) e!1777346)))

(declare-fun b!2810424 () Bool)

(declare-fun e!1777347 () Bool)

(assert (=> b!2810424 (= e!1777347 (inv!15 (value!158044 separatorToken!99)))))

(declare-fun b!2810425 () Bool)

(declare-fun res!1170208 () Bool)

(assert (=> b!2810425 (=> res!1170208 e!1777347)))

(assert (=> b!2810425 (= res!1170208 (not ((_ is IntegerValue!15419) (value!158044 separatorToken!99))))))

(assert (=> b!2810425 (= e!1777348 e!1777347)))

(declare-fun b!2810426 () Bool)

(assert (=> b!2810426 (= e!1777348 (inv!17 (value!158044 separatorToken!99)))))

(assert (= (and d!815808 c!455316) b!2810423))

(assert (= (and d!815808 (not c!455316)) b!2810422))

(assert (= (and b!2810422 c!455317) b!2810426))

(assert (= (and b!2810422 (not c!455317)) b!2810425))

(assert (= (and b!2810425 (not res!1170208)) b!2810424))

(declare-fun m!3240383 () Bool)

(assert (=> b!2810423 m!3240383))

(declare-fun m!3240385 () Bool)

(assert (=> b!2810424 m!3240385))

(declare-fun m!3240387 () Bool)

(assert (=> b!2810426 m!3240387))

(assert (=> b!2810345 d!815808))

(declare-fun d!815810 () Bool)

(declare-fun res!1170209 () Bool)

(declare-fun e!1777349 () Bool)

(assert (=> d!815810 (=> (not res!1170209) (not e!1777349))))

(assert (=> d!815810 (= res!1170209 (not (isEmpty!18215 (originalCharacters!5649 (h!38229 l!4240)))))))

(assert (=> d!815810 (= (inv!44528 (h!38229 l!4240)) e!1777349)))

(declare-fun b!2810427 () Bool)

(declare-fun res!1170210 () Bool)

(assert (=> b!2810427 (=> (not res!1170210) (not e!1777349))))

(assert (=> b!2810427 (= res!1170210 (= (originalCharacters!5649 (h!38229 l!4240)) (list!12288 (dynLambda!13732 (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (value!158044 (h!38229 l!4240))))))))

(declare-fun b!2810428 () Bool)

(assert (=> b!2810428 (= e!1777349 (= (size!25572 (h!38229 l!4240)) (size!25573 (originalCharacters!5649 (h!38229 l!4240)))))))

(assert (= (and d!815810 res!1170209) b!2810427))

(assert (= (and b!2810427 res!1170210) b!2810428))

(declare-fun b_lambda!84171 () Bool)

(assert (=> (not b_lambda!84171) (not b!2810427)))

(declare-fun t!229835 () Bool)

(declare-fun tb!153645 () Bool)

(assert (=> (and b!2810350 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240))))) t!229835) tb!153645))

(declare-fun b!2810429 () Bool)

(declare-fun e!1777350 () Bool)

(declare-fun tp!897347 () Bool)

(assert (=> b!2810429 (= e!1777350 (and (inv!44529 (c!455296 (dynLambda!13732 (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (value!158044 (h!38229 l!4240))))) tp!897347))))

(declare-fun result!190984 () Bool)

(assert (=> tb!153645 (= result!190984 (and (inv!44530 (dynLambda!13732 (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (value!158044 (h!38229 l!4240)))) e!1777350))))

(assert (= tb!153645 b!2810429))

(declare-fun m!3240389 () Bool)

(assert (=> b!2810429 m!3240389))

(declare-fun m!3240391 () Bool)

(assert (=> tb!153645 m!3240391))

(assert (=> b!2810427 t!229835))

(declare-fun b_and!205511 () Bool)

(assert (= b_and!205503 (and (=> t!229835 result!190984) b_and!205511)))

(declare-fun t!229837 () Bool)

(declare-fun tb!153647 () Bool)

(assert (=> (and b!2810347 (= (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240))))) t!229837) tb!153647))

(declare-fun result!190986 () Bool)

(assert (= result!190986 result!190984))

(assert (=> b!2810427 t!229837))

(declare-fun b_and!205513 () Bool)

(assert (= b_and!205505 (and (=> t!229837 result!190986) b_and!205513)))

(declare-fun m!3240393 () Bool)

(assert (=> d!815810 m!3240393))

(declare-fun m!3240395 () Bool)

(assert (=> b!2810427 m!3240395))

(assert (=> b!2810427 m!3240395))

(declare-fun m!3240397 () Bool)

(assert (=> b!2810427 m!3240397))

(declare-fun m!3240399 () Bool)

(assert (=> b!2810428 m!3240399))

(assert (=> b!2810349 d!815810))

(declare-fun b!2810444 () Bool)

(declare-fun e!1777359 () Bool)

(declare-fun tp_is_empty!14337 () Bool)

(declare-fun tp!897350 () Bool)

(assert (=> b!2810444 (= e!1777359 (and tp_is_empty!14337 tp!897350))))

(assert (=> b!2810348 (= tp!897340 e!1777359)))

(assert (= (and b!2810348 ((_ is Cons!32808) (originalCharacters!5649 (h!38229 l!4240)))) b!2810444))

(declare-fun b!2810455 () Bool)

(declare-fun e!1777362 () Bool)

(assert (=> b!2810455 (= e!1777362 tp_is_empty!14337)))

(assert (=> b!2810346 (= tp!897334 e!1777362)))

(declare-fun b!2810457 () Bool)

(declare-fun tp!897363 () Bool)

(assert (=> b!2810457 (= e!1777362 tp!897363)))

(declare-fun b!2810458 () Bool)

(declare-fun tp!897362 () Bool)

(declare-fun tp!897365 () Bool)

(assert (=> b!2810458 (= e!1777362 (and tp!897362 tp!897365))))

(declare-fun b!2810456 () Bool)

(declare-fun tp!897361 () Bool)

(declare-fun tp!897364 () Bool)

(assert (=> b!2810456 (= e!1777362 (and tp!897361 tp!897364))))

(assert (= (and b!2810346 ((_ is ElementMatch!8287) (regex!4917 (rule!7345 separatorToken!99)))) b!2810455))

(assert (= (and b!2810346 ((_ is Concat!13427) (regex!4917 (rule!7345 separatorToken!99)))) b!2810456))

(assert (= (and b!2810346 ((_ is Star!8287) (regex!4917 (rule!7345 separatorToken!99)))) b!2810457))

(assert (= (and b!2810346 ((_ is Union!8287) (regex!4917 (rule!7345 separatorToken!99)))) b!2810458))

(declare-fun b!2810464 () Bool)

(declare-fun e!1777366 () Bool)

(assert (=> b!2810464 (= e!1777366 tp_is_empty!14337)))

(assert (=> b!2810352 (= tp!897338 e!1777366)))

(declare-fun b!2810466 () Bool)

(declare-fun tp!897368 () Bool)

(assert (=> b!2810466 (= e!1777366 tp!897368)))

(declare-fun b!2810467 () Bool)

(declare-fun tp!897367 () Bool)

(declare-fun tp!897370 () Bool)

(assert (=> b!2810467 (= e!1777366 (and tp!897367 tp!897370))))

(declare-fun b!2810465 () Bool)

(declare-fun tp!897366 () Bool)

(declare-fun tp!897369 () Bool)

(assert (=> b!2810465 (= e!1777366 (and tp!897366 tp!897369))))

(assert (= (and b!2810352 ((_ is ElementMatch!8287) (regex!4917 (rule!7345 (h!38229 l!4240))))) b!2810464))

(assert (= (and b!2810352 ((_ is Concat!13427) (regex!4917 (rule!7345 (h!38229 l!4240))))) b!2810465))

(assert (= (and b!2810352 ((_ is Star!8287) (regex!4917 (rule!7345 (h!38229 l!4240))))) b!2810466))

(assert (= (and b!2810352 ((_ is Union!8287) (regex!4917 (rule!7345 (h!38229 l!4240))))) b!2810467))

(declare-fun b!2810468 () Bool)

(declare-fun e!1777367 () Bool)

(declare-fun tp!897371 () Bool)

(assert (=> b!2810468 (= e!1777367 (and tp_is_empty!14337 tp!897371))))

(assert (=> b!2810345 (= tp!897337 e!1777367)))

(assert (= (and b!2810345 ((_ is Cons!32808) (originalCharacters!5649 separatorToken!99))) b!2810468))

(declare-fun b!2810500 () Bool)

(declare-fun b_free!80237 () Bool)

(declare-fun b_next!80941 () Bool)

(assert (=> b!2810500 (= b_free!80237 (not b_next!80941))))

(declare-fun tp!897391 () Bool)

(declare-fun b_and!205519 () Bool)

(assert (=> b!2810500 (= tp!897391 b_and!205519)))

(declare-fun b_free!80239 () Bool)

(declare-fun b_next!80943 () Bool)

(assert (=> b!2810500 (= b_free!80239 (not b_next!80943))))

(declare-fun tb!153653 () Bool)

(declare-fun t!229843 () Bool)

(assert (=> (and b!2810500 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 (t!229825 l!4240))))) (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99)))) t!229843) tb!153653))

(declare-fun result!191000 () Bool)

(assert (= result!191000 result!190972))

(assert (=> b!2810357 t!229843))

(declare-fun t!229845 () Bool)

(declare-fun tb!153655 () Bool)

(assert (=> (and b!2810500 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 (t!229825 l!4240))))) (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240))))) t!229845) tb!153655))

(declare-fun result!191002 () Bool)

(assert (= result!191002 result!190984))

(assert (=> b!2810427 t!229845))

(declare-fun tp!897387 () Bool)

(declare-fun b_and!205521 () Bool)

(assert (=> b!2810500 (= tp!897387 (and (=> t!229843 result!191000) (=> t!229845 result!191002) b_and!205521))))

(declare-fun e!1777399 () Bool)

(assert (=> b!2810349 (= tp!897332 e!1777399)))

(declare-fun tp!897392 () Bool)

(declare-fun b!2810497 () Bool)

(declare-fun e!1777398 () Bool)

(assert (=> b!2810497 (= e!1777399 (and (inv!44528 (h!38229 (t!229825 l!4240))) e!1777398 tp!897392))))

(declare-fun e!1777401 () Bool)

(assert (=> b!2810500 (= e!1777401 (and tp!897391 tp!897387))))

(declare-fun e!1777400 () Bool)

(declare-fun b!2810498 () Bool)

(declare-fun tp!897390 () Bool)

(assert (=> b!2810498 (= e!1777398 (and (inv!21 (value!158044 (h!38229 (t!229825 l!4240)))) e!1777400 tp!897390))))

(declare-fun tp!897393 () Bool)

(declare-fun b!2810499 () Bool)

(assert (=> b!2810499 (= e!1777400 (and tp!897393 (inv!44524 (tag!5421 (rule!7345 (h!38229 (t!229825 l!4240))))) (inv!44527 (transformation!4917 (rule!7345 (h!38229 (t!229825 l!4240))))) e!1777401))))

(assert (= b!2810499 b!2810500))

(assert (= b!2810498 b!2810499))

(assert (= b!2810497 b!2810498))

(assert (= (and b!2810349 ((_ is Cons!32809) (t!229825 l!4240))) b!2810497))

(declare-fun m!3240425 () Bool)

(assert (=> b!2810497 m!3240425))

(declare-fun m!3240427 () Bool)

(assert (=> b!2810498 m!3240427))

(declare-fun m!3240429 () Bool)

(assert (=> b!2810499 m!3240429))

(declare-fun m!3240431 () Bool)

(assert (=> b!2810499 m!3240431))

(declare-fun b_lambda!84175 () Bool)

(assert (= b_lambda!84171 (or (and b!2810350 b_free!80231) (and b!2810347 b_free!80235 (= (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))) (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))))) (and b!2810500 b_free!80239 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 (t!229825 l!4240))))) (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))))) b_lambda!84175)))

(declare-fun b_lambda!84177 () Bool)

(assert (= b_lambda!84167 (or (and b!2810350 b_free!80231 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 l!4240)))) (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))))) (and b!2810347 b_free!80235) (and b!2810500 b_free!80239 (= (toChars!6778 (transformation!4917 (rule!7345 (h!38229 (t!229825 l!4240))))) (toChars!6778 (transformation!4917 (rule!7345 separatorToken!99))))) b_lambda!84177)))

(check-sat (not b!2810499) (not b_next!80935) (not d!815810) (not b_lambda!84175) (not b!2810421) (not b!2810396) (not b!2810424) (not b!2810420) (not b_next!80943) (not tb!153645) (not b!2810457) b_and!205499 (not b!2810363) (not tb!153637) (not b!2810498) tp_is_empty!14337 (not b!2810497) (not b!2810387) (not d!815806) (not b_next!80937) (not b_next!80941) b_and!205495 (not b!2810428) (not b!2810458) (not b!2810426) (not b!2810409) (not b!2810466) (not b!2810468) (not b!2810444) b_and!205521 (not b!2810456) (not b_next!80933) (not b!2810357) (not b!2810389) b_and!205519 (not d!815776) (not b!2810429) (not d!815796) b_and!205513 (not b_lambda!84177) (not b!2810465) (not b!2810467) (not b!2810427) (not b!2810423) b_and!205511 (not b_next!80939) (not b!2810358) (not b!2810386))
(check-sat (not b_next!80935) b_and!205499 b_and!205495 b_and!205521 (not b_next!80933) b_and!205519 b_and!205513 (not b_next!80943) (not b_next!80937) (not b_next!80941) b_and!205511 (not b_next!80939))
