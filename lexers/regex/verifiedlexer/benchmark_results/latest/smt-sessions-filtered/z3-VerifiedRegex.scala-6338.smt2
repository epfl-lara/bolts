; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323726 () Bool)

(assert start!323726)

(declare-fun b!3478829 () Bool)

(declare-fun b_free!90233 () Bool)

(declare-fun b_next!90937 () Bool)

(assert (=> b!3478829 (= b_free!90233 (not b_next!90937))))

(declare-fun tp!1080955 () Bool)

(declare-fun b_and!245419 () Bool)

(assert (=> b!3478829 (= tp!1080955 b_and!245419)))

(declare-fun b_free!90235 () Bool)

(declare-fun b_next!90939 () Bool)

(assert (=> b!3478829 (= b_free!90235 (not b_next!90939))))

(declare-fun tp!1080952 () Bool)

(declare-fun b_and!245421 () Bool)

(assert (=> b!3478829 (= tp!1080952 b_and!245421)))

(declare-fun b!3478807 () Bool)

(declare-fun b_free!90237 () Bool)

(declare-fun b_next!90941 () Bool)

(assert (=> b!3478807 (= b_free!90237 (not b_next!90941))))

(declare-fun tp!1080954 () Bool)

(declare-fun b_and!245423 () Bool)

(assert (=> b!3478807 (= tp!1080954 b_and!245423)))

(declare-fun b_free!90239 () Bool)

(declare-fun b_next!90943 () Bool)

(assert (=> b!3478807 (= b_free!90239 (not b_next!90943))))

(declare-fun tp!1080949 () Bool)

(declare-fun b_and!245425 () Bool)

(assert (=> b!3478807 (= tp!1080949 b_and!245425)))

(declare-fun b!3478800 () Bool)

(declare-fun b_free!90241 () Bool)

(declare-fun b_next!90945 () Bool)

(assert (=> b!3478800 (= b_free!90241 (not b_next!90945))))

(declare-fun tp!1080959 () Bool)

(declare-fun b_and!245427 () Bool)

(assert (=> b!3478800 (= tp!1080959 b_and!245427)))

(declare-fun b_free!90243 () Bool)

(declare-fun b_next!90947 () Bool)

(assert (=> b!3478800 (= b_free!90243 (not b_next!90947))))

(declare-fun tp!1080951 () Bool)

(declare-fun b_and!245429 () Bool)

(assert (=> b!3478800 (= tp!1080951 b_and!245429)))

(declare-fun bs!561827 () Bool)

(declare-fun b!3478810 () Bool)

(declare-fun b!3478811 () Bool)

(assert (= bs!561827 (and b!3478810 b!3478811)))

(declare-fun lambda!122185 () Int)

(declare-fun lambda!122184 () Int)

(assert (=> bs!561827 (not (= lambda!122185 lambda!122184))))

(declare-fun b!3478842 () Bool)

(declare-fun e!2154936 () Bool)

(assert (=> b!3478842 (= e!2154936 true)))

(declare-fun b!3478841 () Bool)

(declare-fun e!2154935 () Bool)

(assert (=> b!3478841 (= e!2154935 e!2154936)))

(declare-fun b!3478840 () Bool)

(declare-fun e!2154934 () Bool)

(assert (=> b!3478840 (= e!2154934 e!2154935)))

(assert (=> b!3478810 e!2154934))

(assert (= b!3478841 b!3478842))

(assert (= b!3478840 b!3478841))

(declare-datatypes ((C!20616 0))(
  ( (C!20617 (val!12356 Int)) )
))
(declare-datatypes ((Regex!10215 0))(
  ( (ElementMatch!10215 (c!596544 C!20616)) (Concat!15901 (regOne!20942 Regex!10215) (regTwo!20942 Regex!10215)) (EmptyExpr!10215) (Star!10215 (reg!10544 Regex!10215)) (EmptyLang!10215) (Union!10215 (regOne!20943 Regex!10215) (regTwo!20943 Regex!10215)) )
))
(declare-datatypes ((List!37368 0))(
  ( (Nil!37244) (Cons!37244 (h!42664 (_ BitVec 16)) (t!275319 List!37368)) )
))
(declare-datatypes ((TokenValue!5686 0))(
  ( (FloatLiteralValue!11372 (text!40247 List!37368)) (TokenValueExt!5685 (__x!23589 Int)) (Broken!28430 (value!175930 List!37368)) (Object!5809) (End!5686) (Def!5686) (Underscore!5686) (Match!5686) (Else!5686) (Error!5686) (Case!5686) (If!5686) (Extends!5686) (Abstract!5686) (Class!5686) (Val!5686) (DelimiterValue!11372 (del!5746 List!37368)) (KeywordValue!5692 (value!175931 List!37368)) (CommentValue!11372 (value!175932 List!37368)) (WhitespaceValue!11372 (value!175933 List!37368)) (IndentationValue!5686 (value!175934 List!37368)) (String!41763) (Int32!5686) (Broken!28431 (value!175935 List!37368)) (Boolean!5687) (Unit!52677) (OperatorValue!5689 (op!5746 List!37368)) (IdentifierValue!11372 (value!175936 List!37368)) (IdentifierValue!11373 (value!175937 List!37368)) (WhitespaceValue!11373 (value!175938 List!37368)) (True!11372) (False!11372) (Broken!28432 (value!175939 List!37368)) (Broken!28433 (value!175940 List!37368)) (True!11373) (RightBrace!5686) (RightBracket!5686) (Colon!5686) (Null!5686) (Comma!5686) (LeftBracket!5686) (False!11373) (LeftBrace!5686) (ImaginaryLiteralValue!5686 (text!40248 List!37368)) (StringLiteralValue!17058 (value!175941 List!37368)) (EOFValue!5686 (value!175942 List!37368)) (IdentValue!5686 (value!175943 List!37368)) (DelimiterValue!11373 (value!175944 List!37368)) (DedentValue!5686 (value!175945 List!37368)) (NewLineValue!5686 (value!175946 List!37368)) (IntegerValue!17058 (value!175947 (_ BitVec 32)) (text!40249 List!37368)) (IntegerValue!17059 (value!175948 Int) (text!40250 List!37368)) (Times!5686) (Or!5686) (Equal!5686) (Minus!5686) (Broken!28434 (value!175949 List!37368)) (And!5686) (Div!5686) (LessEqual!5686) (Mod!5686) (Concat!15902) (Not!5686) (Plus!5686) (SpaceValue!5686 (value!175950 List!37368)) (IntegerValue!17060 (value!175951 Int) (text!40251 List!37368)) (StringLiteralValue!17059 (text!40252 List!37368)) (FloatLiteralValue!11373 (text!40253 List!37368)) (BytesLiteralValue!5686 (value!175952 List!37368)) (CommentValue!11373 (value!175953 List!37368)) (StringLiteralValue!17060 (value!175954 List!37368)) (ErrorTokenValue!5686 (msg!5747 List!37368)) )
))
(declare-datatypes ((List!37369 0))(
  ( (Nil!37245) (Cons!37245 (h!42665 C!20616) (t!275320 List!37369)) )
))
(declare-datatypes ((IArray!22579 0))(
  ( (IArray!22580 (innerList!11347 List!37369)) )
))
(declare-datatypes ((Conc!11287 0))(
  ( (Node!11287 (left!29077 Conc!11287) (right!29407 Conc!11287) (csize!22804 Int) (cheight!11498 Int)) (Leaf!17626 (xs!14465 IArray!22579) (csize!22805 Int)) (Empty!11287) )
))
(declare-datatypes ((BalanceConc!22188 0))(
  ( (BalanceConc!22189 (c!596545 Conc!11287)) )
))
(declare-datatypes ((String!41764 0))(
  ( (String!41765 (value!175955 String)) )
))
(declare-datatypes ((TokenValueInjection!10800 0))(
  ( (TokenValueInjection!10801 (toValue!7692 Int) (toChars!7551 Int)) )
))
(declare-datatypes ((Rule!10712 0))(
  ( (Rule!10713 (regex!5456 Regex!10215) (tag!6076 String!41764) (isSeparator!5456 Bool) (transformation!5456 TokenValueInjection!10800)) )
))
(declare-datatypes ((List!37370 0))(
  ( (Nil!37246) (Cons!37246 (h!42666 Rule!10712) (t!275321 List!37370)) )
))
(declare-fun rules!2135 () List!37370)

(get-info :version)

(assert (= (and b!3478810 ((_ is Cons!37246) rules!2135)) b!3478840))

(declare-fun order!19921 () Int)

(declare-fun order!19923 () Int)

(declare-fun dynLambda!15756 (Int Int) Int)

(declare-fun dynLambda!15757 (Int Int) Int)

(assert (=> b!3478842 (< (dynLambda!15756 order!19921 (toValue!7692 (transformation!5456 (h!42666 rules!2135)))) (dynLambda!15757 order!19923 lambda!122185))))

(declare-fun order!19925 () Int)

(declare-fun dynLambda!15758 (Int Int) Int)

(assert (=> b!3478842 (< (dynLambda!15758 order!19925 (toChars!7551 (transformation!5456 (h!42666 rules!2135)))) (dynLambda!15757 order!19923 lambda!122185))))

(assert (=> b!3478810 true))

(declare-fun b!3478794 () Bool)

(declare-fun e!2154905 () Bool)

(declare-fun e!2154921 () Bool)

(assert (=> b!3478794 (= e!2154905 e!2154921)))

(declare-fun res!1403716 () Bool)

(assert (=> b!3478794 (=> res!1403716 e!2154921)))

(declare-fun lt!1184512 () List!37369)

(declare-fun lt!1184513 () List!37369)

(declare-fun lt!1184514 () List!37369)

(assert (=> b!3478794 (= res!1403716 (or (not (= lt!1184513 lt!1184514)) (not (= lt!1184512 lt!1184514))))))

(declare-datatypes ((Token!10278 0))(
  ( (Token!10279 (value!175956 TokenValue!5686) (rule!8058 Rule!10712) (size!28283 Int) (originalCharacters!6170 List!37369)) )
))
(declare-datatypes ((List!37371 0))(
  ( (Nil!37247) (Cons!37247 (h!42667 Token!10278) (t!275322 List!37371)) )
))
(declare-fun tokens!494 () List!37371)

(declare-fun list!13581 (BalanceConc!22188) List!37369)

(declare-fun charsOf!3470 (Token!10278) BalanceConc!22188)

(assert (=> b!3478794 (= lt!1184514 (list!13581 (charsOf!3470 (h!42667 tokens!494))))))

(declare-fun b!3478795 () Bool)

(declare-datatypes ((Unit!52678 0))(
  ( (Unit!52679) )
))
(declare-fun e!2154908 () Unit!52678)

(declare-fun Unit!52680 () Unit!52678)

(assert (=> b!3478795 (= e!2154908 Unit!52680)))

(declare-fun lt!1184497 () Unit!52678)

(declare-fun separatorToken!241 () Token!10278)

(declare-fun lt!1184522 () C!20616)

(declare-fun lt!1184517 () List!37369)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!514 (Regex!10215 List!37369 C!20616) Unit!52678)

(assert (=> b!3478795 (= lt!1184497 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!514 (regex!5456 (rule!8058 separatorToken!241)) lt!1184517 lt!1184522))))

(declare-fun res!1403696 () Bool)

(declare-fun matchR!4799 (Regex!10215 List!37369) Bool)

(assert (=> b!3478795 (= res!1403696 (not (matchR!4799 (regex!5456 (rule!8058 separatorToken!241)) lt!1184517)))))

(declare-fun e!2154926 () Bool)

(assert (=> b!3478795 (=> (not res!1403696) (not e!2154926))))

(assert (=> b!3478795 e!2154926))

(declare-fun b!3478796 () Bool)

(declare-fun e!2154923 () Bool)

(assert (=> b!3478796 (= e!2154923 (not e!2154905))))

(declare-fun res!1403695 () Bool)

(assert (=> b!3478796 (=> res!1403695 e!2154905)))

(assert (=> b!3478796 (= res!1403695 (not (= lt!1184512 lt!1184513)))))

(declare-datatypes ((LexerInterface!5045 0))(
  ( (LexerInterfaceExt!5042 (__x!23590 Int)) (Lexer!5043) )
))
(declare-fun thiss!18206 () LexerInterface!5045)

(declare-fun printList!1593 (LexerInterface!5045 List!37371) List!37369)

(assert (=> b!3478796 (= lt!1184513 (printList!1593 thiss!18206 (Cons!37247 (h!42667 tokens!494) Nil!37247)))))

(declare-fun lt!1184510 () BalanceConc!22188)

(assert (=> b!3478796 (= lt!1184512 (list!13581 lt!1184510))))

(declare-datatypes ((IArray!22581 0))(
  ( (IArray!22582 (innerList!11348 List!37371)) )
))
(declare-datatypes ((Conc!11288 0))(
  ( (Node!11288 (left!29078 Conc!11288) (right!29408 Conc!11288) (csize!22806 Int) (cheight!11499 Int)) (Leaf!17627 (xs!14466 IArray!22581) (csize!22807 Int)) (Empty!11288) )
))
(declare-datatypes ((BalanceConc!22190 0))(
  ( (BalanceConc!22191 (c!596546 Conc!11288)) )
))
(declare-fun lt!1184502 () BalanceConc!22190)

(declare-fun printTailRec!1540 (LexerInterface!5045 BalanceConc!22190 Int BalanceConc!22188) BalanceConc!22188)

(assert (=> b!3478796 (= lt!1184510 (printTailRec!1540 thiss!18206 lt!1184502 0 (BalanceConc!22189 Empty!11287)))))

(declare-fun print!2110 (LexerInterface!5045 BalanceConc!22190) BalanceConc!22188)

(assert (=> b!3478796 (= lt!1184510 (print!2110 thiss!18206 lt!1184502))))

(declare-fun singletonSeq!2552 (Token!10278) BalanceConc!22190)

(assert (=> b!3478796 (= lt!1184502 (singletonSeq!2552 (h!42667 tokens!494)))))

(declare-fun b!3478797 () Bool)

(declare-fun e!2154897 () Bool)

(declare-fun e!2154898 () Bool)

(assert (=> b!3478797 (= e!2154897 e!2154898)))

(declare-fun res!1403703 () Bool)

(assert (=> b!3478797 (=> (not res!1403703) (not e!2154898))))

(declare-fun lt!1184494 () Rule!10712)

(assert (=> b!3478797 (= res!1403703 (matchR!4799 (regex!5456 lt!1184494) lt!1184514))))

(declare-datatypes ((Option!7565 0))(
  ( (None!7564) (Some!7564 (v!36944 Rule!10712)) )
))
(declare-fun lt!1184516 () Option!7565)

(declare-fun get!11935 (Option!7565) Rule!10712)

(assert (=> b!3478797 (= lt!1184494 (get!11935 lt!1184516))))

(declare-fun res!1403699 () Bool)

(assert (=> start!323726 (=> (not res!1403699) (not e!2154923))))

(assert (=> start!323726 (= res!1403699 ((_ is Lexer!5043) thiss!18206))))

(assert (=> start!323726 e!2154923))

(assert (=> start!323726 true))

(declare-fun e!2154917 () Bool)

(assert (=> start!323726 e!2154917))

(declare-fun e!2154911 () Bool)

(assert (=> start!323726 e!2154911))

(declare-fun e!2154907 () Bool)

(declare-fun inv!50436 (Token!10278) Bool)

(assert (=> start!323726 (and (inv!50436 separatorToken!241) e!2154907)))

(declare-fun b!3478798 () Bool)

(declare-fun res!1403706 () Bool)

(assert (=> b!3478798 (=> (not res!1403706) (not e!2154923))))

(declare-fun rulesProduceIndividualToken!2537 (LexerInterface!5045 List!37370 Token!10278) Bool)

(assert (=> b!3478798 (= res!1403706 (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3478799 () Bool)

(declare-fun e!2154913 () Bool)

(declare-datatypes ((tuple2!37008 0))(
  ( (tuple2!37009 (_1!21638 BalanceConc!22190) (_2!21638 BalanceConc!22188)) )
))
(declare-fun lt!1184506 () tuple2!37008)

(declare-fun isEmpty!21635 (BalanceConc!22188) Bool)

(assert (=> b!3478799 (= e!2154913 (isEmpty!21635 (_2!21638 lt!1184506)))))

(declare-fun e!2154900 () Bool)

(assert (=> b!3478800 (= e!2154900 (and tp!1080959 tp!1080951))))

(declare-fun b!3478801 () Bool)

(declare-fun res!1403698 () Bool)

(assert (=> b!3478801 (=> res!1403698 e!2154921)))

(assert (=> b!3478801 (= res!1403698 (not (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 (h!42667 tokens!494))))))

(declare-fun b!3478802 () Bool)

(declare-fun e!2154915 () Bool)

(declare-fun e!2154924 () Bool)

(assert (=> b!3478802 (= e!2154915 e!2154924)))

(declare-fun res!1403720 () Bool)

(assert (=> b!3478802 (=> res!1403720 e!2154924)))

(declare-fun lt!1184503 () List!37369)

(declare-fun ++!9199 (List!37369 List!37369) List!37369)

(declare-fun printWithSeparatorTokenList!332 (LexerInterface!5045 List!37371 Token!10278) List!37369)

(assert (=> b!3478802 (= res!1403720 (not (= lt!1184503 (++!9199 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517) (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1184492 () List!37369)

(assert (=> b!3478802 (= lt!1184492 (++!9199 lt!1184517 lt!1184503))))

(assert (=> b!3478802 (= lt!1184517 (list!13581 (charsOf!3470 separatorToken!241)))))

(assert (=> b!3478802 (= lt!1184503 (printWithSeparatorTokenList!332 thiss!18206 (t!275322 tokens!494) separatorToken!241))))

(declare-fun lt!1184498 () List!37369)

(assert (=> b!3478802 (= lt!1184498 (printWithSeparatorTokenList!332 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3478803 () Bool)

(declare-fun res!1403719 () Bool)

(assert (=> b!3478803 (=> (not res!1403719) (not e!2154923))))

(assert (=> b!3478803 (= res!1403719 (and (not ((_ is Nil!37247) tokens!494)) (not ((_ is Nil!37247) (t!275322 tokens!494)))))))

(declare-fun b!3478804 () Bool)

(declare-fun res!1403710 () Bool)

(assert (=> b!3478804 (=> (not res!1403710) (not e!2154923))))

(declare-fun isEmpty!21636 (List!37370) Bool)

(assert (=> b!3478804 (= res!1403710 (not (isEmpty!21636 rules!2135)))))

(declare-fun b!3478805 () Bool)

(declare-fun res!1403697 () Bool)

(assert (=> b!3478805 (=> (not res!1403697) (not e!2154923))))

(declare-fun sepAndNonSepRulesDisjointChars!1650 (List!37370 List!37370) Bool)

(assert (=> b!3478805 (= res!1403697 (sepAndNonSepRulesDisjointChars!1650 rules!2135 rules!2135))))

(declare-fun b!3478806 () Bool)

(declare-fun e!2154902 () Bool)

(assert (=> b!3478806 (= e!2154924 e!2154902)))

(declare-fun res!1403717 () Bool)

(assert (=> b!3478806 (=> res!1403717 e!2154902)))

(declare-fun lt!1184501 () List!37369)

(assert (=> b!3478806 (= res!1403717 (not (= lt!1184498 lt!1184501)))))

(assert (=> b!3478806 (= lt!1184501 (++!9199 (++!9199 lt!1184514 lt!1184517) lt!1184503))))

(declare-fun e!2154912 () Bool)

(assert (=> b!3478807 (= e!2154912 (and tp!1080954 tp!1080949))))

(declare-fun b!3478808 () Bool)

(declare-fun tp!1080956 () Bool)

(declare-fun e!2154909 () Bool)

(declare-fun inv!50433 (String!41764) Bool)

(declare-fun inv!50437 (TokenValueInjection!10800) Bool)

(assert (=> b!3478808 (= e!2154909 (and tp!1080956 (inv!50433 (tag!6076 (rule!8058 (h!42667 tokens!494)))) (inv!50437 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) e!2154912))))

(declare-fun b!3478809 () Bool)

(declare-fun res!1403713 () Bool)

(assert (=> b!3478809 (=> (not res!1403713) (not e!2154913))))

(declare-fun apply!8812 (BalanceConc!22190 Int) Token!10278)

(assert (=> b!3478809 (= res!1403713 (= (apply!8812 (_1!21638 lt!1184506) 0) separatorToken!241))))

(declare-fun e!2154918 () Bool)

(declare-fun contains!6939 (List!37371 Token!10278) Bool)

(assert (=> b!3478810 (= e!2154918 (contains!6939 tokens!494 (h!42667 (t!275322 tokens!494))))))

(declare-fun lt!1184508 () List!37369)

(declare-datatypes ((tuple2!37010 0))(
  ( (tuple2!37011 (_1!21639 Token!10278) (_2!21639 List!37369)) )
))
(declare-datatypes ((Option!7566 0))(
  ( (None!7565) (Some!7565 (v!36945 tuple2!37010)) )
))
(declare-fun maxPrefix!2585 (LexerInterface!5045 List!37370 List!37369) Option!7566)

(assert (=> b!3478810 (= (maxPrefix!2585 thiss!18206 rules!2135 lt!1184508) (Some!7565 (tuple2!37011 (h!42667 tokens!494) lt!1184492)))))

(declare-fun lt!1184507 () Unit!52678)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!212 (LexerInterface!5045 List!37370 Token!10278 Rule!10712 List!37369 Rule!10712) Unit!52678)

(assert (=> b!3478810 (= lt!1184507 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!212 thiss!18206 rules!2135 (h!42667 tokens!494) (rule!8058 (h!42667 tokens!494)) lt!1184492 (rule!8058 separatorToken!241)))))

(declare-fun contains!6940 (List!37369 C!20616) Bool)

(declare-fun usedCharacters!690 (Regex!10215) List!37369)

(assert (=> b!3478810 (not (contains!6940 (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494)))) lt!1184522))))

(declare-fun lt!1184518 () Unit!52678)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!256 (LexerInterface!5045 List!37370 List!37370 Rule!10712 Rule!10712 C!20616) Unit!52678)

(assert (=> b!3478810 (= lt!1184518 (lemmaNonSepRuleNotContainsCharContainedInASepRule!256 thiss!18206 rules!2135 rules!2135 (rule!8058 (h!42667 tokens!494)) (rule!8058 separatorToken!241) lt!1184522))))

(declare-fun lt!1184504 () Unit!52678)

(declare-fun forallContained!1403 (List!37371 Int Token!10278) Unit!52678)

(assert (=> b!3478810 (= lt!1184504 (forallContained!1403 tokens!494 lambda!122185 (h!42667 (t!275322 tokens!494))))))

(declare-fun e!2154916 () Bool)

(assert (=> b!3478810 (= (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 (h!42667 (t!275322 tokens!494))) e!2154916)))

(declare-fun res!1403715 () Bool)

(assert (=> b!3478810 (=> (not res!1403715) (not e!2154916))))

(declare-fun lt!1184493 () tuple2!37008)

(declare-fun size!28284 (BalanceConc!22190) Int)

(assert (=> b!3478810 (= res!1403715 (= (size!28284 (_1!21638 lt!1184493)) 1))))

(declare-fun lt!1184511 () BalanceConc!22188)

(declare-fun lex!2371 (LexerInterface!5045 List!37370 BalanceConc!22188) tuple2!37008)

(assert (=> b!3478810 (= lt!1184493 (lex!2371 thiss!18206 rules!2135 lt!1184511))))

(declare-fun lt!1184496 () BalanceConc!22190)

(assert (=> b!3478810 (= lt!1184511 (printTailRec!1540 thiss!18206 lt!1184496 0 (BalanceConc!22189 Empty!11287)))))

(assert (=> b!3478810 (= lt!1184511 (print!2110 thiss!18206 lt!1184496))))

(assert (=> b!3478810 (= lt!1184496 (singletonSeq!2552 (h!42667 (t!275322 tokens!494))))))

(assert (=> b!3478810 e!2154913))

(declare-fun res!1403708 () Bool)

(assert (=> b!3478810 (=> (not res!1403708) (not e!2154913))))

(assert (=> b!3478810 (= res!1403708 (= (size!28284 (_1!21638 lt!1184506)) 1))))

(declare-fun lt!1184500 () BalanceConc!22188)

(assert (=> b!3478810 (= lt!1184506 (lex!2371 thiss!18206 rules!2135 lt!1184500))))

(declare-fun lt!1184491 () BalanceConc!22190)

(assert (=> b!3478810 (= lt!1184500 (printTailRec!1540 thiss!18206 lt!1184491 0 (BalanceConc!22189 Empty!11287)))))

(assert (=> b!3478810 (= lt!1184500 (print!2110 thiss!18206 lt!1184491))))

(assert (=> b!3478810 (= lt!1184491 (singletonSeq!2552 separatorToken!241))))

(declare-fun lt!1184490 () Unit!52678)

(assert (=> b!3478810 (= lt!1184490 e!2154908)))

(declare-fun c!596543 () Bool)

(assert (=> b!3478810 (= c!596543 (not (contains!6940 (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241))) lt!1184522)))))

(declare-fun head!7347 (List!37369) C!20616)

(assert (=> b!3478810 (= lt!1184522 (head!7347 lt!1184517))))

(declare-fun e!2154925 () Bool)

(assert (=> b!3478810 e!2154925))

(declare-fun res!1403704 () Bool)

(assert (=> b!3478810 (=> (not res!1403704) (not e!2154925))))

(declare-fun lt!1184521 () Option!7565)

(declare-fun isDefined!5826 (Option!7565) Bool)

(assert (=> b!3478810 (= res!1403704 (isDefined!5826 lt!1184521))))

(declare-fun getRuleFromTag!1099 (LexerInterface!5045 List!37370 String!41764) Option!7565)

(assert (=> b!3478810 (= lt!1184521 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 separatorToken!241))))))

(declare-fun lt!1184488 () Unit!52678)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1099 (LexerInterface!5045 List!37370 List!37369 Token!10278) Unit!52678)

(assert (=> b!3478810 (= lt!1184488 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1099 thiss!18206 rules!2135 lt!1184517 separatorToken!241))))

(declare-fun lt!1184495 () BalanceConc!22188)

(declare-fun maxPrefixOneRule!1752 (LexerInterface!5045 Rule!10712 List!37369) Option!7566)

(declare-fun apply!8813 (TokenValueInjection!10800 BalanceConc!22188) TokenValue!5686)

(declare-fun size!28285 (List!37369) Int)

(assert (=> b!3478810 (= (maxPrefixOneRule!1752 thiss!18206 (rule!8058 (h!42667 tokens!494)) lt!1184514) (Some!7565 (tuple2!37011 (Token!10279 (apply!8813 (transformation!5456 (rule!8058 (h!42667 tokens!494))) lt!1184495) (rule!8058 (h!42667 tokens!494)) (size!28285 lt!1184514) lt!1184514) Nil!37245)))))

(declare-fun lt!1184505 () Unit!52678)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!845 (LexerInterface!5045 List!37370 List!37369 List!37369 List!37369 Rule!10712) Unit!52678)

(assert (=> b!3478810 (= lt!1184505 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!845 thiss!18206 rules!2135 lt!1184514 lt!1184514 Nil!37245 (rule!8058 (h!42667 tokens!494))))))

(assert (=> b!3478810 e!2154897))

(declare-fun res!1403700 () Bool)

(assert (=> b!3478810 (=> (not res!1403700) (not e!2154897))))

(assert (=> b!3478810 (= res!1403700 (isDefined!5826 lt!1184516))))

(assert (=> b!3478810 (= lt!1184516 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 (h!42667 tokens!494)))))))

(declare-fun lt!1184519 () Unit!52678)

(assert (=> b!3478810 (= lt!1184519 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1099 thiss!18206 rules!2135 lt!1184514 (h!42667 tokens!494)))))

(declare-fun lt!1184509 () Unit!52678)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1034 (LexerInterface!5045 List!37370 List!37371 Token!10278) Unit!52678)

(assert (=> b!3478810 (= lt!1184509 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1034 thiss!18206 rules!2135 tokens!494 (h!42667 tokens!494)))))

(declare-fun res!1403709 () Bool)

(assert (=> b!3478811 (=> (not res!1403709) (not e!2154923))))

(declare-fun forall!7963 (List!37371 Int) Bool)

(assert (=> b!3478811 (= res!1403709 (forall!7963 tokens!494 lambda!122184))))

(declare-fun b!3478812 () Bool)

(declare-fun e!2154906 () Bool)

(declare-fun lt!1184520 () Rule!10712)

(assert (=> b!3478812 (= e!2154906 (= (rule!8058 separatorToken!241) lt!1184520))))

(declare-fun b!3478813 () Bool)

(declare-fun res!1403711 () Bool)

(assert (=> b!3478813 (=> (not res!1403711) (not e!2154916))))

(assert (=> b!3478813 (= res!1403711 (= (apply!8812 (_1!21638 lt!1184493) 0) (h!42667 (t!275322 tokens!494))))))

(declare-fun b!3478814 () Bool)

(declare-fun e!2154922 () Bool)

(assert (=> b!3478814 (= e!2154921 e!2154922)))

(declare-fun res!1403701 () Bool)

(assert (=> b!3478814 (=> res!1403701 e!2154922)))

(declare-fun isEmpty!21637 (BalanceConc!22190) Bool)

(assert (=> b!3478814 (= res!1403701 (isEmpty!21637 (_1!21638 (lex!2371 thiss!18206 rules!2135 lt!1184495))))))

(declare-fun seqFromList!3965 (List!37369) BalanceConc!22188)

(assert (=> b!3478814 (= lt!1184495 (seqFromList!3965 lt!1184514))))

(declare-fun b!3478815 () Bool)

(declare-fun res!1403714 () Bool)

(assert (=> b!3478815 (=> (not res!1403714) (not e!2154923))))

(declare-fun rulesProduceEachTokenIndividually!1496 (LexerInterface!5045 List!37370 BalanceConc!22190) Bool)

(declare-fun seqFromList!3966 (List!37371) BalanceConc!22190)

(assert (=> b!3478815 (= res!1403714 (rulesProduceEachTokenIndividually!1496 thiss!18206 rules!2135 (seqFromList!3966 tokens!494)))))

(declare-fun b!3478816 () Bool)

(assert (=> b!3478816 (= e!2154925 e!2154906)))

(declare-fun res!1403707 () Bool)

(assert (=> b!3478816 (=> (not res!1403707) (not e!2154906))))

(assert (=> b!3478816 (= res!1403707 (matchR!4799 (regex!5456 lt!1184520) lt!1184517))))

(assert (=> b!3478816 (= lt!1184520 (get!11935 lt!1184521))))

(declare-fun b!3478817 () Bool)

(assert (=> b!3478817 (= e!2154902 e!2154918)))

(declare-fun res!1403712 () Bool)

(assert (=> b!3478817 (=> res!1403712 e!2154918)))

(assert (=> b!3478817 (= res!1403712 (not (= lt!1184498 lt!1184508)))))

(assert (=> b!3478817 (= lt!1184501 lt!1184508)))

(assert (=> b!3478817 (= lt!1184508 (++!9199 lt!1184514 lt!1184492))))

(declare-fun lt!1184499 () Unit!52678)

(declare-fun lemmaConcatAssociativity!1980 (List!37369 List!37369 List!37369) Unit!52678)

(assert (=> b!3478817 (= lt!1184499 (lemmaConcatAssociativity!1980 lt!1184514 lt!1184517 lt!1184503))))

(declare-fun b!3478818 () Bool)

(declare-fun e!2154899 () Bool)

(declare-fun tp!1080950 () Bool)

(declare-fun inv!21 (TokenValue!5686) Bool)

(assert (=> b!3478818 (= e!2154899 (and (inv!21 (value!175956 (h!42667 tokens!494))) e!2154909 tp!1080950))))

(declare-fun tp!1080960 () Bool)

(declare-fun b!3478819 () Bool)

(declare-fun e!2154901 () Bool)

(declare-fun e!2154910 () Bool)

(assert (=> b!3478819 (= e!2154901 (and tp!1080960 (inv!50433 (tag!6076 (h!42666 rules!2135))) (inv!50437 (transformation!5456 (h!42666 rules!2135))) e!2154910))))

(declare-fun b!3478820 () Bool)

(assert (=> b!3478820 (= e!2154922 e!2154915)))

(declare-fun res!1403718 () Bool)

(assert (=> b!3478820 (=> res!1403718 e!2154915)))

