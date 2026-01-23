; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336242 () Bool)

(assert start!336242)

(declare-fun b!3611595 () Bool)

(declare-fun b_free!93809 () Bool)

(declare-fun b_next!94513 () Bool)

(assert (=> b!3611595 (= b_free!93809 (not b_next!94513))))

(declare-fun tp!1103936 () Bool)

(declare-fun b_and!263427 () Bool)

(assert (=> b!3611595 (= tp!1103936 b_and!263427)))

(declare-fun b_free!93811 () Bool)

(declare-fun b_next!94515 () Bool)

(assert (=> b!3611595 (= b_free!93811 (not b_next!94515))))

(declare-fun tp!1103946 () Bool)

(declare-fun b_and!263429 () Bool)

(assert (=> b!3611595 (= tp!1103946 b_and!263429)))

(declare-fun b!3611566 () Bool)

(declare-fun b_free!93813 () Bool)

(declare-fun b_next!94517 () Bool)

(assert (=> b!3611566 (= b_free!93813 (not b_next!94517))))

(declare-fun tp!1103944 () Bool)

(declare-fun b_and!263431 () Bool)

(assert (=> b!3611566 (= tp!1103944 b_and!263431)))

(declare-fun b_free!93815 () Bool)

(declare-fun b_next!94519 () Bool)

(assert (=> b!3611566 (= b_free!93815 (not b_next!94519))))

(declare-fun tp!1103948 () Bool)

(declare-fun b_and!263433 () Bool)

(assert (=> b!3611566 (= tp!1103948 b_and!263433)))

(declare-fun b!3611567 () Bool)

(declare-fun b_free!93817 () Bool)

(declare-fun b_next!94521 () Bool)

(assert (=> b!3611567 (= b_free!93817 (not b_next!94521))))

(declare-fun tp!1103940 () Bool)

(declare-fun b_and!263435 () Bool)

(assert (=> b!3611567 (= tp!1103940 b_and!263435)))

(declare-fun b_free!93819 () Bool)

(declare-fun b_next!94523 () Bool)

(assert (=> b!3611567 (= b_free!93819 (not b_next!94523))))

(declare-fun tp!1103950 () Bool)

(declare-fun b_and!263437 () Bool)

(assert (=> b!3611567 (= tp!1103950 b_and!263437)))

(declare-fun b!3611601 () Bool)

(declare-fun b_free!93821 () Bool)

(declare-fun b_next!94525 () Bool)

(assert (=> b!3611601 (= b_free!93821 (not b_next!94525))))

(declare-fun tp!1103938 () Bool)

(declare-fun b_and!263439 () Bool)

(assert (=> b!3611601 (= tp!1103938 b_and!263439)))

(declare-fun b_free!93823 () Bool)

(declare-fun b_next!94527 () Bool)

(assert (=> b!3611601 (= b_free!93823 (not b_next!94527))))

(declare-fun tp!1103941 () Bool)

(declare-fun b_and!263441 () Bool)

(assert (=> b!3611601 (= tp!1103941 b_and!263441)))

(declare-fun b!3611561 () Bool)

(declare-fun res!1460945 () Bool)

(declare-fun e!2235189 () Bool)

(assert (=> b!3611561 (=> (not res!1460945) (not e!2235189))))

(declare-datatypes ((LexerInterface!5231 0))(
  ( (LexerInterfaceExt!5228 (__x!23961 Int)) (Lexer!5229) )
))
(declare-fun thiss!23823 () LexerInterface!5231)

(declare-datatypes ((List!38139 0))(
  ( (Nil!38015) (Cons!38015 (h!43435 (_ BitVec 16)) (t!293430 List!38139)) )
))
(declare-datatypes ((TokenValue!5872 0))(
  ( (FloatLiteralValue!11744 (text!41549 List!38139)) (TokenValueExt!5871 (__x!23962 Int)) (Broken!29360 (value!181231 List!38139)) (Object!5995) (End!5872) (Def!5872) (Underscore!5872) (Match!5872) (Else!5872) (Error!5872) (Case!5872) (If!5872) (Extends!5872) (Abstract!5872) (Class!5872) (Val!5872) (DelimiterValue!11744 (del!5932 List!38139)) (KeywordValue!5878 (value!181232 List!38139)) (CommentValue!11744 (value!181233 List!38139)) (WhitespaceValue!11744 (value!181234 List!38139)) (IndentationValue!5872 (value!181235 List!38139)) (String!42693) (Int32!5872) (Broken!29361 (value!181236 List!38139)) (Boolean!5873) (Unit!54236) (OperatorValue!5875 (op!5932 List!38139)) (IdentifierValue!11744 (value!181237 List!38139)) (IdentifierValue!11745 (value!181238 List!38139)) (WhitespaceValue!11745 (value!181239 List!38139)) (True!11744) (False!11744) (Broken!29362 (value!181240 List!38139)) (Broken!29363 (value!181241 List!38139)) (True!11745) (RightBrace!5872) (RightBracket!5872) (Colon!5872) (Null!5872) (Comma!5872) (LeftBracket!5872) (False!11745) (LeftBrace!5872) (ImaginaryLiteralValue!5872 (text!41550 List!38139)) (StringLiteralValue!17616 (value!181242 List!38139)) (EOFValue!5872 (value!181243 List!38139)) (IdentValue!5872 (value!181244 List!38139)) (DelimiterValue!11745 (value!181245 List!38139)) (DedentValue!5872 (value!181246 List!38139)) (NewLineValue!5872 (value!181247 List!38139)) (IntegerValue!17616 (value!181248 (_ BitVec 32)) (text!41551 List!38139)) (IntegerValue!17617 (value!181249 Int) (text!41552 List!38139)) (Times!5872) (Or!5872) (Equal!5872) (Minus!5872) (Broken!29364 (value!181250 List!38139)) (And!5872) (Div!5872) (LessEqual!5872) (Mod!5872) (Concat!16273) (Not!5872) (Plus!5872) (SpaceValue!5872 (value!181251 List!38139)) (IntegerValue!17618 (value!181252 Int) (text!41553 List!38139)) (StringLiteralValue!17617 (text!41554 List!38139)) (FloatLiteralValue!11745 (text!41555 List!38139)) (BytesLiteralValue!5872 (value!181253 List!38139)) (CommentValue!11745 (value!181254 List!38139)) (StringLiteralValue!17618 (value!181255 List!38139)) (ErrorTokenValue!5872 (msg!5933 List!38139)) )
))
(declare-datatypes ((C!20988 0))(
  ( (C!20989 (val!12542 Int)) )
))
(declare-datatypes ((Regex!10401 0))(
  ( (ElementMatch!10401 (c!624820 C!20988)) (Concat!16274 (regOne!21314 Regex!10401) (regTwo!21314 Regex!10401)) (EmptyExpr!10401) (Star!10401 (reg!10730 Regex!10401)) (EmptyLang!10401) (Union!10401 (regOne!21315 Regex!10401) (regTwo!21315 Regex!10401)) )
))
(declare-datatypes ((String!42694 0))(
  ( (String!42695 (value!181256 String)) )
))
(declare-datatypes ((List!38140 0))(
  ( (Nil!38016) (Cons!38016 (h!43436 C!20988) (t!293431 List!38140)) )
))
(declare-datatypes ((IArray!23175 0))(
  ( (IArray!23176 (innerList!11645 List!38140)) )
))
(declare-datatypes ((Conc!11585 0))(
  ( (Node!11585 (left!29700 Conc!11585) (right!30030 Conc!11585) (csize!23400 Int) (cheight!11796 Int)) (Leaf!18017 (xs!14787 IArray!23175) (csize!23401 Int)) (Empty!11585) )
))
(declare-datatypes ((BalanceConc!22784 0))(
  ( (BalanceConc!22785 (c!624821 Conc!11585)) )
))
(declare-datatypes ((TokenValueInjection!11172 0))(
  ( (TokenValueInjection!11173 (toValue!7926 Int) (toChars!7785 Int)) )
))
(declare-datatypes ((Rule!11084 0))(
  ( (Rule!11085 (regex!5642 Regex!10401) (tag!6350 String!42694) (isSeparator!5642 Bool) (transformation!5642 TokenValueInjection!11172)) )
))
(declare-datatypes ((List!38141 0))(
  ( (Nil!38017) (Cons!38017 (h!43437 Rule!11084) (t!293432 List!38141)) )
))
(declare-fun rules!3307 () List!38141)

