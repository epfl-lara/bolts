; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383420 () Bool)

(assert start!383420)

(declare-fun b!4064537 () Bool)

(declare-fun b_free!113049 () Bool)

(declare-fun b_next!113753 () Bool)

(assert (=> b!4064537 (= b_free!113049 (not b_next!113753))))

(declare-fun tp!1230644 () Bool)

(declare-fun b_and!312451 () Bool)

(assert (=> b!4064537 (= tp!1230644 b_and!312451)))

(declare-fun b_free!113051 () Bool)

(declare-fun b_next!113755 () Bool)

(assert (=> b!4064537 (= b_free!113051 (not b_next!113755))))

(declare-fun tp!1230637 () Bool)

(declare-fun b_and!312453 () Bool)

(assert (=> b!4064537 (= tp!1230637 b_and!312453)))

(declare-fun b!4064548 () Bool)

(declare-fun b_free!113053 () Bool)

(declare-fun b_next!113757 () Bool)

(assert (=> b!4064548 (= b_free!113053 (not b_next!113757))))

(declare-fun tp!1230648 () Bool)

(declare-fun b_and!312455 () Bool)

(assert (=> b!4064548 (= tp!1230648 b_and!312455)))

(declare-fun b_free!113055 () Bool)

(declare-fun b_next!113759 () Bool)

(assert (=> b!4064548 (= b_free!113055 (not b_next!113759))))

(declare-fun tp!1230643 () Bool)

(declare-fun b_and!312457 () Bool)

(assert (=> b!4064548 (= tp!1230643 b_and!312457)))

(declare-fun b!4064520 () Bool)

(declare-fun e!2522269 () Bool)

(assert (=> b!4064520 (= e!2522269 false)))

(declare-fun b!4064521 () Bool)

(declare-fun res!1658496 () Bool)

(declare-fun e!2522249 () Bool)

(assert (=> b!4064521 (=> (not res!1658496) (not e!2522249))))

(declare-datatypes ((C!23936 0))(
  ( (C!23937 (val!14062 Int)) )
))
(declare-datatypes ((List!43535 0))(
  ( (Nil!43411) (Cons!43411 (h!48831 C!23936) (t!336790 List!43535)) )
))
(declare-datatypes ((IArray!26367 0))(
  ( (IArray!26368 (innerList!13241 List!43535)) )
))
(declare-datatypes ((Conc!13181 0))(
  ( (Node!13181 (left!32660 Conc!13181) (right!32990 Conc!13181) (csize!26592 Int) (cheight!13392 Int)) (Leaf!20373 (xs!16487 IArray!26367) (csize!26593 Int)) (Empty!13181) )
))
(declare-datatypes ((BalanceConc!25956 0))(
  ( (BalanceConc!25957 (c!701888 Conc!13181)) )
))
(declare-datatypes ((List!43536 0))(
  ( (Nil!43412) (Cons!43412 (h!48832 (_ BitVec 16)) (t!336791 List!43536)) )
))
(declare-datatypes ((TokenValue!7200 0))(
  ( (FloatLiteralValue!14400 (text!50845 List!43536)) (TokenValueExt!7199 (__x!26617 Int)) (Broken!36000 (value!219253 List!43536)) (Object!7323) (End!7200) (Def!7200) (Underscore!7200) (Match!7200) (Else!7200) (Error!7200) (Case!7200) (If!7200) (Extends!7200) (Abstract!7200) (Class!7200) (Val!7200) (DelimiterValue!14400 (del!7260 List!43536)) (KeywordValue!7206 (value!219254 List!43536)) (CommentValue!14400 (value!219255 List!43536)) (WhitespaceValue!14400 (value!219256 List!43536)) (IndentationValue!7200 (value!219257 List!43536)) (String!49717) (Int32!7200) (Broken!36001 (value!219258 List!43536)) (Boolean!7201) (Unit!62888) (OperatorValue!7203 (op!7260 List!43536)) (IdentifierValue!14400 (value!219259 List!43536)) (IdentifierValue!14401 (value!219260 List!43536)) (WhitespaceValue!14401 (value!219261 List!43536)) (True!14400) (False!14400) (Broken!36002 (value!219262 List!43536)) (Broken!36003 (value!219263 List!43536)) (True!14401) (RightBrace!7200) (RightBracket!7200) (Colon!7200) (Null!7200) (Comma!7200) (LeftBracket!7200) (False!14401) (LeftBrace!7200) (ImaginaryLiteralValue!7200 (text!50846 List!43536)) (StringLiteralValue!21600 (value!219264 List!43536)) (EOFValue!7200 (value!219265 List!43536)) (IdentValue!7200 (value!219266 List!43536)) (DelimiterValue!14401 (value!219267 List!43536)) (DedentValue!7200 (value!219268 List!43536)) (NewLineValue!7200 (value!219269 List!43536)) (IntegerValue!21600 (value!219270 (_ BitVec 32)) (text!50847 List!43536)) (IntegerValue!21601 (value!219271 Int) (text!50848 List!43536)) (Times!7200) (Or!7200) (Equal!7200) (Minus!7200) (Broken!36004 (value!219272 List!43536)) (And!7200) (Div!7200) (LessEqual!7200) (Mod!7200) (Concat!19075) (Not!7200) (Plus!7200) (SpaceValue!7200 (value!219273 List!43536)) (IntegerValue!21602 (value!219274 Int) (text!50849 List!43536)) (StringLiteralValue!21601 (text!50850 List!43536)) (FloatLiteralValue!14401 (text!50851 List!43536)) (BytesLiteralValue!7200 (value!219275 List!43536)) (CommentValue!14401 (value!219276 List!43536)) (StringLiteralValue!21602 (value!219277 List!43536)) (ErrorTokenValue!7200 (msg!7261 List!43536)) )
))
(declare-datatypes ((Regex!11875 0))(
  ( (ElementMatch!11875 (c!701889 C!23936)) (Concat!19076 (regOne!24262 Regex!11875) (regTwo!24262 Regex!11875)) (EmptyExpr!11875) (Star!11875 (reg!12204 Regex!11875)) (EmptyLang!11875) (Union!11875 (regOne!24263 Regex!11875) (regTwo!24263 Regex!11875)) )
))
(declare-datatypes ((String!49718 0))(
  ( (String!49719 (value!219278 String)) )
))
(declare-datatypes ((TokenValueInjection!13828 0))(
  ( (TokenValueInjection!13829 (toValue!9530 Int) (toChars!9389 Int)) )
))
(declare-datatypes ((Rule!13740 0))(
  ( (Rule!13741 (regex!6970 Regex!11875) (tag!7830 String!49718) (isSeparator!6970 Bool) (transformation!6970 TokenValueInjection!13828)) )
))
(declare-datatypes ((List!43537 0))(
  ( (Nil!43413) (Cons!43413 (h!48833 Rule!13740) (t!336792 List!43537)) )
))
(declare-fun rules!2999 () List!43537)

(declare-fun isEmpty!25908 (List!43537) Bool)

(assert (=> b!4064521 (= res!1658496 (not (isEmpty!25908 rules!2999)))))

(declare-fun b!4064522 () Bool)

(declare-datatypes ((Unit!62889 0))(
  ( (Unit!62890) )
))
(declare-fun e!2522243 () Unit!62889)

(declare-fun Unit!62891 () Unit!62889)

