; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299638 () Bool)

(assert start!299638)

(declare-fun b!3193786 () Bool)

(declare-fun b_free!84697 () Bool)

(declare-fun b_next!85401 () Bool)

(assert (=> b!3193786 (= b_free!84697 (not b_next!85401))))

(declare-fun tp!1009948 () Bool)

(declare-fun b_and!211839 () Bool)

(assert (=> b!3193786 (= tp!1009948 b_and!211839)))

(declare-fun b_free!84699 () Bool)

(declare-fun b_next!85403 () Bool)

(assert (=> b!3193786 (= b_free!84699 (not b_next!85403))))

(declare-fun tp!1009947 () Bool)

(declare-fun b_and!211841 () Bool)

(assert (=> b!3193786 (= tp!1009947 b_and!211841)))

(declare-fun b!3193783 () Bool)

(declare-fun b_free!84701 () Bool)

(declare-fun b_next!85405 () Bool)

(assert (=> b!3193783 (= b_free!84701 (not b_next!85405))))

(declare-fun tp!1009943 () Bool)

(declare-fun b_and!211843 () Bool)

(assert (=> b!3193783 (= tp!1009943 b_and!211843)))

(declare-fun b_free!84703 () Bool)

(declare-fun b_next!85407 () Bool)

(assert (=> b!3193783 (= b_free!84703 (not b_next!85407))))

(declare-fun tp!1009937 () Bool)

(declare-fun b_and!211845 () Bool)

(assert (=> b!3193783 (= tp!1009937 b_and!211845)))

(declare-fun b!3193785 () Bool)

(declare-fun b_free!84705 () Bool)

(declare-fun b_next!85409 () Bool)

(assert (=> b!3193785 (= b_free!84705 (not b_next!85409))))

(declare-fun tp!1009941 () Bool)

(declare-fun b_and!211847 () Bool)

(assert (=> b!3193785 (= tp!1009941 b_and!211847)))

(declare-fun b_free!84707 () Bool)

(declare-fun b_next!85411 () Bool)

(assert (=> b!3193785 (= b_free!84707 (not b_next!85411))))

(declare-fun tp!1009940 () Bool)

(declare-fun b_and!211849 () Bool)

(assert (=> b!3193785 (= tp!1009940 b_and!211849)))

(declare-fun b!3193766 () Bool)

(declare-fun e!1990850 () Bool)

(declare-fun e!1990856 () Bool)

(declare-fun tp!1009939 () Bool)

(assert (=> b!3193766 (= e!1990850 (and e!1990856 tp!1009939))))

(declare-fun b!3193767 () Bool)

(declare-fun res!1299191 () Bool)

(declare-fun e!1990866 () Bool)

(assert (=> b!3193767 (=> res!1299191 e!1990866)))

(declare-datatypes ((LexerInterface!4765 0))(
  ( (LexerInterfaceExt!4762 (__x!23029 Int)) (Lexer!4763) )
))
(declare-fun thiss!18206 () LexerInterface!4765)

