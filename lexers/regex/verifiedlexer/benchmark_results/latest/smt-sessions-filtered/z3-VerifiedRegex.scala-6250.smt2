; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!304922 () Bool)

(assert start!304922)

(declare-fun b!3258182 () Bool)

(declare-fun b_free!86425 () Bool)

(declare-fun b_next!87129 () Bool)

(assert (=> b!3258182 (= b_free!86425 (not b_next!87129))))

(declare-fun tp!1025358 () Bool)

(declare-fun b_and!219891 () Bool)

(assert (=> b!3258182 (= tp!1025358 b_and!219891)))

(declare-fun b_free!86427 () Bool)

(declare-fun b_next!87131 () Bool)

(assert (=> b!3258182 (= b_free!86427 (not b_next!87131))))

(declare-fun tp!1025355 () Bool)

(declare-fun b_and!219893 () Bool)

(assert (=> b!3258182 (= tp!1025355 b_and!219893)))

(declare-fun b!3258189 () Bool)

(declare-fun b_free!86429 () Bool)

(declare-fun b_next!87133 () Bool)

(assert (=> b!3258189 (= b_free!86429 (not b_next!87133))))

(declare-fun tp!1025349 () Bool)

(declare-fun b_and!219895 () Bool)

(assert (=> b!3258189 (= tp!1025349 b_and!219895)))

(declare-fun b_free!86431 () Bool)

(declare-fun b_next!87135 () Bool)

(assert (=> b!3258189 (= b_free!86431 (not b_next!87135))))

(declare-fun tp!1025347 () Bool)

(declare-fun b_and!219897 () Bool)

(assert (=> b!3258189 (= tp!1025347 b_and!219897)))

(declare-fun b!3258193 () Bool)

(declare-fun b_free!86433 () Bool)

(declare-fun b_next!87137 () Bool)

(assert (=> b!3258193 (= b_free!86433 (not b_next!87137))))

(declare-fun tp!1025356 () Bool)

(declare-fun b_and!219899 () Bool)

(assert (=> b!3258193 (= tp!1025356 b_and!219899)))

(declare-fun b_free!86435 () Bool)

(declare-fun b_next!87139 () Bool)

(assert (=> b!3258193 (= b_free!86435 (not b_next!87139))))

(declare-fun tp!1025350 () Bool)

(declare-fun b_and!219901 () Bool)

(assert (=> b!3258193 (= tp!1025350 b_and!219901)))

(declare-fun b!3258174 () Bool)

(declare-fun res!1324372 () Bool)

(declare-fun e!2029636 () Bool)

(assert (=> b!3258174 (=> res!1324372 e!2029636)))

(declare-datatypes ((C!20264 0))(
  ( (C!20265 (val!12180 Int)) )
))
(declare-datatypes ((Regex!10039 0))(
  ( (ElementMatch!10039 (c!549308 C!20264)) (Concat!15549 (regOne!20590 Regex!10039) (regTwo!20590 Regex!10039)) (EmptyExpr!10039) (Star!10039 (reg!10368 Regex!10039)) (EmptyLang!10039) (Union!10039 (regOne!20591 Regex!10039) (regTwo!20591 Regex!10039)) )
))
(declare-datatypes ((List!36546 0))(
  ( (Nil!36422) (Cons!36422 (h!41842 (_ BitVec 16)) (t!245711 List!36546)) )
))
(declare-datatypes ((TokenValue!5510 0))(
  ( (FloatLiteralValue!11020 (text!39015 List!36546)) (TokenValueExt!5509 (__x!23237 Int)) (Broken!27550 (value!170914 List!36546)) (Object!5633) (End!5510) (Def!5510) (Underscore!5510) (Match!5510) (Else!5510) (Error!5510) (Case!5510) (If!5510) (Extends!5510) (Abstract!5510) (Class!5510) (Val!5510) (DelimiterValue!11020 (del!5570 List!36546)) (KeywordValue!5516 (value!170915 List!36546)) (CommentValue!11020 (value!170916 List!36546)) (WhitespaceValue!11020 (value!170917 List!36546)) (IndentationValue!5510 (value!170918 List!36546)) (String!40883) (Int32!5510) (Broken!27551 (value!170919 List!36546)) (Boolean!5511) (Unit!51143) (OperatorValue!5513 (op!5570 List!36546)) (IdentifierValue!11020 (value!170920 List!36546)) (IdentifierValue!11021 (value!170921 List!36546)) (WhitespaceValue!11021 (value!170922 List!36546)) (True!11020) (False!11020) (Broken!27552 (value!170923 List!36546)) (Broken!27553 (value!170924 List!36546)) (True!11021) (RightBrace!5510) (RightBracket!5510) (Colon!5510) (Null!5510) (Comma!5510) (LeftBracket!5510) (False!11021) (LeftBrace!5510) (ImaginaryLiteralValue!5510 (text!39016 List!36546)) (StringLiteralValue!16530 (value!170925 List!36546)) (EOFValue!5510 (value!170926 List!36546)) (IdentValue!5510 (value!170927 List!36546)) (DelimiterValue!11021 (value!170928 List!36546)) (DedentValue!5510 (value!170929 List!36546)) (NewLineValue!5510 (value!170930 List!36546)) (IntegerValue!16530 (value!170931 (_ BitVec 32)) (text!39017 List!36546)) (IntegerValue!16531 (value!170932 Int) (text!39018 List!36546)) (Times!5510) (Or!5510) (Equal!5510) (Minus!5510) (Broken!27554 (value!170933 List!36546)) (And!5510) (Div!5510) (LessEqual!5510) (Mod!5510) (Concat!15550) (Not!5510) (Plus!5510) (SpaceValue!5510 (value!170934 List!36546)) (IntegerValue!16532 (value!170935 Int) (text!39019 List!36546)) (StringLiteralValue!16531 (text!39020 List!36546)) (FloatLiteralValue!11021 (text!39021 List!36546)) (BytesLiteralValue!5510 (value!170936 List!36546)) (CommentValue!11021 (value!170937 List!36546)) (StringLiteralValue!16532 (value!170938 List!36546)) (ErrorTokenValue!5510 (msg!5571 List!36546)) )
))
(declare-datatypes ((List!36547 0))(
  ( (Nil!36423) (Cons!36423 (h!41843 C!20264) (t!245712 List!36547)) )
))
(declare-datatypes ((IArray!21875 0))(
  ( (IArray!21876 (innerList!10995 List!36547)) )
))
(declare-datatypes ((Conc!10935 0))(
  ( (Node!10935 (left!28361 Conc!10935) (right!28691 Conc!10935) (csize!22100 Int) (cheight!11146 Int)) (Leaf!17186 (xs!14063 IArray!21875) (csize!22101 Int)) (Empty!10935) )
))
(declare-datatypes ((BalanceConc!21484 0))(
  ( (BalanceConc!21485 (c!549309 Conc!10935)) )
))
(declare-datatypes ((String!40884 0))(
  ( (String!40885 (value!170939 String)) )
))
(declare-datatypes ((TokenValueInjection!10448 0))(
  ( (TokenValueInjection!10449 (toValue!7396 Int) (toChars!7255 Int)) )
))
(declare-datatypes ((Rule!10360 0))(
  ( (Rule!10361 (regex!5280 Regex!10039) (tag!5816 String!40884) (isSeparator!5280 Bool) (transformation!5280 TokenValueInjection!10448)) )
))
(declare-datatypes ((Token!9926 0))(
  ( (Token!9927 (value!170940 TokenValue!5510) (rule!7752 Rule!10360) (size!27478 Int) (originalCharacters!5994 List!36547)) )
))
(declare-datatypes ((List!36548 0))(
  ( (Nil!36424) (Cons!36424 (h!41844 Token!9926) (t!245713 List!36548)) )
))
(declare-fun tokens!494 () List!36548)

(declare-datatypes ((LexerInterface!4869 0))(
  ( (LexerInterfaceExt!4866 (__x!23238 Int)) (Lexer!4867) )
))
(declare-fun thiss!18206 () LexerInterface!4869)

(declare-datatypes ((List!36549 0))(
  ( (Nil!36425) (Cons!36425 (h!41845 Rule!10360) (t!245714 List!36549)) )
))
(declare-fun rules!2135 () List!36549)

(declare-fun rulesProduceIndividualToken!2361 (LexerInterface!4869 List!36549 Token!9926) Bool)

(assert (=> b!3258174 (= res!1324372 (not (rulesProduceIndividualToken!2361 thiss!18206 rules!2135 (h!41844 tokens!494))))))

(declare-fun b!3258175 () Bool)

(declare-fun res!1324369 () Bool)

(declare-fun e!2029656 () Bool)

(assert (=> b!3258175 (=> (not res!1324369) (not e!2029656))))

(declare-fun lambda!118491 () Int)

(declare-fun forall!7506 (List!36548 Int) Bool)

(assert (=> b!3258175 (= res!1324369 (forall!7506 tokens!494 lambda!118491))))

(declare-fun b!3258176 () Bool)

(declare-fun res!1324366 () Bool)

(assert (=> b!3258176 (=> (not res!1324366) (not e!2029656))))

(declare-fun sepAndNonSepRulesDisjointChars!1474 (List!36549 List!36549) Bool)

(assert (=> b!3258176 (= res!1324366 (sepAndNonSepRulesDisjointChars!1474 rules!2135 rules!2135))))

(declare-fun b!3258177 () Bool)

(declare-fun e!2029641 () Bool)

(declare-fun e!2029639 () Bool)

(assert (=> b!3258177 (= e!2029641 e!2029639)))

(declare-fun res!1324377 () Bool)

(assert (=> b!3258177 (=> res!1324377 e!2029639)))

(assert (=> b!3258177 (= res!1324377 (isSeparator!5280 (rule!7752 (h!41844 tokens!494))))))

(declare-datatypes ((Unit!51144 0))(
  ( (Unit!51145) )
))
(declare-fun lt!1104287 () Unit!51144)

(declare-fun forallContained!1241 (List!36548 Int Token!9926) Unit!51144)

(assert (=> b!3258177 (= lt!1104287 (forallContained!1241 tokens!494 lambda!118491 (h!41844 tokens!494)))))

(declare-fun b!3258178 () Bool)

(declare-fun e!2029659 () Bool)

(assert (=> b!3258178 (= e!2029659 e!2029656)))

(declare-fun res!1324375 () Bool)

(assert (=> b!3258178 (=> (not res!1324375) (not e!2029656))))

(declare-datatypes ((IArray!21877 0))(
  ( (IArray!21878 (innerList!10996 List!36548)) )
))
(declare-datatypes ((Conc!10936 0))(
  ( (Node!10936 (left!28362 Conc!10936) (right!28692 Conc!10936) (csize!22102 Int) (cheight!11147 Int)) (Leaf!17187 (xs!14064 IArray!21877) (csize!22103 Int)) (Empty!10936) )
))
(declare-datatypes ((BalanceConc!21486 0))(
  ( (BalanceConc!21487 (c!549310 Conc!10936)) )
))
(declare-fun lt!1104314 () BalanceConc!21486)

(declare-fun rulesProduceEachTokenIndividually!1320 (LexerInterface!4869 List!36549 BalanceConc!21486) Bool)

(assert (=> b!3258178 (= res!1324375 (rulesProduceEachTokenIndividually!1320 thiss!18206 rules!2135 lt!1104314))))

(declare-fun seqFromList!3623 (List!36548) BalanceConc!21486)

(assert (=> b!3258178 (= lt!1104314 (seqFromList!3623 tokens!494))))

(declare-fun b!3258180 () Bool)

(declare-fun e!2029654 () Bool)

(declare-fun e!2029640 () Bool)

(declare-fun tp!1025354 () Bool)

(assert (=> b!3258180 (= e!2029654 (and e!2029640 tp!1025354))))

(declare-fun e!2029632 () Bool)

(declare-fun tp!1025357 () Bool)

(declare-fun e!2029633 () Bool)

(declare-fun b!3258181 () Bool)

(declare-fun inv!49333 (String!40884) Bool)

(declare-fun inv!49336 (TokenValueInjection!10448) Bool)

(assert (=> b!3258181 (= e!2029632 (and tp!1025357 (inv!49333 (tag!5816 (rule!7752 (h!41844 tokens!494)))) (inv!49336 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) e!2029633))))

(declare-fun e!2029657 () Bool)

(assert (=> b!3258182 (= e!2029657 (and tp!1025358 tp!1025355))))

(declare-fun b!3258183 () Bool)

(declare-fun e!2029649 () Bool)

(declare-fun e!2029660 () Bool)

(assert (=> b!3258183 (= e!2029649 e!2029660)))

(declare-fun res!1324368 () Bool)

(assert (=> b!3258183 (=> res!1324368 e!2029660)))

(declare-fun lt!1104285 () Bool)

(assert (=> b!3258183 (= res!1324368 lt!1104285)))

(declare-fun lt!1104295 () Unit!51144)

(declare-fun e!2029653 () Unit!51144)

(assert (=> b!3258183 (= lt!1104295 e!2029653)))

(declare-fun c!549307 () Bool)

(assert (=> b!3258183 (= c!549307 lt!1104285)))

(declare-fun separatorToken!241 () Token!9926)

(declare-fun lt!1104303 () C!20264)

(declare-fun contains!6553 (List!36547 C!20264) Bool)

(declare-fun usedCharacters!582 (Regex!10039) List!36547)

(assert (=> b!3258183 (= lt!1104285 (not (contains!6553 (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241))) lt!1104303)))))

(declare-fun lt!1104309 () List!36547)

(declare-fun head!7105 (List!36547) C!20264)

(assert (=> b!3258183 (= lt!1104303 (head!7105 lt!1104309))))

(declare-fun lt!1104290 () BalanceConc!21484)

(declare-fun lt!1104312 () List!36547)

(declare-datatypes ((tuple2!35880 0))(
  ( (tuple2!35881 (_1!21074 Token!9926) (_2!21074 List!36547)) )
))
(declare-datatypes ((Option!7247 0))(
  ( (None!7246) (Some!7246 (v!35908 tuple2!35880)) )
))
(declare-fun maxPrefixOneRule!1634 (LexerInterface!4869 Rule!10360 List!36547) Option!7247)

(declare-fun apply!8332 (TokenValueInjection!10448 BalanceConc!21484) TokenValue!5510)

(declare-fun size!27479 (List!36547) Int)

(assert (=> b!3258183 (= (maxPrefixOneRule!1634 thiss!18206 (rule!7752 (h!41844 tokens!494)) lt!1104312) (Some!7246 (tuple2!35881 (Token!9927 (apply!8332 (transformation!5280 (rule!7752 (h!41844 tokens!494))) lt!1104290) (rule!7752 (h!41844 tokens!494)) (size!27479 lt!1104312) lt!1104312) Nil!36423)))))

(declare-fun lt!1104310 () Unit!51144)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!745 (LexerInterface!4869 List!36549 List!36547 List!36547 List!36547 Rule!10360) Unit!51144)

(assert (=> b!3258183 (= lt!1104310 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!745 thiss!18206 rules!2135 lt!1104312 lt!1104312 Nil!36423 (rule!7752 (h!41844 tokens!494))))))

(declare-fun e!2029650 () Bool)

(assert (=> b!3258183 e!2029650))

(declare-fun res!1324381 () Bool)

(assert (=> b!3258183 (=> (not res!1324381) (not e!2029650))))

(declare-datatypes ((Option!7248 0))(
  ( (None!7247) (Some!7247 (v!35909 Rule!10360)) )
))
(declare-fun lt!1104291 () Option!7248)

(declare-fun isDefined!5614 (Option!7248) Bool)

(assert (=> b!3258183 (= res!1324381 (isDefined!5614 lt!1104291))))

(declare-fun getRuleFromTag!971 (LexerInterface!4869 List!36549 String!40884) Option!7248)

(assert (=> b!3258183 (= lt!1104291 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 separatorToken!241))))))

(declare-fun lt!1104293 () Unit!51144)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!971 (LexerInterface!4869 List!36549 List!36547 Token!9926) Unit!51144)

(assert (=> b!3258183 (= lt!1104293 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!971 thiss!18206 rules!2135 lt!1104309 separatorToken!241))))

(declare-fun e!2029648 () Bool)

(assert (=> b!3258183 e!2029648))

(declare-fun res!1324371 () Bool)

(assert (=> b!3258183 (=> (not res!1324371) (not e!2029648))))

(declare-fun lt!1104296 () Option!7248)

(assert (=> b!3258183 (= res!1324371 (isDefined!5614 lt!1104296))))

(assert (=> b!3258183 (= lt!1104296 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 (h!41844 tokens!494)))))))

(declare-fun lt!1104311 () Unit!51144)

(assert (=> b!3258183 (= lt!1104311 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!971 thiss!18206 rules!2135 lt!1104312 (h!41844 tokens!494)))))

(declare-fun lt!1104297 () Unit!51144)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!894 (LexerInterface!4869 List!36549 List!36548 Token!9926) Unit!51144)

(assert (=> b!3258183 (= lt!1104297 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!894 thiss!18206 rules!2135 tokens!494 (h!41844 tokens!494)))))

(declare-fun isEmpty!20525 (List!36547) Bool)

(declare-fun getSuffix!1404 (List!36547 List!36547) List!36547)

(assert (=> b!3258183 (isEmpty!20525 (getSuffix!1404 lt!1104312 lt!1104312))))

(declare-fun lt!1104288 () Unit!51144)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!68 (List!36547) Unit!51144)

(assert (=> b!3258183 (= lt!1104288 (lemmaGetSuffixOnListWithItSelfIsEmpty!68 lt!1104312))))

(declare-fun b!3258184 () Bool)

(declare-fun res!1324373 () Bool)

(assert (=> b!3258184 (=> (not res!1324373) (not e!2029656))))

(get-info :version)

(assert (=> b!3258184 (= res!1324373 (and (not ((_ is Nil!36424) tokens!494)) ((_ is Nil!36424) (t!245713 tokens!494))))))

(declare-fun b!3258185 () Bool)

(declare-fun e!2029635 () Bool)

(declare-fun lt!1104302 () List!36547)

(declare-datatypes ((tuple2!35882 0))(
  ( (tuple2!35883 (_1!21075 List!36548) (_2!21075 List!36547)) )
))
(declare-fun lt!1104294 () tuple2!35882)

(assert (=> b!3258185 (= e!2029635 (= (tuple2!35883 Nil!36424 lt!1104302) lt!1104294))))

(assert (=> b!3258185 false))

(declare-fun b!3258186 () Bool)

(declare-fun e!2029634 () Bool)

(assert (=> b!3258186 (= e!2029656 (not e!2029634))))

(declare-fun res!1324380 () Bool)

(assert (=> b!3258186 (=> res!1324380 e!2029634)))

(declare-fun lt!1104308 () List!36547)

(declare-fun lt!1104305 () List!36547)

(assert (=> b!3258186 (= res!1324380 (not (= lt!1104308 lt!1104305)))))

(declare-fun printList!1419 (LexerInterface!4869 List!36548) List!36547)

(assert (=> b!3258186 (= lt!1104305 (printList!1419 thiss!18206 (Cons!36424 (h!41844 tokens!494) Nil!36424)))))

(declare-fun lt!1104292 () BalanceConc!21484)

(declare-fun list!13013 (BalanceConc!21484) List!36547)

(assert (=> b!3258186 (= lt!1104308 (list!13013 lt!1104292))))

(declare-fun lt!1104286 () BalanceConc!21486)

(declare-fun printTailRec!1366 (LexerInterface!4869 BalanceConc!21486 Int BalanceConc!21484) BalanceConc!21484)

(assert (=> b!3258186 (= lt!1104292 (printTailRec!1366 thiss!18206 lt!1104286 0 (BalanceConc!21485 Empty!10935)))))

(declare-fun print!1934 (LexerInterface!4869 BalanceConc!21486) BalanceConc!21484)

(assert (=> b!3258186 (= lt!1104292 (print!1934 thiss!18206 lt!1104286))))

(declare-fun singletonSeq!2376 (Token!9926) BalanceConc!21486)

(assert (=> b!3258186 (= lt!1104286 (singletonSeq!2376 (h!41844 tokens!494)))))

(declare-fun b!3258187 () Bool)

(assert (=> b!3258187 (= e!2029639 e!2029649)))

(declare-fun res!1324361 () Bool)

(assert (=> b!3258187 (=> res!1324361 e!2029649)))

(declare-fun lt!1104313 () List!36547)

(assert (=> b!3258187 (= res!1324361 (not (= lt!1104302 lt!1104313)))))

(declare-fun ++!8786 (List!36547 List!36547) List!36547)

(assert (=> b!3258187 (= lt!1104313 (++!8786 lt!1104312 lt!1104309))))

(declare-fun lt!1104307 () BalanceConc!21484)

(assert (=> b!3258187 (= lt!1104302 (list!13013 lt!1104307))))

(declare-fun charsOf!3296 (Token!9926) BalanceConc!21484)

(assert (=> b!3258187 (= lt!1104309 (list!13013 (charsOf!3296 separatorToken!241)))))

(declare-fun printWithSeparatorToken!86 (LexerInterface!4869 BalanceConc!21486 Token!9926) BalanceConc!21484)

(assert (=> b!3258187 (= lt!1104307 (printWithSeparatorToken!86 thiss!18206 lt!1104314 separatorToken!241))))

(declare-fun b!3258188 () Bool)

(declare-fun e!2029631 () Bool)

(declare-fun lt!1104298 () Rule!10360)

(assert (=> b!3258188 (= e!2029631 (= (rule!7752 (h!41844 tokens!494)) lt!1104298))))

(assert (=> b!3258189 (= e!2029633 (and tp!1025349 tp!1025347))))

(declare-fun e!2029645 () Bool)

(declare-fun tp!1025352 () Bool)

(declare-fun e!2029658 () Bool)

(declare-fun b!3258190 () Bool)

(declare-fun inv!21 (TokenValue!5510) Bool)

(assert (=> b!3258190 (= e!2029645 (and (inv!21 (value!170940 separatorToken!241)) e!2029658 tp!1025352))))

(declare-fun b!3258191 () Bool)

(declare-fun res!1324370 () Bool)

(assert (=> b!3258191 (=> (not res!1324370) (not e!2029659))))

(declare-fun isEmpty!20526 (List!36549) Bool)

(assert (=> b!3258191 (= res!1324370 (not (isEmpty!20526 rules!2135)))))

(declare-fun b!3258192 () Bool)

(assert (=> b!3258192 (= e!2029634 e!2029636)))

(declare-fun res!1324363 () Bool)

(assert (=> b!3258192 (=> res!1324363 e!2029636)))

(assert (=> b!3258192 (= res!1324363 (or (not (= lt!1104305 lt!1104312)) (not (= lt!1104308 lt!1104312))))))

(assert (=> b!3258192 (= lt!1104312 (list!13013 (charsOf!3296 (h!41844 tokens!494))))))

(declare-fun e!2029646 () Bool)

(assert (=> b!3258193 (= e!2029646 (and tp!1025356 tp!1025350))))

(declare-fun b!3258194 () Bool)

(declare-fun res!1324374 () Bool)

(assert (=> b!3258194 (=> (not res!1324374) (not e!2029656))))

(assert (=> b!3258194 (= res!1324374 (rulesProduceIndividualToken!2361 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3258195 () Bool)

(assert (=> b!3258195 (= e!2029648 e!2029631)))

(declare-fun res!1324362 () Bool)

(assert (=> b!3258195 (=> (not res!1324362) (not e!2029631))))

(declare-fun matchR!4661 (Regex!10039 List!36547) Bool)

(assert (=> b!3258195 (= res!1324362 (matchR!4661 (regex!5280 lt!1104298) lt!1104312))))

(declare-fun get!11611 (Option!7248) Rule!10360)

(assert (=> b!3258195 (= lt!1104298 (get!11611 lt!1104296))))

(declare-fun b!3258196 () Bool)

(declare-fun e!2029643 () Bool)

(declare-fun lt!1104306 () Rule!10360)

(assert (=> b!3258196 (= e!2029643 (= (rule!7752 separatorToken!241) lt!1104306))))

(declare-fun b!3258197 () Bool)

(declare-fun Unit!51146 () Unit!51144)

(assert (=> b!3258197 (= e!2029653 Unit!51146)))

(declare-fun lt!1104300 () Unit!51144)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!428 (Regex!10039 List!36547 C!20264) Unit!51144)

(assert (=> b!3258197 (= lt!1104300 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!428 (regex!5280 (rule!7752 separatorToken!241)) lt!1104309 lt!1104303))))

(declare-fun res!1324378 () Bool)

(assert (=> b!3258197 (= res!1324378 (not (matchR!4661 (regex!5280 (rule!7752 separatorToken!241)) lt!1104309)))))

(declare-fun e!2029647 () Bool)

(assert (=> b!3258197 (=> (not res!1324378) (not e!2029647))))

(assert (=> b!3258197 e!2029647))

(declare-fun b!3258198 () Bool)

(declare-fun Unit!51147 () Unit!51144)

(assert (=> b!3258198 (= e!2029653 Unit!51147)))

(declare-fun b!3258199 () Bool)

(assert (=> b!3258199 (= e!2029647 false)))

(declare-fun lt!1104301 () tuple2!35882)

(declare-fun b!3258200 () Bool)

(declare-fun lt!1104299 () Option!7247)

(assert (=> b!3258200 (= e!2029635 (= (tuple2!35883 (Cons!36424 (_1!21074 (v!35908 lt!1104299)) (_1!21075 lt!1104301)) (_2!21075 lt!1104301)) lt!1104294))))

(declare-fun lexList!1343 (LexerInterface!4869 List!36549 List!36547) tuple2!35882)

(assert (=> b!3258200 (= lt!1104301 (lexList!1343 thiss!18206 rules!2135 (_2!21074 (v!35908 lt!1104299))))))

(declare-fun b!3258179 () Bool)

(declare-fun res!1324365 () Bool)

(assert (=> b!3258179 (=> (not res!1324365) (not e!2029659))))

(declare-fun rulesInvariant!4266 (LexerInterface!4869 List!36549) Bool)

(assert (=> b!3258179 (= res!1324365 (rulesInvariant!4266 thiss!18206 rules!2135))))

(declare-fun res!1324364 () Bool)

(assert (=> start!304922 (=> (not res!1324364) (not e!2029659))))

(assert (=> start!304922 (= res!1324364 ((_ is Lexer!4867) thiss!18206))))

(assert (=> start!304922 e!2029659))

(assert (=> start!304922 true))

(assert (=> start!304922 e!2029654))

(declare-fun inv!49337 (Token!9926) Bool)

(assert (=> start!304922 (and (inv!49337 separatorToken!241) e!2029645)))

(declare-fun e!2029642 () Bool)

(assert (=> start!304922 e!2029642))

(declare-fun b!3258201 () Bool)

(assert (=> b!3258201 (= e!2029660 e!2029635)))

(declare-fun c!549306 () Bool)

(assert (=> b!3258201 (= c!549306 ((_ is Some!7246) lt!1104299))))

(assert (=> b!3258201 (= lt!1104294 (lexList!1343 thiss!18206 rules!2135 lt!1104302))))

(declare-fun maxPrefix!2497 (LexerInterface!4869 List!36549 List!36547) Option!7247)

(assert (=> b!3258201 (= lt!1104299 (maxPrefix!2497 thiss!18206 rules!2135 lt!1104302))))

(assert (=> b!3258201 (= (maxPrefix!2497 thiss!18206 rules!2135 lt!1104313) (Some!7246 (tuple2!35881 (h!41844 tokens!494) lt!1104309)))))

(declare-fun lt!1104304 () Unit!51144)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!186 (LexerInterface!4869 List!36549 Token!9926 Rule!10360 List!36547 Rule!10360) Unit!51144)

