; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192024 () Bool)

(assert start!192024)

(declare-fun b!1915085 () Bool)

(declare-fun b_free!54225 () Bool)

(declare-fun b_next!54929 () Bool)

(assert (=> b!1915085 (= b_free!54225 (not b_next!54929))))

(declare-fun tp!546551 () Bool)

(declare-fun b_and!149335 () Bool)

(assert (=> b!1915085 (= tp!546551 b_and!149335)))

(declare-fun b_free!54227 () Bool)

(declare-fun b_next!54931 () Bool)

(assert (=> b!1915085 (= b_free!54227 (not b_next!54931))))

(declare-fun tp!546555 () Bool)

(declare-fun b_and!149337 () Bool)

(assert (=> b!1915085 (= tp!546555 b_and!149337)))

(declare-fun b!1915081 () Bool)

(declare-fun b_free!54229 () Bool)

(declare-fun b_next!54933 () Bool)

(assert (=> b!1915081 (= b_free!54229 (not b_next!54933))))

(declare-fun tp!546562 () Bool)

(declare-fun b_and!149339 () Bool)

(assert (=> b!1915081 (= tp!546562 b_and!149339)))

(declare-fun b_free!54231 () Bool)

(declare-fun b_next!54935 () Bool)

(assert (=> b!1915081 (= b_free!54231 (not b_next!54935))))

(declare-fun tp!546550 () Bool)

(declare-fun b_and!149341 () Bool)

(assert (=> b!1915081 (= tp!546550 b_and!149341)))

(declare-fun b!1915055 () Bool)

(declare-fun b_free!54233 () Bool)

(declare-fun b_next!54937 () Bool)

(assert (=> b!1915055 (= b_free!54233 (not b_next!54937))))

(declare-fun tp!546559 () Bool)

(declare-fun b_and!149343 () Bool)

(assert (=> b!1915055 (= tp!546559 b_and!149343)))

(declare-fun b_free!54235 () Bool)

(declare-fun b_next!54939 () Bool)

(assert (=> b!1915055 (= b_free!54235 (not b_next!54939))))

(declare-fun tp!546560 () Bool)

(declare-fun b_and!149345 () Bool)

(assert (=> b!1915055 (= tp!546560 b_and!149345)))

(declare-fun b!1915051 () Bool)

(declare-fun e!1223447 () Bool)

(assert (=> b!1915051 (= e!1223447 false)))

(declare-fun b!1915052 () Bool)

(declare-fun res!855783 () Bool)

(declare-fun e!1223448 () Bool)

(assert (=> b!1915052 (=> (not res!855783) (not e!1223448))))

(declare-datatypes ((List!21714 0))(
  ( (Nil!21632) (Cons!21632 (h!27033 (_ BitVec 16)) (t!178395 List!21714)) )
))
(declare-datatypes ((TokenValue!3998 0))(
  ( (FloatLiteralValue!7996 (text!28431 List!21714)) (TokenValueExt!3997 (__x!13494 Int)) (Broken!19990 (value!121632 List!21714)) (Object!4079) (End!3998) (Def!3998) (Underscore!3998) (Match!3998) (Else!3998) (Error!3998) (Case!3998) (If!3998) (Extends!3998) (Abstract!3998) (Class!3998) (Val!3998) (DelimiterValue!7996 (del!4058 List!21714)) (KeywordValue!4004 (value!121633 List!21714)) (CommentValue!7996 (value!121634 List!21714)) (WhitespaceValue!7996 (value!121635 List!21714)) (IndentationValue!3998 (value!121636 List!21714)) (String!25107) (Int32!3998) (Broken!19991 (value!121637 List!21714)) (Boolean!3999) (Unit!36023) (OperatorValue!4001 (op!4058 List!21714)) (IdentifierValue!7996 (value!121638 List!21714)) (IdentifierValue!7997 (value!121639 List!21714)) (WhitespaceValue!7997 (value!121640 List!21714)) (True!7996) (False!7996) (Broken!19992 (value!121641 List!21714)) (Broken!19993 (value!121642 List!21714)) (True!7997) (RightBrace!3998) (RightBracket!3998) (Colon!3998) (Null!3998) (Comma!3998) (LeftBracket!3998) (False!7997) (LeftBrace!3998) (ImaginaryLiteralValue!3998 (text!28432 List!21714)) (StringLiteralValue!11994 (value!121643 List!21714)) (EOFValue!3998 (value!121644 List!21714)) (IdentValue!3998 (value!121645 List!21714)) (DelimiterValue!7997 (value!121646 List!21714)) (DedentValue!3998 (value!121647 List!21714)) (NewLineValue!3998 (value!121648 List!21714)) (IntegerValue!11994 (value!121649 (_ BitVec 32)) (text!28433 List!21714)) (IntegerValue!11995 (value!121650 Int) (text!28434 List!21714)) (Times!3998) (Or!3998) (Equal!3998) (Minus!3998) (Broken!19994 (value!121651 List!21714)) (And!3998) (Div!3998) (LessEqual!3998) (Mod!3998) (Concat!9285) (Not!3998) (Plus!3998) (SpaceValue!3998 (value!121652 List!21714)) (IntegerValue!11996 (value!121653 Int) (text!28435 List!21714)) (StringLiteralValue!11995 (text!28436 List!21714)) (FloatLiteralValue!7997 (text!28437 List!21714)) (BytesLiteralValue!3998 (value!121654 List!21714)) (CommentValue!7997 (value!121655 List!21714)) (StringLiteralValue!11996 (value!121656 List!21714)) (ErrorTokenValue!3998 (msg!4059 List!21714)) )
))
(declare-datatypes ((C!10720 0))(
  ( (C!10721 (val!6312 Int)) )
))
(declare-datatypes ((List!21715 0))(
  ( (Nil!21633) (Cons!21633 (h!27034 C!10720) (t!178396 List!21715)) )
))
(declare-datatypes ((IArray!14437 0))(
  ( (IArray!14438 (innerList!7276 List!21715)) )
))
(declare-datatypes ((Conc!7216 0))(
  ( (Node!7216 (left!17277 Conc!7216) (right!17607 Conc!7216) (csize!14662 Int) (cheight!7427 Int)) (Leaf!10610 (xs!10110 IArray!14437) (csize!14663 Int)) (Empty!7216) )
))
(declare-datatypes ((BalanceConc!14248 0))(
  ( (BalanceConc!14249 (c!311792 Conc!7216)) )
))
(declare-datatypes ((TokenValueInjection!7580 0))(
  ( (TokenValueInjection!7581 (toValue!5491 Int) (toChars!5350 Int)) )
))
(declare-datatypes ((String!25108 0))(
  ( (String!25109 (value!121657 String)) )
))
(declare-datatypes ((Regex!5287 0))(
  ( (ElementMatch!5287 (c!311793 C!10720)) (Concat!9286 (regOne!11086 Regex!5287) (regTwo!11086 Regex!5287)) (EmptyExpr!5287) (Star!5287 (reg!5616 Regex!5287)) (EmptyLang!5287) (Union!5287 (regOne!11087 Regex!5287) (regTwo!11087 Regex!5287)) )
))
(declare-datatypes ((Rule!7524 0))(
  ( (Rule!7525 (regex!3862 Regex!5287) (tag!4300 String!25108) (isSeparator!3862 Bool) (transformation!3862 TokenValueInjection!7580)) )
))
(declare-datatypes ((List!21716 0))(
  ( (Nil!21634) (Cons!21634 (h!27035 Rule!7524) (t!178397 List!21716)) )
))
(declare-fun rules!3198 () List!21716)

