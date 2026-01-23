; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!320340 () Bool)

(assert start!320340)

(declare-fun b!3448799 () Bool)

(declare-fun b_free!89493 () Bool)

(declare-fun b_next!90197 () Bool)

(assert (=> b!3448799 (= b_free!89493 (not b_next!90197))))

(declare-fun tp!1075984 () Bool)

(declare-fun b_and!242087 () Bool)

(assert (=> b!3448799 (= tp!1075984 b_and!242087)))

(declare-fun b_free!89495 () Bool)

(declare-fun b_next!90199 () Bool)

(assert (=> b!3448799 (= b_free!89495 (not b_next!90199))))

(declare-fun tp!1075990 () Bool)

(declare-fun b_and!242089 () Bool)

(assert (=> b!3448799 (= tp!1075990 b_and!242089)))

(declare-fun b!3448803 () Bool)

(declare-fun b_free!89497 () Bool)

(declare-fun b_next!90201 () Bool)

(assert (=> b!3448803 (= b_free!89497 (not b_next!90201))))

(declare-fun tp!1075987 () Bool)

(declare-fun b_and!242091 () Bool)

(assert (=> b!3448803 (= tp!1075987 b_and!242091)))

(declare-fun b_free!89499 () Bool)

(declare-fun b_next!90203 () Bool)

(assert (=> b!3448803 (= b_free!89499 (not b_next!90203))))

(declare-fun tp!1075981 () Bool)

(declare-fun b_and!242093 () Bool)

(assert (=> b!3448803 (= tp!1075981 b_and!242093)))

(declare-fun b!3448791 () Bool)

(declare-fun b_free!89501 () Bool)

(declare-fun b_next!90205 () Bool)

(assert (=> b!3448791 (= b_free!89501 (not b_next!90205))))

(declare-fun tp!1075979 () Bool)

(declare-fun b_and!242095 () Bool)

(assert (=> b!3448791 (= tp!1075979 b_and!242095)))

(declare-fun b_free!89503 () Bool)

(declare-fun b_next!90207 () Bool)

(assert (=> b!3448791 (= b_free!89503 (not b_next!90207))))

(declare-fun tp!1075991 () Bool)

(declare-fun b_and!242097 () Bool)

(assert (=> b!3448791 (= tp!1075991 b_and!242097)))

(declare-fun e!2136213 () Bool)

(declare-fun tp!1075980 () Bool)

(declare-datatypes ((C!20538 0))(
  ( (C!20539 (val!12317 Int)) )
))
(declare-datatypes ((Regex!10176 0))(
  ( (ElementMatch!10176 (c!590306 C!20538)) (Concat!15823 (regOne!20864 Regex!10176) (regTwo!20864 Regex!10176)) (EmptyExpr!10176) (Star!10176 (reg!10505 Regex!10176)) (EmptyLang!10176) (Union!10176 (regOne!20865 Regex!10176) (regTwo!20865 Regex!10176)) )
))
(declare-datatypes ((List!37188 0))(
  ( (Nil!37064) (Cons!37064 (h!42484 (_ BitVec 16)) (t!271491 List!37188)) )
))
(declare-datatypes ((TokenValue!5647 0))(
  ( (FloatLiteralValue!11294 (text!39974 List!37188)) (TokenValueExt!5646 (__x!23511 Int)) (Broken!28235 (value!174820 List!37188)) (Object!5770) (End!5647) (Def!5647) (Underscore!5647) (Match!5647) (Else!5647) (Error!5647) (Case!5647) (If!5647) (Extends!5647) (Abstract!5647) (Class!5647) (Val!5647) (DelimiterValue!11294 (del!5707 List!37188)) (KeywordValue!5653 (value!174821 List!37188)) (CommentValue!11294 (value!174822 List!37188)) (WhitespaceValue!11294 (value!174823 List!37188)) (IndentationValue!5647 (value!174824 List!37188)) (String!41570) (Int32!5647) (Broken!28236 (value!174825 List!37188)) (Boolean!5648) (Unit!52388) (OperatorValue!5650 (op!5707 List!37188)) (IdentifierValue!11294 (value!174826 List!37188)) (IdentifierValue!11295 (value!174827 List!37188)) (WhitespaceValue!11295 (value!174828 List!37188)) (True!11294) (False!11294) (Broken!28237 (value!174829 List!37188)) (Broken!28238 (value!174830 List!37188)) (True!11295) (RightBrace!5647) (RightBracket!5647) (Colon!5647) (Null!5647) (Comma!5647) (LeftBracket!5647) (False!11295) (LeftBrace!5647) (ImaginaryLiteralValue!5647 (text!39975 List!37188)) (StringLiteralValue!16941 (value!174831 List!37188)) (EOFValue!5647 (value!174832 List!37188)) (IdentValue!5647 (value!174833 List!37188)) (DelimiterValue!11295 (value!174834 List!37188)) (DedentValue!5647 (value!174835 List!37188)) (NewLineValue!5647 (value!174836 List!37188)) (IntegerValue!16941 (value!174837 (_ BitVec 32)) (text!39976 List!37188)) (IntegerValue!16942 (value!174838 Int) (text!39977 List!37188)) (Times!5647) (Or!5647) (Equal!5647) (Minus!5647) (Broken!28239 (value!174839 List!37188)) (And!5647) (Div!5647) (LessEqual!5647) (Mod!5647) (Concat!15824) (Not!5647) (Plus!5647) (SpaceValue!5647 (value!174840 List!37188)) (IntegerValue!16943 (value!174841 Int) (text!39978 List!37188)) (StringLiteralValue!16942 (text!39979 List!37188)) (FloatLiteralValue!11295 (text!39980 List!37188)) (BytesLiteralValue!5647 (value!174842 List!37188)) (CommentValue!11295 (value!174843 List!37188)) (StringLiteralValue!16943 (value!174844 List!37188)) (ErrorTokenValue!5647 (msg!5708 List!37188)) )
))
(declare-datatypes ((List!37189 0))(
  ( (Nil!37065) (Cons!37065 (h!42485 C!20538) (t!271492 List!37189)) )
))
(declare-datatypes ((IArray!22423 0))(
  ( (IArray!22424 (innerList!11269 List!37189)) )
))
(declare-datatypes ((Conc!11209 0))(
  ( (Node!11209 (left!28904 Conc!11209) (right!29234 Conc!11209) (csize!22648 Int) (cheight!11420 Int)) (Leaf!17529 (xs!14383 IArray!22423) (csize!22649 Int)) (Empty!11209) )
))
(declare-datatypes ((BalanceConc!22032 0))(
  ( (BalanceConc!22033 (c!590307 Conc!11209)) )
))
(declare-datatypes ((String!41571 0))(
  ( (String!41572 (value!174845 String)) )
))
(declare-datatypes ((TokenValueInjection!10722 0))(
  ( (TokenValueInjection!10723 (toValue!7637 Int) (toChars!7496 Int)) )
))
(declare-datatypes ((Rule!10634 0))(
  ( (Rule!10635 (regex!5417 Regex!10176) (tag!6013 String!41571) (isSeparator!5417 Bool) (transformation!5417 TokenValueInjection!10722)) )
))
(declare-datatypes ((Token!10200 0))(
  ( (Token!10201 (value!174846 TokenValue!5647) (rule!7995 Rule!10634) (size!28090 Int) (originalCharacters!6131 List!37189)) )
))
(declare-fun separatorToken!241 () Token!10200)

(declare-fun e!2136208 () Bool)

(declare-fun b!3448789 () Bool)

(declare-fun inv!21 (TokenValue!5647) Bool)

(assert (=> b!3448789 (= e!2136208 (and (inv!21 (value!174846 separatorToken!241)) e!2136213 tp!1075980))))

(declare-fun b!3448790 () Bool)

(declare-fun e!2136210 () Bool)

(declare-fun e!2136199 () Bool)

(assert (=> b!3448790 (= e!2136210 (not e!2136199))))

(declare-fun res!1390634 () Bool)

(assert (=> b!3448790 (=> res!1390634 e!2136199)))

(declare-fun lt!1170508 () List!37189)

(declare-fun lt!1170500 () List!37189)

(assert (=> b!3448790 (= res!1390634 (not (= lt!1170508 lt!1170500)))))

(declare-datatypes ((LexerInterface!5006 0))(
  ( (LexerInterfaceExt!5003 (__x!23512 Int)) (Lexer!5004) )
))
(declare-fun thiss!18206 () LexerInterface!5006)

(declare-datatypes ((List!37190 0))(
  ( (Nil!37066) (Cons!37066 (h!42486 Token!10200) (t!271493 List!37190)) )
))
(declare-fun tokens!494 () List!37190)

(declare-fun printList!1554 (LexerInterface!5006 List!37190) List!37189)

(assert (=> b!3448790 (= lt!1170500 (printList!1554 thiss!18206 (Cons!37066 (h!42486 tokens!494) Nil!37066)))))

(declare-fun lt!1170513 () BalanceConc!22032)

(declare-fun list!13476 (BalanceConc!22032) List!37189)

(assert (=> b!3448790 (= lt!1170508 (list!13476 lt!1170513))))

(declare-datatypes ((IArray!22425 0))(
  ( (IArray!22426 (innerList!11270 List!37190)) )
))
(declare-datatypes ((Conc!11210 0))(
  ( (Node!11210 (left!28905 Conc!11210) (right!29235 Conc!11210) (csize!22650 Int) (cheight!11421 Int)) (Leaf!17530 (xs!14384 IArray!22425) (csize!22651 Int)) (Empty!11210) )
))
(declare-datatypes ((BalanceConc!22034 0))(
  ( (BalanceConc!22035 (c!590308 Conc!11210)) )
))
(declare-fun lt!1170514 () BalanceConc!22034)

(declare-fun printTailRec!1501 (LexerInterface!5006 BalanceConc!22034 Int BalanceConc!22032) BalanceConc!22032)

(assert (=> b!3448790 (= lt!1170513 (printTailRec!1501 thiss!18206 lt!1170514 0 (BalanceConc!22033 Empty!11209)))))

(declare-fun print!2071 (LexerInterface!5006 BalanceConc!22034) BalanceConc!22032)

(assert (=> b!3448790 (= lt!1170513 (print!2071 thiss!18206 lt!1170514))))

(declare-fun singletonSeq!2513 (Token!10200) BalanceConc!22034)

(assert (=> b!3448790 (= lt!1170514 (singletonSeq!2513 (h!42486 tokens!494)))))

(declare-fun e!2136220 () Bool)

(assert (=> b!3448791 (= e!2136220 (and tp!1075979 tp!1075991))))

(declare-fun b!3448792 () Bool)

(declare-fun res!1390633 () Bool)

(assert (=> b!3448792 (=> (not res!1390633) (not e!2136210))))

(declare-fun lambda!121494 () Int)

(declare-fun forall!7880 (List!37190 Int) Bool)

(assert (=> b!3448792 (= res!1390633 (forall!7880 tokens!494 lambda!121494))))

(declare-fun b!3448793 () Bool)

(declare-fun e!2136207 () Bool)

(declare-fun e!2136202 () Bool)

(assert (=> b!3448793 (= e!2136207 e!2136202)))

(declare-fun res!1390621 () Bool)

(assert (=> b!3448793 (=> res!1390621 e!2136202)))

(declare-fun lt!1170511 () List!37189)

(declare-fun lt!1170510 () List!37189)

(declare-fun ++!9120 (List!37189 List!37189) List!37189)

(declare-fun charsOf!3431 (Token!10200) BalanceConc!22032)

(declare-fun printWithSeparatorTokenList!293 (LexerInterface!5006 List!37190 Token!10200) List!37189)

(assert (=> b!3448793 (= res!1390621 (not (= lt!1170510 (++!9120 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511) (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1170506 () List!37189)

(assert (=> b!3448793 (= lt!1170506 (++!9120 lt!1170511 lt!1170510))))

(assert (=> b!3448793 (= lt!1170511 (list!13476 (charsOf!3431 separatorToken!241)))))

(assert (=> b!3448793 (= lt!1170510 (printWithSeparatorTokenList!293 thiss!18206 (t!271493 tokens!494) separatorToken!241))))

(declare-fun lt!1170512 () List!37189)

(assert (=> b!3448793 (= lt!1170512 (printWithSeparatorTokenList!293 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3448794 () Bool)

(declare-fun e!2136209 () Bool)

(declare-fun e!2136203 () Bool)

(assert (=> b!3448794 (= e!2136209 e!2136203)))

(declare-fun res!1390620 () Bool)

(assert (=> b!3448794 (=> res!1390620 e!2136203)))

(declare-fun contains!6835 (List!37189 C!20538) Bool)

(declare-fun usedCharacters!651 (Regex!10176) List!37189)

(declare-fun head!7284 (List!37189) C!20538)

(assert (=> b!3448794 (= res!1390620 (contains!6835 (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241))) (head!7284 lt!1170511)))))

(declare-fun e!2136215 () Bool)

(assert (=> b!3448794 e!2136215))

(declare-fun res!1390636 () Bool)

(assert (=> b!3448794 (=> (not res!1390636) (not e!2136215))))

(declare-datatypes ((Option!7479 0))(
  ( (None!7478) (Some!7478 (v!36746 Rule!10634)) )
))
(declare-fun lt!1170498 () Option!7479)

(declare-fun isDefined!5771 (Option!7479) Bool)

(assert (=> b!3448794 (= res!1390636 (isDefined!5771 lt!1170498))))

(declare-datatypes ((List!37191 0))(
  ( (Nil!37067) (Cons!37067 (h!42487 Rule!10634) (t!271494 List!37191)) )
))
(declare-fun rules!2135 () List!37191)

(declare-fun getRuleFromTag!1060 (LexerInterface!5006 List!37191 String!41571) Option!7479)

(assert (=> b!3448794 (= lt!1170498 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 separatorToken!241))))))

(declare-datatypes ((Unit!52389 0))(
  ( (Unit!52390) )
))
(declare-fun lt!1170504 () Unit!52389)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1060 (LexerInterface!5006 List!37191 List!37189 Token!10200) Unit!52389)

(assert (=> b!3448794 (= lt!1170504 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1060 thiss!18206 rules!2135 lt!1170511 separatorToken!241))))

(declare-fun lt!1170505 () BalanceConc!22032)

(declare-fun lt!1170503 () List!37189)

(declare-datatypes ((tuple2!36740 0))(
  ( (tuple2!36741 (_1!21504 Token!10200) (_2!21504 List!37189)) )
))
(declare-datatypes ((Option!7480 0))(
  ( (None!7479) (Some!7479 (v!36747 tuple2!36740)) )
))
(declare-fun maxPrefixOneRule!1713 (LexerInterface!5006 Rule!10634 List!37189) Option!7480)

(declare-fun apply!8684 (TokenValueInjection!10722 BalanceConc!22032) TokenValue!5647)

(declare-fun size!28091 (List!37189) Int)

(assert (=> b!3448794 (= (maxPrefixOneRule!1713 thiss!18206 (rule!7995 (h!42486 tokens!494)) lt!1170503) (Some!7479 (tuple2!36741 (Token!10201 (apply!8684 (transformation!5417 (rule!7995 (h!42486 tokens!494))) lt!1170505) (rule!7995 (h!42486 tokens!494)) (size!28091 lt!1170503) lt!1170503) Nil!37065)))))

(declare-fun lt!1170497 () Unit!52389)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!806 (LexerInterface!5006 List!37191 List!37189 List!37189 List!37189 Rule!10634) Unit!52389)

(assert (=> b!3448794 (= lt!1170497 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!806 thiss!18206 rules!2135 lt!1170503 lt!1170503 Nil!37065 (rule!7995 (h!42486 tokens!494))))))

(declare-fun e!2136217 () Bool)

(assert (=> b!3448794 e!2136217))

(declare-fun res!1390627 () Bool)

(assert (=> b!3448794 (=> (not res!1390627) (not e!2136217))))

(declare-fun lt!1170509 () Option!7479)

(assert (=> b!3448794 (= res!1390627 (isDefined!5771 lt!1170509))))

(assert (=> b!3448794 (= lt!1170509 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 (h!42486 tokens!494)))))))

(declare-fun lt!1170517 () Unit!52389)

(assert (=> b!3448794 (= lt!1170517 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1060 thiss!18206 rules!2135 lt!1170503 (h!42486 tokens!494)))))

(declare-fun lt!1170499 () Unit!52389)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!995 (LexerInterface!5006 List!37191 List!37190 Token!10200) Unit!52389)

(assert (=> b!3448794 (= lt!1170499 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!995 thiss!18206 rules!2135 tokens!494 (h!42486 tokens!494)))))

(declare-fun b!3448795 () Bool)

(declare-fun e!2136206 () Bool)

(declare-fun e!2136224 () Bool)

(declare-fun tp!1075988 () Bool)

(assert (=> b!3448795 (= e!2136206 (and e!2136224 tp!1075988))))

(declare-fun b!3448796 () Bool)

(declare-fun e!2136219 () Bool)

(assert (=> b!3448796 (= e!2136219 e!2136209)))

(declare-fun res!1390624 () Bool)

(assert (=> b!3448796 (=> res!1390624 e!2136209)))

(declare-fun lt!1170516 () List!37189)

(assert (=> b!3448796 (= res!1390624 (not (= lt!1170512 lt!1170516)))))

(declare-fun lt!1170507 () List!37189)

(assert (=> b!3448796 (= lt!1170507 lt!1170516)))

(assert (=> b!3448796 (= lt!1170516 (++!9120 lt!1170503 lt!1170506))))

(declare-fun lt!1170501 () Unit!52389)

(declare-fun lemmaConcatAssociativity!1933 (List!37189 List!37189 List!37189) Unit!52389)

(assert (=> b!3448796 (= lt!1170501 (lemmaConcatAssociativity!1933 lt!1170503 lt!1170511 lt!1170510))))

(declare-fun b!3448797 () Bool)

(declare-fun e!2136214 () Bool)

(declare-fun lt!1170496 () Rule!10634)

(assert (=> b!3448797 (= e!2136214 (= (rule!7995 (h!42486 tokens!494)) lt!1170496))))

(declare-fun res!1390625 () Bool)

(assert (=> start!320340 (=> (not res!1390625) (not e!2136210))))

(assert (=> start!320340 (= res!1390625 (is-Lexer!5004 thiss!18206))))

(assert (=> start!320340 e!2136210))

(assert (=> start!320340 true))

(assert (=> start!320340 e!2136206))

(declare-fun e!2136200 () Bool)

(assert (=> start!320340 e!2136200))

(declare-fun inv!50225 (Token!10200) Bool)

(assert (=> start!320340 (and (inv!50225 separatorToken!241) e!2136208)))

(declare-fun tp!1075989 () Bool)

(declare-fun b!3448798 () Bool)

(declare-fun e!2136197 () Bool)

(declare-fun inv!50222 (String!41571) Bool)

(declare-fun inv!50226 (TokenValueInjection!10722) Bool)

(assert (=> b!3448798 (= e!2136213 (and tp!1075989 (inv!50222 (tag!6013 (rule!7995 separatorToken!241))) (inv!50226 (transformation!5417 (rule!7995 separatorToken!241))) e!2136197))))

(declare-fun e!2136211 () Bool)

(assert (=> b!3448799 (= e!2136211 (and tp!1075984 tp!1075990))))

(declare-fun b!3448800 () Bool)

(declare-fun e!2136205 () Bool)

(declare-fun lt!1170495 () Rule!10634)

(assert (=> b!3448800 (= e!2136205 (= (rule!7995 separatorToken!241) lt!1170495))))

(declare-fun b!3448801 () Bool)

(declare-fun res!1390631 () Bool)

(assert (=> b!3448801 (=> (not res!1390631) (not e!2136210))))

(declare-fun sepAndNonSepRulesDisjointChars!1611 (List!37191 List!37191) Bool)

(assert (=> b!3448801 (= res!1390631 (sepAndNonSepRulesDisjointChars!1611 rules!2135 rules!2135))))

(declare-fun b!3448802 () Bool)

(declare-fun res!1390630 () Bool)

(assert (=> b!3448802 (=> (not res!1390630) (not e!2136210))))

(assert (=> b!3448802 (= res!1390630 (isSeparator!5417 (rule!7995 separatorToken!241)))))

(assert (=> b!3448803 (= e!2136197 (and tp!1075987 tp!1075981))))

(declare-fun b!3448804 () Bool)

(declare-fun tp!1075983 () Bool)

(assert (=> b!3448804 (= e!2136224 (and tp!1075983 (inv!50222 (tag!6013 (h!42487 rules!2135))) (inv!50226 (transformation!5417 (h!42487 rules!2135))) e!2136211))))

(declare-fun b!3448805 () Bool)

(declare-fun res!1390628 () Bool)

(assert (=> b!3448805 (=> (not res!1390628) (not e!2136210))))

(assert (=> b!3448805 (= res!1390628 (and (not (is-Nil!37066 tokens!494)) (not (is-Nil!37066 (t!271493 tokens!494)))))))

(declare-fun b!3448806 () Bool)

(declare-fun e!2136201 () Bool)

(assert (=> b!3448806 (= e!2136199 e!2136201)))

(declare-fun res!1390632 () Bool)

(assert (=> b!3448806 (=> res!1390632 e!2136201)))

(assert (=> b!3448806 (= res!1390632 (or (not (= lt!1170500 lt!1170503)) (not (= lt!1170508 lt!1170503))))))

(assert (=> b!3448806 (= lt!1170503 (list!13476 (charsOf!3431 (h!42486 tokens!494))))))

(declare-fun tp!1075982 () Bool)

(declare-fun b!3448807 () Bool)

(declare-fun e!2136222 () Bool)

(assert (=> b!3448807 (= e!2136200 (and (inv!50225 (h!42486 tokens!494)) e!2136222 tp!1075982))))

(declare-fun b!3448808 () Bool)

(declare-fun e!2136221 () Bool)

(assert (=> b!3448808 (= e!2136221 e!2136207)))

(declare-fun res!1390640 () Bool)

(assert (=> b!3448808 (=> res!1390640 e!2136207)))

(assert (=> b!3448808 (= res!1390640 (or (isSeparator!5417 (rule!7995 (h!42486 tokens!494))) (isSeparator!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))))))

(declare-fun lt!1170502 () Unit!52389)

(declare-fun forallContained!1364 (List!37190 Int Token!10200) Unit!52389)

(assert (=> b!3448808 (= lt!1170502 (forallContained!1364 tokens!494 lambda!121494 (h!42486 (t!271493 tokens!494))))))

(declare-fun lt!1170515 () Unit!52389)

(assert (=> b!3448808 (= lt!1170515 (forallContained!1364 tokens!494 lambda!121494 (h!42486 tokens!494)))))

(declare-fun b!3448809 () Bool)

(declare-fun tp!1075985 () Bool)

(declare-fun e!2136216 () Bool)

(assert (=> b!3448809 (= e!2136222 (and (inv!21 (value!174846 (h!42486 tokens!494))) e!2136216 tp!1075985))))

(declare-fun b!3448810 () Bool)

(declare-fun res!1390626 () Bool)

(assert (=> b!3448810 (=> res!1390626 e!2136201)))

(declare-fun rulesProduceIndividualToken!2498 (LexerInterface!5006 List!37191 Token!10200) Bool)

(assert (=> b!3448810 (= res!1390626 (not (rulesProduceIndividualToken!2498 thiss!18206 rules!2135 (h!42486 tokens!494))))))

(declare-fun b!3448811 () Bool)

(assert (=> b!3448811 (= e!2136202 e!2136219)))

(declare-fun res!1390638 () Bool)

(assert (=> b!3448811 (=> res!1390638 e!2136219)))

(assert (=> b!3448811 (= res!1390638 (not (= lt!1170512 lt!1170507)))))

(assert (=> b!3448811 (= lt!1170507 (++!9120 (++!9120 lt!1170503 lt!1170511) lt!1170510))))

(declare-fun b!3448812 () Bool)

(assert (=> b!3448812 (= e!2136217 e!2136214)))

(declare-fun res!1390635 () Bool)

(assert (=> b!3448812 (=> (not res!1390635) (not e!2136214))))

(declare-fun matchR!4760 (Regex!10176 List!37189) Bool)

(assert (=> b!3448812 (= res!1390635 (matchR!4760 (regex!5417 lt!1170496) lt!1170503))))

