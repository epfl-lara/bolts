; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18198 () Bool)

(assert start!18198)

(declare-fun b!168502 () Bool)

(declare-fun b_free!6433 () Bool)

(declare-fun b_next!6433 () Bool)

(assert (=> b!168502 (= b_free!6433 (not b_next!6433))))

(declare-fun tp!83653 () Bool)

(declare-fun b_and!10961 () Bool)

(assert (=> b!168502 (= tp!83653 b_and!10961)))

(declare-fun b_free!6435 () Bool)

(declare-fun b_next!6435 () Bool)

(assert (=> b!168502 (= b_free!6435 (not b_next!6435))))

(declare-fun tp!83662 () Bool)

(declare-fun b_and!10963 () Bool)

(assert (=> b!168502 (= tp!83662 b_and!10963)))

(declare-fun b!168516 () Bool)

(declare-fun b_free!6437 () Bool)

(declare-fun b_next!6437 () Bool)

(assert (=> b!168516 (= b_free!6437 (not b_next!6437))))

(declare-fun tp!83661 () Bool)

(declare-fun b_and!10965 () Bool)

(assert (=> b!168516 (= tp!83661 b_and!10965)))

(declare-fun b_free!6439 () Bool)

(declare-fun b_next!6439 () Bool)

(assert (=> b!168516 (= b_free!6439 (not b_next!6439))))

(declare-fun tp!83655 () Bool)

(declare-fun b_and!10967 () Bool)

(assert (=> b!168516 (= tp!83655 b_and!10967)))

(declare-fun b!168500 () Bool)

(declare-fun b_free!6441 () Bool)

(declare-fun b_next!6441 () Bool)

(assert (=> b!168500 (= b_free!6441 (not b_next!6441))))

(declare-fun tp!83654 () Bool)

(declare-fun b_and!10969 () Bool)

(assert (=> b!168500 (= tp!83654 b_and!10969)))

(declare-fun b_free!6443 () Bool)

(declare-fun b_next!6443 () Bool)

(assert (=> b!168500 (= b_free!6443 (not b_next!6443))))

(declare-fun tp!83663 () Bool)

(declare-fun b_and!10971 () Bool)

(assert (=> b!168500 (= tp!83663 b_and!10971)))

(declare-fun bs!16360 () Bool)

(declare-fun b!168524 () Bool)

(declare-fun b!168518 () Bool)

(assert (= bs!16360 (and b!168524 b!168518)))

(declare-fun lambda!4740 () Int)

(declare-fun lambda!4739 () Int)

(assert (=> bs!16360 (not (= lambda!4740 lambda!4739))))

(declare-fun b!168538 () Bool)

(declare-fun e!101844 () Bool)

(assert (=> b!168538 (= e!101844 true)))

(declare-fun b!168537 () Bool)

(declare-fun e!101843 () Bool)

(assert (=> b!168537 (= e!101843 e!101844)))

(declare-fun b!168536 () Bool)

(declare-fun e!101842 () Bool)

(assert (=> b!168536 (= e!101842 e!101843)))

(assert (=> b!168524 e!101842))

(assert (= b!168537 b!168538))

(assert (= b!168536 b!168537))