(declare-fun rulesInvariant!4628 (LexerInterface!5231 List!38141) Bool)

(assert (=> b!3611561 (= res!1460945 (rulesInvariant!4628 thiss!23823 rules!3307))))

(declare-fun b!3611562 () Bool)

(assert (=> b!3611562 false))

(declare-datatypes ((Unit!54237 0))(
  ( (Unit!54238) )
))
(declare-fun lt!1243771 () Unit!54237)

(declare-fun call!261093 () Unit!54237)

(assert (=> b!3611562 (= lt!1243771 call!261093)))

(declare-fun call!261096 () Bool)

(assert (=> b!3611562 (not call!261096)))

(declare-fun lt!1243802 () C!20988)

(declare-datatypes ((Token!10650 0))(
  ( (Token!10651 (value!181257 TokenValue!5872) (rule!8394 Rule!11084) (size!28985 Int) (originalCharacters!6356 List!38140)) )
))
(declare-datatypes ((tuple2!37908 0))(
  ( (tuple2!37909 (_1!22088 Token!10650) (_2!22088 List!38140)) )
))
(declare-fun lt!1243799 () tuple2!37908)

(declare-fun lt!1243807 () Unit!54237)

(declare-fun anOtherTypeRule!33 () Rule!11084)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!348 (LexerInterface!5231 List!38141 List!38141 Rule!11084 Rule!11084 C!20988) Unit!54237)

(assert (=> b!3611562 (= lt!1243807 (lemmaNonSepRuleNotContainsCharContainedInASepRule!348 thiss!23823 rules!3307 rules!3307 (rule!8394 (_1!22088 lt!1243799)) anOtherTypeRule!33 lt!1243802))))

(declare-fun e!2235183 () Unit!54237)

(declare-fun Unit!54239 () Unit!54237)

(assert (=> b!3611562 (= e!2235183 Unit!54239)))

(declare-fun b!3611563 () Bool)

(declare-fun e!2235196 () Unit!54237)

(declare-fun Unit!54240 () Unit!54237)

(assert (=> b!3611563 (= e!2235196 Unit!54240)))

(declare-fun b!3611564 () Bool)

(declare-fun e!2235188 () Bool)

(declare-fun e!2235193 () Bool)

(declare-fun tp!1103949 () Bool)

(assert (=> b!3611564 (= e!2235188 (and e!2235193 tp!1103949))))

(declare-fun b!3611565 () Bool)

(declare-fun e!2235186 () Bool)

(declare-fun e!2235190 () Bool)

(assert (=> b!3611565 (= e!2235186 e!2235190)))

(declare-fun res!1460946 () Bool)

(assert (=> b!3611565 (=> res!1460946 e!2235190)))

(declare-fun lt!1243770 () List!38140)

(declare-fun lt!1243808 () List!38140)

(declare-fun isPrefix!3005 (List!38140 List!38140) Bool)

(assert (=> b!3611565 (= res!1460946 (not (isPrefix!3005 lt!1243770 lt!1243808)))))

(declare-fun ++!9458 (List!38140 List!38140) List!38140)

(assert (=> b!3611565 (isPrefix!3005 lt!1243770 (++!9458 lt!1243770 (_2!22088 lt!1243799)))))

(declare-fun lt!1243775 () Unit!54237)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1926 (List!38140 List!38140) Unit!54237)

(assert (=> b!3611565 (= lt!1243775 (lemmaConcatTwoListThenFirstIsPrefix!1926 lt!1243770 (_2!22088 lt!1243799)))))

(declare-fun lt!1243801 () BalanceConc!22784)

(declare-fun list!14022 (BalanceConc!22784) List!38140)

(assert (=> b!3611565 (= lt!1243770 (list!14022 lt!1243801))))

(declare-fun charsOf!3656 (Token!10650) BalanceConc!22784)

(assert (=> b!3611565 (= lt!1243801 (charsOf!3656 (_1!22088 lt!1243799)))))

(declare-fun e!2235195 () Bool)

(assert (=> b!3611565 e!2235195))

(declare-fun res!1460939 () Bool)

(assert (=> b!3611565 (=> (not res!1460939) (not e!2235195))))

(declare-datatypes ((Option!7914 0))(
  ( (None!7913) (Some!7913 (v!37659 Rule!11084)) )
))
(declare-fun lt!1243786 () Option!7914)

(declare-fun isDefined!6146 (Option!7914) Bool)

