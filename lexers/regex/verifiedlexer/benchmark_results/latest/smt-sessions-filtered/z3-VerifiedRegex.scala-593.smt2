; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18194 () Bool)

(assert start!18194)

(declare-fun b!168328 () Bool)

(declare-fun b_free!6409 () Bool)

(declare-fun b_next!6409 () Bool)

(assert (=> b!168328 (= b_free!6409 (not b_next!6409))))

(declare-fun tp!83586 () Bool)

(declare-fun b_and!10937 () Bool)

(assert (=> b!168328 (= tp!83586 b_and!10937)))

(declare-fun b_free!6411 () Bool)

(declare-fun b_next!6411 () Bool)

(assert (=> b!168328 (= b_free!6411 (not b_next!6411))))

(declare-fun tp!83575 () Bool)

(declare-fun b_and!10939 () Bool)

(assert (=> b!168328 (= tp!83575 b_and!10939)))

(declare-fun b!168329 () Bool)

(declare-fun b_free!6413 () Bool)

(declare-fun b_next!6413 () Bool)

(assert (=> b!168329 (= b_free!6413 (not b_next!6413))))

(declare-fun tp!83579 () Bool)

(declare-fun b_and!10941 () Bool)

(assert (=> b!168329 (= tp!83579 b_and!10941)))

(declare-fun b_free!6415 () Bool)

(declare-fun b_next!6415 () Bool)

(assert (=> b!168329 (= b_free!6415 (not b_next!6415))))

(declare-fun tp!83585 () Bool)

(declare-fun b_and!10943 () Bool)

(assert (=> b!168329 (= tp!83585 b_and!10943)))

(declare-fun b!168321 () Bool)

(declare-fun b_free!6417 () Bool)

(declare-fun b_next!6417 () Bool)

(assert (=> b!168321 (= b_free!6417 (not b_next!6417))))

(declare-fun tp!83581 () Bool)

(declare-fun b_and!10945 () Bool)

(assert (=> b!168321 (= tp!83581 b_and!10945)))

(declare-fun b_free!6419 () Bool)

(declare-fun b_next!6419 () Bool)

(assert (=> b!168321 (= b_free!6419 (not b_next!6419))))

(declare-fun tp!83577 () Bool)

(declare-fun b_and!10947 () Bool)

(assert (=> b!168321 (= tp!83577 b_and!10947)))

(declare-fun bs!16356 () Bool)

(declare-fun b!168320 () Bool)

(declare-fun b!168314 () Bool)

(assert (= bs!16356 (and b!168320 b!168314)))

(declare-fun lambda!4728 () Int)

(declare-fun lambda!4727 () Int)

(assert (=> bs!16356 (not (= lambda!4728 lambda!4727))))

(declare-fun b!168344 () Bool)

(declare-fun e!101694 () Bool)

(assert (=> b!168344 (= e!101694 true)))

(declare-fun b!168343 () Bool)

(declare-fun e!101693 () Bool)

(assert (=> b!168343 (= e!101693 e!101694)))

(declare-fun b!168342 () Bool)

(declare-fun e!101692 () Bool)

(assert (=> b!168342 (= e!101692 e!101693)))

(assert (=> b!168320 e!101692))

(assert (= b!168343 b!168344))

(assert (= b!168342 b!168343))

