; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185190 () Bool)

(assert start!185190)

(declare-fun b!1855347 () Bool)

(declare-fun b_free!51927 () Bool)

(declare-fun b_next!52631 () Bool)

(assert (=> b!1855347 (= b_free!51927 (not b_next!52631))))

(declare-fun tp!527335 () Bool)

(declare-fun b_and!144185 () Bool)

(assert (=> b!1855347 (= tp!527335 b_and!144185)))

(declare-fun b_free!51929 () Bool)

(declare-fun b_next!52633 () Bool)

(assert (=> b!1855347 (= b_free!51929 (not b_next!52633))))

(declare-fun tp!527336 () Bool)

(declare-fun b_and!144187 () Bool)

(assert (=> b!1855347 (= tp!527336 b_and!144187)))

(declare-fun b!1855346 () Bool)

(declare-fun res!831838 () Bool)

(declare-fun e!1185383 () Bool)

(assert (=> b!1855346 (=> (not res!831838) (not e!1185383))))

(declare-datatypes ((List!20654 0))(
  ( (Nil!20576) (Cons!20576 (h!25977 (_ BitVec 16)) (t!172515 List!20654)) )
))
(declare-datatypes ((TokenValue!3798 0))(
  ( (FloatLiteralValue!7596 (text!27031 List!20654)) (TokenValueExt!3797 (__x!12958 Int)) (Broken!18990 (value!115530 List!20654)) (Object!3875) (End!3798) (Def!3798) (Underscore!3798) (Match!3798) (Else!3798) (Error!3798) (Case!3798) (If!3798) (Extends!3798) (Abstract!3798) (Class!3798) (Val!3798) (DelimiterValue!7596 (del!3858 List!20654)) (KeywordValue!3804 (value!115531 List!20654)) (CommentValue!7596 (value!115532 List!20654)) (WhitespaceValue!7596 (value!115533 List!20654)) (IndentationValue!3798 (value!115534 List!20654)) (String!23579) (Int32!3798) (Broken!18991 (value!115535 List!20654)) (Boolean!3799) (Unit!35195) (OperatorValue!3801 (op!3858 List!20654)) (IdentifierValue!7596 (value!115536 List!20654)) (IdentifierValue!7597 (value!115537 List!20654)) (WhitespaceValue!7597 (value!115538 List!20654)) (True!7596) (False!7596) (Broken!18992 (value!115539 List!20654)) (Broken!18993 (value!115540 List!20654)) (True!7597) (RightBrace!3798) (RightBracket!3798) (Colon!3798) (Null!3798) (Comma!3798) (LeftBracket!3798) (False!7597) (LeftBrace!3798) (ImaginaryLiteralValue!3798 (text!27032 List!20654)) (StringLiteralValue!11394 (value!115541 List!20654)) (EOFValue!3798 (value!115542 List!20654)) (IdentValue!3798 (value!115543 List!20654)) (DelimiterValue!7597 (value!115544 List!20654)) (DedentValue!3798 (value!115545 List!20654)) (NewLineValue!3798 (value!115546 List!20654)) (IntegerValue!11394 (value!115547 (_ BitVec 32)) (text!27033 List!20654)) (IntegerValue!11395 (value!115548 Int) (text!27034 List!20654)) (Times!3798) (Or!3798) (Equal!3798) (Minus!3798) (Broken!18994 (value!115549 List!20654)) (And!3798) (Div!3798) (LessEqual!3798) (Mod!3798) (Concat!8843) (Not!3798) (Plus!3798) (SpaceValue!3798 (value!115550 List!20654)) (IntegerValue!11396 (value!115551 Int) (text!27035 List!20654)) (StringLiteralValue!11395 (text!27036 List!20654)) (FloatLiteralValue!7597 (text!27037 List!20654)) (BytesLiteralValue!3798 (value!115552 List!20654)) (CommentValue!7597 (value!115553 List!20654)) (StringLiteralValue!11396 (value!115554 List!20654)) (ErrorTokenValue!3798 (msg!3859 List!20654)) )
))
(declare-datatypes ((C!10240 0))(
  ( (C!10241 (val!5856 Int)) )
))
(declare-datatypes ((List!20655 0))(
  ( (Nil!20577) (Cons!20577 (h!25978 C!10240) (t!172516 List!20655)) )
))
(declare-datatypes ((IArray!13627 0))(
  ( (IArray!13628 (innerList!6871 List!20655)) )
))
(declare-datatypes ((Conc!6811 0))(
  ( (Node!6811 (left!16508 Conc!6811) (right!16838 Conc!6811) (csize!13852 Int) (cheight!7022 Int)) (Leaf!9963 (xs!9687 IArray!13627) (csize!13853 Int)) (Empty!6811) )
))
(declare-datatypes ((BalanceConc!13550 0))(
  ( (BalanceConc!13551 (c!302367 Conc!6811)) )
))
(declare-datatypes ((TokenValueInjection!7212 0))(
  ( (TokenValueInjection!7213 (toValue!5261 Int) (toChars!5120 Int)) )
))
(declare-datatypes ((String!23580 0))(
  ( (String!23581 (value!115555 String)) )
))
(declare-datatypes ((Regex!5045 0))(
  ( (ElementMatch!5045 (c!302368 C!10240)) (Concat!8844 (regOne!10602 Regex!5045) (regTwo!10602 Regex!5045)) (EmptyExpr!5045) (Star!5045 (reg!5374 Regex!5045)) (EmptyLang!5045) (Union!5045 (regOne!10603 Regex!5045) (regTwo!10603 Regex!5045)) )
))
(declare-datatypes ((Rule!7164 0))(
  ( (Rule!7165 (regex!3682 Regex!5045) (tag!4096 String!23580) (isSeparator!3682 Bool) (transformation!3682 TokenValueInjection!7212)) )
))
(declare-datatypes ((List!20656 0))(
  ( (Nil!20578) (Cons!20578 (h!25979 Rule!7164) (t!172517 List!20656)) )
))
(declare-fun rules!865 () List!20656)

(declare-datatypes ((LexerInterface!3304 0))(
  ( (LexerInterfaceExt!3301 (__x!12959 Int)) (Lexer!3302) )
))
(declare-fun rulesInvariant!2971 (LexerInterface!3304 List!20656) Bool)

(assert (=> b!1855346 (= res!831838 (rulesInvariant!2971 Lexer!3302 rules!865))))

(declare-fun e!1185381 () Bool)

(assert (=> b!1855347 (= e!1185381 (and tp!527335 tp!527336))))

(declare-fun res!831839 () Bool)

(assert (=> start!185190 (=> (not res!831839) (not e!1185383))))

(declare-fun isEmpty!12824 (List!20656) Bool)

(assert (=> start!185190 (= res!831839 (not (isEmpty!12824 rules!865)))))

(assert (=> start!185190 e!1185383))

(declare-fun e!1185380 () Bool)

(assert (=> start!185190 e!1185380))

(declare-fun b!1855348 () Bool)

(declare-fun e!1185382 () Bool)

(declare-fun tp!527338 () Bool)

(assert (=> b!1855348 (= e!1185380 (and e!1185382 tp!527338))))

(declare-fun b!1855349 () Bool)

(declare-datatypes ((Token!6916 0))(
  ( (Token!6917 (value!115556 TokenValue!3798) (rule!5875 Rule!7164) (size!16258 Int) (originalCharacters!4489 List!20655)) )
))
(declare-datatypes ((List!20657 0))(
  ( (Nil!20579) (Cons!20579 (h!25980 Token!6916) (t!172518 List!20657)) )
))
(declare-datatypes ((IArray!13629 0))(
  ( (IArray!13630 (innerList!6872 List!20657)) )
))
(declare-datatypes ((Conc!6812 0))(
  ( (Node!6812 (left!16509 Conc!6812) (right!16839 Conc!6812) (csize!13854 Int) (cheight!7023 Int)) (Leaf!9964 (xs!9688 IArray!13629) (csize!13855 Int)) (Empty!6812) )
))
(declare-datatypes ((BalanceConc!13552 0))(
  ( (BalanceConc!13553 (c!302369 Conc!6812)) )
))
(declare-fun isEmpty!12825 (BalanceConc!13552) Bool)

(assert (=> b!1855349 (= e!1185383 (not (isEmpty!12825 (BalanceConc!13553 Empty!6812))))))

(declare-fun tp!527337 () Bool)

(declare-fun b!1855350 () Bool)

(declare-fun inv!26973 (String!23580) Bool)

(declare-fun inv!26975 (TokenValueInjection!7212) Bool)

(assert (=> b!1855350 (= e!1185382 (and tp!527337 (inv!26973 (tag!4096 (h!25979 rules!865))) (inv!26975 (transformation!3682 (h!25979 rules!865))) e!1185381))))

(assert (= (and start!185190 res!831839) b!1855346))

(assert (= (and b!1855346 res!831838) b!1855349))

(assert (= b!1855350 b!1855347))

(assert (= b!1855348 b!1855350))

(get-info :version)

(assert (= (and start!185190 ((_ is Cons!20578) rules!865)) b!1855348))

(declare-fun m!2281073 () Bool)

(assert (=> b!1855346 m!2281073))

(declare-fun m!2281075 () Bool)

(assert (=> start!185190 m!2281075))

(declare-fun m!2281077 () Bool)

(assert (=> b!1855349 m!2281077))

(declare-fun m!2281079 () Bool)

(assert (=> b!1855350 m!2281079))

(declare-fun m!2281081 () Bool)

(assert (=> b!1855350 m!2281081))

(check-sat (not b_next!52633) (not b_next!52631) (not b!1855349) (not b!1855348) b_and!144185 (not b!1855346) b_and!144187 (not b!1855350) (not start!185190))
(check-sat b_and!144187 b_and!144185 (not b_next!52633) (not b_next!52631))
(get-model)

(declare-fun d!566692 () Bool)

(declare-fun lt!716855 () Bool)

(declare-fun isEmpty!12828 (List!20657) Bool)

(declare-fun list!8349 (BalanceConc!13552) List!20657)

(assert (=> d!566692 (= lt!716855 (isEmpty!12828 (list!8349 (BalanceConc!13553 Empty!6812))))))

(declare-fun isEmpty!12829 (Conc!6812) Bool)

(assert (=> d!566692 (= lt!716855 (isEmpty!12829 (c!302369 (BalanceConc!13553 Empty!6812))))))

(assert (=> d!566692 (= (isEmpty!12825 (BalanceConc!13553 Empty!6812)) lt!716855)))

(declare-fun bs!410612 () Bool)

(assert (= bs!410612 d!566692))

(declare-fun m!2281083 () Bool)

(assert (=> bs!410612 m!2281083))

(assert (=> bs!410612 m!2281083))

(declare-fun m!2281085 () Bool)

(assert (=> bs!410612 m!2281085))

(declare-fun m!2281087 () Bool)

(assert (=> bs!410612 m!2281087))

(assert (=> b!1855349 d!566692))

(declare-fun d!566694 () Bool)

(assert (=> d!566694 (= (isEmpty!12824 rules!865) ((_ is Nil!20578) rules!865))))

(assert (=> start!185190 d!566694))

(declare-fun d!566696 () Bool)

(declare-fun res!831842 () Bool)

(declare-fun e!1185387 () Bool)

(assert (=> d!566696 (=> (not res!831842) (not e!1185387))))

(declare-fun rulesValid!1406 (LexerInterface!3304 List!20656) Bool)

(assert (=> d!566696 (= res!831842 (rulesValid!1406 Lexer!3302 rules!865))))

(assert (=> d!566696 (= (rulesInvariant!2971 Lexer!3302 rules!865) e!1185387)))

(declare-fun b!1855353 () Bool)

(declare-datatypes ((List!20659 0))(
  ( (Nil!20581) (Cons!20581 (h!25982 String!23580) (t!172520 List!20659)) )
))
(declare-fun noDuplicateTag!1404 (LexerInterface!3304 List!20656 List!20659) Bool)

