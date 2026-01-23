; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756334 () Bool)

(assert start!756334)

(declare-fun b!8029326 () Bool)

(declare-fun b_free!135275 () Bool)

(declare-fun b_next!136065 () Bool)

(assert (=> b!8029326 (= b_free!135275 (not b_next!136065))))

(declare-fun tp!2402753 () Bool)

(declare-fun b_and!353695 () Bool)

(assert (=> b!8029326 (= tp!2402753 b_and!353695)))

(declare-fun b_free!135277 () Bool)

(declare-fun b_next!136067 () Bool)

(assert (=> b!8029326 (= b_free!135277 (not b_next!136067))))

(declare-fun tp!2402751 () Bool)

(declare-fun b_and!353697 () Bool)

(assert (=> b!8029326 (= tp!2402751 b_and!353697)))

(declare-fun b!8029322 () Bool)

(declare-fun e!4730426 () Bool)

(declare-datatypes ((C!43722 0))(
  ( (C!43723 (val!32635 Int)) )
))
(declare-datatypes ((Regex!21692 0))(
  ( (ElementMatch!21692 (c!1473059 C!43722)) (Concat!30691 (regOne!43896 Regex!21692) (regTwo!43896 Regex!21692)) (EmptyExpr!21692) (Star!21692 (reg!22021 Regex!21692)) (EmptyLang!21692) (Union!21692 (regOne!43897 Regex!21692) (regTwo!43897 Regex!21692)) )
))
(declare-datatypes ((List!75151 0))(
  ( (Nil!75025) (Cons!75025 (h!81473 (_ BitVec 16)) (t!390907 List!75151)) )
))
(declare-datatypes ((TokenValue!8999 0))(
  ( (FloatLiteralValue!17998 (text!63438 List!75151)) (TokenValueExt!8998 (__x!35281 Int)) (Broken!44995 (value!290346 List!75151)) (Object!9124) (End!8999) (Def!8999) (Underscore!8999) (Match!8999) (Else!8999) (Error!8999) (Case!8999) (If!8999) (Extends!8999) (Abstract!8999) (Class!8999) (Val!8999) (DelimiterValue!17998 (del!9059 List!75151)) (KeywordValue!9005 (value!290347 List!75151)) (CommentValue!17998 (value!290348 List!75151)) (WhitespaceValue!17998 (value!290349 List!75151)) (IndentationValue!8999 (value!290350 List!75151)) (String!84650) (Int32!8999) (Broken!44996 (value!290351 List!75151)) (Boolean!9000) (Unit!171002) (OperatorValue!9002 (op!9059 List!75151)) (IdentifierValue!17998 (value!290352 List!75151)) (IdentifierValue!17999 (value!290353 List!75151)) (WhitespaceValue!17999 (value!290354 List!75151)) (True!17998) (False!17998) (Broken!44997 (value!290355 List!75151)) (Broken!44998 (value!290356 List!75151)) (True!17999) (RightBrace!8999) (RightBracket!8999) (Colon!8999) (Null!8999) (Comma!8999) (LeftBracket!8999) (False!17999) (LeftBrace!8999) (ImaginaryLiteralValue!8999 (text!63439 List!75151)) (StringLiteralValue!26997 (value!290357 List!75151)) (EOFValue!8999 (value!290358 List!75151)) (IdentValue!8999 (value!290359 List!75151)) (DelimiterValue!17999 (value!290360 List!75151)) (DedentValue!8999 (value!290361 List!75151)) (NewLineValue!8999 (value!290362 List!75151)) (IntegerValue!26997 (value!290363 (_ BitVec 32)) (text!63440 List!75151)) (IntegerValue!26998 (value!290364 Int) (text!63441 List!75151)) (Times!8999) (Or!8999) (Equal!8999) (Minus!8999) (Broken!44999 (value!290365 List!75151)) (And!8999) (Div!8999) (LessEqual!8999) (Mod!8999) (Concat!30692) (Not!8999) (Plus!8999) (SpaceValue!8999 (value!290366 List!75151)) (IntegerValue!26999 (value!290367 Int) (text!63442 List!75151)) (StringLiteralValue!26998 (text!63443 List!75151)) (FloatLiteralValue!17999 (text!63444 List!75151)) (BytesLiteralValue!8999 (value!290368 List!75151)) (CommentValue!17999 (value!290369 List!75151)) (StringLiteralValue!26999 (value!290370 List!75151)) (ErrorTokenValue!8999 (msg!9060 List!75151)) )
))
(declare-datatypes ((String!84651 0))(
  ( (String!84652 (value!290371 String)) )
))
(declare-datatypes ((List!75152 0))(
  ( (Nil!75026) (Cons!75026 (h!81474 C!43722) (t!390908 List!75152)) )
))
(declare-datatypes ((IArray!31951 0))(
  ( (IArray!31952 (innerList!16033 List!75152)) )
))
(declare-datatypes ((Conc!15945 0))(
  ( (Node!15945 (left!57204 Conc!15945) (right!57534 Conc!15945) (csize!32120 Int) (cheight!16156 Int)) (Leaf!30565 (xs!19343 IArray!31951) (csize!32121 Int)) (Empty!15945) )
))
(declare-datatypes ((BalanceConc!30850 0))(
  ( (BalanceConc!30851 (c!1473060 Conc!15945)) )
))
(declare-datatypes ((TokenValueInjection!17306 0))(
  ( (TokenValueInjection!17307 (toValue!11750 Int) (toChars!11609 Int)) )
))
(declare-datatypes ((Rule!17158 0))(
  ( (Rule!17159 (regex!8679 Regex!21692) (tag!9543 String!84651) (isSeparator!8679 Bool) (transformation!8679 TokenValueInjection!17306)) )
))
(declare-datatypes ((Token!15766 0))(
  ( (Token!15767 (value!290372 TokenValue!8999) (rule!11977 Rule!17158) (size!43749 Int) (originalCharacters!8914 List!75152)) )
))
(declare-datatypes ((List!75153 0))(
  ( (Nil!75027) (Cons!75027 (h!81475 Token!15766) (t!390909 List!75153)) )
))
(declare-fun l!4164 () List!75153)