(assert (=> b!3258201 (= lt!1104304 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!186 thiss!18206 rules!2135 (h!41844 tokens!494) (rule!7752 (h!41844 tokens!494)) lt!1104309 (rule!7752 separatorToken!241)))))

(assert (=> b!3258201 (not (contains!6553 (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494)))) lt!1104303))))

(declare-fun lt!1104289 () Unit!51144)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!186 (LexerInterface!4869 List!36549 List!36549 Rule!10360 Rule!10360 C!20264) Unit!51144)

(assert (=> b!3258201 (= lt!1104289 (lemmaNonSepRuleNotContainsCharContainedInASepRule!186 thiss!18206 rules!2135 rules!2135 (rule!7752 (h!41844 tokens!494)) (rule!7752 separatorToken!241) lt!1104303))))

(declare-fun tp!1025348 () Bool)

(declare-fun b!3258202 () Bool)

(assert (=> b!3258202 (= e!2029640 (and tp!1025348 (inv!49333 (tag!5816 (h!41845 rules!2135))) (inv!49336 (transformation!5280 (h!41845 rules!2135))) e!2029657))))

(declare-fun b!3258203 () Bool)

(declare-fun res!1324367 () Bool)

(assert (=> b!3258203 (=> (not res!1324367) (not e!2029656))))

(assert (=> b!3258203 (= res!1324367 (isSeparator!5280 (rule!7752 separatorToken!241)))))

(declare-fun tp!1025353 () Bool)

(declare-fun b!3258204 () Bool)

(declare-fun e!2029644 () Bool)

(assert (=> b!3258204 (= e!2029642 (and (inv!49337 (h!41844 tokens!494)) e!2029644 tp!1025353))))

(declare-fun b!3258205 () Bool)

(assert (=> b!3258205 (= e!2029650 e!2029643)))

(declare-fun res!1324379 () Bool)

(assert (=> b!3258205 (=> (not res!1324379) (not e!2029643))))

(assert (=> b!3258205 (= res!1324379 (matchR!4661 (regex!5280 lt!1104306) lt!1104309))))

(assert (=> b!3258205 (= lt!1104306 (get!11611 lt!1104291))))

(declare-fun b!3258206 () Bool)

(declare-fun tp!1025351 () Bool)

(assert (=> b!3258206 (= e!2029658 (and tp!1025351 (inv!49333 (tag!5816 (rule!7752 separatorToken!241))) (inv!49336 (transformation!5280 (rule!7752 separatorToken!241))) e!2029646))))

(declare-fun tp!1025346 () Bool)

(declare-fun b!3258207 () Bool)

(assert (=> b!3258207 (= e!2029644 (and (inv!21 (value!170940 (h!41844 tokens!494))) e!2029632 tp!1025346))))

(declare-fun b!3258208 () Bool)

(assert (=> b!3258208 (= e!2029636 e!2029641)))

(declare-fun res!1324376 () Bool)

(assert (=> b!3258208 (=> res!1324376 e!2029641)))

(declare-fun isEmpty!20527 (BalanceConc!21486) Bool)

(declare-datatypes ((tuple2!35884 0))(
  ( (tuple2!35885 (_1!21076 BalanceConc!21486) (_2!21076 BalanceConc!21484)) )
))
(declare-fun lex!2197 (LexerInterface!4869 List!36549 BalanceConc!21484) tuple2!35884)

(assert (=> b!3258208 (= res!1324376 (isEmpty!20527 (_1!21076 (lex!2197 thiss!18206 rules!2135 lt!1104290))))))

(declare-fun seqFromList!3624 (List!36547) BalanceConc!21484)

(assert (=> b!3258208 (= lt!1104290 (seqFromList!3624 lt!1104312))))

(assert (= (and start!304922 res!1324364) b!3258191))

(assert (= (and b!3258191 res!1324370) b!3258179))

(assert (= (and b!3258179 res!1324365) b!3258178))

(assert (= (and b!3258178 res!1324375) b!3258194))

(assert (= (and b!3258194 res!1324374) b!3258203))

(assert (= (and b!3258203 res!1324367) b!3258175))

(assert (= (and b!3258175 res!1324369) b!3258176))

(assert (= (and b!3258176 res!1324366) b!3258184))

(assert (= (and b!3258184 res!1324373) b!3258186))

(assert (= (and b!3258186 (not res!1324380)) b!3258192))

(assert (= (and b!3258192 (not res!1324363)) b!3258174))

(assert (= (and b!3258174 (not res!1324372)) b!3258208))

(assert (= (and b!3258208 (not res!1324376)) b!3258177))

(assert (= (and b!3258177 (not res!1324377)) b!3258187))

(assert (= (and b!3258187 (not res!1324361)) b!3258183))

(assert (= (and b!3258183 res!1324371) b!3258195))

(assert (= (and b!3258195 res!1324362) b!3258188))

(assert (= (and b!3258183 res!1324381) b!3258205))

(assert (= (and b!3258205 res!1324379) b!3258196))

(assert (= (and b!3258183 c!549307) b!3258197))

(assert (= (and b!3258183 (not c!549307)) b!3258198))

(assert (= (and b!3258197 res!1324378) b!3258199))

(assert (= (and b!3258183 (not res!1324368)) b!3258201))

(assert (= (and b!3258201 c!549306) b!3258200))

(assert (= (and b!3258201 (not c!549306)) b!3258185))

(assert (= b!3258202 b!3258182))

(assert (= b!3258180 b!3258202))

(assert (= (and start!304922 ((_ is Cons!36425) rules!2135)) b!3258180))

(assert (= b!3258206 b!3258193))

(assert (= b!3258190 b!3258206))

(assert (= start!304922 b!3258190))

(assert (= b!3258181 b!3258189))

(assert (= b!3258207 b!3258181))

(assert (= b!3258204 b!3258207))

(assert (= (and start!304922 ((_ is Cons!36424) tokens!494)) b!3258204))

(declare-fun m!3553177 () Bool)

(assert (=> b!3258205 m!3553177))

(declare-fun m!3553179 () Bool)

(assert (=> b!3258205 m!3553179))

(declare-fun m!3553181 () Bool)

(assert (=> start!304922 m!3553181))

(declare-fun m!3553183 () Bool)

(assert (=> b!3258176 m!3553183))

(declare-fun m!3553185 () Bool)

(assert (=> b!3258195 m!3553185))

(declare-fun m!3553187 () Bool)

(assert (=> b!3258195 m!3553187))

(declare-fun m!3553189 () Bool)

(assert (=> b!3258178 m!3553189))

(declare-fun m!3553191 () Bool)

(assert (=> b!3258178 m!3553191))

(declare-fun m!3553193 () Bool)

(assert (=> b!3258179 m!3553193))

(declare-fun m!3553195 () Bool)

(assert (=> b!3258208 m!3553195))

(declare-fun m!3553197 () Bool)

(assert (=> b!3258208 m!3553197))

(declare-fun m!3553199 () Bool)

(assert (=> b!3258208 m!3553199))

(declare-fun m!3553201 () Bool)

(assert (=> b!3258186 m!3553201))

(declare-fun m!3553203 () Bool)

(assert (=> b!3258186 m!3553203))

(declare-fun m!3553205 () Bool)

(assert (=> b!3258186 m!3553205))

(declare-fun m!3553207 () Bool)

(assert (=> b!3258186 m!3553207))

(declare-fun m!3553209 () Bool)

(assert (=> b!3258186 m!3553209))

(declare-fun m!3553211 () Bool)

(assert (=> b!3258206 m!3553211))

(declare-fun m!3553213 () Bool)

(assert (=> b!3258206 m!3553213))

(declare-fun m!3553215 () Bool)

(assert (=> b!3258181 m!3553215))

(declare-fun m!3553217 () Bool)

(assert (=> b!3258181 m!3553217))

(declare-fun m!3553219 () Bool)

(assert (=> b!3258201 m!3553219))

(declare-fun m!3553221 () Bool)

(assert (=> b!3258201 m!3553221))

(declare-fun m!3553223 () Bool)

(assert (=> b!3258201 m!3553223))

(declare-fun m!3553225 () Bool)

(assert (=> b!3258201 m!3553225))

(declare-fun m!3553227 () Bool)

(assert (=> b!3258201 m!3553227))

(declare-fun m!3553229 () Bool)

(assert (=> b!3258201 m!3553229))

(declare-fun m!3553231 () Bool)

(assert (=> b!3258201 m!3553231))

(assert (=> b!3258201 m!3553225))

(declare-fun m!3553233 () Bool)

(assert (=> b!3258190 m!3553233))

(declare-fun m!3553235 () Bool)

(assert (=> b!3258202 m!3553235))

(declare-fun m!3553237 () Bool)

(assert (=> b!3258202 m!3553237))

(declare-fun m!3553239 () Bool)

(assert (=> b!3258175 m!3553239))

(declare-fun m!3553241 () Bool)

(assert (=> b!3258194 m!3553241))

(declare-fun m!3553243 () Bool)

(assert (=> b!3258200 m!3553243))

(declare-fun m!3553245 () Bool)

(assert (=> b!3258197 m!3553245))

(declare-fun m!3553247 () Bool)

(assert (=> b!3258197 m!3553247))

(declare-fun m!3553249 () Bool)

(assert (=> b!3258192 m!3553249))

(assert (=> b!3258192 m!3553249))

(declare-fun m!3553251 () Bool)

(assert (=> b!3258192 m!3553251))

(declare-fun m!3553253 () Bool)

(assert (=> b!3258183 m!3553253))

(declare-fun m!3553255 () Bool)

(assert (=> b!3258183 m!3553255))

(declare-fun m!3553257 () Bool)

(assert (=> b!3258183 m!3553257))

(declare-fun m!3553259 () Bool)

(assert (=> b!3258183 m!3553259))

(declare-fun m!3553261 () Bool)

(assert (=> b!3258183 m!3553261))

(declare-fun m!3553263 () Bool)

(assert (=> b!3258183 m!3553263))

(declare-fun m!3553265 () Bool)

(assert (=> b!3258183 m!3553265))

(declare-fun m!3553267 () Bool)

(assert (=> b!3258183 m!3553267))

(declare-fun m!3553269 () Bool)

(assert (=> b!3258183 m!3553269))

(declare-fun m!3553271 () Bool)

(assert (=> b!3258183 m!3553271))

(declare-fun m!3553273 () Bool)

(assert (=> b!3258183 m!3553273))

(declare-fun m!3553275 () Bool)

(assert (=> b!3258183 m!3553275))

(declare-fun m!3553277 () Bool)

(assert (=> b!3258183 m!3553277))

(declare-fun m!3553279 () Bool)

(assert (=> b!3258183 m!3553279))

(assert (=> b!3258183 m!3553275))

(declare-fun m!3553281 () Bool)

(assert (=> b!3258183 m!3553281))

(assert (=> b!3258183 m!3553255))

(declare-fun m!3553283 () Bool)

(assert (=> b!3258183 m!3553283))

(declare-fun m!3553285 () Bool)

(assert (=> b!3258183 m!3553285))

(declare-fun m!3553287 () Bool)

(assert (=> b!3258207 m!3553287))

(declare-fun m!3553289 () Bool)

(assert (=> b!3258177 m!3553289))

(declare-fun m!3553291 () Bool)

(assert (=> b!3258204 m!3553291))

(declare-fun m!3553293 () Bool)

(assert (=> b!3258174 m!3553293))

(declare-fun m!3553295 () Bool)

(assert (=> b!3258191 m!3553295))

(declare-fun m!3553297 () Bool)

(assert (=> b!3258187 m!3553297))

(declare-fun m!3553299 () Bool)

(assert (=> b!3258187 m!3553299))

(declare-fun m!3553301 () Bool)

(assert (=> b!3258187 m!3553301))

(declare-fun m!3553303 () Bool)

(assert (=> b!3258187 m!3553303))

(declare-fun m!3553305 () Bool)

(assert (=> b!3258187 m!3553305))

(assert (=> b!3258187 m!3553301))

(check-sat (not b!3258200) (not b_next!87135) b_and!219891 (not b!3258197) (not start!304922) b_and!219897 b_and!219901 (not b!3258204) (not b_next!87133) (not b!3258177) (not b!3258206) (not b!3258192) (not b!3258179) (not b!3258175) b_and!219893 (not b!3258195) (not b!3258178) (not b!3258176) (not b!3258201) (not b!3258174) (not b!3258187) (not b_next!87139) (not b!3258208) (not b!3258205) (not b!3258180) (not b!3258191) (not b_next!87137) (not b!3258207) (not b!3258183) b_and!219899 b_and!219895 (not b!3258194) (not b!3258190) (not b!3258181) (not b_next!87129) (not b!3258186) (not b!3258202) (not b_next!87131))
(check-sat b_and!219893 (not b_next!87135) b_and!219891 b_and!219897 b_and!219901 (not b_next!87139) (not b_next!87133) (not b_next!87137) b_and!219899 b_and!219895 (not b_next!87129) (not b_next!87131))
(get-model)

(declare-fun d!901003 () Bool)

(assert (=> d!901003 (not (matchR!4661 (regex!5280 (rule!7752 separatorToken!241)) lt!1104309))))

(declare-fun lt!1104335 () Unit!51144)

(declare-fun choose!18936 (Regex!10039 List!36547 C!20264) Unit!51144)

(assert (=> d!901003 (= lt!1104335 (choose!18936 (regex!5280 (rule!7752 separatorToken!241)) lt!1104309 lt!1104303))))

(declare-fun validRegex!4564 (Regex!10039) Bool)

(assert (=> d!901003 (validRegex!4564 (regex!5280 (rule!7752 separatorToken!241)))))

(assert (=> d!901003 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!428 (regex!5280 (rule!7752 separatorToken!241)) lt!1104309 lt!1104303) lt!1104335)))

(declare-fun bs!545215 () Bool)

(assert (= bs!545215 d!901003))

(assert (=> bs!545215 m!3553247))

(declare-fun m!3553389 () Bool)

(assert (=> bs!545215 m!3553389))

(declare-fun m!3553393 () Bool)

(assert (=> bs!545215 m!3553393))

(assert (=> b!3258197 d!901003))

(declare-fun b!3258377 () Bool)

(declare-fun e!2029751 () Bool)

(declare-fun e!2029755 () Bool)

(assert (=> b!3258377 (= e!2029751 e!2029755)))

(declare-fun res!1324478 () Bool)

(assert (=> b!3258377 (=> (not res!1324478) (not e!2029755))))

(declare-fun lt!1104351 () Bool)

(assert (=> b!3258377 (= res!1324478 (not lt!1104351))))

(declare-fun b!3258378 () Bool)

(declare-fun res!1324479 () Bool)

(declare-fun e!2029752 () Bool)

(assert (=> b!3258378 (=> (not res!1324479) (not e!2029752))))

(declare-fun tail!5244 (List!36547) List!36547)

(assert (=> b!3258378 (= res!1324479 (isEmpty!20525 (tail!5244 lt!1104309)))))

(declare-fun b!3258379 () Bool)

(declare-fun res!1324475 () Bool)

(declare-fun e!2029750 () Bool)

(assert (=> b!3258379 (=> res!1324475 e!2029750)))

(assert (=> b!3258379 (= res!1324475 (not (isEmpty!20525 (tail!5244 lt!1104309))))))

(declare-fun b!3258380 () Bool)

(declare-fun e!2029753 () Bool)

(declare-fun e!2029756 () Bool)

(assert (=> b!3258380 (= e!2029753 e!2029756)))

(declare-fun c!549353 () Bool)

(assert (=> b!3258380 (= c!549353 ((_ is EmptyLang!10039) (regex!5280 (rule!7752 separatorToken!241))))))

(declare-fun b!3258381 () Bool)

(assert (=> b!3258381 (= e!2029756 (not lt!1104351))))

(declare-fun b!3258382 () Bool)

(assert (=> b!3258382 (= e!2029752 (= (head!7105 lt!1104309) (c!549308 (regex!5280 (rule!7752 separatorToken!241)))))))

(declare-fun bm!235935 () Bool)

(declare-fun call!235940 () Bool)

(assert (=> bm!235935 (= call!235940 (isEmpty!20525 lt!1104309))))

(declare-fun d!901007 () Bool)

(assert (=> d!901007 e!2029753))

(declare-fun c!549355 () Bool)

(assert (=> d!901007 (= c!549355 ((_ is EmptyExpr!10039) (regex!5280 (rule!7752 separatorToken!241))))))

(declare-fun e!2029754 () Bool)

(assert (=> d!901007 (= lt!1104351 e!2029754)))

(declare-fun c!549354 () Bool)

(assert (=> d!901007 (= c!549354 (isEmpty!20525 lt!1104309))))

(assert (=> d!901007 (validRegex!4564 (regex!5280 (rule!7752 separatorToken!241)))))

(assert (=> d!901007 (= (matchR!4661 (regex!5280 (rule!7752 separatorToken!241)) lt!1104309) lt!1104351)))

(declare-fun b!3258383 () Bool)

(declare-fun res!1324474 () Bool)

(assert (=> b!3258383 (=> res!1324474 e!2029751)))

(assert (=> b!3258383 (= res!1324474 e!2029752)))

(declare-fun res!1324476 () Bool)

(assert (=> b!3258383 (=> (not res!1324476) (not e!2029752))))

(assert (=> b!3258383 (= res!1324476 lt!1104351)))

(declare-fun b!3258384 () Bool)

(assert (=> b!3258384 (= e!2029755 e!2029750)))

(declare-fun res!1324480 () Bool)

(assert (=> b!3258384 (=> res!1324480 e!2029750)))

(assert (=> b!3258384 (= res!1324480 call!235940)))

(declare-fun b!3258385 () Bool)

(declare-fun res!1324473 () Bool)

(assert (=> b!3258385 (=> (not res!1324473) (not e!2029752))))

(assert (=> b!3258385 (= res!1324473 (not call!235940))))

(declare-fun b!3258386 () Bool)

(assert (=> b!3258386 (= e!2029753 (= lt!1104351 call!235940))))

(declare-fun b!3258387 () Bool)

(declare-fun res!1324477 () Bool)

(assert (=> b!3258387 (=> res!1324477 e!2029751)))

(assert (=> b!3258387 (= res!1324477 (not ((_ is ElementMatch!10039) (regex!5280 (rule!7752 separatorToken!241)))))))

(assert (=> b!3258387 (= e!2029756 e!2029751)))

(declare-fun b!3258388 () Bool)

(declare-fun nullable!3408 (Regex!10039) Bool)

(assert (=> b!3258388 (= e!2029754 (nullable!3408 (regex!5280 (rule!7752 separatorToken!241))))))

(declare-fun b!3258389 () Bool)

(assert (=> b!3258389 (= e!2029750 (not (= (head!7105 lt!1104309) (c!549308 (regex!5280 (rule!7752 separatorToken!241))))))))

(declare-fun b!3258390 () Bool)

(declare-fun derivativeStep!2961 (Regex!10039 C!20264) Regex!10039)

(assert (=> b!3258390 (= e!2029754 (matchR!4661 (derivativeStep!2961 (regex!5280 (rule!7752 separatorToken!241)) (head!7105 lt!1104309)) (tail!5244 lt!1104309)))))

(assert (= (and d!901007 c!549354) b!3258388))

(assert (= (and d!901007 (not c!549354)) b!3258390))

(assert (= (and d!901007 c!549355) b!3258386))

(assert (= (and d!901007 (not c!549355)) b!3258380))

(assert (= (and b!3258380 c!549353) b!3258381))

(assert (= (and b!3258380 (not c!549353)) b!3258387))

(assert (= (and b!3258387 (not res!1324477)) b!3258383))

(assert (= (and b!3258383 res!1324476) b!3258385))

(assert (= (and b!3258385 res!1324473) b!3258378))

(assert (= (and b!3258378 res!1324479) b!3258382))

(assert (= (and b!3258383 (not res!1324474)) b!3258377))

(assert (= (and b!3258377 res!1324478) b!3258384))

(assert (= (and b!3258384 (not res!1324480)) b!3258379))

(assert (= (and b!3258379 (not res!1324475)) b!3258389))

(assert (= (or b!3258386 b!3258384 b!3258385) bm!235935))

(declare-fun m!3553405 () Bool)

(assert (=> b!3258388 m!3553405))

(declare-fun m!3553407 () Bool)

(assert (=> d!901007 m!3553407))

(assert (=> d!901007 m!3553393))

(declare-fun m!3553409 () Bool)

(assert (=> b!3258379 m!3553409))

(assert (=> b!3258379 m!3553409))

(declare-fun m!3553411 () Bool)

(assert (=> b!3258379 m!3553411))

(assert (=> b!3258378 m!3553409))

(assert (=> b!3258378 m!3553409))

(assert (=> b!3258378 m!3553411))

(assert (=> b!3258390 m!3553271))

(assert (=> b!3258390 m!3553271))

(declare-fun m!3553413 () Bool)

(assert (=> b!3258390 m!3553413))

(assert (=> b!3258390 m!3553409))

(assert (=> b!3258390 m!3553413))

(assert (=> b!3258390 m!3553409))

(declare-fun m!3553415 () Bool)

(assert (=> b!3258390 m!3553415))

(assert (=> b!3258382 m!3553271))

(assert (=> bm!235935 m!3553407))

(assert (=> b!3258389 m!3553271))

(assert (=> b!3258197 d!901007))

(declare-fun d!901013 () Bool)

(declare-fun res!1324499 () Bool)

(declare-fun e!2029767 () Bool)

(assert (=> d!901013 (=> res!1324499 e!2029767)))

(assert (=> d!901013 (= res!1324499 ((_ is Nil!36424) tokens!494))))

(assert (=> d!901013 (= (forall!7506 tokens!494 lambda!118491) e!2029767)))

(declare-fun b!3258413 () Bool)

(declare-fun e!2029768 () Bool)

(assert (=> b!3258413 (= e!2029767 e!2029768)))

(declare-fun res!1324500 () Bool)

(assert (=> b!3258413 (=> (not res!1324500) (not e!2029768))))

(declare-fun dynLambda!14845 (Int Token!9926) Bool)

(assert (=> b!3258413 (= res!1324500 (dynLambda!14845 lambda!118491 (h!41844 tokens!494)))))

(declare-fun b!3258414 () Bool)

(assert (=> b!3258414 (= e!2029768 (forall!7506 (t!245713 tokens!494) lambda!118491))))

(assert (= (and d!901013 (not res!1324499)) b!3258413))

(assert (= (and b!3258413 res!1324500) b!3258414))

(declare-fun b_lambda!89973 () Bool)

(assert (=> (not b_lambda!89973) (not b!3258413)))

(declare-fun m!3553483 () Bool)

(assert (=> b!3258413 m!3553483))

(declare-fun m!3553485 () Bool)

(assert (=> b!3258414 m!3553485))

(assert (=> b!3258175 d!901013))

(declare-fun d!901019 () Bool)

(declare-fun lt!1104416 () Bool)

(declare-fun e!2029810 () Bool)

(assert (=> d!901019 (= lt!1104416 e!2029810)))

(declare-fun res!1324534 () Bool)

(assert (=> d!901019 (=> (not res!1324534) (not e!2029810))))

(declare-fun list!13016 (BalanceConc!21486) List!36548)

(assert (=> d!901019 (= res!1324534 (= (list!13016 (_1!21076 (lex!2197 thiss!18206 rules!2135 (print!1934 thiss!18206 (singletonSeq!2376 (h!41844 tokens!494)))))) (list!13016 (singletonSeq!2376 (h!41844 tokens!494)))))))

(declare-fun e!2029811 () Bool)

(assert (=> d!901019 (= lt!1104416 e!2029811)))

(declare-fun res!1324535 () Bool)

(assert (=> d!901019 (=> (not res!1324535) (not e!2029811))))

(declare-fun lt!1104415 () tuple2!35884)

(declare-fun size!27483 (BalanceConc!21486) Int)

(assert (=> d!901019 (= res!1324535 (= (size!27483 (_1!21076 lt!1104415)) 1))))

(assert (=> d!901019 (= lt!1104415 (lex!2197 thiss!18206 rules!2135 (print!1934 thiss!18206 (singletonSeq!2376 (h!41844 tokens!494)))))))

(assert (=> d!901019 (not (isEmpty!20526 rules!2135))))

(assert (=> d!901019 (= (rulesProduceIndividualToken!2361 thiss!18206 rules!2135 (h!41844 tokens!494)) lt!1104416)))

(declare-fun b!3258477 () Bool)

(declare-fun res!1324533 () Bool)

