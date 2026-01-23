; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74428 () Bool)

(assert start!74428)

(declare-fun b!838731 () Bool)

(declare-fun b_free!24845 () Bool)

(declare-fun b_next!24909 () Bool)

(assert (=> b!838731 (= b_free!24845 (not b_next!24909))))

(declare-fun tp!263466 () Bool)

(declare-fun b_and!72349 () Bool)

(assert (=> b!838731 (= tp!263466 b_and!72349)))

(declare-fun b_free!24847 () Bool)

(declare-fun b_next!24911 () Bool)

(assert (=> b!838731 (= b_free!24847 (not b_next!24911))))

(declare-fun tp!263473 () Bool)

(declare-fun b_and!72351 () Bool)

(assert (=> b!838731 (= tp!263473 b_and!72351)))

(declare-fun b!838724 () Bool)

(declare-fun b_free!24849 () Bool)

(declare-fun b_next!24913 () Bool)

(assert (=> b!838724 (= b_free!24849 (not b_next!24913))))

(declare-fun tp!263469 () Bool)

(declare-fun b_and!72353 () Bool)

(assert (=> b!838724 (= tp!263469 b_and!72353)))

(declare-fun b_free!24851 () Bool)

(declare-fun b_next!24915 () Bool)

(assert (=> b!838724 (= b_free!24851 (not b_next!24915))))

(declare-fun tp!263465 () Bool)

(declare-fun b_and!72355 () Bool)

(assert (=> b!838724 (= tp!263465 b_and!72355)))

(declare-fun b!838738 () Bool)

(declare-fun b_free!24853 () Bool)

(declare-fun b_next!24917 () Bool)

(assert (=> b!838738 (= b_free!24853 (not b_next!24917))))

(declare-fun tp!263471 () Bool)

(declare-fun b_and!72357 () Bool)

(assert (=> b!838738 (= tp!263471 b_and!72357)))

(declare-fun b_free!24855 () Bool)

(declare-fun b_next!24919 () Bool)

(assert (=> b!838738 (= b_free!24855 (not b_next!24919))))

(declare-fun tp!263467 () Bool)

(declare-fun b_and!72359 () Bool)

(assert (=> b!838738 (= tp!263467 b_and!72359)))

(declare-fun e!551413 () Bool)

(assert (=> b!838724 (= e!551413 (and tp!263469 tp!263465))))

(declare-fun b!838725 () Bool)

(declare-fun res!383363 () Bool)

(declare-fun e!551422 () Bool)

(assert (=> b!838725 (=> res!383363 e!551422)))

(declare-datatypes ((List!8958 0))(
  ( (Nil!8942) (Cons!8942 (h!14343 (_ BitVec 16)) (t!93296 List!8958)) )
))
(declare-datatypes ((TokenValue!1739 0))(
  ( (FloatLiteralValue!3478 (text!12618 List!8958)) (TokenValueExt!1738 (__x!7209 Int)) (Broken!8695 (value!54355 List!8958)) (Object!1754) (End!1739) (Def!1739) (Underscore!1739) (Match!1739) (Else!1739) (Error!1739) (Case!1739) (If!1739) (Extends!1739) (Abstract!1739) (Class!1739) (Val!1739) (DelimiterValue!3478 (del!1799 List!8958)) (KeywordValue!1745 (value!54356 List!8958)) (CommentValue!3478 (value!54357 List!8958)) (WhitespaceValue!3478 (value!54358 List!8958)) (IndentationValue!1739 (value!54359 List!8958)) (String!10594) (Int32!1739) (Broken!8696 (value!54360 List!8958)) (Boolean!1740) (Unit!13409) (OperatorValue!1742 (op!1799 List!8958)) (IdentifierValue!3478 (value!54361 List!8958)) (IdentifierValue!3479 (value!54362 List!8958)) (WhitespaceValue!3479 (value!54363 List!8958)) (True!3478) (False!3478) (Broken!8697 (value!54364 List!8958)) (Broken!8698 (value!54365 List!8958)) (True!3479) (RightBrace!1739) (RightBracket!1739) (Colon!1739) (Null!1739) (Comma!1739) (LeftBracket!1739) (False!3479) (LeftBrace!1739) (ImaginaryLiteralValue!1739 (text!12619 List!8958)) (StringLiteralValue!5217 (value!54366 List!8958)) (EOFValue!1739 (value!54367 List!8958)) (IdentValue!1739 (value!54368 List!8958)) (DelimiterValue!3479 (value!54369 List!8958)) (DedentValue!1739 (value!54370 List!8958)) (NewLineValue!1739 (value!54371 List!8958)) (IntegerValue!5217 (value!54372 (_ BitVec 32)) (text!12620 List!8958)) (IntegerValue!5218 (value!54373 Int) (text!12621 List!8958)) (Times!1739) (Or!1739) (Equal!1739) (Minus!1739) (Broken!8699 (value!54374 List!8958)) (And!1739) (Div!1739) (LessEqual!1739) (Mod!1739) (Concat!3845) (Not!1739) (Plus!1739) (SpaceValue!1739 (value!54375 List!8958)) (IntegerValue!5219 (value!54376 Int) (text!12622 List!8958)) (StringLiteralValue!5218 (text!12623 List!8958)) (FloatLiteralValue!3479 (text!12624 List!8958)) (BytesLiteralValue!1739 (value!54377 List!8958)) (CommentValue!3479 (value!54378 List!8958)) (StringLiteralValue!5219 (value!54379 List!8958)) (ErrorTokenValue!1739 (msg!1800 List!8958)) )
))
(declare-datatypes ((C!4782 0))(
  ( (C!4783 (val!2639 Int)) )
))
(declare-datatypes ((Regex!2106 0))(
  ( (ElementMatch!2106 (c!136947 C!4782)) (Concat!3846 (regOne!4724 Regex!2106) (regTwo!4724 Regex!2106)) (EmptyExpr!2106) (Star!2106 (reg!2435 Regex!2106)) (EmptyLang!2106) (Union!2106 (regOne!4725 Regex!2106) (regTwo!4725 Regex!2106)) )
))
(declare-datatypes ((String!10595 0))(
  ( (String!10596 (value!54380 String)) )
))
(declare-datatypes ((List!8959 0))(
  ( (Nil!8943) (Cons!8943 (h!14344 C!4782) (t!93297 List!8959)) )
))
(declare-datatypes ((IArray!5941 0))(
  ( (IArray!5942 (innerList!3028 List!8959)) )
))
(declare-datatypes ((Conc!2968 0))(
  ( (Node!2968 (left!6646 Conc!2968) (right!6976 Conc!2968) (csize!6166 Int) (cheight!3179 Int)) (Leaf!4393 (xs!5657 IArray!5941) (csize!6167 Int)) (Empty!2968) )
))
(declare-datatypes ((BalanceConc!5950 0))(
  ( (BalanceConc!5951 (c!136948 Conc!2968)) )
))
(declare-datatypes ((TokenValueInjection!3178 0))(
  ( (TokenValueInjection!3179 (toValue!2690 Int) (toChars!2549 Int)) )
))
(declare-datatypes ((Rule!3146 0))(
  ( (Rule!3147 (regex!1673 Regex!2106) (tag!1935 String!10595) (isSeparator!1673 Bool) (transformation!1673 TokenValueInjection!3178)) )
))
(declare-datatypes ((Token!3012 0))(
  ( (Token!3013 (value!54381 TokenValue!1739) (rule!3096 Rule!3146) (size!7504 Int) (originalCharacters!2229 List!8959)) )
))
(declare-fun separatorToken!297 () Token!3012)

(declare-datatypes ((List!8960 0))(
  ( (Nil!8944) (Cons!8944 (h!14345 Token!3012) (t!93298 List!8960)) )
))
(declare-fun lt!318111 () List!8960)

(declare-datatypes ((LexerInterface!1475 0))(
  ( (LexerInterfaceExt!1472 (__x!7210 Int)) (Lexer!1473) )
))
(declare-fun thiss!20117 () LexerInterface!1475)

(declare-fun l!5107 () List!8960)

(declare-fun withSeparatorTokenList!5 (LexerInterface!1475 List!8960 Token!3012) List!8960)

(declare-fun tail!991 (List!8960) List!8960)

(assert (=> b!838725 (= res!383363 (not (= (t!93298 (t!93298 lt!318111)) (withSeparatorTokenList!5 thiss!20117 (tail!991 l!5107) separatorToken!297))))))

(declare-fun b!838726 () Bool)

(declare-fun res!383360 () Bool)

(declare-fun e!551425 () Bool)

(assert (=> b!838726 (=> (not res!383360) (not e!551425))))

(assert (=> b!838726 (= res!383360 (isSeparator!1673 (rule!3096 separatorToken!297)))))

(declare-fun b!838728 () Bool)

(declare-fun tp!263463 () Bool)

(declare-fun e!551416 () Bool)

(declare-fun e!551424 () Bool)

(declare-fun inv!21 (TokenValue!1739) Bool)

(assert (=> b!838728 (= e!551424 (and (inv!21 (value!54381 (h!14345 l!5107))) e!551416 tp!263463))))

(declare-fun e!551418 () Bool)

(declare-fun b!838729 () Bool)

(declare-fun tp!263474 () Bool)

(declare-fun inv!11420 (Token!3012) Bool)

(assert (=> b!838729 (= e!551418 (and (inv!11420 (h!14345 l!5107)) e!551424 tp!263474))))

(declare-fun b!838730 () Bool)

(declare-fun e!551426 () Bool)

(declare-fun e!551411 () Bool)

(declare-fun tp!263470 () Bool)

(assert (=> b!838730 (= e!551426 (and e!551411 tp!263470))))

(declare-fun e!551419 () Bool)

(assert (=> b!838731 (= e!551419 (and tp!263466 tp!263473))))

(declare-fun b!838732 () Bool)

(declare-fun e!551417 () Bool)

(declare-fun e!551420 () Bool)

(declare-fun tp!263468 () Bool)

(declare-fun inv!11417 (String!10595) Bool)

(declare-fun inv!11421 (TokenValueInjection!3178) Bool)

(assert (=> b!838732 (= e!551417 (and tp!263468 (inv!11417 (tag!1935 (rule!3096 separatorToken!297))) (inv!11421 (transformation!1673 (rule!3096 separatorToken!297))) e!551420))))

(declare-fun b!838733 () Bool)

(declare-fun res!383365 () Bool)

(assert (=> b!838733 (=> (not res!383365) (not e!551425))))

(declare-datatypes ((List!8961 0))(
  ( (Nil!8945) (Cons!8945 (h!14346 Rule!3146) (t!93299 List!8961)) )
))
(declare-fun rules!2621 () List!8961)

(declare-fun rulesProduceIndividualToken!539 (LexerInterface!1475 List!8961 Token!3012) Bool)