(declare-fun ListPrimitiveSize!524 (List!75153) Int)

(assert (=> b!8029322 (= e!4730426 (>= (ListPrimitiveSize!524 (t!390909 l!4164)) (ListPrimitiveSize!524 l!4164)))))

(declare-fun lt!2721779 () List!75152)

(declare-fun list!19487 (BalanceConc!30850) List!75152)

(declare-fun charsOf!5613 (Token!15766) BalanceConc!30850)

(assert (=> b!8029322 (= lt!2721779 (list!19487 (charsOf!5613 (h!81475 l!4164))))))

(declare-fun res!3175544 () Bool)

(assert (=> start!756334 (=> (not res!3175544) (not e!4730426))))

(declare-datatypes ((LexerInterface!8271 0))(
  ( (LexerInterfaceExt!8268 (__x!35282 Int)) (Lexer!8269) )
))
(declare-fun thiss!13554 () LexerInterface!8271)

(assert (=> start!756334 (= res!3175544 (and (is-Lexer!8269 thiss!13554) (is-Cons!75027 l!4164)))))

(assert (=> start!756334 e!4730426))

(assert (=> start!756334 true))

(declare-fun e!4730422 () Bool)

(assert (=> start!756334 e!4730422))

(declare-fun tp!2402754 () Bool)

(declare-fun b!8029323 () Bool)

(declare-fun e!4730421 () Bool)

(declare-fun e!4730424 () Bool)

(declare-fun inv!21 (TokenValue!8999) Bool)

(assert (=> b!8029323 (= e!4730421 (and (inv!21 (value!290372 (h!81475 l!4164))) e!4730424 tp!2402754))))

(declare-fun b!8029324 () Bool)

(declare-fun tp!2402750 () Bool)

(declare-fun e!4730420 () Bool)

(declare-fun inv!96751 (String!84651) Bool)