(assert (=> b!1855353 (= e!1185387 (noDuplicateTag!1404 Lexer!3302 rules!865 Nil!20581))))

(assert (= (and d!566696 res!831842) b!1855353))

(declare-fun m!2281089 () Bool)

(assert (=> d!566696 m!2281089))

(declare-fun m!2281091 () Bool)

(assert (=> b!1855353 m!2281091))

(assert (=> b!1855346 d!566696))

(declare-fun d!566702 () Bool)

(assert (=> d!566702 (= (inv!26973 (tag!4096 (h!25979 rules!865))) (= (mod (str.len (value!115555 (tag!4096 (h!25979 rules!865)))) 2) 0))))

(assert (=> b!1855350 d!566702))

(declare-fun d!566706 () Bool)

(declare-fun res!831851 () Bool)

(declare-fun e!1185399 () Bool)

(assert (=> d!566706 (=> (not res!831851) (not e!1185399))))

(declare-fun semiInverseModEq!1496 (Int Int) Bool)

(assert (=> d!566706 (= res!831851 (semiInverseModEq!1496 (toChars!5120 (transformation!3682 (h!25979 rules!865))) (toValue!5261 (transformation!3682 (h!25979 rules!865)))))))

(assert (=> d!566706 (= (inv!26975 (transformation!3682 (h!25979 rules!865))) e!1185399)))

(declare-fun b!1855380 () Bool)

(declare-fun equivClasses!1429 (Int Int) Bool)

(assert (=> b!1855380 (= e!1185399 (equivClasses!1429 (toChars!5120 (transformation!3682 (h!25979 rules!865))) (toValue!5261 (transformation!3682 (h!25979 rules!865)))))))

(assert (= (and d!566706 res!831851) b!1855380))

(declare-fun m!2281107 () Bool)

(assert (=> d!566706 m!2281107))

(declare-fun m!2281109 () Bool)

(assert (=> b!1855380 m!2281109))

(assert (=> b!1855350 d!566706))

(declare-fun b!1855398 () Bool)

(declare-fun b_free!51935 () Bool)

(declare-fun b_next!52639 () Bool)

(assert (=> b!1855398 (= b_free!51935 (not b_next!52639))))

(declare-fun tp!527375 () Bool)

(declare-fun b_and!144193 () Bool)

(assert (=> b!1855398 (= tp!527375 b_and!144193)))

(declare-fun b_free!51937 () Bool)

(declare-fun b_next!52641 () Bool)

(assert (=> b!1855398 (= b_free!51937 (not b_next!52641))))

(declare-fun tp!527376 () Bool)

(declare-fun b_and!144195 () Bool)

(assert (=> b!1855398 (= tp!527376 b_and!144195)))

(declare-fun e!1185422 () Bool)

(assert (=> b!1855398 (= e!1185422 (and tp!527375 tp!527376))))

(declare-fun e!1185423 () Bool)

(declare-fun b!1855397 () Bool)

(declare-fun tp!527374 () Bool)

(assert (=> b!1855397 (= e!1185423 (and tp!527374 (inv!26973 (tag!4096 (h!25979 (t!172517 rules!865)))) (inv!26975 (transformation!3682 (h!25979 (t!172517 rules!865)))) e!1185422))))

(declare-fun b!1855396 () Bool)

(declare-fun e!1185420 () Bool)

(declare-fun tp!527377 () Bool)

(assert (=> b!1855396 (= e!1185420 (and e!1185423 tp!527377))))

(assert (=> b!1855348 (= tp!527338 e!1185420)))

(assert (= b!1855397 b!1855398))

(assert (= b!1855396 b!1855397))

(assert (= (and b!1855348 ((_ is Cons!20578) (t!172517 rules!865))) b!1855396))

(declare-fun m!2281115 () Bool)

(assert (=> b!1855397 m!2281115))

(declare-fun m!2281117 () Bool)

(assert (=> b!1855397 m!2281117))

(declare-fun b!1855412 () Bool)

(declare-fun e!1185426 () Bool)

(declare-fun tp!527389 () Bool)

(declare-fun tp!527388 () Bool)

(assert (=> b!1855412 (= e!1185426 (and tp!527389 tp!527388))))

(assert (=> b!1855350 (= tp!527337 e!1185426)))

(declare-fun b!1855410 () Bool)

(declare-fun tp!527391 () Bool)

(declare-fun tp!527392 () Bool)

(assert (=> b!1855410 (= e!1185426 (and tp!527391 tp!527392))))

(declare-fun b!1855411 () Bool)

(declare-fun tp!527390 () Bool)

(assert (=> b!1855411 (= e!1185426 tp!527390)))

(declare-fun b!1855409 () Bool)

(declare-fun tp_is_empty!8511 () Bool)

(assert (=> b!1855409 (= e!1185426 tp_is_empty!8511)))

(assert (= (and b!1855350 ((_ is ElementMatch!5045) (regex!3682 (h!25979 rules!865)))) b!1855409))

(assert (= (and b!1855350 ((_ is Concat!8844) (regex!3682 (h!25979 rules!865)))) b!1855410))

(assert (= (and b!1855350 ((_ is Star!5045) (regex!3682 (h!25979 rules!865)))) b!1855411))

(assert (= (and b!1855350 ((_ is Union!5045) (regex!3682 (h!25979 rules!865)))) b!1855412))

(check-sat (not b!1855353) (not b_next!52633) (not b!1855396) (not b_next!52631) (not b!1855397) (not b_next!52641) (not b!1855410) b_and!144193 (not b!1855380) b_and!144185 (not d!566696) b_and!144187 (not d!566692) (not b!1855412) (not b_next!52639) (not b!1855411) tp_is_empty!8511 b_and!144195 (not d!566706))
(check-sat (not b_next!52633) (not b_next!52631) (not b_next!52641) b_and!144195 b_and!144193 b_and!144185 b_and!144187 (not b_next!52639))
(get-model)

(declare-fun d!566712 () Bool)

(assert (=> d!566712 true))

(declare-fun lt!716867 () Bool)

(declare-fun rulesValidInductive!1270 (LexerInterface!3304 List!20656) Bool)

(assert (=> d!566712 (= lt!716867 (rulesValidInductive!1270 Lexer!3302 rules!865))))

(declare-fun lambda!73318 () Int)

(declare-fun forall!4405 (List!20656 Int) Bool)

(assert (=> d!566712 (= lt!716867 (forall!4405 rules!865 lambda!73318))))

(assert (=> d!566712 (= (rulesValid!1406 Lexer!3302 rules!865) lt!716867)))

(declare-fun bs!410619 () Bool)

(assert (= bs!410619 d!566712))

(declare-fun m!2281145 () Bool)

(assert (=> bs!410619 m!2281145))

(declare-fun m!2281147 () Bool)

(assert (=> bs!410619 m!2281147))

(assert (=> d!566696 d!566712))

(declare-fun d!566732 () Bool)

(assert (=> d!566732 (= (isEmpty!12828 (list!8349 (BalanceConc!13553 Empty!6812))) ((_ is Nil!20579) (list!8349 (BalanceConc!13553 Empty!6812))))))

(assert (=> d!566692 d!566732))

(declare-fun d!566734 () Bool)

(declare-fun list!8351 (Conc!6812) List!20657)

(assert (=> d!566734 (= (list!8349 (BalanceConc!13553 Empty!6812)) (list!8351 (c!302369 (BalanceConc!13553 Empty!6812))))))

(declare-fun bs!410620 () Bool)

(assert (= bs!410620 d!566734))

(declare-fun m!2281149 () Bool)

(assert (=> bs!410620 m!2281149))

(assert (=> d!566692 d!566734))

(declare-fun d!566736 () Bool)

(declare-fun lt!716870 () Bool)

(assert (=> d!566736 (= lt!716870 (isEmpty!12828 (list!8351 (c!302369 (BalanceConc!13553 Empty!6812)))))))

(declare-fun size!16260 (Conc!6812) Int)

(assert (=> d!566736 (= lt!716870 (= (size!16260 (c!302369 (BalanceConc!13553 Empty!6812))) 0))))

(assert (=> d!566736 (= (isEmpty!12829 (c!302369 (BalanceConc!13553 Empty!6812))) lt!716870)))

(declare-fun bs!410621 () Bool)

(assert (= bs!410621 d!566736))

(assert (=> bs!410621 m!2281149))

(assert (=> bs!410621 m!2281149))

(declare-fun m!2281151 () Bool)

(assert (=> bs!410621 m!2281151))

(declare-fun m!2281153 () Bool)

(assert (=> bs!410621 m!2281153))

(assert (=> d!566692 d!566736))

(declare-fun d!566738 () Bool)

(assert (=> d!566738 true))

(declare-fun lambda!73321 () Int)

(declare-fun order!13231 () Int)

(declare-fun order!13229 () Int)

(declare-fun dynLambda!10191 (Int Int) Int)

(declare-fun dynLambda!10192 (Int Int) Int)

(assert (=> d!566738 (< (dynLambda!10191 order!13229 (toChars!5120 (transformation!3682 (h!25979 rules!865)))) (dynLambda!10192 order!13231 lambda!73321))))

(assert (=> d!566738 true))

(declare-fun order!13233 () Int)

(declare-fun dynLambda!10193 (Int Int) Int)

(assert (=> d!566738 (< (dynLambda!10193 order!13233 (toValue!5261 (transformation!3682 (h!25979 rules!865)))) (dynLambda!10192 order!13231 lambda!73321))))

(declare-fun Forall!964 (Int) Bool)

(assert (=> d!566738 (= (semiInverseModEq!1496 (toChars!5120 (transformation!3682 (h!25979 rules!865))) (toValue!5261 (transformation!3682 (h!25979 rules!865)))) (Forall!964 lambda!73321))))

(declare-fun bs!410622 () Bool)

(assert (= bs!410622 d!566738))

(declare-fun m!2281155 () Bool)

(assert (=> bs!410622 m!2281155))

(assert (=> d!566706 d!566738))

(declare-fun d!566740 () Bool)

(declare-fun res!831869 () Bool)

(declare-fun e!1185450 () Bool)

(assert (=> d!566740 (=> res!831869 e!1185450)))

(assert (=> d!566740 (= res!831869 ((_ is Nil!20578) rules!865))))

(assert (=> d!566740 (= (noDuplicateTag!1404 Lexer!3302 rules!865 Nil!20581) e!1185450)))

(declare-fun b!1855467 () Bool)

(declare-fun e!1185451 () Bool)

(assert (=> b!1855467 (= e!1185450 e!1185451)))

(declare-fun res!831870 () Bool)

(assert (=> b!1855467 (=> (not res!831870) (not e!1185451))))

(declare-fun contains!3795 (List!20659 String!23580) Bool)

(assert (=> b!1855467 (= res!831870 (not (contains!3795 Nil!20581 (tag!4096 (h!25979 rules!865)))))))

(declare-fun b!1855468 () Bool)

(assert (=> b!1855468 (= e!1185451 (noDuplicateTag!1404 Lexer!3302 (t!172517 rules!865) (Cons!20581 (tag!4096 (h!25979 rules!865)) Nil!20581)))))

(assert (= (and d!566740 (not res!831869)) b!1855467))

(assert (= (and b!1855467 res!831870) b!1855468))

(declare-fun m!2281157 () Bool)

(assert (=> b!1855467 m!2281157))

(declare-fun m!2281159 () Bool)

(assert (=> b!1855468 m!2281159))

(assert (=> b!1855353 d!566740))

(declare-fun d!566742 () Bool)

(assert (=> d!566742 true))

(declare-fun order!13235 () Int)

(declare-fun lambda!73324 () Int)

(declare-fun dynLambda!10194 (Int Int) Int)

(assert (=> d!566742 (< (dynLambda!10193 order!13233 (toValue!5261 (transformation!3682 (h!25979 rules!865)))) (dynLambda!10194 order!13235 lambda!73324))))

(declare-fun Forall2!595 (Int) Bool)

(assert (=> d!566742 (= (equivClasses!1429 (toChars!5120 (transformation!3682 (h!25979 rules!865))) (toValue!5261 (transformation!3682 (h!25979 rules!865)))) (Forall2!595 lambda!73324))))