(assert (=> b!838733 (= res!383365 (rulesProduceIndividualToken!539 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!838734 () Bool)

(declare-fun res!383362 () Bool)

(assert (=> b!838734 (=> (not res!383362) (not e!551425))))

(declare-fun rulesInvariant!1351 (LexerInterface!1475 List!8961) Bool)

(assert (=> b!838734 (= res!383362 (rulesInvariant!1351 thiss!20117 rules!2621))))

(declare-fun res!383364 () Bool)

(assert (=> start!74428 (=> (not res!383364) (not e!551425))))

(assert (=> start!74428 (= res!383364 (is-Lexer!1473 thiss!20117))))

(assert (=> start!74428 e!551425))

(assert (=> start!74428 true))

(assert (=> start!74428 e!551426))

(assert (=> start!74428 e!551418))

(declare-fun e!551415 () Bool)

(assert (=> start!74428 (and (inv!11420 separatorToken!297) e!551415)))

(declare-fun b!838727 () Bool)

(declare-fun tp!263464 () Bool)

(assert (=> b!838727 (= e!551411 (and tp!263464 (inv!11417 (tag!1935 (h!14346 rules!2621))) (inv!11421 (transformation!1673 (h!14346 rules!2621))) e!551419))))

(declare-fun b!838735 () Bool)

(declare-fun res!383368 () Bool)

(assert (=> b!838735 (=> (not res!383368) (not e!551425))))

(declare-fun lambda!24895 () Int)

(declare-fun forall!2088 (List!8960 Int) Bool)

(assert (=> b!838735 (= res!383368 (forall!2088 l!5107 lambda!24895))))

(declare-fun b!838736 () Bool)

(declare-fun tp!263475 () Bool)

(assert (=> b!838736 (= e!551415 (and (inv!21 (value!54381 separatorToken!297)) e!551417 tp!263475))))

(declare-fun b!838737 () Bool)

(declare-fun tp!263472 () Bool)

(assert (=> b!838737 (= e!551416 (and tp!263472 (inv!11417 (tag!1935 (rule!3096 (h!14345 l!5107)))) (inv!11421 (transformation!1673 (rule!3096 (h!14345 l!5107)))) e!551413))))

(assert (=> b!838738 (= e!551420 (and tp!263471 tp!263467))))

(declare-fun b!838739 () Bool)

(declare-fun res!383367 () Bool)

(assert (=> b!838739 (=> (not res!383367) (not e!551425))))

(declare-fun rulesProduceEachTokenIndividuallyList!363 (LexerInterface!1475 List!8961 List!8960) Bool)

(assert (=> b!838739 (= res!383367 (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 l!5107))))

(declare-fun b!838740 () Bool)

(assert (=> b!838740 (= e!551425 (not e!551422))))

(declare-fun res!383361 () Bool)

(assert (=> b!838740 (=> res!383361 e!551422)))

(assert (=> b!838740 (= res!383361 (or (not (is-Cons!8944 lt!318111)) (not (is-Cons!8944 (t!93298 lt!318111)))))))

(assert (=> b!838740 (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 lt!318111)))

(assert (=> b!838740 (= lt!318111 (withSeparatorTokenList!5 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13410 0))(
  ( (Unit!13411) )
))
(declare-fun lt!318110 () Unit!13410)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!5 (LexerInterface!1475 List!8961 List!8960 Token!3012) Unit!13410)

(assert (=> b!838740 (= lt!318110 (withSeparatorTokenListPreservesRulesProduceTokens!5 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!838741 () Bool)

(declare-fun res!383359 () Bool)

(assert (=> b!838741 (=> (not res!383359) (not e!551425))))

(declare-fun isEmpty!5282 (List!8961) Bool)

(assert (=> b!838741 (= res!383359 (not (isEmpty!5282 rules!2621)))))

(declare-fun b!838742 () Bool)

(assert (=> b!838742 (= e!551422 (not (= l!5107 Nil!8944)))))

(declare-fun b!838743 () Bool)

(declare-fun res!383366 () Bool)

(assert (=> b!838743 (=> (not res!383366) (not e!551425))))

(declare-fun sepAndNonSepRulesDisjointChars!473 (List!8961 List!8961) Bool)

(assert (=> b!838743 (= res!383366 (sepAndNonSepRulesDisjointChars!473 rules!2621 rules!2621))))

(assert (= (and start!74428 res!383364) b!838741))

(assert (= (and b!838741 res!383359) b!838734))

(assert (= (and b!838734 res!383362) b!838739))

(assert (= (and b!838739 res!383367) b!838733))

(assert (= (and b!838733 res!383365) b!838726))

(assert (= (and b!838726 res!383360) b!838735))

(assert (= (and b!838735 res!383368) b!838743))

(assert (= (and b!838743 res!383366) b!838740))

(assert (= (and b!838740 (not res!383361)) b!838725))

(assert (= (and b!838725 (not res!383363)) b!838742))

(assert (= b!838727 b!838731))

(assert (= b!838730 b!838727))

(assert (= (and start!74428 (is-Cons!8945 rules!2621)) b!838730))

(assert (= b!838737 b!838724))

(assert (= b!838728 b!838737))

(assert (= b!838729 b!838728))

(assert (= (and start!74428 (is-Cons!8944 l!5107)) b!838729))

(assert (= b!838732 b!838738))

(assert (= b!838736 b!838732))

(assert (= start!74428 b!838736))

(declare-fun m!1071705 () Bool)

(assert (=> b!838732 m!1071705))

(declare-fun m!1071707 () Bool)

(assert (=> b!838732 m!1071707))

(declare-fun m!1071709 () Bool)

(assert (=> b!838737 m!1071709))

(declare-fun m!1071711 () Bool)

(assert (=> b!838737 m!1071711))

(declare-fun m!1071713 () Bool)

(assert (=> b!838743 m!1071713))

(declare-fun m!1071715 () Bool)

(assert (=> b!838734 m!1071715))

(declare-fun m!1071717 () Bool)

(assert (=> start!74428 m!1071717))

(declare-fun m!1071719 () Bool)

(assert (=> b!838735 m!1071719))

(declare-fun m!1071721 () Bool)

(assert (=> b!838725 m!1071721))

(assert (=> b!838725 m!1071721))

(declare-fun m!1071723 () Bool)

(assert (=> b!838725 m!1071723))

(declare-fun m!1071725 () Bool)

(assert (=> b!838728 m!1071725))

(declare-fun m!1071727 () Bool)

(assert (=> b!838736 m!1071727))

(declare-fun m!1071729 () Bool)

(assert (=> b!838733 m!1071729))

(declare-fun m!1071731 () Bool)

(assert (=> b!838741 m!1071731))

(declare-fun m!1071733 () Bool)

(assert (=> b!838727 m!1071733))

(declare-fun m!1071735 () Bool)

(assert (=> b!838727 m!1071735))

(declare-fun m!1071737 () Bool)

(assert (=> b!838739 m!1071737))

(declare-fun m!1071739 () Bool)

(assert (=> b!838740 m!1071739))

(declare-fun m!1071741 () Bool)

(assert (=> b!838740 m!1071741))

(declare-fun m!1071743 () Bool)

(assert (=> b!838740 m!1071743))

(declare-fun m!1071745 () Bool)

(assert (=> b!838729 m!1071745))

(push 1)

(assert b_and!72359)

(assert (not b!838729))

(assert (not b!838725))

(assert (not b_next!24911))

(assert b_and!72355)

(assert (not start!74428))

(assert (not b_next!24919))

(assert (not b!838730))

(assert b_and!72349)

(assert (not b_next!24909))

(assert (not b_next!24913))

(assert b_and!72353)

(assert (not b!838734))

(assert (not b!838728))

(assert b_and!72357)

(assert (not b!838740))

(assert (not b!838737))

(assert (not b!838743))

(assert (not b!838739))

(assert (not b!838741))

(assert (not b!838733))

(assert b_and!72351)

(assert (not b_next!24917))

(assert (not b!838727))

(assert (not b!838736))

(assert (not b!838735))

(assert (not b!838732))

(assert (not b_next!24915))

(check-sat)

(pop 1)

(push 1)

(assert b_and!72359)

(assert b_and!72357)

(assert (not b_next!24911))

(assert b_and!72355)

(assert (not b_next!24919))

(assert (not b_next!24915))

(assert b_and!72349)

(assert (not b_next!24909))

(assert (not b_next!24913))

(assert b_and!72353)

(assert b_and!72351)

(assert (not b_next!24917))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!261329 () Bool)

(assert (=> d!261329 (= (inv!11417 (tag!1935 (h!14346 rules!2621))) (= (mod (str.len (value!54380 (tag!1935 (h!14346 rules!2621)))) 2) 0))))

(assert (=> b!838727 d!261329))

(declare-fun d!261331 () Bool)

(declare-fun res!383410 () Bool)

(declare-fun e!551480 () Bool)

(assert (=> d!261331 (=> (not res!383410) (not e!551480))))

(declare-fun semiInverseModEq!645 (Int Int) Bool)

(assert (=> d!261331 (= res!383410 (semiInverseModEq!645 (toChars!2549 (transformation!1673 (h!14346 rules!2621))) (toValue!2690 (transformation!1673 (h!14346 rules!2621)))))))

(assert (=> d!261331 (= (inv!11421 (transformation!1673 (h!14346 rules!2621))) e!551480)))

(declare-fun b!838806 () Bool)

(declare-fun equivClasses!612 (Int Int) Bool)

(assert (=> b!838806 (= e!551480 (equivClasses!612 (toChars!2549 (transformation!1673 (h!14346 rules!2621))) (toValue!2690 (transformation!1673 (h!14346 rules!2621)))))))

(assert (= (and d!261331 res!383410) b!838806))

(declare-fun m!1071789 () Bool)

(assert (=> d!261331 m!1071789))

(declare-fun m!1071791 () Bool)

(assert (=> b!838806 m!1071791))

(assert (=> b!838727 d!261331))

(declare-fun d!261333 () Bool)

(declare-fun res!383415 () Bool)

(declare-fun e!551483 () Bool)

(assert (=> d!261333 (=> (not res!383415) (not e!551483))))

(declare-fun isEmpty!5284 (List!8959) Bool)

(assert (=> d!261333 (= res!383415 (not (isEmpty!5284 (originalCharacters!2229 (h!14345 l!5107)))))))

(assert (=> d!261333 (= (inv!11420 (h!14345 l!5107)) e!551483)))

(declare-fun b!838811 () Bool)

(declare-fun res!383416 () Bool)

(assert (=> b!838811 (=> (not res!383416) (not e!551483))))

(declare-fun list!3535 (BalanceConc!5950) List!8959)

(declare-fun dynLambda!4132 (Int TokenValue!1739) BalanceConc!5950)

(assert (=> b!838811 (= res!383416 (= (originalCharacters!2229 (h!14345 l!5107)) (list!3535 (dynLambda!4132 (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (value!54381 (h!14345 l!5107))))))))

(declare-fun b!838812 () Bool)

(declare-fun size!7506 (List!8959) Int)

(assert (=> b!838812 (= e!551483 (= (size!7504 (h!14345 l!5107)) (size!7506 (originalCharacters!2229 (h!14345 l!5107)))))))

(assert (= (and d!261333 res!383415) b!838811))

(assert (= (and b!838811 res!383416) b!838812))

(declare-fun b_lambda!27579 () Bool)

(assert (=> (not b_lambda!27579) (not b!838811)))

(declare-fun t!93305 () Bool)

(declare-fun tb!57853 () Bool)

(assert (=> (and b!838731 (= (toChars!2549 (transformation!1673 (h!14346 rules!2621))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107))))) t!93305) tb!57853))

(declare-fun b!838817 () Bool)

(declare-fun e!551486 () Bool)

(declare-fun tp!263517 () Bool)

(declare-fun inv!11424 (Conc!2968) Bool)

(assert (=> b!838817 (= e!551486 (and (inv!11424 (c!136948 (dynLambda!4132 (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (value!54381 (h!14345 l!5107))))) tp!263517))))

(declare-fun result!67054 () Bool)

(declare-fun inv!11425 (BalanceConc!5950) Bool)

(assert (=> tb!57853 (= result!67054 (and (inv!11425 (dynLambda!4132 (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (value!54381 (h!14345 l!5107)))) e!551486))))

(assert (= tb!57853 b!838817))

(declare-fun m!1071793 () Bool)

(assert (=> b!838817 m!1071793))

(declare-fun m!1071795 () Bool)

(assert (=> tb!57853 m!1071795))

(assert (=> b!838811 t!93305))

(declare-fun b_and!72373 () Bool)

(assert (= b_and!72351 (and (=> t!93305 result!67054) b_and!72373)))

(declare-fun t!93307 () Bool)

(declare-fun tb!57855 () Bool)

(assert (=> (and b!838724 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107))))) t!93307) tb!57855))