(declare-fun inv!96754 (TokenValueInjection!17306) Bool)

(assert (=> b!8029324 (= e!4730424 (and tp!2402750 (inv!96751 (tag!9543 (rule!11977 (h!81475 l!4164)))) (inv!96754 (transformation!8679 (rule!11977 (h!81475 l!4164)))) e!4730420))))

(declare-fun b!8029325 () Bool)

(declare-fun tp!2402752 () Bool)

(declare-fun inv!96755 (Token!15766) Bool)

(assert (=> b!8029325 (= e!4730422 (and (inv!96755 (h!81475 l!4164)) e!4730421 tp!2402752))))

(assert (=> b!8029326 (= e!4730420 (and tp!2402753 tp!2402751))))

(assert (= (and start!756334 res!3175544) b!8029322))

(assert (= b!8029324 b!8029326))

(assert (= b!8029323 b!8029324))

(assert (= b!8029325 b!8029323))

(assert (= (and start!756334 (is-Cons!75027 l!4164)) b!8029325))

(declare-fun m!8391350 () Bool)

(assert (=> b!8029322 m!8391350))

(declare-fun m!8391352 () Bool)

(assert (=> b!8029322 m!8391352))

(declare-fun m!8391354 () Bool)

(assert (=> b!8029322 m!8391354))

(assert (=> b!8029322 m!8391354))

(declare-fun m!8391356 () Bool)

(assert (=> b!8029322 m!8391356))

(declare-fun m!8391358 () Bool)

(assert (=> b!8029323 m!8391358))

(declare-fun m!8391360 () Bool)

(assert (=> b!8029324 m!8391360))

(declare-fun m!8391362 () Bool)

(assert (=> b!8029324 m!8391362))

(declare-fun m!8391364 () Bool)

(assert (=> b!8029325 m!8391364))

(push 1)

(assert (not b_next!136065))

(assert (not b!8029324))

(assert b_and!353697)

(assert (not b!8029323))

(assert (not b!8029325))

(assert (not b!8029322))

(assert b_and!353695)

(assert (not b_next!136067))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353695)

(assert b_and!353697)

(assert (not b_next!136067))

(assert (not b_next!136065))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394358 () Bool)

(assert (=> d!2394358 (= (inv!96751 (tag!9543 (rule!11977 (h!81475 l!4164)))) (= (mod (str.len (value!290371 (tag!9543 (rule!11977 (h!81475 l!4164))))) 2) 0))))

(assert (=> b!8029324 d!2394358))

(declare-fun d!2394360 () Bool)

(declare-fun res!3175553 () Bool)

(declare-fun e!4730450 () Bool)

(assert (=> d!2394360 (=> (not res!3175553) (not e!4730450))))

(declare-fun semiInverseModEq!3851 (Int Int) Bool)

