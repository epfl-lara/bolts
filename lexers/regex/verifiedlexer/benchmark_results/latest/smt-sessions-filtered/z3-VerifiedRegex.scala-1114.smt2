; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58144 () Bool)

(assert start!58144)

(declare-fun b!608469 () Bool)

(declare-fun b_free!17325 () Bool)

(declare-fun b_next!17341 () Bool)

(assert (=> b!608469 (= b_free!17325 (not b_next!17341))))

(declare-fun tp!188729 () Bool)

(declare-fun b_and!60239 () Bool)

(assert (=> b!608469 (= tp!188729 b_and!60239)))

(declare-fun b_free!17327 () Bool)

(declare-fun b_next!17343 () Bool)

(assert (=> b!608469 (= b_free!17327 (not b_next!17343))))

(declare-fun tp!188728 () Bool)

(declare-fun b_and!60241 () Bool)

(assert (=> b!608469 (= tp!188728 b_and!60241)))

(declare-fun b!608478 () Bool)

(declare-fun b_free!17329 () Bool)

(declare-fun b_next!17345 () Bool)

(assert (=> b!608478 (= b_free!17329 (not b_next!17345))))

(declare-fun tp!188723 () Bool)

(declare-fun b_and!60243 () Bool)

(assert (=> b!608478 (= tp!188723 b_and!60243)))

(declare-fun b_free!17331 () Bool)

(declare-fun b_next!17347 () Bool)

(assert (=> b!608478 (= b_free!17331 (not b_next!17347))))

(declare-fun tp!188727 () Bool)

(declare-fun b_and!60245 () Bool)

(assert (=> b!608478 (= tp!188727 b_and!60245)))

(declare-fun b!608447 () Bool)

(declare-fun res!263896 () Bool)

(declare-fun e!368760 () Bool)

(assert (=> b!608447 (=> res!263896 e!368760)))

(declare-datatypes ((C!4020 0))(
  ( (C!4021 (val!2236 Int)) )
))
(declare-datatypes ((Regex!1549 0))(
  ( (ElementMatch!1549 (c!112661 C!4020)) (Concat!2788 (regOne!3610 Regex!1549) (regTwo!3610 Regex!1549)) (EmptyExpr!1549) (Star!1549 (reg!1878 Regex!1549)) (EmptyLang!1549) (Union!1549 (regOne!3611 Regex!1549) (regTwo!3611 Regex!1549)) )
))
(declare-datatypes ((List!6089 0))(
  ( (Nil!6079) (Cons!6079 (h!11480 (_ BitVec 16)) (t!80726 List!6089)) )
))
(declare-datatypes ((TokenValue!1239 0))(
  ( (FloatLiteralValue!2478 (text!9118 List!6089)) (TokenValueExt!1238 (__x!4376 Int)) (Broken!6195 (value!39468 List!6089)) (Object!1248) (End!1239) (Def!1239) (Underscore!1239) (Match!1239) (Else!1239) (Error!1239) (Case!1239) (If!1239) (Extends!1239) (Abstract!1239) (Class!1239) (Val!1239) (DelimiterValue!2478 (del!1299 List!6089)) (KeywordValue!1245 (value!39469 List!6089)) (CommentValue!2478 (value!39470 List!6089)) (WhitespaceValue!2478 (value!39471 List!6089)) (IndentationValue!1239 (value!39472 List!6089)) (String!7938) (Int32!1239) (Broken!6196 (value!39473 List!6089)) (Boolean!1240) (Unit!11105) (OperatorValue!1242 (op!1299 List!6089)) (IdentifierValue!2478 (value!39474 List!6089)) (IdentifierValue!2479 (value!39475 List!6089)) (WhitespaceValue!2479 (value!39476 List!6089)) (True!2478) (False!2478) (Broken!6197 (value!39477 List!6089)) (Broken!6198 (value!39478 List!6089)) (True!2479) (RightBrace!1239) (RightBracket!1239) (Colon!1239) (Null!1239) (Comma!1239) (LeftBracket!1239) (False!2479) (LeftBrace!1239) (ImaginaryLiteralValue!1239 (text!9119 List!6089)) (StringLiteralValue!3717 (value!39479 List!6089)) (EOFValue!1239 (value!39480 List!6089)) (IdentValue!1239 (value!39481 List!6089)) (DelimiterValue!2479 (value!39482 List!6089)) (DedentValue!1239 (value!39483 List!6089)) (NewLineValue!1239 (value!39484 List!6089)) (IntegerValue!3717 (value!39485 (_ BitVec 32)) (text!9120 List!6089)) (IntegerValue!3718 (value!39486 Int) (text!9121 List!6089)) (Times!1239) (Or!1239) (Equal!1239) (Minus!1239) (Broken!6199 (value!39487 List!6089)) (And!1239) (Div!1239) (LessEqual!1239) (Mod!1239) (Concat!2789) (Not!1239) (Plus!1239) (SpaceValue!1239 (value!39488 List!6089)) (IntegerValue!3719 (value!39489 Int) (text!9122 List!6089)) (StringLiteralValue!3718 (text!9123 List!6089)) (FloatLiteralValue!2479 (text!9124 List!6089)) (BytesLiteralValue!1239 (value!39490 List!6089)) (CommentValue!2479 (value!39491 List!6089)) (StringLiteralValue!3719 (value!39492 List!6089)) (ErrorTokenValue!1239 (msg!1300 List!6089)) )
))
(declare-datatypes ((String!7939 0))(
  ( (String!7940 (value!39493 String)) )
))
(declare-datatypes ((List!6090 0))(
  ( (Nil!6080) (Cons!6080 (h!11481 C!4020) (t!80727 List!6090)) )
))
(declare-datatypes ((IArray!3865 0))(
  ( (IArray!3866 (innerList!1990 List!6090)) )
))
(declare-datatypes ((Conc!1932 0))(
  ( (Node!1932 (left!4872 Conc!1932) (right!5202 Conc!1932) (csize!4094 Int) (cheight!2143 Int)) (Leaf!3047 (xs!4569 IArray!3865) (csize!4095 Int)) (Empty!1932) )
))
(declare-datatypes ((BalanceConc!3872 0))(
  ( (BalanceConc!3873 (c!112662 Conc!1932)) )
))
(declare-datatypes ((TokenValueInjection!2246 0))(
  ( (TokenValueInjection!2247 (toValue!2122 Int) (toChars!1981 Int)) )
))
(declare-datatypes ((Rule!2230 0))(
  ( (Rule!2231 (regex!1215 Regex!1549) (tag!1477 String!7939) (isSeparator!1215 Bool) (transformation!1215 TokenValueInjection!2246)) )
))
(declare-datatypes ((Token!2166 0))(
  ( (Token!2167 (value!39494 TokenValue!1239) (rule!2001 Rule!2230) (size!4783 Int) (originalCharacters!1254 List!6090)) )
))
(declare-fun token!491 () Token!2166)

(declare-fun input!2705 () List!6090)

(declare-fun matchR!652 (Regex!1549 List!6090) Bool)

(assert (=> b!608447 (= res!263896 (not (matchR!652 (regex!1215 (rule!2001 token!491)) input!2705)))))

(declare-fun b!608448 () Bool)

(declare-datatypes ((Unit!11106 0))(
  ( (Unit!11107) )
))
(declare-fun e!368744 () Unit!11106)

(declare-fun Unit!11108 () Unit!11106)

(assert (=> b!608448 (= e!368744 Unit!11108)))

(declare-fun b!608449 () Bool)

(declare-fun e!368749 () Bool)

(declare-fun e!368751 () Bool)

(assert (=> b!608449 (= e!368749 e!368751)))

(declare-fun res!263897 () Bool)

(assert (=> b!608449 (=> (not res!263897) (not e!368751))))

(declare-fun lt!259989 () List!6090)

(assert (=> b!608449 (= res!263897 (= lt!259989 input!2705))))

(declare-fun list!2558 (BalanceConc!3872) List!6090)

(declare-fun charsOf!844 (Token!2166) BalanceConc!3872)

(assert (=> b!608449 (= lt!259989 (list!2558 (charsOf!844 token!491)))))

(declare-fun res!263918 () Bool)

(assert (=> start!58144 (=> (not res!263918) (not e!368749))))

(declare-datatypes ((LexerInterface!1101 0))(
  ( (LexerInterfaceExt!1098 (__x!4377 Int)) (Lexer!1099) )
))
(declare-fun thiss!22590 () LexerInterface!1101)

(get-info :version)

(assert (=> start!58144 (= res!263918 ((_ is Lexer!1099) thiss!22590))))

(assert (=> start!58144 e!368749))

(declare-fun e!368753 () Bool)

(assert (=> start!58144 e!368753))

(declare-fun e!368754 () Bool)

(assert (=> start!58144 e!368754))

(declare-fun e!368764 () Bool)

(declare-fun inv!7735 (Token!2166) Bool)

(assert (=> start!58144 (and (inv!7735 token!491) e!368764)))

(assert (=> start!58144 true))

(declare-fun e!368765 () Bool)

(assert (=> start!58144 e!368765))

(declare-fun b!608450 () Bool)

(declare-fun res!263911 () Bool)

(assert (=> b!608450 (=> res!263911 e!368760)))

(declare-fun lt!259975 () List!6090)

(declare-fun isPrefix!843 (List!6090 List!6090) Bool)

(assert (=> b!608450 (= res!263911 (not (isPrefix!843 lt!259975 input!2705)))))

(declare-fun b!608451 () Bool)

(declare-fun e!368768 () Bool)

(declare-fun e!368766 () Bool)

(assert (=> b!608451 (= e!368768 e!368766)))

(declare-fun res!263898 () Bool)

(assert (=> b!608451 (=> (not res!263898) (not e!368766))))

(declare-datatypes ((tuple2!6954 0))(
  ( (tuple2!6955 (_1!3741 Token!2166) (_2!3741 List!6090)) )
))
(declare-fun lt!259978 () tuple2!6954)

(declare-fun suffix!1342 () List!6090)

(assert (=> b!608451 (= res!263898 (and (= (_1!3741 lt!259978) token!491) (= (_2!3741 lt!259978) suffix!1342)))))

(declare-datatypes ((Option!1566 0))(
  ( (None!1565) (Some!1565 (v!16470 tuple2!6954)) )
))
(declare-fun lt!260004 () Option!1566)

(declare-fun get!2337 (Option!1566) tuple2!6954)

(assert (=> b!608451 (= lt!259978 (get!2337 lt!260004))))

(declare-fun b!608452 () Bool)

(declare-fun e!368761 () Bool)

(declare-fun tp!188724 () Bool)

(assert (=> b!608452 (= e!368754 (and e!368761 tp!188724))))

(declare-fun b!608453 () Bool)

(declare-fun e!368762 () Bool)

(declare-fun lt!260001 () Option!1566)

(assert (=> b!608453 (= e!368762 (= (_1!3741 (get!2337 lt!260001)) (_1!3741 (v!16470 lt!260001))))))

(declare-fun b!608454 () Bool)

(declare-fun res!263906 () Bool)

(assert (=> b!608454 (=> (not res!263906) (not e!368749))))

(declare-datatypes ((List!6091 0))(
  ( (Nil!6081) (Cons!6081 (h!11482 Rule!2230) (t!80728 List!6091)) )
))
(declare-fun rules!3103 () List!6091)

(declare-fun isEmpty!4389 (List!6091) Bool)

(assert (=> b!608454 (= res!263906 (not (isEmpty!4389 rules!3103)))))

(declare-fun b!608455 () Bool)

(declare-fun tp_is_empty!3453 () Bool)

(declare-fun tp!188730 () Bool)

(assert (=> b!608455 (= e!368765 (and tp_is_empty!3453 tp!188730))))

(declare-fun b!608456 () Bool)

(declare-fun res!263915 () Bool)

(assert (=> b!608456 (=> (not res!263915) (not e!368749))))

(declare-fun isEmpty!4390 (List!6090) Bool)

(assert (=> b!608456 (= res!263915 (not (isEmpty!4390 input!2705)))))

(declare-fun b!608457 () Bool)

(declare-fun res!263899 () Bool)

(assert (=> b!608457 (=> res!263899 e!368760)))

(declare-fun lt!259998 () List!6090)

(declare-fun ++!1703 (List!6090 List!6090) List!6090)

(assert (=> b!608457 (= res!263899 (not (= (++!1703 lt!259975 lt!259998) input!2705)))))

(declare-fun b!608458 () Bool)

(declare-fun res!263902 () Bool)

(assert (=> b!608458 (=> res!263902 e!368760)))

(declare-fun getSuffix!360 (List!6090 List!6090) List!6090)

(assert (=> b!608458 (= res!263902 (not (= (getSuffix!360 input!2705 input!2705) Nil!6080)))))

(declare-fun b!608459 () Bool)

(declare-fun res!263921 () Bool)

(assert (=> b!608459 (=> res!263921 e!368760)))

(assert (=> b!608459 (= res!263921 (not (isPrefix!843 lt!259989 input!2705)))))

(declare-fun b!608460 () Bool)

(declare-fun e!368747 () Bool)

(declare-fun e!368757 () Bool)

(assert (=> b!608460 (= e!368747 (not e!368757))))

(declare-fun res!263920 () Bool)

(assert (=> b!608460 (=> res!263920 e!368757)))

(declare-fun lt!259994 () List!6090)

(assert (=> b!608460 (= res!263920 (not (isPrefix!843 input!2705 lt!259994)))))

(assert (=> b!608460 (isPrefix!843 lt!259989 lt!259994)))

(declare-fun lt!259999 () Unit!11106)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!688 (List!6090 List!6090) Unit!11106)

(assert (=> b!608460 (= lt!259999 (lemmaConcatTwoListThenFirstIsPrefix!688 lt!259989 suffix!1342))))

(declare-fun lt!259979 () List!6090)

(assert (=> b!608460 (isPrefix!843 input!2705 lt!259979)))

(declare-fun lt!260008 () Unit!11106)

(assert (=> b!608460 (= lt!260008 (lemmaConcatTwoListThenFirstIsPrefix!688 input!2705 suffix!1342))))

(declare-fun lt!260003 () Int)

(declare-fun lt!259977 () TokenValue!1239)

(declare-fun lt!259982 () Token!2166)

(assert (=> b!608460 (= lt!259982 (Token!2167 lt!259977 (rule!2001 (_1!3741 (v!16470 lt!260001))) lt!260003 lt!259975))))

(declare-fun e!368758 () Bool)

(assert (=> b!608460 e!368758))

(declare-fun res!263910 () Bool)

(assert (=> b!608460 (=> (not res!263910) (not e!368758))))

(assert (=> b!608460 (= res!263910 (= (value!39494 (_1!3741 (v!16470 lt!260001))) lt!259977))))

(declare-fun lt!259997 () BalanceConc!3872)

(declare-fun apply!1468 (TokenValueInjection!2246 BalanceConc!3872) TokenValue!1239)

(assert (=> b!608460 (= lt!259977 (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!259997))))

(declare-fun seqFromList!1391 (List!6090) BalanceConc!3872)

(assert (=> b!608460 (= lt!259997 (seqFromList!1391 lt!259975))))

(declare-fun lt!259991 () Unit!11106)

(declare-fun lemmaInv!323 (TokenValueInjection!2246) Unit!11106)

(assert (=> b!608460 (= lt!259991 (lemmaInv!323 (transformation!1215 (rule!2001 token!491))))))

(declare-fun lt!259992 () Unit!11106)

(assert (=> b!608460 (= lt!259992 (lemmaInv!323 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))

(declare-fun ruleValid!413 (LexerInterface!1101 Rule!2230) Bool)

(assert (=> b!608460 (ruleValid!413 thiss!22590 (rule!2001 token!491))))

(declare-fun lt!259985 () Unit!11106)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!260 (LexerInterface!1101 Rule!2230 List!6091) Unit!11106)

(assert (=> b!608460 (= lt!259985 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!260 thiss!22590 (rule!2001 token!491) rules!3103))))

(assert (=> b!608460 (ruleValid!413 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))))))

(declare-fun lt!260006 () Unit!11106)

(assert (=> b!608460 (= lt!260006 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!260 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))) rules!3103))))

(assert (=> b!608460 (isPrefix!843 input!2705 input!2705)))

(declare-fun lt!259996 () Unit!11106)

(declare-fun lemmaIsPrefixRefl!579 (List!6090 List!6090) Unit!11106)

(assert (=> b!608460 (= lt!259996 (lemmaIsPrefixRefl!579 input!2705 input!2705))))

(assert (=> b!608460 (= (_2!3741 (v!16470 lt!260001)) lt!259998)))

(declare-fun lt!260007 () Unit!11106)

(declare-fun lemmaSamePrefixThenSameSuffix!556 (List!6090 List!6090 List!6090 List!6090 List!6090) Unit!11106)

(assert (=> b!608460 (= lt!260007 (lemmaSamePrefixThenSameSuffix!556 lt!259975 (_2!3741 (v!16470 lt!260001)) lt!259975 lt!259998 input!2705))))

(assert (=> b!608460 (= lt!259998 (getSuffix!360 input!2705 lt!259975))))

(declare-fun lt!259986 () List!6090)

(assert (=> b!608460 (isPrefix!843 lt!259975 lt!259986)))

(assert (=> b!608460 (= lt!259986 (++!1703 lt!259975 (_2!3741 (v!16470 lt!260001))))))

(declare-fun lt!259981 () Unit!11106)

(assert (=> b!608460 (= lt!259981 (lemmaConcatTwoListThenFirstIsPrefix!688 lt!259975 (_2!3741 (v!16470 lt!260001))))))

(declare-fun lt!259980 () Unit!11106)

(declare-fun lemmaCharactersSize!274 (Token!2166) Unit!11106)

(assert (=> b!608460 (= lt!259980 (lemmaCharactersSize!274 token!491))))

(declare-fun lt!259983 () Unit!11106)

(assert (=> b!608460 (= lt!259983 (lemmaCharactersSize!274 (_1!3741 (v!16470 lt!260001))))))

(declare-fun lt!259976 () Unit!11106)

(assert (=> b!608460 (= lt!259976 e!368744)))

(declare-fun c!112660 () Bool)

(declare-fun lt!260005 () Int)

(assert (=> b!608460 (= c!112660 (> lt!260003 lt!260005))))

(declare-fun size!4784 (List!6090) Int)

(assert (=> b!608460 (= lt!260005 (size!4784 lt!259989))))

(assert (=> b!608460 (= lt!260003 (size!4784 lt!259975))))

(assert (=> b!608460 (= lt!259975 (list!2558 (charsOf!844 (_1!3741 (v!16470 lt!260001)))))))

(declare-fun lt!259993 () tuple2!6954)

(assert (=> b!608460 (= lt!260001 (Some!1565 lt!259993))))

(assert (=> b!608460 (= lt!259993 (tuple2!6955 (_1!3741 (v!16470 lt!260001)) (_2!3741 (v!16470 lt!260001))))))

(declare-fun lt!260002 () Unit!11106)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!288 (List!6090 List!6090 List!6090 List!6090) Unit!11106)

(assert (=> b!608460 (= lt!260002 (lemmaConcatSameAndSameSizesThenSameLists!288 lt!259989 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!608461 () Bool)

(declare-fun e!368767 () Bool)

(declare-fun e!368750 () Bool)

(assert (=> b!608461 (= e!368767 e!368750)))

(declare-fun res!263912 () Bool)

(assert (=> b!608461 (=> res!263912 e!368750)))

(assert (=> b!608461 (= res!263912 (>= lt!260003 lt!260005))))

(declare-fun b!608462 () Bool)

(declare-fun Unit!11109 () Unit!11106)

(assert (=> b!608462 (= e!368744 Unit!11109)))

(assert (=> b!608462 false))

(declare-fun b!608463 () Bool)

(assert (=> b!608463 (= e!368757 e!368760)))

(declare-fun res!263914 () Bool)

(assert (=> b!608463 (=> res!263914 e!368760)))

(assert (=> b!608463 (= res!263914 (>= lt!260003 lt!260005))))

(assert (=> b!608463 e!368767))

(declare-fun res!263903 () Bool)

(assert (=> b!608463 (=> (not res!263903) (not e!368767))))

(declare-fun lt!259987 () TokenValue!1239)

(declare-fun maxPrefixOneRule!462 (LexerInterface!1101 Rule!2230 List!6090) Option!1566)

(assert (=> b!608463 (= res!263903 (= (maxPrefixOneRule!462 thiss!22590 (rule!2001 token!491) lt!259979) (Some!1565 (tuple2!6955 (Token!2167 lt!259987 (rule!2001 token!491) lt!260005 lt!259989) suffix!1342))))))

(declare-fun lt!259990 () Unit!11106)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!168 (LexerInterface!1101 List!6091 List!6090 List!6090 List!6090 Rule!2230) Unit!11106)

(assert (=> b!608463 (= lt!259990 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!168 thiss!22590 rules!3103 lt!259989 lt!259979 suffix!1342 (rule!2001 token!491)))))

(assert (=> b!608463 (= (maxPrefixOneRule!462 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))) input!2705) (Some!1565 (tuple2!6955 lt!259982 (_2!3741 (v!16470 lt!260001)))))))

(declare-fun lt!260000 () Unit!11106)