(assert (=> b!4064522 (= e!2522243 Unit!62891)))

(declare-fun b!4064523 () Bool)

(declare-fun res!1658480 () Bool)

(assert (=> b!4064523 (=> (not res!1658480) (not e!2522249))))

(declare-fun suffix!1299 () List!43535)

(declare-fun newSuffix!27 () List!43535)

(declare-fun size!32457 (List!43535) Int)

(assert (=> b!4064523 (= res!1658480 (>= (size!32457 suffix!1299) (size!32457 newSuffix!27)))))

(declare-fun b!4064524 () Bool)

(declare-fun res!1658507 () Bool)

(declare-fun e!2522278 () Bool)

(assert (=> b!4064524 (=> res!1658507 e!2522278)))

(declare-fun lt!1453099 () List!43535)

(declare-fun isEmpty!25909 (List!43535) Bool)

(assert (=> b!4064524 (= res!1658507 (isEmpty!25909 lt!1453099))))

(declare-fun b!4064525 () Bool)

(declare-fun e!2522273 () Bool)

(declare-fun tp_is_empty!20721 () Bool)

(declare-fun tp!1230639 () Bool)

(assert (=> b!4064525 (= e!2522273 (and tp_is_empty!20721 tp!1230639))))

(declare-fun b!4064526 () Bool)

(declare-fun e!2522260 () Bool)

(assert (=> b!4064526 (= e!2522260 e!2522278)))

(declare-fun res!1658490 () Bool)

(assert (=> b!4064526 (=> res!1658490 e!2522278)))

(declare-fun lt!1453062 () Int)

(declare-fun lt!1453042 () Int)

(assert (=> b!4064526 (= res!1658490 (<= lt!1453062 lt!1453042))))

(declare-fun lt!1453044 () Unit!62889)

(assert (=> b!4064526 (= lt!1453044 e!2522243)))

(declare-fun c!701887 () Bool)

(assert (=> b!4064526 (= c!701887 (< lt!1453062 lt!1453042))))

(declare-datatypes ((Token!13078 0))(
  ( (Token!13079 (value!219279 TokenValue!7200) (rule!10068 Rule!13740) (size!32458 Int) (originalCharacters!7570 List!43535)) )
))
(declare-fun token!484 () Token!13078)

(declare-fun getIndex!582 (List!43537 Rule!13740) Int)

(assert (=> b!4064526 (= lt!1453042 (getIndex!582 rules!2999 (rule!10068 token!484)))))

(declare-datatypes ((tuple2!42470 0))(
  ( (tuple2!42471 (_1!24369 Token!13078) (_2!24369 List!43535)) )
))
(declare-datatypes ((Option!9384 0))(
  ( (None!9383) (Some!9383 (v!39809 tuple2!42470)) )
))
(declare-fun lt!1453074 () Option!9384)

(assert (=> b!4064526 (= lt!1453062 (getIndex!582 rules!2999 (rule!10068 (_1!24369 (v!39809 lt!1453074)))))))

(declare-fun newSuffixResult!27 () List!43535)

(assert (=> b!4064526 (= (_2!24369 (v!39809 lt!1453074)) newSuffixResult!27)))

(declare-fun lt!1453101 () Unit!62889)

(declare-fun lt!1453059 () List!43535)

(declare-fun lt!1453058 () List!43535)

(declare-fun lemmaSamePrefixThenSameSuffix!2218 (List!43535 List!43535 List!43535 List!43535 List!43535) Unit!62889)

(assert (=> b!4064526 (= lt!1453101 (lemmaSamePrefixThenSameSuffix!2218 lt!1453099 (_2!24369 (v!39809 lt!1453074)) lt!1453059 newSuffixResult!27 lt!1453058))))

(assert (=> b!4064526 (= lt!1453099 lt!1453059)))

(declare-fun lt!1453082 () Unit!62889)

(declare-fun lemmaIsPrefixSameLengthThenSameList!947 (List!43535 List!43535 List!43535) Unit!62889)

(assert (=> b!4064526 (= lt!1453082 (lemmaIsPrefixSameLengthThenSameList!947 lt!1453099 lt!1453059 lt!1453058))))

(declare-fun b!4064527 () Bool)

(declare-fun e!2522254 () Bool)

(declare-fun e!2522253 () Bool)

(assert (=> b!4064527 (= e!2522254 (not e!2522253))))

(declare-fun res!1658511 () Bool)

(assert (=> b!4064527 (=> res!1658511 e!2522253)))

(declare-fun lt!1453037 () List!43535)

(declare-fun lt!1453052 () List!43535)

(assert (=> b!4064527 (= res!1658511 (not (= lt!1453037 lt!1453052)))))

(declare-fun suffixResult!105 () List!43535)

(declare-fun ++!11372 (List!43535 List!43535) List!43535)

(assert (=> b!4064527 (= lt!1453037 (++!11372 lt!1453059 suffixResult!105))))

(declare-fun lt!1453070 () Unit!62889)

(declare-fun lemmaInv!1179 (TokenValueInjection!13828) Unit!62889)

(assert (=> b!4064527 (= lt!1453070 (lemmaInv!1179 (transformation!6970 (rule!10068 token!484))))))

(declare-datatypes ((LexerInterface!6559 0))(
  ( (LexerInterfaceExt!6556 (__x!26618 Int)) (Lexer!6557) )
))
(declare-fun thiss!21717 () LexerInterface!6559)

(declare-fun ruleValid!2900 (LexerInterface!6559 Rule!13740) Bool)

(assert (=> b!4064527 (ruleValid!2900 thiss!21717 (rule!10068 token!484))))

(declare-fun lt!1453038 () Unit!62889)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1970 (LexerInterface!6559 Rule!13740 List!43537) Unit!62889)

(assert (=> b!4064527 (= lt!1453038 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1970 thiss!21717 (rule!10068 token!484) rules!2999))))

(declare-fun b!4064528 () Bool)

(declare-fun res!1658504 () Bool)

(assert (=> b!4064528 (=> res!1658504 e!2522278)))

(declare-fun matchR!5828 (Regex!11875 List!43535) Bool)

(assert (=> b!4064528 (= res!1658504 (not (matchR!5828 (regex!6970 (rule!10068 (_1!24369 (v!39809 lt!1453074)))) lt!1453099)))))

(declare-fun b!4064529 () Bool)

(declare-fun e!2522271 () Bool)

(assert (=> b!4064529 (= e!2522253 e!2522271)))

(declare-fun res!1658484 () Bool)

(assert (=> b!4064529 (=> res!1658484 e!2522271)))

(declare-fun isPrefix!4057 (List!43535 List!43535) Bool)

(assert (=> b!4064529 (= res!1658484 (not (isPrefix!4057 lt!1453059 lt!1453052)))))

(declare-fun prefix!494 () List!43535)

(assert (=> b!4064529 (isPrefix!4057 prefix!494 lt!1453052)))

(declare-fun lt!1453057 () Unit!62889)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2892 (List!43535 List!43535) Unit!62889)

(assert (=> b!4064529 (= lt!1453057 (lemmaConcatTwoListThenFirstIsPrefix!2892 prefix!494 suffix!1299))))

(assert (=> b!4064529 (isPrefix!4057 lt!1453059 lt!1453037)))

(declare-fun lt!1453077 () Unit!62889)

