; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375788 () Bool)

(assert start!375788)

(declare-fun b!3993075 () Bool)

(declare-fun b_free!110921 () Bool)

(declare-fun b_next!111625 () Bool)

(assert (=> b!3993075 (= b_free!110921 (not b_next!111625))))

(declare-fun tp!1216040 () Bool)

(declare-fun b_and!306751 () Bool)

(assert (=> b!3993075 (= tp!1216040 b_and!306751)))

(declare-fun b_free!110923 () Bool)

(declare-fun b_next!111627 () Bool)

(assert (=> b!3993075 (= b_free!110923 (not b_next!111627))))

(declare-fun tp!1216033 () Bool)

(declare-fun b_and!306753 () Bool)

(assert (=> b!3993075 (= tp!1216033 b_and!306753)))

(declare-fun b!3993085 () Bool)

(declare-fun b_free!110925 () Bool)

(declare-fun b_next!111629 () Bool)

(assert (=> b!3993085 (= b_free!110925 (not b_next!111629))))

(declare-fun tp!1216036 () Bool)

(declare-fun b_and!306755 () Bool)

(assert (=> b!3993085 (= tp!1216036 b_and!306755)))

(declare-fun b_free!110927 () Bool)

(declare-fun b_next!111631 () Bool)

(assert (=> b!3993085 (= b_free!110927 (not b_next!111631))))

(declare-fun tp!1216037 () Bool)

(declare-fun b_and!306757 () Bool)

(assert (=> b!3993085 (= tp!1216037 b_and!306757)))

(declare-fun b!3993059 () Bool)

(declare-datatypes ((Unit!61522 0))(
  ( (Unit!61523) )
))
(declare-fun e!2475451 () Unit!61522)

(declare-fun Unit!61524 () Unit!61522)

(assert (=> b!3993059 (= e!2475451 Unit!61524)))

(declare-fun lt!1408690 () Unit!61522)

(declare-datatypes ((C!23524 0))(
  ( (C!23525 (val!13856 Int)) )
))
(declare-datatypes ((List!42834 0))(
  ( (Nil!42710) (Cons!42710 (h!48130 C!23524) (t!331873 List!42834)) )
))
(declare-datatypes ((IArray!25955 0))(
  ( (IArray!25956 (innerList!13035 List!42834)) )
))
(declare-datatypes ((Conc!12975 0))(
  ( (Node!12975 (left!32263 Conc!12975) (right!32593 Conc!12975) (csize!26180 Int) (cheight!13186 Int)) (Leaf!20064 (xs!16281 IArray!25955) (csize!26181 Int)) (Empty!12975) )
))
(declare-datatypes ((BalanceConc!25544 0))(
  ( (BalanceConc!25545 (c!690976 Conc!12975)) )
))
(declare-datatypes ((List!42835 0))(
  ( (Nil!42711) (Cons!42711 (h!48131 (_ BitVec 16)) (t!331874 List!42835)) )
))
(declare-datatypes ((TokenValue!6994 0))(
  ( (FloatLiteralValue!13988 (text!49403 List!42835)) (TokenValueExt!6993 (__x!26205 Int)) (Broken!34970 (value!213382 List!42835)) (Object!7117) (End!6994) (Def!6994) (Underscore!6994) (Match!6994) (Else!6994) (Error!6994) (Case!6994) (If!6994) (Extends!6994) (Abstract!6994) (Class!6994) (Val!6994) (DelimiterValue!13988 (del!7054 List!42835)) (KeywordValue!7000 (value!213383 List!42835)) (CommentValue!13988 (value!213384 List!42835)) (WhitespaceValue!13988 (value!213385 List!42835)) (IndentationValue!6994 (value!213386 List!42835)) (String!48687) (Int32!6994) (Broken!34971 (value!213387 List!42835)) (Boolean!6995) (Unit!61525) (OperatorValue!6997 (op!7054 List!42835)) (IdentifierValue!13988 (value!213388 List!42835)) (IdentifierValue!13989 (value!213389 List!42835)) (WhitespaceValue!13989 (value!213390 List!42835)) (True!13988) (False!13988) (Broken!34972 (value!213391 List!42835)) (Broken!34973 (value!213392 List!42835)) (True!13989) (RightBrace!6994) (RightBracket!6994) (Colon!6994) (Null!6994) (Comma!6994) (LeftBracket!6994) (False!13989) (LeftBrace!6994) (ImaginaryLiteralValue!6994 (text!49404 List!42835)) (StringLiteralValue!20982 (value!213393 List!42835)) (EOFValue!6994 (value!213394 List!42835)) (IdentValue!6994 (value!213395 List!42835)) (DelimiterValue!13989 (value!213396 List!42835)) (DedentValue!6994 (value!213397 List!42835)) (NewLineValue!6994 (value!213398 List!42835)) (IntegerValue!20982 (value!213399 (_ BitVec 32)) (text!49405 List!42835)) (IntegerValue!20983 (value!213400 Int) (text!49406 List!42835)) (Times!6994) (Or!6994) (Equal!6994) (Minus!6994) (Broken!34974 (value!213401 List!42835)) (And!6994) (Div!6994) (LessEqual!6994) (Mod!6994) (Concat!18663) (Not!6994) (Plus!6994) (SpaceValue!6994 (value!213402 List!42835)) (IntegerValue!20984 (value!213403 Int) (text!49407 List!42835)) (StringLiteralValue!20983 (text!49408 List!42835)) (FloatLiteralValue!13989 (text!49409 List!42835)) (BytesLiteralValue!6994 (value!213404 List!42835)) (CommentValue!13989 (value!213405 List!42835)) (StringLiteralValue!20984 (value!213406 List!42835)) (ErrorTokenValue!6994 (msg!7055 List!42835)) )
))
(declare-datatypes ((Regex!11669 0))(
  ( (ElementMatch!11669 (c!690977 C!23524)) (Concat!18664 (regOne!23850 Regex!11669) (regTwo!23850 Regex!11669)) (EmptyExpr!11669) (Star!11669 (reg!11998 Regex!11669)) (EmptyLang!11669) (Union!11669 (regOne!23851 Regex!11669) (regTwo!23851 Regex!11669)) )
))
(declare-datatypes ((String!48688 0))(
  ( (String!48689 (value!213407 String)) )
))
(declare-datatypes ((TokenValueInjection!13416 0))(
  ( (TokenValueInjection!13417 (toValue!9252 Int) (toChars!9111 Int)) )
))
(declare-datatypes ((Rule!13328 0))(
  ( (Rule!13329 (regex!6764 Regex!11669) (tag!7624 String!48688) (isSeparator!6764 Bool) (transformation!6764 TokenValueInjection!13416)) )
))
(declare-datatypes ((Token!12666 0))(
  ( (Token!12667 (value!213408 TokenValue!6994) (rule!9786 Rule!13328) (size!31942 Int) (originalCharacters!7364 List!42834)) )
))
(declare-fun token!484 () Token!12666)

(declare-fun lt!1408671 () List!42834)

(declare-datatypes ((tuple2!41908 0))(
  ( (tuple2!41909 (_1!24088 Token!12666) (_2!24088 List!42834)) )
))
(declare-datatypes ((Option!9178 0))(
  ( (None!9177) (Some!9177 (v!39533 tuple2!41908)) )
))
(declare-fun lt!1408668 () Option!9178)

(declare-datatypes ((List!42836 0))(
  ( (Nil!42712) (Cons!42712 (h!48132 Rule!13328) (t!331875 List!42836)) )
))
(declare-fun rules!2999 () List!42836)

(declare-datatypes ((LexerInterface!6353 0))(
  ( (LexerInterfaceExt!6350 (__x!26206 Int)) (Lexer!6351) )
))
(declare-fun thiss!21717 () LexerInterface!6353)

(declare-fun lt!1408675 () List!42834)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!260 (LexerInterface!6353 List!42836 Rule!13328 List!42834 List!42834 Rule!13328) Unit!61522)

(assert (=> b!3993059 (= lt!1408690 (lemmaMaxPrefNoSmallerRuleMatches!260 thiss!21717 rules!2999 (rule!9786 token!484) lt!1408675 lt!1408671 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun res!1620951 () Bool)

(declare-fun matchR!5646 (Regex!11669 List!42834) Bool)

(assert (=> b!3993059 (= res!1620951 (not (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408675)))))

(declare-fun e!2475466 () Bool)

(assert (=> b!3993059 (=> (not res!1620951) (not e!2475466))))

(assert (=> b!3993059 e!2475466))

(declare-fun b!3993060 () Bool)

(declare-fun e!2475472 () Unit!61522)

(declare-fun Unit!61526 () Unit!61522)

(assert (=> b!3993060 (= e!2475472 Unit!61526)))

(declare-fun lt!1408727 () List!42834)

(declare-fun lt!1408704 () Unit!61522)

(declare-fun lt!1408679 () List!42834)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!418 (LexerInterface!6353 List!42836 Rule!13328 List!42834 List!42834 List!42834 Rule!13328) Unit!61522)

(assert (=> b!3993060 (= lt!1408704 (lemmaMaxPrefixOutputsMaxPrefix!418 thiss!21717 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408679 lt!1408727 lt!1408675 (rule!9786 token!484)))))

(assert (=> b!3993060 false))

(declare-fun res!1620955 () Bool)

(declare-fun e!2475473 () Bool)

(assert (=> start!375788 (=> (not res!1620955) (not e!2475473))))

(get-info :version)

(assert (=> start!375788 (= res!1620955 ((_ is Lexer!6351) thiss!21717))))

(assert (=> start!375788 e!2475473))

(declare-fun e!2475460 () Bool)

(assert (=> start!375788 e!2475460))

(declare-fun e!2475477 () Bool)

(declare-fun inv!57045 (Token!12666) Bool)

(assert (=> start!375788 (and (inv!57045 token!484) e!2475477)))

(declare-fun e!2475462 () Bool)

(assert (=> start!375788 e!2475462))

(declare-fun e!2475455 () Bool)

(assert (=> start!375788 e!2475455))

(declare-fun e!2475449 () Bool)

(assert (=> start!375788 e!2475449))

(assert (=> start!375788 true))

(declare-fun e!2475444 () Bool)

(assert (=> start!375788 e!2475444))

(declare-fun e!2475480 () Bool)

(assert (=> start!375788 e!2475480))

(declare-fun b!3993061 () Bool)

(declare-fun tp_is_empty!20309 () Bool)

(declare-fun tp!1216044 () Bool)

(assert (=> b!3993061 (= e!2475455 (and tp_is_empty!20309 tp!1216044))))

(declare-fun b!3993062 () Bool)

(declare-fun e!2475479 () Bool)

(declare-fun e!2475476 () Bool)

(assert (=> b!3993062 (= e!2475479 e!2475476)))

(declare-fun res!1620943 () Bool)

(assert (=> b!3993062 (=> res!1620943 e!2475476)))

(declare-fun lt!1408691 () Option!9178)

(assert (=> b!3993062 (= res!1620943 (not (= lt!1408691 (Some!9177 (v!39533 lt!1408668)))))))

(declare-fun newSuffixResult!27 () List!42834)

(declare-fun isPrefix!3851 (List!42834 List!42834) Bool)

(declare-fun ++!11166 (List!42834 List!42834) List!42834)

(assert (=> b!3993062 (isPrefix!3851 lt!1408679 (++!11166 lt!1408679 newSuffixResult!27))))

(declare-fun lt!1408712 () Unit!61522)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2694 (List!42834 List!42834) Unit!61522)

(assert (=> b!3993062 (= lt!1408712 (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408679 newSuffixResult!27))))

(declare-fun lt!1408722 () List!42834)

(assert (=> b!3993062 (isPrefix!3851 lt!1408679 lt!1408722)))

(assert (=> b!3993062 (= lt!1408722 (++!11166 lt!1408679 (_2!24088 (v!39533 lt!1408668))))))

(declare-fun lt!1408698 () Unit!61522)

(assert (=> b!3993062 (= lt!1408698 (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408679 (_2!24088 (v!39533 lt!1408668))))))

(declare-fun lt!1408689 () Int)

(declare-fun lt!1408695 () TokenValue!6994)

(assert (=> b!3993062 (= lt!1408691 (Some!9177 (tuple2!41909 (Token!12667 lt!1408695 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408689 lt!1408679) (_2!24088 (v!39533 lt!1408668)))))))

(declare-fun maxPrefixOneRule!2685 (LexerInterface!6353 Rule!13328 List!42834) Option!9178)

(assert (=> b!3993062 (= lt!1408691 (maxPrefixOneRule!2685 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408727))))

(declare-fun size!31943 (List!42834) Int)

(assert (=> b!3993062 (= lt!1408689 (size!31943 lt!1408679))))

(declare-fun apply!9975 (TokenValueInjection!13416 BalanceConc!25544) TokenValue!6994)

(declare-fun seqFromList!5003 (List!42834) BalanceConc!25544)

(assert (=> b!3993062 (= lt!1408695 (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (seqFromList!5003 lt!1408679)))))

(declare-fun lt!1408725 () Unit!61522)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1507 (LexerInterface!6353 List!42836 List!42834 List!42834 List!42834 Rule!13328) Unit!61522)