(assert (=> b!3478820 (= res!1403718 (or (isSeparator!5456 (rule!8058 (h!42667 tokens!494))) (isSeparator!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))))))

(declare-fun lt!1184515 () Unit!52678)

(assert (=> b!3478820 (= lt!1184515 (forallContained!1403 tokens!494 lambda!122184 (h!42667 (t!275322 tokens!494))))))

(declare-fun lt!1184489 () Unit!52678)

(assert (=> b!3478820 (= lt!1184489 (forallContained!1403 tokens!494 lambda!122184 (h!42667 tokens!494)))))

(declare-fun e!2154927 () Bool)

(declare-fun b!3478821 () Bool)

(declare-fun tp!1080953 () Bool)

(assert (=> b!3478821 (= e!2154907 (and (inv!21 (value!175956 separatorToken!241)) e!2154927 tp!1080953))))

(declare-fun b!3478822 () Bool)

(declare-fun Unit!52681 () Unit!52678)

(assert (=> b!3478822 (= e!2154908 Unit!52681)))

(declare-fun b!3478823 () Bool)

(assert (=> b!3478823 (= e!2154916 (isEmpty!21635 (_2!21638 lt!1184493)))))

(declare-fun b!3478824 () Bool)

(assert (=> b!3478824 (= e!2154926 false)))

(declare-fun b!3478825 () Bool)

(declare-fun tp!1080957 () Bool)

(assert (=> b!3478825 (= e!2154917 (and e!2154901 tp!1080957))))

(declare-fun b!3478826 () Bool)

(declare-fun res!1403705 () Bool)

(assert (=> b!3478826 (=> (not res!1403705) (not e!2154923))))

(assert (=> b!3478826 (= res!1403705 (isSeparator!5456 (rule!8058 separatorToken!241)))))

(declare-fun b!3478827 () Bool)

(declare-fun tp!1080948 () Bool)

(assert (=> b!3478827 (= e!2154927 (and tp!1080948 (inv!50433 (tag!6076 (rule!8058 separatorToken!241))) (inv!50437 (transformation!5456 (rule!8058 separatorToken!241))) e!2154900))))

(declare-fun b!3478828 () Bool)

(declare-fun res!1403702 () Bool)

(assert (=> b!3478828 (=> (not res!1403702) (not e!2154923))))

(declare-fun rulesInvariant!4442 (LexerInterface!5045 List!37370) Bool)

(assert (=> b!3478828 (= res!1403702 (rulesInvariant!4442 thiss!18206 rules!2135))))

(assert (=> b!3478829 (= e!2154910 (and tp!1080955 tp!1080952))))

(declare-fun b!3478830 () Bool)

(assert (=> b!3478830 (= e!2154898 (= (rule!8058 (h!42667 tokens!494)) lt!1184494))))

(declare-fun tp!1080958 () Bool)

(declare-fun b!3478831 () Bool)

(assert (=> b!3478831 (= e!2154911 (and (inv!50436 (h!42667 tokens!494)) e!2154899 tp!1080958))))

(assert (= (and start!323726 res!1403699) b!3478804))

(assert (= (and b!3478804 res!1403710) b!3478828))

(assert (= (and b!3478828 res!1403702) b!3478815))

(assert (= (and b!3478815 res!1403714) b!3478798))

(assert (= (and b!3478798 res!1403706) b!3478826))

(assert (= (and b!3478826 res!1403705) b!3478811))

(assert (= (and b!3478811 res!1403709) b!3478805))

(assert (= (and b!3478805 res!1403697) b!3478803))

(assert (= (and b!3478803 res!1403719) b!3478796))

(assert (= (and b!3478796 (not res!1403695)) b!3478794))

(assert (= (and b!3478794 (not res!1403716)) b!3478801))

(assert (= (and b!3478801 (not res!1403698)) b!3478814))

(assert (= (and b!3478814 (not res!1403701)) b!3478820))

(assert (= (and b!3478820 (not res!1403718)) b!3478802))

(assert (= (and b!3478802 (not res!1403720)) b!3478806))

(assert (= (and b!3478806 (not res!1403717)) b!3478817))

(assert (= (and b!3478817 (not res!1403712)) b!3478810))

(assert (= (and b!3478810 res!1403700) b!3478797))

(assert (= (and b!3478797 res!1403703) b!3478830))

(assert (= (and b!3478810 res!1403704) b!3478816))

(assert (= (and b!3478816 res!1403707) b!3478812))

(assert (= (and b!3478810 c!596543) b!3478795))

(assert (= (and b!3478810 (not c!596543)) b!3478822))

(assert (= (and b!3478795 res!1403696) b!3478824))

(assert (= (and b!3478810 res!1403708) b!3478809))

(assert (= (and b!3478809 res!1403713) b!3478799))

(assert (= (and b!3478810 res!1403715) b!3478813))

(assert (= (and b!3478813 res!1403711) b!3478823))

(assert (= b!3478819 b!3478829))

(assert (= b!3478825 b!3478819))

(assert (= (and start!323726 ((_ is Cons!37246) rules!2135)) b!3478825))

(assert (= b!3478808 b!3478807))

(assert (= b!3478818 b!3478808))

(assert (= b!3478831 b!3478818))

(assert (= (and start!323726 ((_ is Cons!37247) tokens!494)) b!3478831))

(assert (= b!3478827 b!3478800))

(assert (= b!3478821 b!3478827))

(assert (= start!323726 b!3478821))

(declare-fun m!3894601 () Bool)

(assert (=> b!3478804 m!3894601))

(declare-fun m!3894603 () Bool)

(assert (=> b!3478813 m!3894603))

(declare-fun m!3894605 () Bool)

(assert (=> b!3478810 m!3894605))

(declare-fun m!3894607 () Bool)

(assert (=> b!3478810 m!3894607))

(declare-fun m!3894609 () Bool)

(assert (=> b!3478810 m!3894609))

(assert (=> b!3478810 m!3894605))

(declare-fun m!3894611 () Bool)

(assert (=> b!3478810 m!3894611))

(declare-fun m!3894613 () Bool)

(assert (=> b!3478810 m!3894613))

(declare-fun m!3894615 () Bool)

(assert (=> b!3478810 m!3894615))

(declare-fun m!3894617 () Bool)

(assert (=> b!3478810 m!3894617))

(declare-fun m!3894619 () Bool)

(assert (=> b!3478810 m!3894619))

(declare-fun m!3894621 () Bool)

(assert (=> b!3478810 m!3894621))

(declare-fun m!3894623 () Bool)

(assert (=> b!3478810 m!3894623))

(declare-fun m!3894625 () Bool)

(assert (=> b!3478810 m!3894625))

(declare-fun m!3894627 () Bool)

(assert (=> b!3478810 m!3894627))

(declare-fun m!3894629 () Bool)

(assert (=> b!3478810 m!3894629))

(declare-fun m!3894631 () Bool)

(assert (=> b!3478810 m!3894631))

(declare-fun m!3894633 () Bool)

(assert (=> b!3478810 m!3894633))

(declare-fun m!3894635 () Bool)

(assert (=> b!3478810 m!3894635))

(declare-fun m!3894637 () Bool)

(assert (=> b!3478810 m!3894637))

(declare-fun m!3894639 () Bool)

(assert (=> b!3478810 m!3894639))

(declare-fun m!3894641 () Bool)

(assert (=> b!3478810 m!3894641))

(declare-fun m!3894643 () Bool)

(assert (=> b!3478810 m!3894643))

(declare-fun m!3894645 () Bool)

(assert (=> b!3478810 m!3894645))

(declare-fun m!3894647 () Bool)

(assert (=> b!3478810 m!3894647))

(declare-fun m!3894649 () Bool)

(assert (=> b!3478810 m!3894649))

(declare-fun m!3894651 () Bool)

(assert (=> b!3478810 m!3894651))

(declare-fun m!3894653 () Bool)

(assert (=> b!3478810 m!3894653))

(declare-fun m!3894655 () Bool)

(assert (=> b!3478810 m!3894655))

(declare-fun m!3894657 () Bool)

(assert (=> b!3478810 m!3894657))

(declare-fun m!3894659 () Bool)

(assert (=> b!3478810 m!3894659))

(declare-fun m!3894661 () Bool)

(assert (=> b!3478810 m!3894661))

(assert (=> b!3478810 m!3894629))

(declare-fun m!3894663 () Bool)

(assert (=> b!3478810 m!3894663))

(declare-fun m!3894665 () Bool)

(assert (=> b!3478810 m!3894665))

(declare-fun m!3894667 () Bool)

(assert (=> b!3478810 m!3894667))

(declare-fun m!3894669 () Bool)

(assert (=> b!3478823 m!3894669))

(declare-fun m!3894671 () Bool)

(assert (=> b!3478821 m!3894671))

(declare-fun m!3894673 () Bool)

(assert (=> b!3478801 m!3894673))

(declare-fun m!3894675 () Bool)

(assert (=> start!323726 m!3894675))

(declare-fun m!3894677 () Bool)

(assert (=> b!3478795 m!3894677))

(declare-fun m!3894679 () Bool)

(assert (=> b!3478795 m!3894679))

(declare-fun m!3894681 () Bool)

(assert (=> b!3478798 m!3894681))

(declare-fun m!3894683 () Bool)

(assert (=> b!3478820 m!3894683))

(declare-fun m!3894685 () Bool)

(assert (=> b!3478820 m!3894685))

(declare-fun m!3894687 () Bool)

(assert (=> b!3478805 m!3894687))

(declare-fun m!3894689 () Bool)

(assert (=> b!3478828 m!3894689))

(declare-fun m!3894691 () Bool)

(assert (=> b!3478796 m!3894691))

(declare-fun m!3894693 () Bool)

(assert (=> b!3478796 m!3894693))

(declare-fun m!3894695 () Bool)

(assert (=> b!3478796 m!3894695))

(declare-fun m!3894697 () Bool)

(assert (=> b!3478796 m!3894697))

(declare-fun m!3894699 () Bool)

(assert (=> b!3478796 m!3894699))

(declare-fun m!3894701 () Bool)

(assert (=> b!3478816 m!3894701))

(declare-fun m!3894703 () Bool)

(assert (=> b!3478816 m!3894703))

(declare-fun m!3894705 () Bool)

(assert (=> b!3478814 m!3894705))

(declare-fun m!3894707 () Bool)

(assert (=> b!3478814 m!3894707))

(declare-fun m!3894709 () Bool)

(assert (=> b!3478814 m!3894709))

(declare-fun m!3894711 () Bool)

(assert (=> b!3478802 m!3894711))

(declare-fun m!3894713 () Bool)

(assert (=> b!3478802 m!3894713))

(declare-fun m!3894715 () Bool)

(assert (=> b!3478802 m!3894715))

(declare-fun m!3894717 () Bool)

(assert (=> b!3478802 m!3894717))

(assert (=> b!3478802 m!3894711))

(declare-fun m!3894719 () Bool)

(assert (=> b!3478802 m!3894719))

(declare-fun m!3894721 () Bool)

(assert (=> b!3478802 m!3894721))

(assert (=> b!3478802 m!3894719))

(declare-fun m!3894723 () Bool)

(assert (=> b!3478802 m!3894723))

(assert (=> b!3478802 m!3894713))

(declare-fun m!3894725 () Bool)

(assert (=> b!3478802 m!3894725))

(declare-fun m!3894727 () Bool)

(assert (=> b!3478802 m!3894727))

(assert (=> b!3478802 m!3894723))

(assert (=> b!3478802 m!3894721))

(declare-fun m!3894729 () Bool)

(assert (=> b!3478802 m!3894729))

(declare-fun m!3894731 () Bool)

(assert (=> b!3478827 m!3894731))

(declare-fun m!3894733 () Bool)

(assert (=> b!3478827 m!3894733))

(declare-fun m!3894735 () Bool)

(assert (=> b!3478819 m!3894735))

(declare-fun m!3894737 () Bool)

(assert (=> b!3478819 m!3894737))

(declare-fun m!3894739 () Bool)

(assert (=> b!3478809 m!3894739))

(declare-fun m!3894741 () Bool)

(assert (=> b!3478806 m!3894741))

(assert (=> b!3478806 m!3894741))

(declare-fun m!3894743 () Bool)

(assert (=> b!3478806 m!3894743))

(declare-fun m!3894745 () Bool)

(assert (=> b!3478815 m!3894745))

(assert (=> b!3478815 m!3894745))

(declare-fun m!3894747 () Bool)

(assert (=> b!3478815 m!3894747))

(declare-fun m!3894749 () Bool)

(assert (=> b!3478794 m!3894749))

(assert (=> b!3478794 m!3894749))

(declare-fun m!3894751 () Bool)

(assert (=> b!3478794 m!3894751))

(declare-fun m!3894753 () Bool)

(assert (=> b!3478797 m!3894753))

(declare-fun m!3894755 () Bool)

(assert (=> b!3478797 m!3894755))

(declare-fun m!3894757 () Bool)

(assert (=> b!3478808 m!3894757))

(declare-fun m!3894759 () Bool)

(assert (=> b!3478808 m!3894759))

(declare-fun m!3894761 () Bool)

(assert (=> b!3478818 m!3894761))

(declare-fun m!3894763 () Bool)

(assert (=> b!3478811 m!3894763))

(declare-fun m!3894765 () Bool)

(assert (=> b!3478817 m!3894765))

(declare-fun m!3894767 () Bool)

(assert (=> b!3478817 m!3894767))

(declare-fun m!3894769 () Bool)

(assert (=> b!3478799 m!3894769))

(declare-fun m!3894771 () Bool)

(assert (=> b!3478831 m!3894771))

(check-sat (not b!3478818) (not b_next!90937) (not b!3478802) (not b!3478798) (not b!3478840) (not b_next!90947) (not b!3478810) (not b!3478797) (not b_next!90943) (not b!3478805) (not b_next!90941) b_and!245423 (not b_next!90939) (not b!3478831) (not b!3478808) (not b!3478827) (not b!3478816) (not b!3478815) (not b!3478828) (not b!3478813) (not b!3478821) (not b_next!90945) b_and!245427 (not b!3478799) (not b!3478820) (not b!3478825) (not b!3478819) (not b!3478804) (not b!3478817) b_and!245429 b_and!245421 (not b!3478806) (not b!3478796) b_and!245419 (not b!3478809) (not b!3478795) (not b!3478811) (not b!3478814) b_and!245425 (not b!3478823) (not b!3478801) (not b!3478794) (not start!323726))
(check-sat (not b_next!90937) (not b_next!90939) (not b_next!90947) (not b_next!90943) (not b_next!90941) b_and!245419 b_and!245423 b_and!245425 (not b_next!90945) b_and!245427 b_and!245429 b_and!245421)
(get-model)

(declare-fun d!1004685 () Bool)

(declare-fun lt!1184565 () Bool)

(declare-fun e!2154986 () Bool)

(assert (=> d!1004685 (= lt!1184565 e!2154986)))

(declare-fun res!1403777 () Bool)

(assert (=> d!1004685 (=> (not res!1403777) (not e!2154986))))

(declare-fun list!13583 (BalanceConc!22190) List!37371)

(assert (=> d!1004685 (= res!1403777 (= (list!13583 (_1!21638 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 (h!42667 tokens!494)))))) (list!13583 (singletonSeq!2552 (h!42667 tokens!494)))))))

(declare-fun e!2154987 () Bool)

(assert (=> d!1004685 (= lt!1184565 e!2154987)))

(declare-fun res!1403776 () Bool)

(assert (=> d!1004685 (=> (not res!1403776) (not e!2154987))))

(declare-fun lt!1184566 () tuple2!37008)

(assert (=> d!1004685 (= res!1403776 (= (size!28284 (_1!21638 lt!1184566)) 1))))

(assert (=> d!1004685 (= lt!1184566 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 (h!42667 tokens!494)))))))

(assert (=> d!1004685 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1004685 (= (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 (h!42667 tokens!494)) lt!1184565)))

(declare-fun b!3478924 () Bool)

(declare-fun res!1403778 () Bool)

(assert (=> b!3478924 (=> (not res!1403778) (not e!2154987))))

(assert (=> b!3478924 (= res!1403778 (= (apply!8812 (_1!21638 lt!1184566) 0) (h!42667 tokens!494)))))

(declare-fun b!3478925 () Bool)

(assert (=> b!3478925 (= e!2154987 (isEmpty!21635 (_2!21638 lt!1184566)))))

(declare-fun b!3478926 () Bool)

(assert (=> b!3478926 (= e!2154986 (isEmpty!21635 (_2!21638 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 (h!42667 tokens!494)))))))))

(assert (= (and d!1004685 res!1403776) b!3478924))

(assert (= (and b!3478924 res!1403778) b!3478925))

(assert (= (and d!1004685 res!1403777) b!3478926))

(assert (=> d!1004685 m!3894693))

(declare-fun m!3894899 () Bool)

(assert (=> d!1004685 m!3894899))

(assert (=> d!1004685 m!3894693))

(assert (=> d!1004685 m!3894601))

(declare-fun m!3894901 () Bool)

(assert (=> d!1004685 m!3894901))

(declare-fun m!3894903 () Bool)

(assert (=> d!1004685 m!3894903))

(declare-fun m!3894905 () Bool)

(assert (=> d!1004685 m!3894905))

(assert (=> d!1004685 m!3894693))

(assert (=> d!1004685 m!3894901))

(declare-fun m!3894907 () Bool)

(assert (=> d!1004685 m!3894907))

(declare-fun m!3894909 () Bool)

(assert (=> b!3478924 m!3894909))

(declare-fun m!3894911 () Bool)

(assert (=> b!3478925 m!3894911))

(assert (=> b!3478926 m!3894693))

(assert (=> b!3478926 m!3894693))

(assert (=> b!3478926 m!3894901))

(assert (=> b!3478926 m!3894901))

(assert (=> b!3478926 m!3894903))

(declare-fun m!3894913 () Bool)

(assert (=> b!3478926 m!3894913))

(assert (=> b!3478801 d!1004685))

(declare-fun d!1004697 () Bool)

(declare-fun lt!1184572 () Bool)

(declare-fun isEmpty!21641 (List!37369) Bool)

(assert (=> d!1004697 (= lt!1184572 (isEmpty!21641 (list!13581 (_2!21638 lt!1184493))))))

(declare-fun isEmpty!21642 (Conc!11287) Bool)

(assert (=> d!1004697 (= lt!1184572 (isEmpty!21642 (c!596545 (_2!21638 lt!1184493))))))

(assert (=> d!1004697 (= (isEmpty!21635 (_2!21638 lt!1184493)) lt!1184572)))

(declare-fun bs!561832 () Bool)

(assert (= bs!561832 d!1004697))

(declare-fun m!3894921 () Bool)

(assert (=> bs!561832 m!3894921))

(assert (=> bs!561832 m!3894921))

(declare-fun m!3894923 () Bool)

(assert (=> bs!561832 m!3894923))

(declare-fun m!3894925 () Bool)

(assert (=> bs!561832 m!3894925))

(assert (=> b!3478823 d!1004697))

(declare-fun d!1004701 () Bool)

(declare-fun c!596568 () Bool)

(assert (=> d!1004701 (= c!596568 ((_ is Cons!37247) tokens!494))))

(declare-fun e!2154997 () List!37369)

(assert (=> d!1004701 (= (printWithSeparatorTokenList!332 thiss!18206 tokens!494 separatorToken!241) e!2154997)))

(declare-fun b!3478941 () Bool)

(assert (=> b!3478941 (= e!2154997 (++!9199 (++!9199 (list!13581 (charsOf!3470 (h!42667 tokens!494))) (list!13581 (charsOf!3470 separatorToken!241))) (printWithSeparatorTokenList!332 thiss!18206 (t!275322 tokens!494) separatorToken!241)))))

(declare-fun b!3478942 () Bool)

(assert (=> b!3478942 (= e!2154997 Nil!37245)))

(assert (= (and d!1004701 c!596568) b!3478941))

(assert (= (and d!1004701 (not c!596568)) b!3478942))

(assert (=> b!3478941 m!3894713))

(assert (=> b!3478941 m!3894725))

(assert (=> b!3478941 m!3894713))

(assert (=> b!3478941 m!3894749))

(assert (=> b!3478941 m!3894751))

(declare-fun m!3894939 () Bool)

(assert (=> b!3478941 m!3894939))

(assert (=> b!3478941 m!3894715))

(declare-fun m!3894941 () Bool)

(assert (=> b!3478941 m!3894941))

(assert (=> b!3478941 m!3894751))

(assert (=> b!3478941 m!3894725))

(assert (=> b!3478941 m!3894939))

(assert (=> b!3478941 m!3894715))

(assert (=> b!3478941 m!3894749))

(assert (=> b!3478802 d!1004701))

(declare-fun d!1004709 () Bool)

(declare-fun e!2155003 () Bool)

(assert (=> d!1004709 e!2155003))

(declare-fun res!1403788 () Bool)

(assert (=> d!1004709 (=> (not res!1403788) (not e!2155003))))

(declare-fun lt!1184575 () List!37369)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5215 (List!37369) (InoxSet C!20616))

(assert (=> d!1004709 (= res!1403788 (= (content!5215 lt!1184575) ((_ map or) (content!5215 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517)) (content!5215 (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241)))))))

(declare-fun e!2155002 () List!37369)

(assert (=> d!1004709 (= lt!1184575 e!2155002)))

(declare-fun c!596571 () Bool)

(assert (=> d!1004709 (= c!596571 ((_ is Nil!37245) (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517)))))

(assert (=> d!1004709 (= (++!9199 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517) (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241)) lt!1184575)))

(declare-fun b!3478951 () Bool)

(assert (=> b!3478951 (= e!2155002 (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241))))

(declare-fun b!3478952 () Bool)

(assert (=> b!3478952 (= e!2155002 (Cons!37245 (h!42665 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517)) (++!9199 (t!275320 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517)) (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241))))))

(declare-fun b!3478953 () Bool)

(declare-fun res!1403787 () Bool)

(assert (=> b!3478953 (=> (not res!1403787) (not e!2155003))))

(assert (=> b!3478953 (= res!1403787 (= (size!28285 lt!1184575) (+ (size!28285 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517)) (size!28285 (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241)))))))

(declare-fun b!3478954 () Bool)

(assert (=> b!3478954 (= e!2155003 (or (not (= (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241) Nil!37245)) (= lt!1184575 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517))))))

(assert (= (and d!1004709 c!596571) b!3478951))

(assert (= (and d!1004709 (not c!596571)) b!3478952))

(assert (= (and d!1004709 res!1403788) b!3478953))

(assert (= (and b!3478953 res!1403787) b!3478954))

(declare-fun m!3894943 () Bool)

(assert (=> d!1004709 m!3894943))

(assert (=> d!1004709 m!3894723))

(declare-fun m!3894945 () Bool)

(assert (=> d!1004709 m!3894945))

(assert (=> d!1004709 m!3894721))

(declare-fun m!3894947 () Bool)

(assert (=> d!1004709 m!3894947))

(assert (=> b!3478952 m!3894721))

(declare-fun m!3894949 () Bool)

(assert (=> b!3478952 m!3894949))

(declare-fun m!3894951 () Bool)

(assert (=> b!3478953 m!3894951))

(assert (=> b!3478953 m!3894723))

(declare-fun m!3894953 () Bool)

(assert (=> b!3478953 m!3894953))

(assert (=> b!3478953 m!3894721))

(declare-fun m!3894955 () Bool)

(assert (=> b!3478953 m!3894955))

(assert (=> b!3478802 d!1004709))

(declare-fun d!1004711 () Bool)

(declare-fun c!596572 () Bool)

(assert (=> d!1004711 (= c!596572 ((_ is Cons!37247) (t!275322 (t!275322 tokens!494))))))

(declare-fun e!2155004 () List!37369)

(assert (=> d!1004711 (= (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241) e!2155004)))

(declare-fun b!3478955 () Bool)

(assert (=> b!3478955 (= e!2155004 (++!9199 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 (t!275322 tokens!494))))) (list!13581 (charsOf!3470 separatorToken!241))) (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 (t!275322 tokens!494))) separatorToken!241)))))

(declare-fun b!3478956 () Bool)

(assert (=> b!3478956 (= e!2155004 Nil!37245)))

(assert (= (and d!1004711 c!596572) b!3478955))

(assert (= (and d!1004711 (not c!596572)) b!3478956))

(assert (=> b!3478955 m!3894713))

(assert (=> b!3478955 m!3894725))

(assert (=> b!3478955 m!3894713))

(declare-fun m!3894957 () Bool)

(assert (=> b!3478955 m!3894957))

(declare-fun m!3894959 () Bool)

(assert (=> b!3478955 m!3894959))

(declare-fun m!3894961 () Bool)

(assert (=> b!3478955 m!3894961))

(declare-fun m!3894963 () Bool)

(assert (=> b!3478955 m!3894963))

(declare-fun m!3894965 () Bool)

(assert (=> b!3478955 m!3894965))

(assert (=> b!3478955 m!3894959))

(assert (=> b!3478955 m!3894725))

(assert (=> b!3478955 m!3894961))

(assert (=> b!3478955 m!3894963))

(assert (=> b!3478955 m!3894957))

(assert (=> b!3478802 d!1004711))

(declare-fun d!1004713 () Bool)

(declare-fun c!596573 () Bool)

(assert (=> d!1004713 (= c!596573 ((_ is Cons!37247) (t!275322 tokens!494)))))

(declare-fun e!2155005 () List!37369)

(assert (=> d!1004713 (= (printWithSeparatorTokenList!332 thiss!18206 (t!275322 tokens!494) separatorToken!241) e!2155005)))

(declare-fun b!3478957 () Bool)

(assert (=> b!3478957 (= e!2155005 (++!9199 (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) (list!13581 (charsOf!3470 separatorToken!241))) (printWithSeparatorTokenList!332 thiss!18206 (t!275322 (t!275322 tokens!494)) separatorToken!241)))))

(declare-fun b!3478958 () Bool)

(assert (=> b!3478958 (= e!2155005 Nil!37245)))

(assert (= (and d!1004713 c!596573) b!3478957))

(assert (= (and d!1004713 (not c!596573)) b!3478958))

(assert (=> b!3478957 m!3894713))

(assert (=> b!3478957 m!3894725))

(assert (=> b!3478957 m!3894713))

(assert (=> b!3478957 m!3894711))

(assert (=> b!3478957 m!3894719))

(declare-fun m!3894967 () Bool)

(assert (=> b!3478957 m!3894967))

(assert (=> b!3478957 m!3894721))

(declare-fun m!3894969 () Bool)

(assert (=> b!3478957 m!3894969))

(assert (=> b!3478957 m!3894719))

(assert (=> b!3478957 m!3894725))

(assert (=> b!3478957 m!3894967))

(assert (=> b!3478957 m!3894721))

(assert (=> b!3478957 m!3894711))

(assert (=> b!3478802 d!1004713))

(declare-fun d!1004715 () Bool)

(declare-fun e!2155007 () Bool)

(assert (=> d!1004715 e!2155007))

(declare-fun res!1403790 () Bool)

(assert (=> d!1004715 (=> (not res!1403790) (not e!2155007))))

(declare-fun lt!1184576 () List!37369)

(assert (=> d!1004715 (= res!1403790 (= (content!5215 lt!1184576) ((_ map or) (content!5215 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494))))) (content!5215 lt!1184517))))))

(declare-fun e!2155006 () List!37369)

(assert (=> d!1004715 (= lt!1184576 e!2155006)))

(declare-fun c!596574 () Bool)

(assert (=> d!1004715 (= c!596574 ((_ is Nil!37245) (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494))))))))

(assert (=> d!1004715 (= (++!9199 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) lt!1184517) lt!1184576)))

(declare-fun b!3478959 () Bool)

(assert (=> b!3478959 (= e!2155006 lt!1184517)))

(declare-fun b!3478960 () Bool)

(assert (=> b!3478960 (= e!2155006 (Cons!37245 (h!42665 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494))))) (++!9199 (t!275320 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494))))) lt!1184517)))))

(declare-fun b!3478961 () Bool)

(declare-fun res!1403789 () Bool)

(assert (=> b!3478961 (=> (not res!1403789) (not e!2155007))))

(assert (=> b!3478961 (= res!1403789 (= (size!28285 lt!1184576) (+ (size!28285 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494))))) (size!28285 lt!1184517))))))

(declare-fun b!3478962 () Bool)

(assert (=> b!3478962 (= e!2155007 (or (not (= lt!1184517 Nil!37245)) (= lt!1184576 (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))))))))

(assert (= (and d!1004715 c!596574) b!3478959))

(assert (= (and d!1004715 (not c!596574)) b!3478960))

(assert (= (and d!1004715 res!1403790) b!3478961))

(assert (= (and b!3478961 res!1403789) b!3478962))

(declare-fun m!3894971 () Bool)

(assert (=> d!1004715 m!3894971))

(assert (=> d!1004715 m!3894719))

(declare-fun m!3894973 () Bool)

(assert (=> d!1004715 m!3894973))

(declare-fun m!3894975 () Bool)

(assert (=> d!1004715 m!3894975))

(declare-fun m!3894977 () Bool)

(assert (=> b!3478960 m!3894977))

(declare-fun m!3894979 () Bool)

(assert (=> b!3478961 m!3894979))

(assert (=> b!3478961 m!3894719))

(declare-fun m!3894981 () Bool)

(assert (=> b!3478961 m!3894981))

(declare-fun m!3894983 () Bool)

(assert (=> b!3478961 m!3894983))

(assert (=> b!3478802 d!1004715))

(declare-fun d!1004717 () Bool)

(declare-fun lt!1184579 () BalanceConc!22188)

(assert (=> d!1004717 (= (list!13581 lt!1184579) (originalCharacters!6170 separatorToken!241))))

(declare-fun dynLambda!15761 (Int TokenValue!5686) BalanceConc!22188)

(assert (=> d!1004717 (= lt!1184579 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (value!175956 separatorToken!241)))))

(assert (=> d!1004717 (= (charsOf!3470 separatorToken!241) lt!1184579)))

(declare-fun b_lambda!100569 () Bool)

(assert (=> (not b_lambda!100569) (not d!1004717)))

(declare-fun tb!190717 () Bool)

(declare-fun t!275332 () Bool)

(assert (=> (and b!3478829 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241)))) t!275332) tb!190717))

(declare-fun b!3478967 () Bool)

(declare-fun e!2155010 () Bool)

(declare-fun tp!1080966 () Bool)

(declare-fun inv!50440 (Conc!11287) Bool)

(assert (=> b!3478967 (= e!2155010 (and (inv!50440 (c!596545 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (value!175956 separatorToken!241)))) tp!1080966))))

(declare-fun result!234836 () Bool)

(declare-fun inv!50441 (BalanceConc!22188) Bool)

(assert (=> tb!190717 (= result!234836 (and (inv!50441 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (value!175956 separatorToken!241))) e!2155010))))

(assert (= tb!190717 b!3478967))

(declare-fun m!3894985 () Bool)

(assert (=> b!3478967 m!3894985))

(declare-fun m!3894987 () Bool)

(assert (=> tb!190717 m!3894987))

(assert (=> d!1004717 t!275332))

(declare-fun b_and!245437 () Bool)

(assert (= b_and!245421 (and (=> t!275332 result!234836) b_and!245437)))

(declare-fun tb!190719 () Bool)

(declare-fun t!275334 () Bool)

(assert (=> (and b!3478807 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241)))) t!275334) tb!190719))

(declare-fun result!234840 () Bool)

(assert (= result!234840 result!234836))

(assert (=> d!1004717 t!275334))

(declare-fun b_and!245439 () Bool)

(assert (= b_and!245425 (and (=> t!275334 result!234840) b_and!245439)))

(declare-fun t!275336 () Bool)

(declare-fun tb!190721 () Bool)

(assert (=> (and b!3478800 (= (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241)))) t!275336) tb!190721))

(declare-fun result!234842 () Bool)

(assert (= result!234842 result!234836))

(assert (=> d!1004717 t!275336))

(declare-fun b_and!245441 () Bool)

(assert (= b_and!245429 (and (=> t!275336 result!234842) b_and!245441)))

(declare-fun m!3894989 () Bool)

(assert (=> d!1004717 m!3894989))

(declare-fun m!3894991 () Bool)

(assert (=> d!1004717 m!3894991))

(assert (=> b!3478802 d!1004717))

(declare-fun d!1004719 () Bool)

(declare-fun list!13585 (Conc!11287) List!37369)

(assert (=> d!1004719 (= (list!13581 (charsOf!3470 (h!42667 (t!275322 tokens!494)))) (list!13585 (c!596545 (charsOf!3470 (h!42667 (t!275322 tokens!494))))))))

