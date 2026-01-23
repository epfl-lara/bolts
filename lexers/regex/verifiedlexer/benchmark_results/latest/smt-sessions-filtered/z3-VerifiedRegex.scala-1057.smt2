; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53496 () Bool)

(assert start!53496)

(declare-fun b!578362 () Bool)

(declare-fun b_free!16077 () Bool)

(declare-fun b_next!16093 () Bool)

(assert (=> b!578362 (= b_free!16077 (not b_next!16093))))

(declare-fun tp!181019 () Bool)

(declare-fun b_and!56779 () Bool)

(assert (=> b!578362 (= tp!181019 b_and!56779)))

(declare-fun b_free!16079 () Bool)

(declare-fun b_next!16095 () Bool)

(assert (=> b!578362 (= b_free!16079 (not b_next!16095))))

(declare-fun tp!181023 () Bool)

(declare-fun b_and!56781 () Bool)

(assert (=> b!578362 (= tp!181023 b_and!56781)))

(declare-fun b!578361 () Bool)

(declare-fun b_free!16081 () Bool)

(declare-fun b_next!16097 () Bool)

(assert (=> b!578361 (= b_free!16081 (not b_next!16097))))

(declare-fun tp!181018 () Bool)

(declare-fun b_and!56783 () Bool)

(assert (=> b!578361 (= tp!181018 b_and!56783)))

(declare-fun b_free!16083 () Bool)

(declare-fun b_next!16099 () Bool)

(assert (=> b!578361 (= b_free!16083 (not b_next!16099))))

(declare-fun tp!181020 () Bool)

(declare-fun b_and!56785 () Bool)

(assert (=> b!578361 (= tp!181020 b_and!56785)))

(declare-fun b!578335 () Bool)

(declare-fun res!248734 () Bool)

(declare-fun e!349495 () Bool)

(assert (=> b!578335 (=> (not res!248734) (not e!349495))))

(declare-datatypes ((C!3792 0))(
  ( (C!3793 (val!2122 Int)) )
))
(declare-datatypes ((Regex!1435 0))(
  ( (ElementMatch!1435 (c!108311 C!3792)) (Concat!2560 (regOne!3382 Regex!1435) (regTwo!3382 Regex!1435)) (EmptyExpr!1435) (Star!1435 (reg!1764 Regex!1435)) (EmptyLang!1435) (Union!1435 (regOne!3383 Regex!1435) (regTwo!3383 Regex!1435)) )
))
(declare-datatypes ((String!7368 0))(
  ( (String!7369 (value!36219 String)) )
))
(declare-datatypes ((List!5686 0))(
  ( (Nil!5676) (Cons!5676 (h!11077 (_ BitVec 16)) (t!77721 List!5686)) )
))
(declare-datatypes ((TokenValue!1125 0))(
  ( (FloatLiteralValue!2250 (text!8320 List!5686)) (TokenValueExt!1124 (__x!4148 Int)) (Broken!5625 (value!36220 List!5686)) (Object!1134) (End!1125) (Def!1125) (Underscore!1125) (Match!1125) (Else!1125) (Error!1125) (Case!1125) (If!1125) (Extends!1125) (Abstract!1125) (Class!1125) (Val!1125) (DelimiterValue!2250 (del!1185 List!5686)) (KeywordValue!1131 (value!36221 List!5686)) (CommentValue!2250 (value!36222 List!5686)) (WhitespaceValue!2250 (value!36223 List!5686)) (IndentationValue!1125 (value!36224 List!5686)) (String!7370) (Int32!1125) (Broken!5626 (value!36225 List!5686)) (Boolean!1126) (Unit!10270) (OperatorValue!1128 (op!1185 List!5686)) (IdentifierValue!2250 (value!36226 List!5686)) (IdentifierValue!2251 (value!36227 List!5686)) (WhitespaceValue!2251 (value!36228 List!5686)) (True!2250) (False!2250) (Broken!5627 (value!36229 List!5686)) (Broken!5628 (value!36230 List!5686)) (True!2251) (RightBrace!1125) (RightBracket!1125) (Colon!1125) (Null!1125) (Comma!1125) (LeftBracket!1125) (False!2251) (LeftBrace!1125) (ImaginaryLiteralValue!1125 (text!8321 List!5686)) (StringLiteralValue!3375 (value!36231 List!5686)) (EOFValue!1125 (value!36232 List!5686)) (IdentValue!1125 (value!36233 List!5686)) (DelimiterValue!2251 (value!36234 List!5686)) (DedentValue!1125 (value!36235 List!5686)) (NewLineValue!1125 (value!36236 List!5686)) (IntegerValue!3375 (value!36237 (_ BitVec 32)) (text!8322 List!5686)) (IntegerValue!3376 (value!36238 Int) (text!8323 List!5686)) (Times!1125) (Or!1125) (Equal!1125) (Minus!1125) (Broken!5629 (value!36239 List!5686)) (And!1125) (Div!1125) (LessEqual!1125) (Mod!1125) (Concat!2561) (Not!1125) (Plus!1125) (SpaceValue!1125 (value!36240 List!5686)) (IntegerValue!3377 (value!36241 Int) (text!8324 List!5686)) (StringLiteralValue!3376 (text!8325 List!5686)) (FloatLiteralValue!2251 (text!8326 List!5686)) (BytesLiteralValue!1125 (value!36242 List!5686)) (CommentValue!2251 (value!36243 List!5686)) (StringLiteralValue!3377 (value!36244 List!5686)) (ErrorTokenValue!1125 (msg!1186 List!5686)) )
))
(declare-datatypes ((List!5687 0))(
  ( (Nil!5677) (Cons!5677 (h!11078 C!3792) (t!77722 List!5687)) )
))
(declare-datatypes ((IArray!3637 0))(
  ( (IArray!3638 (innerList!1876 List!5687)) )
))
(declare-datatypes ((Conc!1818 0))(
  ( (Node!1818 (left!4637 Conc!1818) (right!4967 Conc!1818) (csize!3866 Int) (cheight!2029 Int)) (Leaf!2876 (xs!4455 IArray!3637) (csize!3867 Int)) (Empty!1818) )
))
(declare-datatypes ((BalanceConc!3644 0))(
  ( (BalanceConc!3645 (c!108312 Conc!1818)) )
))
(declare-datatypes ((TokenValueInjection!2018 0))(
  ( (TokenValueInjection!2019 (toValue!1964 Int) (toChars!1823 Int)) )
))
(declare-datatypes ((Rule!2002 0))(
  ( (Rule!2003 (regex!1101 Regex!1435) (tag!1363 String!7368) (isSeparator!1101 Bool) (transformation!1101 TokenValueInjection!2018)) )
))
(declare-datatypes ((List!5688 0))(
  ( (Nil!5678) (Cons!5678 (h!11079 Rule!2002) (t!77723 List!5688)) )
))
(declare-fun rules!3103 () List!5688)

