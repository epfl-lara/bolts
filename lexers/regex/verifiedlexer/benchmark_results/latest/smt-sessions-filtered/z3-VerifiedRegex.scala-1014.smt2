; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50532 () Bool)

(assert start!50532)

(declare-fun b!546696 () Bool)

(declare-fun b_free!15201 () Bool)

(declare-fun b_next!15217 () Bool)

(assert (=> b!546696 (= b_free!15201 (not b_next!15217))))

(declare-fun tp!173505 () Bool)

(declare-fun b_and!53387 () Bool)

(assert (=> b!546696 (= tp!173505 b_and!53387)))

(declare-fun b_free!15203 () Bool)

(declare-fun b_next!15219 () Bool)

(assert (=> b!546696 (= b_free!15203 (not b_next!15219))))

(declare-fun tp!173506 () Bool)

(declare-fun b_and!53389 () Bool)

(assert (=> b!546696 (= tp!173506 b_and!53389)))

(declare-fun b!546714 () Bool)

(declare-fun b_free!15205 () Bool)

(declare-fun b_next!15221 () Bool)

(assert (=> b!546714 (= b_free!15205 (not b_next!15221))))

(declare-fun tp!173499 () Bool)

(declare-fun b_and!53391 () Bool)

(assert (=> b!546714 (= tp!173499 b_and!53391)))

(declare-fun b_free!15207 () Bool)

(declare-fun b_next!15223 () Bool)

(assert (=> b!546714 (= b_free!15207 (not b_next!15223))))

(declare-fun tp!173507 () Bool)

(declare-fun b_and!53393 () Bool)

(assert (=> b!546714 (= tp!173507 b_and!53393)))

(declare-fun e!330395 () Bool)

(declare-fun tp!173502 () Bool)

(declare-fun b!546682 () Bool)

(declare-datatypes ((C!3620 0))(
  ( (C!3621 (val!2036 Int)) )
))
(declare-datatypes ((Regex!1349 0))(
  ( (ElementMatch!1349 (c!103028 C!3620)) (Concat!2388 (regOne!3210 Regex!1349) (regTwo!3210 Regex!1349)) (EmptyExpr!1349) (Star!1349 (reg!1678 Regex!1349)) (EmptyLang!1349) (Union!1349 (regOne!3211 Regex!1349) (regTwo!3211 Regex!1349)) )
))
(declare-datatypes ((List!5395 0))(
  ( (Nil!5385) (Cons!5385 (h!10786 (_ BitVec 16)) (t!74768 List!5395)) )
))
(declare-datatypes ((TokenValue!1039 0))(
  ( (FloatLiteralValue!2078 (text!7718 List!5395)) (TokenValueExt!1038 (__x!3976 Int)) (Broken!5195 (value!33768 List!5395)) (Object!1048) (End!1039) (Def!1039) (Underscore!1039) (Match!1039) (Else!1039) (Error!1039) (Case!1039) (If!1039) (Extends!1039) (Abstract!1039) (Class!1039) (Val!1039) (DelimiterValue!2078 (del!1099 List!5395)) (KeywordValue!1045 (value!33769 List!5395)) (CommentValue!2078 (value!33770 List!5395)) (WhitespaceValue!2078 (value!33771 List!5395)) (IndentationValue!1039 (value!33772 List!5395)) (String!6938) (Int32!1039) (Broken!5196 (value!33773 List!5395)) (Boolean!1040) (Unit!9460) (OperatorValue!1042 (op!1099 List!5395)) (IdentifierValue!2078 (value!33774 List!5395)) (IdentifierValue!2079 (value!33775 List!5395)) (WhitespaceValue!2079 (value!33776 List!5395)) (True!2078) (False!2078) (Broken!5197 (value!33777 List!5395)) (Broken!5198 (value!33778 List!5395)) (True!2079) (RightBrace!1039) (RightBracket!1039) (Colon!1039) (Null!1039) (Comma!1039) (LeftBracket!1039) (False!2079) (LeftBrace!1039) (ImaginaryLiteralValue!1039 (text!7719 List!5395)) (StringLiteralValue!3117 (value!33779 List!5395)) (EOFValue!1039 (value!33780 List!5395)) (IdentValue!1039 (value!33781 List!5395)) (DelimiterValue!2079 (value!33782 List!5395)) (DedentValue!1039 (value!33783 List!5395)) (NewLineValue!1039 (value!33784 List!5395)) (IntegerValue!3117 (value!33785 (_ BitVec 32)) (text!7720 List!5395)) (IntegerValue!3118 (value!33786 Int) (text!7721 List!5395)) (Times!1039) (Or!1039) (Equal!1039) (Minus!1039) (Broken!5199 (value!33787 List!5395)) (And!1039) (Div!1039) (LessEqual!1039) (Mod!1039) (Concat!2389) (Not!1039) (Plus!1039) (SpaceValue!1039 (value!33788 List!5395)) (IntegerValue!3119 (value!33789 Int) (text!7722 List!5395)) (StringLiteralValue!3118 (text!7723 List!5395)) (FloatLiteralValue!2079 (text!7724 List!5395)) (BytesLiteralValue!1039 (value!33790 List!5395)) (CommentValue!2079 (value!33791 List!5395)) (StringLiteralValue!3119 (value!33792 List!5395)) (ErrorTokenValue!1039 (msg!1100 List!5395)) )
))
(declare-datatypes ((String!6939 0))(
  ( (String!6940 (value!33793 String)) )
))
(declare-datatypes ((List!5396 0))(
  ( (Nil!5386) (Cons!5386 (h!10787 C!3620) (t!74769 List!5396)) )
))
(declare-datatypes ((IArray!3465 0))(
  ( (IArray!3466 (innerList!1790 List!5396)) )
))
(declare-datatypes ((Conc!1732 0))(
  ( (Node!1732 (left!4460 Conc!1732) (right!4790 Conc!1732) (csize!3694 Int) (cheight!1943 Int)) (Leaf!2747 (xs!4369 IArray!3465) (csize!3695 Int)) (Empty!1732) )
))
(declare-datatypes ((BalanceConc!3472 0))(
  ( (BalanceConc!3473 (c!103029 Conc!1732)) )
))
(declare-datatypes ((TokenValueInjection!1846 0))(
  ( (TokenValueInjection!1847 (toValue!1862 Int) (toChars!1721 Int)) )
))
(declare-datatypes ((Rule!1830 0))(
  ( (Rule!1831 (regex!1015 Regex!1349) (tag!1277 String!6939) (isSeparator!1015 Bool) (transformation!1015 TokenValueInjection!1846)) )
))
(declare-datatypes ((Token!1766 0))(
  ( (Token!1767 (value!33794 TokenValue!1039) (rule!1733 Rule!1830) (size!4316 Int) (originalCharacters!1054 List!5396)) )
))
(declare-fun token!491 () Token!1766)

(declare-fun e!330397 () Bool)

(declare-fun inv!6753 (String!6939) Bool)

(declare-fun inv!6756 (TokenValueInjection!1846) Bool)

(assert (=> b!546682 (= e!330395 (and tp!173502 (inv!6753 (tag!1277 (rule!1733 token!491))) (inv!6756 (transformation!1015 (rule!1733 token!491))) e!330397))))

(declare-fun b!546683 () Bool)

(declare-fun res!233655 () Bool)

(declare-fun e!330400 () Bool)

(assert (=> b!546683 (=> (not res!233655) (not e!330400))))

(declare-fun size!4317 (List!5396) Int)

(assert (=> b!546683 (= res!233655 (= (size!4316 token!491) (size!4317 (originalCharacters!1054 token!491))))))

(declare-fun b!546684 () Bool)

(declare-datatypes ((Unit!9461 0))(
  ( (Unit!9462) )
))
(declare-fun e!330411 () Unit!9461)

(declare-fun Unit!9463 () Unit!9461)

(assert (=> b!546684 (= e!330411 Unit!9463)))

(declare-fun lt!229349 () Unit!9461)

(declare-datatypes ((tuple2!6420 0))(
  ( (tuple2!6421 (_1!3474 Token!1766) (_2!3474 List!5396)) )
))
(declare-datatypes ((Option!1365 0))(
  ( (None!1364) (Some!1364 (v!16183 tuple2!6420)) )
))
(declare-fun lt!229347 () Option!1365)

(declare-fun lt!229344 () BalanceConc!3472)

(declare-fun lemmaSemiInverse!144 (TokenValueInjection!1846 BalanceConc!3472) Unit!9461)

(assert (=> b!546684 (= lt!229349 (lemmaSemiInverse!144 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229344))))

(declare-fun lt!229354 () List!5396)

(declare-datatypes ((List!5397 0))(
  ( (Nil!5387) (Cons!5387 (h!10788 Rule!1830) (t!74770 List!5397)) )
))
(declare-fun rules!3103 () List!5397)

(declare-datatypes ((LexerInterface!901 0))(
  ( (LexerInterfaceExt!898 (__x!3977 Int)) (Lexer!899) )
))
(declare-fun thiss!22590 () LexerInterface!901)

(declare-fun input!2705 () List!5396)

(declare-fun lt!229368 () Unit!9461)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!20 (LexerInterface!901 List!5397 Rule!1830 List!5396 List!5396 List!5396 Rule!1830) Unit!9461)

(assert (=> b!546684 (= lt!229368 (lemmaMaxPrefixOutputsMaxPrefix!20 thiss!22590 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347))) lt!229354 input!2705 input!2705 (rule!1733 token!491)))))

(declare-fun res!233638 () Bool)

(declare-fun matchR!508 (Regex!1349 List!5396) Bool)

(assert (=> b!546684 (= res!233638 (not (matchR!508 (regex!1015 (rule!1733 token!491)) input!2705)))))

(declare-fun e!330406 () Bool)

(assert (=> b!546684 (=> (not res!233638) (not e!330406))))

(assert (=> b!546684 e!330406))

(declare-fun b!546685 () Bool)

(declare-fun e!330413 () Bool)

(declare-fun tp_is_empty!3053 () Bool)

(declare-fun tp!173500 () Bool)

(assert (=> b!546685 (= e!330413 (and tp_is_empty!3053 tp!173500))))

(declare-fun b!546686 () Bool)

(declare-fun e!330418 () Bool)

(declare-fun e!330401 () Bool)

(assert (=> b!546686 (= e!330418 e!330401)))

(declare-fun res!233649 () Bool)

(assert (=> b!546686 (=> (not res!233649) (not e!330401))))

(declare-fun isDefined!1177 (Option!1365) Bool)

(assert (=> b!546686 (= res!233649 (isDefined!1177 lt!229347))))

(declare-fun b!546687 () Bool)

(declare-fun e!330405 () Bool)

(declare-fun e!330415 () Bool)

(assert (=> b!546687 (= e!330405 (not e!330415))))

(declare-fun res!233648 () Bool)

(assert (=> b!546687 (=> res!233648 e!330415)))

(declare-fun lt!229346 () List!5396)

(declare-fun isPrefix!657 (List!5396 List!5396) Bool)

(assert (=> b!546687 (= res!233648 (not (isPrefix!657 input!2705 lt!229346)))))

(declare-fun lt!229380 () List!5396)

(assert (=> b!546687 (isPrefix!657 lt!229380 lt!229346)))

(declare-fun lt!229359 () Unit!9461)

(declare-fun suffix!1342 () List!5396)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!508 (List!5396 List!5396) Unit!9461)

(assert (=> b!546687 (= lt!229359 (lemmaConcatTwoListThenFirstIsPrefix!508 lt!229380 suffix!1342))))

(declare-fun lt!229364 () List!5396)

(assert (=> b!546687 (isPrefix!657 input!2705 lt!229364)))

(declare-fun lt!229373 () Unit!9461)

(assert (=> b!546687 (= lt!229373 (lemmaConcatTwoListThenFirstIsPrefix!508 input!2705 suffix!1342))))

(declare-fun e!330396 () Bool)

(assert (=> b!546687 e!330396))

(declare-fun res!233658 () Bool)

(assert (=> b!546687 (=> (not res!233658) (not e!330396))))

(declare-fun lt!229377 () TokenValue!1039)

(assert (=> b!546687 (= res!233658 (= (value!33794 (_1!3474 (v!16183 lt!229347))) lt!229377))))

(declare-fun apply!1290 (TokenValueInjection!1846 BalanceConc!3472) TokenValue!1039)

(assert (=> b!546687 (= lt!229377 (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229344))))

(declare-fun seqFromList!1213 (List!5396) BalanceConc!3472)

(assert (=> b!546687 (= lt!229344 (seqFromList!1213 lt!229354))))

(declare-fun lt!229356 () Unit!9461)

(declare-fun lemmaInv!163 (TokenValueInjection!1846) Unit!9461)

(assert (=> b!546687 (= lt!229356 (lemmaInv!163 (transformation!1015 (rule!1733 token!491))))))

(declare-fun lt!229381 () Unit!9461)

(assert (=> b!546687 (= lt!229381 (lemmaInv!163 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))))))

(declare-fun ruleValid!235 (LexerInterface!901 Rule!1830) Bool)

(assert (=> b!546687 (ruleValid!235 thiss!22590 (rule!1733 token!491))))

(declare-fun lt!229374 () Unit!9461)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!94 (LexerInterface!901 Rule!1830 List!5397) Unit!9461)

(assert (=> b!546687 (= lt!229374 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!94 thiss!22590 (rule!1733 token!491) rules!3103))))

(assert (=> b!546687 (ruleValid!235 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))))))

(declare-fun lt!229367 () Unit!9461)

(assert (=> b!546687 (= lt!229367 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!94 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))) rules!3103))))

(assert (=> b!546687 (isPrefix!657 input!2705 input!2705)))

(declare-fun lt!229365 () Unit!9461)

(declare-fun lemmaIsPrefixRefl!397 (List!5396 List!5396) Unit!9461)

(assert (=> b!546687 (= lt!229365 (lemmaIsPrefixRefl!397 input!2705 input!2705))))

(declare-fun lt!229348 () List!5396)

(assert (=> b!546687 (= (_2!3474 (v!16183 lt!229347)) lt!229348)))

(declare-fun lt!229362 () Unit!9461)

(declare-fun lemmaSamePrefixThenSameSuffix!384 (List!5396 List!5396 List!5396 List!5396 List!5396) Unit!9461)

(assert (=> b!546687 (= lt!229362 (lemmaSamePrefixThenSameSuffix!384 lt!229354 (_2!3474 (v!16183 lt!229347)) lt!229354 lt!229348 input!2705))))

(declare-fun getSuffix!180 (List!5396 List!5396) List!5396)

(assert (=> b!546687 (= lt!229348 (getSuffix!180 input!2705 lt!229354))))

(declare-fun lt!229361 () List!5396)

(assert (=> b!546687 (isPrefix!657 lt!229354 lt!229361)))

(declare-fun ++!1503 (List!5396 List!5396) List!5396)

(assert (=> b!546687 (= lt!229361 (++!1503 lt!229354 (_2!3474 (v!16183 lt!229347))))))

(declare-fun lt!229371 () Unit!9461)

(assert (=> b!546687 (= lt!229371 (lemmaConcatTwoListThenFirstIsPrefix!508 lt!229354 (_2!3474 (v!16183 lt!229347))))))

(declare-fun lt!229355 () Unit!9461)

(declare-fun lemmaCharactersSize!94 (Token!1766) Unit!9461)

(assert (=> b!546687 (= lt!229355 (lemmaCharactersSize!94 token!491))))

(declare-fun lt!229353 () Unit!9461)

(assert (=> b!546687 (= lt!229353 (lemmaCharactersSize!94 (_1!3474 (v!16183 lt!229347))))))

(declare-fun lt!229369 () Unit!9461)

(declare-fun e!330410 () Unit!9461)

(assert (=> b!546687 (= lt!229369 e!330410)))

(declare-fun c!103027 () Bool)

(declare-fun lt!229345 () Int)

(declare-fun lt!229376 () Int)

(assert (=> b!546687 (= c!103027 (> lt!229345 lt!229376))))

(assert (=> b!546687 (= lt!229376 (size!4317 lt!229380))))

(assert (=> b!546687 (= lt!229345 (size!4317 lt!229354))))

(declare-fun list!2233 (BalanceConc!3472) List!5396)

(declare-fun charsOf!644 (Token!1766) BalanceConc!3472)

(assert (=> b!546687 (= lt!229354 (list!2233 (charsOf!644 (_1!3474 (v!16183 lt!229347)))))))

(declare-fun lt!229357 () tuple2!6420)

(assert (=> b!546687 (= lt!229347 (Some!1364 lt!229357))))

(assert (=> b!546687 (= lt!229357 (tuple2!6421 (_1!3474 (v!16183 lt!229347)) (_2!3474 (v!16183 lt!229347))))))

(declare-fun lt!229378 () Unit!9461)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!100 (List!5396 List!5396 List!5396 List!5396) Unit!9461)

(assert (=> b!546687 (= lt!229378 (lemmaConcatSameAndSameSizesThenSameLists!100 lt!229380 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!546688 () Bool)

(declare-fun res!233637 () Bool)

(declare-fun e!330420 () Bool)

(assert (=> b!546688 (=> res!233637 e!330420)))

(assert (=> b!546688 (= res!233637 (= (rule!1733 (_1!3474 (v!16183 lt!229347))) (rule!1733 token!491)))))

(declare-fun b!546689 () Bool)

(declare-fun e!330408 () Bool)

(declare-fun e!330409 () Bool)

(assert (=> b!546689 (= e!330408 e!330409)))

(declare-fun res!233663 () Bool)

(assert (=> b!546689 (=> (not res!233663) (not e!330409))))

(declare-fun lt!229351 () Option!1365)

(assert (=> b!546689 (= res!233663 (isDefined!1177 lt!229351))))

(declare-fun maxPrefix!599 (LexerInterface!901 List!5397 List!5396) Option!1365)

(assert (=> b!546689 (= lt!229351 (maxPrefix!599 thiss!22590 rules!3103 lt!229364))))

(assert (=> b!546689 (= lt!229364 (++!1503 input!2705 suffix!1342))))

(declare-fun b!546690 () Bool)

(declare-fun e!330407 () Bool)

(assert (=> b!546690 (= e!330407 e!330405)))

(declare-fun res!233660 () Bool)

(assert (=> b!546690 (=> (not res!233660) (not e!330405))))

(assert (=> b!546690 (= res!233660 (= lt!229346 lt!229364))))

(assert (=> b!546690 (= lt!229346 (++!1503 lt!229380 suffix!1342))))

(declare-fun b!546691 () Bool)

(declare-fun e!330416 () Bool)

(declare-fun e!330412 () Bool)

(declare-fun tp!173503 () Bool)

(assert (=> b!546691 (= e!330416 (and e!330412 tp!173503))))

(declare-fun b!546692 () Bool)

(assert (=> b!546692 (= e!330396 (and (= (size!4316 (_1!3474 (v!16183 lt!229347))) lt!229345) (= (originalCharacters!1054 (_1!3474 (v!16183 lt!229347))) lt!229354) (= lt!229357 (tuple2!6421 (Token!1767 lt!229377 (rule!1733 (_1!3474 (v!16183 lt!229347))) lt!229345 lt!229354) lt!229348))))))

(declare-fun res!233641 () Bool)

(declare-fun e!330417 () Bool)

(assert (=> start!50532 (=> (not res!233641) (not e!330417))))

(get-info :version)

(assert (=> start!50532 (= res!233641 ((_ is Lexer!899) thiss!22590))))

(assert (=> start!50532 e!330417))

(assert (=> start!50532 e!330413))

(assert (=> start!50532 e!330416))

(declare-fun e!330402 () Bool)

(declare-fun inv!6757 (Token!1766) Bool)

(assert (=> start!50532 (and (inv!6757 token!491) e!330402)))

(assert (=> start!50532 true))

(declare-fun e!330419 () Bool)

(assert (=> start!50532 e!330419))

(declare-fun b!546693 () Bool)

(declare-fun res!233640 () Bool)

(assert (=> b!546693 (=> (not res!233640) (not e!330401))))

(declare-fun get!2037 (Option!1365) tuple2!6420)

(assert (=> b!546693 (= res!233640 (= (_1!3474 (get!2037 lt!229347)) (_1!3474 (v!16183 lt!229347))))))

(declare-fun lt!229358 () TokenValue!1039)

(declare-fun lt!229370 () List!5396)

(declare-fun b!546694 () Bool)

(assert (=> b!546694 (= e!330400 (and (= (size!4316 token!491) lt!229376) (= (originalCharacters!1054 token!491) lt!229380) (= (tuple2!6421 token!491 suffix!1342) (tuple2!6421 (Token!1767 lt!229358 (rule!1733 token!491) lt!229376 lt!229380) lt!229370))))))

(declare-fun b!546695 () Bool)

(declare-fun tp!173504 () Bool)

(assert (=> b!546695 (= e!330419 (and tp_is_empty!3053 tp!173504))))

(declare-fun e!330404 () Bool)

(assert (=> b!546696 (= e!330404 (and tp!173505 tp!173506))))

(declare-fun b!546697 () Bool)

(declare-fun res!233643 () Bool)

(assert (=> b!546697 (=> (not res!233643) (not e!330417))))

(declare-fun isEmpty!3888 (List!5396) Bool)

(assert (=> b!546697 (= res!233643 (not (isEmpty!3888 input!2705)))))

(declare-fun b!546698 () Bool)

(declare-fun Unit!9464 () Unit!9461)

(assert (=> b!546698 (= e!330410 Unit!9464)))

(assert (=> b!546698 false))

(declare-fun b!546699 () Bool)

(declare-fun res!233650 () Bool)

(assert (=> b!546699 (=> res!233650 e!330420)))

(declare-fun contains!1257 (List!5397 Rule!1830) Bool)

(assert (=> b!546699 (= res!233650 (not (contains!1257 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347))))))))

(declare-fun b!546700 () Bool)

(declare-fun res!233651 () Bool)

(assert (=> b!546700 (=> res!233651 e!330420)))

(declare-fun getIndex!16 (List!5397 Rule!1830) Int)

