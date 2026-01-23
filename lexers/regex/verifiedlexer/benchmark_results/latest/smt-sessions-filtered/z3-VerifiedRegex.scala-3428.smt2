; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192996 () Bool)

(assert start!192996)

(declare-fun b!1925820 () Bool)

(declare-fun b_free!55177 () Bool)

(declare-fun b_next!55881 () Bool)

(assert (=> b!1925820 (= b_free!55177 (not b_next!55881))))

(declare-fun tp!550247 () Bool)

(declare-fun b_and!150939 () Bool)

(assert (=> b!1925820 (= tp!550247 b_and!150939)))

(declare-fun b_free!55179 () Bool)

(declare-fun b_next!55883 () Bool)

(assert (=> b!1925820 (= b_free!55179 (not b_next!55883))))

(declare-fun tp!550246 () Bool)

(declare-fun b_and!150941 () Bool)

(assert (=> b!1925820 (= tp!550246 b_and!150941)))

(declare-fun b!1925828 () Bool)

(declare-fun b_free!55181 () Bool)

(declare-fun b_next!55885 () Bool)

(assert (=> b!1925828 (= b_free!55181 (not b_next!55885))))

(declare-fun tp!550253 () Bool)

(declare-fun b_and!150943 () Bool)

(assert (=> b!1925828 (= tp!550253 b_and!150943)))

(declare-fun b_free!55183 () Bool)

(declare-fun b_next!55887 () Bool)

(assert (=> b!1925828 (= b_free!55183 (not b_next!55887))))

(declare-fun tp!550249 () Bool)

(declare-fun b_and!150945 () Bool)

(assert (=> b!1925828 (= tp!550249 b_and!150945)))

(declare-fun b!1925834 () Bool)

(declare-fun b_free!55185 () Bool)

(declare-fun b_next!55889 () Bool)

(assert (=> b!1925834 (= b_free!55185 (not b_next!55889))))

(declare-fun tp!550248 () Bool)

(declare-fun b_and!150947 () Bool)

(assert (=> b!1925834 (= tp!550248 b_and!150947)))

(declare-fun b_free!55187 () Bool)

(declare-fun b_next!55891 () Bool)

(assert (=> b!1925834 (= b_free!55187 (not b_next!55891))))

(declare-fun tp!550251 () Bool)

(declare-fun b_and!150949 () Bool)

(assert (=> b!1925834 (= tp!550251 b_and!150949)))

(declare-fun b!1925816 () Bool)

(declare-fun res!861165 () Bool)

(declare-fun e!1231075 () Bool)

(assert (=> b!1925816 (=> (not res!861165) (not e!1231075))))

(declare-datatypes ((List!22006 0))(
  ( (Nil!21924) (Cons!21924 (h!27325 (_ BitVec 16)) (t!179443 List!22006)) )
))
(declare-datatypes ((TokenValue!4068 0))(
  ( (FloatLiteralValue!8136 (text!28921 List!22006)) (TokenValueExt!4067 (__x!13634 Int)) (Broken!20340 (value!123627 List!22006)) (Object!4149) (End!4068) (Def!4068) (Underscore!4068) (Match!4068) (Else!4068) (Error!4068) (Case!4068) (If!4068) (Extends!4068) (Abstract!4068) (Class!4068) (Val!4068) (DelimiterValue!8136 (del!4128 List!22006)) (KeywordValue!4074 (value!123628 List!22006)) (CommentValue!8136 (value!123629 List!22006)) (WhitespaceValue!8136 (value!123630 List!22006)) (IndentationValue!4068 (value!123631 List!22006)) (String!25457) (Int32!4068) (Broken!20341 (value!123632 List!22006)) (Boolean!4069) (Unit!36263) (OperatorValue!4071 (op!4128 List!22006)) (IdentifierValue!8136 (value!123633 List!22006)) (IdentifierValue!8137 (value!123634 List!22006)) (WhitespaceValue!8137 (value!123635 List!22006)) (True!8136) (False!8136) (Broken!20342 (value!123636 List!22006)) (Broken!20343 (value!123637 List!22006)) (True!8137) (RightBrace!4068) (RightBracket!4068) (Colon!4068) (Null!4068) (Comma!4068) (LeftBracket!4068) (False!8137) (LeftBrace!4068) (ImaginaryLiteralValue!4068 (text!28922 List!22006)) (StringLiteralValue!12204 (value!123638 List!22006)) (EOFValue!4068 (value!123639 List!22006)) (IdentValue!4068 (value!123640 List!22006)) (DelimiterValue!8137 (value!123641 List!22006)) (DedentValue!4068 (value!123642 List!22006)) (NewLineValue!4068 (value!123643 List!22006)) (IntegerValue!12204 (value!123644 (_ BitVec 32)) (text!28923 List!22006)) (IntegerValue!12205 (value!123645 Int) (text!28924 List!22006)) (Times!4068) (Or!4068) (Equal!4068) (Minus!4068) (Broken!20344 (value!123646 List!22006)) (And!4068) (Div!4068) (LessEqual!4068) (Mod!4068) (Concat!9425) (Not!4068) (Plus!4068) (SpaceValue!4068 (value!123647 List!22006)) (IntegerValue!12206 (value!123648 Int) (text!28925 List!22006)) (StringLiteralValue!12205 (text!28926 List!22006)) (FloatLiteralValue!8137 (text!28927 List!22006)) (BytesLiteralValue!4068 (value!123649 List!22006)) (CommentValue!8137 (value!123650 List!22006)) (StringLiteralValue!12206 (value!123651 List!22006)) (ErrorTokenValue!4068 (msg!4129 List!22006)) )
))
(declare-datatypes ((C!10860 0))(
  ( (C!10861 (val!6382 Int)) )
))
(declare-datatypes ((List!22007 0))(
  ( (Nil!21925) (Cons!21925 (h!27326 C!10860) (t!179444 List!22007)) )
))
(declare-datatypes ((Regex!5357 0))(
  ( (ElementMatch!5357 (c!313092 C!10860)) (Concat!9426 (regOne!11226 Regex!5357) (regTwo!11226 Regex!5357)) (EmptyExpr!5357) (Star!5357 (reg!5686 Regex!5357)) (EmptyLang!5357) (Union!5357 (regOne!11227 Regex!5357) (regTwo!11227 Regex!5357)) )
))
(declare-datatypes ((String!25458 0))(
  ( (String!25459 (value!123652 String)) )
))
(declare-datatypes ((IArray!14641 0))(
  ( (IArray!14642 (innerList!7378 List!22007)) )
))
(declare-datatypes ((Conc!7318 0))(
  ( (Node!7318 (left!17438 Conc!7318) (right!17768 Conc!7318) (csize!14866 Int) (cheight!7529 Int)) (Leaf!10747 (xs!10212 IArray!14641) (csize!14867 Int)) (Empty!7318) )
))
(declare-datatypes ((BalanceConc!14452 0))(
  ( (BalanceConc!14453 (c!313093 Conc!7318)) )
))
(declare-datatypes ((TokenValueInjection!7720 0))(
  ( (TokenValueInjection!7721 (toValue!5565 Int) (toChars!5424 Int)) )
))
(declare-datatypes ((Rule!7664 0))(
  ( (Rule!7665 (regex!3932 Regex!5357) (tag!4376 String!25458) (isSeparator!3932 Bool) (transformation!3932 TokenValueInjection!7720)) )
))
(declare-datatypes ((Token!7416 0))(
  ( (Token!7417 (value!123653 TokenValue!4068) (rule!6137 Rule!7664) (size!17102 Int) (originalCharacters!4739 List!22007)) )
))
(declare-datatypes ((List!22008 0))(
  ( (Nil!21926) (Cons!21926 (h!27327 Token!7416) (t!179445 List!22008)) )
))
(declare-fun tokens!598 () List!22008)

(get-info :version)

(assert (=> b!1925816 (= res!861165 ((_ is Cons!21926) tokens!598))))

(declare-fun b!1925817 () Bool)

(declare-fun e!1231076 () Bool)

(assert (=> b!1925817 (= e!1231076 false)))

(declare-fun b!1925818 () Bool)

(declare-datatypes ((Unit!36264 0))(
  ( (Unit!36265) )
))
(declare-fun e!1231074 () Unit!36264)

(declare-fun Unit!36266 () Unit!36264)

(assert (=> b!1925818 (= e!1231074 Unit!36266)))

(declare-fun separatorToken!354 () Token!7416)

(declare-fun lt!738102 () List!22007)

(declare-fun lt!738094 () Unit!36264)

(declare-fun lt!738108 () C!10860)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!284 (Regex!5357 List!22007 C!10860) Unit!36264)

(assert (=> b!1925818 (= lt!738094 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!284 (regex!3932 (rule!6137 separatorToken!354)) lt!738102 lt!738108))))

(declare-fun res!861170 () Bool)

(declare-fun matchR!2625 (Regex!5357 List!22007) Bool)

(assert (=> b!1925818 (= res!861170 (not (matchR!2625 (regex!3932 (rule!6137 separatorToken!354)) lt!738102)))))

(assert (=> b!1925818 (=> (not res!861170) (not e!1231076))))

(assert (=> b!1925818 e!1231076))

(declare-datatypes ((LexerInterface!3545 0))(
  ( (LexerInterfaceExt!3542 (__x!13635 Int)) (Lexer!3543) )
))
(declare-fun thiss!23328 () LexerInterface!3545)

(declare-fun e!1231071 () Bool)

(declare-datatypes ((List!22009 0))(
  ( (Nil!21927) (Cons!21927 (h!27328 Rule!7664) (t!179446 List!22009)) )
))
(declare-fun rules!3198 () List!22009)

(declare-fun b!1925819 () Bool)

(declare-fun rulesProduceIndividualToken!1717 (LexerInterface!3545 List!22009 Token!7416) Bool)

(assert (=> b!1925819 (= e!1231071 (rulesProduceIndividualToken!1717 thiss!23328 rules!3198 (h!27327 tokens!598)))))

(declare-fun e!1231082 () Bool)

(assert (=> b!1925820 (= e!1231082 (and tp!550247 tp!550246))))

(declare-fun tp!550252 () Bool)

(declare-fun e!1231069 () Bool)

(declare-fun e!1231065 () Bool)

(declare-fun b!1925821 () Bool)

(declare-fun inv!21 (TokenValue!4068) Bool)

(assert (=> b!1925821 (= e!1231065 (and (inv!21 (value!123653 separatorToken!354)) e!1231069 tp!550252))))

(declare-fun b!1925822 () Bool)

(declare-fun res!861157 () Bool)

(assert (=> b!1925822 (=> (not res!861157) (not e!1231075))))

(declare-fun lambda!75143 () Int)

(declare-fun forall!4634 (List!22008 Int) Bool)

(assert (=> b!1925822 (= res!861157 (forall!4634 tokens!598 lambda!75143))))

(declare-fun b!1925824 () Bool)

(declare-fun e!1231072 () Bool)

(declare-fun tp!550250 () Bool)

(declare-fun e!1231064 () Bool)

(declare-fun inv!29001 (String!25458) Bool)

(declare-fun inv!29004 (TokenValueInjection!7720) Bool)

(assert (=> b!1925824 (= e!1231072 (and tp!550250 (inv!29001 (tag!4376 (rule!6137 (h!27327 tokens!598)))) (inv!29004 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) e!1231064))))

(declare-fun b!1925825 () Bool)

(declare-fun res!861159 () Bool)

(assert (=> b!1925825 (=> (not res!861159) (not e!1231075))))

(declare-fun rulesProduceEachTokenIndividuallyList!1276 (LexerInterface!3545 List!22009 List!22008) Bool)

(assert (=> b!1925825 (= res!861159 (rulesProduceEachTokenIndividuallyList!1276 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1925826 () Bool)

(declare-fun e!1231085 () Bool)

(declare-fun lt!738097 () Rule!7664)

(assert (=> b!1925826 (= e!1231085 (= (rule!6137 (h!27327 tokens!598)) lt!738097))))

(declare-fun b!1925827 () Bool)

(declare-fun res!861168 () Bool)

(assert (=> b!1925827 (=> (not res!861168) (not e!1231075))))

(assert (=> b!1925827 (= res!861168 (rulesProduceIndividualToken!1717 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1925828 (= e!1231064 (and tp!550253 tp!550249))))

(declare-fun b!1925829 () Bool)

(declare-fun e!1231087 () Bool)

(assert (=> b!1925829 (= e!1231075 (not e!1231087))))

(declare-fun res!861167 () Bool)

(assert (=> b!1925829 (=> res!861167 e!1231087)))

(declare-fun lt!738088 () Bool)

(declare-datatypes ((tuple2!20538 0))(
  ( (tuple2!20539 (_1!11738 Token!7416) (_2!11738 List!22007)) )
))
(declare-datatypes ((Option!4539 0))(
  ( (None!4538) (Some!4538 (v!26625 tuple2!20538)) )
))
(declare-fun lt!738087 () Option!4539)

(assert (=> b!1925829 (= res!861167 (or (and (not lt!738088) (= (_1!11738 (v!26625 lt!738087)) (h!27327 tokens!598))) lt!738088 (= (_1!11738 (v!26625 lt!738087)) (h!27327 tokens!598))))))

(assert (=> b!1925829 (= lt!738088 (not ((_ is Some!4538) lt!738087)))))

(declare-fun lt!738105 () List!22007)

(declare-fun lt!738086 () List!22007)

(declare-fun maxPrefix!1983 (LexerInterface!3545 List!22009 List!22007) Option!4539)

(declare-fun ++!5877 (List!22007 List!22007) List!22007)

(assert (=> b!1925829 (= lt!738087 (maxPrefix!1983 thiss!23328 rules!3198 (++!5877 lt!738086 lt!738105)))))

(declare-fun printWithSeparatorTokenWhenNeededList!584 (LexerInterface!3545 List!22009 List!22008 Token!7416) List!22007)

(assert (=> b!1925829 (= lt!738105 (printWithSeparatorTokenWhenNeededList!584 thiss!23328 rules!3198 (t!179445 tokens!598) separatorToken!354))))

(declare-fun e!1231088 () Bool)

(assert (=> b!1925829 e!1231088))

(declare-fun res!861156 () Bool)

(assert (=> b!1925829 (=> (not res!861156) (not e!1231088))))

(declare-datatypes ((Option!4540 0))(
  ( (None!4539) (Some!4539 (v!26626 Rule!7664)) )
))
(declare-fun lt!738089 () Option!4540)

(declare-fun isDefined!3833 (Option!4540) Bool)

(assert (=> b!1925829 (= res!861156 (isDefined!3833 lt!738089))))

(declare-fun getRuleFromTag!753 (LexerInterface!3545 List!22009 String!25458) Option!4540)

(assert (=> b!1925829 (= lt!738089 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 (h!27327 tokens!598)))))))

(declare-fun lt!738099 () Unit!36264)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!753 (LexerInterface!3545 List!22009 List!22007 Token!7416) Unit!36264)

(assert (=> b!1925829 (= lt!738099 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!753 thiss!23328 rules!3198 lt!738086 (h!27327 tokens!598)))))

(declare-fun e!1231077 () Bool)

(assert (=> b!1925829 e!1231077))

(declare-fun res!861162 () Bool)

(assert (=> b!1925829 (=> (not res!861162) (not e!1231077))))

(declare-fun lt!738096 () Option!4539)

(declare-fun isDefined!3834 (Option!4539) Bool)

(assert (=> b!1925829 (= res!861162 (isDefined!3834 lt!738096))))

(assert (=> b!1925829 (= lt!738096 (maxPrefix!1983 thiss!23328 rules!3198 lt!738086))))

(declare-fun lt!738104 () BalanceConc!14452)

(declare-fun list!8865 (BalanceConc!14452) List!22007)

(assert (=> b!1925829 (= lt!738086 (list!8865 lt!738104))))

(declare-fun e!1231080 () Bool)

(assert (=> b!1925829 e!1231080))

(declare-fun res!861171 () Bool)

(assert (=> b!1925829 (=> (not res!861171) (not e!1231080))))

(declare-fun lt!738091 () Option!4540)

(assert (=> b!1925829 (= res!861171 (isDefined!3833 lt!738091))))

(assert (=> b!1925829 (= lt!738091 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 separatorToken!354))))))

(declare-fun lt!738107 () Unit!36264)

(assert (=> b!1925829 (= lt!738107 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!753 thiss!23328 rules!3198 lt!738102 separatorToken!354))))

(declare-fun charsOf!2472 (Token!7416) BalanceConc!14452)

(assert (=> b!1925829 (= lt!738102 (list!8865 (charsOf!2472 separatorToken!354)))))

(declare-fun lt!738095 () Unit!36264)

(declare-fun lemmaEqSameImage!618 (TokenValueInjection!7720 BalanceConc!14452 BalanceConc!14452) Unit!36264)

(declare-fun seqFromList!2786 (List!22007) BalanceConc!14452)

(assert (=> b!1925829 (= lt!738095 (lemmaEqSameImage!618 (transformation!3932 (rule!6137 (h!27327 tokens!598))) lt!738104 (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598)))))))

(declare-fun lt!738092 () Unit!36264)

(declare-fun lemmaSemiInverse!889 (TokenValueInjection!7720 BalanceConc!14452) Unit!36264)

(assert (=> b!1925829 (= lt!738092 (lemmaSemiInverse!889 (transformation!3932 (rule!6137 (h!27327 tokens!598))) lt!738104))))

(assert (=> b!1925829 (= lt!738104 (charsOf!2472 (h!27327 tokens!598)))))

(declare-fun tp!550245 () Bool)

(declare-fun b!1925830 () Bool)

(declare-fun e!1231081 () Bool)

(declare-fun e!1231079 () Bool)

(declare-fun inv!29005 (Token!7416) Bool)

(assert (=> b!1925830 (= e!1231079 (and (inv!29005 (h!27327 tokens!598)) e!1231081 tp!550245))))

(declare-fun b!1925831 () Bool)

(declare-fun res!861161 () Bool)

(assert (=> b!1925831 (=> (not res!861161) (not e!1231075))))

(declare-fun sepAndNonSepRulesDisjointChars!1030 (List!22009 List!22009) Bool)

(assert (=> b!1925831 (= res!861161 (sepAndNonSepRulesDisjointChars!1030 rules!3198 rules!3198))))

(declare-fun b!1925832 () Bool)

(assert (=> b!1925832 (= e!1231087 e!1231071)))

(declare-fun res!861158 () Bool)

(assert (=> b!1925832 (=> res!861158 e!1231071)))

(declare-fun lt!738098 () List!22007)

(declare-fun lt!738100 () List!22007)

(assert (=> b!1925832 (= res!861158 (or (not (= lt!738100 lt!738098)) (not (= lt!738098 lt!738086)) (not (= lt!738100 lt!738086))))))

(declare-fun printList!1080 (LexerInterface!3545 List!22008) List!22007)

(assert (=> b!1925832 (= lt!738098 (printList!1080 thiss!23328 (Cons!21926 (h!27327 tokens!598) Nil!21926)))))

(declare-fun lt!738101 () BalanceConc!14452)

(assert (=> b!1925832 (= lt!738100 (list!8865 lt!738101))))

(declare-datatypes ((IArray!14643 0))(
  ( (IArray!14644 (innerList!7379 List!22008)) )
))
(declare-datatypes ((Conc!7319 0))(
  ( (Node!7319 (left!17439 Conc!7319) (right!17769 Conc!7319) (csize!14868 Int) (cheight!7530 Int)) (Leaf!10748 (xs!10213 IArray!14643) (csize!14869 Int)) (Empty!7319) )
))
(declare-datatypes ((BalanceConc!14454 0))(
  ( (BalanceConc!14455 (c!313094 Conc!7319)) )
))
(declare-fun lt!738085 () BalanceConc!14454)

(declare-fun printTailRec!1021 (LexerInterface!3545 BalanceConc!14454 Int BalanceConc!14452) BalanceConc!14452)

(assert (=> b!1925832 (= lt!738101 (printTailRec!1021 thiss!23328 lt!738085 0 (BalanceConc!14453 Empty!7318)))))

(declare-fun print!1515 (LexerInterface!3545 BalanceConc!14454) BalanceConc!14452)

(assert (=> b!1925832 (= lt!738101 (print!1515 thiss!23328 lt!738085))))

(declare-fun singletonSeq!1916 (Token!7416) BalanceConc!14454)

(assert (=> b!1925832 (= lt!738085 (singletonSeq!1916 (h!27327 tokens!598)))))

(declare-fun contains!3961 (List!22007 C!10860) Bool)

(declare-fun usedCharacters!384 (Regex!5357) List!22007)

(assert (=> b!1925832 (not (contains!3961 (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598)))) lt!738108))))

(declare-fun lt!738103 () Unit!36264)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!80 (LexerInterface!3545 List!22009 List!22009 Rule!7664 Rule!7664 C!10860) Unit!36264)

(assert (=> b!1925832 (= lt!738103 (lemmaNonSepRuleNotContainsCharContainedInASepRule!80 thiss!23328 rules!3198 rules!3198 (rule!6137 (h!27327 tokens!598)) (rule!6137 separatorToken!354) lt!738108))))

(declare-fun lt!738090 () Unit!36264)

(assert (=> b!1925832 (= lt!738090 e!1231074)))

(declare-fun c!313091 () Bool)

(assert (=> b!1925832 (= c!313091 (not (contains!3961 (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354))) lt!738108)))))

(declare-fun head!4490 (List!22007) C!10860)

(assert (=> b!1925832 (= lt!738108 (head!4490 lt!738102))))

(assert (=> b!1925832 (= (++!5877 (++!5877 lt!738086 lt!738102) lt!738105) (++!5877 lt!738086 (++!5877 lt!738102 lt!738105)))))

(declare-fun lt!738093 () Unit!36264)

(declare-fun lemmaConcatAssociativity!1191 (List!22007 List!22007 List!22007) Unit!36264)

(assert (=> b!1925832 (= lt!738093 (lemmaConcatAssociativity!1191 lt!738086 lt!738102 lt!738105))))

(declare-fun tp!550254 () Bool)

(declare-fun b!1925833 () Bool)

(assert (=> b!1925833 (= e!1231081 (and (inv!21 (value!123653 (h!27327 tokens!598))) e!1231072 tp!550254))))

(declare-fun e!1231066 () Bool)

(assert (=> b!1925834 (= e!1231066 (and tp!550248 tp!550251))))

(declare-fun b!1925835 () Bool)

(declare-fun res!861163 () Bool)

(assert (=> b!1925835 (=> (not res!861163) (not e!1231075))))

(declare-fun rulesInvariant!3152 (LexerInterface!3545 List!22009) Bool)

(assert (=> b!1925835 (= res!861163 (rulesInvariant!3152 thiss!23328 rules!3198))))

(declare-fun b!1925836 () Bool)

(declare-fun tp!550242 () Bool)

(declare-fun e!1231068 () Bool)

(assert (=> b!1925836 (= e!1231068 (and tp!550242 (inv!29001 (tag!4376 (h!27328 rules!3198))) (inv!29004 (transformation!3932 (h!27328 rules!3198))) e!1231066))))

(declare-fun b!1925837 () Bool)

(declare-fun e!1231083 () Bool)

(assert (=> b!1925837 (= e!1231080 e!1231083)))

(declare-fun res!861166 () Bool)

(assert (=> b!1925837 (=> (not res!861166) (not e!1231083))))

(declare-fun lt!738106 () Rule!7664)

(assert (=> b!1925837 (= res!861166 (matchR!2625 (regex!3932 lt!738106) lt!738102))))

(declare-fun get!6902 (Option!4540) Rule!7664)

(assert (=> b!1925837 (= lt!738106 (get!6902 lt!738091))))

(declare-fun b!1925838 () Bool)

(declare-fun Unit!36267 () Unit!36264)

(assert (=> b!1925838 (= e!1231074 Unit!36267)))

(declare-fun b!1925839 () Bool)

(declare-fun get!6903 (Option!4539) tuple2!20538)

(assert (=> b!1925839 (= e!1231077 (= (_1!11738 (get!6903 lt!738096)) (h!27327 tokens!598)))))

(declare-fun b!1925840 () Bool)

(declare-fun e!1231073 () Bool)

(declare-fun tp!550244 () Bool)

(assert (=> b!1925840 (= e!1231073 (and e!1231068 tp!550244))))

(declare-fun b!1925841 () Bool)

(declare-fun tp!550243 () Bool)

(assert (=> b!1925841 (= e!1231069 (and tp!550243 (inv!29001 (tag!4376 (rule!6137 separatorToken!354))) (inv!29004 (transformation!3932 (rule!6137 separatorToken!354))) e!1231082))))

(declare-fun b!1925842 () Bool)

(assert (=> b!1925842 (= e!1231083 (= (rule!6137 separatorToken!354) lt!738106))))

(declare-fun b!1925823 () Bool)

(declare-fun res!861160 () Bool)