(declare-fun isEmpty!4099 (List!5688) Bool)

(assert (=> b!578335 (= res!248734 (not (isEmpty!4099 rules!3103)))))

(declare-fun b!578336 () Bool)

(declare-fun res!248718 () Bool)

(declare-fun e!349500 () Bool)

(assert (=> b!578336 (=> res!248718 e!349500)))

(declare-datatypes ((Token!1938 0))(
  ( (Token!1939 (value!36245 TokenValue!1125) (rule!1853 Rule!2002) (size!4520 Int) (originalCharacters!1140 List!5687)) )
))
(declare-datatypes ((tuple2!6660 0))(
  ( (tuple2!6661 (_1!3594 Token!1938) (_2!3594 List!5687)) )
))
(declare-datatypes ((Option!1452 0))(
  ( (None!1451) (Some!1451 (v!16314 tuple2!6660)) )
))
(declare-fun lt!244881 () Option!1452)

(declare-fun isEmpty!4100 (List!5687) Bool)

(assert (=> b!578336 (= res!248718 (not (isEmpty!4100 (_2!3594 (v!16314 lt!244881)))))))

(declare-fun lt!244882 () List!5687)

(declare-fun lt!244876 () List!5687)

(declare-fun b!578337 () Bool)

(declare-fun lt!244883 () Int)

(declare-fun e!349497 () Bool)

(declare-fun lt!244901 () tuple2!6660)

(declare-fun lt!244880 () TokenValue!1125)

(assert (=> b!578337 (= e!349497 (and (= (size!4520 (_1!3594 (v!16314 lt!244881))) lt!244883) (= (originalCharacters!1140 (_1!3594 (v!16314 lt!244881))) lt!244882) (= lt!244901 (tuple2!6661 (Token!1939 lt!244880 (rule!1853 (_1!3594 (v!16314 lt!244881))) lt!244883 lt!244882) lt!244876))))))

(declare-fun b!578339 () Bool)

(declare-fun e!349491 () Bool)

(declare-fun token!491 () Token!1938)

(declare-fun tp!181025 () Bool)

(declare-fun e!349502 () Bool)

(declare-fun inv!21 (TokenValue!1125) Bool)

(assert (=> b!578339 (= e!349491 (and (inv!21 (value!36245 token!491)) e!349502 tp!181025))))

(declare-fun lt!244896 () List!5687)

(declare-fun lt!244907 () Option!1452)

(declare-fun input!2705 () List!5687)

(declare-fun b!578340 () Bool)

(declare-fun apply!1366 (TokenValueInjection!2018 BalanceConc!3644) TokenValue!1125)

(declare-fun seqFromList!1289 (List!5687) BalanceConc!3644)

(declare-fun size!4521 (List!5687) Int)

(declare-fun getSuffix!254 (List!5687 List!5687) List!5687)

(assert (=> b!578340 (= e!349500 (= lt!244907 (Some!1451 (tuple2!6661 (Token!1939 (apply!1366 (transformation!1101 (rule!1853 token!491)) (seqFromList!1289 input!2705)) (rule!1853 token!491) (size!4521 input!2705) input!2705) (getSuffix!254 lt!244896 input!2705)))))))

(declare-fun b!578341 () Bool)

(declare-fun e!349499 () Bool)

(declare-fun e!349483 () Bool)

(assert (=> b!578341 (= e!349499 e!349483)))

(declare-fun res!248727 () Bool)

(assert (=> b!578341 (=> (not res!248727) (not e!349483))))

(declare-fun isDefined!1263 (Option!1452) Bool)

(assert (=> b!578341 (= res!248727 (isDefined!1263 lt!244907))))