(declare-fun bs!410623 () Bool)

(assert (= bs!410623 d!566742))

(declare-fun m!2281161 () Bool)

(assert (=> bs!410623 m!2281161))

(assert (=> b!1855380 d!566742))

(declare-fun d!566744 () Bool)

(assert (=> d!566744 (= (inv!26973 (tag!4096 (h!25979 (t!172517 rules!865)))) (= (mod (str.len (value!115555 (tag!4096 (h!25979 (t!172517 rules!865))))) 2) 0))))

(assert (=> b!1855397 d!566744))

(declare-fun d!566746 () Bool)

(declare-fun res!831873 () Bool)

(declare-fun e!1185454 () Bool)

(assert (=> d!566746 (=> (not res!831873) (not e!1185454))))

(assert (=> d!566746 (= res!831873 (semiInverseModEq!1496 (toChars!5120 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865))))))))

(assert (=> d!566746 (= (inv!26975 (transformation!3682 (h!25979 (t!172517 rules!865)))) e!1185454)))

(declare-fun b!1855473 () Bool)

(assert (=> b!1855473 (= e!1185454 (equivClasses!1429 (toChars!5120 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865))))))))

(assert (= (and d!566746 res!831873) b!1855473))

(declare-fun m!2281163 () Bool)

(assert (=> d!566746 m!2281163))

(declare-fun m!2281165 () Bool)

(assert (=> b!1855473 m!2281165))

(assert (=> b!1855397 d!566746))

(declare-fun b!1855476 () Bool)

(declare-fun b_free!51943 () Bool)

(declare-fun b_next!52647 () Bool)

(assert (=> b!1855476 (= b_free!51943 (not b_next!52647))))

(declare-fun tp!527428 () Bool)

(declare-fun b_and!144201 () Bool)

(assert (=> b!1855476 (= tp!527428 b_and!144201)))

(declare-fun b_free!51945 () Bool)

(declare-fun b_next!52649 () Bool)

(assert (=> b!1855476 (= b_free!51945 (not b_next!52649))))

(declare-fun tp!527429 () Bool)

(declare-fun b_and!144203 () Bool)

(assert (=> b!1855476 (= tp!527429 b_and!144203)))

(declare-fun e!1185457 () Bool)

(assert (=> b!1855476 (= e!1185457 (and tp!527428 tp!527429))))

(declare-fun b!1855475 () Bool)

(declare-fun tp!527427 () Bool)

(declare-fun e!1185458 () Bool)

(assert (=> b!1855475 (= e!1185458 (and tp!527427 (inv!26973 (tag!4096 (h!25979 (t!172517 (t!172517 rules!865))))) (inv!26975 (transformation!3682 (h!25979 (t!172517 (t!172517 rules!865))))) e!1185457))))

(declare-fun b!1855474 () Bool)

(declare-fun e!1185455 () Bool)

(declare-fun tp!527430 () Bool)

(assert (=> b!1855474 (= e!1185455 (and e!1185458 tp!527430))))

(assert (=> b!1855396 (= tp!527377 e!1185455)))

(assert (= b!1855475 b!1855476))

(assert (= b!1855474 b!1855475))

(assert (= (and b!1855396 ((_ is Cons!20578) (t!172517 (t!172517 rules!865)))) b!1855474))

(declare-fun m!2281167 () Bool)

(assert (=> b!1855475 m!2281167))

(declare-fun m!2281169 () Bool)

(assert (=> b!1855475 m!2281169))

(declare-fun b!1855480 () Bool)

(declare-fun e!1185459 () Bool)

(declare-fun tp!527432 () Bool)

(declare-fun tp!527431 () Bool)

(assert (=> b!1855480 (= e!1185459 (and tp!527432 tp!527431))))

(assert (=> b!1855410 (= tp!527391 e!1185459)))

(declare-fun b!1855478 () Bool)

(declare-fun tp!527434 () Bool)

(declare-fun tp!527435 () Bool)

(assert (=> b!1855478 (= e!1185459 (and tp!527434 tp!527435))))

(declare-fun b!1855479 () Bool)

(declare-fun tp!527433 () Bool)

(assert (=> b!1855479 (= e!1185459 tp!527433)))

(declare-fun b!1855477 () Bool)

(assert (=> b!1855477 (= e!1185459 tp_is_empty!8511)))

(assert (= (and b!1855410 ((_ is ElementMatch!5045) (regOne!10602 (regex!3682 (h!25979 rules!865))))) b!1855477))

(assert (= (and b!1855410 ((_ is Concat!8844) (regOne!10602 (regex!3682 (h!25979 rules!865))))) b!1855478))

(assert (= (and b!1855410 ((_ is Star!5045) (regOne!10602 (regex!3682 (h!25979 rules!865))))) b!1855479))

(assert (= (and b!1855410 ((_ is Union!5045) (regOne!10602 (regex!3682 (h!25979 rules!865))))) b!1855480))

(declare-fun b!1855484 () Bool)

(declare-fun e!1185460 () Bool)

(declare-fun tp!527437 () Bool)

(declare-fun tp!527436 () Bool)

(assert (=> b!1855484 (= e!1185460 (and tp!527437 tp!527436))))

(assert (=> b!1855410 (= tp!527392 e!1185460)))

(declare-fun b!1855482 () Bool)

(declare-fun tp!527439 () Bool)

(declare-fun tp!527440 () Bool)

(assert (=> b!1855482 (= e!1185460 (and tp!527439 tp!527440))))

(declare-fun b!1855483 () Bool)

(declare-fun tp!527438 () Bool)

(assert (=> b!1855483 (= e!1185460 tp!527438)))

(declare-fun b!1855481 () Bool)

(assert (=> b!1855481 (= e!1185460 tp_is_empty!8511)))

(assert (= (and b!1855410 ((_ is ElementMatch!5045) (regTwo!10602 (regex!3682 (h!25979 rules!865))))) b!1855481))

(assert (= (and b!1855410 ((_ is Concat!8844) (regTwo!10602 (regex!3682 (h!25979 rules!865))))) b!1855482))

(assert (= (and b!1855410 ((_ is Star!5045) (regTwo!10602 (regex!3682 (h!25979 rules!865))))) b!1855483))

(assert (= (and b!1855410 ((_ is Union!5045) (regTwo!10602 (regex!3682 (h!25979 rules!865))))) b!1855484))

(declare-fun b!1855488 () Bool)

(declare-fun e!1185461 () Bool)

(declare-fun tp!527442 () Bool)

(declare-fun tp!527441 () Bool)

(assert (=> b!1855488 (= e!1185461 (and tp!527442 tp!527441))))

(assert (=> b!1855397 (= tp!527374 e!1185461)))

(declare-fun b!1855486 () Bool)

(declare-fun tp!527444 () Bool)

(declare-fun tp!527445 () Bool)

(assert (=> b!1855486 (= e!1185461 (and tp!527444 tp!527445))))

(declare-fun b!1855487 () Bool)

(declare-fun tp!527443 () Bool)

(assert (=> b!1855487 (= e!1185461 tp!527443)))

(declare-fun b!1855485 () Bool)

(assert (=> b!1855485 (= e!1185461 tp_is_empty!8511)))

(assert (= (and b!1855397 ((_ is ElementMatch!5045) (regex!3682 (h!25979 (t!172517 rules!865))))) b!1855485))

(assert (= (and b!1855397 ((_ is Concat!8844) (regex!3682 (h!25979 (t!172517 rules!865))))) b!1855486))

(assert (= (and b!1855397 ((_ is Star!5045) (regex!3682 (h!25979 (t!172517 rules!865))))) b!1855487))

(assert (= (and b!1855397 ((_ is Union!5045) (regex!3682 (h!25979 (t!172517 rules!865))))) b!1855488))

(declare-fun b!1855492 () Bool)

(declare-fun e!1185462 () Bool)

(declare-fun tp!527447 () Bool)

(declare-fun tp!527446 () Bool)

(assert (=> b!1855492 (= e!1185462 (and tp!527447 tp!527446))))

(assert (=> b!1855412 (= tp!527389 e!1185462)))

(declare-fun b!1855490 () Bool)

(declare-fun tp!527449 () Bool)

(declare-fun tp!527450 () Bool)

(assert (=> b!1855490 (= e!1185462 (and tp!527449 tp!527450))))

(declare-fun b!1855491 () Bool)

(declare-fun tp!527448 () Bool)

(assert (=> b!1855491 (= e!1185462 tp!527448)))

(declare-fun b!1855489 () Bool)

(assert (=> b!1855489 (= e!1185462 tp_is_empty!8511)))

(assert (= (and b!1855412 ((_ is ElementMatch!5045) (regOne!10603 (regex!3682 (h!25979 rules!865))))) b!1855489))

(assert (= (and b!1855412 ((_ is Concat!8844) (regOne!10603 (regex!3682 (h!25979 rules!865))))) b!1855490))

(assert (= (and b!1855412 ((_ is Star!5045) (regOne!10603 (regex!3682 (h!25979 rules!865))))) b!1855491))

(assert (= (and b!1855412 ((_ is Union!5045) (regOne!10603 (regex!3682 (h!25979 rules!865))))) b!1855492))

(declare-fun b!1855496 () Bool)

(declare-fun e!1185463 () Bool)

(declare-fun tp!527452 () Bool)

(declare-fun tp!527451 () Bool)

(assert (=> b!1855496 (= e!1185463 (and tp!527452 tp!527451))))

(assert (=> b!1855412 (= tp!527388 e!1185463)))

(declare-fun b!1855494 () Bool)

(declare-fun tp!527454 () Bool)

(declare-fun tp!527455 () Bool)

(assert (=> b!1855494 (= e!1185463 (and tp!527454 tp!527455))))

(declare-fun b!1855495 () Bool)

(declare-fun tp!527453 () Bool)

(assert (=> b!1855495 (= e!1185463 tp!527453)))

(declare-fun b!1855493 () Bool)

(assert (=> b!1855493 (= e!1185463 tp_is_empty!8511)))

(assert (= (and b!1855412 ((_ is ElementMatch!5045) (regTwo!10603 (regex!3682 (h!25979 rules!865))))) b!1855493))

(assert (= (and b!1855412 ((_ is Concat!8844) (regTwo!10603 (regex!3682 (h!25979 rules!865))))) b!1855494))

(assert (= (and b!1855412 ((_ is Star!5045) (regTwo!10603 (regex!3682 (h!25979 rules!865))))) b!1855495))

(assert (= (and b!1855412 ((_ is Union!5045) (regTwo!10603 (regex!3682 (h!25979 rules!865))))) b!1855496))

(declare-fun b!1855500 () Bool)

(declare-fun e!1185464 () Bool)

(declare-fun tp!527457 () Bool)

(declare-fun tp!527456 () Bool)

(assert (=> b!1855500 (= e!1185464 (and tp!527457 tp!527456))))

(assert (=> b!1855411 (= tp!527390 e!1185464)))

(declare-fun b!1855498 () Bool)

(declare-fun tp!527459 () Bool)

(declare-fun tp!527460 () Bool)

(assert (=> b!1855498 (= e!1185464 (and tp!527459 tp!527460))))

(declare-fun b!1855499 () Bool)

(declare-fun tp!527458 () Bool)

(assert (=> b!1855499 (= e!1185464 tp!527458)))

(declare-fun b!1855497 () Bool)

(assert (=> b!1855497 (= e!1185464 tp_is_empty!8511)))

(assert (= (and b!1855411 ((_ is ElementMatch!5045) (reg!5374 (regex!3682 (h!25979 rules!865))))) b!1855497))

(assert (= (and b!1855411 ((_ is Concat!8844) (reg!5374 (regex!3682 (h!25979 rules!865))))) b!1855498))

(assert (= (and b!1855411 ((_ is Star!5045) (reg!5374 (regex!3682 (h!25979 rules!865))))) b!1855499))

