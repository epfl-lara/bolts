; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271268 () Bool)

(assert start!271268)

(declare-fun b!2804718 () Bool)

(declare-fun b_free!79681 () Bool)

(declare-fun b_next!80385 () Bool)

(assert (=> b!2804718 (= b_free!79681 (not b_next!80385))))

(declare-fun tp!894562 () Bool)

(declare-fun b_and!204443 () Bool)

(assert (=> b!2804718 (= tp!894562 b_and!204443)))

(declare-fun b_free!79683 () Bool)

(declare-fun b_next!80387 () Bool)

(assert (=> b!2804718 (= b_free!79683 (not b_next!80387))))

(declare-fun tp!894566 () Bool)

(declare-fun b_and!204445 () Bool)

(assert (=> b!2804718 (= tp!894566 b_and!204445)))

(declare-fun b!2804716 () Bool)

(declare-fun b_free!79685 () Bool)

(declare-fun b_next!80389 () Bool)

(assert (=> b!2804716 (= b_free!79685 (not b_next!80389))))

(declare-fun tp!894565 () Bool)

(declare-fun b_and!204447 () Bool)

(assert (=> b!2804716 (= tp!894565 b_and!204447)))

(declare-fun b_free!79687 () Bool)

(declare-fun b_next!80391 () Bool)

(assert (=> b!2804716 (= b_free!79687 (not b_next!80391))))

(declare-fun tp!894557 () Bool)

(declare-fun b_and!204449 () Bool)

(assert (=> b!2804716 (= tp!894557 b_and!204449)))

(declare-fun b!2804727 () Bool)

(declare-fun b_free!79689 () Bool)

(declare-fun b_next!80393 () Bool)

(assert (=> b!2804727 (= b_free!79689 (not b_next!80393))))

(declare-fun tp!894561 () Bool)

(declare-fun b_and!204451 () Bool)

(assert (=> b!2804727 (= tp!894561 b_and!204451)))

(declare-fun b_free!79691 () Bool)

(declare-fun b_next!80395 () Bool)

(assert (=> b!2804727 (= b_free!79691 (not b_next!80395))))

(declare-fun tp!894560 () Bool)

(declare-fun b_and!204453 () Bool)

(assert (=> b!2804727 (= tp!894560 b_and!204453)))

(declare-fun b!2804740 () Bool)

(declare-fun e!1772884 () Bool)

(assert (=> b!2804740 (= e!1772884 true)))

(declare-fun b!2804739 () Bool)

(declare-fun e!1772883 () Bool)

(assert (=> b!2804739 (= e!1772883 e!1772884)))

(declare-fun b!2804738 () Bool)

(declare-fun e!1772882 () Bool)

(assert (=> b!2804738 (= e!1772882 e!1772883)))

(declare-fun b!2804721 () Bool)

(assert (=> b!2804721 e!1772882))

(assert (= b!2804739 b!2804740))

(assert (= b!2804738 b!2804739))