(assert (=> b!3993062 (= lt!1408725 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1507 thiss!21717 rules!2999 lt!1408679 lt!1408727 (_2!24088 (v!39533 lt!1408668)) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun list!15858 (BalanceConc!25544) List!42834)

(declare-fun charsOf!4580 (Token!12666) BalanceConc!25544)

(assert (=> b!3993062 (= lt!1408679 (list!15858 (charsOf!4580 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun lt!1408714 () Unit!61522)

(declare-fun lemmaInv!979 (TokenValueInjection!13416) Unit!61522)

(assert (=> b!3993062 (= lt!1408714 (lemmaInv!979 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(declare-fun ruleValid!2696 (LexerInterface!6353 Rule!13328) Bool)

(assert (=> b!3993062 (ruleValid!2696 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))

(declare-fun lt!1408686 () Unit!61522)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1770 (LexerInterface!6353 Rule!13328 List!42836) Unit!61522)

(assert (=> b!3993062 (= lt!1408686 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1770 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))) rules!2999))))

(declare-fun lt!1408687 () Unit!61522)

(declare-fun lemmaCharactersSize!1359 (Token!12666) Unit!61522)

(assert (=> b!3993062 (= lt!1408687 (lemmaCharactersSize!1359 token!484))))

(declare-fun lt!1408719 () Unit!61522)

(assert (=> b!3993062 (= lt!1408719 (lemmaCharactersSize!1359 (_1!24088 (v!39533 lt!1408668))))))

(declare-fun b!3993063 () Bool)

(declare-fun res!1620963 () Bool)

(declare-fun e!2475446 () Bool)

(assert (=> b!3993063 (=> (not res!1620963) (not e!2475446))))

(assert (=> b!3993063 (= res!1620963 (= (size!31942 token!484) (size!31943 (originalCharacters!7364 token!484))))))

(declare-fun b!3993064 () Bool)

(declare-fun e!2475448 () Bool)

(declare-fun e!2475474 () Bool)

(assert (=> b!3993064 (= e!2475448 e!2475474)))

(declare-fun res!1620965 () Bool)

(assert (=> b!3993064 (=> res!1620965 e!2475474)))

(declare-fun lt!1408703 () List!42834)

(declare-fun lt!1408716 () List!42834)

(assert (=> b!3993064 (= res!1620965 (or (not (= lt!1408671 lt!1408703)) (not (= lt!1408671 lt!1408716))))))

(assert (=> b!3993064 (= lt!1408703 lt!1408716)))

(declare-fun lt!1408708 () List!42834)

(assert (=> b!3993064 (= lt!1408716 (++!11166 lt!1408675 lt!1408708))))

(declare-fun lt!1408692 () List!42834)

(declare-fun suffix!1299 () List!42834)

(assert (=> b!3993064 (= lt!1408703 (++!11166 lt!1408692 suffix!1299))))

(declare-fun lt!1408683 () List!42834)

(assert (=> b!3993064 (= lt!1408708 (++!11166 lt!1408683 suffix!1299))))

(declare-fun lt!1408723 () Unit!61522)

(declare-fun lemmaConcatAssociativity!2486 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> b!3993064 (= lt!1408723 (lemmaConcatAssociativity!2486 lt!1408675 lt!1408683 suffix!1299))))

(declare-fun b!3993065 () Bool)

(declare-fun e!2475468 () Bool)

(declare-fun e!2475471 () Bool)

(assert (=> b!3993065 (= e!2475468 e!2475471)))

(declare-fun res!1620938 () Bool)

(assert (=> b!3993065 (=> res!1620938 e!2475471)))

(declare-fun lt!1408709 () List!42834)

(assert (=> b!3993065 (= res!1620938 (not (= lt!1408709 lt!1408671)))))

(declare-fun prefix!494 () List!42834)

(declare-fun lt!1408726 () List!42834)

(assert (=> b!3993065 (= lt!1408709 (++!11166 prefix!494 lt!1408726))))

(declare-fun lt!1408707 () List!42834)

(assert (=> b!3993065 (= lt!1408709 (++!11166 lt!1408727 lt!1408707))))

(declare-fun newSuffix!27 () List!42834)

(declare-fun lt!1408720 () Unit!61522)

(assert (=> b!3993065 (= lt!1408720 (lemmaConcatAssociativity!2486 prefix!494 newSuffix!27 lt!1408707))))

(declare-fun b!3993066 () Bool)

(declare-fun e!2475463 () Bool)

(declare-fun e!2475470 () Bool)

(assert (=> b!3993066 (= e!2475463 (not e!2475470))))

(declare-fun res!1620954 () Bool)

(assert (=> b!3993066 (=> res!1620954 e!2475470)))

(declare-fun lt!1408666 () List!42834)

(assert (=> b!3993066 (= res!1620954 (not (= lt!1408666 lt!1408671)))))

(declare-fun suffixResult!105 () List!42834)

(assert (=> b!3993066 (= lt!1408666 (++!11166 lt!1408675 suffixResult!105))))

(declare-fun lt!1408682 () Unit!61522)

(assert (=> b!3993066 (= lt!1408682 (lemmaInv!979 (transformation!6764 (rule!9786 token!484))))))

(assert (=> b!3993066 (ruleValid!2696 thiss!21717 (rule!9786 token!484))))

(declare-fun lt!1408670 () Unit!61522)

(assert (=> b!3993066 (= lt!1408670 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1770 thiss!21717 (rule!9786 token!484) rules!2999))))

(declare-fun b!3993067 () Bool)

(declare-fun e!2475459 () Bool)

(assert (=> b!3993067 (= e!2475459 e!2475448)))

(declare-fun res!1620942 () Bool)

(assert (=> b!3993067 (=> res!1620942 e!2475448)))

(assert (=> b!3993067 (= res!1620942 (not (= lt!1408692 prefix!494)))))

(assert (=> b!3993067 (= lt!1408692 (++!11166 lt!1408675 lt!1408683))))

(declare-fun getSuffix!2282 (List!42834 List!42834) List!42834)

(assert (=> b!3993067 (= lt!1408683 (getSuffix!2282 prefix!494 lt!1408675))))

(assert (=> b!3993067 (isPrefix!3851 lt!1408675 prefix!494)))

(declare-fun lt!1408672 () Unit!61522)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!429 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> b!3993067 (= lt!1408672 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!429 prefix!494 lt!1408675 lt!1408671))))

(declare-fun b!3993068 () Bool)

(declare-fun res!1620950 () Bool)

(assert (=> b!3993068 (=> (not res!1620950) (not e!2475446))))

(declare-fun lt!1408678 () TokenValue!6994)

(assert (=> b!3993068 (= res!1620950 (= (value!213408 token!484) lt!1408678))))

(declare-fun b!3993069 () Bool)

(declare-fun e!2475478 () Bool)

(assert (=> b!3993069 (= e!2475478 e!2475479)))

(declare-fun res!1620948 () Bool)

(assert (=> b!3993069 (=> res!1620948 e!2475479)))

(assert (=> b!3993069 (= res!1620948 (not ((_ is Some!9177) lt!1408668)))))

(declare-fun maxPrefix!3651 (LexerInterface!6353 List!42836 List!42834) Option!9178)

(assert (=> b!3993069 (= lt!1408668 (maxPrefix!3651 thiss!21717 rules!2999 lt!1408727))))

(declare-fun lt!1408705 () tuple2!41908)

(declare-fun lt!1408681 () List!42834)

(declare-fun lt!1408713 () Token!12666)

(assert (=> b!3993069 (and (= suffixResult!105 lt!1408681) (= lt!1408705 (tuple2!41909 lt!1408713 lt!1408681)))))

(declare-fun lt!1408669 () Unit!61522)

(declare-fun lemmaSamePrefixThenSameSuffix!2038 (List!42834 List!42834 List!42834 List!42834 List!42834) Unit!61522)

(assert (=> b!3993069 (= lt!1408669 (lemmaSamePrefixThenSameSuffix!2038 lt!1408675 suffixResult!105 lt!1408675 lt!1408681 lt!1408671))))

(declare-fun lt!1408693 () List!42834)

(assert (=> b!3993069 (isPrefix!3851 lt!1408675 lt!1408693)))

(declare-fun lt!1408676 () Unit!61522)

(assert (=> b!3993069 (= lt!1408676 (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408675 lt!1408681))))

(declare-fun b!3993070 () Bool)

(declare-fun res!1620966 () Bool)

(assert (=> b!3993070 (=> (not res!1620966) (not e!2475473))))

(assert (=> b!3993070 (= res!1620966 (isPrefix!3851 newSuffix!27 suffix!1299))))

(declare-fun b!3993071 () Bool)

(declare-fun e!2475469 () Bool)

(assert (=> b!3993071 (= e!2475469 e!2475478)))

(declare-fun res!1620964 () Bool)

(assert (=> b!3993071 (=> res!1620964 e!2475478)))

(assert (=> b!3993071 (= res!1620964 (not (= lt!1408693 lt!1408671)))))

(assert (=> b!3993071 (= lt!1408693 (++!11166 lt!1408675 lt!1408681))))

(assert (=> b!3993071 (= lt!1408681 (getSuffix!2282 lt!1408671 lt!1408675))))

(assert (=> b!3993071 e!2475446))

(declare-fun res!1620957 () Bool)

(assert (=> b!3993071 (=> (not res!1620957) (not e!2475446))))

(assert (=> b!3993071 (= res!1620957 (isPrefix!3851 lt!1408671 lt!1408671))))

(declare-fun lt!1408680 () Unit!61522)

(declare-fun lemmaIsPrefixRefl!2443 (List!42834 List!42834) Unit!61522)

(assert (=> b!3993071 (= lt!1408680 (lemmaIsPrefixRefl!2443 lt!1408671 lt!1408671))))

(declare-fun b!3993072 () Bool)

(declare-fun lt!1408697 () Int)

(assert (=> b!3993072 (= e!2475446 (and (= (size!31942 token!484) lt!1408697) (= (originalCharacters!7364 token!484) lt!1408675)))))

(declare-fun b!3993073 () Bool)

(declare-fun res!1620959 () Bool)

(assert (=> b!3993073 (=> (not res!1620959) (not e!2475473))))

(assert (=> b!3993073 (= res!1620959 (>= (size!31943 suffix!1299) (size!31943 newSuffix!27)))))

(declare-fun b!3993074 () Bool)

(declare-fun Unit!61527 () Unit!61522)

(assert (=> b!3993074 (= e!2475472 Unit!61527)))

(declare-fun e!2475453 () Bool)

(assert (=> b!3993075 (= e!2475453 (and tp!1216040 tp!1216033))))

(declare-fun b!3993076 () Bool)

(declare-fun e!2475467 () Unit!61522)

(declare-fun Unit!61528 () Unit!61522)

(assert (=> b!3993076 (= e!2475467 Unit!61528)))

(declare-fun lt!1408696 () Unit!61522)

(assert (=> b!3993076 (= lt!1408696 (lemmaMaxPrefixOutputsMaxPrefix!418 thiss!21717 rules!2999 (rule!9786 token!484) lt!1408675 lt!1408671 lt!1408679 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun res!1620945 () Bool)

(assert (=> b!3993076 (= res!1620945 (not (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408679)))))

(declare-fun e!2475450 () Bool)

(assert (=> b!3993076 (=> (not res!1620945) (not e!2475450))))

(assert (=> b!3993076 e!2475450))

(declare-fun b!3993077 () Bool)

(assert (=> b!3993077 (= e!2475470 e!2475459)))

(declare-fun res!1620944 () Bool)

(assert (=> b!3993077 (=> res!1620944 e!2475459)))

(assert (=> b!3993077 (= res!1620944 (not (isPrefix!3851 lt!1408675 lt!1408671)))))

(assert (=> b!3993077 (isPrefix!3851 prefix!494 lt!1408671)))

(declare-fun lt!1408688 () Unit!61522)

(assert (=> b!3993077 (= lt!1408688 (lemmaConcatTwoListThenFirstIsPrefix!2694 prefix!494 suffix!1299))))

(assert (=> b!3993077 (isPrefix!3851 lt!1408675 lt!1408666)))

(declare-fun lt!1408677 () Unit!61522)

(assert (=> b!3993077 (= lt!1408677 (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408675 suffixResult!105))))

(declare-fun b!3993078 () Bool)

(declare-fun res!1620956 () Bool)

(assert (=> b!3993078 (=> (not res!1620956) (not e!2475473))))

(declare-fun isEmpty!25526 (List!42836) Bool)

(assert (=> b!3993078 (= res!1620956 (not (isEmpty!25526 rules!2999)))))

(declare-fun tp!1216042 () Bool)

(declare-fun b!3993079 () Bool)

(declare-fun e!2475445 () Bool)

(declare-fun inv!21 (TokenValue!6994) Bool)

(assert (=> b!3993079 (= e!2475477 (and (inv!21 (value!213408 token!484)) e!2475445 tp!1216042))))

(declare-fun b!3993080 () Bool)

(declare-fun res!1620949 () Bool)

(declare-fun e!2475456 () Bool)

(assert (=> b!3993080 (=> res!1620949 e!2475456)))

(assert (=> b!3993080 (= res!1620949 (not (= lt!1408722 lt!1408727)))))

(declare-fun b!3993081 () Bool)

(declare-fun e!2475457 () Bool)

(assert (=> b!3993081 (= e!2475457 e!2475469)))

(declare-fun res!1620947 () Bool)

(assert (=> b!3993081 (=> res!1620947 e!2475469)))

(assert (=> b!3993081 (= res!1620947 (not (matchR!5646 (regex!6764 (rule!9786 token!484)) lt!1408675)))))

(assert (=> b!3993081 (isPrefix!3851 lt!1408675 lt!1408727)))

(declare-fun lt!1408718 () Unit!61522)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!684 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> b!3993081 (= lt!1408718 (lemmaPrefixStaysPrefixWhenAddingToSuffix!684 lt!1408675 prefix!494 newSuffix!27))))

(declare-fun lt!1408701 () Unit!61522)

(assert (=> b!3993081 (= lt!1408701 (lemmaPrefixStaysPrefixWhenAddingToSuffix!684 lt!1408675 prefix!494 suffix!1299))))

(declare-fun b!3993082 () Bool)

(declare-fun tp!1216034 () Bool)

(assert (=> b!3993082 (= e!2475480 (and tp_is_empty!20309 tp!1216034))))

(declare-fun b!3993083 () Bool)

(assert (=> b!3993083 (= e!2475466 false)))

(declare-fun b!3993084 () Bool)

(assert (=> b!3993084 (= e!2475450 false)))

(declare-fun e!2475452 () Bool)

(assert (=> b!3993085 (= e!2475452 (and tp!1216036 tp!1216037))))

(declare-fun b!3993086 () Bool)

(assert (=> b!3993086 (= e!2475474 e!2475457)))

(declare-fun res!1620940 () Bool)

(assert (=> b!3993086 (=> res!1620940 e!2475457)))

(declare-fun lt!1408700 () Option!9178)

(declare-fun lt!1408699 () Option!9178)

(assert (=> b!3993086 (= res!1620940 (not (= lt!1408700 lt!1408699)))))

(assert (=> b!3993086 (= lt!1408700 (Some!9177 (tuple2!41909 lt!1408713 suffixResult!105)))))

(assert (=> b!3993086 (= lt!1408700 (maxPrefixOneRule!2685 thiss!21717 (rule!9786 token!484) lt!1408671))))

(assert (=> b!3993086 (= lt!1408713 (Token!12667 lt!1408678 (rule!9786 token!484) lt!1408697 lt!1408675))))

(assert (=> b!3993086 (= lt!1408678 (apply!9975 (transformation!6764 (rule!9786 token!484)) (seqFromList!5003 lt!1408675)))))

(declare-fun lt!1408665 () Unit!61522)

(assert (=> b!3993086 (= lt!1408665 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1507 thiss!21717 rules!2999 lt!1408675 lt!1408671 suffixResult!105 (rule!9786 token!484)))))

(assert (=> b!3993086 (= lt!1408708 suffixResult!105)))

(declare-fun lt!1408694 () Unit!61522)

(assert (=> b!3993086 (= lt!1408694 (lemmaSamePrefixThenSameSuffix!2038 lt!1408675 lt!1408708 lt!1408675 suffixResult!105 lt!1408671))))

(assert (=> b!3993086 (isPrefix!3851 lt!1408675 lt!1408716)))

(declare-fun lt!1408710 () Unit!61522)

(assert (=> b!3993086 (= lt!1408710 (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408675 lt!1408708))))

(declare-fun b!3993087 () Bool)

(declare-fun e!2475447 () Bool)

(assert (=> b!3993087 (= e!2475473 e!2475447)))

(declare-fun res!1620961 () Bool)

(assert (=> b!3993087 (=> (not res!1620961) (not e!2475447))))

(declare-fun lt!1408715 () Int)

(assert (=> b!3993087 (= res!1620961 (>= lt!1408715 lt!1408697))))

(assert (=> b!3993087 (= lt!1408697 (size!31943 lt!1408675))))

(assert (=> b!3993087 (= lt!1408715 (size!31943 prefix!494))))

(assert (=> b!3993087 (= lt!1408675 (list!15858 (charsOf!4580 token!484)))))

(declare-fun tp!1216032 () Bool)

(declare-fun b!3993088 () Bool)

(declare-fun inv!57042 (String!48688) Bool)

(declare-fun inv!57046 (TokenValueInjection!13416) Bool)

(assert (=> b!3993088 (= e!2475445 (and tp!1216032 (inv!57042 (tag!7624 (rule!9786 token!484))) (inv!57046 (transformation!6764 (rule!9786 token!484))) e!2475453))))

(declare-fun b!3993089 () Bool)

(assert (=> b!3993089 (= e!2475476 e!2475468)))

(declare-fun res!1620958 () Bool)

(assert (=> b!3993089 (=> res!1620958 e!2475468)))

(assert (=> b!3993089 (= res!1620958 (not (= lt!1408726 suffix!1299)))))

(assert (=> b!3993089 (= lt!1408726 (++!11166 newSuffix!27 lt!1408707))))

(assert (=> b!3993089 (= lt!1408707 (getSuffix!2282 suffix!1299 newSuffix!27))))

(declare-fun b!3993090 () Bool)

(declare-fun e!2475465 () Bool)

(assert (=> b!3993090 (= e!2475465 e!2475463)))

(declare-fun res!1620962 () Bool)

(assert (=> b!3993090 (=> (not res!1620962) (not e!2475463))))

(assert (=> b!3993090 (= res!1620962 (= (maxPrefix!3651 thiss!21717 rules!2999 lt!1408671) lt!1408699))))

(assert (=> b!3993090 (= lt!1408699 (Some!9177 lt!1408705))))

(assert (=> b!3993090 (= lt!1408705 (tuple2!41909 token!484 suffixResult!105))))

(assert (=> b!3993090 (= lt!1408671 (++!11166 prefix!494 suffix!1299))))

(declare-fun b!3993091 () Bool)

(assert (=> b!3993091 (= e!2475447 e!2475465)))

(declare-fun res!1620946 () Bool)

(assert (=> b!3993091 (=> (not res!1620946) (not e!2475465))))

(declare-fun lt!1408724 () List!42834)

(assert (=> b!3993091 (= res!1620946 (= lt!1408724 lt!1408727))))

(assert (=> b!3993091 (= lt!1408727 (++!11166 prefix!494 newSuffix!27))))

(assert (=> b!3993091 (= lt!1408724 (++!11166 lt!1408675 newSuffixResult!27))))

(declare-fun b!3993092 () Bool)

(declare-fun e!2475454 () Bool)

(declare-fun tp!1216041 () Bool)

(assert (=> b!3993092 (= e!2475444 (and e!2475454 tp!1216041))))

(declare-fun b!3993093 () Bool)

(declare-fun e!2475443 () Bool)

(declare-fun e!2475475 () Bool)

(assert (=> b!3993093 (= e!2475443 e!2475475)))

(declare-fun res!1620960 () Bool)

(assert (=> b!3993093 (=> res!1620960 e!2475475)))

(assert (=> b!3993093 (= res!1620960 (not (= lt!1408697 lt!1408689)))))

(declare-fun lt!1408667 () Unit!61522)

(assert (=> b!3993093 (= lt!1408667 e!2475472)))

(declare-fun c!690975 () Bool)

(assert (=> b!3993093 (= c!690975 (< lt!1408689 lt!1408697))))

(declare-fun lt!1408702 () Unit!61522)

(assert (=> b!3993093 (= lt!1408702 e!2475467)))

(declare-fun c!690973 () Bool)

(assert (=> b!3993093 (= c!690973 (> lt!1408689 lt!1408697))))

(declare-fun lt!1408673 () List!42834)

(assert (=> b!3993093 (= (_2!24088 (v!39533 lt!1408668)) lt!1408673)))

(declare-fun lt!1408685 () Unit!61522)

(assert (=> b!3993093 (= lt!1408685 (lemmaSamePrefixThenSameSuffix!2038 lt!1408679 (_2!24088 (v!39533 lt!1408668)) lt!1408679 lt!1408673 lt!1408727))))

(declare-fun lt!1408674 () List!42834)

(assert (=> b!3993093 (isPrefix!3851 lt!1408679 lt!1408674)))

(declare-fun lt!1408721 () Unit!61522)

(assert (=> b!3993093 (= lt!1408721 (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408679 lt!1408673))))

(declare-fun b!3993094 () Bool)

(assert (=> b!3993094 (= e!2475456 e!2475443)))

(declare-fun res!1620953 () Bool)

(assert (=> b!3993094 (=> res!1620953 e!2475443)))

(assert (=> b!3993094 (= res!1620953 (not (= lt!1408674 lt!1408727)))))

(assert (=> b!3993094 (= lt!1408674 (++!11166 lt!1408679 lt!1408673))))

(assert (=> b!3993094 (= lt!1408673 (getSuffix!2282 lt!1408727 lt!1408679))))

(declare-fun b!3993095 () Bool)

(declare-fun res!1620939 () Bool)

(assert (=> b!3993095 (=> (not res!1620939) (not e!2475473))))

(declare-fun rulesInvariant!5696 (LexerInterface!6353 List!42836) Bool)

(assert (=> b!3993095 (= res!1620939 (rulesInvariant!5696 thiss!21717 rules!2999))))

(declare-fun tp!1216035 () Bool)

(declare-fun b!3993096 () Bool)

(assert (=> b!3993096 (= e!2475454 (and tp!1216035 (inv!57042 (tag!7624 (h!48132 rules!2999))) (inv!57046 (transformation!6764 (h!48132 rules!2999))) e!2475452))))

(declare-fun b!3993097 () Bool)

(declare-fun Unit!61529 () Unit!61522)

(assert (=> b!3993097 (= e!2475467 Unit!61529)))

(declare-fun b!3993098 () Bool)

(declare-fun res!1620952 () Bool)

(assert (=> b!3993098 (=> res!1620952 e!2475475)))

(assert (=> b!3993098 (= res!1620952 (not (isPrefix!3851 lt!1408679 lt!1408727)))))

(declare-fun b!3993099 () Bool)

(declare-fun Unit!61530 () Unit!61522)

(assert (=> b!3993099 (= e!2475451 Unit!61530)))

(declare-fun b!3993100 () Bool)

(declare-fun tp!1216038 () Bool)

(assert (=> b!3993100 (= e!2475460 (and tp_is_empty!20309 tp!1216038))))

(declare-fun b!3993101 () Bool)

(declare-fun tp!1216039 () Bool)

(assert (=> b!3993101 (= e!2475449 (and tp_is_empty!20309 tp!1216039))))

(declare-fun b!3993102 () Bool)

(declare-fun tp!1216043 () Bool)

(assert (=> b!3993102 (= e!2475462 (and tp_is_empty!20309 tp!1216043))))

(declare-fun b!3993103 () Bool)

(assert (=> b!3993103 (= e!2475471 e!2475456)))

(declare-fun res!1620941 () Bool)

(assert (=> b!3993103 (=> res!1620941 e!2475456)))

(assert (=> b!3993103 (= res!1620941 (not (isPrefix!3851 lt!1408679 lt!1408671)))))

(assert (=> b!3993103 (isPrefix!3851 lt!1408679 lt!1408709)))

(declare-fun lt!1408717 () Unit!61522)

(assert (=> b!3993103 (= lt!1408717 (lemmaPrefixStaysPrefixWhenAddingToSuffix!684 lt!1408679 lt!1408727 lt!1408707))))

(declare-fun b!3993104 () Bool)

(declare-fun contains!8499 (List!42836 Rule!13328) Bool)

(assert (=> b!3993104 (= e!2475475 (contains!8499 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun lt!1408706 () Unit!61522)

(assert (=> b!3993104 (= lt!1408706 e!2475451)))

(declare-fun c!690974 () Bool)

(declare-fun getIndex!534 (List!42836 Rule!13328) Int)

(assert (=> b!3993104 (= c!690974 (< (getIndex!534 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (getIndex!534 rules!2999 (rule!9786 token!484))))))

(assert (=> b!3993104 (= (_2!24088 (v!39533 lt!1408668)) newSuffixResult!27)))

(declare-fun lt!1408711 () Unit!61522)

(assert (=> b!3993104 (= lt!1408711 (lemmaSamePrefixThenSameSuffix!2038 lt!1408679 (_2!24088 (v!39533 lt!1408668)) lt!1408675 newSuffixResult!27 lt!1408727))))

(assert (=> b!3993104 (= lt!1408679 lt!1408675)))

(declare-fun lt!1408684 () Unit!61522)

(declare-fun lemmaIsPrefixSameLengthThenSameList!873 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> b!3993104 (= lt!1408684 (lemmaIsPrefixSameLengthThenSameList!873 lt!1408679 lt!1408675 lt!1408727))))

(assert (= (and start!375788 res!1620955) b!3993078))

(assert (= (and b!3993078 res!1620956) b!3993095))

(assert (= (and b!3993095 res!1620939) b!3993073))

(assert (= (and b!3993073 res!1620959) b!3993070))

(assert (= (and b!3993070 res!1620966) b!3993087))

(assert (= (and b!3993087 res!1620961) b!3993091))

(assert (= (and b!3993091 res!1620946) b!3993090))

(assert (= (and b!3993090 res!1620962) b!3993066))

(assert (= (and b!3993066 (not res!1620954)) b!3993077))

(assert (= (and b!3993077 (not res!1620944)) b!3993067))

(assert (= (and b!3993067 (not res!1620942)) b!3993064))

(assert (= (and b!3993064 (not res!1620965)) b!3993086))

(assert (= (and b!3993086 (not res!1620940)) b!3993081))

(assert (= (and b!3993081 (not res!1620947)) b!3993071))

(assert (= (and b!3993071 res!1620957) b!3993068))

(assert (= (and b!3993068 res!1620950) b!3993063))

(assert (= (and b!3993063 res!1620963) b!3993072))

(assert (= (and b!3993071 (not res!1620964)) b!3993069))

(assert (= (and b!3993069 (not res!1620948)) b!3993062))

(assert (= (and b!3993062 (not res!1620943)) b!3993089))

(assert (= (and b!3993089 (not res!1620958)) b!3993065))

(assert (= (and b!3993065 (not res!1620938)) b!3993103))

(assert (= (and b!3993103 (not res!1620941)) b!3993080))

(assert (= (and b!3993080 (not res!1620949)) b!3993094))

(assert (= (and b!3993094 (not res!1620953)) b!3993093))

(assert (= (and b!3993093 c!690973) b!3993076))

(assert (= (and b!3993093 (not c!690973)) b!3993097))

(assert (= (and b!3993076 res!1620945) b!3993084))

(assert (= (and b!3993093 c!690975) b!3993060))

(assert (= (and b!3993093 (not c!690975)) b!3993074))

(assert (= (and b!3993093 (not res!1620960)) b!3993098))

(assert (= (and b!3993098 (not res!1620952)) b!3993104))

(assert (= (and b!3993104 c!690974) b!3993059))

(assert (= (and b!3993104 (not c!690974)) b!3993099))

(assert (= (and b!3993059 res!1620951) b!3993083))

(assert (= (and start!375788 ((_ is Cons!42710) prefix!494)) b!3993100))

(assert (= b!3993088 b!3993075))

(assert (= b!3993079 b!3993088))

(assert (= start!375788 b!3993079))

(assert (= (and start!375788 ((_ is Cons!42710) suffixResult!105)) b!3993102))

(assert (= (and start!375788 ((_ is Cons!42710) suffix!1299)) b!3993061))

(assert (= (and start!375788 ((_ is Cons!42710) newSuffix!27)) b!3993101))

(assert (= b!3993096 b!3993085))

(assert (= b!3993092 b!3993096))

(assert (= (and start!375788 ((_ is Cons!42712) rules!2999)) b!3993092))

(assert (= (and start!375788 ((_ is Cons!42710) newSuffixResult!27)) b!3993082))

(declare-fun m!4572421 () Bool)

(assert (=> b!3993076 m!4572421))

(declare-fun m!4572423 () Bool)

(assert (=> b!3993076 m!4572423))

(declare-fun m!4572425 () Bool)

(assert (=> b!3993103 m!4572425))

(declare-fun m!4572427 () Bool)

(assert (=> b!3993103 m!4572427))

(declare-fun m!4572429 () Bool)

(assert (=> b!3993103 m!4572429))

(declare-fun m!4572431 () Bool)

(assert (=> b!3993073 m!4572431))

(declare-fun m!4572433 () Bool)

(assert (=> b!3993073 m!4572433))

(declare-fun m!4572435 () Bool)

(assert (=> b!3993096 m!4572435))

(declare-fun m!4572437 () Bool)

(assert (=> b!3993096 m!4572437))

(declare-fun m!4572439 () Bool)

(assert (=> b!3993064 m!4572439))

(declare-fun m!4572441 () Bool)

(assert (=> b!3993064 m!4572441))

(declare-fun m!4572443 () Bool)

(assert (=> b!3993064 m!4572443))

(declare-fun m!4572445 () Bool)

(assert (=> b!3993064 m!4572445))

(declare-fun m!4572447 () Bool)

(assert (=> b!3993098 m!4572447))

(declare-fun m!4572449 () Bool)

(assert (=> b!3993094 m!4572449))

(declare-fun m!4572451 () Bool)

(assert (=> b!3993094 m!4572451))

(declare-fun m!4572453 () Bool)

(assert (=> b!3993077 m!4572453))

(declare-fun m!4572455 () Bool)

(assert (=> b!3993077 m!4572455))

(declare-fun m!4572457 () Bool)

(assert (=> b!3993077 m!4572457))

(declare-fun m!4572459 () Bool)

(assert (=> b!3993077 m!4572459))

(declare-fun m!4572461 () Bool)

(assert (=> b!3993077 m!4572461))

(declare-fun m!4572463 () Bool)

(assert (=> b!3993086 m!4572463))

(declare-fun m!4572465 () Bool)

(assert (=> b!3993086 m!4572465))

(declare-fun m!4572467 () Bool)

(assert (=> b!3993086 m!4572467))

(declare-fun m!4572469 () Bool)

(assert (=> b!3993086 m!4572469))

(declare-fun m!4572471 () Bool)

(assert (=> b!3993086 m!4572471))

(declare-fun m!4572473 () Bool)

(assert (=> b!3993086 m!4572473))

(assert (=> b!3993086 m!4572467))

(declare-fun m!4572475 () Bool)

(assert (=> b!3993086 m!4572475))

(declare-fun m!4572477 () Bool)

(assert (=> b!3993104 m!4572477))

(declare-fun m!4572479 () Bool)

(assert (=> b!3993104 m!4572479))

(declare-fun m!4572481 () Bool)

(assert (=> b!3993104 m!4572481))

(declare-fun m!4572483 () Bool)

(assert (=> b!3993104 m!4572483))

(declare-fun m!4572485 () Bool)

(assert (=> b!3993104 m!4572485))

(declare-fun m!4572487 () Bool)

(assert (=> b!3993095 m!4572487))

(declare-fun m!4572489 () Bool)

(assert (=> b!3993071 m!4572489))

(declare-fun m!4572491 () Bool)

(assert (=> b!3993071 m!4572491))

(declare-fun m!4572493 () Bool)

(assert (=> b!3993071 m!4572493))

(declare-fun m!4572495 () Bool)

(assert (=> b!3993071 m!4572495))

(declare-fun m!4572497 () Bool)

(assert (=> b!3993078 m!4572497))

(declare-fun m!4572499 () Bool)

(assert (=> b!3993081 m!4572499))

(declare-fun m!4572501 () Bool)

(assert (=> b!3993081 m!4572501))

(declare-fun m!4572503 () Bool)

(assert (=> b!3993081 m!4572503))

(declare-fun m!4572505 () Bool)

(assert (=> b!3993081 m!4572505))

(declare-fun m!4572507 () Bool)

(assert (=> b!3993070 m!4572507))

(declare-fun m!4572509 () Bool)

(assert (=> b!3993091 m!4572509))

(declare-fun m!4572511 () Bool)

(assert (=> b!3993091 m!4572511))

(declare-fun m!4572513 () Bool)

(assert (=> b!3993065 m!4572513))

(declare-fun m!4572515 () Bool)

(assert (=> b!3993065 m!4572515))

(declare-fun m!4572517 () Bool)

(assert (=> b!3993065 m!4572517))

(declare-fun m!4572519 () Bool)

(assert (=> b!3993067 m!4572519))

(declare-fun m!4572521 () Bool)

(assert (=> b!3993067 m!4572521))

(declare-fun m!4572523 () Bool)

(assert (=> b!3993067 m!4572523))

(declare-fun m!4572525 () Bool)

(assert (=> b!3993067 m!4572525))

(declare-fun m!4572527 () Bool)

(assert (=> b!3993087 m!4572527))

(declare-fun m!4572529 () Bool)

(assert (=> b!3993087 m!4572529))

(declare-fun m!4572531 () Bool)

(assert (=> b!3993087 m!4572531))

(assert (=> b!3993087 m!4572531))

(declare-fun m!4572533 () Bool)

(assert (=> b!3993087 m!4572533))

(declare-fun m!4572535 () Bool)

(assert (=> b!3993069 m!4572535))

(declare-fun m!4572537 () Bool)

(assert (=> b!3993069 m!4572537))

(declare-fun m!4572539 () Bool)

(assert (=> b!3993069 m!4572539))

(declare-fun m!4572541 () Bool)

(assert (=> b!3993069 m!4572541))

(declare-fun m!4572543 () Bool)

(assert (=> b!3993060 m!4572543))

(declare-fun m!4572545 () Bool)

(assert (=> start!375788 m!4572545))

(declare-fun m!4572547 () Bool)

(assert (=> b!3993062 m!4572547))

(declare-fun m!4572549 () Bool)

(assert (=> b!3993062 m!4572549))

(declare-fun m!4572551 () Bool)

(assert (=> b!3993062 m!4572551))

(declare-fun m!4572553 () Bool)

(assert (=> b!3993062 m!4572553))

(declare-fun m!4572555 () Bool)

(assert (=> b!3993062 m!4572555))

(declare-fun m!4572557 () Bool)

(assert (=> b!3993062 m!4572557))

(declare-fun m!4572559 () Bool)

(assert (=> b!3993062 m!4572559))

(declare-fun m!4572561 () Bool)

(assert (=> b!3993062 m!4572561))

(declare-fun m!4572563 () Bool)

(assert (=> b!3993062 m!4572563))

(declare-fun m!4572565 () Bool)

(assert (=> b!3993062 m!4572565))

(declare-fun m!4572567 () Bool)

(assert (=> b!3993062 m!4572567))

(declare-fun m!4572569 () Bool)

(assert (=> b!3993062 m!4572569))

(declare-fun m!4572571 () Bool)

(assert (=> b!3993062 m!4572571))

(declare-fun m!4572573 () Bool)

(assert (=> b!3993062 m!4572573))

(declare-fun m!4572575 () Bool)

(assert (=> b!3993062 m!4572575))

(declare-fun m!4572577 () Bool)

(assert (=> b!3993062 m!4572577))

(assert (=> b!3993062 m!4572573))

(declare-fun m!4572579 () Bool)

(assert (=> b!3993062 m!4572579))

(assert (=> b!3993062 m!4572553))

(declare-fun m!4572581 () Bool)

(assert (=> b!3993062 m!4572581))

(assert (=> b!3993062 m!4572565))

(declare-fun m!4572583 () Bool)

(assert (=> b!3993066 m!4572583))

(declare-fun m!4572585 () Bool)

(assert (=> b!3993066 m!4572585))

(declare-fun m!4572587 () Bool)

(assert (=> b!3993066 m!4572587))

(declare-fun m!4572589 () Bool)

(assert (=> b!3993066 m!4572589))

(declare-fun m!4572591 () Bool)

(assert (=> b!3993088 m!4572591))

(declare-fun m!4572593 () Bool)

(assert (=> b!3993088 m!4572593))

(declare-fun m!4572595 () Bool)

(assert (=> b!3993063 m!4572595))

(declare-fun m!4572597 () Bool)

(assert (=> b!3993090 m!4572597))

(declare-fun m!4572599 () Bool)

(assert (=> b!3993090 m!4572599))

(declare-fun m!4572601 () Bool)

(assert (=> b!3993079 m!4572601))

(declare-fun m!4572603 () Bool)

(assert (=> b!3993059 m!4572603))

(declare-fun m!4572605 () Bool)

(assert (=> b!3993059 m!4572605))

(declare-fun m!4572607 () Bool)

(assert (=> b!3993093 m!4572607))

(declare-fun m!4572609 () Bool)

(assert (=> b!3993093 m!4572609))

(declare-fun m!4572611 () Bool)

(assert (=> b!3993093 m!4572611))

(declare-fun m!4572613 () Bool)

(assert (=> b!3993089 m!4572613))

(declare-fun m!4572615 () Bool)

(assert (=> b!3993089 m!4572615))

(check-sat tp_is_empty!20309 (not b!3993062) (not b!3993102) (not b!3993065) (not b!3993088) (not b!3993094) (not b!3993066) (not b!3993104) (not b!3993086) b_and!306755 (not b!3993101) (not b!3993098) b_and!306757 b_and!306751 (not b_next!111627) (not b!3993100) (not b!3993092) (not b!3993081) (not b!3993077) (not b!3993071) (not b!3993063) (not b!3993059) (not b_next!111631) (not b!3993103) (not b!3993095) (not b!3993064) (not b!3993091) (not b_next!111629) (not b!3993067) (not b!3993087) (not start!375788) (not b!3993079) (not b_next!111625) (not b!3993061) (not b!3993069) (not b!3993093) (not b!3993096) (not b!3993078) (not b!3993089) (not b!3993076) (not b!3993070) (not b!3993073) b_and!306753 (not b!3993060) (not b!3993090) (not b!3993082))
(check-sat (not b_next!111631) b_and!306755 (not b_next!111629) b_and!306757 (not b_next!111625) b_and!306753 b_and!306751 (not b_next!111627))
(get-model)

(declare-fun b!3993152 () Bool)

(declare-fun e!2475512 () List!42834)

(assert (=> b!3993152 (= e!2475512 lt!1408707)))

(declare-fun b!3993154 () Bool)

(declare-fun res!1621000 () Bool)

(declare-fun e!2475511 () Bool)

(assert (=> b!3993154 (=> (not res!1621000) (not e!2475511))))

(declare-fun lt!1408751 () List!42834)

(assert (=> b!3993154 (= res!1621000 (= (size!31943 lt!1408751) (+ (size!31943 newSuffix!27) (size!31943 lt!1408707))))))

(declare-fun b!3993155 () Bool)

(assert (=> b!3993155 (= e!2475511 (or (not (= lt!1408707 Nil!42710)) (= lt!1408751 newSuffix!27)))))

(declare-fun b!3993153 () Bool)

(assert (=> b!3993153 (= e!2475512 (Cons!42710 (h!48130 newSuffix!27) (++!11166 (t!331873 newSuffix!27) lt!1408707)))))

(declare-fun d!1181563 () Bool)

(assert (=> d!1181563 e!2475511))

(declare-fun res!1620999 () Bool)

(assert (=> d!1181563 (=> (not res!1620999) (not e!2475511))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6478 (List!42834) (InoxSet C!23524))

(assert (=> d!1181563 (= res!1620999 (= (content!6478 lt!1408751) ((_ map or) (content!6478 newSuffix!27) (content!6478 lt!1408707))))))

(assert (=> d!1181563 (= lt!1408751 e!2475512)))

(declare-fun c!690984 () Bool)

(assert (=> d!1181563 (= c!690984 ((_ is Nil!42710) newSuffix!27))))

(assert (=> d!1181563 (= (++!11166 newSuffix!27 lt!1408707) lt!1408751)))

(assert (= (and d!1181563 c!690984) b!3993152))

(assert (= (and d!1181563 (not c!690984)) b!3993153))

(assert (= (and d!1181563 res!1620999) b!3993154))

(assert (= (and b!3993154 res!1621000) b!3993155))

(declare-fun m!4572685 () Bool)

(assert (=> b!3993154 m!4572685))

(assert (=> b!3993154 m!4572433))

(declare-fun m!4572687 () Bool)

(assert (=> b!3993154 m!4572687))

(declare-fun m!4572689 () Bool)

(assert (=> b!3993153 m!4572689))

(declare-fun m!4572691 () Bool)

(assert (=> d!1181563 m!4572691))

(declare-fun m!4572693 () Bool)

(assert (=> d!1181563 m!4572693))

(declare-fun m!4572695 () Bool)

(assert (=> d!1181563 m!4572695))

(assert (=> b!3993089 d!1181563))

(declare-fun d!1181575 () Bool)

(declare-fun lt!1408754 () List!42834)

(assert (=> d!1181575 (= (++!11166 newSuffix!27 lt!1408754) suffix!1299)))

(declare-fun e!2475515 () List!42834)

(assert (=> d!1181575 (= lt!1408754 e!2475515)))

(declare-fun c!690987 () Bool)

(assert (=> d!1181575 (= c!690987 ((_ is Cons!42710) newSuffix!27))))

(assert (=> d!1181575 (>= (size!31943 suffix!1299) (size!31943 newSuffix!27))))

(assert (=> d!1181575 (= (getSuffix!2282 suffix!1299 newSuffix!27) lt!1408754)))

(declare-fun b!3993160 () Bool)

(declare-fun tail!6227 (List!42834) List!42834)

(assert (=> b!3993160 (= e!2475515 (getSuffix!2282 (tail!6227 suffix!1299) (t!331873 newSuffix!27)))))

(declare-fun b!3993161 () Bool)

(assert (=> b!3993161 (= e!2475515 suffix!1299)))

(assert (= (and d!1181575 c!690987) b!3993160))

(assert (= (and d!1181575 (not c!690987)) b!3993161))

(declare-fun m!4572697 () Bool)

(assert (=> d!1181575 m!4572697))

(assert (=> d!1181575 m!4572431))

(assert (=> d!1181575 m!4572433))

(declare-fun m!4572699 () Bool)

(assert (=> b!3993160 m!4572699))

(assert (=> b!3993160 m!4572699))

(declare-fun m!4572701 () Bool)

(assert (=> b!3993160 m!4572701))

(assert (=> b!3993089 d!1181575))

(declare-fun b!3993162 () Bool)

(declare-fun e!2475517 () List!42834)

(assert (=> b!3993162 (= e!2475517 suffixResult!105)))

(declare-fun b!3993164 () Bool)

(declare-fun res!1621002 () Bool)

(declare-fun e!2475516 () Bool)

(assert (=> b!3993164 (=> (not res!1621002) (not e!2475516))))

(declare-fun lt!1408755 () List!42834)

(assert (=> b!3993164 (= res!1621002 (= (size!31943 lt!1408755) (+ (size!31943 lt!1408675) (size!31943 suffixResult!105))))))

(declare-fun b!3993165 () Bool)

(assert (=> b!3993165 (= e!2475516 (or (not (= suffixResult!105 Nil!42710)) (= lt!1408755 lt!1408675)))))

(declare-fun b!3993163 () Bool)

(assert (=> b!3993163 (= e!2475517 (Cons!42710 (h!48130 lt!1408675) (++!11166 (t!331873 lt!1408675) suffixResult!105)))))

(declare-fun d!1181577 () Bool)

(assert (=> d!1181577 e!2475516))

(declare-fun res!1621001 () Bool)

(assert (=> d!1181577 (=> (not res!1621001) (not e!2475516))))

(assert (=> d!1181577 (= res!1621001 (= (content!6478 lt!1408755) ((_ map or) (content!6478 lt!1408675) (content!6478 suffixResult!105))))))

(assert (=> d!1181577 (= lt!1408755 e!2475517)))

(declare-fun c!690988 () Bool)

(assert (=> d!1181577 (= c!690988 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181577 (= (++!11166 lt!1408675 suffixResult!105) lt!1408755)))

(assert (= (and d!1181577 c!690988) b!3993162))

(assert (= (and d!1181577 (not c!690988)) b!3993163))

(assert (= (and d!1181577 res!1621001) b!3993164))

(assert (= (and b!3993164 res!1621002) b!3993165))

(declare-fun m!4572703 () Bool)

(assert (=> b!3993164 m!4572703))

(assert (=> b!3993164 m!4572527))

(declare-fun m!4572705 () Bool)

(assert (=> b!3993164 m!4572705))

(declare-fun m!4572707 () Bool)

(assert (=> b!3993163 m!4572707))

(declare-fun m!4572709 () Bool)

(assert (=> d!1181577 m!4572709))

(declare-fun m!4572711 () Bool)

(assert (=> d!1181577 m!4572711))

(declare-fun m!4572713 () Bool)

(assert (=> d!1181577 m!4572713))

(assert (=> b!3993066 d!1181577))

(declare-fun d!1181579 () Bool)

(declare-fun e!2475520 () Bool)

(assert (=> d!1181579 e!2475520))

(declare-fun res!1621005 () Bool)

(assert (=> d!1181579 (=> (not res!1621005) (not e!2475520))))

(declare-fun semiInverseModEq!2901 (Int Int) Bool)

(assert (=> d!1181579 (= res!1621005 (semiInverseModEq!2901 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))))))

(declare-fun Unit!61534 () Unit!61522)

(assert (=> d!1181579 (= (lemmaInv!979 (transformation!6764 (rule!9786 token!484))) Unit!61534)))

(declare-fun b!3993168 () Bool)

(declare-fun equivClasses!2800 (Int Int) Bool)

(assert (=> b!3993168 (= e!2475520 (equivClasses!2800 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))))))

(assert (= (and d!1181579 res!1621005) b!3993168))

(declare-fun m!4572715 () Bool)

(assert (=> d!1181579 m!4572715))

(declare-fun m!4572717 () Bool)

(assert (=> b!3993168 m!4572717))

(assert (=> b!3993066 d!1181579))

(declare-fun d!1181581 () Bool)

(declare-fun res!1621010 () Bool)

(declare-fun e!2475523 () Bool)

(assert (=> d!1181581 (=> (not res!1621010) (not e!2475523))))

(declare-fun validRegex!5294 (Regex!11669) Bool)

(assert (=> d!1181581 (= res!1621010 (validRegex!5294 (regex!6764 (rule!9786 token!484))))))

(assert (=> d!1181581 (= (ruleValid!2696 thiss!21717 (rule!9786 token!484)) e!2475523)))

(declare-fun b!3993173 () Bool)

(declare-fun res!1621011 () Bool)

(assert (=> b!3993173 (=> (not res!1621011) (not e!2475523))))

(declare-fun nullable!4094 (Regex!11669) Bool)

(assert (=> b!3993173 (= res!1621011 (not (nullable!4094 (regex!6764 (rule!9786 token!484)))))))

(declare-fun b!3993174 () Bool)

(assert (=> b!3993174 (= e!2475523 (not (= (tag!7624 (rule!9786 token!484)) (String!48689 ""))))))

(assert (= (and d!1181581 res!1621010) b!3993173))

(assert (= (and b!3993173 res!1621011) b!3993174))

(declare-fun m!4572719 () Bool)

(assert (=> d!1181581 m!4572719))

(declare-fun m!4572721 () Bool)

(assert (=> b!3993173 m!4572721))

(assert (=> b!3993066 d!1181581))

(declare-fun d!1181583 () Bool)

(assert (=> d!1181583 (ruleValid!2696 thiss!21717 (rule!9786 token!484))))

(declare-fun lt!1408758 () Unit!61522)

(declare-fun choose!24037 (LexerInterface!6353 Rule!13328 List!42836) Unit!61522)

(assert (=> d!1181583 (= lt!1408758 (choose!24037 thiss!21717 (rule!9786 token!484) rules!2999))))

(assert (=> d!1181583 (contains!8499 rules!2999 (rule!9786 token!484))))

(assert (=> d!1181583 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1770 thiss!21717 (rule!9786 token!484) rules!2999) lt!1408758)))

(declare-fun bs!588494 () Bool)

(assert (= bs!588494 d!1181583))

(assert (=> bs!588494 m!4572587))

(declare-fun m!4572723 () Bool)

(assert (=> bs!588494 m!4572723))

(declare-fun m!4572725 () Bool)

(assert (=> bs!588494 m!4572725))

(assert (=> b!3993066 d!1181583))

(declare-fun d!1181585 () Bool)

(assert (=> d!1181585 (= (inv!57042 (tag!7624 (rule!9786 token!484))) (= (mod (str.len (value!213407 (tag!7624 (rule!9786 token!484)))) 2) 0))))

(assert (=> b!3993088 d!1181585))

(declare-fun d!1181587 () Bool)

(declare-fun res!1621028 () Bool)

(declare-fun e!2475534 () Bool)

(assert (=> d!1181587 (=> (not res!1621028) (not e!2475534))))

(assert (=> d!1181587 (= res!1621028 (semiInverseModEq!2901 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))))))

(assert (=> d!1181587 (= (inv!57046 (transformation!6764 (rule!9786 token!484))) e!2475534)))

(declare-fun b!3993195 () Bool)

(assert (=> b!3993195 (= e!2475534 (equivClasses!2800 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))))))

(assert (= (and d!1181587 res!1621028) b!3993195))

(assert (=> d!1181587 m!4572715))

(assert (=> b!3993195 m!4572717))

(assert (=> b!3993088 d!1181587))

(declare-fun b!3993196 () Bool)

(declare-fun e!2475536 () List!42834)

(assert (=> b!3993196 (= e!2475536 lt!1408683)))

(declare-fun b!3993198 () Bool)

(declare-fun res!1621030 () Bool)

(declare-fun e!2475535 () Bool)

(assert (=> b!3993198 (=> (not res!1621030) (not e!2475535))))

(declare-fun lt!1408769 () List!42834)

(assert (=> b!3993198 (= res!1621030 (= (size!31943 lt!1408769) (+ (size!31943 lt!1408675) (size!31943 lt!1408683))))))

(declare-fun b!3993199 () Bool)

(assert (=> b!3993199 (= e!2475535 (or (not (= lt!1408683 Nil!42710)) (= lt!1408769 lt!1408675)))))

(declare-fun b!3993197 () Bool)

(assert (=> b!3993197 (= e!2475536 (Cons!42710 (h!48130 lt!1408675) (++!11166 (t!331873 lt!1408675) lt!1408683)))))

(declare-fun d!1181589 () Bool)

(assert (=> d!1181589 e!2475535))

(declare-fun res!1621029 () Bool)

(assert (=> d!1181589 (=> (not res!1621029) (not e!2475535))))

(assert (=> d!1181589 (= res!1621029 (= (content!6478 lt!1408769) ((_ map or) (content!6478 lt!1408675) (content!6478 lt!1408683))))))

(assert (=> d!1181589 (= lt!1408769 e!2475536)))

(declare-fun c!690991 () Bool)

