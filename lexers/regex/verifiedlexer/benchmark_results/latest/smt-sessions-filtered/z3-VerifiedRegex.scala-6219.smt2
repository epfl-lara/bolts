; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301274 () Bool)

(assert start!301274)

(declare-fun b!3208336 () Bool)

(declare-fun b_free!85329 () Bool)

(declare-fun b_next!86033 () Bool)

(assert (=> b!3208336 (= b_free!85329 (not b_next!86033))))

(declare-fun tp!1013013 () Bool)

(declare-fun b_and!213639 () Bool)

(assert (=> b!3208336 (= tp!1013013 b_and!213639)))

(declare-fun b_free!85331 () Bool)

(declare-fun b_next!86035 () Bool)

(assert (=> b!3208336 (= b_free!85331 (not b_next!86035))))

(declare-fun tp!1013011 () Bool)

(declare-fun b_and!213641 () Bool)

(assert (=> b!3208336 (= tp!1013011 b_and!213641)))

(declare-fun b!3208319 () Bool)

(declare-fun b_free!85333 () Bool)

(declare-fun b_next!86037 () Bool)

(assert (=> b!3208319 (= b_free!85333 (not b_next!86037))))

(declare-fun tp!1013016 () Bool)

(declare-fun b_and!213643 () Bool)

(assert (=> b!3208319 (= tp!1013016 b_and!213643)))

(declare-fun b_free!85335 () Bool)

(declare-fun b_next!86039 () Bool)

(assert (=> b!3208319 (= b_free!85335 (not b_next!86039))))

(declare-fun tp!1013007 () Bool)

(declare-fun b_and!213645 () Bool)

(assert (=> b!3208319 (= tp!1013007 b_and!213645)))

(declare-fun b!3208318 () Bool)

(declare-fun b_free!85337 () Bool)

(declare-fun b_next!86041 () Bool)

(assert (=> b!3208318 (= b_free!85337 (not b_next!86041))))

(declare-fun tp!1013015 () Bool)

(declare-fun b_and!213647 () Bool)

(assert (=> b!3208318 (= tp!1013015 b_and!213647)))

(declare-fun b_free!85339 () Bool)

(declare-fun b_next!86043 () Bool)

(assert (=> b!3208318 (= b_free!85339 (not b_next!86043))))

(declare-fun tp!1013010 () Bool)

(declare-fun b_and!213649 () Bool)

(assert (=> b!3208318 (= tp!1013010 b_and!213649)))

(declare-fun bs!541509 () Bool)

(declare-fun b!3208328 () Bool)

(declare-fun b!3208332 () Bool)

(assert (= bs!541509 (and b!3208328 b!3208332)))

(declare-fun lambda!117419 () Int)

(declare-fun lambda!117418 () Int)

(assert (=> bs!541509 (not (= lambda!117419 lambda!117418))))

(declare-fun b!3208358 () Bool)

(declare-fun e!2000468 () Bool)

(assert (=> b!3208358 (= e!2000468 true)))

(declare-fun b!3208357 () Bool)

(declare-fun e!2000467 () Bool)

(assert (=> b!3208357 (= e!2000467 e!2000468)))

(declare-fun b!3208356 () Bool)

(declare-fun e!2000466 () Bool)

(assert (=> b!3208356 (= e!2000466 e!2000467)))

(assert (=> b!3208328 e!2000466))

(assert (= b!3208357 b!3208358))

(assert (= b!3208356 b!3208357))

(declare-datatypes ((C!20140 0))(
  ( (C!20141 (val!12118 Int)) )
))
(declare-datatypes ((Regex!9977 0))(
  ( (ElementMatch!9977 (c!538888 C!20140)) (Concat!15425 (regOne!20466 Regex!9977) (regTwo!20466 Regex!9977)) (EmptyExpr!9977) (Star!9977 (reg!10306 Regex!9977)) (EmptyLang!9977) (Union!9977 (regOne!20467 Regex!9977) (regTwo!20467 Regex!9977)) )
))
(declare-datatypes ((List!36276 0))(
  ( (Nil!36152) (Cons!36152 (h!41572 (_ BitVec 16)) (t!238451 List!36276)) )
))
(declare-datatypes ((TokenValue!5448 0))(
  ( (FloatLiteralValue!10896 (text!38581 List!36276)) (TokenValueExt!5447 (__x!23113 Int)) (Broken!27240 (value!169147 List!36276)) (Object!5571) (End!5448) (Def!5448) (Underscore!5448) (Match!5448) (Else!5448) (Error!5448) (Case!5448) (If!5448) (Extends!5448) (Abstract!5448) (Class!5448) (Val!5448) (DelimiterValue!10896 (del!5508 List!36276)) (KeywordValue!5454 (value!169148 List!36276)) (CommentValue!10896 (value!169149 List!36276)) (WhitespaceValue!10896 (value!169150 List!36276)) (IndentationValue!5448 (value!169151 List!36276)) (String!40573) (Int32!5448) (Broken!27241 (value!169152 List!36276)) (Boolean!5449) (Unit!50611) (OperatorValue!5451 (op!5508 List!36276)) (IdentifierValue!10896 (value!169153 List!36276)) (IdentifierValue!10897 (value!169154 List!36276)) (WhitespaceValue!10897 (value!169155 List!36276)) (True!10896) (False!10896) (Broken!27242 (value!169156 List!36276)) (Broken!27243 (value!169157 List!36276)) (True!10897) (RightBrace!5448) (RightBracket!5448) (Colon!5448) (Null!5448) (Comma!5448) (LeftBracket!5448) (False!10897) (LeftBrace!5448) (ImaginaryLiteralValue!5448 (text!38582 List!36276)) (StringLiteralValue!16344 (value!169158 List!36276)) (EOFValue!5448 (value!169159 List!36276)) (IdentValue!5448 (value!169160 List!36276)) (DelimiterValue!10897 (value!169161 List!36276)) (DedentValue!5448 (value!169162 List!36276)) (NewLineValue!5448 (value!169163 List!36276)) (IntegerValue!16344 (value!169164 (_ BitVec 32)) (text!38583 List!36276)) (IntegerValue!16345 (value!169165 Int) (text!38584 List!36276)) (Times!5448) (Or!5448) (Equal!5448) (Minus!5448) (Broken!27244 (value!169166 List!36276)) (And!5448) (Div!5448) (LessEqual!5448) (Mod!5448) (Concat!15426) (Not!5448) (Plus!5448) (SpaceValue!5448 (value!169167 List!36276)) (IntegerValue!16346 (value!169168 Int) (text!38585 List!36276)) (StringLiteralValue!16345 (text!38586 List!36276)) (FloatLiteralValue!10897 (text!38587 List!36276)) (BytesLiteralValue!5448 (value!169169 List!36276)) (CommentValue!10897 (value!169170 List!36276)) (StringLiteralValue!16346 (value!169171 List!36276)) (ErrorTokenValue!5448 (msg!5509 List!36276)) )
))
(declare-datatypes ((List!36277 0))(
  ( (Nil!36153) (Cons!36153 (h!41573 C!20140) (t!238452 List!36277)) )
))
(declare-datatypes ((IArray!21627 0))(
  ( (IArray!21628 (innerList!10871 List!36277)) )
))
(declare-datatypes ((Conc!10811 0))(
  ( (Node!10811 (left!28106 Conc!10811) (right!28436 Conc!10811) (csize!21852 Int) (cheight!11022 Int)) (Leaf!17031 (xs!13929 IArray!21627) (csize!21853 Int)) (Empty!10811) )
))
(declare-datatypes ((BalanceConc!21236 0))(
  ( (BalanceConc!21237 (c!538889 Conc!10811)) )
))
(declare-datatypes ((String!40574 0))(
  ( (String!40575 (value!169172 String)) )
))
(declare-datatypes ((TokenValueInjection!10324 0))(
  ( (TokenValueInjection!10325 (toValue!7302 Int) (toChars!7161 Int)) )
))
(declare-datatypes ((Rule!10236 0))(
  ( (Rule!10237 (regex!5218 Regex!9977) (tag!5744 String!40574) (isSeparator!5218 Bool) (transformation!5218 TokenValueInjection!10324)) )
))
(declare-datatypes ((List!36278 0))(
  ( (Nil!36154) (Cons!36154 (h!41574 Rule!10236) (t!238453 List!36278)) )
))
(declare-fun rules!2135 () List!36278)