(declare-datatypes ((List!32758 0))(
  ( (Nil!32658) (Cons!32658 (h!38078 (_ BitVec 16)) (t!228994 List!32758)) )
))
(declare-datatypes ((TokenValue!5099 0))(
  ( (FloatLiteralValue!10198 (text!36138 List!32758)) (TokenValueExt!5098 (__x!21855 Int)) (Broken!25495 (value!156878 List!32758)) (Object!5198) (End!5099) (Def!5099) (Underscore!5099) (Match!5099) (Else!5099) (Error!5099) (Case!5099) (If!5099) (Extends!5099) (Abstract!5099) (Class!5099) (Val!5099) (DelimiterValue!10198 (del!5159 List!32758)) (KeywordValue!5105 (value!156879 List!32758)) (CommentValue!10198 (value!156880 List!32758)) (WhitespaceValue!10198 (value!156881 List!32758)) (IndentationValue!5099 (value!156882 List!32758)) (String!35830) (Int32!5099) (Broken!25496 (value!156883 List!32758)) (Boolean!5100) (Unit!46751) (OperatorValue!5102 (op!5159 List!32758)) (IdentifierValue!10198 (value!156884 List!32758)) (IdentifierValue!10199 (value!156885 List!32758)) (WhitespaceValue!10199 (value!156886 List!32758)) (True!10198) (False!10198) (Broken!25497 (value!156887 List!32758)) (Broken!25498 (value!156888 List!32758)) (True!10199) (RightBrace!5099) (RightBracket!5099) (Colon!5099) (Null!5099) (Comma!5099) (LeftBracket!5099) (False!10199) (LeftBrace!5099) (ImaginaryLiteralValue!5099 (text!36139 List!32758)) (StringLiteralValue!15297 (value!156889 List!32758)) (EOFValue!5099 (value!156890 List!32758)) (IdentValue!5099 (value!156891 List!32758)) (DelimiterValue!10199 (value!156892 List!32758)) (DedentValue!5099 (value!156893 List!32758)) (NewLineValue!5099 (value!156894 List!32758)) (IntegerValue!15297 (value!156895 (_ BitVec 32)) (text!36140 List!32758)) (IntegerValue!15298 (value!156896 Int) (text!36141 List!32758)) (Times!5099) (Or!5099) (Equal!5099) (Minus!5099) (Broken!25499 (value!156897 List!32758)) (And!5099) (Div!5099) (LessEqual!5099) (Mod!5099) (Concat!13346) (Not!5099) (Plus!5099) (SpaceValue!5099 (value!156898 List!32758)) (IntegerValue!15299 (value!156899 Int) (text!36142 List!32758)) (StringLiteralValue!15298 (text!36143 List!32758)) (FloatLiteralValue!10199 (text!36144 List!32758)) (BytesLiteralValue!5099 (value!156900 List!32758)) (CommentValue!10199 (value!156901 List!32758)) (StringLiteralValue!15299 (value!156902 List!32758)) (ErrorTokenValue!5099 (msg!5160 List!32758)) )
))
(declare-datatypes ((C!16652 0))(
  ( (C!16653 (val!10260 Int)) )
))
(declare-datatypes ((List!32759 0))(
  ( (Nil!32659) (Cons!32659 (h!38079 C!16652) (t!228995 List!32759)) )
))
(declare-datatypes ((IArray!20217 0))(
  ( (IArray!20218 (innerList!10166 List!32759)) )
))
(declare-datatypes ((Conc!10106 0))(
  ( (Node!10106 (left!24651 Conc!10106) (right!24981 Conc!10106) (csize!20442 Int) (cheight!10317 Int)) (Leaf!15398 (xs!13218 IArray!20217) (csize!20443 Int)) (Empty!10106) )
))
(declare-datatypes ((BalanceConc!19826 0))(
  ( (BalanceConc!19827 (c!454570 Conc!10106)) )
))
(declare-datatypes ((TokenValueInjection!9638 0))(
  ( (TokenValueInjection!9639 (toValue!6875 Int) (toChars!6734 Int)) )
))
(declare-datatypes ((Regex!8247 0))(
  ( (ElementMatch!8247 (c!454571 C!16652)) (Concat!13347 (regOne!17006 Regex!8247) (regTwo!17006 Regex!8247)) (EmptyExpr!8247) (Star!8247 (reg!8576 Regex!8247)) (EmptyLang!8247) (Union!8247 (regOne!17007 Regex!8247) (regTwo!17007 Regex!8247)) )
))
(declare-datatypes ((String!35831 0))(
  ( (String!35832 (value!156903 String)) )
))
(declare-datatypes ((Rule!9554 0))(
  ( (Rule!9555 (regex!4877 Regex!8247) (tag!5381 String!35831) (isSeparator!4877 Bool) (transformation!4877 TokenValueInjection!9638)) )
))
(declare-datatypes ((List!32760 0))(
  ( (Nil!32660) (Cons!32660 (h!38080 Rule!9554) (t!228996 List!32760)) )
))
(declare-fun rules!2540 () List!32760)

(get-info :version)

(assert (= (and b!2804721 ((_ is Cons!32660) rules!2540)) b!2804738))

(declare-fun lambda!103045 () Int)

(declare-fun order!17309 () Int)

(declare-fun order!17307 () Int)

(declare-fun dynLambda!13658 (Int Int) Int)

(declare-fun dynLambda!13659 (Int Int) Int)

(assert (=> b!2804740 (< (dynLambda!13658 order!17307 (toValue!6875 (transformation!4877 (h!38080 rules!2540)))) (dynLambda!13659 order!17309 lambda!103045))))