(declare-fun bs!561833 () Bool)

(assert (= bs!561833 d!1004719))

(declare-fun m!3894993 () Bool)

(assert (=> bs!561833 m!3894993))

(assert (=> b!3478802 d!1004719))

(declare-fun d!1004721 () Bool)

(declare-fun e!2155012 () Bool)

(assert (=> d!1004721 e!2155012))

(declare-fun res!1403792 () Bool)

(assert (=> d!1004721 (=> (not res!1403792) (not e!2155012))))

(declare-fun lt!1184580 () List!37369)

(assert (=> d!1004721 (= res!1403792 (= (content!5215 lt!1184580) ((_ map or) (content!5215 lt!1184517) (content!5215 lt!1184503))))))

(declare-fun e!2155011 () List!37369)

(assert (=> d!1004721 (= lt!1184580 e!2155011)))

(declare-fun c!596575 () Bool)

(assert (=> d!1004721 (= c!596575 ((_ is Nil!37245) lt!1184517))))

(assert (=> d!1004721 (= (++!9199 lt!1184517 lt!1184503) lt!1184580)))

(declare-fun b!3478968 () Bool)

(assert (=> b!3478968 (= e!2155011 lt!1184503)))

(declare-fun b!3478969 () Bool)

(assert (=> b!3478969 (= e!2155011 (Cons!37245 (h!42665 lt!1184517) (++!9199 (t!275320 lt!1184517) lt!1184503)))))

(declare-fun b!3478970 () Bool)

(declare-fun res!1403791 () Bool)

(assert (=> b!3478970 (=> (not res!1403791) (not e!2155012))))

(assert (=> b!3478970 (= res!1403791 (= (size!28285 lt!1184580) (+ (size!28285 lt!1184517) (size!28285 lt!1184503))))))

(declare-fun b!3478971 () Bool)

(assert (=> b!3478971 (= e!2155012 (or (not (= lt!1184503 Nil!37245)) (= lt!1184580 lt!1184517)))))

(assert (= (and d!1004721 c!596575) b!3478968))

(assert (= (and d!1004721 (not c!596575)) b!3478969))

(assert (= (and d!1004721 res!1403792) b!3478970))

(assert (= (and b!3478970 res!1403791) b!3478971))

(declare-fun m!3894995 () Bool)

(assert (=> d!1004721 m!3894995))

(assert (=> d!1004721 m!3894975))

(declare-fun m!3894997 () Bool)

(assert (=> d!1004721 m!3894997))

(declare-fun m!3894999 () Bool)

(assert (=> b!3478969 m!3894999))

(declare-fun m!3895001 () Bool)

(assert (=> b!3478970 m!3895001))

(assert (=> b!3478970 m!3894983))

(declare-fun m!3895003 () Bool)

(assert (=> b!3478970 m!3895003))

(assert (=> b!3478802 d!1004721))

(declare-fun d!1004723 () Bool)

(assert (=> d!1004723 (= (list!13581 (charsOf!3470 separatorToken!241)) (list!13585 (c!596545 (charsOf!3470 separatorToken!241))))))

(declare-fun bs!561834 () Bool)

(assert (= bs!561834 d!1004723))

(declare-fun m!3895005 () Bool)

(assert (=> bs!561834 m!3895005))

(assert (=> b!3478802 d!1004723))

(declare-fun d!1004725 () Bool)

(declare-fun lt!1184581 () BalanceConc!22188)

(assert (=> d!1004725 (= (list!13581 lt!1184581) (originalCharacters!6170 (h!42667 (t!275322 tokens!494))))))

(assert (=> d!1004725 (= lt!1184581 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (value!175956 (h!42667 (t!275322 tokens!494)))))))

(assert (=> d!1004725 (= (charsOf!3470 (h!42667 (t!275322 tokens!494))) lt!1184581)))

(declare-fun b_lambda!100571 () Bool)

(assert (=> (not b_lambda!100571) (not d!1004725)))

(declare-fun t!275338 () Bool)

(declare-fun tb!190723 () Bool)

(assert (=> (and b!3478829 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494)))))) t!275338) tb!190723))

(declare-fun b!3478972 () Bool)

(declare-fun e!2155013 () Bool)

(declare-fun tp!1080967 () Bool)

(assert (=> b!3478972 (= e!2155013 (and (inv!50440 (c!596545 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (value!175956 (h!42667 (t!275322 tokens!494)))))) tp!1080967))))

(declare-fun result!234844 () Bool)

(assert (=> tb!190723 (= result!234844 (and (inv!50441 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (value!175956 (h!42667 (t!275322 tokens!494))))) e!2155013))))

(assert (= tb!190723 b!3478972))

(declare-fun m!3895007 () Bool)

(assert (=> b!3478972 m!3895007))

(declare-fun m!3895009 () Bool)

(assert (=> tb!190723 m!3895009))

(assert (=> d!1004725 t!275338))

(declare-fun b_and!245443 () Bool)

(assert (= b_and!245437 (and (=> t!275338 result!234844) b_and!245443)))

(declare-fun t!275340 () Bool)

(declare-fun tb!190725 () Bool)

(assert (=> (and b!3478807 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494)))))) t!275340) tb!190725))

(declare-fun result!234846 () Bool)

(assert (= result!234846 result!234844))

(assert (=> d!1004725 t!275340))

(declare-fun b_and!245445 () Bool)

(assert (= b_and!245439 (and (=> t!275340 result!234846) b_and!245445)))

(declare-fun tb!190727 () Bool)

(declare-fun t!275342 () Bool)

(assert (=> (and b!3478800 (= (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494)))))) t!275342) tb!190727))

(declare-fun result!234848 () Bool)

(assert (= result!234848 result!234844))

(assert (=> d!1004725 t!275342))

(declare-fun b_and!245447 () Bool)

(assert (= b_and!245441 (and (=> t!275342 result!234848) b_and!245447)))

(declare-fun m!3895011 () Bool)

(assert (=> d!1004725 m!3895011))

(declare-fun m!3895013 () Bool)

(assert (=> d!1004725 m!3895013))

(assert (=> b!3478802 d!1004725))

(declare-fun d!1004727 () Bool)

(assert (=> d!1004727 (= (isEmpty!21636 rules!2135) ((_ is Nil!37246) rules!2135))))

(assert (=> b!3478804 d!1004727))

(declare-fun d!1004729 () Bool)

(declare-fun res!1403797 () Bool)

(declare-fun e!2155018 () Bool)

(assert (=> d!1004729 (=> res!1403797 e!2155018)))

(assert (=> d!1004729 (= res!1403797 (not ((_ is Cons!37246) rules!2135)))))

(assert (=> d!1004729 (= (sepAndNonSepRulesDisjointChars!1650 rules!2135 rules!2135) e!2155018)))

(declare-fun b!3478977 () Bool)

(declare-fun e!2155019 () Bool)

(assert (=> b!3478977 (= e!2155018 e!2155019)))

(declare-fun res!1403798 () Bool)

(assert (=> b!3478977 (=> (not res!1403798) (not e!2155019))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!730 (Rule!10712 List!37370) Bool)

(assert (=> b!3478977 (= res!1403798 (ruleDisjointCharsFromAllFromOtherType!730 (h!42666 rules!2135) rules!2135))))

(declare-fun b!3478978 () Bool)

(assert (=> b!3478978 (= e!2155019 (sepAndNonSepRulesDisjointChars!1650 rules!2135 (t!275321 rules!2135)))))

(assert (= (and d!1004729 (not res!1403797)) b!3478977))

(assert (= (and b!3478977 res!1403798) b!3478978))

(declare-fun m!3895015 () Bool)

(assert (=> b!3478977 m!3895015))

(declare-fun m!3895017 () Bool)

(assert (=> b!3478978 m!3895017))

(assert (=> b!3478805 d!1004729))

(declare-fun d!1004731 () Bool)

(assert (=> d!1004731 (= (inv!50433 (tag!6076 (rule!8058 separatorToken!241))) (= (mod (str.len (value!175955 (tag!6076 (rule!8058 separatorToken!241)))) 2) 0))))

(assert (=> b!3478827 d!1004731))

(declare-fun d!1004733 () Bool)

(declare-fun res!1403801 () Bool)

(declare-fun e!2155022 () Bool)

(assert (=> d!1004733 (=> (not res!1403801) (not e!2155022))))

(declare-fun semiInverseModEq!2295 (Int Int) Bool)

(assert (=> d!1004733 (= res!1403801 (semiInverseModEq!2295 (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toValue!7692 (transformation!5456 (rule!8058 separatorToken!241)))))))

(assert (=> d!1004733 (= (inv!50437 (transformation!5456 (rule!8058 separatorToken!241))) e!2155022)))

(declare-fun b!3478981 () Bool)

(declare-fun equivClasses!2194 (Int Int) Bool)

(assert (=> b!3478981 (= e!2155022 (equivClasses!2194 (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toValue!7692 (transformation!5456 (rule!8058 separatorToken!241)))))))

(assert (= (and d!1004733 res!1403801) b!3478981))

(declare-fun m!3895019 () Bool)

(assert (=> d!1004733 m!3895019))

(declare-fun m!3895021 () Bool)

(assert (=> b!3478981 m!3895021))

(assert (=> b!3478827 d!1004733))

(declare-fun d!1004735 () Bool)

(declare-fun e!2155024 () Bool)

(assert (=> d!1004735 e!2155024))

(declare-fun res!1403803 () Bool)

(assert (=> d!1004735 (=> (not res!1403803) (not e!2155024))))

(declare-fun lt!1184582 () List!37369)

(assert (=> d!1004735 (= res!1403803 (= (content!5215 lt!1184582) ((_ map or) (content!5215 (++!9199 lt!1184514 lt!1184517)) (content!5215 lt!1184503))))))

(declare-fun e!2155023 () List!37369)

(assert (=> d!1004735 (= lt!1184582 e!2155023)))

(declare-fun c!596576 () Bool)

(assert (=> d!1004735 (= c!596576 ((_ is Nil!37245) (++!9199 lt!1184514 lt!1184517)))))

(assert (=> d!1004735 (= (++!9199 (++!9199 lt!1184514 lt!1184517) lt!1184503) lt!1184582)))

(declare-fun b!3478982 () Bool)

(assert (=> b!3478982 (= e!2155023 lt!1184503)))

(declare-fun b!3478983 () Bool)

(assert (=> b!3478983 (= e!2155023 (Cons!37245 (h!42665 (++!9199 lt!1184514 lt!1184517)) (++!9199 (t!275320 (++!9199 lt!1184514 lt!1184517)) lt!1184503)))))

(declare-fun b!3478984 () Bool)

(declare-fun res!1403802 () Bool)

(assert (=> b!3478984 (=> (not res!1403802) (not e!2155024))))

(assert (=> b!3478984 (= res!1403802 (= (size!28285 lt!1184582) (+ (size!28285 (++!9199 lt!1184514 lt!1184517)) (size!28285 lt!1184503))))))

(declare-fun b!3478985 () Bool)

(assert (=> b!3478985 (= e!2155024 (or (not (= lt!1184503 Nil!37245)) (= lt!1184582 (++!9199 lt!1184514 lt!1184517))))))

(assert (= (and d!1004735 c!596576) b!3478982))

(assert (= (and d!1004735 (not c!596576)) b!3478983))

(assert (= (and d!1004735 res!1403803) b!3478984))

(assert (= (and b!3478984 res!1403802) b!3478985))

(declare-fun m!3895023 () Bool)

(assert (=> d!1004735 m!3895023))

(assert (=> d!1004735 m!3894741))

(declare-fun m!3895025 () Bool)

(assert (=> d!1004735 m!3895025))

(assert (=> d!1004735 m!3894997))

(declare-fun m!3895027 () Bool)

(assert (=> b!3478983 m!3895027))

(declare-fun m!3895029 () Bool)

(assert (=> b!3478984 m!3895029))

(assert (=> b!3478984 m!3894741))

(declare-fun m!3895031 () Bool)

(assert (=> b!3478984 m!3895031))

(assert (=> b!3478984 m!3895003))

(assert (=> b!3478806 d!1004735))

(declare-fun d!1004737 () Bool)

(declare-fun e!2155026 () Bool)

(assert (=> d!1004737 e!2155026))

(declare-fun res!1403805 () Bool)

(assert (=> d!1004737 (=> (not res!1403805) (not e!2155026))))

(declare-fun lt!1184583 () List!37369)

(assert (=> d!1004737 (= res!1403805 (= (content!5215 lt!1184583) ((_ map or) (content!5215 lt!1184514) (content!5215 lt!1184517))))))

(declare-fun e!2155025 () List!37369)

(assert (=> d!1004737 (= lt!1184583 e!2155025)))

(declare-fun c!596577 () Bool)

(assert (=> d!1004737 (= c!596577 ((_ is Nil!37245) lt!1184514))))

(assert (=> d!1004737 (= (++!9199 lt!1184514 lt!1184517) lt!1184583)))

(declare-fun b!3478986 () Bool)

(assert (=> b!3478986 (= e!2155025 lt!1184517)))

(declare-fun b!3478987 () Bool)

(assert (=> b!3478987 (= e!2155025 (Cons!37245 (h!42665 lt!1184514) (++!9199 (t!275320 lt!1184514) lt!1184517)))))

(declare-fun b!3478988 () Bool)

(declare-fun res!1403804 () Bool)

(assert (=> b!3478988 (=> (not res!1403804) (not e!2155026))))

(assert (=> b!3478988 (= res!1403804 (= (size!28285 lt!1184583) (+ (size!28285 lt!1184514) (size!28285 lt!1184517))))))

(declare-fun b!3478989 () Bool)

(assert (=> b!3478989 (= e!2155026 (or (not (= lt!1184517 Nil!37245)) (= lt!1184583 lt!1184514)))))

(assert (= (and d!1004737 c!596577) b!3478986))

(assert (= (and d!1004737 (not c!596577)) b!3478987))

(assert (= (and d!1004737 res!1403805) b!3478988))

(assert (= (and b!3478988 res!1403804) b!3478989))

(declare-fun m!3895033 () Bool)

(assert (=> d!1004737 m!3895033))

(declare-fun m!3895035 () Bool)

(assert (=> d!1004737 m!3895035))

(assert (=> d!1004737 m!3894975))

(declare-fun m!3895037 () Bool)

(assert (=> b!3478987 m!3895037))

(declare-fun m!3895039 () Bool)

(assert (=> b!3478988 m!3895039))

(assert (=> b!3478988 m!3894613))

(assert (=> b!3478988 m!3894983))

(assert (=> b!3478806 d!1004737))

(declare-fun d!1004739 () Bool)

(declare-fun res!1403808 () Bool)

(declare-fun e!2155029 () Bool)

(assert (=> d!1004739 (=> (not res!1403808) (not e!2155029))))

(declare-fun rulesValid!2054 (LexerInterface!5045 List!37370) Bool)

(assert (=> d!1004739 (= res!1403808 (rulesValid!2054 thiss!18206 rules!2135))))

(assert (=> d!1004739 (= (rulesInvariant!4442 thiss!18206 rules!2135) e!2155029)))

(declare-fun b!3478992 () Bool)

(declare-datatypes ((List!37372 0))(
  ( (Nil!37248) (Cons!37248 (h!42668 String!41764) (t!275417 List!37372)) )
))
(declare-fun noDuplicateTag!2050 (LexerInterface!5045 List!37370 List!37372) Bool)

(assert (=> b!3478992 (= e!2155029 (noDuplicateTag!2050 thiss!18206 rules!2135 Nil!37248))))

(assert (= (and d!1004739 res!1403808) b!3478992))

(declare-fun m!3895041 () Bool)

(assert (=> d!1004739 m!3895041))

(declare-fun m!3895043 () Bool)

(assert (=> b!3478992 m!3895043))

(assert (=> b!3478828 d!1004739))

(declare-fun d!1004741 () Bool)

(assert (=> d!1004741 (= (inv!50433 (tag!6076 (rule!8058 (h!42667 tokens!494)))) (= (mod (str.len (value!175955 (tag!6076 (rule!8058 (h!42667 tokens!494))))) 2) 0))))

(assert (=> b!3478808 d!1004741))

(declare-fun d!1004743 () Bool)

(declare-fun res!1403809 () Bool)

(declare-fun e!2155030 () Bool)

(assert (=> d!1004743 (=> (not res!1403809) (not e!2155030))))

(assert (=> d!1004743 (= res!1403809 (semiInverseModEq!2295 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))))))

(assert (=> d!1004743 (= (inv!50437 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) e!2155030)))

(declare-fun b!3478993 () Bool)

(assert (=> b!3478993 (= e!2155030 (equivClasses!2194 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))))))

(assert (= (and d!1004743 res!1403809) b!3478993))

(declare-fun m!3895045 () Bool)

(assert (=> d!1004743 m!3895045))

(declare-fun m!3895047 () Bool)

(assert (=> b!3478993 m!3895047))

(assert (=> b!3478808 d!1004743))

(declare-fun d!1004745 () Bool)

(declare-fun lt!1184586 () Token!10278)

(declare-fun apply!8815 (List!37371 Int) Token!10278)

(assert (=> d!1004745 (= lt!1184586 (apply!8815 (list!13583 (_1!21638 lt!1184506)) 0))))

(declare-fun apply!8816 (Conc!11288 Int) Token!10278)

(assert (=> d!1004745 (= lt!1184586 (apply!8816 (c!596546 (_1!21638 lt!1184506)) 0))))

(declare-fun e!2155033 () Bool)

(assert (=> d!1004745 e!2155033))

(declare-fun res!1403812 () Bool)

(assert (=> d!1004745 (=> (not res!1403812) (not e!2155033))))

(assert (=> d!1004745 (= res!1403812 (<= 0 0))))

(assert (=> d!1004745 (= (apply!8812 (_1!21638 lt!1184506) 0) lt!1184586)))

(declare-fun b!3478996 () Bool)

(assert (=> b!3478996 (= e!2155033 (< 0 (size!28284 (_1!21638 lt!1184506))))))

(assert (= (and d!1004745 res!1403812) b!3478996))

(declare-fun m!3895049 () Bool)

(assert (=> d!1004745 m!3895049))

(assert (=> d!1004745 m!3895049))

(declare-fun m!3895051 () Bool)

(assert (=> d!1004745 m!3895051))

(declare-fun m!3895053 () Bool)

(assert (=> d!1004745 m!3895053))

(assert (=> b!3478996 m!3894655))

(assert (=> b!3478809 d!1004745))

(declare-fun d!1004747 () Bool)

(declare-fun res!1403817 () Bool)

(declare-fun e!2155036 () Bool)

(assert (=> d!1004747 (=> (not res!1403817) (not e!2155036))))

(assert (=> d!1004747 (= res!1403817 (not (isEmpty!21641 (originalCharacters!6170 (h!42667 tokens!494)))))))

(assert (=> d!1004747 (= (inv!50436 (h!42667 tokens!494)) e!2155036)))

(declare-fun b!3479001 () Bool)

(declare-fun res!1403818 () Bool)

(assert (=> b!3479001 (=> (not res!1403818) (not e!2155036))))

(assert (=> b!3479001 (= res!1403818 (= (originalCharacters!6170 (h!42667 tokens!494)) (list!13581 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (value!175956 (h!42667 tokens!494))))))))

(declare-fun b!3479002 () Bool)

(assert (=> b!3479002 (= e!2155036 (= (size!28283 (h!42667 tokens!494)) (size!28285 (originalCharacters!6170 (h!42667 tokens!494)))))))

(assert (= (and d!1004747 res!1403817) b!3479001))

(assert (= (and b!3479001 res!1403818) b!3479002))

(declare-fun b_lambda!100573 () Bool)

(assert (=> (not b_lambda!100573) (not b!3479001)))

(declare-fun t!275344 () Bool)

(declare-fun tb!190729 () Bool)

(assert (=> (and b!3478829 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275344) tb!190729))

(declare-fun b!3479003 () Bool)

(declare-fun e!2155037 () Bool)

(declare-fun tp!1080968 () Bool)

(assert (=> b!3479003 (= e!2155037 (and (inv!50440 (c!596545 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (value!175956 (h!42667 tokens!494))))) tp!1080968))))

(declare-fun result!234850 () Bool)

(assert (=> tb!190729 (= result!234850 (and (inv!50441 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (value!175956 (h!42667 tokens!494)))) e!2155037))))

(assert (= tb!190729 b!3479003))

(declare-fun m!3895055 () Bool)

(assert (=> b!3479003 m!3895055))

(declare-fun m!3895057 () Bool)

(assert (=> tb!190729 m!3895057))

(assert (=> b!3479001 t!275344))

(declare-fun b_and!245449 () Bool)

(assert (= b_and!245443 (and (=> t!275344 result!234850) b_and!245449)))

(declare-fun t!275346 () Bool)

(declare-fun tb!190731 () Bool)

(assert (=> (and b!3478807 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275346) tb!190731))

(declare-fun result!234852 () Bool)

(assert (= result!234852 result!234850))

(assert (=> b!3479001 t!275346))

(declare-fun b_and!245451 () Bool)

(assert (= b_and!245445 (and (=> t!275346 result!234852) b_and!245451)))

(declare-fun tb!190733 () Bool)

(declare-fun t!275348 () Bool)

(assert (=> (and b!3478800 (= (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275348) tb!190733))

(declare-fun result!234854 () Bool)

(assert (= result!234854 result!234850))

(assert (=> b!3479001 t!275348))

(declare-fun b_and!245453 () Bool)

(assert (= b_and!245447 (and (=> t!275348 result!234854) b_and!245453)))

(declare-fun m!3895059 () Bool)

(assert (=> d!1004747 m!3895059))

(declare-fun m!3895061 () Bool)

(assert (=> b!3479001 m!3895061))

(assert (=> b!3479001 m!3895061))

(declare-fun m!3895063 () Bool)

(assert (=> b!3479001 m!3895063))

(declare-fun m!3895065 () Bool)

(assert (=> b!3479002 m!3895065))

(assert (=> b!3478831 d!1004747))

(declare-fun d!1004749 () Bool)

(declare-fun e!2155040 () Bool)

(assert (=> d!1004749 e!2155040))

(declare-fun res!1403823 () Bool)

(assert (=> d!1004749 (=> (not res!1403823) (not e!2155040))))

(assert (=> d!1004749 (= res!1403823 (isDefined!5826 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 separatorToken!241)))))))

(declare-fun lt!1184589 () Unit!52678)

(declare-fun choose!20148 (LexerInterface!5045 List!37370 List!37369 Token!10278) Unit!52678)

(assert (=> d!1004749 (= lt!1184589 (choose!20148 thiss!18206 rules!2135 lt!1184517 separatorToken!241))))

(assert (=> d!1004749 (rulesInvariant!4442 thiss!18206 rules!2135)))

(assert (=> d!1004749 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1099 thiss!18206 rules!2135 lt!1184517 separatorToken!241) lt!1184589)))

(declare-fun b!3479008 () Bool)

(declare-fun res!1403824 () Bool)

(assert (=> b!3479008 (=> (not res!1403824) (not e!2155040))))

(assert (=> b!3479008 (= res!1403824 (matchR!4799 (regex!5456 (get!11935 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 separatorToken!241))))) (list!13581 (charsOf!3470 separatorToken!241))))))

(declare-fun b!3479009 () Bool)

(assert (=> b!3479009 (= e!2155040 (= (rule!8058 separatorToken!241) (get!11935 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 separatorToken!241))))))))

(assert (= (and d!1004749 res!1403823) b!3479008))

(assert (= (and b!3479008 res!1403824) b!3479009))

(assert (=> d!1004749 m!3894625))

(assert (=> d!1004749 m!3894625))

(declare-fun m!3895067 () Bool)

(assert (=> d!1004749 m!3895067))

(declare-fun m!3895069 () Bool)

(assert (=> d!1004749 m!3895069))

(assert (=> d!1004749 m!3894689))

(assert (=> b!3479008 m!3894725))

(declare-fun m!3895071 () Bool)

(assert (=> b!3479008 m!3895071))

(assert (=> b!3479008 m!3894625))

(assert (=> b!3479008 m!3894713))

(assert (=> b!3479008 m!3894713))

(assert (=> b!3479008 m!3894725))

(assert (=> b!3479008 m!3894625))

(declare-fun m!3895073 () Bool)

(assert (=> b!3479008 m!3895073))

(assert (=> b!3479009 m!3894625))

(assert (=> b!3479009 m!3894625))

(assert (=> b!3479009 m!3895073))

(assert (=> b!3478810 d!1004749))

(declare-fun d!1004751 () Bool)

(declare-fun lt!1184607 () BalanceConc!22188)

(declare-fun printListTailRec!700 (LexerInterface!5045 List!37371 List!37369) List!37369)

(declare-fun dropList!1217 (BalanceConc!22190 Int) List!37371)

(assert (=> d!1004751 (= (list!13581 lt!1184607) (printListTailRec!700 thiss!18206 (dropList!1217 lt!1184491 0) (list!13581 (BalanceConc!22189 Empty!11287))))))

(declare-fun e!2155046 () BalanceConc!22188)

(assert (=> d!1004751 (= lt!1184607 e!2155046)))

(declare-fun c!596580 () Bool)

(assert (=> d!1004751 (= c!596580 (>= 0 (size!28284 lt!1184491)))))

(declare-fun e!2155045 () Bool)

(assert (=> d!1004751 e!2155045))

(declare-fun res!1403827 () Bool)

(assert (=> d!1004751 (=> (not res!1403827) (not e!2155045))))

(assert (=> d!1004751 (= res!1403827 (>= 0 0))))

(assert (=> d!1004751 (= (printTailRec!1540 thiss!18206 lt!1184491 0 (BalanceConc!22189 Empty!11287)) lt!1184607)))

(declare-fun b!3479016 () Bool)

(assert (=> b!3479016 (= e!2155045 (<= 0 (size!28284 lt!1184491)))))

(declare-fun b!3479017 () Bool)

(assert (=> b!3479017 (= e!2155046 (BalanceConc!22189 Empty!11287))))

(declare-fun b!3479018 () Bool)

(declare-fun ++!9201 (BalanceConc!22188 BalanceConc!22188) BalanceConc!22188)

(assert (=> b!3479018 (= e!2155046 (printTailRec!1540 thiss!18206 lt!1184491 (+ 0 1) (++!9201 (BalanceConc!22189 Empty!11287) (charsOf!3470 (apply!8812 lt!1184491 0)))))))

(declare-fun lt!1184608 () List!37371)

(assert (=> b!3479018 (= lt!1184608 (list!13583 lt!1184491))))

(declare-fun lt!1184609 () Unit!52678)

(declare-fun lemmaDropApply!1175 (List!37371 Int) Unit!52678)

(assert (=> b!3479018 (= lt!1184609 (lemmaDropApply!1175 lt!1184608 0))))

(declare-fun head!7349 (List!37371) Token!10278)

(declare-fun drop!2025 (List!37371 Int) List!37371)

(assert (=> b!3479018 (= (head!7349 (drop!2025 lt!1184608 0)) (apply!8815 lt!1184608 0))))

(declare-fun lt!1184604 () Unit!52678)

(assert (=> b!3479018 (= lt!1184604 lt!1184609)))

(declare-fun lt!1184610 () List!37371)

(assert (=> b!3479018 (= lt!1184610 (list!13583 lt!1184491))))

(declare-fun lt!1184605 () Unit!52678)

(declare-fun lemmaDropTail!1059 (List!37371 Int) Unit!52678)

(assert (=> b!3479018 (= lt!1184605 (lemmaDropTail!1059 lt!1184610 0))))

(declare-fun tail!5456 (List!37371) List!37371)

(assert (=> b!3479018 (= (tail!5456 (drop!2025 lt!1184610 0)) (drop!2025 lt!1184610 (+ 0 1)))))

(declare-fun lt!1184606 () Unit!52678)

(assert (=> b!3479018 (= lt!1184606 lt!1184605)))

(assert (= (and d!1004751 res!1403827) b!3479016))

(assert (= (and d!1004751 c!596580) b!3479017))

(assert (= (and d!1004751 (not c!596580)) b!3479018))

(declare-fun m!3895075 () Bool)

(assert (=> d!1004751 m!3895075))

(declare-fun m!3895077 () Bool)

(assert (=> d!1004751 m!3895077))

(declare-fun m!3895079 () Bool)

(assert (=> d!1004751 m!3895079))

(declare-fun m!3895081 () Bool)

(assert (=> d!1004751 m!3895081))

(assert (=> d!1004751 m!3895075))

(assert (=> d!1004751 m!3895077))

(declare-fun m!3895083 () Bool)

(assert (=> d!1004751 m!3895083))

(assert (=> b!3479016 m!3895083))

(declare-fun m!3895085 () Bool)

(assert (=> b!3479018 m!3895085))

(declare-fun m!3895087 () Bool)

(assert (=> b!3479018 m!3895087))

(declare-fun m!3895089 () Bool)

(assert (=> b!3479018 m!3895089))

(declare-fun m!3895091 () Bool)

(assert (=> b!3479018 m!3895091))

(declare-fun m!3895093 () Bool)

(assert (=> b!3479018 m!3895093))

(declare-fun m!3895095 () Bool)

(assert (=> b!3479018 m!3895095))

(declare-fun m!3895097 () Bool)

(assert (=> b!3479018 m!3895097))

(declare-fun m!3895099 () Bool)

(assert (=> b!3479018 m!3895099))

(assert (=> b!3479018 m!3895097))

(assert (=> b!3479018 m!3895089))

(declare-fun m!3895101 () Bool)

(assert (=> b!3479018 m!3895101))

(declare-fun m!3895103 () Bool)

(assert (=> b!3479018 m!3895103))

(assert (=> b!3479018 m!3895103))

(declare-fun m!3895105 () Bool)

(assert (=> b!3479018 m!3895105))

(declare-fun m!3895107 () Bool)

(assert (=> b!3479018 m!3895107))

(declare-fun m!3895109 () Bool)

(assert (=> b!3479018 m!3895109))

(assert (=> b!3479018 m!3895087))

(assert (=> b!3479018 m!3895101))

(assert (=> b!3478810 d!1004751))

(declare-fun d!1004753 () Bool)

(declare-fun e!2155053 () Bool)

(assert (=> d!1004753 e!2155053))

(declare-fun res!1403836 () Bool)

(assert (=> d!1004753 (=> (not res!1403836) (not e!2155053))))

(declare-fun lt!1184617 () BalanceConc!22190)

(assert (=> d!1004753 (= res!1403836 (= (list!13583 lt!1184617) (Cons!37247 separatorToken!241 Nil!37247)))))

(declare-fun singleton!1132 (Token!10278) BalanceConc!22190)

(assert (=> d!1004753 (= lt!1184617 (singleton!1132 separatorToken!241))))

(assert (=> d!1004753 (= (singletonSeq!2552 separatorToken!241) lt!1184617)))

(declare-fun b!3479027 () Bool)

(declare-fun isBalanced!3431 (Conc!11288) Bool)

(assert (=> b!3479027 (= e!2155053 (isBalanced!3431 (c!596546 lt!1184617)))))

(assert (= (and d!1004753 res!1403836) b!3479027))

(declare-fun m!3895111 () Bool)

(assert (=> d!1004753 m!3895111))

(declare-fun m!3895113 () Bool)

(assert (=> d!1004753 m!3895113))

(declare-fun m!3895115 () Bool)

(assert (=> b!3479027 m!3895115))

(assert (=> b!3478810 d!1004753))

(declare-fun b!3479049 () Bool)

(declare-fun res!1403856 () Bool)

(declare-fun e!2155063 () Bool)

(assert (=> b!3479049 (=> (not res!1403856) (not e!2155063))))

(declare-fun lt!1184635 () Option!7566)

(declare-fun get!11936 (Option!7566) tuple2!37010)

(assert (=> b!3479049 (= res!1403856 (= (value!175956 (_1!21639 (get!11936 lt!1184635))) (apply!8813 (transformation!5456 (rule!8058 (_1!21639 (get!11936 lt!1184635)))) (seqFromList!3965 (originalCharacters!6170 (_1!21639 (get!11936 lt!1184635)))))))))

(declare-fun bm!250888 () Bool)

(declare-fun call!250893 () Option!7566)

(assert (=> bm!250888 (= call!250893 (maxPrefixOneRule!1752 thiss!18206 (h!42666 rules!2135) lt!1184508))))

(declare-fun b!3479050 () Bool)

(declare-fun res!1403859 () Bool)