(assert (=> b!546700 (= res!233651 (>= (getIndex!16 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (getIndex!16 rules!3103 (rule!1733 token!491))))))

(declare-fun b!546701 () Bool)

(assert (=> b!546701 (= e!330406 false)))

(declare-fun b!546702 () Bool)

(assert (=> b!546702 (= e!330417 e!330408)))

(declare-fun res!233645 () Bool)

(assert (=> b!546702 (=> (not res!233645) (not e!330408))))

(assert (=> b!546702 (= res!233645 (= lt!229380 input!2705))))

(assert (=> b!546702 (= lt!229380 (list!2233 (charsOf!644 token!491)))))

(declare-fun b!546703 () Bool)

(declare-fun tp!173508 () Bool)

(assert (=> b!546703 (= e!330412 (and tp!173508 (inv!6753 (tag!1277 (h!10788 rules!3103))) (inv!6756 (transformation!1015 (h!10788 rules!3103))) e!330404))))

(declare-fun b!546704 () Bool)

(declare-fun Unit!9465 () Unit!9461)

(assert (=> b!546704 (= e!330411 Unit!9465)))

(declare-fun b!546705 () Bool)

(declare-fun e!330398 () Bool)

(assert (=> b!546705 (= e!330398 e!330418)))

(declare-fun res!233662 () Bool)

(assert (=> b!546705 (=> res!233662 e!330418)))

(assert (=> b!546705 (= res!233662 (>= lt!229345 lt!229376))))

(declare-fun b!546706 () Bool)

(declare-fun validRegex!450 (Regex!1349) Bool)

(assert (=> b!546706 (= e!330420 (validRegex!450 (regex!1015 (rule!1733 token!491))))))

(declare-fun b!546707 () Bool)

(declare-fun res!233652 () Bool)

(assert (=> b!546707 (=> res!233652 e!330420)))

(assert (=> b!546707 (= res!233652 (not (isEmpty!3888 (_2!3474 (v!16183 lt!229347)))))))

(declare-fun b!546708 () Bool)

(assert (=> b!546708 (= e!330401 (= lt!229348 (_2!3474 (v!16183 lt!229347))))))

(declare-fun b!546709 () Bool)

(declare-fun e!330414 () Bool)

(assert (=> b!546709 (= e!330409 e!330414)))

(declare-fun res!233642 () Bool)

(assert (=> b!546709 (=> (not res!233642) (not e!330414))))

(declare-fun lt!229360 () tuple2!6420)

(assert (=> b!546709 (= res!233642 (and (= (_1!3474 lt!229360) token!491) (= (_2!3474 lt!229360) suffix!1342)))))

(assert (=> b!546709 (= lt!229360 (get!2037 lt!229351))))

(declare-fun tp!173501 () Bool)

(declare-fun b!546710 () Bool)

(declare-fun inv!21 (TokenValue!1039) Bool)

(assert (=> b!546710 (= e!330402 (and (inv!21 (value!33794 token!491)) e!330395 tp!173501))))

(declare-fun b!546711 () Bool)

(declare-fun res!233664 () Bool)

(assert (=> b!546711 (=> res!233664 e!330420)))

(assert (=> b!546711 (= res!233664 (not (= lt!229351 (Some!1364 (tuple2!6421 (Token!1767 (apply!1290 (transformation!1015 (rule!1733 token!491)) (seqFromList!1213 input!2705)) (rule!1733 token!491) (size!4317 input!2705) input!2705) (getSuffix!180 lt!229364 input!2705))))))))

(declare-fun b!546712 () Bool)

(declare-fun res!233656 () Bool)

(assert (=> b!546712 (=> (not res!233656) (not e!330417))))

(declare-fun rulesInvariant!864 (LexerInterface!901 List!5397) Bool)

(assert (=> b!546712 (= res!233656 (rulesInvariant!864 thiss!22590 rules!3103))))

(declare-fun b!546713 () Bool)

(assert (=> b!546713 (= e!330414 e!330407)))

(declare-fun res!233659 () Bool)

(assert (=> b!546713 (=> (not res!233659) (not e!330407))))

(assert (=> b!546713 (= res!233659 ((_ is Some!1364) lt!229347))))

(assert (=> b!546713 (= lt!229347 (maxPrefix!599 thiss!22590 rules!3103 input!2705))))

(assert (=> b!546714 (= e!330397 (and tp!173499 tp!173507))))

(declare-fun b!546715 () Bool)

(declare-fun res!233647 () Bool)

(assert (=> b!546715 (=> res!233647 e!330420)))

(assert (=> b!546715 (= res!233647 (not (= lt!229351 (Some!1364 (tuple2!6421 token!491 suffix!1342)))))))

(declare-fun b!546716 () Bool)

(declare-fun res!233653 () Bool)

(assert (=> b!546716 (=> res!233653 e!330420)))

(assert (=> b!546716 (= res!233653 (not (contains!1257 rules!3103 (rule!1733 token!491))))))

(declare-fun b!546717 () Bool)

(declare-fun Unit!9466 () Unit!9461)

(assert (=> b!546717 (= e!330410 Unit!9466)))

(declare-fun b!546718 () Bool)

(assert (=> b!546718 (= e!330415 e!330420)))

(declare-fun res!233639 () Bool)

(assert (=> b!546718 (=> res!233639 e!330420)))

(assert (=> b!546718 (= res!233639 (or (not (= lt!229345 lt!229376)) (not (= lt!229361 input!2705)) (not (= lt!229361 lt!229380))))))

(declare-fun lt!229366 () Unit!9461)

(declare-fun lt!229363 () BalanceConc!3472)

(assert (=> b!546718 (= lt!229366 (lemmaSemiInverse!144 (transformation!1015 (rule!1733 token!491)) lt!229363))))

(declare-fun lt!229352 () Unit!9461)

(assert (=> b!546718 (= lt!229352 (lemmaSemiInverse!144 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229344))))

(declare-fun lt!229375 () Unit!9461)

(assert (=> b!546718 (= lt!229375 e!330411)))

(declare-fun c!103026 () Bool)

(assert (=> b!546718 (= c!103026 (< lt!229345 lt!229376))))

(assert (=> b!546718 e!330398))

(declare-fun res!233646 () Bool)

(assert (=> b!546718 (=> (not res!233646) (not e!330398))))

(declare-fun maxPrefixOneRule!314 (LexerInterface!901 Rule!1830 List!5396) Option!1365)

(assert (=> b!546718 (= res!233646 (= (maxPrefixOneRule!314 thiss!22590 (rule!1733 token!491) lt!229364) (Some!1364 (tuple2!6421 (Token!1767 lt!229358 (rule!1733 token!491) lt!229376 lt!229380) suffix!1342))))))

(declare-fun lt!229350 () Unit!9461)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!66 (LexerInterface!901 List!5397 List!5396 List!5396 List!5396 Rule!1830) Unit!9461)

(assert (=> b!546718 (= lt!229350 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!66 thiss!22590 rules!3103 lt!229380 lt!229364 suffix!1342 (rule!1733 token!491)))))

(assert (=> b!546718 (= (maxPrefixOneRule!314 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))) input!2705) (Some!1364 (tuple2!6421 (Token!1767 lt!229377 (rule!1733 (_1!3474 (v!16183 lt!229347))) lt!229345 lt!229354) (_2!3474 (v!16183 lt!229347)))))))

(declare-fun lt!229372 () Unit!9461)

(assert (=> b!546718 (= lt!229372 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!66 thiss!22590 rules!3103 lt!229354 input!2705 (_2!3474 (v!16183 lt!229347)) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))

(assert (=> b!546718 e!330400))

(declare-fun res!233661 () Bool)

(assert (=> b!546718 (=> (not res!233661) (not e!330400))))

(assert (=> b!546718 (= res!233661 (= (value!33794 token!491) lt!229358))))

(assert (=> b!546718 (= lt!229358 (apply!1290 (transformation!1015 (rule!1733 token!491)) lt!229363))))

(assert (=> b!546718 (= lt!229363 (seqFromList!1213 lt!229380))))

(assert (=> b!546718 (= suffix!1342 lt!229370)))

(declare-fun lt!229379 () Unit!9461)

(assert (=> b!546718 (= lt!229379 (lemmaSamePrefixThenSameSuffix!384 lt!229380 suffix!1342 lt!229380 lt!229370 lt!229364))))

(assert (=> b!546718 (= lt!229370 (getSuffix!180 lt!229364 lt!229380))))

(declare-fun b!546719 () Bool)

(declare-fun res!233657 () Bool)

(assert (=> b!546719 (=> res!233657 e!330420)))

(assert (=> b!546719 (= res!233657 (or (not (= lt!229354 lt!229380)) (not (= (originalCharacters!1054 (_1!3474 (v!16183 lt!229347))) (originalCharacters!1054 token!491)))))))

(declare-fun b!546720 () Bool)

(declare-fun res!233644 () Bool)

(assert (=> b!546720 (=> (not res!233644) (not e!330396))))

(assert (=> b!546720 (= res!233644 (= (size!4316 (_1!3474 (v!16183 lt!229347))) (size!4317 (originalCharacters!1054 (_1!3474 (v!16183 lt!229347))))))))

(declare-fun b!546721 () Bool)

(declare-fun res!233654 () Bool)

(assert (=> b!546721 (=> (not res!233654) (not e!330417))))

(declare-fun isEmpty!3889 (List!5397) Bool)

(assert (=> b!546721 (= res!233654 (not (isEmpty!3889 rules!3103)))))

(assert (= (and start!50532 res!233641) b!546721))

(assert (= (and b!546721 res!233654) b!546712))

(assert (= (and b!546712 res!233656) b!546697))

(assert (= (and b!546697 res!233643) b!546702))

(assert (= (and b!546702 res!233645) b!546689))

(assert (= (and b!546689 res!233663) b!546709))

(assert (= (and b!546709 res!233642) b!546713))

(assert (= (and b!546713 res!233659) b!546690))

(assert (= (and b!546690 res!233660) b!546687))

(assert (= (and b!546687 c!103027) b!546698))

(assert (= (and b!546687 (not c!103027)) b!546717))

(assert (= (and b!546687 res!233658) b!546720))

(assert (= (and b!546720 res!233644) b!546692))

(assert (= (and b!546687 (not res!233648)) b!546718))

(assert (= (and b!546718 res!233661) b!546683))

(assert (= (and b!546683 res!233655) b!546694))

(assert (= (and b!546718 res!233646) b!546705))

(assert (= (and b!546705 (not res!233662)) b!546686))

(assert (= (and b!546686 res!233649) b!546693))

(assert (= (and b!546693 res!233640) b!546708))

(assert (= (and b!546718 c!103026) b!546684))

(assert (= (and b!546718 (not c!103026)) b!546704))

(assert (= (and b!546684 res!233638) b!546701))

(assert (= (and b!546718 (not res!233639)) b!546707))

(assert (= (and b!546707 (not res!233652)) b!546719))

(assert (= (and b!546719 (not res!233657)) b!546699))

(assert (= (and b!546699 (not res!233650)) b!546716))

(assert (= (and b!546716 (not res!233653)) b!546688))

(assert (= (and b!546688 (not res!233637)) b!546700))

(assert (= (and b!546700 (not res!233651)) b!546715))

(assert (= (and b!546715 (not res!233647)) b!546711))

(assert (= (and b!546711 (not res!233664)) b!546706))

(assert (= (and start!50532 ((_ is Cons!5386) suffix!1342)) b!546685))

(assert (= b!546703 b!546696))

(assert (= b!546691 b!546703))

(assert (= (and start!50532 ((_ is Cons!5387) rules!3103)) b!546691))

(assert (= b!546682 b!546714))

(assert (= b!546710 b!546682))

(assert (= start!50532 b!546710))

(assert (= (and start!50532 ((_ is Cons!5386) input!2705)) b!546695))

(declare-fun m!795483 () Bool)

(assert (=> b!546720 m!795483))

(declare-fun m!795485 () Bool)

(assert (=> b!546702 m!795485))

(assert (=> b!546702 m!795485))

(declare-fun m!795487 () Bool)

(assert (=> b!546702 m!795487))

(declare-fun m!795489 () Bool)

(assert (=> b!546686 m!795489))

(declare-fun m!795491 () Bool)

(assert (=> b!546712 m!795491))

(declare-fun m!795493 () Bool)

(assert (=> b!546693 m!795493))

(declare-fun m!795495 () Bool)

(assert (=> b!546713 m!795495))

(declare-fun m!795497 () Bool)

(assert (=> b!546697 m!795497))

(declare-fun m!795499 () Bool)

(assert (=> b!546709 m!795499))

(declare-fun m!795501 () Bool)

(assert (=> b!546716 m!795501))

(declare-fun m!795503 () Bool)

(assert (=> b!546682 m!795503))

(declare-fun m!795505 () Bool)

(assert (=> b!546682 m!795505))

(declare-fun m!795507 () Bool)

(assert (=> b!546699 m!795507))

(declare-fun m!795509 () Bool)

(assert (=> b!546718 m!795509))

(declare-fun m!795511 () Bool)

(assert (=> b!546718 m!795511))

(declare-fun m!795513 () Bool)

(assert (=> b!546718 m!795513))

(declare-fun m!795515 () Bool)

(assert (=> b!546718 m!795515))

(declare-fun m!795517 () Bool)

(assert (=> b!546718 m!795517))

(declare-fun m!795519 () Bool)

(assert (=> b!546718 m!795519))

(declare-fun m!795521 () Bool)

(assert (=> b!546718 m!795521))

(declare-fun m!795523 () Bool)

(assert (=> b!546718 m!795523))

(declare-fun m!795525 () Bool)

(assert (=> b!546718 m!795525))

(declare-fun m!795527 () Bool)

(assert (=> b!546718 m!795527))

(declare-fun m!795529 () Bool)

(assert (=> b!546707 m!795529))

(declare-fun m!795531 () Bool)

(assert (=> b!546689 m!795531))

(declare-fun m!795533 () Bool)

(assert (=> b!546689 m!795533))

(declare-fun m!795535 () Bool)

(assert (=> b!546689 m!795535))

(assert (=> b!546684 m!795509))

(declare-fun m!795537 () Bool)

(assert (=> b!546684 m!795537))

(declare-fun m!795539 () Bool)

(assert (=> b!546684 m!795539))

(declare-fun m!795541 () Bool)

(assert (=> b!546703 m!795541))

(declare-fun m!795543 () Bool)

(assert (=> b!546703 m!795543))

(declare-fun m!795545 () Bool)

(assert (=> start!50532 m!795545))

(declare-fun m!795547 () Bool)

(assert (=> b!546721 m!795547))

(declare-fun m!795549 () Bool)

(assert (=> b!546711 m!795549))

(assert (=> b!546711 m!795549))

(declare-fun m!795551 () Bool)

(assert (=> b!546711 m!795551))

(declare-fun m!795553 () Bool)

(assert (=> b!546711 m!795553))

(declare-fun m!795555 () Bool)

(assert (=> b!546711 m!795555))

(declare-fun m!795557 () Bool)

(assert (=> b!546710 m!795557))

(declare-fun m!795559 () Bool)

(assert (=> b!546683 m!795559))

(declare-fun m!795561 () Bool)

(assert (=> b!546687 m!795561))

(declare-fun m!795563 () Bool)

(assert (=> b!546687 m!795563))

(declare-fun m!795565 () Bool)

(assert (=> b!546687 m!795565))

(declare-fun m!795567 () Bool)

(assert (=> b!546687 m!795567))

(declare-fun m!795569 () Bool)

(assert (=> b!546687 m!795569))

(declare-fun m!795571 () Bool)

(assert (=> b!546687 m!795571))

(declare-fun m!795573 () Bool)

(assert (=> b!546687 m!795573))

(declare-fun m!795575 () Bool)

(assert (=> b!546687 m!795575))

(declare-fun m!795577 () Bool)

(assert (=> b!546687 m!795577))

(declare-fun m!795579 () Bool)

(assert (=> b!546687 m!795579))

(declare-fun m!795581 () Bool)

(assert (=> b!546687 m!795581))

(assert (=> b!546687 m!795581))

(declare-fun m!795583 () Bool)

(assert (=> b!546687 m!795583))

(declare-fun m!795585 () Bool)

(assert (=> b!546687 m!795585))

(declare-fun m!795587 () Bool)

(assert (=> b!546687 m!795587))

(declare-fun m!795589 () Bool)

(assert (=> b!546687 m!795589))

(declare-fun m!795591 () Bool)

(assert (=> b!546687 m!795591))

(declare-fun m!795593 () Bool)

(assert (=> b!546687 m!795593))

(declare-fun m!795595 () Bool)

(assert (=> b!546687 m!795595))

(declare-fun m!795597 () Bool)

(assert (=> b!546687 m!795597))

(declare-fun m!795599 () Bool)

(assert (=> b!546687 m!795599))

(declare-fun m!795601 () Bool)

(assert (=> b!546687 m!795601))

(declare-fun m!795603 () Bool)

(assert (=> b!546687 m!795603))

(declare-fun m!795605 () Bool)

(assert (=> b!546687 m!795605))

(declare-fun m!795607 () Bool)

(assert (=> b!546687 m!795607))

(declare-fun m!795609 () Bool)

(assert (=> b!546687 m!795609))

(declare-fun m!795611 () Bool)

(assert (=> b!546687 m!795611))

(declare-fun m!795613 () Bool)

(assert (=> b!546687 m!795613))

(declare-fun m!795615 () Bool)

(assert (=> b!546706 m!795615))

(declare-fun m!795617 () Bool)

(assert (=> b!546690 m!795617))

(declare-fun m!795619 () Bool)

(assert (=> b!546700 m!795619))

(declare-fun m!795621 () Bool)

(assert (=> b!546700 m!795621))

(check-sat (not b!546711) (not b_next!15217) (not b!546693) (not b!546683) (not b!546710) (not b!546721) (not b!546685) b_and!53391 (not b!546695) (not b!546707) (not b!546720) b_and!53393 (not b!546691) (not b_next!15219) (not b!546700) b_and!53389 (not b!546706) (not b!546697) (not b!546703) (not b!546702) b_and!53387 (not b_next!15221) (not b!546699) (not b!546690) (not b!546686) (not b!546713) (not b_next!15223) tp_is_empty!3053 (not b!546709) (not b!546682) (not b!546712) (not b!546687) (not b!546718) (not b!546716) (not b!546689) (not b!546684) (not start!50532))
(check-sat b_and!53393 (not b_next!15217) (not b_next!15219) b_and!53389 (not b_next!15223) b_and!53391 b_and!53387 (not b_next!15221))
(get-model)

(declare-fun b!546732 () Bool)

(declare-fun e!330428 () Bool)

(declare-fun inv!15 (TokenValue!1039) Bool)

(assert (=> b!546732 (= e!330428 (inv!15 (value!33794 token!491)))))

(declare-fun b!546733 () Bool)

(declare-fun e!330429 () Bool)

(declare-fun inv!17 (TokenValue!1039) Bool)

(assert (=> b!546733 (= e!330429 (inv!17 (value!33794 token!491)))))

(declare-fun b!546734 () Bool)

(declare-fun res!233671 () Bool)

(assert (=> b!546734 (=> res!233671 e!330428)))

(assert (=> b!546734 (= res!233671 (not ((_ is IntegerValue!3119) (value!33794 token!491))))))

(assert (=> b!546734 (= e!330429 e!330428)))

(declare-fun b!546735 () Bool)

(declare-fun e!330427 () Bool)

(assert (=> b!546735 (= e!330427 e!330429)))

(declare-fun c!103034 () Bool)

(assert (=> b!546735 (= c!103034 ((_ is IntegerValue!3118) (value!33794 token!491)))))

(declare-fun d!191471 () Bool)

(declare-fun c!103035 () Bool)

(assert (=> d!191471 (= c!103035 ((_ is IntegerValue!3117) (value!33794 token!491)))))

(assert (=> d!191471 (= (inv!21 (value!33794 token!491)) e!330427)))

(declare-fun b!546736 () Bool)

(declare-fun inv!16 (TokenValue!1039) Bool)

(assert (=> b!546736 (= e!330427 (inv!16 (value!33794 token!491)))))

(assert (= (and d!191471 c!103035) b!546736))

(assert (= (and d!191471 (not c!103035)) b!546735))

(assert (= (and b!546735 c!103034) b!546733))

(assert (= (and b!546735 (not c!103034)) b!546734))

(assert (= (and b!546734 (not res!233671)) b!546732))

(declare-fun m!795623 () Bool)

(assert (=> b!546732 m!795623))

(declare-fun m!795625 () Bool)

(assert (=> b!546733 m!795625))

(declare-fun m!795627 () Bool)

(assert (=> b!546736 m!795627))

(assert (=> b!546710 d!191471))

(declare-fun d!191473 () Bool)

(declare-fun isEmpty!3891 (Option!1365) Bool)

(assert (=> d!191473 (= (isDefined!1177 lt!229351) (not (isEmpty!3891 lt!229351)))))

(declare-fun bs!67698 () Bool)

(assert (= bs!67698 d!191473))

(declare-fun m!795629 () Bool)

(assert (=> bs!67698 m!795629))

(assert (=> b!546689 d!191473))

(declare-fun b!546836 () Bool)

(declare-fun res!233736 () Bool)

(declare-fun e!330479 () Bool)

(assert (=> b!546836 (=> (not res!233736) (not e!330479))))

(declare-fun lt!229422 () Option!1365)

(assert (=> b!546836 (= res!233736 (matchR!508 (regex!1015 (rule!1733 (_1!3474 (get!2037 lt!229422)))) (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229422))))))))

(declare-fun b!546837 () Bool)

(declare-fun res!233734 () Bool)

(assert (=> b!546837 (=> (not res!233734) (not e!330479))))

(assert (=> b!546837 (= res!233734 (= (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229422)))) (originalCharacters!1054 (_1!3474 (get!2037 lt!229422)))))))

(declare-fun d!191475 () Bool)

(declare-fun e!330478 () Bool)

(assert (=> d!191475 e!330478))

(declare-fun res!233739 () Bool)

(assert (=> d!191475 (=> res!233739 e!330478)))

(assert (=> d!191475 (= res!233739 (isEmpty!3891 lt!229422))))

(declare-fun e!330480 () Option!1365)

(assert (=> d!191475 (= lt!229422 e!330480)))

(declare-fun c!103054 () Bool)

