; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383280 () Bool)

(assert start!383280)

(declare-fun b!4063392 () Bool)

(declare-fun b_free!113025 () Bool)

(declare-fun b_next!113729 () Bool)

(assert (=> b!4063392 (= b_free!113025 (not b_next!113729))))

(declare-fun tp!1230473 () Bool)

(declare-fun b_and!312387 () Bool)

(assert (=> b!4063392 (= tp!1230473 b_and!312387)))

(declare-fun b_free!113027 () Bool)

(declare-fun b_next!113731 () Bool)

(assert (=> b!4063392 (= b_free!113027 (not b_next!113731))))

(declare-fun tp!1230478 () Bool)

(declare-fun b_and!312389 () Bool)

(assert (=> b!4063392 (= tp!1230478 b_and!312389)))

(declare-fun b!4063429 () Bool)

(declare-fun b_free!113029 () Bool)

(declare-fun b_next!113733 () Bool)

(assert (=> b!4063429 (= b_free!113029 (not b_next!113733))))

(declare-fun tp!1230470 () Bool)

(declare-fun b_and!312391 () Bool)

(assert (=> b!4063429 (= tp!1230470 b_and!312391)))

(declare-fun b_free!113031 () Bool)

(declare-fun b_next!113735 () Bool)

(assert (=> b!4063429 (= b_free!113031 (not b_next!113735))))

(declare-fun tp!1230481 () Bool)

(declare-fun b_and!312393 () Bool)

(assert (=> b!4063429 (= tp!1230481 b_and!312393)))

(declare-fun b!4063381 () Bool)

(declare-fun e!2521555 () Bool)

(declare-fun tp_is_empty!20717 () Bool)

(declare-fun tp!1230479 () Bool)

(assert (=> b!4063381 (= e!2521555 (and tp_is_empty!20717 tp!1230479))))

(declare-fun b!4063382 () Bool)

(declare-fun e!2521552 () Bool)

(declare-fun e!2521544 () Bool)

(assert (=> b!4063382 (= e!2521552 e!2521544)))

(declare-fun res!1657832 () Bool)

(assert (=> b!4063382 (=> res!1657832 e!2521544)))

(declare-datatypes ((C!23932 0))(
  ( (C!23933 (val!14060 Int)) )
))
(declare-datatypes ((List!43527 0))(
  ( (Nil!43403) (Cons!43403 (h!48823 C!23932) (t!336734 List!43527)) )
))
(declare-fun lt!1452382 () List!43527)

(declare-fun lt!1452356 () List!43527)

(assert (=> b!4063382 (= res!1657832 (not (= lt!1452382 lt!1452356)))))

(declare-fun prefix!494 () List!43527)

(declare-fun lt!1452386 () List!43527)

(declare-fun ++!11370 (List!43527 List!43527) List!43527)

(assert (=> b!4063382 (= lt!1452382 (++!11370 prefix!494 lt!1452386))))

(declare-fun lt!1452378 () List!43527)

(declare-fun lt!1452371 () List!43527)

(assert (=> b!4063382 (= lt!1452382 (++!11370 lt!1452378 lt!1452371))))

(declare-fun newSuffix!27 () List!43527)

(declare-datatypes ((Unit!62862 0))(
  ( (Unit!62863) )
))
(declare-fun lt!1452325 () Unit!62862)

(declare-fun lemmaConcatAssociativity!2672 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> b!4063382 (= lt!1452325 (lemmaConcatAssociativity!2672 prefix!494 newSuffix!27 lt!1452371))))

(declare-fun b!4063383 () Bool)

(declare-fun e!2521541 () Bool)

(declare-fun e!2521558 () Bool)

(assert (=> b!4063383 (= e!2521541 e!2521558)))

(declare-fun res!1657801 () Bool)

(assert (=> b!4063383 (=> res!1657801 e!2521558)))

(declare-fun lt!1452347 () List!43527)

(declare-fun isPrefix!4055 (List!43527 List!43527) Bool)

(assert (=> b!4063383 (= res!1657801 (not (isPrefix!4055 lt!1452347 lt!1452356)))))

(assert (=> b!4063383 (isPrefix!4055 prefix!494 lt!1452356)))

(declare-fun lt!1452374 () Unit!62862)

(declare-fun suffix!1299 () List!43527)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2890 (List!43527 List!43527) Unit!62862)

(assert (=> b!4063383 (= lt!1452374 (lemmaConcatTwoListThenFirstIsPrefix!2890 prefix!494 suffix!1299))))

(declare-fun lt!1452380 () List!43527)

(assert (=> b!4063383 (isPrefix!4055 lt!1452347 lt!1452380)))

(declare-fun lt!1452344 () Unit!62862)

(declare-fun suffixResult!105 () List!43527)

(assert (=> b!4063383 (= lt!1452344 (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452347 suffixResult!105))))

(declare-fun b!4063384 () Bool)

(declare-fun e!2521533 () Bool)

(declare-fun tp!1230474 () Bool)

(declare-fun e!2521556 () Bool)

(declare-datatypes ((IArray!26363 0))(
  ( (IArray!26364 (innerList!13239 List!43527)) )
))
(declare-datatypes ((Conc!13179 0))(
  ( (Node!13179 (left!32657 Conc!13179) (right!32987 Conc!13179) (csize!26588 Int) (cheight!13390 Int)) (Leaf!20370 (xs!16485 IArray!26363) (csize!26589 Int)) (Empty!13179) )
))
(declare-datatypes ((BalanceConc!25952 0))(
  ( (BalanceConc!25953 (c!701728 Conc!13179)) )
))
(declare-datatypes ((List!43528 0))(
  ( (Nil!43404) (Cons!43404 (h!48824 (_ BitVec 16)) (t!336735 List!43528)) )
))
(declare-datatypes ((TokenValue!7198 0))(
  ( (FloatLiteralValue!14396 (text!50831 List!43528)) (TokenValueExt!7197 (__x!26613 Int)) (Broken!35990 (value!219196 List!43528)) (Object!7321) (End!7198) (Def!7198) (Underscore!7198) (Match!7198) (Else!7198) (Error!7198) (Case!7198) (If!7198) (Extends!7198) (Abstract!7198) (Class!7198) (Val!7198) (DelimiterValue!14396 (del!7258 List!43528)) (KeywordValue!7204 (value!219197 List!43528)) (CommentValue!14396 (value!219198 List!43528)) (WhitespaceValue!14396 (value!219199 List!43528)) (IndentationValue!7198 (value!219200 List!43528)) (String!49707) (Int32!7198) (Broken!35991 (value!219201 List!43528)) (Boolean!7199) (Unit!62864) (OperatorValue!7201 (op!7258 List!43528)) (IdentifierValue!14396 (value!219202 List!43528)) (IdentifierValue!14397 (value!219203 List!43528)) (WhitespaceValue!14397 (value!219204 List!43528)) (True!14396) (False!14396) (Broken!35992 (value!219205 List!43528)) (Broken!35993 (value!219206 List!43528)) (True!14397) (RightBrace!7198) (RightBracket!7198) (Colon!7198) (Null!7198) (Comma!7198) (LeftBracket!7198) (False!14397) (LeftBrace!7198) (ImaginaryLiteralValue!7198 (text!50832 List!43528)) (StringLiteralValue!21594 (value!219207 List!43528)) (EOFValue!7198 (value!219208 List!43528)) (IdentValue!7198 (value!219209 List!43528)) (DelimiterValue!14397 (value!219210 List!43528)) (DedentValue!7198 (value!219211 List!43528)) (NewLineValue!7198 (value!219212 List!43528)) (IntegerValue!21594 (value!219213 (_ BitVec 32)) (text!50833 List!43528)) (IntegerValue!21595 (value!219214 Int) (text!50834 List!43528)) (Times!7198) (Or!7198) (Equal!7198) (Minus!7198) (Broken!35994 (value!219215 List!43528)) (And!7198) (Div!7198) (LessEqual!7198) (Mod!7198) (Concat!19071) (Not!7198) (Plus!7198) (SpaceValue!7198 (value!219216 List!43528)) (IntegerValue!21596 (value!219217 Int) (text!50835 List!43528)) (StringLiteralValue!21595 (text!50836 List!43528)) (FloatLiteralValue!14397 (text!50837 List!43528)) (BytesLiteralValue!7198 (value!219218 List!43528)) (CommentValue!14397 (value!219219 List!43528)) (StringLiteralValue!21596 (value!219220 List!43528)) (ErrorTokenValue!7198 (msg!7259 List!43528)) )
))
(declare-datatypes ((Regex!11873 0))(
  ( (ElementMatch!11873 (c!701729 C!23932)) (Concat!19072 (regOne!24258 Regex!11873) (regTwo!24258 Regex!11873)) (EmptyExpr!11873) (Star!11873 (reg!12202 Regex!11873)) (EmptyLang!11873) (Union!11873 (regOne!24259 Regex!11873) (regTwo!24259 Regex!11873)) )
))
(declare-datatypes ((String!49708 0))(
  ( (String!49709 (value!219221 String)) )
))
(declare-datatypes ((TokenValueInjection!13824 0))(
  ( (TokenValueInjection!13825 (toValue!9528 Int) (toChars!9387 Int)) )
))
(declare-datatypes ((Rule!13736 0))(
  ( (Rule!13737 (regex!6968 Regex!11873) (tag!7828 String!49708) (isSeparator!6968 Bool) (transformation!6968 TokenValueInjection!13824)) )
))
(declare-datatypes ((Token!13074 0))(
  ( (Token!13075 (value!219222 TokenValue!7198) (rule!10064 Rule!13736) (size!32451 Int) (originalCharacters!7568 List!43527)) )
))
(declare-fun token!484 () Token!13074)

(declare-fun inv!58023 (String!49708) Bool)

(declare-fun inv!58026 (TokenValueInjection!13824) Bool)

(assert (=> b!4063384 (= e!2521556 (and tp!1230474 (inv!58023 (tag!7828 (rule!10064 token!484))) (inv!58026 (transformation!6968 (rule!10064 token!484))) e!2521533))))

(declare-fun b!4063385 () Bool)

(declare-fun e!2521531 () Unit!62862)

(declare-fun Unit!62865 () Unit!62862)

(assert (=> b!4063385 (= e!2521531 Unit!62865)))

(declare-fun b!4063386 () Bool)

(declare-fun e!2521561 () Bool)

(declare-fun tp!1230480 () Bool)

(assert (=> b!4063386 (= e!2521561 (and tp_is_empty!20717 tp!1230480))))

(declare-fun b!4063387 () Bool)

(declare-fun res!1657815 () Bool)

(declare-fun e!2521547 () Bool)

(assert (=> b!4063387 (=> (not res!1657815) (not e!2521547))))

(declare-datatypes ((LexerInterface!6557 0))(
  ( (LexerInterfaceExt!6554 (__x!26614 Int)) (Lexer!6555) )
))
(declare-fun thiss!21717 () LexerInterface!6557)

(declare-datatypes ((List!43529 0))(
  ( (Nil!43405) (Cons!43405 (h!48825 Rule!13736) (t!336736 List!43529)) )
))
(declare-fun rules!2999 () List!43529)

(declare-fun rulesInvariant!5900 (LexerInterface!6557 List!43529) Bool)

(assert (=> b!4063387 (= res!1657815 (rulesInvariant!5900 thiss!21717 rules!2999))))

(declare-fun b!4063388 () Bool)

(declare-fun res!1657812 () Bool)

(assert (=> b!4063388 (=> (not res!1657812) (not e!2521547))))

(declare-fun size!32452 (List!43527) Int)

(assert (=> b!4063388 (= res!1657812 (>= (size!32452 suffix!1299) (size!32452 newSuffix!27)))))

(declare-fun b!4063389 () Bool)

(declare-fun res!1657820 () Bool)

(declare-fun e!2521543 () Bool)

(assert (=> b!4063389 (=> res!1657820 e!2521543)))

(declare-fun lt!1452329 () List!43527)

(assert (=> b!4063389 (= res!1657820 (not (isPrefix!4055 lt!1452329 lt!1452378)))))

(declare-fun b!4063390 () Bool)

(declare-fun e!2521560 () Bool)

(declare-fun e!2521534 () Bool)

(assert (=> b!4063390 (= e!2521560 e!2521534)))

(declare-fun res!1657824 () Bool)

(assert (=> b!4063390 (=> (not res!1657824) (not e!2521534))))

(declare-fun lt!1452333 () List!43527)

(assert (=> b!4063390 (= res!1657824 (= lt!1452333 lt!1452378))))

