; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17770 () Bool)

(assert start!17770)

(declare-fun b!164629 () Bool)

(declare-fun b_free!6241 () Bool)

(declare-fun b_next!6241 () Bool)

(assert (=> b!164629 (= b_free!6241 (not b_next!6241))))

(declare-fun tp!82716 () Bool)

(declare-fun b_and!10473 () Bool)

(assert (=> b!164629 (= tp!82716 b_and!10473)))

(declare-fun b_free!6243 () Bool)

(declare-fun b_next!6243 () Bool)

(assert (=> b!164629 (= b_free!6243 (not b_next!6243))))

(declare-fun tp!82714 () Bool)

(declare-fun b_and!10475 () Bool)

(assert (=> b!164629 (= tp!82714 b_and!10475)))

(declare-fun b!164638 () Bool)

(declare-fun b_free!6245 () Bool)

(declare-fun b_next!6245 () Bool)

(assert (=> b!164638 (= b_free!6245 (not b_next!6245))))

(declare-fun tp!82713 () Bool)

(declare-fun b_and!10477 () Bool)

(assert (=> b!164638 (= tp!82713 b_and!10477)))

(declare-fun b_free!6247 () Bool)

(declare-fun b_next!6247 () Bool)

(assert (=> b!164638 (= b_free!6247 (not b_next!6247))))

(declare-fun tp!82709 () Bool)

(declare-fun b_and!10479 () Bool)

(assert (=> b!164638 (= tp!82709 b_and!10479)))

(declare-fun b!164650 () Bool)

(declare-fun b_free!6249 () Bool)

(declare-fun b_next!6249 () Bool)

(assert (=> b!164650 (= b_free!6249 (not b_next!6249))))

(declare-fun tp!82711 () Bool)

(declare-fun b_and!10481 () Bool)

(assert (=> b!164650 (= tp!82711 b_and!10481)))

(declare-fun b_free!6251 () Bool)

(declare-fun b_next!6251 () Bool)

(assert (=> b!164650 (= b_free!6251 (not b_next!6251))))

(declare-fun tp!82721 () Bool)

(declare-fun b_and!10483 () Bool)

(assert (=> b!164650 (= tp!82721 b_and!10483)))

(declare-fun bs!15752 () Bool)

(declare-fun b!164636 () Bool)

(declare-fun b!164634 () Bool)

(assert (= bs!15752 (and b!164636 b!164634)))

(declare-fun lambda!4540 () Int)

(declare-fun lambda!4539 () Int)

(assert (=> bs!15752 (not (= lambda!4540 lambda!4539))))

(declare-fun b!164664 () Bool)

(declare-fun e!99254 () Bool)

(assert (=> b!164664 (= e!99254 true)))

(declare-fun b!164663 () Bool)

(declare-fun e!99253 () Bool)

(assert (=> b!164663 (= e!99253 e!99254)))

(declare-fun b!164662 () Bool)

(declare-fun e!99252 () Bool)

(assert (=> b!164662 (= e!99252 e!99253)))

(assert (=> b!164636 e!99252))

(assert (= b!164663 b!164664))

(assert (= b!164662 b!164663))

