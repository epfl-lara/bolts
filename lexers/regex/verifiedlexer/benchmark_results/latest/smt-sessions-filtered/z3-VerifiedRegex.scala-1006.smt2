; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50096 () Bool)

(assert start!50096)

(declare-fun b!543035 () Bool)

(declare-fun b_free!15049 () Bool)

(declare-fun b_next!15065 () Bool)

(assert (=> b!543035 (= b_free!15049 (not b_next!15065))))

(declare-fun tp!172769 () Bool)

(declare-fun b_and!53019 () Bool)

(assert (=> b!543035 (= tp!172769 b_and!53019)))

(declare-fun b_free!15051 () Bool)

(declare-fun b_next!15067 () Bool)

(assert (=> b!543035 (= b_free!15051 (not b_next!15067))))

(declare-fun tp!172768 () Bool)

(declare-fun b_and!53021 () Bool)

(assert (=> b!543035 (= tp!172768 b_and!53021)))

(declare-fun b!543015 () Bool)

(declare-fun b_free!15053 () Bool)

(declare-fun b_next!15069 () Bool)

(assert (=> b!543015 (= b_free!15053 (not b_next!15069))))

(declare-fun tp!172764 () Bool)

(declare-fun b_and!53023 () Bool)

(assert (=> b!543015 (= tp!172764 b_and!53023)))

(declare-fun b_free!15055 () Bool)

(declare-fun b_next!15071 () Bool)

(assert (=> b!543015 (= b_free!15055 (not b_next!15071))))

(declare-fun tp!172767 () Bool)

(declare-fun b_and!53025 () Bool)

(assert (=> b!543015 (= tp!172767 b_and!53025)))

(declare-datatypes ((C!3588 0))(
  ( (C!3589 (val!2020 Int)) )
))
(declare-datatypes ((Regex!1333 0))(
  ( (ElementMatch!1333 (c!102598 C!3588)) (Concat!2356 (regOne!3178 Regex!1333) (regTwo!3178 Regex!1333)) (EmptyExpr!1333) (Star!1333 (reg!1662 Regex!1333)) (EmptyLang!1333) (Union!1333 (regOne!3179 Regex!1333) (regTwo!3179 Regex!1333)) )
))
(declare-datatypes ((List!5341 0))(
  ( (Nil!5331) (Cons!5331 (h!10732 (_ BitVec 16)) (t!74498 List!5341)) )
))
(declare-datatypes ((List!5342 0))(
  ( (Nil!5332) (Cons!5332 (h!10733 C!3588) (t!74499 List!5342)) )
))
(declare-datatypes ((IArray!3433 0))(
  ( (IArray!3434 (innerList!1774 List!5342)) )
))
(declare-datatypes ((Conc!1716 0))(
  ( (Node!1716 (left!4424 Conc!1716) (right!4754 Conc!1716) (csize!3662 Int) (cheight!1927 Int)) (Leaf!2723 (xs!4353 IArray!3433) (csize!3663 Int)) (Empty!1716) )
))
(declare-datatypes ((BalanceConc!3440 0))(
  ( (BalanceConc!3441 (c!102599 Conc!1716)) )
))
(declare-datatypes ((TokenValue!1023 0))(
  ( (FloatLiteralValue!2046 (text!7606 List!5341)) (TokenValueExt!1022 (__x!3944 Int)) (Broken!5115 (value!33312 List!5341)) (Object!1032) (End!1023) (Def!1023) (Underscore!1023) (Match!1023) (Else!1023) (Error!1023) (Case!1023) (If!1023) (Extends!1023) (Abstract!1023) (Class!1023) (Val!1023) (DelimiterValue!2046 (del!1083 List!5341)) (KeywordValue!1029 (value!33313 List!5341)) (CommentValue!2046 (value!33314 List!5341)) (WhitespaceValue!2046 (value!33315 List!5341)) (IndentationValue!1023 (value!33316 List!5341)) (String!6858) (Int32!1023) (Broken!5116 (value!33317 List!5341)) (Boolean!1024) (Unit!9324) (OperatorValue!1026 (op!1083 List!5341)) (IdentifierValue!2046 (value!33318 List!5341)) (IdentifierValue!2047 (value!33319 List!5341)) (WhitespaceValue!2047 (value!33320 List!5341)) (True!2046) (False!2046) (Broken!5117 (value!33321 List!5341)) (Broken!5118 (value!33322 List!5341)) (True!2047) (RightBrace!1023) (RightBracket!1023) (Colon!1023) (Null!1023) (Comma!1023) (LeftBracket!1023) (False!2047) (LeftBrace!1023) (ImaginaryLiteralValue!1023 (text!7607 List!5341)) (StringLiteralValue!3069 (value!33323 List!5341)) (EOFValue!1023 (value!33324 List!5341)) (IdentValue!1023 (value!33325 List!5341)) (DelimiterValue!2047 (value!33326 List!5341)) (DedentValue!1023 (value!33327 List!5341)) (NewLineValue!1023 (value!33328 List!5341)) (IntegerValue!3069 (value!33329 (_ BitVec 32)) (text!7608 List!5341)) (IntegerValue!3070 (value!33330 Int) (text!7609 List!5341)) (Times!1023) (Or!1023) (Equal!1023) (Minus!1023) (Broken!5119 (value!33331 List!5341)) (And!1023) (Div!1023) (LessEqual!1023) (Mod!1023) (Concat!2357) (Not!1023) (Plus!1023) (SpaceValue!1023 (value!33332 List!5341)) (IntegerValue!3071 (value!33333 Int) (text!7610 List!5341)) (StringLiteralValue!3070 (text!7611 List!5341)) (FloatLiteralValue!2047 (text!7612 List!5341)) (BytesLiteralValue!1023 (value!33334 List!5341)) (CommentValue!2047 (value!33335 List!5341)) (StringLiteralValue!3071 (value!33336 List!5341)) (ErrorTokenValue!1023 (msg!1084 List!5341)) )
))
(declare-datatypes ((String!6859 0))(
  ( (String!6860 (value!33337 String)) )
))
(declare-datatypes ((TokenValueInjection!1814 0))(
  ( (TokenValueInjection!1815 (toValue!1846 Int) (toChars!1705 Int)) )
))
(declare-datatypes ((Rule!1798 0))(
  ( (Rule!1799 (regex!999 Regex!1333) (tag!1261 String!6859) (isSeparator!999 Bool) (transformation!999 TokenValueInjection!1814)) )
))
(declare-datatypes ((Token!1734 0))(
  ( (Token!1735 (value!33338 TokenValue!1023) (rule!1711 Rule!1798) (size!4278 Int) (originalCharacters!1038 List!5342)) )
))
(declare-datatypes ((tuple2!6376 0))(
  ( (tuple2!6377 (_1!3452 Token!1734) (_2!3452 List!5342)) )
))
(declare-datatypes ((Option!1349 0))(
  ( (None!1348) (Some!1348 (v!16161 tuple2!6376)) )
))
(declare-fun lt!226838 () Option!1349)