(assert (=> b!1925823 (=> (not res!861160) (not e!1231075))))

(declare-fun isEmpty!13496 (List!22009) Bool)

(assert (=> b!1925823 (= res!861160 (not (isEmpty!13496 rules!3198)))))

(declare-fun res!861172 () Bool)

(assert (=> start!192996 (=> (not res!861172) (not e!1231075))))

(assert (=> start!192996 (= res!861172 ((_ is Lexer!3543) thiss!23328))))

(assert (=> start!192996 e!1231075))

(assert (=> start!192996 true))

(assert (=> start!192996 e!1231073))

(assert (=> start!192996 e!1231079))

(assert (=> start!192996 (and (inv!29005 separatorToken!354) e!1231065)))

(declare-fun b!1925843 () Bool)

(assert (=> b!1925843 (= e!1231088 e!1231085)))

(declare-fun res!861169 () Bool)

(assert (=> b!1925843 (=> (not res!861169) (not e!1231085))))

(assert (=> b!1925843 (= res!861169 (matchR!2625 (regex!3932 lt!738097) lt!738086))))

(assert (=> b!1925843 (= lt!738097 (get!6902 lt!738089))))

(declare-fun b!1925844 () Bool)

(declare-fun res!861164 () Bool)

(assert (=> b!1925844 (=> (not res!861164) (not e!1231075))))

(assert (=> b!1925844 (= res!861164 (isSeparator!3932 (rule!6137 separatorToken!354)))))

(assert (= (and start!192996 res!861172) b!1925823))

(assert (= (and b!1925823 res!861160) b!1925835))

(assert (= (and b!1925835 res!861163) b!1925825))

(assert (= (and b!1925825 res!861159) b!1925827))

(assert (= (and b!1925827 res!861168) b!1925844))

(assert (= (and b!1925844 res!861164) b!1925822))

(assert (= (and b!1925822 res!861157) b!1925831))

(assert (= (and b!1925831 res!861161) b!1925816))

(assert (= (and b!1925816 res!861165) b!1925829))

(assert (= (and b!1925829 res!861171) b!1925837))

(assert (= (and b!1925837 res!861166) b!1925842))

(assert (= (and b!1925829 res!861162) b!1925839))

(assert (= (and b!1925829 res!861156) b!1925843))

(assert (= (and b!1925843 res!861169) b!1925826))

(assert (= (and b!1925829 (not res!861167)) b!1925832))

(assert (= (and b!1925832 c!313091) b!1925818))

(assert (= (and b!1925832 (not c!313091)) b!1925838))

(assert (= (and b!1925818 res!861170) b!1925817))

(assert (= (and b!1925832 (not res!861158)) b!1925819))

(assert (= b!1925836 b!1925834))

(assert (= b!1925840 b!1925836))

(assert (= (and start!192996 ((_ is Cons!21927) rules!3198)) b!1925840))

(assert (= b!1925824 b!1925828))

(assert (= b!1925833 b!1925824))

(assert (= b!1925830 b!1925833))

(assert (= (and start!192996 ((_ is Cons!21926) tokens!598)) b!1925830))

(assert (= b!1925841 b!1925820))

(assert (= b!1925821 b!1925841))

(assert (= start!192996 b!1925821))

(declare-fun m!2361809 () Bool)

(assert (=> b!1925819 m!2361809))

(declare-fun m!2361811 () Bool)

(assert (=> b!1925835 m!2361811))

(declare-fun m!2361813 () Bool)

(assert (=> b!1925827 m!2361813))

(declare-fun m!2361815 () Bool)

(assert (=> b!1925832 m!2361815))

(declare-fun m!2361817 () Bool)

(assert (=> b!1925832 m!2361817))

(declare-fun m!2361819 () Bool)

(assert (=> b!1925832 m!2361819))

(declare-fun m!2361821 () Bool)

(assert (=> b!1925832 m!2361821))

(declare-fun m!2361823 () Bool)

(assert (=> b!1925832 m!2361823))

(declare-fun m!2361825 () Bool)

(assert (=> b!1925832 m!2361825))

(assert (=> b!1925832 m!2361821))

(declare-fun m!2361827 () Bool)

(assert (=> b!1925832 m!2361827))

(declare-fun m!2361829 () Bool)

(assert (=> b!1925832 m!2361829))

(declare-fun m!2361831 () Bool)

(assert (=> b!1925832 m!2361831))

(assert (=> b!1925832 m!2361819))

(declare-fun m!2361833 () Bool)

(assert (=> b!1925832 m!2361833))

(declare-fun m!2361835 () Bool)

(assert (=> b!1925832 m!2361835))

(declare-fun m!2361837 () Bool)

(assert (=> b!1925832 m!2361837))

(assert (=> b!1925832 m!2361829))

(declare-fun m!2361839 () Bool)

(assert (=> b!1925832 m!2361839))

(assert (=> b!1925832 m!2361817))

(declare-fun m!2361841 () Bool)

(assert (=> b!1925832 m!2361841))

(declare-fun m!2361843 () Bool)

(assert (=> b!1925832 m!2361843))

(declare-fun m!2361845 () Bool)

(assert (=> b!1925832 m!2361845))

(declare-fun m!2361847 () Bool)

(assert (=> b!1925824 m!2361847))

(declare-fun m!2361849 () Bool)

(assert (=> b!1925824 m!2361849))

(declare-fun m!2361851 () Bool)

(assert (=> b!1925833 m!2361851))

(declare-fun m!2361853 () Bool)

(assert (=> b!1925837 m!2361853))

(declare-fun m!2361855 () Bool)

(assert (=> b!1925837 m!2361855))

(declare-fun m!2361857 () Bool)

(assert (=> start!192996 m!2361857))

(declare-fun m!2361859 () Bool)

(assert (=> b!1925825 m!2361859))

(declare-fun m!2361861 () Bool)

(assert (=> b!1925831 m!2361861))

(declare-fun m!2361863 () Bool)

(assert (=> b!1925843 m!2361863))

(declare-fun m!2361865 () Bool)

(assert (=> b!1925843 m!2361865))

(declare-fun m!2361867 () Bool)

(assert (=> b!1925818 m!2361867))

(declare-fun m!2361869 () Bool)

(assert (=> b!1925818 m!2361869))

(declare-fun m!2361871 () Bool)

(assert (=> b!1925836 m!2361871))

(declare-fun m!2361873 () Bool)

(assert (=> b!1925836 m!2361873))

(declare-fun m!2361875 () Bool)

(assert (=> b!1925829 m!2361875))

(declare-fun m!2361877 () Bool)

(assert (=> b!1925829 m!2361877))

(declare-fun m!2361879 () Bool)

(assert (=> b!1925829 m!2361879))

(declare-fun m!2361881 () Bool)

(assert (=> b!1925829 m!2361881))

(declare-fun m!2361883 () Bool)

(assert (=> b!1925829 m!2361883))

(declare-fun m!2361885 () Bool)

(assert (=> b!1925829 m!2361885))

(declare-fun m!2361887 () Bool)

(assert (=> b!1925829 m!2361887))

(declare-fun m!2361889 () Bool)

(assert (=> b!1925829 m!2361889))

(declare-fun m!2361891 () Bool)

(assert (=> b!1925829 m!2361891))

(declare-fun m!2361893 () Bool)

(assert (=> b!1925829 m!2361893))

(assert (=> b!1925829 m!2361891))

(declare-fun m!2361895 () Bool)

(assert (=> b!1925829 m!2361895))

(declare-fun m!2361897 () Bool)

(assert (=> b!1925829 m!2361897))

(declare-fun m!2361899 () Bool)

(assert (=> b!1925829 m!2361899))

(declare-fun m!2361901 () Bool)

(assert (=> b!1925829 m!2361901))

(declare-fun m!2361903 () Bool)

(assert (=> b!1925829 m!2361903))

(declare-fun m!2361905 () Bool)

(assert (=> b!1925829 m!2361905))

(assert (=> b!1925829 m!2361901))

(declare-fun m!2361907 () Bool)

(assert (=> b!1925829 m!2361907))

(assert (=> b!1925829 m!2361877))

(declare-fun m!2361909 () Bool)

(assert (=> b!1925829 m!2361909))

(declare-fun m!2361911 () Bool)

(assert (=> b!1925822 m!2361911))

(declare-fun m!2361913 () Bool)

(assert (=> b!1925821 m!2361913))

(declare-fun m!2361915 () Bool)

(assert (=> b!1925841 m!2361915))

(declare-fun m!2361917 () Bool)

(assert (=> b!1925841 m!2361917))

(declare-fun m!2361919 () Bool)

(assert (=> b!1925823 m!2361919))

(declare-fun m!2361921 () Bool)

(assert (=> b!1925839 m!2361921))

(declare-fun m!2361923 () Bool)

(assert (=> b!1925830 m!2361923))

(check-sat (not b_next!55885) (not b!1925837) (not b!1925830) (not b_next!55891) (not b!1925829) b_and!150945 (not b!1925827) (not b!1925832) (not b!1925831) (not b!1925821) b_and!150939 b_and!150949 (not b_next!55889) (not b!1925835) (not b!1925823) (not b!1925839) (not b!1925840) b_and!150947 (not b!1925818) (not b_next!55883) b_and!150943 (not b!1925819) (not b!1925833) (not b!1925825) (not start!192996) (not b!1925822) (not b!1925841) b_and!150941 (not b_next!55887) (not b!1925843) (not b_next!55881) (not b!1925836) (not b!1925824))
(check-sat (not b_next!55885) b_and!150947 (not b_next!55891) b_and!150945 b_and!150941 b_and!150939 (not b_next!55887) b_and!150949 (not b_next!55881) (not b_next!55889) (not b_next!55883) b_and!150943)
(get-model)

(declare-fun d!586937 () Bool)

(declare-fun lt!738116 () Bool)

(declare-fun e!1231118 () Bool)

(assert (=> d!586937 (= lt!738116 e!1231118)))

(declare-fun res!861218 () Bool)

(assert (=> d!586937 (=> (not res!861218) (not e!1231118))))

(declare-fun list!8866 (BalanceConc!14454) List!22008)

(declare-datatypes ((tuple2!20540 0))(
  ( (tuple2!20541 (_1!11739 BalanceConc!14454) (_2!11739 BalanceConc!14452)) )
))
(declare-fun lex!1570 (LexerInterface!3545 List!22009 BalanceConc!14452) tuple2!20540)

(assert (=> d!586937 (= res!861218 (= (list!8866 (_1!11739 (lex!1570 thiss!23328 rules!3198 (print!1515 thiss!23328 (singletonSeq!1916 (h!27327 tokens!598)))))) (list!8866 (singletonSeq!1916 (h!27327 tokens!598)))))))

(declare-fun e!1231117 () Bool)

(assert (=> d!586937 (= lt!738116 e!1231117)))

(declare-fun res!861216 () Bool)

(assert (=> d!586937 (=> (not res!861216) (not e!1231117))))

(declare-fun lt!738117 () tuple2!20540)

(declare-fun size!17103 (BalanceConc!14454) Int)

(assert (=> d!586937 (= res!861216 (= (size!17103 (_1!11739 lt!738117)) 1))))

(assert (=> d!586937 (= lt!738117 (lex!1570 thiss!23328 rules!3198 (print!1515 thiss!23328 (singletonSeq!1916 (h!27327 tokens!598)))))))

(assert (=> d!586937 (not (isEmpty!13496 rules!3198))))

(assert (=> d!586937 (= (rulesProduceIndividualToken!1717 thiss!23328 rules!3198 (h!27327 tokens!598)) lt!738116)))

(declare-fun b!1925896 () Bool)

(declare-fun res!861217 () Bool)

(assert (=> b!1925896 (=> (not res!861217) (not e!1231117))))

(declare-fun apply!5686 (BalanceConc!14454 Int) Token!7416)

(assert (=> b!1925896 (= res!861217 (= (apply!5686 (_1!11739 lt!738117) 0) (h!27327 tokens!598)))))

(declare-fun b!1925897 () Bool)

(declare-fun isEmpty!13497 (BalanceConc!14452) Bool)

(assert (=> b!1925897 (= e!1231117 (isEmpty!13497 (_2!11739 lt!738117)))))

(declare-fun b!1925898 () Bool)

(assert (=> b!1925898 (= e!1231118 (isEmpty!13497 (_2!11739 (lex!1570 thiss!23328 rules!3198 (print!1515 thiss!23328 (singletonSeq!1916 (h!27327 tokens!598)))))))))

(assert (= (and d!586937 res!861216) b!1925896))

(assert (= (and b!1925896 res!861217) b!1925897))

(assert (= (and d!586937 res!861218) b!1925898))

(declare-fun m!2361945 () Bool)

(assert (=> d!586937 m!2361945))

(declare-fun m!2361947 () Bool)

(assert (=> d!586937 m!2361947))

(assert (=> d!586937 m!2361835))

(declare-fun m!2361949 () Bool)

(assert (=> d!586937 m!2361949))

(assert (=> d!586937 m!2361835))

(assert (=> d!586937 m!2361919))

(assert (=> d!586937 m!2361949))

(declare-fun m!2361951 () Bool)

(assert (=> d!586937 m!2361951))

(assert (=> d!586937 m!2361835))

(declare-fun m!2361953 () Bool)

(assert (=> d!586937 m!2361953))

(declare-fun m!2361955 () Bool)

(assert (=> b!1925896 m!2361955))

(declare-fun m!2361957 () Bool)

(assert (=> b!1925897 m!2361957))

(assert (=> b!1925898 m!2361835))

(assert (=> b!1925898 m!2361835))

(assert (=> b!1925898 m!2361949))

(assert (=> b!1925898 m!2361949))

(assert (=> b!1925898 m!2361951))

(declare-fun m!2361959 () Bool)

(assert (=> b!1925898 m!2361959))

(assert (=> b!1925819 d!586937))

(declare-fun d!586949 () Bool)

(assert (=> d!586949 (not (matchR!2625 (regex!3932 (rule!6137 separatorToken!354)) lt!738102))))

(declare-fun lt!738120 () Unit!36264)

(declare-fun choose!11957 (Regex!5357 List!22007 C!10860) Unit!36264)

(assert (=> d!586949 (= lt!738120 (choose!11957 (regex!3932 (rule!6137 separatorToken!354)) lt!738102 lt!738108))))

(declare-fun validRegex!2132 (Regex!5357) Bool)

(assert (=> d!586949 (validRegex!2132 (regex!3932 (rule!6137 separatorToken!354)))))

(assert (=> d!586949 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!284 (regex!3932 (rule!6137 separatorToken!354)) lt!738102 lt!738108) lt!738120)))

(declare-fun bs!414629 () Bool)

(assert (= bs!414629 d!586949))

(assert (=> bs!414629 m!2361869))

(declare-fun m!2361961 () Bool)

(assert (=> bs!414629 m!2361961))

(declare-fun m!2361963 () Bool)

(assert (=> bs!414629 m!2361963))

(assert (=> b!1925818 d!586949))

(declare-fun b!1925927 () Bool)

(declare-fun res!861235 () Bool)

(declare-fun e!1231137 () Bool)

(assert (=> b!1925927 (=> res!861235 e!1231137)))

(assert (=> b!1925927 (= res!861235 (not ((_ is ElementMatch!5357) (regex!3932 (rule!6137 separatorToken!354)))))))

(declare-fun e!1231135 () Bool)

(assert (=> b!1925927 (= e!1231135 e!1231137)))

(declare-fun b!1925928 () Bool)

(declare-fun res!861237 () Bool)

(assert (=> b!1925928 (=> res!861237 e!1231137)))

(declare-fun e!1231133 () Bool)

(assert (=> b!1925928 (= res!861237 e!1231133)))

(declare-fun res!861239 () Bool)

(assert (=> b!1925928 (=> (not res!861239) (not e!1231133))))

(declare-fun lt!738123 () Bool)

(assert (=> b!1925928 (= res!861239 lt!738123)))

(declare-fun b!1925929 () Bool)

(declare-fun e!1231138 () Bool)

(declare-fun nullable!1606 (Regex!5357) Bool)

(assert (=> b!1925929 (= e!1231138 (nullable!1606 (regex!3932 (rule!6137 separatorToken!354))))))

(declare-fun b!1925930 () Bool)

(assert (=> b!1925930 (= e!1231135 (not lt!738123))))

(declare-fun bm!118379 () Bool)

(declare-fun call!118384 () Bool)

(declare-fun isEmpty!13498 (List!22007) Bool)

(assert (=> bm!118379 (= call!118384 (isEmpty!13498 lt!738102))))

(declare-fun b!1925931 () Bool)

(assert (=> b!1925931 (= e!1231133 (= (head!4490 lt!738102) (c!313092 (regex!3932 (rule!6137 separatorToken!354)))))))

(declare-fun b!1925932 () Bool)

(declare-fun e!1231134 () Bool)

(assert (=> b!1925932 (= e!1231137 e!1231134)))

(declare-fun res!861242 () Bool)

(assert (=> b!1925932 (=> (not res!861242) (not e!1231134))))

(assert (=> b!1925932 (= res!861242 (not lt!738123))))

(declare-fun b!1925933 () Bool)

(declare-fun e!1231139 () Bool)

(assert (=> b!1925933 (= e!1231139 e!1231135)))

(declare-fun c!313111 () Bool)

(assert (=> b!1925933 (= c!313111 ((_ is EmptyLang!5357) (regex!3932 (rule!6137 separatorToken!354))))))

(declare-fun b!1925934 () Bool)

(declare-fun e!1231136 () Bool)

(assert (=> b!1925934 (= e!1231136 (not (= (head!4490 lt!738102) (c!313092 (regex!3932 (rule!6137 separatorToken!354))))))))

(declare-fun b!1925935 () Bool)

(declare-fun res!861238 () Bool)

(assert (=> b!1925935 (=> (not res!861238) (not e!1231133))))

(declare-fun tail!2975 (List!22007) List!22007)

(assert (=> b!1925935 (= res!861238 (isEmpty!13498 (tail!2975 lt!738102)))))

(declare-fun b!1925936 () Bool)

(assert (=> b!1925936 (= e!1231139 (= lt!738123 call!118384))))

(declare-fun d!586951 () Bool)

(assert (=> d!586951 e!1231139))

(declare-fun c!313113 () Bool)

(assert (=> d!586951 (= c!313113 ((_ is EmptyExpr!5357) (regex!3932 (rule!6137 separatorToken!354))))))

(assert (=> d!586951 (= lt!738123 e!1231138)))

(declare-fun c!313112 () Bool)

(assert (=> d!586951 (= c!313112 (isEmpty!13498 lt!738102))))

(assert (=> d!586951 (validRegex!2132 (regex!3932 (rule!6137 separatorToken!354)))))

(assert (=> d!586951 (= (matchR!2625 (regex!3932 (rule!6137 separatorToken!354)) lt!738102) lt!738123)))

(declare-fun b!1925937 () Bool)

(assert (=> b!1925937 (= e!1231134 e!1231136)))

(declare-fun res!861240 () Bool)

(assert (=> b!1925937 (=> res!861240 e!1231136)))

(assert (=> b!1925937 (= res!861240 call!118384)))

(declare-fun b!1925938 () Bool)

(declare-fun res!861236 () Bool)

(assert (=> b!1925938 (=> (not res!861236) (not e!1231133))))

(assert (=> b!1925938 (= res!861236 (not call!118384))))

(declare-fun b!1925939 () Bool)

(declare-fun res!861241 () Bool)

(assert (=> b!1925939 (=> res!861241 e!1231136)))

(assert (=> b!1925939 (= res!861241 (not (isEmpty!13498 (tail!2975 lt!738102))))))

(declare-fun b!1925940 () Bool)

(declare-fun derivativeStep!1365 (Regex!5357 C!10860) Regex!5357)

(assert (=> b!1925940 (= e!1231138 (matchR!2625 (derivativeStep!1365 (regex!3932 (rule!6137 separatorToken!354)) (head!4490 lt!738102)) (tail!2975 lt!738102)))))

(assert (= (and d!586951 c!313112) b!1925929))

(assert (= (and d!586951 (not c!313112)) b!1925940))

(assert (= (and d!586951 c!313113) b!1925936))

(assert (= (and d!586951 (not c!313113)) b!1925933))

(assert (= (and b!1925933 c!313111) b!1925930))

(assert (= (and b!1925933 (not c!313111)) b!1925927))

(assert (= (and b!1925927 (not res!861235)) b!1925928))

(assert (= (and b!1925928 res!861239) b!1925938))

(assert (= (and b!1925938 res!861236) b!1925935))

(assert (= (and b!1925935 res!861238) b!1925931))

(assert (= (and b!1925928 (not res!861237)) b!1925932))

(assert (= (and b!1925932 res!861242) b!1925937))

(assert (= (and b!1925937 (not res!861240)) b!1925939))

(assert (= (and b!1925939 (not res!861241)) b!1925934))

(assert (= (or b!1925936 b!1925937 b!1925938) bm!118379))

(assert (=> b!1925940 m!2361837))

(assert (=> b!1925940 m!2361837))

(declare-fun m!2361965 () Bool)

(assert (=> b!1925940 m!2361965))

(declare-fun m!2361967 () Bool)

(assert (=> b!1925940 m!2361967))

(assert (=> b!1925940 m!2361965))

(assert (=> b!1925940 m!2361967))

(declare-fun m!2361969 () Bool)

(assert (=> b!1925940 m!2361969))

(assert (=> b!1925939 m!2361967))

(assert (=> b!1925939 m!2361967))

(declare-fun m!2361971 () Bool)

(assert (=> b!1925939 m!2361971))

(declare-fun m!2361973 () Bool)

(assert (=> d!586951 m!2361973))

(assert (=> d!586951 m!2361963))

(assert (=> b!1925931 m!2361837))

(assert (=> bm!118379 m!2361973))

(declare-fun m!2361975 () Bool)

(assert (=> b!1925929 m!2361975))

(assert (=> b!1925935 m!2361967))

(assert (=> b!1925935 m!2361967))

(assert (=> b!1925935 m!2361971))

(assert (=> b!1925934 m!2361837))

(assert (=> b!1925818 d!586951))

(declare-fun d!586953 () Bool)

(declare-fun list!8867 (Conc!7318) List!22007)

(assert (=> d!586953 (= (list!8865 lt!738104) (list!8867 (c!313093 lt!738104)))))

(declare-fun bs!414630 () Bool)

(assert (= bs!414630 d!586953))

(declare-fun m!2361977 () Bool)

(assert (=> bs!414630 m!2361977))

(assert (=> b!1925829 d!586953))

(declare-fun b!1925980 () Bool)

(declare-fun res!861275 () Bool)

(declare-fun e!1231160 () Bool)

(assert (=> b!1925980 (=> (not res!861275) (not e!1231160))))

(declare-fun lt!738144 () Option!4539)

(assert (=> b!1925980 (= res!861275 (matchR!2625 (regex!3932 (rule!6137 (_1!11738 (get!6903 lt!738144)))) (list!8865 (charsOf!2472 (_1!11738 (get!6903 lt!738144))))))))

(declare-fun b!1925981 () Bool)

(declare-fun e!1231159 () Option!4539)

(declare-fun call!118387 () Option!4539)

(assert (=> b!1925981 (= e!1231159 call!118387)))

(declare-fun b!1925982 () Bool)

(declare-fun res!861277 () Bool)

(assert (=> b!1925982 (=> (not res!861277) (not e!1231160))))

(declare-fun apply!5687 (TokenValueInjection!7720 BalanceConc!14452) TokenValue!4068)

(assert (=> b!1925982 (= res!861277 (= (value!123653 (_1!11738 (get!6903 lt!738144))) (apply!5687 (transformation!3932 (rule!6137 (_1!11738 (get!6903 lt!738144)))) (seqFromList!2786 (originalCharacters!4739 (_1!11738 (get!6903 lt!738144)))))))))

(declare-fun b!1925983 () Bool)

(declare-fun res!861279 () Bool)

(assert (=> b!1925983 (=> (not res!861279) (not e!1231160))))

(assert (=> b!1925983 (= res!861279 (= (list!8865 (charsOf!2472 (_1!11738 (get!6903 lt!738144)))) (originalCharacters!4739 (_1!11738 (get!6903 lt!738144)))))))

(declare-fun b!1925984 () Bool)

(declare-fun res!861273 () Bool)

(assert (=> b!1925984 (=> (not res!861273) (not e!1231160))))

(assert (=> b!1925984 (= res!861273 (= (++!5877 (list!8865 (charsOf!2472 (_1!11738 (get!6903 lt!738144)))) (_2!11738 (get!6903 lt!738144))) lt!738086))))

(declare-fun b!1925985 () Bool)

(declare-fun e!1231161 () Bool)

(assert (=> b!1925985 (= e!1231161 e!1231160)))

(declare-fun res!861274 () Bool)

(assert (=> b!1925985 (=> (not res!861274) (not e!1231160))))