(assert (=> d!191475 (= c!103054 (and ((_ is Cons!5387) rules!3103) ((_ is Nil!5387) (t!74770 rules!3103))))))

(declare-fun lt!229418 () Unit!9461)

(declare-fun lt!229419 () Unit!9461)

(assert (=> d!191475 (= lt!229418 lt!229419)))

(assert (=> d!191475 (isPrefix!657 lt!229364 lt!229364)))

(assert (=> d!191475 (= lt!229419 (lemmaIsPrefixRefl!397 lt!229364 lt!229364))))

(declare-fun rulesValidInductive!358 (LexerInterface!901 List!5397) Bool)

(assert (=> d!191475 (rulesValidInductive!358 thiss!22590 rules!3103)))

(assert (=> d!191475 (= (maxPrefix!599 thiss!22590 rules!3103 lt!229364) lt!229422)))

(declare-fun b!546838 () Bool)

(declare-fun res!233735 () Bool)

(assert (=> b!546838 (=> (not res!233735) (not e!330479))))

(assert (=> b!546838 (= res!233735 (= (++!1503 (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229422)))) (_2!3474 (get!2037 lt!229422))) lt!229364))))

(declare-fun bm!38336 () Bool)

(declare-fun call!38341 () Option!1365)

(assert (=> bm!38336 (= call!38341 (maxPrefixOneRule!314 thiss!22590 (h!10788 rules!3103) lt!229364))))

(declare-fun b!546839 () Bool)

(declare-fun res!233740 () Bool)

(assert (=> b!546839 (=> (not res!233740) (not e!330479))))

(assert (=> b!546839 (= res!233740 (< (size!4317 (_2!3474 (get!2037 lt!229422))) (size!4317 lt!229364)))))

(declare-fun b!546840 () Bool)

(declare-fun res!233737 () Bool)

(assert (=> b!546840 (=> (not res!233737) (not e!330479))))

(assert (=> b!546840 (= res!233737 (= (value!33794 (_1!3474 (get!2037 lt!229422))) (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (get!2037 lt!229422)))) (seqFromList!1213 (originalCharacters!1054 (_1!3474 (get!2037 lt!229422)))))))))

(declare-fun b!546841 () Bool)

(assert (=> b!546841 (= e!330479 (contains!1257 rules!3103 (rule!1733 (_1!3474 (get!2037 lt!229422)))))))

(declare-fun b!546842 () Bool)

(assert (=> b!546842 (= e!330478 e!330479)))

(declare-fun res!233738 () Bool)

(assert (=> b!546842 (=> (not res!233738) (not e!330479))))

(assert (=> b!546842 (= res!233738 (isDefined!1177 lt!229422))))

(declare-fun b!546843 () Bool)

(declare-fun lt!229421 () Option!1365)

(declare-fun lt!229420 () Option!1365)

(assert (=> b!546843 (= e!330480 (ite (and ((_ is None!1364) lt!229421) ((_ is None!1364) lt!229420)) None!1364 (ite ((_ is None!1364) lt!229420) lt!229421 (ite ((_ is None!1364) lt!229421) lt!229420 (ite (>= (size!4316 (_1!3474 (v!16183 lt!229421))) (size!4316 (_1!3474 (v!16183 lt!229420)))) lt!229421 lt!229420)))))))

(assert (=> b!546843 (= lt!229421 call!38341)))

(assert (=> b!546843 (= lt!229420 (maxPrefix!599 thiss!22590 (t!74770 rules!3103) lt!229364))))

(declare-fun b!546844 () Bool)

(assert (=> b!546844 (= e!330480 call!38341)))

(assert (= (and d!191475 c!103054) b!546844))

(assert (= (and d!191475 (not c!103054)) b!546843))

(assert (= (or b!546844 b!546843) bm!38336))

(assert (= (and d!191475 (not res!233739)) b!546842))

(assert (= (and b!546842 res!233738) b!546837))

(assert (= (and b!546837 res!233734) b!546839))

(assert (= (and b!546839 res!233740) b!546838))

(assert (= (and b!546838 res!233735) b!546840))

(assert (= (and b!546840 res!233737) b!546836))

(assert (= (and b!546836 res!233736) b!546841))

(declare-fun m!795707 () Bool)

(assert (=> b!546836 m!795707))

(declare-fun m!795709 () Bool)

(assert (=> b!546836 m!795709))

(assert (=> b!546836 m!795709))

(declare-fun m!795711 () Bool)

(assert (=> b!546836 m!795711))

(assert (=> b!546836 m!795711))

(declare-fun m!795713 () Bool)

(assert (=> b!546836 m!795713))

(declare-fun m!795715 () Bool)

(assert (=> d!191475 m!795715))

(declare-fun m!795717 () Bool)

(assert (=> d!191475 m!795717))

(declare-fun m!795719 () Bool)

(assert (=> d!191475 m!795719))

(declare-fun m!795721 () Bool)

(assert (=> d!191475 m!795721))

(declare-fun m!795723 () Bool)

(assert (=> b!546842 m!795723))

(assert (=> b!546839 m!795707))

(declare-fun m!795725 () Bool)

(assert (=> b!546839 m!795725))

(declare-fun m!795727 () Bool)

(assert (=> b!546839 m!795727))

(declare-fun m!795729 () Bool)

(assert (=> bm!38336 m!795729))

(declare-fun m!795731 () Bool)

(assert (=> b!546843 m!795731))

(assert (=> b!546841 m!795707))

(declare-fun m!795733 () Bool)

(assert (=> b!546841 m!795733))

(assert (=> b!546838 m!795707))

(assert (=> b!546838 m!795709))

(assert (=> b!546838 m!795709))

(assert (=> b!546838 m!795711))

(assert (=> b!546838 m!795711))

(declare-fun m!795735 () Bool)

(assert (=> b!546838 m!795735))

(assert (=> b!546840 m!795707))

(declare-fun m!795745 () Bool)

(assert (=> b!546840 m!795745))

(assert (=> b!546840 m!795745))

(declare-fun m!795751 () Bool)

(assert (=> b!546840 m!795751))

(assert (=> b!546837 m!795707))

(assert (=> b!546837 m!795709))

(assert (=> b!546837 m!795709))

(assert (=> b!546837 m!795711))

(assert (=> b!546689 d!191475))

(declare-fun b!546884 () Bool)

(declare-fun lt!229439 () List!5396)

(declare-fun e!330506 () Bool)

(assert (=> b!546884 (= e!330506 (or (not (= suffix!1342 Nil!5386)) (= lt!229439 input!2705)))))

(declare-fun d!191507 () Bool)

(assert (=> d!191507 e!330506))

(declare-fun res!233765 () Bool)

(assert (=> d!191507 (=> (not res!233765) (not e!330506))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!941 (List!5396) (InoxSet C!3620))

(assert (=> d!191507 (= res!233765 (= (content!941 lt!229439) ((_ map or) (content!941 input!2705) (content!941 suffix!1342))))))

(declare-fun e!330505 () List!5396)

(assert (=> d!191507 (= lt!229439 e!330505)))

(declare-fun c!103061 () Bool)

(assert (=> d!191507 (= c!103061 ((_ is Nil!5386) input!2705))))

(assert (=> d!191507 (= (++!1503 input!2705 suffix!1342) lt!229439)))

(declare-fun b!546882 () Bool)

(assert (=> b!546882 (= e!330505 (Cons!5386 (h!10787 input!2705) (++!1503 (t!74769 input!2705) suffix!1342)))))

(declare-fun b!546883 () Bool)

(declare-fun res!233764 () Bool)

(assert (=> b!546883 (=> (not res!233764) (not e!330506))))

(assert (=> b!546883 (= res!233764 (= (size!4317 lt!229439) (+ (size!4317 input!2705) (size!4317 suffix!1342))))))

(declare-fun b!546881 () Bool)

(assert (=> b!546881 (= e!330505 suffix!1342)))

(assert (= (and d!191507 c!103061) b!546881))

(assert (= (and d!191507 (not c!103061)) b!546882))

(assert (= (and d!191507 res!233765) b!546883))

(assert (= (and b!546883 res!233764) b!546884))

(declare-fun m!795777 () Bool)

(assert (=> d!191507 m!795777))

(declare-fun m!795779 () Bool)

(assert (=> d!191507 m!795779))

(declare-fun m!795781 () Bool)

(assert (=> d!191507 m!795781))

(declare-fun m!795783 () Bool)

(assert (=> b!546882 m!795783))

(declare-fun m!795785 () Bool)

(assert (=> b!546883 m!795785))

(assert (=> b!546883 m!795553))

(declare-fun m!795787 () Bool)

(assert (=> b!546883 m!795787))

(assert (=> b!546689 d!191507))

(declare-fun d!191523 () Bool)

(assert (=> d!191523 (= (get!2037 lt!229351) (v!16183 lt!229351))))

(assert (=> b!546709 d!191523))

(declare-fun d!191527 () Bool)

(assert (=> d!191527 (= (size!4316 (_1!3474 (v!16183 lt!229347))) (size!4317 (originalCharacters!1054 (_1!3474 (v!16183 lt!229347)))))))

(declare-fun Unit!9468 () Unit!9461)

(assert (=> d!191527 (= (lemmaCharactersSize!94 (_1!3474 (v!16183 lt!229347))) Unit!9468)))

(declare-fun bs!67703 () Bool)

(assert (= bs!67703 d!191527))

(assert (=> bs!67703 m!795483))

(assert (=> b!546687 d!191527))

(declare-fun d!191535 () Bool)

(assert (=> d!191535 (ruleValid!235 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))))))

(declare-fun lt!229448 () Unit!9461)

(declare-fun choose!3876 (LexerInterface!901 Rule!1830 List!5397) Unit!9461)

(assert (=> d!191535 (= lt!229448 (choose!3876 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))) rules!3103))))

(assert (=> d!191535 (contains!1257 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347))))))

(assert (=> d!191535 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!94 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))) rules!3103) lt!229448)))

(declare-fun bs!67705 () Bool)

(assert (= bs!67705 d!191535))

(assert (=> bs!67705 m!795579))

(declare-fun m!795825 () Bool)

(assert (=> bs!67705 m!795825))

(assert (=> bs!67705 m!795507))

(assert (=> b!546687 d!191535))

(declare-fun d!191539 () Bool)

(declare-fun lt!229455 () BalanceConc!3472)

(assert (=> d!191539 (= (list!2233 lt!229455) (originalCharacters!1054 (_1!3474 (v!16183 lt!229347))))))

(declare-fun dynLambda!3143 (Int TokenValue!1039) BalanceConc!3472)

(assert (=> d!191539 (= lt!229455 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (value!33794 (_1!3474 (v!16183 lt!229347)))))))

(assert (=> d!191539 (= (charsOf!644 (_1!3474 (v!16183 lt!229347))) lt!229455)))

(declare-fun b_lambda!21021 () Bool)

(assert (=> (not b_lambda!21021) (not d!191539)))

(declare-fun t!74782 () Bool)

(declare-fun tb!47953 () Bool)

(assert (=> (and b!546696 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74782) tb!47953))

(declare-fun b!546920 () Bool)

(declare-fun e!330531 () Bool)

(declare-fun tp!173515 () Bool)

(declare-fun inv!6760 (Conc!1732) Bool)

(assert (=> b!546920 (= e!330531 (and (inv!6760 (c!103029 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (value!33794 (_1!3474 (v!16183 lt!229347)))))) tp!173515))))

(declare-fun result!53632 () Bool)

(declare-fun inv!6761 (BalanceConc!3472) Bool)

(assert (=> tb!47953 (= result!53632 (and (inv!6761 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (value!33794 (_1!3474 (v!16183 lt!229347))))) e!330531))))

(assert (= tb!47953 b!546920))

(declare-fun m!795853 () Bool)

(assert (=> b!546920 m!795853))

(declare-fun m!795859 () Bool)

(assert (=> tb!47953 m!795859))

(assert (=> d!191539 t!74782))

(declare-fun b_and!53407 () Bool)

(assert (= b_and!53389 (and (=> t!74782 result!53632) b_and!53407)))

(declare-fun t!74786 () Bool)

(declare-fun tb!47957 () Bool)

(assert (=> (and b!546714 (= (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74786) tb!47957))

(declare-fun result!53638 () Bool)

(assert (= result!53638 result!53632))

(assert (=> d!191539 t!74786))

(declare-fun b_and!53409 () Bool)

(assert (= b_and!53393 (and (=> t!74786 result!53638) b_and!53409)))

(declare-fun m!795861 () Bool)

(assert (=> d!191539 m!795861))

(declare-fun m!795863 () Bool)

(assert (=> d!191539 m!795863))

(assert (=> b!546687 d!191539))

(declare-fun d!191561 () Bool)

(declare-fun list!2234 (Conc!1732) List!5396)

(assert (=> d!191561 (= (list!2233 (charsOf!644 (_1!3474 (v!16183 lt!229347)))) (list!2234 (c!103029 (charsOf!644 (_1!3474 (v!16183 lt!229347))))))))

(declare-fun bs!67711 () Bool)

(assert (= bs!67711 d!191561))

(declare-fun m!795867 () Bool)

(assert (=> bs!67711 m!795867))

(assert (=> b!546687 d!191561))

(declare-fun d!191565 () Bool)

(declare-fun lt!229470 () List!5396)

(assert (=> d!191565 (= (++!1503 lt!229354 lt!229470) input!2705)))

(declare-fun e!330536 () List!5396)

(assert (=> d!191565 (= lt!229470 e!330536)))

(declare-fun c!103067 () Bool)

(assert (=> d!191565 (= c!103067 ((_ is Cons!5386) lt!229354))))

(assert (=> d!191565 (>= (size!4317 input!2705) (size!4317 lt!229354))))

(assert (=> d!191565 (= (getSuffix!180 input!2705 lt!229354) lt!229470)))

(declare-fun b!546926 () Bool)

(declare-fun tail!721 (List!5396) List!5396)

(assert (=> b!546926 (= e!330536 (getSuffix!180 (tail!721 input!2705) (t!74769 lt!229354)))))

(declare-fun b!546927 () Bool)

(assert (=> b!546927 (= e!330536 input!2705)))

(assert (= (and d!191565 c!103067) b!546926))

(assert (= (and d!191565 (not c!103067)) b!546927))

(declare-fun m!795883 () Bool)

(assert (=> d!191565 m!795883))

(assert (=> d!191565 m!795553))

(assert (=> d!191565 m!795599))

(declare-fun m!795885 () Bool)

(assert (=> b!546926 m!795885))

(assert (=> b!546926 m!795885))

(declare-fun m!795887 () Bool)

(assert (=> b!546926 m!795887))

(assert (=> b!546687 d!191565))

(declare-fun d!191575 () Bool)

(declare-fun e!330539 () Bool)

(assert (=> d!191575 e!330539))

(declare-fun res!233794 () Bool)

(assert (=> d!191575 (=> (not res!233794) (not e!330539))))

(declare-fun semiInverseModEq!392 (Int Int) Bool)

(assert (=> d!191575 (= res!233794 (semiInverseModEq!392 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))))))

(declare-fun Unit!9469 () Unit!9461)

(assert (=> d!191575 (= (lemmaInv!163 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) Unit!9469)))

(declare-fun b!546930 () Bool)

(declare-fun equivClasses!375 (Int Int) Bool)

(assert (=> b!546930 (= e!330539 (equivClasses!375 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))))))

(assert (= (and d!191575 res!233794) b!546930))

(declare-fun m!795889 () Bool)

(assert (=> d!191575 m!795889))

(declare-fun m!795891 () Bool)

(assert (=> b!546930 m!795891))

(assert (=> b!546687 d!191575))

(declare-fun d!191577 () Bool)

(declare-fun e!330547 () Bool)

(assert (=> d!191577 e!330547))

(declare-fun res!233806 () Bool)

(assert (=> d!191577 (=> res!233806 e!330547)))

(declare-fun lt!229473 () Bool)

(assert (=> d!191577 (= res!233806 (not lt!229473))))

(declare-fun e!330548 () Bool)

(assert (=> d!191577 (= lt!229473 e!330548)))

(declare-fun res!233805 () Bool)

(assert (=> d!191577 (=> res!233805 e!330548)))

(assert (=> d!191577 (= res!233805 ((_ is Nil!5386) input!2705))))

(assert (=> d!191577 (= (isPrefix!657 input!2705 lt!229364) lt!229473)))

(declare-fun b!546940 () Bool)

(declare-fun res!233804 () Bool)

(declare-fun e!330546 () Bool)

(assert (=> b!546940 (=> (not res!233804) (not e!330546))))

(declare-fun head!1192 (List!5396) C!3620)

(assert (=> b!546940 (= res!233804 (= (head!1192 input!2705) (head!1192 lt!229364)))))

(declare-fun b!546942 () Bool)

(assert (=> b!546942 (= e!330547 (>= (size!4317 lt!229364) (size!4317 input!2705)))))

(declare-fun b!546941 () Bool)

(assert (=> b!546941 (= e!330546 (isPrefix!657 (tail!721 input!2705) (tail!721 lt!229364)))))

(declare-fun b!546939 () Bool)

(assert (=> b!546939 (= e!330548 e!330546)))

(declare-fun res!233803 () Bool)

(assert (=> b!546939 (=> (not res!233803) (not e!330546))))

(assert (=> b!546939 (= res!233803 (not ((_ is Nil!5386) lt!229364)))))

(assert (= (and d!191577 (not res!233805)) b!546939))

(assert (= (and b!546939 res!233803) b!546940))

(assert (= (and b!546940 res!233804) b!546941))

(assert (= (and d!191577 (not res!233806)) b!546942))

(declare-fun m!795893 () Bool)

(assert (=> b!546940 m!795893))

(declare-fun m!795895 () Bool)

(assert (=> b!546940 m!795895))

(assert (=> b!546942 m!795727))

(assert (=> b!546942 m!795553))

(assert (=> b!546941 m!795885))

(declare-fun m!795897 () Bool)

(assert (=> b!546941 m!795897))

(assert (=> b!546941 m!795885))

(assert (=> b!546941 m!795897))

(declare-fun m!795899 () Bool)

(assert (=> b!546941 m!795899))

(assert (=> b!546687 d!191577))

(declare-fun lt!229474 () List!5396)

(declare-fun e!330550 () Bool)

(declare-fun b!546946 () Bool)

(assert (=> b!546946 (= e!330550 (or (not (= (_2!3474 (v!16183 lt!229347)) Nil!5386)) (= lt!229474 lt!229354)))))

(declare-fun d!191579 () Bool)

(assert (=> d!191579 e!330550))

(declare-fun res!233808 () Bool)

(assert (=> d!191579 (=> (not res!233808) (not e!330550))))

(assert (=> d!191579 (= res!233808 (= (content!941 lt!229474) ((_ map or) (content!941 lt!229354) (content!941 (_2!3474 (v!16183 lt!229347))))))))

(declare-fun e!330549 () List!5396)

(assert (=> d!191579 (= lt!229474 e!330549)))

(declare-fun c!103068 () Bool)

(assert (=> d!191579 (= c!103068 ((_ is Nil!5386) lt!229354))))

(assert (=> d!191579 (= (++!1503 lt!229354 (_2!3474 (v!16183 lt!229347))) lt!229474)))

(declare-fun b!546944 () Bool)

(assert (=> b!546944 (= e!330549 (Cons!5386 (h!10787 lt!229354) (++!1503 (t!74769 lt!229354) (_2!3474 (v!16183 lt!229347)))))))

(declare-fun b!546945 () Bool)

(declare-fun res!233807 () Bool)

(assert (=> b!546945 (=> (not res!233807) (not e!330550))))

(assert (=> b!546945 (= res!233807 (= (size!4317 lt!229474) (+ (size!4317 lt!229354) (size!4317 (_2!3474 (v!16183 lt!229347))))))))

(declare-fun b!546943 () Bool)

(assert (=> b!546943 (= e!330549 (_2!3474 (v!16183 lt!229347)))))

(assert (= (and d!191579 c!103068) b!546943))

(assert (= (and d!191579 (not c!103068)) b!546944))

(assert (= (and d!191579 res!233808) b!546945))

(assert (= (and b!546945 res!233807) b!546946))

(declare-fun m!795901 () Bool)

(assert (=> d!191579 m!795901))

(declare-fun m!795903 () Bool)

(assert (=> d!191579 m!795903))

(declare-fun m!795905 () Bool)

(assert (=> d!191579 m!795905))

(declare-fun m!795907 () Bool)

(assert (=> b!546944 m!795907))

(declare-fun m!795909 () Bool)

(assert (=> b!546945 m!795909))

(assert (=> b!546945 m!795599))

(declare-fun m!795911 () Bool)

(assert (=> b!546945 m!795911))

(assert (=> b!546687 d!191579))

(declare-fun d!191581 () Bool)

(declare-fun res!233813 () Bool)

(declare-fun e!330553 () Bool)

(assert (=> d!191581 (=> (not res!233813) (not e!330553))))

(assert (=> d!191581 (= res!233813 (validRegex!450 (regex!1015 (rule!1733 token!491))))))

(assert (=> d!191581 (= (ruleValid!235 thiss!22590 (rule!1733 token!491)) e!330553)))

(declare-fun b!546951 () Bool)

(declare-fun res!233814 () Bool)

(assert (=> b!546951 (=> (not res!233814) (not e!330553))))

(declare-fun nullable!355 (Regex!1349) Bool)

(assert (=> b!546951 (= res!233814 (not (nullable!355 (regex!1015 (rule!1733 token!491)))))))

(declare-fun b!546952 () Bool)

(assert (=> b!546952 (= e!330553 (not (= (tag!1277 (rule!1733 token!491)) (String!6940 ""))))))

(assert (= (and d!191581 res!233813) b!546951))

(assert (= (and b!546951 res!233814) b!546952))

(assert (=> d!191581 m!795615))

(declare-fun m!795913 () Bool)

(assert (=> b!546951 m!795913))

(assert (=> b!546687 d!191581))

(declare-fun d!191583 () Bool)

(declare-fun res!233815 () Bool)

(declare-fun e!330554 () Bool)

(assert (=> d!191583 (=> (not res!233815) (not e!330554))))

(assert (=> d!191583 (= res!233815 (validRegex!450 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))))))

(assert (=> d!191583 (= (ruleValid!235 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347)))) e!330554)))