(assert (=> b!608463 (= lt!260000 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!168 thiss!22590 rules!3103 lt!259975 input!2705 (_2!3741 (v!16470 lt!260001)) (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(declare-fun e!368745 () Bool)

(assert (=> b!608463 e!368745))

(declare-fun res!263916 () Bool)

(assert (=> b!608463 (=> (not res!263916) (not e!368745))))

(assert (=> b!608463 (= res!263916 (= (value!39494 token!491) lt!259987))))

(assert (=> b!608463 (= lt!259987 (apply!1468 (transformation!1215 (rule!2001 token!491)) (seqFromList!1391 lt!259989)))))

(declare-fun lt!259984 () List!6090)

(assert (=> b!608463 (= suffix!1342 lt!259984)))

(declare-fun lt!259995 () Unit!11106)

(assert (=> b!608463 (= lt!259995 (lemmaSamePrefixThenSameSuffix!556 lt!259989 suffix!1342 lt!259989 lt!259984 lt!259979))))

(assert (=> b!608463 (= lt!259984 (getSuffix!360 lt!259979 lt!259989))))

(declare-fun b!608464 () Bool)

(declare-fun tp!188725 () Bool)

(assert (=> b!608464 (= e!368753 (and tp_is_empty!3453 tp!188725))))

(declare-fun b!608465 () Bool)

(declare-fun e!368748 () Bool)

(declare-fun tp!188732 () Bool)

(declare-fun inv!21 (TokenValue!1239) Bool)

(assert (=> b!608465 (= e!368764 (and (inv!21 (value!39494 token!491)) e!368748 tp!188732))))

(declare-fun b!608466 () Bool)

(assert (=> b!608466 (= e!368750 e!368762)))

(declare-fun res!263907 () Bool)

(assert (=> b!608466 (=> (not res!263907) (not e!368762))))

(declare-fun isDefined!1377 (Option!1566) Bool)

(assert (=> b!608466 (= res!263907 (isDefined!1377 lt!260001))))

(declare-fun b!608467 () Bool)

(declare-fun res!263908 () Bool)

(assert (=> b!608467 (=> (not res!263908) (not e!368749))))

(declare-fun rulesInvariant!1064 (LexerInterface!1101 List!6091) Bool)

(assert (=> b!608467 (= res!263908 (rulesInvariant!1064 thiss!22590 rules!3103))))

(declare-fun b!608468 () Bool)

(assert (=> b!608468 (= e!368758 (and (= (size!4783 (_1!3741 (v!16470 lt!260001))) lt!260003) (= (originalCharacters!1254 (_1!3741 (v!16470 lt!260001))) lt!259975) (= lt!259993 (tuple2!6955 (Token!2167 lt!259977 (rule!2001 (_1!3741 (v!16470 lt!260001))) lt!260003 lt!259975) lt!259998))))))

(declare-fun e!368756 () Bool)

(assert (=> b!608469 (= e!368756 (and tp!188729 tp!188728))))

(declare-fun b!608470 () Bool)

(declare-fun res!263917 () Bool)

(declare-fun e!368755 () Bool)

(assert (=> b!608470 (=> res!263917 e!368755)))

(assert (=> b!608470 (= res!263917 (not (matchR!652 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!259975)))))

(declare-fun b!608471 () Bool)

(declare-fun res!263913 () Bool)

(assert (=> b!608471 (=> res!263913 e!368760)))

(declare-fun contains!1431 (List!6091 Rule!2230) Bool)

(assert (=> b!608471 (= res!263913 (not (contains!1431 rules!3103 (rule!2001 token!491))))))

(declare-fun b!608472 () Bool)

(declare-fun e!368746 () Bool)

(assert (=> b!608472 (= e!368746 e!368747)))

(declare-fun res!263904 () Bool)

(assert (=> b!608472 (=> (not res!263904) (not e!368747))))

(assert (=> b!608472 (= res!263904 (= lt!259994 lt!259979))))

(assert (=> b!608472 (= lt!259994 (++!1703 lt!259989 suffix!1342))))

(declare-fun b!608473 () Bool)

(declare-fun res!263922 () Bool)

(assert (=> b!608473 (=> (not res!263922) (not e!368745))))

(assert (=> b!608473 (= res!263922 (= (size!4783 token!491) (size!4784 (originalCharacters!1254 token!491))))))

(declare-fun b!608474 () Bool)

(assert (=> b!608474 (= e!368755 (inv!7735 lt!259982))))

(declare-fun lt!259988 () Unit!11106)

(declare-fun lemmaSemiInverse!245 (TokenValueInjection!2246 BalanceConc!3872) Unit!11106)

(assert (=> b!608474 (= lt!259988 (lemmaSemiInverse!245 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!259997))))

(declare-fun b!608475 () Bool)

(assert (=> b!608475 (= e!368751 e!368768)))

(declare-fun res!263905 () Bool)

(assert (=> b!608475 (=> (not res!263905) (not e!368768))))

(assert (=> b!608475 (= res!263905 (isDefined!1377 lt!260004))))

(declare-fun maxPrefix!799 (LexerInterface!1101 List!6091 List!6090) Option!1566)

(assert (=> b!608475 (= lt!260004 (maxPrefix!799 thiss!22590 rules!3103 lt!259979))))

(assert (=> b!608475 (= lt!259979 (++!1703 input!2705 suffix!1342))))

(declare-fun b!608476 () Bool)

(declare-fun res!263901 () Bool)

(assert (=> b!608476 (=> (not res!263901) (not e!368758))))

(assert (=> b!608476 (= res!263901 (= (size!4783 (_1!3741 (v!16470 lt!260001))) (size!4784 (originalCharacters!1254 (_1!3741 (v!16470 lt!260001))))))))

(declare-fun b!608477 () Bool)

(declare-fun res!263900 () Bool)

(assert (=> b!608477 (=> res!263900 e!368760)))

(assert (=> b!608477 (= res!263900 (not (= lt!259986 input!2705)))))

(declare-fun e!368759 () Bool)

(assert (=> b!608478 (= e!368759 (and tp!188723 tp!188727))))

(declare-fun b!608479 () Bool)

(assert (=> b!608479 (= e!368760 e!368755)))

(declare-fun res!263909 () Bool)

(assert (=> b!608479 (=> res!263909 e!368755)))

(assert (=> b!608479 (= res!263909 (not (contains!1431 rules!3103 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))

(assert (=> b!608479 (= lt!259998 (_2!3741 (v!16470 lt!260001)))))

(declare-fun b!608480 () Bool)

(assert (=> b!608480 (= e!368766 e!368746)))

(declare-fun res!263919 () Bool)

(assert (=> b!608480 (=> (not res!263919) (not e!368746))))

(assert (=> b!608480 (= res!263919 ((_ is Some!1565) lt!260001))))

(assert (=> b!608480 (= lt!260001 (maxPrefix!799 thiss!22590 rules!3103 input!2705))))

(declare-fun b!608481 () Bool)

(declare-fun tp!188726 () Bool)

(declare-fun inv!7732 (String!7939) Bool)

(declare-fun inv!7736 (TokenValueInjection!2246) Bool)

(assert (=> b!608481 (= e!368748 (and tp!188726 (inv!7732 (tag!1477 (rule!2001 token!491))) (inv!7736 (transformation!1215 (rule!2001 token!491))) e!368756))))

(declare-fun b!608482 () Bool)

(assert (=> b!608482 (= e!368745 (and (= (size!4783 token!491) lt!260005) (= (originalCharacters!1254 token!491) lt!259989) (= (tuple2!6955 token!491 suffix!1342) (tuple2!6955 (Token!2167 lt!259987 (rule!2001 token!491) lt!260005 lt!259989) lt!259984))))))

(declare-fun b!608483 () Bool)

(declare-fun tp!188731 () Bool)

(assert (=> b!608483 (= e!368761 (and tp!188731 (inv!7732 (tag!1477 (h!11482 rules!3103))) (inv!7736 (transformation!1215 (h!11482 rules!3103))) e!368759))))

(assert (= (and start!58144 res!263918) b!608454))

(assert (= (and b!608454 res!263906) b!608467))

(assert (= (and b!608467 res!263908) b!608456))

(assert (= (and b!608456 res!263915) b!608449))

(assert (= (and b!608449 res!263897) b!608475))

(assert (= (and b!608475 res!263905) b!608451))

(assert (= (and b!608451 res!263898) b!608480))

(assert (= (and b!608480 res!263919) b!608472))

(assert (= (and b!608472 res!263904) b!608460))

(assert (= (and b!608460 c!112660) b!608462))

(assert (= (and b!608460 (not c!112660)) b!608448))

(assert (= (and b!608460 res!263910) b!608476))

(assert (= (and b!608476 res!263901) b!608468))

(assert (= (and b!608460 (not res!263920)) b!608463))

(assert (= (and b!608463 res!263916) b!608473))

(assert (= (and b!608473 res!263922) b!608482))

(assert (= (and b!608463 res!263903) b!608461))

(assert (= (and b!608461 (not res!263912)) b!608466))

(assert (= (and b!608466 res!263907) b!608453))

(assert (= (and b!608463 (not res!263914)) b!608471))

(assert (= (and b!608471 (not res!263913)) b!608447))

(assert (= (and b!608447 (not res!263896)) b!608459))

(assert (= (and b!608459 (not res!263921)) b!608458))

(assert (= (and b!608458 (not res!263902)) b!608477))

(assert (= (and b!608477 (not res!263900)) b!608450))

(assert (= (and b!608450 (not res!263911)) b!608457))

(assert (= (and b!608457 (not res!263899)) b!608479))

(assert (= (and b!608479 (not res!263909)) b!608470))

(assert (= (and b!608470 (not res!263917)) b!608474))

(assert (= (and start!58144 ((_ is Cons!6080) suffix!1342)) b!608464))

(assert (= b!608483 b!608478))

(assert (= b!608452 b!608483))

(assert (= (and start!58144 ((_ is Cons!6081) rules!3103)) b!608452))

(assert (= b!608481 b!608469))

(assert (= b!608465 b!608481))

(assert (= start!58144 b!608465))

(assert (= (and start!58144 ((_ is Cons!6080) input!2705)) b!608455))

(declare-fun m!875589 () Bool)

(assert (=> b!608453 m!875589))

(declare-fun m!875591 () Bool)

(assert (=> b!608465 m!875591))

(declare-fun m!875593 () Bool)

(assert (=> b!608451 m!875593))

(declare-fun m!875595 () Bool)

(assert (=> b!608458 m!875595))

(declare-fun m!875597 () Bool)

(assert (=> b!608454 m!875597))

(declare-fun m!875599 () Bool)

(assert (=> b!608456 m!875599))

(declare-fun m!875601 () Bool)

(assert (=> b!608473 m!875601))

(declare-fun m!875603 () Bool)

(assert (=> b!608459 m!875603))

(declare-fun m!875605 () Bool)

(assert (=> start!58144 m!875605))

(declare-fun m!875607 () Bool)

(assert (=> b!608479 m!875607))

(declare-fun m!875609 () Bool)

(assert (=> b!608474 m!875609))

(declare-fun m!875611 () Bool)

(assert (=> b!608474 m!875611))

(declare-fun m!875613 () Bool)

(assert (=> b!608475 m!875613))

(declare-fun m!875615 () Bool)

(assert (=> b!608475 m!875615))

(declare-fun m!875617 () Bool)

(assert (=> b!608475 m!875617))

(declare-fun m!875619 () Bool)

(assert (=> b!608471 m!875619))

(declare-fun m!875621 () Bool)

(assert (=> b!608463 m!875621))

(declare-fun m!875623 () Bool)

(assert (=> b!608463 m!875623))

(declare-fun m!875625 () Bool)

(assert (=> b!608463 m!875625))

(declare-fun m!875627 () Bool)

(assert (=> b!608463 m!875627))

(declare-fun m!875629 () Bool)

(assert (=> b!608463 m!875629))

(declare-fun m!875631 () Bool)

(assert (=> b!608463 m!875631))

(declare-fun m!875633 () Bool)

(assert (=> b!608463 m!875633))

(declare-fun m!875635 () Bool)

(assert (=> b!608463 m!875635))

(assert (=> b!608463 m!875631))

(declare-fun m!875637 () Bool)

(assert (=> b!608450 m!875637))

(declare-fun m!875639 () Bool)

(assert (=> b!608460 m!875639))

(declare-fun m!875641 () Bool)

(assert (=> b!608460 m!875641))

(declare-fun m!875643 () Bool)

(assert (=> b!608460 m!875643))

(declare-fun m!875645 () Bool)

(assert (=> b!608460 m!875645))

(declare-fun m!875647 () Bool)

(assert (=> b!608460 m!875647))

(declare-fun m!875649 () Bool)

(assert (=> b!608460 m!875649))

(declare-fun m!875651 () Bool)

(assert (=> b!608460 m!875651))

(declare-fun m!875653 () Bool)

(assert (=> b!608460 m!875653))

(declare-fun m!875655 () Bool)

(assert (=> b!608460 m!875655))

(declare-fun m!875657 () Bool)

(assert (=> b!608460 m!875657))

(declare-fun m!875659 () Bool)

(assert (=> b!608460 m!875659))

(declare-fun m!875661 () Bool)

(assert (=> b!608460 m!875661))

(declare-fun m!875663 () Bool)

(assert (=> b!608460 m!875663))

(declare-fun m!875665 () Bool)

(assert (=> b!608460 m!875665))

(declare-fun m!875667 () Bool)

(assert (=> b!608460 m!875667))

(declare-fun m!875669 () Bool)

(assert (=> b!608460 m!875669))

(declare-fun m!875671 () Bool)

(assert (=> b!608460 m!875671))

(declare-fun m!875673 () Bool)

(assert (=> b!608460 m!875673))

(declare-fun m!875675 () Bool)

(assert (=> b!608460 m!875675))

(declare-fun m!875677 () Bool)

(assert (=> b!608460 m!875677))

(declare-fun m!875679 () Bool)

(assert (=> b!608460 m!875679))

(declare-fun m!875681 () Bool)

(assert (=> b!608460 m!875681))

(declare-fun m!875683 () Bool)

(assert (=> b!608460 m!875683))

(declare-fun m!875685 () Bool)

(assert (=> b!608460 m!875685))

(declare-fun m!875687 () Bool)

(assert (=> b!608460 m!875687))

(declare-fun m!875689 () Bool)

(assert (=> b!608460 m!875689))

(assert (=> b!608460 m!875677))

(declare-fun m!875691 () Bool)

(assert (=> b!608460 m!875691))

(declare-fun m!875693 () Bool)

(assert (=> b!608449 m!875693))

(assert (=> b!608449 m!875693))

(declare-fun m!875695 () Bool)

(assert (=> b!608449 m!875695))

(declare-fun m!875697 () Bool)

(assert (=> b!608481 m!875697))

(declare-fun m!875699 () Bool)

(assert (=> b!608481 m!875699))

(declare-fun m!875701 () Bool)

(assert (=> b!608483 m!875701))

(declare-fun m!875703 () Bool)

(assert (=> b!608483 m!875703))

(declare-fun m!875705 () Bool)

(assert (=> b!608480 m!875705))

(declare-fun m!875707 () Bool)

(assert (=> b!608472 m!875707))

(declare-fun m!875709 () Bool)

(assert (=> b!608467 m!875709))

(declare-fun m!875711 () Bool)

(assert (=> b!608447 m!875711))

(declare-fun m!875713 () Bool)

(assert (=> b!608457 m!875713))

(declare-fun m!875715 () Bool)

(assert (=> b!608476 m!875715))

(declare-fun m!875717 () Bool)

(assert (=> b!608466 m!875717))

(declare-fun m!875719 () Bool)

(assert (=> b!608470 m!875719))

(check-sat (not b!608473) (not b!608455) (not b!608467) b_and!60243 (not b!608454) (not b!608480) (not b!608464) (not b!608458) (not b!608449) (not b!608466) (not b_next!17345) (not b!608474) (not b!608459) (not start!58144) (not b!608453) (not b!608456) (not b!608452) (not b!608471) (not b!608451) (not b!608450) (not b!608479) (not b!608472) b_and!60245 (not b!608447) (not b_next!17341) (not b!608481) (not b!608457) (not b_next!17343) (not b!608465) tp_is_empty!3453 (not b!608470) (not b!608475) (not b_next!17347) b_and!60239 b_and!60241 (not b!608463) (not b!608476) (not b!608460) (not b!608483))
(check-sat (not b_next!17345) (not b_next!17343) b_and!60243 (not b_next!17347) b_and!60245 (not b_next!17341) b_and!60239 b_and!60241)
(get-model)

(declare-fun d!214453 () Bool)

(assert (=> d!214453 (= (get!2337 lt!260004) (v!16470 lt!260004))))

(assert (=> b!608451 d!214453))

(declare-fun b!608519 () Bool)

(declare-fun e!368792 () List!6090)

(assert (=> b!608519 (= e!368792 (Cons!6080 (h!11481 lt!259989) (++!1703 (t!80727 lt!259989) suffix!1342)))))

(declare-fun b!608520 () Bool)

(declare-fun res!263950 () Bool)

(declare-fun e!368793 () Bool)

(assert (=> b!608520 (=> (not res!263950) (not e!368793))))

(declare-fun lt!260023 () List!6090)

(assert (=> b!608520 (= res!263950 (= (size!4784 lt!260023) (+ (size!4784 lt!259989) (size!4784 suffix!1342))))))

(declare-fun b!608521 () Bool)

(assert (=> b!608521 (= e!368793 (or (not (= suffix!1342 Nil!6080)) (= lt!260023 lt!259989)))))

(declare-fun b!608518 () Bool)

(assert (=> b!608518 (= e!368792 suffix!1342)))

(declare-fun d!214455 () Bool)

(assert (=> d!214455 e!368793))

(declare-fun res!263951 () Bool)

(assert (=> d!214455 (=> (not res!263951) (not e!368793))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1107 (List!6090) (InoxSet C!4020))

(assert (=> d!214455 (= res!263951 (= (content!1107 lt!260023) ((_ map or) (content!1107 lt!259989) (content!1107 suffix!1342))))))

(assert (=> d!214455 (= lt!260023 e!368792)))

(declare-fun c!112668 () Bool)

(assert (=> d!214455 (= c!112668 ((_ is Nil!6080) lt!259989))))

(assert (=> d!214455 (= (++!1703 lt!259989 suffix!1342) lt!260023)))

(assert (= (and d!214455 c!112668) b!608518))

(assert (= (and d!214455 (not c!112668)) b!608519))

(assert (= (and d!214455 res!263951) b!608520))

(assert (= (and b!608520 res!263950) b!608521))

(declare-fun m!875759 () Bool)

(assert (=> b!608519 m!875759))

(declare-fun m!875761 () Bool)

(assert (=> b!608520 m!875761))

(assert (=> b!608520 m!875651))

(declare-fun m!875763 () Bool)

(assert (=> b!608520 m!875763))

(declare-fun m!875765 () Bool)

(assert (=> d!214455 m!875765))

(declare-fun m!875767 () Bool)

(assert (=> d!214455 m!875767))

(declare-fun m!875769 () Bool)

(assert (=> d!214455 m!875769))

(assert (=> b!608472 d!214455))

(declare-fun d!214457 () Bool)

(declare-fun lt!260026 () Int)

(assert (=> d!214457 (>= lt!260026 0)))

(declare-fun e!368796 () Int)

(assert (=> d!214457 (= lt!260026 e!368796)))

(declare-fun c!112671 () Bool)

(assert (=> d!214457 (= c!112671 ((_ is Nil!6080) (originalCharacters!1254 token!491)))))

(assert (=> d!214457 (= (size!4784 (originalCharacters!1254 token!491)) lt!260026)))

(declare-fun b!608526 () Bool)

(assert (=> b!608526 (= e!368796 0)))

(declare-fun b!608527 () Bool)

(assert (=> b!608527 (= e!368796 (+ 1 (size!4784 (t!80727 (originalCharacters!1254 token!491)))))))

(assert (= (and d!214457 c!112671) b!608526))

(assert (= (and d!214457 (not c!112671)) b!608527))

(declare-fun m!875771 () Bool)

(assert (=> b!608527 m!875771))

(assert (=> b!608473 d!214457))

(declare-fun d!214459 () Bool)

(declare-fun res!263956 () Bool)

(declare-fun e!368799 () Bool)

(assert (=> d!214459 (=> (not res!263956) (not e!368799))))

(assert (=> d!214459 (= res!263956 (not (isEmpty!4390 (originalCharacters!1254 token!491))))))

(assert (=> d!214459 (= (inv!7735 token!491) e!368799)))

(declare-fun b!608532 () Bool)

(declare-fun res!263957 () Bool)

(assert (=> b!608532 (=> (not res!263957) (not e!368799))))

(declare-fun dynLambda!3529 (Int TokenValue!1239) BalanceConc!3872)

(assert (=> b!608532 (= res!263957 (= (originalCharacters!1254 token!491) (list!2558 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (value!39494 token!491)))))))

(declare-fun b!608533 () Bool)

(assert (=> b!608533 (= e!368799 (= (size!4783 token!491) (size!4784 (originalCharacters!1254 token!491))))))

(assert (= (and d!214459 res!263956) b!608532))

(assert (= (and b!608532 res!263957) b!608533))

(declare-fun b_lambda!24119 () Bool)

(assert (=> (not b_lambda!24119) (not b!608532)))

(declare-fun t!80734 () Bool)

(declare-fun tb!53171 () Bool)

(assert (=> (and b!608469 (= (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toChars!1981 (transformation!1215 (rule!2001 token!491)))) t!80734) tb!53171))

(declare-fun b!608538 () Bool)

(declare-fun e!368802 () Bool)

(declare-fun tp!188738 () Bool)

(declare-fun inv!7739 (Conc!1932) Bool)

(assert (=> b!608538 (= e!368802 (and (inv!7739 (c!112662 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (value!39494 token!491)))) tp!188738))))

(declare-fun result!59852 () Bool)

(declare-fun inv!7740 (BalanceConc!3872) Bool)

(assert (=> tb!53171 (= result!59852 (and (inv!7740 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (value!39494 token!491))) e!368802))))

(assert (= tb!53171 b!608538))

(declare-fun m!875773 () Bool)

(assert (=> b!608538 m!875773))

(declare-fun m!875775 () Bool)

(assert (=> tb!53171 m!875775))

(assert (=> b!608532 t!80734))

(declare-fun b_and!60251 () Bool)

(assert (= b_and!60241 (and (=> t!80734 result!59852) b_and!60251)))

(declare-fun t!80736 () Bool)

(declare-fun tb!53173 () Bool)

(assert (=> (and b!608478 (= (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toChars!1981 (transformation!1215 (rule!2001 token!491)))) t!80736) tb!53173))

(declare-fun result!59856 () Bool)

(assert (= result!59856 result!59852))

(assert (=> b!608532 t!80736))

(declare-fun b_and!60253 () Bool)

(assert (= b_and!60245 (and (=> t!80736 result!59856) b_and!60253)))

(declare-fun m!875777 () Bool)

(assert (=> d!214459 m!875777))

(declare-fun m!875779 () Bool)

(assert (=> b!608532 m!875779))

(assert (=> b!608532 m!875779))

(declare-fun m!875781 () Bool)

(assert (=> b!608532 m!875781))

(assert (=> b!608533 m!875601))

(assert (=> start!58144 d!214459))

(declare-fun d!214461 () Bool)

(assert (=> d!214461 (= (get!2337 lt!260001) (v!16470 lt!260001))))

(assert (=> b!608453 d!214461))

(declare-fun d!214463 () Bool)

(declare-fun res!263958 () Bool)

(declare-fun e!368803 () Bool)

(assert (=> d!214463 (=> (not res!263958) (not e!368803))))

(assert (=> d!214463 (= res!263958 (not (isEmpty!4390 (originalCharacters!1254 lt!259982))))))

(assert (=> d!214463 (= (inv!7735 lt!259982) e!368803)))

(declare-fun b!608539 () Bool)

(declare-fun res!263959 () Bool)

(assert (=> b!608539 (=> (not res!263959) (not e!368803))))

(assert (=> b!608539 (= res!263959 (= (originalCharacters!1254 lt!259982) (list!2558 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 lt!259982))) (value!39494 lt!259982)))))))

(declare-fun b!608540 () Bool)

(assert (=> b!608540 (= e!368803 (= (size!4783 lt!259982) (size!4784 (originalCharacters!1254 lt!259982))))))

(assert (= (and d!214463 res!263958) b!608539))

(assert (= (and b!608539 res!263959) b!608540))

(declare-fun b_lambda!24121 () Bool)

(assert (=> (not b_lambda!24121) (not b!608539)))

(declare-fun tb!53175 () Bool)

(declare-fun t!80738 () Bool)

(assert (=> (and b!608469 (= (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toChars!1981 (transformation!1215 (rule!2001 lt!259982)))) t!80738) tb!53175))

(declare-fun b!608541 () Bool)

(declare-fun e!368804 () Bool)

(declare-fun tp!188739 () Bool)

(assert (=> b!608541 (= e!368804 (and (inv!7739 (c!112662 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 lt!259982))) (value!39494 lt!259982)))) tp!188739))))