(assert (=> d!2394360 (= res!3175553 (semiInverseModEq!3851 (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (toValue!11750 (transformation!8679 (rule!11977 (h!81475 l!4164))))))))

(assert (=> d!2394360 (= (inv!96754 (transformation!8679 (rule!11977 (h!81475 l!4164)))) e!4730450)))

(declare-fun b!8029344 () Bool)

(declare-fun equivClasses!3666 (Int Int) Bool)

(assert (=> b!8029344 (= e!4730450 (equivClasses!3666 (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (toValue!11750 (transformation!8679 (rule!11977 (h!81475 l!4164))))))))

(assert (= (and d!2394360 res!3175553) b!8029344))

(declare-fun m!8391382 () Bool)

(assert (=> d!2394360 m!8391382))

(declare-fun m!8391384 () Bool)

(assert (=> b!8029344 m!8391384))

(assert (=> b!8029324 d!2394360))

(declare-fun b!8029355 () Bool)

(declare-fun res!3175557 () Bool)

(declare-fun e!4730459 () Bool)

(assert (=> b!8029355 (=> res!3175557 e!4730459)))

(assert (=> b!8029355 (= res!3175557 (not (is-IntegerValue!26999 (value!290372 (h!81475 l!4164)))))))

(declare-fun e!4730457 () Bool)

(assert (=> b!8029355 (= e!4730457 e!4730459)))

(declare-fun b!8029356 () Bool)

(declare-fun e!4730458 () Bool)

(assert (=> b!8029356 (= e!4730458 e!4730457)))

(declare-fun c!1473068 () Bool)

(assert (=> b!8029356 (= c!1473068 (is-IntegerValue!26998 (value!290372 (h!81475 l!4164))))))

(declare-fun d!2394362 () Bool)

(declare-fun c!1473067 () Bool)

(assert (=> d!2394362 (= c!1473067 (is-IntegerValue!26997 (value!290372 (h!81475 l!4164))))))

(assert (=> d!2394362 (= (inv!21 (value!290372 (h!81475 l!4164))) e!4730458)))

(declare-fun b!8029357 () Bool)

(declare-fun inv!15 (TokenValue!8999) Bool)

(assert (=> b!8029357 (= e!4730459 (inv!15 (value!290372 (h!81475 l!4164))))))

(declare-fun b!8029358 () Bool)

(declare-fun inv!17 (TokenValue!8999) Bool)

(assert (=> b!8029358 (= e!4730457 (inv!17 (value!290372 (h!81475 l!4164))))))

(declare-fun b!8029359 () Bool)

(declare-fun inv!16 (TokenValue!8999) Bool)

(assert (=> b!8029359 (= e!4730458 (inv!16 (value!290372 (h!81475 l!4164))))))

(assert (= (and d!2394362 c!1473067) b!8029359))

(assert (= (and d!2394362 (not c!1473067)) b!8029356))

(assert (= (and b!8029356 c!1473068) b!8029358))

(assert (= (and b!8029356 (not c!1473068)) b!8029355))

(assert (= (and b!8029355 (not res!3175557)) b!8029357))

(declare-fun m!8391386 () Bool)

(assert (=> b!8029357 m!8391386))

(declare-fun m!8391388 () Bool)

(assert (=> b!8029358 m!8391388))

(declare-fun m!8391390 () Bool)

(assert (=> b!8029359 m!8391390))

(assert (=> b!8029323 d!2394362))

(declare-fun d!2394364 () Bool)

(declare-fun lt!2721785 () Int)

(assert (=> d!2394364 (>= lt!2721785 0)))

(declare-fun e!4730462 () Int)

(assert (=> d!2394364 (= lt!2721785 e!4730462)))

(declare-fun c!1473071 () Bool)

(assert (=> d!2394364 (= c!1473071 (is-Nil!75027 (t!390909 l!4164)))))

(assert (=> d!2394364 (= (ListPrimitiveSize!524 (t!390909 l!4164)) lt!2721785)))

(declare-fun b!8029364 () Bool)

(assert (=> b!8029364 (= e!4730462 0)))

(declare-fun b!8029365 () Bool)

(assert (=> b!8029365 (= e!4730462 (+ 1 (ListPrimitiveSize!524 (t!390909 (t!390909 l!4164)))))))

(assert (= (and d!2394364 c!1473071) b!8029364))

(assert (= (and d!2394364 (not c!1473071)) b!8029365))

(declare-fun m!8391392 () Bool)

(assert (=> b!8029365 m!8391392))

(assert (=> b!8029322 d!2394364))

(declare-fun d!2394366 () Bool)

(declare-fun lt!2721786 () Int)

(assert (=> d!2394366 (>= lt!2721786 0)))

(declare-fun e!4730463 () Int)

(assert (=> d!2394366 (= lt!2721786 e!4730463)))

(declare-fun c!1473072 () Bool)

(assert (=> d!2394366 (= c!1473072 (is-Nil!75027 l!4164))))

(assert (=> d!2394366 (= (ListPrimitiveSize!524 l!4164) lt!2721786)))

(declare-fun b!8029366 () Bool)

(assert (=> b!8029366 (= e!4730463 0)))

(declare-fun b!8029367 () Bool)

(assert (=> b!8029367 (= e!4730463 (+ 1 (ListPrimitiveSize!524 (t!390909 l!4164))))))

(assert (= (and d!2394366 c!1473072) b!8029366))

(assert (= (and d!2394366 (not c!1473072)) b!8029367))

(assert (=> b!8029367 m!8391350))

(assert (=> b!8029322 d!2394366))

(declare-fun d!2394368 () Bool)

(declare-fun list!19489 (Conc!15945) List!75152)

(assert (=> d!2394368 (= (list!19487 (charsOf!5613 (h!81475 l!4164))) (list!19489 (c!1473060 (charsOf!5613 (h!81475 l!4164)))))))

(declare-fun bs!1971415 () Bool)

(assert (= bs!1971415 d!2394368))

(declare-fun m!8391394 () Bool)

(assert (=> bs!1971415 m!8391394))

(assert (=> b!8029322 d!2394368))

(declare-fun d!2394372 () Bool)

(declare-fun lt!2721789 () BalanceConc!30850)

(assert (=> d!2394372 (= (list!19487 lt!2721789) (originalCharacters!8914 (h!81475 l!4164)))))

(declare-fun dynLambda!30221 (Int TokenValue!8999) BalanceConc!30850)

(assert (=> d!2394372 (= lt!2721789 (dynLambda!30221 (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (value!290372 (h!81475 l!4164))))))

(assert (=> d!2394372 (= (charsOf!5613 (h!81475 l!4164)) lt!2721789)))

(declare-fun b_lambda!290255 () Bool)

(assert (=> (not b_lambda!290255) (not d!2394372)))

(declare-fun t!390914 () Bool)

(declare-fun tb!263311 () Bool)

(assert (=> (and b!8029326 (= (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164))))) t!390914) tb!263311))