(declare-fun get!11849 (Option!7479) Rule!10634)

(assert (=> b!3448812 (= lt!1170496 (get!11849 lt!1170509))))

(declare-fun b!3448813 () Bool)

(assert (=> b!3448813 (= e!2136201 e!2136221)))

(declare-fun res!1390622 () Bool)

(assert (=> b!3448813 (=> res!1390622 e!2136221)))

(declare-fun isEmpty!21376 (BalanceConc!22034) Bool)

(declare-datatypes ((tuple2!36742 0))(
  ( (tuple2!36743 (_1!21505 BalanceConc!22034) (_2!21505 BalanceConc!22032)) )
))
(declare-fun lex!2332 (LexerInterface!5006 List!37191 BalanceConc!22032) tuple2!36742)

(assert (=> b!3448813 (= res!1390622 (isEmpty!21376 (_1!21505 (lex!2332 thiss!18206 rules!2135 lt!1170505))))))

(declare-fun seqFromList!3887 (List!37189) BalanceConc!22032)

(assert (=> b!3448813 (= lt!1170505 (seqFromList!3887 lt!1170503))))

(declare-fun b!3448814 () Bool)

(declare-fun res!1390623 () Bool)

(assert (=> b!3448814 (=> (not res!1390623) (not e!2136210))))

(declare-fun isEmpty!21377 (List!37191) Bool)

(assert (=> b!3448814 (= res!1390623 (not (isEmpty!21377 rules!2135)))))

(declare-fun b!3448815 () Bool)

(declare-fun res!1390641 () Bool)

(assert (=> b!3448815 (=> (not res!1390641) (not e!2136210))))

(assert (=> b!3448815 (= res!1390641 (rulesProduceIndividualToken!2498 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3448816 () Bool)

(declare-fun res!1390629 () Bool)

(assert (=> b!3448816 (=> (not res!1390629) (not e!2136210))))

(declare-fun rulesInvariant!4403 (LexerInterface!5006 List!37191) Bool)

(assert (=> b!3448816 (= res!1390629 (rulesInvariant!4403 thiss!18206 rules!2135))))

(declare-fun b!3448817 () Bool)

(declare-fun validRegex!4631 (Regex!10176) Bool)

(assert (=> b!3448817 (= e!2136203 (validRegex!4631 (regex!5417 (rule!7995 separatorToken!241))))))

(declare-fun b!3448818 () Bool)

(declare-fun res!1390637 () Bool)

(assert (=> b!3448818 (=> (not res!1390637) (not e!2136210))))

(declare-fun rulesProduceEachTokenIndividually!1457 (LexerInterface!5006 List!37191 BalanceConc!22034) Bool)

(declare-fun seqFromList!3888 (List!37190) BalanceConc!22034)

(assert (=> b!3448818 (= res!1390637 (rulesProduceEachTokenIndividually!1457 thiss!18206 rules!2135 (seqFromList!3888 tokens!494)))))

(declare-fun tp!1075986 () Bool)

(declare-fun b!3448819 () Bool)

(assert (=> b!3448819 (= e!2136216 (and tp!1075986 (inv!50222 (tag!6013 (rule!7995 (h!42486 tokens!494)))) (inv!50226 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) e!2136220))))

(declare-fun b!3448820 () Bool)

(assert (=> b!3448820 (= e!2136215 e!2136205)))

(declare-fun res!1390639 () Bool)

(assert (=> b!3448820 (=> (not res!1390639) (not e!2136205))))

(assert (=> b!3448820 (= res!1390639 (matchR!4760 (regex!5417 lt!1170495) lt!1170511))))

(assert (=> b!3448820 (= lt!1170495 (get!11849 lt!1170498))))

(assert (= (and start!320340 res!1390625) b!3448814))

(assert (= (and b!3448814 res!1390623) b!3448816))

(assert (= (and b!3448816 res!1390629) b!3448818))

(assert (= (and b!3448818 res!1390637) b!3448815))

(assert (= (and b!3448815 res!1390641) b!3448802))

(assert (= (and b!3448802 res!1390630) b!3448792))

(assert (= (and b!3448792 res!1390633) b!3448801))

(assert (= (and b!3448801 res!1390631) b!3448805))

(assert (= (and b!3448805 res!1390628) b!3448790))

(assert (= (and b!3448790 (not res!1390634)) b!3448806))

(assert (= (and b!3448806 (not res!1390632)) b!3448810))

(assert (= (and b!3448810 (not res!1390626)) b!3448813))

(assert (= (and b!3448813 (not res!1390622)) b!3448808))

(assert (= (and b!3448808 (not res!1390640)) b!3448793))

(assert (= (and b!3448793 (not res!1390621)) b!3448811))

(assert (= (and b!3448811 (not res!1390638)) b!3448796))

(assert (= (and b!3448796 (not res!1390624)) b!3448794))

(assert (= (and b!3448794 res!1390627) b!3448812))

(assert (= (and b!3448812 res!1390635) b!3448797))

(assert (= (and b!3448794 res!1390636) b!3448820))

(assert (= (and b!3448820 res!1390639) b!3448800))

(assert (= (and b!3448794 (not res!1390620)) b!3448817))

(assert (= b!3448804 b!3448799))

(assert (= b!3448795 b!3448804))

(assert (= (and start!320340 (is-Cons!37067 rules!2135)) b!3448795))

(assert (= b!3448819 b!3448791))

(assert (= b!3448809 b!3448819))

(assert (= b!3448807 b!3448809))

(assert (= (and start!320340 (is-Cons!37066 tokens!494)) b!3448807))

(assert (= b!3448798 b!3448803))

(assert (= b!3448789 b!3448798))

(assert (= start!320340 b!3448789))

(declare-fun m!3845489 () Bool)

(assert (=> b!3448820 m!3845489))

(declare-fun m!3845491 () Bool)

(assert (=> b!3448820 m!3845491))

(declare-fun m!3845493 () Bool)

(assert (=> b!3448807 m!3845493))

(declare-fun m!3845495 () Bool)

(assert (=> b!3448810 m!3845495))

(declare-fun m!3845497 () Bool)

(assert (=> b!3448815 m!3845497))

(declare-fun m!3845499 () Bool)

(assert (=> b!3448793 m!3845499))

(declare-fun m!3845501 () Bool)

(assert (=> b!3448793 m!3845501))

(declare-fun m!3845503 () Bool)

(assert (=> b!3448793 m!3845503))

(declare-fun m!3845505 () Bool)

(assert (=> b!3448793 m!3845505))

(assert (=> b!3448793 m!3845501))

(declare-fun m!3845507 () Bool)

(assert (=> b!3448793 m!3845507))

(declare-fun m!3845509 () Bool)

(assert (=> b!3448793 m!3845509))

(assert (=> b!3448793 m!3845503))

(declare-fun m!3845511 () Bool)

(assert (=> b!3448793 m!3845511))

(assert (=> b!3448793 m!3845507))

(declare-fun m!3845513 () Bool)

(assert (=> b!3448793 m!3845513))

(declare-fun m!3845515 () Bool)

(assert (=> b!3448793 m!3845515))

(assert (=> b!3448793 m!3845513))

(assert (=> b!3448793 m!3845509))

(declare-fun m!3845517 () Bool)

(assert (=> b!3448793 m!3845517))

(declare-fun m!3845519 () Bool)

(assert (=> b!3448801 m!3845519))

(declare-fun m!3845521 () Bool)

(assert (=> b!3448816 m!3845521))

(declare-fun m!3845523 () Bool)

(assert (=> b!3448804 m!3845523))

(declare-fun m!3845525 () Bool)

(assert (=> b!3448804 m!3845525))

(declare-fun m!3845527 () Bool)

(assert (=> b!3448806 m!3845527))

(assert (=> b!3448806 m!3845527))

(declare-fun m!3845529 () Bool)

(assert (=> b!3448806 m!3845529))

(declare-fun m!3845531 () Bool)

(assert (=> start!320340 m!3845531))

(declare-fun m!3845533 () Bool)

(assert (=> b!3448812 m!3845533))

(declare-fun m!3845535 () Bool)

(assert (=> b!3448812 m!3845535))

(declare-fun m!3845537 () Bool)

(assert (=> b!3448814 m!3845537))

(declare-fun m!3845539 () Bool)

(assert (=> b!3448811 m!3845539))

(assert (=> b!3448811 m!3845539))

(declare-fun m!3845541 () Bool)

(assert (=> b!3448811 m!3845541))

(declare-fun m!3845543 () Bool)

(assert (=> b!3448794 m!3845543))

(declare-fun m!3845545 () Bool)

(assert (=> b!3448794 m!3845545))

(declare-fun m!3845547 () Bool)

(assert (=> b!3448794 m!3845547))

(declare-fun m!3845549 () Bool)

(assert (=> b!3448794 m!3845549))

(declare-fun m!3845551 () Bool)

(assert (=> b!3448794 m!3845551))

(assert (=> b!3448794 m!3845545))

(declare-fun m!3845553 () Bool)

(assert (=> b!3448794 m!3845553))

(declare-fun m!3845555 () Bool)

(assert (=> b!3448794 m!3845555))

(declare-fun m!3845557 () Bool)

(assert (=> b!3448794 m!3845557))

(declare-fun m!3845559 () Bool)

(assert (=> b!3448794 m!3845559))

(declare-fun m!3845561 () Bool)

(assert (=> b!3448794 m!3845561))

(declare-fun m!3845563 () Bool)

(assert (=> b!3448794 m!3845563))

(declare-fun m!3845565 () Bool)

(assert (=> b!3448794 m!3845565))

(declare-fun m!3845567 () Bool)

(assert (=> b!3448794 m!3845567))

(declare-fun m!3845569 () Bool)

(assert (=> b!3448794 m!3845569))

(assert (=> b!3448794 m!3845553))

(declare-fun m!3845571 () Bool)

(assert (=> b!3448789 m!3845571))

(declare-fun m!3845573 () Bool)

(assert (=> b!3448808 m!3845573))

(declare-fun m!3845575 () Bool)

(assert (=> b!3448808 m!3845575))

(declare-fun m!3845577 () Bool)

(assert (=> b!3448792 m!3845577))

(declare-fun m!3845579 () Bool)

(assert (=> b!3448819 m!3845579))

(declare-fun m!3845581 () Bool)

(assert (=> b!3448819 m!3845581))

(declare-fun m!3845583 () Bool)

(assert (=> b!3448813 m!3845583))

(declare-fun m!3845585 () Bool)

(assert (=> b!3448813 m!3845585))

(declare-fun m!3845587 () Bool)

(assert (=> b!3448813 m!3845587))

(declare-fun m!3845589 () Bool)

(assert (=> b!3448818 m!3845589))

(assert (=> b!3448818 m!3845589))

(declare-fun m!3845591 () Bool)

(assert (=> b!3448818 m!3845591))

(declare-fun m!3845593 () Bool)

(assert (=> b!3448817 m!3845593))

(declare-fun m!3845595 () Bool)

(assert (=> b!3448798 m!3845595))

(declare-fun m!3845597 () Bool)

(assert (=> b!3448798 m!3845597))

(declare-fun m!3845599 () Bool)

(assert (=> b!3448809 m!3845599))

(declare-fun m!3845601 () Bool)

(assert (=> b!3448790 m!3845601))

(declare-fun m!3845603 () Bool)

(assert (=> b!3448790 m!3845603))

(declare-fun m!3845605 () Bool)

(assert (=> b!3448790 m!3845605))

(declare-fun m!3845607 () Bool)

(assert (=> b!3448790 m!3845607))

(declare-fun m!3845609 () Bool)

(assert (=> b!3448790 m!3845609))

(declare-fun m!3845611 () Bool)

(assert (=> b!3448796 m!3845611))

(declare-fun m!3845613 () Bool)

(assert (=> b!3448796 m!3845613))

(push 1)

(assert (not b!3448795))

(assert (not b!3448819))

(assert (not b_next!90201))

(assert (not b!3448798))

(assert b_and!242089)

(assert (not b!3448789))

(assert (not b!3448804))

(assert (not b!3448813))

(assert (not b_next!90207))

(assert (not b!3448794))

(assert (not b!3448816))

(assert (not b!3448812))

(assert (not b!3448814))

(assert (not b!3448820))

(assert (not b_next!90205))

(assert (not start!320340))

(assert (not b!3448801))

(assert b_and!242097)

(assert (not b!3448807))

(assert (not b!3448817))

(assert b_and!242091)

(assert (not b!3448790))

(assert (not b!3448809))

(assert (not b_next!90203))

(assert (not b!3448793))

(assert (not b!3448818))

(assert b_and!242095)

(assert (not b_next!90197))

(assert (not b!3448808))

(assert b_and!242087)

(assert (not b!3448796))

(assert (not b!3448811))

(assert (not b!3448792))

(assert (not b_next!90199))

(assert (not b!3448806))

(assert b_and!242093)

(assert (not b!3448815))

(assert (not b!3448810))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!90201))

(assert b_and!242091)

(assert (not b_next!90203))

(assert b_and!242089)

(assert b_and!242087)

(assert (not b_next!90207))

(assert (not b_next!90199))

(assert (not b_next!90205))

(assert b_and!242093)

(assert b_and!242097)

(assert b_and!242095)

(assert (not b_next!90197))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3448945 () Bool)

(declare-fun e!2136323 () Bool)

(assert (=> b!3448945 (= e!2136323 (not (= (head!7284 lt!1170511) (c!590306 (regex!5417 lt!1170495)))))))

(declare-fun b!3448946 () Bool)

(declare-fun e!2136324 () Bool)

(declare-fun e!2136326 () Bool)

(assert (=> b!3448946 (= e!2136324 e!2136326)))

(declare-fun res!1390734 () Bool)

(assert (=> b!3448946 (=> (not res!1390734) (not e!2136326))))

(declare-fun lt!1170589 () Bool)

(assert (=> b!3448946 (= res!1390734 (not lt!1170589))))

(declare-fun b!3448947 () Bool)

(assert (=> b!3448947 (= e!2136326 e!2136323)))

(declare-fun res!1390731 () Bool)

(assert (=> b!3448947 (=> res!1390731 e!2136323)))

(declare-fun call!248953 () Bool)

(assert (=> b!3448947 (= res!1390731 call!248953)))

(declare-fun b!3448948 () Bool)

(declare-fun res!1390732 () Bool)

(declare-fun e!2136328 () Bool)

(assert (=> b!3448948 (=> (not res!1390732) (not e!2136328))))

(declare-fun isEmpty!21380 (List!37189) Bool)

(declare-fun tail!5406 (List!37189) List!37189)

(assert (=> b!3448948 (= res!1390732 (isEmpty!21380 (tail!5406 lt!1170511)))))

(declare-fun b!3448949 () Bool)

(declare-fun e!2136325 () Bool)

(declare-fun derivativeStep!3028 (Regex!10176 C!20538) Regex!10176)

(assert (=> b!3448949 (= e!2136325 (matchR!4760 (derivativeStep!3028 (regex!5417 lt!1170495) (head!7284 lt!1170511)) (tail!5406 lt!1170511)))))

(declare-fun b!3448950 () Bool)

(assert (=> b!3448950 (= e!2136328 (= (head!7284 lt!1170511) (c!590306 (regex!5417 lt!1170495))))))

(declare-fun b!3448951 () Bool)

(declare-fun res!1390733 () Bool)

(assert (=> b!3448951 (=> res!1390733 e!2136323)))

(assert (=> b!3448951 (= res!1390733 (not (isEmpty!21380 (tail!5406 lt!1170511))))))

(declare-fun b!3448952 () Bool)

(declare-fun res!1390736 () Bool)

(assert (=> b!3448952 (=> res!1390736 e!2136324)))

(assert (=> b!3448952 (= res!1390736 e!2136328)))

(declare-fun res!1390730 () Bool)

(assert (=> b!3448952 (=> (not res!1390730) (not e!2136328))))

(assert (=> b!3448952 (= res!1390730 lt!1170589)))

(declare-fun b!3448953 () Bool)

(declare-fun e!2136329 () Bool)

(declare-fun e!2136327 () Bool)

(assert (=> b!3448953 (= e!2136329 e!2136327)))

(declare-fun c!590320 () Bool)

(assert (=> b!3448953 (= c!590320 (is-EmptyLang!10176 (regex!5417 lt!1170495)))))

(declare-fun d!991582 () Bool)

(assert (=> d!991582 e!2136329))

(declare-fun c!590321 () Bool)

(assert (=> d!991582 (= c!590321 (is-EmptyExpr!10176 (regex!5417 lt!1170495)))))

(assert (=> d!991582 (= lt!1170589 e!2136325)))

(declare-fun c!590319 () Bool)

(assert (=> d!991582 (= c!590319 (isEmpty!21380 lt!1170511))))

(assert (=> d!991582 (validRegex!4631 (regex!5417 lt!1170495))))

(assert (=> d!991582 (= (matchR!4760 (regex!5417 lt!1170495) lt!1170511) lt!1170589)))

(declare-fun b!3448954 () Bool)

(declare-fun res!1390735 () Bool)

(assert (=> b!3448954 (=> (not res!1390735) (not e!2136328))))

(assert (=> b!3448954 (= res!1390735 (not call!248953))))

(declare-fun b!3448955 () Bool)

(declare-fun res!1390729 () Bool)

(assert (=> b!3448955 (=> res!1390729 e!2136324)))

(assert (=> b!3448955 (= res!1390729 (not (is-ElementMatch!10176 (regex!5417 lt!1170495))))))

(assert (=> b!3448955 (= e!2136327 e!2136324)))

(declare-fun b!3448956 () Bool)

(assert (=> b!3448956 (= e!2136327 (not lt!1170589))))

(declare-fun bm!248948 () Bool)

(assert (=> bm!248948 (= call!248953 (isEmpty!21380 lt!1170511))))

(declare-fun b!3448957 () Bool)

(assert (=> b!3448957 (= e!2136329 (= lt!1170589 call!248953))))

(declare-fun b!3448958 () Bool)

(declare-fun nullable!3475 (Regex!10176) Bool)

(assert (=> b!3448958 (= e!2136325 (nullable!3475 (regex!5417 lt!1170495)))))

(assert (= (and d!991582 c!590319) b!3448958))

(assert (= (and d!991582 (not c!590319)) b!3448949))

(assert (= (and d!991582 c!590321) b!3448957))

(assert (= (and d!991582 (not c!590321)) b!3448953))

(assert (= (and b!3448953 c!590320) b!3448956))

(assert (= (and b!3448953 (not c!590320)) b!3448955))

(assert (= (and b!3448955 (not res!1390729)) b!3448952))

(assert (= (and b!3448952 res!1390730) b!3448954))

(assert (= (and b!3448954 res!1390735) b!3448948))

(assert (= (and b!3448948 res!1390732) b!3448950))

(assert (= (and b!3448952 (not res!1390736)) b!3448946))

(assert (= (and b!3448946 res!1390734) b!3448947))

(assert (= (and b!3448947 (not res!1390731)) b!3448951))

(assert (= (and b!3448951 (not res!1390733)) b!3448945))

(assert (= (or b!3448957 b!3448947 b!3448954) bm!248948))

(declare-fun m!3845741 () Bool)

(assert (=> b!3448948 m!3845741))

(assert (=> b!3448948 m!3845741))

(declare-fun m!3845743 () Bool)

(assert (=> b!3448948 m!3845743))

(assert (=> b!3448945 m!3845553))

(declare-fun m!3845745 () Bool)

(assert (=> d!991582 m!3845745))

(declare-fun m!3845747 () Bool)

(assert (=> d!991582 m!3845747))

(assert (=> b!3448951 m!3845741))

(assert (=> b!3448951 m!3845741))

(assert (=> b!3448951 m!3845743))

(assert (=> b!3448949 m!3845553))

(assert (=> b!3448949 m!3845553))

(declare-fun m!3845749 () Bool)

(assert (=> b!3448949 m!3845749))

(assert (=> b!3448949 m!3845741))

(assert (=> b!3448949 m!3845749))

(assert (=> b!3448949 m!3845741))

(declare-fun m!3845751 () Bool)

(assert (=> b!3448949 m!3845751))

(assert (=> b!3448950 m!3845553))

(assert (=> bm!248948 m!3845745))

(declare-fun m!3845753 () Bool)

(assert (=> b!3448958 m!3845753))

(assert (=> b!3448820 d!991582))

(declare-fun d!991584 () Bool)

(assert (=> d!991584 (= (get!11849 lt!1170498) (v!36746 lt!1170498))))

(assert (=> b!3448820 d!991584))

(declare-fun d!991586 () Bool)

(assert (=> d!991586 (= (inv!50222 (tag!6013 (rule!7995 (h!42486 tokens!494)))) (= (mod (str.len (value!174845 (tag!6013 (rule!7995 (h!42486 tokens!494))))) 2) 0))))

(assert (=> b!3448819 d!991586))

(declare-fun d!991588 () Bool)

(declare-fun res!1390740 () Bool)

(declare-fun e!2136332 () Bool)

(assert (=> d!991588 (=> (not res!1390740) (not e!2136332))))

(declare-fun semiInverseModEq!2270 (Int Int) Bool)

(assert (=> d!991588 (= res!1390740 (semiInverseModEq!2270 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))))))

(assert (=> d!991588 (= (inv!50226 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) e!2136332)))

(declare-fun b!3448961 () Bool)

(declare-fun equivClasses!2169 (Int Int) Bool)

(assert (=> b!3448961 (= e!2136332 (equivClasses!2169 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))))))

(assert (= (and d!991588 res!1390740) b!3448961))

(declare-fun m!3845755 () Bool)

(assert (=> d!991588 m!3845755))

(declare-fun m!3845757 () Bool)

(assert (=> b!3448961 m!3845757))

(assert (=> b!3448819 d!991588))

(declare-fun d!991590 () Bool)

(assert (=> d!991590 (= (inv!50222 (tag!6013 (rule!7995 separatorToken!241))) (= (mod (str.len (value!174845 (tag!6013 (rule!7995 separatorToken!241)))) 2) 0))))

(assert (=> b!3448798 d!991590))

(declare-fun d!991592 () Bool)

(declare-fun res!1390741 () Bool)

(declare-fun e!2136333 () Bool)

(assert (=> d!991592 (=> (not res!1390741) (not e!2136333))))

(assert (=> d!991592 (= res!1390741 (semiInverseModEq!2270 (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toValue!7637 (transformation!5417 (rule!7995 separatorToken!241)))))))

(assert (=> d!991592 (= (inv!50226 (transformation!5417 (rule!7995 separatorToken!241))) e!2136333)))

(declare-fun b!3448962 () Bool)

(assert (=> b!3448962 (= e!2136333 (equivClasses!2169 (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toValue!7637 (transformation!5417 (rule!7995 separatorToken!241)))))))

(assert (= (and d!991592 res!1390741) b!3448962))

(declare-fun m!3845759 () Bool)

(assert (=> d!991592 m!3845759))

(declare-fun m!3845761 () Bool)

(assert (=> b!3448962 m!3845761))

(assert (=> b!3448798 d!991592))

(declare-fun bs!559681 () Bool)

(declare-fun d!991594 () Bool)

(assert (= bs!559681 (and d!991594 b!3448792)))

(declare-fun lambda!121506 () Int)

(assert (=> bs!559681 (not (= lambda!121506 lambda!121494))))

(declare-fun b!3449064 () Bool)

(declare-fun e!2136394 () Bool)

(assert (=> b!3449064 (= e!2136394 true)))

(declare-fun b!3449063 () Bool)

(declare-fun e!2136393 () Bool)

(assert (=> b!3449063 (= e!2136393 e!2136394)))

(declare-fun b!3449062 () Bool)

(declare-fun e!2136392 () Bool)

(assert (=> b!3449062 (= e!2136392 e!2136393)))

(assert (=> d!991594 e!2136392))

(assert (= b!3449063 b!3449064))

(assert (= b!3449062 b!3449063))

(assert (= (and d!991594 (is-Cons!37067 rules!2135)) b!3449062))

(declare-fun order!19665 () Int)

(declare-fun order!19663 () Int)

(declare-fun dynLambda!15551 (Int Int) Int)

(declare-fun dynLambda!15552 (Int Int) Int)

(assert (=> b!3449064 (< (dynLambda!15551 order!19663 (toValue!7637 (transformation!5417 (h!42487 rules!2135)))) (dynLambda!15552 order!19665 lambda!121506))))

