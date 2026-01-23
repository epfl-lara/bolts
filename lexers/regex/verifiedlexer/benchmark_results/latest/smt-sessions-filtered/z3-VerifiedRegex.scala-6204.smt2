; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299662 () Bool)

(assert start!299662)

(declare-fun b!3194775 () Bool)

(declare-fun b_free!84841 () Bool)

(declare-fun b_next!85545 () Bool)

(assert (=> b!3194775 (= b_free!84841 (not b_next!85545))))

(declare-fun tp!1010411 () Bool)

(declare-fun b_and!211983 () Bool)

(assert (=> b!3194775 (= tp!1010411 b_and!211983)))

(declare-fun b_free!84843 () Bool)

(declare-fun b_next!85547 () Bool)

(assert (=> b!3194775 (= b_free!84843 (not b_next!85547))))

(declare-fun tp!1010404 () Bool)

(declare-fun b_and!211985 () Bool)

(assert (=> b!3194775 (= tp!1010404 b_and!211985)))

(declare-fun b!3194772 () Bool)

(declare-fun b_free!84845 () Bool)

(declare-fun b_next!85549 () Bool)

(assert (=> b!3194772 (= b_free!84845 (not b_next!85549))))

(declare-fun tp!1010408 () Bool)

(declare-fun b_and!211987 () Bool)

(assert (=> b!3194772 (= tp!1010408 b_and!211987)))

(declare-fun b_free!84847 () Bool)

(declare-fun b_next!85551 () Bool)

(assert (=> b!3194772 (= b_free!84847 (not b_next!85551))))

(declare-fun tp!1010414 () Bool)

(declare-fun b_and!211989 () Bool)

(assert (=> b!3194772 (= tp!1010414 b_and!211989)))

(declare-fun b!3194770 () Bool)

(declare-fun b_free!84849 () Bool)

(declare-fun b_next!85553 () Bool)

(assert (=> b!3194770 (= b_free!84849 (not b_next!85553))))

(declare-fun tp!1010410 () Bool)

(declare-fun b_and!211991 () Bool)

(assert (=> b!3194770 (= tp!1010410 b_and!211991)))

(declare-fun b_free!84851 () Bool)

(declare-fun b_next!85555 () Bool)

(assert (=> b!3194770 (= b_free!84851 (not b_next!85555))))

(declare-fun tp!1010412 () Bool)

(declare-fun b_and!211993 () Bool)

(assert (=> b!3194770 (= tp!1010412 b_and!211993)))

(declare-fun b!3194750 () Bool)

(declare-fun res!1299824 () Bool)

(declare-fun e!1991664 () Bool)

(assert (=> b!3194750 (=> (not res!1299824) (not e!1991664))))