(assert (=> b!1925985 (= res!861274 (isDefined!3834 lt!738144))))

(declare-fun b!1925986 () Bool)

(declare-fun contains!3962 (List!22009 Rule!7664) Bool)

(assert (=> b!1925986 (= e!1231160 (contains!3962 rules!3198 (rule!6137 (_1!11738 (get!6903 lt!738144)))))))

(declare-fun bm!118382 () Bool)

(declare-fun maxPrefixOneRule!1220 (LexerInterface!3545 Rule!7664 List!22007) Option!4539)

(assert (=> bm!118382 (= call!118387 (maxPrefixOneRule!1220 thiss!23328 (h!27328 rules!3198) lt!738086))))

(declare-fun d!586955 () Bool)

(assert (=> d!586955 e!1231161))

(declare-fun res!861276 () Bool)

(assert (=> d!586955 (=> res!861276 e!1231161)))

(declare-fun isEmpty!13500 (Option!4539) Bool)

(assert (=> d!586955 (= res!861276 (isEmpty!13500 lt!738144))))

(assert (=> d!586955 (= lt!738144 e!1231159)))

(declare-fun c!313116 () Bool)

(assert (=> d!586955 (= c!313116 (and ((_ is Cons!21927) rules!3198) ((_ is Nil!21927) (t!179446 rules!3198))))))

(declare-fun lt!738142 () Unit!36264)

(declare-fun lt!738140 () Unit!36264)

(assert (=> d!586955 (= lt!738142 lt!738140)))

(declare-fun isPrefix!1938 (List!22007 List!22007) Bool)

(assert (=> d!586955 (isPrefix!1938 lt!738086 lt!738086)))

(declare-fun lemmaIsPrefixRefl!1256 (List!22007 List!22007) Unit!36264)

(assert (=> d!586955 (= lt!738140 (lemmaIsPrefixRefl!1256 lt!738086 lt!738086))))

(declare-fun rulesValidInductive!1337 (LexerInterface!3545 List!22009) Bool)

(assert (=> d!586955 (rulesValidInductive!1337 thiss!23328 rules!3198)))

(assert (=> d!586955 (= (maxPrefix!1983 thiss!23328 rules!3198 lt!738086) lt!738144)))

(declare-fun b!1925987 () Bool)

(declare-fun res!861278 () Bool)

(assert (=> b!1925987 (=> (not res!861278) (not e!1231160))))

(declare-fun size!17104 (List!22007) Int)

(assert (=> b!1925987 (= res!861278 (< (size!17104 (_2!11738 (get!6903 lt!738144))) (size!17104 lt!738086)))))

(declare-fun b!1925988 () Bool)

(declare-fun lt!738143 () Option!4539)

(declare-fun lt!738141 () Option!4539)

(assert (=> b!1925988 (= e!1231159 (ite (and ((_ is None!4538) lt!738143) ((_ is None!4538) lt!738141)) None!4538 (ite ((_ is None!4538) lt!738141) lt!738143 (ite ((_ is None!4538) lt!738143) lt!738141 (ite (>= (size!17102 (_1!11738 (v!26625 lt!738143))) (size!17102 (_1!11738 (v!26625 lt!738141)))) lt!738143 lt!738141)))))))

(assert (=> b!1925988 (= lt!738143 call!118387)))

(assert (=> b!1925988 (= lt!738141 (maxPrefix!1983 thiss!23328 (t!179446 rules!3198) lt!738086))))

(assert (= (and d!586955 c!313116) b!1925981))

(assert (= (and d!586955 (not c!313116)) b!1925988))

(assert (= (or b!1925981 b!1925988) bm!118382))

(assert (= (and d!586955 (not res!861276)) b!1925985))

(assert (= (and b!1925985 res!861274) b!1925983))

(assert (= (and b!1925983 res!861279) b!1925987))

(assert (= (and b!1925987 res!861278) b!1925984))

(assert (= (and b!1925984 res!861273) b!1925982))

(assert (= (and b!1925982 res!861277) b!1925980))

(assert (= (and b!1925980 res!861275) b!1925986))

(declare-fun m!2362013 () Bool)

(assert (=> b!1925987 m!2362013))

(declare-fun m!2362015 () Bool)

(assert (=> b!1925987 m!2362015))

(declare-fun m!2362017 () Bool)

(assert (=> b!1925987 m!2362017))

(declare-fun m!2362019 () Bool)

(assert (=> b!1925988 m!2362019))

(assert (=> b!1925986 m!2362013))

(declare-fun m!2362021 () Bool)

(assert (=> b!1925986 m!2362021))

(assert (=> b!1925984 m!2362013))

(declare-fun m!2362023 () Bool)

(assert (=> b!1925984 m!2362023))

(assert (=> b!1925984 m!2362023))

(declare-fun m!2362025 () Bool)

(assert (=> b!1925984 m!2362025))

(assert (=> b!1925984 m!2362025))

(declare-fun m!2362027 () Bool)

(assert (=> b!1925984 m!2362027))

(assert (=> b!1925983 m!2362013))

(assert (=> b!1925983 m!2362023))

(assert (=> b!1925983 m!2362023))

(assert (=> b!1925983 m!2362025))

(declare-fun m!2362029 () Bool)

(assert (=> d!586955 m!2362029))

(declare-fun m!2362031 () Bool)

(assert (=> d!586955 m!2362031))

(declare-fun m!2362033 () Bool)

(assert (=> d!586955 m!2362033))

(declare-fun m!2362035 () Bool)

(assert (=> d!586955 m!2362035))

(declare-fun m!2362037 () Bool)

(assert (=> b!1925985 m!2362037))

(assert (=> b!1925980 m!2362013))

(assert (=> b!1925980 m!2362023))

(assert (=> b!1925980 m!2362023))

(assert (=> b!1925980 m!2362025))

(assert (=> b!1925980 m!2362025))

(declare-fun m!2362039 () Bool)

(assert (=> b!1925980 m!2362039))

(assert (=> b!1925982 m!2362013))

(declare-fun m!2362041 () Bool)

(assert (=> b!1925982 m!2362041))

(assert (=> b!1925982 m!2362041))

(declare-fun m!2362043 () Bool)

(assert (=> b!1925982 m!2362043))

(declare-fun m!2362045 () Bool)

(assert (=> bm!118382 m!2362045))

(assert (=> b!1925829 d!586955))

(declare-fun d!586965 () Bool)

(declare-fun isEmpty!13501 (Option!4540) Bool)

(assert (=> d!586965 (= (isDefined!3833 lt!738091) (not (isEmpty!13501 lt!738091)))))

(declare-fun bs!414631 () Bool)

(assert (= bs!414631 d!586965))

(declare-fun m!2362047 () Bool)

(assert (=> bs!414631 m!2362047))

(assert (=> b!1925829 d!586965))

(declare-fun b!1925997 () Bool)

(declare-fun e!1231167 () List!22007)

(assert (=> b!1925997 (= e!1231167 lt!738105)))

(declare-fun b!1925999 () Bool)

(declare-fun res!861285 () Bool)

(declare-fun e!1231166 () Bool)

(assert (=> b!1925999 (=> (not res!861285) (not e!1231166))))

(declare-fun lt!738147 () List!22007)

(assert (=> b!1925999 (= res!861285 (= (size!17104 lt!738147) (+ (size!17104 lt!738086) (size!17104 lt!738105))))))

(declare-fun d!586967 () Bool)

(assert (=> d!586967 e!1231166))

(declare-fun res!861284 () Bool)

(assert (=> d!586967 (=> (not res!861284) (not e!1231166))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3168 (List!22007) (InoxSet C!10860))

(assert (=> d!586967 (= res!861284 (= (content!3168 lt!738147) ((_ map or) (content!3168 lt!738086) (content!3168 lt!738105))))))

(assert (=> d!586967 (= lt!738147 e!1231167)))

(declare-fun c!313119 () Bool)

(assert (=> d!586967 (= c!313119 ((_ is Nil!21925) lt!738086))))

(assert (=> d!586967 (= (++!5877 lt!738086 lt!738105) lt!738147)))

(declare-fun b!1925998 () Bool)

(assert (=> b!1925998 (= e!1231167 (Cons!21925 (h!27326 lt!738086) (++!5877 (t!179444 lt!738086) lt!738105)))))

(declare-fun b!1926000 () Bool)

(assert (=> b!1926000 (= e!1231166 (or (not (= lt!738105 Nil!21925)) (= lt!738147 lt!738086)))))

(assert (= (and d!586967 c!313119) b!1925997))

(assert (= (and d!586967 (not c!313119)) b!1925998))

(assert (= (and d!586967 res!861284) b!1925999))

(assert (= (and b!1925999 res!861285) b!1926000))

(declare-fun m!2362049 () Bool)

(assert (=> b!1925999 m!2362049))

(assert (=> b!1925999 m!2362017))

(declare-fun m!2362051 () Bool)

(assert (=> b!1925999 m!2362051))

(declare-fun m!2362053 () Bool)

(assert (=> d!586967 m!2362053))

(declare-fun m!2362055 () Bool)

(assert (=> d!586967 m!2362055))

(declare-fun m!2362057 () Bool)

(assert (=> d!586967 m!2362057))

(declare-fun m!2362059 () Bool)

(assert (=> b!1925998 m!2362059))

(assert (=> b!1925829 d!586967))

(declare-fun d!586969 () Bool)

(declare-fun e!1231170 () Bool)

(assert (=> d!586969 e!1231170))

(declare-fun res!861290 () Bool)

(assert (=> d!586969 (=> (not res!861290) (not e!1231170))))

(assert (=> d!586969 (= res!861290 (isDefined!3833 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 separatorToken!354)))))))

(declare-fun lt!738150 () Unit!36264)

(declare-fun choose!11958 (LexerInterface!3545 List!22009 List!22007 Token!7416) Unit!36264)

(assert (=> d!586969 (= lt!738150 (choose!11958 thiss!23328 rules!3198 lt!738102 separatorToken!354))))

(assert (=> d!586969 (rulesInvariant!3152 thiss!23328 rules!3198)))

(assert (=> d!586969 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!753 thiss!23328 rules!3198 lt!738102 separatorToken!354) lt!738150)))

(declare-fun b!1926005 () Bool)

(declare-fun res!861291 () Bool)

(assert (=> b!1926005 (=> (not res!861291) (not e!1231170))))

(assert (=> b!1926005 (= res!861291 (matchR!2625 (regex!3932 (get!6902 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 separatorToken!354))))) (list!8865 (charsOf!2472 separatorToken!354))))))

(declare-fun b!1926006 () Bool)

(assert (=> b!1926006 (= e!1231170 (= (rule!6137 separatorToken!354) (get!6902 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 separatorToken!354))))))))

(assert (= (and d!586969 res!861290) b!1926005))

(assert (= (and b!1926005 res!861291) b!1926006))

(assert (=> d!586969 m!2361887))

(assert (=> d!586969 m!2361887))

(declare-fun m!2362061 () Bool)

(assert (=> d!586969 m!2362061))

(declare-fun m!2362063 () Bool)

(assert (=> d!586969 m!2362063))

(assert (=> d!586969 m!2361811))

(assert (=> b!1926005 m!2361891))

(assert (=> b!1926005 m!2361895))

(declare-fun m!2362065 () Bool)

(assert (=> b!1926005 m!2362065))

(assert (=> b!1926005 m!2361887))

(assert (=> b!1926005 m!2361891))

(assert (=> b!1926005 m!2361895))

(assert (=> b!1926005 m!2361887))

(declare-fun m!2362067 () Bool)

(assert (=> b!1926005 m!2362067))

(assert (=> b!1926006 m!2361887))

(assert (=> b!1926006 m!2361887))

(assert (=> b!1926006 m!2362067))

(assert (=> b!1925829 d!586969))

(declare-fun d!586971 () Bool)

(declare-fun e!1231171 () Bool)

(assert (=> d!586971 e!1231171))

(declare-fun res!861292 () Bool)

(assert (=> d!586971 (=> (not res!861292) (not e!1231171))))

(assert (=> d!586971 (= res!861292 (isDefined!3833 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 (h!27327 tokens!598))))))))

(declare-fun lt!738151 () Unit!36264)

(assert (=> d!586971 (= lt!738151 (choose!11958 thiss!23328 rules!3198 lt!738086 (h!27327 tokens!598)))))

(assert (=> d!586971 (rulesInvariant!3152 thiss!23328 rules!3198)))

(assert (=> d!586971 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!753 thiss!23328 rules!3198 lt!738086 (h!27327 tokens!598)) lt!738151)))

(declare-fun b!1926007 () Bool)

(declare-fun res!861293 () Bool)

(assert (=> b!1926007 (=> (not res!861293) (not e!1231171))))

(assert (=> b!1926007 (= res!861293 (matchR!2625 (regex!3932 (get!6902 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 (h!27327 tokens!598)))))) (list!8865 (charsOf!2472 (h!27327 tokens!598)))))))

(declare-fun b!1926008 () Bool)

(assert (=> b!1926008 (= e!1231171 (= (rule!6137 (h!27327 tokens!598)) (get!6902 (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 (h!27327 tokens!598)))))))))

(assert (= (and d!586971 res!861292) b!1926007))

(assert (= (and b!1926007 res!861293) b!1926008))

(assert (=> d!586971 m!2361897))

(assert (=> d!586971 m!2361897))

(declare-fun m!2362069 () Bool)

(assert (=> d!586971 m!2362069))

(declare-fun m!2362071 () Bool)

(assert (=> d!586971 m!2362071))

(assert (=> d!586971 m!2361811))

(assert (=> b!1926007 m!2361907))

(declare-fun m!2362073 () Bool)

(assert (=> b!1926007 m!2362073))

(declare-fun m!2362075 () Bool)

(assert (=> b!1926007 m!2362075))

(assert (=> b!1926007 m!2361897))

(assert (=> b!1926007 m!2361907))

(assert (=> b!1926007 m!2362073))

(assert (=> b!1926007 m!2361897))

(declare-fun m!2362077 () Bool)

(assert (=> b!1926007 m!2362077))

(assert (=> b!1926008 m!2361897))

(assert (=> b!1926008 m!2361897))

(assert (=> b!1926008 m!2362077))

(assert (=> b!1925829 d!586971))

(declare-fun d!586973 () Bool)

(assert (=> d!586973 (= (isDefined!3834 lt!738096) (not (isEmpty!13500 lt!738096)))))

(declare-fun bs!414632 () Bool)

(assert (= bs!414632 d!586973))

(declare-fun m!2362079 () Bool)

(assert (=> bs!414632 m!2362079))

(assert (=> b!1925829 d!586973))

(declare-fun b!1926009 () Bool)

(declare-fun res!861296 () Bool)

(declare-fun e!1231173 () Bool)

(assert (=> b!1926009 (=> (not res!861296) (not e!1231173))))

(declare-fun lt!738156 () Option!4539)

(assert (=> b!1926009 (= res!861296 (matchR!2625 (regex!3932 (rule!6137 (_1!11738 (get!6903 lt!738156)))) (list!8865 (charsOf!2472 (_1!11738 (get!6903 lt!738156))))))))

(declare-fun b!1926010 () Bool)

(declare-fun e!1231172 () Option!4539)

(declare-fun call!118388 () Option!4539)

(assert (=> b!1926010 (= e!1231172 call!118388)))

(declare-fun b!1926011 () Bool)

(declare-fun res!861298 () Bool)

(assert (=> b!1926011 (=> (not res!861298) (not e!1231173))))

(assert (=> b!1926011 (= res!861298 (= (value!123653 (_1!11738 (get!6903 lt!738156))) (apply!5687 (transformation!3932 (rule!6137 (_1!11738 (get!6903 lt!738156)))) (seqFromList!2786 (originalCharacters!4739 (_1!11738 (get!6903 lt!738156)))))))))

(declare-fun b!1926012 () Bool)

(declare-fun res!861300 () Bool)

(assert (=> b!1926012 (=> (not res!861300) (not e!1231173))))

(assert (=> b!1926012 (= res!861300 (= (list!8865 (charsOf!2472 (_1!11738 (get!6903 lt!738156)))) (originalCharacters!4739 (_1!11738 (get!6903 lt!738156)))))))

(declare-fun b!1926013 () Bool)

(declare-fun res!861294 () Bool)

(assert (=> b!1926013 (=> (not res!861294) (not e!1231173))))

(assert (=> b!1926013 (= res!861294 (= (++!5877 (list!8865 (charsOf!2472 (_1!11738 (get!6903 lt!738156)))) (_2!11738 (get!6903 lt!738156))) (++!5877 lt!738086 lt!738105)))))

(declare-fun b!1926014 () Bool)

(declare-fun e!1231174 () Bool)

(assert (=> b!1926014 (= e!1231174 e!1231173)))

(declare-fun res!861295 () Bool)

(assert (=> b!1926014 (=> (not res!861295) (not e!1231173))))

(assert (=> b!1926014 (= res!861295 (isDefined!3834 lt!738156))))

(declare-fun b!1926015 () Bool)

(assert (=> b!1926015 (= e!1231173 (contains!3962 rules!3198 (rule!6137 (_1!11738 (get!6903 lt!738156)))))))

(declare-fun bm!118383 () Bool)

(assert (=> bm!118383 (= call!118388 (maxPrefixOneRule!1220 thiss!23328 (h!27328 rules!3198) (++!5877 lt!738086 lt!738105)))))

(declare-fun d!586975 () Bool)

(assert (=> d!586975 e!1231174))

(declare-fun res!861297 () Bool)

(assert (=> d!586975 (=> res!861297 e!1231174)))

(assert (=> d!586975 (= res!861297 (isEmpty!13500 lt!738156))))

(assert (=> d!586975 (= lt!738156 e!1231172)))

(declare-fun c!313120 () Bool)

(assert (=> d!586975 (= c!313120 (and ((_ is Cons!21927) rules!3198) ((_ is Nil!21927) (t!179446 rules!3198))))))

(declare-fun lt!738154 () Unit!36264)

(declare-fun lt!738152 () Unit!36264)

(assert (=> d!586975 (= lt!738154 lt!738152)))

(assert (=> d!586975 (isPrefix!1938 (++!5877 lt!738086 lt!738105) (++!5877 lt!738086 lt!738105))))

(assert (=> d!586975 (= lt!738152 (lemmaIsPrefixRefl!1256 (++!5877 lt!738086 lt!738105) (++!5877 lt!738086 lt!738105)))))

(assert (=> d!586975 (rulesValidInductive!1337 thiss!23328 rules!3198)))

(assert (=> d!586975 (= (maxPrefix!1983 thiss!23328 rules!3198 (++!5877 lt!738086 lt!738105)) lt!738156)))

(declare-fun b!1926016 () Bool)

(declare-fun res!861299 () Bool)

(assert (=> b!1926016 (=> (not res!861299) (not e!1231173))))

(assert (=> b!1926016 (= res!861299 (< (size!17104 (_2!11738 (get!6903 lt!738156))) (size!17104 (++!5877 lt!738086 lt!738105))))))

(declare-fun b!1926017 () Bool)

(declare-fun lt!738155 () Option!4539)

(declare-fun lt!738153 () Option!4539)

(assert (=> b!1926017 (= e!1231172 (ite (and ((_ is None!4538) lt!738155) ((_ is None!4538) lt!738153)) None!4538 (ite ((_ is None!4538) lt!738153) lt!738155 (ite ((_ is None!4538) lt!738155) lt!738153 (ite (>= (size!17102 (_1!11738 (v!26625 lt!738155))) (size!17102 (_1!11738 (v!26625 lt!738153)))) lt!738155 lt!738153)))))))

(assert (=> b!1926017 (= lt!738155 call!118388)))

(assert (=> b!1926017 (= lt!738153 (maxPrefix!1983 thiss!23328 (t!179446 rules!3198) (++!5877 lt!738086 lt!738105)))))

(assert (= (and d!586975 c!313120) b!1926010))

(assert (= (and d!586975 (not c!313120)) b!1926017))

(assert (= (or b!1926010 b!1926017) bm!118383))

(assert (= (and d!586975 (not res!861297)) b!1926014))

(assert (= (and b!1926014 res!861295) b!1926012))

(assert (= (and b!1926012 res!861300) b!1926016))

(assert (= (and b!1926016 res!861299) b!1926013))

(assert (= (and b!1926013 res!861294) b!1926011))

(assert (= (and b!1926011 res!861298) b!1926009))

(assert (= (and b!1926009 res!861296) b!1926015))

(declare-fun m!2362081 () Bool)

(assert (=> b!1926016 m!2362081))

(declare-fun m!2362083 () Bool)

(assert (=> b!1926016 m!2362083))

(assert (=> b!1926016 m!2361901))

(declare-fun m!2362085 () Bool)

(assert (=> b!1926016 m!2362085))

(assert (=> b!1926017 m!2361901))

(declare-fun m!2362087 () Bool)

(assert (=> b!1926017 m!2362087))

(assert (=> b!1926015 m!2362081))

(declare-fun m!2362089 () Bool)

(assert (=> b!1926015 m!2362089))

(assert (=> b!1926013 m!2362081))

(declare-fun m!2362091 () Bool)

(assert (=> b!1926013 m!2362091))

(assert (=> b!1926013 m!2362091))

(declare-fun m!2362093 () Bool)

(assert (=> b!1926013 m!2362093))

(assert (=> b!1926013 m!2362093))

(declare-fun m!2362095 () Bool)

(assert (=> b!1926013 m!2362095))

(assert (=> b!1926012 m!2362081))

(assert (=> b!1926012 m!2362091))

(assert (=> b!1926012 m!2362091))

(assert (=> b!1926012 m!2362093))

(declare-fun m!2362097 () Bool)

(assert (=> d!586975 m!2362097))

(assert (=> d!586975 m!2361901))

(assert (=> d!586975 m!2361901))

(declare-fun m!2362099 () Bool)

(assert (=> d!586975 m!2362099))

(assert (=> d!586975 m!2361901))

(assert (=> d!586975 m!2361901))

(declare-fun m!2362101 () Bool)

(assert (=> d!586975 m!2362101))

(assert (=> d!586975 m!2362035))

(declare-fun m!2362103 () Bool)

(assert (=> b!1926014 m!2362103))

(assert (=> b!1926009 m!2362081))

(assert (=> b!1926009 m!2362091))

(assert (=> b!1926009 m!2362091))

(assert (=> b!1926009 m!2362093))

(assert (=> b!1926009 m!2362093))

(declare-fun m!2362105 () Bool)

(assert (=> b!1926009 m!2362105))

(assert (=> b!1926011 m!2362081))

(declare-fun m!2362107 () Bool)

(assert (=> b!1926011 m!2362107))

(assert (=> b!1926011 m!2362107))

(declare-fun m!2362109 () Bool)

(assert (=> b!1926011 m!2362109))

(assert (=> bm!118383 m!2361901))

(declare-fun m!2362111 () Bool)

(assert (=> bm!118383 m!2362111))

(assert (=> b!1925829 d!586975))

(declare-fun bs!414636 () Bool)

(declare-fun b!1926144 () Bool)

(assert (= bs!414636 (and b!1926144 b!1925822)))

(declare-fun lambda!75149 () Int)

(assert (=> bs!414636 (not (= lambda!75149 lambda!75143))))

(declare-fun b!1926163 () Bool)

(declare-fun e!1231264 () Bool)

(assert (=> b!1926163 (= e!1231264 true)))

(declare-fun b!1926162 () Bool)

(declare-fun e!1231263 () Bool)

(assert (=> b!1926162 (= e!1231263 e!1231264)))

(declare-fun b!1926161 () Bool)

(declare-fun e!1231262 () Bool)

(assert (=> b!1926161 (= e!1231262 e!1231263)))

(assert (=> b!1926144 e!1231262))

(assert (= b!1926162 b!1926163))

(assert (= b!1926161 b!1926162))

(assert (= (and b!1926144 ((_ is Cons!21927) rules!3198)) b!1926161))

(declare-fun order!13745 () Int)

(declare-fun order!13743 () Int)

(declare-fun dynLambda!10605 (Int Int) Int)

(declare-fun dynLambda!10606 (Int Int) Int)

(assert (=> b!1926163 (< (dynLambda!10605 order!13743 (toValue!5565 (transformation!3932 (h!27328 rules!3198)))) (dynLambda!10606 order!13745 lambda!75149))))

(declare-fun order!13747 () Int)

(declare-fun dynLambda!10607 (Int Int) Int)

(assert (=> b!1926163 (< (dynLambda!10607 order!13747 (toChars!5424 (transformation!3932 (h!27328 rules!3198)))) (dynLambda!10606 order!13745 lambda!75149))))

(assert (=> b!1926144 true))

(declare-fun b!1926140 () Bool)

(declare-fun e!1231249 () List!22007)

(assert (=> b!1926140 (= e!1231249 Nil!21925)))