(declare-fun result!67058 () Bool)

(assert (= result!67058 result!67054))

(assert (=> b!838811 t!93307))

(declare-fun b_and!72375 () Bool)

(assert (= b_and!72355 (and (=> t!93307 result!67058) b_and!72375)))

(declare-fun t!93309 () Bool)

(declare-fun tb!57857 () Bool)

(assert (=> (and b!838738 (= (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107))))) t!93309) tb!57857))

(declare-fun result!67060 () Bool)

(assert (= result!67060 result!67054))

(assert (=> b!838811 t!93309))

(declare-fun b_and!72377 () Bool)

(assert (= b_and!72359 (and (=> t!93309 result!67060) b_and!72377)))

(declare-fun m!1071797 () Bool)

(assert (=> d!261333 m!1071797))

(declare-fun m!1071799 () Bool)

(assert (=> b!838811 m!1071799))

(assert (=> b!838811 m!1071799))

(declare-fun m!1071801 () Bool)

(assert (=> b!838811 m!1071801))

(declare-fun m!1071803 () Bool)

(assert (=> b!838812 m!1071803))

(assert (=> b!838729 d!261333))

(declare-fun bs!229770 () Bool)

(declare-fun d!261335 () Bool)

(assert (= bs!229770 (and d!261335 b!838735)))

(declare-fun lambda!24901 () Int)

(assert (=> bs!229770 (not (= lambda!24901 lambda!24895))))

(declare-fun b!838922 () Bool)

(declare-fun e!551562 () Bool)

(assert (=> b!838922 (= e!551562 true)))

(declare-fun b!838921 () Bool)

(declare-fun e!551561 () Bool)

(assert (=> b!838921 (= e!551561 e!551562)))

(declare-fun b!838920 () Bool)

(declare-fun e!551560 () Bool)

(assert (=> b!838920 (= e!551560 e!551561)))

(assert (=> d!261335 e!551560))

(assert (= b!838921 b!838922))

(assert (= b!838920 b!838921))

(assert (= (and d!261335 (is-Cons!8945 rules!2621)) b!838920))

(declare-fun order!5695 () Int)

(declare-fun order!5693 () Int)

(declare-fun dynLambda!4133 (Int Int) Int)

(declare-fun dynLambda!4134 (Int Int) Int)

(assert (=> b!838922 (< (dynLambda!4133 order!5693 (toValue!2690 (transformation!1673 (h!14346 rules!2621)))) (dynLambda!4134 order!5695 lambda!24901))))

(declare-fun order!5697 () Int)

(declare-fun dynLambda!4135 (Int Int) Int)

(assert (=> b!838922 (< (dynLambda!4135 order!5697 (toChars!2549 (transformation!1673 (h!14346 rules!2621)))) (dynLambda!4134 order!5695 lambda!24901))))

(assert (=> d!261335 true))

(declare-fun lt!318150 () Bool)

(assert (=> d!261335 (= lt!318150 (forall!2088 l!5107 lambda!24901))))

(declare-fun e!551552 () Bool)

(assert (=> d!261335 (= lt!318150 e!551552)))

(declare-fun res!383474 () Bool)

(assert (=> d!261335 (=> res!383474 e!551552)))

(assert (=> d!261335 (= res!383474 (not (is-Cons!8944 l!5107)))))

(assert (=> d!261335 (not (isEmpty!5282 rules!2621))))

(assert (=> d!261335 (= (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 l!5107) lt!318150)))

(declare-fun b!838910 () Bool)

(declare-fun e!551553 () Bool)

(assert (=> b!838910 (= e!551552 e!551553)))

(declare-fun res!383473 () Bool)

(assert (=> b!838910 (=> (not res!383473) (not e!551553))))

(assert (=> b!838910 (= res!383473 (rulesProduceIndividualToken!539 thiss!20117 rules!2621 (h!14345 l!5107)))))

(declare-fun b!838911 () Bool)

(assert (=> b!838911 (= e!551553 (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 (t!93298 l!5107)))))

(assert (= (and d!261335 (not res!383474)) b!838910))

(assert (= (and b!838910 res!383473) b!838911))

(declare-fun m!1071927 () Bool)

(assert (=> d!261335 m!1071927))

(assert (=> d!261335 m!1071731))

(declare-fun m!1071929 () Bool)

(assert (=> b!838910 m!1071929))

(declare-fun m!1071931 () Bool)

(assert (=> b!838911 m!1071931))

(assert (=> b!838739 d!261335))

(declare-fun d!261371 () Bool)

(declare-fun c!136970 () Bool)

(assert (=> d!261371 (= c!136970 (is-IntegerValue!5217 (value!54381 (h!14345 l!5107))))))

(declare-fun e!551570 () Bool)

(assert (=> d!261371 (= (inv!21 (value!54381 (h!14345 l!5107))) e!551570)))

(declare-fun b!838935 () Bool)

(declare-fun e!551569 () Bool)

(declare-fun inv!15 (TokenValue!1739) Bool)

(assert (=> b!838935 (= e!551569 (inv!15 (value!54381 (h!14345 l!5107))))))

(declare-fun b!838936 () Bool)

(declare-fun e!551571 () Bool)

(assert (=> b!838936 (= e!551570 e!551571)))

(declare-fun c!136971 () Bool)

(assert (=> b!838936 (= c!136971 (is-IntegerValue!5218 (value!54381 (h!14345 l!5107))))))

(declare-fun b!838937 () Bool)

(declare-fun inv!17 (TokenValue!1739) Bool)

(assert (=> b!838937 (= e!551571 (inv!17 (value!54381 (h!14345 l!5107))))))

(declare-fun b!838938 () Bool)

(declare-fun inv!16 (TokenValue!1739) Bool)

(assert (=> b!838938 (= e!551570 (inv!16 (value!54381 (h!14345 l!5107))))))

(declare-fun b!838939 () Bool)

(declare-fun res!383477 () Bool)

(assert (=> b!838939 (=> res!383477 e!551569)))

(assert (=> b!838939 (= res!383477 (not (is-IntegerValue!5219 (value!54381 (h!14345 l!5107)))))))

(assert (=> b!838939 (= e!551571 e!551569)))

(assert (= (and d!261371 c!136970) b!838938))

(assert (= (and d!261371 (not c!136970)) b!838936))

(assert (= (and b!838936 c!136971) b!838937))

(assert (= (and b!838936 (not c!136971)) b!838939))

(assert (= (and b!838939 (not res!383477)) b!838935))

(declare-fun m!1071933 () Bool)

(assert (=> b!838935 m!1071933))

(declare-fun m!1071935 () Bool)

(assert (=> b!838937 m!1071935))

(declare-fun m!1071937 () Bool)

(assert (=> b!838938 m!1071937))

(assert (=> b!838728 d!261371))

(declare-fun b!838964 () Bool)

(declare-fun e!551590 () List!8959)

(declare-fun lt!318171 () List!8960)

(declare-fun ++!2323 (List!8959 List!8959) List!8959)

(declare-fun charsOf!962 (Token!3012) BalanceConc!5950)

(declare-fun printList!449 (LexerInterface!1475 List!8960) List!8959)

(assert (=> b!838964 (= e!551590 (++!2323 (list!3535 (charsOf!962 (h!14345 lt!318171))) (printList!449 thiss!20117 (t!93298 lt!318171))))))

(declare-fun b!838965 () Bool)

(declare-fun e!551589 () List!8960)

(declare-fun $colon$colon!62 (List!8960 Token!3012) List!8960)

(assert (=> b!838965 (= e!551589 ($colon$colon!62 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 (tail!991 l!5107)) separatorToken!297) separatorToken!297) (h!14345 (tail!991 l!5107))))))

(declare-fun lt!318175 () List!8959)

(assert (=> b!838965 (= lt!318175 (list!3535 (charsOf!962 (h!14345 (tail!991 l!5107)))))))

(declare-fun lt!318174 () List!8959)

(assert (=> b!838965 (= lt!318174 (list!3535 (charsOf!962 separatorToken!297)))))

(declare-fun lt!318173 () List!8959)

(assert (=> b!838965 (= lt!318173 (printList!449 thiss!20117 (withSeparatorTokenList!5 thiss!20117 (t!93298 (tail!991 l!5107)) separatorToken!297)))))

(declare-fun lt!318172 () Unit!13410)

(declare-fun lemmaConcatAssociativity!724 (List!8959 List!8959 List!8959) Unit!13410)

(assert (=> b!838965 (= lt!318172 (lemmaConcatAssociativity!724 lt!318175 lt!318174 lt!318173))))