(declare-fun result!59858 () Bool)

(assert (=> tb!53175 (= result!59858 (and (inv!7740 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 lt!259982))) (value!39494 lt!259982))) e!368804))))

(assert (= tb!53175 b!608541))

(declare-fun m!875783 () Bool)

(assert (=> b!608541 m!875783))

(declare-fun m!875785 () Bool)

(assert (=> tb!53175 m!875785))

(assert (=> b!608539 t!80738))

(declare-fun b_and!60255 () Bool)

(assert (= b_and!60251 (and (=> t!80738 result!59858) b_and!60255)))

(declare-fun tb!53177 () Bool)

(declare-fun t!80740 () Bool)

(assert (=> (and b!608478 (= (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toChars!1981 (transformation!1215 (rule!2001 lt!259982)))) t!80740) tb!53177))

(declare-fun result!59860 () Bool)

(assert (= result!59860 result!59858))

(assert (=> b!608539 t!80740))

(declare-fun b_and!60257 () Bool)

(assert (= b_and!60253 (and (=> t!80740 result!59860) b_and!60257)))

(declare-fun m!875787 () Bool)

(assert (=> d!214463 m!875787))

(declare-fun m!875789 () Bool)

(assert (=> b!608539 m!875789))

(assert (=> b!608539 m!875789))

(declare-fun m!875791 () Bool)

(assert (=> b!608539 m!875791))

(declare-fun m!875793 () Bool)

(assert (=> b!608540 m!875793))

(assert (=> b!608474 d!214463))

(declare-fun b!608733 () Bool)

(declare-fun e!368898 () Bool)

(assert (=> b!608733 (= e!368898 true)))

(declare-fun d!214465 () Bool)

(assert (=> d!214465 e!368898))

(assert (= d!214465 b!608733))

(declare-fun order!4849 () Int)

(declare-fun order!4847 () Int)

(declare-fun lambda!16157 () Int)

(declare-fun dynLambda!3530 (Int Int) Int)

(declare-fun dynLambda!3531 (Int Int) Int)

(assert (=> b!608733 (< (dynLambda!3530 order!4847 (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) (dynLambda!3531 order!4849 lambda!16157))))

(declare-fun order!4851 () Int)

(declare-fun dynLambda!3532 (Int Int) Int)

(assert (=> b!608733 (< (dynLambda!3532 order!4851 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) (dynLambda!3531 order!4849 lambda!16157))))

(declare-fun dynLambda!3533 (Int BalanceConc!3872) TokenValue!1239)

(assert (=> d!214465 (= (list!2558 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) lt!259997))) (list!2558 lt!259997))))

(declare-fun lt!260089 () Unit!11106)

(declare-fun ForallOf!123 (Int BalanceConc!3872) Unit!11106)

(assert (=> d!214465 (= lt!260089 (ForallOf!123 lambda!16157 lt!259997))))

(assert (=> d!214465 (= (lemmaSemiInverse!245 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!259997) lt!260089)))

(declare-fun b_lambda!24129 () Bool)

(assert (=> (not b_lambda!24129) (not d!214465)))

(declare-fun tb!53187 () Bool)

(declare-fun t!80750 () Bool)

(assert (=> (and b!608469 (= (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80750) tb!53187))

(declare-fun tp!188741 () Bool)

(declare-fun e!368899 () Bool)

(declare-fun b!608734 () Bool)

(assert (=> b!608734 (= e!368899 (and (inv!7739 (c!112662 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) lt!259997)))) tp!188741))))

(declare-fun result!59872 () Bool)

(assert (=> tb!53187 (= result!59872 (and (inv!7740 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) lt!259997))) e!368899))))

(assert (= tb!53187 b!608734))

(declare-fun m!876043 () Bool)

(assert (=> b!608734 m!876043))

(declare-fun m!876045 () Bool)

(assert (=> tb!53187 m!876045))

(assert (=> d!214465 t!80750))

(declare-fun b_and!60271 () Bool)

(assert (= b_and!60255 (and (=> t!80750 result!59872) b_and!60271)))

(declare-fun t!80752 () Bool)

(declare-fun tb!53189 () Bool)

(assert (=> (and b!608478 (= (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80752) tb!53189))

(declare-fun result!59874 () Bool)

(assert (= result!59874 result!59872))

(assert (=> d!214465 t!80752))

(declare-fun b_and!60273 () Bool)

(assert (= b_and!60257 (and (=> t!80752 result!59874) b_and!60273)))

(declare-fun b_lambda!24131 () Bool)

(assert (=> (not b_lambda!24131) (not d!214465)))

(declare-fun tb!53191 () Bool)

(declare-fun t!80754 () Bool)

(assert (=> (and b!608469 (= (toValue!2122 (transformation!1215 (rule!2001 token!491))) (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80754) tb!53191))

(declare-fun result!59876 () Bool)

(assert (=> tb!53191 (= result!59876 (inv!21 (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) lt!259997)))))

(declare-fun m!876047 () Bool)

(assert (=> tb!53191 m!876047))

(assert (=> d!214465 t!80754))

(declare-fun b_and!60275 () Bool)

(assert (= b_and!60239 (and (=> t!80754 result!59876) b_and!60275)))

(declare-fun tb!53193 () Bool)

(declare-fun t!80756 () Bool)

(assert (=> (and b!608478 (= (toValue!2122 (transformation!1215 (h!11482 rules!3103))) (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80756) tb!53193))

(declare-fun result!59880 () Bool)

(assert (= result!59880 result!59876))

(assert (=> d!214465 t!80756))

(declare-fun b_and!60277 () Bool)

(assert (= b_and!60243 (and (=> t!80756 result!59880) b_and!60277)))

(declare-fun m!876049 () Bool)

(assert (=> d!214465 m!876049))

(declare-fun m!876051 () Bool)

(assert (=> d!214465 m!876051))

(declare-fun m!876053 () Bool)

(assert (=> d!214465 m!876053))

(assert (=> d!214465 m!876051))

(declare-fun m!876055 () Bool)

(assert (=> d!214465 m!876055))

(declare-fun m!876057 () Bool)

(assert (=> d!214465 m!876057))

(assert (=> d!214465 m!876049))

(assert (=> b!608474 d!214465))

(declare-fun d!214515 () Bool)

(declare-fun isEmpty!4392 (Option!1566) Bool)

(assert (=> d!214515 (= (isDefined!1377 lt!260004) (not (isEmpty!4392 lt!260004)))))

(declare-fun bs!71459 () Bool)

(assert (= bs!71459 d!214515))

(declare-fun m!876059 () Bool)

(assert (=> bs!71459 m!876059))

(assert (=> b!608475 d!214515))

(declare-fun b!608772 () Bool)

(declare-fun e!368925 () Bool)

(declare-fun e!368924 () Bool)

(assert (=> b!608772 (= e!368925 e!368924)))

(declare-fun res!264100 () Bool)

(assert (=> b!608772 (=> (not res!264100) (not e!368924))))

(declare-fun lt!260113 () Option!1566)

(assert (=> b!608772 (= res!264100 (isDefined!1377 lt!260113))))

(declare-fun b!608773 () Bool)

(declare-fun res!264099 () Bool)

(assert (=> b!608773 (=> (not res!264099) (not e!368924))))

(assert (=> b!608773 (= res!264099 (= (value!39494 (_1!3741 (get!2337 lt!260113))) (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (get!2337 lt!260113)))) (seqFromList!1391 (originalCharacters!1254 (_1!3741 (get!2337 lt!260113)))))))))

(declare-fun b!608774 () Bool)

(declare-fun e!368923 () Option!1566)

(declare-fun call!40820 () Option!1566)

(assert (=> b!608774 (= e!368923 call!40820)))

(declare-fun b!608775 () Bool)

(declare-fun res!264098 () Bool)

(assert (=> b!608775 (=> (not res!264098) (not e!368924))))

(assert (=> b!608775 (= res!264098 (= (++!1703 (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260113)))) (_2!3741 (get!2337 lt!260113))) lt!259979))))

(declare-fun d!214517 () Bool)

(assert (=> d!214517 e!368925))

(declare-fun res!264096 () Bool)

(assert (=> d!214517 (=> res!264096 e!368925)))

(assert (=> d!214517 (= res!264096 (isEmpty!4392 lt!260113))))

(assert (=> d!214517 (= lt!260113 e!368923)))

(declare-fun c!112713 () Bool)

(assert (=> d!214517 (= c!112713 (and ((_ is Cons!6081) rules!3103) ((_ is Nil!6081) (t!80728 rules!3103))))))

(declare-fun lt!260115 () Unit!11106)

(declare-fun lt!260116 () Unit!11106)

(assert (=> d!214517 (= lt!260115 lt!260116)))

(assert (=> d!214517 (isPrefix!843 lt!259979 lt!259979)))

(assert (=> d!214517 (= lt!260116 (lemmaIsPrefixRefl!579 lt!259979 lt!259979))))

(declare-fun rulesValidInductive!458 (LexerInterface!1101 List!6091) Bool)

(assert (=> d!214517 (rulesValidInductive!458 thiss!22590 rules!3103)))

(assert (=> d!214517 (= (maxPrefix!799 thiss!22590 rules!3103 lt!259979) lt!260113)))

(declare-fun b!608776 () Bool)

(assert (=> b!608776 (= e!368924 (contains!1431 rules!3103 (rule!2001 (_1!3741 (get!2337 lt!260113)))))))

(declare-fun bm!40815 () Bool)

(assert (=> bm!40815 (= call!40820 (maxPrefixOneRule!462 thiss!22590 (h!11482 rules!3103) lt!259979))))

(declare-fun b!608777 () Bool)

(declare-fun res!264094 () Bool)

(assert (=> b!608777 (=> (not res!264094) (not e!368924))))

(assert (=> b!608777 (= res!264094 (= (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260113)))) (originalCharacters!1254 (_1!3741 (get!2337 lt!260113)))))))

(declare-fun b!608778 () Bool)

(declare-fun res!264097 () Bool)

(assert (=> b!608778 (=> (not res!264097) (not e!368924))))

(assert (=> b!608778 (= res!264097 (< (size!4784 (_2!3741 (get!2337 lt!260113))) (size!4784 lt!259979)))))

(declare-fun b!608779 () Bool)

(declare-fun lt!260117 () Option!1566)

(declare-fun lt!260114 () Option!1566)

(assert (=> b!608779 (= e!368923 (ite (and ((_ is None!1565) lt!260117) ((_ is None!1565) lt!260114)) None!1565 (ite ((_ is None!1565) lt!260114) lt!260117 (ite ((_ is None!1565) lt!260117) lt!260114 (ite (>= (size!4783 (_1!3741 (v!16470 lt!260117))) (size!4783 (_1!3741 (v!16470 lt!260114)))) lt!260117 lt!260114)))))))

(assert (=> b!608779 (= lt!260117 call!40820)))

(assert (=> b!608779 (= lt!260114 (maxPrefix!799 thiss!22590 (t!80728 rules!3103) lt!259979))))

(declare-fun b!608780 () Bool)

(declare-fun res!264095 () Bool)

(assert (=> b!608780 (=> (not res!264095) (not e!368924))))

(assert (=> b!608780 (= res!264095 (matchR!652 (regex!1215 (rule!2001 (_1!3741 (get!2337 lt!260113)))) (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260113))))))))

(assert (= (and d!214517 c!112713) b!608774))

(assert (= (and d!214517 (not c!112713)) b!608779))

(assert (= (or b!608774 b!608779) bm!40815))

(assert (= (and d!214517 (not res!264096)) b!608772))

(assert (= (and b!608772 res!264100) b!608777))

(assert (= (and b!608777 res!264094) b!608778))

(assert (= (and b!608778 res!264097) b!608775))

(assert (= (and b!608775 res!264098) b!608773))

(assert (= (and b!608773 res!264099) b!608780))

(assert (= (and b!608780 res!264095) b!608776))

(declare-fun m!876107 () Bool)

(assert (=> b!608777 m!876107))

(declare-fun m!876109 () Bool)

(assert (=> b!608777 m!876109))

(assert (=> b!608777 m!876109))

(declare-fun m!876111 () Bool)

(assert (=> b!608777 m!876111))

(declare-fun m!876113 () Bool)

(assert (=> b!608772 m!876113))

(assert (=> b!608776 m!876107))

(declare-fun m!876115 () Bool)

(assert (=> b!608776 m!876115))

(assert (=> b!608778 m!876107))

(declare-fun m!876117 () Bool)

(assert (=> b!608778 m!876117))

(declare-fun m!876121 () Bool)

(assert (=> b!608778 m!876121))

(declare-fun m!876123 () Bool)

(assert (=> b!608779 m!876123))

(assert (=> b!608780 m!876107))

(assert (=> b!608780 m!876109))

(assert (=> b!608780 m!876109))

(assert (=> b!608780 m!876111))

(assert (=> b!608780 m!876111))

(declare-fun m!876125 () Bool)

(assert (=> b!608780 m!876125))

(assert (=> b!608773 m!876107))

(declare-fun m!876127 () Bool)

(assert (=> b!608773 m!876127))

(assert (=> b!608773 m!876127))

(declare-fun m!876129 () Bool)

(assert (=> b!608773 m!876129))

(declare-fun m!876131 () Bool)

(assert (=> d!214517 m!876131))

(declare-fun m!876133 () Bool)

(assert (=> d!214517 m!876133))

(declare-fun m!876135 () Bool)

(assert (=> d!214517 m!876135))

(declare-fun m!876137 () Bool)

(assert (=> d!214517 m!876137))

(assert (=> b!608775 m!876107))

(assert (=> b!608775 m!876109))

(assert (=> b!608775 m!876109))

(assert (=> b!608775 m!876111))

(assert (=> b!608775 m!876111))

(declare-fun m!876139 () Bool)

(assert (=> b!608775 m!876139))

(declare-fun m!876141 () Bool)

(assert (=> bm!40815 m!876141))

(assert (=> b!608475 d!214517))

(declare-fun b!608790 () Bool)

(declare-fun e!368930 () List!6090)

(assert (=> b!608790 (= e!368930 (Cons!6080 (h!11481 input!2705) (++!1703 (t!80727 input!2705) suffix!1342)))))

(declare-fun b!608791 () Bool)

(declare-fun res!264107 () Bool)

(declare-fun e!368931 () Bool)

(assert (=> b!608791 (=> (not res!264107) (not e!368931))))

(declare-fun lt!260119 () List!6090)

(assert (=> b!608791 (= res!264107 (= (size!4784 lt!260119) (+ (size!4784 input!2705) (size!4784 suffix!1342))))))

(declare-fun b!608792 () Bool)

(assert (=> b!608792 (= e!368931 (or (not (= suffix!1342 Nil!6080)) (= lt!260119 input!2705)))))

(declare-fun b!608789 () Bool)

(assert (=> b!608789 (= e!368930 suffix!1342)))

(declare-fun d!214541 () Bool)

(assert (=> d!214541 e!368931))

(declare-fun res!264108 () Bool)

(assert (=> d!214541 (=> (not res!264108) (not e!368931))))

(assert (=> d!214541 (= res!264108 (= (content!1107 lt!260119) ((_ map or) (content!1107 input!2705) (content!1107 suffix!1342))))))

(assert (=> d!214541 (= lt!260119 e!368930)))

(declare-fun c!112715 () Bool)

(assert (=> d!214541 (= c!112715 ((_ is Nil!6080) input!2705))))

(assert (=> d!214541 (= (++!1703 input!2705 suffix!1342) lt!260119)))

(assert (= (and d!214541 c!112715) b!608789))

(assert (= (and d!214541 (not c!112715)) b!608790))

(assert (= (and d!214541 res!264108) b!608791))

(assert (= (and b!608791 res!264107) b!608792))

(declare-fun m!876143 () Bool)

(assert (=> b!608790 m!876143))

(declare-fun m!876145 () Bool)

(assert (=> b!608791 m!876145))

(declare-fun m!876147 () Bool)

(assert (=> b!608791 m!876147))

(assert (=> b!608791 m!875763))

(declare-fun m!876149 () Bool)

(assert (=> d!214541 m!876149))

(declare-fun m!876151 () Bool)

(assert (=> d!214541 m!876151))

(assert (=> d!214541 m!875769))

(assert (=> b!608475 d!214541))

(declare-fun d!214543 () Bool)

(assert (=> d!214543 (= (isEmpty!4389 rules!3103) ((_ is Nil!6081) rules!3103))))

(assert (=> b!608454 d!214543))

(declare-fun d!214549 () Bool)

(declare-fun lt!260123 () Int)

(assert (=> d!214549 (>= lt!260123 0)))

(declare-fun e!368933 () Int)

(assert (=> d!214549 (= lt!260123 e!368933)))

(declare-fun c!112716 () Bool)

(assert (=> d!214549 (= c!112716 ((_ is Nil!6080) (originalCharacters!1254 (_1!3741 (v!16470 lt!260001)))))))

(assert (=> d!214549 (= (size!4784 (originalCharacters!1254 (_1!3741 (v!16470 lt!260001)))) lt!260123)))

(declare-fun b!608795 () Bool)

(assert (=> b!608795 (= e!368933 0)))

(declare-fun b!608796 () Bool)

(assert (=> b!608796 (= e!368933 (+ 1 (size!4784 (t!80727 (originalCharacters!1254 (_1!3741 (v!16470 lt!260001)))))))))

(assert (= (and d!214549 c!112716) b!608795))

(assert (= (and d!214549 (not c!112716)) b!608796))

(declare-fun m!876155 () Bool)

(assert (=> b!608796 m!876155))

(assert (=> b!608476 d!214549))

(declare-fun d!214551 () Bool)

(declare-fun res!264113 () Bool)

(declare-fun e!368936 () Bool)

(assert (=> d!214551 (=> (not res!264113) (not e!368936))))

(declare-fun rulesValid!451 (LexerInterface!1101 List!6091) Bool)

(assert (=> d!214551 (= res!264113 (rulesValid!451 thiss!22590 rules!3103))))

(assert (=> d!214551 (= (rulesInvariant!1064 thiss!22590 rules!3103) e!368936)))

(declare-fun b!608799 () Bool)

(declare-datatypes ((List!6092 0))(
  ( (Nil!6082) (Cons!6082 (h!11483 String!7939) (t!80801 List!6092)) )
))
(declare-fun noDuplicateTag!451 (LexerInterface!1101 List!6091 List!6092) Bool)

(assert (=> b!608799 (= e!368936 (noDuplicateTag!451 thiss!22590 rules!3103 Nil!6082))))

(assert (= (and d!214551 res!264113) b!608799))

(declare-fun m!876159 () Bool)

(assert (=> d!214551 m!876159))

(declare-fun m!876161 () Bool)

(assert (=> b!608799 m!876161))

(assert (=> b!608467 d!214551))

(declare-fun bm!40818 () Bool)

(declare-fun call!40823 () Bool)

(assert (=> bm!40818 (= call!40823 (isEmpty!4390 input!2705))))

(declare-fun b!608860 () Bool)

(declare-fun e!368978 () Bool)

(declare-fun lt!260140 () Bool)

