; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!335008 () Bool)

(assert start!335008)

(declare-fun b!3602412 () Bool)

(declare-fun b_free!93257 () Bool)

(declare-fun b_next!93961 () Bool)

(assert (=> b!3602412 (= b_free!93257 (not b_next!93961))))

(declare-fun tp!1101833 () Bool)

(declare-fun b_and!261867 () Bool)

(assert (=> b!3602412 (= tp!1101833 b_and!261867)))

(declare-fun b_free!93259 () Bool)

(declare-fun b_next!93963 () Bool)

(assert (=> b!3602412 (= b_free!93259 (not b_next!93963))))

(declare-fun tp!1101829 () Bool)

(declare-fun b_and!261869 () Bool)

(assert (=> b!3602412 (= tp!1101829 b_and!261869)))

(declare-fun b!3602440 () Bool)

(declare-fun b_free!93261 () Bool)

(declare-fun b_next!93965 () Bool)

(assert (=> b!3602440 (= b_free!93261 (not b_next!93965))))

(declare-fun tp!1101827 () Bool)

(declare-fun b_and!261871 () Bool)

(assert (=> b!3602440 (= tp!1101827 b_and!261871)))

(declare-fun b_free!93263 () Bool)

(declare-fun b_next!93967 () Bool)

(assert (=> b!3602440 (= b_free!93263 (not b_next!93967))))

(declare-fun tp!1101834 () Bool)

(declare-fun b_and!261873 () Bool)

(assert (=> b!3602440 (= tp!1101834 b_and!261873)))

(declare-fun b!3602427 () Bool)

(declare-fun b_free!93265 () Bool)

(declare-fun b_next!93969 () Bool)

(assert (=> b!3602427 (= b_free!93265 (not b_next!93969))))

(declare-fun tp!1101838 () Bool)

(declare-fun b_and!261875 () Bool)

(assert (=> b!3602427 (= tp!1101838 b_and!261875)))

(declare-fun b_free!93267 () Bool)

(declare-fun b_next!93971 () Bool)

(assert (=> b!3602427 (= b_free!93267 (not b_next!93971))))

(declare-fun tp!1101828 () Bool)

(declare-fun b_and!261877 () Bool)

(assert (=> b!3602427 (= tp!1101828 b_and!261877)))

(declare-fun b!3602414 () Bool)

(declare-fun b_free!93269 () Bool)

(declare-fun b_next!93973 () Bool)

(assert (=> b!3602414 (= b_free!93269 (not b_next!93973))))

(declare-fun tp!1101830 () Bool)

(declare-fun b_and!261879 () Bool)

(assert (=> b!3602414 (= tp!1101830 b_and!261879)))

(declare-fun b_free!93271 () Bool)

(declare-fun b_next!93975 () Bool)

(assert (=> b!3602414 (= b_free!93271 (not b_next!93975))))

(declare-fun tp!1101831 () Bool)

(declare-fun b_and!261881 () Bool)

(assert (=> b!3602414 (= tp!1101831 b_and!261881)))

(declare-fun b!3602409 () Bool)

(declare-fun e!2229238 () Bool)

(declare-fun e!2229239 () Bool)

(assert (=> b!3602409 (= e!2229238 e!2229239)))

(declare-fun res!1456080 () Bool)

(assert (=> b!3602409 (=> res!1456080 e!2229239)))

(declare-datatypes ((C!20926 0))(
  ( (C!20927 (val!12511 Int)) )
))
(declare-datatypes ((List!38020 0))(
  ( (Nil!37896) (Cons!37896 (h!43316 C!20926) (t!292471 List!38020)) )
))
(declare-fun lt!1237986 () List!38020)

(declare-fun lt!1237990 () List!38020)

(declare-fun isPrefix!2974 (List!38020 List!38020) Bool)

(assert (=> b!3602409 (= res!1456080 (not (isPrefix!2974 lt!1237986 lt!1237990)))))

(declare-datatypes ((List!38021 0))(
  ( (Nil!37897) (Cons!37897 (h!43317 (_ BitVec 16)) (t!292472 List!38021)) )
))
(declare-datatypes ((TokenValue!5841 0))(
  ( (FloatLiteralValue!11682 (text!41332 List!38021)) (TokenValueExt!5840 (__x!23899 Int)) (Broken!29205 (value!180349 List!38021)) (Object!5964) (End!5841) (Def!5841) (Underscore!5841) (Match!5841) (Else!5841) (Error!5841) (Case!5841) (If!5841) (Extends!5841) (Abstract!5841) (Class!5841) (Val!5841) (DelimiterValue!11682 (del!5901 List!38021)) (KeywordValue!5847 (value!180350 List!38021)) (CommentValue!11682 (value!180351 List!38021)) (WhitespaceValue!11682 (value!180352 List!38021)) (IndentationValue!5841 (value!180353 List!38021)) (String!42540) (Int32!5841) (Broken!29206 (value!180354 List!38021)) (Boolean!5842) (Unit!53945) (OperatorValue!5844 (op!5901 List!38021)) (IdentifierValue!11682 (value!180355 List!38021)) (IdentifierValue!11683 (value!180356 List!38021)) (WhitespaceValue!11683 (value!180357 List!38021)) (True!11682) (False!11682) (Broken!29207 (value!180358 List!38021)) (Broken!29208 (value!180359 List!38021)) (True!11683) (RightBrace!5841) (RightBracket!5841) (Colon!5841) (Null!5841) (Comma!5841) (LeftBracket!5841) (False!11683) (LeftBrace!5841) (ImaginaryLiteralValue!5841 (text!41333 List!38021)) (StringLiteralValue!17523 (value!180360 List!38021)) (EOFValue!5841 (value!180361 List!38021)) (IdentValue!5841 (value!180362 List!38021)) (DelimiterValue!11683 (value!180363 List!38021)) (DedentValue!5841 (value!180364 List!38021)) (NewLineValue!5841 (value!180365 List!38021)) (IntegerValue!17523 (value!180366 (_ BitVec 32)) (text!41334 List!38021)) (IntegerValue!17524 (value!180367 Int) (text!41335 List!38021)) (Times!5841) (Or!5841) (Equal!5841) (Minus!5841) (Broken!29209 (value!180368 List!38021)) (And!5841) (Div!5841) (LessEqual!5841) (Mod!5841) (Concat!16211) (Not!5841) (Plus!5841) (SpaceValue!5841 (value!180369 List!38021)) (IntegerValue!17525 (value!180370 Int) (text!41336 List!38021)) (StringLiteralValue!17524 (text!41337 List!38021)) (FloatLiteralValue!11683 (text!41338 List!38021)) (BytesLiteralValue!5841 (value!180371 List!38021)) (CommentValue!11683 (value!180372 List!38021)) (StringLiteralValue!17525 (value!180373 List!38021)) (ErrorTokenValue!5841 (msg!5902 List!38021)) )
))
(declare-datatypes ((Regex!10370 0))(
  ( (ElementMatch!10370 (c!623424 C!20926)) (Concat!16212 (regOne!21252 Regex!10370) (regTwo!21252 Regex!10370)) (EmptyExpr!10370) (Star!10370 (reg!10699 Regex!10370)) (EmptyLang!10370) (Union!10370 (regOne!21253 Regex!10370) (regTwo!21253 Regex!10370)) )
))
(declare-datatypes ((String!42541 0))(
  ( (String!42542 (value!180374 String)) )
))
(declare-datatypes ((IArray!23085 0))(
  ( (IArray!23086 (innerList!11600 List!38020)) )
))
(declare-datatypes ((Conc!11540 0))(
  ( (Node!11540 (left!29612 Conc!11540) (right!29942 Conc!11540) (csize!23310 Int) (cheight!11751 Int)) (Leaf!17957 (xs!14742 IArray!23085) (csize!23311 Int)) (Empty!11540) )
))
(declare-datatypes ((BalanceConc!22694 0))(
  ( (BalanceConc!22695 (c!623425 Conc!11540)) )
))
(declare-datatypes ((TokenValueInjection!11110 0))(
  ( (TokenValueInjection!11111 (toValue!7895 Int) (toChars!7754 Int)) )
))
(declare-datatypes ((Rule!11022 0))(
  ( (Rule!11023 (regex!5611 Regex!10370) (tag!6305 String!42541) (isSeparator!5611 Bool) (transformation!5611 TokenValueInjection!11110)) )
))
(declare-datatypes ((Token!10588 0))(
  ( (Token!10589 (value!180375 TokenValue!5841) (rule!8349 Rule!11022) (size!28879 Int) (originalCharacters!6325 List!38020)) )
))
(declare-datatypes ((tuple2!37790 0))(
  ( (tuple2!37791 (_1!22029 Token!10588) (_2!22029 List!38020)) )
))
(declare-fun lt!1237996 () tuple2!37790)

(declare-fun ++!9427 (List!38020 List!38020) List!38020)

(assert (=> b!3602409 (isPrefix!2974 lt!1237986 (++!9427 lt!1237986 (_2!22029 lt!1237996)))))

(declare-datatypes ((Unit!53946 0))(
  ( (Unit!53947) )
))
(declare-fun lt!1237991 () Unit!53946)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1895 (List!38020 List!38020) Unit!53946)

(assert (=> b!3602409 (= lt!1237991 (lemmaConcatTwoListThenFirstIsPrefix!1895 lt!1237986 (_2!22029 lt!1237996)))))

(declare-fun lt!1237987 () BalanceConc!22694)

(declare-fun list!13963 (BalanceConc!22694) List!38020)

(assert (=> b!3602409 (= lt!1237986 (list!13963 lt!1237987))))

(declare-fun charsOf!3625 (Token!10588) BalanceConc!22694)

(assert (=> b!3602409 (= lt!1237987 (charsOf!3625 (_1!22029 lt!1237996)))))

(declare-fun e!2229257 () Bool)

(assert (=> b!3602409 e!2229257))

(declare-fun res!1456081 () Bool)

(assert (=> b!3602409 (=> (not res!1456081) (not e!2229257))))

(declare-datatypes ((Option!7852 0))(
  ( (None!7851) (Some!7851 (v!37569 Rule!11022)) )
))
(declare-fun lt!1238004 () Option!7852)

(declare-fun isDefined!6084 (Option!7852) Bool)

(assert (=> b!3602409 (= res!1456081 (isDefined!6084 lt!1238004))))

(declare-datatypes ((List!38022 0))(
  ( (Nil!37898) (Cons!37898 (h!43318 Rule!11022) (t!292473 List!38022)) )
))
(declare-fun rules!3307 () List!38022)

(declare-datatypes ((LexerInterface!5200 0))(
  ( (LexerInterfaceExt!5197 (__x!23900 Int)) (Lexer!5198) )
))
(declare-fun thiss!23823 () LexerInterface!5200)

(declare-fun getRuleFromTag!1217 (LexerInterface!5200 List!38022 String!42541) Option!7852)

(assert (=> b!3602409 (= lt!1238004 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 (_1!22029 lt!1237996)))))))

(declare-fun lt!1237989 () Unit!53946)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1217 (LexerInterface!5200 List!38022 List!38020 Token!10588) Unit!53946)

(assert (=> b!3602409 (= lt!1237989 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1217 thiss!23823 rules!3307 lt!1237990 (_1!22029 lt!1237996)))))

(declare-datatypes ((Option!7853 0))(
  ( (None!7852) (Some!7852 (v!37570 tuple2!37790)) )
))
(declare-fun lt!1238013 () Option!7853)

(declare-fun get!12268 (Option!7853) tuple2!37790)

(assert (=> b!3602409 (= lt!1237996 (get!12268 lt!1238013))))

(declare-fun suffix!1395 () List!38020)

(declare-fun lt!1237997 () Unit!53946)

(declare-fun lt!1237999 () List!38020)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!880 (LexerInterface!5200 List!38022 List!38020 List!38020) Unit!53946)

(assert (=> b!3602409 (= lt!1237997 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!880 thiss!23823 rules!3307 lt!1237999 suffix!1395))))

(declare-fun maxPrefix!2734 (LexerInterface!5200 List!38022 List!38020) Option!7853)

(assert (=> b!3602409 (= lt!1238013 (maxPrefix!2734 thiss!23823 rules!3307 lt!1237990))))

(assert (=> b!3602409 (isPrefix!2974 lt!1237999 lt!1237990)))

(declare-fun lt!1238001 () Unit!53946)

(assert (=> b!3602409 (= lt!1238001 (lemmaConcatTwoListThenFirstIsPrefix!1895 lt!1237999 suffix!1395))))

(assert (=> b!3602409 (= lt!1237990 (++!9427 lt!1237999 suffix!1395))))

(declare-fun b!3602410 () Bool)

(declare-fun res!1456074 () Bool)

(declare-fun e!2229252 () Bool)

(assert (=> b!3602410 (=> (not res!1456074) (not e!2229252))))

(declare-fun anOtherTypeRule!33 () Rule!11022)

(declare-fun rule!403 () Rule!11022)

(assert (=> b!3602410 (= res!1456074 (not (= (isSeparator!5611 anOtherTypeRule!33) (isSeparator!5611 rule!403))))))

(declare-fun e!2229262 () Bool)

(assert (=> b!3602412 (= e!2229262 (and tp!1101833 tp!1101829))))

(declare-fun b!3602413 () Bool)

(declare-fun res!1456089 () Bool)

(assert (=> b!3602413 (=> (not res!1456089) (not e!2229252))))

(declare-fun rulesInvariant!4597 (LexerInterface!5200 List!38022) Bool)

(assert (=> b!3602413 (= res!1456089 (rulesInvariant!4597 thiss!23823 rules!3307))))

(declare-fun e!2229254 () Bool)

(assert (=> b!3602414 (= e!2229254 (and tp!1101830 tp!1101831))))

(declare-fun b!3602415 () Bool)

(declare-fun e!2229250 () Bool)

(assert (=> b!3602415 (= e!2229250 (not (= lt!1237986 Nil!37896)))))

(declare-fun b!3602416 () Bool)

(declare-fun res!1456069 () Bool)

(assert (=> b!3602416 (=> (not res!1456069) (not e!2229252))))

(declare-fun isEmpty!22360 (List!38022) Bool)

(assert (=> b!3602416 (= res!1456069 (not (isEmpty!22360 rules!3307)))))

(declare-fun b!3602417 () Bool)

(declare-fun res!1456090 () Bool)

(assert (=> b!3602417 (=> (not res!1456090) (not e!2229252))))

(declare-fun contains!7285 (List!38022 Rule!11022) Bool)

(assert (=> b!3602417 (= res!1456090 (contains!7285 rules!3307 rule!403))))

(declare-fun b!3602418 () Bool)

(declare-fun e!2229236 () Bool)

(declare-fun e!2229249 () Bool)

(assert (=> b!3602418 (= e!2229236 (not e!2229249))))

(declare-fun res!1456068 () Bool)

(assert (=> b!3602418 (=> res!1456068 e!2229249)))

(declare-fun matchR!4939 (Regex!10370 List!38020) Bool)

(assert (=> b!3602418 (= res!1456068 (not (matchR!4939 (regex!5611 rule!403) lt!1237999)))))

(declare-fun ruleValid!1876 (LexerInterface!5200 Rule!11022) Bool)

(assert (=> b!3602418 (ruleValid!1876 thiss!23823 rule!403)))

(declare-fun lt!1238007 () Unit!53946)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1031 (LexerInterface!5200 Rule!11022 List!38022) Unit!53946)

(assert (=> b!3602418 (= lt!1238007 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1031 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3602419 () Bool)

(declare-fun e!2229258 () Bool)

(declare-fun e!2229253 () Bool)

(assert (=> b!3602419 (= e!2229258 e!2229253)))

(declare-fun res!1456070 () Bool)

(assert (=> b!3602419 (=> res!1456070 e!2229253)))

(declare-fun lt!1238008 () List!38020)

(declare-fun lt!1237993 () Option!7853)

(assert (=> b!3602419 (= res!1456070 (or (not (= lt!1238008 (_2!22029 lt!1237996))) (not (= lt!1237993 (Some!7852 (tuple2!37791 (_1!22029 lt!1237996) lt!1238008))))))))

(assert (=> b!3602419 (= (_2!22029 lt!1237996) lt!1238008)))

(declare-fun lt!1238005 () Unit!53946)

(declare-fun lemmaSamePrefixThenSameSuffix!1329 (List!38020 List!38020 List!38020 List!38020 List!38020) Unit!53946)

(assert (=> b!3602419 (= lt!1238005 (lemmaSamePrefixThenSameSuffix!1329 lt!1237986 (_2!22029 lt!1237996) lt!1237986 lt!1238008 lt!1237990))))

(declare-fun getSuffix!1549 (List!38020 List!38020) List!38020)

(assert (=> b!3602419 (= lt!1238008 (getSuffix!1549 lt!1237990 lt!1237986))))

(declare-fun lt!1237998 () TokenValue!5841)

(declare-fun lt!1238003 () Int)

(assert (=> b!3602419 (= lt!1237993 (Some!7852 (tuple2!37791 (Token!10589 lt!1237998 (rule!8349 (_1!22029 lt!1237996)) lt!1238003 lt!1237986) (_2!22029 lt!1237996))))))

(declare-fun maxPrefixOneRule!1878 (LexerInterface!5200 Rule!11022 List!38020) Option!7853)

(assert (=> b!3602419 (= lt!1237993 (maxPrefixOneRule!1878 thiss!23823 (rule!8349 (_1!22029 lt!1237996)) lt!1237990))))

(declare-fun size!28880 (List!38020) Int)

(assert (=> b!3602419 (= lt!1238003 (size!28880 lt!1237986))))

(declare-fun apply!9117 (TokenValueInjection!11110 BalanceConc!22694) TokenValue!5841)

(declare-fun seqFromList!4164 (List!38020) BalanceConc!22694)

(assert (=> b!3602419 (= lt!1237998 (apply!9117 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) (seqFromList!4164 lt!1237986)))))

(declare-fun lt!1237995 () Unit!53946)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!950 (LexerInterface!5200 List!38022 List!38020 List!38020 List!38020 Rule!11022) Unit!53946)

(assert (=> b!3602419 (= lt!1237995 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!950 thiss!23823 rules!3307 lt!1237986 lt!1237990 (_2!22029 lt!1237996) (rule!8349 (_1!22029 lt!1237996))))))

(declare-fun b!3602420 () Bool)

(declare-fun e!2229256 () Bool)

(declare-fun tp_is_empty!17823 () Bool)

(declare-fun tp!1101840 () Bool)

(assert (=> b!3602420 (= e!2229256 (and tp_is_empty!17823 tp!1101840))))

(declare-fun b!3602421 () Bool)

(declare-fun e!2229240 () Bool)

(declare-fun e!2229245 () Bool)

(declare-fun tp!1101841 () Bool)

(assert (=> b!3602421 (= e!2229240 (and e!2229245 tp!1101841))))

(declare-fun b!3602422 () Bool)

(declare-fun tp!1101839 () Bool)

(declare-fun e!2229242 () Bool)

(declare-fun token!511 () Token!10588)

(declare-fun e!2229237 () Bool)

(declare-fun inv!21 (TokenValue!5841) Bool)

(assert (=> b!3602422 (= e!2229237 (and (inv!21 (value!180375 token!511)) e!2229242 tp!1101839))))

(declare-fun b!3602423 () Bool)

(declare-fun res!1456079 () Bool)

(assert (=> b!3602423 (=> res!1456079 e!2229238)))

(declare-fun lt!1238010 () C!20926)

(declare-fun contains!7286 (List!38020 C!20926) Bool)

(declare-fun usedCharacters!825 (Regex!10370) List!38020)

(assert (=> b!3602423 (= res!1456079 (not (contains!7286 (usedCharacters!825 (regex!5611 anOtherTypeRule!33)) lt!1238010)))))

(declare-fun b!3602424 () Bool)

(declare-fun e!2229243 () Unit!53946)

(declare-fun Unit!53948 () Unit!53946)

(assert (=> b!3602424 (= e!2229243 Unit!53948)))

(declare-fun lt!1238012 () Unit!53946)

(declare-fun lt!1237994 () C!20926)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!595 (Regex!10370 List!38020 C!20926) Unit!53946)

(assert (=> b!3602424 (= lt!1238012 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!595 (regex!5611 rule!403) lt!1237999 lt!1237994))))

(assert (=> b!3602424 false))

(declare-fun b!3602425 () Bool)

(declare-fun res!1456086 () Bool)

(assert (=> b!3602425 (=> res!1456086 e!2229250)))

(assert (=> b!3602425 (= res!1456086 (not (contains!7286 lt!1237999 lt!1237994)))))

(declare-fun b!3602426 () Bool)

(assert (=> b!3602426 (= e!2229253 e!2229250)))

(declare-fun res!1456076 () Bool)

(assert (=> b!3602426 (=> res!1456076 e!2229250)))

(assert (=> b!3602426 (= res!1456076 (or (isSeparator!5611 rule!403) (not (isSeparator!5611 (rule!8349 (_1!22029 lt!1237996))))))))

(declare-fun lt!1238002 () Unit!53946)

(assert (=> b!3602426 (= lt!1238002 e!2229243)))

(declare-fun c!623423 () Bool)

(declare-fun lt!1237992 () List!38020)

(assert (=> b!3602426 (= c!623423 (not (contains!7286 lt!1237992 lt!1237994)))))

(declare-fun head!7557 (List!38020) C!20926)

(assert (=> b!3602426 (= lt!1237994 (head!7557 lt!1237986))))

(declare-fun e!2229246 () Bool)

(assert (=> b!3602427 (= e!2229246 (and tp!1101838 tp!1101828))))

(declare-fun tp!1101837 () Bool)

(declare-fun b!3602428 () Bool)

(declare-fun e!2229260 () Bool)

(declare-fun inv!51254 (String!42541) Bool)

(declare-fun inv!51257 (TokenValueInjection!11110) Bool)

(assert (=> b!3602428 (= e!2229245 (and tp!1101837 (inv!51254 (tag!6305 (h!43318 rules!3307))) (inv!51257 (transformation!5611 (h!43318 rules!3307))) e!2229260))))

(declare-fun b!3602429 () Bool)

(declare-fun res!1456083 () Bool)

(assert (=> b!3602429 (=> res!1456083 e!2229239)))

(assert (=> b!3602429 (= res!1456083 (not (matchR!4939 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237986)))))

(declare-fun b!3602411 () Bool)

(declare-fun res!1456071 () Bool)

(assert (=> b!3602411 (=> res!1456071 e!2229238)))

(declare-fun sepAndNonSepRulesDisjointChars!1781 (List!38022 List!38022) Bool)

(assert (=> b!3602411 (= res!1456071 (not (sepAndNonSepRulesDisjointChars!1781 rules!3307 rules!3307)))))

(declare-fun res!1456085 () Bool)

(assert (=> start!335008 (=> (not res!1456085) (not e!2229252))))

(assert (=> start!335008 (= res!1456085 (is-Lexer!5198 thiss!23823))))

(assert (=> start!335008 e!2229252))

(assert (=> start!335008 e!2229240))

(assert (=> start!335008 e!2229256))

(assert (=> start!335008 true))

(declare-fun inv!51258 (Token!10588) Bool)

(assert (=> start!335008 (and (inv!51258 token!511) e!2229237)))

(declare-fun e!2229259 () Bool)

(assert (=> start!335008 e!2229259))

(declare-fun e!2229235 () Bool)

(assert (=> start!335008 e!2229235))

(declare-fun tp!1101836 () Bool)

(declare-fun b!3602430 () Bool)

(assert (=> b!3602430 (= e!2229242 (and tp!1101836 (inv!51254 (tag!6305 (rule!8349 token!511))) (inv!51257 (transformation!5611 (rule!8349 token!511))) e!2229254))))

(declare-fun b!3602431 () Bool)

(assert (=> b!3602431 (= e!2229239 e!2229258)))

(declare-fun res!1456073 () Bool)

(assert (=> b!3602431 (=> res!1456073 e!2229258)))

(declare-fun size!28881 (BalanceConc!22694) Int)

(assert (=> b!3602431 (= res!1456073 (not (= lt!1238013 (Some!7852 (tuple2!37791 (Token!10589 (apply!9117 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237987) (rule!8349 (_1!22029 lt!1237996)) (size!28881 lt!1237987) lt!1237986) (_2!22029 lt!1237996))))))))

(declare-fun lt!1237985 () Unit!53946)

(declare-fun lemmaCharactersSize!664 (Token!10588) Unit!53946)

(assert (=> b!3602431 (= lt!1237985 (lemmaCharactersSize!664 (_1!22029 lt!1237996)))))

(declare-fun lt!1238006 () Unit!53946)

(declare-fun lemmaEqSameImage!802 (TokenValueInjection!11110 BalanceConc!22694 BalanceConc!22694) Unit!53946)

(assert (=> b!3602431 (= lt!1238006 (lemmaEqSameImage!802 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237987 (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996)))))))

(declare-fun lt!1237988 () Unit!53946)

(declare-fun lemmaSemiInverse!1368 (TokenValueInjection!11110 BalanceConc!22694) Unit!53946)

(assert (=> b!3602431 (= lt!1237988 (lemmaSemiInverse!1368 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237987))))

(declare-fun b!3602432 () Bool)

(declare-fun res!1456072 () Bool)

(assert (=> b!3602432 (=> res!1456072 e!2229249)))

(declare-fun isEmpty!22361 (List!38020) Bool)

(assert (=> b!3602432 (= res!1456072 (isEmpty!22361 suffix!1395))))

(declare-fun b!3602433 () Bool)

(declare-fun e!2229244 () Bool)

(assert (=> b!3602433 (= e!2229257 e!2229244)))

(declare-fun res!1456087 () Bool)