(assert (=> b!838965 (= (++!2323 (++!2323 lt!318175 lt!318174) lt!318173) (++!2323 lt!318175 (++!2323 lt!318174 lt!318173)))))

(declare-fun lt!318169 () Unit!13410)

(assert (=> b!838965 (= lt!318169 lt!318172)))

(declare-fun b!838966 () Bool)

(declare-fun e!551591 () List!8959)

(declare-fun lt!318170 () List!8960)

(assert (=> b!838966 (= e!551591 (++!2323 (list!3535 (charsOf!962 (h!14345 lt!318170))) (printList!449 thiss!20117 (t!93298 lt!318170))))))

(declare-fun b!838967 () Bool)

(assert (=> b!838967 (= e!551589 Nil!8944)))

(declare-fun b!838968 () Bool)

(assert (=> b!838968 (= e!551591 Nil!8943)))

(declare-fun b!838970 () Bool)

(declare-fun res!383493 () Bool)

(declare-fun e!551592 () Bool)

(assert (=> b!838970 (=> (not res!383493) (not e!551592))))

(declare-fun e!551593 () Bool)

(assert (=> b!838970 (= res!383493 e!551593)))

(declare-fun res!383490 () Bool)

(assert (=> b!838970 (=> res!383490 e!551593)))

(assert (=> b!838970 (= res!383490 (not (is-Cons!8944 (tail!991 l!5107))))))

(declare-fun b!838971 () Bool)

(assert (=> b!838971 (= e!551593 (= (printList!449 thiss!20117 ($colon$colon!62 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 (tail!991 l!5107)) separatorToken!297) separatorToken!297) (h!14345 (tail!991 l!5107)))) e!551591))))

(declare-fun c!136978 () Bool)

(assert (=> b!838971 (= c!136978 (is-Cons!8944 lt!318170))))

(assert (=> b!838971 (= lt!318170 ($colon$colon!62 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 (tail!991 l!5107)) separatorToken!297) separatorToken!297) (h!14345 (tail!991 l!5107))))))

(declare-fun e!551588 () Bool)

(declare-fun b!838972 () Bool)

(assert (=> b!838972 (= e!551588 (= (printList!449 thiss!20117 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 (tail!991 l!5107)) separatorToken!297) separatorToken!297)) e!551590))))

(declare-fun c!136980 () Bool)

(assert (=> b!838972 (= c!136980 (is-Cons!8944 lt!318171))))