(assert (=> b!4063390 (= lt!1452378 (++!11370 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43527)

(assert (=> b!4063390 (= lt!1452333 (++!11370 lt!1452347 newSuffixResult!27))))

(declare-fun b!4063391 () Bool)

(assert (=> b!4063391 (= e!2521547 e!2521560)))

(declare-fun res!1657806 () Bool)

(assert (=> b!4063391 (=> (not res!1657806) (not e!2521560))))

(declare-fun lt!1452360 () Int)

(declare-fun lt!1452337 () Int)

(assert (=> b!4063391 (= res!1657806 (>= lt!1452360 lt!1452337))))

(assert (=> b!4063391 (= lt!1452337 (size!32452 lt!1452347))))

(assert (=> b!4063391 (= lt!1452360 (size!32452 prefix!494))))

(declare-fun list!16180 (BalanceConc!25952) List!43527)

(declare-fun charsOf!4784 (Token!13074) BalanceConc!25952)

(assert (=> b!4063391 (= lt!1452347 (list!16180 (charsOf!4784 token!484)))))

(declare-fun e!2521535 () Bool)

(assert (=> b!4063392 (= e!2521535 (and tp!1230473 tp!1230478))))

(declare-fun b!4063393 () Bool)

(declare-fun e!2521536 () Bool)

(declare-fun e!2521568 () Bool)

(declare-fun tp!1230471 () Bool)

(assert (=> b!4063393 (= e!2521536 (and e!2521568 tp!1230471))))

(declare-fun b!4063394 () Bool)

(declare-fun e!2521539 () Bool)

(assert (=> b!4063394 (= e!2521539 false)))

(declare-fun b!4063395 () Bool)

(declare-fun res!1657830 () Bool)

(assert (=> b!4063395 (=> (not res!1657830) (not e!2521547))))

(assert (=> b!4063395 (= res!1657830 (isPrefix!4055 newSuffix!27 suffix!1299))))

(declare-fun b!4063396 () Bool)

(declare-fun e!2521545 () Bool)

(declare-fun e!2521530 () Bool)

(assert (=> b!4063396 (= e!2521545 e!2521530)))

(declare-fun res!1657809 () Bool)

(assert (=> b!4063396 (=> res!1657809 e!2521530)))

(declare-fun lt!1452363 () List!43527)

(assert (=> b!4063396 (= res!1657809 (not (= lt!1452363 lt!1452356)))))

(declare-fun lt!1452369 () List!43527)

(assert (=> b!4063396 (= lt!1452363 (++!11370 lt!1452347 lt!1452369))))

(declare-fun getSuffix!2472 (List!43527 List!43527) List!43527)

(assert (=> b!4063396 (= lt!1452369 (getSuffix!2472 lt!1452356 lt!1452347))))

(declare-fun e!2521564 () Bool)

(assert (=> b!4063396 e!2521564))

(declare-fun res!1657826 () Bool)

(assert (=> b!4063396 (=> (not res!1657826) (not e!2521564))))

(assert (=> b!4063396 (= res!1657826 (isPrefix!4055 lt!1452356 lt!1452356))))

(declare-fun lt!1452379 () Unit!62862)

(declare-fun lemmaIsPrefixRefl!2622 (List!43527 List!43527) Unit!62862)

(assert (=> b!4063396 (= lt!1452379 (lemmaIsPrefixRefl!2622 lt!1452356 lt!1452356))))

(declare-fun b!4063397 () Bool)

(declare-fun e!2521548 () Bool)

(declare-fun e!2521566 () Bool)

(assert (=> b!4063397 (= e!2521548 e!2521566)))

(declare-fun res!1657813 () Bool)

(assert (=> b!4063397 (=> res!1657813 e!2521566)))

(declare-fun lt!1452384 () List!43527)

(assert (=> b!4063397 (= res!1657813 (not (= lt!1452384 lt!1452378)))))

(declare-fun lt!1452383 () List!43527)

(assert (=> b!4063397 (= lt!1452384 (++!11370 lt!1452329 lt!1452383))))

(assert (=> b!4063397 (= lt!1452383 (getSuffix!2472 lt!1452378 lt!1452329))))

(declare-fun b!4063398 () Bool)

(declare-fun e!2521546 () Bool)

(declare-fun e!2521567 () Bool)

(assert (=> b!4063398 (= e!2521546 e!2521567)))

(declare-fun res!1657805 () Bool)

(assert (=> b!4063398 (=> res!1657805 e!2521567)))

(declare-datatypes ((tuple2!42462 0))(
  ( (tuple2!42463 (_1!24365 Token!13074) (_2!24365 List!43527)) )
))
(declare-datatypes ((Option!9382 0))(
  ( (None!9381) (Some!9381 (v!39805 tuple2!42462)) )
))
(declare-fun lt!1452359 () Option!9382)

(declare-fun lt!1452364 () Option!9382)

(assert (=> b!4063398 (= res!1657805 (not (= lt!1452359 (Some!9381 (v!39805 lt!1452364)))))))

(assert (=> b!4063398 (isPrefix!4055 lt!1452329 (++!11370 lt!1452329 newSuffixResult!27))))

(declare-fun lt!1452349 () Unit!62862)

(assert (=> b!4063398 (= lt!1452349 (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452329 newSuffixResult!27))))

(declare-fun lt!1452358 () List!43527)

(assert (=> b!4063398 (isPrefix!4055 lt!1452329 lt!1452358)))

(assert (=> b!4063398 (= lt!1452358 (++!11370 lt!1452329 (_2!24365 (v!39805 lt!1452364))))))

(declare-fun lt!1452367 () Unit!62862)

(assert (=> b!4063398 (= lt!1452367 (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452329 (_2!24365 (v!39805 lt!1452364))))))

(declare-fun lt!1452328 () Int)

(declare-fun lt!1452332 () TokenValue!7198)

(assert (=> b!4063398 (= lt!1452359 (Some!9381 (tuple2!42463 (Token!13075 lt!1452332 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452328 lt!1452329) (_2!24365 (v!39805 lt!1452364)))))))

(declare-fun maxPrefixOneRule!2867 (LexerInterface!6557 Rule!13736 List!43527) Option!9382)

(assert (=> b!4063398 (= lt!1452359 (maxPrefixOneRule!2867 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452378))))

(assert (=> b!4063398 (= lt!1452328 (size!32452 lt!1452329))))

(declare-fun apply!10157 (TokenValueInjection!13824 BalanceConc!25952) TokenValue!7198)

(declare-fun seqFromList!5185 (List!43527) BalanceConc!25952)

(assert (=> b!4063398 (= lt!1452332 (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (seqFromList!5185 lt!1452329)))))

(declare-fun lt!1452340 () Unit!62862)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1673 (LexerInterface!6557 List!43529 List!43527 List!43527 List!43527 Rule!13736) Unit!62862)

(assert (=> b!4063398 (= lt!1452340 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1673 thiss!21717 rules!2999 lt!1452329 lt!1452378 (_2!24365 (v!39805 lt!1452364)) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> b!4063398 (= lt!1452329 (list!16180 (charsOf!4784 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun lt!1452352 () Unit!62862)

(declare-fun lemmaInv!1177 (TokenValueInjection!13824) Unit!62862)

(assert (=> b!4063398 (= lt!1452352 (lemmaInv!1177 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun ruleValid!2898 (LexerInterface!6557 Rule!13736) Bool)

(assert (=> b!4063398 (ruleValid!2898 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))

(declare-fun lt!1452368 () Unit!62862)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1968 (LexerInterface!6557 Rule!13736 List!43529) Unit!62862)

(assert (=> b!4063398 (= lt!1452368 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1968 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))) rules!2999))))

(declare-fun lt!1452324 () Unit!62862)

(declare-fun lemmaCharactersSize!1487 (Token!13074) Unit!62862)

(assert (=> b!4063398 (= lt!1452324 (lemmaCharactersSize!1487 token!484))))

(declare-fun lt!1452326 () Unit!62862)

(assert (=> b!4063398 (= lt!1452326 (lemmaCharactersSize!1487 (_1!24365 (v!39805 lt!1452364))))))

(declare-fun b!4063399 () Bool)

(declare-fun e!2521542 () Bool)

(assert (=> b!4063399 (= e!2521534 e!2521542)))

(declare-fun res!1657817 () Bool)

(assert (=> b!4063399 (=> (not res!1657817) (not e!2521542))))

(declare-fun lt!1452336 () Option!9382)

(declare-fun maxPrefix!3855 (LexerInterface!6557 List!43529 List!43527) Option!9382)

(assert (=> b!4063399 (= res!1657817 (= (maxPrefix!3855 thiss!21717 rules!2999 lt!1452356) lt!1452336))))

(declare-fun lt!1452387 () tuple2!42462)

(assert (=> b!4063399 (= lt!1452336 (Some!9381 lt!1452387))))

(assert (=> b!4063399 (= lt!1452387 (tuple2!42463 token!484 suffixResult!105))))

(assert (=> b!4063399 (= lt!1452356 (++!11370 prefix!494 suffix!1299))))

(declare-fun b!4063400 () Bool)

(declare-fun e!2521563 () Bool)

(declare-fun tp!1230472 () Bool)

(assert (=> b!4063400 (= e!2521563 (and tp_is_empty!20717 tp!1230472))))

(declare-fun res!1657821 () Bool)

(assert (=> start!383280 (=> (not res!1657821) (not e!2521547))))

(get-info :version)

(assert (=> start!383280 (= res!1657821 ((_ is Lexer!6555) thiss!21717))))

(assert (=> start!383280 e!2521547))

(assert (=> start!383280 e!2521561))

(declare-fun e!2521540 () Bool)

(declare-fun inv!58027 (Token!13074) Bool)

(assert (=> start!383280 (and (inv!58027 token!484) e!2521540)))

(assert (=> start!383280 e!2521555))

(assert (=> start!383280 e!2521563))

(declare-fun e!2521550 () Bool)

(assert (=> start!383280 e!2521550))

(assert (=> start!383280 true))

(assert (=> start!383280 e!2521536))

(declare-fun e!2521562 () Bool)

(assert (=> start!383280 e!2521562))

(declare-fun b!4063401 () Bool)

(declare-fun res!1657831 () Bool)

(assert (=> b!4063401 (=> (not res!1657831) (not e!2521547))))

(declare-fun isEmpty!25902 (List!43529) Bool)

(assert (=> b!4063401 (= res!1657831 (not (isEmpty!25902 rules!2999)))))

(declare-fun b!4063402 () Bool)

(assert (=> b!4063402 (= e!2521542 (not e!2521541))))

(declare-fun res!1657802 () Bool)

(assert (=> b!4063402 (=> res!1657802 e!2521541)))

(assert (=> b!4063402 (= res!1657802 (not (= lt!1452380 lt!1452356)))))

(assert (=> b!4063402 (= lt!1452380 (++!11370 lt!1452347 suffixResult!105))))

(declare-fun lt!1452331 () Unit!62862)

(assert (=> b!4063402 (= lt!1452331 (lemmaInv!1177 (transformation!6968 (rule!10064 token!484))))))

(assert (=> b!4063402 (ruleValid!2898 thiss!21717 (rule!10064 token!484))))

(declare-fun lt!1452377 () Unit!62862)

(assert (=> b!4063402 (= lt!1452377 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1968 thiss!21717 (rule!10064 token!484) rules!2999))))

(declare-fun b!4063403 () Bool)

(declare-fun tp!1230475 () Bool)

(assert (=> b!4063403 (= e!2521550 (and tp_is_empty!20717 tp!1230475))))

(declare-fun b!4063404 () Bool)

(declare-fun e!2521532 () Unit!62862)

(declare-fun Unit!62866 () Unit!62862)

(assert (=> b!4063404 (= e!2521532 Unit!62866)))

(declare-fun b!4063405 () Bool)

(declare-fun res!1657816 () Bool)

(assert (=> b!4063405 (=> (not res!1657816) (not e!2521564))))

(assert (=> b!4063405 (= res!1657816 (= (size!32451 token!484) (size!32452 (originalCharacters!7568 token!484))))))

(declare-fun b!4063406 () Bool)

(assert (=> b!4063406 (= e!2521530 e!2521546)))

(declare-fun res!1657827 () Bool)

(assert (=> b!4063406 (=> res!1657827 e!2521546)))

(assert (=> b!4063406 (= res!1657827 (not ((_ is Some!9381) lt!1452364)))))

(assert (=> b!4063406 (= lt!1452364 (maxPrefix!3855 thiss!21717 rules!2999 lt!1452378))))

(declare-fun lt!1452345 () Token!13074)

(assert (=> b!4063406 (and (= suffixResult!105 lt!1452369) (= lt!1452387 (tuple2!42463 lt!1452345 lt!1452369)))))

(declare-fun lt!1452338 () Unit!62862)

(declare-fun lemmaSamePrefixThenSameSuffix!2216 (List!43527 List!43527 List!43527 List!43527 List!43527) Unit!62862)

(assert (=> b!4063406 (= lt!1452338 (lemmaSamePrefixThenSameSuffix!2216 lt!1452347 suffixResult!105 lt!1452347 lt!1452369 lt!1452356))))

(assert (=> b!4063406 (isPrefix!4055 lt!1452347 lt!1452363)))

(declare-fun lt!1452375 () Unit!62862)

(assert (=> b!4063406 (= lt!1452375 (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452347 lt!1452369))))

(declare-fun b!4063407 () Bool)

(declare-fun e!2521557 () Bool)

(assert (=> b!4063407 (= e!2521543 e!2521557)))

(declare-fun res!1657823 () Bool)

(assert (=> b!4063407 (=> res!1657823 e!2521557)))

(declare-fun lt!1452366 () Int)

(declare-fun lt!1452370 () Int)

(assert (=> b!4063407 (= res!1657823 (<= lt!1452366 lt!1452370))))

(declare-fun lt!1452372 () Unit!62862)

(assert (=> b!4063407 (= lt!1452372 e!2521531)))

(declare-fun c!701726 () Bool)

(assert (=> b!4063407 (= c!701726 (< lt!1452366 lt!1452370))))

(declare-fun getIndex!580 (List!43529 Rule!13736) Int)

(assert (=> b!4063407 (= lt!1452370 (getIndex!580 rules!2999 (rule!10064 token!484)))))

(assert (=> b!4063407 (= lt!1452366 (getIndex!580 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> b!4063407 (= (_2!24365 (v!39805 lt!1452364)) newSuffixResult!27)))

(declare-fun lt!1452385 () Unit!62862)

(assert (=> b!4063407 (= lt!1452385 (lemmaSamePrefixThenSameSuffix!2216 lt!1452329 (_2!24365 (v!39805 lt!1452364)) lt!1452347 newSuffixResult!27 lt!1452378))))

(assert (=> b!4063407 (= lt!1452329 lt!1452347)))

(declare-fun lt!1452343 () Unit!62862)

(declare-fun lemmaIsPrefixSameLengthThenSameList!945 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> b!4063407 (= lt!1452343 (lemmaIsPrefixSameLengthThenSameList!945 lt!1452329 lt!1452347 lt!1452378))))

(declare-fun b!4063408 () Bool)

(declare-fun res!1657819 () Bool)

(assert (=> b!4063408 (=> res!1657819 e!2521557)))

(declare-fun matchR!5826 (Regex!11873 List!43527) Bool)

(assert (=> b!4063408 (= res!1657819 (not (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452329)))))

(declare-fun tp!1230482 () Bool)

(declare-fun b!4063409 () Bool)

(assert (=> b!4063409 (= e!2521568 (and tp!1230482 (inv!58023 (tag!7828 (h!48825 rules!2999))) (inv!58026 (transformation!6968 (h!48825 rules!2999))) e!2521535))))

(declare-fun b!4063410 () Bool)

(assert (=> b!4063410 (= e!2521544 e!2521548)))

(declare-fun res!1657829 () Bool)

(assert (=> b!4063410 (=> res!1657829 e!2521548)))

(assert (=> b!4063410 (= res!1657829 (not (isPrefix!4055 lt!1452329 lt!1452356)))))

(assert (=> b!4063410 (isPrefix!4055 lt!1452329 lt!1452382)))

(declare-fun lt!1452351 () Unit!62862)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!848 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> b!4063410 (= lt!1452351 (lemmaPrefixStaysPrefixWhenAddingToSuffix!848 lt!1452329 lt!1452378 lt!1452371))))

(declare-fun b!4063411 () Bool)

(declare-fun e!2521538 () Bool)

(assert (=> b!4063411 (= e!2521538 false)))

(declare-fun b!4063412 () Bool)

(declare-fun e!2521537 () Unit!62862)

(declare-fun Unit!62867 () Unit!62862)

(assert (=> b!4063412 (= e!2521537 Unit!62867)))

(declare-fun b!4063413 () Bool)

(declare-fun tp!1230476 () Bool)

(assert (=> b!4063413 (= e!2521562 (and tp_is_empty!20717 tp!1230476))))

(declare-fun b!4063414 () Bool)

(declare-fun tp!1230477 () Bool)

(declare-fun inv!21 (TokenValue!7198) Bool)

(assert (=> b!4063414 (= e!2521540 (and (inv!21 (value!219222 token!484)) e!2521556 tp!1230477))))

(declare-fun b!4063415 () Bool)

(declare-fun Unit!62868 () Unit!62862)

(assert (=> b!4063415 (= e!2521537 Unit!62868)))

(declare-fun lt!1452357 () Unit!62862)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!494 (LexerInterface!6557 List!43529 Rule!13736 List!43527 List!43527 List!43527 Rule!13736) Unit!62862)

(assert (=> b!4063415 (= lt!1452357 (lemmaMaxPrefixOutputsMaxPrefix!494 thiss!21717 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452329 lt!1452378 lt!1452347 (rule!10064 token!484)))))

(assert (=> b!4063415 false))

(declare-fun b!4063416 () Bool)

(assert (=> b!4063416 (= e!2521567 e!2521552)))

(declare-fun res!1657822 () Bool)

(assert (=> b!4063416 (=> res!1657822 e!2521552)))

(assert (=> b!4063416 (= res!1657822 (not (= lt!1452386 suffix!1299)))))

(assert (=> b!4063416 (= lt!1452386 (++!11370 newSuffix!27 lt!1452371))))

(assert (=> b!4063416 (= lt!1452371 (getSuffix!2472 suffix!1299 newSuffix!27))))

(declare-fun b!4063417 () Bool)

(declare-fun e!2521565 () Bool)

(declare-fun e!2521559 () Bool)

(assert (=> b!4063417 (= e!2521565 e!2521559)))

(declare-fun res!1657828 () Bool)

(assert (=> b!4063417 (=> res!1657828 e!2521559)))

(declare-fun lt!1452376 () List!43527)

(declare-fun lt!1452323 () List!43527)

(assert (=> b!4063417 (= res!1657828 (or (not (= lt!1452356 lt!1452376)) (not (= lt!1452356 lt!1452323))))))

(assert (=> b!4063417 (= lt!1452376 lt!1452323)))

(declare-fun lt!1452335 () List!43527)

(assert (=> b!4063417 (= lt!1452323 (++!11370 lt!1452347 lt!1452335))))

(declare-fun lt!1452346 () List!43527)

(assert (=> b!4063417 (= lt!1452376 (++!11370 lt!1452346 suffix!1299))))

(declare-fun lt!1452373 () List!43527)

(assert (=> b!4063417 (= lt!1452335 (++!11370 lt!1452373 suffix!1299))))

(declare-fun lt!1452330 () Unit!62862)

(assert (=> b!4063417 (= lt!1452330 (lemmaConcatAssociativity!2672 lt!1452347 lt!1452373 suffix!1299))))

(declare-fun b!4063418 () Bool)

(declare-fun res!1657804 () Bool)

(assert (=> b!4063418 (=> (not res!1657804) (not e!2521564))))

(declare-fun lt!1452362 () TokenValue!7198)

(assert (=> b!4063418 (= res!1657804 (= (value!219222 token!484) lt!1452362))))

(declare-fun b!4063419 () Bool)

(assert (=> b!4063419 (= e!2521564 (and (= (size!32451 token!484) lt!1452337) (= (originalCharacters!7568 token!484) lt!1452347)))))

(declare-fun b!4063420 () Bool)

(assert (=> b!4063420 (= e!2521566 e!2521543)))

(declare-fun res!1657810 () Bool)

(assert (=> b!4063420 (=> res!1657810 e!2521543)))

(assert (=> b!4063420 (= res!1657810 (not (= lt!1452337 lt!1452328)))))

(declare-fun lt!1452353 () Unit!62862)

(assert (=> b!4063420 (= lt!1452353 e!2521537)))

(declare-fun c!701725 () Bool)

(assert (=> b!4063420 (= c!701725 (< lt!1452328 lt!1452337))))

(declare-fun lt!1452342 () Unit!62862)

(assert (=> b!4063420 (= lt!1452342 e!2521532)))

(declare-fun c!701727 () Bool)

(assert (=> b!4063420 (= c!701727 (> lt!1452328 lt!1452337))))

(assert (=> b!4063420 (= (_2!24365 (v!39805 lt!1452364)) lt!1452383)))

(declare-fun lt!1452361 () Unit!62862)

(assert (=> b!4063420 (= lt!1452361 (lemmaSamePrefixThenSameSuffix!2216 lt!1452329 (_2!24365 (v!39805 lt!1452364)) lt!1452329 lt!1452383 lt!1452378))))

(assert (=> b!4063420 (isPrefix!4055 lt!1452329 lt!1452384)))

(declare-fun lt!1452334 () Unit!62862)

(assert (=> b!4063420 (= lt!1452334 (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452329 lt!1452383))))

(declare-fun b!4063421 () Bool)

(declare-fun res!1657818 () Bool)

(assert (=> b!4063421 (=> res!1657818 e!2521557)))

(declare-fun contains!8636 (List!43529 Rule!13736) Bool)

(assert (=> b!4063421 (= res!1657818 (not (contains!8636 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4063422 () Bool)

(declare-fun isEmpty!25903 (List!43527) Bool)

(assert (=> b!4063422 (= e!2521557 (not (isEmpty!25903 lt!1452329)))))

(declare-fun b!4063423 () Bool)

(assert (=> b!4063423 (= e!2521558 e!2521565)))

(declare-fun res!1657811 () Bool)

(assert (=> b!4063423 (=> res!1657811 e!2521565)))

(assert (=> b!4063423 (= res!1657811 (not (= lt!1452346 prefix!494)))))

(assert (=> b!4063423 (= lt!1452346 (++!11370 lt!1452347 lt!1452373))))

(assert (=> b!4063423 (= lt!1452373 (getSuffix!2472 prefix!494 lt!1452347))))

(assert (=> b!4063423 (isPrefix!4055 lt!1452347 prefix!494)))

(declare-fun lt!1452348 () Unit!62862)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!619 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> b!4063423 (= lt!1452348 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!619 prefix!494 lt!1452347 lt!1452356))))

(declare-fun b!4063424 () Bool)

(declare-fun res!1657807 () Bool)

(assert (=> b!4063424 (=> res!1657807 e!2521557)))

(assert (=> b!4063424 (= res!1657807 (not (contains!8636 rules!2999 (rule!10064 token!484))))))

(declare-fun b!4063425 () Bool)

(declare-fun e!2521553 () Bool)

(assert (=> b!4063425 (= e!2521559 e!2521553)))

(declare-fun res!1657814 () Bool)

(assert (=> b!4063425 (=> res!1657814 e!2521553)))

(declare-fun lt!1452350 () Option!9382)

(assert (=> b!4063425 (= res!1657814 (not (= lt!1452350 lt!1452336)))))

(assert (=> b!4063425 (= lt!1452350 (Some!9381 (tuple2!42463 lt!1452345 suffixResult!105)))))

(assert (=> b!4063425 (= lt!1452350 (maxPrefixOneRule!2867 thiss!21717 (rule!10064 token!484) lt!1452356))))

(assert (=> b!4063425 (= lt!1452345 (Token!13075 lt!1452362 (rule!10064 token!484) lt!1452337 lt!1452347))))

(assert (=> b!4063425 (= lt!1452362 (apply!10157 (transformation!6968 (rule!10064 token!484)) (seqFromList!5185 lt!1452347)))))

(declare-fun lt!1452355 () Unit!62862)

(assert (=> b!4063425 (= lt!1452355 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1673 thiss!21717 rules!2999 lt!1452347 lt!1452356 suffixResult!105 (rule!10064 token!484)))))

(assert (=> b!4063425 (= lt!1452335 suffixResult!105)))

(declare-fun lt!1452327 () Unit!62862)

(assert (=> b!4063425 (= lt!1452327 (lemmaSamePrefixThenSameSuffix!2216 lt!1452347 lt!1452335 lt!1452347 suffixResult!105 lt!1452356))))

(assert (=> b!4063425 (isPrefix!4055 lt!1452347 lt!1452323)))

(declare-fun lt!1452365 () Unit!62862)

(assert (=> b!4063425 (= lt!1452365 (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452347 lt!1452335))))

(declare-fun b!4063426 () Bool)

(declare-fun res!1657803 () Bool)

(assert (=> b!4063426 (=> res!1657803 e!2521548)))

(assert (=> b!4063426 (= res!1657803 (not (= lt!1452358 lt!1452378)))))

(declare-fun b!4063427 () Bool)

(assert (=> b!4063427 (= e!2521553 e!2521545)))

(declare-fun res!1657833 () Bool)

(assert (=> b!4063427 (=> res!1657833 e!2521545)))

(assert (=> b!4063427 (= res!1657833 (not (matchR!5826 (regex!6968 (rule!10064 token!484)) lt!1452347)))))

(assert (=> b!4063427 (isPrefix!4055 lt!1452347 lt!1452378)))

(declare-fun lt!1452381 () Unit!62862)

(assert (=> b!4063427 (= lt!1452381 (lemmaPrefixStaysPrefixWhenAddingToSuffix!848 lt!1452347 prefix!494 newSuffix!27))))

(declare-fun lt!1452354 () Unit!62862)

(assert (=> b!4063427 (= lt!1452354 (lemmaPrefixStaysPrefixWhenAddingToSuffix!848 lt!1452347 prefix!494 suffix!1299))))

(declare-fun b!4063428 () Bool)

(declare-fun Unit!62869 () Unit!62862)

(assert (=> b!4063428 (= e!2521531 Unit!62869)))

(declare-fun lt!1452339 () Unit!62862)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!296 (LexerInterface!6557 List!43529 Rule!13736 List!43527 List!43527 Rule!13736) Unit!62862)

(assert (=> b!4063428 (= lt!1452339 (lemmaMaxPrefNoSmallerRuleMatches!296 thiss!21717 rules!2999 (rule!10064 token!484) lt!1452347 lt!1452356 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun res!1657825 () Bool)

(assert (=> b!4063428 (= res!1657825 (not (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452347)))))

(assert (=> b!4063428 (=> (not res!1657825) (not e!2521539))))

(assert (=> b!4063428 e!2521539))

(assert (=> b!4063429 (= e!2521533 (and tp!1230470 tp!1230481))))

(declare-fun b!4063430 () Bool)

(declare-fun Unit!62870 () Unit!62862)

(assert (=> b!4063430 (= e!2521532 Unit!62870)))

(declare-fun lt!1452341 () Unit!62862)

(assert (=> b!4063430 (= lt!1452341 (lemmaMaxPrefixOutputsMaxPrefix!494 thiss!21717 rules!2999 (rule!10064 token!484) lt!1452347 lt!1452356 lt!1452329 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun res!1657808 () Bool)

(assert (=> b!4063430 (= res!1657808 (not (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452329)))))

(assert (=> b!4063430 (=> (not res!1657808) (not e!2521538))))

(assert (=> b!4063430 e!2521538))

(assert (= (and start!383280 res!1657821) b!4063401))

(assert (= (and b!4063401 res!1657831) b!4063387))

(assert (= (and b!4063387 res!1657815) b!4063388))

(assert (= (and b!4063388 res!1657812) b!4063395))

(assert (= (and b!4063395 res!1657830) b!4063391))

(assert (= (and b!4063391 res!1657806) b!4063390))

(assert (= (and b!4063390 res!1657824) b!4063399))

(assert (= (and b!4063399 res!1657817) b!4063402))

(assert (= (and b!4063402 (not res!1657802)) b!4063383))

(assert (= (and b!4063383 (not res!1657801)) b!4063423))

(assert (= (and b!4063423 (not res!1657811)) b!4063417))

(assert (= (and b!4063417 (not res!1657828)) b!4063425))

(assert (= (and b!4063425 (not res!1657814)) b!4063427))

(assert (= (and b!4063427 (not res!1657833)) b!4063396))

(assert (= (and b!4063396 res!1657826) b!4063418))

(assert (= (and b!4063418 res!1657804) b!4063405))

(assert (= (and b!4063405 res!1657816) b!4063419))

(assert (= (and b!4063396 (not res!1657809)) b!4063406))

(assert (= (and b!4063406 (not res!1657827)) b!4063398))

(assert (= (and b!4063398 (not res!1657805)) b!4063416))

(assert (= (and b!4063416 (not res!1657822)) b!4063382))

(assert (= (and b!4063382 (not res!1657832)) b!4063410))

(assert (= (and b!4063410 (not res!1657829)) b!4063426))

(assert (= (and b!4063426 (not res!1657803)) b!4063397))

(assert (= (and b!4063397 (not res!1657813)) b!4063420))

(assert (= (and b!4063420 c!701727) b!4063430))

(assert (= (and b!4063420 (not c!701727)) b!4063404))

(assert (= (and b!4063430 res!1657808) b!4063411))

(assert (= (and b!4063420 c!701725) b!4063415))

(assert (= (and b!4063420 (not c!701725)) b!4063412))

(assert (= (and b!4063420 (not res!1657810)) b!4063389))

(assert (= (and b!4063389 (not res!1657820)) b!4063407))

(assert (= (and b!4063407 c!701726) b!4063428))

(assert (= (and b!4063407 (not c!701726)) b!4063385))

(assert (= (and b!4063428 res!1657825) b!4063394))

(assert (= (and b!4063407 (not res!1657823)) b!4063408))

(assert (= (and b!4063408 (not res!1657819)) b!4063421))

(assert (= (and b!4063421 (not res!1657818)) b!4063424))

(assert (= (and b!4063424 (not res!1657807)) b!4063422))

(assert (= (and start!383280 ((_ is Cons!43403) prefix!494)) b!4063386))

(assert (= b!4063384 b!4063429))

(assert (= b!4063414 b!4063384))

(assert (= start!383280 b!4063414))

(assert (= (and start!383280 ((_ is Cons!43403) suffixResult!105)) b!4063381))

(assert (= (and start!383280 ((_ is Cons!43403) suffix!1299)) b!4063400))

(assert (= (and start!383280 ((_ is Cons!43403) newSuffix!27)) b!4063403))

(assert (= b!4063409 b!4063392))

(assert (= b!4063393 b!4063409))

(assert (= (and start!383280 ((_ is Cons!43405) rules!2999)) b!4063393))

(assert (= (and start!383280 ((_ is Cons!43403) newSuffixResult!27)) b!4063413))

(declare-fun m!4670113 () Bool)

(assert (=> b!4063415 m!4670113))

(declare-fun m!4670115 () Bool)

(assert (=> b!4063423 m!4670115))

(declare-fun m!4670117 () Bool)

(assert (=> b!4063423 m!4670117))

(declare-fun m!4670119 () Bool)

(assert (=> b!4063423 m!4670119))

(declare-fun m!4670121 () Bool)

(assert (=> b!4063423 m!4670121))

(declare-fun m!4670123 () Bool)

(assert (=> b!4063416 m!4670123))

(declare-fun m!4670125 () Bool)

(assert (=> b!4063416 m!4670125))

(declare-fun m!4670127 () Bool)

(assert (=> b!4063384 m!4670127))

(declare-fun m!4670129 () Bool)

(assert (=> b!4063384 m!4670129))

(declare-fun m!4670131 () Bool)

(assert (=> b!4063387 m!4670131))

(declare-fun m!4670133 () Bool)

(assert (=> b!4063410 m!4670133))

(declare-fun m!4670135 () Bool)

(assert (=> b!4063410 m!4670135))

(declare-fun m!4670137 () Bool)

(assert (=> b!4063410 m!4670137))

(declare-fun m!4670139 () Bool)

(assert (=> b!4063391 m!4670139))

(declare-fun m!4670141 () Bool)

(assert (=> b!4063391 m!4670141))

(declare-fun m!4670143 () Bool)

(assert (=> b!4063391 m!4670143))

(assert (=> b!4063391 m!4670143))

(declare-fun m!4670145 () Bool)

(assert (=> b!4063391 m!4670145))

(declare-fun m!4670147 () Bool)

(assert (=> b!4063407 m!4670147))

(declare-fun m!4670149 () Bool)

(assert (=> b!4063407 m!4670149))

(declare-fun m!4670151 () Bool)

(assert (=> b!4063407 m!4670151))

(declare-fun m!4670153 () Bool)

(assert (=> b!4063407 m!4670153))

(declare-fun m!4670155 () Bool)

(assert (=> b!4063397 m!4670155))

(declare-fun m!4670157 () Bool)

(assert (=> b!4063397 m!4670157))

(declare-fun m!4670159 () Bool)

(assert (=> b!4063428 m!4670159))

(declare-fun m!4670161 () Bool)

(assert (=> b!4063428 m!4670161))

(declare-fun m!4670163 () Bool)

(assert (=> b!4063389 m!4670163))

(declare-fun m!4670165 () Bool)

(assert (=> b!4063383 m!4670165))

(declare-fun m!4670167 () Bool)

(assert (=> b!4063383 m!4670167))

(declare-fun m!4670169 () Bool)

(assert (=> b!4063383 m!4670169))

(declare-fun m!4670171 () Bool)

(assert (=> b!4063383 m!4670171))

(declare-fun m!4670173 () Bool)

(assert (=> b!4063383 m!4670173))

(declare-fun m!4670175 () Bool)

(assert (=> b!4063405 m!4670175))

(declare-fun m!4670177 () Bool)

(assert (=> b!4063382 m!4670177))

(declare-fun m!4670179 () Bool)

(assert (=> b!4063382 m!4670179))

(declare-fun m!4670181 () Bool)

(assert (=> b!4063382 m!4670181))

(declare-fun m!4670183 () Bool)

(assert (=> b!4063417 m!4670183))

(declare-fun m!4670185 () Bool)

(assert (=> b!4063417 m!4670185))

(declare-fun m!4670187 () Bool)

(assert (=> b!4063417 m!4670187))

(declare-fun m!4670189 () Bool)

(assert (=> b!4063417 m!4670189))

(declare-fun m!4670191 () Bool)

(assert (=> b!4063388 m!4670191))

(declare-fun m!4670193 () Bool)

(assert (=> b!4063388 m!4670193))

(declare-fun m!4670195 () Bool)

(assert (=> b!4063425 m!4670195))

(declare-fun m!4670197 () Bool)

(assert (=> b!4063425 m!4670197))

(declare-fun m!4670199 () Bool)

(assert (=> b!4063425 m!4670199))

(assert (=> b!4063425 m!4670195))

(declare-fun m!4670201 () Bool)

(assert (=> b!4063425 m!4670201))

(declare-fun m!4670203 () Bool)

(assert (=> b!4063425 m!4670203))

(declare-fun m!4670205 () Bool)

(assert (=> b!4063425 m!4670205))

(declare-fun m!4670207 () Bool)

(assert (=> b!4063425 m!4670207))

(declare-fun m!4670209 () Bool)

(assert (=> b!4063395 m!4670209))

(declare-fun m!4670211 () Bool)

(assert (=> b!4063408 m!4670211))

(declare-fun m!4670213 () Bool)

(assert (=> b!4063409 m!4670213))

(declare-fun m!4670215 () Bool)

(assert (=> b!4063409 m!4670215))

(declare-fun m!4670217 () Bool)

(assert (=> b!4063421 m!4670217))

(declare-fun m!4670219 () Bool)

(assert (=> b!4063414 m!4670219))

(declare-fun m!4670221 () Bool)

(assert (=> b!4063398 m!4670221))

(declare-fun m!4670223 () Bool)

(assert (=> b!4063398 m!4670223))

(declare-fun m!4670225 () Bool)

(assert (=> b!4063398 m!4670225))

(declare-fun m!4670227 () Bool)

(assert (=> b!4063398 m!4670227))

(declare-fun m!4670229 () Bool)

(assert (=> b!4063398 m!4670229))

(declare-fun m!4670231 () Bool)

(assert (=> b!4063398 m!4670231))

(declare-fun m!4670233 () Bool)

(assert (=> b!4063398 m!4670233))

(declare-fun m!4670235 () Bool)

(assert (=> b!4063398 m!4670235))

(declare-fun m!4670237 () Bool)

(assert (=> b!4063398 m!4670237))

(declare-fun m!4670239 () Bool)

(assert (=> b!4063398 m!4670239))

(declare-fun m!4670241 () Bool)

(assert (=> b!4063398 m!4670241))

(declare-fun m!4670243 () Bool)

(assert (=> b!4063398 m!4670243))

(declare-fun m!4670245 () Bool)

(assert (=> b!4063398 m!4670245))

(declare-fun m!4670247 () Bool)

(assert (=> b!4063398 m!4670247))

(assert (=> b!4063398 m!4670239))

(assert (=> b!4063398 m!4670227))

(declare-fun m!4670249 () Bool)

(assert (=> b!4063398 m!4670249))

(assert (=> b!4063398 m!4670223))

(declare-fun m!4670251 () Bool)

(assert (=> b!4063398 m!4670251))

(declare-fun m!4670253 () Bool)

(assert (=> b!4063398 m!4670253))

(declare-fun m!4670255 () Bool)

(assert (=> b!4063398 m!4670255))

(declare-fun m!4670257 () Bool)

(assert (=> b!4063422 m!4670257))

(declare-fun m!4670259 () Bool)

(assert (=> b!4063420 m!4670259))

(declare-fun m!4670261 () Bool)

(assert (=> b!4063420 m!4670261))

(declare-fun m!4670263 () Bool)

(assert (=> b!4063420 m!4670263))

(declare-fun m!4670265 () Bool)

(assert (=> b!4063402 m!4670265))

(declare-fun m!4670267 () Bool)

(assert (=> b!4063402 m!4670267))

(declare-fun m!4670269 () Bool)

(assert (=> b!4063402 m!4670269))

(declare-fun m!4670271 () Bool)

(assert (=> b!4063402 m!4670271))

(declare-fun m!4670273 () Bool)

(assert (=> b!4063396 m!4670273))

(declare-fun m!4670275 () Bool)

(assert (=> b!4063396 m!4670275))

(declare-fun m!4670277 () Bool)

(assert (=> b!4063396 m!4670277))

(declare-fun m!4670279 () Bool)

(assert (=> b!4063396 m!4670279))

(declare-fun m!4670281 () Bool)

(assert (=> b!4063427 m!4670281))

(declare-fun m!4670283 () Bool)

(assert (=> b!4063427 m!4670283))

(declare-fun m!4670285 () Bool)

(assert (=> b!4063427 m!4670285))

(declare-fun m!4670287 () Bool)

(assert (=> b!4063427 m!4670287))

(declare-fun m!4670289 () Bool)

(assert (=> b!4063390 m!4670289))

(declare-fun m!4670291 () Bool)

(assert (=> b!4063390 m!4670291))

(declare-fun m!4670293 () Bool)

(assert (=> b!4063401 m!4670293))

(declare-fun m!4670295 () Bool)

(assert (=> b!4063424 m!4670295))

(declare-fun m!4670297 () Bool)

(assert (=> start!383280 m!4670297))

(declare-fun m!4670299 () Bool)

(assert (=> b!4063430 m!4670299))

(assert (=> b!4063430 m!4670211))

(declare-fun m!4670301 () Bool)

(assert (=> b!4063399 m!4670301))

(declare-fun m!4670303 () Bool)

(assert (=> b!4063399 m!4670303))

(declare-fun m!4670305 () Bool)

(assert (=> b!4063406 m!4670305))

(declare-fun m!4670307 () Bool)

(assert (=> b!4063406 m!4670307))

(declare-fun m!4670309 () Bool)

(assert (=> b!4063406 m!4670309))

(declare-fun m!4670311 () Bool)

(assert (=> b!4063406 m!4670311))

(check-sat (not b!4063386) (not b!4063403) (not b!4063407) tp_is_empty!20717 b_and!312391 b_and!312389 (not b!4063402) (not b!4063406) (not b!4063430) (not b_next!113729) (not b!4063410) (not b!4063389) (not b!4063417) (not b!4063383) (not b!4063400) (not b!4063401) (not b!4063387) (not b!4063409) (not b!4063422) (not b!4063397) (not b!4063423) (not b!4063391) (not b!4063415) (not b_next!113735) (not b!4063420) (not b!4063388) (not b!4063413) (not b!4063384) (not b!4063393) (not b!4063424) (not b!4063396) (not b!4063414) (not b!4063382) (not b!4063421) (not b!4063390) (not b!4063416) (not b!4063399) (not b!4063408) (not start!383280) (not b_next!113731) (not b!4063428) b_and!312387 (not b!4063398) (not b_next!113733) b_and!312393 (not b!4063425) (not b!4063405) (not b!4063381) (not b!4063427) (not b!4063395))
(check-sat (not b_next!113729) (not b_next!113735) b_and!312391 b_and!312389 (not b_next!113733) b_and!312393 (not b_next!113731) b_and!312387)
(get-model)

(declare-fun d!1207991 () Bool)

(declare-fun lt!1452432 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6625 (List!43529) (InoxSet Rule!13736))

(assert (=> d!1207991 (= lt!1452432 (select (content!6625 rules!2999) (rule!10064 token!484)))))

(declare-fun e!2521650 () Bool)

(assert (=> d!1207991 (= lt!1452432 e!2521650)))

(declare-fun res!1657924 () Bool)

(assert (=> d!1207991 (=> (not res!1657924) (not e!2521650))))

(assert (=> d!1207991 (= res!1657924 ((_ is Cons!43405) rules!2999))))

(assert (=> d!1207991 (= (contains!8636 rules!2999 (rule!10064 token!484)) lt!1452432)))

(declare-fun b!4063571 () Bool)

(declare-fun e!2521649 () Bool)

(assert (=> b!4063571 (= e!2521650 e!2521649)))

(declare-fun res!1657923 () Bool)

(assert (=> b!4063571 (=> res!1657923 e!2521649)))

(assert (=> b!4063571 (= res!1657923 (= (h!48825 rules!2999) (rule!10064 token!484)))))

(declare-fun b!4063572 () Bool)

(assert (=> b!4063572 (= e!2521649 (contains!8636 (t!336736 rules!2999) (rule!10064 token!484)))))

(assert (= (and d!1207991 res!1657924) b!4063571))

(assert (= (and b!4063571 (not res!1657923)) b!4063572))

(declare-fun m!4670459 () Bool)

(assert (=> d!1207991 m!4670459))

(declare-fun m!4670461 () Bool)

(assert (=> d!1207991 m!4670461))

(declare-fun m!4670465 () Bool)

(assert (=> b!4063572 m!4670465))

(assert (=> b!4063424 d!1207991))

(declare-fun d!1208007 () Bool)

(declare-fun e!2521655 () Bool)

(assert (=> d!1208007 e!2521655))

(declare-fun res!1657930 () Bool)

(assert (=> d!1208007 (=> (not res!1657930) (not e!2521655))))

(declare-fun lt!1452437 () List!43527)

(declare-fun content!6626 (List!43527) (InoxSet C!23932))

(assert (=> d!1208007 (= res!1657930 (= (content!6626 lt!1452437) ((_ map or) (content!6626 prefix!494) (content!6626 lt!1452386))))))

(declare-fun e!2521656 () List!43527)

(assert (=> d!1208007 (= lt!1452437 e!2521656)))

(declare-fun c!701759 () Bool)

(assert (=> d!1208007 (= c!701759 ((_ is Nil!43403) prefix!494))))

(assert (=> d!1208007 (= (++!11370 prefix!494 lt!1452386) lt!1452437)))

(declare-fun b!4063583 () Bool)

(declare-fun res!1657929 () Bool)

(assert (=> b!4063583 (=> (not res!1657929) (not e!2521655))))

(assert (=> b!4063583 (= res!1657929 (= (size!32452 lt!1452437) (+ (size!32452 prefix!494) (size!32452 lt!1452386))))))

(declare-fun b!4063581 () Bool)

(assert (=> b!4063581 (= e!2521656 lt!1452386)))

(declare-fun b!4063584 () Bool)

(assert (=> b!4063584 (= e!2521655 (or (not (= lt!1452386 Nil!43403)) (= lt!1452437 prefix!494)))))

(declare-fun b!4063582 () Bool)

(assert (=> b!4063582 (= e!2521656 (Cons!43403 (h!48823 prefix!494) (++!11370 (t!336734 prefix!494) lt!1452386)))))

(assert (= (and d!1208007 c!701759) b!4063581))

(assert (= (and d!1208007 (not c!701759)) b!4063582))

(assert (= (and d!1208007 res!1657930) b!4063583))

(assert (= (and b!4063583 res!1657929) b!4063584))

(declare-fun m!4670469 () Bool)

(assert (=> d!1208007 m!4670469))

(declare-fun m!4670471 () Bool)

(assert (=> d!1208007 m!4670471))

(declare-fun m!4670473 () Bool)

(assert (=> d!1208007 m!4670473))

(declare-fun m!4670475 () Bool)

(assert (=> b!4063583 m!4670475))

(assert (=> b!4063583 m!4670141))

(declare-fun m!4670477 () Bool)

(assert (=> b!4063583 m!4670477))

(declare-fun m!4670479 () Bool)

(assert (=> b!4063582 m!4670479))

(assert (=> b!4063382 d!1208007))

(declare-fun d!1208011 () Bool)

(declare-fun e!2521657 () Bool)

(assert (=> d!1208011 e!2521657))

(declare-fun res!1657932 () Bool)

(assert (=> d!1208011 (=> (not res!1657932) (not e!2521657))))

(declare-fun lt!1452439 () List!43527)

(assert (=> d!1208011 (= res!1657932 (= (content!6626 lt!1452439) ((_ map or) (content!6626 lt!1452378) (content!6626 lt!1452371))))))

(declare-fun e!2521658 () List!43527)

(assert (=> d!1208011 (= lt!1452439 e!2521658)))

(declare-fun c!701760 () Bool)

(assert (=> d!1208011 (= c!701760 ((_ is Nil!43403) lt!1452378))))

(assert (=> d!1208011 (= (++!11370 lt!1452378 lt!1452371) lt!1452439)))

(declare-fun b!4063587 () Bool)

(declare-fun res!1657931 () Bool)

(assert (=> b!4063587 (=> (not res!1657931) (not e!2521657))))

(assert (=> b!4063587 (= res!1657931 (= (size!32452 lt!1452439) (+ (size!32452 lt!1452378) (size!32452 lt!1452371))))))

(declare-fun b!4063585 () Bool)

(assert (=> b!4063585 (= e!2521658 lt!1452371)))

(declare-fun b!4063588 () Bool)

(assert (=> b!4063588 (= e!2521657 (or (not (= lt!1452371 Nil!43403)) (= lt!1452439 lt!1452378)))))

(declare-fun b!4063586 () Bool)

(assert (=> b!4063586 (= e!2521658 (Cons!43403 (h!48823 lt!1452378) (++!11370 (t!336734 lt!1452378) lt!1452371)))))

(assert (= (and d!1208011 c!701760) b!4063585))

(assert (= (and d!1208011 (not c!701760)) b!4063586))

(assert (= (and d!1208011 res!1657932) b!4063587))

(assert (= (and b!4063587 res!1657931) b!4063588))

(declare-fun m!4670481 () Bool)

(assert (=> d!1208011 m!4670481))

(declare-fun m!4670483 () Bool)

(assert (=> d!1208011 m!4670483))

(declare-fun m!4670485 () Bool)

(assert (=> d!1208011 m!4670485))

(declare-fun m!4670487 () Bool)

(assert (=> b!4063587 m!4670487))

(declare-fun m!4670489 () Bool)

(assert (=> b!4063587 m!4670489))

(declare-fun m!4670491 () Bool)

(assert (=> b!4063587 m!4670491))

(declare-fun m!4670493 () Bool)

(assert (=> b!4063586 m!4670493))

(assert (=> b!4063382 d!1208011))

(declare-fun d!1208013 () Bool)

(assert (=> d!1208013 (= (++!11370 (++!11370 prefix!494 newSuffix!27) lt!1452371) (++!11370 prefix!494 (++!11370 newSuffix!27 lt!1452371)))))

(declare-fun lt!1452445 () Unit!62862)

(declare-fun choose!24727 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> d!1208013 (= lt!1452445 (choose!24727 prefix!494 newSuffix!27 lt!1452371))))

(assert (=> d!1208013 (= (lemmaConcatAssociativity!2672 prefix!494 newSuffix!27 lt!1452371) lt!1452445)))

(declare-fun bs!592255 () Bool)

(assert (= bs!592255 d!1208013))

(assert (=> bs!592255 m!4670123))

(assert (=> bs!592255 m!4670123))

(declare-fun m!4670499 () Bool)

(assert (=> bs!592255 m!4670499))

(declare-fun m!4670501 () Bool)

(assert (=> bs!592255 m!4670501))

(assert (=> bs!592255 m!4670289))

(assert (=> bs!592255 m!4670289))

(declare-fun m!4670503 () Bool)

(assert (=> bs!592255 m!4670503))

(assert (=> b!4063382 d!1208013))

(declare-fun d!1208019 () Bool)

(assert (=> d!1208019 (= (isEmpty!25902 rules!2999) ((_ is Nil!43405) rules!2999))))

(assert (=> b!4063401 d!1208019))

(declare-fun d!1208021 () Bool)

(declare-fun e!2521659 () Bool)

(assert (=> d!1208021 e!2521659))

(declare-fun res!1657934 () Bool)

(assert (=> d!1208021 (=> (not res!1657934) (not e!2521659))))

(declare-fun lt!1452446 () List!43527)

(assert (=> d!1208021 (= res!1657934 (= (content!6626 lt!1452446) ((_ map or) (content!6626 lt!1452347) (content!6626 lt!1452373))))))

(declare-fun e!2521660 () List!43527)

(assert (=> d!1208021 (= lt!1452446 e!2521660)))

(declare-fun c!701761 () Bool)

(assert (=> d!1208021 (= c!701761 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208021 (= (++!11370 lt!1452347 lt!1452373) lt!1452446)))

(declare-fun b!4063591 () Bool)

(declare-fun res!1657933 () Bool)

(assert (=> b!4063591 (=> (not res!1657933) (not e!2521659))))

(assert (=> b!4063591 (= res!1657933 (= (size!32452 lt!1452446) (+ (size!32452 lt!1452347) (size!32452 lt!1452373))))))

(declare-fun b!4063589 () Bool)

(assert (=> b!4063589 (= e!2521660 lt!1452373)))

(declare-fun b!4063592 () Bool)

(assert (=> b!4063592 (= e!2521659 (or (not (= lt!1452373 Nil!43403)) (= lt!1452446 lt!1452347)))))

(declare-fun b!4063590 () Bool)

(assert (=> b!4063590 (= e!2521660 (Cons!43403 (h!48823 lt!1452347) (++!11370 (t!336734 lt!1452347) lt!1452373)))))

(assert (= (and d!1208021 c!701761) b!4063589))

(assert (= (and d!1208021 (not c!701761)) b!4063590))

(assert (= (and d!1208021 res!1657934) b!4063591))

(assert (= (and b!4063591 res!1657933) b!4063592))

(declare-fun m!4670505 () Bool)

(assert (=> d!1208021 m!4670505))

(declare-fun m!4670507 () Bool)

(assert (=> d!1208021 m!4670507))

(declare-fun m!4670509 () Bool)

(assert (=> d!1208021 m!4670509))

(declare-fun m!4670511 () Bool)

(assert (=> b!4063591 m!4670511))

(assert (=> b!4063591 m!4670139))

(declare-fun m!4670513 () Bool)

(assert (=> b!4063591 m!4670513))

(declare-fun m!4670515 () Bool)

(assert (=> b!4063590 m!4670515))

(assert (=> b!4063423 d!1208021))

(declare-fun d!1208023 () Bool)

(declare-fun lt!1452449 () List!43527)

(assert (=> d!1208023 (= (++!11370 lt!1452347 lt!1452449) prefix!494)))

(declare-fun e!2521663 () List!43527)

(assert (=> d!1208023 (= lt!1452449 e!2521663)))

(declare-fun c!701764 () Bool)

(assert (=> d!1208023 (= c!701764 ((_ is Cons!43403) lt!1452347))))

(assert (=> d!1208023 (>= (size!32452 prefix!494) (size!32452 lt!1452347))))

(assert (=> d!1208023 (= (getSuffix!2472 prefix!494 lt!1452347) lt!1452449)))

(declare-fun b!4063597 () Bool)

(declare-fun tail!6309 (List!43527) List!43527)

(assert (=> b!4063597 (= e!2521663 (getSuffix!2472 (tail!6309 prefix!494) (t!336734 lt!1452347)))))

(declare-fun b!4063598 () Bool)

(assert (=> b!4063598 (= e!2521663 prefix!494)))

(assert (= (and d!1208023 c!701764) b!4063597))

(assert (= (and d!1208023 (not c!701764)) b!4063598))

(declare-fun m!4670517 () Bool)

(assert (=> d!1208023 m!4670517))

(assert (=> d!1208023 m!4670141))

(assert (=> d!1208023 m!4670139))

(declare-fun m!4670519 () Bool)

(assert (=> b!4063597 m!4670519))

(assert (=> b!4063597 m!4670519))

(declare-fun m!4670521 () Bool)

(assert (=> b!4063597 m!4670521))

(assert (=> b!4063423 d!1208023))

(declare-fun b!4063608 () Bool)

(declare-fun res!1657943 () Bool)

(declare-fun e!2521670 () Bool)

(assert (=> b!4063608 (=> (not res!1657943) (not e!2521670))))

(declare-fun head!8577 (List!43527) C!23932)

(assert (=> b!4063608 (= res!1657943 (= (head!8577 lt!1452347) (head!8577 prefix!494)))))

(declare-fun b!4063610 () Bool)

(declare-fun e!2521671 () Bool)

(assert (=> b!4063610 (= e!2521671 (>= (size!32452 prefix!494) (size!32452 lt!1452347)))))

(declare-fun d!1208025 () Bool)

(assert (=> d!1208025 e!2521671))

(declare-fun res!1657946 () Bool)

(assert (=> d!1208025 (=> res!1657946 e!2521671)))

(declare-fun lt!1452452 () Bool)

(assert (=> d!1208025 (= res!1657946 (not lt!1452452))))

(declare-fun e!2521672 () Bool)

(assert (=> d!1208025 (= lt!1452452 e!2521672)))

(declare-fun res!1657945 () Bool)

(assert (=> d!1208025 (=> res!1657945 e!2521672)))

(assert (=> d!1208025 (= res!1657945 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208025 (= (isPrefix!4055 lt!1452347 prefix!494) lt!1452452)))

(declare-fun b!4063609 () Bool)

(assert (=> b!4063609 (= e!2521670 (isPrefix!4055 (tail!6309 lt!1452347) (tail!6309 prefix!494)))))

(declare-fun b!4063607 () Bool)

(assert (=> b!4063607 (= e!2521672 e!2521670)))

(declare-fun res!1657944 () Bool)

(assert (=> b!4063607 (=> (not res!1657944) (not e!2521670))))

(assert (=> b!4063607 (= res!1657944 (not ((_ is Nil!43403) prefix!494)))))

(assert (= (and d!1208025 (not res!1657945)) b!4063607))

(assert (= (and b!4063607 res!1657944) b!4063608))

(assert (= (and b!4063608 res!1657943) b!4063609))

(assert (= (and d!1208025 (not res!1657946)) b!4063610))

(declare-fun m!4670523 () Bool)

(assert (=> b!4063608 m!4670523))

(declare-fun m!4670525 () Bool)

(assert (=> b!4063608 m!4670525))

(assert (=> b!4063610 m!4670141))

(assert (=> b!4063610 m!4670139))

(declare-fun m!4670527 () Bool)

(assert (=> b!4063609 m!4670527))

(assert (=> b!4063609 m!4670519))

(assert (=> b!4063609 m!4670527))

(assert (=> b!4063609 m!4670519))

(declare-fun m!4670529 () Bool)

(assert (=> b!4063609 m!4670529))

(assert (=> b!4063423 d!1208025))

(declare-fun d!1208027 () Bool)

(assert (=> d!1208027 (isPrefix!4055 lt!1452347 prefix!494)))

(declare-fun lt!1452455 () Unit!62862)

(declare-fun choose!24728 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> d!1208027 (= lt!1452455 (choose!24728 prefix!494 lt!1452347 lt!1452356))))

(assert (=> d!1208027 (isPrefix!4055 prefix!494 lt!1452356)))

(assert (=> d!1208027 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!619 prefix!494 lt!1452347 lt!1452356) lt!1452455)))

(declare-fun bs!592256 () Bool)

(assert (= bs!592256 d!1208027))

(assert (=> bs!592256 m!4670119))

(declare-fun m!4670531 () Bool)

(assert (=> bs!592256 m!4670531))

(assert (=> bs!592256 m!4670165))

(assert (=> b!4063423 d!1208027))

(declare-fun d!1208029 () Bool)

(declare-fun e!2521673 () Bool)

(assert (=> d!1208029 e!2521673))

(declare-fun res!1657948 () Bool)

(assert (=> d!1208029 (=> (not res!1657948) (not e!2521673))))

(declare-fun lt!1452456 () List!43527)

(assert (=> d!1208029 (= res!1657948 (= (content!6626 lt!1452456) ((_ map or) (content!6626 lt!1452347) (content!6626 suffixResult!105))))))

(declare-fun e!2521674 () List!43527)

(assert (=> d!1208029 (= lt!1452456 e!2521674)))

(declare-fun c!701765 () Bool)

(assert (=> d!1208029 (= c!701765 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208029 (= (++!11370 lt!1452347 suffixResult!105) lt!1452456)))

(declare-fun b!4063613 () Bool)

(declare-fun res!1657947 () Bool)

(assert (=> b!4063613 (=> (not res!1657947) (not e!2521673))))

(assert (=> b!4063613 (= res!1657947 (= (size!32452 lt!1452456) (+ (size!32452 lt!1452347) (size!32452 suffixResult!105))))))

(declare-fun b!4063611 () Bool)

(assert (=> b!4063611 (= e!2521674 suffixResult!105)))

(declare-fun b!4063614 () Bool)

(assert (=> b!4063614 (= e!2521673 (or (not (= suffixResult!105 Nil!43403)) (= lt!1452456 lt!1452347)))))

(declare-fun b!4063612 () Bool)

(assert (=> b!4063612 (= e!2521674 (Cons!43403 (h!48823 lt!1452347) (++!11370 (t!336734 lt!1452347) suffixResult!105)))))

(assert (= (and d!1208029 c!701765) b!4063611))

(assert (= (and d!1208029 (not c!701765)) b!4063612))

(assert (= (and d!1208029 res!1657948) b!4063613))

(assert (= (and b!4063613 res!1657947) b!4063614))

(declare-fun m!4670533 () Bool)

(assert (=> d!1208029 m!4670533))

(assert (=> d!1208029 m!4670507))

(declare-fun m!4670535 () Bool)

(assert (=> d!1208029 m!4670535))

(declare-fun m!4670537 () Bool)

(assert (=> b!4063613 m!4670537))

(assert (=> b!4063613 m!4670139))

(declare-fun m!4670539 () Bool)

(assert (=> b!4063613 m!4670539))

(declare-fun m!4670541 () Bool)

(assert (=> b!4063612 m!4670541))

(assert (=> b!4063402 d!1208029))

(declare-fun d!1208031 () Bool)

(declare-fun e!2521683 () Bool)

(assert (=> d!1208031 e!2521683))

(declare-fun res!1657955 () Bool)

(assert (=> d!1208031 (=> (not res!1657955) (not e!2521683))))

(declare-fun semiInverseModEq!2982 (Int Int) Bool)

(assert (=> d!1208031 (= res!1657955 (semiInverseModEq!2982 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))))))

(declare-fun Unit!62872 () Unit!62862)

(assert (=> d!1208031 (= (lemmaInv!1177 (transformation!6968 (rule!10064 token!484))) Unit!62872)))

(declare-fun b!4063625 () Bool)

(declare-fun equivClasses!2881 (Int Int) Bool)

(assert (=> b!4063625 (= e!2521683 (equivClasses!2881 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))))))

(assert (= (and d!1208031 res!1657955) b!4063625))

(declare-fun m!4670543 () Bool)

(assert (=> d!1208031 m!4670543))

(declare-fun m!4670545 () Bool)

(assert (=> b!4063625 m!4670545))

(assert (=> b!4063402 d!1208031))

(declare-fun d!1208033 () Bool)

(declare-fun res!1657970 () Bool)

(declare-fun e!2521688 () Bool)

(assert (=> d!1208033 (=> (not res!1657970) (not e!2521688))))

(declare-fun validRegex!5374 (Regex!11873) Bool)

(assert (=> d!1208033 (= res!1657970 (validRegex!5374 (regex!6968 (rule!10064 token!484))))))

(assert (=> d!1208033 (= (ruleValid!2898 thiss!21717 (rule!10064 token!484)) e!2521688)))

(declare-fun b!4063640 () Bool)

(declare-fun res!1657971 () Bool)

(assert (=> b!4063640 (=> (not res!1657971) (not e!2521688))))

(declare-fun nullable!4174 (Regex!11873) Bool)

(assert (=> b!4063640 (= res!1657971 (not (nullable!4174 (regex!6968 (rule!10064 token!484)))))))

(declare-fun b!4063641 () Bool)

(assert (=> b!4063641 (= e!2521688 (not (= (tag!7828 (rule!10064 token!484)) (String!49709 ""))))))

(assert (= (and d!1208033 res!1657970) b!4063640))

(assert (= (and b!4063640 res!1657971) b!4063641))

(declare-fun m!4670547 () Bool)

(assert (=> d!1208033 m!4670547))

(declare-fun m!4670549 () Bool)

(assert (=> b!4063640 m!4670549))

(assert (=> b!4063402 d!1208033))

(declare-fun d!1208035 () Bool)

(assert (=> d!1208035 (ruleValid!2898 thiss!21717 (rule!10064 token!484))))

(declare-fun lt!1452474 () Unit!62862)

(declare-fun choose!24729 (LexerInterface!6557 Rule!13736 List!43529) Unit!62862)

(assert (=> d!1208035 (= lt!1452474 (choose!24729 thiss!21717 (rule!10064 token!484) rules!2999))))

(assert (=> d!1208035 (contains!8636 rules!2999 (rule!10064 token!484))))

(assert (=> d!1208035 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1968 thiss!21717 (rule!10064 token!484) rules!2999) lt!1452474)))

(declare-fun bs!592258 () Bool)

(assert (= bs!592258 d!1208035))

(assert (=> bs!592258 m!4670269))

(declare-fun m!4670601 () Bool)

(assert (=> bs!592258 m!4670601))

(assert (=> bs!592258 m!4670295))

(assert (=> b!4063402 d!1208035))

(declare-fun d!1208043 () Bool)

(declare-fun lt!1452482 () Int)

(assert (=> d!1208043 (>= lt!1452482 0)))

(declare-fun e!2521708 () Int)

(assert (=> d!1208043 (= lt!1452482 e!2521708)))

(declare-fun c!701772 () Bool)

(assert (=> d!1208043 (= c!701772 ((_ is Nil!43403) (originalCharacters!7568 token!484)))))

(assert (=> d!1208043 (= (size!32452 (originalCharacters!7568 token!484)) lt!1452482)))

(declare-fun b!4063670 () Bool)

(assert (=> b!4063670 (= e!2521708 0)))

(declare-fun b!4063671 () Bool)

(assert (=> b!4063671 (= e!2521708 (+ 1 (size!32452 (t!336734 (originalCharacters!7568 token!484)))))))

(assert (= (and d!1208043 c!701772) b!4063670))

(assert (= (and d!1208043 (not c!701772)) b!4063671))

(declare-fun m!4670629 () Bool)

(assert (=> b!4063671 m!4670629))

(assert (=> b!4063405 d!1208043))

(declare-fun d!1208055 () Bool)

(assert (=> d!1208055 (= (inv!58023 (tag!7828 (rule!10064 token!484))) (= (mod (str.len (value!219221 (tag!7828 (rule!10064 token!484)))) 2) 0))))

(assert (=> b!4063384 d!1208055))

(declare-fun d!1208059 () Bool)

(declare-fun res!1657992 () Bool)

(declare-fun e!2521712 () Bool)

(assert (=> d!1208059 (=> (not res!1657992) (not e!2521712))))

(assert (=> d!1208059 (= res!1657992 (semiInverseModEq!2982 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))))))