(assert (=> b!608860 (= e!368978 (not lt!260140))))

(declare-fun b!608861 () Bool)

(declare-fun res!264158 () Bool)

(declare-fun e!368977 () Bool)

(assert (=> b!608861 (=> res!264158 e!368977)))

(declare-fun tail!817 (List!6090) List!6090)

(assert (=> b!608861 (= res!264158 (not (isEmpty!4390 (tail!817 input!2705))))))

(declare-fun b!608863 () Bool)

(declare-fun e!368979 () Bool)

(assert (=> b!608863 (= e!368979 (= lt!260140 call!40823))))

(declare-fun b!608864 () Bool)

(declare-fun res!264159 () Bool)

(declare-fun e!368980 () Bool)

(assert (=> b!608864 (=> res!264159 e!368980)))

(assert (=> b!608864 (= res!264159 (not ((_ is ElementMatch!1549) (regex!1215 (rule!2001 token!491)))))))

(assert (=> b!608864 (= e!368978 e!368980)))

(declare-fun b!608865 () Bool)

(declare-fun res!264161 () Bool)

(declare-fun e!368976 () Bool)

(assert (=> b!608865 (=> (not res!264161) (not e!368976))))

(assert (=> b!608865 (= res!264161 (isEmpty!4390 (tail!817 input!2705)))))

(declare-fun b!608866 () Bool)

(declare-fun head!1288 (List!6090) C!4020)

(assert (=> b!608866 (= e!368977 (not (= (head!1288 input!2705) (c!112661 (regex!1215 (rule!2001 token!491))))))))

(declare-fun b!608867 () Bool)

(assert (=> b!608867 (= e!368976 (= (head!1288 input!2705) (c!112661 (regex!1215 (rule!2001 token!491)))))))

(declare-fun b!608868 () Bool)

(declare-fun e!368981 () Bool)

(declare-fun nullable!447 (Regex!1549) Bool)

(assert (=> b!608868 (= e!368981 (nullable!447 (regex!1215 (rule!2001 token!491))))))

(declare-fun b!608869 () Bool)

(declare-fun res!264160 () Bool)

(assert (=> b!608869 (=> res!264160 e!368980)))

(assert (=> b!608869 (= res!264160 e!368976)))

(declare-fun res!264164 () Bool)

(assert (=> b!608869 (=> (not res!264164) (not e!368976))))

(assert (=> b!608869 (= res!264164 lt!260140)))

(declare-fun b!608870 () Bool)

(declare-fun e!368975 () Bool)

(assert (=> b!608870 (= e!368975 e!368977)))

(declare-fun res!264162 () Bool)

(assert (=> b!608870 (=> res!264162 e!368977)))

(assert (=> b!608870 (= res!264162 call!40823)))

(declare-fun b!608871 () Bool)

(assert (=> b!608871 (= e!368980 e!368975)))

(declare-fun res!264163 () Bool)

(assert (=> b!608871 (=> (not res!264163) (not e!368975))))

(assert (=> b!608871 (= res!264163 (not lt!260140))))

(declare-fun d!214555 () Bool)

(assert (=> d!214555 e!368979))

(declare-fun c!112726 () Bool)

(assert (=> d!214555 (= c!112726 ((_ is EmptyExpr!1549) (regex!1215 (rule!2001 token!491))))))

(assert (=> d!214555 (= lt!260140 e!368981)))

(declare-fun c!112727 () Bool)

(assert (=> d!214555 (= c!112727 (isEmpty!4390 input!2705))))

(declare-fun validRegex!542 (Regex!1549) Bool)

(assert (=> d!214555 (validRegex!542 (regex!1215 (rule!2001 token!491)))))

(assert (=> d!214555 (= (matchR!652 (regex!1215 (rule!2001 token!491)) input!2705) lt!260140)))

(declare-fun b!608862 () Bool)

(declare-fun res!264165 () Bool)

(assert (=> b!608862 (=> (not res!264165) (not e!368976))))

(assert (=> b!608862 (= res!264165 (not call!40823))))

(declare-fun b!608872 () Bool)

(declare-fun derivativeStep!332 (Regex!1549 C!4020) Regex!1549)

(assert (=> b!608872 (= e!368981 (matchR!652 (derivativeStep!332 (regex!1215 (rule!2001 token!491)) (head!1288 input!2705)) (tail!817 input!2705)))))

(declare-fun b!608873 () Bool)

(assert (=> b!608873 (= e!368979 e!368978)))

(declare-fun c!112725 () Bool)

(assert (=> b!608873 (= c!112725 ((_ is EmptyLang!1549) (regex!1215 (rule!2001 token!491))))))

(assert (= (and d!214555 c!112727) b!608868))

(assert (= (and d!214555 (not c!112727)) b!608872))

(assert (= (and d!214555 c!112726) b!608863))

(assert (= (and d!214555 (not c!112726)) b!608873))

(assert (= (and b!608873 c!112725) b!608860))

(assert (= (and b!608873 (not c!112725)) b!608864))

(assert (= (and b!608864 (not res!264159)) b!608869))

(assert (= (and b!608869 res!264164) b!608862))

(assert (= (and b!608862 res!264165) b!608865))

(assert (= (and b!608865 res!264161) b!608867))

(assert (= (and b!608869 (not res!264160)) b!608871))

(assert (= (and b!608871 res!264163) b!608870))

(assert (= (and b!608870 (not res!264162)) b!608861))

(assert (= (and b!608861 (not res!264158)) b!608866))

(assert (= (or b!608863 b!608862 b!608870) bm!40818))

(assert (=> d!214555 m!875599))

(declare-fun m!876223 () Bool)

(assert (=> d!214555 m!876223))

(declare-fun m!876225 () Bool)

(assert (=> b!608865 m!876225))

(assert (=> b!608865 m!876225))

(declare-fun m!876227 () Bool)

(assert (=> b!608865 m!876227))

(declare-fun m!876229 () Bool)

(assert (=> b!608872 m!876229))

(assert (=> b!608872 m!876229))

(declare-fun m!876231 () Bool)

(assert (=> b!608872 m!876231))

(assert (=> b!608872 m!876225))

(assert (=> b!608872 m!876231))

(assert (=> b!608872 m!876225))

(declare-fun m!876233 () Bool)

(assert (=> b!608872 m!876233))

(assert (=> b!608867 m!876229))

(declare-fun m!876235 () Bool)

(assert (=> b!608868 m!876235))

(assert (=> b!608866 m!876229))

(assert (=> bm!40818 m!875599))

(assert (=> b!608861 m!876225))

(assert (=> b!608861 m!876225))

(assert (=> b!608861 m!876227))

(assert (=> b!608447 d!214555))

(declare-fun d!214591 () Bool)

(declare-fun list!2560 (Conc!1932) List!6090)

(assert (=> d!214591 (= (list!2558 (charsOf!844 token!491)) (list!2560 (c!112662 (charsOf!844 token!491))))))

(declare-fun bs!71472 () Bool)

(assert (= bs!71472 d!214591))

(declare-fun m!876237 () Bool)

(assert (=> bs!71472 m!876237))

(assert (=> b!608449 d!214591))

(declare-fun d!214593 () Bool)

(declare-fun lt!260144 () BalanceConc!3872)

(assert (=> d!214593 (= (list!2558 lt!260144) (originalCharacters!1254 token!491))))

(assert (=> d!214593 (= lt!260144 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (value!39494 token!491)))))

(assert (=> d!214593 (= (charsOf!844 token!491) lt!260144)))

(declare-fun b_lambda!24141 () Bool)

(assert (=> (not b_lambda!24141) (not d!214593)))

(assert (=> d!214593 t!80734))

(declare-fun b_and!60295 () Bool)

(assert (= b_and!60271 (and (=> t!80734 result!59852) b_and!60295)))

(assert (=> d!214593 t!80736))

(declare-fun b_and!60297 () Bool)

(assert (= b_and!60273 (and (=> t!80736 result!59856) b_and!60297)))

(declare-fun m!876239 () Bool)

(assert (=> d!214593 m!876239))

(assert (=> d!214593 m!875779))

(assert (=> b!608449 d!214593))

(declare-fun bm!40819 () Bool)

(declare-fun call!40824 () Bool)

(assert (=> bm!40819 (= call!40824 (isEmpty!4390 lt!259975))))

(declare-fun b!608907 () Bool)

(declare-fun e!369006 () Bool)

(declare-fun lt!260145 () Bool)

(assert (=> b!608907 (= e!369006 (not lt!260145))))

(declare-fun b!608908 () Bool)

(declare-fun res!264169 () Bool)

(declare-fun e!369005 () Bool)

(assert (=> b!608908 (=> res!264169 e!369005)))

(assert (=> b!608908 (= res!264169 (not (isEmpty!4390 (tail!817 lt!259975))))))

(declare-fun b!608910 () Bool)

(declare-fun e!369007 () Bool)

(assert (=> b!608910 (= e!369007 (= lt!260145 call!40824))))

(declare-fun b!608911 () Bool)

(declare-fun res!264170 () Bool)

(declare-fun e!369008 () Bool)

(assert (=> b!608911 (=> res!264170 e!369008)))

(assert (=> b!608911 (= res!264170 (not ((_ is ElementMatch!1549) (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))))))

(assert (=> b!608911 (= e!369006 e!369008)))

(declare-fun b!608912 () Bool)

(declare-fun res!264172 () Bool)

(declare-fun e!369004 () Bool)

(assert (=> b!608912 (=> (not res!264172) (not e!369004))))

(assert (=> b!608912 (= res!264172 (isEmpty!4390 (tail!817 lt!259975)))))

(declare-fun b!608913 () Bool)

(assert (=> b!608913 (= e!369005 (not (= (head!1288 lt!259975) (c!112661 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))))

(declare-fun b!608914 () Bool)

(assert (=> b!608914 (= e!369004 (= (head!1288 lt!259975) (c!112661 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))))))

(declare-fun b!608915 () Bool)

(declare-fun e!369009 () Bool)

(assert (=> b!608915 (= e!369009 (nullable!447 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))

(declare-fun b!608916 () Bool)

(declare-fun res!264171 () Bool)

(assert (=> b!608916 (=> res!264171 e!369008)))

(assert (=> b!608916 (= res!264171 e!369004)))

(declare-fun res!264175 () Bool)

(assert (=> b!608916 (=> (not res!264175) (not e!369004))))

(assert (=> b!608916 (= res!264175 lt!260145)))

(declare-fun b!608917 () Bool)

(declare-fun e!369003 () Bool)

(assert (=> b!608917 (= e!369003 e!369005)))

(declare-fun res!264173 () Bool)

(assert (=> b!608917 (=> res!264173 e!369005)))

(assert (=> b!608917 (= res!264173 call!40824)))

(declare-fun b!608918 () Bool)

(assert (=> b!608918 (= e!369008 e!369003)))

(declare-fun res!264174 () Bool)

(assert (=> b!608918 (=> (not res!264174) (not e!369003))))

(assert (=> b!608918 (= res!264174 (not lt!260145))))

(declare-fun d!214595 () Bool)

(assert (=> d!214595 e!369007))

(declare-fun c!112729 () Bool)

(assert (=> d!214595 (= c!112729 ((_ is EmptyExpr!1549) (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))

(assert (=> d!214595 (= lt!260145 e!369009)))

(declare-fun c!112730 () Bool)

(assert (=> d!214595 (= c!112730 (isEmpty!4390 lt!259975))))

(assert (=> d!214595 (validRegex!542 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(assert (=> d!214595 (= (matchR!652 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!259975) lt!260145)))

(declare-fun b!608909 () Bool)

(declare-fun res!264176 () Bool)

(assert (=> b!608909 (=> (not res!264176) (not e!369004))))

(assert (=> b!608909 (= res!264176 (not call!40824))))

(declare-fun b!608919 () Bool)

(assert (=> b!608919 (= e!369009 (matchR!652 (derivativeStep!332 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (head!1288 lt!259975)) (tail!817 lt!259975)))))

(declare-fun b!608920 () Bool)

(assert (=> b!608920 (= e!369007 e!369006)))

(declare-fun c!112728 () Bool)

(assert (=> b!608920 (= c!112728 ((_ is EmptyLang!1549) (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))

(assert (= (and d!214595 c!112730) b!608915))

(assert (= (and d!214595 (not c!112730)) b!608919))

(assert (= (and d!214595 c!112729) b!608910))

(assert (= (and d!214595 (not c!112729)) b!608920))

(assert (= (and b!608920 c!112728) b!608907))

(assert (= (and b!608920 (not c!112728)) b!608911))

(assert (= (and b!608911 (not res!264170)) b!608916))

(assert (= (and b!608916 res!264175) b!608909))

(assert (= (and b!608909 res!264176) b!608912))

(assert (= (and b!608912 res!264172) b!608914))

(assert (= (and b!608916 (not res!264171)) b!608918))

(assert (= (and b!608918 res!264174) b!608917))

(assert (= (and b!608917 (not res!264173)) b!608908))

(assert (= (and b!608908 (not res!264169)) b!608913))

(assert (= (or b!608910 b!608909 b!608917) bm!40819))

(declare-fun m!876241 () Bool)

(assert (=> d!214595 m!876241))

(declare-fun m!876243 () Bool)

(assert (=> d!214595 m!876243))

(declare-fun m!876245 () Bool)

(assert (=> b!608912 m!876245))

(assert (=> b!608912 m!876245))

(declare-fun m!876247 () Bool)

(assert (=> b!608912 m!876247))

(declare-fun m!876249 () Bool)

(assert (=> b!608919 m!876249))

(assert (=> b!608919 m!876249))

(declare-fun m!876251 () Bool)

(assert (=> b!608919 m!876251))

(assert (=> b!608919 m!876245))

(assert (=> b!608919 m!876251))

(assert (=> b!608919 m!876245))

(declare-fun m!876257 () Bool)

(assert (=> b!608919 m!876257))

(assert (=> b!608914 m!876249))

(declare-fun m!876259 () Bool)

(assert (=> b!608915 m!876259))

(assert (=> b!608913 m!876249))

(assert (=> bm!40819 m!876241))

(assert (=> b!608908 m!876245))

(assert (=> b!608908 m!876245))

(assert (=> b!608908 m!876247))

(assert (=> b!608470 d!214595))

(declare-fun d!214597 () Bool)

(declare-fun lt!260148 () Bool)

(declare-fun content!1110 (List!6091) (InoxSet Rule!2230))

(assert (=> d!214597 (= lt!260148 (select (content!1110 rules!3103) (rule!2001 token!491)))))

(declare-fun e!369018 () Bool)

(assert (=> d!214597 (= lt!260148 e!369018)))

(declare-fun res!264181 () Bool)

(assert (=> d!214597 (=> (not res!264181) (not e!369018))))

(assert (=> d!214597 (= res!264181 ((_ is Cons!6081) rules!3103))))

(assert (=> d!214597 (= (contains!1431 rules!3103 (rule!2001 token!491)) lt!260148)))

(declare-fun b!608931 () Bool)

(declare-fun e!369017 () Bool)

(assert (=> b!608931 (= e!369018 e!369017)))

(declare-fun res!264182 () Bool)

(assert (=> b!608931 (=> res!264182 e!369017)))

(assert (=> b!608931 (= res!264182 (= (h!11482 rules!3103) (rule!2001 token!491)))))

(declare-fun b!608932 () Bool)

(assert (=> b!608932 (= e!369017 (contains!1431 (t!80728 rules!3103) (rule!2001 token!491)))))

(assert (= (and d!214597 res!264181) b!608931))

(assert (= (and b!608931 (not res!264182)) b!608932))

(declare-fun m!876261 () Bool)

(assert (=> d!214597 m!876261))

(declare-fun m!876263 () Bool)

(assert (=> d!214597 m!876263))

(declare-fun m!876265 () Bool)

(assert (=> b!608932 m!876265))

(assert (=> b!608471 d!214597))

(declare-fun b!608941 () Bool)

(declare-fun e!369025 () Bool)

(declare-fun e!369026 () Bool)

(assert (=> b!608941 (= e!369025 e!369026)))

(declare-fun res!264191 () Bool)

(assert (=> b!608941 (=> (not res!264191) (not e!369026))))

(assert (=> b!608941 (= res!264191 (not ((_ is Nil!6080) input!2705)))))

(declare-fun b!608942 () Bool)

(declare-fun res!264193 () Bool)

(assert (=> b!608942 (=> (not res!264193) (not e!369026))))

(assert (=> b!608942 (= res!264193 (= (head!1288 lt!259975) (head!1288 input!2705)))))

(declare-fun b!608943 () Bool)

(assert (=> b!608943 (= e!369026 (isPrefix!843 (tail!817 lt!259975) (tail!817 input!2705)))))

(declare-fun b!608944 () Bool)

(declare-fun e!369027 () Bool)

(assert (=> b!608944 (= e!369027 (>= (size!4784 input!2705) (size!4784 lt!259975)))))

(declare-fun d!214599 () Bool)

(assert (=> d!214599 e!369027))

(declare-fun res!264194 () Bool)

(assert (=> d!214599 (=> res!264194 e!369027)))

(declare-fun lt!260151 () Bool)

(assert (=> d!214599 (= res!264194 (not lt!260151))))

(assert (=> d!214599 (= lt!260151 e!369025)))

(declare-fun res!264192 () Bool)

(assert (=> d!214599 (=> res!264192 e!369025)))

(assert (=> d!214599 (= res!264192 ((_ is Nil!6080) lt!259975))))

(assert (=> d!214599 (= (isPrefix!843 lt!259975 input!2705) lt!260151)))

(assert (= (and d!214599 (not res!264192)) b!608941))

(assert (= (and b!608941 res!264191) b!608942))

(assert (= (and b!608942 res!264193) b!608943))

(assert (= (and d!214599 (not res!264194)) b!608944))

(assert (=> b!608942 m!876249))

(assert (=> b!608942 m!876229))

(assert (=> b!608943 m!876245))

(assert (=> b!608943 m!876225))

(assert (=> b!608943 m!876245))

(assert (=> b!608943 m!876225))

(declare-fun m!876267 () Bool)

(assert (=> b!608943 m!876267))

(assert (=> b!608944 m!876147))

(assert (=> b!608944 m!875653))

(assert (=> b!608450 d!214599))

(declare-fun d!214601 () Bool)

(assert (=> d!214601 (= (inv!7732 (tag!1477 (h!11482 rules!3103))) (= (mod (str.len (value!39493 (tag!1477 (h!11482 rules!3103)))) 2) 0))))

(assert (=> b!608483 d!214601))

(declare-fun d!214603 () Bool)

(declare-fun res!264197 () Bool)

(declare-fun e!369030 () Bool)

(assert (=> d!214603 (=> (not res!264197) (not e!369030))))

(declare-fun semiInverseModEq!489 (Int Int) Bool)

(assert (=> d!214603 (= res!264197 (semiInverseModEq!489 (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toValue!2122 (transformation!1215 (h!11482 rules!3103)))))))

(assert (=> d!214603 (= (inv!7736 (transformation!1215 (h!11482 rules!3103))) e!369030)))

(declare-fun b!608947 () Bool)

(declare-fun equivClasses!472 (Int Int) Bool)

(assert (=> b!608947 (= e!369030 (equivClasses!472 (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toValue!2122 (transformation!1215 (h!11482 rules!3103)))))))

(assert (= (and d!214603 res!264197) b!608947))

(declare-fun m!876269 () Bool)

(assert (=> d!214603 m!876269))

(declare-fun m!876271 () Bool)

(assert (=> b!608947 m!876271))

(assert (=> b!608483 d!214603))

(declare-fun d!214605 () Bool)

(assert (=> d!214605 (= (maxPrefixOneRule!462 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))) input!2705) (Some!1565 (tuple2!6955 (Token!2167 (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (seqFromList!1391 lt!259975)) (rule!2001 (_1!3741 (v!16470 lt!260001))) (size!4784 lt!259975) lt!259975) (_2!3741 (v!16470 lt!260001)))))))

(declare-fun lt!260154 () Unit!11106)

(declare-fun choose!4469 (LexerInterface!1101 List!6091 List!6090 List!6090 List!6090 Rule!2230) Unit!11106)

(assert (=> d!214605 (= lt!260154 (choose!4469 thiss!22590 rules!3103 lt!259975 input!2705 (_2!3741 (v!16470 lt!260001)) (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(assert (=> d!214605 (not (isEmpty!4389 rules!3103))))

(assert (=> d!214605 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!168 thiss!22590 rules!3103 lt!259975 input!2705 (_2!3741 (v!16470 lt!260001)) (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!260154)))

(declare-fun bs!71473 () Bool)

(assert (= bs!71473 d!214605))

(assert (=> bs!71473 m!875689))

(assert (=> bs!71473 m!875653))

(declare-fun m!876273 () Bool)

(assert (=> bs!71473 m!876273))

(assert (=> bs!71473 m!875689))

(declare-fun m!876275 () Bool)

(assert (=> bs!71473 m!876275))

(assert (=> bs!71473 m!875597))

(assert (=> bs!71473 m!875625))

(assert (=> b!608463 d!214605))

(declare-fun b!608966 () Bool)

(declare-fun e!369039 () Bool)

(declare-fun lt!260169 () Option!1566)

(assert (=> b!608966 (= e!369039 (= (size!4783 (_1!3741 (get!2337 lt!260169))) (size!4784 (originalCharacters!1254 (_1!3741 (get!2337 lt!260169))))))))

(declare-fun b!608967 () Bool)

(declare-fun res!264215 () Bool)

(assert (=> b!608967 (=> (not res!264215) (not e!369039))))

(assert (=> b!608967 (= res!264215 (= (rule!2001 (_1!3741 (get!2337 lt!260169))) (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(declare-fun b!608968 () Bool)

(declare-fun e!369040 () Option!1566)

(assert (=> b!608968 (= e!369040 None!1565)))

(declare-fun b!608969 () Bool)

(declare-fun res!264213 () Bool)

(assert (=> b!608969 (=> (not res!264213) (not e!369039))))

(assert (=> b!608969 (= res!264213 (= (value!39494 (_1!3741 (get!2337 lt!260169))) (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (get!2337 lt!260169)))) (seqFromList!1391 (originalCharacters!1254 (_1!3741 (get!2337 lt!260169)))))))))

(declare-fun d!214607 () Bool)

(declare-fun e!369041 () Bool)

(assert (=> d!214607 e!369041))

(declare-fun res!264217 () Bool)

(assert (=> d!214607 (=> res!264217 e!369041)))

(assert (=> d!214607 (= res!264217 (isEmpty!4392 lt!260169))))

(assert (=> d!214607 (= lt!260169 e!369040)))

(declare-fun c!112733 () Bool)

(declare-datatypes ((tuple2!6958 0))(
  ( (tuple2!6959 (_1!3743 List!6090) (_2!3743 List!6090)) )
))
(declare-fun lt!260168 () tuple2!6958)

(assert (=> d!214607 (= c!112733 (isEmpty!4390 (_1!3743 lt!260168)))))

(declare-fun findLongestMatch!185 (Regex!1549 List!6090) tuple2!6958)

(assert (=> d!214607 (= lt!260168 (findLongestMatch!185 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) input!2705))))

(assert (=> d!214607 (ruleValid!413 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))))))

(assert (=> d!214607 (= (maxPrefixOneRule!462 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))) input!2705) lt!260169)))

(declare-fun b!608970 () Bool)

(declare-fun res!264218 () Bool)

(assert (=> b!608970 (=> (not res!264218) (not e!369039))))

(assert (=> b!608970 (= res!264218 (= (++!1703 (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260169)))) (_2!3741 (get!2337 lt!260169))) input!2705))))

(declare-fun b!608971 () Bool)

(declare-fun size!4786 (BalanceConc!3872) Int)

(assert (=> b!608971 (= e!369040 (Some!1565 (tuple2!6955 (Token!2167 (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (seqFromList!1391 (_1!3743 lt!260168))) (rule!2001 (_1!3741 (v!16470 lt!260001))) (size!4786 (seqFromList!1391 (_1!3743 lt!260168))) (_1!3743 lt!260168)) (_2!3743 lt!260168))))))

(declare-fun lt!260167 () Unit!11106)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!190 (Regex!1549 List!6090) Unit!11106)

(assert (=> b!608971 (= lt!260167 (longestMatchIsAcceptedByMatchOrIsEmpty!190 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) input!2705))))

(declare-fun res!264216 () Bool)

(declare-fun findLongestMatchInner!206 (Regex!1549 List!6090 Int List!6090 List!6090 Int) tuple2!6958)

(assert (=> b!608971 (= res!264216 (isEmpty!4390 (_1!3743 (findLongestMatchInner!206 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) Nil!6080 (size!4784 Nil!6080) input!2705 input!2705 (size!4784 input!2705)))))))

(declare-fun e!369042 () Bool)

(assert (=> b!608971 (=> res!264216 e!369042)))

(assert (=> b!608971 e!369042))

(declare-fun lt!260165 () Unit!11106)

(assert (=> b!608971 (= lt!260165 lt!260167)))

(declare-fun lt!260166 () Unit!11106)

(assert (=> b!608971 (= lt!260166 (lemmaSemiInverse!245 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (seqFromList!1391 (_1!3743 lt!260168))))))

(declare-fun b!608972 () Bool)

(assert (=> b!608972 (= e!369042 (matchR!652 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (_1!3743 (findLongestMatchInner!206 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) Nil!6080 (size!4784 Nil!6080) input!2705 input!2705 (size!4784 input!2705)))))))

(declare-fun b!608973 () Bool)

(declare-fun res!264212 () Bool)

(assert (=> b!608973 (=> (not res!264212) (not e!369039))))

(assert (=> b!608973 (= res!264212 (< (size!4784 (_2!3741 (get!2337 lt!260169))) (size!4784 input!2705)))))

(declare-fun b!608974 () Bool)

(assert (=> b!608974 (= e!369041 e!369039)))

(declare-fun res!264214 () Bool)

(assert (=> b!608974 (=> (not res!264214) (not e!369039))))

(assert (=> b!608974 (= res!264214 (matchR!652 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260169))))))))