(declare-datatypes ((List!2875 0))(
  ( (Nil!2865) (Cons!2865 (h!8262 (_ BitVec 16)) (t!26925 List!2875)) )
))
(declare-datatypes ((TokenValue!533 0))(
  ( (FloatLiteralValue!1066 (text!4176 List!2875)) (TokenValueExt!532 (__x!2553 Int)) (Broken!2665 (value!18853 List!2875)) (Object!542) (End!533) (Def!533) (Underscore!533) (Match!533) (Else!533) (Error!533) (Case!533) (If!533) (Extends!533) (Abstract!533) (Class!533) (Val!533) (DelimiterValue!1066 (del!593 List!2875)) (KeywordValue!539 (value!18854 List!2875)) (CommentValue!1066 (value!18855 List!2875)) (WhitespaceValue!1066 (value!18856 List!2875)) (IndentationValue!533 (value!18857 List!2875)) (String!3744) (Int32!533) (Broken!2666 (value!18858 List!2875)) (Boolean!534) (Unit!2479) (OperatorValue!536 (op!593 List!2875)) (IdentifierValue!1066 (value!18859 List!2875)) (IdentifierValue!1067 (value!18860 List!2875)) (WhitespaceValue!1067 (value!18861 List!2875)) (True!1066) (False!1066) (Broken!2667 (value!18862 List!2875)) (Broken!2668 (value!18863 List!2875)) (True!1067) (RightBrace!533) (RightBracket!533) (Colon!533) (Null!533) (Comma!533) (LeftBracket!533) (False!1067) (LeftBrace!533) (ImaginaryLiteralValue!533 (text!4177 List!2875)) (StringLiteralValue!1599 (value!18864 List!2875)) (EOFValue!533 (value!18865 List!2875)) (IdentValue!533 (value!18866 List!2875)) (DelimiterValue!1067 (value!18867 List!2875)) (DedentValue!533 (value!18868 List!2875)) (NewLineValue!533 (value!18869 List!2875)) (IntegerValue!1599 (value!18870 (_ BitVec 32)) (text!4178 List!2875)) (IntegerValue!1600 (value!18871 Int) (text!4179 List!2875)) (Times!533) (Or!533) (Equal!533) (Minus!533) (Broken!2669 (value!18872 List!2875)) (And!533) (Div!533) (LessEqual!533) (Mod!533) (Concat!1268) (Not!533) (Plus!533) (SpaceValue!533 (value!18873 List!2875)) (IntegerValue!1601 (value!18874 Int) (text!4180 List!2875)) (StringLiteralValue!1600 (text!4181 List!2875)) (FloatLiteralValue!1067 (text!4182 List!2875)) (BytesLiteralValue!533 (value!18875 List!2875)) (CommentValue!1067 (value!18876 List!2875)) (StringLiteralValue!1601 (value!18877 List!2875)) (ErrorTokenValue!533 (msg!594 List!2875)) )
))
(declare-datatypes ((C!2392 0))(
  ( (C!2393 (val!1082 Int)) )
))
(declare-datatypes ((List!2876 0))(
  ( (Nil!2866) (Cons!2866 (h!8263 C!2392) (t!26926 List!2876)) )
))
(declare-datatypes ((IArray!1689 0))(
  ( (IArray!1690 (innerList!902 List!2876)) )
))
(declare-datatypes ((Conc!844 0))(
  ( (Node!844 (left!2178 Conc!844) (right!2508 Conc!844) (csize!1918 Int) (cheight!1055 Int)) (Leaf!1439 (xs!3439 IArray!1689) (csize!1919 Int)) (Empty!844) )
))
(declare-datatypes ((BalanceConc!1696 0))(
  ( (BalanceConc!1697 (c!33524 Conc!844)) )
))
(declare-datatypes ((TokenValueInjection!838 0))(
  ( (TokenValueInjection!839 (toValue!1174 Int) (toChars!1033 Int)) )
))
(declare-datatypes ((String!3745 0))(
  ( (String!3746 (value!18878 String)) )
))
(declare-datatypes ((Regex!735 0))(
  ( (ElementMatch!735 (c!33525 C!2392)) (Concat!1269 (regOne!1982 Regex!735) (regTwo!1982 Regex!735)) (EmptyExpr!735) (Star!735 (reg!1064 Regex!735)) (EmptyLang!735) (Union!735 (regOne!1983 Regex!735) (regTwo!1983 Regex!735)) )
))
(declare-datatypes ((Rule!822 0))(
  ( (Rule!823 (regex!511 Regex!735) (tag!689 String!3745) (isSeparator!511 Bool) (transformation!511 TokenValueInjection!838)) )
))
(declare-datatypes ((List!2877 0))(
  ( (Nil!2867) (Cons!2867 (h!8264 Rule!822) (t!26927 List!2877)) )
))
(declare-fun rules!1920 () List!2877)

(get-info :version)

(assert (= (and b!168524 ((_ is Cons!2867) rules!1920)) b!168536))