(declare-fun sepAndNonSepRulesDisjointChars!960 (List!21716 List!21716) Bool)

(assert (=> b!1915052 (= res!855783 (sepAndNonSepRulesDisjointChars!960 rules!3198 rules!3198))))

(declare-fun b!1915054 () Bool)

(declare-fun e!1223444 () Bool)

(declare-datatypes ((Token!7276 0))(
  ( (Token!7277 (value!121658 TokenValue!3998) (rule!6063 Rule!7524) (size!17002 Int) (originalCharacters!4669 List!21715)) )
))
(declare-datatypes ((List!21717 0))(
  ( (Nil!21635) (Cons!21635 (h!27036 Token!7276) (t!178398 List!21717)) )
))
(declare-fun tokens!598 () List!21717)

(declare-fun lt!733718 () Rule!7524)

(assert (=> b!1915054 (= e!1223444 (= (rule!6063 (h!27036 tokens!598)) lt!733718))))

(declare-fun e!1223449 () Bool)

(assert (=> b!1915055 (= e!1223449 (and tp!546559 tp!546560))))

(declare-fun b!1915056 () Bool)

(declare-fun res!855773 () Bool)

(assert (=> b!1915056 (=> (not res!855773) (not e!1223448))))

(declare-fun isEmpty!13317 (List!21716) Bool)

(assert (=> b!1915056 (= res!855773 (not (isEmpty!13317 rules!3198)))))

(declare-fun separatorToken!354 () Token!7276)

(declare-fun e!1223453 () Bool)

(declare-fun tp!546561 () Bool)

(declare-fun b!1915057 () Bool)

(declare-fun inv!28728 (String!25108) Bool)

(declare-fun inv!28731 (TokenValueInjection!7580) Bool)

(assert (=> b!1915057 (= e!1223453 (and tp!546561 (inv!28728 (tag!4300 (rule!6063 separatorToken!354))) (inv!28731 (transformation!3862 (rule!6063 separatorToken!354))) e!1223449))))

(declare-fun b!1915058 () Bool)

(declare-fun res!855778 () Bool)

(declare-fun e!1223443 () Bool)

(assert (=> b!1915058 (=> res!855778 e!1223443)))

(declare-datatypes ((LexerInterface!3475 0))(
  ( (LexerInterfaceExt!3472 (__x!13495 Int)) (Lexer!3473) )
))
(declare-fun thiss!23328 () LexerInterface!3475)

(declare-datatypes ((tuple2!20362 0))(
  ( (tuple2!20363 (_1!11650 Token!7276) (_2!11650 List!21715)) )
))
(declare-datatypes ((Option!4429 0))(
  ( (None!4428) (Some!4428 (v!26493 tuple2!20362)) )
))
(declare-fun isDefined!3727 (Option!4429) Bool)

(declare-fun maxPrefix!1921 (LexerInterface!3475 List!21716 List!21715) Option!4429)

(declare-fun printWithSeparatorTokenWhenNeededList!518 (LexerInterface!3475 List!21716 List!21717 Token!7276) List!21715)

