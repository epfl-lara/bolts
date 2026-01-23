; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!380956 () Bool)

(assert start!380956)

(declare-fun b!4040354 () Bool)

(declare-fun b_free!112521 () Bool)

(declare-fun b_next!113225 () Bool)

(assert (=> b!4040354 (= b_free!112521 (not b_next!113225))))

(declare-fun tp!1226797 () Bool)

(declare-fun b_and!310575 () Bool)

(assert (=> b!4040354 (= tp!1226797 b_and!310575)))

(declare-fun b_free!112523 () Bool)

(declare-fun b_next!113227 () Bool)

(assert (=> b!4040354 (= b_free!112523 (not b_next!113227))))

(declare-fun tp!1226789 () Bool)

(declare-fun b_and!310577 () Bool)

(assert (=> b!4040354 (= tp!1226789 b_and!310577)))

(declare-fun b!4040350 () Bool)

(declare-fun b_free!112525 () Bool)

(declare-fun b_next!113229 () Bool)

(assert (=> b!4040350 (= b_free!112525 (not b_next!113229))))

(declare-fun tp!1226787 () Bool)

(declare-fun b_and!310579 () Bool)

(assert (=> b!4040350 (= tp!1226787 b_and!310579)))

(declare-fun b_free!112527 () Bool)

(declare-fun b_next!113231 () Bool)

(assert (=> b!4040350 (= b_free!112527 (not b_next!113231))))

(declare-fun tp!1226791 () Bool)

(declare-fun b_and!310581 () Bool)

(assert (=> b!4040350 (= tp!1226791 b_and!310581)))

(declare-fun b!4040331 () Bool)

(declare-fun e!2506921 () Bool)

(declare-fun e!2506919 () Bool)

(assert (=> b!4040331 (= e!2506921 e!2506919)))

(declare-fun res!1645456 () Bool)

(assert (=> b!4040331 (=> (not res!1645456) (not e!2506919))))

(declare-fun lt!1437795 () Int)

(declare-fun lt!1437779 () Int)

(assert (=> b!4040331 (= res!1645456 (>= lt!1437795 lt!1437779))))

(declare-datatypes ((C!23840 0))(
  ( (C!23841 (val!14014 Int)) )
))
(declare-datatypes ((List!43365 0))(
  ( (Nil!43241) (Cons!43241 (h!48661 C!23840) (t!334994 List!43365)) )
))
(declare-fun lt!1437799 () List!43365)

(declare-fun size!32325 (List!43365) Int)

(assert (=> b!4040331 (= lt!1437779 (size!32325 lt!1437799))))

(declare-fun prefix!494 () List!43365)

(assert (=> b!4040331 (= lt!1437795 (size!32325 prefix!494))))

(declare-datatypes ((IArray!26271 0))(
  ( (IArray!26272 (innerList!13193 List!43365)) )
))
(declare-datatypes ((Conc!13133 0))(
  ( (Node!13133 (left!32568 Conc!13133) (right!32898 Conc!13133) (csize!26496 Int) (cheight!13344 Int)) (Leaf!20301 (xs!16439 IArray!26271) (csize!26497 Int)) (Empty!13133) )
))
(declare-datatypes ((BalanceConc!25860 0))(
  ( (BalanceConc!25861 (c!697932 Conc!13133)) )
))
(declare-datatypes ((List!43366 0))(
  ( (Nil!43242) (Cons!43242 (h!48662 (_ BitVec 16)) (t!334995 List!43366)) )
))
(declare-datatypes ((TokenValue!7152 0))(
  ( (FloatLiteralValue!14304 (text!50509 List!43366)) (TokenValueExt!7151 (__x!26521 Int)) (Broken!35760 (value!217885 List!43366)) (Object!7275) (End!7152) (Def!7152) (Underscore!7152) (Match!7152) (Else!7152) (Error!7152) (Case!7152) (If!7152) (Extends!7152) (Abstract!7152) (Class!7152) (Val!7152) (DelimiterValue!14304 (del!7212 List!43366)) (KeywordValue!7158 (value!217886 List!43366)) (CommentValue!14304 (value!217887 List!43366)) (WhitespaceValue!14304 (value!217888 List!43366)) (IndentationValue!7152 (value!217889 List!43366)) (String!49477) (Int32!7152) (Broken!35761 (value!217890 List!43366)) (Boolean!7153) (Unit!62456) (OperatorValue!7155 (op!7212 List!43366)) (IdentifierValue!14304 (value!217891 List!43366)) (IdentifierValue!14305 (value!217892 List!43366)) (WhitespaceValue!14305 (value!217893 List!43366)) (True!14304) (False!14304) (Broken!35762 (value!217894 List!43366)) (Broken!35763 (value!217895 List!43366)) (True!14305) (RightBrace!7152) (RightBracket!7152) (Colon!7152) (Null!7152) (Comma!7152) (LeftBracket!7152) (False!14305) (LeftBrace!7152) (ImaginaryLiteralValue!7152 (text!50510 List!43366)) (StringLiteralValue!21456 (value!217896 List!43366)) (EOFValue!7152 (value!217897 List!43366)) (IdentValue!7152 (value!217898 List!43366)) (DelimiterValue!14305 (value!217899 List!43366)) (DedentValue!7152 (value!217900 List!43366)) (NewLineValue!7152 (value!217901 List!43366)) (IntegerValue!21456 (value!217902 (_ BitVec 32)) (text!50511 List!43366)) (IntegerValue!21457 (value!217903 Int) (text!50512 List!43366)) (Times!7152) (Or!7152) (Equal!7152) (Minus!7152) (Broken!35764 (value!217904 List!43366)) (And!7152) (Div!7152) (LessEqual!7152) (Mod!7152) (Concat!18979) (Not!7152) (Plus!7152) (SpaceValue!7152 (value!217905 List!43366)) (IntegerValue!21458 (value!217906 Int) (text!50513 List!43366)) (StringLiteralValue!21457 (text!50514 List!43366)) (FloatLiteralValue!14305 (text!50515 List!43366)) (BytesLiteralValue!7152 (value!217907 List!43366)) (CommentValue!14305 (value!217908 List!43366)) (StringLiteralValue!21458 (value!217909 List!43366)) (ErrorTokenValue!7152 (msg!7213 List!43366)) )
))
(declare-datatypes ((Regex!11827 0))(
  ( (ElementMatch!11827 (c!697933 C!23840)) (Concat!18980 (regOne!24166 Regex!11827) (regTwo!24166 Regex!11827)) (EmptyExpr!11827) (Star!11827 (reg!12156 Regex!11827)) (EmptyLang!11827) (Union!11827 (regOne!24167 Regex!11827) (regTwo!24167 Regex!11827)) )
))
(declare-datatypes ((String!49478 0))(
  ( (String!49479 (value!217910 String)) )
))
(declare-datatypes ((TokenValueInjection!13732 0))(
  ( (TokenValueInjection!13733 (toValue!9462 Int) (toChars!9321 Int)) )
))
(declare-datatypes ((Rule!13644 0))(
  ( (Rule!13645 (regex!6922 Regex!11827) (tag!7782 String!49478) (isSeparator!6922 Bool) (transformation!6922 TokenValueInjection!13732)) )
))
(declare-datatypes ((Token!12982 0))(
  ( (Token!12983 (value!217911 TokenValue!7152) (rule!9994 Rule!13644) (size!32326 Int) (originalCharacters!7522 List!43365)) )
))
(declare-fun token!484 () Token!12982)

(declare-fun list!16100 (BalanceConc!25860) List!43365)

(declare-fun charsOf!4738 (Token!12982) BalanceConc!25860)

(assert (=> b!4040331 (= lt!1437799 (list!16100 (charsOf!4738 token!484)))))

(declare-fun b!4040332 () Bool)

(declare-fun res!1645447 () Bool)

(declare-fun e!2506905 () Bool)

(assert (=> b!4040332 (=> res!1645447 e!2506905)))

(declare-fun lt!1437800 () List!43365)

(declare-fun isEmpty!25808 (List!43365) Bool)

(assert (=> b!4040332 (= res!1645447 (isEmpty!25808 lt!1437800))))

(declare-fun b!4040333 () Bool)

(declare-fun e!2506917 () Bool)

(declare-fun e!2506926 () Bool)

(assert (=> b!4040333 (= e!2506917 e!2506926)))

(declare-fun res!1645446 () Bool)

(assert (=> b!4040333 (=> res!1645446 e!2506926)))

(declare-fun lt!1437817 () List!43365)

(declare-fun isPrefix!4009 (List!43365 List!43365) Bool)

(assert (=> b!4040333 (= res!1645446 (not (isPrefix!4009 lt!1437799 lt!1437817)))))

(assert (=> b!4040333 (isPrefix!4009 prefix!494 lt!1437817)))

(declare-datatypes ((Unit!62457 0))(
  ( (Unit!62458) )
))
(declare-fun lt!1437794 () Unit!62457)

(declare-fun suffix!1299 () List!43365)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2844 (List!43365 List!43365) Unit!62457)

(assert (=> b!4040333 (= lt!1437794 (lemmaConcatTwoListThenFirstIsPrefix!2844 prefix!494 suffix!1299))))

(declare-fun lt!1437802 () List!43365)

(assert (=> b!4040333 (isPrefix!4009 lt!1437799 lt!1437802)))

(declare-fun lt!1437798 () Unit!62457)

(declare-fun suffixResult!105 () List!43365)

(assert (=> b!4040333 (= lt!1437798 (lemmaConcatTwoListThenFirstIsPrefix!2844 lt!1437799 suffixResult!105))))

(declare-fun b!4040334 () Bool)

(declare-fun e!2506915 () Bool)

(assert (=> b!4040334 (= e!2506915 (not e!2506917))))

(declare-fun res!1645450 () Bool)

(assert (=> b!4040334 (=> res!1645450 e!2506917)))

(assert (=> b!4040334 (= res!1645450 (not (= lt!1437802 lt!1437817)))))

(declare-fun ++!11324 (List!43365 List!43365) List!43365)

(assert (=> b!4040334 (= lt!1437802 (++!11324 lt!1437799 suffixResult!105))))

(declare-fun lt!1437778 () Unit!62457)

(declare-fun lemmaInv!1131 (TokenValueInjection!13732) Unit!62457)

(assert (=> b!4040334 (= lt!1437778 (lemmaInv!1131 (transformation!6922 (rule!9994 token!484))))))

(declare-datatypes ((LexerInterface!6511 0))(
  ( (LexerInterfaceExt!6508 (__x!26522 Int)) (Lexer!6509) )
))
(declare-fun thiss!21717 () LexerInterface!6511)

(declare-fun ruleValid!2852 (LexerInterface!6511 Rule!13644) Bool)

(assert (=> b!4040334 (ruleValid!2852 thiss!21717 (rule!9994 token!484))))

(declare-fun lt!1437792 () Unit!62457)

(declare-datatypes ((List!43367 0))(
  ( (Nil!43243) (Cons!43243 (h!48663 Rule!13644) (t!334996 List!43367)) )
))
(declare-fun rules!2999 () List!43367)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1922 (LexerInterface!6511 Rule!13644 List!43367) Unit!62457)

(assert (=> b!4040334 (= lt!1437792 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1922 thiss!21717 (rule!9994 token!484) rules!2999))))

(declare-fun b!4040335 () Bool)

(declare-fun e!2506927 () Bool)

(assert (=> b!4040335 (= e!2506927 e!2506915)))

(declare-fun res!1645467 () Bool)

(assert (=> b!4040335 (=> (not res!1645467) (not e!2506915))))

(declare-datatypes ((tuple2!42322 0))(
  ( (tuple2!42323 (_1!24295 Token!12982) (_2!24295 List!43365)) )
))
(declare-datatypes ((Option!9336 0))(
  ( (None!9335) (Some!9335 (v!39735 tuple2!42322)) )
))
(declare-fun lt!1437811 () Option!9336)

(declare-fun maxPrefix!3809 (LexerInterface!6511 List!43367 List!43365) Option!9336)

(assert (=> b!4040335 (= res!1645467 (= (maxPrefix!3809 thiss!21717 rules!2999 lt!1437817) lt!1437811))))

(declare-fun lt!1437777 () tuple2!42322)

(assert (=> b!4040335 (= lt!1437811 (Some!9335 lt!1437777))))

(assert (=> b!4040335 (= lt!1437777 (tuple2!42323 token!484 suffixResult!105))))

(assert (=> b!4040335 (= lt!1437817 (++!11324 prefix!494 suffix!1299))))

(declare-fun b!4040336 () Bool)

(declare-fun e!2506924 () Bool)

(assert (=> b!4040336 (= e!2506924 (and (= (size!32326 token!484) lt!1437779) (= (originalCharacters!7522 token!484) lt!1437799)))))

(declare-fun b!4040337 () Bool)

(declare-fun e!2506925 () Bool)

(assert (=> b!4040337 (= e!2506925 e!2506905)))

(declare-fun res!1645466 () Bool)

(assert (=> b!4040337 (=> res!1645466 e!2506905)))

(declare-fun lt!1437813 () Option!9336)

(declare-fun contains!8592 (List!43367 Rule!13644) Bool)

(assert (=> b!4040337 (= res!1645466 (not (contains!8592 rules!2999 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(assert (=> b!4040337 (= lt!1437800 (list!16100 (charsOf!4738 (_1!24295 (v!39735 lt!1437813)))))))

(declare-fun lt!1437780 () Unit!62457)

(assert (=> b!4040337 (= lt!1437780 (lemmaInv!1131 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(assert (=> b!4040337 (ruleValid!2852 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))

(declare-fun lt!1437814 () Unit!62457)

(assert (=> b!4040337 (= lt!1437814 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1922 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))) rules!2999))))

(declare-fun lt!1437806 () Unit!62457)

(declare-fun lemmaCharactersSize!1441 (Token!12982) Unit!62457)

(assert (=> b!4040337 (= lt!1437806 (lemmaCharactersSize!1441 token!484))))

(declare-fun lt!1437781 () Unit!62457)

(assert (=> b!4040337 (= lt!1437781 (lemmaCharactersSize!1441 (_1!24295 (v!39735 lt!1437813))))))

(declare-fun b!4040338 () Bool)

(declare-fun e!2506923 () Bool)

(declare-fun e!2506910 () Bool)

(assert (=> b!4040338 (= e!2506923 e!2506910)))

(declare-fun res!1645452 () Bool)

(assert (=> b!4040338 (=> res!1645452 e!2506910)))

(declare-fun lt!1437804 () List!43365)

(assert (=> b!4040338 (= res!1645452 (not (= lt!1437804 lt!1437817)))))

(declare-fun lt!1437805 () List!43365)

(assert (=> b!4040338 (= lt!1437804 (++!11324 lt!1437799 lt!1437805))))

(declare-fun getSuffix!2426 (List!43365 List!43365) List!43365)

(assert (=> b!4040338 (= lt!1437805 (getSuffix!2426 lt!1437817 lt!1437799))))

(assert (=> b!4040338 e!2506924))

(declare-fun res!1645448 () Bool)

(assert (=> b!4040338 (=> (not res!1645448) (not e!2506924))))

(assert (=> b!4040338 (= res!1645448 (isPrefix!4009 lt!1437817 lt!1437817))))

(declare-fun lt!1437784 () Unit!62457)

(declare-fun lemmaIsPrefixRefl!2576 (List!43365 List!43365) Unit!62457)

(assert (=> b!4040338 (= lt!1437784 (lemmaIsPrefixRefl!2576 lt!1437817 lt!1437817))))

(declare-fun b!4040339 () Bool)

(declare-fun e!2506918 () Bool)

(declare-fun tp_is_empty!20625 () Bool)

(declare-fun tp!1226786 () Bool)

(assert (=> b!4040339 (= e!2506918 (and tp_is_empty!20625 tp!1226786))))

(declare-fun b!4040340 () Bool)

(declare-fun res!1645461 () Bool)

(assert (=> b!4040340 (=> res!1645461 e!2506905)))

(declare-fun lt!1437793 () List!43365)

(assert (=> b!4040340 (= res!1645461 (not (= lt!1437793 (++!11324 lt!1437800 (_2!24295 (v!39735 lt!1437813))))))))

(declare-fun e!2506912 () Bool)

(declare-fun b!4040341 () Bool)

(declare-fun tp!1226793 () Bool)

(declare-fun e!2506930 () Bool)

(declare-fun inv!21 (TokenValue!7152) Bool)

(assert (=> b!4040341 (= e!2506930 (and (inv!21 (value!217911 token!484)) e!2506912 tp!1226793))))

(declare-fun b!4040342 () Bool)

(declare-fun e!2506931 () Bool)

(declare-fun matchR!5780 (Regex!11827 List!43365) Bool)

(assert (=> b!4040342 (= e!2506931 (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437800))))

(declare-fun e!2506907 () Bool)

(declare-fun tp!1226788 () Bool)

(declare-fun b!4040343 () Bool)

(declare-fun inv!57785 (String!49478) Bool)

(declare-fun inv!57788 (TokenValueInjection!13732) Bool)

(assert (=> b!4040343 (= e!2506912 (and tp!1226788 (inv!57785 (tag!7782 (rule!9994 token!484))) (inv!57788 (transformation!6922 (rule!9994 token!484))) e!2506907))))

(declare-fun b!4040344 () Bool)

(declare-fun res!1645455 () Bool)

(assert (=> b!4040344 (=> (not res!1645455) (not e!2506921))))

(declare-fun newSuffix!27 () List!43365)

(assert (=> b!4040344 (= res!1645455 (isPrefix!4009 newSuffix!27 suffix!1299))))

(declare-fun b!4040345 () Bool)

(declare-fun e!2506922 () Bool)

(declare-fun tp!1226798 () Bool)

(assert (=> b!4040345 (= e!2506922 (and tp_is_empty!20625 tp!1226798))))

(declare-fun b!4040346 () Bool)

(assert (=> b!4040346 (= e!2506910 e!2506925)))

(declare-fun res!1645453 () Bool)

(assert (=> b!4040346 (=> res!1645453 e!2506925)))

(get-info :version)

(assert (=> b!4040346 (= res!1645453 (not ((_ is Some!9335) lt!1437813)))))

(assert (=> b!4040346 (= lt!1437813 (maxPrefix!3809 thiss!21717 rules!2999 lt!1437793))))

(declare-fun lt!1437801 () Token!12982)

(assert (=> b!4040346 (and (= suffixResult!105 lt!1437805) (= lt!1437777 (tuple2!42323 lt!1437801 lt!1437805)))))

(declare-fun lt!1437787 () Unit!62457)

(declare-fun lemmaSamePrefixThenSameSuffix!2170 (List!43365 List!43365 List!43365 List!43365 List!43365) Unit!62457)

(assert (=> b!4040346 (= lt!1437787 (lemmaSamePrefixThenSameSuffix!2170 lt!1437799 suffixResult!105 lt!1437799 lt!1437805 lt!1437817))))

(assert (=> b!4040346 (isPrefix!4009 lt!1437799 lt!1437804)))

(declare-fun lt!1437785 () Unit!62457)

(assert (=> b!4040346 (= lt!1437785 (lemmaConcatTwoListThenFirstIsPrefix!2844 lt!1437799 lt!1437805))))

(declare-fun b!4040347 () Bool)

(declare-fun e!2506928 () Bool)

(assert (=> b!4040347 (= e!2506926 e!2506928)))

(declare-fun res!1645451 () Bool)

(assert (=> b!4040347 (=> res!1645451 e!2506928)))

(declare-fun lt!1437789 () List!43365)

(assert (=> b!4040347 (= res!1645451 (not (= lt!1437789 prefix!494)))))

(declare-fun lt!1437807 () List!43365)

(assert (=> b!4040347 (= lt!1437789 (++!11324 lt!1437799 lt!1437807))))

(assert (=> b!4040347 (= lt!1437807 (getSuffix!2426 prefix!494 lt!1437799))))

(assert (=> b!4040347 (isPrefix!4009 lt!1437799 prefix!494)))

(declare-fun lt!1437796 () Unit!62457)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!573 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> b!4040347 (= lt!1437796 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!573 prefix!494 lt!1437799 lt!1437817))))

(declare-fun res!1645465 () Bool)

(assert (=> start!380956 (=> (not res!1645465) (not e!2506921))))

(assert (=> start!380956 (= res!1645465 ((_ is Lexer!6509) thiss!21717))))

(assert (=> start!380956 e!2506921))

(declare-fun e!2506908 () Bool)

(assert (=> start!380956 e!2506908))

(declare-fun inv!57789 (Token!12982) Bool)

(assert (=> start!380956 (and (inv!57789 token!484) e!2506930)))

(declare-fun e!2506920 () Bool)

(assert (=> start!380956 e!2506920))

(assert (=> start!380956 e!2506918))

(declare-fun e!2506906 () Bool)

(assert (=> start!380956 e!2506906))

(assert (=> start!380956 true))

(declare-fun e!2506909 () Bool)

(assert (=> start!380956 e!2506909))

(assert (=> start!380956 e!2506922))

(declare-fun b!4040348 () Bool)

(declare-fun res!1645459 () Bool)

(assert (=> b!4040348 (=> (not res!1645459) (not e!2506921))))

(assert (=> b!4040348 (= res!1645459 (>= (size!32325 suffix!1299) (size!32325 newSuffix!27)))))

(declare-fun b!4040349 () Bool)

(declare-fun e!2506911 () Bool)

(declare-fun e!2506929 () Bool)

(assert (=> b!4040349 (= e!2506911 e!2506929)))

(declare-fun res!1645460 () Bool)

(assert (=> b!4040349 (=> res!1645460 e!2506929)))

(declare-fun lt!1437797 () Option!9336)

(assert (=> b!4040349 (= res!1645460 (not (= lt!1437797 lt!1437811)))))

(assert (=> b!4040349 (= lt!1437797 (Some!9335 (tuple2!42323 lt!1437801 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2821 (LexerInterface!6511 Rule!13644 List!43365) Option!9336)

(assert (=> b!4040349 (= lt!1437797 (maxPrefixOneRule!2821 thiss!21717 (rule!9994 token!484) lt!1437817))))

(declare-fun lt!1437786 () TokenValue!7152)

(assert (=> b!4040349 (= lt!1437801 (Token!12983 lt!1437786 (rule!9994 token!484) lt!1437779 lt!1437799))))

(declare-fun apply!10111 (TokenValueInjection!13732 BalanceConc!25860) TokenValue!7152)

(declare-fun seqFromList!5139 (List!43365) BalanceConc!25860)

(assert (=> b!4040349 (= lt!1437786 (apply!10111 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 lt!1437799)))))

(declare-fun lt!1437816 () Unit!62457)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1627 (LexerInterface!6511 List!43367 List!43365 List!43365 List!43365 Rule!13644) Unit!62457)

(assert (=> b!4040349 (= lt!1437816 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1627 thiss!21717 rules!2999 lt!1437799 lt!1437817 suffixResult!105 (rule!9994 token!484)))))

(declare-fun lt!1437808 () List!43365)

(assert (=> b!4040349 (= lt!1437808 suffixResult!105)))

(declare-fun lt!1437815 () Unit!62457)

(assert (=> b!4040349 (= lt!1437815 (lemmaSamePrefixThenSameSuffix!2170 lt!1437799 lt!1437808 lt!1437799 suffixResult!105 lt!1437817))))

(declare-fun lt!1437790 () List!43365)

(assert (=> b!4040349 (isPrefix!4009 lt!1437799 lt!1437790)))

(declare-fun lt!1437812 () Unit!62457)

(assert (=> b!4040349 (= lt!1437812 (lemmaConcatTwoListThenFirstIsPrefix!2844 lt!1437799 lt!1437808))))

(declare-fun e!2506916 () Bool)

(assert (=> b!4040350 (= e!2506916 (and tp!1226787 tp!1226791))))

(declare-fun b!4040351 () Bool)

(declare-fun res!1645454 () Bool)

(assert (=> b!4040351 (=> (not res!1645454) (not e!2506921))))

(declare-fun isEmpty!25809 (List!43367) Bool)

(assert (=> b!4040351 (= res!1645454 (not (isEmpty!25809 rules!2999)))))

(declare-fun b!4040352 () Bool)

(declare-fun res!1645445 () Bool)

(assert (=> b!4040352 (=> (not res!1645445) (not e!2506924))))

(assert (=> b!4040352 (= res!1645445 (= (value!217911 token!484) lt!1437786))))

(declare-fun b!4040353 () Bool)

(declare-fun res!1645449 () Bool)

(assert (=> b!4040353 (=> (not res!1645449) (not e!2506921))))

(declare-fun rulesInvariant!5854 (LexerInterface!6511 List!43367) Bool)

(assert (=> b!4040353 (= res!1645449 (rulesInvariant!5854 thiss!21717 rules!2999))))

(assert (=> b!4040354 (= e!2506907 (and tp!1226797 tp!1226789))))

(declare-fun b!4040355 () Bool)

(declare-fun res!1645462 () Bool)

(assert (=> b!4040355 (=> (not res!1645462) (not e!2506924))))

(assert (=> b!4040355 (= res!1645462 (= (size!32326 token!484) (size!32325 (originalCharacters!7522 token!484))))))

(declare-fun b!4040356 () Bool)

(assert (=> b!4040356 (= e!2506919 e!2506927)))

(declare-fun res!1645463 () Bool)

(assert (=> b!4040356 (=> (not res!1645463) (not e!2506927))))

(declare-fun lt!1437788 () List!43365)

(assert (=> b!4040356 (= res!1645463 (= lt!1437788 lt!1437793))))

(assert (=> b!4040356 (= lt!1437793 (++!11324 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43365)

(assert (=> b!4040356 (= lt!1437788 (++!11324 lt!1437799 newSuffixResult!27))))

(declare-fun b!4040357 () Bool)

(declare-fun tp!1226792 () Bool)

(assert (=> b!4040357 (= e!2506908 (and tp_is_empty!20625 tp!1226792))))

(declare-fun b!4040358 () Bool)

(assert (=> b!4040358 (= e!2506905 e!2506931)))

(declare-fun res!1645457 () Bool)

(assert (=> b!4040358 (=> res!1645457 e!2506931)))

(declare-fun lt!1437803 () BalanceConc!25860)

(assert (=> b!4040358 (= res!1645457 (not (= lt!1437813 (Some!9335 (tuple2!42323 (Token!12983 (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437803) (rule!9994 (_1!24295 (v!39735 lt!1437813))) (size!32325 lt!1437800) lt!1437800) (_2!24295 (v!39735 lt!1437813)))))))))

(declare-fun lt!1437782 () Unit!62457)

(declare-fun lemmaSemiInverse!1907 (TokenValueInjection!13732 BalanceConc!25860) Unit!62457)

(assert (=> b!4040358 (= lt!1437782 (lemmaSemiInverse!1907 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437803))))

(assert (=> b!4040358 (= lt!1437803 (seqFromList!5139 lt!1437800))))

(declare-fun b!4040359 () Bool)

(declare-fun e!2506913 () Bool)

(declare-fun tp!1226796 () Bool)

(assert (=> b!4040359 (= e!2506909 (and e!2506913 tp!1226796))))

(declare-fun b!4040360 () Bool)

(assert (=> b!4040360 (= e!2506928 e!2506911)))

(declare-fun res!1645458 () Bool)

(assert (=> b!4040360 (=> res!1645458 e!2506911)))

(declare-fun lt!1437810 () List!43365)

(assert (=> b!4040360 (= res!1645458 (or (not (= lt!1437817 lt!1437810)) (not (= lt!1437817 lt!1437790))))))

(assert (=> b!4040360 (= lt!1437810 lt!1437790)))

(assert (=> b!4040360 (= lt!1437790 (++!11324 lt!1437799 lt!1437808))))

(assert (=> b!4040360 (= lt!1437810 (++!11324 lt!1437789 suffix!1299))))

(assert (=> b!4040360 (= lt!1437808 (++!11324 lt!1437807 suffix!1299))))

(declare-fun lt!1437783 () Unit!62457)

(declare-fun lemmaConcatAssociativity!2626 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> b!4040360 (= lt!1437783 (lemmaConcatAssociativity!2626 lt!1437799 lt!1437807 suffix!1299))))

(declare-fun b!4040361 () Bool)

(assert (=> b!4040361 (= e!2506929 e!2506923)))

(declare-fun res!1645464 () Bool)

(assert (=> b!4040361 (=> res!1645464 e!2506923)))

(assert (=> b!4040361 (= res!1645464 (not (matchR!5780 (regex!6922 (rule!9994 token!484)) lt!1437799)))))

(assert (=> b!4040361 (isPrefix!4009 lt!1437799 lt!1437793)))

(declare-fun lt!1437791 () Unit!62457)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!802 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> b!4040361 (= lt!1437791 (lemmaPrefixStaysPrefixWhenAddingToSuffix!802 lt!1437799 prefix!494 newSuffix!27))))

(declare-fun lt!1437809 () Unit!62457)

(assert (=> b!4040361 (= lt!1437809 (lemmaPrefixStaysPrefixWhenAddingToSuffix!802 lt!1437799 prefix!494 suffix!1299))))

(declare-fun b!4040362 () Bool)

(declare-fun tp!1226794 () Bool)

(assert (=> b!4040362 (= e!2506906 (and tp_is_empty!20625 tp!1226794))))

(declare-fun b!4040363 () Bool)

(declare-fun tp!1226790 () Bool)

(assert (=> b!4040363 (= e!2506913 (and tp!1226790 (inv!57785 (tag!7782 (h!48663 rules!2999))) (inv!57788 (transformation!6922 (h!48663 rules!2999))) e!2506916))))

(declare-fun b!4040364 () Bool)

(declare-fun tp!1226795 () Bool)

(assert (=> b!4040364 (= e!2506920 (and tp_is_empty!20625 tp!1226795))))

(assert (= (and start!380956 res!1645465) b!4040351))

(assert (= (and b!4040351 res!1645454) b!4040353))

(assert (= (and b!4040353 res!1645449) b!4040348))

(assert (= (and b!4040348 res!1645459) b!4040344))

(assert (= (and b!4040344 res!1645455) b!4040331))

(assert (= (and b!4040331 res!1645456) b!4040356))

(assert (= (and b!4040356 res!1645463) b!4040335))

(assert (= (and b!4040335 res!1645467) b!4040334))

(assert (= (and b!4040334 (not res!1645450)) b!4040333))

(assert (= (and b!4040333 (not res!1645446)) b!4040347))

(assert (= (and b!4040347 (not res!1645451)) b!4040360))

(assert (= (and b!4040360 (not res!1645458)) b!4040349))

(assert (= (and b!4040349 (not res!1645460)) b!4040361))

(assert (= (and b!4040361 (not res!1645464)) b!4040338))

(assert (= (and b!4040338 res!1645448) b!4040352))

(assert (= (and b!4040352 res!1645445) b!4040355))

(assert (= (and b!4040355 res!1645462) b!4040336))

(assert (= (and b!4040338 (not res!1645452)) b!4040346))

(assert (= (and b!4040346 (not res!1645453)) b!4040337))

(assert (= (and b!4040337 (not res!1645466)) b!4040340))

(assert (= (and b!4040340 (not res!1645461)) b!4040332))

(assert (= (and b!4040332 (not res!1645447)) b!4040358))

(assert (= (and b!4040358 (not res!1645457)) b!4040342))

(assert (= (and start!380956 ((_ is Cons!43241) prefix!494)) b!4040357))

(assert (= b!4040343 b!4040354))

(assert (= b!4040341 b!4040343))

(assert (= start!380956 b!4040341))

(assert (= (and start!380956 ((_ is Cons!43241) suffixResult!105)) b!4040364))

(assert (= (and start!380956 ((_ is Cons!43241) suffix!1299)) b!4040339))

(assert (= (and start!380956 ((_ is Cons!43241) newSuffix!27)) b!4040362))

(assert (= b!4040363 b!4040350))

(assert (= b!4040359 b!4040363))

(assert (= (and start!380956 ((_ is Cons!43243) rules!2999)) b!4040359))

(assert (= (and start!380956 ((_ is Cons!43241) newSuffixResult!27)) b!4040345))

(declare-fun m!4636127 () Bool)

(assert (=> b!4040343 m!4636127))

(declare-fun m!4636129 () Bool)

(assert (=> b!4040343 m!4636129))

(declare-fun m!4636131 () Bool)

(assert (=> b!4040347 m!4636131))

(declare-fun m!4636133 () Bool)

(assert (=> b!4040347 m!4636133))

(declare-fun m!4636135 () Bool)

(assert (=> b!4040347 m!4636135))

(declare-fun m!4636137 () Bool)

(assert (=> b!4040347 m!4636137))

(declare-fun m!4636139 () Bool)

(assert (=> b!4040348 m!4636139))

(declare-fun m!4636141 () Bool)

(assert (=> b!4040348 m!4636141))

(declare-fun m!4636143 () Bool)

(assert (=> b!4040341 m!4636143))

(declare-fun m!4636145 () Bool)

(assert (=> b!4040331 m!4636145))

(declare-fun m!4636147 () Bool)

(assert (=> b!4040331 m!4636147))

(declare-fun m!4636149 () Bool)

(assert (=> b!4040331 m!4636149))

(assert (=> b!4040331 m!4636149))

(declare-fun m!4636151 () Bool)

(assert (=> b!4040331 m!4636151))

(declare-fun m!4636153 () Bool)

(assert (=> b!4040344 m!4636153))

(declare-fun m!4636155 () Bool)

(assert (=> b!4040349 m!4636155))

(declare-fun m!4636157 () Bool)

(assert (=> b!4040349 m!4636157))

(declare-fun m!4636159 () Bool)

(assert (=> b!4040349 m!4636159))

(declare-fun m!4636161 () Bool)

(assert (=> b!4040349 m!4636161))

(declare-fun m!4636163 () Bool)

(assert (=> b!4040349 m!4636163))

(assert (=> b!4040349 m!4636155))

(declare-fun m!4636165 () Bool)

(assert (=> b!4040349 m!4636165))

(declare-fun m!4636167 () Bool)

(assert (=> b!4040349 m!4636167))

(declare-fun m!4636169 () Bool)

(assert (=> b!4040355 m!4636169))

(declare-fun m!4636171 () Bool)

(assert (=> b!4040346 m!4636171))

(declare-fun m!4636173 () Bool)

(assert (=> b!4040346 m!4636173))

(declare-fun m!4636175 () Bool)

(assert (=> b!4040346 m!4636175))

(declare-fun m!4636177 () Bool)

(assert (=> b!4040346 m!4636177))

(declare-fun m!4636179 () Bool)

(assert (=> b!4040360 m!4636179))

(declare-fun m!4636181 () Bool)

(assert (=> b!4040360 m!4636181))

(declare-fun m!4636183 () Bool)

(assert (=> b!4040360 m!4636183))

(declare-fun m!4636185 () Bool)

(assert (=> b!4040360 m!4636185))

(declare-fun m!4636187 () Bool)

(assert (=> b!4040353 m!4636187))

(declare-fun m!4636189 () Bool)

(assert (=> b!4040356 m!4636189))

(declare-fun m!4636191 () Bool)

(assert (=> b!4040356 m!4636191))

(declare-fun m!4636193 () Bool)

(assert (=> b!4040363 m!4636193))

(declare-fun m!4636195 () Bool)

(assert (=> b!4040363 m!4636195))

(declare-fun m!4636197 () Bool)

(assert (=> b!4040334 m!4636197))

(declare-fun m!4636199 () Bool)

(assert (=> b!4040334 m!4636199))

(declare-fun m!4636201 () Bool)

(assert (=> b!4040334 m!4636201))

(declare-fun m!4636203 () Bool)

(assert (=> b!4040334 m!4636203))

(declare-fun m!4636205 () Bool)

(assert (=> b!4040332 m!4636205))

(declare-fun m!4636207 () Bool)

(assert (=> start!380956 m!4636207))

(declare-fun m!4636209 () Bool)

(assert (=> b!4040358 m!4636209))

(declare-fun m!4636211 () Bool)

(assert (=> b!4040358 m!4636211))

(declare-fun m!4636213 () Bool)

(assert (=> b!4040358 m!4636213))

(declare-fun m!4636215 () Bool)

(assert (=> b!4040358 m!4636215))

(declare-fun m!4636217 () Bool)

(assert (=> b!4040333 m!4636217))

(declare-fun m!4636219 () Bool)

(assert (=> b!4040333 m!4636219))

(declare-fun m!4636221 () Bool)

(assert (=> b!4040333 m!4636221))

(declare-fun m!4636223 () Bool)

(assert (=> b!4040333 m!4636223))

(declare-fun m!4636225 () Bool)

(assert (=> b!4040333 m!4636225))

(declare-fun m!4636227 () Bool)

(assert (=> b!4040342 m!4636227))

(declare-fun m!4636229 () Bool)

(assert (=> b!4040335 m!4636229))

(declare-fun m!4636231 () Bool)

(assert (=> b!4040335 m!4636231))

(declare-fun m!4636233 () Bool)

(assert (=> b!4040351 m!4636233))

(declare-fun m!4636235 () Bool)

(assert (=> b!4040337 m!4636235))

(declare-fun m!4636237 () Bool)

(assert (=> b!4040337 m!4636237))

(declare-fun m!4636239 () Bool)

(assert (=> b!4040337 m!4636239))

(assert (=> b!4040337 m!4636237))

(declare-fun m!4636241 () Bool)

(assert (=> b!4040337 m!4636241))

(declare-fun m!4636243 () Bool)

(assert (=> b!4040337 m!4636243))

(declare-fun m!4636245 () Bool)

(assert (=> b!4040337 m!4636245))

(declare-fun m!4636247 () Bool)

(assert (=> b!4040337 m!4636247))

(declare-fun m!4636249 () Bool)

(assert (=> b!4040337 m!4636249))

(declare-fun m!4636251 () Bool)

(assert (=> b!4040361 m!4636251))

(declare-fun m!4636253 () Bool)

(assert (=> b!4040361 m!4636253))

(declare-fun m!4636255 () Bool)

(assert (=> b!4040361 m!4636255))

(declare-fun m!4636257 () Bool)

(assert (=> b!4040361 m!4636257))

(declare-fun m!4636259 () Bool)

(assert (=> b!4040338 m!4636259))

(declare-fun m!4636261 () Bool)

(assert (=> b!4040338 m!4636261))

(declare-fun m!4636263 () Bool)

(assert (=> b!4040338 m!4636263))

(declare-fun m!4636265 () Bool)

(assert (=> b!4040338 m!4636265))

(declare-fun m!4636267 () Bool)

(assert (=> b!4040340 m!4636267))

(check-sat (not b!4040349) (not b!4040346) (not b!4040335) (not b_next!113231) (not b!4040337) b_and!310575 (not b!4040343) (not b!4040358) (not b!4040361) (not b!4040340) (not b!4040348) (not b_next!113225) (not b!4040341) (not b_next!113227) tp_is_empty!20625 (not b!4040333) (not b!4040363) (not b!4040357) (not b!4040355) b_and!310579 (not b!4040338) (not b!4040347) (not b_next!113229) (not b!4040342) (not b!4040364) (not b!4040332) (not b!4040339) (not b!4040359) (not b!4040345) (not b!4040331) b_and!310581 (not start!380956) (not b!4040362) (not b!4040344) (not b!4040351) (not b!4040360) b_and!310577 (not b!4040353) (not b!4040356) (not b!4040334))
(check-sat (not b_next!113227) (not b_next!113231) b_and!310579 (not b_next!113229) b_and!310575 b_and!310581 (not b_next!113225) b_and!310577)
(get-model)

(declare-fun b!4040375 () Bool)

(declare-fun res!1645476 () Bool)

(declare-fun e!2506938 () Bool)

(assert (=> b!4040375 (=> (not res!1645476) (not e!2506938))))

(declare-fun lt!1437820 () List!43365)

(assert (=> b!4040375 (= res!1645476 (= (size!32325 lt!1437820) (+ (size!32325 lt!1437799) (size!32325 lt!1437808))))))

(declare-fun d!1198184 () Bool)

(assert (=> d!1198184 e!2506938))

(declare-fun res!1645477 () Bool)

(assert (=> d!1198184 (=> (not res!1645477) (not e!2506938))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6577 (List!43365) (InoxSet C!23840))

(assert (=> d!1198184 (= res!1645477 (= (content!6577 lt!1437820) ((_ map or) (content!6577 lt!1437799) (content!6577 lt!1437808))))))

(declare-fun e!2506937 () List!43365)

(assert (=> d!1198184 (= lt!1437820 e!2506937)))

(declare-fun c!697936 () Bool)

(assert (=> d!1198184 (= c!697936 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198184 (= (++!11324 lt!1437799 lt!1437808) lt!1437820)))

(declare-fun b!4040374 () Bool)

(assert (=> b!4040374 (= e!2506937 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) lt!1437808)))))

(declare-fun b!4040373 () Bool)

(assert (=> b!4040373 (= e!2506937 lt!1437808)))

(declare-fun b!4040376 () Bool)

(assert (=> b!4040376 (= e!2506938 (or (not (= lt!1437808 Nil!43241)) (= lt!1437820 lt!1437799)))))

(assert (= (and d!1198184 c!697936) b!4040373))

(assert (= (and d!1198184 (not c!697936)) b!4040374))

(assert (= (and d!1198184 res!1645477) b!4040375))

(assert (= (and b!4040375 res!1645476) b!4040376))

(declare-fun m!4636269 () Bool)

(assert (=> b!4040375 m!4636269))

(assert (=> b!4040375 m!4636145))

(declare-fun m!4636271 () Bool)

(assert (=> b!4040375 m!4636271))

(declare-fun m!4636273 () Bool)

(assert (=> d!1198184 m!4636273))

(declare-fun m!4636275 () Bool)

(assert (=> d!1198184 m!4636275))

(declare-fun m!4636277 () Bool)

(assert (=> d!1198184 m!4636277))

(declare-fun m!4636279 () Bool)

(assert (=> b!4040374 m!4636279))

(assert (=> b!4040360 d!1198184))

(declare-fun b!4040379 () Bool)

(declare-fun res!1645478 () Bool)

(declare-fun e!2506940 () Bool)

(assert (=> b!4040379 (=> (not res!1645478) (not e!2506940))))

(declare-fun lt!1437821 () List!43365)

(assert (=> b!4040379 (= res!1645478 (= (size!32325 lt!1437821) (+ (size!32325 lt!1437789) (size!32325 suffix!1299))))))

(declare-fun d!1198186 () Bool)

(assert (=> d!1198186 e!2506940))

(declare-fun res!1645479 () Bool)

(assert (=> d!1198186 (=> (not res!1645479) (not e!2506940))))

(assert (=> d!1198186 (= res!1645479 (= (content!6577 lt!1437821) ((_ map or) (content!6577 lt!1437789) (content!6577 suffix!1299))))))

(declare-fun e!2506939 () List!43365)

(assert (=> d!1198186 (= lt!1437821 e!2506939)))

(declare-fun c!697937 () Bool)

(assert (=> d!1198186 (= c!697937 ((_ is Nil!43241) lt!1437789))))

(assert (=> d!1198186 (= (++!11324 lt!1437789 suffix!1299) lt!1437821)))

(declare-fun b!4040378 () Bool)

(assert (=> b!4040378 (= e!2506939 (Cons!43241 (h!48661 lt!1437789) (++!11324 (t!334994 lt!1437789) suffix!1299)))))

(declare-fun b!4040377 () Bool)

(assert (=> b!4040377 (= e!2506939 suffix!1299)))

(declare-fun b!4040380 () Bool)

(assert (=> b!4040380 (= e!2506940 (or (not (= suffix!1299 Nil!43241)) (= lt!1437821 lt!1437789)))))

(assert (= (and d!1198186 c!697937) b!4040377))

(assert (= (and d!1198186 (not c!697937)) b!4040378))

(assert (= (and d!1198186 res!1645479) b!4040379))

(assert (= (and b!4040379 res!1645478) b!4040380))

(declare-fun m!4636281 () Bool)

(assert (=> b!4040379 m!4636281))

(declare-fun m!4636283 () Bool)

(assert (=> b!4040379 m!4636283))

(assert (=> b!4040379 m!4636139))

(declare-fun m!4636285 () Bool)

(assert (=> d!1198186 m!4636285))

(declare-fun m!4636287 () Bool)

(assert (=> d!1198186 m!4636287))

(declare-fun m!4636289 () Bool)

(assert (=> d!1198186 m!4636289))

(declare-fun m!4636291 () Bool)

(assert (=> b!4040378 m!4636291))

(assert (=> b!4040360 d!1198186))

(declare-fun b!4040383 () Bool)

(declare-fun res!1645480 () Bool)

(declare-fun e!2506942 () Bool)

(assert (=> b!4040383 (=> (not res!1645480) (not e!2506942))))

(declare-fun lt!1437822 () List!43365)

(assert (=> b!4040383 (= res!1645480 (= (size!32325 lt!1437822) (+ (size!32325 lt!1437807) (size!32325 suffix!1299))))))

(declare-fun d!1198188 () Bool)

(assert (=> d!1198188 e!2506942))

(declare-fun res!1645481 () Bool)

(assert (=> d!1198188 (=> (not res!1645481) (not e!2506942))))

(assert (=> d!1198188 (= res!1645481 (= (content!6577 lt!1437822) ((_ map or) (content!6577 lt!1437807) (content!6577 suffix!1299))))))

(declare-fun e!2506941 () List!43365)

(assert (=> d!1198188 (= lt!1437822 e!2506941)))

(declare-fun c!697938 () Bool)

(assert (=> d!1198188 (= c!697938 ((_ is Nil!43241) lt!1437807))))

(assert (=> d!1198188 (= (++!11324 lt!1437807 suffix!1299) lt!1437822)))

(declare-fun b!4040382 () Bool)

(assert (=> b!4040382 (= e!2506941 (Cons!43241 (h!48661 lt!1437807) (++!11324 (t!334994 lt!1437807) suffix!1299)))))

(declare-fun b!4040381 () Bool)

(assert (=> b!4040381 (= e!2506941 suffix!1299)))

(declare-fun b!4040384 () Bool)

(assert (=> b!4040384 (= e!2506942 (or (not (= suffix!1299 Nil!43241)) (= lt!1437822 lt!1437807)))))

(assert (= (and d!1198188 c!697938) b!4040381))

(assert (= (and d!1198188 (not c!697938)) b!4040382))

(assert (= (and d!1198188 res!1645481) b!4040383))

(assert (= (and b!4040383 res!1645480) b!4040384))

(declare-fun m!4636293 () Bool)

(assert (=> b!4040383 m!4636293))

(declare-fun m!4636295 () Bool)

(assert (=> b!4040383 m!4636295))

(assert (=> b!4040383 m!4636139))

(declare-fun m!4636297 () Bool)

(assert (=> d!1198188 m!4636297))

(declare-fun m!4636299 () Bool)

(assert (=> d!1198188 m!4636299))

(assert (=> d!1198188 m!4636289))

(declare-fun m!4636301 () Bool)

(assert (=> b!4040382 m!4636301))

(assert (=> b!4040360 d!1198188))

(declare-fun d!1198190 () Bool)

(assert (=> d!1198190 (= (++!11324 (++!11324 lt!1437799 lt!1437807) suffix!1299) (++!11324 lt!1437799 (++!11324 lt!1437807 suffix!1299)))))

(declare-fun lt!1437825 () Unit!62457)

(declare-fun choose!24482 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> d!1198190 (= lt!1437825 (choose!24482 lt!1437799 lt!1437807 suffix!1299))))

(assert (=> d!1198190 (= (lemmaConcatAssociativity!2626 lt!1437799 lt!1437807 suffix!1299) lt!1437825)))

(declare-fun bs!590853 () Bool)

(assert (= bs!590853 d!1198190))

(assert (=> bs!590853 m!4636183))

(declare-fun m!4636303 () Bool)

(assert (=> bs!590853 m!4636303))

(assert (=> bs!590853 m!4636131))

(declare-fun m!4636305 () Bool)

(assert (=> bs!590853 m!4636305))

(assert (=> bs!590853 m!4636131))

(declare-fun m!4636307 () Bool)

(assert (=> bs!590853 m!4636307))

(assert (=> bs!590853 m!4636183))

(assert (=> b!4040360 d!1198190))

(declare-fun b!4040387 () Bool)

(declare-fun res!1645486 () Bool)

(declare-fun e!2506944 () Bool)

(assert (=> b!4040387 (=> (not res!1645486) (not e!2506944))))

(declare-fun lt!1437826 () List!43365)

(assert (=> b!4040387 (= res!1645486 (= (size!32325 lt!1437826) (+ (size!32325 lt!1437799) (size!32325 lt!1437805))))))

(declare-fun d!1198192 () Bool)

(assert (=> d!1198192 e!2506944))

(declare-fun res!1645487 () Bool)

(assert (=> d!1198192 (=> (not res!1645487) (not e!2506944))))

(assert (=> d!1198192 (= res!1645487 (= (content!6577 lt!1437826) ((_ map or) (content!6577 lt!1437799) (content!6577 lt!1437805))))))

(declare-fun e!2506943 () List!43365)

(assert (=> d!1198192 (= lt!1437826 e!2506943)))

(declare-fun c!697939 () Bool)

(assert (=> d!1198192 (= c!697939 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198192 (= (++!11324 lt!1437799 lt!1437805) lt!1437826)))

(declare-fun b!4040386 () Bool)

(assert (=> b!4040386 (= e!2506943 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) lt!1437805)))))

(declare-fun b!4040385 () Bool)

(assert (=> b!4040385 (= e!2506943 lt!1437805)))

(declare-fun b!4040388 () Bool)

(assert (=> b!4040388 (= e!2506944 (or (not (= lt!1437805 Nil!43241)) (= lt!1437826 lt!1437799)))))

(assert (= (and d!1198192 c!697939) b!4040385))

(assert (= (and d!1198192 (not c!697939)) b!4040386))

(assert (= (and d!1198192 res!1645487) b!4040387))

(assert (= (and b!4040387 res!1645486) b!4040388))

(declare-fun m!4636309 () Bool)

(assert (=> b!4040387 m!4636309))

(assert (=> b!4040387 m!4636145))

(declare-fun m!4636311 () Bool)

(assert (=> b!4040387 m!4636311))

(declare-fun m!4636313 () Bool)

(assert (=> d!1198192 m!4636313))

(assert (=> d!1198192 m!4636275))

(declare-fun m!4636315 () Bool)

(assert (=> d!1198192 m!4636315))

(declare-fun m!4636317 () Bool)

(assert (=> b!4040386 m!4636317))

(assert (=> b!4040338 d!1198192))

(declare-fun d!1198194 () Bool)

(declare-fun lt!1437832 () List!43365)

(assert (=> d!1198194 (= (++!11324 lt!1437799 lt!1437832) lt!1437817)))

(declare-fun e!2506950 () List!43365)

(assert (=> d!1198194 (= lt!1437832 e!2506950)))

(declare-fun c!697945 () Bool)

(assert (=> d!1198194 (= c!697945 ((_ is Cons!43241) lt!1437799))))

(assert (=> d!1198194 (>= (size!32325 lt!1437817) (size!32325 lt!1437799))))

(assert (=> d!1198194 (= (getSuffix!2426 lt!1437817 lt!1437799) lt!1437832)))

(declare-fun b!4040399 () Bool)

(declare-fun tail!6285 (List!43365) List!43365)

(assert (=> b!4040399 (= e!2506950 (getSuffix!2426 (tail!6285 lt!1437817) (t!334994 lt!1437799)))))

(declare-fun b!4040400 () Bool)

(assert (=> b!4040400 (= e!2506950 lt!1437817)))

(assert (= (and d!1198194 c!697945) b!4040399))

(assert (= (and d!1198194 (not c!697945)) b!4040400))

(declare-fun m!4636323 () Bool)

(assert (=> d!1198194 m!4636323))

(declare-fun m!4636325 () Bool)

(assert (=> d!1198194 m!4636325))

(assert (=> d!1198194 m!4636145))

(declare-fun m!4636327 () Bool)

(assert (=> b!4040399 m!4636327))

(assert (=> b!4040399 m!4636327))

(declare-fun m!4636329 () Bool)

(assert (=> b!4040399 m!4636329))

(assert (=> b!4040338 d!1198194))

(declare-fun b!4040425 () Bool)

(declare-fun e!2506968 () Bool)

(assert (=> b!4040425 (= e!2506968 (isPrefix!4009 (tail!6285 lt!1437817) (tail!6285 lt!1437817)))))

(declare-fun b!4040426 () Bool)

(declare-fun e!2506970 () Bool)

(assert (=> b!4040426 (= e!2506970 (>= (size!32325 lt!1437817) (size!32325 lt!1437817)))))

(declare-fun b!4040424 () Bool)

(declare-fun res!1645502 () Bool)

(assert (=> b!4040424 (=> (not res!1645502) (not e!2506968))))

(declare-fun head!8553 (List!43365) C!23840)

(assert (=> b!4040424 (= res!1645502 (= (head!8553 lt!1437817) (head!8553 lt!1437817)))))

(declare-fun d!1198202 () Bool)

(assert (=> d!1198202 e!2506970))

(declare-fun res!1645501 () Bool)

(assert (=> d!1198202 (=> res!1645501 e!2506970)))

(declare-fun lt!1437840 () Bool)

(assert (=> d!1198202 (= res!1645501 (not lt!1437840))))

(declare-fun e!2506969 () Bool)

(assert (=> d!1198202 (= lt!1437840 e!2506969)))

(declare-fun res!1645500 () Bool)

(assert (=> d!1198202 (=> res!1645500 e!2506969)))

(assert (=> d!1198202 (= res!1645500 ((_ is Nil!43241) lt!1437817))))

(assert (=> d!1198202 (= (isPrefix!4009 lt!1437817 lt!1437817) lt!1437840)))

(declare-fun b!4040423 () Bool)

(assert (=> b!4040423 (= e!2506969 e!2506968)))

(declare-fun res!1645499 () Bool)

(assert (=> b!4040423 (=> (not res!1645499) (not e!2506968))))

(assert (=> b!4040423 (= res!1645499 (not ((_ is Nil!43241) lt!1437817)))))

(assert (= (and d!1198202 (not res!1645500)) b!4040423))

(assert (= (and b!4040423 res!1645499) b!4040424))

(assert (= (and b!4040424 res!1645502) b!4040425))

(assert (= (and d!1198202 (not res!1645501)) b!4040426))

(assert (=> b!4040425 m!4636327))

(assert (=> b!4040425 m!4636327))

(assert (=> b!4040425 m!4636327))

(assert (=> b!4040425 m!4636327))

(declare-fun m!4636351 () Bool)

(assert (=> b!4040425 m!4636351))

(assert (=> b!4040426 m!4636325))

(assert (=> b!4040426 m!4636325))

(declare-fun m!4636353 () Bool)

(assert (=> b!4040424 m!4636353))

(assert (=> b!4040424 m!4636353))

(assert (=> b!4040338 d!1198202))

(declare-fun d!1198216 () Bool)

(assert (=> d!1198216 (isPrefix!4009 lt!1437817 lt!1437817)))

(declare-fun lt!1437845 () Unit!62457)

(declare-fun choose!24484 (List!43365 List!43365) Unit!62457)

(assert (=> d!1198216 (= lt!1437845 (choose!24484 lt!1437817 lt!1437817))))

(assert (=> d!1198216 (= (lemmaIsPrefixRefl!2576 lt!1437817 lt!1437817) lt!1437845)))

(declare-fun bs!590855 () Bool)

(assert (= bs!590855 d!1198216))

(assert (=> bs!590855 m!4636263))

(declare-fun m!4636355 () Bool)

(assert (=> bs!590855 m!4636355))

(assert (=> b!4040338 d!1198216))

(declare-fun b!4040429 () Bool)

(declare-fun res!1645503 () Bool)

(declare-fun e!2506972 () Bool)

(assert (=> b!4040429 (=> (not res!1645503) (not e!2506972))))

(declare-fun lt!1437846 () List!43365)

(assert (=> b!4040429 (= res!1645503 (= (size!32325 lt!1437846) (+ (size!32325 lt!1437800) (size!32325 (_2!24295 (v!39735 lt!1437813))))))))

(declare-fun d!1198218 () Bool)

(assert (=> d!1198218 e!2506972))

(declare-fun res!1645504 () Bool)

(assert (=> d!1198218 (=> (not res!1645504) (not e!2506972))))

(assert (=> d!1198218 (= res!1645504 (= (content!6577 lt!1437846) ((_ map or) (content!6577 lt!1437800) (content!6577 (_2!24295 (v!39735 lt!1437813))))))))

(declare-fun e!2506971 () List!43365)

(assert (=> d!1198218 (= lt!1437846 e!2506971)))

(declare-fun c!697949 () Bool)

(assert (=> d!1198218 (= c!697949 ((_ is Nil!43241) lt!1437800))))

(assert (=> d!1198218 (= (++!11324 lt!1437800 (_2!24295 (v!39735 lt!1437813))) lt!1437846)))

(declare-fun b!4040428 () Bool)

(assert (=> b!4040428 (= e!2506971 (Cons!43241 (h!48661 lt!1437800) (++!11324 (t!334994 lt!1437800) (_2!24295 (v!39735 lt!1437813)))))))

(declare-fun b!4040427 () Bool)

(assert (=> b!4040427 (= e!2506971 (_2!24295 (v!39735 lt!1437813)))))

(declare-fun b!4040430 () Bool)

(assert (=> b!4040430 (= e!2506972 (or (not (= (_2!24295 (v!39735 lt!1437813)) Nil!43241)) (= lt!1437846 lt!1437800)))))

(assert (= (and d!1198218 c!697949) b!4040427))

(assert (= (and d!1198218 (not c!697949)) b!4040428))

(assert (= (and d!1198218 res!1645504) b!4040429))

(assert (= (and b!4040429 res!1645503) b!4040430))

(declare-fun m!4636357 () Bool)

(assert (=> b!4040429 m!4636357))

(assert (=> b!4040429 m!4636211))

(declare-fun m!4636359 () Bool)

(assert (=> b!4040429 m!4636359))

(declare-fun m!4636361 () Bool)

(assert (=> d!1198218 m!4636361))

(declare-fun m!4636363 () Bool)

(assert (=> d!1198218 m!4636363))

(declare-fun m!4636365 () Bool)

(assert (=> d!1198218 m!4636365))

(declare-fun m!4636367 () Bool)

(assert (=> b!4040428 m!4636367))

(assert (=> b!4040340 d!1198218))

(declare-fun b!4040459 () Bool)

(declare-fun e!2506990 () Bool)

(declare-fun lt!1437849 () Bool)

(declare-fun call!287381 () Bool)

(assert (=> b!4040459 (= e!2506990 (= lt!1437849 call!287381))))

(declare-fun d!1198220 () Bool)

(assert (=> d!1198220 e!2506990))

(declare-fun c!697958 () Bool)

(assert (=> d!1198220 (= c!697958 ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun e!2506993 () Bool)

(assert (=> d!1198220 (= lt!1437849 e!2506993)))

(declare-fun c!697957 () Bool)

(assert (=> d!1198220 (= c!697957 (isEmpty!25808 lt!1437799))))

(declare-fun validRegex!5350 (Regex!11827) Bool)

(assert (=> d!1198220 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1198220 (= (matchR!5780 (regex!6922 (rule!9994 token!484)) lt!1437799) lt!1437849)))

(declare-fun b!4040460 () Bool)

(declare-fun e!2506987 () Bool)

(declare-fun e!2506989 () Bool)

(assert (=> b!4040460 (= e!2506987 e!2506989)))

(declare-fun res!1645527 () Bool)

(assert (=> b!4040460 (=> (not res!1645527) (not e!2506989))))

(assert (=> b!4040460 (= res!1645527 (not lt!1437849))))

(declare-fun b!4040461 () Bool)

(declare-fun derivativeStep!3555 (Regex!11827 C!23840) Regex!11827)

(assert (=> b!4040461 (= e!2506993 (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)) (tail!6285 lt!1437799)))))

(declare-fun b!4040462 () Bool)

(declare-fun res!1645522 () Bool)

(declare-fun e!2506988 () Bool)

(assert (=> b!4040462 (=> (not res!1645522) (not e!2506988))))

(assert (=> b!4040462 (= res!1645522 (isEmpty!25808 (tail!6285 lt!1437799)))))

(declare-fun b!4040463 () Bool)

(declare-fun res!1645528 () Bool)

(assert (=> b!4040463 (=> res!1645528 e!2506987)))

(assert (=> b!4040463 (= res!1645528 e!2506988)))

(declare-fun res!1645523 () Bool)

(assert (=> b!4040463 (=> (not res!1645523) (not e!2506988))))

(assert (=> b!4040463 (= res!1645523 lt!1437849)))

(declare-fun b!4040464 () Bool)

(declare-fun e!2506992 () Bool)

(assert (=> b!4040464 (= e!2506990 e!2506992)))

(declare-fun c!697956 () Bool)

(assert (=> b!4040464 (= c!697956 ((_ is EmptyLang!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun bm!287376 () Bool)

(assert (=> bm!287376 (= call!287381 (isEmpty!25808 lt!1437799))))

(declare-fun b!4040465 () Bool)

(declare-fun nullable!4150 (Regex!11827) Bool)

(assert (=> b!4040465 (= e!2506993 (nullable!4150 (regex!6922 (rule!9994 token!484))))))

(declare-fun b!4040466 () Bool)

(assert (=> b!4040466 (= e!2506988 (= (head!8553 lt!1437799) (c!697933 (regex!6922 (rule!9994 token!484)))))))

(declare-fun b!4040467 () Bool)

(assert (=> b!4040467 (= e!2506992 (not lt!1437849))))

(declare-fun b!4040468 () Bool)

(declare-fun res!1645525 () Bool)

(declare-fun e!2506991 () Bool)

(assert (=> b!4040468 (=> res!1645525 e!2506991)))

(assert (=> b!4040468 (= res!1645525 (not (isEmpty!25808 (tail!6285 lt!1437799))))))

(declare-fun b!4040469 () Bool)

(declare-fun res!1645526 () Bool)

(assert (=> b!4040469 (=> res!1645526 e!2506987)))

(assert (=> b!4040469 (= res!1645526 (not ((_ is ElementMatch!11827) (regex!6922 (rule!9994 token!484)))))))

(assert (=> b!4040469 (= e!2506992 e!2506987)))

(declare-fun b!4040470 () Bool)

(declare-fun res!1645524 () Bool)

(assert (=> b!4040470 (=> (not res!1645524) (not e!2506988))))

(assert (=> b!4040470 (= res!1645524 (not call!287381))))

(declare-fun b!4040471 () Bool)

(assert (=> b!4040471 (= e!2506991 (not (= (head!8553 lt!1437799) (c!697933 (regex!6922 (rule!9994 token!484))))))))

(declare-fun b!4040472 () Bool)

(assert (=> b!4040472 (= e!2506989 e!2506991)))

(declare-fun res!1645521 () Bool)

(assert (=> b!4040472 (=> res!1645521 e!2506991)))

(assert (=> b!4040472 (= res!1645521 call!287381)))

(assert (= (and d!1198220 c!697957) b!4040465))

(assert (= (and d!1198220 (not c!697957)) b!4040461))

(assert (= (and d!1198220 c!697958) b!4040459))

(assert (= (and d!1198220 (not c!697958)) b!4040464))

(assert (= (and b!4040464 c!697956) b!4040467))

(assert (= (and b!4040464 (not c!697956)) b!4040469))

(assert (= (and b!4040469 (not res!1645526)) b!4040463))

(assert (= (and b!4040463 res!1645523) b!4040470))

(assert (= (and b!4040470 res!1645524) b!4040462))

(assert (= (and b!4040462 res!1645522) b!4040466))

(assert (= (and b!4040463 (not res!1645528)) b!4040460))

(assert (= (and b!4040460 res!1645527) b!4040472))

(assert (= (and b!4040472 (not res!1645521)) b!4040468))

(assert (= (and b!4040468 (not res!1645525)) b!4040471))

(assert (= (or b!4040459 b!4040470 b!4040472) bm!287376))

(declare-fun m!4636369 () Bool)

(assert (=> bm!287376 m!4636369))

(declare-fun m!4636371 () Bool)

(assert (=> b!4040466 m!4636371))

(declare-fun m!4636373 () Bool)

(assert (=> b!4040462 m!4636373))

(assert (=> b!4040462 m!4636373))

(declare-fun m!4636375 () Bool)

(assert (=> b!4040462 m!4636375))

(declare-fun m!4636377 () Bool)

(assert (=> b!4040465 m!4636377))

(assert (=> b!4040468 m!4636373))

(assert (=> b!4040468 m!4636373))

(assert (=> b!4040468 m!4636375))

(assert (=> b!4040461 m!4636371))

(assert (=> b!4040461 m!4636371))

(declare-fun m!4636379 () Bool)

(assert (=> b!4040461 m!4636379))

(assert (=> b!4040461 m!4636373))

(assert (=> b!4040461 m!4636379))

(assert (=> b!4040461 m!4636373))

(declare-fun m!4636381 () Bool)

(assert (=> b!4040461 m!4636381))

(assert (=> d!1198220 m!4636369))

(declare-fun m!4636383 () Bool)

(assert (=> d!1198220 m!4636383))

(assert (=> b!4040471 m!4636371))

(assert (=> b!4040361 d!1198220))

(declare-fun b!4040475 () Bool)

(declare-fun e!2506994 () Bool)

(assert (=> b!4040475 (= e!2506994 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437793)))))

(declare-fun b!4040476 () Bool)

(declare-fun e!2506996 () Bool)

(assert (=> b!4040476 (= e!2506996 (>= (size!32325 lt!1437793) (size!32325 lt!1437799)))))

(declare-fun b!4040474 () Bool)

(declare-fun res!1645532 () Bool)

(assert (=> b!4040474 (=> (not res!1645532) (not e!2506994))))

(assert (=> b!4040474 (= res!1645532 (= (head!8553 lt!1437799) (head!8553 lt!1437793)))))

(declare-fun d!1198222 () Bool)

(assert (=> d!1198222 e!2506996))

(declare-fun res!1645531 () Bool)

(assert (=> d!1198222 (=> res!1645531 e!2506996)))

(declare-fun lt!1437850 () Bool)

(assert (=> d!1198222 (= res!1645531 (not lt!1437850))))

(declare-fun e!2506995 () Bool)

(assert (=> d!1198222 (= lt!1437850 e!2506995)))

(declare-fun res!1645530 () Bool)

(assert (=> d!1198222 (=> res!1645530 e!2506995)))

(assert (=> d!1198222 (= res!1645530 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198222 (= (isPrefix!4009 lt!1437799 lt!1437793) lt!1437850)))

(declare-fun b!4040473 () Bool)

(assert (=> b!4040473 (= e!2506995 e!2506994)))

(declare-fun res!1645529 () Bool)

(assert (=> b!4040473 (=> (not res!1645529) (not e!2506994))))

(assert (=> b!4040473 (= res!1645529 (not ((_ is Nil!43241) lt!1437793)))))

(assert (= (and d!1198222 (not res!1645530)) b!4040473))

(assert (= (and b!4040473 res!1645529) b!4040474))

(assert (= (and b!4040474 res!1645532) b!4040475))

(assert (= (and d!1198222 (not res!1645531)) b!4040476))

(assert (=> b!4040475 m!4636373))

(declare-fun m!4636385 () Bool)

(assert (=> b!4040475 m!4636385))

(assert (=> b!4040475 m!4636373))

(assert (=> b!4040475 m!4636385))

(declare-fun m!4636387 () Bool)

(assert (=> b!4040475 m!4636387))

(declare-fun m!4636389 () Bool)

(assert (=> b!4040476 m!4636389))

(assert (=> b!4040476 m!4636145))

(assert (=> b!4040474 m!4636371))

(declare-fun m!4636391 () Bool)

(assert (=> b!4040474 m!4636391))

(assert (=> b!4040361 d!1198222))

(declare-fun d!1198224 () Bool)

(assert (=> d!1198224 (isPrefix!4009 lt!1437799 (++!11324 prefix!494 newSuffix!27))))

(declare-fun lt!1437853 () Unit!62457)

(declare-fun choose!24485 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> d!1198224 (= lt!1437853 (choose!24485 lt!1437799 prefix!494 newSuffix!27))))

(assert (=> d!1198224 (isPrefix!4009 lt!1437799 prefix!494)))

(assert (=> d!1198224 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!802 lt!1437799 prefix!494 newSuffix!27) lt!1437853)))

(declare-fun bs!590856 () Bool)

(assert (= bs!590856 d!1198224))

(assert (=> bs!590856 m!4636189))

(assert (=> bs!590856 m!4636189))

(declare-fun m!4636393 () Bool)

(assert (=> bs!590856 m!4636393))

(declare-fun m!4636395 () Bool)

(assert (=> bs!590856 m!4636395))

(assert (=> bs!590856 m!4636135))

(assert (=> b!4040361 d!1198224))

(declare-fun d!1198226 () Bool)

(assert (=> d!1198226 (isPrefix!4009 lt!1437799 (++!11324 prefix!494 suffix!1299))))

(declare-fun lt!1437854 () Unit!62457)

(assert (=> d!1198226 (= lt!1437854 (choose!24485 lt!1437799 prefix!494 suffix!1299))))

(assert (=> d!1198226 (isPrefix!4009 lt!1437799 prefix!494)))

(assert (=> d!1198226 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!802 lt!1437799 prefix!494 suffix!1299) lt!1437854)))

(declare-fun bs!590857 () Bool)

(assert (= bs!590857 d!1198226))

(assert (=> bs!590857 m!4636231))

(assert (=> bs!590857 m!4636231))

(declare-fun m!4636397 () Bool)

(assert (=> bs!590857 m!4636397))

(declare-fun m!4636399 () Bool)

(assert (=> bs!590857 m!4636399))

(assert (=> bs!590857 m!4636135))

(assert (=> b!4040361 d!1198226))

(declare-fun b!4040487 () Bool)

(declare-fun e!2507005 () Bool)

(declare-fun inv!15 (TokenValue!7152) Bool)

(assert (=> b!4040487 (= e!2507005 (inv!15 (value!217911 token!484)))))

(declare-fun d!1198228 () Bool)

(declare-fun c!697964 () Bool)

(assert (=> d!1198228 (= c!697964 ((_ is IntegerValue!21456) (value!217911 token!484)))))

(declare-fun e!2507004 () Bool)

(assert (=> d!1198228 (= (inv!21 (value!217911 token!484)) e!2507004)))

(declare-fun b!4040488 () Bool)

(declare-fun inv!16 (TokenValue!7152) Bool)

(assert (=> b!4040488 (= e!2507004 (inv!16 (value!217911 token!484)))))

(declare-fun b!4040489 () Bool)

(declare-fun e!2507003 () Bool)

(declare-fun inv!17 (TokenValue!7152) Bool)

(assert (=> b!4040489 (= e!2507003 (inv!17 (value!217911 token!484)))))

(declare-fun b!4040490 () Bool)

(assert (=> b!4040490 (= e!2507004 e!2507003)))

(declare-fun c!697963 () Bool)

(assert (=> b!4040490 (= c!697963 ((_ is IntegerValue!21457) (value!217911 token!484)))))

(declare-fun b!4040491 () Bool)

(declare-fun res!1645535 () Bool)

(assert (=> b!4040491 (=> res!1645535 e!2507005)))

(assert (=> b!4040491 (= res!1645535 (not ((_ is IntegerValue!21458) (value!217911 token!484))))))

(assert (=> b!4040491 (= e!2507003 e!2507005)))

(assert (= (and d!1198228 c!697964) b!4040488))

(assert (= (and d!1198228 (not c!697964)) b!4040490))

(assert (= (and b!4040490 c!697963) b!4040489))

(assert (= (and b!4040490 (not c!697963)) b!4040491))

(assert (= (and b!4040491 (not res!1645535)) b!4040487))

(declare-fun m!4636401 () Bool)

(assert (=> b!4040487 m!4636401))

(declare-fun m!4636403 () Bool)

(assert (=> b!4040488 m!4636403))

(declare-fun m!4636405 () Bool)

(assert (=> b!4040489 m!4636405))

(assert (=> b!4040341 d!1198228))

(declare-fun b!4040492 () Bool)

(declare-fun e!2507009 () Bool)

(declare-fun lt!1437855 () Bool)

(declare-fun call!287382 () Bool)

(assert (=> b!4040492 (= e!2507009 (= lt!1437855 call!287382))))

(declare-fun d!1198230 () Bool)

(assert (=> d!1198230 e!2507009))

(declare-fun c!697967 () Bool)

(assert (=> d!1198230 (= c!697967 ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun e!2507012 () Bool)

(assert (=> d!1198230 (= lt!1437855 e!2507012)))

(declare-fun c!697966 () Bool)

(assert (=> d!1198230 (= c!697966 (isEmpty!25808 lt!1437800))))

(assert (=> d!1198230 (validRegex!5350 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(assert (=> d!1198230 (= (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437800) lt!1437855)))

(declare-fun b!4040493 () Bool)

(declare-fun e!2507006 () Bool)

(declare-fun e!2507008 () Bool)

(assert (=> b!4040493 (= e!2507006 e!2507008)))

(declare-fun res!1645542 () Bool)

(assert (=> b!4040493 (=> (not res!1645542) (not e!2507008))))

(assert (=> b!4040493 (= res!1645542 (not lt!1437855))))

(declare-fun b!4040494 () Bool)

(assert (=> b!4040494 (= e!2507012 (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)) (tail!6285 lt!1437800)))))

(declare-fun b!4040495 () Bool)

(declare-fun res!1645537 () Bool)

(declare-fun e!2507007 () Bool)

(assert (=> b!4040495 (=> (not res!1645537) (not e!2507007))))

(assert (=> b!4040495 (= res!1645537 (isEmpty!25808 (tail!6285 lt!1437800)))))

(declare-fun b!4040496 () Bool)

(declare-fun res!1645543 () Bool)

(assert (=> b!4040496 (=> res!1645543 e!2507006)))

(assert (=> b!4040496 (= res!1645543 e!2507007)))

(declare-fun res!1645538 () Bool)

(assert (=> b!4040496 (=> (not res!1645538) (not e!2507007))))

(assert (=> b!4040496 (= res!1645538 lt!1437855)))

(declare-fun b!4040497 () Bool)

(declare-fun e!2507011 () Bool)

(assert (=> b!4040497 (= e!2507009 e!2507011)))

(declare-fun c!697965 () Bool)

(assert (=> b!4040497 (= c!697965 ((_ is EmptyLang!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun bm!287377 () Bool)

(assert (=> bm!287377 (= call!287382 (isEmpty!25808 lt!1437800))))

(declare-fun b!4040498 () Bool)

(assert (=> b!4040498 (= e!2507012 (nullable!4150 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun b!4040499 () Bool)

(assert (=> b!4040499 (= e!2507007 (= (head!8553 lt!1437800) (c!697933 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun b!4040500 () Bool)

(assert (=> b!4040500 (= e!2507011 (not lt!1437855))))

(declare-fun b!4040501 () Bool)

(declare-fun res!1645540 () Bool)

(declare-fun e!2507010 () Bool)

(assert (=> b!4040501 (=> res!1645540 e!2507010)))

(assert (=> b!4040501 (= res!1645540 (not (isEmpty!25808 (tail!6285 lt!1437800))))))

(declare-fun b!4040502 () Bool)

(declare-fun res!1645541 () Bool)

(assert (=> b!4040502 (=> res!1645541 e!2507006)))

(assert (=> b!4040502 (= res!1645541 (not ((_ is ElementMatch!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (=> b!4040502 (= e!2507011 e!2507006)))

(declare-fun b!4040503 () Bool)

(declare-fun res!1645539 () Bool)

(assert (=> b!4040503 (=> (not res!1645539) (not e!2507007))))

(assert (=> b!4040503 (= res!1645539 (not call!287382))))

(declare-fun b!4040504 () Bool)

(assert (=> b!4040504 (= e!2507010 (not (= (head!8553 lt!1437800) (c!697933 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))))

(declare-fun b!4040505 () Bool)

(assert (=> b!4040505 (= e!2507008 e!2507010)))

(declare-fun res!1645536 () Bool)

(assert (=> b!4040505 (=> res!1645536 e!2507010)))

(assert (=> b!4040505 (= res!1645536 call!287382)))

(assert (= (and d!1198230 c!697966) b!4040498))

(assert (= (and d!1198230 (not c!697966)) b!4040494))

(assert (= (and d!1198230 c!697967) b!4040492))

(assert (= (and d!1198230 (not c!697967)) b!4040497))

(assert (= (and b!4040497 c!697965) b!4040500))

(assert (= (and b!4040497 (not c!697965)) b!4040502))

(assert (= (and b!4040502 (not res!1645541)) b!4040496))

(assert (= (and b!4040496 res!1645538) b!4040503))

(assert (= (and b!4040503 res!1645539) b!4040495))

(assert (= (and b!4040495 res!1645537) b!4040499))

(assert (= (and b!4040496 (not res!1645543)) b!4040493))

(assert (= (and b!4040493 res!1645542) b!4040505))

(assert (= (and b!4040505 (not res!1645536)) b!4040501))

(assert (= (and b!4040501 (not res!1645540)) b!4040504))

(assert (= (or b!4040492 b!4040503 b!4040505) bm!287377))

(assert (=> bm!287377 m!4636205))

(declare-fun m!4636407 () Bool)

(assert (=> b!4040499 m!4636407))

(declare-fun m!4636409 () Bool)

(assert (=> b!4040495 m!4636409))

(assert (=> b!4040495 m!4636409))

(declare-fun m!4636411 () Bool)

(assert (=> b!4040495 m!4636411))

(declare-fun m!4636413 () Bool)

(assert (=> b!4040498 m!4636413))

(assert (=> b!4040501 m!4636409))

(assert (=> b!4040501 m!4636409))

(assert (=> b!4040501 m!4636411))

(assert (=> b!4040494 m!4636407))

(assert (=> b!4040494 m!4636407))

(declare-fun m!4636415 () Bool)

(assert (=> b!4040494 m!4636415))

(assert (=> b!4040494 m!4636409))

(assert (=> b!4040494 m!4636415))

(assert (=> b!4040494 m!4636409))

(declare-fun m!4636417 () Bool)

(assert (=> b!4040494 m!4636417))

(assert (=> d!1198230 m!4636205))

(declare-fun m!4636419 () Bool)

(assert (=> d!1198230 m!4636419))

(assert (=> b!4040504 m!4636407))

(assert (=> b!4040342 d!1198230))

(declare-fun d!1198232 () Bool)

(assert (=> d!1198232 (= (inv!57785 (tag!7782 (h!48663 rules!2999))) (= (mod (str.len (value!217910 (tag!7782 (h!48663 rules!2999)))) 2) 0))))

(assert (=> b!4040363 d!1198232))

(declare-fun d!1198234 () Bool)

(declare-fun res!1645546 () Bool)

(declare-fun e!2507015 () Bool)

(assert (=> d!1198234 (=> (not res!1645546) (not e!2507015))))

(declare-fun semiInverseModEq!2958 (Int Int) Bool)

(assert (=> d!1198234 (= res!1645546 (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (h!48663 rules!2999)))))))

(assert (=> d!1198234 (= (inv!57788 (transformation!6922 (h!48663 rules!2999))) e!2507015)))

(declare-fun b!4040508 () Bool)

(declare-fun equivClasses!2857 (Int Int) Bool)

(assert (=> b!4040508 (= e!2507015 (equivClasses!2857 (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (h!48663 rules!2999)))))))

(assert (= (and d!1198234 res!1645546) b!4040508))

(declare-fun m!4636421 () Bool)

(assert (=> d!1198234 m!4636421))

(declare-fun m!4636423 () Bool)

(assert (=> b!4040508 m!4636423))

(assert (=> b!4040363 d!1198234))

(declare-fun b!4040511 () Bool)

(declare-fun e!2507016 () Bool)

(assert (=> b!4040511 (= e!2507016 (isPrefix!4009 (tail!6285 prefix!494) (tail!6285 lt!1437817)))))

(declare-fun b!4040512 () Bool)

(declare-fun e!2507018 () Bool)

(assert (=> b!4040512 (= e!2507018 (>= (size!32325 lt!1437817) (size!32325 prefix!494)))))

(declare-fun b!4040510 () Bool)

(declare-fun res!1645550 () Bool)

(assert (=> b!4040510 (=> (not res!1645550) (not e!2507016))))

(assert (=> b!4040510 (= res!1645550 (= (head!8553 prefix!494) (head!8553 lt!1437817)))))

(declare-fun d!1198236 () Bool)

(assert (=> d!1198236 e!2507018))

(declare-fun res!1645549 () Bool)

(assert (=> d!1198236 (=> res!1645549 e!2507018)))

(declare-fun lt!1437856 () Bool)

(assert (=> d!1198236 (= res!1645549 (not lt!1437856))))

(declare-fun e!2507017 () Bool)

(assert (=> d!1198236 (= lt!1437856 e!2507017)))

(declare-fun res!1645548 () Bool)

(assert (=> d!1198236 (=> res!1645548 e!2507017)))

(assert (=> d!1198236 (= res!1645548 ((_ is Nil!43241) prefix!494))))

(assert (=> d!1198236 (= (isPrefix!4009 prefix!494 lt!1437817) lt!1437856)))

(declare-fun b!4040509 () Bool)

(assert (=> b!4040509 (= e!2507017 e!2507016)))

(declare-fun res!1645547 () Bool)

(assert (=> b!4040509 (=> (not res!1645547) (not e!2507016))))

(assert (=> b!4040509 (= res!1645547 (not ((_ is Nil!43241) lt!1437817)))))

(assert (= (and d!1198236 (not res!1645548)) b!4040509))

(assert (= (and b!4040509 res!1645547) b!4040510))

(assert (= (and b!4040510 res!1645550) b!4040511))

(assert (= (and d!1198236 (not res!1645549)) b!4040512))

(declare-fun m!4636425 () Bool)

(assert (=> b!4040511 m!4636425))

(assert (=> b!4040511 m!4636327))

(assert (=> b!4040511 m!4636425))

(assert (=> b!4040511 m!4636327))

(declare-fun m!4636427 () Bool)

(assert (=> b!4040511 m!4636427))

(assert (=> b!4040512 m!4636325))

(assert (=> b!4040512 m!4636147))

(declare-fun m!4636429 () Bool)

(assert (=> b!4040510 m!4636429))

(assert (=> b!4040510 m!4636353))

(assert (=> b!4040333 d!1198236))

(declare-fun d!1198238 () Bool)

(assert (=> d!1198238 (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 suffixResult!105))))

(declare-fun lt!1437859 () Unit!62457)

(declare-fun choose!24487 (List!43365 List!43365) Unit!62457)

(assert (=> d!1198238 (= lt!1437859 (choose!24487 lt!1437799 suffixResult!105))))

(assert (=> d!1198238 (= (lemmaConcatTwoListThenFirstIsPrefix!2844 lt!1437799 suffixResult!105) lt!1437859)))

(declare-fun bs!590858 () Bool)

(assert (= bs!590858 d!1198238))

(assert (=> bs!590858 m!4636197))

(assert (=> bs!590858 m!4636197))

(declare-fun m!4636431 () Bool)

(assert (=> bs!590858 m!4636431))

(declare-fun m!4636433 () Bool)

(assert (=> bs!590858 m!4636433))

(assert (=> b!4040333 d!1198238))

(declare-fun b!4040515 () Bool)

(declare-fun e!2507019 () Bool)

(assert (=> b!4040515 (= e!2507019 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437802)))))

(declare-fun b!4040516 () Bool)

(declare-fun e!2507021 () Bool)

(assert (=> b!4040516 (= e!2507021 (>= (size!32325 lt!1437802) (size!32325 lt!1437799)))))

(declare-fun b!4040514 () Bool)

(declare-fun res!1645554 () Bool)

(assert (=> b!4040514 (=> (not res!1645554) (not e!2507019))))

(assert (=> b!4040514 (= res!1645554 (= (head!8553 lt!1437799) (head!8553 lt!1437802)))))

(declare-fun d!1198240 () Bool)

(assert (=> d!1198240 e!2507021))

(declare-fun res!1645553 () Bool)

(assert (=> d!1198240 (=> res!1645553 e!2507021)))

(declare-fun lt!1437860 () Bool)

(assert (=> d!1198240 (= res!1645553 (not lt!1437860))))

(declare-fun e!2507020 () Bool)

(assert (=> d!1198240 (= lt!1437860 e!2507020)))

(declare-fun res!1645552 () Bool)

(assert (=> d!1198240 (=> res!1645552 e!2507020)))

(assert (=> d!1198240 (= res!1645552 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198240 (= (isPrefix!4009 lt!1437799 lt!1437802) lt!1437860)))

(declare-fun b!4040513 () Bool)

(assert (=> b!4040513 (= e!2507020 e!2507019)))

(declare-fun res!1645551 () Bool)

(assert (=> b!4040513 (=> (not res!1645551) (not e!2507019))))

(assert (=> b!4040513 (= res!1645551 (not ((_ is Nil!43241) lt!1437802)))))

(assert (= (and d!1198240 (not res!1645552)) b!4040513))

(assert (= (and b!4040513 res!1645551) b!4040514))

(assert (= (and b!4040514 res!1645554) b!4040515))

(assert (= (and d!1198240 (not res!1645553)) b!4040516))

(assert (=> b!4040515 m!4636373))

(declare-fun m!4636435 () Bool)

(assert (=> b!4040515 m!4636435))

(assert (=> b!4040515 m!4636373))

(assert (=> b!4040515 m!4636435))

(declare-fun m!4636437 () Bool)

(assert (=> b!4040515 m!4636437))

(declare-fun m!4636439 () Bool)

(assert (=> b!4040516 m!4636439))

(assert (=> b!4040516 m!4636145))

(assert (=> b!4040514 m!4636371))

(declare-fun m!4636441 () Bool)

(assert (=> b!4040514 m!4636441))

(assert (=> b!4040333 d!1198240))

(declare-fun b!4040519 () Bool)

(declare-fun e!2507022 () Bool)

(assert (=> b!4040519 (= e!2507022 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437817)))))

(declare-fun b!4040520 () Bool)

(declare-fun e!2507024 () Bool)

(assert (=> b!4040520 (= e!2507024 (>= (size!32325 lt!1437817) (size!32325 lt!1437799)))))

(declare-fun b!4040518 () Bool)

(declare-fun res!1645558 () Bool)

(assert (=> b!4040518 (=> (not res!1645558) (not e!2507022))))

(assert (=> b!4040518 (= res!1645558 (= (head!8553 lt!1437799) (head!8553 lt!1437817)))))

(declare-fun d!1198242 () Bool)

(assert (=> d!1198242 e!2507024))

(declare-fun res!1645557 () Bool)

(assert (=> d!1198242 (=> res!1645557 e!2507024)))

(declare-fun lt!1437861 () Bool)

(assert (=> d!1198242 (= res!1645557 (not lt!1437861))))

(declare-fun e!2507023 () Bool)

(assert (=> d!1198242 (= lt!1437861 e!2507023)))

(declare-fun res!1645556 () Bool)

(assert (=> d!1198242 (=> res!1645556 e!2507023)))

(assert (=> d!1198242 (= res!1645556 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198242 (= (isPrefix!4009 lt!1437799 lt!1437817) lt!1437861)))

(declare-fun b!4040517 () Bool)

(assert (=> b!4040517 (= e!2507023 e!2507022)))

(declare-fun res!1645555 () Bool)

(assert (=> b!4040517 (=> (not res!1645555) (not e!2507022))))

(assert (=> b!4040517 (= res!1645555 (not ((_ is Nil!43241) lt!1437817)))))

(assert (= (and d!1198242 (not res!1645556)) b!4040517))

(assert (= (and b!4040517 res!1645555) b!4040518))

(assert (= (and b!4040518 res!1645558) b!4040519))

(assert (= (and d!1198242 (not res!1645557)) b!4040520))

(assert (=> b!4040519 m!4636373))

(assert (=> b!4040519 m!4636327))

(assert (=> b!4040519 m!4636373))

(assert (=> b!4040519 m!4636327))

(declare-fun m!4636443 () Bool)

(assert (=> b!4040519 m!4636443))

(assert (=> b!4040520 m!4636325))

(assert (=> b!4040520 m!4636145))

(assert (=> b!4040518 m!4636371))

(assert (=> b!4040518 m!4636353))

(assert (=> b!4040333 d!1198242))

(declare-fun d!1198244 () Bool)

(assert (=> d!1198244 (isPrefix!4009 prefix!494 (++!11324 prefix!494 suffix!1299))))

(declare-fun lt!1437862 () Unit!62457)

(assert (=> d!1198244 (= lt!1437862 (choose!24487 prefix!494 suffix!1299))))

(assert (=> d!1198244 (= (lemmaConcatTwoListThenFirstIsPrefix!2844 prefix!494 suffix!1299) lt!1437862)))

(declare-fun bs!590859 () Bool)

(assert (= bs!590859 d!1198244))

(assert (=> bs!590859 m!4636231))

(assert (=> bs!590859 m!4636231))

(declare-fun m!4636445 () Bool)

(assert (=> bs!590859 m!4636445))

(declare-fun m!4636447 () Bool)

(assert (=> bs!590859 m!4636447))

(assert (=> b!4040333 d!1198244))

(declare-fun b!4040523 () Bool)

(declare-fun res!1645559 () Bool)

(declare-fun e!2507026 () Bool)

(assert (=> b!4040523 (=> (not res!1645559) (not e!2507026))))

(declare-fun lt!1437863 () List!43365)

(assert (=> b!4040523 (= res!1645559 (= (size!32325 lt!1437863) (+ (size!32325 prefix!494) (size!32325 newSuffix!27))))))

(declare-fun d!1198246 () Bool)

(assert (=> d!1198246 e!2507026))

(declare-fun res!1645560 () Bool)

(assert (=> d!1198246 (=> (not res!1645560) (not e!2507026))))

(assert (=> d!1198246 (= res!1645560 (= (content!6577 lt!1437863) ((_ map or) (content!6577 prefix!494) (content!6577 newSuffix!27))))))

(declare-fun e!2507025 () List!43365)

(assert (=> d!1198246 (= lt!1437863 e!2507025)))

(declare-fun c!697968 () Bool)

(assert (=> d!1198246 (= c!697968 ((_ is Nil!43241) prefix!494))))

(assert (=> d!1198246 (= (++!11324 prefix!494 newSuffix!27) lt!1437863)))

(declare-fun b!4040522 () Bool)

(assert (=> b!4040522 (= e!2507025 (Cons!43241 (h!48661 prefix!494) (++!11324 (t!334994 prefix!494) newSuffix!27)))))

(declare-fun b!4040521 () Bool)

(assert (=> b!4040521 (= e!2507025 newSuffix!27)))

(declare-fun b!4040524 () Bool)

(assert (=> b!4040524 (= e!2507026 (or (not (= newSuffix!27 Nil!43241)) (= lt!1437863 prefix!494)))))

(assert (= (and d!1198246 c!697968) b!4040521))

(assert (= (and d!1198246 (not c!697968)) b!4040522))

(assert (= (and d!1198246 res!1645560) b!4040523))

(assert (= (and b!4040523 res!1645559) b!4040524))

(declare-fun m!4636449 () Bool)

(assert (=> b!4040523 m!4636449))

(assert (=> b!4040523 m!4636147))

(assert (=> b!4040523 m!4636141))

(declare-fun m!4636451 () Bool)

(assert (=> d!1198246 m!4636451))

(declare-fun m!4636453 () Bool)

(assert (=> d!1198246 m!4636453))

(declare-fun m!4636455 () Bool)

(assert (=> d!1198246 m!4636455))

(declare-fun m!4636457 () Bool)

(assert (=> b!4040522 m!4636457))

(assert (=> b!4040356 d!1198246))

(declare-fun b!4040527 () Bool)

(declare-fun res!1645561 () Bool)

(declare-fun e!2507028 () Bool)

(assert (=> b!4040527 (=> (not res!1645561) (not e!2507028))))

(declare-fun lt!1437864 () List!43365)

(assert (=> b!4040527 (= res!1645561 (= (size!32325 lt!1437864) (+ (size!32325 lt!1437799) (size!32325 newSuffixResult!27))))))

(declare-fun d!1198248 () Bool)

(assert (=> d!1198248 e!2507028))

(declare-fun res!1645562 () Bool)

(assert (=> d!1198248 (=> (not res!1645562) (not e!2507028))))

(assert (=> d!1198248 (= res!1645562 (= (content!6577 lt!1437864) ((_ map or) (content!6577 lt!1437799) (content!6577 newSuffixResult!27))))))

(declare-fun e!2507027 () List!43365)

(assert (=> d!1198248 (= lt!1437864 e!2507027)))

(declare-fun c!697969 () Bool)

(assert (=> d!1198248 (= c!697969 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198248 (= (++!11324 lt!1437799 newSuffixResult!27) lt!1437864)))

(declare-fun b!4040526 () Bool)

(assert (=> b!4040526 (= e!2507027 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) newSuffixResult!27)))))

(declare-fun b!4040525 () Bool)

(assert (=> b!4040525 (= e!2507027 newSuffixResult!27)))

(declare-fun b!4040528 () Bool)

(assert (=> b!4040528 (= e!2507028 (or (not (= newSuffixResult!27 Nil!43241)) (= lt!1437864 lt!1437799)))))

(assert (= (and d!1198248 c!697969) b!4040525))

(assert (= (and d!1198248 (not c!697969)) b!4040526))

(assert (= (and d!1198248 res!1645562) b!4040527))

(assert (= (and b!4040527 res!1645561) b!4040528))

(declare-fun m!4636459 () Bool)

(assert (=> b!4040527 m!4636459))

(assert (=> b!4040527 m!4636145))

(declare-fun m!4636461 () Bool)

(assert (=> b!4040527 m!4636461))

(declare-fun m!4636463 () Bool)

(assert (=> d!1198248 m!4636463))

(assert (=> d!1198248 m!4636275))

(declare-fun m!4636465 () Bool)

(assert (=> d!1198248 m!4636465))

(declare-fun m!4636467 () Bool)

(assert (=> b!4040526 m!4636467))

(assert (=> b!4040356 d!1198248))

(declare-fun b!4040531 () Bool)

(declare-fun res!1645563 () Bool)

(declare-fun e!2507030 () Bool)

(assert (=> b!4040531 (=> (not res!1645563) (not e!2507030))))

(declare-fun lt!1437865 () List!43365)

(assert (=> b!4040531 (= res!1645563 (= (size!32325 lt!1437865) (+ (size!32325 lt!1437799) (size!32325 suffixResult!105))))))

(declare-fun d!1198250 () Bool)

(assert (=> d!1198250 e!2507030))

(declare-fun res!1645564 () Bool)

(assert (=> d!1198250 (=> (not res!1645564) (not e!2507030))))

(assert (=> d!1198250 (= res!1645564 (= (content!6577 lt!1437865) ((_ map or) (content!6577 lt!1437799) (content!6577 suffixResult!105))))))

(declare-fun e!2507029 () List!43365)

(assert (=> d!1198250 (= lt!1437865 e!2507029)))

(declare-fun c!697970 () Bool)

(assert (=> d!1198250 (= c!697970 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198250 (= (++!11324 lt!1437799 suffixResult!105) lt!1437865)))

(declare-fun b!4040530 () Bool)

(assert (=> b!4040530 (= e!2507029 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) suffixResult!105)))))

(declare-fun b!4040529 () Bool)

(assert (=> b!4040529 (= e!2507029 suffixResult!105)))

(declare-fun b!4040532 () Bool)

(assert (=> b!4040532 (= e!2507030 (or (not (= suffixResult!105 Nil!43241)) (= lt!1437865 lt!1437799)))))

(assert (= (and d!1198250 c!697970) b!4040529))

(assert (= (and d!1198250 (not c!697970)) b!4040530))

(assert (= (and d!1198250 res!1645564) b!4040531))

(assert (= (and b!4040531 res!1645563) b!4040532))

(declare-fun m!4636469 () Bool)

(assert (=> b!4040531 m!4636469))

(assert (=> b!4040531 m!4636145))

(declare-fun m!4636471 () Bool)

(assert (=> b!4040531 m!4636471))

(declare-fun m!4636473 () Bool)

(assert (=> d!1198250 m!4636473))

(assert (=> d!1198250 m!4636275))

(declare-fun m!4636475 () Bool)

(assert (=> d!1198250 m!4636475))

(declare-fun m!4636477 () Bool)

(assert (=> b!4040530 m!4636477))

(assert (=> b!4040334 d!1198250))

(declare-fun d!1198252 () Bool)

(declare-fun e!2507033 () Bool)

(assert (=> d!1198252 e!2507033))

(declare-fun res!1645567 () Bool)

(assert (=> d!1198252 (=> (not res!1645567) (not e!2507033))))

(assert (=> d!1198252 (= res!1645567 (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))))))

(declare-fun Unit!62460 () Unit!62457)

(assert (=> d!1198252 (= (lemmaInv!1131 (transformation!6922 (rule!9994 token!484))) Unit!62460)))

(declare-fun b!4040535 () Bool)

(assert (=> b!4040535 (= e!2507033 (equivClasses!2857 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))))))

(assert (= (and d!1198252 res!1645567) b!4040535))

(declare-fun m!4636479 () Bool)

(assert (=> d!1198252 m!4636479))

(declare-fun m!4636481 () Bool)

(assert (=> b!4040535 m!4636481))

(assert (=> b!4040334 d!1198252))

(declare-fun d!1198254 () Bool)

(declare-fun res!1645572 () Bool)

(declare-fun e!2507036 () Bool)

(assert (=> d!1198254 (=> (not res!1645572) (not e!2507036))))

(assert (=> d!1198254 (= res!1645572 (validRegex!5350 (regex!6922 (rule!9994 token!484))))))

(assert (=> d!1198254 (= (ruleValid!2852 thiss!21717 (rule!9994 token!484)) e!2507036)))

(declare-fun b!4040540 () Bool)

(declare-fun res!1645573 () Bool)

(assert (=> b!4040540 (=> (not res!1645573) (not e!2507036))))

(assert (=> b!4040540 (= res!1645573 (not (nullable!4150 (regex!6922 (rule!9994 token!484)))))))

(declare-fun b!4040541 () Bool)

(assert (=> b!4040541 (= e!2507036 (not (= (tag!7782 (rule!9994 token!484)) (String!49479 ""))))))

(assert (= (and d!1198254 res!1645572) b!4040540))

(assert (= (and b!4040540 res!1645573) b!4040541))

(assert (=> d!1198254 m!4636383))

(assert (=> b!4040540 m!4636377))

(assert (=> b!4040334 d!1198254))

(declare-fun d!1198256 () Bool)

(assert (=> d!1198256 (ruleValid!2852 thiss!21717 (rule!9994 token!484))))

(declare-fun lt!1437868 () Unit!62457)

(declare-fun choose!24489 (LexerInterface!6511 Rule!13644 List!43367) Unit!62457)

(assert (=> d!1198256 (= lt!1437868 (choose!24489 thiss!21717 (rule!9994 token!484) rules!2999))))

(assert (=> d!1198256 (contains!8592 rules!2999 (rule!9994 token!484))))

(assert (=> d!1198256 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1922 thiss!21717 (rule!9994 token!484) rules!2999) lt!1437868)))

(declare-fun bs!590860 () Bool)

(assert (= bs!590860 d!1198256))

(assert (=> bs!590860 m!4636201))

(declare-fun m!4636483 () Bool)

(assert (=> bs!590860 m!4636483))

(declare-fun m!4636485 () Bool)

(assert (=> bs!590860 m!4636485))

(assert (=> b!4040334 d!1198256))

(declare-fun d!1198258 () Bool)

(declare-fun lt!1437871 () Int)

(assert (=> d!1198258 (>= lt!1437871 0)))

(declare-fun e!2507039 () Int)

(assert (=> d!1198258 (= lt!1437871 e!2507039)))

(declare-fun c!697973 () Bool)

(assert (=> d!1198258 (= c!697973 ((_ is Nil!43241) (originalCharacters!7522 token!484)))))

(assert (=> d!1198258 (= (size!32325 (originalCharacters!7522 token!484)) lt!1437871)))

(declare-fun b!4040546 () Bool)

(assert (=> b!4040546 (= e!2507039 0)))

(declare-fun b!4040547 () Bool)

(assert (=> b!4040547 (= e!2507039 (+ 1 (size!32325 (t!334994 (originalCharacters!7522 token!484)))))))

(assert (= (and d!1198258 c!697973) b!4040546))

(assert (= (and d!1198258 (not c!697973)) b!4040547))

(declare-fun m!4636487 () Bool)

(assert (=> b!4040547 m!4636487))

(assert (=> b!4040355 d!1198258))

(declare-fun b!4040566 () Bool)

(declare-fun res!1645588 () Bool)

(declare-fun e!2507048 () Bool)

(assert (=> b!4040566 (=> (not res!1645588) (not e!2507048))))

(declare-fun lt!1437884 () Option!9336)

(declare-fun get!14189 (Option!9336) tuple2!42322)

(assert (=> b!4040566 (= res!1645588 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))) (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884)))))))

(declare-fun b!4040567 () Bool)

(declare-fun res!1645594 () Bool)

(assert (=> b!4040567 (=> (not res!1645594) (not e!2507048))))

(assert (=> b!4040567 (= res!1645594 (= (value!217911 (_1!24295 (get!14189 lt!1437884))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884)))))))))

(declare-fun d!1198260 () Bool)

(declare-fun e!2507047 () Bool)

(assert (=> d!1198260 e!2507047))

(declare-fun res!1645590 () Bool)

(assert (=> d!1198260 (=> res!1645590 e!2507047)))

(declare-fun isEmpty!25811 (Option!9336) Bool)

(assert (=> d!1198260 (= res!1645590 (isEmpty!25811 lt!1437884))))

(declare-fun e!2507046 () Option!9336)

(assert (=> d!1198260 (= lt!1437884 e!2507046)))

(declare-fun c!697976 () Bool)

(assert (=> d!1198260 (= c!697976 (and ((_ is Cons!43243) rules!2999) ((_ is Nil!43243) (t!334996 rules!2999))))))

(declare-fun lt!1437885 () Unit!62457)

(declare-fun lt!1437886 () Unit!62457)

(assert (=> d!1198260 (= lt!1437885 lt!1437886)))

(assert (=> d!1198260 (isPrefix!4009 lt!1437817 lt!1437817)))

(assert (=> d!1198260 (= lt!1437886 (lemmaIsPrefixRefl!2576 lt!1437817 lt!1437817))))

(declare-fun rulesValidInductive!2525 (LexerInterface!6511 List!43367) Bool)

(assert (=> d!1198260 (rulesValidInductive!2525 thiss!21717 rules!2999)))

(assert (=> d!1198260 (= (maxPrefix!3809 thiss!21717 rules!2999 lt!1437817) lt!1437884)))

(declare-fun b!4040568 () Bool)

(declare-fun call!287385 () Option!9336)

(assert (=> b!4040568 (= e!2507046 call!287385)))

(declare-fun b!4040569 () Bool)

(assert (=> b!4040569 (= e!2507047 e!2507048)))

(declare-fun res!1645589 () Bool)

(assert (=> b!4040569 (=> (not res!1645589) (not e!2507048))))

(declare-fun isDefined!7104 (Option!9336) Bool)

(assert (=> b!4040569 (= res!1645589 (isDefined!7104 lt!1437884))))

(declare-fun b!4040570 () Bool)

(declare-fun res!1645593 () Bool)

(assert (=> b!4040570 (=> (not res!1645593) (not e!2507048))))

(assert (=> b!4040570 (= res!1645593 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))) (_2!24295 (get!14189 lt!1437884))) lt!1437817))))

(declare-fun b!4040571 () Bool)

(assert (=> b!4040571 (= e!2507048 (contains!8592 rules!2999 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))

(declare-fun b!4040572 () Bool)

(declare-fun lt!1437883 () Option!9336)

(declare-fun lt!1437882 () Option!9336)

(assert (=> b!4040572 (= e!2507046 (ite (and ((_ is None!9335) lt!1437883) ((_ is None!9335) lt!1437882)) None!9335 (ite ((_ is None!9335) lt!1437882) lt!1437883 (ite ((_ is None!9335) lt!1437883) lt!1437882 (ite (>= (size!32326 (_1!24295 (v!39735 lt!1437883))) (size!32326 (_1!24295 (v!39735 lt!1437882)))) lt!1437883 lt!1437882)))))))

(assert (=> b!4040572 (= lt!1437883 call!287385)))

(assert (=> b!4040572 (= lt!1437882 (maxPrefix!3809 thiss!21717 (t!334996 rules!2999) lt!1437817))))

(declare-fun b!4040573 () Bool)

(declare-fun res!1645592 () Bool)

(assert (=> b!4040573 (=> (not res!1645592) (not e!2507048))))

(assert (=> b!4040573 (= res!1645592 (< (size!32325 (_2!24295 (get!14189 lt!1437884))) (size!32325 lt!1437817)))))

(declare-fun b!4040574 () Bool)

(declare-fun res!1645591 () Bool)

(assert (=> b!4040574 (=> (not res!1645591) (not e!2507048))))

(assert (=> b!4040574 (= res!1645591 (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun bm!287380 () Bool)

(assert (=> bm!287380 (= call!287385 (maxPrefixOneRule!2821 thiss!21717 (h!48663 rules!2999) lt!1437817))))

(assert (= (and d!1198260 c!697976) b!4040568))

(assert (= (and d!1198260 (not c!697976)) b!4040572))

(assert (= (or b!4040568 b!4040572) bm!287380))

(assert (= (and d!1198260 (not res!1645590)) b!4040569))

(assert (= (and b!4040569 res!1645589) b!4040566))

(assert (= (and b!4040566 res!1645588) b!4040573))

(assert (= (and b!4040573 res!1645592) b!4040570))

(assert (= (and b!4040570 res!1645593) b!4040567))

(assert (= (and b!4040567 res!1645594) b!4040574))

(assert (= (and b!4040574 res!1645591) b!4040571))

(declare-fun m!4636489 () Bool)

(assert (=> b!4040571 m!4636489))

(declare-fun m!4636491 () Bool)

(assert (=> b!4040571 m!4636491))

(declare-fun m!4636493 () Bool)

(assert (=> b!4040572 m!4636493))

(declare-fun m!4636495 () Bool)

(assert (=> b!4040569 m!4636495))

(assert (=> b!4040567 m!4636489))

(declare-fun m!4636497 () Bool)

(assert (=> b!4040567 m!4636497))

(assert (=> b!4040567 m!4636497))

(declare-fun m!4636499 () Bool)

(assert (=> b!4040567 m!4636499))

(assert (=> b!4040574 m!4636489))

(declare-fun m!4636501 () Bool)

(assert (=> b!4040574 m!4636501))

(assert (=> b!4040574 m!4636501))

(declare-fun m!4636503 () Bool)

(assert (=> b!4040574 m!4636503))

(assert (=> b!4040574 m!4636503))

(declare-fun m!4636505 () Bool)

(assert (=> b!4040574 m!4636505))

(declare-fun m!4636507 () Bool)

(assert (=> d!1198260 m!4636507))

(assert (=> d!1198260 m!4636263))

(assert (=> d!1198260 m!4636265))

(declare-fun m!4636509 () Bool)

(assert (=> d!1198260 m!4636509))

(assert (=> b!4040570 m!4636489))

(assert (=> b!4040570 m!4636501))

(assert (=> b!4040570 m!4636501))

(assert (=> b!4040570 m!4636503))

(assert (=> b!4040570 m!4636503))

(declare-fun m!4636511 () Bool)

(assert (=> b!4040570 m!4636511))

(assert (=> b!4040573 m!4636489))

(declare-fun m!4636513 () Bool)

(assert (=> b!4040573 m!4636513))

(assert (=> b!4040573 m!4636325))

(declare-fun m!4636515 () Bool)

(assert (=> bm!287380 m!4636515))

(assert (=> b!4040566 m!4636489))

(assert (=> b!4040566 m!4636501))

(assert (=> b!4040566 m!4636501))

(assert (=> b!4040566 m!4636503))

(assert (=> b!4040335 d!1198260))

(declare-fun b!4040577 () Bool)

(declare-fun res!1645595 () Bool)

(declare-fun e!2507050 () Bool)

(assert (=> b!4040577 (=> (not res!1645595) (not e!2507050))))

(declare-fun lt!1437887 () List!43365)

(assert (=> b!4040577 (= res!1645595 (= (size!32325 lt!1437887) (+ (size!32325 prefix!494) (size!32325 suffix!1299))))))

(declare-fun d!1198262 () Bool)

(assert (=> d!1198262 e!2507050))

(declare-fun res!1645596 () Bool)

(assert (=> d!1198262 (=> (not res!1645596) (not e!2507050))))

(assert (=> d!1198262 (= res!1645596 (= (content!6577 lt!1437887) ((_ map or) (content!6577 prefix!494) (content!6577 suffix!1299))))))

(declare-fun e!2507049 () List!43365)

(assert (=> d!1198262 (= lt!1437887 e!2507049)))

(declare-fun c!697977 () Bool)

(assert (=> d!1198262 (= c!697977 ((_ is Nil!43241) prefix!494))))

(assert (=> d!1198262 (= (++!11324 prefix!494 suffix!1299) lt!1437887)))

(declare-fun b!4040576 () Bool)

(assert (=> b!4040576 (= e!2507049 (Cons!43241 (h!48661 prefix!494) (++!11324 (t!334994 prefix!494) suffix!1299)))))

(declare-fun b!4040575 () Bool)

(assert (=> b!4040575 (= e!2507049 suffix!1299)))

(declare-fun b!4040578 () Bool)

(assert (=> b!4040578 (= e!2507050 (or (not (= suffix!1299 Nil!43241)) (= lt!1437887 prefix!494)))))

(assert (= (and d!1198262 c!697977) b!4040575))

(assert (= (and d!1198262 (not c!697977)) b!4040576))

(assert (= (and d!1198262 res!1645596) b!4040577))

(assert (= (and b!4040577 res!1645595) b!4040578))

(declare-fun m!4636517 () Bool)

(assert (=> b!4040577 m!4636517))

(assert (=> b!4040577 m!4636147))

(assert (=> b!4040577 m!4636139))

(declare-fun m!4636519 () Bool)

(assert (=> d!1198262 m!4636519))

(assert (=> d!1198262 m!4636453))

(assert (=> d!1198262 m!4636289))

(declare-fun m!4636521 () Bool)

(assert (=> b!4040576 m!4636521))

(assert (=> b!4040335 d!1198262))

(declare-fun d!1198264 () Bool)

(declare-fun res!1645597 () Bool)

(declare-fun e!2507051 () Bool)

(assert (=> d!1198264 (=> (not res!1645597) (not e!2507051))))

(assert (=> d!1198264 (= res!1645597 (validRegex!5350 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(assert (=> d!1198264 (= (ruleValid!2852 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) e!2507051)))

(declare-fun b!4040579 () Bool)

(declare-fun res!1645598 () Bool)

(assert (=> b!4040579 (=> (not res!1645598) (not e!2507051))))

(assert (=> b!4040579 (= res!1645598 (not (nullable!4150 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun b!4040580 () Bool)

(assert (=> b!4040580 (= e!2507051 (not (= (tag!7782 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (String!49479 ""))))))

(assert (= (and d!1198264 res!1645597) b!4040579))

(assert (= (and b!4040579 res!1645598) b!4040580))

(assert (=> d!1198264 m!4636419))

(assert (=> b!4040579 m!4636413))

(assert (=> b!4040337 d!1198264))

(declare-fun d!1198266 () Bool)

(declare-fun e!2507052 () Bool)

(assert (=> d!1198266 e!2507052))

(declare-fun res!1645599 () Bool)

(assert (=> d!1198266 (=> (not res!1645599) (not e!2507052))))

(assert (=> d!1198266 (= res!1645599 (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun Unit!62461 () Unit!62457)

(assert (=> d!1198266 (= (lemmaInv!1131 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) Unit!62461)))

(declare-fun b!4040581 () Bool)

(assert (=> b!4040581 (= e!2507052 (equivClasses!2857 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (= (and d!1198266 res!1645599) b!4040581))

(declare-fun m!4636523 () Bool)

(assert (=> d!1198266 m!4636523))

(declare-fun m!4636525 () Bool)

(assert (=> b!4040581 m!4636525))

(assert (=> b!4040337 d!1198266))

(declare-fun d!1198268 () Bool)

(assert (=> d!1198268 (= (size!32326 token!484) (size!32325 (originalCharacters!7522 token!484)))))

(declare-fun Unit!62462 () Unit!62457)

(assert (=> d!1198268 (= (lemmaCharactersSize!1441 token!484) Unit!62462)))

(declare-fun bs!590861 () Bool)

(assert (= bs!590861 d!1198268))

(assert (=> bs!590861 m!4636169))

(assert (=> b!4040337 d!1198268))

(declare-fun d!1198270 () Bool)

(assert (=> d!1198270 (= (size!32326 (_1!24295 (v!39735 lt!1437813))) (size!32325 (originalCharacters!7522 (_1!24295 (v!39735 lt!1437813)))))))

(declare-fun Unit!62463 () Unit!62457)

(assert (=> d!1198270 (= (lemmaCharactersSize!1441 (_1!24295 (v!39735 lt!1437813))) Unit!62463)))

(declare-fun bs!590862 () Bool)

(assert (= bs!590862 d!1198270))

(declare-fun m!4636527 () Bool)

(assert (=> bs!590862 m!4636527))

(assert (=> b!4040337 d!1198270))

(declare-fun d!1198272 () Bool)

(assert (=> d!1198272 (ruleValid!2852 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))

(declare-fun lt!1437888 () Unit!62457)

(assert (=> d!1198272 (= lt!1437888 (choose!24489 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))) rules!2999))))

(assert (=> d!1198272 (contains!8592 rules!2999 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))

(assert (=> d!1198272 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1922 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))) rules!2999) lt!1437888)))

(declare-fun bs!590863 () Bool)

(assert (= bs!590863 d!1198272))

(assert (=> bs!590863 m!4636249))

(declare-fun m!4636529 () Bool)

(assert (=> bs!590863 m!4636529))

(assert (=> bs!590863 m!4636235))

(assert (=> b!4040337 d!1198272))

(declare-fun d!1198274 () Bool)

(declare-fun lt!1437891 () BalanceConc!25860)

(assert (=> d!1198274 (= (list!16100 lt!1437891) (originalCharacters!7522 (_1!24295 (v!39735 lt!1437813))))))

(declare-fun dynLambda!18358 (Int TokenValue!7152) BalanceConc!25860)

(assert (=> d!1198274 (= lt!1437891 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))))

(assert (=> d!1198274 (= (charsOf!4738 (_1!24295 (v!39735 lt!1437813))) lt!1437891)))

(declare-fun b_lambda!117971 () Bool)

(assert (=> (not b_lambda!117971) (not d!1198274)))

(declare-fun t!335006 () Bool)

(declare-fun tb!242873 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335006) tb!242873))

(declare-fun b!4040586 () Bool)

(declare-fun e!2507055 () Bool)

(declare-fun tp!1226804 () Bool)

(declare-fun inv!57792 (Conc!13133) Bool)

(assert (=> b!4040586 (= e!2507055 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))) tp!1226804))))

(declare-fun result!294374 () Bool)

(declare-fun inv!57793 (BalanceConc!25860) Bool)

(assert (=> tb!242873 (= result!294374 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))) e!2507055))))

(assert (= tb!242873 b!4040586))

(declare-fun m!4636531 () Bool)

(assert (=> b!4040586 m!4636531))

(declare-fun m!4636533 () Bool)

(assert (=> tb!242873 m!4636533))

(assert (=> d!1198274 t!335006))

(declare-fun b_and!310591 () Bool)

(assert (= b_and!310577 (and (=> t!335006 result!294374) b_and!310591)))

(declare-fun tb!242875 () Bool)

(declare-fun t!335008 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335008) tb!242875))

(declare-fun result!294378 () Bool)

(assert (= result!294378 result!294374))

(assert (=> d!1198274 t!335008))

(declare-fun b_and!310593 () Bool)

(assert (= b_and!310581 (and (=> t!335008 result!294378) b_and!310593)))

(declare-fun m!4636535 () Bool)

(assert (=> d!1198274 m!4636535))

(declare-fun m!4636537 () Bool)

(assert (=> d!1198274 m!4636537))

(assert (=> b!4040337 d!1198274))

(declare-fun d!1198276 () Bool)

(declare-fun list!16102 (Conc!13133) List!43365)

(assert (=> d!1198276 (= (list!16100 (charsOf!4738 (_1!24295 (v!39735 lt!1437813)))) (list!16102 (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun bs!590864 () Bool)

(assert (= bs!590864 d!1198276))

(declare-fun m!4636539 () Bool)

(assert (=> bs!590864 m!4636539))

(assert (=> b!4040337 d!1198276))

(declare-fun d!1198278 () Bool)

(declare-fun lt!1437894 () Bool)

(declare-fun content!6578 (List!43367) (InoxSet Rule!13644))

(assert (=> d!1198278 (= lt!1437894 (select (content!6578 rules!2999) (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(declare-fun e!2507060 () Bool)

(assert (=> d!1198278 (= lt!1437894 e!2507060)))

(declare-fun res!1645605 () Bool)

(assert (=> d!1198278 (=> (not res!1645605) (not e!2507060))))

(assert (=> d!1198278 (= res!1645605 ((_ is Cons!43243) rules!2999))))

(assert (=> d!1198278 (= (contains!8592 rules!2999 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437894)))

(declare-fun b!4040591 () Bool)

(declare-fun e!2507061 () Bool)

(assert (=> b!4040591 (= e!2507060 e!2507061)))

(declare-fun res!1645604 () Bool)

(assert (=> b!4040591 (=> res!1645604 e!2507061)))

(assert (=> b!4040591 (= res!1645604 (= (h!48663 rules!2999) (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(declare-fun b!4040592 () Bool)

(assert (=> b!4040592 (= e!2507061 (contains!8592 (t!334996 rules!2999) (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(assert (= (and d!1198278 res!1645605) b!4040591))

(assert (= (and b!4040591 (not res!1645604)) b!4040592))

(declare-fun m!4636541 () Bool)

(assert (=> d!1198278 m!4636541))

(declare-fun m!4636543 () Bool)

(assert (=> d!1198278 m!4636543))

(declare-fun m!4636545 () Bool)

(assert (=> b!4040592 m!4636545))

(assert (=> b!4040337 d!1198278))

(declare-fun d!1198280 () Bool)

(declare-fun dynLambda!18359 (Int BalanceConc!25860) TokenValue!7152)

(assert (=> d!1198280 (= (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437803) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))

(declare-fun b_lambda!117973 () Bool)

(assert (=> (not b_lambda!117973) (not d!1198280)))

(declare-fun t!335010 () Bool)

(declare-fun tb!242877 () Bool)

(assert (=> (and b!4040354 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335010) tb!242877))

(declare-fun result!294380 () Bool)

(assert (=> tb!242877 (= result!294380 (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))

(declare-fun m!4636547 () Bool)

(assert (=> tb!242877 m!4636547))

(assert (=> d!1198280 t!335010))

(declare-fun b_and!310595 () Bool)

(assert (= b_and!310575 (and (=> t!335010 result!294380) b_and!310595)))

(declare-fun t!335012 () Bool)

(declare-fun tb!242879 () Bool)

(assert (=> (and b!4040350 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335012) tb!242879))

(declare-fun result!294384 () Bool)

(assert (= result!294384 result!294380))

(assert (=> d!1198280 t!335012))

(declare-fun b_and!310597 () Bool)

(assert (= b_and!310579 (and (=> t!335012 result!294384) b_and!310597)))

(declare-fun m!4636549 () Bool)

(assert (=> d!1198280 m!4636549))

(assert (=> b!4040358 d!1198280))

(declare-fun d!1198282 () Bool)

(declare-fun lt!1437895 () Int)

(assert (=> d!1198282 (>= lt!1437895 0)))

(declare-fun e!2507065 () Int)

(assert (=> d!1198282 (= lt!1437895 e!2507065)))

(declare-fun c!697978 () Bool)

(assert (=> d!1198282 (= c!697978 ((_ is Nil!43241) lt!1437800))))

(assert (=> d!1198282 (= (size!32325 lt!1437800) lt!1437895)))

(declare-fun b!4040595 () Bool)

(assert (=> b!4040595 (= e!2507065 0)))

(declare-fun b!4040596 () Bool)

(assert (=> b!4040596 (= e!2507065 (+ 1 (size!32325 (t!334994 lt!1437800))))))

(assert (= (and d!1198282 c!697978) b!4040595))

(assert (= (and d!1198282 (not c!697978)) b!4040596))

(declare-fun m!4636551 () Bool)

(assert (=> b!4040596 m!4636551))

(assert (=> b!4040358 d!1198282))

(declare-fun b!4040842 () Bool)

(declare-fun e!2507200 () Bool)

(assert (=> b!4040842 (= e!2507200 true)))

(declare-fun d!1198284 () Bool)

(assert (=> d!1198284 e!2507200))

(assert (= d!1198284 b!4040842))

(declare-fun lambda!127385 () Int)

(declare-fun order!22647 () Int)

(declare-fun order!22645 () Int)

(declare-fun dynLambda!18360 (Int Int) Int)

(declare-fun dynLambda!18361 (Int Int) Int)

(assert (=> b!4040842 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (dynLambda!18361 order!22647 lambda!127385))))

(declare-fun order!22649 () Int)

(declare-fun dynLambda!18362 (Int Int) Int)

(assert (=> b!4040842 (< (dynLambda!18362 order!22649 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (dynLambda!18361 order!22647 lambda!127385))))

(assert (=> d!1198284 (= (list!16100 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))) (list!16100 lt!1437803))))

(declare-fun lt!1437986 () Unit!62457)

(declare-fun ForallOf!825 (Int BalanceConc!25860) Unit!62457)

(assert (=> d!1198284 (= lt!1437986 (ForallOf!825 lambda!127385 lt!1437803))))

(assert (=> d!1198284 (= (lemmaSemiInverse!1907 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1437803) lt!1437986)))

(declare-fun b_lambda!117983 () Bool)

(assert (=> (not b_lambda!117983) (not d!1198284)))

(declare-fun t!335026 () Bool)

(declare-fun tb!242893 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335026) tb!242893))

(declare-fun b!4040845 () Bool)

(declare-fun e!2507203 () Bool)

(declare-fun tp!1226807 () Bool)

(assert (=> b!4040845 (= e!2507203 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))) tp!1226807))))

(declare-fun result!294398 () Bool)

(assert (=> tb!242893 (= result!294398 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))) e!2507203))))

(assert (= tb!242893 b!4040845))

(declare-fun m!4636897 () Bool)

(assert (=> b!4040845 m!4636897))

(declare-fun m!4636899 () Bool)

(assert (=> tb!242893 m!4636899))

(assert (=> d!1198284 t!335026))

(declare-fun b_and!310615 () Bool)

(assert (= b_and!310591 (and (=> t!335026 result!294398) b_and!310615)))

(declare-fun tb!242895 () Bool)

(declare-fun t!335028 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335028) tb!242895))

(declare-fun result!294400 () Bool)

(assert (= result!294400 result!294398))

(assert (=> d!1198284 t!335028))

(declare-fun b_and!310617 () Bool)

(assert (= b_and!310593 (and (=> t!335028 result!294400) b_and!310617)))

(declare-fun b_lambda!117985 () Bool)

(assert (=> (not b_lambda!117985) (not d!1198284)))

(assert (=> d!1198284 t!335010))

(declare-fun b_and!310619 () Bool)

(assert (= b_and!310595 (and (=> t!335010 result!294380) b_and!310619)))

(assert (=> d!1198284 t!335012))

(declare-fun b_and!310621 () Bool)

(assert (= b_and!310597 (and (=> t!335012 result!294384) b_and!310621)))

(declare-fun m!4636911 () Bool)

(assert (=> d!1198284 m!4636911))

(declare-fun m!4636913 () Bool)

(assert (=> d!1198284 m!4636913))

(assert (=> d!1198284 m!4636549))

(assert (=> d!1198284 m!4636911))

(assert (=> d!1198284 m!4636549))

(declare-fun m!4636915 () Bool)

(assert (=> d!1198284 m!4636915))

(declare-fun m!4636917 () Bool)

(assert (=> d!1198284 m!4636917))

(assert (=> b!4040358 d!1198284))

(declare-fun d!1198394 () Bool)

(declare-fun fromListB!2344 (List!43365) BalanceConc!25860)

(assert (=> d!1198394 (= (seqFromList!5139 lt!1437800) (fromListB!2344 lt!1437800))))

(declare-fun bs!590882 () Bool)

(assert (= bs!590882 d!1198394))

(declare-fun m!4636935 () Bool)

(assert (=> bs!590882 m!4636935))

(assert (=> b!4040358 d!1198394))

(declare-fun d!1198402 () Bool)

(assert (=> d!1198402 (= (apply!10111 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 lt!1437799)) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799)))))

(declare-fun b_lambda!117987 () Bool)

(assert (=> (not b_lambda!117987) (not d!1198402)))

(declare-fun t!335030 () Bool)

(declare-fun tb!242897 () Bool)

(assert (=> (and b!4040354 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335030) tb!242897))

(declare-fun result!294402 () Bool)

(assert (=> tb!242897 (= result!294402 (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))))))

(declare-fun m!4636937 () Bool)

(assert (=> tb!242897 m!4636937))

(assert (=> d!1198402 t!335030))

(declare-fun b_and!310623 () Bool)

(assert (= b_and!310619 (and (=> t!335030 result!294402) b_and!310623)))

(declare-fun tb!242899 () Bool)

(declare-fun t!335032 () Bool)

(assert (=> (and b!4040350 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335032) tb!242899))

(declare-fun result!294404 () Bool)

(assert (= result!294404 result!294402))

(assert (=> d!1198402 t!335032))

(declare-fun b_and!310625 () Bool)

(assert (= b_and!310621 (and (=> t!335032 result!294404) b_and!310625)))

(assert (=> d!1198402 m!4636155))

(declare-fun m!4636939 () Bool)

(assert (=> d!1198402 m!4636939))

(assert (=> b!4040349 d!1198402))

(declare-fun d!1198404 () Bool)

(assert (=> d!1198404 (= (maxPrefixOneRule!2821 thiss!21717 (rule!9994 token!484) lt!1437817) (Some!9335 (tuple2!42323 (Token!12983 (apply!10111 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 lt!1437799)) (rule!9994 token!484) (size!32325 lt!1437799) lt!1437799) suffixResult!105)))))

(declare-fun lt!1438005 () Unit!62457)

(declare-fun choose!24490 (LexerInterface!6511 List!43367 List!43365 List!43365 List!43365 Rule!13644) Unit!62457)

(assert (=> d!1198404 (= lt!1438005 (choose!24490 thiss!21717 rules!2999 lt!1437799 lt!1437817 suffixResult!105 (rule!9994 token!484)))))

(assert (=> d!1198404 (not (isEmpty!25809 rules!2999))))

(assert (=> d!1198404 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1627 thiss!21717 rules!2999 lt!1437799 lt!1437817 suffixResult!105 (rule!9994 token!484)) lt!1438005)))

(declare-fun bs!590885 () Bool)

(assert (= bs!590885 d!1198404))

(assert (=> bs!590885 m!4636145))

(declare-fun m!4636983 () Bool)

(assert (=> bs!590885 m!4636983))

(assert (=> bs!590885 m!4636233))

(assert (=> bs!590885 m!4636155))

(assert (=> bs!590885 m!4636157))

(assert (=> bs!590885 m!4636155))

(assert (=> bs!590885 m!4636165))

(assert (=> b!4040349 d!1198404))

(declare-fun b!4040935 () Bool)

(declare-fun e!2507256 () Option!9336)

(assert (=> b!4040935 (= e!2507256 None!9335)))

(declare-fun b!4040936 () Bool)

(declare-fun res!1645804 () Bool)

(declare-fun e!2507257 () Bool)

(assert (=> b!4040936 (=> (not res!1645804) (not e!2507257))))

(declare-fun lt!1438019 () Option!9336)

(assert (=> b!4040936 (= res!1645804 (< (size!32325 (_2!24295 (get!14189 lt!1438019))) (size!32325 lt!1437817)))))

(declare-fun b!4040937 () Bool)

(declare-fun res!1645802 () Bool)

(assert (=> b!4040937 (=> (not res!1645802) (not e!2507257))))

(assert (=> b!4040937 (= res!1645802 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))) (_2!24295 (get!14189 lt!1438019))) lt!1437817))))

(declare-fun b!4040938 () Bool)

(declare-fun res!1645801 () Bool)

(assert (=> b!4040938 (=> (not res!1645801) (not e!2507257))))

(assert (=> b!4040938 (= res!1645801 (= (rule!9994 (_1!24295 (get!14189 lt!1438019))) (rule!9994 token!484)))))

(declare-fun b!4040939 () Bool)

(declare-fun res!1645806 () Bool)

(assert (=> b!4040939 (=> (not res!1645806) (not e!2507257))))

(assert (=> b!4040939 (= res!1645806 (= (value!217911 (_1!24295 (get!14189 lt!1438019))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))))))))

(declare-fun b!4040940 () Bool)

(declare-fun e!2507255 () Bool)

(declare-datatypes ((tuple2!42326 0))(
  ( (tuple2!42327 (_1!24297 List!43365) (_2!24297 List!43365)) )
))
(declare-fun findLongestMatchInner!1387 (Regex!11827 List!43365 Int List!43365 List!43365 Int) tuple2!42326)

(assert (=> b!4040940 (= e!2507255 (matchR!5780 (regex!6922 (rule!9994 token!484)) (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(declare-fun d!1198416 () Bool)

(declare-fun e!2507258 () Bool)

(assert (=> d!1198416 e!2507258))

(declare-fun res!1645800 () Bool)

(assert (=> d!1198416 (=> res!1645800 e!2507258)))

(assert (=> d!1198416 (= res!1645800 (isEmpty!25811 lt!1438019))))

(assert (=> d!1198416 (= lt!1438019 e!2507256)))

(declare-fun c!698026 () Bool)

(declare-fun lt!1438018 () tuple2!42326)

(assert (=> d!1198416 (= c!698026 (isEmpty!25808 (_1!24297 lt!1438018)))))

(declare-fun findLongestMatch!1300 (Regex!11827 List!43365) tuple2!42326)

(assert (=> d!1198416 (= lt!1438018 (findLongestMatch!1300 (regex!6922 (rule!9994 token!484)) lt!1437817))))

(assert (=> d!1198416 (ruleValid!2852 thiss!21717 (rule!9994 token!484))))

(assert (=> d!1198416 (= (maxPrefixOneRule!2821 thiss!21717 (rule!9994 token!484) lt!1437817) lt!1438019)))

(declare-fun b!4040941 () Bool)

(declare-fun size!32328 (BalanceConc!25860) Int)

(assert (=> b!4040941 (= e!2507256 (Some!9335 (tuple2!42323 (Token!12983 (apply!10111 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 (_1!24297 lt!1438018))) (rule!9994 token!484) (size!32328 (seqFromList!5139 (_1!24297 lt!1438018))) (_1!24297 lt!1438018)) (_2!24297 lt!1438018))))))

(declare-fun lt!1438017 () Unit!62457)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1360 (Regex!11827 List!43365) Unit!62457)

(assert (=> b!4040941 (= lt!1438017 (longestMatchIsAcceptedByMatchOrIsEmpty!1360 (regex!6922 (rule!9994 token!484)) lt!1437817))))

(declare-fun res!1645805 () Bool)

(assert (=> b!4040941 (= res!1645805 (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(assert (=> b!4040941 (=> res!1645805 e!2507255)))

(assert (=> b!4040941 e!2507255))

(declare-fun lt!1438016 () Unit!62457)

(assert (=> b!4040941 (= lt!1438016 lt!1438017)))

(declare-fun lt!1438020 () Unit!62457)

(assert (=> b!4040941 (= lt!1438020 (lemmaSemiInverse!1907 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 (_1!24297 lt!1438018))))))

(declare-fun b!4040942 () Bool)

(assert (=> b!4040942 (= e!2507258 e!2507257)))

(declare-fun res!1645803 () Bool)

(assert (=> b!4040942 (=> (not res!1645803) (not e!2507257))))

(assert (=> b!4040942 (= res!1645803 (matchR!5780 (regex!6922 (rule!9994 token!484)) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))))))

(declare-fun b!4040943 () Bool)

(assert (=> b!4040943 (= e!2507257 (= (size!32326 (_1!24295 (get!14189 lt!1438019))) (size!32325 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019))))))))

(assert (= (and d!1198416 c!698026) b!4040935))

(assert (= (and d!1198416 (not c!698026)) b!4040941))

(assert (= (and b!4040941 (not res!1645805)) b!4040940))

(assert (= (and d!1198416 (not res!1645800)) b!4040942))

(assert (= (and b!4040942 res!1645803) b!4040937))

(assert (= (and b!4040937 res!1645802) b!4040936))

(assert (= (and b!4040936 res!1645804) b!4040938))

(assert (= (and b!4040938 res!1645801) b!4040939))

(assert (= (and b!4040939 res!1645806) b!4040943))

(declare-fun m!4636985 () Bool)

(assert (=> b!4040941 m!4636985))

(assert (=> b!4040941 m!4636325))

(declare-fun m!4636987 () Bool)

(assert (=> b!4040941 m!4636987))

(declare-fun m!4636989 () Bool)

(assert (=> b!4040941 m!4636989))

(declare-fun m!4636991 () Bool)

(assert (=> b!4040941 m!4636991))

(assert (=> b!4040941 m!4636325))

(assert (=> b!4040941 m!4636989))

(declare-fun m!4636993 () Bool)

(assert (=> b!4040941 m!4636993))

(declare-fun m!4636995 () Bool)

(assert (=> b!4040941 m!4636995))

(assert (=> b!4040941 m!4636989))

(assert (=> b!4040941 m!4636989))

(declare-fun m!4636997 () Bool)

(assert (=> b!4040941 m!4636997))

(declare-fun m!4636999 () Bool)

(assert (=> b!4040941 m!4636999))

(assert (=> b!4040941 m!4636985))

(declare-fun m!4637001 () Bool)

(assert (=> b!4040943 m!4637001))

(declare-fun m!4637003 () Bool)

(assert (=> b!4040943 m!4637003))

(assert (=> b!4040940 m!4636985))

(assert (=> b!4040940 m!4636325))

(assert (=> b!4040940 m!4636985))

(assert (=> b!4040940 m!4636325))

(assert (=> b!4040940 m!4636987))

(declare-fun m!4637005 () Bool)

(assert (=> b!4040940 m!4637005))

(assert (=> b!4040938 m!4637001))

(assert (=> b!4040937 m!4637001))

(declare-fun m!4637007 () Bool)

(assert (=> b!4040937 m!4637007))

(assert (=> b!4040937 m!4637007))

(declare-fun m!4637009 () Bool)

(assert (=> b!4040937 m!4637009))

(assert (=> b!4040937 m!4637009))

(declare-fun m!4637011 () Bool)

(assert (=> b!4040937 m!4637011))

(assert (=> b!4040942 m!4637001))

(assert (=> b!4040942 m!4637007))

(assert (=> b!4040942 m!4637007))

(assert (=> b!4040942 m!4637009))

(assert (=> b!4040942 m!4637009))

(declare-fun m!4637013 () Bool)

(assert (=> b!4040942 m!4637013))

(assert (=> b!4040939 m!4637001))

(declare-fun m!4637015 () Bool)

(assert (=> b!4040939 m!4637015))

(assert (=> b!4040939 m!4637015))

(declare-fun m!4637017 () Bool)

(assert (=> b!4040939 m!4637017))

(assert (=> b!4040936 m!4637001))

(declare-fun m!4637019 () Bool)

(assert (=> b!4040936 m!4637019))

(assert (=> b!4040936 m!4636325))

(declare-fun m!4637021 () Bool)

(assert (=> d!1198416 m!4637021))

(declare-fun m!4637023 () Bool)

(assert (=> d!1198416 m!4637023))

(declare-fun m!4637025 () Bool)

(assert (=> d!1198416 m!4637025))

(assert (=> d!1198416 m!4636201))

(assert (=> b!4040349 d!1198416))

(declare-fun d!1198418 () Bool)

(assert (=> d!1198418 (= lt!1437808 suffixResult!105)))

(declare-fun lt!1438023 () Unit!62457)

(declare-fun choose!24491 (List!43365 List!43365 List!43365 List!43365 List!43365) Unit!62457)

(assert (=> d!1198418 (= lt!1438023 (choose!24491 lt!1437799 lt!1437808 lt!1437799 suffixResult!105 lt!1437817))))

(assert (=> d!1198418 (isPrefix!4009 lt!1437799 lt!1437817)))

(assert (=> d!1198418 (= (lemmaSamePrefixThenSameSuffix!2170 lt!1437799 lt!1437808 lt!1437799 suffixResult!105 lt!1437817) lt!1438023)))

(declare-fun bs!590886 () Bool)

(assert (= bs!590886 d!1198418))

(declare-fun m!4637027 () Bool)

(assert (=> bs!590886 m!4637027))

(assert (=> bs!590886 m!4636225))

(assert (=> b!4040349 d!1198418))

(declare-fun d!1198420 () Bool)

(assert (=> d!1198420 (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 lt!1437808))))

(declare-fun lt!1438024 () Unit!62457)

(assert (=> d!1198420 (= lt!1438024 (choose!24487 lt!1437799 lt!1437808))))

(assert (=> d!1198420 (= (lemmaConcatTwoListThenFirstIsPrefix!2844 lt!1437799 lt!1437808) lt!1438024)))

(declare-fun bs!590887 () Bool)

(assert (= bs!590887 d!1198420))

(assert (=> bs!590887 m!4636179))

(assert (=> bs!590887 m!4636179))

(declare-fun m!4637029 () Bool)

(assert (=> bs!590887 m!4637029))

(declare-fun m!4637031 () Bool)

(assert (=> bs!590887 m!4637031))

(assert (=> b!4040349 d!1198420))

(declare-fun b!4040946 () Bool)

(declare-fun e!2507259 () Bool)

(assert (=> b!4040946 (= e!2507259 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437790)))))

(declare-fun b!4040947 () Bool)

(declare-fun e!2507261 () Bool)

(assert (=> b!4040947 (= e!2507261 (>= (size!32325 lt!1437790) (size!32325 lt!1437799)))))

(declare-fun b!4040945 () Bool)

(declare-fun res!1645810 () Bool)

(assert (=> b!4040945 (=> (not res!1645810) (not e!2507259))))

(assert (=> b!4040945 (= res!1645810 (= (head!8553 lt!1437799) (head!8553 lt!1437790)))))

(declare-fun d!1198422 () Bool)

(assert (=> d!1198422 e!2507261))

(declare-fun res!1645809 () Bool)

(assert (=> d!1198422 (=> res!1645809 e!2507261)))

(declare-fun lt!1438025 () Bool)

(assert (=> d!1198422 (= res!1645809 (not lt!1438025))))

(declare-fun e!2507260 () Bool)

(assert (=> d!1198422 (= lt!1438025 e!2507260)))

(declare-fun res!1645808 () Bool)

(assert (=> d!1198422 (=> res!1645808 e!2507260)))

(assert (=> d!1198422 (= res!1645808 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198422 (= (isPrefix!4009 lt!1437799 lt!1437790) lt!1438025)))

(declare-fun b!4040944 () Bool)

(assert (=> b!4040944 (= e!2507260 e!2507259)))

(declare-fun res!1645807 () Bool)

(assert (=> b!4040944 (=> (not res!1645807) (not e!2507259))))

(assert (=> b!4040944 (= res!1645807 (not ((_ is Nil!43241) lt!1437790)))))

(assert (= (and d!1198422 (not res!1645808)) b!4040944))

(assert (= (and b!4040944 res!1645807) b!4040945))

(assert (= (and b!4040945 res!1645810) b!4040946))

(assert (= (and d!1198422 (not res!1645809)) b!4040947))

(assert (=> b!4040946 m!4636373))

(declare-fun m!4637033 () Bool)

(assert (=> b!4040946 m!4637033))

(assert (=> b!4040946 m!4636373))

(assert (=> b!4040946 m!4637033))

(declare-fun m!4637035 () Bool)

(assert (=> b!4040946 m!4637035))

(declare-fun m!4637037 () Bool)

(assert (=> b!4040947 m!4637037))

(assert (=> b!4040947 m!4636145))

(assert (=> b!4040945 m!4636371))

(declare-fun m!4637039 () Bool)

(assert (=> b!4040945 m!4637039))

(assert (=> b!4040349 d!1198422))

(declare-fun d!1198424 () Bool)

(assert (=> d!1198424 (= (seqFromList!5139 lt!1437799) (fromListB!2344 lt!1437799))))

(declare-fun bs!590888 () Bool)

(assert (= bs!590888 d!1198424))

(declare-fun m!4637041 () Bool)

(assert (=> bs!590888 m!4637041))

(assert (=> b!4040349 d!1198424))

(declare-fun d!1198426 () Bool)

(assert (=> d!1198426 (= (isEmpty!25809 rules!2999) ((_ is Nil!43243) rules!2999))))

(assert (=> b!4040351 d!1198426))

(declare-fun d!1198428 () Bool)

(assert (=> d!1198428 (= (isEmpty!25808 lt!1437800) ((_ is Nil!43241) lt!1437800))))

(assert (=> b!4040332 d!1198428))

(declare-fun d!1198430 () Bool)

(declare-fun res!1645813 () Bool)

(declare-fun e!2507264 () Bool)

(assert (=> d!1198430 (=> (not res!1645813) (not e!2507264))))

(declare-fun rulesValid!2692 (LexerInterface!6511 List!43367) Bool)

(assert (=> d!1198430 (= res!1645813 (rulesValid!2692 thiss!21717 rules!2999))))

(assert (=> d!1198430 (= (rulesInvariant!5854 thiss!21717 rules!2999) e!2507264)))

(declare-fun b!4040950 () Bool)

(declare-datatypes ((List!43369 0))(
  ( (Nil!43245) (Cons!43245 (h!48665 String!49478) (t!335058 List!43369)) )
))
(declare-fun noDuplicateTag!2693 (LexerInterface!6511 List!43367 List!43369) Bool)

(assert (=> b!4040950 (= e!2507264 (noDuplicateTag!2693 thiss!21717 rules!2999 Nil!43245))))

(assert (= (and d!1198430 res!1645813) b!4040950))

(declare-fun m!4637043 () Bool)

(assert (=> d!1198430 m!4637043))

(declare-fun m!4637045 () Bool)

(assert (=> b!4040950 m!4637045))

(assert (=> b!4040353 d!1198430))

(declare-fun d!1198432 () Bool)

(declare-fun lt!1438026 () Int)

(assert (=> d!1198432 (>= lt!1438026 0)))

(declare-fun e!2507265 () Int)

(assert (=> d!1198432 (= lt!1438026 e!2507265)))

(declare-fun c!698027 () Bool)

(assert (=> d!1198432 (= c!698027 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198432 (= (size!32325 lt!1437799) lt!1438026)))

(declare-fun b!4040951 () Bool)

(assert (=> b!4040951 (= e!2507265 0)))

(declare-fun b!4040952 () Bool)

(assert (=> b!4040952 (= e!2507265 (+ 1 (size!32325 (t!334994 lt!1437799))))))

(assert (= (and d!1198432 c!698027) b!4040951))

(assert (= (and d!1198432 (not c!698027)) b!4040952))

(declare-fun m!4637047 () Bool)

(assert (=> b!4040952 m!4637047))

(assert (=> b!4040331 d!1198432))

(declare-fun d!1198434 () Bool)

(declare-fun lt!1438027 () Int)

(assert (=> d!1198434 (>= lt!1438027 0)))

(declare-fun e!2507266 () Int)

(assert (=> d!1198434 (= lt!1438027 e!2507266)))

(declare-fun c!698028 () Bool)

(assert (=> d!1198434 (= c!698028 ((_ is Nil!43241) prefix!494))))

(assert (=> d!1198434 (= (size!32325 prefix!494) lt!1438027)))

(declare-fun b!4040953 () Bool)

(assert (=> b!4040953 (= e!2507266 0)))

(declare-fun b!4040954 () Bool)

(assert (=> b!4040954 (= e!2507266 (+ 1 (size!32325 (t!334994 prefix!494))))))

(assert (= (and d!1198434 c!698028) b!4040953))

(assert (= (and d!1198434 (not c!698028)) b!4040954))

(declare-fun m!4637049 () Bool)

(assert (=> b!4040954 m!4637049))

(assert (=> b!4040331 d!1198434))

(declare-fun d!1198436 () Bool)

(assert (=> d!1198436 (= (list!16100 (charsOf!4738 token!484)) (list!16102 (c!697932 (charsOf!4738 token!484))))))

(declare-fun bs!590889 () Bool)

(assert (= bs!590889 d!1198436))

(declare-fun m!4637051 () Bool)

(assert (=> bs!590889 m!4637051))

(assert (=> b!4040331 d!1198436))

(declare-fun d!1198438 () Bool)

(declare-fun lt!1438028 () BalanceConc!25860)

(assert (=> d!1198438 (= (list!16100 lt!1438028) (originalCharacters!7522 token!484))))

(assert (=> d!1198438 (= lt!1438028 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))

(assert (=> d!1198438 (= (charsOf!4738 token!484) lt!1438028)))

(declare-fun b_lambda!117997 () Bool)

(assert (=> (not b_lambda!117997) (not d!1198438)))

(declare-fun t!335044 () Bool)

(declare-fun tb!242911 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335044) tb!242911))

(declare-fun b!4040955 () Bool)

(declare-fun e!2507267 () Bool)

(declare-fun tp!1226848 () Bool)

(assert (=> b!4040955 (= e!2507267 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))) tp!1226848))))

(declare-fun result!294422 () Bool)

(assert (=> tb!242911 (= result!294422 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))) e!2507267))))

(assert (= tb!242911 b!4040955))

(declare-fun m!4637053 () Bool)

(assert (=> b!4040955 m!4637053))

(declare-fun m!4637055 () Bool)

(assert (=> tb!242911 m!4637055))

(assert (=> d!1198438 t!335044))

(declare-fun b_and!310635 () Bool)

(assert (= b_and!310615 (and (=> t!335044 result!294422) b_and!310635)))

(declare-fun tb!242913 () Bool)

(declare-fun t!335046 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335046) tb!242913))

(declare-fun result!294424 () Bool)

(assert (= result!294424 result!294422))

(assert (=> d!1198438 t!335046))

(declare-fun b_and!310637 () Bool)

(assert (= b_and!310617 (and (=> t!335046 result!294424) b_and!310637)))

(declare-fun m!4637057 () Bool)

(assert (=> d!1198438 m!4637057))

(declare-fun m!4637059 () Bool)

(assert (=> d!1198438 m!4637059))

(assert (=> b!4040331 d!1198438))

(declare-fun b!4040958 () Bool)

(declare-fun e!2507268 () Bool)

(assert (=> b!4040958 (= e!2507268 (isPrefix!4009 (tail!6285 newSuffix!27) (tail!6285 suffix!1299)))))

(declare-fun b!4040959 () Bool)

(declare-fun e!2507270 () Bool)

(assert (=> b!4040959 (= e!2507270 (>= (size!32325 suffix!1299) (size!32325 newSuffix!27)))))

(declare-fun b!4040957 () Bool)

(declare-fun res!1645817 () Bool)

(assert (=> b!4040957 (=> (not res!1645817) (not e!2507268))))

(assert (=> b!4040957 (= res!1645817 (= (head!8553 newSuffix!27) (head!8553 suffix!1299)))))

(declare-fun d!1198440 () Bool)

(assert (=> d!1198440 e!2507270))

(declare-fun res!1645816 () Bool)

(assert (=> d!1198440 (=> res!1645816 e!2507270)))

(declare-fun lt!1438029 () Bool)

(assert (=> d!1198440 (= res!1645816 (not lt!1438029))))

(declare-fun e!2507269 () Bool)

(assert (=> d!1198440 (= lt!1438029 e!2507269)))

(declare-fun res!1645815 () Bool)

(assert (=> d!1198440 (=> res!1645815 e!2507269)))

(assert (=> d!1198440 (= res!1645815 ((_ is Nil!43241) newSuffix!27))))

(assert (=> d!1198440 (= (isPrefix!4009 newSuffix!27 suffix!1299) lt!1438029)))

(declare-fun b!4040956 () Bool)

(assert (=> b!4040956 (= e!2507269 e!2507268)))

(declare-fun res!1645814 () Bool)

(assert (=> b!4040956 (=> (not res!1645814) (not e!2507268))))

(assert (=> b!4040956 (= res!1645814 (not ((_ is Nil!43241) suffix!1299)))))

(assert (= (and d!1198440 (not res!1645815)) b!4040956))

(assert (= (and b!4040956 res!1645814) b!4040957))

(assert (= (and b!4040957 res!1645817) b!4040958))

(assert (= (and d!1198440 (not res!1645816)) b!4040959))

(declare-fun m!4637061 () Bool)

(assert (=> b!4040958 m!4637061))

(declare-fun m!4637063 () Bool)

(assert (=> b!4040958 m!4637063))

(assert (=> b!4040958 m!4637061))

(assert (=> b!4040958 m!4637063))

(declare-fun m!4637065 () Bool)

(assert (=> b!4040958 m!4637065))

(assert (=> b!4040959 m!4636139))

(assert (=> b!4040959 m!4636141))

(declare-fun m!4637067 () Bool)

(assert (=> b!4040957 m!4637067))

(declare-fun m!4637069 () Bool)

(assert (=> b!4040957 m!4637069))

(assert (=> b!4040344 d!1198440))

(declare-fun d!1198442 () Bool)

(assert (=> d!1198442 (= (inv!57785 (tag!7782 (rule!9994 token!484))) (= (mod (str.len (value!217910 (tag!7782 (rule!9994 token!484)))) 2) 0))))

(assert (=> b!4040343 d!1198442))

(declare-fun d!1198444 () Bool)

(declare-fun res!1645818 () Bool)

(declare-fun e!2507271 () Bool)

(assert (=> d!1198444 (=> (not res!1645818) (not e!2507271))))

(assert (=> d!1198444 (= res!1645818 (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))))))

(assert (=> d!1198444 (= (inv!57788 (transformation!6922 (rule!9994 token!484))) e!2507271)))

(declare-fun b!4040960 () Bool)

(assert (=> b!4040960 (= e!2507271 (equivClasses!2857 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))))))

(assert (= (and d!1198444 res!1645818) b!4040960))

(assert (=> d!1198444 m!4636479))

(assert (=> b!4040960 m!4636481))

(assert (=> b!4040343 d!1198444))

(declare-fun d!1198446 () Bool)

(declare-fun res!1645823 () Bool)

(declare-fun e!2507274 () Bool)

(assert (=> d!1198446 (=> (not res!1645823) (not e!2507274))))

(assert (=> d!1198446 (= res!1645823 (not (isEmpty!25808 (originalCharacters!7522 token!484))))))

(assert (=> d!1198446 (= (inv!57789 token!484) e!2507274)))

(declare-fun b!4040965 () Bool)

(declare-fun res!1645824 () Bool)

(assert (=> b!4040965 (=> (not res!1645824) (not e!2507274))))

(assert (=> b!4040965 (= res!1645824 (= (originalCharacters!7522 token!484) (list!16100 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))))

(declare-fun b!4040966 () Bool)

(assert (=> b!4040966 (= e!2507274 (= (size!32326 token!484) (size!32325 (originalCharacters!7522 token!484))))))

(assert (= (and d!1198446 res!1645823) b!4040965))

(assert (= (and b!4040965 res!1645824) b!4040966))

(declare-fun b_lambda!117999 () Bool)

(assert (=> (not b_lambda!117999) (not b!4040965)))

(assert (=> b!4040965 t!335044))

(declare-fun b_and!310639 () Bool)

(assert (= b_and!310635 (and (=> t!335044 result!294422) b_and!310639)))

(assert (=> b!4040965 t!335046))

(declare-fun b_and!310641 () Bool)

(assert (= b_and!310637 (and (=> t!335046 result!294424) b_and!310641)))

(declare-fun m!4637071 () Bool)

(assert (=> d!1198446 m!4637071))

(assert (=> b!4040965 m!4637059))

(assert (=> b!4040965 m!4637059))

(declare-fun m!4637073 () Bool)

(assert (=> b!4040965 m!4637073))

(assert (=> b!4040966 m!4636169))

(assert (=> start!380956 d!1198446))

(declare-fun b!4040967 () Bool)

(declare-fun res!1645825 () Bool)

(declare-fun e!2507277 () Bool)

(assert (=> b!4040967 (=> (not res!1645825) (not e!2507277))))

(declare-fun lt!1438032 () Option!9336)

(assert (=> b!4040967 (= res!1645825 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))) (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032)))))))

(declare-fun b!4040968 () Bool)

(declare-fun res!1645831 () Bool)

(assert (=> b!4040968 (=> (not res!1645831) (not e!2507277))))

(assert (=> b!4040968 (= res!1645831 (= (value!217911 (_1!24295 (get!14189 lt!1438032))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032)))))))))

(declare-fun d!1198448 () Bool)

(declare-fun e!2507276 () Bool)

(assert (=> d!1198448 e!2507276))

(declare-fun res!1645827 () Bool)

(assert (=> d!1198448 (=> res!1645827 e!2507276)))

(assert (=> d!1198448 (= res!1645827 (isEmpty!25811 lt!1438032))))

(declare-fun e!2507275 () Option!9336)

(assert (=> d!1198448 (= lt!1438032 e!2507275)))

(declare-fun c!698029 () Bool)

(assert (=> d!1198448 (= c!698029 (and ((_ is Cons!43243) rules!2999) ((_ is Nil!43243) (t!334996 rules!2999))))))

(declare-fun lt!1438033 () Unit!62457)

(declare-fun lt!1438034 () Unit!62457)

(assert (=> d!1198448 (= lt!1438033 lt!1438034)))

(assert (=> d!1198448 (isPrefix!4009 lt!1437793 lt!1437793)))

(assert (=> d!1198448 (= lt!1438034 (lemmaIsPrefixRefl!2576 lt!1437793 lt!1437793))))

(assert (=> d!1198448 (rulesValidInductive!2525 thiss!21717 rules!2999)))

(assert (=> d!1198448 (= (maxPrefix!3809 thiss!21717 rules!2999 lt!1437793) lt!1438032)))

(declare-fun b!4040969 () Bool)

(declare-fun call!287394 () Option!9336)

(assert (=> b!4040969 (= e!2507275 call!287394)))

(declare-fun b!4040970 () Bool)

(assert (=> b!4040970 (= e!2507276 e!2507277)))

(declare-fun res!1645826 () Bool)

(assert (=> b!4040970 (=> (not res!1645826) (not e!2507277))))

(assert (=> b!4040970 (= res!1645826 (isDefined!7104 lt!1438032))))

(declare-fun b!4040971 () Bool)

(declare-fun res!1645830 () Bool)

(assert (=> b!4040971 (=> (not res!1645830) (not e!2507277))))

(assert (=> b!4040971 (= res!1645830 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))) (_2!24295 (get!14189 lt!1438032))) lt!1437793))))

(declare-fun b!4040972 () Bool)

(assert (=> b!4040972 (= e!2507277 (contains!8592 rules!2999 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))

(declare-fun b!4040973 () Bool)

(declare-fun lt!1438031 () Option!9336)

(declare-fun lt!1438030 () Option!9336)

(assert (=> b!4040973 (= e!2507275 (ite (and ((_ is None!9335) lt!1438031) ((_ is None!9335) lt!1438030)) None!9335 (ite ((_ is None!9335) lt!1438030) lt!1438031 (ite ((_ is None!9335) lt!1438031) lt!1438030 (ite (>= (size!32326 (_1!24295 (v!39735 lt!1438031))) (size!32326 (_1!24295 (v!39735 lt!1438030)))) lt!1438031 lt!1438030)))))))

(assert (=> b!4040973 (= lt!1438031 call!287394)))

(assert (=> b!4040973 (= lt!1438030 (maxPrefix!3809 thiss!21717 (t!334996 rules!2999) lt!1437793))))

(declare-fun b!4040974 () Bool)

(declare-fun res!1645829 () Bool)

(assert (=> b!4040974 (=> (not res!1645829) (not e!2507277))))

(assert (=> b!4040974 (= res!1645829 (< (size!32325 (_2!24295 (get!14189 lt!1438032))) (size!32325 lt!1437793)))))

(declare-fun b!4040975 () Bool)

(declare-fun res!1645828 () Bool)

(assert (=> b!4040975 (=> (not res!1645828) (not e!2507277))))

(assert (=> b!4040975 (= res!1645828 (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun bm!287389 () Bool)

(assert (=> bm!287389 (= call!287394 (maxPrefixOneRule!2821 thiss!21717 (h!48663 rules!2999) lt!1437793))))

(assert (= (and d!1198448 c!698029) b!4040969))

(assert (= (and d!1198448 (not c!698029)) b!4040973))

(assert (= (or b!4040969 b!4040973) bm!287389))

(assert (= (and d!1198448 (not res!1645827)) b!4040970))

(assert (= (and b!4040970 res!1645826) b!4040967))

(assert (= (and b!4040967 res!1645825) b!4040974))

(assert (= (and b!4040974 res!1645829) b!4040971))

(assert (= (and b!4040971 res!1645830) b!4040968))

(assert (= (and b!4040968 res!1645831) b!4040975))

(assert (= (and b!4040975 res!1645828) b!4040972))

(declare-fun m!4637075 () Bool)

(assert (=> b!4040972 m!4637075))

(declare-fun m!4637077 () Bool)

(assert (=> b!4040972 m!4637077))

(declare-fun m!4637079 () Bool)

(assert (=> b!4040973 m!4637079))

(declare-fun m!4637081 () Bool)

(assert (=> b!4040970 m!4637081))

(assert (=> b!4040968 m!4637075))

(declare-fun m!4637083 () Bool)

(assert (=> b!4040968 m!4637083))

(assert (=> b!4040968 m!4637083))

(declare-fun m!4637085 () Bool)

(assert (=> b!4040968 m!4637085))

(assert (=> b!4040975 m!4637075))

(declare-fun m!4637087 () Bool)

(assert (=> b!4040975 m!4637087))

(assert (=> b!4040975 m!4637087))

(declare-fun m!4637089 () Bool)

(assert (=> b!4040975 m!4637089))

(assert (=> b!4040975 m!4637089))

(declare-fun m!4637091 () Bool)

(assert (=> b!4040975 m!4637091))

(declare-fun m!4637093 () Bool)

(assert (=> d!1198448 m!4637093))

(declare-fun m!4637095 () Bool)

(assert (=> d!1198448 m!4637095))

(declare-fun m!4637097 () Bool)

(assert (=> d!1198448 m!4637097))

(assert (=> d!1198448 m!4636509))

(assert (=> b!4040971 m!4637075))

(assert (=> b!4040971 m!4637087))

(assert (=> b!4040971 m!4637087))

(assert (=> b!4040971 m!4637089))

(assert (=> b!4040971 m!4637089))

(declare-fun m!4637099 () Bool)

(assert (=> b!4040971 m!4637099))

(assert (=> b!4040974 m!4637075))

(declare-fun m!4637101 () Bool)

(assert (=> b!4040974 m!4637101))

(assert (=> b!4040974 m!4636389))

(declare-fun m!4637103 () Bool)

(assert (=> bm!287389 m!4637103))

(assert (=> b!4040967 m!4637075))

(assert (=> b!4040967 m!4637087))

(assert (=> b!4040967 m!4637087))

(assert (=> b!4040967 m!4637089))

(assert (=> b!4040346 d!1198448))

(declare-fun d!1198450 () Bool)

(assert (=> d!1198450 (= suffixResult!105 lt!1437805)))

(declare-fun lt!1438035 () Unit!62457)

(assert (=> d!1198450 (= lt!1438035 (choose!24491 lt!1437799 suffixResult!105 lt!1437799 lt!1437805 lt!1437817))))

(assert (=> d!1198450 (isPrefix!4009 lt!1437799 lt!1437817)))

(assert (=> d!1198450 (= (lemmaSamePrefixThenSameSuffix!2170 lt!1437799 suffixResult!105 lt!1437799 lt!1437805 lt!1437817) lt!1438035)))

(declare-fun bs!590890 () Bool)

(assert (= bs!590890 d!1198450))

(declare-fun m!4637105 () Bool)

(assert (=> bs!590890 m!4637105))

(assert (=> bs!590890 m!4636225))

(assert (=> b!4040346 d!1198450))

(declare-fun b!4040978 () Bool)

(declare-fun e!2507278 () Bool)

(assert (=> b!4040978 (= e!2507278 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437804)))))

(declare-fun b!4040979 () Bool)

(declare-fun e!2507280 () Bool)

(assert (=> b!4040979 (= e!2507280 (>= (size!32325 lt!1437804) (size!32325 lt!1437799)))))

(declare-fun b!4040977 () Bool)

(declare-fun res!1645835 () Bool)

(assert (=> b!4040977 (=> (not res!1645835) (not e!2507278))))

(assert (=> b!4040977 (= res!1645835 (= (head!8553 lt!1437799) (head!8553 lt!1437804)))))

(declare-fun d!1198452 () Bool)

(assert (=> d!1198452 e!2507280))

(declare-fun res!1645834 () Bool)

(assert (=> d!1198452 (=> res!1645834 e!2507280)))

(declare-fun lt!1438036 () Bool)

(assert (=> d!1198452 (= res!1645834 (not lt!1438036))))

(declare-fun e!2507279 () Bool)

(assert (=> d!1198452 (= lt!1438036 e!2507279)))

(declare-fun res!1645833 () Bool)

(assert (=> d!1198452 (=> res!1645833 e!2507279)))

(assert (=> d!1198452 (= res!1645833 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198452 (= (isPrefix!4009 lt!1437799 lt!1437804) lt!1438036)))

(declare-fun b!4040976 () Bool)

(assert (=> b!4040976 (= e!2507279 e!2507278)))

(declare-fun res!1645832 () Bool)

(assert (=> b!4040976 (=> (not res!1645832) (not e!2507278))))

(assert (=> b!4040976 (= res!1645832 (not ((_ is Nil!43241) lt!1437804)))))

(assert (= (and d!1198452 (not res!1645833)) b!4040976))

(assert (= (and b!4040976 res!1645832) b!4040977))

(assert (= (and b!4040977 res!1645835) b!4040978))

(assert (= (and d!1198452 (not res!1645834)) b!4040979))

(assert (=> b!4040978 m!4636373))

(declare-fun m!4637107 () Bool)

(assert (=> b!4040978 m!4637107))

(assert (=> b!4040978 m!4636373))

(assert (=> b!4040978 m!4637107))

(declare-fun m!4637109 () Bool)

(assert (=> b!4040978 m!4637109))

(declare-fun m!4637111 () Bool)

(assert (=> b!4040979 m!4637111))

(assert (=> b!4040979 m!4636145))

(assert (=> b!4040977 m!4636371))

(declare-fun m!4637113 () Bool)

(assert (=> b!4040977 m!4637113))

(assert (=> b!4040346 d!1198452))

(declare-fun d!1198454 () Bool)

(assert (=> d!1198454 (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 lt!1437805))))

(declare-fun lt!1438037 () Unit!62457)

(assert (=> d!1198454 (= lt!1438037 (choose!24487 lt!1437799 lt!1437805))))

(assert (=> d!1198454 (= (lemmaConcatTwoListThenFirstIsPrefix!2844 lt!1437799 lt!1437805) lt!1438037)))

(declare-fun bs!590891 () Bool)

(assert (= bs!590891 d!1198454))

(assert (=> bs!590891 m!4636259))

(assert (=> bs!590891 m!4636259))

(declare-fun m!4637115 () Bool)

(assert (=> bs!590891 m!4637115))

(declare-fun m!4637117 () Bool)

(assert (=> bs!590891 m!4637117))

(assert (=> b!4040346 d!1198454))

(declare-fun d!1198456 () Bool)

(declare-fun lt!1438038 () Int)

(assert (=> d!1198456 (>= lt!1438038 0)))

(declare-fun e!2507281 () Int)

(assert (=> d!1198456 (= lt!1438038 e!2507281)))

(declare-fun c!698030 () Bool)

(assert (=> d!1198456 (= c!698030 ((_ is Nil!43241) suffix!1299))))

(assert (=> d!1198456 (= (size!32325 suffix!1299) lt!1438038)))

(declare-fun b!4040980 () Bool)

(assert (=> b!4040980 (= e!2507281 0)))

(declare-fun b!4040981 () Bool)

(assert (=> b!4040981 (= e!2507281 (+ 1 (size!32325 (t!334994 suffix!1299))))))

(assert (= (and d!1198456 c!698030) b!4040980))

(assert (= (and d!1198456 (not c!698030)) b!4040981))

(declare-fun m!4637119 () Bool)

(assert (=> b!4040981 m!4637119))

(assert (=> b!4040348 d!1198456))

(declare-fun d!1198458 () Bool)

(declare-fun lt!1438039 () Int)

(assert (=> d!1198458 (>= lt!1438039 0)))

(declare-fun e!2507282 () Int)

(assert (=> d!1198458 (= lt!1438039 e!2507282)))

(declare-fun c!698031 () Bool)

(assert (=> d!1198458 (= c!698031 ((_ is Nil!43241) newSuffix!27))))

(assert (=> d!1198458 (= (size!32325 newSuffix!27) lt!1438039)))

(declare-fun b!4040982 () Bool)

(assert (=> b!4040982 (= e!2507282 0)))

(declare-fun b!4040983 () Bool)

(assert (=> b!4040983 (= e!2507282 (+ 1 (size!32325 (t!334994 newSuffix!27))))))

(assert (= (and d!1198458 c!698031) b!4040982))

(assert (= (and d!1198458 (not c!698031)) b!4040983))

(declare-fun m!4637121 () Bool)

(assert (=> b!4040983 m!4637121))

(assert (=> b!4040348 d!1198458))

(declare-fun b!4040986 () Bool)

(declare-fun res!1645836 () Bool)

(declare-fun e!2507284 () Bool)

(assert (=> b!4040986 (=> (not res!1645836) (not e!2507284))))

(declare-fun lt!1438040 () List!43365)

(assert (=> b!4040986 (= res!1645836 (= (size!32325 lt!1438040) (+ (size!32325 lt!1437799) (size!32325 lt!1437807))))))

(declare-fun d!1198460 () Bool)

(assert (=> d!1198460 e!2507284))

(declare-fun res!1645837 () Bool)

(assert (=> d!1198460 (=> (not res!1645837) (not e!2507284))))

(assert (=> d!1198460 (= res!1645837 (= (content!6577 lt!1438040) ((_ map or) (content!6577 lt!1437799) (content!6577 lt!1437807))))))

(declare-fun e!2507283 () List!43365)

(assert (=> d!1198460 (= lt!1438040 e!2507283)))

(declare-fun c!698032 () Bool)

(assert (=> d!1198460 (= c!698032 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198460 (= (++!11324 lt!1437799 lt!1437807) lt!1438040)))

(declare-fun b!4040985 () Bool)

(assert (=> b!4040985 (= e!2507283 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) lt!1437807)))))

(declare-fun b!4040984 () Bool)

(assert (=> b!4040984 (= e!2507283 lt!1437807)))

(declare-fun b!4040987 () Bool)

(assert (=> b!4040987 (= e!2507284 (or (not (= lt!1437807 Nil!43241)) (= lt!1438040 lt!1437799)))))

(assert (= (and d!1198460 c!698032) b!4040984))

(assert (= (and d!1198460 (not c!698032)) b!4040985))

(assert (= (and d!1198460 res!1645837) b!4040986))

(assert (= (and b!4040986 res!1645836) b!4040987))

(declare-fun m!4637123 () Bool)

(assert (=> b!4040986 m!4637123))

(assert (=> b!4040986 m!4636145))

(assert (=> b!4040986 m!4636295))

(declare-fun m!4637125 () Bool)

(assert (=> d!1198460 m!4637125))

(assert (=> d!1198460 m!4636275))

(assert (=> d!1198460 m!4636299))

(declare-fun m!4637127 () Bool)

(assert (=> b!4040985 m!4637127))

(assert (=> b!4040347 d!1198460))

(declare-fun d!1198462 () Bool)

(declare-fun lt!1438041 () List!43365)

(assert (=> d!1198462 (= (++!11324 lt!1437799 lt!1438041) prefix!494)))

(declare-fun e!2507285 () List!43365)

(assert (=> d!1198462 (= lt!1438041 e!2507285)))

(declare-fun c!698033 () Bool)

(assert (=> d!1198462 (= c!698033 ((_ is Cons!43241) lt!1437799))))

(assert (=> d!1198462 (>= (size!32325 prefix!494) (size!32325 lt!1437799))))

(assert (=> d!1198462 (= (getSuffix!2426 prefix!494 lt!1437799) lt!1438041)))

(declare-fun b!4040988 () Bool)

(assert (=> b!4040988 (= e!2507285 (getSuffix!2426 (tail!6285 prefix!494) (t!334994 lt!1437799)))))

(declare-fun b!4040989 () Bool)

(assert (=> b!4040989 (= e!2507285 prefix!494)))

(assert (= (and d!1198462 c!698033) b!4040988))

(assert (= (and d!1198462 (not c!698033)) b!4040989))

(declare-fun m!4637129 () Bool)

(assert (=> d!1198462 m!4637129))

(assert (=> d!1198462 m!4636147))

(assert (=> d!1198462 m!4636145))

(assert (=> b!4040988 m!4636425))

(assert (=> b!4040988 m!4636425))

(declare-fun m!4637131 () Bool)

(assert (=> b!4040988 m!4637131))

(assert (=> b!4040347 d!1198462))

(declare-fun b!4040992 () Bool)

(declare-fun e!2507286 () Bool)

(assert (=> b!4040992 (= e!2507286 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 prefix!494)))))

(declare-fun b!4040993 () Bool)

(declare-fun e!2507288 () Bool)

(assert (=> b!4040993 (= e!2507288 (>= (size!32325 prefix!494) (size!32325 lt!1437799)))))

(declare-fun b!4040991 () Bool)

(declare-fun res!1645841 () Bool)

(assert (=> b!4040991 (=> (not res!1645841) (not e!2507286))))

(assert (=> b!4040991 (= res!1645841 (= (head!8553 lt!1437799) (head!8553 prefix!494)))))

(declare-fun d!1198464 () Bool)

(assert (=> d!1198464 e!2507288))

(declare-fun res!1645840 () Bool)

(assert (=> d!1198464 (=> res!1645840 e!2507288)))

(declare-fun lt!1438042 () Bool)

(assert (=> d!1198464 (= res!1645840 (not lt!1438042))))

(declare-fun e!2507287 () Bool)

(assert (=> d!1198464 (= lt!1438042 e!2507287)))

(declare-fun res!1645839 () Bool)

(assert (=> d!1198464 (=> res!1645839 e!2507287)))

(assert (=> d!1198464 (= res!1645839 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198464 (= (isPrefix!4009 lt!1437799 prefix!494) lt!1438042)))

(declare-fun b!4040990 () Bool)

(assert (=> b!4040990 (= e!2507287 e!2507286)))

(declare-fun res!1645838 () Bool)

(assert (=> b!4040990 (=> (not res!1645838) (not e!2507286))))

(assert (=> b!4040990 (= res!1645838 (not ((_ is Nil!43241) prefix!494)))))

(assert (= (and d!1198464 (not res!1645839)) b!4040990))

(assert (= (and b!4040990 res!1645838) b!4040991))

(assert (= (and b!4040991 res!1645841) b!4040992))

(assert (= (and d!1198464 (not res!1645840)) b!4040993))

(assert (=> b!4040992 m!4636373))

(assert (=> b!4040992 m!4636425))

(assert (=> b!4040992 m!4636373))

(assert (=> b!4040992 m!4636425))

(declare-fun m!4637133 () Bool)

(assert (=> b!4040992 m!4637133))

(assert (=> b!4040993 m!4636147))

(assert (=> b!4040993 m!4636145))

(assert (=> b!4040991 m!4636371))

(assert (=> b!4040991 m!4636429))

(assert (=> b!4040347 d!1198464))

(declare-fun d!1198466 () Bool)

(assert (=> d!1198466 (isPrefix!4009 lt!1437799 prefix!494)))

(declare-fun lt!1438045 () Unit!62457)

(declare-fun choose!24494 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> d!1198466 (= lt!1438045 (choose!24494 prefix!494 lt!1437799 lt!1437817))))

(assert (=> d!1198466 (isPrefix!4009 prefix!494 lt!1437817)))

(assert (=> d!1198466 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!573 prefix!494 lt!1437799 lt!1437817) lt!1438045)))

(declare-fun bs!590892 () Bool)

(assert (= bs!590892 d!1198466))

(assert (=> bs!590892 m!4636135))

(declare-fun m!4637135 () Bool)

(assert (=> bs!590892 m!4637135))

(assert (=> bs!590892 m!4636219))

(assert (=> b!4040347 d!1198466))

(declare-fun b!4041004 () Bool)

(declare-fun b_free!112533 () Bool)

(declare-fun b_next!113237 () Bool)

(assert (=> b!4041004 (= b_free!112533 (not b_next!113237))))

(declare-fun tb!242915 () Bool)

(declare-fun t!335048 () Bool)

(assert (=> (and b!4041004 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335048) tb!242915))

(declare-fun result!294428 () Bool)

(assert (= result!294428 result!294380))

(assert (=> d!1198280 t!335048))

(assert (=> d!1198284 t!335048))

(declare-fun t!335050 () Bool)

(declare-fun tb!242917 () Bool)

(assert (=> (and b!4041004 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335050) tb!242917))

(declare-fun result!294430 () Bool)

(assert (= result!294430 result!294402))

(assert (=> d!1198402 t!335050))

(declare-fun b_and!310643 () Bool)

(declare-fun tp!1226857 () Bool)

(assert (=> b!4041004 (= tp!1226857 (and (=> t!335048 result!294428) (=> t!335050 result!294430) b_and!310643))))

(declare-fun b_free!112535 () Bool)

(declare-fun b_next!113239 () Bool)

(assert (=> b!4041004 (= b_free!112535 (not b_next!113239))))

(declare-fun tb!242919 () Bool)

(declare-fun t!335052 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335052) tb!242919))

(declare-fun result!294432 () Bool)

(assert (= result!294432 result!294374))

(assert (=> d!1198274 t!335052))

(declare-fun tb!242921 () Bool)

(declare-fun t!335054 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335054) tb!242921))

(declare-fun result!294434 () Bool)

(assert (= result!294434 result!294398))

(assert (=> d!1198284 t!335054))

(declare-fun t!335056 () Bool)

(declare-fun tb!242923 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335056) tb!242923))

(declare-fun result!294436 () Bool)

(assert (= result!294436 result!294422))

(assert (=> d!1198438 t!335056))

(assert (=> b!4040965 t!335056))

(declare-fun b_and!310645 () Bool)

(declare-fun tp!1226858 () Bool)

(assert (=> b!4041004 (= tp!1226858 (and (=> t!335052 result!294432) (=> t!335054 result!294434) (=> t!335056 result!294436) b_and!310645))))

(declare-fun e!2507297 () Bool)

(assert (=> b!4041004 (= e!2507297 (and tp!1226857 tp!1226858))))

(declare-fun b!4041003 () Bool)

(declare-fun tp!1226859 () Bool)

(declare-fun e!2507298 () Bool)

(assert (=> b!4041003 (= e!2507298 (and tp!1226859 (inv!57785 (tag!7782 (h!48663 (t!334996 rules!2999)))) (inv!57788 (transformation!6922 (h!48663 (t!334996 rules!2999)))) e!2507297))))

(declare-fun b!4041002 () Bool)

(declare-fun e!2507300 () Bool)

(declare-fun tp!1226860 () Bool)

(assert (=> b!4041002 (= e!2507300 (and e!2507298 tp!1226860))))

(assert (=> b!4040359 (= tp!1226796 e!2507300)))

(assert (= b!4041003 b!4041004))

(assert (= b!4041002 b!4041003))

(assert (= (and b!4040359 ((_ is Cons!43243) (t!334996 rules!2999))) b!4041002))

(declare-fun m!4637137 () Bool)

(assert (=> b!4041003 m!4637137))

(declare-fun m!4637139 () Bool)

(assert (=> b!4041003 m!4637139))

(declare-fun b!4041009 () Bool)

(declare-fun e!2507303 () Bool)

(declare-fun tp!1226863 () Bool)

(assert (=> b!4041009 (= e!2507303 (and tp_is_empty!20625 tp!1226863))))

(assert (=> b!4040339 (= tp!1226786 e!2507303)))

(assert (= (and b!4040339 ((_ is Cons!43241) (t!334994 suffix!1299))) b!4041009))

(declare-fun b!4041010 () Bool)

(declare-fun e!2507304 () Bool)

(declare-fun tp!1226864 () Bool)

(assert (=> b!4041010 (= e!2507304 (and tp_is_empty!20625 tp!1226864))))

(assert (=> b!4040341 (= tp!1226793 e!2507304)))

(assert (= (and b!4040341 ((_ is Cons!43241) (originalCharacters!7522 token!484))) b!4041010))

(declare-fun b!4041011 () Bool)

(declare-fun e!2507305 () Bool)

(declare-fun tp!1226865 () Bool)

(assert (=> b!4041011 (= e!2507305 (and tp_is_empty!20625 tp!1226865))))

(assert (=> b!4040362 (= tp!1226794 e!2507305)))

(assert (= (and b!4040362 ((_ is Cons!43241) (t!334994 newSuffix!27))) b!4041011))

(declare-fun b!4041012 () Bool)

(declare-fun e!2507306 () Bool)

(declare-fun tp!1226866 () Bool)

(assert (=> b!4041012 (= e!2507306 (and tp_is_empty!20625 tp!1226866))))

(assert (=> b!4040364 (= tp!1226795 e!2507306)))

(assert (= (and b!4040364 ((_ is Cons!43241) (t!334994 suffixResult!105))) b!4041012))

(declare-fun b!4041023 () Bool)

(declare-fun e!2507309 () Bool)

(assert (=> b!4041023 (= e!2507309 tp_is_empty!20625)))

(assert (=> b!4040363 (= tp!1226790 e!2507309)))

(declare-fun b!4041026 () Bool)

(declare-fun tp!1226877 () Bool)

(declare-fun tp!1226879 () Bool)

(assert (=> b!4041026 (= e!2507309 (and tp!1226877 tp!1226879))))

(declare-fun b!4041025 () Bool)

(declare-fun tp!1226881 () Bool)

(assert (=> b!4041025 (= e!2507309 tp!1226881)))

(declare-fun b!4041024 () Bool)

(declare-fun tp!1226878 () Bool)

(declare-fun tp!1226880 () Bool)

(assert (=> b!4041024 (= e!2507309 (and tp!1226878 tp!1226880))))

(assert (= (and b!4040363 ((_ is ElementMatch!11827) (regex!6922 (h!48663 rules!2999)))) b!4041023))

(assert (= (and b!4040363 ((_ is Concat!18980) (regex!6922 (h!48663 rules!2999)))) b!4041024))

(assert (= (and b!4040363 ((_ is Star!11827) (regex!6922 (h!48663 rules!2999)))) b!4041025))

(assert (= (and b!4040363 ((_ is Union!11827) (regex!6922 (h!48663 rules!2999)))) b!4041026))

(declare-fun b!4041027 () Bool)

(declare-fun e!2507310 () Bool)

(assert (=> b!4041027 (= e!2507310 tp_is_empty!20625)))

(assert (=> b!4040343 (= tp!1226788 e!2507310)))

(declare-fun b!4041030 () Bool)

(declare-fun tp!1226882 () Bool)

(declare-fun tp!1226884 () Bool)

(assert (=> b!4041030 (= e!2507310 (and tp!1226882 tp!1226884))))

(declare-fun b!4041029 () Bool)

(declare-fun tp!1226886 () Bool)

(assert (=> b!4041029 (= e!2507310 tp!1226886)))

(declare-fun b!4041028 () Bool)

(declare-fun tp!1226883 () Bool)

(declare-fun tp!1226885 () Bool)

(assert (=> b!4041028 (= e!2507310 (and tp!1226883 tp!1226885))))

(assert (= (and b!4040343 ((_ is ElementMatch!11827) (regex!6922 (rule!9994 token!484)))) b!4041027))

(assert (= (and b!4040343 ((_ is Concat!18980) (regex!6922 (rule!9994 token!484)))) b!4041028))

(assert (= (and b!4040343 ((_ is Star!11827) (regex!6922 (rule!9994 token!484)))) b!4041029))

(assert (= (and b!4040343 ((_ is Union!11827) (regex!6922 (rule!9994 token!484)))) b!4041030))

(declare-fun b!4041031 () Bool)

(declare-fun e!2507311 () Bool)

(declare-fun tp!1226887 () Bool)

(assert (=> b!4041031 (= e!2507311 (and tp_is_empty!20625 tp!1226887))))

(assert (=> b!4040345 (= tp!1226798 e!2507311)))

(assert (= (and b!4040345 ((_ is Cons!43241) (t!334994 newSuffixResult!27))) b!4041031))

(declare-fun b!4041032 () Bool)

(declare-fun e!2507312 () Bool)

(declare-fun tp!1226888 () Bool)

(assert (=> b!4041032 (= e!2507312 (and tp_is_empty!20625 tp!1226888))))

(assert (=> b!4040357 (= tp!1226792 e!2507312)))

(assert (= (and b!4040357 ((_ is Cons!43241) (t!334994 prefix!494))) b!4041032))

(declare-fun b_lambda!118001 () Bool)

(assert (= b_lambda!117997 (or (and b!4040354 b_free!112523) (and b!4040350 b_free!112527 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) (and b!4041004 b_free!112535 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) b_lambda!118001)))

(declare-fun b_lambda!118003 () Bool)

(assert (= b_lambda!117987 (or (and b!4040354 b_free!112521) (and b!4040350 b_free!112525 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (and b!4041004 b_free!112533 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) b_lambda!118003)))

(declare-fun b_lambda!118005 () Bool)

(assert (= b_lambda!117999 (or (and b!4040354 b_free!112523) (and b!4040350 b_free!112527 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) (and b!4041004 b_free!112535 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) b_lambda!118005)))

(check-sat (not b!4040519) (not b!4040498) (not bm!287376) (not b!4040374) (not d!1198424) (not b!4040471) (not d!1198226) (not d!1198270) (not d!1198220) (not b!4040514) (not tb!242897) (not b!4041002) (not b!4040510) (not b!4040566) (not b!4040596) (not d!1198252) (not b_next!113227) (not d!1198466) (not b!4040518) (not d!1198448) (not b!4040940) (not b!4040499) (not d!1198262) (not b_lambda!118005) tp_is_empty!20625 (not b!4040936) (not b!4040943) (not d!1198184) (not d!1198246) (not b_lambda!117985) (not d!1198260) (not b!4040531) (not b_next!113231) (not b!4040942) (not b!4040939) (not d!1198248) (not b_next!113237) (not d!1198460) (not b!4040569) (not d!1198418) (not b!4040424) b_and!310645 (not b!4040985) (not b!4040379) (not b!4041009) (not b!4040547) (not tb!242873) (not b!4040428) (not b!4040526) (not b!4040476) (not d!1198454) (not b!4041012) (not b!4040991) (not b!4040382) (not d!1198436) (not b!4040489) (not tb!242911) (not d!1198284) (not b!4040974) (not b!4040512) (not b!4040399) (not b!4040992) (not b!4041010) (not b!4040950) (not b!4041031) (not b_next!113229) (not b!4040965) (not d!1198272) b_and!310639 (not d!1198186) (not d!1198250) (not b!4040535) (not b!4040957) (not b!4040579) b_and!310625 (not bm!287380) (not b!4040466) (not d!1198234) (not b_lambda!117983) (not b!4040488) (not b!4040977) (not d!1198216) (not b!4040592) (not b!4040978) (not b!4040511) (not d!1198230) (not b!4040572) (not b!4040937) (not b!4041026) (not b!4040567) (not b!4040540) (not d!1198238) (not d!1198276) (not b!4040941) (not d!1198268) (not b_lambda!117973) (not d!1198188) (not b!4040501) (not b!4040993) (not b!4040425) (not b!4040959) (not b!4040946) b_and!310643 (not d!1198194) (not b!4040487) (not b!4040516) (not b!4040494) b_and!310623 (not b_lambda!118001) (not b!4040571) (not b!4040386) (not b!4040971) (not b!4040938) (not d!1198244) (not d!1198450) (not b!4040952) (not d!1198394) (not b!4040429) (not b!4040973) b_and!310641 (not b!4040972) (not b!4040845) (not b!4040955) (not d!1198278) (not b!4040967) (not b!4041030) (not b!4040981) (not b!4040968) (not b!4041003) (not d!1198444) (not b!4040960) (not tb!242877) (not b!4040375) (not b!4040947) (not d!1198404) (not b!4040975) (not tb!242893) (not b_next!113239) (not d!1198192) (not b!4041029) (not d!1198446) (not b!4040576) (not d!1198218) (not b!4041024) (not d!1198256) (not d!1198420) (not d!1198462) (not b!4040581) (not b!4040383) (not b_lambda!118003) (not bm!287377) (not b!4040988) (not b_lambda!117971) (not b!4040970) (not b!4040958) (not b!4040530) (not d!1198430) (not b!4040520) (not d!1198416) (not b!4040586) (not b!4040387) (not b!4040515) (not d!1198224) (not b!4040495) (not b_next!113225) (not d!1198264) (not b!4040426) (not d!1198266) (not b!4040983) (not b!4041028) (not b!4041011) (not b!4040570) (not b!4040508) (not b!4040527) (not b!4041032) (not b!4040468) (not b!4040465) (not b!4040474) (not d!1198438) (not b!4040462) (not b!4040378) (not b!4040523) (not b!4041025) (not b!4040945) (not b!4040979) (not b!4040577) (not b!4040475) (not d!1198190) (not b!4040966) (not b!4040954) (not b!4040574) (not bm!287389) (not d!1198274) (not b!4040986) (not b!4040522) (not d!1198254) (not b!4040504) (not b!4040461) (not b!4040573))
(check-sat (not b_next!113227) (not b_next!113231) b_and!310625 b_and!310643 b_and!310623 b_and!310641 (not b_next!113239) (not b_next!113225) (not b_next!113237) b_and!310645 (not b_next!113229) b_and!310639)
(get-model)

(assert (=> d!1198216 d!1198202))

(declare-fun d!1198540 () Bool)

(assert (=> d!1198540 (isPrefix!4009 lt!1437817 lt!1437817)))

(assert (=> d!1198540 true))

(declare-fun _$45!1988 () Unit!62457)

(assert (=> d!1198540 (= (choose!24484 lt!1437817 lt!1437817) _$45!1988)))

(declare-fun bs!590898 () Bool)

(assert (= bs!590898 d!1198540))

(assert (=> bs!590898 m!4636263))

(assert (=> d!1198216 d!1198540))

(declare-fun d!1198542 () Bool)

(declare-fun c!698081 () Bool)

(assert (=> d!1198542 (= c!698081 ((_ is Nil!43241) lt!1437826))))

(declare-fun e!2507401 () (InoxSet C!23840))

(assert (=> d!1198542 (= (content!6577 lt!1437826) e!2507401)))

(declare-fun b!4041184 () Bool)

(assert (=> b!4041184 (= e!2507401 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041185 () Bool)

(assert (=> b!4041185 (= e!2507401 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437826) true) (content!6577 (t!334994 lt!1437826))))))

(assert (= (and d!1198542 c!698081) b!4041184))

(assert (= (and d!1198542 (not c!698081)) b!4041185))

(declare-fun m!4637305 () Bool)

(assert (=> b!4041185 m!4637305))

(declare-fun m!4637307 () Bool)

(assert (=> b!4041185 m!4637307))

(assert (=> d!1198192 d!1198542))

(declare-fun d!1198544 () Bool)

(declare-fun c!698082 () Bool)

(assert (=> d!1198544 (= c!698082 ((_ is Nil!43241) lt!1437799))))

(declare-fun e!2507402 () (InoxSet C!23840))

(assert (=> d!1198544 (= (content!6577 lt!1437799) e!2507402)))

(declare-fun b!4041186 () Bool)

(assert (=> b!4041186 (= e!2507402 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041187 () Bool)

(assert (=> b!4041187 (= e!2507402 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437799) true) (content!6577 (t!334994 lt!1437799))))))

(assert (= (and d!1198544 c!698082) b!4041186))

(assert (= (and d!1198544 (not c!698082)) b!4041187))

(declare-fun m!4637309 () Bool)

(assert (=> b!4041187 m!4637309))

(declare-fun m!4637311 () Bool)

(assert (=> b!4041187 m!4637311))

(assert (=> d!1198192 d!1198544))

(declare-fun d!1198546 () Bool)

(declare-fun c!698083 () Bool)

(assert (=> d!1198546 (= c!698083 ((_ is Nil!43241) lt!1437805))))

(declare-fun e!2507403 () (InoxSet C!23840))

(assert (=> d!1198546 (= (content!6577 lt!1437805) e!2507403)))

(declare-fun b!4041188 () Bool)

(assert (=> b!4041188 (= e!2507403 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041189 () Bool)

(assert (=> b!4041189 (= e!2507403 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437805) true) (content!6577 (t!334994 lt!1437805))))))

(assert (= (and d!1198546 c!698083) b!4041188))

(assert (= (and d!1198546 (not c!698083)) b!4041189))

(declare-fun m!4637313 () Bool)

(assert (=> b!4041189 m!4637313))

(declare-fun m!4637315 () Bool)

(assert (=> b!4041189 m!4637315))

(assert (=> d!1198192 d!1198546))

(declare-fun d!1198548 () Bool)

(declare-fun res!1645901 () Bool)

(declare-fun e!2507408 () Bool)

(assert (=> d!1198548 (=> res!1645901 e!2507408)))

(assert (=> d!1198548 (= res!1645901 ((_ is Nil!43243) rules!2999))))

(assert (=> d!1198548 (= (noDuplicateTag!2693 thiss!21717 rules!2999 Nil!43245) e!2507408)))

(declare-fun b!4041194 () Bool)

(declare-fun e!2507409 () Bool)

(assert (=> b!4041194 (= e!2507408 e!2507409)))

(declare-fun res!1645902 () Bool)

(assert (=> b!4041194 (=> (not res!1645902) (not e!2507409))))

(declare-fun contains!8593 (List!43369 String!49478) Bool)

(assert (=> b!4041194 (= res!1645902 (not (contains!8593 Nil!43245 (tag!7782 (h!48663 rules!2999)))))))

(declare-fun b!4041195 () Bool)

(assert (=> b!4041195 (= e!2507409 (noDuplicateTag!2693 thiss!21717 (t!334996 rules!2999) (Cons!43245 (tag!7782 (h!48663 rules!2999)) Nil!43245)))))

(assert (= (and d!1198548 (not res!1645901)) b!4041194))

(assert (= (and b!4041194 res!1645902) b!4041195))

(declare-fun m!4637317 () Bool)

(assert (=> b!4041194 m!4637317))

(declare-fun m!4637319 () Bool)

(assert (=> b!4041195 m!4637319))

(assert (=> b!4040950 d!1198548))

(declare-fun b!4041208 () Bool)

(declare-fun e!2507415 () Bool)

(assert (=> b!4041208 (= e!2507415 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437799)) (tail!6285 (tail!6285 prefix!494))))))

(declare-fun b!4041209 () Bool)

(declare-fun e!2507417 () Bool)

(assert (=> b!4041209 (= e!2507417 (>= (size!32325 (tail!6285 prefix!494)) (size!32325 (tail!6285 lt!1437799))))))

(declare-fun b!4041207 () Bool)

(declare-fun res!1645906 () Bool)

(assert (=> b!4041207 (=> (not res!1645906) (not e!2507415))))

(assert (=> b!4041207 (= res!1645906 (= (head!8553 (tail!6285 lt!1437799)) (head!8553 (tail!6285 prefix!494))))))

(declare-fun d!1198550 () Bool)

(assert (=> d!1198550 e!2507417))

(declare-fun res!1645905 () Bool)

(assert (=> d!1198550 (=> res!1645905 e!2507417)))

(declare-fun lt!1438092 () Bool)

(assert (=> d!1198550 (= res!1645905 (not lt!1438092))))

(declare-fun e!2507416 () Bool)

(assert (=> d!1198550 (= lt!1438092 e!2507416)))

(declare-fun res!1645904 () Bool)

(assert (=> d!1198550 (=> res!1645904 e!2507416)))

(assert (=> d!1198550 (= res!1645904 ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> d!1198550 (= (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 prefix!494)) lt!1438092)))

(declare-fun b!4041206 () Bool)

(assert (=> b!4041206 (= e!2507416 e!2507415)))

(declare-fun res!1645903 () Bool)

(assert (=> b!4041206 (=> (not res!1645903) (not e!2507415))))

(assert (=> b!4041206 (= res!1645903 (not ((_ is Nil!43241) (tail!6285 prefix!494))))))

(assert (= (and d!1198550 (not res!1645904)) b!4041206))

(assert (= (and b!4041206 res!1645903) b!4041207))

(assert (= (and b!4041207 res!1645906) b!4041208))

(assert (= (and d!1198550 (not res!1645905)) b!4041209))

(assert (=> b!4041208 m!4636373))

(declare-fun m!4637321 () Bool)

(assert (=> b!4041208 m!4637321))

(assert (=> b!4041208 m!4636425))

(declare-fun m!4637325 () Bool)

(assert (=> b!4041208 m!4637325))

(assert (=> b!4041208 m!4637321))

(assert (=> b!4041208 m!4637325))

(declare-fun m!4637329 () Bool)

(assert (=> b!4041208 m!4637329))

(assert (=> b!4041209 m!4636425))

(declare-fun m!4637331 () Bool)

(assert (=> b!4041209 m!4637331))

(assert (=> b!4041209 m!4636373))

(declare-fun m!4637335 () Bool)

(assert (=> b!4041209 m!4637335))

(assert (=> b!4041207 m!4636373))

(declare-fun m!4637337 () Bool)

(assert (=> b!4041207 m!4637337))

(assert (=> b!4041207 m!4636425))

(declare-fun m!4637339 () Bool)

(assert (=> b!4041207 m!4637339))

(assert (=> b!4040992 d!1198550))

(declare-fun d!1198552 () Bool)

(assert (=> d!1198552 (= (tail!6285 lt!1437799) (t!334994 lt!1437799))))

(assert (=> b!4040992 d!1198552))

(declare-fun d!1198556 () Bool)

(assert (=> d!1198556 (= (tail!6285 prefix!494) (t!334994 prefix!494))))

(assert (=> b!4040992 d!1198556))

(declare-fun d!1198558 () Bool)

(declare-fun lt!1438093 () Int)

(assert (=> d!1198558 (>= lt!1438093 0)))

(declare-fun e!2507418 () Int)

(assert (=> d!1198558 (= lt!1438093 e!2507418)))

(declare-fun c!698089 () Bool)

(assert (=> d!1198558 (= c!698089 ((_ is Nil!43241) (_2!24295 (get!14189 lt!1438019))))))

(assert (=> d!1198558 (= (size!32325 (_2!24295 (get!14189 lt!1438019))) lt!1438093)))

(declare-fun b!4041210 () Bool)

(assert (=> b!4041210 (= e!2507418 0)))

(declare-fun b!4041211 () Bool)

(assert (=> b!4041211 (= e!2507418 (+ 1 (size!32325 (t!334994 (_2!24295 (get!14189 lt!1438019))))))))

(assert (= (and d!1198558 c!698089) b!4041210))

(assert (= (and d!1198558 (not c!698089)) b!4041211))

(declare-fun m!4637345 () Bool)

(assert (=> b!4041211 m!4637345))

(assert (=> b!4040936 d!1198558))

(declare-fun d!1198564 () Bool)

(assert (=> d!1198564 (= (get!14189 lt!1438019) (v!39735 lt!1438019))))

(assert (=> b!4040936 d!1198564))

(declare-fun d!1198568 () Bool)

(declare-fun lt!1438096 () Int)

(assert (=> d!1198568 (>= lt!1438096 0)))

(declare-fun e!2507423 () Int)

(assert (=> d!1198568 (= lt!1438096 e!2507423)))

(declare-fun c!698091 () Bool)

(assert (=> d!1198568 (= c!698091 ((_ is Nil!43241) lt!1437817))))

(assert (=> d!1198568 (= (size!32325 lt!1437817) lt!1438096)))

(declare-fun b!4041218 () Bool)

(assert (=> b!4041218 (= e!2507423 0)))

(declare-fun b!4041219 () Bool)

(assert (=> b!4041219 (= e!2507423 (+ 1 (size!32325 (t!334994 lt!1437817))))))

(assert (= (and d!1198568 c!698091) b!4041218))

(assert (= (and d!1198568 (not c!698091)) b!4041219))

(declare-fun m!4637355 () Bool)

(assert (=> b!4041219 m!4637355))

(assert (=> b!4040936 d!1198568))

(declare-fun d!1198572 () Bool)

(declare-fun c!698092 () Bool)

(assert (=> d!1198572 (= c!698092 ((_ is Nil!43241) lt!1437822))))

(declare-fun e!2507424 () (InoxSet C!23840))

(assert (=> d!1198572 (= (content!6577 lt!1437822) e!2507424)))

(declare-fun b!4041220 () Bool)

(assert (=> b!4041220 (= e!2507424 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041221 () Bool)

(assert (=> b!4041221 (= e!2507424 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437822) true) (content!6577 (t!334994 lt!1437822))))))

(assert (= (and d!1198572 c!698092) b!4041220))

(assert (= (and d!1198572 (not c!698092)) b!4041221))

(declare-fun m!4637357 () Bool)

(assert (=> b!4041221 m!4637357))

(declare-fun m!4637359 () Bool)

(assert (=> b!4041221 m!4637359))

(assert (=> d!1198188 d!1198572))

(declare-fun d!1198574 () Bool)

(declare-fun c!698093 () Bool)

(assert (=> d!1198574 (= c!698093 ((_ is Nil!43241) lt!1437807))))

(declare-fun e!2507425 () (InoxSet C!23840))

(assert (=> d!1198574 (= (content!6577 lt!1437807) e!2507425)))

(declare-fun b!4041222 () Bool)

(assert (=> b!4041222 (= e!2507425 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041223 () Bool)

(assert (=> b!4041223 (= e!2507425 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437807) true) (content!6577 (t!334994 lt!1437807))))))

(assert (= (and d!1198574 c!698093) b!4041222))

(assert (= (and d!1198574 (not c!698093)) b!4041223))

(declare-fun m!4637361 () Bool)

(assert (=> b!4041223 m!4637361))

(declare-fun m!4637363 () Bool)

(assert (=> b!4041223 m!4637363))

(assert (=> d!1198188 d!1198574))

(declare-fun d!1198576 () Bool)

(declare-fun c!698094 () Bool)

(assert (=> d!1198576 (= c!698094 ((_ is Nil!43241) suffix!1299))))

(declare-fun e!2507426 () (InoxSet C!23840))

(assert (=> d!1198576 (= (content!6577 suffix!1299) e!2507426)))

(declare-fun b!4041224 () Bool)

(assert (=> b!4041224 (= e!2507426 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041225 () Bool)

(assert (=> b!4041225 (= e!2507426 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 suffix!1299) true) (content!6577 (t!334994 suffix!1299))))))

(assert (= (and d!1198576 c!698094) b!4041224))

(assert (= (and d!1198576 (not c!698094)) b!4041225))

(declare-fun m!4637365 () Bool)

(assert (=> b!4041225 m!4637365))

(declare-fun m!4637367 () Bool)

(assert (=> b!4041225 m!4637367))

(assert (=> d!1198188 d!1198576))

(declare-fun b!4041228 () Bool)

(declare-fun e!2507427 () Bool)

(assert (=> b!4041228 (= e!2507427 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 (++!11324 prefix!494 newSuffix!27))))))

(declare-fun e!2507429 () Bool)

(declare-fun b!4041229 () Bool)

(assert (=> b!4041229 (= e!2507429 (>= (size!32325 (++!11324 prefix!494 newSuffix!27)) (size!32325 lt!1437799)))))

(declare-fun b!4041227 () Bool)

(declare-fun res!1645914 () Bool)

(assert (=> b!4041227 (=> (not res!1645914) (not e!2507427))))

(assert (=> b!4041227 (= res!1645914 (= (head!8553 lt!1437799) (head!8553 (++!11324 prefix!494 newSuffix!27))))))

(declare-fun d!1198578 () Bool)

(assert (=> d!1198578 e!2507429))

(declare-fun res!1645913 () Bool)

(assert (=> d!1198578 (=> res!1645913 e!2507429)))

(declare-fun lt!1438097 () Bool)

(assert (=> d!1198578 (= res!1645913 (not lt!1438097))))

(declare-fun e!2507428 () Bool)

(assert (=> d!1198578 (= lt!1438097 e!2507428)))

(declare-fun res!1645912 () Bool)

(assert (=> d!1198578 (=> res!1645912 e!2507428)))

(assert (=> d!1198578 (= res!1645912 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198578 (= (isPrefix!4009 lt!1437799 (++!11324 prefix!494 newSuffix!27)) lt!1438097)))

(declare-fun b!4041226 () Bool)

(assert (=> b!4041226 (= e!2507428 e!2507427)))

(declare-fun res!1645911 () Bool)

(assert (=> b!4041226 (=> (not res!1645911) (not e!2507427))))

(assert (=> b!4041226 (= res!1645911 (not ((_ is Nil!43241) (++!11324 prefix!494 newSuffix!27))))))

(assert (= (and d!1198578 (not res!1645912)) b!4041226))

(assert (= (and b!4041226 res!1645911) b!4041227))

(assert (= (and b!4041227 res!1645914) b!4041228))

(assert (= (and d!1198578 (not res!1645913)) b!4041229))

(assert (=> b!4041228 m!4636373))

(assert (=> b!4041228 m!4636189))

(declare-fun m!4637369 () Bool)

(assert (=> b!4041228 m!4637369))

(assert (=> b!4041228 m!4636373))

(assert (=> b!4041228 m!4637369))

(declare-fun m!4637371 () Bool)

(assert (=> b!4041228 m!4637371))

(assert (=> b!4041229 m!4636189))

(declare-fun m!4637373 () Bool)

(assert (=> b!4041229 m!4637373))

(assert (=> b!4041229 m!4636145))

(assert (=> b!4041227 m!4636371))

(assert (=> b!4041227 m!4636189))

(declare-fun m!4637375 () Bool)

(assert (=> b!4041227 m!4637375))

(assert (=> d!1198224 d!1198578))

(assert (=> d!1198224 d!1198246))

(declare-fun d!1198580 () Bool)

(assert (=> d!1198580 (isPrefix!4009 lt!1437799 (++!11324 prefix!494 newSuffix!27))))

(assert (=> d!1198580 true))

(declare-fun _$58!585 () Unit!62457)

(assert (=> d!1198580 (= (choose!24485 lt!1437799 prefix!494 newSuffix!27) _$58!585)))

(declare-fun bs!590900 () Bool)

(assert (= bs!590900 d!1198580))

(assert (=> bs!590900 m!4636189))

(assert (=> bs!590900 m!4636189))

(assert (=> bs!590900 m!4636393))

(assert (=> d!1198224 d!1198580))

(assert (=> d!1198224 d!1198464))

(declare-fun d!1198586 () Bool)

(assert (=> d!1198586 (= (head!8553 prefix!494) (h!48661 prefix!494))))

(assert (=> b!4040510 d!1198586))

(declare-fun d!1198592 () Bool)

(assert (=> d!1198592 (= (head!8553 lt!1437817) (h!48661 lt!1437817))))

(assert (=> b!4040510 d!1198592))

(declare-fun b!4041234 () Bool)

(declare-fun res!1645915 () Bool)

(declare-fun e!2507436 () Bool)

(assert (=> b!4041234 (=> (not res!1645915) (not e!2507436))))

(declare-fun lt!1438101 () Option!9336)

(assert (=> b!4041234 (= res!1645915 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438101)))) (originalCharacters!7522 (_1!24295 (get!14189 lt!1438101)))))))

(declare-fun b!4041235 () Bool)

(declare-fun res!1645925 () Bool)

(assert (=> b!4041235 (=> (not res!1645925) (not e!2507436))))

(assert (=> b!4041235 (= res!1645925 (= (value!217911 (_1!24295 (get!14189 lt!1438101))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438101)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438101)))))))))

(declare-fun d!1198596 () Bool)

(declare-fun e!2507433 () Bool)

(assert (=> d!1198596 e!2507433))

(declare-fun res!1645918 () Bool)

(assert (=> d!1198596 (=> res!1645918 e!2507433)))

(assert (=> d!1198596 (= res!1645918 (isEmpty!25811 lt!1438101))))

(declare-fun e!2507431 () Option!9336)

(assert (=> d!1198596 (= lt!1438101 e!2507431)))

(declare-fun c!698095 () Bool)

(assert (=> d!1198596 (= c!698095 (and ((_ is Cons!43243) (t!334996 rules!2999)) ((_ is Nil!43243) (t!334996 (t!334996 rules!2999)))))))

(declare-fun lt!1438102 () Unit!62457)

(declare-fun lt!1438103 () Unit!62457)

(assert (=> d!1198596 (= lt!1438102 lt!1438103)))

(assert (=> d!1198596 (isPrefix!4009 lt!1437793 lt!1437793)))

(assert (=> d!1198596 (= lt!1438103 (lemmaIsPrefixRefl!2576 lt!1437793 lt!1437793))))

(assert (=> d!1198596 (rulesValidInductive!2525 thiss!21717 (t!334996 rules!2999))))

(assert (=> d!1198596 (= (maxPrefix!3809 thiss!21717 (t!334996 rules!2999) lt!1437793) lt!1438101)))

(declare-fun b!4041236 () Bool)

(declare-fun call!287419 () Option!9336)

(assert (=> b!4041236 (= e!2507431 call!287419)))

(declare-fun b!4041237 () Bool)

(assert (=> b!4041237 (= e!2507433 e!2507436)))

(declare-fun res!1645916 () Bool)

(assert (=> b!4041237 (=> (not res!1645916) (not e!2507436))))

(assert (=> b!4041237 (= res!1645916 (isDefined!7104 lt!1438101))))

(declare-fun b!4041238 () Bool)

(declare-fun res!1645924 () Bool)

(assert (=> b!4041238 (=> (not res!1645924) (not e!2507436))))

(assert (=> b!4041238 (= res!1645924 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438101)))) (_2!24295 (get!14189 lt!1438101))) lt!1437793))))

(declare-fun b!4041239 () Bool)

(assert (=> b!4041239 (= e!2507436 (contains!8592 (t!334996 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1438101)))))))

(declare-fun b!4041240 () Bool)

(declare-fun lt!1438100 () Option!9336)

(declare-fun lt!1438098 () Option!9336)

(assert (=> b!4041240 (= e!2507431 (ite (and ((_ is None!9335) lt!1438100) ((_ is None!9335) lt!1438098)) None!9335 (ite ((_ is None!9335) lt!1438098) lt!1438100 (ite ((_ is None!9335) lt!1438100) lt!1438098 (ite (>= (size!32326 (_1!24295 (v!39735 lt!1438100))) (size!32326 (_1!24295 (v!39735 lt!1438098)))) lt!1438100 lt!1438098)))))))

(assert (=> b!4041240 (= lt!1438100 call!287419)))

(assert (=> b!4041240 (= lt!1438098 (maxPrefix!3809 thiss!21717 (t!334996 (t!334996 rules!2999)) lt!1437793))))

(declare-fun b!4041241 () Bool)

(declare-fun res!1645922 () Bool)

(assert (=> b!4041241 (=> (not res!1645922) (not e!2507436))))

(assert (=> b!4041241 (= res!1645922 (< (size!32325 (_2!24295 (get!14189 lt!1438101))) (size!32325 lt!1437793)))))

(declare-fun b!4041242 () Bool)

(declare-fun res!1645920 () Bool)

(assert (=> b!4041242 (=> (not res!1645920) (not e!2507436))))

(assert (=> b!4041242 (= res!1645920 (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438101)))) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438101))))))))

(declare-fun bm!287414 () Bool)

(assert (=> bm!287414 (= call!287419 (maxPrefixOneRule!2821 thiss!21717 (h!48663 (t!334996 rules!2999)) lt!1437793))))

(assert (= (and d!1198596 c!698095) b!4041236))

(assert (= (and d!1198596 (not c!698095)) b!4041240))

(assert (= (or b!4041236 b!4041240) bm!287414))

(assert (= (and d!1198596 (not res!1645918)) b!4041237))

(assert (= (and b!4041237 res!1645916) b!4041234))

(assert (= (and b!4041234 res!1645915) b!4041241))

(assert (= (and b!4041241 res!1645922) b!4041238))

(assert (= (and b!4041238 res!1645924) b!4041235))

(assert (= (and b!4041235 res!1645925) b!4041242))

(assert (= (and b!4041242 res!1645920) b!4041239))

(declare-fun m!4637389 () Bool)

(assert (=> b!4041239 m!4637389))

(declare-fun m!4637391 () Bool)

(assert (=> b!4041239 m!4637391))

(declare-fun m!4637393 () Bool)

(assert (=> b!4041240 m!4637393))

(declare-fun m!4637395 () Bool)

(assert (=> b!4041237 m!4637395))

(assert (=> b!4041235 m!4637389))

(declare-fun m!4637397 () Bool)

(assert (=> b!4041235 m!4637397))

(assert (=> b!4041235 m!4637397))

(declare-fun m!4637399 () Bool)

(assert (=> b!4041235 m!4637399))

(assert (=> b!4041242 m!4637389))

(declare-fun m!4637401 () Bool)

(assert (=> b!4041242 m!4637401))

(assert (=> b!4041242 m!4637401))

(declare-fun m!4637403 () Bool)

(assert (=> b!4041242 m!4637403))

(assert (=> b!4041242 m!4637403))

(declare-fun m!4637405 () Bool)

(assert (=> b!4041242 m!4637405))

(declare-fun m!4637407 () Bool)

(assert (=> d!1198596 m!4637407))

(assert (=> d!1198596 m!4637095))

(assert (=> d!1198596 m!4637097))

(declare-fun m!4637409 () Bool)

(assert (=> d!1198596 m!4637409))

(assert (=> b!4041238 m!4637389))

(assert (=> b!4041238 m!4637401))

(assert (=> b!4041238 m!4637401))

(assert (=> b!4041238 m!4637403))

(assert (=> b!4041238 m!4637403))

(declare-fun m!4637411 () Bool)

(assert (=> b!4041238 m!4637411))

(assert (=> b!4041241 m!4637389))

(declare-fun m!4637413 () Bool)

(assert (=> b!4041241 m!4637413))

(assert (=> b!4041241 m!4636389))

(declare-fun m!4637415 () Bool)

(assert (=> bm!287414 m!4637415))

(assert (=> b!4041234 m!4637389))

(assert (=> b!4041234 m!4637401))

(assert (=> b!4041234 m!4637401))

(assert (=> b!4041234 m!4637403))

(assert (=> b!4040973 d!1198596))

(declare-fun b!4041247 () Bool)

(declare-fun e!2507442 () Option!9336)

(assert (=> b!4041247 (= e!2507442 None!9335)))

(declare-fun b!4041248 () Bool)

(declare-fun res!1645934 () Bool)

(declare-fun e!2507443 () Bool)

(assert (=> b!4041248 (=> (not res!1645934) (not e!2507443))))

(declare-fun lt!1438110 () Option!9336)

(assert (=> b!4041248 (= res!1645934 (< (size!32325 (_2!24295 (get!14189 lt!1438110))) (size!32325 lt!1437817)))))

(declare-fun b!4041249 () Bool)

(declare-fun res!1645932 () Bool)

(assert (=> b!4041249 (=> (not res!1645932) (not e!2507443))))

(assert (=> b!4041249 (= res!1645932 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438110)))) (_2!24295 (get!14189 lt!1438110))) lt!1437817))))

(declare-fun b!4041250 () Bool)

(declare-fun res!1645931 () Bool)

(assert (=> b!4041250 (=> (not res!1645931) (not e!2507443))))

(assert (=> b!4041250 (= res!1645931 (= (rule!9994 (_1!24295 (get!14189 lt!1438110))) (h!48663 rules!2999)))))

(declare-fun b!4041251 () Bool)

(declare-fun res!1645936 () Bool)

(assert (=> b!4041251 (=> (not res!1645936) (not e!2507443))))

(assert (=> b!4041251 (= res!1645936 (= (value!217911 (_1!24295 (get!14189 lt!1438110))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438110)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438110)))))))))

(declare-fun b!4041252 () Bool)

(declare-fun e!2507441 () Bool)

(assert (=> b!4041252 (= e!2507441 (matchR!5780 (regex!6922 (h!48663 rules!2999)) (_1!24297 (findLongestMatchInner!1387 (regex!6922 (h!48663 rules!2999)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(declare-fun d!1198604 () Bool)

(declare-fun e!2507444 () Bool)

(assert (=> d!1198604 e!2507444))

(declare-fun res!1645930 () Bool)

(assert (=> d!1198604 (=> res!1645930 e!2507444)))

(assert (=> d!1198604 (= res!1645930 (isEmpty!25811 lt!1438110))))

(assert (=> d!1198604 (= lt!1438110 e!2507442)))

(declare-fun c!698096 () Bool)

(declare-fun lt!1438109 () tuple2!42326)

(assert (=> d!1198604 (= c!698096 (isEmpty!25808 (_1!24297 lt!1438109)))))

(assert (=> d!1198604 (= lt!1438109 (findLongestMatch!1300 (regex!6922 (h!48663 rules!2999)) lt!1437817))))

(assert (=> d!1198604 (ruleValid!2852 thiss!21717 (h!48663 rules!2999))))

(assert (=> d!1198604 (= (maxPrefixOneRule!2821 thiss!21717 (h!48663 rules!2999) lt!1437817) lt!1438110)))

(declare-fun b!4041253 () Bool)

(assert (=> b!4041253 (= e!2507442 (Some!9335 (tuple2!42323 (Token!12983 (apply!10111 (transformation!6922 (h!48663 rules!2999)) (seqFromList!5139 (_1!24297 lt!1438109))) (h!48663 rules!2999) (size!32328 (seqFromList!5139 (_1!24297 lt!1438109))) (_1!24297 lt!1438109)) (_2!24297 lt!1438109))))))

(declare-fun lt!1438108 () Unit!62457)

(assert (=> b!4041253 (= lt!1438108 (longestMatchIsAcceptedByMatchOrIsEmpty!1360 (regex!6922 (h!48663 rules!2999)) lt!1437817))))

(declare-fun res!1645935 () Bool)

(assert (=> b!4041253 (= res!1645935 (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (h!48663 rules!2999)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(assert (=> b!4041253 (=> res!1645935 e!2507441)))

(assert (=> b!4041253 e!2507441))

(declare-fun lt!1438107 () Unit!62457)

(assert (=> b!4041253 (= lt!1438107 lt!1438108)))

(declare-fun lt!1438111 () Unit!62457)

(assert (=> b!4041253 (= lt!1438111 (lemmaSemiInverse!1907 (transformation!6922 (h!48663 rules!2999)) (seqFromList!5139 (_1!24297 lt!1438109))))))

(declare-fun b!4041254 () Bool)

(assert (=> b!4041254 (= e!2507444 e!2507443)))

(declare-fun res!1645933 () Bool)

(assert (=> b!4041254 (=> (not res!1645933) (not e!2507443))))

(assert (=> b!4041254 (= res!1645933 (matchR!5780 (regex!6922 (h!48663 rules!2999)) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438110))))))))

(declare-fun b!4041255 () Bool)

(assert (=> b!4041255 (= e!2507443 (= (size!32326 (_1!24295 (get!14189 lt!1438110))) (size!32325 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438110))))))))

(assert (= (and d!1198604 c!698096) b!4041247))

(assert (= (and d!1198604 (not c!698096)) b!4041253))

(assert (= (and b!4041253 (not res!1645935)) b!4041252))

(assert (= (and d!1198604 (not res!1645930)) b!4041254))

(assert (= (and b!4041254 res!1645933) b!4041249))

(assert (= (and b!4041249 res!1645932) b!4041248))

(assert (= (and b!4041248 res!1645934) b!4041250))

(assert (= (and b!4041250 res!1645931) b!4041251))

(assert (= (and b!4041251 res!1645936) b!4041255))

(assert (=> b!4041253 m!4636985))

(assert (=> b!4041253 m!4636325))

(declare-fun m!4637419 () Bool)

(assert (=> b!4041253 m!4637419))

(declare-fun m!4637423 () Bool)

(assert (=> b!4041253 m!4637423))

(declare-fun m!4637425 () Bool)

(assert (=> b!4041253 m!4637425))

(assert (=> b!4041253 m!4636325))

(assert (=> b!4041253 m!4637423))

(declare-fun m!4637429 () Bool)

(assert (=> b!4041253 m!4637429))

(declare-fun m!4637431 () Bool)

(assert (=> b!4041253 m!4637431))

(assert (=> b!4041253 m!4637423))

(assert (=> b!4041253 m!4637423))

(declare-fun m!4637433 () Bool)

(assert (=> b!4041253 m!4637433))

(declare-fun m!4637435 () Bool)

(assert (=> b!4041253 m!4637435))

(assert (=> b!4041253 m!4636985))

(declare-fun m!4637437 () Bool)

(assert (=> b!4041255 m!4637437))

(declare-fun m!4637439 () Bool)

(assert (=> b!4041255 m!4637439))

(assert (=> b!4041252 m!4636985))

(assert (=> b!4041252 m!4636325))

(assert (=> b!4041252 m!4636985))

(assert (=> b!4041252 m!4636325))

(assert (=> b!4041252 m!4637419))

(declare-fun m!4637445 () Bool)

(assert (=> b!4041252 m!4637445))

(assert (=> b!4041250 m!4637437))

(assert (=> b!4041249 m!4637437))

(declare-fun m!4637451 () Bool)

(assert (=> b!4041249 m!4637451))

(assert (=> b!4041249 m!4637451))

(declare-fun m!4637453 () Bool)

(assert (=> b!4041249 m!4637453))

(assert (=> b!4041249 m!4637453))

(declare-fun m!4637455 () Bool)

(assert (=> b!4041249 m!4637455))

(assert (=> b!4041254 m!4637437))

(assert (=> b!4041254 m!4637451))

(assert (=> b!4041254 m!4637451))

(assert (=> b!4041254 m!4637453))

(assert (=> b!4041254 m!4637453))

(declare-fun m!4637457 () Bool)

(assert (=> b!4041254 m!4637457))

(assert (=> b!4041251 m!4637437))

(declare-fun m!4637459 () Bool)

(assert (=> b!4041251 m!4637459))

(assert (=> b!4041251 m!4637459))

(declare-fun m!4637461 () Bool)

(assert (=> b!4041251 m!4637461))

(assert (=> b!4041248 m!4637437))

(declare-fun m!4637463 () Bool)

(assert (=> b!4041248 m!4637463))

(assert (=> b!4041248 m!4636325))

(declare-fun m!4637465 () Bool)

(assert (=> d!1198604 m!4637465))

(declare-fun m!4637467 () Bool)

(assert (=> d!1198604 m!4637467))

(declare-fun m!4637469 () Bool)

(assert (=> d!1198604 m!4637469))

(declare-fun m!4637471 () Bool)

(assert (=> d!1198604 m!4637471))

(assert (=> bm!287380 d!1198604))

(declare-fun d!1198610 () Bool)

(declare-fun nullableFct!1165 (Regex!11827) Bool)

(assert (=> d!1198610 (= (nullable!4150 (regex!6922 (rule!9994 token!484))) (nullableFct!1165 (regex!6922 (rule!9994 token!484))))))

(declare-fun bs!590904 () Bool)

(assert (= bs!590904 d!1198610))

(declare-fun m!4637473 () Bool)

(assert (=> bs!590904 m!4637473))

(assert (=> b!4040540 d!1198610))

(assert (=> d!1198230 d!1198428))

(declare-fun b!4041291 () Bool)

(declare-fun e!2507468 () Bool)

(declare-fun e!2507467 () Bool)

(assert (=> b!4041291 (= e!2507468 e!2507467)))

(declare-fun res!1645961 () Bool)

(assert (=> b!4041291 (= res!1645961 (not (nullable!4150 (reg!12156 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))))

(assert (=> b!4041291 (=> (not res!1645961) (not e!2507467))))

(declare-fun b!4041292 () Bool)

(declare-fun e!2507470 () Bool)

(declare-fun e!2507473 () Bool)

(assert (=> b!4041292 (= e!2507470 e!2507473)))

(declare-fun res!1645959 () Bool)

(assert (=> b!4041292 (=> (not res!1645959) (not e!2507473))))

(declare-fun call!287427 () Bool)

(assert (=> b!4041292 (= res!1645959 call!287427)))

(declare-fun c!698104 () Bool)

(declare-fun call!287426 () Bool)

(declare-fun c!698103 () Bool)

(declare-fun bm!287421 () Bool)

(assert (=> bm!287421 (= call!287426 (validRegex!5350 (ite c!698104 (reg!12156 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (ite c!698103 (regOne!24167 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (regOne!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))))

(declare-fun b!4041293 () Bool)

(declare-fun e!2507469 () Bool)

(declare-fun call!287428 () Bool)

(assert (=> b!4041293 (= e!2507469 call!287428)))

(declare-fun bm!287422 () Bool)

(assert (=> bm!287422 (= call!287428 (validRegex!5350 (ite c!698103 (regTwo!24167 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (regTwo!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))))

(declare-fun d!1198612 () Bool)

(declare-fun res!1645958 () Bool)

(declare-fun e!2507471 () Bool)

(assert (=> d!1198612 (=> res!1645958 e!2507471)))

(assert (=> d!1198612 (= res!1645958 ((_ is ElementMatch!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(assert (=> d!1198612 (= (validRegex!5350 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) e!2507471)))

(declare-fun b!4041294 () Bool)

(declare-fun res!1645962 () Bool)

(assert (=> b!4041294 (=> (not res!1645962) (not e!2507469))))

(assert (=> b!4041294 (= res!1645962 call!287427)))

(declare-fun e!2507472 () Bool)

(assert (=> b!4041294 (= e!2507472 e!2507469)))

(declare-fun b!4041295 () Bool)

(assert (=> b!4041295 (= e!2507473 call!287428)))

(declare-fun b!4041296 () Bool)

(assert (=> b!4041296 (= e!2507471 e!2507468)))

(assert (=> b!4041296 (= c!698104 ((_ is Star!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun bm!287423 () Bool)

(assert (=> bm!287423 (= call!287427 call!287426)))

(declare-fun b!4041297 () Bool)

(assert (=> b!4041297 (= e!2507468 e!2507472)))

(assert (=> b!4041297 (= c!698103 ((_ is Union!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun b!4041298 () Bool)

(assert (=> b!4041298 (= e!2507467 call!287426)))

(declare-fun b!4041299 () Bool)

(declare-fun res!1645960 () Bool)

(assert (=> b!4041299 (=> res!1645960 e!2507470)))

(assert (=> b!4041299 (= res!1645960 (not ((_ is Concat!18980) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (=> b!4041299 (= e!2507472 e!2507470)))

(assert (= (and d!1198612 (not res!1645958)) b!4041296))

(assert (= (and b!4041296 c!698104) b!4041291))

(assert (= (and b!4041296 (not c!698104)) b!4041297))

(assert (= (and b!4041291 res!1645961) b!4041298))

(assert (= (and b!4041297 c!698103) b!4041294))

(assert (= (and b!4041297 (not c!698103)) b!4041299))

(assert (= (and b!4041294 res!1645962) b!4041293))

(assert (= (and b!4041299 (not res!1645960)) b!4041292))

(assert (= (and b!4041292 res!1645959) b!4041295))

(assert (= (or b!4041293 b!4041295) bm!287422))

(assert (= (or b!4041294 b!4041292) bm!287423))

(assert (= (or b!4041298 bm!287423) bm!287421))

(declare-fun m!4637519 () Bool)

(assert (=> b!4041291 m!4637519))

(declare-fun m!4637521 () Bool)

(assert (=> bm!287421 m!4637521))

(declare-fun m!4637523 () Bool)

(assert (=> bm!287422 m!4637523))

(assert (=> d!1198230 d!1198612))

(declare-fun d!1198624 () Bool)

(declare-fun lt!1438123 () Int)

(assert (=> d!1198624 (>= lt!1438123 0)))

(declare-fun e!2507481 () Int)

(assert (=> d!1198624 (= lt!1438123 e!2507481)))

(declare-fun c!698108 () Bool)

(assert (=> d!1198624 (= c!698108 ((_ is Nil!43241) lt!1437790))))

(assert (=> d!1198624 (= (size!32325 lt!1437790) lt!1438123)))

(declare-fun b!4041314 () Bool)

(assert (=> b!4041314 (= e!2507481 0)))

(declare-fun b!4041315 () Bool)

(assert (=> b!4041315 (= e!2507481 (+ 1 (size!32325 (t!334994 lt!1437790))))))

(assert (= (and d!1198624 c!698108) b!4041314))

(assert (= (and d!1198624 (not c!698108)) b!4041315))

(declare-fun m!4637525 () Bool)

(assert (=> b!4041315 m!4637525))

(assert (=> b!4040947 d!1198624))

(assert (=> b!4040947 d!1198432))

(declare-fun d!1198626 () Bool)

(declare-fun e!2507491 () Bool)

(assert (=> d!1198626 e!2507491))

(declare-fun res!1645973 () Bool)

(assert (=> d!1198626 (=> (not res!1645973) (not e!2507491))))

(declare-fun lt!1438129 () BalanceConc!25860)

(assert (=> d!1198626 (= res!1645973 (= (list!16100 lt!1438129) lt!1437800))))

(declare-fun fromList!860 (List!43365) Conc!13133)

(assert (=> d!1198626 (= lt!1438129 (BalanceConc!25861 (fromList!860 lt!1437800)))))

(assert (=> d!1198626 (= (fromListB!2344 lt!1437800) lt!1438129)))

(declare-fun b!4041332 () Bool)

(declare-fun isBalanced!3680 (Conc!13133) Bool)

(assert (=> b!4041332 (= e!2507491 (isBalanced!3680 (fromList!860 lt!1437800)))))

(assert (= (and d!1198626 res!1645973) b!4041332))

(declare-fun m!4637549 () Bool)

(assert (=> d!1198626 m!4637549))

(declare-fun m!4637551 () Bool)

(assert (=> d!1198626 m!4637551))

(assert (=> b!4041332 m!4637551))

(assert (=> b!4041332 m!4637551))

(declare-fun m!4637553 () Bool)

(assert (=> b!4041332 m!4637553))

(assert (=> d!1198394 d!1198626))

(declare-fun d!1198640 () Bool)

(declare-fun c!698121 () Bool)

(assert (=> d!1198640 (= c!698121 ((_ is Empty!13133) (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun e!2507507 () List!43365)

(assert (=> d!1198640 (= (list!16102 (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813))))) e!2507507)))

(declare-fun b!4041353 () Bool)

(assert (=> b!4041353 (= e!2507507 Nil!43241)))

(declare-fun b!4041356 () Bool)

(declare-fun e!2507508 () List!43365)

(assert (=> b!4041356 (= e!2507508 (++!11324 (list!16102 (left!32568 (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813)))))) (list!16102 (right!32898 (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813))))))))))

(declare-fun b!4041355 () Bool)

(declare-fun list!16103 (IArray!26271) List!43365)

(assert (=> b!4041355 (= e!2507508 (list!16103 (xs!16439 (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun b!4041354 () Bool)

(assert (=> b!4041354 (= e!2507507 e!2507508)))

(declare-fun c!698122 () Bool)

(assert (=> b!4041354 (= c!698122 ((_ is Leaf!20301) (c!697932 (charsOf!4738 (_1!24295 (v!39735 lt!1437813))))))))

(assert (= (and d!1198640 c!698121) b!4041353))

(assert (= (and d!1198640 (not c!698121)) b!4041354))

(assert (= (and b!4041354 c!698122) b!4041355))

(assert (= (and b!4041354 (not c!698122)) b!4041356))

(declare-fun m!4637571 () Bool)

(assert (=> b!4041356 m!4637571))

(declare-fun m!4637573 () Bool)

(assert (=> b!4041356 m!4637573))

(assert (=> b!4041356 m!4637571))

(assert (=> b!4041356 m!4637573))

(declare-fun m!4637575 () Bool)

(assert (=> b!4041356 m!4637575))

(declare-fun m!4637577 () Bool)

(assert (=> b!4041355 m!4637577))

(assert (=> d!1198276 d!1198640))

(declare-fun d!1198650 () Bool)

(assert (=> d!1198650 (= (get!14189 lt!1437884) (v!39735 lt!1437884))))

(assert (=> b!4040567 d!1198650))

(declare-fun d!1198652 () Bool)

(assert (=> d!1198652 (= (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun b_lambda!118013 () Bool)

(assert (=> (not b_lambda!118013) (not d!1198652)))

(declare-fun tb!242943 () Bool)

(declare-fun t!335079 () Bool)

(assert (=> (and b!4040354 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335079) tb!242943))

(declare-fun result!294460 () Bool)

(assert (=> tb!242943 (= result!294460 (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884)))))))))

(declare-fun m!4637579 () Bool)

(assert (=> tb!242943 m!4637579))

(assert (=> d!1198652 t!335079))

(declare-fun b_and!310665 () Bool)

(assert (= b_and!310623 (and (=> t!335079 result!294460) b_and!310665)))

(declare-fun tb!242945 () Bool)

(declare-fun t!335081 () Bool)

(assert (=> (and b!4040350 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335081) tb!242945))

(declare-fun result!294462 () Bool)

(assert (= result!294462 result!294460))

(assert (=> d!1198652 t!335081))

(declare-fun b_and!310667 () Bool)

(assert (= b_and!310625 (and (=> t!335081 result!294462) b_and!310667)))

(declare-fun t!335083 () Bool)

(declare-fun tb!242947 () Bool)

(assert (=> (and b!4041004 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335083) tb!242947))

(declare-fun result!294464 () Bool)

(assert (= result!294464 result!294460))

(assert (=> d!1198652 t!335083))

(declare-fun b_and!310669 () Bool)

(assert (= b_and!310643 (and (=> t!335083 result!294464) b_and!310669)))

(assert (=> d!1198652 m!4636497))

(declare-fun m!4637581 () Bool)

(assert (=> d!1198652 m!4637581))

(assert (=> b!4040567 d!1198652))

(declare-fun d!1198658 () Bool)

(assert (=> d!1198658 (= (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884)))) (fromListB!2344 (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884)))))))

(declare-fun bs!590909 () Bool)

(assert (= bs!590909 d!1198658))

(declare-fun m!4637587 () Bool)

(assert (=> bs!590909 m!4637587))

(assert (=> b!4040567 d!1198658))

(declare-fun d!1198661 () Bool)

(assert (=> d!1198661 (= (head!8553 lt!1437799) (h!48661 lt!1437799))))

(assert (=> b!4040514 d!1198661))

(declare-fun d!1198664 () Bool)

(assert (=> d!1198664 (= (head!8553 lt!1437802) (h!48661 lt!1437802))))

(assert (=> b!4040514 d!1198664))

(declare-fun d!1198666 () Bool)

(assert (=> d!1198666 (= (head!8553 lt!1437800) (h!48661 lt!1437800))))

(assert (=> b!4040504 d!1198666))

(declare-fun b!4041363 () Bool)

(declare-fun res!1645988 () Bool)

(declare-fun e!2507513 () Bool)

(assert (=> b!4041363 (=> (not res!1645988) (not e!2507513))))

(declare-fun lt!1438133 () List!43365)

(assert (=> b!4041363 (= res!1645988 (= (size!32325 lt!1438133) (+ (size!32325 (t!334994 prefix!494)) (size!32325 suffix!1299))))))

(declare-fun d!1198668 () Bool)

(assert (=> d!1198668 e!2507513))

(declare-fun res!1645989 () Bool)

(assert (=> d!1198668 (=> (not res!1645989) (not e!2507513))))

(assert (=> d!1198668 (= res!1645989 (= (content!6577 lt!1438133) ((_ map or) (content!6577 (t!334994 prefix!494)) (content!6577 suffix!1299))))))

(declare-fun e!2507512 () List!43365)

(assert (=> d!1198668 (= lt!1438133 e!2507512)))

(declare-fun c!698124 () Bool)

(assert (=> d!1198668 (= c!698124 ((_ is Nil!43241) (t!334994 prefix!494)))))

(assert (=> d!1198668 (= (++!11324 (t!334994 prefix!494) suffix!1299) lt!1438133)))

(declare-fun b!4041362 () Bool)

(assert (=> b!4041362 (= e!2507512 (Cons!43241 (h!48661 (t!334994 prefix!494)) (++!11324 (t!334994 (t!334994 prefix!494)) suffix!1299)))))

(declare-fun b!4041361 () Bool)

(assert (=> b!4041361 (= e!2507512 suffix!1299)))

(declare-fun b!4041364 () Bool)

(assert (=> b!4041364 (= e!2507513 (or (not (= suffix!1299 Nil!43241)) (= lt!1438133 (t!334994 prefix!494))))))

(assert (= (and d!1198668 c!698124) b!4041361))

(assert (= (and d!1198668 (not c!698124)) b!4041362))

(assert (= (and d!1198668 res!1645989) b!4041363))

(assert (= (and b!4041363 res!1645988) b!4041364))

(declare-fun m!4637591 () Bool)

(assert (=> b!4041363 m!4637591))

(assert (=> b!4041363 m!4637049))

(assert (=> b!4041363 m!4636139))

(declare-fun m!4637593 () Bool)

(assert (=> d!1198668 m!4637593))

(declare-fun m!4637595 () Bool)

(assert (=> d!1198668 m!4637595))

(assert (=> d!1198668 m!4636289))

(declare-fun m!4637597 () Bool)

(assert (=> b!4041362 m!4637597))

(assert (=> b!4040576 d!1198668))

(assert (=> b!4040466 d!1198661))

(declare-fun b!4041367 () Bool)

(declare-fun res!1645990 () Bool)

(declare-fun e!2507515 () Bool)

(assert (=> b!4041367 (=> (not res!1645990) (not e!2507515))))

(declare-fun lt!1438134 () List!43365)

(assert (=> b!4041367 (= res!1645990 (= (size!32325 lt!1438134) (+ (size!32325 (t!334994 lt!1437799)) (size!32325 suffixResult!105))))))

(declare-fun d!1198670 () Bool)

(assert (=> d!1198670 e!2507515))

(declare-fun res!1645991 () Bool)

(assert (=> d!1198670 (=> (not res!1645991) (not e!2507515))))

(assert (=> d!1198670 (= res!1645991 (= (content!6577 lt!1438134) ((_ map or) (content!6577 (t!334994 lt!1437799)) (content!6577 suffixResult!105))))))

(declare-fun e!2507514 () List!43365)

(assert (=> d!1198670 (= lt!1438134 e!2507514)))

(declare-fun c!698125 () Bool)

(assert (=> d!1198670 (= c!698125 ((_ is Nil!43241) (t!334994 lt!1437799)))))

(assert (=> d!1198670 (= (++!11324 (t!334994 lt!1437799) suffixResult!105) lt!1438134)))

(declare-fun b!4041366 () Bool)

(assert (=> b!4041366 (= e!2507514 (Cons!43241 (h!48661 (t!334994 lt!1437799)) (++!11324 (t!334994 (t!334994 lt!1437799)) suffixResult!105)))))

(declare-fun b!4041365 () Bool)

(assert (=> b!4041365 (= e!2507514 suffixResult!105)))

(declare-fun b!4041368 () Bool)

(assert (=> b!4041368 (= e!2507515 (or (not (= suffixResult!105 Nil!43241)) (= lt!1438134 (t!334994 lt!1437799))))))

(assert (= (and d!1198670 c!698125) b!4041365))

(assert (= (and d!1198670 (not c!698125)) b!4041366))

(assert (= (and d!1198670 res!1645991) b!4041367))

(assert (= (and b!4041367 res!1645990) b!4041368))

(declare-fun m!4637599 () Bool)

(assert (=> b!4041367 m!4637599))

(assert (=> b!4041367 m!4637047))

(assert (=> b!4041367 m!4636471))

(declare-fun m!4637601 () Bool)

(assert (=> d!1198670 m!4637601))

(assert (=> d!1198670 m!4637311))

(assert (=> d!1198670 m!4636475))

(declare-fun m!4637603 () Bool)

(assert (=> b!4041366 m!4637603))

(assert (=> b!4040530 d!1198670))

(declare-fun d!1198672 () Bool)

(declare-fun lt!1438135 () Int)

(assert (=> d!1198672 (>= lt!1438135 0)))

(declare-fun e!2507516 () Int)

(assert (=> d!1198672 (= lt!1438135 e!2507516)))

(declare-fun c!698126 () Bool)

(assert (=> d!1198672 (= c!698126 ((_ is Nil!43241) lt!1437864))))

(assert (=> d!1198672 (= (size!32325 lt!1437864) lt!1438135)))

(declare-fun b!4041369 () Bool)

(assert (=> b!4041369 (= e!2507516 0)))

(declare-fun b!4041370 () Bool)

(assert (=> b!4041370 (= e!2507516 (+ 1 (size!32325 (t!334994 lt!1437864))))))

(assert (= (and d!1198672 c!698126) b!4041369))

(assert (= (and d!1198672 (not c!698126)) b!4041370))

(declare-fun m!4637605 () Bool)

(assert (=> b!4041370 m!4637605))

(assert (=> b!4040527 d!1198672))

(assert (=> b!4040527 d!1198432))

(declare-fun d!1198674 () Bool)

(declare-fun lt!1438136 () Int)

(assert (=> d!1198674 (>= lt!1438136 0)))

(declare-fun e!2507517 () Int)

(assert (=> d!1198674 (= lt!1438136 e!2507517)))

(declare-fun c!698127 () Bool)

(assert (=> d!1198674 (= c!698127 ((_ is Nil!43241) newSuffixResult!27))))

(assert (=> d!1198674 (= (size!32325 newSuffixResult!27) lt!1438136)))

(declare-fun b!4041371 () Bool)

(assert (=> b!4041371 (= e!2507517 0)))

(declare-fun b!4041372 () Bool)

(assert (=> b!4041372 (= e!2507517 (+ 1 (size!32325 (t!334994 newSuffixResult!27))))))

(assert (= (and d!1198674 c!698127) b!4041371))

(assert (= (and d!1198674 (not c!698127)) b!4041372))

(declare-fun m!4637607 () Bool)

(assert (=> b!4041372 m!4637607))

(assert (=> b!4040527 d!1198674))

(declare-fun d!1198676 () Bool)

(declare-fun lt!1438137 () Bool)

(assert (=> d!1198676 (= lt!1438137 (select (content!6578 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))

(declare-fun e!2507518 () Bool)

(assert (=> d!1198676 (= lt!1438137 e!2507518)))

(declare-fun res!1645993 () Bool)

(assert (=> d!1198676 (=> (not res!1645993) (not e!2507518))))

(assert (=> d!1198676 (= res!1645993 ((_ is Cons!43243) rules!2999))))

(assert (=> d!1198676 (= (contains!8592 rules!2999 (rule!9994 (_1!24295 (get!14189 lt!1437884)))) lt!1438137)))

(declare-fun b!4041373 () Bool)

(declare-fun e!2507519 () Bool)

(assert (=> b!4041373 (= e!2507518 e!2507519)))

(declare-fun res!1645992 () Bool)

(assert (=> b!4041373 (=> res!1645992 e!2507519)))

(assert (=> b!4041373 (= res!1645992 (= (h!48663 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))

(declare-fun b!4041374 () Bool)

(assert (=> b!4041374 (= e!2507519 (contains!8592 (t!334996 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))

(assert (= (and d!1198676 res!1645993) b!4041373))

(assert (= (and b!4041373 (not res!1645992)) b!4041374))

(assert (=> d!1198676 m!4636541))

(declare-fun m!4637609 () Bool)

(assert (=> d!1198676 m!4637609))

(declare-fun m!4637611 () Bool)

(assert (=> b!4041374 m!4637611))

(assert (=> b!4040571 d!1198676))

(assert (=> b!4040571 d!1198650))

(assert (=> d!1198404 d!1198426))

(assert (=> d!1198404 d!1198402))

(assert (=> d!1198404 d!1198416))

(assert (=> d!1198404 d!1198432))

(assert (=> d!1198404 d!1198424))

(declare-fun d!1198678 () Bool)

(assert (=> d!1198678 (= (maxPrefixOneRule!2821 thiss!21717 (rule!9994 token!484) lt!1437817) (Some!9335 (tuple2!42323 (Token!12983 (apply!10111 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 lt!1437799)) (rule!9994 token!484) (size!32325 lt!1437799) lt!1437799) suffixResult!105)))))

(assert (=> d!1198678 true))

(declare-fun _$59!692 () Unit!62457)

(assert (=> d!1198678 (= (choose!24490 thiss!21717 rules!2999 lt!1437799 lt!1437817 suffixResult!105 (rule!9994 token!484)) _$59!692)))

(declare-fun bs!590914 () Bool)

(assert (= bs!590914 d!1198678))

(assert (=> bs!590914 m!4636165))

(assert (=> bs!590914 m!4636155))

(assert (=> bs!590914 m!4636155))

(assert (=> bs!590914 m!4636157))

(assert (=> bs!590914 m!4636145))

(assert (=> d!1198404 d!1198678))

(declare-fun d!1198718 () Bool)

(declare-fun c!698144 () Bool)

(assert (=> d!1198718 (= c!698144 ((_ is Nil!43241) lt!1437887))))

(declare-fun e!2507543 () (InoxSet C!23840))

(assert (=> d!1198718 (= (content!6577 lt!1437887) e!2507543)))

(declare-fun b!4041421 () Bool)

(assert (=> b!4041421 (= e!2507543 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041422 () Bool)

(assert (=> b!4041422 (= e!2507543 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437887) true) (content!6577 (t!334994 lt!1437887))))))

(assert (= (and d!1198718 c!698144) b!4041421))

(assert (= (and d!1198718 (not c!698144)) b!4041422))

(declare-fun m!4637673 () Bool)

(assert (=> b!4041422 m!4637673))

(declare-fun m!4637675 () Bool)

(assert (=> b!4041422 m!4637675))

(assert (=> d!1198262 d!1198718))

(declare-fun d!1198720 () Bool)

(declare-fun c!698145 () Bool)

(assert (=> d!1198720 (= c!698145 ((_ is Nil!43241) prefix!494))))

(declare-fun e!2507544 () (InoxSet C!23840))

(assert (=> d!1198720 (= (content!6577 prefix!494) e!2507544)))

(declare-fun b!4041423 () Bool)

(assert (=> b!4041423 (= e!2507544 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041424 () Bool)

(assert (=> b!4041424 (= e!2507544 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 prefix!494) true) (content!6577 (t!334994 prefix!494))))))

(assert (= (and d!1198720 c!698145) b!4041423))

(assert (= (and d!1198720 (not c!698145)) b!4041424))

(declare-fun m!4637677 () Bool)

(assert (=> b!4041424 m!4637677))

(assert (=> b!4041424 m!4637595))

(assert (=> d!1198262 d!1198720))

(assert (=> d!1198262 d!1198576))

(declare-fun d!1198724 () Bool)

(declare-fun lt!1438147 () Int)

(assert (=> d!1198724 (>= lt!1438147 0)))

(declare-fun e!2507546 () Int)

(assert (=> d!1198724 (= lt!1438147 e!2507546)))

(declare-fun c!698147 () Bool)

(assert (=> d!1198724 (= c!698147 ((_ is Nil!43241) lt!1437822))))

(assert (=> d!1198724 (= (size!32325 lt!1437822) lt!1438147)))

(declare-fun b!4041427 () Bool)

(assert (=> b!4041427 (= e!2507546 0)))

(declare-fun b!4041428 () Bool)

(assert (=> b!4041428 (= e!2507546 (+ 1 (size!32325 (t!334994 lt!1437822))))))

(assert (= (and d!1198724 c!698147) b!4041427))

(assert (= (and d!1198724 (not c!698147)) b!4041428))

(declare-fun m!4637681 () Bool)

(assert (=> b!4041428 m!4637681))

(assert (=> b!4040383 d!1198724))

(declare-fun d!1198728 () Bool)

(declare-fun lt!1438148 () Int)

(assert (=> d!1198728 (>= lt!1438148 0)))

(declare-fun e!2507547 () Int)

(assert (=> d!1198728 (= lt!1438148 e!2507547)))

(declare-fun c!698148 () Bool)

(assert (=> d!1198728 (= c!698148 ((_ is Nil!43241) lt!1437807))))

(assert (=> d!1198728 (= (size!32325 lt!1437807) lt!1438148)))

(declare-fun b!4041429 () Bool)

(assert (=> b!4041429 (= e!2507547 0)))

(declare-fun b!4041430 () Bool)

(assert (=> b!4041430 (= e!2507547 (+ 1 (size!32325 (t!334994 lt!1437807))))))

(assert (= (and d!1198728 c!698148) b!4041429))

(assert (= (and d!1198728 (not c!698148)) b!4041430))

(declare-fun m!4637683 () Bool)

(assert (=> b!4041430 m!4637683))

(assert (=> b!4040383 d!1198728))

(assert (=> b!4040383 d!1198456))

(declare-fun d!1198732 () Bool)

(declare-fun c!698150 () Bool)

(assert (=> d!1198732 (= c!698150 ((_ is Nil!43241) lt!1437865))))

(declare-fun e!2507550 () (InoxSet C!23840))

(assert (=> d!1198732 (= (content!6577 lt!1437865) e!2507550)))

(declare-fun b!4041435 () Bool)

(assert (=> b!4041435 (= e!2507550 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041436 () Bool)

(assert (=> b!4041436 (= e!2507550 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437865) true) (content!6577 (t!334994 lt!1437865))))))

(assert (= (and d!1198732 c!698150) b!4041435))

(assert (= (and d!1198732 (not c!698150)) b!4041436))

(declare-fun m!4637685 () Bool)

(assert (=> b!4041436 m!4637685))

(declare-fun m!4637687 () Bool)

(assert (=> b!4041436 m!4637687))

(assert (=> d!1198250 d!1198732))

(assert (=> d!1198250 d!1198544))

(declare-fun d!1198734 () Bool)

(declare-fun c!698151 () Bool)

(assert (=> d!1198734 (= c!698151 ((_ is Nil!43241) suffixResult!105))))

(declare-fun e!2507551 () (InoxSet C!23840))

(assert (=> d!1198734 (= (content!6577 suffixResult!105) e!2507551)))

(declare-fun b!4041437 () Bool)

(assert (=> b!4041437 (= e!2507551 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041438 () Bool)

(assert (=> b!4041438 (= e!2507551 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 suffixResult!105) true) (content!6577 (t!334994 suffixResult!105))))))

(assert (= (and d!1198734 c!698151) b!4041437))

(assert (= (and d!1198734 (not c!698151)) b!4041438))

(declare-fun m!4637699 () Bool)

(assert (=> b!4041438 m!4637699))

(declare-fun m!4637701 () Bool)

(assert (=> b!4041438 m!4637701))

(assert (=> d!1198250 d!1198734))

(assert (=> b!4040474 d!1198661))

(declare-fun d!1198738 () Bool)

(assert (=> d!1198738 (= (head!8553 lt!1437793) (h!48661 lt!1437793))))

(assert (=> b!4040474 d!1198738))

(declare-fun b!4041441 () Bool)

(declare-fun e!2507555 () Bool)

(assert (=> b!4041441 (= e!2507555 (inv!15 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))

(declare-fun d!1198740 () Bool)

(declare-fun c!698154 () Bool)

(assert (=> d!1198740 (= c!698154 ((_ is IntegerValue!21456) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))

(declare-fun e!2507554 () Bool)

(assert (=> d!1198740 (= (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)) e!2507554)))

(declare-fun b!4041442 () Bool)

(assert (=> b!4041442 (= e!2507554 (inv!16 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))

(declare-fun b!4041443 () Bool)

(declare-fun e!2507553 () Bool)

(assert (=> b!4041443 (= e!2507553 (inv!17 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))

(declare-fun b!4041444 () Bool)

(assert (=> b!4041444 (= e!2507554 e!2507553)))

(declare-fun c!698153 () Bool)

(assert (=> b!4041444 (= c!698153 ((_ is IntegerValue!21457) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))

(declare-fun b!4041445 () Bool)

(declare-fun res!1646006 () Bool)

(assert (=> b!4041445 (=> res!1646006 e!2507555)))

(assert (=> b!4041445 (= res!1646006 (not ((_ is IntegerValue!21458) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))))

(assert (=> b!4041445 (= e!2507553 e!2507555)))

(assert (= (and d!1198740 c!698154) b!4041442))

(assert (= (and d!1198740 (not c!698154)) b!4041444))

(assert (= (and b!4041444 c!698153) b!4041443))

(assert (= (and b!4041444 (not c!698153)) b!4041445))

(assert (= (and b!4041445 (not res!1646006)) b!4041441))

(declare-fun m!4637705 () Bool)

(assert (=> b!4041441 m!4637705))

(declare-fun m!4637707 () Bool)

(assert (=> b!4041442 m!4637707))

(declare-fun m!4637709 () Bool)

(assert (=> b!4041443 m!4637709))

(assert (=> tb!242877 d!1198740))

(declare-fun d!1198744 () Bool)

(declare-fun charsToBigInt!0 (List!43366 Int) Int)

(assert (=> d!1198744 (= (inv!15 (value!217911 token!484)) (= (charsToBigInt!0 (text!50513 (value!217911 token!484)) 0) (value!217906 (value!217911 token!484))))))

(declare-fun bs!590921 () Bool)

(assert (= bs!590921 d!1198744))

(declare-fun m!4637727 () Bool)

(assert (=> bs!590921 m!4637727))

(assert (=> b!4040487 d!1198744))

(declare-fun b!4041454 () Bool)

(declare-fun e!2507560 () Bool)

(assert (=> b!4041454 (= e!2507560 (isPrefix!4009 (tail!6285 (tail!6285 newSuffix!27)) (tail!6285 (tail!6285 suffix!1299))))))

(declare-fun b!4041455 () Bool)

(declare-fun e!2507562 () Bool)

(assert (=> b!4041455 (= e!2507562 (>= (size!32325 (tail!6285 suffix!1299)) (size!32325 (tail!6285 newSuffix!27))))))

(declare-fun b!4041453 () Bool)

(declare-fun res!1646012 () Bool)

(assert (=> b!4041453 (=> (not res!1646012) (not e!2507560))))

(assert (=> b!4041453 (= res!1646012 (= (head!8553 (tail!6285 newSuffix!27)) (head!8553 (tail!6285 suffix!1299))))))

(declare-fun d!1198756 () Bool)

(assert (=> d!1198756 e!2507562))

(declare-fun res!1646011 () Bool)

(assert (=> d!1198756 (=> res!1646011 e!2507562)))

(declare-fun lt!1438153 () Bool)

(assert (=> d!1198756 (= res!1646011 (not lt!1438153))))

(declare-fun e!2507561 () Bool)

(assert (=> d!1198756 (= lt!1438153 e!2507561)))

(declare-fun res!1646010 () Bool)

(assert (=> d!1198756 (=> res!1646010 e!2507561)))

(assert (=> d!1198756 (= res!1646010 ((_ is Nil!43241) (tail!6285 newSuffix!27)))))

(assert (=> d!1198756 (= (isPrefix!4009 (tail!6285 newSuffix!27) (tail!6285 suffix!1299)) lt!1438153)))

(declare-fun b!4041452 () Bool)

(assert (=> b!4041452 (= e!2507561 e!2507560)))

(declare-fun res!1646009 () Bool)

(assert (=> b!4041452 (=> (not res!1646009) (not e!2507560))))

(assert (=> b!4041452 (= res!1646009 (not ((_ is Nil!43241) (tail!6285 suffix!1299))))))

(assert (= (and d!1198756 (not res!1646010)) b!4041452))

(assert (= (and b!4041452 res!1646009) b!4041453))

(assert (= (and b!4041453 res!1646012) b!4041454))

(assert (= (and d!1198756 (not res!1646011)) b!4041455))

(assert (=> b!4041454 m!4637061))

(declare-fun m!4637731 () Bool)

(assert (=> b!4041454 m!4637731))

(assert (=> b!4041454 m!4637063))

(declare-fun m!4637733 () Bool)

(assert (=> b!4041454 m!4637733))

(assert (=> b!4041454 m!4637731))

(assert (=> b!4041454 m!4637733))

(declare-fun m!4637737 () Bool)

(assert (=> b!4041454 m!4637737))

(assert (=> b!4041455 m!4637063))

(declare-fun m!4637739 () Bool)

(assert (=> b!4041455 m!4637739))

(assert (=> b!4041455 m!4637061))

(declare-fun m!4637741 () Bool)

(assert (=> b!4041455 m!4637741))

(assert (=> b!4041453 m!4637061))

(declare-fun m!4637743 () Bool)

(assert (=> b!4041453 m!4637743))

(assert (=> b!4041453 m!4637063))

(declare-fun m!4637745 () Bool)

(assert (=> b!4041453 m!4637745))

(assert (=> b!4040958 d!1198756))

(declare-fun d!1198760 () Bool)

(assert (=> d!1198760 (= (tail!6285 newSuffix!27) (t!334994 newSuffix!27))))

(assert (=> b!4040958 d!1198760))

(declare-fun d!1198764 () Bool)

(assert (=> d!1198764 (= (tail!6285 suffix!1299) (t!334994 suffix!1299))))

(assert (=> b!4040958 d!1198764))

(declare-fun d!1198766 () Bool)

(assert (=> d!1198766 (= (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))) (isBalanced!3680 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))))

(declare-fun bs!590926 () Bool)

(assert (= bs!590926 d!1198766))

(declare-fun m!4637751 () Bool)

(assert (=> bs!590926 m!4637751))

(assert (=> tb!242893 d!1198766))

(declare-fun bs!590928 () Bool)

(declare-fun d!1198772 () Bool)

(assert (= bs!590928 (and d!1198772 d!1198284)))

(declare-fun lambda!127399 () Int)

(assert (=> bs!590928 (= lambda!127399 lambda!127385)))

(assert (=> d!1198772 true))

(assert (=> d!1198772 (< (dynLambda!18362 order!22649 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (dynLambda!18361 order!22647 lambda!127399))))

(assert (=> d!1198772 true))

(assert (=> d!1198772 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (dynLambda!18361 order!22647 lambda!127399))))

(declare-fun Forall!1490 (Int) Bool)

(assert (=> d!1198772 (= (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (Forall!1490 lambda!127399))))

(declare-fun bs!590929 () Bool)

(assert (= bs!590929 d!1198772))

(declare-fun m!4637769 () Bool)

(assert (=> bs!590929 m!4637769))

(assert (=> d!1198266 d!1198772))

(declare-fun b!4041466 () Bool)

(declare-fun e!2507566 () Bool)

(assert (=> b!4041466 (= e!2507566 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 (++!11324 lt!1437799 lt!1437808))))))

(declare-fun b!4041467 () Bool)

(declare-fun e!2507568 () Bool)

(assert (=> b!4041467 (= e!2507568 (>= (size!32325 (++!11324 lt!1437799 lt!1437808)) (size!32325 lt!1437799)))))

(declare-fun b!4041465 () Bool)

(declare-fun res!1646016 () Bool)

(assert (=> b!4041465 (=> (not res!1646016) (not e!2507566))))

(assert (=> b!4041465 (= res!1646016 (= (head!8553 lt!1437799) (head!8553 (++!11324 lt!1437799 lt!1437808))))))

(declare-fun d!1198778 () Bool)

(assert (=> d!1198778 e!2507568))

(declare-fun res!1646015 () Bool)

(assert (=> d!1198778 (=> res!1646015 e!2507568)))

(declare-fun lt!1438159 () Bool)

(assert (=> d!1198778 (= res!1646015 (not lt!1438159))))

(declare-fun e!2507567 () Bool)

(assert (=> d!1198778 (= lt!1438159 e!2507567)))

(declare-fun res!1646014 () Bool)

(assert (=> d!1198778 (=> res!1646014 e!2507567)))

(assert (=> d!1198778 (= res!1646014 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198778 (= (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 lt!1437808)) lt!1438159)))

(declare-fun b!4041464 () Bool)

(assert (=> b!4041464 (= e!2507567 e!2507566)))

(declare-fun res!1646013 () Bool)

(assert (=> b!4041464 (=> (not res!1646013) (not e!2507566))))

(assert (=> b!4041464 (= res!1646013 (not ((_ is Nil!43241) (++!11324 lt!1437799 lt!1437808))))))

(assert (= (and d!1198778 (not res!1646014)) b!4041464))

(assert (= (and b!4041464 res!1646013) b!4041465))

(assert (= (and b!4041465 res!1646016) b!4041466))

(assert (= (and d!1198778 (not res!1646015)) b!4041467))

(assert (=> b!4041466 m!4636373))

(assert (=> b!4041466 m!4636179))

(declare-fun m!4637771 () Bool)

(assert (=> b!4041466 m!4637771))

(assert (=> b!4041466 m!4636373))

(assert (=> b!4041466 m!4637771))

(declare-fun m!4637773 () Bool)

(assert (=> b!4041466 m!4637773))

(assert (=> b!4041467 m!4636179))

(declare-fun m!4637775 () Bool)

(assert (=> b!4041467 m!4637775))

(assert (=> b!4041467 m!4636145))

(assert (=> b!4041465 m!4636371))

(assert (=> b!4041465 m!4636179))

(declare-fun m!4637777 () Bool)

(assert (=> b!4041465 m!4637777))

(assert (=> d!1198420 d!1198778))

(assert (=> d!1198420 d!1198184))

(declare-fun d!1198780 () Bool)

(assert (=> d!1198780 (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 lt!1437808))))

(assert (=> d!1198780 true))

(declare-fun _$46!1766 () Unit!62457)

(assert (=> d!1198780 (= (choose!24487 lt!1437799 lt!1437808) _$46!1766)))

(declare-fun bs!590930 () Bool)

(assert (= bs!590930 d!1198780))

(assert (=> bs!590930 m!4636179))

(assert (=> bs!590930 m!4636179))

(assert (=> bs!590930 m!4637029))

(assert (=> d!1198420 d!1198780))

(declare-fun d!1198782 () Bool)

(declare-fun c!698160 () Bool)

(assert (=> d!1198782 (= c!698160 ((_ is Node!13133) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun e!2507573 () Bool)

(assert (=> d!1198782 (= (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))) e!2507573)))

(declare-fun b!4041474 () Bool)

(declare-fun inv!57796 (Conc!13133) Bool)

(assert (=> b!4041474 (= e!2507573 (inv!57796 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun b!4041475 () Bool)

(declare-fun e!2507574 () Bool)

(assert (=> b!4041475 (= e!2507573 e!2507574)))

(declare-fun res!1646019 () Bool)

(assert (=> b!4041475 (= res!1646019 (not ((_ is Leaf!20301) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))))))))

(assert (=> b!4041475 (=> res!1646019 e!2507574)))

(declare-fun b!4041476 () Bool)

(declare-fun inv!57797 (Conc!13133) Bool)

(assert (=> b!4041476 (= e!2507574 (inv!57797 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (= (and d!1198782 c!698160) b!4041474))

(assert (= (and d!1198782 (not c!698160)) b!4041475))

(assert (= (and b!4041475 (not res!1646019)) b!4041476))

(declare-fun m!4637779 () Bool)

(assert (=> b!4041474 m!4637779))

(declare-fun m!4637781 () Bool)

(assert (=> b!4041476 m!4637781))

(assert (=> b!4040586 d!1198782))

(declare-fun d!1198784 () Bool)

(assert (=> d!1198784 (= (seqFromList!5139 (_1!24297 lt!1438018)) (fromListB!2344 (_1!24297 lt!1438018)))))

(declare-fun bs!590931 () Bool)

(assert (= bs!590931 d!1198784))

(declare-fun m!4637783 () Bool)

(assert (=> bs!590931 m!4637783))

(assert (=> b!4040941 d!1198784))

(declare-fun d!1198786 () Bool)

(declare-fun lt!1438160 () Int)

(assert (=> d!1198786 (>= lt!1438160 0)))

(declare-fun e!2507575 () Int)

(assert (=> d!1198786 (= lt!1438160 e!2507575)))

(declare-fun c!698161 () Bool)

(assert (=> d!1198786 (= c!698161 ((_ is Nil!43241) Nil!43241))))

(assert (=> d!1198786 (= (size!32325 Nil!43241) lt!1438160)))

(declare-fun b!4041477 () Bool)

(assert (=> b!4041477 (= e!2507575 0)))

(declare-fun b!4041478 () Bool)

(assert (=> b!4041478 (= e!2507575 (+ 1 (size!32325 (t!334994 Nil!43241))))))

(assert (= (and d!1198786 c!698161) b!4041477))

(assert (= (and d!1198786 (not c!698161)) b!4041478))

(declare-fun m!4637785 () Bool)

(assert (=> b!4041478 m!4637785))

(assert (=> b!4040941 d!1198786))

(assert (=> b!4040941 d!1198568))

(declare-fun bm!287461 () Bool)

(declare-fun call!287473 () Unit!62457)

(assert (=> bm!287461 (= call!287473 (lemmaIsPrefixRefl!2576 lt!1437817 lt!1437817))))

(declare-fun b!4041539 () Bool)

(declare-fun e!2507617 () tuple2!42326)

(assert (=> b!4041539 (= e!2507617 (tuple2!42327 Nil!43241 lt!1437817))))

(declare-fun bm!287462 () Bool)

(declare-fun call!287470 () Bool)

(assert (=> bm!287462 (= call!287470 (nullable!4150 (regex!6922 (rule!9994 token!484))))))

(declare-fun bm!287463 () Bool)

(declare-fun call!287469 () Bool)

(assert (=> bm!287463 (= call!287469 (isPrefix!4009 lt!1437817 lt!1437817))))

(declare-fun b!4041540 () Bool)

(declare-fun e!2507614 () tuple2!42326)

(declare-fun lt!1438282 () tuple2!42326)

(assert (=> b!4041540 (= e!2507614 lt!1438282)))

(declare-fun bm!287464 () Bool)

(declare-fun call!287467 () Regex!11827)

(declare-fun call!287472 () C!23840)

(assert (=> bm!287464 (= call!287467 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) call!287472))))

(declare-fun b!4041541 () Bool)

(declare-fun e!2507616 () tuple2!42326)

(assert (=> b!4041541 (= e!2507616 e!2507614)))

(declare-fun call!287471 () tuple2!42326)

(assert (=> b!4041541 (= lt!1438282 call!287471)))

(declare-fun c!698187 () Bool)

(assert (=> b!4041541 (= c!698187 (isEmpty!25808 (_1!24297 lt!1438282)))))

(declare-fun b!4041538 () Bool)

(assert (=> b!4041538 (= e!2507614 (tuple2!42327 Nil!43241 lt!1437817))))

(declare-fun d!1198788 () Bool)

(declare-fun e!2507612 () Bool)

(assert (=> d!1198788 e!2507612))

(declare-fun res!1646032 () Bool)

(assert (=> d!1198788 (=> (not res!1646032) (not e!2507612))))

(declare-fun lt!1438278 () tuple2!42326)

(assert (=> d!1198788 (= res!1646032 (= (++!11324 (_1!24297 lt!1438278) (_2!24297 lt!1438278)) lt!1437817))))

(assert (=> d!1198788 (= lt!1438278 e!2507617)))

(declare-fun c!698186 () Bool)

(declare-fun lostCause!1010 (Regex!11827) Bool)

(assert (=> d!1198788 (= c!698186 (lostCause!1010 (regex!6922 (rule!9994 token!484))))))

(declare-fun lt!1438299 () Unit!62457)

(declare-fun Unit!62467 () Unit!62457)

(assert (=> d!1198788 (= lt!1438299 Unit!62467)))

(assert (=> d!1198788 (= (getSuffix!2426 lt!1437817 Nil!43241) lt!1437817)))

(declare-fun lt!1438286 () Unit!62457)

(declare-fun lt!1438283 () Unit!62457)

(assert (=> d!1198788 (= lt!1438286 lt!1438283)))

(declare-fun lt!1438277 () List!43365)

(assert (=> d!1198788 (= lt!1437817 lt!1438277)))

(assert (=> d!1198788 (= lt!1438283 (lemmaSamePrefixThenSameSuffix!2170 Nil!43241 lt!1437817 Nil!43241 lt!1438277 lt!1437817))))

(assert (=> d!1198788 (= lt!1438277 (getSuffix!2426 lt!1437817 Nil!43241))))

(declare-fun lt!1438301 () Unit!62457)

(declare-fun lt!1438302 () Unit!62457)

(assert (=> d!1198788 (= lt!1438301 lt!1438302)))

(assert (=> d!1198788 (isPrefix!4009 Nil!43241 (++!11324 Nil!43241 lt!1437817))))

(assert (=> d!1198788 (= lt!1438302 (lemmaConcatTwoListThenFirstIsPrefix!2844 Nil!43241 lt!1437817))))

(assert (=> d!1198788 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1198788 (= (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)) lt!1438278)))

(declare-fun b!4041542 () Bool)

(declare-fun e!2507618 () tuple2!42326)

(assert (=> b!4041542 (= e!2507618 (tuple2!42327 Nil!43241 lt!1437817))))

(declare-fun b!4041543 () Bool)

(assert (=> b!4041543 (= e!2507618 (tuple2!42327 Nil!43241 Nil!43241))))

(declare-fun b!4041544 () Bool)

(declare-fun e!2507611 () Bool)

(assert (=> b!4041544 (= e!2507611 (>= (size!32325 (_1!24297 lt!1438278)) (size!32325 Nil!43241)))))

(declare-fun b!4041545 () Bool)

(declare-fun e!2507613 () Unit!62457)

(declare-fun Unit!62468 () Unit!62457)

(assert (=> b!4041545 (= e!2507613 Unit!62468)))

(declare-fun b!4041546 () Bool)

(declare-fun c!698190 () Bool)

(assert (=> b!4041546 (= c!698190 call!287470)))

(declare-fun lt!1438294 () Unit!62457)

(declare-fun lt!1438300 () Unit!62457)

(assert (=> b!4041546 (= lt!1438294 lt!1438300)))

(declare-fun lt!1438292 () C!23840)

(declare-fun lt!1438297 () List!43365)

(assert (=> b!4041546 (= (++!11324 (++!11324 Nil!43241 (Cons!43241 lt!1438292 Nil!43241)) lt!1438297) lt!1437817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1254 (List!43365 C!23840 List!43365 List!43365) Unit!62457)

(assert (=> b!4041546 (= lt!1438300 (lemmaMoveElementToOtherListKeepsConcatEq!1254 Nil!43241 lt!1438292 lt!1438297 lt!1437817))))

(assert (=> b!4041546 (= lt!1438297 (tail!6285 lt!1437817))))

(assert (=> b!4041546 (= lt!1438292 (head!8553 lt!1437817))))

(declare-fun lt!1438288 () Unit!62457)

(declare-fun lt!1438289 () Unit!62457)

(assert (=> b!4041546 (= lt!1438288 lt!1438289)))

(assert (=> b!4041546 (isPrefix!4009 (++!11324 Nil!43241 (Cons!43241 (head!8553 (getSuffix!2426 lt!1437817 Nil!43241)) Nil!43241)) lt!1437817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!636 (List!43365 List!43365) Unit!62457)

(assert (=> b!4041546 (= lt!1438289 (lemmaAddHeadSuffixToPrefixStillPrefix!636 Nil!43241 lt!1437817))))

(declare-fun lt!1438276 () Unit!62457)

(declare-fun lt!1438285 () Unit!62457)

(assert (=> b!4041546 (= lt!1438276 lt!1438285)))

(assert (=> b!4041546 (= lt!1438285 (lemmaAddHeadSuffixToPrefixStillPrefix!636 Nil!43241 lt!1437817))))

(declare-fun lt!1438295 () List!43365)

(assert (=> b!4041546 (= lt!1438295 (++!11324 Nil!43241 (Cons!43241 (head!8553 lt!1437817) Nil!43241)))))

(declare-fun lt!1438290 () Unit!62457)

(assert (=> b!4041546 (= lt!1438290 e!2507613)))

(declare-fun c!698189 () Bool)

(assert (=> b!4041546 (= c!698189 (= (size!32325 Nil!43241) (size!32325 lt!1437817)))))

(declare-fun lt!1438296 () Unit!62457)

(declare-fun lt!1438293 () Unit!62457)

(assert (=> b!4041546 (= lt!1438296 lt!1438293)))

(assert (=> b!4041546 (<= (size!32325 Nil!43241) (size!32325 lt!1437817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!444 (List!43365 List!43365) Unit!62457)

(assert (=> b!4041546 (= lt!1438293 (lemmaIsPrefixThenSmallerEqSize!444 Nil!43241 lt!1437817))))

(declare-fun e!2507615 () tuple2!42326)

(assert (=> b!4041546 (= e!2507615 e!2507616)))

(declare-fun bm!287465 () Bool)

(declare-fun call!287468 () List!43365)

(assert (=> bm!287465 (= call!287471 (findLongestMatchInner!1387 call!287467 lt!1438295 (+ (size!32325 Nil!43241) 1) call!287468 lt!1437817 (size!32325 lt!1437817)))))

(declare-fun b!4041547 () Bool)

(declare-fun Unit!62469 () Unit!62457)

(assert (=> b!4041547 (= e!2507613 Unit!62469)))

(declare-fun lt!1438291 () Unit!62457)

(assert (=> b!4041547 (= lt!1438291 call!287473)))

(assert (=> b!4041547 call!287469))

(declare-fun lt!1438281 () Unit!62457)

(assert (=> b!4041547 (= lt!1438281 lt!1438291)))

(declare-fun lt!1438298 () Unit!62457)

(declare-fun call!287466 () Unit!62457)

(assert (=> b!4041547 (= lt!1438298 call!287466)))

(assert (=> b!4041547 (= lt!1437817 Nil!43241)))

(declare-fun lt!1438279 () Unit!62457)

(assert (=> b!4041547 (= lt!1438279 lt!1438298)))

(assert (=> b!4041547 false))

(declare-fun b!4041548 () Bool)

(declare-fun c!698188 () Bool)

(assert (=> b!4041548 (= c!698188 call!287470)))

(declare-fun lt!1438303 () Unit!62457)

(declare-fun lt!1438284 () Unit!62457)

(assert (=> b!4041548 (= lt!1438303 lt!1438284)))

(assert (=> b!4041548 (= lt!1437817 Nil!43241)))

(assert (=> b!4041548 (= lt!1438284 call!287466)))

(declare-fun lt!1438287 () Unit!62457)

(declare-fun lt!1438280 () Unit!62457)

(assert (=> b!4041548 (= lt!1438287 lt!1438280)))

(assert (=> b!4041548 call!287469))

(assert (=> b!4041548 (= lt!1438280 call!287473)))

(assert (=> b!4041548 (= e!2507615 e!2507618)))

(declare-fun bm!287466 () Bool)

(assert (=> bm!287466 (= call!287468 (tail!6285 lt!1437817))))

(declare-fun b!4041549 () Bool)

(assert (=> b!4041549 (= e!2507616 call!287471)))

(declare-fun bm!287467 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!920 (List!43365 List!43365 List!43365) Unit!62457)

(assert (=> bm!287467 (= call!287466 (lemmaIsPrefixSameLengthThenSameList!920 lt!1437817 Nil!43241 lt!1437817))))

(declare-fun b!4041550 () Bool)

(assert (=> b!4041550 (= e!2507617 e!2507615)))

(declare-fun c!698191 () Bool)

(assert (=> b!4041550 (= c!698191 (= (size!32325 Nil!43241) (size!32325 lt!1437817)))))

(declare-fun b!4041551 () Bool)

(assert (=> b!4041551 (= e!2507612 e!2507611)))

(declare-fun res!1646031 () Bool)

(assert (=> b!4041551 (=> res!1646031 e!2507611)))

(assert (=> b!4041551 (= res!1646031 (isEmpty!25808 (_1!24297 lt!1438278)))))

(declare-fun bm!287468 () Bool)

(assert (=> bm!287468 (= call!287472 (head!8553 lt!1437817))))

(assert (= (and d!1198788 c!698186) b!4041539))

(assert (= (and d!1198788 (not c!698186)) b!4041550))

(assert (= (and b!4041550 c!698191) b!4041548))

(assert (= (and b!4041550 (not c!698191)) b!4041546))

(assert (= (and b!4041548 c!698188) b!4041543))

(assert (= (and b!4041548 (not c!698188)) b!4041542))

(assert (= (and b!4041546 c!698189) b!4041547))

(assert (= (and b!4041546 (not c!698189)) b!4041545))

(assert (= (and b!4041546 c!698190) b!4041541))

(assert (= (and b!4041546 (not c!698190)) b!4041549))

(assert (= (and b!4041541 c!698187) b!4041538))

(assert (= (and b!4041541 (not c!698187)) b!4041540))

(assert (= (or b!4041541 b!4041549) bm!287468))

(assert (= (or b!4041541 b!4041549) bm!287466))

(assert (= (or b!4041541 b!4041549) bm!287464))

(assert (= (or b!4041541 b!4041549) bm!287465))

(assert (= (or b!4041548 b!4041547) bm!287463))

(assert (= (or b!4041548 b!4041546) bm!287462))

(assert (= (or b!4041548 b!4041547) bm!287467))

(assert (= (or b!4041548 b!4041547) bm!287461))

(assert (= (and d!1198788 res!1646032) b!4041551))

(assert (= (and b!4041551 (not res!1646031)) b!4041544))

(assert (=> bm!287465 m!4636325))

(declare-fun m!4637789 () Bool)

(assert (=> bm!287465 m!4637789))

(assert (=> b!4041546 m!4636985))

(declare-fun m!4637791 () Bool)

(assert (=> b!4041546 m!4637791))

(declare-fun m!4637793 () Bool)

(assert (=> b!4041546 m!4637793))

(assert (=> b!4041546 m!4636325))

(assert (=> b!4041546 m!4636353))

(declare-fun m!4637795 () Bool)

(assert (=> b!4041546 m!4637795))

(declare-fun m!4637797 () Bool)

(assert (=> b!4041546 m!4637797))

(declare-fun m!4637799 () Bool)

(assert (=> b!4041546 m!4637799))

(declare-fun m!4637801 () Bool)

(assert (=> b!4041546 m!4637801))

(declare-fun m!4637803 () Bool)

(assert (=> b!4041546 m!4637803))

(declare-fun m!4637805 () Bool)

(assert (=> b!4041546 m!4637805))

(assert (=> b!4041546 m!4636327))

(assert (=> b!4041546 m!4637801))

(declare-fun m!4637807 () Bool)

(assert (=> b!4041546 m!4637807))

(assert (=> b!4041546 m!4637791))

(declare-fun m!4637809 () Bool)

(assert (=> b!4041546 m!4637809))

(assert (=> b!4041546 m!4637795))

(declare-fun m!4637811 () Bool)

(assert (=> bm!287467 m!4637811))

(assert (=> bm!287461 m!4636265))

(declare-fun m!4637813 () Bool)

(assert (=> b!4041541 m!4637813))

(declare-fun m!4637815 () Bool)

(assert (=> d!1198788 m!4637815))

(assert (=> d!1198788 m!4637791))

(declare-fun m!4637817 () Bool)

(assert (=> d!1198788 m!4637817))

(declare-fun m!4637819 () Bool)

(assert (=> d!1198788 m!4637819))

(declare-fun m!4637821 () Bool)

(assert (=> d!1198788 m!4637821))

(assert (=> d!1198788 m!4637817))

(declare-fun m!4637823 () Bool)

(assert (=> d!1198788 m!4637823))

(declare-fun m!4637825 () Bool)

(assert (=> d!1198788 m!4637825))

(assert (=> d!1198788 m!4636383))

(assert (=> bm!287466 m!4636327))

(declare-fun m!4637827 () Bool)

(assert (=> b!4041551 m!4637827))

(assert (=> bm!287463 m!4636263))

(assert (=> bm!287468 m!4636353))

(declare-fun m!4637829 () Bool)

(assert (=> bm!287464 m!4637829))

(assert (=> bm!287462 m!4636377))

(declare-fun m!4637831 () Bool)

(assert (=> b!4041544 m!4637831))

(assert (=> b!4041544 m!4636985))

(assert (=> b!4040941 d!1198788))

(declare-fun d!1198792 () Bool)

(assert (=> d!1198792 (= (apply!10111 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 (_1!24297 lt!1438018))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 (_1!24297 lt!1438018))))))

(declare-fun b_lambda!118021 () Bool)

(assert (=> (not b_lambda!118021) (not d!1198792)))

(declare-fun t!335097 () Bool)

(declare-fun tb!242961 () Bool)

(assert (=> (and b!4040354 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335097) tb!242961))

(declare-fun result!294478 () Bool)

(assert (=> tb!242961 (= result!294478 (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 (_1!24297 lt!1438018)))))))

(declare-fun m!4637833 () Bool)

(assert (=> tb!242961 m!4637833))

(assert (=> d!1198792 t!335097))

(declare-fun b_and!310689 () Bool)

(assert (= b_and!310665 (and (=> t!335097 result!294478) b_and!310689)))

(declare-fun tb!242963 () Bool)

(declare-fun t!335099 () Bool)

(assert (=> (and b!4040350 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335099) tb!242963))

(declare-fun result!294480 () Bool)

(assert (= result!294480 result!294478))

(assert (=> d!1198792 t!335099))

(declare-fun b_and!310691 () Bool)

(assert (= b_and!310667 (and (=> t!335099 result!294480) b_and!310691)))

(declare-fun tb!242965 () Bool)

(declare-fun t!335101 () Bool)

(assert (=> (and b!4041004 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335101) tb!242965))

(declare-fun result!294482 () Bool)

(assert (= result!294482 result!294478))

(assert (=> d!1198792 t!335101))

(declare-fun b_and!310693 () Bool)

(assert (= b_and!310669 (and (=> t!335101 result!294482) b_and!310693)))

(assert (=> d!1198792 m!4636989))

(declare-fun m!4637835 () Bool)

(assert (=> d!1198792 m!4637835))

(assert (=> b!4040941 d!1198792))

(declare-fun d!1198794 () Bool)

(declare-fun lt!1438334 () Int)

(assert (=> d!1198794 (= lt!1438334 (size!32325 (list!16100 (seqFromList!5139 (_1!24297 lt!1438018)))))))

(declare-fun size!32329 (Conc!13133) Int)

(assert (=> d!1198794 (= lt!1438334 (size!32329 (c!697932 (seqFromList!5139 (_1!24297 lt!1438018)))))))

(assert (=> d!1198794 (= (size!32328 (seqFromList!5139 (_1!24297 lt!1438018))) lt!1438334)))

(declare-fun bs!590932 () Bool)

(assert (= bs!590932 d!1198794))

(assert (=> bs!590932 m!4636989))

(declare-fun m!4637845 () Bool)

(assert (=> bs!590932 m!4637845))

(assert (=> bs!590932 m!4637845))

(declare-fun m!4637851 () Bool)

(assert (=> bs!590932 m!4637851))

(declare-fun m!4637855 () Bool)

(assert (=> bs!590932 m!4637855))

(assert (=> b!4040941 d!1198794))

(declare-fun bs!590933 () Bool)

(declare-fun d!1198796 () Bool)

(assert (= bs!590933 (and d!1198796 d!1198284)))

(declare-fun lambda!127400 () Int)

(assert (=> bs!590933 (= (and (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (= lambda!127400 lambda!127385))))

(declare-fun bs!590934 () Bool)

(assert (= bs!590934 (and d!1198796 d!1198772)))

(assert (=> bs!590934 (= (and (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (= lambda!127400 lambda!127399))))

(declare-fun b!4041566 () Bool)

(declare-fun e!2507628 () Bool)

(assert (=> b!4041566 (= e!2507628 true)))

(assert (=> d!1198796 e!2507628))

(assert (= d!1198796 b!4041566))

(assert (=> b!4041566 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (rule!9994 token!484)))) (dynLambda!18361 order!22647 lambda!127400))))

(assert (=> b!4041566 (< (dynLambda!18362 order!22649 (toChars!9321 (transformation!6922 (rule!9994 token!484)))) (dynLambda!18361 order!22647 lambda!127400))))

(assert (=> d!1198796 (= (list!16100 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 (_1!24297 lt!1438018))))) (list!16100 (seqFromList!5139 (_1!24297 lt!1438018))))))

(declare-fun lt!1438335 () Unit!62457)

(assert (=> d!1198796 (= lt!1438335 (ForallOf!825 lambda!127400 (seqFromList!5139 (_1!24297 lt!1438018))))))

(assert (=> d!1198796 (= (lemmaSemiInverse!1907 (transformation!6922 (rule!9994 token!484)) (seqFromList!5139 (_1!24297 lt!1438018))) lt!1438335)))

(declare-fun b_lambda!118023 () Bool)

(assert (=> (not b_lambda!118023) (not d!1198796)))

(declare-fun t!335103 () Bool)

(declare-fun tb!242967 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335103) tb!242967))

(declare-fun tp!1226892 () Bool)

(declare-fun e!2507632 () Bool)

(declare-fun b!4041569 () Bool)

(assert (=> b!4041569 (= e!2507632 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 (_1!24297 lt!1438018)))))) tp!1226892))))

(declare-fun result!294484 () Bool)

(assert (=> tb!242967 (= result!294484 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 (_1!24297 lt!1438018))))) e!2507632))))

(assert (= tb!242967 b!4041569))

(declare-fun m!4637891 () Bool)

(assert (=> b!4041569 m!4637891))

(declare-fun m!4637893 () Bool)

(assert (=> tb!242967 m!4637893))

(assert (=> d!1198796 t!335103))

(declare-fun b_and!310695 () Bool)

(assert (= b_and!310639 (and (=> t!335103 result!294484) b_and!310695)))

(declare-fun t!335105 () Bool)

(declare-fun tb!242969 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335105) tb!242969))

(declare-fun result!294486 () Bool)

(assert (= result!294486 result!294484))

(assert (=> d!1198796 t!335105))

(declare-fun b_and!310697 () Bool)

(assert (= b_and!310641 (and (=> t!335105 result!294486) b_and!310697)))

(declare-fun t!335107 () Bool)

(declare-fun tb!242971 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335107) tb!242971))

(declare-fun result!294488 () Bool)

(assert (= result!294488 result!294484))

(assert (=> d!1198796 t!335107))

(declare-fun b_and!310699 () Bool)

(assert (= b_and!310645 (and (=> t!335107 result!294488) b_and!310699)))

(declare-fun b_lambda!118025 () Bool)

(assert (=> (not b_lambda!118025) (not d!1198796)))

(assert (=> d!1198796 t!335097))

(declare-fun b_and!310701 () Bool)

(assert (= b_and!310689 (and (=> t!335097 result!294478) b_and!310701)))

(assert (=> d!1198796 t!335099))

(declare-fun b_and!310703 () Bool)

(assert (= b_and!310691 (and (=> t!335099 result!294480) b_and!310703)))

(assert (=> d!1198796 t!335101))

(declare-fun b_and!310705 () Bool)

(assert (= b_and!310693 (and (=> t!335101 result!294482) b_and!310705)))

(declare-fun m!4637903 () Bool)

(assert (=> d!1198796 m!4637903))

(declare-fun m!4637905 () Bool)

(assert (=> d!1198796 m!4637905))

(assert (=> d!1198796 m!4637835))

(assert (=> d!1198796 m!4637903))

(assert (=> d!1198796 m!4636989))

(assert (=> d!1198796 m!4637835))

(assert (=> d!1198796 m!4636989))

(assert (=> d!1198796 m!4637845))

(assert (=> d!1198796 m!4636989))

(declare-fun m!4637907 () Bool)

(assert (=> d!1198796 m!4637907))

(assert (=> b!4040941 d!1198796))

(declare-fun d!1198808 () Bool)

(declare-fun e!2507652 () Bool)

(assert (=> d!1198808 e!2507652))

(declare-fun res!1646051 () Bool)

(assert (=> d!1198808 (=> res!1646051 e!2507652)))

(assert (=> d!1198808 (= res!1646051 (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(declare-fun lt!1438352 () Unit!62457)

(declare-fun choose!24495 (Regex!11827 List!43365) Unit!62457)

(assert (=> d!1198808 (= lt!1438352 (choose!24495 (regex!6922 (rule!9994 token!484)) lt!1437817))))

(assert (=> d!1198808 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1198808 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1360 (regex!6922 (rule!9994 token!484)) lt!1437817) lt!1438352)))

(declare-fun b!4041609 () Bool)

(assert (=> b!4041609 (= e!2507652 (matchR!5780 (regex!6922 (rule!9994 token!484)) (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(assert (= (and d!1198808 (not res!1646051)) b!4041609))

(assert (=> d!1198808 m!4636383))

(assert (=> d!1198808 m!4636325))

(assert (=> d!1198808 m!4636995))

(assert (=> d!1198808 m!4636985))

(declare-fun m!4637979 () Bool)

(assert (=> d!1198808 m!4637979))

(assert (=> d!1198808 m!4636985))

(assert (=> d!1198808 m!4636325))

(assert (=> d!1198808 m!4636987))

(assert (=> b!4041609 m!4636985))

(assert (=> b!4041609 m!4636325))

(assert (=> b!4041609 m!4636985))

(assert (=> b!4041609 m!4636325))

(assert (=> b!4041609 m!4636987))

(assert (=> b!4041609 m!4637005))

(assert (=> b!4040941 d!1198808))

(declare-fun d!1198844 () Bool)

(assert (=> d!1198844 (= (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))) ((_ is Nil!43241) (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(assert (=> b!4040941 d!1198844))

(declare-fun b!4041612 () Bool)

(declare-fun res!1646052 () Bool)

(declare-fun e!2507654 () Bool)

(assert (=> b!4041612 (=> (not res!1646052) (not e!2507654))))

(declare-fun lt!1438353 () List!43365)

(assert (=> b!4041612 (= res!1646052 (= (size!32325 lt!1438353) (+ (size!32325 (t!334994 lt!1437789)) (size!32325 suffix!1299))))))

(declare-fun d!1198846 () Bool)

(assert (=> d!1198846 e!2507654))

(declare-fun res!1646053 () Bool)

(assert (=> d!1198846 (=> (not res!1646053) (not e!2507654))))

(assert (=> d!1198846 (= res!1646053 (= (content!6577 lt!1438353) ((_ map or) (content!6577 (t!334994 lt!1437789)) (content!6577 suffix!1299))))))

(declare-fun e!2507653 () List!43365)

(assert (=> d!1198846 (= lt!1438353 e!2507653)))

(declare-fun c!698210 () Bool)

(assert (=> d!1198846 (= c!698210 ((_ is Nil!43241) (t!334994 lt!1437789)))))

(assert (=> d!1198846 (= (++!11324 (t!334994 lt!1437789) suffix!1299) lt!1438353)))

(declare-fun b!4041611 () Bool)

(assert (=> b!4041611 (= e!2507653 (Cons!43241 (h!48661 (t!334994 lt!1437789)) (++!11324 (t!334994 (t!334994 lt!1437789)) suffix!1299)))))

(declare-fun b!4041610 () Bool)

(assert (=> b!4041610 (= e!2507653 suffix!1299)))

(declare-fun b!4041613 () Bool)

(assert (=> b!4041613 (= e!2507654 (or (not (= suffix!1299 Nil!43241)) (= lt!1438353 (t!334994 lt!1437789))))))

(assert (= (and d!1198846 c!698210) b!4041610))

(assert (= (and d!1198846 (not c!698210)) b!4041611))

(assert (= (and d!1198846 res!1646053) b!4041612))

(assert (= (and b!4041612 res!1646052) b!4041613))

(declare-fun m!4637981 () Bool)

(assert (=> b!4041612 m!4637981))

(declare-fun m!4637983 () Bool)

(assert (=> b!4041612 m!4637983))

(assert (=> b!4041612 m!4636139))

(declare-fun m!4637985 () Bool)

(assert (=> d!1198846 m!4637985))

(declare-fun m!4637987 () Bool)

(assert (=> d!1198846 m!4637987))

(assert (=> d!1198846 m!4636289))

(declare-fun m!4637989 () Bool)

(assert (=> b!4041611 m!4637989))

(assert (=> b!4040378 d!1198846))

(declare-fun d!1198848 () Bool)

(assert (=> d!1198848 true))

(declare-fun order!22651 () Int)

(declare-fun lambda!127404 () Int)

(declare-fun dynLambda!18363 (Int Int) Int)

(assert (=> d!1198848 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (h!48663 rules!2999)))) (dynLambda!18363 order!22651 lambda!127404))))

(declare-fun Forall2!1090 (Int) Bool)

(assert (=> d!1198848 (= (equivClasses!2857 (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (h!48663 rules!2999)))) (Forall2!1090 lambda!127404))))

(declare-fun bs!590944 () Bool)

(assert (= bs!590944 d!1198848))

(declare-fun m!4638049 () Bool)

(assert (=> bs!590944 m!4638049))

(assert (=> b!4040508 d!1198848))

(assert (=> b!4040424 d!1198592))

(declare-fun d!1198876 () Bool)

(assert (=> d!1198876 (= (inv!57785 (tag!7782 (h!48663 (t!334996 rules!2999)))) (= (mod (str.len (value!217910 (tag!7782 (h!48663 (t!334996 rules!2999))))) 2) 0))))

(assert (=> b!4041003 d!1198876))

(declare-fun d!1198880 () Bool)

(declare-fun res!1646071 () Bool)

(declare-fun e!2507678 () Bool)

(assert (=> d!1198880 (=> (not res!1646071) (not e!2507678))))

(assert (=> d!1198880 (= res!1646071 (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999))))))))

(assert (=> d!1198880 (= (inv!57788 (transformation!6922 (h!48663 (t!334996 rules!2999)))) e!2507678)))

(declare-fun b!4041653 () Bool)

(assert (=> b!4041653 (= e!2507678 (equivClasses!2857 (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999))))))))

(assert (= (and d!1198880 res!1646071) b!4041653))

(declare-fun m!4638051 () Bool)

(assert (=> d!1198880 m!4638051))

(declare-fun m!4638053 () Bool)

(assert (=> b!4041653 m!4638053))

(assert (=> b!4041003 d!1198880))

(declare-fun d!1198882 () Bool)

(assert (=> d!1198882 (= (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))) (isBalanced!3680 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))))))

(declare-fun bs!590946 () Bool)

(assert (= bs!590946 d!1198882))

(declare-fun m!4638061 () Bool)

(assert (=> bs!590946 m!4638061))

(assert (=> tb!242873 d!1198882))

(declare-fun d!1198886 () Bool)

(declare-fun lt!1438362 () Int)

(assert (=> d!1198886 (>= lt!1438362 0)))

(declare-fun e!2507679 () Int)

(assert (=> d!1198886 (= lt!1438362 e!2507679)))

(declare-fun c!698221 () Bool)

(assert (=> d!1198886 (= c!698221 ((_ is Nil!43241) lt!1437826))))

(assert (=> d!1198886 (= (size!32325 lt!1437826) lt!1438362)))

(declare-fun b!4041654 () Bool)

(assert (=> b!4041654 (= e!2507679 0)))

(declare-fun b!4041655 () Bool)

(assert (=> b!4041655 (= e!2507679 (+ 1 (size!32325 (t!334994 lt!1437826))))))

(assert (= (and d!1198886 c!698221) b!4041654))

(assert (= (and d!1198886 (not c!698221)) b!4041655))

(declare-fun m!4638063 () Bool)

(assert (=> b!4041655 m!4638063))

(assert (=> b!4040387 d!1198886))

(assert (=> b!4040387 d!1198432))

(declare-fun d!1198888 () Bool)

(declare-fun lt!1438363 () Int)

(assert (=> d!1198888 (>= lt!1438363 0)))

(declare-fun e!2507680 () Int)

(assert (=> d!1198888 (= lt!1438363 e!2507680)))

(declare-fun c!698222 () Bool)

(assert (=> d!1198888 (= c!698222 ((_ is Nil!43241) lt!1437805))))

(assert (=> d!1198888 (= (size!32325 lt!1437805) lt!1438363)))

(declare-fun b!4041656 () Bool)

(assert (=> b!4041656 (= e!2507680 0)))

(declare-fun b!4041657 () Bool)

(assert (=> b!4041657 (= e!2507680 (+ 1 (size!32325 (t!334994 lt!1437805))))))

(assert (= (and d!1198888 c!698222) b!4041656))

(assert (= (and d!1198888 (not c!698222)) b!4041657))

(declare-fun m!4638065 () Bool)

(assert (=> b!4041657 m!4638065))

(assert (=> b!4040387 d!1198888))

(declare-fun b!4041660 () Bool)

(declare-fun res!1646072 () Bool)

(declare-fun e!2507682 () Bool)

(assert (=> b!4041660 (=> (not res!1646072) (not e!2507682))))

(declare-fun lt!1438364 () List!43365)

(assert (=> b!4041660 (= res!1646072 (= (size!32325 lt!1438364) (+ (size!32325 lt!1437799) (size!32325 lt!1438041))))))

(declare-fun d!1198890 () Bool)

(assert (=> d!1198890 e!2507682))

(declare-fun res!1646073 () Bool)

(assert (=> d!1198890 (=> (not res!1646073) (not e!2507682))))

(assert (=> d!1198890 (= res!1646073 (= (content!6577 lt!1438364) ((_ map or) (content!6577 lt!1437799) (content!6577 lt!1438041))))))

(declare-fun e!2507681 () List!43365)

(assert (=> d!1198890 (= lt!1438364 e!2507681)))

(declare-fun c!698223 () Bool)

(assert (=> d!1198890 (= c!698223 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198890 (= (++!11324 lt!1437799 lt!1438041) lt!1438364)))

(declare-fun b!4041659 () Bool)

(assert (=> b!4041659 (= e!2507681 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) lt!1438041)))))

(declare-fun b!4041658 () Bool)

(assert (=> b!4041658 (= e!2507681 lt!1438041)))

(declare-fun b!4041661 () Bool)

(assert (=> b!4041661 (= e!2507682 (or (not (= lt!1438041 Nil!43241)) (= lt!1438364 lt!1437799)))))

(assert (= (and d!1198890 c!698223) b!4041658))

(assert (= (and d!1198890 (not c!698223)) b!4041659))

(assert (= (and d!1198890 res!1646073) b!4041660))

(assert (= (and b!4041660 res!1646072) b!4041661))

(declare-fun m!4638069 () Bool)

(assert (=> b!4041660 m!4638069))

(assert (=> b!4041660 m!4636145))

(declare-fun m!4638071 () Bool)

(assert (=> b!4041660 m!4638071))

(declare-fun m!4638073 () Bool)

(assert (=> d!1198890 m!4638073))

(assert (=> d!1198890 m!4636275))

(declare-fun m!4638075 () Bool)

(assert (=> d!1198890 m!4638075))

(declare-fun m!4638077 () Bool)

(assert (=> b!4041659 m!4638077))

(assert (=> d!1198462 d!1198890))

(assert (=> d!1198462 d!1198434))

(assert (=> d!1198462 d!1198432))

(assert (=> b!4040991 d!1198661))

(assert (=> b!4040991 d!1198586))

(declare-fun d!1198892 () Bool)

(declare-fun lt!1438365 () Int)

(assert (=> d!1198892 (>= lt!1438365 0)))

(declare-fun e!2507684 () Int)

(assert (=> d!1198892 (= lt!1438365 e!2507684)))

(declare-fun c!698224 () Bool)

(assert (=> d!1198892 (= c!698224 ((_ is Nil!43241) (t!334994 prefix!494)))))

(assert (=> d!1198892 (= (size!32325 (t!334994 prefix!494)) lt!1438365)))

(declare-fun b!4041662 () Bool)

(assert (=> b!4041662 (= e!2507684 0)))

(declare-fun b!4041663 () Bool)

(assert (=> b!4041663 (= e!2507684 (+ 1 (size!32325 (t!334994 (t!334994 prefix!494)))))))

(assert (= (and d!1198892 c!698224) b!4041662))

(assert (= (and d!1198892 (not c!698224)) b!4041663))

(declare-fun m!4638081 () Bool)

(assert (=> b!4041663 m!4638081))

(assert (=> b!4040954 d!1198892))

(declare-fun b!4041666 () Bool)

(declare-fun e!2507685 () Bool)

(assert (=> b!4041666 (= e!2507685 (isPrefix!4009 (tail!6285 prefix!494) (tail!6285 (++!11324 prefix!494 suffix!1299))))))

(declare-fun b!4041667 () Bool)

(declare-fun e!2507687 () Bool)

(assert (=> b!4041667 (= e!2507687 (>= (size!32325 (++!11324 prefix!494 suffix!1299)) (size!32325 prefix!494)))))

(declare-fun b!4041665 () Bool)

(declare-fun res!1646077 () Bool)

(assert (=> b!4041665 (=> (not res!1646077) (not e!2507685))))

(assert (=> b!4041665 (= res!1646077 (= (head!8553 prefix!494) (head!8553 (++!11324 prefix!494 suffix!1299))))))

(declare-fun d!1198896 () Bool)

(assert (=> d!1198896 e!2507687))

(declare-fun res!1646076 () Bool)

(assert (=> d!1198896 (=> res!1646076 e!2507687)))

(declare-fun lt!1438366 () Bool)

(assert (=> d!1198896 (= res!1646076 (not lt!1438366))))

(declare-fun e!2507686 () Bool)

(assert (=> d!1198896 (= lt!1438366 e!2507686)))

(declare-fun res!1646075 () Bool)

(assert (=> d!1198896 (=> res!1646075 e!2507686)))

(assert (=> d!1198896 (= res!1646075 ((_ is Nil!43241) prefix!494))))

(assert (=> d!1198896 (= (isPrefix!4009 prefix!494 (++!11324 prefix!494 suffix!1299)) lt!1438366)))

(declare-fun b!4041664 () Bool)

(assert (=> b!4041664 (= e!2507686 e!2507685)))

(declare-fun res!1646074 () Bool)

(assert (=> b!4041664 (=> (not res!1646074) (not e!2507685))))

(assert (=> b!4041664 (= res!1646074 (not ((_ is Nil!43241) (++!11324 prefix!494 suffix!1299))))))

(assert (= (and d!1198896 (not res!1646075)) b!4041664))

(assert (= (and b!4041664 res!1646074) b!4041665))

(assert (= (and b!4041665 res!1646077) b!4041666))

(assert (= (and d!1198896 (not res!1646076)) b!4041667))

(assert (=> b!4041666 m!4636425))

(assert (=> b!4041666 m!4636231))

(declare-fun m!4638089 () Bool)

(assert (=> b!4041666 m!4638089))

(assert (=> b!4041666 m!4636425))

(assert (=> b!4041666 m!4638089))

(declare-fun m!4638091 () Bool)

(assert (=> b!4041666 m!4638091))

(assert (=> b!4041667 m!4636231))

(declare-fun m!4638093 () Bool)

(assert (=> b!4041667 m!4638093))

(assert (=> b!4041667 m!4636147))

(assert (=> b!4041665 m!4636429))

(assert (=> b!4041665 m!4636231))

(declare-fun m!4638095 () Bool)

(assert (=> b!4041665 m!4638095))

(assert (=> d!1198244 d!1198896))

(assert (=> d!1198244 d!1198262))

(declare-fun d!1198904 () Bool)

(assert (=> d!1198904 (isPrefix!4009 prefix!494 (++!11324 prefix!494 suffix!1299))))

(assert (=> d!1198904 true))

(declare-fun _$46!1768 () Unit!62457)

(assert (=> d!1198904 (= (choose!24487 prefix!494 suffix!1299) _$46!1768)))

(declare-fun bs!590950 () Bool)

(assert (= bs!590950 d!1198904))

(assert (=> bs!590950 m!4636231))

(assert (=> bs!590950 m!4636231))

(assert (=> bs!590950 m!4636445))

(assert (=> d!1198244 d!1198904))

(declare-fun d!1198906 () Bool)

(declare-fun lt!1438367 () Int)

(assert (=> d!1198906 (>= lt!1438367 0)))

(declare-fun e!2507688 () Int)

(assert (=> d!1198906 (= lt!1438367 e!2507688)))

(declare-fun c!698225 () Bool)

(assert (=> d!1198906 (= c!698225 ((_ is Nil!43241) (t!334994 lt!1437800)))))

(assert (=> d!1198906 (= (size!32325 (t!334994 lt!1437800)) lt!1438367)))

(declare-fun b!4041668 () Bool)

(assert (=> b!4041668 (= e!2507688 0)))

(declare-fun b!4041669 () Bool)

(assert (=> b!4041669 (= e!2507688 (+ 1 (size!32325 (t!334994 (t!334994 lt!1437800)))))))

(assert (= (and d!1198906 c!698225) b!4041668))

(assert (= (and d!1198906 (not c!698225)) b!4041669))

(declare-fun m!4638097 () Bool)

(assert (=> b!4041669 m!4638097))

(assert (=> b!4040596 d!1198906))

(declare-fun d!1198908 () Bool)

(declare-fun c!698226 () Bool)

(assert (=> d!1198908 (= c!698226 ((_ is Node!13133) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))))

(declare-fun e!2507689 () Bool)

(assert (=> d!1198908 (= (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))) e!2507689)))

(declare-fun b!4041670 () Bool)

(assert (=> b!4041670 (= e!2507689 (inv!57796 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))))

(declare-fun b!4041671 () Bool)

(declare-fun e!2507690 () Bool)

(assert (=> b!4041671 (= e!2507689 e!2507690)))

(declare-fun res!1646078 () Bool)

(assert (=> b!4041671 (= res!1646078 (not ((_ is Leaf!20301) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))))))))

(assert (=> b!4041671 (=> res!1646078 e!2507690)))

(declare-fun b!4041672 () Bool)

(assert (=> b!4041672 (= e!2507690 (inv!57797 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))))

(assert (= (and d!1198908 c!698226) b!4041670))

(assert (= (and d!1198908 (not c!698226)) b!4041671))

(assert (= (and b!4041671 (not res!1646078)) b!4041672))

(declare-fun m!4638099 () Bool)

(assert (=> b!4041670 m!4638099))

(declare-fun m!4638101 () Bool)

(assert (=> b!4041672 m!4638101))

(assert (=> b!4040955 d!1198908))

(declare-fun b!4041673 () Bool)

(declare-fun e!2507694 () Bool)

(declare-fun lt!1438370 () Bool)

(declare-fun call!287483 () Bool)

(assert (=> b!4041673 (= e!2507694 (= lt!1438370 call!287483))))

(declare-fun d!1198910 () Bool)

(assert (=> d!1198910 e!2507694))

(declare-fun c!698229 () Bool)

(assert (=> d!1198910 (= c!698229 ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun e!2507697 () Bool)

(assert (=> d!1198910 (= lt!1438370 e!2507697)))

(declare-fun c!698228 () Bool)

(assert (=> d!1198910 (= c!698228 (isEmpty!25808 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))))))

(assert (=> d!1198910 (validRegex!5350 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))

(assert (=> d!1198910 (= (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) lt!1438370)))

(declare-fun b!4041674 () Bool)

(declare-fun e!2507691 () Bool)

(declare-fun e!2507693 () Bool)

(assert (=> b!4041674 (= e!2507691 e!2507693)))

(declare-fun res!1646085 () Bool)

(assert (=> b!4041674 (=> (not res!1646085) (not e!2507693))))

(assert (=> b!4041674 (= res!1646085 (not lt!1438370))))

(declare-fun b!4041675 () Bool)

(assert (=> b!4041675 (= e!2507697 (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))) (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))))) (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))))))))

(declare-fun b!4041676 () Bool)

(declare-fun res!1646080 () Bool)

(declare-fun e!2507692 () Bool)

(assert (=> b!4041676 (=> (not res!1646080) (not e!2507692))))

(assert (=> b!4041676 (= res!1646080 (isEmpty!25808 (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))))))))

(declare-fun b!4041677 () Bool)

(declare-fun res!1646086 () Bool)

(assert (=> b!4041677 (=> res!1646086 e!2507691)))

(assert (=> b!4041677 (= res!1646086 e!2507692)))

(declare-fun res!1646081 () Bool)

(assert (=> b!4041677 (=> (not res!1646081) (not e!2507692))))

(assert (=> b!4041677 (= res!1646081 lt!1438370)))

(declare-fun b!4041678 () Bool)

(declare-fun e!2507696 () Bool)

(assert (=> b!4041678 (= e!2507694 e!2507696)))

(declare-fun c!698227 () Bool)

(assert (=> b!4041678 (= c!698227 ((_ is EmptyLang!11827) (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun bm!287478 () Bool)

(assert (=> bm!287478 (= call!287483 (isEmpty!25808 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun b!4041679 () Bool)

(assert (=> b!4041679 (= e!2507697 (nullable!4150 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun b!4041680 () Bool)

(assert (=> b!4041680 (= e!2507692 (= (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) (c!697933 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))))

(declare-fun b!4041681 () Bool)

(assert (=> b!4041681 (= e!2507696 (not lt!1438370))))

(declare-fun b!4041682 () Bool)

(declare-fun res!1646083 () Bool)

(declare-fun e!2507695 () Bool)

(assert (=> b!4041682 (=> res!1646083 e!2507695)))

(assert (=> b!4041682 (= res!1646083 (not (isEmpty!25808 (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))))))))

(declare-fun b!4041683 () Bool)

(declare-fun res!1646084 () Bool)

(assert (=> b!4041683 (=> res!1646084 e!2507691)))

(assert (=> b!4041683 (= res!1646084 (not ((_ is ElementMatch!11827) (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))))))

(assert (=> b!4041683 (= e!2507696 e!2507691)))

(declare-fun b!4041684 () Bool)

(declare-fun res!1646082 () Bool)

(assert (=> b!4041684 (=> (not res!1646082) (not e!2507692))))

(assert (=> b!4041684 (= res!1646082 (not call!287483))))

(declare-fun b!4041685 () Bool)

(assert (=> b!4041685 (= e!2507695 (not (= (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) (c!697933 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))))))))

(declare-fun b!4041686 () Bool)

(assert (=> b!4041686 (= e!2507693 e!2507695)))

(declare-fun res!1646079 () Bool)

(assert (=> b!4041686 (=> res!1646079 e!2507695)))

(assert (=> b!4041686 (= res!1646079 call!287483)))

(assert (= (and d!1198910 c!698228) b!4041679))

(assert (= (and d!1198910 (not c!698228)) b!4041675))

(assert (= (and d!1198910 c!698229) b!4041673))

(assert (= (and d!1198910 (not c!698229)) b!4041678))

(assert (= (and b!4041678 c!698227) b!4041681))

(assert (= (and b!4041678 (not c!698227)) b!4041683))

(assert (= (and b!4041683 (not res!1646084)) b!4041677))

(assert (= (and b!4041677 res!1646081) b!4041684))

(assert (= (and b!4041684 res!1646082) b!4041676))

(assert (= (and b!4041676 res!1646080) b!4041680))

(assert (= (and b!4041677 (not res!1646086)) b!4041674))

(assert (= (and b!4041674 res!1646085) b!4041686))

(assert (= (and b!4041686 (not res!1646079)) b!4041682))

(assert (= (and b!4041682 (not res!1646083)) b!4041685))

(assert (= (or b!4041673 b!4041684 b!4041686) bm!287478))

(assert (=> bm!287478 m!4636503))

(declare-fun m!4638109 () Bool)

(assert (=> bm!287478 m!4638109))

(assert (=> b!4041680 m!4636503))

(declare-fun m!4638111 () Bool)

(assert (=> b!4041680 m!4638111))

(assert (=> b!4041676 m!4636503))

(declare-fun m!4638113 () Bool)

(assert (=> b!4041676 m!4638113))

(assert (=> b!4041676 m!4638113))

(declare-fun m!4638115 () Bool)

(assert (=> b!4041676 m!4638115))

(declare-fun m!4638117 () Bool)

(assert (=> b!4041679 m!4638117))

(assert (=> b!4041682 m!4636503))

(assert (=> b!4041682 m!4638113))

(assert (=> b!4041682 m!4638113))

(assert (=> b!4041682 m!4638115))

(assert (=> b!4041675 m!4636503))

(assert (=> b!4041675 m!4638111))

(assert (=> b!4041675 m!4638111))

(declare-fun m!4638121 () Bool)

(assert (=> b!4041675 m!4638121))

(assert (=> b!4041675 m!4636503))

(assert (=> b!4041675 m!4638113))

(assert (=> b!4041675 m!4638121))

(assert (=> b!4041675 m!4638113))

(declare-fun m!4638123 () Bool)

(assert (=> b!4041675 m!4638123))

(assert (=> d!1198910 m!4636503))

(assert (=> d!1198910 m!4638109))

(declare-fun m!4638127 () Bool)

(assert (=> d!1198910 m!4638127))

(assert (=> b!4041685 m!4636503))

(assert (=> b!4041685 m!4638111))

(assert (=> b!4040574 d!1198910))

(assert (=> b!4040574 d!1198650))

(declare-fun d!1198916 () Bool)

(assert (=> d!1198916 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))) (list!16102 (c!697932 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))))))

(declare-fun bs!590953 () Bool)

(assert (= bs!590953 d!1198916))

(declare-fun m!4638131 () Bool)

(assert (=> bs!590953 m!4638131))

(assert (=> b!4040574 d!1198916))

(declare-fun d!1198920 () Bool)

(declare-fun lt!1438373 () BalanceConc!25860)

(assert (=> d!1198920 (= (list!16100 lt!1438373) (originalCharacters!7522 (_1!24295 (get!14189 lt!1437884))))))

(assert (=> d!1198920 (= lt!1438373 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))) (value!217911 (_1!24295 (get!14189 lt!1437884)))))))

(assert (=> d!1198920 (= (charsOf!4738 (_1!24295 (get!14189 lt!1437884))) lt!1438373)))

(declare-fun b_lambda!118035 () Bool)

(assert (=> (not b_lambda!118035) (not d!1198920)))

(declare-fun t!335127 () Bool)

(declare-fun tb!242991 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335127) tb!242991))

(declare-fun b!4041691 () Bool)

(declare-fun e!2507701 () Bool)

(declare-fun tp!1226894 () Bool)

(assert (=> b!4041691 (= e!2507701 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))) (value!217911 (_1!24295 (get!14189 lt!1437884)))))) tp!1226894))))

(declare-fun result!294508 () Bool)

(assert (=> tb!242991 (= result!294508 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884))))) (value!217911 (_1!24295 (get!14189 lt!1437884))))) e!2507701))))

(assert (= tb!242991 b!4041691))

(declare-fun m!4638139 () Bool)

(assert (=> b!4041691 m!4638139))

(declare-fun m!4638141 () Bool)

(assert (=> tb!242991 m!4638141))

(assert (=> d!1198920 t!335127))

(declare-fun b_and!310725 () Bool)

(assert (= b_and!310695 (and (=> t!335127 result!294508) b_and!310725)))

(declare-fun tb!242993 () Bool)

(declare-fun t!335129 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335129) tb!242993))

(declare-fun result!294510 () Bool)

(assert (= result!294510 result!294508))

(assert (=> d!1198920 t!335129))

(declare-fun b_and!310727 () Bool)

(assert (= b_and!310697 (and (=> t!335129 result!294510) b_and!310727)))

(declare-fun tb!242995 () Bool)

(declare-fun t!335131 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335131) tb!242995))

(declare-fun result!294512 () Bool)

(assert (= result!294512 result!294508))

(assert (=> d!1198920 t!335131))

(declare-fun b_and!310729 () Bool)

(assert (= b_and!310699 (and (=> t!335131 result!294512) b_and!310729)))

(declare-fun m!4638143 () Bool)

(assert (=> d!1198920 m!4638143))

(declare-fun m!4638145 () Bool)

(assert (=> d!1198920 m!4638145))

(assert (=> b!4040574 d!1198920))

(declare-fun b!4041694 () Bool)

(declare-fun e!2507702 () Bool)

(assert (=> b!4041694 (= e!2507702 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437799)) (tail!6285 (tail!6285 lt!1437790))))))

(declare-fun b!4041695 () Bool)

(declare-fun e!2507704 () Bool)

(assert (=> b!4041695 (= e!2507704 (>= (size!32325 (tail!6285 lt!1437790)) (size!32325 (tail!6285 lt!1437799))))))

(declare-fun b!4041693 () Bool)

(declare-fun res!1646092 () Bool)

(assert (=> b!4041693 (=> (not res!1646092) (not e!2507702))))

(assert (=> b!4041693 (= res!1646092 (= (head!8553 (tail!6285 lt!1437799)) (head!8553 (tail!6285 lt!1437790))))))

(declare-fun d!1198924 () Bool)

(assert (=> d!1198924 e!2507704))

(declare-fun res!1646091 () Bool)

(assert (=> d!1198924 (=> res!1646091 e!2507704)))

(declare-fun lt!1438374 () Bool)

(assert (=> d!1198924 (= res!1646091 (not lt!1438374))))

(declare-fun e!2507703 () Bool)

(assert (=> d!1198924 (= lt!1438374 e!2507703)))

(declare-fun res!1646090 () Bool)

(assert (=> d!1198924 (=> res!1646090 e!2507703)))

(assert (=> d!1198924 (= res!1646090 ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> d!1198924 (= (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437790)) lt!1438374)))

(declare-fun b!4041692 () Bool)

(assert (=> b!4041692 (= e!2507703 e!2507702)))

(declare-fun res!1646089 () Bool)

(assert (=> b!4041692 (=> (not res!1646089) (not e!2507702))))

(assert (=> b!4041692 (= res!1646089 (not ((_ is Nil!43241) (tail!6285 lt!1437790))))))

(assert (= (and d!1198924 (not res!1646090)) b!4041692))

(assert (= (and b!4041692 res!1646089) b!4041693))

(assert (= (and b!4041693 res!1646092) b!4041694))

(assert (= (and d!1198924 (not res!1646091)) b!4041695))

(assert (=> b!4041694 m!4636373))

(assert (=> b!4041694 m!4637321))

(assert (=> b!4041694 m!4637033))

(declare-fun m!4638147 () Bool)

(assert (=> b!4041694 m!4638147))

(assert (=> b!4041694 m!4637321))

(assert (=> b!4041694 m!4638147))

(declare-fun m!4638149 () Bool)

(assert (=> b!4041694 m!4638149))

(assert (=> b!4041695 m!4637033))

(declare-fun m!4638151 () Bool)

(assert (=> b!4041695 m!4638151))

(assert (=> b!4041695 m!4636373))

(assert (=> b!4041695 m!4637335))

(assert (=> b!4041693 m!4636373))

(assert (=> b!4041693 m!4637337))

(assert (=> b!4041693 m!4637033))

(declare-fun m!4638153 () Bool)

(assert (=> b!4041693 m!4638153))

(assert (=> b!4040946 d!1198924))

(assert (=> b!4040946 d!1198552))

(declare-fun d!1198926 () Bool)

(assert (=> d!1198926 (= (tail!6285 lt!1437790) (t!334994 lt!1437790))))

(assert (=> b!4040946 d!1198926))

(declare-fun d!1198928 () Bool)

(declare-fun lt!1438375 () Bool)

(assert (=> d!1198928 (= lt!1438375 (select (content!6578 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))

(declare-fun e!2507705 () Bool)

(assert (=> d!1198928 (= lt!1438375 e!2507705)))

(declare-fun res!1646094 () Bool)

(assert (=> d!1198928 (=> (not res!1646094) (not e!2507705))))

(assert (=> d!1198928 (= res!1646094 ((_ is Cons!43243) rules!2999))))

(assert (=> d!1198928 (= (contains!8592 rules!2999 (rule!9994 (_1!24295 (get!14189 lt!1438032)))) lt!1438375)))

(declare-fun b!4041696 () Bool)

(declare-fun e!2507706 () Bool)

(assert (=> b!4041696 (= e!2507705 e!2507706)))

(declare-fun res!1646093 () Bool)

(assert (=> b!4041696 (=> res!1646093 e!2507706)))

(assert (=> b!4041696 (= res!1646093 (= (h!48663 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))

(declare-fun b!4041697 () Bool)

(assert (=> b!4041697 (= e!2507706 (contains!8592 (t!334996 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))

(assert (= (and d!1198928 res!1646094) b!4041696))

(assert (= (and b!4041696 (not res!1646093)) b!4041697))

(assert (=> d!1198928 m!4636541))

(declare-fun m!4638157 () Bool)

(assert (=> d!1198928 m!4638157))

(declare-fun m!4638159 () Bool)

(assert (=> b!4041697 m!4638159))

(assert (=> b!4040972 d!1198928))

(declare-fun d!1198932 () Bool)

(assert (=> d!1198932 (= (get!14189 lt!1438032) (v!39735 lt!1438032))))

(assert (=> b!4040972 d!1198932))

(assert (=> b!4040939 d!1198564))

(declare-fun d!1198934 () Bool)

(assert (=> d!1198934 (= (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019))))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019))))))))

(declare-fun b_lambda!118037 () Bool)

(assert (=> (not b_lambda!118037) (not d!1198934)))

(declare-fun t!335133 () Bool)

(declare-fun tb!242997 () Bool)

(assert (=> (and b!4040354 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335133) tb!242997))

(declare-fun result!294514 () Bool)

(assert (=> tb!242997 (= result!294514 (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019))))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))))))))

(declare-fun m!4638167 () Bool)

(assert (=> tb!242997 m!4638167))

(assert (=> d!1198934 t!335133))

(declare-fun b_and!310731 () Bool)

(assert (= b_and!310701 (and (=> t!335133 result!294514) b_and!310731)))

(declare-fun t!335135 () Bool)

(declare-fun tb!242999 () Bool)

(assert (=> (and b!4040350 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335135) tb!242999))

(declare-fun result!294516 () Bool)

(assert (= result!294516 result!294514))

(assert (=> d!1198934 t!335135))

(declare-fun b_and!310733 () Bool)

(assert (= b_and!310703 (and (=> t!335135 result!294516) b_and!310733)))

(declare-fun tb!243001 () Bool)

(declare-fun t!335137 () Bool)

(assert (=> (and b!4041004 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335137) tb!243001))

(declare-fun result!294518 () Bool)

(assert (= result!294518 result!294514))

(assert (=> d!1198934 t!335137))

(declare-fun b_and!310735 () Bool)

(assert (= b_and!310705 (and (=> t!335137 result!294518) b_and!310735)))

(assert (=> d!1198934 m!4637015))

(declare-fun m!4638169 () Bool)

(assert (=> d!1198934 m!4638169))

(assert (=> b!4040939 d!1198934))

(declare-fun d!1198938 () Bool)

(assert (=> d!1198938 (= (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))) (fromListB!2344 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))))))

(declare-fun bs!590955 () Bool)

(assert (= bs!590955 d!1198938))

(declare-fun m!4638171 () Bool)

(assert (=> bs!590955 m!4638171))

(assert (=> b!4040939 d!1198938))

(declare-fun d!1198940 () Bool)

(declare-fun c!698233 () Bool)

(assert (=> d!1198940 (= c!698233 ((_ is Node!13133) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))))

(declare-fun e!2507714 () Bool)

(assert (=> d!1198940 (= (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))) e!2507714)))

(declare-fun b!4041711 () Bool)

(assert (=> b!4041711 (= e!2507714 (inv!57796 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))))

(declare-fun b!4041712 () Bool)

(declare-fun e!2507715 () Bool)

(assert (=> b!4041712 (= e!2507714 e!2507715)))

(declare-fun res!1646104 () Bool)

(assert (=> b!4041712 (= res!1646104 (not ((_ is Leaf!20301) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))))))

(assert (=> b!4041712 (=> res!1646104 e!2507715)))

(declare-fun b!4041713 () Bool)

(assert (=> b!4041713 (= e!2507715 (inv!57797 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))))

(assert (= (and d!1198940 c!698233) b!4041711))

(assert (= (and d!1198940 (not c!698233)) b!4041712))

(assert (= (and b!4041712 (not res!1646104)) b!4041713))

(declare-fun m!4638173 () Bool)

(assert (=> b!4041711 m!4638173))

(declare-fun m!4638175 () Bool)

(assert (=> b!4041713 m!4638175))

(assert (=> b!4040845 d!1198940))

(declare-fun d!1198942 () Bool)

(declare-fun lt!1438382 () Bool)

(assert (=> d!1198942 (= lt!1438382 (select (content!6578 (t!334996 rules!2999)) (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(declare-fun e!2507716 () Bool)

(assert (=> d!1198942 (= lt!1438382 e!2507716)))

(declare-fun res!1646106 () Bool)

(assert (=> d!1198942 (=> (not res!1646106) (not e!2507716))))

(assert (=> d!1198942 (= res!1646106 ((_ is Cons!43243) (t!334996 rules!2999)))))

(assert (=> d!1198942 (= (contains!8592 (t!334996 rules!2999) (rule!9994 (_1!24295 (v!39735 lt!1437813)))) lt!1438382)))

(declare-fun b!4041714 () Bool)

(declare-fun e!2507717 () Bool)

(assert (=> b!4041714 (= e!2507716 e!2507717)))

(declare-fun res!1646105 () Bool)

(assert (=> b!4041714 (=> res!1646105 e!2507717)))

(assert (=> b!4041714 (= res!1646105 (= (h!48663 (t!334996 rules!2999)) (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(declare-fun b!4041715 () Bool)

(assert (=> b!4041715 (= e!2507717 (contains!8592 (t!334996 (t!334996 rules!2999)) (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(assert (= (and d!1198942 res!1646106) b!4041714))

(assert (= (and b!4041714 (not res!1646105)) b!4041715))

(declare-fun m!4638177 () Bool)

(assert (=> d!1198942 m!4638177))

(declare-fun m!4638179 () Bool)

(assert (=> d!1198942 m!4638179))

(declare-fun m!4638181 () Bool)

(assert (=> b!4041715 m!4638181))

(assert (=> b!4040592 d!1198942))

(declare-fun bs!590956 () Bool)

(declare-fun d!1198944 () Bool)

(assert (= bs!590956 (and d!1198944 d!1198848)))

(declare-fun lambda!127405 () Int)

(assert (=> bs!590956 (= (= (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (toValue!9462 (transformation!6922 (h!48663 rules!2999)))) (= lambda!127405 lambda!127404))))

(assert (=> d!1198944 true))

(assert (=> d!1198944 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (dynLambda!18363 order!22651 lambda!127405))))

(assert (=> d!1198944 (= (equivClasses!2857 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (Forall2!1090 lambda!127405))))

(declare-fun bs!590957 () Bool)

(assert (= bs!590957 d!1198944))

(declare-fun m!4638201 () Bool)

(assert (=> bs!590957 m!4638201))

(assert (=> b!4040581 d!1198944))

(declare-fun b!4041718 () Bool)

(declare-fun res!1646107 () Bool)

(declare-fun e!2507719 () Bool)

(assert (=> b!4041718 (=> (not res!1646107) (not e!2507719))))

(declare-fun lt!1438383 () List!43365)

(assert (=> b!4041718 (= res!1646107 (= (size!32325 lt!1438383) (+ (size!32325 (t!334994 lt!1437799)) (size!32325 newSuffixResult!27))))))

(declare-fun d!1198946 () Bool)

(assert (=> d!1198946 e!2507719))

(declare-fun res!1646108 () Bool)

(assert (=> d!1198946 (=> (not res!1646108) (not e!2507719))))

(assert (=> d!1198946 (= res!1646108 (= (content!6577 lt!1438383) ((_ map or) (content!6577 (t!334994 lt!1437799)) (content!6577 newSuffixResult!27))))))

(declare-fun e!2507718 () List!43365)

(assert (=> d!1198946 (= lt!1438383 e!2507718)))

(declare-fun c!698234 () Bool)

(assert (=> d!1198946 (= c!698234 ((_ is Nil!43241) (t!334994 lt!1437799)))))

(assert (=> d!1198946 (= (++!11324 (t!334994 lt!1437799) newSuffixResult!27) lt!1438383)))

(declare-fun b!4041717 () Bool)

(assert (=> b!4041717 (= e!2507718 (Cons!43241 (h!48661 (t!334994 lt!1437799)) (++!11324 (t!334994 (t!334994 lt!1437799)) newSuffixResult!27)))))

(declare-fun b!4041716 () Bool)

(assert (=> b!4041716 (= e!2507718 newSuffixResult!27)))

(declare-fun b!4041719 () Bool)

(assert (=> b!4041719 (= e!2507719 (or (not (= newSuffixResult!27 Nil!43241)) (= lt!1438383 (t!334994 lt!1437799))))))

(assert (= (and d!1198946 c!698234) b!4041716))

(assert (= (and d!1198946 (not c!698234)) b!4041717))

(assert (= (and d!1198946 res!1646108) b!4041718))

(assert (= (and b!4041718 res!1646107) b!4041719))

(declare-fun m!4638217 () Bool)

(assert (=> b!4041718 m!4638217))

(assert (=> b!4041718 m!4637047))

(assert (=> b!4041718 m!4636461))

(declare-fun m!4638221 () Bool)

(assert (=> d!1198946 m!4638221))

(assert (=> d!1198946 m!4637311))

(assert (=> d!1198946 m!4636465))

(declare-fun m!4638223 () Bool)

(assert (=> b!4041717 m!4638223))

(assert (=> b!4040526 d!1198946))

(declare-fun d!1198948 () Bool)

(declare-fun lt!1438384 () Int)

(assert (=> d!1198948 (>= lt!1438384 0)))

(declare-fun e!2507720 () Int)

(assert (=> d!1198948 (= lt!1438384 e!2507720)))

(declare-fun c!698235 () Bool)

(assert (=> d!1198948 (= c!698235 ((_ is Nil!43241) lt!1437863))))

(assert (=> d!1198948 (= (size!32325 lt!1437863) lt!1438384)))

(declare-fun b!4041720 () Bool)

(assert (=> b!4041720 (= e!2507720 0)))

(declare-fun b!4041721 () Bool)

(assert (=> b!4041721 (= e!2507720 (+ 1 (size!32325 (t!334994 lt!1437863))))))

(assert (= (and d!1198948 c!698235) b!4041720))

(assert (= (and d!1198948 (not c!698235)) b!4041721))

(declare-fun m!4638231 () Bool)

(assert (=> b!4041721 m!4638231))

(assert (=> b!4040523 d!1198948))

(assert (=> b!4040523 d!1198434))

(assert (=> b!4040523 d!1198458))

(declare-fun d!1198952 () Bool)

(declare-fun lt!1438385 () List!43365)

(assert (=> d!1198952 (= (++!11324 (t!334994 lt!1437799) lt!1438385) (tail!6285 prefix!494))))

(declare-fun e!2507721 () List!43365)

(assert (=> d!1198952 (= lt!1438385 e!2507721)))

(declare-fun c!698236 () Bool)

(assert (=> d!1198952 (= c!698236 ((_ is Cons!43241) (t!334994 lt!1437799)))))

(assert (=> d!1198952 (>= (size!32325 (tail!6285 prefix!494)) (size!32325 (t!334994 lt!1437799)))))

(assert (=> d!1198952 (= (getSuffix!2426 (tail!6285 prefix!494) (t!334994 lt!1437799)) lt!1438385)))

(declare-fun b!4041722 () Bool)

(assert (=> b!4041722 (= e!2507721 (getSuffix!2426 (tail!6285 (tail!6285 prefix!494)) (t!334994 (t!334994 lt!1437799))))))

(declare-fun b!4041723 () Bool)

(assert (=> b!4041723 (= e!2507721 (tail!6285 prefix!494))))

(assert (= (and d!1198952 c!698236) b!4041722))

(assert (= (and d!1198952 (not c!698236)) b!4041723))

(declare-fun m!4638233 () Bool)

(assert (=> d!1198952 m!4638233))

(assert (=> d!1198952 m!4636425))

(assert (=> d!1198952 m!4637331))

(assert (=> d!1198952 m!4637047))

(assert (=> b!4041722 m!4636425))

(assert (=> b!4041722 m!4637325))

(assert (=> b!4041722 m!4637325))

(declare-fun m!4638235 () Bool)

(assert (=> b!4041722 m!4638235))

(assert (=> b!4040988 d!1198952))

(assert (=> b!4040988 d!1198556))

(declare-fun d!1198954 () Bool)

(declare-fun c!698237 () Bool)

(assert (=> d!1198954 (= c!698237 ((_ is Empty!13133) (c!697932 (charsOf!4738 token!484))))))

(declare-fun e!2507722 () List!43365)

(assert (=> d!1198954 (= (list!16102 (c!697932 (charsOf!4738 token!484))) e!2507722)))

(declare-fun b!4041724 () Bool)

(assert (=> b!4041724 (= e!2507722 Nil!43241)))

(declare-fun b!4041727 () Bool)

(declare-fun e!2507723 () List!43365)

(assert (=> b!4041727 (= e!2507723 (++!11324 (list!16102 (left!32568 (c!697932 (charsOf!4738 token!484)))) (list!16102 (right!32898 (c!697932 (charsOf!4738 token!484))))))))

(declare-fun b!4041726 () Bool)

(assert (=> b!4041726 (= e!2507723 (list!16103 (xs!16439 (c!697932 (charsOf!4738 token!484)))))))

(declare-fun b!4041725 () Bool)

(assert (=> b!4041725 (= e!2507722 e!2507723)))

(declare-fun c!698238 () Bool)

(assert (=> b!4041725 (= c!698238 ((_ is Leaf!20301) (c!697932 (charsOf!4738 token!484))))))

(assert (= (and d!1198954 c!698237) b!4041724))

(assert (= (and d!1198954 (not c!698237)) b!4041725))

(assert (= (and b!4041725 c!698238) b!4041726))

(assert (= (and b!4041725 (not c!698238)) b!4041727))

(declare-fun m!4638237 () Bool)

(assert (=> b!4041727 m!4638237))

(declare-fun m!4638239 () Bool)

(assert (=> b!4041727 m!4638239))

(assert (=> b!4041727 m!4638237))

(assert (=> b!4041727 m!4638239))

(declare-fun m!4638241 () Bool)

(assert (=> b!4041727 m!4638241))

(declare-fun m!4638243 () Bool)

(assert (=> b!4041726 m!4638243))

(assert (=> d!1198436 d!1198954))

(assert (=> b!4040465 d!1198610))

(assert (=> b!4040520 d!1198568))

(assert (=> b!4040520 d!1198432))

(declare-fun b!4041730 () Bool)

(declare-fun res!1646109 () Bool)

(declare-fun e!2507725 () Bool)

(assert (=> b!4041730 (=> (not res!1646109) (not e!2507725))))

(declare-fun lt!1438386 () List!43365)

(assert (=> b!4041730 (= res!1646109 (= (size!32325 lt!1438386) (+ (size!32325 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) (size!32325 (_2!24295 (get!14189 lt!1437884))))))))

(declare-fun d!1198956 () Bool)

(assert (=> d!1198956 e!2507725))

(declare-fun res!1646110 () Bool)

(assert (=> d!1198956 (=> (not res!1646110) (not e!2507725))))

(assert (=> d!1198956 (= res!1646110 (= (content!6577 lt!1438386) ((_ map or) (content!6577 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) (content!6577 (_2!24295 (get!14189 lt!1437884))))))))

(declare-fun e!2507724 () List!43365)

(assert (=> d!1198956 (= lt!1438386 e!2507724)))

(declare-fun c!698239 () Bool)

(assert (=> d!1198956 (= c!698239 ((_ is Nil!43241) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))))))

(assert (=> d!1198956 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))) (_2!24295 (get!14189 lt!1437884))) lt!1438386)))

(declare-fun b!4041729 () Bool)

(assert (=> b!4041729 (= e!2507724 (Cons!43241 (h!48661 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) (++!11324 (t!334994 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884))))) (_2!24295 (get!14189 lt!1437884)))))))

(declare-fun b!4041728 () Bool)

(assert (=> b!4041728 (= e!2507724 (_2!24295 (get!14189 lt!1437884)))))

(declare-fun b!4041731 () Bool)

(assert (=> b!4041731 (= e!2507725 (or (not (= (_2!24295 (get!14189 lt!1437884)) Nil!43241)) (= lt!1438386 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1437884)))))))))

(assert (= (and d!1198956 c!698239) b!4041728))

(assert (= (and d!1198956 (not c!698239)) b!4041729))

(assert (= (and d!1198956 res!1646110) b!4041730))

(assert (= (and b!4041730 res!1646109) b!4041731))

(declare-fun m!4638245 () Bool)

(assert (=> b!4041730 m!4638245))

(assert (=> b!4041730 m!4636503))

(declare-fun m!4638247 () Bool)

(assert (=> b!4041730 m!4638247))

(assert (=> b!4041730 m!4636513))

(declare-fun m!4638249 () Bool)

(assert (=> d!1198956 m!4638249))

(assert (=> d!1198956 m!4636503))

(declare-fun m!4638251 () Bool)

(assert (=> d!1198956 m!4638251))

(declare-fun m!4638253 () Bool)

(assert (=> d!1198956 m!4638253))

(declare-fun m!4638255 () Bool)

(assert (=> b!4041729 m!4638255))

(assert (=> b!4040570 d!1198956))

(assert (=> b!4040570 d!1198916))

(assert (=> b!4040570 d!1198920))

(assert (=> b!4040570 d!1198650))

(declare-fun d!1198958 () Bool)

(declare-fun c!698244 () Bool)

(assert (=> d!1198958 (= c!698244 ((_ is Nil!43241) lt!1437846))))

(declare-fun e!2507730 () (InoxSet C!23840))

(assert (=> d!1198958 (= (content!6577 lt!1437846) e!2507730)))

(declare-fun b!4041740 () Bool)

(assert (=> b!4041740 (= e!2507730 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041741 () Bool)

(assert (=> b!4041741 (= e!2507730 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437846) true) (content!6577 (t!334994 lt!1437846))))))

(assert (= (and d!1198958 c!698244) b!4041740))

(assert (= (and d!1198958 (not c!698244)) b!4041741))

(declare-fun m!4638257 () Bool)

(assert (=> b!4041741 m!4638257))

(declare-fun m!4638259 () Bool)

(assert (=> b!4041741 m!4638259))

(assert (=> d!1198218 d!1198958))

(declare-fun d!1198960 () Bool)

(declare-fun c!698245 () Bool)

(assert (=> d!1198960 (= c!698245 ((_ is Nil!43241) lt!1437800))))

(declare-fun e!2507731 () (InoxSet C!23840))

(assert (=> d!1198960 (= (content!6577 lt!1437800) e!2507731)))

(declare-fun b!4041742 () Bool)

(assert (=> b!4041742 (= e!2507731 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041743 () Bool)

(assert (=> b!4041743 (= e!2507731 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437800) true) (content!6577 (t!334994 lt!1437800))))))

(assert (= (and d!1198960 c!698245) b!4041742))

(assert (= (and d!1198960 (not c!698245)) b!4041743))

(declare-fun m!4638261 () Bool)

(assert (=> b!4041743 m!4638261))

(declare-fun m!4638263 () Bool)

(assert (=> b!4041743 m!4638263))

(assert (=> d!1198218 d!1198960))

(declare-fun d!1198962 () Bool)

(declare-fun c!698246 () Bool)

(assert (=> d!1198962 (= c!698246 ((_ is Nil!43241) (_2!24295 (v!39735 lt!1437813))))))

(declare-fun e!2507732 () (InoxSet C!23840))

(assert (=> d!1198962 (= (content!6577 (_2!24295 (v!39735 lt!1437813))) e!2507732)))

(declare-fun b!4041744 () Bool)

(assert (=> b!4041744 (= e!2507732 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041745 () Bool)

(assert (=> b!4041745 (= e!2507732 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 (_2!24295 (v!39735 lt!1437813))) true) (content!6577 (t!334994 (_2!24295 (v!39735 lt!1437813))))))))

(assert (= (and d!1198962 c!698246) b!4041744))

(assert (= (and d!1198962 (not c!698246)) b!4041745))

(declare-fun m!4638265 () Bool)

(assert (=> b!4041745 m!4638265))

(declare-fun m!4638267 () Bool)

(assert (=> b!4041745 m!4638267))

(assert (=> d!1198218 d!1198962))

(declare-fun bs!590958 () Bool)

(declare-fun d!1198964 () Bool)

(assert (= bs!590958 (and d!1198964 d!1198284)))

(declare-fun lambda!127406 () Int)

(assert (=> bs!590958 (= (and (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (= lambda!127406 lambda!127385))))

(declare-fun bs!590959 () Bool)

(assert (= bs!590959 (and d!1198964 d!1198772)))

(assert (=> bs!590959 (= (and (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (= lambda!127406 lambda!127399))))

(declare-fun bs!590960 () Bool)

(assert (= bs!590960 (and d!1198964 d!1198796)))

(assert (=> bs!590960 (= lambda!127406 lambda!127400)))

(assert (=> d!1198964 true))

(assert (=> d!1198964 (< (dynLambda!18362 order!22649 (toChars!9321 (transformation!6922 (rule!9994 token!484)))) (dynLambda!18361 order!22647 lambda!127406))))

(assert (=> d!1198964 true))

(assert (=> d!1198964 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (rule!9994 token!484)))) (dynLambda!18361 order!22647 lambda!127406))))

(assert (=> d!1198964 (= (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) (Forall!1490 lambda!127406))))

(declare-fun bs!590961 () Bool)

(assert (= bs!590961 d!1198964))

(declare-fun m!4638277 () Bool)

(assert (=> bs!590961 m!4638277))

(assert (=> d!1198444 d!1198964))

(declare-fun d!1198968 () Bool)

(declare-fun lt!1438387 () List!43365)

(assert (=> d!1198968 (= (++!11324 (t!334994 lt!1437799) lt!1438387) (tail!6285 lt!1437817))))

(declare-fun e!2507735 () List!43365)

(assert (=> d!1198968 (= lt!1438387 e!2507735)))

(declare-fun c!698249 () Bool)

(assert (=> d!1198968 (= c!698249 ((_ is Cons!43241) (t!334994 lt!1437799)))))

(assert (=> d!1198968 (>= (size!32325 (tail!6285 lt!1437817)) (size!32325 (t!334994 lt!1437799)))))

(assert (=> d!1198968 (= (getSuffix!2426 (tail!6285 lt!1437817) (t!334994 lt!1437799)) lt!1438387)))

(declare-fun b!4041750 () Bool)

(assert (=> b!4041750 (= e!2507735 (getSuffix!2426 (tail!6285 (tail!6285 lt!1437817)) (t!334994 (t!334994 lt!1437799))))))

(declare-fun b!4041751 () Bool)

(assert (=> b!4041751 (= e!2507735 (tail!6285 lt!1437817))))

(assert (= (and d!1198968 c!698249) b!4041750))

(assert (= (and d!1198968 (not c!698249)) b!4041751))

(declare-fun m!4638279 () Bool)

(assert (=> d!1198968 m!4638279))

(assert (=> d!1198968 m!4636327))

(declare-fun m!4638281 () Bool)

(assert (=> d!1198968 m!4638281))

(assert (=> d!1198968 m!4637047))

(assert (=> b!4041750 m!4636327))

(declare-fun m!4638283 () Bool)

(assert (=> b!4041750 m!4638283))

(assert (=> b!4041750 m!4638283))

(declare-fun m!4638285 () Bool)

(assert (=> b!4041750 m!4638285))

(assert (=> b!4040399 d!1198968))

(declare-fun d!1198970 () Bool)

(assert (=> d!1198970 (= (tail!6285 lt!1437817) (t!334994 lt!1437817))))

(assert (=> b!4040399 d!1198970))

(declare-fun b!4041756 () Bool)

(declare-fun e!2507739 () Option!9336)

(assert (=> b!4041756 (= e!2507739 None!9335)))

(declare-fun b!4041757 () Bool)

(declare-fun res!1646117 () Bool)

(declare-fun e!2507740 () Bool)

(assert (=> b!4041757 (=> (not res!1646117) (not e!2507740))))

(declare-fun lt!1438392 () Option!9336)

(assert (=> b!4041757 (= res!1646117 (< (size!32325 (_2!24295 (get!14189 lt!1438392))) (size!32325 lt!1437793)))))

(declare-fun b!4041758 () Bool)

(declare-fun res!1646115 () Bool)

(assert (=> b!4041758 (=> (not res!1646115) (not e!2507740))))

(assert (=> b!4041758 (= res!1646115 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438392)))) (_2!24295 (get!14189 lt!1438392))) lt!1437793))))

(declare-fun b!4041759 () Bool)

(declare-fun res!1646114 () Bool)

(assert (=> b!4041759 (=> (not res!1646114) (not e!2507740))))

(assert (=> b!4041759 (= res!1646114 (= (rule!9994 (_1!24295 (get!14189 lt!1438392))) (h!48663 rules!2999)))))

(declare-fun b!4041760 () Bool)

(declare-fun res!1646119 () Bool)

(assert (=> b!4041760 (=> (not res!1646119) (not e!2507740))))

(assert (=> b!4041760 (= res!1646119 (= (value!217911 (_1!24295 (get!14189 lt!1438392))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438392)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438392)))))))))

(declare-fun b!4041761 () Bool)

(declare-fun e!2507738 () Bool)

(assert (=> b!4041761 (= e!2507738 (matchR!5780 (regex!6922 (h!48663 rules!2999)) (_1!24297 (findLongestMatchInner!1387 (regex!6922 (h!48663 rules!2999)) Nil!43241 (size!32325 Nil!43241) lt!1437793 lt!1437793 (size!32325 lt!1437793)))))))

(declare-fun d!1198972 () Bool)

(declare-fun e!2507741 () Bool)

(assert (=> d!1198972 e!2507741))

(declare-fun res!1646113 () Bool)

(assert (=> d!1198972 (=> res!1646113 e!2507741)))

(assert (=> d!1198972 (= res!1646113 (isEmpty!25811 lt!1438392))))

(assert (=> d!1198972 (= lt!1438392 e!2507739)))

(declare-fun c!698251 () Bool)

(declare-fun lt!1438391 () tuple2!42326)

(assert (=> d!1198972 (= c!698251 (isEmpty!25808 (_1!24297 lt!1438391)))))

(assert (=> d!1198972 (= lt!1438391 (findLongestMatch!1300 (regex!6922 (h!48663 rules!2999)) lt!1437793))))

(assert (=> d!1198972 (ruleValid!2852 thiss!21717 (h!48663 rules!2999))))

(assert (=> d!1198972 (= (maxPrefixOneRule!2821 thiss!21717 (h!48663 rules!2999) lt!1437793) lt!1438392)))

(declare-fun b!4041762 () Bool)

(assert (=> b!4041762 (= e!2507739 (Some!9335 (tuple2!42323 (Token!12983 (apply!10111 (transformation!6922 (h!48663 rules!2999)) (seqFromList!5139 (_1!24297 lt!1438391))) (h!48663 rules!2999) (size!32328 (seqFromList!5139 (_1!24297 lt!1438391))) (_1!24297 lt!1438391)) (_2!24297 lt!1438391))))))

(declare-fun lt!1438390 () Unit!62457)

(assert (=> b!4041762 (= lt!1438390 (longestMatchIsAcceptedByMatchOrIsEmpty!1360 (regex!6922 (h!48663 rules!2999)) lt!1437793))))

(declare-fun res!1646118 () Bool)

(assert (=> b!4041762 (= res!1646118 (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (h!48663 rules!2999)) Nil!43241 (size!32325 Nil!43241) lt!1437793 lt!1437793 (size!32325 lt!1437793)))))))

(assert (=> b!4041762 (=> res!1646118 e!2507738)))

(assert (=> b!4041762 e!2507738))

(declare-fun lt!1438389 () Unit!62457)

(assert (=> b!4041762 (= lt!1438389 lt!1438390)))

(declare-fun lt!1438393 () Unit!62457)

(assert (=> b!4041762 (= lt!1438393 (lemmaSemiInverse!1907 (transformation!6922 (h!48663 rules!2999)) (seqFromList!5139 (_1!24297 lt!1438391))))))

(declare-fun b!4041763 () Bool)

(assert (=> b!4041763 (= e!2507741 e!2507740)))

(declare-fun res!1646116 () Bool)

(assert (=> b!4041763 (=> (not res!1646116) (not e!2507740))))

(assert (=> b!4041763 (= res!1646116 (matchR!5780 (regex!6922 (h!48663 rules!2999)) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438392))))))))

(declare-fun b!4041764 () Bool)

(assert (=> b!4041764 (= e!2507740 (= (size!32326 (_1!24295 (get!14189 lt!1438392))) (size!32325 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438392))))))))

(assert (= (and d!1198972 c!698251) b!4041756))

(assert (= (and d!1198972 (not c!698251)) b!4041762))

(assert (= (and b!4041762 (not res!1646118)) b!4041761))

(assert (= (and d!1198972 (not res!1646113)) b!4041763))

(assert (= (and b!4041763 res!1646116) b!4041758))

(assert (= (and b!4041758 res!1646115) b!4041757))

(assert (= (and b!4041757 res!1646117) b!4041759))

(assert (= (and b!4041759 res!1646114) b!4041760))

(assert (= (and b!4041760 res!1646119) b!4041764))

(assert (=> b!4041762 m!4636985))

(assert (=> b!4041762 m!4636389))

(declare-fun m!4638301 () Bool)

(assert (=> b!4041762 m!4638301))

(declare-fun m!4638303 () Bool)

(assert (=> b!4041762 m!4638303))

(declare-fun m!4638305 () Bool)

(assert (=> b!4041762 m!4638305))

(assert (=> b!4041762 m!4636389))

(assert (=> b!4041762 m!4638303))

(declare-fun m!4638307 () Bool)

(assert (=> b!4041762 m!4638307))

(declare-fun m!4638309 () Bool)

(assert (=> b!4041762 m!4638309))

(assert (=> b!4041762 m!4638303))

(assert (=> b!4041762 m!4638303))

(declare-fun m!4638311 () Bool)

(assert (=> b!4041762 m!4638311))

(declare-fun m!4638313 () Bool)

(assert (=> b!4041762 m!4638313))

(assert (=> b!4041762 m!4636985))

(declare-fun m!4638315 () Bool)

(assert (=> b!4041764 m!4638315))

(declare-fun m!4638317 () Bool)

(assert (=> b!4041764 m!4638317))

(assert (=> b!4041761 m!4636985))

(assert (=> b!4041761 m!4636389))

(assert (=> b!4041761 m!4636985))

(assert (=> b!4041761 m!4636389))

(assert (=> b!4041761 m!4638301))

(declare-fun m!4638319 () Bool)

(assert (=> b!4041761 m!4638319))

(assert (=> b!4041759 m!4638315))

(assert (=> b!4041758 m!4638315))

(declare-fun m!4638321 () Bool)

(assert (=> b!4041758 m!4638321))

(assert (=> b!4041758 m!4638321))

(declare-fun m!4638323 () Bool)

(assert (=> b!4041758 m!4638323))

(assert (=> b!4041758 m!4638323))

(declare-fun m!4638325 () Bool)

(assert (=> b!4041758 m!4638325))

(assert (=> b!4041763 m!4638315))

(assert (=> b!4041763 m!4638321))

(assert (=> b!4041763 m!4638321))

(assert (=> b!4041763 m!4638323))

(assert (=> b!4041763 m!4638323))

(declare-fun m!4638327 () Bool)

(assert (=> b!4041763 m!4638327))

(assert (=> b!4041760 m!4638315))

(declare-fun m!4638329 () Bool)

(assert (=> b!4041760 m!4638329))

(assert (=> b!4041760 m!4638329))

(declare-fun m!4638331 () Bool)

(assert (=> b!4041760 m!4638331))

(assert (=> b!4041757 m!4638315))

(declare-fun m!4638333 () Bool)

(assert (=> b!4041757 m!4638333))

(assert (=> b!4041757 m!4636389))

(declare-fun m!4638335 () Bool)

(assert (=> d!1198972 m!4638335))

(declare-fun m!4638337 () Bool)

(assert (=> d!1198972 m!4638337))

(declare-fun m!4638339 () Bool)

(assert (=> d!1198972 m!4638339))

(assert (=> d!1198972 m!4637471))

(assert (=> bm!287389 d!1198972))

(declare-fun d!1198980 () Bool)

(declare-fun lt!1438395 () Int)

(assert (=> d!1198980 (>= lt!1438395 0)))

(declare-fun e!2507747 () Int)

(assert (=> d!1198980 (= lt!1438395 e!2507747)))

(declare-fun c!698252 () Bool)

(assert (=> d!1198980 (= c!698252 ((_ is Nil!43241) lt!1437804))))

(assert (=> d!1198980 (= (size!32325 lt!1437804) lt!1438395)))

(declare-fun b!4041771 () Bool)

(assert (=> b!4041771 (= e!2507747 0)))

(declare-fun b!4041772 () Bool)

(assert (=> b!4041772 (= e!2507747 (+ 1 (size!32325 (t!334994 lt!1437804))))))

(assert (= (and d!1198980 c!698252) b!4041771))

(assert (= (and d!1198980 (not c!698252)) b!4041772))

(declare-fun m!4638341 () Bool)

(assert (=> b!4041772 m!4638341))

(assert (=> b!4040979 d!1198980))

(assert (=> b!4040979 d!1198432))

(assert (=> b!4040499 d!1198666))

(declare-fun d!1198982 () Bool)

(declare-fun c!698255 () Bool)

(assert (=> d!1198982 (= c!698255 ((_ is Nil!43243) rules!2999))))

(declare-fun e!2507750 () (InoxSet Rule!13644))

(assert (=> d!1198982 (= (content!6578 rules!2999) e!2507750)))

(declare-fun b!4041779 () Bool)

(assert (=> b!4041779 (= e!2507750 ((as const (Array Rule!13644 Bool)) false))))

(declare-fun b!4041780 () Bool)

(assert (=> b!4041780 (= e!2507750 ((_ map or) (store ((as const (Array Rule!13644 Bool)) false) (h!48663 rules!2999) true) (content!6578 (t!334996 rules!2999))))))

(assert (= (and d!1198982 c!698255) b!4041779))

(assert (= (and d!1198982 (not c!698255)) b!4041780))

(declare-fun m!4638345 () Bool)

(assert (=> b!4041780 m!4638345))

(assert (=> b!4041780 m!4638177))

(assert (=> d!1198278 d!1198982))

(declare-fun d!1198990 () Bool)

(assert (=> d!1198990 true))

(declare-fun lt!1438400 () Bool)

(assert (=> d!1198990 (= lt!1438400 (rulesValidInductive!2525 thiss!21717 rules!2999))))

(declare-fun lambda!127412 () Int)

(declare-fun forall!8374 (List!43367 Int) Bool)

(assert (=> d!1198990 (= lt!1438400 (forall!8374 rules!2999 lambda!127412))))

(assert (=> d!1198990 (= (rulesValid!2692 thiss!21717 rules!2999) lt!1438400)))

(declare-fun bs!590963 () Bool)

(assert (= bs!590963 d!1198990))

(assert (=> bs!590963 m!4636509))

(declare-fun m!4638355 () Bool)

(assert (=> bs!590963 m!4638355))

(assert (=> d!1198430 d!1198990))

(declare-fun d!1198994 () Bool)

(assert (=> d!1198994 (= (list!16100 lt!1438028) (list!16102 (c!697932 lt!1438028)))))

(declare-fun bs!590964 () Bool)

(assert (= bs!590964 d!1198994))

(declare-fun m!4638357 () Bool)

(assert (=> bs!590964 m!4638357))

(assert (=> d!1198438 d!1198994))

(assert (=> d!1198272 d!1198264))

(declare-fun d!1198996 () Bool)

(assert (=> d!1198996 (ruleValid!2852 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))

(assert (=> d!1198996 true))

(declare-fun _$65!1507 () Unit!62457)

(assert (=> d!1198996 (= (choose!24489 thiss!21717 (rule!9994 (_1!24295 (v!39735 lt!1437813))) rules!2999) _$65!1507)))

(declare-fun bs!590965 () Bool)

(assert (= bs!590965 d!1198996))

(assert (=> bs!590965 m!4636249))

(assert (=> d!1198272 d!1198996))

(assert (=> d!1198272 d!1198278))

(declare-fun d!1199004 () Bool)

(assert (=> d!1199004 (= (head!8553 newSuffix!27) (h!48661 newSuffix!27))))

(assert (=> b!4040957 d!1199004))

(declare-fun d!1199006 () Bool)

(assert (=> d!1199006 (= (head!8553 suffix!1299) (h!48661 suffix!1299))))

(assert (=> b!4040957 d!1199006))

(declare-fun d!1199008 () Bool)

(assert (=> d!1199008 (= (isEmpty!25808 (originalCharacters!7522 token!484)) ((_ is Nil!43241) (originalCharacters!7522 token!484)))))

(assert (=> d!1198446 d!1199008))

(declare-fun d!1199010 () Bool)

(declare-fun c!698264 () Bool)

(assert (=> d!1199010 (= c!698264 ((_ is Nil!43241) lt!1437820))))

(declare-fun e!2507765 () (InoxSet C!23840))

(assert (=> d!1199010 (= (content!6577 lt!1437820) e!2507765)))

(declare-fun b!4041808 () Bool)

(assert (=> b!4041808 (= e!2507765 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041809 () Bool)

(assert (=> b!4041809 (= e!2507765 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437820) true) (content!6577 (t!334994 lt!1437820))))))

(assert (= (and d!1199010 c!698264) b!4041808))

(assert (= (and d!1199010 (not c!698264)) b!4041809))

(declare-fun m!4638371 () Bool)

(assert (=> b!4041809 m!4638371))

(declare-fun m!4638373 () Bool)

(assert (=> b!4041809 m!4638373))

(assert (=> d!1198184 d!1199010))

(assert (=> d!1198184 d!1198544))

(declare-fun d!1199012 () Bool)

(declare-fun c!698265 () Bool)

(assert (=> d!1199012 (= c!698265 ((_ is Nil!43241) lt!1437808))))

(declare-fun e!2507766 () (InoxSet C!23840))

(assert (=> d!1199012 (= (content!6577 lt!1437808) e!2507766)))

(declare-fun b!4041810 () Bool)

(assert (=> b!4041810 (= e!2507766 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041811 () Bool)

(assert (=> b!4041811 (= e!2507766 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437808) true) (content!6577 (t!334994 lt!1437808))))))

(assert (= (and d!1199012 c!698265) b!4041810))

(assert (= (and d!1199012 (not c!698265)) b!4041811))

(declare-fun m!4638375 () Bool)

(assert (=> b!4041811 m!4638375))

(declare-fun m!4638377 () Bool)

(assert (=> b!4041811 m!4638377))

(assert (=> d!1198184 d!1199012))

(declare-fun d!1199014 () Bool)

(assert (=> d!1199014 (= (isEmpty!25808 (tail!6285 lt!1437799)) ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> b!4040462 d!1199014))

(assert (=> b!4040462 d!1198552))

(assert (=> b!4040566 d!1198916))

(assert (=> b!4040566 d!1198920))

(assert (=> b!4040566 d!1198650))

(declare-fun b!4041812 () Bool)

(declare-fun e!2507770 () Bool)

(declare-fun lt!1438403 () Bool)

(declare-fun call!287485 () Bool)

(assert (=> b!4041812 (= e!2507770 (= lt!1438403 call!287485))))

(declare-fun d!1199016 () Bool)

(assert (=> d!1199016 e!2507770))

(declare-fun c!698268 () Bool)

(assert (=> d!1199016 (= c!698268 ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun e!2507773 () Bool)

(assert (=> d!1199016 (= lt!1438403 e!2507773)))

(declare-fun c!698267 () Bool)

(assert (=> d!1199016 (= c!698267 (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(assert (=> d!1199016 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1199016 (= (matchR!5780 (regex!6922 (rule!9994 token!484)) (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))) lt!1438403)))

(declare-fun b!4041813 () Bool)

(declare-fun e!2507767 () Bool)

(declare-fun e!2507769 () Bool)

(assert (=> b!4041813 (= e!2507767 e!2507769)))

(declare-fun res!1646143 () Bool)

(assert (=> b!4041813 (=> (not res!1646143) (not e!2507769))))

(assert (=> b!4041813 (= res!1646143 (not lt!1438403))))

(declare-fun b!4041814 () Bool)

(assert (=> b!4041814 (= e!2507773 (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817))))) (tail!6285 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817))))))))

(declare-fun b!4041815 () Bool)

(declare-fun res!1646138 () Bool)

(declare-fun e!2507768 () Bool)

(assert (=> b!4041815 (=> (not res!1646138) (not e!2507768))))

(assert (=> b!4041815 (= res!1646138 (isEmpty!25808 (tail!6285 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817))))))))

(declare-fun b!4041816 () Bool)

(declare-fun res!1646144 () Bool)

(assert (=> b!4041816 (=> res!1646144 e!2507767)))

(assert (=> b!4041816 (= res!1646144 e!2507768)))

(declare-fun res!1646139 () Bool)

(assert (=> b!4041816 (=> (not res!1646139) (not e!2507768))))

(assert (=> b!4041816 (= res!1646139 lt!1438403)))

(declare-fun b!4041817 () Bool)

(declare-fun e!2507772 () Bool)

(assert (=> b!4041817 (= e!2507770 e!2507772)))

(declare-fun c!698266 () Bool)

(assert (=> b!4041817 (= c!698266 ((_ is EmptyLang!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun bm!287480 () Bool)

(assert (=> bm!287480 (= call!287485 (isEmpty!25808 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))

(declare-fun b!4041818 () Bool)

(assert (=> b!4041818 (= e!2507773 (nullable!4150 (regex!6922 (rule!9994 token!484))))))

(declare-fun b!4041819 () Bool)

(assert (=> b!4041819 (= e!2507768 (= (head!8553 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))) (c!697933 (regex!6922 (rule!9994 token!484)))))))

(declare-fun b!4041820 () Bool)

(assert (=> b!4041820 (= e!2507772 (not lt!1438403))))

(declare-fun b!4041821 () Bool)

(declare-fun res!1646141 () Bool)

(declare-fun e!2507771 () Bool)

(assert (=> b!4041821 (=> res!1646141 e!2507771)))

(assert (=> b!4041821 (= res!1646141 (not (isEmpty!25808 (tail!6285 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))))))))

(declare-fun b!4041822 () Bool)

(declare-fun res!1646142 () Bool)

(assert (=> b!4041822 (=> res!1646142 e!2507767)))

(assert (=> b!4041822 (= res!1646142 (not ((_ is ElementMatch!11827) (regex!6922 (rule!9994 token!484)))))))

(assert (=> b!4041822 (= e!2507772 e!2507767)))

(declare-fun b!4041823 () Bool)

(declare-fun res!1646140 () Bool)

(assert (=> b!4041823 (=> (not res!1646140) (not e!2507768))))

(assert (=> b!4041823 (= res!1646140 (not call!287485))))

(declare-fun b!4041824 () Bool)

(assert (=> b!4041824 (= e!2507771 (not (= (head!8553 (_1!24297 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 (size!32325 Nil!43241) lt!1437817 lt!1437817 (size!32325 lt!1437817)))) (c!697933 (regex!6922 (rule!9994 token!484))))))))

(declare-fun b!4041825 () Bool)

(assert (=> b!4041825 (= e!2507769 e!2507771)))

(declare-fun res!1646137 () Bool)

(assert (=> b!4041825 (=> res!1646137 e!2507771)))

(assert (=> b!4041825 (= res!1646137 call!287485)))

(assert (= (and d!1199016 c!698267) b!4041818))

(assert (= (and d!1199016 (not c!698267)) b!4041814))

(assert (= (and d!1199016 c!698268) b!4041812))

(assert (= (and d!1199016 (not c!698268)) b!4041817))

(assert (= (and b!4041817 c!698266) b!4041820))

(assert (= (and b!4041817 (not c!698266)) b!4041822))

(assert (= (and b!4041822 (not res!1646142)) b!4041816))

(assert (= (and b!4041816 res!1646139) b!4041823))

(assert (= (and b!4041823 res!1646140) b!4041815))

(assert (= (and b!4041815 res!1646138) b!4041819))

(assert (= (and b!4041816 (not res!1646144)) b!4041813))

(assert (= (and b!4041813 res!1646143) b!4041825))

(assert (= (and b!4041825 (not res!1646137)) b!4041821))

(assert (= (and b!4041821 (not res!1646141)) b!4041824))

(assert (= (or b!4041812 b!4041823 b!4041825) bm!287480))

(assert (=> bm!287480 m!4636995))

(declare-fun m!4638395 () Bool)

(assert (=> b!4041819 m!4638395))

(declare-fun m!4638397 () Bool)

(assert (=> b!4041815 m!4638397))

(assert (=> b!4041815 m!4638397))

(declare-fun m!4638399 () Bool)

(assert (=> b!4041815 m!4638399))

(assert (=> b!4041818 m!4636377))

(assert (=> b!4041821 m!4638397))

(assert (=> b!4041821 m!4638397))

(assert (=> b!4041821 m!4638399))

(assert (=> b!4041814 m!4638395))

(assert (=> b!4041814 m!4638395))

(declare-fun m!4638401 () Bool)

(assert (=> b!4041814 m!4638401))

(assert (=> b!4041814 m!4638397))

(assert (=> b!4041814 m!4638401))

(assert (=> b!4041814 m!4638397))

(declare-fun m!4638403 () Bool)

(assert (=> b!4041814 m!4638403))

(assert (=> d!1199016 m!4636995))

(assert (=> d!1199016 m!4636383))

(assert (=> b!4041824 m!4638395))

(assert (=> b!4040940 d!1199016))

(assert (=> b!4040940 d!1198788))

(assert (=> b!4040940 d!1198786))

(assert (=> b!4040940 d!1198568))

(assert (=> b!4040968 d!1198932))

(declare-fun d!1199024 () Bool)

(assert (=> d!1199024 (= (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun b_lambda!118039 () Bool)

(assert (=> (not b_lambda!118039) (not d!1199024)))

(declare-fun tb!243003 () Bool)

(declare-fun t!335140 () Bool)

(assert (=> (and b!4040354 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335140) tb!243003))

(declare-fun result!294520 () Bool)

(assert (=> tb!243003 (= result!294520 (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032)))))))))

(declare-fun m!4638409 () Bool)

(assert (=> tb!243003 m!4638409))

(assert (=> d!1199024 t!335140))

(declare-fun b_and!310737 () Bool)

(assert (= b_and!310731 (and (=> t!335140 result!294520) b_and!310737)))

(declare-fun tb!243005 () Bool)

(declare-fun t!335142 () Bool)

(assert (=> (and b!4040350 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335142) tb!243005))

(declare-fun result!294522 () Bool)

(assert (= result!294522 result!294520))

(assert (=> d!1199024 t!335142))

(declare-fun b_and!310739 () Bool)

(assert (= b_and!310733 (and (=> t!335142 result!294522) b_and!310739)))

(declare-fun t!335144 () Bool)

(declare-fun tb!243007 () Bool)

(assert (=> (and b!4041004 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335144) tb!243007))

(declare-fun result!294524 () Bool)

(assert (= result!294524 result!294520))

(assert (=> d!1199024 t!335144))

(declare-fun b_and!310741 () Bool)

(assert (= b_and!310735 (and (=> t!335144 result!294524) b_and!310741)))

(assert (=> d!1199024 m!4637083))

(declare-fun m!4638417 () Bool)

(assert (=> d!1199024 m!4638417))

(assert (=> b!4040968 d!1199024))

(declare-fun d!1199032 () Bool)

(assert (=> d!1199032 (= (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032)))) (fromListB!2344 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032)))))))

(declare-fun bs!590967 () Bool)

(assert (= bs!590967 d!1199032))

(declare-fun m!4638421 () Bool)

(assert (=> bs!590967 m!4638421))

(assert (=> b!4040968 d!1199032))

(declare-fun b!4041840 () Bool)

(declare-fun res!1646149 () Bool)

(declare-fun e!2507783 () Bool)

(assert (=> b!4041840 (=> (not res!1646149) (not e!2507783))))

(declare-fun lt!1438407 () List!43365)

(assert (=> b!4041840 (= res!1646149 (= (size!32325 lt!1438407) (+ (size!32325 (t!334994 lt!1437799)) (size!32325 lt!1437805))))))

(declare-fun d!1199036 () Bool)

(assert (=> d!1199036 e!2507783))

(declare-fun res!1646150 () Bool)

(assert (=> d!1199036 (=> (not res!1646150) (not e!2507783))))

(assert (=> d!1199036 (= res!1646150 (= (content!6577 lt!1438407) ((_ map or) (content!6577 (t!334994 lt!1437799)) (content!6577 lt!1437805))))))

(declare-fun e!2507782 () List!43365)

(assert (=> d!1199036 (= lt!1438407 e!2507782)))

(declare-fun c!698273 () Bool)

(assert (=> d!1199036 (= c!698273 ((_ is Nil!43241) (t!334994 lt!1437799)))))

(assert (=> d!1199036 (= (++!11324 (t!334994 lt!1437799) lt!1437805) lt!1438407)))

(declare-fun b!4041839 () Bool)

(assert (=> b!4041839 (= e!2507782 (Cons!43241 (h!48661 (t!334994 lt!1437799)) (++!11324 (t!334994 (t!334994 lt!1437799)) lt!1437805)))))

(declare-fun b!4041838 () Bool)

(assert (=> b!4041838 (= e!2507782 lt!1437805)))

(declare-fun b!4041841 () Bool)

(assert (=> b!4041841 (= e!2507783 (or (not (= lt!1437805 Nil!43241)) (= lt!1438407 (t!334994 lt!1437799))))))

(assert (= (and d!1199036 c!698273) b!4041838))

(assert (= (and d!1199036 (not c!698273)) b!4041839))

(assert (= (and d!1199036 res!1646150) b!4041840))

(assert (= (and b!4041840 res!1646149) b!4041841))

(declare-fun m!4638425 () Bool)

(assert (=> b!4041840 m!4638425))

(assert (=> b!4041840 m!4637047))

(assert (=> b!4041840 m!4636311))

(declare-fun m!4638427 () Bool)

(assert (=> d!1199036 m!4638427))

(assert (=> d!1199036 m!4637311))

(assert (=> d!1199036 m!4636315))

(declare-fun m!4638429 () Bool)

(assert (=> b!4041839 m!4638429))

(assert (=> b!4040386 d!1199036))

(declare-fun d!1199040 () Bool)

(declare-fun lt!1438409 () Int)

(assert (=> d!1199040 (>= lt!1438409 0)))

(declare-fun e!2507787 () Int)

(assert (=> d!1199040 (= lt!1438409 e!2507787)))

(declare-fun c!698274 () Bool)

(assert (=> d!1199040 (= c!698274 ((_ is Nil!43241) lt!1437846))))

(assert (=> d!1199040 (= (size!32325 lt!1437846) lt!1438409)))

(declare-fun b!4041846 () Bool)

(assert (=> b!4041846 (= e!2507787 0)))

(declare-fun b!4041847 () Bool)

(assert (=> b!4041847 (= e!2507787 (+ 1 (size!32325 (t!334994 lt!1437846))))))

(assert (= (and d!1199040 c!698274) b!4041846))

(assert (= (and d!1199040 (not c!698274)) b!4041847))

(declare-fun m!4638433 () Bool)

(assert (=> b!4041847 m!4638433))

(assert (=> b!4040429 d!1199040))

(assert (=> b!4040429 d!1198282))

(declare-fun d!1199044 () Bool)

(declare-fun lt!1438410 () Int)

(assert (=> d!1199044 (>= lt!1438410 0)))

(declare-fun e!2507788 () Int)

(assert (=> d!1199044 (= lt!1438410 e!2507788)))

(declare-fun c!698275 () Bool)

(assert (=> d!1199044 (= c!698275 ((_ is Nil!43241) (_2!24295 (v!39735 lt!1437813))))))

(assert (=> d!1199044 (= (size!32325 (_2!24295 (v!39735 lt!1437813))) lt!1438410)))

(declare-fun b!4041848 () Bool)

(assert (=> b!4041848 (= e!2507788 0)))

(declare-fun b!4041849 () Bool)

(assert (=> b!4041849 (= e!2507788 (+ 1 (size!32325 (t!334994 (_2!24295 (v!39735 lt!1437813))))))))

(assert (= (and d!1199044 c!698275) b!4041848))

(assert (= (and d!1199044 (not c!698275)) b!4041849))

(declare-fun m!4638435 () Bool)

(assert (=> b!4041849 m!4638435))

(assert (=> b!4040429 d!1199044))

(declare-fun d!1199046 () Bool)

(declare-fun c!698276 () Bool)

(assert (=> d!1199046 (= c!698276 ((_ is Nil!43241) lt!1437864))))

(declare-fun e!2507789 () (InoxSet C!23840))

(assert (=> d!1199046 (= (content!6577 lt!1437864) e!2507789)))

(declare-fun b!4041850 () Bool)

(assert (=> b!4041850 (= e!2507789 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041851 () Bool)

(assert (=> b!4041851 (= e!2507789 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437864) true) (content!6577 (t!334994 lt!1437864))))))

(assert (= (and d!1199046 c!698276) b!4041850))

(assert (= (and d!1199046 (not c!698276)) b!4041851))

(declare-fun m!4638437 () Bool)

(assert (=> b!4041851 m!4638437))

(declare-fun m!4638439 () Bool)

(assert (=> b!4041851 m!4638439))

(assert (=> d!1198248 d!1199046))

(assert (=> d!1198248 d!1198544))

(declare-fun d!1199048 () Bool)

(declare-fun c!698277 () Bool)

(assert (=> d!1199048 (= c!698277 ((_ is Nil!43241) newSuffixResult!27))))

(declare-fun e!2507790 () (InoxSet C!23840))

(assert (=> d!1199048 (= (content!6577 newSuffixResult!27) e!2507790)))

(declare-fun b!4041852 () Bool)

(assert (=> b!4041852 (= e!2507790 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041853 () Bool)

(assert (=> b!4041853 (= e!2507790 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 newSuffixResult!27) true) (content!6577 (t!334994 newSuffixResult!27))))))

(assert (= (and d!1199048 c!698277) b!4041852))

(assert (= (and d!1199048 (not c!698277)) b!4041853))

(declare-fun m!4638441 () Bool)

(assert (=> b!4041853 m!4638441))

(declare-fun m!4638443 () Bool)

(assert (=> b!4041853 m!4638443))

(assert (=> d!1198248 d!1199048))

(declare-fun b!4041856 () Bool)

(declare-fun res!1646155 () Bool)

(declare-fun e!2507792 () Bool)

(assert (=> b!4041856 (=> (not res!1646155) (not e!2507792))))

(declare-fun lt!1438411 () List!43365)

(assert (=> b!4041856 (= res!1646155 (= (size!32325 lt!1438411) (+ (size!32325 (t!334994 lt!1437807)) (size!32325 suffix!1299))))))

(declare-fun d!1199050 () Bool)

(assert (=> d!1199050 e!2507792))

(declare-fun res!1646156 () Bool)

(assert (=> d!1199050 (=> (not res!1646156) (not e!2507792))))

(assert (=> d!1199050 (= res!1646156 (= (content!6577 lt!1438411) ((_ map or) (content!6577 (t!334994 lt!1437807)) (content!6577 suffix!1299))))))

(declare-fun e!2507791 () List!43365)

(assert (=> d!1199050 (= lt!1438411 e!2507791)))

(declare-fun c!698278 () Bool)

(assert (=> d!1199050 (= c!698278 ((_ is Nil!43241) (t!334994 lt!1437807)))))

(assert (=> d!1199050 (= (++!11324 (t!334994 lt!1437807) suffix!1299) lt!1438411)))

(declare-fun b!4041855 () Bool)

(assert (=> b!4041855 (= e!2507791 (Cons!43241 (h!48661 (t!334994 lt!1437807)) (++!11324 (t!334994 (t!334994 lt!1437807)) suffix!1299)))))

(declare-fun b!4041854 () Bool)

(assert (=> b!4041854 (= e!2507791 suffix!1299)))

(declare-fun b!4041857 () Bool)

(assert (=> b!4041857 (= e!2507792 (or (not (= suffix!1299 Nil!43241)) (= lt!1438411 (t!334994 lt!1437807))))))

(assert (= (and d!1199050 c!698278) b!4041854))

(assert (= (and d!1199050 (not c!698278)) b!4041855))

(assert (= (and d!1199050 res!1646156) b!4041856))

(assert (= (and b!4041856 res!1646155) b!4041857))

(declare-fun m!4638447 () Bool)

(assert (=> b!4041856 m!4638447))

(assert (=> b!4041856 m!4637683))

(assert (=> b!4041856 m!4636139))

(declare-fun m!4638449 () Bool)

(assert (=> d!1199050 m!4638449))

(assert (=> d!1199050 m!4637363))

(assert (=> d!1199050 m!4636289))

(declare-fun m!4638451 () Bool)

(assert (=> b!4041855 m!4638451))

(assert (=> b!4040382 d!1199050))

(declare-fun d!1199056 () Bool)

(declare-fun lt!1438413 () Int)

(assert (=> d!1199056 (>= lt!1438413 0)))

(declare-fun e!2507794 () Int)

(assert (=> d!1199056 (= lt!1438413 e!2507794)))

(declare-fun c!698280 () Bool)

(assert (=> d!1199056 (= c!698280 ((_ is Nil!43241) (_2!24295 (get!14189 lt!1437884))))))

(assert (=> d!1199056 (= (size!32325 (_2!24295 (get!14189 lt!1437884))) lt!1438413)))

(declare-fun b!4041860 () Bool)

(assert (=> b!4041860 (= e!2507794 0)))

(declare-fun b!4041861 () Bool)

(assert (=> b!4041861 (= e!2507794 (+ 1 (size!32325 (t!334994 (_2!24295 (get!14189 lt!1437884))))))))

(assert (= (and d!1199056 c!698280) b!4041860))

(assert (= (and d!1199056 (not c!698280)) b!4041861))

(declare-fun m!4638457 () Bool)

(assert (=> b!4041861 m!4638457))

(assert (=> b!4040573 d!1199056))

(assert (=> b!4040573 d!1198650))

(assert (=> b!4040573 d!1198568))

(declare-fun b!4041871 () Bool)

(declare-fun e!2507805 () Bool)

(declare-fun lt!1438414 () Bool)

(declare-fun call!287489 () Bool)

(assert (=> b!4041871 (= e!2507805 (= lt!1438414 call!287489))))

(declare-fun d!1199060 () Bool)

(assert (=> d!1199060 e!2507805))

(declare-fun c!698285 () Bool)

(assert (=> d!1199060 (= c!698285 ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun e!2507808 () Bool)

(assert (=> d!1199060 (= lt!1438414 e!2507808)))

(declare-fun c!698284 () Bool)

(assert (=> d!1199060 (= c!698284 (isEmpty!25808 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))))))

(assert (=> d!1199060 (validRegex!5350 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))

(assert (=> d!1199060 (= (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) lt!1438414)))

(declare-fun b!4041872 () Bool)

(declare-fun e!2507802 () Bool)

(declare-fun e!2507804 () Bool)

(assert (=> b!4041872 (= e!2507802 e!2507804)))

(declare-fun res!1646168 () Bool)

(assert (=> b!4041872 (=> (not res!1646168) (not e!2507804))))

(assert (=> b!4041872 (= res!1646168 (not lt!1438414))))

(declare-fun b!4041873 () Bool)

(assert (=> b!4041873 (= e!2507808 (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))) (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))))) (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))))))))

(declare-fun b!4041874 () Bool)

(declare-fun res!1646163 () Bool)

(declare-fun e!2507803 () Bool)

(assert (=> b!4041874 (=> (not res!1646163) (not e!2507803))))

(assert (=> b!4041874 (= res!1646163 (isEmpty!25808 (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))))))))

(declare-fun b!4041875 () Bool)

(declare-fun res!1646169 () Bool)

(assert (=> b!4041875 (=> res!1646169 e!2507802)))

(assert (=> b!4041875 (= res!1646169 e!2507803)))

(declare-fun res!1646164 () Bool)

(assert (=> b!4041875 (=> (not res!1646164) (not e!2507803))))

(assert (=> b!4041875 (= res!1646164 lt!1438414)))

(declare-fun b!4041876 () Bool)

(declare-fun e!2507807 () Bool)

(assert (=> b!4041876 (= e!2507805 e!2507807)))

(declare-fun c!698283 () Bool)

(assert (=> b!4041876 (= c!698283 ((_ is EmptyLang!11827) (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun bm!287484 () Bool)

(assert (=> bm!287484 (= call!287489 (isEmpty!25808 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun b!4041877 () Bool)

(assert (=> b!4041877 (= e!2507808 (nullable!4150 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun b!4041878 () Bool)

(assert (=> b!4041878 (= e!2507803 (= (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) (c!697933 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))))

(declare-fun b!4041879 () Bool)

(assert (=> b!4041879 (= e!2507807 (not lt!1438414))))

(declare-fun b!4041880 () Bool)

(declare-fun res!1646166 () Bool)

(declare-fun e!2507806 () Bool)

(assert (=> b!4041880 (=> res!1646166 e!2507806)))

(assert (=> b!4041880 (= res!1646166 (not (isEmpty!25808 (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))))))))

(declare-fun b!4041881 () Bool)

(declare-fun res!1646167 () Bool)

(assert (=> b!4041881 (=> res!1646167 e!2507802)))

(assert (=> b!4041881 (= res!1646167 (not ((_ is ElementMatch!11827) (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))))))

(assert (=> b!4041881 (= e!2507807 e!2507802)))

(declare-fun b!4041882 () Bool)

(declare-fun res!1646165 () Bool)

(assert (=> b!4041882 (=> (not res!1646165) (not e!2507803))))

(assert (=> b!4041882 (= res!1646165 (not call!287489))))

(declare-fun b!4041883 () Bool)

(assert (=> b!4041883 (= e!2507806 (not (= (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) (c!697933 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))))))))

(declare-fun b!4041884 () Bool)

(assert (=> b!4041884 (= e!2507804 e!2507806)))

(declare-fun res!1646162 () Bool)

(assert (=> b!4041884 (=> res!1646162 e!2507806)))

(assert (=> b!4041884 (= res!1646162 call!287489)))

(assert (= (and d!1199060 c!698284) b!4041877))

(assert (= (and d!1199060 (not c!698284)) b!4041873))

(assert (= (and d!1199060 c!698285) b!4041871))

(assert (= (and d!1199060 (not c!698285)) b!4041876))

(assert (= (and b!4041876 c!698283) b!4041879))

(assert (= (and b!4041876 (not c!698283)) b!4041881))

(assert (= (and b!4041881 (not res!1646167)) b!4041875))

(assert (= (and b!4041875 res!1646164) b!4041882))

(assert (= (and b!4041882 res!1646165) b!4041874))

(assert (= (and b!4041874 res!1646163) b!4041878))

(assert (= (and b!4041875 (not res!1646169)) b!4041872))

(assert (= (and b!4041872 res!1646168) b!4041884))

(assert (= (and b!4041884 (not res!1646162)) b!4041880))

(assert (= (and b!4041880 (not res!1646166)) b!4041883))

(assert (= (or b!4041871 b!4041882 b!4041884) bm!287484))

(assert (=> bm!287484 m!4637089))

(declare-fun m!4638467 () Bool)

(assert (=> bm!287484 m!4638467))

(assert (=> b!4041878 m!4637089))

(declare-fun m!4638469 () Bool)

(assert (=> b!4041878 m!4638469))

(assert (=> b!4041874 m!4637089))

(declare-fun m!4638471 () Bool)

(assert (=> b!4041874 m!4638471))

(assert (=> b!4041874 m!4638471))

(declare-fun m!4638473 () Bool)

(assert (=> b!4041874 m!4638473))

(declare-fun m!4638475 () Bool)

(assert (=> b!4041877 m!4638475))

(assert (=> b!4041880 m!4637089))

(assert (=> b!4041880 m!4638471))

(assert (=> b!4041880 m!4638471))

(assert (=> b!4041880 m!4638473))

(assert (=> b!4041873 m!4637089))

(assert (=> b!4041873 m!4638469))

(assert (=> b!4041873 m!4638469))

(declare-fun m!4638477 () Bool)

(assert (=> b!4041873 m!4638477))

(assert (=> b!4041873 m!4637089))

(assert (=> b!4041873 m!4638471))

(assert (=> b!4041873 m!4638477))

(assert (=> b!4041873 m!4638471))

(declare-fun m!4638479 () Bool)

(assert (=> b!4041873 m!4638479))

(assert (=> d!1199060 m!4637089))

(assert (=> d!1199060 m!4638467))

(declare-fun m!4638481 () Bool)

(assert (=> d!1199060 m!4638481))

(assert (=> b!4041883 m!4637089))

(assert (=> b!4041883 m!4638469))

(assert (=> b!4040975 d!1199060))

(assert (=> b!4040975 d!1198932))

(declare-fun d!1199068 () Bool)

(assert (=> d!1199068 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))) (list!16102 (c!697932 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))))))

(declare-fun bs!590971 () Bool)

(assert (= bs!590971 d!1199068))

(declare-fun m!4638483 () Bool)

(assert (=> bs!590971 m!4638483))

(assert (=> b!4040975 d!1199068))

(declare-fun d!1199070 () Bool)

(declare-fun lt!1438415 () BalanceConc!25860)

(assert (=> d!1199070 (= (list!16100 lt!1438415) (originalCharacters!7522 (_1!24295 (get!14189 lt!1438032))))))

(assert (=> d!1199070 (= lt!1438415 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))) (value!217911 (_1!24295 (get!14189 lt!1438032)))))))

(assert (=> d!1199070 (= (charsOf!4738 (_1!24295 (get!14189 lt!1438032))) lt!1438415)))

(declare-fun b_lambda!118041 () Bool)

(assert (=> (not b_lambda!118041) (not d!1199070)))

(declare-fun t!335146 () Bool)

(declare-fun tb!243009 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335146) tb!243009))

(declare-fun b!4041885 () Bool)

(declare-fun e!2507809 () Bool)

(declare-fun tp!1226895 () Bool)

(assert (=> b!4041885 (= e!2507809 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))) (value!217911 (_1!24295 (get!14189 lt!1438032)))))) tp!1226895))))

(declare-fun result!294526 () Bool)

(assert (=> tb!243009 (= result!294526 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032))))) (value!217911 (_1!24295 (get!14189 lt!1438032))))) e!2507809))))

(assert (= tb!243009 b!4041885))

(declare-fun m!4638485 () Bool)

(assert (=> b!4041885 m!4638485))

(declare-fun m!4638487 () Bool)

(assert (=> tb!243009 m!4638487))

(assert (=> d!1199070 t!335146))

(declare-fun b_and!310743 () Bool)

(assert (= b_and!310725 (and (=> t!335146 result!294526) b_and!310743)))

(declare-fun tb!243011 () Bool)

(declare-fun t!335148 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335148) tb!243011))

(declare-fun result!294528 () Bool)

(assert (= result!294528 result!294526))

(assert (=> d!1199070 t!335148))

(declare-fun b_and!310745 () Bool)

(assert (= b_and!310727 (and (=> t!335148 result!294528) b_and!310745)))

(declare-fun tb!243013 () Bool)

(declare-fun t!335150 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335150) tb!243013))

(declare-fun result!294530 () Bool)

(assert (= result!294530 result!294526))

(assert (=> d!1199070 t!335150))

(declare-fun b_and!310747 () Bool)

(assert (= b_and!310729 (and (=> t!335150 result!294530) b_and!310747)))

(declare-fun m!4638489 () Bool)

(assert (=> d!1199070 m!4638489))

(declare-fun m!4638491 () Bool)

(assert (=> d!1199070 m!4638491))

(assert (=> b!4040975 d!1199070))

(assert (=> b!4040468 d!1199014))

(assert (=> b!4040468 d!1198552))

(declare-fun d!1199072 () Bool)

(assert (=> d!1199072 (= (isEmpty!25808 lt!1437799) ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1198220 d!1199072))

(declare-fun b!4041886 () Bool)

(declare-fun e!2507811 () Bool)

(declare-fun e!2507810 () Bool)

(assert (=> b!4041886 (= e!2507811 e!2507810)))

(declare-fun res!1646173 () Bool)

(assert (=> b!4041886 (= res!1646173 (not (nullable!4150 (reg!12156 (regex!6922 (rule!9994 token!484))))))))

(assert (=> b!4041886 (=> (not res!1646173) (not e!2507810))))

(declare-fun b!4041887 () Bool)

(declare-fun e!2507813 () Bool)

(declare-fun e!2507816 () Bool)

(assert (=> b!4041887 (= e!2507813 e!2507816)))

(declare-fun res!1646171 () Bool)

(assert (=> b!4041887 (=> (not res!1646171) (not e!2507816))))

(declare-fun call!287491 () Bool)

(assert (=> b!4041887 (= res!1646171 call!287491)))

(declare-fun call!287490 () Bool)

(declare-fun bm!287485 () Bool)

(declare-fun c!698287 () Bool)

(declare-fun c!698286 () Bool)

(assert (=> bm!287485 (= call!287490 (validRegex!5350 (ite c!698287 (reg!12156 (regex!6922 (rule!9994 token!484))) (ite c!698286 (regOne!24167 (regex!6922 (rule!9994 token!484))) (regOne!24166 (regex!6922 (rule!9994 token!484)))))))))

(declare-fun b!4041888 () Bool)

(declare-fun e!2507812 () Bool)

(declare-fun call!287492 () Bool)

(assert (=> b!4041888 (= e!2507812 call!287492)))

(declare-fun bm!287486 () Bool)

(assert (=> bm!287486 (= call!287492 (validRegex!5350 (ite c!698286 (regTwo!24167 (regex!6922 (rule!9994 token!484))) (regTwo!24166 (regex!6922 (rule!9994 token!484))))))))

(declare-fun d!1199074 () Bool)

(declare-fun res!1646170 () Bool)

(declare-fun e!2507814 () Bool)

(assert (=> d!1199074 (=> res!1646170 e!2507814)))

(assert (=> d!1199074 (= res!1646170 ((_ is ElementMatch!11827) (regex!6922 (rule!9994 token!484))))))

(assert (=> d!1199074 (= (validRegex!5350 (regex!6922 (rule!9994 token!484))) e!2507814)))

(declare-fun b!4041889 () Bool)

(declare-fun res!1646174 () Bool)

(assert (=> b!4041889 (=> (not res!1646174) (not e!2507812))))

(assert (=> b!4041889 (= res!1646174 call!287491)))

(declare-fun e!2507815 () Bool)

(assert (=> b!4041889 (= e!2507815 e!2507812)))

(declare-fun b!4041890 () Bool)

(assert (=> b!4041890 (= e!2507816 call!287492)))

(declare-fun b!4041891 () Bool)

(assert (=> b!4041891 (= e!2507814 e!2507811)))

(assert (=> b!4041891 (= c!698287 ((_ is Star!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun bm!287487 () Bool)

(assert (=> bm!287487 (= call!287491 call!287490)))

(declare-fun b!4041892 () Bool)

(assert (=> b!4041892 (= e!2507811 e!2507815)))

(assert (=> b!4041892 (= c!698286 ((_ is Union!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun b!4041893 () Bool)

(assert (=> b!4041893 (= e!2507810 call!287490)))

(declare-fun b!4041894 () Bool)

(declare-fun res!1646172 () Bool)

(assert (=> b!4041894 (=> res!1646172 e!2507813)))

(assert (=> b!4041894 (= res!1646172 (not ((_ is Concat!18980) (regex!6922 (rule!9994 token!484)))))))

(assert (=> b!4041894 (= e!2507815 e!2507813)))

(assert (= (and d!1199074 (not res!1646170)) b!4041891))

(assert (= (and b!4041891 c!698287) b!4041886))

(assert (= (and b!4041891 (not c!698287)) b!4041892))

(assert (= (and b!4041886 res!1646173) b!4041893))

(assert (= (and b!4041892 c!698286) b!4041889))

(assert (= (and b!4041892 (not c!698286)) b!4041894))

(assert (= (and b!4041889 res!1646174) b!4041888))

(assert (= (and b!4041894 (not res!1646172)) b!4041887))

(assert (= (and b!4041887 res!1646171) b!4041890))

(assert (= (or b!4041888 b!4041890) bm!287486))

(assert (= (or b!4041889 b!4041887) bm!287487))

(assert (= (or b!4041893 bm!287487) bm!287485))

(declare-fun m!4638493 () Bool)

(assert (=> b!4041886 m!4638493))

(declare-fun m!4638495 () Bool)

(assert (=> bm!287485 m!4638495))

(declare-fun m!4638497 () Bool)

(assert (=> bm!287486 m!4638497))

(assert (=> d!1198220 d!1199074))

(declare-fun d!1199076 () Bool)

(assert (=> d!1199076 (= (isEmpty!25811 lt!1437884) (not ((_ is Some!9335) lt!1437884)))))

(assert (=> d!1198260 d!1199076))

(assert (=> d!1198260 d!1198202))

(assert (=> d!1198260 d!1198216))

(declare-fun bs!590972 () Bool)

(declare-fun d!1199078 () Bool)

(assert (= bs!590972 (and d!1199078 d!1198990)))

(declare-fun lambda!127416 () Int)

(assert (=> bs!590972 (= lambda!127416 lambda!127412)))

(assert (=> d!1199078 true))

(declare-fun lt!1438418 () Bool)

(assert (=> d!1199078 (= lt!1438418 (forall!8374 rules!2999 lambda!127416))))

(declare-fun e!2507822 () Bool)

(assert (=> d!1199078 (= lt!1438418 e!2507822)))

(declare-fun res!1646179 () Bool)

(assert (=> d!1199078 (=> res!1646179 e!2507822)))

(assert (=> d!1199078 (= res!1646179 (not ((_ is Cons!43243) rules!2999)))))

(assert (=> d!1199078 (= (rulesValidInductive!2525 thiss!21717 rules!2999) lt!1438418)))

(declare-fun b!4041899 () Bool)

(declare-fun e!2507821 () Bool)

(assert (=> b!4041899 (= e!2507822 e!2507821)))

(declare-fun res!1646180 () Bool)

(assert (=> b!4041899 (=> (not res!1646180) (not e!2507821))))

(assert (=> b!4041899 (= res!1646180 (ruleValid!2852 thiss!21717 (h!48663 rules!2999)))))

(declare-fun b!4041900 () Bool)

(assert (=> b!4041900 (= e!2507821 (rulesValidInductive!2525 thiss!21717 (t!334996 rules!2999)))))

(assert (= (and d!1199078 (not res!1646179)) b!4041899))

(assert (= (and b!4041899 res!1646180) b!4041900))

(declare-fun m!4638499 () Bool)

(assert (=> d!1199078 m!4638499))

(assert (=> b!4041899 m!4637471))

(assert (=> b!4041900 m!4637409))

(assert (=> d!1198260 d!1199078))

(assert (=> b!4040945 d!1198661))

(declare-fun d!1199080 () Bool)

(assert (=> d!1199080 (= (head!8553 lt!1437790) (h!48661 lt!1437790))))

(assert (=> b!4040945 d!1199080))

(declare-fun d!1199082 () Bool)

(declare-fun lt!1438419 () Int)

(assert (=> d!1199082 (>= lt!1438419 0)))

(declare-fun e!2507823 () Int)

(assert (=> d!1199082 (= lt!1438419 e!2507823)))

(declare-fun c!698288 () Bool)

(assert (=> d!1199082 (= c!698288 ((_ is Nil!43241) (t!334994 newSuffix!27)))))

(assert (=> d!1199082 (= (size!32325 (t!334994 newSuffix!27)) lt!1438419)))

(declare-fun b!4041901 () Bool)

(assert (=> b!4041901 (= e!2507823 0)))

(declare-fun b!4041902 () Bool)

(assert (=> b!4041902 (= e!2507823 (+ 1 (size!32325 (t!334994 (t!334994 newSuffix!27)))))))

(assert (= (and d!1199082 c!698288) b!4041901))

(assert (= (and d!1199082 (not c!698288)) b!4041902))

(declare-fun m!4638501 () Bool)

(assert (=> b!4041902 m!4638501))

(assert (=> b!4040983 d!1199082))

(assert (=> b!4040938 d!1198564))

(declare-fun b!4041905 () Bool)

(declare-fun res!1646181 () Bool)

(declare-fun e!2507825 () Bool)

(assert (=> b!4041905 (=> (not res!1646181) (not e!2507825))))

(declare-fun lt!1438420 () List!43365)

(assert (=> b!4041905 (= res!1646181 (= (size!32325 lt!1438420) (+ (size!32325 (t!334994 lt!1437799)) (size!32325 lt!1437808))))))

(declare-fun d!1199084 () Bool)

(assert (=> d!1199084 e!2507825))

(declare-fun res!1646182 () Bool)

(assert (=> d!1199084 (=> (not res!1646182) (not e!2507825))))

(assert (=> d!1199084 (= res!1646182 (= (content!6577 lt!1438420) ((_ map or) (content!6577 (t!334994 lt!1437799)) (content!6577 lt!1437808))))))

(declare-fun e!2507824 () List!43365)

(assert (=> d!1199084 (= lt!1438420 e!2507824)))

(declare-fun c!698289 () Bool)

(assert (=> d!1199084 (= c!698289 ((_ is Nil!43241) (t!334994 lt!1437799)))))

(assert (=> d!1199084 (= (++!11324 (t!334994 lt!1437799) lt!1437808) lt!1438420)))

(declare-fun b!4041904 () Bool)

(assert (=> b!4041904 (= e!2507824 (Cons!43241 (h!48661 (t!334994 lt!1437799)) (++!11324 (t!334994 (t!334994 lt!1437799)) lt!1437808)))))

(declare-fun b!4041903 () Bool)

(assert (=> b!4041903 (= e!2507824 lt!1437808)))

(declare-fun b!4041906 () Bool)

(assert (=> b!4041906 (= e!2507825 (or (not (= lt!1437808 Nil!43241)) (= lt!1438420 (t!334994 lt!1437799))))))

(assert (= (and d!1199084 c!698289) b!4041903))

(assert (= (and d!1199084 (not c!698289)) b!4041904))

(assert (= (and d!1199084 res!1646182) b!4041905))

(assert (= (and b!4041905 res!1646181) b!4041906))

(declare-fun m!4638503 () Bool)

(assert (=> b!4041905 m!4638503))

(assert (=> b!4041905 m!4637047))

(assert (=> b!4041905 m!4636271))

(declare-fun m!4638505 () Bool)

(assert (=> d!1199084 m!4638505))

(assert (=> d!1199084 m!4637311))

(assert (=> d!1199084 m!4636277))

(declare-fun m!4638507 () Bool)

(assert (=> b!4041904 m!4638507))

(assert (=> b!4040374 d!1199084))

(declare-fun b!4041909 () Bool)

(declare-fun res!1646183 () Bool)

(declare-fun e!2507827 () Bool)

(assert (=> b!4041909 (=> (not res!1646183) (not e!2507827))))

(declare-fun lt!1438421 () List!43365)

(assert (=> b!4041909 (= res!1646183 (= (size!32325 lt!1438421) (+ (size!32325 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) (size!32325 (_2!24295 (get!14189 lt!1438032))))))))

(declare-fun d!1199086 () Bool)

(assert (=> d!1199086 e!2507827))

(declare-fun res!1646184 () Bool)

(assert (=> d!1199086 (=> (not res!1646184) (not e!2507827))))

(assert (=> d!1199086 (= res!1646184 (= (content!6577 lt!1438421) ((_ map or) (content!6577 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) (content!6577 (_2!24295 (get!14189 lt!1438032))))))))

(declare-fun e!2507826 () List!43365)

(assert (=> d!1199086 (= lt!1438421 e!2507826)))

(declare-fun c!698290 () Bool)

(assert (=> d!1199086 (= c!698290 ((_ is Nil!43241) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))))))

(assert (=> d!1199086 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))) (_2!24295 (get!14189 lt!1438032))) lt!1438421)))

(declare-fun b!4041908 () Bool)

(assert (=> b!4041908 (= e!2507826 (Cons!43241 (h!48661 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) (++!11324 (t!334994 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032))))) (_2!24295 (get!14189 lt!1438032)))))))

(declare-fun b!4041907 () Bool)

(assert (=> b!4041907 (= e!2507826 (_2!24295 (get!14189 lt!1438032)))))

(declare-fun b!4041910 () Bool)

(assert (=> b!4041910 (= e!2507827 (or (not (= (_2!24295 (get!14189 lt!1438032)) Nil!43241)) (= lt!1438421 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438032)))))))))

(assert (= (and d!1199086 c!698290) b!4041907))

(assert (= (and d!1199086 (not c!698290)) b!4041908))

(assert (= (and d!1199086 res!1646184) b!4041909))

(assert (= (and b!4041909 res!1646183) b!4041910))

(declare-fun m!4638509 () Bool)

(assert (=> b!4041909 m!4638509))

(assert (=> b!4041909 m!4637089))

(declare-fun m!4638511 () Bool)

(assert (=> b!4041909 m!4638511))

(assert (=> b!4041909 m!4637101))

(declare-fun m!4638513 () Bool)

(assert (=> d!1199086 m!4638513))

(assert (=> d!1199086 m!4637089))

(declare-fun m!4638515 () Bool)

(assert (=> d!1199086 m!4638515))

(declare-fun m!4638517 () Bool)

(assert (=> d!1199086 m!4638517))

(declare-fun m!4638519 () Bool)

(assert (=> b!4041908 m!4638519))

(assert (=> b!4040971 d!1199086))

(assert (=> b!4040971 d!1199068))

(assert (=> b!4040971 d!1199070))

(assert (=> b!4040971 d!1198932))

(declare-fun e!2507828 () Bool)

(declare-fun b!4041913 () Bool)

(assert (=> b!4041913 (= e!2507828 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 (++!11324 prefix!494 suffix!1299))))))

(declare-fun b!4041914 () Bool)

(declare-fun e!2507830 () Bool)

(assert (=> b!4041914 (= e!2507830 (>= (size!32325 (++!11324 prefix!494 suffix!1299)) (size!32325 lt!1437799)))))

(declare-fun b!4041912 () Bool)

(declare-fun res!1646188 () Bool)

(assert (=> b!4041912 (=> (not res!1646188) (not e!2507828))))

(assert (=> b!4041912 (= res!1646188 (= (head!8553 lt!1437799) (head!8553 (++!11324 prefix!494 suffix!1299))))))

(declare-fun d!1199088 () Bool)

(assert (=> d!1199088 e!2507830))

(declare-fun res!1646187 () Bool)

(assert (=> d!1199088 (=> res!1646187 e!2507830)))

(declare-fun lt!1438422 () Bool)

(assert (=> d!1199088 (= res!1646187 (not lt!1438422))))

(declare-fun e!2507829 () Bool)

(assert (=> d!1199088 (= lt!1438422 e!2507829)))

(declare-fun res!1646186 () Bool)

(assert (=> d!1199088 (=> res!1646186 e!2507829)))

(assert (=> d!1199088 (= res!1646186 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1199088 (= (isPrefix!4009 lt!1437799 (++!11324 prefix!494 suffix!1299)) lt!1438422)))

(declare-fun b!4041911 () Bool)

(assert (=> b!4041911 (= e!2507829 e!2507828)))

(declare-fun res!1646185 () Bool)

(assert (=> b!4041911 (=> (not res!1646185) (not e!2507828))))

(assert (=> b!4041911 (= res!1646185 (not ((_ is Nil!43241) (++!11324 prefix!494 suffix!1299))))))

(assert (= (and d!1199088 (not res!1646186)) b!4041911))

(assert (= (and b!4041911 res!1646185) b!4041912))

(assert (= (and b!4041912 res!1646188) b!4041913))

(assert (= (and d!1199088 (not res!1646187)) b!4041914))

(assert (=> b!4041913 m!4636373))

(assert (=> b!4041913 m!4636231))

(assert (=> b!4041913 m!4638089))

(assert (=> b!4041913 m!4636373))

(assert (=> b!4041913 m!4638089))

(declare-fun m!4638521 () Bool)

(assert (=> b!4041913 m!4638521))

(assert (=> b!4041914 m!4636231))

(assert (=> b!4041914 m!4638093))

(assert (=> b!4041914 m!4636145))

(assert (=> b!4041912 m!4636371))

(assert (=> b!4041912 m!4636231))

(assert (=> b!4041912 m!4638095))

(assert (=> d!1198226 d!1199088))

(assert (=> d!1198226 d!1198262))

(declare-fun d!1199090 () Bool)

(assert (=> d!1199090 (isPrefix!4009 lt!1437799 (++!11324 prefix!494 suffix!1299))))

(assert (=> d!1199090 true))

(declare-fun _$58!589 () Unit!62457)

(assert (=> d!1199090 (= (choose!24485 lt!1437799 prefix!494 suffix!1299) _$58!589)))

(declare-fun bs!590973 () Bool)

(assert (= bs!590973 d!1199090))

(assert (=> bs!590973 m!4636231))

(assert (=> bs!590973 m!4636231))

(assert (=> bs!590973 m!4636397))

(assert (=> d!1198226 d!1199090))

(assert (=> d!1198226 d!1198464))

(declare-fun d!1199092 () Bool)

(declare-fun charsToBigInt!1 (List!43366) Int)

(assert (=> d!1199092 (= (inv!17 (value!217911 token!484)) (= (charsToBigInt!1 (text!50512 (value!217911 token!484))) (value!217903 (value!217911 token!484))))))

(declare-fun bs!590975 () Bool)

(assert (= bs!590975 d!1199092))

(declare-fun m!4638531 () Bool)

(assert (=> bs!590975 m!4638531))

(assert (=> b!4040489 d!1199092))

(declare-fun bs!590977 () Bool)

(declare-fun d!1199098 () Bool)

(assert (= bs!590977 (and d!1199098 d!1198848)))

(declare-fun lambda!127417 () Int)

(assert (=> bs!590977 (= (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (h!48663 rules!2999)))) (= lambda!127417 lambda!127404))))

(declare-fun bs!590978 () Bool)

(assert (= bs!590978 (and d!1199098 d!1198944)))

(assert (=> bs!590978 (= (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= lambda!127417 lambda!127405))))

(assert (=> d!1199098 true))

(assert (=> d!1199098 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (rule!9994 token!484)))) (dynLambda!18363 order!22651 lambda!127417))))

(assert (=> d!1199098 (= (equivClasses!2857 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) (Forall2!1090 lambda!127417))))

(declare-fun bs!590979 () Bool)

(assert (= bs!590979 d!1199098))

(declare-fun m!4638533 () Bool)

(assert (=> bs!590979 m!4638533))

(assert (=> b!4040960 d!1199098))

(declare-fun d!1199102 () Bool)

(assert (=> d!1199102 (= (isDefined!7104 lt!1437884) (not (isEmpty!25811 lt!1437884)))))

(declare-fun bs!590981 () Bool)

(assert (= bs!590981 d!1199102))

(assert (=> bs!590981 m!4636507))

(assert (=> b!4040569 d!1199102))

(declare-fun d!1199106 () Bool)

(declare-fun lt!1438424 () Int)

(assert (=> d!1199106 (>= lt!1438424 0)))

(declare-fun e!2507834 () Int)

(assert (=> d!1199106 (= lt!1438424 e!2507834)))

(declare-fun c!698291 () Bool)

(assert (=> d!1199106 (= c!698291 ((_ is Nil!43241) lt!1437802))))

(assert (=> d!1199106 (= (size!32325 lt!1437802) lt!1438424)))

(declare-fun b!4041919 () Bool)

(assert (=> b!4041919 (= e!2507834 0)))

(declare-fun b!4041920 () Bool)

(assert (=> b!4041920 (= e!2507834 (+ 1 (size!32325 (t!334994 lt!1437802))))))

(assert (= (and d!1199106 c!698291) b!4041919))

(assert (= (and d!1199106 (not c!698291)) b!4041920))

(declare-fun m!4638535 () Bool)

(assert (=> b!4041920 m!4638535))

(assert (=> b!4040516 d!1199106))

(assert (=> b!4040516 d!1198432))

(assert (=> b!4040966 d!1198258))

(declare-fun b!4041923 () Bool)

(declare-fun res!1646193 () Bool)

(declare-fun e!2507836 () Bool)

(assert (=> b!4041923 (=> (not res!1646193) (not e!2507836))))

(declare-fun lt!1438425 () List!43365)

(assert (=> b!4041923 (= res!1646193 (= (size!32325 lt!1438425) (+ (size!32325 (t!334994 prefix!494)) (size!32325 newSuffix!27))))))

(declare-fun d!1199108 () Bool)

(assert (=> d!1199108 e!2507836))

(declare-fun res!1646194 () Bool)

(assert (=> d!1199108 (=> (not res!1646194) (not e!2507836))))

(assert (=> d!1199108 (= res!1646194 (= (content!6577 lt!1438425) ((_ map or) (content!6577 (t!334994 prefix!494)) (content!6577 newSuffix!27))))))

(declare-fun e!2507835 () List!43365)

(assert (=> d!1199108 (= lt!1438425 e!2507835)))

(declare-fun c!698292 () Bool)

(assert (=> d!1199108 (= c!698292 ((_ is Nil!43241) (t!334994 prefix!494)))))

(assert (=> d!1199108 (= (++!11324 (t!334994 prefix!494) newSuffix!27) lt!1438425)))

(declare-fun b!4041922 () Bool)

(assert (=> b!4041922 (= e!2507835 (Cons!43241 (h!48661 (t!334994 prefix!494)) (++!11324 (t!334994 (t!334994 prefix!494)) newSuffix!27)))))

(declare-fun b!4041921 () Bool)

(assert (=> b!4041921 (= e!2507835 newSuffix!27)))

(declare-fun b!4041924 () Bool)

(assert (=> b!4041924 (= e!2507836 (or (not (= newSuffix!27 Nil!43241)) (= lt!1438425 (t!334994 prefix!494))))))

(assert (= (and d!1199108 c!698292) b!4041921))

(assert (= (and d!1199108 (not c!698292)) b!4041922))

(assert (= (and d!1199108 res!1646194) b!4041923))

(assert (= (and b!4041923 res!1646193) b!4041924))

(declare-fun m!4638539 () Bool)

(assert (=> b!4041923 m!4638539))

(assert (=> b!4041923 m!4637049))

(assert (=> b!4041923 m!4636141))

(declare-fun m!4638543 () Bool)

(assert (=> d!1199108 m!4638543))

(assert (=> d!1199108 m!4637595))

(assert (=> d!1199108 m!4636455))

(declare-fun m!4638547 () Bool)

(assert (=> b!4041922 m!4638547))

(assert (=> b!4040522 d!1199108))

(assert (=> bm!287376 d!1199072))

(declare-fun b!4041931 () Bool)

(declare-fun e!2507839 () Bool)

(assert (=> b!4041931 (= e!2507839 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437799)) (tail!6285 (tail!6285 lt!1437817))))))

(declare-fun b!4041932 () Bool)

(declare-fun e!2507841 () Bool)

(assert (=> b!4041932 (= e!2507841 (>= (size!32325 (tail!6285 lt!1437817)) (size!32325 (tail!6285 lt!1437799))))))

(declare-fun b!4041930 () Bool)

(declare-fun res!1646198 () Bool)

(assert (=> b!4041930 (=> (not res!1646198) (not e!2507839))))

(assert (=> b!4041930 (= res!1646198 (= (head!8553 (tail!6285 lt!1437799)) (head!8553 (tail!6285 lt!1437817))))))

(declare-fun d!1199116 () Bool)

(assert (=> d!1199116 e!2507841))

(declare-fun res!1646197 () Bool)

(assert (=> d!1199116 (=> res!1646197 e!2507841)))

(declare-fun lt!1438426 () Bool)

(assert (=> d!1199116 (= res!1646197 (not lt!1438426))))

(declare-fun e!2507840 () Bool)

(assert (=> d!1199116 (= lt!1438426 e!2507840)))

(declare-fun res!1646196 () Bool)

(assert (=> d!1199116 (=> res!1646196 e!2507840)))

(assert (=> d!1199116 (= res!1646196 ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> d!1199116 (= (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437817)) lt!1438426)))

(declare-fun b!4041929 () Bool)

(assert (=> b!4041929 (= e!2507840 e!2507839)))

(declare-fun res!1646195 () Bool)

(assert (=> b!4041929 (=> (not res!1646195) (not e!2507839))))

(assert (=> b!4041929 (= res!1646195 (not ((_ is Nil!43241) (tail!6285 lt!1437817))))))

(assert (= (and d!1199116 (not res!1646196)) b!4041929))

(assert (= (and b!4041929 res!1646195) b!4041930))

(assert (= (and b!4041930 res!1646198) b!4041931))

(assert (= (and d!1199116 (not res!1646197)) b!4041932))

(assert (=> b!4041931 m!4636373))

(assert (=> b!4041931 m!4637321))

(assert (=> b!4041931 m!4636327))

(assert (=> b!4041931 m!4638283))

(assert (=> b!4041931 m!4637321))

(assert (=> b!4041931 m!4638283))

(declare-fun m!4638553 () Bool)

(assert (=> b!4041931 m!4638553))

(assert (=> b!4041932 m!4636327))

(assert (=> b!4041932 m!4638281))

(assert (=> b!4041932 m!4636373))

(assert (=> b!4041932 m!4637335))

(assert (=> b!4041930 m!4636373))

(assert (=> b!4041930 m!4637337))

(assert (=> b!4041930 m!4636327))

(declare-fun m!4638555 () Bool)

(assert (=> b!4041930 m!4638555))

(assert (=> b!4040519 d!1199116))

(assert (=> b!4040519 d!1198552))

(assert (=> b!4040519 d!1198970))

(declare-fun d!1199120 () Bool)

(declare-fun lt!1438427 () Int)

(assert (=> d!1199120 (>= lt!1438427 0)))

(declare-fun e!2507842 () Int)

(assert (=> d!1199120 (= lt!1438427 e!2507842)))

(declare-fun c!698295 () Bool)

(assert (=> d!1199120 (= c!698295 ((_ is Nil!43241) (t!334994 (originalCharacters!7522 token!484))))))

(assert (=> d!1199120 (= (size!32325 (t!334994 (originalCharacters!7522 token!484))) lt!1438427)))

(declare-fun b!4041933 () Bool)

(assert (=> b!4041933 (= e!2507842 0)))

(declare-fun b!4041934 () Bool)

(assert (=> b!4041934 (= e!2507842 (+ 1 (size!32325 (t!334994 (t!334994 (originalCharacters!7522 token!484))))))))

(assert (= (and d!1199120 c!698295) b!4041933))

(assert (= (and d!1199120 (not c!698295)) b!4041934))

(declare-fun m!4638557 () Bool)

(assert (=> b!4041934 m!4638557))

(assert (=> b!4040547 d!1199120))

(declare-fun d!1199122 () Bool)

(declare-fun c!698296 () Bool)

(assert (=> d!1199122 (= c!698296 ((_ is Nil!43241) lt!1438040))))

(declare-fun e!2507843 () (InoxSet C!23840))

(assert (=> d!1199122 (= (content!6577 lt!1438040) e!2507843)))

(declare-fun b!4041935 () Bool)

(assert (=> b!4041935 (= e!2507843 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4041936 () Bool)

(assert (=> b!4041936 (= e!2507843 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1438040) true) (content!6577 (t!334994 lt!1438040))))))

(assert (= (and d!1199122 c!698296) b!4041935))

(assert (= (and d!1199122 (not c!698296)) b!4041936))

(declare-fun m!4638561 () Bool)

(assert (=> b!4041936 m!4638561))

(declare-fun m!4638563 () Bool)

(assert (=> b!4041936 m!4638563))

(assert (=> d!1198460 d!1199122))

(assert (=> d!1198460 d!1198544))

(assert (=> d!1198460 d!1198574))

(declare-fun d!1199126 () Bool)

(assert (=> d!1199126 (= (nullable!4150 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (nullableFct!1165 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun bs!590986 () Bool)

(assert (= bs!590986 d!1199126))

(declare-fun m!4638565 () Bool)

(assert (=> bs!590986 m!4638565))

(assert (=> b!4040498 d!1199126))

(declare-fun d!1199128 () Bool)

(declare-fun lt!1438429 () Int)

(assert (=> d!1199128 (>= lt!1438429 0)))

(declare-fun e!2507846 () Int)

(assert (=> d!1199128 (= lt!1438429 e!2507846)))

(declare-fun c!698298 () Bool)

(assert (=> d!1199128 (= c!698298 ((_ is Nil!43241) (t!334994 lt!1437799)))))

(assert (=> d!1199128 (= (size!32325 (t!334994 lt!1437799)) lt!1438429)))

(declare-fun b!4041941 () Bool)

(assert (=> b!4041941 (= e!2507846 0)))

(declare-fun b!4041942 () Bool)

(assert (=> b!4041942 (= e!2507846 (+ 1 (size!32325 (t!334994 (t!334994 lt!1437799)))))))

(assert (= (and d!1199128 c!698298) b!4041941))

(assert (= (and d!1199128 (not c!698298)) b!4041942))

(declare-fun m!4638567 () Bool)

(assert (=> b!4041942 m!4638567))

(assert (=> b!4040952 d!1199128))

(declare-fun d!1199130 () Bool)

(assert (=> d!1199130 (= lt!1437808 suffixResult!105)))

(assert (=> d!1199130 true))

(declare-fun _$63!1116 () Unit!62457)

(assert (=> d!1199130 (= (choose!24491 lt!1437799 lt!1437808 lt!1437799 suffixResult!105 lt!1437817) _$63!1116)))

(assert (=> d!1198418 d!1199130))

(assert (=> d!1198418 d!1198242))

(declare-fun d!1199134 () Bool)

(declare-fun lt!1438430 () Int)

(assert (=> d!1199134 (>= lt!1438430 0)))

(declare-fun e!2507847 () Int)

(assert (=> d!1199134 (= lt!1438430 e!2507847)))

(declare-fun c!698299 () Bool)

(assert (=> d!1199134 (= c!698299 ((_ is Nil!43241) lt!1437793))))

(assert (=> d!1199134 (= (size!32325 lt!1437793) lt!1438430)))

(declare-fun b!4041943 () Bool)

(assert (=> b!4041943 (= e!2507847 0)))

(declare-fun b!4041944 () Bool)

(assert (=> b!4041944 (= e!2507847 (+ 1 (size!32325 (t!334994 lt!1437793))))))

(assert (= (and d!1199134 c!698299) b!4041943))

(assert (= (and d!1199134 (not c!698299)) b!4041944))

(declare-fun m!4638581 () Bool)

(assert (=> b!4041944 m!4638581))

(assert (=> b!4040476 d!1199134))

(assert (=> b!4040476 d!1198432))

(assert (=> b!4040426 d!1198568))

(declare-fun b!4041947 () Bool)

(declare-fun e!2507848 () Bool)

(assert (=> b!4041947 (= e!2507848 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437799)) (tail!6285 (tail!6285 lt!1437804))))))

(declare-fun b!4041948 () Bool)

(declare-fun e!2507850 () Bool)

(assert (=> b!4041948 (= e!2507850 (>= (size!32325 (tail!6285 lt!1437804)) (size!32325 (tail!6285 lt!1437799))))))

(declare-fun b!4041946 () Bool)

(declare-fun res!1646204 () Bool)

(assert (=> b!4041946 (=> (not res!1646204) (not e!2507848))))

(assert (=> b!4041946 (= res!1646204 (= (head!8553 (tail!6285 lt!1437799)) (head!8553 (tail!6285 lt!1437804))))))

(declare-fun d!1199136 () Bool)

(assert (=> d!1199136 e!2507850))

(declare-fun res!1646203 () Bool)

(assert (=> d!1199136 (=> res!1646203 e!2507850)))

(declare-fun lt!1438431 () Bool)

(assert (=> d!1199136 (= res!1646203 (not lt!1438431))))

(declare-fun e!2507849 () Bool)

(assert (=> d!1199136 (= lt!1438431 e!2507849)))

(declare-fun res!1646202 () Bool)

(assert (=> d!1199136 (=> res!1646202 e!2507849)))

(assert (=> d!1199136 (= res!1646202 ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> d!1199136 (= (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437804)) lt!1438431)))

(declare-fun b!4041945 () Bool)

(assert (=> b!4041945 (= e!2507849 e!2507848)))

(declare-fun res!1646201 () Bool)

(assert (=> b!4041945 (=> (not res!1646201) (not e!2507848))))

(assert (=> b!4041945 (= res!1646201 (not ((_ is Nil!43241) (tail!6285 lt!1437804))))))

(assert (= (and d!1199136 (not res!1646202)) b!4041945))

(assert (= (and b!4041945 res!1646201) b!4041946))

(assert (= (and b!4041946 res!1646204) b!4041947))

(assert (= (and d!1199136 (not res!1646203)) b!4041948))

(assert (=> b!4041947 m!4636373))

(assert (=> b!4041947 m!4637321))

(assert (=> b!4041947 m!4637107))

(declare-fun m!4638583 () Bool)

(assert (=> b!4041947 m!4638583))

(assert (=> b!4041947 m!4637321))

(assert (=> b!4041947 m!4638583))

(declare-fun m!4638585 () Bool)

(assert (=> b!4041947 m!4638585))

(assert (=> b!4041948 m!4637107))

(declare-fun m!4638587 () Bool)

(assert (=> b!4041948 m!4638587))

(assert (=> b!4041948 m!4636373))

(assert (=> b!4041948 m!4637335))

(assert (=> b!4041946 m!4636373))

(assert (=> b!4041946 m!4637337))

(assert (=> b!4041946 m!4637107))

(declare-fun m!4638589 () Bool)

(assert (=> b!4041946 m!4638589))

(assert (=> b!4040978 d!1199136))

(assert (=> b!4040978 d!1198552))

(declare-fun d!1199138 () Bool)

(assert (=> d!1199138 (= (tail!6285 lt!1437804) (t!334994 lt!1437804))))

(assert (=> b!4040978 d!1199138))

(declare-fun b!4041949 () Bool)

(declare-fun e!2507854 () Bool)

(declare-fun lt!1438432 () Bool)

(declare-fun call!287493 () Bool)

(assert (=> b!4041949 (= e!2507854 (= lt!1438432 call!287493))))

(declare-fun d!1199140 () Bool)

(assert (=> d!1199140 e!2507854))

(declare-fun c!698302 () Bool)

(assert (=> d!1199140 (= c!698302 ((_ is EmptyExpr!11827) (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799))))))

(declare-fun e!2507857 () Bool)

(assert (=> d!1199140 (= lt!1438432 e!2507857)))

(declare-fun c!698301 () Bool)

(assert (=> d!1199140 (= c!698301 (isEmpty!25808 (tail!6285 lt!1437799)))))

(assert (=> d!1199140 (validRegex!5350 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)))))

(assert (=> d!1199140 (= (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)) (tail!6285 lt!1437799)) lt!1438432)))

(declare-fun b!4041950 () Bool)

(declare-fun e!2507851 () Bool)

(declare-fun e!2507853 () Bool)

(assert (=> b!4041950 (= e!2507851 e!2507853)))

(declare-fun res!1646211 () Bool)

(assert (=> b!4041950 (=> (not res!1646211) (not e!2507853))))

(assert (=> b!4041950 (= res!1646211 (not lt!1438432))))

(declare-fun b!4041951 () Bool)

(assert (=> b!4041951 (= e!2507857 (matchR!5780 (derivativeStep!3555 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)) (head!8553 (tail!6285 lt!1437799))) (tail!6285 (tail!6285 lt!1437799))))))

(declare-fun b!4041952 () Bool)

(declare-fun res!1646206 () Bool)

(declare-fun e!2507852 () Bool)

(assert (=> b!4041952 (=> (not res!1646206) (not e!2507852))))

(assert (=> b!4041952 (= res!1646206 (isEmpty!25808 (tail!6285 (tail!6285 lt!1437799))))))

(declare-fun b!4041953 () Bool)

(declare-fun res!1646212 () Bool)

(assert (=> b!4041953 (=> res!1646212 e!2507851)))

(assert (=> b!4041953 (= res!1646212 e!2507852)))

(declare-fun res!1646207 () Bool)

(assert (=> b!4041953 (=> (not res!1646207) (not e!2507852))))

(assert (=> b!4041953 (= res!1646207 lt!1438432)))

(declare-fun b!4041954 () Bool)

(declare-fun e!2507856 () Bool)

(assert (=> b!4041954 (= e!2507854 e!2507856)))

(declare-fun c!698300 () Bool)

(assert (=> b!4041954 (= c!698300 ((_ is EmptyLang!11827) (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799))))))

(declare-fun bm!287488 () Bool)

(assert (=> bm!287488 (= call!287493 (isEmpty!25808 (tail!6285 lt!1437799)))))

(declare-fun b!4041955 () Bool)

(assert (=> b!4041955 (= e!2507857 (nullable!4150 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799))))))

(declare-fun b!4041956 () Bool)

(assert (=> b!4041956 (= e!2507852 (= (head!8553 (tail!6285 lt!1437799)) (c!697933 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)))))))

(declare-fun b!4041957 () Bool)

(assert (=> b!4041957 (= e!2507856 (not lt!1438432))))

(declare-fun b!4041958 () Bool)

(declare-fun res!1646209 () Bool)

(declare-fun e!2507855 () Bool)

(assert (=> b!4041958 (=> res!1646209 e!2507855)))

(assert (=> b!4041958 (= res!1646209 (not (isEmpty!25808 (tail!6285 (tail!6285 lt!1437799)))))))

(declare-fun b!4041959 () Bool)

(declare-fun res!1646210 () Bool)

(assert (=> b!4041959 (=> res!1646210 e!2507851)))

(assert (=> b!4041959 (= res!1646210 (not ((_ is ElementMatch!11827) (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)))))))

(assert (=> b!4041959 (= e!2507856 e!2507851)))

(declare-fun b!4041960 () Bool)

(declare-fun res!1646208 () Bool)

(assert (=> b!4041960 (=> (not res!1646208) (not e!2507852))))

(assert (=> b!4041960 (= res!1646208 (not call!287493))))

(declare-fun b!4041961 () Bool)

(assert (=> b!4041961 (= e!2507855 (not (= (head!8553 (tail!6285 lt!1437799)) (c!697933 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799))))))))

(declare-fun b!4041962 () Bool)

(assert (=> b!4041962 (= e!2507853 e!2507855)))

(declare-fun res!1646205 () Bool)

(assert (=> b!4041962 (=> res!1646205 e!2507855)))

(assert (=> b!4041962 (= res!1646205 call!287493)))

(assert (= (and d!1199140 c!698301) b!4041955))

(assert (= (and d!1199140 (not c!698301)) b!4041951))

(assert (= (and d!1199140 c!698302) b!4041949))

(assert (= (and d!1199140 (not c!698302)) b!4041954))

(assert (= (and b!4041954 c!698300) b!4041957))

(assert (= (and b!4041954 (not c!698300)) b!4041959))

(assert (= (and b!4041959 (not res!1646210)) b!4041953))

(assert (= (and b!4041953 res!1646207) b!4041960))

(assert (= (and b!4041960 res!1646208) b!4041952))

(assert (= (and b!4041952 res!1646206) b!4041956))

(assert (= (and b!4041953 (not res!1646212)) b!4041950))

(assert (= (and b!4041950 res!1646211) b!4041962))

(assert (= (and b!4041962 (not res!1646205)) b!4041958))

(assert (= (and b!4041958 (not res!1646209)) b!4041961))

(assert (= (or b!4041949 b!4041960 b!4041962) bm!287488))

(assert (=> bm!287488 m!4636373))

(assert (=> bm!287488 m!4636375))

(assert (=> b!4041956 m!4636373))

(assert (=> b!4041956 m!4637337))

(assert (=> b!4041952 m!4636373))

(assert (=> b!4041952 m!4637321))

(assert (=> b!4041952 m!4637321))

(declare-fun m!4638603 () Bool)

(assert (=> b!4041952 m!4638603))

(assert (=> b!4041955 m!4636379))

(declare-fun m!4638605 () Bool)

(assert (=> b!4041955 m!4638605))

(assert (=> b!4041958 m!4636373))

(assert (=> b!4041958 m!4637321))

(assert (=> b!4041958 m!4637321))

(assert (=> b!4041958 m!4638603))

(assert (=> b!4041951 m!4636373))

(assert (=> b!4041951 m!4637337))

(assert (=> b!4041951 m!4636379))

(assert (=> b!4041951 m!4637337))

(declare-fun m!4638609 () Bool)

(assert (=> b!4041951 m!4638609))

(assert (=> b!4041951 m!4636373))

(assert (=> b!4041951 m!4637321))

(assert (=> b!4041951 m!4638609))

(assert (=> b!4041951 m!4637321))

(declare-fun m!4638611 () Bool)

(assert (=> b!4041951 m!4638611))

(assert (=> d!1199140 m!4636373))

(assert (=> d!1199140 m!4636375))

(assert (=> d!1199140 m!4636379))

(declare-fun m!4638613 () Bool)

(assert (=> d!1199140 m!4638613))

(assert (=> b!4041961 m!4636373))

(assert (=> b!4041961 m!4637337))

(assert (=> b!4040461 d!1199140))

(declare-fun call!287504 () Regex!11827)

(declare-fun call!287507 () Regex!11827)

(declare-fun e!2507904 () Regex!11827)

(declare-fun b!4042045 () Bool)

(assert (=> b!4042045 (= e!2507904 (Union!11827 (Concat!18980 call!287504 (regTwo!24166 (regex!6922 (rule!9994 token!484)))) call!287507))))

(declare-fun bm!287499 () Bool)

(declare-fun call!287506 () Regex!11827)

(declare-fun call!287505 () Regex!11827)

(assert (=> bm!287499 (= call!287506 call!287505)))

(declare-fun b!4042046 () Bool)

(declare-fun e!2507905 () Regex!11827)

(declare-fun e!2507906 () Regex!11827)

(assert (=> b!4042046 (= e!2507905 e!2507906)))

(declare-fun c!698328 () Bool)

(assert (=> b!4042046 (= c!698328 ((_ is Star!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun b!4042047 () Bool)

(declare-fun e!2507907 () Regex!11827)

(assert (=> b!4042047 (= e!2507907 (ite (= (head!8553 lt!1437799) (c!697933 (regex!6922 (rule!9994 token!484)))) EmptyExpr!11827 EmptyLang!11827))))

(declare-fun b!4042048 () Bool)

(declare-fun c!698327 () Bool)

(assert (=> b!4042048 (= c!698327 ((_ is Union!11827) (regex!6922 (rule!9994 token!484))))))

(assert (=> b!4042048 (= e!2507907 e!2507905)))

(declare-fun b!4042049 () Bool)

(assert (=> b!4042049 (= e!2507904 (Union!11827 (Concat!18980 call!287504 (regTwo!24166 (regex!6922 (rule!9994 token!484)))) EmptyLang!11827))))

(declare-fun b!4042050 () Bool)

(assert (=> b!4042050 (= e!2507905 (Union!11827 call!287505 call!287507))))

(declare-fun bm!287500 () Bool)

(assert (=> bm!287500 (= call!287505 (derivativeStep!3555 (ite c!698327 (regOne!24167 (regex!6922 (rule!9994 token!484))) (ite c!698328 (reg!12156 (regex!6922 (rule!9994 token!484))) (regOne!24166 (regex!6922 (rule!9994 token!484))))) (head!8553 lt!1437799)))))

(declare-fun b!4042052 () Bool)

(declare-fun c!698326 () Bool)

(assert (=> b!4042052 (= c!698326 (nullable!4150 (regOne!24166 (regex!6922 (rule!9994 token!484)))))))

(assert (=> b!4042052 (= e!2507906 e!2507904)))

(declare-fun b!4042054 () Bool)

(declare-fun e!2507908 () Regex!11827)

(assert (=> b!4042054 (= e!2507908 e!2507907)))

(declare-fun c!698329 () Bool)

(assert (=> b!4042054 (= c!698329 ((_ is ElementMatch!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun bm!287502 () Bool)

(assert (=> bm!287502 (= call!287504 call!287506)))

(declare-fun bm!287501 () Bool)

(assert (=> bm!287501 (= call!287507 (derivativeStep!3555 (ite c!698327 (regTwo!24167 (regex!6922 (rule!9994 token!484))) (regTwo!24166 (regex!6922 (rule!9994 token!484)))) (head!8553 lt!1437799)))))

(declare-fun d!1199150 () Bool)

(declare-fun lt!1438451 () Regex!11827)

(assert (=> d!1199150 (validRegex!5350 lt!1438451)))

(assert (=> d!1199150 (= lt!1438451 e!2507908)))

(declare-fun c!698325 () Bool)

(assert (=> d!1199150 (= c!698325 (or ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 token!484))) ((_ is EmptyLang!11827) (regex!6922 (rule!9994 token!484)))))))

(assert (=> d!1199150 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1199150 (= (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 lt!1437799)) lt!1438451)))

(declare-fun b!4042057 () Bool)

(assert (=> b!4042057 (= e!2507908 EmptyLang!11827)))

(declare-fun b!4042058 () Bool)

(assert (=> b!4042058 (= e!2507906 (Concat!18980 call!287506 (regex!6922 (rule!9994 token!484))))))

(assert (= (and d!1199150 c!698325) b!4042057))

(assert (= (and d!1199150 (not c!698325)) b!4042054))

(assert (= (and b!4042054 c!698329) b!4042047))

(assert (= (and b!4042054 (not c!698329)) b!4042048))

(assert (= (and b!4042048 c!698327) b!4042050))

(assert (= (and b!4042048 (not c!698327)) b!4042046))

(assert (= (and b!4042046 c!698328) b!4042058))

(assert (= (and b!4042046 (not c!698328)) b!4042052))

(assert (= (and b!4042052 c!698326) b!4042045))

(assert (= (and b!4042052 (not c!698326)) b!4042049))

(assert (= (or b!4042045 b!4042049) bm!287502))

(assert (= (or b!4042058 bm!287502) bm!287499))

(assert (= (or b!4042050 bm!287499) bm!287500))

(assert (= (or b!4042050 b!4042045) bm!287501))

(assert (=> bm!287500 m!4636371))

(declare-fun m!4638721 () Bool)

(assert (=> bm!287500 m!4638721))

(declare-fun m!4638723 () Bool)

(assert (=> b!4042052 m!4638723))

(assert (=> bm!287501 m!4636371))

(declare-fun m!4638725 () Bool)

(assert (=> bm!287501 m!4638725))

(declare-fun m!4638727 () Bool)

(assert (=> d!1199150 m!4638727))

(assert (=> d!1199150 m!4636383))

(assert (=> b!4040461 d!1199150))

(assert (=> b!4040461 d!1198661))

(assert (=> b!4040461 d!1198552))

(declare-fun d!1199190 () Bool)

(assert (=> d!1199190 (= (list!16100 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))) (list!16102 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))))))

(declare-fun bs!590990 () Bool)

(assert (= bs!590990 d!1199190))

(declare-fun m!4638729 () Bool)

(assert (=> bs!590990 m!4638729))

(assert (=> d!1198284 d!1199190))

(declare-fun d!1199192 () Bool)

(assert (=> d!1199192 (= (list!16100 lt!1437803) (list!16102 (c!697932 lt!1437803)))))

(declare-fun bs!590991 () Bool)

(assert (= bs!590991 d!1199192))

(declare-fun m!4638731 () Bool)

(assert (=> bs!590991 m!4638731))

(assert (=> d!1198284 d!1199192))

(declare-fun d!1199194 () Bool)

(declare-fun dynLambda!18364 (Int BalanceConc!25860) Bool)

(assert (=> d!1199194 (dynLambda!18364 lambda!127385 lt!1437803)))

(declare-fun lt!1438454 () Unit!62457)

(declare-fun choose!24497 (Int BalanceConc!25860) Unit!62457)

(assert (=> d!1199194 (= lt!1438454 (choose!24497 lambda!127385 lt!1437803))))

(assert (=> d!1199194 (Forall!1490 lambda!127385)))

(assert (=> d!1199194 (= (ForallOf!825 lambda!127385 lt!1437803) lt!1438454)))

(declare-fun b_lambda!118043 () Bool)

(assert (=> (not b_lambda!118043) (not d!1199194)))

(declare-fun bs!590992 () Bool)

(assert (= bs!590992 d!1199194))

(declare-fun m!4638737 () Bool)

(assert (=> bs!590992 m!4638737))

(declare-fun m!4638739 () Bool)

(assert (=> bs!590992 m!4638739))

(declare-fun m!4638741 () Bool)

(assert (=> bs!590992 m!4638741))

(assert (=> d!1198284 d!1199194))

(declare-fun d!1199196 () Bool)

(declare-fun lt!1438455 () Int)

(assert (=> d!1199196 (>= lt!1438455 0)))

(declare-fun e!2507919 () Int)

(assert (=> d!1199196 (= lt!1438455 e!2507919)))

(declare-fun c!698330 () Bool)

(assert (=> d!1199196 (= c!698330 ((_ is Nil!43241) lt!1437820))))

(assert (=> d!1199196 (= (size!32325 lt!1437820) lt!1438455)))

(declare-fun b!4042074 () Bool)

(assert (=> b!4042074 (= e!2507919 0)))

(declare-fun b!4042075 () Bool)

(assert (=> b!4042075 (= e!2507919 (+ 1 (size!32325 (t!334994 lt!1437820))))))

(assert (= (and d!1199196 c!698330) b!4042074))

(assert (= (and d!1199196 (not c!698330)) b!4042075))

(declare-fun m!4638743 () Bool)

(assert (=> b!4042075 m!4638743))

(assert (=> b!4040375 d!1199196))

(assert (=> b!4040375 d!1198432))

(declare-fun d!1199198 () Bool)

(declare-fun lt!1438456 () Int)

(assert (=> d!1199198 (>= lt!1438456 0)))

(declare-fun e!2507920 () Int)

(assert (=> d!1199198 (= lt!1438456 e!2507920)))

(declare-fun c!698331 () Bool)

(assert (=> d!1199198 (= c!698331 ((_ is Nil!43241) lt!1437808))))

(assert (=> d!1199198 (= (size!32325 lt!1437808) lt!1438456)))

(declare-fun b!4042076 () Bool)

(assert (=> b!4042076 (= e!2507920 0)))

(declare-fun b!4042077 () Bool)

(assert (=> b!4042077 (= e!2507920 (+ 1 (size!32325 (t!334994 lt!1437808))))))

(assert (= (and d!1199198 c!698331) b!4042076))

(assert (= (and d!1199198 (not c!698331)) b!4042077))

(declare-fun m!4638745 () Bool)

(assert (=> b!4042077 m!4638745))

(assert (=> b!4040375 d!1199198))

(declare-fun b!4042080 () Bool)

(declare-fun res!1646249 () Bool)

(declare-fun e!2507922 () Bool)

(assert (=> b!4042080 (=> (not res!1646249) (not e!2507922))))

(declare-fun lt!1438457 () List!43365)

(assert (=> b!4042080 (= res!1646249 (= (size!32325 lt!1438457) (+ (size!32325 (t!334994 lt!1437800)) (size!32325 (_2!24295 (v!39735 lt!1437813))))))))

(declare-fun d!1199200 () Bool)

(assert (=> d!1199200 e!2507922))

(declare-fun res!1646250 () Bool)

(assert (=> d!1199200 (=> (not res!1646250) (not e!2507922))))

(assert (=> d!1199200 (= res!1646250 (= (content!6577 lt!1438457) ((_ map or) (content!6577 (t!334994 lt!1437800)) (content!6577 (_2!24295 (v!39735 lt!1437813))))))))

(declare-fun e!2507921 () List!43365)

(assert (=> d!1199200 (= lt!1438457 e!2507921)))

(declare-fun c!698332 () Bool)

(assert (=> d!1199200 (= c!698332 ((_ is Nil!43241) (t!334994 lt!1437800)))))

(assert (=> d!1199200 (= (++!11324 (t!334994 lt!1437800) (_2!24295 (v!39735 lt!1437813))) lt!1438457)))

(declare-fun b!4042079 () Bool)

(assert (=> b!4042079 (= e!2507921 (Cons!43241 (h!48661 (t!334994 lt!1437800)) (++!11324 (t!334994 (t!334994 lt!1437800)) (_2!24295 (v!39735 lt!1437813)))))))

(declare-fun b!4042078 () Bool)

(assert (=> b!4042078 (= e!2507921 (_2!24295 (v!39735 lt!1437813)))))

(declare-fun b!4042081 () Bool)

(assert (=> b!4042081 (= e!2507922 (or (not (= (_2!24295 (v!39735 lt!1437813)) Nil!43241)) (= lt!1438457 (t!334994 lt!1437800))))))

(assert (= (and d!1199200 c!698332) b!4042078))

(assert (= (and d!1199200 (not c!698332)) b!4042079))

(assert (= (and d!1199200 res!1646250) b!4042080))

(assert (= (and b!4042080 res!1646249) b!4042081))

(declare-fun m!4638747 () Bool)

(assert (=> b!4042080 m!4638747))

(assert (=> b!4042080 m!4636551))

(assert (=> b!4042080 m!4636359))

(declare-fun m!4638749 () Bool)

(assert (=> d!1199200 m!4638749))

(assert (=> d!1199200 m!4638263))

(assert (=> d!1199200 m!4636365))

(declare-fun m!4638751 () Bool)

(assert (=> b!4042079 m!4638751))

(assert (=> b!4040428 d!1199200))

(declare-fun d!1199202 () Bool)

(assert (=> d!1199202 (= (isEmpty!25808 (tail!6285 lt!1437800)) ((_ is Nil!43241) (tail!6285 lt!1437800)))))

(assert (=> b!4040495 d!1199202))

(declare-fun d!1199204 () Bool)

(assert (=> d!1199204 (= (tail!6285 lt!1437800) (t!334994 lt!1437800))))

(assert (=> b!4040495 d!1199204))

(assert (=> d!1198256 d!1198254))

(declare-fun d!1199206 () Bool)

(assert (=> d!1199206 (ruleValid!2852 thiss!21717 (rule!9994 token!484))))

(assert (=> d!1199206 true))

(declare-fun _$65!1508 () Unit!62457)

(assert (=> d!1199206 (= (choose!24489 thiss!21717 (rule!9994 token!484) rules!2999) _$65!1508)))

(declare-fun bs!590993 () Bool)

(assert (= bs!590993 d!1199206))

(assert (=> bs!590993 m!4636201))

(assert (=> d!1198256 d!1199206))

(declare-fun d!1199208 () Bool)

(declare-fun lt!1438458 () Bool)

(assert (=> d!1199208 (= lt!1438458 (select (content!6578 rules!2999) (rule!9994 token!484)))))

(declare-fun e!2507925 () Bool)

(assert (=> d!1199208 (= lt!1438458 e!2507925)))

(declare-fun res!1646252 () Bool)

(assert (=> d!1199208 (=> (not res!1646252) (not e!2507925))))

(assert (=> d!1199208 (= res!1646252 ((_ is Cons!43243) rules!2999))))

(assert (=> d!1199208 (= (contains!8592 rules!2999 (rule!9994 token!484)) lt!1438458)))

(declare-fun b!4042085 () Bool)

(declare-fun e!2507926 () Bool)

(assert (=> b!4042085 (= e!2507925 e!2507926)))

(declare-fun res!1646251 () Bool)

(assert (=> b!4042085 (=> res!1646251 e!2507926)))

(assert (=> b!4042085 (= res!1646251 (= (h!48663 rules!2999) (rule!9994 token!484)))))

(declare-fun b!4042086 () Bool)

(assert (=> b!4042086 (= e!2507926 (contains!8592 (t!334996 rules!2999) (rule!9994 token!484)))))

(assert (= (and d!1199208 res!1646252) b!4042085))

(assert (= (and b!4042085 (not res!1646251)) b!4042086))

(assert (=> d!1199208 m!4636541))

(declare-fun m!4638759 () Bool)

(assert (=> d!1199208 m!4638759))

(declare-fun m!4638761 () Bool)

(assert (=> b!4042086 m!4638761))

(assert (=> d!1198256 d!1199208))

(declare-fun d!1199210 () Bool)

(assert (=> d!1199210 (= (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))) (isBalanced!3680 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))))

(declare-fun bs!590994 () Bool)

(assert (= bs!590994 d!1199210))

(declare-fun m!4638763 () Bool)

(assert (=> bs!590994 m!4638763))

(assert (=> tb!242911 d!1199210))

(declare-fun d!1199212 () Bool)

(declare-fun lt!1438459 () Int)

(assert (=> d!1199212 (>= lt!1438459 0)))

(declare-fun e!2507932 () Int)

(assert (=> d!1199212 (= lt!1438459 e!2507932)))

(declare-fun c!698333 () Bool)

(assert (=> d!1199212 (= c!698333 ((_ is Nil!43241) (originalCharacters!7522 (_1!24295 (v!39735 lt!1437813)))))))

(assert (=> d!1199212 (= (size!32325 (originalCharacters!7522 (_1!24295 (v!39735 lt!1437813)))) lt!1438459)))

(declare-fun b!4042099 () Bool)

(assert (=> b!4042099 (= e!2507932 0)))

(declare-fun b!4042100 () Bool)

(assert (=> b!4042100 (= e!2507932 (+ 1 (size!32325 (t!334994 (originalCharacters!7522 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (= (and d!1199212 c!698333) b!4042099))

(assert (= (and d!1199212 (not c!698333)) b!4042100))

(declare-fun m!4638765 () Bool)

(assert (=> b!4042100 m!4638765))

(assert (=> d!1198270 d!1199212))

(assert (=> b!4040943 d!1198564))

(declare-fun d!1199214 () Bool)

(declare-fun lt!1438460 () Int)

(assert (=> d!1199214 (>= lt!1438460 0)))

(declare-fun e!2507933 () Int)

(assert (=> d!1199214 (= lt!1438460 e!2507933)))

(declare-fun c!698334 () Bool)

(assert (=> d!1199214 (= c!698334 ((_ is Nil!43241) (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))))))

(assert (=> d!1199214 (= (size!32325 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))) lt!1438460)))

(declare-fun b!4042101 () Bool)

(assert (=> b!4042101 (= e!2507933 0)))

(declare-fun b!4042102 () Bool)

(assert (=> b!4042102 (= e!2507933 (+ 1 (size!32325 (t!334994 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019)))))))))

(assert (= (and d!1199214 c!698334) b!4042101))

(assert (= (and d!1199214 (not c!698334)) b!4042102))

(declare-fun m!4638773 () Bool)

(assert (=> b!4042102 m!4638773))

(assert (=> b!4040943 d!1199214))

(assert (=> d!1198254 d!1199074))

(assert (=> b!4040967 d!1199068))

(assert (=> b!4040967 d!1199070))

(assert (=> b!4040967 d!1198932))

(declare-fun d!1199216 () Bool)

(assert (=> d!1199216 (= suffixResult!105 lt!1437805)))

(assert (=> d!1199216 true))

(declare-fun _$63!1117 () Unit!62457)

(assert (=> d!1199216 (= (choose!24491 lt!1437799 suffixResult!105 lt!1437799 lt!1437805 lt!1437817) _$63!1117)))

(assert (=> d!1198450 d!1199216))

(assert (=> d!1198450 d!1198242))

(declare-fun d!1199218 () Bool)

(declare-fun c!698335 () Bool)

(assert (=> d!1199218 (= c!698335 ((_ is Nil!43241) lt!1437863))))

(declare-fun e!2507936 () (InoxSet C!23840))

(assert (=> d!1199218 (= (content!6577 lt!1437863) e!2507936)))

(declare-fun b!4042111 () Bool)

(assert (=> b!4042111 (= e!2507936 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4042112 () Bool)

(assert (=> b!4042112 (= e!2507936 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437863) true) (content!6577 (t!334994 lt!1437863))))))

(assert (= (and d!1199218 c!698335) b!4042111))

(assert (= (and d!1199218 (not c!698335)) b!4042112))

(declare-fun m!4638775 () Bool)

(assert (=> b!4042112 m!4638775))

(declare-fun m!4638777 () Bool)

(assert (=> b!4042112 m!4638777))

(assert (=> d!1198246 d!1199218))

(assert (=> d!1198246 d!1198720))

(declare-fun d!1199220 () Bool)

(declare-fun c!698336 () Bool)

(assert (=> d!1199220 (= c!698336 ((_ is Nil!43241) newSuffix!27))))

(declare-fun e!2507939 () (InoxSet C!23840))

(assert (=> d!1199220 (= (content!6577 newSuffix!27) e!2507939)))

(declare-fun b!4042118 () Bool)

(assert (=> b!4042118 (= e!2507939 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4042119 () Bool)

(assert (=> b!4042119 (= e!2507939 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 newSuffix!27) true) (content!6577 (t!334994 newSuffix!27))))))

(assert (= (and d!1199220 c!698336) b!4042118))

(assert (= (and d!1199220 (not c!698336)) b!4042119))

(declare-fun m!4638779 () Bool)

(assert (=> b!4042119 m!4638779))

(declare-fun m!4638781 () Bool)

(assert (=> b!4042119 m!4638781))

(assert (=> d!1198246 d!1199220))

(declare-fun d!1199222 () Bool)

(declare-fun lt!1438461 () Int)

(assert (=> d!1199222 (>= lt!1438461 0)))

(declare-fun e!2507941 () Int)

(assert (=> d!1199222 (= lt!1438461 e!2507941)))

(declare-fun c!698337 () Bool)

(assert (=> d!1199222 (= c!698337 ((_ is Nil!43241) lt!1438040))))

(assert (=> d!1199222 (= (size!32325 lt!1438040) lt!1438461)))

(declare-fun b!4042124 () Bool)

(assert (=> b!4042124 (= e!2507941 0)))

(declare-fun b!4042125 () Bool)

(assert (=> b!4042125 (= e!2507941 (+ 1 (size!32325 (t!334994 lt!1438040))))))

(assert (= (and d!1199222 c!698337) b!4042124))

(assert (= (and d!1199222 (not c!698337)) b!4042125))

(declare-fun m!4638783 () Bool)

(assert (=> b!4042125 m!4638783))

(assert (=> b!4040986 d!1199222))

(assert (=> b!4040986 d!1198432))

(assert (=> b!4040986 d!1198728))

(declare-fun b!4042127 () Bool)

(declare-fun e!2507945 () Bool)

(assert (=> b!4042127 (= e!2507945 (inv!15 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))))))

(declare-fun d!1199224 () Bool)

(declare-fun c!698339 () Bool)

(assert (=> d!1199224 (= c!698339 ((_ is IntegerValue!21456) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))))))

(declare-fun e!2507944 () Bool)

(assert (=> d!1199224 (= (inv!21 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))) e!2507944)))

(declare-fun b!4042128 () Bool)

(assert (=> b!4042128 (= e!2507944 (inv!16 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))))))

(declare-fun b!4042129 () Bool)

(declare-fun e!2507943 () Bool)

(assert (=> b!4042129 (= e!2507943 (inv!17 (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))))))

(declare-fun b!4042130 () Bool)

(assert (=> b!4042130 (= e!2507944 e!2507943)))

(declare-fun c!698338 () Bool)

(assert (=> b!4042130 (= c!698338 ((_ is IntegerValue!21457) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799))))))

(declare-fun b!4042131 () Bool)

(declare-fun res!1646253 () Bool)

(assert (=> b!4042131 (=> res!1646253 e!2507945)))

(assert (=> b!4042131 (= res!1646253 (not ((_ is IntegerValue!21458) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 token!484))) (seqFromList!5139 lt!1437799)))))))

(assert (=> b!4042131 (= e!2507943 e!2507945)))

(assert (= (and d!1199224 c!698339) b!4042128))

(assert (= (and d!1199224 (not c!698339)) b!4042130))

(assert (= (and b!4042130 c!698338) b!4042129))

(assert (= (and b!4042130 (not c!698338)) b!4042131))

(assert (= (and b!4042131 (not res!1646253)) b!4042127))

(declare-fun m!4638785 () Bool)

(assert (=> b!4042127 m!4638785))

(declare-fun m!4638787 () Bool)

(assert (=> b!4042128 m!4638787))

(declare-fun m!4638789 () Bool)

(assert (=> b!4042129 m!4638789))

(assert (=> tb!242897 d!1199224))

(assert (=> b!4040535 d!1199098))

(declare-fun b!4042142 () Bool)

(declare-fun res!1646254 () Bool)

(declare-fun e!2507949 () Bool)

(assert (=> b!4042142 (=> (not res!1646254) (not e!2507949))))

(declare-fun lt!1438462 () List!43365)

(assert (=> b!4042142 (= res!1646254 (= (size!32325 lt!1438462) (+ (size!32325 lt!1437799) (size!32325 (++!11324 lt!1437807 suffix!1299)))))))

(declare-fun d!1199226 () Bool)

(assert (=> d!1199226 e!2507949))

(declare-fun res!1646255 () Bool)

(assert (=> d!1199226 (=> (not res!1646255) (not e!2507949))))

(assert (=> d!1199226 (= res!1646255 (= (content!6577 lt!1438462) ((_ map or) (content!6577 lt!1437799) (content!6577 (++!11324 lt!1437807 suffix!1299)))))))

(declare-fun e!2507948 () List!43365)

(assert (=> d!1199226 (= lt!1438462 e!2507948)))

(declare-fun c!698340 () Bool)

(assert (=> d!1199226 (= c!698340 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1199226 (= (++!11324 lt!1437799 (++!11324 lt!1437807 suffix!1299)) lt!1438462)))

(declare-fun b!4042141 () Bool)

(assert (=> b!4042141 (= e!2507948 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) (++!11324 lt!1437807 suffix!1299))))))

(declare-fun b!4042140 () Bool)

(assert (=> b!4042140 (= e!2507948 (++!11324 lt!1437807 suffix!1299))))

(declare-fun b!4042143 () Bool)

(assert (=> b!4042143 (= e!2507949 (or (not (= (++!11324 lt!1437807 suffix!1299) Nil!43241)) (= lt!1438462 lt!1437799)))))

(assert (= (and d!1199226 c!698340) b!4042140))

(assert (= (and d!1199226 (not c!698340)) b!4042141))

(assert (= (and d!1199226 res!1646255) b!4042142))

(assert (= (and b!4042142 res!1646254) b!4042143))

(declare-fun m!4638791 () Bool)

(assert (=> b!4042142 m!4638791))

(assert (=> b!4042142 m!4636145))

(assert (=> b!4042142 m!4636183))

(declare-fun m!4638793 () Bool)

(assert (=> b!4042142 m!4638793))

(declare-fun m!4638795 () Bool)

(assert (=> d!1199226 m!4638795))

(assert (=> d!1199226 m!4636275))

(assert (=> d!1199226 m!4636183))

(declare-fun m!4638797 () Bool)

(assert (=> d!1199226 m!4638797))

(assert (=> b!4042141 m!4636183))

(declare-fun m!4638799 () Bool)

(assert (=> b!4042141 m!4638799))

(assert (=> d!1198190 d!1199226))

(declare-fun b!4042153 () Bool)

(declare-fun res!1646256 () Bool)

(declare-fun e!2507954 () Bool)

(assert (=> b!4042153 (=> (not res!1646256) (not e!2507954))))

(declare-fun lt!1438463 () List!43365)

(assert (=> b!4042153 (= res!1646256 (= (size!32325 lt!1438463) (+ (size!32325 (++!11324 lt!1437799 lt!1437807)) (size!32325 suffix!1299))))))

(declare-fun d!1199228 () Bool)

(assert (=> d!1199228 e!2507954))

(declare-fun res!1646257 () Bool)

(assert (=> d!1199228 (=> (not res!1646257) (not e!2507954))))

(assert (=> d!1199228 (= res!1646257 (= (content!6577 lt!1438463) ((_ map or) (content!6577 (++!11324 lt!1437799 lt!1437807)) (content!6577 suffix!1299))))))

(declare-fun e!2507953 () List!43365)

(assert (=> d!1199228 (= lt!1438463 e!2507953)))

(declare-fun c!698341 () Bool)

(assert (=> d!1199228 (= c!698341 ((_ is Nil!43241) (++!11324 lt!1437799 lt!1437807)))))

(assert (=> d!1199228 (= (++!11324 (++!11324 lt!1437799 lt!1437807) suffix!1299) lt!1438463)))

(declare-fun b!4042152 () Bool)

(assert (=> b!4042152 (= e!2507953 (Cons!43241 (h!48661 (++!11324 lt!1437799 lt!1437807)) (++!11324 (t!334994 (++!11324 lt!1437799 lt!1437807)) suffix!1299)))))

(declare-fun b!4042151 () Bool)

(assert (=> b!4042151 (= e!2507953 suffix!1299)))

(declare-fun b!4042154 () Bool)

(assert (=> b!4042154 (= e!2507954 (or (not (= suffix!1299 Nil!43241)) (= lt!1438463 (++!11324 lt!1437799 lt!1437807))))))

(assert (= (and d!1199228 c!698341) b!4042151))

(assert (= (and d!1199228 (not c!698341)) b!4042152))

(assert (= (and d!1199228 res!1646257) b!4042153))

(assert (= (and b!4042153 res!1646256) b!4042154))

(declare-fun m!4638807 () Bool)

(assert (=> b!4042153 m!4638807))

(assert (=> b!4042153 m!4636131))

(declare-fun m!4638809 () Bool)

(assert (=> b!4042153 m!4638809))

(assert (=> b!4042153 m!4636139))

(declare-fun m!4638811 () Bool)

(assert (=> d!1199228 m!4638811))

(assert (=> d!1199228 m!4636131))

(declare-fun m!4638813 () Bool)

(assert (=> d!1199228 m!4638813))

(assert (=> d!1199228 m!4636289))

(declare-fun m!4638815 () Bool)

(assert (=> b!4042152 m!4638815))

(assert (=> d!1198190 d!1199228))

(assert (=> d!1198190 d!1198460))

(assert (=> d!1198190 d!1198188))

(declare-fun d!1199230 () Bool)

(assert (=> d!1199230 (= (++!11324 (++!11324 lt!1437799 lt!1437807) suffix!1299) (++!11324 lt!1437799 (++!11324 lt!1437807 suffix!1299)))))

(assert (=> d!1199230 true))

(declare-fun _$52!2316 () Unit!62457)

(assert (=> d!1199230 (= (choose!24482 lt!1437799 lt!1437807 suffix!1299) _$52!2316)))

(declare-fun bs!590996 () Bool)

(assert (= bs!590996 d!1199230))

(assert (=> bs!590996 m!4636131))

(assert (=> bs!590996 m!4636131))

(assert (=> bs!590996 m!4636305))

(assert (=> bs!590996 m!4636183))

(assert (=> bs!590996 m!4636183))

(assert (=> bs!590996 m!4636303))

(assert (=> d!1198190 d!1199230))

(declare-fun d!1199234 () Bool)

(declare-fun lt!1438464 () Int)

(assert (=> d!1199234 (>= lt!1438464 0)))

(declare-fun e!2507956 () Int)

(assert (=> d!1199234 (= lt!1438464 e!2507956)))

(declare-fun c!698342 () Bool)

(assert (=> d!1199234 (= c!698342 ((_ is Nil!43241) (_2!24295 (get!14189 lt!1438032))))))

(assert (=> d!1199234 (= (size!32325 (_2!24295 (get!14189 lt!1438032))) lt!1438464)))

(declare-fun b!4042156 () Bool)

(assert (=> b!4042156 (= e!2507956 0)))

(declare-fun b!4042157 () Bool)

(assert (=> b!4042157 (= e!2507956 (+ 1 (size!32325 (t!334994 (_2!24295 (get!14189 lt!1438032))))))))

(assert (= (and d!1199234 c!698342) b!4042156))

(assert (= (and d!1199234 (not c!698342)) b!4042157))

(declare-fun m!4638817 () Bool)

(assert (=> b!4042157 m!4638817))

(assert (=> b!4040974 d!1199234))

(assert (=> b!4040974 d!1198932))

(assert (=> b!4040974 d!1199134))

(declare-fun b!4042160 () Bool)

(declare-fun res!1646258 () Bool)

(declare-fun e!2507958 () Bool)

(assert (=> b!4042160 (=> (not res!1646258) (not e!2507958))))

(declare-fun lt!1438465 () List!43365)

(assert (=> b!4042160 (= res!1646258 (= (size!32325 lt!1438465) (+ (size!32325 lt!1437799) (size!32325 lt!1437832))))))

(declare-fun d!1199236 () Bool)

(assert (=> d!1199236 e!2507958))

(declare-fun res!1646259 () Bool)

(assert (=> d!1199236 (=> (not res!1646259) (not e!2507958))))

(assert (=> d!1199236 (= res!1646259 (= (content!6577 lt!1438465) ((_ map or) (content!6577 lt!1437799) (content!6577 lt!1437832))))))

(declare-fun e!2507957 () List!43365)

(assert (=> d!1199236 (= lt!1438465 e!2507957)))

(declare-fun c!698343 () Bool)

(assert (=> d!1199236 (= c!698343 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1199236 (= (++!11324 lt!1437799 lt!1437832) lt!1438465)))

(declare-fun b!4042159 () Bool)

(assert (=> b!4042159 (= e!2507957 (Cons!43241 (h!48661 lt!1437799) (++!11324 (t!334994 lt!1437799) lt!1437832)))))

(declare-fun b!4042158 () Bool)

(assert (=> b!4042158 (= e!2507957 lt!1437832)))

(declare-fun b!4042161 () Bool)

(assert (=> b!4042161 (= e!2507958 (or (not (= lt!1437832 Nil!43241)) (= lt!1438465 lt!1437799)))))

(assert (= (and d!1199236 c!698343) b!4042158))

(assert (= (and d!1199236 (not c!698343)) b!4042159))

(assert (= (and d!1199236 res!1646259) b!4042160))

(assert (= (and b!4042160 res!1646258) b!4042161))

(declare-fun m!4638819 () Bool)

(assert (=> b!4042160 m!4638819))

(assert (=> b!4042160 m!4636145))

(declare-fun m!4638821 () Bool)

(assert (=> b!4042160 m!4638821))

(declare-fun m!4638823 () Bool)

(assert (=> d!1199236 m!4638823))

(assert (=> d!1199236 m!4636275))

(declare-fun m!4638825 () Bool)

(assert (=> d!1199236 m!4638825))

(declare-fun m!4638827 () Bool)

(assert (=> b!4042159 m!4638827))

(assert (=> d!1198194 d!1199236))

(assert (=> d!1198194 d!1198568))

(assert (=> d!1198194 d!1198432))

(declare-fun b!4042164 () Bool)

(declare-fun res!1646260 () Bool)

(declare-fun e!2507960 () Bool)

(assert (=> b!4042164 (=> (not res!1646260) (not e!2507960))))

(declare-fun lt!1438466 () List!43365)

(assert (=> b!4042164 (= res!1646260 (= (size!32325 lt!1438466) (+ (size!32325 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) (size!32325 (_2!24295 (get!14189 lt!1438019))))))))

(declare-fun d!1199238 () Bool)

(assert (=> d!1199238 e!2507960))

(declare-fun res!1646261 () Bool)

(assert (=> d!1199238 (=> (not res!1646261) (not e!2507960))))

(assert (=> d!1199238 (= res!1646261 (= (content!6577 lt!1438466) ((_ map or) (content!6577 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) (content!6577 (_2!24295 (get!14189 lt!1438019))))))))

(declare-fun e!2507959 () List!43365)

(assert (=> d!1199238 (= lt!1438466 e!2507959)))

(declare-fun c!698344 () Bool)

(assert (=> d!1199238 (= c!698344 ((_ is Nil!43241) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))))))

(assert (=> d!1199238 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))) (_2!24295 (get!14189 lt!1438019))) lt!1438466)))

(declare-fun b!4042163 () Bool)

(assert (=> b!4042163 (= e!2507959 (Cons!43241 (h!48661 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) (++!11324 (t!334994 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) (_2!24295 (get!14189 lt!1438019)))))))

(declare-fun b!4042162 () Bool)

(assert (=> b!4042162 (= e!2507959 (_2!24295 (get!14189 lt!1438019)))))

(declare-fun b!4042165 () Bool)

(assert (=> b!4042165 (= e!2507960 (or (not (= (_2!24295 (get!14189 lt!1438019)) Nil!43241)) (= lt!1438466 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))))))))

(assert (= (and d!1199238 c!698344) b!4042162))

(assert (= (and d!1199238 (not c!698344)) b!4042163))

(assert (= (and d!1199238 res!1646261) b!4042164))

(assert (= (and b!4042164 res!1646260) b!4042165))

(declare-fun m!4638829 () Bool)

(assert (=> b!4042164 m!4638829))

(assert (=> b!4042164 m!4637009))

(declare-fun m!4638831 () Bool)

(assert (=> b!4042164 m!4638831))

(assert (=> b!4042164 m!4637019))

(declare-fun m!4638833 () Bool)

(assert (=> d!1199238 m!4638833))

(assert (=> d!1199238 m!4637009))

(declare-fun m!4638835 () Bool)

(assert (=> d!1199238 m!4638835))

(declare-fun m!4638837 () Bool)

(assert (=> d!1199238 m!4638837))

(declare-fun m!4638839 () Bool)

(assert (=> b!4042163 m!4638839))

(assert (=> b!4040937 d!1199238))

(declare-fun d!1199240 () Bool)

(assert (=> d!1199240 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))) (list!16102 (c!697932 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))))))

(declare-fun bs!590997 () Bool)

(assert (= bs!590997 d!1199240))

(declare-fun m!4638841 () Bool)

(assert (=> bs!590997 m!4638841))

(assert (=> b!4040937 d!1199240))

(declare-fun d!1199242 () Bool)

(declare-fun lt!1438467 () BalanceConc!25860)

(assert (=> d!1199242 (= (list!16100 lt!1438467) (originalCharacters!7522 (_1!24295 (get!14189 lt!1438019))))))

(assert (=> d!1199242 (= lt!1438467 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019))))) (value!217911 (_1!24295 (get!14189 lt!1438019)))))))

(assert (=> d!1199242 (= (charsOf!4738 (_1!24295 (get!14189 lt!1438019))) lt!1438467)))

(declare-fun b_lambda!118065 () Bool)

(assert (=> (not b_lambda!118065) (not d!1199242)))

(declare-fun t!335178 () Bool)

(declare-fun tb!243041 () Bool)

(assert (=> (and b!4040354 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335178) tb!243041))

(declare-fun b!4042166 () Bool)

(declare-fun e!2507961 () Bool)

(declare-fun tp!1226976 () Bool)

(assert (=> b!4042166 (= e!2507961 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019))))) (value!217911 (_1!24295 (get!14189 lt!1438019)))))) tp!1226976))))

(declare-fun result!294560 () Bool)

(assert (=> tb!243041 (= result!294560 (and (inv!57793 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019))))) (value!217911 (_1!24295 (get!14189 lt!1438019))))) e!2507961))))

(assert (= tb!243041 b!4042166))

(declare-fun m!4638843 () Bool)

(assert (=> b!4042166 m!4638843))

(declare-fun m!4638845 () Bool)

(assert (=> tb!243041 m!4638845))

(assert (=> d!1199242 t!335178))

(declare-fun b_and!310769 () Bool)

(assert (= b_and!310743 (and (=> t!335178 result!294560) b_and!310769)))

(declare-fun tb!243043 () Bool)

(declare-fun t!335180 () Bool)

(assert (=> (and b!4040350 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335180) tb!243043))

(declare-fun result!294562 () Bool)

(assert (= result!294562 result!294560))

(assert (=> d!1199242 t!335180))

(declare-fun b_and!310771 () Bool)

(assert (= b_and!310745 (and (=> t!335180 result!294562) b_and!310771)))

(declare-fun tb!243045 () Bool)

(declare-fun t!335182 () Bool)

(assert (=> (and b!4041004 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335182) tb!243045))

(declare-fun result!294564 () Bool)

(assert (= result!294564 result!294560))

(assert (=> d!1199242 t!335182))

(declare-fun b_and!310773 () Bool)

(assert (= b_and!310747 (and (=> t!335182 result!294564) b_and!310773)))

(declare-fun m!4638847 () Bool)

(assert (=> d!1199242 m!4638847))

(declare-fun m!4638849 () Bool)

(assert (=> d!1199242 m!4638849))

(assert (=> b!4040937 d!1199242))

(assert (=> b!4040937 d!1198564))

(assert (=> b!4040471 d!1198661))

(declare-fun b!4042169 () Bool)

(declare-fun e!2507962 () Bool)

(assert (=> b!4042169 (= e!2507962 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 (++!11324 lt!1437799 lt!1437805))))))

(declare-fun b!4042170 () Bool)

(declare-fun e!2507964 () Bool)

(assert (=> b!4042170 (= e!2507964 (>= (size!32325 (++!11324 lt!1437799 lt!1437805)) (size!32325 lt!1437799)))))

(declare-fun b!4042168 () Bool)

(declare-fun res!1646265 () Bool)

(assert (=> b!4042168 (=> (not res!1646265) (not e!2507962))))

(assert (=> b!4042168 (= res!1646265 (= (head!8553 lt!1437799) (head!8553 (++!11324 lt!1437799 lt!1437805))))))

(declare-fun d!1199244 () Bool)

(assert (=> d!1199244 e!2507964))

(declare-fun res!1646264 () Bool)

(assert (=> d!1199244 (=> res!1646264 e!2507964)))

(declare-fun lt!1438468 () Bool)

(assert (=> d!1199244 (= res!1646264 (not lt!1438468))))

(declare-fun e!2507963 () Bool)

(assert (=> d!1199244 (= lt!1438468 e!2507963)))

(declare-fun res!1646263 () Bool)

(assert (=> d!1199244 (=> res!1646263 e!2507963)))

(assert (=> d!1199244 (= res!1646263 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1199244 (= (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 lt!1437805)) lt!1438468)))

(declare-fun b!4042167 () Bool)

(assert (=> b!4042167 (= e!2507963 e!2507962)))

(declare-fun res!1646262 () Bool)

(assert (=> b!4042167 (=> (not res!1646262) (not e!2507962))))

(assert (=> b!4042167 (= res!1646262 (not ((_ is Nil!43241) (++!11324 lt!1437799 lt!1437805))))))

(assert (= (and d!1199244 (not res!1646263)) b!4042167))

(assert (= (and b!4042167 res!1646262) b!4042168))

(assert (= (and b!4042168 res!1646265) b!4042169))

(assert (= (and d!1199244 (not res!1646264)) b!4042170))

(assert (=> b!4042169 m!4636373))

(assert (=> b!4042169 m!4636259))

(declare-fun m!4638851 () Bool)

(assert (=> b!4042169 m!4638851))

(assert (=> b!4042169 m!4636373))

(assert (=> b!4042169 m!4638851))

(declare-fun m!4638853 () Bool)

(assert (=> b!4042169 m!4638853))

(assert (=> b!4042170 m!4636259))

(declare-fun m!4638855 () Bool)

(assert (=> b!4042170 m!4638855))

(assert (=> b!4042170 m!4636145))

(assert (=> b!4042168 m!4636371))

(assert (=> b!4042168 m!4636259))

(declare-fun m!4638857 () Bool)

(assert (=> b!4042168 m!4638857))

(assert (=> d!1198454 d!1199244))

(assert (=> d!1198454 d!1198192))

(declare-fun d!1199246 () Bool)

(assert (=> d!1199246 (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 lt!1437805))))

(assert (=> d!1199246 true))

(declare-fun _$46!1770 () Unit!62457)

(assert (=> d!1199246 (= (choose!24487 lt!1437799 lt!1437805) _$46!1770)))

(declare-fun bs!590998 () Bool)

(assert (= bs!590998 d!1199246))

(assert (=> bs!590998 m!4636259))

(assert (=> bs!590998 m!4636259))

(assert (=> bs!590998 m!4637115))

(assert (=> d!1198454 d!1199246))

(assert (=> d!1198268 d!1198258))

(declare-fun b!4042173 () Bool)

(declare-fun e!2507965 () Bool)

(assert (=> b!4042173 (= e!2507965 (isPrefix!4009 (tail!6285 (tail!6285 prefix!494)) (tail!6285 (tail!6285 lt!1437817))))))

(declare-fun b!4042174 () Bool)

(declare-fun e!2507967 () Bool)

(assert (=> b!4042174 (= e!2507967 (>= (size!32325 (tail!6285 lt!1437817)) (size!32325 (tail!6285 prefix!494))))))

(declare-fun b!4042172 () Bool)

(declare-fun res!1646269 () Bool)

(assert (=> b!4042172 (=> (not res!1646269) (not e!2507965))))

(assert (=> b!4042172 (= res!1646269 (= (head!8553 (tail!6285 prefix!494)) (head!8553 (tail!6285 lt!1437817))))))

(declare-fun d!1199248 () Bool)

(assert (=> d!1199248 e!2507967))

(declare-fun res!1646268 () Bool)

(assert (=> d!1199248 (=> res!1646268 e!2507967)))

(declare-fun lt!1438469 () Bool)

(assert (=> d!1199248 (= res!1646268 (not lt!1438469))))

(declare-fun e!2507966 () Bool)

(assert (=> d!1199248 (= lt!1438469 e!2507966)))

(declare-fun res!1646267 () Bool)

(assert (=> d!1199248 (=> res!1646267 e!2507966)))

(assert (=> d!1199248 (= res!1646267 ((_ is Nil!43241) (tail!6285 prefix!494)))))

(assert (=> d!1199248 (= (isPrefix!4009 (tail!6285 prefix!494) (tail!6285 lt!1437817)) lt!1438469)))

(declare-fun b!4042171 () Bool)

(assert (=> b!4042171 (= e!2507966 e!2507965)))

(declare-fun res!1646266 () Bool)

(assert (=> b!4042171 (=> (not res!1646266) (not e!2507965))))

(assert (=> b!4042171 (= res!1646266 (not ((_ is Nil!43241) (tail!6285 lt!1437817))))))

(assert (= (and d!1199248 (not res!1646267)) b!4042171))

(assert (= (and b!4042171 res!1646266) b!4042172))

(assert (= (and b!4042172 res!1646269) b!4042173))

(assert (= (and d!1199248 (not res!1646268)) b!4042174))

(assert (=> b!4042173 m!4636425))

(assert (=> b!4042173 m!4637325))

(assert (=> b!4042173 m!4636327))

(assert (=> b!4042173 m!4638283))

(assert (=> b!4042173 m!4637325))

(assert (=> b!4042173 m!4638283))

(declare-fun m!4638859 () Bool)

(assert (=> b!4042173 m!4638859))

(assert (=> b!4042174 m!4636327))

(assert (=> b!4042174 m!4638281))

(assert (=> b!4042174 m!4636425))

(assert (=> b!4042174 m!4637331))

(assert (=> b!4042172 m!4636425))

(assert (=> b!4042172 m!4637339))

(assert (=> b!4042172 m!4636327))

(assert (=> b!4042172 m!4638555))

(assert (=> b!4040511 d!1199248))

(assert (=> b!4040511 d!1198556))

(assert (=> b!4040511 d!1198970))

(assert (=> b!4040518 d!1198661))

(assert (=> b!4040518 d!1198592))

(declare-fun b!4042177 () Bool)

(declare-fun e!2507968 () Bool)

(assert (=> b!4042177 (= e!2507968 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437799)) (tail!6285 (tail!6285 lt!1437802))))))

(declare-fun b!4042178 () Bool)

(declare-fun e!2507970 () Bool)

(assert (=> b!4042178 (= e!2507970 (>= (size!32325 (tail!6285 lt!1437802)) (size!32325 (tail!6285 lt!1437799))))))

(declare-fun b!4042176 () Bool)

(declare-fun res!1646273 () Bool)

(assert (=> b!4042176 (=> (not res!1646273) (not e!2507968))))

(assert (=> b!4042176 (= res!1646273 (= (head!8553 (tail!6285 lt!1437799)) (head!8553 (tail!6285 lt!1437802))))))

(declare-fun d!1199250 () Bool)

(assert (=> d!1199250 e!2507970))

(declare-fun res!1646272 () Bool)

(assert (=> d!1199250 (=> res!1646272 e!2507970)))

(declare-fun lt!1438470 () Bool)

(assert (=> d!1199250 (= res!1646272 (not lt!1438470))))

(declare-fun e!2507969 () Bool)

(assert (=> d!1199250 (= lt!1438470 e!2507969)))

(declare-fun res!1646271 () Bool)

(assert (=> d!1199250 (=> res!1646271 e!2507969)))

(assert (=> d!1199250 (= res!1646271 ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> d!1199250 (= (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437802)) lt!1438470)))

(declare-fun b!4042175 () Bool)

(assert (=> b!4042175 (= e!2507969 e!2507968)))

(declare-fun res!1646270 () Bool)

(assert (=> b!4042175 (=> (not res!1646270) (not e!2507968))))

(assert (=> b!4042175 (= res!1646270 (not ((_ is Nil!43241) (tail!6285 lt!1437802))))))

(assert (= (and d!1199250 (not res!1646271)) b!4042175))

(assert (= (and b!4042175 res!1646270) b!4042176))

(assert (= (and b!4042176 res!1646273) b!4042177))

(assert (= (and d!1199250 (not res!1646272)) b!4042178))

(assert (=> b!4042177 m!4636373))

(assert (=> b!4042177 m!4637321))

(assert (=> b!4042177 m!4636435))

(declare-fun m!4638861 () Bool)

(assert (=> b!4042177 m!4638861))

(assert (=> b!4042177 m!4637321))

(assert (=> b!4042177 m!4638861))

(declare-fun m!4638863 () Bool)

(assert (=> b!4042177 m!4638863))

(assert (=> b!4042178 m!4636435))

(declare-fun m!4638865 () Bool)

(assert (=> b!4042178 m!4638865))

(assert (=> b!4042178 m!4636373))

(assert (=> b!4042178 m!4637335))

(assert (=> b!4042176 m!4636373))

(assert (=> b!4042176 m!4637337))

(assert (=> b!4042176 m!4636435))

(declare-fun m!4638867 () Bool)

(assert (=> b!4042176 m!4638867))

(assert (=> b!4040515 d!1199250))

(assert (=> b!4040515 d!1198552))

(declare-fun d!1199252 () Bool)

(assert (=> d!1199252 (= (tail!6285 lt!1437802) (t!334994 lt!1437802))))

(assert (=> b!4040515 d!1199252))

(declare-fun d!1199254 () Bool)

(assert (=> d!1199254 (= (isEmpty!25811 lt!1438019) (not ((_ is Some!9335) lt!1438019)))))

(assert (=> d!1198416 d!1199254))

(declare-fun d!1199256 () Bool)

(assert (=> d!1199256 (= (isEmpty!25808 (_1!24297 lt!1438018)) ((_ is Nil!43241) (_1!24297 lt!1438018)))))

(assert (=> d!1198416 d!1199256))

(declare-fun d!1199258 () Bool)

(declare-fun lt!1438488 () tuple2!42326)

(assert (=> d!1199258 (= (++!11324 (_1!24297 lt!1438488) (_2!24297 lt!1438488)) lt!1437817)))

(declare-fun sizeTr!274 (List!43365 Int) Int)

(assert (=> d!1199258 (= lt!1438488 (findLongestMatchInner!1387 (regex!6922 (rule!9994 token!484)) Nil!43241 0 lt!1437817 lt!1437817 (sizeTr!274 lt!1437817 0)))))

(declare-fun lt!1438489 () Unit!62457)

(declare-fun lt!1438492 () Unit!62457)

(assert (=> d!1199258 (= lt!1438489 lt!1438492)))

(declare-fun lt!1438491 () List!43365)

(declare-fun lt!1438487 () Int)

(assert (=> d!1199258 (= (sizeTr!274 lt!1438491 lt!1438487) (+ (size!32325 lt!1438491) lt!1438487))))

(declare-fun lemmaSizeTrEqualsSize!273 (List!43365 Int) Unit!62457)

(assert (=> d!1199258 (= lt!1438492 (lemmaSizeTrEqualsSize!273 lt!1438491 lt!1438487))))

(assert (=> d!1199258 (= lt!1438487 0)))

(assert (=> d!1199258 (= lt!1438491 Nil!43241)))

(declare-fun lt!1438493 () Unit!62457)

(declare-fun lt!1438490 () Unit!62457)

(assert (=> d!1199258 (= lt!1438493 lt!1438490)))

(declare-fun lt!1438494 () Int)

(assert (=> d!1199258 (= (sizeTr!274 lt!1437817 lt!1438494) (+ (size!32325 lt!1437817) lt!1438494))))

(assert (=> d!1199258 (= lt!1438490 (lemmaSizeTrEqualsSize!273 lt!1437817 lt!1438494))))

(assert (=> d!1199258 (= lt!1438494 0)))

(assert (=> d!1199258 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1199258 (= (findLongestMatch!1300 (regex!6922 (rule!9994 token!484)) lt!1437817) lt!1438488)))

(declare-fun bs!590999 () Bool)

(assert (= bs!590999 d!1199258))

(declare-fun m!4638869 () Bool)

(assert (=> bs!590999 m!4638869))

(declare-fun m!4638871 () Bool)

(assert (=> bs!590999 m!4638871))

(declare-fun m!4638873 () Bool)

(assert (=> bs!590999 m!4638873))

(assert (=> bs!590999 m!4636383))

(declare-fun m!4638875 () Bool)

(assert (=> bs!590999 m!4638875))

(declare-fun m!4638877 () Bool)

(assert (=> bs!590999 m!4638877))

(declare-fun m!4638879 () Bool)

(assert (=> bs!590999 m!4638879))

(declare-fun m!4638881 () Bool)

(assert (=> bs!590999 m!4638881))

(assert (=> bs!590999 m!4636325))

(declare-fun m!4638883 () Bool)

(assert (=> bs!590999 m!4638883))

(assert (=> bs!590999 m!4638879))

(assert (=> d!1198416 d!1199258))

(assert (=> d!1198416 d!1198254))

(assert (=> d!1198466 d!1198464))

(declare-fun d!1199260 () Bool)

(assert (=> d!1199260 (isPrefix!4009 lt!1437799 prefix!494)))

(assert (=> d!1199260 true))

(declare-fun _$69!292 () Unit!62457)

(assert (=> d!1199260 (= (choose!24494 prefix!494 lt!1437799 lt!1437817) _$69!292)))

(declare-fun bs!591000 () Bool)

(assert (= bs!591000 d!1199260))

(assert (=> bs!591000 m!4636135))

(assert (=> d!1198466 d!1199260))

(assert (=> d!1198466 d!1198236))

(declare-fun bs!591001 () Bool)

(declare-fun d!1199262 () Bool)

(assert (= bs!591001 (and d!1199262 d!1198284)))

(declare-fun lambda!127419 () Int)

(assert (=> bs!591001 (= (and (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (= lambda!127419 lambda!127385))))

(declare-fun bs!591002 () Bool)

(assert (= bs!591002 (and d!1199262 d!1198772)))

(assert (=> bs!591002 (= (and (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (= lambda!127419 lambda!127399))))

(declare-fun bs!591003 () Bool)

(assert (= bs!591003 (and d!1199262 d!1198796)))

(assert (=> bs!591003 (= (and (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (= lambda!127419 lambda!127400))))

(declare-fun bs!591004 () Bool)

(assert (= bs!591004 (and d!1199262 d!1198964)))

(assert (=> bs!591004 (= (and (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (= lambda!127419 lambda!127406))))

(assert (=> d!1199262 true))

(assert (=> d!1199262 (< (dynLambda!18362 order!22649 (toChars!9321 (transformation!6922 (h!48663 rules!2999)))) (dynLambda!18361 order!22647 lambda!127419))))

(assert (=> d!1199262 true))

(assert (=> d!1199262 (< (dynLambda!18360 order!22645 (toValue!9462 (transformation!6922 (h!48663 rules!2999)))) (dynLambda!18361 order!22647 lambda!127419))))

(assert (=> d!1199262 (= (semiInverseModEq!2958 (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (h!48663 rules!2999)))) (Forall!1490 lambda!127419))))

(declare-fun bs!591005 () Bool)

(assert (= bs!591005 d!1199262))

(declare-fun m!4638885 () Bool)

(assert (=> bs!591005 m!4638885))

(assert (=> d!1198234 d!1199262))

(declare-fun d!1199264 () Bool)

(assert (=> d!1199264 (= (list!16100 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))) (list!16102 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))))))

(declare-fun bs!591006 () Bool)

(assert (= bs!591006 d!1199264))

(declare-fun m!4638887 () Bool)

(assert (=> bs!591006 m!4638887))

(assert (=> b!4040965 d!1199264))

(declare-fun d!1199266 () Bool)

(declare-fun lt!1438495 () Int)

(assert (=> d!1199266 (>= lt!1438495 0)))

(declare-fun e!2507971 () Int)

(assert (=> d!1199266 (= lt!1438495 e!2507971)))

(declare-fun c!698345 () Bool)

(assert (=> d!1199266 (= c!698345 ((_ is Nil!43241) lt!1437865))))

(assert (=> d!1199266 (= (size!32325 lt!1437865) lt!1438495)))

(declare-fun b!4042179 () Bool)

(assert (=> b!4042179 (= e!2507971 0)))

(declare-fun b!4042180 () Bool)

(assert (=> b!4042180 (= e!2507971 (+ 1 (size!32325 (t!334994 lt!1437865))))))

(assert (= (and d!1199266 c!698345) b!4042179))

(assert (= (and d!1199266 (not c!698345)) b!4042180))

(declare-fun m!4638889 () Bool)

(assert (=> b!4042180 m!4638889))

(assert (=> b!4040531 d!1199266))

(assert (=> b!4040531 d!1198432))

(declare-fun d!1199268 () Bool)

(declare-fun lt!1438496 () Int)

(assert (=> d!1199268 (>= lt!1438496 0)))

(declare-fun e!2507972 () Int)

(assert (=> d!1199268 (= lt!1438496 e!2507972)))

(declare-fun c!698346 () Bool)

(assert (=> d!1199268 (= c!698346 ((_ is Nil!43241) suffixResult!105))))

(assert (=> d!1199268 (= (size!32325 suffixResult!105) lt!1438496)))

(declare-fun b!4042181 () Bool)

(assert (=> b!4042181 (= e!2507972 0)))

(declare-fun b!4042182 () Bool)

(assert (=> b!4042182 (= e!2507972 (+ 1 (size!32325 (t!334994 suffixResult!105))))))

(assert (= (and d!1199268 c!698346) b!4042181))

(assert (= (and d!1199268 (not c!698346)) b!4042182))

(declare-fun m!4638891 () Bool)

(assert (=> b!4042182 m!4638891))

(assert (=> b!4040531 d!1199268))

(declare-fun d!1199270 () Bool)

(assert (=> d!1199270 (= (list!16100 lt!1437891) (list!16102 (c!697932 lt!1437891)))))

(declare-fun bs!591007 () Bool)

(assert (= bs!591007 d!1199270))

(declare-fun m!4638893 () Bool)

(assert (=> bs!591007 m!4638893))

(assert (=> d!1198274 d!1199270))

(declare-fun b!4042183 () Bool)

(declare-fun res!1646274 () Bool)

(declare-fun e!2507975 () Bool)

(assert (=> b!4042183 (=> (not res!1646274) (not e!2507975))))

(declare-fun lt!1438499 () Option!9336)

(assert (=> b!4042183 (= res!1646274 (= (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438499)))) (originalCharacters!7522 (_1!24295 (get!14189 lt!1438499)))))))

(declare-fun b!4042184 () Bool)

(declare-fun res!1646280 () Bool)

(assert (=> b!4042184 (=> (not res!1646280) (not e!2507975))))

(assert (=> b!4042184 (= res!1646280 (= (value!217911 (_1!24295 (get!14189 lt!1438499))) (apply!10111 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438499)))) (seqFromList!5139 (originalCharacters!7522 (_1!24295 (get!14189 lt!1438499)))))))))

(declare-fun d!1199272 () Bool)

(declare-fun e!2507974 () Bool)

(assert (=> d!1199272 e!2507974))

(declare-fun res!1646276 () Bool)

(assert (=> d!1199272 (=> res!1646276 e!2507974)))

(assert (=> d!1199272 (= res!1646276 (isEmpty!25811 lt!1438499))))

(declare-fun e!2507973 () Option!9336)

(assert (=> d!1199272 (= lt!1438499 e!2507973)))

(declare-fun c!698347 () Bool)

(assert (=> d!1199272 (= c!698347 (and ((_ is Cons!43243) (t!334996 rules!2999)) ((_ is Nil!43243) (t!334996 (t!334996 rules!2999)))))))

(declare-fun lt!1438500 () Unit!62457)

(declare-fun lt!1438501 () Unit!62457)

(assert (=> d!1199272 (= lt!1438500 lt!1438501)))

(assert (=> d!1199272 (isPrefix!4009 lt!1437817 lt!1437817)))

(assert (=> d!1199272 (= lt!1438501 (lemmaIsPrefixRefl!2576 lt!1437817 lt!1437817))))

(assert (=> d!1199272 (rulesValidInductive!2525 thiss!21717 (t!334996 rules!2999))))

(assert (=> d!1199272 (= (maxPrefix!3809 thiss!21717 (t!334996 rules!2999) lt!1437817) lt!1438499)))

(declare-fun b!4042185 () Bool)

(declare-fun call!287508 () Option!9336)

(assert (=> b!4042185 (= e!2507973 call!287508)))

(declare-fun b!4042186 () Bool)

(assert (=> b!4042186 (= e!2507974 e!2507975)))

(declare-fun res!1646275 () Bool)

(assert (=> b!4042186 (=> (not res!1646275) (not e!2507975))))

(assert (=> b!4042186 (= res!1646275 (isDefined!7104 lt!1438499))))

(declare-fun b!4042187 () Bool)

(declare-fun res!1646279 () Bool)

(assert (=> b!4042187 (=> (not res!1646279) (not e!2507975))))

(assert (=> b!4042187 (= res!1646279 (= (++!11324 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438499)))) (_2!24295 (get!14189 lt!1438499))) lt!1437817))))

(declare-fun b!4042188 () Bool)

(assert (=> b!4042188 (= e!2507975 (contains!8592 (t!334996 rules!2999) (rule!9994 (_1!24295 (get!14189 lt!1438499)))))))

(declare-fun b!4042189 () Bool)

(declare-fun lt!1438498 () Option!9336)

(declare-fun lt!1438497 () Option!9336)

(assert (=> b!4042189 (= e!2507973 (ite (and ((_ is None!9335) lt!1438498) ((_ is None!9335) lt!1438497)) None!9335 (ite ((_ is None!9335) lt!1438497) lt!1438498 (ite ((_ is None!9335) lt!1438498) lt!1438497 (ite (>= (size!32326 (_1!24295 (v!39735 lt!1438498))) (size!32326 (_1!24295 (v!39735 lt!1438497)))) lt!1438498 lt!1438497)))))))

(assert (=> b!4042189 (= lt!1438498 call!287508)))

(assert (=> b!4042189 (= lt!1438497 (maxPrefix!3809 thiss!21717 (t!334996 (t!334996 rules!2999)) lt!1437817))))

(declare-fun b!4042190 () Bool)

(declare-fun res!1646278 () Bool)

(assert (=> b!4042190 (=> (not res!1646278) (not e!2507975))))

(assert (=> b!4042190 (= res!1646278 (< (size!32325 (_2!24295 (get!14189 lt!1438499))) (size!32325 lt!1437817)))))

(declare-fun b!4042191 () Bool)

(declare-fun res!1646277 () Bool)

(assert (=> b!4042191 (=> (not res!1646277) (not e!2507975))))

(assert (=> b!4042191 (= res!1646277 (matchR!5780 (regex!6922 (rule!9994 (_1!24295 (get!14189 lt!1438499)))) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438499))))))))

(declare-fun bm!287503 () Bool)

(assert (=> bm!287503 (= call!287508 (maxPrefixOneRule!2821 thiss!21717 (h!48663 (t!334996 rules!2999)) lt!1437817))))

(assert (= (and d!1199272 c!698347) b!4042185))

(assert (= (and d!1199272 (not c!698347)) b!4042189))

(assert (= (or b!4042185 b!4042189) bm!287503))

(assert (= (and d!1199272 (not res!1646276)) b!4042186))

(assert (= (and b!4042186 res!1646275) b!4042183))

(assert (= (and b!4042183 res!1646274) b!4042190))

(assert (= (and b!4042190 res!1646278) b!4042187))

(assert (= (and b!4042187 res!1646279) b!4042184))

(assert (= (and b!4042184 res!1646280) b!4042191))

(assert (= (and b!4042191 res!1646277) b!4042188))

(declare-fun m!4638895 () Bool)

(assert (=> b!4042188 m!4638895))

(declare-fun m!4638897 () Bool)

(assert (=> b!4042188 m!4638897))

(declare-fun m!4638899 () Bool)

(assert (=> b!4042189 m!4638899))

(declare-fun m!4638901 () Bool)

(assert (=> b!4042186 m!4638901))

(assert (=> b!4042184 m!4638895))

(declare-fun m!4638903 () Bool)

(assert (=> b!4042184 m!4638903))

(assert (=> b!4042184 m!4638903))

(declare-fun m!4638905 () Bool)

(assert (=> b!4042184 m!4638905))

(assert (=> b!4042191 m!4638895))

(declare-fun m!4638907 () Bool)

(assert (=> b!4042191 m!4638907))

(assert (=> b!4042191 m!4638907))

(declare-fun m!4638909 () Bool)

(assert (=> b!4042191 m!4638909))

(assert (=> b!4042191 m!4638909))

(declare-fun m!4638911 () Bool)

(assert (=> b!4042191 m!4638911))

(declare-fun m!4638913 () Bool)

(assert (=> d!1199272 m!4638913))

(assert (=> d!1199272 m!4636263))

(assert (=> d!1199272 m!4636265))

(assert (=> d!1199272 m!4637409))

(assert (=> b!4042187 m!4638895))

(assert (=> b!4042187 m!4638907))

(assert (=> b!4042187 m!4638907))

(assert (=> b!4042187 m!4638909))

(assert (=> b!4042187 m!4638909))

(declare-fun m!4638915 () Bool)

(assert (=> b!4042187 m!4638915))

(assert (=> b!4042190 m!4638895))

(declare-fun m!4638917 () Bool)

(assert (=> b!4042190 m!4638917))

(assert (=> b!4042190 m!4636325))

(declare-fun m!4638919 () Bool)

(assert (=> bm!287503 m!4638919))

(assert (=> b!4042183 m!4638895))

(assert (=> b!4042183 m!4638907))

(assert (=> b!4042183 m!4638907))

(assert (=> b!4042183 m!4638909))

(assert (=> b!4040572 d!1199272))

(declare-fun d!1199274 () Bool)

(declare-fun c!698348 () Bool)

(assert (=> d!1199274 (= c!698348 ((_ is Nil!43241) lt!1437821))))

(declare-fun e!2507976 () (InoxSet C!23840))

(assert (=> d!1199274 (= (content!6577 lt!1437821) e!2507976)))

(declare-fun b!4042192 () Bool)

(assert (=> b!4042192 (= e!2507976 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4042193 () Bool)

(assert (=> b!4042193 (= e!2507976 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437821) true) (content!6577 (t!334994 lt!1437821))))))

(assert (= (and d!1199274 c!698348) b!4042192))

(assert (= (and d!1199274 (not c!698348)) b!4042193))

(declare-fun m!4638921 () Bool)

(assert (=> b!4042193 m!4638921))

(declare-fun m!4638923 () Bool)

(assert (=> b!4042193 m!4638923))

(assert (=> d!1198186 d!1199274))

(declare-fun d!1199276 () Bool)

(declare-fun c!698349 () Bool)

(assert (=> d!1199276 (= c!698349 ((_ is Nil!43241) lt!1437789))))

(declare-fun e!2507977 () (InoxSet C!23840))

(assert (=> d!1199276 (= (content!6577 lt!1437789) e!2507977)))

(declare-fun b!4042194 () Bool)

(assert (=> b!4042194 (= e!2507977 ((as const (Array C!23840 Bool)) false))))

(declare-fun b!4042195 () Bool)

(assert (=> b!4042195 (= e!2507977 ((_ map or) (store ((as const (Array C!23840 Bool)) false) (h!48661 lt!1437789) true) (content!6577 (t!334994 lt!1437789))))))

(assert (= (and d!1199276 c!698349) b!4042194))

(assert (= (and d!1199276 (not c!698349)) b!4042195))

(declare-fun m!4638925 () Bool)

(assert (=> b!4042195 m!4638925))

(assert (=> b!4042195 m!4637987))

(assert (=> d!1198186 d!1199276))

(assert (=> d!1198186 d!1198576))

(declare-fun d!1199278 () Bool)

(declare-fun lt!1438502 () Int)

(assert (=> d!1199278 (>= lt!1438502 0)))

(declare-fun e!2507978 () Int)

(assert (=> d!1199278 (= lt!1438502 e!2507978)))

(declare-fun c!698350 () Bool)

(assert (=> d!1199278 (= c!698350 ((_ is Nil!43241) lt!1437887))))

(assert (=> d!1199278 (= (size!32325 lt!1437887) lt!1438502)))

(declare-fun b!4042196 () Bool)

(assert (=> b!4042196 (= e!2507978 0)))

(declare-fun b!4042197 () Bool)

(assert (=> b!4042197 (= e!2507978 (+ 1 (size!32325 (t!334994 lt!1437887))))))

(assert (= (and d!1199278 c!698350) b!4042196))

(assert (= (and d!1199278 (not c!698350)) b!4042197))

(declare-fun m!4638927 () Bool)

(assert (=> b!4042197 m!4638927))

(assert (=> b!4040577 d!1199278))

(assert (=> b!4040577 d!1198434))

(assert (=> b!4040577 d!1198456))

(assert (=> b!4040993 d!1198434))

(assert (=> b!4040993 d!1198432))

(assert (=> d!1198252 d!1198964))

(declare-fun d!1199280 () Bool)

(declare-fun lt!1438503 () Int)

(assert (=> d!1199280 (>= lt!1438503 0)))

(declare-fun e!2507979 () Int)

(assert (=> d!1199280 (= lt!1438503 e!2507979)))

(declare-fun c!698351 () Bool)

(assert (=> d!1199280 (= c!698351 ((_ is Nil!43241) (t!334994 suffix!1299)))))

(assert (=> d!1199280 (= (size!32325 (t!334994 suffix!1299)) lt!1438503)))

(declare-fun b!4042198 () Bool)

(assert (=> b!4042198 (= e!2507979 0)))

(declare-fun b!4042199 () Bool)

(assert (=> b!4042199 (= e!2507979 (+ 1 (size!32325 (t!334994 (t!334994 suffix!1299)))))))

(assert (= (and d!1199280 c!698351) b!4042198))

(assert (= (and d!1199280 (not c!698351)) b!4042199))

(declare-fun m!4638929 () Bool)

(assert (=> b!4042199 m!4638929))

(assert (=> b!4040981 d!1199280))

(declare-fun b!4042202 () Bool)

(declare-fun res!1646281 () Bool)

(declare-fun e!2507981 () Bool)

(assert (=> b!4042202 (=> (not res!1646281) (not e!2507981))))

(declare-fun lt!1438504 () List!43365)

(assert (=> b!4042202 (= res!1646281 (= (size!32325 lt!1438504) (+ (size!32325 (t!334994 lt!1437799)) (size!32325 lt!1437807))))))

(declare-fun d!1199282 () Bool)

(assert (=> d!1199282 e!2507981))

(declare-fun res!1646282 () Bool)

(assert (=> d!1199282 (=> (not res!1646282) (not e!2507981))))

(assert (=> d!1199282 (= res!1646282 (= (content!6577 lt!1438504) ((_ map or) (content!6577 (t!334994 lt!1437799)) (content!6577 lt!1437807))))))

(declare-fun e!2507980 () List!43365)

(assert (=> d!1199282 (= lt!1438504 e!2507980)))

(declare-fun c!698352 () Bool)

(assert (=> d!1199282 (= c!698352 ((_ is Nil!43241) (t!334994 lt!1437799)))))

(assert (=> d!1199282 (= (++!11324 (t!334994 lt!1437799) lt!1437807) lt!1438504)))

(declare-fun b!4042201 () Bool)

(assert (=> b!4042201 (= e!2507980 (Cons!43241 (h!48661 (t!334994 lt!1437799)) (++!11324 (t!334994 (t!334994 lt!1437799)) lt!1437807)))))

(declare-fun b!4042200 () Bool)

(assert (=> b!4042200 (= e!2507980 lt!1437807)))

(declare-fun b!4042203 () Bool)

(assert (=> b!4042203 (= e!2507981 (or (not (= lt!1437807 Nil!43241)) (= lt!1438504 (t!334994 lt!1437799))))))

(assert (= (and d!1199282 c!698352) b!4042200))

(assert (= (and d!1199282 (not c!698352)) b!4042201))

(assert (= (and d!1199282 res!1646282) b!4042202))

(assert (= (and b!4042202 res!1646281) b!4042203))

(declare-fun m!4638931 () Bool)

(assert (=> b!4042202 m!4638931))

(assert (=> b!4042202 m!4637047))

(assert (=> b!4042202 m!4636295))

(declare-fun m!4638933 () Bool)

(assert (=> d!1199282 m!4638933))

(assert (=> d!1199282 m!4637311))

(assert (=> d!1199282 m!4636299))

(declare-fun m!4638935 () Bool)

(assert (=> b!4042201 m!4638935))

(assert (=> b!4040985 d!1199282))

(declare-fun b!4042206 () Bool)

(declare-fun e!2507982 () Bool)

(assert (=> b!4042206 (= e!2507982 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437817)) (tail!6285 (tail!6285 lt!1437817))))))

(declare-fun b!4042207 () Bool)

(declare-fun e!2507984 () Bool)

(assert (=> b!4042207 (= e!2507984 (>= (size!32325 (tail!6285 lt!1437817)) (size!32325 (tail!6285 lt!1437817))))))

(declare-fun b!4042205 () Bool)

(declare-fun res!1646286 () Bool)

(assert (=> b!4042205 (=> (not res!1646286) (not e!2507982))))

(assert (=> b!4042205 (= res!1646286 (= (head!8553 (tail!6285 lt!1437817)) (head!8553 (tail!6285 lt!1437817))))))

(declare-fun d!1199284 () Bool)

(assert (=> d!1199284 e!2507984))

(declare-fun res!1646285 () Bool)

(assert (=> d!1199284 (=> res!1646285 e!2507984)))

(declare-fun lt!1438505 () Bool)

(assert (=> d!1199284 (= res!1646285 (not lt!1438505))))

(declare-fun e!2507983 () Bool)

(assert (=> d!1199284 (= lt!1438505 e!2507983)))

(declare-fun res!1646284 () Bool)

(assert (=> d!1199284 (=> res!1646284 e!2507983)))

(assert (=> d!1199284 (= res!1646284 ((_ is Nil!43241) (tail!6285 lt!1437817)))))

(assert (=> d!1199284 (= (isPrefix!4009 (tail!6285 lt!1437817) (tail!6285 lt!1437817)) lt!1438505)))

(declare-fun b!4042204 () Bool)

(assert (=> b!4042204 (= e!2507983 e!2507982)))

(declare-fun res!1646283 () Bool)

(assert (=> b!4042204 (=> (not res!1646283) (not e!2507982))))

(assert (=> b!4042204 (= res!1646283 (not ((_ is Nil!43241) (tail!6285 lt!1437817))))))

(assert (= (and d!1199284 (not res!1646284)) b!4042204))

(assert (= (and b!4042204 res!1646283) b!4042205))

(assert (= (and b!4042205 res!1646286) b!4042206))

(assert (= (and d!1199284 (not res!1646285)) b!4042207))

(assert (=> b!4042206 m!4636327))

(assert (=> b!4042206 m!4638283))

(assert (=> b!4042206 m!4636327))

(assert (=> b!4042206 m!4638283))

(assert (=> b!4042206 m!4638283))

(assert (=> b!4042206 m!4638283))

(declare-fun m!4638937 () Bool)

(assert (=> b!4042206 m!4638937))

(assert (=> b!4042207 m!4636327))

(assert (=> b!4042207 m!4638281))

(assert (=> b!4042207 m!4636327))

(assert (=> b!4042207 m!4638281))

(assert (=> b!4042205 m!4636327))

(assert (=> b!4042205 m!4638555))

(assert (=> b!4042205 m!4636327))

(assert (=> b!4042205 m!4638555))

(assert (=> b!4040425 d!1199284))

(assert (=> b!4040425 d!1198970))

(declare-fun b!4042210 () Bool)

(declare-fun e!2507985 () Bool)

(assert (=> b!4042210 (= e!2507985 (isPrefix!4009 (tail!6285 (tail!6285 lt!1437799)) (tail!6285 (tail!6285 lt!1437793))))))

(declare-fun b!4042211 () Bool)

(declare-fun e!2507987 () Bool)

(assert (=> b!4042211 (= e!2507987 (>= (size!32325 (tail!6285 lt!1437793)) (size!32325 (tail!6285 lt!1437799))))))

(declare-fun b!4042209 () Bool)

(declare-fun res!1646290 () Bool)

(assert (=> b!4042209 (=> (not res!1646290) (not e!2507985))))

(assert (=> b!4042209 (= res!1646290 (= (head!8553 (tail!6285 lt!1437799)) (head!8553 (tail!6285 lt!1437793))))))

(declare-fun d!1199286 () Bool)

(assert (=> d!1199286 e!2507987))

(declare-fun res!1646289 () Bool)

(assert (=> d!1199286 (=> res!1646289 e!2507987)))

(declare-fun lt!1438506 () Bool)

(assert (=> d!1199286 (= res!1646289 (not lt!1438506))))

(declare-fun e!2507986 () Bool)

(assert (=> d!1199286 (= lt!1438506 e!2507986)))

(declare-fun res!1646288 () Bool)

(assert (=> d!1199286 (=> res!1646288 e!2507986)))

(assert (=> d!1199286 (= res!1646288 ((_ is Nil!43241) (tail!6285 lt!1437799)))))

(assert (=> d!1199286 (= (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 lt!1437793)) lt!1438506)))

(declare-fun b!4042208 () Bool)

(assert (=> b!4042208 (= e!2507986 e!2507985)))

(declare-fun res!1646287 () Bool)

(assert (=> b!4042208 (=> (not res!1646287) (not e!2507985))))

(assert (=> b!4042208 (= res!1646287 (not ((_ is Nil!43241) (tail!6285 lt!1437793))))))

(assert (= (and d!1199286 (not res!1646288)) b!4042208))

(assert (= (and b!4042208 res!1646287) b!4042209))

(assert (= (and b!4042209 res!1646290) b!4042210))

(assert (= (and d!1199286 (not res!1646289)) b!4042211))

(assert (=> b!4042210 m!4636373))

(assert (=> b!4042210 m!4637321))

(assert (=> b!4042210 m!4636385))

(declare-fun m!4638939 () Bool)

(assert (=> b!4042210 m!4638939))

(assert (=> b!4042210 m!4637321))

(assert (=> b!4042210 m!4638939))

(declare-fun m!4638941 () Bool)

(assert (=> b!4042210 m!4638941))

(assert (=> b!4042211 m!4636385))

(declare-fun m!4638943 () Bool)

(assert (=> b!4042211 m!4638943))

(assert (=> b!4042211 m!4636373))

(assert (=> b!4042211 m!4637335))

(assert (=> b!4042209 m!4636373))

(assert (=> b!4042209 m!4637337))

(assert (=> b!4042209 m!4636385))

(declare-fun m!4638945 () Bool)

(assert (=> b!4042209 m!4638945))

(assert (=> b!4040475 d!1199286))

(assert (=> b!4040475 d!1198552))

(declare-fun d!1199288 () Bool)

(assert (=> d!1199288 (= (tail!6285 lt!1437793) (t!334994 lt!1437793))))

(assert (=> b!4040475 d!1199288))

(assert (=> b!4040579 d!1199126))

(assert (=> b!4040959 d!1198456))

(assert (=> b!4040959 d!1198458))

(assert (=> b!4040501 d!1199202))

(assert (=> b!4040501 d!1199204))

(declare-fun b!4042214 () Bool)

(declare-fun e!2507988 () Bool)

(assert (=> b!4042214 (= e!2507988 (isPrefix!4009 (tail!6285 lt!1437799) (tail!6285 (++!11324 lt!1437799 suffixResult!105))))))

(declare-fun b!4042215 () Bool)

(declare-fun e!2507990 () Bool)

(assert (=> b!4042215 (= e!2507990 (>= (size!32325 (++!11324 lt!1437799 suffixResult!105)) (size!32325 lt!1437799)))))

(declare-fun b!4042213 () Bool)

(declare-fun res!1646294 () Bool)

(assert (=> b!4042213 (=> (not res!1646294) (not e!2507988))))

(assert (=> b!4042213 (= res!1646294 (= (head!8553 lt!1437799) (head!8553 (++!11324 lt!1437799 suffixResult!105))))))

(declare-fun d!1199290 () Bool)

(assert (=> d!1199290 e!2507990))

(declare-fun res!1646293 () Bool)

(assert (=> d!1199290 (=> res!1646293 e!2507990)))

(declare-fun lt!1438507 () Bool)

(assert (=> d!1199290 (= res!1646293 (not lt!1438507))))

(declare-fun e!2507989 () Bool)

(assert (=> d!1199290 (= lt!1438507 e!2507989)))

(declare-fun res!1646292 () Bool)

(assert (=> d!1199290 (=> res!1646292 e!2507989)))

(assert (=> d!1199290 (= res!1646292 ((_ is Nil!43241) lt!1437799))))

(assert (=> d!1199290 (= (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 suffixResult!105)) lt!1438507)))

(declare-fun b!4042212 () Bool)

(assert (=> b!4042212 (= e!2507989 e!2507988)))

(declare-fun res!1646291 () Bool)

(assert (=> b!4042212 (=> (not res!1646291) (not e!2507988))))

(assert (=> b!4042212 (= res!1646291 (not ((_ is Nil!43241) (++!11324 lt!1437799 suffixResult!105))))))

(assert (= (and d!1199290 (not res!1646292)) b!4042212))

(assert (= (and b!4042212 res!1646291) b!4042213))

(assert (= (and b!4042213 res!1646294) b!4042214))

(assert (= (and d!1199290 (not res!1646293)) b!4042215))

(assert (=> b!4042214 m!4636373))

(assert (=> b!4042214 m!4636197))

(declare-fun m!4638947 () Bool)

(assert (=> b!4042214 m!4638947))

(assert (=> b!4042214 m!4636373))

(assert (=> b!4042214 m!4638947))

(declare-fun m!4638949 () Bool)

(assert (=> b!4042214 m!4638949))

(assert (=> b!4042215 m!4636197))

(declare-fun m!4638951 () Bool)

(assert (=> b!4042215 m!4638951))

(assert (=> b!4042215 m!4636145))

(assert (=> b!4042213 m!4636371))

(assert (=> b!4042213 m!4636197))

(declare-fun m!4638953 () Bool)

(assert (=> b!4042213 m!4638953))

(assert (=> d!1198238 d!1199290))

(assert (=> d!1198238 d!1198250))

(declare-fun d!1199292 () Bool)

(assert (=> d!1199292 (isPrefix!4009 lt!1437799 (++!11324 lt!1437799 suffixResult!105))))

(assert (=> d!1199292 true))

(declare-fun _$46!1771 () Unit!62457)

(assert (=> d!1199292 (= (choose!24487 lt!1437799 suffixResult!105) _$46!1771)))

(declare-fun bs!591008 () Bool)

(assert (= bs!591008 d!1199292))

(assert (=> bs!591008 m!4636197))

(assert (=> bs!591008 m!4636197))

(assert (=> bs!591008 m!4636431))

(assert (=> d!1198238 d!1199292))

(assert (=> b!4040977 d!1198661))

(declare-fun d!1199294 () Bool)

(assert (=> d!1199294 (= (head!8553 lt!1437804) (h!48661 lt!1437804))))

(assert (=> b!4040977 d!1199294))

(declare-fun d!1199296 () Bool)

(declare-fun charsToInt!0 (List!43366) (_ BitVec 32))

(assert (=> d!1199296 (= (inv!16 (value!217911 token!484)) (= (charsToInt!0 (text!50511 (value!217911 token!484))) (value!217902 (value!217911 token!484))))))

(declare-fun bs!591009 () Bool)

(assert (= bs!591009 d!1199296))

(declare-fun m!4638955 () Bool)

(assert (=> bs!591009 m!4638955))

(assert (=> b!4040488 d!1199296))

(declare-fun d!1199298 () Bool)

(assert (=> d!1199298 (= (isEmpty!25811 lt!1438032) (not ((_ is Some!9335) lt!1438032)))))

(assert (=> d!1198448 d!1199298))

(declare-fun b!4042218 () Bool)

(declare-fun e!2507991 () Bool)

(assert (=> b!4042218 (= e!2507991 (isPrefix!4009 (tail!6285 lt!1437793) (tail!6285 lt!1437793)))))

(declare-fun b!4042219 () Bool)

(declare-fun e!2507993 () Bool)

(assert (=> b!4042219 (= e!2507993 (>= (size!32325 lt!1437793) (size!32325 lt!1437793)))))

(declare-fun b!4042217 () Bool)

(declare-fun res!1646298 () Bool)

(assert (=> b!4042217 (=> (not res!1646298) (not e!2507991))))

(assert (=> b!4042217 (= res!1646298 (= (head!8553 lt!1437793) (head!8553 lt!1437793)))))

(declare-fun d!1199300 () Bool)

(assert (=> d!1199300 e!2507993))

(declare-fun res!1646297 () Bool)

(assert (=> d!1199300 (=> res!1646297 e!2507993)))

(declare-fun lt!1438508 () Bool)

(assert (=> d!1199300 (= res!1646297 (not lt!1438508))))

(declare-fun e!2507992 () Bool)

(assert (=> d!1199300 (= lt!1438508 e!2507992)))

(declare-fun res!1646296 () Bool)

(assert (=> d!1199300 (=> res!1646296 e!2507992)))

(assert (=> d!1199300 (= res!1646296 ((_ is Nil!43241) lt!1437793))))

(assert (=> d!1199300 (= (isPrefix!4009 lt!1437793 lt!1437793) lt!1438508)))

(declare-fun b!4042216 () Bool)

(assert (=> b!4042216 (= e!2507992 e!2507991)))

(declare-fun res!1646295 () Bool)

(assert (=> b!4042216 (=> (not res!1646295) (not e!2507991))))

(assert (=> b!4042216 (= res!1646295 (not ((_ is Nil!43241) lt!1437793)))))

(assert (= (and d!1199300 (not res!1646296)) b!4042216))

(assert (= (and b!4042216 res!1646295) b!4042217))

(assert (= (and b!4042217 res!1646298) b!4042218))

(assert (= (and d!1199300 (not res!1646297)) b!4042219))

(assert (=> b!4042218 m!4636385))

(assert (=> b!4042218 m!4636385))

(assert (=> b!4042218 m!4636385))

(assert (=> b!4042218 m!4636385))

(declare-fun m!4638957 () Bool)

(assert (=> b!4042218 m!4638957))

(assert (=> b!4042219 m!4636389))

(assert (=> b!4042219 m!4636389))

(assert (=> b!4042217 m!4636391))

(assert (=> b!4042217 m!4636391))

(assert (=> d!1198448 d!1199300))

(declare-fun d!1199302 () Bool)

(assert (=> d!1199302 (isPrefix!4009 lt!1437793 lt!1437793)))

(declare-fun lt!1438509 () Unit!62457)

(assert (=> d!1199302 (= lt!1438509 (choose!24484 lt!1437793 lt!1437793))))

(assert (=> d!1199302 (= (lemmaIsPrefixRefl!2576 lt!1437793 lt!1437793) lt!1438509)))

(declare-fun bs!591010 () Bool)

(assert (= bs!591010 d!1199302))

(assert (=> bs!591010 m!4637095))

(declare-fun m!4638959 () Bool)

(assert (=> bs!591010 m!4638959))

(assert (=> d!1198448 d!1199302))

(assert (=> d!1198448 d!1199078))

(declare-fun b!4042220 () Bool)

(declare-fun e!2507997 () Bool)

(declare-fun lt!1438510 () Bool)

(declare-fun call!287509 () Bool)

(assert (=> b!4042220 (= e!2507997 (= lt!1438510 call!287509))))

(declare-fun d!1199304 () Bool)

(assert (=> d!1199304 e!2507997))

(declare-fun c!698355 () Bool)

(assert (=> d!1199304 (= c!698355 ((_ is EmptyExpr!11827) (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800))))))

(declare-fun e!2508000 () Bool)

(assert (=> d!1199304 (= lt!1438510 e!2508000)))

(declare-fun c!698354 () Bool)

(assert (=> d!1199304 (= c!698354 (isEmpty!25808 (tail!6285 lt!1437800)))))

(assert (=> d!1199304 (validRegex!5350 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)))))

(assert (=> d!1199304 (= (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)) (tail!6285 lt!1437800)) lt!1438510)))

(declare-fun b!4042221 () Bool)

(declare-fun e!2507994 () Bool)

(declare-fun e!2507996 () Bool)

(assert (=> b!4042221 (= e!2507994 e!2507996)))

(declare-fun res!1646305 () Bool)

(assert (=> b!4042221 (=> (not res!1646305) (not e!2507996))))

(assert (=> b!4042221 (= res!1646305 (not lt!1438510))))

(declare-fun b!4042222 () Bool)

(assert (=> b!4042222 (= e!2508000 (matchR!5780 (derivativeStep!3555 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)) (head!8553 (tail!6285 lt!1437800))) (tail!6285 (tail!6285 lt!1437800))))))

(declare-fun b!4042223 () Bool)

(declare-fun res!1646300 () Bool)

(declare-fun e!2507995 () Bool)

(assert (=> b!4042223 (=> (not res!1646300) (not e!2507995))))

(assert (=> b!4042223 (= res!1646300 (isEmpty!25808 (tail!6285 (tail!6285 lt!1437800))))))

(declare-fun b!4042224 () Bool)

(declare-fun res!1646306 () Bool)

(assert (=> b!4042224 (=> res!1646306 e!2507994)))

(assert (=> b!4042224 (= res!1646306 e!2507995)))

(declare-fun res!1646301 () Bool)

(assert (=> b!4042224 (=> (not res!1646301) (not e!2507995))))

(assert (=> b!4042224 (= res!1646301 lt!1438510)))

(declare-fun b!4042225 () Bool)

(declare-fun e!2507999 () Bool)

(assert (=> b!4042225 (= e!2507997 e!2507999)))

(declare-fun c!698353 () Bool)

(assert (=> b!4042225 (= c!698353 ((_ is EmptyLang!11827) (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800))))))

(declare-fun bm!287504 () Bool)

(assert (=> bm!287504 (= call!287509 (isEmpty!25808 (tail!6285 lt!1437800)))))

(declare-fun b!4042226 () Bool)

(assert (=> b!4042226 (= e!2508000 (nullable!4150 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800))))))

(declare-fun b!4042227 () Bool)

(assert (=> b!4042227 (= e!2507995 (= (head!8553 (tail!6285 lt!1437800)) (c!697933 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)))))))

(declare-fun b!4042228 () Bool)

(assert (=> b!4042228 (= e!2507999 (not lt!1438510))))

(declare-fun b!4042229 () Bool)

(declare-fun res!1646303 () Bool)

(declare-fun e!2507998 () Bool)

(assert (=> b!4042229 (=> res!1646303 e!2507998)))

(assert (=> b!4042229 (= res!1646303 (not (isEmpty!25808 (tail!6285 (tail!6285 lt!1437800)))))))

(declare-fun b!4042230 () Bool)

(declare-fun res!1646304 () Bool)

(assert (=> b!4042230 (=> res!1646304 e!2507994)))

(assert (=> b!4042230 (= res!1646304 (not ((_ is ElementMatch!11827) (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)))))))

(assert (=> b!4042230 (= e!2507999 e!2507994)))

(declare-fun b!4042231 () Bool)

(declare-fun res!1646302 () Bool)

(assert (=> b!4042231 (=> (not res!1646302) (not e!2507995))))

(assert (=> b!4042231 (= res!1646302 (not call!287509))))

(declare-fun b!4042232 () Bool)

(assert (=> b!4042232 (= e!2507998 (not (= (head!8553 (tail!6285 lt!1437800)) (c!697933 (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800))))))))

(declare-fun b!4042233 () Bool)

(assert (=> b!4042233 (= e!2507996 e!2507998)))

(declare-fun res!1646299 () Bool)

(assert (=> b!4042233 (=> res!1646299 e!2507998)))

(assert (=> b!4042233 (= res!1646299 call!287509)))

(assert (= (and d!1199304 c!698354) b!4042226))

(assert (= (and d!1199304 (not c!698354)) b!4042222))

(assert (= (and d!1199304 c!698355) b!4042220))

(assert (= (and d!1199304 (not c!698355)) b!4042225))

(assert (= (and b!4042225 c!698353) b!4042228))

(assert (= (and b!4042225 (not c!698353)) b!4042230))

(assert (= (and b!4042230 (not res!1646304)) b!4042224))

(assert (= (and b!4042224 res!1646301) b!4042231))

(assert (= (and b!4042231 res!1646302) b!4042223))

(assert (= (and b!4042223 res!1646300) b!4042227))

(assert (= (and b!4042224 (not res!1646306)) b!4042221))

(assert (= (and b!4042221 res!1646305) b!4042233))

(assert (= (and b!4042233 (not res!1646299)) b!4042229))

(assert (= (and b!4042229 (not res!1646303)) b!4042232))

(assert (= (or b!4042220 b!4042231 b!4042233) bm!287504))

(assert (=> bm!287504 m!4636409))

(assert (=> bm!287504 m!4636411))

(assert (=> b!4042227 m!4636409))

(declare-fun m!4638961 () Bool)

(assert (=> b!4042227 m!4638961))

(assert (=> b!4042223 m!4636409))

(declare-fun m!4638963 () Bool)

(assert (=> b!4042223 m!4638963))

(assert (=> b!4042223 m!4638963))

(declare-fun m!4638965 () Bool)

(assert (=> b!4042223 m!4638965))

(assert (=> b!4042226 m!4636415))

(declare-fun m!4638967 () Bool)

(assert (=> b!4042226 m!4638967))

(assert (=> b!4042229 m!4636409))

(assert (=> b!4042229 m!4638963))

(assert (=> b!4042229 m!4638963))

(assert (=> b!4042229 m!4638965))

(assert (=> b!4042222 m!4636409))

(assert (=> b!4042222 m!4638961))

(assert (=> b!4042222 m!4636415))

(assert (=> b!4042222 m!4638961))

(declare-fun m!4638969 () Bool)

(assert (=> b!4042222 m!4638969))

(assert (=> b!4042222 m!4636409))

(assert (=> b!4042222 m!4638963))

(assert (=> b!4042222 m!4638969))

(assert (=> b!4042222 m!4638963))

(declare-fun m!4638971 () Bool)

(assert (=> b!4042222 m!4638971))

(assert (=> d!1199304 m!4636409))

(assert (=> d!1199304 m!4636411))

(assert (=> d!1199304 m!4636415))

(declare-fun m!4638973 () Bool)

(assert (=> d!1199304 m!4638973))

(assert (=> b!4042232 m!4636409))

(assert (=> b!4042232 m!4638961))

(assert (=> b!4040494 d!1199304))

(declare-fun call!287510 () Regex!11827)

(declare-fun call!287513 () Regex!11827)

(declare-fun e!2508001 () Regex!11827)

(declare-fun b!4042234 () Bool)

(assert (=> b!4042234 (= e!2508001 (Union!11827 (Concat!18980 call!287510 (regTwo!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) call!287513))))

(declare-fun bm!287505 () Bool)

(declare-fun call!287512 () Regex!11827)

(declare-fun call!287511 () Regex!11827)

(assert (=> bm!287505 (= call!287512 call!287511)))

(declare-fun b!4042235 () Bool)

(declare-fun e!2508002 () Regex!11827)

(declare-fun e!2508003 () Regex!11827)

(assert (=> b!4042235 (= e!2508002 e!2508003)))

(declare-fun c!698359 () Bool)

(assert (=> b!4042235 (= c!698359 ((_ is Star!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun b!4042236 () Bool)

(declare-fun e!2508004 () Regex!11827)

(assert (=> b!4042236 (= e!2508004 (ite (= (head!8553 lt!1437800) (c!697933 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) EmptyExpr!11827 EmptyLang!11827))))

(declare-fun b!4042237 () Bool)

(declare-fun c!698358 () Bool)

(assert (=> b!4042237 (= c!698358 ((_ is Union!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(assert (=> b!4042237 (= e!2508004 e!2508002)))

(declare-fun b!4042238 () Bool)

(assert (=> b!4042238 (= e!2508001 (Union!11827 (Concat!18980 call!287510 (regTwo!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) EmptyLang!11827))))

(declare-fun b!4042239 () Bool)

(assert (=> b!4042239 (= e!2508002 (Union!11827 call!287511 call!287513))))

(declare-fun bm!287506 () Bool)

(assert (=> bm!287506 (= call!287511 (derivativeStep!3555 (ite c!698358 (regOne!24167 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (ite c!698359 (reg!12156 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (regOne!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (head!8553 lt!1437800)))))

(declare-fun b!4042240 () Bool)

(declare-fun c!698357 () Bool)

(assert (=> b!4042240 (= c!698357 (nullable!4150 (regOne!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (=> b!4042240 (= e!2508003 e!2508001)))

(declare-fun b!4042241 () Bool)

(declare-fun e!2508005 () Regex!11827)

(assert (=> b!4042241 (= e!2508005 e!2508004)))

(declare-fun c!698360 () Bool)

(assert (=> b!4042241 (= c!698360 ((_ is ElementMatch!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(declare-fun bm!287508 () Bool)

(assert (=> bm!287508 (= call!287510 call!287512)))

(declare-fun bm!287507 () Bool)

(assert (=> bm!287507 (= call!287513 (derivativeStep!3555 (ite c!698358 (regTwo!24167 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (regTwo!24166 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) (head!8553 lt!1437800)))))

(declare-fun d!1199306 () Bool)

(declare-fun lt!1438511 () Regex!11827)

(assert (=> d!1199306 (validRegex!5350 lt!1438511)))

(assert (=> d!1199306 (= lt!1438511 e!2508005)))

(declare-fun c!698356 () Bool)

(assert (=> d!1199306 (= c!698356 (or ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) ((_ is EmptyLang!11827) (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))))

(assert (=> d!1199306 (validRegex!5350 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))))

(assert (=> d!1199306 (= (derivativeStep!3555 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))) (head!8553 lt!1437800)) lt!1438511)))

(declare-fun b!4042242 () Bool)

(assert (=> b!4042242 (= e!2508005 EmptyLang!11827)))

(declare-fun b!4042243 () Bool)

(assert (=> b!4042243 (= e!2508003 (Concat!18980 call!287512 (regex!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))))

(assert (= (and d!1199306 c!698356) b!4042242))

(assert (= (and d!1199306 (not c!698356)) b!4042241))

(assert (= (and b!4042241 c!698360) b!4042236))

(assert (= (and b!4042241 (not c!698360)) b!4042237))

(assert (= (and b!4042237 c!698358) b!4042239))

(assert (= (and b!4042237 (not c!698358)) b!4042235))

(assert (= (and b!4042235 c!698359) b!4042243))

(assert (= (and b!4042235 (not c!698359)) b!4042240))

(assert (= (and b!4042240 c!698357) b!4042234))

(assert (= (and b!4042240 (not c!698357)) b!4042238))

(assert (= (or b!4042234 b!4042238) bm!287508))

(assert (= (or b!4042243 bm!287508) bm!287505))

(assert (= (or b!4042239 bm!287505) bm!287506))

(assert (= (or b!4042239 b!4042234) bm!287507))

(assert (=> bm!287506 m!4636407))

(declare-fun m!4638975 () Bool)

(assert (=> bm!287506 m!4638975))

(declare-fun m!4638977 () Bool)

(assert (=> b!4042240 m!4638977))

(assert (=> bm!287507 m!4636407))

(declare-fun m!4638979 () Bool)

(assert (=> bm!287507 m!4638979))

(declare-fun m!4638981 () Bool)

(assert (=> d!1199306 m!4638981))

(assert (=> d!1199306 m!4636419))

(assert (=> b!4040494 d!1199306))

(assert (=> b!4040494 d!1198666))

(assert (=> b!4040494 d!1199204))

(declare-fun d!1199308 () Bool)

(assert (=> d!1199308 (= (isDefined!7104 lt!1438032) (not (isEmpty!25811 lt!1438032)))))

(declare-fun bs!591011 () Bool)

(assert (= bs!591011 d!1199308))

(assert (=> bs!591011 m!4637093))

(assert (=> b!4040970 d!1199308))

(assert (=> b!4040512 d!1198568))

(assert (=> b!4040512 d!1198434))

(declare-fun d!1199310 () Bool)

(declare-fun e!2508006 () Bool)

(assert (=> d!1199310 e!2508006))

(declare-fun res!1646307 () Bool)

(assert (=> d!1199310 (=> (not res!1646307) (not e!2508006))))

(declare-fun lt!1438512 () BalanceConc!25860)

(assert (=> d!1199310 (= res!1646307 (= (list!16100 lt!1438512) lt!1437799))))

(assert (=> d!1199310 (= lt!1438512 (BalanceConc!25861 (fromList!860 lt!1437799)))))

(assert (=> d!1199310 (= (fromListB!2344 lt!1437799) lt!1438512)))

(declare-fun b!4042244 () Bool)

(assert (=> b!4042244 (= e!2508006 (isBalanced!3680 (fromList!860 lt!1437799)))))

(assert (= (and d!1199310 res!1646307) b!4042244))

(declare-fun m!4638983 () Bool)

(assert (=> d!1199310 m!4638983))

(declare-fun m!4638985 () Bool)

(assert (=> d!1199310 m!4638985))

(assert (=> b!4042244 m!4638985))

(assert (=> b!4042244 m!4638985))

(declare-fun m!4638987 () Bool)

(assert (=> b!4042244 m!4638987))

(assert (=> d!1198424 d!1199310))

(declare-fun b!4042245 () Bool)

(declare-fun e!2508010 () Bool)

(declare-fun lt!1438513 () Bool)

(declare-fun call!287514 () Bool)

(assert (=> b!4042245 (= e!2508010 (= lt!1438513 call!287514))))

(declare-fun d!1199312 () Bool)

(assert (=> d!1199312 e!2508010))

(declare-fun c!698363 () Bool)

(assert (=> d!1199312 (= c!698363 ((_ is EmptyExpr!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun e!2508013 () Bool)

(assert (=> d!1199312 (= lt!1438513 e!2508013)))

(declare-fun c!698362 () Bool)

(assert (=> d!1199312 (= c!698362 (isEmpty!25808 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))))))

(assert (=> d!1199312 (validRegex!5350 (regex!6922 (rule!9994 token!484)))))

(assert (=> d!1199312 (= (matchR!5780 (regex!6922 (rule!9994 token!484)) (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) lt!1438513)))

(declare-fun b!4042246 () Bool)

(declare-fun e!2508007 () Bool)

(declare-fun e!2508009 () Bool)

(assert (=> b!4042246 (= e!2508007 e!2508009)))

(declare-fun res!1646314 () Bool)

(assert (=> b!4042246 (=> (not res!1646314) (not e!2508009))))

(assert (=> b!4042246 (= res!1646314 (not lt!1438513))))

(declare-fun b!4042247 () Bool)

(assert (=> b!4042247 (= e!2508013 (matchR!5780 (derivativeStep!3555 (regex!6922 (rule!9994 token!484)) (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))))) (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))))))))

(declare-fun b!4042248 () Bool)

(declare-fun res!1646309 () Bool)

(declare-fun e!2508008 () Bool)

(assert (=> b!4042248 (=> (not res!1646309) (not e!2508008))))

(assert (=> b!4042248 (= res!1646309 (isEmpty!25808 (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019)))))))))

(declare-fun b!4042249 () Bool)

(declare-fun res!1646315 () Bool)

(assert (=> b!4042249 (=> res!1646315 e!2508007)))

(assert (=> b!4042249 (= res!1646315 e!2508008)))

(declare-fun res!1646310 () Bool)

(assert (=> b!4042249 (=> (not res!1646310) (not e!2508008))))

(assert (=> b!4042249 (= res!1646310 lt!1438513)))

(declare-fun b!4042250 () Bool)

(declare-fun e!2508012 () Bool)

(assert (=> b!4042250 (= e!2508010 e!2508012)))

(declare-fun c!698361 () Bool)

(assert (=> b!4042250 (= c!698361 ((_ is EmptyLang!11827) (regex!6922 (rule!9994 token!484))))))

(declare-fun bm!287509 () Bool)

(assert (=> bm!287509 (= call!287514 (isEmpty!25808 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))))))

(declare-fun b!4042251 () Bool)

(assert (=> b!4042251 (= e!2508013 (nullable!4150 (regex!6922 (rule!9994 token!484))))))

(declare-fun b!4042252 () Bool)

(assert (=> b!4042252 (= e!2508008 (= (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) (c!697933 (regex!6922 (rule!9994 token!484)))))))

(declare-fun b!4042253 () Bool)

(assert (=> b!4042253 (= e!2508012 (not lt!1438513))))

(declare-fun b!4042254 () Bool)

(declare-fun res!1646312 () Bool)

(declare-fun e!2508011 () Bool)

(assert (=> b!4042254 (=> res!1646312 e!2508011)))

(assert (=> b!4042254 (= res!1646312 (not (isEmpty!25808 (tail!6285 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))))))))

(declare-fun b!4042255 () Bool)

(declare-fun res!1646313 () Bool)

(assert (=> b!4042255 (=> res!1646313 e!2508007)))

(assert (=> b!4042255 (= res!1646313 (not ((_ is ElementMatch!11827) (regex!6922 (rule!9994 token!484)))))))

(assert (=> b!4042255 (= e!2508012 e!2508007)))

(declare-fun b!4042256 () Bool)

(declare-fun res!1646311 () Bool)

(assert (=> b!4042256 (=> (not res!1646311) (not e!2508008))))

(assert (=> b!4042256 (= res!1646311 (not call!287514))))

(declare-fun b!4042257 () Bool)

(assert (=> b!4042257 (= e!2508011 (not (= (head!8553 (list!16100 (charsOf!4738 (_1!24295 (get!14189 lt!1438019))))) (c!697933 (regex!6922 (rule!9994 token!484))))))))

(declare-fun b!4042258 () Bool)

(assert (=> b!4042258 (= e!2508009 e!2508011)))

(declare-fun res!1646308 () Bool)

(assert (=> b!4042258 (=> res!1646308 e!2508011)))

(assert (=> b!4042258 (= res!1646308 call!287514)))

(assert (= (and d!1199312 c!698362) b!4042251))

(assert (= (and d!1199312 (not c!698362)) b!4042247))

(assert (= (and d!1199312 c!698363) b!4042245))

(assert (= (and d!1199312 (not c!698363)) b!4042250))

(assert (= (and b!4042250 c!698361) b!4042253))

(assert (= (and b!4042250 (not c!698361)) b!4042255))

(assert (= (and b!4042255 (not res!1646313)) b!4042249))

(assert (= (and b!4042249 res!1646310) b!4042256))

(assert (= (and b!4042256 res!1646311) b!4042248))

(assert (= (and b!4042248 res!1646309) b!4042252))

(assert (= (and b!4042249 (not res!1646315)) b!4042246))

(assert (= (and b!4042246 res!1646314) b!4042258))

(assert (= (and b!4042258 (not res!1646308)) b!4042254))

(assert (= (and b!4042254 (not res!1646312)) b!4042257))

(assert (= (or b!4042245 b!4042256 b!4042258) bm!287509))

(assert (=> bm!287509 m!4637009))

(declare-fun m!4638989 () Bool)

(assert (=> bm!287509 m!4638989))

(assert (=> b!4042252 m!4637009))

(declare-fun m!4638991 () Bool)

(assert (=> b!4042252 m!4638991))

(assert (=> b!4042248 m!4637009))

(declare-fun m!4638993 () Bool)

(assert (=> b!4042248 m!4638993))

(assert (=> b!4042248 m!4638993))

(declare-fun m!4638995 () Bool)

(assert (=> b!4042248 m!4638995))

(assert (=> b!4042251 m!4636377))

(assert (=> b!4042254 m!4637009))

(assert (=> b!4042254 m!4638993))

(assert (=> b!4042254 m!4638993))

(assert (=> b!4042254 m!4638995))

(assert (=> b!4042247 m!4637009))

(assert (=> b!4042247 m!4638991))

(assert (=> b!4042247 m!4638991))

(declare-fun m!4638997 () Bool)

(assert (=> b!4042247 m!4638997))

(assert (=> b!4042247 m!4637009))

(assert (=> b!4042247 m!4638993))

(assert (=> b!4042247 m!4638997))

(assert (=> b!4042247 m!4638993))

(declare-fun m!4638999 () Bool)

(assert (=> b!4042247 m!4638999))

(assert (=> d!1199312 m!4637009))

(assert (=> d!1199312 m!4638989))

(assert (=> d!1199312 m!4636383))

(assert (=> b!4042257 m!4637009))

(assert (=> b!4042257 m!4638991))

(assert (=> b!4040942 d!1199312))

(assert (=> b!4040942 d!1199240))

(assert (=> b!4040942 d!1199242))

(assert (=> b!4040942 d!1198564))

(declare-fun d!1199314 () Bool)

(declare-fun lt!1438514 () Int)

(assert (=> d!1199314 (>= lt!1438514 0)))

(declare-fun e!2508014 () Int)

(assert (=> d!1199314 (= lt!1438514 e!2508014)))

(declare-fun c!698364 () Bool)

(assert (=> d!1199314 (= c!698364 ((_ is Nil!43241) lt!1437821))))

(assert (=> d!1199314 (= (size!32325 lt!1437821) lt!1438514)))

(declare-fun b!4042259 () Bool)

(assert (=> b!4042259 (= e!2508014 0)))

(declare-fun b!4042260 () Bool)

(assert (=> b!4042260 (= e!2508014 (+ 1 (size!32325 (t!334994 lt!1437821))))))

(assert (= (and d!1199314 c!698364) b!4042259))

(assert (= (and d!1199314 (not c!698364)) b!4042260))

(declare-fun m!4639001 () Bool)

(assert (=> b!4042260 m!4639001))

(assert (=> b!4040379 d!1199314))

(declare-fun d!1199316 () Bool)

(declare-fun lt!1438515 () Int)

(assert (=> d!1199316 (>= lt!1438515 0)))

(declare-fun e!2508015 () Int)

(assert (=> d!1199316 (= lt!1438515 e!2508015)))

(declare-fun c!698365 () Bool)

(assert (=> d!1199316 (= c!698365 ((_ is Nil!43241) lt!1437789))))

(assert (=> d!1199316 (= (size!32325 lt!1437789) lt!1438515)))

(declare-fun b!4042261 () Bool)

(assert (=> b!4042261 (= e!2508015 0)))

(declare-fun b!4042262 () Bool)

(assert (=> b!4042262 (= e!2508015 (+ 1 (size!32325 (t!334994 lt!1437789))))))

(assert (= (and d!1199316 c!698365) b!4042261))

(assert (= (and d!1199316 (not c!698365)) b!4042262))

(assert (=> b!4042262 m!4637983))

(assert (=> b!4040379 d!1199316))

(assert (=> b!4040379 d!1198456))

(assert (=> d!1198264 d!1198612))

(assert (=> bm!287377 d!1198428))

(declare-fun b!4042265 () Bool)

(declare-fun b_free!112541 () Bool)

(declare-fun b_next!113245 () Bool)

(assert (=> b!4042265 (= b_free!112541 (not b_next!113245))))

(declare-fun t!335184 () Bool)

(declare-fun tb!243047 () Bool)

(assert (=> (and b!4042265 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335184) tb!243047))

(declare-fun result!294566 () Bool)

(assert (= result!294566 result!294514))

(assert (=> d!1198934 t!335184))

(declare-fun tb!243049 () Bool)

(declare-fun t!335186 () Bool)

(assert (=> (and b!4042265 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335186) tb!243049))

(declare-fun result!294568 () Bool)

(assert (= result!294568 result!294478))

(assert (=> d!1198796 t!335186))

(declare-fun t!335188 () Bool)

(declare-fun tb!243051 () Bool)

(assert (=> (and b!4042265 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335188) tb!243051))

(declare-fun result!294570 () Bool)

(assert (= result!294570 result!294460))

(assert (=> d!1198652 t!335188))

(declare-fun t!335190 () Bool)

(declare-fun tb!243053 () Bool)

(assert (=> (and b!4042265 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335190) tb!243053))

(declare-fun result!294572 () Bool)

(assert (= result!294572 result!294380))

(assert (=> d!1198284 t!335190))

(assert (=> d!1198280 t!335190))

(assert (=> d!1198792 t!335186))

(declare-fun tb!243055 () Bool)

(declare-fun t!335192 () Bool)

(assert (=> (and b!4042265 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335192) tb!243055))

(declare-fun result!294574 () Bool)

(assert (= result!294574 result!294520))

(assert (=> d!1199024 t!335192))

(declare-fun tb!243057 () Bool)

(declare-fun t!335194 () Bool)

(assert (=> (and b!4042265 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 token!484)))) t!335194) tb!243057))

(declare-fun result!294576 () Bool)

(assert (= result!294576 result!294402))

(assert (=> d!1198402 t!335194))

(declare-fun b_and!310775 () Bool)

(declare-fun tp!1226977 () Bool)

(assert (=> b!4042265 (= tp!1226977 (and (=> t!335184 result!294566) (=> t!335194 result!294576) (=> t!335186 result!294568) (=> t!335192 result!294574) (=> t!335188 result!294570) (=> t!335190 result!294572) b_and!310775))))

(declare-fun b_free!112543 () Bool)

(declare-fun b_next!113247 () Bool)

(assert (=> b!4042265 (= b_free!112543 (not b_next!113247))))

(declare-fun t!335196 () Bool)

(declare-fun tb!243059 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335196) tb!243059))

(declare-fun result!294578 () Bool)

(assert (= result!294578 result!294422))

(assert (=> b!4040965 t!335196))

(declare-fun t!335198 () Bool)

(declare-fun tb!243061 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335198) tb!243061))

(declare-fun result!294580 () Bool)

(assert (= result!294580 result!294398))

(assert (=> d!1198284 t!335198))

(declare-fun tb!243063 () Bool)

(declare-fun t!335200 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438032)))))) t!335200) tb!243063))

(declare-fun result!294582 () Bool)

(assert (= result!294582 result!294526))

(assert (=> d!1199070 t!335200))

(declare-fun t!335202 () Bool)

(declare-fun tb!243065 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 token!484)))) t!335202) tb!243065))

(declare-fun result!294584 () Bool)

(assert (= result!294584 result!294484))

(assert (=> d!1198796 t!335202))

(declare-fun tb!243067 () Bool)

(declare-fun t!335204 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813)))))) t!335204) tb!243067))

(declare-fun result!294586 () Bool)

(assert (= result!294586 result!294374))

(assert (=> d!1198274 t!335204))

(declare-fun t!335206 () Bool)

(declare-fun tb!243069 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1437884)))))) t!335206) tb!243069))

(declare-fun result!294588 () Bool)

(assert (= result!294588 result!294508))

(assert (=> d!1198920 t!335206))

(declare-fun tb!243071 () Bool)

(declare-fun t!335208 () Bool)

(assert (=> (and b!4042265 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (get!14189 lt!1438019)))))) t!335208) tb!243071))

(declare-fun result!294590 () Bool)

(assert (= result!294590 result!294560))

(assert (=> d!1199242 t!335208))

(assert (=> d!1198438 t!335196))

(declare-fun tp!1226978 () Bool)

(declare-fun b_and!310777 () Bool)

(assert (=> b!4042265 (= tp!1226978 (and (=> t!335208 result!294590) (=> t!335198 result!294580) (=> t!335202 result!294584) (=> t!335204 result!294586) (=> t!335200 result!294582) (=> t!335206 result!294588) (=> t!335196 result!294578) b_and!310777))))

(declare-fun e!2508016 () Bool)

(assert (=> b!4042265 (= e!2508016 (and tp!1226977 tp!1226978))))

(declare-fun e!2508017 () Bool)

(declare-fun tp!1226979 () Bool)

(declare-fun b!4042264 () Bool)

(assert (=> b!4042264 (= e!2508017 (and tp!1226979 (inv!57785 (tag!7782 (h!48663 (t!334996 (t!334996 rules!2999))))) (inv!57788 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) e!2508016))))

(declare-fun b!4042263 () Bool)

(declare-fun e!2508019 () Bool)

(declare-fun tp!1226980 () Bool)

(assert (=> b!4042263 (= e!2508019 (and e!2508017 tp!1226980))))

(assert (=> b!4041002 (= tp!1226860 e!2508019)))

(assert (= b!4042264 b!4042265))

(assert (= b!4042263 b!4042264))

(assert (= (and b!4041002 ((_ is Cons!43243) (t!334996 (t!334996 rules!2999)))) b!4042263))

(declare-fun m!4639003 () Bool)

(assert (=> b!4042264 m!4639003))

(declare-fun m!4639005 () Bool)

(assert (=> b!4042264 m!4639005))

(declare-fun b!4042266 () Bool)

(declare-fun e!2508020 () Bool)

(assert (=> b!4042266 (= e!2508020 tp_is_empty!20625)))

(assert (=> b!4041029 (= tp!1226886 e!2508020)))

(declare-fun b!4042269 () Bool)

(declare-fun tp!1226981 () Bool)

(declare-fun tp!1226983 () Bool)

(assert (=> b!4042269 (= e!2508020 (and tp!1226981 tp!1226983))))

(declare-fun b!4042268 () Bool)

(declare-fun tp!1226985 () Bool)

(assert (=> b!4042268 (= e!2508020 tp!1226985)))

(declare-fun b!4042267 () Bool)

(declare-fun tp!1226982 () Bool)

(declare-fun tp!1226984 () Bool)

(assert (=> b!4042267 (= e!2508020 (and tp!1226982 tp!1226984))))

(assert (= (and b!4041029 ((_ is ElementMatch!11827) (reg!12156 (regex!6922 (rule!9994 token!484))))) b!4042266))

(assert (= (and b!4041029 ((_ is Concat!18980) (reg!12156 (regex!6922 (rule!9994 token!484))))) b!4042267))

(assert (= (and b!4041029 ((_ is Star!11827) (reg!12156 (regex!6922 (rule!9994 token!484))))) b!4042268))

(assert (= (and b!4041029 ((_ is Union!11827) (reg!12156 (regex!6922 (rule!9994 token!484))))) b!4042269))

(declare-fun b!4042270 () Bool)

(declare-fun e!2508021 () Bool)

(assert (=> b!4042270 (= e!2508021 tp_is_empty!20625)))

(assert (=> b!4041024 (= tp!1226878 e!2508021)))

(declare-fun b!4042273 () Bool)

(declare-fun tp!1226986 () Bool)

(declare-fun tp!1226988 () Bool)

(assert (=> b!4042273 (= e!2508021 (and tp!1226986 tp!1226988))))

(declare-fun b!4042272 () Bool)

(declare-fun tp!1226990 () Bool)

(assert (=> b!4042272 (= e!2508021 tp!1226990)))

(declare-fun b!4042271 () Bool)

(declare-fun tp!1226987 () Bool)

(declare-fun tp!1226989 () Bool)

(assert (=> b!4042271 (= e!2508021 (and tp!1226987 tp!1226989))))

(assert (= (and b!4041024 ((_ is ElementMatch!11827) (regOne!24166 (regex!6922 (h!48663 rules!2999))))) b!4042270))

(assert (= (and b!4041024 ((_ is Concat!18980) (regOne!24166 (regex!6922 (h!48663 rules!2999))))) b!4042271))

(assert (= (and b!4041024 ((_ is Star!11827) (regOne!24166 (regex!6922 (h!48663 rules!2999))))) b!4042272))

(assert (= (and b!4041024 ((_ is Union!11827) (regOne!24166 (regex!6922 (h!48663 rules!2999))))) b!4042273))

(declare-fun b!4042274 () Bool)

(declare-fun e!2508022 () Bool)

(assert (=> b!4042274 (= e!2508022 tp_is_empty!20625)))

(assert (=> b!4041024 (= tp!1226880 e!2508022)))

(declare-fun b!4042277 () Bool)

(declare-fun tp!1226991 () Bool)

(declare-fun tp!1226993 () Bool)

(assert (=> b!4042277 (= e!2508022 (and tp!1226991 tp!1226993))))

(declare-fun b!4042276 () Bool)

(declare-fun tp!1226995 () Bool)

(assert (=> b!4042276 (= e!2508022 tp!1226995)))

(declare-fun b!4042275 () Bool)

(declare-fun tp!1226992 () Bool)

(declare-fun tp!1226994 () Bool)

(assert (=> b!4042275 (= e!2508022 (and tp!1226992 tp!1226994))))

(assert (= (and b!4041024 ((_ is ElementMatch!11827) (regTwo!24166 (regex!6922 (h!48663 rules!2999))))) b!4042274))

(assert (= (and b!4041024 ((_ is Concat!18980) (regTwo!24166 (regex!6922 (h!48663 rules!2999))))) b!4042275))

(assert (= (and b!4041024 ((_ is Star!11827) (regTwo!24166 (regex!6922 (h!48663 rules!2999))))) b!4042276))

(assert (= (and b!4041024 ((_ is Union!11827) (regTwo!24166 (regex!6922 (h!48663 rules!2999))))) b!4042277))

(declare-fun b!4042278 () Bool)

(declare-fun e!2508023 () Bool)

(declare-fun tp!1226996 () Bool)

(assert (=> b!4042278 (= e!2508023 (and tp_is_empty!20625 tp!1226996))))

(assert (=> b!4041009 (= tp!1226863 e!2508023)))

(assert (= (and b!4041009 ((_ is Cons!43241) (t!334994 (t!334994 suffix!1299)))) b!4042278))

(declare-fun b!4042279 () Bool)

(declare-fun e!2508024 () Bool)

(assert (=> b!4042279 (= e!2508024 tp_is_empty!20625)))

(assert (=> b!4041028 (= tp!1226883 e!2508024)))

(declare-fun b!4042282 () Bool)

(declare-fun tp!1226997 () Bool)

(declare-fun tp!1226999 () Bool)

(assert (=> b!4042282 (= e!2508024 (and tp!1226997 tp!1226999))))

(declare-fun b!4042281 () Bool)

(declare-fun tp!1227001 () Bool)

(assert (=> b!4042281 (= e!2508024 tp!1227001)))

(declare-fun b!4042280 () Bool)

(declare-fun tp!1226998 () Bool)

(declare-fun tp!1227000 () Bool)

(assert (=> b!4042280 (= e!2508024 (and tp!1226998 tp!1227000))))

(assert (= (and b!4041028 ((_ is ElementMatch!11827) (regOne!24166 (regex!6922 (rule!9994 token!484))))) b!4042279))

(assert (= (and b!4041028 ((_ is Concat!18980) (regOne!24166 (regex!6922 (rule!9994 token!484))))) b!4042280))

(assert (= (and b!4041028 ((_ is Star!11827) (regOne!24166 (regex!6922 (rule!9994 token!484))))) b!4042281))

(assert (= (and b!4041028 ((_ is Union!11827) (regOne!24166 (regex!6922 (rule!9994 token!484))))) b!4042282))

(declare-fun b!4042283 () Bool)

(declare-fun e!2508025 () Bool)

(assert (=> b!4042283 (= e!2508025 tp_is_empty!20625)))

(assert (=> b!4041028 (= tp!1226885 e!2508025)))

(declare-fun b!4042286 () Bool)

(declare-fun tp!1227002 () Bool)

(declare-fun tp!1227004 () Bool)

(assert (=> b!4042286 (= e!2508025 (and tp!1227002 tp!1227004))))

(declare-fun b!4042285 () Bool)

(declare-fun tp!1227006 () Bool)

(assert (=> b!4042285 (= e!2508025 tp!1227006)))

(declare-fun b!4042284 () Bool)

(declare-fun tp!1227003 () Bool)

(declare-fun tp!1227005 () Bool)

(assert (=> b!4042284 (= e!2508025 (and tp!1227003 tp!1227005))))

(assert (= (and b!4041028 ((_ is ElementMatch!11827) (regTwo!24166 (regex!6922 (rule!9994 token!484))))) b!4042283))

(assert (= (and b!4041028 ((_ is Concat!18980) (regTwo!24166 (regex!6922 (rule!9994 token!484))))) b!4042284))

(assert (= (and b!4041028 ((_ is Star!11827) (regTwo!24166 (regex!6922 (rule!9994 token!484))))) b!4042285))

(assert (= (and b!4041028 ((_ is Union!11827) (regTwo!24166 (regex!6922 (rule!9994 token!484))))) b!4042286))

(declare-fun tp!1227013 () Bool)

(declare-fun tp!1227014 () Bool)

(declare-fun e!2508030 () Bool)

(declare-fun b!4042295 () Bool)

(assert (=> b!4042295 (= e!2508030 (and (inv!57792 (left!32568 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))))) tp!1227013 (inv!57792 (right!32898 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))))) tp!1227014))))

(declare-fun b!4042297 () Bool)

(declare-fun e!2508031 () Bool)

(declare-fun tp!1227015 () Bool)

(assert (=> b!4042297 (= e!2508031 tp!1227015)))

(declare-fun b!4042296 () Bool)

(declare-fun inv!57798 (IArray!26271) Bool)

(assert (=> b!4042296 (= e!2508030 (and (inv!57798 (xs!16439 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))))) e!2508031))))

(assert (=> b!4040955 (= tp!1226848 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484)))) e!2508030))))

(assert (= (and b!4040955 ((_ is Node!13133) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))))) b!4042295))

(assert (= b!4042296 b!4042297))

(assert (= (and b!4040955 ((_ is Leaf!20301) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 token!484))) (value!217911 token!484))))) b!4042296))

(declare-fun m!4639007 () Bool)

(assert (=> b!4042295 m!4639007))

(declare-fun m!4639009 () Bool)

(assert (=> b!4042295 m!4639009))

(declare-fun m!4639011 () Bool)

(assert (=> b!4042296 m!4639011))

(assert (=> b!4040955 m!4637053))

(declare-fun b!4042298 () Bool)

(declare-fun e!2508032 () Bool)

(declare-fun tp!1227016 () Bool)

(assert (=> b!4042298 (= e!2508032 (and tp_is_empty!20625 tp!1227016))))

(assert (=> b!4041012 (= tp!1226866 e!2508032)))

(assert (= (and b!4041012 ((_ is Cons!43241) (t!334994 (t!334994 suffixResult!105)))) b!4042298))

(declare-fun b!4042299 () Bool)

(declare-fun e!2508033 () Bool)

(declare-fun tp!1227017 () Bool)

(assert (=> b!4042299 (= e!2508033 (and tp_is_empty!20625 tp!1227017))))

(assert (=> b!4041032 (= tp!1226888 e!2508033)))

(assert (= (and b!4041032 ((_ is Cons!43241) (t!334994 (t!334994 prefix!494)))) b!4042299))

(declare-fun e!2508034 () Bool)

(declare-fun tp!1227019 () Bool)

(declare-fun tp!1227018 () Bool)

(declare-fun b!4042300 () Bool)

(assert (=> b!4042300 (= e!2508034 (and (inv!57792 (left!32568 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))) tp!1227018 (inv!57792 (right!32898 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))) tp!1227019))))

(declare-fun b!4042302 () Bool)

(declare-fun e!2508035 () Bool)

(declare-fun tp!1227020 () Bool)

(assert (=> b!4042302 (= e!2508035 tp!1227020)))

(declare-fun b!4042301 () Bool)

(assert (=> b!4042301 (= e!2508034 (and (inv!57798 (xs!16439 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))) e!2508035))))

(assert (=> b!4040845 (= tp!1226807 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803)))) e!2508034))))

(assert (= (and b!4040845 ((_ is Node!13133) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))) b!4042300))

(assert (= b!4042301 b!4042302))

(assert (= (and b!4040845 ((_ is Leaf!20301) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))))) b!4042301))

(declare-fun m!4639013 () Bool)

(assert (=> b!4042300 m!4639013))

(declare-fun m!4639015 () Bool)

(assert (=> b!4042300 m!4639015))

(declare-fun m!4639017 () Bool)

(assert (=> b!4042301 m!4639017))

(assert (=> b!4040845 m!4636897))

(declare-fun b!4042303 () Bool)

(declare-fun e!2508036 () Bool)

(declare-fun tp!1227021 () Bool)

(assert (=> b!4042303 (= e!2508036 (and tp_is_empty!20625 tp!1227021))))

(assert (=> b!4041011 (= tp!1226865 e!2508036)))

(assert (= (and b!4041011 ((_ is Cons!43241) (t!334994 (t!334994 newSuffix!27)))) b!4042303))

(declare-fun e!2508037 () Bool)

(declare-fun tp!1227023 () Bool)

(declare-fun tp!1227022 () Bool)

(declare-fun b!4042304 () Bool)

(assert (=> b!4042304 (= e!2508037 (and (inv!57792 (left!32568 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))))) tp!1227022 (inv!57792 (right!32898 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))))) tp!1227023))))

(declare-fun b!4042306 () Bool)

(declare-fun e!2508038 () Bool)

(declare-fun tp!1227024 () Bool)

(assert (=> b!4042306 (= e!2508038 tp!1227024)))

(declare-fun b!4042305 () Bool)

(assert (=> b!4042305 (= e!2508037 (and (inv!57798 (xs!16439 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))))) e!2508038))))

(assert (=> b!4040586 (= tp!1226804 (and (inv!57792 (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813)))))) e!2508037))))

(assert (= (and b!4040586 ((_ is Node!13133) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))))) b!4042304))

(assert (= b!4042305 b!4042306))

(assert (= (and b!4040586 ((_ is Leaf!20301) (c!697932 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (value!217911 (_1!24295 (v!39735 lt!1437813))))))) b!4042305))

(declare-fun m!4639019 () Bool)

(assert (=> b!4042304 m!4639019))

(declare-fun m!4639021 () Bool)

(assert (=> b!4042304 m!4639021))

(declare-fun m!4639023 () Bool)

(assert (=> b!4042305 m!4639023))

(assert (=> b!4040586 m!4636531))

(declare-fun b!4042307 () Bool)

(declare-fun e!2508039 () Bool)

(declare-fun tp!1227025 () Bool)

(assert (=> b!4042307 (= e!2508039 (and tp_is_empty!20625 tp!1227025))))

(assert (=> b!4041031 (= tp!1226887 e!2508039)))

(assert (= (and b!4041031 ((_ is Cons!43241) (t!334994 (t!334994 newSuffixResult!27)))) b!4042307))

(declare-fun b!4042308 () Bool)

(declare-fun e!2508040 () Bool)

(declare-fun tp!1227026 () Bool)

(assert (=> b!4042308 (= e!2508040 (and tp_is_empty!20625 tp!1227026))))

(assert (=> b!4041010 (= tp!1226864 e!2508040)))

(assert (= (and b!4041010 ((_ is Cons!43241) (t!334994 (originalCharacters!7522 token!484)))) b!4042308))

(declare-fun b!4042309 () Bool)

(declare-fun e!2508041 () Bool)

(assert (=> b!4042309 (= e!2508041 tp_is_empty!20625)))

(assert (=> b!4041026 (= tp!1226877 e!2508041)))

(declare-fun b!4042312 () Bool)

(declare-fun tp!1227027 () Bool)

(declare-fun tp!1227029 () Bool)

(assert (=> b!4042312 (= e!2508041 (and tp!1227027 tp!1227029))))

(declare-fun b!4042311 () Bool)

(declare-fun tp!1227031 () Bool)

(assert (=> b!4042311 (= e!2508041 tp!1227031)))

(declare-fun b!4042310 () Bool)

(declare-fun tp!1227028 () Bool)

(declare-fun tp!1227030 () Bool)

(assert (=> b!4042310 (= e!2508041 (and tp!1227028 tp!1227030))))

(assert (= (and b!4041026 ((_ is ElementMatch!11827) (regOne!24167 (regex!6922 (h!48663 rules!2999))))) b!4042309))

(assert (= (and b!4041026 ((_ is Concat!18980) (regOne!24167 (regex!6922 (h!48663 rules!2999))))) b!4042310))

(assert (= (and b!4041026 ((_ is Star!11827) (regOne!24167 (regex!6922 (h!48663 rules!2999))))) b!4042311))

(assert (= (and b!4041026 ((_ is Union!11827) (regOne!24167 (regex!6922 (h!48663 rules!2999))))) b!4042312))

(declare-fun b!4042313 () Bool)

(declare-fun e!2508042 () Bool)

(assert (=> b!4042313 (= e!2508042 tp_is_empty!20625)))

(assert (=> b!4041026 (= tp!1226879 e!2508042)))

(declare-fun b!4042316 () Bool)

(declare-fun tp!1227032 () Bool)

(declare-fun tp!1227034 () Bool)

(assert (=> b!4042316 (= e!2508042 (and tp!1227032 tp!1227034))))

(declare-fun b!4042315 () Bool)

(declare-fun tp!1227036 () Bool)

(assert (=> b!4042315 (= e!2508042 tp!1227036)))

(declare-fun b!4042314 () Bool)

(declare-fun tp!1227033 () Bool)

(declare-fun tp!1227035 () Bool)

(assert (=> b!4042314 (= e!2508042 (and tp!1227033 tp!1227035))))

(assert (= (and b!4041026 ((_ is ElementMatch!11827) (regTwo!24167 (regex!6922 (h!48663 rules!2999))))) b!4042313))

(assert (= (and b!4041026 ((_ is Concat!18980) (regTwo!24167 (regex!6922 (h!48663 rules!2999))))) b!4042314))

(assert (= (and b!4041026 ((_ is Star!11827) (regTwo!24167 (regex!6922 (h!48663 rules!2999))))) b!4042315))

(assert (= (and b!4041026 ((_ is Union!11827) (regTwo!24167 (regex!6922 (h!48663 rules!2999))))) b!4042316))

(declare-fun b!4042317 () Bool)

(declare-fun e!2508043 () Bool)

(assert (=> b!4042317 (= e!2508043 tp_is_empty!20625)))

(assert (=> b!4041003 (= tp!1226859 e!2508043)))

(declare-fun b!4042320 () Bool)

(declare-fun tp!1227037 () Bool)

(declare-fun tp!1227039 () Bool)

(assert (=> b!4042320 (= e!2508043 (and tp!1227037 tp!1227039))))

(declare-fun b!4042319 () Bool)

(declare-fun tp!1227041 () Bool)

(assert (=> b!4042319 (= e!2508043 tp!1227041)))

(declare-fun b!4042318 () Bool)

(declare-fun tp!1227038 () Bool)

(declare-fun tp!1227040 () Bool)

(assert (=> b!4042318 (= e!2508043 (and tp!1227038 tp!1227040))))

(assert (= (and b!4041003 ((_ is ElementMatch!11827) (regex!6922 (h!48663 (t!334996 rules!2999))))) b!4042317))

(assert (= (and b!4041003 ((_ is Concat!18980) (regex!6922 (h!48663 (t!334996 rules!2999))))) b!4042318))

(assert (= (and b!4041003 ((_ is Star!11827) (regex!6922 (h!48663 (t!334996 rules!2999))))) b!4042319))

(assert (= (and b!4041003 ((_ is Union!11827) (regex!6922 (h!48663 (t!334996 rules!2999))))) b!4042320))

(declare-fun b!4042321 () Bool)

(declare-fun e!2508044 () Bool)

(assert (=> b!4042321 (= e!2508044 tp_is_empty!20625)))

(assert (=> b!4041030 (= tp!1226882 e!2508044)))

(declare-fun b!4042324 () Bool)

(declare-fun tp!1227042 () Bool)

(declare-fun tp!1227044 () Bool)

(assert (=> b!4042324 (= e!2508044 (and tp!1227042 tp!1227044))))

(declare-fun b!4042323 () Bool)

(declare-fun tp!1227046 () Bool)

(assert (=> b!4042323 (= e!2508044 tp!1227046)))

(declare-fun b!4042322 () Bool)

(declare-fun tp!1227043 () Bool)

(declare-fun tp!1227045 () Bool)

(assert (=> b!4042322 (= e!2508044 (and tp!1227043 tp!1227045))))

(assert (= (and b!4041030 ((_ is ElementMatch!11827) (regOne!24167 (regex!6922 (rule!9994 token!484))))) b!4042321))

(assert (= (and b!4041030 ((_ is Concat!18980) (regOne!24167 (regex!6922 (rule!9994 token!484))))) b!4042322))

(assert (= (and b!4041030 ((_ is Star!11827) (regOne!24167 (regex!6922 (rule!9994 token!484))))) b!4042323))

(assert (= (and b!4041030 ((_ is Union!11827) (regOne!24167 (regex!6922 (rule!9994 token!484))))) b!4042324))

(declare-fun b!4042325 () Bool)

(declare-fun e!2508045 () Bool)

(assert (=> b!4042325 (= e!2508045 tp_is_empty!20625)))

(assert (=> b!4041030 (= tp!1226884 e!2508045)))

(declare-fun b!4042328 () Bool)

(declare-fun tp!1227047 () Bool)

(declare-fun tp!1227049 () Bool)

(assert (=> b!4042328 (= e!2508045 (and tp!1227047 tp!1227049))))

(declare-fun b!4042327 () Bool)

(declare-fun tp!1227051 () Bool)

(assert (=> b!4042327 (= e!2508045 tp!1227051)))

(declare-fun b!4042326 () Bool)

(declare-fun tp!1227048 () Bool)

(declare-fun tp!1227050 () Bool)

(assert (=> b!4042326 (= e!2508045 (and tp!1227048 tp!1227050))))

(assert (= (and b!4041030 ((_ is ElementMatch!11827) (regTwo!24167 (regex!6922 (rule!9994 token!484))))) b!4042325))

(assert (= (and b!4041030 ((_ is Concat!18980) (regTwo!24167 (regex!6922 (rule!9994 token!484))))) b!4042326))

(assert (= (and b!4041030 ((_ is Star!11827) (regTwo!24167 (regex!6922 (rule!9994 token!484))))) b!4042327))

(assert (= (and b!4041030 ((_ is Union!11827) (regTwo!24167 (regex!6922 (rule!9994 token!484))))) b!4042328))

(declare-fun b!4042329 () Bool)

(declare-fun e!2508046 () Bool)

(assert (=> b!4042329 (= e!2508046 tp_is_empty!20625)))

(assert (=> b!4041025 (= tp!1226881 e!2508046)))

(declare-fun b!4042332 () Bool)

(declare-fun tp!1227052 () Bool)

(declare-fun tp!1227054 () Bool)

(assert (=> b!4042332 (= e!2508046 (and tp!1227052 tp!1227054))))

(declare-fun b!4042331 () Bool)

(declare-fun tp!1227056 () Bool)

(assert (=> b!4042331 (= e!2508046 tp!1227056)))

(declare-fun b!4042330 () Bool)

(declare-fun tp!1227053 () Bool)

(declare-fun tp!1227055 () Bool)

(assert (=> b!4042330 (= e!2508046 (and tp!1227053 tp!1227055))))

(assert (= (and b!4041025 ((_ is ElementMatch!11827) (reg!12156 (regex!6922 (h!48663 rules!2999))))) b!4042329))

(assert (= (and b!4041025 ((_ is Concat!18980) (reg!12156 (regex!6922 (h!48663 rules!2999))))) b!4042330))

(assert (= (and b!4041025 ((_ is Star!11827) (reg!12156 (regex!6922 (h!48663 rules!2999))))) b!4042331))

(assert (= (and b!4041025 ((_ is Union!11827) (reg!12156 (regex!6922 (h!48663 rules!2999))))) b!4042332))

(declare-fun b_lambda!118067 () Bool)

(assert (= b_lambda!118021 (or (and b!4040354 b_free!112521) (and b!4040350 b_free!112525 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (and b!4041004 b_free!112533 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (and b!4042265 b_free!112541 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) b_lambda!118067)))

(declare-fun b_lambda!118069 () Bool)

(assert (= b_lambda!117971 (or (and b!4040354 b_free!112523 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4040350 b_free!112527 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4041004 b_free!112535 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4042265 b_free!112543 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) b_lambda!118069)))

(declare-fun b_lambda!118071 () Bool)

(assert (= b_lambda!118025 (or (and b!4040354 b_free!112521) (and b!4040350 b_free!112525 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (and b!4041004 b_free!112533 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) (and b!4042265 b_free!112541 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 token!484))))) b_lambda!118071)))

(declare-fun b_lambda!118073 () Bool)

(assert (= b_lambda!117973 (or (and b!4040354 b_free!112521 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4040350 b_free!112525 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4041004 b_free!112533 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4042265 b_free!112541 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) b_lambda!118073)))

(declare-fun b_lambda!118075 () Bool)

(assert (= b_lambda!117983 (or (and b!4040354 b_free!112523 (= (toChars!9321 (transformation!6922 (rule!9994 token!484))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4040350 b_free!112527 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4041004 b_free!112535 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4042265 b_free!112543 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) b_lambda!118075)))

(declare-fun b_lambda!118077 () Bool)

(assert (= b_lambda!118043 (or d!1198284 b_lambda!118077)))

(declare-fun bs!591012 () Bool)

(declare-fun d!1199318 () Bool)

(assert (= bs!591012 (and d!1199318 d!1198284)))

(assert (=> bs!591012 (= (dynLambda!18364 lambda!127385 lt!1437803) (= (list!16100 (dynLambda!18358 (toChars!9321 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) (dynLambda!18359 (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))) lt!1437803))) (list!16100 lt!1437803)))))

(declare-fun b_lambda!118083 () Bool)

(assert (=> (not b_lambda!118083) (not bs!591012)))

(assert (=> bs!591012 t!335026))

(declare-fun b_and!310779 () Bool)

(assert (= b_and!310769 (and (=> t!335026 result!294398) b_and!310779)))

(assert (=> bs!591012 t!335028))

(declare-fun b_and!310781 () Bool)

(assert (= b_and!310771 (and (=> t!335028 result!294400) b_and!310781)))

(assert (=> bs!591012 t!335054))

(declare-fun b_and!310783 () Bool)

(assert (= b_and!310773 (and (=> t!335054 result!294434) b_and!310783)))

(assert (=> bs!591012 t!335198))

(declare-fun b_and!310785 () Bool)

(assert (= b_and!310777 (and (=> t!335198 result!294580) b_and!310785)))

(declare-fun b_lambda!118085 () Bool)

(assert (=> (not b_lambda!118085) (not bs!591012)))

(assert (=> bs!591012 t!335010))

(declare-fun b_and!310787 () Bool)

(assert (= b_and!310737 (and (=> t!335010 result!294380) b_and!310787)))

(assert (=> bs!591012 t!335012))

(declare-fun b_and!310789 () Bool)

(assert (= b_and!310739 (and (=> t!335012 result!294384) b_and!310789)))

(assert (=> bs!591012 t!335048))

(declare-fun b_and!310791 () Bool)

(assert (= b_and!310741 (and (=> t!335048 result!294428) b_and!310791)))

(assert (=> bs!591012 t!335190))

(declare-fun b_and!310793 () Bool)

(assert (= b_and!310775 (and (=> t!335190 result!294572) b_and!310793)))

(assert (=> bs!591012 m!4636911))

(assert (=> bs!591012 m!4636913))

(assert (=> bs!591012 m!4636549))

(assert (=> bs!591012 m!4636911))

(assert (=> bs!591012 m!4636549))

(assert (=> bs!591012 m!4636915))

(assert (=> d!1199194 d!1199318))

(declare-fun b_lambda!118079 () Bool)

(assert (= b_lambda!117985 (or (and b!4040354 b_free!112521 (= (toValue!9462 (transformation!6922 (rule!9994 token!484))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4040350 b_free!112525 (= (toValue!9462 (transformation!6922 (h!48663 rules!2999))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4041004 b_free!112533 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) (and b!4042265 b_free!112541 (= (toValue!9462 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toValue!9462 (transformation!6922 (rule!9994 (_1!24295 (v!39735 lt!1437813))))))) b_lambda!118079)))

(declare-fun b_lambda!118081 () Bool)

(assert (= b_lambda!118023 (or (and b!4040354 b_free!112523) (and b!4040350 b_free!112527 (= (toChars!9321 (transformation!6922 (h!48663 rules!2999))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) (and b!4041004 b_free!112535 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 rules!2999)))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) (and b!4042265 b_free!112543 (= (toChars!9321 (transformation!6922 (h!48663 (t!334996 (t!334996 rules!2999))))) (toChars!9321 (transformation!6922 (rule!9994 token!484))))) b_lambda!118081)))

(check-sat (not tb!243041) (not b!4041453) (not d!1199210) (not b!4041255) (not b!4041544) (not b!4041952) (not b!4042298) (not b!4042157) (not b!4042273) (not b_lambda!118079) (not d!1198794) (not b!4041315) (not b!4041443) (not b!4042281) (not b!4041242) (not d!1199070) (not b!4041909) (not d!1199262) (not b!4041189) (not b!4041946) (not bm!287488) (not b!4041760) (not d!1199108) (not b!4042306) (not b!4041541) (not b!4041250) (not b!4041219) (not d!1198848) (not b!4042218) (not d!1198928) (not b!4042152) (not b_lambda!118067) (not b!4041729) (not b!4042257) (not b!4041818) (not b!4041374) (not b!4042247) (not b!4041819) (not b!4041713) (not b!4041208) (not b_next!113227) (not bm!287461) (not b!4041240) (not b!4042207) (not d!1199310) (not b_lambda!118005) (not b!4042315) tp_is_empty!20625 (not d!1199208) (not d!1199230) (not d!1198626) (not bm!287467) (not b!4041726) (not b!4042190) (not bm!287462) (not d!1199296) (not d!1198596) (not b!4041655) (not b!4042086) (not b!4042128) (not b!4041428) (not b!4042312) (not bm!287506) (not d!1199192) (not b!4041936) (not b!4042330) (not b!4041229) (not b!4041856) (not b!4042052) (not b!4042314) (not b!4042268) (not b!4041955) (not b!4042284) (not b_next!113231) (not d!1198944) (not b!4041780) (not b!4041682) (not b!4042262) (not d!1198678) (not b_next!113237) (not b!4041840) (not b!4041356) (not b!4042269) (not b!4042174) (not b!4042305) (not d!1199068) (not b!4042195) (not b!4042302) (not d!1199246) (not b!4041853) (not b!4041861) (not b_lambda!118071) b_and!310785 (not b!4041922) (not b!4041372) (not b!4042275) (not b!4041611) (not b!4041956) (not b!4042199) (not b!4041234) (not d!1199190) (not d!1198658) (not d!1199240) (not b!4041759) (not b!4041185) (not b_next!113245) (not b!4041847) (not b!4042271) (not b!4041697) (not bm!287465) (not b!4042159) (not d!1199084) (not d!1199228) (not b!4041551) (not bs!591012) (not b!4042324) (not b!4042075) (not b!4041467) (not b!4042176) (not b!4041741) (not d!1199292) (not b!4041675) (not d!1198784) (not b!4041695) (not b!4041227) (not b!4041722) (not b!4041442) (not b!4042272) (not b_lambda!118065) (not b!4041228) (not b!4042127) (not b!4042169) (not b!4041546) (not b!4042223) (not b!4041717) (not b!4041824) (not d!1198882) (not b!4041441) (not b!4041809) (not b!4041466) (not d!1199194) (not b!4042244) (not b!4041904) (not b!4042248) (not bm!287504) (not d!1198946) (not b!4042229) (not b!4042187) (not d!1198744) (not b!4041908) (not b!4042100) (not b!4042323) (not d!1199238) (not b!4042184) (not b!4041225) (not b!4041944) (not bm!287421) (not b!4041763) (not b!4041251) (not b_next!113229) (not b!4042318) (not d!1199308) (not b!4042254) (not bm!287507) (not b!4042172) (not b!4041900) (not b!4041772) (not b!4042304) (not b!4041886) (not b!4042141) (not b!4042173) (not b!4041363) (not b!4042177) (not b!4042252) (not d!1199242) (not b!4041238) (not b!4041839) (not b!4041934) (not b!4041248) (not b!4041913) (not b!4042079) (not b!4041762) (not b!4042232) (not bm!287464) (not b!4042327) (not b!4041657) (not b!4041849) (not bm!287509) (not d!1198668) (not b_lambda!118073) (not d!1198772) (not d!1198580) (not b!4041666) (not b!4041669) (not b!4041899) (not b!4042310) (not b_lambda!118083) (not d!1199282) (not b!4042285) (not b!4041474) b_and!310779 (not d!1199078) (not b!4042112) (not d!1198766) (not d!1199016) (not b_lambda!118077) (not b!4041249) (not b!4041764) (not b!4041958) (not b!4042296) (not b!4041659) (not b!4042193) (not d!1199306) (not d!1199098) (not bm!287501) (not b!4042264) (not d!1199060) (not bm!287503) (not b!4042160) (not d!1199200) (not b!4042322) (not b!4041253) (not b_lambda!118039) (not d!1198920) (not b!4042163) (not b!4041476) (not b!4042202) (not bm!287484) (not d!1198956) (not b!4042219) (not b!4042307) (not b!4041902) (not b!4042267) (not d!1199140) (not b!4041187) (not b!4041672) (not b!4041235) (not bm!287468) (not b!4041665) (not d!1199206) (not b!4042320) (not b!4042077) (not tb!242997) (not b!4041905) (not b!4041811) (not tb!243009) (not b!4041758) (not d!1199090) (not b!4042191) (not b!4041667) b_and!310787 (not b!4042308) (not b_lambda!118001) (not b!4042213) (not b!4042277) (not b!4041951) (not b!4041693) (not d!1198972) (not b!4041920) (not b!4041454) (not d!1198942) (not b!4042316) (not b!4041877) (not bm!287485) (not b!4042222) (not b!4041914) (not b!4041223) (not d!1198968) (not d!1198916) (not d!1199270) (not b!4041679) (not b!4041436) (not b!4040845) (not b!4041211) (not d!1199092) (not b!4042201) (not b!4042280) (not b!4042166) (not b!4041670) (not d!1198938) (not b!4041721) (not b!4041355) (not b!4042251) (not b!4041718) (not b!4042217) (not b!4040955) (not b!4041332) (not b!4042278) (not b_lambda!118069) (not b!4041855) (not b!4041221) (not b!4042164) (not b!4041923) (not b!4041465) (not b!4041885) (not b!4041438) (not b!4041422) (not d!1198952) (not d!1199264) (not b_lambda!118081) (not tb!243003) (not b!4042211) b_and!310783 (not d!1198910) (not b!4042301) (not b!4042206) (not d!1198996) (not b!4041930) (not b!4041254) (not b!4041370) (not b!4042282) (not d!1199126) (not b!4042153) (not b!4042260) b_and!310781 (not b_next!113239) (not b!4041873) (not d!1199050) (not d!1198796) (not bm!287500) (not d!1198676) (not b!4041691) (not b!4041942) (not b!4041478) (not b!4042227) (not b!4042303) (not d!1199258) (not d!1199312) (not b_lambda!118013) (not b!4041912) (not b!4042168) (not b!4041730) (not d!1199236) (not b!4042297) (not b!4042276) (not b!4041745) (not d!1198890) b_and!310793 (not b!4042183) (not b!4041727) (not b!4042263) (not b!4041932) (not b!4042180) (not d!1198846) (not b!4041660) (not b!4041815) (not b_lambda!118041) (not b!4042209) (not d!1198880) (not b!4042170) (not b!4042240) (not d!1199036) (not b!4041194) (not b!4042226) (not b_lambda!118003) (not b!4042189) (not b!4042215) (not b_lambda!118085) (not b!4041878) (not b!4040586) (not b!4041750) (not b_lambda!118035) (not d!1199272) (not b!4041609) (not b!4041430) (not bm!287480) (not b!4042178) (not bm!287478) (not b!4041931) (not b!4042125) (not tb!242961) (not b!4041685) (not b!4042205) (not b!4041362) (not d!1199032) (not d!1198808) (not b!4042328) (not b_next!113247) (not b_next!113225) (not b!4042210) (not b!4041569) (not b_lambda!118037) (not b!4041455) (not d!1198964) (not b!4041961) (not d!1198994) (not b!4041883) (not b!4041761) (not b!4041711) (not b!4041874) (not b!4041694) (not b!4042300) (not b!4041612) (not b!4041252) (not b!4042119) (not b!4042142) (not b!4041195) (not d!1198610) (not b!4042102) (not b!4041424) (not d!1198780) (not b!4042286) b_and!310791 (not d!1198540) (not d!1199102) (not d!1199226) (not d!1198788) (not d!1198990) (not d!1199304) (not b!4041680) (not bm!287486) (not d!1199150) (not b!4041653) (not d!1199302) (not b!4042331) (not b!4042332) (not b!4041367) (not b!4041237) (not b_lambda!118075) (not b!4042182) (not b!4041366) (not b!4041814) (not b!4041209) (not b!4042299) (not b!4042129) (not d!1198670) (not d!1198904) (not b!4041948) (not b!4041676) (not b!4042326) (not b!4041663) (not b!4041880) (not b!4042295) (not b!4041241) (not bm!287422) (not b!4041743) (not b!4042311) (not b!4041821) (not b!4041715) (not b!4041207) b_and!310789 (not b!4041239) (not b!4041757) (not b!4041291) (not b!4042319) (not b!4041947) (not b!4042186) (not bm!287466) (not tb!242967) (not bm!287414) (not b!4042214) (not b!4042080) (not d!1198604) (not tb!242943) (not d!1199260) (not b!4041851) (not d!1199086) (not tb!242991) (not b!4042188) (not b!4042197) (not bm!287463))
(check-sat (not b_next!113227) (not b_next!113231) (not b_next!113237) b_and!310785 (not b_next!113245) (not b_next!113229) b_and!310779 b_and!310787 b_and!310783 b_and!310793 b_and!310791 b_and!310789 b_and!310781 (not b_next!113239) (not b_next!113247) (not b_next!113225))