(assert (=> b!3258477 (=> (not res!1324533) (not e!2029811))))

(declare-fun apply!8335 (BalanceConc!21486 Int) Token!9926)

(assert (=> b!3258477 (= res!1324533 (= (apply!8335 (_1!21076 lt!1104415) 0) (h!41844 tokens!494)))))

(declare-fun b!3258478 () Bool)

(declare-fun isEmpty!20532 (BalanceConc!21484) Bool)

(assert (=> b!3258478 (= e!2029811 (isEmpty!20532 (_2!21076 lt!1104415)))))

(declare-fun b!3258479 () Bool)

(assert (=> b!3258479 (= e!2029810 (isEmpty!20532 (_2!21076 (lex!2197 thiss!18206 rules!2135 (print!1934 thiss!18206 (singletonSeq!2376 (h!41844 tokens!494)))))))))

(assert (= (and d!901019 res!1324535) b!3258477))

(assert (= (and b!3258477 res!1324533) b!3258478))

(assert (= (and d!901019 res!1324534) b!3258479))

(declare-fun m!3553577 () Bool)

(assert (=> d!901019 m!3553577))

(assert (=> d!901019 m!3553295))

(assert (=> d!901019 m!3553201))

(assert (=> d!901019 m!3553201))

(declare-fun m!3553579 () Bool)

(assert (=> d!901019 m!3553579))

(declare-fun m!3553581 () Bool)

(assert (=> d!901019 m!3553581))

(declare-fun m!3553583 () Bool)

(assert (=> d!901019 m!3553583))

(declare-fun m!3553585 () Bool)

(assert (=> d!901019 m!3553585))

(assert (=> d!901019 m!3553201))

(assert (=> d!901019 m!3553583))

(declare-fun m!3553587 () Bool)

(assert (=> b!3258477 m!3553587))

(declare-fun m!3553589 () Bool)

(assert (=> b!3258478 m!3553589))

(assert (=> b!3258479 m!3553201))

(assert (=> b!3258479 m!3553201))

(assert (=> b!3258479 m!3553583))

(assert (=> b!3258479 m!3553583))

(assert (=> b!3258479 m!3553585))

(declare-fun m!3553591 () Bool)

(assert (=> b!3258479 m!3553591))

(assert (=> b!3258174 d!901019))

(declare-fun b!3258480 () Bool)

(declare-fun e!2029813 () Bool)

(declare-fun e!2029817 () Bool)

(assert (=> b!3258480 (= e!2029813 e!2029817)))

(declare-fun res!1324541 () Bool)

(assert (=> b!3258480 (=> (not res!1324541) (not e!2029817))))

(declare-fun lt!1104417 () Bool)

(assert (=> b!3258480 (= res!1324541 (not lt!1104417))))

(declare-fun b!3258481 () Bool)

(declare-fun res!1324542 () Bool)

(declare-fun e!2029814 () Bool)

(assert (=> b!3258481 (=> (not res!1324542) (not e!2029814))))

(assert (=> b!3258481 (= res!1324542 (isEmpty!20525 (tail!5244 lt!1104312)))))

(declare-fun b!3258482 () Bool)

(declare-fun res!1324538 () Bool)

(declare-fun e!2029812 () Bool)

(assert (=> b!3258482 (=> res!1324538 e!2029812)))

(assert (=> b!3258482 (= res!1324538 (not (isEmpty!20525 (tail!5244 lt!1104312))))))

(declare-fun b!3258483 () Bool)

(declare-fun e!2029815 () Bool)

(declare-fun e!2029818 () Bool)

(assert (=> b!3258483 (= e!2029815 e!2029818)))

(declare-fun c!549375 () Bool)

(assert (=> b!3258483 (= c!549375 ((_ is EmptyLang!10039) (regex!5280 lt!1104298)))))

(declare-fun b!3258484 () Bool)

(assert (=> b!3258484 (= e!2029818 (not lt!1104417))))

(declare-fun b!3258485 () Bool)

(assert (=> b!3258485 (= e!2029814 (= (head!7105 lt!1104312) (c!549308 (regex!5280 lt!1104298))))))

(declare-fun bm!235939 () Bool)

(declare-fun call!235944 () Bool)

(assert (=> bm!235939 (= call!235944 (isEmpty!20525 lt!1104312))))

(declare-fun d!901047 () Bool)

(assert (=> d!901047 e!2029815))

(declare-fun c!549377 () Bool)

(assert (=> d!901047 (= c!549377 ((_ is EmptyExpr!10039) (regex!5280 lt!1104298)))))

(declare-fun e!2029816 () Bool)

(assert (=> d!901047 (= lt!1104417 e!2029816)))

(declare-fun c!549376 () Bool)

(assert (=> d!901047 (= c!549376 (isEmpty!20525 lt!1104312))))

(assert (=> d!901047 (validRegex!4564 (regex!5280 lt!1104298))))

(assert (=> d!901047 (= (matchR!4661 (regex!5280 lt!1104298) lt!1104312) lt!1104417)))

(declare-fun b!3258486 () Bool)

(declare-fun res!1324537 () Bool)

(assert (=> b!3258486 (=> res!1324537 e!2029813)))

(assert (=> b!3258486 (= res!1324537 e!2029814)))

(declare-fun res!1324539 () Bool)

(assert (=> b!3258486 (=> (not res!1324539) (not e!2029814))))

(assert (=> b!3258486 (= res!1324539 lt!1104417)))

(declare-fun b!3258487 () Bool)

(assert (=> b!3258487 (= e!2029817 e!2029812)))

(declare-fun res!1324543 () Bool)

(assert (=> b!3258487 (=> res!1324543 e!2029812)))

(assert (=> b!3258487 (= res!1324543 call!235944)))

(declare-fun b!3258488 () Bool)

(declare-fun res!1324536 () Bool)

(assert (=> b!3258488 (=> (not res!1324536) (not e!2029814))))

(assert (=> b!3258488 (= res!1324536 (not call!235944))))

(declare-fun b!3258489 () Bool)

(assert (=> b!3258489 (= e!2029815 (= lt!1104417 call!235944))))

(declare-fun b!3258490 () Bool)

(declare-fun res!1324540 () Bool)

(assert (=> b!3258490 (=> res!1324540 e!2029813)))

(assert (=> b!3258490 (= res!1324540 (not ((_ is ElementMatch!10039) (regex!5280 lt!1104298))))))

(assert (=> b!3258490 (= e!2029818 e!2029813)))

(declare-fun b!3258491 () Bool)

(assert (=> b!3258491 (= e!2029816 (nullable!3408 (regex!5280 lt!1104298)))))

(declare-fun b!3258492 () Bool)

(assert (=> b!3258492 (= e!2029812 (not (= (head!7105 lt!1104312) (c!549308 (regex!5280 lt!1104298)))))))

(declare-fun b!3258493 () Bool)

(assert (=> b!3258493 (= e!2029816 (matchR!4661 (derivativeStep!2961 (regex!5280 lt!1104298) (head!7105 lt!1104312)) (tail!5244 lt!1104312)))))

(assert (= (and d!901047 c!549376) b!3258491))

(assert (= (and d!901047 (not c!549376)) b!3258493))

(assert (= (and d!901047 c!549377) b!3258489))

(assert (= (and d!901047 (not c!549377)) b!3258483))

(assert (= (and b!3258483 c!549375) b!3258484))

(assert (= (and b!3258483 (not c!549375)) b!3258490))

(assert (= (and b!3258490 (not res!1324540)) b!3258486))

(assert (= (and b!3258486 res!1324539) b!3258488))

(assert (= (and b!3258488 res!1324536) b!3258481))

(assert (= (and b!3258481 res!1324542) b!3258485))

(assert (= (and b!3258486 (not res!1324537)) b!3258480))

(assert (= (and b!3258480 res!1324541) b!3258487))

(assert (= (and b!3258487 (not res!1324543)) b!3258482))

(assert (= (and b!3258482 (not res!1324538)) b!3258492))

(assert (= (or b!3258489 b!3258487 b!3258488) bm!235939))

(declare-fun m!3553593 () Bool)

(assert (=> b!3258491 m!3553593))

(declare-fun m!3553595 () Bool)

(assert (=> d!901047 m!3553595))

(declare-fun m!3553597 () Bool)

(assert (=> d!901047 m!3553597))

(declare-fun m!3553599 () Bool)

(assert (=> b!3258482 m!3553599))

(assert (=> b!3258482 m!3553599))

(declare-fun m!3553601 () Bool)

(assert (=> b!3258482 m!3553601))

(assert (=> b!3258481 m!3553599))

(assert (=> b!3258481 m!3553599))

(assert (=> b!3258481 m!3553601))

(declare-fun m!3553603 () Bool)

(assert (=> b!3258493 m!3553603))

(assert (=> b!3258493 m!3553603))

(declare-fun m!3553605 () Bool)

(assert (=> b!3258493 m!3553605))

(assert (=> b!3258493 m!3553599))

(assert (=> b!3258493 m!3553605))

(assert (=> b!3258493 m!3553599))

(declare-fun m!3553607 () Bool)

(assert (=> b!3258493 m!3553607))

(assert (=> b!3258485 m!3553603))

(assert (=> bm!235939 m!3553595))

(assert (=> b!3258492 m!3553603))

(assert (=> b!3258195 d!901047))

(declare-fun d!901049 () Bool)

(assert (=> d!901049 (= (get!11611 lt!1104296) (v!35909 lt!1104296))))

(assert (=> b!3258195 d!901049))

(declare-fun d!901051 () Bool)

(declare-fun lt!1104419 () Bool)

(declare-fun e!2029819 () Bool)

(assert (=> d!901051 (= lt!1104419 e!2029819)))

(declare-fun res!1324545 () Bool)

(assert (=> d!901051 (=> (not res!1324545) (not e!2029819))))

(assert (=> d!901051 (= res!1324545 (= (list!13016 (_1!21076 (lex!2197 thiss!18206 rules!2135 (print!1934 thiss!18206 (singletonSeq!2376 separatorToken!241))))) (list!13016 (singletonSeq!2376 separatorToken!241))))))

(declare-fun e!2029820 () Bool)

(assert (=> d!901051 (= lt!1104419 e!2029820)))

(declare-fun res!1324546 () Bool)

(assert (=> d!901051 (=> (not res!1324546) (not e!2029820))))

(declare-fun lt!1104418 () tuple2!35884)

(assert (=> d!901051 (= res!1324546 (= (size!27483 (_1!21076 lt!1104418)) 1))))

(assert (=> d!901051 (= lt!1104418 (lex!2197 thiss!18206 rules!2135 (print!1934 thiss!18206 (singletonSeq!2376 separatorToken!241))))))

(assert (=> d!901051 (not (isEmpty!20526 rules!2135))))

(assert (=> d!901051 (= (rulesProduceIndividualToken!2361 thiss!18206 rules!2135 separatorToken!241) lt!1104419)))

(declare-fun b!3258494 () Bool)

(declare-fun res!1324544 () Bool)

(assert (=> b!3258494 (=> (not res!1324544) (not e!2029820))))

(assert (=> b!3258494 (= res!1324544 (= (apply!8335 (_1!21076 lt!1104418) 0) separatorToken!241))))

(declare-fun b!3258495 () Bool)

(assert (=> b!3258495 (= e!2029820 (isEmpty!20532 (_2!21076 lt!1104418)))))

(declare-fun b!3258496 () Bool)

(assert (=> b!3258496 (= e!2029819 (isEmpty!20532 (_2!21076 (lex!2197 thiss!18206 rules!2135 (print!1934 thiss!18206 (singletonSeq!2376 separatorToken!241))))))))

(assert (= (and d!901051 res!1324546) b!3258494))

(assert (= (and b!3258494 res!1324544) b!3258495))

(assert (= (and d!901051 res!1324545) b!3258496))

(declare-fun m!3553609 () Bool)

(assert (=> d!901051 m!3553609))

(assert (=> d!901051 m!3553295))

(declare-fun m!3553611 () Bool)

(assert (=> d!901051 m!3553611))

(assert (=> d!901051 m!3553611))

(declare-fun m!3553613 () Bool)

(assert (=> d!901051 m!3553613))

(declare-fun m!3553615 () Bool)

(assert (=> d!901051 m!3553615))

(declare-fun m!3553617 () Bool)

(assert (=> d!901051 m!3553617))

(declare-fun m!3553619 () Bool)

(assert (=> d!901051 m!3553619))

(assert (=> d!901051 m!3553611))

(assert (=> d!901051 m!3553617))

(declare-fun m!3553621 () Bool)

(assert (=> b!3258494 m!3553621))

(declare-fun m!3553623 () Bool)

(assert (=> b!3258495 m!3553623))

(assert (=> b!3258496 m!3553611))

(assert (=> b!3258496 m!3553611))

(assert (=> b!3258496 m!3553617))

(assert (=> b!3258496 m!3553617))

(assert (=> b!3258496 m!3553619))

(declare-fun m!3553625 () Bool)

(assert (=> b!3258496 m!3553625))

(assert (=> b!3258194 d!901051))

(declare-fun d!901053 () Bool)

(declare-fun list!13017 (Conc!10935) List!36547)

(assert (=> d!901053 (= (list!13013 (charsOf!3296 (h!41844 tokens!494))) (list!13017 (c!549309 (charsOf!3296 (h!41844 tokens!494)))))))

(declare-fun bs!545221 () Bool)

(assert (= bs!545221 d!901053))

(declare-fun m!3553627 () Bool)

(assert (=> bs!545221 m!3553627))

(assert (=> b!3258192 d!901053))

(declare-fun d!901055 () Bool)

(declare-fun lt!1104422 () BalanceConc!21484)

(assert (=> d!901055 (= (list!13013 lt!1104422) (originalCharacters!5994 (h!41844 tokens!494)))))

(declare-fun dynLambda!14846 (Int TokenValue!5510) BalanceConc!21484)

(assert (=> d!901055 (= lt!1104422 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (value!170940 (h!41844 tokens!494))))))

(assert (=> d!901055 (= (charsOf!3296 (h!41844 tokens!494)) lt!1104422)))

(declare-fun b_lambda!89979 () Bool)

(assert (=> (not b_lambda!89979) (not d!901055)))

(declare-fun tb!164021 () Bool)

(declare-fun t!245724 () Bool)

(assert (=> (and b!3258182 (= (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245724) tb!164021))

(declare-fun b!3258501 () Bool)

(declare-fun e!2029823 () Bool)

(declare-fun tp!1025364 () Bool)

(declare-fun inv!49340 (Conc!10935) Bool)

(assert (=> b!3258501 (= e!2029823 (and (inv!49340 (c!549309 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (value!170940 (h!41844 tokens!494))))) tp!1025364))))

(declare-fun result!206640 () Bool)

(declare-fun inv!49341 (BalanceConc!21484) Bool)

(assert (=> tb!164021 (= result!206640 (and (inv!49341 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (value!170940 (h!41844 tokens!494)))) e!2029823))))

(assert (= tb!164021 b!3258501))

(declare-fun m!3553629 () Bool)

(assert (=> b!3258501 m!3553629))

(declare-fun m!3553631 () Bool)

(assert (=> tb!164021 m!3553631))

(assert (=> d!901055 t!245724))

(declare-fun b_and!219909 () Bool)

(assert (= b_and!219893 (and (=> t!245724 result!206640) b_and!219909)))

(declare-fun t!245726 () Bool)

(declare-fun tb!164023 () Bool)

(assert (=> (and b!3258189 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245726) tb!164023))

(declare-fun result!206644 () Bool)

(assert (= result!206644 result!206640))

(assert (=> d!901055 t!245726))

(declare-fun b_and!219911 () Bool)

(assert (= b_and!219897 (and (=> t!245726 result!206644) b_and!219911)))

(declare-fun t!245728 () Bool)

(declare-fun tb!164025 () Bool)

(assert (=> (and b!3258193 (= (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245728) tb!164025))

(declare-fun result!206646 () Bool)

(assert (= result!206646 result!206640))

(assert (=> d!901055 t!245728))

(declare-fun b_and!219913 () Bool)

(assert (= b_and!219901 (and (=> t!245728 result!206646) b_and!219913)))

(declare-fun m!3553633 () Bool)

(assert (=> d!901055 m!3553633))

(declare-fun m!3553635 () Bool)

(assert (=> d!901055 m!3553635))

(assert (=> b!3258192 d!901055))

(declare-fun d!901057 () Bool)

(assert (=> d!901057 (= (isEmpty!20526 rules!2135) ((_ is Nil!36425) rules!2135))))

(assert (=> b!3258191 d!901057))

(declare-fun b!3258512 () Bool)

(declare-fun e!2029830 () Bool)

(declare-fun inv!16 (TokenValue!5510) Bool)

(assert (=> b!3258512 (= e!2029830 (inv!16 (value!170940 separatorToken!241)))))

(declare-fun d!901059 () Bool)

(declare-fun c!549382 () Bool)

(assert (=> d!901059 (= c!549382 ((_ is IntegerValue!16530) (value!170940 separatorToken!241)))))

(assert (=> d!901059 (= (inv!21 (value!170940 separatorToken!241)) e!2029830)))

(declare-fun b!3258513 () Bool)

(declare-fun res!1324549 () Bool)

(declare-fun e!2029831 () Bool)

(assert (=> b!3258513 (=> res!1324549 e!2029831)))

(assert (=> b!3258513 (= res!1324549 (not ((_ is IntegerValue!16532) (value!170940 separatorToken!241))))))

(declare-fun e!2029832 () Bool)

(assert (=> b!3258513 (= e!2029832 e!2029831)))

(declare-fun b!3258514 () Bool)

(declare-fun inv!15 (TokenValue!5510) Bool)

(assert (=> b!3258514 (= e!2029831 (inv!15 (value!170940 separatorToken!241)))))

(declare-fun b!3258515 () Bool)

(declare-fun inv!17 (TokenValue!5510) Bool)

(assert (=> b!3258515 (= e!2029832 (inv!17 (value!170940 separatorToken!241)))))

(declare-fun b!3258516 () Bool)

(assert (=> b!3258516 (= e!2029830 e!2029832)))

(declare-fun c!549383 () Bool)

(assert (=> b!3258516 (= c!549383 ((_ is IntegerValue!16531) (value!170940 separatorToken!241)))))

(assert (= (and d!901059 c!549382) b!3258512))

(assert (= (and d!901059 (not c!549382)) b!3258516))

(assert (= (and b!3258516 c!549383) b!3258515))

(assert (= (and b!3258516 (not c!549383)) b!3258513))

(assert (= (and b!3258513 (not res!1324549)) b!3258514))

(declare-fun m!3553637 () Bool)

(assert (=> b!3258512 m!3553637))

(declare-fun m!3553639 () Bool)

(assert (=> b!3258514 m!3553639))

(declare-fun m!3553641 () Bool)

(assert (=> b!3258515 m!3553641))

(assert (=> b!3258190 d!901059))

(declare-fun d!901061 () Bool)

(declare-fun lt!1104425 () Bool)

(declare-fun isEmpty!20533 (List!36548) Bool)

(assert (=> d!901061 (= lt!1104425 (isEmpty!20533 (list!13016 (_1!21076 (lex!2197 thiss!18206 rules!2135 lt!1104290)))))))

(declare-fun isEmpty!20534 (Conc!10936) Bool)

(assert (=> d!901061 (= lt!1104425 (isEmpty!20534 (c!549310 (_1!21076 (lex!2197 thiss!18206 rules!2135 lt!1104290)))))))

(assert (=> d!901061 (= (isEmpty!20527 (_1!21076 (lex!2197 thiss!18206 rules!2135 lt!1104290))) lt!1104425)))

(declare-fun bs!545222 () Bool)

(assert (= bs!545222 d!901061))

(declare-fun m!3553643 () Bool)

(assert (=> bs!545222 m!3553643))

(assert (=> bs!545222 m!3553643))

(declare-fun m!3553645 () Bool)

(assert (=> bs!545222 m!3553645))

(declare-fun m!3553647 () Bool)

(assert (=> bs!545222 m!3553647))

(assert (=> b!3258208 d!901061))

(declare-fun b!3258527 () Bool)

(declare-fun e!2029839 () Bool)

(declare-fun lt!1104430 () tuple2!35884)

(assert (=> b!3258527 (= e!2029839 (= (_2!21076 lt!1104430) lt!1104290))))

(declare-fun e!2029840 () Bool)

(declare-fun b!3258528 () Bool)

(assert (=> b!3258528 (= e!2029840 (= (list!13013 (_2!21076 lt!1104430)) (_2!21075 (lexList!1343 thiss!18206 rules!2135 (list!13013 lt!1104290)))))))

(declare-fun d!901063 () Bool)

(assert (=> d!901063 e!2029840))

(declare-fun res!1324557 () Bool)

(assert (=> d!901063 (=> (not res!1324557) (not e!2029840))))

(assert (=> d!901063 (= res!1324557 e!2029839)))

(declare-fun c!549386 () Bool)

(assert (=> d!901063 (= c!549386 (> (size!27483 (_1!21076 lt!1104430)) 0))))

(declare-fun lexTailRecV2!953 (LexerInterface!4869 List!36549 BalanceConc!21484 BalanceConc!21484 BalanceConc!21484 BalanceConc!21486) tuple2!35884)

(assert (=> d!901063 (= lt!1104430 (lexTailRecV2!953 thiss!18206 rules!2135 lt!1104290 (BalanceConc!21485 Empty!10935) lt!1104290 (BalanceConc!21487 Empty!10936)))))

(assert (=> d!901063 (= (lex!2197 thiss!18206 rules!2135 lt!1104290) lt!1104430)))

(declare-fun b!3258529 () Bool)

(declare-fun e!2029841 () Bool)

(assert (=> b!3258529 (= e!2029839 e!2029841)))

(declare-fun res!1324556 () Bool)

(declare-fun size!27484 (BalanceConc!21484) Int)

(assert (=> b!3258529 (= res!1324556 (< (size!27484 (_2!21076 lt!1104430)) (size!27484 lt!1104290)))))

(assert (=> b!3258529 (=> (not res!1324556) (not e!2029841))))

(declare-fun b!3258530 () Bool)

(assert (=> b!3258530 (= e!2029841 (not (isEmpty!20527 (_1!21076 lt!1104430))))))

(declare-fun b!3258531 () Bool)

(declare-fun res!1324558 () Bool)

(assert (=> b!3258531 (=> (not res!1324558) (not e!2029840))))

(assert (=> b!3258531 (= res!1324558 (= (list!13016 (_1!21076 lt!1104430)) (_1!21075 (lexList!1343 thiss!18206 rules!2135 (list!13013 lt!1104290)))))))

(assert (= (and d!901063 c!549386) b!3258529))

(assert (= (and d!901063 (not c!549386)) b!3258527))

(assert (= (and b!3258529 res!1324556) b!3258530))

(assert (= (and d!901063 res!1324557) b!3258531))

(assert (= (and b!3258531 res!1324558) b!3258528))

(declare-fun m!3553649 () Bool)

(assert (=> b!3258531 m!3553649))

(declare-fun m!3553651 () Bool)

(assert (=> b!3258531 m!3553651))

(assert (=> b!3258531 m!3553651))

(declare-fun m!3553653 () Bool)

(assert (=> b!3258531 m!3553653))

(declare-fun m!3553655 () Bool)

(assert (=> b!3258528 m!3553655))

(assert (=> b!3258528 m!3553651))

(assert (=> b!3258528 m!3553651))

(assert (=> b!3258528 m!3553653))

(declare-fun m!3553657 () Bool)

(assert (=> b!3258529 m!3553657))

(declare-fun m!3553659 () Bool)

(assert (=> b!3258529 m!3553659))

(declare-fun m!3553661 () Bool)

(assert (=> d!901063 m!3553661))

(declare-fun m!3553663 () Bool)

(assert (=> d!901063 m!3553663))

(declare-fun m!3553665 () Bool)

(assert (=> b!3258530 m!3553665))

(assert (=> b!3258208 d!901063))

(declare-fun d!901065 () Bool)

(declare-fun fromListB!1579 (List!36547) BalanceConc!21484)

(assert (=> d!901065 (= (seqFromList!3624 lt!1104312) (fromListB!1579 lt!1104312))))

(declare-fun bs!545223 () Bool)

(assert (= bs!545223 d!901065))

(declare-fun m!3553667 () Bool)

(assert (=> bs!545223 m!3553667))

(assert (=> b!3258208 d!901065))

(declare-fun lt!1104433 () BalanceConc!21484)

(declare-fun d!901067 () Bool)

(declare-fun printWithSeparatorTokenList!194 (LexerInterface!4869 List!36548 Token!9926) List!36547)

(assert (=> d!901067 (= (list!13013 lt!1104433) (printWithSeparatorTokenList!194 thiss!18206 (list!13016 lt!1104314) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!22 (LexerInterface!4869 BalanceConc!21486 Token!9926 Int BalanceConc!21484) BalanceConc!21484)

(assert (=> d!901067 (= lt!1104433 (printWithSeparatorTokenTailRec!22 thiss!18206 lt!1104314 separatorToken!241 0 (BalanceConc!21485 Empty!10935)))))

(assert (=> d!901067 (isSeparator!5280 (rule!7752 separatorToken!241))))

(assert (=> d!901067 (= (printWithSeparatorToken!86 thiss!18206 lt!1104314 separatorToken!241) lt!1104433)))

(declare-fun bs!545224 () Bool)

(assert (= bs!545224 d!901067))

(declare-fun m!3553669 () Bool)

(assert (=> bs!545224 m!3553669))

(declare-fun m!3553671 () Bool)

(assert (=> bs!545224 m!3553671))

(assert (=> bs!545224 m!3553671))

(declare-fun m!3553673 () Bool)

(assert (=> bs!545224 m!3553673))

(declare-fun m!3553675 () Bool)

(assert (=> bs!545224 m!3553675))

(assert (=> b!3258187 d!901067))

(declare-fun b!3258543 () Bool)

(declare-fun lt!1104436 () List!36547)

(declare-fun e!2029847 () Bool)

(assert (=> b!3258543 (= e!2029847 (or (not (= lt!1104309 Nil!36423)) (= lt!1104436 lt!1104312)))))

(declare-fun d!901069 () Bool)

(assert (=> d!901069 e!2029847))

(declare-fun res!1324564 () Bool)

(assert (=> d!901069 (=> (not res!1324564) (not e!2029847))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4934 (List!36547) (InoxSet C!20264))

(assert (=> d!901069 (= res!1324564 (= (content!4934 lt!1104436) ((_ map or) (content!4934 lt!1104312) (content!4934 lt!1104309))))))

(declare-fun e!2029846 () List!36547)

(assert (=> d!901069 (= lt!1104436 e!2029846)))

(declare-fun c!549389 () Bool)

(assert (=> d!901069 (= c!549389 ((_ is Nil!36423) lt!1104312))))

(assert (=> d!901069 (= (++!8786 lt!1104312 lt!1104309) lt!1104436)))

(declare-fun b!3258542 () Bool)

(declare-fun res!1324563 () Bool)

(assert (=> b!3258542 (=> (not res!1324563) (not e!2029847))))

(assert (=> b!3258542 (= res!1324563 (= (size!27479 lt!1104436) (+ (size!27479 lt!1104312) (size!27479 lt!1104309))))))

(declare-fun b!3258540 () Bool)

(assert (=> b!3258540 (= e!2029846 lt!1104309)))

(declare-fun b!3258541 () Bool)

(assert (=> b!3258541 (= e!2029846 (Cons!36423 (h!41843 lt!1104312) (++!8786 (t!245712 lt!1104312) lt!1104309)))))

(assert (= (and d!901069 c!549389) b!3258540))

(assert (= (and d!901069 (not c!549389)) b!3258541))

(assert (= (and d!901069 res!1324564) b!3258542))

(assert (= (and b!3258542 res!1324563) b!3258543))

(declare-fun m!3553677 () Bool)

(assert (=> d!901069 m!3553677))

(declare-fun m!3553679 () Bool)

(assert (=> d!901069 m!3553679))

(declare-fun m!3553681 () Bool)

(assert (=> d!901069 m!3553681))

(declare-fun m!3553683 () Bool)

(assert (=> b!3258542 m!3553683))

(assert (=> b!3258542 m!3553285))

(declare-fun m!3553685 () Bool)

(assert (=> b!3258542 m!3553685))

(declare-fun m!3553687 () Bool)

(assert (=> b!3258541 m!3553687))

(assert (=> b!3258187 d!901069))

(declare-fun d!901071 () Bool)

(declare-fun lt!1104437 () BalanceConc!21484)

(assert (=> d!901071 (= (list!13013 lt!1104437) (originalCharacters!5994 separatorToken!241))))

(assert (=> d!901071 (= lt!1104437 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (value!170940 separatorToken!241)))))

(assert (=> d!901071 (= (charsOf!3296 separatorToken!241) lt!1104437)))

(declare-fun b_lambda!89981 () Bool)

(assert (=> (not b_lambda!89981) (not d!901071)))

(declare-fun t!245732 () Bool)

(declare-fun tb!164027 () Bool)

(assert (=> (and b!3258182 (= (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241)))) t!245732) tb!164027))

(declare-fun b!3258544 () Bool)

(declare-fun e!2029848 () Bool)

(declare-fun tp!1025365 () Bool)

(assert (=> b!3258544 (= e!2029848 (and (inv!49340 (c!549309 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (value!170940 separatorToken!241)))) tp!1025365))))

(declare-fun result!206648 () Bool)

(assert (=> tb!164027 (= result!206648 (and (inv!49341 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (value!170940 separatorToken!241))) e!2029848))))

(assert (= tb!164027 b!3258544))

(declare-fun m!3553689 () Bool)

(assert (=> b!3258544 m!3553689))

(declare-fun m!3553691 () Bool)

(assert (=> tb!164027 m!3553691))

(assert (=> d!901071 t!245732))

(declare-fun b_and!219915 () Bool)

(assert (= b_and!219909 (and (=> t!245732 result!206648) b_and!219915)))

(declare-fun t!245734 () Bool)

(declare-fun tb!164029 () Bool)

(assert (=> (and b!3258189 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241)))) t!245734) tb!164029))