(assert (=> b!838972 (= lt!318171 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 (tail!991 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!838973 () Bool)

(assert (=> b!838973 (= e!551590 Nil!8943)))

(declare-fun lt!318176 () List!8960)

(declare-fun d!261373 () Bool)

(declare-fun printWithSeparatorTokenList!7 (LexerInterface!1475 List!8960 Token!3012) List!8959)

(assert (=> d!261373 (= (printList!449 thiss!20117 lt!318176) (printWithSeparatorTokenList!7 thiss!20117 (tail!991 l!5107) separatorToken!297))))

(assert (=> d!261373 (= lt!318176 e!551589)))

(declare-fun c!136979 () Bool)

(assert (=> d!261373 (= c!136979 (is-Cons!8944 (tail!991 l!5107)))))

(assert (=> d!261373 e!551592))

(declare-fun res!383492 () Bool)

(assert (=> d!261373 (=> (not res!383492) (not e!551592))))

(assert (=> d!261373 (= res!383492 (isSeparator!1673 (rule!3096 separatorToken!297)))))

(assert (=> d!261373 (= (withSeparatorTokenList!5 thiss!20117 (tail!991 l!5107) separatorToken!297) lt!318176)))

(declare-fun b!838969 () Bool)

(assert (=> b!838969 (= e!551592 e!551588)))

(declare-fun res!383491 () Bool)

(assert (=> b!838969 (=> res!383491 e!551588)))

(assert (=> b!838969 (= res!383491 (not (is-Cons!8944 (tail!991 l!5107))))))

(assert (= (and d!261373 res!383492) b!838970))

(assert (= (and b!838970 (not res!383490)) b!838971))

(assert (= (and b!838971 c!136978) b!838966))

(assert (= (and b!838971 (not c!136978)) b!838968))

(assert (= (and b!838970 res!383493) b!838969))

(assert (= (and b!838969 (not res!383491)) b!838972))

(assert (= (and b!838972 c!136980) b!838964))

(assert (= (and b!838972 (not c!136980)) b!838973))

(assert (= (and d!261373 c!136979) b!838965))

(assert (= (and d!261373 (not c!136979)) b!838967))

(declare-fun m!1071939 () Bool)

(assert (=> b!838966 m!1071939))

(assert (=> b!838966 m!1071939))

(declare-fun m!1071941 () Bool)

(assert (=> b!838966 m!1071941))

(declare-fun m!1071943 () Bool)

(assert (=> b!838966 m!1071943))

(assert (=> b!838966 m!1071941))

(assert (=> b!838966 m!1071943))

(declare-fun m!1071945 () Bool)

(assert (=> b!838966 m!1071945))

(declare-fun m!1071947 () Bool)

(assert (=> b!838965 m!1071947))

(declare-fun m!1071949 () Bool)

(assert (=> b!838965 m!1071949))

(declare-fun m!1071951 () Bool)

(assert (=> b!838965 m!1071951))

(assert (=> b!838965 m!1071949))

(declare-fun m!1071953 () Bool)

(assert (=> b!838965 m!1071953))

(declare-fun m!1071955 () Bool)

(assert (=> b!838965 m!1071955))

(declare-fun m!1071957 () Bool)

(assert (=> b!838965 m!1071957))

(declare-fun m!1071959 () Bool)

(assert (=> b!838965 m!1071959))

(assert (=> b!838965 m!1071955))

(declare-fun m!1071961 () Bool)

(assert (=> b!838965 m!1071961))

(assert (=> b!838965 m!1071953))

(assert (=> b!838965 m!1071947))

(declare-fun m!1071963 () Bool)

(assert (=> b!838965 m!1071963))

(declare-fun m!1071965 () Bool)

(assert (=> b!838965 m!1071965))

(assert (=> b!838965 m!1071965))

(declare-fun m!1071967 () Bool)

(assert (=> b!838965 m!1071967))

(assert (=> b!838965 m!1071957))

(assert (=> b!838965 m!1071953))

(declare-fun m!1071969 () Bool)

(assert (=> b!838965 m!1071969))

(declare-fun m!1071971 () Bool)

(assert (=> b!838965 m!1071971))

(assert (=> b!838971 m!1071953))

(assert (=> b!838971 m!1071953))

(assert (=> b!838971 m!1071955))

(assert (=> b!838971 m!1071955))

(assert (=> b!838971 m!1071961))

(assert (=> b!838971 m!1071961))

(declare-fun m!1071973 () Bool)

(assert (=> b!838971 m!1071973))

(declare-fun m!1071975 () Bool)

(assert (=> b!838964 m!1071975))

(assert (=> b!838964 m!1071975))

(declare-fun m!1071977 () Bool)

(assert (=> b!838964 m!1071977))

(declare-fun m!1071979 () Bool)

(assert (=> b!838964 m!1071979))

(assert (=> b!838964 m!1071977))

(assert (=> b!838964 m!1071979))

(declare-fun m!1071981 () Bool)

(assert (=> b!838964 m!1071981))

(declare-fun m!1071983 () Bool)

(assert (=> d!261373 m!1071983))

(assert (=> d!261373 m!1071721))

(declare-fun m!1071985 () Bool)

(assert (=> d!261373 m!1071985))

(assert (=> b!838972 m!1071953))

(assert (=> b!838972 m!1071953))

(assert (=> b!838972 m!1071955))

(assert (=> b!838972 m!1071955))

(declare-fun m!1071987 () Bool)

(assert (=> b!838972 m!1071987))

(assert (=> b!838725 d!261373))

(declare-fun d!261375 () Bool)

(assert (=> d!261375 (= (tail!991 l!5107) (t!93298 l!5107))))

(assert (=> b!838725 d!261375))

(declare-fun d!261377 () Bool)

(declare-fun res!383498 () Bool)

(declare-fun e!551598 () Bool)

(assert (=> d!261377 (=> res!383498 e!551598)))

(assert (=> d!261377 (= res!383498 (is-Nil!8944 l!5107))))

(assert (=> d!261377 (= (forall!2088 l!5107 lambda!24895) e!551598)))

(declare-fun b!838978 () Bool)

(declare-fun e!551599 () Bool)

(assert (=> b!838978 (= e!551598 e!551599)))

(declare-fun res!383499 () Bool)

(assert (=> b!838978 (=> (not res!383499) (not e!551599))))

(declare-fun dynLambda!4136 (Int Token!3012) Bool)

(assert (=> b!838978 (= res!383499 (dynLambda!4136 lambda!24895 (h!14345 l!5107)))))

(declare-fun b!838979 () Bool)

(assert (=> b!838979 (= e!551599 (forall!2088 (t!93298 l!5107) lambda!24895))))

(assert (= (and d!261377 (not res!383498)) b!838978))

(assert (= (and b!838978 res!383499) b!838979))

(declare-fun b_lambda!27587 () Bool)

(assert (=> (not b_lambda!27587) (not b!838978)))

(declare-fun m!1071989 () Bool)

(assert (=> b!838978 m!1071989))

(declare-fun m!1071991 () Bool)

(assert (=> b!838979 m!1071991))

(assert (=> b!838735 d!261377))

(declare-fun d!261379 () Bool)

(assert (=> d!261379 (= (inv!11417 (tag!1935 (rule!3096 (h!14345 l!5107)))) (= (mod (str.len (value!54380 (tag!1935 (rule!3096 (h!14345 l!5107))))) 2) 0))))

(assert (=> b!838737 d!261379))

(declare-fun d!261381 () Bool)

(declare-fun res!383500 () Bool)

(declare-fun e!551600 () Bool)

(assert (=> d!261381 (=> (not res!383500) (not e!551600))))

(assert (=> d!261381 (= res!383500 (semiInverseModEq!645 (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (toValue!2690 (transformation!1673 (rule!3096 (h!14345 l!5107))))))))

(assert (=> d!261381 (= (inv!11421 (transformation!1673 (rule!3096 (h!14345 l!5107)))) e!551600)))

(declare-fun b!838980 () Bool)

(assert (=> b!838980 (= e!551600 (equivClasses!612 (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (toValue!2690 (transformation!1673 (rule!3096 (h!14345 l!5107))))))))

(assert (= (and d!261381 res!383500) b!838980))

(declare-fun m!1071993 () Bool)

(assert (=> d!261381 m!1071993))

(declare-fun m!1071995 () Bool)

(assert (=> b!838980 m!1071995))

(assert (=> b!838737 d!261381))

(declare-fun d!261383 () Bool)

(declare-fun c!136981 () Bool)

(assert (=> d!261383 (= c!136981 (is-IntegerValue!5217 (value!54381 separatorToken!297)))))

(declare-fun e!551602 () Bool)

(assert (=> d!261383 (= (inv!21 (value!54381 separatorToken!297)) e!551602)))

(declare-fun b!838981 () Bool)

(declare-fun e!551601 () Bool)

(assert (=> b!838981 (= e!551601 (inv!15 (value!54381 separatorToken!297)))))

(declare-fun b!838982 () Bool)

(declare-fun e!551603 () Bool)

(assert (=> b!838982 (= e!551602 e!551603)))

(declare-fun c!136982 () Bool)

(assert (=> b!838982 (= c!136982 (is-IntegerValue!5218 (value!54381 separatorToken!297)))))

(declare-fun b!838983 () Bool)

(assert (=> b!838983 (= e!551603 (inv!17 (value!54381 separatorToken!297)))))

(declare-fun b!838984 () Bool)

(assert (=> b!838984 (= e!551602 (inv!16 (value!54381 separatorToken!297)))))

(declare-fun b!838985 () Bool)

(declare-fun res!383501 () Bool)

(assert (=> b!838985 (=> res!383501 e!551601)))

(assert (=> b!838985 (= res!383501 (not (is-IntegerValue!5219 (value!54381 separatorToken!297))))))

(assert (=> b!838985 (= e!551603 e!551601)))

(assert (= (and d!261383 c!136981) b!838984))

(assert (= (and d!261383 (not c!136981)) b!838982))

(assert (= (and b!838982 c!136982) b!838983))

(assert (= (and b!838982 (not c!136982)) b!838985))

(assert (= (and b!838985 (not res!383501)) b!838981))

(declare-fun m!1071997 () Bool)

(assert (=> b!838981 m!1071997))

(declare-fun m!1071999 () Bool)

(assert (=> b!838983 m!1071999))

(declare-fun m!1072001 () Bool)

(assert (=> b!838984 m!1072001))

(assert (=> b!838736 d!261383))

(declare-fun d!261385 () Bool)

(declare-fun lt!318181 () Bool)

(declare-fun e!551609 () Bool)

(assert (=> d!261385 (= lt!318181 e!551609)))

(declare-fun res!383508 () Bool)

(assert (=> d!261385 (=> (not res!383508) (not e!551609))))

(declare-datatypes ((IArray!5945 0))(
  ( (IArray!5946 (innerList!3030 List!8960)) )
))
(declare-datatypes ((Conc!2970 0))(
  ( (Node!2970 (left!6652 Conc!2970) (right!6982 Conc!2970) (csize!6170 Int) (cheight!3181 Int)) (Leaf!4395 (xs!5659 IArray!5945) (csize!6171 Int)) (Empty!2970) )
))
(declare-datatypes ((BalanceConc!5954 0))(
  ( (BalanceConc!5955 (c!136989 Conc!2970)) )
))
(declare-fun list!3536 (BalanceConc!5954) List!8960)

(declare-datatypes ((tuple2!10310 0))(
  ( (tuple2!10311 (_1!5981 BalanceConc!5954) (_2!5981 BalanceConc!5950)) )
))
(declare-fun lex!593 (LexerInterface!1475 List!8961 BalanceConc!5950) tuple2!10310)

(declare-fun print!530 (LexerInterface!1475 BalanceConc!5954) BalanceConc!5950)

(declare-fun singletonSeq!492 (Token!3012) BalanceConc!5954)

(assert (=> d!261385 (= res!383508 (= (list!3536 (_1!5981 (lex!593 thiss!20117 rules!2621 (print!530 thiss!20117 (singletonSeq!492 separatorToken!297))))) (list!3536 (singletonSeq!492 separatorToken!297))))))

(declare-fun e!551608 () Bool)

(assert (=> d!261385 (= lt!318181 e!551608)))

(declare-fun res!383510 () Bool)

(assert (=> d!261385 (=> (not res!383510) (not e!551608))))

(declare-fun lt!318182 () tuple2!10310)

(declare-fun size!7507 (BalanceConc!5954) Int)

(assert (=> d!261385 (= res!383510 (= (size!7507 (_1!5981 lt!318182)) 1))))

(assert (=> d!261385 (= lt!318182 (lex!593 thiss!20117 rules!2621 (print!530 thiss!20117 (singletonSeq!492 separatorToken!297))))))

(assert (=> d!261385 (not (isEmpty!5282 rules!2621))))

(assert (=> d!261385 (= (rulesProduceIndividualToken!539 thiss!20117 rules!2621 separatorToken!297) lt!318181)))

(declare-fun b!838992 () Bool)

(declare-fun res!383509 () Bool)

(assert (=> b!838992 (=> (not res!383509) (not e!551608))))

(declare-fun apply!1802 (BalanceConc!5954 Int) Token!3012)

(assert (=> b!838992 (= res!383509 (= (apply!1802 (_1!5981 lt!318182) 0) separatorToken!297))))

(declare-fun b!838993 () Bool)

(declare-fun isEmpty!5285 (BalanceConc!5950) Bool)

(assert (=> b!838993 (= e!551608 (isEmpty!5285 (_2!5981 lt!318182)))))

(declare-fun b!838994 () Bool)

(assert (=> b!838994 (= e!551609 (isEmpty!5285 (_2!5981 (lex!593 thiss!20117 rules!2621 (print!530 thiss!20117 (singletonSeq!492 separatorToken!297))))))))

(assert (= (and d!261385 res!383510) b!838992))

(assert (= (and b!838992 res!383509) b!838993))

(assert (= (and d!261385 res!383508) b!838994))

(declare-fun m!1072003 () Bool)

(assert (=> d!261385 m!1072003))

(assert (=> d!261385 m!1071731))

(declare-fun m!1072005 () Bool)

(assert (=> d!261385 m!1072005))

(declare-fun m!1072007 () Bool)

(assert (=> d!261385 m!1072007))

(declare-fun m!1072009 () Bool)

(assert (=> d!261385 m!1072009))

(assert (=> d!261385 m!1072009))

(declare-fun m!1072011 () Bool)

(assert (=> d!261385 m!1072011))

(declare-fun m!1072013 () Bool)

(assert (=> d!261385 m!1072013))

(assert (=> d!261385 m!1072009))

(assert (=> d!261385 m!1072005))

(declare-fun m!1072015 () Bool)

(assert (=> b!838992 m!1072015))

(declare-fun m!1072017 () Bool)

(assert (=> b!838993 m!1072017))

(assert (=> b!838994 m!1072009))

(assert (=> b!838994 m!1072009))

(assert (=> b!838994 m!1072005))

(assert (=> b!838994 m!1072005))

(assert (=> b!838994 m!1072007))

(declare-fun m!1072019 () Bool)

(assert (=> b!838994 m!1072019))

(assert (=> b!838733 d!261385))

(declare-fun d!261387 () Bool)

(declare-fun res!383515 () Bool)

(declare-fun e!551614 () Bool)

(assert (=> d!261387 (=> res!383515 e!551614)))

(assert (=> d!261387 (= res!383515 (not (is-Cons!8945 rules!2621)))))

(assert (=> d!261387 (= (sepAndNonSepRulesDisjointChars!473 rules!2621 rules!2621) e!551614)))

(declare-fun b!838999 () Bool)

(declare-fun e!551615 () Bool)

(assert (=> b!838999 (= e!551614 e!551615)))

(declare-fun res!383516 () Bool)

(assert (=> b!838999 (=> (not res!383516) (not e!551615))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!212 (Rule!3146 List!8961) Bool)

(assert (=> b!838999 (= res!383516 (ruleDisjointCharsFromAllFromOtherType!212 (h!14346 rules!2621) rules!2621))))

(declare-fun b!839000 () Bool)

(assert (=> b!839000 (= e!551615 (sepAndNonSepRulesDisjointChars!473 rules!2621 (t!93299 rules!2621)))))

(assert (= (and d!261387 (not res!383515)) b!838999))

(assert (= (and b!838999 res!383516) b!839000))

(declare-fun m!1072021 () Bool)

(assert (=> b!838999 m!1072021))

(declare-fun m!1072023 () Bool)

(assert (=> b!839000 m!1072023))

(assert (=> b!838743 d!261387))

(declare-fun d!261389 () Bool)

(assert (=> d!261389 (= (inv!11417 (tag!1935 (rule!3096 separatorToken!297))) (= (mod (str.len (value!54380 (tag!1935 (rule!3096 separatorToken!297)))) 2) 0))))

(assert (=> b!838732 d!261389))

(declare-fun d!261391 () Bool)

(declare-fun res!383517 () Bool)

(declare-fun e!551616 () Bool)

(assert (=> d!261391 (=> (not res!383517) (not e!551616))))

(assert (=> d!261391 (= res!383517 (semiInverseModEq!645 (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (toValue!2690 (transformation!1673 (rule!3096 separatorToken!297)))))))

(assert (=> d!261391 (= (inv!11421 (transformation!1673 (rule!3096 separatorToken!297))) e!551616)))

(declare-fun b!839001 () Bool)

(assert (=> b!839001 (= e!551616 (equivClasses!612 (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (toValue!2690 (transformation!1673 (rule!3096 separatorToken!297)))))))

(assert (= (and d!261391 res!383517) b!839001))

(declare-fun m!1072025 () Bool)

(assert (=> d!261391 m!1072025))

(declare-fun m!1072027 () Bool)

(assert (=> b!839001 m!1072027))

(assert (=> b!838732 d!261391))

(declare-fun d!261393 () Bool)

(declare-fun res!383520 () Bool)

(declare-fun e!551619 () Bool)

(assert (=> d!261393 (=> (not res!383520) (not e!551619))))

(declare-fun rulesValid!576 (LexerInterface!1475 List!8961) Bool)

(assert (=> d!261393 (= res!383520 (rulesValid!576 thiss!20117 rules!2621))))

(assert (=> d!261393 (= (rulesInvariant!1351 thiss!20117 rules!2621) e!551619)))

(declare-fun b!839004 () Bool)

(declare-datatypes ((List!8966 0))(
  ( (Nil!8950) (Cons!8950 (h!14351 String!10595) (t!93342 List!8966)) )
))
(declare-fun noDuplicateTag!576 (LexerInterface!1475 List!8961 List!8966) Bool)

(assert (=> b!839004 (= e!551619 (noDuplicateTag!576 thiss!20117 rules!2621 Nil!8950))))

(assert (= (and d!261393 res!383520) b!839004))

(declare-fun m!1072029 () Bool)

(assert (=> d!261393 m!1072029))

(declare-fun m!1072031 () Bool)

(assert (=> b!839004 m!1072031))

(assert (=> b!838734 d!261393))

(declare-fun d!261395 () Bool)

(assert (=> d!261395 (= (isEmpty!5282 rules!2621) (is-Nil!8945 rules!2621))))

(assert (=> b!838741 d!261395))

(declare-fun d!261397 () Bool)

(declare-fun res!383521 () Bool)

(declare-fun e!551620 () Bool)

(assert (=> d!261397 (=> (not res!383521) (not e!551620))))

(assert (=> d!261397 (= res!383521 (not (isEmpty!5284 (originalCharacters!2229 separatorToken!297))))))

(assert (=> d!261397 (= (inv!11420 separatorToken!297) e!551620)))

(declare-fun b!839005 () Bool)

(declare-fun res!383522 () Bool)

(assert (=> b!839005 (=> (not res!383522) (not e!551620))))

(assert (=> b!839005 (= res!383522 (= (originalCharacters!2229 separatorToken!297) (list!3535 (dynLambda!4132 (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (value!54381 separatorToken!297)))))))

(declare-fun b!839006 () Bool)

(assert (=> b!839006 (= e!551620 (= (size!7504 separatorToken!297) (size!7506 (originalCharacters!2229 separatorToken!297))))))

(assert (= (and d!261397 res!383521) b!839005))

(assert (= (and b!839005 res!383522) b!839006))

(declare-fun b_lambda!27589 () Bool)

(assert (=> (not b_lambda!27589) (not b!839005)))

(declare-fun t!93329 () Bool)

(declare-fun tb!57871 () Bool)

(assert (=> (and b!838731 (= (toChars!2549 (transformation!1673 (h!14346 rules!2621))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297)))) t!93329) tb!57871))

(declare-fun b!839007 () Bool)

(declare-fun e!551621 () Bool)

(declare-fun tp!263522 () Bool)

(assert (=> b!839007 (= e!551621 (and (inv!11424 (c!136948 (dynLambda!4132 (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (value!54381 separatorToken!297)))) tp!263522))))

(declare-fun result!67076 () Bool)

(assert (=> tb!57871 (= result!67076 (and (inv!11425 (dynLambda!4132 (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (value!54381 separatorToken!297))) e!551621))))

(assert (= tb!57871 b!839007))

(declare-fun m!1072033 () Bool)

(assert (=> b!839007 m!1072033))

(declare-fun m!1072035 () Bool)

(assert (=> tb!57871 m!1072035))

(assert (=> b!839005 t!93329))

(declare-fun b_and!72391 () Bool)

(assert (= b_and!72373 (and (=> t!93329 result!67076) b_and!72391)))

(declare-fun t!93331 () Bool)

(declare-fun tb!57873 () Bool)

(assert (=> (and b!838724 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297)))) t!93331) tb!57873))

(declare-fun result!67078 () Bool)

(assert (= result!67078 result!67076))

(assert (=> b!839005 t!93331))

(declare-fun b_and!72393 () Bool)

(assert (= b_and!72375 (and (=> t!93331 result!67078) b_and!72393)))

(declare-fun t!93333 () Bool)

(declare-fun tb!57875 () Bool)

(assert (=> (and b!838738 (= (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297)))) t!93333) tb!57875))

(declare-fun result!67080 () Bool)

(assert (= result!67080 result!67076))

(assert (=> b!839005 t!93333))

(declare-fun b_and!72395 () Bool)

(assert (= b_and!72377 (and (=> t!93333 result!67080) b_and!72395)))

(declare-fun m!1072037 () Bool)

(assert (=> d!261397 m!1072037))

(declare-fun m!1072039 () Bool)

(assert (=> b!839005 m!1072039))

(assert (=> b!839005 m!1072039))

(declare-fun m!1072041 () Bool)

(assert (=> b!839005 m!1072041))

(declare-fun m!1072043 () Bool)

(assert (=> b!839006 m!1072043))

(assert (=> start!74428 d!261397))

(declare-fun bs!229771 () Bool)

(declare-fun d!261399 () Bool)

(assert (= bs!229771 (and d!261399 b!838735)))

(declare-fun lambda!24902 () Int)

(assert (=> bs!229771 (not (= lambda!24902 lambda!24895))))

(declare-fun bs!229772 () Bool)

(assert (= bs!229772 (and d!261399 d!261335)))

(assert (=> bs!229772 (= lambda!24902 lambda!24901)))

(declare-fun b!839012 () Bool)

(declare-fun e!551626 () Bool)

(assert (=> b!839012 (= e!551626 true)))

(declare-fun b!839011 () Bool)

(declare-fun e!551625 () Bool)

(assert (=> b!839011 (= e!551625 e!551626)))

(declare-fun b!839010 () Bool)

(declare-fun e!551624 () Bool)

(assert (=> b!839010 (= e!551624 e!551625)))

(assert (=> d!261399 e!551624))

(assert (= b!839011 b!839012))

(assert (= b!839010 b!839011))

(assert (= (and d!261399 (is-Cons!8945 rules!2621)) b!839010))

(assert (=> b!839012 (< (dynLambda!4133 order!5693 (toValue!2690 (transformation!1673 (h!14346 rules!2621)))) (dynLambda!4134 order!5695 lambda!24902))))

(assert (=> b!839012 (< (dynLambda!4135 order!5697 (toChars!2549 (transformation!1673 (h!14346 rules!2621)))) (dynLambda!4134 order!5695 lambda!24902))))

(assert (=> d!261399 true))

(declare-fun lt!318183 () Bool)

(assert (=> d!261399 (= lt!318183 (forall!2088 lt!318111 lambda!24902))))

(declare-fun e!551622 () Bool)

(assert (=> d!261399 (= lt!318183 e!551622)))

(declare-fun res!383524 () Bool)

(assert (=> d!261399 (=> res!383524 e!551622)))

(assert (=> d!261399 (= res!383524 (not (is-Cons!8944 lt!318111)))))

(assert (=> d!261399 (not (isEmpty!5282 rules!2621))))

(assert (=> d!261399 (= (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 lt!318111) lt!318183)))

(declare-fun b!839008 () Bool)

(declare-fun e!551623 () Bool)

(assert (=> b!839008 (= e!551622 e!551623)))

(declare-fun res!383523 () Bool)

(assert (=> b!839008 (=> (not res!383523) (not e!551623))))

(assert (=> b!839008 (= res!383523 (rulesProduceIndividualToken!539 thiss!20117 rules!2621 (h!14345 lt!318111)))))

(declare-fun b!839009 () Bool)

(assert (=> b!839009 (= e!551623 (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 (t!93298 lt!318111)))))

(assert (= (and d!261399 (not res!383524)) b!839008))

(assert (= (and b!839008 res!383523) b!839009))

(declare-fun m!1072045 () Bool)

(assert (=> d!261399 m!1072045))

(assert (=> d!261399 m!1071731))

(declare-fun m!1072047 () Bool)

(assert (=> b!839008 m!1072047))

(declare-fun m!1072049 () Bool)

(assert (=> b!839009 m!1072049))

(assert (=> b!838740 d!261399))

(declare-fun b!839013 () Bool)

(declare-fun e!551629 () List!8959)

(declare-fun lt!318186 () List!8960)

(assert (=> b!839013 (= e!551629 (++!2323 (list!3535 (charsOf!962 (h!14345 lt!318186))) (printList!449 thiss!20117 (t!93298 lt!318186))))))

(declare-fun e!551628 () List!8960)

(declare-fun b!839014 () Bool)

(assert (=> b!839014 (= e!551628 ($colon$colon!62 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 l!5107) separatorToken!297) separatorToken!297) (h!14345 l!5107)))))