(assert (=> b!3479050 (=> (not res!1403859) (not e!2155063))))

(assert (=> b!3479050 (= res!1403859 (= (list!13581 (charsOf!3470 (_1!21639 (get!11936 lt!1184635)))) (originalCharacters!6170 (_1!21639 (get!11936 lt!1184635)))))))

(declare-fun b!3479052 () Bool)

(declare-fun res!1403858 () Bool)

(assert (=> b!3479052 (=> (not res!1403858) (not e!2155063))))

(assert (=> b!3479052 (= res!1403858 (< (size!28285 (_2!21639 (get!11936 lt!1184635))) (size!28285 lt!1184508)))))

(declare-fun b!3479053 () Bool)

(declare-fun res!1403854 () Bool)

(assert (=> b!3479053 (=> (not res!1403854) (not e!2155063))))

(assert (=> b!3479053 (= res!1403854 (matchR!4799 (regex!5456 (rule!8058 (_1!21639 (get!11936 lt!1184635)))) (list!13581 (charsOf!3470 (_1!21639 (get!11936 lt!1184635))))))))

(declare-fun b!3479054 () Bool)

(declare-fun contains!6941 (List!37370 Rule!10712) Bool)

(assert (=> b!3479054 (= e!2155063 (contains!6941 rules!2135 (rule!8058 (_1!21639 (get!11936 lt!1184635)))))))

(declare-fun b!3479055 () Bool)

(declare-fun e!2155064 () Option!7566)

(assert (=> b!3479055 (= e!2155064 call!250893)))

(declare-fun b!3479056 () Bool)

(declare-fun e!2155062 () Bool)

(assert (=> b!3479056 (= e!2155062 e!2155063)))

(declare-fun res!1403857 () Bool)

(assert (=> b!3479056 (=> (not res!1403857) (not e!2155063))))

(declare-fun isDefined!5827 (Option!7566) Bool)

(assert (=> b!3479056 (= res!1403857 (isDefined!5827 lt!1184635))))

(declare-fun b!3479057 () Bool)

(declare-fun res!1403855 () Bool)

(assert (=> b!3479057 (=> (not res!1403855) (not e!2155063))))

(assert (=> b!3479057 (= res!1403855 (= (++!9199 (list!13581 (charsOf!3470 (_1!21639 (get!11936 lt!1184635)))) (_2!21639 (get!11936 lt!1184635))) lt!1184508))))

(declare-fun d!1004755 () Bool)

(assert (=> d!1004755 e!2155062))

(declare-fun res!1403860 () Bool)

(assert (=> d!1004755 (=> res!1403860 e!2155062)))

(declare-fun isEmpty!21644 (Option!7566) Bool)

(assert (=> d!1004755 (= res!1403860 (isEmpty!21644 lt!1184635))))

(assert (=> d!1004755 (= lt!1184635 e!2155064)))

(declare-fun c!596583 () Bool)

(assert (=> d!1004755 (= c!596583 (and ((_ is Cons!37246) rules!2135) ((_ is Nil!37246) (t!275321 rules!2135))))))

(declare-fun lt!1184637 () Unit!52678)

(declare-fun lt!1184636 () Unit!52678)

(assert (=> d!1004755 (= lt!1184637 lt!1184636)))

(declare-fun isPrefix!2855 (List!37369 List!37369) Bool)

(assert (=> d!1004755 (isPrefix!2855 lt!1184508 lt!1184508)))

(declare-fun lemmaIsPrefixRefl!1814 (List!37369 List!37369) Unit!52678)

(assert (=> d!1004755 (= lt!1184636 (lemmaIsPrefixRefl!1814 lt!1184508 lt!1184508))))

(declare-fun rulesValidInductive!1864 (LexerInterface!5045 List!37370) Bool)

(assert (=> d!1004755 (rulesValidInductive!1864 thiss!18206 rules!2135)))

(assert (=> d!1004755 (= (maxPrefix!2585 thiss!18206 rules!2135 lt!1184508) lt!1184635)))

(declare-fun b!3479051 () Bool)

(declare-fun lt!1184634 () Option!7566)

(declare-fun lt!1184633 () Option!7566)

(assert (=> b!3479051 (= e!2155064 (ite (and ((_ is None!7565) lt!1184634) ((_ is None!7565) lt!1184633)) None!7565 (ite ((_ is None!7565) lt!1184633) lt!1184634 (ite ((_ is None!7565) lt!1184634) lt!1184633 (ite (>= (size!28283 (_1!21639 (v!36945 lt!1184634))) (size!28283 (_1!21639 (v!36945 lt!1184633)))) lt!1184634 lt!1184633)))))))

(assert (=> b!3479051 (= lt!1184634 call!250893)))

(assert (=> b!3479051 (= lt!1184633 (maxPrefix!2585 thiss!18206 (t!275321 rules!2135) lt!1184508))))

(assert (= (and d!1004755 c!596583) b!3479055))

(assert (= (and d!1004755 (not c!596583)) b!3479051))

(assert (= (or b!3479055 b!3479051) bm!250888))

(assert (= (and d!1004755 (not res!1403860)) b!3479056))

(assert (= (and b!3479056 res!1403857) b!3479050))

(assert (= (and b!3479050 res!1403859) b!3479052))

(assert (= (and b!3479052 res!1403858) b!3479057))

(assert (= (and b!3479057 res!1403855) b!3479049))

(assert (= (and b!3479049 res!1403856) b!3479053))

(assert (= (and b!3479053 res!1403854) b!3479054))

(declare-fun m!3895139 () Bool)

(assert (=> b!3479050 m!3895139))

(declare-fun m!3895141 () Bool)

(assert (=> b!3479050 m!3895141))

(assert (=> b!3479050 m!3895141))

(declare-fun m!3895143 () Bool)

(assert (=> b!3479050 m!3895143))

(declare-fun m!3895145 () Bool)

(assert (=> d!1004755 m!3895145))

(declare-fun m!3895147 () Bool)

(assert (=> d!1004755 m!3895147))

(declare-fun m!3895149 () Bool)

(assert (=> d!1004755 m!3895149))

(declare-fun m!3895151 () Bool)

(assert (=> d!1004755 m!3895151))

(assert (=> b!3479052 m!3895139))

(declare-fun m!3895153 () Bool)

(assert (=> b!3479052 m!3895153))

(declare-fun m!3895155 () Bool)

(assert (=> b!3479052 m!3895155))

(declare-fun m!3895157 () Bool)

(assert (=> bm!250888 m!3895157))

(assert (=> b!3479053 m!3895139))

(assert (=> b!3479053 m!3895141))

(assert (=> b!3479053 m!3895141))

(assert (=> b!3479053 m!3895143))

(assert (=> b!3479053 m!3895143))

(declare-fun m!3895159 () Bool)

(assert (=> b!3479053 m!3895159))

(assert (=> b!3479054 m!3895139))

(declare-fun m!3895161 () Bool)

(assert (=> b!3479054 m!3895161))

(assert (=> b!3479057 m!3895139))

(assert (=> b!3479057 m!3895141))

(assert (=> b!3479057 m!3895141))

(assert (=> b!3479057 m!3895143))

(assert (=> b!3479057 m!3895143))

(declare-fun m!3895163 () Bool)

(assert (=> b!3479057 m!3895163))

(declare-fun m!3895165 () Bool)

(assert (=> b!3479056 m!3895165))

(assert (=> b!3479049 m!3895139))

(declare-fun m!3895167 () Bool)

(assert (=> b!3479049 m!3895167))

(assert (=> b!3479049 m!3895167))

(declare-fun m!3895169 () Bool)

(assert (=> b!3479049 m!3895169))

(declare-fun m!3895171 () Bool)

(assert (=> b!3479051 m!3895171))

(assert (=> b!3478810 d!1004755))

(declare-fun b!3479071 () Bool)

(declare-fun e!2155076 () Bool)

(declare-fun lt!1184646 () Option!7565)

(assert (=> b!3479071 (= e!2155076 (= (tag!6076 (get!11935 lt!1184646)) (tag!6076 (rule!8058 separatorToken!241))))))

(declare-fun b!3479072 () Bool)

(declare-fun e!2155073 () Option!7565)

(assert (=> b!3479072 (= e!2155073 None!7564)))

(declare-fun b!3479073 () Bool)

(declare-fun e!2155075 () Bool)

(assert (=> b!3479073 (= e!2155075 e!2155076)))

(declare-fun res!1403866 () Bool)

(assert (=> b!3479073 (=> (not res!1403866) (not e!2155076))))

(assert (=> b!3479073 (= res!1403866 (contains!6941 rules!2135 (get!11935 lt!1184646)))))

(declare-fun b!3479074 () Bool)

(declare-fun e!2155074 () Option!7565)

(assert (=> b!3479074 (= e!2155074 (Some!7564 (h!42666 rules!2135)))))

(declare-fun b!3479075 () Bool)

(assert (=> b!3479075 (= e!2155074 e!2155073)))

(declare-fun c!596589 () Bool)

(assert (=> b!3479075 (= c!596589 (and ((_ is Cons!37246) rules!2135) (not (= (tag!6076 (h!42666 rules!2135)) (tag!6076 (rule!8058 separatorToken!241))))))))

(declare-fun b!3479070 () Bool)

(declare-fun lt!1184644 () Unit!52678)

(declare-fun lt!1184645 () Unit!52678)

(assert (=> b!3479070 (= lt!1184644 lt!1184645)))

(assert (=> b!3479070 (rulesInvariant!4442 thiss!18206 (t!275321 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!443 (LexerInterface!5045 Rule!10712 List!37370) Unit!52678)

(assert (=> b!3479070 (= lt!1184645 (lemmaInvariantOnRulesThenOnTail!443 thiss!18206 (h!42666 rules!2135) (t!275321 rules!2135)))))

(assert (=> b!3479070 (= e!2155073 (getRuleFromTag!1099 thiss!18206 (t!275321 rules!2135) (tag!6076 (rule!8058 separatorToken!241))))))

(declare-fun d!1004761 () Bool)

(assert (=> d!1004761 e!2155075))

(declare-fun res!1403865 () Bool)

(assert (=> d!1004761 (=> res!1403865 e!2155075)))

(declare-fun isEmpty!21645 (Option!7565) Bool)

(assert (=> d!1004761 (= res!1403865 (isEmpty!21645 lt!1184646))))

(assert (=> d!1004761 (= lt!1184646 e!2155074)))

(declare-fun c!596588 () Bool)

(assert (=> d!1004761 (= c!596588 (and ((_ is Cons!37246) rules!2135) (= (tag!6076 (h!42666 rules!2135)) (tag!6076 (rule!8058 separatorToken!241)))))))

(assert (=> d!1004761 (rulesInvariant!4442 thiss!18206 rules!2135)))

(assert (=> d!1004761 (= (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 separatorToken!241))) lt!1184646)))

(assert (= (and d!1004761 c!596588) b!3479074))

(assert (= (and d!1004761 (not c!596588)) b!3479075))

(assert (= (and b!3479075 c!596589) b!3479070))

(assert (= (and b!3479075 (not c!596589)) b!3479072))

(assert (= (and d!1004761 (not res!1403865)) b!3479073))

(assert (= (and b!3479073 res!1403866) b!3479071))

(declare-fun m!3895173 () Bool)

(assert (=> b!3479071 m!3895173))

(assert (=> b!3479073 m!3895173))

(assert (=> b!3479073 m!3895173))

(declare-fun m!3895175 () Bool)

(assert (=> b!3479073 m!3895175))

(declare-fun m!3895177 () Bool)

(assert (=> b!3479070 m!3895177))

(declare-fun m!3895179 () Bool)

(assert (=> b!3479070 m!3895179))

(declare-fun m!3895181 () Bool)

(assert (=> b!3479070 m!3895181))

(declare-fun m!3895183 () Bool)

(assert (=> d!1004761 m!3895183))

(assert (=> d!1004761 m!3894689))

(assert (=> b!3478810 d!1004761))

(declare-fun d!1004763 () Bool)

(declare-fun lt!1184649 () Int)

(declare-fun size!28287 (List!37371) Int)

(assert (=> d!1004763 (= lt!1184649 (size!28287 (list!13583 (_1!21638 lt!1184506))))))

(declare-fun size!28288 (Conc!11288) Int)

(assert (=> d!1004763 (= lt!1184649 (size!28288 (c!596546 (_1!21638 lt!1184506))))))

(assert (=> d!1004763 (= (size!28284 (_1!21638 lt!1184506)) lt!1184649)))

(declare-fun bs!561836 () Bool)

(assert (= bs!561836 d!1004763))

(assert (=> bs!561836 m!3895049))

(assert (=> bs!561836 m!3895049))

(declare-fun m!3895185 () Bool)

(assert (=> bs!561836 m!3895185))

(declare-fun m!3895187 () Bool)

(assert (=> bs!561836 m!3895187))

(assert (=> b!3478810 d!1004763))

(declare-fun d!1004765 () Bool)

(declare-fun lt!1184650 () Int)

(assert (=> d!1004765 (= lt!1184650 (size!28287 (list!13583 (_1!21638 lt!1184493))))))

(assert (=> d!1004765 (= lt!1184650 (size!28288 (c!596546 (_1!21638 lt!1184493))))))

(assert (=> d!1004765 (= (size!28284 (_1!21638 lt!1184493)) lt!1184650)))

(declare-fun bs!561837 () Bool)

(assert (= bs!561837 d!1004765))

(declare-fun m!3895189 () Bool)

(assert (=> bs!561837 m!3895189))

(assert (=> bs!561837 m!3895189))

(declare-fun m!3895191 () Bool)

(assert (=> bs!561837 m!3895191))

(declare-fun m!3895193 () Bool)

(assert (=> bs!561837 m!3895193))

(assert (=> b!3478810 d!1004765))

(declare-fun d!1004767 () Bool)

(declare-fun e!2155077 () Bool)

(assert (=> d!1004767 e!2155077))

(declare-fun res!1403867 () Bool)

(assert (=> d!1004767 (=> (not res!1403867) (not e!2155077))))

(declare-fun lt!1184651 () BalanceConc!22190)

(assert (=> d!1004767 (= res!1403867 (= (list!13583 lt!1184651) (Cons!37247 (h!42667 (t!275322 tokens!494)) Nil!37247)))))

(assert (=> d!1004767 (= lt!1184651 (singleton!1132 (h!42667 (t!275322 tokens!494))))))

(assert (=> d!1004767 (= (singletonSeq!2552 (h!42667 (t!275322 tokens!494))) lt!1184651)))

(declare-fun b!3479076 () Bool)

(assert (=> b!3479076 (= e!2155077 (isBalanced!3431 (c!596546 lt!1184651)))))

(assert (= (and d!1004767 res!1403867) b!3479076))

(declare-fun m!3895195 () Bool)

(assert (=> d!1004767 m!3895195))

(declare-fun m!3895197 () Bool)

(assert (=> d!1004767 m!3895197))

(declare-fun m!3895199 () Bool)

(assert (=> b!3479076 m!3895199))

(assert (=> b!3478810 d!1004767))

(declare-fun d!1004769 () Bool)

(declare-fun lt!1184654 () Int)

(assert (=> d!1004769 (>= lt!1184654 0)))

(declare-fun e!2155080 () Int)

(assert (=> d!1004769 (= lt!1184654 e!2155080)))

(declare-fun c!596592 () Bool)

(assert (=> d!1004769 (= c!596592 ((_ is Nil!37245) lt!1184514))))

(assert (=> d!1004769 (= (size!28285 lt!1184514) lt!1184654)))

(declare-fun b!3479081 () Bool)

(assert (=> b!3479081 (= e!2155080 0)))

(declare-fun b!3479082 () Bool)

(assert (=> b!3479082 (= e!2155080 (+ 1 (size!28285 (t!275320 lt!1184514))))))

(assert (= (and d!1004769 c!596592) b!3479081))

(assert (= (and d!1004769 (not c!596592)) b!3479082))

(declare-fun m!3895201 () Bool)

(assert (=> b!3479082 m!3895201))

(assert (=> b!3478810 d!1004769))

(declare-fun d!1004771 () Bool)

(assert (=> d!1004771 (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 (h!42667 tokens!494))))

(declare-fun lt!1184674 () Unit!52678)

(declare-fun choose!20150 (LexerInterface!5045 List!37370 List!37371 Token!10278) Unit!52678)

(assert (=> d!1004771 (= lt!1184674 (choose!20150 thiss!18206 rules!2135 tokens!494 (h!42667 tokens!494)))))

(assert (=> d!1004771 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1004771 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1034 thiss!18206 rules!2135 tokens!494 (h!42667 tokens!494)) lt!1184674)))

(declare-fun bs!561844 () Bool)

(assert (= bs!561844 d!1004771))

(assert (=> bs!561844 m!3894673))

(declare-fun m!3895319 () Bool)

(assert (=> bs!561844 m!3895319))

(assert (=> bs!561844 m!3894601))

(assert (=> b!3478810 d!1004771))

(declare-fun d!1004809 () Bool)

(declare-fun e!2155133 () Bool)

(assert (=> d!1004809 e!2155133))

(declare-fun res!1403915 () Bool)

(assert (=> d!1004809 (=> (not res!1403915) (not e!2155133))))

(assert (=> d!1004809 (= res!1403915 (isDefined!5826 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 (h!42667 tokens!494))))))))

(declare-fun lt!1184675 () Unit!52678)

(assert (=> d!1004809 (= lt!1184675 (choose!20148 thiss!18206 rules!2135 lt!1184514 (h!42667 tokens!494)))))

(assert (=> d!1004809 (rulesInvariant!4442 thiss!18206 rules!2135)))

(assert (=> d!1004809 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1099 thiss!18206 rules!2135 lt!1184514 (h!42667 tokens!494)) lt!1184675)))

(declare-fun b!3479175 () Bool)

(declare-fun res!1403916 () Bool)

(assert (=> b!3479175 (=> (not res!1403916) (not e!2155133))))

(assert (=> b!3479175 (= res!1403916 (matchR!4799 (regex!5456 (get!11935 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 (h!42667 tokens!494)))))) (list!13581 (charsOf!3470 (h!42667 tokens!494)))))))

(declare-fun b!3479176 () Bool)

(assert (=> b!3479176 (= e!2155133 (= (rule!8058 (h!42667 tokens!494)) (get!11935 (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 (h!42667 tokens!494)))))))))

(assert (= (and d!1004809 res!1403915) b!3479175))

(assert (= (and b!3479175 res!1403916) b!3479176))

(assert (=> d!1004809 m!3894637))

(assert (=> d!1004809 m!3894637))

(declare-fun m!3895321 () Bool)

(assert (=> d!1004809 m!3895321))

(declare-fun m!3895323 () Bool)

(assert (=> d!1004809 m!3895323))

(assert (=> d!1004809 m!3894689))

(assert (=> b!3479175 m!3894751))

(declare-fun m!3895325 () Bool)

(assert (=> b!3479175 m!3895325))

(assert (=> b!3479175 m!3894637))

(assert (=> b!3479175 m!3894749))

(assert (=> b!3479175 m!3894749))

(assert (=> b!3479175 m!3894751))

(assert (=> b!3479175 m!3894637))

(declare-fun m!3895327 () Bool)

(assert (=> b!3479175 m!3895327))

(assert (=> b!3479176 m!3894637))

(assert (=> b!3479176 m!3894637))

(assert (=> b!3479176 m!3895327))

(assert (=> b!3478810 d!1004809))

(declare-fun b!3479201 () Bool)

(declare-fun e!2155149 () List!37369)

(declare-fun call!250906 () List!37369)

(assert (=> b!3479201 (= e!2155149 call!250906)))

(declare-fun b!3479202 () Bool)

(declare-fun e!2155150 () List!37369)

(declare-fun call!250907 () List!37369)

(assert (=> b!3479202 (= e!2155150 call!250907)))

(declare-fun bm!250901 () Bool)

(declare-fun c!596626 () Bool)

(declare-fun c!596624 () Bool)

(assert (=> bm!250901 (= call!250907 (usedCharacters!690 (ite c!596626 (reg!10544 (regex!5456 (rule!8058 (h!42667 tokens!494)))) (ite c!596624 (regOne!20943 (regex!5456 (rule!8058 (h!42667 tokens!494)))) (regTwo!20942 (regex!5456 (rule!8058 (h!42667 tokens!494))))))))))

(declare-fun b!3479203 () Bool)

(declare-fun e!2155151 () List!37369)

(declare-fun e!2155148 () List!37369)

(assert (=> b!3479203 (= e!2155151 e!2155148)))

(declare-fun c!596627 () Bool)

(assert (=> b!3479203 (= c!596627 ((_ is ElementMatch!10215) (regex!5456 (rule!8058 (h!42667 tokens!494)))))))

(declare-fun b!3479204 () Bool)

(assert (=> b!3479204 (= e!2155148 (Cons!37245 (c!596544 (regex!5456 (rule!8058 (h!42667 tokens!494)))) Nil!37245))))

(declare-fun bm!250902 () Bool)

(declare-fun call!250908 () List!37369)

(assert (=> bm!250902 (= call!250908 (usedCharacters!690 (ite c!596624 (regTwo!20943 (regex!5456 (rule!8058 (h!42667 tokens!494)))) (regOne!20942 (regex!5456 (rule!8058 (h!42667 tokens!494)))))))))

(declare-fun b!3479205 () Bool)

(assert (=> b!3479205 (= e!2155149 call!250906)))

(declare-fun b!3479206 () Bool)

(assert (=> b!3479206 (= c!596626 ((_ is Star!10215) (regex!5456 (rule!8058 (h!42667 tokens!494)))))))

(assert (=> b!3479206 (= e!2155148 e!2155150)))

(declare-fun b!3479207 () Bool)

(assert (=> b!3479207 (= e!2155151 Nil!37245)))

(declare-fun bm!250903 () Bool)

(declare-fun call!250909 () List!37369)

(assert (=> bm!250903 (= call!250909 call!250907)))

(declare-fun bm!250904 () Bool)

(assert (=> bm!250904 (= call!250906 (++!9199 (ite c!596624 call!250909 call!250908) (ite c!596624 call!250908 call!250909)))))

(declare-fun d!1004811 () Bool)

(declare-fun c!596625 () Bool)

(assert (=> d!1004811 (= c!596625 (or ((_ is EmptyExpr!10215) (regex!5456 (rule!8058 (h!42667 tokens!494)))) ((_ is EmptyLang!10215) (regex!5456 (rule!8058 (h!42667 tokens!494))))))))

(assert (=> d!1004811 (= (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494)))) e!2155151)))

(declare-fun b!3479208 () Bool)

(assert (=> b!3479208 (= e!2155150 e!2155149)))

(assert (=> b!3479208 (= c!596624 ((_ is Union!10215) (regex!5456 (rule!8058 (h!42667 tokens!494)))))))

(assert (= (and d!1004811 c!596625) b!3479207))

(assert (= (and d!1004811 (not c!596625)) b!3479203))

(assert (= (and b!3479203 c!596627) b!3479204))

(assert (= (and b!3479203 (not c!596627)) b!3479206))

(assert (= (and b!3479206 c!596626) b!3479202))

(assert (= (and b!3479206 (not c!596626)) b!3479208))

(assert (= (and b!3479208 c!596624) b!3479201))

(assert (= (and b!3479208 (not c!596624)) b!3479205))

(assert (= (or b!3479201 b!3479205) bm!250902))

(assert (= (or b!3479201 b!3479205) bm!250903))

(assert (= (or b!3479201 b!3479205) bm!250904))

(assert (= (or b!3479202 bm!250903) bm!250901))

(declare-fun m!3895359 () Bool)

(assert (=> bm!250901 m!3895359))

(declare-fun m!3895361 () Bool)

(assert (=> bm!250902 m!3895361))

(declare-fun m!3895363 () Bool)

(assert (=> bm!250904 m!3895363))

(assert (=> b!3478810 d!1004811))

(declare-fun d!1004821 () Bool)

(assert (=> d!1004821 (= (isDefined!5826 lt!1184516) (not (isEmpty!21645 lt!1184516)))))

(declare-fun bs!561846 () Bool)

(assert (= bs!561846 d!1004821))

(declare-fun m!3895365 () Bool)

(assert (=> bs!561846 m!3895365))

(assert (=> b!3478810 d!1004821))

(declare-fun d!1004823 () Bool)

(assert (=> d!1004823 (= (isDefined!5826 lt!1184521) (not (isEmpty!21645 lt!1184521)))))

(declare-fun bs!561847 () Bool)

(assert (= bs!561847 d!1004823))

(declare-fun m!3895367 () Bool)

(assert (=> bs!561847 m!3895367))

(assert (=> b!3478810 d!1004823))

(declare-fun d!1004825 () Bool)

(assert (=> d!1004825 (= (maxPrefixOneRule!1752 thiss!18206 (rule!8058 (h!42667 tokens!494)) lt!1184514) (Some!7565 (tuple2!37011 (Token!10279 (apply!8813 (transformation!5456 (rule!8058 (h!42667 tokens!494))) (seqFromList!3965 lt!1184514)) (rule!8058 (h!42667 tokens!494)) (size!28285 lt!1184514) lt!1184514) Nil!37245)))))

(declare-fun lt!1184696 () Unit!52678)

(declare-fun choose!20152 (LexerInterface!5045 List!37370 List!37369 List!37369 List!37369 Rule!10712) Unit!52678)

(assert (=> d!1004825 (= lt!1184696 (choose!20152 thiss!18206 rules!2135 lt!1184514 lt!1184514 Nil!37245 (rule!8058 (h!42667 tokens!494))))))

(assert (=> d!1004825 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1004825 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!845 thiss!18206 rules!2135 lt!1184514 lt!1184514 Nil!37245 (rule!8058 (h!42667 tokens!494))) lt!1184696)))

(declare-fun bs!561848 () Bool)

(assert (= bs!561848 d!1004825))

(assert (=> bs!561848 m!3894613))

(assert (=> bs!561848 m!3894649))

(declare-fun m!3895393 () Bool)

(assert (=> bs!561848 m!3895393))

(assert (=> bs!561848 m!3894601))

(assert (=> bs!561848 m!3894709))

(declare-fun m!3895395 () Bool)

(assert (=> bs!561848 m!3895395))

(assert (=> bs!561848 m!3894709))

(assert (=> b!3478810 d!1004825))

(declare-fun d!1004833 () Bool)

(declare-fun lt!1184699 () Bool)

(assert (=> d!1004833 (= lt!1184699 (select (content!5215 (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494))))) lt!1184522))))

(declare-fun e!2155175 () Bool)

(assert (=> d!1004833 (= lt!1184699 e!2155175)))

(declare-fun res!1403941 () Bool)

(assert (=> d!1004833 (=> (not res!1403941) (not e!2155175))))

(assert (=> d!1004833 (= res!1403941 ((_ is Cons!37245) (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494))))))))

(assert (=> d!1004833 (= (contains!6940 (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494)))) lt!1184522) lt!1184699)))

(declare-fun b!3479238 () Bool)

(declare-fun e!2155176 () Bool)

(assert (=> b!3479238 (= e!2155175 e!2155176)))

(declare-fun res!1403940 () Bool)

(assert (=> b!3479238 (=> res!1403940 e!2155176)))

(assert (=> b!3479238 (= res!1403940 (= (h!42665 (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494))))) lt!1184522))))

(declare-fun b!3479239 () Bool)

(assert (=> b!3479239 (= e!2155176 (contains!6940 (t!275320 (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494))))) lt!1184522))))

(assert (= (and d!1004833 res!1403941) b!3479238))

(assert (= (and b!3479238 (not res!1403940)) b!3479239))

(assert (=> d!1004833 m!3894629))

(declare-fun m!3895397 () Bool)

(assert (=> d!1004833 m!3895397))

(declare-fun m!3895399 () Bool)

(assert (=> d!1004833 m!3895399))

(declare-fun m!3895401 () Bool)

(assert (=> b!3479239 m!3895401))

(assert (=> b!3478810 d!1004833))

(declare-fun d!1004835 () Bool)

(declare-fun lt!1184700 () Bool)

(declare-fun e!2155177 () Bool)

(assert (=> d!1004835 (= lt!1184700 e!2155177)))

(declare-fun res!1403943 () Bool)

(assert (=> d!1004835 (=> (not res!1403943) (not e!2155177))))

(assert (=> d!1004835 (= res!1403943 (= (list!13583 (_1!21638 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 (h!42667 (t!275322 tokens!494))))))) (list!13583 (singletonSeq!2552 (h!42667 (t!275322 tokens!494))))))))

(declare-fun e!2155178 () Bool)

(assert (=> d!1004835 (= lt!1184700 e!2155178)))

(declare-fun res!1403942 () Bool)

(assert (=> d!1004835 (=> (not res!1403942) (not e!2155178))))

(declare-fun lt!1184701 () tuple2!37008)

(assert (=> d!1004835 (= res!1403942 (= (size!28284 (_1!21638 lt!1184701)) 1))))

(assert (=> d!1004835 (= lt!1184701 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 (h!42667 (t!275322 tokens!494))))))))

(assert (=> d!1004835 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1004835 (= (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 (h!42667 (t!275322 tokens!494))) lt!1184700)))

(declare-fun b!3479240 () Bool)

(declare-fun res!1403944 () Bool)

(assert (=> b!3479240 (=> (not res!1403944) (not e!2155178))))

(assert (=> b!3479240 (= res!1403944 (= (apply!8812 (_1!21638 lt!1184701) 0) (h!42667 (t!275322 tokens!494))))))

(declare-fun b!3479241 () Bool)

(assert (=> b!3479241 (= e!2155178 (isEmpty!21635 (_2!21638 lt!1184701)))))

(declare-fun b!3479242 () Bool)

(assert (=> b!3479242 (= e!2155177 (isEmpty!21635 (_2!21638 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 (h!42667 (t!275322 tokens!494))))))))))

(assert (= (and d!1004835 res!1403942) b!3479240))

(assert (= (and b!3479240 res!1403944) b!3479241))

(assert (= (and d!1004835 res!1403943) b!3479242))

(assert (=> d!1004835 m!3894627))

(declare-fun m!3895403 () Bool)

(assert (=> d!1004835 m!3895403))

(assert (=> d!1004835 m!3894627))

(assert (=> d!1004835 m!3894601))

(declare-fun m!3895405 () Bool)

(assert (=> d!1004835 m!3895405))

(declare-fun m!3895407 () Bool)

(assert (=> d!1004835 m!3895407))

(declare-fun m!3895409 () Bool)

(assert (=> d!1004835 m!3895409))

(assert (=> d!1004835 m!3894627))

(assert (=> d!1004835 m!3895405))

(declare-fun m!3895411 () Bool)

(assert (=> d!1004835 m!3895411))

(declare-fun m!3895413 () Bool)

(assert (=> b!3479240 m!3895413))

(declare-fun m!3895415 () Bool)

(assert (=> b!3479241 m!3895415))

(assert (=> b!3479242 m!3894627))

(assert (=> b!3479242 m!3894627))

(assert (=> b!3479242 m!3895405))

(assert (=> b!3479242 m!3895405))

(assert (=> b!3479242 m!3895407))

(declare-fun m!3895417 () Bool)

(assert (=> b!3479242 m!3895417))

(assert (=> b!3478810 d!1004835))

(declare-fun d!1004837 () Bool)

(declare-fun dynLambda!15762 (Int BalanceConc!22188) TokenValue!5686)

(assert (=> d!1004837 (= (apply!8813 (transformation!5456 (rule!8058 (h!42667 tokens!494))) lt!1184495) (dynLambda!15762 (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) lt!1184495))))

(declare-fun b_lambda!100581 () Bool)

(assert (=> (not b_lambda!100581) (not d!1004837)))

(declare-fun tb!190747 () Bool)

(declare-fun t!275369 () Bool)