(get-info :version)

(assert (= (and b!3208328 ((_ is Cons!36154) rules!2135)) b!3208356))

(declare-fun order!18439 () Int)

(declare-fun order!18437 () Int)

(declare-fun dynLambda!14589 (Int Int) Int)

(declare-fun dynLambda!14590 (Int Int) Int)

(assert (=> b!3208358 (< (dynLambda!14589 order!18437 (toValue!7302 (transformation!5218 (h!41574 rules!2135)))) (dynLambda!14590 order!18439 lambda!117419))))

(declare-fun order!18441 () Int)

(declare-fun dynLambda!14591 (Int Int) Int)

(assert (=> b!3208358 (< (dynLambda!14591 order!18441 (toChars!7161 (transformation!5218 (h!41574 rules!2135)))) (dynLambda!14590 order!18439 lambda!117419))))

(assert (=> b!3208328 true))

(declare-fun b!3208310 () Bool)

(declare-fun e!2000429 () Bool)

(declare-fun e!2000447 () Bool)

(assert (=> b!3208310 (= e!2000429 e!2000447)))

(declare-fun res!1305763 () Bool)

(assert (=> b!3208310 (=> (not res!1305763) (not e!2000447))))

(declare-fun lt!1083892 () Rule!10236)

(declare-fun lt!1083895 () List!36277)

(declare-fun matchR!4611 (Regex!9977 List!36277) Bool)

(assert (=> b!3208310 (= res!1305763 (matchR!4611 (regex!5218 lt!1083892) lt!1083895))))

(declare-datatypes ((Option!7135 0))(
  ( (None!7134) (Some!7134 (v!35684 Rule!10236)) )
))
(declare-fun lt!1083919 () Option!7135)

(declare-fun get!11510 (Option!7135) Rule!10236)

(assert (=> b!3208310 (= lt!1083892 (get!11510 lt!1083919))))

(declare-datatypes ((Token!9802 0))(
  ( (Token!9803 (value!169173 TokenValue!5448) (rule!7658 Rule!10236) (size!27241 Int) (originalCharacters!5932 List!36277)) )
))
(declare-fun separatorToken!241 () Token!9802)

(declare-fun e!2000458 () Bool)

(declare-fun e!2000457 () Bool)

(declare-fun b!3208311 () Bool)

(declare-fun tp!1013014 () Bool)

(declare-fun inv!21 (TokenValue!5448) Bool)

(assert (=> b!3208311 (= e!2000458 (and (inv!21 (value!169173 separatorToken!241)) e!2000457 tp!1013014))))

(declare-fun res!1305781 () Bool)

(declare-fun e!2000443 () Bool)

(assert (=> start!301274 (=> (not res!1305781) (not e!2000443))))

(declare-datatypes ((LexerInterface!4807 0))(
  ( (LexerInterfaceExt!4804 (__x!23114 Int)) (Lexer!4805) )
))
(declare-fun thiss!18206 () LexerInterface!4807)

(assert (=> start!301274 (= res!1305781 ((_ is Lexer!4805) thiss!18206))))

(assert (=> start!301274 e!2000443))

(assert (=> start!301274 true))

(declare-fun e!2000433 () Bool)

(assert (=> start!301274 e!2000433))

(declare-fun e!2000452 () Bool)

(assert (=> start!301274 e!2000452))

(declare-fun inv!49014 (Token!9802) Bool)

(assert (=> start!301274 (and (inv!49014 separatorToken!241) e!2000458)))

(declare-fun b!3208312 () Bool)

(declare-fun e!2000454 () Bool)

(declare-fun e!2000440 () Bool)

(assert (=> b!3208312 (= e!2000454 e!2000440)))

(declare-fun res!1305761 () Bool)

(assert (=> b!3208312 (=> res!1305761 e!2000440)))

(declare-fun lt!1083917 () List!36277)

(declare-fun lt!1083920 () List!36277)

(assert (=> b!3208312 (= res!1305761 (not (= lt!1083917 lt!1083920)))))