(assert (=> b!4064529 (= lt!1453077 (lemmaConcatTwoListThenFirstIsPrefix!2892 lt!1453059 suffixResult!105))))

(declare-fun res!1658495 () Bool)

(assert (=> start!383420 (=> (not res!1658495) (not e!2522249))))

(get-info :version)

(assert (=> start!383420 (= res!1658495 ((_ is Lexer!6557) thiss!21717))))

(assert (=> start!383420 e!2522249))

(declare-fun e!2522261 () Bool)

(assert (=> start!383420 e!2522261))

(declare-fun e!2522259 () Bool)

(declare-fun inv!58037 (Token!13078) Bool)

(assert (=> start!383420 (and (inv!58037 token!484) e!2522259)))

(declare-fun e!2522245 () Bool)

(assert (=> start!383420 e!2522245))

(declare-fun e!2522277 () Bool)

(assert (=> start!383420 e!2522277))

(assert (=> start!383420 e!2522273))

(assert (=> start!383420 true))

(declare-fun e!2522255 () Bool)

(assert (=> start!383420 e!2522255))

(declare-fun e!2522252 () Bool)

(assert (=> start!383420 e!2522252))

(declare-fun b!4064530 () Bool)

(declare-fun e!2522240 () Bool)

(assert (=> b!4064530 (= e!2522240 false)))

(declare-fun b!4064531 () Bool)

(declare-fun res!1658489 () Bool)

(assert (=> b!4064531 (=> (not res!1658489) (not e!2522249))))

(assert (=> b!4064531 (= res!1658489 (isPrefix!4057 newSuffix!27 suffix!1299))))

(declare-fun b!4064532 () Bool)

(declare-fun e!2522248 () Unit!62889)

(declare-fun Unit!62892 () Unit!62889)

(assert (=> b!4064532 (= e!2522248 Unit!62892)))

(declare-fun b!4064533 () Bool)

(declare-fun tp!1230641 () Bool)

(assert (=> b!4064533 (= e!2522245 (and tp_is_empty!20721 tp!1230641))))

(declare-fun b!4064534 () Bool)

(declare-fun res!1658486 () Bool)

(assert (=> b!4064534 (=> res!1658486 e!2522260)))

(assert (=> b!4064534 (= res!1658486 (not (isPrefix!4057 lt!1453099 lt!1453058)))))

(declare-fun b!4064535 () Bool)

(declare-fun tp!1230646 () Bool)

(assert (=> b!4064535 (= e!2522261 (and tp_is_empty!20721 tp!1230646))))

(declare-fun b!4064536 () Bool)

(declare-fun e!2522257 () Bool)

(declare-fun e!2522270 () Bool)

(assert (=> b!4064536 (= e!2522257 e!2522270)))

(declare-fun res!1658498 () Bool)

(assert (=> b!4064536 (=> res!1658498 e!2522270)))

(declare-fun lt!1453068 () List!43535)

(assert (=> b!4064536 (= res!1658498 (not (= lt!1453068 lt!1453052)))))

(declare-fun lt!1453061 () List!43535)

(assert (=> b!4064536 (= lt!1453068 (++!11372 prefix!494 lt!1453061))))

(declare-fun lt!1453097 () List!43535)

(assert (=> b!4064536 (= lt!1453068 (++!11372 lt!1453058 lt!1453097))))

(declare-fun lt!1453095 () Unit!62889)

(declare-fun lemmaConcatAssociativity!2674 (List!43535 List!43535 List!43535) Unit!62889)

(assert (=> b!4064536 (= lt!1453095 (lemmaConcatAssociativity!2674 prefix!494 newSuffix!27 lt!1453097))))

(declare-fun e!2522256 () Bool)

(assert (=> b!4064537 (= e!2522256 (and tp!1230644 tp!1230637))))

(declare-fun e!2522242 () Bool)

(declare-fun b!4064538 () Bool)

(declare-fun tp!1230642 () Bool)

(declare-fun e!2522263 () Bool)

(declare-fun inv!58034 (String!49718) Bool)

(declare-fun inv!58038 (TokenValueInjection!13828) Bool)

(assert (=> b!4064538 (= e!2522263 (and tp!1230642 (inv!58034 (tag!7830 (rule!10068 token!484))) (inv!58038 (transformation!6970 (rule!10068 token!484))) e!2522242))))

(declare-fun b!4064539 () Bool)

(declare-fun e!2522264 () Bool)

(declare-fun e!2522265 () Bool)

(assert (=> b!4064539 (= e!2522264 e!2522265)))

(declare-fun res!1658501 () Bool)

(assert (=> b!4064539 (=> res!1658501 e!2522265)))

(declare-fun lt!1453071 () List!43535)

(declare-fun lt!1453075 () List!43535)

(assert (=> b!4064539 (= res!1658501 (or (not (= lt!1453052 lt!1453075)) (not (= lt!1453052 lt!1453071))))))

(assert (=> b!4064539 (= lt!1453075 lt!1453071)))

(declare-fun lt!1453039 () List!43535)

(assert (=> b!4064539 (= lt!1453071 (++!11372 lt!1453059 lt!1453039))))

(declare-fun lt!1453093 () List!43535)

(assert (=> b!4064539 (= lt!1453075 (++!11372 lt!1453093 suffix!1299))))

(declare-fun lt!1453054 () List!43535)

(assert (=> b!4064539 (= lt!1453039 (++!11372 lt!1453054 suffix!1299))))

(declare-fun lt!1453047 () Unit!62889)

(assert (=> b!4064539 (= lt!1453047 (lemmaConcatAssociativity!2674 lt!1453059 lt!1453054 suffix!1299))))

(declare-fun b!4064540 () Bool)

(declare-fun res!1658505 () Bool)

(assert (=> b!4064540 (=> (not res!1658505) (not e!2522249))))

(declare-fun rulesInvariant!5902 (LexerInterface!6559 List!43537) Bool)

(assert (=> b!4064540 (= res!1658505 (rulesInvariant!5902 thiss!21717 rules!2999))))

(declare-fun b!4064541 () Bool)

(declare-fun e!2522241 () Bool)

(declare-fun e!2522266 () Bool)

(assert (=> b!4064541 (= e!2522241 e!2522266)))

(declare-fun res!1658509 () Bool)

(assert (=> b!4064541 (=> res!1658509 e!2522266)))

(declare-fun lt!1453064 () Option!9384)

(assert (=> b!4064541 (= res!1658509 (not (= lt!1453064 (Some!9383 (v!39809 lt!1453074)))))))

(assert (=> b!4064541 (isPrefix!4057 lt!1453099 (++!11372 lt!1453099 newSuffixResult!27))))

(declare-fun lt!1453073 () Unit!62889)

(assert (=> b!4064541 (= lt!1453073 (lemmaConcatTwoListThenFirstIsPrefix!2892 lt!1453099 newSuffixResult!27))))

(declare-fun lt!1453056 () List!43535)

(assert (=> b!4064541 (isPrefix!4057 lt!1453099 lt!1453056)))

(assert (=> b!4064541 (= lt!1453056 (++!11372 lt!1453099 (_2!24369 (v!39809 lt!1453074))))))

(declare-fun lt!1453050 () Unit!62889)

(assert (=> b!4064541 (= lt!1453050 (lemmaConcatTwoListThenFirstIsPrefix!2892 lt!1453099 (_2!24369 (v!39809 lt!1453074))))))