(assert (=> b!1926140 (= (print!1515 thiss!23328 (singletonSeq!1916 (h!27327 (t!179445 tokens!598)))) (printTailRec!1021 thiss!23328 (singletonSeq!1916 (h!27327 (t!179445 tokens!598))) 0 (BalanceConc!14453 Empty!7318)))))

(declare-fun lt!738211 () Unit!36264)

(declare-fun Unit!36268 () Unit!36264)

(assert (=> b!1926140 (= lt!738211 Unit!36268)))

(declare-fun lt!738212 () List!22007)

(declare-fun lt!738210 () Unit!36264)

(declare-fun call!118417 () List!22007)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!740 (LexerInterface!3545 List!22009 List!22007 List!22007) Unit!36264)

(assert (=> b!1926140 (= lt!738210 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!740 thiss!23328 rules!3198 call!118417 lt!738212))))

(assert (=> b!1926140 false))

(declare-fun lt!738208 () Unit!36264)

(declare-fun Unit!36269 () Unit!36264)

(assert (=> b!1926140 (= lt!738208 Unit!36269)))

(declare-fun bm!118410 () Bool)

(declare-fun c!313162 () Bool)

(declare-fun c!313164 () Bool)

(assert (=> bm!118410 (= c!313162 c!313164)))

(declare-fun call!118416 () List!22007)

(declare-fun e!1231252 () List!22007)

(assert (=> bm!118410 (= call!118416 (++!5877 e!1231252 (ite c!313164 lt!738212 call!118417)))))

(declare-fun b!1926141 () Bool)

(declare-fun e!1231250 () List!22007)

(assert (=> b!1926141 (= e!1231250 Nil!21925)))

(declare-fun d!586977 () Bool)

(declare-fun c!313161 () Bool)

(assert (=> d!586977 (= c!313161 ((_ is Cons!21926) (t!179445 tokens!598)))))

(assert (=> d!586977 (= (printWithSeparatorTokenWhenNeededList!584 thiss!23328 rules!3198 (t!179445 tokens!598) separatorToken!354) e!1231250)))

(declare-fun b!1926142 () Bool)

(declare-fun e!1231251 () List!22007)

(assert (=> b!1926142 (= e!1231251 call!118416)))

(declare-fun bm!118411 () Bool)

(declare-fun call!118419 () List!22007)

(assert (=> bm!118411 (= call!118417 call!118419)))

(declare-fun bm!118412 () Bool)

(declare-fun call!118418 () BalanceConc!14452)

(declare-fun call!118415 () BalanceConc!14452)

(assert (=> bm!118412 (= call!118418 call!118415)))

(declare-fun bm!118413 () Bool)

(assert (=> bm!118413 (= call!118419 (list!8865 (ite c!313164 call!118415 call!118418)))))

(declare-fun b!1926143 () Bool)

(assert (=> b!1926143 (= e!1231252 call!118419)))

(assert (=> b!1926144 (= e!1231250 e!1231251)))

(declare-fun lt!738213 () Unit!36264)

(declare-fun forallContained!709 (List!22008 Int Token!7416) Unit!36264)

(assert (=> b!1926144 (= lt!738213 (forallContained!709 (t!179445 tokens!598) lambda!75149 (h!27327 (t!179445 tokens!598))))))

(assert (=> b!1926144 (= lt!738212 (printWithSeparatorTokenWhenNeededList!584 thiss!23328 rules!3198 (t!179445 (t!179445 tokens!598)) separatorToken!354))))

(declare-fun lt!738209 () Option!4539)

(assert (=> b!1926144 (= lt!738209 (maxPrefix!1983 thiss!23328 rules!3198 (++!5877 (list!8865 (charsOf!2472 (h!27327 (t!179445 tokens!598)))) lt!738212)))))

(assert (=> b!1926144 (= c!313164 (and ((_ is Some!4538) lt!738209) (= (_1!11738 (v!26625 lt!738209)) (h!27327 (t!179445 tokens!598)))))))

(declare-fun c!313163 () Bool)

(declare-fun bm!118414 () Bool)

(assert (=> bm!118414 (= call!118415 (charsOf!2472 (ite c!313164 (h!27327 (t!179445 tokens!598)) (ite c!313163 separatorToken!354 (h!27327 (t!179445 tokens!598))))))))

(declare-fun b!1926145 () Bool)

(assert (=> b!1926145 (= e!1231249 (++!5877 call!118416 lt!738212))))

(declare-fun b!1926146 () Bool)

(assert (=> b!1926146 (= e!1231252 (list!8865 (charsOf!2472 (h!27327 (t!179445 tokens!598)))))))

(declare-fun b!1926147 () Bool)

(assert (=> b!1926147 (= c!313163 (and ((_ is Some!4538) lt!738209) (not (= (_1!11738 (v!26625 lt!738209)) (h!27327 (t!179445 tokens!598))))))))

(assert (=> b!1926147 (= e!1231251 e!1231249)))

(assert (= (and d!586977 c!313161) b!1926144))

(assert (= (and d!586977 (not c!313161)) b!1926141))

(assert (= (and b!1926144 c!313164) b!1926142))

(assert (= (and b!1926144 (not c!313164)) b!1926147))

(assert (= (and b!1926147 c!313163) b!1926145))

(assert (= (and b!1926147 (not c!313163)) b!1926140))

(assert (= (or b!1926145 b!1926140) bm!118412))

(assert (= (or b!1926145 b!1926140) bm!118411))

(assert (= (or b!1926142 bm!118412) bm!118414))

(assert (= (or b!1926142 bm!118411) bm!118413))

(assert (= (or b!1926142 b!1926145) bm!118410))

(assert (= (and bm!118410 c!313162) b!1926143))

(assert (= (and bm!118410 (not c!313162)) b!1926146))

(declare-fun m!2362235 () Bool)

(assert (=> bm!118413 m!2362235))

(declare-fun m!2362237 () Bool)

(assert (=> b!1926145 m!2362237))

(declare-fun m!2362239 () Bool)

(assert (=> b!1926140 m!2362239))

(assert (=> b!1926140 m!2362239))

(declare-fun m!2362241 () Bool)

(assert (=> b!1926140 m!2362241))

(assert (=> b!1926140 m!2362239))

(declare-fun m!2362243 () Bool)

(assert (=> b!1926140 m!2362243))

(declare-fun m!2362245 () Bool)

(assert (=> b!1926140 m!2362245))

(declare-fun m!2362247 () Bool)

(assert (=> bm!118414 m!2362247))

(declare-fun m!2362249 () Bool)

(assert (=> b!1926146 m!2362249))

(assert (=> b!1926146 m!2362249))

(declare-fun m!2362251 () Bool)

(assert (=> b!1926146 m!2362251))

(declare-fun m!2362253 () Bool)

(assert (=> bm!118410 m!2362253))

(assert (=> b!1926144 m!2362249))

(assert (=> b!1926144 m!2362251))

(assert (=> b!1926144 m!2362251))

(declare-fun m!2362255 () Bool)

(assert (=> b!1926144 m!2362255))

(declare-fun m!2362257 () Bool)

(assert (=> b!1926144 m!2362257))

(assert (=> b!1926144 m!2362249))

(assert (=> b!1926144 m!2362255))

(declare-fun m!2362259 () Bool)

(assert (=> b!1926144 m!2362259))

(declare-fun m!2362261 () Bool)

(assert (=> b!1926144 m!2362261))

(assert (=> b!1925829 d!586977))

(declare-fun d!587011 () Bool)

(assert (=> d!587011 (= (list!8865 (charsOf!2472 separatorToken!354)) (list!8867 (c!313093 (charsOf!2472 separatorToken!354))))))

(declare-fun bs!414637 () Bool)

(assert (= bs!414637 d!587011))

(declare-fun m!2362263 () Bool)

(assert (=> bs!414637 m!2362263))

(assert (=> b!1925829 d!587011))

(declare-fun b!1926176 () Bool)

(declare-fun e!1231275 () Bool)

(assert (=> b!1926176 (= e!1231275 true)))

(declare-fun d!587013 () Bool)

(assert (=> d!587013 e!1231275))

(assert (= d!587013 b!1926176))

(declare-fun order!13749 () Int)

(declare-fun lambda!75152 () Int)

(declare-fun dynLambda!10608 (Int Int) Int)

(assert (=> b!1926176 (< (dynLambda!10605 order!13743 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) (dynLambda!10608 order!13749 lambda!75152))))

(assert (=> b!1926176 (< (dynLambda!10607 order!13747 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) (dynLambda!10608 order!13749 lambda!75152))))

(declare-fun dynLambda!10609 (Int TokenValue!4068) BalanceConc!14452)

(declare-fun dynLambda!10610 (Int BalanceConc!14452) TokenValue!4068)

(assert (=> d!587013 (= (list!8865 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) lt!738104))) (list!8865 lt!738104))))

(declare-fun lt!738223 () Unit!36264)

(declare-fun ForallOf!402 (Int BalanceConc!14452) Unit!36264)

(assert (=> d!587013 (= lt!738223 (ForallOf!402 lambda!75152 lt!738104))))

(assert (=> d!587013 (= (lemmaSemiInverse!889 (transformation!3932 (rule!6137 (h!27327 tokens!598))) lt!738104) lt!738223)))

(declare-fun b_lambda!63743 () Bool)

(assert (=> (not b_lambda!63743) (not d!587013)))

(declare-fun t!179461 () Bool)

(declare-fun tb!117863 () Bool)

(assert (=> (and b!1925820 (= (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179461) tb!117863))

(declare-fun e!1231281 () Bool)

(declare-fun tp!550260 () Bool)

(declare-fun b!1926195 () Bool)

(declare-fun inv!29008 (Conc!7318) Bool)

(assert (=> b!1926195 (= e!1231281 (and (inv!29008 (c!313093 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) lt!738104)))) tp!550260))))

(declare-fun result!142408 () Bool)

(declare-fun inv!29009 (BalanceConc!14452) Bool)

(assert (=> tb!117863 (= result!142408 (and (inv!29009 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) lt!738104))) e!1231281))))

(assert (= tb!117863 b!1926195))

(declare-fun m!2362301 () Bool)

(assert (=> b!1926195 m!2362301))

(declare-fun m!2362303 () Bool)

(assert (=> tb!117863 m!2362303))

(assert (=> d!587013 t!179461))

(declare-fun b_and!150957 () Bool)

(assert (= b_and!150941 (and (=> t!179461 result!142408) b_and!150957)))

(declare-fun t!179463 () Bool)

(declare-fun tb!117865 () Bool)

(assert (=> (and b!1925828 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179463) tb!117865))

(declare-fun result!142412 () Bool)

(assert (= result!142412 result!142408))

(assert (=> d!587013 t!179463))

(declare-fun b_and!150959 () Bool)

(assert (= b_and!150945 (and (=> t!179463 result!142412) b_and!150959)))

(declare-fun t!179465 () Bool)

(declare-fun tb!117867 () Bool)

(assert (=> (and b!1925834 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179465) tb!117867))

(declare-fun result!142414 () Bool)

(assert (= result!142414 result!142408))

(assert (=> d!587013 t!179465))

(declare-fun b_and!150961 () Bool)

(assert (= b_and!150949 (and (=> t!179465 result!142414) b_and!150961)))

(declare-fun b_lambda!63745 () Bool)

(assert (=> (not b_lambda!63745) (not d!587013)))

(declare-fun t!179467 () Bool)

(declare-fun tb!117869 () Bool)

(assert (=> (and b!1925820 (= (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179467) tb!117869))

(declare-fun result!142416 () Bool)

(assert (=> tb!117869 (= result!142416 (inv!21 (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) lt!738104)))))

(declare-fun m!2362311 () Bool)

(assert (=> tb!117869 m!2362311))

(assert (=> d!587013 t!179467))

(declare-fun b_and!150963 () Bool)

(assert (= b_and!150939 (and (=> t!179467 result!142416) b_and!150963)))

(declare-fun t!179469 () Bool)

(declare-fun tb!117871 () Bool)

(assert (=> (and b!1925828 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179469) tb!117871))

(declare-fun result!142420 () Bool)

(assert (= result!142420 result!142416))

(assert (=> d!587013 t!179469))

(declare-fun b_and!150965 () Bool)

(assert (= b_and!150943 (and (=> t!179469 result!142420) b_and!150965)))

(declare-fun tb!117873 () Bool)

(declare-fun t!179471 () Bool)

(assert (=> (and b!1925834 (= (toValue!5565 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179471) tb!117873))

(declare-fun result!142422 () Bool)

(assert (= result!142422 result!142416))

(assert (=> d!587013 t!179471))

(declare-fun b_and!150967 () Bool)

(assert (= b_and!150947 (and (=> t!179471 result!142422) b_and!150967)))

(assert (=> d!587013 m!2361879))

(declare-fun m!2362313 () Bool)

(assert (=> d!587013 m!2362313))

(declare-fun m!2362315 () Bool)

(assert (=> d!587013 m!2362315))

(declare-fun m!2362317 () Bool)

(assert (=> d!587013 m!2362317))

(declare-fun m!2362319 () Bool)

(assert (=> d!587013 m!2362319))

(assert (=> d!587013 m!2362315))

(assert (=> d!587013 m!2362317))

(assert (=> b!1925829 d!587013))

(declare-fun d!587033 () Bool)

(declare-fun lt!738230 () BalanceConc!14452)

(assert (=> d!587033 (= (list!8865 lt!738230) (originalCharacters!4739 separatorToken!354))))

(assert (=> d!587033 (= lt!738230 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (value!123653 separatorToken!354)))))

(assert (=> d!587033 (= (charsOf!2472 separatorToken!354) lt!738230)))

(declare-fun b_lambda!63747 () Bool)

(assert (=> (not b_lambda!63747) (not d!587033)))

(declare-fun t!179473 () Bool)

(declare-fun tb!117875 () Bool)

(assert (=> (and b!1925820 (= (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354)))) t!179473) tb!117875))

(declare-fun b!1926203 () Bool)

(declare-fun e!1231288 () Bool)

(declare-fun tp!550261 () Bool)

(assert (=> b!1926203 (= e!1231288 (and (inv!29008 (c!313093 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (value!123653 separatorToken!354)))) tp!550261))))

(declare-fun result!142424 () Bool)

(assert (=> tb!117875 (= result!142424 (and (inv!29009 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (value!123653 separatorToken!354))) e!1231288))))

(assert (= tb!117875 b!1926203))

(declare-fun m!2362321 () Bool)

(assert (=> b!1926203 m!2362321))

(declare-fun m!2362323 () Bool)

(assert (=> tb!117875 m!2362323))

(assert (=> d!587033 t!179473))

(declare-fun b_and!150969 () Bool)

(assert (= b_and!150957 (and (=> t!179473 result!142424) b_and!150969)))

(declare-fun t!179475 () Bool)

(declare-fun tb!117877 () Bool)

(assert (=> (and b!1925828 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354)))) t!179475) tb!117877))

(declare-fun result!142426 () Bool)

(assert (= result!142426 result!142424))

(assert (=> d!587033 t!179475))

(declare-fun b_and!150971 () Bool)

(assert (= b_and!150959 (and (=> t!179475 result!142426) b_and!150971)))

(declare-fun tb!117879 () Bool)

(declare-fun t!179477 () Bool)

(assert (=> (and b!1925834 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354)))) t!179477) tb!117879))

(declare-fun result!142428 () Bool)

(assert (= result!142428 result!142424))

(assert (=> d!587033 t!179477))

(declare-fun b_and!150973 () Bool)

(assert (= b_and!150961 (and (=> t!179477 result!142428) b_and!150973)))

(declare-fun m!2362325 () Bool)

(assert (=> d!587033 m!2362325))

(declare-fun m!2362327 () Bool)

(assert (=> d!587033 m!2362327))

(assert (=> b!1925829 d!587033))

(declare-fun b!1926216 () Bool)

(declare-fun lt!738238 () Unit!36264)

(declare-fun lt!738237 () Unit!36264)

(assert (=> b!1926216 (= lt!738238 lt!738237)))

(assert (=> b!1926216 (rulesInvariant!3152 thiss!23328 (t!179446 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!267 (LexerInterface!3545 Rule!7664 List!22009) Unit!36264)

(assert (=> b!1926216 (= lt!738237 (lemmaInvariantOnRulesThenOnTail!267 thiss!23328 (h!27328 rules!3198) (t!179446 rules!3198)))))

(declare-fun e!1231300 () Option!4540)

(assert (=> b!1926216 (= e!1231300 (getRuleFromTag!753 thiss!23328 (t!179446 rules!3198) (tag!4376 (rule!6137 separatorToken!354))))))

(declare-fun b!1926217 () Bool)

(declare-fun e!1231297 () Bool)

(declare-fun lt!738239 () Option!4540)

(assert (=> b!1926217 (= e!1231297 (= (tag!4376 (get!6902 lt!738239)) (tag!4376 (rule!6137 separatorToken!354))))))

(declare-fun d!587035 () Bool)

(declare-fun e!1231298 () Bool)

(assert (=> d!587035 e!1231298))

(declare-fun res!861350 () Bool)

(assert (=> d!587035 (=> res!861350 e!1231298)))

(assert (=> d!587035 (= res!861350 (isEmpty!13501 lt!738239))))

(declare-fun e!1231299 () Option!4540)

(assert (=> d!587035 (= lt!738239 e!1231299)))

(declare-fun c!313179 () Bool)

(assert (=> d!587035 (= c!313179 (and ((_ is Cons!21927) rules!3198) (= (tag!4376 (h!27328 rules!3198)) (tag!4376 (rule!6137 separatorToken!354)))))))

(assert (=> d!587035 (rulesInvariant!3152 thiss!23328 rules!3198)))

(assert (=> d!587035 (= (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 separatorToken!354))) lt!738239)))

(declare-fun b!1926218 () Bool)

(assert (=> b!1926218 (= e!1231300 None!4539)))

(declare-fun b!1926219 () Bool)

(assert (=> b!1926219 (= e!1231299 (Some!4539 (h!27328 rules!3198)))))

(declare-fun b!1926220 () Bool)

(assert (=> b!1926220 (= e!1231299 e!1231300)))

(declare-fun c!313180 () Bool)

(assert (=> b!1926220 (= c!313180 (and ((_ is Cons!21927) rules!3198) (not (= (tag!4376 (h!27328 rules!3198)) (tag!4376 (rule!6137 separatorToken!354))))))))

(declare-fun b!1926221 () Bool)

(assert (=> b!1926221 (= e!1231298 e!1231297)))

(declare-fun res!861351 () Bool)

(assert (=> b!1926221 (=> (not res!861351) (not e!1231297))))

(assert (=> b!1926221 (= res!861351 (contains!3962 rules!3198 (get!6902 lt!738239)))))

(assert (= (and d!587035 c!313179) b!1926219))

(assert (= (and d!587035 (not c!313179)) b!1926220))

(assert (= (and b!1926220 c!313180) b!1926216))

(assert (= (and b!1926220 (not c!313180)) b!1926218))

(assert (= (and d!587035 (not res!861350)) b!1926221))

(assert (= (and b!1926221 res!861351) b!1926217))

(declare-fun m!2362329 () Bool)

(assert (=> b!1926216 m!2362329))

(declare-fun m!2362331 () Bool)

(assert (=> b!1926216 m!2362331))

(declare-fun m!2362333 () Bool)

(assert (=> b!1926216 m!2362333))

(declare-fun m!2362335 () Bool)

(assert (=> b!1926217 m!2362335))

(declare-fun m!2362337 () Bool)

(assert (=> d!587035 m!2362337))

(assert (=> d!587035 m!2361811))

(assert (=> b!1926221 m!2362335))

(assert (=> b!1926221 m!2362335))

(declare-fun m!2362339 () Bool)

(assert (=> b!1926221 m!2362339))

(assert (=> b!1925829 d!587035))

(declare-fun b!1926222 () Bool)

(declare-fun lt!738241 () Unit!36264)

(declare-fun lt!738240 () Unit!36264)

(assert (=> b!1926222 (= lt!738241 lt!738240)))

(assert (=> b!1926222 (rulesInvariant!3152 thiss!23328 (t!179446 rules!3198))))

(assert (=> b!1926222 (= lt!738240 (lemmaInvariantOnRulesThenOnTail!267 thiss!23328 (h!27328 rules!3198) (t!179446 rules!3198)))))

(declare-fun e!1231304 () Option!4540)

(assert (=> b!1926222 (= e!1231304 (getRuleFromTag!753 thiss!23328 (t!179446 rules!3198) (tag!4376 (rule!6137 (h!27327 tokens!598)))))))

(declare-fun b!1926223 () Bool)

(declare-fun e!1231301 () Bool)

(declare-fun lt!738242 () Option!4540)

(assert (=> b!1926223 (= e!1231301 (= (tag!4376 (get!6902 lt!738242)) (tag!4376 (rule!6137 (h!27327 tokens!598)))))))

(declare-fun d!587037 () Bool)

(declare-fun e!1231302 () Bool)

(assert (=> d!587037 e!1231302))

(declare-fun res!861352 () Bool)

(assert (=> d!587037 (=> res!861352 e!1231302)))

(assert (=> d!587037 (= res!861352 (isEmpty!13501 lt!738242))))

(declare-fun e!1231303 () Option!4540)

(assert (=> d!587037 (= lt!738242 e!1231303)))

(declare-fun c!313181 () Bool)

(assert (=> d!587037 (= c!313181 (and ((_ is Cons!21927) rules!3198) (= (tag!4376 (h!27328 rules!3198)) (tag!4376 (rule!6137 (h!27327 tokens!598))))))))

(assert (=> d!587037 (rulesInvariant!3152 thiss!23328 rules!3198)))

(assert (=> d!587037 (= (getRuleFromTag!753 thiss!23328 rules!3198 (tag!4376 (rule!6137 (h!27327 tokens!598)))) lt!738242)))

(declare-fun b!1926224 () Bool)

(assert (=> b!1926224 (= e!1231304 None!4539)))

(declare-fun b!1926225 () Bool)

(assert (=> b!1926225 (= e!1231303 (Some!4539 (h!27328 rules!3198)))))

(declare-fun b!1926226 () Bool)

(assert (=> b!1926226 (= e!1231303 e!1231304)))

(declare-fun c!313182 () Bool)

(assert (=> b!1926226 (= c!313182 (and ((_ is Cons!21927) rules!3198) (not (= (tag!4376 (h!27328 rules!3198)) (tag!4376 (rule!6137 (h!27327 tokens!598)))))))))

(declare-fun b!1926227 () Bool)

(assert (=> b!1926227 (= e!1231302 e!1231301)))

(declare-fun res!861353 () Bool)

(assert (=> b!1926227 (=> (not res!861353) (not e!1231301))))

(assert (=> b!1926227 (= res!861353 (contains!3962 rules!3198 (get!6902 lt!738242)))))

(assert (= (and d!587037 c!313181) b!1926225))

(assert (= (and d!587037 (not c!313181)) b!1926226))

(assert (= (and b!1926226 c!313182) b!1926222))

(assert (= (and b!1926226 (not c!313182)) b!1926224))

(assert (= (and d!587037 (not res!861352)) b!1926227))

(assert (= (and b!1926227 res!861353) b!1926223))

(assert (=> b!1926222 m!2362329))

(assert (=> b!1926222 m!2362331))

(declare-fun m!2362341 () Bool)

(assert (=> b!1926222 m!2362341))

(declare-fun m!2362343 () Bool)

(assert (=> b!1926223 m!2362343))

(declare-fun m!2362345 () Bool)

(assert (=> d!587037 m!2362345))

(assert (=> d!587037 m!2361811))

(assert (=> b!1926227 m!2362343))

(assert (=> b!1926227 m!2362343))

(declare-fun m!2362347 () Bool)

(assert (=> b!1926227 m!2362347))

(assert (=> b!1925829 d!587037))

(declare-fun d!587039 () Bool)

(declare-fun lt!738243 () BalanceConc!14452)

(assert (=> d!587039 (= (list!8865 lt!738243) (originalCharacters!4739 (h!27327 tokens!598)))))

(assert (=> d!587039 (= lt!738243 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (value!123653 (h!27327 tokens!598))))))

(assert (=> d!587039 (= (charsOf!2472 (h!27327 tokens!598)) lt!738243)))

(declare-fun b_lambda!63749 () Bool)

(assert (=> (not b_lambda!63749) (not d!587039)))

(declare-fun tb!117881 () Bool)

(declare-fun t!179479 () Bool)

(assert (=> (and b!1925820 (= (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179479) tb!117881))

(declare-fun b!1926228 () Bool)

(declare-fun e!1231305 () Bool)

(declare-fun tp!550262 () Bool)

(assert (=> b!1926228 (= e!1231305 (and (inv!29008 (c!313093 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (value!123653 (h!27327 tokens!598))))) tp!550262))))

(declare-fun result!142430 () Bool)

(assert (=> tb!117881 (= result!142430 (and (inv!29009 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (value!123653 (h!27327 tokens!598)))) e!1231305))))