(declare-fun lt!1083887 () List!36277)

(assert (=> b!3208312 (= lt!1083887 lt!1083920)))

(declare-fun lt!1083893 () List!36277)

(declare-fun ++!8674 (List!36277 List!36277) List!36277)

(assert (=> b!3208312 (= lt!1083920 (++!8674 lt!1083895 lt!1083893))))

(declare-datatypes ((Unit!50612 0))(
  ( (Unit!50613) )
))
(declare-fun lt!1083897 () Unit!50612)

(declare-fun lt!1083914 () List!36277)

(declare-fun lt!1083899 () List!36277)

(declare-fun lemmaConcatAssociativity!1740 (List!36277 List!36277 List!36277) Unit!50612)

(assert (=> b!3208312 (= lt!1083897 (lemmaConcatAssociativity!1740 lt!1083895 lt!1083914 lt!1083899))))

(declare-fun b!3208313 () Bool)

(declare-fun e!2000450 () Bool)

(declare-fun e!2000436 () Bool)

(assert (=> b!3208313 (= e!2000450 e!2000436)))

(declare-fun res!1305785 () Bool)

(assert (=> b!3208313 (=> res!1305785 e!2000436)))

(declare-fun lt!1083906 () List!36277)

(declare-fun lt!1083903 () List!36277)

(assert (=> b!3208313 (= res!1305785 (or (not (= lt!1083903 lt!1083895)) (not (= lt!1083906 lt!1083895))))))

(declare-datatypes ((List!36279 0))(
  ( (Nil!36155) (Cons!36155 (h!41575 Token!9802) (t!238454 List!36279)) )
))
(declare-fun tokens!494 () List!36279)

(declare-fun list!12859 (BalanceConc!21236) List!36277)

(declare-fun charsOf!3234 (Token!9802) BalanceConc!21236)

(assert (=> b!3208313 (= lt!1083895 (list!12859 (charsOf!3234 (h!41575 tokens!494))))))

(declare-fun b!3208314 () Bool)

(assert (=> b!3208314 (= e!2000447 (= (rule!7658 (h!41575 tokens!494)) lt!1083892))))

(declare-fun b!3208315 () Bool)

(declare-fun res!1305784 () Bool)

(assert (=> b!3208315 (=> (not res!1305784) (not e!2000443))))

(declare-fun isEmpty!20241 (List!36278) Bool)

(assert (=> b!3208315 (= res!1305784 (not (isEmpty!20241 rules!2135)))))

(declare-fun b!3208316 () Bool)

(declare-fun tp!1013009 () Bool)

(declare-fun e!2000456 () Bool)

(declare-fun e!2000439 () Bool)

(assert (=> b!3208316 (= e!2000439 (and (inv!21 (value!169173 (h!41575 tokens!494))) e!2000456 tp!1013009))))

(declare-fun b!3208317 () Bool)

(declare-fun e!2000445 () Bool)

(declare-fun e!2000430 () Bool)

(assert (=> b!3208317 (= e!2000445 e!2000430)))

(declare-fun res!1305767 () Bool)

(assert (=> b!3208317 (=> (not res!1305767) (not e!2000430))))

(declare-fun lt!1083918 () Rule!10236)

(assert (=> b!3208317 (= res!1305767 (matchR!4611 (regex!5218 lt!1083918) lt!1083914))))

(declare-fun lt!1083894 () Option!7135)

(assert (=> b!3208317 (= lt!1083918 (get!11510 lt!1083894))))

(declare-fun e!2000455 () Bool)

(assert (=> b!3208318 (= e!2000455 (and tp!1013015 tp!1013010))))

(declare-fun e!2000437 () Bool)

(assert (=> b!3208319 (= e!2000437 (and tp!1013016 tp!1013007))))

(declare-fun tp!1013017 () Bool)

(declare-fun b!3208320 () Bool)

(declare-fun inv!49011 (String!40574) Bool)

(declare-fun inv!49015 (TokenValueInjection!10324) Bool)

(assert (=> b!3208320 (= e!2000456 (and tp!1013017 (inv!49011 (tag!5744 (rule!7658 (h!41575 tokens!494)))) (inv!49015 (transformation!5218 (rule!7658 (h!41575 tokens!494)))) e!2000437))))

(declare-fun b!3208321 () Bool)

(declare-fun e!2000444 () Bool)

(assert (=> b!3208321 (= e!2000444 false)))

(declare-fun b!3208322 () Bool)

(declare-fun res!1305783 () Bool)

(assert (=> b!3208322 (=> (not res!1305783) (not e!2000443))))

(assert (=> b!3208322 (= res!1305783 (isSeparator!5218 (rule!7658 separatorToken!241)))))

(declare-fun b!3208323 () Bool)

(declare-fun e!2000434 () Bool)

(declare-datatypes ((IArray!21629 0))(
  ( (IArray!21630 (innerList!10872 List!36279)) )
))
(declare-datatypes ((Conc!10812 0))(
  ( (Node!10812 (left!28107 Conc!10812) (right!28437 Conc!10812) (csize!21854 Int) (cheight!11023 Int)) (Leaf!17032 (xs!13930 IArray!21629) (csize!21855 Int)) (Empty!10812) )
))
(declare-datatypes ((BalanceConc!21238 0))(
  ( (BalanceConc!21239 (c!538890 Conc!10812)) )
))
(declare-datatypes ((tuple2!35550 0))(
  ( (tuple2!35551 (_1!20909 BalanceConc!21238) (_2!20909 BalanceConc!21236)) )
))
(declare-fun lt!1083901 () tuple2!35550)

(declare-fun isEmpty!20242 (BalanceConc!21236) Bool)

(assert (=> b!3208323 (= e!2000434 (isEmpty!20242 (_2!20909 lt!1083901)))))

(declare-fun b!3208324 () Bool)

(declare-fun e!2000448 () Bool)

(assert (=> b!3208324 (= e!2000448 e!2000454)))

(declare-fun res!1305779 () Bool)

(assert (=> b!3208324 (=> res!1305779 e!2000454)))

(assert (=> b!3208324 (= res!1305779 (not (= lt!1083917 lt!1083887)))))

(assert (=> b!3208324 (= lt!1083887 (++!8674 (++!8674 lt!1083895 lt!1083914) lt!1083899))))