(declare-fun b!546953 () Bool)

(declare-fun res!233816 () Bool)

(assert (=> b!546953 (=> (not res!233816) (not e!330554))))

(assert (=> b!546953 (= res!233816 (not (nullable!355 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))))))

(declare-fun b!546954 () Bool)

(assert (=> b!546954 (= e!330554 (not (= (tag!1277 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (String!6940 ""))))))

(assert (= (and d!191583 res!233815) b!546953))

(assert (= (and b!546953 res!233816) b!546954))

(declare-fun m!795915 () Bool)

(assert (=> d!191583 m!795915))

(declare-fun m!795917 () Bool)

(assert (=> b!546953 m!795917))

(assert (=> b!546687 d!191583))

(declare-fun d!191585 () Bool)

(declare-fun e!330556 () Bool)

(assert (=> d!191585 e!330556))

(declare-fun res!233820 () Bool)

(assert (=> d!191585 (=> res!233820 e!330556)))

(declare-fun lt!229475 () Bool)

(assert (=> d!191585 (= res!233820 (not lt!229475))))

(declare-fun e!330557 () Bool)

(assert (=> d!191585 (= lt!229475 e!330557)))

(declare-fun res!233819 () Bool)

(assert (=> d!191585 (=> res!233819 e!330557)))

(assert (=> d!191585 (= res!233819 ((_ is Nil!5386) input!2705))))

(assert (=> d!191585 (= (isPrefix!657 input!2705 lt!229346) lt!229475)))

(declare-fun b!546956 () Bool)

(declare-fun res!233818 () Bool)

(declare-fun e!330555 () Bool)

(assert (=> b!546956 (=> (not res!233818) (not e!330555))))

(assert (=> b!546956 (= res!233818 (= (head!1192 input!2705) (head!1192 lt!229346)))))

(declare-fun b!546958 () Bool)

(assert (=> b!546958 (= e!330556 (>= (size!4317 lt!229346) (size!4317 input!2705)))))

(declare-fun b!546957 () Bool)

(assert (=> b!546957 (= e!330555 (isPrefix!657 (tail!721 input!2705) (tail!721 lt!229346)))))

(declare-fun b!546955 () Bool)

(assert (=> b!546955 (= e!330557 e!330555)))

(declare-fun res!233817 () Bool)

(assert (=> b!546955 (=> (not res!233817) (not e!330555))))

(assert (=> b!546955 (= res!233817 (not ((_ is Nil!5386) lt!229346)))))

(assert (= (and d!191585 (not res!233819)) b!546955))

(assert (= (and b!546955 res!233817) b!546956))

(assert (= (and b!546956 res!233818) b!546957))

(assert (= (and d!191585 (not res!233820)) b!546958))

(assert (=> b!546956 m!795893))

(declare-fun m!795919 () Bool)

(assert (=> b!546956 m!795919))

(declare-fun m!795921 () Bool)

(assert (=> b!546958 m!795921))

(assert (=> b!546958 m!795553))

(assert (=> b!546957 m!795885))

(declare-fun m!795923 () Bool)

(assert (=> b!546957 m!795923))

(assert (=> b!546957 m!795885))

(assert (=> b!546957 m!795923))

(declare-fun m!795925 () Bool)

(assert (=> b!546957 m!795925))

(assert (=> b!546687 d!191585))

(declare-fun d!191587 () Bool)

(assert (=> d!191587 (isPrefix!657 input!2705 input!2705)))

(declare-fun lt!229478 () Unit!9461)

(declare-fun choose!3879 (List!5396 List!5396) Unit!9461)

(assert (=> d!191587 (= lt!229478 (choose!3879 input!2705 input!2705))))

(assert (=> d!191587 (= (lemmaIsPrefixRefl!397 input!2705 input!2705) lt!229478)))

(declare-fun bs!67715 () Bool)

(assert (= bs!67715 d!191587))

(assert (=> bs!67715 m!795611))

(declare-fun m!795927 () Bool)

(assert (=> bs!67715 m!795927))

(assert (=> b!546687 d!191587))

(declare-fun d!191589 () Bool)

(declare-fun fromListB!529 (List!5396) BalanceConc!3472)

(assert (=> d!191589 (= (seqFromList!1213 lt!229354) (fromListB!529 lt!229354))))

(declare-fun bs!67716 () Bool)

(assert (= bs!67716 d!191589))

(declare-fun m!795929 () Bool)

(assert (=> bs!67716 m!795929))

(assert (=> b!546687 d!191589))

(declare-fun d!191591 () Bool)

(declare-fun e!330558 () Bool)

(assert (=> d!191591 e!330558))

(declare-fun res!233821 () Bool)

(assert (=> d!191591 (=> (not res!233821) (not e!330558))))

(assert (=> d!191591 (= res!233821 (semiInverseModEq!392 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))))))

(declare-fun Unit!9472 () Unit!9461)

(assert (=> d!191591 (= (lemmaInv!163 (transformation!1015 (rule!1733 token!491))) Unit!9472)))

(declare-fun b!546959 () Bool)

(assert (=> b!546959 (= e!330558 (equivClasses!375 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))))))

(assert (= (and d!191591 res!233821) b!546959))

(declare-fun m!795931 () Bool)

(assert (=> d!191591 m!795931))

(declare-fun m!795933 () Bool)

(assert (=> b!546959 m!795933))

(assert (=> b!546687 d!191591))

(declare-fun d!191593 () Bool)

(declare-fun lt!229481 () Int)

(assert (=> d!191593 (>= lt!229481 0)))

(declare-fun e!330561 () Int)

(assert (=> d!191593 (= lt!229481 e!330561)))

(declare-fun c!103071 () Bool)

(assert (=> d!191593 (= c!103071 ((_ is Nil!5386) lt!229380))))

(assert (=> d!191593 (= (size!4317 lt!229380) lt!229481)))

(declare-fun b!546964 () Bool)

(assert (=> b!546964 (= e!330561 0)))

(declare-fun b!546965 () Bool)

(assert (=> b!546965 (= e!330561 (+ 1 (size!4317 (t!74769 lt!229380))))))

(assert (= (and d!191593 c!103071) b!546964))

(assert (= (and d!191593 (not c!103071)) b!546965))

(declare-fun m!795935 () Bool)

(assert (=> b!546965 m!795935))

(assert (=> b!546687 d!191593))

(declare-fun d!191595 () Bool)

(declare-fun dynLambda!3145 (Int BalanceConc!3472) TokenValue!1039)

(assert (=> d!191595 (= (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229344) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) lt!229344))))

(declare-fun b_lambda!21025 () Bool)

(assert (=> (not b_lambda!21025) (not d!191595)))

(declare-fun t!74792 () Bool)

(declare-fun tb!47963 () Bool)

(assert (=> (and b!546696 (= (toValue!1862 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74792) tb!47963))

(declare-fun result!53644 () Bool)

(assert (=> tb!47963 (= result!53644 (inv!21 (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) lt!229344)))))

(declare-fun m!795937 () Bool)

(assert (=> tb!47963 m!795937))

(assert (=> d!191595 t!74792))

(declare-fun b_and!53415 () Bool)

(assert (= b_and!53387 (and (=> t!74792 result!53644) b_and!53415)))

(declare-fun t!74794 () Bool)

(declare-fun tb!47965 () Bool)

(assert (=> (and b!546714 (= (toValue!1862 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74794) tb!47965))

(declare-fun result!53648 () Bool)

(assert (= result!53648 result!53644))

(assert (=> d!191595 t!74794))

(declare-fun b_and!53417 () Bool)

(assert (= b_and!53391 (and (=> t!74794 result!53648) b_and!53417)))

(declare-fun m!795939 () Bool)

(assert (=> d!191595 m!795939))

(assert (=> b!546687 d!191595))

(declare-fun d!191597 () Bool)

(assert (=> d!191597 (and (= lt!229380 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!229484 () Unit!9461)

(declare-fun choose!3880 (List!5396 List!5396 List!5396 List!5396) Unit!9461)

(assert (=> d!191597 (= lt!229484 (choose!3880 lt!229380 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!191597 (= (++!1503 lt!229380 suffix!1342) (++!1503 input!2705 suffix!1342))))

(assert (=> d!191597 (= (lemmaConcatSameAndSameSizesThenSameLists!100 lt!229380 suffix!1342 input!2705 suffix!1342) lt!229484)))

(declare-fun bs!67717 () Bool)

(assert (= bs!67717 d!191597))

(declare-fun m!795941 () Bool)

(assert (=> bs!67717 m!795941))

(assert (=> bs!67717 m!795617))

(assert (=> bs!67717 m!795535))

(assert (=> b!546687 d!191597))

(declare-fun d!191599 () Bool)

(declare-fun lt!229485 () Int)

(assert (=> d!191599 (>= lt!229485 0)))

(declare-fun e!330565 () Int)

(assert (=> d!191599 (= lt!229485 e!330565)))

(declare-fun c!103072 () Bool)

(assert (=> d!191599 (= c!103072 ((_ is Nil!5386) lt!229354))))

(assert (=> d!191599 (= (size!4317 lt!229354) lt!229485)))

(declare-fun b!546968 () Bool)

(assert (=> b!546968 (= e!330565 0)))

(declare-fun b!546969 () Bool)

(assert (=> b!546969 (= e!330565 (+ 1 (size!4317 (t!74769 lt!229354))))))

(assert (= (and d!191599 c!103072) b!546968))

(assert (= (and d!191599 (not c!103072)) b!546969))

(declare-fun m!795943 () Bool)

(assert (=> b!546969 m!795943))

(assert (=> b!546687 d!191599))

(declare-fun d!191601 () Bool)

(declare-fun e!330567 () Bool)

(assert (=> d!191601 e!330567))

(declare-fun res!233825 () Bool)

(assert (=> d!191601 (=> res!233825 e!330567)))

(declare-fun lt!229486 () Bool)

(assert (=> d!191601 (= res!233825 (not lt!229486))))

(declare-fun e!330568 () Bool)

(assert (=> d!191601 (= lt!229486 e!330568)))

(declare-fun res!233824 () Bool)

(assert (=> d!191601 (=> res!233824 e!330568)))

(assert (=> d!191601 (= res!233824 ((_ is Nil!5386) input!2705))))

(assert (=> d!191601 (= (isPrefix!657 input!2705 input!2705) lt!229486)))

(declare-fun b!546971 () Bool)

(declare-fun res!233823 () Bool)

(declare-fun e!330566 () Bool)

(assert (=> b!546971 (=> (not res!233823) (not e!330566))))

(assert (=> b!546971 (= res!233823 (= (head!1192 input!2705) (head!1192 input!2705)))))

(declare-fun b!546973 () Bool)

(assert (=> b!546973 (= e!330567 (>= (size!4317 input!2705) (size!4317 input!2705)))))

(declare-fun b!546972 () Bool)

(assert (=> b!546972 (= e!330566 (isPrefix!657 (tail!721 input!2705) (tail!721 input!2705)))))

(declare-fun b!546970 () Bool)

(assert (=> b!546970 (= e!330568 e!330566)))

(declare-fun res!233822 () Bool)

(assert (=> b!546970 (=> (not res!233822) (not e!330566))))

(assert (=> b!546970 (= res!233822 (not ((_ is Nil!5386) input!2705)))))

(assert (= (and d!191601 (not res!233824)) b!546970))

(assert (= (and b!546970 res!233822) b!546971))

(assert (= (and b!546971 res!233823) b!546972))

(assert (= (and d!191601 (not res!233825)) b!546973))

(assert (=> b!546971 m!795893))

(assert (=> b!546971 m!795893))

(assert (=> b!546973 m!795553))

(assert (=> b!546973 m!795553))

(assert (=> b!546972 m!795885))

(assert (=> b!546972 m!795885))

(assert (=> b!546972 m!795885))

(assert (=> b!546972 m!795885))

(declare-fun m!795945 () Bool)

(assert (=> b!546972 m!795945))

(assert (=> b!546687 d!191601))

(declare-fun d!191603 () Bool)

(assert (=> d!191603 (ruleValid!235 thiss!22590 (rule!1733 token!491))))

(declare-fun lt!229487 () Unit!9461)

(assert (=> d!191603 (= lt!229487 (choose!3876 thiss!22590 (rule!1733 token!491) rules!3103))))

(assert (=> d!191603 (contains!1257 rules!3103 (rule!1733 token!491))))

(assert (=> d!191603 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!94 thiss!22590 (rule!1733 token!491) rules!3103) lt!229487)))

(declare-fun bs!67718 () Bool)

(assert (= bs!67718 d!191603))

(assert (=> bs!67718 m!795597))

(declare-fun m!795947 () Bool)

(assert (=> bs!67718 m!795947))

(assert (=> bs!67718 m!795501))

(assert (=> b!546687 d!191603))

(declare-fun d!191605 () Bool)

(assert (=> d!191605 (isPrefix!657 input!2705 (++!1503 input!2705 suffix!1342))))

(declare-fun lt!229490 () Unit!9461)

(declare-fun choose!3883 (List!5396 List!5396) Unit!9461)

(assert (=> d!191605 (= lt!229490 (choose!3883 input!2705 suffix!1342))))

(assert (=> d!191605 (= (lemmaConcatTwoListThenFirstIsPrefix!508 input!2705 suffix!1342) lt!229490)))

(declare-fun bs!67719 () Bool)

(assert (= bs!67719 d!191605))

(assert (=> bs!67719 m!795535))

(assert (=> bs!67719 m!795535))

(declare-fun m!795949 () Bool)

(assert (=> bs!67719 m!795949))

(declare-fun m!795951 () Bool)

(assert (=> bs!67719 m!795951))

(assert (=> b!546687 d!191605))

(declare-fun d!191607 () Bool)

(assert (=> d!191607 (isPrefix!657 lt!229354 (++!1503 lt!229354 (_2!3474 (v!16183 lt!229347))))))

(declare-fun lt!229491 () Unit!9461)

(assert (=> d!191607 (= lt!229491 (choose!3883 lt!229354 (_2!3474 (v!16183 lt!229347))))))

(assert (=> d!191607 (= (lemmaConcatTwoListThenFirstIsPrefix!508 lt!229354 (_2!3474 (v!16183 lt!229347))) lt!229491)))

(declare-fun bs!67720 () Bool)

(assert (= bs!67720 d!191607))

(assert (=> bs!67720 m!795609))

(assert (=> bs!67720 m!795609))

(declare-fun m!795953 () Bool)

(assert (=> bs!67720 m!795953))

(declare-fun m!795955 () Bool)

(assert (=> bs!67720 m!795955))

(assert (=> b!546687 d!191607))

(declare-fun d!191609 () Bool)

(assert (=> d!191609 (isPrefix!657 lt!229380 (++!1503 lt!229380 suffix!1342))))

(declare-fun lt!229492 () Unit!9461)

(assert (=> d!191609 (= lt!229492 (choose!3883 lt!229380 suffix!1342))))

(assert (=> d!191609 (= (lemmaConcatTwoListThenFirstIsPrefix!508 lt!229380 suffix!1342) lt!229492)))

(declare-fun bs!67721 () Bool)

(assert (= bs!67721 d!191609))

(assert (=> bs!67721 m!795617))

(assert (=> bs!67721 m!795617))

(declare-fun m!795957 () Bool)

(assert (=> bs!67721 m!795957))

(declare-fun m!795959 () Bool)

(assert (=> bs!67721 m!795959))

(assert (=> b!546687 d!191609))

(declare-fun d!191611 () Bool)

(assert (=> d!191611 (= (size!4316 token!491) (size!4317 (originalCharacters!1054 token!491)))))

(declare-fun Unit!9474 () Unit!9461)

(assert (=> d!191611 (= (lemmaCharactersSize!94 token!491) Unit!9474)))

(declare-fun bs!67722 () Bool)

(assert (= bs!67722 d!191611))

(assert (=> bs!67722 m!795559))

(assert (=> b!546687 d!191611))

(declare-fun d!191613 () Bool)

(declare-fun e!330570 () Bool)

(assert (=> d!191613 e!330570))

(declare-fun res!233829 () Bool)

(assert (=> d!191613 (=> res!233829 e!330570)))

(declare-fun lt!229493 () Bool)

(assert (=> d!191613 (= res!233829 (not lt!229493))))

(declare-fun e!330571 () Bool)

(assert (=> d!191613 (= lt!229493 e!330571)))

(declare-fun res!233828 () Bool)

(assert (=> d!191613 (=> res!233828 e!330571)))

(assert (=> d!191613 (= res!233828 ((_ is Nil!5386) lt!229380))))

(assert (=> d!191613 (= (isPrefix!657 lt!229380 lt!229346) lt!229493)))

(declare-fun b!546975 () Bool)

(declare-fun res!233827 () Bool)

(declare-fun e!330569 () Bool)

(assert (=> b!546975 (=> (not res!233827) (not e!330569))))

(assert (=> b!546975 (= res!233827 (= (head!1192 lt!229380) (head!1192 lt!229346)))))

(declare-fun b!546977 () Bool)

(assert (=> b!546977 (= e!330570 (>= (size!4317 lt!229346) (size!4317 lt!229380)))))

(declare-fun b!546976 () Bool)

(assert (=> b!546976 (= e!330569 (isPrefix!657 (tail!721 lt!229380) (tail!721 lt!229346)))))

(declare-fun b!546974 () Bool)

(assert (=> b!546974 (= e!330571 e!330569)))

(declare-fun res!233826 () Bool)

(assert (=> b!546974 (=> (not res!233826) (not e!330569))))

(assert (=> b!546974 (= res!233826 (not ((_ is Nil!5386) lt!229346)))))

(assert (= (and d!191613 (not res!233828)) b!546974))

(assert (= (and b!546974 res!233826) b!546975))

(assert (= (and b!546975 res!233827) b!546976))

(assert (= (and d!191613 (not res!233829)) b!546977))

(declare-fun m!795961 () Bool)

(assert (=> b!546975 m!795961))

(assert (=> b!546975 m!795919))

(assert (=> b!546977 m!795921))

(assert (=> b!546977 m!795575))

(declare-fun m!795963 () Bool)

(assert (=> b!546976 m!795963))

(assert (=> b!546976 m!795923))

(assert (=> b!546976 m!795963))

(assert (=> b!546976 m!795923))

(declare-fun m!795965 () Bool)

(assert (=> b!546976 m!795965))

(assert (=> b!546687 d!191613))

(declare-fun d!191615 () Bool)

(assert (=> d!191615 (= (_2!3474 (v!16183 lt!229347)) lt!229348)))

(declare-fun lt!229496 () Unit!9461)

(declare-fun choose!3884 (List!5396 List!5396 List!5396 List!5396 List!5396) Unit!9461)

(assert (=> d!191615 (= lt!229496 (choose!3884 lt!229354 (_2!3474 (v!16183 lt!229347)) lt!229354 lt!229348 input!2705))))

(assert (=> d!191615 (isPrefix!657 lt!229354 input!2705)))

(assert (=> d!191615 (= (lemmaSamePrefixThenSameSuffix!384 lt!229354 (_2!3474 (v!16183 lt!229347)) lt!229354 lt!229348 input!2705) lt!229496)))

(declare-fun bs!67723 () Bool)

(assert (= bs!67723 d!191615))

(declare-fun m!795967 () Bool)

(assert (=> bs!67723 m!795967))

(declare-fun m!795969 () Bool)

(assert (=> bs!67723 m!795969))

(assert (=> b!546687 d!191615))

(declare-fun d!191617 () Bool)

(declare-fun e!330573 () Bool)

(assert (=> d!191617 e!330573))

(declare-fun res!233833 () Bool)

(assert (=> d!191617 (=> res!233833 e!330573)))

(declare-fun lt!229497 () Bool)

(assert (=> d!191617 (= res!233833 (not lt!229497))))

(declare-fun e!330574 () Bool)

(assert (=> d!191617 (= lt!229497 e!330574)))

(declare-fun res!233832 () Bool)

(assert (=> d!191617 (=> res!233832 e!330574)))

(assert (=> d!191617 (= res!233832 ((_ is Nil!5386) lt!229354))))

(assert (=> d!191617 (= (isPrefix!657 lt!229354 lt!229361) lt!229497)))

(declare-fun b!546979 () Bool)

(declare-fun res!233831 () Bool)

(declare-fun e!330572 () Bool)

(assert (=> b!546979 (=> (not res!233831) (not e!330572))))

(assert (=> b!546979 (= res!233831 (= (head!1192 lt!229354) (head!1192 lt!229361)))))

(declare-fun b!546981 () Bool)

(assert (=> b!546981 (= e!330573 (>= (size!4317 lt!229361) (size!4317 lt!229354)))))

(declare-fun b!546980 () Bool)

(assert (=> b!546980 (= e!330572 (isPrefix!657 (tail!721 lt!229354) (tail!721 lt!229361)))))

(declare-fun b!546978 () Bool)

(assert (=> b!546978 (= e!330574 e!330572)))

(declare-fun res!233830 () Bool)

(assert (=> b!546978 (=> (not res!233830) (not e!330572))))

(assert (=> b!546978 (= res!233830 (not ((_ is Nil!5386) lt!229361)))))

(assert (= (and d!191617 (not res!233832)) b!546978))

(assert (= (and b!546978 res!233830) b!546979))

(assert (= (and b!546979 res!233831) b!546980))

(assert (= (and d!191617 (not res!233833)) b!546981))

(declare-fun m!795971 () Bool)

(assert (=> b!546979 m!795971))

(declare-fun m!795973 () Bool)

(assert (=> b!546979 m!795973))

(declare-fun m!795975 () Bool)

(assert (=> b!546981 m!795975))

(assert (=> b!546981 m!795599))

(declare-fun m!795977 () Bool)

(assert (=> b!546980 m!795977))

(declare-fun m!795979 () Bool)

(assert (=> b!546980 m!795979))

(assert (=> b!546980 m!795977))

(assert (=> b!546980 m!795979))

(declare-fun m!795981 () Bool)

(assert (=> b!546980 m!795981))

(assert (=> b!546687 d!191617))

(declare-fun b!546982 () Bool)

(declare-fun res!233836 () Bool)

(declare-fun e!330576 () Bool)

(assert (=> b!546982 (=> (not res!233836) (not e!330576))))

(declare-fun lt!229502 () Option!1365)

(assert (=> b!546982 (= res!233836 (matchR!508 (regex!1015 (rule!1733 (_1!3474 (get!2037 lt!229502)))) (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229502))))))))

(declare-fun b!546983 () Bool)

(declare-fun res!233834 () Bool)

(assert (=> b!546983 (=> (not res!233834) (not e!330576))))

(assert (=> b!546983 (= res!233834 (= (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229502)))) (originalCharacters!1054 (_1!3474 (get!2037 lt!229502)))))))