(declare-datatypes ((List!2823 0))(
  ( (Nil!2813) (Cons!2813 (h!8210 (_ BitVec 16)) (t!26441 List!2823)) )
))
(declare-datatypes ((TokenValue!521 0))(
  ( (FloatLiteralValue!1042 (text!4092 List!2823)) (TokenValueExt!520 (__x!2529 Int)) (Broken!2605 (value!18511 List!2823)) (Object!530) (End!521) (Def!521) (Underscore!521) (Match!521) (Else!521) (Error!521) (Case!521) (If!521) (Extends!521) (Abstract!521) (Class!521) (Val!521) (DelimiterValue!1042 (del!581 List!2823)) (KeywordValue!527 (value!18512 List!2823)) (CommentValue!1042 (value!18513 List!2823)) (WhitespaceValue!1042 (value!18514 List!2823)) (IndentationValue!521 (value!18515 List!2823)) (String!3684) (Int32!521) (Broken!2606 (value!18516 List!2823)) (Boolean!522) (Unit!2371) (OperatorValue!524 (op!581 List!2823)) (IdentifierValue!1042 (value!18517 List!2823)) (IdentifierValue!1043 (value!18518 List!2823)) (WhitespaceValue!1043 (value!18519 List!2823)) (True!1042) (False!1042) (Broken!2607 (value!18520 List!2823)) (Broken!2608 (value!18521 List!2823)) (True!1043) (RightBrace!521) (RightBracket!521) (Colon!521) (Null!521) (Comma!521) (LeftBracket!521) (False!1043) (LeftBrace!521) (ImaginaryLiteralValue!521 (text!4093 List!2823)) (StringLiteralValue!1563 (value!18522 List!2823)) (EOFValue!521 (value!18523 List!2823)) (IdentValue!521 (value!18524 List!2823)) (DelimiterValue!1043 (value!18525 List!2823)) (DedentValue!521 (value!18526 List!2823)) (NewLineValue!521 (value!18527 List!2823)) (IntegerValue!1563 (value!18528 (_ BitVec 32)) (text!4094 List!2823)) (IntegerValue!1564 (value!18529 Int) (text!4095 List!2823)) (Times!521) (Or!521) (Equal!521) (Minus!521) (Broken!2609 (value!18530 List!2823)) (And!521) (Div!521) (LessEqual!521) (Mod!521) (Concat!1244) (Not!521) (Plus!521) (SpaceValue!521 (value!18531 List!2823)) (IntegerValue!1565 (value!18532 Int) (text!4096 List!2823)) (StringLiteralValue!1564 (text!4097 List!2823)) (FloatLiteralValue!1043 (text!4098 List!2823)) (BytesLiteralValue!521 (value!18533 List!2823)) (CommentValue!1043 (value!18534 List!2823)) (StringLiteralValue!1565 (value!18535 List!2823)) (ErrorTokenValue!521 (msg!582 List!2823)) )
))
(declare-datatypes ((C!2368 0))(
  ( (C!2369 (val!1070 Int)) )
))
(declare-datatypes ((List!2824 0))(
  ( (Nil!2814) (Cons!2814 (h!8211 C!2368) (t!26442 List!2824)) )
))
(declare-datatypes ((IArray!1641 0))(
  ( (IArray!1642 (innerList!878 List!2824)) )
))
(declare-datatypes ((Conc!820 0))(
  ( (Node!820 (left!2124 Conc!820) (right!2454 Conc!820) (csize!1870 Int) (cheight!1031 Int)) (Leaf!1409 (xs!3415 IArray!1641) (csize!1871 Int)) (Empty!820) )
))
(declare-datatypes ((BalanceConc!1648 0))(
  ( (BalanceConc!1649 (c!32892 Conc!820)) )
))
(declare-datatypes ((TokenValueInjection!814 0))(
  ( (TokenValueInjection!815 (toValue!1158 Int) (toChars!1017 Int)) )
))
(declare-datatypes ((Regex!723 0))(
  ( (ElementMatch!723 (c!32893 C!2368)) (Concat!1245 (regOne!1958 Regex!723) (regTwo!1958 Regex!723)) (EmptyExpr!723) (Star!723 (reg!1052 Regex!723)) (EmptyLang!723) (Union!723 (regOne!1959 Regex!723) (regTwo!1959 Regex!723)) )
))
(declare-datatypes ((String!3685 0))(
  ( (String!3686 (value!18536 String)) )
))
(declare-datatypes ((Rule!798 0))(
  ( (Rule!799 (regex!499 Regex!723) (tag!677 String!3685) (isSeparator!499 Bool) (transformation!499 TokenValueInjection!814)) )
))
(declare-datatypes ((List!2825 0))(
  ( (Nil!2815) (Cons!2815 (h!8212 Rule!798) (t!26443 List!2825)) )
))
(declare-fun rules!1920 () List!2825)

(get-info :version)

(assert (= (and b!164636 ((_ is Cons!2815) rules!1920)) b!164662))

(declare-fun order!1445 () Int)

(declare-fun order!1447 () Int)

(declare-fun dynLambda!1013 (Int Int) Int)

(declare-fun dynLambda!1014 (Int Int) Int)

(assert (=> b!164664 (< (dynLambda!1013 order!1445 (toValue!1158 (transformation!499 (h!8212 rules!1920)))) (dynLambda!1014 order!1447 lambda!4540))))

(declare-fun order!1449 () Int)

(declare-fun dynLambda!1015 (Int Int) Int)

(assert (=> b!164664 (< (dynLambda!1015 order!1449 (toChars!1017 (transformation!499 (h!8212 rules!1920)))) (dynLambda!1014 order!1447 lambda!4540))))

