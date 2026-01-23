; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297662 () Bool)

(assert start!297662)

(declare-fun b!3178207 () Bool)

(declare-fun b_free!83593 () Bool)

(declare-fun b_next!84297 () Bool)

(assert (=> b!3178207 (= b_free!83593 (not b_next!84297))))

(declare-fun tp!1005325 () Bool)

(declare-fun b_and!209887 () Bool)

(assert (=> b!3178207 (= tp!1005325 b_and!209887)))

(declare-fun b_free!83595 () Bool)

(declare-fun b_next!84299 () Bool)

(assert (=> b!3178207 (= b_free!83595 (not b_next!84299))))

(declare-fun tp!1005318 () Bool)

(declare-fun b_and!209889 () Bool)

(assert (=> b!3178207 (= tp!1005318 b_and!209889)))

(declare-fun b!3178218 () Bool)

(declare-fun b_free!83597 () Bool)

(declare-fun b_next!84301 () Bool)

(assert (=> b!3178218 (= b_free!83597 (not b_next!84301))))

(declare-fun tp!1005327 () Bool)

(declare-fun b_and!209891 () Bool)

(assert (=> b!3178218 (= tp!1005327 b_and!209891)))

(declare-fun b_free!83599 () Bool)

(declare-fun b_next!84303 () Bool)

(assert (=> b!3178218 (= b_free!83599 (not b_next!84303))))

(declare-fun tp!1005317 () Bool)

(declare-fun b_and!209893 () Bool)

(assert (=> b!3178218 (= tp!1005317 b_and!209893)))

(declare-fun b!3178220 () Bool)

(declare-fun b_free!83601 () Bool)

(declare-fun b_next!84305 () Bool)

(assert (=> b!3178220 (= b_free!83601 (not b_next!84305))))

(declare-fun tp!1005323 () Bool)

(declare-fun b_and!209895 () Bool)

(assert (=> b!3178220 (= tp!1005323 b_and!209895)))

(declare-fun b_free!83603 () Bool)

(declare-fun b_next!84307 () Bool)

(assert (=> b!3178220 (= b_free!83603 (not b_next!84307))))

(declare-fun tp!1005319 () Bool)

(declare-fun b_and!209897 () Bool)

(assert (=> b!3178220 (= tp!1005319 b_and!209897)))

(declare-fun b!3178203 () Bool)

(declare-fun res!1291269 () Bool)

(declare-fun e!1979686 () Bool)

(assert (=> b!3178203 (=> (not res!1291269) (not e!1979686))))