(assert (=> b!1915058 (= res!855778 (not (isDefined!3727 (maxPrefix!1921 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!518 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1915059 () Bool)

(declare-fun e!1223456 () Bool)

(declare-fun e!1223454 () Bool)

(assert (=> b!1915059 (= e!1223456 e!1223454)))

(declare-fun res!855761 () Bool)

(assert (=> b!1915059 (=> res!855761 e!1223454)))

(declare-fun lt!733728 () List!21715)

(declare-fun matchR!2573 (Regex!5287 List!21715) Bool)

(assert (=> b!1915059 (= res!855761 (not (matchR!2573 (regex!3862 (rule!6063 (h!27036 tokens!598))) lt!733728)))))

(declare-fun ruleValid!1181 (LexerInterface!3475 Rule!7524) Bool)

(assert (=> b!1915059 (ruleValid!1181 thiss!23328 (rule!6063 (h!27036 tokens!598)))))

(declare-datatypes ((Unit!36024 0))(
  ( (Unit!36025) )
))
(declare-fun lt!733712 () Unit!36024)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!678 (LexerInterface!3475 Rule!7524 List!21716) Unit!36024)

(assert (=> b!1915059 (= lt!733712 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!678 thiss!23328 (rule!6063 (h!27036 tokens!598)) rules!3198))))

(declare-fun b!1915060 () Bool)

(declare-fun res!855785 () Bool)

(assert (=> b!1915060 (=> res!855785 e!1223456)))

(assert (=> b!1915060 (= res!855785 (isSeparator!3862 (rule!6063 (h!27036 tokens!598))))))

(declare-fun b!1915061 () Bool)

(declare-fun res!855788 () Bool)

(assert (=> b!1915061 (=> (not res!855788) (not e!1223448))))

(assert (=> b!1915061 (= res!855788 (isSeparator!3862 (rule!6063 separatorToken!354)))))

(declare-fun b!1915062 () Bool)

(declare-fun e!1223434 () Unit!36024)

(declare-fun Unit!36026 () Unit!36024)

(assert (=> b!1915062 (= e!1223434 Unit!36026)))

(declare-fun lt!733702 () C!10720)

(declare-fun lt!733722 () List!21715)

(declare-fun lt!733724 () Unit!36024)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!270 (Regex!5287 List!21715 C!10720) Unit!36024)

(assert (=> b!1915062 (= lt!733724 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!270 (regex!3862 (rule!6063 separatorToken!354)) lt!733722 lt!733702))))

(declare-fun res!855768 () Bool)

(assert (=> b!1915062 (= res!855768 (not (matchR!2573 (regex!3862 (rule!6063 separatorToken!354)) lt!733722)))))

(assert (=> b!1915062 (=> (not res!855768) (not e!1223447))))

(assert (=> b!1915062 e!1223447))

(declare-fun b!1915063 () Bool)

(declare-fun res!855763 () Bool)

(assert (=> b!1915063 (=> res!855763 e!1223454)))

(declare-fun lt!733726 () List!21715)

(declare-fun isEmpty!13318 (List!21715) Bool)

(assert (=> b!1915063 (= res!855763 (isEmpty!13318 lt!733726))))

(declare-fun b!1915064 () Bool)

(declare-fun e!1223435 () Bool)

(assert (=> b!1915064 (= e!1223454 e!1223435)))

(declare-fun res!855782 () Bool)

(assert (=> b!1915064 (=> res!855782 e!1223435)))

(declare-fun lt!733720 () List!21715)

(declare-fun lt!733713 () C!10720)

(declare-fun contains!3928 (List!21715 C!10720) Bool)

(assert (=> b!1915064 (= res!855782 (contains!3928 lt!733720 lt!733713))))

(declare-fun head!4470 (List!21715) C!10720)

(assert (=> b!1915064 (= lt!733713 (head!4470 lt!733726))))

(declare-fun b!1915053 () Bool)

(declare-fun res!855787 () Bool)

(assert (=> b!1915053 (=> (not res!855787) (not e!1223448))))

(declare-fun rulesInvariant!3082 (LexerInterface!3475 List!21716) Bool)

(assert (=> b!1915053 (= res!855787 (rulesInvariant!3082 thiss!23328 rules!3198))))

(declare-fun res!855776 () Bool)

(assert (=> start!192024 (=> (not res!855776) (not e!1223448))))

(get-info :version)

(assert (=> start!192024 (= res!855776 ((_ is Lexer!3473) thiss!23328))))

(assert (=> start!192024 e!1223448))

(assert (=> start!192024 true))

(declare-fun e!1223446 () Bool)

(assert (=> start!192024 e!1223446))

(declare-fun e!1223440 () Bool)

(assert (=> start!192024 e!1223440))

(declare-fun e!1223433 () Bool)

(declare-fun inv!28732 (Token!7276) Bool)

(assert (=> start!192024 (and (inv!28732 separatorToken!354) e!1223433)))

(declare-fun b!1915065 () Bool)

(declare-fun e!1223438 () Bool)

(declare-fun tp!546552 () Bool)

(assert (=> b!1915065 (= e!1223446 (and e!1223438 tp!546552))))

(declare-fun b!1915066 () Bool)

(declare-fun res!855770 () Bool)

(assert (=> b!1915066 (=> (not res!855770) (not e!1223448))))

(declare-fun rulesProduceEachTokenIndividuallyList!1206 (LexerInterface!3475 List!21716 List!21717) Bool)

(assert (=> b!1915066 (= res!855770 (rulesProduceEachTokenIndividuallyList!1206 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1915067 () Bool)

(declare-fun e!1223442 () Bool)

(declare-fun e!1223439 () Bool)

(declare-fun tp!546558 () Bool)

(assert (=> b!1915067 (= e!1223442 (and tp!546558 (inv!28728 (tag!4300 (rule!6063 (h!27036 tokens!598)))) (inv!28731 (transformation!3862 (rule!6063 (h!27036 tokens!598)))) e!1223439))))

(declare-fun b!1915068 () Bool)

(declare-fun res!855772 () Bool)

(assert (=> b!1915068 (=> (not res!855772) (not e!1223448))))

(declare-fun lambda!74753 () Int)

(declare-fun forall!4556 (List!21717 Int) Bool)

(assert (=> b!1915068 (= res!855772 (forall!4556 tokens!598 lambda!74753))))

(declare-fun b!1915069 () Bool)

(declare-fun e!1223457 () Bool)

(assert (=> b!1915069 (= e!1223457 e!1223456)))

(declare-fun res!855779 () Bool)

(assert (=> b!1915069 (=> res!855779 e!1223456)))

(declare-fun lt!733721 () List!21715)

(declare-fun lt!733698 () List!21715)

(assert (=> b!1915069 (= res!855779 (or (not (= lt!733721 lt!733698)) (not (= lt!733698 lt!733728)) (not (= lt!733721 lt!733728))))))

(declare-fun printList!1058 (LexerInterface!3475 List!21717) List!21715)

(assert (=> b!1915069 (= lt!733698 (printList!1058 thiss!23328 (Cons!21635 (h!27036 tokens!598) Nil!21635)))))

(declare-fun lt!733707 () BalanceConc!14248)

(declare-fun list!8790 (BalanceConc!14248) List!21715)

(assert (=> b!1915069 (= lt!733721 (list!8790 lt!733707))))

(declare-datatypes ((IArray!14439 0))(
  ( (IArray!14440 (innerList!7277 List!21717)) )
))
(declare-datatypes ((Conc!7217 0))(
  ( (Node!7217 (left!17278 Conc!7217) (right!17608 Conc!7217) (csize!14664 Int) (cheight!7428 Int)) (Leaf!10611 (xs!10111 IArray!14439) (csize!14665 Int)) (Empty!7217) )
))
(declare-datatypes ((BalanceConc!14250 0))(
  ( (BalanceConc!14251 (c!311794 Conc!7217)) )
))
(declare-fun lt!733704 () BalanceConc!14250)

(declare-fun printTailRec!992 (LexerInterface!3475 BalanceConc!14250 Int BalanceConc!14248) BalanceConc!14248)

(assert (=> b!1915069 (= lt!733707 (printTailRec!992 thiss!23328 lt!733704 0 (BalanceConc!14249 Empty!7216)))))

(declare-fun print!1485 (LexerInterface!3475 BalanceConc!14250) BalanceConc!14248)

(assert (=> b!1915069 (= lt!733707 (print!1485 thiss!23328 lt!733704))))

(declare-fun singletonSeq!1885 (Token!7276) BalanceConc!14250)

(assert (=> b!1915069 (= lt!733704 (singletonSeq!1885 (h!27036 tokens!598)))))

(assert (=> b!1915069 (not (contains!3928 lt!733720 lt!733702))))

(declare-fun usedCharacters!370 (Regex!5287) List!21715)

(assert (=> b!1915069 (= lt!733720 (usedCharacters!370 (regex!3862 (rule!6063 (h!27036 tokens!598)))))))

(declare-fun lt!733727 () Unit!36024)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!66 (LexerInterface!3475 List!21716 List!21716 Rule!7524 Rule!7524 C!10720) Unit!36024)

(assert (=> b!1915069 (= lt!733727 (lemmaNonSepRuleNotContainsCharContainedInASepRule!66 thiss!23328 rules!3198 rules!3198 (rule!6063 (h!27036 tokens!598)) (rule!6063 separatorToken!354) lt!733702))))

(declare-fun lt!733700 () Unit!36024)

(assert (=> b!1915069 (= lt!733700 e!1223434)))

(declare-fun c!311791 () Bool)

(declare-fun lt!733711 () List!21715)

(assert (=> b!1915069 (= c!311791 (not (contains!3928 lt!733711 lt!733702)))))

(assert (=> b!1915069 (= lt!733702 (head!4470 lt!733722))))

(assert (=> b!1915069 (= lt!733711 (usedCharacters!370 (regex!3862 (rule!6063 separatorToken!354))))))

(declare-fun lt!733706 () List!21715)

(declare-fun lt!733716 () List!21715)

(assert (=> b!1915069 (= lt!733706 lt!733716)))

(declare-fun ++!5815 (List!21715 List!21715) List!21715)

(assert (=> b!1915069 (= lt!733716 (++!5815 lt!733728 lt!733726))))

(declare-fun lt!733695 () List!21715)

(declare-fun lt!733703 () List!21715)

(assert (=> b!1915069 (= lt!733706 (++!5815 lt!733695 lt!733703))))

(assert (=> b!1915069 (= lt!733726 (++!5815 lt!733722 lt!733703))))

(assert (=> b!1915069 (= lt!733695 (++!5815 lt!733728 lt!733722))))

(declare-fun lt!733714 () Unit!36024)

(declare-fun lemmaConcatAssociativity!1177 (List!21715 List!21715 List!21715) Unit!36024)

(assert (=> b!1915069 (= lt!733714 (lemmaConcatAssociativity!1177 lt!733728 lt!733722 lt!733703))))

(declare-fun b!1915070 () Bool)

(declare-fun tp!546553 () Bool)

(declare-fun e!1223452 () Bool)

(declare-fun inv!21 (TokenValue!3998) Bool)

(assert (=> b!1915070 (= e!1223452 (and (inv!21 (value!121658 (h!27036 tokens!598))) e!1223442 tp!546553))))

(declare-fun b!1915071 () Bool)

(declare-fun e!1223455 () Bool)

(declare-fun e!1223451 () Bool)

(assert (=> b!1915071 (= e!1223455 e!1223451)))

(declare-fun res!855767 () Bool)

(assert (=> b!1915071 (=> (not res!855767) (not e!1223451))))

(declare-fun lt!733697 () Rule!7524)

(assert (=> b!1915071 (= res!855767 (matchR!2573 (regex!3862 lt!733697) lt!733722))))

(declare-datatypes ((Option!4430 0))(
  ( (None!4429) (Some!4429 (v!26494 Rule!7524)) )
))
(declare-fun lt!733709 () Option!4430)

(declare-fun get!6767 (Option!4430) Rule!7524)

(assert (=> b!1915071 (= lt!733697 (get!6767 lt!733709))))

(declare-fun b!1915072 () Bool)

(assert (=> b!1915072 (= e!1223448 (not e!1223457))))

(declare-fun res!855769 () Bool)

(assert (=> b!1915072 (=> res!855769 e!1223457)))

(declare-fun lt!733701 () Bool)

(declare-fun lt!733699 () Option!4429)

(assert (=> b!1915072 (= res!855769 (or (and (not lt!733701) (= (_1!11650 (v!26493 lt!733699)) (h!27036 tokens!598))) lt!733701 (= (_1!11650 (v!26493 lt!733699)) (h!27036 tokens!598))))))

(assert (=> b!1915072 (= lt!733701 (not ((_ is Some!4428) lt!733699)))))

(assert (=> b!1915072 (= lt!733699 (maxPrefix!1921 thiss!23328 rules!3198 (++!5815 lt!733728 lt!733703)))))

(assert (=> b!1915072 (= lt!733703 (printWithSeparatorTokenWhenNeededList!518 thiss!23328 rules!3198 (t!178398 tokens!598) separatorToken!354))))

(declare-fun e!1223436 () Bool)

(assert (=> b!1915072 e!1223436))

(declare-fun res!855780 () Bool)

(assert (=> b!1915072 (=> (not res!855780) (not e!1223436))))

(declare-fun lt!733719 () Option!4430)

(declare-fun isDefined!3728 (Option!4430) Bool)

(assert (=> b!1915072 (= res!855780 (isDefined!3728 lt!733719))))

(declare-fun getRuleFromTag!705 (LexerInterface!3475 List!21716 String!25108) Option!4430)

(assert (=> b!1915072 (= lt!733719 (getRuleFromTag!705 thiss!23328 rules!3198 (tag!4300 (rule!6063 (h!27036 tokens!598)))))))

(declare-fun lt!733717 () Unit!36024)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!705 (LexerInterface!3475 List!21716 List!21715 Token!7276) Unit!36024)

(assert (=> b!1915072 (= lt!733717 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!705 thiss!23328 rules!3198 lt!733728 (h!27036 tokens!598)))))

(declare-fun lt!733708 () tuple2!20362)

(assert (=> b!1915072 (= (_1!11650 lt!733708) (h!27036 tokens!598))))

(declare-fun lt!733725 () Option!4429)

(declare-fun get!6768 (Option!4429) tuple2!20362)

(assert (=> b!1915072 (= lt!733708 (get!6768 lt!733725))))

(assert (=> b!1915072 (isDefined!3727 lt!733725)))

(assert (=> b!1915072 (= lt!733725 (maxPrefix!1921 thiss!23328 rules!3198 lt!733728))))

(declare-fun lt!733723 () BalanceConc!14248)

(assert (=> b!1915072 (= lt!733728 (list!8790 lt!733723))))

(assert (=> b!1915072 e!1223455))

(declare-fun res!855774 () Bool)

(assert (=> b!1915072 (=> (not res!855774) (not e!1223455))))

(assert (=> b!1915072 (= res!855774 (isDefined!3728 lt!733709))))

(assert (=> b!1915072 (= lt!733709 (getRuleFromTag!705 thiss!23328 rules!3198 (tag!4300 (rule!6063 separatorToken!354))))))

(declare-fun lt!733710 () Unit!36024)

(assert (=> b!1915072 (= lt!733710 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!705 thiss!23328 rules!3198 lt!733722 separatorToken!354))))