(declare-datatypes ((C!20056 0))(
  ( (C!20057 (val!12076 Int)) )
))
(declare-datatypes ((Regex!9935 0))(
  ( (ElementMatch!9935 (c!536140 C!20056)) (Concat!15341 (regOne!20382 Regex!9935) (regTwo!20382 Regex!9935)) (EmptyExpr!9935) (Star!9935 (reg!10264 Regex!9935)) (EmptyLang!9935) (Union!9935 (regOne!20383 Regex!9935) (regTwo!20383 Regex!9935)) )
))
(declare-datatypes ((List!36100 0))(
  ( (Nil!35976) (Cons!35976 (h!41396 (_ BitVec 16)) (t!236499 List!36100)) )
))
(declare-datatypes ((TokenValue!5406 0))(
  ( (FloatLiteralValue!10812 (text!38287 List!36100)) (TokenValueExt!5405 (__x!23030 Int)) (Broken!27030 (value!167950 List!36100)) (Object!5529) (End!5406) (Def!5406) (Underscore!5406) (Match!5406) (Else!5406) (Error!5406) (Case!5406) (If!5406) (Extends!5406) (Abstract!5406) (Class!5406) (Val!5406) (DelimiterValue!10812 (del!5466 List!36100)) (KeywordValue!5412 (value!167951 List!36100)) (CommentValue!10812 (value!167952 List!36100)) (WhitespaceValue!10812 (value!167953 List!36100)) (IndentationValue!5406 (value!167954 List!36100)) (String!40363) (Int32!5406) (Broken!27031 (value!167955 List!36100)) (Boolean!5407) (Unit!50383) (OperatorValue!5409 (op!5466 List!36100)) (IdentifierValue!10812 (value!167956 List!36100)) (IdentifierValue!10813 (value!167957 List!36100)) (WhitespaceValue!10813 (value!167958 List!36100)) (True!10812) (False!10812) (Broken!27032 (value!167959 List!36100)) (Broken!27033 (value!167960 List!36100)) (True!10813) (RightBrace!5406) (RightBracket!5406) (Colon!5406) (Null!5406) (Comma!5406) (LeftBracket!5406) (False!10813) (LeftBrace!5406) (ImaginaryLiteralValue!5406 (text!38288 List!36100)) (StringLiteralValue!16218 (value!167961 List!36100)) (EOFValue!5406 (value!167962 List!36100)) (IdentValue!5406 (value!167963 List!36100)) (DelimiterValue!10813 (value!167964 List!36100)) (DedentValue!5406 (value!167965 List!36100)) (NewLineValue!5406 (value!167966 List!36100)) (IntegerValue!16218 (value!167967 (_ BitVec 32)) (text!38289 List!36100)) (IntegerValue!16219 (value!167968 Int) (text!38290 List!36100)) (Times!5406) (Or!5406) (Equal!5406) (Minus!5406) (Broken!27034 (value!167969 List!36100)) (And!5406) (Div!5406) (LessEqual!5406) (Mod!5406) (Concat!15342) (Not!5406) (Plus!5406) (SpaceValue!5406 (value!167970 List!36100)) (IntegerValue!16220 (value!167971 Int) (text!38291 List!36100)) (StringLiteralValue!16219 (text!38292 List!36100)) (FloatLiteralValue!10813 (text!38293 List!36100)) (BytesLiteralValue!5406 (value!167972 List!36100)) (CommentValue!10813 (value!167973 List!36100)) (StringLiteralValue!16220 (value!167974 List!36100)) (ErrorTokenValue!5406 (msg!5467 List!36100)) )
))
(declare-datatypes ((List!36101 0))(
  ( (Nil!35977) (Cons!35977 (h!41397 C!20056) (t!236500 List!36101)) )
))
(declare-datatypes ((IArray!21459 0))(
  ( (IArray!21460 (innerList!10787 List!36101)) )
))
(declare-datatypes ((Conc!10727 0))(
  ( (Node!10727 (left!27965 Conc!10727) (right!28295 Conc!10727) (csize!21684 Int) (cheight!10938 Int)) (Leaf!16926 (xs!13845 IArray!21459) (csize!21685 Int)) (Empty!10727) )
))
(declare-datatypes ((BalanceConc!21068 0))(
  ( (BalanceConc!21069 (c!536141 Conc!10727)) )
))
(declare-datatypes ((String!40364 0))(
  ( (String!40365 (value!167975 String)) )
))
(declare-datatypes ((TokenValueInjection!10240 0))(
  ( (TokenValueInjection!10241 (toValue!7244 Int) (toChars!7103 Int)) )
))
(declare-datatypes ((Rule!10152 0))(
  ( (Rule!10153 (regex!5176 Regex!9935) (tag!5694 String!40364) (isSeparator!5176 Bool) (transformation!5176 TokenValueInjection!10240)) )
))
(declare-datatypes ((List!36102 0))(
  ( (Nil!35978) (Cons!35978 (h!41398 Rule!10152) (t!236501 List!36102)) )
))
(declare-fun rules!2135 () List!36102)

(declare-fun lt!1075884 () List!36101)