(declare-fun lt!1453098 () Token!13078)

(assert (=> b!4064541 (= lt!1453064 (Some!9383 (tuple2!42471 lt!1453098 (_2!24369 (v!39809 lt!1453074)))))))

(declare-fun maxPrefixOneRule!2869 (LexerInterface!6559 Rule!13740 List!43535) Option!9384)

(assert (=> b!4064541 (= lt!1453064 (maxPrefixOneRule!2869 thiss!21717 (rule!10068 (_1!24369 (v!39809 lt!1453074))) lt!1453058))))

(declare-fun lt!1453096 () Int)

(declare-fun lt!1453100 () TokenValue!7200)

(assert (=> b!4064541 (= lt!1453098 (Token!13079 lt!1453100 (rule!10068 (_1!24369 (v!39809 lt!1453074))) lt!1453096 lt!1453099))))

(assert (=> b!4064541 (= lt!1453096 (size!32457 lt!1453099))))

(declare-fun lt!1453066 () BalanceConc!25956)

(declare-fun apply!10159 (TokenValueInjection!13828 BalanceConc!25956) TokenValue!7200)

(assert (=> b!4064541 (= lt!1453100 (apply!10159 (transformation!6970 (rule!10068 (_1!24369 (v!39809 lt!1453074)))) lt!1453066))))

(declare-fun seqFromList!5187 (List!43535) BalanceConc!25956)

(assert (=> b!4064541 (= lt!1453066 (seqFromList!5187 lt!1453099))))

(declare-fun lt!1453041 () Unit!62889)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1675 (LexerInterface!6559 List!43537 List!43535 List!43535 List!43535 Rule!13740) Unit!62889)

(assert (=> b!4064541 (= lt!1453041 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1675 thiss!21717 rules!2999 lt!1453099 lt!1453058 (_2!24369 (v!39809 lt!1453074)) (rule!10068 (_1!24369 (v!39809 lt!1453074)))))))

(declare-fun list!16184 (BalanceConc!25956) List!43535)

(declare-fun charsOf!4786 (Token!13078) BalanceConc!25956)

(assert (=> b!4064541 (= lt!1453099 (list!16184 (charsOf!4786 (_1!24369 (v!39809 lt!1453074)))))))

(declare-fun lt!1453089 () Unit!62889)

(assert (=> b!4064541 (= lt!1453089 (lemmaInv!1179 (transformation!6970 (rule!10068 (_1!24369 (v!39809 lt!1453074))))))))

(assert (=> b!4064541 (ruleValid!2900 thiss!21717 (rule!10068 (_1!24369 (v!39809 lt!1453074))))))

(declare-fun lt!1453088 () Unit!62889)

(assert (=> b!4064541 (= lt!1453088 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1970 thiss!21717 (rule!10068 (_1!24369 (v!39809 lt!1453074))) rules!2999))))

(declare-fun lt!1453087 () Unit!62889)

(declare-fun lemmaCharactersSize!1489 (Token!13078) Unit!62889)

(assert (=> b!4064541 (= lt!1453087 (lemmaCharactersSize!1489 token!484))))

(declare-fun lt!1453049 () Unit!62889)

(assert (=> b!4064541 (= lt!1453049 (lemmaCharactersSize!1489 (_1!24369 (v!39809 lt!1453074))))))

(declare-fun b!4064542 () Bool)

(declare-fun e!2522246 () Bool)

(declare-fun tp!1230638 () Bool)

(assert (=> b!4064542 (= e!2522255 (and e!2522246 tp!1230638))))

(declare-fun b!4064543 () Bool)

(declare-fun e!2522262 () Bool)

(assert (=> b!4064543 (= e!2522262 e!2522241)))

(declare-fun res!1658503 () Bool)

(assert (=> b!4064543 (=> res!1658503 e!2522241)))

(assert (=> b!4064543 (= res!1658503 (not ((_ is Some!9383) lt!1453074)))))

(declare-fun maxPrefix!3857 (LexerInterface!6559 List!43537 List!43535) Option!9384)

(assert (=> b!4064543 (= lt!1453074 (maxPrefix!3857 thiss!21717 rules!2999 lt!1453058))))

(declare-fun lt!1453078 () List!43535)

(declare-fun lt!1453076 () Token!13078)

(declare-fun lt!1453085 () tuple2!42470)

(assert (=> b!4064543 (and (= suffixResult!105 lt!1453078) (= lt!1453085 (tuple2!42471 lt!1453076 lt!1453078)))))

(declare-fun lt!1453060 () Unit!62889)

(assert (=> b!4064543 (= lt!1453060 (lemmaSamePrefixThenSameSuffix!2218 lt!1453059 suffixResult!105 lt!1453059 lt!1453078 lt!1453052))))

(declare-fun lt!1453069 () List!43535)

(assert (=> b!4064543 (isPrefix!4057 lt!1453059 lt!1453069)))

(declare-fun lt!1453067 () Unit!62889)

(assert (=> b!4064543 (= lt!1453067 (lemmaConcatTwoListThenFirstIsPrefix!2892 lt!1453059 lt!1453078))))

(declare-fun b!4064544 () Bool)

(declare-fun res!1658502 () Bool)

(declare-fun e!2522275 () Bool)

(assert (=> b!4064544 (=> (not res!1658502) (not e!2522275))))

(assert (=> b!4064544 (= res!1658502 (= (size!32458 token!484) (size!32457 (originalCharacters!7570 token!484))))))

(declare-fun b!4064545 () Bool)

(assert (=> b!4064545 (= e!2522271 e!2522264)))

(declare-fun res!1658485 () Bool)

(assert (=> b!4064545 (=> res!1658485 e!2522264)))

(assert (=> b!4064545 (= res!1658485 (not (= lt!1453093 prefix!494)))))

(assert (=> b!4064545 (= lt!1453093 (++!11372 lt!1453059 lt!1453054))))

(declare-fun getSuffix!2474 (List!43535 List!43535) List!43535)

(assert (=> b!4064545 (= lt!1453054 (getSuffix!2474 prefix!494 lt!1453059))))

(assert (=> b!4064545 (isPrefix!4057 lt!1453059 prefix!494)))

(declare-fun lt!1453040 () Unit!62889)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!621 (List!43535 List!43535 List!43535) Unit!62889)

(assert (=> b!4064545 (= lt!1453040 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!621 prefix!494 lt!1453059 lt!1453052))))

(declare-fun b!4064546 () Bool)

(declare-fun Unit!62893 () Unit!62889)

(assert (=> b!4064546 (= e!2522248 Unit!62893)))

(declare-fun lt!1453072 () Unit!62889)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!496 (LexerInterface!6559 List!43537 Rule!13740 List!43535 List!43535 List!43535 Rule!13740) Unit!62889)

(assert (=> b!4064546 (= lt!1453072 (lemmaMaxPrefixOutputsMaxPrefix!496 thiss!21717 rules!2999 (rule!10068 token!484) lt!1453059 lt!1453052 lt!1453099 (rule!10068 (_1!24369 (v!39809 lt!1453074)))))))

(declare-fun res!1658499 () Bool)

(assert (=> b!4064546 (= res!1658499 (not (matchR!5828 (regex!6970 (rule!10068 (_1!24369 (v!39809 lt!1453074)))) lt!1453099)))))