(assert (= (and d!214607 c!112733) b!608968))

(assert (= (and d!214607 (not c!112733)) b!608971))

(assert (= (and b!608971 (not res!264216)) b!608972))

(assert (= (and d!214607 (not res!264217)) b!608974))

(assert (= (and b!608974 res!264214) b!608970))

(assert (= (and b!608970 res!264218) b!608973))

(assert (= (and b!608973 res!264212) b!608967))

(assert (= (and b!608967 res!264215) b!608969))

(assert (= (and b!608969 res!264213) b!608966))

(declare-fun m!876277 () Bool)

(assert (=> b!608972 m!876277))

(assert (=> b!608972 m!876147))

(assert (=> b!608972 m!876277))

(assert (=> b!608972 m!876147))

(declare-fun m!876279 () Bool)

(assert (=> b!608972 m!876279))

(declare-fun m!876281 () Bool)

(assert (=> b!608972 m!876281))

(declare-fun m!876283 () Bool)

(assert (=> b!608974 m!876283))

(declare-fun m!876285 () Bool)

(assert (=> b!608974 m!876285))

(assert (=> b!608974 m!876285))

(declare-fun m!876287 () Bool)

(assert (=> b!608974 m!876287))

(assert (=> b!608974 m!876287))

(declare-fun m!876289 () Bool)

(assert (=> b!608974 m!876289))

(assert (=> b!608969 m!876283))

(declare-fun m!876291 () Bool)

(assert (=> b!608969 m!876291))

(assert (=> b!608969 m!876291))

(declare-fun m!876293 () Bool)

(assert (=> b!608969 m!876293))

(assert (=> b!608970 m!876283))

(assert (=> b!608970 m!876285))

(assert (=> b!608970 m!876285))

(assert (=> b!608970 m!876287))

(assert (=> b!608970 m!876287))

(declare-fun m!876295 () Bool)

(assert (=> b!608970 m!876295))

(assert (=> b!608967 m!876283))

(assert (=> b!608973 m!876283))

(declare-fun m!876297 () Bool)

(assert (=> b!608973 m!876297))

(assert (=> b!608973 m!876147))

(assert (=> b!608966 m!876283))

(declare-fun m!876299 () Bool)

(assert (=> b!608966 m!876299))

(declare-fun m!876301 () Bool)

(assert (=> d!214607 m!876301))

(declare-fun m!876303 () Bool)

(assert (=> d!214607 m!876303))

(declare-fun m!876305 () Bool)

(assert (=> d!214607 m!876305))

(assert (=> d!214607 m!875665))

(declare-fun m!876307 () Bool)

(assert (=> b!608971 m!876307))

(assert (=> b!608971 m!876307))

(declare-fun m!876309 () Bool)

(assert (=> b!608971 m!876309))

(declare-fun m!876311 () Bool)

(assert (=> b!608971 m!876311))

(assert (=> b!608971 m!876277))

(assert (=> b!608971 m!876307))

(declare-fun m!876313 () Bool)

(assert (=> b!608971 m!876313))

(assert (=> b!608971 m!876307))

(declare-fun m!876315 () Bool)

(assert (=> b!608971 m!876315))

(assert (=> b!608971 m!876147))

(assert (=> b!608971 m!876277))

(assert (=> b!608971 m!876147))

(assert (=> b!608971 m!876279))

(declare-fun m!876317 () Bool)

(assert (=> b!608971 m!876317))

(assert (=> b!608463 d!214607))

(declare-fun d!214609 () Bool)

(assert (=> d!214609 (= suffix!1342 lt!259984)))

(declare-fun lt!260172 () Unit!11106)

(declare-fun choose!4472 (List!6090 List!6090 List!6090 List!6090 List!6090) Unit!11106)

(assert (=> d!214609 (= lt!260172 (choose!4472 lt!259989 suffix!1342 lt!259989 lt!259984 lt!259979))))

(assert (=> d!214609 (isPrefix!843 lt!259989 lt!259979)))

(assert (=> d!214609 (= (lemmaSamePrefixThenSameSuffix!556 lt!259989 suffix!1342 lt!259989 lt!259984 lt!259979) lt!260172)))

(declare-fun bs!71474 () Bool)

(assert (= bs!71474 d!214609))

(declare-fun m!876319 () Bool)

(assert (=> bs!71474 m!876319))

(declare-fun m!876321 () Bool)

(assert (=> bs!71474 m!876321))

(assert (=> b!608463 d!214609))

(declare-fun d!214611 () Bool)

(assert (=> d!214611 (= (maxPrefixOneRule!462 thiss!22590 (rule!2001 token!491) lt!259979) (Some!1565 (tuple2!6955 (Token!2167 (apply!1468 (transformation!1215 (rule!2001 token!491)) (seqFromList!1391 lt!259989)) (rule!2001 token!491) (size!4784 lt!259989) lt!259989) suffix!1342)))))

(declare-fun lt!260173 () Unit!11106)

(assert (=> d!214611 (= lt!260173 (choose!4469 thiss!22590 rules!3103 lt!259989 lt!259979 suffix!1342 (rule!2001 token!491)))))

(assert (=> d!214611 (not (isEmpty!4389 rules!3103))))

(assert (=> d!214611 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!168 thiss!22590 rules!3103 lt!259989 lt!259979 suffix!1342 (rule!2001 token!491)) lt!260173)))

(declare-fun bs!71475 () Bool)

(assert (= bs!71475 d!214611))

(assert (=> bs!71475 m!875631))

(assert (=> bs!71475 m!875651))

(declare-fun m!876323 () Bool)

(assert (=> bs!71475 m!876323))

(assert (=> bs!71475 m!875631))

(assert (=> bs!71475 m!875633))

(assert (=> bs!71475 m!875597))

(assert (=> bs!71475 m!875621))

(assert (=> b!608463 d!214611))

(declare-fun d!214613 () Bool)

(declare-fun lt!260176 () List!6090)

(assert (=> d!214613 (= (++!1703 lt!259989 lt!260176) lt!259979)))

(declare-fun e!369045 () List!6090)

(assert (=> d!214613 (= lt!260176 e!369045)))

(declare-fun c!112736 () Bool)

(assert (=> d!214613 (= c!112736 ((_ is Cons!6080) lt!259989))))

(assert (=> d!214613 (>= (size!4784 lt!259979) (size!4784 lt!259989))))

(assert (=> d!214613 (= (getSuffix!360 lt!259979 lt!259989) lt!260176)))

(declare-fun b!608979 () Bool)

(assert (=> b!608979 (= e!369045 (getSuffix!360 (tail!817 lt!259979) (t!80727 lt!259989)))))

(declare-fun b!608980 () Bool)

(assert (=> b!608980 (= e!369045 lt!259979)))

(assert (= (and d!214613 c!112736) b!608979))

(assert (= (and d!214613 (not c!112736)) b!608980))

(declare-fun m!876325 () Bool)

(assert (=> d!214613 m!876325))

(assert (=> d!214613 m!876121))

(assert (=> d!214613 m!875651))

(declare-fun m!876327 () Bool)

(assert (=> b!608979 m!876327))

(assert (=> b!608979 m!876327))

(declare-fun m!876329 () Bool)

(assert (=> b!608979 m!876329))

(assert (=> b!608463 d!214613))

(declare-fun d!214615 () Bool)

(assert (=> d!214615 (= (apply!1468 (transformation!1215 (rule!2001 token!491)) (seqFromList!1391 lt!259989)) (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 token!491))) (seqFromList!1391 lt!259989)))))

(declare-fun b_lambda!24149 () Bool)

(assert (=> (not b_lambda!24149) (not d!214615)))

(declare-fun t!80782 () Bool)

(declare-fun tb!53219 () Bool)

(assert (=> (and b!608469 (= (toValue!2122 (transformation!1215 (rule!2001 token!491))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))) t!80782) tb!53219))

(declare-fun result!59912 () Bool)

(assert (=> tb!53219 (= result!59912 (inv!21 (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 token!491))) (seqFromList!1391 lt!259989))))))

(declare-fun m!876331 () Bool)

(assert (=> tb!53219 m!876331))

(assert (=> d!214615 t!80782))

(declare-fun b_and!60303 () Bool)

(assert (= b_and!60275 (and (=> t!80782 result!59912) b_and!60303)))

(declare-fun tb!53221 () Bool)

(declare-fun t!80784 () Bool)

(assert (=> (and b!608478 (= (toValue!2122 (transformation!1215 (h!11482 rules!3103))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))) t!80784) tb!53221))

(declare-fun result!59914 () Bool)

(assert (= result!59914 result!59912))

(assert (=> d!214615 t!80784))

(declare-fun b_and!60305 () Bool)

(assert (= b_and!60277 (and (=> t!80784 result!59914) b_and!60305)))

(assert (=> d!214615 m!875631))

(declare-fun m!876333 () Bool)

(assert (=> d!214615 m!876333))

(assert (=> b!608463 d!214615))

(declare-fun b!608981 () Bool)

(declare-fun e!369047 () Bool)

(declare-fun lt!260181 () Option!1566)

(assert (=> b!608981 (= e!369047 (= (size!4783 (_1!3741 (get!2337 lt!260181))) (size!4784 (originalCharacters!1254 (_1!3741 (get!2337 lt!260181))))))))

(declare-fun b!608982 () Bool)

(declare-fun res!264222 () Bool)

(assert (=> b!608982 (=> (not res!264222) (not e!369047))))

(assert (=> b!608982 (= res!264222 (= (rule!2001 (_1!3741 (get!2337 lt!260181))) (rule!2001 token!491)))))

(declare-fun b!608983 () Bool)

(declare-fun e!369048 () Option!1566)

(assert (=> b!608983 (= e!369048 None!1565)))

(declare-fun b!608984 () Bool)

(declare-fun res!264220 () Bool)

(assert (=> b!608984 (=> (not res!264220) (not e!369047))))

(assert (=> b!608984 (= res!264220 (= (value!39494 (_1!3741 (get!2337 lt!260181))) (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (get!2337 lt!260181)))) (seqFromList!1391 (originalCharacters!1254 (_1!3741 (get!2337 lt!260181)))))))))

(declare-fun d!214617 () Bool)

(declare-fun e!369049 () Bool)

(assert (=> d!214617 e!369049))

(declare-fun res!264224 () Bool)

(assert (=> d!214617 (=> res!264224 e!369049)))

(assert (=> d!214617 (= res!264224 (isEmpty!4392 lt!260181))))

(assert (=> d!214617 (= lt!260181 e!369048)))

(declare-fun c!112737 () Bool)

(declare-fun lt!260180 () tuple2!6958)

(assert (=> d!214617 (= c!112737 (isEmpty!4390 (_1!3743 lt!260180)))))

(assert (=> d!214617 (= lt!260180 (findLongestMatch!185 (regex!1215 (rule!2001 token!491)) lt!259979))))

(assert (=> d!214617 (ruleValid!413 thiss!22590 (rule!2001 token!491))))

(assert (=> d!214617 (= (maxPrefixOneRule!462 thiss!22590 (rule!2001 token!491) lt!259979) lt!260181)))

(declare-fun b!608985 () Bool)

(declare-fun res!264225 () Bool)

(assert (=> b!608985 (=> (not res!264225) (not e!369047))))

(assert (=> b!608985 (= res!264225 (= (++!1703 (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260181)))) (_2!3741 (get!2337 lt!260181))) lt!259979))))

(declare-fun b!608986 () Bool)

(assert (=> b!608986 (= e!369048 (Some!1565 (tuple2!6955 (Token!2167 (apply!1468 (transformation!1215 (rule!2001 token!491)) (seqFromList!1391 (_1!3743 lt!260180))) (rule!2001 token!491) (size!4786 (seqFromList!1391 (_1!3743 lt!260180))) (_1!3743 lt!260180)) (_2!3743 lt!260180))))))

(declare-fun lt!260179 () Unit!11106)

(assert (=> b!608986 (= lt!260179 (longestMatchIsAcceptedByMatchOrIsEmpty!190 (regex!1215 (rule!2001 token!491)) lt!259979))))

(declare-fun res!264223 () Bool)

(assert (=> b!608986 (= res!264223 (isEmpty!4390 (_1!3743 (findLongestMatchInner!206 (regex!1215 (rule!2001 token!491)) Nil!6080 (size!4784 Nil!6080) lt!259979 lt!259979 (size!4784 lt!259979)))))))

(declare-fun e!369050 () Bool)

(assert (=> b!608986 (=> res!264223 e!369050)))

(assert (=> b!608986 e!369050))

(declare-fun lt!260177 () Unit!11106)

(assert (=> b!608986 (= lt!260177 lt!260179)))

(declare-fun lt!260178 () Unit!11106)

(assert (=> b!608986 (= lt!260178 (lemmaSemiInverse!245 (transformation!1215 (rule!2001 token!491)) (seqFromList!1391 (_1!3743 lt!260180))))))

(declare-fun b!608987 () Bool)

(assert (=> b!608987 (= e!369050 (matchR!652 (regex!1215 (rule!2001 token!491)) (_1!3743 (findLongestMatchInner!206 (regex!1215 (rule!2001 token!491)) Nil!6080 (size!4784 Nil!6080) lt!259979 lt!259979 (size!4784 lt!259979)))))))

(declare-fun b!608988 () Bool)

(declare-fun res!264219 () Bool)

(assert (=> b!608988 (=> (not res!264219) (not e!369047))))

(assert (=> b!608988 (= res!264219 (< (size!4784 (_2!3741 (get!2337 lt!260181))) (size!4784 lt!259979)))))

(declare-fun b!608989 () Bool)

(assert (=> b!608989 (= e!369049 e!369047)))

(declare-fun res!264221 () Bool)

(assert (=> b!608989 (=> (not res!264221) (not e!369047))))

(assert (=> b!608989 (= res!264221 (matchR!652 (regex!1215 (rule!2001 token!491)) (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260181))))))))

(assert (= (and d!214617 c!112737) b!608983))

(assert (= (and d!214617 (not c!112737)) b!608986))

(assert (= (and b!608986 (not res!264223)) b!608987))

(assert (= (and d!214617 (not res!264224)) b!608989))

(assert (= (and b!608989 res!264221) b!608985))

(assert (= (and b!608985 res!264225) b!608988))

(assert (= (and b!608988 res!264219) b!608982))

(assert (= (and b!608982 res!264222) b!608984))

(assert (= (and b!608984 res!264220) b!608981))

(assert (=> b!608987 m!876277))

(assert (=> b!608987 m!876121))

(assert (=> b!608987 m!876277))

(assert (=> b!608987 m!876121))

(declare-fun m!876335 () Bool)

(assert (=> b!608987 m!876335))

(declare-fun m!876337 () Bool)

(assert (=> b!608987 m!876337))

(declare-fun m!876339 () Bool)

(assert (=> b!608989 m!876339))

(declare-fun m!876341 () Bool)

(assert (=> b!608989 m!876341))

(assert (=> b!608989 m!876341))

(declare-fun m!876343 () Bool)

(assert (=> b!608989 m!876343))

(assert (=> b!608989 m!876343))

(declare-fun m!876345 () Bool)

(assert (=> b!608989 m!876345))

(assert (=> b!608984 m!876339))

(declare-fun m!876347 () Bool)

(assert (=> b!608984 m!876347))

(assert (=> b!608984 m!876347))

(declare-fun m!876349 () Bool)

(assert (=> b!608984 m!876349))

(assert (=> b!608985 m!876339))

(assert (=> b!608985 m!876341))

(assert (=> b!608985 m!876341))

(assert (=> b!608985 m!876343))

(assert (=> b!608985 m!876343))

(declare-fun m!876351 () Bool)

(assert (=> b!608985 m!876351))

(assert (=> b!608982 m!876339))

(assert (=> b!608988 m!876339))

(declare-fun m!876353 () Bool)

(assert (=> b!608988 m!876353))

(assert (=> b!608988 m!876121))

(assert (=> b!608981 m!876339))

(declare-fun m!876355 () Bool)

(assert (=> b!608981 m!876355))

(declare-fun m!876357 () Bool)

(assert (=> d!214617 m!876357))

(declare-fun m!876359 () Bool)

(assert (=> d!214617 m!876359))

(declare-fun m!876361 () Bool)

(assert (=> d!214617 m!876361))

(assert (=> d!214617 m!875645))

(declare-fun m!876363 () Bool)

(assert (=> b!608986 m!876363))

(assert (=> b!608986 m!876363))

(declare-fun m!876365 () Bool)

(assert (=> b!608986 m!876365))

(declare-fun m!876367 () Bool)

(assert (=> b!608986 m!876367))

(assert (=> b!608986 m!876277))

(assert (=> b!608986 m!876363))

(declare-fun m!876369 () Bool)

(assert (=> b!608986 m!876369))

(assert (=> b!608986 m!876363))

(declare-fun m!876371 () Bool)

(assert (=> b!608986 m!876371))

(assert (=> b!608986 m!876121))

(assert (=> b!608986 m!876277))

(assert (=> b!608986 m!876121))

(assert (=> b!608986 m!876335))

(declare-fun m!876373 () Bool)

(assert (=> b!608986 m!876373))

(assert (=> b!608463 d!214617))

(declare-fun d!214619 () Bool)

(declare-fun fromListB!616 (List!6090) BalanceConc!3872)

(assert (=> d!214619 (= (seqFromList!1391 lt!259989) (fromListB!616 lt!259989))))

(declare-fun bs!71476 () Bool)

(assert (= bs!71476 d!214619))

(declare-fun m!876375 () Bool)

(assert (=> bs!71476 m!876375))

(assert (=> b!608463 d!214619))