(declare-datatypes ((List!2867 0))(
  ( (Nil!2857) (Cons!2857 (h!8254 (_ BitVec 16)) (t!26913 List!2867)) )
))
(declare-datatypes ((TokenValue!531 0))(
  ( (FloatLiteralValue!1062 (text!4162 List!2867)) (TokenValueExt!530 (__x!2549 Int)) (Broken!2655 (value!18796 List!2867)) (Object!540) (End!531) (Def!531) (Underscore!531) (Match!531) (Else!531) (Error!531) (Case!531) (If!531) (Extends!531) (Abstract!531) (Class!531) (Val!531) (DelimiterValue!1062 (del!591 List!2867)) (KeywordValue!537 (value!18797 List!2867)) (CommentValue!1062 (value!18798 List!2867)) (WhitespaceValue!1062 (value!18799 List!2867)) (IndentationValue!531 (value!18800 List!2867)) (String!3734) (Int32!531) (Broken!2656 (value!18801 List!2867)) (Boolean!532) (Unit!2473) (OperatorValue!534 (op!591 List!2867)) (IdentifierValue!1062 (value!18802 List!2867)) (IdentifierValue!1063 (value!18803 List!2867)) (WhitespaceValue!1063 (value!18804 List!2867)) (True!1062) (False!1062) (Broken!2657 (value!18805 List!2867)) (Broken!2658 (value!18806 List!2867)) (True!1063) (RightBrace!531) (RightBracket!531) (Colon!531) (Null!531) (Comma!531) (LeftBracket!531) (False!1063) (LeftBrace!531) (ImaginaryLiteralValue!531 (text!4163 List!2867)) (StringLiteralValue!1593 (value!18807 List!2867)) (EOFValue!531 (value!18808 List!2867)) (IdentValue!531 (value!18809 List!2867)) (DelimiterValue!1063 (value!18810 List!2867)) (DedentValue!531 (value!18811 List!2867)) (NewLineValue!531 (value!18812 List!2867)) (IntegerValue!1593 (value!18813 (_ BitVec 32)) (text!4164 List!2867)) (IntegerValue!1594 (value!18814 Int) (text!4165 List!2867)) (Times!531) (Or!531) (Equal!531) (Minus!531) (Broken!2659 (value!18815 List!2867)) (And!531) (Div!531) (LessEqual!531) (Mod!531) (Concat!1264) (Not!531) (Plus!531) (SpaceValue!531 (value!18816 List!2867)) (IntegerValue!1595 (value!18817 Int) (text!4166 List!2867)) (StringLiteralValue!1594 (text!4167 List!2867)) (FloatLiteralValue!1063 (text!4168 List!2867)) (BytesLiteralValue!531 (value!18818 List!2867)) (CommentValue!1063 (value!18819 List!2867)) (StringLiteralValue!1595 (value!18820 List!2867)) (ErrorTokenValue!531 (msg!592 List!2867)) )
))
(declare-datatypes ((C!2388 0))(
  ( (C!2389 (val!1080 Int)) )
))
(declare-datatypes ((List!2868 0))(
  ( (Nil!2858) (Cons!2858 (h!8255 C!2388) (t!26914 List!2868)) )
))
(declare-datatypes ((IArray!1681 0))(
  ( (IArray!1682 (innerList!898 List!2868)) )
))
(declare-datatypes ((Conc!840 0))(
  ( (Node!840 (left!2169 Conc!840) (right!2499 Conc!840) (csize!1910 Int) (cheight!1051 Int)) (Leaf!1434 (xs!3435 IArray!1681) (csize!1911 Int)) (Empty!840) )
))
(declare-datatypes ((BalanceConc!1688 0))(
  ( (BalanceConc!1689 (c!33516 Conc!840)) )
))
(declare-datatypes ((TokenValueInjection!834 0))(
  ( (TokenValueInjection!835 (toValue!1172 Int) (toChars!1031 Int)) )
))
(declare-datatypes ((String!3735 0))(
  ( (String!3736 (value!18821 String)) )
))
(declare-datatypes ((Regex!733 0))(
  ( (ElementMatch!733 (c!33517 C!2388)) (Concat!1265 (regOne!1978 Regex!733) (regTwo!1978 Regex!733)) (EmptyExpr!733) (Star!733 (reg!1062 Regex!733)) (EmptyLang!733) (Union!733 (regOne!1979 Regex!733) (regTwo!1979 Regex!733)) )
))
(declare-datatypes ((Rule!818 0))(
  ( (Rule!819 (regex!509 Regex!733) (tag!687 String!3735) (isSeparator!509 Bool) (transformation!509 TokenValueInjection!834)) )
))
(declare-datatypes ((List!2869 0))(
  ( (Nil!2859) (Cons!2859 (h!8256 Rule!818) (t!26915 List!2869)) )
))
(declare-fun rules!1920 () List!2869)