(assert (=> b!4064546 (=> (not res!1658499) (not e!2522240))))

(assert (=> b!4064546 e!2522240))

(declare-fun b!4064547 () Bool)

(declare-fun e!2522258 () Bool)

(assert (=> b!4064547 (= e!2522249 e!2522258)))

(declare-fun res!1658482 () Bool)

(assert (=> b!4064547 (=> (not res!1658482) (not e!2522258))))

(declare-fun lt!1453090 () Int)

(declare-fun lt!1453091 () Int)

(assert (=> b!4064547 (= res!1658482 (>= lt!1453090 lt!1453091))))

(assert (=> b!4064547 (= lt!1453091 (size!32457 lt!1453059))))

(assert (=> b!4064547 (= lt!1453090 (size!32457 prefix!494))))

(assert (=> b!4064547 (= lt!1453059 (list!16184 (charsOf!4786 token!484)))))

(assert (=> b!4064548 (= e!2522242 (and tp!1230648 tp!1230643))))

(declare-fun b!4064549 () Bool)

(declare-fun res!1658510 () Bool)

(declare-fun e!2522272 () Bool)

(assert (=> b!4064549 (=> res!1658510 e!2522272)))

(assert (=> b!4064549 (= res!1658510 (not (= lt!1453056 lt!1453058)))))

(declare-fun b!4064550 () Bool)

(declare-fun e!2522250 () Bool)

(assert (=> b!4064550 (= e!2522250 e!2522260)))

(declare-fun res!1658506 () Bool)

(assert (=> b!4064550 (=> res!1658506 e!2522260)))

(assert (=> b!4064550 (= res!1658506 (not (= lt!1453091 lt!1453096)))))

(declare-fun lt!1453079 () Unit!62889)

(declare-fun e!2522251 () Unit!62889)

(assert (=> b!4064550 (= lt!1453079 e!2522251)))

(declare-fun c!701885 () Bool)

(assert (=> b!4064550 (= c!701885 (< lt!1453096 lt!1453091))))

(declare-fun lt!1453048 () Unit!62889)

(assert (=> b!4064550 (= lt!1453048 e!2522248)))

(declare-fun c!701886 () Bool)

(assert (=> b!4064550 (= c!701886 (> lt!1453096 lt!1453091))))

(declare-fun lt!1453046 () List!43535)

(assert (=> b!4064550 (= (_2!24369 (v!39809 lt!1453074)) lt!1453046)))

(declare-fun lt!1453063 () Unit!62889)

(assert (=> b!4064550 (= lt!1453063 (lemmaSamePrefixThenSameSuffix!2218 lt!1453099 (_2!24369 (v!39809 lt!1453074)) lt!1453099 lt!1453046 lt!1453058))))

(declare-fun lt!1453084 () List!43535)

(assert (=> b!4064550 (isPrefix!4057 lt!1453099 lt!1453084)))

(declare-fun lt!1453053 () Unit!62889)

(assert (=> b!4064550 (= lt!1453053 (lemmaConcatTwoListThenFirstIsPrefix!2892 lt!1453099 lt!1453046))))

(declare-fun b!4064551 () Bool)

(declare-fun tp!1230636 () Bool)

(assert (=> b!4064551 (= e!2522277 (and tp_is_empty!20721 tp!1230636))))

(declare-fun b!4064552 () Bool)

(assert (=> b!4064552 (= e!2522278 (= lt!1453074 (Some!9383 (tuple2!42471 lt!1453098 lt!1453046))))))

(declare-fun lt!1453034 () Unit!62889)

(declare-fun lemmaSemiInverse!1941 (TokenValueInjection!13828 BalanceConc!25956) Unit!62889)

(assert (=> b!4064552 (= lt!1453034 (lemmaSemiInverse!1941 (transformation!6970 (rule!10068 (_1!24369 (v!39809 lt!1453074)))) lt!1453066))))

(declare-fun b!4064553 () Bool)

(assert (=> b!4064553 (= e!2522270 e!2522272)))

(declare-fun res!1658483 () Bool)

(assert (=> b!4064553 (=> res!1658483 e!2522272)))

(assert (=> b!4064553 (= res!1658483 (not (isPrefix!4057 lt!1453099 lt!1453052)))))

(assert (=> b!4064553 (isPrefix!4057 lt!1453099 lt!1453068)))

(declare-fun lt!1453045 () Unit!62889)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!850 (List!43535 List!43535 List!43535) Unit!62889)

(assert (=> b!4064553 (= lt!1453045 (lemmaPrefixStaysPrefixWhenAddingToSuffix!850 lt!1453099 lt!1453058 lt!1453097))))

(declare-fun b!4064554 () Bool)

(declare-fun e!2522247 () Bool)

(assert (=> b!4064554 (= e!2522247 e!2522262)))

(declare-fun res!1658513 () Bool)

(assert (=> b!4064554 (=> res!1658513 e!2522262)))

(assert (=> b!4064554 (= res!1658513 (not (= lt!1453069 lt!1453052)))))

(assert (=> b!4064554 (= lt!1453069 (++!11372 lt!1453059 lt!1453078))))

(assert (=> b!4064554 (= lt!1453078 (getSuffix!2474 lt!1453052 lt!1453059))))

(assert (=> b!4064554 e!2522275))

(declare-fun res!1658487 () Bool)

(assert (=> b!4064554 (=> (not res!1658487) (not e!2522275))))

(assert (=> b!4064554 (= res!1658487 (isPrefix!4057 lt!1453052 lt!1453052))))

(declare-fun lt!1453051 () Unit!62889)

(declare-fun lemmaIsPrefixRefl!2624 (List!43535 List!43535) Unit!62889)

(assert (=> b!4064554 (= lt!1453051 (lemmaIsPrefixRefl!2624 lt!1453052 lt!1453052))))

(declare-fun b!4064555 () Bool)

(declare-fun Unit!62894 () Unit!62889)

(assert (=> b!4064555 (= e!2522243 Unit!62894)))

(declare-fun lt!1453094 () Unit!62889)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!298 (LexerInterface!6559 List!43537 Rule!13740 List!43535 List!43535 Rule!13740) Unit!62889)

(assert (=> b!4064555 (= lt!1453094 (lemmaMaxPrefNoSmallerRuleMatches!298 thiss!21717 rules!2999 (rule!10068 token!484) lt!1453059 lt!1453052 (rule!10068 (_1!24369 (v!39809 lt!1453074)))))))

(declare-fun res!1658512 () Bool)

(assert (=> b!4064555 (= res!1658512 (not (matchR!5828 (regex!6970 (rule!10068 (_1!24369 (v!39809 lt!1453074)))) lt!1453059)))))

(assert (=> b!4064555 (=> (not res!1658512) (not e!2522269))))

(assert (=> b!4064555 e!2522269))

(declare-fun b!4064556 () Bool)

(assert (=> b!4064556 (= e!2522272 e!2522250)))

(declare-fun res!1658500 () Bool)

(assert (=> b!4064556 (=> res!1658500 e!2522250)))

(assert (=> b!4064556 (= res!1658500 (not (= lt!1453084 lt!1453058)))))

(assert (=> b!4064556 (= lt!1453084 (++!11372 lt!1453099 lt!1453046))))

(assert (=> b!4064556 (= lt!1453046 (getSuffix!2474 lt!1453058 lt!1453099))))

