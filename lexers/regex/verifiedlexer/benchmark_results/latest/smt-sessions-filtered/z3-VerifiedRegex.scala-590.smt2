; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18070 () Bool)

(assert start!18070)

(declare-fun b!167130 () Bool)

(declare-fun b_free!6321 () Bool)

(declare-fun b_next!6321 () Bool)

(assert (=> b!167130 (= b_free!6321 (not b_next!6321))))

(declare-fun tp!83228 () Bool)

(declare-fun b_and!10801 () Bool)

(assert (=> b!167130 (= tp!83228 b_and!10801)))

(declare-fun b_free!6323 () Bool)

(declare-fun b_next!6323 () Bool)

(assert (=> b!167130 (= b_free!6323 (not b_next!6323))))

(declare-fun tp!83221 () Bool)

(declare-fun b_and!10803 () Bool)

(assert (=> b!167130 (= tp!83221 b_and!10803)))

(declare-fun b!167138 () Bool)

(declare-fun b_free!6325 () Bool)

(declare-fun b_next!6325 () Bool)

(assert (=> b!167138 (= b_free!6325 (not b_next!6325))))

(declare-fun tp!83230 () Bool)

(declare-fun b_and!10805 () Bool)

(assert (=> b!167138 (= tp!83230 b_and!10805)))

(declare-fun b_free!6327 () Bool)

(declare-fun b_next!6327 () Bool)

(assert (=> b!167138 (= b_free!6327 (not b_next!6327))))

(declare-fun tp!83225 () Bool)

(declare-fun b_and!10807 () Bool)

(assert (=> b!167138 (= tp!83225 b_and!10807)))

(declare-fun b!167117 () Bool)

(declare-fun b_free!6329 () Bool)

(declare-fun b_next!6329 () Bool)

(assert (=> b!167117 (= b_free!6329 (not b_next!6329))))

(declare-fun tp!83227 () Bool)

(declare-fun b_and!10809 () Bool)

(assert (=> b!167117 (= tp!83227 b_and!10809)))

(declare-fun b_free!6331 () Bool)

(declare-fun b_next!6331 () Bool)

(assert (=> b!167117 (= b_free!6331 (not b_next!6331))))

(declare-fun tp!83224 () Bool)

(declare-fun b_and!10811 () Bool)

(assert (=> b!167117 (= tp!83224 b_and!10811)))

(declare-fun bs!16240 () Bool)

(declare-fun b!167136 () Bool)

(declare-fun b!167118 () Bool)

(assert (= bs!16240 (and b!167136 b!167118)))

(declare-fun lambda!4652 () Int)

(declare-fun lambda!4651 () Int)

(assert (=> bs!16240 (not (= lambda!4652 lambda!4651))))

(declare-fun b!167152 () Bool)

(declare-fun e!100826 () Bool)

(assert (=> b!167152 (= e!100826 true)))

(declare-fun b!167151 () Bool)

(declare-fun e!100825 () Bool)

(assert (=> b!167151 (= e!100825 e!100826)))

(declare-fun b!167150 () Bool)

(declare-fun e!100824 () Bool)

(assert (=> b!167150 (= e!100824 e!100825)))

(assert (=> b!167136 e!100824))

(assert (= b!167151 b!167152))

(assert (= b!167150 b!167151))