(declare-datatypes ((C!19904 0))(
  ( (C!19905 (val!12000 Int)) )
))
(declare-datatypes ((Regex!9859 0))(
  ( (ElementMatch!9859 (c!534024 C!19904)) (Concat!15189 (regOne!20230 Regex!9859) (regTwo!20230 Regex!9859)) (EmptyExpr!9859) (Star!9859 (reg!10188 Regex!9859)) (EmptyLang!9859) (Union!9859 (regOne!20231 Regex!9859) (regTwo!20231 Regex!9859)) )
))
(declare-datatypes ((List!35776 0))(
  ( (Nil!35652) (Cons!35652 (h!41072 (_ BitVec 16)) (t!234879 List!35776)) )
))
(declare-datatypes ((TokenValue!5330 0))(
  ( (FloatLiteralValue!10660 (text!37755 List!35776)) (TokenValueExt!5329 (__x!22877 Int)) (Broken!26650 (value!165784 List!35776)) (Object!5453) (End!5330) (Def!5330) (Underscore!5330) (Match!5330) (Else!5330) (Error!5330) (Case!5330) (If!5330) (Extends!5330) (Abstract!5330) (Class!5330) (Val!5330) (DelimiterValue!10660 (del!5390 List!35776)) (KeywordValue!5336 (value!165785 List!35776)) (CommentValue!10660 (value!165786 List!35776)) (WhitespaceValue!10660 (value!165787 List!35776)) (IndentationValue!5330 (value!165788 List!35776)) (String!39983) (Int32!5330) (Broken!26651 (value!165789 List!35776)) (Boolean!5331) (Unit!50087) (OperatorValue!5333 (op!5390 List!35776)) (IdentifierValue!10660 (value!165790 List!35776)) (IdentifierValue!10661 (value!165791 List!35776)) (WhitespaceValue!10661 (value!165792 List!35776)) (True!10660) (False!10660) (Broken!26652 (value!165793 List!35776)) (Broken!26653 (value!165794 List!35776)) (True!10661) (RightBrace!5330) (RightBracket!5330) (Colon!5330) (Null!5330) (Comma!5330) (LeftBracket!5330) (False!10661) (LeftBrace!5330) (ImaginaryLiteralValue!5330 (text!37756 List!35776)) (StringLiteralValue!15990 (value!165795 List!35776)) (EOFValue!5330 (value!165796 List!35776)) (IdentValue!5330 (value!165797 List!35776)) (DelimiterValue!10661 (value!165798 List!35776)) (DedentValue!5330 (value!165799 List!35776)) (NewLineValue!5330 (value!165800 List!35776)) (IntegerValue!15990 (value!165801 (_ BitVec 32)) (text!37757 List!35776)) (IntegerValue!15991 (value!165802 Int) (text!37758 List!35776)) (Times!5330) (Or!5330) (Equal!5330) (Minus!5330) (Broken!26654 (value!165803 List!35776)) (And!5330) (Div!5330) (LessEqual!5330) (Mod!5330) (Concat!15190) (Not!5330) (Plus!5330) (SpaceValue!5330 (value!165804 List!35776)) (IntegerValue!15992 (value!165805 Int) (text!37759 List!35776)) (StringLiteralValue!15991 (text!37760 List!35776)) (FloatLiteralValue!10661 (text!37761 List!35776)) (BytesLiteralValue!5330 (value!165806 List!35776)) (CommentValue!10661 (value!165807 List!35776)) (StringLiteralValue!15992 (value!165808 List!35776)) (ErrorTokenValue!5330 (msg!5391 List!35776)) )
))
(declare-datatypes ((List!35777 0))(
  ( (Nil!35653) (Cons!35653 (h!41073 C!19904) (t!234880 List!35777)) )
))
(declare-datatypes ((IArray!21155 0))(
  ( (IArray!21156 (innerList!10635 List!35777)) )
))
(declare-datatypes ((Conc!10575 0))(
  ( (Node!10575 (left!27735 Conc!10575) (right!28065 Conc!10575) (csize!21380 Int) (cheight!10786 Int)) (Leaf!16736 (xs!13693 IArray!21155) (csize!21381 Int)) (Empty!10575) )
))
(declare-datatypes ((BalanceConc!20764 0))(
  ( (BalanceConc!20765 (c!534025 Conc!10575)) )
))
(declare-datatypes ((String!39984 0))(
  ( (String!39985 (value!165809 String)) )
))
(declare-datatypes ((TokenValueInjection!10088 0))(
  ( (TokenValueInjection!10089 (toValue!7160 Int) (toChars!7019 Int)) )
))
(declare-datatypes ((Rule!10000 0))(
  ( (Rule!10001 (regex!5100 Regex!9859) (tag!5604 String!39984) (isSeparator!5100 Bool) (transformation!5100 TokenValueInjection!10088)) )
))
(declare-datatypes ((Token!9566 0))(
  ( (Token!9567 (value!165810 TokenValue!5330) (rule!7510 Rule!10000) (size!26929 Int) (originalCharacters!5814 List!35777)) )
))
(declare-datatypes ((List!35778 0))(
  ( (Nil!35654) (Cons!35654 (h!41074 Token!9566) (t!234881 List!35778)) )
))
(declare-fun tokens!494 () List!35778)

(declare-fun lambda!116287 () Int)

(declare-fun forall!7208 (List!35778 Int) Bool)

(assert (=> b!3178203 (= res!1291269 (forall!7208 tokens!494 lambda!116287))))

(declare-fun b!3178204 () Bool)

(declare-fun e!1979701 () Bool)

(declare-fun e!1979690 () Bool)

(declare-fun tp!1005322 () Bool)

(assert (=> b!3178204 (= e!1979701 (and e!1979690 tp!1005322))))

(declare-fun tp!1005321 () Bool)

(declare-fun e!1979694 () Bool)

(declare-fun separatorToken!241 () Token!9566)

(declare-fun e!1979693 () Bool)

(declare-fun b!3178205 () Bool)

(declare-fun inv!21 (TokenValue!5330) Bool)