(declare-fun b!3208325 () Bool)

(declare-fun e!2000435 () Bool)

(declare-fun e!2000446 () Bool)

(assert (=> b!3208325 (= e!2000435 e!2000446)))

(declare-fun res!1305765 () Bool)

(assert (=> b!3208325 (=> res!1305765 e!2000446)))

(assert (=> b!3208325 (= res!1305765 (or (isSeparator!5218 (rule!7658 (h!41575 tokens!494))) (isSeparator!5218 (rule!7658 (h!41575 (t!238454 tokens!494))))))))

(declare-fun lt!1083902 () Unit!50612)

(declare-fun forallContained!1189 (List!36279 Int Token!9802) Unit!50612)

(assert (=> b!3208325 (= lt!1083902 (forallContained!1189 tokens!494 lambda!117418 (h!41575 (t!238454 tokens!494))))))

(declare-fun lt!1083915 () Unit!50612)

(assert (=> b!3208325 (= lt!1083915 (forallContained!1189 tokens!494 lambda!117418 (h!41575 tokens!494)))))

(declare-fun b!3208326 () Bool)

(declare-fun res!1305786 () Bool)

(assert (=> b!3208326 (=> (not res!1305786) (not e!2000443))))

(declare-fun rulesInvariant!4204 (LexerInterface!4807 List!36278) Bool)

(assert (=> b!3208326 (= res!1305786 (rulesInvariant!4204 thiss!18206 rules!2135))))

(declare-fun b!3208327 () Bool)

(declare-fun e!2000451 () Unit!50612)

(declare-fun Unit!50614 () Unit!50612)

(assert (=> b!3208327 (= e!2000451 Unit!50614)))

(assert (=> b!3208328 (= e!2000440 true)))

(declare-fun lt!1083909 () Bool)

(assert (=> b!3208328 lt!1083909))

(declare-fun lt!1083885 () Unit!50612)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!846 (LexerInterface!4807 List!36278 List!36279 Token!9802) Unit!50612)

(assert (=> b!3208328 (= lt!1083885 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!846 thiss!18206 rules!2135 tokens!494 (h!41575 (t!238454 tokens!494))))))

(declare-datatypes ((tuple2!35552 0))(
  ( (tuple2!35553 (_1!20910 Token!9802) (_2!20910 List!36277)) )
))
(declare-datatypes ((Option!7136 0))(
  ( (None!7135) (Some!7135 (v!35685 tuple2!35552)) )
))
(declare-fun maxPrefix!2449 (LexerInterface!4807 List!36278 List!36277) Option!7136)

(assert (=> b!3208328 (= (maxPrefix!2449 thiss!18206 rules!2135 lt!1083920) (Some!7135 (tuple2!35553 (h!41575 tokens!494) lt!1083893)))))

(declare-fun lt!1083890 () Unit!50612)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!142 (LexerInterface!4807 List!36278 Token!9802 Rule!10236 List!36277 Rule!10236) Unit!50612)

(assert (=> b!3208328 (= lt!1083890 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!142 thiss!18206 rules!2135 (h!41575 tokens!494) (rule!7658 (h!41575 tokens!494)) lt!1083893 (rule!7658 separatorToken!241)))))

(declare-fun lt!1083886 () C!20140)

(declare-fun contains!6453 (List!36277 C!20140) Bool)

(declare-fun usedCharacters!534 (Regex!9977) List!36277)

(assert (=> b!3208328 (not (contains!6453 (usedCharacters!534 (regex!5218 (rule!7658 (h!41575 tokens!494)))) lt!1083886))))

(declare-fun lt!1083916 () Unit!50612)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!142 (LexerInterface!4807 List!36278 List!36278 Rule!10236 Rule!10236 C!20140) Unit!50612)

(assert (=> b!3208328 (= lt!1083916 (lemmaNonSepRuleNotContainsCharContainedInASepRule!142 thiss!18206 rules!2135 rules!2135 (rule!7658 (h!41575 tokens!494)) (rule!7658 separatorToken!241) lt!1083886))))

(declare-fun lt!1083884 () Unit!50612)

(assert (=> b!3208328 (= lt!1083884 (forallContained!1189 tokens!494 lambda!117419 (h!41575 (t!238454 tokens!494))))))

(declare-fun lt!1083912 () Bool)

(assert (=> b!3208328 (= lt!1083909 (not lt!1083912))))

(declare-fun rulesProduceIndividualToken!2299 (LexerInterface!4807 List!36278 Token!9802) Bool)

(assert (=> b!3208328 (= lt!1083909 (rulesProduceIndividualToken!2299 thiss!18206 rules!2135 (h!41575 (t!238454 tokens!494))))))

(declare-fun e!2000449 () Bool)

(assert (=> b!3208328 (= lt!1083912 e!2000449)))

(declare-fun res!1305777 () Bool)

(assert (=> b!3208328 (=> res!1305777 e!2000449)))

(declare-fun lt!1083898 () tuple2!35550)

(declare-fun size!27242 (BalanceConc!21238) Int)

(assert (=> b!3208328 (= res!1305777 (not (= (size!27242 (_1!20909 lt!1083898)) 1)))))

(declare-fun lt!1083910 () BalanceConc!21236)

(declare-fun lex!2137 (LexerInterface!4807 List!36278 BalanceConc!21236) tuple2!35550)

(assert (=> b!3208328 (= lt!1083898 (lex!2137 thiss!18206 rules!2135 lt!1083910))))

(declare-fun lt!1083888 () BalanceConc!21238)

(declare-fun printTailRec!1304 (LexerInterface!4807 BalanceConc!21238 Int BalanceConc!21236) BalanceConc!21236)

(assert (=> b!3208328 (= lt!1083910 (printTailRec!1304 thiss!18206 lt!1083888 0 (BalanceConc!21237 Empty!10811)))))

(declare-fun print!1872 (LexerInterface!4807 BalanceConc!21238) BalanceConc!21236)

(assert (=> b!3208328 (= lt!1083910 (print!1872 thiss!18206 lt!1083888))))

(declare-fun singletonSeq!2314 (Token!9802) BalanceConc!21238)