(declare-datatypes ((Token!9718 0))(
  ( (Token!9719 (value!167976 TokenValue!5406) (rule!7608 Rule!10152) (size!27111 Int) (originalCharacters!5890 List!36101)) )
))
(declare-datatypes ((List!36103 0))(
  ( (Nil!35979) (Cons!35979 (h!41399 Token!9718) (t!236502 List!36103)) )
))
(declare-datatypes ((IArray!21461 0))(
  ( (IArray!21462 (innerList!10788 List!36103)) )
))
(declare-datatypes ((Conc!10728 0))(
  ( (Node!10728 (left!27966 Conc!10728) (right!28296 Conc!10728) (csize!21686 Int) (cheight!10939 Int)) (Leaf!16927 (xs!13846 IArray!21461) (csize!21687 Int)) (Empty!10728) )
))
(declare-datatypes ((BalanceConc!21070 0))(
  ( (BalanceConc!21071 (c!536142 Conc!10728)) )
))
(declare-fun isEmpty!20082 (BalanceConc!21070) Bool)

(declare-datatypes ((tuple2!35348 0))(
  ( (tuple2!35349 (_1!20808 BalanceConc!21070) (_2!20808 BalanceConc!21068)) )
))
(declare-fun lex!2095 (LexerInterface!4765 List!36102 BalanceConc!21068) tuple2!35348)

(declare-fun seqFromList!3423 (List!36101) BalanceConc!21068)

(assert (=> b!3193767 (= res!1299191 (isEmpty!20082 (_1!20808 (lex!2095 thiss!18206 rules!2135 (seqFromList!3423 lt!1075884)))))))

(declare-fun b!3193768 () Bool)

(declare-fun res!1299188 () Bool)

(declare-fun e!1990859 () Bool)

(assert (=> b!3193768 (=> (not res!1299188) (not e!1990859))))

(declare-fun isEmpty!20083 (List!36102) Bool)

(assert (=> b!3193768 (= res!1299188 (not (isEmpty!20083 rules!2135)))))

(declare-fun b!3193769 () Bool)

(declare-fun res!1299195 () Bool)

(assert (=> b!3193769 (=> (not res!1299195) (not e!1990859))))

(declare-fun rulesInvariant!4162 (LexerInterface!4765 List!36102) Bool)

(assert (=> b!3193769 (= res!1299195 (rulesInvariant!4162 thiss!18206 rules!2135))))

(declare-fun b!3193770 () Bool)

(declare-fun e!1990858 () Bool)

(declare-fun tp!1009942 () Bool)

(declare-fun tokens!494 () List!36103)

(declare-fun e!1990863 () Bool)

(declare-fun inv!48827 (Token!9718) Bool)

(assert (=> b!3193770 (= e!1990858 (and (inv!48827 (h!41399 tokens!494)) e!1990863 tp!1009942))))

(declare-fun separatorToken!241 () Token!9718)

(declare-fun e!1990861 () Bool)

(declare-fun e!1990864 () Bool)

(declare-fun tp!1009936 () Bool)

(declare-fun b!3193771 () Bool)

(declare-fun inv!21 (TokenValue!5406) Bool)

(assert (=> b!3193771 (= e!1990864 (and (inv!21 (value!167976 separatorToken!241)) e!1990861 tp!1009936))))

(declare-fun b!3193772 () Bool)

(declare-fun tp!1009944 () Bool)

(declare-fun e!1990857 () Bool)

(declare-fun inv!48824 (String!40364) Bool)

(declare-fun inv!48828 (TokenValueInjection!10240) Bool)

(assert (=> b!3193772 (= e!1990856 (and tp!1009944 (inv!48824 (tag!5694 (h!41398 rules!2135))) (inv!48828 (transformation!5176 (h!41398 rules!2135))) e!1990857))))

(declare-fun b!3193773 () Bool)

(declare-fun res!1299193 () Bool)

(assert (=> b!3193773 (=> (not res!1299193) (not e!1990859))))

(get-info :version)

(assert (=> b!3193773 (= res!1299193 (and (not ((_ is Nil!35979) tokens!494)) (not ((_ is Nil!35979) (t!236502 tokens!494)))))))

(declare-fun b!3193774 () Bool)

(declare-fun res!1299184 () Bool)

(assert (=> b!3193774 (=> (not res!1299184) (not e!1990859))))