(assert (= tb!117881 b!1926228))

(declare-fun m!2362349 () Bool)

(assert (=> b!1926228 m!2362349))

(declare-fun m!2362351 () Bool)

(assert (=> tb!117881 m!2362351))

(assert (=> d!587039 t!179479))

(declare-fun b_and!150975 () Bool)

(assert (= b_and!150969 (and (=> t!179479 result!142430) b_and!150975)))

(declare-fun t!179481 () Bool)

(declare-fun tb!117883 () Bool)

(assert (=> (and b!1925828 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179481) tb!117883))

(declare-fun result!142432 () Bool)

(assert (= result!142432 result!142430))

(assert (=> d!587039 t!179481))

(declare-fun b_and!150977 () Bool)

(assert (= b_and!150971 (and (=> t!179481 result!142432) b_and!150977)))

(declare-fun t!179483 () Bool)

(declare-fun tb!117885 () Bool)

(assert (=> (and b!1925834 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179483) tb!117885))

(declare-fun result!142434 () Bool)

(assert (= result!142434 result!142430))

(assert (=> d!587039 t!179483))

(declare-fun b_and!150979 () Bool)

(assert (= b_and!150973 (and (=> t!179483 result!142434) b_and!150979)))

(declare-fun m!2362353 () Bool)

(assert (=> d!587039 m!2362353))

(declare-fun m!2362355 () Bool)

(assert (=> d!587039 m!2362355))

(assert (=> b!1925829 d!587039))

(declare-fun d!587041 () Bool)

(declare-fun fromListB!1235 (List!22007) BalanceConc!14452)

(assert (=> d!587041 (= (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598))) (fromListB!1235 (originalCharacters!4739 (h!27327 tokens!598))))))

(declare-fun bs!414641 () Bool)

(assert (= bs!414641 d!587041))

(declare-fun m!2362357 () Bool)

(assert (=> bs!414641 m!2362357))

(assert (=> b!1925829 d!587041))

(declare-fun d!587043 () Bool)

(assert (=> d!587043 (= (isDefined!3833 lt!738089) (not (isEmpty!13501 lt!738089)))))

(declare-fun bs!414642 () Bool)

(assert (= bs!414642 d!587043))

(declare-fun m!2362359 () Bool)

(assert (=> bs!414642 m!2362359))

(assert (=> b!1925829 d!587043))

(declare-fun b!1926253 () Bool)

(declare-fun e!1231316 () Bool)

(assert (=> b!1926253 (= e!1231316 true)))

(declare-fun d!587045 () Bool)

(assert (=> d!587045 e!1231316))

(assert (= d!587045 b!1926253))

(declare-fun order!13751 () Int)

(declare-fun lambda!75155 () Int)

(declare-fun dynLambda!10611 (Int Int) Int)

(assert (=> b!1926253 (< (dynLambda!10605 order!13743 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) (dynLambda!10611 order!13751 lambda!75155))))

(assert (=> b!1926253 (< (dynLambda!10607 order!13747 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) (dynLambda!10611 order!13751 lambda!75155))))

(assert (=> d!587045 (= (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) lt!738104) (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598)))))))

(declare-fun lt!738256 () Unit!36264)

(declare-fun Forall2of!198 (Int BalanceConc!14452 BalanceConc!14452) Unit!36264)

(assert (=> d!587045 (= lt!738256 (Forall2of!198 lambda!75155 lt!738104 (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598)))))))

(assert (=> d!587045 (= (list!8865 lt!738104) (list!8865 (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598)))))))

(assert (=> d!587045 (= (lemmaEqSameImage!618 (transformation!3932 (rule!6137 (h!27327 tokens!598))) lt!738104 (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598)))) lt!738256)))

(declare-fun b_lambda!63751 () Bool)

(assert (=> (not b_lambda!63751) (not d!587045)))

(assert (=> d!587045 t!179467))

(declare-fun b_and!150981 () Bool)

(assert (= b_and!150963 (and (=> t!179467 result!142416) b_and!150981)))

(assert (=> d!587045 t!179469))

(declare-fun b_and!150983 () Bool)

(assert (= b_and!150965 (and (=> t!179469 result!142420) b_and!150983)))

(assert (=> d!587045 t!179471))

(declare-fun b_and!150985 () Bool)

(assert (= b_and!150967 (and (=> t!179471 result!142422) b_and!150985)))

(declare-fun b_lambda!63753 () Bool)

(assert (=> (not b_lambda!63753) (not d!587045)))

(declare-fun tb!117887 () Bool)

(declare-fun t!179485 () Bool)

(assert (=> (and b!1925820 (= (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179485) tb!117887))

(declare-fun result!142436 () Bool)

(assert (=> tb!117887 (= result!142436 (inv!21 (dynLambda!10610 (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (seqFromList!2786 (originalCharacters!4739 (h!27327 tokens!598))))))))

(declare-fun m!2362361 () Bool)

(assert (=> tb!117887 m!2362361))

(assert (=> d!587045 t!179485))

(declare-fun b_and!150987 () Bool)

(assert (= b_and!150981 (and (=> t!179485 result!142436) b_and!150987)))

(declare-fun t!179487 () Bool)

(declare-fun tb!117889 () Bool)

(assert (=> (and b!1925828 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179487) tb!117889))

(declare-fun result!142438 () Bool)

(assert (= result!142438 result!142436))

(assert (=> d!587045 t!179487))

(declare-fun b_and!150989 () Bool)

(assert (= b_and!150983 (and (=> t!179487 result!142438) b_and!150989)))

(declare-fun tb!117891 () Bool)

(declare-fun t!179489 () Bool)

(assert (=> (and b!1925834 (= (toValue!5565 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179489) tb!117891))

(declare-fun result!142440 () Bool)

(assert (= result!142440 result!142436))

(assert (=> d!587045 t!179489))

(declare-fun b_and!150991 () Bool)

(assert (= b_and!150985 (and (=> t!179489 result!142440) b_and!150991)))

(assert (=> d!587045 m!2362315))

(assert (=> d!587045 m!2361877))

(declare-fun m!2362363 () Bool)

(assert (=> d!587045 m!2362363))

(assert (=> d!587045 m!2361877))

(declare-fun m!2362365 () Bool)

(assert (=> d!587045 m!2362365))

(assert (=> d!587045 m!2361877))

(declare-fun m!2362367 () Bool)

(assert (=> d!587045 m!2362367))

(assert (=> d!587045 m!2361879))

(assert (=> b!1925829 d!587045))

(declare-fun d!587047 () Bool)

(declare-fun res!861374 () Bool)

(declare-fun e!1231322 () Bool)

(assert (=> d!587047 (=> res!861374 e!1231322)))

(assert (=> d!587047 (= res!861374 (not ((_ is Cons!21927) rules!3198)))))

(assert (=> d!587047 (= (sepAndNonSepRulesDisjointChars!1030 rules!3198 rules!3198) e!1231322)))

(declare-fun b!1926258 () Bool)

(declare-fun e!1231323 () Bool)

(assert (=> b!1926258 (= e!1231322 e!1231323)))

(declare-fun res!861375 () Bool)

(assert (=> b!1926258 (=> (not res!861375) (not e!1231323))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!446 (Rule!7664 List!22009) Bool)

(assert (=> b!1926258 (= res!861375 (ruleDisjointCharsFromAllFromOtherType!446 (h!27328 rules!3198) rules!3198))))

(declare-fun b!1926259 () Bool)

(assert (=> b!1926259 (= e!1231323 (sepAndNonSepRulesDisjointChars!1030 rules!3198 (t!179446 rules!3198)))))

(assert (= (and d!587047 (not res!861374)) b!1926258))

(assert (= (and b!1926258 res!861375) b!1926259))

(declare-fun m!2362369 () Bool)

(assert (=> b!1926258 m!2362369))

(declare-fun m!2362371 () Bool)

(assert (=> b!1926259 m!2362371))

(assert (=> b!1925831 d!587047))

(declare-fun d!587049 () Bool)

(declare-fun res!861387 () Bool)

(declare-fun e!1231329 () Bool)

(assert (=> d!587049 (=> (not res!861387) (not e!1231329))))

(assert (=> d!587049 (= res!861387 (not (isEmpty!13498 (originalCharacters!4739 (h!27327 tokens!598)))))))

(assert (=> d!587049 (= (inv!29005 (h!27327 tokens!598)) e!1231329)))

(declare-fun b!1926273 () Bool)

(declare-fun res!861388 () Bool)

(assert (=> b!1926273 (=> (not res!861388) (not e!1231329))))

(assert (=> b!1926273 (= res!861388 (= (originalCharacters!4739 (h!27327 tokens!598)) (list!8865 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (value!123653 (h!27327 tokens!598))))))))

(declare-fun b!1926274 () Bool)

(assert (=> b!1926274 (= e!1231329 (= (size!17102 (h!27327 tokens!598)) (size!17104 (originalCharacters!4739 (h!27327 tokens!598)))))))

(assert (= (and d!587049 res!861387) b!1926273))

(assert (= (and b!1926273 res!861388) b!1926274))

(declare-fun b_lambda!63755 () Bool)

(assert (=> (not b_lambda!63755) (not b!1926273)))

(assert (=> b!1926273 t!179479))

(declare-fun b_and!150993 () Bool)

(assert (= b_and!150975 (and (=> t!179479 result!142430) b_and!150993)))

(assert (=> b!1926273 t!179481))

(declare-fun b_and!150995 () Bool)

(assert (= b_and!150977 (and (=> t!179481 result!142432) b_and!150995)))

(assert (=> b!1926273 t!179483))

(declare-fun b_and!150997 () Bool)

(assert (= b_and!150979 (and (=> t!179483 result!142434) b_and!150997)))

(declare-fun m!2362407 () Bool)

(assert (=> d!587049 m!2362407))

(assert (=> b!1926273 m!2362355))

(assert (=> b!1926273 m!2362355))

(declare-fun m!2362409 () Bool)

(assert (=> b!1926273 m!2362409))

(declare-fun m!2362411 () Bool)

(assert (=> b!1926274 m!2362411))

(assert (=> b!1925830 d!587049))

(declare-fun d!587053 () Bool)

(assert (=> d!587053 (= (inv!29001 (tag!4376 (rule!6137 separatorToken!354))) (= (mod (str.len (value!123652 (tag!4376 (rule!6137 separatorToken!354)))) 2) 0))))

(assert (=> b!1925841 d!587053))

(declare-fun d!587055 () Bool)

(declare-fun res!861398 () Bool)

(declare-fun e!1231335 () Bool)

(assert (=> d!587055 (=> (not res!861398) (not e!1231335))))

(declare-fun semiInverseModEq!1563 (Int Int) Bool)

(assert (=> d!587055 (= res!861398 (semiInverseModEq!1563 (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354)))))))

(assert (=> d!587055 (= (inv!29004 (transformation!3932 (rule!6137 separatorToken!354))) e!1231335)))

(declare-fun b!1926286 () Bool)

(declare-fun equivClasses!1490 (Int Int) Bool)

(assert (=> b!1926286 (= e!1231335 (equivClasses!1490 (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354)))))))

(assert (= (and d!587055 res!861398) b!1926286))

(declare-fun m!2362445 () Bool)

(assert (=> d!587055 m!2362445))

(declare-fun m!2362447 () Bool)

(assert (=> b!1926286 m!2362447))

(assert (=> b!1925841 d!587055))

(declare-fun d!587061 () Bool)

(declare-fun lt!738267 () Bool)

(declare-fun e!1231337 () Bool)

(assert (=> d!587061 (= lt!738267 e!1231337)))

(declare-fun res!861401 () Bool)

(assert (=> d!587061 (=> (not res!861401) (not e!1231337))))

(assert (=> d!587061 (= res!861401 (= (list!8866 (_1!11739 (lex!1570 thiss!23328 rules!3198 (print!1515 thiss!23328 (singletonSeq!1916 separatorToken!354))))) (list!8866 (singletonSeq!1916 separatorToken!354))))))

(declare-fun e!1231336 () Bool)

(assert (=> d!587061 (= lt!738267 e!1231336)))

(declare-fun res!861399 () Bool)

(assert (=> d!587061 (=> (not res!861399) (not e!1231336))))

(declare-fun lt!738268 () tuple2!20540)

(assert (=> d!587061 (= res!861399 (= (size!17103 (_1!11739 lt!738268)) 1))))

(assert (=> d!587061 (= lt!738268 (lex!1570 thiss!23328 rules!3198 (print!1515 thiss!23328 (singletonSeq!1916 separatorToken!354))))))

(assert (=> d!587061 (not (isEmpty!13496 rules!3198))))

(assert (=> d!587061 (= (rulesProduceIndividualToken!1717 thiss!23328 rules!3198 separatorToken!354) lt!738267)))

(declare-fun b!1926287 () Bool)

(declare-fun res!861400 () Bool)

(assert (=> b!1926287 (=> (not res!861400) (not e!1231336))))

(assert (=> b!1926287 (= res!861400 (= (apply!5686 (_1!11739 lt!738268) 0) separatorToken!354))))

(declare-fun b!1926288 () Bool)

(assert (=> b!1926288 (= e!1231336 (isEmpty!13497 (_2!11739 lt!738268)))))

(declare-fun b!1926289 () Bool)

(assert (=> b!1926289 (= e!1231337 (isEmpty!13497 (_2!11739 (lex!1570 thiss!23328 rules!3198 (print!1515 thiss!23328 (singletonSeq!1916 separatorToken!354))))))))

(assert (= (and d!587061 res!861399) b!1926287))

(assert (= (and b!1926287 res!861400) b!1926288))

(assert (= (and d!587061 res!861401) b!1926289))

(declare-fun m!2362449 () Bool)

(assert (=> d!587061 m!2362449))

(declare-fun m!2362451 () Bool)

(assert (=> d!587061 m!2362451))

(declare-fun m!2362453 () Bool)

(assert (=> d!587061 m!2362453))

(declare-fun m!2362455 () Bool)

(assert (=> d!587061 m!2362455))

(assert (=> d!587061 m!2362453))

(assert (=> d!587061 m!2361919))

(assert (=> d!587061 m!2362455))

(declare-fun m!2362457 () Bool)

(assert (=> d!587061 m!2362457))

(assert (=> d!587061 m!2362453))

(declare-fun m!2362459 () Bool)

(assert (=> d!587061 m!2362459))

(declare-fun m!2362461 () Bool)

(assert (=> b!1926287 m!2362461))

(declare-fun m!2362463 () Bool)

(assert (=> b!1926288 m!2362463))

(assert (=> b!1926289 m!2362453))

(assert (=> b!1926289 m!2362453))

(assert (=> b!1926289 m!2362455))

(assert (=> b!1926289 m!2362455))

(assert (=> b!1926289 m!2362457))

(declare-fun m!2362465 () Bool)

(assert (=> b!1926289 m!2362465))

(assert (=> b!1925827 d!587061))

(declare-fun d!587063 () Bool)

(declare-fun res!861402 () Bool)

(declare-fun e!1231338 () Bool)

(assert (=> d!587063 (=> (not res!861402) (not e!1231338))))

(assert (=> d!587063 (= res!861402 (not (isEmpty!13498 (originalCharacters!4739 separatorToken!354))))))

(assert (=> d!587063 (= (inv!29005 separatorToken!354) e!1231338)))

(declare-fun b!1926290 () Bool)

(declare-fun res!861403 () Bool)

(assert (=> b!1926290 (=> (not res!861403) (not e!1231338))))

(assert (=> b!1926290 (= res!861403 (= (originalCharacters!4739 separatorToken!354) (list!8865 (dynLambda!10609 (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (value!123653 separatorToken!354)))))))

(declare-fun b!1926291 () Bool)

(assert (=> b!1926291 (= e!1231338 (= (size!17102 separatorToken!354) (size!17104 (originalCharacters!4739 separatorToken!354))))))

(assert (= (and d!587063 res!861402) b!1926290))

(assert (= (and b!1926290 res!861403) b!1926291))

(declare-fun b_lambda!63757 () Bool)

(assert (=> (not b_lambda!63757) (not b!1926290)))

(assert (=> b!1926290 t!179473))

(declare-fun b_and!150999 () Bool)

(assert (= b_and!150993 (and (=> t!179473 result!142424) b_and!150999)))

(assert (=> b!1926290 t!179475))

(declare-fun b_and!151001 () Bool)

(assert (= b_and!150995 (and (=> t!179475 result!142426) b_and!151001)))

(assert (=> b!1926290 t!179477))

(declare-fun b_and!151003 () Bool)

(assert (= b_and!150997 (and (=> t!179477 result!142428) b_and!151003)))

(declare-fun m!2362467 () Bool)

(assert (=> d!587063 m!2362467))

(assert (=> b!1926290 m!2362327))

(assert (=> b!1926290 m!2362327))

(declare-fun m!2362469 () Bool)

(assert (=> b!1926290 m!2362469))

(declare-fun m!2362471 () Bool)

(assert (=> b!1926291 m!2362471))

(assert (=> start!192996 d!587063))

(declare-fun b!1926292 () Bool)

(declare-fun res!861404 () Bool)

(declare-fun e!1231343 () Bool)

(assert (=> b!1926292 (=> res!861404 e!1231343)))

(assert (=> b!1926292 (= res!861404 (not ((_ is ElementMatch!5357) (regex!3932 lt!738106))))))

(declare-fun e!1231341 () Bool)

(assert (=> b!1926292 (= e!1231341 e!1231343)))

(declare-fun b!1926293 () Bool)

(declare-fun res!861406 () Bool)

(assert (=> b!1926293 (=> res!861406 e!1231343)))

(declare-fun e!1231339 () Bool)

(assert (=> b!1926293 (= res!861406 e!1231339)))

(declare-fun res!861408 () Bool)

(assert (=> b!1926293 (=> (not res!861408) (not e!1231339))))

(declare-fun lt!738269 () Bool)

(assert (=> b!1926293 (= res!861408 lt!738269)))

(declare-fun b!1926294 () Bool)

(declare-fun e!1231344 () Bool)

(assert (=> b!1926294 (= e!1231344 (nullable!1606 (regex!3932 lt!738106)))))

(declare-fun b!1926295 () Bool)

(assert (=> b!1926295 (= e!1231341 (not lt!738269))))

(declare-fun bm!118420 () Bool)

(declare-fun call!118425 () Bool)

(assert (=> bm!118420 (= call!118425 (isEmpty!13498 lt!738102))))

(declare-fun b!1926296 () Bool)

(assert (=> b!1926296 (= e!1231339 (= (head!4490 lt!738102) (c!313092 (regex!3932 lt!738106))))))

(declare-fun b!1926297 () Bool)

(declare-fun e!1231340 () Bool)

(assert (=> b!1926297 (= e!1231343 e!1231340)))

(declare-fun res!861411 () Bool)

(assert (=> b!1926297 (=> (not res!861411) (not e!1231340))))

(assert (=> b!1926297 (= res!861411 (not lt!738269))))

(declare-fun b!1926298 () Bool)

(declare-fun e!1231345 () Bool)

(assert (=> b!1926298 (= e!1231345 e!1231341)))

(declare-fun c!313187 () Bool)

(assert (=> b!1926298 (= c!313187 ((_ is EmptyLang!5357) (regex!3932 lt!738106)))))

(declare-fun b!1926299 () Bool)

(declare-fun e!1231342 () Bool)

(assert (=> b!1926299 (= e!1231342 (not (= (head!4490 lt!738102) (c!313092 (regex!3932 lt!738106)))))))

(declare-fun b!1926300 () Bool)

(declare-fun res!861407 () Bool)

(assert (=> b!1926300 (=> (not res!861407) (not e!1231339))))

(assert (=> b!1926300 (= res!861407 (isEmpty!13498 (tail!2975 lt!738102)))))

(declare-fun b!1926301 () Bool)

(assert (=> b!1926301 (= e!1231345 (= lt!738269 call!118425))))

(declare-fun d!587065 () Bool)

(assert (=> d!587065 e!1231345))

(declare-fun c!313189 () Bool)

(assert (=> d!587065 (= c!313189 ((_ is EmptyExpr!5357) (regex!3932 lt!738106)))))

(assert (=> d!587065 (= lt!738269 e!1231344)))

(declare-fun c!313188 () Bool)

(assert (=> d!587065 (= c!313188 (isEmpty!13498 lt!738102))))

(assert (=> d!587065 (validRegex!2132 (regex!3932 lt!738106))))

(assert (=> d!587065 (= (matchR!2625 (regex!3932 lt!738106) lt!738102) lt!738269)))

(declare-fun b!1926302 () Bool)

(assert (=> b!1926302 (= e!1231340 e!1231342)))

(declare-fun res!861409 () Bool)

(assert (=> b!1926302 (=> res!861409 e!1231342)))

(assert (=> b!1926302 (= res!861409 call!118425)))

(declare-fun b!1926303 () Bool)

(declare-fun res!861405 () Bool)

(assert (=> b!1926303 (=> (not res!861405) (not e!1231339))))

(assert (=> b!1926303 (= res!861405 (not call!118425))))

(declare-fun b!1926304 () Bool)

(declare-fun res!861410 () Bool)

(assert (=> b!1926304 (=> res!861410 e!1231342)))

(assert (=> b!1926304 (= res!861410 (not (isEmpty!13498 (tail!2975 lt!738102))))))

(declare-fun b!1926305 () Bool)

(assert (=> b!1926305 (= e!1231344 (matchR!2625 (derivativeStep!1365 (regex!3932 lt!738106) (head!4490 lt!738102)) (tail!2975 lt!738102)))))

(assert (= (and d!587065 c!313188) b!1926294))

(assert (= (and d!587065 (not c!313188)) b!1926305))

(assert (= (and d!587065 c!313189) b!1926301))

(assert (= (and d!587065 (not c!313189)) b!1926298))

(assert (= (and b!1926298 c!313187) b!1926295))

(assert (= (and b!1926298 (not c!313187)) b!1926292))

(assert (= (and b!1926292 (not res!861404)) b!1926293))

(assert (= (and b!1926293 res!861408) b!1926303))

(assert (= (and b!1926303 res!861405) b!1926300))

(assert (= (and b!1926300 res!861407) b!1926296))

(assert (= (and b!1926293 (not res!861406)) b!1926297))

(assert (= (and b!1926297 res!861411) b!1926302))

(assert (= (and b!1926302 (not res!861409)) b!1926304))

(assert (= (and b!1926304 (not res!861410)) b!1926299))

(assert (= (or b!1926301 b!1926302 b!1926303) bm!118420))

(assert (=> b!1926305 m!2361837))

(assert (=> b!1926305 m!2361837))

(declare-fun m!2362473 () Bool)

(assert (=> b!1926305 m!2362473))

(assert (=> b!1926305 m!2361967))

(assert (=> b!1926305 m!2362473))

(assert (=> b!1926305 m!2361967))

(declare-fun m!2362475 () Bool)

(assert (=> b!1926305 m!2362475))

(assert (=> b!1926304 m!2361967))

(assert (=> b!1926304 m!2361967))

(assert (=> b!1926304 m!2361971))

(assert (=> d!587065 m!2361973))

(declare-fun m!2362477 () Bool)

(assert (=> d!587065 m!2362477))

(assert (=> b!1926296 m!2361837))

(assert (=> bm!118420 m!2361973))

(declare-fun m!2362479 () Bool)

(assert (=> b!1926294 m!2362479))

(assert (=> b!1926300 m!2361967))

(assert (=> b!1926300 m!2361967))

(assert (=> b!1926300 m!2361971))

(assert (=> b!1926299 m!2361837))

(assert (=> b!1925837 d!587065))

(declare-fun d!587067 () Bool)

(assert (=> d!587067 (= (get!6902 lt!738091) (v!26626 lt!738091))))

(assert (=> b!1925837 d!587067))

(declare-fun d!587069 () Bool)

(assert (=> d!587069 (= (get!6903 lt!738096) (v!26625 lt!738096))))

(assert (=> b!1925839 d!587069))

(declare-fun d!587071 () Bool)

(assert (=> d!587071 (= (inv!29001 (tag!4376 (rule!6137 (h!27327 tokens!598)))) (= (mod (str.len (value!123652 (tag!4376 (rule!6137 (h!27327 tokens!598))))) 2) 0))))

(assert (=> b!1925824 d!587071))

(declare-fun d!587073 () Bool)

(declare-fun res!861412 () Bool)

(declare-fun e!1231346 () Bool)

(assert (=> d!587073 (=> (not res!861412) (not e!1231346))))

(assert (=> d!587073 (= res!861412 (semiInverseModEq!1563 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))))))

(assert (=> d!587073 (= (inv!29004 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) e!1231346)))

(declare-fun b!1926306 () Bool)

(assert (=> b!1926306 (= e!1231346 (equivClasses!1490 (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))))))

(assert (= (and d!587073 res!861412) b!1926306))