(declare-fun lt!318190 () List!8959)

(assert (=> b!839014 (= lt!318190 (list!3535 (charsOf!962 (h!14345 l!5107))))))

(declare-fun lt!318189 () List!8959)

(assert (=> b!839014 (= lt!318189 (list!3535 (charsOf!962 separatorToken!297)))))

(declare-fun lt!318188 () List!8959)

(assert (=> b!839014 (= lt!318188 (printList!449 thiss!20117 (withSeparatorTokenList!5 thiss!20117 (t!93298 l!5107) separatorToken!297)))))

(declare-fun lt!318187 () Unit!13410)

(assert (=> b!839014 (= lt!318187 (lemmaConcatAssociativity!724 lt!318190 lt!318189 lt!318188))))

(assert (=> b!839014 (= (++!2323 (++!2323 lt!318190 lt!318189) lt!318188) (++!2323 lt!318190 (++!2323 lt!318189 lt!318188)))))

(declare-fun lt!318184 () Unit!13410)

(assert (=> b!839014 (= lt!318184 lt!318187)))

(declare-fun b!839015 () Bool)

(declare-fun e!551630 () List!8959)

(declare-fun lt!318185 () List!8960)

(assert (=> b!839015 (= e!551630 (++!2323 (list!3535 (charsOf!962 (h!14345 lt!318185))) (printList!449 thiss!20117 (t!93298 lt!318185))))))

(declare-fun b!839016 () Bool)

(assert (=> b!839016 (= e!551628 Nil!8944)))

(declare-fun b!839017 () Bool)

(assert (=> b!839017 (= e!551630 Nil!8943)))

(declare-fun b!839019 () Bool)

(declare-fun res!383528 () Bool)

(declare-fun e!551631 () Bool)

(assert (=> b!839019 (=> (not res!383528) (not e!551631))))

(declare-fun e!551632 () Bool)

(assert (=> b!839019 (= res!383528 e!551632)))

(declare-fun res!383525 () Bool)

(assert (=> b!839019 (=> res!383525 e!551632)))

(assert (=> b!839019 (= res!383525 (not (is-Cons!8944 l!5107)))))

(declare-fun b!839020 () Bool)

(assert (=> b!839020 (= e!551632 (= (printList!449 thiss!20117 ($colon$colon!62 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 l!5107) separatorToken!297) separatorToken!297) (h!14345 l!5107))) e!551630))))

(declare-fun c!136983 () Bool)

(assert (=> b!839020 (= c!136983 (is-Cons!8944 lt!318185))))

(assert (=> b!839020 (= lt!318185 ($colon$colon!62 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 l!5107) separatorToken!297) separatorToken!297) (h!14345 l!5107)))))

(declare-fun b!839021 () Bool)

(declare-fun e!551627 () Bool)

(assert (=> b!839021 (= e!551627 (= (printList!449 thiss!20117 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 l!5107) separatorToken!297) separatorToken!297)) e!551629))))

(declare-fun c!136985 () Bool)

(assert (=> b!839021 (= c!136985 (is-Cons!8944 lt!318186))))

