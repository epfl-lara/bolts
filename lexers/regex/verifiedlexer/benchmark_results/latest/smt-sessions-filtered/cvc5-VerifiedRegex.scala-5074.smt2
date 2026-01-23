; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!259540 () Bool)

(assert start!259540)

(declare-fun b!2668465 () Bool)

(declare-fun b_free!74829 () Bool)

(declare-fun b_next!75533 () Bool)

(assert (=> b!2668465 (= b_free!74829 (not b_next!75533))))

(declare-fun tp!843301 () Bool)

(declare-fun b_and!196789 () Bool)

(assert (=> b!2668465 (= tp!843301 b_and!196789)))

(declare-fun b_free!74831 () Bool)

(declare-fun b_next!75535 () Bool)

(assert (=> b!2668465 (= b_free!74831 (not b_next!75535))))

(declare-fun tp!843300 () Bool)

(declare-fun b_and!196791 () Bool)

(assert (=> b!2668465 (= tp!843300 b_and!196791)))

(declare-fun b!2668467 () Bool)

(declare-fun b_free!74833 () Bool)

(declare-fun b_next!75537 () Bool)

(assert (=> b!2668467 (= b_free!74833 (not b_next!75537))))

(declare-fun tp!843291 () Bool)

(declare-fun b_and!196793 () Bool)

(assert (=> b!2668467 (= tp!843291 b_and!196793)))

(declare-fun b_free!74835 () Bool)

(declare-fun b_next!75539 () Bool)

(assert (=> b!2668467 (= b_free!74835 (not b_next!75539))))

(declare-fun tp!843295 () Bool)

(declare-fun b_and!196795 () Bool)

(assert (=> b!2668467 (= tp!843295 b_and!196795)))

(declare-fun b!2668464 () Bool)

(declare-fun b_free!74837 () Bool)

(declare-fun b_next!75541 () Bool)

(assert (=> b!2668464 (= b_free!74837 (not b_next!75541))))

(declare-fun tp!843290 () Bool)

(declare-fun b_and!196797 () Bool)

(assert (=> b!2668464 (= tp!843290 b_and!196797)))

(declare-fun b_free!74839 () Bool)

(declare-fun b_next!75543 () Bool)

(assert (=> b!2668464 (= b_free!74839 (not b_next!75543))))

(declare-fun tp!843294 () Bool)

(declare-fun b_and!196799 () Bool)

(assert (=> b!2668464 (= tp!843294 b_and!196799)))

(declare-fun bs!479357 () Bool)

(declare-fun b!2668466 () Bool)

(declare-fun b!2668471 () Bool)

(assert (= bs!479357 (and b!2668466 b!2668471)))

(declare-fun lambda!99592 () Int)

(declare-fun lambda!99591 () Int)

(assert (=> bs!479357 (not (= lambda!99592 lambda!99591))))

(declare-fun b!2668488 () Bool)

(declare-fun e!1681509 () Bool)

(assert (=> b!2668488 (= e!1681509 true)))

(declare-fun b!2668487 () Bool)

(declare-fun e!1681508 () Bool)

(assert (=> b!2668487 (= e!1681508 e!1681509)))

(declare-fun b!2668486 () Bool)

(declare-fun e!1681507 () Bool)

(assert (=> b!2668486 (= e!1681507 e!1681508)))

(assert (=> b!2668466 e!1681507))

(assert (= b!2668487 b!2668488))

(assert (= b!2668486 b!2668487))

(declare-datatypes ((List!30733 0))(
  ( (Nil!30633) (Cons!30633 (h!36053 (_ BitVec 16)) (t!222934 List!30733)) )
))
(declare-datatypes ((TokenValue!4890 0))(
  ( (FloatLiteralValue!9780 (text!34675 List!30733)) (TokenValueExt!4889 (__x!19613 Int)) (Broken!24450 (value!150618 List!30733)) (Object!4989) (End!4890) (Def!4890) (Underscore!4890) (Match!4890) (Else!4890) (Error!4890) (Case!4890) (If!4890) (Extends!4890) (Abstract!4890) (Class!4890) (Val!4890) (DelimiterValue!9780 (del!4950 List!30733)) (KeywordValue!4896 (value!150619 List!30733)) (CommentValue!9780 (value!150620 List!30733)) (WhitespaceValue!9780 (value!150621 List!30733)) (IndentationValue!4890 (value!150622 List!30733)) (String!34335) (Int32!4890) (Broken!24451 (value!150623 List!30733)) (Boolean!4891) (Unit!44875) (OperatorValue!4893 (op!4950 List!30733)) (IdentifierValue!9780 (value!150624 List!30733)) (IdentifierValue!9781 (value!150625 List!30733)) (WhitespaceValue!9781 (value!150626 List!30733)) (True!9780) (False!9780) (Broken!24452 (value!150627 List!30733)) (Broken!24453 (value!150628 List!30733)) (True!9781) (RightBrace!4890) (RightBracket!4890) (Colon!4890) (Null!4890) (Comma!4890) (LeftBracket!4890) (False!9781) (LeftBrace!4890) (ImaginaryLiteralValue!4890 (text!34676 List!30733)) (StringLiteralValue!14670 (value!150629 List!30733)) (EOFValue!4890 (value!150630 List!30733)) (IdentValue!4890 (value!150631 List!30733)) (DelimiterValue!9781 (value!150632 List!30733)) (DedentValue!4890 (value!150633 List!30733)) (NewLineValue!4890 (value!150634 List!30733)) (IntegerValue!14670 (value!150635 (_ BitVec 32)) (text!34677 List!30733)) (IntegerValue!14671 (value!150636 Int) (text!34678 List!30733)) (Times!4890) (Or!4890) (Equal!4890) (Minus!4890) (Broken!24454 (value!150637 List!30733)) (And!4890) (Div!4890) (LessEqual!4890) (Mod!4890) (Concat!12702) (Not!4890) (Plus!4890) (SpaceValue!4890 (value!150638 List!30733)) (IntegerValue!14672 (value!150639 Int) (text!34679 List!30733)) (StringLiteralValue!14671 (text!34680 List!30733)) (FloatLiteralValue!9781 (text!34681 List!30733)) (BytesLiteralValue!4890 (value!150640 List!30733)) (CommentValue!9781 (value!150641 List!30733)) (StringLiteralValue!14672 (value!150642 List!30733)) (ErrorTokenValue!4890 (msg!4951 List!30733)) )
))
(declare-datatypes ((C!15782 0))(
  ( (C!15783 (val!9825 Int)) )
))
(declare-datatypes ((List!30734 0))(
  ( (Nil!30634) (Cons!30634 (h!36054 C!15782) (t!222935 List!30734)) )
))
(declare-datatypes ((IArray!19157 0))(
  ( (IArray!19158 (innerList!9636 List!30734)) )
))
(declare-datatypes ((Conc!9576 0))(
  ( (Node!9576 (left!23684 Conc!9576) (right!24014 Conc!9576) (csize!19382 Int) (cheight!9787 Int)) (Leaf!14651 (xs!12606 IArray!19157) (csize!19383 Int)) (Empty!9576) )
))
(declare-datatypes ((BalanceConc!18766 0))(
  ( (BalanceConc!18767 (c!430373 Conc!9576)) )
))
(declare-datatypes ((String!34336 0))(
  ( (String!34337 (value!150643 String)) )
))
(declare-datatypes ((Regex!7812 0))(
  ( (ElementMatch!7812 (c!430374 C!15782)) (Concat!12703 (regOne!16136 Regex!7812) (regTwo!16136 Regex!7812)) (EmptyExpr!7812) (Star!7812 (reg!8141 Regex!7812)) (EmptyLang!7812) (Union!7812 (regOne!16137 Regex!7812) (regTwo!16137 Regex!7812)) )
))
(declare-datatypes ((TokenValueInjection!9220 0))(
  ( (TokenValueInjection!9221 (toValue!6606 Int) (toChars!6465 Int)) )
))
(declare-datatypes ((Rule!9136 0))(
  ( (Rule!9137 (regex!4668 Regex!7812) (tag!5170 String!34336) (isSeparator!4668 Bool) (transformation!4668 TokenValueInjection!9220)) )
))
(declare-datatypes ((List!30735 0))(
  ( (Nil!30635) (Cons!30635 (h!36055 Rule!9136) (t!222936 List!30735)) )
))
(declare-fun rules!1712 () List!30735)

(assert (= (and b!2668466 (is-Cons!30635 rules!1712)) b!2668486))

(declare-fun order!16751 () Int)

(declare-fun order!16749 () Int)

(declare-fun dynLambda!13227 (Int Int) Int)

(declare-fun dynLambda!13228 (Int Int) Int)

(assert (=> b!2668488 (< (dynLambda!13227 order!16749 (toValue!6606 (transformation!4668 (h!36055 rules!1712)))) (dynLambda!13228 order!16751 lambda!99592))))