(get-info :version)

(assert (= (and b!168320 ((_ is Cons!2859) rules!1920)) b!168342))

(declare-fun order!1513 () Int)

(declare-fun order!1515 () Int)

(declare-fun dynLambda!1057 (Int Int) Int)

(declare-fun dynLambda!1058 (Int Int) Int)

(assert (=> b!168344 (< (dynLambda!1057 order!1513 (toValue!1172 (transformation!509 (h!8256 rules!1920)))) (dynLambda!1058 order!1515 lambda!4728))))

(declare-fun order!1517 () Int)

(declare-fun dynLambda!1059 (Int Int) Int)

(assert (=> b!168344 (< (dynLambda!1059 order!1517 (toChars!1031 (transformation!509 (h!8256 rules!1920)))) (dynLambda!1058 order!1515 lambda!4728))))

(assert (=> b!168320 true))

(declare-fun res!76019 () Bool)

(declare-fun e!101664 () Bool)

(assert (=> start!18194 (=> (not res!76019) (not e!101664))))

(declare-datatypes ((LexerInterface!395 0))(
  ( (LexerInterfaceExt!392 (__x!2550 Int)) (Lexer!393) )
))
(declare-fun thiss!17480 () LexerInterface!395)

(assert (=> start!18194 (= res!76019 ((_ is Lexer!393) thiss!17480))))

(assert (=> start!18194 e!101664))

(assert (=> start!18194 true))

(declare-fun e!101684 () Bool)

(assert (=> start!18194 e!101684))

(declare-datatypes ((Token!762 0))(
  ( (Token!763 (value!18822 TokenValue!531) (rule!1016 Rule!818) (size!2385 Int) (originalCharacters!552 List!2868)) )
))
(declare-fun separatorToken!170 () Token!762)

(declare-fun e!101685 () Bool)

(declare-fun inv!3686 (Token!762) Bool)

(assert (=> start!18194 (and (inv!3686 separatorToken!170) e!101685)))

(declare-fun e!101670 () Bool)

(assert (=> start!18194 e!101670))

(declare-fun b!168306 () Bool)

(declare-fun tp!83580 () Bool)

(declare-fun e!101678 () Bool)

(declare-fun e!101672 () Bool)

(declare-fun inv!3683 (String!3735) Bool)

(declare-fun inv!3687 (TokenValueInjection!834) Bool)

(assert (=> b!168306 (= e!101678 (and tp!83580 (inv!3683 (tag!687 (h!8256 rules!1920))) (inv!3687 (transformation!509 (h!8256 rules!1920))) e!101672))))

(declare-fun tp!83584 () Bool)

(declare-fun b!168307 () Bool)

(declare-fun e!101677 () Bool)

(declare-fun e!101669 () Bool)

(declare-datatypes ((List!2870 0))(
  ( (Nil!2860) (Cons!2860 (h!8257 Token!762) (t!26916 List!2870)) )
))
(declare-fun tokens!465 () List!2870)

(assert (=> b!168307 (= e!101677 (and tp!83584 (inv!3683 (tag!687 (rule!1016 (h!8257 tokens!465)))) (inv!3687 (transformation!509 (rule!1016 (h!8257 tokens!465)))) e!101669))))

(declare-fun b!168308 () Bool)

(declare-fun res!76023 () Bool)

(declare-fun e!101681 () Bool)

(assert (=> b!168308 (=> res!76023 e!101681)))

(declare-fun rulesProduceIndividualToken!144 (LexerInterface!395 List!2869 Token!762) Bool)

(assert (=> b!168308 (= res!76023 (not (rulesProduceIndividualToken!144 thiss!17480 rules!1920 (h!8257 tokens!465))))))

(declare-fun b!168309 () Bool)

(declare-fun res!76025 () Bool)

(assert (=> b!168309 (=> res!76025 e!101681)))

(declare-fun lt!52727 () List!2868)