(declare-fun b!8029372 () Bool)

(declare-fun e!4730466 () Bool)

(declare-fun tp!2402772 () Bool)

(declare-fun inv!96758 (Conc!15945) Bool)

(assert (=> b!8029372 (= e!4730466 (and (inv!96758 (c!1473060 (dynLambda!30221 (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (value!290372 (h!81475 l!4164))))) tp!2402772))))

(declare-fun result!362056 () Bool)

(declare-fun inv!96759 (BalanceConc!30850) Bool)

(assert (=> tb!263311 (= result!362056 (and (inv!96759 (dynLambda!30221 (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (value!290372 (h!81475 l!4164)))) e!4730466))))

(assert (= tb!263311 b!8029372))

(declare-fun m!8391396 () Bool)

(assert (=> b!8029372 m!8391396))

(declare-fun m!8391398 () Bool)

(assert (=> tb!263311 m!8391398))

(assert (=> d!2394372 t!390914))

(declare-fun b_and!353703 () Bool)

(assert (= b_and!353697 (and (=> t!390914 result!362056) b_and!353703)))

(declare-fun m!8391400 () Bool)

(assert (=> d!2394372 m!8391400))

(declare-fun m!8391402 () Bool)

(assert (=> d!2394372 m!8391402))

(assert (=> b!8029322 d!2394372))

(declare-fun d!2394374 () Bool)

(declare-fun res!3175564 () Bool)

(declare-fun e!4730475 () Bool)

(assert (=> d!2394374 (=> (not res!3175564) (not e!4730475))))

(declare-fun isEmpty!43015 (List!75152) Bool)

(assert (=> d!2394374 (= res!3175564 (not (isEmpty!43015 (originalCharacters!8914 (h!81475 l!4164)))))))

(assert (=> d!2394374 (= (inv!96755 (h!81475 l!4164)) e!4730475)))

(declare-fun b!8029387 () Bool)

(declare-fun res!3175565 () Bool)

(assert (=> b!8029387 (=> (not res!3175565) (not e!4730475))))

(assert (=> b!8029387 (= res!3175565 (= (originalCharacters!8914 (h!81475 l!4164)) (list!19487 (dynLambda!30221 (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))) (value!290372 (h!81475 l!4164))))))))

(declare-fun b!8029388 () Bool)

(declare-fun size!43751 (List!75152) Int)