(assert (=> b!3602433 (=> (not res!1456087) (not e!2229244))))

(declare-fun lt!1238000 () Rule!11022)

(assert (=> b!3602433 (= res!1456087 (matchR!4939 (regex!5611 lt!1238000) (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))))))

(declare-fun get!12269 (Option!7852) Rule!11022)

(assert (=> b!3602433 (= lt!1238000 (get!12269 lt!1238004))))

(declare-fun b!3602434 () Bool)

(declare-fun e!2229251 () Bool)

(assert (=> b!3602434 (= e!2229252 e!2229251)))

(declare-fun res!1456082 () Bool)

(assert (=> b!3602434 (=> (not res!1456082) (not e!2229251))))

(declare-fun lt!1238009 () Option!7853)

(declare-fun isDefined!6085 (Option!7853) Bool)

(assert (=> b!3602434 (= res!1456082 (isDefined!6085 lt!1238009))))

(assert (=> b!3602434 (= lt!1238009 (maxPrefix!2734 thiss!23823 rules!3307 lt!1237999))))

(assert (=> b!3602434 (= lt!1237999 (list!13963 (charsOf!3625 token!511)))))

(declare-fun b!3602435 () Bool)

(assert (=> b!3602435 (= e!2229249 e!2229238)))

(declare-fun res!1456077 () Bool)

(assert (=> b!3602435 (=> res!1456077 e!2229238)))

(assert (=> b!3602435 (= res!1456077 (contains!7286 lt!1237992 lt!1238010))))

(assert (=> b!3602435 (= lt!1238010 (head!7557 suffix!1395))))

(assert (=> b!3602435 (= lt!1237992 (usedCharacters!825 (regex!5611 rule!403)))))

(declare-fun b!3602436 () Bool)

(assert (=> b!3602436 (= e!2229244 (= (rule!8349 (_1!22029 lt!1237996)) lt!1238000))))

(declare-fun b!3602437 () Bool)

(declare-fun tp!1101835 () Bool)

(assert (=> b!3602437 (= e!2229259 (and tp!1101835 (inv!51254 (tag!6305 rule!403)) (inv!51257 (transformation!5611 rule!403)) e!2229246))))

(declare-fun b!3602438 () Bool)

(declare-fun Unit!53949 () Unit!53946)

(assert (=> b!3602438 (= e!2229243 Unit!53949)))

(declare-fun b!3602439 () Bool)

(declare-fun res!1456075 () Bool)

(assert (=> b!3602439 (=> (not res!1456075) (not e!2229236))))

(assert (=> b!3602439 (= res!1456075 (= (rule!8349 token!511) rule!403))))

(assert (=> b!3602440 (= e!2229260 (and tp!1101827 tp!1101834))))

(declare-fun b!3602441 () Bool)

(assert (=> b!3602441 (= e!2229251 e!2229236)))

(declare-fun res!1456084 () Bool)

(assert (=> b!3602441 (=> (not res!1456084) (not e!2229236))))

(declare-fun lt!1238011 () tuple2!37790)

(assert (=> b!3602441 (= res!1456084 (= (_1!22029 lt!1238011) token!511))))

(assert (=> b!3602441 (= lt!1238011 (get!12268 lt!1238009))))

(declare-fun b!3602442 () Bool)

(declare-fun res!1456088 () Bool)

(assert (=> b!3602442 (=> (not res!1456088) (not e!2229252))))

(assert (=> b!3602442 (= res!1456088 (contains!7285 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3602443 () Bool)

(declare-fun res!1456078 () Bool)

(assert (=> b!3602443 (=> (not res!1456078) (not e!2229236))))

(assert (=> b!3602443 (= res!1456078 (isEmpty!22361 (_2!22029 lt!1238011)))))

(declare-fun b!3602444 () Bool)

(declare-fun tp!1101832 () Bool)

(assert (=> b!3602444 (= e!2229235 (and tp!1101832 (inv!51254 (tag!6305 anOtherTypeRule!33)) (inv!51257 (transformation!5611 anOtherTypeRule!33)) e!2229262))))

(assert (= (and start!335008 res!1456085) b!3602416))

(assert (= (and b!3602416 res!1456069) b!3602413))

(assert (= (and b!3602413 res!1456089) b!3602417))

(assert (= (and b!3602417 res!1456090) b!3602442))

(assert (= (and b!3602442 res!1456088) b!3602410))

(assert (= (and b!3602410 res!1456074) b!3602434))

(assert (= (and b!3602434 res!1456082) b!3602441))

(assert (= (and b!3602441 res!1456084) b!3602443))

(assert (= (and b!3602443 res!1456078) b!3602439))

(assert (= (and b!3602439 res!1456075) b!3602418))

(assert (= (and b!3602418 (not res!1456068)) b!3602432))

(assert (= (and b!3602432 (not res!1456072)) b!3602435))

(assert (= (and b!3602435 (not res!1456077)) b!3602423))

(assert (= (and b!3602423 (not res!1456079)) b!3602411))

(assert (= (and b!3602411 (not res!1456071)) b!3602409))

(assert (= (and b!3602409 res!1456081) b!3602433))

(assert (= (and b!3602433 res!1456087) b!3602436))

(assert (= (and b!3602409 (not res!1456080)) b!3602429))

(assert (= (and b!3602429 (not res!1456083)) b!3602431))

(assert (= (and b!3602431 (not res!1456073)) b!3602419))

(assert (= (and b!3602419 (not res!1456070)) b!3602426))

(assert (= (and b!3602426 c!623423) b!3602424))

(assert (= (and b!3602426 (not c!623423)) b!3602438))

(assert (= (and b!3602426 (not res!1456076)) b!3602425))

(assert (= (and b!3602425 (not res!1456086)) b!3602415))

(assert (= b!3602428 b!3602440))

(assert (= b!3602421 b!3602428))

(assert (= (and start!335008 (is-Cons!37898 rules!3307)) b!3602421))

(assert (= (and start!335008 (is-Cons!37896 suffix!1395)) b!3602420))

(assert (= b!3602430 b!3602414))

(assert (= b!3602422 b!3602430))

(assert (= start!335008 b!3602422))

(assert (= b!3602437 b!3602427))

(assert (= start!335008 b!3602437))

(assert (= b!3602444 b!3602412))

(assert (= start!335008 b!3602444))

(declare-fun m!4098557 () Bool)

(assert (=> b!3602419 m!4098557))

(declare-fun m!4098559 () Bool)

(assert (=> b!3602419 m!4098559))

(declare-fun m!4098561 () Bool)

(assert (=> b!3602419 m!4098561))

(declare-fun m!4098563 () Bool)

(assert (=> b!3602419 m!4098563))

(declare-fun m!4098565 () Bool)

(assert (=> b!3602419 m!4098565))

(assert (=> b!3602419 m!4098559))

(declare-fun m!4098567 () Bool)

(assert (=> b!3602419 m!4098567))

(declare-fun m!4098569 () Bool)

(assert (=> b!3602419 m!4098569))

(declare-fun m!4098571 () Bool)

(assert (=> b!3602428 m!4098571))

(declare-fun m!4098573 () Bool)

(assert (=> b!3602428 m!4098573))

(declare-fun m!4098575 () Bool)

(assert (=> start!335008 m!4098575))

(declare-fun m!4098577 () Bool)

(assert (=> b!3602433 m!4098577))

(assert (=> b!3602433 m!4098577))

(declare-fun m!4098579 () Bool)

(assert (=> b!3602433 m!4098579))

(assert (=> b!3602433 m!4098579))

(declare-fun m!4098581 () Bool)

(assert (=> b!3602433 m!4098581))

(declare-fun m!4098583 () Bool)

(assert (=> b!3602433 m!4098583))

(declare-fun m!4098585 () Bool)

(assert (=> b!3602431 m!4098585))

(declare-fun m!4098587 () Bool)

(assert (=> b!3602431 m!4098587))

(declare-fun m!4098589 () Bool)

(assert (=> b!3602431 m!4098589))

(declare-fun m!4098591 () Bool)

(assert (=> b!3602431 m!4098591))

(declare-fun m!4098593 () Bool)

(assert (=> b!3602431 m!4098593))

(declare-fun m!4098595 () Bool)

(assert (=> b!3602431 m!4098595))

(assert (=> b!3602431 m!4098593))

(declare-fun m!4098597 () Bool)

(assert (=> b!3602434 m!4098597))

(declare-fun m!4098599 () Bool)

(assert (=> b!3602434 m!4098599))

(declare-fun m!4098601 () Bool)

(assert (=> b!3602434 m!4098601))

(assert (=> b!3602434 m!4098601))

(declare-fun m!4098603 () Bool)

(assert (=> b!3602434 m!4098603))

(declare-fun m!4098605 () Bool)

(assert (=> b!3602442 m!4098605))

(declare-fun m!4098607 () Bool)

(assert (=> b!3602413 m!4098607))

(declare-fun m!4098609 () Bool)

(assert (=> b!3602426 m!4098609))

(declare-fun m!4098611 () Bool)

(assert (=> b!3602426 m!4098611))

(declare-fun m!4098613 () Bool)

(assert (=> b!3602429 m!4098613))

(declare-fun m!4098615 () Bool)

(assert (=> b!3602417 m!4098615))

(declare-fun m!4098617 () Bool)

(assert (=> b!3602443 m!4098617))

(declare-fun m!4098619 () Bool)

(assert (=> b!3602444 m!4098619))

(declare-fun m!4098621 () Bool)

(assert (=> b!3602444 m!4098621))

(declare-fun m!4098623 () Bool)

(assert (=> b!3602425 m!4098623))

(declare-fun m!4098625 () Bool)

(assert (=> b!3602423 m!4098625))

(assert (=> b!3602423 m!4098625))

(declare-fun m!4098627 () Bool)

(assert (=> b!3602423 m!4098627))

(declare-fun m!4098629 () Bool)

(assert (=> b!3602422 m!4098629))

(declare-fun m!4098631 () Bool)

(assert (=> b!3602437 m!4098631))

(declare-fun m!4098633 () Bool)

(assert (=> b!3602437 m!4098633))

(declare-fun m!4098635 () Bool)

(assert (=> b!3602441 m!4098635))

(declare-fun m!4098637 () Bool)

(assert (=> b!3602409 m!4098637))

(declare-fun m!4098639 () Bool)

(assert (=> b!3602409 m!4098639))

(declare-fun m!4098641 () Bool)

(assert (=> b!3602409 m!4098641))

(declare-fun m!4098643 () Bool)

(assert (=> b!3602409 m!4098643))

(declare-fun m!4098645 () Bool)

(assert (=> b!3602409 m!4098645))

(declare-fun m!4098647 () Bool)

(assert (=> b!3602409 m!4098647))

(assert (=> b!3602409 m!4098577))

(declare-fun m!4098649 () Bool)

(assert (=> b!3602409 m!4098649))

(declare-fun m!4098651 () Bool)

(assert (=> b!3602409 m!4098651))

(assert (=> b!3602409 m!4098639))

(declare-fun m!4098653 () Bool)

(assert (=> b!3602409 m!4098653))

(declare-fun m!4098655 () Bool)

(assert (=> b!3602409 m!4098655))

(declare-fun m!4098657 () Bool)

(assert (=> b!3602409 m!4098657))

(declare-fun m!4098659 () Bool)

(assert (=> b!3602409 m!4098659))

(declare-fun m!4098661 () Bool)

(assert (=> b!3602409 m!4098661))

(declare-fun m!4098663 () Bool)

(assert (=> b!3602409 m!4098663))

(declare-fun m!4098665 () Bool)

(assert (=> b!3602411 m!4098665))

(declare-fun m!4098667 () Bool)

(assert (=> b!3602424 m!4098667))

(declare-fun m!4098669 () Bool)

(assert (=> b!3602435 m!4098669))

(declare-fun m!4098671 () Bool)

(assert (=> b!3602435 m!4098671))

(declare-fun m!4098673 () Bool)

(assert (=> b!3602435 m!4098673))

(declare-fun m!4098675 () Bool)

(assert (=> b!3602418 m!4098675))

(declare-fun m!4098677 () Bool)

(assert (=> b!3602418 m!4098677))

(declare-fun m!4098679 () Bool)

(assert (=> b!3602418 m!4098679))

(declare-fun m!4098681 () Bool)

(assert (=> b!3602416 m!4098681))

(declare-fun m!4098683 () Bool)

(assert (=> b!3602432 m!4098683))

(declare-fun m!4098685 () Bool)

(assert (=> b!3602430 m!4098685))

(declare-fun m!4098687 () Bool)

(assert (=> b!3602430 m!4098687))

(push 1)

(assert (not b!3602433))

(assert (not b!3602437))

(assert tp_is_empty!17823)

(assert (not start!335008))

(assert (not b_next!93969))

(assert (not b!3602422))

(assert (not b!3602431))

(assert b_and!261869)

(assert b_and!261877)

(assert (not b!3602423))

(assert (not b!3602443))

(assert b_and!261879)

(assert (not b!3602413))

(assert (not b!3602424))

(assert (not b!3602428))

(assert (not b!3602442))

(assert (not b_next!93973))

(assert (not b!3602420))

(assert (not b!3602432))

(assert (not b!3602425))

(assert (not b!3602411))

(assert (not b!3602419))

(assert (not b!3602441))

(assert b_and!261871)

(assert (not b_next!93975))

(assert (not b!3602417))

(assert (not b_next!93967))

(assert (not b!3602409))

(assert (not b_next!93961))

(assert (not b!3602416))

(assert (not b!3602430))

(assert (not b!3602421))

(assert b_and!261867)

(assert (not b_next!93971))

(assert b_and!261873)

(assert (not b_next!93963))

(assert (not b!3602435))

(assert (not b!3602429))

(assert (not b!3602444))

(assert (not b_next!93965))

(assert b_and!261875)

(assert (not b!3602434))

(assert b_and!261881)

(assert (not b!3602418))

(assert (not b!3602426))

(check-sat)

(pop 1)

(push 1)

(assert b_and!261877)

(assert b_and!261879)

(assert (not b_next!93969))

(assert (not b_next!93973))

(assert (not b_next!93967))

(assert (not b_next!93961))

(assert b_and!261867)

(assert (not b_next!93965))

(assert b_and!261869)

(assert b_and!261871)

(assert (not b_next!93975))

(assert (not b_next!93971))

(assert b_and!261873)

(assert (not b_next!93963))

(assert b_and!261875)

(assert b_and!261881)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1061363 () Bool)

(declare-fun res!1456170 () Bool)

(declare-fun e!2229351 () Bool)

(assert (=> d!1061363 (=> res!1456170 e!2229351)))

(assert (=> d!1061363 (= res!1456170 (not (is-Cons!37898 rules!3307)))))

(assert (=> d!1061363 (= (sepAndNonSepRulesDisjointChars!1781 rules!3307 rules!3307) e!2229351)))

(declare-fun b!3602557 () Bool)

(declare-fun e!2229352 () Bool)

(assert (=> b!3602557 (= e!2229351 e!2229352)))

(declare-fun res!1456171 () Bool)

(assert (=> b!3602557 (=> (not res!1456171) (not e!2229352))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!810 (Rule!11022 List!38022) Bool)

(assert (=> b!3602557 (= res!1456171 (ruleDisjointCharsFromAllFromOtherType!810 (h!43318 rules!3307) rules!3307))))

(declare-fun b!3602558 () Bool)

(assert (=> b!3602558 (= e!2229352 (sepAndNonSepRulesDisjointChars!1781 rules!3307 (t!292473 rules!3307)))))

(assert (= (and d!1061363 (not res!1456170)) b!3602557))

(assert (= (and b!3602557 res!1456171) b!3602558))

(declare-fun m!4098821 () Bool)

(assert (=> b!3602557 m!4098821))

(declare-fun m!4098823 () Bool)

(assert (=> b!3602558 m!4098823))

(assert (=> b!3602411 d!1061363))

(declare-fun d!1061365 () Bool)

(assert (=> d!1061365 (= (isEmpty!22361 suffix!1395) (is-Nil!37896 suffix!1395))))

(assert (=> b!3602432 d!1061365))

(declare-fun b!3602587 () Bool)

(declare-fun res!1456197 () Bool)

(declare-fun e!2229367 () Bool)

(assert (=> b!3602587 (=> res!1456197 e!2229367)))

(declare-fun e!2229371 () Bool)

(assert (=> b!3602587 (= res!1456197 e!2229371)))

(declare-fun res!1456198 () Bool)

(assert (=> b!3602587 (=> (not res!1456198) (not e!2229371))))

(declare-fun lt!1238103 () Bool)

(assert (=> b!3602587 (= res!1456198 lt!1238103)))

(declare-fun bm!260472 () Bool)

(declare-fun call!260477 () Bool)

(assert (=> bm!260472 (= call!260477 (isEmpty!22361 (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))))))

(declare-fun b!3602588 () Bool)

(declare-fun e!2229372 () Bool)

(assert (=> b!3602588 (= e!2229372 (not lt!1238103))))

(declare-fun b!3602589 () Bool)

(declare-fun e!2229368 () Bool)

(assert (=> b!3602589 (= e!2229368 (= lt!1238103 call!260477))))

(declare-fun b!3602590 () Bool)

(assert (=> b!3602590 (= e!2229371 (= (head!7557 (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))) (c!623424 (regex!5611 lt!1238000))))))

(declare-fun d!1061367 () Bool)

(assert (=> d!1061367 e!2229368))

(declare-fun c!623440 () Bool)

(assert (=> d!1061367 (= c!623440 (is-EmptyExpr!10370 (regex!5611 lt!1238000)))))

(declare-fun e!2229369 () Bool)

(assert (=> d!1061367 (= lt!1238103 e!2229369)))

(declare-fun c!623438 () Bool)

(assert (=> d!1061367 (= c!623438 (isEmpty!22361 (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))))))

(declare-fun validRegex!4746 (Regex!10370) Bool)

(assert (=> d!1061367 (validRegex!4746 (regex!5611 lt!1238000))))

(assert (=> d!1061367 (= (matchR!4939 (regex!5611 lt!1238000) (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))) lt!1238103)))

(declare-fun b!3602591 () Bool)

(declare-fun res!1456195 () Bool)

(assert (=> b!3602591 (=> res!1456195 e!2229367)))

(assert (=> b!3602591 (= res!1456195 (not (is-ElementMatch!10370 (regex!5611 lt!1238000))))))

(assert (=> b!3602591 (= e!2229372 e!2229367)))

(declare-fun b!3602592 () Bool)

(declare-fun derivativeStep!3135 (Regex!10370 C!20926) Regex!10370)

(declare-fun tail!5584 (List!38020) List!38020)

(assert (=> b!3602592 (= e!2229369 (matchR!4939 (derivativeStep!3135 (regex!5611 lt!1238000) (head!7557 (list!13963 (charsOf!3625 (_1!22029 lt!1237996))))) (tail!5584 (list!13963 (charsOf!3625 (_1!22029 lt!1237996))))))))

(declare-fun b!3602593 () Bool)

(declare-fun e!2229373 () Bool)

(assert (=> b!3602593 (= e!2229373 (not (= (head!7557 (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))) (c!623424 (regex!5611 lt!1238000)))))))

(declare-fun b!3602594 () Bool)

(assert (=> b!3602594 (= e!2229368 e!2229372)))

(declare-fun c!623439 () Bool)

(assert (=> b!3602594 (= c!623439 (is-EmptyLang!10370 (regex!5611 lt!1238000)))))

(declare-fun b!3602595 () Bool)

(declare-fun e!2229370 () Bool)

(assert (=> b!3602595 (= e!2229367 e!2229370)))

(declare-fun res!1456199 () Bool)

(assert (=> b!3602595 (=> (not res!1456199) (not e!2229370))))

(assert (=> b!3602595 (= res!1456199 (not lt!1238103))))

(declare-fun b!3602596 () Bool)

(declare-fun res!1456200 () Bool)

(assert (=> b!3602596 (=> (not res!1456200) (not e!2229371))))

(assert (=> b!3602596 (= res!1456200 (isEmpty!22361 (tail!5584 (list!13963 (charsOf!3625 (_1!22029 lt!1237996))))))))

(declare-fun b!3602597 () Bool)

(declare-fun res!1456193 () Bool)

(assert (=> b!3602597 (=> (not res!1456193) (not e!2229371))))

(assert (=> b!3602597 (= res!1456193 (not call!260477))))

(declare-fun b!3602598 () Bool)

(declare-fun res!1456196 () Bool)

(assert (=> b!3602598 (=> res!1456196 e!2229373)))

(assert (=> b!3602598 (= res!1456196 (not (isEmpty!22361 (tail!5584 (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))))))))

(declare-fun b!3602599 () Bool)

(declare-fun nullable!3586 (Regex!10370) Bool)

(assert (=> b!3602599 (= e!2229369 (nullable!3586 (regex!5611 lt!1238000)))))

(declare-fun b!3602600 () Bool)

(assert (=> b!3602600 (= e!2229370 e!2229373)))

(declare-fun res!1456194 () Bool)

(assert (=> b!3602600 (=> res!1456194 e!2229373)))

(assert (=> b!3602600 (= res!1456194 call!260477)))

(assert (= (and d!1061367 c!623438) b!3602599))

(assert (= (and d!1061367 (not c!623438)) b!3602592))

(assert (= (and d!1061367 c!623440) b!3602589))

(assert (= (and d!1061367 (not c!623440)) b!3602594))

(assert (= (and b!3602594 c!623439) b!3602588))

(assert (= (and b!3602594 (not c!623439)) b!3602591))

(assert (= (and b!3602591 (not res!1456195)) b!3602587))

(assert (= (and b!3602587 res!1456198) b!3602597))

(assert (= (and b!3602597 res!1456193) b!3602596))

(assert (= (and b!3602596 res!1456200) b!3602590))

(assert (= (and b!3602587 (not res!1456197)) b!3602595))

(assert (= (and b!3602595 res!1456199) b!3602600))

(assert (= (and b!3602600 (not res!1456194)) b!3602598))

(assert (= (and b!3602598 (not res!1456196)) b!3602593))

(assert (= (or b!3602589 b!3602600 b!3602597) bm!260472))

(assert (=> b!3602598 m!4098579))

(declare-fun m!4098825 () Bool)

(assert (=> b!3602598 m!4098825))

(assert (=> b!3602598 m!4098825))

(declare-fun m!4098827 () Bool)

(assert (=> b!3602598 m!4098827))

(assert (=> d!1061367 m!4098579))

(declare-fun m!4098829 () Bool)

(assert (=> d!1061367 m!4098829))

(declare-fun m!4098831 () Bool)

(assert (=> d!1061367 m!4098831))

(assert (=> b!3602596 m!4098579))

(assert (=> b!3602596 m!4098825))

(assert (=> b!3602596 m!4098825))

(assert (=> b!3602596 m!4098827))

(assert (=> bm!260472 m!4098579))

(assert (=> bm!260472 m!4098829))

(assert (=> b!3602592 m!4098579))

(declare-fun m!4098833 () Bool)

(assert (=> b!3602592 m!4098833))

(assert (=> b!3602592 m!4098833))

(declare-fun m!4098835 () Bool)

(assert (=> b!3602592 m!4098835))

(assert (=> b!3602592 m!4098579))

(assert (=> b!3602592 m!4098825))

(assert (=> b!3602592 m!4098835))

(assert (=> b!3602592 m!4098825))

(declare-fun m!4098837 () Bool)

(assert (=> b!3602592 m!4098837))

(assert (=> b!3602593 m!4098579))

(assert (=> b!3602593 m!4098833))

(assert (=> b!3602590 m!4098579))

(assert (=> b!3602590 m!4098833))

(declare-fun m!4098839 () Bool)

(assert (=> b!3602599 m!4098839))

(assert (=> b!3602433 d!1061367))

(declare-fun d!1061369 () Bool)

(declare-fun list!13965 (Conc!11540) List!38020)

(assert (=> d!1061369 (= (list!13963 (charsOf!3625 (_1!22029 lt!1237996))) (list!13965 (c!623425 (charsOf!3625 (_1!22029 lt!1237996)))))))

(declare-fun bs!570592 () Bool)

(assert (= bs!570592 d!1061369))

(declare-fun m!4098841 () Bool)

(assert (=> bs!570592 m!4098841))

(assert (=> b!3602433 d!1061369))

(declare-fun d!1061371 () Bool)

(declare-fun lt!1238106 () BalanceConc!22694)

(assert (=> d!1061371 (= (list!13963 lt!1238106) (originalCharacters!6325 (_1!22029 lt!1237996)))))

(declare-fun dynLambda!16363 (Int TokenValue!5841) BalanceConc!22694)

(assert (=> d!1061371 (= lt!1238106 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (value!180375 (_1!22029 lt!1237996))))))

(assert (=> d!1061371 (= (charsOf!3625 (_1!22029 lt!1237996)) lt!1238106)))

(declare-fun b_lambda!106555 () Bool)

(assert (=> (not b_lambda!106555) (not d!1061371)))

(declare-fun tb!206217 () Bool)

(declare-fun t!292478 () Bool)

(assert (=> (and b!3602412 (= (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292478) tb!206217))

(declare-fun b!3602605 () Bool)

(declare-fun e!2229376 () Bool)

(declare-fun tp!1101889 () Bool)

(declare-fun inv!51261 (Conc!11540) Bool)

(assert (=> b!3602605 (= e!2229376 (and (inv!51261 (c!623425 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (value!180375 (_1!22029 lt!1237996))))) tp!1101889))))

(declare-fun result!251358 () Bool)

(declare-fun inv!51262 (BalanceConc!22694) Bool)

(assert (=> tb!206217 (= result!251358 (and (inv!51262 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (value!180375 (_1!22029 lt!1237996)))) e!2229376))))

