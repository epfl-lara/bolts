; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!308594 () Bool)

(assert start!308594)

(declare-fun b!3309291 () Bool)

(declare-fun b_free!87129 () Bool)

(declare-fun b_next!87833 () Bool)

(assert (=> b!3309291 (= b_free!87129 (not b_next!87833))))

(declare-fun tp!1036449 () Bool)

(declare-fun b_and!227095 () Bool)

(assert (=> b!3309291 (= tp!1036449 b_and!227095)))

(declare-fun b_free!87131 () Bool)

(declare-fun b_next!87835 () Bool)

(assert (=> b!3309291 (= b_free!87131 (not b_next!87835))))

(declare-fun tp!1036442 () Bool)

(declare-fun b_and!227097 () Bool)

(assert (=> b!3309291 (= tp!1036442 b_and!227097)))

(declare-fun b!3309300 () Bool)

(declare-fun b_free!87133 () Bool)

(declare-fun b_next!87837 () Bool)

(assert (=> b!3309300 (= b_free!87133 (not b_next!87837))))

(declare-fun tp!1036444 () Bool)

(declare-fun b_and!227099 () Bool)

(assert (=> b!3309300 (= tp!1036444 b_and!227099)))

(declare-fun b_free!87135 () Bool)

(declare-fun b_next!87839 () Bool)

(assert (=> b!3309300 (= b_free!87135 (not b_next!87839))))

(declare-fun tp!1036443 () Bool)

(declare-fun b_and!227101 () Bool)

(assert (=> b!3309300 (= tp!1036443 b_and!227101)))

(declare-fun b!3309314 () Bool)

(declare-fun b_free!87137 () Bool)

(declare-fun b_next!87841 () Bool)

(assert (=> b!3309314 (= b_free!87137 (not b_next!87841))))

(declare-fun tp!1036440 () Bool)

(declare-fun b_and!227103 () Bool)

(assert (=> b!3309314 (= tp!1036440 b_and!227103)))

(declare-fun b_free!87139 () Bool)

(declare-fun b_next!87843 () Bool)

(assert (=> b!3309314 (= b_free!87139 (not b_next!87843))))

(declare-fun tp!1036439 () Bool)

(declare-fun b_and!227105 () Bool)

(assert (=> b!3309314 (= tp!1036439 b_and!227105)))