(declare-datatypes ((LexerInterface!987 0))(
  ( (LexerInterfaceExt!984 (__x!4149 Int)) (Lexer!985) )
))
(declare-fun thiss!22590 () LexerInterface!987)

(declare-fun maxPrefix!685 (LexerInterface!987 List!5688 List!5687) Option!1452)

(assert (=> b!578341 (= lt!244907 (maxPrefix!685 thiss!22590 rules!3103 lt!244896))))

(declare-fun suffix!1342 () List!5687)

(declare-fun ++!1589 (List!5687 List!5687) List!5687)

(assert (=> b!578341 (= lt!244896 (++!1589 input!2705 suffix!1342))))

(declare-fun b!578342 () Bool)

(declare-datatypes ((Unit!10271 0))(
  ( (Unit!10272) )
))
(declare-fun e!349498 () Unit!10271)

(declare-fun Unit!10273 () Unit!10271)

(assert (=> b!578342 (= e!349498 Unit!10273)))

(declare-fun lt!244889 () Unit!10271)

(declare-fun lt!244888 () BalanceConc!3644)

(declare-fun lemmaSemiInverse!204 (TokenValueInjection!2018 BalanceConc!3644) Unit!10271)

(assert (=> b!578342 (= lt!244889 (lemmaSemiInverse!204 (transformation!1101 (rule!1853 (_1!3594 (v!16314 lt!244881)))) lt!244888))))

(declare-fun lt!244877 () Unit!10271)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!60 (LexerInterface!987 List!5688 Rule!2002 List!5687 List!5687 List!5687 Rule!2002) Unit!10271)

(assert (=> b!578342 (= lt!244877 (lemmaMaxPrefixOutputsMaxPrefix!60 thiss!22590 rules!3103 (rule!1853 (_1!3594 (v!16314 lt!244881))) lt!244882 input!2705 input!2705 (rule!1853 token!491)))))

(declare-fun res!248721 () Bool)

(declare-fun matchR!582 (Regex!1435 List!5687) Bool)

(assert (=> b!578342 (= res!248721 (not (matchR!582 (regex!1101 (rule!1853 token!491)) input!2705)))))

(declare-fun e!349486 () Bool)

(assert (=> b!578342 (=> (not res!248721) (not e!349486))))

(assert (=> b!578342 e!349486))

(declare-fun b!578343 () Bool)

(declare-fun res!248733 () Bool)

(declare-fun e!349482 () Bool)

(assert (=> b!578343 (=> (not res!248733) (not e!349482))))

(assert (=> b!578343 (= res!248733 (= (size!4520 token!491) (size!4521 (originalCharacters!1140 token!491))))))

(declare-fun b!578344 () Bool)

(declare-fun e!349494 () Bool)

(declare-fun tp_is_empty!3225 () Bool)

(declare-fun tp!181026 () Bool)

(assert (=> b!578344 (= e!349494 (and tp_is_empty!3225 tp!181026))))

(declare-fun e!349493 () Bool)

(declare-fun b!578345 () Bool)

(declare-fun tp!181024 () Bool)

(declare-fun inv!7146 (String!7368) Bool)

(declare-fun inv!7149 (TokenValueInjection!2018) Bool)

(assert (=> b!578345 (= e!349502 (and tp!181024 (inv!7146 (tag!1363 (rule!1853 token!491))) (inv!7149 (transformation!1101 (rule!1853 token!491))) e!349493))))

(declare-fun b!578346 () Bool)

(assert (=> b!578346 (= e!349495 e!349499)))

(declare-fun res!248740 () Bool)

(assert (=> b!578346 (=> (not res!248740) (not e!349499))))

(declare-fun lt!244891 () List!5687)

(assert (=> b!578346 (= res!248740 (= lt!244891 input!2705))))

(declare-fun list!2361 (BalanceConc!3644) List!5687)

(declare-fun charsOf!730 (Token!1938) BalanceConc!3644)

(assert (=> b!578346 (= lt!244891 (list!2361 (charsOf!730 token!491)))))

(declare-fun b!578347 () Bool)

(declare-fun e!349484 () Bool)

(declare-fun tp!181021 () Bool)

(assert (=> b!578347 (= e!349484 (and tp_is_empty!3225 tp!181021))))

(declare-fun b!578348 () Bool)

(declare-fun res!248725 () Bool)

(assert (=> b!578348 (=> res!248725 e!349500)))

(declare-fun getIndex!40 (List!5688 Rule!2002) Int)

(assert (=> b!578348 (= res!248725 (>= (getIndex!40 rules!3103 (rule!1853 (_1!3594 (v!16314 lt!244881)))) (getIndex!40 rules!3103 (rule!1853 token!491))))))

(declare-fun b!578349 () Bool)

(declare-fun e!349481 () Bool)

(declare-fun e!349487 () Bool)

(assert (=> b!578349 (= e!349481 e!349487)))

(declare-fun res!248739 () Bool)

(assert (=> b!578349 (=> (not res!248739) (not e!349487))))

(assert (=> b!578349 (= res!248739 (isDefined!1263 lt!244881))))

(declare-fun b!578350 () Bool)

(declare-fun res!248726 () Bool)

(assert (=> b!578350 (=> res!248726 e!349500)))