(declare-fun result!206650 () Bool)

(assert (= result!206650 result!206648))

(assert (=> d!901071 t!245734))

(declare-fun b_and!219917 () Bool)

(assert (= b_and!219911 (and (=> t!245734 result!206650) b_and!219917)))

(declare-fun t!245736 () Bool)

(declare-fun tb!164031 () Bool)

(assert (=> (and b!3258193 (= (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241)))) t!245736) tb!164031))

(declare-fun result!206652 () Bool)

(assert (= result!206652 result!206648))

(assert (=> d!901071 t!245736))

(declare-fun b_and!219919 () Bool)

(assert (= b_and!219913 (and (=> t!245736 result!206652) b_and!219919)))

(declare-fun m!3553693 () Bool)

(assert (=> d!901071 m!3553693))

(declare-fun m!3553695 () Bool)

(assert (=> d!901071 m!3553695))

(assert (=> b!3258187 d!901071))

(declare-fun d!901073 () Bool)

(assert (=> d!901073 (= (list!13013 (charsOf!3296 separatorToken!241)) (list!13017 (c!549309 (charsOf!3296 separatorToken!241))))))

(declare-fun bs!545225 () Bool)

(assert (= bs!545225 d!901073))

(declare-fun m!3553697 () Bool)

(assert (=> bs!545225 m!3553697))

(assert (=> b!3258187 d!901073))

(declare-fun d!901075 () Bool)

(assert (=> d!901075 (= (list!13013 lt!1104307) (list!13017 (c!549309 lt!1104307)))))

(declare-fun bs!545226 () Bool)

(assert (= bs!545226 d!901075))

(declare-fun m!3553699 () Bool)

(assert (=> bs!545226 m!3553699))

(assert (=> b!3258187 d!901075))

(declare-fun d!901077 () Bool)

(declare-fun lt!1104456 () BalanceConc!21484)

(declare-fun printListTailRec!583 (LexerInterface!4869 List!36548 List!36547) List!36547)

(declare-fun dropList!1100 (BalanceConc!21486 Int) List!36548)

(assert (=> d!901077 (= (list!13013 lt!1104456) (printListTailRec!583 thiss!18206 (dropList!1100 lt!1104286 0) (list!13013 (BalanceConc!21485 Empty!10935))))))

(declare-fun e!2029853 () BalanceConc!21484)

(assert (=> d!901077 (= lt!1104456 e!2029853)))

(declare-fun c!549392 () Bool)

(assert (=> d!901077 (= c!549392 (>= 0 (size!27483 lt!1104286)))))

(declare-fun e!2029854 () Bool)

(assert (=> d!901077 e!2029854))

(declare-fun res!1324567 () Bool)

(assert (=> d!901077 (=> (not res!1324567) (not e!2029854))))

(assert (=> d!901077 (= res!1324567 (>= 0 0))))

(assert (=> d!901077 (= (printTailRec!1366 thiss!18206 lt!1104286 0 (BalanceConc!21485 Empty!10935)) lt!1104456)))

(declare-fun b!3258551 () Bool)

(assert (=> b!3258551 (= e!2029854 (<= 0 (size!27483 lt!1104286)))))

(declare-fun b!3258552 () Bool)

(assert (=> b!3258552 (= e!2029853 (BalanceConc!21485 Empty!10935))))

(declare-fun b!3258553 () Bool)

(declare-fun ++!8788 (BalanceConc!21484 BalanceConc!21484) BalanceConc!21484)

(assert (=> b!3258553 (= e!2029853 (printTailRec!1366 thiss!18206 lt!1104286 (+ 0 1) (++!8788 (BalanceConc!21485 Empty!10935) (charsOf!3296 (apply!8335 lt!1104286 0)))))))

(declare-fun lt!1104453 () List!36548)

(assert (=> b!3258553 (= lt!1104453 (list!13016 lt!1104286))))

(declare-fun lt!1104455 () Unit!51144)

(declare-fun lemmaDropApply!1059 (List!36548 Int) Unit!51144)

(assert (=> b!3258553 (= lt!1104455 (lemmaDropApply!1059 lt!1104453 0))))

(declare-fun head!7107 (List!36548) Token!9926)

(declare-fun drop!1887 (List!36548 Int) List!36548)

(declare-fun apply!8336 (List!36548 Int) Token!9926)

(assert (=> b!3258553 (= (head!7107 (drop!1887 lt!1104453 0)) (apply!8336 lt!1104453 0))))

(declare-fun lt!1104458 () Unit!51144)

(assert (=> b!3258553 (= lt!1104458 lt!1104455)))

(declare-fun lt!1104452 () List!36548)

(assert (=> b!3258553 (= lt!1104452 (list!13016 lt!1104286))))

(declare-fun lt!1104457 () Unit!51144)

(declare-fun lemmaDropTail!943 (List!36548 Int) Unit!51144)

(assert (=> b!3258553 (= lt!1104457 (lemmaDropTail!943 lt!1104452 0))))

(declare-fun tail!5245 (List!36548) List!36548)

(assert (=> b!3258553 (= (tail!5245 (drop!1887 lt!1104452 0)) (drop!1887 lt!1104452 (+ 0 1)))))

(declare-fun lt!1104454 () Unit!51144)

(assert (=> b!3258553 (= lt!1104454 lt!1104457)))

(assert (= (and d!901077 res!1324567) b!3258551))

(assert (= (and d!901077 c!549392) b!3258552))

(assert (= (and d!901077 (not c!549392)) b!3258553))

(declare-fun m!3553701 () Bool)

(assert (=> d!901077 m!3553701))

(declare-fun m!3553703 () Bool)

(assert (=> d!901077 m!3553703))

(declare-fun m!3553705 () Bool)

(assert (=> d!901077 m!3553705))

(declare-fun m!3553707 () Bool)

(assert (=> d!901077 m!3553707))

(assert (=> d!901077 m!3553705))

(assert (=> d!901077 m!3553701))

(declare-fun m!3553709 () Bool)

(assert (=> d!901077 m!3553709))

(assert (=> b!3258551 m!3553707))

(declare-fun m!3553711 () Bool)

(assert (=> b!3258553 m!3553711))

(declare-fun m!3553713 () Bool)

(assert (=> b!3258553 m!3553713))

(declare-fun m!3553715 () Bool)

(assert (=> b!3258553 m!3553715))

(declare-fun m!3553717 () Bool)

(assert (=> b!3258553 m!3553717))

(declare-fun m!3553719 () Bool)

(assert (=> b!3258553 m!3553719))

(assert (=> b!3258553 m!3553713))

(declare-fun m!3553721 () Bool)

(assert (=> b!3258553 m!3553721))

(declare-fun m!3553723 () Bool)

(assert (=> b!3258553 m!3553723))

(declare-fun m!3553725 () Bool)

(assert (=> b!3258553 m!3553725))

(declare-fun m!3553727 () Bool)

(assert (=> b!3258553 m!3553727))

(declare-fun m!3553729 () Bool)

(assert (=> b!3258553 m!3553729))

(assert (=> b!3258553 m!3553727))

(assert (=> b!3258553 m!3553723))

(declare-fun m!3553731 () Bool)

(assert (=> b!3258553 m!3553731))

(declare-fun m!3553733 () Bool)

(assert (=> b!3258553 m!3553733))

(assert (=> b!3258553 m!3553711))

(assert (=> b!3258553 m!3553733))

(declare-fun m!3553735 () Bool)

(assert (=> b!3258553 m!3553735))

(assert (=> b!3258186 d!901077))

(declare-fun d!901079 () Bool)

(declare-fun lt!1104461 () BalanceConc!21484)

(assert (=> d!901079 (= (list!13013 lt!1104461) (printList!1419 thiss!18206 (list!13016 lt!1104286)))))

(assert (=> d!901079 (= lt!1104461 (printTailRec!1366 thiss!18206 lt!1104286 0 (BalanceConc!21485 Empty!10935)))))

(assert (=> d!901079 (= (print!1934 thiss!18206 lt!1104286) lt!1104461)))

(declare-fun bs!545227 () Bool)

(assert (= bs!545227 d!901079))

(declare-fun m!3553737 () Bool)

(assert (=> bs!545227 m!3553737))

(assert (=> bs!545227 m!3553719))

(assert (=> bs!545227 m!3553719))

(declare-fun m!3553739 () Bool)

(assert (=> bs!545227 m!3553739))

(assert (=> bs!545227 m!3553209))

(assert (=> b!3258186 d!901079))

(declare-fun d!901081 () Bool)

(assert (=> d!901081 (= (list!13013 lt!1104292) (list!13017 (c!549309 lt!1104292)))))

(declare-fun bs!545228 () Bool)

(assert (= bs!545228 d!901081))

(declare-fun m!3553741 () Bool)

(assert (=> bs!545228 m!3553741))

(assert (=> b!3258186 d!901081))

(declare-fun d!901083 () Bool)

(declare-fun e!2029857 () Bool)

(assert (=> d!901083 e!2029857))

(declare-fun res!1324570 () Bool)

(assert (=> d!901083 (=> (not res!1324570) (not e!2029857))))

(declare-fun lt!1104464 () BalanceConc!21486)

(assert (=> d!901083 (= res!1324570 (= (list!13016 lt!1104464) (Cons!36424 (h!41844 tokens!494) Nil!36424)))))

(declare-fun singleton!1016 (Token!9926) BalanceConc!21486)

(assert (=> d!901083 (= lt!1104464 (singleton!1016 (h!41844 tokens!494)))))

(assert (=> d!901083 (= (singletonSeq!2376 (h!41844 tokens!494)) lt!1104464)))

(declare-fun b!3258556 () Bool)

(declare-fun isBalanced!3255 (Conc!10936) Bool)

(assert (=> b!3258556 (= e!2029857 (isBalanced!3255 (c!549310 lt!1104464)))))

(assert (= (and d!901083 res!1324570) b!3258556))

(declare-fun m!3553743 () Bool)

(assert (=> d!901083 m!3553743))

(declare-fun m!3553745 () Bool)

(assert (=> d!901083 m!3553745))

(declare-fun m!3553747 () Bool)

(assert (=> b!3258556 m!3553747))

(assert (=> b!3258186 d!901083))

(declare-fun d!901085 () Bool)

(declare-fun c!549395 () Bool)

(assert (=> d!901085 (= c!549395 ((_ is Cons!36424) (Cons!36424 (h!41844 tokens!494) Nil!36424)))))

(declare-fun e!2029860 () List!36547)

(assert (=> d!901085 (= (printList!1419 thiss!18206 (Cons!36424 (h!41844 tokens!494) Nil!36424)) e!2029860)))

(declare-fun b!3258561 () Bool)

(assert (=> b!3258561 (= e!2029860 (++!8786 (list!13013 (charsOf!3296 (h!41844 (Cons!36424 (h!41844 tokens!494) Nil!36424)))) (printList!1419 thiss!18206 (t!245713 (Cons!36424 (h!41844 tokens!494) Nil!36424)))))))

(declare-fun b!3258562 () Bool)

(assert (=> b!3258562 (= e!2029860 Nil!36423)))

(assert (= (and d!901085 c!549395) b!3258561))

(assert (= (and d!901085 (not c!549395)) b!3258562))

(declare-fun m!3553749 () Bool)

(assert (=> b!3258561 m!3553749))

(assert (=> b!3258561 m!3553749))

(declare-fun m!3553751 () Bool)

(assert (=> b!3258561 m!3553751))

(declare-fun m!3553753 () Bool)

(assert (=> b!3258561 m!3553753))

(assert (=> b!3258561 m!3553751))

(assert (=> b!3258561 m!3553753))

(declare-fun m!3553755 () Bool)

(assert (=> b!3258561 m!3553755))

(assert (=> b!3258186 d!901085))

(declare-fun b!3258563 () Bool)

(declare-fun e!2029861 () Bool)

(assert (=> b!3258563 (= e!2029861 (inv!16 (value!170940 (h!41844 tokens!494))))))

(declare-fun d!901087 () Bool)

(declare-fun c!549396 () Bool)

(assert (=> d!901087 (= c!549396 ((_ is IntegerValue!16530) (value!170940 (h!41844 tokens!494))))))

(assert (=> d!901087 (= (inv!21 (value!170940 (h!41844 tokens!494))) e!2029861)))

(declare-fun b!3258564 () Bool)

(declare-fun res!1324571 () Bool)

(declare-fun e!2029862 () Bool)

(assert (=> b!3258564 (=> res!1324571 e!2029862)))

(assert (=> b!3258564 (= res!1324571 (not ((_ is IntegerValue!16532) (value!170940 (h!41844 tokens!494)))))))

(declare-fun e!2029863 () Bool)

(assert (=> b!3258564 (= e!2029863 e!2029862)))

(declare-fun b!3258565 () Bool)

(assert (=> b!3258565 (= e!2029862 (inv!15 (value!170940 (h!41844 tokens!494))))))

(declare-fun b!3258566 () Bool)

(assert (=> b!3258566 (= e!2029863 (inv!17 (value!170940 (h!41844 tokens!494))))))

(declare-fun b!3258567 () Bool)

(assert (=> b!3258567 (= e!2029861 e!2029863)))

(declare-fun c!549397 () Bool)

(assert (=> b!3258567 (= c!549397 ((_ is IntegerValue!16531) (value!170940 (h!41844 tokens!494))))))

(assert (= (and d!901087 c!549396) b!3258563))

(assert (= (and d!901087 (not c!549396)) b!3258567))

(assert (= (and b!3258567 c!549397) b!3258566))

(assert (= (and b!3258567 (not c!549397)) b!3258564))

(assert (= (and b!3258564 (not res!1324571)) b!3258565))

(declare-fun m!3553757 () Bool)

(assert (=> b!3258563 m!3553757))

(declare-fun m!3553759 () Bool)

(assert (=> b!3258565 m!3553759))

(declare-fun m!3553761 () Bool)

(assert (=> b!3258566 m!3553761))

(assert (=> b!3258207 d!901087))

(declare-fun d!901089 () Bool)

(assert (=> d!901089 (= (inv!49333 (tag!5816 (rule!7752 separatorToken!241))) (= (mod (str.len (value!170939 (tag!5816 (rule!7752 separatorToken!241)))) 2) 0))))

(assert (=> b!3258206 d!901089))

(declare-fun d!901091 () Bool)

(declare-fun res!1324574 () Bool)

(declare-fun e!2029866 () Bool)

(assert (=> d!901091 (=> (not res!1324574) (not e!2029866))))

(declare-fun semiInverseModEq!2177 (Int Int) Bool)