(declare-fun order!19667 () Int)

(declare-fun dynLambda!15553 (Int Int) Int)

(assert (=> b!3449064 (< (dynLambda!15553 order!19667 (toChars!7496 (transformation!5417 (h!42487 rules!2135)))) (dynLambda!15552 order!19665 lambda!121506))))

(assert (=> d!991594 true))

(declare-fun e!2136385 () Bool)

(assert (=> d!991594 e!2136385))

(declare-fun res!1390801 () Bool)

(assert (=> d!991594 (=> (not res!1390801) (not e!2136385))))

(declare-fun lt!1170610 () Bool)

(declare-fun list!13478 (BalanceConc!22034) List!37190)

(assert (=> d!991594 (= res!1390801 (= lt!1170610 (forall!7880 (list!13478 (seqFromList!3888 tokens!494)) lambda!121506)))))

(declare-fun forall!7882 (BalanceConc!22034 Int) Bool)

(assert (=> d!991594 (= lt!1170610 (forall!7882 (seqFromList!3888 tokens!494) lambda!121506))))

(assert (=> d!991594 (not (isEmpty!21377 rules!2135))))

(assert (=> d!991594 (= (rulesProduceEachTokenIndividually!1457 thiss!18206 rules!2135 (seqFromList!3888 tokens!494)) lt!1170610)))

(declare-fun b!3449053 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1842 (LexerInterface!5006 List!37191 List!37190) Bool)

(assert (=> b!3449053 (= e!2136385 (= lt!1170610 (rulesProduceEachTokenIndividuallyList!1842 thiss!18206 rules!2135 (list!13478 (seqFromList!3888 tokens!494)))))))

(assert (= (and d!991594 res!1390801) b!3449053))

(assert (=> d!991594 m!3845589))

(declare-fun m!3845855 () Bool)

(assert (=> d!991594 m!3845855))

(assert (=> d!991594 m!3845855))

(declare-fun m!3845857 () Bool)

(assert (=> d!991594 m!3845857))

(assert (=> d!991594 m!3845589))

(declare-fun m!3845859 () Bool)

(assert (=> d!991594 m!3845859))

(assert (=> d!991594 m!3845537))

(assert (=> b!3449053 m!3845589))

(assert (=> b!3449053 m!3845855))

(assert (=> b!3449053 m!3845855))

(declare-fun m!3845861 () Bool)

(assert (=> b!3449053 m!3845861))

(assert (=> b!3448818 d!991594))

(declare-fun d!991620 () Bool)

(declare-fun fromListB!1756 (List!37190) BalanceConc!22034)

(assert (=> d!991620 (= (seqFromList!3888 tokens!494) (fromListB!1756 tokens!494))))

(declare-fun bs!559682 () Bool)

(assert (= bs!559682 d!991620))

(declare-fun m!3845863 () Bool)

(assert (=> bs!559682 m!3845863))

(assert (=> b!3448818 d!991620))

(declare-fun bm!248958 () Bool)

(declare-fun call!248963 () Bool)

(declare-fun c!590345 () Bool)

(assert (=> bm!248958 (= call!248963 (validRegex!4631 (ite c!590345 (regTwo!20865 (regex!5417 (rule!7995 separatorToken!241))) (regTwo!20864 (regex!5417 (rule!7995 separatorToken!241))))))))

(declare-fun d!991622 () Bool)

(declare-fun res!1390814 () Bool)

(declare-fun e!2136411 () Bool)

(assert (=> d!991622 (=> res!1390814 e!2136411)))

(assert (=> d!991622 (= res!1390814 (is-ElementMatch!10176 (regex!5417 (rule!7995 separatorToken!241))))))

(assert (=> d!991622 (= (validRegex!4631 (regex!5417 (rule!7995 separatorToken!241))) e!2136411)))

(declare-fun b!3449085 () Bool)

(declare-fun e!2136409 () Bool)

(assert (=> b!3449085 (= e!2136411 e!2136409)))

(declare-fun c!590346 () Bool)

(assert (=> b!3449085 (= c!590346 (is-Star!10176 (regex!5417 (rule!7995 separatorToken!241))))))

(declare-fun b!3449086 () Bool)

(declare-fun e!2136412 () Bool)

(assert (=> b!3449086 (= e!2136412 call!248963)))

(declare-fun b!3449087 () Bool)

(declare-fun e!2136410 () Bool)

(assert (=> b!3449087 (= e!2136409 e!2136410)))

(assert (=> b!3449087 (= c!590345 (is-Union!10176 (regex!5417 (rule!7995 separatorToken!241))))))

(declare-fun b!3449088 () Bool)

(declare-fun res!1390815 () Bool)

(declare-fun e!2136413 () Bool)

(assert (=> b!3449088 (=> res!1390815 e!2136413)))

(assert (=> b!3449088 (= res!1390815 (not (is-Concat!15823 (regex!5417 (rule!7995 separatorToken!241)))))))

(assert (=> b!3449088 (= e!2136410 e!2136413)))

(declare-fun b!3449089 () Bool)

(declare-fun e!2136415 () Bool)

(declare-fun call!248965 () Bool)

(assert (=> b!3449089 (= e!2136415 call!248965)))

(declare-fun bm!248959 () Bool)

(assert (=> bm!248959 (= call!248965 (validRegex!4631 (ite c!590346 (reg!10505 (regex!5417 (rule!7995 separatorToken!241))) (ite c!590345 (regOne!20865 (regex!5417 (rule!7995 separatorToken!241))) (regOne!20864 (regex!5417 (rule!7995 separatorToken!241)))))))))

(declare-fun b!3449090 () Bool)

(assert (=> b!3449090 (= e!2136413 e!2136412)))

(declare-fun res!1390816 () Bool)

(assert (=> b!3449090 (=> (not res!1390816) (not e!2136412))))

(declare-fun call!248964 () Bool)

(assert (=> b!3449090 (= res!1390816 call!248964)))

(declare-fun b!3449091 () Bool)

(declare-fun e!2136414 () Bool)

(assert (=> b!3449091 (= e!2136414 call!248963)))

(declare-fun bm!248960 () Bool)

(assert (=> bm!248960 (= call!248964 call!248965)))

(declare-fun b!3449092 () Bool)

(assert (=> b!3449092 (= e!2136409 e!2136415)))

(declare-fun res!1390813 () Bool)

(assert (=> b!3449092 (= res!1390813 (not (nullable!3475 (reg!10505 (regex!5417 (rule!7995 separatorToken!241))))))))

(assert (=> b!3449092 (=> (not res!1390813) (not e!2136415))))

(declare-fun b!3449093 () Bool)

(declare-fun res!1390812 () Bool)

(assert (=> b!3449093 (=> (not res!1390812) (not e!2136414))))

(assert (=> b!3449093 (= res!1390812 call!248964)))

(assert (=> b!3449093 (= e!2136410 e!2136414)))

(assert (= (and d!991622 (not res!1390814)) b!3449085))

(assert (= (and b!3449085 c!590346) b!3449092))

(assert (= (and b!3449085 (not c!590346)) b!3449087))

(assert (= (and b!3449092 res!1390813) b!3449089))

(assert (= (and b!3449087 c!590345) b!3449093))

(assert (= (and b!3449087 (not c!590345)) b!3449088))

(assert (= (and b!3449093 res!1390812) b!3449091))

(assert (= (and b!3449088 (not res!1390815)) b!3449090))

(assert (= (and b!3449090 res!1390816) b!3449086))

(assert (= (or b!3449091 b!3449086) bm!248958))

(assert (= (or b!3449093 b!3449090) bm!248960))

(assert (= (or b!3449089 bm!248960) bm!248959))

(declare-fun m!3845865 () Bool)

(assert (=> bm!248958 m!3845865))

(declare-fun m!3845867 () Bool)

(assert (=> bm!248959 m!3845867))

(declare-fun m!3845869 () Bool)

(assert (=> b!3449092 m!3845869))

(assert (=> b!3448817 d!991622))

(declare-fun lt!1170613 () List!37189)

(declare-fun e!2136420 () Bool)

(declare-fun b!3449105 () Bool)

(assert (=> b!3449105 (= e!2136420 (or (not (= lt!1170506 Nil!37065)) (= lt!1170613 lt!1170503)))))

(declare-fun b!3449103 () Bool)

(declare-fun e!2136421 () List!37189)

(assert (=> b!3449103 (= e!2136421 (Cons!37065 (h!42485 lt!1170503) (++!9120 (t!271492 lt!1170503) lt!1170506)))))

(declare-fun b!3449104 () Bool)

(declare-fun res!1390821 () Bool)

(assert (=> b!3449104 (=> (not res!1390821) (not e!2136420))))

(assert (=> b!3449104 (= res!1390821 (= (size!28091 lt!1170613) (+ (size!28091 lt!1170503) (size!28091 lt!1170506))))))

(declare-fun b!3449102 () Bool)

(assert (=> b!3449102 (= e!2136421 lt!1170506)))

(declare-fun d!991624 () Bool)

(assert (=> d!991624 e!2136420))

(declare-fun res!1390822 () Bool)

(assert (=> d!991624 (=> (not res!1390822) (not e!2136420))))

(declare-fun content!5158 (List!37189) (Set C!20538))

(assert (=> d!991624 (= res!1390822 (= (content!5158 lt!1170613) (set.union (content!5158 lt!1170503) (content!5158 lt!1170506))))))

(assert (=> d!991624 (= lt!1170613 e!2136421)))

(declare-fun c!590349 () Bool)

(assert (=> d!991624 (= c!590349 (is-Nil!37065 lt!1170503))))

(assert (=> d!991624 (= (++!9120 lt!1170503 lt!1170506) lt!1170613)))

(assert (= (and d!991624 c!590349) b!3449102))

(assert (= (and d!991624 (not c!590349)) b!3449103))

(assert (= (and d!991624 res!1390822) b!3449104))

(assert (= (and b!3449104 res!1390821) b!3449105))

(declare-fun m!3845871 () Bool)

(assert (=> b!3449103 m!3845871))

(declare-fun m!3845873 () Bool)

(assert (=> b!3449104 m!3845873))

(assert (=> b!3449104 m!3845547))

(declare-fun m!3845875 () Bool)

(assert (=> b!3449104 m!3845875))

(declare-fun m!3845877 () Bool)

(assert (=> d!991624 m!3845877))

(declare-fun m!3845879 () Bool)

(assert (=> d!991624 m!3845879))

(declare-fun m!3845881 () Bool)

(assert (=> d!991624 m!3845881))

(assert (=> b!3448796 d!991624))

(declare-fun d!991626 () Bool)

(assert (=> d!991626 (= (++!9120 (++!9120 lt!1170503 lt!1170511) lt!1170510) (++!9120 lt!1170503 (++!9120 lt!1170511 lt!1170510)))))

(declare-fun lt!1170616 () Unit!52389)

(declare-fun choose!19907 (List!37189 List!37189 List!37189) Unit!52389)

(assert (=> d!991626 (= lt!1170616 (choose!19907 lt!1170503 lt!1170511 lt!1170510))))

(assert (=> d!991626 (= (lemmaConcatAssociativity!1933 lt!1170503 lt!1170511 lt!1170510) lt!1170616)))

(declare-fun bs!559683 () Bool)

(assert (= bs!559683 d!991626))

(declare-fun m!3845883 () Bool)

(assert (=> bs!559683 m!3845883))

(assert (=> bs!559683 m!3845499))

(assert (=> bs!559683 m!3845539))

(assert (=> bs!559683 m!3845541))

(assert (=> bs!559683 m!3845499))

(declare-fun m!3845885 () Bool)

(assert (=> bs!559683 m!3845885))

(assert (=> bs!559683 m!3845539))

(assert (=> b!3448796 d!991626))

(declare-fun d!991628 () Bool)

(declare-fun res!1390825 () Bool)

(declare-fun e!2136424 () Bool)

(assert (=> d!991628 (=> (not res!1390825) (not e!2136424))))

(declare-fun rulesValid!2030 (LexerInterface!5006 List!37191) Bool)

(assert (=> d!991628 (= res!1390825 (rulesValid!2030 thiss!18206 rules!2135))))

(assert (=> d!991628 (= (rulesInvariant!4403 thiss!18206 rules!2135) e!2136424)))

(declare-fun b!3449108 () Bool)

(declare-datatypes ((List!37196 0))(
  ( (Nil!37072) (Cons!37072 (h!42492 String!41571) (t!271573 List!37196)) )
))
(declare-fun noDuplicateTag!2026 (LexerInterface!5006 List!37191 List!37196) Bool)

(assert (=> b!3449108 (= e!2136424 (noDuplicateTag!2026 thiss!18206 rules!2135 Nil!37072))))

(assert (= (and d!991628 res!1390825) b!3449108))

(declare-fun m!3845887 () Bool)

(assert (=> d!991628 m!3845887))

(declare-fun m!3845889 () Bool)

(assert (=> b!3449108 m!3845889))

(assert (=> b!3448816 d!991628))

(declare-fun d!991630 () Bool)

(declare-fun lt!1170624 () Bool)

(declare-fun e!2136439 () Bool)

(assert (=> d!991630 (= lt!1170624 e!2136439)))

(declare-fun res!1390843 () Bool)

(assert (=> d!991630 (=> (not res!1390843) (not e!2136439))))

(assert (=> d!991630 (= res!1390843 (= (list!13478 (_1!21505 (lex!2332 thiss!18206 rules!2135 (print!2071 thiss!18206 (singletonSeq!2513 separatorToken!241))))) (list!13478 (singletonSeq!2513 separatorToken!241))))))

(declare-fun e!2136438 () Bool)

(assert (=> d!991630 (= lt!1170624 e!2136438)))

(declare-fun res!1390842 () Bool)

(assert (=> d!991630 (=> (not res!1390842) (not e!2136438))))

(declare-fun lt!1170625 () tuple2!36742)

(declare-fun size!28094 (BalanceConc!22034) Int)

(assert (=> d!991630 (= res!1390842 (= (size!28094 (_1!21505 lt!1170625)) 1))))

(assert (=> d!991630 (= lt!1170625 (lex!2332 thiss!18206 rules!2135 (print!2071 thiss!18206 (singletonSeq!2513 separatorToken!241))))))

(assert (=> d!991630 (not (isEmpty!21377 rules!2135))))

(assert (=> d!991630 (= (rulesProduceIndividualToken!2498 thiss!18206 rules!2135 separatorToken!241) lt!1170624)))

(declare-fun b!3449130 () Bool)

(declare-fun res!1390841 () Bool)

(assert (=> b!3449130 (=> (not res!1390841) (not e!2136438))))

(declare-fun apply!8686 (BalanceConc!22034 Int) Token!10200)

(assert (=> b!3449130 (= res!1390841 (= (apply!8686 (_1!21505 lt!1170625) 0) separatorToken!241))))

(declare-fun b!3449131 () Bool)

(declare-fun isEmpty!21381 (BalanceConc!22032) Bool)

(assert (=> b!3449131 (= e!2136438 (isEmpty!21381 (_2!21505 lt!1170625)))))

(declare-fun b!3449132 () Bool)

(assert (=> b!3449132 (= e!2136439 (isEmpty!21381 (_2!21505 (lex!2332 thiss!18206 rules!2135 (print!2071 thiss!18206 (singletonSeq!2513 separatorToken!241))))))))

(assert (= (and d!991630 res!1390842) b!3449130))

(assert (= (and b!3449130 res!1390841) b!3449131))

(assert (= (and d!991630 res!1390843) b!3449132))

(assert (=> d!991630 m!3845537))

(declare-fun m!3845911 () Bool)

(assert (=> d!991630 m!3845911))

(assert (=> d!991630 m!3845911))

(declare-fun m!3845913 () Bool)

(assert (=> d!991630 m!3845913))

(assert (=> d!991630 m!3845911))

(declare-fun m!3845915 () Bool)

(assert (=> d!991630 m!3845915))

(declare-fun m!3845917 () Bool)

(assert (=> d!991630 m!3845917))

(assert (=> d!991630 m!3845915))

(declare-fun m!3845919 () Bool)

(assert (=> d!991630 m!3845919))

(declare-fun m!3845921 () Bool)

(assert (=> d!991630 m!3845921))

(declare-fun m!3845923 () Bool)

(assert (=> b!3449130 m!3845923))

(declare-fun m!3845925 () Bool)

(assert (=> b!3449131 m!3845925))

(assert (=> b!3449132 m!3845911))

(assert (=> b!3449132 m!3845911))

(assert (=> b!3449132 m!3845915))

(assert (=> b!3449132 m!3845915))

(assert (=> b!3449132 m!3845919))

(declare-fun m!3845927 () Bool)

(assert (=> b!3449132 m!3845927))

(assert (=> b!3448815 d!991630))

(declare-fun d!991636 () Bool)

(assert (=> d!991636 (rulesProduceIndividualToken!2498 thiss!18206 rules!2135 (h!42486 tokens!494))))

(declare-fun lt!1170634 () Unit!52389)

(declare-fun choose!19908 (LexerInterface!5006 List!37191 List!37190 Token!10200) Unit!52389)

(assert (=> d!991636 (= lt!1170634 (choose!19908 thiss!18206 rules!2135 tokens!494 (h!42486 tokens!494)))))

(assert (=> d!991636 (not (isEmpty!21377 rules!2135))))

(assert (=> d!991636 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!995 thiss!18206 rules!2135 tokens!494 (h!42486 tokens!494)) lt!1170634)))

(declare-fun bs!559686 () Bool)

(assert (= bs!559686 d!991636))

(assert (=> bs!559686 m!3845495))

(declare-fun m!3845937 () Bool)

(assert (=> bs!559686 m!3845937))

(assert (=> bs!559686 m!3845537))

(assert (=> b!3448794 d!991636))

(declare-fun d!991642 () Bool)

(declare-fun isEmpty!21382 (Option!7479) Bool)

(assert (=> d!991642 (= (isDefined!5771 lt!1170509) (not (isEmpty!21382 lt!1170509)))))

(declare-fun bs!559687 () Bool)

(assert (= bs!559687 d!991642))

(declare-fun m!3845939 () Bool)

(assert (=> bs!559687 m!3845939))

(assert (=> b!3448794 d!991642))

(declare-fun b!3449151 () Bool)

(declare-fun lt!1170643 () Unit!52389)

(declare-fun lt!1170642 () Unit!52389)

(assert (=> b!3449151 (= lt!1170643 lt!1170642)))