(assert (=> b!3208328 (= lt!1083888 (singletonSeq!2314 (h!41575 (t!238454 tokens!494))))))

(assert (=> b!3208328 e!2000434))

(declare-fun res!1305782 () Bool)

(assert (=> b!3208328 (=> (not res!1305782) (not e!2000434))))

(assert (=> b!3208328 (= res!1305782 (= (size!27242 (_1!20909 lt!1083901)) 1))))

(declare-fun lt!1083900 () BalanceConc!21236)

(assert (=> b!3208328 (= lt!1083901 (lex!2137 thiss!18206 rules!2135 lt!1083900))))

(declare-fun lt!1083911 () BalanceConc!21238)

(assert (=> b!3208328 (= lt!1083900 (printTailRec!1304 thiss!18206 lt!1083911 0 (BalanceConc!21237 Empty!10811)))))

(assert (=> b!3208328 (= lt!1083900 (print!1872 thiss!18206 lt!1083911))))

(assert (=> b!3208328 (= lt!1083911 (singletonSeq!2314 separatorToken!241))))

(declare-fun lt!1083913 () Unit!50612)

(assert (=> b!3208328 (= lt!1083913 e!2000451)))

(declare-fun c!538887 () Bool)

(assert (=> b!3208328 (= c!538887 (not (contains!6453 (usedCharacters!534 (regex!5218 (rule!7658 separatorToken!241))) lt!1083886)))))

(declare-fun head!7037 (List!36277) C!20140)

(assert (=> b!3208328 (= lt!1083886 (head!7037 lt!1083914))))

(assert (=> b!3208328 e!2000445))

(declare-fun res!1305773 () Bool)

(assert (=> b!3208328 (=> (not res!1305773) (not e!2000445))))

(declare-fun isDefined!5548 (Option!7135) Bool)

(assert (=> b!3208328 (= res!1305773 (isDefined!5548 lt!1083894))))

(declare-fun getRuleFromTag!923 (LexerInterface!4807 List!36278 String!40574) Option!7135)

(assert (=> b!3208328 (= lt!1083894 (getRuleFromTag!923 thiss!18206 rules!2135 (tag!5744 (rule!7658 separatorToken!241))))))

(declare-fun lt!1083883 () Unit!50612)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!923 (LexerInterface!4807 List!36278 List!36277 Token!9802) Unit!50612)

(assert (=> b!3208328 (= lt!1083883 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!923 thiss!18206 rules!2135 lt!1083914 separatorToken!241))))

(declare-fun lt!1083908 () BalanceConc!21236)

(declare-fun maxPrefixOneRule!1586 (LexerInterface!4807 Rule!10236 List!36277) Option!7136)

(declare-fun apply!8185 (TokenValueInjection!10324 BalanceConc!21236) TokenValue!5448)

(declare-fun size!27243 (List!36277) Int)

(assert (=> b!3208328 (= (maxPrefixOneRule!1586 thiss!18206 (rule!7658 (h!41575 tokens!494)) lt!1083895) (Some!7135 (tuple2!35553 (Token!9803 (apply!8185 (transformation!5218 (rule!7658 (h!41575 tokens!494))) lt!1083908) (rule!7658 (h!41575 tokens!494)) (size!27243 lt!1083895) lt!1083895) Nil!36153)))))

(declare-fun lt!1083889 () Unit!50612)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!699 (LexerInterface!4807 List!36278 List!36277 List!36277 List!36277 Rule!10236) Unit!50612)

(assert (=> b!3208328 (= lt!1083889 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!699 thiss!18206 rules!2135 lt!1083895 lt!1083895 Nil!36153 (rule!7658 (h!41575 tokens!494))))))

(assert (=> b!3208328 e!2000429))

(declare-fun res!1305764 () Bool)

(assert (=> b!3208328 (=> (not res!1305764) (not e!2000429))))

(assert (=> b!3208328 (= res!1305764 (isDefined!5548 lt!1083919))))

(assert (=> b!3208328 (= lt!1083919 (getRuleFromTag!923 thiss!18206 rules!2135 (tag!5744 (rule!7658 (h!41575 tokens!494)))))))

(declare-fun lt!1083907 () Unit!50612)

(assert (=> b!3208328 (= lt!1083907 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!923 thiss!18206 rules!2135 lt!1083895 (h!41575 tokens!494)))))

(declare-fun lt!1083891 () Unit!50612)

(assert (=> b!3208328 (= lt!1083891 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!846 thiss!18206 rules!2135 tokens!494 (h!41575 tokens!494)))))

(declare-fun b!3208329 () Bool)

(declare-fun tp!1013012 () Bool)

(assert (=> b!3208329 (= e!2000452 (and (inv!49014 (h!41575 tokens!494)) e!2000439 tp!1013012))))

(declare-fun b!3208330 () Bool)

(assert (=> b!3208330 (= e!2000446 e!2000448)))

(declare-fun res!1305768 () Bool)

(assert (=> b!3208330 (=> res!1305768 e!2000448)))

(declare-fun printWithSeparatorTokenList!152 (LexerInterface!4807 List!36279 Token!9802) List!36277)

(assert (=> b!3208330 (= res!1305768 (not (= lt!1083899 (++!8674 (++!8674 (list!12859 (charsOf!3234 (h!41575 (t!238454 tokens!494)))) lt!1083914) (printWithSeparatorTokenList!152 thiss!18206 (t!238454 (t!238454 tokens!494)) separatorToken!241)))))))

(assert (=> b!3208330 (= lt!1083893 (++!8674 lt!1083914 lt!1083899))))

(assert (=> b!3208330 (= lt!1083914 (list!12859 (charsOf!3234 separatorToken!241)))))

(assert (=> b!3208330 (= lt!1083899 (printWithSeparatorTokenList!152 thiss!18206 (t!238454 tokens!494) separatorToken!241))))