(declare-fun b!4064557 () Bool)

(declare-fun res!1658491 () Bool)

(assert (=> b!4064557 (=> (not res!1658491) (not e!2522275))))

(declare-fun lt!1453036 () TokenValue!7200)

(assert (=> b!4064557 (= res!1658491 (= (value!219279 token!484) lt!1453036))))

(declare-fun b!4064558 () Bool)

(declare-fun e!2522267 () Bool)

(assert (=> b!4064558 (= e!2522258 e!2522267)))

(declare-fun res!1658492 () Bool)

(assert (=> b!4064558 (=> (not res!1658492) (not e!2522267))))

(declare-fun lt!1453083 () List!43535)

(assert (=> b!4064558 (= res!1658492 (= lt!1453083 lt!1453058))))

(assert (=> b!4064558 (= lt!1453058 (++!11372 prefix!494 newSuffix!27))))

(assert (=> b!4064558 (= lt!1453083 (++!11372 lt!1453059 newSuffixResult!27))))

(declare-fun b!4064559 () Bool)

(declare-fun e!2522276 () Bool)

(assert (=> b!4064559 (= e!2522265 e!2522276)))

(declare-fun res!1658494 () Bool)

(assert (=> b!4064559 (=> res!1658494 e!2522276)))

(declare-fun lt!1453086 () Option!9384)

(declare-fun lt!1453043 () Option!9384)

(assert (=> b!4064559 (= res!1658494 (not (= lt!1453086 lt!1453043)))))

(assert (=> b!4064559 (= lt!1453086 (Some!9383 (tuple2!42471 lt!1453076 suffixResult!105)))))

(assert (=> b!4064559 (= lt!1453086 (maxPrefixOneRule!2869 thiss!21717 (rule!10068 token!484) lt!1453052))))

(assert (=> b!4064559 (= lt!1453076 (Token!13079 lt!1453036 (rule!10068 token!484) lt!1453091 lt!1453059))))

(assert (=> b!4064559 (= lt!1453036 (apply!10159 (transformation!6970 (rule!10068 token!484)) (seqFromList!5187 lt!1453059)))))

(declare-fun lt!1453080 () Unit!62889)

(assert (=> b!4064559 (= lt!1453080 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1675 thiss!21717 rules!2999 lt!1453059 lt!1453052 suffixResult!105 (rule!10068 token!484)))))

(assert (=> b!4064559 (= lt!1453039 suffixResult!105)))

(declare-fun lt!1453081 () Unit!62889)

(assert (=> b!4064559 (= lt!1453081 (lemmaSamePrefixThenSameSuffix!2218 lt!1453059 lt!1453039 lt!1453059 suffixResult!105 lt!1453052))))

(assert (=> b!4064559 (isPrefix!4057 lt!1453059 lt!1453071)))

(declare-fun lt!1453092 () Unit!62889)

(assert (=> b!4064559 (= lt!1453092 (lemmaConcatTwoListThenFirstIsPrefix!2892 lt!1453059 lt!1453039))))

(declare-fun b!4064560 () Bool)

(declare-fun Unit!62895 () Unit!62889)

(assert (=> b!4064560 (= e!2522251 Unit!62895)))

(declare-fun b!4064561 () Bool)

(assert (=> b!4064561 (= e!2522266 e!2522257)))

(declare-fun res!1658497 () Bool)

(assert (=> b!4064561 (=> res!1658497 e!2522257)))

(assert (=> b!4064561 (= res!1658497 (not (= lt!1453061 suffix!1299)))))

(assert (=> b!4064561 (= lt!1453061 (++!11372 newSuffix!27 lt!1453097))))

(assert (=> b!4064561 (= lt!1453097 (getSuffix!2474 suffix!1299 newSuffix!27))))

(declare-fun b!4064562 () Bool)

(assert (=> b!4064562 (= e!2522276 e!2522247)))

(declare-fun res!1658481 () Bool)

(assert (=> b!4064562 (=> res!1658481 e!2522247)))

(assert (=> b!4064562 (= res!1658481 (not (matchR!5828 (regex!6970 (rule!10068 token!484)) lt!1453059)))))

(assert (=> b!4064562 (isPrefix!4057 lt!1453059 lt!1453058)))

(declare-fun lt!1453035 () Unit!62889)

(assert (=> b!4064562 (= lt!1453035 (lemmaPrefixStaysPrefixWhenAddingToSuffix!850 lt!1453059 prefix!494 newSuffix!27))))

(declare-fun lt!1453065 () Unit!62889)

(assert (=> b!4064562 (= lt!1453065 (lemmaPrefixStaysPrefixWhenAddingToSuffix!850 lt!1453059 prefix!494 suffix!1299))))

(declare-fun b!4064563 () Bool)

(declare-fun res!1658488 () Bool)

(assert (=> b!4064563 (=> res!1658488 e!2522278)))

(declare-fun contains!8638 (List!43537 Rule!13740) Bool)

(assert (=> b!4064563 (= res!1658488 (not (contains!8638 rules!2999 (rule!10068 (_1!24369 (v!39809 lt!1453074))))))))

(declare-fun b!4064564 () Bool)

(assert (=> b!4064564 (= e!2522275 (and (= (size!32458 token!484) lt!1453091) (= (originalCharacters!7570 token!484) lt!1453059)))))

(declare-fun tp!1230640 () Bool)

(declare-fun b!4064565 () Bool)

(assert (=> b!4064565 (= e!2522246 (and tp!1230640 (inv!58034 (tag!7830 (h!48833 rules!2999))) (inv!58038 (transformation!6970 (h!48833 rules!2999))) e!2522256))))

(declare-fun b!4064566 () Bool)

(declare-fun tp!1230647 () Bool)

(declare-fun inv!21 (TokenValue!7200) Bool)

(assert (=> b!4064566 (= e!2522259 (and (inv!21 (value!219279 token!484)) e!2522263 tp!1230647))))

(declare-fun b!4064567 () Bool)

(declare-fun tp!1230645 () Bool)

(assert (=> b!4064567 (= e!2522252 (and tp_is_empty!20721 tp!1230645))))

(declare-fun b!4064568 () Bool)

(declare-fun res!1658493 () Bool)

(assert (=> b!4064568 (=> res!1658493 e!2522278)))

(assert (=> b!4064568 (= res!1658493 (not (contains!8638 rules!2999 (rule!10068 token!484))))))

(declare-fun b!4064569 () Bool)

(assert (=> b!4064569 (= e!2522267 e!2522254)))

(declare-fun res!1658508 () Bool)

(assert (=> b!4064569 (=> (not res!1658508) (not e!2522254))))

(assert (=> b!4064569 (= res!1658508 (= (maxPrefix!3857 thiss!21717 rules!2999 lt!1453052) lt!1453043))))

(assert (=> b!4064569 (= lt!1453043 (Some!9383 lt!1453085))))

(assert (=> b!4064569 (= lt!1453085 (tuple2!42471 token!484 suffixResult!105))))

(assert (=> b!4064569 (= lt!1453052 (++!11372 prefix!494 suffix!1299))))

(declare-fun b!4064570 () Bool)

(declare-fun Unit!62896 () Unit!62889)

(assert (=> b!4064570 (= e!2522251 Unit!62896)))

(declare-fun lt!1453055 () Unit!62889)