(assert (=> b!3178205 (= e!1979694 (and (inv!21 (value!165810 separatorToken!241)) e!1979693 tp!1005321))))

(declare-fun b!3178206 () Bool)

(declare-fun res!1291270 () Bool)

(assert (=> b!3178206 (=> (not res!1291270) (not e!1979686))))

(declare-datatypes ((LexerInterface!4689 0))(
  ( (LexerInterfaceExt!4686 (__x!22878 Int)) (Lexer!4687) )
))
(declare-fun thiss!18206 () LexerInterface!4689)

(declare-datatypes ((List!35779 0))(
  ( (Nil!35655) (Cons!35655 (h!41075 Rule!10000) (t!234882 List!35779)) )
))
(declare-fun rules!2135 () List!35779)

(declare-fun rulesProduceIndividualToken!2181 (LexerInterface!4689 List!35779 Token!9566) Bool)

(assert (=> b!3178206 (= res!1291270 (rulesProduceIndividualToken!2181 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1979697 () Bool)

(assert (=> b!3178207 (= e!1979697 (and tp!1005325 tp!1005318))))

(declare-fun b!3178208 () Bool)

(declare-fun e!1979692 () Bool)

(assert (=> b!3178208 (= e!1979692 true)))

(declare-fun lt!1068200 () List!35777)

(declare-fun list!12653 (BalanceConc!20764) List!35777)

(declare-fun charsOf!3122 (Token!9566) BalanceConc!20764)

(assert (=> b!3178208 (= lt!1068200 (list!12653 (charsOf!3122 (h!41074 tokens!494))))))

(declare-fun res!1291277 () Bool)

(assert (=> start!297662 (=> (not res!1291277) (not e!1979686))))

(get-info :version)

(assert (=> start!297662 (= res!1291277 ((_ is Lexer!4687) thiss!18206))))

(assert (=> start!297662 e!1979686))

(assert (=> start!297662 true))

(assert (=> start!297662 e!1979701))

(declare-fun e!1979700 () Bool)

(assert (=> start!297662 e!1979700))

(declare-fun inv!48509 (Token!9566) Bool)

(assert (=> start!297662 (and (inv!48509 separatorToken!241) e!1979694)))

(declare-fun b!3178209 () Bool)

(assert (=> b!3178209 (= e!1979686 (not e!1979692))))

(declare-fun res!1291276 () Bool)

(assert (=> b!3178209 (=> res!1291276 e!1979692)))

(declare-fun lt!1068199 () BalanceConc!20764)

(declare-fun printList!1243 (LexerInterface!4689 List!35778) List!35777)

(assert (=> b!3178209 (= res!1291276 (not (= (list!12653 lt!1068199) (printList!1243 thiss!18206 (Cons!35654 (h!41074 tokens!494) Nil!35654)))))))

(declare-datatypes ((IArray!21157 0))(
  ( (IArray!21158 (innerList!10636 List!35778)) )
))
(declare-datatypes ((Conc!10576 0))(
  ( (Node!10576 (left!27736 Conc!10576) (right!28066 Conc!10576) (csize!21382 Int) (cheight!10787 Int)) (Leaf!16737 (xs!13694 IArray!21157) (csize!21383 Int)) (Empty!10576) )
))
(declare-datatypes ((BalanceConc!20766 0))(
  ( (BalanceConc!20767 (c!534026 Conc!10576)) )
))
(declare-fun lt!1068198 () BalanceConc!20766)

(declare-fun printTailRec!1188 (LexerInterface!4689 BalanceConc!20766 Int BalanceConc!20764) BalanceConc!20764)

(assert (=> b!3178209 (= lt!1068199 (printTailRec!1188 thiss!18206 lt!1068198 0 (BalanceConc!20765 Empty!10575)))))

(declare-fun print!1756 (LexerInterface!4689 BalanceConc!20766) BalanceConc!20764)

(assert (=> b!3178209 (= lt!1068199 (print!1756 thiss!18206 lt!1068198))))

(declare-fun singletonSeq!2196 (Token!9566) BalanceConc!20766)

(assert (=> b!3178209 (= lt!1068198 (singletonSeq!2196 (h!41074 tokens!494)))))

(declare-fun b!3178210 () Bool)

(declare-fun e!1979699 () Bool)

(declare-fun e!1979695 () Bool)

(declare-fun tp!1005324 () Bool)

(assert (=> b!3178210 (= e!1979699 (and (inv!21 (value!165810 (h!41074 tokens!494))) e!1979695 tp!1005324))))

(declare-fun b!3178211 () Bool)

(declare-fun res!1291268 () Bool)

(assert (=> b!3178211 (=> (not res!1291268) (not e!1979686))))

(declare-fun rulesInvariant!4086 (LexerInterface!4689 List!35779) Bool)

(assert (=> b!3178211 (= res!1291268 (rulesInvariant!4086 thiss!18206 rules!2135))))

(declare-fun b!3178212 () Bool)

(declare-fun res!1291272 () Bool)

(assert (=> b!3178212 (=> (not res!1291272) (not e!1979686))))

(declare-fun isEmpty!19781 (List!35779) Bool)

(assert (=> b!3178212 (= res!1291272 (not (isEmpty!19781 rules!2135)))))

(declare-fun b!3178213 () Bool)

(declare-fun res!1291274 () Bool)

(assert (=> b!3178213 (=> (not res!1291274) (not e!1979686))))

(assert (=> b!3178213 (= res!1291274 (and (not ((_ is Nil!35654) tokens!494)) ((_ is Nil!35654) (t!234881 tokens!494))))))

(declare-fun b!3178214 () Bool)

(declare-fun res!1291273 () Bool)

(assert (=> b!3178214 (=> (not res!1291273) (not e!1979686))))

(declare-fun sepAndNonSepRulesDisjointChars!1294 (List!35779 List!35779) Bool)

(assert (=> b!3178214 (= res!1291273 (sepAndNonSepRulesDisjointChars!1294 rules!2135 rules!2135))))

(declare-fun b!3178215 () Bool)

(declare-fun e!1979702 () Bool)

(declare-fun tp!1005320 () Bool)

(declare-fun inv!48506 (String!39984) Bool)

(declare-fun inv!48510 (TokenValueInjection!10088) Bool)

(assert (=> b!3178215 (= e!1979693 (and tp!1005320 (inv!48506 (tag!5604 (rule!7510 separatorToken!241))) (inv!48510 (transformation!5100 (rule!7510 separatorToken!241))) e!1979702))))

(declare-fun b!3178216 () Bool)

(declare-fun res!1291271 () Bool)

(assert (=> b!3178216 (=> (not res!1291271) (not e!1979686))))

(declare-fun rulesProduceEachTokenIndividually!1140 (LexerInterface!4689 List!35779 BalanceConc!20766) Bool)

(declare-fun seqFromList!3280 (List!35778) BalanceConc!20766)

(assert (=> b!3178216 (= res!1291271 (rulesProduceEachTokenIndividually!1140 thiss!18206 rules!2135 (seqFromList!3280 tokens!494)))))

(declare-fun tp!1005316 () Bool)

(declare-fun b!3178217 () Bool)

(assert (=> b!3178217 (= e!1979700 (and (inv!48509 (h!41074 tokens!494)) e!1979699 tp!1005316))))

(assert (=> b!3178218 (= e!1979702 (and tp!1005327 tp!1005317))))

(declare-fun b!3178219 () Bool)

(declare-fun res!1291275 () Bool)

(assert (=> b!3178219 (=> (not res!1291275) (not e!1979686))))

(assert (=> b!3178219 (= res!1291275 (isSeparator!5100 (rule!7510 separatorToken!241)))))

(declare-fun e!1979689 () Bool)

(assert (=> b!3178220 (= e!1979689 (and tp!1005323 tp!1005319))))

(declare-fun b!3178221 () Bool)

(declare-fun tp!1005328 () Bool)

(assert (=> b!3178221 (= e!1979690 (and tp!1005328 (inv!48506 (tag!5604 (h!41075 rules!2135))) (inv!48510 (transformation!5100 (h!41075 rules!2135))) e!1979697))))

(declare-fun b!3178222 () Bool)

(declare-fun tp!1005326 () Bool)

(assert (=> b!3178222 (= e!1979695 (and tp!1005326 (inv!48506 (tag!5604 (rule!7510 (h!41074 tokens!494)))) (inv!48510 (transformation!5100 (rule!7510 (h!41074 tokens!494)))) e!1979689))))

(assert (= (and start!297662 res!1291277) b!3178212))

(assert (= (and b!3178212 res!1291272) b!3178211))

(assert (= (and b!3178211 res!1291268) b!3178216))

(assert (= (and b!3178216 res!1291271) b!3178206))

(assert (= (and b!3178206 res!1291270) b!3178219))

(assert (= (and b!3178219 res!1291275) b!3178203))

(assert (= (and b!3178203 res!1291269) b!3178214))

(assert (= (and b!3178214 res!1291273) b!3178213))

(assert (= (and b!3178213 res!1291274) b!3178209))

(assert (= (and b!3178209 (not res!1291276)) b!3178208))

(assert (= b!3178221 b!3178207))

(assert (= b!3178204 b!3178221))

(assert (= (and start!297662 ((_ is Cons!35655) rules!2135)) b!3178204))

(assert (= b!3178222 b!3178220))

(assert (= b!3178210 b!3178222))

(assert (= b!3178217 b!3178210))

(assert (= (and start!297662 ((_ is Cons!35654) tokens!494)) b!3178217))

(assert (= b!3178215 b!3178218))

(assert (= b!3178205 b!3178215))

(assert (= start!297662 b!3178205))

(declare-fun m!3434695 () Bool)

(assert (=> b!3178209 m!3434695))

(declare-fun m!3434697 () Bool)

(assert (=> b!3178209 m!3434697))

(declare-fun m!3434699 () Bool)

(assert (=> b!3178209 m!3434699))

(declare-fun m!3434701 () Bool)

(assert (=> b!3178209 m!3434701))

(declare-fun m!3434703 () Bool)

(assert (=> b!3178209 m!3434703))

(declare-fun m!3434705 () Bool)

(assert (=> b!3178212 m!3434705))

(declare-fun m!3434707 () Bool)

(assert (=> b!3178211 m!3434707))

(declare-fun m!3434709 () Bool)

(assert (=> b!3178217 m!3434709))

(declare-fun m!3434711 () Bool)

(assert (=> b!3178203 m!3434711))

(declare-fun m!3434713 () Bool)

(assert (=> b!3178206 m!3434713))

(declare-fun m!3434715 () Bool)

(assert (=> b!3178208 m!3434715))

(assert (=> b!3178208 m!3434715))

(declare-fun m!3434717 () Bool)

(assert (=> b!3178208 m!3434717))

(declare-fun m!3434719 () Bool)

(assert (=> b!3178222 m!3434719))

(declare-fun m!3434721 () Bool)

(assert (=> b!3178222 m!3434721))

(declare-fun m!3434723 () Bool)

(assert (=> b!3178216 m!3434723))

(assert (=> b!3178216 m!3434723))

(declare-fun m!3434725 () Bool)

(assert (=> b!3178216 m!3434725))

(declare-fun m!3434727 () Bool)

(assert (=> b!3178215 m!3434727))

(declare-fun m!3434729 () Bool)

(assert (=> b!3178215 m!3434729))

(declare-fun m!3434731 () Bool)

(assert (=> b!3178205 m!3434731))

(declare-fun m!3434733 () Bool)

(assert (=> b!3178210 m!3434733))

(declare-fun m!3434735 () Bool)

(assert (=> b!3178221 m!3434735))

(declare-fun m!3434737 () Bool)

(assert (=> b!3178221 m!3434737))

(declare-fun m!3434739 () Bool)

(assert (=> start!297662 m!3434739))

(declare-fun m!3434741 () Bool)

(assert (=> b!3178214 m!3434741))

(check-sat (not b!3178217) (not b_next!84299) b_and!209887 (not b_next!84307) (not b!3178211) b_and!209893 (not b_next!84301) (not b!3178209) (not b_next!84303) b_and!209889 b_and!209895 (not b!3178212) (not b!3178203) (not b!3178222) b_and!209891 (not b!3178215) (not start!297662) (not b!3178204) (not b!3178214) (not b!3178205) b_and!209897 (not b_next!84305) (not b_next!84297) (not b!3178210) (not b!3178221) (not b!3178206) (not b!3178208) (not b!3178216))
(check-sat (not b_next!84299) b_and!209891 b_and!209887 (not b_next!84307) b_and!209893 (not b_next!84301) (not b_next!84303) b_and!209889 b_and!209895 b_and!209897 (not b_next!84305) (not b_next!84297))