(declare-fun d!191619 () Bool)

(declare-fun e!330575 () Bool)

(assert (=> d!191619 e!330575))

(declare-fun res!233839 () Bool)

(assert (=> d!191619 (=> res!233839 e!330575)))

(assert (=> d!191619 (= res!233839 (isEmpty!3891 lt!229502))))

(declare-fun e!330577 () Option!1365)

(assert (=> d!191619 (= lt!229502 e!330577)))

(declare-fun c!103073 () Bool)

(assert (=> d!191619 (= c!103073 (and ((_ is Cons!5387) rules!3103) ((_ is Nil!5387) (t!74770 rules!3103))))))

(declare-fun lt!229498 () Unit!9461)

(declare-fun lt!229499 () Unit!9461)

(assert (=> d!191619 (= lt!229498 lt!229499)))

(assert (=> d!191619 (isPrefix!657 input!2705 input!2705)))

(assert (=> d!191619 (= lt!229499 (lemmaIsPrefixRefl!397 input!2705 input!2705))))

(assert (=> d!191619 (rulesValidInductive!358 thiss!22590 rules!3103)))

(assert (=> d!191619 (= (maxPrefix!599 thiss!22590 rules!3103 input!2705) lt!229502)))

(declare-fun b!546984 () Bool)

(declare-fun res!233835 () Bool)

(assert (=> b!546984 (=> (not res!233835) (not e!330576))))

(assert (=> b!546984 (= res!233835 (= (++!1503 (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229502)))) (_2!3474 (get!2037 lt!229502))) input!2705))))

(declare-fun call!38342 () Option!1365)

(declare-fun bm!38337 () Bool)

(assert (=> bm!38337 (= call!38342 (maxPrefixOneRule!314 thiss!22590 (h!10788 rules!3103) input!2705))))

(declare-fun b!546985 () Bool)

(declare-fun res!233840 () Bool)

(assert (=> b!546985 (=> (not res!233840) (not e!330576))))

(assert (=> b!546985 (= res!233840 (< (size!4317 (_2!3474 (get!2037 lt!229502))) (size!4317 input!2705)))))

(declare-fun b!546986 () Bool)

(declare-fun res!233837 () Bool)

(assert (=> b!546986 (=> (not res!233837) (not e!330576))))

(assert (=> b!546986 (= res!233837 (= (value!33794 (_1!3474 (get!2037 lt!229502))) (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (get!2037 lt!229502)))) (seqFromList!1213 (originalCharacters!1054 (_1!3474 (get!2037 lt!229502)))))))))

(declare-fun b!546987 () Bool)

(assert (=> b!546987 (= e!330576 (contains!1257 rules!3103 (rule!1733 (_1!3474 (get!2037 lt!229502)))))))

(declare-fun b!546988 () Bool)

(assert (=> b!546988 (= e!330575 e!330576)))

(declare-fun res!233838 () Bool)

(assert (=> b!546988 (=> (not res!233838) (not e!330576))))

(assert (=> b!546988 (= res!233838 (isDefined!1177 lt!229502))))

(declare-fun b!546989 () Bool)

(declare-fun lt!229501 () Option!1365)

(declare-fun lt!229500 () Option!1365)

(assert (=> b!546989 (= e!330577 (ite (and ((_ is None!1364) lt!229501) ((_ is None!1364) lt!229500)) None!1364 (ite ((_ is None!1364) lt!229500) lt!229501 (ite ((_ is None!1364) lt!229501) lt!229500 (ite (>= (size!4316 (_1!3474 (v!16183 lt!229501))) (size!4316 (_1!3474 (v!16183 lt!229500)))) lt!229501 lt!229500)))))))

(assert (=> b!546989 (= lt!229501 call!38342)))

(assert (=> b!546989 (= lt!229500 (maxPrefix!599 thiss!22590 (t!74770 rules!3103) input!2705))))

(declare-fun b!546990 () Bool)

(assert (=> b!546990 (= e!330577 call!38342)))

(assert (= (and d!191619 c!103073) b!546990))

(assert (= (and d!191619 (not c!103073)) b!546989))

(assert (= (or b!546990 b!546989) bm!38337))

(assert (= (and d!191619 (not res!233839)) b!546988))

(assert (= (and b!546988 res!233838) b!546983))

(assert (= (and b!546983 res!233834) b!546985))

(assert (= (and b!546985 res!233840) b!546984))

(assert (= (and b!546984 res!233835) b!546986))

(assert (= (and b!546986 res!233837) b!546982))

(assert (= (and b!546982 res!233836) b!546987))

(declare-fun m!795983 () Bool)

(assert (=> b!546982 m!795983))

(declare-fun m!795985 () Bool)

(assert (=> b!546982 m!795985))

(assert (=> b!546982 m!795985))

(declare-fun m!795987 () Bool)

(assert (=> b!546982 m!795987))

(assert (=> b!546982 m!795987))

(declare-fun m!795989 () Bool)

(assert (=> b!546982 m!795989))

(declare-fun m!795991 () Bool)

(assert (=> d!191619 m!795991))

(assert (=> d!191619 m!795611))

(assert (=> d!191619 m!795585))

(assert (=> d!191619 m!795721))

(declare-fun m!795993 () Bool)

(assert (=> b!546988 m!795993))

(assert (=> b!546985 m!795983))

(declare-fun m!795995 () Bool)

(assert (=> b!546985 m!795995))

(assert (=> b!546985 m!795553))

(declare-fun m!795997 () Bool)

(assert (=> bm!38337 m!795997))

(declare-fun m!795999 () Bool)

(assert (=> b!546989 m!795999))

(assert (=> b!546987 m!795983))

(declare-fun m!796001 () Bool)

(assert (=> b!546987 m!796001))

(assert (=> b!546984 m!795983))

(assert (=> b!546984 m!795985))

(assert (=> b!546984 m!795985))

(assert (=> b!546984 m!795987))

(assert (=> b!546984 m!795987))

(declare-fun m!796003 () Bool)

(assert (=> b!546984 m!796003))

(assert (=> b!546986 m!795983))

(declare-fun m!796005 () Bool)

(assert (=> b!546986 m!796005))

(assert (=> b!546986 m!796005))

(declare-fun m!796007 () Bool)

(assert (=> b!546986 m!796007))

(assert (=> b!546983 m!795983))

(assert (=> b!546983 m!795985))

(assert (=> b!546983 m!795985))

(assert (=> b!546983 m!795987))

(assert (=> b!546713 d!191619))

(declare-fun d!191621 () Bool)

(declare-fun res!233843 () Bool)

(declare-fun e!330580 () Bool)

(assert (=> d!191621 (=> (not res!233843) (not e!330580))))

(declare-fun rulesValid!358 (LexerInterface!901 List!5397) Bool)

(assert (=> d!191621 (= res!233843 (rulesValid!358 thiss!22590 rules!3103))))

(assert (=> d!191621 (= (rulesInvariant!864 thiss!22590 rules!3103) e!330580)))

(declare-fun b!546993 () Bool)

(declare-datatypes ((List!5399 0))(
  ( (Nil!5389) (Cons!5389 (h!10790 String!6939) (t!74856 List!5399)) )
))
(declare-fun noDuplicateTag!358 (LexerInterface!901 List!5397 List!5399) Bool)

(assert (=> b!546993 (= e!330580 (noDuplicateTag!358 thiss!22590 rules!3103 Nil!5389))))

(assert (= (and d!191621 res!233843) b!546993))

(declare-fun m!796009 () Bool)

(assert (=> d!191621 m!796009))

(declare-fun m!796011 () Bool)

(assert (=> b!546993 m!796011))

(assert (=> b!546712 d!191621))

(declare-fun b!546997 () Bool)

(declare-fun e!330582 () Bool)

(declare-fun lt!229503 () List!5396)

(assert (=> b!546997 (= e!330582 (or (not (= suffix!1342 Nil!5386)) (= lt!229503 lt!229380)))))

(declare-fun d!191623 () Bool)

(assert (=> d!191623 e!330582))

(declare-fun res!233845 () Bool)

(assert (=> d!191623 (=> (not res!233845) (not e!330582))))

(assert (=> d!191623 (= res!233845 (= (content!941 lt!229503) ((_ map or) (content!941 lt!229380) (content!941 suffix!1342))))))

(declare-fun e!330581 () List!5396)

(assert (=> d!191623 (= lt!229503 e!330581)))

(declare-fun c!103074 () Bool)

(assert (=> d!191623 (= c!103074 ((_ is Nil!5386) lt!229380))))

(assert (=> d!191623 (= (++!1503 lt!229380 suffix!1342) lt!229503)))

(declare-fun b!546995 () Bool)

(assert (=> b!546995 (= e!330581 (Cons!5386 (h!10787 lt!229380) (++!1503 (t!74769 lt!229380) suffix!1342)))))

(declare-fun b!546996 () Bool)

(declare-fun res!233844 () Bool)

(assert (=> b!546996 (=> (not res!233844) (not e!330582))))

(assert (=> b!546996 (= res!233844 (= (size!4317 lt!229503) (+ (size!4317 lt!229380) (size!4317 suffix!1342))))))

(declare-fun b!546994 () Bool)

(assert (=> b!546994 (= e!330581 suffix!1342)))

(assert (= (and d!191623 c!103074) b!546994))

(assert (= (and d!191623 (not c!103074)) b!546995))

(assert (= (and d!191623 res!233845) b!546996))

(assert (= (and b!546996 res!233844) b!546997))

(declare-fun m!796013 () Bool)

(assert (=> d!191623 m!796013))

(declare-fun m!796015 () Bool)

(assert (=> d!191623 m!796015))

(assert (=> d!191623 m!795781))

(declare-fun m!796017 () Bool)

(assert (=> b!546995 m!796017))

(declare-fun m!796019 () Bool)

(assert (=> b!546996 m!796019))

(assert (=> b!546996 m!795575))

(assert (=> b!546996 m!795787))

(assert (=> b!546690 d!191623))

(declare-fun d!191625 () Bool)

(assert (=> d!191625 (= (apply!1290 (transformation!1015 (rule!1733 token!491)) (seqFromList!1213 input!2705)) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) (seqFromList!1213 input!2705)))))

(declare-fun b_lambda!21027 () Bool)

(assert (=> (not b_lambda!21027) (not d!191625)))

(declare-fun tb!47967 () Bool)

(declare-fun t!74796 () Bool)

(assert (=> (and b!546696 (= (toValue!1862 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))) t!74796) tb!47967))

(declare-fun result!53650 () Bool)

(assert (=> tb!47967 (= result!53650 (inv!21 (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) (seqFromList!1213 input!2705))))))

(declare-fun m!796021 () Bool)

(assert (=> tb!47967 m!796021))

(assert (=> d!191625 t!74796))

(declare-fun b_and!53419 () Bool)

(assert (= b_and!53415 (and (=> t!74796 result!53650) b_and!53419)))

(declare-fun t!74798 () Bool)

(declare-fun tb!47969 () Bool)

(assert (=> (and b!546714 (= (toValue!1862 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))) t!74798) tb!47969))

(declare-fun result!53652 () Bool)

(assert (= result!53652 result!53650))

(assert (=> d!191625 t!74798))

(declare-fun b_and!53421 () Bool)

(assert (= b_and!53417 (and (=> t!74798 result!53652) b_and!53421)))

(assert (=> d!191625 m!795549))

(declare-fun m!796023 () Bool)

(assert (=> d!191625 m!796023))

(assert (=> b!546711 d!191625))

(declare-fun d!191627 () Bool)

(assert (=> d!191627 (= (seqFromList!1213 input!2705) (fromListB!529 input!2705))))

(declare-fun bs!67724 () Bool)

(assert (= bs!67724 d!191627))

(declare-fun m!796025 () Bool)

(assert (=> bs!67724 m!796025))

(assert (=> b!546711 d!191627))

(declare-fun d!191629 () Bool)

(declare-fun lt!229504 () Int)

(assert (=> d!191629 (>= lt!229504 0)))

(declare-fun e!330584 () Int)

(assert (=> d!191629 (= lt!229504 e!330584)))

(declare-fun c!103075 () Bool)

(assert (=> d!191629 (= c!103075 ((_ is Nil!5386) input!2705))))

(assert (=> d!191629 (= (size!4317 input!2705) lt!229504)))

(declare-fun b!546998 () Bool)

(assert (=> b!546998 (= e!330584 0)))

(declare-fun b!546999 () Bool)

(assert (=> b!546999 (= e!330584 (+ 1 (size!4317 (t!74769 input!2705))))))

(assert (= (and d!191629 c!103075) b!546998))

(assert (= (and d!191629 (not c!103075)) b!546999))

(declare-fun m!796027 () Bool)

(assert (=> b!546999 m!796027))

(assert (=> b!546711 d!191629))

(declare-fun d!191631 () Bool)

(declare-fun lt!229505 () List!5396)

(assert (=> d!191631 (= (++!1503 input!2705 lt!229505) lt!229364)))

(declare-fun e!330585 () List!5396)

(assert (=> d!191631 (= lt!229505 e!330585)))

(declare-fun c!103076 () Bool)

(assert (=> d!191631 (= c!103076 ((_ is Cons!5386) input!2705))))

(assert (=> d!191631 (>= (size!4317 lt!229364) (size!4317 input!2705))))

(assert (=> d!191631 (= (getSuffix!180 lt!229364 input!2705) lt!229505)))

(declare-fun b!547000 () Bool)

(assert (=> b!547000 (= e!330585 (getSuffix!180 (tail!721 lt!229364) (t!74769 input!2705)))))

(declare-fun b!547001 () Bool)

(assert (=> b!547001 (= e!330585 lt!229364)))

(assert (= (and d!191631 c!103076) b!547000))

(assert (= (and d!191631 (not c!103076)) b!547001))

(declare-fun m!796029 () Bool)

(assert (=> d!191631 m!796029))

(assert (=> d!191631 m!795727))

(assert (=> d!191631 m!795553))

(assert (=> b!547000 m!795897))

(assert (=> b!547000 m!795897))

(declare-fun m!796031 () Bool)

(assert (=> b!547000 m!796031))

(assert (=> b!546711 d!191631))

(declare-fun d!191633 () Bool)

(declare-fun lt!229506 () Int)

(assert (=> d!191633 (>= lt!229506 0)))

(declare-fun e!330586 () Int)

(assert (=> d!191633 (= lt!229506 e!330586)))

(declare-fun c!103077 () Bool)

(assert (=> d!191633 (= c!103077 ((_ is Nil!5386) (originalCharacters!1054 token!491)))))

(assert (=> d!191633 (= (size!4317 (originalCharacters!1054 token!491)) lt!229506)))

(declare-fun b!547002 () Bool)

(assert (=> b!547002 (= e!330586 0)))

(declare-fun b!547003 () Bool)

(assert (=> b!547003 (= e!330586 (+ 1 (size!4317 (t!74769 (originalCharacters!1054 token!491)))))))

(assert (= (and d!191633 c!103077) b!547002))

(assert (= (and d!191633 (not c!103077)) b!547003))

(declare-fun m!796033 () Bool)

(assert (=> b!547003 m!796033))

(assert (=> b!546683 d!191633))

(declare-fun d!191635 () Bool)

(assert (=> d!191635 (= (inv!6753 (tag!1277 (rule!1733 token!491))) (= (mod (str.len (value!33793 (tag!1277 (rule!1733 token!491)))) 2) 0))))

(assert (=> b!546682 d!191635))

(declare-fun d!191637 () Bool)

(declare-fun res!233848 () Bool)

(declare-fun e!330589 () Bool)

(assert (=> d!191637 (=> (not res!233848) (not e!330589))))

(assert (=> d!191637 (= res!233848 (semiInverseModEq!392 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))))))

(assert (=> d!191637 (= (inv!6756 (transformation!1015 (rule!1733 token!491))) e!330589)))

(declare-fun b!547006 () Bool)

(assert (=> b!547006 (= e!330589 (equivClasses!375 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))))))

(assert (= (and d!191637 res!233848) b!547006))

(assert (=> d!191637 m!795931))

(assert (=> b!547006 m!795933))

(assert (=> b!546682 d!191637))

(declare-fun d!191639 () Bool)

(assert (=> d!191639 (= (inv!6753 (tag!1277 (h!10788 rules!3103))) (= (mod (str.len (value!33793 (tag!1277 (h!10788 rules!3103)))) 2) 0))))

(assert (=> b!546703 d!191639))

(declare-fun d!191641 () Bool)

(declare-fun res!233849 () Bool)

(declare-fun e!330590 () Bool)

(assert (=> d!191641 (=> (not res!233849) (not e!330590))))

(assert (=> d!191641 (= res!233849 (semiInverseModEq!392 (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (h!10788 rules!3103)))))))

(assert (=> d!191641 (= (inv!6756 (transformation!1015 (h!10788 rules!3103))) e!330590)))

(declare-fun b!547007 () Bool)

(assert (=> b!547007 (= e!330590 (equivClasses!375 (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (h!10788 rules!3103)))))))

(assert (= (and d!191641 res!233849) b!547007))

(declare-fun m!796035 () Bool)

(assert (=> d!191641 m!796035))

(declare-fun m!796037 () Bool)

(assert (=> b!547007 m!796037))

(assert (=> b!546703 d!191641))

(declare-fun d!191643 () Bool)

(assert (=> d!191643 (= (isDefined!1177 lt!229347) (not (isEmpty!3891 lt!229347)))))

(declare-fun bs!67725 () Bool)

(assert (= bs!67725 d!191643))

(declare-fun m!796039 () Bool)

(assert (=> bs!67725 m!796039))

(assert (=> b!546686 d!191643))

(declare-fun d!191645 () Bool)

(assert (=> d!191645 (= (isEmpty!3888 (_2!3474 (v!16183 lt!229347))) ((_ is Nil!5386) (_2!3474 (v!16183 lt!229347))))))

(assert (=> b!546707 d!191645))

(declare-fun b!547027 () Bool)

(declare-fun res!233862 () Bool)

(declare-fun e!330611 () Bool)

(assert (=> b!547027 (=> res!233862 e!330611)))

(assert (=> b!547027 (= res!233862 (not ((_ is Concat!2388) (regex!1015 (rule!1733 token!491)))))))

(declare-fun e!330608 () Bool)

(assert (=> b!547027 (= e!330608 e!330611)))

(declare-fun b!547028 () Bool)

(declare-fun e!330607 () Bool)

(declare-fun call!38350 () Bool)

(assert (=> b!547028 (= e!330607 call!38350)))

(declare-fun c!103082 () Bool)

(declare-fun call!38351 () Bool)

(declare-fun c!103083 () Bool)

(declare-fun bm!38344 () Bool)

(assert (=> bm!38344 (= call!38351 (validRegex!450 (ite c!103083 (reg!1678 (regex!1015 (rule!1733 token!491))) (ite c!103082 (regOne!3211 (regex!1015 (rule!1733 token!491))) (regTwo!3210 (regex!1015 (rule!1733 token!491)))))))))

(declare-fun b!547029 () Bool)

(declare-fun res!233864 () Bool)

(declare-fun e!330606 () Bool)

(assert (=> b!547029 (=> (not res!233864) (not e!330606))))

(assert (=> b!547029 (= res!233864 call!38350)))

(assert (=> b!547029 (= e!330608 e!330606)))

(declare-fun bm!38345 () Bool)

(assert (=> bm!38345 (= call!38350 call!38351)))

(declare-fun b!547030 () Bool)

(declare-fun e!330609 () Bool)

(declare-fun e!330605 () Bool)

(assert (=> b!547030 (= e!330609 e!330605)))

(assert (=> b!547030 (= c!103083 ((_ is Star!1349) (regex!1015 (rule!1733 token!491))))))

(declare-fun bm!38346 () Bool)

(declare-fun call!38349 () Bool)

(assert (=> bm!38346 (= call!38349 (validRegex!450 (ite c!103082 (regTwo!3211 (regex!1015 (rule!1733 token!491))) (regOne!3210 (regex!1015 (rule!1733 token!491))))))))

(declare-fun b!547031 () Bool)

(declare-fun e!330610 () Bool)

(assert (=> b!547031 (= e!330610 call!38351)))

(declare-fun b!547032 () Bool)

(assert (=> b!547032 (= e!330611 e!330607)))

(declare-fun res!233861 () Bool)

(assert (=> b!547032 (=> (not res!233861) (not e!330607))))

(assert (=> b!547032 (= res!233861 call!38349)))

(declare-fun b!547026 () Bool)

(assert (=> b!547026 (= e!330606 call!38349)))

(declare-fun d!191647 () Bool)

(declare-fun res!233860 () Bool)

(assert (=> d!191647 (=> res!233860 e!330609)))

(assert (=> d!191647 (= res!233860 ((_ is ElementMatch!1349) (regex!1015 (rule!1733 token!491))))))

(assert (=> d!191647 (= (validRegex!450 (regex!1015 (rule!1733 token!491))) e!330609)))

(declare-fun b!547033 () Bool)

(assert (=> b!547033 (= e!330605 e!330608)))

(assert (=> b!547033 (= c!103082 ((_ is Union!1349) (regex!1015 (rule!1733 token!491))))))

(declare-fun b!547034 () Bool)

(assert (=> b!547034 (= e!330605 e!330610)))

(declare-fun res!233863 () Bool)

(assert (=> b!547034 (= res!233863 (not (nullable!355 (reg!1678 (regex!1015 (rule!1733 token!491))))))))

(assert (=> b!547034 (=> (not res!233863) (not e!330610))))

(assert (= (and d!191647 (not res!233860)) b!547030))

(assert (= (and b!547030 c!103083) b!547034))

(assert (= (and b!547030 (not c!103083)) b!547033))

(assert (= (and b!547034 res!233863) b!547031))