(assert (= tb!206217 b!3602605))

(declare-fun m!4098843 () Bool)

(assert (=> b!3602605 m!4098843))

(declare-fun m!4098845 () Bool)

(assert (=> tb!206217 m!4098845))

(assert (=> d!1061371 t!292478))

(declare-fun b_and!261899 () Bool)

(assert (= b_and!261869 (and (=> t!292478 result!251358) b_and!261899)))

(declare-fun tb!206219 () Bool)

(declare-fun t!292480 () Bool)

(assert (=> (and b!3602440 (= (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292480) tb!206219))

(declare-fun result!251362 () Bool)

(assert (= result!251362 result!251358))

(assert (=> d!1061371 t!292480))

(declare-fun b_and!261901 () Bool)

(assert (= b_and!261873 (and (=> t!292480 result!251362) b_and!261901)))

(declare-fun tb!206221 () Bool)

(declare-fun t!292482 () Bool)

(assert (=> (and b!3602427 (= (toChars!7754 (transformation!5611 rule!403)) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292482) tb!206221))

(declare-fun result!251364 () Bool)

(assert (= result!251364 result!251358))

(assert (=> d!1061371 t!292482))

(declare-fun b_and!261903 () Bool)

(assert (= b_and!261877 (and (=> t!292482 result!251364) b_and!261903)))

(declare-fun tb!206223 () Bool)

(declare-fun t!292484 () Bool)

(assert (=> (and b!3602414 (= (toChars!7754 (transformation!5611 (rule!8349 token!511))) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292484) tb!206223))

(declare-fun result!251366 () Bool)

(assert (= result!251366 result!251358))

(assert (=> d!1061371 t!292484))

(declare-fun b_and!261905 () Bool)

(assert (= b_and!261881 (and (=> t!292484 result!251366) b_and!261905)))

(declare-fun m!4098847 () Bool)

(assert (=> d!1061371 m!4098847))

(declare-fun m!4098849 () Bool)

(assert (=> d!1061371 m!4098849))

(assert (=> b!3602433 d!1061371))

(declare-fun d!1061373 () Bool)

(assert (=> d!1061373 (= (get!12269 lt!1238004) (v!37569 lt!1238004))))

(assert (=> b!3602433 d!1061373))

(declare-fun d!1061375 () Bool)

(declare-fun fromListB!1924 (List!38020) BalanceConc!22694)

(assert (=> d!1061375 (= (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996))) (fromListB!1924 (originalCharacters!6325 (_1!22029 lt!1237996))))))

(declare-fun bs!570593 () Bool)

(assert (= bs!570593 d!1061375))

(declare-fun m!4098851 () Bool)

(assert (=> bs!570593 m!4098851))

(assert (=> b!3602431 d!1061375))

(declare-fun d!1061377 () Bool)

(declare-fun dynLambda!16364 (Int BalanceConc!22694) TokenValue!5841)

(assert (=> d!1061377 (= (apply!9117 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237987) (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) lt!1237987))))

(declare-fun b_lambda!106557 () Bool)

(assert (=> (not b_lambda!106557) (not d!1061377)))

(declare-fun t!292486 () Bool)

(declare-fun tb!206225 () Bool)

(assert (=> (and b!3602412 (= (toValue!7895 (transformation!5611 anOtherTypeRule!33)) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292486) tb!206225))

(declare-fun result!251368 () Bool)

(assert (=> tb!206225 (= result!251368 (inv!21 (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) lt!1237987)))))

(declare-fun m!4098853 () Bool)

(assert (=> tb!206225 m!4098853))

(assert (=> d!1061377 t!292486))

(declare-fun b_and!261907 () Bool)

(assert (= b_and!261867 (and (=> t!292486 result!251368) b_and!261907)))

(declare-fun t!292488 () Bool)

(declare-fun tb!206227 () Bool)

(assert (=> (and b!3602440 (= (toValue!7895 (transformation!5611 (h!43318 rules!3307))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292488) tb!206227))

(declare-fun result!251372 () Bool)

(assert (= result!251372 result!251368))

(assert (=> d!1061377 t!292488))

(declare-fun b_and!261909 () Bool)

(assert (= b_and!261871 (and (=> t!292488 result!251372) b_and!261909)))

(declare-fun t!292490 () Bool)

(declare-fun tb!206229 () Bool)

(assert (=> (and b!3602427 (= (toValue!7895 (transformation!5611 rule!403)) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292490) tb!206229))

(declare-fun result!251374 () Bool)

(assert (= result!251374 result!251368))

(assert (=> d!1061377 t!292490))

(declare-fun b_and!261911 () Bool)

(assert (= b_and!261875 (and (=> t!292490 result!251374) b_and!261911)))

(declare-fun tb!206231 () Bool)

(declare-fun t!292492 () Bool)

(assert (=> (and b!3602414 (= (toValue!7895 (transformation!5611 (rule!8349 token!511))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292492) tb!206231))

(declare-fun result!251376 () Bool)

(assert (= result!251376 result!251368))

(assert (=> d!1061377 t!292492))

(declare-fun b_and!261913 () Bool)

(assert (= b_and!261879 (and (=> t!292492 result!251376) b_and!261913)))

(declare-fun m!4098855 () Bool)

(assert (=> d!1061377 m!4098855))

(assert (=> b!3602431 d!1061377))

(declare-fun b!3602752 () Bool)

(declare-fun e!2229459 () Bool)

(assert (=> b!3602752 (= e!2229459 true)))

(declare-fun d!1061379 () Bool)

(assert (=> d!1061379 e!2229459))

(assert (= d!1061379 b!3602752))

(declare-fun lambda!123984 () Int)

(declare-fun order!20659 () Int)

(declare-fun order!20661 () Int)

(declare-fun dynLambda!16365 (Int Int) Int)

(declare-fun dynLambda!16366 (Int Int) Int)

(assert (=> b!3602752 (< (dynLambda!16365 order!20659 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) (dynLambda!16366 order!20661 lambda!123984))))

(declare-fun order!20663 () Int)

(declare-fun dynLambda!16367 (Int Int) Int)

(assert (=> b!3602752 (< (dynLambda!16367 order!20663 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) (dynLambda!16366 order!20661 lambda!123984))))

(assert (=> d!1061379 (= (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) lt!1237987) (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996)))))))

(declare-fun lt!1238155 () Unit!53946)

(declare-fun Forall2of!304 (Int BalanceConc!22694 BalanceConc!22694) Unit!53946)

(assert (=> d!1061379 (= lt!1238155 (Forall2of!304 lambda!123984 lt!1237987 (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996)))))))

(assert (=> d!1061379 (= (list!13963 lt!1237987) (list!13963 (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996)))))))

(assert (=> d!1061379 (= (lemmaEqSameImage!802 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237987 (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996)))) lt!1238155)))

(declare-fun b_lambda!106565 () Bool)

(assert (=> (not b_lambda!106565) (not d!1061379)))

(assert (=> d!1061379 t!292486))

(declare-fun b_and!261939 () Bool)

(assert (= b_and!261907 (and (=> t!292486 result!251368) b_and!261939)))

(assert (=> d!1061379 t!292488))

(declare-fun b_and!261941 () Bool)

(assert (= b_and!261909 (and (=> t!292488 result!251372) b_and!261941)))

(assert (=> d!1061379 t!292490))

(declare-fun b_and!261943 () Bool)

(assert (= b_and!261911 (and (=> t!292490 result!251374) b_and!261943)))

(assert (=> d!1061379 t!292492))

(declare-fun b_and!261945 () Bool)

(assert (= b_and!261913 (and (=> t!292492 result!251376) b_and!261945)))

(declare-fun b_lambda!106567 () Bool)

(assert (=> (not b_lambda!106567) (not d!1061379)))

(declare-fun t!292510 () Bool)

(declare-fun tb!206249 () Bool)

(assert (=> (and b!3602412 (= (toValue!7895 (transformation!5611 anOtherTypeRule!33)) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292510) tb!206249))

(declare-fun result!251396 () Bool)

(assert (=> tb!206249 (= result!251396 (inv!21 (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (seqFromList!4164 (originalCharacters!6325 (_1!22029 lt!1237996))))))))

(declare-fun m!4099019 () Bool)

(assert (=> tb!206249 m!4099019))

(assert (=> d!1061379 t!292510))

(declare-fun b_and!261947 () Bool)

(assert (= b_and!261939 (and (=> t!292510 result!251396) b_and!261947)))

(declare-fun tb!206251 () Bool)

(declare-fun t!292512 () Bool)

(assert (=> (and b!3602440 (= (toValue!7895 (transformation!5611 (h!43318 rules!3307))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292512) tb!206251))

(declare-fun result!251398 () Bool)

(assert (= result!251398 result!251396))

(assert (=> d!1061379 t!292512))

(declare-fun b_and!261949 () Bool)

(assert (= b_and!261941 (and (=> t!292512 result!251398) b_and!261949)))

(declare-fun t!292514 () Bool)

(declare-fun tb!206253 () Bool)

(assert (=> (and b!3602427 (= (toValue!7895 (transformation!5611 rule!403)) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292514) tb!206253))

(declare-fun result!251400 () Bool)

(assert (= result!251400 result!251396))

(assert (=> d!1061379 t!292514))

(declare-fun b_and!261951 () Bool)

(assert (= b_and!261943 (and (=> t!292514 result!251400) b_and!261951)))

(declare-fun tb!206255 () Bool)

(declare-fun t!292516 () Bool)

(assert (=> (and b!3602414 (= (toValue!7895 (transformation!5611 (rule!8349 token!511))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292516) tb!206255))

(declare-fun result!251402 () Bool)

(assert (= result!251402 result!251396))

(assert (=> d!1061379 t!292516))

(declare-fun b_and!261953 () Bool)

(assert (= b_and!261945 (and (=> t!292516 result!251402) b_and!261953)))

(assert (=> d!1061379 m!4098855))

(assert (=> d!1061379 m!4098593))

(declare-fun m!4099023 () Bool)

(assert (=> d!1061379 m!4099023))

(assert (=> d!1061379 m!4098645))

(assert (=> d!1061379 m!4098593))

(declare-fun m!4099025 () Bool)

(assert (=> d!1061379 m!4099025))

(assert (=> d!1061379 m!4098593))

(declare-fun m!4099027 () Bool)

(assert (=> d!1061379 m!4099027))

(assert (=> b!3602431 d!1061379))

(declare-fun d!1061425 () Bool)

(assert (=> d!1061425 (= (size!28879 (_1!22029 lt!1237996)) (size!28880 (originalCharacters!6325 (_1!22029 lt!1237996))))))

(declare-fun Unit!53955 () Unit!53946)

(assert (=> d!1061425 (= (lemmaCharactersSize!664 (_1!22029 lt!1237996)) Unit!53955)))

(declare-fun bs!570599 () Bool)

(assert (= bs!570599 d!1061425))

(declare-fun m!4099029 () Bool)

(assert (=> bs!570599 m!4099029))

(assert (=> b!3602431 d!1061425))

(declare-fun d!1061427 () Bool)

(declare-fun lt!1238163 () Int)

(assert (=> d!1061427 (= lt!1238163 (size!28880 (list!13963 lt!1237987)))))

(declare-fun size!28885 (Conc!11540) Int)

(assert (=> d!1061427 (= lt!1238163 (size!28885 (c!623425 lt!1237987)))))

(assert (=> d!1061427 (= (size!28881 lt!1237987) lt!1238163)))

(declare-fun bs!570600 () Bool)

(assert (= bs!570600 d!1061427))

(assert (=> bs!570600 m!4098645))

(assert (=> bs!570600 m!4098645))

(declare-fun m!4099031 () Bool)

(assert (=> bs!570600 m!4099031))

(declare-fun m!4099033 () Bool)

(assert (=> bs!570600 m!4099033))

(assert (=> b!3602431 d!1061427))

(declare-fun b!3602781 () Bool)

(declare-fun e!2229478 () Bool)

(assert (=> b!3602781 (= e!2229478 true)))

(declare-fun d!1061429 () Bool)

(assert (=> d!1061429 e!2229478))

(assert (= d!1061429 b!3602781))

(declare-fun order!20665 () Int)

(declare-fun lambda!123987 () Int)

(declare-fun dynLambda!16368 (Int Int) Int)

(assert (=> b!3602781 (< (dynLambda!16365 order!20659 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) (dynLambda!16368 order!20665 lambda!123987))))

(assert (=> b!3602781 (< (dynLambda!16367 order!20663 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) (dynLambda!16368 order!20665 lambda!123987))))

(assert (=> d!1061429 (= (list!13963 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) lt!1237987))) (list!13963 lt!1237987))))

(declare-fun lt!1238170 () Unit!53946)

(declare-fun ForallOf!645 (Int BalanceConc!22694) Unit!53946)

(assert (=> d!1061429 (= lt!1238170 (ForallOf!645 lambda!123987 lt!1237987))))

(assert (=> d!1061429 (= (lemmaSemiInverse!1368 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237987) lt!1238170)))

(declare-fun b_lambda!106569 () Bool)

(assert (=> (not b_lambda!106569) (not d!1061429)))

(declare-fun tb!206257 () Bool)

(declare-fun t!292518 () Bool)

(assert (=> (and b!3602412 (= (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292518) tb!206257))

(declare-fun b!3602782 () Bool)

(declare-fun tp!1101894 () Bool)

(declare-fun e!2229479 () Bool)

(assert (=> b!3602782 (= e!2229479 (and (inv!51261 (c!623425 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) lt!1237987)))) tp!1101894))))

(declare-fun result!251404 () Bool)

(assert (=> tb!206257 (= result!251404 (and (inv!51262 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) lt!1237987))) e!2229479))))

(assert (= tb!206257 b!3602782))

(declare-fun m!4099059 () Bool)

(assert (=> b!3602782 m!4099059))

(declare-fun m!4099061 () Bool)

(assert (=> tb!206257 m!4099061))

(assert (=> d!1061429 t!292518))

(declare-fun b_and!261955 () Bool)

(assert (= b_and!261899 (and (=> t!292518 result!251404) b_and!261955)))

(declare-fun t!292520 () Bool)

(declare-fun tb!206259 () Bool)

(assert (=> (and b!3602440 (= (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292520) tb!206259))

(declare-fun result!251406 () Bool)

(assert (= result!251406 result!251404))

(assert (=> d!1061429 t!292520))

(declare-fun b_and!261957 () Bool)

(assert (= b_and!261901 (and (=> t!292520 result!251406) b_and!261957)))

(declare-fun tb!206261 () Bool)

(declare-fun t!292522 () Bool)

(assert (=> (and b!3602427 (= (toChars!7754 (transformation!5611 rule!403)) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292522) tb!206261))

(declare-fun result!251408 () Bool)

(assert (= result!251408 result!251404))

(assert (=> d!1061429 t!292522))

(declare-fun b_and!261959 () Bool)

(assert (= b_and!261903 (and (=> t!292522 result!251408) b_and!261959)))

(declare-fun tb!206263 () Bool)

(declare-fun t!292524 () Bool)

(assert (=> (and b!3602414 (= (toChars!7754 (transformation!5611 (rule!8349 token!511))) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292524) tb!206263))

(declare-fun result!251410 () Bool)

(assert (= result!251410 result!251404))

(assert (=> d!1061429 t!292524))

(declare-fun b_and!261961 () Bool)

(assert (= b_and!261905 (and (=> t!292524 result!251410) b_and!261961)))

(declare-fun b_lambda!106571 () Bool)

(assert (=> (not b_lambda!106571) (not d!1061429)))

(assert (=> d!1061429 t!292486))

(declare-fun b_and!261963 () Bool)

(assert (= b_and!261947 (and (=> t!292486 result!251368) b_and!261963)))

(assert (=> d!1061429 t!292488))

(declare-fun b_and!261965 () Bool)

(assert (= b_and!261949 (and (=> t!292488 result!251372) b_and!261965)))

(assert (=> d!1061429 t!292490))

(declare-fun b_and!261967 () Bool)

(assert (= b_and!261951 (and (=> t!292490 result!251374) b_and!261967)))

(assert (=> d!1061429 t!292492))

(declare-fun b_and!261969 () Bool)

(assert (= b_and!261953 (and (=> t!292492 result!251376) b_and!261969)))

(declare-fun m!4099063 () Bool)

(assert (=> d!1061429 m!4099063))

(declare-fun m!4099065 () Bool)

(assert (=> d!1061429 m!4099065))

(assert (=> d!1061429 m!4098855))

(assert (=> d!1061429 m!4098855))

(assert (=> d!1061429 m!4099063))

(assert (=> d!1061429 m!4098645))

(declare-fun m!4099067 () Bool)

(assert (=> d!1061429 m!4099067))

(assert (=> b!3602431 d!1061429))

(declare-fun b!3602796 () Bool)

(declare-fun e!2229487 () List!38020)

(assert (=> b!3602796 (= e!2229487 (Cons!37896 (h!43316 lt!1237999) (++!9427 (t!292471 lt!1237999) suffix!1395)))))

(declare-fun b!3602795 () Bool)

(assert (=> b!3602795 (= e!2229487 suffix!1395)))

(declare-fun b!3602797 () Bool)

(declare-fun res!1456318 () Bool)

(declare-fun e!2229486 () Bool)

(assert (=> b!3602797 (=> (not res!1456318) (not e!2229486))))

(declare-fun lt!1238176 () List!38020)

(assert (=> b!3602797 (= res!1456318 (= (size!28880 lt!1238176) (+ (size!28880 lt!1237999) (size!28880 suffix!1395))))))

(declare-fun d!1061437 () Bool)

(assert (=> d!1061437 e!2229486))

(declare-fun res!1456317 () Bool)

(assert (=> d!1061437 (=> (not res!1456317) (not e!2229486))))

(declare-fun content!5410 (List!38020) (Set C!20926))

(assert (=> d!1061437 (= res!1456317 (= (content!5410 lt!1238176) (set.union (content!5410 lt!1237999) (content!5410 suffix!1395))))))

(assert (=> d!1061437 (= lt!1238176 e!2229487)))

(declare-fun c!623470 () Bool)

(assert (=> d!1061437 (= c!623470 (is-Nil!37896 lt!1237999))))

(assert (=> d!1061437 (= (++!9427 lt!1237999 suffix!1395) lt!1238176)))

(declare-fun b!3602798 () Bool)

(assert (=> b!3602798 (= e!2229486 (or (not (= suffix!1395 Nil!37896)) (= lt!1238176 lt!1237999)))))

(assert (= (and d!1061437 c!623470) b!3602795))

(assert (= (and d!1061437 (not c!623470)) b!3602796))

(assert (= (and d!1061437 res!1456317) b!3602797))

(assert (= (and b!3602797 res!1456318) b!3602798))

(declare-fun m!4099069 () Bool)

(assert (=> b!3602796 m!4099069))

(declare-fun m!4099071 () Bool)

(assert (=> b!3602797 m!4099071))

(declare-fun m!4099073 () Bool)

(assert (=> b!3602797 m!4099073))

(declare-fun m!4099075 () Bool)

(assert (=> b!3602797 m!4099075))

(declare-fun m!4099077 () Bool)

(assert (=> d!1061437 m!4099077))

(declare-fun m!4099079 () Bool)

(assert (=> d!1061437 m!4099079))

(declare-fun m!4099081 () Bool)

(assert (=> d!1061437 m!4099081))

(assert (=> b!3602409 d!1061437))

(declare-fun b!3602815 () Bool)

(declare-fun e!2229498 () Bool)

(assert (=> b!3602815 (= e!2229498 (isPrefix!2974 (tail!5584 lt!1237986) (tail!5584 (++!9427 lt!1237986 (_2!22029 lt!1237996)))))))

(declare-fun d!1061439 () Bool)

(declare-fun e!2229497 () Bool)

(assert (=> d!1061439 e!2229497))

(declare-fun res!1456332 () Bool)

(assert (=> d!1061439 (=> res!1456332 e!2229497)))

(declare-fun lt!1238181 () Bool)

(assert (=> d!1061439 (= res!1456332 (not lt!1238181))))

(declare-fun e!2229499 () Bool)

(assert (=> d!1061439 (= lt!1238181 e!2229499)))

(declare-fun res!1456334 () Bool)

(assert (=> d!1061439 (=> res!1456334 e!2229499)))

(assert (=> d!1061439 (= res!1456334 (is-Nil!37896 lt!1237986))))

(assert (=> d!1061439 (= (isPrefix!2974 lt!1237986 (++!9427 lt!1237986 (_2!22029 lt!1237996))) lt!1238181)))

(declare-fun b!3602814 () Bool)

(declare-fun res!1456331 () Bool)

(assert (=> b!3602814 (=> (not res!1456331) (not e!2229498))))

(assert (=> b!3602814 (= res!1456331 (= (head!7557 lt!1237986) (head!7557 (++!9427 lt!1237986 (_2!22029 lt!1237996)))))))

(declare-fun b!3602816 () Bool)

(assert (=> b!3602816 (= e!2229497 (>= (size!28880 (++!9427 lt!1237986 (_2!22029 lt!1237996))) (size!28880 lt!1237986)))))

(declare-fun b!3602813 () Bool)

(assert (=> b!3602813 (= e!2229499 e!2229498)))

(declare-fun res!1456333 () Bool)

(assert (=> b!3602813 (=> (not res!1456333) (not e!2229498))))

(assert (=> b!3602813 (= res!1456333 (not (is-Nil!37896 (++!9427 lt!1237986 (_2!22029 lt!1237996)))))))

(assert (= (and d!1061439 (not res!1456334)) b!3602813))

(assert (= (and b!3602813 res!1456333) b!3602814))

(assert (= (and b!3602814 res!1456331) b!3602815))

(assert (= (and d!1061439 (not res!1456332)) b!3602816))

(declare-fun m!4099101 () Bool)

(assert (=> b!3602815 m!4099101))

(assert (=> b!3602815 m!4098639))

(declare-fun m!4099103 () Bool)

(assert (=> b!3602815 m!4099103))

(assert (=> b!3602815 m!4099101))

(assert (=> b!3602815 m!4099103))

(declare-fun m!4099105 () Bool)

(assert (=> b!3602815 m!4099105))

(assert (=> b!3602814 m!4098611))

(assert (=> b!3602814 m!4098639))

(declare-fun m!4099107 () Bool)

(assert (=> b!3602814 m!4099107))

(assert (=> b!3602816 m!4098639))

(declare-fun m!4099109 () Bool)

(assert (=> b!3602816 m!4099109))

(assert (=> b!3602816 m!4098563))

(assert (=> b!3602409 d!1061439))

(declare-fun d!1061447 () Bool)

(declare-fun isEmpty!22364 (Option!7852) Bool)

(assert (=> d!1061447 (= (isDefined!6084 lt!1238004) (not (isEmpty!22364 lt!1238004)))))

(declare-fun bs!570602 () Bool)

(assert (= bs!570602 d!1061447))

(declare-fun m!4099111 () Bool)

(assert (=> bs!570602 m!4099111))

(assert (=> b!3602409 d!1061447))

(declare-fun b!3602819 () Bool)

(declare-fun e!2229501 () Bool)

(assert (=> b!3602819 (= e!2229501 (isPrefix!2974 (tail!5584 lt!1237999) (tail!5584 lt!1237990)))))

(declare-fun d!1061449 () Bool)

(declare-fun e!2229500 () Bool)

(assert (=> d!1061449 e!2229500))

(declare-fun res!1456336 () Bool)

(assert (=> d!1061449 (=> res!1456336 e!2229500)))

(declare-fun lt!1238182 () Bool)

(assert (=> d!1061449 (= res!1456336 (not lt!1238182))))

(declare-fun e!2229502 () Bool)

(assert (=> d!1061449 (= lt!1238182 e!2229502)))

(declare-fun res!1456338 () Bool)

(assert (=> d!1061449 (=> res!1456338 e!2229502)))

(assert (=> d!1061449 (= res!1456338 (is-Nil!37896 lt!1237999))))

(assert (=> d!1061449 (= (isPrefix!2974 lt!1237999 lt!1237990) lt!1238182)))

(declare-fun b!3602818 () Bool)

(declare-fun res!1456335 () Bool)

(assert (=> b!3602818 (=> (not res!1456335) (not e!2229501))))

(assert (=> b!3602818 (= res!1456335 (= (head!7557 lt!1237999) (head!7557 lt!1237990)))))

(declare-fun b!3602820 () Bool)

(assert (=> b!3602820 (= e!2229500 (>= (size!28880 lt!1237990) (size!28880 lt!1237999)))))

(declare-fun b!3602817 () Bool)

(assert (=> b!3602817 (= e!2229502 e!2229501)))

(declare-fun res!1456337 () Bool)

(assert (=> b!3602817 (=> (not res!1456337) (not e!2229501))))

(assert (=> b!3602817 (= res!1456337 (not (is-Nil!37896 lt!1237990)))))

(assert (= (and d!1061449 (not res!1456338)) b!3602817))

(assert (= (and b!3602817 res!1456337) b!3602818))

(assert (= (and b!3602818 res!1456335) b!3602819))

(assert (= (and d!1061449 (not res!1456336)) b!3602820))

(declare-fun m!4099113 () Bool)

(assert (=> b!3602819 m!4099113))

(declare-fun m!4099115 () Bool)

(assert (=> b!3602819 m!4099115))

(assert (=> b!3602819 m!4099113))

(assert (=> b!3602819 m!4099115))

(declare-fun m!4099117 () Bool)

(assert (=> b!3602819 m!4099117))

(declare-fun m!4099119 () Bool)

(assert (=> b!3602818 m!4099119))

(declare-fun m!4099121 () Bool)

(assert (=> b!3602818 m!4099121))

(declare-fun m!4099123 () Bool)

(assert (=> b!3602820 m!4099123))

(assert (=> b!3602820 m!4099073))

(assert (=> b!3602409 d!1061449))

(declare-fun b!3602852 () Bool)

(declare-fun e!2229520 () Unit!53946)

(declare-fun Unit!53956 () Unit!53946)

(assert (=> b!3602852 (= e!2229520 Unit!53956)))

(declare-fun d!1061451 () Bool)

(assert (=> d!1061451 (isDefined!6085 (maxPrefix!2734 thiss!23823 rules!3307 (++!9427 lt!1237999 suffix!1395)))))

(declare-fun lt!1238280 () Unit!53946)

(assert (=> d!1061451 (= lt!1238280 e!2229520)))

(declare-fun c!623477 () Bool)

(declare-fun isEmpty!22365 (Option!7853) Bool)

(assert (=> d!1061451 (= c!623477 (isEmpty!22365 (maxPrefix!2734 thiss!23823 rules!3307 (++!9427 lt!1237999 suffix!1395))))))

(declare-fun lt!1238276 () Unit!53946)

(declare-fun lt!1238281 () Unit!53946)

(assert (=> d!1061451 (= lt!1238276 lt!1238281)))

(declare-fun e!2229519 () Bool)

(assert (=> d!1061451 e!2229519))

(declare-fun res!1456358 () Bool)

(assert (=> d!1061451 (=> (not res!1456358) (not e!2229519))))

(declare-fun lt!1238277 () Token!10588)

(assert (=> d!1061451 (= res!1456358 (isDefined!6084 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 lt!1238277)))))))

(assert (=> d!1061451 (= lt!1238281 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1217 thiss!23823 rules!3307 lt!1237999 lt!1238277))))