(declare-fun order!17311 () Int)

(declare-fun dynLambda!13660 (Int Int) Int)

(assert (=> b!2804740 (< (dynLambda!13660 order!17311 (toChars!6734 (transformation!4877 (h!38080 rules!2540)))) (dynLambda!13659 order!17309 lambda!103045))))

(assert (=> b!2804721 true))

(declare-fun b!2804712 () Bool)

(declare-fun res!1168512 () Bool)

(declare-fun e!1772869 () Bool)

(assert (=> b!2804712 (=> (not res!1168512) (not e!1772869))))

(declare-datatypes ((Token!9156 0))(
  ( (Token!9157 (value!156904 TokenValue!5099) (rule!7305 Rule!9554) (size!25493 Int) (originalCharacters!5609 List!32759)) )
))
(declare-datatypes ((List!32761 0))(
  ( (Nil!32661) (Cons!32661 (h!38081 Token!9156) (t!228997 List!32761)) )
))
(declare-fun l!5055 () List!32761)

(declare-fun contains!6033 (List!32761 Token!9156) Bool)

(assert (=> b!2804712 (= res!1168512 (contains!6033 l!5055 (h!38081 l!5055)))))

(declare-fun b!2804713 () Bool)

(declare-fun res!1168508 () Bool)

(assert (=> b!2804713 (=> (not res!1168508) (not e!1772869))))

(declare-fun isEmpty!18159 (List!32760) Bool)

(assert (=> b!2804713 (= res!1168508 (not (isEmpty!18159 rules!2540)))))

(declare-fun b!2804714 () Bool)

(declare-fun e!1772870 () Bool)

(declare-fun e!1772874 () Bool)

(declare-fun tp!894556 () Bool)

(declare-fun inv!44332 (String!35831) Bool)

(declare-fun inv!44335 (TokenValueInjection!9638) Bool)

(assert (=> b!2804714 (= e!1772874 (and tp!894556 (inv!44332 (tag!5381 (h!38080 rules!2540))) (inv!44335 (transformation!4877 (h!38080 rules!2540))) e!1772870))))

(declare-fun e!1772871 () Bool)

(declare-fun separatorToken!283 () Token!9156)

(declare-fun b!2804715 () Bool)

(declare-fun tp!894558 () Bool)

(declare-fun e!1772862 () Bool)

(declare-fun inv!21 (TokenValue!5099) Bool)

(assert (=> b!2804715 (= e!1772871 (and (inv!21 (value!156904 separatorToken!283)) e!1772862 tp!894558))))

(declare-fun e!1772872 () Bool)

(assert (=> b!2804716 (= e!1772872 (and tp!894565 tp!894557))))

(declare-fun b!2804717 () Bool)

(declare-fun res!1168506 () Bool)

(assert (=> b!2804717 (=> (not res!1168506) (not e!1772869))))

(declare-datatypes ((LexerInterface!4468 0))(
  ( (LexerInterfaceExt!4465 (__x!21856 Int)) (Lexer!4466) )
))
(declare-fun thiss!19710 () LexerInterface!4468)

(declare-fun rulesProduceIndividualToken!2032 (LexerInterface!4468 List!32760 Token!9156) Bool)