(declare-datatypes ((C!20320 0))(
  ( (C!20321 (val!12208 Int)) )
))
(declare-datatypes ((Regex!10067 0))(
  ( (ElementMatch!10067 (c!561238 C!20320)) (Concat!15605 (regOne!20646 Regex!10067) (regTwo!20646 Regex!10067)) (EmptyExpr!10067) (Star!10067 (reg!10396 Regex!10067)) (EmptyLang!10067) (Union!10067 (regOne!20647 Regex!10067) (regTwo!20647 Regex!10067)) )
))
(declare-datatypes ((List!36682 0))(
  ( (Nil!36558) (Cons!36558 (h!41978 (_ BitVec 16)) (t!254127 List!36682)) )
))
(declare-datatypes ((TokenValue!5538 0))(
  ( (FloatLiteralValue!11076 (text!39211 List!36682)) (TokenValueExt!5537 (__x!23293 Int)) (Broken!27690 (value!171712 List!36682)) (Object!5661) (End!5538) (Def!5538) (Underscore!5538) (Match!5538) (Else!5538) (Error!5538) (Case!5538) (If!5538) (Extends!5538) (Abstract!5538) (Class!5538) (Val!5538) (DelimiterValue!11076 (del!5598 List!36682)) (KeywordValue!5544 (value!171713 List!36682)) (CommentValue!11076 (value!171714 List!36682)) (WhitespaceValue!11076 (value!171715 List!36682)) (IndentationValue!5538 (value!171716 List!36682)) (String!41023) (Int32!5538) (Broken!27691 (value!171717 List!36682)) (Boolean!5539) (Unit!51473) (OperatorValue!5541 (op!5598 List!36682)) (IdentifierValue!11076 (value!171718 List!36682)) (IdentifierValue!11077 (value!171719 List!36682)) (WhitespaceValue!11077 (value!171720 List!36682)) (True!11076) (False!11076) (Broken!27692 (value!171721 List!36682)) (Broken!27693 (value!171722 List!36682)) (True!11077) (RightBrace!5538) (RightBracket!5538) (Colon!5538) (Null!5538) (Comma!5538) (LeftBracket!5538) (False!11077) (LeftBrace!5538) (ImaginaryLiteralValue!5538 (text!39212 List!36682)) (StringLiteralValue!16614 (value!171723 List!36682)) (EOFValue!5538 (value!171724 List!36682)) (IdentValue!5538 (value!171725 List!36682)) (DelimiterValue!11077 (value!171726 List!36682)) (DedentValue!5538 (value!171727 List!36682)) (NewLineValue!5538 (value!171728 List!36682)) (IntegerValue!16614 (value!171729 (_ BitVec 32)) (text!39213 List!36682)) (IntegerValue!16615 (value!171730 Int) (text!39214 List!36682)) (Times!5538) (Or!5538) (Equal!5538) (Minus!5538) (Broken!27694 (value!171731 List!36682)) (And!5538) (Div!5538) (LessEqual!5538) (Mod!5538) (Concat!15606) (Not!5538) (Plus!5538) (SpaceValue!5538 (value!171732 List!36682)) (IntegerValue!16616 (value!171733 Int) (text!39215 List!36682)) (StringLiteralValue!16615 (text!39216 List!36682)) (FloatLiteralValue!11077 (text!39217 List!36682)) (BytesLiteralValue!5538 (value!171734 List!36682)) (CommentValue!11077 (value!171735 List!36682)) (StringLiteralValue!16616 (value!171736 List!36682)) (ErrorTokenValue!5538 (msg!5599 List!36682)) )
))
(declare-datatypes ((List!36683 0))(
  ( (Nil!36559) (Cons!36559 (h!41979 C!20320) (t!254128 List!36683)) )
))
(declare-datatypes ((IArray!21987 0))(
  ( (IArray!21988 (innerList!11051 List!36683)) )
))
(declare-datatypes ((Conc!10991 0))(
  ( (Node!10991 (left!28483 Conc!10991) (right!28813 Conc!10991) (csize!22212 Int) (cheight!11202 Int)) (Leaf!17256 (xs!14129 IArray!21987) (csize!22213 Int)) (Empty!10991) )
))
(declare-datatypes ((BalanceConc!21596 0))(
  ( (BalanceConc!21597 (c!561239 Conc!10991)) )
))
(declare-datatypes ((String!41024 0))(
  ( (String!41025 (value!171737 String)) )
))
(declare-datatypes ((TokenValueInjection!10504 0))(
  ( (TokenValueInjection!10505 (toValue!7452 Int) (toChars!7311 Int)) )
))
(declare-datatypes ((Rule!10416 0))(
  ( (Rule!10417 (regex!5308 Regex!10067) (tag!5854 String!41024) (isSeparator!5308 Bool) (transformation!5308 TokenValueInjection!10504)) )
))
(declare-datatypes ((Token!9982 0))(
  ( (Token!9983 (value!171738 TokenValue!5538) (rule!7812 Rule!10416) (size!27619 Int) (originalCharacters!6022 List!36683)) )
))
(declare-datatypes ((List!36684 0))(
  ( (Nil!36560) (Cons!36560 (h!41980 Token!9982) (t!254129 List!36684)) )
))
(declare-fun tokens!494 () List!36684)

(declare-fun tp!1036448 () Bool)

(declare-fun e!2058302 () Bool)

(declare-fun e!2058313 () Bool)

(declare-fun b!3309289 () Bool)

(declare-fun inv!49536 (Token!9982) Bool)

(assert (=> b!3309289 (= e!2058313 (and (inv!49536 (h!41980 tokens!494)) e!2058302 tp!1036448))))

(declare-fun b!3309290 () Bool)

(declare-fun res!1342217 () Bool)

(declare-fun e!2058300 () Bool)

(assert (=> b!3309290 (=> (not res!1342217) (not e!2058300))))

(declare-fun separatorToken!241 () Token!9982)

(declare-datatypes ((LexerInterface!4897 0))(
  ( (LexerInterfaceExt!4894 (__x!23294 Int)) (Lexer!4895) )
))
(declare-fun thiss!18206 () LexerInterface!4897)