(assert (=> d!1208059 (= (inv!58026 (transformation!6968 (rule!10064 token!484))) e!2521712)))

(declare-fun b!4063675 () Bool)

(assert (=> b!4063675 (= e!2521712 (equivClasses!2881 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))))))

(assert (= (and d!1208059 res!1657992) b!4063675))

(assert (=> d!1208059 m!4670543))

(assert (=> b!4063675 m!4670545))

(assert (=> b!4063384 d!1208059))

(declare-fun b!4063720 () Bool)

(declare-fun e!2521733 () Bool)

(declare-fun e!2521735 () Bool)

(assert (=> b!4063720 (= e!2521733 e!2521735)))

(declare-fun res!1658020 () Bool)

(assert (=> b!4063720 (=> (not res!1658020) (not e!2521735))))

(declare-fun lt!1452495 () Bool)

(assert (=> b!4063720 (= res!1658020 (not lt!1452495))))

(declare-fun bm!288258 () Bool)

(declare-fun call!288263 () Bool)

(assert (=> bm!288258 (= call!288263 (isEmpty!25903 lt!1452347))))

(declare-fun b!4063721 () Bool)

(declare-fun e!2521736 () Bool)

(assert (=> b!4063721 (= e!2521736 (not (= (head!8577 lt!1452347) (c!701729 (regex!6968 (rule!10064 token!484))))))))

(declare-fun b!4063722 () Bool)

(declare-fun e!2521739 () Bool)

(declare-fun e!2521734 () Bool)

(assert (=> b!4063722 (= e!2521739 e!2521734)))

(declare-fun c!701783 () Bool)

(assert (=> b!4063722 (= c!701783 ((_ is EmptyLang!11873) (regex!6968 (rule!10064 token!484))))))

(declare-fun b!4063723 () Bool)

(assert (=> b!4063723 (= e!2521739 (= lt!1452495 call!288263))))

(declare-fun b!4063724 () Bool)

(declare-fun res!1658026 () Bool)

(assert (=> b!4063724 (=> res!1658026 e!2521736)))

(assert (=> b!4063724 (= res!1658026 (not (isEmpty!25903 (tail!6309 lt!1452347))))))

(declare-fun b!4063725 () Bool)

(assert (=> b!4063725 (= e!2521734 (not lt!1452495))))

(declare-fun b!4063726 () Bool)

(declare-fun res!1658025 () Bool)

(declare-fun e!2521738 () Bool)

(assert (=> b!4063726 (=> (not res!1658025) (not e!2521738))))

(assert (=> b!4063726 (= res!1658025 (isEmpty!25903 (tail!6309 lt!1452347)))))

(declare-fun b!4063727 () Bool)

(declare-fun e!2521737 () Bool)

(declare-fun derivativeStep!3579 (Regex!11873 C!23932) Regex!11873)

(assert (=> b!4063727 (= e!2521737 (matchR!5826 (derivativeStep!3579 (regex!6968 (rule!10064 token!484)) (head!8577 lt!1452347)) (tail!6309 lt!1452347)))))

(declare-fun b!4063729 () Bool)

(assert (=> b!4063729 (= e!2521735 e!2521736)))

(declare-fun res!1658019 () Bool)

(assert (=> b!4063729 (=> res!1658019 e!2521736)))

(assert (=> b!4063729 (= res!1658019 call!288263)))

(declare-fun b!4063730 () Bool)

(declare-fun res!1658028 () Bool)

(assert (=> b!4063730 (=> res!1658028 e!2521733)))

(assert (=> b!4063730 (= res!1658028 (not ((_ is ElementMatch!11873) (regex!6968 (rule!10064 token!484)))))))

(assert (=> b!4063730 (= e!2521734 e!2521733)))

(declare-fun b!4063731 () Bool)

(assert (=> b!4063731 (= e!2521737 (nullable!4174 (regex!6968 (rule!10064 token!484))))))

(declare-fun b!4063734 () Bool)

(declare-fun res!1658024 () Bool)

(assert (=> b!4063734 (=> res!1658024 e!2521733)))

(assert (=> b!4063734 (= res!1658024 e!2521738)))

(declare-fun res!1658023 () Bool)

(assert (=> b!4063734 (=> (not res!1658023) (not e!2521738))))

(assert (=> b!4063734 (= res!1658023 lt!1452495)))

(declare-fun b!4063735 () Bool)

(assert (=> b!4063735 (= e!2521738 (= (head!8577 lt!1452347) (c!701729 (regex!6968 (rule!10064 token!484)))))))

(declare-fun d!1208061 () Bool)

(assert (=> d!1208061 e!2521739))

(declare-fun c!701782 () Bool)

(assert (=> d!1208061 (= c!701782 ((_ is EmptyExpr!11873) (regex!6968 (rule!10064 token!484))))))

(assert (=> d!1208061 (= lt!1452495 e!2521737)))

(declare-fun c!701781 () Bool)

(assert (=> d!1208061 (= c!701781 (isEmpty!25903 lt!1452347))))

(assert (=> d!1208061 (validRegex!5374 (regex!6968 (rule!10064 token!484)))))

(assert (=> d!1208061 (= (matchR!5826 (regex!6968 (rule!10064 token!484)) lt!1452347) lt!1452495)))

(declare-fun b!4063728 () Bool)

(declare-fun res!1658027 () Bool)

(assert (=> b!4063728 (=> (not res!1658027) (not e!2521738))))

(assert (=> b!4063728 (= res!1658027 (not call!288263))))

(assert (= (and d!1208061 c!701781) b!4063731))

(assert (= (and d!1208061 (not c!701781)) b!4063727))

(assert (= (and d!1208061 c!701782) b!4063723))

(assert (= (and d!1208061 (not c!701782)) b!4063722))

(assert (= (and b!4063722 c!701783) b!4063725))

(assert (= (and b!4063722 (not c!701783)) b!4063730))

(assert (= (and b!4063730 (not res!1658028)) b!4063734))

(assert (= (and b!4063734 res!1658023) b!4063728))

(assert (= (and b!4063728 res!1658027) b!4063726))

(assert (= (and b!4063726 res!1658025) b!4063735))

(assert (= (and b!4063734 (not res!1658024)) b!4063720))

(assert (= (and b!4063720 res!1658020) b!4063729))

(assert (= (and b!4063729 (not res!1658019)) b!4063724))

(assert (= (and b!4063724 (not res!1658026)) b!4063721))

(assert (= (or b!4063723 b!4063728 b!4063729) bm!288258))

(assert (=> b!4063727 m!4670523))

(assert (=> b!4063727 m!4670523))

(declare-fun m!4670635 () Bool)

(assert (=> b!4063727 m!4670635))

(assert (=> b!4063727 m!4670527))

(assert (=> b!4063727 m!4670635))

(assert (=> b!4063727 m!4670527))

(declare-fun m!4670637 () Bool)

(assert (=> b!4063727 m!4670637))

(assert (=> b!4063735 m!4670523))

(declare-fun m!4670639 () Bool)

(assert (=> d!1208061 m!4670639))

(assert (=> d!1208061 m!4670547))

(assert (=> b!4063724 m!4670527))

(assert (=> b!4063724 m!4670527))

(declare-fun m!4670641 () Bool)

(assert (=> b!4063724 m!4670641))

(assert (=> b!4063731 m!4670549))

(assert (=> bm!288258 m!4670639))

(assert (=> b!4063726 m!4670527))

(assert (=> b!4063726 m!4670527))

(assert (=> b!4063726 m!4670641))

(assert (=> b!4063721 m!4670523))

(assert (=> b!4063427 d!1208061))

(declare-fun b!4063737 () Bool)

(declare-fun res!1658031 () Bool)

(declare-fun e!2521740 () Bool)

(assert (=> b!4063737 (=> (not res!1658031) (not e!2521740))))

(assert (=> b!4063737 (= res!1658031 (= (head!8577 lt!1452347) (head!8577 lt!1452378)))))

(declare-fun b!4063739 () Bool)

(declare-fun e!2521741 () Bool)

(assert (=> b!4063739 (= e!2521741 (>= (size!32452 lt!1452378) (size!32452 lt!1452347)))))

(declare-fun d!1208063 () Bool)

(assert (=> d!1208063 e!2521741))

(declare-fun res!1658034 () Bool)

(assert (=> d!1208063 (=> res!1658034 e!2521741)))

(declare-fun lt!1452496 () Bool)

(assert (=> d!1208063 (= res!1658034 (not lt!1452496))))

(declare-fun e!2521742 () Bool)

(assert (=> d!1208063 (= lt!1452496 e!2521742)))

(declare-fun res!1658033 () Bool)

(assert (=> d!1208063 (=> res!1658033 e!2521742)))

(assert (=> d!1208063 (= res!1658033 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208063 (= (isPrefix!4055 lt!1452347 lt!1452378) lt!1452496)))

(declare-fun b!4063738 () Bool)

(assert (=> b!4063738 (= e!2521740 (isPrefix!4055 (tail!6309 lt!1452347) (tail!6309 lt!1452378)))))

(declare-fun b!4063736 () Bool)

(assert (=> b!4063736 (= e!2521742 e!2521740)))

(declare-fun res!1658032 () Bool)

(assert (=> b!4063736 (=> (not res!1658032) (not e!2521740))))

(assert (=> b!4063736 (= res!1658032 (not ((_ is Nil!43403) lt!1452378)))))

(assert (= (and d!1208063 (not res!1658033)) b!4063736))

(assert (= (and b!4063736 res!1658032) b!4063737))

(assert (= (and b!4063737 res!1658031) b!4063738))

(assert (= (and d!1208063 (not res!1658034)) b!4063739))

(assert (=> b!4063737 m!4670523))

(declare-fun m!4670643 () Bool)

(assert (=> b!4063737 m!4670643))

(assert (=> b!4063739 m!4670489))

(assert (=> b!4063739 m!4670139))

(assert (=> b!4063738 m!4670527))

(declare-fun m!4670645 () Bool)

(assert (=> b!4063738 m!4670645))

(assert (=> b!4063738 m!4670527))

(assert (=> b!4063738 m!4670645))

(declare-fun m!4670647 () Bool)

(assert (=> b!4063738 m!4670647))

(assert (=> b!4063427 d!1208063))

(declare-fun d!1208065 () Bool)

(assert (=> d!1208065 (isPrefix!4055 lt!1452347 (++!11370 prefix!494 newSuffix!27))))

(declare-fun lt!1452504 () Unit!62862)

(declare-fun choose!24730 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> d!1208065 (= lt!1452504 (choose!24730 lt!1452347 prefix!494 newSuffix!27))))

(assert (=> d!1208065 (isPrefix!4055 lt!1452347 prefix!494)))

(assert (=> d!1208065 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!848 lt!1452347 prefix!494 newSuffix!27) lt!1452504)))

(declare-fun bs!592260 () Bool)

(assert (= bs!592260 d!1208065))

(assert (=> bs!592260 m!4670289))

(assert (=> bs!592260 m!4670289))

(declare-fun m!4670671 () Bool)

(assert (=> bs!592260 m!4670671))

(declare-fun m!4670673 () Bool)

(assert (=> bs!592260 m!4670673))

(assert (=> bs!592260 m!4670119))

(assert (=> b!4063427 d!1208065))

(declare-fun d!1208067 () Bool)

(assert (=> d!1208067 (isPrefix!4055 lt!1452347 (++!11370 prefix!494 suffix!1299))))

(declare-fun lt!1452505 () Unit!62862)

(assert (=> d!1208067 (= lt!1452505 (choose!24730 lt!1452347 prefix!494 suffix!1299))))

(assert (=> d!1208067 (isPrefix!4055 lt!1452347 prefix!494)))

(assert (=> d!1208067 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!848 lt!1452347 prefix!494 suffix!1299) lt!1452505)))

(declare-fun bs!592261 () Bool)

(assert (= bs!592261 d!1208067))

(assert (=> bs!592261 m!4670303))

(assert (=> bs!592261 m!4670303))

(declare-fun m!4670683 () Bool)

(assert (=> bs!592261 m!4670683))

(declare-fun m!4670687 () Bool)

(assert (=> bs!592261 m!4670687))

(assert (=> bs!592261 m!4670119))

(assert (=> b!4063427 d!1208067))

(declare-fun b!4063908 () Bool)

(declare-fun res!1658141 () Bool)

(declare-fun e!2521838 () Bool)

(assert (=> b!4063908 (=> (not res!1658141) (not e!2521838))))

(declare-fun lt!1452577 () Option!9382)

(declare-fun get!14236 (Option!9382) tuple2!42462)

(assert (=> b!4063908 (= res!1658141 (< (size!32452 (_2!24365 (get!14236 lt!1452577))) (size!32452 lt!1452378)))))

(declare-fun d!1208069 () Bool)

(declare-fun e!2521837 () Bool)

(assert (=> d!1208069 e!2521837))

(declare-fun res!1658144 () Bool)

(assert (=> d!1208069 (=> res!1658144 e!2521837)))

(declare-fun isEmpty!25905 (Option!9382) Bool)

(assert (=> d!1208069 (= res!1658144 (isEmpty!25905 lt!1452577))))

(declare-fun e!2521839 () Option!9382)

(assert (=> d!1208069 (= lt!1452577 e!2521839)))

(declare-fun c!701816 () Bool)

(assert (=> d!1208069 (= c!701816 (and ((_ is Cons!43405) rules!2999) ((_ is Nil!43405) (t!336736 rules!2999))))))

(declare-fun lt!1452575 () Unit!62862)

(declare-fun lt!1452574 () Unit!62862)

(assert (=> d!1208069 (= lt!1452575 lt!1452574)))

(assert (=> d!1208069 (isPrefix!4055 lt!1452378 lt!1452378)))

(assert (=> d!1208069 (= lt!1452574 (lemmaIsPrefixRefl!2622 lt!1452378 lt!1452378))))

(declare-fun rulesValidInductive!2549 (LexerInterface!6557 List!43529) Bool)

(assert (=> d!1208069 (rulesValidInductive!2549 thiss!21717 rules!2999)))

(assert (=> d!1208069 (= (maxPrefix!3855 thiss!21717 rules!2999 lt!1452378) lt!1452577)))

(declare-fun bm!288264 () Bool)

(declare-fun call!288269 () Option!9382)

(assert (=> bm!288264 (= call!288269 (maxPrefixOneRule!2867 thiss!21717 (h!48825 rules!2999) lt!1452378))))

(declare-fun b!4063909 () Bool)

(assert (=> b!4063909 (= e!2521839 call!288269)))

(declare-fun b!4063910 () Bool)

(declare-fun lt!1452578 () Option!9382)

(declare-fun lt!1452576 () Option!9382)

(assert (=> b!4063910 (= e!2521839 (ite (and ((_ is None!9381) lt!1452578) ((_ is None!9381) lt!1452576)) None!9381 (ite ((_ is None!9381) lt!1452576) lt!1452578 (ite ((_ is None!9381) lt!1452578) lt!1452576 (ite (>= (size!32451 (_1!24365 (v!39805 lt!1452578))) (size!32451 (_1!24365 (v!39805 lt!1452576)))) lt!1452578 lt!1452576)))))))

(assert (=> b!4063910 (= lt!1452578 call!288269)))

(assert (=> b!4063910 (= lt!1452576 (maxPrefix!3855 thiss!21717 (t!336736 rules!2999) lt!1452378))))

(declare-fun b!4063911 () Bool)

(declare-fun res!1658140 () Bool)

(assert (=> b!4063911 (=> (not res!1658140) (not e!2521838))))

(assert (=> b!4063911 (= res!1658140 (= (value!219222 (_1!24365 (get!14236 lt!1452577))) (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (get!14236 lt!1452577)))) (seqFromList!5185 (originalCharacters!7568 (_1!24365 (get!14236 lt!1452577)))))))))

(declare-fun b!4063912 () Bool)

(declare-fun res!1658142 () Bool)

(assert (=> b!4063912 (=> (not res!1658142) (not e!2521838))))

(assert (=> b!4063912 (= res!1658142 (= (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452577)))) (originalCharacters!7568 (_1!24365 (get!14236 lt!1452577)))))))

(declare-fun b!4063913 () Bool)

(declare-fun res!1658143 () Bool)

(assert (=> b!4063913 (=> (not res!1658143) (not e!2521838))))

(assert (=> b!4063913 (= res!1658143 (= (++!11370 (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452577)))) (_2!24365 (get!14236 lt!1452577))) lt!1452378))))

(declare-fun b!4063914 () Bool)

(assert (=> b!4063914 (= e!2521838 (contains!8636 rules!2999 (rule!10064 (_1!24365 (get!14236 lt!1452577)))))))

(declare-fun b!4063915 () Bool)

(assert (=> b!4063915 (= e!2521837 e!2521838)))

(declare-fun res!1658145 () Bool)

(assert (=> b!4063915 (=> (not res!1658145) (not e!2521838))))

(declare-fun isDefined!7128 (Option!9382) Bool)

(assert (=> b!4063915 (= res!1658145 (isDefined!7128 lt!1452577))))

(declare-fun b!4063916 () Bool)

(declare-fun res!1658139 () Bool)

(assert (=> b!4063916 (=> (not res!1658139) (not e!2521838))))

(assert (=> b!4063916 (= res!1658139 (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (get!14236 lt!1452577)))) (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452577))))))))

(assert (= (and d!1208069 c!701816) b!4063909))

(assert (= (and d!1208069 (not c!701816)) b!4063910))

(assert (= (or b!4063909 b!4063910) bm!288264))

(assert (= (and d!1208069 (not res!1658144)) b!4063915))

(assert (= (and b!4063915 res!1658145) b!4063912))

(assert (= (and b!4063912 res!1658142) b!4063908))

(assert (= (and b!4063908 res!1658141) b!4063913))

(assert (= (and b!4063913 res!1658143) b!4063911))

(assert (= (and b!4063911 res!1658140) b!4063916))

(assert (= (and b!4063916 res!1658139) b!4063914))

(declare-fun m!4670955 () Bool)

(assert (=> b!4063910 m!4670955))

(declare-fun m!4670957 () Bool)

(assert (=> b!4063911 m!4670957))

(declare-fun m!4670959 () Bool)

(assert (=> b!4063911 m!4670959))

(assert (=> b!4063911 m!4670959))

(declare-fun m!4670961 () Bool)

(assert (=> b!4063911 m!4670961))

(assert (=> b!4063914 m!4670957))

(declare-fun m!4670963 () Bool)

(assert (=> b!4063914 m!4670963))

(declare-fun m!4670965 () Bool)

(assert (=> bm!288264 m!4670965))

(assert (=> b!4063913 m!4670957))

(declare-fun m!4670967 () Bool)

(assert (=> b!4063913 m!4670967))

(assert (=> b!4063913 m!4670967))

(declare-fun m!4670969 () Bool)

(assert (=> b!4063913 m!4670969))

(assert (=> b!4063913 m!4670969))

(declare-fun m!4670971 () Bool)

(assert (=> b!4063913 m!4670971))

(assert (=> b!4063908 m!4670957))

(declare-fun m!4670973 () Bool)

(assert (=> b!4063908 m!4670973))

(assert (=> b!4063908 m!4670489))

(assert (=> b!4063916 m!4670957))

(assert (=> b!4063916 m!4670967))

(assert (=> b!4063916 m!4670967))

(assert (=> b!4063916 m!4670969))

(assert (=> b!4063916 m!4670969))

(declare-fun m!4670975 () Bool)

(assert (=> b!4063916 m!4670975))

(declare-fun m!4670977 () Bool)

(assert (=> d!1208069 m!4670977))

(declare-fun m!4670979 () Bool)

(assert (=> d!1208069 m!4670979))

(declare-fun m!4670981 () Bool)

(assert (=> d!1208069 m!4670981))

(declare-fun m!4670983 () Bool)

(assert (=> d!1208069 m!4670983))

(assert (=> b!4063912 m!4670957))

(assert (=> b!4063912 m!4670967))

(assert (=> b!4063912 m!4670967))

(assert (=> b!4063912 m!4670969))

(declare-fun m!4670985 () Bool)

(assert (=> b!4063915 m!4670985))

(assert (=> b!4063406 d!1208069))

(declare-fun d!1208167 () Bool)

(assert (=> d!1208167 (= suffixResult!105 lt!1452369)))

(declare-fun lt!1452585 () Unit!62862)

(declare-fun choose!24732 (List!43527 List!43527 List!43527 List!43527 List!43527) Unit!62862)

(assert (=> d!1208167 (= lt!1452585 (choose!24732 lt!1452347 suffixResult!105 lt!1452347 lt!1452369 lt!1452356))))

(assert (=> d!1208167 (isPrefix!4055 lt!1452347 lt!1452356)))

(assert (=> d!1208167 (= (lemmaSamePrefixThenSameSuffix!2216 lt!1452347 suffixResult!105 lt!1452347 lt!1452369 lt!1452356) lt!1452585)))

(declare-fun bs!592277 () Bool)

(assert (= bs!592277 d!1208167))

(declare-fun m!4671007 () Bool)

(assert (=> bs!592277 m!4671007))

(assert (=> bs!592277 m!4670173))

(assert (=> b!4063406 d!1208167))

(declare-fun b!4063934 () Bool)

(declare-fun res!1658158 () Bool)

(declare-fun e!2521849 () Bool)

(assert (=> b!4063934 (=> (not res!1658158) (not e!2521849))))

(assert (=> b!4063934 (= res!1658158 (= (head!8577 lt!1452347) (head!8577 lt!1452363)))))

(declare-fun b!4063936 () Bool)

(declare-fun e!2521850 () Bool)

(assert (=> b!4063936 (= e!2521850 (>= (size!32452 lt!1452363) (size!32452 lt!1452347)))))

(declare-fun d!1208177 () Bool)

(assert (=> d!1208177 e!2521850))

(declare-fun res!1658161 () Bool)

(assert (=> d!1208177 (=> res!1658161 e!2521850)))

(declare-fun lt!1452586 () Bool)

(assert (=> d!1208177 (= res!1658161 (not lt!1452586))))

(declare-fun e!2521851 () Bool)

(assert (=> d!1208177 (= lt!1452586 e!2521851)))

(declare-fun res!1658160 () Bool)

(assert (=> d!1208177 (=> res!1658160 e!2521851)))

(assert (=> d!1208177 (= res!1658160 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208177 (= (isPrefix!4055 lt!1452347 lt!1452363) lt!1452586)))

(declare-fun b!4063935 () Bool)

(assert (=> b!4063935 (= e!2521849 (isPrefix!4055 (tail!6309 lt!1452347) (tail!6309 lt!1452363)))))

(declare-fun b!4063933 () Bool)

(assert (=> b!4063933 (= e!2521851 e!2521849)))

(declare-fun res!1658159 () Bool)

(assert (=> b!4063933 (=> (not res!1658159) (not e!2521849))))

(assert (=> b!4063933 (= res!1658159 (not ((_ is Nil!43403) lt!1452363)))))

(assert (= (and d!1208177 (not res!1658160)) b!4063933))

(assert (= (and b!4063933 res!1658159) b!4063934))

(assert (= (and b!4063934 res!1658158) b!4063935))

(assert (= (and d!1208177 (not res!1658161)) b!4063936))

(assert (=> b!4063934 m!4670523))

(declare-fun m!4671009 () Bool)

(assert (=> b!4063934 m!4671009))

(declare-fun m!4671011 () Bool)

(assert (=> b!4063936 m!4671011))

(assert (=> b!4063936 m!4670139))

(assert (=> b!4063935 m!4670527))

(declare-fun m!4671013 () Bool)

(assert (=> b!4063935 m!4671013))

(assert (=> b!4063935 m!4670527))

(assert (=> b!4063935 m!4671013))

(declare-fun m!4671015 () Bool)

(assert (=> b!4063935 m!4671015))

(assert (=> b!4063406 d!1208177))

(declare-fun d!1208179 () Bool)

(assert (=> d!1208179 (isPrefix!4055 lt!1452347 (++!11370 lt!1452347 lt!1452369))))

(declare-fun lt!1452592 () Unit!62862)

(declare-fun choose!24733 (List!43527 List!43527) Unit!62862)

(assert (=> d!1208179 (= lt!1452592 (choose!24733 lt!1452347 lt!1452369))))

(assert (=> d!1208179 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452347 lt!1452369) lt!1452592)))