(assert (=> b!839021 (= lt!318186 ($colon$colon!62 (withSeparatorTokenList!5 thiss!20117 (t!93298 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!839022 () Bool)

(assert (=> b!839022 (= e!551629 Nil!8943)))

(declare-fun d!261401 () Bool)

(declare-fun lt!318191 () List!8960)

(assert (=> d!261401 (= (printList!449 thiss!20117 lt!318191) (printWithSeparatorTokenList!7 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!261401 (= lt!318191 e!551628)))

(declare-fun c!136984 () Bool)

(assert (=> d!261401 (= c!136984 (is-Cons!8944 l!5107))))

(assert (=> d!261401 e!551631))

(declare-fun res!383527 () Bool)

(assert (=> d!261401 (=> (not res!383527) (not e!551631))))

(assert (=> d!261401 (= res!383527 (isSeparator!1673 (rule!3096 separatorToken!297)))))

(assert (=> d!261401 (= (withSeparatorTokenList!5 thiss!20117 l!5107 separatorToken!297) lt!318191)))

(declare-fun b!839018 () Bool)

(assert (=> b!839018 (= e!551631 e!551627)))

(declare-fun res!383526 () Bool)

(assert (=> b!839018 (=> res!383526 e!551627)))

(assert (=> b!839018 (= res!383526 (not (is-Cons!8944 l!5107)))))

(assert (= (and d!261401 res!383527) b!839019))

(assert (= (and b!839019 (not res!383525)) b!839020))

(assert (= (and b!839020 c!136983) b!839015))

(assert (= (and b!839020 (not c!136983)) b!839017))

(assert (= (and b!839019 res!383528) b!839018))

(assert (= (and b!839018 (not res!383526)) b!839021))

(assert (= (and b!839021 c!136985) b!839013))

(assert (= (and b!839021 (not c!136985)) b!839022))

(assert (= (and d!261401 c!136984) b!839014))

(assert (= (and d!261401 (not c!136984)) b!839016))

(declare-fun m!1072051 () Bool)

(assert (=> b!839015 m!1072051))

(assert (=> b!839015 m!1072051))

(declare-fun m!1072053 () Bool)

(assert (=> b!839015 m!1072053))

(declare-fun m!1072055 () Bool)

(assert (=> b!839015 m!1072055))

(assert (=> b!839015 m!1072053))

(assert (=> b!839015 m!1072055))

(declare-fun m!1072057 () Bool)

(assert (=> b!839015 m!1072057))

(assert (=> b!839014 m!1071947))

(declare-fun m!1072059 () Bool)

(assert (=> b!839014 m!1072059))

(declare-fun m!1072061 () Bool)

(assert (=> b!839014 m!1072061))

(assert (=> b!839014 m!1072059))

(declare-fun m!1072063 () Bool)

(assert (=> b!839014 m!1072063))

(declare-fun m!1072065 () Bool)

(assert (=> b!839014 m!1072065))

(declare-fun m!1072067 () Bool)

(assert (=> b!839014 m!1072067))

(declare-fun m!1072069 () Bool)

(assert (=> b!839014 m!1072069))

(assert (=> b!839014 m!1072065))

(declare-fun m!1072071 () Bool)

(assert (=> b!839014 m!1072071))

(assert (=> b!839014 m!1072063))

(assert (=> b!839014 m!1071947))

(assert (=> b!839014 m!1071963))

(declare-fun m!1072073 () Bool)

(assert (=> b!839014 m!1072073))

(assert (=> b!839014 m!1072073))

(declare-fun m!1072075 () Bool)

(assert (=> b!839014 m!1072075))

(assert (=> b!839014 m!1072067))

(assert (=> b!839014 m!1072063))

(declare-fun m!1072077 () Bool)

(assert (=> b!839014 m!1072077))

(declare-fun m!1072079 () Bool)

(assert (=> b!839014 m!1072079))

(assert (=> b!839020 m!1072063))

(assert (=> b!839020 m!1072063))

(assert (=> b!839020 m!1072065))

(assert (=> b!839020 m!1072065))

(assert (=> b!839020 m!1072071))

(assert (=> b!839020 m!1072071))

(declare-fun m!1072081 () Bool)

(assert (=> b!839020 m!1072081))

(declare-fun m!1072083 () Bool)

(assert (=> b!839013 m!1072083))

(assert (=> b!839013 m!1072083))

(declare-fun m!1072085 () Bool)

(assert (=> b!839013 m!1072085))

(declare-fun m!1072087 () Bool)

(assert (=> b!839013 m!1072087))

(assert (=> b!839013 m!1072085))

(assert (=> b!839013 m!1072087))

(declare-fun m!1072089 () Bool)

(assert (=> b!839013 m!1072089))

(declare-fun m!1072091 () Bool)

(assert (=> d!261401 m!1072091))

(declare-fun m!1072093 () Bool)

(assert (=> d!261401 m!1072093))

(assert (=> b!839021 m!1072063))

(assert (=> b!839021 m!1072063))

(assert (=> b!839021 m!1072065))

(assert (=> b!839021 m!1072065))

(declare-fun m!1072095 () Bool)

(assert (=> b!839021 m!1072095))

(assert (=> b!838740 d!261401))

(declare-fun d!261403 () Bool)

(assert (=> d!261403 (rulesProduceEachTokenIndividuallyList!363 thiss!20117 rules!2621 (withSeparatorTokenList!5 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318194 () Unit!13410)

(declare-fun choose!4943 (LexerInterface!1475 List!8961 List!8960 Token!3012) Unit!13410)

(assert (=> d!261403 (= lt!318194 (choose!4943 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!261403 (not (isEmpty!5282 rules!2621))))

(assert (=> d!261403 (= (withSeparatorTokenListPreservesRulesProduceTokens!5 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!318194)))

(declare-fun bs!229773 () Bool)

(assert (= bs!229773 d!261403))

(assert (=> bs!229773 m!1071741))

(assert (=> bs!229773 m!1071741))

(declare-fun m!1072097 () Bool)

(assert (=> bs!229773 m!1072097))

(declare-fun m!1072099 () Bool)

(assert (=> bs!229773 m!1072099))

(assert (=> bs!229773 m!1071731))

(assert (=> b!838740 d!261403))

(declare-fun b!839033 () Bool)

(declare-fun e!551635 () Bool)

(declare-fun tp_is_empty!3923 () Bool)

(assert (=> b!839033 (= e!551635 tp_is_empty!3923)))

(assert (=> b!838727 (= tp!263464 e!551635)))

(declare-fun b!839034 () Bool)

(declare-fun tp!263536 () Bool)

(declare-fun tp!263534 () Bool)

(assert (=> b!839034 (= e!551635 (and tp!263536 tp!263534))))

(declare-fun b!839035 () Bool)

(declare-fun tp!263535 () Bool)

(assert (=> b!839035 (= e!551635 tp!263535)))

(declare-fun b!839036 () Bool)

(declare-fun tp!263533 () Bool)

(declare-fun tp!263537 () Bool)

(assert (=> b!839036 (= e!551635 (and tp!263533 tp!263537))))

(assert (= (and b!838727 (is-ElementMatch!2106 (regex!1673 (h!14346 rules!2621)))) b!839033))

(assert (= (and b!838727 (is-Concat!3846 (regex!1673 (h!14346 rules!2621)))) b!839034))

(assert (= (and b!838727 (is-Star!2106 (regex!1673 (h!14346 rules!2621)))) b!839035))

(assert (= (and b!838727 (is-Union!2106 (regex!1673 (h!14346 rules!2621)))) b!839036))

(declare-fun b!839037 () Bool)

(declare-fun e!551636 () Bool)

(assert (=> b!839037 (= e!551636 tp_is_empty!3923)))

(assert (=> b!838732 (= tp!263468 e!551636)))

(declare-fun b!839038 () Bool)

(declare-fun tp!263541 () Bool)

(declare-fun tp!263539 () Bool)

(assert (=> b!839038 (= e!551636 (and tp!263541 tp!263539))))

(declare-fun b!839039 () Bool)

(declare-fun tp!263540 () Bool)

(assert (=> b!839039 (= e!551636 tp!263540)))

(declare-fun b!839040 () Bool)

(declare-fun tp!263538 () Bool)

(declare-fun tp!263542 () Bool)

(assert (=> b!839040 (= e!551636 (and tp!263538 tp!263542))))

(assert (= (and b!838732 (is-ElementMatch!2106 (regex!1673 (rule!3096 separatorToken!297)))) b!839037))

(assert (= (and b!838732 (is-Concat!3846 (regex!1673 (rule!3096 separatorToken!297)))) b!839038))

(assert (= (and b!838732 (is-Star!2106 (regex!1673 (rule!3096 separatorToken!297)))) b!839039))

(assert (= (and b!838732 (is-Union!2106 (regex!1673 (rule!3096 separatorToken!297)))) b!839040))

(declare-fun b!839054 () Bool)

(declare-fun b_free!24869 () Bool)

(declare-fun b_next!24933 () Bool)

(assert (=> b!839054 (= b_free!24869 (not b_next!24933))))

(declare-fun tp!263555 () Bool)

(declare-fun b_and!72397 () Bool)

(assert (=> b!839054 (= tp!263555 b_and!72397)))

(declare-fun b_free!24871 () Bool)

(declare-fun b_next!24935 () Bool)

(assert (=> b!839054 (= b_free!24871 (not b_next!24935))))

(declare-fun t!93335 () Bool)

(declare-fun tb!57877 () Bool)

(assert (=> (and b!839054 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 (t!93298 l!5107))))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107))))) t!93335) tb!57877))

(declare-fun result!67086 () Bool)

(assert (= result!67086 result!67054))

(assert (=> b!838811 t!93335))

(declare-fun t!93337 () Bool)

(declare-fun tb!57879 () Bool)

(assert (=> (and b!839054 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 (t!93298 l!5107))))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297)))) t!93337) tb!57879))

(declare-fun result!67088 () Bool)

(assert (= result!67088 result!67076))

(assert (=> b!839005 t!93337))

(declare-fun b_and!72399 () Bool)

(declare-fun tp!263557 () Bool)

(assert (=> b!839054 (= tp!263557 (and (=> t!93335 result!67086) (=> t!93337 result!67088) b_and!72399))))

(declare-fun e!551653 () Bool)

(declare-fun e!551652 () Bool)

(declare-fun tp!263556 () Bool)

(declare-fun b!839051 () Bool)

(assert (=> b!839051 (= e!551652 (and (inv!11420 (h!14345 (t!93298 l!5107))) e!551653 tp!263556))))

(declare-fun tp!263554 () Bool)

(declare-fun e!551651 () Bool)

(declare-fun b!839052 () Bool)

(assert (=> b!839052 (= e!551653 (and (inv!21 (value!54381 (h!14345 (t!93298 l!5107)))) e!551651 tp!263554))))

(assert (=> b!838729 (= tp!263474 e!551652)))

(declare-fun e!551649 () Bool)

(assert (=> b!839054 (= e!551649 (and tp!263555 tp!263557))))