(assert (=> b!3611565 (= res!1460939 (isDefined!6146 lt!1243786))))

(declare-fun getRuleFromTag!1248 (LexerInterface!5231 List!38141 String!42694) Option!7914)

(assert (=> b!3611565 (= lt!1243786 (getRuleFromTag!1248 thiss!23823 rules!3307 (tag!6350 (rule!8394 (_1!22088 lt!1243799)))))))

(declare-fun lt!1243785 () Unit!54237)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1248 (LexerInterface!5231 List!38141 List!38140 Token!10650) Unit!54237)

(assert (=> b!3611565 (= lt!1243785 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1248 thiss!23823 rules!3307 lt!1243808 (_1!22088 lt!1243799)))))

(declare-datatypes ((Option!7915 0))(
  ( (None!7914) (Some!7914 (v!37660 tuple2!37908)) )
))
(declare-fun lt!1243787 () Option!7915)

(declare-fun get!12345 (Option!7915) tuple2!37908)

(assert (=> b!3611565 (= lt!1243799 (get!12345 lt!1243787))))

(declare-fun suffix!1395 () List!38140)

(declare-fun lt!1243792 () Unit!54237)

(declare-fun lt!1243776 () List!38140)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!911 (LexerInterface!5231 List!38141 List!38140 List!38140) Unit!54237)

(assert (=> b!3611565 (= lt!1243792 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!911 thiss!23823 rules!3307 lt!1243776 suffix!1395))))

(declare-fun maxPrefix!2765 (LexerInterface!5231 List!38141 List!38140) Option!7915)

(assert (=> b!3611565 (= lt!1243787 (maxPrefix!2765 thiss!23823 rules!3307 lt!1243808))))

(assert (=> b!3611565 (isPrefix!3005 lt!1243776 lt!1243808)))

(declare-fun lt!1243796 () Unit!54237)

(assert (=> b!3611565 (= lt!1243796 (lemmaConcatTwoListThenFirstIsPrefix!1926 lt!1243776 suffix!1395))))

(assert (=> b!3611565 (= lt!1243808 (++!9458 lt!1243776 suffix!1395))))

(declare-fun e!2235187 () Bool)

(assert (=> b!3611566 (= e!2235187 (and tp!1103944 tp!1103948))))

(declare-fun e!2235182 () Bool)

(assert (=> b!3611567 (= e!2235182 (and tp!1103940 tp!1103950))))

(declare-fun b!3611568 () Bool)

(declare-fun res!1460937 () Bool)

(assert (=> b!3611568 (=> (not res!1460937) (not e!2235189))))

(declare-fun isEmpty!22450 (List!38141) Bool)

(assert (=> b!3611568 (= res!1460937 (not (isEmpty!22450 rules!3307)))))

(declare-fun b!3611569 () Bool)

(declare-fun e!2235199 () Bool)

(declare-fun e!2235207 () Bool)

(assert (=> b!3611569 (= e!2235199 e!2235207)))

(declare-fun res!1460940 () Bool)

(assert (=> b!3611569 (=> res!1460940 e!2235207)))

(declare-fun lt!1243768 () List!38140)

(declare-fun lt!1243793 () Option!7915)

(assert (=> b!3611569 (= res!1460940 (or (not (= lt!1243768 (_2!22088 lt!1243799))) (not (= lt!1243793 (Some!7914 (tuple2!37909 (_1!22088 lt!1243799) lt!1243768))))))))

(assert (=> b!3611569 (= (_2!22088 lt!1243799) lt!1243768)))

(declare-fun lt!1243781 () Unit!54237)

(declare-fun lemmaSamePrefixThenSameSuffix!1360 (List!38140 List!38140 List!38140 List!38140 List!38140) Unit!54237)

(assert (=> b!3611569 (= lt!1243781 (lemmaSamePrefixThenSameSuffix!1360 lt!1243770 (_2!22088 lt!1243799) lt!1243770 lt!1243768 lt!1243808))))

(declare-fun getSuffix!1580 (List!38140 List!38140) List!38140)

(assert (=> b!3611569 (= lt!1243768 (getSuffix!1580 lt!1243808 lt!1243770))))

(declare-fun lt!1243780 () TokenValue!5872)

(declare-fun lt!1243803 () Int)

(assert (=> b!3611569 (= lt!1243793 (Some!7914 (tuple2!37909 (Token!10651 lt!1243780 (rule!8394 (_1!22088 lt!1243799)) lt!1243803 lt!1243770) (_2!22088 lt!1243799))))))

(declare-fun maxPrefixOneRule!1909 (LexerInterface!5231 Rule!11084 List!38140) Option!7915)

(assert (=> b!3611569 (= lt!1243793 (maxPrefixOneRule!1909 thiss!23823 (rule!8394 (_1!22088 lt!1243799)) lt!1243808))))

(declare-fun size!28986 (List!38140) Int)

(assert (=> b!3611569 (= lt!1243803 (size!28986 lt!1243770))))

(declare-fun apply!9148 (TokenValueInjection!11172 BalanceConc!22784) TokenValue!5872)

(declare-fun seqFromList!4195 (List!38140) BalanceConc!22784)

(assert (=> b!3611569 (= lt!1243780 (apply!9148 (transformation!5642 (rule!8394 (_1!22088 lt!1243799))) (seqFromList!4195 lt!1243770)))))

(declare-fun lt!1243777 () Unit!54237)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!981 (LexerInterface!5231 List!38141 List!38140 List!38140 List!38140 Rule!11084) Unit!54237)

(assert (=> b!3611569 (= lt!1243777 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!981 thiss!23823 rules!3307 lt!1243770 lt!1243808 (_2!22088 lt!1243799) (rule!8394 (_1!22088 lt!1243799))))))

(declare-fun b!3611570 () Bool)

(declare-fun res!1460936 () Bool)

(declare-fun e!2235213 () Bool)

(assert (=> b!3611570 (=> (not res!1460936) (not e!2235213))))

(declare-fun token!511 () Token!10650)

(declare-fun rule!403 () Rule!11084)

(assert (=> b!3611570 (= res!1460936 (= (rule!8394 token!511) rule!403))))

(declare-fun e!2235200 () Bool)

(declare-fun tp!1103943 () Bool)

(declare-fun b!3611571 () Bool)

(declare-fun inv!51389 (String!42694) Bool)

(declare-fun inv!51392 (TokenValueInjection!11172) Bool)