(assert (=> b!3449151 (rulesInvariant!4403 thiss!18206 (t!271494 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!419 (LexerInterface!5006 Rule!10634 List!37191) Unit!52389)

(assert (=> b!3449151 (= lt!1170642 (lemmaInvariantOnRulesThenOnTail!419 thiss!18206 (h!42487 rules!2135) (t!271494 rules!2135)))))

(declare-fun e!2136455 () Option!7479)

(assert (=> b!3449151 (= e!2136455 (getRuleFromTag!1060 thiss!18206 (t!271494 rules!2135) (tag!6013 (rule!7995 separatorToken!241))))))

(declare-fun b!3449152 () Bool)

(declare-fun e!2136456 () Bool)

(declare-fun e!2136457 () Bool)

(assert (=> b!3449152 (= e!2136456 e!2136457)))

(declare-fun res!1390855 () Bool)

(assert (=> b!3449152 (=> (not res!1390855) (not e!2136457))))

(declare-fun lt!1170641 () Option!7479)

(declare-fun contains!6837 (List!37191 Rule!10634) Bool)

(assert (=> b!3449152 (= res!1390855 (contains!6837 rules!2135 (get!11849 lt!1170641)))))

(declare-fun b!3449153 () Bool)

(declare-fun e!2136454 () Option!7479)

(assert (=> b!3449153 (= e!2136454 e!2136455)))

(declare-fun c!590357 () Bool)

(assert (=> b!3449153 (= c!590357 (and (is-Cons!37067 rules!2135) (not (= (tag!6013 (h!42487 rules!2135)) (tag!6013 (rule!7995 separatorToken!241))))))))

(declare-fun b!3449154 () Bool)

(assert (=> b!3449154 (= e!2136457 (= (tag!6013 (get!11849 lt!1170641)) (tag!6013 (rule!7995 separatorToken!241))))))

(declare-fun d!991644 () Bool)

(assert (=> d!991644 e!2136456))

(declare-fun res!1390854 () Bool)

(assert (=> d!991644 (=> res!1390854 e!2136456)))

(assert (=> d!991644 (= res!1390854 (isEmpty!21382 lt!1170641))))

(assert (=> d!991644 (= lt!1170641 e!2136454)))

(declare-fun c!590358 () Bool)

(assert (=> d!991644 (= c!590358 (and (is-Cons!37067 rules!2135) (= (tag!6013 (h!42487 rules!2135)) (tag!6013 (rule!7995 separatorToken!241)))))))

(assert (=> d!991644 (rulesInvariant!4403 thiss!18206 rules!2135)))

(assert (=> d!991644 (= (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 separatorToken!241))) lt!1170641)))

(declare-fun b!3449155 () Bool)

(assert (=> b!3449155 (= e!2136454 (Some!7478 (h!42487 rules!2135)))))

(declare-fun b!3449156 () Bool)

(assert (=> b!3449156 (= e!2136455 None!7478)))

(assert (= (and d!991644 c!590358) b!3449155))

(assert (= (and d!991644 (not c!590358)) b!3449153))

(assert (= (and b!3449153 c!590357) b!3449151))

(assert (= (and b!3449153 (not c!590357)) b!3449156))

(assert (= (and d!991644 (not res!1390854)) b!3449152))

(assert (= (and b!3449152 res!1390855) b!3449154))

(declare-fun m!3845941 () Bool)

(assert (=> b!3449151 m!3845941))

(declare-fun m!3845943 () Bool)

(assert (=> b!3449151 m!3845943))

(declare-fun m!3845945 () Bool)

(assert (=> b!3449151 m!3845945))

(declare-fun m!3845947 () Bool)

(assert (=> b!3449152 m!3845947))

(assert (=> b!3449152 m!3845947))

(declare-fun m!3845949 () Bool)

(assert (=> b!3449152 m!3845949))

(assert (=> b!3449154 m!3845947))

(declare-fun m!3845951 () Bool)

(assert (=> d!991644 m!3845951))

(assert (=> d!991644 m!3845521))

(assert (=> b!3448794 d!991644))

(declare-fun d!991646 () Bool)

(declare-fun dynLambda!15554 (Int BalanceConc!22032) TokenValue!5647)

(assert (=> d!991646 (= (apply!8684 (transformation!5417 (rule!7995 (h!42486 tokens!494))) lt!1170505) (dynLambda!15554 (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) lt!1170505))))

(declare-fun b_lambda!98911 () Bool)

(assert (=> (not b_lambda!98911) (not d!991646)))

(declare-fun t!271512 () Bool)

(declare-fun tb!187543 () Bool)

(assert (=> (and b!3448799 (= (toValue!7637 (transformation!5417 (h!42487 rules!2135))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271512) tb!187543))

(declare-fun result!231356 () Bool)

(assert (=> tb!187543 (= result!231356 (inv!21 (dynLambda!15554 (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) lt!1170505)))))

(declare-fun m!3845953 () Bool)

(assert (=> tb!187543 m!3845953))

(assert (=> d!991646 t!271512))

(declare-fun b_and!242111 () Bool)

(assert (= b_and!242087 (and (=> t!271512 result!231356) b_and!242111)))

(declare-fun tb!187545 () Bool)

(declare-fun t!271514 () Bool)

(assert (=> (and b!3448803 (= (toValue!7637 (transformation!5417 (rule!7995 separatorToken!241))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271514) tb!187545))

(declare-fun result!231360 () Bool)

(assert (= result!231360 result!231356))

(assert (=> d!991646 t!271514))

(declare-fun b_and!242113 () Bool)

(assert (= b_and!242091 (and (=> t!271514 result!231360) b_and!242113)))

(declare-fun t!271516 () Bool)

(declare-fun tb!187547 () Bool)

(assert (=> (and b!3448791 (= (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271516) tb!187547))

(declare-fun result!231362 () Bool)

(assert (= result!231362 result!231356))

(assert (=> d!991646 t!271516))

(declare-fun b_and!242115 () Bool)

(assert (= b_and!242095 (and (=> t!271516 result!231362) b_and!242115)))

(declare-fun m!3845955 () Bool)

(assert (=> d!991646 m!3845955))

(assert (=> b!3448794 d!991646))

(declare-fun d!991648 () Bool)

(assert (=> d!991648 (= (isDefined!5771 lt!1170498) (not (isEmpty!21382 lt!1170498)))))

(declare-fun bs!559688 () Bool)

(assert (= bs!559688 d!991648))

(declare-fun m!3845957 () Bool)

(assert (=> bs!559688 m!3845957))

(assert (=> b!3448794 d!991648))

(declare-fun b!3449254 () Bool)

(declare-fun e!2136513 () Bool)

(declare-fun e!2136511 () Bool)

(assert (=> b!3449254 (= e!2136513 e!2136511)))

(declare-fun res!1390901 () Bool)

(assert (=> b!3449254 (=> (not res!1390901) (not e!2136511))))

(declare-fun lt!1170688 () Option!7480)

(declare-fun get!11851 (Option!7480) tuple2!36740)

(assert (=> b!3449254 (= res!1390901 (matchR!4760 (regex!5417 (rule!7995 (h!42486 tokens!494))) (list!13476 (charsOf!3431 (_1!21504 (get!11851 lt!1170688))))))))

(declare-fun b!3449255 () Bool)

(declare-fun res!1390907 () Bool)

(assert (=> b!3449255 (=> (not res!1390907) (not e!2136511))))

(assert (=> b!3449255 (= res!1390907 (= (rule!7995 (_1!21504 (get!11851 lt!1170688))) (rule!7995 (h!42486 tokens!494))))))

(declare-fun d!991650 () Bool)

(assert (=> d!991650 e!2136513))

(declare-fun res!1390906 () Bool)

(assert (=> d!991650 (=> res!1390906 e!2136513)))

(declare-fun isEmpty!21383 (Option!7480) Bool)

(assert (=> d!991650 (= res!1390906 (isEmpty!21383 lt!1170688))))

(declare-fun e!2136510 () Option!7480)

(assert (=> d!991650 (= lt!1170688 e!2136510)))

(declare-fun c!590383 () Bool)

(declare-datatypes ((tuple2!36748 0))(
  ( (tuple2!36749 (_1!21508 List!37189) (_2!21508 List!37189)) )
))
(declare-fun lt!1170686 () tuple2!36748)

(assert (=> d!991650 (= c!590383 (isEmpty!21380 (_1!21508 lt!1170686)))))

(declare-fun findLongestMatch!811 (Regex!10176 List!37189) tuple2!36748)

(assert (=> d!991650 (= lt!1170686 (findLongestMatch!811 (regex!5417 (rule!7995 (h!42486 tokens!494))) lt!1170503))))

(declare-fun ruleValid!1725 (LexerInterface!5006 Rule!10634) Bool)

(assert (=> d!991650 (ruleValid!1725 thiss!18206 (rule!7995 (h!42486 tokens!494)))))

(assert (=> d!991650 (= (maxPrefixOneRule!1713 thiss!18206 (rule!7995 (h!42486 tokens!494)) lt!1170503) lt!1170688)))

(declare-fun b!3449256 () Bool)

(declare-fun e!2136512 () Bool)

(declare-fun findLongestMatchInner!896 (Regex!10176 List!37189 Int List!37189 List!37189 Int) tuple2!36748)

(assert (=> b!3449256 (= e!2136512 (matchR!4760 (regex!5417 (rule!7995 (h!42486 tokens!494))) (_1!21508 (findLongestMatchInner!896 (regex!5417 (rule!7995 (h!42486 tokens!494))) Nil!37065 (size!28091 Nil!37065) lt!1170503 lt!1170503 (size!28091 lt!1170503)))))))

(declare-fun b!3449257 () Bool)

(assert (=> b!3449257 (= e!2136511 (= (size!28090 (_1!21504 (get!11851 lt!1170688))) (size!28091 (originalCharacters!6131 (_1!21504 (get!11851 lt!1170688))))))))

(declare-fun b!3449258 () Bool)

(declare-fun res!1390903 () Bool)

(assert (=> b!3449258 (=> (not res!1390903) (not e!2136511))))

(assert (=> b!3449258 (= res!1390903 (< (size!28091 (_2!21504 (get!11851 lt!1170688))) (size!28091 lt!1170503)))))

(declare-fun b!3449259 () Bool)

(declare-fun size!28095 (BalanceConc!22032) Int)

(assert (=> b!3449259 (= e!2136510 (Some!7479 (tuple2!36741 (Token!10201 (apply!8684 (transformation!5417 (rule!7995 (h!42486 tokens!494))) (seqFromList!3887 (_1!21508 lt!1170686))) (rule!7995 (h!42486 tokens!494)) (size!28095 (seqFromList!3887 (_1!21508 lt!1170686))) (_1!21508 lt!1170686)) (_2!21508 lt!1170686))))))

(declare-fun lt!1170684 () Unit!52389)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!869 (Regex!10176 List!37189) Unit!52389)

(assert (=> b!3449259 (= lt!1170684 (longestMatchIsAcceptedByMatchOrIsEmpty!869 (regex!5417 (rule!7995 (h!42486 tokens!494))) lt!1170503))))

(declare-fun res!1390904 () Bool)

(assert (=> b!3449259 (= res!1390904 (isEmpty!21380 (_1!21508 (findLongestMatchInner!896 (regex!5417 (rule!7995 (h!42486 tokens!494))) Nil!37065 (size!28091 Nil!37065) lt!1170503 lt!1170503 (size!28091 lt!1170503)))))))

(assert (=> b!3449259 (=> res!1390904 e!2136512)))

(assert (=> b!3449259 e!2136512))

(declare-fun lt!1170685 () Unit!52389)

(assert (=> b!3449259 (= lt!1170685 lt!1170684)))

(declare-fun lt!1170687 () Unit!52389)

(declare-fun lemmaSemiInverse!1246 (TokenValueInjection!10722 BalanceConc!22032) Unit!52389)

(assert (=> b!3449259 (= lt!1170687 (lemmaSemiInverse!1246 (transformation!5417 (rule!7995 (h!42486 tokens!494))) (seqFromList!3887 (_1!21508 lt!1170686))))))

(declare-fun b!3449260 () Bool)

(assert (=> b!3449260 (= e!2136510 None!7479)))

(declare-fun b!3449261 () Bool)

(declare-fun res!1390902 () Bool)

(assert (=> b!3449261 (=> (not res!1390902) (not e!2136511))))

(assert (=> b!3449261 (= res!1390902 (= (++!9120 (list!13476 (charsOf!3431 (_1!21504 (get!11851 lt!1170688)))) (_2!21504 (get!11851 lt!1170688))) lt!1170503))))

(declare-fun b!3449262 () Bool)

(declare-fun res!1390905 () Bool)

(assert (=> b!3449262 (=> (not res!1390905) (not e!2136511))))

(assert (=> b!3449262 (= res!1390905 (= (value!174846 (_1!21504 (get!11851 lt!1170688))) (apply!8684 (transformation!5417 (rule!7995 (_1!21504 (get!11851 lt!1170688)))) (seqFromList!3887 (originalCharacters!6131 (_1!21504 (get!11851 lt!1170688)))))))))

(assert (= (and d!991650 c!590383) b!3449260))

(assert (= (and d!991650 (not c!590383)) b!3449259))

(assert (= (and b!3449259 (not res!1390904)) b!3449256))

(assert (= (and d!991650 (not res!1390906)) b!3449254))

(assert (= (and b!3449254 res!1390901) b!3449261))

(assert (= (and b!3449261 res!1390902) b!3449258))

(assert (= (and b!3449258 res!1390903) b!3449255))

(assert (= (and b!3449255 res!1390907) b!3449262))

(assert (= (and b!3449262 res!1390905) b!3449257))

(declare-fun m!3846031 () Bool)

(assert (=> b!3449255 m!3846031))

(assert (=> b!3449257 m!3846031))

(declare-fun m!3846033 () Bool)

(assert (=> b!3449257 m!3846033))

(assert (=> b!3449254 m!3846031))

(declare-fun m!3846035 () Bool)

(assert (=> b!3449254 m!3846035))

(assert (=> b!3449254 m!3846035))

(declare-fun m!3846037 () Bool)

(assert (=> b!3449254 m!3846037))

(assert (=> b!3449254 m!3846037))

(declare-fun m!3846039 () Bool)

(assert (=> b!3449254 m!3846039))

(declare-fun m!3846041 () Bool)

(assert (=> b!3449259 m!3846041))

(declare-fun m!3846043 () Bool)

(assert (=> b!3449259 m!3846043))

(assert (=> b!3449259 m!3845547))

(declare-fun m!3846045 () Bool)

(assert (=> b!3449259 m!3846045))

(assert (=> b!3449259 m!3845547))

(declare-fun m!3846047 () Bool)

(assert (=> b!3449259 m!3846047))

(assert (=> b!3449259 m!3846041))

(assert (=> b!3449259 m!3846045))

(assert (=> b!3449259 m!3846041))

(declare-fun m!3846049 () Bool)

(assert (=> b!3449259 m!3846049))

(assert (=> b!3449259 m!3846041))

(declare-fun m!3846051 () Bool)

(assert (=> b!3449259 m!3846051))

(declare-fun m!3846053 () Bool)

(assert (=> b!3449259 m!3846053))

(declare-fun m!3846057 () Bool)

(assert (=> b!3449259 m!3846057))

(assert (=> b!3449256 m!3846045))

(assert (=> b!3449256 m!3845547))

(assert (=> b!3449256 m!3846045))

(assert (=> b!3449256 m!3845547))

(assert (=> b!3449256 m!3846047))

(declare-fun m!3846063 () Bool)

(assert (=> b!3449256 m!3846063))

(assert (=> b!3449262 m!3846031))

(declare-fun m!3846069 () Bool)

(assert (=> b!3449262 m!3846069))

(assert (=> b!3449262 m!3846069))

(declare-fun m!3846073 () Bool)

(assert (=> b!3449262 m!3846073))

(assert (=> b!3449261 m!3846031))

(assert (=> b!3449261 m!3846035))

(assert (=> b!3449261 m!3846035))

(assert (=> b!3449261 m!3846037))

(assert (=> b!3449261 m!3846037))

(declare-fun m!3846075 () Bool)

(assert (=> b!3449261 m!3846075))

(assert (=> b!3449258 m!3846031))

(declare-fun m!3846077 () Bool)

(assert (=> b!3449258 m!3846077))

(assert (=> b!3449258 m!3845547))

(declare-fun m!3846079 () Bool)

(assert (=> d!991650 m!3846079))

(declare-fun m!3846081 () Bool)

(assert (=> d!991650 m!3846081))

(declare-fun m!3846083 () Bool)

(assert (=> d!991650 m!3846083))

(declare-fun m!3846085 () Bool)

(assert (=> d!991650 m!3846085))

(assert (=> b!3448794 d!991650))

(declare-fun d!991672 () Bool)

(declare-fun lt!1170699 () Bool)

(assert (=> d!991672 (= lt!1170699 (set.member (head!7284 lt!1170511) (content!5158 (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241))))))))

(declare-fun e!2136529 () Bool)

(assert (=> d!991672 (= lt!1170699 e!2136529)))

(declare-fun res!1390920 () Bool)

(assert (=> d!991672 (=> (not res!1390920) (not e!2136529))))

(assert (=> d!991672 (= res!1390920 (is-Cons!37065 (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241)))))))

(assert (=> d!991672 (= (contains!6835 (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241))) (head!7284 lt!1170511)) lt!1170699)))

(declare-fun b!3449285 () Bool)

(declare-fun e!2136530 () Bool)

(assert (=> b!3449285 (= e!2136529 e!2136530)))

(declare-fun res!1390921 () Bool)

(assert (=> b!3449285 (=> res!1390921 e!2136530)))

(assert (=> b!3449285 (= res!1390921 (= (h!42485 (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241)))) (head!7284 lt!1170511)))))

(declare-fun b!3449286 () Bool)

(assert (=> b!3449286 (= e!2136530 (contains!6835 (t!271492 (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241)))) (head!7284 lt!1170511)))))

(assert (= (and d!991672 res!1390920) b!3449285))

(assert (= (and b!3449285 (not res!1390921)) b!3449286))

(assert (=> d!991672 m!3845545))

(declare-fun m!3846113 () Bool)

(assert (=> d!991672 m!3846113))

(assert (=> d!991672 m!3845553))

(declare-fun m!3846115 () Bool)

(assert (=> d!991672 m!3846115))

(assert (=> b!3449286 m!3845553))

(declare-fun m!3846117 () Bool)

(assert (=> b!3449286 m!3846117))

(assert (=> b!3448794 d!991672))

(declare-fun d!991680 () Bool)

(assert (=> d!991680 (= (head!7284 lt!1170511) (h!42485 lt!1170511))))

(assert (=> b!3448794 d!991680))

(declare-fun d!991682 () Bool)

(declare-fun lt!1170705 () Int)

(assert (=> d!991682 (>= lt!1170705 0)))

(declare-fun e!2136533 () Int)

(assert (=> d!991682 (= lt!1170705 e!2136533)))

(declare-fun c!590391 () Bool)

(assert (=> d!991682 (= c!590391 (is-Nil!37065 lt!1170503))))

(assert (=> d!991682 (= (size!28091 lt!1170503) lt!1170705)))

(declare-fun b!3449291 () Bool)

(assert (=> b!3449291 (= e!2136533 0)))

(declare-fun b!3449292 () Bool)

(assert (=> b!3449292 (= e!2136533 (+ 1 (size!28091 (t!271492 lt!1170503))))))

(assert (= (and d!991682 c!590391) b!3449291))

(assert (= (and d!991682 (not c!590391)) b!3449292))

(declare-fun m!3846123 () Bool)

(assert (=> b!3449292 m!3846123))

(assert (=> b!3448794 d!991682))

(declare-fun b!3449293 () Bool)

(declare-fun lt!1170708 () Unit!52389)

(declare-fun lt!1170707 () Unit!52389)

(assert (=> b!3449293 (= lt!1170708 lt!1170707)))

(assert (=> b!3449293 (rulesInvariant!4403 thiss!18206 (t!271494 rules!2135))))

(assert (=> b!3449293 (= lt!1170707 (lemmaInvariantOnRulesThenOnTail!419 thiss!18206 (h!42487 rules!2135) (t!271494 rules!2135)))))

(declare-fun e!2136535 () Option!7479)

(assert (=> b!3449293 (= e!2136535 (getRuleFromTag!1060 thiss!18206 (t!271494 rules!2135) (tag!6013 (rule!7995 (h!42486 tokens!494)))))))

(declare-fun b!3449294 () Bool)

(declare-fun e!2136536 () Bool)

(declare-fun e!2136537 () Bool)

(assert (=> b!3449294 (= e!2136536 e!2136537)))

(declare-fun res!1390923 () Bool)

(assert (=> b!3449294 (=> (not res!1390923) (not e!2136537))))

(declare-fun lt!1170706 () Option!7479)

(assert (=> b!3449294 (= res!1390923 (contains!6837 rules!2135 (get!11849 lt!1170706)))))

(declare-fun b!3449295 () Bool)

(declare-fun e!2136534 () Option!7479)

(assert (=> b!3449295 (= e!2136534 e!2136535)))

(declare-fun c!590392 () Bool)

(assert (=> b!3449295 (= c!590392 (and (is-Cons!37067 rules!2135) (not (= (tag!6013 (h!42487 rules!2135)) (tag!6013 (rule!7995 (h!42486 tokens!494)))))))))

(declare-fun b!3449296 () Bool)

(assert (=> b!3449296 (= e!2136537 (= (tag!6013 (get!11849 lt!1170706)) (tag!6013 (rule!7995 (h!42486 tokens!494)))))))

(declare-fun d!991686 () Bool)

(assert (=> d!991686 e!2136536))

(declare-fun res!1390922 () Bool)

(assert (=> d!991686 (=> res!1390922 e!2136536)))

(assert (=> d!991686 (= res!1390922 (isEmpty!21382 lt!1170706))))

(assert (=> d!991686 (= lt!1170706 e!2136534)))

(declare-fun c!590393 () Bool)

(assert (=> d!991686 (= c!590393 (and (is-Cons!37067 rules!2135) (= (tag!6013 (h!42487 rules!2135)) (tag!6013 (rule!7995 (h!42486 tokens!494))))))))

(assert (=> d!991686 (rulesInvariant!4403 thiss!18206 rules!2135)))

(assert (=> d!991686 (= (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 (h!42486 tokens!494)))) lt!1170706)))

(declare-fun b!3449297 () Bool)

(assert (=> b!3449297 (= e!2136534 (Some!7478 (h!42487 rules!2135)))))

(declare-fun b!3449298 () Bool)

(assert (=> b!3449298 (= e!2136535 None!7478)))

(assert (= (and d!991686 c!590393) b!3449297))

(assert (= (and d!991686 (not c!590393)) b!3449295))

(assert (= (and b!3449295 c!590392) b!3449293))

(assert (= (and b!3449295 (not c!590392)) b!3449298))

(assert (= (and d!991686 (not res!1390922)) b!3449294))

(assert (= (and b!3449294 res!1390923) b!3449296))

(assert (=> b!3449293 m!3845941))

(assert (=> b!3449293 m!3845943))

(declare-fun m!3846125 () Bool)

(assert (=> b!3449293 m!3846125))

(declare-fun m!3846127 () Bool)

(assert (=> b!3449294 m!3846127))

(assert (=> b!3449294 m!3846127))

(declare-fun m!3846129 () Bool)

(assert (=> b!3449294 m!3846129))

(assert (=> b!3449296 m!3846127))

(declare-fun m!3846131 () Bool)

(assert (=> d!991686 m!3846131))

(assert (=> d!991686 m!3845521))

(assert (=> b!3448794 d!991686))

(declare-fun d!991688 () Bool)

(declare-fun e!2136566 () Bool)

(assert (=> d!991688 e!2136566))

(declare-fun res!1390949 () Bool)

(assert (=> d!991688 (=> (not res!1390949) (not e!2136566))))

(assert (=> d!991688 (= res!1390949 (isDefined!5771 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 separatorToken!241)))))))

(declare-fun lt!1170711 () Unit!52389)

(declare-fun choose!19909 (LexerInterface!5006 List!37191 List!37189 Token!10200) Unit!52389)

(assert (=> d!991688 (= lt!1170711 (choose!19909 thiss!18206 rules!2135 lt!1170511 separatorToken!241))))

(assert (=> d!991688 (rulesInvariant!4403 thiss!18206 rules!2135)))

(assert (=> d!991688 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1060 thiss!18206 rules!2135 lt!1170511 separatorToken!241) lt!1170711)))

(declare-fun b!3449340 () Bool)

(declare-fun res!1390950 () Bool)

(assert (=> b!3449340 (=> (not res!1390950) (not e!2136566))))

(assert (=> b!3449340 (= res!1390950 (matchR!4760 (regex!5417 (get!11849 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 separatorToken!241))))) (list!13476 (charsOf!3431 separatorToken!241))))))

(declare-fun b!3449341 () Bool)

(assert (=> b!3449341 (= e!2136566 (= (rule!7995 separatorToken!241) (get!11849 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 separatorToken!241))))))))

(assert (= (and d!991688 res!1390949) b!3449340))

(assert (= (and b!3449340 res!1390950) b!3449341))

(assert (=> d!991688 m!3845561))

(assert (=> d!991688 m!3845561))

(declare-fun m!3846139 () Bool)

(assert (=> d!991688 m!3846139))

(declare-fun m!3846141 () Bool)

(assert (=> d!991688 m!3846141))

(assert (=> d!991688 m!3845521))

(assert (=> b!3449340 m!3845511))

(declare-fun m!3846143 () Bool)

(assert (=> b!3449340 m!3846143))

(assert (=> b!3449340 m!3845561))

(declare-fun m!3846149 () Bool)

(assert (=> b!3449340 m!3846149))

(assert (=> b!3449340 m!3845503))

(assert (=> b!3449340 m!3845511))

(assert (=> b!3449340 m!3845561))

(assert (=> b!3449340 m!3845503))

(assert (=> b!3449341 m!3845561))

(assert (=> b!3449341 m!3845561))

(assert (=> b!3449341 m!3846149))

(assert (=> b!3448794 d!991688))

(declare-fun d!991692 () Bool)

(declare-fun e!2136568 () Bool)

(assert (=> d!991692 e!2136568))

(declare-fun res!1390951 () Bool)

(assert (=> d!991692 (=> (not res!1390951) (not e!2136568))))

(assert (=> d!991692 (= res!1390951 (isDefined!5771 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 (h!42486 tokens!494))))))))

(declare-fun lt!1170712 () Unit!52389)

(assert (=> d!991692 (= lt!1170712 (choose!19909 thiss!18206 rules!2135 lt!1170503 (h!42486 tokens!494)))))

(assert (=> d!991692 (rulesInvariant!4403 thiss!18206 rules!2135)))

(assert (=> d!991692 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1060 thiss!18206 rules!2135 lt!1170503 (h!42486 tokens!494)) lt!1170712)))

(declare-fun b!3449343 () Bool)

(declare-fun res!1390952 () Bool)

(assert (=> b!3449343 (=> (not res!1390952) (not e!2136568))))

(assert (=> b!3449343 (= res!1390952 (matchR!4760 (regex!5417 (get!11849 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 (h!42486 tokens!494)))))) (list!13476 (charsOf!3431 (h!42486 tokens!494)))))))

(declare-fun b!3449344 () Bool)

(assert (=> b!3449344 (= e!2136568 (= (rule!7995 (h!42486 tokens!494)) (get!11849 (getRuleFromTag!1060 thiss!18206 rules!2135 (tag!6013 (rule!7995 (h!42486 tokens!494)))))))))

(assert (= (and d!991692 res!1390951) b!3449343))

(assert (= (and b!3449343 res!1390952) b!3449344))

(assert (=> d!991692 m!3845549))

(assert (=> d!991692 m!3845549))

(declare-fun m!3846161 () Bool)

(assert (=> d!991692 m!3846161))

(declare-fun m!3846165 () Bool)

(assert (=> d!991692 m!3846165))

(assert (=> d!991692 m!3845521))

(assert (=> b!3449343 m!3845529))

(declare-fun m!3846167 () Bool)

(assert (=> b!3449343 m!3846167))

(assert (=> b!3449343 m!3845549))

(declare-fun m!3846169 () Bool)

(assert (=> b!3449343 m!3846169))

(assert (=> b!3449343 m!3845527))

(assert (=> b!3449343 m!3845529))

(assert (=> b!3449343 m!3845549))

(assert (=> b!3449343 m!3845527))

(assert (=> b!3449344 m!3845549))

(assert (=> b!3449344 m!3845549))

(assert (=> b!3449344 m!3846169))

(assert (=> b!3448794 d!991692))

(declare-fun b!3449377 () Bool)

(declare-fun e!2136589 () List!37189)

(declare-fun call!248996 () List!37189)

(assert (=> b!3449377 (= e!2136589 call!248996)))

(declare-fun d!991700 () Bool)

(declare-fun c!590411 () Bool)

(assert (=> d!991700 (= c!590411 (or (is-EmptyExpr!10176 (regex!5417 (rule!7995 separatorToken!241))) (is-EmptyLang!10176 (regex!5417 (rule!7995 separatorToken!241)))))))

(declare-fun e!2136586 () List!37189)

(assert (=> d!991700 (= (usedCharacters!651 (regex!5417 (rule!7995 separatorToken!241))) e!2136586)))

(declare-fun b!3449378 () Bool)

(declare-fun c!590414 () Bool)

(assert (=> b!3449378 (= c!590414 (is-Star!10176 (regex!5417 (rule!7995 separatorToken!241))))))

(declare-fun e!2136587 () List!37189)

(assert (=> b!3449378 (= e!2136587 e!2136589)))

(declare-fun bm!248991 () Bool)

(declare-fun call!248998 () List!37189)

(declare-fun c!590412 () Bool)

(assert (=> bm!248991 (= call!248998 (usedCharacters!651 (ite c!590412 (regTwo!20865 (regex!5417 (rule!7995 separatorToken!241))) (regOne!20864 (regex!5417 (rule!7995 separatorToken!241))))))))