(assert (=> d!901091 (= res!1324574 (semiInverseModEq!2177 (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (toValue!7396 (transformation!5280 (rule!7752 separatorToken!241)))))))

(assert (=> d!901091 (= (inv!49336 (transformation!5280 (rule!7752 separatorToken!241))) e!2029866)))

(declare-fun b!3258570 () Bool)

(declare-fun equivClasses!2076 (Int Int) Bool)

(assert (=> b!3258570 (= e!2029866 (equivClasses!2076 (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (toValue!7396 (transformation!5280 (rule!7752 separatorToken!241)))))))

(assert (= (and d!901091 res!1324574) b!3258570))

(declare-fun m!3553763 () Bool)

(assert (=> d!901091 m!3553763))

(declare-fun m!3553765 () Bool)

(assert (=> b!3258570 m!3553765))

(assert (=> b!3258206 d!901091))

(declare-fun d!901093 () Bool)

(declare-fun res!1324579 () Bool)

(declare-fun e!2029869 () Bool)

(assert (=> d!901093 (=> (not res!1324579) (not e!2029869))))

(assert (=> d!901093 (= res!1324579 (not (isEmpty!20525 (originalCharacters!5994 separatorToken!241))))))

(assert (=> d!901093 (= (inv!49337 separatorToken!241) e!2029869)))

(declare-fun b!3258575 () Bool)

(declare-fun res!1324580 () Bool)

(assert (=> b!3258575 (=> (not res!1324580) (not e!2029869))))

(assert (=> b!3258575 (= res!1324580 (= (originalCharacters!5994 separatorToken!241) (list!13013 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (value!170940 separatorToken!241)))))))

(declare-fun b!3258576 () Bool)

(assert (=> b!3258576 (= e!2029869 (= (size!27478 separatorToken!241) (size!27479 (originalCharacters!5994 separatorToken!241))))))

(assert (= (and d!901093 res!1324579) b!3258575))

(assert (= (and b!3258575 res!1324580) b!3258576))

(declare-fun b_lambda!89983 () Bool)

(assert (=> (not b_lambda!89983) (not b!3258575)))

(assert (=> b!3258575 t!245732))

(declare-fun b_and!219921 () Bool)

(assert (= b_and!219915 (and (=> t!245732 result!206648) b_and!219921)))

(assert (=> b!3258575 t!245734))

(declare-fun b_and!219923 () Bool)

(assert (= b_and!219917 (and (=> t!245734 result!206650) b_and!219923)))

(assert (=> b!3258575 t!245736))

(declare-fun b_and!219925 () Bool)

(assert (= b_and!219919 (and (=> t!245736 result!206652) b_and!219925)))

(declare-fun m!3553767 () Bool)

(assert (=> d!901093 m!3553767))

(assert (=> b!3258575 m!3553695))

(assert (=> b!3258575 m!3553695))

(declare-fun m!3553769 () Bool)

(assert (=> b!3258575 m!3553769))

(declare-fun m!3553771 () Bool)

(assert (=> b!3258576 m!3553771))

(assert (=> start!304922 d!901093))

(declare-fun b!3258577 () Bool)

(declare-fun e!2029871 () Bool)

(declare-fun e!2029875 () Bool)

(assert (=> b!3258577 (= e!2029871 e!2029875)))

(declare-fun res!1324586 () Bool)

(assert (=> b!3258577 (=> (not res!1324586) (not e!2029875))))

(declare-fun lt!1104465 () Bool)

(assert (=> b!3258577 (= res!1324586 (not lt!1104465))))

(declare-fun b!3258578 () Bool)

(declare-fun res!1324587 () Bool)

(declare-fun e!2029872 () Bool)

(assert (=> b!3258578 (=> (not res!1324587) (not e!2029872))))

(assert (=> b!3258578 (= res!1324587 (isEmpty!20525 (tail!5244 lt!1104309)))))

(declare-fun b!3258579 () Bool)

(declare-fun res!1324583 () Bool)

(declare-fun e!2029870 () Bool)

(assert (=> b!3258579 (=> res!1324583 e!2029870)))

(assert (=> b!3258579 (= res!1324583 (not (isEmpty!20525 (tail!5244 lt!1104309))))))

(declare-fun b!3258580 () Bool)

(declare-fun e!2029873 () Bool)

(declare-fun e!2029876 () Bool)

(assert (=> b!3258580 (= e!2029873 e!2029876)))

(declare-fun c!549398 () Bool)

(assert (=> b!3258580 (= c!549398 ((_ is EmptyLang!10039) (regex!5280 lt!1104306)))))

(declare-fun b!3258581 () Bool)

(assert (=> b!3258581 (= e!2029876 (not lt!1104465))))

(declare-fun b!3258582 () Bool)

(assert (=> b!3258582 (= e!2029872 (= (head!7105 lt!1104309) (c!549308 (regex!5280 lt!1104306))))))

(declare-fun bm!235940 () Bool)

(declare-fun call!235945 () Bool)

(assert (=> bm!235940 (= call!235945 (isEmpty!20525 lt!1104309))))

(declare-fun d!901095 () Bool)

(assert (=> d!901095 e!2029873))

(declare-fun c!549400 () Bool)

(assert (=> d!901095 (= c!549400 ((_ is EmptyExpr!10039) (regex!5280 lt!1104306)))))

(declare-fun e!2029874 () Bool)

(assert (=> d!901095 (= lt!1104465 e!2029874)))

(declare-fun c!549399 () Bool)

(assert (=> d!901095 (= c!549399 (isEmpty!20525 lt!1104309))))

(assert (=> d!901095 (validRegex!4564 (regex!5280 lt!1104306))))

(assert (=> d!901095 (= (matchR!4661 (regex!5280 lt!1104306) lt!1104309) lt!1104465)))

(declare-fun b!3258583 () Bool)

(declare-fun res!1324582 () Bool)

(assert (=> b!3258583 (=> res!1324582 e!2029871)))

(assert (=> b!3258583 (= res!1324582 e!2029872)))

(declare-fun res!1324584 () Bool)

(assert (=> b!3258583 (=> (not res!1324584) (not e!2029872))))

(assert (=> b!3258583 (= res!1324584 lt!1104465)))

(declare-fun b!3258584 () Bool)

(assert (=> b!3258584 (= e!2029875 e!2029870)))

(declare-fun res!1324588 () Bool)

(assert (=> b!3258584 (=> res!1324588 e!2029870)))

(assert (=> b!3258584 (= res!1324588 call!235945)))

(declare-fun b!3258585 () Bool)

(declare-fun res!1324581 () Bool)

(assert (=> b!3258585 (=> (not res!1324581) (not e!2029872))))

(assert (=> b!3258585 (= res!1324581 (not call!235945))))

(declare-fun b!3258586 () Bool)

(assert (=> b!3258586 (= e!2029873 (= lt!1104465 call!235945))))

(declare-fun b!3258587 () Bool)

(declare-fun res!1324585 () Bool)

(assert (=> b!3258587 (=> res!1324585 e!2029871)))

(assert (=> b!3258587 (= res!1324585 (not ((_ is ElementMatch!10039) (regex!5280 lt!1104306))))))

(assert (=> b!3258587 (= e!2029876 e!2029871)))

(declare-fun b!3258588 () Bool)

(assert (=> b!3258588 (= e!2029874 (nullable!3408 (regex!5280 lt!1104306)))))

(declare-fun b!3258589 () Bool)

(assert (=> b!3258589 (= e!2029870 (not (= (head!7105 lt!1104309) (c!549308 (regex!5280 lt!1104306)))))))

(declare-fun b!3258590 () Bool)

(assert (=> b!3258590 (= e!2029874 (matchR!4661 (derivativeStep!2961 (regex!5280 lt!1104306) (head!7105 lt!1104309)) (tail!5244 lt!1104309)))))

(assert (= (and d!901095 c!549399) b!3258588))

(assert (= (and d!901095 (not c!549399)) b!3258590))

(assert (= (and d!901095 c!549400) b!3258586))

(assert (= (and d!901095 (not c!549400)) b!3258580))

(assert (= (and b!3258580 c!549398) b!3258581))

(assert (= (and b!3258580 (not c!549398)) b!3258587))

(assert (= (and b!3258587 (not res!1324585)) b!3258583))

(assert (= (and b!3258583 res!1324584) b!3258585))

(assert (= (and b!3258585 res!1324581) b!3258578))

(assert (= (and b!3258578 res!1324587) b!3258582))

(assert (= (and b!3258583 (not res!1324582)) b!3258577))

(assert (= (and b!3258577 res!1324586) b!3258584))

(assert (= (and b!3258584 (not res!1324588)) b!3258579))

(assert (= (and b!3258579 (not res!1324583)) b!3258589))

(assert (= (or b!3258586 b!3258584 b!3258585) bm!235940))

(declare-fun m!3553773 () Bool)

(assert (=> b!3258588 m!3553773))

(assert (=> d!901095 m!3553407))

(declare-fun m!3553775 () Bool)

(assert (=> d!901095 m!3553775))

(assert (=> b!3258579 m!3553409))

(assert (=> b!3258579 m!3553409))

(assert (=> b!3258579 m!3553411))

(assert (=> b!3258578 m!3553409))

(assert (=> b!3258578 m!3553409))

(assert (=> b!3258578 m!3553411))

(assert (=> b!3258590 m!3553271))

(assert (=> b!3258590 m!3553271))

(declare-fun m!3553777 () Bool)

(assert (=> b!3258590 m!3553777))

(assert (=> b!3258590 m!3553409))

(assert (=> b!3258590 m!3553777))

(assert (=> b!3258590 m!3553409))

(declare-fun m!3553779 () Bool)

(assert (=> b!3258590 m!3553779))

(assert (=> b!3258582 m!3553271))

(assert (=> bm!235940 m!3553407))

(assert (=> b!3258589 m!3553271))

(assert (=> b!3258205 d!901095))

(declare-fun d!901097 () Bool)

(assert (=> d!901097 (= (get!11611 lt!1104291) (v!35909 lt!1104291))))

(assert (=> b!3258205 d!901097))

(declare-fun d!901099 () Bool)

(declare-fun res!1324589 () Bool)

(declare-fun e!2029877 () Bool)

(assert (=> d!901099 (=> (not res!1324589) (not e!2029877))))

(assert (=> d!901099 (= res!1324589 (not (isEmpty!20525 (originalCharacters!5994 (h!41844 tokens!494)))))))

(assert (=> d!901099 (= (inv!49337 (h!41844 tokens!494)) e!2029877)))

(declare-fun b!3258591 () Bool)

(declare-fun res!1324590 () Bool)

(assert (=> b!3258591 (=> (not res!1324590) (not e!2029877))))

(assert (=> b!3258591 (= res!1324590 (= (originalCharacters!5994 (h!41844 tokens!494)) (list!13013 (dynLambda!14846 (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (value!170940 (h!41844 tokens!494))))))))

(declare-fun b!3258592 () Bool)

(assert (=> b!3258592 (= e!2029877 (= (size!27478 (h!41844 tokens!494)) (size!27479 (originalCharacters!5994 (h!41844 tokens!494)))))))

(assert (= (and d!901099 res!1324589) b!3258591))

(assert (= (and b!3258591 res!1324590) b!3258592))

(declare-fun b_lambda!89985 () Bool)

(assert (=> (not b_lambda!89985) (not b!3258591)))

(assert (=> b!3258591 t!245724))

(declare-fun b_and!219927 () Bool)

(assert (= b_and!219921 (and (=> t!245724 result!206640) b_and!219927)))

(assert (=> b!3258591 t!245726))

(declare-fun b_and!219929 () Bool)

(assert (= b_and!219923 (and (=> t!245726 result!206644) b_and!219929)))

(assert (=> b!3258591 t!245728))

(declare-fun b_and!219931 () Bool)

(assert (= b_and!219925 (and (=> t!245728 result!206646) b_and!219931)))

(declare-fun m!3553781 () Bool)

(assert (=> d!901099 m!3553781))

(assert (=> b!3258591 m!3553635))

(assert (=> b!3258591 m!3553635))

(declare-fun m!3553783 () Bool)

(assert (=> b!3258591 m!3553783))

(declare-fun m!3553785 () Bool)

(assert (=> b!3258592 m!3553785))

(assert (=> b!3258204 d!901099))

(declare-fun d!901101 () Bool)

(declare-fun lt!1104468 () Int)

(assert (=> d!901101 (>= lt!1104468 0)))

(declare-fun e!2029880 () Int)

(assert (=> d!901101 (= lt!1104468 e!2029880)))

(declare-fun c!549403 () Bool)

(assert (=> d!901101 (= c!549403 ((_ is Nil!36423) lt!1104312))))

(assert (=> d!901101 (= (size!27479 lt!1104312) lt!1104468)))

(declare-fun b!3258597 () Bool)

(assert (=> b!3258597 (= e!2029880 0)))

(declare-fun b!3258598 () Bool)

(assert (=> b!3258598 (= e!2029880 (+ 1 (size!27479 (t!245712 lt!1104312))))))

(assert (= (and d!901101 c!549403) b!3258597))

(assert (= (and d!901101 (not c!549403)) b!3258598))

(declare-fun m!3553787 () Bool)

(assert (=> b!3258598 m!3553787))

(assert (=> b!3258183 d!901101))

(declare-fun d!901103 () Bool)

(declare-fun isEmpty!20536 (Option!7248) Bool)

(assert (=> d!901103 (= (isDefined!5614 lt!1104296) (not (isEmpty!20536 lt!1104296)))))

(declare-fun bs!545229 () Bool)

(assert (= bs!545229 d!901103))

(declare-fun m!3553789 () Bool)

(assert (=> bs!545229 m!3553789))

(assert (=> b!3258183 d!901103))

(declare-fun d!901105 () Bool)

(assert (=> d!901105 (= (isDefined!5614 lt!1104291) (not (isEmpty!20536 lt!1104291)))))

(declare-fun bs!545230 () Bool)

(assert (= bs!545230 d!901105))

(declare-fun m!3553791 () Bool)

(assert (=> bs!545230 m!3553791))

(assert (=> b!3258183 d!901105))

(declare-fun b!3258611 () Bool)

(declare-fun lt!1104477 () Unit!51144)

(declare-fun lt!1104475 () Unit!51144)

(assert (=> b!3258611 (= lt!1104477 lt!1104475)))

(assert (=> b!3258611 (rulesInvariant!4266 thiss!18206 (t!245714 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!360 (LexerInterface!4869 Rule!10360 List!36549) Unit!51144)

(assert (=> b!3258611 (= lt!1104475 (lemmaInvariantOnRulesThenOnTail!360 thiss!18206 (h!41845 rules!2135) (t!245714 rules!2135)))))

(declare-fun e!2029892 () Option!7248)

(assert (=> b!3258611 (= e!2029892 (getRuleFromTag!971 thiss!18206 (t!245714 rules!2135) (tag!5816 (rule!7752 (h!41844 tokens!494)))))))

(declare-fun b!3258612 () Bool)

(declare-fun e!2029890 () Bool)

(declare-fun e!2029891 () Bool)

(assert (=> b!3258612 (= e!2029890 e!2029891)))

(declare-fun res!1324595 () Bool)

(assert (=> b!3258612 (=> (not res!1324595) (not e!2029891))))

(declare-fun lt!1104476 () Option!7248)

(declare-fun contains!6556 (List!36549 Rule!10360) Bool)

(assert (=> b!3258612 (= res!1324595 (contains!6556 rules!2135 (get!11611 lt!1104476)))))

(declare-fun b!3258613 () Bool)

(assert (=> b!3258613 (= e!2029892 None!7247)))

(declare-fun b!3258614 () Bool)

(declare-fun e!2029889 () Option!7248)

(assert (=> b!3258614 (= e!2029889 (Some!7247 (h!41845 rules!2135)))))

(declare-fun b!3258615 () Bool)

(assert (=> b!3258615 (= e!2029889 e!2029892)))

(declare-fun c!549409 () Bool)

(assert (=> b!3258615 (= c!549409 (and ((_ is Cons!36425) rules!2135) (not (= (tag!5816 (h!41845 rules!2135)) (tag!5816 (rule!7752 (h!41844 tokens!494)))))))))

(declare-fun b!3258616 () Bool)

(assert (=> b!3258616 (= e!2029891 (= (tag!5816 (get!11611 lt!1104476)) (tag!5816 (rule!7752 (h!41844 tokens!494)))))))

(declare-fun d!901107 () Bool)

(assert (=> d!901107 e!2029890))

(declare-fun res!1324596 () Bool)

(assert (=> d!901107 (=> res!1324596 e!2029890)))

(assert (=> d!901107 (= res!1324596 (isEmpty!20536 lt!1104476))))

(assert (=> d!901107 (= lt!1104476 e!2029889)))

(declare-fun c!549408 () Bool)

(assert (=> d!901107 (= c!549408 (and ((_ is Cons!36425) rules!2135) (= (tag!5816 (h!41845 rules!2135)) (tag!5816 (rule!7752 (h!41844 tokens!494))))))))

(assert (=> d!901107 (rulesInvariant!4266 thiss!18206 rules!2135)))

(assert (=> d!901107 (= (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 (h!41844 tokens!494)))) lt!1104476)))

(assert (= (and d!901107 c!549408) b!3258614))

(assert (= (and d!901107 (not c!549408)) b!3258615))

(assert (= (and b!3258615 c!549409) b!3258611))

(assert (= (and b!3258615 (not c!549409)) b!3258613))

(assert (= (and d!901107 (not res!1324596)) b!3258612))

(assert (= (and b!3258612 res!1324595) b!3258616))

(declare-fun m!3553793 () Bool)

(assert (=> b!3258611 m!3553793))

(declare-fun m!3553795 () Bool)

(assert (=> b!3258611 m!3553795))

(declare-fun m!3553797 () Bool)

(assert (=> b!3258611 m!3553797))

(declare-fun m!3553799 () Bool)

(assert (=> b!3258612 m!3553799))

(assert (=> b!3258612 m!3553799))

(declare-fun m!3553801 () Bool)

(assert (=> b!3258612 m!3553801))

(assert (=> b!3258616 m!3553799))

(declare-fun m!3553803 () Bool)

(assert (=> d!901107 m!3553803))

(assert (=> d!901107 m!3553193))

(assert (=> b!3258183 d!901107))

(declare-fun d!901109 () Bool)

(assert (=> d!901109 (= (isEmpty!20525 (getSuffix!1404 lt!1104312 lt!1104312)) ((_ is Nil!36423) (getSuffix!1404 lt!1104312 lt!1104312)))))

(assert (=> b!3258183 d!901109))

(declare-fun d!901111 () Bool)

(assert (=> d!901111 (= (maxPrefixOneRule!1634 thiss!18206 (rule!7752 (h!41844 tokens!494)) lt!1104312) (Some!7246 (tuple2!35881 (Token!9927 (apply!8332 (transformation!5280 (rule!7752 (h!41844 tokens!494))) (seqFromList!3624 lt!1104312)) (rule!7752 (h!41844 tokens!494)) (size!27479 lt!1104312) lt!1104312) Nil!36423)))))

(declare-fun lt!1104480 () Unit!51144)

(declare-fun choose!18942 (LexerInterface!4869 List!36549 List!36547 List!36547 List!36547 Rule!10360) Unit!51144)

(assert (=> d!901111 (= lt!1104480 (choose!18942 thiss!18206 rules!2135 lt!1104312 lt!1104312 Nil!36423 (rule!7752 (h!41844 tokens!494))))))

(assert (=> d!901111 (not (isEmpty!20526 rules!2135))))

(assert (=> d!901111 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!745 thiss!18206 rules!2135 lt!1104312 lt!1104312 Nil!36423 (rule!7752 (h!41844 tokens!494))) lt!1104480)))

(declare-fun bs!545231 () Bool)

(assert (= bs!545231 d!901111))

(assert (=> bs!545231 m!3553263))

(assert (=> bs!545231 m!3553285))

(assert (=> bs!545231 m!3553199))

(declare-fun m!3553805 () Bool)

(assert (=> bs!545231 m!3553805))

(assert (=> bs!545231 m!3553295))

(assert (=> bs!545231 m!3553199))

(declare-fun m!3553807 () Bool)

(assert (=> bs!545231 m!3553807))

(assert (=> b!3258183 d!901111))

(declare-fun b!3258617 () Bool)

(declare-fun lt!1104483 () Unit!51144)

(declare-fun lt!1104481 () Unit!51144)

(assert (=> b!3258617 (= lt!1104483 lt!1104481)))

(assert (=> b!3258617 (rulesInvariant!4266 thiss!18206 (t!245714 rules!2135))))

(assert (=> b!3258617 (= lt!1104481 (lemmaInvariantOnRulesThenOnTail!360 thiss!18206 (h!41845 rules!2135) (t!245714 rules!2135)))))

(declare-fun e!2029896 () Option!7248)

(assert (=> b!3258617 (= e!2029896 (getRuleFromTag!971 thiss!18206 (t!245714 rules!2135) (tag!5816 (rule!7752 separatorToken!241))))))

(declare-fun b!3258618 () Bool)

(declare-fun e!2029894 () Bool)

(declare-fun e!2029895 () Bool)

(assert (=> b!3258618 (= e!2029894 e!2029895)))

(declare-fun res!1324597 () Bool)

(assert (=> b!3258618 (=> (not res!1324597) (not e!2029895))))

(declare-fun lt!1104482 () Option!7248)

(assert (=> b!3258618 (= res!1324597 (contains!6556 rules!2135 (get!11611 lt!1104482)))))

(declare-fun b!3258619 () Bool)

(assert (=> b!3258619 (= e!2029896 None!7247)))

(declare-fun b!3258620 () Bool)

(declare-fun e!2029893 () Option!7248)

(assert (=> b!3258620 (= e!2029893 (Some!7247 (h!41845 rules!2135)))))

(declare-fun b!3258621 () Bool)

(assert (=> b!3258621 (= e!2029893 e!2029896)))

(declare-fun c!549411 () Bool)

(assert (=> b!3258621 (= c!549411 (and ((_ is Cons!36425) rules!2135) (not (= (tag!5816 (h!41845 rules!2135)) (tag!5816 (rule!7752 separatorToken!241))))))))

(declare-fun b!3258622 () Bool)

(assert (=> b!3258622 (= e!2029895 (= (tag!5816 (get!11611 lt!1104482)) (tag!5816 (rule!7752 separatorToken!241))))))

(declare-fun d!901113 () Bool)

(assert (=> d!901113 e!2029894))

(declare-fun res!1324598 () Bool)

(assert (=> d!901113 (=> res!1324598 e!2029894)))

(assert (=> d!901113 (= res!1324598 (isEmpty!20536 lt!1104482))))

(assert (=> d!901113 (= lt!1104482 e!2029893)))

(declare-fun c!549410 () Bool)

(assert (=> d!901113 (= c!549410 (and ((_ is Cons!36425) rules!2135) (= (tag!5816 (h!41845 rules!2135)) (tag!5816 (rule!7752 separatorToken!241)))))))

(assert (=> d!901113 (rulesInvariant!4266 thiss!18206 rules!2135)))

(assert (=> d!901113 (= (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 separatorToken!241))) lt!1104482)))

(assert (= (and d!901113 c!549410) b!3258620))

(assert (= (and d!901113 (not c!549410)) b!3258621))

(assert (= (and b!3258621 c!549411) b!3258617))

(assert (= (and b!3258621 (not c!549411)) b!3258619))

(assert (= (and d!901113 (not res!1324598)) b!3258618))

(assert (= (and b!3258618 res!1324597) b!3258622))

(assert (=> b!3258617 m!3553793))

(assert (=> b!3258617 m!3553795))

(declare-fun m!3553809 () Bool)

(assert (=> b!3258617 m!3553809))

(declare-fun m!3553811 () Bool)

(assert (=> b!3258618 m!3553811))

(assert (=> b!3258618 m!3553811))

(declare-fun m!3553813 () Bool)

(assert (=> b!3258618 m!3553813))

(assert (=> b!3258622 m!3553811))

(declare-fun m!3553815 () Bool)

(assert (=> d!901113 m!3553815))

(assert (=> d!901113 m!3553193))

(assert (=> b!3258183 d!901113))

(declare-fun d!901115 () Bool)

(declare-fun lt!1104486 () Bool)

(assert (=> d!901115 (= lt!1104486 (select (content!4934 (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241)))) lt!1104303))))

(declare-fun e!2029901 () Bool)

(assert (=> d!901115 (= lt!1104486 e!2029901)))

(declare-fun res!1324604 () Bool)

(assert (=> d!901115 (=> (not res!1324604) (not e!2029901))))

(assert (=> d!901115 (= res!1324604 ((_ is Cons!36423) (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241)))))))

(assert (=> d!901115 (= (contains!6553 (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241))) lt!1104303) lt!1104486)))

(declare-fun b!3258627 () Bool)

(declare-fun e!2029902 () Bool)

(assert (=> b!3258627 (= e!2029901 e!2029902)))

(declare-fun res!1324603 () Bool)

(assert (=> b!3258627 (=> res!1324603 e!2029902)))

(assert (=> b!3258627 (= res!1324603 (= (h!41843 (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241)))) lt!1104303))))

(declare-fun b!3258628 () Bool)

(assert (=> b!3258628 (= e!2029902 (contains!6553 (t!245712 (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241)))) lt!1104303))))

(assert (= (and d!901115 res!1324604) b!3258627))

(assert (= (and b!3258627 (not res!1324603)) b!3258628))

(assert (=> d!901115 m!3553255))

(declare-fun m!3553817 () Bool)

(assert (=> d!901115 m!3553817))

(declare-fun m!3553819 () Bool)

(assert (=> d!901115 m!3553819))

(declare-fun m!3553821 () Bool)

(assert (=> b!3258628 m!3553821))

(assert (=> b!3258183 d!901115))

(declare-fun d!901117 () Bool)

(declare-fun e!2029905 () Bool)

(assert (=> d!901117 e!2029905))

(declare-fun res!1324609 () Bool)

(assert (=> d!901117 (=> (not res!1324609) (not e!2029905))))

(assert (=> d!901117 (= res!1324609 (isDefined!5614 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 (h!41844 tokens!494))))))))

(declare-fun lt!1104489 () Unit!51144)

(declare-fun choose!18943 (LexerInterface!4869 List!36549 List!36547 Token!9926) Unit!51144)

(assert (=> d!901117 (= lt!1104489 (choose!18943 thiss!18206 rules!2135 lt!1104312 (h!41844 tokens!494)))))

(assert (=> d!901117 (rulesInvariant!4266 thiss!18206 rules!2135)))

(assert (=> d!901117 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!971 thiss!18206 rules!2135 lt!1104312 (h!41844 tokens!494)) lt!1104489)))

(declare-fun b!3258633 () Bool)

(declare-fun res!1324610 () Bool)

(assert (=> b!3258633 (=> (not res!1324610) (not e!2029905))))

(assert (=> b!3258633 (= res!1324610 (matchR!4661 (regex!5280 (get!11611 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 (h!41844 tokens!494)))))) (list!13013 (charsOf!3296 (h!41844 tokens!494)))))))

(declare-fun b!3258634 () Bool)

(assert (=> b!3258634 (= e!2029905 (= (rule!7752 (h!41844 tokens!494)) (get!11611 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 (h!41844 tokens!494)))))))))

(assert (= (and d!901117 res!1324609) b!3258633))

(assert (= (and b!3258633 res!1324610) b!3258634))

(assert (=> d!901117 m!3553279))

(assert (=> d!901117 m!3553279))

(declare-fun m!3553823 () Bool)

(assert (=> d!901117 m!3553823))

(declare-fun m!3553825 () Bool)

(assert (=> d!901117 m!3553825))

(assert (=> d!901117 m!3553193))

(assert (=> b!3258633 m!3553249))

(assert (=> b!3258633 m!3553251))

(assert (=> b!3258633 m!3553279))

(assert (=> b!3258633 m!3553279))

(declare-fun m!3553827 () Bool)

(assert (=> b!3258633 m!3553827))

(assert (=> b!3258633 m!3553251))

(declare-fun m!3553829 () Bool)

(assert (=> b!3258633 m!3553829))

(assert (=> b!3258633 m!3553249))

(assert (=> b!3258634 m!3553279))

(assert (=> b!3258634 m!3553279))

(assert (=> b!3258634 m!3553827))

(assert (=> b!3258183 d!901117))

(declare-fun d!901119 () Bool)

(assert (=> d!901119 (isEmpty!20525 (getSuffix!1404 lt!1104312 lt!1104312))))

(declare-fun lt!1104492 () Unit!51144)

(declare-fun choose!18944 (List!36547) Unit!51144)

(assert (=> d!901119 (= lt!1104492 (choose!18944 lt!1104312))))

(assert (=> d!901119 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!68 lt!1104312) lt!1104492)))

(declare-fun bs!545232 () Bool)

(assert (= bs!545232 d!901119))

(assert (=> bs!545232 m!3553275))

(assert (=> bs!545232 m!3553275))

(assert (=> bs!545232 m!3553277))

(declare-fun m!3553831 () Bool)

(assert (=> bs!545232 m!3553831))

(assert (=> b!3258183 d!901119))

(declare-fun d!901121 () Bool)

(declare-fun dynLambda!14848 (Int BalanceConc!21484) TokenValue!5510)

(assert (=> d!901121 (= (apply!8332 (transformation!5280 (rule!7752 (h!41844 tokens!494))) lt!1104290) (dynLambda!14848 (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) lt!1104290))))

(declare-fun b_lambda!89987 () Bool)

(assert (=> (not b_lambda!89987) (not d!901121)))

(declare-fun t!245739 () Bool)

(declare-fun tb!164033 () Bool)

(assert (=> (and b!3258182 (= (toValue!7396 (transformation!5280 (h!41845 rules!2135))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245739) tb!164033))

(declare-fun result!206654 () Bool)

(assert (=> tb!164033 (= result!206654 (inv!21 (dynLambda!14848 (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) lt!1104290)))))

(declare-fun m!3553833 () Bool)

(assert (=> tb!164033 m!3553833))

(assert (=> d!901121 t!245739))

(declare-fun b_and!219933 () Bool)

(assert (= b_and!219891 (and (=> t!245739 result!206654) b_and!219933)))

(declare-fun t!245741 () Bool)

(declare-fun tb!164035 () Bool)

(assert (=> (and b!3258189 (= (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245741) tb!164035))

(declare-fun result!206658 () Bool)

(assert (= result!206658 result!206654))

(assert (=> d!901121 t!245741))

(declare-fun b_and!219935 () Bool)

(assert (= b_and!219895 (and (=> t!245741 result!206658) b_and!219935)))

(declare-fun t!245743 () Bool)

(declare-fun tb!164037 () Bool)

(assert (=> (and b!3258193 (= (toValue!7396 (transformation!5280 (rule!7752 separatorToken!241))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245743) tb!164037))

(declare-fun result!206660 () Bool)

(assert (= result!206660 result!206654))

(assert (=> d!901121 t!245743))

(declare-fun b_and!219937 () Bool)

(assert (= b_and!219899 (and (=> t!245743 result!206660) b_and!219937)))

(declare-fun m!3553835 () Bool)

(assert (=> d!901121 m!3553835))

(assert (=> b!3258183 d!901121))

(declare-fun d!901123 () Bool)

(assert (=> d!901123 (= (head!7105 lt!1104309) (h!41843 lt!1104309))))

(assert (=> b!3258183 d!901123))

(declare-fun d!901125 () Bool)

(assert (=> d!901125 (rulesProduceIndividualToken!2361 thiss!18206 rules!2135 (h!41844 tokens!494))))

(declare-fun lt!1104496 () Unit!51144)

(declare-fun choose!18945 (LexerInterface!4869 List!36549 List!36548 Token!9926) Unit!51144)

(assert (=> d!901125 (= lt!1104496 (choose!18945 thiss!18206 rules!2135 tokens!494 (h!41844 tokens!494)))))

(assert (=> d!901125 (not (isEmpty!20526 rules!2135))))

(assert (=> d!901125 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!894 thiss!18206 rules!2135 tokens!494 (h!41844 tokens!494)) lt!1104496)))

(declare-fun bs!545235 () Bool)

(assert (= bs!545235 d!901125))

(assert (=> bs!545235 m!3553293))

(declare-fun m!3553845 () Bool)

(assert (=> bs!545235 m!3553845))

(assert (=> bs!545235 m!3553295))

(assert (=> b!3258183 d!901125))

(declare-fun b!3258671 () Bool)

(declare-fun res!1324633 () Bool)

(declare-fun e!2029931 () Bool)

(assert (=> b!3258671 (=> (not res!1324633) (not e!2029931))))

(declare-fun lt!1104509 () Option!7247)

(declare-fun get!11613 (Option!7247) tuple2!35880)

(assert (=> b!3258671 (= res!1324633 (= (rule!7752 (_1!21074 (get!11613 lt!1104509))) (rule!7752 (h!41844 tokens!494))))))

(declare-fun b!3258672 () Bool)

(declare-fun res!1324629 () Bool)

(assert (=> b!3258672 (=> (not res!1324629) (not e!2029931))))

(assert (=> b!3258672 (= res!1324629 (= (++!8786 (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104509)))) (_2!21074 (get!11613 lt!1104509))) lt!1104312))))

(declare-fun b!3258673 () Bool)

(declare-fun res!1324630 () Bool)

(assert (=> b!3258673 (=> (not res!1324630) (not e!2029931))))

(assert (=> b!3258673 (= res!1324630 (< (size!27479 (_2!21074 (get!11613 lt!1104509))) (size!27479 lt!1104312)))))

(declare-fun b!3258674 () Bool)

(declare-fun e!2029930 () Option!7247)

(declare-datatypes ((tuple2!35888 0))(
  ( (tuple2!35889 (_1!21078 List!36547) (_2!21078 List!36547)) )
))
(declare-fun lt!1104508 () tuple2!35888)

(assert (=> b!3258674 (= e!2029930 (Some!7246 (tuple2!35881 (Token!9927 (apply!8332 (transformation!5280 (rule!7752 (h!41844 tokens!494))) (seqFromList!3624 (_1!21078 lt!1104508))) (rule!7752 (h!41844 tokens!494)) (size!27484 (seqFromList!3624 (_1!21078 lt!1104508))) (_1!21078 lt!1104508)) (_2!21078 lt!1104508))))))

(declare-fun lt!1104510 () Unit!51144)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!814 (Regex!10039 List!36547) Unit!51144)