(declare-fun order!16753 () Int)

(declare-fun dynLambda!13229 (Int Int) Int)

(assert (=> b!2668488 (< (dynLambda!13229 order!16753 (toChars!6465 (transformation!4668 (h!36055 rules!1712)))) (dynLambda!13228 order!16751 lambda!99592))))

(assert (=> b!2668466 true))

(declare-datatypes ((Token!8806 0))(
  ( (Token!8807 (value!150644 TokenValue!4890) (rule!7074 Rule!9136) (size!23718 Int) (originalCharacters!5434 List!30734)) )
))
(declare-fun separatorToken!152 () Token!8806)

(declare-fun e!1681493 () Bool)

(declare-fun e!1681492 () Bool)

(declare-fun tp!843298 () Bool)

(declare-fun b!2668458 () Bool)

(declare-fun inv!21 (TokenValue!4890) Bool)

(assert (=> b!2668458 (= e!1681492 (and (inv!21 (value!150644 separatorToken!152)) e!1681493 tp!843298))))

(declare-fun b!2668459 () Bool)

(declare-fun res!1121921 () Bool)

(declare-fun e!1681485 () Bool)

(assert (=> b!2668459 (=> (not res!1121921) (not e!1681485))))

(declare-datatypes ((LexerInterface!4265 0))(
  ( (LexerInterfaceExt!4262 (__x!19614 Int)) (Lexer!4263) )
))
(declare-fun thiss!14116 () LexerInterface!4265)

(declare-fun rulesProduceIndividualToken!1977 (LexerInterface!4265 List!30735 Token!8806) Bool)

(assert (=> b!2668459 (= res!1121921 (rulesProduceIndividualToken!1977 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun tp!843293 () Bool)

(declare-fun e!1681496 () Bool)

(declare-datatypes ((List!30736 0))(
  ( (Nil!30636) (Cons!30636 (h!36056 Token!8806) (t!222937 List!30736)) )
))
(declare-fun l!4335 () List!30736)

(declare-fun b!2668460 () Bool)

(declare-fun e!1681488 () Bool)

(declare-fun inv!41641 (Token!8806) Bool)

(assert (=> b!2668460 (= e!1681488 (and (inv!41641 (h!36056 l!4335)) e!1681496 tp!843293))))

(declare-fun e!1681495 () Bool)

(declare-fun tp!843296 () Bool)

(declare-fun b!2668461 () Bool)

(declare-fun inv!41638 (String!34336) Bool)

(declare-fun inv!41642 (TokenValueInjection!9220) Bool)

(assert (=> b!2668461 (= e!1681493 (and tp!843296 (inv!41638 (tag!5170 (rule!7074 separatorToken!152))) (inv!41642 (transformation!4668 (rule!7074 separatorToken!152))) e!1681495))))

(declare-fun b!2668462 () Bool)

(declare-fun res!1121914 () Bool)

(assert (=> b!2668462 (=> (not res!1121914) (not e!1681485))))

(assert (=> b!2668462 (= res!1121914 (isSeparator!4668 (rule!7074 separatorToken!152)))))

(declare-fun b!2668463 () Bool)

(declare-fun res!1121922 () Bool)

(assert (=> b!2668463 (=> (not res!1121922) (not e!1681485))))

(declare-fun rulesProduceEachTokenIndividuallyList!1487 (LexerInterface!4265 List!30735 List!30736) Bool)

(assert (=> b!2668463 (= res!1121922 (rulesProduceEachTokenIndividuallyList!1487 thiss!14116 rules!1712 l!4335))))

(declare-fun res!1121919 () Bool)

(assert (=> start!259540 (=> (not res!1121919) (not e!1681485))))

(assert (=> start!259540 (= res!1121919 (is-Lexer!4263 thiss!14116))))

(assert (=> start!259540 e!1681485))

(assert (=> start!259540 true))

(declare-fun e!1681497 () Bool)

(assert (=> start!259540 e!1681497))

(assert (=> start!259540 e!1681488))

(assert (=> start!259540 (and (inv!41641 separatorToken!152) e!1681492)))

(declare-fun e!1681489 () Bool)

(assert (=> b!2668464 (= e!1681489 (and tp!843290 tp!843294))))

(declare-fun e!1681490 () Bool)

(assert (=> b!2668465 (= e!1681490 (and tp!843301 tp!843300))))

(declare-fun forall!6481 (List!30736 Int) Bool)

(assert (=> b!2668466 (= e!1681485 (not (forall!6481 l!4335 lambda!99592)))))

(assert (=> b!2668467 (= e!1681495 (and tp!843291 tp!843295))))

(declare-fun b!2668468 () Bool)

(declare-fun res!1121916 () Bool)

(assert (=> b!2668468 (=> (not res!1121916) (not e!1681485))))

(declare-fun sepAndNonSepRulesDisjointChars!1241 (List!30735 List!30735) Bool)

(assert (=> b!2668468 (= res!1121916 (sepAndNonSepRulesDisjointChars!1241 rules!1712 rules!1712))))

(declare-fun e!1681500 () Bool)

(declare-fun tp!843299 () Bool)

(declare-fun b!2668469 () Bool)

(assert (=> b!2668469 (= e!1681500 (and tp!843299 (inv!41638 (tag!5170 (h!36055 rules!1712))) (inv!41642 (transformation!4668 (h!36055 rules!1712))) e!1681489))))

(declare-fun b!2668470 () Bool)

(declare-fun tp!843289 () Bool)

(assert (=> b!2668470 (= e!1681497 (and e!1681500 tp!843289))))

(declare-fun res!1121920 () Bool)

(assert (=> b!2668471 (=> (not res!1121920) (not e!1681485))))

(assert (=> b!2668471 (= res!1121920 (forall!6481 l!4335 lambda!99591))))

(declare-fun b!2668472 () Bool)

(declare-fun res!1121913 () Bool)

(assert (=> b!2668472 (=> (not res!1121913) (not e!1681485))))

(declare-fun contains!5876 (List!30736 Token!8806) Bool)

(assert (=> b!2668472 (= res!1121913 (contains!5876 l!4335 (h!36056 l!4335)))))

(declare-fun b!2668473 () Bool)

(declare-fun tp!843292 () Bool)

(declare-fun e!1681499 () Bool)

(assert (=> b!2668473 (= e!1681499 (and tp!843292 (inv!41638 (tag!5170 (rule!7074 (h!36056 l!4335)))) (inv!41642 (transformation!4668 (rule!7074 (h!36056 l!4335)))) e!1681490))))

(declare-fun b!2668474 () Bool)

(declare-fun res!1121917 () Bool)

(assert (=> b!2668474 (=> (not res!1121917) (not e!1681485))))

(declare-fun isEmpty!17532 (List!30735) Bool)

(assert (=> b!2668474 (= res!1121917 (not (isEmpty!17532 rules!1712)))))

(declare-fun b!2668475 () Bool)

(declare-fun res!1121918 () Bool)

(assert (=> b!2668475 (=> (not res!1121918) (not e!1681485))))

(assert (=> b!2668475 (= res!1121918 (is-Cons!30636 l!4335))))

(declare-fun b!2668476 () Bool)

(declare-fun tp!843297 () Bool)

(assert (=> b!2668476 (= e!1681496 (and (inv!21 (value!150644 (h!36056 l!4335))) e!1681499 tp!843297))))

(declare-fun b!2668477 () Bool)

(declare-fun res!1121915 () Bool)

(assert (=> b!2668477 (=> (not res!1121915) (not e!1681485))))

(declare-fun rulesInvariant!3765 (LexerInterface!4265 List!30735) Bool)

(assert (=> b!2668477 (= res!1121915 (rulesInvariant!3765 thiss!14116 rules!1712))))

(assert (= (and start!259540 res!1121919) b!2668474))

(assert (= (and b!2668474 res!1121917) b!2668477))

(assert (= (and b!2668477 res!1121915) b!2668463))

(assert (= (and b!2668463 res!1121922) b!2668459))

(assert (= (and b!2668459 res!1121921) b!2668462))

(assert (= (and b!2668462 res!1121914) b!2668471))

(assert (= (and b!2668471 res!1121920) b!2668468))

(assert (= (and b!2668468 res!1121916) b!2668475))

(assert (= (and b!2668475 res!1121918) b!2668472))

(assert (= (and b!2668472 res!1121913) b!2668466))

(assert (= b!2668469 b!2668464))

(assert (= b!2668470 b!2668469))

(assert (= (and start!259540 (is-Cons!30635 rules!1712)) b!2668470))

(assert (= b!2668473 b!2668465))

(assert (= b!2668476 b!2668473))

(assert (= b!2668460 b!2668476))

(assert (= (and start!259540 (is-Cons!30636 l!4335)) b!2668460))

(assert (= b!2668461 b!2668467))

(assert (= b!2668458 b!2668461))

(assert (= start!259540 b!2668458))

(declare-fun m!3035255 () Bool)

(assert (=> start!259540 m!3035255))

(declare-fun m!3035257 () Bool)

(assert (=> b!2668459 m!3035257))

(declare-fun m!3035259 () Bool)

(assert (=> b!2668474 m!3035259))

(declare-fun m!3035261 () Bool)

(assert (=> b!2668463 m!3035261))

(declare-fun m!3035263 () Bool)

(assert (=> b!2668468 m!3035263))

(declare-fun m!3035265 () Bool)

(assert (=> b!2668473 m!3035265))

(declare-fun m!3035267 () Bool)

(assert (=> b!2668473 m!3035267))

(declare-fun m!3035269 () Bool)

(assert (=> b!2668466 m!3035269))

(declare-fun m!3035271 () Bool)

(assert (=> b!2668469 m!3035271))

(declare-fun m!3035273 () Bool)

(assert (=> b!2668469 m!3035273))

(declare-fun m!3035275 () Bool)

(assert (=> b!2668477 m!3035275))

(declare-fun m!3035277 () Bool)

(assert (=> b!2668472 m!3035277))

(declare-fun m!3035279 () Bool)

(assert (=> b!2668461 m!3035279))

(declare-fun m!3035281 () Bool)

(assert (=> b!2668461 m!3035281))

(declare-fun m!3035283 () Bool)

(assert (=> b!2668476 m!3035283))

(declare-fun m!3035285 () Bool)

(assert (=> b!2668471 m!3035285))

(declare-fun m!3035287 () Bool)

(assert (=> b!2668460 m!3035287))

(declare-fun m!3035289 () Bool)

(assert (=> b!2668458 m!3035289))

(push 1)

(assert b_and!196793)

(assert b_and!196799)

(assert (not b!2668474))

(assert (not b!2668472))

(assert (not b_next!75543))

(assert b_and!196789)

(assert (not b!2668461))

(assert (not b!2668469))

(assert b_and!196797)

(assert b_and!196795)

(assert (not b_next!75537))

(assert (not b_next!75539))

(assert (not b!2668466))

(assert (not b!2668470))

(assert (not b!2668486))

(assert (not b!2668458))

(assert (not b_next!75541))

(assert (not start!259540))

(assert (not b!2668471))

(assert (not b!2668476))

(assert (not b_next!75533))

(assert b_and!196791)

(assert (not b!2668463))

(assert (not b!2668468))

(assert (not b!2668460))

(assert (not b!2668473))

(assert (not b!2668459))

(assert (not b_next!75535))

(assert (not b!2668477))

(check-sat)

(pop 1)

(push 1)

(assert b_and!196793)

(assert b_and!196789)

(assert b_and!196799)

(assert (not b_next!75539))

(assert (not b_next!75541))

(assert (not b_next!75533))

(assert b_and!196791)

(assert (not b_next!75535))

(assert (not b_next!75543))

(assert b_and!196797)

(assert b_and!196795)

(assert (not b_next!75537))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!763371 () Bool)

(declare-fun res!1121963 () Bool)

(declare-fun e!1681571 () Bool)

(assert (=> d!763371 (=> res!1121963 e!1681571)))

(assert (=> d!763371 (= res!1121963 (is-Nil!30636 l!4335))))

(assert (=> d!763371 (= (forall!6481 l!4335 lambda!99591) e!1681571)))

(declare-fun b!2668568 () Bool)

(declare-fun e!1681572 () Bool)

(assert (=> b!2668568 (= e!1681571 e!1681572)))

(declare-fun res!1121964 () Bool)

(assert (=> b!2668568 (=> (not res!1121964) (not e!1681572))))

(declare-fun dynLambda!13233 (Int Token!8806) Bool)

(assert (=> b!2668568 (= res!1121964 (dynLambda!13233 lambda!99591 (h!36056 l!4335)))))

(declare-fun b!2668569 () Bool)

(assert (=> b!2668569 (= e!1681572 (forall!6481 (t!222937 l!4335) lambda!99591))))

(assert (= (and d!763371 (not res!1121963)) b!2668568))

(assert (= (and b!2668568 res!1121964) b!2668569))

(declare-fun b_lambda!81191 () Bool)

(assert (=> (not b_lambda!81191) (not b!2668568)))

(declare-fun m!3035327 () Bool)

(assert (=> b!2668568 m!3035327))

(declare-fun m!3035329 () Bool)

(assert (=> b!2668569 m!3035329))

(assert (=> b!2668471 d!763371))

(declare-fun d!763373 () Bool)

(declare-fun res!1121971 () Bool)

(declare-fun e!1681575 () Bool)

(assert (=> d!763373 (=> (not res!1121971) (not e!1681575))))

(declare-fun isEmpty!17534 (List!30734) Bool)

(assert (=> d!763373 (= res!1121971 (not (isEmpty!17534 (originalCharacters!5434 (h!36056 l!4335)))))))

(assert (=> d!763373 (= (inv!41641 (h!36056 l!4335)) e!1681575)))

(declare-fun b!2668574 () Bool)

(declare-fun res!1121972 () Bool)

(assert (=> b!2668574 (=> (not res!1121972) (not e!1681575))))

(declare-fun list!11572 (BalanceConc!18766) List!30734)

(declare-fun dynLambda!13234 (Int TokenValue!4890) BalanceConc!18766)

(assert (=> b!2668574 (= res!1121972 (= (originalCharacters!5434 (h!36056 l!4335)) (list!11572 (dynLambda!13234 (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (value!150644 (h!36056 l!4335))))))))

(declare-fun b!2668575 () Bool)

(declare-fun size!23720 (List!30734) Int)

(assert (=> b!2668575 (= e!1681575 (= (size!23718 (h!36056 l!4335)) (size!23720 (originalCharacters!5434 (h!36056 l!4335)))))))

(assert (= (and d!763373 res!1121971) b!2668574))

(assert (= (and b!2668574 res!1121972) b!2668575))

(declare-fun b_lambda!81193 () Bool)

(assert (=> (not b_lambda!81193) (not b!2668574)))

(declare-fun t!222945 () Bool)

(declare-fun tb!149497 () Bool)

(assert (=> (and b!2668465 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335))))) t!222945) tb!149497))