(declare-fun lambda!116891 () Int)

(declare-fun forall!7316 (List!36103 Int) Bool)

(assert (=> b!3193774 (= res!1299184 (forall!7316 tokens!494 lambda!116891))))

(declare-fun tp!1009938 () Bool)

(declare-fun e!1990849 () Bool)

(declare-fun e!1990851 () Bool)

(declare-fun b!3193775 () Bool)

(assert (=> b!3193775 (= e!1990851 (and tp!1009938 (inv!48824 (tag!5694 (rule!7608 (h!41399 tokens!494)))) (inv!48828 (transformation!5176 (rule!7608 (h!41399 tokens!494)))) e!1990849))))

(declare-fun b!3193777 () Bool)

(assert (=> b!3193777 (= e!1990866 true)))

(declare-datatypes ((Unit!50384 0))(
  ( (Unit!50385) )
))
(declare-fun lt!1075881 () Unit!50384)

(declare-fun forallContained!1147 (List!36103 Int Token!9718) Unit!50384)

(assert (=> b!3193777 (= lt!1075881 (forallContained!1147 tokens!494 lambda!116891 (h!41399 (t!236502 tokens!494))))))

(declare-fun lt!1075880 () Unit!50384)

(assert (=> b!3193777 (= lt!1075880 (forallContained!1147 tokens!494 lambda!116891 (h!41399 tokens!494)))))

(declare-fun b!3193778 () Bool)

(declare-fun tp!1009945 () Bool)

(assert (=> b!3193778 (= e!1990863 (and (inv!21 (value!167976 (h!41399 tokens!494))) e!1990851 tp!1009945))))

(declare-fun b!3193779 () Bool)

(declare-fun res!1299186 () Bool)

(assert (=> b!3193779 (=> (not res!1299186) (not e!1990859))))

(declare-fun sepAndNonSepRulesDisjointChars!1370 (List!36102 List!36102) Bool)

(assert (=> b!3193779 (= res!1299186 (sepAndNonSepRulesDisjointChars!1370 rules!2135 rules!2135))))

(declare-fun b!3193780 () Bool)

(declare-fun res!1299187 () Bool)

(assert (=> b!3193780 (=> (not res!1299187) (not e!1990859))))

(declare-fun rulesProduceEachTokenIndividually!1216 (LexerInterface!4765 List!36102 BalanceConc!21070) Bool)

(declare-fun seqFromList!3424 (List!36103) BalanceConc!21070)

(assert (=> b!3193780 (= res!1299187 (rulesProduceEachTokenIndividually!1216 thiss!18206 rules!2135 (seqFromList!3424 tokens!494)))))

(declare-fun b!3193781 () Bool)

(declare-fun res!1299196 () Bool)

(assert (=> b!3193781 (=> (not res!1299196) (not e!1990859))))

(assert (=> b!3193781 (= res!1299196 (isSeparator!5176 (rule!7608 separatorToken!241)))))

(declare-fun b!3193782 () Bool)

(declare-fun e!1990862 () Bool)

(assert (=> b!3193782 (= e!1990859 (not e!1990862))))

(declare-fun res!1299185 () Bool)

(assert (=> b!3193782 (=> res!1299185 e!1990862)))

(declare-fun lt!1075885 () List!36101)

(declare-fun lt!1075883 () List!36101)

(assert (=> b!3193782 (= res!1299185 (not (= lt!1075885 lt!1075883)))))

(declare-fun printList!1315 (LexerInterface!4765 List!36103) List!36101)

(assert (=> b!3193782 (= lt!1075883 (printList!1315 thiss!18206 (Cons!35979 (h!41399 tokens!494) Nil!35979)))))

(declare-fun lt!1075882 () BalanceConc!21068)

(declare-fun list!12785 (BalanceConc!21068) List!36101)

(assert (=> b!3193782 (= lt!1075885 (list!12785 lt!1075882))))

(declare-fun lt!1075886 () BalanceConc!21070)

(declare-fun printTailRec!1262 (LexerInterface!4765 BalanceConc!21070 Int BalanceConc!21068) BalanceConc!21068)