(assert (=> b!164636 true))

(declare-fun b!164627 () Bool)

(declare-fun res!74502 () Bool)

(declare-fun e!99234 () Bool)

(assert (=> b!164627 (=> res!74502 e!99234)))

(declare-fun e!99242 () Bool)

(assert (=> b!164627 (= res!74502 e!99242)))

(declare-fun res!74511 () Bool)

(assert (=> b!164627 (=> (not res!74511) (not e!99242))))

(declare-fun lt!50628 () List!2824)

(declare-fun lt!50624 () List!2824)

(assert (=> b!164627 (= res!74511 (not (= lt!50628 lt!50624)))))

(declare-fun b!164628 () Bool)

(declare-fun res!74503 () Bool)

(declare-fun e!99243 () Bool)

(assert (=> b!164628 (=> (not res!74503) (not e!99243))))

(declare-datatypes ((Token!742 0))(
  ( (Token!743 (value!18537 TokenValue!521) (rule!1006 Rule!798) (size!2357 Int) (originalCharacters!542 List!2824)) )
))
(declare-datatypes ((List!2826 0))(
  ( (Nil!2816) (Cons!2816 (h!8213 Token!742) (t!26444 List!2826)) )
))
(declare-fun tokens!465 () List!2826)

(assert (=> b!164628 (= res!74503 ((_ is Cons!2816) tokens!465))))

(declare-fun e!99225 () Bool)

(assert (=> b!164629 (= e!99225 (and tp!82716 tp!82714))))

(declare-fun b!164630 () Bool)

(declare-fun res!74496 () Bool)

(declare-fun e!99226 () Bool)

(assert (=> b!164630 (=> res!74496 e!99226)))

(declare-datatypes ((LexerInterface!385 0))(
  ( (LexerInterfaceExt!382 (__x!2530 Int)) (Lexer!383) )
))
(declare-fun thiss!17480 () LexerInterface!385)

(declare-fun lt!50619 () List!2824)

(declare-datatypes ((IArray!1643 0))(
  ( (IArray!1644 (innerList!879 List!2826)) )
))
(declare-datatypes ((Conc!821 0))(
  ( (Node!821 (left!2125 Conc!821) (right!2455 Conc!821) (csize!1872 Int) (cheight!1032 Int)) (Leaf!1410 (xs!3416 IArray!1643) (csize!1873 Int)) (Empty!821) )
))
(declare-datatypes ((BalanceConc!1650 0))(
  ( (BalanceConc!1651 (c!32894 Conc!821)) )
))
(declare-fun isEmpty!1151 (BalanceConc!1650) Bool)

(declare-datatypes ((tuple2!2686 0))(
  ( (tuple2!2687 (_1!1559 BalanceConc!1650) (_2!1559 BalanceConc!1648)) )
))
(declare-fun lex!185 (LexerInterface!385 List!2825 BalanceConc!1648) tuple2!2686)

(declare-fun seqFromList!375 (List!2824) BalanceConc!1648)

(assert (=> b!164630 (= res!74496 (isEmpty!1151 (_1!1559 (lex!185 thiss!17480 rules!1920 (seqFromList!375 lt!50619)))))))

(declare-fun b!164631 () Bool)

(declare-fun e!99231 () Bool)

(declare-fun e!99236 () Bool)

(declare-fun tp!82717 () Bool)

(declare-fun inv!3637 (Token!742) Bool)

(assert (=> b!164631 (= e!99231 (and (inv!3637 (h!8213 tokens!465)) e!99236 tp!82717))))

(declare-fun b!164632 () Bool)

(declare-fun e!99233 () Bool)

(declare-fun e!99229 () Bool)

(declare-fun tp!82720 () Bool)

(assert (=> b!164632 (= e!99233 (and e!99229 tp!82720))))

(declare-fun b!164633 () Bool)

(declare-fun e!99237 () Bool)

(assert (=> b!164633 (= e!99243 e!99237)))

(declare-fun res!74498 () Bool)

(assert (=> b!164633 (=> (not res!74498) (not e!99237))))

(declare-fun lt!50621 () List!2824)

(assert (=> b!164633 (= res!74498 (= lt!50628 lt!50621))))

(declare-fun separatorToken!170 () Token!742)

(declare-fun lt!50622 () BalanceConc!1650)