(assert (=> d!1181589 (= c!690991 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181589 (= (++!11166 lt!1408675 lt!1408683) lt!1408769)))

(assert (= (and d!1181589 c!690991) b!3993196))

(assert (= (and d!1181589 (not c!690991)) b!3993197))

(assert (= (and d!1181589 res!1621029) b!3993198))

(assert (= (and b!3993198 res!1621030) b!3993199))

(declare-fun m!4572727 () Bool)

(assert (=> b!3993198 m!4572727))

(assert (=> b!3993198 m!4572527))

(declare-fun m!4572729 () Bool)

(assert (=> b!3993198 m!4572729))

(declare-fun m!4572731 () Bool)

(assert (=> b!3993197 m!4572731))

(declare-fun m!4572733 () Bool)

(assert (=> d!1181589 m!4572733))

(assert (=> d!1181589 m!4572711))

(declare-fun m!4572735 () Bool)

(assert (=> d!1181589 m!4572735))

(assert (=> b!3993067 d!1181589))

(declare-fun d!1181591 () Bool)

(declare-fun lt!1408775 () List!42834)

(assert (=> d!1181591 (= (++!11166 lt!1408675 lt!1408775) prefix!494)))

(declare-fun e!2475541 () List!42834)

(assert (=> d!1181591 (= lt!1408775 e!2475541)))

(declare-fun c!690993 () Bool)

(assert (=> d!1181591 (= c!690993 ((_ is Cons!42710) lt!1408675))))

(assert (=> d!1181591 (>= (size!31943 prefix!494) (size!31943 lt!1408675))))

(assert (=> d!1181591 (= (getSuffix!2282 prefix!494 lt!1408675) lt!1408775)))

(declare-fun b!3993209 () Bool)

(assert (=> b!3993209 (= e!2475541 (getSuffix!2282 (tail!6227 prefix!494) (t!331873 lt!1408675)))))

(declare-fun b!3993210 () Bool)

(assert (=> b!3993210 (= e!2475541 prefix!494)))

(assert (= (and d!1181591 c!690993) b!3993209))

(assert (= (and d!1181591 (not c!690993)) b!3993210))

(declare-fun m!4572737 () Bool)

(assert (=> d!1181591 m!4572737))

(assert (=> d!1181591 m!4572529))

(assert (=> d!1181591 m!4572527))

(declare-fun m!4572739 () Bool)

(assert (=> b!3993209 m!4572739))

(assert (=> b!3993209 m!4572739))

(declare-fun m!4572741 () Bool)

(assert (=> b!3993209 m!4572741))

(assert (=> b!3993067 d!1181591))

(declare-fun b!3993236 () Bool)

(declare-fun e!2475558 () Bool)

(assert (=> b!3993236 (= e!2475558 (isPrefix!3851 (tail!6227 lt!1408675) (tail!6227 prefix!494)))))

(declare-fun b!3993234 () Bool)

(declare-fun e!2475559 () Bool)

(assert (=> b!3993234 (= e!2475559 e!2475558)))

(declare-fun res!1621058 () Bool)

(assert (=> b!3993234 (=> (not res!1621058) (not e!2475558))))

(assert (=> b!3993234 (= res!1621058 (not ((_ is Nil!42710) prefix!494)))))

(declare-fun b!3993237 () Bool)

(declare-fun e!2475557 () Bool)

(assert (=> b!3993237 (= e!2475557 (>= (size!31943 prefix!494) (size!31943 lt!1408675)))))

(declare-fun b!3993235 () Bool)

(declare-fun res!1621055 () Bool)

(assert (=> b!3993235 (=> (not res!1621055) (not e!2475558))))

(declare-fun head!8495 (List!42834) C!23524)

(assert (=> b!3993235 (= res!1621055 (= (head!8495 lt!1408675) (head!8495 prefix!494)))))

(declare-fun d!1181593 () Bool)

(assert (=> d!1181593 e!2475557))

(declare-fun res!1621056 () Bool)

(assert (=> d!1181593 (=> res!1621056 e!2475557)))

(declare-fun lt!1408781 () Bool)

(assert (=> d!1181593 (= res!1621056 (not lt!1408781))))

(assert (=> d!1181593 (= lt!1408781 e!2475559)))

(declare-fun res!1621057 () Bool)

(assert (=> d!1181593 (=> res!1621057 e!2475559)))

(assert (=> d!1181593 (= res!1621057 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181593 (= (isPrefix!3851 lt!1408675 prefix!494) lt!1408781)))

(assert (= (and d!1181593 (not res!1621057)) b!3993234))

(assert (= (and b!3993234 res!1621058) b!3993235))

(assert (= (and b!3993235 res!1621055) b!3993236))

(assert (= (and d!1181593 (not res!1621056)) b!3993237))

(declare-fun m!4572799 () Bool)

(assert (=> b!3993236 m!4572799))

(assert (=> b!3993236 m!4572739))

(assert (=> b!3993236 m!4572799))

(assert (=> b!3993236 m!4572739))

(declare-fun m!4572801 () Bool)

(assert (=> b!3993236 m!4572801))

(assert (=> b!3993237 m!4572529))

(assert (=> b!3993237 m!4572527))

(declare-fun m!4572803 () Bool)

(assert (=> b!3993235 m!4572803))

(declare-fun m!4572805 () Bool)

(assert (=> b!3993235 m!4572805))

(assert (=> b!3993067 d!1181593))

(declare-fun d!1181605 () Bool)

(assert (=> d!1181605 (isPrefix!3851 lt!1408675 prefix!494)))

(declare-fun lt!1408784 () Unit!61522)

(declare-fun choose!24038 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> d!1181605 (= lt!1408784 (choose!24038 prefix!494 lt!1408675 lt!1408671))))

(assert (=> d!1181605 (isPrefix!3851 prefix!494 lt!1408671)))

(assert (=> d!1181605 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!429 prefix!494 lt!1408675 lt!1408671) lt!1408784)))

(declare-fun bs!588496 () Bool)

(assert (= bs!588496 d!1181605))

(assert (=> bs!588496 m!4572523))

(declare-fun m!4572807 () Bool)

(assert (=> bs!588496 m!4572807))

(assert (=> bs!588496 m!4572461))

(assert (=> b!3993067 d!1181605))

(declare-fun d!1181607 () Bool)

(assert (=> d!1181607 (= (maxPrefixOneRule!2685 thiss!21717 (rule!9786 token!484) lt!1408671) (Some!9177 (tuple2!41909 (Token!12667 (apply!9975 (transformation!6764 (rule!9786 token!484)) (seqFromList!5003 lt!1408675)) (rule!9786 token!484) (size!31943 lt!1408675) lt!1408675) suffixResult!105)))))

(declare-fun lt!1408805 () Unit!61522)

(declare-fun choose!24039 (LexerInterface!6353 List!42836 List!42834 List!42834 List!42834 Rule!13328) Unit!61522)

(assert (=> d!1181607 (= lt!1408805 (choose!24039 thiss!21717 rules!2999 lt!1408675 lt!1408671 suffixResult!105 (rule!9786 token!484)))))

(assert (=> d!1181607 (not (isEmpty!25526 rules!2999))))

(assert (=> d!1181607 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1507 thiss!21717 rules!2999 lt!1408675 lt!1408671 suffixResult!105 (rule!9786 token!484)) lt!1408805)))

(declare-fun bs!588497 () Bool)

(assert (= bs!588497 d!1181607))

(declare-fun m!4572849 () Bool)

(assert (=> bs!588497 m!4572849))

(assert (=> bs!588497 m!4572527))

(assert (=> bs!588497 m!4572497))

(assert (=> bs!588497 m!4572471))

(assert (=> bs!588497 m!4572467))

(assert (=> bs!588497 m!4572467))

(assert (=> bs!588497 m!4572469))

(assert (=> b!3993086 d!1181607))

(declare-fun d!1181613 () Bool)

(assert (=> d!1181613 (= lt!1408708 suffixResult!105)))

(declare-fun lt!1408813 () Unit!61522)

(declare-fun choose!24040 (List!42834 List!42834 List!42834 List!42834 List!42834) Unit!61522)

(assert (=> d!1181613 (= lt!1408813 (choose!24040 lt!1408675 lt!1408708 lt!1408675 suffixResult!105 lt!1408671))))

(assert (=> d!1181613 (isPrefix!3851 lt!1408675 lt!1408671)))

(assert (=> d!1181613 (= (lemmaSamePrefixThenSameSuffix!2038 lt!1408675 lt!1408708 lt!1408675 suffixResult!105 lt!1408671) lt!1408813)))

(declare-fun bs!588499 () Bool)

(assert (= bs!588499 d!1181613))

(declare-fun m!4572859 () Bool)

(assert (=> bs!588499 m!4572859))

(assert (=> bs!588499 m!4572455))

(assert (=> b!3993086 d!1181613))

(declare-fun b!3993287 () Bool)

(declare-fun e!2475581 () Bool)

(assert (=> b!3993287 (= e!2475581 (isPrefix!3851 (tail!6227 lt!1408675) (tail!6227 lt!1408716)))))

(declare-fun b!3993285 () Bool)

(declare-fun e!2475582 () Bool)

(assert (=> b!3993285 (= e!2475582 e!2475581)))

(declare-fun res!1621085 () Bool)

(assert (=> b!3993285 (=> (not res!1621085) (not e!2475581))))

(assert (=> b!3993285 (= res!1621085 (not ((_ is Nil!42710) lt!1408716)))))

(declare-fun b!3993288 () Bool)

(declare-fun e!2475580 () Bool)

(assert (=> b!3993288 (= e!2475580 (>= (size!31943 lt!1408716) (size!31943 lt!1408675)))))

(declare-fun b!3993286 () Bool)

(declare-fun res!1621082 () Bool)

(assert (=> b!3993286 (=> (not res!1621082) (not e!2475581))))

(assert (=> b!3993286 (= res!1621082 (= (head!8495 lt!1408675) (head!8495 lt!1408716)))))

(declare-fun d!1181621 () Bool)

(assert (=> d!1181621 e!2475580))

(declare-fun res!1621083 () Bool)

(assert (=> d!1181621 (=> res!1621083 e!2475580)))

(declare-fun lt!1408814 () Bool)

(assert (=> d!1181621 (= res!1621083 (not lt!1408814))))

(assert (=> d!1181621 (= lt!1408814 e!2475582)))

(declare-fun res!1621084 () Bool)

(assert (=> d!1181621 (=> res!1621084 e!2475582)))

(assert (=> d!1181621 (= res!1621084 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181621 (= (isPrefix!3851 lt!1408675 lt!1408716) lt!1408814)))

(assert (= (and d!1181621 (not res!1621084)) b!3993285))

(assert (= (and b!3993285 res!1621085) b!3993286))

(assert (= (and b!3993286 res!1621082) b!3993287))

(assert (= (and d!1181621 (not res!1621083)) b!3993288))

(assert (=> b!3993287 m!4572799))

(declare-fun m!4572861 () Bool)

(assert (=> b!3993287 m!4572861))

(assert (=> b!3993287 m!4572799))

(assert (=> b!3993287 m!4572861))

(declare-fun m!4572863 () Bool)

(assert (=> b!3993287 m!4572863))

(declare-fun m!4572865 () Bool)

(assert (=> b!3993288 m!4572865))

(assert (=> b!3993288 m!4572527))

(assert (=> b!3993286 m!4572803))

(declare-fun m!4572867 () Bool)

(assert (=> b!3993286 m!4572867))

(assert (=> b!3993086 d!1181621))

(declare-fun b!3993518 () Bool)

(declare-fun e!2475714 () Option!9178)

(assert (=> b!3993518 (= e!2475714 None!9177)))

(declare-fun b!3993520 () Bool)

(declare-fun res!1621241 () Bool)

(declare-fun e!2475713 () Bool)

(assert (=> b!3993520 (=> (not res!1621241) (not e!2475713))))

(declare-fun lt!1408907 () Option!9178)

(declare-fun get!14052 (Option!9178) tuple2!41908)

(assert (=> b!3993520 (= res!1621241 (< (size!31943 (_2!24088 (get!14052 lt!1408907))) (size!31943 lt!1408671)))))

(declare-fun b!3993521 () Bool)

(assert (=> b!3993521 (= e!2475713 (= (size!31942 (_1!24088 (get!14052 lt!1408907))) (size!31943 (originalCharacters!7364 (_1!24088 (get!14052 lt!1408907))))))))

(declare-fun b!3993522 () Bool)

(declare-fun res!1621240 () Bool)

(assert (=> b!3993522 (=> (not res!1621240) (not e!2475713))))

(assert (=> b!3993522 (= res!1621240 (= (rule!9786 (_1!24088 (get!14052 lt!1408907))) (rule!9786 token!484)))))

(declare-fun b!3993523 () Bool)

(declare-fun e!2475715 () Bool)

(declare-datatypes ((tuple2!41912 0))(
  ( (tuple2!41913 (_1!24090 List!42834) (_2!24090 List!42834)) )
))
(declare-fun findLongestMatchInner!1338 (Regex!11669 List!42834 Int List!42834 List!42834 Int) tuple2!41912)

(assert (=> b!3993523 (= e!2475715 (matchR!5646 (regex!6764 (rule!9786 token!484)) (_1!24090 (findLongestMatchInner!1338 (regex!6764 (rule!9786 token!484)) Nil!42710 (size!31943 Nil!42710) lt!1408671 lt!1408671 (size!31943 lt!1408671)))))))

(declare-fun b!3993524 () Bool)

(declare-fun res!1621236 () Bool)

(assert (=> b!3993524 (=> (not res!1621236) (not e!2475713))))

(assert (=> b!3993524 (= res!1621236 (= (++!11166 (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1408907)))) (_2!24088 (get!14052 lt!1408907))) lt!1408671))))

(declare-fun d!1181623 () Bool)

(declare-fun e!2475712 () Bool)

(assert (=> d!1181623 e!2475712))

(declare-fun res!1621237 () Bool)

(assert (=> d!1181623 (=> res!1621237 e!2475712)))

(declare-fun isEmpty!25529 (Option!9178) Bool)

(assert (=> d!1181623 (= res!1621237 (isEmpty!25529 lt!1408907))))

(assert (=> d!1181623 (= lt!1408907 e!2475714)))

(declare-fun c!691048 () Bool)

(declare-fun lt!1408905 () tuple2!41912)

(declare-fun isEmpty!25530 (List!42834) Bool)

(assert (=> d!1181623 (= c!691048 (isEmpty!25530 (_1!24090 lt!1408905)))))

(declare-fun findLongestMatch!1251 (Regex!11669 List!42834) tuple2!41912)

(assert (=> d!1181623 (= lt!1408905 (findLongestMatch!1251 (regex!6764 (rule!9786 token!484)) lt!1408671))))

(assert (=> d!1181623 (ruleValid!2696 thiss!21717 (rule!9786 token!484))))

(assert (=> d!1181623 (= (maxPrefixOneRule!2685 thiss!21717 (rule!9786 token!484) lt!1408671) lt!1408907)))

(declare-fun b!3993519 () Bool)

(declare-fun res!1621239 () Bool)

(assert (=> b!3993519 (=> (not res!1621239) (not e!2475713))))

(assert (=> b!3993519 (= res!1621239 (= (value!213408 (_1!24088 (get!14052 lt!1408907))) (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (get!14052 lt!1408907)))) (seqFromList!5003 (originalCharacters!7364 (_1!24088 (get!14052 lt!1408907)))))))))

(declare-fun b!3993525 () Bool)

(declare-fun size!31945 (BalanceConc!25544) Int)

(assert (=> b!3993525 (= e!2475714 (Some!9177 (tuple2!41909 (Token!12667 (apply!9975 (transformation!6764 (rule!9786 token!484)) (seqFromList!5003 (_1!24090 lt!1408905))) (rule!9786 token!484) (size!31945 (seqFromList!5003 (_1!24090 lt!1408905))) (_1!24090 lt!1408905)) (_2!24090 lt!1408905))))))

(declare-fun lt!1408906 () Unit!61522)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1311 (Regex!11669 List!42834) Unit!61522)

(assert (=> b!3993525 (= lt!1408906 (longestMatchIsAcceptedByMatchOrIsEmpty!1311 (regex!6764 (rule!9786 token!484)) lt!1408671))))

(declare-fun res!1621242 () Bool)

(assert (=> b!3993525 (= res!1621242 (isEmpty!25530 (_1!24090 (findLongestMatchInner!1338 (regex!6764 (rule!9786 token!484)) Nil!42710 (size!31943 Nil!42710) lt!1408671 lt!1408671 (size!31943 lt!1408671)))))))

(assert (=> b!3993525 (=> res!1621242 e!2475715)))

(assert (=> b!3993525 e!2475715))

(declare-fun lt!1408909 () Unit!61522)

(assert (=> b!3993525 (= lt!1408909 lt!1408906)))

(declare-fun lt!1408908 () Unit!61522)

(declare-fun lemmaSemiInverse!1856 (TokenValueInjection!13416 BalanceConc!25544) Unit!61522)

(assert (=> b!3993525 (= lt!1408908 (lemmaSemiInverse!1856 (transformation!6764 (rule!9786 token!484)) (seqFromList!5003 (_1!24090 lt!1408905))))))

(declare-fun b!3993526 () Bool)

(assert (=> b!3993526 (= e!2475712 e!2475713)))

(declare-fun res!1621238 () Bool)

(assert (=> b!3993526 (=> (not res!1621238) (not e!2475713))))

(assert (=> b!3993526 (= res!1621238 (matchR!5646 (regex!6764 (rule!9786 token!484)) (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1408907))))))))

(assert (= (and d!1181623 c!691048) b!3993518))

(assert (= (and d!1181623 (not c!691048)) b!3993525))

(assert (= (and b!3993525 (not res!1621242)) b!3993523))

(assert (= (and d!1181623 (not res!1621237)) b!3993526))

(assert (= (and b!3993526 res!1621238) b!3993524))

(assert (= (and b!3993524 res!1621236) b!3993520))

(assert (= (and b!3993520 res!1621241) b!3993522))

(assert (= (and b!3993522 res!1621240) b!3993519))

(assert (= (and b!3993519 res!1621239) b!3993521))

(declare-fun m!4573251 () Bool)

(assert (=> b!3993522 m!4573251))

(assert (=> b!3993520 m!4573251))

(declare-fun m!4573253 () Bool)

(assert (=> b!3993520 m!4573253))

(declare-fun m!4573255 () Bool)

(assert (=> b!3993520 m!4573255))

(declare-fun m!4573257 () Bool)

(assert (=> b!3993525 m!4573257))

(declare-fun m!4573259 () Bool)

(assert (=> b!3993525 m!4573259))

(assert (=> b!3993525 m!4573257))

(declare-fun m!4573261 () Bool)

(assert (=> b!3993525 m!4573261))

(assert (=> b!3993525 m!4573257))

(declare-fun m!4573263 () Bool)

(assert (=> b!3993525 m!4573263))

(declare-fun m!4573271 () Bool)

(assert (=> b!3993525 m!4573271))

(assert (=> b!3993525 m!4573257))

(declare-fun m!4573273 () Bool)

(assert (=> b!3993525 m!4573273))

(declare-fun m!4573275 () Bool)

(assert (=> b!3993525 m!4573275))

(assert (=> b!3993525 m!4573275))

(assert (=> b!3993525 m!4573255))

(declare-fun m!4573277 () Bool)

(assert (=> b!3993525 m!4573277))

(assert (=> b!3993525 m!4573255))

(assert (=> b!3993526 m!4573251))

(declare-fun m!4573279 () Bool)

(assert (=> b!3993526 m!4573279))

(assert (=> b!3993526 m!4573279))

(declare-fun m!4573283 () Bool)

(assert (=> b!3993526 m!4573283))

(assert (=> b!3993526 m!4573283))

(declare-fun m!4573285 () Bool)

(assert (=> b!3993526 m!4573285))

(declare-fun m!4573287 () Bool)

(assert (=> d!1181623 m!4573287))

(declare-fun m!4573291 () Bool)

(assert (=> d!1181623 m!4573291))

(declare-fun m!4573293 () Bool)

(assert (=> d!1181623 m!4573293))

(assert (=> d!1181623 m!4572587))

(assert (=> b!3993523 m!4573275))

(assert (=> b!3993523 m!4573255))

(assert (=> b!3993523 m!4573275))

(assert (=> b!3993523 m!4573255))

(assert (=> b!3993523 m!4573277))

(declare-fun m!4573297 () Bool)

(assert (=> b!3993523 m!4573297))

(assert (=> b!3993524 m!4573251))

(assert (=> b!3993524 m!4573279))

(assert (=> b!3993524 m!4573279))

(assert (=> b!3993524 m!4573283))

(assert (=> b!3993524 m!4573283))

(declare-fun m!4573301 () Bool)

(assert (=> b!3993524 m!4573301))

(assert (=> b!3993519 m!4573251))

(declare-fun m!4573303 () Bool)

(assert (=> b!3993519 m!4573303))

(assert (=> b!3993519 m!4573303))

(declare-fun m!4573305 () Bool)

(assert (=> b!3993519 m!4573305))

(assert (=> b!3993521 m!4573251))

(declare-fun m!4573307 () Bool)

(assert (=> b!3993521 m!4573307))

(assert (=> b!3993086 d!1181623))

(declare-fun d!1181761 () Bool)

(assert (=> d!1181761 (isPrefix!3851 lt!1408675 (++!11166 lt!1408675 lt!1408708))))

(declare-fun lt!1408921 () Unit!61522)

(declare-fun choose!24041 (List!42834 List!42834) Unit!61522)

(assert (=> d!1181761 (= lt!1408921 (choose!24041 lt!1408675 lt!1408708))))

(assert (=> d!1181761 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408675 lt!1408708) lt!1408921)))

(declare-fun bs!588523 () Bool)

(assert (= bs!588523 d!1181761))

(assert (=> bs!588523 m!4572439))

(assert (=> bs!588523 m!4572439))

(declare-fun m!4573331 () Bool)

(assert (=> bs!588523 m!4573331))

(declare-fun m!4573333 () Bool)

(assert (=> bs!588523 m!4573333))

(assert (=> b!3993086 d!1181761))

(declare-fun d!1181775 () Bool)

(declare-fun dynLambda!18140 (Int BalanceConc!25544) TokenValue!6994)

(assert (=> d!1181775 (= (apply!9975 (transformation!6764 (rule!9786 token!484)) (seqFromList!5003 lt!1408675)) (dynLambda!18140 (toValue!9252 (transformation!6764 (rule!9786 token!484))) (seqFromList!5003 lt!1408675)))))

(declare-fun b_lambda!116569 () Bool)

(assert (=> (not b_lambda!116569) (not d!1181775)))

(declare-fun t!331893 () Bool)

(declare-fun tb!240317 () Bool)

(assert (=> (and b!3993075 (= (toValue!9252 (transformation!6764 (rule!9786 token!484))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))) t!331893) tb!240317))

(declare-fun result!291204 () Bool)

(assert (=> tb!240317 (= result!291204 (inv!21 (dynLambda!18140 (toValue!9252 (transformation!6764 (rule!9786 token!484))) (seqFromList!5003 lt!1408675))))))

(declare-fun m!4573337 () Bool)

(assert (=> tb!240317 m!4573337))

(assert (=> d!1181775 t!331893))

(declare-fun b_and!306779 () Bool)

(assert (= b_and!306751 (and (=> t!331893 result!291204) b_and!306779)))

(declare-fun tb!240319 () Bool)

(declare-fun t!331895 () Bool)

(assert (=> (and b!3993085 (= (toValue!9252 (transformation!6764 (h!48132 rules!2999))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))) t!331895) tb!240319))

(declare-fun result!291208 () Bool)

(assert (= result!291208 result!291204))

(assert (=> d!1181775 t!331895))

(declare-fun b_and!306781 () Bool)

(assert (= b_and!306755 (and (=> t!331895 result!291208) b_and!306781)))

(assert (=> d!1181775 m!4572467))

(declare-fun m!4573339 () Bool)

(assert (=> d!1181775 m!4573339))

(assert (=> b!3993086 d!1181775))

(declare-fun d!1181777 () Bool)

(declare-fun fromListB!2296 (List!42834) BalanceConc!25544)

(assert (=> d!1181777 (= (seqFromList!5003 lt!1408675) (fromListB!2296 lt!1408675))))

(declare-fun bs!588524 () Bool)

(assert (= bs!588524 d!1181777))

(declare-fun m!4573341 () Bool)

(assert (=> bs!588524 m!4573341))

(assert (=> b!3993086 d!1181777))

(declare-fun b!3993593 () Bool)

(declare-fun e!2475758 () List!42834)

(assert (=> b!3993593 (= e!2475758 lt!1408726)))

(declare-fun b!3993595 () Bool)

(declare-fun res!1621263 () Bool)

(declare-fun e!2475757 () Bool)

(assert (=> b!3993595 (=> (not res!1621263) (not e!2475757))))

(declare-fun lt!1408923 () List!42834)

(assert (=> b!3993595 (= res!1621263 (= (size!31943 lt!1408923) (+ (size!31943 prefix!494) (size!31943 lt!1408726))))))

(declare-fun b!3993596 () Bool)

(assert (=> b!3993596 (= e!2475757 (or (not (= lt!1408726 Nil!42710)) (= lt!1408923 prefix!494)))))

(declare-fun b!3993594 () Bool)

(assert (=> b!3993594 (= e!2475758 (Cons!42710 (h!48130 prefix!494) (++!11166 (t!331873 prefix!494) lt!1408726)))))

(declare-fun d!1181779 () Bool)

(assert (=> d!1181779 e!2475757))

(declare-fun res!1621262 () Bool)

(assert (=> d!1181779 (=> (not res!1621262) (not e!2475757))))

(assert (=> d!1181779 (= res!1621262 (= (content!6478 lt!1408923) ((_ map or) (content!6478 prefix!494) (content!6478 lt!1408726))))))

(assert (=> d!1181779 (= lt!1408923 e!2475758)))

(declare-fun c!691058 () Bool)

(assert (=> d!1181779 (= c!691058 ((_ is Nil!42710) prefix!494))))

(assert (=> d!1181779 (= (++!11166 prefix!494 lt!1408726) lt!1408923)))

(assert (= (and d!1181779 c!691058) b!3993593))

(assert (= (and d!1181779 (not c!691058)) b!3993594))

(assert (= (and d!1181779 res!1621262) b!3993595))

(assert (= (and b!3993595 res!1621263) b!3993596))

(declare-fun m!4573343 () Bool)

(assert (=> b!3993595 m!4573343))

(assert (=> b!3993595 m!4572529))

(declare-fun m!4573345 () Bool)

(assert (=> b!3993595 m!4573345))

(declare-fun m!4573347 () Bool)

(assert (=> b!3993594 m!4573347))

(declare-fun m!4573349 () Bool)

(assert (=> d!1181779 m!4573349))

(declare-fun m!4573351 () Bool)

(assert (=> d!1181779 m!4573351))

(declare-fun m!4573353 () Bool)

(assert (=> d!1181779 m!4573353))

(assert (=> b!3993065 d!1181779))

(declare-fun b!3993600 () Bool)

(declare-fun e!2475764 () List!42834)

(assert (=> b!3993600 (= e!2475764 lt!1408707)))

(declare-fun b!3993602 () Bool)

(declare-fun res!1621265 () Bool)

(declare-fun e!2475763 () Bool)

(assert (=> b!3993602 (=> (not res!1621265) (not e!2475763))))

(declare-fun lt!1408924 () List!42834)

(assert (=> b!3993602 (= res!1621265 (= (size!31943 lt!1408924) (+ (size!31943 lt!1408727) (size!31943 lt!1408707))))))

(declare-fun b!3993603 () Bool)

(assert (=> b!3993603 (= e!2475763 (or (not (= lt!1408707 Nil!42710)) (= lt!1408924 lt!1408727)))))

(declare-fun b!3993601 () Bool)

(assert (=> b!3993601 (= e!2475764 (Cons!42710 (h!48130 lt!1408727) (++!11166 (t!331873 lt!1408727) lt!1408707)))))

(declare-fun d!1181781 () Bool)

(assert (=> d!1181781 e!2475763))

(declare-fun res!1621264 () Bool)

(assert (=> d!1181781 (=> (not res!1621264) (not e!2475763))))

(assert (=> d!1181781 (= res!1621264 (= (content!6478 lt!1408924) ((_ map or) (content!6478 lt!1408727) (content!6478 lt!1408707))))))

(assert (=> d!1181781 (= lt!1408924 e!2475764)))

(declare-fun c!691059 () Bool)

(assert (=> d!1181781 (= c!691059 ((_ is Nil!42710) lt!1408727))))

(assert (=> d!1181781 (= (++!11166 lt!1408727 lt!1408707) lt!1408924)))

(assert (= (and d!1181781 c!691059) b!3993600))

(assert (= (and d!1181781 (not c!691059)) b!3993601))

(assert (= (and d!1181781 res!1621264) b!3993602))

(assert (= (and b!3993602 res!1621265) b!3993603))

(declare-fun m!4573355 () Bool)

(assert (=> b!3993602 m!4573355))

(declare-fun m!4573357 () Bool)

(assert (=> b!3993602 m!4573357))

(assert (=> b!3993602 m!4572687))

(declare-fun m!4573359 () Bool)

(assert (=> b!3993601 m!4573359))

(declare-fun m!4573361 () Bool)

(assert (=> d!1181781 m!4573361))

(declare-fun m!4573363 () Bool)

(assert (=> d!1181781 m!4573363))

(assert (=> d!1181781 m!4572695))

(assert (=> b!3993065 d!1181781))

(declare-fun d!1181783 () Bool)

(assert (=> d!1181783 (= (++!11166 (++!11166 prefix!494 newSuffix!27) lt!1408707) (++!11166 prefix!494 (++!11166 newSuffix!27 lt!1408707)))))

(declare-fun lt!1408927 () Unit!61522)

(declare-fun choose!24043 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> d!1181783 (= lt!1408927 (choose!24043 prefix!494 newSuffix!27 lt!1408707))))

(assert (=> d!1181783 (= (lemmaConcatAssociativity!2486 prefix!494 newSuffix!27 lt!1408707) lt!1408927)))

(declare-fun bs!588525 () Bool)

(assert (= bs!588525 d!1181783))

(assert (=> bs!588525 m!4572509))

(declare-fun m!4573369 () Bool)

(assert (=> bs!588525 m!4573369))

(assert (=> bs!588525 m!4572613))

(declare-fun m!4573371 () Bool)

(assert (=> bs!588525 m!4573371))

(assert (=> bs!588525 m!4572509))

(declare-fun m!4573373 () Bool)

(assert (=> bs!588525 m!4573373))

(assert (=> bs!588525 m!4572613))

(assert (=> b!3993065 d!1181783))

(declare-fun d!1181785 () Bool)

(declare-fun lt!1408930 () Int)

(assert (=> d!1181785 (>= lt!1408930 0)))

(declare-fun e!2475773 () Int)

(assert (=> d!1181785 (= lt!1408930 e!2475773)))

(declare-fun c!691062 () Bool)

(assert (=> d!1181785 (= c!691062 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181785 (= (size!31943 lt!1408675) lt!1408930)))

(declare-fun b!3993617 () Bool)

(assert (=> b!3993617 (= e!2475773 0)))

(declare-fun b!3993618 () Bool)

(assert (=> b!3993618 (= e!2475773 (+ 1 (size!31943 (t!331873 lt!1408675))))))

(assert (= (and d!1181785 c!691062) b!3993617))

(assert (= (and d!1181785 (not c!691062)) b!3993618))

(declare-fun m!4573375 () Bool)

(assert (=> b!3993618 m!4573375))

(assert (=> b!3993087 d!1181785))

(declare-fun d!1181787 () Bool)

(declare-fun lt!1408931 () Int)

(assert (=> d!1181787 (>= lt!1408931 0)))

(declare-fun e!2475774 () Int)

(assert (=> d!1181787 (= lt!1408931 e!2475774)))

(declare-fun c!691063 () Bool)

(assert (=> d!1181787 (= c!691063 ((_ is Nil!42710) prefix!494))))

(assert (=> d!1181787 (= (size!31943 prefix!494) lt!1408931)))

(declare-fun b!3993619 () Bool)

(assert (=> b!3993619 (= e!2475774 0)))

(declare-fun b!3993620 () Bool)

(assert (=> b!3993620 (= e!2475774 (+ 1 (size!31943 (t!331873 prefix!494))))))

(assert (= (and d!1181787 c!691063) b!3993619))

(assert (= (and d!1181787 (not c!691063)) b!3993620))

(declare-fun m!4573377 () Bool)

(assert (=> b!3993620 m!4573377))

(assert (=> b!3993087 d!1181787))

(declare-fun d!1181789 () Bool)

(declare-fun list!15860 (Conc!12975) List!42834)

(assert (=> d!1181789 (= (list!15858 (charsOf!4580 token!484)) (list!15860 (c!690976 (charsOf!4580 token!484))))))

(declare-fun bs!588526 () Bool)

(assert (= bs!588526 d!1181789))

(declare-fun m!4573379 () Bool)

(assert (=> bs!588526 m!4573379))

(assert (=> b!3993087 d!1181789))

(declare-fun d!1181791 () Bool)

(declare-fun lt!1408934 () BalanceConc!25544)

(assert (=> d!1181791 (= (list!15858 lt!1408934) (originalCharacters!7364 token!484))))

(declare-fun dynLambda!18141 (Int TokenValue!6994) BalanceConc!25544)

(assert (=> d!1181791 (= lt!1408934 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (value!213408 token!484)))))

(assert (=> d!1181791 (= (charsOf!4580 token!484) lt!1408934)))

(declare-fun b_lambda!116577 () Bool)

(assert (=> (not b_lambda!116577) (not d!1181791)))

(declare-fun t!331905 () Bool)

(declare-fun tb!240329 () Bool)

(assert (=> (and b!3993075 (= (toChars!9111 (transformation!6764 (rule!9786 token!484))) (toChars!9111 (transformation!6764 (rule!9786 token!484)))) t!331905) tb!240329))

(declare-fun b!3993625 () Bool)

(declare-fun e!2475777 () Bool)

(declare-fun tp!1216091 () Bool)

(declare-fun inv!57049 (Conc!12975) Bool)

(assert (=> b!3993625 (= e!2475777 (and (inv!57049 (c!690976 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (value!213408 token!484)))) tp!1216091))))

(declare-fun result!291222 () Bool)

(declare-fun inv!57050 (BalanceConc!25544) Bool)

(assert (=> tb!240329 (= result!291222 (and (inv!57050 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (value!213408 token!484))) e!2475777))))

(assert (= tb!240329 b!3993625))

(declare-fun m!4573381 () Bool)

(assert (=> b!3993625 m!4573381))

(declare-fun m!4573383 () Bool)

(assert (=> tb!240329 m!4573383))

(assert (=> d!1181791 t!331905))

(declare-fun b_and!306787 () Bool)

(assert (= b_and!306753 (and (=> t!331905 result!291222) b_and!306787)))

(declare-fun tb!240331 () Bool)

(declare-fun t!331907 () Bool)

(assert (=> (and b!3993085 (= (toChars!9111 (transformation!6764 (h!48132 rules!2999))) (toChars!9111 (transformation!6764 (rule!9786 token!484)))) t!331907) tb!240331))