(assert (=> b!3258674 (= lt!1104510 (longestMatchIsAcceptedByMatchOrIsEmpty!814 (regex!5280 (rule!7752 (h!41844 tokens!494))) lt!1104312))))

(declare-fun res!1324632 () Bool)

(declare-fun findLongestMatchInner!841 (Regex!10039 List!36547 Int List!36547 List!36547 Int) tuple2!35888)

(assert (=> b!3258674 (= res!1324632 (isEmpty!20525 (_1!21078 (findLongestMatchInner!841 (regex!5280 (rule!7752 (h!41844 tokens!494))) Nil!36423 (size!27479 Nil!36423) lt!1104312 lt!1104312 (size!27479 lt!1104312)))))))

(declare-fun e!2029932 () Bool)

(assert (=> b!3258674 (=> res!1324632 e!2029932)))

(assert (=> b!3258674 e!2029932))

(declare-fun lt!1104507 () Unit!51144)

(assert (=> b!3258674 (= lt!1104507 lt!1104510)))

(declare-fun lt!1104511 () Unit!51144)

(declare-fun lemmaSemiInverse!1187 (TokenValueInjection!10448 BalanceConc!21484) Unit!51144)

(assert (=> b!3258674 (= lt!1104511 (lemmaSemiInverse!1187 (transformation!5280 (rule!7752 (h!41844 tokens!494))) (seqFromList!3624 (_1!21078 lt!1104508))))))

(declare-fun b!3258675 () Bool)

(assert (=> b!3258675 (= e!2029931 (= (size!27478 (_1!21074 (get!11613 lt!1104509))) (size!27479 (originalCharacters!5994 (_1!21074 (get!11613 lt!1104509))))))))

(declare-fun b!3258676 () Bool)

(declare-fun e!2029929 () Bool)

(assert (=> b!3258676 (= e!2029929 e!2029931)))

(declare-fun res!1324631 () Bool)

(assert (=> b!3258676 (=> (not res!1324631) (not e!2029931))))

(assert (=> b!3258676 (= res!1324631 (matchR!4661 (regex!5280 (rule!7752 (h!41844 tokens!494))) (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104509))))))))

(declare-fun b!3258677 () Bool)

(assert (=> b!3258677 (= e!2029930 None!7246)))

(declare-fun d!901131 () Bool)

(assert (=> d!901131 e!2029929))

(declare-fun res!1324628 () Bool)

(assert (=> d!901131 (=> res!1324628 e!2029929)))

(declare-fun isEmpty!20537 (Option!7247) Bool)

(assert (=> d!901131 (= res!1324628 (isEmpty!20537 lt!1104509))))

(assert (=> d!901131 (= lt!1104509 e!2029930)))

(declare-fun c!549414 () Bool)

(assert (=> d!901131 (= c!549414 (isEmpty!20525 (_1!21078 lt!1104508)))))

(declare-fun findLongestMatch!756 (Regex!10039 List!36547) tuple2!35888)

(assert (=> d!901131 (= lt!1104508 (findLongestMatch!756 (regex!5280 (rule!7752 (h!41844 tokens!494))) lt!1104312))))

(declare-fun ruleValid!1662 (LexerInterface!4869 Rule!10360) Bool)

(assert (=> d!901131 (ruleValid!1662 thiss!18206 (rule!7752 (h!41844 tokens!494)))))

(assert (=> d!901131 (= (maxPrefixOneRule!1634 thiss!18206 (rule!7752 (h!41844 tokens!494)) lt!1104312) lt!1104509)))

(declare-fun b!3258678 () Bool)

(assert (=> b!3258678 (= e!2029932 (matchR!4661 (regex!5280 (rule!7752 (h!41844 tokens!494))) (_1!21078 (findLongestMatchInner!841 (regex!5280 (rule!7752 (h!41844 tokens!494))) Nil!36423 (size!27479 Nil!36423) lt!1104312 lt!1104312 (size!27479 lt!1104312)))))))

(declare-fun b!3258679 () Bool)

(declare-fun res!1324634 () Bool)

(assert (=> b!3258679 (=> (not res!1324634) (not e!2029931))))

(assert (=> b!3258679 (= res!1324634 (= (value!170940 (_1!21074 (get!11613 lt!1104509))) (apply!8332 (transformation!5280 (rule!7752 (_1!21074 (get!11613 lt!1104509)))) (seqFromList!3624 (originalCharacters!5994 (_1!21074 (get!11613 lt!1104509)))))))))

(assert (= (and d!901131 c!549414) b!3258677))

(assert (= (and d!901131 (not c!549414)) b!3258674))

(assert (= (and b!3258674 (not res!1324632)) b!3258678))

(assert (= (and d!901131 (not res!1324628)) b!3258676))

(assert (= (and b!3258676 res!1324631) b!3258672))

(assert (= (and b!3258672 res!1324629) b!3258673))

(assert (= (and b!3258673 res!1324630) b!3258671))

(assert (= (and b!3258671 res!1324633) b!3258679))

(assert (= (and b!3258679 res!1324634) b!3258675))

(declare-fun m!3553847 () Bool)

(assert (=> b!3258678 m!3553847))

(assert (=> b!3258678 m!3553285))

(assert (=> b!3258678 m!3553847))

(assert (=> b!3258678 m!3553285))

(declare-fun m!3553849 () Bool)

(assert (=> b!3258678 m!3553849))

(declare-fun m!3553851 () Bool)

(assert (=> b!3258678 m!3553851))

(declare-fun m!3553853 () Bool)

(assert (=> b!3258674 m!3553853))

(declare-fun m!3553855 () Bool)

(assert (=> b!3258674 m!3553855))

(declare-fun m!3553857 () Bool)

(assert (=> b!3258674 m!3553857))

(assert (=> b!3258674 m!3553847))

(assert (=> b!3258674 m!3553285))

(assert (=> b!3258674 m!3553849))

(assert (=> b!3258674 m!3553855))

(declare-fun m!3553859 () Bool)

(assert (=> b!3258674 m!3553859))

(declare-fun m!3553861 () Bool)

(assert (=> b!3258674 m!3553861))

(assert (=> b!3258674 m!3553847))

(assert (=> b!3258674 m!3553285))

(assert (=> b!3258674 m!3553855))

(assert (=> b!3258674 m!3553855))

(declare-fun m!3553863 () Bool)

(assert (=> b!3258674 m!3553863))

(declare-fun m!3553865 () Bool)

(assert (=> d!901131 m!3553865))

(declare-fun m!3553867 () Bool)

(assert (=> d!901131 m!3553867))

(declare-fun m!3553869 () Bool)

(assert (=> d!901131 m!3553869))

(declare-fun m!3553871 () Bool)

(assert (=> d!901131 m!3553871))

(declare-fun m!3553873 () Bool)

(assert (=> b!3258679 m!3553873))

(declare-fun m!3553875 () Bool)

(assert (=> b!3258679 m!3553875))

(assert (=> b!3258679 m!3553875))

(declare-fun m!3553877 () Bool)

(assert (=> b!3258679 m!3553877))

(assert (=> b!3258673 m!3553873))

(declare-fun m!3553879 () Bool)

(assert (=> b!3258673 m!3553879))

(assert (=> b!3258673 m!3553285))

(assert (=> b!3258671 m!3553873))

(assert (=> b!3258675 m!3553873))

(declare-fun m!3553881 () Bool)

(assert (=> b!3258675 m!3553881))

(assert (=> b!3258676 m!3553873))

(declare-fun m!3553883 () Bool)

(assert (=> b!3258676 m!3553883))

(assert (=> b!3258676 m!3553883))

(declare-fun m!3553885 () Bool)

(assert (=> b!3258676 m!3553885))

(assert (=> b!3258676 m!3553885))

(declare-fun m!3553887 () Bool)

(assert (=> b!3258676 m!3553887))

(assert (=> b!3258672 m!3553873))

(assert (=> b!3258672 m!3553883))

(assert (=> b!3258672 m!3553883))

(assert (=> b!3258672 m!3553885))

(assert (=> b!3258672 m!3553885))

(declare-fun m!3553889 () Bool)

(assert (=> b!3258672 m!3553889))

(assert (=> b!3258183 d!901131))

(declare-fun d!901133 () Bool)

(declare-fun lt!1104514 () List!36547)

(assert (=> d!901133 (= (++!8786 lt!1104312 lt!1104514) lt!1104312)))

(declare-fun e!2029935 () List!36547)

(assert (=> d!901133 (= lt!1104514 e!2029935)))

(declare-fun c!549417 () Bool)

(assert (=> d!901133 (= c!549417 ((_ is Cons!36423) lt!1104312))))

(assert (=> d!901133 (>= (size!27479 lt!1104312) (size!27479 lt!1104312))))

(assert (=> d!901133 (= (getSuffix!1404 lt!1104312 lt!1104312) lt!1104514)))

(declare-fun b!3258684 () Bool)

(assert (=> b!3258684 (= e!2029935 (getSuffix!1404 (tail!5244 lt!1104312) (t!245712 lt!1104312)))))

(declare-fun b!3258685 () Bool)

(assert (=> b!3258685 (= e!2029935 lt!1104312)))

(assert (= (and d!901133 c!549417) b!3258684))

(assert (= (and d!901133 (not c!549417)) b!3258685))

(declare-fun m!3553891 () Bool)

(assert (=> d!901133 m!3553891))

(assert (=> d!901133 m!3553285))

(assert (=> d!901133 m!3553285))

(assert (=> b!3258684 m!3553599))

(assert (=> b!3258684 m!3553599))

(declare-fun m!3553893 () Bool)

(assert (=> b!3258684 m!3553893))

(assert (=> b!3258183 d!901133))

(declare-fun d!901135 () Bool)

(declare-fun e!2029936 () Bool)

(assert (=> d!901135 e!2029936))

(declare-fun res!1324635 () Bool)

(assert (=> d!901135 (=> (not res!1324635) (not e!2029936))))

(assert (=> d!901135 (= res!1324635 (isDefined!5614 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 separatorToken!241)))))))

(declare-fun lt!1104515 () Unit!51144)

(assert (=> d!901135 (= lt!1104515 (choose!18943 thiss!18206 rules!2135 lt!1104309 separatorToken!241))))

(assert (=> d!901135 (rulesInvariant!4266 thiss!18206 rules!2135)))

(assert (=> d!901135 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!971 thiss!18206 rules!2135 lt!1104309 separatorToken!241) lt!1104515)))

(declare-fun b!3258686 () Bool)

(declare-fun res!1324636 () Bool)

(assert (=> b!3258686 (=> (not res!1324636) (not e!2029936))))

(assert (=> b!3258686 (= res!1324636 (matchR!4661 (regex!5280 (get!11611 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 separatorToken!241))))) (list!13013 (charsOf!3296 separatorToken!241))))))

(declare-fun b!3258687 () Bool)

(assert (=> b!3258687 (= e!2029936 (= (rule!7752 separatorToken!241) (get!11611 (getRuleFromTag!971 thiss!18206 rules!2135 (tag!5816 (rule!7752 separatorToken!241))))))))

(assert (= (and d!901135 res!1324635) b!3258686))

(assert (= (and b!3258686 res!1324636) b!3258687))

(assert (=> d!901135 m!3553267))

(assert (=> d!901135 m!3553267))

(declare-fun m!3553895 () Bool)

(assert (=> d!901135 m!3553895))

(declare-fun m!3553897 () Bool)

(assert (=> d!901135 m!3553897))

(assert (=> d!901135 m!3553193))

(assert (=> b!3258686 m!3553301))

(assert (=> b!3258686 m!3553303))

(assert (=> b!3258686 m!3553267))

(assert (=> b!3258686 m!3553267))

(declare-fun m!3553899 () Bool)

(assert (=> b!3258686 m!3553899))

(assert (=> b!3258686 m!3553303))

(declare-fun m!3553901 () Bool)

(assert (=> b!3258686 m!3553901))

(assert (=> b!3258686 m!3553301))

(assert (=> b!3258687 m!3553267))

(assert (=> b!3258687 m!3553267))

(assert (=> b!3258687 m!3553899))

(assert (=> b!3258183 d!901135))

(declare-fun b!3258704 () Bool)

(declare-fun e!2029947 () List!36547)

(declare-fun e!2029945 () List!36547)

(assert (=> b!3258704 (= e!2029947 e!2029945)))

(declare-fun c!549427 () Bool)

(assert (=> b!3258704 (= c!549427 ((_ is ElementMatch!10039) (regex!5280 (rule!7752 separatorToken!241))))))

(declare-fun bm!235949 () Bool)

(declare-fun call!235955 () List!36547)

(declare-fun c!549426 () Bool)

(assert (=> bm!235949 (= call!235955 (usedCharacters!582 (ite c!549426 (regOne!20591 (regex!5280 (rule!7752 separatorToken!241))) (regTwo!20590 (regex!5280 (rule!7752 separatorToken!241))))))))

(declare-fun d!901137 () Bool)

(declare-fun c!549428 () Bool)

(assert (=> d!901137 (= c!549428 (or ((_ is EmptyExpr!10039) (regex!5280 (rule!7752 separatorToken!241))) ((_ is EmptyLang!10039) (regex!5280 (rule!7752 separatorToken!241)))))))

(assert (=> d!901137 (= (usedCharacters!582 (regex!5280 (rule!7752 separatorToken!241))) e!2029947)))

(declare-fun b!3258705 () Bool)

(declare-fun e!2029948 () List!36547)

(declare-fun call!235954 () List!36547)

(assert (=> b!3258705 (= e!2029948 call!235954)))

(declare-fun b!3258706 () Bool)

(assert (=> b!3258706 (= e!2029947 Nil!36423)))

(declare-fun bm!235950 () Bool)

(declare-fun call!235957 () List!36547)

(assert (=> bm!235950 (= call!235954 (++!8786 (ite c!549426 call!235955 call!235957) (ite c!549426 call!235957 call!235955)))))

(declare-fun b!3258707 () Bool)

(declare-fun e!2029946 () List!36547)

(declare-fun call!235956 () List!36547)

(assert (=> b!3258707 (= e!2029946 call!235956)))

(declare-fun b!3258708 () Bool)

(assert (=> b!3258708 (= e!2029945 (Cons!36423 (c!549308 (regex!5280 (rule!7752 separatorToken!241))) Nil!36423))))

(declare-fun b!3258709 () Bool)

(declare-fun c!549429 () Bool)

(assert (=> b!3258709 (= c!549429 ((_ is Star!10039) (regex!5280 (rule!7752 separatorToken!241))))))

(assert (=> b!3258709 (= e!2029945 e!2029946)))

(declare-fun bm!235951 () Bool)

(assert (=> bm!235951 (= call!235956 (usedCharacters!582 (ite c!549429 (reg!10368 (regex!5280 (rule!7752 separatorToken!241))) (ite c!549426 (regTwo!20591 (regex!5280 (rule!7752 separatorToken!241))) (regOne!20590 (regex!5280 (rule!7752 separatorToken!241)))))))))

(declare-fun b!3258710 () Bool)

(assert (=> b!3258710 (= e!2029948 call!235954)))

(declare-fun b!3258711 () Bool)

(assert (=> b!3258711 (= e!2029946 e!2029948)))

(assert (=> b!3258711 (= c!549426 ((_ is Union!10039) (regex!5280 (rule!7752 separatorToken!241))))))

(declare-fun bm!235952 () Bool)

(assert (=> bm!235952 (= call!235957 call!235956)))

(assert (= (and d!901137 c!549428) b!3258706))

(assert (= (and d!901137 (not c!549428)) b!3258704))

(assert (= (and b!3258704 c!549427) b!3258708))

(assert (= (and b!3258704 (not c!549427)) b!3258709))

(assert (= (and b!3258709 c!549429) b!3258707))

(assert (= (and b!3258709 (not c!549429)) b!3258711))

(assert (= (and b!3258711 c!549426) b!3258710))

(assert (= (and b!3258711 (not c!549426)) b!3258705))

(assert (= (or b!3258710 b!3258705) bm!235952))

(assert (= (or b!3258710 b!3258705) bm!235949))

(assert (= (or b!3258710 b!3258705) bm!235950))

(assert (= (or b!3258707 bm!235952) bm!235951))

(declare-fun m!3553903 () Bool)

(assert (=> bm!235949 m!3553903))

(declare-fun m!3553905 () Bool)

(assert (=> bm!235950 m!3553905))

(declare-fun m!3553907 () Bool)

(assert (=> bm!235951 m!3553907))

(assert (=> b!3258183 d!901137))

(declare-fun d!901139 () Bool)

(assert (=> d!901139 (= (inv!49333 (tag!5816 (h!41845 rules!2135))) (= (mod (str.len (value!170939 (tag!5816 (h!41845 rules!2135)))) 2) 0))))

(assert (=> b!3258202 d!901139))

(declare-fun d!901141 () Bool)

(declare-fun res!1324637 () Bool)

(declare-fun e!2029949 () Bool)

(assert (=> d!901141 (=> (not res!1324637) (not e!2029949))))

(assert (=> d!901141 (= res!1324637 (semiInverseModEq!2177 (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toValue!7396 (transformation!5280 (h!41845 rules!2135)))))))

(assert (=> d!901141 (= (inv!49336 (transformation!5280 (h!41845 rules!2135))) e!2029949)))

(declare-fun b!3258712 () Bool)

(assert (=> b!3258712 (= e!2029949 (equivClasses!2076 (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toValue!7396 (transformation!5280 (h!41845 rules!2135)))))))

(assert (= (and d!901141 res!1324637) b!3258712))

(declare-fun m!3553909 () Bool)

(assert (=> d!901141 m!3553909))

(declare-fun m!3553911 () Bool)

(assert (=> b!3258712 m!3553911))

(assert (=> b!3258202 d!901141))

(declare-fun d!901143 () Bool)

(assert (=> d!901143 (= (inv!49333 (tag!5816 (rule!7752 (h!41844 tokens!494)))) (= (mod (str.len (value!170939 (tag!5816 (rule!7752 (h!41844 tokens!494))))) 2) 0))))

(assert (=> b!3258181 d!901143))

(declare-fun d!901145 () Bool)

(declare-fun res!1324638 () Bool)

(declare-fun e!2029950 () Bool)

(assert (=> d!901145 (=> (not res!1324638) (not e!2029950))))

(assert (=> d!901145 (= res!1324638 (semiInverseModEq!2177 (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))))))

(assert (=> d!901145 (= (inv!49336 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) e!2029950)))

(declare-fun b!3258713 () Bool)

(assert (=> b!3258713 (= e!2029950 (equivClasses!2076 (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))))))

(assert (= (and d!901145 res!1324638) b!3258713))

(declare-fun m!3553913 () Bool)

(assert (=> d!901145 m!3553913))

(declare-fun m!3553915 () Bool)

(assert (=> b!3258713 m!3553915))

(assert (=> b!3258181 d!901145))

(declare-fun d!901147 () Bool)

(assert (=> d!901147 (not (contains!6553 (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494)))) lt!1104303))))

(declare-fun lt!1104524 () Unit!51144)

(declare-fun choose!18946 (LexerInterface!4869 List!36549 List!36549 Rule!10360 Rule!10360 C!20264) Unit!51144)

(assert (=> d!901147 (= lt!1104524 (choose!18946 thiss!18206 rules!2135 rules!2135 (rule!7752 (h!41844 tokens!494)) (rule!7752 separatorToken!241) lt!1104303))))

(assert (=> d!901147 (rulesInvariant!4266 thiss!18206 rules!2135)))

(assert (=> d!901147 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!186 thiss!18206 rules!2135 rules!2135 (rule!7752 (h!41844 tokens!494)) (rule!7752 separatorToken!241) lt!1104303) lt!1104524)))

(declare-fun bs!545236 () Bool)

(assert (= bs!545236 d!901147))

(assert (=> bs!545236 m!3553225))

(assert (=> bs!545236 m!3553225))

(assert (=> bs!545236 m!3553227))

(declare-fun m!3553917 () Bool)

(assert (=> bs!545236 m!3553917))

(assert (=> bs!545236 m!3553193))

(assert (=> b!3258201 d!901147))

(declare-fun b!3258723 () Bool)

(declare-fun e!2029959 () List!36547)

(declare-fun e!2029957 () List!36547)

(assert (=> b!3258723 (= e!2029959 e!2029957)))

(declare-fun c!549432 () Bool)

(assert (=> b!3258723 (= c!549432 ((_ is ElementMatch!10039) (regex!5280 (rule!7752 (h!41844 tokens!494)))))))

(declare-fun bm!235953 () Bool)

(declare-fun call!235959 () List!36547)

(declare-fun c!549431 () Bool)

(assert (=> bm!235953 (= call!235959 (usedCharacters!582 (ite c!549431 (regOne!20591 (regex!5280 (rule!7752 (h!41844 tokens!494)))) (regTwo!20590 (regex!5280 (rule!7752 (h!41844 tokens!494)))))))))

(declare-fun d!901149 () Bool)

(declare-fun c!549433 () Bool)

(assert (=> d!901149 (= c!549433 (or ((_ is EmptyExpr!10039) (regex!5280 (rule!7752 (h!41844 tokens!494)))) ((_ is EmptyLang!10039) (regex!5280 (rule!7752 (h!41844 tokens!494))))))))

(assert (=> d!901149 (= (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494)))) e!2029959)))

(declare-fun b!3258724 () Bool)

(declare-fun e!2029960 () List!36547)

(declare-fun call!235958 () List!36547)

(assert (=> b!3258724 (= e!2029960 call!235958)))

(declare-fun b!3258725 () Bool)

(assert (=> b!3258725 (= e!2029959 Nil!36423)))

(declare-fun bm!235954 () Bool)

(declare-fun call!235961 () List!36547)

(assert (=> bm!235954 (= call!235958 (++!8786 (ite c!549431 call!235959 call!235961) (ite c!549431 call!235961 call!235959)))))

(declare-fun b!3258726 () Bool)

(declare-fun e!2029958 () List!36547)

(declare-fun call!235960 () List!36547)

(assert (=> b!3258726 (= e!2029958 call!235960)))

(declare-fun b!3258727 () Bool)

(assert (=> b!3258727 (= e!2029957 (Cons!36423 (c!549308 (regex!5280 (rule!7752 (h!41844 tokens!494)))) Nil!36423))))

(declare-fun b!3258728 () Bool)

(declare-fun c!549434 () Bool)

(assert (=> b!3258728 (= c!549434 ((_ is Star!10039) (regex!5280 (rule!7752 (h!41844 tokens!494)))))))

(assert (=> b!3258728 (= e!2029957 e!2029958)))

(declare-fun bm!235955 () Bool)

(assert (=> bm!235955 (= call!235960 (usedCharacters!582 (ite c!549434 (reg!10368 (regex!5280 (rule!7752 (h!41844 tokens!494)))) (ite c!549431 (regTwo!20591 (regex!5280 (rule!7752 (h!41844 tokens!494)))) (regOne!20590 (regex!5280 (rule!7752 (h!41844 tokens!494))))))))))

(declare-fun b!3258729 () Bool)

(assert (=> b!3258729 (= e!2029960 call!235958)))

(declare-fun b!3258730 () Bool)

(assert (=> b!3258730 (= e!2029958 e!2029960)))

(assert (=> b!3258730 (= c!549431 ((_ is Union!10039) (regex!5280 (rule!7752 (h!41844 tokens!494)))))))

(declare-fun bm!235956 () Bool)

(assert (=> bm!235956 (= call!235961 call!235960)))

(assert (= (and d!901149 c!549433) b!3258725))

(assert (= (and d!901149 (not c!549433)) b!3258723))

(assert (= (and b!3258723 c!549432) b!3258727))

(assert (= (and b!3258723 (not c!549432)) b!3258728))

(assert (= (and b!3258728 c!549434) b!3258726))

(assert (= (and b!3258728 (not c!549434)) b!3258730))

(assert (= (and b!3258730 c!549431) b!3258729))

(assert (= (and b!3258730 (not c!549431)) b!3258724))

(assert (= (or b!3258729 b!3258724) bm!235956))

(assert (= (or b!3258729 b!3258724) bm!235953))

(assert (= (or b!3258729 b!3258724) bm!235954))

(assert (= (or b!3258726 bm!235956) bm!235955))

(declare-fun m!3553937 () Bool)

(assert (=> bm!235953 m!3553937))

(declare-fun m!3553939 () Bool)

(assert (=> bm!235954 m!3553939))

(declare-fun m!3553941 () Bool)

(assert (=> bm!235955 m!3553941))

(assert (=> b!3258201 d!901149))

(declare-fun d!901153 () Bool)

(declare-fun e!2029996 () Bool)

(assert (=> d!901153 e!2029996))

(declare-fun res!1324694 () Bool)

(assert (=> d!901153 (=> res!1324694 e!2029996)))

(declare-fun lt!1104540 () Option!7247)

(assert (=> d!901153 (= res!1324694 (isEmpty!20537 lt!1104540))))

(declare-fun e!2029995 () Option!7247)

(assert (=> d!901153 (= lt!1104540 e!2029995)))

(declare-fun c!549444 () Bool)

(assert (=> d!901153 (= c!549444 (and ((_ is Cons!36425) rules!2135) ((_ is Nil!36425) (t!245714 rules!2135))))))

(declare-fun lt!1104541 () Unit!51144)

(declare-fun lt!1104539 () Unit!51144)

(assert (=> d!901153 (= lt!1104541 lt!1104539)))