(declare-fun order!1527 () Int)

(declare-fun order!1525 () Int)

(declare-fun dynLambda!1063 (Int Int) Int)

(declare-fun dynLambda!1064 (Int Int) Int)

(assert (=> b!168538 (< (dynLambda!1063 order!1525 (toValue!1174 (transformation!511 (h!8264 rules!1920)))) (dynLambda!1064 order!1527 lambda!4740))))

(declare-fun order!1529 () Int)

(declare-fun dynLambda!1065 (Int Int) Int)

(assert (=> b!168538 (< (dynLambda!1065 order!1529 (toChars!1033 (transformation!511 (h!8264 rules!1920)))) (dynLambda!1064 order!1527 lambda!4740))))

(assert (=> b!168524 true))

(declare-fun b!168501 () Bool)

(declare-fun e!101825 () Bool)

(declare-fun e!101821 () Bool)

(assert (=> b!168501 (= e!101825 (not e!101821))))

(declare-fun res!76141 () Bool)

(assert (=> b!168501 (=> res!76141 e!101821)))

(declare-fun lt!52818 () List!2876)

(declare-datatypes ((Token!766 0))(
  ( (Token!767 (value!18879 TokenValue!533) (rule!1018 Rule!822) (size!2387 Int) (originalCharacters!554 List!2876)) )
))
(declare-datatypes ((List!2878 0))(
  ( (Nil!2868) (Cons!2868 (h!8265 Token!766) (t!26928 List!2878)) )
))
(declare-fun tokens!465 () List!2878)

(declare-datatypes ((LexerInterface!397 0))(
  ( (LexerInterfaceExt!394 (__x!2554 Int)) (Lexer!395) )
))
(declare-fun thiss!17480 () LexerInterface!397)

(declare-fun separatorToken!170 () Token!766)

(declare-fun list!1041 (BalanceConc!1696) List!2876)