(declare-fun charsOf!2418 (Token!7276) BalanceConc!14248)

(assert (=> b!1915072 (= lt!733722 (list!8790 (charsOf!2418 separatorToken!354)))))

(declare-fun lt!733696 () Unit!36024)

(declare-fun lemmaEqSameImage!570 (TokenValueInjection!7580 BalanceConc!14248 BalanceConc!14248) Unit!36024)

(declare-fun seqFromList!2734 (List!21715) BalanceConc!14248)

(assert (=> b!1915072 (= lt!733696 (lemmaEqSameImage!570 (transformation!3862 (rule!6063 (h!27036 tokens!598))) lt!733723 (seqFromList!2734 (originalCharacters!4669 (h!27036 tokens!598)))))))

(declare-fun lt!733705 () Unit!36024)

(declare-fun lemmaSemiInverse!841 (TokenValueInjection!7580 BalanceConc!14248) Unit!36024)

(assert (=> b!1915072 (= lt!733705 (lemmaSemiInverse!841 (transformation!3862 (rule!6063 (h!27036 tokens!598))) lt!733723))))

(assert (=> b!1915072 (= lt!733723 (charsOf!2418 (h!27036 tokens!598)))))

(declare-fun b!1915073 () Bool)

(assert (=> b!1915073 (= e!1223435 e!1223443)))