(declare-fun b!543005 () Bool)

(declare-fun lt!226861 () List!5342)

(declare-fun lt!226840 () Int)

(declare-fun e!328082 () Bool)

(declare-fun lt!226829 () List!5342)

(declare-fun lt!226845 () TokenValue!1023)

(declare-fun lt!226825 () tuple2!6376)

(assert (=> b!543005 (= e!328082 (and (= (size!4278 (_1!3452 (v!16161 lt!226838))) lt!226840) (= (originalCharacters!1038 (_1!3452 (v!16161 lt!226838))) lt!226861) (= lt!226825 (tuple2!6377 (Token!1735 lt!226845 (rule!1711 (_1!3452 (v!16161 lt!226838))) lt!226840 lt!226861) lt!226829))))))

(declare-fun b!543006 () Bool)

(declare-datatypes ((Unit!9325 0))(
  ( (Unit!9326) )
))
(declare-fun e!328060 () Unit!9325)

(declare-fun Unit!9327 () Unit!9325)

(assert (=> b!543006 (= e!328060 Unit!9327)))

(declare-fun b!543007 () Bool)

(declare-fun e!328074 () Bool)

(declare-fun e!328081 () Bool)

(assert (=> b!543007 (= e!328074 e!328081)))

(declare-fun res!231402 () Bool)

(assert (=> b!543007 (=> (not res!231402) (not e!328081))))

(declare-fun suffix!1342 () List!5342)

(declare-fun token!491 () Token!1734)

(declare-fun lt!226858 () tuple2!6376)

(assert (=> b!543007 (= res!231402 (and (= (_1!3452 lt!226858) token!491) (= (_2!3452 lt!226858) suffix!1342)))))

(declare-fun lt!226859 () Option!1349)

(declare-fun get!2013 (Option!1349) tuple2!6376)

(assert (=> b!543007 (= lt!226858 (get!2013 lt!226859))))

(declare-fun b!543008 () Bool)

(declare-fun e!328076 () Bool)

(declare-fun e!328069 () Bool)

(assert (=> b!543008 (= e!328076 (not e!328069))))

(declare-fun res!231398 () Bool)

(assert (=> b!543008 (=> res!231398 e!328069)))

(declare-fun input!2705 () List!5342)

(declare-fun lt!226855 () List!5342)

(declare-fun isPrefix!641 (List!5342 List!5342) Bool)

(assert (=> b!543008 (= res!231398 (not (isPrefix!641 input!2705 lt!226855)))))

(declare-fun lt!226851 () List!5342)

(assert (=> b!543008 (isPrefix!641 lt!226851 lt!226855)))

(declare-fun lt!226836 () Unit!9325)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!492 (List!5342 List!5342) Unit!9325)

(assert (=> b!543008 (= lt!226836 (lemmaConcatTwoListThenFirstIsPrefix!492 lt!226851 suffix!1342))))