(assert (=> b!4064570 (= lt!1453055 (lemmaMaxPrefixOutputsMaxPrefix!496 thiss!21717 rules!2999 (rule!10068 (_1!24369 (v!39809 lt!1453074))) lt!1453099 lt!1453058 lt!1453059 (rule!10068 token!484)))))

(assert (=> b!4064570 false))

(assert (= (and start!383420 res!1658495) b!4064521))

(assert (= (and b!4064521 res!1658496) b!4064540))

(assert (= (and b!4064540 res!1658505) b!4064523))

(assert (= (and b!4064523 res!1658480) b!4064531))

(assert (= (and b!4064531 res!1658489) b!4064547))

(assert (= (and b!4064547 res!1658482) b!4064558))

(assert (= (and b!4064558 res!1658492) b!4064569))

(assert (= (and b!4064569 res!1658508) b!4064527))

(assert (= (and b!4064527 (not res!1658511)) b!4064529))

(assert (= (and b!4064529 (not res!1658484)) b!4064545))

(assert (= (and b!4064545 (not res!1658485)) b!4064539))

(assert (= (and b!4064539 (not res!1658501)) b!4064559))

(assert (= (and b!4064559 (not res!1658494)) b!4064562))

(assert (= (and b!4064562 (not res!1658481)) b!4064554))

(assert (= (and b!4064554 res!1658487) b!4064557))

(assert (= (and b!4064557 res!1658491) b!4064544))

(assert (= (and b!4064544 res!1658502) b!4064564))

(assert (= (and b!4064554 (not res!1658513)) b!4064543))

(assert (= (and b!4064543 (not res!1658503)) b!4064541))

(assert (= (and b!4064541 (not res!1658509)) b!4064561))

(assert (= (and b!4064561 (not res!1658497)) b!4064536))

(assert (= (and b!4064536 (not res!1658498)) b!4064553))

(assert (= (and b!4064553 (not res!1658483)) b!4064549))

(assert (= (and b!4064549 (not res!1658510)) b!4064556))

(assert (= (and b!4064556 (not res!1658500)) b!4064550))

(assert (= (and b!4064550 c!701886) b!4064546))

(assert (= (and b!4064550 (not c!701886)) b!4064532))

(assert (= (and b!4064546 res!1658499) b!4064530))

(assert (= (and b!4064550 c!701885) b!4064570))

(assert (= (and b!4064550 (not c!701885)) b!4064560))

(assert (= (and b!4064550 (not res!1658506)) b!4064534))

(assert (= (and b!4064534 (not res!1658486)) b!4064526))

(assert (= (and b!4064526 c!701887) b!4064555))

(assert (= (and b!4064526 (not c!701887)) b!4064522))

(assert (= (and b!4064555 res!1658512) b!4064520))

(assert (= (and b!4064526 (not res!1658490)) b!4064528))

(assert (= (and b!4064528 (not res!1658504)) b!4064563))

(assert (= (and b!4064563 (not res!1658488)) b!4064568))

(assert (= (and b!4064568 (not res!1658493)) b!4064524))

(assert (= (and b!4064524 (not res!1658507)) b!4064552))

(assert (= (and start!383420 ((_ is Cons!43411) prefix!494)) b!4064535))

(assert (= b!4064538 b!4064548))

(assert (= b!4064566 b!4064538))

(assert (= start!383420 b!4064566))

(assert (= (and start!383420 ((_ is Cons!43411) suffixResult!105)) b!4064533))

(assert (= (and start!383420 ((_ is Cons!43411) suffix!1299)) b!4064551))

(assert (= (and start!383420 ((_ is Cons!43411) newSuffix!27)) b!4064525))

(assert (= b!4064565 b!4064537))

(assert (= b!4064542 b!4064565))

(assert (= (and start!383420 ((_ is Cons!43413) rules!2999)) b!4064542))

(assert (= (and start!383420 ((_ is Cons!43411) newSuffixResult!27)) b!4064567))

(declare-fun m!4671707 () Bool)

(assert (=> b!4064523 m!4671707))

(declare-fun m!4671709 () Bool)

(assert (=> b!4064523 m!4671709))

(declare-fun m!4671711 () Bool)

(assert (=> b!4064541 m!4671711))

(declare-fun m!4671713 () Bool)

(assert (=> b!4064541 m!4671713))

(declare-fun m!4671715 () Bool)

(assert (=> b!4064541 m!4671715))

(declare-fun m!4671717 () Bool)

(assert (=> b!4064541 m!4671717))

(declare-fun m!4671719 () Bool)

(assert (=> b!4064541 m!4671719))

(declare-fun m!4671721 () Bool)

(assert (=> b!4064541 m!4671721))

(assert (=> b!4064541 m!4671711))

(declare-fun m!4671723 () Bool)

(assert (=> b!4064541 m!4671723))

(declare-fun m!4671725 () Bool)

(assert (=> b!4064541 m!4671725))

(declare-fun m!4671727 () Bool)

(assert (=> b!4064541 m!4671727))

(declare-fun m!4671729 () Bool)

(assert (=> b!4064541 m!4671729))

(declare-fun m!4671731 () Bool)

(assert (=> b!4064541 m!4671731))

(declare-fun m!4671733 () Bool)

(assert (=> b!4064541 m!4671733))

(assert (=> b!4064541 m!4671725))

(declare-fun m!4671735 () Bool)

(assert (=> b!4064541 m!4671735))

(declare-fun m!4671737 () Bool)

(assert (=> b!4064541 m!4671737))

(declare-fun m!4671739 () Bool)

(assert (=> b!4064541 m!4671739))

(declare-fun m!4671741 () Bool)

(assert (=> b!4064541 m!4671741))

(declare-fun m!4671743 () Bool)

(assert (=> b!4064541 m!4671743))

(declare-fun m!4671745 () Bool)

(assert (=> b!4064541 m!4671745))

(declare-fun m!4671747 () Bool)

(assert (=> start!383420 m!4671747))

(declare-fun m!4671749 () Bool)

(assert (=> b!4064553 m!4671749))

(declare-fun m!4671751 () Bool)

(assert (=> b!4064553 m!4671751))

(declare-fun m!4671753 () Bool)

(assert (=> b!4064553 m!4671753))

(declare-fun m!4671755 () Bool)

(assert (=> b!4064536 m!4671755))

(declare-fun m!4671757 () Bool)

(assert (=> b!4064536 m!4671757))

(declare-fun m!4671759 () Bool)

(assert (=> b!4064536 m!4671759))

(declare-fun m!4671761 () Bool)

(assert (=> b!4064550 m!4671761))

(declare-fun m!4671763 () Bool)

(assert (=> b!4064550 m!4671763))

(declare-fun m!4671765 () Bool)

(assert (=> b!4064550 m!4671765))

(declare-fun m!4671767 () Bool)

(assert (=> b!4064528 m!4671767))

(declare-fun m!4671769 () Bool)

(assert (=> b!4064531 m!4671769))

(declare-fun m!4671771 () Bool)

(assert (=> b!4064521 m!4671771))

(declare-fun m!4671773 () Bool)

(assert (=> b!4064534 m!4671773))

(declare-fun m!4671775 () Bool)

(assert (=> b!4064558 m!4671775))

(declare-fun m!4671777 () Bool)

(assert (=> b!4064558 m!4671777))