(declare-datatypes ((IArray!1691 0))(
  ( (IArray!1692 (innerList!903 List!2878)) )
))
(declare-datatypes ((Conc!845 0))(
  ( (Node!845 (left!2179 Conc!845) (right!2509 Conc!845) (csize!1920 Int) (cheight!1056 Int)) (Leaf!1440 (xs!3440 IArray!1691) (csize!1921 Int)) (Empty!845) )
))
(declare-datatypes ((BalanceConc!1698 0))(
  ( (BalanceConc!1699 (c!33526 Conc!845)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!80 (LexerInterface!397 List!2877 BalanceConc!1698 Token!766 Int) BalanceConc!1696)

(declare-fun seqFromList!399 (List!2878) BalanceConc!1698)

(assert (=> b!168501 (= res!76141 (not (= lt!52818 (list!1041 (printWithSeparatorTokenWhenNeededRec!80 thiss!17480 rules!1920 (seqFromList!399 (t!26928 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!52804 () List!2876)

(declare-fun lt!52810 () List!2876)

(assert (=> b!168501 (= lt!52804 lt!52810)))

(declare-fun lt!52808 () List!2876)

(declare-fun lt!52813 () List!2876)

(declare-fun ++!654 (List!2876 List!2876) List!2876)

(assert (=> b!168501 (= lt!52810 (++!654 lt!52808 lt!52813))))

(declare-fun lt!52811 () List!2876)

(assert (=> b!168501 (= lt!52804 (++!654 (++!654 lt!52808 lt!52811) lt!52818))))

(declare-datatypes ((Unit!2480 0))(
  ( (Unit!2481) )
))
(declare-fun lt!52817 () Unit!2480)

(declare-fun lemmaConcatAssociativity!196 (List!2876 List!2876 List!2876) Unit!2480)

(assert (=> b!168501 (= lt!52817 (lemmaConcatAssociativity!196 lt!52808 lt!52811 lt!52818))))

(declare-fun charsOf!166 (Token!766) BalanceConc!1696)

(assert (=> b!168501 (= lt!52808 (list!1041 (charsOf!166 (h!8265 tokens!465))))))

(assert (=> b!168501 (= lt!52813 (++!654 lt!52811 lt!52818))))

(declare-fun printWithSeparatorTokenWhenNeededList!90 (LexerInterface!397 List!2877 List!2878 Token!766) List!2876)

(assert (=> b!168501 (= lt!52818 (printWithSeparatorTokenWhenNeededList!90 thiss!17480 rules!1920 (t!26928 tokens!465) separatorToken!170))))

(assert (=> b!168501 (= lt!52811 (list!1041 (charsOf!166 separatorToken!170)))))

(declare-fun e!101818 () Bool)

(assert (=> b!168502 (= e!101818 (and tp!83653 tp!83662))))

(declare-fun b!168503 () Bool)

(declare-fun res!76127 () Bool)

(declare-fun e!101819 () Bool)

(assert (=> b!168503 (=> (not res!76127) (not e!101819))))

(assert (=> b!168503 (= res!76127 (isSeparator!511 (rule!1018 separatorToken!170)))))

(declare-fun b!168504 () Bool)

(declare-fun res!76140 () Bool)

(declare-fun e!101823 () Bool)

(assert (=> b!168504 (=> res!76140 e!101823)))

(declare-fun rulesProduceIndividualToken!146 (LexerInterface!397 List!2877 Token!766) Bool)

(assert (=> b!168504 (= res!76140 (not (rulesProduceIndividualToken!146 thiss!17480 rules!1920 (h!8265 tokens!465))))))

(declare-fun e!101829 () Bool)

(declare-fun b!168505 () Bool)

(declare-fun e!101833 () Bool)

(declare-fun tp!83657 () Bool)

(declare-fun inv!3690 (String!3745) Bool)

(declare-fun inv!3693 (TokenValueInjection!838) Bool)

(assert (=> b!168505 (= e!101833 (and tp!83657 (inv!3690 (tag!689 (rule!1018 separatorToken!170))) (inv!3693 (transformation!511 (rule!1018 separatorToken!170))) e!101829))))

(declare-fun b!168506 () Bool)

(declare-fun res!76132 () Bool)

(assert (=> b!168506 (=> (not res!76132) (not e!101825))))

(declare-fun lt!52812 () List!2876)

(declare-fun lt!52805 () List!2876)

(declare-fun seqFromList!400 (List!2876) BalanceConc!1696)

(assert (=> b!168506 (= res!76132 (= (list!1041 (seqFromList!400 lt!52812)) lt!52805))))

(declare-fun b!168507 () Bool)

(declare-fun e!101834 () Bool)

(declare-fun e!101824 () Bool)

(declare-fun tp!83660 () Bool)

(assert (=> b!168507 (= e!101834 (and e!101824 tp!83660))))

(declare-fun b!168508 () Bool)

(declare-fun e!101815 () Bool)

(assert (=> b!168508 (= e!101815 true)))

(declare-datatypes ((tuple2!2746 0))(
  ( (tuple2!2747 (_1!1589 Token!766) (_2!1589 List!2876)) )
))
(declare-datatypes ((Option!296 0))(
  ( (None!295) (Some!295 (v!13726 tuple2!2746)) )
))
(declare-fun isDefined!147 (Option!296) Bool)

(declare-fun maxPrefix!127 (LexerInterface!397 List!2877 List!2876) Option!296)

(assert (=> b!168508 (isDefined!147 (maxPrefix!127 thiss!17480 rules!1920 lt!52808))))

(declare-fun b!168509 () Bool)

(declare-fun res!76138 () Bool)

(assert (=> b!168509 (=> res!76138 e!101823)))

(declare-fun isEmpty!1197 (BalanceConc!1698) Bool)

(declare-datatypes ((tuple2!2748 0))(
  ( (tuple2!2749 (_1!1590 BalanceConc!1698) (_2!1590 BalanceConc!1696)) )
))
(declare-fun lex!197 (LexerInterface!397 List!2877 BalanceConc!1696) tuple2!2748)

(assert (=> b!168509 (= res!76138 (isEmpty!1197 (_1!1590 (lex!197 thiss!17480 rules!1920 (seqFromList!400 lt!52808)))))))

(declare-fun b!168510 () Bool)

(declare-fun res!76143 () Bool)

(declare-fun e!101832 () Bool)

(assert (=> b!168510 (=> (not res!76143) (not e!101832))))

(declare-fun rulesInvariant!363 (LexerInterface!397 List!2877) Bool)

(assert (=> b!168510 (= res!76143 (rulesInvariant!363 thiss!17480 rules!1920))))

(declare-fun b!168511 () Bool)

(declare-fun res!76142 () Bool)

(assert (=> b!168511 (=> (not res!76142) (not e!101832))))

(declare-fun isEmpty!1198 (List!2877) Bool)

(assert (=> b!168511 (= res!76142 (not (isEmpty!1198 rules!1920)))))

(declare-fun b!168512 () Bool)

(declare-fun res!76135 () Bool)

(assert (=> b!168512 (=> res!76135 e!101821)))

(declare-fun e!101816 () Bool)

(assert (=> b!168512 (= res!76135 e!101816)))

(declare-fun res!76131 () Bool)

(assert (=> b!168512 (=> (not res!76131) (not e!101816))))

(assert (=> b!168512 (= res!76131 (not (= lt!52812 lt!52810)))))

(declare-fun e!101828 () Bool)

(declare-fun b!168513 () Bool)

(declare-fun tp!83664 () Bool)

(assert (=> b!168513 (= e!101824 (and tp!83664 (inv!3690 (tag!689 (h!8264 rules!1920))) (inv!3693 (transformation!511 (h!8264 rules!1920))) e!101828))))

(declare-fun tp!83665 () Bool)

(declare-fun b!168514 () Bool)

(declare-fun e!101835 () Bool)

(assert (=> b!168514 (= e!101835 (and tp!83665 (inv!3690 (tag!689 (rule!1018 (h!8265 tokens!465)))) (inv!3693 (transformation!511 (rule!1018 (h!8265 tokens!465)))) e!101818))))

(declare-fun tp!83656 () Bool)

(declare-fun b!168515 () Bool)

(declare-fun e!101820 () Bool)

(declare-fun inv!21 (TokenValue!533) Bool)

(assert (=> b!168515 (= e!101820 (and (inv!21 (value!18879 (h!8265 tokens!465))) e!101835 tp!83656))))

(declare-fun res!76128 () Bool)

(assert (=> start!18198 (=> (not res!76128) (not e!101832))))

(assert (=> start!18198 (= res!76128 ((_ is Lexer!395) thiss!17480))))

(assert (=> start!18198 e!101832))

(assert (=> start!18198 true))

(assert (=> start!18198 e!101834))

(declare-fun e!101830 () Bool)

(declare-fun inv!3694 (Token!766) Bool)

(assert (=> start!18198 (and (inv!3694 separatorToken!170) e!101830)))

(declare-fun e!101822 () Bool)

(assert (=> start!18198 e!101822))

(assert (=> b!168500 (= e!101829 (and tp!83654 tp!83663))))

(assert (=> b!168516 (= e!101828 (and tp!83661 tp!83655))))

(declare-fun b!168517 () Bool)

(declare-fun res!76139 () Bool)

(assert (=> b!168517 (=> (not res!76139) (not e!101819))))

(assert (=> b!168517 (= res!76139 (rulesProduceIndividualToken!146 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!76129 () Bool)

(assert (=> b!168518 (=> (not res!76129) (not e!101819))))

(declare-fun forall!553 (List!2878 Int) Bool)

(assert (=> b!168518 (= res!76129 (forall!553 tokens!465 lambda!4739))))

(declare-fun tp!83658 () Bool)

(declare-fun b!168519 () Bool)

(assert (=> b!168519 (= e!101830 (and (inv!21 (value!18879 separatorToken!170)) e!101833 tp!83658))))

(declare-fun b!168520 () Bool)

(declare-fun tp!83659 () Bool)

(assert (=> b!168520 (= e!101822 (and (inv!3694 (h!8265 tokens!465)) e!101820 tp!83659))))

(declare-fun b!168521 () Bool)

(assert (=> b!168521 (= e!101816 (not (= lt!52812 (++!654 lt!52808 lt!52818))))))

(declare-fun b!168522 () Bool)

(assert (=> b!168522 (= e!101832 e!101819)))

(declare-fun res!76136 () Bool)

(assert (=> b!168522 (=> (not res!76136) (not e!101819))))

(declare-fun lt!52807 () BalanceConc!1698)

(declare-fun rulesProduceEachTokenIndividually!189 (LexerInterface!397 List!2877 BalanceConc!1698) Bool)

(assert (=> b!168522 (= res!76136 (rulesProduceEachTokenIndividually!189 thiss!17480 rules!1920 lt!52807))))

(assert (=> b!168522 (= lt!52807 (seqFromList!399 tokens!465))))

(declare-fun b!168523 () Bool)

(declare-fun res!76134 () Bool)

(assert (=> b!168523 (=> (not res!76134) (not e!101819))))

(assert (=> b!168523 (= res!76134 ((_ is Cons!2868) tokens!465))))

(assert (=> b!168524 (= e!101823 e!101815)))

(declare-fun res!76144 () Bool)

(assert (=> b!168524 (=> res!76144 e!101815)))

(declare-datatypes ((tuple2!2750 0))(
  ( (tuple2!2751 (_1!1591 Token!766) (_2!1591 BalanceConc!1696)) )
))
(declare-datatypes ((Option!297 0))(
  ( (None!296) (Some!296 (v!13727 tuple2!2750)) )
))
(declare-fun isDefined!148 (Option!297) Bool)

(declare-fun maxPrefixZipperSequence!90 (LexerInterface!397 List!2877 BalanceConc!1696) Option!297)

(assert (=> b!168524 (= res!76144 (not (isDefined!148 (maxPrefixZipperSequence!90 thiss!17480 rules!1920 (seqFromList!400 (originalCharacters!554 (h!8265 tokens!465)))))))))

(declare-fun lt!52815 () Unit!2480)

(declare-fun forallContained!78 (List!2878 Int Token!766) Unit!2480)

(assert (=> b!168524 (= lt!52815 (forallContained!78 tokens!465 lambda!4740 (h!8265 tokens!465)))))

(assert (=> b!168524 (= lt!52808 (originalCharacters!554 (h!8265 tokens!465)))))

(declare-fun b!168525 () Bool)

(assert (=> b!168525 (= e!101819 e!101825)))

(declare-fun res!76133 () Bool)

(assert (=> b!168525 (=> (not res!76133) (not e!101825))))

(assert (=> b!168525 (= res!76133 (= lt!52812 lt!52805))))

(assert (=> b!168525 (= lt!52805 (list!1041 (printWithSeparatorTokenWhenNeededRec!80 thiss!17480 rules!1920 lt!52807 separatorToken!170 0)))))

(assert (=> b!168525 (= lt!52812 (printWithSeparatorTokenWhenNeededList!90 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!168526 () Bool)

(declare-fun res!76130 () Bool)

(assert (=> b!168526 (=> (not res!76130) (not e!101819))))

(declare-fun sepAndNonSepRulesDisjointChars!100 (List!2877 List!2877) Bool)

(assert (=> b!168526 (= res!76130 (sepAndNonSepRulesDisjointChars!100 rules!1920 rules!1920))))

(declare-fun b!168527 () Bool)

(assert (=> b!168527 (= e!101821 e!101823)))

(declare-fun res!76137 () Bool)

(assert (=> b!168527 (=> res!76137 e!101823)))

(declare-fun lt!52809 () List!2876)

(declare-fun lt!52814 () List!2876)

(assert (=> b!168527 (= res!76137 (or (not (= lt!52814 lt!52809)) (not (= lt!52809 lt!52808)) (not (= lt!52814 lt!52808))))))

(declare-fun printList!81 (LexerInterface!397 List!2878) List!2876)

(assert (=> b!168527 (= lt!52809 (printList!81 thiss!17480 (Cons!2868 (h!8265 tokens!465) Nil!2868)))))

(declare-fun lt!52816 () BalanceConc!1696)

(assert (=> b!168527 (= lt!52814 (list!1041 lt!52816))))

(declare-fun lt!52806 () BalanceConc!1698)

(declare-fun printTailRec!91 (LexerInterface!397 BalanceConc!1698 Int BalanceConc!1696) BalanceConc!1696)

(assert (=> b!168527 (= lt!52816 (printTailRec!91 thiss!17480 lt!52806 0 (BalanceConc!1697 Empty!844)))))

(declare-fun print!128 (LexerInterface!397 BalanceConc!1698) BalanceConc!1696)

(assert (=> b!168527 (= lt!52816 (print!128 thiss!17480 lt!52806))))

(declare-fun singletonSeq!63 (Token!766) BalanceConc!1698)

(assert (=> b!168527 (= lt!52806 (singletonSeq!63 (h!8265 tokens!465)))))

(assert (= (and start!18198 res!76128) b!168511))

(assert (= (and b!168511 res!76142) b!168510))

(assert (= (and b!168510 res!76143) b!168522))

(assert (= (and b!168522 res!76136) b!168517))

(assert (= (and b!168517 res!76139) b!168503))

(assert (= (and b!168503 res!76127) b!168518))

(assert (= (and b!168518 res!76129) b!168526))

(assert (= (and b!168526 res!76130) b!168523))

(assert (= (and b!168523 res!76134) b!168525))

(assert (= (and b!168525 res!76133) b!168506))

(assert (= (and b!168506 res!76132) b!168501))

(assert (= (and b!168501 (not res!76141)) b!168512))

(assert (= (and b!168512 res!76131) b!168521))

(assert (= (and b!168512 (not res!76135)) b!168527))

(assert (= (and b!168527 (not res!76137)) b!168504))

(assert (= (and b!168504 (not res!76140)) b!168509))

(assert (= (and b!168509 (not res!76138)) b!168524))

(assert (= (and b!168524 (not res!76144)) b!168508))

(assert (= b!168513 b!168516))

(assert (= b!168507 b!168513))

(assert (= (and start!18198 ((_ is Cons!2867) rules!1920)) b!168507))

(assert (= b!168505 b!168500))

(assert (= b!168519 b!168505))

(assert (= start!18198 b!168519))

(assert (= b!168514 b!168502))

(assert (= b!168515 b!168514))

(assert (= b!168520 b!168515))

(assert (= (and start!18198 ((_ is Cons!2868) tokens!465)) b!168520))

(declare-fun m!163789 () Bool)

(assert (=> b!168508 m!163789))

(assert (=> b!168508 m!163789))

(declare-fun m!163791 () Bool)

(assert (=> b!168508 m!163791))

(declare-fun m!163793 () Bool)

(assert (=> b!168520 m!163793))

(declare-fun m!163795 () Bool)

(assert (=> b!168511 m!163795))

(declare-fun m!163797 () Bool)

(assert (=> b!168526 m!163797))

(declare-fun m!163799 () Bool)

(assert (=> b!168519 m!163799))

(declare-fun m!163801 () Bool)

(assert (=> b!168521 m!163801))

(declare-fun m!163803 () Bool)

(assert (=> b!168515 m!163803))

(declare-fun m!163805 () Bool)

(assert (=> b!168504 m!163805))

(declare-fun m!163807 () Bool)

(assert (=> b!168517 m!163807))

(declare-fun m!163809 () Bool)

(assert (=> b!168524 m!163809))

(assert (=> b!168524 m!163809))

(declare-fun m!163811 () Bool)

(assert (=> b!168524 m!163811))

(assert (=> b!168524 m!163811))

(declare-fun m!163813 () Bool)

(assert (=> b!168524 m!163813))

(declare-fun m!163815 () Bool)

(assert (=> b!168524 m!163815))

(declare-fun m!163817 () Bool)

(assert (=> b!168509 m!163817))

(assert (=> b!168509 m!163817))

(declare-fun m!163819 () Bool)

(assert (=> b!168509 m!163819))

(declare-fun m!163821 () Bool)

(assert (=> b!168509 m!163821))

(declare-fun m!163823 () Bool)

(assert (=> b!168501 m!163823))

(declare-fun m!163825 () Bool)

(assert (=> b!168501 m!163825))

(declare-fun m!163827 () Bool)

(assert (=> b!168501 m!163827))

(declare-fun m!163829 () Bool)

(assert (=> b!168501 m!163829))

(declare-fun m!163831 () Bool)

(assert (=> b!168501 m!163831))

(declare-fun m!163833 () Bool)

(assert (=> b!168501 m!163833))

(assert (=> b!168501 m!163831))

(assert (=> b!168501 m!163827))

(declare-fun m!163835 () Bool)

(assert (=> b!168501 m!163835))

(declare-fun m!163837 () Bool)

(assert (=> b!168501 m!163837))

(assert (=> b!168501 m!163823))

(declare-fun m!163839 () Bool)

(assert (=> b!168501 m!163839))

(declare-fun m!163841 () Bool)

(assert (=> b!168501 m!163841))

(declare-fun m!163843 () Bool)

(assert (=> b!168501 m!163843))

(assert (=> b!168501 m!163843))

(declare-fun m!163845 () Bool)

(assert (=> b!168501 m!163845))

(assert (=> b!168501 m!163839))

(declare-fun m!163847 () Bool)

(assert (=> b!168501 m!163847))

(declare-fun m!163849 () Bool)

(assert (=> b!168514 m!163849))

(declare-fun m!163851 () Bool)

(assert (=> b!168514 m!163851))

(declare-fun m!163853 () Bool)

(assert (=> b!168513 m!163853))

(declare-fun m!163855 () Bool)

(assert (=> b!168513 m!163855))

(declare-fun m!163857 () Bool)

(assert (=> b!168522 m!163857))

(declare-fun m!163859 () Bool)

(assert (=> b!168522 m!163859))

(declare-fun m!163861 () Bool)

(assert (=> b!168506 m!163861))

(assert (=> b!168506 m!163861))

(declare-fun m!163863 () Bool)

(assert (=> b!168506 m!163863))

(declare-fun m!163865 () Bool)

(assert (=> b!168505 m!163865))

(declare-fun m!163867 () Bool)

(assert (=> b!168505 m!163867))

(declare-fun m!163869 () Bool)

(assert (=> b!168518 m!163869))

(declare-fun m!163871 () Bool)

(assert (=> b!168527 m!163871))

(declare-fun m!163873 () Bool)

(assert (=> b!168527 m!163873))

(declare-fun m!163875 () Bool)

(assert (=> b!168527 m!163875))

(declare-fun m!163877 () Bool)

(assert (=> b!168527 m!163877))

(declare-fun m!163879 () Bool)

(assert (=> b!168527 m!163879))

(declare-fun m!163881 () Bool)

(assert (=> b!168525 m!163881))

(assert (=> b!168525 m!163881))

(declare-fun m!163883 () Bool)

(assert (=> b!168525 m!163883))

(declare-fun m!163885 () Bool)

(assert (=> b!168525 m!163885))

(declare-fun m!163887 () Bool)

(assert (=> b!168510 m!163887))

(declare-fun m!163889 () Bool)

(assert (=> start!18198 m!163889))

(check-sat (not b!168508) (not b_next!6437) b_and!10965 (not b!168521) (not b!168527) (not b!168513) (not b!168524) b_and!10963 b_and!10961 (not b!168514) (not b_next!6435) (not b!168505) (not b!168501) (not b!168519) (not b!168509) (not b_next!6441) (not b!168520) (not b!168536) (not b_next!6433) (not b!168518) (not b!168515) b_and!10967 b_and!10969 (not b!168507) (not start!18198) b_and!10971 (not b!168510) (not b!168504) (not b!168506) (not b!168522) (not b!168511) (not b_next!6439) (not b!168517) (not b!168526) (not b!168525) (not b_next!6443))
(check-sat (not b_next!6441) (not b_next!6437) b_and!10965 (not b_next!6433) b_and!10971 (not b_next!6439) b_and!10963 b_and!10961 (not b_next!6435) (not b_next!6443) b_and!10967 b_and!10969)