(declare-datatypes ((List!2841 0))(
  ( (Nil!2831) (Cons!2831 (h!8228 (_ BitVec 16)) (t!26811 List!2841)) )
))
(declare-datatypes ((TokenValue!525 0))(
  ( (FloatLiteralValue!1050 (text!4120 List!2841)) (TokenValueExt!524 (__x!2537 Int)) (Broken!2625 (value!18625 List!2841)) (Object!534) (End!525) (Def!525) (Underscore!525) (Match!525) (Else!525) (Error!525) (Case!525) (If!525) (Extends!525) (Abstract!525) (Class!525) (Val!525) (DelimiterValue!1050 (del!585 List!2841)) (KeywordValue!531 (value!18626 List!2841)) (CommentValue!1050 (value!18627 List!2841)) (WhitespaceValue!1050 (value!18628 List!2841)) (IndentationValue!525 (value!18629 List!2841)) (String!3704) (Int32!525) (Broken!2626 (value!18630 List!2841)) (Boolean!526) (Unit!2439) (OperatorValue!528 (op!585 List!2841)) (IdentifierValue!1050 (value!18631 List!2841)) (IdentifierValue!1051 (value!18632 List!2841)) (WhitespaceValue!1051 (value!18633 List!2841)) (True!1050) (False!1050) (Broken!2627 (value!18634 List!2841)) (Broken!2628 (value!18635 List!2841)) (True!1051) (RightBrace!525) (RightBracket!525) (Colon!525) (Null!525) (Comma!525) (LeftBracket!525) (False!1051) (LeftBrace!525) (ImaginaryLiteralValue!525 (text!4121 List!2841)) (StringLiteralValue!1575 (value!18636 List!2841)) (EOFValue!525 (value!18637 List!2841)) (IdentValue!525 (value!18638 List!2841)) (DelimiterValue!1051 (value!18639 List!2841)) (DedentValue!525 (value!18640 List!2841)) (NewLineValue!525 (value!18641 List!2841)) (IntegerValue!1575 (value!18642 (_ BitVec 32)) (text!4122 List!2841)) (IntegerValue!1576 (value!18643 Int) (text!4123 List!2841)) (Times!525) (Or!525) (Equal!525) (Minus!525) (Broken!2629 (value!18644 List!2841)) (And!525) (Div!525) (LessEqual!525) (Mod!525) (Concat!1252) (Not!525) (Plus!525) (SpaceValue!525 (value!18645 List!2841)) (IntegerValue!1577 (value!18646 Int) (text!4124 List!2841)) (StringLiteralValue!1576 (text!4125 List!2841)) (FloatLiteralValue!1051 (text!4126 List!2841)) (BytesLiteralValue!525 (value!18647 List!2841)) (CommentValue!1051 (value!18648 List!2841)) (StringLiteralValue!1577 (value!18649 List!2841)) (ErrorTokenValue!525 (msg!586 List!2841)) )
))
(declare-datatypes ((C!2376 0))(
  ( (C!2377 (val!1074 Int)) )
))
(declare-datatypes ((List!2842 0))(
  ( (Nil!2832) (Cons!2832 (h!8229 C!2376) (t!26812 List!2842)) )
))
(declare-datatypes ((IArray!1657 0))(
  ( (IArray!1658 (innerList!886 List!2842)) )
))
(declare-datatypes ((Conc!828 0))(
  ( (Node!828 (left!2142 Conc!828) (right!2472 Conc!828) (csize!1886 Int) (cheight!1039 Int)) (Leaf!1419 (xs!3423 IArray!1657) (csize!1887 Int)) (Empty!828) )
))
(declare-datatypes ((BalanceConc!1664 0))(
  ( (BalanceConc!1665 (c!33378 Conc!828)) )
))
(declare-datatypes ((TokenValueInjection!822 0))(
  ( (TokenValueInjection!823 (toValue!1166 Int) (toChars!1025 Int)) )
))
(declare-datatypes ((String!3705 0))(
  ( (String!3706 (value!18650 String)) )
))
(declare-datatypes ((Regex!727 0))(
  ( (ElementMatch!727 (c!33379 C!2376)) (Concat!1253 (regOne!1966 Regex!727) (regTwo!1966 Regex!727)) (EmptyExpr!727) (Star!727 (reg!1056 Regex!727)) (EmptyLang!727) (Union!727 (regOne!1967 Regex!727) (regTwo!1967 Regex!727)) )
))
(declare-datatypes ((Rule!806 0))(
  ( (Rule!807 (regex!503 Regex!727) (tag!681 String!3705) (isSeparator!503 Bool) (transformation!503 TokenValueInjection!822)) )
))
(declare-datatypes ((List!2843 0))(
  ( (Nil!2833) (Cons!2833 (h!8230 Rule!806) (t!26813 List!2843)) )
))
(declare-fun rules!1920 () List!2843)