(assert (=> (and b!3478829 (= (toValue!7692 (transformation!5456 (h!42666 rules!2135))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275369) tb!190747))

(declare-fun result!234868 () Bool)

(assert (=> tb!190747 (= result!234868 (inv!21 (dynLambda!15762 (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) lt!1184495)))))

(declare-fun m!3895419 () Bool)

(assert (=> tb!190747 m!3895419))

(assert (=> d!1004837 t!275369))

(declare-fun b_and!245473 () Bool)

(assert (= b_and!245419 (and (=> t!275369 result!234868) b_and!245473)))

(declare-fun t!275371 () Bool)

(declare-fun tb!190749 () Bool)

(assert (=> (and b!3478807 (= (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275371) tb!190749))

(declare-fun result!234872 () Bool)

(assert (= result!234872 result!234868))

(assert (=> d!1004837 t!275371))

(declare-fun b_and!245475 () Bool)

(assert (= b_and!245423 (and (=> t!275371 result!234872) b_and!245475)))

(declare-fun t!275373 () Bool)

(declare-fun tb!190751 () Bool)

(assert (=> (and b!3478800 (= (toValue!7692 (transformation!5456 (rule!8058 separatorToken!241))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275373) tb!190751))

(declare-fun result!234874 () Bool)

(assert (= result!234874 result!234868))

(assert (=> d!1004837 t!275373))

(declare-fun b_and!245477 () Bool)

(assert (= b_and!245427 (and (=> t!275373 result!234874) b_and!245477)))

(declare-fun m!3895421 () Bool)

(assert (=> d!1004837 m!3895421))

(assert (=> b!3478810 d!1004837))

(declare-fun d!1004839 () Bool)

(assert (=> d!1004839 (= (head!7347 lt!1184517) (h!42665 lt!1184517))))

(assert (=> b!3478810 d!1004839))

(declare-fun d!1004841 () Bool)

(declare-fun lt!1184705 () BalanceConc!22188)

(assert (=> d!1004841 (= (list!13581 lt!1184705) (printListTailRec!700 thiss!18206 (dropList!1217 lt!1184496 0) (list!13581 (BalanceConc!22189 Empty!11287))))))

(declare-fun e!2155183 () BalanceConc!22188)

(assert (=> d!1004841 (= lt!1184705 e!2155183)))

(declare-fun c!596634 () Bool)

(assert (=> d!1004841 (= c!596634 (>= 0 (size!28284 lt!1184496)))))

(declare-fun e!2155182 () Bool)

(assert (=> d!1004841 e!2155182))

(declare-fun res!1403945 () Bool)

(assert (=> d!1004841 (=> (not res!1403945) (not e!2155182))))

(assert (=> d!1004841 (= res!1403945 (>= 0 0))))

(assert (=> d!1004841 (= (printTailRec!1540 thiss!18206 lt!1184496 0 (BalanceConc!22189 Empty!11287)) lt!1184705)))

(declare-fun b!3479245 () Bool)

(assert (=> b!3479245 (= e!2155182 (<= 0 (size!28284 lt!1184496)))))

(declare-fun b!3479246 () Bool)

(assert (=> b!3479246 (= e!2155183 (BalanceConc!22189 Empty!11287))))

(declare-fun b!3479247 () Bool)

(assert (=> b!3479247 (= e!2155183 (printTailRec!1540 thiss!18206 lt!1184496 (+ 0 1) (++!9201 (BalanceConc!22189 Empty!11287) (charsOf!3470 (apply!8812 lt!1184496 0)))))))

(declare-fun lt!1184706 () List!37371)

(assert (=> b!3479247 (= lt!1184706 (list!13583 lt!1184496))))

(declare-fun lt!1184707 () Unit!52678)

(assert (=> b!3479247 (= lt!1184707 (lemmaDropApply!1175 lt!1184706 0))))

(assert (=> b!3479247 (= (head!7349 (drop!2025 lt!1184706 0)) (apply!8815 lt!1184706 0))))

(declare-fun lt!1184702 () Unit!52678)

(assert (=> b!3479247 (= lt!1184702 lt!1184707)))

(declare-fun lt!1184708 () List!37371)

(assert (=> b!3479247 (= lt!1184708 (list!13583 lt!1184496))))

(declare-fun lt!1184703 () Unit!52678)

(assert (=> b!3479247 (= lt!1184703 (lemmaDropTail!1059 lt!1184708 0))))

(assert (=> b!3479247 (= (tail!5456 (drop!2025 lt!1184708 0)) (drop!2025 lt!1184708 (+ 0 1)))))

(declare-fun lt!1184704 () Unit!52678)

(assert (=> b!3479247 (= lt!1184704 lt!1184703)))

(assert (= (and d!1004841 res!1403945) b!3479245))

(assert (= (and d!1004841 c!596634) b!3479246))

(assert (= (and d!1004841 (not c!596634)) b!3479247))

(declare-fun m!3895423 () Bool)

(assert (=> d!1004841 m!3895423))

(assert (=> d!1004841 m!3895077))

(declare-fun m!3895425 () Bool)

(assert (=> d!1004841 m!3895425))

(declare-fun m!3895427 () Bool)

(assert (=> d!1004841 m!3895427))

(assert (=> d!1004841 m!3895423))

(assert (=> d!1004841 m!3895077))

(declare-fun m!3895429 () Bool)

(assert (=> d!1004841 m!3895429))

(assert (=> b!3479245 m!3895429))

(declare-fun m!3895431 () Bool)

(assert (=> b!3479247 m!3895431))

(declare-fun m!3895433 () Bool)

(assert (=> b!3479247 m!3895433))

(declare-fun m!3895435 () Bool)

(assert (=> b!3479247 m!3895435))

(declare-fun m!3895437 () Bool)

(assert (=> b!3479247 m!3895437))

(declare-fun m!3895439 () Bool)

(assert (=> b!3479247 m!3895439))

(declare-fun m!3895441 () Bool)

(assert (=> b!3479247 m!3895441))

(declare-fun m!3895443 () Bool)

(assert (=> b!3479247 m!3895443))

(declare-fun m!3895445 () Bool)

(assert (=> b!3479247 m!3895445))

(assert (=> b!3479247 m!3895443))

(assert (=> b!3479247 m!3895435))

(declare-fun m!3895447 () Bool)

(assert (=> b!3479247 m!3895447))

(declare-fun m!3895449 () Bool)

(assert (=> b!3479247 m!3895449))

(assert (=> b!3479247 m!3895449))

(declare-fun m!3895451 () Bool)

(assert (=> b!3479247 m!3895451))

(declare-fun m!3895453 () Bool)

(assert (=> b!3479247 m!3895453))

(declare-fun m!3895455 () Bool)

(assert (=> b!3479247 m!3895455))

(assert (=> b!3479247 m!3895433))

(assert (=> b!3479247 m!3895447))

(assert (=> b!3478810 d!1004841))

(declare-fun b!3479249 () Bool)

(declare-fun e!2155187 () Bool)

(declare-fun lt!1184711 () Option!7565)

(assert (=> b!3479249 (= e!2155187 (= (tag!6076 (get!11935 lt!1184711)) (tag!6076 (rule!8058 (h!42667 tokens!494)))))))

(declare-fun b!3479250 () Bool)

(declare-fun e!2155184 () Option!7565)

(assert (=> b!3479250 (= e!2155184 None!7564)))

(declare-fun b!3479251 () Bool)

(declare-fun e!2155186 () Bool)

(assert (=> b!3479251 (= e!2155186 e!2155187)))

(declare-fun res!1403947 () Bool)

(assert (=> b!3479251 (=> (not res!1403947) (not e!2155187))))

(assert (=> b!3479251 (= res!1403947 (contains!6941 rules!2135 (get!11935 lt!1184711)))))

(declare-fun b!3479252 () Bool)

(declare-fun e!2155185 () Option!7565)

(assert (=> b!3479252 (= e!2155185 (Some!7564 (h!42666 rules!2135)))))

(declare-fun b!3479253 () Bool)

(assert (=> b!3479253 (= e!2155185 e!2155184)))

(declare-fun c!596636 () Bool)

(assert (=> b!3479253 (= c!596636 (and ((_ is Cons!37246) rules!2135) (not (= (tag!6076 (h!42666 rules!2135)) (tag!6076 (rule!8058 (h!42667 tokens!494)))))))))

(declare-fun b!3479248 () Bool)

(declare-fun lt!1184709 () Unit!52678)

(declare-fun lt!1184710 () Unit!52678)

(assert (=> b!3479248 (= lt!1184709 lt!1184710)))

(assert (=> b!3479248 (rulesInvariant!4442 thiss!18206 (t!275321 rules!2135))))

(assert (=> b!3479248 (= lt!1184710 (lemmaInvariantOnRulesThenOnTail!443 thiss!18206 (h!42666 rules!2135) (t!275321 rules!2135)))))

(assert (=> b!3479248 (= e!2155184 (getRuleFromTag!1099 thiss!18206 (t!275321 rules!2135) (tag!6076 (rule!8058 (h!42667 tokens!494)))))))

(declare-fun d!1004843 () Bool)

(assert (=> d!1004843 e!2155186))

(declare-fun res!1403946 () Bool)

(assert (=> d!1004843 (=> res!1403946 e!2155186)))

(assert (=> d!1004843 (= res!1403946 (isEmpty!21645 lt!1184711))))

(assert (=> d!1004843 (= lt!1184711 e!2155185)))

(declare-fun c!596635 () Bool)

(assert (=> d!1004843 (= c!596635 (and ((_ is Cons!37246) rules!2135) (= (tag!6076 (h!42666 rules!2135)) (tag!6076 (rule!8058 (h!42667 tokens!494))))))))

(assert (=> d!1004843 (rulesInvariant!4442 thiss!18206 rules!2135)))

(assert (=> d!1004843 (= (getRuleFromTag!1099 thiss!18206 rules!2135 (tag!6076 (rule!8058 (h!42667 tokens!494)))) lt!1184711)))

(assert (= (and d!1004843 c!596635) b!3479252))

(assert (= (and d!1004843 (not c!596635)) b!3479253))

(assert (= (and b!3479253 c!596636) b!3479248))

(assert (= (and b!3479253 (not c!596636)) b!3479250))

(assert (= (and d!1004843 (not res!1403946)) b!3479251))

(assert (= (and b!3479251 res!1403947) b!3479249))

(declare-fun m!3895457 () Bool)

(assert (=> b!3479249 m!3895457))

(assert (=> b!3479251 m!3895457))

(assert (=> b!3479251 m!3895457))

(declare-fun m!3895459 () Bool)

(assert (=> b!3479251 m!3895459))

(assert (=> b!3479248 m!3895177))

(assert (=> b!3479248 m!3895179))

(declare-fun m!3895461 () Bool)

(assert (=> b!3479248 m!3895461))

(declare-fun m!3895463 () Bool)

(assert (=> d!1004843 m!3895463))

(assert (=> d!1004843 m!3894689))

(assert (=> b!3478810 d!1004843))

(declare-fun b!3479341 () Bool)

(declare-fun e!2155231 () Bool)

(declare-fun e!2155230 () Bool)

(assert (=> b!3479341 (= e!2155231 e!2155230)))

(declare-fun res!1403997 () Bool)

(assert (=> b!3479341 (=> (not res!1403997) (not e!2155230))))

(declare-fun lt!1184755 () Option!7566)

(assert (=> b!3479341 (= res!1403997 (matchR!4799 (regex!5456 (rule!8058 (h!42667 tokens!494))) (list!13581 (charsOf!3470 (_1!21639 (get!11936 lt!1184755))))))))

(declare-fun b!3479342 () Bool)

(declare-fun e!2155232 () Bool)

(declare-datatypes ((tuple2!37014 0))(
  ( (tuple2!37015 (_1!21641 List!37369) (_2!21641 List!37369)) )
))
(declare-fun findLongestMatchInner!920 (Regex!10215 List!37369 Int List!37369 List!37369 Int) tuple2!37014)

(assert (=> b!3479342 (= e!2155232 (matchR!4799 (regex!5456 (rule!8058 (h!42667 tokens!494))) (_1!21641 (findLongestMatchInner!920 (regex!5456 (rule!8058 (h!42667 tokens!494))) Nil!37245 (size!28285 Nil!37245) lt!1184514 lt!1184514 (size!28285 lt!1184514)))))))

(declare-fun b!3479343 () Bool)

(declare-fun e!2155229 () Option!7566)

(declare-fun lt!1184756 () tuple2!37014)

(declare-fun size!28291 (BalanceConc!22188) Int)

(assert (=> b!3479343 (= e!2155229 (Some!7565 (tuple2!37011 (Token!10279 (apply!8813 (transformation!5456 (rule!8058 (h!42667 tokens!494))) (seqFromList!3965 (_1!21641 lt!1184756))) (rule!8058 (h!42667 tokens!494)) (size!28291 (seqFromList!3965 (_1!21641 lt!1184756))) (_1!21641 lt!1184756)) (_2!21641 lt!1184756))))))

(declare-fun lt!1184758 () Unit!52678)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!893 (Regex!10215 List!37369) Unit!52678)

(assert (=> b!3479343 (= lt!1184758 (longestMatchIsAcceptedByMatchOrIsEmpty!893 (regex!5456 (rule!8058 (h!42667 tokens!494))) lt!1184514))))

(declare-fun res!1403992 () Bool)

(assert (=> b!3479343 (= res!1403992 (isEmpty!21641 (_1!21641 (findLongestMatchInner!920 (regex!5456 (rule!8058 (h!42667 tokens!494))) Nil!37245 (size!28285 Nil!37245) lt!1184514 lt!1184514 (size!28285 lt!1184514)))))))

(assert (=> b!3479343 (=> res!1403992 e!2155232)))

(assert (=> b!3479343 e!2155232))

(declare-fun lt!1184757 () Unit!52678)

(assert (=> b!3479343 (= lt!1184757 lt!1184758)))

(declare-fun lt!1184754 () Unit!52678)

(declare-fun lemmaSemiInverse!1270 (TokenValueInjection!10800 BalanceConc!22188) Unit!52678)

(assert (=> b!3479343 (= lt!1184754 (lemmaSemiInverse!1270 (transformation!5456 (rule!8058 (h!42667 tokens!494))) (seqFromList!3965 (_1!21641 lt!1184756))))))

(declare-fun b!3479344 () Bool)

(declare-fun res!1403994 () Bool)

(assert (=> b!3479344 (=> (not res!1403994) (not e!2155230))))

(assert (=> b!3479344 (= res!1403994 (< (size!28285 (_2!21639 (get!11936 lt!1184755))) (size!28285 lt!1184514)))))

(declare-fun b!3479345 () Bool)

(declare-fun res!1403996 () Bool)

(assert (=> b!3479345 (=> (not res!1403996) (not e!2155230))))

(assert (=> b!3479345 (= res!1403996 (= (value!175956 (_1!21639 (get!11936 lt!1184755))) (apply!8813 (transformation!5456 (rule!8058 (_1!21639 (get!11936 lt!1184755)))) (seqFromList!3965 (originalCharacters!6170 (_1!21639 (get!11936 lt!1184755)))))))))

(declare-fun d!1004845 () Bool)

(assert (=> d!1004845 e!2155231))

(declare-fun res!1403991 () Bool)

(assert (=> d!1004845 (=> res!1403991 e!2155231)))

(assert (=> d!1004845 (= res!1403991 (isEmpty!21644 lt!1184755))))

(assert (=> d!1004845 (= lt!1184755 e!2155229)))

(declare-fun c!596658 () Bool)

(assert (=> d!1004845 (= c!596658 (isEmpty!21641 (_1!21641 lt!1184756)))))

(declare-fun findLongestMatch!835 (Regex!10215 List!37369) tuple2!37014)

(assert (=> d!1004845 (= lt!1184756 (findLongestMatch!835 (regex!5456 (rule!8058 (h!42667 tokens!494))) lt!1184514))))

(declare-fun ruleValid!1751 (LexerInterface!5045 Rule!10712) Bool)

(assert (=> d!1004845 (ruleValid!1751 thiss!18206 (rule!8058 (h!42667 tokens!494)))))

(assert (=> d!1004845 (= (maxPrefixOneRule!1752 thiss!18206 (rule!8058 (h!42667 tokens!494)) lt!1184514) lt!1184755)))

(declare-fun b!3479346 () Bool)

(assert (=> b!3479346 (= e!2155230 (= (size!28283 (_1!21639 (get!11936 lt!1184755))) (size!28285 (originalCharacters!6170 (_1!21639 (get!11936 lt!1184755))))))))

(declare-fun b!3479347 () Bool)

(declare-fun res!1403993 () Bool)

(assert (=> b!3479347 (=> (not res!1403993) (not e!2155230))))

(assert (=> b!3479347 (= res!1403993 (= (rule!8058 (_1!21639 (get!11936 lt!1184755))) (rule!8058 (h!42667 tokens!494))))))

(declare-fun b!3479348 () Bool)

(declare-fun res!1403995 () Bool)

(assert (=> b!3479348 (=> (not res!1403995) (not e!2155230))))

(assert (=> b!3479348 (= res!1403995 (= (++!9199 (list!13581 (charsOf!3470 (_1!21639 (get!11936 lt!1184755)))) (_2!21639 (get!11936 lt!1184755))) lt!1184514))))

(declare-fun b!3479349 () Bool)

(assert (=> b!3479349 (= e!2155229 None!7565)))

(assert (= (and d!1004845 c!596658) b!3479349))

(assert (= (and d!1004845 (not c!596658)) b!3479343))

(assert (= (and b!3479343 (not res!1403992)) b!3479342))

(assert (= (and d!1004845 (not res!1403991)) b!3479341))

(assert (= (and b!3479341 res!1403997) b!3479348))

(assert (= (and b!3479348 res!1403995) b!3479344))

(assert (= (and b!3479344 res!1403994) b!3479347))

(assert (= (and b!3479347 res!1403993) b!3479345))

(assert (= (and b!3479345 res!1403996) b!3479346))

(declare-fun m!3895565 () Bool)

(assert (=> b!3479344 m!3895565))

(declare-fun m!3895567 () Bool)

(assert (=> b!3479344 m!3895567))

(assert (=> b!3479344 m!3894613))

(assert (=> b!3479341 m!3895565))

(declare-fun m!3895569 () Bool)

(assert (=> b!3479341 m!3895569))

(assert (=> b!3479341 m!3895569))

(declare-fun m!3895571 () Bool)

(assert (=> b!3479341 m!3895571))

(assert (=> b!3479341 m!3895571))

(declare-fun m!3895573 () Bool)

(assert (=> b!3479341 m!3895573))

(declare-fun m!3895575 () Bool)

(assert (=> b!3479343 m!3895575))

(declare-fun m!3895577 () Bool)

(assert (=> b!3479343 m!3895577))

(declare-fun m!3895579 () Bool)

(assert (=> b!3479343 m!3895579))

(declare-fun m!3895581 () Bool)

(assert (=> b!3479343 m!3895581))

(assert (=> b!3479343 m!3894613))

(assert (=> b!3479343 m!3895577))

(declare-fun m!3895583 () Bool)

(assert (=> b!3479343 m!3895583))

(declare-fun m!3895585 () Bool)

(assert (=> b!3479343 m!3895585))

(assert (=> b!3479343 m!3895577))

(assert (=> b!3479343 m!3895585))

(assert (=> b!3479343 m!3894613))

(declare-fun m!3895587 () Bool)

(assert (=> b!3479343 m!3895587))

(assert (=> b!3479343 m!3895577))

(declare-fun m!3895589 () Bool)

(assert (=> b!3479343 m!3895589))

(assert (=> b!3479346 m!3895565))

(declare-fun m!3895591 () Bool)

(assert (=> b!3479346 m!3895591))

(assert (=> b!3479348 m!3895565))

(assert (=> b!3479348 m!3895569))

(assert (=> b!3479348 m!3895569))

(assert (=> b!3479348 m!3895571))

(assert (=> b!3479348 m!3895571))

(declare-fun m!3895593 () Bool)

(assert (=> b!3479348 m!3895593))

(declare-fun m!3895595 () Bool)

(assert (=> d!1004845 m!3895595))

(declare-fun m!3895597 () Bool)

(assert (=> d!1004845 m!3895597))

(declare-fun m!3895599 () Bool)

(assert (=> d!1004845 m!3895599))

(declare-fun m!3895601 () Bool)

(assert (=> d!1004845 m!3895601))

(assert (=> b!3479345 m!3895565))

(declare-fun m!3895603 () Bool)

(assert (=> b!3479345 m!3895603))

(assert (=> b!3479345 m!3895603))

(declare-fun m!3895605 () Bool)

(assert (=> b!3479345 m!3895605))

(assert (=> b!3479347 m!3895565))

(assert (=> b!3479342 m!3895585))

(assert (=> b!3479342 m!3894613))

(assert (=> b!3479342 m!3895585))

(assert (=> b!3479342 m!3894613))

(assert (=> b!3479342 m!3895587))

(declare-fun m!3895607 () Bool)

(assert (=> b!3479342 m!3895607))

(assert (=> b!3478810 d!1004845))

(declare-fun d!1004863 () Bool)

(declare-fun lt!1184761 () Bool)

(declare-fun content!5217 (List!37371) (InoxSet Token!10278))

(assert (=> d!1004863 (= lt!1184761 (select (content!5217 tokens!494) (h!42667 (t!275322 tokens!494))))))

(declare-fun e!2155237 () Bool)

(assert (=> d!1004863 (= lt!1184761 e!2155237)))

(declare-fun res!1404003 () Bool)

(assert (=> d!1004863 (=> (not res!1404003) (not e!2155237))))

(assert (=> d!1004863 (= res!1404003 ((_ is Cons!37247) tokens!494))))

(assert (=> d!1004863 (= (contains!6939 tokens!494 (h!42667 (t!275322 tokens!494))) lt!1184761)))

(declare-fun b!3479354 () Bool)

(declare-fun e!2155238 () Bool)

(assert (=> b!3479354 (= e!2155237 e!2155238)))

(declare-fun res!1404002 () Bool)

(assert (=> b!3479354 (=> res!1404002 e!2155238)))

(assert (=> b!3479354 (= res!1404002 (= (h!42667 tokens!494) (h!42667 (t!275322 tokens!494))))))

(declare-fun b!3479355 () Bool)

(assert (=> b!3479355 (= e!2155238 (contains!6939 (t!275322 tokens!494) (h!42667 (t!275322 tokens!494))))))

(assert (= (and d!1004863 res!1404003) b!3479354))

(assert (= (and b!3479354 (not res!1404002)) b!3479355))

(declare-fun m!3895609 () Bool)

(assert (=> d!1004863 m!3895609))

(declare-fun m!3895611 () Bool)

(assert (=> d!1004863 m!3895611))

(declare-fun m!3895613 () Bool)

(assert (=> b!3479355 m!3895613))

(assert (=> b!3478810 d!1004863))

(declare-fun d!1004865 () Bool)

(assert (=> d!1004865 (= (maxPrefix!2585 thiss!18206 rules!2135 (++!9199 (list!13581 (charsOf!3470 (h!42667 tokens!494))) lt!1184492)) (Some!7565 (tuple2!37011 (h!42667 tokens!494) lt!1184492)))))

(declare-fun lt!1184764 () Unit!52678)

(declare-fun choose!20154 (LexerInterface!5045 List!37370 Token!10278 Rule!10712 List!37369 Rule!10712) Unit!52678)

(assert (=> d!1004865 (= lt!1184764 (choose!20154 thiss!18206 rules!2135 (h!42667 tokens!494) (rule!8058 (h!42667 tokens!494)) lt!1184492 (rule!8058 separatorToken!241)))))

(assert (=> d!1004865 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1004865 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!212 thiss!18206 rules!2135 (h!42667 tokens!494) (rule!8058 (h!42667 tokens!494)) lt!1184492 (rule!8058 separatorToken!241)) lt!1184764)))

(declare-fun bs!561850 () Bool)

(assert (= bs!561850 d!1004865))

(declare-fun m!3895615 () Bool)

(assert (=> bs!561850 m!3895615))

(declare-fun m!3895617 () Bool)

(assert (=> bs!561850 m!3895617))

(assert (=> bs!561850 m!3894751))

(assert (=> bs!561850 m!3895615))

(assert (=> bs!561850 m!3894749))

(assert (=> bs!561850 m!3894751))

(declare-fun m!3895619 () Bool)

(assert (=> bs!561850 m!3895619))

(assert (=> bs!561850 m!3894601))

(assert (=> bs!561850 m!3894749))

(assert (=> b!3478810 d!1004865))

(declare-fun d!1004867 () Bool)

(assert (=> d!1004867 (not (contains!6940 (usedCharacters!690 (regex!5456 (rule!8058 (h!42667 tokens!494)))) lt!1184522))))

(declare-fun lt!1184767 () Unit!52678)

(declare-fun choose!20155 (LexerInterface!5045 List!37370 List!37370 Rule!10712 Rule!10712 C!20616) Unit!52678)

(assert (=> d!1004867 (= lt!1184767 (choose!20155 thiss!18206 rules!2135 rules!2135 (rule!8058 (h!42667 tokens!494)) (rule!8058 separatorToken!241) lt!1184522))))

(assert (=> d!1004867 (rulesInvariant!4442 thiss!18206 rules!2135)))

(assert (=> d!1004867 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!256 thiss!18206 rules!2135 rules!2135 (rule!8058 (h!42667 tokens!494)) (rule!8058 separatorToken!241) lt!1184522) lt!1184767)))

(declare-fun bs!561851 () Bool)

(assert (= bs!561851 d!1004867))

(assert (=> bs!561851 m!3894629))

(assert (=> bs!561851 m!3894629))

(assert (=> bs!561851 m!3894663))

(declare-fun m!3895621 () Bool)

(assert (=> bs!561851 m!3895621))

(assert (=> bs!561851 m!3894689))

(assert (=> b!3478810 d!1004867))

(declare-fun d!1004869 () Bool)

(declare-fun dynLambda!15764 (Int Token!10278) Bool)

(assert (=> d!1004869 (dynLambda!15764 lambda!122185 (h!42667 (t!275322 tokens!494)))))

(declare-fun lt!1184770 () Unit!52678)

(declare-fun choose!20157 (List!37371 Int Token!10278) Unit!52678)

(assert (=> d!1004869 (= lt!1184770 (choose!20157 tokens!494 lambda!122185 (h!42667 (t!275322 tokens!494))))))

(declare-fun e!2155241 () Bool)

(assert (=> d!1004869 e!2155241))

(declare-fun res!1404006 () Bool)

(assert (=> d!1004869 (=> (not res!1404006) (not e!2155241))))

(assert (=> d!1004869 (= res!1404006 (forall!7963 tokens!494 lambda!122185))))

(assert (=> d!1004869 (= (forallContained!1403 tokens!494 lambda!122185 (h!42667 (t!275322 tokens!494))) lt!1184770)))

(declare-fun b!3479358 () Bool)

(assert (=> b!3479358 (= e!2155241 (contains!6939 tokens!494 (h!42667 (t!275322 tokens!494))))))

(assert (= (and d!1004869 res!1404006) b!3479358))

(declare-fun b_lambda!100587 () Bool)

(assert (=> (not b_lambda!100587) (not d!1004869)))

(declare-fun m!3895623 () Bool)

(assert (=> d!1004869 m!3895623))

(declare-fun m!3895625 () Bool)

(assert (=> d!1004869 m!3895625))

(declare-fun m!3895627 () Bool)

(assert (=> d!1004869 m!3895627))

(assert (=> b!3479358 m!3894607))

(assert (=> b!3478810 d!1004869))

(declare-fun b!3479394 () Bool)

(declare-fun res!1404032 () Bool)

(declare-fun e!2155268 () Bool)

(assert (=> b!3479394 (=> (not res!1404032) (not e!2155268))))

(declare-fun lt!1184798 () tuple2!37008)

(declare-datatypes ((tuple2!37016 0))(
  ( (tuple2!37017 (_1!21642 List!37371) (_2!21642 List!37369)) )
))
(declare-fun lexList!1460 (LexerInterface!5045 List!37370 List!37369) tuple2!37016)

(assert (=> b!3479394 (= res!1404032 (= (list!13583 (_1!21638 lt!1184798)) (_1!21642 (lexList!1460 thiss!18206 rules!2135 (list!13581 lt!1184500)))))))

(declare-fun b!3479395 () Bool)

(declare-fun e!2155269 () Bool)

(assert (=> b!3479395 (= e!2155269 (= (_2!21638 lt!1184798) lt!1184500))))

(declare-fun b!3479396 () Bool)

(assert (=> b!3479396 (= e!2155268 (= (list!13581 (_2!21638 lt!1184798)) (_2!21642 (lexList!1460 thiss!18206 rules!2135 (list!13581 lt!1184500)))))))

(declare-fun d!1004871 () Bool)

(assert (=> d!1004871 e!2155268))

(declare-fun res!1404031 () Bool)

(assert (=> d!1004871 (=> (not res!1404031) (not e!2155268))))

(assert (=> d!1004871 (= res!1404031 e!2155269)))

(declare-fun c!596666 () Bool)

(assert (=> d!1004871 (= c!596666 (> (size!28284 (_1!21638 lt!1184798)) 0))))

(declare-fun lexTailRecV2!1068 (LexerInterface!5045 List!37370 BalanceConc!22188 BalanceConc!22188 BalanceConc!22188 BalanceConc!22190) tuple2!37008)

(assert (=> d!1004871 (= lt!1184798 (lexTailRecV2!1068 thiss!18206 rules!2135 lt!1184500 (BalanceConc!22189 Empty!11287) lt!1184500 (BalanceConc!22191 Empty!11288)))))

(assert (=> d!1004871 (= (lex!2371 thiss!18206 rules!2135 lt!1184500) lt!1184798)))

(declare-fun b!3479397 () Bool)

(declare-fun e!2155267 () Bool)

(assert (=> b!3479397 (= e!2155267 (not (isEmpty!21637 (_1!21638 lt!1184798))))))

(declare-fun b!3479398 () Bool)

(assert (=> b!3479398 (= e!2155269 e!2155267)))

(declare-fun res!1404030 () Bool)

(assert (=> b!3479398 (= res!1404030 (< (size!28291 (_2!21638 lt!1184798)) (size!28291 lt!1184500)))))

(assert (=> b!3479398 (=> (not res!1404030) (not e!2155267))))

(assert (= (and d!1004871 c!596666) b!3479398))

(assert (= (and d!1004871 (not c!596666)) b!3479395))

(assert (= (and b!3479398 res!1404030) b!3479397))

(assert (= (and d!1004871 res!1404031) b!3479394))

(assert (= (and b!3479394 res!1404032) b!3479396))

(declare-fun m!3895733 () Bool)

(assert (=> b!3479397 m!3895733))

(declare-fun m!3895735 () Bool)

(assert (=> b!3479394 m!3895735))

(declare-fun m!3895737 () Bool)

(assert (=> b!3479394 m!3895737))

(assert (=> b!3479394 m!3895737))

(declare-fun m!3895739 () Bool)

(assert (=> b!3479394 m!3895739))

(declare-fun m!3895741 () Bool)

(assert (=> b!3479398 m!3895741))

(declare-fun m!3895743 () Bool)

(assert (=> b!3479398 m!3895743))

(declare-fun m!3895745 () Bool)

(assert (=> d!1004871 m!3895745))

(declare-fun m!3895747 () Bool)

(assert (=> d!1004871 m!3895747))

(declare-fun m!3895749 () Bool)

(assert (=> b!3479396 m!3895749))

(assert (=> b!3479396 m!3895737))

(assert (=> b!3479396 m!3895737))

(assert (=> b!3479396 m!3895739))

(assert (=> b!3478810 d!1004871))

(declare-fun d!1004897 () Bool)

(declare-fun lt!1184801 () BalanceConc!22188)

(assert (=> d!1004897 (= (list!13581 lt!1184801) (printList!1593 thiss!18206 (list!13583 lt!1184491)))))

(assert (=> d!1004897 (= lt!1184801 (printTailRec!1540 thiss!18206 lt!1184491 0 (BalanceConc!22189 Empty!11287)))))

(assert (=> d!1004897 (= (print!2110 thiss!18206 lt!1184491) lt!1184801)))

(declare-fun bs!561857 () Bool)

(assert (= bs!561857 d!1004897))

(declare-fun m!3895751 () Bool)

(assert (=> bs!561857 m!3895751))

(assert (=> bs!561857 m!3895095))

(assert (=> bs!561857 m!3895095))

(declare-fun m!3895753 () Bool)

(assert (=> bs!561857 m!3895753))

(assert (=> bs!561857 m!3894633))

(assert (=> b!3478810 d!1004897))

(declare-fun b!3479399 () Bool)

(declare-fun res!1404035 () Bool)

(declare-fun e!2155271 () Bool)

(assert (=> b!3479399 (=> (not res!1404035) (not e!2155271))))

(declare-fun lt!1184802 () tuple2!37008)

(assert (=> b!3479399 (= res!1404035 (= (list!13583 (_1!21638 lt!1184802)) (_1!21642 (lexList!1460 thiss!18206 rules!2135 (list!13581 lt!1184511)))))))

(declare-fun b!3479400 () Bool)

(declare-fun e!2155272 () Bool)

(assert (=> b!3479400 (= e!2155272 (= (_2!21638 lt!1184802) lt!1184511))))

(declare-fun b!3479401 () Bool)

(assert (=> b!3479401 (= e!2155271 (= (list!13581 (_2!21638 lt!1184802)) (_2!21642 (lexList!1460 thiss!18206 rules!2135 (list!13581 lt!1184511)))))))

(declare-fun d!1004899 () Bool)

(assert (=> d!1004899 e!2155271))

(declare-fun res!1404034 () Bool)

(assert (=> d!1004899 (=> (not res!1404034) (not e!2155271))))

(assert (=> d!1004899 (= res!1404034 e!2155272)))

(declare-fun c!596667 () Bool)

(assert (=> d!1004899 (= c!596667 (> (size!28284 (_1!21638 lt!1184802)) 0))))

(assert (=> d!1004899 (= lt!1184802 (lexTailRecV2!1068 thiss!18206 rules!2135 lt!1184511 (BalanceConc!22189 Empty!11287) lt!1184511 (BalanceConc!22191 Empty!11288)))))

(assert (=> d!1004899 (= (lex!2371 thiss!18206 rules!2135 lt!1184511) lt!1184802)))

(declare-fun b!3479402 () Bool)

(declare-fun e!2155270 () Bool)

(assert (=> b!3479402 (= e!2155270 (not (isEmpty!21637 (_1!21638 lt!1184802))))))

(declare-fun b!3479403 () Bool)

(assert (=> b!3479403 (= e!2155272 e!2155270)))

(declare-fun res!1404033 () Bool)

(assert (=> b!3479403 (= res!1404033 (< (size!28291 (_2!21638 lt!1184802)) (size!28291 lt!1184511)))))

(assert (=> b!3479403 (=> (not res!1404033) (not e!2155270))))

(assert (= (and d!1004899 c!596667) b!3479403))

(assert (= (and d!1004899 (not c!596667)) b!3479400))

(assert (= (and b!3479403 res!1404033) b!3479402))

(assert (= (and d!1004899 res!1404034) b!3479399))

(assert (= (and b!3479399 res!1404035) b!3479401))

(declare-fun m!3895755 () Bool)

(assert (=> b!3479402 m!3895755))

(declare-fun m!3895757 () Bool)

(assert (=> b!3479399 m!3895757))

(declare-fun m!3895759 () Bool)

(assert (=> b!3479399 m!3895759))

(assert (=> b!3479399 m!3895759))

(declare-fun m!3895761 () Bool)

(assert (=> b!3479399 m!3895761))

(declare-fun m!3895763 () Bool)

(assert (=> b!3479403 m!3895763))

(declare-fun m!3895765 () Bool)

(assert (=> b!3479403 m!3895765))

(declare-fun m!3895767 () Bool)

(assert (=> d!1004899 m!3895767))

(declare-fun m!3895769 () Bool)

(assert (=> d!1004899 m!3895769))

(declare-fun m!3895771 () Bool)

(assert (=> b!3479401 m!3895771))

(assert (=> b!3479401 m!3895759))

(assert (=> b!3479401 m!3895759))

(assert (=> b!3479401 m!3895761))

(assert (=> b!3478810 d!1004899))

(declare-fun d!1004901 () Bool)

(declare-fun lt!1184803 () BalanceConc!22188)

(assert (=> d!1004901 (= (list!13581 lt!1184803) (printList!1593 thiss!18206 (list!13583 lt!1184496)))))

(assert (=> d!1004901 (= lt!1184803 (printTailRec!1540 thiss!18206 lt!1184496 0 (BalanceConc!22189 Empty!11287)))))

(assert (=> d!1004901 (= (print!2110 thiss!18206 lt!1184496) lt!1184803)))

(declare-fun bs!561858 () Bool)

(assert (= bs!561858 d!1004901))

(declare-fun m!3895773 () Bool)

(assert (=> bs!561858 m!3895773))

(assert (=> bs!561858 m!3895441))

(assert (=> bs!561858 m!3895441))

(declare-fun m!3895775 () Bool)

(assert (=> bs!561858 m!3895775))

(assert (=> bs!561858 m!3894635))

(assert (=> b!3478810 d!1004901))

(declare-fun b!3479404 () Bool)

(declare-fun e!2155274 () List!37369)

(declare-fun call!250925 () List!37369)

(assert (=> b!3479404 (= e!2155274 call!250925)))

(declare-fun b!3479405 () Bool)

(declare-fun e!2155275 () List!37369)

(declare-fun call!250926 () List!37369)

(assert (=> b!3479405 (= e!2155275 call!250926)))

(declare-fun bm!250920 () Bool)

(declare-fun c!596668 () Bool)

(declare-fun c!596670 () Bool)

(assert (=> bm!250920 (= call!250926 (usedCharacters!690 (ite c!596670 (reg!10544 (regex!5456 (rule!8058 separatorToken!241))) (ite c!596668 (regOne!20943 (regex!5456 (rule!8058 separatorToken!241))) (regTwo!20942 (regex!5456 (rule!8058 separatorToken!241)))))))))

(declare-fun b!3479406 () Bool)

(declare-fun e!2155276 () List!37369)

(declare-fun e!2155273 () List!37369)

(assert (=> b!3479406 (= e!2155276 e!2155273)))

(declare-fun c!596671 () Bool)

(assert (=> b!3479406 (= c!596671 ((_ is ElementMatch!10215) (regex!5456 (rule!8058 separatorToken!241))))))

(declare-fun b!3479407 () Bool)

(assert (=> b!3479407 (= e!2155273 (Cons!37245 (c!596544 (regex!5456 (rule!8058 separatorToken!241))) Nil!37245))))

(declare-fun bm!250921 () Bool)

(declare-fun call!250927 () List!37369)

(assert (=> bm!250921 (= call!250927 (usedCharacters!690 (ite c!596668 (regTwo!20943 (regex!5456 (rule!8058 separatorToken!241))) (regOne!20942 (regex!5456 (rule!8058 separatorToken!241))))))))

(declare-fun b!3479408 () Bool)

(assert (=> b!3479408 (= e!2155274 call!250925)))

(declare-fun b!3479409 () Bool)

(assert (=> b!3479409 (= c!596670 ((_ is Star!10215) (regex!5456 (rule!8058 separatorToken!241))))))

(assert (=> b!3479409 (= e!2155273 e!2155275)))

(declare-fun b!3479410 () Bool)

(assert (=> b!3479410 (= e!2155276 Nil!37245)))

(declare-fun bm!250922 () Bool)

(declare-fun call!250928 () List!37369)

(assert (=> bm!250922 (= call!250928 call!250926)))

(declare-fun bm!250923 () Bool)

(assert (=> bm!250923 (= call!250925 (++!9199 (ite c!596668 call!250928 call!250927) (ite c!596668 call!250927 call!250928)))))

(declare-fun d!1004903 () Bool)

(declare-fun c!596669 () Bool)

(assert (=> d!1004903 (= c!596669 (or ((_ is EmptyExpr!10215) (regex!5456 (rule!8058 separatorToken!241))) ((_ is EmptyLang!10215) (regex!5456 (rule!8058 separatorToken!241)))))))

(assert (=> d!1004903 (= (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241))) e!2155276)))