(declare-fun list!1017 (BalanceConc!1648) List!2824)

(declare-fun printWithSeparatorTokenWhenNeededRec!68 (LexerInterface!385 List!2825 BalanceConc!1650 Token!742 Int) BalanceConc!1648)

(assert (=> b!164633 (= lt!50621 (list!1017 (printWithSeparatorTokenWhenNeededRec!68 thiss!17480 rules!1920 lt!50622 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!78 (LexerInterface!385 List!2825 List!2826 Token!742) List!2824)

(assert (=> b!164633 (= lt!50628 (printWithSeparatorTokenWhenNeededList!78 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!74500 () Bool)

(assert (=> b!164634 (=> (not res!74500) (not e!99243))))

(declare-fun forall!531 (List!2826 Int) Bool)

(assert (=> b!164634 (= res!74500 (forall!531 tokens!465 lambda!4539))))

(declare-fun b!164635 () Bool)

(declare-fun res!74507 () Bool)

(assert (=> b!164635 (=> res!74507 e!99226)))

(declare-fun rulesProduceIndividualToken!134 (LexerInterface!385 List!2825 Token!742) Bool)

(assert (=> b!164635 (= res!74507 (not (rulesProduceIndividualToken!134 thiss!17480 rules!1920 (h!8213 tokens!465))))))

(assert (=> b!164636 (= e!99226 true)))

(declare-fun lt!50618 () BalanceConc!1648)

(assert (=> b!164636 (= lt!50618 (seqFromList!375 (originalCharacters!542 (h!8213 tokens!465))))))

(declare-datatypes ((Unit!2372 0))(
  ( (Unit!2373) )
))
(declare-fun lt!50614 () Unit!2372)

(declare-fun forallContained!66 (List!2826 Int Token!742) Unit!2372)

(assert (=> b!164636 (= lt!50614 (forallContained!66 tokens!465 lambda!4540 (h!8213 tokens!465)))))

(assert (=> b!164636 (= lt!50619 (originalCharacters!542 (h!8213 tokens!465)))))

(declare-fun e!99230 () Bool)

(declare-fun tp!82710 () Bool)

(declare-fun b!164637 () Bool)

(declare-fun inv!3634 (String!3685) Bool)

(declare-fun inv!3638 (TokenValueInjection!814) Bool)

(assert (=> b!164637 (= e!99229 (and tp!82710 (inv!3634 (tag!677 (h!8212 rules!1920))) (inv!3638 (transformation!499 (h!8212 rules!1920))) e!99230))))

(declare-fun res!74506 () Bool)

(declare-fun e!99235 () Bool)

(assert (=> start!17770 (=> (not res!74506) (not e!99235))))

(assert (=> start!17770 (= res!74506 ((_ is Lexer!383) thiss!17480))))

(assert (=> start!17770 e!99235))

(assert (=> start!17770 true))

(assert (=> start!17770 e!99233))

(declare-fun e!99232 () Bool)

(assert (=> start!17770 (and (inv!3637 separatorToken!170) e!99232)))

(assert (=> start!17770 e!99231))

(declare-fun e!99227 () Bool)

(assert (=> b!164638 (= e!99227 (and tp!82713 tp!82709))))

(declare-fun b!164639 () Bool)

(declare-fun res!74499 () Bool)

(assert (=> b!164639 (=> (not res!74499) (not e!99235))))

(declare-fun isEmpty!1152 (List!2825) Bool)

(assert (=> b!164639 (= res!74499 (not (isEmpty!1152 rules!1920)))))

(declare-fun b!164640 () Bool)

(declare-fun res!74508 () Bool)

(assert (=> b!164640 (=> (not res!74508) (not e!99243))))

(declare-fun sepAndNonSepRulesDisjointChars!88 (List!2825 List!2825) Bool)

(assert (=> b!164640 (= res!74508 (sepAndNonSepRulesDisjointChars!88 rules!1920 rules!1920))))

(declare-fun b!164641 () Bool)

(assert (=> b!164641 (= e!99235 e!99243)))

(declare-fun res!74512 () Bool)

(assert (=> b!164641 (=> (not res!74512) (not e!99243))))

(declare-fun rulesProduceEachTokenIndividually!177 (LexerInterface!385 List!2825 BalanceConc!1650) Bool)

(assert (=> b!164641 (= res!74512 (rulesProduceEachTokenIndividually!177 thiss!17480 rules!1920 lt!50622))))

(declare-fun seqFromList!376 (List!2826) BalanceConc!1650)

(assert (=> b!164641 (= lt!50622 (seqFromList!376 tokens!465))))

(declare-fun b!164642 () Bool)

(declare-fun lt!50625 () List!2824)

(declare-fun ++!634 (List!2824 List!2824) List!2824)

(assert (=> b!164642 (= e!99242 (not (= lt!50628 (++!634 lt!50619 lt!50625))))))

(declare-fun b!164643 () Bool)

(declare-fun res!74497 () Bool)

(assert (=> b!164643 (=> (not res!74497) (not e!99243))))

(assert (=> b!164643 (= res!74497 (rulesProduceIndividualToken!134 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!82712 () Bool)

(declare-fun e!99241 () Bool)

(declare-fun b!164644 () Bool)

(assert (=> b!164644 (= e!99241 (and tp!82712 (inv!3634 (tag!677 (rule!1006 separatorToken!170))) (inv!3638 (transformation!499 (rule!1006 separatorToken!170))) e!99225))))

(declare-fun b!164645 () Bool)

(assert (=> b!164645 (= e!99237 (not e!99234))))

(declare-fun res!74510 () Bool)

(assert (=> b!164645 (=> res!74510 e!99234)))

(assert (=> b!164645 (= res!74510 (not (= lt!50625 (list!1017 (printWithSeparatorTokenWhenNeededRec!68 thiss!17480 rules!1920 (seqFromList!376 (t!26444 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!50616 () List!2824)

(assert (=> b!164645 (= lt!50616 lt!50624)))

(declare-fun lt!50615 () List!2824)

(assert (=> b!164645 (= lt!50624 (++!634 lt!50619 lt!50615))))

(declare-fun lt!50620 () List!2824)

(assert (=> b!164645 (= lt!50616 (++!634 (++!634 lt!50619 lt!50620) lt!50625))))

(declare-fun lt!50623 () Unit!2372)

(declare-fun lemmaConcatAssociativity!182 (List!2824 List!2824 List!2824) Unit!2372)

(assert (=> b!164645 (= lt!50623 (lemmaConcatAssociativity!182 lt!50619 lt!50620 lt!50625))))

(declare-fun charsOf!154 (Token!742) BalanceConc!1648)

(assert (=> b!164645 (= lt!50619 (list!1017 (charsOf!154 (h!8213 tokens!465))))))

(assert (=> b!164645 (= lt!50615 (++!634 lt!50620 lt!50625))))

(assert (=> b!164645 (= lt!50625 (printWithSeparatorTokenWhenNeededList!78 thiss!17480 rules!1920 (t!26444 tokens!465) separatorToken!170))))

(assert (=> b!164645 (= lt!50620 (list!1017 (charsOf!154 separatorToken!170)))))

(declare-fun b!164646 () Bool)

(assert (=> b!164646 (= e!99234 e!99226)))

(declare-fun res!74501 () Bool)

(assert (=> b!164646 (=> res!74501 e!99226)))

(declare-fun lt!50617 () List!2824)

(declare-fun lt!50626 () List!2824)

(assert (=> b!164646 (= res!74501 (or (not (= lt!50617 lt!50626)) (not (= lt!50626 lt!50619)) (not (= lt!50617 lt!50619))))))

(declare-fun printList!69 (LexerInterface!385 List!2826) List!2824)

(assert (=> b!164646 (= lt!50626 (printList!69 thiss!17480 (Cons!2816 (h!8213 tokens!465) Nil!2816)))))

(declare-fun lt!50613 () BalanceConc!1648)

(assert (=> b!164646 (= lt!50617 (list!1017 lt!50613))))

(declare-fun lt!50627 () BalanceConc!1650)

(declare-fun printTailRec!79 (LexerInterface!385 BalanceConc!1650 Int BalanceConc!1648) BalanceConc!1648)

(assert (=> b!164646 (= lt!50613 (printTailRec!79 thiss!17480 lt!50627 0 (BalanceConc!1649 Empty!820)))))

(declare-fun print!116 (LexerInterface!385 BalanceConc!1650) BalanceConc!1648)

(assert (=> b!164646 (= lt!50613 (print!116 thiss!17480 lt!50627))))

(declare-fun singletonSeq!51 (Token!742) BalanceConc!1650)

(assert (=> b!164646 (= lt!50627 (singletonSeq!51 (h!8213 tokens!465)))))

(declare-fun b!164647 () Bool)

(declare-fun res!74504 () Bool)

(assert (=> b!164647 (=> (not res!74504) (not e!99243))))

(assert (=> b!164647 (= res!74504 (isSeparator!499 (rule!1006 separatorToken!170)))))

(declare-fun tp!82715 () Bool)

(declare-fun b!164648 () Bool)

(declare-fun inv!21 (TokenValue!521) Bool)

(assert (=> b!164648 (= e!99232 (and (inv!21 (value!18537 separatorToken!170)) e!99241 tp!82715))))

(declare-fun e!99244 () Bool)

(declare-fun b!164649 () Bool)

(declare-fun tp!82718 () Bool)

(assert (=> b!164649 (= e!99236 (and (inv!21 (value!18537 (h!8213 tokens!465))) e!99244 tp!82718))))

(assert (=> b!164650 (= e!99230 (and tp!82711 tp!82721))))

(declare-fun tp!82719 () Bool)

(declare-fun b!164651 () Bool)

(assert (=> b!164651 (= e!99244 (and tp!82719 (inv!3634 (tag!677 (rule!1006 (h!8213 tokens!465)))) (inv!3638 (transformation!499 (rule!1006 (h!8213 tokens!465)))) e!99227))))

(declare-fun b!164652 () Bool)

(declare-fun res!74505 () Bool)

(assert (=> b!164652 (=> (not res!74505) (not e!99235))))

(declare-fun rulesInvariant!351 (LexerInterface!385 List!2825) Bool)

(assert (=> b!164652 (= res!74505 (rulesInvariant!351 thiss!17480 rules!1920))))

(declare-fun b!164653 () Bool)

(declare-fun res!74509 () Bool)

(assert (=> b!164653 (=> (not res!74509) (not e!99237))))

(assert (=> b!164653 (= res!74509 (= (list!1017 (seqFromList!375 lt!50628)) lt!50621))))

(assert (= (and start!17770 res!74506) b!164639))

(assert (= (and b!164639 res!74499) b!164652))

(assert (= (and b!164652 res!74505) b!164641))

(assert (= (and b!164641 res!74512) b!164643))

(assert (= (and b!164643 res!74497) b!164647))

(assert (= (and b!164647 res!74504) b!164634))

(assert (= (and b!164634 res!74500) b!164640))

(assert (= (and b!164640 res!74508) b!164628))

(assert (= (and b!164628 res!74503) b!164633))

(assert (= (and b!164633 res!74498) b!164653))

(assert (= (and b!164653 res!74509) b!164645))

(assert (= (and b!164645 (not res!74510)) b!164627))

(assert (= (and b!164627 res!74511) b!164642))

(assert (= (and b!164627 (not res!74502)) b!164646))

(assert (= (and b!164646 (not res!74501)) b!164635))

(assert (= (and b!164635 (not res!74507)) b!164630))

(assert (= (and b!164630 (not res!74496)) b!164636))

(assert (= b!164637 b!164650))

(assert (= b!164632 b!164637))

(assert (= (and start!17770 ((_ is Cons!2815) rules!1920)) b!164632))

(assert (= b!164644 b!164629))

(assert (= b!164648 b!164644))

(assert (= start!17770 b!164648))

(assert (= b!164651 b!164638))

(assert (= b!164649 b!164651))

(assert (= b!164631 b!164649))

(assert (= (and start!17770 ((_ is Cons!2816) tokens!465)) b!164631))

(declare-fun m!157029 () Bool)

(assert (=> b!164633 m!157029))

(assert (=> b!164633 m!157029))

(declare-fun m!157031 () Bool)

(assert (=> b!164633 m!157031))

(declare-fun m!157033 () Bool)

(assert (=> b!164633 m!157033))

(declare-fun m!157035 () Bool)

(assert (=> b!164637 m!157035))

(declare-fun m!157037 () Bool)

(assert (=> b!164637 m!157037))

(declare-fun m!157039 () Bool)

(assert (=> b!164631 m!157039))

(declare-fun m!157041 () Bool)

(assert (=> b!164634 m!157041))

(declare-fun m!157043 () Bool)

(assert (=> b!164635 m!157043))

(declare-fun m!157045 () Bool)

(assert (=> b!164640 m!157045))

(declare-fun m!157047 () Bool)

(assert (=> b!164641 m!157047))

(declare-fun m!157049 () Bool)

(assert (=> b!164641 m!157049))

(declare-fun m!157051 () Bool)

(assert (=> b!164648 m!157051))

(declare-fun m!157053 () Bool)

(assert (=> b!164643 m!157053))

(declare-fun m!157055 () Bool)

(assert (=> b!164644 m!157055))

(declare-fun m!157057 () Bool)

(assert (=> b!164644 m!157057))

(declare-fun m!157059 () Bool)

(assert (=> b!164653 m!157059))

(assert (=> b!164653 m!157059))

(declare-fun m!157061 () Bool)

(assert (=> b!164653 m!157061))

(declare-fun m!157063 () Bool)

(assert (=> b!164652 m!157063))

(declare-fun m!157065 () Bool)

(assert (=> b!164646 m!157065))

(declare-fun m!157067 () Bool)

(assert (=> b!164646 m!157067))

(declare-fun m!157069 () Bool)

(assert (=> b!164646 m!157069))

(declare-fun m!157071 () Bool)

(assert (=> b!164646 m!157071))

(declare-fun m!157073 () Bool)

(assert (=> b!164646 m!157073))

(declare-fun m!157075 () Bool)

(assert (=> start!17770 m!157075))

(declare-fun m!157077 () Bool)

(assert (=> b!164649 m!157077))

(declare-fun m!157079 () Bool)

(assert (=> b!164651 m!157079))

(declare-fun m!157081 () Bool)

(assert (=> b!164651 m!157081))

(declare-fun m!157083 () Bool)

(assert (=> b!164645 m!157083))

(declare-fun m!157085 () Bool)

(assert (=> b!164645 m!157085))

(declare-fun m!157087 () Bool)

(assert (=> b!164645 m!157087))

(declare-fun m!157089 () Bool)

(assert (=> b!164645 m!157089))

(declare-fun m!157091 () Bool)

(assert (=> b!164645 m!157091))

(assert (=> b!164645 m!157083))

(declare-fun m!157093 () Bool)

(assert (=> b!164645 m!157093))

(declare-fun m!157095 () Bool)

(assert (=> b!164645 m!157095))

(declare-fun m!157097 () Bool)

(assert (=> b!164645 m!157097))

(assert (=> b!164645 m!157091))

(declare-fun m!157099 () Bool)

(assert (=> b!164645 m!157099))

(declare-fun m!157101 () Bool)

(assert (=> b!164645 m!157101))

(assert (=> b!164645 m!157087))

(declare-fun m!157103 () Bool)

(assert (=> b!164645 m!157103))

(assert (=> b!164645 m!157095))

(declare-fun m!157105 () Bool)

(assert (=> b!164645 m!157105))

(assert (=> b!164645 m!157093))

(declare-fun m!157107 () Bool)

(assert (=> b!164645 m!157107))

(declare-fun m!157109 () Bool)

(assert (=> b!164636 m!157109))

(declare-fun m!157111 () Bool)

(assert (=> b!164636 m!157111))

(declare-fun m!157113 () Bool)

(assert (=> b!164630 m!157113))

(assert (=> b!164630 m!157113))

(declare-fun m!157115 () Bool)

(assert (=> b!164630 m!157115))

(declare-fun m!157117 () Bool)

(assert (=> b!164630 m!157117))

(declare-fun m!157119 () Bool)

(assert (=> b!164642 m!157119))

(declare-fun m!157121 () Bool)

(assert (=> b!164639 m!157121))

(check-sat (not b_next!6251) (not b!164646) (not b!164640) (not b!164637) b_and!10483 b_and!10475 (not b!164632) (not b!164642) (not b!164631) (not b!164662) (not b!164643) b_and!10477 (not b!164644) (not b!164630) b_and!10473 (not b_next!6247) (not b!164652) (not b!164641) (not b!164649) (not b!164634) (not b!164651) (not b!164645) (not b_next!6245) (not b!164636) b_and!10481 (not b!164633) (not b!164639) (not b!164648) b_and!10479 (not b!164653) (not b_next!6243) (not b_next!6249) (not start!17770) (not b!164635) (not b_next!6241))
(check-sat (not b_next!6251) (not b_next!6245) b_and!10483 b_and!10475 b_and!10481 b_and!10479 (not b_next!6241) b_and!10477 b_and!10473 (not b_next!6247) (not b_next!6243) (not b_next!6249))