(assert (=> b!2804717 (= res!1168506 (rulesProduceIndividualToken!2032 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun e!1772873 () Bool)

(assert (=> b!2804718 (= e!1772873 (and tp!894562 tp!894566))))

(declare-fun b!2804719 () Bool)

(declare-fun e!1772868 () Bool)

(assert (=> b!2804719 (= e!1772868 (not true))))

(declare-fun lt!1002914 () List!32761)

(declare-fun withSeparatorTokenList!128 (LexerInterface!4468 List!32761 Token!9156) List!32761)

(assert (=> b!2804719 (= lt!1002914 (withSeparatorTokenList!128 thiss!19710 l!5055 separatorToken!283))))

(declare-fun rulesProduceEachTokenIndividuallyList!1542 (LexerInterface!4468 List!32760 List!32761) Bool)

(assert (=> b!2804719 (rulesProduceEachTokenIndividuallyList!1542 thiss!19710 rules!2540 (withSeparatorTokenList!128 thiss!19710 (t!228997 l!5055) separatorToken!283))))

(declare-datatypes ((Unit!46752 0))(
  ( (Unit!46753) )
))
(declare-fun lt!1002913 () Unit!46752)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!100 (LexerInterface!4468 List!32760 List!32761 Token!9156) Unit!46752)

(assert (=> b!2804719 (= lt!1002913 (withSeparatorTokenListPreservesRulesProduceTokens!100 thiss!19710 rules!2540 (t!228997 l!5055) separatorToken!283))))

(declare-fun b!2804720 () Bool)

(declare-fun res!1168509 () Bool)

(assert (=> b!2804720 (=> (not res!1168509) (not e!1772869))))

(declare-fun rulesInvariant!3908 (LexerInterface!4468 List!32760) Bool)

(assert (=> b!2804720 (= res!1168509 (rulesInvariant!3908 thiss!19710 rules!2540))))

(assert (=> b!2804721 (= e!1772869 e!1772868)))

(declare-fun res!1168507 () Bool)

(assert (=> b!2804721 (=> (not res!1168507) (not e!1772868))))

(assert (=> b!2804721 (= res!1168507 (rulesProduceEachTokenIndividuallyList!1542 thiss!19710 rules!2540 (t!228997 l!5055)))))

(declare-fun lt!1002915 () Bool)

(assert (=> b!2804721 (= lt!1002915 (rulesProduceIndividualToken!2032 thiss!19710 rules!2540 (h!38081 l!5055)))))

(declare-fun lt!1002916 () Unit!46752)

(declare-fun forallContained!1059 (List!32761 Int Token!9156) Unit!46752)

(assert (=> b!2804721 (= lt!1002916 (forallContained!1059 l!5055 lambda!103045 (h!38081 l!5055)))))

(declare-fun b!2804722 () Bool)

(declare-fun e!1772861 () Bool)

(declare-fun tp!894563 () Bool)

(assert (=> b!2804722 (= e!1772861 (and e!1772874 tp!894563))))

(declare-fun res!1168510 () Bool)

(assert (=> start!271268 (=> (not res!1168510) (not e!1772869))))

(assert (=> start!271268 (= res!1168510 ((_ is Lexer!4466) thiss!19710))))

(assert (=> start!271268 e!1772869))

(assert (=> start!271268 true))

(assert (=> start!271268 e!1772861))

(declare-fun e!1772866 () Bool)

(assert (=> start!271268 e!1772866))

(declare-fun inv!44336 (Token!9156) Bool)

(assert (=> start!271268 (and (inv!44336 separatorToken!283) e!1772871)))

(declare-fun tp!894555 () Bool)

(declare-fun e!1772860 () Bool)

(declare-fun b!2804723 () Bool)

(declare-fun e!1772859 () Bool)

(assert (=> b!2804723 (= e!1772860 (and (inv!21 (value!156904 (h!38081 l!5055))) e!1772859 tp!894555))))

(declare-fun b!2804724 () Bool)

(declare-fun res!1168511 () Bool)

(assert (=> b!2804724 (=> (not res!1168511) (not e!1772869))))

(assert (=> b!2804724 (= res!1168511 (rulesProduceEachTokenIndividuallyList!1542 thiss!19710 rules!2540 l!5055))))

(declare-fun tp!894554 () Bool)

(declare-fun b!2804725 () Bool)

(assert (=> b!2804725 (= e!1772866 (and (inv!44336 (h!38081 l!5055)) e!1772860 tp!894554))))

(declare-fun b!2804726 () Bool)

(declare-fun res!1168505 () Bool)

(assert (=> b!2804726 (=> (not res!1168505) (not e!1772869))))

(assert (=> b!2804726 (= res!1168505 (and (isSeparator!4877 (rule!7305 separatorToken!283)) ((_ is Cons!32661) l!5055)))))

(assert (=> b!2804727 (= e!1772870 (and tp!894561 tp!894560))))

(declare-fun b!2804728 () Bool)

(declare-fun tp!894564 () Bool)

(assert (=> b!2804728 (= e!1772859 (and tp!894564 (inv!44332 (tag!5381 (rule!7305 (h!38081 l!5055)))) (inv!44335 (transformation!4877 (rule!7305 (h!38081 l!5055)))) e!1772873))))

(declare-fun b!2804729 () Bool)

(declare-fun tp!894559 () Bool)

(assert (=> b!2804729 (= e!1772862 (and tp!894559 (inv!44332 (tag!5381 (rule!7305 separatorToken!283))) (inv!44335 (transformation!4877 (rule!7305 separatorToken!283))) e!1772872))))

(assert (= (and start!271268 res!1168510) b!2804713))

(assert (= (and b!2804713 res!1168508) b!2804720))

(assert (= (and b!2804720 res!1168509) b!2804724))

(assert (= (and b!2804724 res!1168511) b!2804717))

(assert (= (and b!2804717 res!1168506) b!2804726))

(assert (= (and b!2804726 res!1168505) b!2804712))

(assert (= (and b!2804712 res!1168512) b!2804721))

(assert (= (and b!2804721 res!1168507) b!2804719))

(assert (= b!2804714 b!2804727))

(assert (= b!2804722 b!2804714))

(assert (= (and start!271268 ((_ is Cons!32660) rules!2540)) b!2804722))

(assert (= b!2804728 b!2804718))

(assert (= b!2804723 b!2804728))

(assert (= b!2804725 b!2804723))

(assert (= (and start!271268 ((_ is Cons!32661) l!5055)) b!2804725))

(assert (= b!2804729 b!2804716))

(assert (= b!2804715 b!2804729))

(assert (= start!271268 b!2804715))

(declare-fun m!3234113 () Bool)

(assert (=> b!2804725 m!3234113))

(declare-fun m!3234115 () Bool)

(assert (=> b!2804717 m!3234115))

(declare-fun m!3234117 () Bool)

(assert (=> b!2804712 m!3234117))

(declare-fun m!3234119 () Bool)

(assert (=> b!2804721 m!3234119))

(declare-fun m!3234121 () Bool)

(assert (=> b!2804721 m!3234121))

(declare-fun m!3234123 () Bool)

(assert (=> b!2804721 m!3234123))

(declare-fun m!3234125 () Bool)

(assert (=> start!271268 m!3234125))

(declare-fun m!3234127 () Bool)

(assert (=> b!2804724 m!3234127))

(declare-fun m!3234129 () Bool)

(assert (=> b!2804723 m!3234129))

(declare-fun m!3234131 () Bool)

(assert (=> b!2804715 m!3234131))

(declare-fun m!3234133 () Bool)

(assert (=> b!2804729 m!3234133))

(declare-fun m!3234135 () Bool)

(assert (=> b!2804729 m!3234135))

(declare-fun m!3234137 () Bool)

(assert (=> b!2804719 m!3234137))

(declare-fun m!3234139 () Bool)

(assert (=> b!2804719 m!3234139))

(assert (=> b!2804719 m!3234139))

(declare-fun m!3234141 () Bool)

(assert (=> b!2804719 m!3234141))

(declare-fun m!3234143 () Bool)

(assert (=> b!2804719 m!3234143))

(declare-fun m!3234145 () Bool)

(assert (=> b!2804714 m!3234145))

(declare-fun m!3234147 () Bool)

(assert (=> b!2804714 m!3234147))

(declare-fun m!3234149 () Bool)

(assert (=> b!2804720 m!3234149))

(declare-fun m!3234151 () Bool)

(assert (=> b!2804728 m!3234151))

(declare-fun m!3234153 () Bool)

(assert (=> b!2804728 m!3234153))

(declare-fun m!3234155 () Bool)

(assert (=> b!2804713 m!3234155))

(check-sat (not b!2804722) (not b!2804738) (not b!2804724) b_and!204451 (not b!2804723) (not b!2804720) (not b!2804719) (not b_next!80393) b_and!204443 (not b_next!80391) (not b_next!80395) (not b!2804714) (not b!2804728) b_and!204445 (not b!2804713) b_and!204449 (not b_next!80389) (not start!271268) b_and!204453 (not b!2804717) (not b!2804715) (not b!2804721) b_and!204447 (not b!2804712) (not b!2804725) (not b_next!80387) (not b!2804729) (not b_next!80385))
(check-sat b_and!204445 b_and!204451 b_and!204453 (not b_next!80393) b_and!204443 b_and!204447 (not b_next!80391) (not b_next!80395) b_and!204449 (not b_next!80389) (not b_next!80387) (not b_next!80385))