(assert (= (and b!547033 c!103082) b!547029))

(assert (= (and b!547033 (not c!103082)) b!547027))

(assert (= (and b!547029 res!233864) b!547026))

(assert (= (and b!547027 (not res!233862)) b!547032))

(assert (= (and b!547032 res!233861) b!547028))

(assert (= (or b!547029 b!547028) bm!38345))

(assert (= (or b!547026 b!547032) bm!38346))

(assert (= (or b!547031 bm!38345) bm!38344))

(declare-fun m!796041 () Bool)

(assert (=> bm!38344 m!796041))

(declare-fun m!796043 () Bool)

(assert (=> bm!38346 m!796043))

(declare-fun m!796045 () Bool)

(assert (=> b!547034 m!796045))

(assert (=> b!546706 d!191647))

(declare-fun b!547074 () Bool)

(declare-fun e!330632 () Bool)

(assert (=> b!547074 (= e!330632 true)))

(declare-fun d!191649 () Bool)

(assert (=> d!191649 e!330632))

(assert (= d!191649 b!547074))

(declare-fun lambda!15500 () Int)

(declare-fun order!4481 () Int)

(declare-fun order!4483 () Int)

(declare-fun dynLambda!3149 (Int Int) Int)

(declare-fun dynLambda!3150 (Int Int) Int)

(assert (=> b!547074 (< (dynLambda!3149 order!4481 (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) (dynLambda!3150 order!4483 lambda!15500))))

(declare-fun order!4485 () Int)

(declare-fun dynLambda!3151 (Int Int) Int)

(assert (=> b!547074 (< (dynLambda!3151 order!4485 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) (dynLambda!3150 order!4483 lambda!15500))))

(assert (=> d!191649 (= (list!2233 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) lt!229344))) (list!2233 lt!229344))))

(declare-fun lt!229527 () Unit!9461)

(declare-fun ForallOf!88 (Int BalanceConc!3472) Unit!9461)

(assert (=> d!191649 (= lt!229527 (ForallOf!88 lambda!15500 lt!229344))))

(assert (=> d!191649 (= (lemmaSemiInverse!144 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229344) lt!229527)))

(declare-fun b_lambda!21037 () Bool)

(assert (=> (not b_lambda!21037) (not d!191649)))

(declare-fun tb!47979 () Bool)

(declare-fun t!74808 () Bool)

(assert (=> (and b!546696 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74808) tb!47979))

(declare-fun tp!173518 () Bool)

(declare-fun e!330633 () Bool)

(declare-fun b!547075 () Bool)

(assert (=> b!547075 (= e!330633 (and (inv!6760 (c!103029 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) lt!229344)))) tp!173518))))

(declare-fun result!53662 () Bool)

(assert (=> tb!47979 (= result!53662 (and (inv!6761 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))) lt!229344))) e!330633))))

(assert (= tb!47979 b!547075))

(declare-fun m!796119 () Bool)

(assert (=> b!547075 m!796119))

(declare-fun m!796121 () Bool)

(assert (=> tb!47979 m!796121))

(assert (=> d!191649 t!74808))

(declare-fun b_and!53439 () Bool)

(assert (= b_and!53407 (and (=> t!74808 result!53662) b_and!53439)))

(declare-fun t!74810 () Bool)

(declare-fun tb!47981 () Bool)

(assert (=> (and b!546714 (= (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74810) tb!47981))

(declare-fun result!53664 () Bool)

(assert (= result!53664 result!53662))

(assert (=> d!191649 t!74810))

(declare-fun b_and!53441 () Bool)

(assert (= b_and!53409 (and (=> t!74810 result!53664) b_and!53441)))

(declare-fun b_lambda!21039 () Bool)

(assert (=> (not b_lambda!21039) (not d!191649)))

(assert (=> d!191649 t!74792))

(declare-fun b_and!53443 () Bool)

(assert (= b_and!53419 (and (=> t!74792 result!53644) b_and!53443)))

(assert (=> d!191649 t!74794))

(declare-fun b_and!53445 () Bool)

(assert (= b_and!53421 (and (=> t!74794 result!53648) b_and!53445)))

(declare-fun m!796123 () Bool)

(assert (=> d!191649 m!796123))

(declare-fun m!796125 () Bool)

(assert (=> d!191649 m!796125))

(assert (=> d!191649 m!795939))

(assert (=> d!191649 m!796123))

(declare-fun m!796127 () Bool)

(assert (=> d!191649 m!796127))

(assert (=> d!191649 m!795939))

(declare-fun m!796129 () Bool)

(assert (=> d!191649 m!796129))

(assert (=> b!546684 d!191649))

(declare-fun d!191661 () Bool)

(assert (=> d!191661 (not (matchR!508 (regex!1015 (rule!1733 token!491)) input!2705))))

(declare-fun lt!229533 () Unit!9461)

(declare-fun choose!3886 (LexerInterface!901 List!5397 Rule!1830 List!5396 List!5396 List!5396 Rule!1830) Unit!9461)

(assert (=> d!191661 (= lt!229533 (choose!3886 thiss!22590 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347))) lt!229354 input!2705 input!2705 (rule!1733 token!491)))))

(assert (=> d!191661 (isPrefix!657 lt!229354 input!2705)))

(assert (=> d!191661 (= (lemmaMaxPrefixOutputsMaxPrefix!20 thiss!22590 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347))) lt!229354 input!2705 input!2705 (rule!1733 token!491)) lt!229533)))

(declare-fun bs!67730 () Bool)

(assert (= bs!67730 d!191661))

(assert (=> bs!67730 m!795539))

(declare-fun m!796137 () Bool)

(assert (=> bs!67730 m!796137))

(assert (=> bs!67730 m!795969))

(assert (=> b!546684 d!191661))

(declare-fun b!547147 () Bool)

(declare-fun e!330672 () Bool)

(declare-fun e!330680 () Bool)

(assert (=> b!547147 (= e!330672 e!330680)))

(declare-fun res!233916 () Bool)

(assert (=> b!547147 (=> (not res!233916) (not e!330680))))

(declare-fun lt!229547 () Bool)

(assert (=> b!547147 (= res!233916 (not lt!229547))))

(declare-fun b!547148 () Bool)

(declare-fun e!330673 () Bool)

(declare-fun e!330674 () Bool)

(assert (=> b!547148 (= e!330673 e!330674)))

(declare-fun c!103108 () Bool)

(assert (=> b!547148 (= c!103108 ((_ is EmptyLang!1349) (regex!1015 (rule!1733 token!491))))))

(declare-fun bm!38349 () Bool)

(declare-fun call!38354 () Bool)

(assert (=> bm!38349 (= call!38354 (isEmpty!3888 input!2705))))

(declare-fun b!547149 () Bool)

(declare-fun res!233924 () Bool)

(assert (=> b!547149 (=> res!233924 e!330672)))

(assert (=> b!547149 (= res!233924 (not ((_ is ElementMatch!1349) (regex!1015 (rule!1733 token!491)))))))

(assert (=> b!547149 (= e!330674 e!330672)))

(declare-fun b!547150 () Bool)

(declare-fun res!233923 () Bool)

(assert (=> b!547150 (=> res!233923 e!330672)))

(declare-fun e!330676 () Bool)

(assert (=> b!547150 (= res!233923 e!330676)))

(declare-fun res!233919 () Bool)

(assert (=> b!547150 (=> (not res!233919) (not e!330676))))

(assert (=> b!547150 (= res!233919 lt!229547)))

(declare-fun b!547151 () Bool)

(declare-fun e!330675 () Bool)

(assert (=> b!547151 (= e!330675 (nullable!355 (regex!1015 (rule!1733 token!491))))))

(declare-fun b!547152 () Bool)

(assert (=> b!547152 (= e!330673 (= lt!229547 call!38354))))

(declare-fun b!547153 () Bool)

(declare-fun res!233917 () Bool)

(assert (=> b!547153 (=> (not res!233917) (not e!330676))))

(assert (=> b!547153 (= res!233917 (isEmpty!3888 (tail!721 input!2705)))))

(declare-fun b!547154 () Bool)

(assert (=> b!547154 (= e!330674 (not lt!229547))))

(declare-fun b!547155 () Bool)

(declare-fun e!330679 () Bool)

(assert (=> b!547155 (= e!330679 (not (= (head!1192 input!2705) (c!103028 (regex!1015 (rule!1733 token!491))))))))

(declare-fun d!191665 () Bool)

(assert (=> d!191665 e!330673))

(declare-fun c!103109 () Bool)

(assert (=> d!191665 (= c!103109 ((_ is EmptyExpr!1349) (regex!1015 (rule!1733 token!491))))))

(assert (=> d!191665 (= lt!229547 e!330675)))

(declare-fun c!103110 () Bool)

(assert (=> d!191665 (= c!103110 (isEmpty!3888 input!2705))))

(assert (=> d!191665 (validRegex!450 (regex!1015 (rule!1733 token!491)))))

(assert (=> d!191665 (= (matchR!508 (regex!1015 (rule!1733 token!491)) input!2705) lt!229547)))

(declare-fun b!547158 () Bool)

(assert (=> b!547158 (= e!330680 e!330679)))

(declare-fun res!233915 () Bool)

(assert (=> b!547158 (=> res!233915 e!330679)))

(assert (=> b!547158 (= res!233915 call!38354)))

(declare-fun b!547159 () Bool)

(declare-fun res!233922 () Bool)

(assert (=> b!547159 (=> res!233922 e!330679)))

(assert (=> b!547159 (= res!233922 (not (isEmpty!3888 (tail!721 input!2705))))))

(declare-fun b!547160 () Bool)

(declare-fun derivativeStep!270 (Regex!1349 C!3620) Regex!1349)

(assert (=> b!547160 (= e!330675 (matchR!508 (derivativeStep!270 (regex!1015 (rule!1733 token!491)) (head!1192 input!2705)) (tail!721 input!2705)))))

(declare-fun b!547161 () Bool)

(assert (=> b!547161 (= e!330676 (= (head!1192 input!2705) (c!103028 (regex!1015 (rule!1733 token!491)))))))

(declare-fun b!547162 () Bool)

(declare-fun res!233918 () Bool)

(assert (=> b!547162 (=> (not res!233918) (not e!330676))))

(assert (=> b!547162 (= res!233918 (not call!38354))))

(assert (= (and d!191665 c!103110) b!547151))

(assert (= (and d!191665 (not c!103110)) b!547160))

(assert (= (and d!191665 c!103109) b!547152))

(assert (= (and d!191665 (not c!103109)) b!547148))

(assert (= (and b!547148 c!103108) b!547154))

(assert (= (and b!547148 (not c!103108)) b!547149))

(assert (= (and b!547149 (not res!233924)) b!547150))

(assert (= (and b!547150 res!233919) b!547162))

(assert (= (and b!547162 res!233918) b!547153))

(assert (= (and b!547153 res!233917) b!547161))

(assert (= (and b!547150 (not res!233923)) b!547147))

(assert (= (and b!547147 res!233916) b!547158))

(assert (= (and b!547158 (not res!233915)) b!547159))

(assert (= (and b!547159 (not res!233922)) b!547155))

(assert (= (or b!547152 b!547158 b!547162) bm!38349))

(assert (=> b!547155 m!795893))

(assert (=> bm!38349 m!795497))

(assert (=> d!191665 m!795497))

(assert (=> d!191665 m!795615))

(assert (=> b!547161 m!795893))

(assert (=> b!547159 m!795885))

(assert (=> b!547159 m!795885))

(declare-fun m!796189 () Bool)

(assert (=> b!547159 m!796189))

(assert (=> b!547151 m!795913))

(assert (=> b!547160 m!795893))

(assert (=> b!547160 m!795893))

(declare-fun m!796191 () Bool)

(assert (=> b!547160 m!796191))

(assert (=> b!547160 m!795885))

(assert (=> b!547160 m!796191))

(assert (=> b!547160 m!795885))

(declare-fun m!796193 () Bool)

(assert (=> b!547160 m!796193))

(assert (=> b!547153 m!795885))

(assert (=> b!547153 m!795885))

(assert (=> b!547153 m!796189))

(assert (=> b!546684 d!191665))

(declare-fun d!191677 () Bool)

(assert (=> d!191677 (= (isEmpty!3889 rules!3103) ((_ is Nil!5387) rules!3103))))

(assert (=> b!546721 d!191677))

(declare-fun d!191679 () Bool)

(declare-fun lt!229548 () Int)

(assert (=> d!191679 (>= lt!229548 0)))

(declare-fun e!330683 () Int)

(assert (=> d!191679 (= lt!229548 e!330683)))

(declare-fun c!103111 () Bool)

(assert (=> d!191679 (= c!103111 ((_ is Nil!5386) (originalCharacters!1054 (_1!3474 (v!16183 lt!229347)))))))

(assert (=> d!191679 (= (size!4317 (originalCharacters!1054 (_1!3474 (v!16183 lt!229347)))) lt!229548)))

(declare-fun b!547163 () Bool)

(assert (=> b!547163 (= e!330683 0)))

(declare-fun b!547164 () Bool)

(assert (=> b!547164 (= e!330683 (+ 1 (size!4317 (t!74769 (originalCharacters!1054 (_1!3474 (v!16183 lt!229347)))))))))

(assert (= (and d!191679 c!103111) b!547163))

(assert (= (and d!191679 (not c!103111)) b!547164))

(declare-fun m!796195 () Bool)

(assert (=> b!547164 m!796195))

(assert (=> b!546720 d!191679))

(declare-fun d!191681 () Bool)

(declare-fun lt!229551 () Bool)

(declare-fun content!942 (List!5397) (InoxSet Rule!1830))

(assert (=> d!191681 (= lt!229551 (select (content!942 rules!3103) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))

(declare-fun e!330696 () Bool)

(assert (=> d!191681 (= lt!229551 e!330696)))

(declare-fun res!233936 () Bool)

(assert (=> d!191681 (=> (not res!233936) (not e!330696))))

(assert (=> d!191681 (= res!233936 ((_ is Cons!5387) rules!3103))))

(assert (=> d!191681 (= (contains!1257 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229551)))

(declare-fun b!547178 () Bool)

(declare-fun e!330695 () Bool)

(assert (=> b!547178 (= e!330696 e!330695)))

(declare-fun res!233937 () Bool)

(assert (=> b!547178 (=> res!233937 e!330695)))

(assert (=> b!547178 (= res!233937 (= (h!10788 rules!3103) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))

(declare-fun b!547179 () Bool)

(assert (=> b!547179 (= e!330695 (contains!1257 (t!74770 rules!3103) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))

(assert (= (and d!191681 res!233936) b!547178))

(assert (= (and b!547178 (not res!233937)) b!547179))

(declare-fun m!796203 () Bool)

(assert (=> d!191681 m!796203))

(declare-fun m!796205 () Bool)

(assert (=> d!191681 m!796205))

(declare-fun m!796207 () Bool)

(assert (=> b!547179 m!796207))

(assert (=> b!546699 d!191681))

(declare-fun d!191685 () Bool)

(declare-fun res!233945 () Bool)

(declare-fun e!330702 () Bool)

(assert (=> d!191685 (=> (not res!233945) (not e!330702))))

(assert (=> d!191685 (= res!233945 (not (isEmpty!3888 (originalCharacters!1054 token!491))))))

(assert (=> d!191685 (= (inv!6757 token!491) e!330702)))

(declare-fun b!547187 () Bool)

(declare-fun res!233946 () Bool)

(assert (=> b!547187 (=> (not res!233946) (not e!330702))))

(assert (=> b!547187 (= res!233946 (= (originalCharacters!1054 token!491) (list!2233 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (value!33794 token!491)))))))

(declare-fun b!547188 () Bool)

(assert (=> b!547188 (= e!330702 (= (size!4316 token!491) (size!4317 (originalCharacters!1054 token!491))))))

(assert (= (and d!191685 res!233945) b!547187))

(assert (= (and b!547187 res!233946) b!547188))

(declare-fun b_lambda!21043 () Bool)

(assert (=> (not b_lambda!21043) (not b!547187)))

(declare-fun t!74812 () Bool)

(declare-fun tb!47983 () Bool)

(assert (=> (and b!546696 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 token!491)))) t!74812) tb!47983))

(declare-fun b!547189 () Bool)

(declare-fun e!330703 () Bool)

(declare-fun tp!173519 () Bool)

(assert (=> b!547189 (= e!330703 (and (inv!6760 (c!103029 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (value!33794 token!491)))) tp!173519))))

(declare-fun result!53666 () Bool)

(assert (=> tb!47983 (= result!53666 (and (inv!6761 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (value!33794 token!491))) e!330703))))

(assert (= tb!47983 b!547189))

(declare-fun m!796217 () Bool)

(assert (=> b!547189 m!796217))

(declare-fun m!796219 () Bool)

(assert (=> tb!47983 m!796219))

(assert (=> b!547187 t!74812))

(declare-fun b_and!53451 () Bool)

(assert (= b_and!53439 (and (=> t!74812 result!53666) b_and!53451)))

(declare-fun t!74814 () Bool)

(declare-fun tb!47985 () Bool)

(assert (=> (and b!546714 (= (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toChars!1721 (transformation!1015 (rule!1733 token!491)))) t!74814) tb!47985))

(declare-fun result!53668 () Bool)

(assert (= result!53668 result!53666))

(assert (=> b!547187 t!74814))

(declare-fun b_and!53453 () Bool)

(assert (= b_and!53441 (and (=> t!74814 result!53668) b_and!53453)))

(declare-fun m!796221 () Bool)

(assert (=> d!191685 m!796221))

(declare-fun m!796223 () Bool)

(assert (=> b!547187 m!796223))

(assert (=> b!547187 m!796223))

(declare-fun m!796225 () Bool)

(assert (=> b!547187 m!796225))

(assert (=> b!547188 m!795559))

(assert (=> start!50532 d!191685))

(declare-fun d!191701 () Bool)

(assert (=> d!191701 (= (list!2233 (charsOf!644 token!491)) (list!2234 (c!103029 (charsOf!644 token!491))))))

(declare-fun bs!67734 () Bool)

(assert (= bs!67734 d!191701))

(declare-fun m!796229 () Bool)

(assert (=> bs!67734 m!796229))

(assert (=> b!546702 d!191701))

(declare-fun d!191705 () Bool)

(declare-fun lt!229558 () BalanceConc!3472)

(assert (=> d!191705 (= (list!2233 lt!229558) (originalCharacters!1054 token!491))))

(assert (=> d!191705 (= lt!229558 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (value!33794 token!491)))))

(assert (=> d!191705 (= (charsOf!644 token!491) lt!229558)))

(declare-fun b_lambda!21045 () Bool)

(assert (=> (not b_lambda!21045) (not d!191705)))

(assert (=> d!191705 t!74812))

(declare-fun b_and!53455 () Bool)

(assert (= b_and!53451 (and (=> t!74812 result!53666) b_and!53455)))

(assert (=> d!191705 t!74814))

(declare-fun b_and!53457 () Bool)

(assert (= b_and!53453 (and (=> t!74814 result!53668) b_and!53457)))

(declare-fun m!796231 () Bool)

(assert (=> d!191705 m!796231))

(assert (=> d!191705 m!796223))

(assert (=> b!546702 d!191705))

(declare-fun b!547213 () Bool)

(declare-fun e!330716 () Int)

(declare-fun e!330715 () Int)

(assert (=> b!547213 (= e!330716 e!330715)))

(declare-fun c!103121 () Bool)

(assert (=> b!547213 (= c!103121 (and ((_ is Cons!5387) rules!3103) (not (= (h!10788 rules!3103) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))))

(declare-fun b!547212 () Bool)

(assert (=> b!547212 (= e!330716 0)))

(declare-fun b!547214 () Bool)

(assert (=> b!547214 (= e!330715 (+ 1 (getIndex!16 (t!74770 rules!3103) (rule!1733 (_1!3474 (v!16183 lt!229347))))))))

(declare-fun d!191707 () Bool)

(declare-fun lt!229562 () Int)

(assert (=> d!191707 (>= lt!229562 0)))

(assert (=> d!191707 (= lt!229562 e!330716)))

(declare-fun c!103120 () Bool)

(assert (=> d!191707 (= c!103120 (and ((_ is Cons!5387) rules!3103) (= (h!10788 rules!3103) (rule!1733 (_1!3474 (v!16183 lt!229347))))))))

(assert (=> d!191707 (contains!1257 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347))))))