(assert (= (and b!1855411 ((_ is Union!5045) (reg!5374 (regex!3682 (h!25979 rules!865))))) b!1855500))

(check-sat (not b!1855490) (not b_next!52647) (not b!1855498) (not b!1855484) b_and!144187 (not b!1855496) (not b!1855488) b_and!144201 (not b_next!52633) (not d!566734) (not d!566738) b_and!144203 (not b!1855479) (not b_next!52631) (not b_next!52641) (not b_next!52649) b_and!144195 (not b!1855482) (not d!566712) (not b!1855483) (not b!1855499) (not b!1855467) (not b!1855475) (not b!1855494) (not b!1855486) (not d!566736) b_and!144193 b_and!144185 (not b!1855495) (not b!1855478) (not b!1855468) (not d!566746) (not b!1855480) (not b!1855487) (not b!1855500) (not b!1855473) (not d!566742) (not b_next!52639) (not b!1855492) tp_is_empty!8511 (not b!1855474) (not b!1855491))
(check-sat b_and!144203 (not b_next!52631) b_and!144195 (not b_next!52647) b_and!144193 b_and!144185 b_and!144187 (not b_next!52639) b_and!144201 (not b_next!52633) (not b_next!52641) (not b_next!52649))
(get-model)

(declare-fun bs!410633 () Bool)

(declare-fun d!566776 () Bool)

(assert (= bs!410633 (and d!566776 d!566712)))

(declare-fun lambda!73332 () Int)

(assert (=> bs!410633 (= lambda!73332 lambda!73318)))

(assert (=> d!566776 true))

(declare-fun lt!716882 () Bool)

(assert (=> d!566776 (= lt!716882 (forall!4405 rules!865 lambda!73332))))

(declare-fun e!1185532 () Bool)

(assert (=> d!566776 (= lt!716882 e!1185532)))

(declare-fun res!831905 () Bool)

(assert (=> d!566776 (=> res!831905 e!1185532)))

(assert (=> d!566776 (= res!831905 (not ((_ is Cons!20578) rules!865)))))

(assert (=> d!566776 (= (rulesValidInductive!1270 Lexer!3302 rules!865) lt!716882)))

(declare-fun b!1855665 () Bool)

(declare-fun e!1185531 () Bool)

(assert (=> b!1855665 (= e!1185532 e!1185531)))

(declare-fun res!831906 () Bool)

(assert (=> b!1855665 (=> (not res!831906) (not e!1185531))))

(declare-fun ruleValid!1143 (LexerInterface!3304 Rule!7164) Bool)

(assert (=> b!1855665 (= res!831906 (ruleValid!1143 Lexer!3302 (h!25979 rules!865)))))

(declare-fun b!1855666 () Bool)

(assert (=> b!1855666 (= e!1185531 (rulesValidInductive!1270 Lexer!3302 (t!172517 rules!865)))))

(assert (= (and d!566776 (not res!831905)) b!1855665))

(assert (= (and b!1855665 res!831906) b!1855666))

(declare-fun m!2281217 () Bool)

(assert (=> d!566776 m!2281217))

(declare-fun m!2281219 () Bool)

(assert (=> b!1855665 m!2281219))

(declare-fun m!2281221 () Bool)

(assert (=> b!1855666 m!2281221))

(assert (=> d!566712 d!566776))

(declare-fun d!566778 () Bool)

(declare-fun res!831911 () Bool)

(declare-fun e!1185537 () Bool)

(assert (=> d!566778 (=> res!831911 e!1185537)))

(assert (=> d!566778 (= res!831911 ((_ is Nil!20578) rules!865))))

(assert (=> d!566778 (= (forall!4405 rules!865 lambda!73318) e!1185537)))

(declare-fun b!1855671 () Bool)

(declare-fun e!1185538 () Bool)

(assert (=> b!1855671 (= e!1185537 e!1185538)))

(declare-fun res!831912 () Bool)

(assert (=> b!1855671 (=> (not res!831912) (not e!1185538))))

(declare-fun dynLambda!10196 (Int Rule!7164) Bool)

(assert (=> b!1855671 (= res!831912 (dynLambda!10196 lambda!73318 (h!25979 rules!865)))))

(declare-fun b!1855672 () Bool)

(assert (=> b!1855672 (= e!1185538 (forall!4405 (t!172517 rules!865) lambda!73318))))

(assert (= (and d!566778 (not res!831911)) b!1855671))

(assert (= (and b!1855671 res!831912) b!1855672))

(declare-fun b_lambda!61501 () Bool)

(assert (=> (not b_lambda!61501) (not b!1855671)))

(declare-fun m!2281223 () Bool)

(assert (=> b!1855671 m!2281223))

(declare-fun m!2281225 () Bool)

(assert (=> b!1855672 m!2281225))

(assert (=> d!566712 d!566778))

(declare-fun d!566780 () Bool)

(declare-fun choose!11675 (Int) Bool)

(assert (=> d!566780 (= (Forall!964 lambda!73321) (choose!11675 lambda!73321))))

(declare-fun bs!410634 () Bool)

(assert (= bs!410634 d!566780))

(declare-fun m!2281227 () Bool)

(assert (=> bs!410634 m!2281227))

(assert (=> d!566738 d!566780))

(declare-fun bs!410635 () Bool)

(declare-fun d!566782 () Bool)

(assert (= bs!410635 (and d!566782 d!566738)))

(declare-fun lambda!73333 () Int)

(assert (=> bs!410635 (= (and (= (toChars!5120 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toChars!5120 (transformation!3682 (h!25979 rules!865)))) (= (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toValue!5261 (transformation!3682 (h!25979 rules!865))))) (= lambda!73333 lambda!73321))))

(assert (=> d!566782 true))

(assert (=> d!566782 (< (dynLambda!10191 order!13229 (toChars!5120 (transformation!3682 (h!25979 (t!172517 rules!865))))) (dynLambda!10192 order!13231 lambda!73333))))

(assert (=> d!566782 true))

(assert (=> d!566782 (< (dynLambda!10193 order!13233 (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865))))) (dynLambda!10192 order!13231 lambda!73333))))

(assert (=> d!566782 (= (semiInverseModEq!1496 (toChars!5120 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865))))) (Forall!964 lambda!73333))))

(declare-fun bs!410636 () Bool)

(assert (= bs!410636 d!566782))

(declare-fun m!2281229 () Bool)

(assert (=> bs!410636 m!2281229))

(assert (=> d!566746 d!566782))

(declare-fun d!566784 () Bool)

(declare-fun choose!11676 (Int) Bool)

(assert (=> d!566784 (= (Forall2!595 lambda!73324) (choose!11676 lambda!73324))))

(declare-fun bs!410637 () Bool)

(assert (= bs!410637 d!566784))

(declare-fun m!2281231 () Bool)

(assert (=> bs!410637 m!2281231))

(assert (=> d!566742 d!566784))

(declare-fun bs!410638 () Bool)

(declare-fun d!566786 () Bool)

(assert (= bs!410638 (and d!566786 d!566742)))

(declare-fun lambda!73334 () Int)

(assert (=> bs!410638 (= (= (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toValue!5261 (transformation!3682 (h!25979 rules!865)))) (= lambda!73334 lambda!73324))))

(assert (=> d!566786 true))

(assert (=> d!566786 (< (dynLambda!10193 order!13233 (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865))))) (dynLambda!10194 order!13235 lambda!73334))))

(assert (=> d!566786 (= (equivClasses!1429 (toChars!5120 (transformation!3682 (h!25979 (t!172517 rules!865)))) (toValue!5261 (transformation!3682 (h!25979 (t!172517 rules!865))))) (Forall2!595 lambda!73334))))

(declare-fun bs!410639 () Bool)

(assert (= bs!410639 d!566786))

(declare-fun m!2281233 () Bool)

(assert (=> bs!410639 m!2281233))

(assert (=> b!1855473 d!566786))

(declare-fun d!566788 () Bool)

(declare-fun res!831913 () Bool)

(declare-fun e!1185539 () Bool)

(assert (=> d!566788 (=> res!831913 e!1185539)))

(assert (=> d!566788 (= res!831913 ((_ is Nil!20578) (t!172517 rules!865)))))

(assert (=> d!566788 (= (noDuplicateTag!1404 Lexer!3302 (t!172517 rules!865) (Cons!20581 (tag!4096 (h!25979 rules!865)) Nil!20581)) e!1185539)))

(declare-fun b!1855673 () Bool)

(declare-fun e!1185540 () Bool)

(assert (=> b!1855673 (= e!1185539 e!1185540)))

(declare-fun res!831914 () Bool)

(assert (=> b!1855673 (=> (not res!831914) (not e!1185540))))

(assert (=> b!1855673 (= res!831914 (not (contains!3795 (Cons!20581 (tag!4096 (h!25979 rules!865)) Nil!20581) (tag!4096 (h!25979 (t!172517 rules!865))))))))

(declare-fun b!1855674 () Bool)

(assert (=> b!1855674 (= e!1185540 (noDuplicateTag!1404 Lexer!3302 (t!172517 (t!172517 rules!865)) (Cons!20581 (tag!4096 (h!25979 (t!172517 rules!865))) (Cons!20581 (tag!4096 (h!25979 rules!865)) Nil!20581))))))

(assert (= (and d!566788 (not res!831913)) b!1855673))

(assert (= (and b!1855673 res!831914) b!1855674))

(declare-fun m!2281235 () Bool)

(assert (=> b!1855673 m!2281235))

(declare-fun m!2281237 () Bool)

(assert (=> b!1855674 m!2281237))

(assert (=> b!1855468 d!566788))

(declare-fun d!566790 () Bool)

(declare-fun lt!716885 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3057 (List!20659) (InoxSet String!23580))

(assert (=> d!566790 (= lt!716885 (select (content!3057 Nil!20581) (tag!4096 (h!25979 rules!865))))))

(declare-fun e!1185545 () Bool)

(assert (=> d!566790 (= lt!716885 e!1185545)))

(declare-fun res!831919 () Bool)

(assert (=> d!566790 (=> (not res!831919) (not e!1185545))))

(assert (=> d!566790 (= res!831919 ((_ is Cons!20581) Nil!20581))))

(assert (=> d!566790 (= (contains!3795 Nil!20581 (tag!4096 (h!25979 rules!865))) lt!716885)))

(declare-fun b!1855679 () Bool)

(declare-fun e!1185546 () Bool)

(assert (=> b!1855679 (= e!1185545 e!1185546)))

(declare-fun res!831920 () Bool)

(assert (=> b!1855679 (=> res!831920 e!1185546)))

(assert (=> b!1855679 (= res!831920 (= (h!25982 Nil!20581) (tag!4096 (h!25979 rules!865))))))

(declare-fun b!1855680 () Bool)

(assert (=> b!1855680 (= e!1185546 (contains!3795 (t!172520 Nil!20581) (tag!4096 (h!25979 rules!865))))))

(assert (= (and d!566790 res!831919) b!1855679))

(assert (= (and b!1855679 (not res!831920)) b!1855680))

(declare-fun m!2281239 () Bool)

(assert (=> d!566790 m!2281239))

(declare-fun m!2281241 () Bool)

(assert (=> d!566790 m!2281241))

(declare-fun m!2281243 () Bool)

(assert (=> b!1855680 m!2281243))

(assert (=> b!1855467 d!566790))

(declare-fun b!1855690 () Bool)

(declare-fun e!1185551 () List!20657)

(declare-fun e!1185552 () List!20657)

(assert (=> b!1855690 (= e!1185551 e!1185552)))

(declare-fun c!302381 () Bool)

(assert (=> b!1855690 (= c!302381 ((_ is Leaf!9964) (c!302369 (BalanceConc!13553 Empty!6812))))))

(declare-fun b!1855691 () Bool)

(declare-fun list!8353 (IArray!13629) List!20657)

(assert (=> b!1855691 (= e!1185552 (list!8353 (xs!9688 (c!302369 (BalanceConc!13553 Empty!6812)))))))

(declare-fun d!566792 () Bool)

(declare-fun c!302380 () Bool)