(assert (=> b!3193782 (= lt!1075882 (printTailRec!1262 thiss!18206 lt!1075886 0 (BalanceConc!21069 Empty!10727)))))

(declare-fun print!1830 (LexerInterface!4765 BalanceConc!21070) BalanceConc!21068)

(assert (=> b!3193782 (= lt!1075882 (print!1830 thiss!18206 lt!1075886))))

(declare-fun singletonSeq!2272 (Token!9718) BalanceConc!21070)

(assert (=> b!3193782 (= lt!1075886 (singletonSeq!2272 (h!41399 tokens!494)))))

(assert (=> b!3193783 (= e!1990857 (and tp!1009943 tp!1009937))))

(declare-fun b!3193784 () Bool)

(declare-fun res!1299192 () Bool)

(assert (=> b!3193784 (=> res!1299192 e!1990866)))

(declare-fun rulesProduceIndividualToken!2257 (LexerInterface!4765 List!36102 Token!9718) Bool)

(assert (=> b!3193784 (= res!1299192 (not (rulesProduceIndividualToken!2257 thiss!18206 rules!2135 (h!41399 tokens!494))))))

(declare-fun e!1990855 () Bool)

(assert (=> b!3193785 (= e!1990855 (and tp!1009941 tp!1009940))))

(declare-fun b!3193776 () Bool)

(assert (=> b!3193776 (= e!1990862 e!1990866)))

(declare-fun res!1299189 () Bool)

(assert (=> b!3193776 (=> res!1299189 e!1990866)))

(assert (=> b!3193776 (= res!1299189 (or (not (= lt!1075883 lt!1075884)) (not (= lt!1075885 lt!1075884))))))

(declare-fun charsOf!3192 (Token!9718) BalanceConc!21068)

(assert (=> b!3193776 (= lt!1075884 (list!12785 (charsOf!3192 (h!41399 tokens!494))))))

(declare-fun res!1299190 () Bool)

(assert (=> start!299638 (=> (not res!1299190) (not e!1990859))))

(assert (=> start!299638 (= res!1299190 ((_ is Lexer!4763) thiss!18206))))

(assert (=> start!299638 e!1990859))

(assert (=> start!299638 true))

(assert (=> start!299638 e!1990850))

(assert (=> start!299638 e!1990858))

(assert (=> start!299638 (and (inv!48827 separatorToken!241) e!1990864)))

(assert (=> b!3193786 (= e!1990849 (and tp!1009948 tp!1009947))))

(declare-fun b!3193787 () Bool)

(declare-fun res!1299194 () Bool)

(assert (=> b!3193787 (=> (not res!1299194) (not e!1990859))))