(declare-fun bs!592279 () Bool)

(assert (= bs!592279 d!1208179))

(assert (=> bs!592279 m!4670273))

(assert (=> bs!592279 m!4670273))

(declare-fun m!4671019 () Bool)

(assert (=> bs!592279 m!4671019))

(declare-fun m!4671021 () Bool)

(assert (=> bs!592279 m!4671021))

(assert (=> b!4063406 d!1208179))

(declare-fun b!4064009 () Bool)

(declare-fun res!1658185 () Bool)

(declare-fun e!2521895 () Bool)

(assert (=> b!4064009 (=> (not res!1658185) (not e!2521895))))

(declare-fun lt!1452610 () Option!9382)

(assert (=> b!4064009 (= res!1658185 (< (size!32452 (_2!24365 (get!14236 lt!1452610))) (size!32452 lt!1452356)))))

(declare-fun d!1208185 () Bool)

(declare-fun e!2521893 () Bool)

(assert (=> d!1208185 e!2521893))

(declare-fun res!1658190 () Bool)

(assert (=> d!1208185 (=> res!1658190 e!2521893)))

(assert (=> d!1208185 (= res!1658190 (isEmpty!25905 lt!1452610))))

(declare-fun e!2521894 () Option!9382)

(assert (=> d!1208185 (= lt!1452610 e!2521894)))

(declare-fun c!701824 () Bool)

(declare-datatypes ((tuple2!42466 0))(
  ( (tuple2!42467 (_1!24367 List!43527) (_2!24367 List!43527)) )
))
(declare-fun lt!1452608 () tuple2!42466)

(assert (=> d!1208185 (= c!701824 (isEmpty!25903 (_1!24367 lt!1452608)))))

(declare-fun findLongestMatch!1324 (Regex!11873 List!43527) tuple2!42466)

(assert (=> d!1208185 (= lt!1452608 (findLongestMatch!1324 (regex!6968 (rule!10064 token!484)) lt!1452356))))

(assert (=> d!1208185 (ruleValid!2898 thiss!21717 (rule!10064 token!484))))

(assert (=> d!1208185 (= (maxPrefixOneRule!2867 thiss!21717 (rule!10064 token!484) lt!1452356) lt!1452610)))

(declare-fun b!4064010 () Bool)

(declare-fun res!1658189 () Bool)

(assert (=> b!4064010 (=> (not res!1658189) (not e!2521895))))

(assert (=> b!4064010 (= res!1658189 (= (++!11370 (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452610)))) (_2!24365 (get!14236 lt!1452610))) lt!1452356))))

(declare-fun b!4064011 () Bool)

(assert (=> b!4064011 (= e!2521895 (= (size!32451 (_1!24365 (get!14236 lt!1452610))) (size!32452 (originalCharacters!7568 (_1!24365 (get!14236 lt!1452610))))))))

(declare-fun b!4064012 () Bool)

(declare-fun res!1658191 () Bool)

(assert (=> b!4064012 (=> (not res!1658191) (not e!2521895))))

(assert (=> b!4064012 (= res!1658191 (= (rule!10064 (_1!24365 (get!14236 lt!1452610))) (rule!10064 token!484)))))

(declare-fun b!4064013 () Bool)

(assert (=> b!4064013 (= e!2521894 None!9381)))

(declare-fun b!4064014 () Bool)

(assert (=> b!4064014 (= e!2521893 e!2521895)))

(declare-fun res!1658186 () Bool)

(assert (=> b!4064014 (=> (not res!1658186) (not e!2521895))))

(assert (=> b!4064014 (= res!1658186 (matchR!5826 (regex!6968 (rule!10064 token!484)) (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452610))))))))

(declare-fun b!4064015 () Bool)

(declare-fun size!32454 (BalanceConc!25952) Int)

(assert (=> b!4064015 (= e!2521894 (Some!9381 (tuple2!42463 (Token!13075 (apply!10157 (transformation!6968 (rule!10064 token!484)) (seqFromList!5185 (_1!24367 lt!1452608))) (rule!10064 token!484) (size!32454 (seqFromList!5185 (_1!24367 lt!1452608))) (_1!24367 lt!1452608)) (_2!24367 lt!1452608))))))

(declare-fun lt!1452611 () Unit!62862)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1384 (Regex!11873 List!43527) Unit!62862)

(assert (=> b!4064015 (= lt!1452611 (longestMatchIsAcceptedByMatchOrIsEmpty!1384 (regex!6968 (rule!10064 token!484)) lt!1452356))))

(declare-fun res!1658187 () Bool)

(declare-fun findLongestMatchInner!1411 (Regex!11873 List!43527 Int List!43527 List!43527 Int) tuple2!42466)

(assert (=> b!4064015 (= res!1658187 (isEmpty!25903 (_1!24367 (findLongestMatchInner!1411 (regex!6968 (rule!10064 token!484)) Nil!43403 (size!32452 Nil!43403) lt!1452356 lt!1452356 (size!32452 lt!1452356)))))))

(declare-fun e!2521896 () Bool)

(assert (=> b!4064015 (=> res!1658187 e!2521896)))

(assert (=> b!4064015 e!2521896))

(declare-fun lt!1452609 () Unit!62862)

(assert (=> b!4064015 (= lt!1452609 lt!1452611)))

(declare-fun lt!1452612 () Unit!62862)

(declare-fun lemmaSemiInverse!1939 (TokenValueInjection!13824 BalanceConc!25952) Unit!62862)

(assert (=> b!4064015 (= lt!1452612 (lemmaSemiInverse!1939 (transformation!6968 (rule!10064 token!484)) (seqFromList!5185 (_1!24367 lt!1452608))))))

(declare-fun b!4064016 () Bool)

(assert (=> b!4064016 (= e!2521896 (matchR!5826 (regex!6968 (rule!10064 token!484)) (_1!24367 (findLongestMatchInner!1411 (regex!6968 (rule!10064 token!484)) Nil!43403 (size!32452 Nil!43403) lt!1452356 lt!1452356 (size!32452 lt!1452356)))))))

(declare-fun b!4064017 () Bool)

(declare-fun res!1658188 () Bool)

(assert (=> b!4064017 (=> (not res!1658188) (not e!2521895))))

(assert (=> b!4064017 (= res!1658188 (= (value!219222 (_1!24365 (get!14236 lt!1452610))) (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (get!14236 lt!1452610)))) (seqFromList!5185 (originalCharacters!7568 (_1!24365 (get!14236 lt!1452610)))))))))

(assert (= (and d!1208185 c!701824) b!4064013))

(assert (= (and d!1208185 (not c!701824)) b!4064015))

(assert (= (and b!4064015 (not res!1658187)) b!4064016))

(assert (= (and d!1208185 (not res!1658190)) b!4064014))

(assert (= (and b!4064014 res!1658186) b!4064010))

(assert (= (and b!4064010 res!1658189) b!4064009))

(assert (= (and b!4064009 res!1658185) b!4064012))

(assert (= (and b!4064012 res!1658191) b!4064017))

(assert (= (and b!4064017 res!1658188) b!4064011))

(declare-fun m!4671065 () Bool)

(assert (=> b!4064012 m!4671065))

(assert (=> b!4064010 m!4671065))

(declare-fun m!4671067 () Bool)

(assert (=> b!4064010 m!4671067))

(assert (=> b!4064010 m!4671067))

(declare-fun m!4671069 () Bool)

(assert (=> b!4064010 m!4671069))

(assert (=> b!4064010 m!4671069))

(declare-fun m!4671071 () Bool)

(assert (=> b!4064010 m!4671071))

(assert (=> b!4064017 m!4671065))

(declare-fun m!4671073 () Bool)

(assert (=> b!4064017 m!4671073))

(assert (=> b!4064017 m!4671073))

(declare-fun m!4671075 () Bool)

(assert (=> b!4064017 m!4671075))

(assert (=> b!4064014 m!4671065))

(assert (=> b!4064014 m!4671067))

(assert (=> b!4064014 m!4671067))

(assert (=> b!4064014 m!4671069))

(assert (=> b!4064014 m!4671069))

(declare-fun m!4671077 () Bool)

(assert (=> b!4064014 m!4671077))

(declare-fun m!4671079 () Bool)

(assert (=> d!1208185 m!4671079))

(declare-fun m!4671081 () Bool)

(assert (=> d!1208185 m!4671081))

(declare-fun m!4671083 () Bool)

(assert (=> d!1208185 m!4671083))

(assert (=> d!1208185 m!4670269))

(assert (=> b!4064009 m!4671065))

(declare-fun m!4671085 () Bool)

(assert (=> b!4064009 m!4671085))

(declare-fun m!4671087 () Bool)

(assert (=> b!4064009 m!4671087))

(declare-fun m!4671089 () Bool)

(assert (=> b!4064016 m!4671089))

(assert (=> b!4064016 m!4671087))

(assert (=> b!4064016 m!4671089))

(assert (=> b!4064016 m!4671087))

(declare-fun m!4671091 () Bool)

(assert (=> b!4064016 m!4671091))

(declare-fun m!4671093 () Bool)

(assert (=> b!4064016 m!4671093))

(declare-fun m!4671095 () Bool)

(assert (=> b!4064015 m!4671095))

(declare-fun m!4671097 () Bool)

(assert (=> b!4064015 m!4671097))

(assert (=> b!4064015 m!4671095))

(declare-fun m!4671099 () Bool)

(assert (=> b!4064015 m!4671099))

(declare-fun m!4671101 () Bool)

(assert (=> b!4064015 m!4671101))

(assert (=> b!4064015 m!4671095))

(assert (=> b!4064015 m!4671087))

(assert (=> b!4064015 m!4671089))

(assert (=> b!4064015 m!4671087))

(assert (=> b!4064015 m!4671091))

(declare-fun m!4671103 () Bool)

(assert (=> b!4064015 m!4671103))

(assert (=> b!4064015 m!4671095))

(declare-fun m!4671105 () Bool)

(assert (=> b!4064015 m!4671105))

(assert (=> b!4064015 m!4671089))

(assert (=> b!4064011 m!4671065))

(declare-fun m!4671107 () Bool)

(assert (=> b!4064011 m!4671107))

(assert (=> b!4063425 d!1208185))

(declare-fun d!1208197 () Bool)

(assert (=> d!1208197 (= lt!1452335 suffixResult!105)))

(declare-fun lt!1452613 () Unit!62862)

(assert (=> d!1208197 (= lt!1452613 (choose!24732 lt!1452347 lt!1452335 lt!1452347 suffixResult!105 lt!1452356))))

(assert (=> d!1208197 (isPrefix!4055 lt!1452347 lt!1452356)))

(assert (=> d!1208197 (= (lemmaSamePrefixThenSameSuffix!2216 lt!1452347 lt!1452335 lt!1452347 suffixResult!105 lt!1452356) lt!1452613)))

(declare-fun bs!592282 () Bool)

(assert (= bs!592282 d!1208197))

(declare-fun m!4671109 () Bool)

(assert (=> bs!592282 m!4671109))

(assert (=> bs!592282 m!4670173))

(assert (=> b!4063425 d!1208197))

(declare-fun b!4064019 () Bool)

(declare-fun res!1658192 () Bool)

(declare-fun e!2521897 () Bool)

(assert (=> b!4064019 (=> (not res!1658192) (not e!2521897))))

(assert (=> b!4064019 (= res!1658192 (= (head!8577 lt!1452347) (head!8577 lt!1452323)))))

(declare-fun b!4064021 () Bool)

(declare-fun e!2521898 () Bool)

(assert (=> b!4064021 (= e!2521898 (>= (size!32452 lt!1452323) (size!32452 lt!1452347)))))

(declare-fun d!1208199 () Bool)

(assert (=> d!1208199 e!2521898))

(declare-fun res!1658195 () Bool)

(assert (=> d!1208199 (=> res!1658195 e!2521898)))

(declare-fun lt!1452614 () Bool)

(assert (=> d!1208199 (= res!1658195 (not lt!1452614))))

(declare-fun e!2521899 () Bool)

(assert (=> d!1208199 (= lt!1452614 e!2521899)))

(declare-fun res!1658194 () Bool)

(assert (=> d!1208199 (=> res!1658194 e!2521899)))

(assert (=> d!1208199 (= res!1658194 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208199 (= (isPrefix!4055 lt!1452347 lt!1452323) lt!1452614)))

(declare-fun b!4064020 () Bool)

(assert (=> b!4064020 (= e!2521897 (isPrefix!4055 (tail!6309 lt!1452347) (tail!6309 lt!1452323)))))

(declare-fun b!4064018 () Bool)

(assert (=> b!4064018 (= e!2521899 e!2521897)))

(declare-fun res!1658193 () Bool)

(assert (=> b!4064018 (=> (not res!1658193) (not e!2521897))))

(assert (=> b!4064018 (= res!1658193 (not ((_ is Nil!43403) lt!1452323)))))

(assert (= (and d!1208199 (not res!1658194)) b!4064018))

(assert (= (and b!4064018 res!1658193) b!4064019))

(assert (= (and b!4064019 res!1658192) b!4064020))

(assert (= (and d!1208199 (not res!1658195)) b!4064021))

(assert (=> b!4064019 m!4670523))

(declare-fun m!4671111 () Bool)

(assert (=> b!4064019 m!4671111))

(declare-fun m!4671113 () Bool)

(assert (=> b!4064021 m!4671113))

(assert (=> b!4064021 m!4670139))

(assert (=> b!4064020 m!4670527))

(declare-fun m!4671115 () Bool)

(assert (=> b!4064020 m!4671115))

(assert (=> b!4064020 m!4670527))

(assert (=> b!4064020 m!4671115))

(declare-fun m!4671117 () Bool)

(assert (=> b!4064020 m!4671117))

(assert (=> b!4063425 d!1208199))

(declare-fun d!1208201 () Bool)

(declare-fun dynLambda!18445 (Int BalanceConc!25952) TokenValue!7198)

(assert (=> d!1208201 (= (apply!10157 (transformation!6968 (rule!10064 token!484)) (seqFromList!5185 lt!1452347)) (dynLambda!18445 (toValue!9528 (transformation!6968 (rule!10064 token!484))) (seqFromList!5185 lt!1452347)))))

(declare-fun b_lambda!118759 () Bool)

(assert (=> (not b_lambda!118759) (not d!1208201)))

(declare-fun t!336762 () Bool)

(declare-fun tb!244457 () Bool)

(assert (=> (and b!4063392 (= (toValue!9528 (transformation!6968 (h!48825 rules!2999))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))) t!336762) tb!244457))

(declare-fun result!296224 () Bool)

(assert (=> tb!244457 (= result!296224 (inv!21 (dynLambda!18445 (toValue!9528 (transformation!6968 (rule!10064 token!484))) (seqFromList!5185 lt!1452347))))))

(declare-fun m!4671119 () Bool)

(assert (=> tb!244457 m!4671119))

(assert (=> d!1208201 t!336762))

(declare-fun b_and!312419 () Bool)

(assert (= b_and!312387 (and (=> t!336762 result!296224) b_and!312419)))

(declare-fun t!336764 () Bool)

(declare-fun tb!244459 () Bool)

(assert (=> (and b!4063429 (= (toValue!9528 (transformation!6968 (rule!10064 token!484))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))) t!336764) tb!244459))

(declare-fun result!296228 () Bool)

(assert (= result!296228 result!296224))

(assert (=> d!1208201 t!336764))

(declare-fun b_and!312421 () Bool)

(assert (= b_and!312391 (and (=> t!336764 result!296228) b_and!312421)))

(assert (=> d!1208201 m!4670195))

(declare-fun m!4671121 () Bool)

(assert (=> d!1208201 m!4671121))

(assert (=> b!4063425 d!1208201))

(declare-fun d!1208203 () Bool)

(assert (=> d!1208203 (= (maxPrefixOneRule!2867 thiss!21717 (rule!10064 token!484) lt!1452356) (Some!9381 (tuple2!42463 (Token!13075 (apply!10157 (transformation!6968 (rule!10064 token!484)) (seqFromList!5185 lt!1452347)) (rule!10064 token!484) (size!32452 lt!1452347) lt!1452347) suffixResult!105)))))

(declare-fun lt!1452617 () Unit!62862)

(declare-fun choose!24735 (LexerInterface!6557 List!43529 List!43527 List!43527 List!43527 Rule!13736) Unit!62862)

(assert (=> d!1208203 (= lt!1452617 (choose!24735 thiss!21717 rules!2999 lt!1452347 lt!1452356 suffixResult!105 (rule!10064 token!484)))))

(assert (=> d!1208203 (not (isEmpty!25902 rules!2999))))

(assert (=> d!1208203 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1673 thiss!21717 rules!2999 lt!1452347 lt!1452356 suffixResult!105 (rule!10064 token!484)) lt!1452617)))

(declare-fun bs!592283 () Bool)

(assert (= bs!592283 d!1208203))

(declare-fun m!4671123 () Bool)

(assert (=> bs!592283 m!4671123))

(assert (=> bs!592283 m!4670195))

(assert (=> bs!592283 m!4670197))

(assert (=> bs!592283 m!4670293))

(assert (=> bs!592283 m!4670139))

(assert (=> bs!592283 m!4670195))

(assert (=> bs!592283 m!4670207))

(assert (=> b!4063425 d!1208203))

(declare-fun d!1208205 () Bool)

(assert (=> d!1208205 (isPrefix!4055 lt!1452347 (++!11370 lt!1452347 lt!1452335))))

(declare-fun lt!1452618 () Unit!62862)

(assert (=> d!1208205 (= lt!1452618 (choose!24733 lt!1452347 lt!1452335))))

(assert (=> d!1208205 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452347 lt!1452335) lt!1452618)))

(declare-fun bs!592284 () Bool)

(assert (= bs!592284 d!1208205))

(assert (=> bs!592284 m!4670183))

(assert (=> bs!592284 m!4670183))

(declare-fun m!4671125 () Bool)

(assert (=> bs!592284 m!4671125))

(declare-fun m!4671127 () Bool)

(assert (=> bs!592284 m!4671127))

(assert (=> b!4063425 d!1208205))

(declare-fun d!1208207 () Bool)

(declare-fun fromListB!2368 (List!43527) BalanceConc!25952)

(assert (=> d!1208207 (= (seqFromList!5185 lt!1452347) (fromListB!2368 lt!1452347))))

(declare-fun bs!592285 () Bool)

(assert (= bs!592285 d!1208207))

(declare-fun m!4671129 () Bool)

(assert (=> bs!592285 m!4671129))

(assert (=> b!4063425 d!1208207))

(declare-fun b!4064025 () Bool)

(declare-fun res!1658196 () Bool)

(declare-fun e!2521903 () Bool)

(assert (=> b!4064025 (=> (not res!1658196) (not e!2521903))))

(assert (=> b!4064025 (= res!1658196 (= (head!8577 lt!1452347) (head!8577 lt!1452380)))))

(declare-fun b!4064027 () Bool)

(declare-fun e!2521904 () Bool)

(assert (=> b!4064027 (= e!2521904 (>= (size!32452 lt!1452380) (size!32452 lt!1452347)))))

(declare-fun d!1208209 () Bool)

(assert (=> d!1208209 e!2521904))

(declare-fun res!1658199 () Bool)

(assert (=> d!1208209 (=> res!1658199 e!2521904)))

(declare-fun lt!1452619 () Bool)

(assert (=> d!1208209 (= res!1658199 (not lt!1452619))))

(declare-fun e!2521905 () Bool)

(assert (=> d!1208209 (= lt!1452619 e!2521905)))

(declare-fun res!1658198 () Bool)

(assert (=> d!1208209 (=> res!1658198 e!2521905)))

(assert (=> d!1208209 (= res!1658198 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208209 (= (isPrefix!4055 lt!1452347 lt!1452380) lt!1452619)))

(declare-fun b!4064026 () Bool)

(assert (=> b!4064026 (= e!2521903 (isPrefix!4055 (tail!6309 lt!1452347) (tail!6309 lt!1452380)))))

(declare-fun b!4064024 () Bool)

(assert (=> b!4064024 (= e!2521905 e!2521903)))

(declare-fun res!1658197 () Bool)

(assert (=> b!4064024 (=> (not res!1658197) (not e!2521903))))

(assert (=> b!4064024 (= res!1658197 (not ((_ is Nil!43403) lt!1452380)))))

(assert (= (and d!1208209 (not res!1658198)) b!4064024))

(assert (= (and b!4064024 res!1658197) b!4064025))

(assert (= (and b!4064025 res!1658196) b!4064026))

(assert (= (and d!1208209 (not res!1658199)) b!4064027))

(assert (=> b!4064025 m!4670523))

(declare-fun m!4671131 () Bool)

(assert (=> b!4064025 m!4671131))

(declare-fun m!4671133 () Bool)

(assert (=> b!4064027 m!4671133))

(assert (=> b!4064027 m!4670139))

(assert (=> b!4064026 m!4670527))

(declare-fun m!4671135 () Bool)

(assert (=> b!4064026 m!4671135))

(assert (=> b!4064026 m!4670527))

(assert (=> b!4064026 m!4671135))

(declare-fun m!4671137 () Bool)

(assert (=> b!4064026 m!4671137))

(assert (=> b!4063383 d!1208209))

(declare-fun b!4064029 () Bool)

(declare-fun res!1658200 () Bool)

(declare-fun e!2521906 () Bool)

(assert (=> b!4064029 (=> (not res!1658200) (not e!2521906))))

(assert (=> b!4064029 (= res!1658200 (= (head!8577 lt!1452347) (head!8577 lt!1452356)))))

(declare-fun b!4064031 () Bool)

(declare-fun e!2521907 () Bool)

(assert (=> b!4064031 (= e!2521907 (>= (size!32452 lt!1452356) (size!32452 lt!1452347)))))

(declare-fun d!1208211 () Bool)

(assert (=> d!1208211 e!2521907))

(declare-fun res!1658203 () Bool)

(assert (=> d!1208211 (=> res!1658203 e!2521907)))

(declare-fun lt!1452620 () Bool)

(assert (=> d!1208211 (= res!1658203 (not lt!1452620))))

(declare-fun e!2521908 () Bool)

(assert (=> d!1208211 (= lt!1452620 e!2521908)))

(declare-fun res!1658202 () Bool)

(assert (=> d!1208211 (=> res!1658202 e!2521908)))

(assert (=> d!1208211 (= res!1658202 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208211 (= (isPrefix!4055 lt!1452347 lt!1452356) lt!1452620)))

(declare-fun b!4064030 () Bool)

(assert (=> b!4064030 (= e!2521906 (isPrefix!4055 (tail!6309 lt!1452347) (tail!6309 lt!1452356)))))

(declare-fun b!4064028 () Bool)

(assert (=> b!4064028 (= e!2521908 e!2521906)))

(declare-fun res!1658201 () Bool)

(assert (=> b!4064028 (=> (not res!1658201) (not e!2521906))))

(assert (=> b!4064028 (= res!1658201 (not ((_ is Nil!43403) lt!1452356)))))

(assert (= (and d!1208211 (not res!1658202)) b!4064028))

(assert (= (and b!4064028 res!1658201) b!4064029))

(assert (= (and b!4064029 res!1658200) b!4064030))

(assert (= (and d!1208211 (not res!1658203)) b!4064031))

(assert (=> b!4064029 m!4670523))

(declare-fun m!4671139 () Bool)

(assert (=> b!4064029 m!4671139))

(assert (=> b!4064031 m!4671087))

(assert (=> b!4064031 m!4670139))

(assert (=> b!4064030 m!4670527))

(declare-fun m!4671141 () Bool)

(assert (=> b!4064030 m!4671141))

(assert (=> b!4064030 m!4670527))

(assert (=> b!4064030 m!4671141))

(declare-fun m!4671143 () Bool)

(assert (=> b!4064030 m!4671143))

(assert (=> b!4063383 d!1208211))

(declare-fun b!4064033 () Bool)

(declare-fun res!1658204 () Bool)

(declare-fun e!2521909 () Bool)

(assert (=> b!4064033 (=> (not res!1658204) (not e!2521909))))

(assert (=> b!4064033 (= res!1658204 (= (head!8577 prefix!494) (head!8577 lt!1452356)))))

(declare-fun b!4064035 () Bool)

(declare-fun e!2521910 () Bool)

(assert (=> b!4064035 (= e!2521910 (>= (size!32452 lt!1452356) (size!32452 prefix!494)))))

(declare-fun d!1208213 () Bool)

(assert (=> d!1208213 e!2521910))

(declare-fun res!1658207 () Bool)

(assert (=> d!1208213 (=> res!1658207 e!2521910)))

(declare-fun lt!1452621 () Bool)

(assert (=> d!1208213 (= res!1658207 (not lt!1452621))))

(declare-fun e!2521911 () Bool)

(assert (=> d!1208213 (= lt!1452621 e!2521911)))

(declare-fun res!1658206 () Bool)

(assert (=> d!1208213 (=> res!1658206 e!2521911)))

(assert (=> d!1208213 (= res!1658206 ((_ is Nil!43403) prefix!494))))

(assert (=> d!1208213 (= (isPrefix!4055 prefix!494 lt!1452356) lt!1452621)))

(declare-fun b!4064034 () Bool)

(assert (=> b!4064034 (= e!2521909 (isPrefix!4055 (tail!6309 prefix!494) (tail!6309 lt!1452356)))))

(declare-fun b!4064032 () Bool)

(assert (=> b!4064032 (= e!2521911 e!2521909)))

(declare-fun res!1658205 () Bool)

(assert (=> b!4064032 (=> (not res!1658205) (not e!2521909))))

(assert (=> b!4064032 (= res!1658205 (not ((_ is Nil!43403) lt!1452356)))))

(assert (= (and d!1208213 (not res!1658206)) b!4064032))

(assert (= (and b!4064032 res!1658205) b!4064033))

(assert (= (and b!4064033 res!1658204) b!4064034))

(assert (= (and d!1208213 (not res!1658207)) b!4064035))

(assert (=> b!4064033 m!4670525))

(assert (=> b!4064033 m!4671139))

(assert (=> b!4064035 m!4671087))

(assert (=> b!4064035 m!4670141))

(assert (=> b!4064034 m!4670519))

(assert (=> b!4064034 m!4671141))

(assert (=> b!4064034 m!4670519))

(assert (=> b!4064034 m!4671141))

(declare-fun m!4671145 () Bool)

(assert (=> b!4064034 m!4671145))

(assert (=> b!4063383 d!1208213))

(declare-fun d!1208215 () Bool)

(assert (=> d!1208215 (isPrefix!4055 lt!1452347 (++!11370 lt!1452347 suffixResult!105))))

(declare-fun lt!1452622 () Unit!62862)

(assert (=> d!1208215 (= lt!1452622 (choose!24733 lt!1452347 suffixResult!105))))

(assert (=> d!1208215 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452347 suffixResult!105) lt!1452622)))

(declare-fun bs!592286 () Bool)

(assert (= bs!592286 d!1208215))

(assert (=> bs!592286 m!4670265))

(assert (=> bs!592286 m!4670265))

(declare-fun m!4671147 () Bool)

(assert (=> bs!592286 m!4671147))

(declare-fun m!4671149 () Bool)

(assert (=> bs!592286 m!4671149))

(assert (=> b!4063383 d!1208215))

(declare-fun d!1208217 () Bool)

(assert (=> d!1208217 (isPrefix!4055 prefix!494 (++!11370 prefix!494 suffix!1299))))

(declare-fun lt!1452623 () Unit!62862)

(assert (=> d!1208217 (= lt!1452623 (choose!24733 prefix!494 suffix!1299))))

(assert (=> d!1208217 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 prefix!494 suffix!1299) lt!1452623)))

(declare-fun bs!592287 () Bool)

(assert (= bs!592287 d!1208217))

(assert (=> bs!592287 m!4670303))

(assert (=> bs!592287 m!4670303))

(declare-fun m!4671151 () Bool)

(assert (=> bs!592287 m!4671151))

(declare-fun m!4671153 () Bool)

(assert (=> bs!592287 m!4671153))

(assert (=> b!4063383 d!1208217))

(declare-fun b!4064036 () Bool)

(declare-fun e!2521912 () Bool)

(declare-fun e!2521914 () Bool)

(assert (=> b!4064036 (= e!2521912 e!2521914)))

(declare-fun res!1658209 () Bool)

(assert (=> b!4064036 (=> (not res!1658209) (not e!2521914))))

(declare-fun lt!1452624 () Bool)

(assert (=> b!4064036 (= res!1658209 (not lt!1452624))))

(declare-fun bm!288265 () Bool)

(declare-fun call!288270 () Bool)

(assert (=> bm!288265 (= call!288270 (isEmpty!25903 lt!1452329))))

(declare-fun b!4064037 () Bool)

(declare-fun e!2521915 () Bool)