(declare-fun b!609000 () Bool)

(declare-fun e!369059 () Bool)

(declare-fun e!369057 () Bool)

(assert (=> b!609000 (= e!369059 e!369057)))

(declare-fun c!112742 () Bool)

(assert (=> b!609000 (= c!112742 ((_ is IntegerValue!3718) (value!39494 token!491)))))

(declare-fun b!609001 () Bool)

(declare-fun e!369058 () Bool)

(declare-fun inv!15 (TokenValue!1239) Bool)

(assert (=> b!609001 (= e!369058 (inv!15 (value!39494 token!491)))))

(declare-fun b!609002 () Bool)

(declare-fun inv!16 (TokenValue!1239) Bool)

(assert (=> b!609002 (= e!369059 (inv!16 (value!39494 token!491)))))

(declare-fun b!609003 () Bool)

(declare-fun res!264228 () Bool)

(assert (=> b!609003 (=> res!264228 e!369058)))

(assert (=> b!609003 (= res!264228 (not ((_ is IntegerValue!3719) (value!39494 token!491))))))

(assert (=> b!609003 (= e!369057 e!369058)))

(declare-fun b!609004 () Bool)

(declare-fun inv!17 (TokenValue!1239) Bool)

(assert (=> b!609004 (= e!369057 (inv!17 (value!39494 token!491)))))

(declare-fun d!214621 () Bool)

(declare-fun c!112743 () Bool)

(assert (=> d!214621 (= c!112743 ((_ is IntegerValue!3717) (value!39494 token!491)))))

(assert (=> d!214621 (= (inv!21 (value!39494 token!491)) e!369059)))

(assert (= (and d!214621 c!112743) b!609002))

(assert (= (and d!214621 (not c!112743)) b!609000))

(assert (= (and b!609000 c!112742) b!609004))

(assert (= (and b!609000 (not c!112742)) b!609003))

(assert (= (and b!609003 (not res!264228)) b!609001))

(declare-fun m!876377 () Bool)

(assert (=> b!609001 m!876377))

(declare-fun m!876379 () Bool)

(assert (=> b!609002 m!876379))

(declare-fun m!876381 () Bool)

(assert (=> b!609004 m!876381))

(assert (=> b!608465 d!214621))

(declare-fun d!214623 () Bool)

(assert (=> d!214623 (= (isDefined!1377 lt!260001) (not (isEmpty!4392 lt!260001)))))

(declare-fun bs!71477 () Bool)

(assert (= bs!71477 d!214623))

(declare-fun m!876383 () Bool)

(assert (=> bs!71477 m!876383))

(assert (=> b!608466 d!214623))

(declare-fun d!214625 () Bool)

(assert (=> d!214625 (= (isEmpty!4390 input!2705) ((_ is Nil!6080) input!2705))))

(assert (=> b!608456 d!214625))

(declare-fun b!609006 () Bool)

(declare-fun e!369060 () List!6090)

(assert (=> b!609006 (= e!369060 (Cons!6080 (h!11481 lt!259975) (++!1703 (t!80727 lt!259975) lt!259998)))))

(declare-fun b!609007 () Bool)

(declare-fun res!264229 () Bool)

(declare-fun e!369061 () Bool)

(assert (=> b!609007 (=> (not res!264229) (not e!369061))))

(declare-fun lt!260182 () List!6090)

(assert (=> b!609007 (= res!264229 (= (size!4784 lt!260182) (+ (size!4784 lt!259975) (size!4784 lt!259998))))))

(declare-fun b!609008 () Bool)

(assert (=> b!609008 (= e!369061 (or (not (= lt!259998 Nil!6080)) (= lt!260182 lt!259975)))))

(declare-fun b!609005 () Bool)

(assert (=> b!609005 (= e!369060 lt!259998)))

(declare-fun d!214627 () Bool)

(assert (=> d!214627 e!369061))

(declare-fun res!264230 () Bool)

(assert (=> d!214627 (=> (not res!264230) (not e!369061))))

(assert (=> d!214627 (= res!264230 (= (content!1107 lt!260182) ((_ map or) (content!1107 lt!259975) (content!1107 lt!259998))))))

(assert (=> d!214627 (= lt!260182 e!369060)))

(declare-fun c!112744 () Bool)

(assert (=> d!214627 (= c!112744 ((_ is Nil!6080) lt!259975))))

(assert (=> d!214627 (= (++!1703 lt!259975 lt!259998) lt!260182)))

(assert (= (and d!214627 c!112744) b!609005))

(assert (= (and d!214627 (not c!112744)) b!609006))

(assert (= (and d!214627 res!264230) b!609007))

(assert (= (and b!609007 res!264229) b!609008))

(declare-fun m!876385 () Bool)

(assert (=> b!609006 m!876385))

(declare-fun m!876387 () Bool)

(assert (=> b!609007 m!876387))

(assert (=> b!609007 m!875653))

(declare-fun m!876389 () Bool)

(assert (=> b!609007 m!876389))

(declare-fun m!876391 () Bool)

(assert (=> d!214627 m!876391))

(declare-fun m!876393 () Bool)

(assert (=> d!214627 m!876393))

(declare-fun m!876395 () Bool)

(assert (=> d!214627 m!876395))

(assert (=> b!608457 d!214627))

(declare-fun d!214629 () Bool)

(declare-fun lt!260183 () Bool)

(assert (=> d!214629 (= lt!260183 (select (content!1110 rules!3103) (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(declare-fun e!369063 () Bool)

(assert (=> d!214629 (= lt!260183 e!369063)))

(declare-fun res!264231 () Bool)

(assert (=> d!214629 (=> (not res!264231) (not e!369063))))

(assert (=> d!214629 (= res!264231 ((_ is Cons!6081) rules!3103))))

(assert (=> d!214629 (= (contains!1431 rules!3103 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!260183)))

(declare-fun b!609009 () Bool)

(declare-fun e!369062 () Bool)

(assert (=> b!609009 (= e!369063 e!369062)))

(declare-fun res!264232 () Bool)

(assert (=> b!609009 (=> res!264232 e!369062)))

(assert (=> b!609009 (= res!264232 (= (h!11482 rules!3103) (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(declare-fun b!609010 () Bool)

(assert (=> b!609010 (= e!369062 (contains!1431 (t!80728 rules!3103) (rule!2001 (_1!3741 (v!16470 lt!260001)))))))

(assert (= (and d!214629 res!264231) b!609009))

(assert (= (and b!609009 (not res!264232)) b!609010))

(assert (=> d!214629 m!876261))

(declare-fun m!876397 () Bool)

(assert (=> d!214629 m!876397))

(declare-fun m!876399 () Bool)

(assert (=> b!609010 m!876399))

(assert (=> b!608479 d!214629))

(declare-fun d!214631 () Bool)

(declare-fun lt!260184 () List!6090)

(assert (=> d!214631 (= (++!1703 input!2705 lt!260184) input!2705)))

(declare-fun e!369064 () List!6090)

(assert (=> d!214631 (= lt!260184 e!369064)))

(declare-fun c!112745 () Bool)

(assert (=> d!214631 (= c!112745 ((_ is Cons!6080) input!2705))))

(assert (=> d!214631 (>= (size!4784 input!2705) (size!4784 input!2705))))

(assert (=> d!214631 (= (getSuffix!360 input!2705 input!2705) lt!260184)))

(declare-fun b!609011 () Bool)

(assert (=> b!609011 (= e!369064 (getSuffix!360 (tail!817 input!2705) (t!80727 input!2705)))))

(declare-fun b!609012 () Bool)

(assert (=> b!609012 (= e!369064 input!2705)))

(assert (= (and d!214631 c!112745) b!609011))

(assert (= (and d!214631 (not c!112745)) b!609012))

(declare-fun m!876401 () Bool)

(assert (=> d!214631 m!876401))

(assert (=> d!214631 m!876147))

(assert (=> d!214631 m!876147))

(assert (=> b!609011 m!876225))

(assert (=> b!609011 m!876225))

(declare-fun m!876403 () Bool)

(assert (=> b!609011 m!876403))

(assert (=> b!608458 d!214631))

(declare-fun b!609013 () Bool)

(declare-fun e!369065 () Bool)

(declare-fun e!369066 () Bool)

(assert (=> b!609013 (= e!369065 e!369066)))

(declare-fun res!264233 () Bool)

(assert (=> b!609013 (=> (not res!264233) (not e!369066))))

(assert (=> b!609013 (= res!264233 (not ((_ is Nil!6080) input!2705)))))

(declare-fun b!609014 () Bool)

(declare-fun res!264235 () Bool)

(assert (=> b!609014 (=> (not res!264235) (not e!369066))))

(assert (=> b!609014 (= res!264235 (= (head!1288 lt!259989) (head!1288 input!2705)))))

(declare-fun b!609015 () Bool)

(assert (=> b!609015 (= e!369066 (isPrefix!843 (tail!817 lt!259989) (tail!817 input!2705)))))

(declare-fun b!609016 () Bool)

(declare-fun e!369067 () Bool)

(assert (=> b!609016 (= e!369067 (>= (size!4784 input!2705) (size!4784 lt!259989)))))

(declare-fun d!214633 () Bool)

(assert (=> d!214633 e!369067))

(declare-fun res!264236 () Bool)

(assert (=> d!214633 (=> res!264236 e!369067)))

(declare-fun lt!260185 () Bool)

(assert (=> d!214633 (= res!264236 (not lt!260185))))

(assert (=> d!214633 (= lt!260185 e!369065)))

(declare-fun res!264234 () Bool)

(assert (=> d!214633 (=> res!264234 e!369065)))

(assert (=> d!214633 (= res!264234 ((_ is Nil!6080) lt!259989))))

(assert (=> d!214633 (= (isPrefix!843 lt!259989 input!2705) lt!260185)))

(assert (= (and d!214633 (not res!264234)) b!609013))

(assert (= (and b!609013 res!264233) b!609014))

(assert (= (and b!609014 res!264235) b!609015))

(assert (= (and d!214633 (not res!264236)) b!609016))

(declare-fun m!876405 () Bool)

(assert (=> b!609014 m!876405))

(assert (=> b!609014 m!876229))

(declare-fun m!876407 () Bool)

(assert (=> b!609015 m!876407))

(assert (=> b!609015 m!876225))

(assert (=> b!609015 m!876407))

(assert (=> b!609015 m!876225))

(declare-fun m!876409 () Bool)

(assert (=> b!609015 m!876409))

(assert (=> b!609016 m!876147))

(assert (=> b!609016 m!875651))

(assert (=> b!608459 d!214633))

(declare-fun b!609017 () Bool)

(declare-fun e!369070 () Bool)

(declare-fun e!369069 () Bool)

(assert (=> b!609017 (= e!369070 e!369069)))

(declare-fun res!264243 () Bool)

(assert (=> b!609017 (=> (not res!264243) (not e!369069))))

(declare-fun lt!260186 () Option!1566)

(assert (=> b!609017 (= res!264243 (isDefined!1377 lt!260186))))

(declare-fun b!609018 () Bool)

(declare-fun res!264242 () Bool)

(assert (=> b!609018 (=> (not res!264242) (not e!369069))))

(assert (=> b!609018 (= res!264242 (= (value!39494 (_1!3741 (get!2337 lt!260186))) (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (get!2337 lt!260186)))) (seqFromList!1391 (originalCharacters!1254 (_1!3741 (get!2337 lt!260186)))))))))

(declare-fun b!609019 () Bool)

(declare-fun e!369068 () Option!1566)

(declare-fun call!40825 () Option!1566)

(assert (=> b!609019 (= e!369068 call!40825)))

(declare-fun b!609020 () Bool)

(declare-fun res!264241 () Bool)

(assert (=> b!609020 (=> (not res!264241) (not e!369069))))

(assert (=> b!609020 (= res!264241 (= (++!1703 (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260186)))) (_2!3741 (get!2337 lt!260186))) input!2705))))

(declare-fun d!214635 () Bool)

(assert (=> d!214635 e!369070))

(declare-fun res!264239 () Bool)

(assert (=> d!214635 (=> res!264239 e!369070)))

(assert (=> d!214635 (= res!264239 (isEmpty!4392 lt!260186))))

(assert (=> d!214635 (= lt!260186 e!369068)))

(declare-fun c!112746 () Bool)

(assert (=> d!214635 (= c!112746 (and ((_ is Cons!6081) rules!3103) ((_ is Nil!6081) (t!80728 rules!3103))))))

(declare-fun lt!260188 () Unit!11106)

(declare-fun lt!260189 () Unit!11106)

(assert (=> d!214635 (= lt!260188 lt!260189)))

(assert (=> d!214635 (isPrefix!843 input!2705 input!2705)))

(assert (=> d!214635 (= lt!260189 (lemmaIsPrefixRefl!579 input!2705 input!2705))))

(assert (=> d!214635 (rulesValidInductive!458 thiss!22590 rules!3103)))

(assert (=> d!214635 (= (maxPrefix!799 thiss!22590 rules!3103 input!2705) lt!260186)))

(declare-fun b!609021 () Bool)

(assert (=> b!609021 (= e!369069 (contains!1431 rules!3103 (rule!2001 (_1!3741 (get!2337 lt!260186)))))))

(declare-fun bm!40820 () Bool)

(assert (=> bm!40820 (= call!40825 (maxPrefixOneRule!462 thiss!22590 (h!11482 rules!3103) input!2705))))

(declare-fun b!609022 () Bool)

(declare-fun res!264237 () Bool)

(assert (=> b!609022 (=> (not res!264237) (not e!369069))))

(assert (=> b!609022 (= res!264237 (= (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260186)))) (originalCharacters!1254 (_1!3741 (get!2337 lt!260186)))))))

(declare-fun b!609023 () Bool)

(declare-fun res!264240 () Bool)

(assert (=> b!609023 (=> (not res!264240) (not e!369069))))

(assert (=> b!609023 (= res!264240 (< (size!4784 (_2!3741 (get!2337 lt!260186))) (size!4784 input!2705)))))

(declare-fun b!609024 () Bool)

(declare-fun lt!260190 () Option!1566)

(declare-fun lt!260187 () Option!1566)

(assert (=> b!609024 (= e!369068 (ite (and ((_ is None!1565) lt!260190) ((_ is None!1565) lt!260187)) None!1565 (ite ((_ is None!1565) lt!260187) lt!260190 (ite ((_ is None!1565) lt!260190) lt!260187 (ite (>= (size!4783 (_1!3741 (v!16470 lt!260190))) (size!4783 (_1!3741 (v!16470 lt!260187)))) lt!260190 lt!260187)))))))

(assert (=> b!609024 (= lt!260190 call!40825)))

(assert (=> b!609024 (= lt!260187 (maxPrefix!799 thiss!22590 (t!80728 rules!3103) input!2705))))

(declare-fun b!609025 () Bool)

(declare-fun res!264238 () Bool)

(assert (=> b!609025 (=> (not res!264238) (not e!369069))))

(assert (=> b!609025 (= res!264238 (matchR!652 (regex!1215 (rule!2001 (_1!3741 (get!2337 lt!260186)))) (list!2558 (charsOf!844 (_1!3741 (get!2337 lt!260186))))))))

(assert (= (and d!214635 c!112746) b!609019))

(assert (= (and d!214635 (not c!112746)) b!609024))

(assert (= (or b!609019 b!609024) bm!40820))

(assert (= (and d!214635 (not res!264239)) b!609017))

(assert (= (and b!609017 res!264243) b!609022))

(assert (= (and b!609022 res!264237) b!609023))

(assert (= (and b!609023 res!264240) b!609020))

(assert (= (and b!609020 res!264241) b!609018))

(assert (= (and b!609018 res!264242) b!609025))

(assert (= (and b!609025 res!264238) b!609021))

(declare-fun m!876411 () Bool)

(assert (=> b!609022 m!876411))

(declare-fun m!876413 () Bool)

(assert (=> b!609022 m!876413))

(assert (=> b!609022 m!876413))

(declare-fun m!876415 () Bool)

(assert (=> b!609022 m!876415))

(declare-fun m!876417 () Bool)

(assert (=> b!609017 m!876417))

(assert (=> b!609021 m!876411))

(declare-fun m!876419 () Bool)

(assert (=> b!609021 m!876419))

(assert (=> b!609023 m!876411))

(declare-fun m!876421 () Bool)

(assert (=> b!609023 m!876421))

(assert (=> b!609023 m!876147))

(declare-fun m!876423 () Bool)

(assert (=> b!609024 m!876423))

(assert (=> b!609025 m!876411))

(assert (=> b!609025 m!876413))

(assert (=> b!609025 m!876413))

(assert (=> b!609025 m!876415))

(assert (=> b!609025 m!876415))

(declare-fun m!876425 () Bool)

(assert (=> b!609025 m!876425))

(assert (=> b!609018 m!876411))

(declare-fun m!876427 () Bool)

(assert (=> b!609018 m!876427))

(assert (=> b!609018 m!876427))

(declare-fun m!876429 () Bool)

(assert (=> b!609018 m!876429))

(declare-fun m!876431 () Bool)

(assert (=> d!214635 m!876431))

(assert (=> d!214635 m!875657))

(assert (=> d!214635 m!875687))

(assert (=> d!214635 m!876137))

(assert (=> b!609020 m!876411))

(assert (=> b!609020 m!876413))

(assert (=> b!609020 m!876413))

(assert (=> b!609020 m!876415))

(assert (=> b!609020 m!876415))

(declare-fun m!876433 () Bool)

(assert (=> b!609020 m!876433))

(declare-fun m!876435 () Bool)

(assert (=> bm!40820 m!876435))

(assert (=> b!608480 d!214635))

(declare-fun d!214637 () Bool)

(assert (=> d!214637 (= (inv!7732 (tag!1477 (rule!2001 token!491))) (= (mod (str.len (value!39493 (tag!1477 (rule!2001 token!491)))) 2) 0))))

(assert (=> b!608481 d!214637))

(declare-fun d!214639 () Bool)

(declare-fun res!264244 () Bool)

(declare-fun e!369071 () Bool)

(assert (=> d!214639 (=> (not res!264244) (not e!369071))))

(assert (=> d!214639 (= res!264244 (semiInverseModEq!489 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))))))

(assert (=> d!214639 (= (inv!7736 (transformation!1215 (rule!2001 token!491))) e!369071)))

(declare-fun b!609026 () Bool)

(assert (=> b!609026 (= e!369071 (equivClasses!472 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))))))

(assert (= (and d!214639 res!264244) b!609026))

(declare-fun m!876437 () Bool)

(assert (=> d!214639 m!876437))

(declare-fun m!876439 () Bool)

(assert (=> b!609026 m!876439))

(assert (=> b!608481 d!214639))

(declare-fun b!609027 () Bool)

(declare-fun e!369072 () Bool)

(declare-fun e!369073 () Bool)

(assert (=> b!609027 (= e!369072 e!369073)))

(declare-fun res!264245 () Bool)

(assert (=> b!609027 (=> (not res!264245) (not e!369073))))

(assert (=> b!609027 (= res!264245 (not ((_ is Nil!6080) lt!259994)))))

(declare-fun b!609028 () Bool)

(declare-fun res!264247 () Bool)

(assert (=> b!609028 (=> (not res!264247) (not e!369073))))

(assert (=> b!609028 (= res!264247 (= (head!1288 lt!259989) (head!1288 lt!259994)))))

(declare-fun b!609029 () Bool)

(assert (=> b!609029 (= e!369073 (isPrefix!843 (tail!817 lt!259989) (tail!817 lt!259994)))))

(declare-fun b!609030 () Bool)

(declare-fun e!369074 () Bool)

(assert (=> b!609030 (= e!369074 (>= (size!4784 lt!259994) (size!4784 lt!259989)))))

(declare-fun d!214641 () Bool)

(assert (=> d!214641 e!369074))

(declare-fun res!264248 () Bool)

(assert (=> d!214641 (=> res!264248 e!369074)))

(declare-fun lt!260191 () Bool)

(assert (=> d!214641 (= res!264248 (not lt!260191))))

(assert (=> d!214641 (= lt!260191 e!369072)))

(declare-fun res!264246 () Bool)

(assert (=> d!214641 (=> res!264246 e!369072)))

(assert (=> d!214641 (= res!264246 ((_ is Nil!6080) lt!259989))))

(assert (=> d!214641 (= (isPrefix!843 lt!259989 lt!259994) lt!260191)))

(assert (= (and d!214641 (not res!264246)) b!609027))

(assert (= (and b!609027 res!264245) b!609028))

(assert (= (and b!609028 res!264247) b!609029))

(assert (= (and d!214641 (not res!264248)) b!609030))

(assert (=> b!609028 m!876405))

(declare-fun m!876441 () Bool)

(assert (=> b!609028 m!876441))

(assert (=> b!609029 m!876407))

(declare-fun m!876443 () Bool)

(assert (=> b!609029 m!876443))

(assert (=> b!609029 m!876407))

(assert (=> b!609029 m!876443))

(declare-fun m!876445 () Bool)

(assert (=> b!609029 m!876445))

(declare-fun m!876447 () Bool)

(assert (=> b!609030 m!876447))

(assert (=> b!609030 m!875651))

(assert (=> b!608460 d!214641))

(declare-fun d!214643 () Bool)

(assert (=> d!214643 (= (seqFromList!1391 lt!259975) (fromListB!616 lt!259975))))

(declare-fun bs!71478 () Bool)

(assert (= bs!71478 d!214643))

(declare-fun m!876449 () Bool)

(assert (=> bs!71478 m!876449))

(assert (=> b!608460 d!214643))

(declare-fun d!214645 () Bool)

(assert (=> d!214645 (isPrefix!843 lt!259975 (++!1703 lt!259975 (_2!3741 (v!16470 lt!260001))))))

(declare-fun lt!260194 () Unit!11106)