(declare-fun lt!1238274 () Unit!53946)

(declare-fun lt!1238285 () Unit!53946)

(assert (=> d!1061451 (= lt!1238274 lt!1238285)))

(declare-fun lt!1238271 () List!38020)

(assert (=> d!1061451 (isPrefix!2974 lt!1238271 (++!9427 lt!1237999 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!437 (List!38020 List!38020 List!38020) Unit!53946)

(assert (=> d!1061451 (= lt!1238285 (lemmaPrefixStaysPrefixWhenAddingToSuffix!437 lt!1238271 lt!1237999 suffix!1395))))

(assert (=> d!1061451 (= lt!1238271 (list!13963 (charsOf!3625 lt!1238277)))))

(declare-fun lt!1238270 () Unit!53946)

(declare-fun lt!1238284 () Unit!53946)

(assert (=> d!1061451 (= lt!1238270 lt!1238284)))

(declare-fun lt!1238272 () List!38020)

(declare-fun lt!1238286 () List!38020)

(assert (=> d!1061451 (isPrefix!2974 lt!1238272 (++!9427 lt!1238272 lt!1238286))))

(assert (=> d!1061451 (= lt!1238284 (lemmaConcatTwoListThenFirstIsPrefix!1895 lt!1238272 lt!1238286))))

(assert (=> d!1061451 (= lt!1238286 (_2!22029 (get!12268 (maxPrefix!2734 thiss!23823 rules!3307 lt!1237999))))))

(assert (=> d!1061451 (= lt!1238272 (list!13963 (charsOf!3625 lt!1238277)))))

(declare-datatypes ((List!38026 0))(
  ( (Nil!37902) (Cons!37902 (h!43322 Token!10588) (t!292561 List!38026)) )
))
(declare-fun head!7559 (List!38026) Token!10588)

(declare-datatypes ((IArray!23089 0))(
  ( (IArray!23090 (innerList!11602 List!38026)) )
))
(declare-datatypes ((Conc!11542 0))(
  ( (Node!11542 (left!29616 Conc!11542) (right!29946 Conc!11542) (csize!23314 Int) (cheight!11753 Int)) (Leaf!17959 (xs!14744 IArray!23089) (csize!23315 Int)) (Empty!11542) )
))
(declare-datatypes ((BalanceConc!22698 0))(
  ( (BalanceConc!22699 (c!623549 Conc!11542)) )
))
(declare-fun list!13966 (BalanceConc!22698) List!38026)

(declare-datatypes ((tuple2!37794 0))(
  ( (tuple2!37795 (_1!22031 BalanceConc!22698) (_2!22031 BalanceConc!22694)) )
))
(declare-fun lex!2469 (LexerInterface!5200 List!38022 BalanceConc!22694) tuple2!37794)

(assert (=> d!1061451 (= lt!1238277 (head!7559 (list!13966 (_1!22031 (lex!2469 thiss!23823 rules!3307 (seqFromList!4164 lt!1237999))))))))

(assert (=> d!1061451 (not (isEmpty!22360 rules!3307))))

(assert (=> d!1061451 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!880 thiss!23823 rules!3307 lt!1237999 suffix!1395) lt!1238280)))

(declare-fun b!3602851 () Bool)

(declare-fun Unit!53957 () Unit!53946)

(assert (=> b!3602851 (= e!2229520 Unit!53957)))

(declare-fun lt!1238279 () List!38020)

(assert (=> b!3602851 (= lt!1238279 (++!9427 lt!1237999 suffix!1395))))

(declare-fun lt!1238283 () Unit!53946)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!473 (LexerInterface!5200 Rule!11022 List!38022 List!38020) Unit!53946)

(assert (=> b!3602851 (= lt!1238283 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!473 thiss!23823 (rule!8349 lt!1238277) rules!3307 lt!1238279))))

(assert (=> b!3602851 (isEmpty!22365 (maxPrefixOneRule!1878 thiss!23823 (rule!8349 lt!1238277) lt!1238279))))

(declare-fun lt!1238278 () Unit!53946)

(assert (=> b!3602851 (= lt!1238278 lt!1238283)))

(declare-fun lt!1238282 () List!38020)

(assert (=> b!3602851 (= lt!1238282 (list!13963 (charsOf!3625 lt!1238277)))))

(declare-fun lt!1238273 () Unit!53946)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!461 (LexerInterface!5200 Rule!11022 List!38020 List!38020) Unit!53946)

(assert (=> b!3602851 (= lt!1238273 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!461 thiss!23823 (rule!8349 lt!1238277) lt!1238282 (++!9427 lt!1237999 suffix!1395)))))

(assert (=> b!3602851 (not (matchR!4939 (regex!5611 (rule!8349 lt!1238277)) lt!1238282))))

(declare-fun lt!1238275 () Unit!53946)

(assert (=> b!3602851 (= lt!1238275 lt!1238273)))

(assert (=> b!3602851 false))

(declare-fun b!3602849 () Bool)

(declare-fun res!1456357 () Bool)

(assert (=> b!3602849 (=> (not res!1456357) (not e!2229519))))

(assert (=> b!3602849 (= res!1456357 (matchR!4939 (regex!5611 (get!12269 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 lt!1238277))))) (list!13963 (charsOf!3625 lt!1238277))))))

(declare-fun b!3602850 () Bool)

(assert (=> b!3602850 (= e!2229519 (= (rule!8349 lt!1238277) (get!12269 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 lt!1238277))))))))

(assert (= (and d!1061451 res!1456358) b!3602849))

(assert (= (and b!3602849 res!1456357) b!3602850))

(assert (= (and d!1061451 c!623477) b!3602851))

(assert (= (and d!1061451 (not c!623477)) b!3602852))

(assert (=> d!1061451 m!4098659))

(declare-fun m!4099189 () Bool)

(assert (=> d!1061451 m!4099189))

(declare-fun m!4099191 () Bool)

(assert (=> d!1061451 m!4099191))

(declare-fun m!4099193 () Bool)

(assert (=> d!1061451 m!4099193))

(declare-fun m!4099195 () Bool)

(assert (=> d!1061451 m!4099195))

(assert (=> d!1061451 m!4098659))

(declare-fun m!4099197 () Bool)

(assert (=> d!1061451 m!4099197))

(assert (=> d!1061451 m!4098681))

(declare-fun m!4099199 () Bool)

(assert (=> d!1061451 m!4099199))

(assert (=> d!1061451 m!4099191))

(declare-fun m!4099201 () Bool)

(assert (=> d!1061451 m!4099201))

(assert (=> d!1061451 m!4099193))

(assert (=> d!1061451 m!4098659))

(declare-fun m!4099203 () Bool)

(assert (=> d!1061451 m!4099203))

(declare-fun m!4099205 () Bool)

(assert (=> d!1061451 m!4099205))

(declare-fun m!4099207 () Bool)

(assert (=> d!1061451 m!4099207))

(assert (=> d!1061451 m!4099203))

(declare-fun m!4099209 () Bool)

(assert (=> d!1061451 m!4099209))

(assert (=> d!1061451 m!4099205))

(declare-fun m!4099211 () Bool)

(assert (=> d!1061451 m!4099211))

(declare-fun m!4099213 () Bool)

(assert (=> d!1061451 m!4099213))

(assert (=> d!1061451 m!4099203))

(declare-fun m!4099215 () Bool)

(assert (=> d!1061451 m!4099215))

(assert (=> d!1061451 m!4099199))

(declare-fun m!4099217 () Bool)

(assert (=> d!1061451 m!4099217))

(assert (=> d!1061451 m!4098599))

(assert (=> d!1061451 m!4099211))

(declare-fun m!4099219 () Bool)

(assert (=> d!1061451 m!4099219))

(declare-fun m!4099221 () Bool)

(assert (=> d!1061451 m!4099221))

(assert (=> d!1061451 m!4098599))

(declare-fun m!4099223 () Bool)

(assert (=> d!1061451 m!4099223))

(assert (=> b!3602851 m!4098659))

(assert (=> b!3602851 m!4098659))

(declare-fun m!4099225 () Bool)

(assert (=> b!3602851 m!4099225))

(declare-fun m!4099227 () Bool)

(assert (=> b!3602851 m!4099227))

(assert (=> b!3602851 m!4099199))

(assert (=> b!3602851 m!4099217))

(declare-fun m!4099229 () Bool)

(assert (=> b!3602851 m!4099229))

(assert (=> b!3602851 m!4099199))

(assert (=> b!3602851 m!4099227))

(declare-fun m!4099231 () Bool)

(assert (=> b!3602851 m!4099231))

(declare-fun m!4099233 () Bool)

(assert (=> b!3602851 m!4099233))

(assert (=> b!3602849 m!4099199))

(assert (=> b!3602849 m!4099193))

(assert (=> b!3602849 m!4099193))

(declare-fun m!4099235 () Bool)

(assert (=> b!3602849 m!4099235))

(assert (=> b!3602849 m!4099199))

(assert (=> b!3602849 m!4099217))

(assert (=> b!3602849 m!4099217))

(declare-fun m!4099237 () Bool)

(assert (=> b!3602849 m!4099237))

(assert (=> b!3602850 m!4099193))

(assert (=> b!3602850 m!4099193))

(assert (=> b!3602850 m!4099235))

(assert (=> b!3602409 d!1061451))

(declare-fun b!3602854 () Bool)

(declare-fun e!2229522 () List!38020)

(assert (=> b!3602854 (= e!2229522 (Cons!37896 (h!43316 lt!1237986) (++!9427 (t!292471 lt!1237986) (_2!22029 lt!1237996))))))

(declare-fun b!3602853 () Bool)

(assert (=> b!3602853 (= e!2229522 (_2!22029 lt!1237996))))

(declare-fun b!3602855 () Bool)

(declare-fun res!1456360 () Bool)

(declare-fun e!2229521 () Bool)

(assert (=> b!3602855 (=> (not res!1456360) (not e!2229521))))

(declare-fun lt!1238287 () List!38020)

(assert (=> b!3602855 (= res!1456360 (= (size!28880 lt!1238287) (+ (size!28880 lt!1237986) (size!28880 (_2!22029 lt!1237996)))))))

(declare-fun d!1061463 () Bool)

(assert (=> d!1061463 e!2229521))

(declare-fun res!1456359 () Bool)

(assert (=> d!1061463 (=> (not res!1456359) (not e!2229521))))

(assert (=> d!1061463 (= res!1456359 (= (content!5410 lt!1238287) (set.union (content!5410 lt!1237986) (content!5410 (_2!22029 lt!1237996)))))))

(assert (=> d!1061463 (= lt!1238287 e!2229522)))

(declare-fun c!623478 () Bool)

(assert (=> d!1061463 (= c!623478 (is-Nil!37896 lt!1237986))))

(assert (=> d!1061463 (= (++!9427 lt!1237986 (_2!22029 lt!1237996)) lt!1238287)))

(declare-fun b!3602856 () Bool)

(assert (=> b!3602856 (= e!2229521 (or (not (= (_2!22029 lt!1237996) Nil!37896)) (= lt!1238287 lt!1237986)))))

(assert (= (and d!1061463 c!623478) b!3602853))

(assert (= (and d!1061463 (not c!623478)) b!3602854))

(assert (= (and d!1061463 res!1456359) b!3602855))

(assert (= (and b!3602855 res!1456360) b!3602856))

(declare-fun m!4099239 () Bool)

(assert (=> b!3602854 m!4099239))

(declare-fun m!4099241 () Bool)

(assert (=> b!3602855 m!4099241))

(assert (=> b!3602855 m!4098563))

(declare-fun m!4099243 () Bool)

(assert (=> b!3602855 m!4099243))

(declare-fun m!4099245 () Bool)

(assert (=> d!1061463 m!4099245))

(declare-fun m!4099247 () Bool)

(assert (=> d!1061463 m!4099247))

(declare-fun m!4099249 () Bool)

(assert (=> d!1061463 m!4099249))

(assert (=> b!3602409 d!1061463))

(declare-fun b!3602875 () Bool)

(declare-fun res!1456377 () Bool)

(declare-fun e!2229529 () Bool)

(assert (=> b!3602875 (=> (not res!1456377) (not e!2229529))))

(declare-fun lt!1238300 () Option!7853)

(assert (=> b!3602875 (= res!1456377 (= (value!180375 (_1!22029 (get!12268 lt!1238300))) (apply!9117 (transformation!5611 (rule!8349 (_1!22029 (get!12268 lt!1238300)))) (seqFromList!4164 (originalCharacters!6325 (_1!22029 (get!12268 lt!1238300)))))))))

(declare-fun d!1061465 () Bool)

(declare-fun e!2229530 () Bool)

(assert (=> d!1061465 e!2229530))

(declare-fun res!1456381 () Bool)

(assert (=> d!1061465 (=> res!1456381 e!2229530)))

(assert (=> d!1061465 (= res!1456381 (isEmpty!22365 lt!1238300))))

(declare-fun e!2229531 () Option!7853)

(assert (=> d!1061465 (= lt!1238300 e!2229531)))

(declare-fun c!623481 () Bool)

(assert (=> d!1061465 (= c!623481 (and (is-Cons!37898 rules!3307) (is-Nil!37898 (t!292473 rules!3307))))))

(declare-fun lt!1238302 () Unit!53946)

(declare-fun lt!1238301 () Unit!53946)

(assert (=> d!1061465 (= lt!1238302 lt!1238301)))

(assert (=> d!1061465 (isPrefix!2974 lt!1237990 lt!1237990)))

(declare-fun lemmaIsPrefixRefl!1903 (List!38020 List!38020) Unit!53946)

(assert (=> d!1061465 (= lt!1238301 (lemmaIsPrefixRefl!1903 lt!1237990 lt!1237990))))

(declare-fun rulesValidInductive!1968 (LexerInterface!5200 List!38022) Bool)

(assert (=> d!1061465 (rulesValidInductive!1968 thiss!23823 rules!3307)))

(assert (=> d!1061465 (= (maxPrefix!2734 thiss!23823 rules!3307 lt!1237990) lt!1238300)))

(declare-fun b!3602876 () Bool)

(declare-fun call!260488 () Option!7853)

(assert (=> b!3602876 (= e!2229531 call!260488)))

(declare-fun b!3602877 () Bool)

(assert (=> b!3602877 (= e!2229529 (contains!7285 rules!3307 (rule!8349 (_1!22029 (get!12268 lt!1238300)))))))

(declare-fun b!3602878 () Bool)

(declare-fun res!1456379 () Bool)

(assert (=> b!3602878 (=> (not res!1456379) (not e!2229529))))

(assert (=> b!3602878 (= res!1456379 (= (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238300)))) (originalCharacters!6325 (_1!22029 (get!12268 lt!1238300)))))))

(declare-fun b!3602879 () Bool)

(declare-fun lt!1238298 () Option!7853)

(declare-fun lt!1238299 () Option!7853)

(assert (=> b!3602879 (= e!2229531 (ite (and (is-None!7852 lt!1238298) (is-None!7852 lt!1238299)) None!7852 (ite (is-None!7852 lt!1238299) lt!1238298 (ite (is-None!7852 lt!1238298) lt!1238299 (ite (>= (size!28879 (_1!22029 (v!37570 lt!1238298))) (size!28879 (_1!22029 (v!37570 lt!1238299)))) lt!1238298 lt!1238299)))))))

(assert (=> b!3602879 (= lt!1238298 call!260488)))

(assert (=> b!3602879 (= lt!1238299 (maxPrefix!2734 thiss!23823 (t!292473 rules!3307) lt!1237990))))

(declare-fun b!3602880 () Bool)

(declare-fun res!1456375 () Bool)

(assert (=> b!3602880 (=> (not res!1456375) (not e!2229529))))

(assert (=> b!3602880 (= res!1456375 (< (size!28880 (_2!22029 (get!12268 lt!1238300))) (size!28880 lt!1237990)))))

(declare-fun b!3602881 () Bool)

(declare-fun res!1456380 () Bool)

(assert (=> b!3602881 (=> (not res!1456380) (not e!2229529))))

(assert (=> b!3602881 (= res!1456380 (matchR!4939 (regex!5611 (rule!8349 (_1!22029 (get!12268 lt!1238300)))) (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238300))))))))

(declare-fun bm!260483 () Bool)

(assert (=> bm!260483 (= call!260488 (maxPrefixOneRule!1878 thiss!23823 (h!43318 rules!3307) lt!1237990))))

(declare-fun b!3602882 () Bool)

(assert (=> b!3602882 (= e!2229530 e!2229529)))

(declare-fun res!1456378 () Bool)

(assert (=> b!3602882 (=> (not res!1456378) (not e!2229529))))

(assert (=> b!3602882 (= res!1456378 (isDefined!6085 lt!1238300))))

(declare-fun b!3602883 () Bool)

(declare-fun res!1456376 () Bool)

(assert (=> b!3602883 (=> (not res!1456376) (not e!2229529))))

(assert (=> b!3602883 (= res!1456376 (= (++!9427 (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238300)))) (_2!22029 (get!12268 lt!1238300))) lt!1237990))))

(assert (= (and d!1061465 c!623481) b!3602876))

(assert (= (and d!1061465 (not c!623481)) b!3602879))

(assert (= (or b!3602876 b!3602879) bm!260483))

(assert (= (and d!1061465 (not res!1456381)) b!3602882))

(assert (= (and b!3602882 res!1456378) b!3602878))

(assert (= (and b!3602878 res!1456379) b!3602880))

(assert (= (and b!3602880 res!1456375) b!3602883))

(assert (= (and b!3602883 res!1456376) b!3602875))

(assert (= (and b!3602875 res!1456377) b!3602881))

(assert (= (and b!3602881 res!1456380) b!3602877))

(declare-fun m!4099251 () Bool)

(assert (=> b!3602881 m!4099251))

(declare-fun m!4099253 () Bool)

(assert (=> b!3602881 m!4099253))

(assert (=> b!3602881 m!4099253))

(declare-fun m!4099255 () Bool)

(assert (=> b!3602881 m!4099255))

(assert (=> b!3602881 m!4099255))

(declare-fun m!4099257 () Bool)

(assert (=> b!3602881 m!4099257))

(declare-fun m!4099259 () Bool)

(assert (=> b!3602882 m!4099259))

(assert (=> b!3602877 m!4099251))

(declare-fun m!4099261 () Bool)

(assert (=> b!3602877 m!4099261))

(declare-fun m!4099263 () Bool)

(assert (=> b!3602879 m!4099263))

(assert (=> b!3602883 m!4099251))

(assert (=> b!3602883 m!4099253))

(assert (=> b!3602883 m!4099253))

(assert (=> b!3602883 m!4099255))

(assert (=> b!3602883 m!4099255))

(declare-fun m!4099265 () Bool)

(assert (=> b!3602883 m!4099265))

(assert (=> b!3602878 m!4099251))

(assert (=> b!3602878 m!4099253))

(assert (=> b!3602878 m!4099253))

(assert (=> b!3602878 m!4099255))

(declare-fun m!4099267 () Bool)

(assert (=> bm!260483 m!4099267))

(declare-fun m!4099269 () Bool)

(assert (=> d!1061465 m!4099269))

(declare-fun m!4099271 () Bool)

(assert (=> d!1061465 m!4099271))

(declare-fun m!4099273 () Bool)

(assert (=> d!1061465 m!4099273))

(declare-fun m!4099275 () Bool)

(assert (=> d!1061465 m!4099275))

(assert (=> b!3602875 m!4099251))

(declare-fun m!4099277 () Bool)

(assert (=> b!3602875 m!4099277))

(assert (=> b!3602875 m!4099277))

(declare-fun m!4099279 () Bool)

(assert (=> b!3602875 m!4099279))

(assert (=> b!3602880 m!4099251))

(declare-fun m!4099281 () Bool)

(assert (=> b!3602880 m!4099281))

(assert (=> b!3602880 m!4099123))

(assert (=> b!3602409 d!1061465))

(declare-fun d!1061467 () Bool)

(assert (=> d!1061467 (isPrefix!2974 lt!1237999 (++!9427 lt!1237999 suffix!1395))))

(declare-fun lt!1238305 () Unit!53946)

(declare-fun choose!21009 (List!38020 List!38020) Unit!53946)

(assert (=> d!1061467 (= lt!1238305 (choose!21009 lt!1237999 suffix!1395))))

(assert (=> d!1061467 (= (lemmaConcatTwoListThenFirstIsPrefix!1895 lt!1237999 suffix!1395) lt!1238305)))

(declare-fun bs!570605 () Bool)

(assert (= bs!570605 d!1061467))

(assert (=> bs!570605 m!4098659))

(assert (=> bs!570605 m!4098659))

(declare-fun m!4099283 () Bool)

(assert (=> bs!570605 m!4099283))

(declare-fun m!4099285 () Bool)

(assert (=> bs!570605 m!4099285))

(assert (=> b!3602409 d!1061467))

(declare-fun d!1061469 () Bool)

(assert (=> d!1061469 (isPrefix!2974 lt!1237986 (++!9427 lt!1237986 (_2!22029 lt!1237996)))))

(declare-fun lt!1238306 () Unit!53946)

(assert (=> d!1061469 (= lt!1238306 (choose!21009 lt!1237986 (_2!22029 lt!1237996)))))

(assert (=> d!1061469 (= (lemmaConcatTwoListThenFirstIsPrefix!1895 lt!1237986 (_2!22029 lt!1237996)) lt!1238306)))

(declare-fun bs!570606 () Bool)

(assert (= bs!570606 d!1061469))

(assert (=> bs!570606 m!4098639))

(assert (=> bs!570606 m!4098639))

(assert (=> bs!570606 m!4098641))

(declare-fun m!4099287 () Bool)

(assert (=> bs!570606 m!4099287))

(assert (=> b!3602409 d!1061469))

(declare-fun d!1061471 () Bool)

(declare-fun e!2229542 () Bool)

(assert (=> d!1061471 e!2229542))

(declare-fun res!1456400 () Bool)

(assert (=> d!1061471 (=> (not res!1456400) (not e!2229542))))

(assert (=> d!1061471 (= res!1456400 (isDefined!6084 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 (_1!22029 lt!1237996))))))))

(declare-fun lt!1238319 () Unit!53946)

(declare-fun choose!21010 (LexerInterface!5200 List!38022 List!38020 Token!10588) Unit!53946)

(assert (=> d!1061471 (= lt!1238319 (choose!21010 thiss!23823 rules!3307 lt!1237990 (_1!22029 lt!1237996)))))

(assert (=> d!1061471 (rulesInvariant!4597 thiss!23823 rules!3307)))

(assert (=> d!1061471 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1217 thiss!23823 rules!3307 lt!1237990 (_1!22029 lt!1237996)) lt!1238319)))

(declare-fun b!3602906 () Bool)

(declare-fun res!1456401 () Bool)

(assert (=> b!3602906 (=> (not res!1456401) (not e!2229542))))

(assert (=> b!3602906 (= res!1456401 (matchR!4939 (regex!5611 (get!12269 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 (_1!22029 lt!1237996)))))) (list!13963 (charsOf!3625 (_1!22029 lt!1237996)))))))

(declare-fun b!3602907 () Bool)

(assert (=> b!3602907 (= e!2229542 (= (rule!8349 (_1!22029 lt!1237996)) (get!12269 (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 (_1!22029 lt!1237996)))))))))

(assert (= (and d!1061471 res!1456400) b!3602906))

(assert (= (and b!3602906 res!1456401) b!3602907))

(assert (=> d!1061471 m!4098655))

(assert (=> d!1061471 m!4098655))

(declare-fun m!4099289 () Bool)

(assert (=> d!1061471 m!4099289))

(declare-fun m!4099291 () Bool)

(assert (=> d!1061471 m!4099291))

(assert (=> d!1061471 m!4098607))

(assert (=> b!3602906 m!4098577))

(assert (=> b!3602906 m!4098579))

(assert (=> b!3602906 m!4098655))

(declare-fun m!4099293 () Bool)

(assert (=> b!3602906 m!4099293))

(assert (=> b!3602906 m!4098577))

(assert (=> b!3602906 m!4098579))

(declare-fun m!4099295 () Bool)