(declare-fun b!2668580 () Bool)

(declare-fun e!1681578 () Bool)

(declare-fun tp!843343 () Bool)

(declare-fun inv!41645 (Conc!9576) Bool)

(assert (=> b!2668580 (= e!1681578 (and (inv!41645 (c!430373 (dynLambda!13234 (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (value!150644 (h!36056 l!4335))))) tp!843343))))

(declare-fun result!184616 () Bool)

(declare-fun inv!41646 (BalanceConc!18766) Bool)

(assert (=> tb!149497 (= result!184616 (and (inv!41646 (dynLambda!13234 (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (value!150644 (h!36056 l!4335)))) e!1681578))))

(assert (= tb!149497 b!2668580))

(declare-fun m!3035331 () Bool)

(assert (=> b!2668580 m!3035331))

(declare-fun m!3035333 () Bool)

(assert (=> tb!149497 m!3035333))

(assert (=> b!2668574 t!222945))

(declare-fun b_and!196813 () Bool)

(assert (= b_and!196791 (and (=> t!222945 result!184616) b_and!196813)))

(declare-fun tb!149499 () Bool)

(declare-fun t!222947 () Bool)

(assert (=> (and b!2668467 (= (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335))))) t!222947) tb!149499))

(declare-fun result!184620 () Bool)

(assert (= result!184620 result!184616))

(assert (=> b!2668574 t!222947))

(declare-fun b_and!196815 () Bool)

(assert (= b_and!196795 (and (=> t!222947 result!184620) b_and!196815)))

(declare-fun tb!149501 () Bool)

(declare-fun t!222949 () Bool)

(assert (=> (and b!2668464 (= (toChars!6465 (transformation!4668 (h!36055 rules!1712))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335))))) t!222949) tb!149501))

(declare-fun result!184622 () Bool)

(assert (= result!184622 result!184616))

(assert (=> b!2668574 t!222949))

(declare-fun b_and!196817 () Bool)

(assert (= b_and!196799 (and (=> t!222949 result!184622) b_and!196817)))

(declare-fun m!3035335 () Bool)

(assert (=> d!763373 m!3035335))

(declare-fun m!3035337 () Bool)

(assert (=> b!2668574 m!3035337))

(assert (=> b!2668574 m!3035337))

(declare-fun m!3035339 () Bool)

(assert (=> b!2668574 m!3035339))

(declare-fun m!3035341 () Bool)

(assert (=> b!2668575 m!3035341))

(assert (=> b!2668460 d!763373))

(declare-fun d!763375 () Bool)

(assert (=> d!763375 (= (inv!41638 (tag!5170 (rule!7074 separatorToken!152))) (= (mod (str.len (value!150643 (tag!5170 (rule!7074 separatorToken!152)))) 2) 0))))

(assert (=> b!2668461 d!763375))