(declare-fun choose!4473 (List!6090 List!6090) Unit!11106)

(assert (=> d!214645 (= lt!260194 (choose!4473 lt!259975 (_2!3741 (v!16470 lt!260001))))))

(assert (=> d!214645 (= (lemmaConcatTwoListThenFirstIsPrefix!688 lt!259975 (_2!3741 (v!16470 lt!260001))) lt!260194)))

(declare-fun bs!71479 () Bool)

(assert (= bs!71479 d!214645))

(assert (=> bs!71479 m!875655))

(assert (=> bs!71479 m!875655))

(declare-fun m!876451 () Bool)

(assert (=> bs!71479 m!876451))

(declare-fun m!876453 () Bool)

(assert (=> bs!71479 m!876453))

(assert (=> b!608460 d!214645))

(declare-fun d!214647 () Bool)

(assert (=> d!214647 (= (_2!3741 (v!16470 lt!260001)) lt!259998)))

(declare-fun lt!260195 () Unit!11106)

(assert (=> d!214647 (= lt!260195 (choose!4472 lt!259975 (_2!3741 (v!16470 lt!260001)) lt!259975 lt!259998 input!2705))))

(assert (=> d!214647 (isPrefix!843 lt!259975 input!2705)))

(assert (=> d!214647 (= (lemmaSamePrefixThenSameSuffix!556 lt!259975 (_2!3741 (v!16470 lt!260001)) lt!259975 lt!259998 input!2705) lt!260195)))

(declare-fun bs!71480 () Bool)

(assert (= bs!71480 d!214647))

(declare-fun m!876455 () Bool)

(assert (=> bs!71480 m!876455))

(assert (=> bs!71480 m!875637))

(assert (=> b!608460 d!214647))

(declare-fun d!214649 () Bool)

(declare-fun lt!260196 () BalanceConc!3872)

(assert (=> d!214649 (= (list!2558 lt!260196) (originalCharacters!1254 (_1!3741 (v!16470 lt!260001))))))

(assert (=> d!214649 (= lt!260196 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (value!39494 (_1!3741 (v!16470 lt!260001)))))))

(assert (=> d!214649 (= (charsOf!844 (_1!3741 (v!16470 lt!260001))) lt!260196)))

(declare-fun b_lambda!24151 () Bool)

(assert (=> (not b_lambda!24151) (not d!214649)))

(declare-fun t!80786 () Bool)

(declare-fun tb!53223 () Bool)

(assert (=> (and b!608469 (= (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80786) tb!53223))

(declare-fun b!609031 () Bool)

(declare-fun e!369075 () Bool)

(declare-fun tp!188781 () Bool)

(assert (=> b!609031 (= e!369075 (and (inv!7739 (c!112662 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (value!39494 (_1!3741 (v!16470 lt!260001)))))) tp!188781))))

(declare-fun result!59916 () Bool)

(assert (=> tb!53223 (= result!59916 (and (inv!7740 (dynLambda!3529 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (value!39494 (_1!3741 (v!16470 lt!260001))))) e!369075))))

(assert (= tb!53223 b!609031))

(declare-fun m!876457 () Bool)

(assert (=> b!609031 m!876457))

(declare-fun m!876459 () Bool)

(assert (=> tb!53223 m!876459))

(assert (=> d!214649 t!80786))

(declare-fun b_and!60307 () Bool)

(assert (= b_and!60295 (and (=> t!80786 result!59916) b_and!60307)))

(declare-fun tb!53225 () Bool)

(declare-fun t!80788 () Bool)

(assert (=> (and b!608478 (= (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80788) tb!53225))

(declare-fun result!59918 () Bool)

(assert (= result!59918 result!59916))

(assert (=> d!214649 t!80788))

(declare-fun b_and!60309 () Bool)

(assert (= b_and!60297 (and (=> t!80788 result!59918) b_and!60309)))

(declare-fun m!876461 () Bool)

(assert (=> d!214649 m!876461))

(declare-fun m!876463 () Bool)

(assert (=> d!214649 m!876463))

(assert (=> b!608460 d!214649))

(declare-fun b!609032 () Bool)

(declare-fun e!369076 () Bool)

(declare-fun e!369077 () Bool)

(assert (=> b!609032 (= e!369076 e!369077)))

(declare-fun res!264249 () Bool)

(assert (=> b!609032 (=> (not res!264249) (not e!369077))))

(assert (=> b!609032 (= res!264249 (not ((_ is Nil!6080) input!2705)))))

(declare-fun b!609033 () Bool)

(declare-fun res!264251 () Bool)

(assert (=> b!609033 (=> (not res!264251) (not e!369077))))

(assert (=> b!609033 (= res!264251 (= (head!1288 input!2705) (head!1288 input!2705)))))

(declare-fun b!609034 () Bool)

(assert (=> b!609034 (= e!369077 (isPrefix!843 (tail!817 input!2705) (tail!817 input!2705)))))

(declare-fun b!609035 () Bool)

(declare-fun e!369078 () Bool)

(assert (=> b!609035 (= e!369078 (>= (size!4784 input!2705) (size!4784 input!2705)))))

(declare-fun d!214651 () Bool)

(assert (=> d!214651 e!369078))

(declare-fun res!264252 () Bool)

(assert (=> d!214651 (=> res!264252 e!369078)))

(declare-fun lt!260197 () Bool)

(assert (=> d!214651 (= res!264252 (not lt!260197))))

(assert (=> d!214651 (= lt!260197 e!369076)))

(declare-fun res!264250 () Bool)

(assert (=> d!214651 (=> res!264250 e!369076)))

(assert (=> d!214651 (= res!264250 ((_ is Nil!6080) input!2705))))

(assert (=> d!214651 (= (isPrefix!843 input!2705 input!2705) lt!260197)))

(assert (= (and d!214651 (not res!264250)) b!609032))

(assert (= (and b!609032 res!264249) b!609033))

(assert (= (and b!609033 res!264251) b!609034))

(assert (= (and d!214651 (not res!264252)) b!609035))

(assert (=> b!609033 m!876229))

(assert (=> b!609033 m!876229))

(assert (=> b!609034 m!876225))

(assert (=> b!609034 m!876225))

(assert (=> b!609034 m!876225))

(assert (=> b!609034 m!876225))

(declare-fun m!876465 () Bool)

(assert (=> b!609034 m!876465))

(assert (=> b!609035 m!876147))

(assert (=> b!609035 m!876147))

(assert (=> b!608460 d!214651))

(declare-fun d!214653 () Bool)

(declare-fun res!264257 () Bool)

(declare-fun e!369081 () Bool)

(assert (=> d!214653 (=> (not res!264257) (not e!369081))))

(assert (=> d!214653 (= res!264257 (validRegex!542 (regex!1215 (rule!2001 token!491))))))

(assert (=> d!214653 (= (ruleValid!413 thiss!22590 (rule!2001 token!491)) e!369081)))

(declare-fun b!609040 () Bool)

(declare-fun res!264258 () Bool)

(assert (=> b!609040 (=> (not res!264258) (not e!369081))))

(assert (=> b!609040 (= res!264258 (not (nullable!447 (regex!1215 (rule!2001 token!491)))))))

(declare-fun b!609041 () Bool)

(assert (=> b!609041 (= e!369081 (not (= (tag!1477 (rule!2001 token!491)) (String!7940 ""))))))

(assert (= (and d!214653 res!264257) b!609040))

(assert (= (and b!609040 res!264258) b!609041))

(assert (=> d!214653 m!876223))

(assert (=> b!609040 m!876235))

(assert (=> b!608460 d!214653))

(declare-fun d!214655 () Bool)

(assert (=> d!214655 (and (= lt!259989 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!260200 () Unit!11106)

(declare-fun choose!4474 (List!6090 List!6090 List!6090 List!6090) Unit!11106)

(assert (=> d!214655 (= lt!260200 (choose!4474 lt!259989 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!214655 (= (++!1703 lt!259989 suffix!1342) (++!1703 input!2705 suffix!1342))))

(assert (=> d!214655 (= (lemmaConcatSameAndSameSizesThenSameLists!288 lt!259989 suffix!1342 input!2705 suffix!1342) lt!260200)))

(declare-fun bs!71481 () Bool)

(assert (= bs!71481 d!214655))

(declare-fun m!876467 () Bool)

(assert (=> bs!71481 m!876467))

(assert (=> bs!71481 m!875707))

(assert (=> bs!71481 m!875617))

(assert (=> b!608460 d!214655))

(declare-fun b!609042 () Bool)

(declare-fun e!369082 () Bool)

(declare-fun e!369083 () Bool)

(assert (=> b!609042 (= e!369082 e!369083)))

(declare-fun res!264259 () Bool)

(assert (=> b!609042 (=> (not res!264259) (not e!369083))))

(assert (=> b!609042 (= res!264259 (not ((_ is Nil!6080) lt!259979)))))

(declare-fun b!609043 () Bool)

(declare-fun res!264261 () Bool)

(assert (=> b!609043 (=> (not res!264261) (not e!369083))))

(assert (=> b!609043 (= res!264261 (= (head!1288 input!2705) (head!1288 lt!259979)))))

(declare-fun b!609044 () Bool)

(assert (=> b!609044 (= e!369083 (isPrefix!843 (tail!817 input!2705) (tail!817 lt!259979)))))

(declare-fun b!609045 () Bool)

(declare-fun e!369084 () Bool)

(assert (=> b!609045 (= e!369084 (>= (size!4784 lt!259979) (size!4784 input!2705)))))

(declare-fun d!214657 () Bool)

(assert (=> d!214657 e!369084))

(declare-fun res!264262 () Bool)

(assert (=> d!214657 (=> res!264262 e!369084)))

(declare-fun lt!260201 () Bool)

(assert (=> d!214657 (= res!264262 (not lt!260201))))

(assert (=> d!214657 (= lt!260201 e!369082)))

(declare-fun res!264260 () Bool)

(assert (=> d!214657 (=> res!264260 e!369082)))

(assert (=> d!214657 (= res!264260 ((_ is Nil!6080) input!2705))))

(assert (=> d!214657 (= (isPrefix!843 input!2705 lt!259979) lt!260201)))

(assert (= (and d!214657 (not res!264260)) b!609042))

(assert (= (and b!609042 res!264259) b!609043))

(assert (= (and b!609043 res!264261) b!609044))

(assert (= (and d!214657 (not res!264262)) b!609045))

(assert (=> b!609043 m!876229))

(declare-fun m!876469 () Bool)

(assert (=> b!609043 m!876469))

(assert (=> b!609044 m!876225))

(assert (=> b!609044 m!876327))

(assert (=> b!609044 m!876225))

(assert (=> b!609044 m!876327))

(declare-fun m!876471 () Bool)

(assert (=> b!609044 m!876471))

(assert (=> b!609045 m!876121))

(assert (=> b!609045 m!876147))

(assert (=> b!608460 d!214657))

(declare-fun d!214659 () Bool)

(assert (=> d!214659 (= (list!2558 (charsOf!844 (_1!3741 (v!16470 lt!260001)))) (list!2560 (c!112662 (charsOf!844 (_1!3741 (v!16470 lt!260001))))))))

(declare-fun bs!71482 () Bool)

(assert (= bs!71482 d!214659))

(declare-fun m!876473 () Bool)

(assert (=> bs!71482 m!876473))

(assert (=> b!608460 d!214659))

(declare-fun d!214661 () Bool)

(assert (=> d!214661 (= (apply!1468 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))) lt!259997) (dynLambda!3533 (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) lt!259997))))

(declare-fun b_lambda!24153 () Bool)

(assert (=> (not b_lambda!24153) (not d!214661)))

(assert (=> d!214661 t!80754))

(declare-fun b_and!60311 () Bool)

(assert (= b_and!60303 (and (=> t!80754 result!59876) b_and!60311)))

(assert (=> d!214661 t!80756))

(declare-fun b_and!60313 () Bool)

(assert (= b_and!60305 (and (=> t!80756 result!59880) b_and!60313)))

(assert (=> d!214661 m!876049))

(assert (=> b!608460 d!214661))

(declare-fun d!214663 () Bool)

(assert (=> d!214663 (isPrefix!843 input!2705 input!2705)))

(declare-fun lt!260204 () Unit!11106)

(declare-fun choose!4475 (List!6090 List!6090) Unit!11106)

(assert (=> d!214663 (= lt!260204 (choose!4475 input!2705 input!2705))))

(assert (=> d!214663 (= (lemmaIsPrefixRefl!579 input!2705 input!2705) lt!260204)))

(declare-fun bs!71483 () Bool)

(assert (= bs!71483 d!214663))

(assert (=> bs!71483 m!875657))

(declare-fun m!876475 () Bool)

(assert (=> bs!71483 m!876475))

(assert (=> b!608460 d!214663))

(declare-fun d!214665 () Bool)

(declare-fun e!369087 () Bool)

(assert (=> d!214665 e!369087))

(declare-fun res!264265 () Bool)

(assert (=> d!214665 (=> (not res!264265) (not e!369087))))

(assert (=> d!214665 (= res!264265 (semiInverseModEq!489 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))))))

(declare-fun Unit!11114 () Unit!11106)

(assert (=> d!214665 (= (lemmaInv!323 (transformation!1215 (rule!2001 token!491))) Unit!11114)))

(declare-fun b!609048 () Bool)

(assert (=> b!609048 (= e!369087 (equivClasses!472 (toChars!1981 (transformation!1215 (rule!2001 token!491))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))))))

(assert (= (and d!214665 res!264265) b!609048))

(assert (=> d!214665 m!876437))

(assert (=> b!609048 m!876439))

(assert (=> b!608460 d!214665))

(declare-fun d!214667 () Bool)

(assert (=> d!214667 (= (size!4783 token!491) (size!4784 (originalCharacters!1254 token!491)))))

(declare-fun Unit!11115 () Unit!11106)

(assert (=> d!214667 (= (lemmaCharactersSize!274 token!491) Unit!11115)))

(declare-fun bs!71484 () Bool)

(assert (= bs!71484 d!214667))

(assert (=> bs!71484 m!875601))

(assert (=> b!608460 d!214667))

(declare-fun d!214669 () Bool)

(declare-fun lt!260205 () Int)

(assert (=> d!214669 (>= lt!260205 0)))

(declare-fun e!369088 () Int)

(assert (=> d!214669 (= lt!260205 e!369088)))

(declare-fun c!112747 () Bool)

(assert (=> d!214669 (= c!112747 ((_ is Nil!6080) lt!259989))))

(assert (=> d!214669 (= (size!4784 lt!259989) lt!260205)))

(declare-fun b!609049 () Bool)

(assert (=> b!609049 (= e!369088 0)))

(declare-fun b!609050 () Bool)

(assert (=> b!609050 (= e!369088 (+ 1 (size!4784 (t!80727 lt!259989))))))

(assert (= (and d!214669 c!112747) b!609049))

(assert (= (and d!214669 (not c!112747)) b!609050))

(declare-fun m!876477 () Bool)

(assert (=> b!609050 m!876477))

(assert (=> b!608460 d!214669))

(declare-fun b!609051 () Bool)

(declare-fun e!369089 () Bool)

(declare-fun e!369090 () Bool)

(assert (=> b!609051 (= e!369089 e!369090)))

(declare-fun res!264266 () Bool)

(assert (=> b!609051 (=> (not res!264266) (not e!369090))))

(assert (=> b!609051 (= res!264266 (not ((_ is Nil!6080) lt!259986)))))

(declare-fun b!609052 () Bool)

(declare-fun res!264268 () Bool)

(assert (=> b!609052 (=> (not res!264268) (not e!369090))))

(assert (=> b!609052 (= res!264268 (= (head!1288 lt!259975) (head!1288 lt!259986)))))

(declare-fun b!609053 () Bool)

(assert (=> b!609053 (= e!369090 (isPrefix!843 (tail!817 lt!259975) (tail!817 lt!259986)))))

(declare-fun b!609054 () Bool)

(declare-fun e!369091 () Bool)

(assert (=> b!609054 (= e!369091 (>= (size!4784 lt!259986) (size!4784 lt!259975)))))

(declare-fun d!214671 () Bool)

(assert (=> d!214671 e!369091))

(declare-fun res!264269 () Bool)

(assert (=> d!214671 (=> res!264269 e!369091)))

(declare-fun lt!260206 () Bool)

(assert (=> d!214671 (= res!264269 (not lt!260206))))

(assert (=> d!214671 (= lt!260206 e!369089)))

(declare-fun res!264267 () Bool)

(assert (=> d!214671 (=> res!264267 e!369089)))

(assert (=> d!214671 (= res!264267 ((_ is Nil!6080) lt!259975))))

(assert (=> d!214671 (= (isPrefix!843 lt!259975 lt!259986) lt!260206)))

(assert (= (and d!214671 (not res!264267)) b!609051))

(assert (= (and b!609051 res!264266) b!609052))

(assert (= (and b!609052 res!264268) b!609053))

(assert (= (and d!214671 (not res!264269)) b!609054))

(assert (=> b!609052 m!876249))

(declare-fun m!876479 () Bool)

(assert (=> b!609052 m!876479))

(assert (=> b!609053 m!876245))

(declare-fun m!876481 () Bool)

(assert (=> b!609053 m!876481))

(assert (=> b!609053 m!876245))

(assert (=> b!609053 m!876481))

(declare-fun m!876483 () Bool)

(assert (=> b!609053 m!876483))

(declare-fun m!876485 () Bool)

(assert (=> b!609054 m!876485))

(assert (=> b!609054 m!875653))

(assert (=> b!608460 d!214671))

(declare-fun d!214673 () Bool)

(declare-fun lt!260207 () Int)

(assert (=> d!214673 (>= lt!260207 0)))

(declare-fun e!369092 () Int)

(assert (=> d!214673 (= lt!260207 e!369092)))

(declare-fun c!112748 () Bool)

(assert (=> d!214673 (= c!112748 ((_ is Nil!6080) lt!259975))))

(assert (=> d!214673 (= (size!4784 lt!259975) lt!260207)))

(declare-fun b!609055 () Bool)

(assert (=> b!609055 (= e!369092 0)))

(declare-fun b!609056 () Bool)

(assert (=> b!609056 (= e!369092 (+ 1 (size!4784 (t!80727 lt!259975))))))

(assert (= (and d!214673 c!112748) b!609055))

(assert (= (and d!214673 (not c!112748)) b!609056))

(declare-fun m!876487 () Bool)

(assert (=> b!609056 m!876487))

(assert (=> b!608460 d!214673))

(declare-fun d!214675 () Bool)

(declare-fun lt!260208 () List!6090)

(assert (=> d!214675 (= (++!1703 lt!259975 lt!260208) input!2705)))

(declare-fun e!369093 () List!6090)

(assert (=> d!214675 (= lt!260208 e!369093)))

(declare-fun c!112749 () Bool)

(assert (=> d!214675 (= c!112749 ((_ is Cons!6080) lt!259975))))

(assert (=> d!214675 (>= (size!4784 input!2705) (size!4784 lt!259975))))

(assert (=> d!214675 (= (getSuffix!360 input!2705 lt!259975) lt!260208)))

(declare-fun b!609057 () Bool)

(assert (=> b!609057 (= e!369093 (getSuffix!360 (tail!817 input!2705) (t!80727 lt!259975)))))

(declare-fun b!609058 () Bool)

(assert (=> b!609058 (= e!369093 input!2705)))

(assert (= (and d!214675 c!112749) b!609057))

(assert (= (and d!214675 (not c!112749)) b!609058))

(declare-fun m!876489 () Bool)

(assert (=> d!214675 m!876489))

(assert (=> d!214675 m!876147))

(assert (=> d!214675 m!875653))

(assert (=> b!609057 m!876225))

(assert (=> b!609057 m!876225))

(declare-fun m!876491 () Bool)

(assert (=> b!609057 m!876491))

(assert (=> b!608460 d!214675))

(declare-fun d!214677 () Bool)

(declare-fun res!264270 () Bool)

(declare-fun e!369094 () Bool)

(assert (=> d!214677 (=> (not res!264270) (not e!369094))))

(assert (=> d!214677 (= res!264270 (validRegex!542 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))))))

(assert (=> d!214677 (= (ruleValid!413 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001)))) e!369094)))

(declare-fun b!609059 () Bool)

(declare-fun res!264271 () Bool)

(assert (=> b!609059 (=> (not res!264271) (not e!369094))))

(assert (=> b!609059 (= res!264271 (not (nullable!447 (regex!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))))))

(declare-fun b!609060 () Bool)

(assert (=> b!609060 (= e!369094 (not (= (tag!1477 (rule!2001 (_1!3741 (v!16470 lt!260001)))) (String!7940 ""))))))

(assert (= (and d!214677 res!264270) b!609059))

(assert (= (and b!609059 res!264271) b!609060))

(assert (=> d!214677 m!876243))

(assert (=> b!609059 m!876259))

(assert (=> b!608460 d!214677))

(declare-fun d!214679 () Bool)

(assert (=> d!214679 (ruleValid!413 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))))))

(declare-fun lt!260211 () Unit!11106)

(declare-fun choose!4476 (LexerInterface!1101 Rule!2230 List!6091) Unit!11106)

(assert (=> d!214679 (= lt!260211 (choose!4476 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))) rules!3103))))

(assert (=> d!214679 (contains!1431 rules!3103 (rule!2001 (_1!3741 (v!16470 lt!260001))))))

(assert (=> d!214679 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!260 thiss!22590 (rule!2001 (_1!3741 (v!16470 lt!260001))) rules!3103) lt!260211)))

(declare-fun bs!71485 () Bool)

(assert (= bs!71485 d!214679))

(assert (=> bs!71485 m!875665))

(declare-fun m!876493 () Bool)

(assert (=> bs!71485 m!876493))

(assert (=> bs!71485 m!875607))

(assert (=> b!608460 d!214679))

(declare-fun b!609061 () Bool)