(declare-fun result!291226 () Bool)

(assert (= result!291226 result!291222))

(assert (=> d!1181791 t!331907))

(declare-fun b_and!306789 () Bool)

(assert (= b_and!306757 (and (=> t!331907 result!291226) b_and!306789)))

(declare-fun m!4573385 () Bool)

(assert (=> d!1181791 m!4573385))

(declare-fun m!4573387 () Bool)

(assert (=> d!1181791 m!4573387))

(assert (=> b!3993087 d!1181791))

(declare-fun b!3993626 () Bool)

(declare-fun e!2475779 () List!42834)

(assert (=> b!3993626 (= e!2475779 lt!1408708)))

(declare-fun b!3993628 () Bool)

(declare-fun res!1621267 () Bool)

(declare-fun e!2475778 () Bool)

(assert (=> b!3993628 (=> (not res!1621267) (not e!2475778))))

(declare-fun lt!1408935 () List!42834)

(assert (=> b!3993628 (= res!1621267 (= (size!31943 lt!1408935) (+ (size!31943 lt!1408675) (size!31943 lt!1408708))))))

(declare-fun b!3993629 () Bool)

(assert (=> b!3993629 (= e!2475778 (or (not (= lt!1408708 Nil!42710)) (= lt!1408935 lt!1408675)))))

(declare-fun b!3993627 () Bool)

(assert (=> b!3993627 (= e!2475779 (Cons!42710 (h!48130 lt!1408675) (++!11166 (t!331873 lt!1408675) lt!1408708)))))

(declare-fun d!1181793 () Bool)

(assert (=> d!1181793 e!2475778))

(declare-fun res!1621266 () Bool)

(assert (=> d!1181793 (=> (not res!1621266) (not e!2475778))))

(assert (=> d!1181793 (= res!1621266 (= (content!6478 lt!1408935) ((_ map or) (content!6478 lt!1408675) (content!6478 lt!1408708))))))

(assert (=> d!1181793 (= lt!1408935 e!2475779)))

(declare-fun c!691064 () Bool)

(assert (=> d!1181793 (= c!691064 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181793 (= (++!11166 lt!1408675 lt!1408708) lt!1408935)))

(assert (= (and d!1181793 c!691064) b!3993626))

(assert (= (and d!1181793 (not c!691064)) b!3993627))

(assert (= (and d!1181793 res!1621266) b!3993628))

(assert (= (and b!3993628 res!1621267) b!3993629))

(declare-fun m!4573389 () Bool)

(assert (=> b!3993628 m!4573389))

(assert (=> b!3993628 m!4572527))

(declare-fun m!4573391 () Bool)

(assert (=> b!3993628 m!4573391))

(declare-fun m!4573393 () Bool)

(assert (=> b!3993627 m!4573393))

(declare-fun m!4573395 () Bool)

(assert (=> d!1181793 m!4573395))

(assert (=> d!1181793 m!4572711))

(declare-fun m!4573397 () Bool)

(assert (=> d!1181793 m!4573397))

(assert (=> b!3993064 d!1181793))

(declare-fun b!3993630 () Bool)

(declare-fun e!2475781 () List!42834)

(assert (=> b!3993630 (= e!2475781 suffix!1299)))

(declare-fun b!3993632 () Bool)

(declare-fun res!1621269 () Bool)

(declare-fun e!2475780 () Bool)

(assert (=> b!3993632 (=> (not res!1621269) (not e!2475780))))

(declare-fun lt!1408936 () List!42834)

(assert (=> b!3993632 (= res!1621269 (= (size!31943 lt!1408936) (+ (size!31943 lt!1408692) (size!31943 suffix!1299))))))

(declare-fun b!3993633 () Bool)

(assert (=> b!3993633 (= e!2475780 (or (not (= suffix!1299 Nil!42710)) (= lt!1408936 lt!1408692)))))

(declare-fun b!3993631 () Bool)

(assert (=> b!3993631 (= e!2475781 (Cons!42710 (h!48130 lt!1408692) (++!11166 (t!331873 lt!1408692) suffix!1299)))))

(declare-fun d!1181795 () Bool)

(assert (=> d!1181795 e!2475780))

(declare-fun res!1621268 () Bool)

(assert (=> d!1181795 (=> (not res!1621268) (not e!2475780))))

(assert (=> d!1181795 (= res!1621268 (= (content!6478 lt!1408936) ((_ map or) (content!6478 lt!1408692) (content!6478 suffix!1299))))))

(assert (=> d!1181795 (= lt!1408936 e!2475781)))

(declare-fun c!691065 () Bool)

(assert (=> d!1181795 (= c!691065 ((_ is Nil!42710) lt!1408692))))

(assert (=> d!1181795 (= (++!11166 lt!1408692 suffix!1299) lt!1408936)))

(assert (= (and d!1181795 c!691065) b!3993630))

(assert (= (and d!1181795 (not c!691065)) b!3993631))

(assert (= (and d!1181795 res!1621268) b!3993632))

(assert (= (and b!3993632 res!1621269) b!3993633))

(declare-fun m!4573399 () Bool)

(assert (=> b!3993632 m!4573399))

(declare-fun m!4573401 () Bool)

(assert (=> b!3993632 m!4573401))

(assert (=> b!3993632 m!4572431))

(declare-fun m!4573403 () Bool)

(assert (=> b!3993631 m!4573403))

(declare-fun m!4573405 () Bool)

(assert (=> d!1181795 m!4573405))

(declare-fun m!4573407 () Bool)

(assert (=> d!1181795 m!4573407))

(declare-fun m!4573409 () Bool)

(assert (=> d!1181795 m!4573409))

(assert (=> b!3993064 d!1181795))

(declare-fun b!3993634 () Bool)

(declare-fun e!2475783 () List!42834)

(assert (=> b!3993634 (= e!2475783 suffix!1299)))

(declare-fun b!3993636 () Bool)

(declare-fun res!1621271 () Bool)

(declare-fun e!2475782 () Bool)

(assert (=> b!3993636 (=> (not res!1621271) (not e!2475782))))

(declare-fun lt!1408937 () List!42834)

(assert (=> b!3993636 (= res!1621271 (= (size!31943 lt!1408937) (+ (size!31943 lt!1408683) (size!31943 suffix!1299))))))

(declare-fun b!3993637 () Bool)

(assert (=> b!3993637 (= e!2475782 (or (not (= suffix!1299 Nil!42710)) (= lt!1408937 lt!1408683)))))

(declare-fun b!3993635 () Bool)

(assert (=> b!3993635 (= e!2475783 (Cons!42710 (h!48130 lt!1408683) (++!11166 (t!331873 lt!1408683) suffix!1299)))))

(declare-fun d!1181797 () Bool)

(assert (=> d!1181797 e!2475782))

(declare-fun res!1621270 () Bool)

(assert (=> d!1181797 (=> (not res!1621270) (not e!2475782))))

(assert (=> d!1181797 (= res!1621270 (= (content!6478 lt!1408937) ((_ map or) (content!6478 lt!1408683) (content!6478 suffix!1299))))))

(assert (=> d!1181797 (= lt!1408937 e!2475783)))

(declare-fun c!691066 () Bool)

(assert (=> d!1181797 (= c!691066 ((_ is Nil!42710) lt!1408683))))

(assert (=> d!1181797 (= (++!11166 lt!1408683 suffix!1299) lt!1408937)))

(assert (= (and d!1181797 c!691066) b!3993634))

(assert (= (and d!1181797 (not c!691066)) b!3993635))

(assert (= (and d!1181797 res!1621270) b!3993636))

(assert (= (and b!3993636 res!1621271) b!3993637))

(declare-fun m!4573411 () Bool)

(assert (=> b!3993636 m!4573411))

(assert (=> b!3993636 m!4572729))

(assert (=> b!3993636 m!4572431))

(declare-fun m!4573413 () Bool)

(assert (=> b!3993635 m!4573413))

(declare-fun m!4573415 () Bool)

(assert (=> d!1181797 m!4573415))

(assert (=> d!1181797 m!4572735))

(assert (=> d!1181797 m!4573409))

(assert (=> b!3993064 d!1181797))

(declare-fun d!1181799 () Bool)

(assert (=> d!1181799 (= (++!11166 (++!11166 lt!1408675 lt!1408683) suffix!1299) (++!11166 lt!1408675 (++!11166 lt!1408683 suffix!1299)))))

(declare-fun lt!1408938 () Unit!61522)

(assert (=> d!1181799 (= lt!1408938 (choose!24043 lt!1408675 lt!1408683 suffix!1299))))

(assert (=> d!1181799 (= (lemmaConcatAssociativity!2486 lt!1408675 lt!1408683 suffix!1299) lt!1408938)))

(declare-fun bs!588527 () Bool)

(assert (= bs!588527 d!1181799))

(assert (=> bs!588527 m!4572519))

(declare-fun m!4573417 () Bool)

(assert (=> bs!588527 m!4573417))

(assert (=> bs!588527 m!4572443))

(declare-fun m!4573419 () Bool)

(assert (=> bs!588527 m!4573419))

(assert (=> bs!588527 m!4572519))

(declare-fun m!4573421 () Bool)

(assert (=> bs!588527 m!4573421))

(assert (=> bs!588527 m!4572443))

(assert (=> b!3993064 d!1181799))

(declare-fun d!1181801 () Bool)

(declare-fun lt!1408939 () BalanceConc!25544)

(assert (=> d!1181801 (= (list!15858 lt!1408939) (originalCharacters!7364 (_1!24088 (v!39533 lt!1408668))))))

(assert (=> d!1181801 (= lt!1408939 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (value!213408 (_1!24088 (v!39533 lt!1408668)))))))

(assert (=> d!1181801 (= (charsOf!4580 (_1!24088 (v!39533 lt!1408668))) lt!1408939)))

(declare-fun b_lambda!116579 () Bool)

(assert (=> (not b_lambda!116579) (not d!1181801)))

(declare-fun tb!240333 () Bool)

(declare-fun t!331909 () Bool)

(assert (=> (and b!3993075 (= (toChars!9111 (transformation!6764 (rule!9786 token!484))) (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))) t!331909) tb!240333))

(declare-fun b!3993638 () Bool)

(declare-fun e!2475784 () Bool)

(declare-fun tp!1216092 () Bool)

(assert (=> b!3993638 (= e!2475784 (and (inv!57049 (c!690976 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (value!213408 (_1!24088 (v!39533 lt!1408668)))))) tp!1216092))))

(declare-fun result!291228 () Bool)

(assert (=> tb!240333 (= result!291228 (and (inv!57050 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (value!213408 (_1!24088 (v!39533 lt!1408668))))) e!2475784))))

(assert (= tb!240333 b!3993638))

(declare-fun m!4573423 () Bool)

(assert (=> b!3993638 m!4573423))

(declare-fun m!4573425 () Bool)

(assert (=> tb!240333 m!4573425))

(assert (=> d!1181801 t!331909))

(declare-fun b_and!306791 () Bool)

(assert (= b_and!306787 (and (=> t!331909 result!291228) b_and!306791)))

(declare-fun t!331911 () Bool)

(declare-fun tb!240335 () Bool)

(assert (=> (and b!3993085 (= (toChars!9111 (transformation!6764 (h!48132 rules!2999))) (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))) t!331911) tb!240335))

(declare-fun result!291230 () Bool)

(assert (= result!291230 result!291228))

(assert (=> d!1181801 t!331911))

(declare-fun b_and!306793 () Bool)

(assert (= b_and!306789 (and (=> t!331911 result!291230) b_and!306793)))

(declare-fun m!4573427 () Bool)

(assert (=> d!1181801 m!4573427))

(declare-fun m!4573429 () Bool)

(assert (=> d!1181801 m!4573429))

(assert (=> b!3993062 d!1181801))

(declare-fun b!3993639 () Bool)

(declare-fun e!2475786 () List!42834)

(assert (=> b!3993639 (= e!2475786 (_2!24088 (v!39533 lt!1408668)))))

(declare-fun b!3993641 () Bool)

(declare-fun res!1621273 () Bool)

(declare-fun e!2475785 () Bool)

(assert (=> b!3993641 (=> (not res!1621273) (not e!2475785))))

(declare-fun lt!1408940 () List!42834)

(assert (=> b!3993641 (= res!1621273 (= (size!31943 lt!1408940) (+ (size!31943 lt!1408679) (size!31943 (_2!24088 (v!39533 lt!1408668))))))))

(declare-fun b!3993642 () Bool)

(assert (=> b!3993642 (= e!2475785 (or (not (= (_2!24088 (v!39533 lt!1408668)) Nil!42710)) (= lt!1408940 lt!1408679)))))

(declare-fun b!3993640 () Bool)

(assert (=> b!3993640 (= e!2475786 (Cons!42710 (h!48130 lt!1408679) (++!11166 (t!331873 lt!1408679) (_2!24088 (v!39533 lt!1408668)))))))

(declare-fun d!1181803 () Bool)

(assert (=> d!1181803 e!2475785))

(declare-fun res!1621272 () Bool)

(assert (=> d!1181803 (=> (not res!1621272) (not e!2475785))))

(assert (=> d!1181803 (= res!1621272 (= (content!6478 lt!1408940) ((_ map or) (content!6478 lt!1408679) (content!6478 (_2!24088 (v!39533 lt!1408668))))))))

(assert (=> d!1181803 (= lt!1408940 e!2475786)))

(declare-fun c!691067 () Bool)

(assert (=> d!1181803 (= c!691067 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181803 (= (++!11166 lt!1408679 (_2!24088 (v!39533 lt!1408668))) lt!1408940)))

(assert (= (and d!1181803 c!691067) b!3993639))

(assert (= (and d!1181803 (not c!691067)) b!3993640))

(assert (= (and d!1181803 res!1621272) b!3993641))

(assert (= (and b!3993641 res!1621273) b!3993642))

(declare-fun m!4573431 () Bool)

(assert (=> b!3993641 m!4573431))

(assert (=> b!3993641 m!4572557))

(declare-fun m!4573433 () Bool)

(assert (=> b!3993641 m!4573433))

(declare-fun m!4573435 () Bool)

(assert (=> b!3993640 m!4573435))

(declare-fun m!4573437 () Bool)

(assert (=> d!1181803 m!4573437))

(declare-fun m!4573439 () Bool)

(assert (=> d!1181803 m!4573439))

(declare-fun m!4573441 () Bool)

(assert (=> d!1181803 m!4573441))

(assert (=> b!3993062 d!1181803))

(declare-fun b!3993643 () Bool)

(declare-fun e!2475789 () Option!9178)

(assert (=> b!3993643 (= e!2475789 None!9177)))

(declare-fun b!3993645 () Bool)

(declare-fun res!1621279 () Bool)

(declare-fun e!2475788 () Bool)

(assert (=> b!3993645 (=> (not res!1621279) (not e!2475788))))

(declare-fun lt!1408943 () Option!9178)

(assert (=> b!3993645 (= res!1621279 (< (size!31943 (_2!24088 (get!14052 lt!1408943))) (size!31943 lt!1408727)))))

(declare-fun b!3993646 () Bool)

(assert (=> b!3993646 (= e!2475788 (= (size!31942 (_1!24088 (get!14052 lt!1408943))) (size!31943 (originalCharacters!7364 (_1!24088 (get!14052 lt!1408943))))))))

(declare-fun b!3993647 () Bool)

(declare-fun res!1621278 () Bool)

(assert (=> b!3993647 (=> (not res!1621278) (not e!2475788))))

(assert (=> b!3993647 (= res!1621278 (= (rule!9786 (_1!24088 (get!14052 lt!1408943))) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun b!3993648 () Bool)

(declare-fun e!2475790 () Bool)

(assert (=> b!3993648 (= e!2475790 (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (_1!24090 (findLongestMatchInner!1338 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) Nil!42710 (size!31943 Nil!42710) lt!1408727 lt!1408727 (size!31943 lt!1408727)))))))

(declare-fun b!3993649 () Bool)

(declare-fun res!1621274 () Bool)

(assert (=> b!3993649 (=> (not res!1621274) (not e!2475788))))

(assert (=> b!3993649 (= res!1621274 (= (++!11166 (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1408943)))) (_2!24088 (get!14052 lt!1408943))) lt!1408727))))

(declare-fun d!1181805 () Bool)

(declare-fun e!2475787 () Bool)

(assert (=> d!1181805 e!2475787))

(declare-fun res!1621275 () Bool)

(assert (=> d!1181805 (=> res!1621275 e!2475787)))

(assert (=> d!1181805 (= res!1621275 (isEmpty!25529 lt!1408943))))

(assert (=> d!1181805 (= lt!1408943 e!2475789)))

(declare-fun c!691068 () Bool)

(declare-fun lt!1408941 () tuple2!41912)

(assert (=> d!1181805 (= c!691068 (isEmpty!25530 (_1!24090 lt!1408941)))))

(assert (=> d!1181805 (= lt!1408941 (findLongestMatch!1251 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408727))))

(assert (=> d!1181805 (ruleValid!2696 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))

(assert (=> d!1181805 (= (maxPrefixOneRule!2685 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408727) lt!1408943)))

(declare-fun b!3993644 () Bool)

(declare-fun res!1621277 () Bool)

(assert (=> b!3993644 (=> (not res!1621277) (not e!2475788))))

(assert (=> b!3993644 (= res!1621277 (= (value!213408 (_1!24088 (get!14052 lt!1408943))) (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (get!14052 lt!1408943)))) (seqFromList!5003 (originalCharacters!7364 (_1!24088 (get!14052 lt!1408943)))))))))

(declare-fun b!3993650 () Bool)

(assert (=> b!3993650 (= e!2475789 (Some!9177 (tuple2!41909 (Token!12667 (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (seqFromList!5003 (_1!24090 lt!1408941))) (rule!9786 (_1!24088 (v!39533 lt!1408668))) (size!31945 (seqFromList!5003 (_1!24090 lt!1408941))) (_1!24090 lt!1408941)) (_2!24090 lt!1408941))))))

(declare-fun lt!1408942 () Unit!61522)

(assert (=> b!3993650 (= lt!1408942 (longestMatchIsAcceptedByMatchOrIsEmpty!1311 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408727))))

(declare-fun res!1621280 () Bool)

(assert (=> b!3993650 (= res!1621280 (isEmpty!25530 (_1!24090 (findLongestMatchInner!1338 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) Nil!42710 (size!31943 Nil!42710) lt!1408727 lt!1408727 (size!31943 lt!1408727)))))))

(assert (=> b!3993650 (=> res!1621280 e!2475790)))

(assert (=> b!3993650 e!2475790))

(declare-fun lt!1408945 () Unit!61522)

(assert (=> b!3993650 (= lt!1408945 lt!1408942)))

(declare-fun lt!1408944 () Unit!61522)

(assert (=> b!3993650 (= lt!1408944 (lemmaSemiInverse!1856 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (seqFromList!5003 (_1!24090 lt!1408941))))))

(declare-fun b!3993651 () Bool)

(assert (=> b!3993651 (= e!2475787 e!2475788)))

(declare-fun res!1621276 () Bool)

(assert (=> b!3993651 (=> (not res!1621276) (not e!2475788))))

(assert (=> b!3993651 (= res!1621276 (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1408943))))))))

(assert (= (and d!1181805 c!691068) b!3993643))

(assert (= (and d!1181805 (not c!691068)) b!3993650))

(assert (= (and b!3993650 (not res!1621280)) b!3993648))

(assert (= (and d!1181805 (not res!1621275)) b!3993651))

(assert (= (and b!3993651 res!1621276) b!3993649))

(assert (= (and b!3993649 res!1621274) b!3993645))

(assert (= (and b!3993645 res!1621279) b!3993647))

(assert (= (and b!3993647 res!1621278) b!3993644))

(assert (= (and b!3993644 res!1621277) b!3993646))

(declare-fun m!4573443 () Bool)

(assert (=> b!3993647 m!4573443))

(assert (=> b!3993645 m!4573443))

(declare-fun m!4573445 () Bool)

(assert (=> b!3993645 m!4573445))

(assert (=> b!3993645 m!4573357))

(declare-fun m!4573447 () Bool)

(assert (=> b!3993650 m!4573447))

(declare-fun m!4573449 () Bool)

(assert (=> b!3993650 m!4573449))

(assert (=> b!3993650 m!4573447))

(declare-fun m!4573451 () Bool)

(assert (=> b!3993650 m!4573451))

(assert (=> b!3993650 m!4573447))

(declare-fun m!4573453 () Bool)

(assert (=> b!3993650 m!4573453))

(declare-fun m!4573455 () Bool)

(assert (=> b!3993650 m!4573455))

(assert (=> b!3993650 m!4573447))

(declare-fun m!4573457 () Bool)

(assert (=> b!3993650 m!4573457))

(assert (=> b!3993650 m!4573275))

(assert (=> b!3993650 m!4573275))

(assert (=> b!3993650 m!4573357))

(declare-fun m!4573459 () Bool)

(assert (=> b!3993650 m!4573459))

(assert (=> b!3993650 m!4573357))

(assert (=> b!3993651 m!4573443))

(declare-fun m!4573461 () Bool)

(assert (=> b!3993651 m!4573461))

(assert (=> b!3993651 m!4573461))

(declare-fun m!4573463 () Bool)

(assert (=> b!3993651 m!4573463))

(assert (=> b!3993651 m!4573463))

(declare-fun m!4573465 () Bool)

(assert (=> b!3993651 m!4573465))

(declare-fun m!4573467 () Bool)

(assert (=> d!1181805 m!4573467))

(declare-fun m!4573469 () Bool)

(assert (=> d!1181805 m!4573469))

(declare-fun m!4573471 () Bool)

(assert (=> d!1181805 m!4573471))

(assert (=> d!1181805 m!4572579))

(assert (=> b!3993648 m!4573275))

(assert (=> b!3993648 m!4573357))

(assert (=> b!3993648 m!4573275))

(assert (=> b!3993648 m!4573357))

(assert (=> b!3993648 m!4573459))

(declare-fun m!4573473 () Bool)

(assert (=> b!3993648 m!4573473))

(assert (=> b!3993649 m!4573443))

(assert (=> b!3993649 m!4573461))

(assert (=> b!3993649 m!4573461))

(assert (=> b!3993649 m!4573463))

(assert (=> b!3993649 m!4573463))

(declare-fun m!4573475 () Bool)

(assert (=> b!3993649 m!4573475))

(assert (=> b!3993644 m!4573443))

(declare-fun m!4573477 () Bool)

(assert (=> b!3993644 m!4573477))

(assert (=> b!3993644 m!4573477))

(declare-fun m!4573479 () Bool)

(assert (=> b!3993644 m!4573479))

(assert (=> b!3993646 m!4573443))

(declare-fun m!4573481 () Bool)

(assert (=> b!3993646 m!4573481))

(assert (=> b!3993062 d!1181805))

(declare-fun d!1181807 () Bool)

(declare-fun lt!1408946 () Int)

(assert (=> d!1181807 (>= lt!1408946 0)))

(declare-fun e!2475791 () Int)

(assert (=> d!1181807 (= lt!1408946 e!2475791)))

(declare-fun c!691069 () Bool)

(assert (=> d!1181807 (= c!691069 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181807 (= (size!31943 lt!1408679) lt!1408946)))

(declare-fun b!3993652 () Bool)

(assert (=> b!3993652 (= e!2475791 0)))

(declare-fun b!3993653 () Bool)

(assert (=> b!3993653 (= e!2475791 (+ 1 (size!31943 (t!331873 lt!1408679))))))

(assert (= (and d!1181807 c!691069) b!3993652))

(assert (= (and d!1181807 (not c!691069)) b!3993653))

(declare-fun m!4573483 () Bool)

(assert (=> b!3993653 m!4573483))

(assert (=> b!3993062 d!1181807))

(declare-fun d!1181809 () Bool)

(assert (=> d!1181809 (isPrefix!3851 lt!1408679 (++!11166 lt!1408679 (_2!24088 (v!39533 lt!1408668))))))

(declare-fun lt!1408947 () Unit!61522)

(assert (=> d!1181809 (= lt!1408947 (choose!24041 lt!1408679 (_2!24088 (v!39533 lt!1408668))))))

(assert (=> d!1181809 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408679 (_2!24088 (v!39533 lt!1408668))) lt!1408947)))

(declare-fun bs!588528 () Bool)

(assert (= bs!588528 d!1181809))

(assert (=> bs!588528 m!4572551))

(assert (=> bs!588528 m!4572551))

(declare-fun m!4573485 () Bool)

(assert (=> bs!588528 m!4573485))

(declare-fun m!4573487 () Bool)

(assert (=> bs!588528 m!4573487))

(assert (=> b!3993062 d!1181809))

(declare-fun d!1181811 () Bool)

(declare-fun e!2475792 () Bool)

(assert (=> d!1181811 e!2475792))

(declare-fun res!1621281 () Bool)

(assert (=> d!1181811 (=> (not res!1621281) (not e!2475792))))