(declare-fun m!4671779 () Bool)

(assert (=> b!4064559 m!4671779))

(declare-fun m!4671781 () Bool)

(assert (=> b!4064559 m!4671781))

(declare-fun m!4671783 () Bool)

(assert (=> b!4064559 m!4671783))

(declare-fun m!4671785 () Bool)

(assert (=> b!4064559 m!4671785))

(declare-fun m!4671787 () Bool)

(assert (=> b!4064559 m!4671787))

(declare-fun m!4671789 () Bool)

(assert (=> b!4064559 m!4671789))

(declare-fun m!4671791 () Bool)

(assert (=> b!4064559 m!4671791))

(assert (=> b!4064559 m!4671787))

(declare-fun m!4671793 () Bool)

(assert (=> b!4064544 m!4671793))

(declare-fun m!4671795 () Bool)

(assert (=> b!4064555 m!4671795))

(declare-fun m!4671797 () Bool)

(assert (=> b!4064555 m!4671797))

(declare-fun m!4671799 () Bool)

(assert (=> b!4064524 m!4671799))

(declare-fun m!4671801 () Bool)

(assert (=> b!4064538 m!4671801))

(declare-fun m!4671803 () Bool)

(assert (=> b!4064538 m!4671803))

(declare-fun m!4671805 () Bool)

(assert (=> b!4064562 m!4671805))

(declare-fun m!4671807 () Bool)

(assert (=> b!4064562 m!4671807))

(declare-fun m!4671809 () Bool)

(assert (=> b!4064562 m!4671809))

(declare-fun m!4671811 () Bool)

(assert (=> b!4064562 m!4671811))

(declare-fun m!4671813 () Bool)

(assert (=> b!4064566 m!4671813))

(declare-fun m!4671815 () Bool)

(assert (=> b!4064527 m!4671815))

(declare-fun m!4671817 () Bool)

(assert (=> b!4064527 m!4671817))

(declare-fun m!4671819 () Bool)

(assert (=> b!4064527 m!4671819))

(declare-fun m!4671821 () Bool)

(assert (=> b!4064527 m!4671821))

(declare-fun m!4671823 () Bool)

(assert (=> b!4064561 m!4671823))

(declare-fun m!4671825 () Bool)

(assert (=> b!4064561 m!4671825))

(declare-fun m!4671827 () Bool)

(assert (=> b!4064570 m!4671827))

(declare-fun m!4671829 () Bool)

(assert (=> b!4064554 m!4671829))

(declare-fun m!4671831 () Bool)

(assert (=> b!4064554 m!4671831))

(declare-fun m!4671833 () Bool)

(assert (=> b!4064554 m!4671833))

(declare-fun m!4671835 () Bool)

(assert (=> b!4064554 m!4671835))

(declare-fun m!4671837 () Bool)

(assert (=> b!4064568 m!4671837))

(declare-fun m!4671839 () Bool)

(assert (=> b!4064547 m!4671839))

(declare-fun m!4671841 () Bool)

(assert (=> b!4064547 m!4671841))

(declare-fun m!4671843 () Bool)

(assert (=> b!4064547 m!4671843))

(assert (=> b!4064547 m!4671843))

(declare-fun m!4671845 () Bool)

(assert (=> b!4064547 m!4671845))

(declare-fun m!4671847 () Bool)

(assert (=> b!4064569 m!4671847))

(declare-fun m!4671849 () Bool)

(assert (=> b!4064569 m!4671849))

(declare-fun m!4671851 () Bool)

(assert (=> b!4064540 m!4671851))

(declare-fun m!4671853 () Bool)

(assert (=> b!4064543 m!4671853))

(declare-fun m!4671855 () Bool)

(assert (=> b!4064543 m!4671855))

(declare-fun m!4671857 () Bool)

(assert (=> b!4064543 m!4671857))

(declare-fun m!4671859 () Bool)

(assert (=> b!4064543 m!4671859))

(declare-fun m!4671861 () Bool)

(assert (=> b!4064552 m!4671861))

(declare-fun m!4671863 () Bool)

(assert (=> b!4064556 m!4671863))

(declare-fun m!4671865 () Bool)

(assert (=> b!4064556 m!4671865))

(declare-fun m!4671867 () Bool)

(assert (=> b!4064563 m!4671867))

(declare-fun m!4671869 () Bool)

(assert (=> b!4064539 m!4671869))

(declare-fun m!4671871 () Bool)

(assert (=> b!4064539 m!4671871))

(declare-fun m!4671873 () Bool)

(assert (=> b!4064539 m!4671873))

(declare-fun m!4671875 () Bool)

(assert (=> b!4064539 m!4671875))

(declare-fun m!4671877 () Bool)

(assert (=> b!4064526 m!4671877))

(declare-fun m!4671879 () Bool)

(assert (=> b!4064526 m!4671879))

(declare-fun m!4671881 () Bool)

(assert (=> b!4064526 m!4671881))

(declare-fun m!4671883 () Bool)

(assert (=> b!4064526 m!4671883))

(declare-fun m!4671885 () Bool)

(assert (=> b!4064545 m!4671885))

(declare-fun m!4671887 () Bool)

(assert (=> b!4064545 m!4671887))

(declare-fun m!4671889 () Bool)

(assert (=> b!4064545 m!4671889))

(declare-fun m!4671891 () Bool)

(assert (=> b!4064545 m!4671891))

(declare-fun m!4671893 () Bool)

(assert (=> b!4064546 m!4671893))

(assert (=> b!4064546 m!4671767))

(declare-fun m!4671895 () Bool)

(assert (=> b!4064529 m!4671895))

(declare-fun m!4671897 () Bool)

(assert (=> b!4064529 m!4671897))

(declare-fun m!4671899 () Bool)

(assert (=> b!4064529 m!4671899))

(declare-fun m!4671901 () Bool)

(assert (=> b!4064529 m!4671901))

(declare-fun m!4671903 () Bool)

(assert (=> b!4064529 m!4671903))

(declare-fun m!4671905 () Bool)

(assert (=> b!4064565 m!4671905))

(declare-fun m!4671907 () Bool)

(assert (=> b!4064565 m!4671907))

(check-sat (not b!4064525) (not b!4064526) (not b!4064534) (not b!4064565) (not b_next!113755) (not b_next!113757) (not b!4064555) (not b!4064568) (not b!4064529) (not b_next!113753) (not b!4064545) b_and!312453 (not b!4064552) (not b!4064531) (not b!4064528) (not b!4064551) (not b!4064559) b_and!312455 (not b!4064567) (not b!4064523) (not b!4064554) (not b!4064535) (not b!4064547) (not b!4064527) (not b!4064561) (not b!4064533) (not b!4064538) tp_is_empty!20721 (not b!4064521) (not b!4064556) (not b!4064536) (not b!4064553) b_and!312457 (not b!4064566) (not b!4064540) (not b!4064569) (not b!4064539) (not b_next!113759) (not b!4064546) (not start!383420) (not b!4064563) (not b!4064558) (not b!4064543) (not b!4064562) (not b!4064544) (not b!4064524) b_and!312451 (not b!4064542) (not b!4064570) (not b!4064541) (not b!4064550))
(check-sat (not b_next!113753) b_and!312453 b_and!312455 (not b_next!113755) (not b_next!113757) b_and!312451 b_and!312457 (not b_next!113759))