(declare-fun bm!248992 () Bool)

(declare-fun call!248999 () List!37189)

(assert (=> bm!248992 (= call!248999 call!248996)))

(declare-fun b!3449379 () Bool)

(assert (=> b!3449379 (= e!2136586 e!2136587)))

(declare-fun c!590413 () Bool)

(assert (=> b!3449379 (= c!590413 (is-ElementMatch!10176 (regex!5417 (rule!7995 separatorToken!241))))))

(declare-fun b!3449380 () Bool)

(declare-fun e!2136588 () List!37189)

(declare-fun call!248997 () List!37189)

(assert (=> b!3449380 (= e!2136588 call!248997)))

(declare-fun b!3449381 () Bool)

(assert (=> b!3449381 (= e!2136586 Nil!37065)))

(declare-fun b!3449382 () Bool)

(assert (=> b!3449382 (= e!2136587 (Cons!37065 (c!590306 (regex!5417 (rule!7995 separatorToken!241))) Nil!37065))))

(declare-fun b!3449383 () Bool)

(assert (=> b!3449383 (= e!2136588 call!248997)))

(declare-fun b!3449384 () Bool)

(assert (=> b!3449384 (= e!2136589 e!2136588)))

(assert (=> b!3449384 (= c!590412 (is-Union!10176 (regex!5417 (rule!7995 separatorToken!241))))))

(declare-fun bm!248993 () Bool)

(assert (=> bm!248993 (= call!248997 (++!9120 (ite c!590412 call!248999 call!248998) (ite c!590412 call!248998 call!248999)))))

(declare-fun bm!248994 () Bool)

(assert (=> bm!248994 (= call!248996 (usedCharacters!651 (ite c!590414 (reg!10505 (regex!5417 (rule!7995 separatorToken!241))) (ite c!590412 (regOne!20865 (regex!5417 (rule!7995 separatorToken!241))) (regTwo!20864 (regex!5417 (rule!7995 separatorToken!241)))))))))

(assert (= (and d!991700 c!590411) b!3449381))

(assert (= (and d!991700 (not c!590411)) b!3449379))

(assert (= (and b!3449379 c!590413) b!3449382))

(assert (= (and b!3449379 (not c!590413)) b!3449378))

(assert (= (and b!3449378 c!590414) b!3449377))

(assert (= (and b!3449378 (not c!590414)) b!3449384))

(assert (= (and b!3449384 c!590412) b!3449380))

(assert (= (and b!3449384 (not c!590412)) b!3449383))

(assert (= (or b!3449380 b!3449383) bm!248991))

(assert (= (or b!3449380 b!3449383) bm!248992))

(assert (= (or b!3449380 b!3449383) bm!248993))

(assert (= (or b!3449377 bm!248992) bm!248994))

(declare-fun m!3846195 () Bool)

(assert (=> bm!248991 m!3846195))

(declare-fun m!3846197 () Bool)

(assert (=> bm!248993 m!3846197))

(declare-fun m!3846199 () Bool)

(assert (=> bm!248994 m!3846199))

(assert (=> b!3448794 d!991700))

(declare-fun d!991710 () Bool)

(assert (=> d!991710 (= (maxPrefixOneRule!1713 thiss!18206 (rule!7995 (h!42486 tokens!494)) lt!1170503) (Some!7479 (tuple2!36741 (Token!10201 (apply!8684 (transformation!5417 (rule!7995 (h!42486 tokens!494))) (seqFromList!3887 lt!1170503)) (rule!7995 (h!42486 tokens!494)) (size!28091 lt!1170503) lt!1170503) Nil!37065)))))

(declare-fun lt!1170722 () Unit!52389)

(declare-fun choose!19910 (LexerInterface!5006 List!37191 List!37189 List!37189 List!37189 Rule!10634) Unit!52389)

(assert (=> d!991710 (= lt!1170722 (choose!19910 thiss!18206 rules!2135 lt!1170503 lt!1170503 Nil!37065 (rule!7995 (h!42486 tokens!494))))))

(assert (=> d!991710 (not (isEmpty!21377 rules!2135))))

(assert (=> d!991710 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!806 thiss!18206 rules!2135 lt!1170503 lt!1170503 Nil!37065 (rule!7995 (h!42486 tokens!494))) lt!1170722)))

(declare-fun bs!559696 () Bool)

(assert (= bs!559696 d!991710))

(assert (=> bs!559696 m!3845547))

(assert (=> bs!559696 m!3845537))

(assert (=> bs!559696 m!3845543))

(declare-fun m!3846209 () Bool)

(assert (=> bs!559696 m!3846209))

(assert (=> bs!559696 m!3845587))

(declare-fun m!3846211 () Bool)

(assert (=> bs!559696 m!3846211))

(assert (=> bs!559696 m!3845587))

(assert (=> b!3448794 d!991710))

(declare-fun d!991716 () Bool)

(declare-fun c!590417 () Bool)

(assert (=> d!991716 (= c!590417 (is-Cons!37066 tokens!494))))

(declare-fun e!2136592 () List!37189)

(assert (=> d!991716 (= (printWithSeparatorTokenList!293 thiss!18206 tokens!494 separatorToken!241) e!2136592)))

(declare-fun b!3449389 () Bool)

(assert (=> b!3449389 (= e!2136592 (++!9120 (++!9120 (list!13476 (charsOf!3431 (h!42486 tokens!494))) (list!13476 (charsOf!3431 separatorToken!241))) (printWithSeparatorTokenList!293 thiss!18206 (t!271493 tokens!494) separatorToken!241)))))

(declare-fun b!3449390 () Bool)

(assert (=> b!3449390 (= e!2136592 Nil!37065)))

(assert (= (and d!991716 c!590417) b!3449389))

(assert (= (and d!991716 (not c!590417)) b!3449390))

(assert (=> b!3449389 m!3845529))

(assert (=> b!3449389 m!3845511))

(declare-fun m!3846213 () Bool)

(assert (=> b!3449389 m!3846213))

(assert (=> b!3449389 m!3846213))

(assert (=> b!3449389 m!3845505))

(declare-fun m!3846215 () Bool)

(assert (=> b!3449389 m!3846215))

(assert (=> b!3449389 m!3845505))

(assert (=> b!3449389 m!3845503))

(assert (=> b!3449389 m!3845511))

(assert (=> b!3449389 m!3845527))

(assert (=> b!3449389 m!3845503))

(assert (=> b!3449389 m!3845527))

(assert (=> b!3449389 m!3845529))

(assert (=> b!3448793 d!991716))

(declare-fun b!3449394 () Bool)

(declare-fun lt!1170723 () List!37189)

(declare-fun e!2136593 () Bool)

(assert (=> b!3449394 (= e!2136593 (or (not (= lt!1170511 Nil!37065)) (= lt!1170723 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))))))))

(declare-fun b!3449392 () Bool)

(declare-fun e!2136594 () List!37189)

(assert (=> b!3449392 (= e!2136594 (Cons!37065 (h!42485 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494))))) (++!9120 (t!271492 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494))))) lt!1170511)))))

(declare-fun b!3449393 () Bool)

(declare-fun res!1390962 () Bool)

(assert (=> b!3449393 (=> (not res!1390962) (not e!2136593))))

(assert (=> b!3449393 (= res!1390962 (= (size!28091 lt!1170723) (+ (size!28091 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494))))) (size!28091 lt!1170511))))))

(declare-fun b!3449391 () Bool)

(assert (=> b!3449391 (= e!2136594 lt!1170511)))

(declare-fun d!991718 () Bool)

(assert (=> d!991718 e!2136593))

(declare-fun res!1390963 () Bool)

(assert (=> d!991718 (=> (not res!1390963) (not e!2136593))))

(assert (=> d!991718 (= res!1390963 (= (content!5158 lt!1170723) (set.union (content!5158 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494))))) (content!5158 lt!1170511))))))

(assert (=> d!991718 (= lt!1170723 e!2136594)))

(declare-fun c!590418 () Bool)

(assert (=> d!991718 (= c!590418 (is-Nil!37065 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494))))))))

(assert (=> d!991718 (= (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511) lt!1170723)))

(assert (= (and d!991718 c!590418) b!3449391))

(assert (= (and d!991718 (not c!590418)) b!3449392))

(assert (= (and d!991718 res!1390963) b!3449393))

(assert (= (and b!3449393 res!1390962) b!3449394))

(declare-fun m!3846217 () Bool)

(assert (=> b!3449392 m!3846217))

(declare-fun m!3846219 () Bool)

(assert (=> b!3449393 m!3846219))

(assert (=> b!3449393 m!3845507))

(declare-fun m!3846221 () Bool)

(assert (=> b!3449393 m!3846221))

(declare-fun m!3846223 () Bool)

(assert (=> b!3449393 m!3846223))

(declare-fun m!3846225 () Bool)

(assert (=> d!991718 m!3846225))

(assert (=> d!991718 m!3845507))

(declare-fun m!3846227 () Bool)

(assert (=> d!991718 m!3846227))

(declare-fun m!3846229 () Bool)

(assert (=> d!991718 m!3846229))

(assert (=> b!3448793 d!991718))

(declare-fun b!3449398 () Bool)

(declare-fun lt!1170724 () List!37189)

(declare-fun e!2136595 () Bool)

(assert (=> b!3449398 (= e!2136595 (or (not (= (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241) Nil!37065)) (= lt!1170724 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511))))))

(declare-fun b!3449396 () Bool)

(declare-fun e!2136596 () List!37189)

(assert (=> b!3449396 (= e!2136596 (Cons!37065 (h!42485 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511)) (++!9120 (t!271492 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511)) (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241))))))

(declare-fun b!3449397 () Bool)

(declare-fun res!1390964 () Bool)

(assert (=> b!3449397 (=> (not res!1390964) (not e!2136595))))

(assert (=> b!3449397 (= res!1390964 (= (size!28091 lt!1170724) (+ (size!28091 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511)) (size!28091 (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241)))))))

(declare-fun b!3449395 () Bool)

(assert (=> b!3449395 (= e!2136596 (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241))))

(declare-fun d!991720 () Bool)

(assert (=> d!991720 e!2136595))

(declare-fun res!1390965 () Bool)

(assert (=> d!991720 (=> (not res!1390965) (not e!2136595))))

(assert (=> d!991720 (= res!1390965 (= (content!5158 lt!1170724) (set.union (content!5158 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511)) (content!5158 (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241)))))))

(assert (=> d!991720 (= lt!1170724 e!2136596)))

(declare-fun c!590419 () Bool)

(assert (=> d!991720 (= c!590419 (is-Nil!37065 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511)))))

(assert (=> d!991720 (= (++!9120 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) lt!1170511) (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241)) lt!1170724)))

(assert (= (and d!991720 c!590419) b!3449395))

(assert (= (and d!991720 (not c!590419)) b!3449396))

(assert (= (and d!991720 res!1390965) b!3449397))

(assert (= (and b!3449397 res!1390964) b!3449398))

(assert (=> b!3449396 m!3845509))

(declare-fun m!3846231 () Bool)

(assert (=> b!3449396 m!3846231))

(declare-fun m!3846233 () Bool)

(assert (=> b!3449397 m!3846233))

(assert (=> b!3449397 m!3845513))

(declare-fun m!3846235 () Bool)

(assert (=> b!3449397 m!3846235))

(assert (=> b!3449397 m!3845509))

(declare-fun m!3846237 () Bool)

(assert (=> b!3449397 m!3846237))

(declare-fun m!3846239 () Bool)

(assert (=> d!991720 m!3846239))

(assert (=> d!991720 m!3845513))

(declare-fun m!3846241 () Bool)

(assert (=> d!991720 m!3846241))

(assert (=> d!991720 m!3845509))

(declare-fun m!3846243 () Bool)

(assert (=> d!991720 m!3846243))

(assert (=> b!3448793 d!991720))

(declare-fun d!991722 () Bool)

(declare-fun lt!1170727 () BalanceConc!22032)

(assert (=> d!991722 (= (list!13476 lt!1170727) (originalCharacters!6131 separatorToken!241))))

(declare-fun dynLambda!15555 (Int TokenValue!5647) BalanceConc!22032)

(assert (=> d!991722 (= lt!1170727 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (value!174846 separatorToken!241)))))

(assert (=> d!991722 (= (charsOf!3431 separatorToken!241) lt!1170727)))

(declare-fun b_lambda!98919 () Bool)

(assert (=> (not b_lambda!98919) (not d!991722)))

(declare-fun t!271536 () Bool)

(declare-fun tb!187567 () Bool)

(assert (=> (and b!3448799 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241)))) t!271536) tb!187567))

(declare-fun b!3449403 () Bool)

(declare-fun e!2136599 () Bool)

(declare-fun tp!1076037 () Bool)

(declare-fun inv!50229 (Conc!11209) Bool)

(assert (=> b!3449403 (= e!2136599 (and (inv!50229 (c!590307 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (value!174846 separatorToken!241)))) tp!1076037))))

(declare-fun result!231386 () Bool)

(declare-fun inv!50230 (BalanceConc!22032) Bool)

(assert (=> tb!187567 (= result!231386 (and (inv!50230 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (value!174846 separatorToken!241))) e!2136599))))

(assert (= tb!187567 b!3449403))

(declare-fun m!3846245 () Bool)

(assert (=> b!3449403 m!3846245))

(declare-fun m!3846247 () Bool)

(assert (=> tb!187567 m!3846247))

(assert (=> d!991722 t!271536))

(declare-fun b_and!242135 () Bool)

(assert (= b_and!242089 (and (=> t!271536 result!231386) b_and!242135)))

(declare-fun t!271538 () Bool)

(declare-fun tb!187569 () Bool)

(assert (=> (and b!3448803 (= (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241)))) t!271538) tb!187569))

(declare-fun result!231390 () Bool)

(assert (= result!231390 result!231386))

(assert (=> d!991722 t!271538))

(declare-fun b_and!242137 () Bool)

(assert (= b_and!242093 (and (=> t!271538 result!231390) b_and!242137)))

(declare-fun tb!187571 () Bool)

(declare-fun t!271540 () Bool)

(assert (=> (and b!3448791 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241)))) t!271540) tb!187571))

(declare-fun result!231392 () Bool)

(assert (= result!231392 result!231386))

(assert (=> d!991722 t!271540))

(declare-fun b_and!242139 () Bool)

(assert (= b_and!242097 (and (=> t!271540 result!231392) b_and!242139)))

(declare-fun m!3846249 () Bool)

(assert (=> d!991722 m!3846249))

(declare-fun m!3846251 () Bool)

(assert (=> d!991722 m!3846251))

(assert (=> b!3448793 d!991722))

(declare-fun d!991724 () Bool)

(declare-fun list!13479 (Conc!11209) List!37189)

(assert (=> d!991724 (= (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) (list!13479 (c!590307 (charsOf!3431 (h!42486 (t!271493 tokens!494))))))))

(declare-fun bs!559697 () Bool)

(assert (= bs!559697 d!991724))

(declare-fun m!3846253 () Bool)

(assert (=> bs!559697 m!3846253))

(assert (=> b!3448793 d!991724))

(declare-fun b!3449407 () Bool)

(declare-fun e!2136600 () Bool)

(declare-fun lt!1170728 () List!37189)

(assert (=> b!3449407 (= e!2136600 (or (not (= lt!1170510 Nil!37065)) (= lt!1170728 lt!1170511)))))

(declare-fun b!3449405 () Bool)

(declare-fun e!2136601 () List!37189)

(assert (=> b!3449405 (= e!2136601 (Cons!37065 (h!42485 lt!1170511) (++!9120 (t!271492 lt!1170511) lt!1170510)))))

(declare-fun b!3449406 () Bool)

(declare-fun res!1390966 () Bool)

(assert (=> b!3449406 (=> (not res!1390966) (not e!2136600))))

(assert (=> b!3449406 (= res!1390966 (= (size!28091 lt!1170728) (+ (size!28091 lt!1170511) (size!28091 lt!1170510))))))

(declare-fun b!3449404 () Bool)

(assert (=> b!3449404 (= e!2136601 lt!1170510)))

(declare-fun d!991726 () Bool)

(assert (=> d!991726 e!2136600))

(declare-fun res!1390967 () Bool)

(assert (=> d!991726 (=> (not res!1390967) (not e!2136600))))

(assert (=> d!991726 (= res!1390967 (= (content!5158 lt!1170728) (set.union (content!5158 lt!1170511) (content!5158 lt!1170510))))))

(assert (=> d!991726 (= lt!1170728 e!2136601)))

(declare-fun c!590420 () Bool)

(assert (=> d!991726 (= c!590420 (is-Nil!37065 lt!1170511))))

(assert (=> d!991726 (= (++!9120 lt!1170511 lt!1170510) lt!1170728)))

(assert (= (and d!991726 c!590420) b!3449404))

(assert (= (and d!991726 (not c!590420)) b!3449405))

(assert (= (and d!991726 res!1390967) b!3449406))

(assert (= (and b!3449406 res!1390966) b!3449407))

(declare-fun m!3846255 () Bool)

(assert (=> b!3449405 m!3846255))

(declare-fun m!3846257 () Bool)

(assert (=> b!3449406 m!3846257))

(assert (=> b!3449406 m!3846223))

(declare-fun m!3846259 () Bool)

(assert (=> b!3449406 m!3846259))

(declare-fun m!3846261 () Bool)

(assert (=> d!991726 m!3846261))

(assert (=> d!991726 m!3846229))

(declare-fun m!3846263 () Bool)

(assert (=> d!991726 m!3846263))

(assert (=> b!3448793 d!991726))

(declare-fun d!991728 () Bool)

(declare-fun c!590421 () Bool)

(assert (=> d!991728 (= c!590421 (is-Cons!37066 (t!271493 (t!271493 tokens!494))))))

(declare-fun e!2136602 () List!37189)

(assert (=> d!991728 (= (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241) e!2136602)))

(declare-fun b!3449408 () Bool)

(assert (=> b!3449408 (= e!2136602 (++!9120 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 (t!271493 tokens!494))))) (list!13476 (charsOf!3431 separatorToken!241))) (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 (t!271493 tokens!494))) separatorToken!241)))))

(declare-fun b!3449409 () Bool)

(assert (=> b!3449409 (= e!2136602 Nil!37065)))

(assert (= (and d!991728 c!590421) b!3449408))

(assert (= (and d!991728 (not c!590421)) b!3449409))

(declare-fun m!3846265 () Bool)

(assert (=> b!3449408 m!3846265))

(assert (=> b!3449408 m!3845511))

(declare-fun m!3846267 () Bool)

(assert (=> b!3449408 m!3846267))

(assert (=> b!3449408 m!3846267))

(declare-fun m!3846269 () Bool)

(assert (=> b!3449408 m!3846269))

(declare-fun m!3846271 () Bool)

(assert (=> b!3449408 m!3846271))

(assert (=> b!3449408 m!3846269))

(assert (=> b!3449408 m!3845503))

(assert (=> b!3449408 m!3845511))

(declare-fun m!3846273 () Bool)

(assert (=> b!3449408 m!3846273))

(assert (=> b!3449408 m!3845503))

(assert (=> b!3449408 m!3846273))

(assert (=> b!3449408 m!3846265))

(assert (=> b!3448793 d!991728))

(declare-fun d!991730 () Bool)

(declare-fun c!590422 () Bool)

(assert (=> d!991730 (= c!590422 (is-Cons!37066 (t!271493 tokens!494)))))

(declare-fun e!2136603 () List!37189)

(assert (=> d!991730 (= (printWithSeparatorTokenList!293 thiss!18206 (t!271493 tokens!494) separatorToken!241) e!2136603)))

(declare-fun b!3449410 () Bool)

(assert (=> b!3449410 (= e!2136603 (++!9120 (++!9120 (list!13476 (charsOf!3431 (h!42486 (t!271493 tokens!494)))) (list!13476 (charsOf!3431 separatorToken!241))) (printWithSeparatorTokenList!293 thiss!18206 (t!271493 (t!271493 tokens!494)) separatorToken!241)))))

(declare-fun b!3449411 () Bool)

(assert (=> b!3449411 (= e!2136603 Nil!37065)))

(assert (= (and d!991730 c!590422) b!3449410))

(assert (= (and d!991730 (not c!590422)) b!3449411))

(assert (=> b!3449410 m!3845507))

(assert (=> b!3449410 m!3845511))

(declare-fun m!3846275 () Bool)

(assert (=> b!3449410 m!3846275))

(assert (=> b!3449410 m!3846275))

(assert (=> b!3449410 m!3845509))

(declare-fun m!3846277 () Bool)

(assert (=> b!3449410 m!3846277))

(assert (=> b!3449410 m!3845509))

(assert (=> b!3449410 m!3845503))

(assert (=> b!3449410 m!3845511))

(assert (=> b!3449410 m!3845501))

(assert (=> b!3449410 m!3845503))

(assert (=> b!3449410 m!3845501))

(assert (=> b!3449410 m!3845507))

(assert (=> b!3448793 d!991730))

(declare-fun d!991732 () Bool)

(assert (=> d!991732 (= (list!13476 (charsOf!3431 separatorToken!241)) (list!13479 (c!590307 (charsOf!3431 separatorToken!241))))))

(declare-fun bs!559698 () Bool)

(assert (= bs!559698 d!991732))

(declare-fun m!3846279 () Bool)

(assert (=> bs!559698 m!3846279))

(assert (=> b!3448793 d!991732))

(declare-fun d!991734 () Bool)

(declare-fun lt!1170729 () BalanceConc!22032)

(assert (=> d!991734 (= (list!13476 lt!1170729) (originalCharacters!6131 (h!42486 (t!271493 tokens!494))))))

(assert (=> d!991734 (= lt!1170729 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (value!174846 (h!42486 (t!271493 tokens!494)))))))

(assert (=> d!991734 (= (charsOf!3431 (h!42486 (t!271493 tokens!494))) lt!1170729)))

(declare-fun b_lambda!98921 () Bool)

(assert (=> (not b_lambda!98921) (not d!991734)))

(declare-fun t!271542 () Bool)

(declare-fun tb!187573 () Bool)

(assert (=> (and b!3448799 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494)))))) t!271542) tb!187573))

(declare-fun b!3449418 () Bool)

(declare-fun e!2136608 () Bool)

(declare-fun tp!1076038 () Bool)

(assert (=> b!3449418 (= e!2136608 (and (inv!50229 (c!590307 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (value!174846 (h!42486 (t!271493 tokens!494)))))) tp!1076038))))

(declare-fun result!231394 () Bool)

(assert (=> tb!187573 (= result!231394 (and (inv!50230 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (value!174846 (h!42486 (t!271493 tokens!494))))) e!2136608))))

(assert (= tb!187573 b!3449418))

(declare-fun m!3846281 () Bool)

(assert (=> b!3449418 m!3846281))

(declare-fun m!3846283 () Bool)

(assert (=> tb!187573 m!3846283))

(assert (=> d!991734 t!271542))

(declare-fun b_and!242141 () Bool)

(assert (= b_and!242135 (and (=> t!271542 result!231394) b_and!242141)))

(declare-fun tb!187575 () Bool)

(declare-fun t!271544 () Bool)

(assert (=> (and b!3448803 (= (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494)))))) t!271544) tb!187575))

(declare-fun result!231396 () Bool)

(assert (= result!231396 result!231394))

(assert (=> d!991734 t!271544))

(declare-fun b_and!242143 () Bool)

(assert (= b_and!242137 (and (=> t!271544 result!231396) b_and!242143)))

(declare-fun t!271546 () Bool)

(declare-fun tb!187577 () Bool)

(assert (=> (and b!3448791 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494)))))) t!271546) tb!187577))

(declare-fun result!231398 () Bool)

(assert (= result!231398 result!231394))

(assert (=> d!991734 t!271546))

(declare-fun b_and!242145 () Bool)

(assert (= b_and!242139 (and (=> t!271546 result!231398) b_and!242145)))

(declare-fun m!3846285 () Bool)

(assert (=> d!991734 m!3846285))

(declare-fun m!3846287 () Bool)

(assert (=> d!991734 m!3846287))

(assert (=> b!3448793 d!991734))

(declare-fun d!991736 () Bool)

(assert (=> d!991736 (= (isEmpty!21377 rules!2135) (is-Nil!37067 rules!2135))))

(assert (=> b!3448814 d!991736))