(assert (=> b!3611571 (= e!2235200 (and tp!1103943 (inv!51389 (tag!6350 (rule!8394 token!511))) (inv!51392 (transformation!5642 (rule!8394 token!511))) e!2235182))))

(declare-fun b!3611572 () Bool)

(declare-fun res!1460950 () Bool)

(assert (=> b!3611572 (=> res!1460950 e!2235186)))

(declare-fun sepAndNonSepRulesDisjointChars!1812 (List!38141 List!38141) Bool)

(assert (=> b!3611572 (= res!1460950 (not (sepAndNonSepRulesDisjointChars!1812 rules!3307 rules!3307)))))

(declare-fun b!3611573 () Bool)

(declare-fun res!1460941 () Bool)

(assert (=> b!3611573 (=> res!1460941 e!2235186)))

(declare-fun contains!7347 (List!38140 C!20988) Bool)

(declare-fun usedCharacters!856 (Regex!10401) List!38140)

(assert (=> b!3611573 (= res!1460941 (not (contains!7347 (usedCharacters!856 (regex!5642 anOtherTypeRule!33)) lt!1243802)))))

(declare-fun b!3611574 () Bool)

(declare-fun res!1460948 () Bool)

(assert (=> b!3611574 (=> (not res!1460948) (not e!2235189))))

(declare-fun contains!7348 (List!38141 Rule!11084) Bool)