(declare-fun d!763377 () Bool)

(declare-fun res!1121975 () Bool)

(declare-fun e!1681581 () Bool)

(assert (=> d!763377 (=> (not res!1121975) (not e!1681581))))

(declare-fun semiInverseModEq!1933 (Int Int) Bool)

(assert (=> d!763377 (= res!1121975 (semiInverseModEq!1933 (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (toValue!6606 (transformation!4668 (rule!7074 separatorToken!152)))))))

(assert (=> d!763377 (= (inv!41642 (transformation!4668 (rule!7074 separatorToken!152))) e!1681581)))

(declare-fun b!2668583 () Bool)

(declare-fun equivClasses!1834 (Int Int) Bool)

(assert (=> b!2668583 (= e!1681581 (equivClasses!1834 (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (toValue!6606 (transformation!4668 (rule!7074 separatorToken!152)))))))

(assert (= (and d!763377 res!1121975) b!2668583))

(declare-fun m!3035343 () Bool)

(assert (=> d!763377 m!3035343))

(declare-fun m!3035345 () Bool)

(assert (=> b!2668583 m!3035345))

(assert (=> b!2668461 d!763377))

(declare-fun d!763379 () Bool)

(declare-fun lt!940345 () Bool)

(declare-fun content!4350 (List!30736) (Set Token!8806))

(assert (=> d!763379 (= lt!940345 (set.member (h!36056 l!4335) (content!4350 l!4335)))))

(declare-fun e!1681586 () Bool)

(assert (=> d!763379 (= lt!940345 e!1681586)))

(declare-fun res!1121980 () Bool)

(assert (=> d!763379 (=> (not res!1121980) (not e!1681586))))

(assert (=> d!763379 (= res!1121980 (is-Cons!30636 l!4335))))

(assert (=> d!763379 (= (contains!5876 l!4335 (h!36056 l!4335)) lt!940345)))

(declare-fun b!2668588 () Bool)

(declare-fun e!1681587 () Bool)

(assert (=> b!2668588 (= e!1681586 e!1681587)))

(declare-fun res!1121981 () Bool)

(assert (=> b!2668588 (=> res!1121981 e!1681587)))

(assert (=> b!2668588 (= res!1121981 (= (h!36056 l!4335) (h!36056 l!4335)))))

(declare-fun b!2668589 () Bool)

(assert (=> b!2668589 (= e!1681587 (contains!5876 (t!222937 l!4335) (h!36056 l!4335)))))

(assert (= (and d!763379 res!1121980) b!2668588))

(assert (= (and b!2668588 (not res!1121981)) b!2668589))

(declare-fun m!3035347 () Bool)

(assert (=> d!763379 m!3035347))

(declare-fun m!3035349 () Bool)

(assert (=> d!763379 m!3035349))

(declare-fun m!3035351 () Bool)

(assert (=> b!2668589 m!3035351))

(assert (=> b!2668472 d!763379))

(declare-fun d!763381 () Bool)

(assert (=> d!763381 (= (inv!41638 (tag!5170 (rule!7074 (h!36056 l!4335)))) (= (mod (str.len (value!150643 (tag!5170 (rule!7074 (h!36056 l!4335))))) 2) 0))))

(assert (=> b!2668473 d!763381))

(declare-fun d!763383 () Bool)

(declare-fun res!1121982 () Bool)

(declare-fun e!1681588 () Bool)

(assert (=> d!763383 (=> (not res!1121982) (not e!1681588))))

(assert (=> d!763383 (= res!1121982 (semiInverseModEq!1933 (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (toValue!6606 (transformation!4668 (rule!7074 (h!36056 l!4335))))))))

(assert (=> d!763383 (= (inv!41642 (transformation!4668 (rule!7074 (h!36056 l!4335)))) e!1681588)))

(declare-fun b!2668590 () Bool)

(assert (=> b!2668590 (= e!1681588 (equivClasses!1834 (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (toValue!6606 (transformation!4668 (rule!7074 (h!36056 l!4335))))))))

(assert (= (and d!763383 res!1121982) b!2668590))

(declare-fun m!3035353 () Bool)

(assert (=> d!763383 m!3035353))

(declare-fun m!3035355 () Bool)

(assert (=> b!2668590 m!3035355))

(assert (=> b!2668473 d!763383))

(declare-fun bs!479359 () Bool)

(declare-fun d!763385 () Bool)

(assert (= bs!479359 (and d!763385 b!2668471)))

(declare-fun lambda!99601 () Int)

(assert (=> bs!479359 (not (= lambda!99601 lambda!99591))))

(declare-fun bs!479360 () Bool)

(assert (= bs!479360 (and d!763385 b!2668466)))

(assert (=> bs!479360 (= lambda!99601 lambda!99592)))

(declare-fun b!2668614 () Bool)

(declare-fun e!1681606 () Bool)

(assert (=> b!2668614 (= e!1681606 true)))

(declare-fun b!2668613 () Bool)

(declare-fun e!1681605 () Bool)

(assert (=> b!2668613 (= e!1681605 e!1681606)))

(declare-fun b!2668612 () Bool)

(declare-fun e!1681604 () Bool)

(assert (=> b!2668612 (= e!1681604 e!1681605)))

(assert (=> d!763385 e!1681604))

(assert (= b!2668613 b!2668614))

(assert (= b!2668612 b!2668613))

(assert (= (and d!763385 (is-Cons!30635 rules!1712)) b!2668612))

(assert (=> b!2668614 (< (dynLambda!13227 order!16749 (toValue!6606 (transformation!4668 (h!36055 rules!1712)))) (dynLambda!13228 order!16751 lambda!99601))))

(assert (=> b!2668614 (< (dynLambda!13229 order!16753 (toChars!6465 (transformation!4668 (h!36055 rules!1712)))) (dynLambda!13228 order!16751 lambda!99601))))

(assert (=> d!763385 true))

(declare-fun lt!940348 () Bool)

(assert (=> d!763385 (= lt!940348 (forall!6481 l!4335 lambda!99601))))

(declare-fun e!1681603 () Bool)

(assert (=> d!763385 (= lt!940348 e!1681603)))

(declare-fun res!1121991 () Bool)

(assert (=> d!763385 (=> res!1121991 e!1681603)))

(assert (=> d!763385 (= res!1121991 (not (is-Cons!30636 l!4335)))))

(assert (=> d!763385 (not (isEmpty!17532 rules!1712))))

(assert (=> d!763385 (= (rulesProduceEachTokenIndividuallyList!1487 thiss!14116 rules!1712 l!4335) lt!940348)))

(declare-fun b!2668610 () Bool)

(declare-fun e!1681602 () Bool)

(assert (=> b!2668610 (= e!1681603 e!1681602)))

(declare-fun res!1121990 () Bool)

(assert (=> b!2668610 (=> (not res!1121990) (not e!1681602))))

(assert (=> b!2668610 (= res!1121990 (rulesProduceIndividualToken!1977 thiss!14116 rules!1712 (h!36056 l!4335)))))

(declare-fun b!2668611 () Bool)

(assert (=> b!2668611 (= e!1681602 (rulesProduceEachTokenIndividuallyList!1487 thiss!14116 rules!1712 (t!222937 l!4335)))))

(assert (= (and d!763385 (not res!1121991)) b!2668610))

(assert (= (and b!2668610 res!1121990) b!2668611))

(declare-fun m!3035363 () Bool)

(assert (=> d!763385 m!3035363))

(assert (=> d!763385 m!3035259))

(declare-fun m!3035365 () Bool)

(assert (=> b!2668610 m!3035365))

(declare-fun m!3035367 () Bool)

(assert (=> b!2668611 m!3035367))

(assert (=> b!2668463 d!763385))

(declare-fun d!763391 () Bool)

(assert (=> d!763391 (= (isEmpty!17532 rules!1712) (is-Nil!30635 rules!1712))))

(assert (=> b!2668474 d!763391))

(declare-fun b!2668625 () Bool)

(declare-fun e!1681613 () Bool)

(declare-fun inv!17 (TokenValue!4890) Bool)

(assert (=> b!2668625 (= e!1681613 (inv!17 (value!150644 (h!36056 l!4335))))))

(declare-fun d!763393 () Bool)

(declare-fun c!430388 () Bool)

(assert (=> d!763393 (= c!430388 (is-IntegerValue!14670 (value!150644 (h!36056 l!4335))))))

(declare-fun e!1681615 () Bool)

(assert (=> d!763393 (= (inv!21 (value!150644 (h!36056 l!4335))) e!1681615)))

(declare-fun b!2668626 () Bool)

(declare-fun e!1681614 () Bool)

(declare-fun inv!15 (TokenValue!4890) Bool)

(assert (=> b!2668626 (= e!1681614 (inv!15 (value!150644 (h!36056 l!4335))))))

(declare-fun b!2668627 () Bool)

(assert (=> b!2668627 (= e!1681615 e!1681613)))

(declare-fun c!430387 () Bool)

(assert (=> b!2668627 (= c!430387 (is-IntegerValue!14671 (value!150644 (h!36056 l!4335))))))

(declare-fun b!2668628 () Bool)

(declare-fun inv!16 (TokenValue!4890) Bool)

(assert (=> b!2668628 (= e!1681615 (inv!16 (value!150644 (h!36056 l!4335))))))

(declare-fun b!2668629 () Bool)

(declare-fun res!1121994 () Bool)

(assert (=> b!2668629 (=> res!1121994 e!1681614)))

(assert (=> b!2668629 (= res!1121994 (not (is-IntegerValue!14672 (value!150644 (h!36056 l!4335)))))))

(assert (=> b!2668629 (= e!1681613 e!1681614)))

(assert (= (and d!763393 c!430388) b!2668628))

(assert (= (and d!763393 (not c!430388)) b!2668627))

(assert (= (and b!2668627 c!430387) b!2668625))

(assert (= (and b!2668627 (not c!430387)) b!2668629))

(assert (= (and b!2668629 (not res!1121994)) b!2668626))

(declare-fun m!3035369 () Bool)

(assert (=> b!2668625 m!3035369))

(declare-fun m!3035371 () Bool)

(assert (=> b!2668626 m!3035371))

(declare-fun m!3035373 () Bool)

(assert (=> b!2668628 m!3035373))

(assert (=> b!2668476 d!763393))

(declare-fun d!763395 () Bool)

(declare-fun res!1121997 () Bool)

(declare-fun e!1681618 () Bool)

(assert (=> d!763395 (=> (not res!1121997) (not e!1681618))))

(declare-fun rulesValid!1739 (LexerInterface!4265 List!30735) Bool)

(assert (=> d!763395 (= res!1121997 (rulesValid!1739 thiss!14116 rules!1712))))

(assert (=> d!763395 (= (rulesInvariant!3765 thiss!14116 rules!1712) e!1681618)))

(declare-fun b!2668632 () Bool)

(declare-datatypes ((List!30741 0))(
  ( (Nil!30641) (Cons!30641 (h!36061 String!34336) (t!222975 List!30741)) )
))
(declare-fun noDuplicateTag!1735 (LexerInterface!4265 List!30735 List!30741) Bool)

(assert (=> b!2668632 (= e!1681618 (noDuplicateTag!1735 thiss!14116 rules!1712 Nil!30641))))

(assert (= (and d!763395 res!1121997) b!2668632))

(declare-fun m!3035375 () Bool)

(assert (=> d!763395 m!3035375))

(declare-fun m!3035377 () Bool)

(assert (=> b!2668632 m!3035377))

(assert (=> b!2668477 d!763395))

(declare-fun d!763397 () Bool)

(declare-fun res!1121998 () Bool)

(declare-fun e!1681619 () Bool)

(assert (=> d!763397 (=> res!1121998 e!1681619)))

(assert (=> d!763397 (= res!1121998 (is-Nil!30636 l!4335))))

(assert (=> d!763397 (= (forall!6481 l!4335 lambda!99592) e!1681619)))

(declare-fun b!2668633 () Bool)

(declare-fun e!1681620 () Bool)

(assert (=> b!2668633 (= e!1681619 e!1681620)))

(declare-fun res!1121999 () Bool)

(assert (=> b!2668633 (=> (not res!1121999) (not e!1681620))))

(assert (=> b!2668633 (= res!1121999 (dynLambda!13233 lambda!99592 (h!36056 l!4335)))))

(declare-fun b!2668634 () Bool)

(assert (=> b!2668634 (= e!1681620 (forall!6481 (t!222937 l!4335) lambda!99592))))

(assert (= (and d!763397 (not res!1121998)) b!2668633))

(assert (= (and b!2668633 res!1121999) b!2668634))

(declare-fun b_lambda!81195 () Bool)

(assert (=> (not b_lambda!81195) (not b!2668633)))

(declare-fun m!3035379 () Bool)

(assert (=> b!2668633 m!3035379))

(declare-fun m!3035381 () Bool)

(assert (=> b!2668634 m!3035381))

(assert (=> b!2668466 d!763397))

(declare-fun d!763399 () Bool)

(declare-fun res!1122000 () Bool)

(declare-fun e!1681621 () Bool)

(assert (=> d!763399 (=> (not res!1122000) (not e!1681621))))

(assert (=> d!763399 (= res!1122000 (not (isEmpty!17534 (originalCharacters!5434 separatorToken!152))))))

(assert (=> d!763399 (= (inv!41641 separatorToken!152) e!1681621)))

(declare-fun b!2668635 () Bool)

(declare-fun res!1122001 () Bool)

(assert (=> b!2668635 (=> (not res!1122001) (not e!1681621))))

(assert (=> b!2668635 (= res!1122001 (= (originalCharacters!5434 separatorToken!152) (list!11572 (dynLambda!13234 (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (value!150644 separatorToken!152)))))))

(declare-fun b!2668636 () Bool)

(assert (=> b!2668636 (= e!1681621 (= (size!23718 separatorToken!152) (size!23720 (originalCharacters!5434 separatorToken!152))))))

(assert (= (and d!763399 res!1122000) b!2668635))

(assert (= (and b!2668635 res!1122001) b!2668636))

(declare-fun b_lambda!81197 () Bool)

(assert (=> (not b_lambda!81197) (not b!2668635)))

(declare-fun t!222953 () Bool)

(declare-fun tb!149503 () Bool)

(assert (=> (and b!2668465 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152)))) t!222953) tb!149503))

(declare-fun b!2668637 () Bool)

(declare-fun e!1681622 () Bool)

(declare-fun tp!843344 () Bool)

(assert (=> b!2668637 (= e!1681622 (and (inv!41645 (c!430373 (dynLambda!13234 (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (value!150644 separatorToken!152)))) tp!843344))))

(declare-fun result!184624 () Bool)

(assert (=> tb!149503 (= result!184624 (and (inv!41646 (dynLambda!13234 (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (value!150644 separatorToken!152))) e!1681622))))

(assert (= tb!149503 b!2668637))

(declare-fun m!3035383 () Bool)

(assert (=> b!2668637 m!3035383))

(declare-fun m!3035385 () Bool)

(assert (=> tb!149503 m!3035385))

(assert (=> b!2668635 t!222953))

(declare-fun b_and!196819 () Bool)

(assert (= b_and!196813 (and (=> t!222953 result!184624) b_and!196819)))

(declare-fun t!222955 () Bool)

(declare-fun tb!149505 () Bool)

(assert (=> (and b!2668467 (= (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152)))) t!222955) tb!149505))

(declare-fun result!184626 () Bool)

(assert (= result!184626 result!184624))

(assert (=> b!2668635 t!222955))

(declare-fun b_and!196821 () Bool)

(assert (= b_and!196815 (and (=> t!222955 result!184626) b_and!196821)))

(declare-fun tb!149507 () Bool)

(declare-fun t!222957 () Bool)

(assert (=> (and b!2668464 (= (toChars!6465 (transformation!4668 (h!36055 rules!1712))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152)))) t!222957) tb!149507))