(declare-datatypes ((List!36685 0))(
  ( (Nil!36561) (Cons!36561 (h!41981 Rule!10416) (t!254130 List!36685)) )
))
(declare-fun rules!2135 () List!36685)

(declare-fun rulesProduceIndividualToken!2389 (LexerInterface!4897 List!36685 Token!9982) Bool)

(assert (=> b!3309290 (= res!1342217 (rulesProduceIndividualToken!2389 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2058304 () Bool)

(assert (=> b!3309291 (= e!2058304 (and tp!1036449 tp!1036442))))

(declare-fun b!3309292 () Bool)

(declare-fun e!2058306 () Bool)

(declare-fun e!2058319 () Bool)

(assert (=> b!3309292 (= e!2058306 e!2058319)))

(declare-fun res!1342220 () Bool)

(assert (=> b!3309292 (=> res!1342220 e!2058319)))

(declare-fun lt!1121767 () List!36683)

(declare-fun lt!1121763 () List!36683)

(declare-fun ++!8861 (List!36683 List!36683) List!36683)

(declare-fun list!13127 (BalanceConc!21596) List!36683)

(declare-fun charsOf!3324 (Token!9982) BalanceConc!21596)

(declare-fun printWithSeparatorTokenList!208 (LexerInterface!4897 List!36684 Token!9982) List!36683)

(assert (=> b!3309292 (= res!1342220 (not (= lt!1121763 (++!8861 (++!8861 (list!13127 (charsOf!3324 (h!41980 (t!254129 tokens!494)))) lt!1121767) (printWithSeparatorTokenList!208 thiss!18206 (t!254129 (t!254129 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1121765 () List!36683)

(assert (=> b!3309292 (= lt!1121765 (++!8861 lt!1121767 lt!1121763))))

(assert (=> b!3309292 (= lt!1121767 (list!13127 (charsOf!3324 separatorToken!241)))))

(assert (=> b!3309292 (= lt!1121763 (printWithSeparatorTokenList!208 thiss!18206 (t!254129 tokens!494) separatorToken!241))))

(declare-fun lt!1121776 () List!36683)

(assert (=> b!3309292 (= lt!1121776 (printWithSeparatorTokenList!208 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3309293 () Bool)

(declare-fun tp!1036447 () Bool)

(declare-fun e!2058310 () Bool)

(declare-fun inv!21 (TokenValue!5538) Bool)

(assert (=> b!3309293 (= e!2058302 (and (inv!21 (value!171738 (h!41980 tokens!494))) e!2058310 tp!1036447))))

(declare-fun b!3309294 () Bool)

(declare-fun e!2058312 () Bool)

(declare-fun e!2058311 () Bool)

(declare-fun tp!1036450 () Bool)

(assert (=> b!3309294 (= e!2058312 (and e!2058311 tp!1036450))))

(declare-fun b!3309295 () Bool)

(declare-fun res!1342219 () Bool)

(assert (=> b!3309295 (=> (not res!1342219) (not e!2058300))))

(declare-fun rulesInvariant!4294 (LexerInterface!4897 List!36685) Bool)

(assert (=> b!3309295 (= res!1342219 (rulesInvariant!4294 thiss!18206 rules!2135))))

(declare-fun b!3309296 () Bool)

(declare-fun res!1342226 () Bool)

(assert (=> b!3309296 (=> (not res!1342226) (not e!2058300))))

(declare-datatypes ((IArray!21989 0))(
  ( (IArray!21990 (innerList!11052 List!36684)) )
))
(declare-datatypes ((Conc!10992 0))(
  ( (Node!10992 (left!28484 Conc!10992) (right!28814 Conc!10992) (csize!22214 Int) (cheight!11203 Int)) (Leaf!17257 (xs!14130 IArray!21989) (csize!22215 Int)) (Empty!10992) )
))
(declare-datatypes ((BalanceConc!21598 0))(
  ( (BalanceConc!21599 (c!561240 Conc!10992)) )
))
(declare-fun rulesProduceEachTokenIndividually!1348 (LexerInterface!4897 List!36685 BalanceConc!21598) Bool)

(declare-fun seqFromList!3671 (List!36684) BalanceConc!21598)

(assert (=> b!3309296 (= res!1342226 (rulesProduceEachTokenIndividually!1348 thiss!18206 rules!2135 (seqFromList!3671 tokens!494)))))

(declare-fun b!3309298 () Bool)

(declare-fun res!1342221 () Bool)

(assert (=> b!3309298 (=> (not res!1342221) (not e!2058300))))

(get-info :version)

(assert (=> b!3309298 (= res!1342221 (and (not ((_ is Nil!36560) tokens!494)) (not ((_ is Nil!36560) (t!254129 tokens!494)))))))

(declare-fun b!3309299 () Bool)

(declare-fun res!1342218 () Bool)

(assert (=> b!3309299 (=> (not res!1342218) (not e!2058300))))

(declare-fun lambda!119193 () Int)

(declare-fun forall!7593 (List!36684 Int) Bool)

(assert (=> b!3309299 (= res!1342218 (forall!7593 tokens!494 lambda!119193))))

(declare-fun e!2058316 () Bool)

(assert (=> b!3309300 (= e!2058316 (and tp!1036444 tp!1036443))))

(declare-fun b!3309301 () Bool)

(declare-fun res!1342230 () Bool)

(assert (=> b!3309301 (=> (not res!1342230) (not e!2058300))))

(declare-fun sepAndNonSepRulesDisjointChars!1502 (List!36685 List!36685) Bool)

(assert (=> b!3309301 (= res!1342230 (sepAndNonSepRulesDisjointChars!1502 rules!2135 rules!2135))))

(declare-fun b!3309302 () Bool)

(declare-fun res!1342216 () Bool)

(assert (=> b!3309302 (=> (not res!1342216) (not e!2058300))))

(assert (=> b!3309302 (= res!1342216 (isSeparator!5308 (rule!7812 separatorToken!241)))))

(declare-fun b!3309303 () Bool)

(declare-fun e!2058318 () Bool)

(declare-fun e!2058308 () Bool)

(assert (=> b!3309303 (= e!2058318 e!2058308)))

(declare-fun res!1342223 () Bool)

(assert (=> b!3309303 (=> res!1342223 e!2058308)))

(declare-fun lt!1121766 () List!36683)

(declare-fun lt!1121775 () List!36683)

(declare-fun lt!1121764 () List!36683)

(assert (=> b!3309303 (= res!1342223 (or (not (= lt!1121764 lt!1121775)) (not (= lt!1121766 lt!1121775))))))

(assert (=> b!3309303 (= lt!1121775 (list!13127 (charsOf!3324 (h!41980 tokens!494))))))

(declare-fun b!3309304 () Bool)

(declare-fun res!1342228 () Bool)

(assert (=> b!3309304 (=> res!1342228 e!2058308)))

(assert (=> b!3309304 (= res!1342228 (not (rulesProduceIndividualToken!2389 thiss!18206 rules!2135 (h!41980 tokens!494))))))

(declare-fun e!2058307 () Bool)

(declare-fun b!3309305 () Bool)

(declare-fun tp!1036441 () Bool)

(declare-fun inv!49533 (String!41024) Bool)

(declare-fun inv!49537 (TokenValueInjection!10504) Bool)

(assert (=> b!3309305 (= e!2058311 (and tp!1036441 (inv!49533 (tag!5854 (h!41981 rules!2135))) (inv!49537 (transformation!5308 (h!41981 rules!2135))) e!2058307))))

(declare-fun b!3309306 () Bool)

(declare-fun tp!1036446 () Bool)

(declare-fun e!2058314 () Bool)

(assert (=> b!3309306 (= e!2058314 (and tp!1036446 (inv!49533 (tag!5854 (rule!7812 separatorToken!241))) (inv!49537 (transformation!5308 (rule!7812 separatorToken!241))) e!2058304))))

(declare-fun tp!1036445 () Bool)

(declare-fun b!3309307 () Bool)

(declare-fun e!2058317 () Bool)

(assert (=> b!3309307 (= e!2058317 (and (inv!21 (value!171738 separatorToken!241)) e!2058314 tp!1036445))))

(declare-fun res!1342222 () Bool)

(assert (=> start!308594 (=> (not res!1342222) (not e!2058300))))

(assert (=> start!308594 (= res!1342222 ((_ is Lexer!4895) thiss!18206))))

(assert (=> start!308594 e!2058300))

(assert (=> start!308594 true))

(assert (=> start!308594 e!2058312))

(assert (=> start!308594 e!2058313))

(assert (=> start!308594 (and (inv!49536 separatorToken!241) e!2058317)))

(declare-fun tp!1036438 () Bool)

(declare-fun b!3309297 () Bool)

(assert (=> b!3309297 (= e!2058310 (and tp!1036438 (inv!49533 (tag!5854 (rule!7812 (h!41980 tokens!494)))) (inv!49537 (transformation!5308 (rule!7812 (h!41980 tokens!494)))) e!2058316))))

(declare-fun b!3309308 () Bool)

(declare-fun res!1342225 () Bool)

(assert (=> b!3309308 (=> res!1342225 e!2058308)))

(declare-fun isEmpty!20704 (BalanceConc!21598) Bool)

(declare-datatypes ((tuple2!36042 0))(
  ( (tuple2!36043 (_1!21155 BalanceConc!21598) (_2!21155 BalanceConc!21596)) )
))
(declare-fun lex!2223 (LexerInterface!4897 List!36685 BalanceConc!21596) tuple2!36042)

(declare-fun seqFromList!3672 (List!36683) BalanceConc!21596)

(assert (=> b!3309308 (= res!1342225 (isEmpty!20704 (_1!21155 (lex!2223 thiss!18206 rules!2135 (seqFromList!3672 lt!1121775)))))))

(declare-fun b!3309309 () Bool)

(declare-fun e!2058309 () Bool)

(declare-fun lt!1121773 () List!36683)

(assert (=> b!3309309 (= e!2058309 (= lt!1121776 lt!1121773))))

(declare-fun lt!1121771 () List!36683)

(assert (=> b!3309309 (= lt!1121771 lt!1121773)))

(assert (=> b!3309309 (= lt!1121773 (++!8861 lt!1121775 lt!1121765))))

(declare-datatypes ((Unit!51474 0))(
  ( (Unit!51475) )
))
(declare-fun lt!1121768 () Unit!51474)

(declare-fun lemmaConcatAssociativity!1826 (List!36683 List!36683 List!36683) Unit!51474)

(assert (=> b!3309309 (= lt!1121768 (lemmaConcatAssociativity!1826 lt!1121775 lt!1121767 lt!1121763))))

(declare-fun b!3309310 () Bool)

(declare-fun res!1342224 () Bool)

(assert (=> b!3309310 (=> (not res!1342224) (not e!2058300))))

(declare-fun isEmpty!20705 (List!36685) Bool)

(assert (=> b!3309310 (= res!1342224 (not (isEmpty!20705 rules!2135)))))

(declare-fun b!3309311 () Bool)

(assert (=> b!3309311 (= e!2058308 e!2058306)))

(declare-fun res!1342231 () Bool)

(assert (=> b!3309311 (=> res!1342231 e!2058306)))

(assert (=> b!3309311 (= res!1342231 (or (isSeparator!5308 (rule!7812 (h!41980 tokens!494))) (isSeparator!5308 (rule!7812 (h!41980 (t!254129 tokens!494))))))))

(declare-fun lt!1121774 () Unit!51474)

(declare-fun forallContained!1259 (List!36684 Int Token!9982) Unit!51474)

(assert (=> b!3309311 (= lt!1121774 (forallContained!1259 tokens!494 lambda!119193 (h!41980 (t!254129 tokens!494))))))

(declare-fun lt!1121770 () Unit!51474)

(assert (=> b!3309311 (= lt!1121770 (forallContained!1259 tokens!494 lambda!119193 (h!41980 tokens!494)))))

(declare-fun b!3309312 () Bool)

(assert (=> b!3309312 (= e!2058300 (not e!2058318))))

(declare-fun res!1342229 () Bool)

(assert (=> b!3309312 (=> res!1342229 e!2058318)))

(assert (=> b!3309312 (= res!1342229 (not (= lt!1121766 lt!1121764)))))

(declare-fun printList!1447 (LexerInterface!4897 List!36684) List!36683)

(assert (=> b!3309312 (= lt!1121764 (printList!1447 thiss!18206 (Cons!36560 (h!41980 tokens!494) Nil!36560)))))

(declare-fun lt!1121769 () BalanceConc!21596)

(assert (=> b!3309312 (= lt!1121766 (list!13127 lt!1121769))))

(declare-fun lt!1121772 () BalanceConc!21598)

(declare-fun printTailRec!1394 (LexerInterface!4897 BalanceConc!21598 Int BalanceConc!21596) BalanceConc!21596)

(assert (=> b!3309312 (= lt!1121769 (printTailRec!1394 thiss!18206 lt!1121772 0 (BalanceConc!21597 Empty!10991)))))

(declare-fun print!1962 (LexerInterface!4897 BalanceConc!21598) BalanceConc!21596)

(assert (=> b!3309312 (= lt!1121769 (print!1962 thiss!18206 lt!1121772))))

(declare-fun singletonSeq!2404 (Token!9982) BalanceConc!21598)

(assert (=> b!3309312 (= lt!1121772 (singletonSeq!2404 (h!41980 tokens!494)))))

(declare-fun b!3309313 () Bool)

(assert (=> b!3309313 (= e!2058319 e!2058309)))

(declare-fun res!1342227 () Bool)

(assert (=> b!3309313 (=> res!1342227 e!2058309)))

(assert (=> b!3309313 (= res!1342227 (not (= lt!1121776 lt!1121771)))))

(assert (=> b!3309313 (= lt!1121771 (++!8861 (++!8861 lt!1121775 lt!1121767) lt!1121763))))

(assert (=> b!3309314 (= e!2058307 (and tp!1036440 tp!1036439))))

(assert (= (and start!308594 res!1342222) b!3309310))

(assert (= (and b!3309310 res!1342224) b!3309295))

(assert (= (and b!3309295 res!1342219) b!3309296))

(assert (= (and b!3309296 res!1342226) b!3309290))

(assert (= (and b!3309290 res!1342217) b!3309302))

(assert (= (and b!3309302 res!1342216) b!3309299))

(assert (= (and b!3309299 res!1342218) b!3309301))

(assert (= (and b!3309301 res!1342230) b!3309298))

(assert (= (and b!3309298 res!1342221) b!3309312))

(assert (= (and b!3309312 (not res!1342229)) b!3309303))

(assert (= (and b!3309303 (not res!1342223)) b!3309304))

(assert (= (and b!3309304 (not res!1342228)) b!3309308))

(assert (= (and b!3309308 (not res!1342225)) b!3309311))

(assert (= (and b!3309311 (not res!1342231)) b!3309292))

(assert (= (and b!3309292 (not res!1342220)) b!3309313))

(assert (= (and b!3309313 (not res!1342227)) b!3309309))

(assert (= b!3309305 b!3309314))

(assert (= b!3309294 b!3309305))

(assert (= (and start!308594 ((_ is Cons!36561) rules!2135)) b!3309294))

(assert (= b!3309297 b!3309300))

(assert (= b!3309293 b!3309297))

(assert (= b!3309289 b!3309293))

(assert (= (and start!308594 ((_ is Cons!36560) tokens!494)) b!3309289))

(assert (= b!3309306 b!3309291))

(assert (= b!3309307 b!3309306))

(assert (= start!308594 b!3309307))

(declare-fun m!3636539 () Bool)

(assert (=> start!308594 m!3636539))

(declare-fun m!3636541 () Bool)

(assert (=> b!3309299 m!3636541))

(declare-fun m!3636543 () Bool)

(assert (=> b!3309290 m!3636543))

(declare-fun m!3636545 () Bool)

(assert (=> b!3309311 m!3636545))

(declare-fun m!3636547 () Bool)

(assert (=> b!3309311 m!3636547))

(declare-fun m!3636549 () Bool)

(assert (=> b!3309306 m!3636549))

(declare-fun m!3636551 () Bool)

(assert (=> b!3309306 m!3636551))

(declare-fun m!3636553 () Bool)

(assert (=> b!3309305 m!3636553))

(declare-fun m!3636555 () Bool)

(assert (=> b!3309305 m!3636555))

(declare-fun m!3636557 () Bool)

(assert (=> b!3309313 m!3636557))

(assert (=> b!3309313 m!3636557))

(declare-fun m!3636559 () Bool)

(assert (=> b!3309313 m!3636559))

(declare-fun m!3636561 () Bool)

(assert (=> b!3309289 m!3636561))

(declare-fun m!3636563 () Bool)

(assert (=> b!3309293 m!3636563))

(declare-fun m!3636565 () Bool)

(assert (=> b!3309304 m!3636565))

(declare-fun m!3636567 () Bool)

(assert (=> b!3309312 m!3636567))

(declare-fun m!3636569 () Bool)

(assert (=> b!3309312 m!3636569))

(declare-fun m!3636571 () Bool)

(assert (=> b!3309312 m!3636571))

(declare-fun m!3636573 () Bool)

(assert (=> b!3309312 m!3636573))

(declare-fun m!3636575 () Bool)

(assert (=> b!3309312 m!3636575))

(declare-fun m!3636577 () Bool)

(assert (=> b!3309308 m!3636577))

(assert (=> b!3309308 m!3636577))

(declare-fun m!3636579 () Bool)

(assert (=> b!3309308 m!3636579))

(declare-fun m!3636581 () Bool)

(assert (=> b!3309308 m!3636581))

(declare-fun m!3636583 () Bool)

(assert (=> b!3309296 m!3636583))

(assert (=> b!3309296 m!3636583))

(declare-fun m!3636585 () Bool)

(assert (=> b!3309296 m!3636585))

(declare-fun m!3636587 () Bool)

(assert (=> b!3309303 m!3636587))

(assert (=> b!3309303 m!3636587))

(declare-fun m!3636589 () Bool)

(assert (=> b!3309303 m!3636589))

(declare-fun m!3636591 () Bool)

(assert (=> b!3309309 m!3636591))

(declare-fun m!3636593 () Bool)

(assert (=> b!3309309 m!3636593))

(declare-fun m!3636595 () Bool)

(assert (=> b!3309297 m!3636595))

(declare-fun m!3636597 () Bool)

(assert (=> b!3309297 m!3636597))

(declare-fun m!3636599 () Bool)

(assert (=> b!3309301 m!3636599))

(declare-fun m!3636601 () Bool)

(assert (=> b!3309310 m!3636601))

(declare-fun m!3636603 () Bool)

(assert (=> b!3309307 m!3636603))

(declare-fun m!3636605 () Bool)

(assert (=> b!3309292 m!3636605))

(declare-fun m!3636607 () Bool)

(assert (=> b!3309292 m!3636607))

(declare-fun m!3636609 () Bool)

(assert (=> b!3309292 m!3636609))

(declare-fun m!3636611 () Bool)

(assert (=> b!3309292 m!3636611))

(declare-fun m!3636613 () Bool)

(assert (=> b!3309292 m!3636613))

(declare-fun m!3636615 () Bool)

(assert (=> b!3309292 m!3636615))

(declare-fun m!3636617 () Bool)

(assert (=> b!3309292 m!3636617))

(assert (=> b!3309292 m!3636611))

(assert (=> b!3309292 m!3636607))

(assert (=> b!3309292 m!3636609))

(declare-fun m!3636619 () Bool)

(assert (=> b!3309292 m!3636619))

(declare-fun m!3636621 () Bool)

(assert (=> b!3309292 m!3636621))

(assert (=> b!3309292 m!3636619))

(assert (=> b!3309292 m!3636613))

(declare-fun m!3636623 () Bool)

(assert (=> b!3309292 m!3636623))

(declare-fun m!3636625 () Bool)

(assert (=> b!3309295 m!3636625))

(check-sat b_and!227101 (not b!3309290) (not b!3309293) (not b_next!87843) (not b_next!87837) (not b!3309301) (not start!308594) (not b_next!87841) (not b!3309297) (not b!3309306) (not b!3309289) (not b!3309309) (not b!3309296) (not b!3309305) b_and!227105 (not b!3309307) (not b!3309299) (not b!3309313) (not b!3309304) (not b_next!87835) (not b!3309311) (not b!3309294) b_and!227103 b_and!227095 (not b!3309303) (not b!3309295) (not b_next!87839) (not b!3309312) (not b!3309308) (not b_next!87833) b_and!227097 b_and!227099 (not b!3309310) (not b!3309292))
(check-sat b_and!227101 b_and!227105 (not b_next!87835) (not b_next!87839) (not b_next!87843) (not b_next!87837) (not b_next!87833) (not b_next!87841) b_and!227103 b_and!227095 b_and!227097 b_and!227099)