(declare-fun res!855777 () Bool)

(assert (=> b!1915073 (=> res!855777 e!1223443)))

(declare-fun isEmpty!13319 (List!21717) Bool)

(assert (=> b!1915073 (= res!855777 (isEmpty!13319 tokens!598))))

(assert (=> b!1915073 (= (maxPrefix!1921 thiss!23328 rules!3198 lt!733716) (Some!4428 (tuple2!20363 (h!27036 tokens!598) lt!733726)))))

(declare-fun lt!733715 () Unit!36024)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!98 (LexerInterface!3475 List!21716 Token!7276 Rule!7524 List!21715 Rule!7524) Unit!36024)

(assert (=> b!1915073 (= lt!733715 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!98 thiss!23328 rules!3198 (h!27036 tokens!598) (rule!6063 (h!27036 tokens!598)) lt!733726 (rule!6063 separatorToken!354)))))

(declare-fun b!1915074 () Bool)

(declare-fun tp!546556 () Bool)

(assert (=> b!1915074 (= e!1223433 (and (inv!21 (value!121658 separatorToken!354)) e!1223453 tp!546556))))

(declare-fun b!1915075 () Bool)

(declare-fun res!855781 () Bool)

(assert (=> b!1915075 (=> (not res!855781) (not e!1223448))))