(declare-fun result!184628 () Bool)

(assert (= result!184628 result!184624))

(assert (=> b!2668635 t!222957))

(declare-fun b_and!196823 () Bool)

(assert (= b_and!196817 (and (=> t!222957 result!184628) b_and!196823)))

(declare-fun m!3035387 () Bool)

(assert (=> d!763399 m!3035387))

(declare-fun m!3035389 () Bool)

(assert (=> b!2668635 m!3035389))

(assert (=> b!2668635 m!3035389))

(declare-fun m!3035391 () Bool)

(assert (=> b!2668635 m!3035391))

(declare-fun m!3035393 () Bool)

(assert (=> b!2668636 m!3035393))

(assert (=> start!259540 d!763399))

(declare-fun d!763401 () Bool)

(declare-fun res!1122006 () Bool)

(declare-fun e!1681627 () Bool)

(assert (=> d!763401 (=> res!1122006 e!1681627)))

(assert (=> d!763401 (= res!1122006 (not (is-Cons!30635 rules!1712)))))

(assert (=> d!763401 (= (sepAndNonSepRulesDisjointChars!1241 rules!1712 rules!1712) e!1681627)))

(declare-fun b!2668642 () Bool)

(declare-fun e!1681628 () Bool)

(assert (=> b!2668642 (= e!1681627 e!1681628)))

(declare-fun res!1122007 () Bool)