(declare-datatypes ((IArray!1683 0))(
  ( (IArray!1684 (innerList!899 List!2870)) )
))
(declare-datatypes ((Conc!841 0))(
  ( (Node!841 (left!2170 Conc!841) (right!2500 Conc!841) (csize!1912 Int) (cheight!1052 Int)) (Leaf!1435 (xs!3436 IArray!1683) (csize!1913 Int)) (Empty!841) )
))
(declare-datatypes ((BalanceConc!1690 0))(
  ( (BalanceConc!1691 (c!33518 Conc!841)) )
))
(declare-fun isEmpty!1193 (BalanceConc!1690) Bool)

(declare-datatypes ((tuple2!2736 0))(
  ( (tuple2!2737 (_1!1584 BalanceConc!1690) (_2!1584 BalanceConc!1688)) )
))
(declare-fun lex!195 (LexerInterface!395 List!2869 BalanceConc!1688) tuple2!2736)

(declare-fun seqFromList!395 (List!2868) BalanceConc!1688)

(assert (=> b!168309 (= res!76025 (isEmpty!1193 (_1!1584 (lex!195 thiss!17480 rules!1920 (seqFromList!395 lt!52727)))))))

(declare-fun b!168310 () Bool)

(declare-fun e!101674 () Bool)

(declare-fun e!101676 () Bool)

(assert (=> b!168310 (= e!101674 (not e!101676))))

(declare-fun res!76026 () Bool)

(assert (=> b!168310 (=> res!76026 e!101676)))

(declare-fun lt!52721 () List!2868)

(declare-fun list!1039 (BalanceConc!1688) List!2868)

(declare-fun printWithSeparatorTokenWhenNeededRec!78 (LexerInterface!395 List!2869 BalanceConc!1690 Token!762 Int) BalanceConc!1688)

(declare-fun seqFromList!396 (List!2870) BalanceConc!1690)