(declare-fun b!3479411 () Bool)

(assert (=> b!3479411 (= e!2155275 e!2155274)))

(assert (=> b!3479411 (= c!596668 ((_ is Union!10215) (regex!5456 (rule!8058 separatorToken!241))))))

(assert (= (and d!1004903 c!596669) b!3479410))

(assert (= (and d!1004903 (not c!596669)) b!3479406))

(assert (= (and b!3479406 c!596671) b!3479407))

(assert (= (and b!3479406 (not c!596671)) b!3479409))

(assert (= (and b!3479409 c!596670) b!3479405))

(assert (= (and b!3479409 (not c!596670)) b!3479411))

(assert (= (and b!3479411 c!596668) b!3479404))

(assert (= (and b!3479411 (not c!596668)) b!3479408))

(assert (= (or b!3479404 b!3479408) bm!250921))

(assert (= (or b!3479404 b!3479408) bm!250922))

(assert (= (or b!3479404 b!3479408) bm!250923))

(assert (= (or b!3479405 bm!250922) bm!250920))

(declare-fun m!3895777 () Bool)

(assert (=> bm!250920 m!3895777))

(declare-fun m!3895779 () Bool)

(assert (=> bm!250921 m!3895779))

(declare-fun m!3895781 () Bool)

(assert (=> bm!250923 m!3895781))

(assert (=> b!3478810 d!1004903))

(declare-fun d!1004905 () Bool)

(declare-fun lt!1184804 () Bool)

(assert (=> d!1004905 (= lt!1184804 (select (content!5215 (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241)))) lt!1184522))))

(declare-fun e!2155277 () Bool)

(assert (=> d!1004905 (= lt!1184804 e!2155277)))

(declare-fun res!1404037 () Bool)

(assert (=> d!1004905 (=> (not res!1404037) (not e!2155277))))

(assert (=> d!1004905 (= res!1404037 ((_ is Cons!37245) (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241)))))))

(assert (=> d!1004905 (= (contains!6940 (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241))) lt!1184522) lt!1184804)))

(declare-fun b!3479412 () Bool)

(declare-fun e!2155278 () Bool)

(assert (=> b!3479412 (= e!2155277 e!2155278)))

(declare-fun res!1404036 () Bool)

(assert (=> b!3479412 (=> res!1404036 e!2155278)))

(assert (=> b!3479412 (= res!1404036 (= (h!42665 (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241)))) lt!1184522))))

(declare-fun b!3479413 () Bool)

(assert (=> b!3479413 (= e!2155278 (contains!6940 (t!275320 (usedCharacters!690 (regex!5456 (rule!8058 separatorToken!241)))) lt!1184522))))

(assert (= (and d!1004905 res!1404037) b!3479412))

(assert (= (and b!3479412 (not res!1404036)) b!3479413))

(assert (=> d!1004905 m!3894605))

(declare-fun m!3895783 () Bool)

(assert (=> d!1004905 m!3895783))

(declare-fun m!3895785 () Bool)

(assert (=> d!1004905 m!3895785))

(declare-fun m!3895787 () Bool)

(assert (=> b!3479413 m!3895787))

(assert (=> b!3478810 d!1004905))

(declare-fun d!1004907 () Bool)

(declare-fun res!1404042 () Bool)

(declare-fun e!2155283 () Bool)

(assert (=> d!1004907 (=> res!1404042 e!2155283)))

(assert (=> d!1004907 (= res!1404042 ((_ is Nil!37247) tokens!494))))

(assert (=> d!1004907 (= (forall!7963 tokens!494 lambda!122184) e!2155283)))

(declare-fun b!3479418 () Bool)

(declare-fun e!2155284 () Bool)

(assert (=> b!3479418 (= e!2155283 e!2155284)))

(declare-fun res!1404043 () Bool)

(assert (=> b!3479418 (=> (not res!1404043) (not e!2155284))))

(assert (=> b!3479418 (= res!1404043 (dynLambda!15764 lambda!122184 (h!42667 tokens!494)))))

(declare-fun b!3479419 () Bool)

(assert (=> b!3479419 (= e!2155284 (forall!7963 (t!275322 tokens!494) lambda!122184))))

(assert (= (and d!1004907 (not res!1404042)) b!3479418))

(assert (= (and b!3479418 res!1404043) b!3479419))

(declare-fun b_lambda!100589 () Bool)

(assert (=> (not b_lambda!100589) (not b!3479418)))

(declare-fun m!3895789 () Bool)

(assert (=> b!3479418 m!3895789))

(declare-fun m!3895791 () Bool)

(assert (=> b!3479419 m!3895791))

(assert (=> b!3478811 d!1004907))

(declare-fun d!1004909 () Bool)

(declare-fun lt!1184805 () Token!10278)

(assert (=> d!1004909 (= lt!1184805 (apply!8815 (list!13583 (_1!21638 lt!1184493)) 0))))

(assert (=> d!1004909 (= lt!1184805 (apply!8816 (c!596546 (_1!21638 lt!1184493)) 0))))

(declare-fun e!2155285 () Bool)

(assert (=> d!1004909 e!2155285))

(declare-fun res!1404044 () Bool)

(assert (=> d!1004909 (=> (not res!1404044) (not e!2155285))))

(assert (=> d!1004909 (= res!1404044 (<= 0 0))))

(assert (=> d!1004909 (= (apply!8812 (_1!21638 lt!1184493) 0) lt!1184805)))

(declare-fun b!3479420 () Bool)

(assert (=> b!3479420 (= e!2155285 (< 0 (size!28284 (_1!21638 lt!1184493))))))

(assert (= (and d!1004909 res!1404044) b!3479420))

(assert (=> d!1004909 m!3895189))

(assert (=> d!1004909 m!3895189))

(declare-fun m!3895793 () Bool)

(assert (=> d!1004909 m!3895793))

(declare-fun m!3895795 () Bool)

(assert (=> d!1004909 m!3895795))

(assert (=> b!3479420 m!3894617))

(assert (=> b!3478813 d!1004909))

(declare-fun d!1004911 () Bool)

(declare-fun lt!1184808 () Bool)

(declare-fun isEmpty!21648 (List!37371) Bool)

(assert (=> d!1004911 (= lt!1184808 (isEmpty!21648 (list!13583 (_1!21638 (lex!2371 thiss!18206 rules!2135 lt!1184495)))))))

(declare-fun isEmpty!21649 (Conc!11288) Bool)

(assert (=> d!1004911 (= lt!1184808 (isEmpty!21649 (c!596546 (_1!21638 (lex!2371 thiss!18206 rules!2135 lt!1184495)))))))

(assert (=> d!1004911 (= (isEmpty!21637 (_1!21638 (lex!2371 thiss!18206 rules!2135 lt!1184495))) lt!1184808)))

(declare-fun bs!561859 () Bool)

(assert (= bs!561859 d!1004911))

(declare-fun m!3895797 () Bool)

(assert (=> bs!561859 m!3895797))

(assert (=> bs!561859 m!3895797))

(declare-fun m!3895799 () Bool)

(assert (=> bs!561859 m!3895799))

(declare-fun m!3895801 () Bool)

(assert (=> bs!561859 m!3895801))

(assert (=> b!3478814 d!1004911))

(declare-fun b!3479421 () Bool)

(declare-fun res!1404047 () Bool)

(declare-fun e!2155287 () Bool)

(assert (=> b!3479421 (=> (not res!1404047) (not e!2155287))))

(declare-fun lt!1184809 () tuple2!37008)

(assert (=> b!3479421 (= res!1404047 (= (list!13583 (_1!21638 lt!1184809)) (_1!21642 (lexList!1460 thiss!18206 rules!2135 (list!13581 lt!1184495)))))))

(declare-fun b!3479422 () Bool)

(declare-fun e!2155288 () Bool)

(assert (=> b!3479422 (= e!2155288 (= (_2!21638 lt!1184809) lt!1184495))))

(declare-fun b!3479423 () Bool)

(assert (=> b!3479423 (= e!2155287 (= (list!13581 (_2!21638 lt!1184809)) (_2!21642 (lexList!1460 thiss!18206 rules!2135 (list!13581 lt!1184495)))))))

(declare-fun d!1004913 () Bool)

(assert (=> d!1004913 e!2155287))

(declare-fun res!1404046 () Bool)

(assert (=> d!1004913 (=> (not res!1404046) (not e!2155287))))

(assert (=> d!1004913 (= res!1404046 e!2155288)))

(declare-fun c!596672 () Bool)

(assert (=> d!1004913 (= c!596672 (> (size!28284 (_1!21638 lt!1184809)) 0))))

(assert (=> d!1004913 (= lt!1184809 (lexTailRecV2!1068 thiss!18206 rules!2135 lt!1184495 (BalanceConc!22189 Empty!11287) lt!1184495 (BalanceConc!22191 Empty!11288)))))

(assert (=> d!1004913 (= (lex!2371 thiss!18206 rules!2135 lt!1184495) lt!1184809)))

(declare-fun b!3479424 () Bool)

(declare-fun e!2155286 () Bool)

(assert (=> b!3479424 (= e!2155286 (not (isEmpty!21637 (_1!21638 lt!1184809))))))

(declare-fun b!3479425 () Bool)

(assert (=> b!3479425 (= e!2155288 e!2155286)))

(declare-fun res!1404045 () Bool)

(assert (=> b!3479425 (= res!1404045 (< (size!28291 (_2!21638 lt!1184809)) (size!28291 lt!1184495)))))

(assert (=> b!3479425 (=> (not res!1404045) (not e!2155286))))

(assert (= (and d!1004913 c!596672) b!3479425))

(assert (= (and d!1004913 (not c!596672)) b!3479422))

(assert (= (and b!3479425 res!1404045) b!3479424))

(assert (= (and d!1004913 res!1404046) b!3479421))

(assert (= (and b!3479421 res!1404047) b!3479423))

(declare-fun m!3895803 () Bool)

(assert (=> b!3479424 m!3895803))

(declare-fun m!3895805 () Bool)

(assert (=> b!3479421 m!3895805))

(declare-fun m!3895807 () Bool)

(assert (=> b!3479421 m!3895807))

(assert (=> b!3479421 m!3895807))

(declare-fun m!3895809 () Bool)

(assert (=> b!3479421 m!3895809))

(declare-fun m!3895811 () Bool)

(assert (=> b!3479425 m!3895811))

(declare-fun m!3895813 () Bool)

(assert (=> b!3479425 m!3895813))

(declare-fun m!3895815 () Bool)

(assert (=> d!1004913 m!3895815))

(declare-fun m!3895817 () Bool)

(assert (=> d!1004913 m!3895817))

(declare-fun m!3895819 () Bool)

(assert (=> b!3479423 m!3895819))

(assert (=> b!3479423 m!3895807))

(assert (=> b!3479423 m!3895807))

(assert (=> b!3479423 m!3895809))

(assert (=> b!3478814 d!1004913))

(declare-fun d!1004915 () Bool)

(declare-fun fromListB!1806 (List!37369) BalanceConc!22188)

(assert (=> d!1004915 (= (seqFromList!3965 lt!1184514) (fromListB!1806 lt!1184514))))

(declare-fun bs!561860 () Bool)

(assert (= bs!561860 d!1004915))

(declare-fun m!3895821 () Bool)

(assert (=> bs!561860 m!3895821))

(assert (=> b!3478814 d!1004915))

(declare-fun bs!561870 () Bool)

(declare-fun d!1004917 () Bool)

(assert (= bs!561870 (and d!1004917 b!3478811)))

(declare-fun lambda!122195 () Int)

(assert (=> bs!561870 (not (= lambda!122195 lambda!122184))))

(declare-fun bs!561871 () Bool)

(assert (= bs!561871 (and d!1004917 b!3478810)))

(assert (=> bs!561871 (= lambda!122195 lambda!122185)))

(declare-fun b!3479564 () Bool)

(declare-fun e!2155381 () Bool)

(assert (=> b!3479564 (= e!2155381 true)))

(declare-fun b!3479563 () Bool)

(declare-fun e!2155380 () Bool)

(assert (=> b!3479563 (= e!2155380 e!2155381)))

(declare-fun b!3479562 () Bool)

(declare-fun e!2155379 () Bool)

(assert (=> b!3479562 (= e!2155379 e!2155380)))

(assert (=> d!1004917 e!2155379))

(assert (= b!3479563 b!3479564))

(assert (= b!3479562 b!3479563))

(assert (= (and d!1004917 ((_ is Cons!37246) rules!2135)) b!3479562))

(assert (=> b!3479564 (< (dynLambda!15756 order!19921 (toValue!7692 (transformation!5456 (h!42666 rules!2135)))) (dynLambda!15757 order!19923 lambda!122195))))

(assert (=> b!3479564 (< (dynLambda!15758 order!19925 (toChars!7551 (transformation!5456 (h!42666 rules!2135)))) (dynLambda!15757 order!19923 lambda!122195))))

(assert (=> d!1004917 true))

(declare-fun e!2155378 () Bool)

(assert (=> d!1004917 e!2155378))

(declare-fun res!1404101 () Bool)

(assert (=> d!1004917 (=> (not res!1404101) (not e!2155378))))

(declare-fun lt!1184845 () Bool)

(assert (=> d!1004917 (= res!1404101 (= lt!1184845 (forall!7963 (list!13583 (seqFromList!3966 tokens!494)) lambda!122195)))))

(declare-fun forall!7965 (BalanceConc!22190 Int) Bool)

(assert (=> d!1004917 (= lt!1184845 (forall!7965 (seqFromList!3966 tokens!494) lambda!122195))))

(assert (=> d!1004917 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1004917 (= (rulesProduceEachTokenIndividually!1496 thiss!18206 rules!2135 (seqFromList!3966 tokens!494)) lt!1184845)))

(declare-fun b!3479561 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1867 (LexerInterface!5045 List!37370 List!37371) Bool)

(assert (=> b!3479561 (= e!2155378 (= lt!1184845 (rulesProduceEachTokenIndividuallyList!1867 thiss!18206 rules!2135 (list!13583 (seqFromList!3966 tokens!494)))))))

(assert (= (and d!1004917 res!1404101) b!3479561))

(assert (=> d!1004917 m!3894745))

(declare-fun m!3895979 () Bool)

(assert (=> d!1004917 m!3895979))

(assert (=> d!1004917 m!3895979))

(declare-fun m!3895981 () Bool)

(assert (=> d!1004917 m!3895981))

(assert (=> d!1004917 m!3894745))

(declare-fun m!3895983 () Bool)

(assert (=> d!1004917 m!3895983))

(assert (=> d!1004917 m!3894601))

(assert (=> b!3479561 m!3894745))

(assert (=> b!3479561 m!3895979))

(assert (=> b!3479561 m!3895979))

(declare-fun m!3895985 () Bool)

(assert (=> b!3479561 m!3895985))

(assert (=> b!3478815 d!1004917))

(declare-fun d!1004965 () Bool)

(declare-fun fromListB!1807 (List!37371) BalanceConc!22190)

(assert (=> d!1004965 (= (seqFromList!3966 tokens!494) (fromListB!1807 tokens!494))))

(declare-fun bs!561872 () Bool)

(assert (= bs!561872 d!1004965))

(declare-fun m!3895987 () Bool)

(assert (=> bs!561872 m!3895987))

(assert (=> b!3478815 d!1004965))

(declare-fun d!1004967 () Bool)

(assert (=> d!1004967 (= (list!13581 (charsOf!3470 (h!42667 tokens!494))) (list!13585 (c!596545 (charsOf!3470 (h!42667 tokens!494)))))))

(declare-fun bs!561873 () Bool)

(assert (= bs!561873 d!1004967))

(declare-fun m!3895989 () Bool)

(assert (=> bs!561873 m!3895989))

(assert (=> b!3478794 d!1004967))

(declare-fun d!1004969 () Bool)

(declare-fun lt!1184846 () BalanceConc!22188)

(assert (=> d!1004969 (= (list!13581 lt!1184846) (originalCharacters!6170 (h!42667 tokens!494)))))

(assert (=> d!1004969 (= lt!1184846 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (value!175956 (h!42667 tokens!494))))))

(assert (=> d!1004969 (= (charsOf!3470 (h!42667 tokens!494)) lt!1184846)))

(declare-fun b_lambda!100615 () Bool)

(assert (=> (not b_lambda!100615) (not d!1004969)))

(assert (=> d!1004969 t!275344))

(declare-fun b_and!245499 () Bool)

(assert (= b_and!245449 (and (=> t!275344 result!234850) b_and!245499)))

(assert (=> d!1004969 t!275346))

(declare-fun b_and!245501 () Bool)

(assert (= b_and!245451 (and (=> t!275346 result!234852) b_and!245501)))

(assert (=> d!1004969 t!275348))

(declare-fun b_and!245503 () Bool)

(assert (= b_and!245453 (and (=> t!275348 result!234854) b_and!245503)))

(declare-fun m!3895991 () Bool)

(assert (=> d!1004969 m!3895991))

(assert (=> d!1004969 m!3895061))

(assert (=> b!3478794 d!1004969))

(declare-fun d!1004971 () Bool)

(assert (=> d!1004971 (not (matchR!4799 (regex!5456 (rule!8058 separatorToken!241)) lt!1184517))))

(declare-fun lt!1184849 () Unit!52678)

(declare-fun choose!20159 (Regex!10215 List!37369 C!20616) Unit!52678)

(assert (=> d!1004971 (= lt!1184849 (choose!20159 (regex!5456 (rule!8058 separatorToken!241)) lt!1184517 lt!1184522))))

(declare-fun validRegex!4656 (Regex!10215) Bool)

(assert (=> d!1004971 (validRegex!4656 (regex!5456 (rule!8058 separatorToken!241)))))

(assert (=> d!1004971 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!514 (regex!5456 (rule!8058 separatorToken!241)) lt!1184517 lt!1184522) lt!1184849)))

(declare-fun bs!561874 () Bool)

(assert (= bs!561874 d!1004971))

(assert (=> bs!561874 m!3894679))

(declare-fun m!3895993 () Bool)

(assert (=> bs!561874 m!3895993))

(declare-fun m!3895995 () Bool)

(assert (=> bs!561874 m!3895995))

(assert (=> b!3478795 d!1004971))

(declare-fun b!3479594 () Bool)

(declare-fun res!1404124 () Bool)

(declare-fun e!2155397 () Bool)

(assert (=> b!3479594 (=> (not res!1404124) (not e!2155397))))

(declare-fun call!250936 () Bool)

(assert (=> b!3479594 (= res!1404124 (not call!250936))))

(declare-fun b!3479595 () Bool)

(declare-fun e!2155398 () Bool)

(declare-fun e!2155396 () Bool)

(assert (=> b!3479595 (= e!2155398 e!2155396)))

(declare-fun res!1404125 () Bool)

(assert (=> b!3479595 (=> (not res!1404125) (not e!2155396))))

(declare-fun lt!1184852 () Bool)

(assert (=> b!3479595 (= res!1404125 (not lt!1184852))))

(declare-fun b!3479596 () Bool)

(declare-fun e!2155400 () Bool)

(assert (=> b!3479596 (= e!2155400 (not (= (head!7347 lt!1184517) (c!596544 (regex!5456 (rule!8058 separatorToken!241))))))))

(declare-fun b!3479597 () Bool)

(declare-fun e!2155399 () Bool)

(declare-fun e!2155402 () Bool)

(assert (=> b!3479597 (= e!2155399 e!2155402)))

(declare-fun c!596695 () Bool)

(assert (=> b!3479597 (= c!596695 ((_ is EmptyLang!10215) (regex!5456 (rule!8058 separatorToken!241))))))

(declare-fun bm!250931 () Bool)

(assert (=> bm!250931 (= call!250936 (isEmpty!21641 lt!1184517))))

(declare-fun b!3479598 () Bool)

(assert (=> b!3479598 (= e!2155402 (not lt!1184852))))

(declare-fun b!3479599 () Bool)

(assert (=> b!3479599 (= e!2155396 e!2155400)))

(declare-fun res!1404123 () Bool)

(assert (=> b!3479599 (=> res!1404123 e!2155400)))

(assert (=> b!3479599 (= res!1404123 call!250936)))

(declare-fun b!3479600 () Bool)

(assert (=> b!3479600 (= e!2155399 (= lt!1184852 call!250936))))

(declare-fun b!3479601 () Bool)

(declare-fun e!2155401 () Bool)

(declare-fun nullable!3500 (Regex!10215) Bool)

(assert (=> b!3479601 (= e!2155401 (nullable!3500 (regex!5456 (rule!8058 separatorToken!241))))))

(declare-fun b!3479602 () Bool)

(assert (=> b!3479602 (= e!2155397 (= (head!7347 lt!1184517) (c!596544 (regex!5456 (rule!8058 separatorToken!241)))))))

(declare-fun b!3479593 () Bool)

(declare-fun res!1404122 () Bool)

(assert (=> b!3479593 (=> (not res!1404122) (not e!2155397))))

(declare-fun tail!5457 (List!37369) List!37369)

(assert (=> b!3479593 (= res!1404122 (isEmpty!21641 (tail!5457 lt!1184517)))))

(declare-fun d!1004973 () Bool)

(assert (=> d!1004973 e!2155399))

(declare-fun c!596694 () Bool)

(assert (=> d!1004973 (= c!596694 ((_ is EmptyExpr!10215) (regex!5456 (rule!8058 separatorToken!241))))))

(assert (=> d!1004973 (= lt!1184852 e!2155401)))

(declare-fun c!596693 () Bool)

(assert (=> d!1004973 (= c!596693 (isEmpty!21641 lt!1184517))))

(assert (=> d!1004973 (validRegex!4656 (regex!5456 (rule!8058 separatorToken!241)))))

(assert (=> d!1004973 (= (matchR!4799 (regex!5456 (rule!8058 separatorToken!241)) lt!1184517) lt!1184852)))

(declare-fun b!3479603 () Bool)

(declare-fun derivativeStep!3053 (Regex!10215 C!20616) Regex!10215)

(assert (=> b!3479603 (= e!2155401 (matchR!4799 (derivativeStep!3053 (regex!5456 (rule!8058 separatorToken!241)) (head!7347 lt!1184517)) (tail!5457 lt!1184517)))))

(declare-fun b!3479604 () Bool)

(declare-fun res!1404118 () Bool)

(assert (=> b!3479604 (=> res!1404118 e!2155398)))

(assert (=> b!3479604 (= res!1404118 (not ((_ is ElementMatch!10215) (regex!5456 (rule!8058 separatorToken!241)))))))

(assert (=> b!3479604 (= e!2155402 e!2155398)))

(declare-fun b!3479605 () Bool)

(declare-fun res!1404121 () Bool)

(assert (=> b!3479605 (=> res!1404121 e!2155400)))

(assert (=> b!3479605 (= res!1404121 (not (isEmpty!21641 (tail!5457 lt!1184517))))))

(declare-fun b!3479606 () Bool)

(declare-fun res!1404119 () Bool)

(assert (=> b!3479606 (=> res!1404119 e!2155398)))

(assert (=> b!3479606 (= res!1404119 e!2155397)))

(declare-fun res!1404120 () Bool)

(assert (=> b!3479606 (=> (not res!1404120) (not e!2155397))))

(assert (=> b!3479606 (= res!1404120 lt!1184852)))

(assert (= (and d!1004973 c!596693) b!3479601))

(assert (= (and d!1004973 (not c!596693)) b!3479603))

(assert (= (and d!1004973 c!596694) b!3479600))

(assert (= (and d!1004973 (not c!596694)) b!3479597))

(assert (= (and b!3479597 c!596695) b!3479598))

(assert (= (and b!3479597 (not c!596695)) b!3479604))

(assert (= (and b!3479604 (not res!1404118)) b!3479606))

(assert (= (and b!3479606 res!1404120) b!3479594))

(assert (= (and b!3479594 res!1404124) b!3479593))

(assert (= (and b!3479593 res!1404122) b!3479602))

(assert (= (and b!3479606 (not res!1404119)) b!3479595))

(assert (= (and b!3479595 res!1404125) b!3479599))

(assert (= (and b!3479599 (not res!1404123)) b!3479605))

(assert (= (and b!3479605 (not res!1404121)) b!3479596))

(assert (= (or b!3479600 b!3479594 b!3479599) bm!250931))

(assert (=> b!3479602 m!3894645))

(assert (=> b!3479596 m!3894645))

(declare-fun m!3895997 () Bool)

(assert (=> b!3479601 m!3895997))

(declare-fun m!3895999 () Bool)

(assert (=> b!3479605 m!3895999))

(assert (=> b!3479605 m!3895999))

(declare-fun m!3896001 () Bool)

(assert (=> b!3479605 m!3896001))

(declare-fun m!3896003 () Bool)

(assert (=> bm!250931 m!3896003))

(assert (=> b!3479593 m!3895999))

(assert (=> b!3479593 m!3895999))

(assert (=> b!3479593 m!3896001))

(assert (=> b!3479603 m!3894645))

(assert (=> b!3479603 m!3894645))

(declare-fun m!3896005 () Bool)

(assert (=> b!3479603 m!3896005))

(assert (=> b!3479603 m!3895999))

(assert (=> b!3479603 m!3896005))

(assert (=> b!3479603 m!3895999))

(declare-fun m!3896007 () Bool)

(assert (=> b!3479603 m!3896007))

(assert (=> d!1004973 m!3896003))

(assert (=> d!1004973 m!3895995))

(assert (=> b!3478795 d!1004973))

(declare-fun b!3479608 () Bool)

(declare-fun res!1404132 () Bool)

(declare-fun e!2155404 () Bool)