(assert (=> b!3602906 m!4099295))

(assert (=> b!3602906 m!4098655))

(assert (=> b!3602907 m!4098655))

(assert (=> b!3602907 m!4098655))

(assert (=> b!3602907 m!4099293))

(assert (=> b!3602409 d!1061471))

(declare-fun d!1061473 () Bool)

(assert (=> d!1061473 (= (get!12268 lt!1238013) (v!37570 lt!1238013))))

(assert (=> b!3602409 d!1061473))

(declare-fun b!3602931 () Bool)

(declare-fun e!2229560 () Option!7852)

(assert (=> b!3602931 (= e!2229560 None!7851)))

(declare-fun b!3602933 () Bool)

(declare-fun e!2229559 () Bool)

(declare-fun lt!1238331 () Option!7852)

(assert (=> b!3602933 (= e!2229559 (= (tag!6305 (get!12269 lt!1238331)) (tag!6305 (rule!8349 (_1!22029 lt!1237996)))))))

(declare-fun b!3602934 () Bool)

(declare-fun e!2229558 () Option!7852)

(assert (=> b!3602934 (= e!2229558 e!2229560)))

(declare-fun c!623490 () Bool)

(assert (=> b!3602934 (= c!623490 (and (is-Cons!37898 rules!3307) (not (= (tag!6305 (h!43318 rules!3307)) (tag!6305 (rule!8349 (_1!22029 lt!1237996)))))))))

(declare-fun b!3602935 () Bool)

(declare-fun lt!1238332 () Unit!53946)

(declare-fun lt!1238333 () Unit!53946)

(assert (=> b!3602935 (= lt!1238332 lt!1238333)))

(assert (=> b!3602935 (rulesInvariant!4597 thiss!23823 (t!292473 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!517 (LexerInterface!5200 Rule!11022 List!38022) Unit!53946)

(assert (=> b!3602935 (= lt!1238333 (lemmaInvariantOnRulesThenOnTail!517 thiss!23823 (h!43318 rules!3307) (t!292473 rules!3307)))))

(assert (=> b!3602935 (= e!2229560 (getRuleFromTag!1217 thiss!23823 (t!292473 rules!3307) (tag!6305 (rule!8349 (_1!22029 lt!1237996)))))))

(declare-fun b!3602936 () Bool)

(assert (=> b!3602936 (= e!2229558 (Some!7851 (h!43318 rules!3307)))))

(declare-fun b!3602932 () Bool)

(declare-fun e!2229561 () Bool)

(assert (=> b!3602932 (= e!2229561 e!2229559)))

(declare-fun res!1456414 () Bool)

(assert (=> b!3602932 (=> (not res!1456414) (not e!2229559))))

(assert (=> b!3602932 (= res!1456414 (contains!7285 rules!3307 (get!12269 lt!1238331)))))

(declare-fun d!1061475 () Bool)

(assert (=> d!1061475 e!2229561))

(declare-fun res!1456413 () Bool)

(assert (=> d!1061475 (=> res!1456413 e!2229561)))

(assert (=> d!1061475 (= res!1456413 (isEmpty!22364 lt!1238331))))

(assert (=> d!1061475 (= lt!1238331 e!2229558)))

(declare-fun c!623489 () Bool)

(assert (=> d!1061475 (= c!623489 (and (is-Cons!37898 rules!3307) (= (tag!6305 (h!43318 rules!3307)) (tag!6305 (rule!8349 (_1!22029 lt!1237996))))))))

(assert (=> d!1061475 (rulesInvariant!4597 thiss!23823 rules!3307)))

(assert (=> d!1061475 (= (getRuleFromTag!1217 thiss!23823 rules!3307 (tag!6305 (rule!8349 (_1!22029 lt!1237996)))) lt!1238331)))

(assert (= (and d!1061475 c!623489) b!3602936))

(assert (= (and d!1061475 (not c!623489)) b!3602934))

(assert (= (and b!3602934 c!623490) b!3602935))

(assert (= (and b!3602934 (not c!623490)) b!3602931))

(assert (= (and d!1061475 (not res!1456413)) b!3602932))

(assert (= (and b!3602932 res!1456414) b!3602933))

(declare-fun m!4099345 () Bool)

(assert (=> b!3602933 m!4099345))

(declare-fun m!4099347 () Bool)

(assert (=> b!3602935 m!4099347))

(declare-fun m!4099349 () Bool)

(assert (=> b!3602935 m!4099349))

(declare-fun m!4099351 () Bool)

(assert (=> b!3602935 m!4099351))

(assert (=> b!3602932 m!4099345))

(assert (=> b!3602932 m!4099345))

(declare-fun m!4099353 () Bool)

(assert (=> b!3602932 m!4099353))

(declare-fun m!4099355 () Bool)

(assert (=> d!1061475 m!4099355))

(assert (=> d!1061475 m!4098607))

(assert (=> b!3602409 d!1061475))

(declare-fun d!1061481 () Bool)

(assert (=> d!1061481 (= (list!13963 lt!1237987) (list!13965 (c!623425 lt!1237987)))))

(declare-fun bs!570607 () Bool)

(assert (= bs!570607 d!1061481))

(declare-fun m!4099357 () Bool)

(assert (=> bs!570607 m!4099357))

(assert (=> b!3602409 d!1061481))

(declare-fun b!3602943 () Bool)

(declare-fun e!2229565 () Bool)

(assert (=> b!3602943 (= e!2229565 (isPrefix!2974 (tail!5584 lt!1237986) (tail!5584 lt!1237990)))))

(declare-fun d!1061483 () Bool)

(declare-fun e!2229564 () Bool)

(assert (=> d!1061483 e!2229564))

(declare-fun res!1456416 () Bool)

(assert (=> d!1061483 (=> res!1456416 e!2229564)))

(declare-fun lt!1238336 () Bool)

(assert (=> d!1061483 (= res!1456416 (not lt!1238336))))

(declare-fun e!2229566 () Bool)

(assert (=> d!1061483 (= lt!1238336 e!2229566)))

(declare-fun res!1456418 () Bool)

(assert (=> d!1061483 (=> res!1456418 e!2229566)))

(assert (=> d!1061483 (= res!1456418 (is-Nil!37896 lt!1237986))))

(assert (=> d!1061483 (= (isPrefix!2974 lt!1237986 lt!1237990) lt!1238336)))

(declare-fun b!3602942 () Bool)

(declare-fun res!1456415 () Bool)

(assert (=> b!3602942 (=> (not res!1456415) (not e!2229565))))

(assert (=> b!3602942 (= res!1456415 (= (head!7557 lt!1237986) (head!7557 lt!1237990)))))

(declare-fun b!3602944 () Bool)

(assert (=> b!3602944 (= e!2229564 (>= (size!28880 lt!1237990) (size!28880 lt!1237986)))))

(declare-fun b!3602941 () Bool)

(assert (=> b!3602941 (= e!2229566 e!2229565)))

(declare-fun res!1456417 () Bool)

(assert (=> b!3602941 (=> (not res!1456417) (not e!2229565))))

(assert (=> b!3602941 (= res!1456417 (not (is-Nil!37896 lt!1237990)))))

(assert (= (and d!1061483 (not res!1456418)) b!3602941))

(assert (= (and b!3602941 res!1456417) b!3602942))

(assert (= (and b!3602942 res!1456415) b!3602943))

(assert (= (and d!1061483 (not res!1456416)) b!3602944))

(assert (=> b!3602943 m!4099101))

(assert (=> b!3602943 m!4099115))

(assert (=> b!3602943 m!4099101))

(assert (=> b!3602943 m!4099115))

(declare-fun m!4099359 () Bool)

(assert (=> b!3602943 m!4099359))

(assert (=> b!3602942 m!4098611))

(assert (=> b!3602942 m!4099121))

(assert (=> b!3602944 m!4099123))

(assert (=> b!3602944 m!4098563))

(assert (=> b!3602409 d!1061483))

(assert (=> b!3602409 d!1061371))

(declare-fun d!1061485 () Bool)

(assert (=> d!1061485 (= (inv!51254 (tag!6305 (rule!8349 token!511))) (= (mod (str.len (value!180374 (tag!6305 (rule!8349 token!511)))) 2) 0))))

(assert (=> b!3602430 d!1061485))

(declare-fun d!1061489 () Bool)

(declare-fun res!1456421 () Bool)

(declare-fun e!2229570 () Bool)

(assert (=> d!1061489 (=> (not res!1456421) (not e!2229570))))

(declare-fun semiInverseModEq!2384 (Int Int) Bool)

(assert (=> d!1061489 (= res!1456421 (semiInverseModEq!2384 (toChars!7754 (transformation!5611 (rule!8349 token!511))) (toValue!7895 (transformation!5611 (rule!8349 token!511)))))))

(assert (=> d!1061489 (= (inv!51257 (transformation!5611 (rule!8349 token!511))) e!2229570)))

(declare-fun b!3602949 () Bool)

(declare-fun equivClasses!2283 (Int Int) Bool)

(assert (=> b!3602949 (= e!2229570 (equivClasses!2283 (toChars!7754 (transformation!5611 (rule!8349 token!511))) (toValue!7895 (transformation!5611 (rule!8349 token!511)))))))

(assert (= (and d!1061489 res!1456421) b!3602949))

(declare-fun m!4099365 () Bool)

(assert (=> d!1061489 m!4099365))

(declare-fun m!4099367 () Bool)

(assert (=> b!3602949 m!4099367))

(assert (=> b!3602430 d!1061489))

(declare-fun d!1061491 () Bool)

(assert (=> d!1061491 (= (inv!51254 (tag!6305 (h!43318 rules!3307))) (= (mod (str.len (value!180374 (tag!6305 (h!43318 rules!3307)))) 2) 0))))

(assert (=> b!3602428 d!1061491))

(declare-fun d!1061493 () Bool)

(declare-fun res!1456422 () Bool)

(declare-fun e!2229571 () Bool)

(assert (=> d!1061493 (=> (not res!1456422) (not e!2229571))))

(assert (=> d!1061493 (= res!1456422 (semiInverseModEq!2384 (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toValue!7895 (transformation!5611 (h!43318 rules!3307)))))))

(assert (=> d!1061493 (= (inv!51257 (transformation!5611 (h!43318 rules!3307))) e!2229571)))

(declare-fun b!3602950 () Bool)

(assert (=> b!3602950 (= e!2229571 (equivClasses!2283 (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toValue!7895 (transformation!5611 (h!43318 rules!3307)))))))

(assert (= (and d!1061493 res!1456422) b!3602950))

(declare-fun m!4099369 () Bool)

(assert (=> d!1061493 m!4099369))

(declare-fun m!4099371 () Bool)

(assert (=> b!3602950 m!4099371))

(assert (=> b!3602428 d!1061493))

(declare-fun d!1061495 () Bool)

(declare-fun res!1456427 () Bool)

(declare-fun e!2229574 () Bool)

(assert (=> d!1061495 (=> (not res!1456427) (not e!2229574))))

(assert (=> d!1061495 (= res!1456427 (not (isEmpty!22361 (originalCharacters!6325 token!511))))))

(assert (=> d!1061495 (= (inv!51258 token!511) e!2229574)))

(declare-fun b!3602955 () Bool)

(declare-fun res!1456428 () Bool)

(assert (=> b!3602955 (=> (not res!1456428) (not e!2229574))))

(assert (=> b!3602955 (= res!1456428 (= (originalCharacters!6325 token!511) (list!13963 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 token!511))) (value!180375 token!511)))))))

(declare-fun b!3602956 () Bool)

(assert (=> b!3602956 (= e!2229574 (= (size!28879 token!511) (size!28880 (originalCharacters!6325 token!511))))))

(assert (= (and d!1061495 res!1456427) b!3602955))

(assert (= (and b!3602955 res!1456428) b!3602956))

(declare-fun b_lambda!106575 () Bool)

(assert (=> (not b_lambda!106575) (not b!3602955)))

(declare-fun tb!206273 () Bool)

(declare-fun t!292534 () Bool)

(assert (=> (and b!3602412 (= (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toChars!7754 (transformation!5611 (rule!8349 token!511)))) t!292534) tb!206273))

(declare-fun b!3602957 () Bool)

(declare-fun e!2229575 () Bool)

(declare-fun tp!1101895 () Bool)

(assert (=> b!3602957 (= e!2229575 (and (inv!51261 (c!623425 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 token!511))) (value!180375 token!511)))) tp!1101895))))

(declare-fun result!251422 () Bool)

(assert (=> tb!206273 (= result!251422 (and (inv!51262 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 token!511))) (value!180375 token!511))) e!2229575))))

(assert (= tb!206273 b!3602957))

(declare-fun m!4099373 () Bool)

(assert (=> b!3602957 m!4099373))

(declare-fun m!4099375 () Bool)

(assert (=> tb!206273 m!4099375))

(assert (=> b!3602955 t!292534))

(declare-fun b_and!261979 () Bool)

(assert (= b_and!261955 (and (=> t!292534 result!251422) b_and!261979)))

(declare-fun t!292536 () Bool)

(declare-fun tb!206275 () Bool)

(assert (=> (and b!3602440 (= (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toChars!7754 (transformation!5611 (rule!8349 token!511)))) t!292536) tb!206275))

(declare-fun result!251424 () Bool)

(assert (= result!251424 result!251422))

(assert (=> b!3602955 t!292536))

(declare-fun b_and!261981 () Bool)

(assert (= b_and!261957 (and (=> t!292536 result!251424) b_and!261981)))

(declare-fun t!292538 () Bool)

(declare-fun tb!206277 () Bool)

(assert (=> (and b!3602427 (= (toChars!7754 (transformation!5611 rule!403)) (toChars!7754 (transformation!5611 (rule!8349 token!511)))) t!292538) tb!206277))

(declare-fun result!251426 () Bool)

(assert (= result!251426 result!251422))

(assert (=> b!3602955 t!292538))

(declare-fun b_and!261983 () Bool)

(assert (= b_and!261959 (and (=> t!292538 result!251426) b_and!261983)))

(declare-fun t!292540 () Bool)

(declare-fun tb!206279 () Bool)

(assert (=> (and b!3602414 (= (toChars!7754 (transformation!5611 (rule!8349 token!511))) (toChars!7754 (transformation!5611 (rule!8349 token!511)))) t!292540) tb!206279))

(declare-fun result!251428 () Bool)

(assert (= result!251428 result!251422))

(assert (=> b!3602955 t!292540))

(declare-fun b_and!261985 () Bool)

(assert (= b_and!261961 (and (=> t!292540 result!251428) b_and!261985)))

(declare-fun m!4099377 () Bool)

(assert (=> d!1061495 m!4099377))

(declare-fun m!4099379 () Bool)

(assert (=> b!3602955 m!4099379))

(assert (=> b!3602955 m!4099379))

(declare-fun m!4099381 () Bool)

(assert (=> b!3602955 m!4099381))

(declare-fun m!4099383 () Bool)

(assert (=> b!3602956 m!4099383))

(assert (=> start!335008 d!1061495))

(declare-fun b!3602958 () Bool)

(declare-fun res!1456433 () Bool)

(declare-fun e!2229576 () Bool)

(assert (=> b!3602958 (=> res!1456433 e!2229576)))

(declare-fun e!2229580 () Bool)

(assert (=> b!3602958 (= res!1456433 e!2229580)))

(declare-fun res!1456434 () Bool)

(assert (=> b!3602958 (=> (not res!1456434) (not e!2229580))))

(declare-fun lt!1238338 () Bool)

(assert (=> b!3602958 (= res!1456434 lt!1238338)))

(declare-fun bm!260484 () Bool)

(declare-fun call!260489 () Bool)

(assert (=> bm!260484 (= call!260489 (isEmpty!22361 lt!1237986))))

(declare-fun b!3602959 () Bool)

(declare-fun e!2229581 () Bool)

(assert (=> b!3602959 (= e!2229581 (not lt!1238338))))

(declare-fun b!3602960 () Bool)

(declare-fun e!2229577 () Bool)

(assert (=> b!3602960 (= e!2229577 (= lt!1238338 call!260489))))

(declare-fun b!3602961 () Bool)

(assert (=> b!3602961 (= e!2229580 (= (head!7557 lt!1237986) (c!623424 (regex!5611 (rule!8349 (_1!22029 lt!1237996))))))))

(declare-fun d!1061497 () Bool)

(assert (=> d!1061497 e!2229577))

(declare-fun c!623496 () Bool)

(assert (=> d!1061497 (= c!623496 (is-EmptyExpr!10370 (regex!5611 (rule!8349 (_1!22029 lt!1237996)))))))

(declare-fun e!2229578 () Bool)

(assert (=> d!1061497 (= lt!1238338 e!2229578)))

(declare-fun c!623494 () Bool)

(assert (=> d!1061497 (= c!623494 (isEmpty!22361 lt!1237986))))

(assert (=> d!1061497 (validRegex!4746 (regex!5611 (rule!8349 (_1!22029 lt!1237996))))))

(assert (=> d!1061497 (= (matchR!4939 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237986) lt!1238338)))

(declare-fun b!3602962 () Bool)

(declare-fun res!1456431 () Bool)

(assert (=> b!3602962 (=> res!1456431 e!2229576)))

(assert (=> b!3602962 (= res!1456431 (not (is-ElementMatch!10370 (regex!5611 (rule!8349 (_1!22029 lt!1237996))))))))

(assert (=> b!3602962 (= e!2229581 e!2229576)))

(declare-fun b!3602963 () Bool)

(assert (=> b!3602963 (= e!2229578 (matchR!4939 (derivativeStep!3135 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) (head!7557 lt!1237986)) (tail!5584 lt!1237986)))))

(declare-fun b!3602964 () Bool)

(declare-fun e!2229582 () Bool)

(assert (=> b!3602964 (= e!2229582 (not (= (head!7557 lt!1237986) (c!623424 (regex!5611 (rule!8349 (_1!22029 lt!1237996)))))))))

(declare-fun b!3602965 () Bool)

(assert (=> b!3602965 (= e!2229577 e!2229581)))

(declare-fun c!623495 () Bool)

(assert (=> b!3602965 (= c!623495 (is-EmptyLang!10370 (regex!5611 (rule!8349 (_1!22029 lt!1237996)))))))

(declare-fun b!3602966 () Bool)

(declare-fun e!2229579 () Bool)

(assert (=> b!3602966 (= e!2229576 e!2229579)))

(declare-fun res!1456435 () Bool)

(assert (=> b!3602966 (=> (not res!1456435) (not e!2229579))))

(assert (=> b!3602966 (= res!1456435 (not lt!1238338))))

(declare-fun b!3602967 () Bool)

(declare-fun res!1456436 () Bool)

(assert (=> b!3602967 (=> (not res!1456436) (not e!2229580))))

(assert (=> b!3602967 (= res!1456436 (isEmpty!22361 (tail!5584 lt!1237986)))))

(declare-fun b!3602968 () Bool)

(declare-fun res!1456429 () Bool)

(assert (=> b!3602968 (=> (not res!1456429) (not e!2229580))))

(assert (=> b!3602968 (= res!1456429 (not call!260489))))

(declare-fun b!3602969 () Bool)

(declare-fun res!1456432 () Bool)

(assert (=> b!3602969 (=> res!1456432 e!2229582)))

(assert (=> b!3602969 (= res!1456432 (not (isEmpty!22361 (tail!5584 lt!1237986))))))

(declare-fun b!3602970 () Bool)

(assert (=> b!3602970 (= e!2229578 (nullable!3586 (regex!5611 (rule!8349 (_1!22029 lt!1237996)))))))

(declare-fun b!3602971 () Bool)

(assert (=> b!3602971 (= e!2229579 e!2229582)))

(declare-fun res!1456430 () Bool)

(assert (=> b!3602971 (=> res!1456430 e!2229582)))

(assert (=> b!3602971 (= res!1456430 call!260489)))

(assert (= (and d!1061497 c!623494) b!3602970))

(assert (= (and d!1061497 (not c!623494)) b!3602963))

(assert (= (and d!1061497 c!623496) b!3602960))

(assert (= (and d!1061497 (not c!623496)) b!3602965))

(assert (= (and b!3602965 c!623495) b!3602959))

(assert (= (and b!3602965 (not c!623495)) b!3602962))

(assert (= (and b!3602962 (not res!1456431)) b!3602958))

(assert (= (and b!3602958 res!1456434) b!3602968))

(assert (= (and b!3602968 res!1456429) b!3602967))

(assert (= (and b!3602967 res!1456436) b!3602961))

(assert (= (and b!3602958 (not res!1456433)) b!3602966))

(assert (= (and b!3602966 res!1456435) b!3602971))

(assert (= (and b!3602971 (not res!1456430)) b!3602969))

(assert (= (and b!3602969 (not res!1456432)) b!3602964))

(assert (= (or b!3602960 b!3602971 b!3602968) bm!260484))

(assert (=> b!3602969 m!4099101))

(assert (=> b!3602969 m!4099101))

(declare-fun m!4099385 () Bool)

(assert (=> b!3602969 m!4099385))

(declare-fun m!4099387 () Bool)

(assert (=> d!1061497 m!4099387))

(declare-fun m!4099389 () Bool)

(assert (=> d!1061497 m!4099389))

(assert (=> b!3602967 m!4099101))

(assert (=> b!3602967 m!4099101))

(assert (=> b!3602967 m!4099385))

(assert (=> bm!260484 m!4099387))

(assert (=> b!3602963 m!4098611))

(assert (=> b!3602963 m!4098611))

(declare-fun m!4099391 () Bool)

(assert (=> b!3602963 m!4099391))

(assert (=> b!3602963 m!4099101))

(assert (=> b!3602963 m!4099391))

(assert (=> b!3602963 m!4099101))

(declare-fun m!4099393 () Bool)

(assert (=> b!3602963 m!4099393))

(assert (=> b!3602964 m!4098611))

(assert (=> b!3602961 m!4098611))

(declare-fun m!4099395 () Bool)

(assert (=> b!3602970 m!4099395))

(assert (=> b!3602429 d!1061497))

(declare-fun d!1061499 () Bool)

(declare-fun lt!1238341 () Bool)

(assert (=> d!1061499 (= lt!1238341 (set.member lt!1237994 (content!5410 lt!1237992)))))

(declare-fun e!2229588 () Bool)

(assert (=> d!1061499 (= lt!1238341 e!2229588)))

(declare-fun res!1456442 () Bool)

(assert (=> d!1061499 (=> (not res!1456442) (not e!2229588))))

(assert (=> d!1061499 (= res!1456442 (is-Cons!37896 lt!1237992))))

(assert (=> d!1061499 (= (contains!7286 lt!1237992 lt!1237994) lt!1238341)))

(declare-fun b!3602976 () Bool)

(declare-fun e!2229587 () Bool)

(assert (=> b!3602976 (= e!2229588 e!2229587)))

(declare-fun res!1456441 () Bool)

(assert (=> b!3602976 (=> res!1456441 e!2229587)))

(assert (=> b!3602976 (= res!1456441 (= (h!43316 lt!1237992) lt!1237994))))

(declare-fun b!3602977 () Bool)

(assert (=> b!3602977 (= e!2229587 (contains!7286 (t!292471 lt!1237992) lt!1237994))))

(assert (= (and d!1061499 res!1456442) b!3602976))

(assert (= (and b!3602976 (not res!1456441)) b!3602977))

(declare-fun m!4099397 () Bool)

(assert (=> d!1061499 m!4099397))

(declare-fun m!4099399 () Bool)

(assert (=> d!1061499 m!4099399))

(declare-fun m!4099401 () Bool)

(assert (=> b!3602977 m!4099401))

(assert (=> b!3602426 d!1061499))

(declare-fun d!1061501 () Bool)

(assert (=> d!1061501 (= (head!7557 lt!1237986) (h!43316 lt!1237986))))

(assert (=> b!3602426 d!1061501))

(declare-fun d!1061503 () Bool)

(assert (=> d!1061503 (not (matchR!4939 (regex!5611 rule!403) lt!1237999))))

(declare-fun lt!1238347 () Unit!53946)

(declare-fun choose!21011 (Regex!10370 List!38020 C!20926) Unit!53946)

(assert (=> d!1061503 (= lt!1238347 (choose!21011 (regex!5611 rule!403) lt!1237999 lt!1237994))))

(assert (=> d!1061503 (validRegex!4746 (regex!5611 rule!403))))

(assert (=> d!1061503 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!595 (regex!5611 rule!403) lt!1237999 lt!1237994) lt!1238347)))

(declare-fun bs!570610 () Bool)

(assert (= bs!570610 d!1061503))

(assert (=> bs!570610 m!4098675))

(declare-fun m!4099407 () Bool)

(assert (=> bs!570610 m!4099407))

(declare-fun m!4099409 () Bool)

(assert (=> bs!570610 m!4099409))

(assert (=> b!3602424 d!1061503))

(declare-fun d!1061509 () Bool)

(declare-fun lt!1238348 () Bool)

(assert (=> d!1061509 (= lt!1238348 (set.member lt!1237994 (content!5410 lt!1237999)))))

(declare-fun e!2229590 () Bool)

(assert (=> d!1061509 (= lt!1238348 e!2229590)))

(declare-fun res!1456444 () Bool)

(assert (=> d!1061509 (=> (not res!1456444) (not e!2229590))))

(assert (=> d!1061509 (= res!1456444 (is-Cons!37896 lt!1237999))))

(assert (=> d!1061509 (= (contains!7286 lt!1237999 lt!1237994) lt!1238348)))

(declare-fun b!3602978 () Bool)

(declare-fun e!2229589 () Bool)

(assert (=> b!3602978 (= e!2229590 e!2229589)))

(declare-fun res!1456443 () Bool)

(assert (=> b!3602978 (=> res!1456443 e!2229589)))