(declare-fun isPrefix!2796 (List!36547 List!36547) Bool)

(assert (=> d!901153 (isPrefix!2796 lt!1104302 lt!1104302)))

(declare-fun lemmaIsPrefixRefl!1755 (List!36547 List!36547) Unit!51144)

(assert (=> d!901153 (= lt!1104539 (lemmaIsPrefixRefl!1755 lt!1104302 lt!1104302))))

(declare-fun rulesValidInductive!1795 (LexerInterface!4869 List!36549) Bool)

(assert (=> d!901153 (rulesValidInductive!1795 thiss!18206 rules!2135)))

(assert (=> d!901153 (= (maxPrefix!2497 thiss!18206 rules!2135 lt!1104302) lt!1104540)))

(declare-fun b!3258791 () Bool)

(declare-fun res!1324692 () Bool)

(declare-fun e!2029997 () Bool)

(assert (=> b!3258791 (=> (not res!1324692) (not e!2029997))))

(assert (=> b!3258791 (= res!1324692 (< (size!27479 (_2!21074 (get!11613 lt!1104540))) (size!27479 lt!1104302)))))

(declare-fun b!3258792 () Bool)

(declare-fun res!1324693 () Bool)

(assert (=> b!3258792 (=> (not res!1324693) (not e!2029997))))

(assert (=> b!3258792 (= res!1324693 (= (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104540)))) (originalCharacters!5994 (_1!21074 (get!11613 lt!1104540)))))))

(declare-fun b!3258793 () Bool)

(declare-fun call!235965 () Option!7247)

(assert (=> b!3258793 (= e!2029995 call!235965)))

(declare-fun b!3258794 () Bool)

(declare-fun res!1324690 () Bool)

(assert (=> b!3258794 (=> (not res!1324690) (not e!2029997))))

(assert (=> b!3258794 (= res!1324690 (= (++!8786 (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104540)))) (_2!21074 (get!11613 lt!1104540))) lt!1104302))))

(declare-fun b!3258795 () Bool)

(assert (=> b!3258795 (= e!2029997 (contains!6556 rules!2135 (rule!7752 (_1!21074 (get!11613 lt!1104540)))))))

(declare-fun b!3258796 () Bool)

(declare-fun lt!1104542 () Option!7247)

(declare-fun lt!1104543 () Option!7247)

(assert (=> b!3258796 (= e!2029995 (ite (and ((_ is None!7246) lt!1104542) ((_ is None!7246) lt!1104543)) None!7246 (ite ((_ is None!7246) lt!1104543) lt!1104542 (ite ((_ is None!7246) lt!1104542) lt!1104543 (ite (>= (size!27478 (_1!21074 (v!35908 lt!1104542))) (size!27478 (_1!21074 (v!35908 lt!1104543)))) lt!1104542 lt!1104543)))))))

(assert (=> b!3258796 (= lt!1104542 call!235965)))

(assert (=> b!3258796 (= lt!1104543 (maxPrefix!2497 thiss!18206 (t!245714 rules!2135) lt!1104302))))

(declare-fun bm!235960 () Bool)

(assert (=> bm!235960 (= call!235965 (maxPrefixOneRule!1634 thiss!18206 (h!41845 rules!2135) lt!1104302))))

(declare-fun b!3258797 () Bool)

(declare-fun res!1324689 () Bool)

(assert (=> b!3258797 (=> (not res!1324689) (not e!2029997))))

(assert (=> b!3258797 (= res!1324689 (matchR!4661 (regex!5280 (rule!7752 (_1!21074 (get!11613 lt!1104540)))) (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104540))))))))

(declare-fun b!3258798 () Bool)

(declare-fun res!1324691 () Bool)

(assert (=> b!3258798 (=> (not res!1324691) (not e!2029997))))

(assert (=> b!3258798 (= res!1324691 (= (value!170940 (_1!21074 (get!11613 lt!1104540))) (apply!8332 (transformation!5280 (rule!7752 (_1!21074 (get!11613 lt!1104540)))) (seqFromList!3624 (originalCharacters!5994 (_1!21074 (get!11613 lt!1104540)))))))))

(declare-fun b!3258799 () Bool)

(assert (=> b!3258799 (= e!2029996 e!2029997)))

(declare-fun res!1324695 () Bool)

(assert (=> b!3258799 (=> (not res!1324695) (not e!2029997))))

(declare-fun isDefined!5616 (Option!7247) Bool)

(assert (=> b!3258799 (= res!1324695 (isDefined!5616 lt!1104540))))

(assert (= (and d!901153 c!549444) b!3258793))

(assert (= (and d!901153 (not c!549444)) b!3258796))

(assert (= (or b!3258793 b!3258796) bm!235960))

(assert (= (and d!901153 (not res!1324694)) b!3258799))

(assert (= (and b!3258799 res!1324695) b!3258792))

(assert (= (and b!3258792 res!1324693) b!3258791))

(assert (= (and b!3258791 res!1324692) b!3258794))

(assert (= (and b!3258794 res!1324690) b!3258798))

(assert (= (and b!3258798 res!1324691) b!3258797))

(assert (= (and b!3258797 res!1324689) b!3258795))

(declare-fun m!3554005 () Bool)

(assert (=> b!3258798 m!3554005))

(declare-fun m!3554007 () Bool)

(assert (=> b!3258798 m!3554007))

(assert (=> b!3258798 m!3554007))

(declare-fun m!3554009 () Bool)

(assert (=> b!3258798 m!3554009))

(assert (=> b!3258792 m!3554005))

(declare-fun m!3554011 () Bool)

(assert (=> b!3258792 m!3554011))

(assert (=> b!3258792 m!3554011))

(declare-fun m!3554013 () Bool)

(assert (=> b!3258792 m!3554013))

(declare-fun m!3554015 () Bool)

(assert (=> bm!235960 m!3554015))

(assert (=> b!3258794 m!3554005))

(assert (=> b!3258794 m!3554011))

(assert (=> b!3258794 m!3554011))

(assert (=> b!3258794 m!3554013))

(assert (=> b!3258794 m!3554013))

(declare-fun m!3554017 () Bool)

(assert (=> b!3258794 m!3554017))

(declare-fun m!3554019 () Bool)

(assert (=> b!3258799 m!3554019))

(declare-fun m!3554021 () Bool)

(assert (=> d!901153 m!3554021))

(declare-fun m!3554023 () Bool)

(assert (=> d!901153 m!3554023))

(declare-fun m!3554025 () Bool)

(assert (=> d!901153 m!3554025))

(declare-fun m!3554027 () Bool)

(assert (=> d!901153 m!3554027))

(assert (=> b!3258795 m!3554005))

(declare-fun m!3554029 () Bool)

(assert (=> b!3258795 m!3554029))

(declare-fun m!3554031 () Bool)

(assert (=> b!3258796 m!3554031))

(assert (=> b!3258797 m!3554005))

(assert (=> b!3258797 m!3554011))

(assert (=> b!3258797 m!3554011))

(assert (=> b!3258797 m!3554013))

(assert (=> b!3258797 m!3554013))

(declare-fun m!3554033 () Bool)

(assert (=> b!3258797 m!3554033))

(assert (=> b!3258791 m!3554005))

(declare-fun m!3554035 () Bool)

(assert (=> b!3258791 m!3554035))

(declare-fun m!3554037 () Bool)

(assert (=> b!3258791 m!3554037))

(assert (=> b!3258201 d!901153))

(declare-fun d!901177 () Bool)

(assert (=> d!901177 (= (maxPrefix!2497 thiss!18206 rules!2135 (++!8786 (list!13013 (charsOf!3296 (h!41844 tokens!494))) lt!1104309)) (Some!7246 (tuple2!35881 (h!41844 tokens!494) lt!1104309)))))

(declare-fun lt!1104546 () Unit!51144)

(declare-fun choose!18947 (LexerInterface!4869 List!36549 Token!9926 Rule!10360 List!36547 Rule!10360) Unit!51144)

(assert (=> d!901177 (= lt!1104546 (choose!18947 thiss!18206 rules!2135 (h!41844 tokens!494) (rule!7752 (h!41844 tokens!494)) lt!1104309 (rule!7752 separatorToken!241)))))

(assert (=> d!901177 (not (isEmpty!20526 rules!2135))))

(assert (=> d!901177 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!186 thiss!18206 rules!2135 (h!41844 tokens!494) (rule!7752 (h!41844 tokens!494)) lt!1104309 (rule!7752 separatorToken!241)) lt!1104546)))

(declare-fun bs!545237 () Bool)

(assert (= bs!545237 d!901177))

(declare-fun m!3554039 () Bool)

(assert (=> bs!545237 m!3554039))

(declare-fun m!3554041 () Bool)

(assert (=> bs!545237 m!3554041))

(assert (=> bs!545237 m!3553295))

(declare-fun m!3554043 () Bool)

(assert (=> bs!545237 m!3554043))

(assert (=> bs!545237 m!3553249))

(assert (=> bs!545237 m!3553251))

(assert (=> bs!545237 m!3554039))

(assert (=> bs!545237 m!3553249))

(assert (=> bs!545237 m!3553251))

(assert (=> b!3258201 d!901177))

(declare-fun d!901179 () Bool)

(declare-fun e!2029999 () Bool)

(assert (=> d!901179 e!2029999))

(declare-fun res!1324701 () Bool)

(assert (=> d!901179 (=> res!1324701 e!2029999)))

(declare-fun lt!1104548 () Option!7247)

(assert (=> d!901179 (= res!1324701 (isEmpty!20537 lt!1104548))))

(declare-fun e!2029998 () Option!7247)

(assert (=> d!901179 (= lt!1104548 e!2029998)))

(declare-fun c!549445 () Bool)

(assert (=> d!901179 (= c!549445 (and ((_ is Cons!36425) rules!2135) ((_ is Nil!36425) (t!245714 rules!2135))))))

(declare-fun lt!1104549 () Unit!51144)

(declare-fun lt!1104547 () Unit!51144)

(assert (=> d!901179 (= lt!1104549 lt!1104547)))

(assert (=> d!901179 (isPrefix!2796 lt!1104313 lt!1104313)))

(assert (=> d!901179 (= lt!1104547 (lemmaIsPrefixRefl!1755 lt!1104313 lt!1104313))))

(assert (=> d!901179 (rulesValidInductive!1795 thiss!18206 rules!2135)))

(assert (=> d!901179 (= (maxPrefix!2497 thiss!18206 rules!2135 lt!1104313) lt!1104548)))

(declare-fun b!3258800 () Bool)

(declare-fun res!1324699 () Bool)

(declare-fun e!2030000 () Bool)

(assert (=> b!3258800 (=> (not res!1324699) (not e!2030000))))

(assert (=> b!3258800 (= res!1324699 (< (size!27479 (_2!21074 (get!11613 lt!1104548))) (size!27479 lt!1104313)))))

(declare-fun b!3258801 () Bool)

(declare-fun res!1324700 () Bool)

(assert (=> b!3258801 (=> (not res!1324700) (not e!2030000))))

(assert (=> b!3258801 (= res!1324700 (= (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104548)))) (originalCharacters!5994 (_1!21074 (get!11613 lt!1104548)))))))

(declare-fun b!3258802 () Bool)

(declare-fun call!235966 () Option!7247)

(assert (=> b!3258802 (= e!2029998 call!235966)))

(declare-fun b!3258803 () Bool)

(declare-fun res!1324697 () Bool)

(assert (=> b!3258803 (=> (not res!1324697) (not e!2030000))))

(assert (=> b!3258803 (= res!1324697 (= (++!8786 (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104548)))) (_2!21074 (get!11613 lt!1104548))) lt!1104313))))

(declare-fun b!3258804 () Bool)

(assert (=> b!3258804 (= e!2030000 (contains!6556 rules!2135 (rule!7752 (_1!21074 (get!11613 lt!1104548)))))))

(declare-fun b!3258805 () Bool)

(declare-fun lt!1104550 () Option!7247)

(declare-fun lt!1104551 () Option!7247)

(assert (=> b!3258805 (= e!2029998 (ite (and ((_ is None!7246) lt!1104550) ((_ is None!7246) lt!1104551)) None!7246 (ite ((_ is None!7246) lt!1104551) lt!1104550 (ite ((_ is None!7246) lt!1104550) lt!1104551 (ite (>= (size!27478 (_1!21074 (v!35908 lt!1104550))) (size!27478 (_1!21074 (v!35908 lt!1104551)))) lt!1104550 lt!1104551)))))))

(assert (=> b!3258805 (= lt!1104550 call!235966)))

(assert (=> b!3258805 (= lt!1104551 (maxPrefix!2497 thiss!18206 (t!245714 rules!2135) lt!1104313))))

(declare-fun bm!235961 () Bool)

(assert (=> bm!235961 (= call!235966 (maxPrefixOneRule!1634 thiss!18206 (h!41845 rules!2135) lt!1104313))))

(declare-fun b!3258806 () Bool)

(declare-fun res!1324696 () Bool)

(assert (=> b!3258806 (=> (not res!1324696) (not e!2030000))))

(assert (=> b!3258806 (= res!1324696 (matchR!4661 (regex!5280 (rule!7752 (_1!21074 (get!11613 lt!1104548)))) (list!13013 (charsOf!3296 (_1!21074 (get!11613 lt!1104548))))))))

(declare-fun b!3258807 () Bool)

(declare-fun res!1324698 () Bool)

(assert (=> b!3258807 (=> (not res!1324698) (not e!2030000))))

(assert (=> b!3258807 (= res!1324698 (= (value!170940 (_1!21074 (get!11613 lt!1104548))) (apply!8332 (transformation!5280 (rule!7752 (_1!21074 (get!11613 lt!1104548)))) (seqFromList!3624 (originalCharacters!5994 (_1!21074 (get!11613 lt!1104548)))))))))

(declare-fun b!3258808 () Bool)

(assert (=> b!3258808 (= e!2029999 e!2030000)))

(declare-fun res!1324702 () Bool)

(assert (=> b!3258808 (=> (not res!1324702) (not e!2030000))))

(assert (=> b!3258808 (= res!1324702 (isDefined!5616 lt!1104548))))

(assert (= (and d!901179 c!549445) b!3258802))

(assert (= (and d!901179 (not c!549445)) b!3258805))

(assert (= (or b!3258802 b!3258805) bm!235961))

(assert (= (and d!901179 (not res!1324701)) b!3258808))

(assert (= (and b!3258808 res!1324702) b!3258801))

(assert (= (and b!3258801 res!1324700) b!3258800))

(assert (= (and b!3258800 res!1324699) b!3258803))

(assert (= (and b!3258803 res!1324697) b!3258807))

(assert (= (and b!3258807 res!1324698) b!3258806))

(assert (= (and b!3258806 res!1324696) b!3258804))

(declare-fun m!3554045 () Bool)

(assert (=> b!3258807 m!3554045))

(declare-fun m!3554047 () Bool)

(assert (=> b!3258807 m!3554047))

(assert (=> b!3258807 m!3554047))

(declare-fun m!3554049 () Bool)

(assert (=> b!3258807 m!3554049))

(assert (=> b!3258801 m!3554045))

(declare-fun m!3554051 () Bool)

(assert (=> b!3258801 m!3554051))

(assert (=> b!3258801 m!3554051))

(declare-fun m!3554053 () Bool)

(assert (=> b!3258801 m!3554053))

(declare-fun m!3554055 () Bool)

(assert (=> bm!235961 m!3554055))

(assert (=> b!3258803 m!3554045))

(assert (=> b!3258803 m!3554051))

(assert (=> b!3258803 m!3554051))

(assert (=> b!3258803 m!3554053))

(assert (=> b!3258803 m!3554053))

(declare-fun m!3554057 () Bool)

(assert (=> b!3258803 m!3554057))

(declare-fun m!3554059 () Bool)

(assert (=> b!3258808 m!3554059))

(declare-fun m!3554061 () Bool)

(assert (=> d!901179 m!3554061))

(declare-fun m!3554063 () Bool)

(assert (=> d!901179 m!3554063))

(declare-fun m!3554065 () Bool)

(assert (=> d!901179 m!3554065))

(assert (=> d!901179 m!3554027))

(assert (=> b!3258804 m!3554045))

(declare-fun m!3554067 () Bool)

(assert (=> b!3258804 m!3554067))

(declare-fun m!3554069 () Bool)

(assert (=> b!3258805 m!3554069))

(assert (=> b!3258806 m!3554045))

(assert (=> b!3258806 m!3554051))

(assert (=> b!3258806 m!3554051))

(assert (=> b!3258806 m!3554053))

(assert (=> b!3258806 m!3554053))

(declare-fun m!3554071 () Bool)

(assert (=> b!3258806 m!3554071))

(assert (=> b!3258800 m!3554045))

(declare-fun m!3554073 () Bool)

(assert (=> b!3258800 m!3554073))

(declare-fun m!3554075 () Bool)

(assert (=> b!3258800 m!3554075))

(assert (=> b!3258201 d!901179))

(declare-fun b!3258819 () Bool)

(declare-fun e!2030007 () Bool)

(declare-fun lt!1104560 () tuple2!35882)

(assert (=> b!3258819 (= e!2030007 (not (isEmpty!20533 (_1!21075 lt!1104560))))))

(declare-fun b!3258820 () Bool)

(declare-fun e!2030009 () Bool)

(assert (=> b!3258820 (= e!2030009 (= (_2!21075 lt!1104560) lt!1104302))))

(declare-fun b!3258821 () Bool)

(assert (=> b!3258821 (= e!2030009 e!2030007)))

(declare-fun res!1324705 () Bool)

(assert (=> b!3258821 (= res!1324705 (< (size!27479 (_2!21075 lt!1104560)) (size!27479 lt!1104302)))))

(assert (=> b!3258821 (=> (not res!1324705) (not e!2030007))))

(declare-fun d!901181 () Bool)

(assert (=> d!901181 e!2030009))

(declare-fun c!549451 () Bool)

(declare-fun size!27485 (List!36548) Int)

(assert (=> d!901181 (= c!549451 (> (size!27485 (_1!21075 lt!1104560)) 0))))

(declare-fun e!2030008 () tuple2!35882)

(assert (=> d!901181 (= lt!1104560 e!2030008)))

(declare-fun c!549450 () Bool)

(declare-fun lt!1104558 () Option!7247)

(assert (=> d!901181 (= c!549450 ((_ is Some!7246) lt!1104558))))

(assert (=> d!901181 (= lt!1104558 (maxPrefix!2497 thiss!18206 rules!2135 lt!1104302))))

(assert (=> d!901181 (= (lexList!1343 thiss!18206 rules!2135 lt!1104302) lt!1104560)))

(declare-fun b!3258822 () Bool)

(declare-fun lt!1104559 () tuple2!35882)

(assert (=> b!3258822 (= e!2030008 (tuple2!35883 (Cons!36424 (_1!21074 (v!35908 lt!1104558)) (_1!21075 lt!1104559)) (_2!21075 lt!1104559)))))

(assert (=> b!3258822 (= lt!1104559 (lexList!1343 thiss!18206 rules!2135 (_2!21074 (v!35908 lt!1104558))))))

(declare-fun b!3258823 () Bool)

(assert (=> b!3258823 (= e!2030008 (tuple2!35883 Nil!36424 lt!1104302))))

(assert (= (and d!901181 c!549450) b!3258822))

(assert (= (and d!901181 (not c!549450)) b!3258823))

(assert (= (and d!901181 c!549451) b!3258821))

(assert (= (and d!901181 (not c!549451)) b!3258820))

(assert (= (and b!3258821 res!1324705) b!3258819))

(declare-fun m!3554077 () Bool)

(assert (=> b!3258819 m!3554077))

(declare-fun m!3554079 () Bool)

(assert (=> b!3258821 m!3554079))

(assert (=> b!3258821 m!3554037))

(declare-fun m!3554081 () Bool)

(assert (=> d!901181 m!3554081))

(assert (=> d!901181 m!3553231))

(declare-fun m!3554083 () Bool)

(assert (=> b!3258822 m!3554083))

(assert (=> b!3258201 d!901181))

(declare-fun d!901183 () Bool)

(declare-fun lt!1104561 () Bool)

(assert (=> d!901183 (= lt!1104561 (select (content!4934 (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494))))) lt!1104303))))

(declare-fun e!2030010 () Bool)

(assert (=> d!901183 (= lt!1104561 e!2030010)))

(declare-fun res!1324707 () Bool)

(assert (=> d!901183 (=> (not res!1324707) (not e!2030010))))

(assert (=> d!901183 (= res!1324707 ((_ is Cons!36423) (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494))))))))

(assert (=> d!901183 (= (contains!6553 (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494)))) lt!1104303) lt!1104561)))

(declare-fun b!3258824 () Bool)

(declare-fun e!2030011 () Bool)

(assert (=> b!3258824 (= e!2030010 e!2030011)))

(declare-fun res!1324706 () Bool)

(assert (=> b!3258824 (=> res!1324706 e!2030011)))

(assert (=> b!3258824 (= res!1324706 (= (h!41843 (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494))))) lt!1104303))))

(declare-fun b!3258825 () Bool)

(assert (=> b!3258825 (= e!2030011 (contains!6553 (t!245712 (usedCharacters!582 (regex!5280 (rule!7752 (h!41844 tokens!494))))) lt!1104303))))

(assert (= (and d!901183 res!1324707) b!3258824))

(assert (= (and b!3258824 (not res!1324706)) b!3258825))

(assert (=> d!901183 m!3553225))

(declare-fun m!3554085 () Bool)

(assert (=> d!901183 m!3554085))

(declare-fun m!3554087 () Bool)

(assert (=> d!901183 m!3554087))

(declare-fun m!3554089 () Bool)

(assert (=> b!3258825 m!3554089))

(assert (=> b!3258201 d!901183))

(declare-fun b!3258826 () Bool)

(declare-fun e!2030012 () Bool)

(declare-fun lt!1104564 () tuple2!35882)

(assert (=> b!3258826 (= e!2030012 (not (isEmpty!20533 (_1!21075 lt!1104564))))))

(declare-fun b!3258827 () Bool)

(declare-fun e!2030014 () Bool)

(assert (=> b!3258827 (= e!2030014 (= (_2!21075 lt!1104564) (_2!21074 (v!35908 lt!1104299))))))

(declare-fun b!3258828 () Bool)

(assert (=> b!3258828 (= e!2030014 e!2030012)))

(declare-fun res!1324708 () Bool)

(assert (=> b!3258828 (= res!1324708 (< (size!27479 (_2!21075 lt!1104564)) (size!27479 (_2!21074 (v!35908 lt!1104299)))))))

(assert (=> b!3258828 (=> (not res!1324708) (not e!2030012))))

(declare-fun d!901185 () Bool)

(assert (=> d!901185 e!2030014))

(declare-fun c!549453 () Bool)

(assert (=> d!901185 (= c!549453 (> (size!27485 (_1!21075 lt!1104564)) 0))))

(declare-fun e!2030013 () tuple2!35882)

(assert (=> d!901185 (= lt!1104564 e!2030013)))

(declare-fun c!549452 () Bool)

(declare-fun lt!1104562 () Option!7247)

(assert (=> d!901185 (= c!549452 ((_ is Some!7246) lt!1104562))))

(assert (=> d!901185 (= lt!1104562 (maxPrefix!2497 thiss!18206 rules!2135 (_2!21074 (v!35908 lt!1104299))))))

(assert (=> d!901185 (= (lexList!1343 thiss!18206 rules!2135 (_2!21074 (v!35908 lt!1104299))) lt!1104564)))

(declare-fun b!3258829 () Bool)

(declare-fun lt!1104563 () tuple2!35882)

(assert (=> b!3258829 (= e!2030013 (tuple2!35883 (Cons!36424 (_1!21074 (v!35908 lt!1104562)) (_1!21075 lt!1104563)) (_2!21075 lt!1104563)))))

(assert (=> b!3258829 (= lt!1104563 (lexList!1343 thiss!18206 rules!2135 (_2!21074 (v!35908 lt!1104562))))))

(declare-fun b!3258830 () Bool)

(assert (=> b!3258830 (= e!2030013 (tuple2!35883 Nil!36424 (_2!21074 (v!35908 lt!1104299))))))

(assert (= (and d!901185 c!549452) b!3258829))

(assert (= (and d!901185 (not c!549452)) b!3258830))

(assert (= (and d!901185 c!549453) b!3258828))

(assert (= (and d!901185 (not c!549453)) b!3258827))

(assert (= (and b!3258828 res!1324708) b!3258826))

(declare-fun m!3554091 () Bool)

(assert (=> b!3258826 m!3554091))

(declare-fun m!3554093 () Bool)

(assert (=> b!3258828 m!3554093))

(declare-fun m!3554095 () Bool)

(assert (=> b!3258828 m!3554095))

(declare-fun m!3554097 () Bool)

(assert (=> d!901185 m!3554097))

(declare-fun m!3554099 () Bool)

(assert (=> d!901185 m!3554099))

(declare-fun m!3554101 () Bool)

(assert (=> b!3258829 m!3554101))

(assert (=> b!3258200 d!901185))

(declare-fun d!901187 () Bool)

(declare-fun res!1324711 () Bool)

(declare-fun e!2030017 () Bool)

(assert (=> d!901187 (=> (not res!1324711) (not e!2030017))))

(declare-fun rulesValid!1937 (LexerInterface!4869 List!36549) Bool)

(assert (=> d!901187 (= res!1324711 (rulesValid!1937 thiss!18206 rules!2135))))

(assert (=> d!901187 (= (rulesInvariant!4266 thiss!18206 rules!2135) e!2030017)))

(declare-fun b!3258833 () Bool)

(declare-datatypes ((List!36551 0))(
  ( (Nil!36427) (Cons!36427 (h!41847 String!40884) (t!245790 List!36551)) )
))
(declare-fun noDuplicateTag!1933 (LexerInterface!4869 List!36549 List!36551) Bool)

(assert (=> b!3258833 (= e!2030017 (noDuplicateTag!1933 thiss!18206 rules!2135 Nil!36427))))

(assert (= (and d!901187 res!1324711) b!3258833))

(declare-fun m!3554103 () Bool)