(assert (=> b!168310 (= res!76026 (not (= lt!52721 (list!1039 (printWithSeparatorTokenWhenNeededRec!78 thiss!17480 rules!1920 (seqFromList!396 (t!26916 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!52716 () List!2868)

(declare-fun lt!52720 () List!2868)

(assert (=> b!168310 (= lt!52716 lt!52720)))

(declare-fun lt!52715 () List!2868)

(declare-fun ++!652 (List!2868 List!2868) List!2868)

(assert (=> b!168310 (= lt!52720 (++!652 lt!52727 lt!52715))))

(declare-fun lt!52718 () List!2868)

(assert (=> b!168310 (= lt!52716 (++!652 (++!652 lt!52727 lt!52718) lt!52721))))

(declare-datatypes ((Unit!2474 0))(
  ( (Unit!2475) )
))
(declare-fun lt!52728 () Unit!2474)

(declare-fun lemmaConcatAssociativity!194 (List!2868 List!2868 List!2868) Unit!2474)

(assert (=> b!168310 (= lt!52728 (lemmaConcatAssociativity!194 lt!52727 lt!52718 lt!52721))))

(declare-fun charsOf!164 (Token!762) BalanceConc!1688)

(assert (=> b!168310 (= lt!52727 (list!1039 (charsOf!164 (h!8257 tokens!465))))))

(assert (=> b!168310 (= lt!52715 (++!652 lt!52718 lt!52721))))

(declare-fun printWithSeparatorTokenWhenNeededList!88 (LexerInterface!395 List!2869 List!2870 Token!762) List!2868)

(assert (=> b!168310 (= lt!52721 (printWithSeparatorTokenWhenNeededList!88 thiss!17480 rules!1920 (t!26916 tokens!465) separatorToken!170))))

(assert (=> b!168310 (= lt!52718 (list!1039 (charsOf!164 separatorToken!170)))))

(declare-fun b!168311 () Bool)

(declare-fun res!76030 () Bool)

(assert (=> b!168311 (=> (not res!76030) (not e!101664))))

(declare-fun rulesInvariant!361 (LexerInterface!395 List!2869) Bool)

(assert (=> b!168311 (= res!76030 (rulesInvariant!361 thiss!17480 rules!1920))))

(declare-fun b!168312 () Bool)

(declare-fun e!101679 () Bool)

(assert (=> b!168312 (= e!101679 e!101674)))

(declare-fun res!76024 () Bool)

(assert (=> b!168312 (=> (not res!76024) (not e!101674))))

(declare-fun lt!52722 () List!2868)

(declare-fun lt!52717 () List!2868)

(assert (=> b!168312 (= res!76024 (= lt!52722 lt!52717))))

(declare-fun lt!52713 () BalanceConc!1690)

(assert (=> b!168312 (= lt!52717 (list!1039 (printWithSeparatorTokenWhenNeededRec!78 thiss!17480 rules!1920 lt!52713 separatorToken!170 0)))))

(assert (=> b!168312 (= lt!52722 (printWithSeparatorTokenWhenNeededList!88 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!168313 () Bool)

(declare-fun res!76035 () Bool)

(assert (=> b!168313 (=> res!76035 e!101676)))

(declare-fun e!101683 () Bool)

(assert (=> b!168313 (= res!76035 e!101683)))

(declare-fun res!76034 () Bool)

(assert (=> b!168313 (=> (not res!76034) (not e!101683))))

(assert (=> b!168313 (= res!76034 (not (= lt!52722 lt!52720)))))

(declare-fun res!76021 () Bool)

(assert (=> b!168314 (=> (not res!76021) (not e!101679))))

(declare-fun forall!551 (List!2870 Int) Bool)

(assert (=> b!168314 (= res!76021 (forall!551 tokens!465 lambda!4727))))

(declare-fun b!168315 () Bool)

(declare-fun e!101667 () Bool)

(assert (=> b!168315 (= e!101667 true)))

(declare-fun lt!52719 () Bool)

(declare-fun rulesValidInductive!114 (LexerInterface!395 List!2869) Bool)

(assert (=> b!168315 (= lt!52719 (rulesValidInductive!114 thiss!17480 rules!1920))))

(declare-fun tp!83582 () Bool)

(declare-fun b!168316 () Bool)

(declare-fun e!101680 () Bool)

(declare-fun inv!21 (TokenValue!531) Bool)

(assert (=> b!168316 (= e!101680 (and (inv!21 (value!18822 (h!8257 tokens!465))) e!101677 tp!83582))))

(declare-fun b!168317 () Bool)

(declare-fun res!76031 () Bool)

(assert (=> b!168317 (=> (not res!76031) (not e!101664))))

(declare-fun isEmpty!1194 (List!2869) Bool)

(assert (=> b!168317 (= res!76031 (not (isEmpty!1194 rules!1920)))))

(declare-fun b!168318 () Bool)

(declare-fun tp!83587 () Bool)

(assert (=> b!168318 (= e!101670 (and (inv!3686 (h!8257 tokens!465)) e!101680 tp!83587))))

(declare-fun b!168319 () Bool)

(assert (=> b!168319 (= e!101683 (not (= lt!52722 (++!652 lt!52727 lt!52721))))))

(assert (=> b!168320 (= e!101681 e!101667)))

(declare-fun res!76020 () Bool)

(assert (=> b!168320 (=> res!76020 e!101667)))

(declare-datatypes ((tuple2!2738 0))(
  ( (tuple2!2739 (_1!1585 Token!762) (_2!1585 BalanceConc!1688)) )
))
(declare-datatypes ((Option!293 0))(
  ( (None!292) (Some!292 (v!13723 tuple2!2738)) )
))
(declare-fun isDefined!144 (Option!293) Bool)

(declare-fun maxPrefixZipperSequence!88 (LexerInterface!395 List!2869 BalanceConc!1688) Option!293)

(assert (=> b!168320 (= res!76020 (not (isDefined!144 (maxPrefixZipperSequence!88 thiss!17480 rules!1920 (seqFromList!395 (originalCharacters!552 (h!8257 tokens!465)))))))))

(declare-fun lt!52724 () Unit!2474)

(declare-fun forallContained!76 (List!2870 Int Token!762) Unit!2474)

(assert (=> b!168320 (= lt!52724 (forallContained!76 tokens!465 lambda!4728 (h!8257 tokens!465)))))

(assert (=> b!168320 (= lt!52727 (originalCharacters!552 (h!8257 tokens!465)))))

(assert (=> b!168321 (= e!101672 (and tp!83581 tp!83577))))

(declare-fun b!168322 () Bool)

(declare-fun res!76027 () Bool)

(assert (=> b!168322 (=> (not res!76027) (not e!101679))))

(assert (=> b!168322 (= res!76027 ((_ is Cons!2860) tokens!465))))

(declare-fun b!168323 () Bool)

(declare-fun res!76028 () Bool)

(assert (=> b!168323 (=> (not res!76028) (not e!101679))))

(assert (=> b!168323 (= res!76028 (isSeparator!509 (rule!1016 separatorToken!170)))))

(declare-fun b!168324 () Bool)

(declare-fun res!76029 () Bool)

(assert (=> b!168324 (=> (not res!76029) (not e!101679))))

(declare-fun sepAndNonSepRulesDisjointChars!98 (List!2869 List!2869) Bool)

(assert (=> b!168324 (= res!76029 (sepAndNonSepRulesDisjointChars!98 rules!1920 rules!1920))))

(declare-fun b!168325 () Bool)

(declare-fun tp!83578 () Bool)

(assert (=> b!168325 (= e!101684 (and e!101678 tp!83578))))

(declare-fun e!101673 () Bool)

(declare-fun tp!83583 () Bool)

(declare-fun b!168326 () Bool)

(assert (=> b!168326 (= e!101685 (and (inv!21 (value!18822 separatorToken!170)) e!101673 tp!83583))))

(declare-fun b!168327 () Bool)

(declare-fun res!76022 () Bool)

(assert (=> b!168327 (=> (not res!76022) (not e!101679))))

(assert (=> b!168327 (= res!76022 (rulesProduceIndividualToken!144 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!168328 (= e!101669 (and tp!83586 tp!83575))))

(declare-fun e!101668 () Bool)

(assert (=> b!168329 (= e!101668 (and tp!83579 tp!83585))))

(declare-fun b!168330 () Bool)

(assert (=> b!168330 (= e!101664 e!101679)))

(declare-fun res!76033 () Bool)

(assert (=> b!168330 (=> (not res!76033) (not e!101679))))

(declare-fun rulesProduceEachTokenIndividually!187 (LexerInterface!395 List!2869 BalanceConc!1690) Bool)

(assert (=> b!168330 (= res!76033 (rulesProduceEachTokenIndividually!187 thiss!17480 rules!1920 lt!52713))))

(assert (=> b!168330 (= lt!52713 (seqFromList!396 tokens!465))))

(declare-fun tp!83576 () Bool)

(declare-fun b!168331 () Bool)

(assert (=> b!168331 (= e!101673 (and tp!83576 (inv!3683 (tag!687 (rule!1016 separatorToken!170))) (inv!3687 (transformation!509 (rule!1016 separatorToken!170))) e!101668))))

(declare-fun b!168332 () Bool)

(declare-fun res!76036 () Bool)

(assert (=> b!168332 (=> (not res!76036) (not e!101674))))

(assert (=> b!168332 (= res!76036 (= (list!1039 (seqFromList!395 lt!52722)) lt!52717))))

(declare-fun b!168333 () Bool)

(assert (=> b!168333 (= e!101676 e!101681)))

(declare-fun res!76032 () Bool)

(assert (=> b!168333 (=> res!76032 e!101681)))

(declare-fun lt!52725 () List!2868)

(declare-fun lt!52714 () List!2868)

(assert (=> b!168333 (= res!76032 (or (not (= lt!52725 lt!52714)) (not (= lt!52714 lt!52727)) (not (= lt!52725 lt!52727))))))

(declare-fun printList!79 (LexerInterface!395 List!2870) List!2868)

(assert (=> b!168333 (= lt!52714 (printList!79 thiss!17480 (Cons!2860 (h!8257 tokens!465) Nil!2860)))))

(declare-fun lt!52723 () BalanceConc!1688)

(assert (=> b!168333 (= lt!52725 (list!1039 lt!52723))))

(declare-fun lt!52726 () BalanceConc!1690)

(declare-fun printTailRec!89 (LexerInterface!395 BalanceConc!1690 Int BalanceConc!1688) BalanceConc!1688)

(assert (=> b!168333 (= lt!52723 (printTailRec!89 thiss!17480 lt!52726 0 (BalanceConc!1689 Empty!840)))))

(declare-fun print!126 (LexerInterface!395 BalanceConc!1690) BalanceConc!1688)

(assert (=> b!168333 (= lt!52723 (print!126 thiss!17480 lt!52726))))

(declare-fun singletonSeq!61 (Token!762) BalanceConc!1690)

(assert (=> b!168333 (= lt!52726 (singletonSeq!61 (h!8257 tokens!465)))))

(assert (= (and start!18194 res!76019) b!168317))

(assert (= (and b!168317 res!76031) b!168311))

(assert (= (and b!168311 res!76030) b!168330))

(assert (= (and b!168330 res!76033) b!168327))

(assert (= (and b!168327 res!76022) b!168323))

(assert (= (and b!168323 res!76028) b!168314))

(assert (= (and b!168314 res!76021) b!168324))

(assert (= (and b!168324 res!76029) b!168322))

(assert (= (and b!168322 res!76027) b!168312))

(assert (= (and b!168312 res!76024) b!168332))

(assert (= (and b!168332 res!76036) b!168310))

(assert (= (and b!168310 (not res!76026)) b!168313))

(assert (= (and b!168313 res!76034) b!168319))

(assert (= (and b!168313 (not res!76035)) b!168333))

(assert (= (and b!168333 (not res!76032)) b!168308))

(assert (= (and b!168308 (not res!76023)) b!168309))

(assert (= (and b!168309 (not res!76025)) b!168320))

(assert (= (and b!168320 (not res!76020)) b!168315))

(assert (= b!168306 b!168321))

(assert (= b!168325 b!168306))

(assert (= (and start!18194 ((_ is Cons!2859) rules!1920)) b!168325))

(assert (= b!168331 b!168329))

(assert (= b!168326 b!168331))

(assert (= start!18194 b!168326))

(assert (= b!168307 b!168328))

(assert (= b!168316 b!168307))

(assert (= b!168318 b!168316))

(assert (= (and start!18194 ((_ is Cons!2860) tokens!465)) b!168318))

(declare-fun m!163587 () Bool)

(assert (=> b!168311 m!163587))

(declare-fun m!163589 () Bool)

(assert (=> b!168327 m!163589))

(declare-fun m!163591 () Bool)

(assert (=> b!168312 m!163591))

(assert (=> b!168312 m!163591))

(declare-fun m!163593 () Bool)

(assert (=> b!168312 m!163593))

(declare-fun m!163595 () Bool)

(assert (=> b!168312 m!163595))

(declare-fun m!163597 () Bool)

(assert (=> b!168333 m!163597))

(declare-fun m!163599 () Bool)

(assert (=> b!168333 m!163599))

(declare-fun m!163601 () Bool)

(assert (=> b!168333 m!163601))

(declare-fun m!163603 () Bool)

(assert (=> b!168333 m!163603))

(declare-fun m!163605 () Bool)

(assert (=> b!168333 m!163605))

(declare-fun m!163607 () Bool)

(assert (=> b!168315 m!163607))

(declare-fun m!163609 () Bool)

(assert (=> b!168307 m!163609))

(declare-fun m!163611 () Bool)

(assert (=> b!168307 m!163611))

(declare-fun m!163613 () Bool)

(assert (=> b!168332 m!163613))

(assert (=> b!168332 m!163613))

(declare-fun m!163615 () Bool)

(assert (=> b!168332 m!163615))

(declare-fun m!163617 () Bool)

(assert (=> b!168320 m!163617))

(assert (=> b!168320 m!163617))

(declare-fun m!163619 () Bool)

(assert (=> b!168320 m!163619))

(assert (=> b!168320 m!163619))

(declare-fun m!163621 () Bool)

(assert (=> b!168320 m!163621))

(declare-fun m!163623 () Bool)

(assert (=> b!168320 m!163623))

(declare-fun m!163625 () Bool)

(assert (=> b!168319 m!163625))

(declare-fun m!163627 () Bool)

(assert (=> b!168308 m!163627))

(declare-fun m!163629 () Bool)

(assert (=> b!168317 m!163629))

(declare-fun m!163631 () Bool)

(assert (=> b!168324 m!163631))

(declare-fun m!163633 () Bool)

(assert (=> b!168314 m!163633))

(declare-fun m!163635 () Bool)

(assert (=> b!168309 m!163635))

(assert (=> b!168309 m!163635))

(declare-fun m!163637 () Bool)

(assert (=> b!168309 m!163637))

(declare-fun m!163639 () Bool)

(assert (=> b!168309 m!163639))

(declare-fun m!163641 () Bool)

(assert (=> start!18194 m!163641))

(declare-fun m!163643 () Bool)

(assert (=> b!168326 m!163643))

(declare-fun m!163645 () Bool)

(assert (=> b!168310 m!163645))

(declare-fun m!163647 () Bool)

(assert (=> b!168310 m!163647))

(declare-fun m!163649 () Bool)

(assert (=> b!168310 m!163649))

(declare-fun m!163651 () Bool)

(assert (=> b!168310 m!163651))

(declare-fun m!163653 () Bool)

(assert (=> b!168310 m!163653))

(declare-fun m!163655 () Bool)

(assert (=> b!168310 m!163655))

(declare-fun m!163657 () Bool)

(assert (=> b!168310 m!163657))

(declare-fun m!163659 () Bool)

(assert (=> b!168310 m!163659))

(declare-fun m!163661 () Bool)

(assert (=> b!168310 m!163661))

(assert (=> b!168310 m!163645))

(declare-fun m!163663 () Bool)

(assert (=> b!168310 m!163663))

(declare-fun m!163665 () Bool)

(assert (=> b!168310 m!163665))

(assert (=> b!168310 m!163651))

(assert (=> b!168310 m!163659))

(assert (=> b!168310 m!163665))

(declare-fun m!163667 () Bool)

(assert (=> b!168310 m!163667))

(assert (=> b!168310 m!163663))

(declare-fun m!163669 () Bool)

(assert (=> b!168310 m!163669))

(declare-fun m!163671 () Bool)

(assert (=> b!168330 m!163671))

(declare-fun m!163673 () Bool)

(assert (=> b!168330 m!163673))

(declare-fun m!163675 () Bool)

(assert (=> b!168316 m!163675))

(declare-fun m!163677 () Bool)

(assert (=> b!168306 m!163677))

(declare-fun m!163679 () Bool)

(assert (=> b!168306 m!163679))

(declare-fun m!163681 () Bool)

(assert (=> b!168331 m!163681))

(declare-fun m!163683 () Bool)

(assert (=> b!168331 m!163683))

(declare-fun m!163685 () Bool)

(assert (=> b!168318 m!163685))

(check-sat (not b!168308) (not b!168306) (not b!168318) (not b!168309) (not start!18194) (not b!168311) (not b!168332) (not b!168324) (not b!168319) (not b!168320) (not b!168330) (not b_next!6419) (not b!168327) b_and!10945 b_and!10943 (not b!168315) (not b_next!6411) (not b!168326) (not b!168331) b_and!10937 (not b!168310) b_and!10947 (not b!168317) (not b!168312) (not b!168314) (not b_next!6409) (not b!168316) b_and!10939 b_and!10941 (not b!168342) (not b!168307) (not b_next!6417) (not b_next!6415) (not b_next!6413) (not b!168325) (not b!168333))
(check-sat (not b_next!6419) b_and!10945 (not b_next!6409) b_and!10939 b_and!10941 (not b_next!6411) b_and!10943 b_and!10937 b_and!10947 (not b_next!6417) (not b_next!6415) (not b_next!6413))