(assert (=> b!2668642 (=> (not res!1122007) (not e!1681628))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!540 (Rule!9136 List!30735) Bool)

(assert (=> b!2668642 (= res!1122007 (ruleDisjointCharsFromAllFromOtherType!540 (h!36055 rules!1712) rules!1712))))

(declare-fun b!2668643 () Bool)

(assert (=> b!2668643 (= e!1681628 (sepAndNonSepRulesDisjointChars!1241 rules!1712 (t!222936 rules!1712)))))

(assert (= (and d!763401 (not res!1122006)) b!2668642))

(assert (= (and b!2668642 res!1122007) b!2668643))

(declare-fun m!3035395 () Bool)

(assert (=> b!2668642 m!3035395))

(declare-fun m!3035397 () Bool)

(assert (=> b!2668643 m!3035397))

(assert (=> b!2668468 d!763401))

(declare-fun d!763403 () Bool)

(assert (=> d!763403 (= (inv!41638 (tag!5170 (h!36055 rules!1712))) (= (mod (str.len (value!150643 (tag!5170 (h!36055 rules!1712)))) 2) 0))))

(assert (=> b!2668469 d!763403))

(declare-fun d!763405 () Bool)

(declare-fun res!1122008 () Bool)

(declare-fun e!1681629 () Bool)

(assert (=> d!763405 (=> (not res!1122008) (not e!1681629))))

(assert (=> d!763405 (= res!1122008 (semiInverseModEq!1933 (toChars!6465 (transformation!4668 (h!36055 rules!1712))) (toValue!6606 (transformation!4668 (h!36055 rules!1712)))))))

(assert (=> d!763405 (= (inv!41642 (transformation!4668 (h!36055 rules!1712))) e!1681629)))

(declare-fun b!2668644 () Bool)

(assert (=> b!2668644 (= e!1681629 (equivClasses!1834 (toChars!6465 (transformation!4668 (h!36055 rules!1712))) (toValue!6606 (transformation!4668 (h!36055 rules!1712)))))))

(assert (= (and d!763405 res!1122008) b!2668644))

(declare-fun m!3035399 () Bool)

(assert (=> d!763405 m!3035399))

(declare-fun m!3035401 () Bool)

(assert (=> b!2668644 m!3035401))

(assert (=> b!2668469 d!763405))

(declare-fun b!2668645 () Bool)

(declare-fun e!1681630 () Bool)

(assert (=> b!2668645 (= e!1681630 (inv!17 (value!150644 separatorToken!152)))))

(declare-fun d!763407 () Bool)

(declare-fun c!430390 () Bool)

(assert (=> d!763407 (= c!430390 (is-IntegerValue!14670 (value!150644 separatorToken!152)))))

(declare-fun e!1681632 () Bool)

(assert (=> d!763407 (= (inv!21 (value!150644 separatorToken!152)) e!1681632)))

(declare-fun b!2668646 () Bool)

(declare-fun e!1681631 () Bool)

(assert (=> b!2668646 (= e!1681631 (inv!15 (value!150644 separatorToken!152)))))

(declare-fun b!2668647 () Bool)

(assert (=> b!2668647 (= e!1681632 e!1681630)))

(declare-fun c!430389 () Bool)

(assert (=> b!2668647 (= c!430389 (is-IntegerValue!14671 (value!150644 separatorToken!152)))))

(declare-fun b!2668648 () Bool)

(assert (=> b!2668648 (= e!1681632 (inv!16 (value!150644 separatorToken!152)))))

(declare-fun b!2668649 () Bool)

(declare-fun res!1122009 () Bool)

(assert (=> b!2668649 (=> res!1122009 e!1681631)))

(assert (=> b!2668649 (= res!1122009 (not (is-IntegerValue!14672 (value!150644 separatorToken!152))))))

(assert (=> b!2668649 (= e!1681630 e!1681631)))

(assert (= (and d!763407 c!430390) b!2668648))

(assert (= (and d!763407 (not c!430390)) b!2668647))

(assert (= (and b!2668647 c!430389) b!2668645))

(assert (= (and b!2668647 (not c!430389)) b!2668649))

(assert (= (and b!2668649 (not res!1122009)) b!2668646))

(declare-fun m!3035403 () Bool)

(assert (=> b!2668645 m!3035403))

(declare-fun m!3035405 () Bool)

(assert (=> b!2668646 m!3035405))

(declare-fun m!3035407 () Bool)

(assert (=> b!2668648 m!3035407))

(assert (=> b!2668458 d!763407))

(declare-fun d!763409 () Bool)

(declare-fun lt!940354 () Bool)

(declare-fun e!1681638 () Bool)

(assert (=> d!763409 (= lt!940354 e!1681638)))

(declare-fun res!1122017 () Bool)

(assert (=> d!763409 (=> (not res!1122017) (not e!1681638))))

(declare-datatypes ((IArray!19161 0))(
  ( (IArray!19162 (innerList!9638 List!30736)) )
))
(declare-datatypes ((Conc!9578 0))(
  ( (Node!9578 (left!23688 Conc!9578) (right!24018 Conc!9578) (csize!19386 Int) (cheight!9789 Int)) (Leaf!14653 (xs!12608 IArray!19161) (csize!19387 Int)) (Empty!9578) )
))
(declare-datatypes ((BalanceConc!18770 0))(
  ( (BalanceConc!18771 (c!430393 Conc!9578)) )
))
(declare-fun list!11573 (BalanceConc!18770) List!30736)

(declare-datatypes ((tuple2!30164 0))(
  ( (tuple2!30165 (_1!17624 BalanceConc!18770) (_2!17624 BalanceConc!18766)) )
))
(declare-fun lex!1918 (LexerInterface!4265 List!30735 BalanceConc!18766) tuple2!30164)

(declare-fun print!1656 (LexerInterface!4265 BalanceConc!18770) BalanceConc!18766)

(declare-fun singletonSeq!2075 (Token!8806) BalanceConc!18770)

(assert (=> d!763409 (= res!1122017 (= (list!11573 (_1!17624 (lex!1918 thiss!14116 rules!1712 (print!1656 thiss!14116 (singletonSeq!2075 separatorToken!152))))) (list!11573 (singletonSeq!2075 separatorToken!152))))))

(declare-fun e!1681637 () Bool)

(assert (=> d!763409 (= lt!940354 e!1681637)))

(declare-fun res!1122018 () Bool)

(assert (=> d!763409 (=> (not res!1122018) (not e!1681637))))

(declare-fun lt!940353 () tuple2!30164)

(declare-fun size!23721 (BalanceConc!18770) Int)

(assert (=> d!763409 (= res!1122018 (= (size!23721 (_1!17624 lt!940353)) 1))))

(assert (=> d!763409 (= lt!940353 (lex!1918 thiss!14116 rules!1712 (print!1656 thiss!14116 (singletonSeq!2075 separatorToken!152))))))

(assert (=> d!763409 (not (isEmpty!17532 rules!1712))))

(assert (=> d!763409 (= (rulesProduceIndividualToken!1977 thiss!14116 rules!1712 separatorToken!152) lt!940354)))

(declare-fun b!2668656 () Bool)

(declare-fun res!1122016 () Bool)

(assert (=> b!2668656 (=> (not res!1122016) (not e!1681637))))

(declare-fun apply!7351 (BalanceConc!18770 Int) Token!8806)

(assert (=> b!2668656 (= res!1122016 (= (apply!7351 (_1!17624 lt!940353) 0) separatorToken!152))))

(declare-fun b!2668657 () Bool)

(declare-fun isEmpty!17535 (BalanceConc!18766) Bool)

(assert (=> b!2668657 (= e!1681637 (isEmpty!17535 (_2!17624 lt!940353)))))

(declare-fun b!2668658 () Bool)

(assert (=> b!2668658 (= e!1681638 (isEmpty!17535 (_2!17624 (lex!1918 thiss!14116 rules!1712 (print!1656 thiss!14116 (singletonSeq!2075 separatorToken!152))))))))

(assert (= (and d!763409 res!1122018) b!2668656))

(assert (= (and b!2668656 res!1122016) b!2668657))

(assert (= (and d!763409 res!1122017) b!2668658))

(assert (=> d!763409 m!3035259))

(declare-fun m!3035409 () Bool)

(assert (=> d!763409 m!3035409))

(declare-fun m!3035411 () Bool)

(assert (=> d!763409 m!3035411))

(declare-fun m!3035413 () Bool)

(assert (=> d!763409 m!3035413))

(assert (=> d!763409 m!3035411))

(declare-fun m!3035415 () Bool)

(assert (=> d!763409 m!3035415))

(assert (=> d!763409 m!3035411))

(declare-fun m!3035417 () Bool)

(assert (=> d!763409 m!3035417))

(assert (=> d!763409 m!3035413))

(declare-fun m!3035419 () Bool)

(assert (=> d!763409 m!3035419))

(declare-fun m!3035421 () Bool)

(assert (=> b!2668656 m!3035421))

(declare-fun m!3035423 () Bool)

(assert (=> b!2668657 m!3035423))

(assert (=> b!2668658 m!3035411))

(assert (=> b!2668658 m!3035411))

(assert (=> b!2668658 m!3035413))

(assert (=> b!2668658 m!3035413))

(assert (=> b!2668658 m!3035419))

(declare-fun m!3035425 () Bool)

(assert (=> b!2668658 m!3035425))

(assert (=> b!2668459 d!763409))

(declare-fun b!2668669 () Bool)

(declare-fun b_free!74853 () Bool)

(declare-fun b_next!75557 () Bool)

(assert (=> b!2668669 (= b_free!74853 (not b_next!75557))))

(declare-fun tp!843355 () Bool)

(declare-fun b_and!196825 () Bool)

(assert (=> b!2668669 (= tp!843355 b_and!196825)))

(declare-fun b_free!74855 () Bool)

(declare-fun b_next!75559 () Bool)

(assert (=> b!2668669 (= b_free!74855 (not b_next!75559))))

(declare-fun t!222960 () Bool)

(declare-fun tb!149509 () Bool)

(assert (=> (and b!2668669 (= (toChars!6465 (transformation!4668 (h!36055 (t!222936 rules!1712)))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335))))) t!222960) tb!149509))