(assert (=> d!901187 m!3554103))

(declare-fun m!3554105 () Bool)

(assert (=> b!3258833 m!3554105))

(assert (=> b!3258179 d!901187))

(declare-fun bs!545245 () Bool)

(declare-fun d!901189 () Bool)

(assert (= bs!545245 (and d!901189 b!3258175)))

(declare-fun lambda!118501 () Int)

(assert (=> bs!545245 (not (= lambda!118501 lambda!118491))))

(declare-fun b!3258988 () Bool)

(declare-fun e!2030118 () Bool)

(assert (=> b!3258988 (= e!2030118 true)))

(declare-fun b!3258987 () Bool)

(declare-fun e!2030117 () Bool)

(assert (=> b!3258987 (= e!2030117 e!2030118)))

(declare-fun b!3258986 () Bool)

(declare-fun e!2030116 () Bool)

(assert (=> b!3258986 (= e!2030116 e!2030117)))

(assert (=> d!901189 e!2030116))

(assert (= b!3258987 b!3258988))

(assert (= b!3258986 b!3258987))

(assert (= (and d!901189 ((_ is Cons!36425) rules!2135)) b!3258986))

(declare-fun order!18823 () Int)

(declare-fun order!18821 () Int)

(declare-fun dynLambda!14849 (Int Int) Int)

(declare-fun dynLambda!14850 (Int Int) Int)

(assert (=> b!3258988 (< (dynLambda!14849 order!18821 (toValue!7396 (transformation!5280 (h!41845 rules!2135)))) (dynLambda!14850 order!18823 lambda!118501))))

(declare-fun order!18825 () Int)

(declare-fun dynLambda!14851 (Int Int) Int)

(assert (=> b!3258988 (< (dynLambda!14851 order!18825 (toChars!7255 (transformation!5280 (h!41845 rules!2135)))) (dynLambda!14850 order!18823 lambda!118501))))

(assert (=> d!901189 true))

(declare-fun e!2030109 () Bool)

(assert (=> d!901189 e!2030109))

(declare-fun res!1324758 () Bool)

(assert (=> d!901189 (=> (not res!1324758) (not e!2030109))))

(declare-fun lt!1104617 () Bool)

(assert (=> d!901189 (= res!1324758 (= lt!1104617 (forall!7506 (list!13016 lt!1104314) lambda!118501)))))

(declare-fun forall!7508 (BalanceConc!21486 Int) Bool)

(assert (=> d!901189 (= lt!1104617 (forall!7508 lt!1104314 lambda!118501))))

(assert (=> d!901189 (not (isEmpty!20526 rules!2135))))

(assert (=> d!901189 (= (rulesProduceEachTokenIndividually!1320 thiss!18206 rules!2135 lt!1104314) lt!1104617)))

(declare-fun b!3258977 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1749 (LexerInterface!4869 List!36549 List!36548) Bool)

(assert (=> b!3258977 (= e!2030109 (= lt!1104617 (rulesProduceEachTokenIndividuallyList!1749 thiss!18206 rules!2135 (list!13016 lt!1104314))))))

(assert (= (and d!901189 res!1324758) b!3258977))

(assert (=> d!901189 m!3553671))

(assert (=> d!901189 m!3553671))

(declare-fun m!3554259 () Bool)

(assert (=> d!901189 m!3554259))

(declare-fun m!3554261 () Bool)

(assert (=> d!901189 m!3554261))

(assert (=> d!901189 m!3553295))

(assert (=> b!3258977 m!3553671))

(assert (=> b!3258977 m!3553671))

(declare-fun m!3554263 () Bool)

(assert (=> b!3258977 m!3554263))

(assert (=> b!3258178 d!901189))

(declare-fun d!901233 () Bool)

(declare-fun fromListB!1580 (List!36548) BalanceConc!21486)

(assert (=> d!901233 (= (seqFromList!3623 tokens!494) (fromListB!1580 tokens!494))))

(declare-fun bs!545246 () Bool)

(assert (= bs!545246 d!901233))

(declare-fun m!3554265 () Bool)

(assert (=> bs!545246 m!3554265))

(assert (=> b!3258178 d!901233))

(declare-fun d!901235 () Bool)

(assert (=> d!901235 (dynLambda!14845 lambda!118491 (h!41844 tokens!494))))

(declare-fun lt!1104620 () Unit!51144)

(declare-fun choose!18948 (List!36548 Int Token!9926) Unit!51144)

(assert (=> d!901235 (= lt!1104620 (choose!18948 tokens!494 lambda!118491 (h!41844 tokens!494)))))

(declare-fun e!2030121 () Bool)

(assert (=> d!901235 e!2030121))

(declare-fun res!1324761 () Bool)

(assert (=> d!901235 (=> (not res!1324761) (not e!2030121))))

(assert (=> d!901235 (= res!1324761 (forall!7506 tokens!494 lambda!118491))))

(assert (=> d!901235 (= (forallContained!1241 tokens!494 lambda!118491 (h!41844 tokens!494)) lt!1104620)))

(declare-fun b!3258993 () Bool)

(declare-fun contains!6557 (List!36548 Token!9926) Bool)

(assert (=> b!3258993 (= e!2030121 (contains!6557 tokens!494 (h!41844 tokens!494)))))

(assert (= (and d!901235 res!1324761) b!3258993))

(declare-fun b_lambda!90011 () Bool)

(assert (=> (not b_lambda!90011) (not d!901235)))

(assert (=> d!901235 m!3553483))

(declare-fun m!3554267 () Bool)

(assert (=> d!901235 m!3554267))

(assert (=> d!901235 m!3553239))

(declare-fun m!3554269 () Bool)

(assert (=> b!3258993 m!3554269))

(assert (=> b!3258177 d!901235))

(declare-fun d!901237 () Bool)

(declare-fun res!1324766 () Bool)

(declare-fun e!2030126 () Bool)

(assert (=> d!901237 (=> res!1324766 e!2030126)))

(assert (=> d!901237 (= res!1324766 (not ((_ is Cons!36425) rules!2135)))))

(assert (=> d!901237 (= (sepAndNonSepRulesDisjointChars!1474 rules!2135 rules!2135) e!2030126)))

(declare-fun b!3258998 () Bool)

(declare-fun e!2030127 () Bool)

(assert (=> b!3258998 (= e!2030126 e!2030127)))

(declare-fun res!1324767 () Bool)

(assert (=> b!3258998 (=> (not res!1324767) (not e!2030127))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!613 (Rule!10360 List!36549) Bool)

(assert (=> b!3258998 (= res!1324767 (ruleDisjointCharsFromAllFromOtherType!613 (h!41845 rules!2135) rules!2135))))

(declare-fun b!3258999 () Bool)

(assert (=> b!3258999 (= e!2030127 (sepAndNonSepRulesDisjointChars!1474 rules!2135 (t!245714 rules!2135)))))

(assert (= (and d!901237 (not res!1324766)) b!3258998))

(assert (= (and b!3258998 res!1324767) b!3258999))

(declare-fun m!3554271 () Bool)

(assert (=> b!3258998 m!3554271))

(declare-fun m!3554273 () Bool)

(assert (=> b!3258999 m!3554273))

(assert (=> b!3258176 d!901237))

(declare-fun b!3259011 () Bool)

(declare-fun e!2030130 () Bool)

(declare-fun tp!1025435 () Bool)

(declare-fun tp!1025433 () Bool)

(assert (=> b!3259011 (= e!2030130 (and tp!1025435 tp!1025433))))

(declare-fun b!3259012 () Bool)

(declare-fun tp!1025437 () Bool)

(assert (=> b!3259012 (= e!2030130 tp!1025437)))

(assert (=> b!3258202 (= tp!1025348 e!2030130)))

(declare-fun b!3259010 () Bool)

(declare-fun tp_is_empty!17341 () Bool)

(assert (=> b!3259010 (= e!2030130 tp_is_empty!17341)))

(declare-fun b!3259013 () Bool)

(declare-fun tp!1025434 () Bool)

(declare-fun tp!1025436 () Bool)

(assert (=> b!3259013 (= e!2030130 (and tp!1025434 tp!1025436))))

(assert (= (and b!3258202 ((_ is ElementMatch!10039) (regex!5280 (h!41845 rules!2135)))) b!3259010))

(assert (= (and b!3258202 ((_ is Concat!15549) (regex!5280 (h!41845 rules!2135)))) b!3259011))

(assert (= (and b!3258202 ((_ is Star!10039) (regex!5280 (h!41845 rules!2135)))) b!3259012))

(assert (= (and b!3258202 ((_ is Union!10039) (regex!5280 (h!41845 rules!2135)))) b!3259013))

(declare-fun b!3259015 () Bool)

(declare-fun e!2030131 () Bool)

(declare-fun tp!1025440 () Bool)

(declare-fun tp!1025438 () Bool)

(assert (=> b!3259015 (= e!2030131 (and tp!1025440 tp!1025438))))

(declare-fun b!3259016 () Bool)

(declare-fun tp!1025442 () Bool)

(assert (=> b!3259016 (= e!2030131 tp!1025442)))

(assert (=> b!3258181 (= tp!1025357 e!2030131)))

(declare-fun b!3259014 () Bool)

(assert (=> b!3259014 (= e!2030131 tp_is_empty!17341)))

(declare-fun b!3259017 () Bool)

(declare-fun tp!1025439 () Bool)

(declare-fun tp!1025441 () Bool)

(assert (=> b!3259017 (= e!2030131 (and tp!1025439 tp!1025441))))

(assert (= (and b!3258181 ((_ is ElementMatch!10039) (regex!5280 (rule!7752 (h!41844 tokens!494))))) b!3259014))

(assert (= (and b!3258181 ((_ is Concat!15549) (regex!5280 (rule!7752 (h!41844 tokens!494))))) b!3259015))

(assert (= (and b!3258181 ((_ is Star!10039) (regex!5280 (rule!7752 (h!41844 tokens!494))))) b!3259016))

(assert (= (and b!3258181 ((_ is Union!10039) (regex!5280 (rule!7752 (h!41844 tokens!494))))) b!3259017))

(declare-fun b!3259028 () Bool)

(declare-fun b_free!86445 () Bool)

(declare-fun b_next!87149 () Bool)

(assert (=> b!3259028 (= b_free!86445 (not b_next!87149))))

(declare-fun tb!164063 () Bool)

(declare-fun t!245778 () Bool)

(assert (=> (and b!3259028 (= (toValue!7396 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245778) tb!164063))

(declare-fun result!206700 () Bool)

(assert (= result!206700 result!206654))

(assert (=> d!901121 t!245778))

(declare-fun b_and!219971 () Bool)

(declare-fun tp!1025451 () Bool)

(assert (=> b!3259028 (= tp!1025451 (and (=> t!245778 result!206700) b_and!219971))))

(declare-fun b_free!86447 () Bool)

(declare-fun b_next!87151 () Bool)

(assert (=> b!3259028 (= b_free!86447 (not b_next!87151))))

(declare-fun tb!164065 () Bool)

(declare-fun t!245780 () Bool)

(assert (=> (and b!3259028 (= (toChars!7255 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245780) tb!164065))

(declare-fun result!206702 () Bool)

(assert (= result!206702 result!206640))

(assert (=> d!901055 t!245780))

(declare-fun t!245782 () Bool)

(declare-fun tb!164067 () Bool)

(assert (=> (and b!3259028 (= (toChars!7255 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241)))) t!245782) tb!164067))

(declare-fun result!206704 () Bool)

(assert (= result!206704 result!206648))

(assert (=> d!901071 t!245782))

(assert (=> b!3258575 t!245782))

(assert (=> b!3258591 t!245780))

(declare-fun b_and!219973 () Bool)

(declare-fun tp!1025453 () Bool)

(assert (=> b!3259028 (= tp!1025453 (and (=> t!245780 result!206702) (=> t!245782 result!206704) b_and!219973))))

(declare-fun e!2030142 () Bool)

(assert (=> b!3259028 (= e!2030142 (and tp!1025451 tp!1025453))))

(declare-fun b!3259027 () Bool)

(declare-fun tp!1025454 () Bool)

(declare-fun e!2030140 () Bool)

(assert (=> b!3259027 (= e!2030140 (and tp!1025454 (inv!49333 (tag!5816 (h!41845 (t!245714 rules!2135)))) (inv!49336 (transformation!5280 (h!41845 (t!245714 rules!2135)))) e!2030142))))

(declare-fun b!3259026 () Bool)

(declare-fun e!2030143 () Bool)

(declare-fun tp!1025452 () Bool)

(assert (=> b!3259026 (= e!2030143 (and e!2030140 tp!1025452))))

(assert (=> b!3258180 (= tp!1025354 e!2030143)))

(assert (= b!3259027 b!3259028))

(assert (= b!3259026 b!3259027))

(assert (= (and b!3258180 ((_ is Cons!36425) (t!245714 rules!2135))) b!3259026))

(declare-fun m!3554275 () Bool)

(assert (=> b!3259027 m!3554275))

(declare-fun m!3554277 () Bool)

(assert (=> b!3259027 m!3554277))

(declare-fun b!3259033 () Bool)

(declare-fun e!2030146 () Bool)

(declare-fun tp!1025457 () Bool)

(assert (=> b!3259033 (= e!2030146 (and tp_is_empty!17341 tp!1025457))))

(assert (=> b!3258207 (= tp!1025346 e!2030146)))

(assert (= (and b!3258207 ((_ is Cons!36423) (originalCharacters!5994 (h!41844 tokens!494)))) b!3259033))

(declare-fun b!3259035 () Bool)

(declare-fun e!2030147 () Bool)

(declare-fun tp!1025460 () Bool)

(declare-fun tp!1025458 () Bool)

(assert (=> b!3259035 (= e!2030147 (and tp!1025460 tp!1025458))))

(declare-fun b!3259036 () Bool)

(declare-fun tp!1025462 () Bool)

(assert (=> b!3259036 (= e!2030147 tp!1025462)))

(assert (=> b!3258206 (= tp!1025351 e!2030147)))

(declare-fun b!3259034 () Bool)

(assert (=> b!3259034 (= e!2030147 tp_is_empty!17341)))

(declare-fun b!3259037 () Bool)

(declare-fun tp!1025459 () Bool)

(declare-fun tp!1025461 () Bool)

(assert (=> b!3259037 (= e!2030147 (and tp!1025459 tp!1025461))))

(assert (= (and b!3258206 ((_ is ElementMatch!10039) (regex!5280 (rule!7752 separatorToken!241)))) b!3259034))

(assert (= (and b!3258206 ((_ is Concat!15549) (regex!5280 (rule!7752 separatorToken!241)))) b!3259035))

(assert (= (and b!3258206 ((_ is Star!10039) (regex!5280 (rule!7752 separatorToken!241)))) b!3259036))

(assert (= (and b!3258206 ((_ is Union!10039) (regex!5280 (rule!7752 separatorToken!241)))) b!3259037))

(declare-fun b!3259038 () Bool)

(declare-fun e!2030148 () Bool)

(declare-fun tp!1025463 () Bool)

(assert (=> b!3259038 (= e!2030148 (and tp_is_empty!17341 tp!1025463))))

(assert (=> b!3258190 (= tp!1025352 e!2030148)))

(assert (= (and b!3258190 ((_ is Cons!36423) (originalCharacters!5994 separatorToken!241))) b!3259038))

(declare-fun b!3259052 () Bool)

(declare-fun b_free!86449 () Bool)

(declare-fun b_next!87153 () Bool)

(assert (=> b!3259052 (= b_free!86449 (not b_next!87153))))

(declare-fun t!245784 () Bool)

(declare-fun tb!164069 () Bool)

(assert (=> (and b!3259052 (= (toValue!7396 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245784) tb!164069))

(declare-fun result!206710 () Bool)

(assert (= result!206710 result!206654))

(assert (=> d!901121 t!245784))

(declare-fun b_and!219975 () Bool)

(declare-fun tp!1025475 () Bool)

(assert (=> b!3259052 (= tp!1025475 (and (=> t!245784 result!206710) b_and!219975))))

(declare-fun b_free!86451 () Bool)

(declare-fun b_next!87155 () Bool)

(assert (=> b!3259052 (= b_free!86451 (not b_next!87155))))

(declare-fun t!245786 () Bool)

(declare-fun tb!164071 () Bool)

(assert (=> (and b!3259052 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494))))) t!245786) tb!164071))

(declare-fun result!206712 () Bool)

(assert (= result!206712 result!206640))

(assert (=> d!901055 t!245786))

(declare-fun tb!164073 () Bool)

(declare-fun t!245788 () Bool)

(assert (=> (and b!3259052 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241)))) t!245788) tb!164073))

(declare-fun result!206714 () Bool)

(assert (= result!206714 result!206648))

(assert (=> d!901071 t!245788))

(assert (=> b!3258575 t!245788))

(assert (=> b!3258591 t!245786))

(declare-fun tp!1025477 () Bool)

(declare-fun b_and!219977 () Bool)

(assert (=> b!3259052 (= tp!1025477 (and (=> t!245786 result!206712) (=> t!245788 result!206714) b_and!219977))))

(declare-fun e!2030166 () Bool)

(declare-fun b!3259049 () Bool)

(declare-fun tp!1025478 () Bool)

(declare-fun e!2030163 () Bool)

(assert (=> b!3259049 (= e!2030166 (and (inv!49337 (h!41844 (t!245713 tokens!494))) e!2030163 tp!1025478))))

(assert (=> b!3258204 (= tp!1025353 e!2030166)))

(declare-fun tp!1025476 () Bool)

(declare-fun e!2030161 () Bool)

(declare-fun b!3259051 () Bool)

(declare-fun e!2030162 () Bool)

(assert (=> b!3259051 (= e!2030161 (and tp!1025476 (inv!49333 (tag!5816 (rule!7752 (h!41844 (t!245713 tokens!494))))) (inv!49336 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) e!2030162))))

(assert (=> b!3259052 (= e!2030162 (and tp!1025475 tp!1025477))))

(declare-fun tp!1025474 () Bool)

(declare-fun b!3259050 () Bool)

(assert (=> b!3259050 (= e!2030163 (and (inv!21 (value!170940 (h!41844 (t!245713 tokens!494)))) e!2030161 tp!1025474))))

(assert (= b!3259051 b!3259052))

(assert (= b!3259050 b!3259051))

(assert (= b!3259049 b!3259050))

(assert (= (and b!3258204 ((_ is Cons!36424) (t!245713 tokens!494))) b!3259049))

(declare-fun m!3554279 () Bool)

(assert (=> b!3259049 m!3554279))

(declare-fun m!3554281 () Bool)

(assert (=> b!3259051 m!3554281))

(declare-fun m!3554283 () Bool)

(assert (=> b!3259051 m!3554283))

(declare-fun m!3554285 () Bool)

(assert (=> b!3259050 m!3554285))

(declare-fun b_lambda!90013 () Bool)

(assert (= b_lambda!89983 (or (and b!3259052 b_free!86451 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) (and b!3258189 b_free!86431 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) (and b!3258193 b_free!86435) (and b!3258182 b_free!86427 (= (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) (and b!3259028 b_free!86447 (= (toChars!7255 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) b_lambda!90013)))

(declare-fun b_lambda!90015 () Bool)

(assert (= b_lambda!89979 (or (and b!3258189 b_free!86431) (and b!3258182 b_free!86427 (= (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3258193 b_free!86435 (= (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3259028 b_free!86447 (= (toChars!7255 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3259052 b_free!86451 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) b_lambda!90015)))

(declare-fun b_lambda!90017 () Bool)

(assert (= b_lambda!89985 (or (and b!3258189 b_free!86431) (and b!3258182 b_free!86427 (= (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3258193 b_free!86435 (= (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3259028 b_free!86447 (= (toChars!7255 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3259052 b_free!86451 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) b_lambda!90017)))

(declare-fun b_lambda!90019 () Bool)

(assert (= b_lambda!89981 (or (and b!3259052 b_free!86451 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) (and b!3258189 b_free!86431 (= (toChars!7255 (transformation!5280 (rule!7752 (h!41844 tokens!494)))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) (and b!3258193 b_free!86435) (and b!3258182 b_free!86427 (= (toChars!7255 (transformation!5280 (h!41845 rules!2135))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) (and b!3259028 b_free!86447 (= (toChars!7255 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toChars!7255 (transformation!5280 (rule!7752 separatorToken!241))))) b_lambda!90019)))

(declare-fun b_lambda!90021 () Bool)

(assert (= b_lambda!90011 (or b!3258175 b_lambda!90021)))

(declare-fun bs!545247 () Bool)

(declare-fun d!901239 () Bool)

(assert (= bs!545247 (and d!901239 b!3258175)))

(assert (=> bs!545247 (= (dynLambda!14845 lambda!118491 (h!41844 tokens!494)) (not (isSeparator!5280 (rule!7752 (h!41844 tokens!494)))))))

(assert (=> d!901235 d!901239))

(declare-fun b_lambda!90023 () Bool)

(assert (= b_lambda!89973 (or b!3258175 b_lambda!90023)))

(assert (=> b!3258413 d!901239))

(declare-fun b_lambda!90025 () Bool)

(assert (= b_lambda!89987 (or (and b!3259052 b_free!86449 (= (toValue!7396 (transformation!5280 (rule!7752 (h!41844 (t!245713 tokens!494))))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3258193 b_free!86433 (= (toValue!7396 (transformation!5280 (rule!7752 separatorToken!241))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3259028 b_free!86445 (= (toValue!7396 (transformation!5280 (h!41845 (t!245714 rules!2135)))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3258182 b_free!86425 (= (toValue!7396 (transformation!5280 (h!41845 rules!2135))) (toValue!7396 (transformation!5280 (rule!7752 (h!41844 tokens!494)))))) (and b!3258189 b_free!86429) b_lambda!90025)))

(check-sat (not b!3259012) (not b_lambda!90021) (not d!901153) (not b!3258977) (not d!901077) (not b!3258515) (not b!3258617) (not b!3259036) (not b!3259013) (not b_next!87153) (not bm!235953) (not b!3258382) b_and!219931 (not d!901125) (not b!3258803) (not b!3258479) (not d!901063) (not b!3258565) (not b!3259017) (not d!901119) (not d!901093) (not b!3258576) (not b!3258671) (not tb!164021) (not b!3258833) (not b!3258501) (not b!3258998) (not b!3258566) (not d!901003) (not b!3258999) (not b_next!87135) (not d!901111) (not d!901189) (not b!3258819) b_and!219935 (not b_lambda!90019) (not bm!235955) (not b!3258799) (not d!901107) (not d!901007) (not b!3258616) (not b!3258679) (not b!3258675) (not d!901185) (not b!3259038) b_and!219929 (not b!3258633) (not d!901055) (not b!3258542) (not d!901047) (not b!3258590) (not b!3258612) (not b!3258494) (not b_lambda!90013) (not b!3258673) (not b!3258530) b_and!219971 (not b!3258821) (not b!3259037) (not b!3258528) (not b!3258676) (not b!3258628) (not d!901073) (not b!3258544) (not b!3258582) (not b!3258493) (not b!3258477) (not d!901091) (not d!901061) (not d!901133) (not b!3258794) (not b!3259027) b_and!219933 (not bm!235961) (not b!3258713) (not b!3258512) (not b!3258712) (not b!3258684) (not b!3258491) (not b!3258687) (not d!901079) (not b!3258378) (not b!3259026) (not d!901051) (not bm!235960) (not b!3258390) (not d!901135) (not b!3258589) (not b!3259033) (not b!3258551) (not b!3258797) (not d!901065) (not bm!235949) (not b!3258553) (not b_lambda!90025) (not bm!235939) (not d!901105) (not b!3258828) (not d!901181) (not b!3258496) (not b!3258792) (not b!3258791) (not b!3259049) (not d!901081) (not d!901053) (not b!3259035) (not b!3258570) (not b_next!87149) (not b!3258588) (not d!901147) (not d!901187) (not b!3258592) (not d!901067) (not b!3258414) (not d!901235) (not b!3258986) tp_is_empty!17341 (not b!3258678) b_and!219975 (not b!3258575) (not b!3258795) (not b_next!87139) (not b!3258808) (not b!3258622) (not b!3258798) (not d!901131) (not d!901145) (not b!3258618) (not b!3259016) (not d!901019) (not b!3258478) (not b_next!87151) (not d!901083) (not b_next!87133) (not b!3258686) (not b!3258578) (not b!3258481) (not b_lambda!90017) (not tb!164027) (not b!3258826) (not b_next!87155) (not bm!235935) (not b!3258561) (not d!901115) (not b!3258672) (not b!3258611) (not b!3258822) (not b!3259050) (not b!3258492) b_and!219937 b_and!219977 (not b_lambda!90023) (not b!3258389) (not b!3258805) (not b!3258796) (not bm!235954) (not b!3259015) (not bm!235940) (not b!3258674) (not d!901071) (not b!3258806) (not b!3258482) (not d!901183) (not b!3258514) (not b!3259011) (not b_next!87137) (not b!3258485) (not d!901069) (not b!3258529) (not b!3258807) (not b!3258804) (not d!901075) (not b!3258598) (not b!3258531) (not d!901233) (not b!3258541) (not b_lambda!90015) (not d!901141) b_and!219927 b_and!219973 (not d!901177) (not b!3258379) (not b!3258829) (not b!3259051) (not b!3258825) (not bm!235950) (not d!901103) (not b!3258495) (not b!3258800) (not b_next!87129) (not b!3258563) (not bm!235951) (not b!3258556) (not b_next!87131) (not b!3258634) (not d!901113) (not b!3258388) (not d!901179) (not d!901095) (not b!3258591) (not tb!164033) (not b!3258993) (not d!901117) (not d!901099) (not b!3258579) (not b!3258801))
(check-sat b_and!219929 b_and!219971 b_and!219933 (not b_next!87149) b_and!219975 (not b_next!87139) (not b_next!87155) (not b_next!87137) b_and!219927 b_and!219973 (not b_next!87153) b_and!219931 (not b_next!87135) b_and!219935 (not b_next!87151) (not b_next!87133) b_and!219937 b_and!219977 (not b_next!87129) (not b_next!87131))