(declare-fun m!2362481 () Bool)

(assert (=> d!587073 m!2362481))

(declare-fun m!2362483 () Bool)

(assert (=> b!1926306 m!2362483))

(assert (=> b!1925824 d!587073))

(declare-fun d!587075 () Bool)

(declare-fun res!861415 () Bool)

(declare-fun e!1231349 () Bool)

(assert (=> d!587075 (=> (not res!861415) (not e!1231349))))

(declare-fun rulesValid!1449 (LexerInterface!3545 List!22009) Bool)

(assert (=> d!587075 (= res!861415 (rulesValid!1449 thiss!23328 rules!3198))))

(assert (=> d!587075 (= (rulesInvariant!3152 thiss!23328 rules!3198) e!1231349)))

(declare-fun b!1926309 () Bool)

(declare-datatypes ((List!22010 0))(
  ( (Nil!21928) (Cons!21928 (h!27329 String!25458) (t!179559 List!22010)) )
))
(declare-fun noDuplicateTag!1447 (LexerInterface!3545 List!22009 List!22010) Bool)

(assert (=> b!1926309 (= e!1231349 (noDuplicateTag!1447 thiss!23328 rules!3198 Nil!21928))))

(assert (= (and d!587075 res!861415) b!1926309))

(declare-fun m!2362485 () Bool)

(assert (=> d!587075 m!2362485))

(declare-fun m!2362487 () Bool)

(assert (=> b!1926309 m!2362487))

(assert (=> b!1925835 d!587075))

(declare-fun d!587077 () Bool)

(assert (=> d!587077 (= (inv!29001 (tag!4376 (h!27328 rules!3198))) (= (mod (str.len (value!123652 (tag!4376 (h!27328 rules!3198)))) 2) 0))))

(assert (=> b!1925836 d!587077))

(declare-fun d!587079 () Bool)

(declare-fun res!861416 () Bool)

(declare-fun e!1231350 () Bool)

(assert (=> d!587079 (=> (not res!861416) (not e!1231350))))

(assert (=> d!587079 (= res!861416 (semiInverseModEq!1563 (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (h!27328 rules!3198)))))))

(assert (=> d!587079 (= (inv!29004 (transformation!3932 (h!27328 rules!3198))) e!1231350)))

(declare-fun b!1926310 () Bool)

(assert (=> b!1926310 (= e!1231350 (equivClasses!1490 (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (h!27328 rules!3198)))))))

(assert (= (and d!587079 res!861416) b!1926310))

(declare-fun m!2362489 () Bool)

(assert (=> d!587079 m!2362489))

(declare-fun m!2362491 () Bool)

(assert (=> b!1926310 m!2362491))

(assert (=> b!1925836 d!587079))

(declare-fun bs!414644 () Bool)

(declare-fun d!587081 () Bool)

(assert (= bs!414644 (and d!587081 b!1925822)))

(declare-fun lambda!75158 () Int)

(assert (=> bs!414644 (not (= lambda!75158 lambda!75143))))

(declare-fun bs!414645 () Bool)

(assert (= bs!414645 (and d!587081 b!1926144)))

(assert (=> bs!414645 (= lambda!75158 lambda!75149)))

(declare-fun b!1926319 () Bool)

(declare-fun e!1231359 () Bool)

(assert (=> b!1926319 (= e!1231359 true)))

(declare-fun b!1926318 () Bool)

(declare-fun e!1231358 () Bool)

(assert (=> b!1926318 (= e!1231358 e!1231359)))

(declare-fun b!1926317 () Bool)

(declare-fun e!1231357 () Bool)

(assert (=> b!1926317 (= e!1231357 e!1231358)))

(assert (=> d!587081 e!1231357))

(assert (= b!1926318 b!1926319))

(assert (= b!1926317 b!1926318))

(assert (= (and d!587081 ((_ is Cons!21927) rules!3198)) b!1926317))

(assert (=> b!1926319 (< (dynLambda!10605 order!13743 (toValue!5565 (transformation!3932 (h!27328 rules!3198)))) (dynLambda!10606 order!13745 lambda!75158))))

(assert (=> b!1926319 (< (dynLambda!10607 order!13747 (toChars!5424 (transformation!3932 (h!27328 rules!3198)))) (dynLambda!10606 order!13745 lambda!75158))))

(assert (=> d!587081 true))

(declare-fun lt!738272 () Bool)

(assert (=> d!587081 (= lt!738272 (forall!4634 tokens!598 lambda!75158))))

(declare-fun e!1231355 () Bool)

(assert (=> d!587081 (= lt!738272 e!1231355)))

(declare-fun res!861422 () Bool)

(assert (=> d!587081 (=> res!861422 e!1231355)))

(assert (=> d!587081 (= res!861422 (not ((_ is Cons!21926) tokens!598)))))

(assert (=> d!587081 (not (isEmpty!13496 rules!3198))))

(assert (=> d!587081 (= (rulesProduceEachTokenIndividuallyList!1276 thiss!23328 rules!3198 tokens!598) lt!738272)))

(declare-fun b!1926315 () Bool)

(declare-fun e!1231356 () Bool)

(assert (=> b!1926315 (= e!1231355 e!1231356)))

(declare-fun res!861421 () Bool)

(assert (=> b!1926315 (=> (not res!861421) (not e!1231356))))

(assert (=> b!1926315 (= res!861421 (rulesProduceIndividualToken!1717 thiss!23328 rules!3198 (h!27327 tokens!598)))))

(declare-fun b!1926316 () Bool)

(assert (=> b!1926316 (= e!1231356 (rulesProduceEachTokenIndividuallyList!1276 thiss!23328 rules!3198 (t!179445 tokens!598)))))

(assert (= (and d!587081 (not res!861422)) b!1926315))

(assert (= (and b!1926315 res!861421) b!1926316))

(declare-fun m!2362493 () Bool)

(assert (=> d!587081 m!2362493))

(assert (=> d!587081 m!2361919))

(assert (=> b!1926315 m!2361809))

(declare-fun m!2362495 () Bool)

(assert (=> b!1926316 m!2362495))

(assert (=> b!1925825 d!587081))

(declare-fun d!587083 () Bool)

(declare-fun c!313192 () Bool)

(assert (=> d!587083 (= c!313192 ((_ is Cons!21926) (Cons!21926 (h!27327 tokens!598) Nil!21926)))))

(declare-fun e!1231362 () List!22007)

(assert (=> d!587083 (= (printList!1080 thiss!23328 (Cons!21926 (h!27327 tokens!598) Nil!21926)) e!1231362)))

(declare-fun b!1926324 () Bool)

(assert (=> b!1926324 (= e!1231362 (++!5877 (list!8865 (charsOf!2472 (h!27327 (Cons!21926 (h!27327 tokens!598) Nil!21926)))) (printList!1080 thiss!23328 (t!179445 (Cons!21926 (h!27327 tokens!598) Nil!21926)))))))

(declare-fun b!1926325 () Bool)

(assert (=> b!1926325 (= e!1231362 Nil!21925)))

(assert (= (and d!587083 c!313192) b!1926324))

(assert (= (and d!587083 (not c!313192)) b!1926325))

(declare-fun m!2362497 () Bool)

(assert (=> b!1926324 m!2362497))

(assert (=> b!1926324 m!2362497))

(declare-fun m!2362499 () Bool)

(assert (=> b!1926324 m!2362499))

(declare-fun m!2362501 () Bool)

(assert (=> b!1926324 m!2362501))

(assert (=> b!1926324 m!2362499))

(assert (=> b!1926324 m!2362501))

(declare-fun m!2362503 () Bool)

(assert (=> b!1926324 m!2362503))

(assert (=> b!1925832 d!587083))

(declare-fun bm!118429 () Bool)

(declare-fun call!118435 () List!22007)

(declare-fun call!118436 () List!22007)

(assert (=> bm!118429 (= call!118435 call!118436)))

(declare-fun bm!118430 () Bool)

(declare-fun c!313204 () Bool)

(declare-fun c!313203 () Bool)

(assert (=> bm!118430 (= call!118436 (usedCharacters!384 (ite c!313203 (reg!5686 (regex!3932 (rule!6137 separatorToken!354))) (ite c!313204 (regTwo!11227 (regex!3932 (rule!6137 separatorToken!354))) (regOne!11226 (regex!3932 (rule!6137 separatorToken!354)))))))))

(declare-fun b!1926342 () Bool)

(declare-fun e!1231371 () List!22007)

(declare-fun call!118434 () List!22007)

(assert (=> b!1926342 (= e!1231371 call!118434)))

(declare-fun b!1926343 () Bool)

(declare-fun e!1231374 () List!22007)

(assert (=> b!1926343 (= e!1231374 (Cons!21925 (c!313092 (regex!3932 (rule!6137 separatorToken!354))) Nil!21925))))

(declare-fun b!1926344 () Bool)

(declare-fun e!1231372 () List!22007)

(assert (=> b!1926344 (= e!1231372 e!1231371)))

(assert (=> b!1926344 (= c!313204 ((_ is Union!5357) (regex!3932 (rule!6137 separatorToken!354))))))

(declare-fun b!1926345 () Bool)

(assert (=> b!1926345 (= e!1231371 call!118434)))

(declare-fun b!1926346 () Bool)

(declare-fun e!1231373 () List!22007)

(assert (=> b!1926346 (= e!1231373 e!1231374)))

(declare-fun c!313201 () Bool)

(assert (=> b!1926346 (= c!313201 ((_ is ElementMatch!5357) (regex!3932 (rule!6137 separatorToken!354))))))

(declare-fun b!1926347 () Bool)

(assert (=> b!1926347 (= e!1231372 call!118436)))

(declare-fun b!1926348 () Bool)

(assert (=> b!1926348 (= e!1231373 Nil!21925)))

(declare-fun d!587085 () Bool)

(declare-fun c!313202 () Bool)

(assert (=> d!587085 (= c!313202 (or ((_ is EmptyExpr!5357) (regex!3932 (rule!6137 separatorToken!354))) ((_ is EmptyLang!5357) (regex!3932 (rule!6137 separatorToken!354)))))))

(assert (=> d!587085 (= (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354))) e!1231373)))

(declare-fun call!118437 () List!22007)

(declare-fun bm!118431 () Bool)

(assert (=> bm!118431 (= call!118434 (++!5877 (ite c!313204 call!118437 call!118435) (ite c!313204 call!118435 call!118437)))))

(declare-fun bm!118432 () Bool)

(assert (=> bm!118432 (= call!118437 (usedCharacters!384 (ite c!313204 (regOne!11227 (regex!3932 (rule!6137 separatorToken!354))) (regTwo!11226 (regex!3932 (rule!6137 separatorToken!354))))))))

(declare-fun b!1926349 () Bool)

(assert (=> b!1926349 (= c!313203 ((_ is Star!5357) (regex!3932 (rule!6137 separatorToken!354))))))

(assert (=> b!1926349 (= e!1231374 e!1231372)))

(assert (= (and d!587085 c!313202) b!1926348))

(assert (= (and d!587085 (not c!313202)) b!1926346))

(assert (= (and b!1926346 c!313201) b!1926343))

(assert (= (and b!1926346 (not c!313201)) b!1926349))

(assert (= (and b!1926349 c!313203) b!1926347))

(assert (= (and b!1926349 (not c!313203)) b!1926344))

(assert (= (and b!1926344 c!313204) b!1926342))

(assert (= (and b!1926344 (not c!313204)) b!1926345))

(assert (= (or b!1926342 b!1926345) bm!118432))

(assert (= (or b!1926342 b!1926345) bm!118429))

(assert (= (or b!1926342 b!1926345) bm!118431))

(assert (= (or b!1926347 bm!118429) bm!118430))

(declare-fun m!2362505 () Bool)

(assert (=> bm!118430 m!2362505))

(declare-fun m!2362507 () Bool)

(assert (=> bm!118431 m!2362507))

(declare-fun m!2362509 () Bool)

(assert (=> bm!118432 m!2362509))

(assert (=> b!1925832 d!587085))

(declare-fun d!587087 () Bool)

(assert (=> d!587087 (not (contains!3961 (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598)))) lt!738108))))

(declare-fun lt!738275 () Unit!36264)

(declare-fun choose!11962 (LexerInterface!3545 List!22009 List!22009 Rule!7664 Rule!7664 C!10860) Unit!36264)

(assert (=> d!587087 (= lt!738275 (choose!11962 thiss!23328 rules!3198 rules!3198 (rule!6137 (h!27327 tokens!598)) (rule!6137 separatorToken!354) lt!738108))))

(assert (=> d!587087 (rulesInvariant!3152 thiss!23328 rules!3198)))

(assert (=> d!587087 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!80 thiss!23328 rules!3198 rules!3198 (rule!6137 (h!27327 tokens!598)) (rule!6137 separatorToken!354) lt!738108) lt!738275)))

(declare-fun bs!414646 () Bool)

(assert (= bs!414646 d!587087))

(assert (=> bs!414646 m!2361819))

(assert (=> bs!414646 m!2361819))

(assert (=> bs!414646 m!2361833))

(declare-fun m!2362511 () Bool)

(assert (=> bs!414646 m!2362511))

(assert (=> bs!414646 m!2361811))

(assert (=> b!1925832 d!587087))

(declare-fun b!1926350 () Bool)

(declare-fun e!1231376 () List!22007)

(assert (=> b!1926350 (= e!1231376 lt!738105)))

(declare-fun b!1926352 () Bool)

(declare-fun res!861424 () Bool)

(declare-fun e!1231375 () Bool)

(assert (=> b!1926352 (=> (not res!861424) (not e!1231375))))

(declare-fun lt!738276 () List!22007)

(assert (=> b!1926352 (= res!861424 (= (size!17104 lt!738276) (+ (size!17104 lt!738102) (size!17104 lt!738105))))))

(declare-fun d!587089 () Bool)

(assert (=> d!587089 e!1231375))

(declare-fun res!861423 () Bool)

(assert (=> d!587089 (=> (not res!861423) (not e!1231375))))

(assert (=> d!587089 (= res!861423 (= (content!3168 lt!738276) ((_ map or) (content!3168 lt!738102) (content!3168 lt!738105))))))

(assert (=> d!587089 (= lt!738276 e!1231376)))

(declare-fun c!313206 () Bool)

(assert (=> d!587089 (= c!313206 ((_ is Nil!21925) lt!738102))))

(assert (=> d!587089 (= (++!5877 lt!738102 lt!738105) lt!738276)))

(declare-fun b!1926351 () Bool)

(assert (=> b!1926351 (= e!1231376 (Cons!21925 (h!27326 lt!738102) (++!5877 (t!179444 lt!738102) lt!738105)))))

(declare-fun b!1926353 () Bool)

(assert (=> b!1926353 (= e!1231375 (or (not (= lt!738105 Nil!21925)) (= lt!738276 lt!738102)))))

(assert (= (and d!587089 c!313206) b!1926350))

(assert (= (and d!587089 (not c!313206)) b!1926351))

(assert (= (and d!587089 res!861423) b!1926352))

(assert (= (and b!1926352 res!861424) b!1926353))

(declare-fun m!2362513 () Bool)

(assert (=> b!1926352 m!2362513))

(declare-fun m!2362515 () Bool)

(assert (=> b!1926352 m!2362515))

(assert (=> b!1926352 m!2362051))

(declare-fun m!2362517 () Bool)

(assert (=> d!587089 m!2362517))

(declare-fun m!2362519 () Bool)

(assert (=> d!587089 m!2362519))

(assert (=> d!587089 m!2362057))

(declare-fun m!2362521 () Bool)

(assert (=> b!1926351 m!2362521))

(assert (=> b!1925832 d!587089))

(declare-fun d!587091 () Bool)

(assert (=> d!587091 (= (++!5877 (++!5877 lt!738086 lt!738102) lt!738105) (++!5877 lt!738086 (++!5877 lt!738102 lt!738105)))))

(declare-fun lt!738279 () Unit!36264)

(declare-fun choose!11963 (List!22007 List!22007 List!22007) Unit!36264)

(assert (=> d!587091 (= lt!738279 (choose!11963 lt!738086 lt!738102 lt!738105))))

(assert (=> d!587091 (= (lemmaConcatAssociativity!1191 lt!738086 lt!738102 lt!738105) lt!738279)))

(declare-fun bs!414647 () Bool)

(assert (= bs!414647 d!587091))

(assert (=> bs!414647 m!2361829))

(assert (=> bs!414647 m!2361829))

(assert (=> bs!414647 m!2361839))

(assert (=> bs!414647 m!2361817))

(assert (=> bs!414647 m!2361817))

(assert (=> bs!414647 m!2361841))

(declare-fun m!2362523 () Bool)

(assert (=> bs!414647 m!2362523))

(assert (=> b!1925832 d!587091))

(declare-fun d!587093 () Bool)

(declare-fun e!1231385 () Bool)

(assert (=> d!587093 e!1231385))

(declare-fun res!861427 () Bool)

(assert (=> d!587093 (=> (not res!861427) (not e!1231385))))

(declare-fun lt!738294 () BalanceConc!14454)

(assert (=> d!587093 (= res!861427 (= (list!8866 lt!738294) (Cons!21926 (h!27327 tokens!598) Nil!21926)))))

(declare-fun singleton!846 (Token!7416) BalanceConc!14454)

(assert (=> d!587093 (= lt!738294 (singleton!846 (h!27327 tokens!598)))))

(assert (=> d!587093 (= (singletonSeq!1916 (h!27327 tokens!598)) lt!738294)))

(declare-fun b!1926368 () Bool)

(declare-fun isBalanced!2257 (Conc!7319) Bool)

(assert (=> b!1926368 (= e!1231385 (isBalanced!2257 (c!313094 lt!738294)))))

(assert (= (and d!587093 res!861427) b!1926368))

(declare-fun m!2362525 () Bool)

(assert (=> d!587093 m!2362525))

(declare-fun m!2362527 () Bool)

(assert (=> d!587093 m!2362527))

(declare-fun m!2362529 () Bool)

(assert (=> b!1926368 m!2362529))

(assert (=> b!1925832 d!587093))

(declare-fun d!587095 () Bool)

(declare-fun lt!738297 () Bool)

(assert (=> d!587095 (= lt!738297 (select (content!3168 (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354)))) lt!738108))))

(declare-fun e!1231392 () Bool)

(assert (=> d!587095 (= lt!738297 e!1231392)))

(declare-fun res!861432 () Bool)

(assert (=> d!587095 (=> (not res!861432) (not e!1231392))))

(assert (=> d!587095 (= res!861432 ((_ is Cons!21925) (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354)))))))

(assert (=> d!587095 (= (contains!3961 (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354))) lt!738108) lt!738297)))

(declare-fun b!1926377 () Bool)

(declare-fun e!1231393 () Bool)

(assert (=> b!1926377 (= e!1231392 e!1231393)))

(declare-fun res!861433 () Bool)

(assert (=> b!1926377 (=> res!861433 e!1231393)))

(assert (=> b!1926377 (= res!861433 (= (h!27326 (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354)))) lt!738108))))

(declare-fun b!1926378 () Bool)

(assert (=> b!1926378 (= e!1231393 (contains!3961 (t!179444 (usedCharacters!384 (regex!3932 (rule!6137 separatorToken!354)))) lt!738108))))

(assert (= (and d!587095 res!861432) b!1926377))

(assert (= (and b!1926377 (not res!861433)) b!1926378))

(assert (=> d!587095 m!2361821))

(declare-fun m!2362531 () Bool)

(assert (=> d!587095 m!2362531))

(declare-fun m!2362533 () Bool)

(assert (=> d!587095 m!2362533))

(declare-fun m!2362535 () Bool)

(assert (=> b!1926378 m!2362535))

(assert (=> b!1925832 d!587095))

(declare-fun d!587097 () Bool)

(assert (=> d!587097 (= (head!4490 lt!738102) (h!27326 lt!738102))))

(assert (=> b!1925832 d!587097))

(declare-fun b!1926379 () Bool)

(declare-fun e!1231395 () List!22007)

(assert (=> b!1926379 (= e!1231395 lt!738102)))

(declare-fun b!1926381 () Bool)

(declare-fun res!861435 () Bool)

(declare-fun e!1231394 () Bool)

(assert (=> b!1926381 (=> (not res!861435) (not e!1231394))))

(declare-fun lt!738298 () List!22007)

(assert (=> b!1926381 (= res!861435 (= (size!17104 lt!738298) (+ (size!17104 lt!738086) (size!17104 lt!738102))))))

(declare-fun d!587099 () Bool)

(assert (=> d!587099 e!1231394))

(declare-fun res!861434 () Bool)

(assert (=> d!587099 (=> (not res!861434) (not e!1231394))))

(assert (=> d!587099 (= res!861434 (= (content!3168 lt!738298) ((_ map or) (content!3168 lt!738086) (content!3168 lt!738102))))))

(assert (=> d!587099 (= lt!738298 e!1231395)))

(declare-fun c!313215 () Bool)

(assert (=> d!587099 (= c!313215 ((_ is Nil!21925) lt!738086))))

(assert (=> d!587099 (= (++!5877 lt!738086 lt!738102) lt!738298)))

(declare-fun b!1926380 () Bool)

(assert (=> b!1926380 (= e!1231395 (Cons!21925 (h!27326 lt!738086) (++!5877 (t!179444 lt!738086) lt!738102)))))

(declare-fun b!1926382 () Bool)

(assert (=> b!1926382 (= e!1231394 (or (not (= lt!738102 Nil!21925)) (= lt!738298 lt!738086)))))

(assert (= (and d!587099 c!313215) b!1926379))

(assert (= (and d!587099 (not c!313215)) b!1926380))

(assert (= (and d!587099 res!861434) b!1926381))

(assert (= (and b!1926381 res!861435) b!1926382))

(declare-fun m!2362537 () Bool)

(assert (=> b!1926381 m!2362537))

(assert (=> b!1926381 m!2362017))

(assert (=> b!1926381 m!2362515))

(declare-fun m!2362539 () Bool)

(assert (=> d!587099 m!2362539))

(assert (=> d!587099 m!2362055))

(assert (=> d!587099 m!2362519))

(declare-fun m!2362541 () Bool)

(assert (=> b!1926380 m!2362541))

(assert (=> b!1925832 d!587099))

(declare-fun d!587101 () Bool)

(declare-fun lt!738299 () Bool)

(assert (=> d!587101 (= lt!738299 (select (content!3168 (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598))))) lt!738108))))

(declare-fun e!1231396 () Bool)

(assert (=> d!587101 (= lt!738299 e!1231396)))

(declare-fun res!861436 () Bool)

(assert (=> d!587101 (=> (not res!861436) (not e!1231396))))

(assert (=> d!587101 (= res!861436 ((_ is Cons!21925) (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598))))))))

(assert (=> d!587101 (= (contains!3961 (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598)))) lt!738108) lt!738299)))

(declare-fun b!1926383 () Bool)

(declare-fun e!1231397 () Bool)

(assert (=> b!1926383 (= e!1231396 e!1231397)))

(declare-fun res!861437 () Bool)

(assert (=> b!1926383 (=> res!861437 e!1231397)))

(assert (=> b!1926383 (= res!861437 (= (h!27326 (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598))))) lt!738108))))

(declare-fun b!1926384 () Bool)

(assert (=> b!1926384 (= e!1231397 (contains!3961 (t!179444 (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598))))) lt!738108))))

(assert (= (and d!587101 res!861436) b!1926383))

(assert (= (and b!1926383 (not res!861437)) b!1926384))

(assert (=> d!587101 m!2361819))

(declare-fun m!2362543 () Bool)

(assert (=> d!587101 m!2362543))

(declare-fun m!2362545 () Bool)

(assert (=> d!587101 m!2362545))

(declare-fun m!2362547 () Bool)

(assert (=> b!1926384 m!2362547))

(assert (=> b!1925832 d!587101))

(declare-fun d!587103 () Bool)

(declare-fun lt!738308 () BalanceConc!14452)

(assert (=> d!587103 (= (list!8865 lt!738308) (printList!1080 thiss!23328 (list!8866 lt!738085)))))

(assert (=> d!587103 (= lt!738308 (printTailRec!1021 thiss!23328 lt!738085 0 (BalanceConc!14453 Empty!7318)))))

(assert (=> d!587103 (= (print!1515 thiss!23328 lt!738085) lt!738308)))

(declare-fun bs!414651 () Bool)

(assert (= bs!414651 d!587103))

(declare-fun m!2362579 () Bool)

(assert (=> bs!414651 m!2362579))

(declare-fun m!2362581 () Bool)

(assert (=> bs!414651 m!2362581))

(assert (=> bs!414651 m!2362581))

(declare-fun m!2362583 () Bool)

(assert (=> bs!414651 m!2362583))

(assert (=> bs!414651 m!2361843))

(assert (=> b!1925832 d!587103))

(declare-fun b!1926396 () Bool)

(declare-fun e!1231406 () List!22007)