(assert (=> b!3479608 (=> (not res!1404132) (not e!2155404))))

(declare-fun call!250937 () Bool)

(assert (=> b!3479608 (= res!1404132 (not call!250937))))

(declare-fun b!3479609 () Bool)

(declare-fun e!2155405 () Bool)

(declare-fun e!2155403 () Bool)

(assert (=> b!3479609 (= e!2155405 e!2155403)))

(declare-fun res!1404133 () Bool)

(assert (=> b!3479609 (=> (not res!1404133) (not e!2155403))))

(declare-fun lt!1184853 () Bool)

(assert (=> b!3479609 (= res!1404133 (not lt!1184853))))

(declare-fun b!3479610 () Bool)

(declare-fun e!2155407 () Bool)

(assert (=> b!3479610 (= e!2155407 (not (= (head!7347 lt!1184517) (c!596544 (regex!5456 lt!1184520)))))))

(declare-fun b!3479611 () Bool)

(declare-fun e!2155406 () Bool)

(declare-fun e!2155409 () Bool)

(assert (=> b!3479611 (= e!2155406 e!2155409)))

(declare-fun c!596698 () Bool)

(assert (=> b!3479611 (= c!596698 ((_ is EmptyLang!10215) (regex!5456 lt!1184520)))))

(declare-fun bm!250932 () Bool)

(assert (=> bm!250932 (= call!250937 (isEmpty!21641 lt!1184517))))

(declare-fun b!3479612 () Bool)

(assert (=> b!3479612 (= e!2155409 (not lt!1184853))))

(declare-fun b!3479613 () Bool)

(assert (=> b!3479613 (= e!2155403 e!2155407)))

(declare-fun res!1404131 () Bool)

(assert (=> b!3479613 (=> res!1404131 e!2155407)))

(assert (=> b!3479613 (= res!1404131 call!250937)))

(declare-fun b!3479614 () Bool)

(assert (=> b!3479614 (= e!2155406 (= lt!1184853 call!250937))))

(declare-fun b!3479615 () Bool)

(declare-fun e!2155408 () Bool)

(assert (=> b!3479615 (= e!2155408 (nullable!3500 (regex!5456 lt!1184520)))))

(declare-fun b!3479616 () Bool)

(assert (=> b!3479616 (= e!2155404 (= (head!7347 lt!1184517) (c!596544 (regex!5456 lt!1184520))))))

(declare-fun b!3479607 () Bool)

(declare-fun res!1404130 () Bool)

(assert (=> b!3479607 (=> (not res!1404130) (not e!2155404))))

(assert (=> b!3479607 (= res!1404130 (isEmpty!21641 (tail!5457 lt!1184517)))))

(declare-fun d!1004975 () Bool)

(assert (=> d!1004975 e!2155406))

(declare-fun c!596697 () Bool)

(assert (=> d!1004975 (= c!596697 ((_ is EmptyExpr!10215) (regex!5456 lt!1184520)))))

(assert (=> d!1004975 (= lt!1184853 e!2155408)))

(declare-fun c!596696 () Bool)

(assert (=> d!1004975 (= c!596696 (isEmpty!21641 lt!1184517))))

(assert (=> d!1004975 (validRegex!4656 (regex!5456 lt!1184520))))

(assert (=> d!1004975 (= (matchR!4799 (regex!5456 lt!1184520) lt!1184517) lt!1184853)))

(declare-fun b!3479617 () Bool)

(assert (=> b!3479617 (= e!2155408 (matchR!4799 (derivativeStep!3053 (regex!5456 lt!1184520) (head!7347 lt!1184517)) (tail!5457 lt!1184517)))))

(declare-fun b!3479618 () Bool)

(declare-fun res!1404126 () Bool)

(assert (=> b!3479618 (=> res!1404126 e!2155405)))

(assert (=> b!3479618 (= res!1404126 (not ((_ is ElementMatch!10215) (regex!5456 lt!1184520))))))

(assert (=> b!3479618 (= e!2155409 e!2155405)))

(declare-fun b!3479619 () Bool)

(declare-fun res!1404129 () Bool)

(assert (=> b!3479619 (=> res!1404129 e!2155407)))

(assert (=> b!3479619 (= res!1404129 (not (isEmpty!21641 (tail!5457 lt!1184517))))))

(declare-fun b!3479620 () Bool)

(declare-fun res!1404127 () Bool)

(assert (=> b!3479620 (=> res!1404127 e!2155405)))

(assert (=> b!3479620 (= res!1404127 e!2155404)))

(declare-fun res!1404128 () Bool)

(assert (=> b!3479620 (=> (not res!1404128) (not e!2155404))))

(assert (=> b!3479620 (= res!1404128 lt!1184853)))

(assert (= (and d!1004975 c!596696) b!3479615))

(assert (= (and d!1004975 (not c!596696)) b!3479617))

(assert (= (and d!1004975 c!596697) b!3479614))

(assert (= (and d!1004975 (not c!596697)) b!3479611))

(assert (= (and b!3479611 c!596698) b!3479612))

(assert (= (and b!3479611 (not c!596698)) b!3479618))

(assert (= (and b!3479618 (not res!1404126)) b!3479620))

(assert (= (and b!3479620 res!1404128) b!3479608))

(assert (= (and b!3479608 res!1404132) b!3479607))

(assert (= (and b!3479607 res!1404130) b!3479616))

(assert (= (and b!3479620 (not res!1404127)) b!3479609))

(assert (= (and b!3479609 res!1404133) b!3479613))

(assert (= (and b!3479613 (not res!1404131)) b!3479619))

(assert (= (and b!3479619 (not res!1404129)) b!3479610))

(assert (= (or b!3479614 b!3479608 b!3479613) bm!250932))

(assert (=> b!3479616 m!3894645))

(assert (=> b!3479610 m!3894645))

(declare-fun m!3896009 () Bool)

(assert (=> b!3479615 m!3896009))

(assert (=> b!3479619 m!3895999))

(assert (=> b!3479619 m!3895999))

(assert (=> b!3479619 m!3896001))

(assert (=> bm!250932 m!3896003))

(assert (=> b!3479607 m!3895999))

(assert (=> b!3479607 m!3895999))

(assert (=> b!3479607 m!3896001))

(assert (=> b!3479617 m!3894645))

(assert (=> b!3479617 m!3894645))

(declare-fun m!3896011 () Bool)

(assert (=> b!3479617 m!3896011))

(assert (=> b!3479617 m!3895999))

(assert (=> b!3479617 m!3896011))

(assert (=> b!3479617 m!3895999))

(declare-fun m!3896013 () Bool)

(assert (=> b!3479617 m!3896013))

(assert (=> d!1004975 m!3896003))

(declare-fun m!3896015 () Bool)

(assert (=> d!1004975 m!3896015))

(assert (=> b!3478816 d!1004975))

(declare-fun d!1004977 () Bool)

(assert (=> d!1004977 (= (get!11935 lt!1184521) (v!36944 lt!1184521))))

(assert (=> b!3478816 d!1004977))

(declare-fun d!1004979 () Bool)

(declare-fun e!2155411 () Bool)

(assert (=> d!1004979 e!2155411))

(declare-fun res!1404135 () Bool)

(assert (=> d!1004979 (=> (not res!1404135) (not e!2155411))))

(declare-fun lt!1184854 () List!37369)

(assert (=> d!1004979 (= res!1404135 (= (content!5215 lt!1184854) ((_ map or) (content!5215 lt!1184514) (content!5215 lt!1184492))))))

(declare-fun e!2155410 () List!37369)

(assert (=> d!1004979 (= lt!1184854 e!2155410)))

(declare-fun c!596699 () Bool)

(assert (=> d!1004979 (= c!596699 ((_ is Nil!37245) lt!1184514))))

(assert (=> d!1004979 (= (++!9199 lt!1184514 lt!1184492) lt!1184854)))

(declare-fun b!3479621 () Bool)

(assert (=> b!3479621 (= e!2155410 lt!1184492)))

(declare-fun b!3479622 () Bool)

(assert (=> b!3479622 (= e!2155410 (Cons!37245 (h!42665 lt!1184514) (++!9199 (t!275320 lt!1184514) lt!1184492)))))

(declare-fun b!3479623 () Bool)

(declare-fun res!1404134 () Bool)

(assert (=> b!3479623 (=> (not res!1404134) (not e!2155411))))

(assert (=> b!3479623 (= res!1404134 (= (size!28285 lt!1184854) (+ (size!28285 lt!1184514) (size!28285 lt!1184492))))))

(declare-fun b!3479624 () Bool)

(assert (=> b!3479624 (= e!2155411 (or (not (= lt!1184492 Nil!37245)) (= lt!1184854 lt!1184514)))))

(assert (= (and d!1004979 c!596699) b!3479621))

(assert (= (and d!1004979 (not c!596699)) b!3479622))

(assert (= (and d!1004979 res!1404135) b!3479623))

(assert (= (and b!3479623 res!1404134) b!3479624))

(declare-fun m!3896017 () Bool)

(assert (=> d!1004979 m!3896017))

(assert (=> d!1004979 m!3895035))

(declare-fun m!3896019 () Bool)

(assert (=> d!1004979 m!3896019))

(declare-fun m!3896021 () Bool)

(assert (=> b!3479622 m!3896021))

(declare-fun m!3896023 () Bool)

(assert (=> b!3479623 m!3896023))

(assert (=> b!3479623 m!3894613))

(declare-fun m!3896025 () Bool)

(assert (=> b!3479623 m!3896025))

(assert (=> b!3478817 d!1004979))

(declare-fun d!1004981 () Bool)

(assert (=> d!1004981 (= (++!9199 (++!9199 lt!1184514 lt!1184517) lt!1184503) (++!9199 lt!1184514 (++!9199 lt!1184517 lt!1184503)))))

(declare-fun lt!1184857 () Unit!52678)

(declare-fun choose!20161 (List!37369 List!37369 List!37369) Unit!52678)

(assert (=> d!1004981 (= lt!1184857 (choose!20161 lt!1184514 lt!1184517 lt!1184503))))

(assert (=> d!1004981 (= (lemmaConcatAssociativity!1980 lt!1184514 lt!1184517 lt!1184503) lt!1184857)))

(declare-fun bs!561875 () Bool)

(assert (= bs!561875 d!1004981))

(assert (=> bs!561875 m!3894717))

(declare-fun m!3896027 () Bool)

(assert (=> bs!561875 m!3896027))

(assert (=> bs!561875 m!3894717))

(assert (=> bs!561875 m!3894741))

(assert (=> bs!561875 m!3894741))

(assert (=> bs!561875 m!3894743))

(declare-fun m!3896029 () Bool)

(assert (=> bs!561875 m!3896029))

(assert (=> b!3478817 d!1004981))

(declare-fun d!1004983 () Bool)

(declare-fun lt!1184858 () BalanceConc!22188)

(assert (=> d!1004983 (= (list!13581 lt!1184858) (printList!1593 thiss!18206 (list!13583 lt!1184502)))))

(assert (=> d!1004983 (= lt!1184858 (printTailRec!1540 thiss!18206 lt!1184502 0 (BalanceConc!22189 Empty!11287)))))

(assert (=> d!1004983 (= (print!2110 thiss!18206 lt!1184502) lt!1184858)))

(declare-fun bs!561876 () Bool)

(assert (= bs!561876 d!1004983))

(declare-fun m!3896031 () Bool)

(assert (=> bs!561876 m!3896031))

(declare-fun m!3896033 () Bool)

(assert (=> bs!561876 m!3896033))

(assert (=> bs!561876 m!3896033))

(declare-fun m!3896035 () Bool)

(assert (=> bs!561876 m!3896035))

(assert (=> bs!561876 m!3894695))

(assert (=> b!3478796 d!1004983))

(declare-fun d!1004985 () Bool)

(declare-fun lt!1184862 () BalanceConc!22188)

(assert (=> d!1004985 (= (list!13581 lt!1184862) (printListTailRec!700 thiss!18206 (dropList!1217 lt!1184502 0) (list!13581 (BalanceConc!22189 Empty!11287))))))

(declare-fun e!2155413 () BalanceConc!22188)

(assert (=> d!1004985 (= lt!1184862 e!2155413)))

(declare-fun c!596700 () Bool)

(assert (=> d!1004985 (= c!596700 (>= 0 (size!28284 lt!1184502)))))

(declare-fun e!2155412 () Bool)

(assert (=> d!1004985 e!2155412))

(declare-fun res!1404136 () Bool)

(assert (=> d!1004985 (=> (not res!1404136) (not e!2155412))))

(assert (=> d!1004985 (= res!1404136 (>= 0 0))))

(assert (=> d!1004985 (= (printTailRec!1540 thiss!18206 lt!1184502 0 (BalanceConc!22189 Empty!11287)) lt!1184862)))

(declare-fun b!3479625 () Bool)

(assert (=> b!3479625 (= e!2155412 (<= 0 (size!28284 lt!1184502)))))

(declare-fun b!3479626 () Bool)

(assert (=> b!3479626 (= e!2155413 (BalanceConc!22189 Empty!11287))))

(declare-fun b!3479627 () Bool)

(assert (=> b!3479627 (= e!2155413 (printTailRec!1540 thiss!18206 lt!1184502 (+ 0 1) (++!9201 (BalanceConc!22189 Empty!11287) (charsOf!3470 (apply!8812 lt!1184502 0)))))))

(declare-fun lt!1184863 () List!37371)

(assert (=> b!3479627 (= lt!1184863 (list!13583 lt!1184502))))

(declare-fun lt!1184864 () Unit!52678)

(assert (=> b!3479627 (= lt!1184864 (lemmaDropApply!1175 lt!1184863 0))))

(assert (=> b!3479627 (= (head!7349 (drop!2025 lt!1184863 0)) (apply!8815 lt!1184863 0))))

(declare-fun lt!1184859 () Unit!52678)

(assert (=> b!3479627 (= lt!1184859 lt!1184864)))

(declare-fun lt!1184865 () List!37371)

(assert (=> b!3479627 (= lt!1184865 (list!13583 lt!1184502))))

(declare-fun lt!1184860 () Unit!52678)

(assert (=> b!3479627 (= lt!1184860 (lemmaDropTail!1059 lt!1184865 0))))

(assert (=> b!3479627 (= (tail!5456 (drop!2025 lt!1184865 0)) (drop!2025 lt!1184865 (+ 0 1)))))

(declare-fun lt!1184861 () Unit!52678)

(assert (=> b!3479627 (= lt!1184861 lt!1184860)))

(assert (= (and d!1004985 res!1404136) b!3479625))

(assert (= (and d!1004985 c!596700) b!3479626))

(assert (= (and d!1004985 (not c!596700)) b!3479627))

(declare-fun m!3896037 () Bool)

(assert (=> d!1004985 m!3896037))

(assert (=> d!1004985 m!3895077))

(declare-fun m!3896039 () Bool)

(assert (=> d!1004985 m!3896039))

(declare-fun m!3896041 () Bool)

(assert (=> d!1004985 m!3896041))

(assert (=> d!1004985 m!3896037))

(assert (=> d!1004985 m!3895077))

(declare-fun m!3896043 () Bool)

(assert (=> d!1004985 m!3896043))

(assert (=> b!3479625 m!3896043))

(declare-fun m!3896045 () Bool)

(assert (=> b!3479627 m!3896045))

(declare-fun m!3896047 () Bool)

(assert (=> b!3479627 m!3896047))

(declare-fun m!3896049 () Bool)

(assert (=> b!3479627 m!3896049))

(declare-fun m!3896051 () Bool)

(assert (=> b!3479627 m!3896051))

(declare-fun m!3896053 () Bool)

(assert (=> b!3479627 m!3896053))

(assert (=> b!3479627 m!3896033))

(declare-fun m!3896055 () Bool)

(assert (=> b!3479627 m!3896055))

(declare-fun m!3896057 () Bool)

(assert (=> b!3479627 m!3896057))

(assert (=> b!3479627 m!3896055))

(assert (=> b!3479627 m!3896049))

(declare-fun m!3896059 () Bool)

(assert (=> b!3479627 m!3896059))

(declare-fun m!3896061 () Bool)

(assert (=> b!3479627 m!3896061))

(assert (=> b!3479627 m!3896061))

(declare-fun m!3896063 () Bool)

(assert (=> b!3479627 m!3896063))

(declare-fun m!3896065 () Bool)

(assert (=> b!3479627 m!3896065))

(declare-fun m!3896067 () Bool)

(assert (=> b!3479627 m!3896067))

(assert (=> b!3479627 m!3896047))

(assert (=> b!3479627 m!3896059))

(assert (=> b!3478796 d!1004985))

(declare-fun d!1004987 () Bool)

(assert (=> d!1004987 (= (list!13581 lt!1184510) (list!13585 (c!596545 lt!1184510)))))

(declare-fun bs!561877 () Bool)

(assert (= bs!561877 d!1004987))

(declare-fun m!3896069 () Bool)

(assert (=> bs!561877 m!3896069))

(assert (=> b!3478796 d!1004987))

(declare-fun d!1004989 () Bool)

(declare-fun e!2155414 () Bool)

(assert (=> d!1004989 e!2155414))

(declare-fun res!1404137 () Bool)

(assert (=> d!1004989 (=> (not res!1404137) (not e!2155414))))

(declare-fun lt!1184866 () BalanceConc!22190)

(assert (=> d!1004989 (= res!1404137 (= (list!13583 lt!1184866) (Cons!37247 (h!42667 tokens!494) Nil!37247)))))

(assert (=> d!1004989 (= lt!1184866 (singleton!1132 (h!42667 tokens!494)))))

(assert (=> d!1004989 (= (singletonSeq!2552 (h!42667 tokens!494)) lt!1184866)))

(declare-fun b!3479628 () Bool)

(assert (=> b!3479628 (= e!2155414 (isBalanced!3431 (c!596546 lt!1184866)))))

(assert (= (and d!1004989 res!1404137) b!3479628))

(declare-fun m!3896071 () Bool)

(assert (=> d!1004989 m!3896071))

(declare-fun m!3896073 () Bool)

(assert (=> d!1004989 m!3896073))

(declare-fun m!3896075 () Bool)

(assert (=> b!3479628 m!3896075))

(assert (=> b!3478796 d!1004989))

(declare-fun d!1004991 () Bool)

(declare-fun c!596703 () Bool)

(assert (=> d!1004991 (= c!596703 ((_ is Cons!37247) (Cons!37247 (h!42667 tokens!494) Nil!37247)))))

(declare-fun e!2155417 () List!37369)

(assert (=> d!1004991 (= (printList!1593 thiss!18206 (Cons!37247 (h!42667 tokens!494) Nil!37247)) e!2155417)))

(declare-fun b!3479633 () Bool)

(assert (=> b!3479633 (= e!2155417 (++!9199 (list!13581 (charsOf!3470 (h!42667 (Cons!37247 (h!42667 tokens!494) Nil!37247)))) (printList!1593 thiss!18206 (t!275322 (Cons!37247 (h!42667 tokens!494) Nil!37247)))))))

(declare-fun b!3479634 () Bool)

(assert (=> b!3479634 (= e!2155417 Nil!37245)))

(assert (= (and d!1004991 c!596703) b!3479633))

(assert (= (and d!1004991 (not c!596703)) b!3479634))

(declare-fun m!3896077 () Bool)

(assert (=> b!3479633 m!3896077))

(assert (=> b!3479633 m!3896077))

(declare-fun m!3896079 () Bool)

(assert (=> b!3479633 m!3896079))

(declare-fun m!3896081 () Bool)

(assert (=> b!3479633 m!3896081))

(assert (=> b!3479633 m!3896079))

(assert (=> b!3479633 m!3896081))

(declare-fun m!3896083 () Bool)

(assert (=> b!3479633 m!3896083))

(assert (=> b!3478796 d!1004991))

(declare-fun b!3479636 () Bool)

(declare-fun res!1404144 () Bool)

(declare-fun e!2155419 () Bool)

(assert (=> b!3479636 (=> (not res!1404144) (not e!2155419))))

(declare-fun call!250938 () Bool)

(assert (=> b!3479636 (= res!1404144 (not call!250938))))

(declare-fun b!3479637 () Bool)

(declare-fun e!2155420 () Bool)

(declare-fun e!2155418 () Bool)

(assert (=> b!3479637 (= e!2155420 e!2155418)))

(declare-fun res!1404145 () Bool)

(assert (=> b!3479637 (=> (not res!1404145) (not e!2155418))))

(declare-fun lt!1184867 () Bool)

(assert (=> b!3479637 (= res!1404145 (not lt!1184867))))

(declare-fun b!3479638 () Bool)

(declare-fun e!2155422 () Bool)

(assert (=> b!3479638 (= e!2155422 (not (= (head!7347 lt!1184514) (c!596544 (regex!5456 lt!1184494)))))))

(declare-fun b!3479639 () Bool)

(declare-fun e!2155421 () Bool)

(declare-fun e!2155424 () Bool)

(assert (=> b!3479639 (= e!2155421 e!2155424)))

(declare-fun c!596706 () Bool)

(assert (=> b!3479639 (= c!596706 ((_ is EmptyLang!10215) (regex!5456 lt!1184494)))))

(declare-fun bm!250933 () Bool)

(assert (=> bm!250933 (= call!250938 (isEmpty!21641 lt!1184514))))

(declare-fun b!3479640 () Bool)

(assert (=> b!3479640 (= e!2155424 (not lt!1184867))))

(declare-fun b!3479641 () Bool)

(assert (=> b!3479641 (= e!2155418 e!2155422)))

(declare-fun res!1404143 () Bool)

(assert (=> b!3479641 (=> res!1404143 e!2155422)))

(assert (=> b!3479641 (= res!1404143 call!250938)))

(declare-fun b!3479642 () Bool)

(assert (=> b!3479642 (= e!2155421 (= lt!1184867 call!250938))))

(declare-fun b!3479643 () Bool)

(declare-fun e!2155423 () Bool)

(assert (=> b!3479643 (= e!2155423 (nullable!3500 (regex!5456 lt!1184494)))))

(declare-fun b!3479644 () Bool)

(assert (=> b!3479644 (= e!2155419 (= (head!7347 lt!1184514) (c!596544 (regex!5456 lt!1184494))))))

(declare-fun b!3479635 () Bool)

(declare-fun res!1404142 () Bool)

(assert (=> b!3479635 (=> (not res!1404142) (not e!2155419))))

(assert (=> b!3479635 (= res!1404142 (isEmpty!21641 (tail!5457 lt!1184514)))))

(declare-fun d!1004993 () Bool)

(assert (=> d!1004993 e!2155421))

(declare-fun c!596705 () Bool)

(assert (=> d!1004993 (= c!596705 ((_ is EmptyExpr!10215) (regex!5456 lt!1184494)))))

(assert (=> d!1004993 (= lt!1184867 e!2155423)))

(declare-fun c!596704 () Bool)

(assert (=> d!1004993 (= c!596704 (isEmpty!21641 lt!1184514))))

(assert (=> d!1004993 (validRegex!4656 (regex!5456 lt!1184494))))

(assert (=> d!1004993 (= (matchR!4799 (regex!5456 lt!1184494) lt!1184514) lt!1184867)))

(declare-fun b!3479645 () Bool)

(assert (=> b!3479645 (= e!2155423 (matchR!4799 (derivativeStep!3053 (regex!5456 lt!1184494) (head!7347 lt!1184514)) (tail!5457 lt!1184514)))))

(declare-fun b!3479646 () Bool)

(declare-fun res!1404138 () Bool)

(assert (=> b!3479646 (=> res!1404138 e!2155420)))

(assert (=> b!3479646 (= res!1404138 (not ((_ is ElementMatch!10215) (regex!5456 lt!1184494))))))

(assert (=> b!3479646 (= e!2155424 e!2155420)))

(declare-fun b!3479647 () Bool)

(declare-fun res!1404141 () Bool)

(assert (=> b!3479647 (=> res!1404141 e!2155422)))

(assert (=> b!3479647 (= res!1404141 (not (isEmpty!21641 (tail!5457 lt!1184514))))))

(declare-fun b!3479648 () Bool)

(declare-fun res!1404139 () Bool)

(assert (=> b!3479648 (=> res!1404139 e!2155420)))

(assert (=> b!3479648 (= res!1404139 e!2155419)))

(declare-fun res!1404140 () Bool)

(assert (=> b!3479648 (=> (not res!1404140) (not e!2155419))))

(assert (=> b!3479648 (= res!1404140 lt!1184867)))

(assert (= (and d!1004993 c!596704) b!3479643))

(assert (= (and d!1004993 (not c!596704)) b!3479645))

(assert (= (and d!1004993 c!596705) b!3479642))

(assert (= (and d!1004993 (not c!596705)) b!3479639))

(assert (= (and b!3479639 c!596706) b!3479640))

(assert (= (and b!3479639 (not c!596706)) b!3479646))

(assert (= (and b!3479646 (not res!1404138)) b!3479648))

(assert (= (and b!3479648 res!1404140) b!3479636))

(assert (= (and b!3479636 res!1404144) b!3479635))

(assert (= (and b!3479635 res!1404142) b!3479644))

(assert (= (and b!3479648 (not res!1404139)) b!3479637))

(assert (= (and b!3479637 res!1404145) b!3479641))

(assert (= (and b!3479641 (not res!1404143)) b!3479647))

(assert (= (and b!3479647 (not res!1404141)) b!3479638))

(assert (= (or b!3479642 b!3479636 b!3479641) bm!250933))

(declare-fun m!3896085 () Bool)

(assert (=> b!3479644 m!3896085))

(assert (=> b!3479638 m!3896085))

(declare-fun m!3896087 () Bool)

(assert (=> b!3479643 m!3896087))

(declare-fun m!3896089 () Bool)

(assert (=> b!3479647 m!3896089))

(assert (=> b!3479647 m!3896089))

(declare-fun m!3896091 () Bool)

(assert (=> b!3479647 m!3896091))

(declare-fun m!3896093 () Bool)

(assert (=> bm!250933 m!3896093))

(assert (=> b!3479635 m!3896089))

(assert (=> b!3479635 m!3896089))

(assert (=> b!3479635 m!3896091))

(assert (=> b!3479645 m!3896085))

(assert (=> b!3479645 m!3896085))

(declare-fun m!3896095 () Bool)

(assert (=> b!3479645 m!3896095))

(assert (=> b!3479645 m!3896089))

(assert (=> b!3479645 m!3896095))

(assert (=> b!3479645 m!3896089))

(declare-fun m!3896097 () Bool)

(assert (=> b!3479645 m!3896097))

(assert (=> d!1004993 m!3896093))

(declare-fun m!3896099 () Bool)

(assert (=> d!1004993 m!3896099))

(assert (=> b!3478797 d!1004993))

(declare-fun d!1004995 () Bool)

(assert (=> d!1004995 (= (get!11935 lt!1184516) (v!36944 lt!1184516))))

(assert (=> b!3478797 d!1004995))

(declare-fun b!3479659 () Bool)

(declare-fun res!1404148 () Bool)

(declare-fun e!2155432 () Bool)

(assert (=> b!3479659 (=> res!1404148 e!2155432)))

(assert (=> b!3479659 (= res!1404148 (not ((_ is IntegerValue!17060) (value!175956 (h!42667 tokens!494)))))))

(declare-fun e!2155431 () Bool)

(assert (=> b!3479659 (= e!2155431 e!2155432)))

(declare-fun b!3479660 () Bool)

(declare-fun e!2155433 () Bool)

(declare-fun inv!16 (TokenValue!5686) Bool)

(assert (=> b!3479660 (= e!2155433 (inv!16 (value!175956 (h!42667 tokens!494))))))

(declare-fun b!3479661 () Bool)

(declare-fun inv!17 (TokenValue!5686) Bool)

(assert (=> b!3479661 (= e!2155431 (inv!17 (value!175956 (h!42667 tokens!494))))))

(declare-fun b!3479662 () Bool)

(declare-fun inv!15 (TokenValue!5686) Bool)

(assert (=> b!3479662 (= e!2155432 (inv!15 (value!175956 (h!42667 tokens!494))))))

(declare-fun d!1004997 () Bool)

(declare-fun c!596712 () Bool)

(assert (=> d!1004997 (= c!596712 ((_ is IntegerValue!17058) (value!175956 (h!42667 tokens!494))))))

(assert (=> d!1004997 (= (inv!21 (value!175956 (h!42667 tokens!494))) e!2155433)))

(declare-fun b!3479663 () Bool)

(assert (=> b!3479663 (= e!2155433 e!2155431)))

(declare-fun c!596711 () Bool)

(assert (=> b!3479663 (= c!596711 ((_ is IntegerValue!17059) (value!175956 (h!42667 tokens!494))))))

(assert (= (and d!1004997 c!596712) b!3479660))

(assert (= (and d!1004997 (not c!596712)) b!3479663))

(assert (= (and b!3479663 c!596711) b!3479661))

(assert (= (and b!3479663 (not c!596711)) b!3479659))

(assert (= (and b!3479659 (not res!1404148)) b!3479662))

(declare-fun m!3896101 () Bool)

(assert (=> b!3479660 m!3896101))

(declare-fun m!3896103 () Bool)

(assert (=> b!3479661 m!3896103))

(declare-fun m!3896105 () Bool)

(assert (=> b!3479662 m!3896105))

(assert (=> b!3478818 d!1004997))

(declare-fun d!1004999 () Bool)

(declare-fun res!1404149 () Bool)

(declare-fun e!2155434 () Bool)

(assert (=> d!1004999 (=> (not res!1404149) (not e!2155434))))

(assert (=> d!1004999 (= res!1404149 (not (isEmpty!21641 (originalCharacters!6170 separatorToken!241))))))

(assert (=> d!1004999 (= (inv!50436 separatorToken!241) e!2155434)))

(declare-fun b!3479664 () Bool)

(declare-fun res!1404150 () Bool)

(assert (=> b!3479664 (=> (not res!1404150) (not e!2155434))))

(assert (=> b!3479664 (= res!1404150 (= (originalCharacters!6170 separatorToken!241) (list!13581 (dynLambda!15761 (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (value!175956 separatorToken!241)))))))

(declare-fun b!3479665 () Bool)

(assert (=> b!3479665 (= e!2155434 (= (size!28283 separatorToken!241) (size!28285 (originalCharacters!6170 separatorToken!241))))))

(assert (= (and d!1004999 res!1404149) b!3479664))

(assert (= (and b!3479664 res!1404150) b!3479665))

(declare-fun b_lambda!100617 () Bool)

(assert (=> (not b_lambda!100617) (not b!3479664)))

(assert (=> b!3479664 t!275332))

(declare-fun b_and!245505 () Bool)

(assert (= b_and!245499 (and (=> t!275332 result!234836) b_and!245505)))

(assert (=> b!3479664 t!275334))

(declare-fun b_and!245507 () Bool)

(assert (= b_and!245501 (and (=> t!275334 result!234840) b_and!245507)))

(assert (=> b!3479664 t!275336))

(declare-fun b_and!245509 () Bool)

(assert (= b_and!245503 (and (=> t!275336 result!234842) b_and!245509)))

(declare-fun m!3896107 () Bool)

(assert (=> d!1004999 m!3896107))

(assert (=> b!3479664 m!3894991))

(assert (=> b!3479664 m!3894991))

(declare-fun m!3896109 () Bool)

(assert (=> b!3479664 m!3896109))

(declare-fun m!3896111 () Bool)

(assert (=> b!3479665 m!3896111))

(assert (=> start!323726 d!1004999))

(declare-fun d!1005001 () Bool)

(assert (=> d!1005001 (= (inv!50433 (tag!6076 (h!42666 rules!2135))) (= (mod (str.len (value!175955 (tag!6076 (h!42666 rules!2135)))) 2) 0))))

(assert (=> b!3478819 d!1005001))

(declare-fun d!1005003 () Bool)

(declare-fun res!1404151 () Bool)

(declare-fun e!2155435 () Bool)

(assert (=> d!1005003 (=> (not res!1404151) (not e!2155435))))

(assert (=> d!1005003 (= res!1404151 (semiInverseModEq!2295 (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toValue!7692 (transformation!5456 (h!42666 rules!2135)))))))

(assert (=> d!1005003 (= (inv!50437 (transformation!5456 (h!42666 rules!2135))) e!2155435)))

(declare-fun b!3479666 () Bool)

(assert (=> b!3479666 (= e!2155435 (equivClasses!2194 (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toValue!7692 (transformation!5456 (h!42666 rules!2135)))))))

(assert (= (and d!1005003 res!1404151) b!3479666))

(declare-fun m!3896113 () Bool)

(assert (=> d!1005003 m!3896113))

(declare-fun m!3896115 () Bool)

(assert (=> b!3479666 m!3896115))

(assert (=> b!3478819 d!1005003))

(declare-fun d!1005005 () Bool)

(declare-fun lt!1184868 () Bool)

(declare-fun e!2155436 () Bool)

(assert (=> d!1005005 (= lt!1184868 e!2155436)))

(declare-fun res!1404153 () Bool)

(assert (=> d!1005005 (=> (not res!1404153) (not e!2155436))))

(assert (=> d!1005005 (= res!1404153 (= (list!13583 (_1!21638 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 separatorToken!241))))) (list!13583 (singletonSeq!2552 separatorToken!241))))))