(assert (=> b!3611574 (= res!1460948 (contains!7348 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3611575 () Bool)

(declare-fun e!2235214 () Bool)

(declare-fun lt!1243810 () Rule!11084)

(assert (=> b!3611575 (= e!2235214 (= (rule!8394 (_1!22088 lt!1243799)) lt!1243810))))

(declare-fun b!3611576 () Bool)

(declare-fun res!1460942 () Bool)

(assert (=> b!3611576 (=> res!1460942 e!2235190)))

(declare-fun matchR!4970 (Regex!10401 List!38140) Bool)

(assert (=> b!3611576 (= res!1460942 (not (matchR!4970 (regex!5642 (rule!8394 (_1!22088 lt!1243799))) lt!1243770)))))

(declare-fun b!3611577 () Bool)

(declare-fun e!2235198 () Bool)

(declare-fun tp_is_empty!17885 () Bool)

(declare-fun tp!1103939 () Bool)

(assert (=> b!3611577 (= e!2235198 (and tp_is_empty!17885 tp!1103939))))

(declare-fun bm!261089 () Bool)

(declare-fun call!261097 () List!38140)

(assert (=> bm!261089 (= call!261097 (usedCharacters!856 (regex!5642 (rule!8394 (_1!22088 lt!1243799)))))))

(declare-fun b!3611578 () Bool)

(assert (=> b!3611578 false))

(declare-fun lt!1243812 () Unit!54237)

(declare-fun call!261098 () Unit!54237)

(assert (=> b!3611578 (= lt!1243812 call!261098)))

(declare-fun call!261094 () Bool)

(assert (=> b!3611578 (not call!261094)))

(declare-fun lt!1243789 () Unit!54237)

(declare-fun lt!1243806 () C!20988)

(assert (=> b!3611578 (= lt!1243789 (lemmaNonSepRuleNotContainsCharContainedInASepRule!348 thiss!23823 rules!3307 rules!3307 (rule!8394 (_1!22088 lt!1243799)) rule!403 lt!1243806))))

(declare-fun Unit!54241 () Unit!54237)

(assert (=> b!3611578 (= e!2235196 Unit!54241)))

(declare-fun b!3611579 () Bool)

(assert (=> b!3611579 (= e!2235195 e!2235214)))

(declare-fun res!1460935 () Bool)

(assert (=> b!3611579 (=> (not res!1460935) (not e!2235214))))

(assert (=> b!3611579 (= res!1460935 (matchR!4970 (regex!5642 lt!1243810) (list!14022 (charsOf!3656 (_1!22088 lt!1243799)))))))

(declare-fun get!12346 (Option!7914) Rule!11084)

(assert (=> b!3611579 (= lt!1243810 (get!12346 lt!1243786))))

(declare-fun bm!261090 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!626 (Regex!10401 List!38140 C!20988) Unit!54237)

(assert (=> bm!261090 (= call!261098 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!626 (regex!5642 (rule!8394 (_1!22088 lt!1243799))) lt!1243770 lt!1243806))))

(declare-fun b!3611580 () Bool)

(declare-fun e!2235211 () Bool)

(assert (=> b!3611580 (= e!2235211 e!2235213)))

(declare-fun res!1460949 () Bool)

(assert (=> b!3611580 (=> (not res!1460949) (not e!2235213))))

(declare-fun lt!1243784 () tuple2!37908)

(assert (=> b!3611580 (= res!1460949 (= (_1!22088 lt!1243784) token!511))))

(declare-fun lt!1243782 () Option!7915)

(assert (=> b!3611580 (= lt!1243784 (get!12345 lt!1243782))))

(declare-fun b!3611581 () Bool)

(declare-fun tp!1103945 () Bool)

(declare-fun e!2235210 () Bool)

(declare-fun inv!21 (TokenValue!5872) Bool)

(assert (=> b!3611581 (= e!2235210 (and (inv!21 (value!181257 token!511)) e!2235200 tp!1103945))))

(declare-fun b!3611582 () Bool)

(declare-fun e!2235209 () Unit!54237)

(declare-fun Unit!54242 () Unit!54237)

(assert (=> b!3611582 (= e!2235209 Unit!54242)))

(declare-fun b!3611583 () Bool)

(declare-fun res!1460938 () Bool)

(assert (=> b!3611583 (=> (not res!1460938) (not e!2235189))))

(assert (=> b!3611583 (= res!1460938 (not (= (isSeparator!5642 anOtherTypeRule!33) (isSeparator!5642 rule!403))))))

(declare-fun tp!1103942 () Bool)

(declare-fun b!3611584 () Bool)

(assert (=> b!3611584 (= e!2235193 (and tp!1103942 (inv!51389 (tag!6350 (h!43437 rules!3307))) (inv!51392 (transformation!5642 (h!43437 rules!3307))) e!2235187))))

(declare-fun b!3611585 () Bool)

(assert (=> b!3611585 (= e!2235190 e!2235199)))

(declare-fun res!1460930 () Bool)

(assert (=> b!3611585 (=> res!1460930 e!2235199)))

(declare-fun lt!1243794 () TokenValue!5872)

(declare-fun lt!1243809 () Int)

(assert (=> b!3611585 (= res!1460930 (not (= lt!1243787 (Some!7914 (tuple2!37909 (Token!10651 lt!1243794 (rule!8394 (_1!22088 lt!1243799)) lt!1243809 lt!1243770) (_2!22088 lt!1243799))))))))

(declare-fun size!28987 (BalanceConc!22784) Int)

(assert (=> b!3611585 (= lt!1243809 (size!28987 lt!1243801))))

(assert (=> b!3611585 (= lt!1243794 (apply!9148 (transformation!5642 (rule!8394 (_1!22088 lt!1243799))) lt!1243801))))

(declare-fun lt!1243766 () Unit!54237)

(declare-fun lemmaCharactersSize!695 (Token!10650) Unit!54237)

(assert (=> b!3611585 (= lt!1243766 (lemmaCharactersSize!695 (_1!22088 lt!1243799)))))

(declare-fun lt!1243779 () Unit!54237)

(declare-fun lemmaEqSameImage!833 (TokenValueInjection!11172 BalanceConc!22784 BalanceConc!22784) Unit!54237)

(assert (=> b!3611585 (= lt!1243779 (lemmaEqSameImage!833 (transformation!5642 (rule!8394 (_1!22088 lt!1243799))) lt!1243801 (seqFromList!4195 (originalCharacters!6356 (_1!22088 lt!1243799)))))))

(declare-fun lt!1243797 () Unit!54237)

(declare-fun lemmaSemiInverse!1399 (TokenValueInjection!11172 BalanceConc!22784) Unit!54237)

(assert (=> b!3611585 (= lt!1243797 (lemmaSemiInverse!1399 (transformation!5642 (rule!8394 (_1!22088 lt!1243799))) lt!1243801))))

(declare-fun bm!261088 () Bool)

(declare-fun call!261095 () List!38140)

(assert (=> bm!261088 (= call!261096 (contains!7347 call!261095 lt!1243802))))

(declare-fun res!1460944 () Bool)

(assert (=> start!336242 (=> (not res!1460944) (not e!2235189))))

(get-info :version)

(assert (=> start!336242 (= res!1460944 ((_ is Lexer!5229) thiss!23823))))

(assert (=> start!336242 e!2235189))

(assert (=> start!336242 e!2235188))

(assert (=> start!336242 e!2235198))

(assert (=> start!336242 true))

(declare-fun inv!51393 (Token!10650) Bool)

(assert (=> start!336242 (and (inv!51393 token!511) e!2235210)))

(declare-fun e!2235202 () Bool)

(assert (=> start!336242 e!2235202))

(declare-fun e!2235203 () Bool)

(assert (=> start!336242 e!2235203))

(declare-fun b!3611586 () Bool)

(declare-fun e!2235205 () Bool)

(assert (=> b!3611586 (= e!2235213 (not e!2235205))))

(declare-fun res!1460947 () Bool)

(assert (=> b!3611586 (=> res!1460947 e!2235205)))

(assert (=> b!3611586 (= res!1460947 (not (matchR!4970 (regex!5642 rule!403) lt!1243776)))))

(declare-fun ruleValid!1907 (LexerInterface!5231 Rule!11084) Bool)

(assert (=> b!3611586 (ruleValid!1907 thiss!23823 rule!403)))

(declare-fun lt!1243778 () Unit!54237)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1062 (LexerInterface!5231 Rule!11084 List!38141) Unit!54237)

(assert (=> b!3611586 (= lt!1243778 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1062 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!261091 () Bool)

(assert (=> bm!261091 (= call!261095 (usedCharacters!856 (regex!5642 (rule!8394 (_1!22088 lt!1243799)))))))

(declare-fun b!3611587 () Bool)

(assert (=> b!3611587 (= e!2235207 true)))

(declare-fun lt!1243772 () Int)

(assert (=> b!3611587 (= lt!1243772 (size!28986 lt!1243776))))

(declare-fun lt!1243774 () Unit!54237)

(declare-fun e!2235201 () Unit!54237)

(assert (=> b!3611587 (= lt!1243774 e!2235201)))

(declare-fun c!624813 () Bool)

(declare-fun lt!1243811 () Int)

(assert (=> b!3611587 (= c!624813 (< lt!1243809 lt!1243811))))

(declare-fun lt!1243791 () Unit!54237)

(declare-fun e!2235184 () Unit!54237)

(assert (=> b!3611587 (= lt!1243791 e!2235184)))

(declare-fun c!624819 () Bool)

(assert (=> b!3611587 (= c!624819 (> lt!1243809 lt!1243811))))

(declare-fun lt!1243783 () BalanceConc!22784)

(assert (=> b!3611587 (= lt!1243811 (size!28987 lt!1243783))))

(declare-fun lt!1243767 () Unit!54237)

(declare-fun e!2235194 () Unit!54237)

(assert (=> b!3611587 (= lt!1243767 e!2235194)))

(declare-fun c!624814 () Bool)

(assert (=> b!3611587 (= c!624814 (isSeparator!5642 rule!403))))

(declare-fun lt!1243805 () Unit!54237)

(assert (=> b!3611587 (= lt!1243805 e!2235209)))

(declare-fun c!624818 () Bool)

(declare-fun lt!1243769 () List!38140)

(assert (=> b!3611587 (= c!624818 (not (contains!7347 lt!1243769 lt!1243806)))))

(declare-fun head!7602 (List!38140) C!20988)

(assert (=> b!3611587 (= lt!1243806 (head!7602 lt!1243770))))

(declare-fun b!3611588 () Bool)

(declare-fun res!1460943 () Bool)

(assert (=> b!3611588 (=> (not res!1460943) (not e!2235213))))

(declare-fun isEmpty!22451 (List!38140) Bool)

(assert (=> b!3611588 (= res!1460943 (isEmpty!22451 (_2!22088 lt!1243784)))))

(declare-fun b!3611589 () Bool)

(declare-fun e!2235208 () Bool)

(declare-fun tp!1103937 () Bool)

(assert (=> b!3611589 (= e!2235203 (and tp!1103937 (inv!51389 (tag!6350 anOtherTypeRule!33)) (inv!51392 (transformation!5642 anOtherTypeRule!33)) e!2235208))))

(declare-fun b!3611590 () Bool)

(assert (=> b!3611590 (= e!2235194 e!2235196)))

(declare-fun c!624815 () Bool)

(assert (=> b!3611590 (= c!624815 (not (isSeparator!5642 (rule!8394 (_1!22088 lt!1243799)))))))

(declare-fun b!3611591 () Bool)

(assert (=> b!3611591 false))

(declare-fun lt!1243773 () Unit!54237)

(assert (=> b!3611591 (= lt!1243773 call!261093)))

(assert (=> b!3611591 (not call!261096)))

(declare-fun lt!1243800 () Unit!54237)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!230 (LexerInterface!5231 List!38141 List!38141 Rule!11084 Rule!11084 C!20988) Unit!54237)

(assert (=> b!3611591 (= lt!1243800 (lemmaSepRuleNotContainsCharContainedInANonSepRule!230 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8394 (_1!22088 lt!1243799)) lt!1243802))))

(declare-fun Unit!54243 () Unit!54237)

(assert (=> b!3611591 (= e!2235183 Unit!54243)))

(declare-fun b!3611592 () Bool)

(declare-fun res!1460934 () Bool)

(assert (=> b!3611592 (=> (not res!1460934) (not e!2235189))))

(assert (=> b!3611592 (= res!1460934 (contains!7348 rules!3307 rule!403))))

(declare-fun bm!261092 () Bool)

(assert (=> bm!261092 (= call!261093 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!626 (regex!5642 (rule!8394 (_1!22088 lt!1243799))) lt!1243770 lt!1243802))))