(declare-fun d!991738 () Bool)

(declare-fun lt!1170746 () Bool)

(declare-fun isEmpty!21384 (List!37190) Bool)

(assert (=> d!991738 (= lt!1170746 (isEmpty!21384 (list!13478 (_1!21505 (lex!2332 thiss!18206 rules!2135 lt!1170505)))))))

(declare-fun isEmpty!21385 (Conc!11210) Bool)

(assert (=> d!991738 (= lt!1170746 (isEmpty!21385 (c!590308 (_1!21505 (lex!2332 thiss!18206 rules!2135 lt!1170505)))))))

(assert (=> d!991738 (= (isEmpty!21376 (_1!21505 (lex!2332 thiss!18206 rules!2135 lt!1170505))) lt!1170746)))

(declare-fun bs!559699 () Bool)

(assert (= bs!559699 d!991738))

(declare-fun m!3846289 () Bool)

(assert (=> bs!559699 m!3846289))

(assert (=> bs!559699 m!3846289))

(declare-fun m!3846291 () Bool)

(assert (=> bs!559699 m!3846291))

(declare-fun m!3846293 () Bool)

(assert (=> bs!559699 m!3846293))

(assert (=> b!3448813 d!991738))

(declare-fun b!3449442 () Bool)

(declare-fun e!2136626 () Bool)

(declare-fun e!2136625 () Bool)

(assert (=> b!3449442 (= e!2136626 e!2136625)))

(declare-fun res!1390983 () Bool)

(declare-fun lt!1170759 () tuple2!36742)

(assert (=> b!3449442 (= res!1390983 (< (size!28095 (_2!21505 lt!1170759)) (size!28095 lt!1170505)))))

(assert (=> b!3449442 (=> (not res!1390983) (not e!2136625))))

(declare-fun b!3449443 () Bool)

(assert (=> b!3449443 (= e!2136626 (= (_2!21505 lt!1170759) lt!1170505))))

(declare-fun b!3449444 () Bool)

(assert (=> b!3449444 (= e!2136625 (not (isEmpty!21376 (_1!21505 lt!1170759))))))

(declare-fun b!3449445 () Bool)

(declare-fun res!1390981 () Bool)

(declare-fun e!2136624 () Bool)

(assert (=> b!3449445 (=> (not res!1390981) (not e!2136624))))

(declare-datatypes ((tuple2!36750 0))(
  ( (tuple2!36751 (_1!21509 List!37190) (_2!21509 List!37189)) )
))
(declare-fun lexList!1435 (LexerInterface!5006 List!37191 List!37189) tuple2!36750)

(assert (=> b!3449445 (= res!1390981 (= (list!13478 (_1!21505 lt!1170759)) (_1!21509 (lexList!1435 thiss!18206 rules!2135 (list!13476 lt!1170505)))))))

(declare-fun d!991740 () Bool)

(assert (=> d!991740 e!2136624))

(declare-fun res!1390982 () Bool)

(assert (=> d!991740 (=> (not res!1390982) (not e!2136624))))

(assert (=> d!991740 (= res!1390982 e!2136626)))

(declare-fun c!590431 () Bool)

(assert (=> d!991740 (= c!590431 (> (size!28094 (_1!21505 lt!1170759)) 0))))

(declare-fun lexTailRecV2!1043 (LexerInterface!5006 List!37191 BalanceConc!22032 BalanceConc!22032 BalanceConc!22032 BalanceConc!22034) tuple2!36742)

(assert (=> d!991740 (= lt!1170759 (lexTailRecV2!1043 thiss!18206 rules!2135 lt!1170505 (BalanceConc!22033 Empty!11209) lt!1170505 (BalanceConc!22035 Empty!11210)))))

(assert (=> d!991740 (= (lex!2332 thiss!18206 rules!2135 lt!1170505) lt!1170759)))

(declare-fun b!3449446 () Bool)

(assert (=> b!3449446 (= e!2136624 (= (list!13476 (_2!21505 lt!1170759)) (_2!21509 (lexList!1435 thiss!18206 rules!2135 (list!13476 lt!1170505)))))))

(assert (= (and d!991740 c!590431) b!3449442))

(assert (= (and d!991740 (not c!590431)) b!3449443))

(assert (= (and b!3449442 res!1390983) b!3449444))

(assert (= (and d!991740 res!1390982) b!3449445))

(assert (= (and b!3449445 res!1390981) b!3449446))

(declare-fun m!3846347 () Bool)

(assert (=> d!991740 m!3846347))

(declare-fun m!3846349 () Bool)

(assert (=> d!991740 m!3846349))

(declare-fun m!3846351 () Bool)

(assert (=> b!3449442 m!3846351))

(declare-fun m!3846353 () Bool)

(assert (=> b!3449442 m!3846353))

(declare-fun m!3846355 () Bool)

(assert (=> b!3449445 m!3846355))

(declare-fun m!3846357 () Bool)

(assert (=> b!3449445 m!3846357))

(assert (=> b!3449445 m!3846357))

(declare-fun m!3846359 () Bool)

(assert (=> b!3449445 m!3846359))

(declare-fun m!3846361 () Bool)

(assert (=> b!3449444 m!3846361))

(declare-fun m!3846363 () Bool)

(assert (=> b!3449446 m!3846363))

(assert (=> b!3449446 m!3846357))

(assert (=> b!3449446 m!3846357))

(assert (=> b!3449446 m!3846359))

(assert (=> b!3448813 d!991740))

(declare-fun d!991752 () Bool)

(declare-fun fromListB!1757 (List!37189) BalanceConc!22032)

(assert (=> d!991752 (= (seqFromList!3887 lt!1170503) (fromListB!1757 lt!1170503))))

(declare-fun bs!559700 () Bool)

(assert (= bs!559700 d!991752))

(declare-fun m!3846365 () Bool)

(assert (=> bs!559700 m!3846365))

(assert (=> b!3448813 d!991752))

(declare-fun d!991754 () Bool)

(declare-fun res!1390988 () Bool)

(declare-fun e!2136631 () Bool)

(assert (=> d!991754 (=> res!1390988 e!2136631)))

(assert (=> d!991754 (= res!1390988 (is-Nil!37066 tokens!494))))

(assert (=> d!991754 (= (forall!7880 tokens!494 lambda!121494) e!2136631)))

(declare-fun b!3449451 () Bool)

(declare-fun e!2136632 () Bool)

(assert (=> b!3449451 (= e!2136631 e!2136632)))

(declare-fun res!1390989 () Bool)

(assert (=> b!3449451 (=> (not res!1390989) (not e!2136632))))

(declare-fun dynLambda!15556 (Int Token!10200) Bool)

(assert (=> b!3449451 (= res!1390989 (dynLambda!15556 lambda!121494 (h!42486 tokens!494)))))

(declare-fun b!3449452 () Bool)

(assert (=> b!3449452 (= e!2136632 (forall!7880 (t!271493 tokens!494) lambda!121494))))

(assert (= (and d!991754 (not res!1390988)) b!3449451))

(assert (= (and b!3449451 res!1390989) b!3449452))

(declare-fun b_lambda!98923 () Bool)

(assert (=> (not b_lambda!98923) (not b!3449451)))

(declare-fun m!3846367 () Bool)

(assert (=> b!3449451 m!3846367))

(declare-fun m!3846369 () Bool)

(assert (=> b!3449452 m!3846369))

(assert (=> b!3448792 d!991754))

(declare-fun b!3449453 () Bool)

(declare-fun e!2136633 () Bool)

(assert (=> b!3449453 (= e!2136633 (not (= (head!7284 lt!1170503) (c!590306 (regex!5417 lt!1170496)))))))

(declare-fun b!3449454 () Bool)

(declare-fun e!2136634 () Bool)

(declare-fun e!2136636 () Bool)

(assert (=> b!3449454 (= e!2136634 e!2136636)))

(declare-fun res!1390995 () Bool)

(assert (=> b!3449454 (=> (not res!1390995) (not e!2136636))))

(declare-fun lt!1170760 () Bool)

(assert (=> b!3449454 (= res!1390995 (not lt!1170760))))

(declare-fun b!3449455 () Bool)

(assert (=> b!3449455 (= e!2136636 e!2136633)))

(declare-fun res!1390992 () Bool)

(assert (=> b!3449455 (=> res!1390992 e!2136633)))

(declare-fun call!249000 () Bool)

(assert (=> b!3449455 (= res!1390992 call!249000)))

(declare-fun b!3449456 () Bool)

(declare-fun res!1390993 () Bool)

(declare-fun e!2136638 () Bool)

(assert (=> b!3449456 (=> (not res!1390993) (not e!2136638))))

(assert (=> b!3449456 (= res!1390993 (isEmpty!21380 (tail!5406 lt!1170503)))))

(declare-fun b!3449457 () Bool)

(declare-fun e!2136635 () Bool)

(assert (=> b!3449457 (= e!2136635 (matchR!4760 (derivativeStep!3028 (regex!5417 lt!1170496) (head!7284 lt!1170503)) (tail!5406 lt!1170503)))))

(declare-fun b!3449458 () Bool)

(assert (=> b!3449458 (= e!2136638 (= (head!7284 lt!1170503) (c!590306 (regex!5417 lt!1170496))))))

(declare-fun b!3449459 () Bool)

(declare-fun res!1390994 () Bool)

(assert (=> b!3449459 (=> res!1390994 e!2136633)))

(assert (=> b!3449459 (= res!1390994 (not (isEmpty!21380 (tail!5406 lt!1170503))))))

(declare-fun b!3449460 () Bool)

(declare-fun res!1390997 () Bool)

(assert (=> b!3449460 (=> res!1390997 e!2136634)))

(assert (=> b!3449460 (= res!1390997 e!2136638)))

(declare-fun res!1390991 () Bool)

(assert (=> b!3449460 (=> (not res!1390991) (not e!2136638))))

(assert (=> b!3449460 (= res!1390991 lt!1170760)))

(declare-fun b!3449461 () Bool)

(declare-fun e!2136639 () Bool)

(declare-fun e!2136637 () Bool)

(assert (=> b!3449461 (= e!2136639 e!2136637)))

(declare-fun c!590433 () Bool)

(assert (=> b!3449461 (= c!590433 (is-EmptyLang!10176 (regex!5417 lt!1170496)))))

(declare-fun d!991756 () Bool)

(assert (=> d!991756 e!2136639))

(declare-fun c!590434 () Bool)

(assert (=> d!991756 (= c!590434 (is-EmptyExpr!10176 (regex!5417 lt!1170496)))))

(assert (=> d!991756 (= lt!1170760 e!2136635)))

(declare-fun c!590432 () Bool)

(assert (=> d!991756 (= c!590432 (isEmpty!21380 lt!1170503))))

(assert (=> d!991756 (validRegex!4631 (regex!5417 lt!1170496))))

(assert (=> d!991756 (= (matchR!4760 (regex!5417 lt!1170496) lt!1170503) lt!1170760)))

(declare-fun b!3449462 () Bool)

(declare-fun res!1390996 () Bool)

(assert (=> b!3449462 (=> (not res!1390996) (not e!2136638))))

(assert (=> b!3449462 (= res!1390996 (not call!249000))))

(declare-fun b!3449463 () Bool)

(declare-fun res!1390990 () Bool)

(assert (=> b!3449463 (=> res!1390990 e!2136634)))

(assert (=> b!3449463 (= res!1390990 (not (is-ElementMatch!10176 (regex!5417 lt!1170496))))))

(assert (=> b!3449463 (= e!2136637 e!2136634)))

(declare-fun b!3449464 () Bool)

(assert (=> b!3449464 (= e!2136637 (not lt!1170760))))

(declare-fun bm!248995 () Bool)

(assert (=> bm!248995 (= call!249000 (isEmpty!21380 lt!1170503))))

(declare-fun b!3449465 () Bool)

(assert (=> b!3449465 (= e!2136639 (= lt!1170760 call!249000))))

(declare-fun b!3449466 () Bool)

(assert (=> b!3449466 (= e!2136635 (nullable!3475 (regex!5417 lt!1170496)))))

(assert (= (and d!991756 c!590432) b!3449466))

(assert (= (and d!991756 (not c!590432)) b!3449457))

(assert (= (and d!991756 c!590434) b!3449465))

(assert (= (and d!991756 (not c!590434)) b!3449461))

(assert (= (and b!3449461 c!590433) b!3449464))

(assert (= (and b!3449461 (not c!590433)) b!3449463))

(assert (= (and b!3449463 (not res!1390990)) b!3449460))

(assert (= (and b!3449460 res!1390991) b!3449462))

(assert (= (and b!3449462 res!1390996) b!3449456))

(assert (= (and b!3449456 res!1390993) b!3449458))

(assert (= (and b!3449460 (not res!1390997)) b!3449454))

(assert (= (and b!3449454 res!1390995) b!3449455))

(assert (= (and b!3449455 (not res!1390992)) b!3449459))

(assert (= (and b!3449459 (not res!1390994)) b!3449453))

(assert (= (or b!3449465 b!3449455 b!3449462) bm!248995))

(declare-fun m!3846371 () Bool)

(assert (=> b!3449456 m!3846371))

(assert (=> b!3449456 m!3846371))

(declare-fun m!3846373 () Bool)

(assert (=> b!3449456 m!3846373))

(declare-fun m!3846375 () Bool)

(assert (=> b!3449453 m!3846375))

(declare-fun m!3846377 () Bool)

(assert (=> d!991756 m!3846377))

(declare-fun m!3846379 () Bool)

(assert (=> d!991756 m!3846379))

(assert (=> b!3449459 m!3846371))

(assert (=> b!3449459 m!3846371))

(assert (=> b!3449459 m!3846373))

(assert (=> b!3449457 m!3846375))

(assert (=> b!3449457 m!3846375))

(declare-fun m!3846381 () Bool)

(assert (=> b!3449457 m!3846381))

(assert (=> b!3449457 m!3846371))

(assert (=> b!3449457 m!3846381))

(assert (=> b!3449457 m!3846371))

(declare-fun m!3846383 () Bool)

(assert (=> b!3449457 m!3846383))

(assert (=> b!3449458 m!3846375))

(assert (=> bm!248995 m!3846377))

(declare-fun m!3846385 () Bool)

(assert (=> b!3449466 m!3846385))

(assert (=> b!3448812 d!991756))

(declare-fun d!991758 () Bool)

(assert (=> d!991758 (= (get!11849 lt!1170509) (v!36746 lt!1170509))))

(assert (=> b!3448812 d!991758))

(declare-fun lt!1170761 () List!37189)

(declare-fun e!2136640 () Bool)

(declare-fun b!3449470 () Bool)

(assert (=> b!3449470 (= e!2136640 (or (not (= lt!1170510 Nil!37065)) (= lt!1170761 (++!9120 lt!1170503 lt!1170511))))))

(declare-fun b!3449468 () Bool)

(declare-fun e!2136641 () List!37189)

(assert (=> b!3449468 (= e!2136641 (Cons!37065 (h!42485 (++!9120 lt!1170503 lt!1170511)) (++!9120 (t!271492 (++!9120 lt!1170503 lt!1170511)) lt!1170510)))))

(declare-fun b!3449469 () Bool)

(declare-fun res!1390998 () Bool)

(assert (=> b!3449469 (=> (not res!1390998) (not e!2136640))))

(assert (=> b!3449469 (= res!1390998 (= (size!28091 lt!1170761) (+ (size!28091 (++!9120 lt!1170503 lt!1170511)) (size!28091 lt!1170510))))))

(declare-fun b!3449467 () Bool)

(assert (=> b!3449467 (= e!2136641 lt!1170510)))

(declare-fun d!991760 () Bool)

(assert (=> d!991760 e!2136640))

(declare-fun res!1390999 () Bool)

(assert (=> d!991760 (=> (not res!1390999) (not e!2136640))))

(assert (=> d!991760 (= res!1390999 (= (content!5158 lt!1170761) (set.union (content!5158 (++!9120 lt!1170503 lt!1170511)) (content!5158 lt!1170510))))))

(assert (=> d!991760 (= lt!1170761 e!2136641)))

(declare-fun c!590435 () Bool)

(assert (=> d!991760 (= c!590435 (is-Nil!37065 (++!9120 lt!1170503 lt!1170511)))))

(assert (=> d!991760 (= (++!9120 (++!9120 lt!1170503 lt!1170511) lt!1170510) lt!1170761)))

(assert (= (and d!991760 c!590435) b!3449467))

(assert (= (and d!991760 (not c!590435)) b!3449468))

(assert (= (and d!991760 res!1390999) b!3449469))

(assert (= (and b!3449469 res!1390998) b!3449470))

(declare-fun m!3846387 () Bool)

(assert (=> b!3449468 m!3846387))

(declare-fun m!3846389 () Bool)

(assert (=> b!3449469 m!3846389))

(assert (=> b!3449469 m!3845539))

(declare-fun m!3846391 () Bool)

(assert (=> b!3449469 m!3846391))

(assert (=> b!3449469 m!3846259))

(declare-fun m!3846393 () Bool)

(assert (=> d!991760 m!3846393))

(assert (=> d!991760 m!3845539))

(declare-fun m!3846395 () Bool)

(assert (=> d!991760 m!3846395))

(assert (=> d!991760 m!3846263))

(assert (=> b!3448811 d!991760))

(declare-fun b!3449474 () Bool)

(declare-fun lt!1170762 () List!37189)

(declare-fun e!2136642 () Bool)

(assert (=> b!3449474 (= e!2136642 (or (not (= lt!1170511 Nil!37065)) (= lt!1170762 lt!1170503)))))

(declare-fun b!3449472 () Bool)

(declare-fun e!2136643 () List!37189)

(assert (=> b!3449472 (= e!2136643 (Cons!37065 (h!42485 lt!1170503) (++!9120 (t!271492 lt!1170503) lt!1170511)))))

(declare-fun b!3449473 () Bool)

(declare-fun res!1391000 () Bool)

(assert (=> b!3449473 (=> (not res!1391000) (not e!2136642))))

(assert (=> b!3449473 (= res!1391000 (= (size!28091 lt!1170762) (+ (size!28091 lt!1170503) (size!28091 lt!1170511))))))

(declare-fun b!3449471 () Bool)

(assert (=> b!3449471 (= e!2136643 lt!1170511)))

(declare-fun d!991762 () Bool)

(assert (=> d!991762 e!2136642))

(declare-fun res!1391001 () Bool)

(assert (=> d!991762 (=> (not res!1391001) (not e!2136642))))

(assert (=> d!991762 (= res!1391001 (= (content!5158 lt!1170762) (set.union (content!5158 lt!1170503) (content!5158 lt!1170511))))))

(assert (=> d!991762 (= lt!1170762 e!2136643)))

(declare-fun c!590436 () Bool)

(assert (=> d!991762 (= c!590436 (is-Nil!37065 lt!1170503))))

(assert (=> d!991762 (= (++!9120 lt!1170503 lt!1170511) lt!1170762)))

(assert (= (and d!991762 c!590436) b!3449471))

(assert (= (and d!991762 (not c!590436)) b!3449472))

(assert (= (and d!991762 res!1391001) b!3449473))

(assert (= (and b!3449473 res!1391000) b!3449474))

(declare-fun m!3846397 () Bool)

(assert (=> b!3449472 m!3846397))

(declare-fun m!3846399 () Bool)

(assert (=> b!3449473 m!3846399))

(assert (=> b!3449473 m!3845547))

(assert (=> b!3449473 m!3846223))

(declare-fun m!3846401 () Bool)

(assert (=> d!991762 m!3846401))

(assert (=> d!991762 m!3845879))

(assert (=> d!991762 m!3846229))

(assert (=> b!3448811 d!991762))

(declare-fun d!991764 () Bool)

(declare-fun lt!1170767 () BalanceConc!22032)

(assert (=> d!991764 (= (list!13476 lt!1170767) (printList!1554 thiss!18206 (list!13478 lt!1170514)))))

(assert (=> d!991764 (= lt!1170767 (printTailRec!1501 thiss!18206 lt!1170514 0 (BalanceConc!22033 Empty!11209)))))

(assert (=> d!991764 (= (print!2071 thiss!18206 lt!1170514) lt!1170767)))

(declare-fun bs!559701 () Bool)

(assert (= bs!559701 d!991764))

(declare-fun m!3846403 () Bool)

(assert (=> bs!559701 m!3846403))

(declare-fun m!3846405 () Bool)

(assert (=> bs!559701 m!3846405))

(assert (=> bs!559701 m!3846405))

(declare-fun m!3846407 () Bool)

(assert (=> bs!559701 m!3846407))

(assert (=> bs!559701 m!3845603))

(assert (=> b!3448790 d!991764))

(declare-fun d!991766 () Bool)

(assert (=> d!991766 (= (list!13476 lt!1170513) (list!13479 (c!590307 lt!1170513)))))

(declare-fun bs!559702 () Bool)

(assert (= bs!559702 d!991766))

(declare-fun m!3846409 () Bool)

(assert (=> bs!559702 m!3846409))

(assert (=> b!3448790 d!991766))

(declare-fun d!991768 () Bool)

(declare-fun lt!1170785 () BalanceConc!22032)

(declare-fun printListTailRec!675 (LexerInterface!5006 List!37190 List!37189) List!37189)

(declare-fun dropList!1192 (BalanceConc!22034 Int) List!37190)

(assert (=> d!991768 (= (list!13476 lt!1170785) (printListTailRec!675 thiss!18206 (dropList!1192 lt!1170514 0) (list!13476 (BalanceConc!22033 Empty!11209))))))

(declare-fun e!2136649 () BalanceConc!22032)

(assert (=> d!991768 (= lt!1170785 e!2136649)))

(declare-fun c!590439 () Bool)

(assert (=> d!991768 (= c!590439 (>= 0 (size!28094 lt!1170514)))))

(declare-fun e!2136648 () Bool)

(assert (=> d!991768 e!2136648))

(declare-fun res!1391004 () Bool)

(assert (=> d!991768 (=> (not res!1391004) (not e!2136648))))

(assert (=> d!991768 (= res!1391004 (>= 0 0))))

(assert (=> d!991768 (= (printTailRec!1501 thiss!18206 lt!1170514 0 (BalanceConc!22033 Empty!11209)) lt!1170785)))

(declare-fun b!3449481 () Bool)

(assert (=> b!3449481 (= e!2136648 (<= 0 (size!28094 lt!1170514)))))

(declare-fun b!3449482 () Bool)

(assert (=> b!3449482 (= e!2136649 (BalanceConc!22033 Empty!11209))))

(declare-fun b!3449483 () Bool)

(declare-fun ++!9122 (BalanceConc!22032 BalanceConc!22032) BalanceConc!22032)

(assert (=> b!3449483 (= e!2136649 (printTailRec!1501 thiss!18206 lt!1170514 (+ 0 1) (++!9122 (BalanceConc!22033 Empty!11209) (charsOf!3431 (apply!8686 lt!1170514 0)))))))

(declare-fun lt!1170783 () List!37190)

(assert (=> b!3449483 (= lt!1170783 (list!13478 lt!1170514))))

(declare-fun lt!1170786 () Unit!52389)

(declare-fun lemmaDropApply!1150 (List!37190 Int) Unit!52389)

(assert (=> b!3449483 (= lt!1170786 (lemmaDropApply!1150 lt!1170783 0))))

(declare-fun head!7286 (List!37190) Token!10200)

(declare-fun drop!1998 (List!37190 Int) List!37190)

(declare-fun apply!8688 (List!37190 Int) Token!10200)

(assert (=> b!3449483 (= (head!7286 (drop!1998 lt!1170783 0)) (apply!8688 lt!1170783 0))))

(declare-fun lt!1170787 () Unit!52389)

(assert (=> b!3449483 (= lt!1170787 lt!1170786)))

(declare-fun lt!1170782 () List!37190)

(assert (=> b!3449483 (= lt!1170782 (list!13478 lt!1170514))))

(declare-fun lt!1170788 () Unit!52389)

(declare-fun lemmaDropTail!1034 (List!37190 Int) Unit!52389)

(assert (=> b!3449483 (= lt!1170788 (lemmaDropTail!1034 lt!1170782 0))))

(declare-fun tail!5408 (List!37190) List!37190)

(assert (=> b!3449483 (= (tail!5408 (drop!1998 lt!1170782 0)) (drop!1998 lt!1170782 (+ 0 1)))))