(declare-fun contains!1333 (List!5688 Rule!2002) Bool)

(assert (=> b!578350 (= res!248726 (not (contains!1333 rules!3103 (rule!1853 (_1!3594 (v!16314 lt!244881))))))))

(declare-fun b!578351 () Bool)

(declare-fun res!248737 () Bool)

(assert (=> b!578351 (=> res!248737 e!349500)))

(assert (=> b!578351 (= res!248737 (or (not (= lt!244882 lt!244891)) (not (= (originalCharacters!1140 (_1!3594 (v!16314 lt!244881))) (originalCharacters!1140 token!491)))))))

(declare-fun b!578352 () Bool)

(declare-fun e!349496 () Bool)

(declare-fun e!349504 () Bool)

(declare-fun tp!181017 () Bool)

(assert (=> b!578352 (= e!349496 (and e!349504 tp!181017))))

(declare-fun b!578353 () Bool)

(declare-fun res!248736 () Bool)

(assert (=> b!578353 (=> (not res!248736) (not e!349495))))

(assert (=> b!578353 (= res!248736 (not (isEmpty!4100 input!2705)))))

(declare-fun b!578354 () Bool)

(declare-fun e!349480 () Bool)

(assert (=> b!578354 (= e!349480 e!349500)))

(declare-fun res!248719 () Bool)

(assert (=> b!578354 (=> res!248719 e!349500)))

(declare-fun lt!244906 () List!5687)

(declare-fun lt!244895 () Int)

(assert (=> b!578354 (= res!248719 (or (not (= lt!244883 lt!244895)) (not (= lt!244906 input!2705)) (not (= lt!244906 lt!244891))))))

(declare-fun lt!244900 () Unit!10271)

(declare-fun lt!244884 () BalanceConc!3644)

(assert (=> b!578354 (= lt!244900 (lemmaSemiInverse!204 (transformation!1101 (rule!1853 token!491)) lt!244884))))

(declare-fun lt!244911 () Unit!10271)

(assert (=> b!578354 (= lt!244911 (lemmaSemiInverse!204 (transformation!1101 (rule!1853 (_1!3594 (v!16314 lt!244881)))) lt!244888))))

(declare-fun lt!244879 () Unit!10271)

(assert (=> b!578354 (= lt!244879 e!349498)))

(declare-fun c!108310 () Bool)

(assert (=> b!578354 (= c!108310 (< lt!244883 lt!244895))))

(declare-fun e!349501 () Bool)

(assert (=> b!578354 e!349501))

(declare-fun res!248720 () Bool)

(assert (=> b!578354 (=> (not res!248720) (not e!349501))))

(declare-fun lt!244899 () TokenValue!1125)

(declare-fun maxPrefixOneRule!386 (LexerInterface!987 Rule!2002 List!5687) Option!1452)

(assert (=> b!578354 (= res!248720 (= (maxPrefixOneRule!386 thiss!22590 (rule!1853 token!491) lt!244896) (Some!1451 (tuple2!6661 (Token!1939 lt!244899 (rule!1853 token!491) lt!244895 lt!244891) suffix!1342))))))

(declare-fun lt!244887 () Unit!10271)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!136 (LexerInterface!987 List!5688 List!5687 List!5687 List!5687 Rule!2002) Unit!10271)

(assert (=> b!578354 (= lt!244887 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!136 thiss!22590 rules!3103 lt!244891 lt!244896 suffix!1342 (rule!1853 token!491)))))

(assert (=> b!578354 (= (maxPrefixOneRule!386 thiss!22590 (rule!1853 (_1!3594 (v!16314 lt!244881))) input!2705) (Some!1451 (tuple2!6661 (Token!1939 lt!244880 (rule!1853 (_1!3594 (v!16314 lt!244881))) lt!244883 lt!244882) (_2!3594 (v!16314 lt!244881)))))))

(declare-fun lt!244898 () Unit!10271)

(assert (=> b!578354 (= lt!244898 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!136 thiss!22590 rules!3103 lt!244882 input!2705 (_2!3594 (v!16314 lt!244881)) (rule!1853 (_1!3594 (v!16314 lt!244881)))))))

(assert (=> b!578354 e!349482))

(declare-fun res!248735 () Bool)

(assert (=> b!578354 (=> (not res!248735) (not e!349482))))

(assert (=> b!578354 (= res!248735 (= (value!36245 token!491) lt!244899))))

(assert (=> b!578354 (= lt!244899 (apply!1366 (transformation!1101 (rule!1853 token!491)) lt!244884))))

(assert (=> b!578354 (= lt!244884 (seqFromList!1289 lt!244891))))

(declare-fun lt!244893 () List!5687)

(assert (=> b!578354 (= suffix!1342 lt!244893)))

(declare-fun lt!244904 () Unit!10271)

(declare-fun lemmaSamePrefixThenSameSuffix!458 (List!5687 List!5687 List!5687 List!5687 List!5687) Unit!10271)

(assert (=> b!578354 (= lt!244904 (lemmaSamePrefixThenSameSuffix!458 lt!244891 suffix!1342 lt!244891 lt!244893 lt!244896))))

(assert (=> b!578354 (= lt!244893 (getSuffix!254 lt!244896 lt!244891))))

(declare-fun b!578355 () Bool)