(declare-fun b!3611593 () Bool)

(declare-fun Unit!54244 () Unit!54237)

(assert (=> b!3611593 (= e!2235209 Unit!54244)))

(declare-fun lt!1243795 () Unit!54237)

(assert (=> b!3611593 (= lt!1243795 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!626 (regex!5642 rule!403) lt!1243776 lt!1243806))))

(assert (=> b!3611593 false))

(declare-fun bm!261093 () Bool)

(assert (=> bm!261093 (= call!261094 (contains!7347 call!261097 lt!1243806))))

(declare-fun b!3611594 () Bool)

(declare-fun e!2235197 () Unit!54237)

(assert (=> b!3611594 (= e!2235194 e!2235197)))

(declare-fun c!624817 () Bool)

(assert (=> b!3611594 (= c!624817 (isSeparator!5642 (rule!8394 (_1!22088 lt!1243799))))))

(assert (=> b!3611595 (= e!2235208 (and tp!1103936 tp!1103946))))

(declare-fun b!3611596 () Bool)

(declare-fun Unit!54245 () Unit!54237)

(assert (=> b!3611596 (= e!2235184 Unit!54245)))

(declare-fun b!3611597 () Bool)

(assert (=> b!3611597 false))

(declare-fun lt!1243804 () Unit!54237)

(assert (=> b!3611597 (= lt!1243804 call!261098)))

(assert (=> b!3611597 (not call!261094)))

(declare-fun lt!1243790 () Unit!54237)

(assert (=> b!3611597 (= lt!1243790 (lemmaSepRuleNotContainsCharContainedInANonSepRule!230 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8394 (_1!22088 lt!1243799)) lt!1243806))))

(declare-fun Unit!54246 () Unit!54237)

(assert (=> b!3611597 (= e!2235197 Unit!54246)))

(declare-fun b!3611598 () Bool)

(assert (=> b!3611598 (= e!2235189 e!2235211)))

(declare-fun res!1460931 () Bool)

(assert (=> b!3611598 (=> (not res!1460931) (not e!2235211))))

(declare-fun isDefined!6147 (Option!7915) Bool)

(assert (=> b!3611598 (= res!1460931 (isDefined!6147 lt!1243782))))

(assert (=> b!3611598 (= lt!1243782 (maxPrefix!2765 thiss!23823 rules!3307 lt!1243776))))

(assert (=> b!3611598 (= lt!1243776 (list!14022 lt!1243783))))

(assert (=> b!3611598 (= lt!1243783 (charsOf!3656 token!511))))

(declare-fun b!3611599 () Bool)

(declare-fun Unit!54247 () Unit!54237)

(assert (=> b!3611599 (= e!2235201 Unit!54247)))

(declare-fun e!2235204 () Bool)

(declare-fun b!3611600 () Bool)

(declare-fun tp!1103947 () Bool)

(assert (=> b!3611600 (= e!2235202 (and tp!1103947 (inv!51389 (tag!6350 rule!403)) (inv!51392 (transformation!5642 rule!403)) e!2235204))))

(assert (=> b!3611601 (= e!2235204 (and tp!1103938 tp!1103941))))

(declare-fun b!3611602 () Bool)

(assert (=> b!3611602 (= e!2235205 e!2235186)))

(declare-fun res!1460932 () Bool)

(assert (=> b!3611602 (=> res!1460932 e!2235186)))

(assert (=> b!3611602 (= res!1460932 (contains!7347 lt!1243769 lt!1243802))))

(assert (=> b!3611602 (= lt!1243802 (head!7602 suffix!1395))))

(assert (=> b!3611602 (= lt!1243769 (usedCharacters!856 (regex!5642 rule!403)))))

(declare-fun b!3611603 () Bool)

(declare-fun Unit!54248 () Unit!54237)

(assert (=> b!3611603 (= e!2235197 Unit!54248)))

(declare-fun b!3611604 () Bool)

(declare-fun res!1460933 () Bool)

(assert (=> b!3611604 (=> res!1460933 e!2235205)))

(assert (=> b!3611604 (= res!1460933 (isEmpty!22451 suffix!1395))))

(declare-fun b!3611605 () Bool)

(assert (=> b!3611605 (= e!2235184 e!2235183)))

(declare-fun lt!1243798 () Unit!54237)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!20 (List!38140 List!38140 List!38140 List!38140) Unit!54237)

(assert (=> b!3611605 (= lt!1243798 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!20 lt!1243776 suffix!1395 lt!1243770 lt!1243808))))

(assert (=> b!3611605 (contains!7347 lt!1243770 lt!1243802)))

(declare-fun c!624816 () Bool)

(assert (=> b!3611605 (= c!624816 (isSeparator!5642 rule!403))))

(declare-fun b!3611606 () Bool)

(declare-fun Unit!54249 () Unit!54237)

(assert (=> b!3611606 (= e!2235201 Unit!54249)))

(declare-fun lt!1243788 () Unit!54237)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!290 (LexerInterface!5231 List!38141 Rule!11084 List!38140 List!38140 List!38140 Rule!11084) Unit!54237)