(assert (=> d!191707 (= (getIndex!16 rules!3103 (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229562)))

(declare-fun b!547215 () Bool)

(assert (=> b!547215 (= e!330715 (- 1))))

(assert (= (and d!191707 c!103120) b!547212))

(assert (= (and d!191707 (not c!103120)) b!547213))

(assert (= (and b!547213 c!103121) b!547214))

(assert (= (and b!547213 (not c!103121)) b!547215))

(declare-fun m!796271 () Bool)

(assert (=> b!547214 m!796271))

(assert (=> d!191707 m!795507))

(assert (=> b!546700 d!191707))

(declare-fun b!547217 () Bool)

(declare-fun e!330718 () Int)

(declare-fun e!330717 () Int)

(assert (=> b!547217 (= e!330718 e!330717)))

(declare-fun c!103123 () Bool)

(assert (=> b!547217 (= c!103123 (and ((_ is Cons!5387) rules!3103) (not (= (h!10788 rules!3103) (rule!1733 token!491)))))))

(declare-fun b!547216 () Bool)

(assert (=> b!547216 (= e!330718 0)))

(declare-fun b!547218 () Bool)

(assert (=> b!547218 (= e!330717 (+ 1 (getIndex!16 (t!74770 rules!3103) (rule!1733 token!491))))))

(declare-fun d!191713 () Bool)

(declare-fun lt!229563 () Int)

(assert (=> d!191713 (>= lt!229563 0)))

(assert (=> d!191713 (= lt!229563 e!330718)))

(declare-fun c!103122 () Bool)

(assert (=> d!191713 (= c!103122 (and ((_ is Cons!5387) rules!3103) (= (h!10788 rules!3103) (rule!1733 token!491))))))

(assert (=> d!191713 (contains!1257 rules!3103 (rule!1733 token!491))))

(assert (=> d!191713 (= (getIndex!16 rules!3103 (rule!1733 token!491)) lt!229563)))

(declare-fun b!547219 () Bool)

(assert (=> b!547219 (= e!330717 (- 1))))

(assert (= (and d!191713 c!103122) b!547216))

(assert (= (and d!191713 (not c!103122)) b!547217))

(assert (= (and b!547217 c!103123) b!547218))

(assert (= (and b!547217 (not c!103123)) b!547219))

(declare-fun m!796273 () Bool)

(assert (=> b!547218 m!796273))

(assert (=> d!191713 m!795501))

(assert (=> b!546700 d!191713))

(declare-fun d!191715 () Bool)

(assert (=> d!191715 (= (get!2037 lt!229347) (v!16183 lt!229347))))

(assert (=> b!546693 d!191715))

(declare-fun d!191717 () Bool)

(assert (=> d!191717 (= suffix!1342 lt!229370)))

(declare-fun lt!229564 () Unit!9461)

(assert (=> d!191717 (= lt!229564 (choose!3884 lt!229380 suffix!1342 lt!229380 lt!229370 lt!229364))))

(assert (=> d!191717 (isPrefix!657 lt!229380 lt!229364)))

(assert (=> d!191717 (= (lemmaSamePrefixThenSameSuffix!384 lt!229380 suffix!1342 lt!229380 lt!229370 lt!229364) lt!229564)))

(declare-fun bs!67735 () Bool)

(assert (= bs!67735 d!191717))

(declare-fun m!796275 () Bool)

(assert (=> bs!67735 m!796275))

(declare-fun m!796277 () Bool)

(assert (=> bs!67735 m!796277))

(assert (=> b!546718 d!191717))

(declare-fun b!547320 () Bool)

(declare-fun res!233995 () Bool)

(declare-fun e!330774 () Bool)

(assert (=> b!547320 (=> (not res!233995) (not e!330774))))

(declare-fun lt!229585 () Option!1365)

(assert (=> b!547320 (= res!233995 (= (rule!1733 (_1!3474 (get!2037 lt!229585))) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))

(declare-fun b!547321 () Bool)

(declare-fun res!233996 () Bool)

(assert (=> b!547321 (=> (not res!233996) (not e!330774))))

(assert (=> b!547321 (= res!233996 (= (value!33794 (_1!3474 (get!2037 lt!229585))) (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (get!2037 lt!229585)))) (seqFromList!1213 (originalCharacters!1054 (_1!3474 (get!2037 lt!229585)))))))))

(declare-fun d!191719 () Bool)

(declare-fun e!330773 () Bool)

(assert (=> d!191719 e!330773))

(declare-fun res!233998 () Bool)

(assert (=> d!191719 (=> res!233998 e!330773)))

(assert (=> d!191719 (= res!233998 (isEmpty!3891 lt!229585))))

(declare-fun e!330775 () Option!1365)

(assert (=> d!191719 (= lt!229585 e!330775)))

(declare-fun c!103137 () Bool)

(declare-datatypes ((tuple2!6424 0))(
  ( (tuple2!6425 (_1!3476 List!5396) (_2!3476 List!5396)) )
))
(declare-fun lt!229587 () tuple2!6424)

(assert (=> d!191719 (= c!103137 (isEmpty!3888 (_1!3476 lt!229587)))))

(declare-fun findLongestMatch!118 (Regex!1349 List!5396) tuple2!6424)

(assert (=> d!191719 (= lt!229587 (findLongestMatch!118 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) input!2705))))

(assert (=> d!191719 (ruleValid!235 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))))))

(assert (=> d!191719 (= (maxPrefixOneRule!314 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))) input!2705) lt!229585)))

(declare-fun b!547322 () Bool)

(declare-fun res!233997 () Bool)

(assert (=> b!547322 (=> (not res!233997) (not e!330774))))

(assert (=> b!547322 (= res!233997 (= (++!1503 (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229585)))) (_2!3474 (get!2037 lt!229585))) input!2705))))

(declare-fun b!547323 () Bool)

(declare-fun size!4319 (BalanceConc!3472) Int)

(assert (=> b!547323 (= e!330775 (Some!1364 (tuple2!6421 (Token!1767 (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (seqFromList!1213 (_1!3476 lt!229587))) (rule!1733 (_1!3474 (v!16183 lt!229347))) (size!4319 (seqFromList!1213 (_1!3476 lt!229587))) (_1!3476 lt!229587)) (_2!3476 lt!229587))))))

(declare-fun lt!229586 () Unit!9461)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!123 (Regex!1349 List!5396) Unit!9461)

(assert (=> b!547323 (= lt!229586 (longestMatchIsAcceptedByMatchOrIsEmpty!123 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) input!2705))))

(declare-fun res!234001 () Bool)

(declare-fun findLongestMatchInner!139 (Regex!1349 List!5396 Int List!5396 List!5396 Int) tuple2!6424)

(assert (=> b!547323 (= res!234001 (isEmpty!3888 (_1!3476 (findLongestMatchInner!139 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) Nil!5386 (size!4317 Nil!5386) input!2705 input!2705 (size!4317 input!2705)))))))

(declare-fun e!330772 () Bool)

(assert (=> b!547323 (=> res!234001 e!330772)))

(assert (=> b!547323 e!330772))

(declare-fun lt!229584 () Unit!9461)

(assert (=> b!547323 (= lt!229584 lt!229586)))

(declare-fun lt!229583 () Unit!9461)

(assert (=> b!547323 (= lt!229583 (lemmaSemiInverse!144 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (seqFromList!1213 (_1!3476 lt!229587))))))

(declare-fun b!547324 () Bool)

(declare-fun res!233999 () Bool)

(assert (=> b!547324 (=> (not res!233999) (not e!330774))))

(assert (=> b!547324 (= res!233999 (< (size!4317 (_2!3474 (get!2037 lt!229585))) (size!4317 input!2705)))))

(declare-fun b!547325 () Bool)

(assert (=> b!547325 (= e!330772 (matchR!508 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (_1!3476 (findLongestMatchInner!139 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) Nil!5386 (size!4317 Nil!5386) input!2705 input!2705 (size!4317 input!2705)))))))

(declare-fun b!547326 () Bool)

(assert (=> b!547326 (= e!330773 e!330774)))

(declare-fun res!234000 () Bool)

(assert (=> b!547326 (=> (not res!234000) (not e!330774))))

(assert (=> b!547326 (= res!234000 (matchR!508 (regex!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229585))))))))

(declare-fun b!547327 () Bool)

(assert (=> b!547327 (= e!330774 (= (size!4316 (_1!3474 (get!2037 lt!229585))) (size!4317 (originalCharacters!1054 (_1!3474 (get!2037 lt!229585))))))))

(declare-fun b!547328 () Bool)

(assert (=> b!547328 (= e!330775 None!1364)))

(assert (= (and d!191719 c!103137) b!547328))

(assert (= (and d!191719 (not c!103137)) b!547323))

(assert (= (and b!547323 (not res!234001)) b!547325))

(assert (= (and d!191719 (not res!233998)) b!547326))

(assert (= (and b!547326 res!234000) b!547322))

(assert (= (and b!547322 res!233997) b!547324))

(assert (= (and b!547324 res!233999) b!547320))

(assert (= (and b!547320 res!233995) b!547321))

(assert (= (and b!547321 res!233996) b!547327))

(declare-fun m!796303 () Bool)

(assert (=> b!547322 m!796303))

(declare-fun m!796305 () Bool)

(assert (=> b!547322 m!796305))

(assert (=> b!547322 m!796305))

(declare-fun m!796307 () Bool)

(assert (=> b!547322 m!796307))

(assert (=> b!547322 m!796307))

(declare-fun m!796309 () Bool)

(assert (=> b!547322 m!796309))

(assert (=> b!547321 m!796303))

(declare-fun m!796311 () Bool)

(assert (=> b!547321 m!796311))

(assert (=> b!547321 m!796311))

(declare-fun m!796313 () Bool)

(assert (=> b!547321 m!796313))

(assert (=> b!547320 m!796303))

(assert (=> b!547324 m!796303))

(declare-fun m!796315 () Bool)

(assert (=> b!547324 m!796315))

(assert (=> b!547324 m!795553))

(declare-fun m!796317 () Bool)

(assert (=> b!547323 m!796317))

(assert (=> b!547323 m!796317))

(declare-fun m!796319 () Bool)

(assert (=> b!547323 m!796319))

(declare-fun m!796321 () Bool)

(assert (=> b!547323 m!796321))

(assert (=> b!547323 m!795553))

(assert (=> b!547323 m!796317))

(declare-fun m!796323 () Bool)

(assert (=> b!547323 m!796323))

(declare-fun m!796325 () Bool)

(assert (=> b!547323 m!796325))

(declare-fun m!796327 () Bool)

(assert (=> b!547323 m!796327))

(assert (=> b!547323 m!796325))

(assert (=> b!547323 m!795553))

(declare-fun m!796329 () Bool)

(assert (=> b!547323 m!796329))

(assert (=> b!547323 m!796317))

(declare-fun m!796331 () Bool)

(assert (=> b!547323 m!796331))

(assert (=> b!547325 m!796325))

(assert (=> b!547325 m!795553))

(assert (=> b!547325 m!796325))

(assert (=> b!547325 m!795553))

(assert (=> b!547325 m!796329))

(declare-fun m!796333 () Bool)

(assert (=> b!547325 m!796333))

(assert (=> b!547327 m!796303))

(declare-fun m!796335 () Bool)

(assert (=> b!547327 m!796335))

(assert (=> b!547326 m!796303))

(assert (=> b!547326 m!796305))

(assert (=> b!547326 m!796305))

(assert (=> b!547326 m!796307))

(assert (=> b!547326 m!796307))

(declare-fun m!796337 () Bool)

(assert (=> b!547326 m!796337))

(declare-fun m!796339 () Bool)

(assert (=> d!191719 m!796339))

(declare-fun m!796341 () Bool)

(assert (=> d!191719 m!796341))

(declare-fun m!796343 () Bool)

(assert (=> d!191719 m!796343))

(assert (=> d!191719 m!795579))

(assert (=> b!546718 d!191719))

(declare-fun d!191733 () Bool)

(declare-fun lt!229588 () List!5396)

(assert (=> d!191733 (= (++!1503 lt!229380 lt!229588) lt!229364)))

(declare-fun e!330776 () List!5396)

(assert (=> d!191733 (= lt!229588 e!330776)))

(declare-fun c!103138 () Bool)

(assert (=> d!191733 (= c!103138 ((_ is Cons!5386) lt!229380))))

(assert (=> d!191733 (>= (size!4317 lt!229364) (size!4317 lt!229380))))

(assert (=> d!191733 (= (getSuffix!180 lt!229364 lt!229380) lt!229588)))

(declare-fun b!547329 () Bool)

(assert (=> b!547329 (= e!330776 (getSuffix!180 (tail!721 lt!229364) (t!74769 lt!229380)))))

(declare-fun b!547330 () Bool)

(assert (=> b!547330 (= e!330776 lt!229364)))

(assert (= (and d!191733 c!103138) b!547329))

(assert (= (and d!191733 (not c!103138)) b!547330))

(declare-fun m!796345 () Bool)

(assert (=> d!191733 m!796345))

(assert (=> d!191733 m!795727))

(assert (=> d!191733 m!795575))

(assert (=> b!547329 m!795897))

(assert (=> b!547329 m!795897))

(declare-fun m!796347 () Bool)

(assert (=> b!547329 m!796347))

(assert (=> b!546718 d!191733))

(declare-fun b!547331 () Bool)

(declare-fun res!234002 () Bool)

(declare-fun e!330779 () Bool)

(assert (=> b!547331 (=> (not res!234002) (not e!330779))))

(declare-fun lt!229591 () Option!1365)

(assert (=> b!547331 (= res!234002 (= (rule!1733 (_1!3474 (get!2037 lt!229591))) (rule!1733 token!491)))))

(declare-fun b!547332 () Bool)

(declare-fun res!234003 () Bool)

(assert (=> b!547332 (=> (not res!234003) (not e!330779))))

(assert (=> b!547332 (= res!234003 (= (value!33794 (_1!3474 (get!2037 lt!229591))) (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (get!2037 lt!229591)))) (seqFromList!1213 (originalCharacters!1054 (_1!3474 (get!2037 lt!229591)))))))))

(declare-fun d!191735 () Bool)

(declare-fun e!330778 () Bool)

(assert (=> d!191735 e!330778))

(declare-fun res!234005 () Bool)

(assert (=> d!191735 (=> res!234005 e!330778)))

(assert (=> d!191735 (= res!234005 (isEmpty!3891 lt!229591))))

(declare-fun e!330780 () Option!1365)

(assert (=> d!191735 (= lt!229591 e!330780)))

(declare-fun c!103139 () Bool)

(declare-fun lt!229593 () tuple2!6424)

(assert (=> d!191735 (= c!103139 (isEmpty!3888 (_1!3476 lt!229593)))))

(assert (=> d!191735 (= lt!229593 (findLongestMatch!118 (regex!1015 (rule!1733 token!491)) lt!229364))))

(assert (=> d!191735 (ruleValid!235 thiss!22590 (rule!1733 token!491))))

(assert (=> d!191735 (= (maxPrefixOneRule!314 thiss!22590 (rule!1733 token!491) lt!229364) lt!229591)))

(declare-fun b!547333 () Bool)

(declare-fun res!234004 () Bool)

(assert (=> b!547333 (=> (not res!234004) (not e!330779))))

(assert (=> b!547333 (= res!234004 (= (++!1503 (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229591)))) (_2!3474 (get!2037 lt!229591))) lt!229364))))

(declare-fun b!547334 () Bool)

(assert (=> b!547334 (= e!330780 (Some!1364 (tuple2!6421 (Token!1767 (apply!1290 (transformation!1015 (rule!1733 token!491)) (seqFromList!1213 (_1!3476 lt!229593))) (rule!1733 token!491) (size!4319 (seqFromList!1213 (_1!3476 lt!229593))) (_1!3476 lt!229593)) (_2!3476 lt!229593))))))

(declare-fun lt!229592 () Unit!9461)

(assert (=> b!547334 (= lt!229592 (longestMatchIsAcceptedByMatchOrIsEmpty!123 (regex!1015 (rule!1733 token!491)) lt!229364))))

(declare-fun res!234008 () Bool)

(assert (=> b!547334 (= res!234008 (isEmpty!3888 (_1!3476 (findLongestMatchInner!139 (regex!1015 (rule!1733 token!491)) Nil!5386 (size!4317 Nil!5386) lt!229364 lt!229364 (size!4317 lt!229364)))))))

(declare-fun e!330777 () Bool)

(assert (=> b!547334 (=> res!234008 e!330777)))

(assert (=> b!547334 e!330777))

(declare-fun lt!229590 () Unit!9461)

(assert (=> b!547334 (= lt!229590 lt!229592)))

(declare-fun lt!229589 () Unit!9461)

(assert (=> b!547334 (= lt!229589 (lemmaSemiInverse!144 (transformation!1015 (rule!1733 token!491)) (seqFromList!1213 (_1!3476 lt!229593))))))

(declare-fun b!547335 () Bool)

(declare-fun res!234006 () Bool)

(assert (=> b!547335 (=> (not res!234006) (not e!330779))))

(assert (=> b!547335 (= res!234006 (< (size!4317 (_2!3474 (get!2037 lt!229591))) (size!4317 lt!229364)))))

(declare-fun b!547336 () Bool)

(assert (=> b!547336 (= e!330777 (matchR!508 (regex!1015 (rule!1733 token!491)) (_1!3476 (findLongestMatchInner!139 (regex!1015 (rule!1733 token!491)) Nil!5386 (size!4317 Nil!5386) lt!229364 lt!229364 (size!4317 lt!229364)))))))

(declare-fun b!547337 () Bool)

(assert (=> b!547337 (= e!330778 e!330779)))

(declare-fun res!234007 () Bool)

(assert (=> b!547337 (=> (not res!234007) (not e!330779))))

(assert (=> b!547337 (= res!234007 (matchR!508 (regex!1015 (rule!1733 token!491)) (list!2233 (charsOf!644 (_1!3474 (get!2037 lt!229591))))))))

(declare-fun b!547338 () Bool)

(assert (=> b!547338 (= e!330779 (= (size!4316 (_1!3474 (get!2037 lt!229591))) (size!4317 (originalCharacters!1054 (_1!3474 (get!2037 lt!229591))))))))

(declare-fun b!547339 () Bool)

(assert (=> b!547339 (= e!330780 None!1364)))

(assert (= (and d!191735 c!103139) b!547339))

(assert (= (and d!191735 (not c!103139)) b!547334))

(assert (= (and b!547334 (not res!234008)) b!547336))

(assert (= (and d!191735 (not res!234005)) b!547337))

(assert (= (and b!547337 res!234007) b!547333))

(assert (= (and b!547333 res!234004) b!547335))

(assert (= (and b!547335 res!234006) b!547331))

(assert (= (and b!547331 res!234002) b!547332))

(assert (= (and b!547332 res!234003) b!547338))

(declare-fun m!796349 () Bool)

(assert (=> b!547333 m!796349))

(declare-fun m!796351 () Bool)

(assert (=> b!547333 m!796351))

(assert (=> b!547333 m!796351))

(declare-fun m!796353 () Bool)

(assert (=> b!547333 m!796353))

(assert (=> b!547333 m!796353))

(declare-fun m!796355 () Bool)

(assert (=> b!547333 m!796355))

(assert (=> b!547332 m!796349))

(declare-fun m!796357 () Bool)

(assert (=> b!547332 m!796357))

(assert (=> b!547332 m!796357))

(declare-fun m!796359 () Bool)

(assert (=> b!547332 m!796359))

(assert (=> b!547331 m!796349))

(assert (=> b!547335 m!796349))

(declare-fun m!796361 () Bool)

(assert (=> b!547335 m!796361))

(assert (=> b!547335 m!795727))

(declare-fun m!796363 () Bool)

(assert (=> b!547334 m!796363))

(assert (=> b!547334 m!796363))

(declare-fun m!796365 () Bool)

(assert (=> b!547334 m!796365))

(declare-fun m!796367 () Bool)

(assert (=> b!547334 m!796367))

(assert (=> b!547334 m!795727))

(assert (=> b!547334 m!796363))

(declare-fun m!796369 () Bool)

(assert (=> b!547334 m!796369))

(assert (=> b!547334 m!796325))

(declare-fun m!796371 () Bool)

(assert (=> b!547334 m!796371))

(assert (=> b!547334 m!796325))

(assert (=> b!547334 m!795727))

(declare-fun m!796373 () Bool)

(assert (=> b!547334 m!796373))

(assert (=> b!547334 m!796363))

(declare-fun m!796375 () Bool)

(assert (=> b!547334 m!796375))

(assert (=> b!547336 m!796325))

(assert (=> b!547336 m!795727))

(assert (=> b!547336 m!796325))

(assert (=> b!547336 m!795727))

(assert (=> b!547336 m!796373))

(declare-fun m!796377 () Bool)

(assert (=> b!547336 m!796377))

(assert (=> b!547338 m!796349))

(declare-fun m!796379 () Bool)

(assert (=> b!547338 m!796379))

(assert (=> b!547337 m!796349))

(assert (=> b!547337 m!796351))

(assert (=> b!547337 m!796351))

(assert (=> b!547337 m!796353))

(assert (=> b!547337 m!796353))

(declare-fun m!796381 () Bool)

(assert (=> b!547337 m!796381))

(declare-fun m!796383 () Bool)

(assert (=> d!191735 m!796383))

(declare-fun m!796385 () Bool)

(assert (=> d!191735 m!796385))

(declare-fun m!796387 () Bool)

(assert (=> d!191735 m!796387))

(assert (=> d!191735 m!795597))

(assert (=> b!546718 d!191735))

(declare-fun d!191737 () Bool)

(assert (=> d!191737 (= (maxPrefixOneRule!314 thiss!22590 (rule!1733 (_1!3474 (v!16183 lt!229347))) input!2705) (Some!1364 (tuple2!6421 (Token!1767 (apply!1290 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))) (seqFromList!1213 lt!229354)) (rule!1733 (_1!3474 (v!16183 lt!229347))) (size!4317 lt!229354) lt!229354) (_2!3474 (v!16183 lt!229347)))))))

(declare-fun lt!229596 () Unit!9461)

(declare-fun choose!3888 (LexerInterface!901 List!5397 List!5396 List!5396 List!5396 Rule!1830) Unit!9461)

(assert (=> d!191737 (= lt!229596 (choose!3888 thiss!22590 rules!3103 lt!229354 input!2705 (_2!3474 (v!16183 lt!229347)) (rule!1733 (_1!3474 (v!16183 lt!229347)))))))

(assert (=> d!191737 (not (isEmpty!3889 rules!3103))))

(assert (=> d!191737 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!66 thiss!22590 rules!3103 lt!229354 input!2705 (_2!3474 (v!16183 lt!229347)) (rule!1733 (_1!3474 (v!16183 lt!229347)))) lt!229596)))

(declare-fun bs!67738 () Bool)

(assert (= bs!67738 d!191737))

(assert (=> bs!67738 m!795525))

(assert (=> bs!67738 m!795601))

(declare-fun m!796389 () Bool)

(assert (=> bs!67738 m!796389))

(assert (=> bs!67738 m!795601))

(declare-fun m!796391 () Bool)

(assert (=> bs!67738 m!796391))

(assert (=> bs!67738 m!795599))

(assert (=> bs!67738 m!795547))

(assert (=> b!546718 d!191737))

(declare-fun d!191739 () Bool)

(assert (=> d!191739 (= (seqFromList!1213 lt!229380) (fromListB!529 lt!229380))))

(declare-fun bs!67739 () Bool)

(assert (= bs!67739 d!191739))

(declare-fun m!796393 () Bool)

(assert (=> bs!67739 m!796393))

(assert (=> b!546718 d!191739))

(declare-fun d!191741 () Bool)

(assert (=> d!191741 (= (maxPrefixOneRule!314 thiss!22590 (rule!1733 token!491) lt!229364) (Some!1364 (tuple2!6421 (Token!1767 (apply!1290 (transformation!1015 (rule!1733 token!491)) (seqFromList!1213 lt!229380)) (rule!1733 token!491) (size!4317 lt!229380) lt!229380) suffix!1342)))))