(declare-fun tp!263553 () Bool)

(declare-fun b!839053 () Bool)

(assert (=> b!839053 (= e!551651 (and tp!263553 (inv!11417 (tag!1935 (rule!3096 (h!14345 (t!93298 l!5107))))) (inv!11421 (transformation!1673 (rule!3096 (h!14345 (t!93298 l!5107))))) e!551649))))

(assert (= b!839053 b!839054))

(assert (= b!839052 b!839053))

(assert (= b!839051 b!839052))

(assert (= (and b!838729 (is-Cons!8944 (t!93298 l!5107))) b!839051))

(declare-fun m!1072101 () Bool)

(assert (=> b!839051 m!1072101))

(declare-fun m!1072103 () Bool)

(assert (=> b!839052 m!1072103))

(declare-fun m!1072105 () Bool)

(assert (=> b!839053 m!1072105))

(declare-fun m!1072107 () Bool)

(assert (=> b!839053 m!1072107))

(declare-fun b!839059 () Bool)

(declare-fun e!551657 () Bool)

(declare-fun tp!263560 () Bool)

(assert (=> b!839059 (= e!551657 (and tp_is_empty!3923 tp!263560))))

(assert (=> b!838728 (= tp!263463 e!551657)))

(assert (= (and b!838728 (is-Cons!8943 (originalCharacters!2229 (h!14345 l!5107)))) b!839059))

(declare-fun b!839070 () Bool)

(declare-fun b_free!24873 () Bool)

(declare-fun b_next!24937 () Bool)

(assert (=> b!839070 (= b_free!24873 (not b_next!24937))))

(declare-fun tp!263570 () Bool)

(declare-fun b_and!72401 () Bool)

(assert (=> b!839070 (= tp!263570 b_and!72401)))

(declare-fun b_free!24875 () Bool)

(declare-fun b_next!24939 () Bool)

(assert (=> b!839070 (= b_free!24875 (not b_next!24939))))

(declare-fun tb!57881 () Bool)

(declare-fun t!93339 () Bool)

(assert (=> (and b!839070 (= (toChars!2549 (transformation!1673 (h!14346 (t!93299 rules!2621)))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107))))) t!93339) tb!57881))

(declare-fun result!67094 () Bool)

(assert (= result!67094 result!67054))

(assert (=> b!838811 t!93339))

(declare-fun tb!57883 () Bool)

(declare-fun t!93341 () Bool)

(assert (=> (and b!839070 (= (toChars!2549 (transformation!1673 (h!14346 (t!93299 rules!2621)))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297)))) t!93341) tb!57883))

(declare-fun result!67096 () Bool)

(assert (= result!67096 result!67076))

(assert (=> b!839005 t!93341))

(declare-fun tp!263571 () Bool)

(declare-fun b_and!72403 () Bool)

(assert (=> b!839070 (= tp!263571 (and (=> t!93339 result!67094) (=> t!93341 result!67096) b_and!72403))))

(declare-fun e!551666 () Bool)

(assert (=> b!839070 (= e!551666 (and tp!263570 tp!263571))))

(declare-fun tp!263572 () Bool)

(declare-fun b!839069 () Bool)

(declare-fun e!551669 () Bool)

(assert (=> b!839069 (= e!551669 (and tp!263572 (inv!11417 (tag!1935 (h!14346 (t!93299 rules!2621)))) (inv!11421 (transformation!1673 (h!14346 (t!93299 rules!2621)))) e!551666))))

(declare-fun b!839068 () Bool)

(declare-fun e!551667 () Bool)

(declare-fun tp!263569 () Bool)

(assert (=> b!839068 (= e!551667 (and e!551669 tp!263569))))

(assert (=> b!838730 (= tp!263470 e!551667)))

(assert (= b!839069 b!839070))

(assert (= b!839068 b!839069))

(assert (= (and b!838730 (is-Cons!8945 (t!93299 rules!2621))) b!839068))

(declare-fun m!1072109 () Bool)

(assert (=> b!839069 m!1072109))

(declare-fun m!1072111 () Bool)

(assert (=> b!839069 m!1072111))

(declare-fun b!839071 () Bool)

(declare-fun e!551670 () Bool)

(assert (=> b!839071 (= e!551670 tp_is_empty!3923)))

(assert (=> b!838737 (= tp!263472 e!551670)))

(declare-fun b!839072 () Bool)

(declare-fun tp!263576 () Bool)

(declare-fun tp!263574 () Bool)

(assert (=> b!839072 (= e!551670 (and tp!263576 tp!263574))))

(declare-fun b!839073 () Bool)

(declare-fun tp!263575 () Bool)

(assert (=> b!839073 (= e!551670 tp!263575)))

(declare-fun b!839074 () Bool)

(declare-fun tp!263573 () Bool)

(declare-fun tp!263577 () Bool)

(assert (=> b!839074 (= e!551670 (and tp!263573 tp!263577))))

(assert (= (and b!838737 (is-ElementMatch!2106 (regex!1673 (rule!3096 (h!14345 l!5107))))) b!839071))

(assert (= (and b!838737 (is-Concat!3846 (regex!1673 (rule!3096 (h!14345 l!5107))))) b!839072))

(assert (= (and b!838737 (is-Star!2106 (regex!1673 (rule!3096 (h!14345 l!5107))))) b!839073))

(assert (= (and b!838737 (is-Union!2106 (regex!1673 (rule!3096 (h!14345 l!5107))))) b!839074))

(declare-fun b!839075 () Bool)

(declare-fun e!551671 () Bool)

(declare-fun tp!263578 () Bool)

(assert (=> b!839075 (= e!551671 (and tp_is_empty!3923 tp!263578))))

(assert (=> b!838736 (= tp!263475 e!551671)))

(assert (= (and b!838736 (is-Cons!8943 (originalCharacters!2229 separatorToken!297))) b!839075))

(declare-fun b_lambda!27591 () Bool)

(assert (= b_lambda!27587 (or b!838735 b_lambda!27591)))

(declare-fun bs!229774 () Bool)

(declare-fun d!261405 () Bool)

(assert (= bs!229774 (and d!261405 b!838735)))

(assert (=> bs!229774 (= (dynLambda!4136 lambda!24895 (h!14345 l!5107)) (not (isSeparator!1673 (rule!3096 (h!14345 l!5107)))))))

(assert (=> b!838978 d!261405))

(declare-fun b_lambda!27593 () Bool)

(assert (= b_lambda!27579 (or (and b!838738 b_free!24855 (= (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))))) (and b!839054 b_free!24871 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 (t!93298 l!5107))))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))))) (and b!838731 b_free!24847 (= (toChars!2549 (transformation!1673 (h!14346 rules!2621))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))))) (and b!839070 b_free!24875 (= (toChars!2549 (transformation!1673 (h!14346 (t!93299 rules!2621)))) (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))))) (and b!838724 b_free!24851) b_lambda!27593)))

(declare-fun b_lambda!27595 () Bool)

(assert (= b_lambda!27589 (or (and b!839070 b_free!24875 (= (toChars!2549 (transformation!1673 (h!14346 (t!93299 rules!2621)))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))))) (and b!838738 b_free!24855) (and b!838724 b_free!24851 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 l!5107)))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))))) (and b!838731 b_free!24847 (= (toChars!2549 (transformation!1673 (h!14346 rules!2621))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))))) (and b!839054 b_free!24871 (= (toChars!2549 (transformation!1673 (rule!3096 (h!14345 (t!93298 l!5107))))) (toChars!2549 (transformation!1673 (rule!3096 separatorToken!297))))) b_lambda!27595)))

(push 1)

(assert (not b!839021))

(assert (not b!839007))

(assert (not b!839069))

(assert (not b!839004))

(assert (not d!261403))

(assert (not b!838993))

(assert (not b!838920))

(assert (not b!838937))

(assert (not b!839000))

(assert (not b_next!24937))

(assert (not b!839005))

(assert (not b!838806))

(assert (not b!839075))

(assert (not b!838935))

(assert (not b!839010))

(assert (not b!839039))

(assert (not b_next!24939))

(assert tp_is_empty!3923)

(assert (not b!838817))

(assert (not d!261331))

(assert (not b!839068))

(assert b_and!72357)

(assert (not d!261391))

(assert (not tb!57871))

(assert (not d!261401))

(assert (not d!261335))

(assert (not b!838812))

(assert (not d!261373))

(assert (not b!839013))

(assert (not b!838972))

(assert b_and!72397)

(assert (not b!839036))

(assert (not b!839034))

(assert (not b!839073))

(assert (not b!839014))

(assert (not b!838981))

(assert (not b!839059))

(assert (not b!838983))

(assert (not b_next!24911))

(assert (not b!838964))

(assert (not b!838965))

(assert (not b!838910))

(assert (not b!838994))

(assert (not b!839038))

(assert (not b!839040))

(assert (not b!839008))

(assert (not d!261385))

(assert (not b!838984))

(assert (not d!261393))

(assert (not d!261397))

(assert b_and!72399)

(assert (not b!839009))

(assert (not b!839074))

(assert (not b_next!24917))

(assert (not b_next!24919))

(assert (not b!839020))

(assert (not b!838979))

(assert (not b!838971))

(assert (not b!838938))

(assert (not b!839052))

(assert (not b!839051))

(assert (not b_lambda!27595))

(assert (not b!838911))

(assert (not d!261381))

(assert (not b!839015))

(assert (not d!261333))

(assert (not b!838992))

(assert (not b_next!24915))

(assert (not b!838999))

(assert (not b_next!24935))

(assert b_and!72349)

(assert b_and!72403)

(assert (not b_lambda!27591))

(assert (not b_next!24933))

(assert (not tb!57853))

(assert (not b_next!24909))

(assert (not b!839006))

(assert (not b_next!24913))

(assert (not b!839072))

(assert (not b!838966))

(assert b_and!72391)

(assert (not b!839053))

(assert b_and!72395)

(assert (not b!839001))

(assert (not b!838980))

(assert b_and!72393)

(assert (not b!838811))

(assert (not b_lambda!27593))

(assert b_and!72353)

(assert (not b!839035))

(assert (not d!261399))

(assert b_and!72401)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!24937))

(assert (not b_next!24939))

(assert b_and!72357)

(assert b_and!72397)

(assert (not b_next!24911))

(assert (not b_next!24919))

(assert b_and!72401)

(assert b_and!72399)

(assert (not b_next!24917))

(assert (not b_next!24935))

(assert (not b_next!24915))

(assert b_and!72349)

(assert b_and!72403)

(assert (not b_next!24933))

(assert (not b_next!24909))

(assert b_and!72391)

(assert (not b_next!24913))

(assert b_and!72395)

(assert b_and!72393)

(assert b_and!72353)

(check-sat)

(pop 1)