(assert (=> b!3602978 (= res!1456443 (= (h!43316 lt!1237999) lt!1237994))))

(declare-fun b!3602979 () Bool)

(assert (=> b!3602979 (= e!2229589 (contains!7286 (t!292471 lt!1237999) lt!1237994))))

(assert (= (and d!1061509 res!1456444) b!3602978))

(assert (= (and b!3602978 (not res!1456443)) b!3602979))

(assert (=> d!1061509 m!4099079))

(declare-fun m!4099411 () Bool)

(assert (=> d!1061509 m!4099411))

(declare-fun m!4099413 () Bool)

(assert (=> b!3602979 m!4099413))

(assert (=> b!3602425 d!1061509))

(declare-fun d!1061511 () Bool)

(declare-fun lt!1238349 () Bool)

(assert (=> d!1061511 (= lt!1238349 (set.member lt!1238010 (content!5410 (usedCharacters!825 (regex!5611 anOtherTypeRule!33)))))))

(declare-fun e!2229592 () Bool)

(assert (=> d!1061511 (= lt!1238349 e!2229592)))

(declare-fun res!1456446 () Bool)

(assert (=> d!1061511 (=> (not res!1456446) (not e!2229592))))

(assert (=> d!1061511 (= res!1456446 (is-Cons!37896 (usedCharacters!825 (regex!5611 anOtherTypeRule!33))))))

(assert (=> d!1061511 (= (contains!7286 (usedCharacters!825 (regex!5611 anOtherTypeRule!33)) lt!1238010) lt!1238349)))

(declare-fun b!3602980 () Bool)

(declare-fun e!2229591 () Bool)

(assert (=> b!3602980 (= e!2229592 e!2229591)))

(declare-fun res!1456445 () Bool)

(assert (=> b!3602980 (=> res!1456445 e!2229591)))

(assert (=> b!3602980 (= res!1456445 (= (h!43316 (usedCharacters!825 (regex!5611 anOtherTypeRule!33))) lt!1238010))))

(declare-fun b!3602981 () Bool)

(assert (=> b!3602981 (= e!2229591 (contains!7286 (t!292471 (usedCharacters!825 (regex!5611 anOtherTypeRule!33))) lt!1238010))))

(assert (= (and d!1061511 res!1456446) b!3602980))

(assert (= (and b!3602980 (not res!1456445)) b!3602981))

(assert (=> d!1061511 m!4098625))

(declare-fun m!4099415 () Bool)

(assert (=> d!1061511 m!4099415))

(declare-fun m!4099417 () Bool)

(assert (=> d!1061511 m!4099417))

(declare-fun m!4099419 () Bool)

(assert (=> b!3602981 m!4099419))

(assert (=> b!3602423 d!1061511))

(declare-fun bm!260493 () Bool)

(declare-fun call!260500 () List!38020)

(declare-fun c!623509 () Bool)

(assert (=> bm!260493 (= call!260500 (usedCharacters!825 (ite c!623509 (regTwo!21253 (regex!5611 anOtherTypeRule!33)) (regOne!21252 (regex!5611 anOtherTypeRule!33)))))))

(declare-fun d!1061513 () Bool)

(declare-fun c!623511 () Bool)

(assert (=> d!1061513 (= c!623511 (or (is-EmptyExpr!10370 (regex!5611 anOtherTypeRule!33)) (is-EmptyLang!10370 (regex!5611 anOtherTypeRule!33))))))

(declare-fun e!2229609 () List!38020)

(assert (=> d!1061513 (= (usedCharacters!825 (regex!5611 anOtherTypeRule!33)) e!2229609)))

(declare-fun bm!260494 () Bool)

(declare-fun c!623510 () Bool)

(declare-fun call!260499 () List!38020)

(assert (=> bm!260494 (= call!260499 (usedCharacters!825 (ite c!623510 (reg!10699 (regex!5611 anOtherTypeRule!33)) (ite c!623509 (regOne!21253 (regex!5611 anOtherTypeRule!33)) (regTwo!21252 (regex!5611 anOtherTypeRule!33))))))))

(declare-fun bm!260495 () Bool)

(declare-fun call!260498 () List!38020)

(declare-fun call!260501 () List!38020)

(assert (=> bm!260495 (= call!260498 (++!9427 (ite c!623509 call!260501 call!260500) (ite c!623509 call!260500 call!260501)))))

(declare-fun b!3603009 () Bool)

(declare-fun e!2229612 () List!38020)

(assert (=> b!3603009 (= e!2229612 call!260498)))

(declare-fun b!3603010 () Bool)

(declare-fun e!2229610 () List!38020)

(assert (=> b!3603010 (= e!2229609 e!2229610)))

(declare-fun c!623512 () Bool)

(assert (=> b!3603010 (= c!623512 (is-ElementMatch!10370 (regex!5611 anOtherTypeRule!33)))))

(declare-fun b!3603011 () Bool)

(declare-fun e!2229611 () List!38020)

(assert (=> b!3603011 (= e!2229611 e!2229612)))

(assert (=> b!3603011 (= c!623509 (is-Union!10370 (regex!5611 anOtherTypeRule!33)))))

(declare-fun b!3603012 () Bool)

(assert (=> b!3603012 (= c!623510 (is-Star!10370 (regex!5611 anOtherTypeRule!33)))))

(assert (=> b!3603012 (= e!2229610 e!2229611)))

(declare-fun bm!260496 () Bool)

(assert (=> bm!260496 (= call!260501 call!260499)))

(declare-fun b!3603013 () Bool)

(assert (=> b!3603013 (= e!2229611 call!260499)))

(declare-fun b!3603014 () Bool)

(assert (=> b!3603014 (= e!2229612 call!260498)))

(declare-fun b!3603015 () Bool)

(assert (=> b!3603015 (= e!2229610 (Cons!37896 (c!623424 (regex!5611 anOtherTypeRule!33)) Nil!37896))))

(declare-fun b!3603016 () Bool)

(assert (=> b!3603016 (= e!2229609 Nil!37896)))

(assert (= (and d!1061513 c!623511) b!3603016))

(assert (= (and d!1061513 (not c!623511)) b!3603010))

(assert (= (and b!3603010 c!623512) b!3603015))

(assert (= (and b!3603010 (not c!623512)) b!3603012))

(assert (= (and b!3603012 c!623510) b!3603013))

(assert (= (and b!3603012 (not c!623510)) b!3603011))

(assert (= (and b!3603011 c!623509) b!3603014))

(assert (= (and b!3603011 (not c!623509)) b!3603009))

(assert (= (or b!3603014 b!3603009) bm!260496))

(assert (= (or b!3603014 b!3603009) bm!260493))

(assert (= (or b!3603014 b!3603009) bm!260495))

(assert (= (or b!3603013 bm!260496) bm!260494))

(declare-fun m!4099429 () Bool)

(assert (=> bm!260493 m!4099429))

(declare-fun m!4099431 () Bool)

(assert (=> bm!260494 m!4099431))

(declare-fun m!4099433 () Bool)

(assert (=> bm!260495 m!4099433))

(assert (=> b!3602423 d!1061513))

(declare-fun d!1061523 () Bool)

(assert (=> d!1061523 (= (inv!51254 (tag!6305 anOtherTypeRule!33)) (= (mod (str.len (value!180374 (tag!6305 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3602444 d!1061523))

(declare-fun d!1061527 () Bool)

(declare-fun res!1456456 () Bool)

(declare-fun e!2229617 () Bool)

(assert (=> d!1061527 (=> (not res!1456456) (not e!2229617))))

(assert (=> d!1061527 (= res!1456456 (semiInverseModEq!2384 (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toValue!7895 (transformation!5611 anOtherTypeRule!33))))))

(assert (=> d!1061527 (= (inv!51257 (transformation!5611 anOtherTypeRule!33)) e!2229617)))

(declare-fun b!3603021 () Bool)

(assert (=> b!3603021 (= e!2229617 (equivClasses!2283 (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toValue!7895 (transformation!5611 anOtherTypeRule!33))))))

(assert (= (and d!1061527 res!1456456) b!3603021))

(declare-fun m!4099439 () Bool)

(assert (=> d!1061527 m!4099439))

(declare-fun m!4099441 () Bool)

(assert (=> b!3603021 m!4099441))

(assert (=> b!3602444 d!1061527))

(declare-fun d!1061529 () Bool)

(assert (=> d!1061529 (= (isEmpty!22361 (_2!22029 lt!1238011)) (is-Nil!37896 (_2!22029 lt!1238011)))))

(assert (=> b!3602443 d!1061529))

(declare-fun d!1061531 () Bool)

(declare-fun c!623526 () Bool)

(assert (=> d!1061531 (= c!623526 (is-IntegerValue!17523 (value!180375 token!511)))))

(declare-fun e!2229634 () Bool)

(assert (=> d!1061531 (= (inv!21 (value!180375 token!511)) e!2229634)))

(declare-fun b!3603048 () Bool)

(declare-fun e!2229632 () Bool)

(declare-fun inv!17 (TokenValue!5841) Bool)

(assert (=> b!3603048 (= e!2229632 (inv!17 (value!180375 token!511)))))

(declare-fun b!3603049 () Bool)

(assert (=> b!3603049 (= e!2229634 e!2229632)))

(declare-fun c!623525 () Bool)

(assert (=> b!3603049 (= c!623525 (is-IntegerValue!17524 (value!180375 token!511)))))

(declare-fun b!3603050 () Bool)

(declare-fun res!1456459 () Bool)

(declare-fun e!2229633 () Bool)

(assert (=> b!3603050 (=> res!1456459 e!2229633)))

(assert (=> b!3603050 (= res!1456459 (not (is-IntegerValue!17525 (value!180375 token!511))))))

(assert (=> b!3603050 (= e!2229632 e!2229633)))

(declare-fun b!3603051 () Bool)

(declare-fun inv!16 (TokenValue!5841) Bool)

(assert (=> b!3603051 (= e!2229634 (inv!16 (value!180375 token!511)))))

(declare-fun b!3603052 () Bool)

(declare-fun inv!15 (TokenValue!5841) Bool)

(assert (=> b!3603052 (= e!2229633 (inv!15 (value!180375 token!511)))))

(assert (= (and d!1061531 c!623526) b!3603051))

(assert (= (and d!1061531 (not c!623526)) b!3603049))

(assert (= (and b!3603049 c!623525) b!3603048))

(assert (= (and b!3603049 (not c!623525)) b!3603050))

(assert (= (and b!3603050 (not res!1456459)) b!3603052))

(declare-fun m!4099449 () Bool)

(assert (=> b!3603048 m!4099449))

(declare-fun m!4099451 () Bool)

(assert (=> b!3603051 m!4099451))

(declare-fun m!4099453 () Bool)

(assert (=> b!3603052 m!4099453))

(assert (=> b!3602422 d!1061531))

(declare-fun d!1061537 () Bool)

(declare-fun lt!1238359 () Bool)

(declare-fun content!5411 (List!38022) (Set Rule!11022))

(assert (=> d!1061537 (= lt!1238359 (set.member anOtherTypeRule!33 (content!5411 rules!3307)))))

(declare-fun e!2229639 () Bool)

(assert (=> d!1061537 (= lt!1238359 e!2229639)))

(declare-fun res!1456464 () Bool)

(assert (=> d!1061537 (=> (not res!1456464) (not e!2229639))))

(assert (=> d!1061537 (= res!1456464 (is-Cons!37898 rules!3307))))

(assert (=> d!1061537 (= (contains!7285 rules!3307 anOtherTypeRule!33) lt!1238359)))

(declare-fun b!3603057 () Bool)

(declare-fun e!2229640 () Bool)

(assert (=> b!3603057 (= e!2229639 e!2229640)))

(declare-fun res!1456465 () Bool)

(assert (=> b!3603057 (=> res!1456465 e!2229640)))

(assert (=> b!3603057 (= res!1456465 (= (h!43318 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3603058 () Bool)

(assert (=> b!3603058 (= e!2229640 (contains!7285 (t!292473 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1061537 res!1456464) b!3603057))

(assert (= (and b!3603057 (not res!1456465)) b!3603058))

(declare-fun m!4099455 () Bool)

(assert (=> d!1061537 m!4099455))

(declare-fun m!4099457 () Bool)

(assert (=> d!1061537 m!4099457))

(declare-fun m!4099459 () Bool)

(assert (=> b!3603058 m!4099459))

(assert (=> b!3602442 d!1061537))

(declare-fun d!1061539 () Bool)

(declare-fun lt!1238363 () List!38020)

(assert (=> d!1061539 (= (++!9427 lt!1237986 lt!1238363) lt!1237990)))

(declare-fun e!2229650 () List!38020)

(assert (=> d!1061539 (= lt!1238363 e!2229650)))

(declare-fun c!623533 () Bool)

(assert (=> d!1061539 (= c!623533 (is-Cons!37896 lt!1237986))))

(assert (=> d!1061539 (>= (size!28880 lt!1237990) (size!28880 lt!1237986))))

(assert (=> d!1061539 (= (getSuffix!1549 lt!1237990 lt!1237986) lt!1238363)))

(declare-fun b!3603074 () Bool)

(assert (=> b!3603074 (= e!2229650 (getSuffix!1549 (tail!5584 lt!1237990) (t!292471 lt!1237986)))))

(declare-fun b!3603075 () Bool)

(assert (=> b!3603075 (= e!2229650 lt!1237990)))

(assert (= (and d!1061539 c!623533) b!3603074))

(assert (= (and d!1061539 (not c!623533)) b!3603075))

(declare-fun m!4099475 () Bool)

(assert (=> d!1061539 m!4099475))

(assert (=> d!1061539 m!4099123))

(assert (=> d!1061539 m!4098563))

(assert (=> b!3603074 m!4099115))

(assert (=> b!3603074 m!4099115))

(declare-fun m!4099477 () Bool)

(assert (=> b!3603074 m!4099477))

(assert (=> b!3602419 d!1061539))

(declare-fun d!1061549 () Bool)

(assert (=> d!1061549 (= (_2!22029 lt!1237996) lt!1238008)))

(declare-fun lt!1238368 () Unit!53946)

(declare-fun choose!21013 (List!38020 List!38020 List!38020 List!38020 List!38020) Unit!53946)

(assert (=> d!1061549 (= lt!1238368 (choose!21013 lt!1237986 (_2!22029 lt!1237996) lt!1237986 lt!1238008 lt!1237990))))

(assert (=> d!1061549 (isPrefix!2974 lt!1237986 lt!1237990)))

(assert (=> d!1061549 (= (lemmaSamePrefixThenSameSuffix!1329 lt!1237986 (_2!22029 lt!1237996) lt!1237986 lt!1238008 lt!1237990) lt!1238368)))

(declare-fun bs!570612 () Bool)

(assert (= bs!570612 d!1061549))

(declare-fun m!4099479 () Bool)

(assert (=> bs!570612 m!4099479))

(assert (=> bs!570612 m!4098653))

(assert (=> b!3602419 d!1061549))

(declare-fun d!1061551 () Bool)

(assert (=> d!1061551 (= (apply!9117 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) (seqFromList!4164 lt!1237986)) (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (seqFromList!4164 lt!1237986)))))

(declare-fun b_lambda!106577 () Bool)

(assert (=> (not b_lambda!106577) (not d!1061551)))

(declare-fun t!292542 () Bool)

(declare-fun tb!206281 () Bool)

(assert (=> (and b!3602412 (= (toValue!7895 (transformation!5611 anOtherTypeRule!33)) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292542) tb!206281))

(declare-fun result!251430 () Bool)

(assert (=> tb!206281 (= result!251430 (inv!21 (dynLambda!16364 (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996)))) (seqFromList!4164 lt!1237986))))))

(declare-fun m!4099481 () Bool)

(assert (=> tb!206281 m!4099481))

(assert (=> d!1061551 t!292542))

(declare-fun b_and!261987 () Bool)

(assert (= b_and!261963 (and (=> t!292542 result!251430) b_and!261987)))

(declare-fun tb!206283 () Bool)

(declare-fun t!292544 () Bool)

(assert (=> (and b!3602440 (= (toValue!7895 (transformation!5611 (h!43318 rules!3307))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292544) tb!206283))

(declare-fun result!251432 () Bool)

(assert (= result!251432 result!251430))

(assert (=> d!1061551 t!292544))

(declare-fun b_and!261989 () Bool)

(assert (= b_and!261965 (and (=> t!292544 result!251432) b_and!261989)))

(declare-fun tb!206285 () Bool)

(declare-fun t!292546 () Bool)

(assert (=> (and b!3602427 (= (toValue!7895 (transformation!5611 rule!403)) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292546) tb!206285))

(declare-fun result!251434 () Bool)

(assert (= result!251434 result!251430))

(assert (=> d!1061551 t!292546))

(declare-fun b_and!261991 () Bool)

(assert (= b_and!261967 (and (=> t!292546 result!251434) b_and!261991)))

(declare-fun tb!206287 () Bool)

(declare-fun t!292548 () Bool)

(assert (=> (and b!3602414 (= (toValue!7895 (transformation!5611 (rule!8349 token!511))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292548) tb!206287))

(declare-fun result!251436 () Bool)

(assert (= result!251436 result!251430))

(assert (=> d!1061551 t!292548))

(declare-fun b_and!261993 () Bool)

(assert (= b_and!261969 (and (=> t!292548 result!251436) b_and!261993)))

(assert (=> d!1061551 m!4098559))

(declare-fun m!4099483 () Bool)

(assert (=> d!1061551 m!4099483))

(assert (=> b!3602419 d!1061551))

(declare-fun d!1061553 () Bool)

(assert (=> d!1061553 (= (maxPrefixOneRule!1878 thiss!23823 (rule!8349 (_1!22029 lt!1237996)) lt!1237990) (Some!7852 (tuple2!37791 (Token!10589 (apply!9117 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) (seqFromList!4164 lt!1237986)) (rule!8349 (_1!22029 lt!1237996)) (size!28880 lt!1237986) lt!1237986) (_2!22029 lt!1237996))))))

(declare-fun lt!1238371 () Unit!53946)

(declare-fun choose!21014 (LexerInterface!5200 List!38022 List!38020 List!38020 List!38020 Rule!11022) Unit!53946)

(assert (=> d!1061553 (= lt!1238371 (choose!21014 thiss!23823 rules!3307 lt!1237986 lt!1237990 (_2!22029 lt!1237996) (rule!8349 (_1!22029 lt!1237996))))))

(assert (=> d!1061553 (not (isEmpty!22360 rules!3307))))

(assert (=> d!1061553 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!950 thiss!23823 rules!3307 lt!1237986 lt!1237990 (_2!22029 lt!1237996) (rule!8349 (_1!22029 lt!1237996))) lt!1238371)))

(declare-fun bs!570613 () Bool)

(assert (= bs!570613 d!1061553))

(declare-fun m!4099485 () Bool)

(assert (=> bs!570613 m!4099485))

(assert (=> bs!570613 m!4098563))

(assert (=> bs!570613 m!4098567))

(assert (=> bs!570613 m!4098559))

(assert (=> bs!570613 m!4098559))

(assert (=> bs!570613 m!4098561))

(assert (=> bs!570613 m!4098681))

(assert (=> b!3602419 d!1061553))

(declare-fun d!1061555 () Bool)

(declare-fun lt!1238374 () Int)

(assert (=> d!1061555 (>= lt!1238374 0)))

(declare-fun e!2229654 () Int)

(assert (=> d!1061555 (= lt!1238374 e!2229654)))

(declare-fun c!623537 () Bool)

(assert (=> d!1061555 (= c!623537 (is-Nil!37896 lt!1237986))))

(assert (=> d!1061555 (= (size!28880 lt!1237986) lt!1238374)))

(declare-fun b!3603080 () Bool)

(assert (=> b!3603080 (= e!2229654 0)))

(declare-fun b!3603081 () Bool)

(assert (=> b!3603081 (= e!2229654 (+ 1 (size!28880 (t!292471 lt!1237986))))))

(assert (= (and d!1061555 c!623537) b!3603080))

(assert (= (and d!1061555 (not c!623537)) b!3603081))

(declare-fun m!4099487 () Bool)

(assert (=> b!3603081 m!4099487))

(assert (=> b!3602419 d!1061555))

(declare-fun b!3603100 () Bool)

(declare-fun res!1456489 () Bool)

(declare-fun e!2229666 () Bool)

(assert (=> b!3603100 (=> (not res!1456489) (not e!2229666))))

(declare-fun lt!1238385 () Option!7853)

(assert (=> b!3603100 (= res!1456489 (= (rule!8349 (_1!22029 (get!12268 lt!1238385))) (rule!8349 (_1!22029 lt!1237996))))))

(declare-fun b!3603101 () Bool)

(declare-fun res!1456488 () Bool)

(assert (=> b!3603101 (=> (not res!1456488) (not e!2229666))))

(assert (=> b!3603101 (= res!1456488 (= (++!9427 (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238385)))) (_2!22029 (get!12268 lt!1238385))) lt!1237990))))

(declare-fun b!3603102 () Bool)

(declare-fun e!2229664 () Bool)

(assert (=> b!3603102 (= e!2229664 e!2229666)))

(declare-fun res!1456484 () Bool)

(assert (=> b!3603102 (=> (not res!1456484) (not e!2229666))))

(assert (=> b!3603102 (= res!1456484 (matchR!4939 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238385))))))))

(declare-fun b!3603103 () Bool)

(assert (=> b!3603103 (= e!2229666 (= (size!28879 (_1!22029 (get!12268 lt!1238385))) (size!28880 (originalCharacters!6325 (_1!22029 (get!12268 lt!1238385))))))))

(declare-fun b!3603104 () Bool)

(declare-fun e!2229663 () Option!7853)

(assert (=> b!3603104 (= e!2229663 None!7852)))

(declare-fun b!3603105 () Bool)

(declare-fun res!1456486 () Bool)

(assert (=> b!3603105 (=> (not res!1456486) (not e!2229666))))

(assert (=> b!3603105 (= res!1456486 (= (value!180375 (_1!22029 (get!12268 lt!1238385))) (apply!9117 (transformation!5611 (rule!8349 (_1!22029 (get!12268 lt!1238385)))) (seqFromList!4164 (originalCharacters!6325 (_1!22029 (get!12268 lt!1238385)))))))))

(declare-fun d!1061557 () Bool)

(assert (=> d!1061557 e!2229664))

(declare-fun res!1456483 () Bool)

(assert (=> d!1061557 (=> res!1456483 e!2229664)))

(assert (=> d!1061557 (= res!1456483 (isEmpty!22365 lt!1238385))))

(assert (=> d!1061557 (= lt!1238385 e!2229663)))

(declare-fun c!623540 () Bool)

(declare-datatypes ((tuple2!37796 0))(
  ( (tuple2!37797 (_1!22032 List!38020) (_2!22032 List!38020)) )
))
(declare-fun lt!1238387 () tuple2!37796)

(assert (=> d!1061557 (= c!623540 (isEmpty!22361 (_1!22032 lt!1238387)))))

(declare-fun findLongestMatch!907 (Regex!10370 List!38020) tuple2!37796)

(assert (=> d!1061557 (= lt!1238387 (findLongestMatch!907 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237990))))

(assert (=> d!1061557 (ruleValid!1876 thiss!23823 (rule!8349 (_1!22029 lt!1237996)))))

(assert (=> d!1061557 (= (maxPrefixOneRule!1878 thiss!23823 (rule!8349 (_1!22029 lt!1237996)) lt!1237990) lt!1238385)))

(declare-fun b!3603106 () Bool)

(declare-fun e!2229665 () Bool)

(declare-fun findLongestMatchInner!992 (Regex!10370 List!38020 Int List!38020 List!38020 Int) tuple2!37796)

(assert (=> b!3603106 (= e!2229665 (matchR!4939 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) (_1!22032 (findLongestMatchInner!992 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) Nil!37896 (size!28880 Nil!37896) lt!1237990 lt!1237990 (size!28880 lt!1237990)))))))

(declare-fun b!3603107 () Bool)

(assert (=> b!3603107 (= e!2229663 (Some!7852 (tuple2!37791 (Token!10589 (apply!9117 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) (seqFromList!4164 (_1!22032 lt!1238387))) (rule!8349 (_1!22029 lt!1237996)) (size!28881 (seqFromList!4164 (_1!22032 lt!1238387))) (_1!22032 lt!1238387)) (_2!22032 lt!1238387))))))

(declare-fun lt!1238389 () Unit!53946)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!965 (Regex!10370 List!38020) Unit!53946)

(assert (=> b!3603107 (= lt!1238389 (longestMatchIsAcceptedByMatchOrIsEmpty!965 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) lt!1237990))))

(declare-fun res!1456485 () Bool)

(assert (=> b!3603107 (= res!1456485 (isEmpty!22361 (_1!22032 (findLongestMatchInner!992 (regex!5611 (rule!8349 (_1!22029 lt!1237996))) Nil!37896 (size!28880 Nil!37896) lt!1237990 lt!1237990 (size!28880 lt!1237990)))))))

(assert (=> b!3603107 (=> res!1456485 e!2229665)))

(assert (=> b!3603107 e!2229665))

(declare-fun lt!1238386 () Unit!53946)

(assert (=> b!3603107 (= lt!1238386 lt!1238389)))

(declare-fun lt!1238388 () Unit!53946)

(assert (=> b!3603107 (= lt!1238388 (lemmaSemiInverse!1368 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))) (seqFromList!4164 (_1!22032 lt!1238387))))))

(declare-fun b!3603108 () Bool)

(declare-fun res!1456487 () Bool)

(assert (=> b!3603108 (=> (not res!1456487) (not e!2229666))))