(assert (=> b!1926396 (= e!1231406 lt!738105)))

(declare-fun b!1926398 () Bool)

(declare-fun res!861439 () Bool)

(declare-fun e!1231405 () Bool)

(assert (=> b!1926398 (=> (not res!861439) (not e!1231405))))

(declare-fun lt!738309 () List!22007)

(assert (=> b!1926398 (= res!861439 (= (size!17104 lt!738309) (+ (size!17104 (++!5877 lt!738086 lt!738102)) (size!17104 lt!738105))))))

(declare-fun d!587109 () Bool)

(assert (=> d!587109 e!1231405))

(declare-fun res!861438 () Bool)

(assert (=> d!587109 (=> (not res!861438) (not e!1231405))))

(assert (=> d!587109 (= res!861438 (= (content!3168 lt!738309) ((_ map or) (content!3168 (++!5877 lt!738086 lt!738102)) (content!3168 lt!738105))))))

(assert (=> d!587109 (= lt!738309 e!1231406)))

(declare-fun c!313220 () Bool)

(assert (=> d!587109 (= c!313220 ((_ is Nil!21925) (++!5877 lt!738086 lt!738102)))))

(assert (=> d!587109 (= (++!5877 (++!5877 lt!738086 lt!738102) lt!738105) lt!738309)))

(declare-fun b!1926397 () Bool)

(assert (=> b!1926397 (= e!1231406 (Cons!21925 (h!27326 (++!5877 lt!738086 lt!738102)) (++!5877 (t!179444 (++!5877 lt!738086 lt!738102)) lt!738105)))))

(declare-fun b!1926399 () Bool)

(assert (=> b!1926399 (= e!1231405 (or (not (= lt!738105 Nil!21925)) (= lt!738309 (++!5877 lt!738086 lt!738102))))))

(assert (= (and d!587109 c!313220) b!1926396))

(assert (= (and d!587109 (not c!313220)) b!1926397))

(assert (= (and d!587109 res!861438) b!1926398))

(assert (= (and b!1926398 res!861439) b!1926399))

(declare-fun m!2362585 () Bool)

(assert (=> b!1926398 m!2362585))

(assert (=> b!1926398 m!2361829))

(declare-fun m!2362587 () Bool)

(assert (=> b!1926398 m!2362587))

(assert (=> b!1926398 m!2362051))

(declare-fun m!2362589 () Bool)

(assert (=> d!587109 m!2362589))

(assert (=> d!587109 m!2361829))

(declare-fun m!2362591 () Bool)

(assert (=> d!587109 m!2362591))

(assert (=> d!587109 m!2362057))

(declare-fun m!2362593 () Bool)

(assert (=> b!1926397 m!2362593))

(assert (=> b!1925832 d!587109))

(declare-fun d!587111 () Bool)

(declare-fun lt!738347 () BalanceConc!14452)

(declare-fun printListTailRec!451 (LexerInterface!3545 List!22008 List!22007) List!22007)

(declare-fun dropList!782 (BalanceConc!14454 Int) List!22008)

(assert (=> d!587111 (= (list!8865 lt!738347) (printListTailRec!451 thiss!23328 (dropList!782 lt!738085 0) (list!8865 (BalanceConc!14453 Empty!7318))))))

(declare-fun e!1231433 () BalanceConc!14452)

(assert (=> d!587111 (= lt!738347 e!1231433)))

(declare-fun c!313233 () Bool)

(assert (=> d!587111 (= c!313233 (>= 0 (size!17103 lt!738085)))))

(declare-fun e!1231434 () Bool)

(assert (=> d!587111 e!1231434))

(declare-fun res!861460 () Bool)

(assert (=> d!587111 (=> (not res!861460) (not e!1231434))))

(assert (=> d!587111 (= res!861460 (>= 0 0))))

(assert (=> d!587111 (= (printTailRec!1021 thiss!23328 lt!738085 0 (BalanceConc!14453 Empty!7318)) lt!738347)))

(declare-fun b!1926442 () Bool)

(assert (=> b!1926442 (= e!1231434 (<= 0 (size!17103 lt!738085)))))

(declare-fun b!1926443 () Bool)

(assert (=> b!1926443 (= e!1231433 (BalanceConc!14453 Empty!7318))))

(declare-fun b!1926444 () Bool)

(declare-fun ++!5879 (BalanceConc!14452 BalanceConc!14452) BalanceConc!14452)

(assert (=> b!1926444 (= e!1231433 (printTailRec!1021 thiss!23328 lt!738085 (+ 0 1) (++!5879 (BalanceConc!14453 Empty!7318) (charsOf!2472 (apply!5686 lt!738085 0)))))))

(declare-fun lt!738343 () List!22008)

(assert (=> b!1926444 (= lt!738343 (list!8866 lt!738085))))

(declare-fun lt!738345 () Unit!36264)

(declare-fun lemmaDropApply!706 (List!22008 Int) Unit!36264)

(assert (=> b!1926444 (= lt!738345 (lemmaDropApply!706 lt!738343 0))))

(declare-fun head!4492 (List!22008) Token!7416)

(declare-fun drop!1073 (List!22008 Int) List!22008)

(declare-fun apply!5691 (List!22008 Int) Token!7416)

(assert (=> b!1926444 (= (head!4492 (drop!1073 lt!738343 0)) (apply!5691 lt!738343 0))))

(declare-fun lt!738348 () Unit!36264)

(assert (=> b!1926444 (= lt!738348 lt!738345)))

(declare-fun lt!738346 () List!22008)

(assert (=> b!1926444 (= lt!738346 (list!8866 lt!738085))))

(declare-fun lt!738344 () Unit!36264)

(declare-fun lemmaDropTail!682 (List!22008 Int) Unit!36264)

(assert (=> b!1926444 (= lt!738344 (lemmaDropTail!682 lt!738346 0))))

(declare-fun tail!2978 (List!22008) List!22008)

(assert (=> b!1926444 (= (tail!2978 (drop!1073 lt!738346 0)) (drop!1073 lt!738346 (+ 0 1)))))

(declare-fun lt!738349 () Unit!36264)

(assert (=> b!1926444 (= lt!738349 lt!738344)))

(assert (= (and d!587111 res!861460) b!1926442))

(assert (= (and d!587111 c!313233) b!1926443))

(assert (= (and d!587111 (not c!313233)) b!1926444))

(declare-fun m!2362643 () Bool)

(assert (=> d!587111 m!2362643))

(declare-fun m!2362645 () Bool)

(assert (=> d!587111 m!2362645))

(declare-fun m!2362647 () Bool)

(assert (=> d!587111 m!2362647))

(declare-fun m!2362649 () Bool)

(assert (=> d!587111 m!2362649))

(assert (=> d!587111 m!2362643))

(assert (=> d!587111 m!2362645))

(declare-fun m!2362651 () Bool)

(assert (=> d!587111 m!2362651))

(assert (=> b!1926442 m!2362649))

(declare-fun m!2362653 () Bool)

(assert (=> b!1926444 m!2362653))

(declare-fun m!2362655 () Bool)

(assert (=> b!1926444 m!2362655))

(declare-fun m!2362657 () Bool)

(assert (=> b!1926444 m!2362657))

(declare-fun m!2362659 () Bool)

(assert (=> b!1926444 m!2362659))

(declare-fun m!2362661 () Bool)

(assert (=> b!1926444 m!2362661))

(declare-fun m!2362663 () Bool)

(assert (=> b!1926444 m!2362663))

(declare-fun m!2362665 () Bool)

(assert (=> b!1926444 m!2362665))

(assert (=> b!1926444 m!2362663))

(assert (=> b!1926444 m!2362655))

(declare-fun m!2362667 () Bool)

(assert (=> b!1926444 m!2362667))

(declare-fun m!2362669 () Bool)

(assert (=> b!1926444 m!2362669))

(assert (=> b!1926444 m!2362659))

(declare-fun m!2362671 () Bool)

(assert (=> b!1926444 m!2362671))

(declare-fun m!2362673 () Bool)

(assert (=> b!1926444 m!2362673))

(assert (=> b!1926444 m!2362673))

(assert (=> b!1926444 m!2362653))

(assert (=> b!1926444 m!2362581))

(declare-fun m!2362675 () Bool)

(assert (=> b!1926444 m!2362675))

(assert (=> b!1925832 d!587111))

(declare-fun b!1926445 () Bool)

(declare-fun e!1231436 () List!22007)

(assert (=> b!1926445 (= e!1231436 (++!5877 lt!738102 lt!738105))))

(declare-fun b!1926447 () Bool)

(declare-fun res!861462 () Bool)

(declare-fun e!1231435 () Bool)

(assert (=> b!1926447 (=> (not res!861462) (not e!1231435))))

(declare-fun lt!738350 () List!22007)

(assert (=> b!1926447 (= res!861462 (= (size!17104 lt!738350) (+ (size!17104 lt!738086) (size!17104 (++!5877 lt!738102 lt!738105)))))))

(declare-fun d!587127 () Bool)

(assert (=> d!587127 e!1231435))

(declare-fun res!861461 () Bool)

(assert (=> d!587127 (=> (not res!861461) (not e!1231435))))

(assert (=> d!587127 (= res!861461 (= (content!3168 lt!738350) ((_ map or) (content!3168 lt!738086) (content!3168 (++!5877 lt!738102 lt!738105)))))))

(assert (=> d!587127 (= lt!738350 e!1231436)))

(declare-fun c!313234 () Bool)

(assert (=> d!587127 (= c!313234 ((_ is Nil!21925) lt!738086))))

(assert (=> d!587127 (= (++!5877 lt!738086 (++!5877 lt!738102 lt!738105)) lt!738350)))

(declare-fun b!1926446 () Bool)

(assert (=> b!1926446 (= e!1231436 (Cons!21925 (h!27326 lt!738086) (++!5877 (t!179444 lt!738086) (++!5877 lt!738102 lt!738105))))))

(declare-fun b!1926448 () Bool)

(assert (=> b!1926448 (= e!1231435 (or (not (= (++!5877 lt!738102 lt!738105) Nil!21925)) (= lt!738350 lt!738086)))))

(assert (= (and d!587127 c!313234) b!1926445))

(assert (= (and d!587127 (not c!313234)) b!1926446))

(assert (= (and d!587127 res!861461) b!1926447))

(assert (= (and b!1926447 res!861462) b!1926448))

(declare-fun m!2362677 () Bool)

(assert (=> b!1926447 m!2362677))

(assert (=> b!1926447 m!2362017))

(assert (=> b!1926447 m!2361817))

(declare-fun m!2362679 () Bool)

(assert (=> b!1926447 m!2362679))

(declare-fun m!2362681 () Bool)

(assert (=> d!587127 m!2362681))

(assert (=> d!587127 m!2362055))

(assert (=> d!587127 m!2361817))

(declare-fun m!2362683 () Bool)

(assert (=> d!587127 m!2362683))

(assert (=> b!1926446 m!2361817))

(declare-fun m!2362685 () Bool)

(assert (=> b!1926446 m!2362685))

(assert (=> b!1925832 d!587127))

(declare-fun bm!118448 () Bool)

(declare-fun call!118454 () List!22007)

(declare-fun call!118455 () List!22007)

(assert (=> bm!118448 (= call!118454 call!118455)))

(declare-fun bm!118449 () Bool)

(declare-fun c!313238 () Bool)

(declare-fun c!313237 () Bool)

(assert (=> bm!118449 (= call!118455 (usedCharacters!384 (ite c!313237 (reg!5686 (regex!3932 (rule!6137 (h!27327 tokens!598)))) (ite c!313238 (regTwo!11227 (regex!3932 (rule!6137 (h!27327 tokens!598)))) (regOne!11226 (regex!3932 (rule!6137 (h!27327 tokens!598))))))))))

(declare-fun b!1926449 () Bool)

(declare-fun e!1231437 () List!22007)

(declare-fun call!118453 () List!22007)

(assert (=> b!1926449 (= e!1231437 call!118453)))

(declare-fun b!1926450 () Bool)

(declare-fun e!1231440 () List!22007)

(assert (=> b!1926450 (= e!1231440 (Cons!21925 (c!313092 (regex!3932 (rule!6137 (h!27327 tokens!598)))) Nil!21925))))

(declare-fun b!1926451 () Bool)

(declare-fun e!1231438 () List!22007)

(assert (=> b!1926451 (= e!1231438 e!1231437)))

(assert (=> b!1926451 (= c!313238 ((_ is Union!5357) (regex!3932 (rule!6137 (h!27327 tokens!598)))))))

(declare-fun b!1926452 () Bool)

(assert (=> b!1926452 (= e!1231437 call!118453)))

(declare-fun b!1926453 () Bool)

(declare-fun e!1231439 () List!22007)

(assert (=> b!1926453 (= e!1231439 e!1231440)))

(declare-fun c!313235 () Bool)

(assert (=> b!1926453 (= c!313235 ((_ is ElementMatch!5357) (regex!3932 (rule!6137 (h!27327 tokens!598)))))))

(declare-fun b!1926454 () Bool)

(assert (=> b!1926454 (= e!1231438 call!118455)))

(declare-fun b!1926455 () Bool)

(assert (=> b!1926455 (= e!1231439 Nil!21925)))

(declare-fun d!587129 () Bool)

(declare-fun c!313236 () Bool)

(assert (=> d!587129 (= c!313236 (or ((_ is EmptyExpr!5357) (regex!3932 (rule!6137 (h!27327 tokens!598)))) ((_ is EmptyLang!5357) (regex!3932 (rule!6137 (h!27327 tokens!598))))))))

(assert (=> d!587129 (= (usedCharacters!384 (regex!3932 (rule!6137 (h!27327 tokens!598)))) e!1231439)))

(declare-fun bm!118450 () Bool)

(declare-fun call!118456 () List!22007)

(assert (=> bm!118450 (= call!118453 (++!5877 (ite c!313238 call!118456 call!118454) (ite c!313238 call!118454 call!118456)))))

(declare-fun bm!118451 () Bool)

(assert (=> bm!118451 (= call!118456 (usedCharacters!384 (ite c!313238 (regOne!11227 (regex!3932 (rule!6137 (h!27327 tokens!598)))) (regTwo!11226 (regex!3932 (rule!6137 (h!27327 tokens!598)))))))))

(declare-fun b!1926456 () Bool)

(assert (=> b!1926456 (= c!313237 ((_ is Star!5357) (regex!3932 (rule!6137 (h!27327 tokens!598)))))))

(assert (=> b!1926456 (= e!1231440 e!1231438)))

(assert (= (and d!587129 c!313236) b!1926455))

(assert (= (and d!587129 (not c!313236)) b!1926453))

(assert (= (and b!1926453 c!313235) b!1926450))

(assert (= (and b!1926453 (not c!313235)) b!1926456))

(assert (= (and b!1926456 c!313237) b!1926454))

(assert (= (and b!1926456 (not c!313237)) b!1926451))

(assert (= (and b!1926451 c!313238) b!1926449))

(assert (= (and b!1926451 (not c!313238)) b!1926452))

(assert (= (or b!1926449 b!1926452) bm!118451))

(assert (= (or b!1926449 b!1926452) bm!118448))

(assert (= (or b!1926449 b!1926452) bm!118450))

(assert (= (or b!1926454 bm!118448) bm!118449))

(declare-fun m!2362687 () Bool)

(assert (=> bm!118449 m!2362687))

(declare-fun m!2362689 () Bool)

(assert (=> bm!118450 m!2362689))

(declare-fun m!2362691 () Bool)

(assert (=> bm!118451 m!2362691))

(assert (=> b!1925832 d!587129))

(declare-fun d!587131 () Bool)

(assert (=> d!587131 (= (list!8865 lt!738101) (list!8867 (c!313093 lt!738101)))))

(declare-fun bs!414654 () Bool)

(assert (= bs!414654 d!587131))

(declare-fun m!2362693 () Bool)

(assert (=> bs!414654 m!2362693))

(assert (=> b!1925832 d!587131))

(declare-fun b!1926461 () Bool)

(declare-fun res!861463 () Bool)

(declare-fun e!1231447 () Bool)

(assert (=> b!1926461 (=> res!861463 e!1231447)))

(assert (=> b!1926461 (= res!861463 (not ((_ is ElementMatch!5357) (regex!3932 lt!738097))))))

(declare-fun e!1231445 () Bool)

(assert (=> b!1926461 (= e!1231445 e!1231447)))

(declare-fun b!1926462 () Bool)

(declare-fun res!861465 () Bool)

(assert (=> b!1926462 (=> res!861465 e!1231447)))

(declare-fun e!1231443 () Bool)

(assert (=> b!1926462 (= res!861465 e!1231443)))

(declare-fun res!861467 () Bool)

(assert (=> b!1926462 (=> (not res!861467) (not e!1231443))))

(declare-fun lt!738352 () Bool)

(assert (=> b!1926462 (= res!861467 lt!738352)))

(declare-fun b!1926463 () Bool)

(declare-fun e!1231448 () Bool)

(assert (=> b!1926463 (= e!1231448 (nullable!1606 (regex!3932 lt!738097)))))

(declare-fun b!1926464 () Bool)

(assert (=> b!1926464 (= e!1231445 (not lt!738352))))

(declare-fun bm!118452 () Bool)

(declare-fun call!118457 () Bool)

(assert (=> bm!118452 (= call!118457 (isEmpty!13498 lt!738086))))

(declare-fun b!1926465 () Bool)

(assert (=> b!1926465 (= e!1231443 (= (head!4490 lt!738086) (c!313092 (regex!3932 lt!738097))))))

(declare-fun b!1926466 () Bool)

(declare-fun e!1231444 () Bool)

(assert (=> b!1926466 (= e!1231447 e!1231444)))

(declare-fun res!861470 () Bool)

(assert (=> b!1926466 (=> (not res!861470) (not e!1231444))))

(assert (=> b!1926466 (= res!861470 (not lt!738352))))

(declare-fun b!1926467 () Bool)

(declare-fun e!1231449 () Bool)

(assert (=> b!1926467 (= e!1231449 e!1231445)))

(declare-fun c!313239 () Bool)

(assert (=> b!1926467 (= c!313239 ((_ is EmptyLang!5357) (regex!3932 lt!738097)))))

(declare-fun b!1926468 () Bool)

(declare-fun e!1231446 () Bool)

(assert (=> b!1926468 (= e!1231446 (not (= (head!4490 lt!738086) (c!313092 (regex!3932 lt!738097)))))))

(declare-fun b!1926469 () Bool)

(declare-fun res!861466 () Bool)

(assert (=> b!1926469 (=> (not res!861466) (not e!1231443))))

(assert (=> b!1926469 (= res!861466 (isEmpty!13498 (tail!2975 lt!738086)))))

(declare-fun b!1926470 () Bool)

(assert (=> b!1926470 (= e!1231449 (= lt!738352 call!118457))))

(declare-fun d!587133 () Bool)

(assert (=> d!587133 e!1231449))

(declare-fun c!313241 () Bool)

(assert (=> d!587133 (= c!313241 ((_ is EmptyExpr!5357) (regex!3932 lt!738097)))))

(assert (=> d!587133 (= lt!738352 e!1231448)))

(declare-fun c!313240 () Bool)

(assert (=> d!587133 (= c!313240 (isEmpty!13498 lt!738086))))

(assert (=> d!587133 (validRegex!2132 (regex!3932 lt!738097))))

(assert (=> d!587133 (= (matchR!2625 (regex!3932 lt!738097) lt!738086) lt!738352)))

(declare-fun b!1926471 () Bool)

(assert (=> b!1926471 (= e!1231444 e!1231446)))

(declare-fun res!861468 () Bool)

(assert (=> b!1926471 (=> res!861468 e!1231446)))

(assert (=> b!1926471 (= res!861468 call!118457)))

(declare-fun b!1926472 () Bool)

(declare-fun res!861464 () Bool)

(assert (=> b!1926472 (=> (not res!861464) (not e!1231443))))

(assert (=> b!1926472 (= res!861464 (not call!118457))))

(declare-fun b!1926473 () Bool)

(declare-fun res!861469 () Bool)

(assert (=> b!1926473 (=> res!861469 e!1231446)))

(assert (=> b!1926473 (= res!861469 (not (isEmpty!13498 (tail!2975 lt!738086))))))

(declare-fun b!1926474 () Bool)

(assert (=> b!1926474 (= e!1231448 (matchR!2625 (derivativeStep!1365 (regex!3932 lt!738097) (head!4490 lt!738086)) (tail!2975 lt!738086)))))

(assert (= (and d!587133 c!313240) b!1926463))

(assert (= (and d!587133 (not c!313240)) b!1926474))

(assert (= (and d!587133 c!313241) b!1926470))

(assert (= (and d!587133 (not c!313241)) b!1926467))

(assert (= (and b!1926467 c!313239) b!1926464))

(assert (= (and b!1926467 (not c!313239)) b!1926461))

(assert (= (and b!1926461 (not res!861463)) b!1926462))

(assert (= (and b!1926462 res!861467) b!1926472))

(assert (= (and b!1926472 res!861464) b!1926469))

(assert (= (and b!1926469 res!861466) b!1926465))

(assert (= (and b!1926462 (not res!861465)) b!1926466))

(assert (= (and b!1926466 res!861470) b!1926471))

(assert (= (and b!1926471 (not res!861468)) b!1926473))

(assert (= (and b!1926473 (not res!861469)) b!1926468))

(assert (= (or b!1926470 b!1926471 b!1926472) bm!118452))

(declare-fun m!2362695 () Bool)

(assert (=> b!1926474 m!2362695))

(assert (=> b!1926474 m!2362695))

(declare-fun m!2362697 () Bool)

(assert (=> b!1926474 m!2362697))

(declare-fun m!2362699 () Bool)

(assert (=> b!1926474 m!2362699))

(assert (=> b!1926474 m!2362697))

(assert (=> b!1926474 m!2362699))

(declare-fun m!2362703 () Bool)

(assert (=> b!1926474 m!2362703))

(assert (=> b!1926473 m!2362699))

(assert (=> b!1926473 m!2362699))

(declare-fun m!2362707 () Bool)

(assert (=> b!1926473 m!2362707))

(declare-fun m!2362709 () Bool)

(assert (=> d!587133 m!2362709))

(declare-fun m!2362711 () Bool)

(assert (=> d!587133 m!2362711))

(assert (=> b!1926465 m!2362695))

(assert (=> bm!118452 m!2362709))

(declare-fun m!2362713 () Bool)

(assert (=> b!1926463 m!2362713))

(assert (=> b!1926469 m!2362699))

(assert (=> b!1926469 m!2362699))

(assert (=> b!1926469 m!2362707))

(assert (=> b!1926468 m!2362695))

(assert (=> b!1925843 d!587133))

(declare-fun d!587135 () Bool)

(assert (=> d!587135 (= (get!6902 lt!738089) (v!26626 lt!738089))))

(assert (=> b!1925843 d!587135))

(declare-fun b!1926489 () Bool)

(declare-fun res!861473 () Bool)

(declare-fun e!1231463 () Bool)

(assert (=> b!1926489 (=> res!861473 e!1231463)))

(assert (=> b!1926489 (= res!861473 (not ((_ is IntegerValue!12206) (value!123653 separatorToken!354))))))

(declare-fun e!1231462 () Bool)

(assert (=> b!1926489 (= e!1231462 e!1231463)))

(declare-fun b!1926490 () Bool)

(declare-fun inv!17 (TokenValue!4068) Bool)

(assert (=> b!1926490 (= e!1231462 (inv!17 (value!123653 separatorToken!354)))))

(declare-fun d!587137 () Bool)

(declare-fun c!313246 () Bool)

(assert (=> d!587137 (= c!313246 ((_ is IntegerValue!12204) (value!123653 separatorToken!354)))))

(declare-fun e!1231461 () Bool)

(assert (=> d!587137 (= (inv!21 (value!123653 separatorToken!354)) e!1231461)))

(declare-fun b!1926491 () Bool)

(assert (=> b!1926491 (= e!1231461 e!1231462)))

(declare-fun c!313247 () Bool)

(assert (=> b!1926491 (= c!313247 ((_ is IntegerValue!12205) (value!123653 separatorToken!354)))))

(declare-fun b!1926492 () Bool)

(declare-fun inv!16 (TokenValue!4068) Bool)

(assert (=> b!1926492 (= e!1231461 (inv!16 (value!123653 separatorToken!354)))))

(declare-fun b!1926493 () Bool)

(declare-fun inv!15 (TokenValue!4068) Bool)

(assert (=> b!1926493 (= e!1231463 (inv!15 (value!123653 separatorToken!354)))))

(assert (= (and d!587137 c!313246) b!1926492))

(assert (= (and d!587137 (not c!313246)) b!1926491))

(assert (= (and b!1926491 c!313247) b!1926490))

(assert (= (and b!1926491 (not c!313247)) b!1926489))

(assert (= (and b!1926489 (not res!861473)) b!1926493))