(assert (=> b!8029388 (= e!4730475 (= (size!43749 (h!81475 l!4164)) (size!43751 (originalCharacters!8914 (h!81475 l!4164)))))))

(assert (= (and d!2394374 res!3175564) b!8029387))

(assert (= (and b!8029387 res!3175565) b!8029388))

(declare-fun b_lambda!290257 () Bool)

(assert (=> (not b_lambda!290257) (not b!8029387)))

(assert (=> b!8029387 t!390914))

(declare-fun b_and!353705 () Bool)

(assert (= b_and!353703 (and (=> t!390914 result!362056) b_and!353705)))

(declare-fun m!8391404 () Bool)

(assert (=> d!2394374 m!8391404))

(assert (=> b!8029387 m!8391402))

(assert (=> b!8029387 m!8391402))

(declare-fun m!8391406 () Bool)

(assert (=> b!8029387 m!8391406))

(declare-fun m!8391408 () Bool)

(assert (=> b!8029388 m!8391408))

(assert (=> b!8029325 d!2394374))

(declare-fun b!8029400 () Bool)

(declare-fun e!4730478 () Bool)

(declare-fun tp!2402783 () Bool)

(declare-fun tp!2402787 () Bool)

(assert (=> b!8029400 (= e!4730478 (and tp!2402783 tp!2402787))))

(declare-fun b!8029402 () Bool)

(declare-fun tp!2402786 () Bool)

(declare-fun tp!2402785 () Bool)

(assert (=> b!8029402 (= e!4730478 (and tp!2402786 tp!2402785))))

(assert (=> b!8029324 (= tp!2402750 e!4730478)))

(declare-fun b!8029401 () Bool)

(declare-fun tp!2402784 () Bool)

(assert (=> b!8029401 (= e!4730478 tp!2402784)))

(declare-fun b!8029399 () Bool)

(declare-fun tp_is_empty!54375 () Bool)

(assert (=> b!8029399 (= e!4730478 tp_is_empty!54375)))

(assert (= (and b!8029324 (is-ElementMatch!21692 (regex!8679 (rule!11977 (h!81475 l!4164))))) b!8029399))

(assert (= (and b!8029324 (is-Concat!30691 (regex!8679 (rule!11977 (h!81475 l!4164))))) b!8029400))

(assert (= (and b!8029324 (is-Star!21692 (regex!8679 (rule!11977 (h!81475 l!4164))))) b!8029401))

(assert (= (and b!8029324 (is-Union!21692 (regex!8679 (rule!11977 (h!81475 l!4164))))) b!8029402))

(declare-fun b!8029407 () Bool)

(declare-fun e!4730481 () Bool)

(declare-fun tp!2402790 () Bool)

(assert (=> b!8029407 (= e!4730481 (and tp_is_empty!54375 tp!2402790))))

(assert (=> b!8029323 (= tp!2402754 e!4730481)))

(assert (= (and b!8029323 (is-Cons!75026 (originalCharacters!8914 (h!81475 l!4164)))) b!8029407))

(declare-fun b!8029426 () Bool)

(declare-fun b_free!135283 () Bool)

(declare-fun b_next!136073 () Bool)

(assert (=> b!8029426 (= b_free!135283 (not b_next!136073))))

(declare-fun tp!2402802 () Bool)

(declare-fun b_and!353707 () Bool)

(assert (=> b!8029426 (= tp!2402802 b_and!353707)))

(declare-fun b_free!135285 () Bool)

(declare-fun b_next!136075 () Bool)

(assert (=> b!8029426 (= b_free!135285 (not b_next!136075))))

(declare-fun t!390916 () Bool)

(declare-fun tb!263313 () Bool)

(assert (=> (and b!8029426 (= (toChars!11609 (transformation!8679 (rule!11977 (h!81475 (t!390909 l!4164))))) (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164))))) t!390916) tb!263313))

(declare-fun result!362066 () Bool)

(assert (= result!362066 result!362056))

(assert (=> d!2394372 t!390916))

(assert (=> b!8029387 t!390916))