(assert (=> b!4064037 (= e!2521915 (not (= (head!8577 lt!1452329) (c!701729 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))))

(declare-fun b!4064038 () Bool)

(declare-fun e!2521918 () Bool)

(declare-fun e!2521913 () Bool)

(assert (=> b!4064038 (= e!2521918 e!2521913)))

(declare-fun c!701827 () Bool)

(assert (=> b!4064038 (= c!701827 ((_ is EmptyLang!11873) (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4064039 () Bool)

(assert (=> b!4064039 (= e!2521918 (= lt!1452624 call!288270))))

(declare-fun b!4064040 () Bool)

(declare-fun res!1658213 () Bool)

(assert (=> b!4064040 (=> res!1658213 e!2521915)))

(assert (=> b!4064040 (= res!1658213 (not (isEmpty!25903 (tail!6309 lt!1452329))))))

(declare-fun b!4064041 () Bool)

(assert (=> b!4064041 (= e!2521913 (not lt!1452624))))

(declare-fun b!4064042 () Bool)

(declare-fun res!1658212 () Bool)

(declare-fun e!2521917 () Bool)

(assert (=> b!4064042 (=> (not res!1658212) (not e!2521917))))

(assert (=> b!4064042 (= res!1658212 (isEmpty!25903 (tail!6309 lt!1452329)))))

(declare-fun b!4064043 () Bool)

(declare-fun e!2521916 () Bool)

(assert (=> b!4064043 (= e!2521916 (matchR!5826 (derivativeStep!3579 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (head!8577 lt!1452329)) (tail!6309 lt!1452329)))))

(declare-fun b!4064045 () Bool)

(assert (=> b!4064045 (= e!2521914 e!2521915)))

(declare-fun res!1658208 () Bool)

(assert (=> b!4064045 (=> res!1658208 e!2521915)))

(assert (=> b!4064045 (= res!1658208 call!288270)))

(declare-fun b!4064046 () Bool)

(declare-fun res!1658215 () Bool)

(assert (=> b!4064046 (=> res!1658215 e!2521912)))

(assert (=> b!4064046 (= res!1658215 (not ((_ is ElementMatch!11873) (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(assert (=> b!4064046 (= e!2521913 e!2521912)))

(declare-fun b!4064047 () Bool)

(assert (=> b!4064047 (= e!2521916 (nullable!4174 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4064048 () Bool)

(declare-fun res!1658211 () Bool)

(assert (=> b!4064048 (=> res!1658211 e!2521912)))

(assert (=> b!4064048 (= res!1658211 e!2521917)))

(declare-fun res!1658210 () Bool)

(assert (=> b!4064048 (=> (not res!1658210) (not e!2521917))))

(assert (=> b!4064048 (= res!1658210 lt!1452624)))

(declare-fun b!4064049 () Bool)

(assert (=> b!4064049 (= e!2521917 (= (head!8577 lt!1452329) (c!701729 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(declare-fun d!1208219 () Bool)

(assert (=> d!1208219 e!2521918))

(declare-fun c!701826 () Bool)

(assert (=> d!1208219 (= c!701826 ((_ is EmptyExpr!11873) (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(assert (=> d!1208219 (= lt!1452624 e!2521916)))

(declare-fun c!701825 () Bool)

(assert (=> d!1208219 (= c!701825 (isEmpty!25903 lt!1452329))))

(assert (=> d!1208219 (validRegex!5374 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> d!1208219 (= (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452329) lt!1452624)))

(declare-fun b!4064044 () Bool)

(declare-fun res!1658214 () Bool)

(assert (=> b!4064044 (=> (not res!1658214) (not e!2521917))))

(assert (=> b!4064044 (= res!1658214 (not call!288270))))

(assert (= (and d!1208219 c!701825) b!4064047))

(assert (= (and d!1208219 (not c!701825)) b!4064043))

(assert (= (and d!1208219 c!701826) b!4064039))

(assert (= (and d!1208219 (not c!701826)) b!4064038))

(assert (= (and b!4064038 c!701827) b!4064041))

(assert (= (and b!4064038 (not c!701827)) b!4064046))

(assert (= (and b!4064046 (not res!1658215)) b!4064048))

(assert (= (and b!4064048 res!1658210) b!4064044))

(assert (= (and b!4064044 res!1658214) b!4064042))

(assert (= (and b!4064042 res!1658212) b!4064049))

(assert (= (and b!4064048 (not res!1658211)) b!4064036))

(assert (= (and b!4064036 res!1658209) b!4064045))

(assert (= (and b!4064045 (not res!1658208)) b!4064040))

(assert (= (and b!4064040 (not res!1658213)) b!4064037))

(assert (= (or b!4064039 b!4064044 b!4064045) bm!288265))

(declare-fun m!4671155 () Bool)

(assert (=> b!4064043 m!4671155))

(assert (=> b!4064043 m!4671155))

(declare-fun m!4671157 () Bool)

(assert (=> b!4064043 m!4671157))

(declare-fun m!4671159 () Bool)

(assert (=> b!4064043 m!4671159))

(assert (=> b!4064043 m!4671157))

(assert (=> b!4064043 m!4671159))

(declare-fun m!4671161 () Bool)

(assert (=> b!4064043 m!4671161))

(assert (=> b!4064049 m!4671155))

(assert (=> d!1208219 m!4670257))

(declare-fun m!4671163 () Bool)

(assert (=> d!1208219 m!4671163))

(assert (=> b!4064040 m!4671159))

(assert (=> b!4064040 m!4671159))

(declare-fun m!4671165 () Bool)

(assert (=> b!4064040 m!4671165))

(declare-fun m!4671167 () Bool)

(assert (=> b!4064047 m!4671167))

(assert (=> bm!288265 m!4670257))

(assert (=> b!4064042 m!4671159))

(assert (=> b!4064042 m!4671159))

(assert (=> b!4064042 m!4671165))

(assert (=> b!4064037 m!4671155))

(assert (=> b!4063408 d!1208219))

(declare-fun d!1208221 () Bool)

(declare-fun res!1658218 () Bool)

(declare-fun e!2521921 () Bool)

(assert (=> d!1208221 (=> (not res!1658218) (not e!2521921))))

(declare-fun rulesValid!2715 (LexerInterface!6557 List!43529) Bool)

(assert (=> d!1208221 (= res!1658218 (rulesValid!2715 thiss!21717 rules!2999))))

(assert (=> d!1208221 (= (rulesInvariant!5900 thiss!21717 rules!2999) e!2521921)))

(declare-fun b!4064052 () Bool)

(declare-datatypes ((List!43530 0))(
  ( (Nil!43406) (Cons!43406 (h!48826 String!49708) (t!336785 List!43530)) )
))
(declare-fun noDuplicateTag!2716 (LexerInterface!6557 List!43529 List!43530) Bool)

(assert (=> b!4064052 (= e!2521921 (noDuplicateTag!2716 thiss!21717 rules!2999 Nil!43406))))

(assert (= (and d!1208221 res!1658218) b!4064052))

(declare-fun m!4671169 () Bool)

(assert (=> d!1208221 m!4671169))

(declare-fun m!4671171 () Bool)

(assert (=> b!4064052 m!4671171))

(assert (=> b!4063387 d!1208221))

(declare-fun d!1208223 () Bool)

(assert (=> d!1208223 (not (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452329))))

(declare-fun lt!1452627 () Unit!62862)

(declare-fun choose!24737 (LexerInterface!6557 List!43529 Rule!13736 List!43527 List!43527 List!43527 Rule!13736) Unit!62862)

(assert (=> d!1208223 (= lt!1452627 (choose!24737 thiss!21717 rules!2999 (rule!10064 token!484) lt!1452347 lt!1452356 lt!1452329 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> d!1208223 (isPrefix!4055 lt!1452347 lt!1452356)))

(assert (=> d!1208223 (= (lemmaMaxPrefixOutputsMaxPrefix!494 thiss!21717 rules!2999 (rule!10064 token!484) lt!1452347 lt!1452356 lt!1452329 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452627)))

(declare-fun bs!592288 () Bool)

(assert (= bs!592288 d!1208223))

(assert (=> bs!592288 m!4670211))

(declare-fun m!4671173 () Bool)

(assert (=> bs!592288 m!4671173))

(assert (=> bs!592288 m!4670173))

(assert (=> b!4063430 d!1208223))

(assert (=> b!4063430 d!1208219))

(declare-fun d!1208225 () Bool)

(assert (=> d!1208225 (not (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452347))))

(declare-fun lt!1452630 () Unit!62862)

(declare-fun choose!24738 (LexerInterface!6557 List!43529 Rule!13736 List!43527 List!43527 Rule!13736) Unit!62862)

(assert (=> d!1208225 (= lt!1452630 (choose!24738 thiss!21717 rules!2999 (rule!10064 token!484) lt!1452347 lt!1452356 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> d!1208225 (isPrefix!4055 lt!1452347 lt!1452356)))

(assert (=> d!1208225 (= (lemmaMaxPrefNoSmallerRuleMatches!296 thiss!21717 rules!2999 (rule!10064 token!484) lt!1452347 lt!1452356 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452630)))

(declare-fun bs!592289 () Bool)

(assert (= bs!592289 d!1208225))

(assert (=> bs!592289 m!4670161))

(declare-fun m!4671175 () Bool)

(assert (=> bs!592289 m!4671175))

(assert (=> bs!592289 m!4670173))

(assert (=> b!4063428 d!1208225))

(declare-fun b!4064053 () Bool)

(declare-fun e!2521922 () Bool)

(declare-fun e!2521924 () Bool)

(assert (=> b!4064053 (= e!2521922 e!2521924)))

(declare-fun res!1658220 () Bool)

(assert (=> b!4064053 (=> (not res!1658220) (not e!2521924))))

(declare-fun lt!1452631 () Bool)

(assert (=> b!4064053 (= res!1658220 (not lt!1452631))))

(declare-fun bm!288266 () Bool)

(declare-fun call!288271 () Bool)

(assert (=> bm!288266 (= call!288271 (isEmpty!25903 lt!1452347))))

(declare-fun b!4064054 () Bool)

(declare-fun e!2521925 () Bool)

(assert (=> b!4064054 (= e!2521925 (not (= (head!8577 lt!1452347) (c!701729 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))))

(declare-fun b!4064055 () Bool)

(declare-fun e!2521928 () Bool)

(declare-fun e!2521923 () Bool)

(assert (=> b!4064055 (= e!2521928 e!2521923)))

(declare-fun c!701830 () Bool)

(assert (=> b!4064055 (= c!701830 ((_ is EmptyLang!11873) (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4064056 () Bool)

(assert (=> b!4064056 (= e!2521928 (= lt!1452631 call!288271))))

(declare-fun b!4064057 () Bool)

(declare-fun res!1658224 () Bool)

(assert (=> b!4064057 (=> res!1658224 e!2521925)))

(assert (=> b!4064057 (= res!1658224 (not (isEmpty!25903 (tail!6309 lt!1452347))))))

(declare-fun b!4064058 () Bool)

(assert (=> b!4064058 (= e!2521923 (not lt!1452631))))

(declare-fun b!4064059 () Bool)

(declare-fun res!1658223 () Bool)

(declare-fun e!2521927 () Bool)

(assert (=> b!4064059 (=> (not res!1658223) (not e!2521927))))

(assert (=> b!4064059 (= res!1658223 (isEmpty!25903 (tail!6309 lt!1452347)))))

(declare-fun b!4064060 () Bool)

(declare-fun e!2521926 () Bool)

(assert (=> b!4064060 (= e!2521926 (matchR!5826 (derivativeStep!3579 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (head!8577 lt!1452347)) (tail!6309 lt!1452347)))))

(declare-fun b!4064062 () Bool)

(assert (=> b!4064062 (= e!2521924 e!2521925)))

(declare-fun res!1658219 () Bool)

(assert (=> b!4064062 (=> res!1658219 e!2521925)))

(assert (=> b!4064062 (= res!1658219 call!288271)))

(declare-fun b!4064063 () Bool)

(declare-fun res!1658226 () Bool)

(assert (=> b!4064063 (=> res!1658226 e!2521922)))

(assert (=> b!4064063 (= res!1658226 (not ((_ is ElementMatch!11873) (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(assert (=> b!4064063 (= e!2521923 e!2521922)))

(declare-fun b!4064064 () Bool)

(assert (=> b!4064064 (= e!2521926 (nullable!4174 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4064065 () Bool)

(declare-fun res!1658222 () Bool)

(assert (=> b!4064065 (=> res!1658222 e!2521922)))

(assert (=> b!4064065 (= res!1658222 e!2521927)))

(declare-fun res!1658221 () Bool)

(assert (=> b!4064065 (=> (not res!1658221) (not e!2521927))))

(assert (=> b!4064065 (= res!1658221 lt!1452631)))

(declare-fun b!4064066 () Bool)

(assert (=> b!4064066 (= e!2521927 (= (head!8577 lt!1452347) (c!701729 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(declare-fun d!1208227 () Bool)

(assert (=> d!1208227 e!2521928))

(declare-fun c!701829 () Bool)

(assert (=> d!1208227 (= c!701829 ((_ is EmptyExpr!11873) (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(assert (=> d!1208227 (= lt!1452631 e!2521926)))

(declare-fun c!701828 () Bool)

(assert (=> d!1208227 (= c!701828 (isEmpty!25903 lt!1452347))))

(assert (=> d!1208227 (validRegex!5374 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> d!1208227 (= (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452347) lt!1452631)))

(declare-fun b!4064061 () Bool)

(declare-fun res!1658225 () Bool)

(assert (=> b!4064061 (=> (not res!1658225) (not e!2521927))))

(assert (=> b!4064061 (= res!1658225 (not call!288271))))

(assert (= (and d!1208227 c!701828) b!4064064))

(assert (= (and d!1208227 (not c!701828)) b!4064060))

(assert (= (and d!1208227 c!701829) b!4064056))

(assert (= (and d!1208227 (not c!701829)) b!4064055))

(assert (= (and b!4064055 c!701830) b!4064058))

(assert (= (and b!4064055 (not c!701830)) b!4064063))

(assert (= (and b!4064063 (not res!1658226)) b!4064065))

(assert (= (and b!4064065 res!1658221) b!4064061))

(assert (= (and b!4064061 res!1658225) b!4064059))

(assert (= (and b!4064059 res!1658223) b!4064066))

(assert (= (and b!4064065 (not res!1658222)) b!4064053))

(assert (= (and b!4064053 res!1658220) b!4064062))

(assert (= (and b!4064062 (not res!1658219)) b!4064057))

(assert (= (and b!4064057 (not res!1658224)) b!4064054))

(assert (= (or b!4064056 b!4064061 b!4064062) bm!288266))

(assert (=> b!4064060 m!4670523))

(assert (=> b!4064060 m!4670523))

(declare-fun m!4671177 () Bool)

(assert (=> b!4064060 m!4671177))

(assert (=> b!4064060 m!4670527))

(assert (=> b!4064060 m!4671177))

(assert (=> b!4064060 m!4670527))

(declare-fun m!4671179 () Bool)

(assert (=> b!4064060 m!4671179))

(assert (=> b!4064066 m!4670523))

(assert (=> d!1208227 m!4670639))

(assert (=> d!1208227 m!4671163))

(assert (=> b!4064057 m!4670527))

(assert (=> b!4064057 m!4670527))

(assert (=> b!4064057 m!4670641))

(assert (=> b!4064064 m!4671167))

(assert (=> bm!288266 m!4670639))

(assert (=> b!4064059 m!4670527))

(assert (=> b!4064059 m!4670527))

(assert (=> b!4064059 m!4670641))

(assert (=> b!4064054 m!4670523))

(assert (=> b!4063428 d!1208227))

(declare-fun b!4064077 () Bool)

(declare-fun e!2521935 () Int)

(assert (=> b!4064077 (= e!2521935 (+ 1 (getIndex!580 (t!336736 rules!2999) (rule!10064 token!484))))))

(declare-fun b!4064078 () Bool)

(assert (=> b!4064078 (= e!2521935 (- 1))))

(declare-fun b!4064075 () Bool)

(declare-fun e!2521934 () Int)

(assert (=> b!4064075 (= e!2521934 0)))

(declare-fun d!1208229 () Bool)

(declare-fun lt!1452634 () Int)

(assert (=> d!1208229 (>= lt!1452634 0)))

(assert (=> d!1208229 (= lt!1452634 e!2521934)))

(declare-fun c!701836 () Bool)

(assert (=> d!1208229 (= c!701836 (and ((_ is Cons!43405) rules!2999) (= (h!48825 rules!2999) (rule!10064 token!484))))))

(assert (=> d!1208229 (contains!8636 rules!2999 (rule!10064 token!484))))

(assert (=> d!1208229 (= (getIndex!580 rules!2999 (rule!10064 token!484)) lt!1452634)))

(declare-fun b!4064076 () Bool)

(assert (=> b!4064076 (= e!2521934 e!2521935)))

(declare-fun c!701835 () Bool)

(assert (=> b!4064076 (= c!701835 (and ((_ is Cons!43405) rules!2999) (not (= (h!48825 rules!2999) (rule!10064 token!484)))))))

(assert (= (and d!1208229 c!701836) b!4064075))

(assert (= (and d!1208229 (not c!701836)) b!4064076))

(assert (= (and b!4064076 c!701835) b!4064077))

(assert (= (and b!4064076 (not c!701835)) b!4064078))

(declare-fun m!4671181 () Bool)

(assert (=> b!4064077 m!4671181))

(assert (=> d!1208229 m!4670295))

(assert (=> b!4063407 d!1208229))

(declare-fun b!4064081 () Bool)

(declare-fun e!2521937 () Int)

(assert (=> b!4064081 (= e!2521937 (+ 1 (getIndex!580 (t!336736 rules!2999) (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4064082 () Bool)

(assert (=> b!4064082 (= e!2521937 (- 1))))

(declare-fun b!4064079 () Bool)

(declare-fun e!2521936 () Int)

(assert (=> b!4064079 (= e!2521936 0)))

(declare-fun d!1208231 () Bool)

(declare-fun lt!1452635 () Int)

(assert (=> d!1208231 (>= lt!1452635 0)))

(assert (=> d!1208231 (= lt!1452635 e!2521936)))

(declare-fun c!701838 () Bool)

(assert (=> d!1208231 (= c!701838 (and ((_ is Cons!43405) rules!2999) (= (h!48825 rules!2999) (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(assert (=> d!1208231 (contains!8636 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))

(assert (=> d!1208231 (= (getIndex!580 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452635)))

(declare-fun b!4064080 () Bool)

(assert (=> b!4064080 (= e!2521936 e!2521937)))

(declare-fun c!701837 () Bool)

(assert (=> b!4064080 (= c!701837 (and ((_ is Cons!43405) rules!2999) (not (= (h!48825 rules!2999) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(assert (= (and d!1208231 c!701838) b!4064079))

(assert (= (and d!1208231 (not c!701838)) b!4064080))

(assert (= (and b!4064080 c!701837) b!4064081))

(assert (= (and b!4064080 (not c!701837)) b!4064082))

(declare-fun m!4671183 () Bool)

(assert (=> b!4064081 m!4671183))

(assert (=> d!1208231 m!4670217))

(assert (=> b!4063407 d!1208231))

(declare-fun d!1208233 () Bool)

(assert (=> d!1208233 (= (_2!24365 (v!39805 lt!1452364)) newSuffixResult!27)))

(declare-fun lt!1452636 () Unit!62862)

(assert (=> d!1208233 (= lt!1452636 (choose!24732 lt!1452329 (_2!24365 (v!39805 lt!1452364)) lt!1452347 newSuffixResult!27 lt!1452378))))

(assert (=> d!1208233 (isPrefix!4055 lt!1452329 lt!1452378)))

(assert (=> d!1208233 (= (lemmaSamePrefixThenSameSuffix!2216 lt!1452329 (_2!24365 (v!39805 lt!1452364)) lt!1452347 newSuffixResult!27 lt!1452378) lt!1452636)))

(declare-fun bs!592290 () Bool)

(assert (= bs!592290 d!1208233))

(declare-fun m!4671185 () Bool)

(assert (=> bs!592290 m!4671185))

(assert (=> bs!592290 m!4670163))

(assert (=> b!4063407 d!1208233))

(declare-fun d!1208235 () Bool)

(assert (=> d!1208235 (= lt!1452329 lt!1452347)))

(declare-fun lt!1452639 () Unit!62862)

(declare-fun choose!24739 (List!43527 List!43527 List!43527) Unit!62862)

(assert (=> d!1208235 (= lt!1452639 (choose!24739 lt!1452329 lt!1452347 lt!1452378))))

(assert (=> d!1208235 (isPrefix!4055 lt!1452329 lt!1452378)))

(assert (=> d!1208235 (= (lemmaIsPrefixSameLengthThenSameList!945 lt!1452329 lt!1452347 lt!1452378) lt!1452639)))

(declare-fun bs!592291 () Bool)

(assert (= bs!592291 d!1208235))

(declare-fun m!4671187 () Bool)

(assert (=> bs!592291 m!4671187))

(assert (=> bs!592291 m!4670163))

(assert (=> b!4063407 d!1208235))

(declare-fun b!4064084 () Bool)

(declare-fun res!1658227 () Bool)

(declare-fun e!2521938 () Bool)

(assert (=> b!4064084 (=> (not res!1658227) (not e!2521938))))

(assert (=> b!4064084 (= res!1658227 (= (head!8577 lt!1452329) (head!8577 lt!1452378)))))

(declare-fun b!4064086 () Bool)

(declare-fun e!2521939 () Bool)

(assert (=> b!4064086 (= e!2521939 (>= (size!32452 lt!1452378) (size!32452 lt!1452329)))))

(declare-fun d!1208237 () Bool)

(assert (=> d!1208237 e!2521939))

(declare-fun res!1658230 () Bool)

(assert (=> d!1208237 (=> res!1658230 e!2521939)))

(declare-fun lt!1452640 () Bool)

(assert (=> d!1208237 (= res!1658230 (not lt!1452640))))

(declare-fun e!2521940 () Bool)

(assert (=> d!1208237 (= lt!1452640 e!2521940)))

(declare-fun res!1658229 () Bool)

(assert (=> d!1208237 (=> res!1658229 e!2521940)))

(assert (=> d!1208237 (= res!1658229 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208237 (= (isPrefix!4055 lt!1452329 lt!1452378) lt!1452640)))

(declare-fun b!4064085 () Bool)

(assert (=> b!4064085 (= e!2521938 (isPrefix!4055 (tail!6309 lt!1452329) (tail!6309 lt!1452378)))))

(declare-fun b!4064083 () Bool)

(assert (=> b!4064083 (= e!2521940 e!2521938)))

(declare-fun res!1658228 () Bool)

(assert (=> b!4064083 (=> (not res!1658228) (not e!2521938))))

(assert (=> b!4064083 (= res!1658228 (not ((_ is Nil!43403) lt!1452378)))))

(assert (= (and d!1208237 (not res!1658229)) b!4064083))

(assert (= (and b!4064083 res!1658228) b!4064084))

(assert (= (and b!4064084 res!1658227) b!4064085))

(assert (= (and d!1208237 (not res!1658230)) b!4064086))

(assert (=> b!4064084 m!4671155))

(assert (=> b!4064084 m!4670643))

(assert (=> b!4064086 m!4670489))

(assert (=> b!4064086 m!4670237))

(assert (=> b!4064085 m!4671159))

(assert (=> b!4064085 m!4670645))

(assert (=> b!4064085 m!4671159))

(assert (=> b!4064085 m!4670645))

(declare-fun m!4671189 () Bool)

(assert (=> b!4064085 m!4671189))

(assert (=> b!4063389 d!1208237))

(declare-fun d!1208239 () Bool)

(declare-fun e!2521941 () Bool)

(assert (=> d!1208239 e!2521941))

(declare-fun res!1658232 () Bool)

(assert (=> d!1208239 (=> (not res!1658232) (not e!2521941))))

(declare-fun lt!1452641 () List!43527)

(assert (=> d!1208239 (= res!1658232 (= (content!6626 lt!1452641) ((_ map or) (content!6626 prefix!494) (content!6626 newSuffix!27))))))

(declare-fun e!2521942 () List!43527)

(assert (=> d!1208239 (= lt!1452641 e!2521942)))

(declare-fun c!701839 () Bool)

(assert (=> d!1208239 (= c!701839 ((_ is Nil!43403) prefix!494))))

(assert (=> d!1208239 (= (++!11370 prefix!494 newSuffix!27) lt!1452641)))

(declare-fun b!4064089 () Bool)

(declare-fun res!1658231 () Bool)

(assert (=> b!4064089 (=> (not res!1658231) (not e!2521941))))

(assert (=> b!4064089 (= res!1658231 (= (size!32452 lt!1452641) (+ (size!32452 prefix!494) (size!32452 newSuffix!27))))))

(declare-fun b!4064087 () Bool)

(assert (=> b!4064087 (= e!2521942 newSuffix!27)))

(declare-fun b!4064090 () Bool)

(assert (=> b!4064090 (= e!2521941 (or (not (= newSuffix!27 Nil!43403)) (= lt!1452641 prefix!494)))))

(declare-fun b!4064088 () Bool)

(assert (=> b!4064088 (= e!2521942 (Cons!43403 (h!48823 prefix!494) (++!11370 (t!336734 prefix!494) newSuffix!27)))))

(assert (= (and d!1208239 c!701839) b!4064087))

(assert (= (and d!1208239 (not c!701839)) b!4064088))

(assert (= (and d!1208239 res!1658232) b!4064089))

(assert (= (and b!4064089 res!1658231) b!4064090))

(declare-fun m!4671191 () Bool)

(assert (=> d!1208239 m!4671191))

(assert (=> d!1208239 m!4670471))

(declare-fun m!4671193 () Bool)

(assert (=> d!1208239 m!4671193))

(declare-fun m!4671195 () Bool)

(assert (=> b!4064089 m!4671195))

(assert (=> b!4064089 m!4670141))

(assert (=> b!4064089 m!4670193))

(declare-fun m!4671197 () Bool)

(assert (=> b!4064088 m!4671197))

(assert (=> b!4063390 d!1208239))

(declare-fun d!1208241 () Bool)

(declare-fun e!2521943 () Bool)

(assert (=> d!1208241 e!2521943))

(declare-fun res!1658234 () Bool)

(assert (=> d!1208241 (=> (not res!1658234) (not e!2521943))))

(declare-fun lt!1452642 () List!43527)

(assert (=> d!1208241 (= res!1658234 (= (content!6626 lt!1452642) ((_ map or) (content!6626 lt!1452347) (content!6626 newSuffixResult!27))))))

(declare-fun e!2521944 () List!43527)

(assert (=> d!1208241 (= lt!1452642 e!2521944)))

(declare-fun c!701840 () Bool)

(assert (=> d!1208241 (= c!701840 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208241 (= (++!11370 lt!1452347 newSuffixResult!27) lt!1452642)))

(declare-fun b!4064093 () Bool)

(declare-fun res!1658233 () Bool)

(assert (=> b!4064093 (=> (not res!1658233) (not e!2521943))))

(assert (=> b!4064093 (= res!1658233 (= (size!32452 lt!1452642) (+ (size!32452 lt!1452347) (size!32452 newSuffixResult!27))))))

(declare-fun b!4064091 () Bool)

(assert (=> b!4064091 (= e!2521944 newSuffixResult!27)))

(declare-fun b!4064094 () Bool)

(assert (=> b!4064094 (= e!2521943 (or (not (= newSuffixResult!27 Nil!43403)) (= lt!1452642 lt!1452347)))))

(declare-fun b!4064092 () Bool)

(assert (=> b!4064092 (= e!2521944 (Cons!43403 (h!48823 lt!1452347) (++!11370 (t!336734 lt!1452347) newSuffixResult!27)))))

(assert (= (and d!1208241 c!701840) b!4064091))

(assert (= (and d!1208241 (not c!701840)) b!4064092))

(assert (= (and d!1208241 res!1658234) b!4064093))

(assert (= (and b!4064093 res!1658233) b!4064094))

(declare-fun m!4671199 () Bool)

(assert (=> d!1208241 m!4671199))

(assert (=> d!1208241 m!4670507))

(declare-fun m!4671201 () Bool)

(assert (=> d!1208241 m!4671201))

(declare-fun m!4671203 () Bool)

(assert (=> b!4064093 m!4671203))

(assert (=> b!4064093 m!4670139))

(declare-fun m!4671205 () Bool)

(assert (=> b!4064093 m!4671205))

(declare-fun m!4671207 () Bool)

(assert (=> b!4064092 m!4671207))

(assert (=> b!4063390 d!1208241))

(declare-fun d!1208243 () Bool)

(assert (=> d!1208243 (= (inv!58023 (tag!7828 (h!48825 rules!2999))) (= (mod (str.len (value!219221 (tag!7828 (h!48825 rules!2999)))) 2) 0))))

(assert (=> b!4063409 d!1208243))

(declare-fun d!1208245 () Bool)

(declare-fun res!1658235 () Bool)

(declare-fun e!2521945 () Bool)

(assert (=> d!1208245 (=> (not res!1658235) (not e!2521945))))

(assert (=> d!1208245 (= res!1658235 (semiInverseModEq!2982 (toChars!9387 (transformation!6968 (h!48825 rules!2999))) (toValue!9528 (transformation!6968 (h!48825 rules!2999)))))))

(assert (=> d!1208245 (= (inv!58026 (transformation!6968 (h!48825 rules!2999))) e!2521945)))

(declare-fun b!4064095 () Bool)

(assert (=> b!4064095 (= e!2521945 (equivClasses!2881 (toChars!9387 (transformation!6968 (h!48825 rules!2999))) (toValue!9528 (transformation!6968 (h!48825 rules!2999)))))))

(assert (= (and d!1208245 res!1658235) b!4064095))

(declare-fun m!4671209 () Bool)

(assert (=> d!1208245 m!4671209))

(declare-fun m!4671211 () Bool)

(assert (=> b!4064095 m!4671211))

(assert (=> b!4063409 d!1208245))

(declare-fun d!1208247 () Bool)

(declare-fun lt!1452643 () Int)

(assert (=> d!1208247 (>= lt!1452643 0)))

(declare-fun e!2521946 () Int)

(assert (=> d!1208247 (= lt!1452643 e!2521946)))

(declare-fun c!701841 () Bool)

(assert (=> d!1208247 (= c!701841 ((_ is Nil!43403) suffix!1299))))

(assert (=> d!1208247 (= (size!32452 suffix!1299) lt!1452643)))

(declare-fun b!4064096 () Bool)

(assert (=> b!4064096 (= e!2521946 0)))

(declare-fun b!4064097 () Bool)

(assert (=> b!4064097 (= e!2521946 (+ 1 (size!32452 (t!336734 suffix!1299))))))

(assert (= (and d!1208247 c!701841) b!4064096))

(assert (= (and d!1208247 (not c!701841)) b!4064097))

(declare-fun m!4671213 () Bool)

(assert (=> b!4064097 m!4671213))

(assert (=> b!4063388 d!1208247))

(declare-fun d!1208249 () Bool)

(declare-fun lt!1452644 () Int)

(assert (=> d!1208249 (>= lt!1452644 0)))

(declare-fun e!2521947 () Int)

(assert (=> d!1208249 (= lt!1452644 e!2521947)))

(declare-fun c!701842 () Bool)

(assert (=> d!1208249 (= c!701842 ((_ is Nil!43403) newSuffix!27))))

(assert (=> d!1208249 (= (size!32452 newSuffix!27) lt!1452644)))

(declare-fun b!4064098 () Bool)

(assert (=> b!4064098 (= e!2521947 0)))

(declare-fun b!4064099 () Bool)

(assert (=> b!4064099 (= e!2521947 (+ 1 (size!32452 (t!336734 newSuffix!27))))))

(assert (= (and d!1208249 c!701842) b!4064098))

(assert (= (and d!1208249 (not c!701842)) b!4064099))

(declare-fun m!4671215 () Bool)

(assert (=> b!4064099 m!4671215))

(assert (=> b!4063388 d!1208249))

(declare-fun b!4064101 () Bool)

(declare-fun res!1658236 () Bool)

(declare-fun e!2521948 () Bool)

(assert (=> b!4064101 (=> (not res!1658236) (not e!2521948))))

(assert (=> b!4064101 (= res!1658236 (= (head!8577 lt!1452329) (head!8577 lt!1452356)))))

(declare-fun b!4064103 () Bool)

(declare-fun e!2521949 () Bool)

(assert (=> b!4064103 (= e!2521949 (>= (size!32452 lt!1452356) (size!32452 lt!1452329)))))

(declare-fun d!1208251 () Bool)

(assert (=> d!1208251 e!2521949))

(declare-fun res!1658239 () Bool)

(assert (=> d!1208251 (=> res!1658239 e!2521949)))

(declare-fun lt!1452645 () Bool)

(assert (=> d!1208251 (= res!1658239 (not lt!1452645))))

(declare-fun e!2521950 () Bool)

(assert (=> d!1208251 (= lt!1452645 e!2521950)))

(declare-fun res!1658238 () Bool)

(assert (=> d!1208251 (=> res!1658238 e!2521950)))

(assert (=> d!1208251 (= res!1658238 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208251 (= (isPrefix!4055 lt!1452329 lt!1452356) lt!1452645)))

(declare-fun b!4064102 () Bool)

(assert (=> b!4064102 (= e!2521948 (isPrefix!4055 (tail!6309 lt!1452329) (tail!6309 lt!1452356)))))

(declare-fun b!4064100 () Bool)

(assert (=> b!4064100 (= e!2521950 e!2521948)))

(declare-fun res!1658237 () Bool)

(assert (=> b!4064100 (=> (not res!1658237) (not e!2521948))))

(assert (=> b!4064100 (= res!1658237 (not ((_ is Nil!43403) lt!1452356)))))

(assert (= (and d!1208251 (not res!1658238)) b!4064100))

(assert (= (and b!4064100 res!1658237) b!4064101))

(assert (= (and b!4064101 res!1658236) b!4064102))

(assert (= (and d!1208251 (not res!1658239)) b!4064103))

(assert (=> b!4064101 m!4671155))

(assert (=> b!4064101 m!4671139))

(assert (=> b!4064103 m!4671087))

(assert (=> b!4064103 m!4670237))

(assert (=> b!4064102 m!4671159))

(assert (=> b!4064102 m!4671141))

(assert (=> b!4064102 m!4671159))

(assert (=> b!4064102 m!4671141))

(declare-fun m!4671217 () Bool)

(assert (=> b!4064102 m!4671217))

(assert (=> b!4063410 d!1208251))

(declare-fun b!4064105 () Bool)

(declare-fun res!1658240 () Bool)

(declare-fun e!2521951 () Bool)

(assert (=> b!4064105 (=> (not res!1658240) (not e!2521951))))

(assert (=> b!4064105 (= res!1658240 (= (head!8577 lt!1452329) (head!8577 lt!1452382)))))

(declare-fun b!4064107 () Bool)

(declare-fun e!2521952 () Bool)

(assert (=> b!4064107 (= e!2521952 (>= (size!32452 lt!1452382) (size!32452 lt!1452329)))))

(declare-fun d!1208253 () Bool)

(assert (=> d!1208253 e!2521952))

(declare-fun res!1658243 () Bool)

(assert (=> d!1208253 (=> res!1658243 e!2521952)))

(declare-fun lt!1452646 () Bool)

(assert (=> d!1208253 (= res!1658243 (not lt!1452646))))

(declare-fun e!2521953 () Bool)

(assert (=> d!1208253 (= lt!1452646 e!2521953)))

(declare-fun res!1658242 () Bool)

(assert (=> d!1208253 (=> res!1658242 e!2521953)))

(assert (=> d!1208253 (= res!1658242 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208253 (= (isPrefix!4055 lt!1452329 lt!1452382) lt!1452646)))

(declare-fun b!4064106 () Bool)

(assert (=> b!4064106 (= e!2521951 (isPrefix!4055 (tail!6309 lt!1452329) (tail!6309 lt!1452382)))))

(declare-fun b!4064104 () Bool)

(assert (=> b!4064104 (= e!2521953 e!2521951)))

(declare-fun res!1658241 () Bool)

(assert (=> b!4064104 (=> (not res!1658241) (not e!2521951))))

(assert (=> b!4064104 (= res!1658241 (not ((_ is Nil!43403) lt!1452382)))))

(assert (= (and d!1208253 (not res!1658242)) b!4064104))

(assert (= (and b!4064104 res!1658241) b!4064105))

(assert (= (and b!4064105 res!1658240) b!4064106))

(assert (= (and d!1208253 (not res!1658243)) b!4064107))

(assert (=> b!4064105 m!4671155))

(declare-fun m!4671219 () Bool)

(assert (=> b!4064105 m!4671219))

(declare-fun m!4671221 () Bool)

(assert (=> b!4064107 m!4671221))

(assert (=> b!4064107 m!4670237))

(assert (=> b!4064106 m!4671159))

(declare-fun m!4671223 () Bool)

(assert (=> b!4064106 m!4671223))

(assert (=> b!4064106 m!4671159))

(assert (=> b!4064106 m!4671223))

(declare-fun m!4671225 () Bool)

(assert (=> b!4064106 m!4671225))

(assert (=> b!4063410 d!1208253))

(declare-fun d!1208255 () Bool)

(assert (=> d!1208255 (isPrefix!4055 lt!1452329 (++!11370 lt!1452378 lt!1452371))))

(declare-fun lt!1452647 () Unit!62862)

(assert (=> d!1208255 (= lt!1452647 (choose!24730 lt!1452329 lt!1452378 lt!1452371))))

(assert (=> d!1208255 (isPrefix!4055 lt!1452329 lt!1452378)))

(assert (=> d!1208255 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!848 lt!1452329 lt!1452378 lt!1452371) lt!1452647)))

(declare-fun bs!592292 () Bool)

(assert (= bs!592292 d!1208255))

(assert (=> bs!592292 m!4670179))

(assert (=> bs!592292 m!4670179))

(declare-fun m!4671227 () Bool)

(assert (=> bs!592292 m!4671227))

(declare-fun m!4671229 () Bool)

(assert (=> bs!592292 m!4671229))

(assert (=> bs!592292 m!4670163))

(assert (=> b!4063410 d!1208255))

(declare-fun b!4064118 () Bool)

(declare-fun e!2521961 () Bool)

(declare-fun inv!15 (TokenValue!7198) Bool)

(assert (=> b!4064118 (= e!2521961 (inv!15 (value!219222 token!484)))))

(declare-fun b!4064119 () Bool)

(declare-fun e!2521962 () Bool)

(declare-fun inv!16 (TokenValue!7198) Bool)

(assert (=> b!4064119 (= e!2521962 (inv!16 (value!219222 token!484)))))

(declare-fun d!1208257 () Bool)

(declare-fun c!701847 () Bool)

(assert (=> d!1208257 (= c!701847 ((_ is IntegerValue!21594) (value!219222 token!484)))))

(assert (=> d!1208257 (= (inv!21 (value!219222 token!484)) e!2521962)))

(declare-fun b!4064120 () Bool)

(declare-fun e!2521960 () Bool)

(declare-fun inv!17 (TokenValue!7198) Bool)

(assert (=> b!4064120 (= e!2521960 (inv!17 (value!219222 token!484)))))

(declare-fun b!4064121 () Bool)

(declare-fun res!1658246 () Bool)

(assert (=> b!4064121 (=> res!1658246 e!2521961)))

(assert (=> b!4064121 (= res!1658246 (not ((_ is IntegerValue!21596) (value!219222 token!484))))))

(assert (=> b!4064121 (= e!2521960 e!2521961)))

(declare-fun b!4064122 () Bool)

(assert (=> b!4064122 (= e!2521962 e!2521960)))

(declare-fun c!701848 () Bool)

(assert (=> b!4064122 (= c!701848 ((_ is IntegerValue!21595) (value!219222 token!484)))))

(assert (= (and d!1208257 c!701847) b!4064119))

(assert (= (and d!1208257 (not c!701847)) b!4064122))

(assert (= (and b!4064122 c!701848) b!4064120))

(assert (= (and b!4064122 (not c!701848)) b!4064121))

(assert (= (and b!4064121 (not res!1658246)) b!4064118))

(declare-fun m!4671231 () Bool)

(assert (=> b!4064118 m!4671231))

(declare-fun m!4671233 () Bool)

(assert (=> b!4064119 m!4671233))

(declare-fun m!4671235 () Bool)

(assert (=> b!4064120 m!4671235))

(assert (=> b!4063414 d!1208257))

(declare-fun d!1208259 () Bool)

(declare-fun lt!1452648 () Int)

(assert (=> d!1208259 (>= lt!1452648 0)))

(declare-fun e!2521963 () Int)

(assert (=> d!1208259 (= lt!1452648 e!2521963)))

(declare-fun c!701849 () Bool)

(assert (=> d!1208259 (= c!701849 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208259 (= (size!32452 lt!1452347) lt!1452648)))

(declare-fun b!4064123 () Bool)

(assert (=> b!4064123 (= e!2521963 0)))

(declare-fun b!4064124 () Bool)

(assert (=> b!4064124 (= e!2521963 (+ 1 (size!32452 (t!336734 lt!1452347))))))

(assert (= (and d!1208259 c!701849) b!4064123))

(assert (= (and d!1208259 (not c!701849)) b!4064124))

(declare-fun m!4671237 () Bool)

(assert (=> b!4064124 m!4671237))

(assert (=> b!4063391 d!1208259))

(declare-fun d!1208261 () Bool)

(declare-fun lt!1452649 () Int)

(assert (=> d!1208261 (>= lt!1452649 0)))

(declare-fun e!2521964 () Int)

(assert (=> d!1208261 (= lt!1452649 e!2521964)))

(declare-fun c!701850 () Bool)

(assert (=> d!1208261 (= c!701850 ((_ is Nil!43403) prefix!494))))

(assert (=> d!1208261 (= (size!32452 prefix!494) lt!1452649)))

(declare-fun b!4064125 () Bool)

(assert (=> b!4064125 (= e!2521964 0)))

(declare-fun b!4064126 () Bool)

(assert (=> b!4064126 (= e!2521964 (+ 1 (size!32452 (t!336734 prefix!494))))))

(assert (= (and d!1208261 c!701850) b!4064125))

(assert (= (and d!1208261 (not c!701850)) b!4064126))

(declare-fun m!4671239 () Bool)

(assert (=> b!4064126 m!4671239))

(assert (=> b!4063391 d!1208261))

(declare-fun d!1208263 () Bool)

(declare-fun list!16182 (Conc!13179) List!43527)

(assert (=> d!1208263 (= (list!16180 (charsOf!4784 token!484)) (list!16182 (c!701728 (charsOf!4784 token!484))))))

(declare-fun bs!592293 () Bool)

(assert (= bs!592293 d!1208263))

(declare-fun m!4671241 () Bool)

(assert (=> bs!592293 m!4671241))

(assert (=> b!4063391 d!1208263))

(declare-fun d!1208265 () Bool)

(declare-fun lt!1452652 () BalanceConc!25952)

(assert (=> d!1208265 (= (list!16180 lt!1452652) (originalCharacters!7568 token!484))))

(declare-fun dynLambda!18446 (Int TokenValue!7198) BalanceConc!25952)

(assert (=> d!1208265 (= lt!1452652 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (value!219222 token!484)))))

(assert (=> d!1208265 (= (charsOf!4784 token!484) lt!1452652)))

(declare-fun b_lambda!118761 () Bool)

(assert (=> (not b_lambda!118761) (not d!1208265)))

(declare-fun t!336766 () Bool)

(declare-fun tb!244461 () Bool)

(assert (=> (and b!4063392 (= (toChars!9387 (transformation!6968 (h!48825 rules!2999))) (toChars!9387 (transformation!6968 (rule!10064 token!484)))) t!336766) tb!244461))

(declare-fun b!4064131 () Bool)

(declare-fun e!2521967 () Bool)

(declare-fun tp!1230529 () Bool)

(declare-fun inv!58030 (Conc!13179) Bool)

(assert (=> b!4064131 (= e!2521967 (and (inv!58030 (c!701728 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (value!219222 token!484)))) tp!1230529))))

(declare-fun result!296230 () Bool)

(declare-fun inv!58031 (BalanceConc!25952) Bool)

(assert (=> tb!244461 (= result!296230 (and (inv!58031 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (value!219222 token!484))) e!2521967))))

(assert (= tb!244461 b!4064131))

(declare-fun m!4671243 () Bool)

(assert (=> b!4064131 m!4671243))

(declare-fun m!4671245 () Bool)

(assert (=> tb!244461 m!4671245))

(assert (=> d!1208265 t!336766))

(declare-fun b_and!312423 () Bool)

(assert (= b_and!312389 (and (=> t!336766 result!296230) b_and!312423)))

(declare-fun t!336768 () Bool)

(declare-fun tb!244463 () Bool)

(assert (=> (and b!4063429 (= (toChars!9387 (transformation!6968 (rule!10064 token!484))) (toChars!9387 (transformation!6968 (rule!10064 token!484)))) t!336768) tb!244463))

(declare-fun result!296234 () Bool)

(assert (= result!296234 result!296230))

(assert (=> d!1208265 t!336768))

(declare-fun b_and!312425 () Bool)

(assert (= b_and!312393 (and (=> t!336768 result!296234) b_and!312425)))

(declare-fun m!4671247 () Bool)

(assert (=> d!1208265 m!4671247))

(declare-fun m!4671249 () Bool)

(assert (=> d!1208265 m!4671249))

(assert (=> b!4063391 d!1208265))

(declare-fun d!1208267 () Bool)

(declare-fun e!2521968 () Bool)

(assert (=> d!1208267 e!2521968))

(declare-fun res!1658248 () Bool)

(assert (=> d!1208267 (=> (not res!1658248) (not e!2521968))))

(declare-fun lt!1452653 () List!43527)

(assert (=> d!1208267 (= res!1658248 (= (content!6626 lt!1452653) ((_ map or) (content!6626 newSuffix!27) (content!6626 lt!1452371))))))

(declare-fun e!2521969 () List!43527)

(assert (=> d!1208267 (= lt!1452653 e!2521969)))

(declare-fun c!701851 () Bool)

(assert (=> d!1208267 (= c!701851 ((_ is Nil!43403) newSuffix!27))))

(assert (=> d!1208267 (= (++!11370 newSuffix!27 lt!1452371) lt!1452653)))

(declare-fun b!4064134 () Bool)

(declare-fun res!1658247 () Bool)

(assert (=> b!4064134 (=> (not res!1658247) (not e!2521968))))

(assert (=> b!4064134 (= res!1658247 (= (size!32452 lt!1452653) (+ (size!32452 newSuffix!27) (size!32452 lt!1452371))))))

(declare-fun b!4064132 () Bool)

(assert (=> b!4064132 (= e!2521969 lt!1452371)))

(declare-fun b!4064135 () Bool)

(assert (=> b!4064135 (= e!2521968 (or (not (= lt!1452371 Nil!43403)) (= lt!1452653 newSuffix!27)))))

(declare-fun b!4064133 () Bool)

(assert (=> b!4064133 (= e!2521969 (Cons!43403 (h!48823 newSuffix!27) (++!11370 (t!336734 newSuffix!27) lt!1452371)))))

(assert (= (and d!1208267 c!701851) b!4064132))

(assert (= (and d!1208267 (not c!701851)) b!4064133))

(assert (= (and d!1208267 res!1658248) b!4064134))

(assert (= (and b!4064134 res!1658247) b!4064135))

(declare-fun m!4671251 () Bool)

(assert (=> d!1208267 m!4671251))

(assert (=> d!1208267 m!4671193))

(assert (=> d!1208267 m!4670485))

(declare-fun m!4671253 () Bool)

(assert (=> b!4064134 m!4671253))

(assert (=> b!4064134 m!4670193))

(assert (=> b!4064134 m!4670491))

(declare-fun m!4671255 () Bool)

(assert (=> b!4064133 m!4671255))

(assert (=> b!4063416 d!1208267))

(declare-fun d!1208269 () Bool)

(declare-fun lt!1452654 () List!43527)

(assert (=> d!1208269 (= (++!11370 newSuffix!27 lt!1452654) suffix!1299)))

(declare-fun e!2521970 () List!43527)

(assert (=> d!1208269 (= lt!1452654 e!2521970)))

(declare-fun c!701852 () Bool)

(assert (=> d!1208269 (= c!701852 ((_ is Cons!43403) newSuffix!27))))

(assert (=> d!1208269 (>= (size!32452 suffix!1299) (size!32452 newSuffix!27))))

(assert (=> d!1208269 (= (getSuffix!2472 suffix!1299 newSuffix!27) lt!1452654)))

(declare-fun b!4064136 () Bool)

(assert (=> b!4064136 (= e!2521970 (getSuffix!2472 (tail!6309 suffix!1299) (t!336734 newSuffix!27)))))

(declare-fun b!4064137 () Bool)

(assert (=> b!4064137 (= e!2521970 suffix!1299)))

(assert (= (and d!1208269 c!701852) b!4064136))

(assert (= (and d!1208269 (not c!701852)) b!4064137))

(declare-fun m!4671257 () Bool)

(assert (=> d!1208269 m!4671257))

(assert (=> d!1208269 m!4670191))

(assert (=> d!1208269 m!4670193))

(declare-fun m!4671259 () Bool)

(assert (=> b!4064136 m!4671259))

(assert (=> b!4064136 m!4671259))

(declare-fun m!4671261 () Bool)

(assert (=> b!4064136 m!4671261))

(assert (=> b!4063416 d!1208269))

(declare-fun b!4064139 () Bool)

(declare-fun res!1658249 () Bool)

(declare-fun e!2521971 () Bool)

(assert (=> b!4064139 (=> (not res!1658249) (not e!2521971))))

(assert (=> b!4064139 (= res!1658249 (= (head!8577 newSuffix!27) (head!8577 suffix!1299)))))

(declare-fun b!4064141 () Bool)

(declare-fun e!2521972 () Bool)

(assert (=> b!4064141 (= e!2521972 (>= (size!32452 suffix!1299) (size!32452 newSuffix!27)))))

(declare-fun d!1208271 () Bool)

(assert (=> d!1208271 e!2521972))

(declare-fun res!1658252 () Bool)

(assert (=> d!1208271 (=> res!1658252 e!2521972)))

(declare-fun lt!1452655 () Bool)

(assert (=> d!1208271 (= res!1658252 (not lt!1452655))))

(declare-fun e!2521973 () Bool)

(assert (=> d!1208271 (= lt!1452655 e!2521973)))

(declare-fun res!1658251 () Bool)

(assert (=> d!1208271 (=> res!1658251 e!2521973)))

(assert (=> d!1208271 (= res!1658251 ((_ is Nil!43403) newSuffix!27))))

(assert (=> d!1208271 (= (isPrefix!4055 newSuffix!27 suffix!1299) lt!1452655)))

(declare-fun b!4064140 () Bool)

(assert (=> b!4064140 (= e!2521971 (isPrefix!4055 (tail!6309 newSuffix!27) (tail!6309 suffix!1299)))))

(declare-fun b!4064138 () Bool)

(assert (=> b!4064138 (= e!2521973 e!2521971)))

(declare-fun res!1658250 () Bool)

(assert (=> b!4064138 (=> (not res!1658250) (not e!2521971))))

(assert (=> b!4064138 (= res!1658250 (not ((_ is Nil!43403) suffix!1299)))))

(assert (= (and d!1208271 (not res!1658251)) b!4064138))

(assert (= (and b!4064138 res!1658250) b!4064139))

(assert (= (and b!4064139 res!1658249) b!4064140))

(assert (= (and d!1208271 (not res!1658252)) b!4064141))

(declare-fun m!4671263 () Bool)

(assert (=> b!4064139 m!4671263))

(declare-fun m!4671265 () Bool)

(assert (=> b!4064139 m!4671265))

(assert (=> b!4064141 m!4670191))

(assert (=> b!4064141 m!4670193))

(declare-fun m!4671267 () Bool)

(assert (=> b!4064140 m!4671267))

(assert (=> b!4064140 m!4671259))

(assert (=> b!4064140 m!4671267))

(assert (=> b!4064140 m!4671259))

(declare-fun m!4671269 () Bool)

(assert (=> b!4064140 m!4671269))

(assert (=> b!4063395 d!1208271))

(declare-fun d!1208273 () Bool)

(declare-fun res!1658257 () Bool)

(declare-fun e!2521976 () Bool)

(assert (=> d!1208273 (=> (not res!1658257) (not e!2521976))))

(assert (=> d!1208273 (= res!1658257 (not (isEmpty!25903 (originalCharacters!7568 token!484))))))

(assert (=> d!1208273 (= (inv!58027 token!484) e!2521976)))

(declare-fun b!4064146 () Bool)

(declare-fun res!1658258 () Bool)

(assert (=> b!4064146 (=> (not res!1658258) (not e!2521976))))

(assert (=> b!4064146 (= res!1658258 (= (originalCharacters!7568 token!484) (list!16180 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 token!484))) (value!219222 token!484)))))))

(declare-fun b!4064147 () Bool)

(assert (=> b!4064147 (= e!2521976 (= (size!32451 token!484) (size!32452 (originalCharacters!7568 token!484))))))

(assert (= (and d!1208273 res!1658257) b!4064146))

(assert (= (and b!4064146 res!1658258) b!4064147))

(declare-fun b_lambda!118763 () Bool)

(assert (=> (not b_lambda!118763) (not b!4064146)))

(assert (=> b!4064146 t!336766))

(declare-fun b_and!312427 () Bool)

(assert (= b_and!312423 (and (=> t!336766 result!296230) b_and!312427)))

(assert (=> b!4064146 t!336768))

(declare-fun b_and!312429 () Bool)

(assert (= b_and!312425 (and (=> t!336768 result!296234) b_and!312429)))

(declare-fun m!4671271 () Bool)

(assert (=> d!1208273 m!4671271))

(assert (=> b!4064146 m!4671249))

(assert (=> b!4064146 m!4671249))

(declare-fun m!4671273 () Bool)

(assert (=> b!4064146 m!4671273))

(assert (=> b!4064147 m!4670175))

(assert (=> start!383280 d!1208273))

(declare-fun d!1208275 () Bool)

(assert (=> d!1208275 (not (matchR!5826 (regex!6968 (rule!10064 token!484)) lt!1452347))))

(declare-fun lt!1452656 () Unit!62862)

(assert (=> d!1208275 (= lt!1452656 (choose!24737 thiss!21717 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452329 lt!1452378 lt!1452347 (rule!10064 token!484)))))

(assert (=> d!1208275 (isPrefix!4055 lt!1452329 lt!1452378)))

(assert (=> d!1208275 (= (lemmaMaxPrefixOutputsMaxPrefix!494 thiss!21717 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452329 lt!1452378 lt!1452347 (rule!10064 token!484)) lt!1452656)))

(declare-fun bs!592294 () Bool)

(assert (= bs!592294 d!1208275))

(assert (=> bs!592294 m!4670281))

(declare-fun m!4671275 () Bool)

(assert (=> bs!592294 m!4671275))

(assert (=> bs!592294 m!4670163))

(assert (=> b!4063415 d!1208275))

(declare-fun d!1208277 () Bool)

(declare-fun e!2521977 () Bool)

(assert (=> d!1208277 e!2521977))

(declare-fun res!1658260 () Bool)

(assert (=> d!1208277 (=> (not res!1658260) (not e!2521977))))

(declare-fun lt!1452657 () List!43527)

(assert (=> d!1208277 (= res!1658260 (= (content!6626 lt!1452657) ((_ map or) (content!6626 lt!1452329) (content!6626 lt!1452383))))))

(declare-fun e!2521978 () List!43527)

(assert (=> d!1208277 (= lt!1452657 e!2521978)))

(declare-fun c!701853 () Bool)

(assert (=> d!1208277 (= c!701853 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208277 (= (++!11370 lt!1452329 lt!1452383) lt!1452657)))

(declare-fun b!4064150 () Bool)

(declare-fun res!1658259 () Bool)

(assert (=> b!4064150 (=> (not res!1658259) (not e!2521977))))

(assert (=> b!4064150 (= res!1658259 (= (size!32452 lt!1452657) (+ (size!32452 lt!1452329) (size!32452 lt!1452383))))))

(declare-fun b!4064148 () Bool)

(assert (=> b!4064148 (= e!2521978 lt!1452383)))

(declare-fun b!4064151 () Bool)

(assert (=> b!4064151 (= e!2521977 (or (not (= lt!1452383 Nil!43403)) (= lt!1452657 lt!1452329)))))

(declare-fun b!4064149 () Bool)

(assert (=> b!4064149 (= e!2521978 (Cons!43403 (h!48823 lt!1452329) (++!11370 (t!336734 lt!1452329) lt!1452383)))))

(assert (= (and d!1208277 c!701853) b!4064148))

(assert (= (and d!1208277 (not c!701853)) b!4064149))

(assert (= (and d!1208277 res!1658260) b!4064150))

(assert (= (and b!4064150 res!1658259) b!4064151))

(declare-fun m!4671277 () Bool)

(assert (=> d!1208277 m!4671277))

(declare-fun m!4671279 () Bool)

(assert (=> d!1208277 m!4671279))

(declare-fun m!4671281 () Bool)

(assert (=> d!1208277 m!4671281))

(declare-fun m!4671283 () Bool)

(assert (=> b!4064150 m!4671283))

(assert (=> b!4064150 m!4670237))

(declare-fun m!4671285 () Bool)

(assert (=> b!4064150 m!4671285))

(declare-fun m!4671287 () Bool)

(assert (=> b!4064149 m!4671287))

(assert (=> b!4063397 d!1208277))

(declare-fun d!1208279 () Bool)

(declare-fun lt!1452658 () List!43527)

(assert (=> d!1208279 (= (++!11370 lt!1452329 lt!1452658) lt!1452378)))

(declare-fun e!2521979 () List!43527)

(assert (=> d!1208279 (= lt!1452658 e!2521979)))

(declare-fun c!701854 () Bool)

(assert (=> d!1208279 (= c!701854 ((_ is Cons!43403) lt!1452329))))

(assert (=> d!1208279 (>= (size!32452 lt!1452378) (size!32452 lt!1452329))))

(assert (=> d!1208279 (= (getSuffix!2472 lt!1452378 lt!1452329) lt!1452658)))

(declare-fun b!4064152 () Bool)

(assert (=> b!4064152 (= e!2521979 (getSuffix!2472 (tail!6309 lt!1452378) (t!336734 lt!1452329)))))

(declare-fun b!4064153 () Bool)

(assert (=> b!4064153 (= e!2521979 lt!1452378)))

(assert (= (and d!1208279 c!701854) b!4064152))

(assert (= (and d!1208279 (not c!701854)) b!4064153))

(declare-fun m!4671289 () Bool)

(assert (=> d!1208279 m!4671289))

(assert (=> d!1208279 m!4670489))

(assert (=> d!1208279 m!4670237))

(assert (=> b!4064152 m!4670645))

(assert (=> b!4064152 m!4670645))

(declare-fun m!4671291 () Bool)

(assert (=> b!4064152 m!4671291))

(assert (=> b!4063397 d!1208279))

(declare-fun d!1208281 () Bool)

(assert (=> d!1208281 (= (maxPrefixOneRule!2867 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452378) (Some!9381 (tuple2!42463 (Token!13075 (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (seqFromList!5185 lt!1452329)) (rule!10064 (_1!24365 (v!39805 lt!1452364))) (size!32452 lt!1452329) lt!1452329) (_2!24365 (v!39805 lt!1452364)))))))

(declare-fun lt!1452659 () Unit!62862)

(assert (=> d!1208281 (= lt!1452659 (choose!24735 thiss!21717 rules!2999 lt!1452329 lt!1452378 (_2!24365 (v!39805 lt!1452364)) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> d!1208281 (not (isEmpty!25902 rules!2999))))

(assert (=> d!1208281 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1673 thiss!21717 rules!2999 lt!1452329 lt!1452378 (_2!24365 (v!39805 lt!1452364)) (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452659)))

(declare-fun bs!592295 () Bool)

(assert (= bs!592295 d!1208281))

(declare-fun m!4671293 () Bool)

(assert (=> bs!592295 m!4671293))

(assert (=> bs!592295 m!4670227))

(assert (=> bs!592295 m!4670229))

(assert (=> bs!592295 m!4670293))

(assert (=> bs!592295 m!4670237))

(assert (=> bs!592295 m!4670227))

(assert (=> bs!592295 m!4670249))

(assert (=> b!4063398 d!1208281))

(declare-fun d!1208283 () Bool)

(assert (=> d!1208283 (= (size!32451 (_1!24365 (v!39805 lt!1452364))) (size!32452 (originalCharacters!7568 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun Unit!62876 () Unit!62862)

(assert (=> d!1208283 (= (lemmaCharactersSize!1487 (_1!24365 (v!39805 lt!1452364))) Unit!62876)))

(declare-fun bs!592296 () Bool)

(assert (= bs!592296 d!1208283))

(declare-fun m!4671295 () Bool)

(assert (=> bs!592296 m!4671295))

(assert (=> b!4063398 d!1208283))

(declare-fun d!1208285 () Bool)

(assert (=> d!1208285 (= (size!32451 token!484) (size!32452 (originalCharacters!7568 token!484)))))

(declare-fun Unit!62877 () Unit!62862)

(assert (=> d!1208285 (= (lemmaCharactersSize!1487 token!484) Unit!62877)))

(declare-fun bs!592297 () Bool)

(assert (= bs!592297 d!1208285))

(assert (=> bs!592297 m!4670175))

(assert (=> b!4063398 d!1208285))

(declare-fun d!1208287 () Bool)

(declare-fun lt!1452660 () Int)

(assert (=> d!1208287 (>= lt!1452660 0)))

(declare-fun e!2521980 () Int)

(assert (=> d!1208287 (= lt!1452660 e!2521980)))

(declare-fun c!701855 () Bool)

(assert (=> d!1208287 (= c!701855 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208287 (= (size!32452 lt!1452329) lt!1452660)))

(declare-fun b!4064154 () Bool)

(assert (=> b!4064154 (= e!2521980 0)))

(declare-fun b!4064155 () Bool)

(assert (=> b!4064155 (= e!2521980 (+ 1 (size!32452 (t!336734 lt!1452329))))))

(assert (= (and d!1208287 c!701855) b!4064154))

(assert (= (and d!1208287 (not c!701855)) b!4064155))

(declare-fun m!4671297 () Bool)

(assert (=> b!4064155 m!4671297))

(assert (=> b!4063398 d!1208287))

(declare-fun b!4064157 () Bool)

(declare-fun res!1658261 () Bool)

(declare-fun e!2521981 () Bool)

(assert (=> b!4064157 (=> (not res!1658261) (not e!2521981))))

(assert (=> b!4064157 (= res!1658261 (= (head!8577 lt!1452329) (head!8577 (++!11370 lt!1452329 newSuffixResult!27))))))

(declare-fun b!4064159 () Bool)

(declare-fun e!2521982 () Bool)

(assert (=> b!4064159 (= e!2521982 (>= (size!32452 (++!11370 lt!1452329 newSuffixResult!27)) (size!32452 lt!1452329)))))

(declare-fun d!1208289 () Bool)

(assert (=> d!1208289 e!2521982))

(declare-fun res!1658264 () Bool)

(assert (=> d!1208289 (=> res!1658264 e!2521982)))

(declare-fun lt!1452661 () Bool)

(assert (=> d!1208289 (= res!1658264 (not lt!1452661))))

(declare-fun e!2521983 () Bool)

(assert (=> d!1208289 (= lt!1452661 e!2521983)))

(declare-fun res!1658263 () Bool)

(assert (=> d!1208289 (=> res!1658263 e!2521983)))

(assert (=> d!1208289 (= res!1658263 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208289 (= (isPrefix!4055 lt!1452329 (++!11370 lt!1452329 newSuffixResult!27)) lt!1452661)))

(declare-fun b!4064158 () Bool)

(assert (=> b!4064158 (= e!2521981 (isPrefix!4055 (tail!6309 lt!1452329) (tail!6309 (++!11370 lt!1452329 newSuffixResult!27))))))

(declare-fun b!4064156 () Bool)

(assert (=> b!4064156 (= e!2521983 e!2521981)))

(declare-fun res!1658262 () Bool)

(assert (=> b!4064156 (=> (not res!1658262) (not e!2521981))))

(assert (=> b!4064156 (= res!1658262 (not ((_ is Nil!43403) (++!11370 lt!1452329 newSuffixResult!27))))))

(assert (= (and d!1208289 (not res!1658263)) b!4064156))

(assert (= (and b!4064156 res!1658262) b!4064157))

(assert (= (and b!4064157 res!1658261) b!4064158))

(assert (= (and d!1208289 (not res!1658264)) b!4064159))

(assert (=> b!4064157 m!4671155))

(assert (=> b!4064157 m!4670223))

(declare-fun m!4671299 () Bool)

(assert (=> b!4064157 m!4671299))

(assert (=> b!4064159 m!4670223))

(declare-fun m!4671301 () Bool)

(assert (=> b!4064159 m!4671301))

(assert (=> b!4064159 m!4670237))

(assert (=> b!4064158 m!4671159))

(assert (=> b!4064158 m!4670223))

(declare-fun m!4671303 () Bool)

(assert (=> b!4064158 m!4671303))

(assert (=> b!4064158 m!4671159))

(assert (=> b!4064158 m!4671303))

(declare-fun m!4671305 () Bool)

(assert (=> b!4064158 m!4671305))

(assert (=> b!4063398 d!1208289))

(declare-fun b!4064161 () Bool)

(declare-fun res!1658265 () Bool)

(declare-fun e!2521984 () Bool)

(assert (=> b!4064161 (=> (not res!1658265) (not e!2521984))))

(assert (=> b!4064161 (= res!1658265 (= (head!8577 lt!1452329) (head!8577 lt!1452358)))))

(declare-fun b!4064163 () Bool)

(declare-fun e!2521985 () Bool)

(assert (=> b!4064163 (= e!2521985 (>= (size!32452 lt!1452358) (size!32452 lt!1452329)))))

(declare-fun d!1208291 () Bool)

(assert (=> d!1208291 e!2521985))

(declare-fun res!1658268 () Bool)

(assert (=> d!1208291 (=> res!1658268 e!2521985)))

(declare-fun lt!1452662 () Bool)

(assert (=> d!1208291 (= res!1658268 (not lt!1452662))))

(declare-fun e!2521986 () Bool)

(assert (=> d!1208291 (= lt!1452662 e!2521986)))

(declare-fun res!1658267 () Bool)

(assert (=> d!1208291 (=> res!1658267 e!2521986)))

(assert (=> d!1208291 (= res!1658267 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208291 (= (isPrefix!4055 lt!1452329 lt!1452358) lt!1452662)))

(declare-fun b!4064162 () Bool)

(assert (=> b!4064162 (= e!2521984 (isPrefix!4055 (tail!6309 lt!1452329) (tail!6309 lt!1452358)))))

(declare-fun b!4064160 () Bool)

(assert (=> b!4064160 (= e!2521986 e!2521984)))

(declare-fun res!1658266 () Bool)

(assert (=> b!4064160 (=> (not res!1658266) (not e!2521984))))

(assert (=> b!4064160 (= res!1658266 (not ((_ is Nil!43403) lt!1452358)))))

(assert (= (and d!1208291 (not res!1658267)) b!4064160))

(assert (= (and b!4064160 res!1658266) b!4064161))

(assert (= (and b!4064161 res!1658265) b!4064162))

(assert (= (and d!1208291 (not res!1658268)) b!4064163))

(assert (=> b!4064161 m!4671155))

(declare-fun m!4671307 () Bool)

(assert (=> b!4064161 m!4671307))

(declare-fun m!4671309 () Bool)

(assert (=> b!4064163 m!4671309))

(assert (=> b!4064163 m!4670237))

(assert (=> b!4064162 m!4671159))

(declare-fun m!4671311 () Bool)

(assert (=> b!4064162 m!4671311))

(assert (=> b!4064162 m!4671159))

(assert (=> b!4064162 m!4671311))

(declare-fun m!4671313 () Bool)

(assert (=> b!4064162 m!4671313))

(assert (=> b!4063398 d!1208291))

(declare-fun d!1208293 () Bool)

(assert (=> d!1208293 (isPrefix!4055 lt!1452329 (++!11370 lt!1452329 (_2!24365 (v!39805 lt!1452364))))))

(declare-fun lt!1452663 () Unit!62862)

(assert (=> d!1208293 (= lt!1452663 (choose!24733 lt!1452329 (_2!24365 (v!39805 lt!1452364))))))

(assert (=> d!1208293 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452329 (_2!24365 (v!39805 lt!1452364))) lt!1452663)))

(declare-fun bs!592298 () Bool)

(assert (= bs!592298 d!1208293))

(assert (=> bs!592298 m!4670233))

(assert (=> bs!592298 m!4670233))

(declare-fun m!4671315 () Bool)

(assert (=> bs!592298 m!4671315))

(declare-fun m!4671317 () Bool)

(assert (=> bs!592298 m!4671317))

(assert (=> b!4063398 d!1208293))

(declare-fun d!1208295 () Bool)

(declare-fun e!2521987 () Bool)

(assert (=> d!1208295 e!2521987))

(declare-fun res!1658270 () Bool)

(assert (=> d!1208295 (=> (not res!1658270) (not e!2521987))))

(declare-fun lt!1452664 () List!43527)

(assert (=> d!1208295 (= res!1658270 (= (content!6626 lt!1452664) ((_ map or) (content!6626 lt!1452329) (content!6626 newSuffixResult!27))))))

(declare-fun e!2521988 () List!43527)

(assert (=> d!1208295 (= lt!1452664 e!2521988)))

(declare-fun c!701856 () Bool)

(assert (=> d!1208295 (= c!701856 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208295 (= (++!11370 lt!1452329 newSuffixResult!27) lt!1452664)))

(declare-fun b!4064166 () Bool)

(declare-fun res!1658269 () Bool)

(assert (=> b!4064166 (=> (not res!1658269) (not e!2521987))))

(assert (=> b!4064166 (= res!1658269 (= (size!32452 lt!1452664) (+ (size!32452 lt!1452329) (size!32452 newSuffixResult!27))))))

(declare-fun b!4064164 () Bool)

(assert (=> b!4064164 (= e!2521988 newSuffixResult!27)))

(declare-fun b!4064167 () Bool)

(assert (=> b!4064167 (= e!2521987 (or (not (= newSuffixResult!27 Nil!43403)) (= lt!1452664 lt!1452329)))))

(declare-fun b!4064165 () Bool)

(assert (=> b!4064165 (= e!2521988 (Cons!43403 (h!48823 lt!1452329) (++!11370 (t!336734 lt!1452329) newSuffixResult!27)))))

(assert (= (and d!1208295 c!701856) b!4064164))

(assert (= (and d!1208295 (not c!701856)) b!4064165))

(assert (= (and d!1208295 res!1658270) b!4064166))

(assert (= (and b!4064166 res!1658269) b!4064167))

(declare-fun m!4671319 () Bool)

(assert (=> d!1208295 m!4671319))

(assert (=> d!1208295 m!4671279))

(assert (=> d!1208295 m!4671201))

(declare-fun m!4671321 () Bool)

(assert (=> b!4064166 m!4671321))

(assert (=> b!4064166 m!4670237))

(assert (=> b!4064166 m!4671205))

(declare-fun m!4671323 () Bool)

(assert (=> b!4064165 m!4671323))

(assert (=> b!4063398 d!1208295))

(declare-fun d!1208297 () Bool)

(assert (=> d!1208297 (ruleValid!2898 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))

(declare-fun lt!1452665 () Unit!62862)

(assert (=> d!1208297 (= lt!1452665 (choose!24729 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))) rules!2999))))

(assert (=> d!1208297 (contains!8636 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))

(assert (=> d!1208297 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1968 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))) rules!2999) lt!1452665)))

(declare-fun bs!592299 () Bool)

(assert (= bs!592299 d!1208297))

(assert (=> bs!592299 m!4670245))

(declare-fun m!4671325 () Bool)

(assert (=> bs!592299 m!4671325))

(assert (=> bs!592299 m!4670217))

(assert (=> b!4063398 d!1208297))

(declare-fun d!1208299 () Bool)

(declare-fun e!2521989 () Bool)

(assert (=> d!1208299 e!2521989))

(declare-fun res!1658272 () Bool)

(assert (=> d!1208299 (=> (not res!1658272) (not e!2521989))))

(declare-fun lt!1452666 () List!43527)

(assert (=> d!1208299 (= res!1658272 (= (content!6626 lt!1452666) ((_ map or) (content!6626 lt!1452329) (content!6626 (_2!24365 (v!39805 lt!1452364))))))))

(declare-fun e!2521990 () List!43527)

(assert (=> d!1208299 (= lt!1452666 e!2521990)))

(declare-fun c!701857 () Bool)

(assert (=> d!1208299 (= c!701857 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208299 (= (++!11370 lt!1452329 (_2!24365 (v!39805 lt!1452364))) lt!1452666)))

(declare-fun b!4064170 () Bool)

(declare-fun res!1658271 () Bool)

(assert (=> b!4064170 (=> (not res!1658271) (not e!2521989))))

(assert (=> b!4064170 (= res!1658271 (= (size!32452 lt!1452666) (+ (size!32452 lt!1452329) (size!32452 (_2!24365 (v!39805 lt!1452364))))))))

(declare-fun b!4064168 () Bool)

(assert (=> b!4064168 (= e!2521990 (_2!24365 (v!39805 lt!1452364)))))

(declare-fun b!4064171 () Bool)

(assert (=> b!4064171 (= e!2521989 (or (not (= (_2!24365 (v!39805 lt!1452364)) Nil!43403)) (= lt!1452666 lt!1452329)))))

(declare-fun b!4064169 () Bool)

(assert (=> b!4064169 (= e!2521990 (Cons!43403 (h!48823 lt!1452329) (++!11370 (t!336734 lt!1452329) (_2!24365 (v!39805 lt!1452364)))))))

(assert (= (and d!1208299 c!701857) b!4064168))

(assert (= (and d!1208299 (not c!701857)) b!4064169))

(assert (= (and d!1208299 res!1658272) b!4064170))

(assert (= (and b!4064170 res!1658271) b!4064171))

(declare-fun m!4671327 () Bool)

(assert (=> d!1208299 m!4671327))

(assert (=> d!1208299 m!4671279))

(declare-fun m!4671329 () Bool)

(assert (=> d!1208299 m!4671329))

(declare-fun m!4671331 () Bool)

(assert (=> b!4064170 m!4671331))

(assert (=> b!4064170 m!4670237))

(declare-fun m!4671333 () Bool)

(assert (=> b!4064170 m!4671333))

(declare-fun m!4671335 () Bool)

(assert (=> b!4064169 m!4671335))

(assert (=> b!4063398 d!1208299))

(declare-fun d!1208301 () Bool)

(assert (=> d!1208301 (= (seqFromList!5185 lt!1452329) (fromListB!2368 lt!1452329))))

(declare-fun bs!592300 () Bool)

(assert (= bs!592300 d!1208301))

(declare-fun m!4671337 () Bool)

(assert (=> bs!592300 m!4671337))

(assert (=> b!4063398 d!1208301))

(declare-fun b!4064172 () Bool)

(declare-fun res!1658273 () Bool)

(declare-fun e!2521993 () Bool)

(assert (=> b!4064172 (=> (not res!1658273) (not e!2521993))))

(declare-fun lt!1452669 () Option!9382)

(assert (=> b!4064172 (= res!1658273 (< (size!32452 (_2!24365 (get!14236 lt!1452669))) (size!32452 lt!1452378)))))

(declare-fun d!1208303 () Bool)

(declare-fun e!2521991 () Bool)

(assert (=> d!1208303 e!2521991))

(declare-fun res!1658278 () Bool)

(assert (=> d!1208303 (=> res!1658278 e!2521991)))

(assert (=> d!1208303 (= res!1658278 (isEmpty!25905 lt!1452669))))

(declare-fun e!2521992 () Option!9382)

(assert (=> d!1208303 (= lt!1452669 e!2521992)))

(declare-fun c!701858 () Bool)

(declare-fun lt!1452667 () tuple2!42466)

(assert (=> d!1208303 (= c!701858 (isEmpty!25903 (_1!24367 lt!1452667)))))

(assert (=> d!1208303 (= lt!1452667 (findLongestMatch!1324 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452378))))

(assert (=> d!1208303 (ruleValid!2898 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))

(assert (=> d!1208303 (= (maxPrefixOneRule!2867 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364))) lt!1452378) lt!1452669)))

(declare-fun b!4064173 () Bool)

(declare-fun res!1658277 () Bool)

(assert (=> b!4064173 (=> (not res!1658277) (not e!2521993))))

(assert (=> b!4064173 (= res!1658277 (= (++!11370 (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452669)))) (_2!24365 (get!14236 lt!1452669))) lt!1452378))))

(declare-fun b!4064174 () Bool)

(assert (=> b!4064174 (= e!2521993 (= (size!32451 (_1!24365 (get!14236 lt!1452669))) (size!32452 (originalCharacters!7568 (_1!24365 (get!14236 lt!1452669))))))))

(declare-fun b!4064175 () Bool)

(declare-fun res!1658279 () Bool)

(assert (=> b!4064175 (=> (not res!1658279) (not e!2521993))))

(assert (=> b!4064175 (= res!1658279 (= (rule!10064 (_1!24365 (get!14236 lt!1452669))) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun b!4064176 () Bool)

(assert (=> b!4064176 (= e!2521992 None!9381)))

(declare-fun b!4064177 () Bool)

(assert (=> b!4064177 (= e!2521991 e!2521993)))

(declare-fun res!1658274 () Bool)

(assert (=> b!4064177 (=> (not res!1658274) (not e!2521993))))

(assert (=> b!4064177 (= res!1658274 (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452669))))))))

(declare-fun b!4064178 () Bool)

(assert (=> b!4064178 (= e!2521992 (Some!9381 (tuple2!42463 (Token!13075 (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (seqFromList!5185 (_1!24367 lt!1452667))) (rule!10064 (_1!24365 (v!39805 lt!1452364))) (size!32454 (seqFromList!5185 (_1!24367 lt!1452667))) (_1!24367 lt!1452667)) (_2!24367 lt!1452667))))))

(declare-fun lt!1452670 () Unit!62862)

(assert (=> b!4064178 (= lt!1452670 (longestMatchIsAcceptedByMatchOrIsEmpty!1384 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452378))))

(declare-fun res!1658275 () Bool)

(assert (=> b!4064178 (= res!1658275 (isEmpty!25903 (_1!24367 (findLongestMatchInner!1411 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) Nil!43403 (size!32452 Nil!43403) lt!1452378 lt!1452378 (size!32452 lt!1452378)))))))

(declare-fun e!2521994 () Bool)

(assert (=> b!4064178 (=> res!1658275 e!2521994)))

(assert (=> b!4064178 e!2521994))

(declare-fun lt!1452668 () Unit!62862)

(assert (=> b!4064178 (= lt!1452668 lt!1452670)))

(declare-fun lt!1452671 () Unit!62862)

(assert (=> b!4064178 (= lt!1452671 (lemmaSemiInverse!1939 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (seqFromList!5185 (_1!24367 lt!1452667))))))

(declare-fun b!4064179 () Bool)

(assert (=> b!4064179 (= e!2521994 (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (_1!24367 (findLongestMatchInner!1411 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) Nil!43403 (size!32452 Nil!43403) lt!1452378 lt!1452378 (size!32452 lt!1452378)))))))

(declare-fun b!4064180 () Bool)

(declare-fun res!1658276 () Bool)

(assert (=> b!4064180 (=> (not res!1658276) (not e!2521993))))

(assert (=> b!4064180 (= res!1658276 (= (value!219222 (_1!24365 (get!14236 lt!1452669))) (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (get!14236 lt!1452669)))) (seqFromList!5185 (originalCharacters!7568 (_1!24365 (get!14236 lt!1452669)))))))))

(assert (= (and d!1208303 c!701858) b!4064176))

(assert (= (and d!1208303 (not c!701858)) b!4064178))

(assert (= (and b!4064178 (not res!1658275)) b!4064179))

(assert (= (and d!1208303 (not res!1658278)) b!4064177))

(assert (= (and b!4064177 res!1658274) b!4064173))

(assert (= (and b!4064173 res!1658277) b!4064172))

(assert (= (and b!4064172 res!1658273) b!4064175))

(assert (= (and b!4064175 res!1658279) b!4064180))

(assert (= (and b!4064180 res!1658276) b!4064174))

(declare-fun m!4671339 () Bool)

(assert (=> b!4064175 m!4671339))

(assert (=> b!4064173 m!4671339))

(declare-fun m!4671341 () Bool)

(assert (=> b!4064173 m!4671341))

(assert (=> b!4064173 m!4671341))

(declare-fun m!4671343 () Bool)

(assert (=> b!4064173 m!4671343))

(assert (=> b!4064173 m!4671343))

(declare-fun m!4671345 () Bool)

(assert (=> b!4064173 m!4671345))

(assert (=> b!4064180 m!4671339))

(declare-fun m!4671347 () Bool)

(assert (=> b!4064180 m!4671347))

(assert (=> b!4064180 m!4671347))

(declare-fun m!4671349 () Bool)

(assert (=> b!4064180 m!4671349))

(assert (=> b!4064177 m!4671339))

(assert (=> b!4064177 m!4671341))

(assert (=> b!4064177 m!4671341))

(assert (=> b!4064177 m!4671343))

(assert (=> b!4064177 m!4671343))

(declare-fun m!4671351 () Bool)

(assert (=> b!4064177 m!4671351))

(declare-fun m!4671353 () Bool)

(assert (=> d!1208303 m!4671353))

(declare-fun m!4671355 () Bool)

(assert (=> d!1208303 m!4671355))

(declare-fun m!4671357 () Bool)

(assert (=> d!1208303 m!4671357))

(assert (=> d!1208303 m!4670245))

(assert (=> b!4064172 m!4671339))

(declare-fun m!4671359 () Bool)

(assert (=> b!4064172 m!4671359))

(assert (=> b!4064172 m!4670489))

(assert (=> b!4064179 m!4671089))

(assert (=> b!4064179 m!4670489))

(assert (=> b!4064179 m!4671089))

(assert (=> b!4064179 m!4670489))

(declare-fun m!4671361 () Bool)

(assert (=> b!4064179 m!4671361))

(declare-fun m!4671363 () Bool)

(assert (=> b!4064179 m!4671363))

(declare-fun m!4671365 () Bool)

(assert (=> b!4064178 m!4671365))

(declare-fun m!4671367 () Bool)

(assert (=> b!4064178 m!4671367))

(assert (=> b!4064178 m!4671365))

(declare-fun m!4671369 () Bool)

(assert (=> b!4064178 m!4671369))

(declare-fun m!4671371 () Bool)

(assert (=> b!4064178 m!4671371))

(assert (=> b!4064178 m!4671365))

(assert (=> b!4064178 m!4670489))

(assert (=> b!4064178 m!4671089))

(assert (=> b!4064178 m!4670489))

(assert (=> b!4064178 m!4671361))

(declare-fun m!4671373 () Bool)

(assert (=> b!4064178 m!4671373))

(assert (=> b!4064178 m!4671365))

(declare-fun m!4671375 () Bool)

(assert (=> b!4064178 m!4671375))

(assert (=> b!4064178 m!4671089))

(assert (=> b!4064174 m!4671339))

(declare-fun m!4671377 () Bool)

(assert (=> b!4064174 m!4671377))

(assert (=> b!4063398 d!1208303))

(declare-fun d!1208305 () Bool)

(declare-fun res!1658280 () Bool)

(declare-fun e!2521995 () Bool)

(assert (=> d!1208305 (=> (not res!1658280) (not e!2521995))))

(assert (=> d!1208305 (= res!1658280 (validRegex!5374 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))))))

(assert (=> d!1208305 (= (ruleValid!2898 thiss!21717 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) e!2521995)))

(declare-fun b!4064181 () Bool)

(declare-fun res!1658281 () Bool)

(assert (=> b!4064181 (=> (not res!1658281) (not e!2521995))))

(assert (=> b!4064181 (= res!1658281 (not (nullable!4174 (regex!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(declare-fun b!4064182 () Bool)

(assert (=> b!4064182 (= e!2521995 (not (= (tag!7828 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (String!49709 ""))))))

(assert (= (and d!1208305 res!1658280) b!4064181))

(assert (= (and b!4064181 res!1658281) b!4064182))

(assert (=> d!1208305 m!4671163))

(assert (=> b!4064181 m!4671167))

(assert (=> b!4063398 d!1208305))

(declare-fun d!1208307 () Bool)

(assert (=> d!1208307 (= (list!16180 (charsOf!4784 (_1!24365 (v!39805 lt!1452364)))) (list!16182 (c!701728 (charsOf!4784 (_1!24365 (v!39805 lt!1452364))))))))

(declare-fun bs!592301 () Bool)

(assert (= bs!592301 d!1208307))

(declare-fun m!4671379 () Bool)

(assert (=> bs!592301 m!4671379))

(assert (=> b!4063398 d!1208307))

(declare-fun d!1208309 () Bool)

(declare-fun e!2521996 () Bool)

(assert (=> d!1208309 e!2521996))

(declare-fun res!1658282 () Bool)

(assert (=> d!1208309 (=> (not res!1658282) (not e!2521996))))

(assert (=> d!1208309 (= res!1658282 (semiInverseModEq!2982 (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(declare-fun Unit!62878 () Unit!62862)

(assert (=> d!1208309 (= (lemmaInv!1177 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) Unit!62878)))

(declare-fun b!4064183 () Bool)

(assert (=> b!4064183 (= e!2521996 (equivClasses!2881 (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))))

(assert (= (and d!1208309 res!1658282) b!4064183))

(declare-fun m!4671381 () Bool)

(assert (=> d!1208309 m!4671381))

(declare-fun m!4671383 () Bool)

(assert (=> b!4064183 m!4671383))

(assert (=> b!4063398 d!1208309))

(declare-fun d!1208311 () Bool)

(assert (=> d!1208311 (isPrefix!4055 lt!1452329 (++!11370 lt!1452329 newSuffixResult!27))))

(declare-fun lt!1452672 () Unit!62862)

(assert (=> d!1208311 (= lt!1452672 (choose!24733 lt!1452329 newSuffixResult!27))))

(assert (=> d!1208311 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452329 newSuffixResult!27) lt!1452672)))

(declare-fun bs!592302 () Bool)

(assert (= bs!592302 d!1208311))

(assert (=> bs!592302 m!4670223))

(assert (=> bs!592302 m!4670223))

(assert (=> bs!592302 m!4670225))

(declare-fun m!4671385 () Bool)

(assert (=> bs!592302 m!4671385))

(assert (=> b!4063398 d!1208311))

(declare-fun d!1208313 () Bool)

(assert (=> d!1208313 (= (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) (seqFromList!5185 lt!1452329)) (dynLambda!18445 (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (seqFromList!5185 lt!1452329)))))

(declare-fun b_lambda!118765 () Bool)

(assert (=> (not b_lambda!118765) (not d!1208313)))

(declare-fun tb!244465 () Bool)

(declare-fun t!336770 () Bool)

(assert (=> (and b!4063392 (= (toValue!9528 (transformation!6968 (h!48825 rules!2999))) (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))) t!336770) tb!244465))

(declare-fun result!296236 () Bool)

(assert (=> tb!244465 (= result!296236 (inv!21 (dynLambda!18445 (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (seqFromList!5185 lt!1452329))))))

(declare-fun m!4671387 () Bool)

(assert (=> tb!244465 m!4671387))

(assert (=> d!1208313 t!336770))

(declare-fun b_and!312431 () Bool)

(assert (= b_and!312419 (and (=> t!336770 result!296236) b_and!312431)))

(declare-fun tb!244467 () Bool)

(declare-fun t!336772 () Bool)

(assert (=> (and b!4063429 (= (toValue!9528 (transformation!6968 (rule!10064 token!484))) (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))) t!336772) tb!244467))

(declare-fun result!296238 () Bool)

(assert (= result!296238 result!296236))

(assert (=> d!1208313 t!336772))

(declare-fun b_and!312433 () Bool)

(assert (= b_and!312421 (and (=> t!336772 result!296238) b_and!312433)))

(assert (=> d!1208313 m!4670227))

(declare-fun m!4671389 () Bool)

(assert (=> d!1208313 m!4671389))

(assert (=> b!4063398 d!1208313))

(declare-fun d!1208315 () Bool)

(declare-fun lt!1452673 () BalanceConc!25952)

(assert (=> d!1208315 (= (list!16180 lt!1452673) (originalCharacters!7568 (_1!24365 (v!39805 lt!1452364))))))

(assert (=> d!1208315 (= lt!1452673 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (value!219222 (_1!24365 (v!39805 lt!1452364)))))))

(assert (=> d!1208315 (= (charsOf!4784 (_1!24365 (v!39805 lt!1452364))) lt!1452673)))

(declare-fun b_lambda!118767 () Bool)

(assert (=> (not b_lambda!118767) (not d!1208315)))

(declare-fun tb!244469 () Bool)

(declare-fun t!336774 () Bool)

(assert (=> (and b!4063392 (= (toChars!9387 (transformation!6968 (h!48825 rules!2999))) (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))) t!336774) tb!244469))

(declare-fun b!4064184 () Bool)

(declare-fun e!2521998 () Bool)

(declare-fun tp!1230530 () Bool)

(assert (=> b!4064184 (= e!2521998 (and (inv!58030 (c!701728 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (value!219222 (_1!24365 (v!39805 lt!1452364)))))) tp!1230530))))

(declare-fun result!296240 () Bool)

(assert (=> tb!244469 (= result!296240 (and (inv!58031 (dynLambda!18446 (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364))))) (value!219222 (_1!24365 (v!39805 lt!1452364))))) e!2521998))))

(assert (= tb!244469 b!4064184))

(declare-fun m!4671391 () Bool)

(assert (=> b!4064184 m!4671391))

(declare-fun m!4671393 () Bool)

(assert (=> tb!244469 m!4671393))

(assert (=> d!1208315 t!336774))

(declare-fun b_and!312435 () Bool)

(assert (= b_and!312427 (and (=> t!336774 result!296240) b_and!312435)))

(declare-fun tb!244471 () Bool)

(declare-fun t!336776 () Bool)

(assert (=> (and b!4063429 (= (toChars!9387 (transformation!6968 (rule!10064 token!484))) (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))) t!336776) tb!244471))

(declare-fun result!296242 () Bool)

(assert (= result!296242 result!296240))

(assert (=> d!1208315 t!336776))

(declare-fun b_and!312437 () Bool)

(assert (= b_and!312429 (and (=> t!336776 result!296242) b_and!312437)))

(declare-fun m!4671395 () Bool)

(assert (=> d!1208315 m!4671395))

(declare-fun m!4671397 () Bool)

(assert (=> d!1208315 m!4671397))

(assert (=> b!4063398 d!1208315))

(declare-fun d!1208317 () Bool)

(declare-fun e!2521999 () Bool)

(assert (=> d!1208317 e!2521999))

(declare-fun res!1658284 () Bool)

(assert (=> d!1208317 (=> (not res!1658284) (not e!2521999))))

(declare-fun lt!1452674 () List!43527)

(assert (=> d!1208317 (= res!1658284 (= (content!6626 lt!1452674) ((_ map or) (content!6626 lt!1452347) (content!6626 lt!1452335))))))

(declare-fun e!2522000 () List!43527)

(assert (=> d!1208317 (= lt!1452674 e!2522000)))

(declare-fun c!701859 () Bool)

(assert (=> d!1208317 (= c!701859 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208317 (= (++!11370 lt!1452347 lt!1452335) lt!1452674)))

(declare-fun b!4064187 () Bool)

(declare-fun res!1658283 () Bool)

(assert (=> b!4064187 (=> (not res!1658283) (not e!2521999))))

(assert (=> b!4064187 (= res!1658283 (= (size!32452 lt!1452674) (+ (size!32452 lt!1452347) (size!32452 lt!1452335))))))

(declare-fun b!4064185 () Bool)

(assert (=> b!4064185 (= e!2522000 lt!1452335)))

(declare-fun b!4064188 () Bool)

(assert (=> b!4064188 (= e!2521999 (or (not (= lt!1452335 Nil!43403)) (= lt!1452674 lt!1452347)))))

(declare-fun b!4064186 () Bool)

(assert (=> b!4064186 (= e!2522000 (Cons!43403 (h!48823 lt!1452347) (++!11370 (t!336734 lt!1452347) lt!1452335)))))

(assert (= (and d!1208317 c!701859) b!4064185))

(assert (= (and d!1208317 (not c!701859)) b!4064186))

(assert (= (and d!1208317 res!1658284) b!4064187))

(assert (= (and b!4064187 res!1658283) b!4064188))

(declare-fun m!4671399 () Bool)

(assert (=> d!1208317 m!4671399))

(assert (=> d!1208317 m!4670507))

(declare-fun m!4671401 () Bool)

(assert (=> d!1208317 m!4671401))

(declare-fun m!4671403 () Bool)

(assert (=> b!4064187 m!4671403))

(assert (=> b!4064187 m!4670139))

(declare-fun m!4671405 () Bool)

(assert (=> b!4064187 m!4671405))

(declare-fun m!4671407 () Bool)

(assert (=> b!4064186 m!4671407))

(assert (=> b!4063417 d!1208317))

(declare-fun d!1208319 () Bool)

(declare-fun e!2522001 () Bool)

(assert (=> d!1208319 e!2522001))

(declare-fun res!1658286 () Bool)

(assert (=> d!1208319 (=> (not res!1658286) (not e!2522001))))

(declare-fun lt!1452675 () List!43527)

(assert (=> d!1208319 (= res!1658286 (= (content!6626 lt!1452675) ((_ map or) (content!6626 lt!1452346) (content!6626 suffix!1299))))))

(declare-fun e!2522002 () List!43527)

(assert (=> d!1208319 (= lt!1452675 e!2522002)))

(declare-fun c!701860 () Bool)

(assert (=> d!1208319 (= c!701860 ((_ is Nil!43403) lt!1452346))))

(assert (=> d!1208319 (= (++!11370 lt!1452346 suffix!1299) lt!1452675)))

(declare-fun b!4064191 () Bool)

(declare-fun res!1658285 () Bool)

(assert (=> b!4064191 (=> (not res!1658285) (not e!2522001))))

(assert (=> b!4064191 (= res!1658285 (= (size!32452 lt!1452675) (+ (size!32452 lt!1452346) (size!32452 suffix!1299))))))

(declare-fun b!4064189 () Bool)

(assert (=> b!4064189 (= e!2522002 suffix!1299)))

(declare-fun b!4064192 () Bool)

(assert (=> b!4064192 (= e!2522001 (or (not (= suffix!1299 Nil!43403)) (= lt!1452675 lt!1452346)))))

(declare-fun b!4064190 () Bool)

(assert (=> b!4064190 (= e!2522002 (Cons!43403 (h!48823 lt!1452346) (++!11370 (t!336734 lt!1452346) suffix!1299)))))

(assert (= (and d!1208319 c!701860) b!4064189))

(assert (= (and d!1208319 (not c!701860)) b!4064190))

(assert (= (and d!1208319 res!1658286) b!4064191))

(assert (= (and b!4064191 res!1658285) b!4064192))

(declare-fun m!4671409 () Bool)

(assert (=> d!1208319 m!4671409))

(declare-fun m!4671411 () Bool)

(assert (=> d!1208319 m!4671411))

(declare-fun m!4671413 () Bool)

(assert (=> d!1208319 m!4671413))

(declare-fun m!4671415 () Bool)

(assert (=> b!4064191 m!4671415))

(declare-fun m!4671417 () Bool)

(assert (=> b!4064191 m!4671417))

(assert (=> b!4064191 m!4670191))

(declare-fun m!4671419 () Bool)

(assert (=> b!4064190 m!4671419))

(assert (=> b!4063417 d!1208319))

(declare-fun d!1208321 () Bool)

(declare-fun e!2522003 () Bool)

(assert (=> d!1208321 e!2522003))

(declare-fun res!1658288 () Bool)

(assert (=> d!1208321 (=> (not res!1658288) (not e!2522003))))

(declare-fun lt!1452676 () List!43527)

(assert (=> d!1208321 (= res!1658288 (= (content!6626 lt!1452676) ((_ map or) (content!6626 lt!1452373) (content!6626 suffix!1299))))))

(declare-fun e!2522004 () List!43527)

(assert (=> d!1208321 (= lt!1452676 e!2522004)))

(declare-fun c!701861 () Bool)

(assert (=> d!1208321 (= c!701861 ((_ is Nil!43403) lt!1452373))))

(assert (=> d!1208321 (= (++!11370 lt!1452373 suffix!1299) lt!1452676)))

(declare-fun b!4064195 () Bool)

(declare-fun res!1658287 () Bool)

(assert (=> b!4064195 (=> (not res!1658287) (not e!2522003))))

(assert (=> b!4064195 (= res!1658287 (= (size!32452 lt!1452676) (+ (size!32452 lt!1452373) (size!32452 suffix!1299))))))

(declare-fun b!4064193 () Bool)

(assert (=> b!4064193 (= e!2522004 suffix!1299)))

(declare-fun b!4064196 () Bool)

(assert (=> b!4064196 (= e!2522003 (or (not (= suffix!1299 Nil!43403)) (= lt!1452676 lt!1452373)))))

(declare-fun b!4064194 () Bool)

(assert (=> b!4064194 (= e!2522004 (Cons!43403 (h!48823 lt!1452373) (++!11370 (t!336734 lt!1452373) suffix!1299)))))

(assert (= (and d!1208321 c!701861) b!4064193))

(assert (= (and d!1208321 (not c!701861)) b!4064194))

(assert (= (and d!1208321 res!1658288) b!4064195))

(assert (= (and b!4064195 res!1658287) b!4064196))

(declare-fun m!4671421 () Bool)

(assert (=> d!1208321 m!4671421))

(assert (=> d!1208321 m!4670509))

(assert (=> d!1208321 m!4671413))

(declare-fun m!4671423 () Bool)

(assert (=> b!4064195 m!4671423))

(assert (=> b!4064195 m!4670513))

(assert (=> b!4064195 m!4670191))

(declare-fun m!4671425 () Bool)

(assert (=> b!4064194 m!4671425))

(assert (=> b!4063417 d!1208321))

(declare-fun d!1208323 () Bool)

(assert (=> d!1208323 (= (++!11370 (++!11370 lt!1452347 lt!1452373) suffix!1299) (++!11370 lt!1452347 (++!11370 lt!1452373 suffix!1299)))))

(declare-fun lt!1452677 () Unit!62862)

(assert (=> d!1208323 (= lt!1452677 (choose!24727 lt!1452347 lt!1452373 suffix!1299))))

(assert (=> d!1208323 (= (lemmaConcatAssociativity!2672 lt!1452347 lt!1452373 suffix!1299) lt!1452677)))

(declare-fun bs!592303 () Bool)

(assert (= bs!592303 d!1208323))

(assert (=> bs!592303 m!4670187))

(assert (=> bs!592303 m!4670187))

(declare-fun m!4671427 () Bool)

(assert (=> bs!592303 m!4671427))

(declare-fun m!4671429 () Bool)

(assert (=> bs!592303 m!4671429))

(assert (=> bs!592303 m!4670115))

(assert (=> bs!592303 m!4670115))

(declare-fun m!4671431 () Bool)

(assert (=> bs!592303 m!4671431))

(assert (=> b!4063417 d!1208323))

(declare-fun d!1208325 () Bool)

(declare-fun e!2522005 () Bool)

(assert (=> d!1208325 e!2522005))

(declare-fun res!1658290 () Bool)

(assert (=> d!1208325 (=> (not res!1658290) (not e!2522005))))

(declare-fun lt!1452678 () List!43527)

(assert (=> d!1208325 (= res!1658290 (= (content!6626 lt!1452678) ((_ map or) (content!6626 lt!1452347) (content!6626 lt!1452369))))))

(declare-fun e!2522006 () List!43527)

(assert (=> d!1208325 (= lt!1452678 e!2522006)))

(declare-fun c!701862 () Bool)

(assert (=> d!1208325 (= c!701862 ((_ is Nil!43403) lt!1452347))))

(assert (=> d!1208325 (= (++!11370 lt!1452347 lt!1452369) lt!1452678)))

(declare-fun b!4064199 () Bool)

(declare-fun res!1658289 () Bool)

(assert (=> b!4064199 (=> (not res!1658289) (not e!2522005))))

(assert (=> b!4064199 (= res!1658289 (= (size!32452 lt!1452678) (+ (size!32452 lt!1452347) (size!32452 lt!1452369))))))

(declare-fun b!4064197 () Bool)

(assert (=> b!4064197 (= e!2522006 lt!1452369)))

(declare-fun b!4064200 () Bool)

(assert (=> b!4064200 (= e!2522005 (or (not (= lt!1452369 Nil!43403)) (= lt!1452678 lt!1452347)))))

(declare-fun b!4064198 () Bool)

(assert (=> b!4064198 (= e!2522006 (Cons!43403 (h!48823 lt!1452347) (++!11370 (t!336734 lt!1452347) lt!1452369)))))

(assert (= (and d!1208325 c!701862) b!4064197))

(assert (= (and d!1208325 (not c!701862)) b!4064198))

(assert (= (and d!1208325 res!1658290) b!4064199))

(assert (= (and b!4064199 res!1658289) b!4064200))

(declare-fun m!4671433 () Bool)

(assert (=> d!1208325 m!4671433))

(assert (=> d!1208325 m!4670507))

(declare-fun m!4671435 () Bool)

(assert (=> d!1208325 m!4671435))

(declare-fun m!4671437 () Bool)

(assert (=> b!4064199 m!4671437))

(assert (=> b!4064199 m!4670139))

(declare-fun m!4671439 () Bool)

(assert (=> b!4064199 m!4671439))

(declare-fun m!4671441 () Bool)

(assert (=> b!4064198 m!4671441))

(assert (=> b!4063396 d!1208325))

(declare-fun d!1208327 () Bool)

(declare-fun lt!1452679 () List!43527)

(assert (=> d!1208327 (= (++!11370 lt!1452347 lt!1452679) lt!1452356)))

(declare-fun e!2522007 () List!43527)

(assert (=> d!1208327 (= lt!1452679 e!2522007)))

(declare-fun c!701863 () Bool)

(assert (=> d!1208327 (= c!701863 ((_ is Cons!43403) lt!1452347))))

(assert (=> d!1208327 (>= (size!32452 lt!1452356) (size!32452 lt!1452347))))

(assert (=> d!1208327 (= (getSuffix!2472 lt!1452356 lt!1452347) lt!1452679)))

(declare-fun b!4064201 () Bool)

(assert (=> b!4064201 (= e!2522007 (getSuffix!2472 (tail!6309 lt!1452356) (t!336734 lt!1452347)))))

(declare-fun b!4064202 () Bool)

(assert (=> b!4064202 (= e!2522007 lt!1452356)))

(assert (= (and d!1208327 c!701863) b!4064201))

(assert (= (and d!1208327 (not c!701863)) b!4064202))

(declare-fun m!4671443 () Bool)

(assert (=> d!1208327 m!4671443))

(assert (=> d!1208327 m!4671087))

(assert (=> d!1208327 m!4670139))

(assert (=> b!4064201 m!4671141))

(assert (=> b!4064201 m!4671141))

(declare-fun m!4671445 () Bool)

(assert (=> b!4064201 m!4671445))

(assert (=> b!4063396 d!1208327))

(declare-fun b!4064204 () Bool)

(declare-fun res!1658291 () Bool)

(declare-fun e!2522008 () Bool)

(assert (=> b!4064204 (=> (not res!1658291) (not e!2522008))))

(assert (=> b!4064204 (= res!1658291 (= (head!8577 lt!1452356) (head!8577 lt!1452356)))))

(declare-fun b!4064206 () Bool)

(declare-fun e!2522009 () Bool)

(assert (=> b!4064206 (= e!2522009 (>= (size!32452 lt!1452356) (size!32452 lt!1452356)))))

(declare-fun d!1208329 () Bool)

(assert (=> d!1208329 e!2522009))

(declare-fun res!1658294 () Bool)

(assert (=> d!1208329 (=> res!1658294 e!2522009)))

(declare-fun lt!1452680 () Bool)

(assert (=> d!1208329 (= res!1658294 (not lt!1452680))))

(declare-fun e!2522010 () Bool)

(assert (=> d!1208329 (= lt!1452680 e!2522010)))

(declare-fun res!1658293 () Bool)

(assert (=> d!1208329 (=> res!1658293 e!2522010)))

(assert (=> d!1208329 (= res!1658293 ((_ is Nil!43403) lt!1452356))))

(assert (=> d!1208329 (= (isPrefix!4055 lt!1452356 lt!1452356) lt!1452680)))

(declare-fun b!4064205 () Bool)

(assert (=> b!4064205 (= e!2522008 (isPrefix!4055 (tail!6309 lt!1452356) (tail!6309 lt!1452356)))))

(declare-fun b!4064203 () Bool)

(assert (=> b!4064203 (= e!2522010 e!2522008)))

(declare-fun res!1658292 () Bool)

(assert (=> b!4064203 (=> (not res!1658292) (not e!2522008))))

(assert (=> b!4064203 (= res!1658292 (not ((_ is Nil!43403) lt!1452356)))))

(assert (= (and d!1208329 (not res!1658293)) b!4064203))

(assert (= (and b!4064203 res!1658292) b!4064204))

(assert (= (and b!4064204 res!1658291) b!4064205))

(assert (= (and d!1208329 (not res!1658294)) b!4064206))

(assert (=> b!4064204 m!4671139))

(assert (=> b!4064204 m!4671139))

(assert (=> b!4064206 m!4671087))

(assert (=> b!4064206 m!4671087))

(assert (=> b!4064205 m!4671141))

(assert (=> b!4064205 m!4671141))

(assert (=> b!4064205 m!4671141))

(assert (=> b!4064205 m!4671141))

(declare-fun m!4671447 () Bool)

(assert (=> b!4064205 m!4671447))

(assert (=> b!4063396 d!1208329))

(declare-fun d!1208331 () Bool)

(assert (=> d!1208331 (isPrefix!4055 lt!1452356 lt!1452356)))

(declare-fun lt!1452683 () Unit!62862)

(declare-fun choose!24742 (List!43527 List!43527) Unit!62862)

(assert (=> d!1208331 (= lt!1452683 (choose!24742 lt!1452356 lt!1452356))))

(assert (=> d!1208331 (= (lemmaIsPrefixRefl!2622 lt!1452356 lt!1452356) lt!1452683)))

(declare-fun bs!592304 () Bool)

(assert (= bs!592304 d!1208331))

(assert (=> bs!592304 m!4670277))

(declare-fun m!4671449 () Bool)

(assert (=> bs!592304 m!4671449))

(assert (=> b!4063396 d!1208331))

(declare-fun d!1208333 () Bool)

(declare-fun lt!1452684 () Bool)

(assert (=> d!1208333 (= lt!1452684 (select (content!6625 rules!2999) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun e!2522012 () Bool)

(assert (=> d!1208333 (= lt!1452684 e!2522012)))

(declare-fun res!1658296 () Bool)

(assert (=> d!1208333 (=> (not res!1658296) (not e!2522012))))

(assert (=> d!1208333 (= res!1658296 ((_ is Cons!43405) rules!2999))))

(assert (=> d!1208333 (= (contains!8636 rules!2999 (rule!10064 (_1!24365 (v!39805 lt!1452364)))) lt!1452684)))

(declare-fun b!4064207 () Bool)

(declare-fun e!2522011 () Bool)

(assert (=> b!4064207 (= e!2522012 e!2522011)))

(declare-fun res!1658295 () Bool)

(assert (=> b!4064207 (=> res!1658295 e!2522011)))

(assert (=> b!4064207 (= res!1658295 (= (h!48825 rules!2999) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(declare-fun b!4064208 () Bool)

(assert (=> b!4064208 (= e!2522011 (contains!8636 (t!336736 rules!2999) (rule!10064 (_1!24365 (v!39805 lt!1452364)))))))

(assert (= (and d!1208333 res!1658296) b!4064207))

(assert (= (and b!4064207 (not res!1658295)) b!4064208))

(assert (=> d!1208333 m!4670459))

(declare-fun m!4671451 () Bool)

(assert (=> d!1208333 m!4671451))

(declare-fun m!4671453 () Bool)

(assert (=> b!4064208 m!4671453))

(assert (=> b!4063421 d!1208333))

(declare-fun d!1208335 () Bool)

(assert (=> d!1208335 (= (isEmpty!25903 lt!1452329) ((_ is Nil!43403) lt!1452329))))

(assert (=> b!4063422 d!1208335))

(declare-fun d!1208337 () Bool)

(assert (=> d!1208337 (= (_2!24365 (v!39805 lt!1452364)) lt!1452383)))

(declare-fun lt!1452685 () Unit!62862)

(assert (=> d!1208337 (= lt!1452685 (choose!24732 lt!1452329 (_2!24365 (v!39805 lt!1452364)) lt!1452329 lt!1452383 lt!1452378))))

(assert (=> d!1208337 (isPrefix!4055 lt!1452329 lt!1452378)))

(assert (=> d!1208337 (= (lemmaSamePrefixThenSameSuffix!2216 lt!1452329 (_2!24365 (v!39805 lt!1452364)) lt!1452329 lt!1452383 lt!1452378) lt!1452685)))

(declare-fun bs!592305 () Bool)

(assert (= bs!592305 d!1208337))

(declare-fun m!4671455 () Bool)

(assert (=> bs!592305 m!4671455))

(assert (=> bs!592305 m!4670163))

(assert (=> b!4063420 d!1208337))

(declare-fun b!4064210 () Bool)

(declare-fun res!1658297 () Bool)

(declare-fun e!2522013 () Bool)

(assert (=> b!4064210 (=> (not res!1658297) (not e!2522013))))

(assert (=> b!4064210 (= res!1658297 (= (head!8577 lt!1452329) (head!8577 lt!1452384)))))

(declare-fun b!4064212 () Bool)

(declare-fun e!2522014 () Bool)

(assert (=> b!4064212 (= e!2522014 (>= (size!32452 lt!1452384) (size!32452 lt!1452329)))))

(declare-fun d!1208339 () Bool)

(assert (=> d!1208339 e!2522014))

(declare-fun res!1658300 () Bool)

(assert (=> d!1208339 (=> res!1658300 e!2522014)))

(declare-fun lt!1452686 () Bool)

(assert (=> d!1208339 (= res!1658300 (not lt!1452686))))

(declare-fun e!2522015 () Bool)

(assert (=> d!1208339 (= lt!1452686 e!2522015)))

(declare-fun res!1658299 () Bool)

(assert (=> d!1208339 (=> res!1658299 e!2522015)))

(assert (=> d!1208339 (= res!1658299 ((_ is Nil!43403) lt!1452329))))

(assert (=> d!1208339 (= (isPrefix!4055 lt!1452329 lt!1452384) lt!1452686)))

(declare-fun b!4064211 () Bool)

(assert (=> b!4064211 (= e!2522013 (isPrefix!4055 (tail!6309 lt!1452329) (tail!6309 lt!1452384)))))

(declare-fun b!4064209 () Bool)

(assert (=> b!4064209 (= e!2522015 e!2522013)))

(declare-fun res!1658298 () Bool)

(assert (=> b!4064209 (=> (not res!1658298) (not e!2522013))))

(assert (=> b!4064209 (= res!1658298 (not ((_ is Nil!43403) lt!1452384)))))

(assert (= (and d!1208339 (not res!1658299)) b!4064209))

(assert (= (and b!4064209 res!1658298) b!4064210))

(assert (= (and b!4064210 res!1658297) b!4064211))

(assert (= (and d!1208339 (not res!1658300)) b!4064212))

(assert (=> b!4064210 m!4671155))

(declare-fun m!4671457 () Bool)

(assert (=> b!4064210 m!4671457))

(declare-fun m!4671459 () Bool)

(assert (=> b!4064212 m!4671459))

(assert (=> b!4064212 m!4670237))

(assert (=> b!4064211 m!4671159))

(declare-fun m!4671461 () Bool)

(assert (=> b!4064211 m!4671461))

(assert (=> b!4064211 m!4671159))

(assert (=> b!4064211 m!4671461))

(declare-fun m!4671463 () Bool)

(assert (=> b!4064211 m!4671463))

(assert (=> b!4063420 d!1208339))

(declare-fun d!1208341 () Bool)

(assert (=> d!1208341 (isPrefix!4055 lt!1452329 (++!11370 lt!1452329 lt!1452383))))

(declare-fun lt!1452687 () Unit!62862)

(assert (=> d!1208341 (= lt!1452687 (choose!24733 lt!1452329 lt!1452383))))

(assert (=> d!1208341 (= (lemmaConcatTwoListThenFirstIsPrefix!2890 lt!1452329 lt!1452383) lt!1452687)))

(declare-fun bs!592306 () Bool)

(assert (= bs!592306 d!1208341))

(assert (=> bs!592306 m!4670155))

(assert (=> bs!592306 m!4670155))

(declare-fun m!4671465 () Bool)

(assert (=> bs!592306 m!4671465))

(declare-fun m!4671467 () Bool)

(assert (=> bs!592306 m!4671467))

(assert (=> b!4063420 d!1208341))

(declare-fun b!4064213 () Bool)

(declare-fun res!1658303 () Bool)

(declare-fun e!2522017 () Bool)

(assert (=> b!4064213 (=> (not res!1658303) (not e!2522017))))

(declare-fun lt!1452691 () Option!9382)

(assert (=> b!4064213 (= res!1658303 (< (size!32452 (_2!24365 (get!14236 lt!1452691))) (size!32452 lt!1452356)))))

(declare-fun d!1208343 () Bool)

(declare-fun e!2522016 () Bool)

(assert (=> d!1208343 e!2522016))

(declare-fun res!1658306 () Bool)

(assert (=> d!1208343 (=> res!1658306 e!2522016)))

(assert (=> d!1208343 (= res!1658306 (isEmpty!25905 lt!1452691))))

(declare-fun e!2522018 () Option!9382)

(assert (=> d!1208343 (= lt!1452691 e!2522018)))

(declare-fun c!701864 () Bool)

(assert (=> d!1208343 (= c!701864 (and ((_ is Cons!43405) rules!2999) ((_ is Nil!43405) (t!336736 rules!2999))))))

(declare-fun lt!1452689 () Unit!62862)

(declare-fun lt!1452688 () Unit!62862)

(assert (=> d!1208343 (= lt!1452689 lt!1452688)))

(assert (=> d!1208343 (isPrefix!4055 lt!1452356 lt!1452356)))

(assert (=> d!1208343 (= lt!1452688 (lemmaIsPrefixRefl!2622 lt!1452356 lt!1452356))))

(assert (=> d!1208343 (rulesValidInductive!2549 thiss!21717 rules!2999)))

(assert (=> d!1208343 (= (maxPrefix!3855 thiss!21717 rules!2999 lt!1452356) lt!1452691)))

(declare-fun bm!288267 () Bool)

(declare-fun call!288272 () Option!9382)

(assert (=> bm!288267 (= call!288272 (maxPrefixOneRule!2867 thiss!21717 (h!48825 rules!2999) lt!1452356))))

(declare-fun b!4064214 () Bool)

(assert (=> b!4064214 (= e!2522018 call!288272)))

(declare-fun b!4064215 () Bool)

(declare-fun lt!1452692 () Option!9382)

(declare-fun lt!1452690 () Option!9382)

(assert (=> b!4064215 (= e!2522018 (ite (and ((_ is None!9381) lt!1452692) ((_ is None!9381) lt!1452690)) None!9381 (ite ((_ is None!9381) lt!1452690) lt!1452692 (ite ((_ is None!9381) lt!1452692) lt!1452690 (ite (>= (size!32451 (_1!24365 (v!39805 lt!1452692))) (size!32451 (_1!24365 (v!39805 lt!1452690)))) lt!1452692 lt!1452690)))))))

(assert (=> b!4064215 (= lt!1452692 call!288272)))

(assert (=> b!4064215 (= lt!1452690 (maxPrefix!3855 thiss!21717 (t!336736 rules!2999) lt!1452356))))

(declare-fun b!4064216 () Bool)

(declare-fun res!1658302 () Bool)

(assert (=> b!4064216 (=> (not res!1658302) (not e!2522017))))

(assert (=> b!4064216 (= res!1658302 (= (value!219222 (_1!24365 (get!14236 lt!1452691))) (apply!10157 (transformation!6968 (rule!10064 (_1!24365 (get!14236 lt!1452691)))) (seqFromList!5185 (originalCharacters!7568 (_1!24365 (get!14236 lt!1452691)))))))))

(declare-fun b!4064217 () Bool)

(declare-fun res!1658304 () Bool)

(assert (=> b!4064217 (=> (not res!1658304) (not e!2522017))))

(assert (=> b!4064217 (= res!1658304 (= (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452691)))) (originalCharacters!7568 (_1!24365 (get!14236 lt!1452691)))))))

(declare-fun b!4064218 () Bool)

(declare-fun res!1658305 () Bool)

(assert (=> b!4064218 (=> (not res!1658305) (not e!2522017))))

(assert (=> b!4064218 (= res!1658305 (= (++!11370 (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452691)))) (_2!24365 (get!14236 lt!1452691))) lt!1452356))))

(declare-fun b!4064219 () Bool)

(assert (=> b!4064219 (= e!2522017 (contains!8636 rules!2999 (rule!10064 (_1!24365 (get!14236 lt!1452691)))))))

(declare-fun b!4064220 () Bool)

(assert (=> b!4064220 (= e!2522016 e!2522017)))

(declare-fun res!1658307 () Bool)

(assert (=> b!4064220 (=> (not res!1658307) (not e!2522017))))

(assert (=> b!4064220 (= res!1658307 (isDefined!7128 lt!1452691))))

(declare-fun b!4064221 () Bool)

(declare-fun res!1658301 () Bool)

(assert (=> b!4064221 (=> (not res!1658301) (not e!2522017))))

(assert (=> b!4064221 (= res!1658301 (matchR!5826 (regex!6968 (rule!10064 (_1!24365 (get!14236 lt!1452691)))) (list!16180 (charsOf!4784 (_1!24365 (get!14236 lt!1452691))))))))

(assert (= (and d!1208343 c!701864) b!4064214))

(assert (= (and d!1208343 (not c!701864)) b!4064215))

(assert (= (or b!4064214 b!4064215) bm!288267))

(assert (= (and d!1208343 (not res!1658306)) b!4064220))

(assert (= (and b!4064220 res!1658307) b!4064217))

(assert (= (and b!4064217 res!1658304) b!4064213))

(assert (= (and b!4064213 res!1658303) b!4064218))

(assert (= (and b!4064218 res!1658305) b!4064216))

(assert (= (and b!4064216 res!1658302) b!4064221))

(assert (= (and b!4064221 res!1658301) b!4064219))

(declare-fun m!4671469 () Bool)

(assert (=> b!4064215 m!4671469))

(declare-fun m!4671471 () Bool)

(assert (=> b!4064216 m!4671471))

(declare-fun m!4671473 () Bool)

(assert (=> b!4064216 m!4671473))

(assert (=> b!4064216 m!4671473))

(declare-fun m!4671475 () Bool)

(assert (=> b!4064216 m!4671475))

(assert (=> b!4064219 m!4671471))

(declare-fun m!4671477 () Bool)

(assert (=> b!4064219 m!4671477))

(declare-fun m!4671479 () Bool)

(assert (=> bm!288267 m!4671479))

(assert (=> b!4064218 m!4671471))

(declare-fun m!4671481 () Bool)

(assert (=> b!4064218 m!4671481))

(assert (=> b!4064218 m!4671481))

(declare-fun m!4671483 () Bool)

(assert (=> b!4064218 m!4671483))

(assert (=> b!4064218 m!4671483))

(declare-fun m!4671485 () Bool)

(assert (=> b!4064218 m!4671485))

(assert (=> b!4064213 m!4671471))

(declare-fun m!4671487 () Bool)

(assert (=> b!4064213 m!4671487))

(assert (=> b!4064213 m!4671087))

(assert (=> b!4064221 m!4671471))

(assert (=> b!4064221 m!4671481))

(assert (=> b!4064221 m!4671481))

(assert (=> b!4064221 m!4671483))

(assert (=> b!4064221 m!4671483))

(declare-fun m!4671489 () Bool)

(assert (=> b!4064221 m!4671489))

(declare-fun m!4671491 () Bool)

(assert (=> d!1208343 m!4671491))

(assert (=> d!1208343 m!4670277))

(assert (=> d!1208343 m!4670279))

(assert (=> d!1208343 m!4670983))

(assert (=> b!4064217 m!4671471))

(assert (=> b!4064217 m!4671481))

(assert (=> b!4064217 m!4671481))

(assert (=> b!4064217 m!4671483))

(declare-fun m!4671493 () Bool)

(assert (=> b!4064220 m!4671493))

(assert (=> b!4063399 d!1208343))

(declare-fun d!1208345 () Bool)

(declare-fun e!2522019 () Bool)

(assert (=> d!1208345 e!2522019))

(declare-fun res!1658309 () Bool)

(assert (=> d!1208345 (=> (not res!1658309) (not e!2522019))))

(declare-fun lt!1452693 () List!43527)

(assert (=> d!1208345 (= res!1658309 (= (content!6626 lt!1452693) ((_ map or) (content!6626 prefix!494) (content!6626 suffix!1299))))))

(declare-fun e!2522020 () List!43527)

(assert (=> d!1208345 (= lt!1452693 e!2522020)))

(declare-fun c!701865 () Bool)

(assert (=> d!1208345 (= c!701865 ((_ is Nil!43403) prefix!494))))

(assert (=> d!1208345 (= (++!11370 prefix!494 suffix!1299) lt!1452693)))

(declare-fun b!4064224 () Bool)

(declare-fun res!1658308 () Bool)

(assert (=> b!4064224 (=> (not res!1658308) (not e!2522019))))

(assert (=> b!4064224 (= res!1658308 (= (size!32452 lt!1452693) (+ (size!32452 prefix!494) (size!32452 suffix!1299))))))

(declare-fun b!4064222 () Bool)

(assert (=> b!4064222 (= e!2522020 suffix!1299)))

(declare-fun b!4064225 () Bool)

(assert (=> b!4064225 (= e!2522019 (or (not (= suffix!1299 Nil!43403)) (= lt!1452693 prefix!494)))))

(declare-fun b!4064223 () Bool)

(assert (=> b!4064223 (= e!2522020 (Cons!43403 (h!48823 prefix!494) (++!11370 (t!336734 prefix!494) suffix!1299)))))

(assert (= (and d!1208345 c!701865) b!4064222))

(assert (= (and d!1208345 (not c!701865)) b!4064223))

(assert (= (and d!1208345 res!1658309) b!4064224))

(assert (= (and b!4064224 res!1658308) b!4064225))

(declare-fun m!4671495 () Bool)

(assert (=> d!1208345 m!4671495))

(assert (=> d!1208345 m!4670471))

(assert (=> d!1208345 m!4671413))

(declare-fun m!4671497 () Bool)

(assert (=> b!4064224 m!4671497))

(assert (=> b!4064224 m!4670141))

(assert (=> b!4064224 m!4670191))

(declare-fun m!4671499 () Bool)

(assert (=> b!4064223 m!4671499))

(assert (=> b!4063399 d!1208345))

(declare-fun b!4064230 () Bool)

(declare-fun e!2522023 () Bool)

(declare-fun tp!1230533 () Bool)

(assert (=> b!4064230 (= e!2522023 (and tp_is_empty!20717 tp!1230533))))

(assert (=> b!4063381 (= tp!1230479 e!2522023)))

(assert (= (and b!4063381 ((_ is Cons!43403) (t!336734 suffixResult!105))) b!4064230))

(declare-fun b!4064231 () Bool)

(declare-fun e!2522024 () Bool)

(declare-fun tp!1230534 () Bool)

(assert (=> b!4064231 (= e!2522024 (and tp_is_empty!20717 tp!1230534))))

(assert (=> b!4063413 (= tp!1230476 e!2522024)))

(assert (= (and b!4063413 ((_ is Cons!43403) (t!336734 newSuffixResult!27))) b!4064231))

(declare-fun b!4064232 () Bool)

(declare-fun e!2522025 () Bool)

(declare-fun tp!1230535 () Bool)

(assert (=> b!4064232 (= e!2522025 (and tp_is_empty!20717 tp!1230535))))

(assert (=> b!4063403 (= tp!1230475 e!2522025)))

(assert (= (and b!4063403 ((_ is Cons!43403) (t!336734 newSuffix!27))) b!4064232))

(declare-fun b!4064233 () Bool)

(declare-fun e!2522026 () Bool)

(declare-fun tp!1230536 () Bool)

(assert (=> b!4064233 (= e!2522026 (and tp_is_empty!20717 tp!1230536))))

(assert (=> b!4063414 (= tp!1230477 e!2522026)))

(assert (= (and b!4063414 ((_ is Cons!43403) (originalCharacters!7568 token!484))) b!4064233))

(declare-fun b!4064234 () Bool)

(declare-fun e!2522027 () Bool)

(declare-fun tp!1230537 () Bool)

(assert (=> b!4064234 (= e!2522027 (and tp_is_empty!20717 tp!1230537))))

(assert (=> b!4063386 (= tp!1230480 e!2522027)))

(assert (= (and b!4063386 ((_ is Cons!43403) (t!336734 prefix!494))) b!4064234))

(declare-fun e!2522030 () Bool)

(assert (=> b!4063384 (= tp!1230474 e!2522030)))

(declare-fun b!4064246 () Bool)

(declare-fun tp!1230552 () Bool)

(declare-fun tp!1230550 () Bool)

(assert (=> b!4064246 (= e!2522030 (and tp!1230552 tp!1230550))))

(declare-fun b!4064248 () Bool)

(declare-fun tp!1230551 () Bool)

(declare-fun tp!1230549 () Bool)

(assert (=> b!4064248 (= e!2522030 (and tp!1230551 tp!1230549))))

(declare-fun b!4064247 () Bool)

(declare-fun tp!1230548 () Bool)

(assert (=> b!4064247 (= e!2522030 tp!1230548)))

(declare-fun b!4064245 () Bool)

(assert (=> b!4064245 (= e!2522030 tp_is_empty!20717)))

(assert (= (and b!4063384 ((_ is ElementMatch!11873) (regex!6968 (rule!10064 token!484)))) b!4064245))

(assert (= (and b!4063384 ((_ is Concat!19072) (regex!6968 (rule!10064 token!484)))) b!4064246))

(assert (= (and b!4063384 ((_ is Star!11873) (regex!6968 (rule!10064 token!484)))) b!4064247))

(assert (= (and b!4063384 ((_ is Union!11873) (regex!6968 (rule!10064 token!484)))) b!4064248))

(declare-fun b!4064249 () Bool)

(declare-fun e!2522031 () Bool)

(declare-fun tp!1230553 () Bool)

(assert (=> b!4064249 (= e!2522031 (and tp_is_empty!20717 tp!1230553))))

(assert (=> b!4063400 (= tp!1230472 e!2522031)))

(assert (= (and b!4063400 ((_ is Cons!43403) (t!336734 suffix!1299))) b!4064249))

(declare-fun b!4064260 () Bool)

(declare-fun b_free!113037 () Bool)

(declare-fun b_next!113741 () Bool)

(assert (=> b!4064260 (= b_free!113037 (not b_next!113741))))

(declare-fun t!336778 () Bool)

(declare-fun tb!244473 () Bool)

(assert (=> (and b!4064260 (= (toValue!9528 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toValue!9528 (transformation!6968 (rule!10064 token!484)))) t!336778) tb!244473))

(declare-fun result!296250 () Bool)

(assert (= result!296250 result!296224))

(assert (=> d!1208201 t!336778))

(declare-fun tb!244475 () Bool)

(declare-fun t!336780 () Bool)

(assert (=> (and b!4064260 (= (toValue!9528 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toValue!9528 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))) t!336780) tb!244475))

(declare-fun result!296252 () Bool)

(assert (= result!296252 result!296236))

(assert (=> d!1208313 t!336780))

(declare-fun b_and!312439 () Bool)

(declare-fun tp!1230565 () Bool)

(assert (=> b!4064260 (= tp!1230565 (and (=> t!336778 result!296250) (=> t!336780 result!296252) b_and!312439))))

(declare-fun b_free!113039 () Bool)

(declare-fun b_next!113743 () Bool)

(assert (=> b!4064260 (= b_free!113039 (not b_next!113743))))

(declare-fun t!336782 () Bool)

(declare-fun tb!244477 () Bool)

(assert (=> (and b!4064260 (= (toChars!9387 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toChars!9387 (transformation!6968 (rule!10064 token!484)))) t!336782) tb!244477))

(declare-fun result!296254 () Bool)

(assert (= result!296254 result!296230))

(assert (=> d!1208265 t!336782))

(assert (=> b!4064146 t!336782))

(declare-fun tb!244479 () Bool)

(declare-fun t!336784 () Bool)

(assert (=> (and b!4064260 (= (toChars!9387 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toChars!9387 (transformation!6968 (rule!10064 (_1!24365 (v!39805 lt!1452364)))))) t!336784) tb!244479))

(declare-fun result!296256 () Bool)

(assert (= result!296256 result!296240))

(assert (=> d!1208315 t!336784))

(declare-fun tp!1230562 () Bool)

(declare-fun b_and!312441 () Bool)

(assert (=> b!4064260 (= tp!1230562 (and (=> t!336782 result!296254) (=> t!336784 result!296256) b_and!312441))))

(declare-fun e!2522041 () Bool)

(assert (=> b!4064260 (= e!2522041 (and tp!1230565 tp!1230562))))

(declare-fun e!2522042 () Bool)

(declare-fun b!4064259 () Bool)

(declare-fun tp!1230564 () Bool)

(assert (=> b!4064259 (= e!2522042 (and tp!1230564 (inv!58023 (tag!7828 (h!48825 (t!336736 rules!2999)))) (inv!58026 (transformation!6968 (h!48825 (t!336736 rules!2999)))) e!2522041))))

(declare-fun b!4064258 () Bool)

(declare-fun e!2522040 () Bool)

(declare-fun tp!1230563 () Bool)

(assert (=> b!4064258 (= e!2522040 (and e!2522042 tp!1230563))))

(assert (=> b!4063393 (= tp!1230471 e!2522040)))

(assert (= b!4064259 b!4064260))

(assert (= b!4064258 b!4064259))

(assert (= (and b!4063393 ((_ is Cons!43405) (t!336736 rules!2999))) b!4064258))

(declare-fun m!4671501 () Bool)

(assert (=> b!4064259 m!4671501))

(declare-fun m!4671503 () Bool)

(assert (=> b!4064259 m!4671503))

(declare-fun e!2522044 () Bool)

(assert (=> b!4063409 (= tp!1230482 e!2522044)))

(declare-fun b!4064262 () Bool)

(declare-fun tp!1230570 () Bool)

(declare-fun tp!1230568 () Bool)

(assert (=> b!4064262 (= e!2522044 (and tp!1230570 tp!1230568))))

(declare-fun b!4064264 () Bool)

(declare-fun tp!1230569 () Bool)

(declare-fun tp!1230567 () Bool)

(assert (=> b!4064264 (= e!2522044 (and tp!1230569 tp!1230567))))

(declare-fun b!4064263 () Bool)

(declare-fun tp!1230566 () Bool)

(assert (=> b!4064263 (= e!2522044 tp!1230566)))

(declare-fun b!4064261 () Bool)

(assert (=> b!4064261 (= e!2522044 tp_is_empty!20717)))

(assert (= (and b!4063409 ((_ is ElementMatch!11873) (regex!6968 (h!48825 rules!2999)))) b!4064261))

(assert (= (and b!4063409 ((_ is Concat!19072) (regex!6968 (h!48825 rules!2999)))) b!4064262))

(assert (= (and b!4063409 ((_ is Star!11873) (regex!6968 (h!48825 rules!2999)))) b!4064263))

(assert (= (and b!4063409 ((_ is Union!11873) (regex!6968 (h!48825 rules!2999)))) b!4064264))

(declare-fun b_lambda!118769 () Bool)

(assert (= b_lambda!118759 (or (and b!4063392 b_free!113025 (= (toValue!9528 (transformation!6968 (h!48825 rules!2999))) (toValue!9528 (transformation!6968 (rule!10064 token!484))))) (and b!4063429 b_free!113029) (and b!4064260 b_free!113037 (= (toValue!9528 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toValue!9528 (transformation!6968 (rule!10064 token!484))))) b_lambda!118769)))

(declare-fun b_lambda!118771 () Bool)

(assert (= b_lambda!118763 (or (and b!4063392 b_free!113027 (= (toChars!9387 (transformation!6968 (h!48825 rules!2999))) (toChars!9387 (transformation!6968 (rule!10064 token!484))))) (and b!4063429 b_free!113031) (and b!4064260 b_free!113039 (= (toChars!9387 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toChars!9387 (transformation!6968 (rule!10064 token!484))))) b_lambda!118771)))

(declare-fun b_lambda!118773 () Bool)

(assert (= b_lambda!118761 (or (and b!4063392 b_free!113027 (= (toChars!9387 (transformation!6968 (h!48825 rules!2999))) (toChars!9387 (transformation!6968 (rule!10064 token!484))))) (and b!4063429 b_free!113031) (and b!4064260 b_free!113039 (= (toChars!9387 (transformation!6968 (h!48825 (t!336736 rules!2999)))) (toChars!9387 (transformation!6968 (rule!10064 token!484))))) b_lambda!118773)))

(check-sat (not b!4064035) (not b_next!113729) (not d!1208281) (not b!4064198) (not b!4064224) (not d!1207991) (not b!4064165) (not d!1208283) (not b!4064077) (not b!4064052) (not d!1208267) (not d!1208239) (not b!4064178) (not d!1208219) (not b!4064089) (not d!1208033) (not b_lambda!118765) (not d!1208059) (not b!4064059) (not d!1208217) (not b!4063625) (not b!4064010) (not d!1208061) (not d!1208309) (not d!1208065) (not b!4064205) (not b!4064126) (not b!4063731) (not b!4063914) (not d!1208223) (not b!4063721) (not b!4064060) (not b!4064081) (not d!1208067) (not d!1208235) (not b!4063908) (not b!4064221) (not b!4064029) (not b!4064175) (not b!4063936) (not b!4064020) (not b!4064230) (not d!1208227) (not b!4064173) (not b!4064014) (not b!4063737) (not b!4064220) (not b!4064054) b_and!312437 (not b!4063727) (not b!4064247) (not b!4064180) (not b!4064162) (not d!1208325) (not b!4064155) (not bm!288267) (not b!4064166) (not b!4064093) (not b!4064011) (not b!4063735) (not b!4063726) (not b!4064057) (not d!1208197) (not d!1208301) (not b!4063934) (not d!1208013) (not b!4063675) (not d!1208245) (not b!4064262) (not b!4064234) (not b!4064208) (not b!4064181) (not b!4063613) (not b!4064040) (not b_lambda!118767) (not d!1208263) (not b!4064170) (not b!4064025) (not b!4064179) (not b!4064139) (not b!4064190) (not b!4064140) (not b!4064259) (not d!1208275) b_and!312435 (not d!1208343) (not b!4064049) (not b!4064021) (not b!4063583) (not d!1208277) (not b!4064085) (not d!1208069) (not b!4064232) (not b!4064223) (not b_next!113735) (not b!4064134) (not b!4064101) (not d!1208319) (not b!4064152) (not b!4063587) (not tb!244465) (not b!4063612) (not d!1208185) (not b!4064195) (not b!4064131) (not b!4064248) (not b!4064105) (not b!4064047) (not b!4063586) (not b!4064043) (not b!4063911) (not b_lambda!118773) (not d!1208167) (not d!1208207) (not b!4064231) b_and!312441 tp_is_empty!20717 (not b!4063572) (not b!4064258) (not tb!244461) (not b!4064106) (not b!4064103) (not b!4064169) (not b!4064194) (not b!4064204) (not d!1208255) (not d!1208317) (not b!4064012) (not b!4063640) (not d!1208307) (not b!4064217) (not b!4063608) (not b!4064124) (not bm!288258) (not b!4064174) (not b!4064015) (not d!1208293) (not b!4064249) (not b!4063609) (not d!1208269) (not b!4064099) (not b!4063916) (not b!4064092) (not b!4063739) (not bm!288264) (not b!4064033) (not b!4063935) (not bm!288266) (not b!4064016) (not b!4064102) (not d!1208031) (not d!1208337) (not b_next!113741) (not d!1208331) (not b!4064146) (not b!4064158) (not d!1208241) (not d!1208311) (not b!4064141) (not b!4064213) (not b!4064212) (not b!4064095) (not d!1208303) (not b!4064084) (not b!4064163) (not b!4064009) (not b!4064216) (not b!4064161) (not d!1208299) (not b!4064107) (not b!4064215) (not bm!288265) (not b!4064157) (not b!4064201) (not b!4064183) (not b!4064147) (not b!4064246) (not b!4063590) (not d!1208029) (not b!4064218) (not b!4064219) (not d!1208225) (not d!1208021) (not b!4064233) (not b_lambda!118769) (not b!4064136) (not b!4064187) (not d!1208321) (not b!4064172) (not b_lambda!118771) (not d!1208297) (not b!4064031) (not b!4064263) (not b!4064150) (not b!4063724) (not b!4064159) (not b!4063597) (not b!4064017) (not d!1208011) (not d!1208027) (not b!4064097) (not b!4063738) (not d!1208179) (not b!4064264) (not b!4064019) (not b!4064133) (not b!4064186) (not d!1208023) (not b!4064027) (not b_next!113731) (not d!1208333) (not b!4064030) (not b!4064066) (not b!4064088) (not b!4064199) (not b!4064086) (not b!4064149) (not b!4064037) (not b!4063591) (not tb!244469) (not b!4064026) (not b!4064034) (not d!1208203) (not d!1208265) (not b!4064119) (not b!4064184) (not d!1208315) (not b!4063913) (not d!1208007) (not b!4063671) (not b_next!113733) (not b!4064210) (not b!4064120) (not b_next!113743) (not b!4063912) b_and!312439 (not tb!244457) (not d!1208205) b_and!312433 (not d!1208035) (not d!1208285) (not d!1208279) (not d!1208341) (not d!1208345) (not d!1208295) (not d!1208305) (not b!4063915) (not b!4064042) (not d!1208273) (not b!4064118) (not d!1208221) b_and!312431 (not b!4063582) (not d!1208327) (not b!4064177) (not d!1208233) (not b!4063610) (not b!4064206) (not d!1208323) (not b!4063910) (not b!4064211) (not d!1208229) (not d!1208231) (not b!4064064) (not b!4064191) (not d!1208215))
(check-sat (not b_next!113729) b_and!312437 b_and!312435 (not b_next!113735) b_and!312441 (not b_next!113741) (not b_next!113731) b_and!312431 (not b_next!113733) b_and!312439 b_and!312433 (not b_next!113743))