(assert (=> d!566792 (= c!302380 ((_ is Empty!6812) (c!302369 (BalanceConc!13553 Empty!6812))))))

(assert (=> d!566792 (= (list!8351 (c!302369 (BalanceConc!13553 Empty!6812))) e!1185551)))

(declare-fun b!1855692 () Bool)

(declare-fun ++!5561 (List!20657 List!20657) List!20657)

(assert (=> b!1855692 (= e!1185552 (++!5561 (list!8351 (left!16509 (c!302369 (BalanceConc!13553 Empty!6812)))) (list!8351 (right!16839 (c!302369 (BalanceConc!13553 Empty!6812))))))))

(declare-fun b!1855689 () Bool)

(assert (=> b!1855689 (= e!1185551 Nil!20579)))

(assert (= (and d!566792 c!302380) b!1855689))

(assert (= (and d!566792 (not c!302380)) b!1855690))

(assert (= (and b!1855690 c!302381) b!1855691))

(assert (= (and b!1855690 (not c!302381)) b!1855692))

(declare-fun m!2281245 () Bool)

(assert (=> b!1855691 m!2281245))

(declare-fun m!2281247 () Bool)

(assert (=> b!1855692 m!2281247))

(declare-fun m!2281249 () Bool)

(assert (=> b!1855692 m!2281249))

(assert (=> b!1855692 m!2281247))

(assert (=> b!1855692 m!2281249))

(declare-fun m!2281251 () Bool)

(assert (=> b!1855692 m!2281251))

(assert (=> d!566734 d!566792))

(declare-fun d!566794 () Bool)

(assert (=> d!566794 (= (inv!26973 (tag!4096 (h!25979 (t!172517 (t!172517 rules!865))))) (= (mod (str.len (value!115555 (tag!4096 (h!25979 (t!172517 (t!172517 rules!865)))))) 2) 0))))

(assert (=> b!1855475 d!566794))

(declare-fun d!566796 () Bool)

(declare-fun res!831921 () Bool)

(declare-fun e!1185553 () Bool)

(assert (=> d!566796 (=> (not res!831921) (not e!1185553))))

(assert (=> d!566796 (= res!831921 (semiInverseModEq!1496 (toChars!5120 (transformation!3682 (h!25979 (t!172517 (t!172517 rules!865))))) (toValue!5261 (transformation!3682 (h!25979 (t!172517 (t!172517 rules!865)))))))))

(assert (=> d!566796 (= (inv!26975 (transformation!3682 (h!25979 (t!172517 (t!172517 rules!865))))) e!1185553)))

(declare-fun b!1855693 () Bool)

(assert (=> b!1855693 (= e!1185553 (equivClasses!1429 (toChars!5120 (transformation!3682 (h!25979 (t!172517 (t!172517 rules!865))))) (toValue!5261 (transformation!3682 (h!25979 (t!172517 (t!172517 rules!865)))))))))

(assert (= (and d!566796 res!831921) b!1855693))

(declare-fun m!2281253 () Bool)

(assert (=> d!566796 m!2281253))

(declare-fun m!2281255 () Bool)

(assert (=> b!1855693 m!2281255))

(assert (=> b!1855475 d!566796))

(declare-fun d!566798 () Bool)

(assert (=> d!566798 (= (isEmpty!12828 (list!8351 (c!302369 (BalanceConc!13553 Empty!6812)))) ((_ is Nil!20579) (list!8351 (c!302369 (BalanceConc!13553 Empty!6812)))))))

(assert (=> d!566736 d!566798))

(assert (=> d!566736 d!566792))

(declare-fun d!566800 () Bool)

(declare-fun lt!716888 () Int)

(declare-fun size!16262 (List!20657) Int)

(assert (=> d!566800 (= lt!716888 (size!16262 (list!8351 (c!302369 (BalanceConc!13553 Empty!6812)))))))

(assert (=> d!566800 (= lt!716888 (ite ((_ is Empty!6812) (c!302369 (BalanceConc!13553 Empty!6812))) 0 (ite ((_ is Leaf!9964) (c!302369 (BalanceConc!13553 Empty!6812))) (csize!13855 (c!302369 (BalanceConc!13553 Empty!6812))) (csize!13854 (c!302369 (BalanceConc!13553 Empty!6812))))))))

(assert (=> d!566800 (= (size!16260 (c!302369 (BalanceConc!13553 Empty!6812))) lt!716888)))

(declare-fun bs!410640 () Bool)

(assert (= bs!410640 d!566800))

(assert (=> bs!410640 m!2281149))

(assert (=> bs!410640 m!2281149))

(declare-fun m!2281257 () Bool)

(assert (=> bs!410640 m!2281257))

(assert (=> d!566736 d!566800))

(declare-fun b!1855697 () Bool)

(declare-fun e!1185554 () Bool)

(declare-fun tp!527621 () Bool)

(declare-fun tp!527620 () Bool)

(assert (=> b!1855697 (= e!1185554 (and tp!527621 tp!527620))))

(assert (=> b!1855479 (= tp!527433 e!1185554)))

(declare-fun b!1855695 () Bool)

(declare-fun tp!527623 () Bool)

(declare-fun tp!527624 () Bool)

(assert (=> b!1855695 (= e!1185554 (and tp!527623 tp!527624))))

(declare-fun b!1855696 () Bool)

(declare-fun tp!527622 () Bool)

(assert (=> b!1855696 (= e!1185554 tp!527622)))

(declare-fun b!1855694 () Bool)

(assert (=> b!1855694 (= e!1185554 tp_is_empty!8511)))