(declare-fun lt!226832 () List!5342)

(assert (=> b!543008 (isPrefix!641 input!2705 lt!226832)))

(declare-fun lt!226857 () Unit!9325)

(assert (=> b!543008 (= lt!226857 (lemmaConcatTwoListThenFirstIsPrefix!492 input!2705 suffix!1342))))

(assert (=> b!543008 e!328082))

(declare-fun res!231401 () Bool)

(assert (=> b!543008 (=> (not res!231401) (not e!328082))))

(assert (=> b!543008 (= res!231401 (= (value!33338 (_1!3452 (v!16161 lt!226838))) lt!226845))))

(declare-fun lt!226831 () BalanceConc!3440)

(declare-fun apply!1274 (TokenValueInjection!1814 BalanceConc!3440) TokenValue!1023)

(assert (=> b!543008 (= lt!226845 (apply!1274 (transformation!999 (rule!1711 (_1!3452 (v!16161 lt!226838)))) lt!226831))))

(declare-fun seqFromList!1197 (List!5342) BalanceConc!3440)

(assert (=> b!543008 (= lt!226831 (seqFromList!1197 lt!226861))))

(declare-fun lt!226847 () Unit!9325)

(declare-fun lemmaInv!147 (TokenValueInjection!1814) Unit!9325)

(assert (=> b!543008 (= lt!226847 (lemmaInv!147 (transformation!999 (rule!1711 token!491))))))

(declare-fun lt!226848 () Unit!9325)

(assert (=> b!543008 (= lt!226848 (lemmaInv!147 (transformation!999 (rule!1711 (_1!3452 (v!16161 lt!226838))))))))

(declare-datatypes ((LexerInterface!885 0))(
  ( (LexerInterfaceExt!882 (__x!3945 Int)) (Lexer!883) )
))
(declare-fun thiss!22590 () LexerInterface!885)

(declare-fun ruleValid!219 (LexerInterface!885 Rule!1798) Bool)

(assert (=> b!543008 (ruleValid!219 thiss!22590 (rule!1711 token!491))))

(declare-datatypes ((List!5343 0))(
  ( (Nil!5333) (Cons!5333 (h!10734 Rule!1798) (t!74500 List!5343)) )
))
(declare-fun rules!3103 () List!5343)

(declare-fun lt!226841 () Unit!9325)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!78 (LexerInterface!885 Rule!1798 List!5343) Unit!9325)

(assert (=> b!543008 (= lt!226841 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!78 thiss!22590 (rule!1711 token!491) rules!3103))))

(assert (=> b!543008 (ruleValid!219 thiss!22590 (rule!1711 (_1!3452 (v!16161 lt!226838))))))

(declare-fun lt!226826 () Unit!9325)

(assert (=> b!543008 (= lt!226826 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!78 thiss!22590 (rule!1711 (_1!3452 (v!16161 lt!226838))) rules!3103))))

(assert (=> b!543008 (isPrefix!641 input!2705 input!2705)))

(declare-fun lt!226839 () Unit!9325)

(declare-fun lemmaIsPrefixRefl!381 (List!5342 List!5342) Unit!9325)

(assert (=> b!543008 (= lt!226839 (lemmaIsPrefixRefl!381 input!2705 input!2705))))

(assert (=> b!543008 (= (_2!3452 (v!16161 lt!226838)) lt!226829)))

(declare-fun lt!226863 () Unit!9325)

(declare-fun lemmaSamePrefixThenSameSuffix!368 (List!5342 List!5342 List!5342 List!5342 List!5342) Unit!9325)

(assert (=> b!543008 (= lt!226863 (lemmaSamePrefixThenSameSuffix!368 lt!226861 (_2!3452 (v!16161 lt!226838)) lt!226861 lt!226829 input!2705))))

(declare-fun getSuffix!164 (List!5342 List!5342) List!5342)

(assert (=> b!543008 (= lt!226829 (getSuffix!164 input!2705 lt!226861))))

(declare-fun lt!226830 () List!5342)

(assert (=> b!543008 (isPrefix!641 lt!226861 lt!226830)))

(declare-fun ++!1487 (List!5342 List!5342) List!5342)

(assert (=> b!543008 (= lt!226830 (++!1487 lt!226861 (_2!3452 (v!16161 lt!226838))))))

(declare-fun lt!226856 () Unit!9325)

(assert (=> b!543008 (= lt!226856 (lemmaConcatTwoListThenFirstIsPrefix!492 lt!226861 (_2!3452 (v!16161 lt!226838))))))

(declare-fun lt!226849 () Unit!9325)

(declare-fun lemmaCharactersSize!78 (Token!1734) Unit!9325)

(assert (=> b!543008 (= lt!226849 (lemmaCharactersSize!78 token!491))))

(declare-fun lt!226846 () Unit!9325)

(assert (=> b!543008 (= lt!226846 (lemmaCharactersSize!78 (_1!3452 (v!16161 lt!226838))))))