(assert (=> b!3603108 (= res!1456487 (< (size!28880 (_2!22029 (get!12268 lt!1238385))) (size!28880 lt!1237990)))))

(assert (= (and d!1061557 c!623540) b!3603104))

(assert (= (and d!1061557 (not c!623540)) b!3603107))

(assert (= (and b!3603107 (not res!1456485)) b!3603106))

(assert (= (and d!1061557 (not res!1456483)) b!3603102))

(assert (= (and b!3603102 res!1456484) b!3603101))

(assert (= (and b!3603101 res!1456488) b!3603108))

(assert (= (and b!3603108 res!1456487) b!3603100))

(assert (= (and b!3603100 res!1456489) b!3603105))

(assert (= (and b!3603105 res!1456486) b!3603103))

(declare-fun m!4099489 () Bool)

(assert (=> b!3603107 m!4099489))

(declare-fun m!4099491 () Bool)

(assert (=> b!3603107 m!4099491))

(assert (=> b!3603107 m!4099489))

(assert (=> b!3603107 m!4099123))

(declare-fun m!4099493 () Bool)

(assert (=> b!3603107 m!4099493))

(assert (=> b!3603107 m!4099123))

(declare-fun m!4099495 () Bool)

(assert (=> b!3603107 m!4099495))

(assert (=> b!3603107 m!4099489))

(declare-fun m!4099497 () Bool)

(assert (=> b!3603107 m!4099497))

(declare-fun m!4099499 () Bool)

(assert (=> b!3603107 m!4099499))

(assert (=> b!3603107 m!4099489))

(declare-fun m!4099501 () Bool)

(assert (=> b!3603107 m!4099501))

(assert (=> b!3603107 m!4099493))

(declare-fun m!4099503 () Bool)

(assert (=> b!3603107 m!4099503))

(declare-fun m!4099505 () Bool)

(assert (=> b!3603101 m!4099505))

(declare-fun m!4099507 () Bool)

(assert (=> b!3603101 m!4099507))

(assert (=> b!3603101 m!4099507))

(declare-fun m!4099509 () Bool)

(assert (=> b!3603101 m!4099509))

(assert (=> b!3603101 m!4099509))

(declare-fun m!4099511 () Bool)

(assert (=> b!3603101 m!4099511))

(assert (=> b!3603106 m!4099493))

(assert (=> b!3603106 m!4099123))

(assert (=> b!3603106 m!4099493))

(assert (=> b!3603106 m!4099123))

(assert (=> b!3603106 m!4099495))

(declare-fun m!4099513 () Bool)

(assert (=> b!3603106 m!4099513))

(declare-fun m!4099515 () Bool)

(assert (=> d!1061557 m!4099515))

(declare-fun m!4099517 () Bool)

(assert (=> d!1061557 m!4099517))

(declare-fun m!4099519 () Bool)

(assert (=> d!1061557 m!4099519))

(declare-fun m!4099521 () Bool)

(assert (=> d!1061557 m!4099521))

(assert (=> b!3603102 m!4099505))

(assert (=> b!3603102 m!4099507))

(assert (=> b!3603102 m!4099507))

(assert (=> b!3603102 m!4099509))

(assert (=> b!3603102 m!4099509))

(declare-fun m!4099523 () Bool)

(assert (=> b!3603102 m!4099523))

(assert (=> b!3603108 m!4099505))

(declare-fun m!4099525 () Bool)

(assert (=> b!3603108 m!4099525))

(assert (=> b!3603108 m!4099123))

(assert (=> b!3603103 m!4099505))

(declare-fun m!4099527 () Bool)

(assert (=> b!3603103 m!4099527))

(assert (=> b!3603105 m!4099505))

(declare-fun m!4099529 () Bool)

(assert (=> b!3603105 m!4099529))

(assert (=> b!3603105 m!4099529))

(declare-fun m!4099531 () Bool)

(assert (=> b!3603105 m!4099531))

(assert (=> b!3603100 m!4099505))

(assert (=> b!3602419 d!1061557))

(declare-fun d!1061559 () Bool)

(assert (=> d!1061559 (= (seqFromList!4164 lt!1237986) (fromListB!1924 lt!1237986))))

(declare-fun bs!570614 () Bool)

(assert (= bs!570614 d!1061559))

(declare-fun m!4099533 () Bool)

(assert (=> bs!570614 m!4099533))

(assert (=> b!3602419 d!1061559))

(declare-fun d!1061561 () Bool)

(assert (=> d!1061561 (= (get!12268 lt!1238009) (v!37570 lt!1238009))))

(assert (=> b!3602441 d!1061561))

(declare-fun b!3603109 () Bool)

(declare-fun res!1456494 () Bool)

(declare-fun e!2229667 () Bool)

(assert (=> b!3603109 (=> res!1456494 e!2229667)))

(declare-fun e!2229671 () Bool)

(assert (=> b!3603109 (= res!1456494 e!2229671)))

(declare-fun res!1456495 () Bool)

(assert (=> b!3603109 (=> (not res!1456495) (not e!2229671))))

(declare-fun lt!1238390 () Bool)

(assert (=> b!3603109 (= res!1456495 lt!1238390)))

(declare-fun bm!260509 () Bool)

(declare-fun call!260514 () Bool)

(assert (=> bm!260509 (= call!260514 (isEmpty!22361 lt!1237999))))

(declare-fun b!3603110 () Bool)

(declare-fun e!2229672 () Bool)

(assert (=> b!3603110 (= e!2229672 (not lt!1238390))))

(declare-fun b!3603111 () Bool)

(declare-fun e!2229668 () Bool)

(assert (=> b!3603111 (= e!2229668 (= lt!1238390 call!260514))))

(declare-fun b!3603112 () Bool)

(assert (=> b!3603112 (= e!2229671 (= (head!7557 lt!1237999) (c!623424 (regex!5611 rule!403))))))

(declare-fun d!1061563 () Bool)

(assert (=> d!1061563 e!2229668))

(declare-fun c!623543 () Bool)

(assert (=> d!1061563 (= c!623543 (is-EmptyExpr!10370 (regex!5611 rule!403)))))

(declare-fun e!2229669 () Bool)

(assert (=> d!1061563 (= lt!1238390 e!2229669)))

(declare-fun c!623541 () Bool)

(assert (=> d!1061563 (= c!623541 (isEmpty!22361 lt!1237999))))

(assert (=> d!1061563 (validRegex!4746 (regex!5611 rule!403))))

(assert (=> d!1061563 (= (matchR!4939 (regex!5611 rule!403) lt!1237999) lt!1238390)))

(declare-fun b!3603113 () Bool)

(declare-fun res!1456492 () Bool)

(assert (=> b!3603113 (=> res!1456492 e!2229667)))

(assert (=> b!3603113 (= res!1456492 (not (is-ElementMatch!10370 (regex!5611 rule!403))))))

(assert (=> b!3603113 (= e!2229672 e!2229667)))

(declare-fun b!3603114 () Bool)

(assert (=> b!3603114 (= e!2229669 (matchR!4939 (derivativeStep!3135 (regex!5611 rule!403) (head!7557 lt!1237999)) (tail!5584 lt!1237999)))))

(declare-fun b!3603115 () Bool)

(declare-fun e!2229673 () Bool)

(assert (=> b!3603115 (= e!2229673 (not (= (head!7557 lt!1237999) (c!623424 (regex!5611 rule!403)))))))

(declare-fun b!3603116 () Bool)

(assert (=> b!3603116 (= e!2229668 e!2229672)))

(declare-fun c!623542 () Bool)

(assert (=> b!3603116 (= c!623542 (is-EmptyLang!10370 (regex!5611 rule!403)))))

(declare-fun b!3603117 () Bool)

(declare-fun e!2229670 () Bool)

(assert (=> b!3603117 (= e!2229667 e!2229670)))

(declare-fun res!1456496 () Bool)

(assert (=> b!3603117 (=> (not res!1456496) (not e!2229670))))

(assert (=> b!3603117 (= res!1456496 (not lt!1238390))))

(declare-fun b!3603118 () Bool)

(declare-fun res!1456497 () Bool)

(assert (=> b!3603118 (=> (not res!1456497) (not e!2229671))))

(assert (=> b!3603118 (= res!1456497 (isEmpty!22361 (tail!5584 lt!1237999)))))

(declare-fun b!3603119 () Bool)

(declare-fun res!1456490 () Bool)

(assert (=> b!3603119 (=> (not res!1456490) (not e!2229671))))

(assert (=> b!3603119 (= res!1456490 (not call!260514))))

(declare-fun b!3603120 () Bool)

(declare-fun res!1456493 () Bool)

(assert (=> b!3603120 (=> res!1456493 e!2229673)))

(assert (=> b!3603120 (= res!1456493 (not (isEmpty!22361 (tail!5584 lt!1237999))))))

(declare-fun b!3603121 () Bool)

(assert (=> b!3603121 (= e!2229669 (nullable!3586 (regex!5611 rule!403)))))

(declare-fun b!3603122 () Bool)

(assert (=> b!3603122 (= e!2229670 e!2229673)))

(declare-fun res!1456491 () Bool)

(assert (=> b!3603122 (=> res!1456491 e!2229673)))

(assert (=> b!3603122 (= res!1456491 call!260514)))

(assert (= (and d!1061563 c!623541) b!3603121))

(assert (= (and d!1061563 (not c!623541)) b!3603114))

(assert (= (and d!1061563 c!623543) b!3603111))

(assert (= (and d!1061563 (not c!623543)) b!3603116))

(assert (= (and b!3603116 c!623542) b!3603110))

(assert (= (and b!3603116 (not c!623542)) b!3603113))

(assert (= (and b!3603113 (not res!1456492)) b!3603109))

(assert (= (and b!3603109 res!1456495) b!3603119))

(assert (= (and b!3603119 res!1456490) b!3603118))

(assert (= (and b!3603118 res!1456497) b!3603112))

(assert (= (and b!3603109 (not res!1456494)) b!3603117))

(assert (= (and b!3603117 res!1456496) b!3603122))

(assert (= (and b!3603122 (not res!1456491)) b!3603120))

(assert (= (and b!3603120 (not res!1456493)) b!3603115))

(assert (= (or b!3603111 b!3603122 b!3603119) bm!260509))

(assert (=> b!3603120 m!4099113))

(assert (=> b!3603120 m!4099113))

(declare-fun m!4099535 () Bool)

(assert (=> b!3603120 m!4099535))

(declare-fun m!4099537 () Bool)

(assert (=> d!1061563 m!4099537))

(assert (=> d!1061563 m!4099409))

(assert (=> b!3603118 m!4099113))

(assert (=> b!3603118 m!4099113))

(assert (=> b!3603118 m!4099535))

(assert (=> bm!260509 m!4099537))

(assert (=> b!3603114 m!4099119))

(assert (=> b!3603114 m!4099119))

(declare-fun m!4099539 () Bool)

(assert (=> b!3603114 m!4099539))

(assert (=> b!3603114 m!4099113))

(assert (=> b!3603114 m!4099539))

(assert (=> b!3603114 m!4099113))

(declare-fun m!4099541 () Bool)

(assert (=> b!3603114 m!4099541))

(assert (=> b!3603115 m!4099119))

(assert (=> b!3603112 m!4099119))

(declare-fun m!4099543 () Bool)

(assert (=> b!3603121 m!4099543))

(assert (=> b!3602418 d!1061563))

(declare-fun d!1061565 () Bool)

(declare-fun res!1456502 () Bool)

(declare-fun e!2229676 () Bool)

(assert (=> d!1061565 (=> (not res!1456502) (not e!2229676))))

(assert (=> d!1061565 (= res!1456502 (validRegex!4746 (regex!5611 rule!403)))))

(assert (=> d!1061565 (= (ruleValid!1876 thiss!23823 rule!403) e!2229676)))

(declare-fun b!3603127 () Bool)

(declare-fun res!1456503 () Bool)

(assert (=> b!3603127 (=> (not res!1456503) (not e!2229676))))

(assert (=> b!3603127 (= res!1456503 (not (nullable!3586 (regex!5611 rule!403))))))

(declare-fun b!3603128 () Bool)

(assert (=> b!3603128 (= e!2229676 (not (= (tag!6305 rule!403) (String!42542 ""))))))

(assert (= (and d!1061565 res!1456502) b!3603127))

(assert (= (and b!3603127 res!1456503) b!3603128))

(assert (=> d!1061565 m!4099409))

(assert (=> b!3603127 m!4099543))

(assert (=> b!3602418 d!1061565))

(declare-fun d!1061567 () Bool)

(assert (=> d!1061567 (ruleValid!1876 thiss!23823 rule!403)))

(declare-fun lt!1238393 () Unit!53946)

(declare-fun choose!21015 (LexerInterface!5200 Rule!11022 List!38022) Unit!53946)

(assert (=> d!1061567 (= lt!1238393 (choose!21015 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1061567 (contains!7285 rules!3307 rule!403)))

(assert (=> d!1061567 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1031 thiss!23823 rule!403 rules!3307) lt!1238393)))

(declare-fun bs!570615 () Bool)

(assert (= bs!570615 d!1061567))

(assert (=> bs!570615 m!4098677))

(declare-fun m!4099545 () Bool)

(assert (=> bs!570615 m!4099545))

(assert (=> bs!570615 m!4098615))

(assert (=> b!3602418 d!1061567))

(declare-fun d!1061569 () Bool)

(assert (=> d!1061569 (= (isEmpty!22360 rules!3307) (is-Nil!37898 rules!3307))))

(assert (=> b!3602416 d!1061569))

(declare-fun d!1061571 () Bool)

(declare-fun lt!1238394 () Bool)

(assert (=> d!1061571 (= lt!1238394 (set.member rule!403 (content!5411 rules!3307)))))

(declare-fun e!2229677 () Bool)

(assert (=> d!1061571 (= lt!1238394 e!2229677)))

(declare-fun res!1456504 () Bool)

(assert (=> d!1061571 (=> (not res!1456504) (not e!2229677))))

(assert (=> d!1061571 (= res!1456504 (is-Cons!37898 rules!3307))))

(assert (=> d!1061571 (= (contains!7285 rules!3307 rule!403) lt!1238394)))

(declare-fun b!3603129 () Bool)

(declare-fun e!2229678 () Bool)

(assert (=> b!3603129 (= e!2229677 e!2229678)))

(declare-fun res!1456505 () Bool)

(assert (=> b!3603129 (=> res!1456505 e!2229678)))

(assert (=> b!3603129 (= res!1456505 (= (h!43318 rules!3307) rule!403))))

(declare-fun b!3603130 () Bool)

(assert (=> b!3603130 (= e!2229678 (contains!7285 (t!292473 rules!3307) rule!403))))

(assert (= (and d!1061571 res!1456504) b!3603129))

(assert (= (and b!3603129 (not res!1456505)) b!3603130))

(assert (=> d!1061571 m!4099455))

(declare-fun m!4099547 () Bool)

(assert (=> d!1061571 m!4099547))

(declare-fun m!4099549 () Bool)

(assert (=> b!3603130 m!4099549))

(assert (=> b!3602417 d!1061571))

(declare-fun d!1061573 () Bool)

(assert (=> d!1061573 (= (inv!51254 (tag!6305 rule!403)) (= (mod (str.len (value!180374 (tag!6305 rule!403))) 2) 0))))

(assert (=> b!3602437 d!1061573))

(declare-fun d!1061575 () Bool)

(declare-fun res!1456506 () Bool)

(declare-fun e!2229679 () Bool)

(assert (=> d!1061575 (=> (not res!1456506) (not e!2229679))))

(assert (=> d!1061575 (= res!1456506 (semiInverseModEq!2384 (toChars!7754 (transformation!5611 rule!403)) (toValue!7895 (transformation!5611 rule!403))))))

(assert (=> d!1061575 (= (inv!51257 (transformation!5611 rule!403)) e!2229679)))

(declare-fun b!3603131 () Bool)

(assert (=> b!3603131 (= e!2229679 (equivClasses!2283 (toChars!7754 (transformation!5611 rule!403)) (toValue!7895 (transformation!5611 rule!403))))))

(assert (= (and d!1061575 res!1456506) b!3603131))

(declare-fun m!4099551 () Bool)

(assert (=> d!1061575 m!4099551))

(declare-fun m!4099553 () Bool)

(assert (=> b!3603131 m!4099553))

(assert (=> b!3602437 d!1061575))

(declare-fun d!1061577 () Bool)

(declare-fun lt!1238395 () Bool)

(assert (=> d!1061577 (= lt!1238395 (set.member lt!1238010 (content!5410 lt!1237992)))))

(declare-fun e!2229681 () Bool)

(assert (=> d!1061577 (= lt!1238395 e!2229681)))

(declare-fun res!1456508 () Bool)

(assert (=> d!1061577 (=> (not res!1456508) (not e!2229681))))

(assert (=> d!1061577 (= res!1456508 (is-Cons!37896 lt!1237992))))

(assert (=> d!1061577 (= (contains!7286 lt!1237992 lt!1238010) lt!1238395)))

(declare-fun b!3603132 () Bool)

(declare-fun e!2229680 () Bool)

(assert (=> b!3603132 (= e!2229681 e!2229680)))

(declare-fun res!1456507 () Bool)

(assert (=> b!3603132 (=> res!1456507 e!2229680)))

(assert (=> b!3603132 (= res!1456507 (= (h!43316 lt!1237992) lt!1238010))))

(declare-fun b!3603133 () Bool)

(assert (=> b!3603133 (= e!2229680 (contains!7286 (t!292471 lt!1237992) lt!1238010))))

(assert (= (and d!1061577 res!1456508) b!3603132))

(assert (= (and b!3603132 (not res!1456507)) b!3603133))

(assert (=> d!1061577 m!4099397))

(declare-fun m!4099555 () Bool)

(assert (=> d!1061577 m!4099555))

(declare-fun m!4099557 () Bool)

(assert (=> b!3603133 m!4099557))

(assert (=> b!3602435 d!1061577))

(declare-fun d!1061579 () Bool)

(assert (=> d!1061579 (= (head!7557 suffix!1395) (h!43316 suffix!1395))))

(assert (=> b!3602435 d!1061579))

(declare-fun bm!260510 () Bool)

(declare-fun call!260517 () List!38020)

(declare-fun c!623544 () Bool)

(assert (=> bm!260510 (= call!260517 (usedCharacters!825 (ite c!623544 (regTwo!21253 (regex!5611 rule!403)) (regOne!21252 (regex!5611 rule!403)))))))

(declare-fun d!1061581 () Bool)

(declare-fun c!623546 () Bool)

(assert (=> d!1061581 (= c!623546 (or (is-EmptyExpr!10370 (regex!5611 rule!403)) (is-EmptyLang!10370 (regex!5611 rule!403))))))

(declare-fun e!2229682 () List!38020)

(assert (=> d!1061581 (= (usedCharacters!825 (regex!5611 rule!403)) e!2229682)))

(declare-fun call!260516 () List!38020)

(declare-fun bm!260511 () Bool)

(declare-fun c!623545 () Bool)

(assert (=> bm!260511 (= call!260516 (usedCharacters!825 (ite c!623545 (reg!10699 (regex!5611 rule!403)) (ite c!623544 (regOne!21253 (regex!5611 rule!403)) (regTwo!21252 (regex!5611 rule!403))))))))

(declare-fun call!260518 () List!38020)

(declare-fun bm!260512 () Bool)

(declare-fun call!260515 () List!38020)

(assert (=> bm!260512 (= call!260515 (++!9427 (ite c!623544 call!260518 call!260517) (ite c!623544 call!260517 call!260518)))))

(declare-fun b!3603134 () Bool)

(declare-fun e!2229685 () List!38020)

(assert (=> b!3603134 (= e!2229685 call!260515)))

(declare-fun b!3603135 () Bool)

(declare-fun e!2229683 () List!38020)

(assert (=> b!3603135 (= e!2229682 e!2229683)))

(declare-fun c!623547 () Bool)

(assert (=> b!3603135 (= c!623547 (is-ElementMatch!10370 (regex!5611 rule!403)))))

(declare-fun b!3603136 () Bool)

(declare-fun e!2229684 () List!38020)

(assert (=> b!3603136 (= e!2229684 e!2229685)))

(assert (=> b!3603136 (= c!623544 (is-Union!10370 (regex!5611 rule!403)))))

(declare-fun b!3603137 () Bool)

(assert (=> b!3603137 (= c!623545 (is-Star!10370 (regex!5611 rule!403)))))

(assert (=> b!3603137 (= e!2229683 e!2229684)))

(declare-fun bm!260513 () Bool)

(assert (=> bm!260513 (= call!260518 call!260516)))

(declare-fun b!3603138 () Bool)

(assert (=> b!3603138 (= e!2229684 call!260516)))

(declare-fun b!3603139 () Bool)

(assert (=> b!3603139 (= e!2229685 call!260515)))

(declare-fun b!3603140 () Bool)

(assert (=> b!3603140 (= e!2229683 (Cons!37896 (c!623424 (regex!5611 rule!403)) Nil!37896))))

(declare-fun b!3603141 () Bool)

(assert (=> b!3603141 (= e!2229682 Nil!37896)))

(assert (= (and d!1061581 c!623546) b!3603141))

(assert (= (and d!1061581 (not c!623546)) b!3603135))

(assert (= (and b!3603135 c!623547) b!3603140))

(assert (= (and b!3603135 (not c!623547)) b!3603137))

(assert (= (and b!3603137 c!623545) b!3603138))

(assert (= (and b!3603137 (not c!623545)) b!3603136))

(assert (= (and b!3603136 c!623544) b!3603139))

(assert (= (and b!3603136 (not c!623544)) b!3603134))

(assert (= (or b!3603139 b!3603134) bm!260513))

(assert (= (or b!3603139 b!3603134) bm!260510))

(assert (= (or b!3603139 b!3603134) bm!260512))

(assert (= (or b!3603138 bm!260513) bm!260511))

(declare-fun m!4099559 () Bool)

(assert (=> bm!260510 m!4099559))

(declare-fun m!4099561 () Bool)

(assert (=> bm!260511 m!4099561))

(declare-fun m!4099563 () Bool)

(assert (=> bm!260512 m!4099563))

(assert (=> b!3602435 d!1061581))

(declare-fun d!1061583 () Bool)

(declare-fun res!1456511 () Bool)

(declare-fun e!2229688 () Bool)

(assert (=> d!1061583 (=> (not res!1456511) (not e!2229688))))

(declare-fun rulesValid!2143 (LexerInterface!5200 List!38022) Bool)

(assert (=> d!1061583 (= res!1456511 (rulesValid!2143 thiss!23823 rules!3307))))

(assert (=> d!1061583 (= (rulesInvariant!4597 thiss!23823 rules!3307) e!2229688)))

(declare-fun b!3603144 () Bool)

(declare-datatypes ((List!38027 0))(
  ( (Nil!37903) (Cons!37903 (h!43323 String!42541) (t!292598 List!38027)) )
))
(declare-fun noDuplicateTag!2139 (LexerInterface!5200 List!38022 List!38027) Bool)

(assert (=> b!3603144 (= e!2229688 (noDuplicateTag!2139 thiss!23823 rules!3307 Nil!37903))))

(assert (= (and d!1061583 res!1456511) b!3603144))

(declare-fun m!4099565 () Bool)

(assert (=> d!1061583 m!4099565))

(declare-fun m!4099567 () Bool)

(assert (=> b!3603144 m!4099567))

(assert (=> b!3602413 d!1061583))

(declare-fun d!1061585 () Bool)

(assert (=> d!1061585 (= (isDefined!6085 lt!1238009) (not (isEmpty!22365 lt!1238009)))))

(declare-fun bs!570616 () Bool)

(assert (= bs!570616 d!1061585))

(declare-fun m!4099569 () Bool)

(assert (=> bs!570616 m!4099569))

(assert (=> b!3602434 d!1061585))

(declare-fun b!3603145 () Bool)

(declare-fun res!1456514 () Bool)

(declare-fun e!2229689 () Bool)

(assert (=> b!3603145 (=> (not res!1456514) (not e!2229689))))

(declare-fun lt!1238398 () Option!7853)

(assert (=> b!3603145 (= res!1456514 (= (value!180375 (_1!22029 (get!12268 lt!1238398))) (apply!9117 (transformation!5611 (rule!8349 (_1!22029 (get!12268 lt!1238398)))) (seqFromList!4164 (originalCharacters!6325 (_1!22029 (get!12268 lt!1238398)))))))))

(declare-fun d!1061587 () Bool)

(declare-fun e!2229690 () Bool)

(assert (=> d!1061587 e!2229690))

(declare-fun res!1456518 () Bool)

(assert (=> d!1061587 (=> res!1456518 e!2229690)))

(assert (=> d!1061587 (= res!1456518 (isEmpty!22365 lt!1238398))))

(declare-fun e!2229691 () Option!7853)

(assert (=> d!1061587 (= lt!1238398 e!2229691)))

(declare-fun c!623548 () Bool)

(assert (=> d!1061587 (= c!623548 (and (is-Cons!37898 rules!3307) (is-Nil!37898 (t!292473 rules!3307))))))

(declare-fun lt!1238400 () Unit!53946)

(declare-fun lt!1238399 () Unit!53946)

(assert (=> d!1061587 (= lt!1238400 lt!1238399)))

(assert (=> d!1061587 (isPrefix!2974 lt!1237999 lt!1237999)))

(assert (=> d!1061587 (= lt!1238399 (lemmaIsPrefixRefl!1903 lt!1237999 lt!1237999))))

(assert (=> d!1061587 (rulesValidInductive!1968 thiss!23823 rules!3307)))

(assert (=> d!1061587 (= (maxPrefix!2734 thiss!23823 rules!3307 lt!1237999) lt!1238398)))

(declare-fun b!3603146 () Bool)