(declare-fun lt!229597 () Unit!9461)

(assert (=> d!191741 (= lt!229597 (choose!3888 thiss!22590 rules!3103 lt!229380 lt!229364 suffix!1342 (rule!1733 token!491)))))

(assert (=> d!191741 (not (isEmpty!3889 rules!3103))))

(assert (=> d!191741 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!66 thiss!22590 rules!3103 lt!229380 lt!229364 suffix!1342 (rule!1733 token!491)) lt!229597)))

(declare-fun bs!67740 () Bool)

(assert (= bs!67740 d!191741))

(assert (=> bs!67740 m!795521))

(assert (=> bs!67740 m!795515))

(declare-fun m!796395 () Bool)

(assert (=> bs!67740 m!796395))

(assert (=> bs!67740 m!795515))

(declare-fun m!796397 () Bool)

(assert (=> bs!67740 m!796397))

(assert (=> bs!67740 m!795575))

(assert (=> bs!67740 m!795547))

(assert (=> b!546718 d!191741))

(assert (=> b!546718 d!191649))

(declare-fun d!191743 () Bool)

(assert (=> d!191743 (= (apply!1290 (transformation!1015 (rule!1733 token!491)) lt!229363) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) lt!229363))))

(declare-fun b_lambda!21061 () Bool)

(assert (=> (not b_lambda!21061) (not d!191743)))

(declare-fun t!74834 () Bool)

(declare-fun tb!48005 () Bool)

(assert (=> (and b!546696 (= (toValue!1862 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))) t!74834) tb!48005))

(declare-fun result!53694 () Bool)

(assert (=> tb!48005 (= result!53694 (inv!21 (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) lt!229363)))))

(declare-fun m!796399 () Bool)

(assert (=> tb!48005 m!796399))

(assert (=> d!191743 t!74834))

(declare-fun b_and!53467 () Bool)

(assert (= b_and!53443 (and (=> t!74834 result!53694) b_and!53467)))

(declare-fun t!74836 () Bool)

(declare-fun tb!48007 () Bool)

(assert (=> (and b!546714 (= (toValue!1862 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))) t!74836) tb!48007))

(declare-fun result!53696 () Bool)

(assert (= result!53696 result!53694))

(assert (=> d!191743 t!74836))

(declare-fun b_and!53469 () Bool)

(assert (= b_and!53445 (and (=> t!74836 result!53696) b_and!53469)))

(declare-fun m!796401 () Bool)

(assert (=> d!191743 m!796401))

(assert (=> b!546718 d!191743))

(declare-fun bs!67741 () Bool)

(declare-fun d!191745 () Bool)

(assert (= bs!67741 (and d!191745 d!191649)))

(declare-fun lambda!15501 () Int)

(assert (=> bs!67741 (= (and (= (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) (= (toValue!1862 (transformation!1015 (rule!1733 token!491))) (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347))))))) (= lambda!15501 lambda!15500))))

(declare-fun b!547340 () Bool)

(declare-fun e!330782 () Bool)

(assert (=> b!547340 (= e!330782 true)))

(assert (=> d!191745 e!330782))

(assert (= d!191745 b!547340))

(assert (=> b!547340 (< (dynLambda!3149 order!4481 (toValue!1862 (transformation!1015 (rule!1733 token!491)))) (dynLambda!3150 order!4483 lambda!15501))))

(assert (=> b!547340 (< (dynLambda!3151 order!4485 (toChars!1721 (transformation!1015 (rule!1733 token!491)))) (dynLambda!3150 order!4483 lambda!15501))))

(assert (=> d!191745 (= (list!2233 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) lt!229363))) (list!2233 lt!229363))))

(declare-fun lt!229598 () Unit!9461)

(assert (=> d!191745 (= lt!229598 (ForallOf!88 lambda!15501 lt!229363))))

(assert (=> d!191745 (= (lemmaSemiInverse!144 (transformation!1015 (rule!1733 token!491)) lt!229363) lt!229598)))

(declare-fun b_lambda!21063 () Bool)

(assert (=> (not b_lambda!21063) (not d!191745)))

(declare-fun tb!48009 () Bool)

(declare-fun t!74838 () Bool)

(assert (=> (and b!546696 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 token!491)))) t!74838) tb!48009))

(declare-fun b!547341 () Bool)

(declare-fun e!330783 () Bool)

(declare-fun tp!173557 () Bool)

(assert (=> b!547341 (= e!330783 (and (inv!6760 (c!103029 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) lt!229363)))) tp!173557))))

(declare-fun result!53698 () Bool)

(assert (=> tb!48009 (= result!53698 (and (inv!6761 (dynLambda!3143 (toChars!1721 (transformation!1015 (rule!1733 token!491))) (dynLambda!3145 (toValue!1862 (transformation!1015 (rule!1733 token!491))) lt!229363))) e!330783))))

(assert (= tb!48009 b!547341))

(declare-fun m!796403 () Bool)

(assert (=> b!547341 m!796403))

(declare-fun m!796405 () Bool)

(assert (=> tb!48009 m!796405))

(assert (=> d!191745 t!74838))

(declare-fun b_and!53471 () Bool)

(assert (= b_and!53455 (and (=> t!74838 result!53698) b_and!53471)))

(declare-fun t!74840 () Bool)

(declare-fun tb!48011 () Bool)

(assert (=> (and b!546714 (= (toChars!1721 (transformation!1015 (rule!1733 token!491))) (toChars!1721 (transformation!1015 (rule!1733 token!491)))) t!74840) tb!48011))

(declare-fun result!53700 () Bool)

(assert (= result!53700 result!53698))

(assert (=> d!191745 t!74840))

(declare-fun b_and!53473 () Bool)

(assert (= b_and!53457 (and (=> t!74840 result!53700) b_and!53473)))

(declare-fun b_lambda!21065 () Bool)

(assert (=> (not b_lambda!21065) (not d!191745)))

(assert (=> d!191745 t!74834))

(declare-fun b_and!53475 () Bool)

(assert (= b_and!53467 (and (=> t!74834 result!53694) b_and!53475)))

(assert (=> d!191745 t!74836))

(declare-fun b_and!53477 () Bool)

(assert (= b_and!53469 (and (=> t!74836 result!53696) b_and!53477)))

(declare-fun m!796407 () Bool)

(assert (=> d!191745 m!796407))

(declare-fun m!796409 () Bool)

(assert (=> d!191745 m!796409))

(assert (=> d!191745 m!796401))

(assert (=> d!191745 m!796407))

(declare-fun m!796411 () Bool)

(assert (=> d!191745 m!796411))

(assert (=> d!191745 m!796401))

(declare-fun m!796413 () Bool)

(assert (=> d!191745 m!796413))

(assert (=> b!546718 d!191745))

(declare-fun d!191747 () Bool)

(assert (=> d!191747 (= (isEmpty!3888 input!2705) ((_ is Nil!5386) input!2705))))

(assert (=> b!546697 d!191747))

(declare-fun d!191749 () Bool)

(declare-fun lt!229599 () Bool)

(assert (=> d!191749 (= lt!229599 (select (content!942 rules!3103) (rule!1733 token!491)))))

(declare-fun e!330785 () Bool)

(assert (=> d!191749 (= lt!229599 e!330785)))

(declare-fun res!234009 () Bool)

(assert (=> d!191749 (=> (not res!234009) (not e!330785))))

(assert (=> d!191749 (= res!234009 ((_ is Cons!5387) rules!3103))))

(assert (=> d!191749 (= (contains!1257 rules!3103 (rule!1733 token!491)) lt!229599)))

(declare-fun b!547342 () Bool)

(declare-fun e!330784 () Bool)

(assert (=> b!547342 (= e!330785 e!330784)))

(declare-fun res!234010 () Bool)

(assert (=> b!547342 (=> res!234010 e!330784)))

(assert (=> b!547342 (= res!234010 (= (h!10788 rules!3103) (rule!1733 token!491)))))

(declare-fun b!547343 () Bool)

(assert (=> b!547343 (= e!330784 (contains!1257 (t!74770 rules!3103) (rule!1733 token!491)))))

(assert (= (and d!191749 res!234009) b!547342))

(assert (= (and b!547342 (not res!234010)) b!547343))

(assert (=> d!191749 m!796203))

(declare-fun m!796415 () Bool)

(assert (=> d!191749 m!796415))

(declare-fun m!796417 () Bool)

(assert (=> b!547343 m!796417))

(assert (=> b!546716 d!191749))

(declare-fun b!547348 () Bool)

(declare-fun e!330788 () Bool)

(declare-fun tp!173560 () Bool)

(assert (=> b!547348 (= e!330788 (and tp_is_empty!3053 tp!173560))))

(assert (=> b!546710 (= tp!173501 e!330788)))

(assert (= (and b!546710 ((_ is Cons!5386) (originalCharacters!1054 token!491))) b!547348))

(declare-fun b!547360 () Bool)

(declare-fun e!330791 () Bool)

(declare-fun tp!173574 () Bool)

(declare-fun tp!173571 () Bool)

(assert (=> b!547360 (= e!330791 (and tp!173574 tp!173571))))

(declare-fun b!547361 () Bool)

(declare-fun tp!173575 () Bool)

(assert (=> b!547361 (= e!330791 tp!173575)))

(assert (=> b!546682 (= tp!173502 e!330791)))

(declare-fun b!547359 () Bool)

(assert (=> b!547359 (= e!330791 tp_is_empty!3053)))

(declare-fun b!547362 () Bool)

(declare-fun tp!173572 () Bool)

(declare-fun tp!173573 () Bool)

(assert (=> b!547362 (= e!330791 (and tp!173572 tp!173573))))

(assert (= (and b!546682 ((_ is ElementMatch!1349) (regex!1015 (rule!1733 token!491)))) b!547359))

(assert (= (and b!546682 ((_ is Concat!2388) (regex!1015 (rule!1733 token!491)))) b!547360))

(assert (= (and b!546682 ((_ is Star!1349) (regex!1015 (rule!1733 token!491)))) b!547361))

(assert (= (and b!546682 ((_ is Union!1349) (regex!1015 (rule!1733 token!491)))) b!547362))

(declare-fun b!547364 () Bool)

(declare-fun e!330792 () Bool)

(declare-fun tp!173579 () Bool)

(declare-fun tp!173576 () Bool)

(assert (=> b!547364 (= e!330792 (and tp!173579 tp!173576))))

(declare-fun b!547365 () Bool)

(declare-fun tp!173580 () Bool)

(assert (=> b!547365 (= e!330792 tp!173580)))

(assert (=> b!546703 (= tp!173508 e!330792)))

(declare-fun b!547363 () Bool)

(assert (=> b!547363 (= e!330792 tp_is_empty!3053)))

(declare-fun b!547366 () Bool)

(declare-fun tp!173577 () Bool)

(declare-fun tp!173578 () Bool)

(assert (=> b!547366 (= e!330792 (and tp!173577 tp!173578))))

(assert (= (and b!546703 ((_ is ElementMatch!1349) (regex!1015 (h!10788 rules!3103)))) b!547363))

(assert (= (and b!546703 ((_ is Concat!2388) (regex!1015 (h!10788 rules!3103)))) b!547364))

(assert (= (and b!546703 ((_ is Star!1349) (regex!1015 (h!10788 rules!3103)))) b!547365))

(assert (= (and b!546703 ((_ is Union!1349) (regex!1015 (h!10788 rules!3103)))) b!547366))

(declare-fun b!547377 () Bool)

(declare-fun b_free!15213 () Bool)

(declare-fun b_next!15229 () Bool)

(assert (=> b!547377 (= b_free!15213 (not b_next!15229))))

(declare-fun tb!48013 () Bool)

(declare-fun t!74842 () Bool)

(assert (=> (and b!547377 (= (toValue!1862 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))) t!74842) tb!48013))

(declare-fun result!53708 () Bool)

(assert (= result!53708 result!53694))

(assert (=> d!191745 t!74842))

(declare-fun t!74844 () Bool)

(declare-fun tb!48015 () Bool)

(assert (=> (and b!547377 (= (toValue!1862 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toValue!1862 (transformation!1015 (rule!1733 token!491)))) t!74844) tb!48015))

(declare-fun result!53710 () Bool)

(assert (= result!53710 result!53650))

(assert (=> d!191625 t!74844))

(declare-fun t!74846 () Bool)

(declare-fun tb!48017 () Bool)

(assert (=> (and b!547377 (= (toValue!1862 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toValue!1862 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74846) tb!48017))

(declare-fun result!53712 () Bool)

(assert (= result!53712 result!53644))

(assert (=> d!191649 t!74846))

(assert (=> d!191595 t!74846))

(assert (=> d!191743 t!74842))

(declare-fun b_and!53479 () Bool)

(declare-fun tp!173589 () Bool)

(assert (=> b!547377 (= tp!173589 (and (=> t!74844 result!53710) (=> t!74846 result!53712) (=> t!74842 result!53708) b_and!53479))))

(declare-fun b_free!15215 () Bool)

(declare-fun b_next!15231 () Bool)

(assert (=> b!547377 (= b_free!15215 (not b_next!15231))))

(declare-fun t!74848 () Bool)

(declare-fun tb!48019 () Bool)

(assert (=> (and b!547377 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74848) tb!48019))

(declare-fun result!53714 () Bool)

(assert (= result!53714 result!53632))

(assert (=> d!191539 t!74848))

(declare-fun t!74850 () Bool)

(declare-fun tb!48021 () Bool)

(assert (=> (and b!547377 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 token!491)))) t!74850) tb!48021))

(declare-fun result!53716 () Bool)

(assert (= result!53716 result!53666))

(assert (=> b!547187 t!74850))

(declare-fun t!74852 () Bool)

(declare-fun tb!48023 () Bool)

(assert (=> (and b!547377 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 (_1!3474 (v!16183 lt!229347)))))) t!74852) tb!48023))

(declare-fun result!53718 () Bool)

(assert (= result!53718 result!53662))

(assert (=> d!191649 t!74852))

(assert (=> d!191705 t!74850))

(declare-fun tb!48025 () Bool)

(declare-fun t!74854 () Bool)

(assert (=> (and b!547377 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 token!491)))) t!74854) tb!48025))

(declare-fun result!53720 () Bool)

(assert (= result!53720 result!53698))

(assert (=> d!191745 t!74854))

(declare-fun tp!173591 () Bool)

(declare-fun b_and!53481 () Bool)

(assert (=> b!547377 (= tp!173591 (and (=> t!74850 result!53716) (=> t!74854 result!53720) (=> t!74852 result!53718) (=> t!74848 result!53714) b_and!53481))))

(declare-fun e!330804 () Bool)

(assert (=> b!547377 (= e!330804 (and tp!173589 tp!173591))))

(declare-fun b!547376 () Bool)

(declare-fun tp!173590 () Bool)

(declare-fun e!330802 () Bool)

(assert (=> b!547376 (= e!330802 (and tp!173590 (inv!6753 (tag!1277 (h!10788 (t!74770 rules!3103)))) (inv!6756 (transformation!1015 (h!10788 (t!74770 rules!3103)))) e!330804))))

(declare-fun b!547375 () Bool)

(declare-fun e!330801 () Bool)

(declare-fun tp!173592 () Bool)

(assert (=> b!547375 (= e!330801 (and e!330802 tp!173592))))

(assert (=> b!546691 (= tp!173503 e!330801)))

(assert (= b!547376 b!547377))

(assert (= b!547375 b!547376))

(assert (= (and b!546691 ((_ is Cons!5387) (t!74770 rules!3103))) b!547375))

(declare-fun m!796419 () Bool)

(assert (=> b!547376 m!796419))

(declare-fun m!796421 () Bool)

(assert (=> b!547376 m!796421))

(declare-fun b!547378 () Bool)

(declare-fun e!330805 () Bool)

(declare-fun tp!173593 () Bool)

(assert (=> b!547378 (= e!330805 (and tp_is_empty!3053 tp!173593))))

(assert (=> b!546685 (= tp!173500 e!330805)))

(assert (= (and b!546685 ((_ is Cons!5386) (t!74769 suffix!1342))) b!547378))

(declare-fun b!547379 () Bool)

(declare-fun e!330806 () Bool)

(declare-fun tp!173594 () Bool)

(assert (=> b!547379 (= e!330806 (and tp_is_empty!3053 tp!173594))))

(assert (=> b!546695 (= tp!173504 e!330806)))

(assert (= (and b!546695 ((_ is Cons!5386) (t!74769 input!2705))) b!547379))

(declare-fun b_lambda!21067 () Bool)

(assert (= b_lambda!21027 (or (and b!546696 b_free!15201 (= (toValue!1862 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (rule!1733 token!491))))) (and b!546714 b_free!15205) (and b!547377 b_free!15213 (= (toValue!1862 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toValue!1862 (transformation!1015 (rule!1733 token!491))))) b_lambda!21067)))

(declare-fun b_lambda!21069 () Bool)

(assert (= b_lambda!21063 (or (and b!546696 b_free!15203 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 token!491))))) (and b!546714 b_free!15207) (and b!547377 b_free!15215 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 token!491))))) b_lambda!21069)))

(declare-fun b_lambda!21071 () Bool)

(assert (= b_lambda!21061 (or (and b!546696 b_free!15201 (= (toValue!1862 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (rule!1733 token!491))))) (and b!546714 b_free!15205) (and b!547377 b_free!15213 (= (toValue!1862 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toValue!1862 (transformation!1015 (rule!1733 token!491))))) b_lambda!21071)))

(declare-fun b_lambda!21073 () Bool)

(assert (= b_lambda!21045 (or (and b!546696 b_free!15203 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 token!491))))) (and b!546714 b_free!15207) (and b!547377 b_free!15215 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 token!491))))) b_lambda!21073)))

(declare-fun b_lambda!21075 () Bool)

(assert (= b_lambda!21065 (or (and b!546696 b_free!15201 (= (toValue!1862 (transformation!1015 (h!10788 rules!3103))) (toValue!1862 (transformation!1015 (rule!1733 token!491))))) (and b!546714 b_free!15205) (and b!547377 b_free!15213 (= (toValue!1862 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toValue!1862 (transformation!1015 (rule!1733 token!491))))) b_lambda!21075)))

(declare-fun b_lambda!21077 () Bool)

(assert (= b_lambda!21043 (or (and b!546696 b_free!15203 (= (toChars!1721 (transformation!1015 (h!10788 rules!3103))) (toChars!1721 (transformation!1015 (rule!1733 token!491))))) (and b!546714 b_free!15207) (and b!547377 b_free!15215 (= (toChars!1721 (transformation!1015 (h!10788 (t!74770 rules!3103)))) (toChars!1721 (transformation!1015 (rule!1733 token!491))))) b_lambda!21077)))

(check-sat (not b!547155) (not b!546987) (not b!546836) (not d!191637) b_and!53473 (not b!547151) (not d!191705) (not d!191581) b_and!53471 (not d!191507) (not b!547323) (not d!191619) (not d!191735) (not d!191611) (not b!547321) (not b!547007) (not b_lambda!21039) (not b!547325) (not b_next!15217) (not b!546958) (not b!547324) (not b!547189) (not d!191527) (not d!191579) (not b!547160) (not d!191681) b_and!53475 (not b!546944) (not b!546979) (not d!191685) (not b_next!15219) (not tb!47979) (not b!547003) (not d!191713) (not b!547379) (not b!547378) (not b!546969) (not b!546996) b_and!53479 (not d!191605) (not b!547338) (not d!191649) (not b!547164) b_and!53477 (not b!546930) (not d!191575) (not b_lambda!21067) (not b_next!15231) (not b!547161) (not b!546982) (not b!546973) (not b!546999) (not b!546837) (not b!547187) (not bm!38344) (not b!547006) (not b!546842) (not b!547365) (not d!191749) (not b!547214) (not b!547188) (not b!547361) (not bm!38349) (not b!547348) (not b!546840) (not b!547375) (not d!191603) (not b!546920) (not b!546883) (not tb!47953) (not b_lambda!21037) (not b!546882) (not d!191665) (not d!191719) (not b!546736) (not d!191707) (not tb!48009) (not b_lambda!21075) (not b!547322) (not b!547360) (not d!191737) (not d!191597) (not b!546980) (not b!546926) (not b!547326) (not b!546975) (not b!547343) (not b!546981) (not b_next!15221) (not b!546995) (not d!191615) (not b!546956) (not b!546959) (not d!191535) (not b!546971) (not d!191631) (not d!191701) (not b_lambda!21025) (not d!191589) (not b!546976) (not b!546940) (not b_lambda!21071) (not b!547376) (not bm!38346) (not b!547034) (not d!191565) (not b!547337) (not d!191623) (not b!547327) (not b!547075) (not b!547336) (not d!191561) (not b!547366) (not b!546986) (not b!546983) (not b!546989) (not b!547159) (not b!546953) (not b!547333) (not b!547000) (not b!546843) (not b!546941) (not d!191539) (not b!546988) (not b!546838) (not b!546984) (not b!546985) (not tb!47963) tp_is_empty!3053 (not b_lambda!21077) b_and!53481 (not b!547331) (not b_next!15223) (not b!546993) (not b!547218) (not b!546945) (not d!191627) (not d!191621) (not b!546965) (not d!191643) (not b!547329) (not b!547364) (not tb!47967) (not d!191473) (not d!191641) (not b!547362) (not d!191587) (not b!546732) (not b!546733) (not b!547153) (not tb!47983) (not b!546839) (not b!547332) (not d!191475) (not d!191583) (not d!191661) (not b!547320) (not b!546942) (not d!191607) (not b!546972) (not d!191609) (not b!546977) (not d!191741) (not bm!38336) (not b!546957) (not b!547341) (not tb!48005) (not b!547334) (not d!191745) (not b_lambda!21073) (not b_lambda!21069) (not b_next!15229) (not bm!38337) (not d!191591) (not d!191733) (not b_lambda!21021) (not b!547335) (not d!191739) (not b!546951) (not d!191717) (not b!547179) (not b!546841))
(check-sat b_and!53473 b_and!53471 (not b_next!15217) b_and!53479 b_and!53477 (not b_next!15231) (not b_next!15221) (not b_next!15229) b_and!53475 (not b_next!15219) (not b_next!15223) b_and!53481)