(declare-fun e!2155437 () Bool)

(assert (=> d!1005005 (= lt!1184868 e!2155437)))

(declare-fun res!1404152 () Bool)

(assert (=> d!1005005 (=> (not res!1404152) (not e!2155437))))

(declare-fun lt!1184869 () tuple2!37008)

(assert (=> d!1005005 (= res!1404152 (= (size!28284 (_1!21638 lt!1184869)) 1))))

(assert (=> d!1005005 (= lt!1184869 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 separatorToken!241))))))

(assert (=> d!1005005 (not (isEmpty!21636 rules!2135))))

(assert (=> d!1005005 (= (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 separatorToken!241) lt!1184868)))

(declare-fun b!3479667 () Bool)

(declare-fun res!1404154 () Bool)

(assert (=> b!3479667 (=> (not res!1404154) (not e!2155437))))

(assert (=> b!3479667 (= res!1404154 (= (apply!8812 (_1!21638 lt!1184869) 0) separatorToken!241))))

(declare-fun b!3479668 () Bool)

(assert (=> b!3479668 (= e!2155437 (isEmpty!21635 (_2!21638 lt!1184869)))))

(declare-fun b!3479669 () Bool)

(assert (=> b!3479669 (= e!2155436 (isEmpty!21635 (_2!21638 (lex!2371 thiss!18206 rules!2135 (print!2110 thiss!18206 (singletonSeq!2552 separatorToken!241))))))))

(assert (= (and d!1005005 res!1404152) b!3479667))

(assert (= (and b!3479667 res!1404154) b!3479668))

(assert (= (and d!1005005 res!1404153) b!3479669))

(assert (=> d!1005005 m!3894641))

(declare-fun m!3896117 () Bool)

(assert (=> d!1005005 m!3896117))

(assert (=> d!1005005 m!3894641))

(assert (=> d!1005005 m!3894601))

(declare-fun m!3896119 () Bool)

(assert (=> d!1005005 m!3896119))

(declare-fun m!3896121 () Bool)

(assert (=> d!1005005 m!3896121))

(declare-fun m!3896123 () Bool)

(assert (=> d!1005005 m!3896123))

(assert (=> d!1005005 m!3894641))

(assert (=> d!1005005 m!3896119))

(declare-fun m!3896125 () Bool)

(assert (=> d!1005005 m!3896125))

(declare-fun m!3896127 () Bool)

(assert (=> b!3479667 m!3896127))

(declare-fun m!3896129 () Bool)

(assert (=> b!3479668 m!3896129))

(assert (=> b!3479669 m!3894641))

(assert (=> b!3479669 m!3894641))

(assert (=> b!3479669 m!3896119))

(assert (=> b!3479669 m!3896119))

(assert (=> b!3479669 m!3896121))

(declare-fun m!3896131 () Bool)

(assert (=> b!3479669 m!3896131))

(assert (=> b!3478798 d!1005005))

(declare-fun d!1005007 () Bool)

(declare-fun lt!1184870 () Bool)

(assert (=> d!1005007 (= lt!1184870 (isEmpty!21641 (list!13581 (_2!21638 lt!1184506))))))

(assert (=> d!1005007 (= lt!1184870 (isEmpty!21642 (c!596545 (_2!21638 lt!1184506))))))

(assert (=> d!1005007 (= (isEmpty!21635 (_2!21638 lt!1184506)) lt!1184870)))

(declare-fun bs!561878 () Bool)

(assert (= bs!561878 d!1005007))

(declare-fun m!3896133 () Bool)

(assert (=> bs!561878 m!3896133))

(assert (=> bs!561878 m!3896133))

(declare-fun m!3896135 () Bool)

(assert (=> bs!561878 m!3896135))

(declare-fun m!3896137 () Bool)

(assert (=> bs!561878 m!3896137))

(assert (=> b!3478799 d!1005007))

(declare-fun d!1005009 () Bool)

(assert (=> d!1005009 (dynLambda!15764 lambda!122184 (h!42667 (t!275322 tokens!494)))))

(declare-fun lt!1184871 () Unit!52678)

(assert (=> d!1005009 (= lt!1184871 (choose!20157 tokens!494 lambda!122184 (h!42667 (t!275322 tokens!494))))))

(declare-fun e!2155438 () Bool)

(assert (=> d!1005009 e!2155438))

(declare-fun res!1404155 () Bool)

(assert (=> d!1005009 (=> (not res!1404155) (not e!2155438))))

(assert (=> d!1005009 (= res!1404155 (forall!7963 tokens!494 lambda!122184))))

(assert (=> d!1005009 (= (forallContained!1403 tokens!494 lambda!122184 (h!42667 (t!275322 tokens!494))) lt!1184871)))

(declare-fun b!3479670 () Bool)

(assert (=> b!3479670 (= e!2155438 (contains!6939 tokens!494 (h!42667 (t!275322 tokens!494))))))

(assert (= (and d!1005009 res!1404155) b!3479670))

(declare-fun b_lambda!100619 () Bool)

(assert (=> (not b_lambda!100619) (not d!1005009)))

(declare-fun m!3896139 () Bool)

(assert (=> d!1005009 m!3896139))

(declare-fun m!3896141 () Bool)

(assert (=> d!1005009 m!3896141))

(assert (=> d!1005009 m!3894763))

(assert (=> b!3479670 m!3894607))

(assert (=> b!3478820 d!1005009))

(declare-fun d!1005011 () Bool)

(assert (=> d!1005011 (dynLambda!15764 lambda!122184 (h!42667 tokens!494))))

(declare-fun lt!1184872 () Unit!52678)

(assert (=> d!1005011 (= lt!1184872 (choose!20157 tokens!494 lambda!122184 (h!42667 tokens!494)))))

(declare-fun e!2155439 () Bool)

(assert (=> d!1005011 e!2155439))

(declare-fun res!1404156 () Bool)

(assert (=> d!1005011 (=> (not res!1404156) (not e!2155439))))

(assert (=> d!1005011 (= res!1404156 (forall!7963 tokens!494 lambda!122184))))

(assert (=> d!1005011 (= (forallContained!1403 tokens!494 lambda!122184 (h!42667 tokens!494)) lt!1184872)))

(declare-fun b!3479671 () Bool)

(assert (=> b!3479671 (= e!2155439 (contains!6939 tokens!494 (h!42667 tokens!494)))))

(assert (= (and d!1005011 res!1404156) b!3479671))

(declare-fun b_lambda!100621 () Bool)

(assert (=> (not b_lambda!100621) (not d!1005011)))

(assert (=> d!1005011 m!3895789))

(declare-fun m!3896143 () Bool)

(assert (=> d!1005011 m!3896143))

(assert (=> d!1005011 m!3894763))

(declare-fun m!3896145 () Bool)

(assert (=> b!3479671 m!3896145))

(assert (=> b!3478820 d!1005011))

(declare-fun b!3479672 () Bool)

(declare-fun res!1404157 () Bool)

(declare-fun e!2155441 () Bool)

(assert (=> b!3479672 (=> res!1404157 e!2155441)))

(assert (=> b!3479672 (= res!1404157 (not ((_ is IntegerValue!17060) (value!175956 separatorToken!241))))))

(declare-fun e!2155440 () Bool)

(assert (=> b!3479672 (= e!2155440 e!2155441)))

(declare-fun b!3479673 () Bool)

(declare-fun e!2155442 () Bool)

(assert (=> b!3479673 (= e!2155442 (inv!16 (value!175956 separatorToken!241)))))

(declare-fun b!3479674 () Bool)

(assert (=> b!3479674 (= e!2155440 (inv!17 (value!175956 separatorToken!241)))))

(declare-fun b!3479675 () Bool)

(assert (=> b!3479675 (= e!2155441 (inv!15 (value!175956 separatorToken!241)))))

(declare-fun d!1005013 () Bool)

(declare-fun c!596714 () Bool)

(assert (=> d!1005013 (= c!596714 ((_ is IntegerValue!17058) (value!175956 separatorToken!241)))))

(assert (=> d!1005013 (= (inv!21 (value!175956 separatorToken!241)) e!2155442)))

(declare-fun b!3479676 () Bool)

(assert (=> b!3479676 (= e!2155442 e!2155440)))

(declare-fun c!596713 () Bool)

(assert (=> b!3479676 (= c!596713 ((_ is IntegerValue!17059) (value!175956 separatorToken!241)))))

(assert (= (and d!1005013 c!596714) b!3479673))

(assert (= (and d!1005013 (not c!596714)) b!3479676))

(assert (= (and b!3479676 c!596713) b!3479674))

(assert (= (and b!3479676 (not c!596713)) b!3479672))

(assert (= (and b!3479672 (not res!1404157)) b!3479675))

(declare-fun m!3896147 () Bool)

(assert (=> b!3479673 m!3896147))

(declare-fun m!3896149 () Bool)

(assert (=> b!3479674 m!3896149))

(declare-fun m!3896151 () Bool)

(assert (=> b!3479675 m!3896151))

(assert (=> b!3478821 d!1005013))

(declare-fun b!3479687 () Bool)

(declare-fun b_free!90253 () Bool)

(declare-fun b_next!90957 () Bool)

(assert (=> b!3479687 (= b_free!90253 (not b_next!90957))))

(declare-fun t!275402 () Bool)

(declare-fun tb!190775 () Bool)

(assert (=> (and b!3479687 (= (toValue!7692 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275402) tb!190775))

(declare-fun result!234910 () Bool)

(assert (= result!234910 result!234868))

(assert (=> d!1004837 t!275402))

(declare-fun b_and!245511 () Bool)

(declare-fun tp!1081038 () Bool)

(assert (=> b!3479687 (= tp!1081038 (and (=> t!275402 result!234910) b_and!245511))))

(declare-fun b_free!90255 () Bool)

(declare-fun b_next!90959 () Bool)

(assert (=> b!3479687 (= b_free!90255 (not b_next!90959))))

(declare-fun t!275404 () Bool)

(declare-fun tb!190777 () Bool)

(assert (=> (and b!3479687 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494)))))) t!275404) tb!190777))

(declare-fun result!234912 () Bool)

(assert (= result!234912 result!234844))

(assert (=> d!1004725 t!275404))

(declare-fun t!275406 () Bool)

(declare-fun tb!190779 () Bool)

(assert (=> (and b!3479687 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275406) tb!190779))

(declare-fun result!234914 () Bool)

(assert (= result!234914 result!234850))

(assert (=> b!3479001 t!275406))

(declare-fun tb!190781 () Bool)

(declare-fun t!275408 () Bool)

(assert (=> (and b!3479687 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241)))) t!275408) tb!190781))

(declare-fun result!234916 () Bool)

(assert (= result!234916 result!234836))

(assert (=> d!1004717 t!275408))

(assert (=> b!3479664 t!275408))

(assert (=> d!1004969 t!275406))

(declare-fun b_and!245513 () Bool)

(declare-fun tp!1081035 () Bool)

(assert (=> b!3479687 (= tp!1081035 (and (=> t!275408 result!234916) (=> t!275404 result!234912) (=> t!275406 result!234914) b_and!245513))))

(declare-fun e!2155454 () Bool)

(assert (=> b!3479687 (= e!2155454 (and tp!1081038 tp!1081035))))

(declare-fun b!3479686 () Bool)

(declare-fun e!2155451 () Bool)

(declare-fun tp!1081037 () Bool)

(assert (=> b!3479686 (= e!2155451 (and tp!1081037 (inv!50433 (tag!6076 (h!42666 (t!275321 rules!2135)))) (inv!50437 (transformation!5456 (h!42666 (t!275321 rules!2135)))) e!2155454))))

(declare-fun b!3479685 () Bool)

(declare-fun e!2155453 () Bool)

(declare-fun tp!1081036 () Bool)

(assert (=> b!3479685 (= e!2155453 (and e!2155451 tp!1081036))))

(assert (=> b!3478825 (= tp!1080957 e!2155453)))

(assert (= b!3479686 b!3479687))

(assert (= b!3479685 b!3479686))

(assert (= (and b!3478825 ((_ is Cons!37246) (t!275321 rules!2135))) b!3479685))

(declare-fun m!3896153 () Bool)

(assert (=> b!3479686 m!3896153))

(declare-fun m!3896155 () Bool)

(assert (=> b!3479686 m!3896155))

(declare-fun e!2155457 () Bool)

(assert (=> b!3478827 (= tp!1080948 e!2155457)))

(declare-fun b!3479701 () Bool)

(declare-fun tp!1081049 () Bool)

(declare-fun tp!1081052 () Bool)

(assert (=> b!3479701 (= e!2155457 (and tp!1081049 tp!1081052))))

(declare-fun b!3479698 () Bool)

(declare-fun tp_is_empty!17581 () Bool)

(assert (=> b!3479698 (= e!2155457 tp_is_empty!17581)))

(declare-fun b!3479700 () Bool)

(declare-fun tp!1081051 () Bool)

(assert (=> b!3479700 (= e!2155457 tp!1081051)))

(declare-fun b!3479699 () Bool)

(declare-fun tp!1081053 () Bool)

(declare-fun tp!1081050 () Bool)

(assert (=> b!3479699 (= e!2155457 (and tp!1081053 tp!1081050))))

(assert (= (and b!3478827 ((_ is ElementMatch!10215) (regex!5456 (rule!8058 separatorToken!241)))) b!3479698))

(assert (= (and b!3478827 ((_ is Concat!15901) (regex!5456 (rule!8058 separatorToken!241)))) b!3479699))

(assert (= (and b!3478827 ((_ is Star!10215) (regex!5456 (rule!8058 separatorToken!241)))) b!3479700))

(assert (= (and b!3478827 ((_ is Union!10215) (regex!5456 (rule!8058 separatorToken!241)))) b!3479701))

(declare-fun b!3479706 () Bool)

(declare-fun e!2155460 () Bool)

(declare-fun tp!1081056 () Bool)

(assert (=> b!3479706 (= e!2155460 (and tp_is_empty!17581 tp!1081056))))

(assert (=> b!3478818 (= tp!1080950 e!2155460)))

(assert (= (and b!3478818 ((_ is Cons!37245) (originalCharacters!6170 (h!42667 tokens!494)))) b!3479706))

(declare-fun e!2155461 () Bool)

(assert (=> b!3478819 (= tp!1080960 e!2155461)))

(declare-fun b!3479710 () Bool)

(declare-fun tp!1081057 () Bool)

(declare-fun tp!1081060 () Bool)

(assert (=> b!3479710 (= e!2155461 (and tp!1081057 tp!1081060))))

(declare-fun b!3479707 () Bool)

(assert (=> b!3479707 (= e!2155461 tp_is_empty!17581)))

(declare-fun b!3479709 () Bool)

(declare-fun tp!1081059 () Bool)

(assert (=> b!3479709 (= e!2155461 tp!1081059)))

(declare-fun b!3479708 () Bool)

(declare-fun tp!1081061 () Bool)

(declare-fun tp!1081058 () Bool)

(assert (=> b!3479708 (= e!2155461 (and tp!1081061 tp!1081058))))

(assert (= (and b!3478819 ((_ is ElementMatch!10215) (regex!5456 (h!42666 rules!2135)))) b!3479707))

(assert (= (and b!3478819 ((_ is Concat!15901) (regex!5456 (h!42666 rules!2135)))) b!3479708))

(assert (= (and b!3478819 ((_ is Star!10215) (regex!5456 (h!42666 rules!2135)))) b!3479709))

(assert (= (and b!3478819 ((_ is Union!10215) (regex!5456 (h!42666 rules!2135)))) b!3479710))

(declare-fun e!2155462 () Bool)

(assert (=> b!3478808 (= tp!1080956 e!2155462)))

(declare-fun b!3479714 () Bool)

(declare-fun tp!1081062 () Bool)

(declare-fun tp!1081065 () Bool)

(assert (=> b!3479714 (= e!2155462 (and tp!1081062 tp!1081065))))

(declare-fun b!3479711 () Bool)

(assert (=> b!3479711 (= e!2155462 tp_is_empty!17581)))

(declare-fun b!3479713 () Bool)

(declare-fun tp!1081064 () Bool)

(assert (=> b!3479713 (= e!2155462 tp!1081064)))

(declare-fun b!3479712 () Bool)

(declare-fun tp!1081066 () Bool)

(declare-fun tp!1081063 () Bool)

(assert (=> b!3479712 (= e!2155462 (and tp!1081066 tp!1081063))))

(assert (= (and b!3478808 ((_ is ElementMatch!10215) (regex!5456 (rule!8058 (h!42667 tokens!494))))) b!3479711))

(assert (= (and b!3478808 ((_ is Concat!15901) (regex!5456 (rule!8058 (h!42667 tokens!494))))) b!3479712))

(assert (= (and b!3478808 ((_ is Star!10215) (regex!5456 (rule!8058 (h!42667 tokens!494))))) b!3479713))

(assert (= (and b!3478808 ((_ is Union!10215) (regex!5456 (rule!8058 (h!42667 tokens!494))))) b!3479714))

(declare-fun b!3479728 () Bool)

(declare-fun b_free!90257 () Bool)

(declare-fun b_next!90961 () Bool)

(assert (=> b!3479728 (= b_free!90257 (not b_next!90961))))

(declare-fun t!275410 () Bool)

(declare-fun tb!190783 () Bool)

(assert (=> (and b!3479728 (= (toValue!7692 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275410) tb!190783))

(declare-fun result!234924 () Bool)

(assert (= result!234924 result!234868))

(assert (=> d!1004837 t!275410))

(declare-fun tp!1081077 () Bool)

(declare-fun b_and!245515 () Bool)

(assert (=> b!3479728 (= tp!1081077 (and (=> t!275410 result!234924) b_and!245515))))

(declare-fun b_free!90259 () Bool)

(declare-fun b_next!90963 () Bool)

(assert (=> b!3479728 (= b_free!90259 (not b_next!90963))))

(declare-fun t!275412 () Bool)

(declare-fun tb!190785 () Bool)

(assert (=> (and b!3479728 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494)))))) t!275412) tb!190785))

(declare-fun result!234926 () Bool)

(assert (= result!234926 result!234844))

(assert (=> d!1004725 t!275412))

(declare-fun t!275414 () Bool)

(declare-fun tb!190787 () Bool)

(assert (=> (and b!3479728 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494))))) t!275414) tb!190787))

(declare-fun result!234928 () Bool)

(assert (= result!234928 result!234850))

(assert (=> b!3479001 t!275414))

(declare-fun tb!190789 () Bool)

(declare-fun t!275416 () Bool)

(assert (=> (and b!3479728 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241)))) t!275416) tb!190789))

(declare-fun result!234930 () Bool)

(assert (= result!234930 result!234836))

(assert (=> d!1004717 t!275416))

(assert (=> b!3479664 t!275416))

(assert (=> d!1004969 t!275414))

(declare-fun b_and!245517 () Bool)

(declare-fun tp!1081078 () Bool)

(assert (=> b!3479728 (= tp!1081078 (and (=> t!275414 result!234928) (=> t!275412 result!234926) (=> t!275416 result!234930) b_and!245517))))

(declare-fun e!2155476 () Bool)

(assert (=> b!3479728 (= e!2155476 (and tp!1081077 tp!1081078))))

(declare-fun e!2155475 () Bool)

(assert (=> b!3478831 (= tp!1080958 e!2155475)))

(declare-fun e!2155479 () Bool)

(declare-fun b!3479726 () Bool)

(declare-fun tp!1081079 () Bool)

(declare-fun e!2155478 () Bool)

(assert (=> b!3479726 (= e!2155479 (and (inv!21 (value!175956 (h!42667 (t!275322 tokens!494)))) e!2155478 tp!1081079))))

(declare-fun b!3479725 () Bool)

(declare-fun tp!1081080 () Bool)

(assert (=> b!3479725 (= e!2155475 (and (inv!50436 (h!42667 (t!275322 tokens!494))) e!2155479 tp!1081080))))

(declare-fun b!3479727 () Bool)

(declare-fun tp!1081081 () Bool)

(assert (=> b!3479727 (= e!2155478 (and tp!1081081 (inv!50433 (tag!6076 (rule!8058 (h!42667 (t!275322 tokens!494))))) (inv!50437 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) e!2155476))))

(assert (= b!3479727 b!3479728))

(assert (= b!3479726 b!3479727))

(assert (= b!3479725 b!3479726))

(assert (= (and b!3478831 ((_ is Cons!37247) (t!275322 tokens!494))) b!3479725))

(declare-fun m!3896157 () Bool)

(assert (=> b!3479726 m!3896157))

(declare-fun m!3896159 () Bool)

(assert (=> b!3479725 m!3896159))

(declare-fun m!3896161 () Bool)

(assert (=> b!3479727 m!3896161))

(declare-fun m!3896163 () Bool)

(assert (=> b!3479727 m!3896163))

(declare-fun b!3479729 () Bool)

(declare-fun e!2155481 () Bool)

(declare-fun tp!1081082 () Bool)

(assert (=> b!3479729 (= e!2155481 (and tp_is_empty!17581 tp!1081082))))

(assert (=> b!3478821 (= tp!1080953 e!2155481)))

(assert (= (and b!3478821 ((_ is Cons!37245) (originalCharacters!6170 separatorToken!241))) b!3479729))

(declare-fun b!3479732 () Bool)

(declare-fun e!2155484 () Bool)

(assert (=> b!3479732 (= e!2155484 true)))

(declare-fun b!3479731 () Bool)

(declare-fun e!2155483 () Bool)

(assert (=> b!3479731 (= e!2155483 e!2155484)))

(declare-fun b!3479730 () Bool)

(declare-fun e!2155482 () Bool)

(assert (=> b!3479730 (= e!2155482 e!2155483)))

(assert (=> b!3478840 e!2155482))

(assert (= b!3479731 b!3479732))

(assert (= b!3479730 b!3479731))

(assert (= (and b!3478840 ((_ is Cons!37246) (t!275321 rules!2135))) b!3479730))

(assert (=> b!3479732 (< (dynLambda!15756 order!19921 (toValue!7692 (transformation!5456 (h!42666 (t!275321 rules!2135))))) (dynLambda!15757 order!19923 lambda!122185))))

(assert (=> b!3479732 (< (dynLambda!15758 order!19925 (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135))))) (dynLambda!15757 order!19923 lambda!122185))))

(declare-fun b_lambda!100623 () Bool)

(assert (= b_lambda!100619 (or b!3478811 b_lambda!100623)))

(declare-fun bs!561879 () Bool)

(declare-fun d!1005015 () Bool)

(assert (= bs!561879 (and d!1005015 b!3478811)))

(assert (=> bs!561879 (= (dynLambda!15764 lambda!122184 (h!42667 (t!275322 tokens!494))) (not (isSeparator!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))))))

(assert (=> d!1005009 d!1005015))

(declare-fun b_lambda!100625 () Bool)

(assert (= b_lambda!100617 (or (and b!3479687 b_free!90255 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) (and b!3478800 b_free!90243) (and b!3479728 b_free!90259 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) (and b!3478807 b_free!90239 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) (and b!3478829 b_free!90235 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) b_lambda!100625)))

(declare-fun b_lambda!100627 () Bool)

(assert (= b_lambda!100621 (or b!3478811 b_lambda!100627)))

(declare-fun bs!561880 () Bool)

(declare-fun d!1005017 () Bool)

(assert (= bs!561880 (and d!1005017 b!3478811)))

(assert (=> bs!561880 (= (dynLambda!15764 lambda!122184 (h!42667 tokens!494)) (not (isSeparator!5456 (rule!8058 (h!42667 tokens!494)))))))

(assert (=> d!1005011 d!1005017))

(declare-fun b_lambda!100629 () Bool)

(assert (= b_lambda!100569 (or (and b!3479687 b_free!90255 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) (and b!3478800 b_free!90243) (and b!3479728 b_free!90259 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) (and b!3478807 b_free!90239 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) (and b!3478829 b_free!90235 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))))) b_lambda!100629)))

(declare-fun b_lambda!100631 () Bool)

(assert (= b_lambda!100581 (or (and b!3479728 b_free!90257 (= (toValue!7692 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3479687 b_free!90253 (= (toValue!7692 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478800 b_free!90241 (= (toValue!7692 (transformation!5456 (rule!8058 separatorToken!241))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478829 b_free!90233 (= (toValue!7692 (transformation!5456 (h!42666 rules!2135))) (toValue!7692 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478807 b_free!90237) b_lambda!100631)))

(declare-fun b_lambda!100633 () Bool)

(assert (= b_lambda!100589 (or b!3478811 b_lambda!100633)))

(assert (=> b!3479418 d!1005017))

(declare-fun b_lambda!100635 () Bool)

(assert (= b_lambda!100573 (or (and b!3479728 b_free!90259 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478800 b_free!90243 (= (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478829 b_free!90235 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3479687 b_free!90255 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478807 b_free!90239) b_lambda!100635)))

(declare-fun b_lambda!100637 () Bool)

(assert (= b_lambda!100587 (or b!3478810 b_lambda!100637)))

(declare-fun bs!561881 () Bool)

(declare-fun d!1005019 () Bool)

(assert (= bs!561881 (and d!1005019 b!3478810)))

(assert (=> bs!561881 (= (dynLambda!15764 lambda!122185 (h!42667 (t!275322 tokens!494))) (rulesProduceIndividualToken!2537 thiss!18206 rules!2135 (h!42667 (t!275322 tokens!494))))))

(assert (=> bs!561881 m!3894643))

(assert (=> d!1004869 d!1005019))

(declare-fun b_lambda!100639 () Bool)

(assert (= b_lambda!100571 (or (and b!3479728 b_free!90259) (and b!3478800 b_free!90243 (= (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))))) (and b!3478829 b_free!90235 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))))) (and b!3478807 b_free!90239 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))))) (and b!3479687 b_free!90255 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))))) b_lambda!100639)))

(declare-fun b_lambda!100641 () Bool)

(assert (= b_lambda!100615 (or (and b!3479728 b_free!90259 (= (toChars!7551 (transformation!5456 (rule!8058 (h!42667 (t!275322 tokens!494))))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478800 b_free!90243 (= (toChars!7551 (transformation!5456 (rule!8058 separatorToken!241))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478829 b_free!90235 (= (toChars!7551 (transformation!5456 (h!42666 rules!2135))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3479687 b_free!90255 (= (toChars!7551 (transformation!5456 (h!42666 (t!275321 rules!2135)))) (toChars!7551 (transformation!5456 (rule!8058 (h!42667 tokens!494)))))) (and b!3478807 b_free!90239) b_lambda!100641)))

(check-sat (not d!1004753) (not d!1004763) (not d!1004901) (not b!3479009) (not tb!190723) (not d!1004841) (not b!3479664) (not b!3479644) (not b_next!90959) (not d!1005003) b_and!245517 (not b!3479671) (not b!3479070) (not d!1004767) (not b!3479685) (not d!1004843) (not b_next!90937) (not bm!250921) (not d!1004869) (not b!3479249) (not b!3479403) (not d!1004685) (not b!3479241) (not b!3479420) (not b!3478955) (not d!1004809) (not b!3478969) (not b!3479073) (not d!1004717) (not b!3479665) (not b!3479056) (not bm!250902) (not d!1004745) (not bm!250920) (not d!1004913) (not d!1005011) (not b!3479345) (not b!3479003) b_and!245473 (not b!3479667) (not b!3479709) (not b!3478996) (not d!1004747) (not bs!561881) (not d!1004697) (not b!3478988) (not b!3479342) (not d!1004969) (not b_next!90957) (not d!1004975) (not d!1004899) (not b!3479647) (not b!3479421) (not b_next!90939) (not d!1004825) (not d!1004865) (not b!3479397) (not b!3479662) b_and!245477 (not b!3479661) (not d!1004771) (not b!3479710) b_and!245505 (not b!3478953) (not b!3479708) (not b!3479628) (not b_lambda!100629) (not d!1004967) (not d!1004965) (not b!3479635) (not b!3479082) (not b_next!90963) (not b!3479645) (not d!1004979) (not b!3479051) (not d!1005005) (not b!3479712) b_and!245513 (not d!1005009) (not b!3479603) (not b!3479240) (not b!3479394) (not b!3479001) (not b!3479607) (not tb!190747) (not b!3479348) b_and!245515 (not b!3479016) (not d!1004737) (not d!1004719) (not b_next!90947) (not b!3479706) (not d!1004821) (not b!3479341) (not b!3479425) (not d!1004905) (not b!3479660) (not b!3479247) (not b_next!90961) b_and!245511 (not b_lambda!100631) (not b!3478952) (not b!3479396) (not b!3479625) (not b!3478957) (not b!3479596) (not d!1004987) (not b!3479670) (not b!3479424) (not b!3479071) (not b_lambda!100639) (not b!3479619) (not d!1004725) (not b!3479605) (not b!3479423) (not b_lambda!100641) (not b!3479686) (not b!3479008) (not b_lambda!100623) (not d!1004743) (not d!1004755) (not b!3479713) (not b!3479633) (not b!3479413) (not b!3479057) (not b!3479615) (not d!1004715) (not b!3479049) (not b!3479239) (not b!3479675) (not d!1004993) (not b!3479602) (not b!3479344) (not b!3479358) (not b!3479714) (not b!3479343) (not b_lambda!100625) (not b_lambda!100633) (not b_next!90943) (not b_lambda!100637) (not b!3478987) (not b!3479700) (not d!1004973) (not d!1004835) (not b!3479638) (not b!3478981) (not b!3478925) (not b!3479002) (not b!3479402) (not bm!250901) (not b!3479699) b_and!245475 (not b!3479668) (not d!1004999) (not b!3479175) (not b!3479176) (not bm!250888) (not b!3478961) (not b!3479673) (not b!3479643) (not tb!190717) (not bm!250923) (not b!3479248) (not b!3479419) (not b!3479727) (not b!3479242) (not b!3478941) (not d!1004871) (not b_next!90945) (not b!3479399) (not d!1004867) (not b!3479050) (not b!3479627) tp_is_empty!17581 (not b!3479398) (not bm!250931) (not d!1004989) (not d!1004721) (not b!3479027) (not d!1004897) (not b!3479053) (not b!3478977) b_and!245509 (not bm!250904) (not b!3478970) (not b!3479076) (not b_lambda!100635) (not b!3478978) (not b!3479669) (not b!3479054) (not b!3479616) (not bm!250933) (not b!3479562) (not bm!250932) (not d!1004983) (not b!3479729) (not d!1004909) (not d!1004751) (not b_lambda!100627) (not d!1004739) (not d!1004733) (not d!1004723) (not d!1004845) (not b!3479617) (not b_next!90941) (not b!3479251) (not b!3479610) (not d!1004985) b_and!245507 (not b!3478960) (not d!1004915) (not b!3478926) (not b!3479052) (not b!3479347) (not d!1004863) (not b!3479725) (not b!3478924) (not d!1004749) (not b!3479701) (not b!3479623) (not b!3479245) (not d!1004761) (not b!3478984) (not d!1004971) (not d!1004911) (not b!3478992) (not b!3479601) (not b!3478972) (not b!3479622) (not b!3479666) (not d!1004765) (not b!3479730) (not d!1004735) (not b!3478983) (not d!1005007) (not b!3478967) (not b!3479726) (not tb!190729) (not d!1004981) (not b!3479561) (not d!1004917) (not d!1004709) (not b!3479401) (not b!3479593) (not d!1004823) (not b!3479346) (not b!3479018) (not d!1004833) (not b!3479355) (not b!3478993) (not b!3479674))
(check-sat (not b_next!90937) b_and!245473 (not b_next!90963) b_and!245513 b_and!245515 (not b_next!90947) (not b_next!90943) b_and!245475 (not b_next!90945) b_and!245509 b_and!245517 (not b_next!90959) (not b_next!90939) (not b_next!90957) b_and!245477 b_and!245505 (not b_next!90961) b_and!245511 (not b_next!90941) b_and!245507)