(assert (=> b!1915075 (= res!855781 ((_ is Cons!21635) tokens!598))))

(declare-fun b!1915076 () Bool)

(declare-fun res!855762 () Bool)

(assert (=> b!1915076 (=> res!855762 e!1223456)))

(declare-fun contains!3929 (List!21716 Rule!7524) Bool)

(assert (=> b!1915076 (= res!855762 (not (contains!3929 rules!3198 (rule!6063 (h!27036 tokens!598)))))))

(declare-fun b!1915077 () Bool)

(declare-fun res!855786 () Bool)

(assert (=> b!1915077 (=> res!855786 e!1223435)))

(assert (=> b!1915077 (= res!855786 (not (contains!3928 lt!733711 lt!733713)))))

(declare-fun b!1915078 () Bool)

(declare-fun res!855766 () Bool)

(assert (=> b!1915078 (=> res!855766 e!1223456)))

(assert (=> b!1915078 (= res!855766 (not (contains!3929 rules!3198 (rule!6063 separatorToken!354))))))

(declare-fun b!1915079 () Bool)

(assert (=> b!1915079 (= e!1223451 (= (rule!6063 separatorToken!354) lt!733697))))

(declare-fun b!1915080 () Bool)

(declare-fun Unit!36027 () Unit!36024)

(assert (=> b!1915080 (= e!1223434 Unit!36027)))

(declare-fun e!1223437 () Bool)

(assert (=> b!1915081 (= e!1223437 (and tp!546562 tp!546550))))

(declare-fun b!1915082 () Bool)

(assert (=> b!1915082 (= e!1223436 e!1223444)))

(declare-fun res!855775 () Bool)

(assert (=> b!1915082 (=> (not res!855775) (not e!1223444))))

(assert (=> b!1915082 (= res!855775 (matchR!2573 (regex!3862 lt!733718) lt!733728))))

(assert (=> b!1915082 (= lt!733718 (get!6767 lt!733719))))

(declare-fun tp!546557 () Bool)

(declare-fun b!1915083 () Bool)

(assert (=> b!1915083 (= e!1223438 (and tp!546557 (inv!28728 (tag!4300 (h!27035 rules!3198))) (inv!28731 (transformation!3862 (h!27035 rules!3198))) e!1223437))))

(declare-fun b!1915084 () Bool)

(assert (=> b!1915084 (= e!1223443 true)))

(assert (=> b!1915085 (= e!1223439 (and tp!546551 tp!546555))))

(declare-fun b!1915086 () Bool)

(declare-fun tp!546554 () Bool)

(assert (=> b!1915086 (= e!1223440 (and (inv!28732 (h!27036 tokens!598)) e!1223452 tp!546554))))

(declare-fun b!1915087 () Bool)

(declare-fun res!855784 () Bool)

(assert (=> b!1915087 (=> (not res!855784) (not e!1223448))))

(declare-fun rulesProduceIndividualToken!1647 (LexerInterface!3475 List!21716 Token!7276) Bool)