(declare-datatypes ((C!20080 0))(
  ( (C!20081 (val!12088 Int)) )
))
(declare-datatypes ((Regex!9947 0))(
  ( (ElementMatch!9947 (c!536188 C!20080)) (Concat!15365 (regOne!20406 Regex!9947) (regTwo!20406 Regex!9947)) (EmptyExpr!9947) (Star!9947 (reg!10276 Regex!9947)) (EmptyLang!9947) (Union!9947 (regOne!20407 Regex!9947) (regTwo!20407 Regex!9947)) )
))
(declare-datatypes ((List!36148 0))(
  ( (Nil!36024) (Cons!36024 (h!41444 (_ BitVec 16)) (t!236595 List!36148)) )
))
(declare-datatypes ((TokenValue!5418 0))(
  ( (FloatLiteralValue!10836 (text!38371 List!36148)) (TokenValueExt!5417 (__x!23053 Int)) (Broken!27090 (value!168292 List!36148)) (Object!5541) (End!5418) (Def!5418) (Underscore!5418) (Match!5418) (Else!5418) (Error!5418) (Case!5418) (If!5418) (Extends!5418) (Abstract!5418) (Class!5418) (Val!5418) (DelimiterValue!10836 (del!5478 List!36148)) (KeywordValue!5424 (value!168293 List!36148)) (CommentValue!10836 (value!168294 List!36148)) (WhitespaceValue!10836 (value!168295 List!36148)) (IndentationValue!5418 (value!168296 List!36148)) (String!40423) (Int32!5418) (Broken!27091 (value!168297 List!36148)) (Boolean!5419) (Unit!50419) (OperatorValue!5421 (op!5478 List!36148)) (IdentifierValue!10836 (value!168298 List!36148)) (IdentifierValue!10837 (value!168299 List!36148)) (WhitespaceValue!10837 (value!168300 List!36148)) (True!10836) (False!10836) (Broken!27092 (value!168301 List!36148)) (Broken!27093 (value!168302 List!36148)) (True!10837) (RightBrace!5418) (RightBracket!5418) (Colon!5418) (Null!5418) (Comma!5418) (LeftBracket!5418) (False!10837) (LeftBrace!5418) (ImaginaryLiteralValue!5418 (text!38372 List!36148)) (StringLiteralValue!16254 (value!168303 List!36148)) (EOFValue!5418 (value!168304 List!36148)) (IdentValue!5418 (value!168305 List!36148)) (DelimiterValue!10837 (value!168306 List!36148)) (DedentValue!5418 (value!168307 List!36148)) (NewLineValue!5418 (value!168308 List!36148)) (IntegerValue!16254 (value!168309 (_ BitVec 32)) (text!38373 List!36148)) (IntegerValue!16255 (value!168310 Int) (text!38374 List!36148)) (Times!5418) (Or!5418) (Equal!5418) (Minus!5418) (Broken!27094 (value!168311 List!36148)) (And!5418) (Div!5418) (LessEqual!5418) (Mod!5418) (Concat!15366) (Not!5418) (Plus!5418) (SpaceValue!5418 (value!168312 List!36148)) (IntegerValue!16256 (value!168313 Int) (text!38375 List!36148)) (StringLiteralValue!16255 (text!38376 List!36148)) (FloatLiteralValue!10837 (text!38377 List!36148)) (BytesLiteralValue!5418 (value!168314 List!36148)) (CommentValue!10837 (value!168315 List!36148)) (StringLiteralValue!16256 (value!168316 List!36148)) (ErrorTokenValue!5418 (msg!5479 List!36148)) )
))
(declare-datatypes ((List!36149 0))(
  ( (Nil!36025) (Cons!36025 (h!41445 C!20080) (t!236596 List!36149)) )
))
(declare-datatypes ((IArray!21507 0))(
  ( (IArray!21508 (innerList!10811 List!36149)) )
))
(declare-datatypes ((Conc!10751 0))(
  ( (Node!10751 (left!27995 Conc!10751) (right!28325 Conc!10751) (csize!21732 Int) (cheight!10962 Int)) (Leaf!16956 (xs!13869 IArray!21507) (csize!21733 Int)) (Empty!10751) )
))
(declare-datatypes ((BalanceConc!21116 0))(
  ( (BalanceConc!21117 (c!536189 Conc!10751)) )
))
(declare-datatypes ((String!40424 0))(
  ( (String!40425 (value!168317 String)) )
))
(declare-datatypes ((TokenValueInjection!10264 0))(
  ( (TokenValueInjection!10265 (toValue!7256 Int) (toChars!7115 Int)) )
))
(declare-datatypes ((Rule!10176 0))(
  ( (Rule!10177 (regex!5188 Regex!9947) (tag!5706 String!40424) (isSeparator!5188 Bool) (transformation!5188 TokenValueInjection!10264)) )
))
(declare-datatypes ((List!36150 0))(
  ( (Nil!36026) (Cons!36026 (h!41446 Rule!10176) (t!236597 List!36150)) )
))
(declare-fun rules!2135 () List!36150)

(declare-fun isEmpty!20108 (List!36150) Bool)

(assert (=> b!3194750 (= res!1299824 (not (isEmpty!20108 rules!2135)))))

(declare-fun b!3194751 () Bool)

(declare-fun res!1299822 () Bool)

(assert (=> b!3194751 (=> (not res!1299822) (not e!1991664))))

(declare-fun sepAndNonSepRulesDisjointChars!1382 (List!36150 List!36150) Bool)

(assert (=> b!3194751 (= res!1299822 (sepAndNonSepRulesDisjointChars!1382 rules!2135 rules!2135))))

(declare-fun b!3194752 () Bool)

(declare-fun res!1299826 () Bool)

(assert (=> b!3194752 (=> (not res!1299826) (not e!1991664))))

(declare-datatypes ((LexerInterface!4777 0))(
  ( (LexerInterfaceExt!4774 (__x!23054 Int)) (Lexer!4775) )
))
(declare-fun thiss!18206 () LexerInterface!4777)

(declare-fun rulesInvariant!4174 (LexerInterface!4777 List!36150) Bool)

(assert (=> b!3194752 (= res!1299826 (rulesInvariant!4174 thiss!18206 rules!2135))))