(assert (=> b!3611606 (= lt!1243788 (lemmaMaxPrefixOutputsMaxPrefix!290 thiss!23823 rules!3307 (rule!8394 (_1!22088 lt!1243799)) lt!1243770 lt!1243808 lt!1243776 rule!403))))

(assert (=> b!3611606 false))

(assert (= (and start!336242 res!1460944) b!3611568))

(assert (= (and b!3611568 res!1460937) b!3611561))

(assert (= (and b!3611561 res!1460945) b!3611592))

(assert (= (and b!3611592 res!1460934) b!3611574))

(assert (= (and b!3611574 res!1460948) b!3611583))

(assert (= (and b!3611583 res!1460938) b!3611598))

(assert (= (and b!3611598 res!1460931) b!3611580))

(assert (= (and b!3611580 res!1460949) b!3611588))

(assert (= (and b!3611588 res!1460943) b!3611570))

(assert (= (and b!3611570 res!1460936) b!3611586))

(assert (= (and b!3611586 (not res!1460947)) b!3611604))

(assert (= (and b!3611604 (not res!1460933)) b!3611602))

(assert (= (and b!3611602 (not res!1460932)) b!3611573))

(assert (= (and b!3611573 (not res!1460941)) b!3611572))

(assert (= (and b!3611572 (not res!1460950)) b!3611565))

(assert (= (and b!3611565 res!1460939) b!3611579))

(assert (= (and b!3611579 res!1460935) b!3611575))

(assert (= (and b!3611565 (not res!1460946)) b!3611576))

(assert (= (and b!3611576 (not res!1460942)) b!3611585))

(assert (= (and b!3611585 (not res!1460930)) b!3611569))

(assert (= (and b!3611569 (not res!1460940)) b!3611587))

(assert (= (and b!3611587 c!624818) b!3611593))

(assert (= (and b!3611587 (not c!624818)) b!3611582))

(assert (= (and b!3611587 c!624814) b!3611590))

(assert (= (and b!3611587 (not c!624814)) b!3611594))

(assert (= (and b!3611590 c!624815) b!3611578))

(assert (= (and b!3611590 (not c!624815)) b!3611563))

(assert (= (and b!3611594 c!624817) b!3611597))

(assert (= (and b!3611594 (not c!624817)) b!3611603))

(assert (= (or b!3611578 b!3611597) bm!261090))

(assert (= (or b!3611578 b!3611597) bm!261089))

(assert (= (or b!3611578 b!3611597) bm!261093))

(assert (= (and b!3611587 c!624819) b!3611605))

(assert (= (and b!3611587 (not c!624819)) b!3611596))

(assert (= (and b!3611605 c!624816) b!3611591))

(assert (= (and b!3611605 (not c!624816)) b!3611562))

(assert (= (or b!3611591 b!3611562) bm!261092))

(assert (= (or b!3611591 b!3611562) bm!261091))

(assert (= (or b!3611591 b!3611562) bm!261088))

(assert (= (and b!3611587 c!624813) b!3611606))

(assert (= (and b!3611587 (not c!624813)) b!3611599))

(assert (= b!3611584 b!3611566))

(assert (= b!3611564 b!3611584))

(assert (= (and start!336242 ((_ is Cons!38017) rules!3307)) b!3611564))

(assert (= (and start!336242 ((_ is Cons!38016) suffix!1395)) b!3611577))

(assert (= b!3611571 b!3611567))

(assert (= b!3611581 b!3611571))

(assert (= start!336242 b!3611581))

(assert (= b!3611600 b!3611601))

(assert (= start!336242 b!3611600))

(assert (= b!3611589 b!3611595))

(assert (= start!336242 b!3611589))

(declare-fun m!4109375 () Bool)

(assert (=> b!3611571 m!4109375))

(declare-fun m!4109377 () Bool)

(assert (=> b!3611571 m!4109377))

(declare-fun m!4109379 () Bool)

(assert (=> b!3611572 m!4109379))

(declare-fun m!4109381 () Bool)

(assert (=> bm!261089 m!4109381))

(declare-fun m!4109383 () Bool)

(assert (=> b!3611579 m!4109383))

(assert (=> b!3611579 m!4109383))

(declare-fun m!4109385 () Bool)

(assert (=> b!3611579 m!4109385))

(assert (=> b!3611579 m!4109385))

(declare-fun m!4109387 () Bool)

(assert (=> b!3611579 m!4109387))

(declare-fun m!4109389 () Bool)

(assert (=> b!3611579 m!4109389))

(declare-fun m!4109391 () Bool)

(assert (=> bm!261092 m!4109391))

(declare-fun m!4109393 () Bool)

(assert (=> b!3611600 m!4109393))

(declare-fun m!4109395 () Bool)

(assert (=> b!3611600 m!4109395))

(declare-fun m!4109397 () Bool)

(assert (=> bm!261090 m!4109397))

(declare-fun m!4109399 () Bool)

(assert (=> b!3611585 m!4109399))

(declare-fun m!4109401 () Bool)

(assert (=> b!3611585 m!4109401))

(declare-fun m!4109403 () Bool)

(assert (=> b!3611585 m!4109403))

(assert (=> b!3611585 m!4109399))

(declare-fun m!4109405 () Bool)

(assert (=> b!3611585 m!4109405))

(declare-fun m!4109407 () Bool)

(assert (=> b!3611585 m!4109407))

(declare-fun m!4109409 () Bool)

(assert (=> b!3611585 m!4109409))

(declare-fun m!4109411 () Bool)

(assert (=> b!3611580 m!4109411))

(declare-fun m!4109413 () Bool)

(assert (=> b!3611588 m!4109413))

(declare-fun m!4109415 () Bool)

(assert (=> b!3611581 m!4109415))

(declare-fun m!4109417 () Bool)

(assert (=> b!3611574 m!4109417))

(declare-fun m!4109419 () Bool)

(assert (=> b!3611586 m!4109419))

(declare-fun m!4109421 () Bool)

(assert (=> b!3611586 m!4109421))

(declare-fun m!4109423 () Bool)

(assert (=> b!3611586 m!4109423))

(declare-fun m!4109425 () Bool)

(assert (=> b!3611598 m!4109425))

(declare-fun m!4109427 () Bool)

(assert (=> b!3611598 m!4109427))

(declare-fun m!4109429 () Bool)

(assert (=> b!3611598 m!4109429))