(declare-fun lt!1170784 () Unit!52389)

(assert (=> b!3449483 (= lt!1170784 lt!1170788)))

(assert (= (and d!991768 res!1391004) b!3449481))

(assert (= (and d!991768 c!590439) b!3449482))

(assert (= (and d!991768 (not c!590439)) b!3449483))

(declare-fun m!3846411 () Bool)

(assert (=> d!991768 m!3846411))

(declare-fun m!3846413 () Bool)

(assert (=> d!991768 m!3846413))

(declare-fun m!3846415 () Bool)

(assert (=> d!991768 m!3846415))

(declare-fun m!3846417 () Bool)

(assert (=> d!991768 m!3846417))

(assert (=> d!991768 m!3846413))

(assert (=> d!991768 m!3846415))

(declare-fun m!3846419 () Bool)

(assert (=> d!991768 m!3846419))

(assert (=> b!3449481 m!3846411))

(declare-fun m!3846421 () Bool)

(assert (=> b!3449483 m!3846421))

(declare-fun m!3846423 () Bool)

(assert (=> b!3449483 m!3846423))

(declare-fun m!3846425 () Bool)

(assert (=> b!3449483 m!3846425))

(assert (=> b!3449483 m!3846421))

(declare-fun m!3846427 () Bool)

(assert (=> b!3449483 m!3846427))

(declare-fun m!3846429 () Bool)

(assert (=> b!3449483 m!3846429))

(declare-fun m!3846431 () Bool)

(assert (=> b!3449483 m!3846431))

(declare-fun m!3846433 () Bool)

(assert (=> b!3449483 m!3846433))

(declare-fun m!3846435 () Bool)

(assert (=> b!3449483 m!3846435))

(declare-fun m!3846437 () Bool)

(assert (=> b!3449483 m!3846437))

(declare-fun m!3846439 () Bool)

(assert (=> b!3449483 m!3846439))

(declare-fun m!3846441 () Bool)

(assert (=> b!3449483 m!3846441))

(assert (=> b!3449483 m!3846423))

(assert (=> b!3449483 m!3846405))

(assert (=> b!3449483 m!3846433))

(declare-fun m!3846443 () Bool)

(assert (=> b!3449483 m!3846443))

(assert (=> b!3449483 m!3846435))

(assert (=> b!3449483 m!3846441))

(assert (=> b!3448790 d!991768))

(declare-fun d!991770 () Bool)

(declare-fun e!2136652 () Bool)

(assert (=> d!991770 e!2136652))

(declare-fun res!1391007 () Bool)

(assert (=> d!991770 (=> (not res!1391007) (not e!2136652))))

(declare-fun lt!1170791 () BalanceConc!22034)

(assert (=> d!991770 (= res!1391007 (= (list!13478 lt!1170791) (Cons!37066 (h!42486 tokens!494) Nil!37066)))))

(declare-fun singleton!1107 (Token!10200) BalanceConc!22034)

(assert (=> d!991770 (= lt!1170791 (singleton!1107 (h!42486 tokens!494)))))

(assert (=> d!991770 (= (singletonSeq!2513 (h!42486 tokens!494)) lt!1170791)))

(declare-fun b!3449486 () Bool)

(declare-fun isBalanced!3398 (Conc!11210) Bool)

(assert (=> b!3449486 (= e!2136652 (isBalanced!3398 (c!590308 lt!1170791)))))

(assert (= (and d!991770 res!1391007) b!3449486))

(declare-fun m!3846445 () Bool)

(assert (=> d!991770 m!3846445))

(declare-fun m!3846447 () Bool)

(assert (=> d!991770 m!3846447))

(declare-fun m!3846449 () Bool)

(assert (=> b!3449486 m!3846449))

(assert (=> b!3448790 d!991770))

(declare-fun d!991772 () Bool)

(declare-fun c!590442 () Bool)

(assert (=> d!991772 (= c!590442 (is-Cons!37066 (Cons!37066 (h!42486 tokens!494) Nil!37066)))))

(declare-fun e!2136655 () List!37189)

(assert (=> d!991772 (= (printList!1554 thiss!18206 (Cons!37066 (h!42486 tokens!494) Nil!37066)) e!2136655)))

(declare-fun b!3449491 () Bool)

(assert (=> b!3449491 (= e!2136655 (++!9120 (list!13476 (charsOf!3431 (h!42486 (Cons!37066 (h!42486 tokens!494) Nil!37066)))) (printList!1554 thiss!18206 (t!271493 (Cons!37066 (h!42486 tokens!494) Nil!37066)))))))

(declare-fun b!3449492 () Bool)

(assert (=> b!3449492 (= e!2136655 Nil!37065)))

(assert (= (and d!991772 c!590442) b!3449491))

(assert (= (and d!991772 (not c!590442)) b!3449492))

(declare-fun m!3846451 () Bool)

(assert (=> b!3449491 m!3846451))

(assert (=> b!3449491 m!3846451))

(declare-fun m!3846453 () Bool)

(assert (=> b!3449491 m!3846453))

(declare-fun m!3846455 () Bool)

(assert (=> b!3449491 m!3846455))

(assert (=> b!3449491 m!3846453))

(assert (=> b!3449491 m!3846455))

(declare-fun m!3846457 () Bool)

(assert (=> b!3449491 m!3846457))

(assert (=> b!3448790 d!991772))

(declare-fun b!3449503 () Bool)

(declare-fun e!2136664 () Bool)

(declare-fun inv!15 (TokenValue!5647) Bool)

(assert (=> b!3449503 (= e!2136664 (inv!15 (value!174846 separatorToken!241)))))

(declare-fun b!3449504 () Bool)

(declare-fun e!2136663 () Bool)

(declare-fun inv!16 (TokenValue!5647) Bool)

(assert (=> b!3449504 (= e!2136663 (inv!16 (value!174846 separatorToken!241)))))

(declare-fun b!3449505 () Bool)

(declare-fun e!2136662 () Bool)

(declare-fun inv!17 (TokenValue!5647) Bool)

(assert (=> b!3449505 (= e!2136662 (inv!17 (value!174846 separatorToken!241)))))

(declare-fun b!3449506 () Bool)

(assert (=> b!3449506 (= e!2136663 e!2136662)))

(declare-fun c!590448 () Bool)

(assert (=> b!3449506 (= c!590448 (is-IntegerValue!16942 (value!174846 separatorToken!241)))))

(declare-fun d!991774 () Bool)

(declare-fun c!590447 () Bool)

(assert (=> d!991774 (= c!590447 (is-IntegerValue!16941 (value!174846 separatorToken!241)))))

(assert (=> d!991774 (= (inv!21 (value!174846 separatorToken!241)) e!2136663)))

(declare-fun b!3449507 () Bool)

(declare-fun res!1391010 () Bool)

(assert (=> b!3449507 (=> res!1391010 e!2136664)))

(assert (=> b!3449507 (= res!1391010 (not (is-IntegerValue!16943 (value!174846 separatorToken!241))))))

(assert (=> b!3449507 (= e!2136662 e!2136664)))

(assert (= (and d!991774 c!590447) b!3449504))

(assert (= (and d!991774 (not c!590447)) b!3449506))

(assert (= (and b!3449506 c!590448) b!3449505))

(assert (= (and b!3449506 (not c!590448)) b!3449507))

(assert (= (and b!3449507 (not res!1391010)) b!3449503))

(declare-fun m!3846459 () Bool)

(assert (=> b!3449503 m!3846459))

(declare-fun m!3846461 () Bool)

(assert (=> b!3449504 m!3846461))

(declare-fun m!3846463 () Bool)

(assert (=> b!3449505 m!3846463))

(assert (=> b!3448789 d!991774))

(declare-fun d!991776 () Bool)

(declare-fun res!1391015 () Bool)

(declare-fun e!2136667 () Bool)

(assert (=> d!991776 (=> (not res!1391015) (not e!2136667))))

(assert (=> d!991776 (= res!1391015 (not (isEmpty!21380 (originalCharacters!6131 separatorToken!241))))))

(assert (=> d!991776 (= (inv!50225 separatorToken!241) e!2136667)))

(declare-fun b!3449512 () Bool)

(declare-fun res!1391016 () Bool)

(assert (=> b!3449512 (=> (not res!1391016) (not e!2136667))))

(assert (=> b!3449512 (= res!1391016 (= (originalCharacters!6131 separatorToken!241) (list!13476 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (value!174846 separatorToken!241)))))))

(declare-fun b!3449513 () Bool)

(assert (=> b!3449513 (= e!2136667 (= (size!28090 separatorToken!241) (size!28091 (originalCharacters!6131 separatorToken!241))))))

(assert (= (and d!991776 res!1391015) b!3449512))

(assert (= (and b!3449512 res!1391016) b!3449513))

(declare-fun b_lambda!98925 () Bool)

(assert (=> (not b_lambda!98925) (not b!3449512)))

(assert (=> b!3449512 t!271536))

(declare-fun b_and!242147 () Bool)

(assert (= b_and!242141 (and (=> t!271536 result!231386) b_and!242147)))

(assert (=> b!3449512 t!271538))

(declare-fun b_and!242149 () Bool)

(assert (= b_and!242143 (and (=> t!271538 result!231390) b_and!242149)))

(assert (=> b!3449512 t!271540))

(declare-fun b_and!242151 () Bool)

(assert (= b_and!242145 (and (=> t!271540 result!231392) b_and!242151)))

(declare-fun m!3846465 () Bool)

(assert (=> d!991776 m!3846465))

(assert (=> b!3449512 m!3846251))

(assert (=> b!3449512 m!3846251))

(declare-fun m!3846467 () Bool)

(assert (=> b!3449512 m!3846467))

(declare-fun m!3846469 () Bool)

(assert (=> b!3449513 m!3846469))

(assert (=> start!320340 d!991776))

(declare-fun d!991778 () Bool)

(declare-fun lt!1170792 () Bool)

(declare-fun e!2136669 () Bool)

(assert (=> d!991778 (= lt!1170792 e!2136669)))

(declare-fun res!1391019 () Bool)

(assert (=> d!991778 (=> (not res!1391019) (not e!2136669))))

(assert (=> d!991778 (= res!1391019 (= (list!13478 (_1!21505 (lex!2332 thiss!18206 rules!2135 (print!2071 thiss!18206 (singletonSeq!2513 (h!42486 tokens!494)))))) (list!13478 (singletonSeq!2513 (h!42486 tokens!494)))))))

(declare-fun e!2136668 () Bool)

(assert (=> d!991778 (= lt!1170792 e!2136668)))

(declare-fun res!1391018 () Bool)

(assert (=> d!991778 (=> (not res!1391018) (not e!2136668))))

(declare-fun lt!1170793 () tuple2!36742)

(assert (=> d!991778 (= res!1391018 (= (size!28094 (_1!21505 lt!1170793)) 1))))

(assert (=> d!991778 (= lt!1170793 (lex!2332 thiss!18206 rules!2135 (print!2071 thiss!18206 (singletonSeq!2513 (h!42486 tokens!494)))))))

(assert (=> d!991778 (not (isEmpty!21377 rules!2135))))

(assert (=> d!991778 (= (rulesProduceIndividualToken!2498 thiss!18206 rules!2135 (h!42486 tokens!494)) lt!1170792)))

(declare-fun b!3449514 () Bool)

(declare-fun res!1391017 () Bool)

(assert (=> b!3449514 (=> (not res!1391017) (not e!2136668))))

(assert (=> b!3449514 (= res!1391017 (= (apply!8686 (_1!21505 lt!1170793) 0) (h!42486 tokens!494)))))

(declare-fun b!3449515 () Bool)

(assert (=> b!3449515 (= e!2136668 (isEmpty!21381 (_2!21505 lt!1170793)))))

(declare-fun b!3449516 () Bool)

(assert (=> b!3449516 (= e!2136669 (isEmpty!21381 (_2!21505 (lex!2332 thiss!18206 rules!2135 (print!2071 thiss!18206 (singletonSeq!2513 (h!42486 tokens!494)))))))))

(assert (= (and d!991778 res!1391018) b!3449514))

(assert (= (and b!3449514 res!1391017) b!3449515))

(assert (= (and d!991778 res!1391019) b!3449516))

(assert (=> d!991778 m!3845537))

(assert (=> d!991778 m!3845605))

(assert (=> d!991778 m!3845605))

(declare-fun m!3846471 () Bool)

(assert (=> d!991778 m!3846471))

(assert (=> d!991778 m!3845605))

(declare-fun m!3846473 () Bool)

(assert (=> d!991778 m!3846473))

(declare-fun m!3846475 () Bool)

(assert (=> d!991778 m!3846475))

(assert (=> d!991778 m!3846473))

(declare-fun m!3846477 () Bool)

(assert (=> d!991778 m!3846477))

(declare-fun m!3846479 () Bool)

(assert (=> d!991778 m!3846479))

(declare-fun m!3846481 () Bool)

(assert (=> b!3449514 m!3846481))

(declare-fun m!3846483 () Bool)

(assert (=> b!3449515 m!3846483))

(assert (=> b!3449516 m!3845605))

(assert (=> b!3449516 m!3845605))

(assert (=> b!3449516 m!3846473))

(assert (=> b!3449516 m!3846473))

(assert (=> b!3449516 m!3846477))

(declare-fun m!3846485 () Bool)

(assert (=> b!3449516 m!3846485))

(assert (=> b!3448810 d!991778))

(declare-fun b!3449517 () Bool)

(declare-fun e!2136672 () Bool)

(assert (=> b!3449517 (= e!2136672 (inv!15 (value!174846 (h!42486 tokens!494))))))

(declare-fun b!3449518 () Bool)

(declare-fun e!2136671 () Bool)

(assert (=> b!3449518 (= e!2136671 (inv!16 (value!174846 (h!42486 tokens!494))))))

(declare-fun b!3449519 () Bool)

(declare-fun e!2136670 () Bool)

(assert (=> b!3449519 (= e!2136670 (inv!17 (value!174846 (h!42486 tokens!494))))))

(declare-fun b!3449520 () Bool)

(assert (=> b!3449520 (= e!2136671 e!2136670)))

(declare-fun c!590450 () Bool)

(assert (=> b!3449520 (= c!590450 (is-IntegerValue!16942 (value!174846 (h!42486 tokens!494))))))

(declare-fun d!991780 () Bool)

(declare-fun c!590449 () Bool)

(assert (=> d!991780 (= c!590449 (is-IntegerValue!16941 (value!174846 (h!42486 tokens!494))))))

(assert (=> d!991780 (= (inv!21 (value!174846 (h!42486 tokens!494))) e!2136671)))

(declare-fun b!3449521 () Bool)

(declare-fun res!1391020 () Bool)

(assert (=> b!3449521 (=> res!1391020 e!2136672)))

(assert (=> b!3449521 (= res!1391020 (not (is-IntegerValue!16943 (value!174846 (h!42486 tokens!494)))))))

(assert (=> b!3449521 (= e!2136670 e!2136672)))

(assert (= (and d!991780 c!590449) b!3449518))

(assert (= (and d!991780 (not c!590449)) b!3449520))

(assert (= (and b!3449520 c!590450) b!3449519))

(assert (= (and b!3449520 (not c!590450)) b!3449521))

(assert (= (and b!3449521 (not res!1391020)) b!3449517))

(declare-fun m!3846487 () Bool)

(assert (=> b!3449517 m!3846487))

(declare-fun m!3846489 () Bool)

(assert (=> b!3449518 m!3846489))

(declare-fun m!3846491 () Bool)

(assert (=> b!3449519 m!3846491))

(assert (=> b!3448809 d!991780))

(declare-fun d!991782 () Bool)

(assert (=> d!991782 (dynLambda!15556 lambda!121494 (h!42486 (t!271493 tokens!494)))))

(declare-fun lt!1170796 () Unit!52389)

(declare-fun choose!19913 (List!37190 Int Token!10200) Unit!52389)

(assert (=> d!991782 (= lt!1170796 (choose!19913 tokens!494 lambda!121494 (h!42486 (t!271493 tokens!494))))))

(declare-fun e!2136675 () Bool)

(assert (=> d!991782 e!2136675))

(declare-fun res!1391023 () Bool)

(assert (=> d!991782 (=> (not res!1391023) (not e!2136675))))

(assert (=> d!991782 (= res!1391023 (forall!7880 tokens!494 lambda!121494))))

(assert (=> d!991782 (= (forallContained!1364 tokens!494 lambda!121494 (h!42486 (t!271493 tokens!494))) lt!1170796)))

(declare-fun b!3449524 () Bool)

(declare-fun contains!6838 (List!37190 Token!10200) Bool)

(assert (=> b!3449524 (= e!2136675 (contains!6838 tokens!494 (h!42486 (t!271493 tokens!494))))))

(assert (= (and d!991782 res!1391023) b!3449524))

(declare-fun b_lambda!98927 () Bool)

(assert (=> (not b_lambda!98927) (not d!991782)))

(declare-fun m!3846493 () Bool)

(assert (=> d!991782 m!3846493))

(declare-fun m!3846495 () Bool)

(assert (=> d!991782 m!3846495))

(assert (=> d!991782 m!3845577))

(declare-fun m!3846497 () Bool)

(assert (=> b!3449524 m!3846497))

(assert (=> b!3448808 d!991782))

(declare-fun d!991784 () Bool)

(assert (=> d!991784 (dynLambda!15556 lambda!121494 (h!42486 tokens!494))))

(declare-fun lt!1170797 () Unit!52389)

(assert (=> d!991784 (= lt!1170797 (choose!19913 tokens!494 lambda!121494 (h!42486 tokens!494)))))

(declare-fun e!2136676 () Bool)

(assert (=> d!991784 e!2136676))

(declare-fun res!1391024 () Bool)

(assert (=> d!991784 (=> (not res!1391024) (not e!2136676))))

(assert (=> d!991784 (= res!1391024 (forall!7880 tokens!494 lambda!121494))))

(assert (=> d!991784 (= (forallContained!1364 tokens!494 lambda!121494 (h!42486 tokens!494)) lt!1170797)))

(declare-fun b!3449525 () Bool)

(assert (=> b!3449525 (= e!2136676 (contains!6838 tokens!494 (h!42486 tokens!494)))))

(assert (= (and d!991784 res!1391024) b!3449525))

(declare-fun b_lambda!98929 () Bool)

(assert (=> (not b_lambda!98929) (not d!991784)))

(assert (=> d!991784 m!3846367))

(declare-fun m!3846499 () Bool)

(assert (=> d!991784 m!3846499))

(assert (=> d!991784 m!3845577))

(declare-fun m!3846501 () Bool)

(assert (=> b!3449525 m!3846501))

(assert (=> b!3448808 d!991784))

(declare-fun d!991786 () Bool)

(declare-fun res!1391025 () Bool)

(declare-fun e!2136677 () Bool)

(assert (=> d!991786 (=> (not res!1391025) (not e!2136677))))

(assert (=> d!991786 (= res!1391025 (not (isEmpty!21380 (originalCharacters!6131 (h!42486 tokens!494)))))))

(assert (=> d!991786 (= (inv!50225 (h!42486 tokens!494)) e!2136677)))

(declare-fun b!3449526 () Bool)

(declare-fun res!1391026 () Bool)

(assert (=> b!3449526 (=> (not res!1391026) (not e!2136677))))

(assert (=> b!3449526 (= res!1391026 (= (originalCharacters!6131 (h!42486 tokens!494)) (list!13476 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (value!174846 (h!42486 tokens!494))))))))

(declare-fun b!3449527 () Bool)

(assert (=> b!3449527 (= e!2136677 (= (size!28090 (h!42486 tokens!494)) (size!28091 (originalCharacters!6131 (h!42486 tokens!494)))))))

(assert (= (and d!991786 res!1391025) b!3449526))

(assert (= (and b!3449526 res!1391026) b!3449527))

(declare-fun b_lambda!98931 () Bool)

(assert (=> (not b_lambda!98931) (not b!3449526)))

(declare-fun tb!187579 () Bool)

(declare-fun t!271552 () Bool)

(assert (=> (and b!3448799 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271552) tb!187579))

(declare-fun b!3449528 () Bool)

(declare-fun e!2136678 () Bool)

(declare-fun tp!1076039 () Bool)

(assert (=> b!3449528 (= e!2136678 (and (inv!50229 (c!590307 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (value!174846 (h!42486 tokens!494))))) tp!1076039))))

(declare-fun result!231400 () Bool)

(assert (=> tb!187579 (= result!231400 (and (inv!50230 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (value!174846 (h!42486 tokens!494)))) e!2136678))))

(assert (= tb!187579 b!3449528))

(declare-fun m!3846503 () Bool)

(assert (=> b!3449528 m!3846503))

(declare-fun m!3846505 () Bool)

(assert (=> tb!187579 m!3846505))

(assert (=> b!3449526 t!271552))

(declare-fun b_and!242153 () Bool)

(assert (= b_and!242147 (and (=> t!271552 result!231400) b_and!242153)))

(declare-fun tb!187581 () Bool)

(declare-fun t!271554 () Bool)