(assert (=> d!1181811 (= res!1621281 (semiInverseModEq!2901 (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun Unit!61535 () Unit!61522)

(assert (=> d!1181811 (= (lemmaInv!979 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) Unit!61535)))

(declare-fun b!3993654 () Bool)

(assert (=> b!3993654 (= e!2475792 (equivClasses!2800 (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(assert (= (and d!1181811 res!1621281) b!3993654))

(declare-fun m!4573489 () Bool)

(assert (=> d!1181811 m!4573489))

(declare-fun m!4573491 () Bool)

(assert (=> b!3993654 m!4573491))

(assert (=> b!3993062 d!1181811))

(declare-fun b!3993657 () Bool)

(declare-fun e!2475794 () Bool)

(assert (=> b!3993657 (= e!2475794 (isPrefix!3851 (tail!6227 lt!1408679) (tail!6227 lt!1408722)))))

(declare-fun b!3993655 () Bool)

(declare-fun e!2475795 () Bool)

(assert (=> b!3993655 (= e!2475795 e!2475794)))

(declare-fun res!1621285 () Bool)

(assert (=> b!3993655 (=> (not res!1621285) (not e!2475794))))

(assert (=> b!3993655 (= res!1621285 (not ((_ is Nil!42710) lt!1408722)))))

(declare-fun b!3993658 () Bool)

(declare-fun e!2475793 () Bool)

(assert (=> b!3993658 (= e!2475793 (>= (size!31943 lt!1408722) (size!31943 lt!1408679)))))

(declare-fun b!3993656 () Bool)

(declare-fun res!1621282 () Bool)

(assert (=> b!3993656 (=> (not res!1621282) (not e!2475794))))

(assert (=> b!3993656 (= res!1621282 (= (head!8495 lt!1408679) (head!8495 lt!1408722)))))

(declare-fun d!1181813 () Bool)

(assert (=> d!1181813 e!2475793))

(declare-fun res!1621283 () Bool)

(assert (=> d!1181813 (=> res!1621283 e!2475793)))

(declare-fun lt!1408948 () Bool)

(assert (=> d!1181813 (= res!1621283 (not lt!1408948))))

(assert (=> d!1181813 (= lt!1408948 e!2475795)))

(declare-fun res!1621284 () Bool)

(assert (=> d!1181813 (=> res!1621284 e!2475795)))

(assert (=> d!1181813 (= res!1621284 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181813 (= (isPrefix!3851 lt!1408679 lt!1408722) lt!1408948)))

(assert (= (and d!1181813 (not res!1621284)) b!3993655))

(assert (= (and b!3993655 res!1621285) b!3993656))

(assert (= (and b!3993656 res!1621282) b!3993657))

(assert (= (and d!1181813 (not res!1621283)) b!3993658))

(declare-fun m!4573493 () Bool)

(assert (=> b!3993657 m!4573493))

(declare-fun m!4573495 () Bool)

(assert (=> b!3993657 m!4573495))

(assert (=> b!3993657 m!4573493))

(assert (=> b!3993657 m!4573495))

(declare-fun m!4573497 () Bool)

(assert (=> b!3993657 m!4573497))

(declare-fun m!4573499 () Bool)

(assert (=> b!3993658 m!4573499))

(assert (=> b!3993658 m!4572557))

(declare-fun m!4573501 () Bool)

(assert (=> b!3993656 m!4573501))

(declare-fun m!4573503 () Bool)

(assert (=> b!3993656 m!4573503))

(assert (=> b!3993062 d!1181813))

(declare-fun d!1181815 () Bool)

(assert (=> d!1181815 (= (size!31942 (_1!24088 (v!39533 lt!1408668))) (size!31943 (originalCharacters!7364 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun Unit!61536 () Unit!61522)

(assert (=> d!1181815 (= (lemmaCharactersSize!1359 (_1!24088 (v!39533 lt!1408668))) Unit!61536)))

(declare-fun bs!588529 () Bool)

(assert (= bs!588529 d!1181815))

(declare-fun m!4573505 () Bool)

(assert (=> bs!588529 m!4573505))

(assert (=> b!3993062 d!1181815))

(declare-fun b!3993659 () Bool)

(declare-fun e!2475797 () List!42834)

(assert (=> b!3993659 (= e!2475797 newSuffixResult!27)))

(declare-fun b!3993661 () Bool)

(declare-fun res!1621287 () Bool)

(declare-fun e!2475796 () Bool)

(assert (=> b!3993661 (=> (not res!1621287) (not e!2475796))))

(declare-fun lt!1408949 () List!42834)

(assert (=> b!3993661 (= res!1621287 (= (size!31943 lt!1408949) (+ (size!31943 lt!1408679) (size!31943 newSuffixResult!27))))))

(declare-fun b!3993662 () Bool)

(assert (=> b!3993662 (= e!2475796 (or (not (= newSuffixResult!27 Nil!42710)) (= lt!1408949 lt!1408679)))))

(declare-fun b!3993660 () Bool)

(assert (=> b!3993660 (= e!2475797 (Cons!42710 (h!48130 lt!1408679) (++!11166 (t!331873 lt!1408679) newSuffixResult!27)))))

(declare-fun d!1181817 () Bool)

(assert (=> d!1181817 e!2475796))

(declare-fun res!1621286 () Bool)

(assert (=> d!1181817 (=> (not res!1621286) (not e!2475796))))

(assert (=> d!1181817 (= res!1621286 (= (content!6478 lt!1408949) ((_ map or) (content!6478 lt!1408679) (content!6478 newSuffixResult!27))))))

(assert (=> d!1181817 (= lt!1408949 e!2475797)))

(declare-fun c!691070 () Bool)

(assert (=> d!1181817 (= c!691070 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181817 (= (++!11166 lt!1408679 newSuffixResult!27) lt!1408949)))

(assert (= (and d!1181817 c!691070) b!3993659))

(assert (= (and d!1181817 (not c!691070)) b!3993660))

(assert (= (and d!1181817 res!1621286) b!3993661))

(assert (= (and b!3993661 res!1621287) b!3993662))

(declare-fun m!4573507 () Bool)

(assert (=> b!3993661 m!4573507))

(assert (=> b!3993661 m!4572557))

(declare-fun m!4573509 () Bool)

(assert (=> b!3993661 m!4573509))

(declare-fun m!4573511 () Bool)

(assert (=> b!3993660 m!4573511))

(declare-fun m!4573513 () Bool)

(assert (=> d!1181817 m!4573513))

(assert (=> d!1181817 m!4573439))

(declare-fun m!4573515 () Bool)

(assert (=> d!1181817 m!4573515))

(assert (=> b!3993062 d!1181817))

(declare-fun d!1181819 () Bool)

(assert (=> d!1181819 (isPrefix!3851 lt!1408679 (++!11166 lt!1408679 newSuffixResult!27))))

(declare-fun lt!1408950 () Unit!61522)

(assert (=> d!1181819 (= lt!1408950 (choose!24041 lt!1408679 newSuffixResult!27))))

(assert (=> d!1181819 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408679 newSuffixResult!27) lt!1408950)))

(declare-fun bs!588530 () Bool)

(assert (= bs!588530 d!1181819))

(assert (=> bs!588530 m!4572573))

(assert (=> bs!588530 m!4572573))

(assert (=> bs!588530 m!4572575))

(declare-fun m!4573517 () Bool)

(assert (=> bs!588530 m!4573517))

(assert (=> b!3993062 d!1181819))

(declare-fun d!1181821 () Bool)

(declare-fun res!1621288 () Bool)

(declare-fun e!2475798 () Bool)

(assert (=> d!1181821 (=> (not res!1621288) (not e!2475798))))

(assert (=> d!1181821 (= res!1621288 (validRegex!5294 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(assert (=> d!1181821 (= (ruleValid!2696 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) e!2475798)))

(declare-fun b!3993663 () Bool)

(declare-fun res!1621289 () Bool)

(assert (=> b!3993663 (=> (not res!1621289) (not e!2475798))))

(assert (=> b!3993663 (= res!1621289 (not (nullable!4094 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun b!3993664 () Bool)

(assert (=> b!3993664 (= e!2475798 (not (= (tag!7624 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (String!48689 ""))))))

(assert (= (and d!1181821 res!1621288) b!3993663))

(assert (= (and b!3993663 res!1621289) b!3993664))

(declare-fun m!4573519 () Bool)

(assert (=> d!1181821 m!4573519))

(declare-fun m!4573521 () Bool)

(assert (=> b!3993663 m!4573521))

(assert (=> b!3993062 d!1181821))

(declare-fun d!1181823 () Bool)

(assert (=> d!1181823 (= (maxPrefixOneRule!2685 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408727) (Some!9177 (tuple2!41909 (Token!12667 (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (seqFromList!5003 lt!1408679)) (rule!9786 (_1!24088 (v!39533 lt!1408668))) (size!31943 lt!1408679) lt!1408679) (_2!24088 (v!39533 lt!1408668)))))))

(declare-fun lt!1408951 () Unit!61522)

(assert (=> d!1181823 (= lt!1408951 (choose!24039 thiss!21717 rules!2999 lt!1408679 lt!1408727 (_2!24088 (v!39533 lt!1408668)) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(assert (=> d!1181823 (not (isEmpty!25526 rules!2999))))

(assert (=> d!1181823 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1507 thiss!21717 rules!2999 lt!1408679 lt!1408727 (_2!24088 (v!39533 lt!1408668)) (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408951)))

(declare-fun bs!588531 () Bool)

(assert (= bs!588531 d!1181823))

(declare-fun m!4573523 () Bool)

(assert (=> bs!588531 m!4573523))

(assert (=> bs!588531 m!4572557))

(assert (=> bs!588531 m!4572497))

(assert (=> bs!588531 m!4572555))

(assert (=> bs!588531 m!4572565))

(assert (=> bs!588531 m!4572565))

(assert (=> bs!588531 m!4572567))

(assert (=> b!3993062 d!1181823))

(declare-fun d!1181825 () Bool)

(assert (=> d!1181825 (= (list!15858 (charsOf!4580 (_1!24088 (v!39533 lt!1408668)))) (list!15860 (c!690976 (charsOf!4580 (_1!24088 (v!39533 lt!1408668))))))))

(declare-fun bs!588532 () Bool)

(assert (= bs!588532 d!1181825))

(declare-fun m!4573525 () Bool)

(assert (=> bs!588532 m!4573525))

(assert (=> b!3993062 d!1181825))

(declare-fun d!1181827 () Bool)

(assert (=> d!1181827 (= (size!31942 token!484) (size!31943 (originalCharacters!7364 token!484)))))

(declare-fun Unit!61537 () Unit!61522)

(assert (=> d!1181827 (= (lemmaCharactersSize!1359 token!484) Unit!61537)))

(declare-fun bs!588533 () Bool)

(assert (= bs!588533 d!1181827))

(assert (=> bs!588533 m!4572595))

(assert (=> b!3993062 d!1181827))

(declare-fun d!1181829 () Bool)

(assert (=> d!1181829 (= (seqFromList!5003 lt!1408679) (fromListB!2296 lt!1408679))))

(declare-fun bs!588534 () Bool)

(assert (= bs!588534 d!1181829))

(declare-fun m!4573527 () Bool)

(assert (=> bs!588534 m!4573527))

(assert (=> b!3993062 d!1181829))

(declare-fun b!3993667 () Bool)

(declare-fun e!2475800 () Bool)

(assert (=> b!3993667 (= e!2475800 (isPrefix!3851 (tail!6227 lt!1408679) (tail!6227 (++!11166 lt!1408679 newSuffixResult!27))))))

(declare-fun b!3993665 () Bool)

(declare-fun e!2475801 () Bool)

(assert (=> b!3993665 (= e!2475801 e!2475800)))

(declare-fun res!1621293 () Bool)

(assert (=> b!3993665 (=> (not res!1621293) (not e!2475800))))

(assert (=> b!3993665 (= res!1621293 (not ((_ is Nil!42710) (++!11166 lt!1408679 newSuffixResult!27))))))

(declare-fun b!3993668 () Bool)

(declare-fun e!2475799 () Bool)

(assert (=> b!3993668 (= e!2475799 (>= (size!31943 (++!11166 lt!1408679 newSuffixResult!27)) (size!31943 lt!1408679)))))

(declare-fun b!3993666 () Bool)

(declare-fun res!1621290 () Bool)

(assert (=> b!3993666 (=> (not res!1621290) (not e!2475800))))

(assert (=> b!3993666 (= res!1621290 (= (head!8495 lt!1408679) (head!8495 (++!11166 lt!1408679 newSuffixResult!27))))))

(declare-fun d!1181831 () Bool)

(assert (=> d!1181831 e!2475799))

(declare-fun res!1621291 () Bool)

(assert (=> d!1181831 (=> res!1621291 e!2475799)))

(declare-fun lt!1408952 () Bool)

(assert (=> d!1181831 (= res!1621291 (not lt!1408952))))

(assert (=> d!1181831 (= lt!1408952 e!2475801)))

(declare-fun res!1621292 () Bool)

(assert (=> d!1181831 (=> res!1621292 e!2475801)))

(assert (=> d!1181831 (= res!1621292 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181831 (= (isPrefix!3851 lt!1408679 (++!11166 lt!1408679 newSuffixResult!27)) lt!1408952)))

(assert (= (and d!1181831 (not res!1621292)) b!3993665))

(assert (= (and b!3993665 res!1621293) b!3993666))

(assert (= (and b!3993666 res!1621290) b!3993667))

(assert (= (and d!1181831 (not res!1621291)) b!3993668))

(assert (=> b!3993667 m!4573493))

(assert (=> b!3993667 m!4572573))

(declare-fun m!4573529 () Bool)

(assert (=> b!3993667 m!4573529))

(assert (=> b!3993667 m!4573493))

(assert (=> b!3993667 m!4573529))

(declare-fun m!4573531 () Bool)

(assert (=> b!3993667 m!4573531))

(assert (=> b!3993668 m!4572573))

(declare-fun m!4573533 () Bool)

(assert (=> b!3993668 m!4573533))

(assert (=> b!3993668 m!4572557))

(assert (=> b!3993666 m!4573501))

(assert (=> b!3993666 m!4572573))

(declare-fun m!4573535 () Bool)

(assert (=> b!3993666 m!4573535))

(assert (=> b!3993062 d!1181831))

(declare-fun d!1181833 () Bool)

(assert (=> d!1181833 (= (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (seqFromList!5003 lt!1408679)) (dynLambda!18140 (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (seqFromList!5003 lt!1408679)))))

(declare-fun b_lambda!116581 () Bool)

(assert (=> (not b_lambda!116581) (not d!1181833)))

(declare-fun t!331913 () Bool)

(declare-fun tb!240337 () Bool)

(assert (=> (and b!3993075 (= (toValue!9252 (transformation!6764 (rule!9786 token!484))) (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))) t!331913) tb!240337))

(declare-fun result!291232 () Bool)

(assert (=> tb!240337 (= result!291232 (inv!21 (dynLambda!18140 (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))) (seqFromList!5003 lt!1408679))))))

(declare-fun m!4573537 () Bool)

(assert (=> tb!240337 m!4573537))

(assert (=> d!1181833 t!331913))

(declare-fun b_and!306795 () Bool)

(assert (= b_and!306779 (and (=> t!331913 result!291232) b_and!306795)))

(declare-fun tb!240339 () Bool)

(declare-fun t!331915 () Bool)

(assert (=> (and b!3993085 (= (toValue!9252 (transformation!6764 (h!48132 rules!2999))) (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))) t!331915) tb!240339))

(declare-fun result!291234 () Bool)

(assert (= result!291234 result!291232))

(assert (=> d!1181833 t!331915))

(declare-fun b_and!306797 () Bool)

(assert (= b_and!306781 (and (=> t!331915 result!291234) b_and!306797)))

(assert (=> d!1181833 m!4572565))

(declare-fun m!4573539 () Bool)

(assert (=> d!1181833 m!4573539))

(assert (=> b!3993062 d!1181833))

(declare-fun d!1181835 () Bool)

(assert (=> d!1181835 (ruleValid!2696 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))

(declare-fun lt!1408953 () Unit!61522)

(assert (=> d!1181835 (= lt!1408953 (choose!24037 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))) rules!2999))))

(assert (=> d!1181835 (contains!8499 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))

(assert (=> d!1181835 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1770 thiss!21717 (rule!9786 (_1!24088 (v!39533 lt!1408668))) rules!2999) lt!1408953)))

(declare-fun bs!588535 () Bool)

(assert (= bs!588535 d!1181835))

(assert (=> bs!588535 m!4572579))

(declare-fun m!4573541 () Bool)

(assert (=> bs!588535 m!4573541))

(assert (=> bs!588535 m!4572481))

(assert (=> b!3993062 d!1181835))

(declare-fun d!1181837 () Bool)

(declare-fun lt!1408954 () Int)

(assert (=> d!1181837 (>= lt!1408954 0)))

(declare-fun e!2475803 () Int)

(assert (=> d!1181837 (= lt!1408954 e!2475803)))

(declare-fun c!691071 () Bool)

(assert (=> d!1181837 (= c!691071 ((_ is Nil!42710) (originalCharacters!7364 token!484)))))

(assert (=> d!1181837 (= (size!31943 (originalCharacters!7364 token!484)) lt!1408954)))

(declare-fun b!3993669 () Bool)

(assert (=> b!3993669 (= e!2475803 0)))

(declare-fun b!3993670 () Bool)

(assert (=> b!3993670 (= e!2475803 (+ 1 (size!31943 (t!331873 (originalCharacters!7364 token!484)))))))

(assert (= (and d!1181837 c!691071) b!3993669))

(assert (= (and d!1181837 (not c!691071)) b!3993670))

(declare-fun m!4573543 () Bool)

(assert (=> b!3993670 m!4573543))

(assert (=> b!3993063 d!1181837))

(declare-fun d!1181839 () Bool)

(assert (=> d!1181839 (= lt!1408679 lt!1408675)))

(declare-fun lt!1408957 () Unit!61522)

(declare-fun choose!24048 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> d!1181839 (= lt!1408957 (choose!24048 lt!1408679 lt!1408675 lt!1408727))))

(assert (=> d!1181839 (isPrefix!3851 lt!1408679 lt!1408727)))

(assert (=> d!1181839 (= (lemmaIsPrefixSameLengthThenSameList!873 lt!1408679 lt!1408675 lt!1408727) lt!1408957)))

(declare-fun bs!588536 () Bool)

(assert (= bs!588536 d!1181839))

(declare-fun m!4573545 () Bool)

(assert (=> bs!588536 m!4573545))

(assert (=> bs!588536 m!4572447))

(assert (=> b!3993104 d!1181839))

(declare-fun b!3993680 () Bool)

(declare-fun e!2475810 () Int)

(declare-fun e!2475809 () Int)

(assert (=> b!3993680 (= e!2475810 e!2475809)))

(declare-fun c!691077 () Bool)

(assert (=> b!3993680 (= c!691077 (and ((_ is Cons!42712) rules!2999) (not (= (h!48132 rules!2999) (rule!9786 token!484)))))))

(declare-fun d!1181841 () Bool)

(declare-fun lt!1408960 () Int)

(assert (=> d!1181841 (>= lt!1408960 0)))

(assert (=> d!1181841 (= lt!1408960 e!2475810)))

(declare-fun c!691076 () Bool)

(assert (=> d!1181841 (= c!691076 (and ((_ is Cons!42712) rules!2999) (= (h!48132 rules!2999) (rule!9786 token!484))))))

(assert (=> d!1181841 (contains!8499 rules!2999 (rule!9786 token!484))))

(assert (=> d!1181841 (= (getIndex!534 rules!2999 (rule!9786 token!484)) lt!1408960)))

(declare-fun b!3993682 () Bool)

(assert (=> b!3993682 (= e!2475809 (- 1))))

(declare-fun b!3993679 () Bool)

(assert (=> b!3993679 (= e!2475810 0)))

(declare-fun b!3993681 () Bool)

(assert (=> b!3993681 (= e!2475809 (+ 1 (getIndex!534 (t!331875 rules!2999) (rule!9786 token!484))))))

(assert (= (and d!1181841 c!691076) b!3993679))

(assert (= (and d!1181841 (not c!691076)) b!3993680))

(assert (= (and b!3993680 c!691077) b!3993681))

(assert (= (and b!3993680 (not c!691077)) b!3993682))

(assert (=> d!1181841 m!4572725))

(declare-fun m!4573547 () Bool)

(assert (=> b!3993681 m!4573547))

(assert (=> b!3993104 d!1181841))

(declare-fun d!1181843 () Bool)

(declare-fun lt!1408963 () Bool)

(declare-fun content!6479 (List!42836) (InoxSet Rule!13328))

(assert (=> d!1181843 (= lt!1408963 (select (content!6479 rules!2999) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun e!2475816 () Bool)

(assert (=> d!1181843 (= lt!1408963 e!2475816)))

(declare-fun res!1621298 () Bool)

(assert (=> d!1181843 (=> (not res!1621298) (not e!2475816))))

(assert (=> d!1181843 (= res!1621298 ((_ is Cons!42712) rules!2999))))

(assert (=> d!1181843 (= (contains!8499 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408963)))

(declare-fun b!3993687 () Bool)

(declare-fun e!2475815 () Bool)

(assert (=> b!3993687 (= e!2475816 e!2475815)))

(declare-fun res!1621299 () Bool)

(assert (=> b!3993687 (=> res!1621299 e!2475815)))

(assert (=> b!3993687 (= res!1621299 (= (h!48132 rules!2999) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(declare-fun b!3993688 () Bool)

(assert (=> b!3993688 (= e!2475815 (contains!8499 (t!331875 rules!2999) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(assert (= (and d!1181843 res!1621298) b!3993687))

(assert (= (and b!3993687 (not res!1621299)) b!3993688))

(declare-fun m!4573549 () Bool)

(assert (=> d!1181843 m!4573549))

(declare-fun m!4573551 () Bool)

(assert (=> d!1181843 m!4573551))

(declare-fun m!4573553 () Bool)

(assert (=> b!3993688 m!4573553))

(assert (=> b!3993104 d!1181843))

(declare-fun d!1181845 () Bool)

(assert (=> d!1181845 (= (_2!24088 (v!39533 lt!1408668)) newSuffixResult!27)))

(declare-fun lt!1408964 () Unit!61522)

(assert (=> d!1181845 (= lt!1408964 (choose!24040 lt!1408679 (_2!24088 (v!39533 lt!1408668)) lt!1408675 newSuffixResult!27 lt!1408727))))

(assert (=> d!1181845 (isPrefix!3851 lt!1408679 lt!1408727)))

(assert (=> d!1181845 (= (lemmaSamePrefixThenSameSuffix!2038 lt!1408679 (_2!24088 (v!39533 lt!1408668)) lt!1408675 newSuffixResult!27 lt!1408727) lt!1408964)))

(declare-fun bs!588537 () Bool)

(assert (= bs!588537 d!1181845))

(declare-fun m!4573555 () Bool)

(assert (=> bs!588537 m!4573555))

(assert (=> bs!588537 m!4572447))

(assert (=> b!3993104 d!1181845))

(declare-fun b!3993690 () Bool)

(declare-fun e!2475818 () Int)

(declare-fun e!2475817 () Int)

(assert (=> b!3993690 (= e!2475818 e!2475817)))

(declare-fun c!691079 () Bool)

(assert (=> b!3993690 (= c!691079 (and ((_ is Cons!42712) rules!2999) (not (= (h!48132 rules!2999) (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun d!1181847 () Bool)

(declare-fun lt!1408965 () Int)

(assert (=> d!1181847 (>= lt!1408965 0)))

(assert (=> d!1181847 (= lt!1408965 e!2475818)))

(declare-fun c!691078 () Bool)

(assert (=> d!1181847 (= c!691078 (and ((_ is Cons!42712) rules!2999) (= (h!48132 rules!2999) (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(assert (=> d!1181847 (contains!8499 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))

(assert (=> d!1181847 (= (getIndex!534 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408965)))

(declare-fun b!3993692 () Bool)

(assert (=> b!3993692 (= e!2475817 (- 1))))

(declare-fun b!3993689 () Bool)

(assert (=> b!3993689 (= e!2475818 0)))

(declare-fun b!3993691 () Bool)

(assert (=> b!3993691 (= e!2475817 (+ 1 (getIndex!534 (t!331875 rules!2999) (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(assert (= (and d!1181847 c!691078) b!3993689))

(assert (= (and d!1181847 (not c!691078)) b!3993690))

(assert (= (and b!3993690 c!691079) b!3993691))

(assert (= (and b!3993690 (not c!691079)) b!3993692))

(assert (=> d!1181847 m!4572481))

(declare-fun m!4573557 () Bool)

(assert (=> b!3993691 m!4573557))

(assert (=> b!3993104 d!1181847))

(declare-fun b!3993721 () Bool)

(declare-fun res!1621317 () Bool)

(declare-fun e!2475835 () Bool)

(assert (=> b!3993721 (=> (not res!1621317) (not e!2475835))))

(assert (=> b!3993721 (= res!1621317 (isEmpty!25530 (tail!6227 lt!1408675)))))

(declare-fun b!3993722 () Bool)

(declare-fun res!1621320 () Bool)

(declare-fun e!2475837 () Bool)

(assert (=> b!3993722 (=> res!1621320 e!2475837)))

(assert (=> b!3993722 (= res!1621320 (not ((_ is ElementMatch!11669) (regex!6764 (rule!9786 token!484)))))))

(declare-fun e!2475834 () Bool)

(assert (=> b!3993722 (= e!2475834 e!2475837)))

(declare-fun b!3993723 () Bool)

(declare-fun res!1621321 () Bool)

(assert (=> b!3993723 (=> (not res!1621321) (not e!2475835))))

(declare-fun call!285878 () Bool)

(assert (=> b!3993723 (= res!1621321 (not call!285878))))

(declare-fun b!3993724 () Bool)

(declare-fun e!2475833 () Bool)

(assert (=> b!3993724 (= e!2475833 (nullable!4094 (regex!6764 (rule!9786 token!484))))))

(declare-fun b!3993725 () Bool)

(assert (=> b!3993725 (= e!2475835 (= (head!8495 lt!1408675) (c!690977 (regex!6764 (rule!9786 token!484)))))))

(declare-fun bm!285873 () Bool)

(assert (=> bm!285873 (= call!285878 (isEmpty!25530 lt!1408675))))

(declare-fun b!3993726 () Bool)

(declare-fun e!2475838 () Bool)

(declare-fun lt!1408968 () Bool)

(assert (=> b!3993726 (= e!2475838 (= lt!1408968 call!285878))))

(declare-fun d!1181849 () Bool)

(assert (=> d!1181849 e!2475838))

(declare-fun c!691087 () Bool)

(assert (=> d!1181849 (= c!691087 ((_ is EmptyExpr!11669) (regex!6764 (rule!9786 token!484))))))

(assert (=> d!1181849 (= lt!1408968 e!2475833)))

(declare-fun c!691086 () Bool)

(assert (=> d!1181849 (= c!691086 (isEmpty!25530 lt!1408675))))

(assert (=> d!1181849 (validRegex!5294 (regex!6764 (rule!9786 token!484)))))

(assert (=> d!1181849 (= (matchR!5646 (regex!6764 (rule!9786 token!484)) lt!1408675) lt!1408968)))

(declare-fun b!3993727 () Bool)

(assert (=> b!3993727 (= e!2475838 e!2475834)))

(declare-fun c!691088 () Bool)

(assert (=> b!3993727 (= c!691088 ((_ is EmptyLang!11669) (regex!6764 (rule!9786 token!484))))))

(declare-fun b!3993728 () Bool)

(declare-fun derivativeStep!3505 (Regex!11669 C!23524) Regex!11669)

(assert (=> b!3993728 (= e!2475833 (matchR!5646 (derivativeStep!3505 (regex!6764 (rule!9786 token!484)) (head!8495 lt!1408675)) (tail!6227 lt!1408675)))))

(declare-fun b!3993729 () Bool)

(declare-fun res!1621322 () Bool)

(declare-fun e!2475836 () Bool)

(assert (=> b!3993729 (=> res!1621322 e!2475836)))

(assert (=> b!3993729 (= res!1621322 (not (isEmpty!25530 (tail!6227 lt!1408675))))))

(declare-fun b!3993730 () Bool)

(declare-fun e!2475839 () Bool)

(assert (=> b!3993730 (= e!2475837 e!2475839)))

(declare-fun res!1621318 () Bool)

(assert (=> b!3993730 (=> (not res!1621318) (not e!2475839))))

(assert (=> b!3993730 (= res!1621318 (not lt!1408968))))

(declare-fun b!3993731 () Bool)

(assert (=> b!3993731 (= e!2475836 (not (= (head!8495 lt!1408675) (c!690977 (regex!6764 (rule!9786 token!484))))))))

(declare-fun b!3993732 () Bool)

(assert (=> b!3993732 (= e!2475834 (not lt!1408968))))

(declare-fun b!3993733 () Bool)

(declare-fun res!1621323 () Bool)

(assert (=> b!3993733 (=> res!1621323 e!2475837)))

(assert (=> b!3993733 (= res!1621323 e!2475835)))

(declare-fun res!1621316 () Bool)

(assert (=> b!3993733 (=> (not res!1621316) (not e!2475835))))

(assert (=> b!3993733 (= res!1621316 lt!1408968)))

(declare-fun b!3993734 () Bool)

(assert (=> b!3993734 (= e!2475839 e!2475836)))

(declare-fun res!1621319 () Bool)

(assert (=> b!3993734 (=> res!1621319 e!2475836)))

(assert (=> b!3993734 (= res!1621319 call!285878)))

(assert (= (and d!1181849 c!691086) b!3993724))

(assert (= (and d!1181849 (not c!691086)) b!3993728))

(assert (= (and d!1181849 c!691087) b!3993726))

(assert (= (and d!1181849 (not c!691087)) b!3993727))

(assert (= (and b!3993727 c!691088) b!3993732))

(assert (= (and b!3993727 (not c!691088)) b!3993722))

(assert (= (and b!3993722 (not res!1621320)) b!3993733))

(assert (= (and b!3993733 res!1621316) b!3993723))

(assert (= (and b!3993723 res!1621321) b!3993721))

(assert (= (and b!3993721 res!1621317) b!3993725))

(assert (= (and b!3993733 (not res!1621323)) b!3993730))

(assert (= (and b!3993730 res!1621318) b!3993734))

(assert (= (and b!3993734 (not res!1621319)) b!3993729))

(assert (= (and b!3993729 (not res!1621322)) b!3993731))

(assert (= (or b!3993726 b!3993723 b!3993734) bm!285873))

(declare-fun m!4573559 () Bool)

(assert (=> bm!285873 m!4573559))

(assert (=> b!3993729 m!4572799))

(assert (=> b!3993729 m!4572799))

(declare-fun m!4573561 () Bool)

(assert (=> b!3993729 m!4573561))

(assert (=> d!1181849 m!4573559))

(assert (=> d!1181849 m!4572719))

(assert (=> b!3993728 m!4572803))

(assert (=> b!3993728 m!4572803))

(declare-fun m!4573563 () Bool)

(assert (=> b!3993728 m!4573563))

(assert (=> b!3993728 m!4572799))

(assert (=> b!3993728 m!4573563))

(assert (=> b!3993728 m!4572799))

(declare-fun m!4573565 () Bool)

(assert (=> b!3993728 m!4573565))

(assert (=> b!3993731 m!4572803))

(assert (=> b!3993724 m!4572721))

(assert (=> b!3993721 m!4572799))

(assert (=> b!3993721 m!4572799))

(assert (=> b!3993721 m!4573561))

(assert (=> b!3993725 m!4572803))

(assert (=> b!3993081 d!1181849))

(declare-fun b!3993737 () Bool)

(declare-fun e!2475841 () Bool)

(assert (=> b!3993737 (= e!2475841 (isPrefix!3851 (tail!6227 lt!1408675) (tail!6227 lt!1408727)))))

(declare-fun b!3993735 () Bool)

(declare-fun e!2475842 () Bool)

(assert (=> b!3993735 (= e!2475842 e!2475841)))

(declare-fun res!1621327 () Bool)

(assert (=> b!3993735 (=> (not res!1621327) (not e!2475841))))

(assert (=> b!3993735 (= res!1621327 (not ((_ is Nil!42710) lt!1408727)))))

(declare-fun b!3993738 () Bool)

(declare-fun e!2475840 () Bool)

(assert (=> b!3993738 (= e!2475840 (>= (size!31943 lt!1408727) (size!31943 lt!1408675)))))

(declare-fun b!3993736 () Bool)

(declare-fun res!1621324 () Bool)

(assert (=> b!3993736 (=> (not res!1621324) (not e!2475841))))

(assert (=> b!3993736 (= res!1621324 (= (head!8495 lt!1408675) (head!8495 lt!1408727)))))

(declare-fun d!1181851 () Bool)

(assert (=> d!1181851 e!2475840))

(declare-fun res!1621325 () Bool)

(assert (=> d!1181851 (=> res!1621325 e!2475840)))

(declare-fun lt!1408969 () Bool)

(assert (=> d!1181851 (= res!1621325 (not lt!1408969))))

(assert (=> d!1181851 (= lt!1408969 e!2475842)))

(declare-fun res!1621326 () Bool)

(assert (=> d!1181851 (=> res!1621326 e!2475842)))

(assert (=> d!1181851 (= res!1621326 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181851 (= (isPrefix!3851 lt!1408675 lt!1408727) lt!1408969)))

(assert (= (and d!1181851 (not res!1621326)) b!3993735))

(assert (= (and b!3993735 res!1621327) b!3993736))

(assert (= (and b!3993736 res!1621324) b!3993737))

(assert (= (and d!1181851 (not res!1621325)) b!3993738))

(assert (=> b!3993737 m!4572799))

(declare-fun m!4573567 () Bool)

(assert (=> b!3993737 m!4573567))

(assert (=> b!3993737 m!4572799))

(assert (=> b!3993737 m!4573567))

(declare-fun m!4573569 () Bool)

(assert (=> b!3993737 m!4573569))

(assert (=> b!3993738 m!4573357))

(assert (=> b!3993738 m!4572527))

(assert (=> b!3993736 m!4572803))

(declare-fun m!4573571 () Bool)

(assert (=> b!3993736 m!4573571))

(assert (=> b!3993081 d!1181851))

(declare-fun d!1181853 () Bool)

(assert (=> d!1181853 (isPrefix!3851 lt!1408675 (++!11166 prefix!494 newSuffix!27))))

(declare-fun lt!1408972 () Unit!61522)

(declare-fun choose!24049 (List!42834 List!42834 List!42834) Unit!61522)

(assert (=> d!1181853 (= lt!1408972 (choose!24049 lt!1408675 prefix!494 newSuffix!27))))

(assert (=> d!1181853 (isPrefix!3851 lt!1408675 prefix!494)))

(assert (=> d!1181853 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!684 lt!1408675 prefix!494 newSuffix!27) lt!1408972)))

(declare-fun bs!588538 () Bool)

(assert (= bs!588538 d!1181853))

(assert (=> bs!588538 m!4572509))

(assert (=> bs!588538 m!4572509))

(declare-fun m!4573573 () Bool)

(assert (=> bs!588538 m!4573573))

(declare-fun m!4573575 () Bool)

(assert (=> bs!588538 m!4573575))

(assert (=> bs!588538 m!4572523))

(assert (=> b!3993081 d!1181853))

(declare-fun d!1181855 () Bool)

(assert (=> d!1181855 (isPrefix!3851 lt!1408675 (++!11166 prefix!494 suffix!1299))))

(declare-fun lt!1408973 () Unit!61522)

(assert (=> d!1181855 (= lt!1408973 (choose!24049 lt!1408675 prefix!494 suffix!1299))))

(assert (=> d!1181855 (isPrefix!3851 lt!1408675 prefix!494)))

(assert (=> d!1181855 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!684 lt!1408675 prefix!494 suffix!1299) lt!1408973)))

(declare-fun bs!588539 () Bool)

(assert (= bs!588539 d!1181855))

(assert (=> bs!588539 m!4572599))

(assert (=> bs!588539 m!4572599))

(declare-fun m!4573577 () Bool)

(assert (=> bs!588539 m!4573577))

(declare-fun m!4573579 () Bool)

(assert (=> bs!588539 m!4573579))

(assert (=> bs!588539 m!4572523))

(assert (=> b!3993081 d!1181855))

(declare-fun d!1181857 () Bool)

(assert (=> d!1181857 (not (matchR!5646 (regex!6764 (rule!9786 token!484)) lt!1408675))))

(declare-fun lt!1408976 () Unit!61522)

(declare-fun choose!24050 (LexerInterface!6353 List!42836 Rule!13328 List!42834 List!42834 List!42834 Rule!13328) Unit!61522)

(assert (=> d!1181857 (= lt!1408976 (choose!24050 thiss!21717 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408679 lt!1408727 lt!1408675 (rule!9786 token!484)))))

(assert (=> d!1181857 (isPrefix!3851 lt!1408679 lt!1408727)))

(assert (=> d!1181857 (= (lemmaMaxPrefixOutputsMaxPrefix!418 thiss!21717 rules!2999 (rule!9786 (_1!24088 (v!39533 lt!1408668))) lt!1408679 lt!1408727 lt!1408675 (rule!9786 token!484)) lt!1408976)))

(declare-fun bs!588540 () Bool)

(assert (= bs!588540 d!1181857))

(assert (=> bs!588540 m!4572499))

(declare-fun m!4573581 () Bool)

(assert (=> bs!588540 m!4573581))

(assert (=> bs!588540 m!4572447))

(assert (=> b!3993060 d!1181857))

(declare-fun b!3993741 () Bool)

(declare-fun e!2475844 () Bool)

(assert (=> b!3993741 (= e!2475844 (isPrefix!3851 (tail!6227 lt!1408679) (tail!6227 lt!1408671)))))

(declare-fun b!3993739 () Bool)

(declare-fun e!2475845 () Bool)

(assert (=> b!3993739 (= e!2475845 e!2475844)))

(declare-fun res!1621331 () Bool)

(assert (=> b!3993739 (=> (not res!1621331) (not e!2475844))))

(assert (=> b!3993739 (= res!1621331 (not ((_ is Nil!42710) lt!1408671)))))

(declare-fun b!3993742 () Bool)

(declare-fun e!2475843 () Bool)

(assert (=> b!3993742 (= e!2475843 (>= (size!31943 lt!1408671) (size!31943 lt!1408679)))))

(declare-fun b!3993740 () Bool)

(declare-fun res!1621328 () Bool)

(assert (=> b!3993740 (=> (not res!1621328) (not e!2475844))))

(assert (=> b!3993740 (= res!1621328 (= (head!8495 lt!1408679) (head!8495 lt!1408671)))))

(declare-fun d!1181859 () Bool)

(assert (=> d!1181859 e!2475843))

(declare-fun res!1621329 () Bool)

(assert (=> d!1181859 (=> res!1621329 e!2475843)))

(declare-fun lt!1408977 () Bool)

(assert (=> d!1181859 (= res!1621329 (not lt!1408977))))

(assert (=> d!1181859 (= lt!1408977 e!2475845)))

(declare-fun res!1621330 () Bool)

(assert (=> d!1181859 (=> res!1621330 e!2475845)))

(assert (=> d!1181859 (= res!1621330 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181859 (= (isPrefix!3851 lt!1408679 lt!1408671) lt!1408977)))

(assert (= (and d!1181859 (not res!1621330)) b!3993739))

(assert (= (and b!3993739 res!1621331) b!3993740))

(assert (= (and b!3993740 res!1621328) b!3993741))

(assert (= (and d!1181859 (not res!1621329)) b!3993742))

(assert (=> b!3993741 m!4573493))

(declare-fun m!4573583 () Bool)

(assert (=> b!3993741 m!4573583))

(assert (=> b!3993741 m!4573493))

(assert (=> b!3993741 m!4573583))

(declare-fun m!4573585 () Bool)

(assert (=> b!3993741 m!4573585))

(assert (=> b!3993742 m!4573255))

(assert (=> b!3993742 m!4572557))

(assert (=> b!3993740 m!4573501))

(declare-fun m!4573587 () Bool)

(assert (=> b!3993740 m!4573587))

(assert (=> b!3993103 d!1181859))

(declare-fun b!3993745 () Bool)

(declare-fun e!2475847 () Bool)

(assert (=> b!3993745 (= e!2475847 (isPrefix!3851 (tail!6227 lt!1408679) (tail!6227 lt!1408709)))))

(declare-fun b!3993743 () Bool)

(declare-fun e!2475848 () Bool)

(assert (=> b!3993743 (= e!2475848 e!2475847)))

(declare-fun res!1621335 () Bool)

(assert (=> b!3993743 (=> (not res!1621335) (not e!2475847))))

(assert (=> b!3993743 (= res!1621335 (not ((_ is Nil!42710) lt!1408709)))))

(declare-fun b!3993746 () Bool)

(declare-fun e!2475846 () Bool)

(assert (=> b!3993746 (= e!2475846 (>= (size!31943 lt!1408709) (size!31943 lt!1408679)))))

(declare-fun b!3993744 () Bool)

(declare-fun res!1621332 () Bool)

(assert (=> b!3993744 (=> (not res!1621332) (not e!2475847))))

(assert (=> b!3993744 (= res!1621332 (= (head!8495 lt!1408679) (head!8495 lt!1408709)))))

(declare-fun d!1181861 () Bool)

(assert (=> d!1181861 e!2475846))

(declare-fun res!1621333 () Bool)

(assert (=> d!1181861 (=> res!1621333 e!2475846)))

(declare-fun lt!1408978 () Bool)

(assert (=> d!1181861 (= res!1621333 (not lt!1408978))))

(assert (=> d!1181861 (= lt!1408978 e!2475848)))

(declare-fun res!1621334 () Bool)

(assert (=> d!1181861 (=> res!1621334 e!2475848)))

(assert (=> d!1181861 (= res!1621334 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181861 (= (isPrefix!3851 lt!1408679 lt!1408709) lt!1408978)))

(assert (= (and d!1181861 (not res!1621334)) b!3993743))

(assert (= (and b!3993743 res!1621335) b!3993744))

(assert (= (and b!3993744 res!1621332) b!3993745))

(assert (= (and d!1181861 (not res!1621333)) b!3993746))

(assert (=> b!3993745 m!4573493))

(declare-fun m!4573589 () Bool)

(assert (=> b!3993745 m!4573589))

(assert (=> b!3993745 m!4573493))

(assert (=> b!3993745 m!4573589))

(declare-fun m!4573591 () Bool)

(assert (=> b!3993745 m!4573591))

(declare-fun m!4573593 () Bool)

(assert (=> b!3993746 m!4573593))

(assert (=> b!3993746 m!4572557))

(assert (=> b!3993744 m!4573501))

(declare-fun m!4573595 () Bool)

(assert (=> b!3993744 m!4573595))

(assert (=> b!3993103 d!1181861))

(declare-fun d!1181863 () Bool)

(assert (=> d!1181863 (isPrefix!3851 lt!1408679 (++!11166 lt!1408727 lt!1408707))))

(declare-fun lt!1408979 () Unit!61522)

(assert (=> d!1181863 (= lt!1408979 (choose!24049 lt!1408679 lt!1408727 lt!1408707))))

(assert (=> d!1181863 (isPrefix!3851 lt!1408679 lt!1408727)))

(assert (=> d!1181863 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!684 lt!1408679 lt!1408727 lt!1408707) lt!1408979)))

(declare-fun bs!588541 () Bool)

(assert (= bs!588541 d!1181863))

(assert (=> bs!588541 m!4572515))

(assert (=> bs!588541 m!4572515))

(declare-fun m!4573597 () Bool)

(assert (=> bs!588541 m!4573597))

(declare-fun m!4573599 () Bool)

(assert (=> bs!588541 m!4573599))

(assert (=> bs!588541 m!4572447))

(assert (=> b!3993103 d!1181863))

(declare-fun d!1181865 () Bool)

(declare-fun res!1621340 () Bool)

(declare-fun e!2475851 () Bool)

(assert (=> d!1181865 (=> (not res!1621340) (not e!2475851))))

(assert (=> d!1181865 (= res!1621340 (not (isEmpty!25530 (originalCharacters!7364 token!484))))))

(assert (=> d!1181865 (= (inv!57045 token!484) e!2475851)))

(declare-fun b!3993751 () Bool)

(declare-fun res!1621341 () Bool)

(assert (=> b!3993751 (=> (not res!1621341) (not e!2475851))))

(assert (=> b!3993751 (= res!1621341 (= (originalCharacters!7364 token!484) (list!15858 (dynLambda!18141 (toChars!9111 (transformation!6764 (rule!9786 token!484))) (value!213408 token!484)))))))

(declare-fun b!3993752 () Bool)

(assert (=> b!3993752 (= e!2475851 (= (size!31942 token!484) (size!31943 (originalCharacters!7364 token!484))))))

(assert (= (and d!1181865 res!1621340) b!3993751))

(assert (= (and b!3993751 res!1621341) b!3993752))

(declare-fun b_lambda!116583 () Bool)

(assert (=> (not b_lambda!116583) (not b!3993751)))

(assert (=> b!3993751 t!331905))

(declare-fun b_and!306799 () Bool)

(assert (= b_and!306791 (and (=> t!331905 result!291222) b_and!306799)))

(assert (=> b!3993751 t!331907))

(declare-fun b_and!306801 () Bool)

(assert (= b_and!306793 (and (=> t!331907 result!291226) b_and!306801)))

(declare-fun m!4573601 () Bool)

(assert (=> d!1181865 m!4573601))

(assert (=> b!3993751 m!4573387))

(assert (=> b!3993751 m!4573387))

(declare-fun m!4573603 () Bool)

(assert (=> b!3993751 m!4573603))

(assert (=> b!3993752 m!4572595))

(assert (=> start!375788 d!1181865))

(declare-fun d!1181867 () Bool)

(assert (=> d!1181867 (not (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408675))))

(declare-fun lt!1408982 () Unit!61522)

(declare-fun choose!24052 (LexerInterface!6353 List!42836 Rule!13328 List!42834 List!42834 Rule!13328) Unit!61522)

(assert (=> d!1181867 (= lt!1408982 (choose!24052 thiss!21717 rules!2999 (rule!9786 token!484) lt!1408675 lt!1408671 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(assert (=> d!1181867 (isPrefix!3851 lt!1408675 lt!1408671)))

(assert (=> d!1181867 (= (lemmaMaxPrefNoSmallerRuleMatches!260 thiss!21717 rules!2999 (rule!9786 token!484) lt!1408675 lt!1408671 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408982)))

(declare-fun bs!588542 () Bool)

(assert (= bs!588542 d!1181867))

(assert (=> bs!588542 m!4572605))

(declare-fun m!4573605 () Bool)

(assert (=> bs!588542 m!4573605))

(assert (=> bs!588542 m!4572455))

(assert (=> b!3993059 d!1181867))

(declare-fun b!3993753 () Bool)

(declare-fun res!1621343 () Bool)

(declare-fun e!2475854 () Bool)

(assert (=> b!3993753 (=> (not res!1621343) (not e!2475854))))

(assert (=> b!3993753 (= res!1621343 (isEmpty!25530 (tail!6227 lt!1408675)))))

(declare-fun b!3993754 () Bool)

(declare-fun res!1621346 () Bool)

(declare-fun e!2475856 () Bool)

(assert (=> b!3993754 (=> res!1621346 e!2475856)))

(assert (=> b!3993754 (= res!1621346 (not ((_ is ElementMatch!11669) (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun e!2475853 () Bool)

(assert (=> b!3993754 (= e!2475853 e!2475856)))

(declare-fun b!3993755 () Bool)

(declare-fun res!1621347 () Bool)

(assert (=> b!3993755 (=> (not res!1621347) (not e!2475854))))

(declare-fun call!285879 () Bool)

(assert (=> b!3993755 (= res!1621347 (not call!285879))))

(declare-fun b!3993756 () Bool)

(declare-fun e!2475852 () Bool)

(assert (=> b!3993756 (= e!2475852 (nullable!4094 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(declare-fun b!3993757 () Bool)

(assert (=> b!3993757 (= e!2475854 (= (head!8495 lt!1408675) (c!690977 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun bm!285874 () Bool)

(assert (=> bm!285874 (= call!285879 (isEmpty!25530 lt!1408675))))

(declare-fun b!3993758 () Bool)

(declare-fun e!2475857 () Bool)

(declare-fun lt!1408983 () Bool)

(assert (=> b!3993758 (= e!2475857 (= lt!1408983 call!285879))))

(declare-fun d!1181869 () Bool)

(assert (=> d!1181869 e!2475857))

(declare-fun c!691090 () Bool)

(assert (=> d!1181869 (= c!691090 ((_ is EmptyExpr!11669) (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(assert (=> d!1181869 (= lt!1408983 e!2475852)))

(declare-fun c!691089 () Bool)

(assert (=> d!1181869 (= c!691089 (isEmpty!25530 lt!1408675))))

(assert (=> d!1181869 (validRegex!5294 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(assert (=> d!1181869 (= (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408675) lt!1408983)))

(declare-fun b!3993759 () Bool)

(assert (=> b!3993759 (= e!2475857 e!2475853)))

(declare-fun c!691091 () Bool)

(assert (=> b!3993759 (= c!691091 ((_ is EmptyLang!11669) (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(declare-fun b!3993760 () Bool)

(assert (=> b!3993760 (= e!2475852 (matchR!5646 (derivativeStep!3505 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (head!8495 lt!1408675)) (tail!6227 lt!1408675)))))

(declare-fun b!3993761 () Bool)

(declare-fun res!1621348 () Bool)

(declare-fun e!2475855 () Bool)

(assert (=> b!3993761 (=> res!1621348 e!2475855)))

(assert (=> b!3993761 (= res!1621348 (not (isEmpty!25530 (tail!6227 lt!1408675))))))

(declare-fun b!3993762 () Bool)

(declare-fun e!2475858 () Bool)

(assert (=> b!3993762 (= e!2475856 e!2475858)))

(declare-fun res!1621344 () Bool)

(assert (=> b!3993762 (=> (not res!1621344) (not e!2475858))))

(assert (=> b!3993762 (= res!1621344 (not lt!1408983))))

(declare-fun b!3993763 () Bool)

(assert (=> b!3993763 (= e!2475855 (not (= (head!8495 lt!1408675) (c!690977 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))))

(declare-fun b!3993764 () Bool)

(assert (=> b!3993764 (= e!2475853 (not lt!1408983))))

(declare-fun b!3993765 () Bool)

(declare-fun res!1621349 () Bool)

(assert (=> b!3993765 (=> res!1621349 e!2475856)))

(assert (=> b!3993765 (= res!1621349 e!2475854)))

(declare-fun res!1621342 () Bool)

(assert (=> b!3993765 (=> (not res!1621342) (not e!2475854))))

(assert (=> b!3993765 (= res!1621342 lt!1408983)))

(declare-fun b!3993766 () Bool)

(assert (=> b!3993766 (= e!2475858 e!2475855)))

(declare-fun res!1621345 () Bool)

(assert (=> b!3993766 (=> res!1621345 e!2475855)))

(assert (=> b!3993766 (= res!1621345 call!285879)))

(assert (= (and d!1181869 c!691089) b!3993756))

(assert (= (and d!1181869 (not c!691089)) b!3993760))

(assert (= (and d!1181869 c!691090) b!3993758))

(assert (= (and d!1181869 (not c!691090)) b!3993759))

(assert (= (and b!3993759 c!691091) b!3993764))

(assert (= (and b!3993759 (not c!691091)) b!3993754))

(assert (= (and b!3993754 (not res!1621346)) b!3993765))

(assert (= (and b!3993765 res!1621342) b!3993755))

(assert (= (and b!3993755 res!1621347) b!3993753))

(assert (= (and b!3993753 res!1621343) b!3993757))

(assert (= (and b!3993765 (not res!1621349)) b!3993762))

(assert (= (and b!3993762 res!1621344) b!3993766))

(assert (= (and b!3993766 (not res!1621345)) b!3993761))

(assert (= (and b!3993761 (not res!1621348)) b!3993763))

(assert (= (or b!3993758 b!3993755 b!3993766) bm!285874))

(assert (=> bm!285874 m!4573559))

(assert (=> b!3993761 m!4572799))

(assert (=> b!3993761 m!4572799))

(assert (=> b!3993761 m!4573561))

(assert (=> d!1181869 m!4573559))

(assert (=> d!1181869 m!4573519))

(assert (=> b!3993760 m!4572803))

(assert (=> b!3993760 m!4572803))

(declare-fun m!4573607 () Bool)

(assert (=> b!3993760 m!4573607))

(assert (=> b!3993760 m!4572799))

(assert (=> b!3993760 m!4573607))

(assert (=> b!3993760 m!4572799))

(declare-fun m!4573609 () Bool)

(assert (=> b!3993760 m!4573609))

(assert (=> b!3993763 m!4572803))

(assert (=> b!3993756 m!4573521))

(assert (=> b!3993753 m!4572799))

(assert (=> b!3993753 m!4572799))

(assert (=> b!3993753 m!4573561))

(assert (=> b!3993757 m!4572803))

(assert (=> b!3993059 d!1181869))

(declare-fun d!1181871 () Bool)

(assert (=> d!1181871 (= (isEmpty!25526 rules!2999) ((_ is Nil!42712) rules!2999))))

(assert (=> b!3993078 d!1181871))

(declare-fun b!3993777 () Bool)

(declare-fun e!2475865 () Bool)

(declare-fun e!2475866 () Bool)

(assert (=> b!3993777 (= e!2475865 e!2475866)))

(declare-fun c!691096 () Bool)

(assert (=> b!3993777 (= c!691096 ((_ is IntegerValue!20983) (value!213408 token!484)))))

(declare-fun b!3993778 () Bool)

(declare-fun inv!17 (TokenValue!6994) Bool)

(assert (=> b!3993778 (= e!2475866 (inv!17 (value!213408 token!484)))))

(declare-fun b!3993779 () Bool)

(declare-fun inv!16 (TokenValue!6994) Bool)

(assert (=> b!3993779 (= e!2475865 (inv!16 (value!213408 token!484)))))

(declare-fun b!3993780 () Bool)

(declare-fun res!1621352 () Bool)

(declare-fun e!2475867 () Bool)

(assert (=> b!3993780 (=> res!1621352 e!2475867)))

(assert (=> b!3993780 (= res!1621352 (not ((_ is IntegerValue!20984) (value!213408 token!484))))))

(assert (=> b!3993780 (= e!2475866 e!2475867)))

(declare-fun d!1181873 () Bool)

(declare-fun c!691097 () Bool)

(assert (=> d!1181873 (= c!691097 ((_ is IntegerValue!20982) (value!213408 token!484)))))

(assert (=> d!1181873 (= (inv!21 (value!213408 token!484)) e!2475865)))

(declare-fun b!3993781 () Bool)

(declare-fun inv!15 (TokenValue!6994) Bool)

(assert (=> b!3993781 (= e!2475867 (inv!15 (value!213408 token!484)))))

(assert (= (and d!1181873 c!691097) b!3993779))

(assert (= (and d!1181873 (not c!691097)) b!3993777))

(assert (= (and b!3993777 c!691096) b!3993778))

(assert (= (and b!3993777 (not c!691096)) b!3993780))

(assert (= (and b!3993780 (not res!1621352)) b!3993781))

(declare-fun m!4573611 () Bool)

(assert (=> b!3993778 m!4573611))

(declare-fun m!4573613 () Bool)

(assert (=> b!3993779 m!4573613))

(declare-fun m!4573615 () Bool)

(assert (=> b!3993781 m!4573615))

(assert (=> b!3993079 d!1181873))

(declare-fun b!3993784 () Bool)

(declare-fun e!2475869 () Bool)

(assert (=> b!3993784 (= e!2475869 (isPrefix!3851 (tail!6227 lt!1408679) (tail!6227 lt!1408727)))))

(declare-fun b!3993782 () Bool)

(declare-fun e!2475870 () Bool)

(assert (=> b!3993782 (= e!2475870 e!2475869)))

(declare-fun res!1621356 () Bool)

(assert (=> b!3993782 (=> (not res!1621356) (not e!2475869))))

(assert (=> b!3993782 (= res!1621356 (not ((_ is Nil!42710) lt!1408727)))))

(declare-fun b!3993785 () Bool)

(declare-fun e!2475868 () Bool)

(assert (=> b!3993785 (= e!2475868 (>= (size!31943 lt!1408727) (size!31943 lt!1408679)))))

(declare-fun b!3993783 () Bool)

(declare-fun res!1621353 () Bool)

(assert (=> b!3993783 (=> (not res!1621353) (not e!2475869))))

(assert (=> b!3993783 (= res!1621353 (= (head!8495 lt!1408679) (head!8495 lt!1408727)))))

(declare-fun d!1181875 () Bool)

(assert (=> d!1181875 e!2475868))

(declare-fun res!1621354 () Bool)

(assert (=> d!1181875 (=> res!1621354 e!2475868)))

(declare-fun lt!1408984 () Bool)

(assert (=> d!1181875 (= res!1621354 (not lt!1408984))))

(assert (=> d!1181875 (= lt!1408984 e!2475870)))

(declare-fun res!1621355 () Bool)

(assert (=> d!1181875 (=> res!1621355 e!2475870)))

(assert (=> d!1181875 (= res!1621355 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181875 (= (isPrefix!3851 lt!1408679 lt!1408727) lt!1408984)))

(assert (= (and d!1181875 (not res!1621355)) b!3993782))

(assert (= (and b!3993782 res!1621356) b!3993783))

(assert (= (and b!3993783 res!1621353) b!3993784))

(assert (= (and d!1181875 (not res!1621354)) b!3993785))

(assert (=> b!3993784 m!4573493))

(assert (=> b!3993784 m!4573567))

(assert (=> b!3993784 m!4573493))

(assert (=> b!3993784 m!4573567))

(declare-fun m!4573617 () Bool)

(assert (=> b!3993784 m!4573617))

(assert (=> b!3993785 m!4573357))

(assert (=> b!3993785 m!4572557))

(assert (=> b!3993783 m!4573501))

(assert (=> b!3993783 m!4573571))

(assert (=> b!3993098 d!1181875))

(declare-fun b!3993788 () Bool)

(declare-fun e!2475872 () Bool)

(assert (=> b!3993788 (= e!2475872 (isPrefix!3851 (tail!6227 lt!1408675) (tail!6227 lt!1408666)))))

(declare-fun b!3993786 () Bool)

(declare-fun e!2475873 () Bool)

(assert (=> b!3993786 (= e!2475873 e!2475872)))

(declare-fun res!1621360 () Bool)

(assert (=> b!3993786 (=> (not res!1621360) (not e!2475872))))

(assert (=> b!3993786 (= res!1621360 (not ((_ is Nil!42710) lt!1408666)))))

(declare-fun b!3993789 () Bool)

(declare-fun e!2475871 () Bool)

(assert (=> b!3993789 (= e!2475871 (>= (size!31943 lt!1408666) (size!31943 lt!1408675)))))

(declare-fun b!3993787 () Bool)

(declare-fun res!1621357 () Bool)

(assert (=> b!3993787 (=> (not res!1621357) (not e!2475872))))

(assert (=> b!3993787 (= res!1621357 (= (head!8495 lt!1408675) (head!8495 lt!1408666)))))

(declare-fun d!1181877 () Bool)

(assert (=> d!1181877 e!2475871))

(declare-fun res!1621358 () Bool)

(assert (=> d!1181877 (=> res!1621358 e!2475871)))

(declare-fun lt!1408985 () Bool)

(assert (=> d!1181877 (= res!1621358 (not lt!1408985))))

(assert (=> d!1181877 (= lt!1408985 e!2475873)))

(declare-fun res!1621359 () Bool)

(assert (=> d!1181877 (=> res!1621359 e!2475873)))

(assert (=> d!1181877 (= res!1621359 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181877 (= (isPrefix!3851 lt!1408675 lt!1408666) lt!1408985)))

(assert (= (and d!1181877 (not res!1621359)) b!3993786))

(assert (= (and b!3993786 res!1621360) b!3993787))

(assert (= (and b!3993787 res!1621357) b!3993788))

(assert (= (and d!1181877 (not res!1621358)) b!3993789))

(assert (=> b!3993788 m!4572799))

(declare-fun m!4573619 () Bool)

(assert (=> b!3993788 m!4573619))

(assert (=> b!3993788 m!4572799))

(assert (=> b!3993788 m!4573619))

(declare-fun m!4573621 () Bool)

(assert (=> b!3993788 m!4573621))

(declare-fun m!4573623 () Bool)

(assert (=> b!3993789 m!4573623))

(assert (=> b!3993789 m!4572527))

(assert (=> b!3993787 m!4572803))

(declare-fun m!4573625 () Bool)

(assert (=> b!3993787 m!4573625))

(assert (=> b!3993077 d!1181877))

(declare-fun d!1181879 () Bool)

(assert (=> d!1181879 (isPrefix!3851 lt!1408675 (++!11166 lt!1408675 suffixResult!105))))

(declare-fun lt!1408986 () Unit!61522)

(assert (=> d!1181879 (= lt!1408986 (choose!24041 lt!1408675 suffixResult!105))))

(assert (=> d!1181879 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408675 suffixResult!105) lt!1408986)))

(declare-fun bs!588543 () Bool)

(assert (= bs!588543 d!1181879))

(assert (=> bs!588543 m!4572583))

(assert (=> bs!588543 m!4572583))

(declare-fun m!4573627 () Bool)

(assert (=> bs!588543 m!4573627))

(declare-fun m!4573629 () Bool)

(assert (=> bs!588543 m!4573629))

(assert (=> b!3993077 d!1181879))

(declare-fun b!3993792 () Bool)

(declare-fun e!2475875 () Bool)

(assert (=> b!3993792 (= e!2475875 (isPrefix!3851 (tail!6227 prefix!494) (tail!6227 lt!1408671)))))

(declare-fun b!3993790 () Bool)

(declare-fun e!2475876 () Bool)

(assert (=> b!3993790 (= e!2475876 e!2475875)))

(declare-fun res!1621364 () Bool)

(assert (=> b!3993790 (=> (not res!1621364) (not e!2475875))))

(assert (=> b!3993790 (= res!1621364 (not ((_ is Nil!42710) lt!1408671)))))

(declare-fun b!3993793 () Bool)

(declare-fun e!2475874 () Bool)

(assert (=> b!3993793 (= e!2475874 (>= (size!31943 lt!1408671) (size!31943 prefix!494)))))

(declare-fun b!3993791 () Bool)

(declare-fun res!1621361 () Bool)

(assert (=> b!3993791 (=> (not res!1621361) (not e!2475875))))

(assert (=> b!3993791 (= res!1621361 (= (head!8495 prefix!494) (head!8495 lt!1408671)))))

(declare-fun d!1181881 () Bool)

(assert (=> d!1181881 e!2475874))

(declare-fun res!1621362 () Bool)

(assert (=> d!1181881 (=> res!1621362 e!2475874)))

(declare-fun lt!1408987 () Bool)

(assert (=> d!1181881 (= res!1621362 (not lt!1408987))))

(assert (=> d!1181881 (= lt!1408987 e!2475876)))

(declare-fun res!1621363 () Bool)

(assert (=> d!1181881 (=> res!1621363 e!2475876)))

(assert (=> d!1181881 (= res!1621363 ((_ is Nil!42710) prefix!494))))

(assert (=> d!1181881 (= (isPrefix!3851 prefix!494 lt!1408671) lt!1408987)))

(assert (= (and d!1181881 (not res!1621363)) b!3993790))

(assert (= (and b!3993790 res!1621364) b!3993791))

(assert (= (and b!3993791 res!1621361) b!3993792))

(assert (= (and d!1181881 (not res!1621362)) b!3993793))

(assert (=> b!3993792 m!4572739))

(assert (=> b!3993792 m!4573583))

(assert (=> b!3993792 m!4572739))

(assert (=> b!3993792 m!4573583))

(declare-fun m!4573631 () Bool)

(assert (=> b!3993792 m!4573631))

(assert (=> b!3993793 m!4573255))

(assert (=> b!3993793 m!4572529))

(assert (=> b!3993791 m!4572805))

(assert (=> b!3993791 m!4573587))

(assert (=> b!3993077 d!1181881))

(declare-fun b!3993796 () Bool)

(declare-fun e!2475878 () Bool)

(assert (=> b!3993796 (= e!2475878 (isPrefix!3851 (tail!6227 lt!1408675) (tail!6227 lt!1408671)))))

(declare-fun b!3993794 () Bool)

(declare-fun e!2475879 () Bool)

(assert (=> b!3993794 (= e!2475879 e!2475878)))

(declare-fun res!1621368 () Bool)

(assert (=> b!3993794 (=> (not res!1621368) (not e!2475878))))

(assert (=> b!3993794 (= res!1621368 (not ((_ is Nil!42710) lt!1408671)))))

(declare-fun b!3993797 () Bool)

(declare-fun e!2475877 () Bool)

(assert (=> b!3993797 (= e!2475877 (>= (size!31943 lt!1408671) (size!31943 lt!1408675)))))

(declare-fun b!3993795 () Bool)

(declare-fun res!1621365 () Bool)

(assert (=> b!3993795 (=> (not res!1621365) (not e!2475878))))

(assert (=> b!3993795 (= res!1621365 (= (head!8495 lt!1408675) (head!8495 lt!1408671)))))

(declare-fun d!1181883 () Bool)

(assert (=> d!1181883 e!2475877))

(declare-fun res!1621366 () Bool)

(assert (=> d!1181883 (=> res!1621366 e!2475877)))

(declare-fun lt!1408988 () Bool)

(assert (=> d!1181883 (= res!1621366 (not lt!1408988))))

(assert (=> d!1181883 (= lt!1408988 e!2475879)))

(declare-fun res!1621367 () Bool)

(assert (=> d!1181883 (=> res!1621367 e!2475879)))

(assert (=> d!1181883 (= res!1621367 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181883 (= (isPrefix!3851 lt!1408675 lt!1408671) lt!1408988)))

(assert (= (and d!1181883 (not res!1621367)) b!3993794))

(assert (= (and b!3993794 res!1621368) b!3993795))

(assert (= (and b!3993795 res!1621365) b!3993796))

(assert (= (and d!1181883 (not res!1621366)) b!3993797))

(assert (=> b!3993796 m!4572799))

(assert (=> b!3993796 m!4573583))

(assert (=> b!3993796 m!4572799))

(assert (=> b!3993796 m!4573583))

(declare-fun m!4573633 () Bool)

(assert (=> b!3993796 m!4573633))

(assert (=> b!3993797 m!4573255))

(assert (=> b!3993797 m!4572527))

(assert (=> b!3993795 m!4572803))

(assert (=> b!3993795 m!4573587))

(assert (=> b!3993077 d!1181883))

(declare-fun d!1181885 () Bool)

(assert (=> d!1181885 (isPrefix!3851 prefix!494 (++!11166 prefix!494 suffix!1299))))

(declare-fun lt!1408989 () Unit!61522)

(assert (=> d!1181885 (= lt!1408989 (choose!24041 prefix!494 suffix!1299))))

(assert (=> d!1181885 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 prefix!494 suffix!1299) lt!1408989)))

(declare-fun bs!588544 () Bool)

(assert (= bs!588544 d!1181885))

(assert (=> bs!588544 m!4572599))

(assert (=> bs!588544 m!4572599))

(declare-fun m!4573635 () Bool)

(assert (=> bs!588544 m!4573635))

(declare-fun m!4573637 () Bool)

(assert (=> bs!588544 m!4573637))

(assert (=> b!3993077 d!1181885))

(declare-fun d!1181887 () Bool)

(assert (=> d!1181887 (not (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408679))))

(declare-fun lt!1408990 () Unit!61522)

(assert (=> d!1181887 (= lt!1408990 (choose!24050 thiss!21717 rules!2999 (rule!9786 token!484) lt!1408675 lt!1408671 lt!1408679 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(assert (=> d!1181887 (isPrefix!3851 lt!1408675 lt!1408671)))

(assert (=> d!1181887 (= (lemmaMaxPrefixOutputsMaxPrefix!418 thiss!21717 rules!2999 (rule!9786 token!484) lt!1408675 lt!1408671 lt!1408679 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408990)))

(declare-fun bs!588545 () Bool)

(assert (= bs!588545 d!1181887))

(assert (=> bs!588545 m!4572423))

(declare-fun m!4573639 () Bool)

(assert (=> bs!588545 m!4573639))

(assert (=> bs!588545 m!4572455))

(assert (=> b!3993076 d!1181887))

(declare-fun b!3993798 () Bool)

(declare-fun res!1621370 () Bool)

(declare-fun e!2475882 () Bool)

(assert (=> b!3993798 (=> (not res!1621370) (not e!2475882))))

(assert (=> b!3993798 (= res!1621370 (isEmpty!25530 (tail!6227 lt!1408679)))))

(declare-fun b!3993799 () Bool)

(declare-fun res!1621373 () Bool)

(declare-fun e!2475884 () Bool)

(assert (=> b!3993799 (=> res!1621373 e!2475884)))

(assert (=> b!3993799 (= res!1621373 (not ((_ is ElementMatch!11669) (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun e!2475881 () Bool)

(assert (=> b!3993799 (= e!2475881 e!2475884)))

(declare-fun b!3993800 () Bool)

(declare-fun res!1621374 () Bool)

(assert (=> b!3993800 (=> (not res!1621374) (not e!2475882))))

(declare-fun call!285880 () Bool)

(assert (=> b!3993800 (= res!1621374 (not call!285880))))

(declare-fun b!3993801 () Bool)

(declare-fun e!2475880 () Bool)

(assert (=> b!3993801 (= e!2475880 (nullable!4094 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(declare-fun b!3993802 () Bool)

(assert (=> b!3993802 (= e!2475882 (= (head!8495 lt!1408679) (c!690977 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))))

(declare-fun bm!285875 () Bool)

(assert (=> bm!285875 (= call!285880 (isEmpty!25530 lt!1408679))))

(declare-fun b!3993803 () Bool)

(declare-fun e!2475885 () Bool)

(declare-fun lt!1408991 () Bool)

(assert (=> b!3993803 (= e!2475885 (= lt!1408991 call!285880))))

(declare-fun d!1181889 () Bool)

(assert (=> d!1181889 e!2475885))

(declare-fun c!691099 () Bool)

(assert (=> d!1181889 (= c!691099 ((_ is EmptyExpr!11669) (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(assert (=> d!1181889 (= lt!1408991 e!2475880)))

(declare-fun c!691098 () Bool)

(assert (=> d!1181889 (= c!691098 (isEmpty!25530 lt!1408679))))

(assert (=> d!1181889 (validRegex!5294 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))))

(assert (=> d!1181889 (= (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) lt!1408679) lt!1408991)))

(declare-fun b!3993804 () Bool)

(assert (=> b!3993804 (= e!2475885 e!2475881)))

(declare-fun c!691100 () Bool)

(assert (=> b!3993804 (= c!691100 ((_ is EmptyLang!11669) (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))

(declare-fun b!3993805 () Bool)

(assert (=> b!3993805 (= e!2475880 (matchR!5646 (derivativeStep!3505 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))) (head!8495 lt!1408679)) (tail!6227 lt!1408679)))))

(declare-fun b!3993806 () Bool)

(declare-fun res!1621375 () Bool)

(declare-fun e!2475883 () Bool)

(assert (=> b!3993806 (=> res!1621375 e!2475883)))

(assert (=> b!3993806 (= res!1621375 (not (isEmpty!25530 (tail!6227 lt!1408679))))))

(declare-fun b!3993807 () Bool)

(declare-fun e!2475886 () Bool)

(assert (=> b!3993807 (= e!2475884 e!2475886)))

(declare-fun res!1621371 () Bool)

(assert (=> b!3993807 (=> (not res!1621371) (not e!2475886))))

(assert (=> b!3993807 (= res!1621371 (not lt!1408991))))

(declare-fun b!3993808 () Bool)

(assert (=> b!3993808 (= e!2475883 (not (= (head!8495 lt!1408679) (c!690977 (regex!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668))))))))))

(declare-fun b!3993809 () Bool)

(assert (=> b!3993809 (= e!2475881 (not lt!1408991))))

(declare-fun b!3993810 () Bool)

(declare-fun res!1621376 () Bool)

(assert (=> b!3993810 (=> res!1621376 e!2475884)))

(assert (=> b!3993810 (= res!1621376 e!2475882)))

(declare-fun res!1621369 () Bool)

(assert (=> b!3993810 (=> (not res!1621369) (not e!2475882))))

(assert (=> b!3993810 (= res!1621369 lt!1408991)))

(declare-fun b!3993811 () Bool)

(assert (=> b!3993811 (= e!2475886 e!2475883)))

(declare-fun res!1621372 () Bool)

(assert (=> b!3993811 (=> res!1621372 e!2475883)))

(assert (=> b!3993811 (= res!1621372 call!285880)))

(assert (= (and d!1181889 c!691098) b!3993801))

(assert (= (and d!1181889 (not c!691098)) b!3993805))

(assert (= (and d!1181889 c!691099) b!3993803))

(assert (= (and d!1181889 (not c!691099)) b!3993804))

(assert (= (and b!3993804 c!691100) b!3993809))

(assert (= (and b!3993804 (not c!691100)) b!3993799))

(assert (= (and b!3993799 (not res!1621373)) b!3993810))

(assert (= (and b!3993810 res!1621369) b!3993800))

(assert (= (and b!3993800 res!1621374) b!3993798))

(assert (= (and b!3993798 res!1621370) b!3993802))

(assert (= (and b!3993810 (not res!1621376)) b!3993807))

(assert (= (and b!3993807 res!1621371) b!3993811))

(assert (= (and b!3993811 (not res!1621372)) b!3993806))

(assert (= (and b!3993806 (not res!1621375)) b!3993808))

(assert (= (or b!3993803 b!3993800 b!3993811) bm!285875))

(declare-fun m!4573641 () Bool)

(assert (=> bm!285875 m!4573641))

(assert (=> b!3993806 m!4573493))

(assert (=> b!3993806 m!4573493))

(declare-fun m!4573643 () Bool)

(assert (=> b!3993806 m!4573643))

(assert (=> d!1181889 m!4573641))

(assert (=> d!1181889 m!4573519))

(assert (=> b!3993805 m!4573501))

(assert (=> b!3993805 m!4573501))

(declare-fun m!4573645 () Bool)

(assert (=> b!3993805 m!4573645))

(assert (=> b!3993805 m!4573493))

(assert (=> b!3993805 m!4573645))

(assert (=> b!3993805 m!4573493))

(declare-fun m!4573647 () Bool)

(assert (=> b!3993805 m!4573647))

(assert (=> b!3993808 m!4573501))

(assert (=> b!3993801 m!4573521))

(assert (=> b!3993798 m!4573493))

(assert (=> b!3993798 m!4573493))

(assert (=> b!3993798 m!4573643))

(assert (=> b!3993802 m!4573501))

(assert (=> b!3993076 d!1181889))

(declare-fun d!1181891 () Bool)

(assert (=> d!1181891 (= (inv!57042 (tag!7624 (h!48132 rules!2999))) (= (mod (str.len (value!213407 (tag!7624 (h!48132 rules!2999)))) 2) 0))))

(assert (=> b!3993096 d!1181891))

(declare-fun d!1181893 () Bool)

(declare-fun res!1621377 () Bool)

(declare-fun e!2475887 () Bool)

(assert (=> d!1181893 (=> (not res!1621377) (not e!2475887))))

(assert (=> d!1181893 (= res!1621377 (semiInverseModEq!2901 (toChars!9111 (transformation!6764 (h!48132 rules!2999))) (toValue!9252 (transformation!6764 (h!48132 rules!2999)))))))

(assert (=> d!1181893 (= (inv!57046 (transformation!6764 (h!48132 rules!2999))) e!2475887)))

(declare-fun b!3993812 () Bool)

(assert (=> b!3993812 (= e!2475887 (equivClasses!2800 (toChars!9111 (transformation!6764 (h!48132 rules!2999))) (toValue!9252 (transformation!6764 (h!48132 rules!2999)))))))

(assert (= (and d!1181893 res!1621377) b!3993812))

(declare-fun m!4573649 () Bool)

(assert (=> d!1181893 m!4573649))

(declare-fun m!4573651 () Bool)

(assert (=> b!3993812 m!4573651))

(assert (=> b!3993096 d!1181893))

(declare-fun b!3993813 () Bool)

(declare-fun e!2475889 () List!42834)

(assert (=> b!3993813 (= e!2475889 lt!1408673)))

(declare-fun b!3993815 () Bool)

(declare-fun res!1621379 () Bool)

(declare-fun e!2475888 () Bool)

(assert (=> b!3993815 (=> (not res!1621379) (not e!2475888))))

(declare-fun lt!1408992 () List!42834)

(assert (=> b!3993815 (= res!1621379 (= (size!31943 lt!1408992) (+ (size!31943 lt!1408679) (size!31943 lt!1408673))))))

(declare-fun b!3993816 () Bool)

(assert (=> b!3993816 (= e!2475888 (or (not (= lt!1408673 Nil!42710)) (= lt!1408992 lt!1408679)))))

(declare-fun b!3993814 () Bool)

(assert (=> b!3993814 (= e!2475889 (Cons!42710 (h!48130 lt!1408679) (++!11166 (t!331873 lt!1408679) lt!1408673)))))

(declare-fun d!1181895 () Bool)

(assert (=> d!1181895 e!2475888))

(declare-fun res!1621378 () Bool)

(assert (=> d!1181895 (=> (not res!1621378) (not e!2475888))))

(assert (=> d!1181895 (= res!1621378 (= (content!6478 lt!1408992) ((_ map or) (content!6478 lt!1408679) (content!6478 lt!1408673))))))

(assert (=> d!1181895 (= lt!1408992 e!2475889)))

(declare-fun c!691101 () Bool)

(assert (=> d!1181895 (= c!691101 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181895 (= (++!11166 lt!1408679 lt!1408673) lt!1408992)))

(assert (= (and d!1181895 c!691101) b!3993813))

(assert (= (and d!1181895 (not c!691101)) b!3993814))

(assert (= (and d!1181895 res!1621378) b!3993815))

(assert (= (and b!3993815 res!1621379) b!3993816))

(declare-fun m!4573653 () Bool)

(assert (=> b!3993815 m!4573653))

(assert (=> b!3993815 m!4572557))

(declare-fun m!4573655 () Bool)

(assert (=> b!3993815 m!4573655))

(declare-fun m!4573657 () Bool)

(assert (=> b!3993814 m!4573657))

(declare-fun m!4573659 () Bool)

(assert (=> d!1181895 m!4573659))

(assert (=> d!1181895 m!4573439))

(declare-fun m!4573661 () Bool)

(assert (=> d!1181895 m!4573661))

(assert (=> b!3993094 d!1181895))

(declare-fun d!1181897 () Bool)

(declare-fun lt!1408993 () List!42834)

(assert (=> d!1181897 (= (++!11166 lt!1408679 lt!1408993) lt!1408727)))

(declare-fun e!2475890 () List!42834)

(assert (=> d!1181897 (= lt!1408993 e!2475890)))

(declare-fun c!691102 () Bool)

(assert (=> d!1181897 (= c!691102 ((_ is Cons!42710) lt!1408679))))

(assert (=> d!1181897 (>= (size!31943 lt!1408727) (size!31943 lt!1408679))))

(assert (=> d!1181897 (= (getSuffix!2282 lt!1408727 lt!1408679) lt!1408993)))

(declare-fun b!3993817 () Bool)

(assert (=> b!3993817 (= e!2475890 (getSuffix!2282 (tail!6227 lt!1408727) (t!331873 lt!1408679)))))

(declare-fun b!3993818 () Bool)

(assert (=> b!3993818 (= e!2475890 lt!1408727)))

(assert (= (and d!1181897 c!691102) b!3993817))

(assert (= (and d!1181897 (not c!691102)) b!3993818))

(declare-fun m!4573663 () Bool)

(assert (=> d!1181897 m!4573663))

(assert (=> d!1181897 m!4573357))

(assert (=> d!1181897 m!4572557))

(assert (=> b!3993817 m!4573567))

(assert (=> b!3993817 m!4573567))

(declare-fun m!4573665 () Bool)

(assert (=> b!3993817 m!4573665))

(assert (=> b!3993094 d!1181897))

(declare-fun d!1181899 () Bool)

(declare-fun lt!1408994 () Int)

(assert (=> d!1181899 (>= lt!1408994 0)))

(declare-fun e!2475891 () Int)

(assert (=> d!1181899 (= lt!1408994 e!2475891)))

(declare-fun c!691103 () Bool)

(assert (=> d!1181899 (= c!691103 ((_ is Nil!42710) suffix!1299))))

(assert (=> d!1181899 (= (size!31943 suffix!1299) lt!1408994)))

(declare-fun b!3993819 () Bool)

(assert (=> b!3993819 (= e!2475891 0)))

(declare-fun b!3993820 () Bool)

(assert (=> b!3993820 (= e!2475891 (+ 1 (size!31943 (t!331873 suffix!1299))))))

(assert (= (and d!1181899 c!691103) b!3993819))

(assert (= (and d!1181899 (not c!691103)) b!3993820))

(declare-fun m!4573667 () Bool)

(assert (=> b!3993820 m!4573667))

(assert (=> b!3993073 d!1181899))

(declare-fun d!1181901 () Bool)

(declare-fun lt!1408995 () Int)

(assert (=> d!1181901 (>= lt!1408995 0)))

(declare-fun e!2475892 () Int)

(assert (=> d!1181901 (= lt!1408995 e!2475892)))

(declare-fun c!691104 () Bool)

(assert (=> d!1181901 (= c!691104 ((_ is Nil!42710) newSuffix!27))))

(assert (=> d!1181901 (= (size!31943 newSuffix!27) lt!1408995)))

(declare-fun b!3993821 () Bool)

(assert (=> b!3993821 (= e!2475892 0)))

(declare-fun b!3993822 () Bool)

(assert (=> b!3993822 (= e!2475892 (+ 1 (size!31943 (t!331873 newSuffix!27))))))

(assert (= (and d!1181901 c!691104) b!3993821))

(assert (= (and d!1181901 (not c!691104)) b!3993822))

(declare-fun m!4573669 () Bool)

(assert (=> b!3993822 m!4573669))

(assert (=> b!3993073 d!1181901))

(declare-fun d!1181903 () Bool)

(declare-fun res!1621382 () Bool)

(declare-fun e!2475895 () Bool)

(assert (=> d!1181903 (=> (not res!1621382) (not e!2475895))))

(declare-fun rulesValid!2635 (LexerInterface!6353 List!42836) Bool)

(assert (=> d!1181903 (= res!1621382 (rulesValid!2635 thiss!21717 rules!2999))))

(assert (=> d!1181903 (= (rulesInvariant!5696 thiss!21717 rules!2999) e!2475895)))

(declare-fun b!3993825 () Bool)

(declare-datatypes ((List!42838 0))(
  ( (Nil!42714) (Cons!42714 (h!48134 String!48688) (t!331925 List!42838)) )
))
(declare-fun noDuplicateTag!2636 (LexerInterface!6353 List!42836 List!42838) Bool)

(assert (=> b!3993825 (= e!2475895 (noDuplicateTag!2636 thiss!21717 rules!2999 Nil!42714))))

(assert (= (and d!1181903 res!1621382) b!3993825))

(declare-fun m!4573671 () Bool)

(assert (=> d!1181903 m!4573671))

(declare-fun m!4573673 () Bool)

(assert (=> b!3993825 m!4573673))

(assert (=> b!3993095 d!1181903))

(declare-fun d!1181905 () Bool)

(assert (=> d!1181905 (= (_2!24088 (v!39533 lt!1408668)) lt!1408673)))

(declare-fun lt!1408996 () Unit!61522)

(assert (=> d!1181905 (= lt!1408996 (choose!24040 lt!1408679 (_2!24088 (v!39533 lt!1408668)) lt!1408679 lt!1408673 lt!1408727))))

(assert (=> d!1181905 (isPrefix!3851 lt!1408679 lt!1408727)))

(assert (=> d!1181905 (= (lemmaSamePrefixThenSameSuffix!2038 lt!1408679 (_2!24088 (v!39533 lt!1408668)) lt!1408679 lt!1408673 lt!1408727) lt!1408996)))

(declare-fun bs!588546 () Bool)

(assert (= bs!588546 d!1181905))

(declare-fun m!4573675 () Bool)

(assert (=> bs!588546 m!4573675))

(assert (=> bs!588546 m!4572447))

(assert (=> b!3993093 d!1181905))

(declare-fun b!3993828 () Bool)

(declare-fun e!2475897 () Bool)

(assert (=> b!3993828 (= e!2475897 (isPrefix!3851 (tail!6227 lt!1408679) (tail!6227 lt!1408674)))))

(declare-fun b!3993826 () Bool)

(declare-fun e!2475898 () Bool)

(assert (=> b!3993826 (= e!2475898 e!2475897)))

(declare-fun res!1621386 () Bool)

(assert (=> b!3993826 (=> (not res!1621386) (not e!2475897))))

(assert (=> b!3993826 (= res!1621386 (not ((_ is Nil!42710) lt!1408674)))))

(declare-fun b!3993829 () Bool)

(declare-fun e!2475896 () Bool)

(assert (=> b!3993829 (= e!2475896 (>= (size!31943 lt!1408674) (size!31943 lt!1408679)))))

(declare-fun b!3993827 () Bool)

(declare-fun res!1621383 () Bool)

(assert (=> b!3993827 (=> (not res!1621383) (not e!2475897))))

(assert (=> b!3993827 (= res!1621383 (= (head!8495 lt!1408679) (head!8495 lt!1408674)))))

(declare-fun d!1181907 () Bool)

(assert (=> d!1181907 e!2475896))

(declare-fun res!1621384 () Bool)

(assert (=> d!1181907 (=> res!1621384 e!2475896)))

(declare-fun lt!1408997 () Bool)

(assert (=> d!1181907 (= res!1621384 (not lt!1408997))))

(assert (=> d!1181907 (= lt!1408997 e!2475898)))

(declare-fun res!1621385 () Bool)

(assert (=> d!1181907 (=> res!1621385 e!2475898)))

(assert (=> d!1181907 (= res!1621385 ((_ is Nil!42710) lt!1408679))))

(assert (=> d!1181907 (= (isPrefix!3851 lt!1408679 lt!1408674) lt!1408997)))

(assert (= (and d!1181907 (not res!1621385)) b!3993826))

(assert (= (and b!3993826 res!1621386) b!3993827))

(assert (= (and b!3993827 res!1621383) b!3993828))

(assert (= (and d!1181907 (not res!1621384)) b!3993829))

(assert (=> b!3993828 m!4573493))

(declare-fun m!4573677 () Bool)

(assert (=> b!3993828 m!4573677))

(assert (=> b!3993828 m!4573493))

(assert (=> b!3993828 m!4573677))

(declare-fun m!4573679 () Bool)

(assert (=> b!3993828 m!4573679))

(declare-fun m!4573681 () Bool)

(assert (=> b!3993829 m!4573681))

(assert (=> b!3993829 m!4572557))

(assert (=> b!3993827 m!4573501))

(declare-fun m!4573683 () Bool)

(assert (=> b!3993827 m!4573683))

(assert (=> b!3993093 d!1181907))

(declare-fun d!1181909 () Bool)

(assert (=> d!1181909 (isPrefix!3851 lt!1408679 (++!11166 lt!1408679 lt!1408673))))

(declare-fun lt!1408998 () Unit!61522)

(assert (=> d!1181909 (= lt!1408998 (choose!24041 lt!1408679 lt!1408673))))

(assert (=> d!1181909 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408679 lt!1408673) lt!1408998)))

(declare-fun bs!588547 () Bool)

(assert (= bs!588547 d!1181909))

(assert (=> bs!588547 m!4572449))

(assert (=> bs!588547 m!4572449))

(declare-fun m!4573685 () Bool)

(assert (=> bs!588547 m!4573685))

(declare-fun m!4573687 () Bool)

(assert (=> bs!588547 m!4573687))

(assert (=> b!3993093 d!1181909))

(declare-fun b!3993832 () Bool)

(declare-fun e!2475900 () Bool)

(assert (=> b!3993832 (= e!2475900 (isPrefix!3851 (tail!6227 newSuffix!27) (tail!6227 suffix!1299)))))

(declare-fun b!3993830 () Bool)

(declare-fun e!2475901 () Bool)

(assert (=> b!3993830 (= e!2475901 e!2475900)))

(declare-fun res!1621390 () Bool)

(assert (=> b!3993830 (=> (not res!1621390) (not e!2475900))))

(assert (=> b!3993830 (= res!1621390 (not ((_ is Nil!42710) suffix!1299)))))

(declare-fun b!3993833 () Bool)

(declare-fun e!2475899 () Bool)

(assert (=> b!3993833 (= e!2475899 (>= (size!31943 suffix!1299) (size!31943 newSuffix!27)))))

(declare-fun b!3993831 () Bool)

(declare-fun res!1621387 () Bool)

(assert (=> b!3993831 (=> (not res!1621387) (not e!2475900))))

(assert (=> b!3993831 (= res!1621387 (= (head!8495 newSuffix!27) (head!8495 suffix!1299)))))

(declare-fun d!1181911 () Bool)

(assert (=> d!1181911 e!2475899))

(declare-fun res!1621388 () Bool)

(assert (=> d!1181911 (=> res!1621388 e!2475899)))

(declare-fun lt!1408999 () Bool)

(assert (=> d!1181911 (= res!1621388 (not lt!1408999))))

(assert (=> d!1181911 (= lt!1408999 e!2475901)))

(declare-fun res!1621389 () Bool)

(assert (=> d!1181911 (=> res!1621389 e!2475901)))

(assert (=> d!1181911 (= res!1621389 ((_ is Nil!42710) newSuffix!27))))

(assert (=> d!1181911 (= (isPrefix!3851 newSuffix!27 suffix!1299) lt!1408999)))

(assert (= (and d!1181911 (not res!1621389)) b!3993830))

(assert (= (and b!3993830 res!1621390) b!3993831))

(assert (= (and b!3993831 res!1621387) b!3993832))

(assert (= (and d!1181911 (not res!1621388)) b!3993833))

(declare-fun m!4573689 () Bool)

(assert (=> b!3993832 m!4573689))

(assert (=> b!3993832 m!4572699))

(assert (=> b!3993832 m!4573689))

(assert (=> b!3993832 m!4572699))

(declare-fun m!4573691 () Bool)

(assert (=> b!3993832 m!4573691))

(assert (=> b!3993833 m!4572431))

(assert (=> b!3993833 m!4572433))

(declare-fun m!4573693 () Bool)

(assert (=> b!3993831 m!4573693))

(declare-fun m!4573695 () Bool)

(assert (=> b!3993831 m!4573695))

(assert (=> b!3993070 d!1181911))

(declare-fun b!3993834 () Bool)

(declare-fun e!2475903 () List!42834)

(assert (=> b!3993834 (= e!2475903 lt!1408681)))

(declare-fun b!3993836 () Bool)

(declare-fun res!1621392 () Bool)

(declare-fun e!2475902 () Bool)

(assert (=> b!3993836 (=> (not res!1621392) (not e!2475902))))

(declare-fun lt!1409000 () List!42834)

(assert (=> b!3993836 (= res!1621392 (= (size!31943 lt!1409000) (+ (size!31943 lt!1408675) (size!31943 lt!1408681))))))

(declare-fun b!3993837 () Bool)

(assert (=> b!3993837 (= e!2475902 (or (not (= lt!1408681 Nil!42710)) (= lt!1409000 lt!1408675)))))

(declare-fun b!3993835 () Bool)

(assert (=> b!3993835 (= e!2475903 (Cons!42710 (h!48130 lt!1408675) (++!11166 (t!331873 lt!1408675) lt!1408681)))))

(declare-fun d!1181913 () Bool)

(assert (=> d!1181913 e!2475902))

(declare-fun res!1621391 () Bool)

(assert (=> d!1181913 (=> (not res!1621391) (not e!2475902))))

(assert (=> d!1181913 (= res!1621391 (= (content!6478 lt!1409000) ((_ map or) (content!6478 lt!1408675) (content!6478 lt!1408681))))))

(assert (=> d!1181913 (= lt!1409000 e!2475903)))

(declare-fun c!691105 () Bool)

(assert (=> d!1181913 (= c!691105 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181913 (= (++!11166 lt!1408675 lt!1408681) lt!1409000)))

(assert (= (and d!1181913 c!691105) b!3993834))

(assert (= (and d!1181913 (not c!691105)) b!3993835))

(assert (= (and d!1181913 res!1621391) b!3993836))

(assert (= (and b!3993836 res!1621392) b!3993837))

(declare-fun m!4573697 () Bool)

(assert (=> b!3993836 m!4573697))

(assert (=> b!3993836 m!4572527))

(declare-fun m!4573699 () Bool)

(assert (=> b!3993836 m!4573699))

(declare-fun m!4573701 () Bool)

(assert (=> b!3993835 m!4573701))

(declare-fun m!4573703 () Bool)

(assert (=> d!1181913 m!4573703))

(assert (=> d!1181913 m!4572711))

(declare-fun m!4573705 () Bool)

(assert (=> d!1181913 m!4573705))

(assert (=> b!3993071 d!1181913))

(declare-fun d!1181915 () Bool)

(declare-fun lt!1409001 () List!42834)

(assert (=> d!1181915 (= (++!11166 lt!1408675 lt!1409001) lt!1408671)))

(declare-fun e!2475904 () List!42834)

(assert (=> d!1181915 (= lt!1409001 e!2475904)))

(declare-fun c!691106 () Bool)

(assert (=> d!1181915 (= c!691106 ((_ is Cons!42710) lt!1408675))))

(assert (=> d!1181915 (>= (size!31943 lt!1408671) (size!31943 lt!1408675))))

(assert (=> d!1181915 (= (getSuffix!2282 lt!1408671 lt!1408675) lt!1409001)))

(declare-fun b!3993838 () Bool)

(assert (=> b!3993838 (= e!2475904 (getSuffix!2282 (tail!6227 lt!1408671) (t!331873 lt!1408675)))))

(declare-fun b!3993839 () Bool)

(assert (=> b!3993839 (= e!2475904 lt!1408671)))

(assert (= (and d!1181915 c!691106) b!3993838))

(assert (= (and d!1181915 (not c!691106)) b!3993839))

(declare-fun m!4573707 () Bool)

(assert (=> d!1181915 m!4573707))

(assert (=> d!1181915 m!4573255))

(assert (=> d!1181915 m!4572527))

(assert (=> b!3993838 m!4573583))

(assert (=> b!3993838 m!4573583))

(declare-fun m!4573709 () Bool)

(assert (=> b!3993838 m!4573709))

(assert (=> b!3993071 d!1181915))

(declare-fun b!3993842 () Bool)

(declare-fun e!2475906 () Bool)

(assert (=> b!3993842 (= e!2475906 (isPrefix!3851 (tail!6227 lt!1408671) (tail!6227 lt!1408671)))))

(declare-fun b!3993840 () Bool)

(declare-fun e!2475907 () Bool)

(assert (=> b!3993840 (= e!2475907 e!2475906)))

(declare-fun res!1621396 () Bool)

(assert (=> b!3993840 (=> (not res!1621396) (not e!2475906))))

(assert (=> b!3993840 (= res!1621396 (not ((_ is Nil!42710) lt!1408671)))))

(declare-fun b!3993843 () Bool)

(declare-fun e!2475905 () Bool)

(assert (=> b!3993843 (= e!2475905 (>= (size!31943 lt!1408671) (size!31943 lt!1408671)))))

(declare-fun b!3993841 () Bool)

(declare-fun res!1621393 () Bool)

(assert (=> b!3993841 (=> (not res!1621393) (not e!2475906))))

(assert (=> b!3993841 (= res!1621393 (= (head!8495 lt!1408671) (head!8495 lt!1408671)))))

(declare-fun d!1181917 () Bool)

(assert (=> d!1181917 e!2475905))

(declare-fun res!1621394 () Bool)

(assert (=> d!1181917 (=> res!1621394 e!2475905)))

(declare-fun lt!1409002 () Bool)

(assert (=> d!1181917 (= res!1621394 (not lt!1409002))))

(assert (=> d!1181917 (= lt!1409002 e!2475907)))

(declare-fun res!1621395 () Bool)

(assert (=> d!1181917 (=> res!1621395 e!2475907)))

(assert (=> d!1181917 (= res!1621395 ((_ is Nil!42710) lt!1408671))))

(assert (=> d!1181917 (= (isPrefix!3851 lt!1408671 lt!1408671) lt!1409002)))

(assert (= (and d!1181917 (not res!1621395)) b!3993840))

(assert (= (and b!3993840 res!1621396) b!3993841))

(assert (= (and b!3993841 res!1621393) b!3993842))

(assert (= (and d!1181917 (not res!1621394)) b!3993843))

(assert (=> b!3993842 m!4573583))

(assert (=> b!3993842 m!4573583))

(assert (=> b!3993842 m!4573583))

(assert (=> b!3993842 m!4573583))

(declare-fun m!4573711 () Bool)

(assert (=> b!3993842 m!4573711))

(assert (=> b!3993843 m!4573255))

(assert (=> b!3993843 m!4573255))

(assert (=> b!3993841 m!4573587))

(assert (=> b!3993841 m!4573587))

(assert (=> b!3993071 d!1181917))

(declare-fun d!1181919 () Bool)

(assert (=> d!1181919 (isPrefix!3851 lt!1408671 lt!1408671)))

(declare-fun lt!1409005 () Unit!61522)

(declare-fun choose!24053 (List!42834 List!42834) Unit!61522)

(assert (=> d!1181919 (= lt!1409005 (choose!24053 lt!1408671 lt!1408671))))

(assert (=> d!1181919 (= (lemmaIsPrefixRefl!2443 lt!1408671 lt!1408671) lt!1409005)))

(declare-fun bs!588548 () Bool)

(assert (= bs!588548 d!1181919))

(assert (=> bs!588548 m!4572493))

(declare-fun m!4573713 () Bool)

(assert (=> bs!588548 m!4573713))

(assert (=> b!3993071 d!1181919))

(declare-fun b!3993862 () Bool)

(declare-fun res!1621415 () Bool)

(declare-fun e!2475915 () Bool)

(assert (=> b!3993862 (=> (not res!1621415) (not e!2475915))))

(declare-fun lt!1409017 () Option!9178)

(assert (=> b!3993862 (= res!1621415 (< (size!31943 (_2!24088 (get!14052 lt!1409017))) (size!31943 lt!1408671)))))

(declare-fun b!3993863 () Bool)

(assert (=> b!3993863 (= e!2475915 (contains!8499 rules!2999 (rule!9786 (_1!24088 (get!14052 lt!1409017)))))))

(declare-fun b!3993864 () Bool)

(declare-fun e!2475914 () Bool)

(assert (=> b!3993864 (= e!2475914 e!2475915)))

(declare-fun res!1621412 () Bool)

(assert (=> b!3993864 (=> (not res!1621412) (not e!2475915))))

(declare-fun isDefined!7046 (Option!9178) Bool)

(assert (=> b!3993864 (= res!1621412 (isDefined!7046 lt!1409017))))

(declare-fun b!3993865 () Bool)

(declare-fun res!1621413 () Bool)

(assert (=> b!3993865 (=> (not res!1621413) (not e!2475915))))

(assert (=> b!3993865 (= res!1621413 (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (get!14052 lt!1409017)))) (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1409017))))))))

(declare-fun b!3993866 () Bool)

(declare-fun res!1621417 () Bool)

(assert (=> b!3993866 (=> (not res!1621417) (not e!2475915))))

(assert (=> b!3993866 (= res!1621417 (= (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1409017)))) (originalCharacters!7364 (_1!24088 (get!14052 lt!1409017)))))))

(declare-fun bm!285878 () Bool)

(declare-fun call!285883 () Option!9178)

(assert (=> bm!285878 (= call!285883 (maxPrefixOneRule!2685 thiss!21717 (h!48132 rules!2999) lt!1408671))))

(declare-fun b!3993867 () Bool)

(declare-fun e!2475916 () Option!9178)

(assert (=> b!3993867 (= e!2475916 call!285883)))

(declare-fun d!1181921 () Bool)

(assert (=> d!1181921 e!2475914))

(declare-fun res!1621416 () Bool)

(assert (=> d!1181921 (=> res!1621416 e!2475914)))

(assert (=> d!1181921 (= res!1621416 (isEmpty!25529 lt!1409017))))

(assert (=> d!1181921 (= lt!1409017 e!2475916)))

(declare-fun c!691109 () Bool)

(assert (=> d!1181921 (= c!691109 (and ((_ is Cons!42712) rules!2999) ((_ is Nil!42712) (t!331875 rules!2999))))))

(declare-fun lt!1409016 () Unit!61522)

(declare-fun lt!1409018 () Unit!61522)

(assert (=> d!1181921 (= lt!1409016 lt!1409018)))

(assert (=> d!1181921 (isPrefix!3851 lt!1408671 lt!1408671)))

(assert (=> d!1181921 (= lt!1409018 (lemmaIsPrefixRefl!2443 lt!1408671 lt!1408671))))

(declare-fun rulesValidInductive!2461 (LexerInterface!6353 List!42836) Bool)

(assert (=> d!1181921 (rulesValidInductive!2461 thiss!21717 rules!2999)))

(assert (=> d!1181921 (= (maxPrefix!3651 thiss!21717 rules!2999 lt!1408671) lt!1409017)))

(declare-fun b!3993868 () Bool)

(declare-fun res!1621414 () Bool)

(assert (=> b!3993868 (=> (not res!1621414) (not e!2475915))))

(assert (=> b!3993868 (= res!1621414 (= (++!11166 (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1409017)))) (_2!24088 (get!14052 lt!1409017))) lt!1408671))))

(declare-fun b!3993869 () Bool)

(declare-fun lt!1409020 () Option!9178)

(declare-fun lt!1409019 () Option!9178)

(assert (=> b!3993869 (= e!2475916 (ite (and ((_ is None!9177) lt!1409020) ((_ is None!9177) lt!1409019)) None!9177 (ite ((_ is None!9177) lt!1409019) lt!1409020 (ite ((_ is None!9177) lt!1409020) lt!1409019 (ite (>= (size!31942 (_1!24088 (v!39533 lt!1409020))) (size!31942 (_1!24088 (v!39533 lt!1409019)))) lt!1409020 lt!1409019)))))))

(assert (=> b!3993869 (= lt!1409020 call!285883)))

(assert (=> b!3993869 (= lt!1409019 (maxPrefix!3651 thiss!21717 (t!331875 rules!2999) lt!1408671))))

(declare-fun b!3993870 () Bool)

(declare-fun res!1621411 () Bool)

(assert (=> b!3993870 (=> (not res!1621411) (not e!2475915))))

(assert (=> b!3993870 (= res!1621411 (= (value!213408 (_1!24088 (get!14052 lt!1409017))) (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (get!14052 lt!1409017)))) (seqFromList!5003 (originalCharacters!7364 (_1!24088 (get!14052 lt!1409017)))))))))

(assert (= (and d!1181921 c!691109) b!3993867))

(assert (= (and d!1181921 (not c!691109)) b!3993869))

(assert (= (or b!3993867 b!3993869) bm!285878))

(assert (= (and d!1181921 (not res!1621416)) b!3993864))

(assert (= (and b!3993864 res!1621412) b!3993866))

(assert (= (and b!3993866 res!1621417) b!3993862))

(assert (= (and b!3993862 res!1621415) b!3993868))

(assert (= (and b!3993868 res!1621414) b!3993870))

(assert (= (and b!3993870 res!1621411) b!3993865))

(assert (= (and b!3993865 res!1621413) b!3993863))

(declare-fun m!4573715 () Bool)

(assert (=> b!3993868 m!4573715))

(declare-fun m!4573717 () Bool)

(assert (=> b!3993868 m!4573717))

(assert (=> b!3993868 m!4573717))

(declare-fun m!4573719 () Bool)

(assert (=> b!3993868 m!4573719))

(assert (=> b!3993868 m!4573719))

(declare-fun m!4573721 () Bool)

(assert (=> b!3993868 m!4573721))

(assert (=> b!3993862 m!4573715))

(declare-fun m!4573723 () Bool)

(assert (=> b!3993862 m!4573723))

(assert (=> b!3993862 m!4573255))

(declare-fun m!4573725 () Bool)

(assert (=> d!1181921 m!4573725))

(assert (=> d!1181921 m!4572493))

(assert (=> d!1181921 m!4572495))

(declare-fun m!4573727 () Bool)

(assert (=> d!1181921 m!4573727))

(assert (=> b!3993865 m!4573715))

(assert (=> b!3993865 m!4573717))

(assert (=> b!3993865 m!4573717))

(assert (=> b!3993865 m!4573719))

(assert (=> b!3993865 m!4573719))

(declare-fun m!4573729 () Bool)

(assert (=> b!3993865 m!4573729))

(declare-fun m!4573731 () Bool)

(assert (=> bm!285878 m!4573731))

(assert (=> b!3993866 m!4573715))

(assert (=> b!3993866 m!4573717))

(assert (=> b!3993866 m!4573717))

(assert (=> b!3993866 m!4573719))

(assert (=> b!3993863 m!4573715))

(declare-fun m!4573733 () Bool)

(assert (=> b!3993863 m!4573733))

(assert (=> b!3993870 m!4573715))

(declare-fun m!4573735 () Bool)

(assert (=> b!3993870 m!4573735))

(assert (=> b!3993870 m!4573735))

(declare-fun m!4573737 () Bool)

(assert (=> b!3993870 m!4573737))

(declare-fun m!4573739 () Bool)

(assert (=> b!3993869 m!4573739))

(declare-fun m!4573741 () Bool)

(assert (=> b!3993864 m!4573741))

(assert (=> b!3993090 d!1181921))

(declare-fun b!3993871 () Bool)

(declare-fun e!2475918 () List!42834)

(assert (=> b!3993871 (= e!2475918 suffix!1299)))

(declare-fun b!3993873 () Bool)

(declare-fun res!1621419 () Bool)

(declare-fun e!2475917 () Bool)

(assert (=> b!3993873 (=> (not res!1621419) (not e!2475917))))

(declare-fun lt!1409021 () List!42834)

(assert (=> b!3993873 (= res!1621419 (= (size!31943 lt!1409021) (+ (size!31943 prefix!494) (size!31943 suffix!1299))))))

(declare-fun b!3993874 () Bool)

(assert (=> b!3993874 (= e!2475917 (or (not (= suffix!1299 Nil!42710)) (= lt!1409021 prefix!494)))))

(declare-fun b!3993872 () Bool)

(assert (=> b!3993872 (= e!2475918 (Cons!42710 (h!48130 prefix!494) (++!11166 (t!331873 prefix!494) suffix!1299)))))

(declare-fun d!1181923 () Bool)

(assert (=> d!1181923 e!2475917))

(declare-fun res!1621418 () Bool)

(assert (=> d!1181923 (=> (not res!1621418) (not e!2475917))))

(assert (=> d!1181923 (= res!1621418 (= (content!6478 lt!1409021) ((_ map or) (content!6478 prefix!494) (content!6478 suffix!1299))))))

(assert (=> d!1181923 (= lt!1409021 e!2475918)))

(declare-fun c!691110 () Bool)

(assert (=> d!1181923 (= c!691110 ((_ is Nil!42710) prefix!494))))

(assert (=> d!1181923 (= (++!11166 prefix!494 suffix!1299) lt!1409021)))

(assert (= (and d!1181923 c!691110) b!3993871))

(assert (= (and d!1181923 (not c!691110)) b!3993872))

(assert (= (and d!1181923 res!1621418) b!3993873))

(assert (= (and b!3993873 res!1621419) b!3993874))

(declare-fun m!4573743 () Bool)

(assert (=> b!3993873 m!4573743))

(assert (=> b!3993873 m!4572529))

(assert (=> b!3993873 m!4572431))

(declare-fun m!4573745 () Bool)

(assert (=> b!3993872 m!4573745))

(declare-fun m!4573747 () Bool)

(assert (=> d!1181923 m!4573747))

(assert (=> d!1181923 m!4573351))

(assert (=> d!1181923 m!4573409))

(assert (=> b!3993090 d!1181923))

(declare-fun b!3993875 () Bool)

(declare-fun res!1621424 () Bool)

(declare-fun e!2475920 () Bool)

(assert (=> b!3993875 (=> (not res!1621424) (not e!2475920))))

(declare-fun lt!1409023 () Option!9178)

(assert (=> b!3993875 (= res!1621424 (< (size!31943 (_2!24088 (get!14052 lt!1409023))) (size!31943 lt!1408727)))))

(declare-fun b!3993876 () Bool)

(assert (=> b!3993876 (= e!2475920 (contains!8499 rules!2999 (rule!9786 (_1!24088 (get!14052 lt!1409023)))))))

(declare-fun b!3993877 () Bool)

(declare-fun e!2475919 () Bool)

(assert (=> b!3993877 (= e!2475919 e!2475920)))

(declare-fun res!1621421 () Bool)

(assert (=> b!3993877 (=> (not res!1621421) (not e!2475920))))

(assert (=> b!3993877 (= res!1621421 (isDefined!7046 lt!1409023))))

(declare-fun b!3993878 () Bool)

(declare-fun res!1621422 () Bool)

(assert (=> b!3993878 (=> (not res!1621422) (not e!2475920))))

(assert (=> b!3993878 (= res!1621422 (matchR!5646 (regex!6764 (rule!9786 (_1!24088 (get!14052 lt!1409023)))) (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1409023))))))))

(declare-fun b!3993879 () Bool)

(declare-fun res!1621426 () Bool)

(assert (=> b!3993879 (=> (not res!1621426) (not e!2475920))))

(assert (=> b!3993879 (= res!1621426 (= (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1409023)))) (originalCharacters!7364 (_1!24088 (get!14052 lt!1409023)))))))

(declare-fun call!285884 () Option!9178)

(declare-fun bm!285879 () Bool)

(assert (=> bm!285879 (= call!285884 (maxPrefixOneRule!2685 thiss!21717 (h!48132 rules!2999) lt!1408727))))

(declare-fun b!3993880 () Bool)

(declare-fun e!2475921 () Option!9178)

(assert (=> b!3993880 (= e!2475921 call!285884)))

(declare-fun d!1181925 () Bool)

(assert (=> d!1181925 e!2475919))

(declare-fun res!1621425 () Bool)

(assert (=> d!1181925 (=> res!1621425 e!2475919)))

(assert (=> d!1181925 (= res!1621425 (isEmpty!25529 lt!1409023))))

(assert (=> d!1181925 (= lt!1409023 e!2475921)))

(declare-fun c!691111 () Bool)

(assert (=> d!1181925 (= c!691111 (and ((_ is Cons!42712) rules!2999) ((_ is Nil!42712) (t!331875 rules!2999))))))

(declare-fun lt!1409022 () Unit!61522)

(declare-fun lt!1409024 () Unit!61522)

(assert (=> d!1181925 (= lt!1409022 lt!1409024)))

(assert (=> d!1181925 (isPrefix!3851 lt!1408727 lt!1408727)))

(assert (=> d!1181925 (= lt!1409024 (lemmaIsPrefixRefl!2443 lt!1408727 lt!1408727))))

(assert (=> d!1181925 (rulesValidInductive!2461 thiss!21717 rules!2999)))

(assert (=> d!1181925 (= (maxPrefix!3651 thiss!21717 rules!2999 lt!1408727) lt!1409023)))

(declare-fun b!3993881 () Bool)

(declare-fun res!1621423 () Bool)

(assert (=> b!3993881 (=> (not res!1621423) (not e!2475920))))

(assert (=> b!3993881 (= res!1621423 (= (++!11166 (list!15858 (charsOf!4580 (_1!24088 (get!14052 lt!1409023)))) (_2!24088 (get!14052 lt!1409023))) lt!1408727))))

(declare-fun b!3993882 () Bool)

(declare-fun lt!1409026 () Option!9178)

(declare-fun lt!1409025 () Option!9178)

(assert (=> b!3993882 (= e!2475921 (ite (and ((_ is None!9177) lt!1409026) ((_ is None!9177) lt!1409025)) None!9177 (ite ((_ is None!9177) lt!1409025) lt!1409026 (ite ((_ is None!9177) lt!1409026) lt!1409025 (ite (>= (size!31942 (_1!24088 (v!39533 lt!1409026))) (size!31942 (_1!24088 (v!39533 lt!1409025)))) lt!1409026 lt!1409025)))))))

(assert (=> b!3993882 (= lt!1409026 call!285884)))

(assert (=> b!3993882 (= lt!1409025 (maxPrefix!3651 thiss!21717 (t!331875 rules!2999) lt!1408727))))

(declare-fun b!3993883 () Bool)

(declare-fun res!1621420 () Bool)

(assert (=> b!3993883 (=> (not res!1621420) (not e!2475920))))

(assert (=> b!3993883 (= res!1621420 (= (value!213408 (_1!24088 (get!14052 lt!1409023))) (apply!9975 (transformation!6764 (rule!9786 (_1!24088 (get!14052 lt!1409023)))) (seqFromList!5003 (originalCharacters!7364 (_1!24088 (get!14052 lt!1409023)))))))))

(assert (= (and d!1181925 c!691111) b!3993880))

(assert (= (and d!1181925 (not c!691111)) b!3993882))

(assert (= (or b!3993880 b!3993882) bm!285879))

(assert (= (and d!1181925 (not res!1621425)) b!3993877))

(assert (= (and b!3993877 res!1621421) b!3993879))

(assert (= (and b!3993879 res!1621426) b!3993875))

(assert (= (and b!3993875 res!1621424) b!3993881))

(assert (= (and b!3993881 res!1621423) b!3993883))

(assert (= (and b!3993883 res!1621420) b!3993878))

(assert (= (and b!3993878 res!1621422) b!3993876))

(declare-fun m!4573749 () Bool)

(assert (=> b!3993881 m!4573749))

(declare-fun m!4573751 () Bool)

(assert (=> b!3993881 m!4573751))

(assert (=> b!3993881 m!4573751))

(declare-fun m!4573753 () Bool)

(assert (=> b!3993881 m!4573753))

(assert (=> b!3993881 m!4573753))

(declare-fun m!4573755 () Bool)

(assert (=> b!3993881 m!4573755))

(assert (=> b!3993875 m!4573749))

(declare-fun m!4573757 () Bool)

(assert (=> b!3993875 m!4573757))

(assert (=> b!3993875 m!4573357))

(declare-fun m!4573759 () Bool)

(assert (=> d!1181925 m!4573759))

(declare-fun m!4573761 () Bool)

(assert (=> d!1181925 m!4573761))

(declare-fun m!4573763 () Bool)

(assert (=> d!1181925 m!4573763))

(assert (=> d!1181925 m!4573727))

(assert (=> b!3993878 m!4573749))

(assert (=> b!3993878 m!4573751))

(assert (=> b!3993878 m!4573751))

(assert (=> b!3993878 m!4573753))

(assert (=> b!3993878 m!4573753))

(declare-fun m!4573765 () Bool)

(assert (=> b!3993878 m!4573765))

(declare-fun m!4573767 () Bool)

(assert (=> bm!285879 m!4573767))

(assert (=> b!3993879 m!4573749))

(assert (=> b!3993879 m!4573751))

(assert (=> b!3993879 m!4573751))

(assert (=> b!3993879 m!4573753))

(assert (=> b!3993876 m!4573749))

(declare-fun m!4573769 () Bool)

(assert (=> b!3993876 m!4573769))

(assert (=> b!3993883 m!4573749))

(declare-fun m!4573771 () Bool)

(assert (=> b!3993883 m!4573771))

(assert (=> b!3993883 m!4573771))

(declare-fun m!4573773 () Bool)

(assert (=> b!3993883 m!4573773))

(declare-fun m!4573775 () Bool)

(assert (=> b!3993882 m!4573775))

(declare-fun m!4573777 () Bool)

(assert (=> b!3993877 m!4573777))

(assert (=> b!3993069 d!1181925))

(declare-fun d!1181927 () Bool)

(assert (=> d!1181927 (= suffixResult!105 lt!1408681)))

(declare-fun lt!1409027 () Unit!61522)

(assert (=> d!1181927 (= lt!1409027 (choose!24040 lt!1408675 suffixResult!105 lt!1408675 lt!1408681 lt!1408671))))

(assert (=> d!1181927 (isPrefix!3851 lt!1408675 lt!1408671)))

(assert (=> d!1181927 (= (lemmaSamePrefixThenSameSuffix!2038 lt!1408675 suffixResult!105 lt!1408675 lt!1408681 lt!1408671) lt!1409027)))

(declare-fun bs!588549 () Bool)

(assert (= bs!588549 d!1181927))

(declare-fun m!4573779 () Bool)

(assert (=> bs!588549 m!4573779))

(assert (=> bs!588549 m!4572455))

(assert (=> b!3993069 d!1181927))

(declare-fun b!3993886 () Bool)

(declare-fun e!2475923 () Bool)

(assert (=> b!3993886 (= e!2475923 (isPrefix!3851 (tail!6227 lt!1408675) (tail!6227 lt!1408693)))))

(declare-fun b!3993884 () Bool)

(declare-fun e!2475924 () Bool)

(assert (=> b!3993884 (= e!2475924 e!2475923)))

(declare-fun res!1621430 () Bool)

(assert (=> b!3993884 (=> (not res!1621430) (not e!2475923))))

(assert (=> b!3993884 (= res!1621430 (not ((_ is Nil!42710) lt!1408693)))))

(declare-fun b!3993887 () Bool)

(declare-fun e!2475922 () Bool)

(assert (=> b!3993887 (= e!2475922 (>= (size!31943 lt!1408693) (size!31943 lt!1408675)))))

(declare-fun b!3993885 () Bool)

(declare-fun res!1621427 () Bool)

(assert (=> b!3993885 (=> (not res!1621427) (not e!2475923))))

(assert (=> b!3993885 (= res!1621427 (= (head!8495 lt!1408675) (head!8495 lt!1408693)))))

(declare-fun d!1181929 () Bool)

(assert (=> d!1181929 e!2475922))

(declare-fun res!1621428 () Bool)

(assert (=> d!1181929 (=> res!1621428 e!2475922)))

(declare-fun lt!1409028 () Bool)

(assert (=> d!1181929 (= res!1621428 (not lt!1409028))))

(assert (=> d!1181929 (= lt!1409028 e!2475924)))

(declare-fun res!1621429 () Bool)

(assert (=> d!1181929 (=> res!1621429 e!2475924)))

(assert (=> d!1181929 (= res!1621429 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181929 (= (isPrefix!3851 lt!1408675 lt!1408693) lt!1409028)))

(assert (= (and d!1181929 (not res!1621429)) b!3993884))

(assert (= (and b!3993884 res!1621430) b!3993885))

(assert (= (and b!3993885 res!1621427) b!3993886))

(assert (= (and d!1181929 (not res!1621428)) b!3993887))

(assert (=> b!3993886 m!4572799))

(declare-fun m!4573781 () Bool)

(assert (=> b!3993886 m!4573781))

(assert (=> b!3993886 m!4572799))

(assert (=> b!3993886 m!4573781))

(declare-fun m!4573783 () Bool)

(assert (=> b!3993886 m!4573783))

(declare-fun m!4573785 () Bool)

(assert (=> b!3993887 m!4573785))

(assert (=> b!3993887 m!4572527))

(assert (=> b!3993885 m!4572803))

(declare-fun m!4573787 () Bool)

(assert (=> b!3993885 m!4573787))

(assert (=> b!3993069 d!1181929))

(declare-fun d!1181931 () Bool)

(assert (=> d!1181931 (isPrefix!3851 lt!1408675 (++!11166 lt!1408675 lt!1408681))))

(declare-fun lt!1409029 () Unit!61522)

(assert (=> d!1181931 (= lt!1409029 (choose!24041 lt!1408675 lt!1408681))))

(assert (=> d!1181931 (= (lemmaConcatTwoListThenFirstIsPrefix!2694 lt!1408675 lt!1408681) lt!1409029)))

(declare-fun bs!588550 () Bool)

(assert (= bs!588550 d!1181931))

(assert (=> bs!588550 m!4572489))

(assert (=> bs!588550 m!4572489))

(declare-fun m!4573789 () Bool)

(assert (=> bs!588550 m!4573789))

(declare-fun m!4573791 () Bool)

(assert (=> bs!588550 m!4573791))

(assert (=> b!3993069 d!1181931))

(declare-fun b!3993888 () Bool)

(declare-fun e!2475926 () List!42834)

(assert (=> b!3993888 (= e!2475926 newSuffix!27)))

(declare-fun b!3993890 () Bool)

(declare-fun res!1621432 () Bool)

(declare-fun e!2475925 () Bool)

(assert (=> b!3993890 (=> (not res!1621432) (not e!2475925))))

(declare-fun lt!1409030 () List!42834)

(assert (=> b!3993890 (= res!1621432 (= (size!31943 lt!1409030) (+ (size!31943 prefix!494) (size!31943 newSuffix!27))))))

(declare-fun b!3993891 () Bool)

(assert (=> b!3993891 (= e!2475925 (or (not (= newSuffix!27 Nil!42710)) (= lt!1409030 prefix!494)))))

(declare-fun b!3993889 () Bool)

(assert (=> b!3993889 (= e!2475926 (Cons!42710 (h!48130 prefix!494) (++!11166 (t!331873 prefix!494) newSuffix!27)))))

(declare-fun d!1181933 () Bool)

(assert (=> d!1181933 e!2475925))

(declare-fun res!1621431 () Bool)

(assert (=> d!1181933 (=> (not res!1621431) (not e!2475925))))

(assert (=> d!1181933 (= res!1621431 (= (content!6478 lt!1409030) ((_ map or) (content!6478 prefix!494) (content!6478 newSuffix!27))))))

(assert (=> d!1181933 (= lt!1409030 e!2475926)))

(declare-fun c!691112 () Bool)

(assert (=> d!1181933 (= c!691112 ((_ is Nil!42710) prefix!494))))

(assert (=> d!1181933 (= (++!11166 prefix!494 newSuffix!27) lt!1409030)))

(assert (= (and d!1181933 c!691112) b!3993888))

(assert (= (and d!1181933 (not c!691112)) b!3993889))

(assert (= (and d!1181933 res!1621431) b!3993890))

(assert (= (and b!3993890 res!1621432) b!3993891))

(declare-fun m!4573793 () Bool)

(assert (=> b!3993890 m!4573793))

(assert (=> b!3993890 m!4572529))

(assert (=> b!3993890 m!4572433))

(declare-fun m!4573795 () Bool)

(assert (=> b!3993889 m!4573795))

(declare-fun m!4573797 () Bool)

(assert (=> d!1181933 m!4573797))

(assert (=> d!1181933 m!4573351))

(assert (=> d!1181933 m!4572693))

(assert (=> b!3993091 d!1181933))

(declare-fun b!3993892 () Bool)

(declare-fun e!2475928 () List!42834)

(assert (=> b!3993892 (= e!2475928 newSuffixResult!27)))

(declare-fun b!3993894 () Bool)

(declare-fun res!1621434 () Bool)

(declare-fun e!2475927 () Bool)

(assert (=> b!3993894 (=> (not res!1621434) (not e!2475927))))

(declare-fun lt!1409031 () List!42834)

(assert (=> b!3993894 (= res!1621434 (= (size!31943 lt!1409031) (+ (size!31943 lt!1408675) (size!31943 newSuffixResult!27))))))

(declare-fun b!3993895 () Bool)

(assert (=> b!3993895 (= e!2475927 (or (not (= newSuffixResult!27 Nil!42710)) (= lt!1409031 lt!1408675)))))

(declare-fun b!3993893 () Bool)

(assert (=> b!3993893 (= e!2475928 (Cons!42710 (h!48130 lt!1408675) (++!11166 (t!331873 lt!1408675) newSuffixResult!27)))))

(declare-fun d!1181935 () Bool)

(assert (=> d!1181935 e!2475927))

(declare-fun res!1621433 () Bool)

(assert (=> d!1181935 (=> (not res!1621433) (not e!2475927))))

(assert (=> d!1181935 (= res!1621433 (= (content!6478 lt!1409031) ((_ map or) (content!6478 lt!1408675) (content!6478 newSuffixResult!27))))))

(assert (=> d!1181935 (= lt!1409031 e!2475928)))

(declare-fun c!691113 () Bool)

(assert (=> d!1181935 (= c!691113 ((_ is Nil!42710) lt!1408675))))

(assert (=> d!1181935 (= (++!11166 lt!1408675 newSuffixResult!27) lt!1409031)))

(assert (= (and d!1181935 c!691113) b!3993892))

(assert (= (and d!1181935 (not c!691113)) b!3993893))

(assert (= (and d!1181935 res!1621433) b!3993894))

(assert (= (and b!3993894 res!1621434) b!3993895))

(declare-fun m!4573799 () Bool)

(assert (=> b!3993894 m!4573799))

(assert (=> b!3993894 m!4572527))

(assert (=> b!3993894 m!4573509))

(declare-fun m!4573801 () Bool)

(assert (=> b!3993893 m!4573801))

(declare-fun m!4573803 () Bool)

(assert (=> d!1181935 m!4573803))

(assert (=> d!1181935 m!4572711))

(assert (=> d!1181935 m!4573515))

(assert (=> b!3993091 d!1181935))

(declare-fun b!3993900 () Bool)

(declare-fun e!2475931 () Bool)

(declare-fun tp!1216095 () Bool)

(assert (=> b!3993900 (= e!2475931 (and tp_is_empty!20309 tp!1216095))))

(assert (=> b!3993100 (= tp!1216038 e!2475931)))

(assert (= (and b!3993100 ((_ is Cons!42710) (t!331873 prefix!494))) b!3993900))

(declare-fun b!3993901 () Bool)

(declare-fun e!2475932 () Bool)

(declare-fun tp!1216096 () Bool)

(assert (=> b!3993901 (= e!2475932 (and tp_is_empty!20309 tp!1216096))))

(assert (=> b!3993079 (= tp!1216042 e!2475932)))

(assert (= (and b!3993079 ((_ is Cons!42710) (originalCharacters!7364 token!484))) b!3993901))

(declare-fun b!3993902 () Bool)

(declare-fun e!2475933 () Bool)

(declare-fun tp!1216097 () Bool)

(assert (=> b!3993902 (= e!2475933 (and tp_is_empty!20309 tp!1216097))))

(assert (=> b!3993082 (= tp!1216034 e!2475933)))

(assert (= (and b!3993082 ((_ is Cons!42710) (t!331873 newSuffixResult!27))) b!3993902))

(declare-fun b!3993903 () Bool)

(declare-fun e!2475934 () Bool)

(declare-fun tp!1216098 () Bool)

(assert (=> b!3993903 (= e!2475934 (and tp_is_empty!20309 tp!1216098))))

(assert (=> b!3993061 (= tp!1216044 e!2475934)))

(assert (= (and b!3993061 ((_ is Cons!42710) (t!331873 suffix!1299))) b!3993903))

(declare-fun b!3993916 () Bool)

(declare-fun e!2475937 () Bool)

(declare-fun tp!1216112 () Bool)

(assert (=> b!3993916 (= e!2475937 tp!1216112)))

(assert (=> b!3993088 (= tp!1216032 e!2475937)))

(declare-fun b!3993915 () Bool)

(declare-fun tp!1216109 () Bool)

(declare-fun tp!1216111 () Bool)

(assert (=> b!3993915 (= e!2475937 (and tp!1216109 tp!1216111))))

(declare-fun b!3993914 () Bool)

(assert (=> b!3993914 (= e!2475937 tp_is_empty!20309)))

(declare-fun b!3993917 () Bool)

(declare-fun tp!1216113 () Bool)

(declare-fun tp!1216110 () Bool)

(assert (=> b!3993917 (= e!2475937 (and tp!1216113 tp!1216110))))

(assert (= (and b!3993088 ((_ is ElementMatch!11669) (regex!6764 (rule!9786 token!484)))) b!3993914))

(assert (= (and b!3993088 ((_ is Concat!18664) (regex!6764 (rule!9786 token!484)))) b!3993915))

(assert (= (and b!3993088 ((_ is Star!11669) (regex!6764 (rule!9786 token!484)))) b!3993916))

(assert (= (and b!3993088 ((_ is Union!11669) (regex!6764 (rule!9786 token!484)))) b!3993917))

(declare-fun b!3993918 () Bool)

(declare-fun e!2475938 () Bool)

(declare-fun tp!1216114 () Bool)

(assert (=> b!3993918 (= e!2475938 (and tp_is_empty!20309 tp!1216114))))

(assert (=> b!3993102 (= tp!1216043 e!2475938)))

(assert (= (and b!3993102 ((_ is Cons!42710) (t!331873 suffixResult!105))) b!3993918))

(declare-fun b!3993929 () Bool)

(declare-fun b_free!110933 () Bool)

(declare-fun b_next!111637 () Bool)

(assert (=> b!3993929 (= b_free!110933 (not b_next!111637))))

(declare-fun t!331917 () Bool)

(declare-fun tb!240341 () Bool)

(assert (=> (and b!3993929 (= (toValue!9252 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toValue!9252 (transformation!6764 (rule!9786 token!484)))) t!331917) tb!240341))

(declare-fun result!291242 () Bool)

(assert (= result!291242 result!291204))

(assert (=> d!1181775 t!331917))

(declare-fun tb!240343 () Bool)

(declare-fun t!331919 () Bool)

(assert (=> (and b!3993929 (= (toValue!9252 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toValue!9252 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))) t!331919) tb!240343))

(declare-fun result!291244 () Bool)

(assert (= result!291244 result!291232))

(assert (=> d!1181833 t!331919))

(declare-fun b_and!306803 () Bool)

(declare-fun tp!1216126 () Bool)

(assert (=> b!3993929 (= tp!1216126 (and (=> t!331917 result!291242) (=> t!331919 result!291244) b_and!306803))))

(declare-fun b_free!110935 () Bool)

(declare-fun b_next!111639 () Bool)

(assert (=> b!3993929 (= b_free!110935 (not b_next!111639))))

(declare-fun t!331921 () Bool)

(declare-fun tb!240345 () Bool)

(assert (=> (and b!3993929 (= (toChars!9111 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toChars!9111 (transformation!6764 (rule!9786 token!484)))) t!331921) tb!240345))

(declare-fun result!291246 () Bool)

(assert (= result!291246 result!291222))

(assert (=> d!1181791 t!331921))

(declare-fun t!331923 () Bool)

(declare-fun tb!240347 () Bool)

(assert (=> (and b!3993929 (= (toChars!9111 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toChars!9111 (transformation!6764 (rule!9786 (_1!24088 (v!39533 lt!1408668)))))) t!331923) tb!240347))

(declare-fun result!291248 () Bool)

(assert (= result!291248 result!291228))

(assert (=> d!1181801 t!331923))

(assert (=> b!3993751 t!331921))

(declare-fun tp!1216123 () Bool)

(declare-fun b_and!306805 () Bool)

(assert (=> b!3993929 (= tp!1216123 (and (=> t!331921 result!291246) (=> t!331923 result!291248) b_and!306805))))

(declare-fun e!2475950 () Bool)

(assert (=> b!3993929 (= e!2475950 (and tp!1216126 tp!1216123))))

(declare-fun tp!1216124 () Bool)

(declare-fun e!2475949 () Bool)

(declare-fun b!3993928 () Bool)

(assert (=> b!3993928 (= e!2475949 (and tp!1216124 (inv!57042 (tag!7624 (h!48132 (t!331875 rules!2999)))) (inv!57046 (transformation!6764 (h!48132 (t!331875 rules!2999)))) e!2475950))))

(declare-fun b!3993927 () Bool)

(declare-fun e!2475948 () Bool)

(declare-fun tp!1216125 () Bool)

(assert (=> b!3993927 (= e!2475948 (and e!2475949 tp!1216125))))

(assert (=> b!3993092 (= tp!1216041 e!2475948)))

(assert (= b!3993928 b!3993929))

(assert (= b!3993927 b!3993928))

(assert (= (and b!3993092 ((_ is Cons!42712) (t!331875 rules!2999))) b!3993927))

(declare-fun m!4573805 () Bool)

(assert (=> b!3993928 m!4573805))

(declare-fun m!4573807 () Bool)

(assert (=> b!3993928 m!4573807))

(declare-fun b!3993930 () Bool)

(declare-fun e!2475951 () Bool)

(declare-fun tp!1216127 () Bool)

(assert (=> b!3993930 (= e!2475951 (and tp_is_empty!20309 tp!1216127))))

(assert (=> b!3993101 (= tp!1216039 e!2475951)))

(assert (= (and b!3993101 ((_ is Cons!42710) (t!331873 newSuffix!27))) b!3993930))

(declare-fun b!3993933 () Bool)

(declare-fun e!2475952 () Bool)

(declare-fun tp!1216131 () Bool)

(assert (=> b!3993933 (= e!2475952 tp!1216131)))

(assert (=> b!3993096 (= tp!1216035 e!2475952)))

(declare-fun b!3993932 () Bool)

(declare-fun tp!1216128 () Bool)

(declare-fun tp!1216130 () Bool)

(assert (=> b!3993932 (= e!2475952 (and tp!1216128 tp!1216130))))

(declare-fun b!3993931 () Bool)

(assert (=> b!3993931 (= e!2475952 tp_is_empty!20309)))

(declare-fun b!3993934 () Bool)

(declare-fun tp!1216132 () Bool)

(declare-fun tp!1216129 () Bool)

(assert (=> b!3993934 (= e!2475952 (and tp!1216132 tp!1216129))))

(assert (= (and b!3993096 ((_ is ElementMatch!11669) (regex!6764 (h!48132 rules!2999)))) b!3993931))

(assert (= (and b!3993096 ((_ is Concat!18664) (regex!6764 (h!48132 rules!2999)))) b!3993932))

(assert (= (and b!3993096 ((_ is Star!11669) (regex!6764 (h!48132 rules!2999)))) b!3993933))

(assert (= (and b!3993096 ((_ is Union!11669) (regex!6764 (h!48132 rules!2999)))) b!3993934))

(declare-fun b_lambda!116585 () Bool)

(assert (= b_lambda!116569 (or (and b!3993075 b_free!110921) (and b!3993085 b_free!110925 (= (toValue!9252 (transformation!6764 (h!48132 rules!2999))) (toValue!9252 (transformation!6764 (rule!9786 token!484))))) (and b!3993929 b_free!110933 (= (toValue!9252 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toValue!9252 (transformation!6764 (rule!9786 token!484))))) b_lambda!116585)))

(declare-fun b_lambda!116587 () Bool)

(assert (= b_lambda!116577 (or (and b!3993075 b_free!110923) (and b!3993085 b_free!110927 (= (toChars!9111 (transformation!6764 (h!48132 rules!2999))) (toChars!9111 (transformation!6764 (rule!9786 token!484))))) (and b!3993929 b_free!110935 (= (toChars!9111 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toChars!9111 (transformation!6764 (rule!9786 token!484))))) b_lambda!116587)))

(declare-fun b_lambda!116589 () Bool)

(assert (= b_lambda!116583 (or (and b!3993075 b_free!110923) (and b!3993085 b_free!110927 (= (toChars!9111 (transformation!6764 (h!48132 rules!2999))) (toChars!9111 (transformation!6764 (rule!9786 token!484))))) (and b!3993929 b_free!110935 (= (toChars!9111 (transformation!6764 (h!48132 (t!331875 rules!2999)))) (toChars!9111 (transformation!6764 (rule!9786 token!484))))) b_lambda!116589)))

(check-sat (not b!3993661) (not bm!285878) (not d!1181793) (not b!3993523) (not d!1181781) tp_is_empty!20309 (not b!3993654) (not d!1181819) (not b!3993934) (not b!3993168) (not b!3993802) (not b!3993160) (not b!3993886) (not b!3993876) (not b_next!111637) (not d!1181805) (not b!3993636) (not d!1181817) (not d!1181889) (not b!3993742) (not b!3993751) (not b!3993724) (not b!3993836) b_and!306801 (not b!3993928) (not d!1181581) (not b!3993286) (not b!3993890) (not b!3993792) (not d!1181579) (not b!3993833) (not b!3993666) (not b!3993866) (not d!1181783) (not b!3993883) (not d!1181935) (not b!3993670) (not d!1181605) (not b!3993797) (not b!3993657) (not b!3993648) (not b!3993641) (not b!3993653) (not d!1181827) (not b!3993209) (not b!3993595) (not b_next!111631) (not b!3993740) (not b!3993842) (not b!3993760) (not d!1181909) (not b!3993235) (not b!3993645) (not d!1181931) (not b!3993746) (not b!3993736) (not b!3993887) (not b!3993681) (not b!3993524) (not b!3993691) (not d!1181839) (not d!1181589) (not d!1181623) (not b!3993236) (not d!1181795) (not b!3993288) (not b!3993817) (not b!3993752) (not b!3993903) (not b!3993787) (not d!1181815) (not b!3993198) (not d!1181879) (not b!3993725) (not b!3993153) (not b!3993744) (not b!3993779) (not b!3993869) (not d!1181869) (not b!3993753) (not b!3993864) (not b!3993795) (not b!3993660) (not b!3993781) (not b!3993872) (not b!3993863) (not d!1181849) (not b!3993918) (not b!3993801) (not b_lambda!116585) (not d!1181927) (not d!1181799) (not d!1181913) (not b!3993668) (not b!3993820) b_and!306797 (not b!3993737) (not bm!285875) (not b!3993843) (not b!3993812) (not b!3993832) (not b!3993783) (not b!3993902) (not b!3993889) (not b!3993868) (not b!3993632) (not d!1181803) (not b!3993882) b_and!306799 (not b!3993628) (not b!3993618) (not d!1181821) (not d!1181563) (not b!3993525) (not b!3993835) (not b!3993164) (not b!3993831) (not b!3993154) (not b_next!111639) (not b!3993638) (not b!3993650) (not d!1181855) (not d!1181923) (not b!3993601) (not b!3993927) (not d!1181587) (not d!1181853) (not tb!240333) (not d!1181921) (not b!3993644) (not b!3993287) (not d!1181797) (not b!3993522) (not b_lambda!116589) (not b!3993932) (not d!1181835) (not b!3993761) (not d!1181613) (not b!3993729) (not b!3993741) (not b!3993885) (not b!3993602) (not b!3993163) (not d!1181893) (not b!3993520) (not tb!240329) (not b!3993521) (not b!3993815) (not b_next!111629) (not b!3993873) (not b!3993827) (not b_lambda!116587) (not d!1181863) (not b!3993893) (not b!3993789) (not b!3993879) (not d!1181789) (not b!3993745) (not b_lambda!116581) (not d!1181847) (not b!3993197) (not b!3993808) (not b!3993731) (not d!1181801) (not d!1181583) (not b!3993651) (not tb!240317) (not d!1181867) (not d!1181591) (not b!3993594) (not b!3993841) (not b!3993647) (not b!3993822) (not b!3993663) (not d!1181925) (not b!3993878) (not d!1181825) (not b!3993635) (not d!1181843) (not b!3993838) (not b!3993825) b_and!306795 (not b!3993646) (not b!3993756) (not b!3993791) (not d!1181577) (not b!3993627) (not d!1181933) (not b!3993870) (not b!3993875) (not b!3993195) (not d!1181779) (not b_next!111625) (not d!1181811) (not b!3993877) (not bm!285874) (not d!1181791) (not b!3993900) (not b!3993649) (not b!3993894) (not b!3993778) (not b!3993865) (not b!3993237) (not b!3993881) (not b!3993793) (not b!3993785) (not b!3993933) (not d!1181857) (not b!3993788) (not d!1181829) (not b!3993763) (not d!1181915) (not b!3993915) (not b!3993656) (not bm!285879) (not d!1181903) b_and!306803 (not b!3993640) (not b!3993829) (not b!3993862) (not d!1181809) (not b!3993806) (not b!3993805) (not b!3993784) (not b!3993901) (not d!1181761) (not b!3993930) (not b!3993625) (not b!3993798) (not d!1181823) (not d!1181845) (not b!3993814) (not b!3993667) (not b!3993917) (not b!3993728) (not d!1181777) (not b!3993738) (not d!1181905) (not b!3993796) (not bm!285873) (not d!1181607) (not d!1181887) (not d!1181575) (not b!3993757) (not d!1181885) (not b_lambda!116579) (not b!3993916) (not d!1181865) (not d!1181895) b_and!306805 (not d!1181841) (not b!3993828) (not b!3993526) (not b!3993173) (not b!3993631) (not b_next!111627) (not d!1181897) (not d!1181919) (not b!3993519) (not tb!240337) (not b!3993688) (not b!3993620) (not b!3993658) (not b!3993721))
(check-sat (not b_next!111637) b_and!306801 (not b_next!111631) b_and!306797 (not b_next!111629) b_and!306795 (not b_next!111625) b_and!306803 b_and!306799 (not b_next!111639) b_and!306805 (not b_next!111627))