(declare-fun m!4109431 () Bool)

(assert (=> b!3611598 m!4109431))

(declare-fun m!4109433 () Bool)

(assert (=> bm!261093 m!4109433))

(declare-fun m!4109435 () Bool)

(assert (=> bm!261088 m!4109435))

(declare-fun m!4109437 () Bool)

(assert (=> b!3611606 m!4109437))

(declare-fun m!4109439 () Bool)

(assert (=> b!3611578 m!4109439))

(declare-fun m!4109441 () Bool)

(assert (=> b!3611589 m!4109441))

(declare-fun m!4109443 () Bool)

(assert (=> b!3611589 m!4109443))

(declare-fun m!4109445 () Bool)

(assert (=> b!3611597 m!4109445))

(declare-fun m!4109447 () Bool)

(assert (=> b!3611604 m!4109447))

(declare-fun m!4109449 () Bool)

(assert (=> b!3611584 m!4109449))

(declare-fun m!4109451 () Bool)

(assert (=> b!3611584 m!4109451))

(declare-fun m!4109453 () Bool)

(assert (=> b!3611591 m!4109453))

(assert (=> bm!261091 m!4109381))

(declare-fun m!4109455 () Bool)

(assert (=> b!3611576 m!4109455))

(declare-fun m!4109457 () Bool)

(assert (=> b!3611568 m!4109457))

(declare-fun m!4109459 () Bool)

(assert (=> b!3611593 m!4109459))

(declare-fun m!4109461 () Bool)

(assert (=> b!3611565 m!4109461))

(declare-fun m!4109463 () Bool)

(assert (=> b!3611565 m!4109463))

(declare-fun m!4109465 () Bool)

(assert (=> b!3611565 m!4109465))

(declare-fun m!4109467 () Bool)

(assert (=> b!3611565 m!4109467))

(declare-fun m!4109469 () Bool)

(assert (=> b!3611565 m!4109469))

(declare-fun m!4109471 () Bool)

(assert (=> b!3611565 m!4109471))

(declare-fun m!4109473 () Bool)

(assert (=> b!3611565 m!4109473))

(declare-fun m!4109475 () Bool)

(assert (=> b!3611565 m!4109475))

(declare-fun m!4109477 () Bool)

(assert (=> b!3611565 m!4109477))

(declare-fun m!4109479 () Bool)

(assert (=> b!3611565 m!4109479))

(declare-fun m!4109481 () Bool)

(assert (=> b!3611565 m!4109481))

(assert (=> b!3611565 m!4109467))

(declare-fun m!4109483 () Bool)

(assert (=> b!3611565 m!4109483))

(declare-fun m!4109485 () Bool)

(assert (=> b!3611565 m!4109485))

(declare-fun m!4109487 () Bool)

(assert (=> b!3611565 m!4109487))

(assert (=> b!3611565 m!4109383))

(declare-fun m!4109489 () Bool)

(assert (=> b!3611602 m!4109489))

(declare-fun m!4109491 () Bool)

(assert (=> b!3611602 m!4109491))

(declare-fun m!4109493 () Bool)

(assert (=> b!3611602 m!4109493))

(declare-fun m!4109495 () Bool)

(assert (=> b!3611605 m!4109495))

(declare-fun m!4109497 () Bool)

(assert (=> b!3611605 m!4109497))

(declare-fun m!4109499 () Bool)

(assert (=> start!336242 m!4109499))

(declare-fun m!4109501 () Bool)

(assert (=> b!3611573 m!4109501))

(assert (=> b!3611573 m!4109501))

(declare-fun m!4109503 () Bool)

(assert (=> b!3611573 m!4109503))

(declare-fun m!4109505 () Bool)

(assert (=> b!3611561 m!4109505))

(declare-fun m!4109507 () Bool)

(assert (=> b!3611592 m!4109507))

(declare-fun m!4109509 () Bool)

(assert (=> b!3611587 m!4109509))

(declare-fun m!4109511 () Bool)

(assert (=> b!3611587 m!4109511))

(declare-fun m!4109513 () Bool)

(assert (=> b!3611587 m!4109513))

(declare-fun m!4109515 () Bool)

(assert (=> b!3611587 m!4109515))

(declare-fun m!4109517 () Bool)

(assert (=> b!3611562 m!4109517))

(declare-fun m!4109519 () Bool)

(assert (=> b!3611569 m!4109519))

(declare-fun m!4109521 () Bool)

(assert (=> b!3611569 m!4109521))

(declare-fun m!4109523 () Bool)

(assert (=> b!3611569 m!4109523))

(declare-fun m!4109525 () Bool)

(assert (=> b!3611569 m!4109525))

(declare-fun m!4109527 () Bool)

(assert (=> b!3611569 m!4109527))

(declare-fun m!4109529 () Bool)

(assert (=> b!3611569 m!4109529))

(assert (=> b!3611569 m!4109519))

(declare-fun m!4109531 () Bool)

(assert (=> b!3611569 m!4109531))

(check-sat (not b_next!94513) b_and!263441 (not b!3611591) (not b_next!94523) (not bm!261093) tp_is_empty!17885 (not b!3611593) b_and!263433 (not b_next!94521) (not bm!261089) (not b_next!94525) (not b!3611569) (not b!3611606) (not b!3611562) (not b_next!94517) (not b!3611571) (not start!336242) (not b!3611585) (not b!3611592) (not b_next!94519) (not b!3611579) (not b_next!94515) (not b!3611598) b_and!263437 (not b!3611578) (not b_next!94527) (not b!3611586) (not b!3611561) (not b!3611577) b_and!263431 (not bm!261090) (not b!3611588) b_and!263439 (not b!3611572) (not b!3611580) (not b!3611573) (not b!3611564) (not b!3611568) (not b!3611604) (not b!3611602) (not b!3611584) (not b!3611605) (not b!3611576) (not b!3611597) (not b!3611574) (not b!3611565) b_and!263429 (not b!3611600) (not bm!261088) (not b!3611581) b_and!263427 (not bm!261092) (not bm!261091) (not b!3611589) b_and!263435 (not b!3611587))
(check-sat (not b_next!94517) (not b_next!94513) b_and!263441 (not b_next!94519) (not b_next!94515) (not b_next!94523) b_and!263433 (not b_next!94521) b_and!263429 b_and!263427 b_and!263435 (not b_next!94525) b_and!263437 (not b_next!94527) b_and!263431 b_and!263439)