(declare-fun e!369095 () Bool)

(declare-fun e!369096 () Bool)

(assert (=> b!609061 (= e!369095 e!369096)))

(declare-fun res!264272 () Bool)

(assert (=> b!609061 (=> (not res!264272) (not e!369096))))

(assert (=> b!609061 (= res!264272 (not ((_ is Nil!6080) lt!259994)))))

(declare-fun b!609062 () Bool)

(declare-fun res!264274 () Bool)

(assert (=> b!609062 (=> (not res!264274) (not e!369096))))

(assert (=> b!609062 (= res!264274 (= (head!1288 input!2705) (head!1288 lt!259994)))))

(declare-fun b!609063 () Bool)

(assert (=> b!609063 (= e!369096 (isPrefix!843 (tail!817 input!2705) (tail!817 lt!259994)))))

(declare-fun b!609064 () Bool)

(declare-fun e!369097 () Bool)

(assert (=> b!609064 (= e!369097 (>= (size!4784 lt!259994) (size!4784 input!2705)))))

(declare-fun d!214681 () Bool)

(assert (=> d!214681 e!369097))

(declare-fun res!264275 () Bool)

(assert (=> d!214681 (=> res!264275 e!369097)))

(declare-fun lt!260212 () Bool)

(assert (=> d!214681 (= res!264275 (not lt!260212))))

(assert (=> d!214681 (= lt!260212 e!369095)))

(declare-fun res!264273 () Bool)

(assert (=> d!214681 (=> res!264273 e!369095)))

(assert (=> d!214681 (= res!264273 ((_ is Nil!6080) input!2705))))

(assert (=> d!214681 (= (isPrefix!843 input!2705 lt!259994) lt!260212)))

(assert (= (and d!214681 (not res!264273)) b!609061))

(assert (= (and b!609061 res!264272) b!609062))

(assert (= (and b!609062 res!264274) b!609063))

(assert (= (and d!214681 (not res!264275)) b!609064))

(assert (=> b!609062 m!876229))

(assert (=> b!609062 m!876441))

(assert (=> b!609063 m!876225))

(assert (=> b!609063 m!876443))

(assert (=> b!609063 m!876225))

(assert (=> b!609063 m!876443))

(declare-fun m!876495 () Bool)

(assert (=> b!609063 m!876495))

(assert (=> b!609064 m!876447))

(assert (=> b!609064 m!876147))

(assert (=> b!608460 d!214681))

(declare-fun d!214683 () Bool)

(assert (=> d!214683 (= (size!4783 (_1!3741 (v!16470 lt!260001))) (size!4784 (originalCharacters!1254 (_1!3741 (v!16470 lt!260001)))))))

(declare-fun Unit!11116 () Unit!11106)

(assert (=> d!214683 (= (lemmaCharactersSize!274 (_1!3741 (v!16470 lt!260001))) Unit!11116)))

(declare-fun bs!71486 () Bool)

(assert (= bs!71486 d!214683))

(assert (=> bs!71486 m!875715))

(assert (=> b!608460 d!214683))

(declare-fun d!214685 () Bool)

(declare-fun e!369098 () Bool)

(assert (=> d!214685 e!369098))

(declare-fun res!264276 () Bool)

(assert (=> d!214685 (=> (not res!264276) (not e!369098))))

(assert (=> d!214685 (= res!264276 (semiInverseModEq!489 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))))))

(declare-fun Unit!11117 () Unit!11106)

(assert (=> d!214685 (= (lemmaInv!323 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) Unit!11117)))

(declare-fun b!609065 () Bool)

(assert (=> b!609065 (= e!369098 (equivClasses!472 (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001))))) (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))))))

(assert (= (and d!214685 res!264276) b!609065))

(declare-fun m!876497 () Bool)

(assert (=> d!214685 m!876497))

(declare-fun m!876499 () Bool)

(assert (=> b!609065 m!876499))

(assert (=> b!608460 d!214685))

(declare-fun d!214687 () Bool)

(assert (=> d!214687 (ruleValid!413 thiss!22590 (rule!2001 token!491))))

(declare-fun lt!260213 () Unit!11106)

(assert (=> d!214687 (= lt!260213 (choose!4476 thiss!22590 (rule!2001 token!491) rules!3103))))

(assert (=> d!214687 (contains!1431 rules!3103 (rule!2001 token!491))))

(assert (=> d!214687 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!260 thiss!22590 (rule!2001 token!491) rules!3103) lt!260213)))

(declare-fun bs!71487 () Bool)

(assert (= bs!71487 d!214687))

(assert (=> bs!71487 m!875645))

(declare-fun m!876501 () Bool)

(assert (=> bs!71487 m!876501))

(assert (=> bs!71487 m!875619))

(assert (=> b!608460 d!214687))

(declare-fun d!214689 () Bool)

(assert (=> d!214689 (isPrefix!843 input!2705 (++!1703 input!2705 suffix!1342))))

(declare-fun lt!260214 () Unit!11106)

(assert (=> d!214689 (= lt!260214 (choose!4473 input!2705 suffix!1342))))

(assert (=> d!214689 (= (lemmaConcatTwoListThenFirstIsPrefix!688 input!2705 suffix!1342) lt!260214)))

(declare-fun bs!71488 () Bool)

(assert (= bs!71488 d!214689))

(assert (=> bs!71488 m!875617))

(assert (=> bs!71488 m!875617))

(declare-fun m!876503 () Bool)

(assert (=> bs!71488 m!876503))

(declare-fun m!876505 () Bool)

(assert (=> bs!71488 m!876505))

(assert (=> b!608460 d!214689))

(declare-fun b!609067 () Bool)

(declare-fun e!369099 () List!6090)

(assert (=> b!609067 (= e!369099 (Cons!6080 (h!11481 lt!259975) (++!1703 (t!80727 lt!259975) (_2!3741 (v!16470 lt!260001)))))))

(declare-fun b!609068 () Bool)

(declare-fun res!264277 () Bool)

(declare-fun e!369100 () Bool)

(assert (=> b!609068 (=> (not res!264277) (not e!369100))))

(declare-fun lt!260215 () List!6090)

(assert (=> b!609068 (= res!264277 (= (size!4784 lt!260215) (+ (size!4784 lt!259975) (size!4784 (_2!3741 (v!16470 lt!260001))))))))

(declare-fun b!609069 () Bool)

(assert (=> b!609069 (= e!369100 (or (not (= (_2!3741 (v!16470 lt!260001)) Nil!6080)) (= lt!260215 lt!259975)))))

(declare-fun b!609066 () Bool)

(assert (=> b!609066 (= e!369099 (_2!3741 (v!16470 lt!260001)))))

(declare-fun d!214691 () Bool)

(assert (=> d!214691 e!369100))

(declare-fun res!264278 () Bool)

(assert (=> d!214691 (=> (not res!264278) (not e!369100))))

(assert (=> d!214691 (= res!264278 (= (content!1107 lt!260215) ((_ map or) (content!1107 lt!259975) (content!1107 (_2!3741 (v!16470 lt!260001))))))))

(assert (=> d!214691 (= lt!260215 e!369099)))

(declare-fun c!112750 () Bool)

(assert (=> d!214691 (= c!112750 ((_ is Nil!6080) lt!259975))))

(assert (=> d!214691 (= (++!1703 lt!259975 (_2!3741 (v!16470 lt!260001))) lt!260215)))

(assert (= (and d!214691 c!112750) b!609066))

(assert (= (and d!214691 (not c!112750)) b!609067))

(assert (= (and d!214691 res!264278) b!609068))

(assert (= (and b!609068 res!264277) b!609069))

(declare-fun m!876507 () Bool)

(assert (=> b!609067 m!876507))

(declare-fun m!876509 () Bool)

(assert (=> b!609068 m!876509))

(assert (=> b!609068 m!875653))

(declare-fun m!876511 () Bool)

(assert (=> b!609068 m!876511))

(declare-fun m!876513 () Bool)

(assert (=> d!214691 m!876513))

(assert (=> d!214691 m!876393))

(declare-fun m!876515 () Bool)

(assert (=> d!214691 m!876515))

(assert (=> b!608460 d!214691))

(declare-fun d!214693 () Bool)

(assert (=> d!214693 (isPrefix!843 lt!259989 (++!1703 lt!259989 suffix!1342))))

(declare-fun lt!260216 () Unit!11106)

(assert (=> d!214693 (= lt!260216 (choose!4473 lt!259989 suffix!1342))))

(assert (=> d!214693 (= (lemmaConcatTwoListThenFirstIsPrefix!688 lt!259989 suffix!1342) lt!260216)))

(declare-fun bs!71489 () Bool)

(assert (= bs!71489 d!214693))

(assert (=> bs!71489 m!875707))

(assert (=> bs!71489 m!875707))

(declare-fun m!876517 () Bool)

(assert (=> bs!71489 m!876517))

(declare-fun m!876519 () Bool)

(assert (=> bs!71489 m!876519))

(assert (=> b!608460 d!214693))

(declare-fun e!369103 () Bool)

(assert (=> b!608483 (= tp!188731 e!369103)))

(declare-fun b!609082 () Bool)

(declare-fun tp!188792 () Bool)

(assert (=> b!609082 (= e!369103 tp!188792)))

(declare-fun b!609081 () Bool)

(declare-fun tp!188796 () Bool)

(declare-fun tp!188793 () Bool)

(assert (=> b!609081 (= e!369103 (and tp!188796 tp!188793))))

(declare-fun b!609083 () Bool)

(declare-fun tp!188795 () Bool)

(declare-fun tp!188794 () Bool)

(assert (=> b!609083 (= e!369103 (and tp!188795 tp!188794))))

(declare-fun b!609080 () Bool)

(assert (=> b!609080 (= e!369103 tp_is_empty!3453)))

(assert (= (and b!608483 ((_ is ElementMatch!1549) (regex!1215 (h!11482 rules!3103)))) b!609080))

(assert (= (and b!608483 ((_ is Concat!2788) (regex!1215 (h!11482 rules!3103)))) b!609081))

(assert (= (and b!608483 ((_ is Star!1549) (regex!1215 (h!11482 rules!3103)))) b!609082))

(assert (= (and b!608483 ((_ is Union!1549) (regex!1215 (h!11482 rules!3103)))) b!609083))

(declare-fun b!609094 () Bool)

(declare-fun b_free!17337 () Bool)

(declare-fun b_next!17353 () Bool)

(assert (=> b!609094 (= b_free!17337 (not b_next!17353))))

(declare-fun t!80790 () Bool)

(declare-fun tb!53227 () Bool)

(assert (=> (and b!609094 (= (toValue!2122 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toValue!2122 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80790) tb!53227))

(declare-fun result!59924 () Bool)

(assert (= result!59924 result!59876))

(assert (=> d!214465 t!80790))

(declare-fun t!80792 () Bool)

(declare-fun tb!53229 () Bool)

(assert (=> (and b!609094 (= (toValue!2122 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toValue!2122 (transformation!1215 (rule!2001 token!491)))) t!80792) tb!53229))

(declare-fun result!59926 () Bool)

(assert (= result!59926 result!59912))

(assert (=> d!214615 t!80792))

(assert (=> d!214661 t!80790))

(declare-fun tp!188806 () Bool)

(declare-fun b_and!60315 () Bool)

(assert (=> b!609094 (= tp!188806 (and (=> t!80790 result!59924) (=> t!80792 result!59926) b_and!60315))))

(declare-fun b_free!17339 () Bool)

(declare-fun b_next!17355 () Bool)

(assert (=> b!609094 (= b_free!17339 (not b_next!17355))))

(declare-fun tb!53231 () Bool)

(declare-fun t!80794 () Bool)

(assert (=> (and b!609094 (= (toChars!1981 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toChars!1981 (transformation!1215 (rule!2001 token!491)))) t!80794) tb!53231))

(declare-fun result!59928 () Bool)

(assert (= result!59928 result!59852))

(assert (=> d!214593 t!80794))

(declare-fun tb!53233 () Bool)

(declare-fun t!80796 () Bool)

(assert (=> (and b!609094 (= (toChars!1981 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80796) tb!53233))

(declare-fun result!59930 () Bool)

(assert (= result!59930 result!59916))

(assert (=> d!214649 t!80796))

(declare-fun tb!53235 () Bool)

(declare-fun t!80798 () Bool)

(assert (=> (and b!609094 (= (toChars!1981 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toChars!1981 (transformation!1215 (rule!2001 (_1!3741 (v!16470 lt!260001)))))) t!80798) tb!53235))

(declare-fun result!59932 () Bool)

(assert (= result!59932 result!59872))

(assert (=> d!214465 t!80798))

(declare-fun tb!53237 () Bool)

(declare-fun t!80800 () Bool)

(assert (=> (and b!609094 (= (toChars!1981 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toChars!1981 (transformation!1215 (rule!2001 lt!259982)))) t!80800) tb!53237))

(declare-fun result!59934 () Bool)

(assert (= result!59934 result!59858))

(assert (=> b!608539 t!80800))

(assert (=> b!608532 t!80794))

(declare-fun tp!188807 () Bool)

(declare-fun b_and!60317 () Bool)

(assert (=> b!609094 (= tp!188807 (and (=> t!80798 result!59932) (=> t!80794 result!59928) (=> t!80800 result!59934) (=> t!80796 result!59930) b_and!60317))))

(declare-fun e!369112 () Bool)

(assert (=> b!609094 (= e!369112 (and tp!188806 tp!188807))))

(declare-fun e!369113 () Bool)

(declare-fun tp!188805 () Bool)

(declare-fun b!609093 () Bool)

(assert (=> b!609093 (= e!369113 (and tp!188805 (inv!7732 (tag!1477 (h!11482 (t!80728 rules!3103)))) (inv!7736 (transformation!1215 (h!11482 (t!80728 rules!3103)))) e!369112))))

(declare-fun b!609092 () Bool)

(declare-fun e!369114 () Bool)

(declare-fun tp!188808 () Bool)

(assert (=> b!609092 (= e!369114 (and e!369113 tp!188808))))

(assert (=> b!608452 (= tp!188724 e!369114)))

(assert (= b!609093 b!609094))

(assert (= b!609092 b!609093))

(assert (= (and b!608452 ((_ is Cons!6081) (t!80728 rules!3103))) b!609092))

(declare-fun m!876521 () Bool)

(assert (=> b!609093 m!876521))

(declare-fun m!876523 () Bool)

(assert (=> b!609093 m!876523))

(declare-fun b!609099 () Bool)

(declare-fun e!369118 () Bool)

(declare-fun tp!188811 () Bool)

(assert (=> b!609099 (= e!369118 (and tp_is_empty!3453 tp!188811))))

(assert (=> b!608464 (= tp!188725 e!369118)))

(assert (= (and b!608464 ((_ is Cons!6080) (t!80727 suffix!1342))) b!609099))

(declare-fun b!609100 () Bool)

(declare-fun e!369119 () Bool)

(declare-fun tp!188812 () Bool)

(assert (=> b!609100 (= e!369119 (and tp_is_empty!3453 tp!188812))))

(assert (=> b!608465 (= tp!188732 e!369119)))

(assert (= (and b!608465 ((_ is Cons!6080) (originalCharacters!1254 token!491))) b!609100))

(declare-fun e!369120 () Bool)

(assert (=> b!608481 (= tp!188726 e!369120)))

(declare-fun b!609103 () Bool)

(declare-fun tp!188813 () Bool)

(assert (=> b!609103 (= e!369120 tp!188813)))

(declare-fun b!609102 () Bool)

(declare-fun tp!188817 () Bool)

(declare-fun tp!188814 () Bool)

(assert (=> b!609102 (= e!369120 (and tp!188817 tp!188814))))

(declare-fun b!609104 () Bool)

(declare-fun tp!188816 () Bool)

(declare-fun tp!188815 () Bool)

(assert (=> b!609104 (= e!369120 (and tp!188816 tp!188815))))

(declare-fun b!609101 () Bool)

(assert (=> b!609101 (= e!369120 tp_is_empty!3453)))

(assert (= (and b!608481 ((_ is ElementMatch!1549) (regex!1215 (rule!2001 token!491)))) b!609101))

(assert (= (and b!608481 ((_ is Concat!2788) (regex!1215 (rule!2001 token!491)))) b!609102))

(assert (= (and b!608481 ((_ is Star!1549) (regex!1215 (rule!2001 token!491)))) b!609103))

(assert (= (and b!608481 ((_ is Union!1549) (regex!1215 (rule!2001 token!491)))) b!609104))

(declare-fun b!609105 () Bool)

(declare-fun e!369121 () Bool)

(declare-fun tp!188818 () Bool)

(assert (=> b!609105 (= e!369121 (and tp_is_empty!3453 tp!188818))))

(assert (=> b!608455 (= tp!188730 e!369121)))

(assert (= (and b!608455 ((_ is Cons!6080) (t!80727 input!2705))) b!609105))

(declare-fun b_lambda!24155 () Bool)

(assert (= b_lambda!24149 (or (and b!608469 b_free!17325) (and b!608478 b_free!17329 (= (toValue!2122 (transformation!1215 (h!11482 rules!3103))) (toValue!2122 (transformation!1215 (rule!2001 token!491))))) (and b!609094 b_free!17337 (= (toValue!2122 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toValue!2122 (transformation!1215 (rule!2001 token!491))))) b_lambda!24155)))

(declare-fun b_lambda!24157 () Bool)

(assert (= b_lambda!24119 (or (and b!608469 b_free!17327) (and b!608478 b_free!17331 (= (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toChars!1981 (transformation!1215 (rule!2001 token!491))))) (and b!609094 b_free!17339 (= (toChars!1981 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toChars!1981 (transformation!1215 (rule!2001 token!491))))) b_lambda!24157)))

(declare-fun b_lambda!24159 () Bool)

(assert (= b_lambda!24141 (or (and b!608469 b_free!17327) (and b!608478 b_free!17331 (= (toChars!1981 (transformation!1215 (h!11482 rules!3103))) (toChars!1981 (transformation!1215 (rule!2001 token!491))))) (and b!609094 b_free!17339 (= (toChars!1981 (transformation!1215 (h!11482 (t!80728 rules!3103)))) (toChars!1981 (transformation!1215 (rule!2001 token!491))))) b_lambda!24159)))

(check-sat (not b!609083) (not b!608970) (not b!609015) (not b!609067) (not d!214609) (not b_next!17345) (not b!608966) (not b!608943) (not d!214619) b_and!60307 (not d!214643) (not b!609028) (not d!214541) (not b_lambda!24151) (not b_lambda!24159) (not b_next!17355) (not b!609022) b_and!60315 (not b!609024) b_and!60311 (not b!608972) (not b!609092) (not b!609030) (not b!608861) (not b!608790) (not b!609065) (not d!214655) (not b!609044) (not d!214675) (not b!608986) (not b!609002) (not tb!53187) (not b!609048) (not b!609014) (not d!214667) (not d!214653) (not b!609007) (not b!608967) (not bm!40818) (not b!609059) (not b!609043) (not b!609017) (not b!608780) b_and!60309 (not b!609029) (not b!608908) (not b!608988) b_and!60317 (not b!608979) (not b!608969) (not b!608866) (not d!214627) (not d!214623) (not b!608868) (not b!608912) (not d!214683) (not d!214595) (not b!608532) (not b!609031) (not b!608942) (not b_next!17341) (not d!214665) (not b!608987) (not b!608778) (not b!608799) (not b!609068) (not b!609081) (not b!608985) (not b!608867) (not b!609004) (not b!609056) (not d!214465) (not b!609010) (not b_lambda!24121) (not tb!53191) (not b!608973) (not b!609093) (not bm!40820) (not b!609016) (not b_next!17343) b_and!60313 (not tb!53219) (not b!609063) (not b!609025) tp_is_empty!3453 (not b!609057) (not b!609099) (not b!608913) (not b!608865) (not b_lambda!24157) (not d!214647) (not b!609105) (not b!609100) (not b!609001) (not b_next!17347) (not d!214629) (not d!214663) (not b!609020) (not b!609052) (not d!214649) (not b!608519) (not b!608773) (not d!214603) (not bm!40815) (not b!608541) (not b!609062) (not b!608915) (not b!609103) (not b!608872) (not b!608772) (not b!609054) (not b!608971) (not tb!53175) (not b_lambda!24131) (not d!214463) (not b!609104) (not d!214645) (not b!609033) (not d!214611) (not b!608932) (not b_next!17353) (not d!214593) (not b!609018) (not b!609050) (not d!214679) (not b!609102) (not b_lambda!24129) (not b!608539) (not b!609023) (not b!608796) (not b!608540) (not d!214597) (not d!214689) (not d!214691) (not b!608947) (not b!608527) (not b!608982) (not d!214635) (not b!608914) (not d!214687) (not b!609021) (not d!214693) (not d!214605) (not b!608981) (not tb!53223) (not b!609034) (not d!214639) (not b_lambda!24153) (not b!609011) (not d!214517) (not bm!40819) (not b!609045) (not b_lambda!24155) (not b!608533) (not b!608538) (not b!609040) (not b!608919) (not b!609082) (not tb!53171) (not d!214631) (not b!608777) (not b!608776) (not b!608520) (not b!608775) (not d!214591) (not b!609026) (not d!214515) (not d!214677) (not b!609064) (not d!214555) (not b!609006) (not b!608974) (not d!214607) (not b!609035) (not d!214455) (not d!214551) (not d!214659) (not b!608791) (not b!608944) (not b!608779) (not d!214459) (not b!609053) (not d!214613) (not b!608734) (not b!608989) (not b!608984) (not d!214617) (not d!214685))
(check-sat (not b_next!17345) b_and!60307 b_and!60309 b_and!60317 (not b_next!17341) (not b_next!17343) b_and!60313 (not b_next!17347) (not b_next!17353) b_and!60311 (not b_next!17355) b_and!60315)