(declare-fun m!2362727 () Bool)

(assert (=> b!1926490 m!2362727))

(declare-fun m!2362731 () Bool)

(assert (=> b!1926492 m!2362731))

(declare-fun m!2362733 () Bool)

(assert (=> b!1926493 m!2362733))

(assert (=> b!1925821 d!587137))

(declare-fun d!587141 () Bool)

(assert (=> d!587141 (= (isEmpty!13496 rules!3198) ((_ is Nil!21927) rules!3198))))

(assert (=> b!1925823 d!587141))

(declare-fun d!587145 () Bool)

(declare-fun res!861478 () Bool)

(declare-fun e!1231469 () Bool)

(assert (=> d!587145 (=> res!861478 e!1231469)))

(assert (=> d!587145 (= res!861478 ((_ is Nil!21926) tokens!598))))

(assert (=> d!587145 (= (forall!4634 tokens!598 lambda!75143) e!1231469)))

(declare-fun b!1926499 () Bool)

(declare-fun e!1231470 () Bool)

(assert (=> b!1926499 (= e!1231469 e!1231470)))

(declare-fun res!861479 () Bool)

(assert (=> b!1926499 (=> (not res!861479) (not e!1231470))))

(declare-fun dynLambda!10614 (Int Token!7416) Bool)

(assert (=> b!1926499 (= res!861479 (dynLambda!10614 lambda!75143 (h!27327 tokens!598)))))

(declare-fun b!1926500 () Bool)

(assert (=> b!1926500 (= e!1231470 (forall!4634 (t!179445 tokens!598) lambda!75143))))

(assert (= (and d!587145 (not res!861478)) b!1926499))

(assert (= (and b!1926499 res!861479) b!1926500))

(declare-fun b_lambda!63765 () Bool)

(assert (=> (not b_lambda!63765) (not b!1926499)))

(declare-fun m!2362739 () Bool)

(assert (=> b!1926499 m!2362739))

(declare-fun m!2362741 () Bool)

(assert (=> b!1926500 m!2362741))

(assert (=> b!1925822 d!587145))

(declare-fun b!1926501 () Bool)

(declare-fun res!861480 () Bool)

(declare-fun e!1231473 () Bool)

(assert (=> b!1926501 (=> res!861480 e!1231473)))

(assert (=> b!1926501 (= res!861480 (not ((_ is IntegerValue!12206) (value!123653 (h!27327 tokens!598)))))))

(declare-fun e!1231472 () Bool)

(assert (=> b!1926501 (= e!1231472 e!1231473)))

(declare-fun b!1926502 () Bool)

(assert (=> b!1926502 (= e!1231472 (inv!17 (value!123653 (h!27327 tokens!598))))))

(declare-fun d!587147 () Bool)

(declare-fun c!313248 () Bool)

(assert (=> d!587147 (= c!313248 ((_ is IntegerValue!12204) (value!123653 (h!27327 tokens!598))))))

(declare-fun e!1231471 () Bool)

(assert (=> d!587147 (= (inv!21 (value!123653 (h!27327 tokens!598))) e!1231471)))

(declare-fun b!1926503 () Bool)

(assert (=> b!1926503 (= e!1231471 e!1231472)))

(declare-fun c!313249 () Bool)

(assert (=> b!1926503 (= c!313249 ((_ is IntegerValue!12205) (value!123653 (h!27327 tokens!598))))))

(declare-fun b!1926504 () Bool)

(assert (=> b!1926504 (= e!1231471 (inv!16 (value!123653 (h!27327 tokens!598))))))

(declare-fun b!1926505 () Bool)

(assert (=> b!1926505 (= e!1231473 (inv!15 (value!123653 (h!27327 tokens!598))))))

(assert (= (and d!587147 c!313248) b!1926504))

(assert (= (and d!587147 (not c!313248)) b!1926503))

(assert (= (and b!1926503 c!313249) b!1926502))

(assert (= (and b!1926503 (not c!313249)) b!1926501))

(assert (= (and b!1926501 (not res!861480)) b!1926505))

(declare-fun m!2362743 () Bool)

(assert (=> b!1926502 m!2362743))

(declare-fun m!2362745 () Bool)

(assert (=> b!1926504 m!2362745))

(declare-fun m!2362747 () Bool)

(assert (=> b!1926505 m!2362747))

(assert (=> b!1925833 d!587147))

(declare-fun b!1926518 () Bool)

(declare-fun b_free!55189 () Bool)

(declare-fun b_next!55893 () Bool)

(assert (=> b!1926518 (= b_free!55189 (not b_next!55893))))

(declare-fun t!179514 () Bool)

(declare-fun tb!117911 () Bool)

(assert (=> (and b!1926518 (= (toValue!5565 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179514) tb!117911))

(declare-fun result!142464 () Bool)

(assert (= result!142464 result!142416))

(assert (=> d!587013 t!179514))

(assert (=> d!587045 t!179514))

(declare-fun tb!117913 () Bool)

(declare-fun t!179516 () Bool)

(assert (=> (and b!1926518 (= (toValue!5565 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179516) tb!117913))

(declare-fun result!142466 () Bool)

(assert (= result!142466 result!142436))

(assert (=> d!587045 t!179516))

(declare-fun b_and!151023 () Bool)

(declare-fun tp!550276 () Bool)

(assert (=> b!1926518 (= tp!550276 (and (=> t!179514 result!142464) (=> t!179516 result!142466) b_and!151023))))

(declare-fun b_free!55191 () Bool)

(declare-fun b_next!55895 () Bool)

(assert (=> b!1926518 (= b_free!55191 (not b_next!55895))))

(declare-fun t!179518 () Bool)

(declare-fun tb!117915 () Bool)

(assert (=> (and b!1926518 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179518) tb!117915))

(declare-fun result!142468 () Bool)

(assert (= result!142468 result!142430))

(assert (=> b!1926273 t!179518))

(declare-fun tb!117917 () Bool)

(declare-fun t!179520 () Bool)

(assert (=> (and b!1926518 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179520) tb!117917))

(declare-fun result!142470 () Bool)

(assert (= result!142470 result!142408))

(assert (=> d!587013 t!179520))

(assert (=> d!587039 t!179518))

(declare-fun t!179522 () Bool)

(declare-fun tb!117919 () Bool)

(assert (=> (and b!1926518 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354)))) t!179522) tb!117919))

(declare-fun result!142472 () Bool)

(assert (= result!142472 result!142424))

(assert (=> d!587033 t!179522))

(assert (=> b!1926290 t!179522))

(declare-fun b_and!151025 () Bool)

(declare-fun tp!550275 () Bool)

(assert (=> b!1926518 (= tp!550275 (and (=> t!179518 result!142468) (=> t!179520 result!142470) (=> t!179522 result!142472) b_and!151025))))

(declare-fun e!1231487 () Bool)

(assert (=> b!1926518 (= e!1231487 (and tp!550276 tp!550275))))

(declare-fun tp!550274 () Bool)

(declare-fun b!1926517 () Bool)

(declare-fun e!1231484 () Bool)

(assert (=> b!1926517 (= e!1231484 (and tp!550274 (inv!29001 (tag!4376 (h!27328 (t!179446 rules!3198)))) (inv!29004 (transformation!3932 (h!27328 (t!179446 rules!3198)))) e!1231487))))

(declare-fun b!1926516 () Bool)

(declare-fun e!1231486 () Bool)

(declare-fun tp!550273 () Bool)

(assert (=> b!1926516 (= e!1231486 (and e!1231484 tp!550273))))

(assert (=> b!1925840 (= tp!550244 e!1231486)))

(assert (= b!1926517 b!1926518))

(assert (= b!1926516 b!1926517))

(assert (= (and b!1925840 ((_ is Cons!21927) (t!179446 rules!3198))) b!1926516))

(declare-fun m!2362749 () Bool)

(assert (=> b!1926517 m!2362749))

(declare-fun m!2362751 () Bool)

(assert (=> b!1926517 m!2362751))

(declare-fun b!1926537 () Bool)

(declare-fun b_free!55193 () Bool)

(declare-fun b_next!55897 () Bool)

(assert (=> b!1926537 (= b_free!55193 (not b_next!55897))))

(declare-fun t!179530 () Bool)

(declare-fun tb!117927 () Bool)

(assert (=> (and b!1926537 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179530) tb!117927))

(declare-fun result!142482 () Bool)

(assert (= result!142482 result!142416))

(assert (=> d!587013 t!179530))

(assert (=> d!587045 t!179530))

(declare-fun t!179532 () Bool)

(declare-fun tb!117929 () Bool)

(assert (=> (and b!1926537 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179532) tb!117929))

(declare-fun result!142484 () Bool)

(assert (= result!142484 result!142436))

(assert (=> d!587045 t!179532))

(declare-fun tp!550290 () Bool)

(declare-fun b_and!151039 () Bool)

(assert (=> b!1926537 (= tp!550290 (and (=> t!179530 result!142482) (=> t!179532 result!142484) b_and!151039))))

(declare-fun b_free!55195 () Bool)

(declare-fun b_next!55899 () Bool)

(assert (=> b!1926537 (= b_free!55195 (not b_next!55899))))

(declare-fun t!179534 () Bool)

(declare-fun tb!117931 () Bool)

(assert (=> (and b!1926537 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179534) tb!117931))

(declare-fun result!142486 () Bool)

(assert (= result!142486 result!142430))

(assert (=> b!1926273 t!179534))

(declare-fun t!179536 () Bool)

(declare-fun tb!117933 () Bool)

(assert (=> (and b!1926537 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598))))) t!179536) tb!117933))

(declare-fun result!142488 () Bool)

(assert (= result!142488 result!142408))

(assert (=> d!587013 t!179536))

(assert (=> d!587039 t!179534))

(declare-fun t!179538 () Bool)

(declare-fun tb!117935 () Bool)

(assert (=> (and b!1926537 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354)))) t!179538) tb!117935))

(declare-fun result!142490 () Bool)

(assert (= result!142490 result!142424))

(assert (=> d!587033 t!179538))

(assert (=> b!1926290 t!179538))

(declare-fun b_and!151041 () Bool)

(declare-fun tp!550287 () Bool)

(assert (=> b!1926537 (= tp!550287 (and (=> t!179538 result!142490) (=> t!179536 result!142488) (=> t!179534 result!142486) b_and!151041))))

(declare-fun tp!550288 () Bool)

(declare-fun e!1231507 () Bool)

(declare-fun b!1926535 () Bool)

(declare-fun e!1231508 () Bool)

(assert (=> b!1926535 (= e!1231508 (and (inv!21 (value!123653 (h!27327 (t!179445 tokens!598)))) e!1231507 tp!550288))))

(declare-fun tp!550291 () Bool)

(declare-fun b!1926534 () Bool)

(declare-fun e!1231506 () Bool)

(assert (=> b!1926534 (= e!1231506 (and (inv!29005 (h!27327 (t!179445 tokens!598))) e!1231508 tp!550291))))

(assert (=> b!1925830 (= tp!550245 e!1231506)))

(declare-fun e!1231504 () Bool)

(assert (=> b!1926537 (= e!1231504 (and tp!550290 tp!550287))))

(declare-fun tp!550289 () Bool)

(declare-fun b!1926536 () Bool)

(assert (=> b!1926536 (= e!1231507 (and tp!550289 (inv!29001 (tag!4376 (rule!6137 (h!27327 (t!179445 tokens!598))))) (inv!29004 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) e!1231504))))

(assert (= b!1926536 b!1926537))

(assert (= b!1926535 b!1926536))

(assert (= b!1926534 b!1926535))

(assert (= (and b!1925830 ((_ is Cons!21926) (t!179445 tokens!598))) b!1926534))

(declare-fun m!2362761 () Bool)

(assert (=> b!1926535 m!2362761))

(declare-fun m!2362763 () Bool)

(assert (=> b!1926534 m!2362763))

(declare-fun m!2362765 () Bool)

(assert (=> b!1926536 m!2362765))

(declare-fun m!2362767 () Bool)

(assert (=> b!1926536 m!2362767))

(declare-fun b!1926549 () Bool)

(declare-fun e!1231512 () Bool)

(declare-fun tp!550304 () Bool)

(declare-fun tp!550305 () Bool)

(assert (=> b!1926549 (= e!1231512 (and tp!550304 tp!550305))))

(assert (=> b!1925841 (= tp!550243 e!1231512)))

(declare-fun b!1926550 () Bool)

(declare-fun tp!550303 () Bool)

(assert (=> b!1926550 (= e!1231512 tp!550303)))

(declare-fun b!1926551 () Bool)

(declare-fun tp!550302 () Bool)

(declare-fun tp!550306 () Bool)

(assert (=> b!1926551 (= e!1231512 (and tp!550302 tp!550306))))

(declare-fun b!1926548 () Bool)

(declare-fun tp_is_empty!9131 () Bool)

(assert (=> b!1926548 (= e!1231512 tp_is_empty!9131)))

(assert (= (and b!1925841 ((_ is ElementMatch!5357) (regex!3932 (rule!6137 separatorToken!354)))) b!1926548))

(assert (= (and b!1925841 ((_ is Concat!9426) (regex!3932 (rule!6137 separatorToken!354)))) b!1926549))

(assert (= (and b!1925841 ((_ is Star!5357) (regex!3932 (rule!6137 separatorToken!354)))) b!1926550))

(assert (= (and b!1925841 ((_ is Union!5357) (regex!3932 (rule!6137 separatorToken!354)))) b!1926551))

(declare-fun b!1926553 () Bool)

(declare-fun e!1231513 () Bool)

(declare-fun tp!550309 () Bool)

(declare-fun tp!550310 () Bool)

(assert (=> b!1926553 (= e!1231513 (and tp!550309 tp!550310))))

(assert (=> b!1925824 (= tp!550250 e!1231513)))

(declare-fun b!1926554 () Bool)

(declare-fun tp!550308 () Bool)

(assert (=> b!1926554 (= e!1231513 tp!550308)))

(declare-fun b!1926555 () Bool)

(declare-fun tp!550307 () Bool)

(declare-fun tp!550311 () Bool)

(assert (=> b!1926555 (= e!1231513 (and tp!550307 tp!550311))))

(declare-fun b!1926552 () Bool)

(assert (=> b!1926552 (= e!1231513 tp_is_empty!9131)))

(assert (= (and b!1925824 ((_ is ElementMatch!5357) (regex!3932 (rule!6137 (h!27327 tokens!598))))) b!1926552))

(assert (= (and b!1925824 ((_ is Concat!9426) (regex!3932 (rule!6137 (h!27327 tokens!598))))) b!1926553))

(assert (= (and b!1925824 ((_ is Star!5357) (regex!3932 (rule!6137 (h!27327 tokens!598))))) b!1926554))

(assert (= (and b!1925824 ((_ is Union!5357) (regex!3932 (rule!6137 (h!27327 tokens!598))))) b!1926555))

(declare-fun b!1926557 () Bool)

(declare-fun e!1231514 () Bool)

(declare-fun tp!550314 () Bool)

(declare-fun tp!550315 () Bool)

(assert (=> b!1926557 (= e!1231514 (and tp!550314 tp!550315))))

(assert (=> b!1925836 (= tp!550242 e!1231514)))

(declare-fun b!1926558 () Bool)

(declare-fun tp!550313 () Bool)

(assert (=> b!1926558 (= e!1231514 tp!550313)))

(declare-fun b!1926559 () Bool)

(declare-fun tp!550312 () Bool)

(declare-fun tp!550316 () Bool)

(assert (=> b!1926559 (= e!1231514 (and tp!550312 tp!550316))))

(declare-fun b!1926556 () Bool)

(assert (=> b!1926556 (= e!1231514 tp_is_empty!9131)))

(assert (= (and b!1925836 ((_ is ElementMatch!5357) (regex!3932 (h!27328 rules!3198)))) b!1926556))

(assert (= (and b!1925836 ((_ is Concat!9426) (regex!3932 (h!27328 rules!3198)))) b!1926557))

(assert (= (and b!1925836 ((_ is Star!5357) (regex!3932 (h!27328 rules!3198)))) b!1926558))

(assert (= (and b!1925836 ((_ is Union!5357) (regex!3932 (h!27328 rules!3198)))) b!1926559))

(declare-fun b!1926564 () Bool)

(declare-fun e!1231517 () Bool)

(declare-fun tp!550319 () Bool)

(assert (=> b!1926564 (= e!1231517 (and tp_is_empty!9131 tp!550319))))

(assert (=> b!1925821 (= tp!550252 e!1231517)))

(assert (= (and b!1925821 ((_ is Cons!21925) (originalCharacters!4739 separatorToken!354))) b!1926564))

(declare-fun b!1926565 () Bool)

(declare-fun e!1231518 () Bool)

(declare-fun tp!550320 () Bool)

(assert (=> b!1926565 (= e!1231518 (and tp_is_empty!9131 tp!550320))))

(assert (=> b!1925833 (= tp!550254 e!1231518)))

(assert (= (and b!1925833 ((_ is Cons!21925) (originalCharacters!4739 (h!27327 tokens!598)))) b!1926565))

(declare-fun b_lambda!63773 () Bool)

(assert (= b_lambda!63745 (or (and b!1926518 b_free!55189 (= (toValue!5565 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925828 b_free!55181) (and b!1925834 b_free!55185 (= (toValue!5565 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1926537 b_free!55193 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925820 b_free!55177 (= (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) b_lambda!63773)))

(declare-fun b_lambda!63775 () Bool)

(assert (= b_lambda!63757 (or (and b!1926518 b_free!55191 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1925828 b_free!55183 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1925834 b_free!55187 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1926537 b_free!55195 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1925820 b_free!55179) b_lambda!63775)))

(declare-fun b_lambda!63777 () Bool)

(assert (= b_lambda!63751 (or (and b!1926518 b_free!55189 (= (toValue!5565 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925828 b_free!55181) (and b!1925834 b_free!55185 (= (toValue!5565 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1926537 b_free!55193 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925820 b_free!55177 (= (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) b_lambda!63777)))

(declare-fun b_lambda!63779 () Bool)

(assert (= b_lambda!63743 (or (and b!1926518 b_free!55191 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925820 b_free!55179 (= (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1926537 b_free!55195 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925828 b_free!55183) (and b!1925834 b_free!55187 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) b_lambda!63779)))

(declare-fun b_lambda!63781 () Bool)

(assert (= b_lambda!63765 (or b!1925822 b_lambda!63781)))

(declare-fun bs!414657 () Bool)

(declare-fun d!587157 () Bool)

(assert (= bs!414657 (and d!587157 b!1925822)))

(assert (=> bs!414657 (= (dynLambda!10614 lambda!75143 (h!27327 tokens!598)) (not (isSeparator!3932 (rule!6137 (h!27327 tokens!598)))))))

(assert (=> b!1926499 d!587157))

(declare-fun b_lambda!63783 () Bool)

(assert (= b_lambda!63753 (or (and b!1926518 b_free!55189 (= (toValue!5565 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925828 b_free!55181) (and b!1925834 b_free!55185 (= (toValue!5565 (transformation!3932 (h!27328 rules!3198))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1926537 b_free!55193 (= (toValue!5565 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925820 b_free!55177 (= (toValue!5565 (transformation!3932 (rule!6137 separatorToken!354))) (toValue!5565 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) b_lambda!63783)))

(declare-fun b_lambda!63785 () Bool)

(assert (= b_lambda!63747 (or (and b!1926518 b_free!55191 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1925828 b_free!55183 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1925834 b_free!55187 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1926537 b_free!55195 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))))) (and b!1925820 b_free!55179) b_lambda!63785)))

(declare-fun b_lambda!63787 () Bool)

(assert (= b_lambda!63755 (or (and b!1926518 b_free!55191 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925820 b_free!55179 (= (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1926537 b_free!55195 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925828 b_free!55183) (and b!1925834 b_free!55187 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) b_lambda!63787)))

(declare-fun b_lambda!63789 () Bool)

(assert (= b_lambda!63749 (or (and b!1926518 b_free!55191 (= (toChars!5424 (transformation!3932 (h!27328 (t!179446 rules!3198)))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925820 b_free!55179 (= (toChars!5424 (transformation!3932 (rule!6137 separatorToken!354))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1926537 b_free!55195 (= (toChars!5424 (transformation!3932 (rule!6137 (h!27327 (t!179445 tokens!598))))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) (and b!1925828 b_free!55183) (and b!1925834 b_free!55187 (= (toChars!5424 (transformation!3932 (h!27328 rules!3198))) (toChars!5424 (transformation!3932 (rule!6137 (h!27327 tokens!598)))))) b_lambda!63789)))

(check-sat (not d!586969) (not d!587095) (not b!1926216) (not b!1926203) (not b!1926473) (not b!1925934) (not b_next!55885) (not b!1925999) (not b!1926306) (not d!587089) (not d!587061) (not d!586967) b_and!151041 (not d!587133) b_and!150987 (not b!1926273) (not b!1925982) (not b!1926005) (not tb!117875) b_and!151023 (not b!1925988) (not d!587131) (not b!1926378) (not b!1926500) (not b!1926145) (not b!1926551) (not d!587049) (not d!586937) (not d!587087) (not b!1926534) (not b!1926474) (not b!1926217) (not b_lambda!63775) (not tb!117887) (not d!587073) (not b!1926468) (not bm!118383) (not b!1926381) (not b!1926516) (not b_next!55891) tp_is_empty!9131 (not b_next!55895) (not b!1925935) b_and!150989 (not b!1926444) (not d!587109) (not d!587013) (not d!587039) (not b_next!55899) b_and!150991 (not b!1926161) (not b!1926368) (not b!1926228) (not b!1926013) (not d!587103) (not b_lambda!63773) (not d!587075) (not b!1926505) (not b!1925983) b_and!151025 (not b!1926299) (not d!586953) (not b_next!55883) (not b_next!55897) (not b!1925980) (not b!1926258) (not b!1926015) (not b!1926557) (not b!1926352) (not b!1926016) (not bm!118410) (not d!586971) (not bm!118432) (not b!1926493) (not bm!118379) (not b!1926017) (not b!1926288) (not d!586975) (not b!1926300) (not tb!117869) (not b!1926554) (not b!1926310) (not b!1926465) (not b!1926304) (not b!1926012) (not tb!117863) (not b!1926555) (not d!587037) (not d!587127) (not b!1926384) (not b!1926305) (not d!587045) (not b!1925897) (not b!1926007) (not b!1926502) (not b!1926504) (not d!586955) (not d!586965) (not b!1926492) (not b!1926287) (not b!1926316) (not b_lambda!63785) (not b!1926289) (not d!587035) (not b!1926553) (not b!1926536) (not b!1925998) (not bm!118449) b_and!151001 (not b!1926490) (not b!1926011) (not d!587081) (not b_lambda!63787) (not b!1926009) (not d!587063) (not bm!118452) b_and!151039 (not bm!118420) (not b!1926446) (not bm!118450) (not b!1926222) (not b!1926550) (not b!1926565) (not b!1926447) (not b!1926014) (not bm!118382) (not b!1925985) b_and!151003 (not b!1926398) (not bm!118413) (not b!1926140) (not b!1926558) (not b!1925898) (not b!1925896) (not b!1925929) (not b!1926309) (not b!1926559) (not b!1926469) (not bm!118414) (not b!1925931) (not b!1926549) (not b!1926564) (not b!1926290) (not tb!117881) (not d!587033) (not b!1926317) (not b_next!55887) (not b!1926144) (not b!1926195) (not d!586949) (not d!587101) (not b!1926008) (not d!587055) (not b!1926223) (not b!1925984) (not b!1926324) (not b_next!55881) (not b_lambda!63783) (not d!587079) (not b!1926274) (not b_lambda!63777) (not d!587065) (not b!1926535) (not b!1926259) (not b!1926146) (not b!1926221) (not b!1926517) (not b_next!55889) (not b!1925940) (not bm!118451) (not b_next!55893) (not b!1926006) (not b!1926315) (not b_lambda!63779) (not b!1926296) (not b!1925986) (not d!586973) (not d!587043) (not d!587099) (not b!1926397) (not b!1926351) (not b!1926291) (not b!1925987) (not d!586951) (not b!1925939) (not b!1926380) (not d!587111) (not d!587011) b_and!150999 (not d!587093) (not b_lambda!63781) (not b!1926463) (not b!1926286) (not b_lambda!63789) (not bm!118431) (not d!587041) (not b!1926227) (not b!1926442) (not bm!118430) (not d!587091) (not b!1926294))
(check-sat (not b_next!55885) b_and!151041 b_and!151001 b_and!151039 b_and!151003 (not b_next!55887) (not b_next!55881) (not b_next!55889) (not b_next!55893) b_and!150999 b_and!150987 b_and!151023 (not b_next!55891) (not b_next!55895) b_and!150989 (not b_next!55899) b_and!150991 b_and!151025 (not b_next!55883) (not b_next!55897))