(declare-fun res!248731 () Bool)

(assert (=> b!578355 (=> res!248731 e!349500)))

(assert (=> b!578355 (= res!248731 (= (rule!1853 (_1!3594 (v!16314 lt!244881))) (rule!1853 token!491)))))

(declare-fun b!578356 () Bool)

(declare-fun e!349503 () Bool)

(assert (=> b!578356 (= e!349503 (not e!349480))))

(declare-fun res!248722 () Bool)

(assert (=> b!578356 (=> res!248722 e!349480)))

(declare-fun lt!244910 () List!5687)

(declare-fun isPrefix!735 (List!5687 List!5687) Bool)

(assert (=> b!578356 (= res!248722 (not (isPrefix!735 input!2705 lt!244910)))))

(assert (=> b!578356 (isPrefix!735 lt!244891 lt!244910)))

(declare-fun lt!244912 () Unit!10271)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!582 (List!5687 List!5687) Unit!10271)

(assert (=> b!578356 (= lt!244912 (lemmaConcatTwoListThenFirstIsPrefix!582 lt!244891 suffix!1342))))

(assert (=> b!578356 (isPrefix!735 input!2705 lt!244896)))

(declare-fun lt!244902 () Unit!10271)

(assert (=> b!578356 (= lt!244902 (lemmaConcatTwoListThenFirstIsPrefix!582 input!2705 suffix!1342))))

(assert (=> b!578356 e!349497))

(declare-fun res!248738 () Bool)

(assert (=> b!578356 (=> (not res!248738) (not e!349497))))

(assert (=> b!578356 (= res!248738 (= (value!36245 (_1!3594 (v!16314 lt!244881))) lt!244880))))

(assert (=> b!578356 (= lt!244880 (apply!1366 (transformation!1101 (rule!1853 (_1!3594 (v!16314 lt!244881)))) lt!244888))))

(assert (=> b!578356 (= lt!244888 (seqFromList!1289 lt!244882))))

(declare-fun lt!244878 () Unit!10271)

(declare-fun lemmaInv!237 (TokenValueInjection!2018) Unit!10271)

(assert (=> b!578356 (= lt!244878 (lemmaInv!237 (transformation!1101 (rule!1853 token!491))))))

(declare-fun lt!244886 () Unit!10271)

(assert (=> b!578356 (= lt!244886 (lemmaInv!237 (transformation!1101 (rule!1853 (_1!3594 (v!16314 lt!244881))))))))

(declare-fun ruleValid!311 (LexerInterface!987 Rule!2002) Bool)

(assert (=> b!578356 (ruleValid!311 thiss!22590 (rule!1853 token!491))))

(declare-fun lt!244909 () Unit!10271)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!168 (LexerInterface!987 Rule!2002 List!5688) Unit!10271)

(assert (=> b!578356 (= lt!244909 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!168 thiss!22590 (rule!1853 token!491) rules!3103))))

(assert (=> b!578356 (ruleValid!311 thiss!22590 (rule!1853 (_1!3594 (v!16314 lt!244881))))))

(declare-fun lt!244892 () Unit!10271)

(assert (=> b!578356 (= lt!244892 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!168 thiss!22590 (rule!1853 (_1!3594 (v!16314 lt!244881))) rules!3103))))

(assert (=> b!578356 (isPrefix!735 input!2705 input!2705)))

(declare-fun lt!244885 () Unit!10271)

(declare-fun lemmaIsPrefixRefl!473 (List!5687 List!5687) Unit!10271)

(assert (=> b!578356 (= lt!244885 (lemmaIsPrefixRefl!473 input!2705 input!2705))))

(assert (=> b!578356 (= (_2!3594 (v!16314 lt!244881)) lt!244876)))

(declare-fun lt!244890 () Unit!10271)

(assert (=> b!578356 (= lt!244890 (lemmaSamePrefixThenSameSuffix!458 lt!244882 (_2!3594 (v!16314 lt!244881)) lt!244882 lt!244876 input!2705))))

(assert (=> b!578356 (= lt!244876 (getSuffix!254 input!2705 lt!244882))))

(assert (=> b!578356 (isPrefix!735 lt!244882 lt!244906)))

(assert (=> b!578356 (= lt!244906 (++!1589 lt!244882 (_2!3594 (v!16314 lt!244881))))))

(declare-fun lt!244897 () Unit!10271)

(assert (=> b!578356 (= lt!244897 (lemmaConcatTwoListThenFirstIsPrefix!582 lt!244882 (_2!3594 (v!16314 lt!244881))))))

(declare-fun lt!244894 () Unit!10271)

(declare-fun lemmaCharactersSize!168 (Token!1938) Unit!10271)

(assert (=> b!578356 (= lt!244894 (lemmaCharactersSize!168 token!491))))

(declare-fun lt!244903 () Unit!10271)

(assert (=> b!578356 (= lt!244903 (lemmaCharactersSize!168 (_1!3594 (v!16314 lt!244881))))))

(declare-fun lt!244908 () Unit!10271)

(declare-fun e!349489 () Unit!10271)

(assert (=> b!578356 (= lt!244908 e!349489)))

(declare-fun c!108309 () Bool)

(assert (=> b!578356 (= c!108309 (> lt!244883 lt!244895))))