(declare-fun b!3194753 () Bool)

(declare-fun e!1991654 () Bool)

(declare-fun e!1991661 () Bool)

(assert (=> b!3194753 (= e!1991654 e!1991661)))

(declare-fun res!1299825 () Bool)

(assert (=> b!3194753 (=> res!1299825 e!1991661)))

(declare-fun lt!1076448 () List!36149)

(declare-datatypes ((Token!9742 0))(
  ( (Token!9743 (value!168318 TokenValue!5418) (rule!7620 Rule!10176) (size!27126 Int) (originalCharacters!5902 List!36149)) )
))
(declare-datatypes ((List!36151 0))(
  ( (Nil!36027) (Cons!36027 (h!41447 Token!9742) (t!236598 List!36151)) )
))
(declare-fun tokens!494 () List!36151)

(declare-fun lt!1076446 () List!36149)

(declare-fun separatorToken!241 () Token!9742)

(declare-fun ++!8620 (List!36149 List!36149) List!36149)

(declare-fun list!12797 (BalanceConc!21116) List!36149)

(declare-fun charsOf!3204 (Token!9742) BalanceConc!21116)

(declare-fun printWithSeparatorTokenList!122 (LexerInterface!4777 List!36151 Token!9742) List!36149)

(assert (=> b!3194753 (= res!1299825 (not (= lt!1076448 (++!8620 (++!8620 (list!12797 (charsOf!3204 (h!41447 (t!236598 tokens!494)))) lt!1076446) (printWithSeparatorTokenList!122 thiss!18206 (t!236598 (t!236598 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1076437 () List!36149)

(assert (=> b!3194753 (= lt!1076437 (++!8620 lt!1076446 lt!1076448))))

(assert (=> b!3194753 (= lt!1076446 (list!12797 (charsOf!3204 separatorToken!241)))))

(assert (=> b!3194753 (= lt!1076448 (printWithSeparatorTokenList!122 thiss!18206 (t!236598 tokens!494) separatorToken!241))))

(declare-fun lt!1076436 () List!36149)

(assert (=> b!3194753 (= lt!1076436 (printWithSeparatorTokenList!122 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3194754 () Bool)

(declare-fun e!1991669 () Bool)

(declare-fun e!1991650 () Bool)

(assert (=> b!3194754 (= e!1991669 e!1991650)))

(declare-fun res!1299810 () Bool)

(assert (=> b!3194754 (=> res!1299810 e!1991650)))

(declare-fun lt!1076443 () List!36149)

(declare-fun lt!1076439 () List!36149)

(declare-fun lt!1076442 () List!36149)

(assert (=> b!3194754 (= res!1299810 (or (not (= lt!1076442 lt!1076439)) (not (= lt!1076443 lt!1076439))))))

(assert (=> b!3194754 (= lt!1076439 (list!12797 (charsOf!3204 (h!41447 tokens!494))))))

(declare-fun b!3194755 () Bool)

(declare-fun res!1299813 () Bool)

(assert (=> b!3194755 (=> (not res!1299813) (not e!1991664))))

(declare-fun lambda!116975 () Int)

(declare-fun forall!7328 (List!36151 Int) Bool)

(assert (=> b!3194755 (= res!1299813 (forall!7328 tokens!494 lambda!116975))))

(declare-fun e!1991648 () Bool)

(declare-fun tp!1010413 () Bool)

(declare-fun e!1991651 () Bool)

(declare-fun b!3194756 () Bool)

(declare-fun inv!48869 (Token!9742) Bool)

(assert (=> b!3194756 (= e!1991651 (and (inv!48869 (h!41447 tokens!494)) e!1991648 tp!1010413))))

(declare-fun b!3194757 () Bool)

(declare-fun e!1991660 () Bool)

(assert (=> b!3194757 (= e!1991650 e!1991660)))

(declare-fun res!1299823 () Bool)

(assert (=> b!3194757 (=> res!1299823 e!1991660)))

(declare-fun lt!1076440 () BalanceConc!21116)

(declare-datatypes ((IArray!21509 0))(
  ( (IArray!21510 (innerList!10812 List!36151)) )
))
(declare-datatypes ((Conc!10752 0))(
  ( (Node!10752 (left!27996 Conc!10752) (right!28326 Conc!10752) (csize!21734 Int) (cheight!10963 Int)) (Leaf!16957 (xs!13870 IArray!21509) (csize!21735 Int)) (Empty!10752) )
))
(declare-datatypes ((BalanceConc!21118 0))(
  ( (BalanceConc!21119 (c!536190 Conc!10752)) )
))
(declare-fun isEmpty!20109 (BalanceConc!21118) Bool)

(declare-datatypes ((tuple2!35382 0))(
  ( (tuple2!35383 (_1!20825 BalanceConc!21118) (_2!20825 BalanceConc!21116)) )
))
(declare-fun lex!2107 (LexerInterface!4777 List!36150 BalanceConc!21116) tuple2!35382)

(assert (=> b!3194757 (= res!1299823 (isEmpty!20109 (_1!20825 (lex!2107 thiss!18206 rules!2135 lt!1076440))))))

(declare-fun seqFromList!3447 (List!36149) BalanceConc!21116)

(assert (=> b!3194757 (= lt!1076440 (seqFromList!3447 lt!1076439))))

(declare-fun b!3194758 () Bool)

(declare-fun e!1991653 () Bool)

(assert (=> b!3194758 (= e!1991653 true)))

(declare-datatypes ((tuple2!35384 0))(
  ( (tuple2!35385 (_1!20826 Token!9742) (_2!20826 List!36149)) )
))
(declare-datatypes ((Option!7067 0))(
  ( (None!7066) (Some!7066 (v!35578 tuple2!35384)) )
))
(declare-fun lt!1076449 () Option!7067)

(declare-fun maxPrefix!2435 (LexerInterface!4777 List!36150 List!36149) Option!7067)

(assert (=> b!3194758 (= lt!1076449 (maxPrefix!2435 thiss!18206 rules!2135 lt!1076446))))

(declare-fun maxPrefixOneRule!1556 (LexerInterface!4777 Rule!10176 List!36149) Option!7067)

(declare-fun apply!8112 (TokenValueInjection!10264 BalanceConc!21116) TokenValue!5418)

(declare-fun size!27127 (List!36149) Int)

(assert (=> b!3194758 (= (maxPrefixOneRule!1556 thiss!18206 (rule!7620 (h!41447 tokens!494)) lt!1076439) (Some!7066 (tuple2!35385 (Token!9743 (apply!8112 (transformation!5188 (rule!7620 (h!41447 tokens!494))) lt!1076440) (rule!7620 (h!41447 tokens!494)) (size!27127 lt!1076439) lt!1076439) Nil!36025)))))

(declare-datatypes ((Unit!50420 0))(
  ( (Unit!50421) )
))
(declare-fun lt!1076447 () Unit!50420)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!669 (LexerInterface!4777 List!36150 List!36149 List!36149 List!36149 Rule!10176) Unit!50420)

(assert (=> b!3194758 (= lt!1076447 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!669 thiss!18206 rules!2135 lt!1076439 lt!1076439 Nil!36025 (rule!7620 (h!41447 tokens!494))))))

(declare-fun e!1991662 () Bool)

(assert (=> b!3194758 e!1991662))

(declare-fun res!1299817 () Bool)

(assert (=> b!3194758 (=> (not res!1299817) (not e!1991662))))

(declare-datatypes ((Option!7068 0))(
  ( (None!7067) (Some!7067 (v!35579 Rule!10176)) )
))
(declare-fun lt!1076441 () Option!7068)

(declare-fun isDefined!5516 (Option!7068) Bool)

(assert (=> b!3194758 (= res!1299817 (isDefined!5516 lt!1076441))))

(declare-fun getRuleFromTag!893 (LexerInterface!4777 List!36150 String!40424) Option!7068)

(assert (=> b!3194758 (= lt!1076441 (getRuleFromTag!893 thiss!18206 rules!2135 (tag!5706 (rule!7620 (h!41447 tokens!494)))))))

(declare-fun lt!1076450 () Unit!50420)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!893 (LexerInterface!4777 List!36150 List!36149 Token!9742) Unit!50420)

(assert (=> b!3194758 (= lt!1076450 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!893 thiss!18206 rules!2135 lt!1076439 (h!41447 tokens!494)))))

(declare-fun lt!1076431 () Unit!50420)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!816 (LexerInterface!4777 List!36150 List!36151 Token!9742) Unit!50420)

(assert (=> b!3194758 (= lt!1076431 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!816 thiss!18206 rules!2135 tokens!494 (h!41447 tokens!494)))))

(declare-fun e!1991646 () Bool)

(declare-fun e!1991666 () Bool)

(declare-fun tp!1010415 () Bool)

(declare-fun b!3194759 () Bool)

(declare-fun inv!48866 (String!40424) Bool)

(declare-fun inv!48870 (TokenValueInjection!10264) Bool)

(assert (=> b!3194759 (= e!1991646 (and tp!1010415 (inv!48866 (tag!5706 (rule!7620 separatorToken!241))) (inv!48870 (transformation!5188 (rule!7620 separatorToken!241))) e!1991666))))

(declare-fun b!3194760 () Bool)

(declare-fun res!1299818 () Bool)

(assert (=> b!3194760 (=> (not res!1299818) (not e!1991664))))

(get-info :version)

(assert (=> b!3194760 (= res!1299818 (and (not ((_ is Nil!36027) tokens!494)) (not ((_ is Nil!36027) (t!236598 tokens!494)))))))

(declare-fun b!3194761 () Bool)

(declare-fun e!1991657 () Bool)

(declare-fun lt!1076434 () Rule!10176)

(assert (=> b!3194761 (= e!1991657 (= (rule!7620 (h!41447 tokens!494)) lt!1076434))))

(declare-fun b!3194762 () Bool)

(assert (=> b!3194762 (= e!1991662 e!1991657)))

(declare-fun res!1299816 () Bool)

(assert (=> b!3194762 (=> (not res!1299816) (not e!1991657))))

(declare-fun matchR!4581 (Regex!9947 List!36149) Bool)

(assert (=> b!3194762 (= res!1299816 (matchR!4581 (regex!5188 lt!1076434) lt!1076439))))

(declare-fun get!11455 (Option!7068) Rule!10176)

(assert (=> b!3194762 (= lt!1076434 (get!11455 lt!1076441))))

(declare-fun b!3194763 () Bool)

(declare-fun res!1299814 () Bool)

(assert (=> b!3194763 (=> (not res!1299814) (not e!1991664))))

(declare-fun rulesProduceEachTokenIndividually!1228 (LexerInterface!4777 List!36150 BalanceConc!21118) Bool)

(declare-fun seqFromList!3448 (List!36151) BalanceConc!21118)

(assert (=> b!3194763 (= res!1299814 (rulesProduceEachTokenIndividually!1228 thiss!18206 rules!2135 (seqFromList!3448 tokens!494)))))

(declare-fun b!3194764 () Bool)

(declare-fun res!1299815 () Bool)

(assert (=> b!3194764 (=> (not res!1299815) (not e!1991664))))

(assert (=> b!3194764 (= res!1299815 (isSeparator!5188 (rule!7620 separatorToken!241)))))

(declare-fun b!3194765 () Bool)

(declare-fun e!1991668 () Bool)

(declare-fun e!1991658 () Bool)

(declare-fun tp!1010409 () Bool)

(assert (=> b!3194765 (= e!1991668 (and e!1991658 tp!1010409))))

(declare-fun res!1299821 () Bool)

(assert (=> start!299662 (=> (not res!1299821) (not e!1991664))))

(assert (=> start!299662 (= res!1299821 ((_ is Lexer!4775) thiss!18206))))

(assert (=> start!299662 e!1991664))

(assert (=> start!299662 true))

(assert (=> start!299662 e!1991668))

(assert (=> start!299662 e!1991651))

(declare-fun e!1991649 () Bool)

(assert (=> start!299662 (and (inv!48869 separatorToken!241) e!1991649)))

(declare-fun b!3194766 () Bool)

(assert (=> b!3194766 (= e!1991664 (not e!1991669))))

(declare-fun res!1299820 () Bool)

(assert (=> b!3194766 (=> res!1299820 e!1991669)))

(assert (=> b!3194766 (= res!1299820 (not (= lt!1076443 lt!1076442)))))

(declare-fun printList!1327 (LexerInterface!4777 List!36151) List!36149)

(assert (=> b!3194766 (= lt!1076442 (printList!1327 thiss!18206 (Cons!36027 (h!41447 tokens!494) Nil!36027)))))

(declare-fun lt!1076433 () BalanceConc!21116)

(assert (=> b!3194766 (= lt!1076443 (list!12797 lt!1076433))))

(declare-fun lt!1076432 () BalanceConc!21118)

(declare-fun printTailRec!1274 (LexerInterface!4777 BalanceConc!21118 Int BalanceConc!21116) BalanceConc!21116)

(assert (=> b!3194766 (= lt!1076433 (printTailRec!1274 thiss!18206 lt!1076432 0 (BalanceConc!21117 Empty!10751)))))

(declare-fun print!1842 (LexerInterface!4777 BalanceConc!21118) BalanceConc!21116)

(assert (=> b!3194766 (= lt!1076433 (print!1842 thiss!18206 lt!1076432))))

(declare-fun singletonSeq!2284 (Token!9742) BalanceConc!21118)

(assert (=> b!3194766 (= lt!1076432 (singletonSeq!2284 (h!41447 tokens!494)))))

(declare-fun b!3194767 () Bool)

(declare-fun e!1991659 () Bool)

(assert (=> b!3194767 (= e!1991659 e!1991653)))

(declare-fun res!1299809 () Bool)

(assert (=> b!3194767 (=> res!1299809 e!1991653)))

(declare-fun lt!1076444 () List!36149)

(assert (=> b!3194767 (= res!1299809 (not (= lt!1076436 lt!1076444)))))

(declare-fun lt!1076435 () List!36149)

(assert (=> b!3194767 (= lt!1076435 lt!1076444)))

(assert (=> b!3194767 (= lt!1076444 (++!8620 lt!1076439 lt!1076437))))

(declare-fun lt!1076445 () Unit!50420)

(declare-fun lemmaConcatAssociativity!1702 (List!36149 List!36149 List!36149) Unit!50420)

(assert (=> b!3194767 (= lt!1076445 (lemmaConcatAssociativity!1702 lt!1076439 lt!1076446 lt!1076448))))

(declare-fun e!1991652 () Bool)

(declare-fun b!3194768 () Bool)

(declare-fun tp!1010405 () Bool)

(declare-fun inv!21 (TokenValue!5418) Bool)

(assert (=> b!3194768 (= e!1991648 (and (inv!21 (value!168318 (h!41447 tokens!494))) e!1991652 tp!1010405))))

(declare-fun b!3194769 () Bool)

(assert (=> b!3194769 (= e!1991661 e!1991659)))

(declare-fun res!1299812 () Bool)

(assert (=> b!3194769 (=> res!1299812 e!1991659)))

(assert (=> b!3194769 (= res!1299812 (not (= lt!1076436 lt!1076435)))))

(assert (=> b!3194769 (= lt!1076435 (++!8620 (++!8620 lt!1076439 lt!1076446) lt!1076448))))

(assert (=> b!3194770 (= e!1991666 (and tp!1010410 tp!1010412))))

(declare-fun b!3194771 () Bool)

(declare-fun tp!1010406 () Bool)

(assert (=> b!3194771 (= e!1991649 (and (inv!21 (value!168318 separatorToken!241)) e!1991646 tp!1010406))))

(declare-fun e!1991667 () Bool)

(assert (=> b!3194772 (= e!1991667 (and tp!1010408 tp!1010414))))

(declare-fun b!3194773 () Bool)

(assert (=> b!3194773 (= e!1991660 e!1991654)))

(declare-fun res!1299811 () Bool)

(assert (=> b!3194773 (=> res!1299811 e!1991654)))

(assert (=> b!3194773 (= res!1299811 (or (isSeparator!5188 (rule!7620 (h!41447 tokens!494))) (isSeparator!5188 (rule!7620 (h!41447 (t!236598 tokens!494))))))))

(declare-fun lt!1076438 () Unit!50420)

(declare-fun forallContained!1159 (List!36151 Int Token!9742) Unit!50420)

(assert (=> b!3194773 (= lt!1076438 (forallContained!1159 tokens!494 lambda!116975 (h!41447 (t!236598 tokens!494))))))

(declare-fun lt!1076430 () Unit!50420)

(assert (=> b!3194773 (= lt!1076430 (forallContained!1159 tokens!494 lambda!116975 (h!41447 tokens!494)))))

(declare-fun b!3194774 () Bool)

(declare-fun res!1299808 () Bool)

(assert (=> b!3194774 (=> res!1299808 e!1991650)))

(declare-fun rulesProduceIndividualToken!2269 (LexerInterface!4777 List!36150 Token!9742) Bool)

(assert (=> b!3194774 (= res!1299808 (not (rulesProduceIndividualToken!2269 thiss!18206 rules!2135 (h!41447 tokens!494))))))

(declare-fun e!1991656 () Bool)

(assert (=> b!3194775 (= e!1991656 (and tp!1010411 tp!1010404))))

(declare-fun b!3194776 () Bool)

(declare-fun res!1299819 () Bool)

(assert (=> b!3194776 (=> (not res!1299819) (not e!1991664))))

(assert (=> b!3194776 (= res!1299819 (rulesProduceIndividualToken!2269 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1010407 () Bool)

(declare-fun b!3194777 () Bool)

(assert (=> b!3194777 (= e!1991658 (and tp!1010407 (inv!48866 (tag!5706 (h!41446 rules!2135))) (inv!48870 (transformation!5188 (h!41446 rules!2135))) e!1991667))))

(declare-fun b!3194778 () Bool)

(declare-fun tp!1010416 () Bool)

(assert (=> b!3194778 (= e!1991652 (and tp!1010416 (inv!48866 (tag!5706 (rule!7620 (h!41447 tokens!494)))) (inv!48870 (transformation!5188 (rule!7620 (h!41447 tokens!494)))) e!1991656))))

(assert (= (and start!299662 res!1299821) b!3194750))

(assert (= (and b!3194750 res!1299824) b!3194752))

(assert (= (and b!3194752 res!1299826) b!3194763))

(assert (= (and b!3194763 res!1299814) b!3194776))

(assert (= (and b!3194776 res!1299819) b!3194764))

(assert (= (and b!3194764 res!1299815) b!3194755))

(assert (= (and b!3194755 res!1299813) b!3194751))

(assert (= (and b!3194751 res!1299822) b!3194760))

(assert (= (and b!3194760 res!1299818) b!3194766))

(assert (= (and b!3194766 (not res!1299820)) b!3194754))

(assert (= (and b!3194754 (not res!1299810)) b!3194774))

(assert (= (and b!3194774 (not res!1299808)) b!3194757))

(assert (= (and b!3194757 (not res!1299823)) b!3194773))

(assert (= (and b!3194773 (not res!1299811)) b!3194753))

(assert (= (and b!3194753 (not res!1299825)) b!3194769))

(assert (= (and b!3194769 (not res!1299812)) b!3194767))

(assert (= (and b!3194767 (not res!1299809)) b!3194758))

(assert (= (and b!3194758 res!1299817) b!3194762))

(assert (= (and b!3194762 res!1299816) b!3194761))

(assert (= b!3194777 b!3194772))

(assert (= b!3194765 b!3194777))

(assert (= (and start!299662 ((_ is Cons!36026) rules!2135)) b!3194765))

(assert (= b!3194778 b!3194775))

(assert (= b!3194768 b!3194778))

(assert (= b!3194756 b!3194768))

(assert (= (and start!299662 ((_ is Cons!36027) tokens!494)) b!3194756))

(assert (= b!3194759 b!3194770))

(assert (= b!3194771 b!3194759))

(assert (= start!299662 b!3194771))

(declare-fun m!3454573 () Bool)

(assert (=> b!3194774 m!3454573))

(declare-fun m!3454575 () Bool)

(assert (=> b!3194769 m!3454575))

(assert (=> b!3194769 m!3454575))

(declare-fun m!3454577 () Bool)

(assert (=> b!3194769 m!3454577))

(declare-fun m!3454579 () Bool)

(assert (=> b!3194763 m!3454579))

(assert (=> b!3194763 m!3454579))

(declare-fun m!3454581 () Bool)

(assert (=> b!3194763 m!3454581))

(declare-fun m!3454583 () Bool)

(assert (=> b!3194773 m!3454583))

(declare-fun m!3454585 () Bool)

(assert (=> b!3194773 m!3454585))

(declare-fun m!3454587 () Bool)

(assert (=> b!3194753 m!3454587))

(declare-fun m!3454589 () Bool)

(assert (=> b!3194753 m!3454589))

(declare-fun m!3454591 () Bool)

(assert (=> b!3194753 m!3454591))

(declare-fun m!3454593 () Bool)

(assert (=> b!3194753 m!3454593))

(assert (=> b!3194753 m!3454587))

(declare-fun m!3454595 () Bool)

(assert (=> b!3194753 m!3454595))

(declare-fun m!3454597 () Bool)

(assert (=> b!3194753 m!3454597))

(declare-fun m!3454599 () Bool)

(assert (=> b!3194753 m!3454599))

(assert (=> b!3194753 m!3454595))

(declare-fun m!3454601 () Bool)

(assert (=> b!3194753 m!3454601))

(assert (=> b!3194753 m!3454589))

(declare-fun m!3454603 () Bool)

(assert (=> b!3194753 m!3454603))

(assert (=> b!3194753 m!3454601))

(assert (=> b!3194753 m!3454599))

(declare-fun m!3454605 () Bool)

(assert (=> b!3194753 m!3454605))

(declare-fun m!3454607 () Bool)

(assert (=> b!3194757 m!3454607))

(declare-fun m!3454609 () Bool)

(assert (=> b!3194757 m!3454609))

(declare-fun m!3454611 () Bool)

(assert (=> b!3194757 m!3454611))

(declare-fun m!3454613 () Bool)

(assert (=> b!3194766 m!3454613))

(declare-fun m!3454615 () Bool)

(assert (=> b!3194766 m!3454615))

(declare-fun m!3454617 () Bool)

(assert (=> b!3194766 m!3454617))

(declare-fun m!3454619 () Bool)

(assert (=> b!3194766 m!3454619))

(declare-fun m!3454621 () Bool)

(assert (=> b!3194766 m!3454621))

(declare-fun m!3454623 () Bool)

(assert (=> b!3194771 m!3454623))

(declare-fun m!3454625 () Bool)

(assert (=> b!3194752 m!3454625))

(declare-fun m!3454627 () Bool)

(assert (=> b!3194758 m!3454627))

(declare-fun m!3454629 () Bool)

(assert (=> b!3194758 m!3454629))

(declare-fun m!3454631 () Bool)

(assert (=> b!3194758 m!3454631))

(declare-fun m!3454633 () Bool)

(assert (=> b!3194758 m!3454633))

(declare-fun m!3454635 () Bool)

(assert (=> b!3194758 m!3454635))

(declare-fun m!3454637 () Bool)

(assert (=> b!3194758 m!3454637))

(declare-fun m!3454639 () Bool)

(assert (=> b!3194758 m!3454639))

(declare-fun m!3454641 () Bool)

(assert (=> b!3194758 m!3454641))

(declare-fun m!3454643 () Bool)

(assert (=> b!3194758 m!3454643))

(declare-fun m!3454645 () Bool)

(assert (=> b!3194768 m!3454645))

(declare-fun m!3454647 () Bool)

(assert (=> b!3194776 m!3454647))

(declare-fun m!3454649 () Bool)

(assert (=> b!3194778 m!3454649))

(declare-fun m!3454651 () Bool)

(assert (=> b!3194778 m!3454651))

(declare-fun m!3454653 () Bool)

(assert (=> b!3194777 m!3454653))

(declare-fun m!3454655 () Bool)

(assert (=> b!3194777 m!3454655))

(declare-fun m!3454657 () Bool)

(assert (=> b!3194754 m!3454657))

(assert (=> b!3194754 m!3454657))

(declare-fun m!3454659 () Bool)

(assert (=> b!3194754 m!3454659))

(declare-fun m!3454661 () Bool)

(assert (=> start!299662 m!3454661))

(declare-fun m!3454663 () Bool)

(assert (=> b!3194767 m!3454663))

(declare-fun m!3454665 () Bool)

(assert (=> b!3194767 m!3454665))

(declare-fun m!3454667 () Bool)

(assert (=> b!3194750 m!3454667))

(declare-fun m!3454669 () Bool)

(assert (=> b!3194759 m!3454669))

(declare-fun m!3454671 () Bool)

(assert (=> b!3194759 m!3454671))

(declare-fun m!3454673 () Bool)

(assert (=> b!3194762 m!3454673))

(declare-fun m!3454675 () Bool)

(assert (=> b!3194762 m!3454675))

(declare-fun m!3454677 () Bool)

(assert (=> b!3194756 m!3454677))

(declare-fun m!3454679 () Bool)

(assert (=> b!3194751 m!3454679))

(declare-fun m!3454681 () Bool)

(assert (=> b!3194755 m!3454681))

(check-sat (not b_next!85553) (not b!3194759) (not b!3194774) b_and!211987 (not b!3194754) (not b!3194768) (not b_next!85549) (not b!3194758) (not b!3194762) (not b!3194753) (not b!3194757) (not b!3194778) (not b!3194767) (not b_next!85555) (not b!3194765) (not b!3194756) (not b!3194750) (not b!3194755) (not b!3194766) (not b!3194776) b_and!211985 (not b!3194773) (not b_next!85551) (not b!3194763) (not b_next!85547) (not start!299662) b_and!211989 b_and!211983 (not b!3194751) (not b!3194771) (not b!3194777) (not b_next!85545) b_and!211993 (not b!3194752) (not b!3194769) b_and!211991)
(check-sat (not b_next!85553) (not b_next!85555) b_and!211987 b_and!211985 (not b_next!85551) (not b_next!85549) b_and!211983 (not b_next!85545) b_and!211993 b_and!211991 (not b_next!85547) b_and!211989)