(declare-fun lt!226828 () Unit!9325)

(assert (=> b!543008 (= lt!226828 e!328060)))

(declare-fun c!102597 () Bool)

(declare-fun lt!226835 () Int)

(assert (=> b!543008 (= c!102597 (> lt!226840 lt!226835))))

(declare-fun size!4279 (List!5342) Int)

(assert (=> b!543008 (= lt!226835 (size!4279 lt!226851))))

(assert (=> b!543008 (= lt!226840 (size!4279 lt!226861))))

(declare-fun list!2211 (BalanceConc!3440) List!5342)

(declare-fun charsOf!628 (Token!1734) BalanceConc!3440)

(assert (=> b!543008 (= lt!226861 (list!2211 (charsOf!628 (_1!3452 (v!16161 lt!226838)))))))

(assert (=> b!543008 (= lt!226838 (Some!1348 lt!226825))))

(assert (=> b!543008 (= lt!226825 (tuple2!6377 (_1!3452 (v!16161 lt!226838)) (_2!3452 (v!16161 lt!226838))))))

(declare-fun lt!226833 () Unit!9325)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!84 (List!5342 List!5342 List!5342 List!5342) Unit!9325)

(assert (=> b!543008 (= lt!226833 (lemmaConcatSameAndSameSizesThenSameLists!84 lt!226851 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!543009 () Bool)

(declare-fun e!328072 () Unit!9325)

(declare-fun Unit!9328 () Unit!9325)

(assert (=> b!543009 (= e!328072 Unit!9328)))

(declare-fun b!543010 () Bool)

(declare-fun e!328080 () Bool)

(assert (=> b!543010 (= e!328080 (= lt!226829 (_2!3452 (v!16161 lt!226838))))))

(declare-fun b!543011 () Bool)

(declare-fun e!328071 () Bool)

(assert (=> b!543011 (= e!328081 e!328071)))

(declare-fun res!231396 () Bool)

(assert (=> b!543011 (=> (not res!231396) (not e!328071))))

(get-info :version)

(assert (=> b!543011 (= res!231396 ((_ is Some!1348) lt!226838))))

(declare-fun maxPrefix!583 (LexerInterface!885 List!5343 List!5342) Option!1349)

(assert (=> b!543011 (= lt!226838 (maxPrefix!583 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!172761 () Bool)

(declare-fun e!328064 () Bool)

(declare-fun b!543012 () Bool)

(declare-fun e!328065 () Bool)

(declare-fun inv!21 (TokenValue!1023) Bool)

(assert (=> b!543012 (= e!328064 (and (inv!21 (value!33338 token!491)) e!328065 tp!172761))))

(declare-fun e!328062 () Bool)

(declare-fun b!543013 () Bool)

(declare-fun lt!226852 () TokenValue!1023)

(declare-fun lt!226837 () List!5342)

(assert (=> b!543013 (= e!328062 (and (= (size!4278 token!491) lt!226835) (= (originalCharacters!1038 token!491) lt!226851) (= (tuple2!6377 token!491 suffix!1342) (tuple2!6377 (Token!1735 lt!226852 (rule!1711 token!491) lt!226835 lt!226851) lt!226837))))))

(declare-fun e!328068 () Bool)

(assert (=> b!543015 (= e!328068 (and tp!172764 tp!172767))))

(declare-fun b!543016 () Bool)

(declare-fun Unit!9329 () Unit!9325)

(assert (=> b!543016 (= e!328072 Unit!9329)))

(declare-fun lt!226862 () Unit!9325)

(declare-fun lemmaSemiInverse!128 (TokenValueInjection!1814 BalanceConc!3440) Unit!9325)

(assert (=> b!543016 (= lt!226862 (lemmaSemiInverse!128 (transformation!999 (rule!1711 (_1!3452 (v!16161 lt!226838)))) lt!226831))))

(declare-fun lt!226842 () Unit!9325)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!4 (LexerInterface!885 List!5343 Rule!1798 List!5342 List!5342 List!5342 Rule!1798) Unit!9325)

(assert (=> b!543016 (= lt!226842 (lemmaMaxPrefixOutputsMaxPrefix!4 thiss!22590 rules!3103 (rule!1711 (_1!3452 (v!16161 lt!226838))) lt!226861 input!2705 input!2705 (rule!1711 token!491)))))

(declare-fun res!231392 () Bool)

(declare-fun matchR!492 (Regex!1333 List!5342) Bool)

(assert (=> b!543016 (= res!231392 (not (matchR!492 (regex!999 (rule!1711 token!491)) input!2705)))))

(declare-fun e!328059 () Bool)

(assert (=> b!543016 (=> (not res!231392) (not e!328059))))

(assert (=> b!543016 e!328059))

(declare-fun b!543017 () Bool)

(declare-fun res!231404 () Bool)

(assert (=> b!543017 (=> (not res!231404) (not e!328080))))

(assert (=> b!543017 (= res!231404 (= (_1!3452 (get!2013 lt!226838)) (_1!3452 (v!16161 lt!226838))))))

(declare-fun b!543018 () Bool)

(assert (=> b!543018 (= e!328059 false)))

(declare-fun b!543019 () Bool)

(declare-fun e!328075 () Bool)

(declare-fun e!328056 () Bool)

(assert (=> b!543019 (= e!328075 e!328056)))

(declare-fun res!231393 () Bool)

(assert (=> b!543019 (=> (not res!231393) (not e!328056))))

(assert (=> b!543019 (= res!231393 (= lt!226851 input!2705))))

(assert (=> b!543019 (= lt!226851 (list!2211 (charsOf!628 token!491)))))

(declare-fun b!543020 () Bool)

(declare-fun e!328063 () Bool)

(assert (=> b!543020 (= e!328063 e!328080)))

(declare-fun res!231394 () Bool)

(assert (=> b!543020 (=> (not res!231394) (not e!328080))))

(declare-fun isDefined!1161 (Option!1349) Bool)

(assert (=> b!543020 (= res!231394 (isDefined!1161 lt!226838))))

(declare-fun b!543021 () Bool)

(declare-fun res!231397 () Bool)

(declare-fun e!328073 () Bool)

(assert (=> b!543021 (=> res!231397 e!328073)))

(declare-fun isEmpty!3850 (List!5342) Bool)

(assert (=> b!543021 (= res!231397 (not (isEmpty!3850 (_2!3452 (v!16161 lt!226838)))))))

(declare-fun b!543022 () Bool)

(declare-fun Unit!9330 () Unit!9325)

(assert (=> b!543022 (= e!328060 Unit!9330)))

(assert (=> b!543022 false))

(declare-fun b!543023 () Bool)

(declare-fun e!328070 () Bool)

(declare-fun e!328067 () Bool)

(declare-fun tp!172770 () Bool)

(assert (=> b!543023 (= e!328070 (and e!328067 tp!172770))))

(declare-fun b!543024 () Bool)

(assert (=> b!543024 (= e!328069 e!328073)))

(declare-fun res!231411 () Bool)

(assert (=> b!543024 (=> res!231411 e!328073)))

(assert (=> b!543024 (= res!231411 (or (not (= lt!226840 lt!226835)) (not (= lt!226830 input!2705)) (not (= lt!226830 lt!226851))))))

(declare-fun lt!226827 () Unit!9325)

(declare-fun lt!226860 () BalanceConc!3440)

(assert (=> b!543024 (= lt!226827 (lemmaSemiInverse!128 (transformation!999 (rule!1711 token!491)) lt!226860))))

(declare-fun lt!226844 () Unit!9325)

(assert (=> b!543024 (= lt!226844 (lemmaSemiInverse!128 (transformation!999 (rule!1711 (_1!3452 (v!16161 lt!226838)))) lt!226831))))

(declare-fun lt!226834 () Unit!9325)

(assert (=> b!543024 (= lt!226834 e!328072)))

(declare-fun c!102596 () Bool)

(assert (=> b!543024 (= c!102596 (< lt!226840 lt!226835))))

(declare-fun e!328077 () Bool)

(assert (=> b!543024 e!328077))

(declare-fun res!231413 () Bool)

(assert (=> b!543024 (=> (not res!231413) (not e!328077))))

(declare-fun maxPrefixOneRule!298 (LexerInterface!885 Rule!1798 List!5342) Option!1349)

(assert (=> b!543024 (= res!231413 (= (maxPrefixOneRule!298 thiss!22590 (rule!1711 token!491) lt!226832) (Some!1348 (tuple2!6377 (Token!1735 lt!226852 (rule!1711 token!491) lt!226835 lt!226851) suffix!1342))))))

(declare-fun lt!226843 () Unit!9325)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!50 (LexerInterface!885 List!5343 List!5342 List!5342 List!5342 Rule!1798) Unit!9325)

(assert (=> b!543024 (= lt!226843 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!50 thiss!22590 rules!3103 lt!226851 lt!226832 suffix!1342 (rule!1711 token!491)))))

(assert (=> b!543024 (= (maxPrefixOneRule!298 thiss!22590 (rule!1711 (_1!3452 (v!16161 lt!226838))) input!2705) (Some!1348 (tuple2!6377 (Token!1735 lt!226845 (rule!1711 (_1!3452 (v!16161 lt!226838))) lt!226840 lt!226861) (_2!3452 (v!16161 lt!226838)))))))

(declare-fun lt!226850 () Unit!9325)

(assert (=> b!543024 (= lt!226850 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!50 thiss!22590 rules!3103 lt!226861 input!2705 (_2!3452 (v!16161 lt!226838)) (rule!1711 (_1!3452 (v!16161 lt!226838)))))))

(assert (=> b!543024 e!328062))

(declare-fun res!231409 () Bool)

(assert (=> b!543024 (=> (not res!231409) (not e!328062))))

(assert (=> b!543024 (= res!231409 (= (value!33338 token!491) lt!226852))))

(assert (=> b!543024 (= lt!226852 (apply!1274 (transformation!999 (rule!1711 token!491)) lt!226860))))

(assert (=> b!543024 (= lt!226860 (seqFromList!1197 lt!226851))))

(assert (=> b!543024 (= suffix!1342 lt!226837)))

(declare-fun lt!226853 () Unit!9325)

(assert (=> b!543024 (= lt!226853 (lemmaSamePrefixThenSameSuffix!368 lt!226851 suffix!1342 lt!226851 lt!226837 lt!226832))))

(assert (=> b!543024 (= lt!226837 (getSuffix!164 lt!226832 lt!226851))))

(declare-fun b!543025 () Bool)

(declare-fun e!328057 () Bool)

(declare-fun tp_is_empty!3021 () Bool)

(declare-fun tp!172765 () Bool)

(assert (=> b!543025 (= e!328057 (and tp_is_empty!3021 tp!172765))))

(declare-fun b!543026 () Bool)

(declare-fun res!231403 () Bool)

(assert (=> b!543026 (=> (not res!231403) (not e!328062))))

(assert (=> b!543026 (= res!231403 (= (size!4278 token!491) (size!4279 (originalCharacters!1038 token!491))))))

(declare-fun b!543027 () Bool)

(declare-fun res!231405 () Bool)

(assert (=> b!543027 (=> (not res!231405) (not e!328075))))

(declare-fun isEmpty!3851 (List!5343) Bool)

(assert (=> b!543027 (= res!231405 (not (isEmpty!3851 rules!3103)))))

(declare-fun b!543028 () Bool)

(declare-fun res!231400 () Bool)

(assert (=> b!543028 (=> (not res!231400) (not e!328075))))

(declare-fun rulesInvariant!848 (LexerInterface!885 List!5343) Bool)

(assert (=> b!543028 (= res!231400 (rulesInvariant!848 thiss!22590 rules!3103))))

(declare-fun b!543029 () Bool)

(assert (=> b!543029 (= e!328056 e!328074)))

(declare-fun res!231399 () Bool)

(assert (=> b!543029 (=> (not res!231399) (not e!328074))))

(assert (=> b!543029 (= res!231399 (isDefined!1161 lt!226859))))

(assert (=> b!543029 (= lt!226859 (maxPrefix!583 thiss!22590 rules!3103 lt!226832))))

(assert (=> b!543029 (= lt!226832 (++!1487 input!2705 suffix!1342))))

(declare-fun b!543030 () Bool)

(declare-fun res!231414 () Bool)

(assert (=> b!543030 (=> res!231414 e!328073)))

(declare-fun contains!1241 (List!5343 Rule!1798) Bool)

(assert (=> b!543030 (= res!231414 (not (contains!1241 rules!3103 (rule!1711 (_1!3452 (v!16161 lt!226838))))))))

(declare-fun b!543031 () Bool)

(declare-fun res!231410 () Bool)

(assert (=> b!543031 (=> (not res!231410) (not e!328075))))

(assert (=> b!543031 (= res!231410 (not (isEmpty!3850 input!2705)))))

(declare-fun b!543032 () Bool)

(assert (=> b!543032 (= e!328073 true)))

(declare-fun lt!226854 () Bool)

(assert (=> b!543032 (= lt!226854 (contains!1241 rules!3103 (rule!1711 token!491)))))

(declare-fun b!543033 () Bool)

(declare-fun res!231395 () Bool)

(assert (=> b!543033 (=> (not res!231395) (not e!328082))))

(assert (=> b!543033 (= res!231395 (= (size!4278 (_1!3452 (v!16161 lt!226838))) (size!4279 (originalCharacters!1038 (_1!3452 (v!16161 lt!226838))))))))

(declare-fun b!543034 () Bool)

(declare-fun res!231408 () Bool)

(assert (=> b!543034 (=> res!231408 e!328073)))

(assert (=> b!543034 (= res!231408 (or (not (= lt!226861 lt!226851)) (not (= (originalCharacters!1038 (_1!3452 (v!16161 lt!226838))) (originalCharacters!1038 token!491)))))))

(declare-fun e!328079 () Bool)

(assert (=> b!543035 (= e!328079 (and tp!172769 tp!172768))))

(declare-fun b!543036 () Bool)

(declare-fun e!328078 () Bool)

(declare-fun tp!172762 () Bool)

(assert (=> b!543036 (= e!328078 (and tp_is_empty!3021 tp!172762))))

(declare-fun tp!172766 () Bool)

(declare-fun b!543037 () Bool)

(declare-fun inv!6685 (String!6859) Bool)

(declare-fun inv!6688 (TokenValueInjection!1814) Bool)

(assert (=> b!543037 (= e!328065 (and tp!172766 (inv!6685 (tag!1261 (rule!1711 token!491))) (inv!6688 (transformation!999 (rule!1711 token!491))) e!328068))))

(declare-fun tp!172763 () Bool)

(declare-fun b!543014 () Bool)

(assert (=> b!543014 (= e!328067 (and tp!172763 (inv!6685 (tag!1261 (h!10734 rules!3103))) (inv!6688 (transformation!999 (h!10734 rules!3103))) e!328079))))

(declare-fun res!231412 () Bool)

(assert (=> start!50096 (=> (not res!231412) (not e!328075))))

(assert (=> start!50096 (= res!231412 ((_ is Lexer!883) thiss!22590))))

(assert (=> start!50096 e!328075))

(assert (=> start!50096 e!328078))

(assert (=> start!50096 e!328070))

(declare-fun inv!6689 (Token!1734) Bool)

(assert (=> start!50096 (and (inv!6689 token!491) e!328064)))

(assert (=> start!50096 true))

(assert (=> start!50096 e!328057))

(declare-fun b!543038 () Bool)

(assert (=> b!543038 (= e!328077 e!328063)))

(declare-fun res!231406 () Bool)

(assert (=> b!543038 (=> res!231406 e!328063)))

(assert (=> b!543038 (= res!231406 (>= lt!226840 lt!226835))))

(declare-fun b!543039 () Bool)

(assert (=> b!543039 (= e!328071 e!328076)))

(declare-fun res!231407 () Bool)

(assert (=> b!543039 (=> (not res!231407) (not e!328076))))

(assert (=> b!543039 (= res!231407 (= lt!226855 lt!226832))))

(assert (=> b!543039 (= lt!226855 (++!1487 lt!226851 suffix!1342))))

(assert (= (and start!50096 res!231412) b!543027))

(assert (= (and b!543027 res!231405) b!543028))

(assert (= (and b!543028 res!231400) b!543031))

(assert (= (and b!543031 res!231410) b!543019))

(assert (= (and b!543019 res!231393) b!543029))

(assert (= (and b!543029 res!231399) b!543007))

(assert (= (and b!543007 res!231402) b!543011))

(assert (= (and b!543011 res!231396) b!543039))

(assert (= (and b!543039 res!231407) b!543008))

(assert (= (and b!543008 c!102597) b!543022))

(assert (= (and b!543008 (not c!102597)) b!543006))

(assert (= (and b!543008 res!231401) b!543033))

(assert (= (and b!543033 res!231395) b!543005))

(assert (= (and b!543008 (not res!231398)) b!543024))

(assert (= (and b!543024 res!231409) b!543026))

(assert (= (and b!543026 res!231403) b!543013))

(assert (= (and b!543024 res!231413) b!543038))

(assert (= (and b!543038 (not res!231406)) b!543020))

(assert (= (and b!543020 res!231394) b!543017))

(assert (= (and b!543017 res!231404) b!543010))

(assert (= (and b!543024 c!102596) b!543016))

(assert (= (and b!543024 (not c!102596)) b!543009))

(assert (= (and b!543016 res!231392) b!543018))

(assert (= (and b!543024 (not res!231411)) b!543021))

(assert (= (and b!543021 (not res!231397)) b!543034))

(assert (= (and b!543034 (not res!231408)) b!543030))

(assert (= (and b!543030 (not res!231414)) b!543032))

(assert (= (and start!50096 ((_ is Cons!5332) suffix!1342)) b!543036))

(assert (= b!543014 b!543035))

(assert (= b!543023 b!543014))

(assert (= (and start!50096 ((_ is Cons!5333) rules!3103)) b!543023))

(assert (= b!543037 b!543015))

(assert (= b!543012 b!543037))

(assert (= start!50096 b!543012))

(assert (= (and start!50096 ((_ is Cons!5332) input!2705)) b!543025))

(declare-fun m!791033 () Bool)

(assert (=> b!543028 m!791033))

(declare-fun m!791035 () Bool)

(assert (=> b!543024 m!791035))

(declare-fun m!791037 () Bool)

(assert (=> b!543024 m!791037))

(declare-fun m!791039 () Bool)

(assert (=> b!543024 m!791039))

(declare-fun m!791041 () Bool)

(assert (=> b!543024 m!791041))

(declare-fun m!791043 () Bool)

(assert (=> b!543024 m!791043))

(declare-fun m!791045 () Bool)

(assert (=> b!543024 m!791045))

(declare-fun m!791047 () Bool)

(assert (=> b!543024 m!791047))

(declare-fun m!791049 () Bool)

(assert (=> b!543024 m!791049))

(declare-fun m!791051 () Bool)

(assert (=> b!543024 m!791051))

(declare-fun m!791053 () Bool)

(assert (=> b!543024 m!791053))

(declare-fun m!791055 () Bool)

(assert (=> b!543037 m!791055))

(declare-fun m!791057 () Bool)

(assert (=> b!543037 m!791057))

(declare-fun m!791059 () Bool)

(assert (=> b!543014 m!791059))

(declare-fun m!791061 () Bool)

(assert (=> b!543014 m!791061))

(declare-fun m!791063 () Bool)

(assert (=> b!543008 m!791063))

(declare-fun m!791065 () Bool)

(assert (=> b!543008 m!791065))

(declare-fun m!791067 () Bool)

(assert (=> b!543008 m!791067))

(declare-fun m!791069 () Bool)

(assert (=> b!543008 m!791069))

(declare-fun m!791071 () Bool)

(assert (=> b!543008 m!791071))

(declare-fun m!791073 () Bool)

(assert (=> b!543008 m!791073))

(declare-fun m!791075 () Bool)

(assert (=> b!543008 m!791075))

(declare-fun m!791077 () Bool)

(assert (=> b!543008 m!791077))

(declare-fun m!791079 () Bool)

(assert (=> b!543008 m!791079))

(declare-fun m!791081 () Bool)

(assert (=> b!543008 m!791081))

(declare-fun m!791083 () Bool)

(assert (=> b!543008 m!791083))

(declare-fun m!791085 () Bool)

(assert (=> b!543008 m!791085))

(assert (=> b!543008 m!791079))

(declare-fun m!791087 () Bool)

(assert (=> b!543008 m!791087))

(declare-fun m!791089 () Bool)

(assert (=> b!543008 m!791089))

(declare-fun m!791091 () Bool)

(assert (=> b!543008 m!791091))

(declare-fun m!791093 () Bool)

(assert (=> b!543008 m!791093))

(declare-fun m!791095 () Bool)

(assert (=> b!543008 m!791095))

(declare-fun m!791097 () Bool)

(assert (=> b!543008 m!791097))

(declare-fun m!791099 () Bool)

(assert (=> b!543008 m!791099))

(declare-fun m!791101 () Bool)

(assert (=> b!543008 m!791101))

(declare-fun m!791103 () Bool)

(assert (=> b!543008 m!791103))

(declare-fun m!791105 () Bool)

(assert (=> b!543008 m!791105))

(declare-fun m!791107 () Bool)

(assert (=> b!543008 m!791107))

(declare-fun m!791109 () Bool)

(assert (=> b!543008 m!791109))

(declare-fun m!791111 () Bool)

(assert (=> b!543008 m!791111))

(declare-fun m!791113 () Bool)

(assert (=> b!543008 m!791113))

(declare-fun m!791115 () Bool)

(assert (=> b!543008 m!791115))

(declare-fun m!791117 () Bool)

(assert (=> b!543017 m!791117))

(declare-fun m!791119 () Bool)

(assert (=> b!543027 m!791119))

(assert (=> b!543016 m!791037))

(declare-fun m!791121 () Bool)

(assert (=> b!543016 m!791121))

(declare-fun m!791123 () Bool)

(assert (=> b!543016 m!791123))

(declare-fun m!791125 () Bool)

(assert (=> b!543030 m!791125))

(declare-fun m!791127 () Bool)

(assert (=> b!543007 m!791127))

(declare-fun m!791129 () Bool)

(assert (=> b!543031 m!791129))

(declare-fun m!791131 () Bool)

(assert (=> b!543029 m!791131))

(declare-fun m!791133 () Bool)

(assert (=> b!543029 m!791133))

(declare-fun m!791135 () Bool)

(assert (=> b!543029 m!791135))

(declare-fun m!791137 () Bool)

(assert (=> b!543011 m!791137))

(declare-fun m!791139 () Bool)

(assert (=> b!543021 m!791139))

(declare-fun m!791141 () Bool)

(assert (=> b!543033 m!791141))

(declare-fun m!791143 () Bool)

(assert (=> start!50096 m!791143))

(declare-fun m!791145 () Bool)

(assert (=> b!543032 m!791145))

(declare-fun m!791147 () Bool)

(assert (=> b!543020 m!791147))

(declare-fun m!791149 () Bool)

(assert (=> b!543039 m!791149))

(declare-fun m!791151 () Bool)

(assert (=> b!543026 m!791151))

(declare-fun m!791153 () Bool)

(assert (=> b!543012 m!791153))

(declare-fun m!791155 () Bool)

(assert (=> b!543019 m!791155))

(assert (=> b!543019 m!791155))

(declare-fun m!791157 () Bool)

(assert (=> b!543019 m!791157))

(check-sat (not b!543039) b_and!53025 (not b!543037) (not b!543014) (not start!50096) (not b!543023) (not b!543025) (not b!543032) b_and!53019 (not b!543008) (not b!543024) (not b!543028) (not b!543030) (not b!543033) (not b!543007) tp_is_empty!3021 (not b_next!15069) (not b!543017) (not b!543016) (not b!543026) (not b!543031) (not b_next!15067) (not b!543012) (not b!543021) (not b!543011) (not b_next!15065) b_and!53023 (not b!543036) (not b_next!15071) (not b!543029) (not b!543019) b_and!53021 (not b!543027) (not b!543020))
(check-sat (not b_next!15069) b_and!53025 (not b_next!15067) (not b_next!15071) b_and!53021 b_and!53019 (not b_next!15065) b_and!53023)