(assert (=> (and b!3448803 (= (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271554) tb!187581))

(declare-fun result!231402 () Bool)

(assert (= result!231402 result!231400))

(assert (=> b!3449526 t!271554))

(declare-fun b_and!242155 () Bool)

(assert (= b_and!242149 (and (=> t!271554 result!231402) b_and!242155)))

(declare-fun t!271556 () Bool)

(declare-fun tb!187583 () Bool)

(assert (=> (and b!3448791 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271556) tb!187583))

(declare-fun result!231404 () Bool)

(assert (= result!231404 result!231400))

(assert (=> b!3449526 t!271556))

(declare-fun b_and!242157 () Bool)

(assert (= b_and!242151 (and (=> t!271556 result!231404) b_and!242157)))

(declare-fun m!3846507 () Bool)

(assert (=> d!991786 m!3846507))

(declare-fun m!3846509 () Bool)

(assert (=> b!3449526 m!3846509))

(assert (=> b!3449526 m!3846509))

(declare-fun m!3846511 () Bool)

(assert (=> b!3449526 m!3846511))

(declare-fun m!3846513 () Bool)

(assert (=> b!3449527 m!3846513))

(assert (=> b!3448807 d!991786))

(declare-fun d!991788 () Bool)

(assert (=> d!991788 (= (list!13476 (charsOf!3431 (h!42486 tokens!494))) (list!13479 (c!590307 (charsOf!3431 (h!42486 tokens!494)))))))

(declare-fun bs!559703 () Bool)

(assert (= bs!559703 d!991788))

(declare-fun m!3846515 () Bool)

(assert (=> bs!559703 m!3846515))

(assert (=> b!3448806 d!991788))

(declare-fun d!991790 () Bool)

(declare-fun lt!1170798 () BalanceConc!22032)

(assert (=> d!991790 (= (list!13476 lt!1170798) (originalCharacters!6131 (h!42486 tokens!494)))))

(assert (=> d!991790 (= lt!1170798 (dynLambda!15555 (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (value!174846 (h!42486 tokens!494))))))

(assert (=> d!991790 (= (charsOf!3431 (h!42486 tokens!494)) lt!1170798)))

(declare-fun b_lambda!98933 () Bool)

(assert (=> (not b_lambda!98933) (not d!991790)))

(assert (=> d!991790 t!271552))

(declare-fun b_and!242159 () Bool)

(assert (= b_and!242153 (and (=> t!271552 result!231400) b_and!242159)))

(assert (=> d!991790 t!271554))

(declare-fun b_and!242161 () Bool)

(assert (= b_and!242155 (and (=> t!271554 result!231402) b_and!242161)))

(assert (=> d!991790 t!271556))

(declare-fun b_and!242163 () Bool)

(assert (= b_and!242157 (and (=> t!271556 result!231404) b_and!242163)))

(declare-fun m!3846517 () Bool)

(assert (=> d!991790 m!3846517))

(assert (=> d!991790 m!3846509))

(assert (=> b!3448806 d!991790))

(declare-fun d!991792 () Bool)

(assert (=> d!991792 (= (inv!50222 (tag!6013 (h!42487 rules!2135))) (= (mod (str.len (value!174845 (tag!6013 (h!42487 rules!2135)))) 2) 0))))

(assert (=> b!3448804 d!991792))

(declare-fun d!991794 () Bool)

(declare-fun res!1391027 () Bool)

(declare-fun e!2136679 () Bool)

(assert (=> d!991794 (=> (not res!1391027) (not e!2136679))))

(assert (=> d!991794 (= res!1391027 (semiInverseModEq!2270 (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toValue!7637 (transformation!5417 (h!42487 rules!2135)))))))

(assert (=> d!991794 (= (inv!50226 (transformation!5417 (h!42487 rules!2135))) e!2136679)))

(declare-fun b!3449529 () Bool)

(assert (=> b!3449529 (= e!2136679 (equivClasses!2169 (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toValue!7637 (transformation!5417 (h!42487 rules!2135)))))))

(assert (= (and d!991794 res!1391027) b!3449529))

(declare-fun m!3846519 () Bool)

(assert (=> d!991794 m!3846519))

(declare-fun m!3846521 () Bool)

(assert (=> b!3449529 m!3846521))

(assert (=> b!3448804 d!991794))

(declare-fun d!991796 () Bool)

(declare-fun res!1391032 () Bool)

(declare-fun e!2136684 () Bool)

(assert (=> d!991796 (=> res!1391032 e!2136684)))

(assert (=> d!991796 (= res!1391032 (not (is-Cons!37067 rules!2135)))))

(assert (=> d!991796 (= (sepAndNonSepRulesDisjointChars!1611 rules!2135 rules!2135) e!2136684)))

(declare-fun b!3449534 () Bool)

(declare-fun e!2136685 () Bool)

(assert (=> b!3449534 (= e!2136684 e!2136685)))

(declare-fun res!1391033 () Bool)

(assert (=> b!3449534 (=> (not res!1391033) (not e!2136685))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!706 (Rule!10634 List!37191) Bool)

(assert (=> b!3449534 (= res!1391033 (ruleDisjointCharsFromAllFromOtherType!706 (h!42487 rules!2135) rules!2135))))

(declare-fun b!3449535 () Bool)

(assert (=> b!3449535 (= e!2136685 (sepAndNonSepRulesDisjointChars!1611 rules!2135 (t!271494 rules!2135)))))

(assert (= (and d!991796 (not res!1391032)) b!3449534))

(assert (= (and b!3449534 res!1391033) b!3449535))

(declare-fun m!3846523 () Bool)

(assert (=> b!3449534 m!3846523))

(declare-fun m!3846525 () Bool)

(assert (=> b!3449535 m!3846525))

(assert (=> b!3448801 d!991796))

(declare-fun b!3449540 () Bool)

(declare-fun e!2136688 () Bool)

(declare-fun tp_is_empty!17531 () Bool)

(declare-fun tp!1076042 () Bool)

(assert (=> b!3449540 (= e!2136688 (and tp_is_empty!17531 tp!1076042))))

(assert (=> b!3448809 (= tp!1075985 e!2136688)))

(assert (= (and b!3448809 (is-Cons!37065 (originalCharacters!6131 (h!42486 tokens!494)))) b!3449540))

(declare-fun b!3449551 () Bool)

(declare-fun e!2136691 () Bool)

(assert (=> b!3449551 (= e!2136691 tp_is_empty!17531)))

(declare-fun b!3449553 () Bool)

(declare-fun tp!1076055 () Bool)

(assert (=> b!3449553 (= e!2136691 tp!1076055)))

(declare-fun b!3449552 () Bool)

(declare-fun tp!1076054 () Bool)

(declare-fun tp!1076056 () Bool)

(assert (=> b!3449552 (= e!2136691 (and tp!1076054 tp!1076056))))

(assert (=> b!3448804 (= tp!1075983 e!2136691)))

(declare-fun b!3449554 () Bool)

(declare-fun tp!1076053 () Bool)

(declare-fun tp!1076057 () Bool)

(assert (=> b!3449554 (= e!2136691 (and tp!1076053 tp!1076057))))

(assert (= (and b!3448804 (is-ElementMatch!10176 (regex!5417 (h!42487 rules!2135)))) b!3449551))

(assert (= (and b!3448804 (is-Concat!15823 (regex!5417 (h!42487 rules!2135)))) b!3449552))

(assert (= (and b!3448804 (is-Star!10176 (regex!5417 (h!42487 rules!2135)))) b!3449553))

(assert (= (and b!3448804 (is-Union!10176 (regex!5417 (h!42487 rules!2135)))) b!3449554))

(declare-fun b!3449555 () Bool)

(declare-fun e!2136692 () Bool)

(assert (=> b!3449555 (= e!2136692 tp_is_empty!17531)))

(declare-fun b!3449557 () Bool)

(declare-fun tp!1076060 () Bool)

(assert (=> b!3449557 (= e!2136692 tp!1076060)))

(declare-fun b!3449556 () Bool)

(declare-fun tp!1076059 () Bool)

(declare-fun tp!1076061 () Bool)

(assert (=> b!3449556 (= e!2136692 (and tp!1076059 tp!1076061))))

(assert (=> b!3448819 (= tp!1075986 e!2136692)))

(declare-fun b!3449558 () Bool)

(declare-fun tp!1076058 () Bool)

(declare-fun tp!1076062 () Bool)

(assert (=> b!3449558 (= e!2136692 (and tp!1076058 tp!1076062))))

(assert (= (and b!3448819 (is-ElementMatch!10176 (regex!5417 (rule!7995 (h!42486 tokens!494))))) b!3449555))

(assert (= (and b!3448819 (is-Concat!15823 (regex!5417 (rule!7995 (h!42486 tokens!494))))) b!3449556))

(assert (= (and b!3448819 (is-Star!10176 (regex!5417 (rule!7995 (h!42486 tokens!494))))) b!3449557))

(assert (= (and b!3448819 (is-Union!10176 (regex!5417 (rule!7995 (h!42486 tokens!494))))) b!3449558))

(declare-fun b!3449559 () Bool)

(declare-fun e!2136693 () Bool)

(assert (=> b!3449559 (= e!2136693 tp_is_empty!17531)))

(declare-fun b!3449561 () Bool)

(declare-fun tp!1076065 () Bool)

(assert (=> b!3449561 (= e!2136693 tp!1076065)))

(declare-fun b!3449560 () Bool)

(declare-fun tp!1076064 () Bool)

(declare-fun tp!1076066 () Bool)

(assert (=> b!3449560 (= e!2136693 (and tp!1076064 tp!1076066))))

(assert (=> b!3448798 (= tp!1075989 e!2136693)))

(declare-fun b!3449562 () Bool)

(declare-fun tp!1076063 () Bool)

(declare-fun tp!1076067 () Bool)

(assert (=> b!3449562 (= e!2136693 (and tp!1076063 tp!1076067))))

(assert (= (and b!3448798 (is-ElementMatch!10176 (regex!5417 (rule!7995 separatorToken!241)))) b!3449559))

(assert (= (and b!3448798 (is-Concat!15823 (regex!5417 (rule!7995 separatorToken!241)))) b!3449560))

(assert (= (and b!3448798 (is-Star!10176 (regex!5417 (rule!7995 separatorToken!241)))) b!3449561))

(assert (= (and b!3448798 (is-Union!10176 (regex!5417 (rule!7995 separatorToken!241)))) b!3449562))

(declare-fun b!3449576 () Bool)

(declare-fun b_free!89517 () Bool)

(declare-fun b_next!90221 () Bool)

(assert (=> b!3449576 (= b_free!89517 (not b_next!90221))))

(declare-fun t!271558 () Bool)

(declare-fun tb!187585 () Bool)

(assert (=> (and b!3449576 (= (toValue!7637 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271558) tb!187585))

(declare-fun result!231412 () Bool)

(assert (= result!231412 result!231356))

(assert (=> d!991646 t!271558))

(declare-fun b_and!242165 () Bool)

(declare-fun tp!1076080 () Bool)

(assert (=> b!3449576 (= tp!1076080 (and (=> t!271558 result!231412) b_and!242165))))

(declare-fun b_free!89519 () Bool)

(declare-fun b_next!90223 () Bool)

(assert (=> b!3449576 (= b_free!89519 (not b_next!90223))))

(declare-fun t!271560 () Bool)

(declare-fun tb!187587 () Bool)

(assert (=> (and b!3449576 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241)))) t!271560) tb!187587))

(declare-fun result!231414 () Bool)

(assert (= result!231414 result!231386))

(assert (=> d!991722 t!271560))

(declare-fun t!271562 () Bool)

(declare-fun tb!187589 () Bool)

(assert (=> (and b!3449576 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271562) tb!187589))

(declare-fun result!231416 () Bool)

(assert (= result!231416 result!231400))

(assert (=> d!991790 t!271562))

(assert (=> b!3449526 t!271562))

(assert (=> b!3449512 t!271560))

(declare-fun t!271564 () Bool)

(declare-fun tb!187591 () Bool)

(assert (=> (and b!3449576 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494)))))) t!271564) tb!187591))

(declare-fun result!231418 () Bool)

(assert (= result!231418 result!231394))

(assert (=> d!991734 t!271564))

(declare-fun b_and!242167 () Bool)

(declare-fun tp!1076079 () Bool)

(assert (=> b!3449576 (= tp!1076079 (and (=> t!271562 result!231416) (=> t!271560 result!231414) (=> t!271564 result!231418) b_and!242167))))

(declare-fun e!2136711 () Bool)

(declare-fun tp!1076081 () Bool)

(declare-fun e!2136708 () Bool)

(declare-fun b!3449574 () Bool)

(assert (=> b!3449574 (= e!2136711 (and (inv!21 (value!174846 (h!42486 (t!271493 tokens!494)))) e!2136708 tp!1076081))))

(declare-fun e!2136710 () Bool)

(assert (=> b!3449576 (= e!2136710 (and tp!1076080 tp!1076079))))

(declare-fun b!3449575 () Bool)

(declare-fun tp!1076078 () Bool)

(assert (=> b!3449575 (= e!2136708 (and tp!1076078 (inv!50222 (tag!6013 (rule!7995 (h!42486 (t!271493 tokens!494))))) (inv!50226 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) e!2136710))))

(declare-fun e!2136706 () Bool)

(assert (=> b!3448807 (= tp!1075982 e!2136706)))

(declare-fun b!3449573 () Bool)

(declare-fun tp!1076082 () Bool)

(assert (=> b!3449573 (= e!2136706 (and (inv!50225 (h!42486 (t!271493 tokens!494))) e!2136711 tp!1076082))))

(assert (= b!3449575 b!3449576))

(assert (= b!3449574 b!3449575))

(assert (= b!3449573 b!3449574))

(assert (= (and b!3448807 (is-Cons!37066 (t!271493 tokens!494))) b!3449573))

(declare-fun m!3846527 () Bool)

(assert (=> b!3449574 m!3846527))

(declare-fun m!3846529 () Bool)

(assert (=> b!3449575 m!3846529))

(declare-fun m!3846531 () Bool)

(assert (=> b!3449575 m!3846531))

(declare-fun m!3846533 () Bool)

(assert (=> b!3449573 m!3846533))

(declare-fun b!3449587 () Bool)

(declare-fun b_free!89521 () Bool)

(declare-fun b_next!90225 () Bool)

(assert (=> b!3449587 (= b_free!89521 (not b_next!90225))))

(declare-fun t!271566 () Bool)

(declare-fun tb!187593 () Bool)

(assert (=> (and b!3449587 (= (toValue!7637 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271566) tb!187593))

(declare-fun result!231422 () Bool)

(assert (= result!231422 result!231356))

(assert (=> d!991646 t!271566))

(declare-fun b_and!242169 () Bool)

(declare-fun tp!1076093 () Bool)

(assert (=> b!3449587 (= tp!1076093 (and (=> t!271566 result!231422) b_and!242169))))

(declare-fun b_free!89523 () Bool)

(declare-fun b_next!90227 () Bool)

(assert (=> b!3449587 (= b_free!89523 (not b_next!90227))))

(declare-fun tb!187595 () Bool)

(declare-fun t!271568 () Bool)

(assert (=> (and b!3449587 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241)))) t!271568) tb!187595))

(declare-fun result!231424 () Bool)

(assert (= result!231424 result!231386))

(assert (=> d!991722 t!271568))

(declare-fun tb!187597 () Bool)

(declare-fun t!271570 () Bool)

(assert (=> (and b!3449587 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494))))) t!271570) tb!187597))

(declare-fun result!231426 () Bool)

(assert (= result!231426 result!231400))

(assert (=> d!991790 t!271570))

(assert (=> b!3449526 t!271570))

(assert (=> b!3449512 t!271568))

(declare-fun t!271572 () Bool)

(declare-fun tb!187599 () Bool)

(assert (=> (and b!3449587 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494)))))) t!271572) tb!187599))

(declare-fun result!231428 () Bool)

(assert (= result!231428 result!231394))

(assert (=> d!991734 t!271572))

(declare-fun b_and!242171 () Bool)

(declare-fun tp!1076092 () Bool)

(assert (=> b!3449587 (= tp!1076092 (and (=> t!271568 result!231424) (=> t!271572 result!231428) (=> t!271570 result!231426) b_and!242171))))

(declare-fun e!2136723 () Bool)

(assert (=> b!3449587 (= e!2136723 (and tp!1076093 tp!1076092))))

(declare-fun b!3449586 () Bool)

(declare-fun tp!1076091 () Bool)

(declare-fun e!2136722 () Bool)

(assert (=> b!3449586 (= e!2136722 (and tp!1076091 (inv!50222 (tag!6013 (h!42487 (t!271494 rules!2135)))) (inv!50226 (transformation!5417 (h!42487 (t!271494 rules!2135)))) e!2136723))))

(declare-fun b!3449585 () Bool)

(declare-fun e!2136720 () Bool)

(declare-fun tp!1076094 () Bool)

(assert (=> b!3449585 (= e!2136720 (and e!2136722 tp!1076094))))

(assert (=> b!3448795 (= tp!1075988 e!2136720)))

(assert (= b!3449586 b!3449587))

(assert (= b!3449585 b!3449586))

(assert (= (and b!3448795 (is-Cons!37067 (t!271494 rules!2135))) b!3449585))

(declare-fun m!3846535 () Bool)

(assert (=> b!3449586 m!3846535))

(declare-fun m!3846537 () Bool)

(assert (=> b!3449586 m!3846537))

(declare-fun b!3449588 () Bool)

(declare-fun e!2136724 () Bool)

(declare-fun tp!1076095 () Bool)

(assert (=> b!3449588 (= e!2136724 (and tp_is_empty!17531 tp!1076095))))

(assert (=> b!3448789 (= tp!1075980 e!2136724)))

(assert (= (and b!3448789 (is-Cons!37065 (originalCharacters!6131 separatorToken!241))) b!3449588))

(declare-fun b_lambda!98935 () Bool)

(assert (= b_lambda!98925 (or (and b!3448799 b_free!89495 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3449576 b_free!89519 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3449587 b_free!89523 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3448791 b_free!89503 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3448803 b_free!89499) b_lambda!98935)))

(declare-fun b_lambda!98937 () Bool)

(assert (= b_lambda!98933 (or (and b!3448799 b_free!89495 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3449576 b_free!89519 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3449587 b_free!89523 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3448791 b_free!89503) (and b!3448803 b_free!89499 (= (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) b_lambda!98937)))

(declare-fun b_lambda!98939 () Bool)

(assert (= b_lambda!98927 (or b!3448792 b_lambda!98939)))

(declare-fun bs!559704 () Bool)

(declare-fun d!991798 () Bool)

(assert (= bs!559704 (and d!991798 b!3448792)))

(assert (=> bs!559704 (= (dynLambda!15556 lambda!121494 (h!42486 (t!271493 tokens!494))) (not (isSeparator!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))))))

(assert (=> d!991782 d!991798))

(declare-fun b_lambda!98941 () Bool)

(assert (= b_lambda!98919 (or (and b!3448799 b_free!89495 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3449576 b_free!89519 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3449587 b_free!89523 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3448791 b_free!89503 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))))) (and b!3448803 b_free!89499) b_lambda!98941)))

(declare-fun b_lambda!98943 () Bool)

(assert (= b_lambda!98921 (or (and b!3448799 b_free!89495 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))))) (and b!3448803 b_free!89499 (= (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))))) (and b!3449587 b_free!89523 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))))) (and b!3449576 b_free!89519) (and b!3448791 b_free!89503 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))))) b_lambda!98943)))

(declare-fun b_lambda!98945 () Bool)

(assert (= b_lambda!98923 (or b!3448792 b_lambda!98945)))

(declare-fun bs!559705 () Bool)

(declare-fun d!991800 () Bool)

(assert (= bs!559705 (and d!991800 b!3448792)))

(assert (=> bs!559705 (= (dynLambda!15556 lambda!121494 (h!42486 tokens!494)) (not (isSeparator!5417 (rule!7995 (h!42486 tokens!494)))))))

(assert (=> b!3449451 d!991800))

(declare-fun b_lambda!98947 () Bool)

(assert (= b_lambda!98931 (or (and b!3448799 b_free!89495 (= (toChars!7496 (transformation!5417 (h!42487 rules!2135))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3449576 b_free!89519 (= (toChars!7496 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3449587 b_free!89523 (= (toChars!7496 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3448791 b_free!89503) (and b!3448803 b_free!89499 (= (toChars!7496 (transformation!5417 (rule!7995 separatorToken!241))) (toChars!7496 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) b_lambda!98947)))

(declare-fun b_lambda!98949 () Bool)

(assert (= b_lambda!98929 (or b!3448792 b_lambda!98949)))

(assert (=> d!991784 d!991800))

(declare-fun b_lambda!98951 () Bool)

(assert (= b_lambda!98911 (or (and b!3448791 b_free!89501) (and b!3449576 b_free!89517 (= (toValue!7637 (transformation!5417 (rule!7995 (h!42486 (t!271493 tokens!494))))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3448799 b_free!89493 (= (toValue!7637 (transformation!5417 (h!42487 rules!2135))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3448803 b_free!89497 (= (toValue!7637 (transformation!5417 (rule!7995 separatorToken!241))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) (and b!3449587 b_free!89521 (= (toValue!7637 (transformation!5417 (h!42487 (t!271494 rules!2135)))) (toValue!7637 (transformation!5417 (rule!7995 (h!42486 tokens!494)))))) b_lambda!98951)))

(push 1)

(assert (not d!991766))

(assert b_and!242165)

(assert (not b_next!90223))

(assert (not b!3449483))

(assert (not b_next!90221))

(assert (not d!991642))

(assert (not b!3448945))

(assert (not b!3449588))

(assert (not b!3449562))

(assert (not b!3449286))

(assert (not b!3449515))

(assert (not b!3449452))

(assert (not b!3449393))

(assert (not b!3449259))

(assert (not b!3449256))

(assert (not b!3449558))

(assert b_and!242169)

(assert (not d!991788))

(assert (not b!3448958))

(assert tp_is_empty!17531)

(assert (not b!3449540))

(assert (not b!3449472))

(assert (not b!3449517))

(assert (not b_lambda!98947))

(assert b_and!242113)

(assert (not b!3449130))

(assert (not b!3449481))

(assert (not b!3448961))

(assert (not d!991720))

(assert (not b!3449343))

(assert (not b_next!90201))

(assert (not b!3449528))

(assert (not d!991692))

(assert (not b!3449418))

(assert (not b!3449392))

(assert (not b!3449262))

(assert (not b!3449344))

(assert (not d!991630))

(assert (not d!991592))

(assert (not b!3448949))

(assert (not b!3449575))

(assert (not b!3449261))

(assert (not d!991734))

(assert b_and!242161)

(assert (not b!3449458))

(assert (not b!3449557))

(assert (not d!991726))

(assert (not d!991710))

(assert (not b_next!90203))

(assert (not b!3449446))

(assert (not b!3449512))

(assert (not d!991762))

(assert (not d!991644))

(assert (not b_next!90227))

(assert (not b!3449525))

(assert (not d!991756))

(assert (not d!991778))

(assert (not b_lambda!98951))

(assert (not b!3449519))

(assert (not d!991786))

(assert (not d!991790))

(assert (not b!3449258))

(assert (not b!3449469))

(assert (not b!3448951))

(assert (not d!991588))

(assert (not b!3449514))

(assert (not d!991686))

(assert (not d!991724))

(assert (not b!3449445))

(assert (not b_next!90197))

(assert (not b!3449152))

(assert (not b!3449516))

(assert (not b!3449491))

(assert b_and!242167)

(assert (not d!991636))

(assert (not b!3449293))

(assert (not b!3449473))

(assert (not b!3449553))

(assert (not b!3449459))

(assert (not d!991620))

(assert (not b!3449255))

(assert (not d!991738))

(assert (not d!991776))

(assert (not b!3449410))

(assert (not bm!248959))

(assert (not b!3449406))

(assert (not d!991624))

(assert (not d!991626))

(assert (not tb!187579))

(assert (not d!991648))

(assert (not d!991650))

(assert (not b_lambda!98945))

(assert (not b!3449556))

(assert (not b!3449292))

(assert (not d!991718))

(assert (not b!3449053))

(assert (not b_next!90207))

(assert (not b!3449444))

(assert (not b!3449457))

(assert (not b!3449503))

(assert (not tb!187543))

(assert (not d!991688))

(assert (not d!991732))

(assert (not d!991760))

(assert (not bm!248991))

(assert b_and!242171)

(assert (not tb!187573))

(assert (not b!3449466))

(assert (not b!3448950))

(assert (not b!3449574))

(assert (not b!3449151))

(assert (not b!3449396))

(assert (not b!3449132))

(assert (not b!3449535))

(assert (not d!991784))

(assert (not b!3449456))

(assert (not b!3449341))

(assert (not b!3449294))

(assert (not b!3449561))

(assert (not d!991768))

(assert (not b!3449504))

(assert (not b_next!90199))

(assert (not d!991752))

(assert b_and!242111)

(assert (not b!3449131))

(assert (not b!3448962))

(assert (not b!3449257))

(assert (not b!3449586))

(assert (not d!991782))

(assert (not b!3449405))

(assert (not bm!248958))

(assert b_and!242115)

(assert (not b!3449513))

(assert (not b!3449408))

(assert (not b_next!90225))

(assert (not b!3449403))

(assert (not b!3449108))

(assert (not d!991582))

(assert (not b!3449552))

(assert (not d!991722))

(assert (not b!3449526))

(assert (not b!3449442))

(assert (not b_lambda!98949))

(assert (not d!991764))

(assert (not b_lambda!98939))

(assert (not b!3449518))

(assert (not bm!248948))

(assert (not b_lambda!98941))

(assert (not b!3449062))

(assert (not b!3449505))

(assert (not b_lambda!98935))

(assert (not b!3449397))

(assert (not b!3449154))

(assert (not b!3449554))

(assert (not bm!248993))

(assert (not b!3449389))

(assert (not b!3449254))

(assert (not b!3449296))

(assert (not b!3448948))

(assert (not b!3449585))

(assert (not b!3449527))

(assert (not d!991794))

(assert (not b_next!90205))

(assert (not b_lambda!98937))

(assert (not b!3449534))

(assert (not d!991628))

(assert (not d!991672))

(assert (not b!3449524))

(assert (not b!3449573))

(assert (not b!3449092))

(assert (not d!991770))

(assert b_and!242163)

(assert (not d!991594))

(assert (not b!3449104))

(assert (not b_lambda!98943))

(assert (not d!991740))

(assert (not b!3449453))

(assert (not b!3449340))

(assert (not tb!187567))

(assert (not b!3449560))

(assert (not bm!248994))

(assert (not bm!248995))

(assert (not b!3449529))

(assert b_and!242159)

(assert (not b!3449103))

(assert (not b!3449486))

(assert (not b!3449468))

(check-sat)

(pop 1)

(push 1)

(assert b_and!242169)

(assert b_and!242113)

(assert (not b_next!90201))

(assert b_and!242161)

(assert (not b_next!90203))

(assert (not b_next!90227))

(assert (not b_next!90207))

(assert b_and!242171)

(assert (not b_next!90205))

(assert b_and!242163)

(assert b_and!242159)

(assert b_and!242165)

(assert (not b_next!90223))

(assert (not b_next!90221))

(assert (not b_next!90197))

(assert b_and!242167)

(assert (not b_next!90199))

(assert b_and!242111)

(assert b_and!242115)

(assert (not b_next!90225))

(check-sat)

(pop 1)