(declare-fun result!184632 () Bool)

(assert (= result!184632 result!184616))

(assert (=> b!2668574 t!222960))

(declare-fun t!222962 () Bool)

(declare-fun tb!149511 () Bool)

(assert (=> (and b!2668669 (= (toChars!6465 (transformation!4668 (h!36055 (t!222936 rules!1712)))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152)))) t!222962) tb!149511))

(declare-fun result!184634 () Bool)

(assert (= result!184634 result!184624))

(assert (=> b!2668635 t!222962))

(declare-fun tp!843356 () Bool)

(declare-fun b_and!196827 () Bool)

(assert (=> b!2668669 (= tp!843356 (and (=> t!222960 result!184632) (=> t!222962 result!184634) b_and!196827))))

(declare-fun e!1681650 () Bool)

(assert (=> b!2668669 (= e!1681650 (and tp!843355 tp!843356))))

(declare-fun b!2668668 () Bool)

(declare-fun tp!843353 () Bool)

(declare-fun e!1681648 () Bool)

(assert (=> b!2668668 (= e!1681648 (and tp!843353 (inv!41638 (tag!5170 (h!36055 (t!222936 rules!1712)))) (inv!41642 (transformation!4668 (h!36055 (t!222936 rules!1712)))) e!1681650))))

(declare-fun b!2668667 () Bool)

(declare-fun e!1681647 () Bool)

(declare-fun tp!843354 () Bool)

(assert (=> b!2668667 (= e!1681647 (and e!1681648 tp!843354))))

(assert (=> b!2668470 (= tp!843289 e!1681647)))

(assert (= b!2668668 b!2668669))

(assert (= b!2668667 b!2668668))

(assert (= (and b!2668470 (is-Cons!30635 (t!222936 rules!1712))) b!2668667))

(declare-fun m!3035427 () Bool)

(assert (=> b!2668668 m!3035427))

(declare-fun m!3035429 () Bool)

(assert (=> b!2668668 m!3035429))

(declare-fun b!2668683 () Bool)

(declare-fun b_free!74857 () Bool)

(declare-fun b_next!75561 () Bool)

(assert (=> b!2668683 (= b_free!74857 (not b_next!75561))))

(declare-fun tp!843369 () Bool)

(declare-fun b_and!196829 () Bool)

(assert (=> b!2668683 (= tp!843369 b_and!196829)))

(declare-fun b_free!74859 () Bool)

(declare-fun b_next!75563 () Bool)

(assert (=> b!2668683 (= b_free!74859 (not b_next!75563))))

(declare-fun t!222964 () Bool)

(declare-fun tb!149513 () Bool)

(assert (=> (and b!2668683 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 (t!222937 l!4335))))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335))))) t!222964) tb!149513))

(declare-fun result!184638 () Bool)

(assert (= result!184638 result!184616))

(assert (=> b!2668574 t!222964))

(declare-fun tb!149515 () Bool)

(declare-fun t!222966 () Bool)

(assert (=> (and b!2668683 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 (t!222937 l!4335))))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152)))) t!222966) tb!149515))

(declare-fun result!184640 () Bool)

(assert (= result!184640 result!184624))

(assert (=> b!2668635 t!222966))

(declare-fun tp!843367 () Bool)

(declare-fun b_and!196831 () Bool)

(assert (=> b!2668683 (= tp!843367 (and (=> t!222964 result!184638) (=> t!222966 result!184640) b_and!196831))))

(declare-fun e!1681664 () Bool)

(assert (=> b!2668460 (= tp!843293 e!1681664)))

(declare-fun e!1681666 () Bool)

(declare-fun e!1681667 () Bool)

(declare-fun tp!843368 () Bool)

(declare-fun b!2668681 () Bool)

(assert (=> b!2668681 (= e!1681667 (and (inv!21 (value!150644 (h!36056 (t!222937 l!4335)))) e!1681666 tp!843368))))

(declare-fun tp!843370 () Bool)

(declare-fun e!1681663 () Bool)

(declare-fun b!2668682 () Bool)

(assert (=> b!2668682 (= e!1681666 (and tp!843370 (inv!41638 (tag!5170 (rule!7074 (h!36056 (t!222937 l!4335))))) (inv!41642 (transformation!4668 (rule!7074 (h!36056 (t!222937 l!4335))))) e!1681663))))

(assert (=> b!2668683 (= e!1681663 (and tp!843369 tp!843367))))

(declare-fun b!2668680 () Bool)

(declare-fun tp!843371 () Bool)

(assert (=> b!2668680 (= e!1681664 (and (inv!41641 (h!36056 (t!222937 l!4335))) e!1681667 tp!843371))))

(assert (= b!2668682 b!2668683))

(assert (= b!2668681 b!2668682))

(assert (= b!2668680 b!2668681))

(assert (= (and b!2668460 (is-Cons!30636 (t!222937 l!4335))) b!2668680))

(declare-fun m!3035431 () Bool)

(assert (=> b!2668681 m!3035431))

(declare-fun m!3035433 () Bool)

(assert (=> b!2668682 m!3035433))

(declare-fun m!3035435 () Bool)

(assert (=> b!2668682 m!3035435))

(declare-fun m!3035437 () Bool)

(assert (=> b!2668680 m!3035437))

(declare-fun b!2668688 () Bool)

(declare-fun e!1681671 () Bool)

(declare-fun tp_is_empty!13795 () Bool)

(declare-fun tp!843374 () Bool)

(assert (=> b!2668688 (= e!1681671 (and tp_is_empty!13795 tp!843374))))

(assert (=> b!2668476 (= tp!843297 e!1681671)))

(assert (= (and b!2668476 (is-Cons!30634 (originalCharacters!5434 (h!36056 l!4335)))) b!2668688))

(declare-fun b!2668703 () Bool)

(declare-fun e!1681676 () Bool)

(declare-fun tp!843389 () Bool)

(assert (=> b!2668703 (= e!1681676 tp!843389)))

(declare-fun b!2668704 () Bool)

(declare-fun tp!843386 () Bool)

(declare-fun tp!843387 () Bool)

(assert (=> b!2668704 (= e!1681676 (and tp!843386 tp!843387))))

(declare-fun b!2668701 () Bool)

(assert (=> b!2668701 (= e!1681676 tp_is_empty!13795)))

(assert (=> b!2668461 (= tp!843296 e!1681676)))

(declare-fun b!2668702 () Bool)

(declare-fun tp!843388 () Bool)

(declare-fun tp!843385 () Bool)

(assert (=> b!2668702 (= e!1681676 (and tp!843388 tp!843385))))

(assert (= (and b!2668461 (is-ElementMatch!7812 (regex!4668 (rule!7074 separatorToken!152)))) b!2668701))

(assert (= (and b!2668461 (is-Concat!12703 (regex!4668 (rule!7074 separatorToken!152)))) b!2668702))

(assert (= (and b!2668461 (is-Star!7812 (regex!4668 (rule!7074 separatorToken!152)))) b!2668703))

(assert (= (and b!2668461 (is-Union!7812 (regex!4668 (rule!7074 separatorToken!152)))) b!2668704))

(declare-fun b!2668709 () Bool)

(declare-fun e!1681679 () Bool)

(declare-fun tp!843394 () Bool)

(assert (=> b!2668709 (= e!1681679 tp!843394)))

(declare-fun b!2668710 () Bool)

(declare-fun tp!843391 () Bool)

(declare-fun tp!843392 () Bool)

(assert (=> b!2668710 (= e!1681679 (and tp!843391 tp!843392))))

(declare-fun b!2668707 () Bool)

(assert (=> b!2668707 (= e!1681679 tp_is_empty!13795)))

(assert (=> b!2668473 (= tp!843292 e!1681679)))

(declare-fun b!2668708 () Bool)

(declare-fun tp!843393 () Bool)

(declare-fun tp!843390 () Bool)

(assert (=> b!2668708 (= e!1681679 (and tp!843393 tp!843390))))