(declare-fun call!260519 () Option!7853)

(assert (=> b!3603146 (= e!2229691 call!260519)))

(declare-fun b!3603147 () Bool)

(assert (=> b!3603147 (= e!2229689 (contains!7285 rules!3307 (rule!8349 (_1!22029 (get!12268 lt!1238398)))))))

(declare-fun b!3603148 () Bool)

(declare-fun res!1456516 () Bool)

(assert (=> b!3603148 (=> (not res!1456516) (not e!2229689))))

(assert (=> b!3603148 (= res!1456516 (= (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238398)))) (originalCharacters!6325 (_1!22029 (get!12268 lt!1238398)))))))

(declare-fun b!3603149 () Bool)

(declare-fun lt!1238396 () Option!7853)

(declare-fun lt!1238397 () Option!7853)

(assert (=> b!3603149 (= e!2229691 (ite (and (is-None!7852 lt!1238396) (is-None!7852 lt!1238397)) None!7852 (ite (is-None!7852 lt!1238397) lt!1238396 (ite (is-None!7852 lt!1238396) lt!1238397 (ite (>= (size!28879 (_1!22029 (v!37570 lt!1238396))) (size!28879 (_1!22029 (v!37570 lt!1238397)))) lt!1238396 lt!1238397)))))))

(assert (=> b!3603149 (= lt!1238396 call!260519)))

(assert (=> b!3603149 (= lt!1238397 (maxPrefix!2734 thiss!23823 (t!292473 rules!3307) lt!1237999))))

(declare-fun b!3603150 () Bool)

(declare-fun res!1456512 () Bool)

(assert (=> b!3603150 (=> (not res!1456512) (not e!2229689))))

(assert (=> b!3603150 (= res!1456512 (< (size!28880 (_2!22029 (get!12268 lt!1238398))) (size!28880 lt!1237999)))))

(declare-fun b!3603151 () Bool)

(declare-fun res!1456517 () Bool)

(assert (=> b!3603151 (=> (not res!1456517) (not e!2229689))))

(assert (=> b!3603151 (= res!1456517 (matchR!4939 (regex!5611 (rule!8349 (_1!22029 (get!12268 lt!1238398)))) (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238398))))))))

(declare-fun bm!260514 () Bool)

(assert (=> bm!260514 (= call!260519 (maxPrefixOneRule!1878 thiss!23823 (h!43318 rules!3307) lt!1237999))))

(declare-fun b!3603152 () Bool)

(assert (=> b!3603152 (= e!2229690 e!2229689)))

(declare-fun res!1456515 () Bool)

(assert (=> b!3603152 (=> (not res!1456515) (not e!2229689))))

(assert (=> b!3603152 (= res!1456515 (isDefined!6085 lt!1238398))))

(declare-fun b!3603153 () Bool)

(declare-fun res!1456513 () Bool)

(assert (=> b!3603153 (=> (not res!1456513) (not e!2229689))))

(assert (=> b!3603153 (= res!1456513 (= (++!9427 (list!13963 (charsOf!3625 (_1!22029 (get!12268 lt!1238398)))) (_2!22029 (get!12268 lt!1238398))) lt!1237999))))

(assert (= (and d!1061587 c!623548) b!3603146))

(assert (= (and d!1061587 (not c!623548)) b!3603149))

(assert (= (or b!3603146 b!3603149) bm!260514))

(assert (= (and d!1061587 (not res!1456518)) b!3603152))

(assert (= (and b!3603152 res!1456515) b!3603148))

(assert (= (and b!3603148 res!1456516) b!3603150))

(assert (= (and b!3603150 res!1456512) b!3603153))

(assert (= (and b!3603153 res!1456513) b!3603145))

(assert (= (and b!3603145 res!1456514) b!3603151))

(assert (= (and b!3603151 res!1456517) b!3603147))

(declare-fun m!4099571 () Bool)

(assert (=> b!3603151 m!4099571))

(declare-fun m!4099573 () Bool)

(assert (=> b!3603151 m!4099573))

(assert (=> b!3603151 m!4099573))

(declare-fun m!4099575 () Bool)

(assert (=> b!3603151 m!4099575))

(assert (=> b!3603151 m!4099575))

(declare-fun m!4099577 () Bool)

(assert (=> b!3603151 m!4099577))

(declare-fun m!4099579 () Bool)

(assert (=> b!3603152 m!4099579))

(assert (=> b!3603147 m!4099571))

(declare-fun m!4099581 () Bool)

(assert (=> b!3603147 m!4099581))

(declare-fun m!4099583 () Bool)

(assert (=> b!3603149 m!4099583))

(assert (=> b!3603153 m!4099571))

(assert (=> b!3603153 m!4099573))

(assert (=> b!3603153 m!4099573))

(assert (=> b!3603153 m!4099575))

(assert (=> b!3603153 m!4099575))

(declare-fun m!4099585 () Bool)

(assert (=> b!3603153 m!4099585))

(assert (=> b!3603148 m!4099571))

(assert (=> b!3603148 m!4099573))

(assert (=> b!3603148 m!4099573))

(assert (=> b!3603148 m!4099575))

(declare-fun m!4099587 () Bool)

(assert (=> bm!260514 m!4099587))

(declare-fun m!4099589 () Bool)

(assert (=> d!1061587 m!4099589))

(declare-fun m!4099591 () Bool)

(assert (=> d!1061587 m!4099591))

(declare-fun m!4099593 () Bool)

(assert (=> d!1061587 m!4099593))

(assert (=> d!1061587 m!4099275))

(assert (=> b!3603145 m!4099571))

(declare-fun m!4099595 () Bool)

(assert (=> b!3603145 m!4099595))

(assert (=> b!3603145 m!4099595))

(declare-fun m!4099597 () Bool)

(assert (=> b!3603145 m!4099597))

(assert (=> b!3603150 m!4099571))

(declare-fun m!4099599 () Bool)

(assert (=> b!3603150 m!4099599))

(assert (=> b!3603150 m!4099073))

(assert (=> b!3602434 d!1061587))

(declare-fun d!1061589 () Bool)

(assert (=> d!1061589 (= (list!13963 (charsOf!3625 token!511)) (list!13965 (c!623425 (charsOf!3625 token!511))))))

(declare-fun bs!570617 () Bool)

(assert (= bs!570617 d!1061589))

(declare-fun m!4099601 () Bool)

(assert (=> bs!570617 m!4099601))

(assert (=> b!3602434 d!1061589))

(declare-fun d!1061591 () Bool)

(declare-fun lt!1238401 () BalanceConc!22694)

(assert (=> d!1061591 (= (list!13963 lt!1238401) (originalCharacters!6325 token!511))))

(assert (=> d!1061591 (= lt!1238401 (dynLambda!16363 (toChars!7754 (transformation!5611 (rule!8349 token!511))) (value!180375 token!511)))))

(assert (=> d!1061591 (= (charsOf!3625 token!511) lt!1238401)))

(declare-fun b_lambda!106579 () Bool)

(assert (=> (not b_lambda!106579) (not d!1061591)))

(assert (=> d!1061591 t!292534))

(declare-fun b_and!261995 () Bool)

(assert (= b_and!261979 (and (=> t!292534 result!251422) b_and!261995)))

(assert (=> d!1061591 t!292536))

(declare-fun b_and!261997 () Bool)

(assert (= b_and!261981 (and (=> t!292536 result!251424) b_and!261997)))

(assert (=> d!1061591 t!292538))

(declare-fun b_and!261999 () Bool)

(assert (= b_and!261983 (and (=> t!292538 result!251426) b_and!261999)))

(assert (=> d!1061591 t!292540))

(declare-fun b_and!262001 () Bool)

(assert (= b_and!261985 (and (=> t!292540 result!251428) b_and!262001)))

(declare-fun m!4099603 () Bool)

(assert (=> d!1061591 m!4099603))

(assert (=> d!1061591 m!4099379))

(assert (=> b!3602434 d!1061591))

(declare-fun b!3603158 () Bool)

(declare-fun e!2229694 () Bool)

(declare-fun tp!1101898 () Bool)

(assert (=> b!3603158 (= e!2229694 (and tp_is_empty!17823 tp!1101898))))

(assert (=> b!3602422 (= tp!1101839 e!2229694)))

(assert (= (and b!3602422 (is-Cons!37896 (originalCharacters!6325 token!511))) b!3603158))

(declare-fun b!3603159 () Bool)

(declare-fun e!2229695 () Bool)

(declare-fun tp!1101899 () Bool)

(assert (=> b!3603159 (= e!2229695 (and tp_is_empty!17823 tp!1101899))))

(assert (=> b!3602420 (= tp!1101840 e!2229695)))

(assert (= (and b!3602420 (is-Cons!37896 (t!292471 suffix!1395))) b!3603159))

(declare-fun b!3603173 () Bool)

(declare-fun e!2229698 () Bool)

(declare-fun tp!1101912 () Bool)

(declare-fun tp!1101914 () Bool)

(assert (=> b!3603173 (= e!2229698 (and tp!1101912 tp!1101914))))

(declare-fun b!3603170 () Bool)

(assert (=> b!3603170 (= e!2229698 tp_is_empty!17823)))

(assert (=> b!3602437 (= tp!1101835 e!2229698)))

(declare-fun b!3603172 () Bool)

(declare-fun tp!1101910 () Bool)

(assert (=> b!3603172 (= e!2229698 tp!1101910)))

(declare-fun b!3603171 () Bool)

(declare-fun tp!1101913 () Bool)

(declare-fun tp!1101911 () Bool)

(assert (=> b!3603171 (= e!2229698 (and tp!1101913 tp!1101911))))

(assert (= (and b!3602437 (is-ElementMatch!10370 (regex!5611 rule!403))) b!3603170))

(assert (= (and b!3602437 (is-Concat!16212 (regex!5611 rule!403))) b!3603171))

(assert (= (and b!3602437 (is-Star!10370 (regex!5611 rule!403))) b!3603172))

(assert (= (and b!3602437 (is-Union!10370 (regex!5611 rule!403))) b!3603173))

(declare-fun b!3603184 () Bool)

(declare-fun b_free!93289 () Bool)

(declare-fun b_next!93993 () Bool)

(assert (=> b!3603184 (= b_free!93289 (not b_next!93993))))

(declare-fun tb!206289 () Bool)

(declare-fun t!292550 () Bool)

(assert (=> (and b!3603184 (= (toValue!7895 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292550) tb!206289))

(declare-fun result!251444 () Bool)

(assert (= result!251444 result!251396))

(assert (=> d!1061379 t!292550))

(declare-fun t!292552 () Bool)

(declare-fun tb!206291 () Bool)

(assert (=> (and b!3603184 (= (toValue!7895 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292552) tb!206291))

(declare-fun result!251446 () Bool)

(assert (= result!251446 result!251430))

(assert (=> d!1061551 t!292552))

(declare-fun t!292554 () Bool)

(declare-fun tb!206293 () Bool)

(assert (=> (and b!3603184 (= (toValue!7895 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toValue!7895 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292554) tb!206293))

(declare-fun result!251448 () Bool)

(assert (= result!251448 result!251368))

(assert (=> d!1061377 t!292554))

(assert (=> d!1061379 t!292554))

(assert (=> d!1061429 t!292554))

(declare-fun b_and!262003 () Bool)

(declare-fun tp!1101926 () Bool)

(assert (=> b!3603184 (= tp!1101926 (and (=> t!292550 result!251444) (=> t!292552 result!251446) (=> t!292554 result!251448) b_and!262003))))

(declare-fun b_free!93291 () Bool)

(declare-fun b_next!93995 () Bool)

(assert (=> b!3603184 (= b_free!93291 (not b_next!93995))))

(declare-fun t!292556 () Bool)

(declare-fun tb!206295 () Bool)

(assert (=> (and b!3603184 (= (toChars!7754 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292556) tb!206295))

(declare-fun result!251450 () Bool)

(assert (= result!251450 result!251358))

(assert (=> d!1061371 t!292556))

(declare-fun t!292558 () Bool)

(declare-fun tb!206297 () Bool)

(assert (=> (and b!3603184 (= (toChars!7754 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toChars!7754 (transformation!5611 (rule!8349 (_1!22029 lt!1237996))))) t!292558) tb!206297))

(declare-fun result!251452 () Bool)

(assert (= result!251452 result!251404))

(assert (=> d!1061429 t!292558))

(declare-fun tb!206299 () Bool)

(declare-fun t!292560 () Bool)

(assert (=> (and b!3603184 (= (toChars!7754 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toChars!7754 (transformation!5611 (rule!8349 token!511)))) t!292560) tb!206299))

(declare-fun result!251454 () Bool)

(assert (= result!251454 result!251422))

(assert (=> b!3602955 t!292560))

(assert (=> d!1061591 t!292560))

(declare-fun b_and!262005 () Bool)

(declare-fun tp!1101924 () Bool)

(assert (=> b!3603184 (= tp!1101924 (and (=> t!292556 result!251450) (=> t!292558 result!251452) (=> t!292560 result!251454) b_and!262005))))

(declare-fun e!2229708 () Bool)

(assert (=> b!3603184 (= e!2229708 (and tp!1101926 tp!1101924))))

(declare-fun tp!1101923 () Bool)

(declare-fun e!2229710 () Bool)

(declare-fun b!3603183 () Bool)

(assert (=> b!3603183 (= e!2229710 (and tp!1101923 (inv!51254 (tag!6305 (h!43318 (t!292473 rules!3307)))) (inv!51257 (transformation!5611 (h!43318 (t!292473 rules!3307)))) e!2229708))))

(declare-fun b!3603182 () Bool)

(declare-fun e!2229707 () Bool)

(declare-fun tp!1101925 () Bool)

(assert (=> b!3603182 (= e!2229707 (and e!2229710 tp!1101925))))

(assert (=> b!3602421 (= tp!1101841 e!2229707)))

(assert (= b!3603183 b!3603184))

(assert (= b!3603182 b!3603183))

(assert (= (and b!3602421 (is-Cons!37898 (t!292473 rules!3307))) b!3603182))

(declare-fun m!4099605 () Bool)

(assert (=> b!3603183 m!4099605))

(declare-fun m!4099607 () Bool)

(assert (=> b!3603183 m!4099607))

(declare-fun b!3603188 () Bool)

(declare-fun e!2229711 () Bool)

(declare-fun tp!1101929 () Bool)

(declare-fun tp!1101931 () Bool)

(assert (=> b!3603188 (= e!2229711 (and tp!1101929 tp!1101931))))

(declare-fun b!3603185 () Bool)

(assert (=> b!3603185 (= e!2229711 tp_is_empty!17823)))

(assert (=> b!3602430 (= tp!1101836 e!2229711)))

(declare-fun b!3603187 () Bool)

(declare-fun tp!1101927 () Bool)

(assert (=> b!3603187 (= e!2229711 tp!1101927)))

(declare-fun b!3603186 () Bool)

(declare-fun tp!1101930 () Bool)

(declare-fun tp!1101928 () Bool)

(assert (=> b!3603186 (= e!2229711 (and tp!1101930 tp!1101928))))

(assert (= (and b!3602430 (is-ElementMatch!10370 (regex!5611 (rule!8349 token!511)))) b!3603185))

(assert (= (and b!3602430 (is-Concat!16212 (regex!5611 (rule!8349 token!511)))) b!3603186))

(assert (= (and b!3602430 (is-Star!10370 (regex!5611 (rule!8349 token!511)))) b!3603187))

(assert (= (and b!3602430 (is-Union!10370 (regex!5611 (rule!8349 token!511)))) b!3603188))

(declare-fun b!3603192 () Bool)

(declare-fun e!2229712 () Bool)

(declare-fun tp!1101934 () Bool)

(declare-fun tp!1101936 () Bool)

(assert (=> b!3603192 (= e!2229712 (and tp!1101934 tp!1101936))))

(declare-fun b!3603189 () Bool)

(assert (=> b!3603189 (= e!2229712 tp_is_empty!17823)))

(assert (=> b!3602444 (= tp!1101832 e!2229712)))

(declare-fun b!3603191 () Bool)

(declare-fun tp!1101932 () Bool)

(assert (=> b!3603191 (= e!2229712 tp!1101932)))

(declare-fun b!3603190 () Bool)

(declare-fun tp!1101935 () Bool)

(declare-fun tp!1101933 () Bool)

(assert (=> b!3603190 (= e!2229712 (and tp!1101935 tp!1101933))))

(assert (= (and b!3602444 (is-ElementMatch!10370 (regex!5611 anOtherTypeRule!33))) b!3603189))

(assert (= (and b!3602444 (is-Concat!16212 (regex!5611 anOtherTypeRule!33))) b!3603190))

(assert (= (and b!3602444 (is-Star!10370 (regex!5611 anOtherTypeRule!33))) b!3603191))

(assert (= (and b!3602444 (is-Union!10370 (regex!5611 anOtherTypeRule!33))) b!3603192))

(declare-fun b!3603196 () Bool)

(declare-fun e!2229713 () Bool)

(declare-fun tp!1101939 () Bool)

(declare-fun tp!1101941 () Bool)

(assert (=> b!3603196 (= e!2229713 (and tp!1101939 tp!1101941))))

(declare-fun b!3603193 () Bool)

(assert (=> b!3603193 (= e!2229713 tp_is_empty!17823)))

(assert (=> b!3602428 (= tp!1101837 e!2229713)))

(declare-fun b!3603195 () Bool)

(declare-fun tp!1101937 () Bool)

(assert (=> b!3603195 (= e!2229713 tp!1101937)))

(declare-fun b!3603194 () Bool)

(declare-fun tp!1101940 () Bool)

(declare-fun tp!1101938 () Bool)

(assert (=> b!3603194 (= e!2229713 (and tp!1101940 tp!1101938))))

(assert (= (and b!3602428 (is-ElementMatch!10370 (regex!5611 (h!43318 rules!3307)))) b!3603193))

(assert (= (and b!3602428 (is-Concat!16212 (regex!5611 (h!43318 rules!3307)))) b!3603194))

(assert (= (and b!3602428 (is-Star!10370 (regex!5611 (h!43318 rules!3307)))) b!3603195))

(assert (= (and b!3602428 (is-Union!10370 (regex!5611 (h!43318 rules!3307)))) b!3603196))

(declare-fun b_lambda!106581 () Bool)

(assert (= b_lambda!106575 (or (and b!3602414 b_free!93271) (and b!3602412 b_free!93259 (= (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) (and b!3602427 b_free!93267 (= (toChars!7754 (transformation!5611 rule!403)) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) (and b!3602440 b_free!93263 (= (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) (and b!3603184 b_free!93291 (= (toChars!7754 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) b_lambda!106581)))

(declare-fun b_lambda!106583 () Bool)

(assert (= b_lambda!106579 (or (and b!3602414 b_free!93271) (and b!3602412 b_free!93259 (= (toChars!7754 (transformation!5611 anOtherTypeRule!33)) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) (and b!3602427 b_free!93267 (= (toChars!7754 (transformation!5611 rule!403)) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) (and b!3602440 b_free!93263 (= (toChars!7754 (transformation!5611 (h!43318 rules!3307))) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) (and b!3603184 b_free!93291 (= (toChars!7754 (transformation!5611 (h!43318 (t!292473 rules!3307)))) (toChars!7754 (transformation!5611 (rule!8349 token!511))))) b_lambda!106583)))

(push 1)

(assert (not b!3602814))

(assert (not bm!260494))

(assert (not d!1061465))

(assert (not b!3603186))

(assert (not b_lambda!106555))

(assert (not b!3603133))

(assert (not d!1061471))

(assert (not b_lambda!106577))

(assert (not b!3603127))

(assert (not b!3603105))

(assert (not bm!260509))

(assert (not d!1061497))

(assert (not b!3603150))

(assert b_and!261993)

(assert (not d!1061591))

(assert (not d!1061583))

(assert (not b!3603188))

(assert (not b!3602877))

(assert (not bm!260472))

(assert (not b!3602881))

(assert (not b!3603058))

(assert (not b!3602796))

(assert (not b!3603153))

(assert (not b!3603102))

(assert (not b!3603130))

(assert (not bm!260514))

(assert (not b!3602558))

(assert (not d!1061429))

(assert (not b!3602855))

(assert tp_is_empty!17823)

(assert (not b!3603100))

(assert (not b!3602879))

(assert (not b!3603194))

(assert b_and!261997)

(assert (not b_lambda!106581))

(assert (not b!3602598))

(assert (not b!3603121))

(assert (not b!3602955))

(assert (not b!3603131))

(assert (not bm!260484))

(assert (not b!3602944))

(assert (not d!1061537))

(assert (not b!3602849))

(assert (not tb!206217))

(assert (not b!3602605))

(assert (not b!3602963))

(assert (not b!3603107))

(assert (not d!1061467))

(assert (not d!1061587))

(assert (not b!3602977))

(assert (not b!3603145))

(assert (not b!3602850))

(assert (not b!3602878))

(assert (not b!3602907))

(assert (not d!1061589))

(assert (not b!3603182))

(assert (not b_next!93993))

(assert (not b!3602957))

(assert (not b!3602782))

(assert (not d!1061571))

(assert (not b_next!93995))

(assert (not b!3603190))

(assert (not d!1061553))

(assert (not b_lambda!106557))

(assert b_and!261999)

(assert (not d!1061559))

(assert b_and!262001)

(assert (not tb!206273))

(assert b_and!262003)

(assert (not b!3602943))

(assert (not b!3603081))

(assert (not b!3603195))

(assert (not b_next!93969))

(assert (not b!3603151))

(assert (not d!1061481))

(assert (not d!1061475))

(assert (not b!3602935))

(assert (not bm!260512))

(assert (not b_next!93973))

(assert (not d!1061493))

(assert (not d!1061463))

(assert (not b!3603120))

(assert (not b!3602883))

(assert (not b!3602599))

(assert (not b!3602882))

(assert (not b!3603159))

(assert (not b_lambda!106583))

(assert (not b!3602590))

(assert (not b!3602906))

(assert (not bm!260511))

(assert (not d!1061499))

(assert (not d!1061509))

(assert (not d!1061451))

(assert (not b!3602970))

(assert (not d!1061469))

(assert (not b!3602557))

(assert (not b!3602950))

(assert (not d!1061489))

(assert (not b!3602815))

(assert (not b_next!93975))

(assert (not b_lambda!106569))

(assert (not b!3603148))

(assert (not d!1061503))

(assert (not b_lambda!106571))

(assert (not d!1061375))

(assert (not b!3602797))

(assert (not b!3603021))

(assert (not d!1061447))

(assert (not b!3603149))

(assert (not b!3603158))

(assert (not b!3602981))

(assert (not d!1061425))

(assert (not b_next!93967))

(assert b_and!261991)

(assert (not d!1061369))

(assert (not d!1061539))

(assert (not b!3603051))

(assert (not b!3603115))

(assert (not d!1061367))

(assert (not b_lambda!106565))

(assert (not b!3602969))

(assert b_and!261987)

(assert (not bm!260510))

(assert (not b!3603106))

(assert (not b_next!93961))

(assert (not b!3602979))

(assert (not b!3602819))

(assert (not b!3603114))

(assert (not b!3602596))

(assert (not d!1061585))

(assert (not b!3603152))

(assert (not b!3603112))

(assert (not d!1061575))

(assert (not b!3602964))

(assert (not d!1061565))

(assert (not d!1061379))

(assert (not b!3603118))

(assert (not b!3603144))

(assert (not d!1061563))

(assert (not b_next!93971))

(assert (not b!3603196))

(assert (not b!3602949))

(assert (not b!3603172))

(assert (not b_next!93963))

(assert (not d!1061567))

(assert b_and!262005)

(assert (not d!1061577))

(assert (not b!3603171))

(assert (not tb!206225))

(assert (not d!1061549))

(assert (not b_next!93965))

(assert (not b!3603101))

(assert (not b!3602875))

(assert (not b!3602593))

(assert (not b!3602961))

(assert (not b!3602942))

(assert (not b!3603192))

(assert (not b!3603187))

(assert b_and!261995)

(assert (not d!1061511))

(assert (not b!3602818))

(assert b_and!261989)

(assert (not bm!260483))

(assert (not b!3602816))

(assert (not b!3603048))

(assert (not b!3602592))

(assert (not b!3603103))

(assert (not d!1061557))

(assert (not b!3603108))

(assert (not b!3602933))

(assert (not b!3603191))

(assert (not b!3602854))

(assert (not tb!206257))

(assert (not d!1061427))

(assert (not d!1061371))

(assert (not b!3602851))

(assert (not bm!260495))

(assert (not b!3603147))

(assert (not b!3602932))

(assert (not tb!206281))

(assert (not d!1061495))

(assert (not b!3602880))

(assert (not b_lambda!106567))

(assert (not b!3602967))

(assert (not tb!206249))

(assert (not b!3603074))

(assert (not d!1061527))

(assert (not d!1061437))

(assert (not b!3603183))

(assert (not b!3602956))

(assert (not b!3602820))

(assert (not b!3603173))

(assert (not bm!260493))

(assert (not b!3603052))

(check-sat)

(pop 1)

(push 1)

(assert b_and!261993)

(assert b_and!261997)

(assert (not b_next!93993))

(assert (not b_next!93973))

(assert (not b_next!93975))

(assert b_and!262005)

(assert (not b_next!93965))

(assert b_and!261995)

(assert b_and!261989)

(assert (not b_next!93995))

(assert b_and!262001)

(assert b_and!261999)

(assert b_and!262003)

(assert (not b_next!93969))

(assert (not b_next!93967))

(assert b_and!261991)

(assert b_and!261987)

(assert (not b_next!93961))

(assert (not b_next!93971))

(assert (not b_next!93963))

(check-sat)

(pop 1)