(assert (=> b!3208330 (= lt!1083917 (printWithSeparatorTokenList!152 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3208331 () Bool)

(declare-fun Unit!50615 () Unit!50612)

(assert (=> b!3208331 (= e!2000451 Unit!50615)))

(declare-fun lt!1083896 () Unit!50612)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!382 (Regex!9977 List!36277 C!20140) Unit!50612)

(assert (=> b!3208331 (= lt!1083896 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!382 (regex!5218 (rule!7658 separatorToken!241)) lt!1083914 lt!1083886))))

(declare-fun res!1305762 () Bool)

(assert (=> b!3208331 (= res!1305762 (not (matchR!4611 (regex!5218 (rule!7658 separatorToken!241)) lt!1083914)))))

(assert (=> b!3208331 (=> (not res!1305762) (not e!2000444))))

(assert (=> b!3208331 e!2000444))

(declare-fun res!1305775 () Bool)

(assert (=> b!3208332 (=> (not res!1305775) (not e!2000443))))

(declare-fun forall!7382 (List!36279 Int) Bool)

(assert (=> b!3208332 (= res!1305775 (forall!7382 tokens!494 lambda!117418))))

(declare-fun tp!1013018 () Bool)

(declare-fun e!2000441 () Bool)

(declare-fun b!3208333 () Bool)

(declare-fun e!2000442 () Bool)

(assert (=> b!3208333 (= e!2000441 (and tp!1013018 (inv!49011 (tag!5744 (h!41574 rules!2135))) (inv!49015 (transformation!5218 (h!41574 rules!2135))) e!2000442))))

(declare-fun b!3208334 () Bool)

(declare-fun res!1305769 () Bool)

(assert (=> b!3208334 (=> (not res!1305769) (not e!2000443))))

(assert (=> b!3208334 (= res!1305769 (and (not ((_ is Nil!36155) tokens!494)) (not ((_ is Nil!36155) (t!238454 tokens!494)))))))

(declare-fun b!3208335 () Bool)

(assert (=> b!3208335 (= e!2000449 (not (isEmpty!20242 (_2!20909 lt!1083898))))))

(assert (=> b!3208336 (= e!2000442 (and tp!1013013 tp!1013011))))

(declare-fun b!3208337 () Bool)

(declare-fun res!1305766 () Bool)

(assert (=> b!3208337 (=> (not res!1305766) (not e!2000443))))

(assert (=> b!3208337 (= res!1305766 (rulesProduceIndividualToken!2299 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3208338 () Bool)

(declare-fun res!1305774 () Bool)

(assert (=> b!3208338 (=> (not res!1305774) (not e!2000443))))

(declare-fun rulesProduceEachTokenIndividually!1258 (LexerInterface!4807 List!36278 BalanceConc!21238) Bool)

(declare-fun seqFromList!3507 (List!36279) BalanceConc!21238)

(assert (=> b!3208338 (= res!1305774 (rulesProduceEachTokenIndividually!1258 thiss!18206 rules!2135 (seqFromList!3507 tokens!494)))))

(declare-fun b!3208339 () Bool)

(declare-fun res!1305776 () Bool)

(assert (=> b!3208339 (=> res!1305776 e!2000449)))

(declare-fun apply!8186 (BalanceConc!21238 Int) Token!9802)

(assert (=> b!3208339 (= res!1305776 (not (= (apply!8186 (_1!20909 lt!1083898) 0) (h!41575 (t!238454 tokens!494)))))))

(declare-fun b!3208340 () Bool)

(assert (=> b!3208340 (= e!2000443 (not e!2000450))))

(declare-fun res!1305771 () Bool)

(assert (=> b!3208340 (=> res!1305771 e!2000450)))

(assert (=> b!3208340 (= res!1305771 (not (= lt!1083906 lt!1083903)))))

(declare-fun printList!1357 (LexerInterface!4807 List!36279) List!36277)

(assert (=> b!3208340 (= lt!1083903 (printList!1357 thiss!18206 (Cons!36155 (h!41575 tokens!494) Nil!36155)))))

(declare-fun lt!1083905 () BalanceConc!21236)

(assert (=> b!3208340 (= lt!1083906 (list!12859 lt!1083905))))

(declare-fun lt!1083904 () BalanceConc!21238)

(assert (=> b!3208340 (= lt!1083905 (printTailRec!1304 thiss!18206 lt!1083904 0 (BalanceConc!21237 Empty!10811)))))

(assert (=> b!3208340 (= lt!1083905 (print!1872 thiss!18206 lt!1083904))))

(assert (=> b!3208340 (= lt!1083904 (singletonSeq!2314 (h!41575 tokens!494)))))

(declare-fun b!3208341 () Bool)

(assert (=> b!3208341 (= e!2000436 e!2000435)))

(declare-fun res!1305770 () Bool)

(assert (=> b!3208341 (=> res!1305770 e!2000435)))

(declare-fun isEmpty!20243 (BalanceConc!21238) Bool)

(assert (=> b!3208341 (= res!1305770 (isEmpty!20243 (_1!20909 (lex!2137 thiss!18206 rules!2135 lt!1083908))))))

(declare-fun seqFromList!3508 (List!36277) BalanceConc!21236)

(assert (=> b!3208341 (= lt!1083908 (seqFromList!3508 lt!1083895))))

(declare-fun b!3208342 () Bool)

(assert (=> b!3208342 (= e!2000430 (= (rule!7658 separatorToken!241) lt!1083918))))

(declare-fun b!3208343 () Bool)

(declare-fun tp!1013008 () Bool)

(assert (=> b!3208343 (= e!2000433 (and e!2000441 tp!1013008))))

(declare-fun b!3208344 () Bool)

(declare-fun tp!1013006 () Bool)

(assert (=> b!3208344 (= e!2000457 (and tp!1013006 (inv!49011 (tag!5744 (rule!7658 separatorToken!241))) (inv!49015 (transformation!5218 (rule!7658 separatorToken!241))) e!2000455))))

(declare-fun b!3208345 () Bool)

(declare-fun res!1305778 () Bool)

(assert (=> b!3208345 (=> res!1305778 e!2000436)))

(assert (=> b!3208345 (= res!1305778 (not (rulesProduceIndividualToken!2299 thiss!18206 rules!2135 (h!41575 tokens!494))))))

(declare-fun b!3208346 () Bool)

(declare-fun res!1305772 () Bool)

(assert (=> b!3208346 (=> (not res!1305772) (not e!2000434))))

(assert (=> b!3208346 (= res!1305772 (= (apply!8186 (_1!20909 lt!1083901) 0) separatorToken!241))))

(declare-fun b!3208347 () Bool)

(declare-fun res!1305780 () Bool)

(assert (=> b!3208347 (=> (not res!1305780) (not e!2000443))))

(declare-fun sepAndNonSepRulesDisjointChars!1412 (List!36278 List!36278) Bool)

(assert (=> b!3208347 (= res!1305780 (sepAndNonSepRulesDisjointChars!1412 rules!2135 rules!2135))))

(assert (= (and start!301274 res!1305781) b!3208315))

(assert (= (and b!3208315 res!1305784) b!3208326))

(assert (= (and b!3208326 res!1305786) b!3208338))

(assert (= (and b!3208338 res!1305774) b!3208337))

(assert (= (and b!3208337 res!1305766) b!3208322))

(assert (= (and b!3208322 res!1305783) b!3208332))

(assert (= (and b!3208332 res!1305775) b!3208347))

(assert (= (and b!3208347 res!1305780) b!3208334))

(assert (= (and b!3208334 res!1305769) b!3208340))

(assert (= (and b!3208340 (not res!1305771)) b!3208313))

(assert (= (and b!3208313 (not res!1305785)) b!3208345))

(assert (= (and b!3208345 (not res!1305778)) b!3208341))

(assert (= (and b!3208341 (not res!1305770)) b!3208325))

(assert (= (and b!3208325 (not res!1305765)) b!3208330))

(assert (= (and b!3208330 (not res!1305768)) b!3208324))

(assert (= (and b!3208324 (not res!1305779)) b!3208312))

(assert (= (and b!3208312 (not res!1305761)) b!3208328))

(assert (= (and b!3208328 res!1305764) b!3208310))

(assert (= (and b!3208310 res!1305763) b!3208314))

(assert (= (and b!3208328 res!1305773) b!3208317))

(assert (= (and b!3208317 res!1305767) b!3208342))

(assert (= (and b!3208328 c!538887) b!3208331))

(assert (= (and b!3208328 (not c!538887)) b!3208327))

(assert (= (and b!3208331 res!1305762) b!3208321))

(assert (= (and b!3208328 res!1305782) b!3208346))

(assert (= (and b!3208346 res!1305772) b!3208323))

(assert (= (and b!3208328 (not res!1305777)) b!3208339))

(assert (= (and b!3208339 (not res!1305776)) b!3208335))

(assert (= b!3208333 b!3208336))

(assert (= b!3208343 b!3208333))

(assert (= (and start!301274 ((_ is Cons!36154) rules!2135)) b!3208343))

(assert (= b!3208320 b!3208319))

(assert (= b!3208316 b!3208320))

(assert (= b!3208329 b!3208316))

(assert (= (and start!301274 ((_ is Cons!36155) tokens!494)) b!3208329))

(assert (= b!3208344 b!3208318))

(assert (= b!3208311 b!3208344))

(assert (= start!301274 b!3208311))

(declare-fun m!3475555 () Bool)

(assert (=> b!3208324 m!3475555))

(assert (=> b!3208324 m!3475555))

(declare-fun m!3475557 () Bool)

(assert (=> b!3208324 m!3475557))

(declare-fun m!3475559 () Bool)

(assert (=> b!3208313 m!3475559))

(assert (=> b!3208313 m!3475559))

(declare-fun m!3475561 () Bool)

(assert (=> b!3208313 m!3475561))

(declare-fun m!3475563 () Bool)

(assert (=> b!3208316 m!3475563))

(declare-fun m!3475565 () Bool)

(assert (=> b!3208328 m!3475565))

(declare-fun m!3475567 () Bool)

(assert (=> b!3208328 m!3475567))

(declare-fun m!3475569 () Bool)

(assert (=> b!3208328 m!3475569))

(declare-fun m!3475571 () Bool)

(assert (=> b!3208328 m!3475571))

(declare-fun m!3475573 () Bool)

(assert (=> b!3208328 m!3475573))

(declare-fun m!3475575 () Bool)

(assert (=> b!3208328 m!3475575))

(declare-fun m!3475577 () Bool)

(assert (=> b!3208328 m!3475577))

(declare-fun m!3475579 () Bool)

(assert (=> b!3208328 m!3475579))

(declare-fun m!3475581 () Bool)

(assert (=> b!3208328 m!3475581))

(declare-fun m!3475583 () Bool)

(assert (=> b!3208328 m!3475583))

(declare-fun m!3475585 () Bool)

(assert (=> b!3208328 m!3475585))

(declare-fun m!3475587 () Bool)

(assert (=> b!3208328 m!3475587))

(declare-fun m!3475589 () Bool)

(assert (=> b!3208328 m!3475589))

(declare-fun m!3475591 () Bool)

(assert (=> b!3208328 m!3475591))

(declare-fun m!3475593 () Bool)

(assert (=> b!3208328 m!3475593))

(declare-fun m!3475595 () Bool)

(assert (=> b!3208328 m!3475595))

(declare-fun m!3475597 () Bool)

(assert (=> b!3208328 m!3475597))

(assert (=> b!3208328 m!3475589))

(declare-fun m!3475599 () Bool)

(assert (=> b!3208328 m!3475599))

(assert (=> b!3208328 m!3475565))

(declare-fun m!3475601 () Bool)

(assert (=> b!3208328 m!3475601))

(declare-fun m!3475603 () Bool)

(assert (=> b!3208328 m!3475603))

(declare-fun m!3475605 () Bool)

(assert (=> b!3208328 m!3475605))

(declare-fun m!3475607 () Bool)

(assert (=> b!3208328 m!3475607))

(declare-fun m!3475609 () Bool)

(assert (=> b!3208328 m!3475609))

(declare-fun m!3475611 () Bool)

(assert (=> b!3208328 m!3475611))

(declare-fun m!3475613 () Bool)

(assert (=> b!3208328 m!3475613))

(declare-fun m!3475615 () Bool)

(assert (=> b!3208328 m!3475615))

(declare-fun m!3475617 () Bool)

(assert (=> b!3208328 m!3475617))

(declare-fun m!3475619 () Bool)

(assert (=> b!3208328 m!3475619))

(declare-fun m!3475621 () Bool)

(assert (=> b!3208328 m!3475621))

(declare-fun m!3475623 () Bool)

(assert (=> b!3208328 m!3475623))

(declare-fun m!3475625 () Bool)

(assert (=> b!3208328 m!3475625))

(declare-fun m!3475627 () Bool)

(assert (=> b!3208328 m!3475627))

(declare-fun m!3475629 () Bool)

(assert (=> b!3208331 m!3475629))

(declare-fun m!3475631 () Bool)

(assert (=> b!3208331 m!3475631))

(declare-fun m!3475633 () Bool)

(assert (=> b!3208323 m!3475633))

(declare-fun m!3475635 () Bool)

(assert (=> start!301274 m!3475635))

(declare-fun m!3475637 () Bool)

(assert (=> b!3208338 m!3475637))

(assert (=> b!3208338 m!3475637))

(declare-fun m!3475639 () Bool)

(assert (=> b!3208338 m!3475639))

(declare-fun m!3475641 () Bool)

(assert (=> b!3208335 m!3475641))

(declare-fun m!3475643 () Bool)

(assert (=> b!3208340 m!3475643))

(declare-fun m!3475645 () Bool)

(assert (=> b!3208340 m!3475645))

(declare-fun m!3475647 () Bool)

(assert (=> b!3208340 m!3475647))

(declare-fun m!3475649 () Bool)

(assert (=> b!3208340 m!3475649))

(declare-fun m!3475651 () Bool)

(assert (=> b!3208340 m!3475651))

(declare-fun m!3475653 () Bool)

(assert (=> b!3208325 m!3475653))

(declare-fun m!3475655 () Bool)

(assert (=> b!3208325 m!3475655))

(declare-fun m!3475657 () Bool)

(assert (=> b!3208310 m!3475657))

(declare-fun m!3475659 () Bool)

(assert (=> b!3208310 m!3475659))

(declare-fun m!3475661 () Bool)

(assert (=> b!3208339 m!3475661))

(declare-fun m!3475663 () Bool)

(assert (=> b!3208326 m!3475663))

(declare-fun m!3475665 () Bool)

(assert (=> b!3208320 m!3475665))

(declare-fun m!3475667 () Bool)

(assert (=> b!3208320 m!3475667))

(declare-fun m!3475669 () Bool)

(assert (=> b!3208341 m!3475669))

(declare-fun m!3475671 () Bool)

(assert (=> b!3208341 m!3475671))

(declare-fun m!3475673 () Bool)

(assert (=> b!3208341 m!3475673))

(declare-fun m!3475675 () Bool)

(assert (=> b!3208332 m!3475675))

(declare-fun m!3475677 () Bool)

(assert (=> b!3208346 m!3475677))

(declare-fun m!3475679 () Bool)

(assert (=> b!3208345 m!3475679))

(declare-fun m!3475681 () Bool)

(assert (=> b!3208333 m!3475681))

(declare-fun m!3475683 () Bool)

(assert (=> b!3208333 m!3475683))

(declare-fun m!3475685 () Bool)

(assert (=> b!3208317 m!3475685))

(declare-fun m!3475687 () Bool)

(assert (=> b!3208317 m!3475687))

(declare-fun m!3475689 () Bool)

(assert (=> b!3208337 m!3475689))

(declare-fun m!3475691 () Bool)

(assert (=> b!3208311 m!3475691))

(declare-fun m!3475693 () Bool)

(assert (=> b!3208315 m!3475693))

(declare-fun m!3475695 () Bool)

(assert (=> b!3208330 m!3475695))

(declare-fun m!3475697 () Bool)

(assert (=> b!3208330 m!3475697))

(declare-fun m!3475699 () Bool)

(assert (=> b!3208330 m!3475699))

(declare-fun m!3475701 () Bool)

(assert (=> b!3208330 m!3475701))

(declare-fun m!3475703 () Bool)

(assert (=> b!3208330 m!3475703))

(declare-fun m!3475705 () Bool)

(assert (=> b!3208330 m!3475705))

(declare-fun m!3475707 () Bool)

(assert (=> b!3208330 m!3475707))

(assert (=> b!3208330 m!3475701))

(assert (=> b!3208330 m!3475695))

(assert (=> b!3208330 m!3475697))

(declare-fun m!3475709 () Bool)

(assert (=> b!3208330 m!3475709))

(declare-fun m!3475711 () Bool)

(assert (=> b!3208330 m!3475711))

(assert (=> b!3208330 m!3475709))

(assert (=> b!3208330 m!3475703))

(declare-fun m!3475713 () Bool)

(assert (=> b!3208330 m!3475713))

(declare-fun m!3475715 () Bool)

(assert (=> b!3208344 m!3475715))

(declare-fun m!3475717 () Bool)

(assert (=> b!3208344 m!3475717))

(declare-fun m!3475719 () Bool)

(assert (=> b!3208312 m!3475719))

(declare-fun m!3475721 () Bool)

(assert (=> b!3208312 m!3475721))

(declare-fun m!3475723 () Bool)

(assert (=> b!3208347 m!3475723))

(declare-fun m!3475725 () Bool)

(assert (=> b!3208329 m!3475725))

(check-sat (not b!3208332) (not b!3208338) (not b!3208346) (not b_next!86041) (not b!3208329) (not b!3208340) (not b!3208344) (not b!3208311) (not b!3208315) (not b!3208331) (not b_next!86035) (not b_next!86037) b_and!213641 (not b!3208325) (not b!3208333) b_and!213647 (not start!301274) (not b!3208326) (not b!3208317) (not b!3208320) (not b!3208337) (not b!3208343) b_and!213643 (not b_next!86033) (not b!3208345) (not b_next!86039) b_and!213645 (not b!3208330) b_and!213639 (not b!3208341) (not b!3208328) (not b!3208339) (not b!3208310) (not b!3208312) (not b!3208323) (not b!3208356) (not b!3208313) (not b_next!86043) (not b!3208347) b_and!213649 (not b!3208335) (not b!3208324) (not b!3208316))
(check-sat (not b_next!86035) b_and!213647 (not b_next!86041) b_and!213639 (not b_next!86043) b_and!213649 (not b_next!86037) b_and!213641 b_and!213643 (not b_next!86033) (not b_next!86039) b_and!213645)