(assert (=> b!1915087 (= res!855784 (rulesProduceIndividualToken!1647 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1915088 () Bool)

(declare-fun res!855765 () Bool)

(assert (=> b!1915088 (=> res!855765 e!1223456)))

(assert (=> b!1915088 (= res!855765 (not (isEmpty!13318 (_2!11650 lt!733708))))))

(declare-fun b!1915089 () Bool)

(declare-fun res!855764 () Bool)

(assert (=> b!1915089 (=> res!855764 e!1223456)))

(declare-fun isEmpty!13320 (BalanceConc!14250) Bool)

(declare-datatypes ((tuple2!20364 0))(
  ( (tuple2!20365 (_1!11651 BalanceConc!14250) (_2!11651 BalanceConc!14248)) )
))
(declare-fun lex!1550 (LexerInterface!3475 List!21716 BalanceConc!14248) tuple2!20364)

(assert (=> b!1915089 (= res!855764 (isEmpty!13320 (_1!11651 (lex!1550 thiss!23328 rules!3198 (seqFromList!2734 lt!733728)))))))

(declare-fun b!1915090 () Bool)

(declare-fun res!855771 () Bool)

(assert (=> b!1915090 (=> res!855771 e!1223456)))

(assert (=> b!1915090 (= res!855771 (not (rulesProduceIndividualToken!1647 thiss!23328 rules!3198 (h!27036 tokens!598))))))

(assert (= (and start!192024 res!855776) b!1915056))

(assert (= (and b!1915056 res!855773) b!1915053))

(assert (= (and b!1915053 res!855787) b!1915066))

(assert (= (and b!1915066 res!855770) b!1915087))

(assert (= (and b!1915087 res!855784) b!1915061))

(assert (= (and b!1915061 res!855788) b!1915068))

(assert (= (and b!1915068 res!855772) b!1915052))

(assert (= (and b!1915052 res!855783) b!1915075))

(assert (= (and b!1915075 res!855781) b!1915072))

(assert (= (and b!1915072 res!855774) b!1915071))

(assert (= (and b!1915071 res!855767) b!1915079))

(assert (= (and b!1915072 res!855780) b!1915082))

(assert (= (and b!1915082 res!855775) b!1915054))

(assert (= (and b!1915072 (not res!855769)) b!1915069))

(assert (= (and b!1915069 c!311791) b!1915062))

(assert (= (and b!1915069 (not c!311791)) b!1915080))

(assert (= (and b!1915062 res!855768) b!1915051))

(assert (= (and b!1915069 (not res!855779)) b!1915090))

(assert (= (and b!1915090 (not res!855771)) b!1915089))

(assert (= (and b!1915089 (not res!855764)) b!1915076))

(assert (= (and b!1915076 (not res!855762)) b!1915078))

(assert (= (and b!1915078 (not res!855766)) b!1915060))

(assert (= (and b!1915060 (not res!855785)) b!1915088))

(assert (= (and b!1915088 (not res!855765)) b!1915059))

(assert (= (and b!1915059 (not res!855761)) b!1915063))

(assert (= (and b!1915063 (not res!855763)) b!1915064))

(assert (= (and b!1915064 (not res!855782)) b!1915077))

(assert (= (and b!1915077 (not res!855786)) b!1915073))

(assert (= (and b!1915073 (not res!855777)) b!1915058))

(assert (= (and b!1915058 (not res!855778)) b!1915084))

(assert (= b!1915083 b!1915081))

(assert (= b!1915065 b!1915083))

(assert (= (and start!192024 ((_ is Cons!21634) rules!3198)) b!1915065))

(assert (= b!1915067 b!1915085))

(assert (= b!1915070 b!1915067))

(assert (= b!1915086 b!1915070))

(assert (= (and start!192024 ((_ is Cons!21635) tokens!598)) b!1915086))

(assert (= b!1915057 b!1915055))

(assert (= b!1915074 b!1915057))

(assert (= start!192024 b!1915074))

(declare-fun m!2349765 () Bool)

(assert (=> b!1915076 m!2349765))

(declare-fun m!2349767 () Bool)

(assert (=> b!1915064 m!2349767))

(declare-fun m!2349769 () Bool)

(assert (=> b!1915064 m!2349769))

(declare-fun m!2349771 () Bool)

(assert (=> b!1915089 m!2349771))

(assert (=> b!1915089 m!2349771))

(declare-fun m!2349773 () Bool)

(assert (=> b!1915089 m!2349773))

(declare-fun m!2349775 () Bool)

(assert (=> b!1915089 m!2349775))

(declare-fun m!2349777 () Bool)

(assert (=> b!1915067 m!2349777))

(declare-fun m!2349779 () Bool)

(assert (=> b!1915067 m!2349779))

(declare-fun m!2349781 () Bool)

(assert (=> b!1915087 m!2349781))

(declare-fun m!2349783 () Bool)

(assert (=> b!1915052 m!2349783))

(declare-fun m!2349785 () Bool)

(assert (=> b!1915078 m!2349785))

(declare-fun m!2349787 () Bool)

(assert (=> b!1915090 m!2349787))

(declare-fun m!2349789 () Bool)

(assert (=> b!1915058 m!2349789))

(assert (=> b!1915058 m!2349789))

(declare-fun m!2349791 () Bool)

(assert (=> b!1915058 m!2349791))

(assert (=> b!1915058 m!2349791))

(declare-fun m!2349793 () Bool)

(assert (=> b!1915058 m!2349793))

(declare-fun m!2349795 () Bool)

(assert (=> start!192024 m!2349795))

(declare-fun m!2349797 () Bool)

(assert (=> b!1915057 m!2349797))

(declare-fun m!2349799 () Bool)

(assert (=> b!1915057 m!2349799))

(declare-fun m!2349801 () Bool)

(assert (=> b!1915068 m!2349801))

(declare-fun m!2349803 () Bool)

(assert (=> b!1915066 m!2349803))

(declare-fun m!2349805 () Bool)

(assert (=> b!1915074 m!2349805))

(declare-fun m!2349807 () Bool)

(assert (=> b!1915072 m!2349807))

(declare-fun m!2349809 () Bool)

(assert (=> b!1915072 m!2349809))

(assert (=> b!1915072 m!2349809))

(declare-fun m!2349811 () Bool)

(assert (=> b!1915072 m!2349811))

(declare-fun m!2349813 () Bool)

(assert (=> b!1915072 m!2349813))

(declare-fun m!2349815 () Bool)

(assert (=> b!1915072 m!2349815))

(declare-fun m!2349817 () Bool)

(assert (=> b!1915072 m!2349817))

(declare-fun m!2349819 () Bool)

(assert (=> b!1915072 m!2349819))

(declare-fun m!2349821 () Bool)

(assert (=> b!1915072 m!2349821))

(declare-fun m!2349823 () Bool)

(assert (=> b!1915072 m!2349823))

(declare-fun m!2349825 () Bool)

(assert (=> b!1915072 m!2349825))

(declare-fun m!2349827 () Bool)

(assert (=> b!1915072 m!2349827))

(declare-fun m!2349829 () Bool)

(assert (=> b!1915072 m!2349829))

(declare-fun m!2349831 () Bool)

(assert (=> b!1915072 m!2349831))

(declare-fun m!2349833 () Bool)

(assert (=> b!1915072 m!2349833))

(declare-fun m!2349835 () Bool)

(assert (=> b!1915072 m!2349835))

(declare-fun m!2349837 () Bool)

(assert (=> b!1915072 m!2349837))

(declare-fun m!2349839 () Bool)

(assert (=> b!1915072 m!2349839))

(declare-fun m!2349841 () Bool)

(assert (=> b!1915072 m!2349841))

(assert (=> b!1915072 m!2349825))

(assert (=> b!1915072 m!2349839))

(declare-fun m!2349843 () Bool)

(assert (=> b!1915072 m!2349843))

(declare-fun m!2349845 () Bool)

(assert (=> b!1915070 m!2349845))

(declare-fun m!2349847 () Bool)

(assert (=> b!1915071 m!2349847))

(declare-fun m!2349849 () Bool)

(assert (=> b!1915071 m!2349849))

(declare-fun m!2349851 () Bool)

(assert (=> b!1915086 m!2349851))

(declare-fun m!2349853 () Bool)

(assert (=> b!1915056 m!2349853))

(declare-fun m!2349855 () Bool)

(assert (=> b!1915073 m!2349855))

(declare-fun m!2349857 () Bool)

(assert (=> b!1915073 m!2349857))

(declare-fun m!2349859 () Bool)

(assert (=> b!1915073 m!2349859))

(declare-fun m!2349861 () Bool)

(assert (=> b!1915077 m!2349861))

(declare-fun m!2349863 () Bool)

(assert (=> b!1915088 m!2349863))

(declare-fun m!2349865 () Bool)

(assert (=> b!1915053 m!2349865))

(declare-fun m!2349867 () Bool)

(assert (=> b!1915069 m!2349867))

(declare-fun m!2349869 () Bool)

(assert (=> b!1915069 m!2349869))

(declare-fun m!2349871 () Bool)

(assert (=> b!1915069 m!2349871))

(declare-fun m!2349873 () Bool)

(assert (=> b!1915069 m!2349873))

(declare-fun m!2349875 () Bool)

(assert (=> b!1915069 m!2349875))

(declare-fun m!2349877 () Bool)

(assert (=> b!1915069 m!2349877))

(declare-fun m!2349879 () Bool)

(assert (=> b!1915069 m!2349879))

(declare-fun m!2349881 () Bool)

(assert (=> b!1915069 m!2349881))

(declare-fun m!2349883 () Bool)

(assert (=> b!1915069 m!2349883))

(declare-fun m!2349885 () Bool)

(assert (=> b!1915069 m!2349885))

(declare-fun m!2349887 () Bool)

(assert (=> b!1915069 m!2349887))

(declare-fun m!2349889 () Bool)

(assert (=> b!1915069 m!2349889))

(declare-fun m!2349891 () Bool)

(assert (=> b!1915069 m!2349891))

(declare-fun m!2349893 () Bool)

(assert (=> b!1915069 m!2349893))

(declare-fun m!2349895 () Bool)

(assert (=> b!1915069 m!2349895))

(declare-fun m!2349897 () Bool)

(assert (=> b!1915069 m!2349897))

(declare-fun m!2349899 () Bool)

(assert (=> b!1915063 m!2349899))

(declare-fun m!2349901 () Bool)

(assert (=> b!1915082 m!2349901))

(declare-fun m!2349903 () Bool)

(assert (=> b!1915082 m!2349903))

(declare-fun m!2349905 () Bool)

(assert (=> b!1915083 m!2349905))

(declare-fun m!2349907 () Bool)

(assert (=> b!1915083 m!2349907))

(declare-fun m!2349909 () Bool)

(assert (=> b!1915062 m!2349909))

(declare-fun m!2349911 () Bool)

(assert (=> b!1915062 m!2349911))

(declare-fun m!2349913 () Bool)

(assert (=> b!1915059 m!2349913))

(declare-fun m!2349915 () Bool)

(assert (=> b!1915059 m!2349915))

(declare-fun m!2349917 () Bool)

(assert (=> b!1915059 m!2349917))

(check-sat (not b!1915065) (not b!1915067) (not b!1915083) (not b_next!54931) (not b_next!54937) (not b!1915059) (not b!1915057) (not b!1915064) (not b!1915069) (not b!1915052) (not b!1915066) b_and!149345 (not b!1915082) b_and!149337 b_and!149335 (not b_next!54933) (not b!1915090) (not b!1915089) (not b!1915074) (not b!1915088) (not b!1915056) (not b!1915062) b_and!149341 (not b!1915063) (not b!1915071) (not b!1915058) (not b!1915070) (not b!1915072) (not b!1915068) (not start!192024) (not b!1915073) (not b!1915086) (not b!1915087) (not b_next!54929) (not b_next!54939) (not b_next!54935) b_and!149343 (not b!1915078) b_and!149339 (not b!1915053) (not b!1915076) (not b!1915077))
(check-sat (not b_next!54933) (not b_next!54931) b_and!149341 (not b_next!54937) b_and!149345 b_and!149343 b_and!149337 b_and!149339 b_and!149335 (not b_next!54929) (not b_next!54939) (not b_next!54935))