(get-info :version)

(assert (= (and b!167136 ((_ is Cons!2833) rules!1920)) b!167150))

(declare-fun order!1479 () Int)

(declare-fun order!1477 () Int)

(declare-fun dynLambda!1035 (Int Int) Int)

(declare-fun dynLambda!1036 (Int Int) Int)

(assert (=> b!167152 (< (dynLambda!1035 order!1477 (toValue!1166 (transformation!503 (h!8230 rules!1920)))) (dynLambda!1036 order!1479 lambda!4652))))

(declare-fun order!1481 () Int)

(declare-fun dynLambda!1037 (Int Int) Int)

(assert (=> b!167152 (< (dynLambda!1037 order!1481 (toChars!1025 (transformation!503 (h!8230 rules!1920)))) (dynLambda!1036 order!1479 lambda!4652))))

(assert (=> b!167136 true))

(declare-fun b!167115 () Bool)

(declare-fun res!75464 () Bool)

(declare-fun e!100799 () Bool)

(assert (=> b!167115 (=> (not res!75464) (not e!100799))))

(declare-fun lt!52102 () List!2842)

(declare-fun lt!52104 () List!2842)

(declare-fun list!1029 (BalanceConc!1664) List!2842)

(declare-fun seqFromList!383 (List!2842) BalanceConc!1664)

(assert (=> b!167115 (= res!75464 (= (list!1029 (seqFromList!383 lt!52102)) lt!52104))))

(declare-fun b!167116 () Bool)

(declare-fun e!100815 () Bool)

(assert (=> b!167116 (= e!100815 e!100799)))

(declare-fun res!75473 () Bool)

(assert (=> b!167116 (=> (not res!75473) (not e!100799))))

(assert (=> b!167116 (= res!75473 (= lt!52102 lt!52104))))

(declare-datatypes ((Token!750 0))(
  ( (Token!751 (value!18651 TokenValue!525) (rule!1010 Rule!806) (size!2373 Int) (originalCharacters!546 List!2842)) )
))
(declare-fun separatorToken!170 () Token!750)

(declare-datatypes ((LexerInterface!389 0))(
  ( (LexerInterfaceExt!386 (__x!2538 Int)) (Lexer!387) )
))
(declare-fun thiss!17480 () LexerInterface!389)

(declare-datatypes ((List!2844 0))(
  ( (Nil!2834) (Cons!2834 (h!8231 Token!750) (t!26814 List!2844)) )
))
(declare-datatypes ((IArray!1659 0))(
  ( (IArray!1660 (innerList!887 List!2844)) )
))
(declare-datatypes ((Conc!829 0))(
  ( (Node!829 (left!2143 Conc!829) (right!2473 Conc!829) (csize!1888 Int) (cheight!1040 Int)) (Leaf!1420 (xs!3424 IArray!1659) (csize!1889 Int)) (Empty!829) )
))
(declare-datatypes ((BalanceConc!1666 0))(
  ( (BalanceConc!1667 (c!33380 Conc!829)) )
))
(declare-fun lt!52100 () BalanceConc!1666)

(declare-fun printWithSeparatorTokenWhenNeededRec!72 (LexerInterface!389 List!2843 BalanceConc!1666 Token!750 Int) BalanceConc!1664)

(assert (=> b!167116 (= lt!52104 (list!1029 (printWithSeparatorTokenWhenNeededRec!72 thiss!17480 rules!1920 lt!52100 separatorToken!170 0)))))

(declare-fun tokens!465 () List!2844)

(declare-fun printWithSeparatorTokenWhenNeededList!82 (LexerInterface!389 List!2843 List!2844 Token!750) List!2842)