(assert (= (and b!1855479 ((_ is ElementMatch!5045) (reg!5374 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855694))

(assert (= (and b!1855479 ((_ is Concat!8844) (reg!5374 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855695))

(assert (= (and b!1855479 ((_ is Star!5045) (reg!5374 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855696))

(assert (= (and b!1855479 ((_ is Union!5045) (reg!5374 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855697))

(declare-fun b!1855701 () Bool)

(declare-fun e!1185555 () Bool)

(declare-fun tp!527626 () Bool)

(declare-fun tp!527625 () Bool)

(assert (=> b!1855701 (= e!1185555 (and tp!527626 tp!527625))))

(assert (=> b!1855484 (= tp!527437 e!1185555)))

(declare-fun b!1855699 () Bool)

(declare-fun tp!527628 () Bool)

(declare-fun tp!527629 () Bool)

(assert (=> b!1855699 (= e!1185555 (and tp!527628 tp!527629))))

(declare-fun b!1855700 () Bool)

(declare-fun tp!527627 () Bool)

(assert (=> b!1855700 (= e!1185555 tp!527627)))

(declare-fun b!1855698 () Bool)

(assert (=> b!1855698 (= e!1185555 tp_is_empty!8511)))

(assert (= (and b!1855484 ((_ is ElementMatch!5045) (regOne!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855698))

(assert (= (and b!1855484 ((_ is Concat!8844) (regOne!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855699))

(assert (= (and b!1855484 ((_ is Star!5045) (regOne!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855700))

(assert (= (and b!1855484 ((_ is Union!5045) (regOne!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855701))

(declare-fun b!1855705 () Bool)

(declare-fun e!1185556 () Bool)

(declare-fun tp!527631 () Bool)

(declare-fun tp!527630 () Bool)

(assert (=> b!1855705 (= e!1185556 (and tp!527631 tp!527630))))

(assert (=> b!1855484 (= tp!527436 e!1185556)))

(declare-fun b!1855703 () Bool)

(declare-fun tp!527633 () Bool)

(declare-fun tp!527634 () Bool)

(assert (=> b!1855703 (= e!1185556 (and tp!527633 tp!527634))))

(declare-fun b!1855704 () Bool)

(declare-fun tp!527632 () Bool)

(assert (=> b!1855704 (= e!1185556 tp!527632)))

(declare-fun b!1855702 () Bool)

(assert (=> b!1855702 (= e!1185556 tp_is_empty!8511)))

(assert (= (and b!1855484 ((_ is ElementMatch!5045) (regTwo!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855702))

(assert (= (and b!1855484 ((_ is Concat!8844) (regTwo!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855703))

(assert (= (and b!1855484 ((_ is Star!5045) (regTwo!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855704))

(assert (= (and b!1855484 ((_ is Union!5045) (regTwo!10603 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855705))

(declare-fun b!1855709 () Bool)

(declare-fun e!1185557 () Bool)

(declare-fun tp!527636 () Bool)

(declare-fun tp!527635 () Bool)

(assert (=> b!1855709 (= e!1185557 (and tp!527636 tp!527635))))

(assert (=> b!1855483 (= tp!527438 e!1185557)))

(declare-fun b!1855707 () Bool)

(declare-fun tp!527638 () Bool)

(declare-fun tp!527639 () Bool)

(assert (=> b!1855707 (= e!1185557 (and tp!527638 tp!527639))))

(declare-fun b!1855708 () Bool)

(declare-fun tp!527637 () Bool)

(assert (=> b!1855708 (= e!1185557 tp!527637)))

(declare-fun b!1855706 () Bool)

(assert (=> b!1855706 (= e!1185557 tp_is_empty!8511)))

(assert (= (and b!1855483 ((_ is ElementMatch!5045) (reg!5374 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855706))

(assert (= (and b!1855483 ((_ is Concat!8844) (reg!5374 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855707))

(assert (= (and b!1855483 ((_ is Star!5045) (reg!5374 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855708))

(assert (= (and b!1855483 ((_ is Union!5045) (reg!5374 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855709))

(declare-fun b!1855713 () Bool)

(declare-fun e!1185558 () Bool)

(declare-fun tp!527641 () Bool)

(declare-fun tp!527640 () Bool)

(assert (=> b!1855713 (= e!1185558 (and tp!527641 tp!527640))))

(assert (=> b!1855488 (= tp!527442 e!1185558)))

(declare-fun b!1855711 () Bool)

(declare-fun tp!527643 () Bool)

(declare-fun tp!527644 () Bool)

(assert (=> b!1855711 (= e!1185558 (and tp!527643 tp!527644))))

(declare-fun b!1855712 () Bool)

(declare-fun tp!527642 () Bool)

(assert (=> b!1855712 (= e!1185558 tp!527642)))

(declare-fun b!1855710 () Bool)

(assert (=> b!1855710 (= e!1185558 tp_is_empty!8511)))

(assert (= (and b!1855488 ((_ is ElementMatch!5045) (regOne!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855710))

(assert (= (and b!1855488 ((_ is Concat!8844) (regOne!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855711))

(assert (= (and b!1855488 ((_ is Star!5045) (regOne!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855712))

(assert (= (and b!1855488 ((_ is Union!5045) (regOne!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855713))

(declare-fun b!1855717 () Bool)

(declare-fun e!1185559 () Bool)

(declare-fun tp!527646 () Bool)

(declare-fun tp!527645 () Bool)

(assert (=> b!1855717 (= e!1185559 (and tp!527646 tp!527645))))

(assert (=> b!1855488 (= tp!527441 e!1185559)))

(declare-fun b!1855715 () Bool)

(declare-fun tp!527648 () Bool)

(declare-fun tp!527649 () Bool)

(assert (=> b!1855715 (= e!1185559 (and tp!527648 tp!527649))))

(declare-fun b!1855716 () Bool)

(declare-fun tp!527647 () Bool)

(assert (=> b!1855716 (= e!1185559 tp!527647)))

(declare-fun b!1855714 () Bool)

(assert (=> b!1855714 (= e!1185559 tp_is_empty!8511)))

(assert (= (and b!1855488 ((_ is ElementMatch!5045) (regTwo!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855714))

(assert (= (and b!1855488 ((_ is Concat!8844) (regTwo!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855715))

(assert (= (and b!1855488 ((_ is Star!5045) (regTwo!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855716))

(assert (= (and b!1855488 ((_ is Union!5045) (regTwo!10603 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855717))

(declare-fun b!1855721 () Bool)

(declare-fun e!1185560 () Bool)

(declare-fun tp!527651 () Bool)

(declare-fun tp!527650 () Bool)

(assert (=> b!1855721 (= e!1185560 (and tp!527651 tp!527650))))

(assert (=> b!1855487 (= tp!527443 e!1185560)))

(declare-fun b!1855719 () Bool)

(declare-fun tp!527653 () Bool)

(declare-fun tp!527654 () Bool)

(assert (=> b!1855719 (= e!1185560 (and tp!527653 tp!527654))))

(declare-fun b!1855720 () Bool)

(declare-fun tp!527652 () Bool)

(assert (=> b!1855720 (= e!1185560 tp!527652)))

(declare-fun b!1855718 () Bool)

(assert (=> b!1855718 (= e!1185560 tp_is_empty!8511)))

(assert (= (and b!1855487 ((_ is ElementMatch!5045) (reg!5374 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855718))

(assert (= (and b!1855487 ((_ is Concat!8844) (reg!5374 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855719))

(assert (= (and b!1855487 ((_ is Star!5045) (reg!5374 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855720))

(assert (= (and b!1855487 ((_ is Union!5045) (reg!5374 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855721))

(declare-fun b!1855725 () Bool)

(declare-fun e!1185561 () Bool)

(declare-fun tp!527656 () Bool)

(declare-fun tp!527655 () Bool)

(assert (=> b!1855725 (= e!1185561 (and tp!527656 tp!527655))))

(assert (=> b!1855478 (= tp!527434 e!1185561)))

(declare-fun b!1855723 () Bool)

(declare-fun tp!527658 () Bool)

(declare-fun tp!527659 () Bool)

(assert (=> b!1855723 (= e!1185561 (and tp!527658 tp!527659))))

(declare-fun b!1855724 () Bool)

(declare-fun tp!527657 () Bool)

(assert (=> b!1855724 (= e!1185561 tp!527657)))

(declare-fun b!1855722 () Bool)

(assert (=> b!1855722 (= e!1185561 tp_is_empty!8511)))

(assert (= (and b!1855478 ((_ is ElementMatch!5045) (regOne!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855722))

(assert (= (and b!1855478 ((_ is Concat!8844) (regOne!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855723))

(assert (= (and b!1855478 ((_ is Star!5045) (regOne!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855724))

(assert (= (and b!1855478 ((_ is Union!5045) (regOne!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855725))

(declare-fun b!1855729 () Bool)

(declare-fun e!1185562 () Bool)

(declare-fun tp!527661 () Bool)

(declare-fun tp!527660 () Bool)

(assert (=> b!1855729 (= e!1185562 (and tp!527661 tp!527660))))

(assert (=> b!1855478 (= tp!527435 e!1185562)))

(declare-fun b!1855727 () Bool)

(declare-fun tp!527663 () Bool)

(declare-fun tp!527664 () Bool)

(assert (=> b!1855727 (= e!1185562 (and tp!527663 tp!527664))))

(declare-fun b!1855728 () Bool)

(declare-fun tp!527662 () Bool)

(assert (=> b!1855728 (= e!1185562 tp!527662)))

(declare-fun b!1855726 () Bool)

(assert (=> b!1855726 (= e!1185562 tp_is_empty!8511)))

(assert (= (and b!1855478 ((_ is ElementMatch!5045) (regTwo!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855726))

(assert (= (and b!1855478 ((_ is Concat!8844) (regTwo!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855727))

(assert (= (and b!1855478 ((_ is Star!5045) (regTwo!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855728))

(assert (= (and b!1855478 ((_ is Union!5045) (regTwo!10602 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855729))

(declare-fun b!1855733 () Bool)

(declare-fun e!1185563 () Bool)

(declare-fun tp!527666 () Bool)

(declare-fun tp!527665 () Bool)

(assert (=> b!1855733 (= e!1185563 (and tp!527666 tp!527665))))

(assert (=> b!1855492 (= tp!527447 e!1185563)))

(declare-fun b!1855731 () Bool)

(declare-fun tp!527668 () Bool)

(declare-fun tp!527669 () Bool)

(assert (=> b!1855731 (= e!1185563 (and tp!527668 tp!527669))))

(declare-fun b!1855732 () Bool)

(declare-fun tp!527667 () Bool)

(assert (=> b!1855732 (= e!1185563 tp!527667)))

(declare-fun b!1855730 () Bool)

(assert (=> b!1855730 (= e!1185563 tp_is_empty!8511)))

(assert (= (and b!1855492 ((_ is ElementMatch!5045) (regOne!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855730))

(assert (= (and b!1855492 ((_ is Concat!8844) (regOne!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855731))

(assert (= (and b!1855492 ((_ is Star!5045) (regOne!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855732))

(assert (= (and b!1855492 ((_ is Union!5045) (regOne!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855733))

(declare-fun b!1855737 () Bool)

(declare-fun e!1185564 () Bool)

(declare-fun tp!527671 () Bool)

(declare-fun tp!527670 () Bool)

(assert (=> b!1855737 (= e!1185564 (and tp!527671 tp!527670))))

(assert (=> b!1855492 (= tp!527446 e!1185564)))

(declare-fun b!1855735 () Bool)

(declare-fun tp!527673 () Bool)

(declare-fun tp!527674 () Bool)

(assert (=> b!1855735 (= e!1185564 (and tp!527673 tp!527674))))

(declare-fun b!1855736 () Bool)

(declare-fun tp!527672 () Bool)

(assert (=> b!1855736 (= e!1185564 tp!527672)))

(declare-fun b!1855734 () Bool)

(assert (=> b!1855734 (= e!1185564 tp_is_empty!8511)))

(assert (= (and b!1855492 ((_ is ElementMatch!5045) (regTwo!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855734))

(assert (= (and b!1855492 ((_ is Concat!8844) (regTwo!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855735))

(assert (= (and b!1855492 ((_ is Star!5045) (regTwo!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855736))

(assert (= (and b!1855492 ((_ is Union!5045) (regTwo!10603 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855737))

(declare-fun b!1855741 () Bool)

(declare-fun e!1185565 () Bool)

(declare-fun tp!527676 () Bool)

(declare-fun tp!527675 () Bool)

(assert (=> b!1855741 (= e!1185565 (and tp!527676 tp!527675))))

(assert (=> b!1855491 (= tp!527448 e!1185565)))

(declare-fun b!1855739 () Bool)

(declare-fun tp!527678 () Bool)

(declare-fun tp!527679 () Bool)

(assert (=> b!1855739 (= e!1185565 (and tp!527678 tp!527679))))

(declare-fun b!1855740 () Bool)

(declare-fun tp!527677 () Bool)

(assert (=> b!1855740 (= e!1185565 tp!527677)))

(declare-fun b!1855738 () Bool)

(assert (=> b!1855738 (= e!1185565 tp_is_empty!8511)))

(assert (= (and b!1855491 ((_ is ElementMatch!5045) (reg!5374 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855738))

(assert (= (and b!1855491 ((_ is Concat!8844) (reg!5374 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855739))

(assert (= (and b!1855491 ((_ is Star!5045) (reg!5374 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855740))

(assert (= (and b!1855491 ((_ is Union!5045) (reg!5374 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855741))

(declare-fun b!1855745 () Bool)

(declare-fun e!1185566 () Bool)

(declare-fun tp!527681 () Bool)

(declare-fun tp!527680 () Bool)

(assert (=> b!1855745 (= e!1185566 (and tp!527681 tp!527680))))

(assert (=> b!1855482 (= tp!527439 e!1185566)))

(declare-fun b!1855743 () Bool)

(declare-fun tp!527683 () Bool)

(declare-fun tp!527684 () Bool)

(assert (=> b!1855743 (= e!1185566 (and tp!527683 tp!527684))))

(declare-fun b!1855744 () Bool)

(declare-fun tp!527682 () Bool)

(assert (=> b!1855744 (= e!1185566 tp!527682)))

(declare-fun b!1855742 () Bool)

(assert (=> b!1855742 (= e!1185566 tp_is_empty!8511)))

(assert (= (and b!1855482 ((_ is ElementMatch!5045) (regOne!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855742))

(assert (= (and b!1855482 ((_ is Concat!8844) (regOne!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855743))

(assert (= (and b!1855482 ((_ is Star!5045) (regOne!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855744))

(assert (= (and b!1855482 ((_ is Union!5045) (regOne!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855745))

(declare-fun b!1855749 () Bool)

(declare-fun e!1185567 () Bool)

(declare-fun tp!527686 () Bool)

(declare-fun tp!527685 () Bool)

(assert (=> b!1855749 (= e!1185567 (and tp!527686 tp!527685))))

(assert (=> b!1855482 (= tp!527440 e!1185567)))

(declare-fun b!1855747 () Bool)

(declare-fun tp!527688 () Bool)

(declare-fun tp!527689 () Bool)

(assert (=> b!1855747 (= e!1185567 (and tp!527688 tp!527689))))

(declare-fun b!1855748 () Bool)

(declare-fun tp!527687 () Bool)

(assert (=> b!1855748 (= e!1185567 tp!527687)))

(declare-fun b!1855746 () Bool)

(assert (=> b!1855746 (= e!1185567 tp_is_empty!8511)))

(assert (= (and b!1855482 ((_ is ElementMatch!5045) (regTwo!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855746))

(assert (= (and b!1855482 ((_ is Concat!8844) (regTwo!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855747))

(assert (= (and b!1855482 ((_ is Star!5045) (regTwo!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855748))

(assert (= (and b!1855482 ((_ is Union!5045) (regTwo!10602 (regTwo!10602 (regex!3682 (h!25979 rules!865)))))) b!1855749))

(declare-fun b!1855753 () Bool)

(declare-fun e!1185568 () Bool)

(declare-fun tp!527691 () Bool)

(declare-fun tp!527690 () Bool)

(assert (=> b!1855753 (= e!1185568 (and tp!527691 tp!527690))))

(assert (=> b!1855496 (= tp!527452 e!1185568)))

(declare-fun b!1855751 () Bool)

(declare-fun tp!527693 () Bool)

(declare-fun tp!527694 () Bool)

(assert (=> b!1855751 (= e!1185568 (and tp!527693 tp!527694))))

(declare-fun b!1855752 () Bool)

(declare-fun tp!527692 () Bool)

(assert (=> b!1855752 (= e!1185568 tp!527692)))

(declare-fun b!1855750 () Bool)

(assert (=> b!1855750 (= e!1185568 tp_is_empty!8511)))

(assert (= (and b!1855496 ((_ is ElementMatch!5045) (regOne!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855750))

(assert (= (and b!1855496 ((_ is Concat!8844) (regOne!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855751))

(assert (= (and b!1855496 ((_ is Star!5045) (regOne!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855752))

(assert (= (and b!1855496 ((_ is Union!5045) (regOne!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855753))

(declare-fun b!1855757 () Bool)

(declare-fun e!1185569 () Bool)

(declare-fun tp!527696 () Bool)

(declare-fun tp!527695 () Bool)

(assert (=> b!1855757 (= e!1185569 (and tp!527696 tp!527695))))

(assert (=> b!1855496 (= tp!527451 e!1185569)))

(declare-fun b!1855755 () Bool)

(declare-fun tp!527698 () Bool)

(declare-fun tp!527699 () Bool)

(assert (=> b!1855755 (= e!1185569 (and tp!527698 tp!527699))))

(declare-fun b!1855756 () Bool)

(declare-fun tp!527697 () Bool)

(assert (=> b!1855756 (= e!1185569 tp!527697)))

(declare-fun b!1855754 () Bool)

(assert (=> b!1855754 (= e!1185569 tp_is_empty!8511)))

(assert (= (and b!1855496 ((_ is ElementMatch!5045) (regTwo!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855754))

(assert (= (and b!1855496 ((_ is Concat!8844) (regTwo!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855755))

(assert (= (and b!1855496 ((_ is Star!5045) (regTwo!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855756))

(assert (= (and b!1855496 ((_ is Union!5045) (regTwo!10603 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855757))

(declare-fun b!1855761 () Bool)

(declare-fun e!1185570 () Bool)

(declare-fun tp!527701 () Bool)

(declare-fun tp!527700 () Bool)

(assert (=> b!1855761 (= e!1185570 (and tp!527701 tp!527700))))

(assert (=> b!1855480 (= tp!527432 e!1185570)))

(declare-fun b!1855759 () Bool)

(declare-fun tp!527703 () Bool)

(declare-fun tp!527704 () Bool)

(assert (=> b!1855759 (= e!1185570 (and tp!527703 tp!527704))))

(declare-fun b!1855760 () Bool)

(declare-fun tp!527702 () Bool)

(assert (=> b!1855760 (= e!1185570 tp!527702)))

(declare-fun b!1855758 () Bool)

(assert (=> b!1855758 (= e!1185570 tp_is_empty!8511)))

(assert (= (and b!1855480 ((_ is ElementMatch!5045) (regOne!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855758))

(assert (= (and b!1855480 ((_ is Concat!8844) (regOne!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855759))

(assert (= (and b!1855480 ((_ is Star!5045) (regOne!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855760))

(assert (= (and b!1855480 ((_ is Union!5045) (regOne!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855761))

(declare-fun b!1855765 () Bool)

(declare-fun e!1185571 () Bool)

(declare-fun tp!527706 () Bool)

(declare-fun tp!527705 () Bool)

(assert (=> b!1855765 (= e!1185571 (and tp!527706 tp!527705))))

(assert (=> b!1855480 (= tp!527431 e!1185571)))

(declare-fun b!1855763 () Bool)

(declare-fun tp!527708 () Bool)

(declare-fun tp!527709 () Bool)

(assert (=> b!1855763 (= e!1185571 (and tp!527708 tp!527709))))

(declare-fun b!1855764 () Bool)

(declare-fun tp!527707 () Bool)

(assert (=> b!1855764 (= e!1185571 tp!527707)))

(declare-fun b!1855762 () Bool)

(assert (=> b!1855762 (= e!1185571 tp_is_empty!8511)))

(assert (= (and b!1855480 ((_ is ElementMatch!5045) (regTwo!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855762))

(assert (= (and b!1855480 ((_ is Concat!8844) (regTwo!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855763))

(assert (= (and b!1855480 ((_ is Star!5045) (regTwo!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855764))

(assert (= (and b!1855480 ((_ is Union!5045) (regTwo!10603 (regOne!10602 (regex!3682 (h!25979 rules!865)))))) b!1855765))

(declare-fun b!1855768 () Bool)

(declare-fun b_free!51951 () Bool)

(declare-fun b_next!52655 () Bool)

(assert (=> b!1855768 (= b_free!51951 (not b_next!52655))))

(declare-fun tp!527711 () Bool)

(declare-fun b_and!144209 () Bool)

(assert (=> b!1855768 (= tp!527711 b_and!144209)))

(declare-fun b_free!51953 () Bool)

(declare-fun b_next!52657 () Bool)

(assert (=> b!1855768 (= b_free!51953 (not b_next!52657))))

(declare-fun tp!527712 () Bool)

(declare-fun b_and!144211 () Bool)

(assert (=> b!1855768 (= tp!527712 b_and!144211)))

(declare-fun e!1185574 () Bool)

(assert (=> b!1855768 (= e!1185574 (and tp!527711 tp!527712))))

(declare-fun tp!527710 () Bool)

(declare-fun e!1185575 () Bool)

(declare-fun b!1855767 () Bool)

(assert (=> b!1855767 (= e!1185575 (and tp!527710 (inv!26973 (tag!4096 (h!25979 (t!172517 (t!172517 (t!172517 rules!865)))))) (inv!26975 (transformation!3682 (h!25979 (t!172517 (t!172517 (t!172517 rules!865)))))) e!1185574))))

(declare-fun b!1855766 () Bool)

(declare-fun e!1185572 () Bool)

(declare-fun tp!527713 () Bool)

(assert (=> b!1855766 (= e!1185572 (and e!1185575 tp!527713))))

(assert (=> b!1855474 (= tp!527430 e!1185572)))

(assert (= b!1855767 b!1855768))

(assert (= b!1855766 b!1855767))

(assert (= (and b!1855474 ((_ is Cons!20578) (t!172517 (t!172517 (t!172517 rules!865))))) b!1855766))

(declare-fun m!2281259 () Bool)

(assert (=> b!1855767 m!2281259))

(declare-fun m!2281261 () Bool)

(assert (=> b!1855767 m!2281261))

(declare-fun b!1855772 () Bool)

(declare-fun e!1185576 () Bool)

(declare-fun tp!527715 () Bool)

(declare-fun tp!527714 () Bool)

(assert (=> b!1855772 (= e!1185576 (and tp!527715 tp!527714))))

(assert (=> b!1855495 (= tp!527453 e!1185576)))

(declare-fun b!1855770 () Bool)

(declare-fun tp!527717 () Bool)

(declare-fun tp!527718 () Bool)

(assert (=> b!1855770 (= e!1185576 (and tp!527717 tp!527718))))

(declare-fun b!1855771 () Bool)

(declare-fun tp!527716 () Bool)

(assert (=> b!1855771 (= e!1185576 tp!527716)))

(declare-fun b!1855769 () Bool)

(assert (=> b!1855769 (= e!1185576 tp_is_empty!8511)))

(assert (= (and b!1855495 ((_ is ElementMatch!5045) (reg!5374 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855769))

(assert (= (and b!1855495 ((_ is Concat!8844) (reg!5374 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855770))

(assert (= (and b!1855495 ((_ is Star!5045) (reg!5374 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855771))

(assert (= (and b!1855495 ((_ is Union!5045) (reg!5374 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855772))

(declare-fun b!1855776 () Bool)

(declare-fun e!1185577 () Bool)

(declare-fun tp!527720 () Bool)

(declare-fun tp!527719 () Bool)

(assert (=> b!1855776 (= e!1185577 (and tp!527720 tp!527719))))

(assert (=> b!1855486 (= tp!527444 e!1185577)))

(declare-fun b!1855774 () Bool)

(declare-fun tp!527722 () Bool)

(declare-fun tp!527723 () Bool)

(assert (=> b!1855774 (= e!1185577 (and tp!527722 tp!527723))))

(declare-fun b!1855775 () Bool)

(declare-fun tp!527721 () Bool)

(assert (=> b!1855775 (= e!1185577 tp!527721)))

(declare-fun b!1855773 () Bool)

(assert (=> b!1855773 (= e!1185577 tp_is_empty!8511)))

(assert (= (and b!1855486 ((_ is ElementMatch!5045) (regOne!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855773))

(assert (= (and b!1855486 ((_ is Concat!8844) (regOne!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855774))

(assert (= (and b!1855486 ((_ is Star!5045) (regOne!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855775))

(assert (= (and b!1855486 ((_ is Union!5045) (regOne!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855776))

(declare-fun b!1855780 () Bool)

(declare-fun e!1185578 () Bool)

(declare-fun tp!527725 () Bool)

(declare-fun tp!527724 () Bool)

(assert (=> b!1855780 (= e!1185578 (and tp!527725 tp!527724))))

(assert (=> b!1855486 (= tp!527445 e!1185578)))

(declare-fun b!1855778 () Bool)

(declare-fun tp!527727 () Bool)

(declare-fun tp!527728 () Bool)

(assert (=> b!1855778 (= e!1185578 (and tp!527727 tp!527728))))

(declare-fun b!1855779 () Bool)

(declare-fun tp!527726 () Bool)

(assert (=> b!1855779 (= e!1185578 tp!527726)))

(declare-fun b!1855777 () Bool)

(assert (=> b!1855777 (= e!1185578 tp_is_empty!8511)))

(assert (= (and b!1855486 ((_ is ElementMatch!5045) (regTwo!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855777))

(assert (= (and b!1855486 ((_ is Concat!8844) (regTwo!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855778))

(assert (= (and b!1855486 ((_ is Star!5045) (regTwo!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855779))

(assert (= (and b!1855486 ((_ is Union!5045) (regTwo!10602 (regex!3682 (h!25979 (t!172517 rules!865)))))) b!1855780))

(declare-fun b!1855784 () Bool)

(declare-fun e!1185579 () Bool)

(declare-fun tp!527730 () Bool)

(declare-fun tp!527729 () Bool)

(assert (=> b!1855784 (= e!1185579 (and tp!527730 tp!527729))))

(assert (=> b!1855500 (= tp!527457 e!1185579)))

(declare-fun b!1855782 () Bool)

(declare-fun tp!527732 () Bool)

(declare-fun tp!527733 () Bool)

(assert (=> b!1855782 (= e!1185579 (and tp!527732 tp!527733))))

(declare-fun b!1855783 () Bool)

(declare-fun tp!527731 () Bool)

(assert (=> b!1855783 (= e!1185579 tp!527731)))

(declare-fun b!1855781 () Bool)

(assert (=> b!1855781 (= e!1185579 tp_is_empty!8511)))

(assert (= (and b!1855500 ((_ is ElementMatch!5045) (regOne!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855781))

(assert (= (and b!1855500 ((_ is Concat!8844) (regOne!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855782))

(assert (= (and b!1855500 ((_ is Star!5045) (regOne!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855783))

(assert (= (and b!1855500 ((_ is Union!5045) (regOne!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855784))

(declare-fun b!1855788 () Bool)

(declare-fun e!1185580 () Bool)

(declare-fun tp!527735 () Bool)

(declare-fun tp!527734 () Bool)

(assert (=> b!1855788 (= e!1185580 (and tp!527735 tp!527734))))

(assert (=> b!1855500 (= tp!527456 e!1185580)))

(declare-fun b!1855786 () Bool)

(declare-fun tp!527737 () Bool)

(declare-fun tp!527738 () Bool)

(assert (=> b!1855786 (= e!1185580 (and tp!527737 tp!527738))))

(declare-fun b!1855787 () Bool)

(declare-fun tp!527736 () Bool)

(assert (=> b!1855787 (= e!1185580 tp!527736)))

(declare-fun b!1855785 () Bool)

(assert (=> b!1855785 (= e!1185580 tp_is_empty!8511)))

(assert (= (and b!1855500 ((_ is ElementMatch!5045) (regTwo!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855785))

(assert (= (and b!1855500 ((_ is Concat!8844) (regTwo!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855786))

(assert (= (and b!1855500 ((_ is Star!5045) (regTwo!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855787))

(assert (= (and b!1855500 ((_ is Union!5045) (regTwo!10603 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855788))

(declare-fun b!1855792 () Bool)

(declare-fun e!1185581 () Bool)

(declare-fun tp!527740 () Bool)

(declare-fun tp!527739 () Bool)

(assert (=> b!1855792 (= e!1185581 (and tp!527740 tp!527739))))

(assert (=> b!1855499 (= tp!527458 e!1185581)))

(declare-fun b!1855790 () Bool)

(declare-fun tp!527742 () Bool)

(declare-fun tp!527743 () Bool)

(assert (=> b!1855790 (= e!1185581 (and tp!527742 tp!527743))))

(declare-fun b!1855791 () Bool)

(declare-fun tp!527741 () Bool)

(assert (=> b!1855791 (= e!1185581 tp!527741)))

(declare-fun b!1855789 () Bool)

(assert (=> b!1855789 (= e!1185581 tp_is_empty!8511)))

(assert (= (and b!1855499 ((_ is ElementMatch!5045) (reg!5374 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855789))

(assert (= (and b!1855499 ((_ is Concat!8844) (reg!5374 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855790))

(assert (= (and b!1855499 ((_ is Star!5045) (reg!5374 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855791))

(assert (= (and b!1855499 ((_ is Union!5045) (reg!5374 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855792))

(declare-fun b!1855796 () Bool)

(declare-fun e!1185582 () Bool)

(declare-fun tp!527745 () Bool)

(declare-fun tp!527744 () Bool)

(assert (=> b!1855796 (= e!1185582 (and tp!527745 tp!527744))))

(assert (=> b!1855490 (= tp!527449 e!1185582)))

(declare-fun b!1855794 () Bool)

(declare-fun tp!527747 () Bool)

(declare-fun tp!527748 () Bool)

(assert (=> b!1855794 (= e!1185582 (and tp!527747 tp!527748))))

(declare-fun b!1855795 () Bool)

(declare-fun tp!527746 () Bool)

(assert (=> b!1855795 (= e!1185582 tp!527746)))

(declare-fun b!1855793 () Bool)

(assert (=> b!1855793 (= e!1185582 tp_is_empty!8511)))

(assert (= (and b!1855490 ((_ is ElementMatch!5045) (regOne!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855793))

(assert (= (and b!1855490 ((_ is Concat!8844) (regOne!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855794))

(assert (= (and b!1855490 ((_ is Star!5045) (regOne!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855795))

(assert (= (and b!1855490 ((_ is Union!5045) (regOne!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855796))

(declare-fun b!1855800 () Bool)

(declare-fun e!1185583 () Bool)

(declare-fun tp!527750 () Bool)

(declare-fun tp!527749 () Bool)

(assert (=> b!1855800 (= e!1185583 (and tp!527750 tp!527749))))

(assert (=> b!1855490 (= tp!527450 e!1185583)))

(declare-fun b!1855798 () Bool)

(declare-fun tp!527752 () Bool)

(declare-fun tp!527753 () Bool)

(assert (=> b!1855798 (= e!1185583 (and tp!527752 tp!527753))))

(declare-fun b!1855799 () Bool)

(declare-fun tp!527751 () Bool)

(assert (=> b!1855799 (= e!1185583 tp!527751)))

(declare-fun b!1855797 () Bool)

(assert (=> b!1855797 (= e!1185583 tp_is_empty!8511)))

(assert (= (and b!1855490 ((_ is ElementMatch!5045) (regTwo!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855797))

(assert (= (and b!1855490 ((_ is Concat!8844) (regTwo!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855798))

(assert (= (and b!1855490 ((_ is Star!5045) (regTwo!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855799))

(assert (= (and b!1855490 ((_ is Union!5045) (regTwo!10602 (regOne!10603 (regex!3682 (h!25979 rules!865)))))) b!1855800))

(declare-fun b!1855804 () Bool)

(declare-fun e!1185584 () Bool)

(declare-fun tp!527755 () Bool)

(declare-fun tp!527754 () Bool)

(assert (=> b!1855804 (= e!1185584 (and tp!527755 tp!527754))))

(assert (=> b!1855494 (= tp!527454 e!1185584)))

(declare-fun b!1855802 () Bool)

(declare-fun tp!527757 () Bool)

(declare-fun tp!527758 () Bool)

(assert (=> b!1855802 (= e!1185584 (and tp!527757 tp!527758))))

(declare-fun b!1855803 () Bool)

(declare-fun tp!527756 () Bool)

(assert (=> b!1855803 (= e!1185584 tp!527756)))

(declare-fun b!1855801 () Bool)

(assert (=> b!1855801 (= e!1185584 tp_is_empty!8511)))

(assert (= (and b!1855494 ((_ is ElementMatch!5045) (regOne!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855801))

(assert (= (and b!1855494 ((_ is Concat!8844) (regOne!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855802))

(assert (= (and b!1855494 ((_ is Star!5045) (regOne!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855803))

(assert (= (and b!1855494 ((_ is Union!5045) (regOne!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855804))

(declare-fun b!1855808 () Bool)

(declare-fun e!1185585 () Bool)

(declare-fun tp!527760 () Bool)

(declare-fun tp!527759 () Bool)

(assert (=> b!1855808 (= e!1185585 (and tp!527760 tp!527759))))

(assert (=> b!1855494 (= tp!527455 e!1185585)))

(declare-fun b!1855806 () Bool)

(declare-fun tp!527762 () Bool)

(declare-fun tp!527763 () Bool)

(assert (=> b!1855806 (= e!1185585 (and tp!527762 tp!527763))))

(declare-fun b!1855807 () Bool)

(declare-fun tp!527761 () Bool)

(assert (=> b!1855807 (= e!1185585 tp!527761)))

(declare-fun b!1855805 () Bool)

(assert (=> b!1855805 (= e!1185585 tp_is_empty!8511)))

(assert (= (and b!1855494 ((_ is ElementMatch!5045) (regTwo!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855805))

(assert (= (and b!1855494 ((_ is Concat!8844) (regTwo!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855806))

(assert (= (and b!1855494 ((_ is Star!5045) (regTwo!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855807))

(assert (= (and b!1855494 ((_ is Union!5045) (regTwo!10602 (regTwo!10603 (regex!3682 (h!25979 rules!865)))))) b!1855808))

(declare-fun b!1855812 () Bool)

(declare-fun e!1185586 () Bool)

(declare-fun tp!527765 () Bool)

(declare-fun tp!527764 () Bool)

(assert (=> b!1855812 (= e!1185586 (and tp!527765 tp!527764))))

(assert (=> b!1855475 (= tp!527427 e!1185586)))

(declare-fun b!1855810 () Bool)

(declare-fun tp!527767 () Bool)

(declare-fun tp!527768 () Bool)

(assert (=> b!1855810 (= e!1185586 (and tp!527767 tp!527768))))

(declare-fun b!1855811 () Bool)

(declare-fun tp!527766 () Bool)

(assert (=> b!1855811 (= e!1185586 tp!527766)))

(declare-fun b!1855809 () Bool)

(assert (=> b!1855809 (= e!1185586 tp_is_empty!8511)))

(assert (= (and b!1855475 ((_ is ElementMatch!5045) (regex!3682 (h!25979 (t!172517 (t!172517 rules!865)))))) b!1855809))

(assert (= (and b!1855475 ((_ is Concat!8844) (regex!3682 (h!25979 (t!172517 (t!172517 rules!865)))))) b!1855810))

(assert (= (and b!1855475 ((_ is Star!5045) (regex!3682 (h!25979 (t!172517 (t!172517 rules!865)))))) b!1855811))

(assert (= (and b!1855475 ((_ is Union!5045) (regex!3682 (h!25979 (t!172517 (t!172517 rules!865)))))) b!1855812))

(declare-fun b!1855816 () Bool)

(declare-fun e!1185587 () Bool)

(declare-fun tp!527770 () Bool)

(declare-fun tp!527769 () Bool)

(assert (=> b!1855816 (= e!1185587 (and tp!527770 tp!527769))))

(assert (=> b!1855498 (= tp!527459 e!1185587)))

(declare-fun b!1855814 () Bool)

(declare-fun tp!527772 () Bool)

(declare-fun tp!527773 () Bool)

(assert (=> b!1855814 (= e!1185587 (and tp!527772 tp!527773))))

(declare-fun b!1855815 () Bool)

(declare-fun tp!527771 () Bool)

(assert (=> b!1855815 (= e!1185587 tp!527771)))

(declare-fun b!1855813 () Bool)

(assert (=> b!1855813 (= e!1185587 tp_is_empty!8511)))

(assert (= (and b!1855498 ((_ is ElementMatch!5045) (regOne!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855813))

(assert (= (and b!1855498 ((_ is Concat!8844) (regOne!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855814))

(assert (= (and b!1855498 ((_ is Star!5045) (regOne!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855815))

(assert (= (and b!1855498 ((_ is Union!5045) (regOne!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855816))

(declare-fun b!1855820 () Bool)

(declare-fun e!1185588 () Bool)

(declare-fun tp!527775 () Bool)

(declare-fun tp!527774 () Bool)

(assert (=> b!1855820 (= e!1185588 (and tp!527775 tp!527774))))

(assert (=> b!1855498 (= tp!527460 e!1185588)))

(declare-fun b!1855818 () Bool)

(declare-fun tp!527777 () Bool)

(declare-fun tp!527778 () Bool)

(assert (=> b!1855818 (= e!1185588 (and tp!527777 tp!527778))))

(declare-fun b!1855819 () Bool)

(declare-fun tp!527776 () Bool)

(assert (=> b!1855819 (= e!1185588 tp!527776)))

(declare-fun b!1855817 () Bool)

(assert (=> b!1855817 (= e!1185588 tp_is_empty!8511)))

(assert (= (and b!1855498 ((_ is ElementMatch!5045) (regTwo!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855817))

(assert (= (and b!1855498 ((_ is Concat!8844) (regTwo!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855818))

(assert (= (and b!1855498 ((_ is Star!5045) (regTwo!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855819))

(assert (= (and b!1855498 ((_ is Union!5045) (regTwo!10602 (reg!5374 (regex!3682 (h!25979 rules!865)))))) b!1855820))

(declare-fun b_lambda!61503 () Bool)

(assert (= b_lambda!61501 (or d!566712 b_lambda!61503)))

(declare-fun bs!410641 () Bool)

(declare-fun d!566802 () Bool)

(assert (= bs!410641 (and d!566802 d!566712)))

(assert (=> bs!410641 (= (dynLambda!10196 lambda!73318 (h!25979 rules!865)) (ruleValid!1143 Lexer!3302 (h!25979 rules!865)))))

(assert (=> bs!410641 m!2281219))

(assert (=> b!1855671 d!566802))

(check-sat (not b_next!52655) (not b!1855753) (not b!1855740) (not d!566784) (not b!1855733) (not b!1855712) (not b!1855760) (not b!1855749) (not b!1855751) (not b!1855674) b_and!144201 (not b!1855816) (not b!1855705) (not b!1855713) (not b_next!52633) (not b!1855755) (not b!1855802) (not b!1855799) (not b!1855790) (not b!1855818) (not d!566780) b_and!144203 (not b!1855737) (not b!1855693) (not b_next!52631) (not b!1855724) (not b!1855699) (not b!1855763) (not b!1855782) (not b!1855708) (not b!1855788) (not b!1855808) (not b_next!52641) (not b!1855786) (not b!1855752) (not d!566800) (not b_next!52649) (not b!1855778) (not b!1855811) (not b!1855692) b_and!144195 (not b!1855787) (not b!1855697) (not b!1855721) (not b!1855729) b_and!144211 (not b!1855711) (not d!566796) (not b!1855806) (not b!1855716) (not b!1855756) (not b!1855803) (not b!1855766) (not b!1855672) (not b!1855691) (not b_lambda!61503) (not b!1855767) (not d!566776) (not b!1855715) (not b!1855772) (not d!566782) (not b_next!52647) (not b!1855748) (not b!1855736) (not b!1855784) (not b!1855812) (not b!1855798) (not b!1855709) (not b!1855780) b_and!144193 (not b!1855696) (not b!1855757) (not b!1855820) b_and!144209 (not b!1855707) (not bs!410641) (not b!1855720) (not b!1855703) (not b!1855792) (not b!1855741) b_and!144185 (not b!1855759) (not b!1855747) (not b!1855717) (not b!1855700) (not b!1855743) (not b!1855771) (not b!1855795) (not b!1855779) (not b!1855775) (not b!1855739) (not b!1855745) (not b!1855673) b_and!144187 (not d!566786) (not b!1855665) (not b!1855666) (not b!1855732) (not b!1855725) (not b!1855800) (not b!1855819) (not b!1855815) (not b!1855791) (not b_next!52639) (not b!1855719) (not b!1855761) (not b!1855814) (not b!1855695) (not b!1855765) (not b!1855701) (not b!1855794) (not b!1855728) (not b!1855796) (not b!1855727) (not b!1855744) (not b!1855807) (not b!1855764) (not b!1855804) (not b!1855774) (not b!1855680) tp_is_empty!8511 (not b!1855723) (not b!1855783) (not b!1855735) (not b!1855770) (not d!566790) (not b_next!52657) (not b!1855704) (not b!1855731) (not b!1855776) (not b!1855810))
(check-sat (not b_next!52655) b_and!144203 (not b_next!52631) b_and!144195 b_and!144211 (not b_next!52647) b_and!144193 b_and!144209 b_and!144185 b_and!144187 (not b_next!52639) (not b_next!52657) b_and!144201 (not b_next!52633) (not b_next!52641) (not b_next!52649))