(assert (= (and b!2668473 (is-ElementMatch!7812 (regex!4668 (rule!7074 (h!36056 l!4335))))) b!2668707))

(assert (= (and b!2668473 (is-Concat!12703 (regex!4668 (rule!7074 (h!36056 l!4335))))) b!2668708))

(assert (= (and b!2668473 (is-Star!7812 (regex!4668 (rule!7074 (h!36056 l!4335))))) b!2668709))

(assert (= (and b!2668473 (is-Union!7812 (regex!4668 (rule!7074 (h!36056 l!4335))))) b!2668710))

(declare-fun b!2668713 () Bool)

(declare-fun e!1681682 () Bool)

(assert (=> b!2668713 (= e!1681682 true)))

(declare-fun b!2668712 () Bool)

(declare-fun e!1681681 () Bool)

(assert (=> b!2668712 (= e!1681681 e!1681682)))

(declare-fun b!2668711 () Bool)

(declare-fun e!1681680 () Bool)

(assert (=> b!2668711 (= e!1681680 e!1681681)))

(assert (=> b!2668486 e!1681680))

(assert (= b!2668712 b!2668713))

(assert (= b!2668711 b!2668712))

(assert (= (and b!2668486 (is-Cons!30635 (t!222936 rules!1712))) b!2668711))

(assert (=> b!2668713 (< (dynLambda!13227 order!16749 (toValue!6606 (transformation!4668 (h!36055 (t!222936 rules!1712))))) (dynLambda!13228 order!16751 lambda!99592))))

(assert (=> b!2668713 (< (dynLambda!13229 order!16753 (toChars!6465 (transformation!4668 (h!36055 (t!222936 rules!1712))))) (dynLambda!13228 order!16751 lambda!99592))))

(declare-fun b!2668716 () Bool)

(declare-fun e!1681683 () Bool)

(declare-fun tp!843399 () Bool)

(assert (=> b!2668716 (= e!1681683 tp!843399)))

(declare-fun b!2668717 () Bool)

(declare-fun tp!843396 () Bool)

(declare-fun tp!843397 () Bool)

(assert (=> b!2668717 (= e!1681683 (and tp!843396 tp!843397))))

(declare-fun b!2668714 () Bool)

(assert (=> b!2668714 (= e!1681683 tp_is_empty!13795)))

(assert (=> b!2668469 (= tp!843299 e!1681683)))

(declare-fun b!2668715 () Bool)

(declare-fun tp!843398 () Bool)

(declare-fun tp!843395 () Bool)

(assert (=> b!2668715 (= e!1681683 (and tp!843398 tp!843395))))

(assert (= (and b!2668469 (is-ElementMatch!7812 (regex!4668 (h!36055 rules!1712)))) b!2668714))

(assert (= (and b!2668469 (is-Concat!12703 (regex!4668 (h!36055 rules!1712)))) b!2668715))

(assert (= (and b!2668469 (is-Star!7812 (regex!4668 (h!36055 rules!1712)))) b!2668716))

(assert (= (and b!2668469 (is-Union!7812 (regex!4668 (h!36055 rules!1712)))) b!2668717))

(declare-fun b!2668718 () Bool)

(declare-fun e!1681684 () Bool)

(declare-fun tp!843400 () Bool)

(assert (=> b!2668718 (= e!1681684 (and tp_is_empty!13795 tp!843400))))

(assert (=> b!2668458 (= tp!843298 e!1681684)))

(assert (= (and b!2668458 (is-Cons!30634 (originalCharacters!5434 separatorToken!152))) b!2668718))

(declare-fun b_lambda!81199 () Bool)

(assert (= b_lambda!81191 (or b!2668471 b_lambda!81199)))

(declare-fun bs!479361 () Bool)

(declare-fun d!763411 () Bool)

(assert (= bs!479361 (and d!763411 b!2668471)))

(assert (=> bs!479361 (= (dynLambda!13233 lambda!99591 (h!36056 l!4335)) (not (isSeparator!4668 (rule!7074 (h!36056 l!4335)))))))

(assert (=> b!2668568 d!763411))

(declare-fun b_lambda!81201 () Bool)

(assert (= b_lambda!81193 (or (and b!2668669 b_free!74855 (= (toChars!6465 (transformation!4668 (h!36055 (t!222936 rules!1712)))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))))) (and b!2668467 b_free!74835 (= (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))))) (and b!2668465 b_free!74831) (and b!2668464 b_free!74839 (= (toChars!6465 (transformation!4668 (h!36055 rules!1712))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))))) (and b!2668683 b_free!74859 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 (t!222937 l!4335))))) (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))))) b_lambda!81201)))

(declare-fun b_lambda!81203 () Bool)

(assert (= b_lambda!81195 (or b!2668466 b_lambda!81203)))

(declare-fun bs!479362 () Bool)

(declare-fun d!763413 () Bool)

(assert (= bs!479362 (and d!763413 b!2668466)))

(assert (=> bs!479362 (= (dynLambda!13233 lambda!99592 (h!36056 l!4335)) (rulesProduceIndividualToken!1977 thiss!14116 rules!1712 (h!36056 l!4335)))))

(assert (=> bs!479362 m!3035365))

(assert (=> b!2668633 d!763413))

(declare-fun b_lambda!81205 () Bool)

(assert (= b_lambda!81197 (or (and b!2668464 b_free!74839 (= (toChars!6465 (transformation!4668 (h!36055 rules!1712))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))))) (and b!2668465 b_free!74831 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 l!4335)))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))))) (and b!2668467 b_free!74835) (and b!2668669 b_free!74855 (= (toChars!6465 (transformation!4668 (h!36055 (t!222936 rules!1712)))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))))) (and b!2668683 b_free!74859 (= (toChars!6465 (transformation!4668 (rule!7074 (h!36056 (t!222937 l!4335))))) (toChars!6465 (transformation!4668 (rule!7074 separatorToken!152))))) b_lambda!81205)))

(push 1)

(assert (not b!2668680))

(assert (not b!2668704))

(assert (not d!763377))

(assert (not b!2668703))

(assert b_and!196825)

(assert b_and!196821)

(assert b_and!196831)

(assert (not d!763399))

(assert (not b_next!75543))

(assert (not b!2668612))

(assert (not b_next!75559))

(assert (not b!2668702))

(assert (not b!2668646))

(assert tp_is_empty!13795)

(assert (not d!763395))

(assert (not b!2668644))

(assert (not b!2668688))

(assert (not b!2668583))

(assert (not b!2668682))

(assert b_and!196793)

(assert (not b!2668575))

(assert (not b!2668658))

(assert b_and!196789)

(assert (not d!763409))

(assert (not b!2668645))

(assert (not b!2668626))

(assert (not d!763385))

(assert (not b!2668667))

(assert (not b!2668636))

(assert b_and!196797)

(assert (not b_next!75563))

(assert (not b_next!75537))

(assert b_and!196829)

(assert (not b!2668711))

(assert (not b!2668668))

(assert (not b_next!75539))

(assert b_and!196819)

(assert (not b!2668611))

(assert (not b!2668648))

(assert (not b!2668569))

(assert (not b!2668710))

(assert (not b!2668681))

(assert (not b!2668657))

(assert (not b_next!75541))

(assert (not bs!479362))

(assert (not b_lambda!81201))

(assert b_and!196827)

(assert (not b!2668717))

(assert (not b!2668590))

(assert (not b_lambda!81205))

(assert (not b_lambda!81203))

(assert (not d!763379))

(assert (not b_next!75533))

(assert (not b!2668589))

(assert (not b!2668708))

(assert (not b!2668625))

(assert (not b!2668628))

(assert (not b_lambda!81199))

(assert (not b!2668716))

(assert (not b!2668610))

(assert (not b!2668580))

(assert (not b_next!75561))

(assert (not tb!149503))

(assert (not tb!149497))

(assert (not b!2668637))

(assert (not b!2668718))

(assert b_and!196823)

(assert (not b!2668715))

(assert (not b_next!75557))

(assert (not b!2668632))

(assert (not d!763383))

(assert (not b!2668642))

(assert (not b!2668643))

(assert (not b!2668709))

(assert (not b!2668634))

(assert (not b!2668635))

(assert (not b!2668574))

(assert (not d!763373))

(assert (not b_next!75535))

(assert (not d!763405))

(assert (not b!2668656))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!75559))

(assert b_and!196793)

(assert b_and!196789)

(assert (not b_next!75541))

(assert b_and!196827)

(assert (not b_next!75533))

(assert (not b_next!75561))

(assert b_and!196825)

(assert b_and!196821)

(assert b_and!196831)

(assert (not b_next!75535))

(assert (not b_next!75543))

(assert b_and!196797)

(assert (not b_next!75563))

(assert (not b_next!75537))

(assert b_and!196829)

(assert (not b_next!75539))

(assert b_and!196819)

(assert b_and!196823)

(assert (not b_next!75557))

(check-sat)

(pop 1)