(assert (=> b!578356 (= lt!244895 (size!4521 lt!244891))))

(assert (=> b!578356 (= lt!244883 (size!4521 lt!244882))))

(assert (=> b!578356 (= lt!244882 (list!2361 (charsOf!730 (_1!3594 (v!16314 lt!244881)))))))

(assert (=> b!578356 (= lt!244881 (Some!1451 lt!244901))))

(assert (=> b!578356 (= lt!244901 (tuple2!6661 (_1!3594 (v!16314 lt!244881)) (_2!3594 (v!16314 lt!244881))))))

(declare-fun lt!244905 () Unit!10271)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!178 (List!5687 List!5687 List!5687 List!5687) Unit!10271)

(assert (=> b!578356 (= lt!244905 (lemmaConcatSameAndSameSizesThenSameLists!178 lt!244891 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!578357 () Bool)

(assert (=> b!578357 (= e!349482 (and (= (size!4520 token!491) lt!244895) (= (originalCharacters!1140 token!491) lt!244891) (= (tuple2!6661 token!491 suffix!1342) (tuple2!6661 (Token!1939 lt!244899 (rule!1853 token!491) lt!244895 lt!244891) lt!244893))))))

(declare-fun b!578358 () Bool)

(declare-fun e!349492 () Bool)

(assert (=> b!578358 (= e!349483 e!349492)))

(declare-fun res!248742 () Bool)

(assert (=> b!578358 (=> (not res!248742) (not e!349492))))

(declare-fun lt!244875 () tuple2!6660)

(assert (=> b!578358 (= res!248742 (and (= (_1!3594 lt!244875) token!491) (= (_2!3594 lt!244875) suffix!1342)))))

(declare-fun get!2166 (Option!1452) tuple2!6660)

(assert (=> b!578358 (= lt!244875 (get!2166 lt!244907))))

(declare-fun b!578359 () Bool)

(declare-fun res!248732 () Bool)

(assert (=> b!578359 (=> res!248732 e!349500)))

(assert (=> b!578359 (= res!248732 (not (contains!1333 rules!3103 (rule!1853 token!491))))))

(declare-fun b!578360 () Bool)

(declare-fun res!248741 () Bool)

(assert (=> b!578360 (=> res!248741 e!349500)))

(assert (=> b!578360 (= res!248741 (not (= lt!244907 (Some!1451 (tuple2!6661 token!491 suffix!1342)))))))

(declare-fun res!248729 () Bool)

(assert (=> start!53496 (=> (not res!248729) (not e!349495))))

(get-info :version)

(assert (=> start!53496 (= res!248729 ((_ is Lexer!985) thiss!22590))))

(assert (=> start!53496 e!349495))

(assert (=> start!53496 e!349484))

(assert (=> start!53496 e!349496))

(declare-fun inv!7150 (Token!1938) Bool)

(assert (=> start!53496 (and (inv!7150 token!491) e!349491)))

(assert (=> start!53496 true))

(assert (=> start!53496 e!349494))

(declare-fun b!578338 () Bool)

(assert (=> b!578338 (= e!349486 false)))

(declare-fun e!349485 () Bool)

(assert (=> b!578361 (= e!349485 (and tp!181018 tp!181020))))

(assert (=> b!578362 (= e!349493 (and tp!181019 tp!181023))))

(declare-fun b!578363 () Bool)

(assert (=> b!578363 (= e!349487 (= lt!244876 (_2!3594 (v!16314 lt!244881))))))

(declare-fun b!578364 () Bool)

(declare-fun res!248728 () Bool)

(assert (=> b!578364 (=> (not res!248728) (not e!349487))))

(assert (=> b!578364 (= res!248728 (= (_1!3594 (get!2166 lt!244881)) (_1!3594 (v!16314 lt!244881))))))

(declare-fun b!578365 () Bool)

(declare-fun res!248723 () Bool)

(assert (=> b!578365 (=> (not res!248723) (not e!349495))))

(declare-fun rulesInvariant!950 (LexerInterface!987 List!5688) Bool)

(assert (=> b!578365 (= res!248723 (rulesInvariant!950 thiss!22590 rules!3103))))

(declare-fun b!578366 () Bool)

(declare-fun Unit!10274 () Unit!10271)

(assert (=> b!578366 (= e!349489 Unit!10274)))

(declare-fun b!578367 () Bool)

(assert (=> b!578367 (= e!349501 e!349481)))

(declare-fun res!248730 () Bool)

(assert (=> b!578367 (=> res!248730 e!349481)))

(assert (=> b!578367 (= res!248730 (>= lt!244883 lt!244895))))

(declare-fun b!578368 () Bool)

(declare-fun Unit!10275 () Unit!10271)

(assert (=> b!578368 (= e!349498 Unit!10275)))

(declare-fun b!578369 () Bool)

(declare-fun e!349490 () Bool)

(assert (=> b!578369 (= e!349490 e!349503)))

(declare-fun res!248724 () Bool)

(assert (=> b!578369 (=> (not res!248724) (not e!349503))))

(assert (=> b!578369 (= res!248724 (= lt!244910 lt!244896))))

(assert (=> b!578369 (= lt!244910 (++!1589 lt!244891 suffix!1342))))

(declare-fun b!578370 () Bool)

(declare-fun Unit!10276 () Unit!10271)

(assert (=> b!578370 (= e!349489 Unit!10276)))

(assert (=> b!578370 false))

(declare-fun b!578371 () Bool)

(assert (=> b!578371 (= e!349492 e!349490)))

(declare-fun res!248743 () Bool)

(assert (=> b!578371 (=> (not res!248743) (not e!349490))))

(assert (=> b!578371 (= res!248743 ((_ is Some!1451) lt!244881))))

(assert (=> b!578371 (= lt!244881 (maxPrefix!685 thiss!22590 rules!3103 input!2705))))

(declare-fun b!578372 () Bool)

(declare-fun res!248744 () Bool)

(assert (=> b!578372 (=> (not res!248744) (not e!349497))))

(assert (=> b!578372 (= res!248744 (= (size!4520 (_1!3594 (v!16314 lt!244881))) (size!4521 (originalCharacters!1140 (_1!3594 (v!16314 lt!244881))))))))

(declare-fun tp!181022 () Bool)

(declare-fun b!578373 () Bool)

(assert (=> b!578373 (= e!349504 (and tp!181022 (inv!7146 (tag!1363 (h!11079 rules!3103))) (inv!7149 (transformation!1101 (h!11079 rules!3103))) e!349485))))

(assert (= (and start!53496 res!248729) b!578335))

(assert (= (and b!578335 res!248734) b!578365))

(assert (= (and b!578365 res!248723) b!578353))

(assert (= (and b!578353 res!248736) b!578346))

(assert (= (and b!578346 res!248740) b!578341))

(assert (= (and b!578341 res!248727) b!578358))

(assert (= (and b!578358 res!248742) b!578371))

(assert (= (and b!578371 res!248743) b!578369))

(assert (= (and b!578369 res!248724) b!578356))

(assert (= (and b!578356 c!108309) b!578370))

(assert (= (and b!578356 (not c!108309)) b!578366))

(assert (= (and b!578356 res!248738) b!578372))

(assert (= (and b!578372 res!248744) b!578337))

(assert (= (and b!578356 (not res!248722)) b!578354))

(assert (= (and b!578354 res!248735) b!578343))

(assert (= (and b!578343 res!248733) b!578357))

(assert (= (and b!578354 res!248720) b!578367))

(assert (= (and b!578367 (not res!248730)) b!578349))

(assert (= (and b!578349 res!248739) b!578364))

(assert (= (and b!578364 res!248728) b!578363))

(assert (= (and b!578354 c!108310) b!578342))

(assert (= (and b!578354 (not c!108310)) b!578368))

(assert (= (and b!578342 res!248721) b!578338))

(assert (= (and b!578354 (not res!248719)) b!578336))

(assert (= (and b!578336 (not res!248718)) b!578351))

(assert (= (and b!578351 (not res!248737)) b!578350))

(assert (= (and b!578350 (not res!248726)) b!578359))

(assert (= (and b!578359 (not res!248732)) b!578355))

(assert (= (and b!578355 (not res!248731)) b!578348))

(assert (= (and b!578348 (not res!248725)) b!578360))

(assert (= (and b!578360 (not res!248741)) b!578340))

(assert (= (and start!53496 ((_ is Cons!5677) suffix!1342)) b!578347))

(assert (= b!578373 b!578361))

(assert (= b!578352 b!578373))

(assert (= (and start!53496 ((_ is Cons!5678) rules!3103)) b!578352))

(assert (= b!578345 b!578362))

(assert (= b!578339 b!578345))

(assert (= start!53496 b!578339))

(assert (= (and start!53496 ((_ is Cons!5677) input!2705)) b!578344))

(declare-fun m!836547 () Bool)

(assert (=> b!578359 m!836547))

(declare-fun m!836549 () Bool)

(assert (=> b!578349 m!836549))

(declare-fun m!836551 () Bool)

(assert (=> start!53496 m!836551))

(declare-fun m!836553 () Bool)

(assert (=> b!578353 m!836553))

(declare-fun m!836555 () Bool)

(assert (=> b!578346 m!836555))

(assert (=> b!578346 m!836555))

(declare-fun m!836557 () Bool)

(assert (=> b!578346 m!836557))

(declare-fun m!836559 () Bool)

(assert (=> b!578365 m!836559))

(declare-fun m!836561 () Bool)

(assert (=> b!578348 m!836561))

(declare-fun m!836563 () Bool)

(assert (=> b!578348 m!836563))

(declare-fun m!836565 () Bool)

(assert (=> b!578335 m!836565))

(declare-fun m!836567 () Bool)

(assert (=> b!578340 m!836567))

(assert (=> b!578340 m!836567))

(declare-fun m!836569 () Bool)

(assert (=> b!578340 m!836569))

(declare-fun m!836571 () Bool)

(assert (=> b!578340 m!836571))

(declare-fun m!836573 () Bool)

(assert (=> b!578340 m!836573))

(declare-fun m!836575 () Bool)

(assert (=> b!578341 m!836575))

(declare-fun m!836577 () Bool)

(assert (=> b!578341 m!836577))

(declare-fun m!836579 () Bool)

(assert (=> b!578341 m!836579))

(declare-fun m!836581 () Bool)

(assert (=> b!578373 m!836581))

(declare-fun m!836583 () Bool)

(assert (=> b!578373 m!836583))

(declare-fun m!836585 () Bool)

(assert (=> b!578343 m!836585))

(declare-fun m!836587 () Bool)

(assert (=> b!578354 m!836587))

(declare-fun m!836589 () Bool)

(assert (=> b!578354 m!836589))

(declare-fun m!836591 () Bool)

(assert (=> b!578354 m!836591))

(declare-fun m!836593 () Bool)

(assert (=> b!578354 m!836593))

(declare-fun m!836595 () Bool)

(assert (=> b!578354 m!836595))

(declare-fun m!836597 () Bool)

(assert (=> b!578354 m!836597))

(declare-fun m!836599 () Bool)

(assert (=> b!578354 m!836599))

(declare-fun m!836601 () Bool)

(assert (=> b!578354 m!836601))

(declare-fun m!836603 () Bool)

(assert (=> b!578354 m!836603))

(declare-fun m!836605 () Bool)

(assert (=> b!578354 m!836605))

(declare-fun m!836607 () Bool)

(assert (=> b!578364 m!836607))

(declare-fun m!836609 () Bool)

(assert (=> b!578371 m!836609))

(declare-fun m!836611 () Bool)

(assert (=> b!578372 m!836611))

(assert (=> b!578342 m!836605))

(declare-fun m!836613 () Bool)

(assert (=> b!578342 m!836613))

(declare-fun m!836615 () Bool)

(assert (=> b!578342 m!836615))

(declare-fun m!836617 () Bool)

(assert (=> b!578345 m!836617))

(declare-fun m!836619 () Bool)

(assert (=> b!578345 m!836619))

(declare-fun m!836621 () Bool)

(assert (=> b!578358 m!836621))

(declare-fun m!836623 () Bool)

(assert (=> b!578356 m!836623))

(declare-fun m!836625 () Bool)

(assert (=> b!578356 m!836625))

(declare-fun m!836627 () Bool)

(assert (=> b!578356 m!836627))

(declare-fun m!836629 () Bool)

(assert (=> b!578356 m!836629))

(declare-fun m!836631 () Bool)

(assert (=> b!578356 m!836631))

(declare-fun m!836633 () Bool)

(assert (=> b!578356 m!836633))

(declare-fun m!836635 () Bool)

(assert (=> b!578356 m!836635))

(declare-fun m!836637 () Bool)

(assert (=> b!578356 m!836637))

(declare-fun m!836639 () Bool)

(assert (=> b!578356 m!836639))

(declare-fun m!836641 () Bool)

(assert (=> b!578356 m!836641))

(declare-fun m!836643 () Bool)

(assert (=> b!578356 m!836643))

(declare-fun m!836645 () Bool)

(assert (=> b!578356 m!836645))

(declare-fun m!836647 () Bool)

(assert (=> b!578356 m!836647))

(declare-fun m!836649 () Bool)

(assert (=> b!578356 m!836649))

(declare-fun m!836651 () Bool)

(assert (=> b!578356 m!836651))

(declare-fun m!836653 () Bool)

(assert (=> b!578356 m!836653))

(declare-fun m!836655 () Bool)

(assert (=> b!578356 m!836655))

(declare-fun m!836657 () Bool)

(assert (=> b!578356 m!836657))

(declare-fun m!836659 () Bool)

(assert (=> b!578356 m!836659))

(declare-fun m!836661 () Bool)

(assert (=> b!578356 m!836661))

(declare-fun m!836663 () Bool)

(assert (=> b!578356 m!836663))

(declare-fun m!836665 () Bool)

(assert (=> b!578356 m!836665))

(declare-fun m!836667 () Bool)

(assert (=> b!578356 m!836667))

(assert (=> b!578356 m!836645))

(declare-fun m!836669 () Bool)

(assert (=> b!578356 m!836669))

(declare-fun m!836671 () Bool)

(assert (=> b!578356 m!836671))

(declare-fun m!836673 () Bool)

(assert (=> b!578356 m!836673))

(declare-fun m!836675 () Bool)

(assert (=> b!578356 m!836675))

(declare-fun m!836677 () Bool)

(assert (=> b!578369 m!836677))

(declare-fun m!836679 () Bool)

(assert (=> b!578336 m!836679))

(declare-fun m!836681 () Bool)

(assert (=> b!578350 m!836681))

(declare-fun m!836683 () Bool)

(assert (=> b!578339 m!836683))

(check-sat b_and!56781 (not b_next!16097) (not b!578335) (not b!578365) b_and!56785 (not b!578347) tp_is_empty!3225 (not b!578350) (not b!578372) (not start!53496) (not b!578373) (not b_next!16095) (not b!578345) (not b_next!16093) b_and!56783 (not b!578342) (not b!578341) (not b!578340) (not b!578343) b_and!56779 (not b_next!16099) (not b!578339) (not b!578344) (not b!578356) (not b!578349) (not b!578346) (not b!578358) (not b!578336) (not b!578348) (not b!578364) (not b!578354) (not b!578359) (not b!578353) (not b!578352) (not b!578369) (not b!578371))
(check-sat (not b_next!16093) b_and!56781 b_and!56783 (not b_next!16097) b_and!56785 (not b_next!16095) b_and!56779 (not b_next!16099))