(assert (=> b!3193787 (= res!1299194 (rulesProduceIndividualToken!2257 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3193788 () Bool)

(declare-fun tp!1009946 () Bool)

(assert (=> b!3193788 (= e!1990861 (and tp!1009946 (inv!48824 (tag!5694 (rule!7608 separatorToken!241))) (inv!48828 (transformation!5176 (rule!7608 separatorToken!241))) e!1990855))))

(assert (= (and start!299638 res!1299190) b!3193768))

(assert (= (and b!3193768 res!1299188) b!3193769))

(assert (= (and b!3193769 res!1299195) b!3193780))

(assert (= (and b!3193780 res!1299187) b!3193787))

(assert (= (and b!3193787 res!1299194) b!3193781))

(assert (= (and b!3193781 res!1299196) b!3193774))

(assert (= (and b!3193774 res!1299184) b!3193779))

(assert (= (and b!3193779 res!1299186) b!3193773))

(assert (= (and b!3193773 res!1299193) b!3193782))

(assert (= (and b!3193782 (not res!1299185)) b!3193776))

(assert (= (and b!3193776 (not res!1299189)) b!3193784))

(assert (= (and b!3193784 (not res!1299192)) b!3193767))

(assert (= (and b!3193767 (not res!1299191)) b!3193777))

(assert (= b!3193772 b!3193783))

(assert (= b!3193766 b!3193772))

(assert (= (and start!299638 ((_ is Cons!35978) rules!2135)) b!3193766))

(assert (= b!3193775 b!3193786))

(assert (= b!3193778 b!3193775))

(assert (= b!3193770 b!3193778))

(assert (= (and start!299638 ((_ is Cons!35979) tokens!494)) b!3193770))

(assert (= b!3193788 b!3193785))

(assert (= b!3193771 b!3193788))

(assert (= start!299638 b!3193771))

(declare-fun m!3453519 () Bool)

(assert (=> b!3193767 m!3453519))

(assert (=> b!3193767 m!3453519))

(declare-fun m!3453521 () Bool)

(assert (=> b!3193767 m!3453521))

(declare-fun m!3453523 () Bool)

(assert (=> b!3193767 m!3453523))

(declare-fun m!3453525 () Bool)

(assert (=> start!299638 m!3453525))

(declare-fun m!3453527 () Bool)

(assert (=> b!3193776 m!3453527))

(assert (=> b!3193776 m!3453527))

(declare-fun m!3453529 () Bool)

(assert (=> b!3193776 m!3453529))

(declare-fun m!3453531 () Bool)

(assert (=> b!3193779 m!3453531))

(declare-fun m!3453533 () Bool)

(assert (=> b!3193788 m!3453533))

(declare-fun m!3453535 () Bool)

(assert (=> b!3193788 m!3453535))

(declare-fun m!3453537 () Bool)

(assert (=> b!3193768 m!3453537))

(declare-fun m!3453539 () Bool)

(assert (=> b!3193778 m!3453539))

(declare-fun m!3453541 () Bool)

(assert (=> b!3193774 m!3453541))

(declare-fun m!3453543 () Bool)

(assert (=> b!3193787 m!3453543))

(declare-fun m!3453545 () Bool)

(assert (=> b!3193769 m!3453545))

(declare-fun m!3453547 () Bool)

(assert (=> b!3193772 m!3453547))

(declare-fun m!3453549 () Bool)

(assert (=> b!3193772 m!3453549))

(declare-fun m!3453551 () Bool)

(assert (=> b!3193780 m!3453551))

(assert (=> b!3193780 m!3453551))

(declare-fun m!3453553 () Bool)

(assert (=> b!3193780 m!3453553))

(declare-fun m!3453555 () Bool)

(assert (=> b!3193784 m!3453555))

(declare-fun m!3453557 () Bool)

(assert (=> b!3193782 m!3453557))

(declare-fun m!3453559 () Bool)

(assert (=> b!3193782 m!3453559))

(declare-fun m!3453561 () Bool)

(assert (=> b!3193782 m!3453561))

(declare-fun m!3453563 () Bool)

(assert (=> b!3193782 m!3453563))

(declare-fun m!3453565 () Bool)

(assert (=> b!3193782 m!3453565))

(declare-fun m!3453567 () Bool)

(assert (=> b!3193775 m!3453567))

(declare-fun m!3453569 () Bool)

(assert (=> b!3193775 m!3453569))

(declare-fun m!3453571 () Bool)

(assert (=> b!3193777 m!3453571))

(declare-fun m!3453573 () Bool)

(assert (=> b!3193777 m!3453573))

(declare-fun m!3453575 () Bool)

(assert (=> b!3193770 m!3453575))

(declare-fun m!3453577 () Bool)

(assert (=> b!3193771 m!3453577))

(check-sat (not b!3193768) b_and!211847 (not b!3193777) (not b!3193770) (not b_next!85403) b_and!211845 (not b!3193779) (not b!3193766) (not b!3193780) (not b!3193767) (not b_next!85407) (not b_next!85409) (not b_next!85405) (not b!3193776) (not b!3193784) (not b!3193775) b_and!211843 (not b!3193769) b_and!211841 (not b!3193788) (not b!3193782) b_and!211839 (not b!3193771) (not b_next!85411) (not b!3193774) (not b!3193778) (not start!299638) (not b!3193772) (not b!3193787) b_and!211849 (not b_next!85401))
(check-sat b_and!211847 (not b_next!85403) b_and!211843 b_and!211841 b_and!211845 (not b_next!85407) (not b_next!85409) (not b_next!85405) b_and!211839 (not b_next!85411) b_and!211849 (not b_next!85401))