(assert (=> b!167116 (= lt!52102 (printWithSeparatorTokenWhenNeededList!82 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!100813 () Bool)

(assert (=> b!167117 (= e!100813 (and tp!83227 tp!83224))))

(declare-fun res!75471 () Bool)

(assert (=> b!167118 (=> (not res!75471) (not e!100815))))

(declare-fun forall!541 (List!2844 Int) Bool)

(assert (=> b!167118 (= res!75471 (forall!541 tokens!465 lambda!4651))))

(declare-fun e!100798 () Bool)

(declare-fun e!100817 () Bool)

(declare-fun b!167119 () Bool)

(declare-fun tp!83223 () Bool)

(declare-fun inv!21 (TokenValue!525) Bool)

(assert (=> b!167119 (= e!100798 (and (inv!21 (value!18651 (h!8231 tokens!465))) e!100817 tp!83223))))

(declare-fun b!167120 () Bool)

(declare-fun e!100814 () Bool)

(assert (=> b!167120 (= e!100799 (not e!100814))))

(declare-fun res!75466 () Bool)

(assert (=> b!167120 (=> res!75466 e!100814)))

(declare-fun lt!52103 () List!2842)

(declare-fun seqFromList!384 (List!2844) BalanceConc!1666)

(assert (=> b!167120 (= res!75466 (not (= lt!52103 (list!1029 (printWithSeparatorTokenWhenNeededRec!72 thiss!17480 rules!1920 (seqFromList!384 (t!26814 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!52114 () List!2842)

(declare-fun lt!52111 () List!2842)

(assert (=> b!167120 (= lt!52114 lt!52111)))

(declare-fun lt!52112 () List!2842)

(declare-fun lt!52115 () List!2842)

(declare-fun ++!644 (List!2842 List!2842) List!2842)

(assert (=> b!167120 (= lt!52111 (++!644 lt!52112 lt!52115))))

(declare-fun lt!52113 () List!2842)

(assert (=> b!167120 (= lt!52114 (++!644 (++!644 lt!52112 lt!52113) lt!52103))))

(declare-datatypes ((Unit!2440 0))(
  ( (Unit!2441) )
))
(declare-fun lt!52110 () Unit!2440)

(declare-fun lemmaConcatAssociativity!188 (List!2842 List!2842 List!2842) Unit!2440)

(assert (=> b!167120 (= lt!52110 (lemmaConcatAssociativity!188 lt!52112 lt!52113 lt!52103))))

(declare-fun charsOf!158 (Token!750) BalanceConc!1664)

(assert (=> b!167120 (= lt!52112 (list!1029 (charsOf!158 (h!8231 tokens!465))))))

(assert (=> b!167120 (= lt!52115 (++!644 lt!52113 lt!52103))))

(assert (=> b!167120 (= lt!52103 (printWithSeparatorTokenWhenNeededList!82 thiss!17480 rules!1920 (t!26814 tokens!465) separatorToken!170))))

(assert (=> b!167120 (= lt!52113 (list!1029 (charsOf!158 separatorToken!170)))))

(declare-fun e!100809 () Bool)

(declare-fun tp!83229 () Bool)

(declare-fun e!100802 () Bool)

(declare-fun b!167121 () Bool)

(declare-fun inv!3658 (String!3705) Bool)

(declare-fun inv!3661 (TokenValueInjection!822) Bool)

(assert (=> b!167121 (= e!100809 (and tp!83229 (inv!3658 (tag!681 (h!8230 rules!1920))) (inv!3661 (transformation!503 (h!8230 rules!1920))) e!100802))))

(declare-fun b!167122 () Bool)

(declare-fun res!75474 () Bool)

(declare-fun e!100805 () Bool)

(assert (=> b!167122 (=> res!75474 e!100805)))

(declare-fun rulesProduceIndividualToken!138 (LexerInterface!389 List!2843 Token!750) Bool)

(assert (=> b!167122 (= res!75474 (not (rulesProduceIndividualToken!138 thiss!17480 rules!1920 (h!8231 tokens!465))))))

(declare-fun b!167123 () Bool)

(declare-fun res!75475 () Bool)

(assert (=> b!167123 (=> res!75475 e!100805)))

(declare-fun isEmpty!1171 (BalanceConc!1666) Bool)

(declare-datatypes ((tuple2!2706 0))(
  ( (tuple2!2707 (_1!1569 BalanceConc!1666) (_2!1569 BalanceConc!1664)) )
))
(declare-fun lex!189 (LexerInterface!389 List!2843 BalanceConc!1664) tuple2!2706)

(assert (=> b!167123 (= res!75475 (isEmpty!1171 (_1!1569 (lex!189 thiss!17480 rules!1920 (seqFromList!383 lt!52112)))))))

(declare-fun b!167124 () Bool)

(declare-fun res!75477 () Bool)

(assert (=> b!167124 (=> (not res!75477) (not e!100815))))

(assert (=> b!167124 (= res!75477 (rulesProduceIndividualToken!138 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!167125 () Bool)

(declare-fun res!75467 () Bool)

(assert (=> b!167125 (=> (not res!75467) (not e!100815))))

(assert (=> b!167125 (= res!75467 (isSeparator!503 (rule!1010 separatorToken!170)))))

(declare-fun b!167126 () Bool)

(declare-fun res!75480 () Bool)

(declare-fun e!100800 () Bool)

(assert (=> b!167126 (=> (not res!75480) (not e!100800))))

(declare-fun isEmpty!1172 (List!2843) Bool)

(assert (=> b!167126 (= res!75480 (not (isEmpty!1172 rules!1920)))))

(declare-fun b!167127 () Bool)

(declare-fun e!100807 () Bool)

(assert (=> b!167127 (= e!100807 (not (= lt!52102 (++!644 lt!52112 lt!52103))))))

(declare-fun b!167128 () Bool)

(declare-fun e!100797 () Bool)

(declare-fun e!100810 () Bool)

(declare-fun tp!83231 () Bool)

(assert (=> b!167128 (= e!100797 (and (inv!21 (value!18651 separatorToken!170)) e!100810 tp!83231))))

(declare-fun b!167129 () Bool)

(declare-fun e!100806 () Bool)

(declare-fun tp!83226 () Bool)

(assert (=> b!167129 (= e!100806 (and e!100809 tp!83226))))

(declare-fun res!75479 () Bool)

(assert (=> start!18070 (=> (not res!75479) (not e!100800))))

(assert (=> start!18070 (= res!75479 ((_ is Lexer!387) thiss!17480))))

(assert (=> start!18070 e!100800))

(assert (=> start!18070 true))

(assert (=> start!18070 e!100806))

(declare-fun inv!3662 (Token!750) Bool)

(assert (=> start!18070 (and (inv!3662 separatorToken!170) e!100797)))

(declare-fun e!100816 () Bool)

(assert (=> start!18070 e!100816))

(declare-fun e!100808 () Bool)

(assert (=> b!167130 (= e!100808 (and tp!83228 tp!83221))))

(declare-fun b!167131 () Bool)

(declare-fun tp!83222 () Bool)

(assert (=> b!167131 (= e!100816 (and (inv!3662 (h!8231 tokens!465)) e!100798 tp!83222))))

(declare-fun b!167132 () Bool)

(assert (=> b!167132 (= e!100814 e!100805)))

(declare-fun res!75469 () Bool)

(assert (=> b!167132 (=> res!75469 e!100805)))

(declare-fun lt!52109 () List!2842)

(declare-fun lt!52116 () List!2842)

(assert (=> b!167132 (= res!75469 (or (not (= lt!52109 lt!52116)) (not (= lt!52116 lt!52112)) (not (= lt!52109 lt!52112))))))

(declare-fun printList!73 (LexerInterface!389 List!2844) List!2842)

(assert (=> b!167132 (= lt!52116 (printList!73 thiss!17480 (Cons!2834 (h!8231 tokens!465) Nil!2834)))))

(declare-fun lt!52105 () BalanceConc!1664)

(assert (=> b!167132 (= lt!52109 (list!1029 lt!52105))))

(declare-fun lt!52101 () BalanceConc!1666)

(declare-fun printTailRec!83 (LexerInterface!389 BalanceConc!1666 Int BalanceConc!1664) BalanceConc!1664)

(assert (=> b!167132 (= lt!52105 (printTailRec!83 thiss!17480 lt!52101 0 (BalanceConc!1665 Empty!828)))))

(declare-fun print!120 (LexerInterface!389 BalanceConc!1666) BalanceConc!1664)

(assert (=> b!167132 (= lt!52105 (print!120 thiss!17480 lt!52101))))

(declare-fun singletonSeq!55 (Token!750) BalanceConc!1666)

(assert (=> b!167132 (= lt!52101 (singletonSeq!55 (h!8231 tokens!465)))))

(declare-fun b!167133 () Bool)

(declare-fun tp!83233 () Bool)

(assert (=> b!167133 (= e!100817 (and tp!83233 (inv!3658 (tag!681 (rule!1010 (h!8231 tokens!465)))) (inv!3661 (transformation!503 (rule!1010 (h!8231 tokens!465)))) e!100813))))

(declare-fun b!167134 () Bool)

(declare-fun res!75476 () Bool)

(assert (=> b!167134 (=> (not res!75476) (not e!100815))))

(assert (=> b!167134 (= res!75476 ((_ is Cons!2834) tokens!465))))

(declare-fun b!167135 () Bool)

(assert (=> b!167135 (= e!100800 e!100815)))

(declare-fun res!75478 () Bool)

(assert (=> b!167135 (=> (not res!75478) (not e!100815))))

(declare-fun rulesProduceEachTokenIndividually!181 (LexerInterface!389 List!2843 BalanceConc!1666) Bool)

(assert (=> b!167135 (= res!75478 (rulesProduceEachTokenIndividually!181 thiss!17480 rules!1920 lt!52100))))

(assert (=> b!167135 (= lt!52100 (seqFromList!384 tokens!465))))

(assert (=> b!167136 (= e!100805 true)))

(declare-fun lt!52107 () Bool)

(declare-fun rulesValidInductive!110 (LexerInterface!389 List!2843) Bool)

(assert (=> b!167136 (= lt!52107 (rulesValidInductive!110 thiss!17480 rules!1920))))

(declare-fun lt!52108 () BalanceConc!1664)

(assert (=> b!167136 (= lt!52108 (seqFromList!383 (originalCharacters!546 (h!8231 tokens!465))))))

(declare-fun lt!52106 () Unit!2440)

(declare-fun forallContained!70 (List!2844 Int Token!750) Unit!2440)

(assert (=> b!167136 (= lt!52106 (forallContained!70 tokens!465 lambda!4652 (h!8231 tokens!465)))))

(assert (=> b!167136 (= lt!52112 (originalCharacters!546 (h!8231 tokens!465)))))

(declare-fun b!167137 () Bool)

(declare-fun res!75472 () Bool)

(assert (=> b!167137 (=> (not res!75472) (not e!100800))))

(declare-fun rulesInvariant!355 (LexerInterface!389 List!2843) Bool)

(assert (=> b!167137 (= res!75472 (rulesInvariant!355 thiss!17480 rules!1920))))

(assert (=> b!167138 (= e!100802 (and tp!83230 tp!83225))))

(declare-fun b!167139 () Bool)

(declare-fun res!75468 () Bool)

(assert (=> b!167139 (=> res!75468 e!100814)))

(assert (=> b!167139 (= res!75468 e!100807)))

(declare-fun res!75470 () Bool)

(assert (=> b!167139 (=> (not res!75470) (not e!100807))))

(assert (=> b!167139 (= res!75470 (not (= lt!52102 lt!52111)))))

(declare-fun b!167140 () Bool)

(declare-fun res!75465 () Bool)

(assert (=> b!167140 (=> (not res!75465) (not e!100815))))

(declare-fun sepAndNonSepRulesDisjointChars!92 (List!2843 List!2843) Bool)

(assert (=> b!167140 (= res!75465 (sepAndNonSepRulesDisjointChars!92 rules!1920 rules!1920))))

(declare-fun b!167141 () Bool)

(declare-fun tp!83232 () Bool)

(assert (=> b!167141 (= e!100810 (and tp!83232 (inv!3658 (tag!681 (rule!1010 separatorToken!170))) (inv!3661 (transformation!503 (rule!1010 separatorToken!170))) e!100808))))

(assert (= (and start!18070 res!75479) b!167126))

(assert (= (and b!167126 res!75480) b!167137))

(assert (= (and b!167137 res!75472) b!167135))

(assert (= (and b!167135 res!75478) b!167124))

(assert (= (and b!167124 res!75477) b!167125))

(assert (= (and b!167125 res!75467) b!167118))

(assert (= (and b!167118 res!75471) b!167140))

(assert (= (and b!167140 res!75465) b!167134))

(assert (= (and b!167134 res!75476) b!167116))

(assert (= (and b!167116 res!75473) b!167115))

(assert (= (and b!167115 res!75464) b!167120))

(assert (= (and b!167120 (not res!75466)) b!167139))

(assert (= (and b!167139 res!75470) b!167127))

(assert (= (and b!167139 (not res!75468)) b!167132))

(assert (= (and b!167132 (not res!75469)) b!167122))

(assert (= (and b!167122 (not res!75474)) b!167123))

(assert (= (and b!167123 (not res!75475)) b!167136))

(assert (= b!167121 b!167138))

(assert (= b!167129 b!167121))

(assert (= (and start!18070 ((_ is Cons!2833) rules!1920)) b!167129))

(assert (= b!167141 b!167130))

(assert (= b!167128 b!167141))

(assert (= start!18070 b!167128))

(assert (= b!167133 b!167117))

(assert (= b!167119 b!167133))

(assert (= b!167131 b!167119))

(assert (= (and start!18070 ((_ is Cons!2834) tokens!465)) b!167131))

(declare-fun m!162043 () Bool)

(assert (=> b!167118 m!162043))

(declare-fun m!162045 () Bool)

(assert (=> b!167136 m!162045))

(declare-fun m!162047 () Bool)

(assert (=> b!167136 m!162047))

(declare-fun m!162049 () Bool)

(assert (=> b!167136 m!162049))

(declare-fun m!162051 () Bool)

(assert (=> b!167121 m!162051))

(declare-fun m!162053 () Bool)

(assert (=> b!167121 m!162053))

(declare-fun m!162055 () Bool)

(assert (=> b!167128 m!162055))

(declare-fun m!162057 () Bool)

(assert (=> b!167115 m!162057))

(assert (=> b!167115 m!162057))

(declare-fun m!162059 () Bool)

(assert (=> b!167115 m!162059))

(declare-fun m!162061 () Bool)

(assert (=> b!167119 m!162061))

(declare-fun m!162063 () Bool)

(assert (=> b!167126 m!162063))

(declare-fun m!162065 () Bool)

(assert (=> b!167124 m!162065))

(declare-fun m!162067 () Bool)

(assert (=> b!167135 m!162067))

(declare-fun m!162069 () Bool)

(assert (=> b!167135 m!162069))

(declare-fun m!162071 () Bool)

(assert (=> b!167127 m!162071))

(declare-fun m!162073 () Bool)

(assert (=> start!18070 m!162073))

(declare-fun m!162075 () Bool)

(assert (=> b!167140 m!162075))

(declare-fun m!162077 () Bool)

(assert (=> b!167123 m!162077))

(assert (=> b!167123 m!162077))

(declare-fun m!162079 () Bool)

(assert (=> b!167123 m!162079))

(declare-fun m!162081 () Bool)

(assert (=> b!167123 m!162081))

(declare-fun m!162083 () Bool)

(assert (=> b!167132 m!162083))

(declare-fun m!162085 () Bool)

(assert (=> b!167132 m!162085))

(declare-fun m!162087 () Bool)

(assert (=> b!167132 m!162087))

(declare-fun m!162089 () Bool)

(assert (=> b!167132 m!162089))

(declare-fun m!162091 () Bool)

(assert (=> b!167132 m!162091))

(declare-fun m!162093 () Bool)

(assert (=> b!167116 m!162093))

(assert (=> b!167116 m!162093))

(declare-fun m!162095 () Bool)

(assert (=> b!167116 m!162095))

(declare-fun m!162097 () Bool)

(assert (=> b!167116 m!162097))

(declare-fun m!162099 () Bool)

(assert (=> b!167131 m!162099))

(declare-fun m!162101 () Bool)

(assert (=> b!167137 m!162101))

(declare-fun m!162103 () Bool)

(assert (=> b!167122 m!162103))

(declare-fun m!162105 () Bool)

(assert (=> b!167133 m!162105))

(declare-fun m!162107 () Bool)

(assert (=> b!167133 m!162107))

(declare-fun m!162109 () Bool)

(assert (=> b!167120 m!162109))

(declare-fun m!162111 () Bool)

(assert (=> b!167120 m!162111))

(declare-fun m!162113 () Bool)

(assert (=> b!167120 m!162113))

(declare-fun m!162115 () Bool)

(assert (=> b!167120 m!162115))

(declare-fun m!162117 () Bool)

(assert (=> b!167120 m!162117))

(declare-fun m!162119 () Bool)

(assert (=> b!167120 m!162119))

(assert (=> b!167120 m!162117))

(declare-fun m!162121 () Bool)

(assert (=> b!167120 m!162121))

(assert (=> b!167120 m!162109))

(declare-fun m!162123 () Bool)

(assert (=> b!167120 m!162123))

(declare-fun m!162125 () Bool)

(assert (=> b!167120 m!162125))

(declare-fun m!162127 () Bool)

(assert (=> b!167120 m!162127))

(declare-fun m!162129 () Bool)

(assert (=> b!167120 m!162129))

(assert (=> b!167120 m!162113))

(assert (=> b!167120 m!162127))

(declare-fun m!162131 () Bool)

(assert (=> b!167120 m!162131))

(assert (=> b!167120 m!162123))

(declare-fun m!162133 () Bool)

(assert (=> b!167120 m!162133))

(declare-fun m!162135 () Bool)

(assert (=> b!167141 m!162135))

(declare-fun m!162137 () Bool)

(assert (=> b!167141 m!162137))

(check-sat (not b!167132) (not b_next!6323) (not b!167126) b_and!10809 (not b!167120) b_and!10801 (not b_next!6327) b_and!10803 (not b!167122) (not b!167128) (not start!18070) (not b!167133) (not b_next!6331) (not b!167121) (not b!167141) (not b!167115) (not b!167124) (not b!167129) (not b!167131) (not b!167135) b_and!10805 (not b!167127) (not b!167137) (not b!167123) (not b!167150) (not b!167140) (not b_next!6329) (not b_next!6325) (not b!167136) (not b!167119) b_and!10807 (not b!167116) (not b_next!6321) b_and!10811 (not b!167118))
(check-sat (not b_next!6331) (not b_next!6323) b_and!10805 (not b_next!6329) (not b_next!6325) b_and!10809 b_and!10807 (not b_next!6321) b_and!10811 b_and!10801 (not b_next!6327) b_and!10803)