(declare-fun tp!2402804 () Bool)

(declare-fun b_and!353709 () Bool)

(assert (=> b!8029426 (= tp!2402804 (and (=> t!390916 result!362066) b_and!353709))))

(declare-fun e!4730502 () Bool)

(assert (=> b!8029325 (= tp!2402752 e!4730502)))

(declare-fun e!4730501 () Bool)

(declare-fun b!8029423 () Bool)

(declare-fun tp!2402803 () Bool)

(assert (=> b!8029423 (= e!4730502 (and (inv!96755 (h!81475 (t!390909 l!4164))) e!4730501 tp!2402803))))

(declare-fun tp!2402805 () Bool)

(declare-fun e!4730500 () Bool)

(declare-fun e!4730497 () Bool)

(declare-fun b!8029425 () Bool)

(assert (=> b!8029425 (= e!4730497 (and tp!2402805 (inv!96751 (tag!9543 (rule!11977 (h!81475 (t!390909 l!4164))))) (inv!96754 (transformation!8679 (rule!11977 (h!81475 (t!390909 l!4164))))) e!4730500))))

(declare-fun b!8029424 () Bool)

(declare-fun tp!2402801 () Bool)

(assert (=> b!8029424 (= e!4730501 (and (inv!21 (value!290372 (h!81475 (t!390909 l!4164)))) e!4730497 tp!2402801))))

(assert (=> b!8029426 (= e!4730500 (and tp!2402802 tp!2402804))))

(assert (= b!8029425 b!8029426))

(assert (= b!8029424 b!8029425))

(assert (= b!8029423 b!8029424))

(assert (= (and b!8029325 (is-Cons!75027 (t!390909 l!4164))) b!8029423))

(declare-fun m!8391416 () Bool)

(assert (=> b!8029423 m!8391416))

(declare-fun m!8391418 () Bool)

(assert (=> b!8029425 m!8391418))

(declare-fun m!8391420 () Bool)

(assert (=> b!8029425 m!8391420))

(declare-fun m!8391422 () Bool)

(assert (=> b!8029424 m!8391422))

(declare-fun b_lambda!290259 () Bool)

(assert (= b_lambda!290257 (or (and b!8029326 b_free!135277) (and b!8029426 b_free!135285 (= (toChars!11609 (transformation!8679 (rule!11977 (h!81475 (t!390909 l!4164))))) (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))))) b_lambda!290259)))

(declare-fun b_lambda!290261 () Bool)

(assert (= b_lambda!290255 (or (and b!8029326 b_free!135277) (and b!8029426 b_free!135285 (= (toChars!11609 (transformation!8679 (rule!11977 (h!81475 (t!390909 l!4164))))) (toChars!11609 (transformation!8679 (rule!11977 (h!81475 l!4164)))))) b_lambda!290261)))

(push 1)

(assert tp_is_empty!54375)

(assert (not b!8029359))

(assert (not b!8029424))

(assert (not b!8029357))

(assert b_and!353707)

(assert (not d!2394374))

(assert (not d!2394372))

(assert (not b!8029401))

(assert (not b!8029402))

(assert (not b!8029423))

(assert b_and!353695)

(assert (not b!8029365))

(assert (not b_next!136067))

(assert (not b_next!136065))

(assert (not b_next!136075))

(assert (not d!2394368))

(assert (not b!8029358))

(assert (not b!8029344))

(assert (not b!8029372))

(assert b_and!353705)

(assert (not b!8029387))

(assert (not b!8029400))

(assert (not b_next!136073))

(assert (not b!8029388))

(assert (not b_lambda!290259))

(assert (not tb!263311))

(assert (not b_lambda!290261))

(assert (not b!8029425))

(assert (not b!8029407))

(assert b_and!353709)

(assert (not d!2394360))

(assert (not b!8029367))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353705)

(assert (not b_next!136073))

(assert b_and!353707)

(assert b_and!353709)

(assert b_and!353695)

(assert (not b_next!136067))

(assert (not b_next!136065))

(assert (not b_next!136075))

(check-sat)

(pop 1)

