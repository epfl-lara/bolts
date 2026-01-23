; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!383566 () Bool)

(assert start!383566)

(declare-fun b!4066435 () Bool)

(declare-fun b_free!113113 () Bool)

(declare-fun b_next!113817 () Bool)

(assert (=> b!4066435 (= b_free!113113 (not b_next!113817))))

(declare-fun tp!1231006 () Bool)

(declare-fun b_and!312555 () Bool)

(assert (=> b!4066435 (= tp!1231006 b_and!312555)))

(declare-fun b_free!113115 () Bool)

(declare-fun b_next!113819 () Bool)

(assert (=> b!4066435 (= b_free!113115 (not b_next!113819))))

(declare-fun tp!1231007 () Bool)

(declare-fun b_and!312557 () Bool)

(assert (=> b!4066435 (= tp!1231007 b_and!312557)))

(declare-fun b!4066459 () Bool)

(declare-fun b_free!113117 () Bool)

(declare-fun b_next!113821 () Bool)

(assert (=> b!4066459 (= b_free!113117 (not b_next!113821))))

(declare-fun tp!1231003 () Bool)

(declare-fun b_and!312559 () Bool)

(assert (=> b!4066459 (= tp!1231003 b_and!312559)))

(declare-fun b_free!113119 () Bool)

(declare-fun b_next!113823 () Bool)

(assert (=> b!4066459 (= b_free!113119 (not b_next!113823))))

(declare-fun tp!1231009 () Bool)

(declare-fun b_and!312561 () Bool)

(assert (=> b!4066459 (= tp!1231009 b_and!312561)))

(declare-fun b!4066417 () Bool)

(declare-fun res!1659646 () Bool)

(declare-fun e!2523555 () Bool)

(assert (=> b!4066417 (=> res!1659646 e!2523555)))

(declare-datatypes ((C!23950 0))(
  ( (C!23951 (val!14069 Int)) )
))
(declare-datatypes ((List!43558 0))(
  ( (Nil!43434) (Cons!43434 (h!48854 C!23950) (t!336861 List!43558)) )
))
(declare-fun lt!1454784 () List!43558)

(declare-fun lt!1454774 () List!43558)

(declare-fun isPrefix!4064 (List!43558 List!43558) Bool)

(assert (=> b!4066417 (= res!1659646 (not (isPrefix!4064 lt!1454784 lt!1454774)))))

(declare-fun b!4066418 () Bool)

(declare-datatypes ((Unit!62963 0))(
  ( (Unit!62964) )
))
(declare-fun e!2523570 () Unit!62963)

(declare-fun Unit!62965 () Unit!62963)

(assert (=> b!4066418 (= e!2523570 Unit!62965)))

(declare-fun lt!1454769 () Unit!62963)

(declare-datatypes ((IArray!26381 0))(
  ( (IArray!26382 (innerList!13248 List!43558)) )
))
(declare-datatypes ((Conc!13188 0))(
  ( (Node!13188 (left!32671 Conc!13188) (right!33001 Conc!13188) (csize!26606 Int) (cheight!13399 Int)) (Leaf!20384 (xs!16494 IArray!26381) (csize!26607 Int)) (Empty!13188) )
))
(declare-datatypes ((BalanceConc!25970 0))(
  ( (BalanceConc!25971 (c!702123 Conc!13188)) )
))
(declare-datatypes ((List!43559 0))(
  ( (Nil!43435) (Cons!43435 (h!48855 (_ BitVec 16)) (t!336862 List!43559)) )
))
(declare-datatypes ((TokenValue!7207 0))(
  ( (FloatLiteralValue!14414 (text!50894 List!43559)) (TokenValueExt!7206 (__x!26631 Int)) (Broken!36035 (value!219454 List!43559)) (Object!7330) (End!7207) (Def!7207) (Underscore!7207) (Match!7207) (Else!7207) (Error!7207) (Case!7207) (If!7207) (Extends!7207) (Abstract!7207) (Class!7207) (Val!7207) (DelimiterValue!14414 (del!7267 List!43559)) (KeywordValue!7213 (value!219455 List!43559)) (CommentValue!14414 (value!219456 List!43559)) (WhitespaceValue!14414 (value!219457 List!43559)) (IndentationValue!7207 (value!219458 List!43559)) (String!49754) (Int32!7207) (Broken!36036 (value!219459 List!43559)) (Boolean!7208) (Unit!62966) (OperatorValue!7210 (op!7267 List!43559)) (IdentifierValue!14414 (value!219460 List!43559)) (IdentifierValue!14415 (value!219461 List!43559)) (WhitespaceValue!14415 (value!219462 List!43559)) (True!14414) (False!14414) (Broken!36037 (value!219463 List!43559)) (Broken!36038 (value!219464 List!43559)) (True!14415) (RightBrace!7207) (RightBracket!7207) (Colon!7207) (Null!7207) (Comma!7207) (LeftBracket!7207) (False!14415) (LeftBrace!7207) (ImaginaryLiteralValue!7207 (text!50895 List!43559)) (StringLiteralValue!21621 (value!219465 List!43559)) (EOFValue!7207 (value!219466 List!43559)) (IdentValue!7207 (value!219467 List!43559)) (DelimiterValue!14415 (value!219468 List!43559)) (DedentValue!7207 (value!219469 List!43559)) (NewLineValue!7207 (value!219470 List!43559)) (IntegerValue!21621 (value!219471 (_ BitVec 32)) (text!50896 List!43559)) (IntegerValue!21622 (value!219472 Int) (text!50897 List!43559)) (Times!7207) (Or!7207) (Equal!7207) (Minus!7207) (Broken!36039 (value!219473 List!43559)) (And!7207) (Div!7207) (LessEqual!7207) (Mod!7207) (Concat!19089) (Not!7207) (Plus!7207) (SpaceValue!7207 (value!219474 List!43559)) (IntegerValue!21623 (value!219475 Int) (text!50898 List!43559)) (StringLiteralValue!21622 (text!50899 List!43559)) (FloatLiteralValue!14415 (text!50900 List!43559)) (BytesLiteralValue!7207 (value!219476 List!43559)) (CommentValue!14415 (value!219477 List!43559)) (StringLiteralValue!21623 (value!219478 List!43559)) (ErrorTokenValue!7207 (msg!7268 List!43559)) )
))
(declare-datatypes ((Regex!11882 0))(
  ( (ElementMatch!11882 (c!702124 C!23950)) (Concat!19090 (regOne!24276 Regex!11882) (regTwo!24276 Regex!11882)) (EmptyExpr!11882) (Star!11882 (reg!12211 Regex!11882)) (EmptyLang!11882) (Union!11882 (regOne!24277 Regex!11882) (regTwo!24277 Regex!11882)) )
))
(declare-datatypes ((String!49755 0))(
  ( (String!49756 (value!219479 String)) )
))
(declare-datatypes ((TokenValueInjection!13842 0))(
  ( (TokenValueInjection!13843 (toValue!9537 Int) (toChars!9396 Int)) )
))
(declare-datatypes ((Rule!13754 0))(
  ( (Rule!13755 (regex!6977 Regex!11882) (tag!7837 String!49755) (isSeparator!6977 Bool) (transformation!6977 TokenValueInjection!13842)) )
))
(declare-datatypes ((Token!13092 0))(
  ( (Token!13093 (value!219480 TokenValue!7207) (rule!10077 Rule!13754) (size!32473 Int) (originalCharacters!7577 List!43558)) )
))
(declare-fun token!484 () Token!13092)

(declare-fun lt!1454782 () List!43558)

(declare-datatypes ((LexerInterface!6566 0))(
  ( (LexerInterfaceExt!6563 (__x!26632 Int)) (Lexer!6564) )
))
(declare-fun thiss!21717 () LexerInterface!6566)

(declare-datatypes ((List!43560 0))(
  ( (Nil!43436) (Cons!43436 (h!48856 Rule!13754) (t!336863 List!43560)) )
))
(declare-fun rules!2999 () List!43560)

(declare-fun lt!1454752 () List!43558)

(declare-datatypes ((tuple2!42488 0))(
  ( (tuple2!42489 (_1!24378 Token!13092) (_2!24378 List!43558)) )
))
(declare-datatypes ((Option!9391 0))(
  ( (None!9390) (Some!9390 (v!39818 tuple2!42488)) )
))
(declare-fun lt!1454783 () Option!9391)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!503 (LexerInterface!6566 List!43560 Rule!13754 List!43558 List!43558 List!43558 Rule!13754) Unit!62963)

(assert (=> b!4066418 (= lt!1454769 (lemmaMaxPrefixOutputsMaxPrefix!503 thiss!21717 rules!2999 (rule!10077 token!484) lt!1454752 lt!1454782 lt!1454784 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun res!1659650 () Bool)

(declare-fun matchR!5835 (Regex!11882 List!43558) Bool)

(assert (=> b!4066418 (= res!1659650 (not (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454784)))))

(declare-fun e!2523591 () Bool)

(assert (=> b!4066418 (=> (not res!1659650) (not e!2523591))))

(assert (=> b!4066418 e!2523591))

(declare-fun b!4066419 () Bool)

(declare-fun res!1659649 () Bool)

(declare-fun e!2523569 () Bool)

(assert (=> b!4066419 (=> (not res!1659649) (not e!2523569))))

(declare-fun suffix!1299 () List!43558)

(declare-fun newSuffix!27 () List!43558)

(declare-fun size!32474 (List!43558) Int)

(assert (=> b!4066419 (= res!1659649 (>= (size!32474 suffix!1299) (size!32474 newSuffix!27)))))

(declare-fun b!4066420 () Bool)

(declare-fun e!2523585 () Bool)

(declare-fun tp_is_empty!20735 () Bool)

(declare-fun tp!1231001 () Bool)

(assert (=> b!4066420 (= e!2523585 (and tp_is_empty!20735 tp!1231001))))

(declare-fun b!4066421 () Bool)

(declare-fun e!2523572 () Bool)

(assert (=> b!4066421 (= e!2523555 e!2523572)))

(declare-fun res!1659657 () Bool)

(assert (=> b!4066421 (=> res!1659657 e!2523572)))

(declare-fun contains!8643 (List!43560 Rule!13754) Bool)

(assert (=> b!4066421 (= res!1659657 (not (contains!8643 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun lt!1454797 () Unit!62963)

(declare-fun e!2523574 () Unit!62963)

(assert (=> b!4066421 (= lt!1454797 e!2523574)))

(declare-fun c!702119 () Bool)

(declare-fun lt!1454770 () Int)

(declare-fun lt!1454791 () Int)

(assert (=> b!4066421 (= c!702119 (> lt!1454770 lt!1454791))))

(declare-fun lt!1454761 () Unit!62963)

(declare-fun e!2523590 () Unit!62963)

(assert (=> b!4066421 (= lt!1454761 e!2523590)))

(declare-fun c!702122 () Bool)

(assert (=> b!4066421 (= c!702122 (< lt!1454770 lt!1454791))))

(declare-fun getIndex!589 (List!43560 Rule!13754) Int)

(assert (=> b!4066421 (= lt!1454791 (getIndex!589 rules!2999 (rule!10077 token!484)))))

(assert (=> b!4066421 (= lt!1454770 (getIndex!589 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun newSuffixResult!27 () List!43558)

(assert (=> b!4066421 (= (_2!24378 (v!39818 lt!1454783)) newSuffixResult!27)))

(declare-fun lt!1454807 () Unit!62963)

(declare-fun lemmaSamePrefixThenSameSuffix!2225 (List!43558 List!43558 List!43558 List!43558 List!43558) Unit!62963)

(assert (=> b!4066421 (= lt!1454807 (lemmaSamePrefixThenSameSuffix!2225 lt!1454784 (_2!24378 (v!39818 lt!1454783)) lt!1454752 newSuffixResult!27 lt!1454774))))

(assert (=> b!4066421 (= lt!1454784 lt!1454752)))

(declare-fun lt!1454808 () Unit!62963)

(declare-fun lemmaIsPrefixSameLengthThenSameList!954 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> b!4066421 (= lt!1454808 (lemmaIsPrefixSameLengthThenSameList!954 lt!1454784 lt!1454752 lt!1454774))))

(declare-fun res!1659653 () Bool)

(assert (=> start!383566 (=> (not res!1659653) (not e!2523569))))

(assert (=> start!383566 (= res!1659653 (is-Lexer!6564 thiss!21717))))

(assert (=> start!383566 e!2523569))

(declare-fun e!2523559 () Bool)

(assert (=> start!383566 e!2523559))

(declare-fun e!2523577 () Bool)

(declare-fun inv!58067 (Token!13092) Bool)

(assert (=> start!383566 (and (inv!58067 token!484) e!2523577)))

(declare-fun e!2523593 () Bool)

(assert (=> start!383566 e!2523593))

(declare-fun e!2523562 () Bool)

(assert (=> start!383566 e!2523562))

(declare-fun e!2523584 () Bool)

(assert (=> start!383566 e!2523584))

(assert (=> start!383566 true))

(declare-fun e!2523594 () Bool)

(assert (=> start!383566 e!2523594))

(assert (=> start!383566 e!2523585))

(declare-fun b!4066422 () Bool)

(declare-fun e!2523580 () Bool)

(assert (=> b!4066422 (= e!2523580 false)))

(declare-fun b!4066423 () Bool)

(declare-fun e!2523565 () Bool)

(declare-fun tp!1231005 () Bool)

(assert (=> b!4066423 (= e!2523594 (and e!2523565 tp!1231005))))

(declare-fun b!4066424 () Bool)

(declare-fun tp!1231000 () Bool)

(declare-fun e!2523581 () Bool)

(declare-fun inv!21 (TokenValue!7207) Bool)

(assert (=> b!4066424 (= e!2523577 (and (inv!21 (value!219480 token!484)) e!2523581 tp!1231000))))

(declare-fun b!4066425 () Bool)

(declare-fun e!2523556 () Bool)

(declare-fun e!2523578 () Bool)

(assert (=> b!4066425 (= e!2523556 e!2523578)))

(declare-fun res!1659647 () Bool)

(assert (=> b!4066425 (=> res!1659647 e!2523578)))

(assert (=> b!4066425 (= res!1659647 (not (matchR!5835 (regex!6977 (rule!10077 token!484)) lt!1454752)))))

(assert (=> b!4066425 (isPrefix!4064 lt!1454752 lt!1454774)))

(declare-fun prefix!494 () List!43558)

(declare-fun lt!1454794 () Unit!62963)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!857 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> b!4066425 (= lt!1454794 (lemmaPrefixStaysPrefixWhenAddingToSuffix!857 lt!1454752 prefix!494 newSuffix!27))))

(declare-fun lt!1454790 () Unit!62963)

(assert (=> b!4066425 (= lt!1454790 (lemmaPrefixStaysPrefixWhenAddingToSuffix!857 lt!1454752 prefix!494 suffix!1299))))

(declare-fun b!4066426 () Bool)

(declare-fun res!1659634 () Bool)

(declare-fun e!2523592 () Bool)

(assert (=> b!4066426 (=> res!1659634 e!2523592)))

(declare-fun lt!1454775 () List!43558)

(assert (=> b!4066426 (= res!1659634 (not (= lt!1454775 lt!1454774)))))

(declare-fun e!2523582 () Bool)

(declare-fun b!4066427 () Bool)

(declare-fun tp!1230997 () Bool)

(declare-fun inv!58064 (String!49755) Bool)

(declare-fun inv!58068 (TokenValueInjection!13842) Bool)

(assert (=> b!4066427 (= e!2523565 (and tp!1230997 (inv!58064 (tag!7837 (h!48856 rules!2999))) (inv!58068 (transformation!6977 (h!48856 rules!2999))) e!2523582))))

(declare-fun b!4066428 () Bool)

(declare-fun e!2523557 () Bool)

(assert (=> b!4066428 (= e!2523557 e!2523555)))

(declare-fun res!1659640 () Bool)

(assert (=> b!4066428 (=> res!1659640 e!2523555)))

(declare-fun lt!1454753 () Int)

(declare-fun lt!1454771 () Int)

(assert (=> b!4066428 (= res!1659640 (not (= lt!1454753 lt!1454771)))))

(declare-fun lt!1454759 () Unit!62963)

(declare-fun e!2523586 () Unit!62963)

(assert (=> b!4066428 (= lt!1454759 e!2523586)))

(declare-fun c!702120 () Bool)

(assert (=> b!4066428 (= c!702120 (< lt!1454771 lt!1454753))))

(declare-fun lt!1454814 () Unit!62963)

(assert (=> b!4066428 (= lt!1454814 e!2523570)))

(declare-fun c!702121 () Bool)

(assert (=> b!4066428 (= c!702121 (> lt!1454771 lt!1454753))))

(declare-fun lt!1454758 () List!43558)

(assert (=> b!4066428 (= (_2!24378 (v!39818 lt!1454783)) lt!1454758)))

(declare-fun lt!1454750 () Unit!62963)

(assert (=> b!4066428 (= lt!1454750 (lemmaSamePrefixThenSameSuffix!2225 lt!1454784 (_2!24378 (v!39818 lt!1454783)) lt!1454784 lt!1454758 lt!1454774))))

(declare-fun lt!1454757 () List!43558)

(assert (=> b!4066428 (isPrefix!4064 lt!1454784 lt!1454757)))

(declare-fun lt!1454787 () Unit!62963)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2899 (List!43558 List!43558) Unit!62963)

(assert (=> b!4066428 (= lt!1454787 (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454784 lt!1454758))))

(declare-fun b!4066429 () Bool)

(declare-fun Unit!62967 () Unit!62963)

(assert (=> b!4066429 (= e!2523574 Unit!62967)))

(declare-fun b!4066430 () Bool)

(declare-fun tp!1230999 () Bool)

(assert (=> b!4066430 (= e!2523593 (and tp_is_empty!20735 tp!1230999))))

(declare-fun b!4066431 () Bool)

(declare-fun e!2523579 () Bool)

(declare-fun e!2523561 () Bool)

(assert (=> b!4066431 (= e!2523579 e!2523561)))

(declare-fun res!1659651 () Bool)

(assert (=> b!4066431 (=> res!1659651 e!2523561)))

(declare-fun lt!1454801 () List!43558)

(assert (=> b!4066431 (= res!1659651 (not (= lt!1454801 suffix!1299)))))

(declare-fun lt!1454788 () List!43558)

(declare-fun ++!11379 (List!43558 List!43558) List!43558)

(assert (=> b!4066431 (= lt!1454801 (++!11379 newSuffix!27 lt!1454788))))

(declare-fun getSuffix!2481 (List!43558 List!43558) List!43558)

(assert (=> b!4066431 (= lt!1454788 (getSuffix!2481 suffix!1299 newSuffix!27))))

(declare-fun b!4066432 () Bool)

(declare-fun res!1659635 () Bool)

(assert (=> b!4066432 (=> (not res!1659635) (not e!2523569))))

(declare-fun rulesInvariant!5909 (LexerInterface!6566 List!43560) Bool)

(assert (=> b!4066432 (= res!1659635 (rulesInvariant!5909 thiss!21717 rules!2999))))

(declare-fun b!4066433 () Bool)

(declare-fun e!2523558 () Bool)

(declare-fun e!2523563 () Bool)

(assert (=> b!4066433 (= e!2523558 e!2523563)))

(declare-fun res!1659655 () Bool)

(assert (=> b!4066433 (=> (not res!1659655) (not e!2523563))))

(declare-fun lt!1454778 () List!43558)

(assert (=> b!4066433 (= res!1659655 (= lt!1454778 lt!1454774))))

(assert (=> b!4066433 (= lt!1454774 (++!11379 prefix!494 newSuffix!27))))

(assert (=> b!4066433 (= lt!1454778 (++!11379 lt!1454752 newSuffixResult!27))))

(declare-fun b!4066434 () Bool)

(declare-fun Unit!62968 () Unit!62963)

(assert (=> b!4066434 (= e!2523590 Unit!62968)))

(assert (=> b!4066435 (= e!2523582 (and tp!1231006 tp!1231007))))

(declare-fun b!4066436 () Bool)

(declare-fun res!1659633 () Bool)

(assert (=> b!4066436 (=> (not res!1659633) (not e!2523569))))

(declare-fun isEmpty!25922 (List!43560) Bool)

(assert (=> b!4066436 (= res!1659633 (not (isEmpty!25922 rules!2999)))))

(declare-fun b!4066437 () Bool)

(declare-fun e!2523575 () Bool)

(assert (=> b!4066437 (= e!2523575 e!2523556)))

(declare-fun res!1659641 () Bool)

(assert (=> b!4066437 (=> res!1659641 e!2523556)))

(declare-fun lt!1454798 () Option!9391)

(declare-fun lt!1454762 () Option!9391)

(assert (=> b!4066437 (= res!1659641 (not (= lt!1454798 lt!1454762)))))

(declare-fun lt!1454806 () Token!13092)

(declare-fun suffixResult!105 () List!43558)

(assert (=> b!4066437 (= lt!1454798 (Some!9390 (tuple2!42489 lt!1454806 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2876 (LexerInterface!6566 Rule!13754 List!43558) Option!9391)

(assert (=> b!4066437 (= lt!1454798 (maxPrefixOneRule!2876 thiss!21717 (rule!10077 token!484) lt!1454782))))

(declare-fun lt!1454802 () TokenValue!7207)

(assert (=> b!4066437 (= lt!1454806 (Token!13093 lt!1454802 (rule!10077 token!484) lt!1454753 lt!1454752))))

(declare-fun apply!10166 (TokenValueInjection!13842 BalanceConc!25970) TokenValue!7207)

(declare-fun seqFromList!5194 (List!43558) BalanceConc!25970)

(assert (=> b!4066437 (= lt!1454802 (apply!10166 (transformation!6977 (rule!10077 token!484)) (seqFromList!5194 lt!1454752)))))

(declare-fun lt!1454805 () Unit!62963)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1682 (LexerInterface!6566 List!43560 List!43558 List!43558 List!43558 Rule!13754) Unit!62963)

(assert (=> b!4066437 (= lt!1454805 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1682 thiss!21717 rules!2999 lt!1454752 lt!1454782 suffixResult!105 (rule!10077 token!484)))))

(declare-fun lt!1454803 () List!43558)

(assert (=> b!4066437 (= lt!1454803 suffixResult!105)))

(declare-fun lt!1454781 () Unit!62963)

(assert (=> b!4066437 (= lt!1454781 (lemmaSamePrefixThenSameSuffix!2225 lt!1454752 lt!1454803 lt!1454752 suffixResult!105 lt!1454782))))

(declare-fun lt!1454764 () List!43558)

(assert (=> b!4066437 (isPrefix!4064 lt!1454752 lt!1454764)))

(declare-fun lt!1454773 () Unit!62963)

(assert (=> b!4066437 (= lt!1454773 (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454752 lt!1454803))))

(declare-fun b!4066438 () Bool)

(declare-fun tp!1231004 () Bool)

(assert (=> b!4066438 (= e!2523559 (and tp_is_empty!20735 tp!1231004))))

(declare-fun b!4066439 () Bool)

(declare-fun e!2523564 () Bool)

(assert (=> b!4066439 (= e!2523564 false)))

(declare-fun b!4066440 () Bool)

(declare-fun e!2523566 () Bool)

(assert (=> b!4066440 (= e!2523566 (and (= (size!32473 token!484) lt!1454753) (= (originalCharacters!7577 token!484) lt!1454752)))))

(declare-fun b!4066441 () Bool)

(declare-fun tp!1231002 () Bool)

(assert (=> b!4066441 (= e!2523584 (and tp_is_empty!20735 tp!1231002))))

(declare-fun b!4066442 () Bool)

(declare-fun Unit!62969 () Unit!62963)

(assert (=> b!4066442 (= e!2523590 Unit!62969)))

(declare-fun lt!1454792 () Unit!62963)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!305 (LexerInterface!6566 List!43560 Rule!13754 List!43558 List!43558 Rule!13754) Unit!62963)

(assert (=> b!4066442 (= lt!1454792 (lemmaMaxPrefNoSmallerRuleMatches!305 thiss!21717 rules!2999 (rule!10077 token!484) lt!1454752 lt!1454782 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun res!1659642 () Bool)

(assert (=> b!4066442 (= res!1659642 (not (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454752)))))

(assert (=> b!4066442 (=> (not res!1659642) (not e!2523564))))

(assert (=> b!4066442 e!2523564))

(declare-fun b!4066443 () Bool)

(declare-fun res!1659656 () Bool)

(assert (=> b!4066443 (=> (not res!1659656) (not e!2523569))))

(assert (=> b!4066443 (= res!1659656 (isPrefix!4064 newSuffix!27 suffix!1299))))

(declare-fun b!4066444 () Bool)

(declare-fun res!1659652 () Bool)

(assert (=> b!4066444 (=> (not res!1659652) (not e!2523566))))

(assert (=> b!4066444 (= res!1659652 (= (size!32473 token!484) (size!32474 (originalCharacters!7577 token!484))))))

(declare-fun b!4066445 () Bool)

(assert (=> b!4066445 (= e!2523591 false)))

(declare-fun b!4066446 () Bool)

(declare-fun e!2523589 () Bool)

(assert (=> b!4066446 (= e!2523563 e!2523589)))

(declare-fun res!1659631 () Bool)

(assert (=> b!4066446 (=> (not res!1659631) (not e!2523589))))

(declare-fun maxPrefix!3864 (LexerInterface!6566 List!43560 List!43558) Option!9391)

(assert (=> b!4066446 (= res!1659631 (= (maxPrefix!3864 thiss!21717 rules!2999 lt!1454782) lt!1454762))))

(declare-fun lt!1454799 () tuple2!42488)

(assert (=> b!4066446 (= lt!1454762 (Some!9390 lt!1454799))))

(assert (=> b!4066446 (= lt!1454799 (tuple2!42489 token!484 suffixResult!105))))

(assert (=> b!4066446 (= lt!1454782 (++!11379 prefix!494 suffix!1299))))

(declare-fun b!4066447 () Bool)

(assert (=> b!4066447 (= e!2523572 (contains!8643 rules!2999 (rule!10077 token!484)))))

(declare-fun b!4066448 () Bool)

(assert (=> b!4066448 (= e!2523569 e!2523558)))

(declare-fun res!1659637 () Bool)

(assert (=> b!4066448 (=> (not res!1659637) (not e!2523558))))

(declare-fun lt!1454767 () Int)

(assert (=> b!4066448 (= res!1659637 (>= lt!1454767 lt!1454753))))

(assert (=> b!4066448 (= lt!1454753 (size!32474 lt!1454752))))

(assert (=> b!4066448 (= lt!1454767 (size!32474 prefix!494))))

(declare-fun list!16193 (BalanceConc!25970) List!43558)

(declare-fun charsOf!4793 (Token!13092) BalanceConc!25970)

(assert (=> b!4066448 (= lt!1454752 (list!16193 (charsOf!4793 token!484)))))

(declare-fun b!4066449 () Bool)

(declare-fun e!2523571 () Bool)

(assert (=> b!4066449 (= e!2523589 (not e!2523571))))

(declare-fun res!1659630 () Bool)

(assert (=> b!4066449 (=> res!1659630 e!2523571)))

(declare-fun lt!1454796 () List!43558)

(assert (=> b!4066449 (= res!1659630 (not (= lt!1454796 lt!1454782)))))

(assert (=> b!4066449 (= lt!1454796 (++!11379 lt!1454752 suffixResult!105))))

(declare-fun lt!1454779 () Unit!62963)

(declare-fun lemmaInv!1186 (TokenValueInjection!13842) Unit!62963)

(assert (=> b!4066449 (= lt!1454779 (lemmaInv!1186 (transformation!6977 (rule!10077 token!484))))))

(declare-fun ruleValid!2907 (LexerInterface!6566 Rule!13754) Bool)

(assert (=> b!4066449 (ruleValid!2907 thiss!21717 (rule!10077 token!484))))

(declare-fun lt!1454777 () Unit!62963)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1977 (LexerInterface!6566 Rule!13754 List!43560) Unit!62963)

(assert (=> b!4066449 (= lt!1454777 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1977 thiss!21717 (rule!10077 token!484) rules!2999))))

(declare-fun b!4066450 () Bool)

(declare-fun tp!1231008 () Bool)

(assert (=> b!4066450 (= e!2523562 (and tp_is_empty!20735 tp!1231008))))

(declare-fun b!4066451 () Bool)

(declare-fun e!2523587 () Bool)

(declare-fun e!2523595 () Bool)

(assert (=> b!4066451 (= e!2523587 e!2523595)))

(declare-fun res!1659643 () Bool)

(assert (=> b!4066451 (=> res!1659643 e!2523595)))

(assert (=> b!4066451 (= res!1659643 (not (is-Some!9390 lt!1454783)))))

(assert (=> b!4066451 (= lt!1454783 (maxPrefix!3864 thiss!21717 rules!2999 lt!1454774))))

(declare-fun lt!1454815 () List!43558)

(assert (=> b!4066451 (and (= suffixResult!105 lt!1454815) (= lt!1454799 (tuple2!42489 lt!1454806 lt!1454815)))))

(declare-fun lt!1454785 () Unit!62963)

(assert (=> b!4066451 (= lt!1454785 (lemmaSamePrefixThenSameSuffix!2225 lt!1454752 suffixResult!105 lt!1454752 lt!1454815 lt!1454782))))

(declare-fun lt!1454809 () List!43558)

(assert (=> b!4066451 (isPrefix!4064 lt!1454752 lt!1454809)))

(declare-fun lt!1454763 () Unit!62963)

(assert (=> b!4066451 (= lt!1454763 (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454752 lt!1454815))))

(declare-fun tp!1230998 () Bool)

(declare-fun e!2523560 () Bool)

(declare-fun b!4066452 () Bool)

(assert (=> b!4066452 (= e!2523581 (and tp!1230998 (inv!58064 (tag!7837 (rule!10077 token!484))) (inv!58068 (transformation!6977 (rule!10077 token!484))) e!2523560))))

(declare-fun b!4066453 () Bool)

(declare-fun Unit!62970 () Unit!62963)

(assert (=> b!4066453 (= e!2523586 Unit!62970)))

(declare-fun b!4066454 () Bool)

(assert (=> b!4066454 (= e!2523578 e!2523587)))

(declare-fun res!1659660 () Bool)

(assert (=> b!4066454 (=> res!1659660 e!2523587)))

(assert (=> b!4066454 (= res!1659660 (not (= lt!1454809 lt!1454782)))))

(assert (=> b!4066454 (= lt!1454809 (++!11379 lt!1454752 lt!1454815))))

(assert (=> b!4066454 (= lt!1454815 (getSuffix!2481 lt!1454782 lt!1454752))))

(assert (=> b!4066454 e!2523566))

(declare-fun res!1659645 () Bool)

(assert (=> b!4066454 (=> (not res!1659645) (not e!2523566))))

(assert (=> b!4066454 (= res!1659645 (isPrefix!4064 lt!1454782 lt!1454782))))

(declare-fun lt!1454786 () Unit!62963)

(declare-fun lemmaIsPrefixRefl!2631 (List!43558 List!43558) Unit!62963)

(assert (=> b!4066454 (= lt!1454786 (lemmaIsPrefixRefl!2631 lt!1454782 lt!1454782))))

(declare-fun b!4066455 () Bool)

(declare-fun e!2523568 () Bool)

(declare-fun e!2523573 () Bool)

(assert (=> b!4066455 (= e!2523568 e!2523573)))

(declare-fun res!1659638 () Bool)

(assert (=> b!4066455 (=> res!1659638 e!2523573)))

(declare-fun lt!1454780 () List!43558)

(assert (=> b!4066455 (= res!1659638 (not (= lt!1454780 prefix!494)))))

(declare-fun lt!1454800 () List!43558)

(assert (=> b!4066455 (= lt!1454780 (++!11379 lt!1454752 lt!1454800))))

(assert (=> b!4066455 (= lt!1454800 (getSuffix!2481 prefix!494 lt!1454752))))

(assert (=> b!4066455 (isPrefix!4064 lt!1454752 prefix!494)))

(declare-fun lt!1454760 () Unit!62963)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!628 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> b!4066455 (= lt!1454760 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!628 prefix!494 lt!1454752 lt!1454782))))

(declare-fun b!4066456 () Bool)

(assert (=> b!4066456 (= e!2523573 e!2523575)))

(declare-fun res!1659636 () Bool)

(assert (=> b!4066456 (=> res!1659636 e!2523575)))

(declare-fun lt!1454813 () List!43558)

(assert (=> b!4066456 (= res!1659636 (or (not (= lt!1454782 lt!1454813)) (not (= lt!1454782 lt!1454764))))))

(assert (=> b!4066456 (= lt!1454813 lt!1454764)))

(assert (=> b!4066456 (= lt!1454764 (++!11379 lt!1454752 lt!1454803))))

(assert (=> b!4066456 (= lt!1454813 (++!11379 lt!1454780 suffix!1299))))

(assert (=> b!4066456 (= lt!1454803 (++!11379 lt!1454800 suffix!1299))))

(declare-fun lt!1454804 () Unit!62963)

(declare-fun lemmaConcatAssociativity!2681 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> b!4066456 (= lt!1454804 (lemmaConcatAssociativity!2681 lt!1454752 lt!1454800 suffix!1299))))

(declare-fun b!4066457 () Bool)

(declare-fun Unit!62971 () Unit!62963)

(assert (=> b!4066457 (= e!2523586 Unit!62971)))

(declare-fun lt!1454755 () Unit!62963)

(assert (=> b!4066457 (= lt!1454755 (lemmaMaxPrefixOutputsMaxPrefix!503 thiss!21717 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454784 lt!1454774 lt!1454752 (rule!10077 token!484)))))

(assert (=> b!4066457 false))

(declare-fun b!4066458 () Bool)

(declare-fun e!2523567 () Bool)

(assert (=> b!4066458 (= e!2523561 e!2523567)))

(declare-fun res!1659658 () Bool)

(assert (=> b!4066458 (=> res!1659658 e!2523567)))

(declare-fun lt!1454811 () List!43558)

(assert (=> b!4066458 (= res!1659658 (not (= lt!1454811 lt!1454782)))))

(assert (=> b!4066458 (= lt!1454811 (++!11379 prefix!494 lt!1454801))))

(assert (=> b!4066458 (= lt!1454811 (++!11379 lt!1454774 lt!1454788))))

(declare-fun lt!1454756 () Unit!62963)

(assert (=> b!4066458 (= lt!1454756 (lemmaConcatAssociativity!2681 prefix!494 newSuffix!27 lt!1454788))))

(assert (=> b!4066459 (= e!2523560 (and tp!1231003 tp!1231009))))

(declare-fun b!4066460 () Bool)

(assert (=> b!4066460 (= e!2523571 e!2523568)))

(declare-fun res!1659644 () Bool)

(assert (=> b!4066460 (=> res!1659644 e!2523568)))

(assert (=> b!4066460 (= res!1659644 (not (isPrefix!4064 lt!1454752 lt!1454782)))))

(assert (=> b!4066460 (isPrefix!4064 prefix!494 lt!1454782)))

(declare-fun lt!1454793 () Unit!62963)

(assert (=> b!4066460 (= lt!1454793 (lemmaConcatTwoListThenFirstIsPrefix!2899 prefix!494 suffix!1299))))

(assert (=> b!4066460 (isPrefix!4064 lt!1454752 lt!1454796)))

(declare-fun lt!1454816 () Unit!62963)

(assert (=> b!4066460 (= lt!1454816 (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454752 suffixResult!105))))

(declare-fun b!4066461 () Bool)

(declare-fun Unit!62972 () Unit!62963)

(assert (=> b!4066461 (= e!2523574 Unit!62972)))

(declare-fun lt!1454768 () Unit!62963)

(assert (=> b!4066461 (= lt!1454768 (lemmaMaxPrefNoSmallerRuleMatches!305 thiss!21717 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454784 lt!1454774 (rule!10077 token!484)))))

(declare-fun res!1659632 () Bool)

(assert (=> b!4066461 (= res!1659632 (not (matchR!5835 (regex!6977 (rule!10077 token!484)) lt!1454784)))))

(assert (=> b!4066461 (=> (not res!1659632) (not e!2523580))))

(assert (=> b!4066461 e!2523580))

(declare-fun b!4066462 () Bool)

(assert (=> b!4066462 (= e!2523567 e!2523592)))

(declare-fun res!1659639 () Bool)

(assert (=> b!4066462 (=> res!1659639 e!2523592)))

(assert (=> b!4066462 (= res!1659639 (not (isPrefix!4064 lt!1454784 lt!1454782)))))

(assert (=> b!4066462 (isPrefix!4064 lt!1454784 lt!1454811)))

(declare-fun lt!1454812 () Unit!62963)

(assert (=> b!4066462 (= lt!1454812 (lemmaPrefixStaysPrefixWhenAddingToSuffix!857 lt!1454784 lt!1454774 lt!1454788))))

(declare-fun b!4066463 () Bool)

(assert (=> b!4066463 (= e!2523595 e!2523579)))

(declare-fun res!1659654 () Bool)

(assert (=> b!4066463 (=> res!1659654 e!2523579)))

(declare-fun lt!1454766 () Option!9391)

(assert (=> b!4066463 (= res!1659654 (not (= lt!1454766 (Some!9390 (v!39818 lt!1454783)))))))

(assert (=> b!4066463 (isPrefix!4064 lt!1454784 (++!11379 lt!1454784 newSuffixResult!27))))

(declare-fun lt!1454795 () Unit!62963)

(assert (=> b!4066463 (= lt!1454795 (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454784 newSuffixResult!27))))

(assert (=> b!4066463 (isPrefix!4064 lt!1454784 lt!1454775)))

(assert (=> b!4066463 (= lt!1454775 (++!11379 lt!1454784 (_2!24378 (v!39818 lt!1454783))))))

(declare-fun lt!1454776 () Unit!62963)

(assert (=> b!4066463 (= lt!1454776 (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454784 (_2!24378 (v!39818 lt!1454783))))))

(declare-fun lt!1454789 () TokenValue!7207)

(assert (=> b!4066463 (= lt!1454766 (Some!9390 (tuple2!42489 (Token!13093 lt!1454789 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454771 lt!1454784) (_2!24378 (v!39818 lt!1454783)))))))

(assert (=> b!4066463 (= lt!1454766 (maxPrefixOneRule!2876 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454774))))

(assert (=> b!4066463 (= lt!1454771 (size!32474 lt!1454784))))

(assert (=> b!4066463 (= lt!1454789 (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (seqFromList!5194 lt!1454784)))))

(declare-fun lt!1454772 () Unit!62963)

(assert (=> b!4066463 (= lt!1454772 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1682 thiss!21717 rules!2999 lt!1454784 lt!1454774 (_2!24378 (v!39818 lt!1454783)) (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> b!4066463 (= lt!1454784 (list!16193 (charsOf!4793 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun lt!1454754 () Unit!62963)

(assert (=> b!4066463 (= lt!1454754 (lemmaInv!1186 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(assert (=> b!4066463 (ruleValid!2907 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))

(declare-fun lt!1454751 () Unit!62963)

(assert (=> b!4066463 (= lt!1454751 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1977 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))) rules!2999))))

(declare-fun lt!1454810 () Unit!62963)

(declare-fun lemmaCharactersSize!1496 (Token!13092) Unit!62963)

(assert (=> b!4066463 (= lt!1454810 (lemmaCharactersSize!1496 token!484))))

(declare-fun lt!1454765 () Unit!62963)

(assert (=> b!4066463 (= lt!1454765 (lemmaCharactersSize!1496 (_1!24378 (v!39818 lt!1454783))))))

(declare-fun b!4066464 () Bool)

(declare-fun res!1659659 () Bool)

(assert (=> b!4066464 (=> (not res!1659659) (not e!2523566))))

(assert (=> b!4066464 (= res!1659659 (= (value!219480 token!484) lt!1454802))))

(declare-fun b!4066465 () Bool)

(assert (=> b!4066465 (= e!2523592 e!2523557)))

(declare-fun res!1659648 () Bool)

(assert (=> b!4066465 (=> res!1659648 e!2523557)))

(assert (=> b!4066465 (= res!1659648 (not (= lt!1454757 lt!1454774)))))

(assert (=> b!4066465 (= lt!1454757 (++!11379 lt!1454784 lt!1454758))))

(assert (=> b!4066465 (= lt!1454758 (getSuffix!2481 lt!1454774 lt!1454784))))

(declare-fun b!4066466 () Bool)

(declare-fun Unit!62973 () Unit!62963)

(assert (=> b!4066466 (= e!2523570 Unit!62973)))

(assert (= (and start!383566 res!1659653) b!4066436))

(assert (= (and b!4066436 res!1659633) b!4066432))

(assert (= (and b!4066432 res!1659635) b!4066419))

(assert (= (and b!4066419 res!1659649) b!4066443))

(assert (= (and b!4066443 res!1659656) b!4066448))

(assert (= (and b!4066448 res!1659637) b!4066433))

(assert (= (and b!4066433 res!1659655) b!4066446))

(assert (= (and b!4066446 res!1659631) b!4066449))

(assert (= (and b!4066449 (not res!1659630)) b!4066460))

(assert (= (and b!4066460 (not res!1659644)) b!4066455))

(assert (= (and b!4066455 (not res!1659638)) b!4066456))

(assert (= (and b!4066456 (not res!1659636)) b!4066437))

(assert (= (and b!4066437 (not res!1659641)) b!4066425))

(assert (= (and b!4066425 (not res!1659647)) b!4066454))

(assert (= (and b!4066454 res!1659645) b!4066464))

(assert (= (and b!4066464 res!1659659) b!4066444))

(assert (= (and b!4066444 res!1659652) b!4066440))

(assert (= (and b!4066454 (not res!1659660)) b!4066451))

(assert (= (and b!4066451 (not res!1659643)) b!4066463))

(assert (= (and b!4066463 (not res!1659654)) b!4066431))

(assert (= (and b!4066431 (not res!1659651)) b!4066458))

(assert (= (and b!4066458 (not res!1659658)) b!4066462))

(assert (= (and b!4066462 (not res!1659639)) b!4066426))

(assert (= (and b!4066426 (not res!1659634)) b!4066465))

(assert (= (and b!4066465 (not res!1659648)) b!4066428))

(assert (= (and b!4066428 c!702121) b!4066418))

(assert (= (and b!4066428 (not c!702121)) b!4066466))

(assert (= (and b!4066418 res!1659650) b!4066445))

(assert (= (and b!4066428 c!702120) b!4066457))

(assert (= (and b!4066428 (not c!702120)) b!4066453))

(assert (= (and b!4066428 (not res!1659640)) b!4066417))

(assert (= (and b!4066417 (not res!1659646)) b!4066421))

(assert (= (and b!4066421 c!702122) b!4066442))

(assert (= (and b!4066421 (not c!702122)) b!4066434))

(assert (= (and b!4066442 res!1659642) b!4066439))

(assert (= (and b!4066421 c!702119) b!4066461))

(assert (= (and b!4066421 (not c!702119)) b!4066429))

(assert (= (and b!4066461 res!1659632) b!4066422))

(assert (= (and b!4066421 (not res!1659657)) b!4066447))

(assert (= (and start!383566 (is-Cons!43434 prefix!494)) b!4066438))

(assert (= b!4066452 b!4066459))

(assert (= b!4066424 b!4066452))

(assert (= start!383566 b!4066424))

(assert (= (and start!383566 (is-Cons!43434 suffixResult!105)) b!4066430))

(assert (= (and start!383566 (is-Cons!43434 suffix!1299)) b!4066450))

(assert (= (and start!383566 (is-Cons!43434 newSuffix!27)) b!4066441))

(assert (= b!4066427 b!4066435))

(assert (= b!4066423 b!4066427))

(assert (= (and start!383566 (is-Cons!43436 rules!2999)) b!4066423))

(assert (= (and start!383566 (is-Cons!43434 newSuffixResult!27)) b!4066420))

(declare-fun m!4674313 () Bool)

(assert (=> b!4066431 m!4674313))

(declare-fun m!4674315 () Bool)

(assert (=> b!4066431 m!4674315))

(declare-fun m!4674317 () Bool)

(assert (=> b!4066442 m!4674317))

(declare-fun m!4674319 () Bool)

(assert (=> b!4066442 m!4674319))

(declare-fun m!4674321 () Bool)

(assert (=> b!4066428 m!4674321))

(declare-fun m!4674323 () Bool)

(assert (=> b!4066428 m!4674323))

(declare-fun m!4674325 () Bool)

(assert (=> b!4066428 m!4674325))

(declare-fun m!4674327 () Bool)

(assert (=> b!4066417 m!4674327))

(declare-fun m!4674329 () Bool)

(assert (=> b!4066436 m!4674329))

(declare-fun m!4674331 () Bool)

(assert (=> b!4066460 m!4674331))

(declare-fun m!4674333 () Bool)

(assert (=> b!4066460 m!4674333))

(declare-fun m!4674335 () Bool)

(assert (=> b!4066460 m!4674335))

(declare-fun m!4674337 () Bool)

(assert (=> b!4066460 m!4674337))

(declare-fun m!4674339 () Bool)

(assert (=> b!4066460 m!4674339))

(declare-fun m!4674341 () Bool)

(assert (=> b!4066455 m!4674341))

(declare-fun m!4674343 () Bool)

(assert (=> b!4066455 m!4674343))

(declare-fun m!4674345 () Bool)

(assert (=> b!4066455 m!4674345))

(declare-fun m!4674347 () Bool)

(assert (=> b!4066455 m!4674347))

(declare-fun m!4674349 () Bool)

(assert (=> b!4066463 m!4674349))

(declare-fun m!4674351 () Bool)

(assert (=> b!4066463 m!4674351))

(declare-fun m!4674353 () Bool)

(assert (=> b!4066463 m!4674353))

(declare-fun m!4674355 () Bool)

(assert (=> b!4066463 m!4674355))

(declare-fun m!4674357 () Bool)

(assert (=> b!4066463 m!4674357))

(declare-fun m!4674359 () Bool)

(assert (=> b!4066463 m!4674359))

(declare-fun m!4674361 () Bool)

(assert (=> b!4066463 m!4674361))

(declare-fun m!4674363 () Bool)

(assert (=> b!4066463 m!4674363))

(declare-fun m!4674365 () Bool)

(assert (=> b!4066463 m!4674365))

(declare-fun m!4674367 () Bool)

(assert (=> b!4066463 m!4674367))

(assert (=> b!4066463 m!4674359))

(declare-fun m!4674369 () Bool)

(assert (=> b!4066463 m!4674369))

(declare-fun m!4674371 () Bool)

(assert (=> b!4066463 m!4674371))

(declare-fun m!4674373 () Bool)

(assert (=> b!4066463 m!4674373))

(assert (=> b!4066463 m!4674363))

(declare-fun m!4674375 () Bool)

(assert (=> b!4066463 m!4674375))

(declare-fun m!4674377 () Bool)

(assert (=> b!4066463 m!4674377))

(declare-fun m!4674379 () Bool)

(assert (=> b!4066463 m!4674379))

(assert (=> b!4066463 m!4674367))

(declare-fun m!4674381 () Bool)

(assert (=> b!4066463 m!4674381))

(declare-fun m!4674383 () Bool)

(assert (=> b!4066463 m!4674383))

(declare-fun m!4674385 () Bool)

(assert (=> b!4066448 m!4674385))

(declare-fun m!4674387 () Bool)

(assert (=> b!4066448 m!4674387))

(declare-fun m!4674389 () Bool)

(assert (=> b!4066448 m!4674389))

(assert (=> b!4066448 m!4674389))

(declare-fun m!4674391 () Bool)

(assert (=> b!4066448 m!4674391))

(declare-fun m!4674393 () Bool)

(assert (=> b!4066446 m!4674393))

(declare-fun m!4674395 () Bool)

(assert (=> b!4066446 m!4674395))

(declare-fun m!4674397 () Bool)

(assert (=> b!4066465 m!4674397))

(declare-fun m!4674399 () Bool)

(assert (=> b!4066465 m!4674399))

(declare-fun m!4674401 () Bool)

(assert (=> b!4066457 m!4674401))

(declare-fun m!4674403 () Bool)

(assert (=> b!4066454 m!4674403))

(declare-fun m!4674405 () Bool)

(assert (=> b!4066454 m!4674405))

(declare-fun m!4674407 () Bool)

(assert (=> b!4066454 m!4674407))

(declare-fun m!4674409 () Bool)

(assert (=> b!4066454 m!4674409))

(declare-fun m!4674411 () Bool)

(assert (=> b!4066452 m!4674411))

(declare-fun m!4674413 () Bool)

(assert (=> b!4066452 m!4674413))

(declare-fun m!4674415 () Bool)

(assert (=> b!4066437 m!4674415))

(declare-fun m!4674417 () Bool)

(assert (=> b!4066437 m!4674417))

(declare-fun m!4674419 () Bool)

(assert (=> b!4066437 m!4674419))

(declare-fun m!4674421 () Bool)

(assert (=> b!4066437 m!4674421))

(declare-fun m!4674423 () Bool)

(assert (=> b!4066437 m!4674423))

(declare-fun m!4674425 () Bool)

(assert (=> b!4066437 m!4674425))

(declare-fun m!4674427 () Bool)

(assert (=> b!4066437 m!4674427))

(assert (=> b!4066437 m!4674421))

(declare-fun m!4674429 () Bool)

(assert (=> b!4066421 m!4674429))

(declare-fun m!4674431 () Bool)

(assert (=> b!4066421 m!4674431))

(declare-fun m!4674433 () Bool)

(assert (=> b!4066421 m!4674433))

(declare-fun m!4674435 () Bool)

(assert (=> b!4066421 m!4674435))

(declare-fun m!4674437 () Bool)

(assert (=> b!4066421 m!4674437))

(declare-fun m!4674439 () Bool)

(assert (=> b!4066427 m!4674439))

(declare-fun m!4674441 () Bool)

(assert (=> b!4066427 m!4674441))

(declare-fun m!4674443 () Bool)

(assert (=> b!4066449 m!4674443))

(declare-fun m!4674445 () Bool)

(assert (=> b!4066449 m!4674445))

(declare-fun m!4674447 () Bool)

(assert (=> b!4066449 m!4674447))

(declare-fun m!4674449 () Bool)

(assert (=> b!4066449 m!4674449))

(declare-fun m!4674451 () Bool)

(assert (=> b!4066432 m!4674451))

(declare-fun m!4674453 () Bool)

(assert (=> b!4066433 m!4674453))

(declare-fun m!4674455 () Bool)

(assert (=> b!4066433 m!4674455))

(declare-fun m!4674457 () Bool)

(assert (=> b!4066444 m!4674457))

(declare-fun m!4674459 () Bool)

(assert (=> b!4066424 m!4674459))

(declare-fun m!4674461 () Bool)

(assert (=> b!4066419 m!4674461))

(declare-fun m!4674463 () Bool)

(assert (=> b!4066419 m!4674463))

(declare-fun m!4674465 () Bool)

(assert (=> b!4066458 m!4674465))

(declare-fun m!4674467 () Bool)

(assert (=> b!4066458 m!4674467))

(declare-fun m!4674469 () Bool)

(assert (=> b!4066458 m!4674469))

(declare-fun m!4674471 () Bool)

(assert (=> b!4066461 m!4674471))

(declare-fun m!4674473 () Bool)

(assert (=> b!4066461 m!4674473))

(declare-fun m!4674475 () Bool)

(assert (=> b!4066443 m!4674475))

(declare-fun m!4674477 () Bool)

(assert (=> b!4066418 m!4674477))

(declare-fun m!4674479 () Bool)

(assert (=> b!4066418 m!4674479))

(declare-fun m!4674481 () Bool)

(assert (=> b!4066425 m!4674481))

(declare-fun m!4674483 () Bool)

(assert (=> b!4066425 m!4674483))

(declare-fun m!4674485 () Bool)

(assert (=> b!4066425 m!4674485))

(declare-fun m!4674487 () Bool)

(assert (=> b!4066425 m!4674487))

(declare-fun m!4674489 () Bool)

(assert (=> start!383566 m!4674489))

(declare-fun m!4674491 () Bool)

(assert (=> b!4066456 m!4674491))

(declare-fun m!4674493 () Bool)

(assert (=> b!4066456 m!4674493))

(declare-fun m!4674495 () Bool)

(assert (=> b!4066456 m!4674495))

(declare-fun m!4674497 () Bool)

(assert (=> b!4066456 m!4674497))

(declare-fun m!4674499 () Bool)

(assert (=> b!4066462 m!4674499))

(declare-fun m!4674501 () Bool)

(assert (=> b!4066462 m!4674501))

(declare-fun m!4674503 () Bool)

(assert (=> b!4066462 m!4674503))

(declare-fun m!4674505 () Bool)

(assert (=> b!4066451 m!4674505))

(declare-fun m!4674507 () Bool)

(assert (=> b!4066451 m!4674507))

(declare-fun m!4674509 () Bool)

(assert (=> b!4066451 m!4674509))

(declare-fun m!4674511 () Bool)

(assert (=> b!4066451 m!4674511))

(declare-fun m!4674513 () Bool)

(assert (=> b!4066447 m!4674513))

(push 1)

(assert (not b!4066424))

(assert (not b_next!113821))

(assert (not b!4066461))

(assert tp_is_empty!20735)

(assert (not b!4066449))

(assert b_and!312561)

(assert (not b!4066446))

(assert (not b!4066454))

(assert (not b!4066451))

(assert b_and!312559)

(assert (not b!4066443))

(assert (not b!4066465))

(assert (not b!4066463))

(assert (not b!4066433))

(assert (not b!4066430))

(assert (not b!4066456))

(assert (not b!4066421))

(assert (not b!4066460))

(assert (not b!4066458))

(assert (not b_next!113819))

(assert (not b!4066450))

(assert (not b!4066448))

(assert (not b!4066423))

(assert (not b!4066431))

(assert (not b!4066428))

(assert (not b!4066444))

(assert (not b!4066447))

(assert b_and!312555)

(assert (not b_next!113817))

(assert (not b!4066437))

(assert (not b!4066436))

(assert (not b!4066425))

(assert b_and!312557)

(assert (not b!4066455))

(assert (not start!383566))

(assert (not b!4066432))

(assert (not b!4066462))

(assert (not b!4066452))

(assert (not b_next!113823))

(assert (not b!4066442))

(assert (not b!4066418))

(assert (not b!4066438))

(assert (not b!4066417))

(assert (not b!4066420))

(assert (not b!4066427))

(assert (not b!4066457))

(assert (not b!4066441))

(assert (not b!4066419))

(check-sat)

(pop 1)

(push 1)

(assert b_and!312559)

(assert (not b_next!113821))

(assert (not b_next!113819))

(assert b_and!312557)

(assert (not b_next!113823))

(assert b_and!312561)

(assert b_and!312555)

(assert (not b_next!113817))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1208752 () Bool)

(assert (=> d!1208752 (not (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454784))))

(declare-fun lt!1455020 () Unit!62963)

(declare-fun choose!24765 (LexerInterface!6566 List!43560 Rule!13754 List!43558 List!43558 List!43558 Rule!13754) Unit!62963)

(assert (=> d!1208752 (= lt!1455020 (choose!24765 thiss!21717 rules!2999 (rule!10077 token!484) lt!1454752 lt!1454782 lt!1454784 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> d!1208752 (isPrefix!4064 lt!1454752 lt!1454782)))

(assert (=> d!1208752 (= (lemmaMaxPrefixOutputsMaxPrefix!503 thiss!21717 rules!2999 (rule!10077 token!484) lt!1454752 lt!1454782 lt!1454784 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1455020)))

(declare-fun bs!592383 () Bool)

(assert (= bs!592383 d!1208752))

(assert (=> bs!592383 m!4674479))

(declare-fun m!4674717 () Bool)

(assert (=> bs!592383 m!4674717))

(assert (=> bs!592383 m!4674331))

(assert (=> b!4066418 d!1208752))

(declare-fun b!4066645 () Bool)

(declare-fun e!2523738 () Bool)

(declare-fun lt!1455023 () Bool)

(declare-fun call!288295 () Bool)

(assert (=> b!4066645 (= e!2523738 (= lt!1455023 call!288295))))

(declare-fun b!4066646 () Bool)

(declare-fun res!1659781 () Bool)

(declare-fun e!2523734 () Bool)

(assert (=> b!4066646 (=> (not res!1659781) (not e!2523734))))

(assert (=> b!4066646 (= res!1659781 (not call!288295))))

(declare-fun b!4066647 () Bool)

(declare-fun res!1659780 () Bool)

(declare-fun e!2523737 () Bool)

(assert (=> b!4066647 (=> res!1659780 e!2523737)))

(declare-fun isEmpty!25924 (List!43558) Bool)

(declare-fun tail!6312 (List!43558) List!43558)

(assert (=> b!4066647 (= res!1659780 (not (isEmpty!25924 (tail!6312 lt!1454784))))))

(declare-fun b!4066648 () Bool)

(declare-fun head!8580 (List!43558) C!23950)

(assert (=> b!4066648 (= e!2523734 (= (head!8580 lt!1454784) (c!702124 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(declare-fun b!4066649 () Bool)

(declare-fun res!1659779 () Bool)

(assert (=> b!4066649 (=> (not res!1659779) (not e!2523734))))

(assert (=> b!4066649 (= res!1659779 (isEmpty!25924 (tail!6312 lt!1454784)))))

(declare-fun b!4066650 () Bool)

(declare-fun e!2523733 () Bool)

(declare-fun nullable!4177 (Regex!11882) Bool)

(assert (=> b!4066650 (= e!2523733 (nullable!4177 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun b!4066651 () Bool)

(declare-fun e!2523735 () Bool)

(assert (=> b!4066651 (= e!2523735 e!2523737)))

(declare-fun res!1659782 () Bool)

(assert (=> b!4066651 (=> res!1659782 e!2523737)))

(assert (=> b!4066651 (= res!1659782 call!288295)))

(declare-fun b!4066652 () Bool)

(declare-fun res!1659785 () Bool)

(declare-fun e!2523739 () Bool)

(assert (=> b!4066652 (=> res!1659785 e!2523739)))

(assert (=> b!4066652 (= res!1659785 e!2523734)))

(declare-fun res!1659778 () Bool)

(assert (=> b!4066652 (=> (not res!1659778) (not e!2523734))))

(assert (=> b!4066652 (= res!1659778 lt!1455023)))

(declare-fun b!4066653 () Bool)

(declare-fun res!1659784 () Bool)

(assert (=> b!4066653 (=> res!1659784 e!2523739)))

(assert (=> b!4066653 (= res!1659784 (not (is-ElementMatch!11882 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(declare-fun e!2523736 () Bool)

(assert (=> b!4066653 (= e!2523736 e!2523739)))

(declare-fun bm!288290 () Bool)

(assert (=> bm!288290 (= call!288295 (isEmpty!25924 lt!1454784))))

(declare-fun d!1208754 () Bool)

(assert (=> d!1208754 e!2523738))

(declare-fun c!702146 () Bool)

(assert (=> d!1208754 (= c!702146 (is-EmptyExpr!11882 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(assert (=> d!1208754 (= lt!1455023 e!2523733)))

(declare-fun c!702148 () Bool)

(assert (=> d!1208754 (= c!702148 (isEmpty!25924 lt!1454784))))

(declare-fun validRegex!5377 (Regex!11882) Bool)

(assert (=> d!1208754 (validRegex!5377 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> d!1208754 (= (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454784) lt!1455023)))

(declare-fun b!4066654 () Bool)

(assert (=> b!4066654 (= e!2523738 e!2523736)))

(declare-fun c!702147 () Bool)

(assert (=> b!4066654 (= c!702147 (is-EmptyLang!11882 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun b!4066655 () Bool)

(assert (=> b!4066655 (= e!2523737 (not (= (head!8580 lt!1454784) (c!702124 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))))

(declare-fun b!4066656 () Bool)

(assert (=> b!4066656 (= e!2523736 (not lt!1455023))))

(declare-fun b!4066657 () Bool)

(assert (=> b!4066657 (= e!2523739 e!2523735)))

(declare-fun res!1659783 () Bool)

(assert (=> b!4066657 (=> (not res!1659783) (not e!2523735))))

(assert (=> b!4066657 (= res!1659783 (not lt!1455023))))

(declare-fun b!4066658 () Bool)

(declare-fun derivativeStep!3582 (Regex!11882 C!23950) Regex!11882)

(assert (=> b!4066658 (= e!2523733 (matchR!5835 (derivativeStep!3582 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (head!8580 lt!1454784)) (tail!6312 lt!1454784)))))

(assert (= (and d!1208754 c!702148) b!4066650))

(assert (= (and d!1208754 (not c!702148)) b!4066658))

(assert (= (and d!1208754 c!702146) b!4066645))

(assert (= (and d!1208754 (not c!702146)) b!4066654))

(assert (= (and b!4066654 c!702147) b!4066656))

(assert (= (and b!4066654 (not c!702147)) b!4066653))

(assert (= (and b!4066653 (not res!1659784)) b!4066652))

(assert (= (and b!4066652 res!1659778) b!4066646))

(assert (= (and b!4066646 res!1659781) b!4066649))

(assert (= (and b!4066649 res!1659779) b!4066648))

(assert (= (and b!4066652 (not res!1659785)) b!4066657))

(assert (= (and b!4066657 res!1659783) b!4066651))

(assert (= (and b!4066651 (not res!1659782)) b!4066647))

(assert (= (and b!4066647 (not res!1659780)) b!4066655))

(assert (= (or b!4066645 b!4066646 b!4066651) bm!288290))

(declare-fun m!4674719 () Bool)

(assert (=> d!1208754 m!4674719))

(declare-fun m!4674721 () Bool)

(assert (=> d!1208754 m!4674721))

(declare-fun m!4674723 () Bool)

(assert (=> b!4066647 m!4674723))

(assert (=> b!4066647 m!4674723))

(declare-fun m!4674725 () Bool)

(assert (=> b!4066647 m!4674725))

(assert (=> b!4066649 m!4674723))

(assert (=> b!4066649 m!4674723))

(assert (=> b!4066649 m!4674725))

(assert (=> bm!288290 m!4674719))

(declare-fun m!4674727 () Bool)

(assert (=> b!4066655 m!4674727))

(assert (=> b!4066648 m!4674727))

(declare-fun m!4674729 () Bool)

(assert (=> b!4066650 m!4674729))

(assert (=> b!4066658 m!4674727))

(assert (=> b!4066658 m!4674727))

(declare-fun m!4674731 () Bool)

(assert (=> b!4066658 m!4674731))

(assert (=> b!4066658 m!4674723))

(assert (=> b!4066658 m!4674731))

(assert (=> b!4066658 m!4674723))

(declare-fun m!4674733 () Bool)

(assert (=> b!4066658 m!4674733))

(assert (=> b!4066418 d!1208754))

(declare-fun b!4066670 () Bool)

(declare-fun e!2523747 () Bool)

(assert (=> b!4066670 (= e!2523747 (>= (size!32474 lt!1454774) (size!32474 lt!1454784)))))

(declare-fun b!4066669 () Bool)

(declare-fun e!2523748 () Bool)

(assert (=> b!4066669 (= e!2523748 (isPrefix!4064 (tail!6312 lt!1454784) (tail!6312 lt!1454774)))))

(declare-fun d!1208756 () Bool)

(assert (=> d!1208756 e!2523747))

(declare-fun res!1659795 () Bool)

(assert (=> d!1208756 (=> res!1659795 e!2523747)))

(declare-fun lt!1455026 () Bool)

(assert (=> d!1208756 (= res!1659795 (not lt!1455026))))

(declare-fun e!2523746 () Bool)

(assert (=> d!1208756 (= lt!1455026 e!2523746)))

(declare-fun res!1659796 () Bool)

(assert (=> d!1208756 (=> res!1659796 e!2523746)))

(assert (=> d!1208756 (= res!1659796 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208756 (= (isPrefix!4064 lt!1454784 lt!1454774) lt!1455026)))

(declare-fun b!4066667 () Bool)

(assert (=> b!4066667 (= e!2523746 e!2523748)))

(declare-fun res!1659797 () Bool)

(assert (=> b!4066667 (=> (not res!1659797) (not e!2523748))))

(assert (=> b!4066667 (= res!1659797 (not (is-Nil!43434 lt!1454774)))))

(declare-fun b!4066668 () Bool)

(declare-fun res!1659794 () Bool)

(assert (=> b!4066668 (=> (not res!1659794) (not e!2523748))))

(assert (=> b!4066668 (= res!1659794 (= (head!8580 lt!1454784) (head!8580 lt!1454774)))))

(assert (= (and d!1208756 (not res!1659796)) b!4066667))

(assert (= (and b!4066667 res!1659797) b!4066668))

(assert (= (and b!4066668 res!1659794) b!4066669))

(assert (= (and d!1208756 (not res!1659795)) b!4066670))

(declare-fun m!4674735 () Bool)

(assert (=> b!4066670 m!4674735))

(assert (=> b!4066670 m!4674351))

(assert (=> b!4066669 m!4674723))

(declare-fun m!4674737 () Bool)

(assert (=> b!4066669 m!4674737))

(assert (=> b!4066669 m!4674723))

(assert (=> b!4066669 m!4674737))

(declare-fun m!4674739 () Bool)

(assert (=> b!4066669 m!4674739))

(assert (=> b!4066668 m!4674727))

(declare-fun m!4674741 () Bool)

(assert (=> b!4066668 m!4674741))

(assert (=> b!4066417 d!1208756))

(declare-fun b!4066674 () Bool)

(declare-fun e!2523750 () Bool)

(assert (=> b!4066674 (= e!2523750 (>= (size!32474 lt!1454796) (size!32474 lt!1454752)))))

(declare-fun b!4066673 () Bool)

(declare-fun e!2523751 () Bool)

(assert (=> b!4066673 (= e!2523751 (isPrefix!4064 (tail!6312 lt!1454752) (tail!6312 lt!1454796)))))

(declare-fun d!1208758 () Bool)

(assert (=> d!1208758 e!2523750))

(declare-fun res!1659799 () Bool)

(assert (=> d!1208758 (=> res!1659799 e!2523750)))

(declare-fun lt!1455027 () Bool)

(assert (=> d!1208758 (= res!1659799 (not lt!1455027))))

(declare-fun e!2523749 () Bool)

(assert (=> d!1208758 (= lt!1455027 e!2523749)))

(declare-fun res!1659800 () Bool)

(assert (=> d!1208758 (=> res!1659800 e!2523749)))

(assert (=> d!1208758 (= res!1659800 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208758 (= (isPrefix!4064 lt!1454752 lt!1454796) lt!1455027)))

(declare-fun b!4066671 () Bool)

(assert (=> b!4066671 (= e!2523749 e!2523751)))

(declare-fun res!1659801 () Bool)

(assert (=> b!4066671 (=> (not res!1659801) (not e!2523751))))

(assert (=> b!4066671 (= res!1659801 (not (is-Nil!43434 lt!1454796)))))

(declare-fun b!4066672 () Bool)

(declare-fun res!1659798 () Bool)

(assert (=> b!4066672 (=> (not res!1659798) (not e!2523751))))

(assert (=> b!4066672 (= res!1659798 (= (head!8580 lt!1454752) (head!8580 lt!1454796)))))

(assert (= (and d!1208758 (not res!1659800)) b!4066671))

(assert (= (and b!4066671 res!1659801) b!4066672))

(assert (= (and b!4066672 res!1659798) b!4066673))

(assert (= (and d!1208758 (not res!1659799)) b!4066674))

(declare-fun m!4674743 () Bool)

(assert (=> b!4066674 m!4674743))

(assert (=> b!4066674 m!4674385))

(declare-fun m!4674745 () Bool)

(assert (=> b!4066673 m!4674745))

(declare-fun m!4674747 () Bool)

(assert (=> b!4066673 m!4674747))

(assert (=> b!4066673 m!4674745))

(assert (=> b!4066673 m!4674747))

(declare-fun m!4674749 () Bool)

(assert (=> b!4066673 m!4674749))

(declare-fun m!4674751 () Bool)

(assert (=> b!4066672 m!4674751))

(declare-fun m!4674753 () Bool)

(assert (=> b!4066672 m!4674753))

(assert (=> b!4066460 d!1208758))

(declare-fun d!1208760 () Bool)

(assert (=> d!1208760 (isPrefix!4064 prefix!494 (++!11379 prefix!494 suffix!1299))))

(declare-fun lt!1455030 () Unit!62963)

(declare-fun choose!24766 (List!43558 List!43558) Unit!62963)

(assert (=> d!1208760 (= lt!1455030 (choose!24766 prefix!494 suffix!1299))))

(assert (=> d!1208760 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 prefix!494 suffix!1299) lt!1455030)))

(declare-fun bs!592384 () Bool)

(assert (= bs!592384 d!1208760))

(assert (=> bs!592384 m!4674395))

(assert (=> bs!592384 m!4674395))

(declare-fun m!4674755 () Bool)

(assert (=> bs!592384 m!4674755))

(declare-fun m!4674757 () Bool)

(assert (=> bs!592384 m!4674757))

(assert (=> b!4066460 d!1208760))

(declare-fun d!1208762 () Bool)

(assert (=> d!1208762 (isPrefix!4064 lt!1454752 (++!11379 lt!1454752 suffixResult!105))))

(declare-fun lt!1455031 () Unit!62963)

(assert (=> d!1208762 (= lt!1455031 (choose!24766 lt!1454752 suffixResult!105))))

(assert (=> d!1208762 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454752 suffixResult!105) lt!1455031)))

(declare-fun bs!592385 () Bool)

(assert (= bs!592385 d!1208762))

(assert (=> bs!592385 m!4674443))

(assert (=> bs!592385 m!4674443))

(declare-fun m!4674759 () Bool)

(assert (=> bs!592385 m!4674759))

(declare-fun m!4674761 () Bool)

(assert (=> bs!592385 m!4674761))

(assert (=> b!4066460 d!1208762))

(declare-fun b!4066678 () Bool)

(declare-fun e!2523753 () Bool)

(assert (=> b!4066678 (= e!2523753 (>= (size!32474 lt!1454782) (size!32474 prefix!494)))))

(declare-fun b!4066677 () Bool)

(declare-fun e!2523754 () Bool)

(assert (=> b!4066677 (= e!2523754 (isPrefix!4064 (tail!6312 prefix!494) (tail!6312 lt!1454782)))))

(declare-fun d!1208764 () Bool)

(assert (=> d!1208764 e!2523753))

(declare-fun res!1659803 () Bool)

(assert (=> d!1208764 (=> res!1659803 e!2523753)))

(declare-fun lt!1455032 () Bool)

(assert (=> d!1208764 (= res!1659803 (not lt!1455032))))

(declare-fun e!2523752 () Bool)

(assert (=> d!1208764 (= lt!1455032 e!2523752)))

(declare-fun res!1659804 () Bool)

(assert (=> d!1208764 (=> res!1659804 e!2523752)))

(assert (=> d!1208764 (= res!1659804 (is-Nil!43434 prefix!494))))

(assert (=> d!1208764 (= (isPrefix!4064 prefix!494 lt!1454782) lt!1455032)))

(declare-fun b!4066675 () Bool)

(assert (=> b!4066675 (= e!2523752 e!2523754)))

(declare-fun res!1659805 () Bool)

(assert (=> b!4066675 (=> (not res!1659805) (not e!2523754))))

(assert (=> b!4066675 (= res!1659805 (not (is-Nil!43434 lt!1454782)))))

(declare-fun b!4066676 () Bool)

(declare-fun res!1659802 () Bool)

(assert (=> b!4066676 (=> (not res!1659802) (not e!2523754))))

(assert (=> b!4066676 (= res!1659802 (= (head!8580 prefix!494) (head!8580 lt!1454782)))))

(assert (= (and d!1208764 (not res!1659804)) b!4066675))

(assert (= (and b!4066675 res!1659805) b!4066676))

(assert (= (and b!4066676 res!1659802) b!4066677))

(assert (= (and d!1208764 (not res!1659803)) b!4066678))

(declare-fun m!4674763 () Bool)

(assert (=> b!4066678 m!4674763))

(assert (=> b!4066678 m!4674387))

(declare-fun m!4674765 () Bool)

(assert (=> b!4066677 m!4674765))

(declare-fun m!4674767 () Bool)

(assert (=> b!4066677 m!4674767))

(assert (=> b!4066677 m!4674765))

(assert (=> b!4066677 m!4674767))

(declare-fun m!4674769 () Bool)

(assert (=> b!4066677 m!4674769))

(declare-fun m!4674771 () Bool)

(assert (=> b!4066676 m!4674771))

(declare-fun m!4674773 () Bool)

(assert (=> b!4066676 m!4674773))

(assert (=> b!4066460 d!1208764))

(declare-fun b!4066682 () Bool)

(declare-fun e!2523756 () Bool)

(assert (=> b!4066682 (= e!2523756 (>= (size!32474 lt!1454782) (size!32474 lt!1454752)))))

(declare-fun b!4066681 () Bool)

(declare-fun e!2523757 () Bool)

(assert (=> b!4066681 (= e!2523757 (isPrefix!4064 (tail!6312 lt!1454752) (tail!6312 lt!1454782)))))

(declare-fun d!1208766 () Bool)

(assert (=> d!1208766 e!2523756))

(declare-fun res!1659807 () Bool)

(assert (=> d!1208766 (=> res!1659807 e!2523756)))

(declare-fun lt!1455033 () Bool)

(assert (=> d!1208766 (= res!1659807 (not lt!1455033))))

(declare-fun e!2523755 () Bool)

(assert (=> d!1208766 (= lt!1455033 e!2523755)))

(declare-fun res!1659808 () Bool)

(assert (=> d!1208766 (=> res!1659808 e!2523755)))

(assert (=> d!1208766 (= res!1659808 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208766 (= (isPrefix!4064 lt!1454752 lt!1454782) lt!1455033)))

(declare-fun b!4066679 () Bool)

(assert (=> b!4066679 (= e!2523755 e!2523757)))

(declare-fun res!1659809 () Bool)

(assert (=> b!4066679 (=> (not res!1659809) (not e!2523757))))

(assert (=> b!4066679 (= res!1659809 (not (is-Nil!43434 lt!1454782)))))

(declare-fun b!4066680 () Bool)

(declare-fun res!1659806 () Bool)

(assert (=> b!4066680 (=> (not res!1659806) (not e!2523757))))

(assert (=> b!4066680 (= res!1659806 (= (head!8580 lt!1454752) (head!8580 lt!1454782)))))

(assert (= (and d!1208766 (not res!1659808)) b!4066679))

(assert (= (and b!4066679 res!1659809) b!4066680))

(assert (= (and b!4066680 res!1659806) b!4066681))

(assert (= (and d!1208766 (not res!1659807)) b!4066682))

(assert (=> b!4066682 m!4674763))

(assert (=> b!4066682 m!4674385))

(assert (=> b!4066681 m!4674745))

(assert (=> b!4066681 m!4674767))

(assert (=> b!4066681 m!4674745))

(assert (=> b!4066681 m!4674767))

(declare-fun m!4674775 () Bool)

(assert (=> b!4066681 m!4674775))

(assert (=> b!4066680 m!4674751))

(assert (=> b!4066680 m!4674773))

(assert (=> b!4066460 d!1208766))

(declare-fun d!1208768 () Bool)

(declare-fun lt!1455036 () Int)

(assert (=> d!1208768 (>= lt!1455036 0)))

(declare-fun e!2523760 () Int)

(assert (=> d!1208768 (= lt!1455036 e!2523760)))

(declare-fun c!702151 () Bool)

(assert (=> d!1208768 (= c!702151 (is-Nil!43434 suffix!1299))))

(assert (=> d!1208768 (= (size!32474 suffix!1299) lt!1455036)))

(declare-fun b!4066687 () Bool)

(assert (=> b!4066687 (= e!2523760 0)))

(declare-fun b!4066688 () Bool)

(assert (=> b!4066688 (= e!2523760 (+ 1 (size!32474 (t!336861 suffix!1299))))))

(assert (= (and d!1208768 c!702151) b!4066687))

(assert (= (and d!1208768 (not c!702151)) b!4066688))

(declare-fun m!4674777 () Bool)

(assert (=> b!4066688 m!4674777))

(assert (=> b!4066419 d!1208768))

(declare-fun d!1208770 () Bool)

(declare-fun lt!1455037 () Int)

(assert (=> d!1208770 (>= lt!1455037 0)))

(declare-fun e!2523761 () Int)

(assert (=> d!1208770 (= lt!1455037 e!2523761)))

(declare-fun c!702152 () Bool)

(assert (=> d!1208770 (= c!702152 (is-Nil!43434 newSuffix!27))))

(assert (=> d!1208770 (= (size!32474 newSuffix!27) lt!1455037)))

(declare-fun b!4066689 () Bool)

(assert (=> b!4066689 (= e!2523761 0)))

(declare-fun b!4066690 () Bool)

(assert (=> b!4066690 (= e!2523761 (+ 1 (size!32474 (t!336861 newSuffix!27))))))

(assert (= (and d!1208770 c!702152) b!4066689))

(assert (= (and d!1208770 (not c!702152)) b!4066690))

(declare-fun m!4674779 () Bool)

(assert (=> b!4066690 m!4674779))

(assert (=> b!4066419 d!1208770))

(declare-fun b!4066694 () Bool)

(declare-fun e!2523763 () Bool)

(assert (=> b!4066694 (= e!2523763 (>= (size!32474 lt!1454782) (size!32474 lt!1454784)))))

(declare-fun b!4066693 () Bool)

(declare-fun e!2523764 () Bool)

(assert (=> b!4066693 (= e!2523764 (isPrefix!4064 (tail!6312 lt!1454784) (tail!6312 lt!1454782)))))

(declare-fun d!1208772 () Bool)

(assert (=> d!1208772 e!2523763))

(declare-fun res!1659811 () Bool)

(assert (=> d!1208772 (=> res!1659811 e!2523763)))

(declare-fun lt!1455038 () Bool)

(assert (=> d!1208772 (= res!1659811 (not lt!1455038))))

(declare-fun e!2523762 () Bool)

(assert (=> d!1208772 (= lt!1455038 e!2523762)))

(declare-fun res!1659812 () Bool)

(assert (=> d!1208772 (=> res!1659812 e!2523762)))

(assert (=> d!1208772 (= res!1659812 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208772 (= (isPrefix!4064 lt!1454784 lt!1454782) lt!1455038)))

(declare-fun b!4066691 () Bool)

(assert (=> b!4066691 (= e!2523762 e!2523764)))

(declare-fun res!1659813 () Bool)

(assert (=> b!4066691 (=> (not res!1659813) (not e!2523764))))

(assert (=> b!4066691 (= res!1659813 (not (is-Nil!43434 lt!1454782)))))

(declare-fun b!4066692 () Bool)

(declare-fun res!1659810 () Bool)

(assert (=> b!4066692 (=> (not res!1659810) (not e!2523764))))

(assert (=> b!4066692 (= res!1659810 (= (head!8580 lt!1454784) (head!8580 lt!1454782)))))

(assert (= (and d!1208772 (not res!1659812)) b!4066691))

(assert (= (and b!4066691 res!1659813) b!4066692))

(assert (= (and b!4066692 res!1659810) b!4066693))

(assert (= (and d!1208772 (not res!1659811)) b!4066694))

(assert (=> b!4066694 m!4674763))

(assert (=> b!4066694 m!4674351))

(assert (=> b!4066693 m!4674723))

(assert (=> b!4066693 m!4674767))

(assert (=> b!4066693 m!4674723))

(assert (=> b!4066693 m!4674767))

(declare-fun m!4674781 () Bool)

(assert (=> b!4066693 m!4674781))

(assert (=> b!4066692 m!4674727))

(assert (=> b!4066692 m!4674773))

(assert (=> b!4066462 d!1208772))

(declare-fun b!4066698 () Bool)

(declare-fun e!2523766 () Bool)

(assert (=> b!4066698 (= e!2523766 (>= (size!32474 lt!1454811) (size!32474 lt!1454784)))))

(declare-fun b!4066697 () Bool)

(declare-fun e!2523767 () Bool)

(assert (=> b!4066697 (= e!2523767 (isPrefix!4064 (tail!6312 lt!1454784) (tail!6312 lt!1454811)))))

(declare-fun d!1208774 () Bool)

(assert (=> d!1208774 e!2523766))

(declare-fun res!1659815 () Bool)

(assert (=> d!1208774 (=> res!1659815 e!2523766)))

(declare-fun lt!1455039 () Bool)

(assert (=> d!1208774 (= res!1659815 (not lt!1455039))))

(declare-fun e!2523765 () Bool)

(assert (=> d!1208774 (= lt!1455039 e!2523765)))

(declare-fun res!1659816 () Bool)

(assert (=> d!1208774 (=> res!1659816 e!2523765)))

(assert (=> d!1208774 (= res!1659816 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208774 (= (isPrefix!4064 lt!1454784 lt!1454811) lt!1455039)))

(declare-fun b!4066695 () Bool)

(assert (=> b!4066695 (= e!2523765 e!2523767)))

(declare-fun res!1659817 () Bool)

(assert (=> b!4066695 (=> (not res!1659817) (not e!2523767))))

(assert (=> b!4066695 (= res!1659817 (not (is-Nil!43434 lt!1454811)))))

(declare-fun b!4066696 () Bool)

(declare-fun res!1659814 () Bool)

(assert (=> b!4066696 (=> (not res!1659814) (not e!2523767))))

(assert (=> b!4066696 (= res!1659814 (= (head!8580 lt!1454784) (head!8580 lt!1454811)))))

(assert (= (and d!1208774 (not res!1659816)) b!4066695))

(assert (= (and b!4066695 res!1659817) b!4066696))

(assert (= (and b!4066696 res!1659814) b!4066697))

(assert (= (and d!1208774 (not res!1659815)) b!4066698))

(declare-fun m!4674783 () Bool)

(assert (=> b!4066698 m!4674783))

(assert (=> b!4066698 m!4674351))

(assert (=> b!4066697 m!4674723))

(declare-fun m!4674785 () Bool)

(assert (=> b!4066697 m!4674785))

(assert (=> b!4066697 m!4674723))

(assert (=> b!4066697 m!4674785))

(declare-fun m!4674787 () Bool)

(assert (=> b!4066697 m!4674787))

(assert (=> b!4066696 m!4674727))

(declare-fun m!4674789 () Bool)

(assert (=> b!4066696 m!4674789))

(assert (=> b!4066462 d!1208774))

(declare-fun d!1208776 () Bool)

(assert (=> d!1208776 (isPrefix!4064 lt!1454784 (++!11379 lt!1454774 lt!1454788))))

(declare-fun lt!1455042 () Unit!62963)

(declare-fun choose!24767 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> d!1208776 (= lt!1455042 (choose!24767 lt!1454784 lt!1454774 lt!1454788))))

(assert (=> d!1208776 (isPrefix!4064 lt!1454784 lt!1454774)))

(assert (=> d!1208776 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!857 lt!1454784 lt!1454774 lt!1454788) lt!1455042)))

(declare-fun bs!592386 () Bool)

(assert (= bs!592386 d!1208776))

(assert (=> bs!592386 m!4674467))

(assert (=> bs!592386 m!4674467))

(declare-fun m!4674791 () Bool)

(assert (=> bs!592386 m!4674791))

(declare-fun m!4674793 () Bool)

(assert (=> bs!592386 m!4674793))

(assert (=> bs!592386 m!4674327))

(assert (=> b!4066462 d!1208776))

(declare-fun d!1208778 () Bool)

(assert (=> d!1208778 (not (matchR!5835 (regex!6977 (rule!10077 token!484)) lt!1454784))))

(declare-fun lt!1455045 () Unit!62963)

(declare-fun choose!24768 (LexerInterface!6566 List!43560 Rule!13754 List!43558 List!43558 Rule!13754) Unit!62963)

(assert (=> d!1208778 (= lt!1455045 (choose!24768 thiss!21717 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454784 lt!1454774 (rule!10077 token!484)))))

(assert (=> d!1208778 (isPrefix!4064 lt!1454784 lt!1454774)))

(assert (=> d!1208778 (= (lemmaMaxPrefNoSmallerRuleMatches!305 thiss!21717 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454784 lt!1454774 (rule!10077 token!484)) lt!1455045)))

(declare-fun bs!592387 () Bool)

(assert (= bs!592387 d!1208778))

(assert (=> bs!592387 m!4674473))

(declare-fun m!4674795 () Bool)

(assert (=> bs!592387 m!4674795))

(assert (=> bs!592387 m!4674327))

(assert (=> b!4066461 d!1208778))

(declare-fun b!4066699 () Bool)

(declare-fun e!2523773 () Bool)

(declare-fun lt!1455046 () Bool)

(declare-fun call!288296 () Bool)

(assert (=> b!4066699 (= e!2523773 (= lt!1455046 call!288296))))

(declare-fun b!4066700 () Bool)

(declare-fun res!1659821 () Bool)

(declare-fun e!2523769 () Bool)

(assert (=> b!4066700 (=> (not res!1659821) (not e!2523769))))

(assert (=> b!4066700 (= res!1659821 (not call!288296))))

(declare-fun b!4066701 () Bool)

(declare-fun res!1659820 () Bool)

(declare-fun e!2523772 () Bool)

(assert (=> b!4066701 (=> res!1659820 e!2523772)))

(assert (=> b!4066701 (= res!1659820 (not (isEmpty!25924 (tail!6312 lt!1454784))))))

(declare-fun b!4066702 () Bool)

(assert (=> b!4066702 (= e!2523769 (= (head!8580 lt!1454784) (c!702124 (regex!6977 (rule!10077 token!484)))))))

(declare-fun b!4066703 () Bool)

(declare-fun res!1659819 () Bool)

(assert (=> b!4066703 (=> (not res!1659819) (not e!2523769))))

(assert (=> b!4066703 (= res!1659819 (isEmpty!25924 (tail!6312 lt!1454784)))))

(declare-fun b!4066704 () Bool)

(declare-fun e!2523768 () Bool)

(assert (=> b!4066704 (= e!2523768 (nullable!4177 (regex!6977 (rule!10077 token!484))))))

(declare-fun b!4066705 () Bool)

(declare-fun e!2523770 () Bool)

(assert (=> b!4066705 (= e!2523770 e!2523772)))

(declare-fun res!1659822 () Bool)

(assert (=> b!4066705 (=> res!1659822 e!2523772)))

(assert (=> b!4066705 (= res!1659822 call!288296)))

(declare-fun b!4066706 () Bool)

(declare-fun res!1659825 () Bool)

(declare-fun e!2523774 () Bool)

(assert (=> b!4066706 (=> res!1659825 e!2523774)))

(assert (=> b!4066706 (= res!1659825 e!2523769)))

(declare-fun res!1659818 () Bool)

(assert (=> b!4066706 (=> (not res!1659818) (not e!2523769))))

(assert (=> b!4066706 (= res!1659818 lt!1455046)))

(declare-fun b!4066707 () Bool)

(declare-fun res!1659824 () Bool)

(assert (=> b!4066707 (=> res!1659824 e!2523774)))

(assert (=> b!4066707 (= res!1659824 (not (is-ElementMatch!11882 (regex!6977 (rule!10077 token!484)))))))

(declare-fun e!2523771 () Bool)

(assert (=> b!4066707 (= e!2523771 e!2523774)))

(declare-fun bm!288291 () Bool)

(assert (=> bm!288291 (= call!288296 (isEmpty!25924 lt!1454784))))

(declare-fun d!1208780 () Bool)

(assert (=> d!1208780 e!2523773))

(declare-fun c!702153 () Bool)

(assert (=> d!1208780 (= c!702153 (is-EmptyExpr!11882 (regex!6977 (rule!10077 token!484))))))

(assert (=> d!1208780 (= lt!1455046 e!2523768)))

(declare-fun c!702155 () Bool)

(assert (=> d!1208780 (= c!702155 (isEmpty!25924 lt!1454784))))

(assert (=> d!1208780 (validRegex!5377 (regex!6977 (rule!10077 token!484)))))

(assert (=> d!1208780 (= (matchR!5835 (regex!6977 (rule!10077 token!484)) lt!1454784) lt!1455046)))

(declare-fun b!4066708 () Bool)

(assert (=> b!4066708 (= e!2523773 e!2523771)))

(declare-fun c!702154 () Bool)

(assert (=> b!4066708 (= c!702154 (is-EmptyLang!11882 (regex!6977 (rule!10077 token!484))))))

(declare-fun b!4066709 () Bool)

(assert (=> b!4066709 (= e!2523772 (not (= (head!8580 lt!1454784) (c!702124 (regex!6977 (rule!10077 token!484))))))))

(declare-fun b!4066710 () Bool)

(assert (=> b!4066710 (= e!2523771 (not lt!1455046))))

(declare-fun b!4066711 () Bool)

(assert (=> b!4066711 (= e!2523774 e!2523770)))

(declare-fun res!1659823 () Bool)

(assert (=> b!4066711 (=> (not res!1659823) (not e!2523770))))

(assert (=> b!4066711 (= res!1659823 (not lt!1455046))))

(declare-fun b!4066712 () Bool)

(assert (=> b!4066712 (= e!2523768 (matchR!5835 (derivativeStep!3582 (regex!6977 (rule!10077 token!484)) (head!8580 lt!1454784)) (tail!6312 lt!1454784)))))

(assert (= (and d!1208780 c!702155) b!4066704))

(assert (= (and d!1208780 (not c!702155)) b!4066712))

(assert (= (and d!1208780 c!702153) b!4066699))

(assert (= (and d!1208780 (not c!702153)) b!4066708))

(assert (= (and b!4066708 c!702154) b!4066710))

(assert (= (and b!4066708 (not c!702154)) b!4066707))

(assert (= (and b!4066707 (not res!1659824)) b!4066706))

(assert (= (and b!4066706 res!1659818) b!4066700))

(assert (= (and b!4066700 res!1659821) b!4066703))

(assert (= (and b!4066703 res!1659819) b!4066702))

(assert (= (and b!4066706 (not res!1659825)) b!4066711))

(assert (= (and b!4066711 res!1659823) b!4066705))

(assert (= (and b!4066705 (not res!1659822)) b!4066701))

(assert (= (and b!4066701 (not res!1659820)) b!4066709))

(assert (= (or b!4066699 b!4066700 b!4066705) bm!288291))

(assert (=> d!1208780 m!4674719))

(declare-fun m!4674797 () Bool)

(assert (=> d!1208780 m!4674797))

(assert (=> b!4066701 m!4674723))

(assert (=> b!4066701 m!4674723))

(assert (=> b!4066701 m!4674725))

(assert (=> b!4066703 m!4674723))

(assert (=> b!4066703 m!4674723))

(assert (=> b!4066703 m!4674725))

(assert (=> bm!288291 m!4674719))

(assert (=> b!4066709 m!4674727))

(assert (=> b!4066702 m!4674727))

(declare-fun m!4674799 () Bool)

(assert (=> b!4066704 m!4674799))

(assert (=> b!4066712 m!4674727))

(assert (=> b!4066712 m!4674727))

(declare-fun m!4674801 () Bool)

(assert (=> b!4066712 m!4674801))

(assert (=> b!4066712 m!4674723))

(assert (=> b!4066712 m!4674801))

(assert (=> b!4066712 m!4674723))

(declare-fun m!4674803 () Bool)

(assert (=> b!4066712 m!4674803))

(assert (=> b!4066461 d!1208780))

(declare-fun d!1208782 () Bool)

(assert (=> d!1208782 (= (size!32473 token!484) (size!32474 (originalCharacters!7577 token!484)))))

(declare-fun Unit!62985 () Unit!62963)

(assert (=> d!1208782 (= (lemmaCharactersSize!1496 token!484) Unit!62985)))

(declare-fun bs!592388 () Bool)

(assert (= bs!592388 d!1208782))

(assert (=> bs!592388 m!4674457))

(assert (=> b!4066463 d!1208782))

(declare-fun d!1208784 () Bool)

(declare-fun dynLambda!18451 (Int BalanceConc!25970) TokenValue!7207)

(assert (=> d!1208784 (= (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (seqFromList!5194 lt!1454784)) (dynLambda!18451 (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (seqFromList!5194 lt!1454784)))))

(declare-fun b_lambda!118807 () Bool)

(assert (=> (not b_lambda!118807) (not d!1208784)))

(declare-fun tb!244529 () Bool)

(declare-fun t!336868 () Bool)

(assert (=> (and b!4066435 (= (toValue!9537 (transformation!6977 (h!48856 rules!2999))) (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))) t!336868) tb!244529))

(declare-fun result!296326 () Bool)

(assert (=> tb!244529 (= result!296326 (inv!21 (dynLambda!18451 (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (seqFromList!5194 lt!1454784))))))

(declare-fun m!4674805 () Bool)

(assert (=> tb!244529 m!4674805))

(assert (=> d!1208784 t!336868))

(declare-fun b_and!312571 () Bool)

(assert (= b_and!312555 (and (=> t!336868 result!296326) b_and!312571)))

(declare-fun t!336870 () Bool)

(declare-fun tb!244531 () Bool)

(assert (=> (and b!4066459 (= (toValue!9537 (transformation!6977 (rule!10077 token!484))) (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))) t!336870) tb!244531))

(declare-fun result!296330 () Bool)

(assert (= result!296330 result!296326))

(assert (=> d!1208784 t!336870))

(declare-fun b_and!312573 () Bool)

(assert (= b_and!312559 (and (=> t!336870 result!296330) b_and!312573)))

(assert (=> d!1208784 m!4674363))

(declare-fun m!4674807 () Bool)

(assert (=> d!1208784 m!4674807))

(assert (=> b!4066463 d!1208784))

(declare-fun d!1208786 () Bool)

(assert (=> d!1208786 (= (maxPrefixOneRule!2876 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454774) (Some!9390 (tuple2!42489 (Token!13093 (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (seqFromList!5194 lt!1454784)) (rule!10077 (_1!24378 (v!39818 lt!1454783))) (size!32474 lt!1454784) lt!1454784) (_2!24378 (v!39818 lt!1454783)))))))

(declare-fun lt!1455049 () Unit!62963)

(declare-fun choose!24769 (LexerInterface!6566 List!43560 List!43558 List!43558 List!43558 Rule!13754) Unit!62963)

(assert (=> d!1208786 (= lt!1455049 (choose!24769 thiss!21717 rules!2999 lt!1454784 lt!1454774 (_2!24378 (v!39818 lt!1454783)) (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> d!1208786 (not (isEmpty!25922 rules!2999))))

(assert (=> d!1208786 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1682 thiss!21717 rules!2999 lt!1454784 lt!1454774 (_2!24378 (v!39818 lt!1454783)) (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1455049)))

(declare-fun bs!592389 () Bool)

(assert (= bs!592389 d!1208786))

(assert (=> bs!592389 m!4674329))

(assert (=> bs!592389 m!4674383))

(assert (=> bs!592389 m!4674363))

(declare-fun m!4674809 () Bool)

(assert (=> bs!592389 m!4674809))

(assert (=> bs!592389 m!4674351))

(assert (=> bs!592389 m!4674363))

(assert (=> bs!592389 m!4674365))

(assert (=> b!4066463 d!1208786))

(declare-fun b!4066797 () Bool)

(declare-fun res!1659886 () Bool)

(declare-fun e!2523823 () Bool)

(assert (=> b!4066797 (=> (not res!1659886) (not e!2523823))))

(declare-fun lt!1455073 () Option!9391)

(declare-fun get!14244 (Option!9391) tuple2!42488)

(assert (=> b!4066797 (= res!1659886 (= (rule!10077 (_1!24378 (get!14244 lt!1455073))) (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun b!4066799 () Bool)

(declare-fun res!1659883 () Bool)

(assert (=> b!4066799 (=> (not res!1659883) (not e!2523823))))

(assert (=> b!4066799 (= res!1659883 (= (++!11379 (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455073)))) (_2!24378 (get!14244 lt!1455073))) lt!1454774))))

(declare-fun b!4066800 () Bool)

(declare-fun e!2523820 () Option!9391)

(assert (=> b!4066800 (= e!2523820 None!9390)))

(declare-fun b!4066801 () Bool)

(declare-fun e!2523821 () Bool)

(assert (=> b!4066801 (= e!2523821 e!2523823)))

(declare-fun res!1659880 () Bool)

(assert (=> b!4066801 (=> (not res!1659880) (not e!2523823))))

(assert (=> b!4066801 (= res!1659880 (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455073))))))))

(declare-fun b!4066802 () Bool)

(declare-datatypes ((tuple2!42492 0))(
  ( (tuple2!42493 (_1!24380 List!43558) (_2!24380 List!43558)) )
))
(declare-fun lt!1455071 () tuple2!42492)

(declare-fun size!32477 (BalanceConc!25970) Int)

(assert (=> b!4066802 (= e!2523820 (Some!9390 (tuple2!42489 (Token!13093 (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (seqFromList!5194 (_1!24380 lt!1455071))) (rule!10077 (_1!24378 (v!39818 lt!1454783))) (size!32477 (seqFromList!5194 (_1!24380 lt!1455071))) (_1!24380 lt!1455071)) (_2!24380 lt!1455071))))))

(declare-fun lt!1455070 () Unit!62963)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1387 (Regex!11882 List!43558) Unit!62963)

(assert (=> b!4066802 (= lt!1455070 (longestMatchIsAcceptedByMatchOrIsEmpty!1387 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454774))))

(declare-fun res!1659885 () Bool)

(declare-fun findLongestMatchInner!1414 (Regex!11882 List!43558 Int List!43558 List!43558 Int) tuple2!42492)

(assert (=> b!4066802 (= res!1659885 (isEmpty!25924 (_1!24380 (findLongestMatchInner!1414 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) Nil!43434 (size!32474 Nil!43434) lt!1454774 lt!1454774 (size!32474 lt!1454774)))))))

(declare-fun e!2523822 () Bool)

(assert (=> b!4066802 (=> res!1659885 e!2523822)))

(assert (=> b!4066802 e!2523822))

(declare-fun lt!1455069 () Unit!62963)

(assert (=> b!4066802 (= lt!1455069 lt!1455070)))

(declare-fun lt!1455072 () Unit!62963)

(declare-fun lemmaSemiInverse!1946 (TokenValueInjection!13842 BalanceConc!25970) Unit!62963)

(assert (=> b!4066802 (= lt!1455072 (lemmaSemiInverse!1946 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (seqFromList!5194 (_1!24380 lt!1455071))))))

(declare-fun b!4066803 () Bool)

(assert (=> b!4066803 (= e!2523822 (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (_1!24380 (findLongestMatchInner!1414 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) Nil!43434 (size!32474 Nil!43434) lt!1454774 lt!1454774 (size!32474 lt!1454774)))))))

(declare-fun b!4066804 () Bool)

(declare-fun res!1659882 () Bool)

(assert (=> b!4066804 (=> (not res!1659882) (not e!2523823))))

(assert (=> b!4066804 (= res!1659882 (= (value!219480 (_1!24378 (get!14244 lt!1455073))) (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (get!14244 lt!1455073)))) (seqFromList!5194 (originalCharacters!7577 (_1!24378 (get!14244 lt!1455073)))))))))

(declare-fun b!4066805 () Bool)

(assert (=> b!4066805 (= e!2523823 (= (size!32473 (_1!24378 (get!14244 lt!1455073))) (size!32474 (originalCharacters!7577 (_1!24378 (get!14244 lt!1455073))))))))

(declare-fun b!4066798 () Bool)

(declare-fun res!1659881 () Bool)

(assert (=> b!4066798 (=> (not res!1659881) (not e!2523823))))

(assert (=> b!4066798 (= res!1659881 (< (size!32474 (_2!24378 (get!14244 lt!1455073))) (size!32474 lt!1454774)))))

(declare-fun d!1208790 () Bool)

(assert (=> d!1208790 e!2523821))

(declare-fun res!1659884 () Bool)

(assert (=> d!1208790 (=> res!1659884 e!2523821)))

(declare-fun isEmpty!25925 (Option!9391) Bool)

(assert (=> d!1208790 (= res!1659884 (isEmpty!25925 lt!1455073))))

(assert (=> d!1208790 (= lt!1455073 e!2523820)))

(declare-fun c!702170 () Bool)

(assert (=> d!1208790 (= c!702170 (isEmpty!25924 (_1!24380 lt!1455071)))))

(declare-fun findLongestMatch!1327 (Regex!11882 List!43558) tuple2!42492)

(assert (=> d!1208790 (= lt!1455071 (findLongestMatch!1327 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454774))))

(assert (=> d!1208790 (ruleValid!2907 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))

(assert (=> d!1208790 (= (maxPrefixOneRule!2876 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454774) lt!1455073)))

(assert (= (and d!1208790 c!702170) b!4066800))

(assert (= (and d!1208790 (not c!702170)) b!4066802))

(assert (= (and b!4066802 (not res!1659885)) b!4066803))

(assert (= (and d!1208790 (not res!1659884)) b!4066801))

(assert (= (and b!4066801 res!1659880) b!4066799))

(assert (= (and b!4066799 res!1659883) b!4066798))

(assert (= (and b!4066798 res!1659881) b!4066797))

(assert (= (and b!4066797 res!1659886) b!4066804))

(assert (= (and b!4066804 res!1659882) b!4066805))

(declare-fun m!4674853 () Bool)

(assert (=> b!4066801 m!4674853))

(declare-fun m!4674855 () Bool)

(assert (=> b!4066801 m!4674855))

(assert (=> b!4066801 m!4674855))

(declare-fun m!4674857 () Bool)

(assert (=> b!4066801 m!4674857))

(assert (=> b!4066801 m!4674857))

(declare-fun m!4674859 () Bool)

(assert (=> b!4066801 m!4674859))

(declare-fun m!4674861 () Bool)

(assert (=> b!4066803 m!4674861))

(assert (=> b!4066803 m!4674735))

(assert (=> b!4066803 m!4674861))

(assert (=> b!4066803 m!4674735))

(declare-fun m!4674863 () Bool)

(assert (=> b!4066803 m!4674863))

(declare-fun m!4674865 () Bool)

(assert (=> b!4066803 m!4674865))

(assert (=> b!4066804 m!4674853))

(declare-fun m!4674867 () Bool)

(assert (=> b!4066804 m!4674867))

(assert (=> b!4066804 m!4674867))

(declare-fun m!4674869 () Bool)

(assert (=> b!4066804 m!4674869))

(declare-fun m!4674871 () Bool)

(assert (=> b!4066802 m!4674871))

(declare-fun m!4674873 () Bool)

(assert (=> b!4066802 m!4674873))

(declare-fun m!4674875 () Bool)

(assert (=> b!4066802 m!4674875))

(declare-fun m!4674877 () Bool)

(assert (=> b!4066802 m!4674877))

(assert (=> b!4066802 m!4674871))

(declare-fun m!4674879 () Bool)

(assert (=> b!4066802 m!4674879))

(assert (=> b!4066802 m!4674861))

(assert (=> b!4066802 m!4674871))

(declare-fun m!4674881 () Bool)

(assert (=> b!4066802 m!4674881))

(assert (=> b!4066802 m!4674871))

(assert (=> b!4066802 m!4674861))

(assert (=> b!4066802 m!4674735))

(assert (=> b!4066802 m!4674863))

(assert (=> b!4066802 m!4674735))

(declare-fun m!4674883 () Bool)

(assert (=> d!1208790 m!4674883))

(declare-fun m!4674885 () Bool)

(assert (=> d!1208790 m!4674885))

(declare-fun m!4674887 () Bool)

(assert (=> d!1208790 m!4674887))

(assert (=> d!1208790 m!4674377))

(assert (=> b!4066799 m!4674853))

(assert (=> b!4066799 m!4674855))

(assert (=> b!4066799 m!4674855))

(assert (=> b!4066799 m!4674857))

(assert (=> b!4066799 m!4674857))

(declare-fun m!4674889 () Bool)

(assert (=> b!4066799 m!4674889))

(assert (=> b!4066797 m!4674853))

(assert (=> b!4066798 m!4674853))

(declare-fun m!4674891 () Bool)

(assert (=> b!4066798 m!4674891))

(assert (=> b!4066798 m!4674735))

(assert (=> b!4066805 m!4674853))

(declare-fun m!4674893 () Bool)

(assert (=> b!4066805 m!4674893))

(assert (=> b!4066463 d!1208790))

(declare-fun b!4066813 () Bool)

(declare-fun e!2523828 () Bool)

(assert (=> b!4066813 (= e!2523828 (>= (size!32474 (++!11379 lt!1454784 newSuffixResult!27)) (size!32474 lt!1454784)))))

(declare-fun b!4066812 () Bool)

(declare-fun e!2523829 () Bool)

(assert (=> b!4066812 (= e!2523829 (isPrefix!4064 (tail!6312 lt!1454784) (tail!6312 (++!11379 lt!1454784 newSuffixResult!27))))))

(declare-fun d!1208800 () Bool)

(assert (=> d!1208800 e!2523828))

(declare-fun res!1659892 () Bool)

(assert (=> d!1208800 (=> res!1659892 e!2523828)))

(declare-fun lt!1455075 () Bool)

(assert (=> d!1208800 (= res!1659892 (not lt!1455075))))

(declare-fun e!2523827 () Bool)

(assert (=> d!1208800 (= lt!1455075 e!2523827)))

(declare-fun res!1659893 () Bool)

(assert (=> d!1208800 (=> res!1659893 e!2523827)))

(assert (=> d!1208800 (= res!1659893 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208800 (= (isPrefix!4064 lt!1454784 (++!11379 lt!1454784 newSuffixResult!27)) lt!1455075)))

(declare-fun b!4066810 () Bool)

(assert (=> b!4066810 (= e!2523827 e!2523829)))

(declare-fun res!1659894 () Bool)

(assert (=> b!4066810 (=> (not res!1659894) (not e!2523829))))

(assert (=> b!4066810 (= res!1659894 (not (is-Nil!43434 (++!11379 lt!1454784 newSuffixResult!27))))))

(declare-fun b!4066811 () Bool)

(declare-fun res!1659891 () Bool)

(assert (=> b!4066811 (=> (not res!1659891) (not e!2523829))))

(assert (=> b!4066811 (= res!1659891 (= (head!8580 lt!1454784) (head!8580 (++!11379 lt!1454784 newSuffixResult!27))))))

(assert (= (and d!1208800 (not res!1659893)) b!4066810))

(assert (= (and b!4066810 res!1659894) b!4066811))

(assert (= (and b!4066811 res!1659891) b!4066812))

(assert (= (and d!1208800 (not res!1659892)) b!4066813))

(assert (=> b!4066813 m!4674367))

(declare-fun m!4674895 () Bool)

(assert (=> b!4066813 m!4674895))

(assert (=> b!4066813 m!4674351))

(assert (=> b!4066812 m!4674723))

(assert (=> b!4066812 m!4674367))

(declare-fun m!4674897 () Bool)

(assert (=> b!4066812 m!4674897))

(assert (=> b!4066812 m!4674723))

(assert (=> b!4066812 m!4674897))

(declare-fun m!4674899 () Bool)

(assert (=> b!4066812 m!4674899))

(assert (=> b!4066811 m!4674727))

(assert (=> b!4066811 m!4674367))

(declare-fun m!4674901 () Bool)

(assert (=> b!4066811 m!4674901))

(assert (=> b!4066463 d!1208800))

(declare-fun d!1208802 () Bool)

(declare-fun e!2523834 () Bool)

(assert (=> d!1208802 e!2523834))

(declare-fun res!1659899 () Bool)

(assert (=> d!1208802 (=> (not res!1659899) (not e!2523834))))

(declare-fun lt!1455082 () List!43558)

(declare-fun content!6632 (List!43558) (Set C!23950))

(assert (=> d!1208802 (= res!1659899 (= (content!6632 lt!1455082) (set.union (content!6632 lt!1454784) (content!6632 (_2!24378 (v!39818 lt!1454783))))))))

(declare-fun e!2523835 () List!43558)

(assert (=> d!1208802 (= lt!1455082 e!2523835)))

(declare-fun c!702173 () Bool)

(assert (=> d!1208802 (= c!702173 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208802 (= (++!11379 lt!1454784 (_2!24378 (v!39818 lt!1454783))) lt!1455082)))

(declare-fun b!4066822 () Bool)

(assert (=> b!4066822 (= e!2523835 (_2!24378 (v!39818 lt!1454783)))))

(declare-fun b!4066824 () Bool)

(declare-fun res!1659900 () Bool)

(assert (=> b!4066824 (=> (not res!1659900) (not e!2523834))))

(assert (=> b!4066824 (= res!1659900 (= (size!32474 lt!1455082) (+ (size!32474 lt!1454784) (size!32474 (_2!24378 (v!39818 lt!1454783))))))))

(declare-fun b!4066825 () Bool)

(assert (=> b!4066825 (= e!2523834 (or (not (= (_2!24378 (v!39818 lt!1454783)) Nil!43434)) (= lt!1455082 lt!1454784)))))

(declare-fun b!4066823 () Bool)

(assert (=> b!4066823 (= e!2523835 (Cons!43434 (h!48854 lt!1454784) (++!11379 (t!336861 lt!1454784) (_2!24378 (v!39818 lt!1454783)))))))

(assert (= (and d!1208802 c!702173) b!4066822))

(assert (= (and d!1208802 (not c!702173)) b!4066823))

(assert (= (and d!1208802 res!1659899) b!4066824))

(assert (= (and b!4066824 res!1659900) b!4066825))

(declare-fun m!4674911 () Bool)

(assert (=> d!1208802 m!4674911))

(declare-fun m!4674913 () Bool)

(assert (=> d!1208802 m!4674913))

(declare-fun m!4674915 () Bool)

(assert (=> d!1208802 m!4674915))

(declare-fun m!4674917 () Bool)

(assert (=> b!4066824 m!4674917))

(assert (=> b!4066824 m!4674351))

(declare-fun m!4674919 () Bool)

(assert (=> b!4066824 m!4674919))

(declare-fun m!4674921 () Bool)

(assert (=> b!4066823 m!4674921))

(assert (=> b!4066463 d!1208802))

(declare-fun b!4066829 () Bool)

(declare-fun e!2523837 () Bool)

(assert (=> b!4066829 (= e!2523837 (>= (size!32474 lt!1454775) (size!32474 lt!1454784)))))

(declare-fun b!4066828 () Bool)

(declare-fun e!2523838 () Bool)

(assert (=> b!4066828 (= e!2523838 (isPrefix!4064 (tail!6312 lt!1454784) (tail!6312 lt!1454775)))))

(declare-fun d!1208808 () Bool)

(assert (=> d!1208808 e!2523837))

(declare-fun res!1659902 () Bool)

(assert (=> d!1208808 (=> res!1659902 e!2523837)))

(declare-fun lt!1455083 () Bool)

(assert (=> d!1208808 (= res!1659902 (not lt!1455083))))

(declare-fun e!2523836 () Bool)

(assert (=> d!1208808 (= lt!1455083 e!2523836)))

(declare-fun res!1659903 () Bool)

(assert (=> d!1208808 (=> res!1659903 e!2523836)))

(assert (=> d!1208808 (= res!1659903 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208808 (= (isPrefix!4064 lt!1454784 lt!1454775) lt!1455083)))

(declare-fun b!4066826 () Bool)

(assert (=> b!4066826 (= e!2523836 e!2523838)))

(declare-fun res!1659904 () Bool)

(assert (=> b!4066826 (=> (not res!1659904) (not e!2523838))))

(assert (=> b!4066826 (= res!1659904 (not (is-Nil!43434 lt!1454775)))))

(declare-fun b!4066827 () Bool)

(declare-fun res!1659901 () Bool)

(assert (=> b!4066827 (=> (not res!1659901) (not e!2523838))))

(assert (=> b!4066827 (= res!1659901 (= (head!8580 lt!1454784) (head!8580 lt!1454775)))))

(assert (= (and d!1208808 (not res!1659903)) b!4066826))

(assert (= (and b!4066826 res!1659904) b!4066827))

(assert (= (and b!4066827 res!1659901) b!4066828))

(assert (= (and d!1208808 (not res!1659902)) b!4066829))

(declare-fun m!4674923 () Bool)

(assert (=> b!4066829 m!4674923))

(assert (=> b!4066829 m!4674351))

(assert (=> b!4066828 m!4674723))

(declare-fun m!4674925 () Bool)

(assert (=> b!4066828 m!4674925))

(assert (=> b!4066828 m!4674723))

(assert (=> b!4066828 m!4674925))

(declare-fun m!4674927 () Bool)

(assert (=> b!4066828 m!4674927))

(assert (=> b!4066827 m!4674727))

(declare-fun m!4674929 () Bool)

(assert (=> b!4066827 m!4674929))

(assert (=> b!4066463 d!1208808))

(declare-fun d!1208812 () Bool)

(assert (=> d!1208812 (= (size!32473 (_1!24378 (v!39818 lt!1454783))) (size!32474 (originalCharacters!7577 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun Unit!62986 () Unit!62963)

(assert (=> d!1208812 (= (lemmaCharactersSize!1496 (_1!24378 (v!39818 lt!1454783))) Unit!62986)))

(declare-fun bs!592393 () Bool)

(assert (= bs!592393 d!1208812))

(declare-fun m!4674931 () Bool)

(assert (=> bs!592393 m!4674931))

(assert (=> b!4066463 d!1208812))

(declare-fun d!1208814 () Bool)

(declare-fun e!2523841 () Bool)

(assert (=> d!1208814 e!2523841))

(declare-fun res!1659907 () Bool)

(assert (=> d!1208814 (=> (not res!1659907) (not e!2523841))))

(declare-fun semiInverseModEq!2985 (Int Int) Bool)

(assert (=> d!1208814 (= res!1659907 (semiInverseModEq!2985 (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(declare-fun Unit!62987 () Unit!62963)

(assert (=> d!1208814 (= (lemmaInv!1186 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) Unit!62987)))

(declare-fun b!4066832 () Bool)

(declare-fun equivClasses!2884 (Int Int) Bool)

(assert (=> b!4066832 (= e!2523841 (equivClasses!2884 (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(assert (= (and d!1208814 res!1659907) b!4066832))

(declare-fun m!4674933 () Bool)

(assert (=> d!1208814 m!4674933))

(declare-fun m!4674935 () Bool)

(assert (=> b!4066832 m!4674935))

(assert (=> b!4066463 d!1208814))

(declare-fun d!1208816 () Bool)

(assert (=> d!1208816 (isPrefix!4064 lt!1454784 (++!11379 lt!1454784 (_2!24378 (v!39818 lt!1454783))))))

(declare-fun lt!1455084 () Unit!62963)

(assert (=> d!1208816 (= lt!1455084 (choose!24766 lt!1454784 (_2!24378 (v!39818 lt!1454783))))))

(assert (=> d!1208816 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454784 (_2!24378 (v!39818 lt!1454783))) lt!1455084)))

(declare-fun bs!592394 () Bool)

(assert (= bs!592394 d!1208816))

(assert (=> bs!592394 m!4674357))

(assert (=> bs!592394 m!4674357))

(declare-fun m!4674937 () Bool)

(assert (=> bs!592394 m!4674937))

(declare-fun m!4674939 () Bool)

(assert (=> bs!592394 m!4674939))

(assert (=> b!4066463 d!1208816))

(declare-fun d!1208818 () Bool)

(declare-fun e!2523842 () Bool)

(assert (=> d!1208818 e!2523842))

(declare-fun res!1659908 () Bool)

(assert (=> d!1208818 (=> (not res!1659908) (not e!2523842))))

(declare-fun lt!1455085 () List!43558)

(assert (=> d!1208818 (= res!1659908 (= (content!6632 lt!1455085) (set.union (content!6632 lt!1454784) (content!6632 newSuffixResult!27))))))

(declare-fun e!2523843 () List!43558)

(assert (=> d!1208818 (= lt!1455085 e!2523843)))

(declare-fun c!702174 () Bool)

(assert (=> d!1208818 (= c!702174 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208818 (= (++!11379 lt!1454784 newSuffixResult!27) lt!1455085)))

(declare-fun b!4066833 () Bool)

(assert (=> b!4066833 (= e!2523843 newSuffixResult!27)))

(declare-fun b!4066835 () Bool)

(declare-fun res!1659909 () Bool)

(assert (=> b!4066835 (=> (not res!1659909) (not e!2523842))))

(assert (=> b!4066835 (= res!1659909 (= (size!32474 lt!1455085) (+ (size!32474 lt!1454784) (size!32474 newSuffixResult!27))))))

(declare-fun b!4066836 () Bool)

(assert (=> b!4066836 (= e!2523842 (or (not (= newSuffixResult!27 Nil!43434)) (= lt!1455085 lt!1454784)))))

(declare-fun b!4066834 () Bool)

(assert (=> b!4066834 (= e!2523843 (Cons!43434 (h!48854 lt!1454784) (++!11379 (t!336861 lt!1454784) newSuffixResult!27)))))

(assert (= (and d!1208818 c!702174) b!4066833))

(assert (= (and d!1208818 (not c!702174)) b!4066834))

(assert (= (and d!1208818 res!1659908) b!4066835))

(assert (= (and b!4066835 res!1659909) b!4066836))

(declare-fun m!4674941 () Bool)

(assert (=> d!1208818 m!4674941))

(assert (=> d!1208818 m!4674913))

(declare-fun m!4674943 () Bool)

(assert (=> d!1208818 m!4674943))

(declare-fun m!4674945 () Bool)

(assert (=> b!4066835 m!4674945))

(assert (=> b!4066835 m!4674351))

(declare-fun m!4674947 () Bool)

(assert (=> b!4066835 m!4674947))

(declare-fun m!4674949 () Bool)

(assert (=> b!4066834 m!4674949))

(assert (=> b!4066463 d!1208818))

(declare-fun d!1208820 () Bool)

(declare-fun res!1659917 () Bool)

(declare-fun e!2523849 () Bool)

(assert (=> d!1208820 (=> (not res!1659917) (not e!2523849))))

(assert (=> d!1208820 (= res!1659917 (validRegex!5377 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(assert (=> d!1208820 (= (ruleValid!2907 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) e!2523849)))

(declare-fun b!4066844 () Bool)

(declare-fun res!1659918 () Bool)

(assert (=> b!4066844 (=> (not res!1659918) (not e!2523849))))

(assert (=> b!4066844 (= res!1659918 (not (nullable!4177 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(declare-fun b!4066845 () Bool)

(assert (=> b!4066845 (= e!2523849 (not (= (tag!7837 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (String!49756 ""))))))

(assert (= (and d!1208820 res!1659917) b!4066844))

(assert (= (and b!4066844 res!1659918) b!4066845))

(assert (=> d!1208820 m!4674721))

(assert (=> b!4066844 m!4674729))

(assert (=> b!4066463 d!1208820))

(declare-fun d!1208824 () Bool)

(declare-fun fromListB!2371 (List!43558) BalanceConc!25970)

(assert (=> d!1208824 (= (seqFromList!5194 lt!1454784) (fromListB!2371 lt!1454784))))

(declare-fun bs!592395 () Bool)

(assert (= bs!592395 d!1208824))

(declare-fun m!4674955 () Bool)

(assert (=> bs!592395 m!4674955))

(assert (=> b!4066463 d!1208824))

(declare-fun d!1208826 () Bool)

(declare-fun lt!1455086 () Int)

(assert (=> d!1208826 (>= lt!1455086 0)))

(declare-fun e!2523850 () Int)

(assert (=> d!1208826 (= lt!1455086 e!2523850)))

(declare-fun c!702175 () Bool)

(assert (=> d!1208826 (= c!702175 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208826 (= (size!32474 lt!1454784) lt!1455086)))

(declare-fun b!4066846 () Bool)

(assert (=> b!4066846 (= e!2523850 0)))

(declare-fun b!4066847 () Bool)

(assert (=> b!4066847 (= e!2523850 (+ 1 (size!32474 (t!336861 lt!1454784))))))

(assert (= (and d!1208826 c!702175) b!4066846))

(assert (= (and d!1208826 (not c!702175)) b!4066847))

(declare-fun m!4674957 () Bool)

(assert (=> b!4066847 m!4674957))

(assert (=> b!4066463 d!1208826))

(declare-fun d!1208828 () Bool)

(assert (=> d!1208828 (ruleValid!2907 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))

(declare-fun lt!1455089 () Unit!62963)

(declare-fun choose!24770 (LexerInterface!6566 Rule!13754 List!43560) Unit!62963)

(assert (=> d!1208828 (= lt!1455089 (choose!24770 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))) rules!2999))))

(assert (=> d!1208828 (contains!8643 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))

(assert (=> d!1208828 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1977 thiss!21717 (rule!10077 (_1!24378 (v!39818 lt!1454783))) rules!2999) lt!1455089)))

(declare-fun bs!592396 () Bool)

(assert (= bs!592396 d!1208828))

(assert (=> bs!592396 m!4674377))

(declare-fun m!4674959 () Bool)

(assert (=> bs!592396 m!4674959))

(assert (=> bs!592396 m!4674435))

(assert (=> b!4066463 d!1208828))

(declare-fun d!1208830 () Bool)

(assert (=> d!1208830 (isPrefix!4064 lt!1454784 (++!11379 lt!1454784 newSuffixResult!27))))

(declare-fun lt!1455090 () Unit!62963)

(assert (=> d!1208830 (= lt!1455090 (choose!24766 lt!1454784 newSuffixResult!27))))

(assert (=> d!1208830 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454784 newSuffixResult!27) lt!1455090)))

(declare-fun bs!592397 () Bool)

(assert (= bs!592397 d!1208830))

(assert (=> bs!592397 m!4674367))

(assert (=> bs!592397 m!4674367))

(assert (=> bs!592397 m!4674381))

(declare-fun m!4674961 () Bool)

(assert (=> bs!592397 m!4674961))

(assert (=> b!4066463 d!1208830))

(declare-fun d!1208832 () Bool)

(declare-fun list!16195 (Conc!13188) List!43558)

(assert (=> d!1208832 (= (list!16193 (charsOf!4793 (_1!24378 (v!39818 lt!1454783)))) (list!16195 (c!702123 (charsOf!4793 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun bs!592398 () Bool)

(assert (= bs!592398 d!1208832))

(declare-fun m!4674963 () Bool)

(assert (=> bs!592398 m!4674963))

(assert (=> b!4066463 d!1208832))

(declare-fun d!1208834 () Bool)

(declare-fun lt!1455093 () BalanceConc!25970)

(assert (=> d!1208834 (= (list!16193 lt!1455093) (originalCharacters!7577 (_1!24378 (v!39818 lt!1454783))))))

(declare-fun dynLambda!18452 (Int TokenValue!7207) BalanceConc!25970)

(assert (=> d!1208834 (= lt!1455093 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (value!219480 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> d!1208834 (= (charsOf!4793 (_1!24378 (v!39818 lt!1454783))) lt!1455093)))

(declare-fun b_lambda!118809 () Bool)

(assert (=> (not b_lambda!118809) (not d!1208834)))

(declare-fun t!336872 () Bool)

(declare-fun tb!244533 () Bool)

(assert (=> (and b!4066435 (= (toChars!9396 (transformation!6977 (h!48856 rules!2999))) (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))) t!336872) tb!244533))

(declare-fun b!4066852 () Bool)

(declare-fun e!2523853 () Bool)

(declare-fun tp!1231051 () Bool)

(declare-fun inv!58071 (Conc!13188) Bool)

(assert (=> b!4066852 (= e!2523853 (and (inv!58071 (c!702123 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (value!219480 (_1!24378 (v!39818 lt!1454783)))))) tp!1231051))))

(declare-fun result!296332 () Bool)

(declare-fun inv!58072 (BalanceConc!25970) Bool)

(assert (=> tb!244533 (= result!296332 (and (inv!58072 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))) (value!219480 (_1!24378 (v!39818 lt!1454783))))) e!2523853))))

(assert (= tb!244533 b!4066852))

(declare-fun m!4674965 () Bool)

(assert (=> b!4066852 m!4674965))

(declare-fun m!4674967 () Bool)

(assert (=> tb!244533 m!4674967))

(assert (=> d!1208834 t!336872))

(declare-fun b_and!312575 () Bool)

(assert (= b_and!312557 (and (=> t!336872 result!296332) b_and!312575)))

(declare-fun t!336874 () Bool)

(declare-fun tb!244535 () Bool)

(assert (=> (and b!4066459 (= (toChars!9396 (transformation!6977 (rule!10077 token!484))) (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))) t!336874) tb!244535))

(declare-fun result!296336 () Bool)

(assert (= result!296336 result!296332))

(assert (=> d!1208834 t!336874))

(declare-fun b_and!312577 () Bool)

(assert (= b_and!312561 (and (=> t!336874 result!296336) b_and!312577)))

(declare-fun m!4674969 () Bool)

(assert (=> d!1208834 m!4674969))

(declare-fun m!4674971 () Bool)

(assert (=> d!1208834 m!4674971))

(assert (=> b!4066463 d!1208834))

(declare-fun d!1208836 () Bool)

(assert (=> d!1208836 (not (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454752))))

(declare-fun lt!1455094 () Unit!62963)

(assert (=> d!1208836 (= lt!1455094 (choose!24768 thiss!21717 rules!2999 (rule!10077 token!484) lt!1454752 lt!1454782 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> d!1208836 (isPrefix!4064 lt!1454752 lt!1454782)))

(assert (=> d!1208836 (= (lemmaMaxPrefNoSmallerRuleMatches!305 thiss!21717 rules!2999 (rule!10077 token!484) lt!1454752 lt!1454782 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1455094)))

(declare-fun bs!592399 () Bool)

(assert (= bs!592399 d!1208836))

(assert (=> bs!592399 m!4674319))

(declare-fun m!4674973 () Bool)

(assert (=> bs!592399 m!4674973))

(assert (=> bs!592399 m!4674331))

(assert (=> b!4066442 d!1208836))

(declare-fun b!4066853 () Bool)

(declare-fun e!2523859 () Bool)

(declare-fun lt!1455095 () Bool)

(declare-fun call!288301 () Bool)

(assert (=> b!4066853 (= e!2523859 (= lt!1455095 call!288301))))

(declare-fun b!4066854 () Bool)

(declare-fun res!1659922 () Bool)

(declare-fun e!2523855 () Bool)

(assert (=> b!4066854 (=> (not res!1659922) (not e!2523855))))

(assert (=> b!4066854 (= res!1659922 (not call!288301))))

(declare-fun b!4066855 () Bool)

(declare-fun res!1659921 () Bool)

(declare-fun e!2523858 () Bool)

(assert (=> b!4066855 (=> res!1659921 e!2523858)))

(assert (=> b!4066855 (= res!1659921 (not (isEmpty!25924 (tail!6312 lt!1454752))))))

(declare-fun b!4066856 () Bool)

(assert (=> b!4066856 (= e!2523855 (= (head!8580 lt!1454752) (c!702124 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(declare-fun b!4066857 () Bool)

(declare-fun res!1659920 () Bool)

(assert (=> b!4066857 (=> (not res!1659920) (not e!2523855))))

(assert (=> b!4066857 (= res!1659920 (isEmpty!25924 (tail!6312 lt!1454752)))))

(declare-fun b!4066858 () Bool)

(declare-fun e!2523854 () Bool)

(assert (=> b!4066858 (= e!2523854 (nullable!4177 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun b!4066859 () Bool)

(declare-fun e!2523856 () Bool)

(assert (=> b!4066859 (= e!2523856 e!2523858)))

(declare-fun res!1659923 () Bool)

(assert (=> b!4066859 (=> res!1659923 e!2523858)))

(assert (=> b!4066859 (= res!1659923 call!288301)))

(declare-fun b!4066860 () Bool)

(declare-fun res!1659926 () Bool)

(declare-fun e!2523860 () Bool)

(assert (=> b!4066860 (=> res!1659926 e!2523860)))

(assert (=> b!4066860 (= res!1659926 e!2523855)))

(declare-fun res!1659919 () Bool)

(assert (=> b!4066860 (=> (not res!1659919) (not e!2523855))))

(assert (=> b!4066860 (= res!1659919 lt!1455095)))

(declare-fun b!4066861 () Bool)

(declare-fun res!1659925 () Bool)

(assert (=> b!4066861 (=> res!1659925 e!2523860)))

(assert (=> b!4066861 (= res!1659925 (not (is-ElementMatch!11882 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(declare-fun e!2523857 () Bool)

(assert (=> b!4066861 (= e!2523857 e!2523860)))

(declare-fun bm!288296 () Bool)

(assert (=> bm!288296 (= call!288301 (isEmpty!25924 lt!1454752))))

(declare-fun d!1208838 () Bool)

(assert (=> d!1208838 e!2523859))

(declare-fun c!702176 () Bool)

(assert (=> d!1208838 (= c!702176 (is-EmptyExpr!11882 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(assert (=> d!1208838 (= lt!1455095 e!2523854)))

(declare-fun c!702178 () Bool)

(assert (=> d!1208838 (= c!702178 (isEmpty!25924 lt!1454752))))

(assert (=> d!1208838 (validRegex!5377 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (=> d!1208838 (= (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1454752) lt!1455095)))

(declare-fun b!4066862 () Bool)

(assert (=> b!4066862 (= e!2523859 e!2523857)))

(declare-fun c!702177 () Bool)

(assert (=> b!4066862 (= c!702177 (is-EmptyLang!11882 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun b!4066863 () Bool)

(assert (=> b!4066863 (= e!2523858 (not (= (head!8580 lt!1454752) (c!702124 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))))

(declare-fun b!4066864 () Bool)

(assert (=> b!4066864 (= e!2523857 (not lt!1455095))))

(declare-fun b!4066865 () Bool)

(assert (=> b!4066865 (= e!2523860 e!2523856)))

(declare-fun res!1659924 () Bool)

(assert (=> b!4066865 (=> (not res!1659924) (not e!2523856))))

(assert (=> b!4066865 (= res!1659924 (not lt!1455095))))

(declare-fun b!4066866 () Bool)

(assert (=> b!4066866 (= e!2523854 (matchR!5835 (derivativeStep!3582 (regex!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) (head!8580 lt!1454752)) (tail!6312 lt!1454752)))))

(assert (= (and d!1208838 c!702178) b!4066858))

(assert (= (and d!1208838 (not c!702178)) b!4066866))

(assert (= (and d!1208838 c!702176) b!4066853))

(assert (= (and d!1208838 (not c!702176)) b!4066862))

(assert (= (and b!4066862 c!702177) b!4066864))

(assert (= (and b!4066862 (not c!702177)) b!4066861))

(assert (= (and b!4066861 (not res!1659925)) b!4066860))

(assert (= (and b!4066860 res!1659919) b!4066854))

(assert (= (and b!4066854 res!1659922) b!4066857))

(assert (= (and b!4066857 res!1659920) b!4066856))

(assert (= (and b!4066860 (not res!1659926)) b!4066865))

(assert (= (and b!4066865 res!1659924) b!4066859))

(assert (= (and b!4066859 (not res!1659923)) b!4066855))

(assert (= (and b!4066855 (not res!1659921)) b!4066863))

(assert (= (or b!4066853 b!4066854 b!4066859) bm!288296))

(declare-fun m!4674975 () Bool)

(assert (=> d!1208838 m!4674975))

(assert (=> d!1208838 m!4674721))

(assert (=> b!4066855 m!4674745))

(assert (=> b!4066855 m!4674745))

(declare-fun m!4674977 () Bool)

(assert (=> b!4066855 m!4674977))

(assert (=> b!4066857 m!4674745))

(assert (=> b!4066857 m!4674745))

(assert (=> b!4066857 m!4674977))

(assert (=> bm!288296 m!4674975))

(assert (=> b!4066863 m!4674751))

(assert (=> b!4066856 m!4674751))

(assert (=> b!4066858 m!4674729))

(assert (=> b!4066866 m!4674751))

(assert (=> b!4066866 m!4674751))

(declare-fun m!4674979 () Bool)

(assert (=> b!4066866 m!4674979))

(assert (=> b!4066866 m!4674745))

(assert (=> b!4066866 m!4674979))

(assert (=> b!4066866 m!4674745))

(declare-fun m!4674981 () Bool)

(assert (=> b!4066866 m!4674981))

(assert (=> b!4066442 d!1208838))

(declare-fun b!4066870 () Bool)

(declare-fun e!2523862 () Bool)

(assert (=> b!4066870 (= e!2523862 (>= (size!32474 suffix!1299) (size!32474 newSuffix!27)))))

(declare-fun b!4066869 () Bool)

(declare-fun e!2523863 () Bool)

(assert (=> b!4066869 (= e!2523863 (isPrefix!4064 (tail!6312 newSuffix!27) (tail!6312 suffix!1299)))))

(declare-fun d!1208840 () Bool)

(assert (=> d!1208840 e!2523862))

(declare-fun res!1659928 () Bool)

(assert (=> d!1208840 (=> res!1659928 e!2523862)))

(declare-fun lt!1455096 () Bool)

(assert (=> d!1208840 (= res!1659928 (not lt!1455096))))

(declare-fun e!2523861 () Bool)

(assert (=> d!1208840 (= lt!1455096 e!2523861)))

(declare-fun res!1659929 () Bool)

(assert (=> d!1208840 (=> res!1659929 e!2523861)))

(assert (=> d!1208840 (= res!1659929 (is-Nil!43434 newSuffix!27))))

(assert (=> d!1208840 (= (isPrefix!4064 newSuffix!27 suffix!1299) lt!1455096)))

(declare-fun b!4066867 () Bool)

(assert (=> b!4066867 (= e!2523861 e!2523863)))

(declare-fun res!1659930 () Bool)

(assert (=> b!4066867 (=> (not res!1659930) (not e!2523863))))

(assert (=> b!4066867 (= res!1659930 (not (is-Nil!43434 suffix!1299)))))

(declare-fun b!4066868 () Bool)

(declare-fun res!1659927 () Bool)

(assert (=> b!4066868 (=> (not res!1659927) (not e!2523863))))

(assert (=> b!4066868 (= res!1659927 (= (head!8580 newSuffix!27) (head!8580 suffix!1299)))))

(assert (= (and d!1208840 (not res!1659929)) b!4066867))

(assert (= (and b!4066867 res!1659930) b!4066868))

(assert (= (and b!4066868 res!1659927) b!4066869))

(assert (= (and d!1208840 (not res!1659928)) b!4066870))

(assert (=> b!4066870 m!4674461))

(assert (=> b!4066870 m!4674463))

(declare-fun m!4674983 () Bool)

(assert (=> b!4066869 m!4674983))

(declare-fun m!4674985 () Bool)

(assert (=> b!4066869 m!4674985))

(assert (=> b!4066869 m!4674983))

(assert (=> b!4066869 m!4674985))

(declare-fun m!4674987 () Bool)

(assert (=> b!4066869 m!4674987))

(declare-fun m!4674989 () Bool)

(assert (=> b!4066868 m!4674989))

(declare-fun m!4674991 () Bool)

(assert (=> b!4066868 m!4674991))

(assert (=> b!4066443 d!1208840))

(declare-fun d!1208842 () Bool)

(declare-fun res!1659935 () Bool)

(declare-fun e!2523866 () Bool)

(assert (=> d!1208842 (=> (not res!1659935) (not e!2523866))))

(assert (=> d!1208842 (= res!1659935 (not (isEmpty!25924 (originalCharacters!7577 token!484))))))

(assert (=> d!1208842 (= (inv!58067 token!484) e!2523866)))

(declare-fun b!4066875 () Bool)

(declare-fun res!1659936 () Bool)

(assert (=> b!4066875 (=> (not res!1659936) (not e!2523866))))

(assert (=> b!4066875 (= res!1659936 (= (originalCharacters!7577 token!484) (list!16193 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (value!219480 token!484)))))))

(declare-fun b!4066876 () Bool)

(assert (=> b!4066876 (= e!2523866 (= (size!32473 token!484) (size!32474 (originalCharacters!7577 token!484))))))

(assert (= (and d!1208842 res!1659935) b!4066875))

(assert (= (and b!4066875 res!1659936) b!4066876))

(declare-fun b_lambda!118811 () Bool)

(assert (=> (not b_lambda!118811) (not b!4066875)))

(declare-fun tb!244537 () Bool)

(declare-fun t!336876 () Bool)

(assert (=> (and b!4066435 (= (toChars!9396 (transformation!6977 (h!48856 rules!2999))) (toChars!9396 (transformation!6977 (rule!10077 token!484)))) t!336876) tb!244537))

(declare-fun b!4066877 () Bool)

(declare-fun e!2523867 () Bool)

(declare-fun tp!1231052 () Bool)

(assert (=> b!4066877 (= e!2523867 (and (inv!58071 (c!702123 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (value!219480 token!484)))) tp!1231052))))

(declare-fun result!296338 () Bool)

(assert (=> tb!244537 (= result!296338 (and (inv!58072 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (value!219480 token!484))) e!2523867))))

(assert (= tb!244537 b!4066877))

(declare-fun m!4674993 () Bool)

(assert (=> b!4066877 m!4674993))

(declare-fun m!4674995 () Bool)

(assert (=> tb!244537 m!4674995))

(assert (=> b!4066875 t!336876))

(declare-fun b_and!312579 () Bool)

(assert (= b_and!312575 (and (=> t!336876 result!296338) b_and!312579)))

(declare-fun t!336878 () Bool)

(declare-fun tb!244539 () Bool)

(assert (=> (and b!4066459 (= (toChars!9396 (transformation!6977 (rule!10077 token!484))) (toChars!9396 (transformation!6977 (rule!10077 token!484)))) t!336878) tb!244539))

(declare-fun result!296340 () Bool)

(assert (= result!296340 result!296338))

(assert (=> b!4066875 t!336878))

(declare-fun b_and!312581 () Bool)

(assert (= b_and!312577 (and (=> t!336878 result!296340) b_and!312581)))

(declare-fun m!4674997 () Bool)

(assert (=> d!1208842 m!4674997))

(declare-fun m!4674999 () Bool)

(assert (=> b!4066875 m!4674999))

(assert (=> b!4066875 m!4674999))

(declare-fun m!4675001 () Bool)

(assert (=> b!4066875 m!4675001))

(assert (=> b!4066876 m!4674457))

(assert (=> start!383566 d!1208842))

(declare-fun d!1208844 () Bool)

(declare-fun lt!1455099 () Bool)

(declare-fun content!6633 (List!43560) (Set Rule!13754))

(assert (=> d!1208844 (= lt!1455099 (set.member (rule!10077 (_1!24378 (v!39818 lt!1454783))) (content!6633 rules!2999)))))

(declare-fun e!2523872 () Bool)

(assert (=> d!1208844 (= lt!1455099 e!2523872)))

(declare-fun res!1659942 () Bool)

(assert (=> d!1208844 (=> (not res!1659942) (not e!2523872))))

(assert (=> d!1208844 (= res!1659942 (is-Cons!43436 rules!2999))))

(assert (=> d!1208844 (= (contains!8643 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1455099)))

(declare-fun b!4066882 () Bool)

(declare-fun e!2523873 () Bool)

(assert (=> b!4066882 (= e!2523872 e!2523873)))

(declare-fun res!1659941 () Bool)

(assert (=> b!4066882 (=> res!1659941 e!2523873)))

(assert (=> b!4066882 (= res!1659941 (= (h!48856 rules!2999) (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(declare-fun b!4066883 () Bool)

(assert (=> b!4066883 (= e!2523873 (contains!8643 (t!336863 rules!2999) (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))

(assert (= (and d!1208844 res!1659942) b!4066882))

(assert (= (and b!4066882 (not res!1659941)) b!4066883))

(declare-fun m!4675003 () Bool)

(assert (=> d!1208844 m!4675003))

(declare-fun m!4675005 () Bool)

(assert (=> d!1208844 m!4675005))

(declare-fun m!4675007 () Bool)

(assert (=> b!4066883 m!4675007))

(assert (=> b!4066421 d!1208844))

(declare-fun d!1208846 () Bool)

(declare-fun lt!1455102 () Int)

(assert (=> d!1208846 (>= lt!1455102 0)))

(declare-fun e!2523879 () Int)

(assert (=> d!1208846 (= lt!1455102 e!2523879)))

(declare-fun c!702184 () Bool)

(assert (=> d!1208846 (= c!702184 (and (is-Cons!43436 rules!2999) (= (h!48856 rules!2999) (rule!10077 token!484))))))

(assert (=> d!1208846 (contains!8643 rules!2999 (rule!10077 token!484))))

(assert (=> d!1208846 (= (getIndex!589 rules!2999 (rule!10077 token!484)) lt!1455102)))

(declare-fun b!4066895 () Bool)

(declare-fun e!2523880 () Int)

(assert (=> b!4066895 (= e!2523880 (- 1))))

(declare-fun b!4066894 () Bool)

(assert (=> b!4066894 (= e!2523880 (+ 1 (getIndex!589 (t!336863 rules!2999) (rule!10077 token!484))))))

(declare-fun b!4066892 () Bool)

(assert (=> b!4066892 (= e!2523879 0)))

(declare-fun b!4066893 () Bool)

(assert (=> b!4066893 (= e!2523879 e!2523880)))

(declare-fun c!702183 () Bool)

(assert (=> b!4066893 (= c!702183 (and (is-Cons!43436 rules!2999) (not (= (h!48856 rules!2999) (rule!10077 token!484)))))))

(assert (= (and d!1208846 c!702184) b!4066892))

(assert (= (and d!1208846 (not c!702184)) b!4066893))

(assert (= (and b!4066893 c!702183) b!4066894))

(assert (= (and b!4066893 (not c!702183)) b!4066895))

(assert (=> d!1208846 m!4674513))

(declare-fun m!4675009 () Bool)

(assert (=> b!4066894 m!4675009))

(assert (=> b!4066421 d!1208846))

(declare-fun d!1208848 () Bool)

(assert (=> d!1208848 (= (_2!24378 (v!39818 lt!1454783)) newSuffixResult!27)))

(declare-fun lt!1455105 () Unit!62963)

(declare-fun choose!24772 (List!43558 List!43558 List!43558 List!43558 List!43558) Unit!62963)

(assert (=> d!1208848 (= lt!1455105 (choose!24772 lt!1454784 (_2!24378 (v!39818 lt!1454783)) lt!1454752 newSuffixResult!27 lt!1454774))))

(assert (=> d!1208848 (isPrefix!4064 lt!1454784 lt!1454774)))

(assert (=> d!1208848 (= (lemmaSamePrefixThenSameSuffix!2225 lt!1454784 (_2!24378 (v!39818 lt!1454783)) lt!1454752 newSuffixResult!27 lt!1454774) lt!1455105)))

(declare-fun bs!592400 () Bool)

(assert (= bs!592400 d!1208848))

(declare-fun m!4675011 () Bool)

(assert (=> bs!592400 m!4675011))

(assert (=> bs!592400 m!4674327))

(assert (=> b!4066421 d!1208848))

(declare-fun d!1208850 () Bool)

(declare-fun lt!1455106 () Int)

(assert (=> d!1208850 (>= lt!1455106 0)))

(declare-fun e!2523881 () Int)

(assert (=> d!1208850 (= lt!1455106 e!2523881)))

(declare-fun c!702186 () Bool)

(assert (=> d!1208850 (= c!702186 (and (is-Cons!43436 rules!2999) (= (h!48856 rules!2999) (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(assert (=> d!1208850 (contains!8643 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))))))

(assert (=> d!1208850 (= (getIndex!589 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783)))) lt!1455106)))

(declare-fun b!4066899 () Bool)

(declare-fun e!2523882 () Int)

(assert (=> b!4066899 (= e!2523882 (- 1))))

(declare-fun b!4066898 () Bool)

(assert (=> b!4066898 (= e!2523882 (+ 1 (getIndex!589 (t!336863 rules!2999) (rule!10077 (_1!24378 (v!39818 lt!1454783))))))))

(declare-fun b!4066896 () Bool)

(assert (=> b!4066896 (= e!2523881 0)))

(declare-fun b!4066897 () Bool)

(assert (=> b!4066897 (= e!2523881 e!2523882)))

(declare-fun c!702185 () Bool)

(assert (=> b!4066897 (= c!702185 (and (is-Cons!43436 rules!2999) (not (= (h!48856 rules!2999) (rule!10077 (_1!24378 (v!39818 lt!1454783)))))))))

(assert (= (and d!1208850 c!702186) b!4066896))

(assert (= (and d!1208850 (not c!702186)) b!4066897))

(assert (= (and b!4066897 c!702185) b!4066898))

(assert (= (and b!4066897 (not c!702185)) b!4066899))

(assert (=> d!1208850 m!4674435))

(declare-fun m!4675013 () Bool)

(assert (=> b!4066898 m!4675013))

(assert (=> b!4066421 d!1208850))

(declare-fun d!1208852 () Bool)

(assert (=> d!1208852 (= lt!1454784 lt!1454752)))

(declare-fun lt!1455109 () Unit!62963)

(declare-fun choose!24773 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> d!1208852 (= lt!1455109 (choose!24773 lt!1454784 lt!1454752 lt!1454774))))

(assert (=> d!1208852 (isPrefix!4064 lt!1454784 lt!1454774)))

(assert (=> d!1208852 (= (lemmaIsPrefixSameLengthThenSameList!954 lt!1454784 lt!1454752 lt!1454774) lt!1455109)))

(declare-fun bs!592401 () Bool)

(assert (= bs!592401 d!1208852))

(declare-fun m!4675015 () Bool)

(assert (=> bs!592401 m!4675015))

(assert (=> bs!592401 m!4674327))

(assert (=> b!4066421 d!1208852))

(declare-fun d!1208854 () Bool)

(declare-fun e!2523883 () Bool)

(assert (=> d!1208854 e!2523883))

(declare-fun res!1659943 () Bool)

(assert (=> d!1208854 (=> (not res!1659943) (not e!2523883))))

(declare-fun lt!1455110 () List!43558)

(assert (=> d!1208854 (= res!1659943 (= (content!6632 lt!1455110) (set.union (content!6632 lt!1454752) (content!6632 lt!1454800))))))

(declare-fun e!2523884 () List!43558)

(assert (=> d!1208854 (= lt!1455110 e!2523884)))

(declare-fun c!702187 () Bool)

(assert (=> d!1208854 (= c!702187 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208854 (= (++!11379 lt!1454752 lt!1454800) lt!1455110)))

(declare-fun b!4066900 () Bool)

(assert (=> b!4066900 (= e!2523884 lt!1454800)))

(declare-fun b!4066902 () Bool)

(declare-fun res!1659944 () Bool)

(assert (=> b!4066902 (=> (not res!1659944) (not e!2523883))))

(assert (=> b!4066902 (= res!1659944 (= (size!32474 lt!1455110) (+ (size!32474 lt!1454752) (size!32474 lt!1454800))))))

(declare-fun b!4066903 () Bool)

(assert (=> b!4066903 (= e!2523883 (or (not (= lt!1454800 Nil!43434)) (= lt!1455110 lt!1454752)))))

(declare-fun b!4066901 () Bool)

(assert (=> b!4066901 (= e!2523884 (Cons!43434 (h!48854 lt!1454752) (++!11379 (t!336861 lt!1454752) lt!1454800)))))

(assert (= (and d!1208854 c!702187) b!4066900))

(assert (= (and d!1208854 (not c!702187)) b!4066901))

(assert (= (and d!1208854 res!1659943) b!4066902))

(assert (= (and b!4066902 res!1659944) b!4066903))

(declare-fun m!4675017 () Bool)

(assert (=> d!1208854 m!4675017))

(declare-fun m!4675019 () Bool)

(assert (=> d!1208854 m!4675019))

(declare-fun m!4675021 () Bool)

(assert (=> d!1208854 m!4675021))

(declare-fun m!4675023 () Bool)

(assert (=> b!4066902 m!4675023))

(assert (=> b!4066902 m!4674385))

(declare-fun m!4675025 () Bool)

(assert (=> b!4066902 m!4675025))

(declare-fun m!4675027 () Bool)

(assert (=> b!4066901 m!4675027))

(assert (=> b!4066455 d!1208854))

(declare-fun d!1208856 () Bool)

(declare-fun lt!1455113 () List!43558)

(assert (=> d!1208856 (= (++!11379 lt!1454752 lt!1455113) prefix!494)))

(declare-fun e!2523887 () List!43558)

(assert (=> d!1208856 (= lt!1455113 e!2523887)))

(declare-fun c!702190 () Bool)

(assert (=> d!1208856 (= c!702190 (is-Cons!43434 lt!1454752))))

(assert (=> d!1208856 (>= (size!32474 prefix!494) (size!32474 lt!1454752))))

(assert (=> d!1208856 (= (getSuffix!2481 prefix!494 lt!1454752) lt!1455113)))

(declare-fun b!4066908 () Bool)

(assert (=> b!4066908 (= e!2523887 (getSuffix!2481 (tail!6312 prefix!494) (t!336861 lt!1454752)))))

(declare-fun b!4066909 () Bool)

(assert (=> b!4066909 (= e!2523887 prefix!494)))

(assert (= (and d!1208856 c!702190) b!4066908))

(assert (= (and d!1208856 (not c!702190)) b!4066909))

(declare-fun m!4675029 () Bool)

(assert (=> d!1208856 m!4675029))

(assert (=> d!1208856 m!4674387))

(assert (=> d!1208856 m!4674385))

(assert (=> b!4066908 m!4674765))

(assert (=> b!4066908 m!4674765))

(declare-fun m!4675031 () Bool)

(assert (=> b!4066908 m!4675031))

(assert (=> b!4066455 d!1208856))

(declare-fun b!4066913 () Bool)

(declare-fun e!2523889 () Bool)

(assert (=> b!4066913 (= e!2523889 (>= (size!32474 prefix!494) (size!32474 lt!1454752)))))

(declare-fun b!4066912 () Bool)

(declare-fun e!2523890 () Bool)

(assert (=> b!4066912 (= e!2523890 (isPrefix!4064 (tail!6312 lt!1454752) (tail!6312 prefix!494)))))

(declare-fun d!1208858 () Bool)

(assert (=> d!1208858 e!2523889))

(declare-fun res!1659946 () Bool)

(assert (=> d!1208858 (=> res!1659946 e!2523889)))

(declare-fun lt!1455114 () Bool)

(assert (=> d!1208858 (= res!1659946 (not lt!1455114))))

(declare-fun e!2523888 () Bool)

(assert (=> d!1208858 (= lt!1455114 e!2523888)))

(declare-fun res!1659947 () Bool)

(assert (=> d!1208858 (=> res!1659947 e!2523888)))

(assert (=> d!1208858 (= res!1659947 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208858 (= (isPrefix!4064 lt!1454752 prefix!494) lt!1455114)))

(declare-fun b!4066910 () Bool)

(assert (=> b!4066910 (= e!2523888 e!2523890)))

(declare-fun res!1659948 () Bool)

(assert (=> b!4066910 (=> (not res!1659948) (not e!2523890))))

(assert (=> b!4066910 (= res!1659948 (not (is-Nil!43434 prefix!494)))))

(declare-fun b!4066911 () Bool)

(declare-fun res!1659945 () Bool)

(assert (=> b!4066911 (=> (not res!1659945) (not e!2523890))))

(assert (=> b!4066911 (= res!1659945 (= (head!8580 lt!1454752) (head!8580 prefix!494)))))

(assert (= (and d!1208858 (not res!1659947)) b!4066910))

(assert (= (and b!4066910 res!1659948) b!4066911))

(assert (= (and b!4066911 res!1659945) b!4066912))

(assert (= (and d!1208858 (not res!1659946)) b!4066913))

(assert (=> b!4066913 m!4674387))

(assert (=> b!4066913 m!4674385))

(assert (=> b!4066912 m!4674745))

(assert (=> b!4066912 m!4674765))

(assert (=> b!4066912 m!4674745))

(assert (=> b!4066912 m!4674765))

(declare-fun m!4675033 () Bool)

(assert (=> b!4066912 m!4675033))

(assert (=> b!4066911 m!4674751))

(assert (=> b!4066911 m!4674771))

(assert (=> b!4066455 d!1208858))

(declare-fun d!1208860 () Bool)

(assert (=> d!1208860 (isPrefix!4064 lt!1454752 prefix!494)))

(declare-fun lt!1455117 () Unit!62963)

(declare-fun choose!24775 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> d!1208860 (= lt!1455117 (choose!24775 prefix!494 lt!1454752 lt!1454782))))

(assert (=> d!1208860 (isPrefix!4064 prefix!494 lt!1454782)))

(assert (=> d!1208860 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!628 prefix!494 lt!1454752 lt!1454782) lt!1455117)))

(declare-fun bs!592402 () Bool)

(assert (= bs!592402 d!1208860))

(assert (=> bs!592402 m!4674345))

(declare-fun m!4675035 () Bool)

(assert (=> bs!592402 m!4675035))

(assert (=> bs!592402 m!4674335))

(assert (=> b!4066455 d!1208860))

(declare-fun d!1208862 () Bool)

(declare-fun e!2523891 () Bool)

(assert (=> d!1208862 e!2523891))

(declare-fun res!1659949 () Bool)

(assert (=> d!1208862 (=> (not res!1659949) (not e!2523891))))

(declare-fun lt!1455118 () List!43558)

(assert (=> d!1208862 (= res!1659949 (= (content!6632 lt!1455118) (set.union (content!6632 prefix!494) (content!6632 newSuffix!27))))))

(declare-fun e!2523892 () List!43558)

(assert (=> d!1208862 (= lt!1455118 e!2523892)))

(declare-fun c!702191 () Bool)

(assert (=> d!1208862 (= c!702191 (is-Nil!43434 prefix!494))))

(assert (=> d!1208862 (= (++!11379 prefix!494 newSuffix!27) lt!1455118)))

(declare-fun b!4066914 () Bool)

(assert (=> b!4066914 (= e!2523892 newSuffix!27)))

(declare-fun b!4066916 () Bool)

(declare-fun res!1659950 () Bool)

(assert (=> b!4066916 (=> (not res!1659950) (not e!2523891))))

(assert (=> b!4066916 (= res!1659950 (= (size!32474 lt!1455118) (+ (size!32474 prefix!494) (size!32474 newSuffix!27))))))

(declare-fun b!4066917 () Bool)

(assert (=> b!4066917 (= e!2523891 (or (not (= newSuffix!27 Nil!43434)) (= lt!1455118 prefix!494)))))

(declare-fun b!4066915 () Bool)

(assert (=> b!4066915 (= e!2523892 (Cons!43434 (h!48854 prefix!494) (++!11379 (t!336861 prefix!494) newSuffix!27)))))

(assert (= (and d!1208862 c!702191) b!4066914))

(assert (= (and d!1208862 (not c!702191)) b!4066915))

(assert (= (and d!1208862 res!1659949) b!4066916))

(assert (= (and b!4066916 res!1659950) b!4066917))

(declare-fun m!4675037 () Bool)

(assert (=> d!1208862 m!4675037))

(declare-fun m!4675039 () Bool)

(assert (=> d!1208862 m!4675039))

(declare-fun m!4675041 () Bool)

(assert (=> d!1208862 m!4675041))

(declare-fun m!4675043 () Bool)

(assert (=> b!4066916 m!4675043))

(assert (=> b!4066916 m!4674387))

(assert (=> b!4066916 m!4674463))

(declare-fun m!4675045 () Bool)

(assert (=> b!4066915 m!4675045))

(assert (=> b!4066433 d!1208862))

(declare-fun d!1208864 () Bool)

(declare-fun e!2523893 () Bool)

(assert (=> d!1208864 e!2523893))

(declare-fun res!1659951 () Bool)

(assert (=> d!1208864 (=> (not res!1659951) (not e!2523893))))

(declare-fun lt!1455119 () List!43558)

(assert (=> d!1208864 (= res!1659951 (= (content!6632 lt!1455119) (set.union (content!6632 lt!1454752) (content!6632 newSuffixResult!27))))))

(declare-fun e!2523894 () List!43558)

(assert (=> d!1208864 (= lt!1455119 e!2523894)))

(declare-fun c!702192 () Bool)

(assert (=> d!1208864 (= c!702192 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208864 (= (++!11379 lt!1454752 newSuffixResult!27) lt!1455119)))

(declare-fun b!4066918 () Bool)

(assert (=> b!4066918 (= e!2523894 newSuffixResult!27)))

(declare-fun b!4066920 () Bool)

(declare-fun res!1659952 () Bool)

(assert (=> b!4066920 (=> (not res!1659952) (not e!2523893))))

(assert (=> b!4066920 (= res!1659952 (= (size!32474 lt!1455119) (+ (size!32474 lt!1454752) (size!32474 newSuffixResult!27))))))

(declare-fun b!4066921 () Bool)

(assert (=> b!4066921 (= e!2523893 (or (not (= newSuffixResult!27 Nil!43434)) (= lt!1455119 lt!1454752)))))

(declare-fun b!4066919 () Bool)

(assert (=> b!4066919 (= e!2523894 (Cons!43434 (h!48854 lt!1454752) (++!11379 (t!336861 lt!1454752) newSuffixResult!27)))))

(assert (= (and d!1208864 c!702192) b!4066918))

(assert (= (and d!1208864 (not c!702192)) b!4066919))

(assert (= (and d!1208864 res!1659951) b!4066920))

(assert (= (and b!4066920 res!1659952) b!4066921))

(declare-fun m!4675047 () Bool)

(assert (=> d!1208864 m!4675047))

(assert (=> d!1208864 m!4675019))

(assert (=> d!1208864 m!4674943))

(declare-fun m!4675049 () Bool)

(assert (=> b!4066920 m!4675049))

(assert (=> b!4066920 m!4674385))

(assert (=> b!4066920 m!4674947))

(declare-fun m!4675051 () Bool)

(assert (=> b!4066919 m!4675051))

(assert (=> b!4066433 d!1208864))

(declare-fun d!1208866 () Bool)

(declare-fun e!2523895 () Bool)

(assert (=> d!1208866 e!2523895))

(declare-fun res!1659953 () Bool)

(assert (=> d!1208866 (=> (not res!1659953) (not e!2523895))))

(declare-fun lt!1455120 () List!43558)

(assert (=> d!1208866 (= res!1659953 (= (content!6632 lt!1455120) (set.union (content!6632 lt!1454752) (content!6632 lt!1454803))))))

(declare-fun e!2523896 () List!43558)

(assert (=> d!1208866 (= lt!1455120 e!2523896)))

(declare-fun c!702193 () Bool)

(assert (=> d!1208866 (= c!702193 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208866 (= (++!11379 lt!1454752 lt!1454803) lt!1455120)))

(declare-fun b!4066922 () Bool)

(assert (=> b!4066922 (= e!2523896 lt!1454803)))

(declare-fun b!4066924 () Bool)

(declare-fun res!1659954 () Bool)

(assert (=> b!4066924 (=> (not res!1659954) (not e!2523895))))

(assert (=> b!4066924 (= res!1659954 (= (size!32474 lt!1455120) (+ (size!32474 lt!1454752) (size!32474 lt!1454803))))))

(declare-fun b!4066925 () Bool)

(assert (=> b!4066925 (= e!2523895 (or (not (= lt!1454803 Nil!43434)) (= lt!1455120 lt!1454752)))))

(declare-fun b!4066923 () Bool)

(assert (=> b!4066923 (= e!2523896 (Cons!43434 (h!48854 lt!1454752) (++!11379 (t!336861 lt!1454752) lt!1454803)))))

(assert (= (and d!1208866 c!702193) b!4066922))

(assert (= (and d!1208866 (not c!702193)) b!4066923))

(assert (= (and d!1208866 res!1659953) b!4066924))

(assert (= (and b!4066924 res!1659954) b!4066925))

(declare-fun m!4675053 () Bool)

(assert (=> d!1208866 m!4675053))

(assert (=> d!1208866 m!4675019))

(declare-fun m!4675055 () Bool)

(assert (=> d!1208866 m!4675055))

(declare-fun m!4675057 () Bool)

(assert (=> b!4066924 m!4675057))

(assert (=> b!4066924 m!4674385))

(declare-fun m!4675059 () Bool)

(assert (=> b!4066924 m!4675059))

(declare-fun m!4675061 () Bool)

(assert (=> b!4066923 m!4675061))

(assert (=> b!4066456 d!1208866))

(declare-fun d!1208868 () Bool)

(declare-fun e!2523897 () Bool)

(assert (=> d!1208868 e!2523897))

(declare-fun res!1659955 () Bool)

(assert (=> d!1208868 (=> (not res!1659955) (not e!2523897))))

(declare-fun lt!1455121 () List!43558)

(assert (=> d!1208868 (= res!1659955 (= (content!6632 lt!1455121) (set.union (content!6632 lt!1454780) (content!6632 suffix!1299))))))

(declare-fun e!2523898 () List!43558)

(assert (=> d!1208868 (= lt!1455121 e!2523898)))

(declare-fun c!702194 () Bool)

(assert (=> d!1208868 (= c!702194 (is-Nil!43434 lt!1454780))))

(assert (=> d!1208868 (= (++!11379 lt!1454780 suffix!1299) lt!1455121)))

(declare-fun b!4066926 () Bool)

(assert (=> b!4066926 (= e!2523898 suffix!1299)))

(declare-fun b!4066928 () Bool)

(declare-fun res!1659956 () Bool)

(assert (=> b!4066928 (=> (not res!1659956) (not e!2523897))))

(assert (=> b!4066928 (= res!1659956 (= (size!32474 lt!1455121) (+ (size!32474 lt!1454780) (size!32474 suffix!1299))))))

(declare-fun b!4066929 () Bool)

(assert (=> b!4066929 (= e!2523897 (or (not (= suffix!1299 Nil!43434)) (= lt!1455121 lt!1454780)))))

(declare-fun b!4066927 () Bool)

(assert (=> b!4066927 (= e!2523898 (Cons!43434 (h!48854 lt!1454780) (++!11379 (t!336861 lt!1454780) suffix!1299)))))

(assert (= (and d!1208868 c!702194) b!4066926))

(assert (= (and d!1208868 (not c!702194)) b!4066927))

(assert (= (and d!1208868 res!1659955) b!4066928))

(assert (= (and b!4066928 res!1659956) b!4066929))

(declare-fun m!4675063 () Bool)

(assert (=> d!1208868 m!4675063))

(declare-fun m!4675065 () Bool)

(assert (=> d!1208868 m!4675065))

(declare-fun m!4675067 () Bool)

(assert (=> d!1208868 m!4675067))

(declare-fun m!4675069 () Bool)

(assert (=> b!4066928 m!4675069))

(declare-fun m!4675071 () Bool)

(assert (=> b!4066928 m!4675071))

(assert (=> b!4066928 m!4674461))

(declare-fun m!4675073 () Bool)

(assert (=> b!4066927 m!4675073))

(assert (=> b!4066456 d!1208868))

(declare-fun d!1208870 () Bool)

(declare-fun e!2523899 () Bool)

(assert (=> d!1208870 e!2523899))

(declare-fun res!1659957 () Bool)

(assert (=> d!1208870 (=> (not res!1659957) (not e!2523899))))

(declare-fun lt!1455122 () List!43558)

(assert (=> d!1208870 (= res!1659957 (= (content!6632 lt!1455122) (set.union (content!6632 lt!1454800) (content!6632 suffix!1299))))))

(declare-fun e!2523900 () List!43558)

(assert (=> d!1208870 (= lt!1455122 e!2523900)))

(declare-fun c!702195 () Bool)

(assert (=> d!1208870 (= c!702195 (is-Nil!43434 lt!1454800))))

(assert (=> d!1208870 (= (++!11379 lt!1454800 suffix!1299) lt!1455122)))

(declare-fun b!4066930 () Bool)

(assert (=> b!4066930 (= e!2523900 suffix!1299)))

(declare-fun b!4066932 () Bool)

(declare-fun res!1659958 () Bool)

(assert (=> b!4066932 (=> (not res!1659958) (not e!2523899))))

(assert (=> b!4066932 (= res!1659958 (= (size!32474 lt!1455122) (+ (size!32474 lt!1454800) (size!32474 suffix!1299))))))

(declare-fun b!4066933 () Bool)

(assert (=> b!4066933 (= e!2523899 (or (not (= suffix!1299 Nil!43434)) (= lt!1455122 lt!1454800)))))

(declare-fun b!4066931 () Bool)

(assert (=> b!4066931 (= e!2523900 (Cons!43434 (h!48854 lt!1454800) (++!11379 (t!336861 lt!1454800) suffix!1299)))))

(assert (= (and d!1208870 c!702195) b!4066930))

(assert (= (and d!1208870 (not c!702195)) b!4066931))

(assert (= (and d!1208870 res!1659957) b!4066932))

(assert (= (and b!4066932 res!1659958) b!4066933))

(declare-fun m!4675075 () Bool)

(assert (=> d!1208870 m!4675075))

(assert (=> d!1208870 m!4675021))

(assert (=> d!1208870 m!4675067))

(declare-fun m!4675077 () Bool)

(assert (=> b!4066932 m!4675077))

(assert (=> b!4066932 m!4675025))

(assert (=> b!4066932 m!4674461))

(declare-fun m!4675079 () Bool)

(assert (=> b!4066931 m!4675079))

(assert (=> b!4066456 d!1208870))

(declare-fun d!1208872 () Bool)

(assert (=> d!1208872 (= (++!11379 (++!11379 lt!1454752 lt!1454800) suffix!1299) (++!11379 lt!1454752 (++!11379 lt!1454800 suffix!1299)))))

(declare-fun lt!1455125 () Unit!62963)

(declare-fun choose!24777 (List!43558 List!43558 List!43558) Unit!62963)

(assert (=> d!1208872 (= lt!1455125 (choose!24777 lt!1454752 lt!1454800 suffix!1299))))

(assert (=> d!1208872 (= (lemmaConcatAssociativity!2681 lt!1454752 lt!1454800 suffix!1299) lt!1455125)))

(declare-fun bs!592403 () Bool)

(assert (= bs!592403 d!1208872))

(assert (=> bs!592403 m!4674341))

(declare-fun m!4675081 () Bool)

(assert (=> bs!592403 m!4675081))

(assert (=> bs!592403 m!4674495))

(declare-fun m!4675083 () Bool)

(assert (=> bs!592403 m!4675083))

(assert (=> bs!592403 m!4674341))

(assert (=> bs!592403 m!4674495))

(declare-fun m!4675085 () Bool)

(assert (=> bs!592403 m!4675085))

(assert (=> b!4066456 d!1208872))

(declare-fun d!1208874 () Bool)

(declare-fun e!2523901 () Bool)

(assert (=> d!1208874 e!2523901))

(declare-fun res!1659959 () Bool)

(assert (=> d!1208874 (=> (not res!1659959) (not e!2523901))))

(declare-fun lt!1455126 () List!43558)

(assert (=> d!1208874 (= res!1659959 (= (content!6632 lt!1455126) (set.union (content!6632 prefix!494) (content!6632 lt!1454801))))))

(declare-fun e!2523902 () List!43558)

(assert (=> d!1208874 (= lt!1455126 e!2523902)))

(declare-fun c!702196 () Bool)

(assert (=> d!1208874 (= c!702196 (is-Nil!43434 prefix!494))))

(assert (=> d!1208874 (= (++!11379 prefix!494 lt!1454801) lt!1455126)))

(declare-fun b!4066934 () Bool)

(assert (=> b!4066934 (= e!2523902 lt!1454801)))

(declare-fun b!4066936 () Bool)

(declare-fun res!1659960 () Bool)

(assert (=> b!4066936 (=> (not res!1659960) (not e!2523901))))

(assert (=> b!4066936 (= res!1659960 (= (size!32474 lt!1455126) (+ (size!32474 prefix!494) (size!32474 lt!1454801))))))

(declare-fun b!4066937 () Bool)

(assert (=> b!4066937 (= e!2523901 (or (not (= lt!1454801 Nil!43434)) (= lt!1455126 prefix!494)))))

(declare-fun b!4066935 () Bool)

(assert (=> b!4066935 (= e!2523902 (Cons!43434 (h!48854 prefix!494) (++!11379 (t!336861 prefix!494) lt!1454801)))))

(assert (= (and d!1208874 c!702196) b!4066934))

(assert (= (and d!1208874 (not c!702196)) b!4066935))

(assert (= (and d!1208874 res!1659959) b!4066936))

(assert (= (and b!4066936 res!1659960) b!4066937))

(declare-fun m!4675087 () Bool)

(assert (=> d!1208874 m!4675087))

(assert (=> d!1208874 m!4675039))

(declare-fun m!4675089 () Bool)

(assert (=> d!1208874 m!4675089))

(declare-fun m!4675091 () Bool)

(assert (=> b!4066936 m!4675091))

(assert (=> b!4066936 m!4674387))

(declare-fun m!4675093 () Bool)

(assert (=> b!4066936 m!4675093))

(declare-fun m!4675095 () Bool)

(assert (=> b!4066935 m!4675095))

(assert (=> b!4066458 d!1208874))

(declare-fun d!1208876 () Bool)

(declare-fun e!2523903 () Bool)

(assert (=> d!1208876 e!2523903))

(declare-fun res!1659961 () Bool)

(assert (=> d!1208876 (=> (not res!1659961) (not e!2523903))))

(declare-fun lt!1455127 () List!43558)

(assert (=> d!1208876 (= res!1659961 (= (content!6632 lt!1455127) (set.union (content!6632 lt!1454774) (content!6632 lt!1454788))))))

(declare-fun e!2523904 () List!43558)

(assert (=> d!1208876 (= lt!1455127 e!2523904)))

(declare-fun c!702197 () Bool)

(assert (=> d!1208876 (= c!702197 (is-Nil!43434 lt!1454774))))

(assert (=> d!1208876 (= (++!11379 lt!1454774 lt!1454788) lt!1455127)))

(declare-fun b!4066938 () Bool)

(assert (=> b!4066938 (= e!2523904 lt!1454788)))

(declare-fun b!4066940 () Bool)

(declare-fun res!1659962 () Bool)

(assert (=> b!4066940 (=> (not res!1659962) (not e!2523903))))

(assert (=> b!4066940 (= res!1659962 (= (size!32474 lt!1455127) (+ (size!32474 lt!1454774) (size!32474 lt!1454788))))))

(declare-fun b!4066941 () Bool)

(assert (=> b!4066941 (= e!2523903 (or (not (= lt!1454788 Nil!43434)) (= lt!1455127 lt!1454774)))))

(declare-fun b!4066939 () Bool)

(assert (=> b!4066939 (= e!2523904 (Cons!43434 (h!48854 lt!1454774) (++!11379 (t!336861 lt!1454774) lt!1454788)))))

(assert (= (and d!1208876 c!702197) b!4066938))

(assert (= (and d!1208876 (not c!702197)) b!4066939))

(assert (= (and d!1208876 res!1659961) b!4066940))

(assert (= (and b!4066940 res!1659962) b!4066941))

(declare-fun m!4675097 () Bool)

(assert (=> d!1208876 m!4675097))

(declare-fun m!4675099 () Bool)

(assert (=> d!1208876 m!4675099))

(declare-fun m!4675101 () Bool)

(assert (=> d!1208876 m!4675101))

(declare-fun m!4675103 () Bool)

(assert (=> b!4066940 m!4675103))

(assert (=> b!4066940 m!4674735))

(declare-fun m!4675105 () Bool)

(assert (=> b!4066940 m!4675105))

(declare-fun m!4675107 () Bool)

(assert (=> b!4066939 m!4675107))

(assert (=> b!4066458 d!1208876))

(declare-fun d!1208878 () Bool)

(assert (=> d!1208878 (= (++!11379 (++!11379 prefix!494 newSuffix!27) lt!1454788) (++!11379 prefix!494 (++!11379 newSuffix!27 lt!1454788)))))

(declare-fun lt!1455128 () Unit!62963)

(assert (=> d!1208878 (= lt!1455128 (choose!24777 prefix!494 newSuffix!27 lt!1454788))))

(assert (=> d!1208878 (= (lemmaConcatAssociativity!2681 prefix!494 newSuffix!27 lt!1454788) lt!1455128)))

(declare-fun bs!592404 () Bool)

(assert (= bs!592404 d!1208878))

(assert (=> bs!592404 m!4674453))

(declare-fun m!4675109 () Bool)

(assert (=> bs!592404 m!4675109))

(assert (=> bs!592404 m!4674313))

(declare-fun m!4675111 () Bool)

(assert (=> bs!592404 m!4675111))

(assert (=> bs!592404 m!4674453))

(assert (=> bs!592404 m!4674313))

(declare-fun m!4675113 () Bool)

(assert (=> bs!592404 m!4675113))

(assert (=> b!4066458 d!1208878))

(declare-fun d!1208880 () Bool)

(assert (=> d!1208880 (not (matchR!5835 (regex!6977 (rule!10077 token!484)) lt!1454752))))

(declare-fun lt!1455129 () Unit!62963)

(assert (=> d!1208880 (= lt!1455129 (choose!24765 thiss!21717 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454784 lt!1454774 lt!1454752 (rule!10077 token!484)))))

(assert (=> d!1208880 (isPrefix!4064 lt!1454784 lt!1454774)))

(assert (=> d!1208880 (= (lemmaMaxPrefixOutputsMaxPrefix!503 thiss!21717 rules!2999 (rule!10077 (_1!24378 (v!39818 lt!1454783))) lt!1454784 lt!1454774 lt!1454752 (rule!10077 token!484)) lt!1455129)))

(declare-fun bs!592405 () Bool)

(assert (= bs!592405 d!1208880))

(assert (=> bs!592405 m!4674481))

(declare-fun m!4675115 () Bool)

(assert (=> bs!592405 m!4675115))

(assert (=> bs!592405 m!4674327))

(assert (=> b!4066457 d!1208880))

(declare-fun d!1208882 () Bool)

(assert (=> d!1208882 (= (isEmpty!25922 rules!2999) (is-Nil!43436 rules!2999))))

(assert (=> b!4066436 d!1208882))

(declare-fun d!1208884 () Bool)

(assert (=> d!1208884 (isPrefix!4064 lt!1454752 (++!11379 lt!1454752 lt!1454803))))

(declare-fun lt!1455130 () Unit!62963)

(assert (=> d!1208884 (= lt!1455130 (choose!24766 lt!1454752 lt!1454803))))

(assert (=> d!1208884 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454752 lt!1454803) lt!1455130)))

(declare-fun bs!592406 () Bool)

(assert (= bs!592406 d!1208884))

(assert (=> bs!592406 m!4674491))

(assert (=> bs!592406 m!4674491))

(declare-fun m!4675117 () Bool)

(assert (=> bs!592406 m!4675117))

(declare-fun m!4675119 () Bool)

(assert (=> bs!592406 m!4675119))

(assert (=> b!4066437 d!1208884))

(declare-fun d!1208886 () Bool)

(assert (=> d!1208886 (= (seqFromList!5194 lt!1454752) (fromListB!2371 lt!1454752))))

(declare-fun bs!592407 () Bool)

(assert (= bs!592407 d!1208886))

(declare-fun m!4675121 () Bool)

(assert (=> bs!592407 m!4675121))

(assert (=> b!4066437 d!1208886))

(declare-fun d!1208888 () Bool)

(assert (=> d!1208888 (= lt!1454803 suffixResult!105)))

(declare-fun lt!1455131 () Unit!62963)

(assert (=> d!1208888 (= lt!1455131 (choose!24772 lt!1454752 lt!1454803 lt!1454752 suffixResult!105 lt!1454782))))

(assert (=> d!1208888 (isPrefix!4064 lt!1454752 lt!1454782)))

(assert (=> d!1208888 (= (lemmaSamePrefixThenSameSuffix!2225 lt!1454752 lt!1454803 lt!1454752 suffixResult!105 lt!1454782) lt!1455131)))

(declare-fun bs!592408 () Bool)

(assert (= bs!592408 d!1208888))

(declare-fun m!4675123 () Bool)

(assert (=> bs!592408 m!4675123))

(assert (=> bs!592408 m!4674331))

(assert (=> b!4066437 d!1208888))

(declare-fun d!1208890 () Bool)

(assert (=> d!1208890 (= (apply!10166 (transformation!6977 (rule!10077 token!484)) (seqFromList!5194 lt!1454752)) (dynLambda!18451 (toValue!9537 (transformation!6977 (rule!10077 token!484))) (seqFromList!5194 lt!1454752)))))

(declare-fun b_lambda!118813 () Bool)

(assert (=> (not b_lambda!118813) (not d!1208890)))

(declare-fun tb!244541 () Bool)

(declare-fun t!336880 () Bool)

(assert (=> (and b!4066435 (= (toValue!9537 (transformation!6977 (h!48856 rules!2999))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))) t!336880) tb!244541))

(declare-fun result!296342 () Bool)

(assert (=> tb!244541 (= result!296342 (inv!21 (dynLambda!18451 (toValue!9537 (transformation!6977 (rule!10077 token!484))) (seqFromList!5194 lt!1454752))))))

(declare-fun m!4675125 () Bool)

(assert (=> tb!244541 m!4675125))

(assert (=> d!1208890 t!336880))

(declare-fun b_and!312583 () Bool)

(assert (= b_and!312571 (and (=> t!336880 result!296342) b_and!312583)))

(declare-fun t!336882 () Bool)

(declare-fun tb!244543 () Bool)

(assert (=> (and b!4066459 (= (toValue!9537 (transformation!6977 (rule!10077 token!484))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))) t!336882) tb!244543))

(declare-fun result!296344 () Bool)

(assert (= result!296344 result!296342))

(assert (=> d!1208890 t!336882))

(declare-fun b_and!312585 () Bool)

(assert (= b_and!312573 (and (=> t!336882 result!296344) b_and!312585)))

(assert (=> d!1208890 m!4674421))

(declare-fun m!4675127 () Bool)

(assert (=> d!1208890 m!4675127))

(assert (=> b!4066437 d!1208890))

(declare-fun b!4066945 () Bool)

(declare-fun e!2523907 () Bool)

(assert (=> b!4066945 (= e!2523907 (>= (size!32474 lt!1454764) (size!32474 lt!1454752)))))

(declare-fun b!4066944 () Bool)

(declare-fun e!2523908 () Bool)

(assert (=> b!4066944 (= e!2523908 (isPrefix!4064 (tail!6312 lt!1454752) (tail!6312 lt!1454764)))))

(declare-fun d!1208892 () Bool)

(assert (=> d!1208892 e!2523907))

(declare-fun res!1659964 () Bool)

(assert (=> d!1208892 (=> res!1659964 e!2523907)))

(declare-fun lt!1455132 () Bool)

(assert (=> d!1208892 (= res!1659964 (not lt!1455132))))

(declare-fun e!2523906 () Bool)

(assert (=> d!1208892 (= lt!1455132 e!2523906)))

(declare-fun res!1659965 () Bool)

(assert (=> d!1208892 (=> res!1659965 e!2523906)))

(assert (=> d!1208892 (= res!1659965 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208892 (= (isPrefix!4064 lt!1454752 lt!1454764) lt!1455132)))

(declare-fun b!4066942 () Bool)

(assert (=> b!4066942 (= e!2523906 e!2523908)))

(declare-fun res!1659966 () Bool)

(assert (=> b!4066942 (=> (not res!1659966) (not e!2523908))))

(assert (=> b!4066942 (= res!1659966 (not (is-Nil!43434 lt!1454764)))))

(declare-fun b!4066943 () Bool)

(declare-fun res!1659963 () Bool)

(assert (=> b!4066943 (=> (not res!1659963) (not e!2523908))))

(assert (=> b!4066943 (= res!1659963 (= (head!8580 lt!1454752) (head!8580 lt!1454764)))))

(assert (= (and d!1208892 (not res!1659965)) b!4066942))

(assert (= (and b!4066942 res!1659966) b!4066943))

(assert (= (and b!4066943 res!1659963) b!4066944))

(assert (= (and d!1208892 (not res!1659964)) b!4066945))

(declare-fun m!4675129 () Bool)

(assert (=> b!4066945 m!4675129))

(assert (=> b!4066945 m!4674385))

(assert (=> b!4066944 m!4674745))

(declare-fun m!4675131 () Bool)

(assert (=> b!4066944 m!4675131))

(assert (=> b!4066944 m!4674745))

(assert (=> b!4066944 m!4675131))

(declare-fun m!4675133 () Bool)

(assert (=> b!4066944 m!4675133))

(assert (=> b!4066943 m!4674751))

(declare-fun m!4675135 () Bool)

(assert (=> b!4066943 m!4675135))

(assert (=> b!4066437 d!1208892))

(declare-fun d!1208894 () Bool)

(assert (=> d!1208894 (= (maxPrefixOneRule!2876 thiss!21717 (rule!10077 token!484) lt!1454782) (Some!9390 (tuple2!42489 (Token!13093 (apply!10166 (transformation!6977 (rule!10077 token!484)) (seqFromList!5194 lt!1454752)) (rule!10077 token!484) (size!32474 lt!1454752) lt!1454752) suffixResult!105)))))

(declare-fun lt!1455133 () Unit!62963)

(assert (=> d!1208894 (= lt!1455133 (choose!24769 thiss!21717 rules!2999 lt!1454752 lt!1454782 suffixResult!105 (rule!10077 token!484)))))

(assert (=> d!1208894 (not (isEmpty!25922 rules!2999))))

(assert (=> d!1208894 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1682 thiss!21717 rules!2999 lt!1454752 lt!1454782 suffixResult!105 (rule!10077 token!484)) lt!1455133)))

(declare-fun bs!592409 () Bool)

(assert (= bs!592409 d!1208894))

(assert (=> bs!592409 m!4674329))

(assert (=> bs!592409 m!4674427))

(assert (=> bs!592409 m!4674421))

(declare-fun m!4675137 () Bool)

(assert (=> bs!592409 m!4675137))

(assert (=> bs!592409 m!4674385))

(assert (=> bs!592409 m!4674421))

(assert (=> bs!592409 m!4674423))

(assert (=> b!4066437 d!1208894))

(declare-fun b!4066946 () Bool)

(declare-fun res!1659973 () Bool)

(declare-fun e!2523912 () Bool)

(assert (=> b!4066946 (=> (not res!1659973) (not e!2523912))))

(declare-fun lt!1455138 () Option!9391)

(assert (=> b!4066946 (= res!1659973 (= (rule!10077 (_1!24378 (get!14244 lt!1455138))) (rule!10077 token!484)))))

(declare-fun b!4066948 () Bool)

(declare-fun res!1659970 () Bool)

(assert (=> b!4066948 (=> (not res!1659970) (not e!2523912))))

(assert (=> b!4066948 (= res!1659970 (= (++!11379 (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455138)))) (_2!24378 (get!14244 lt!1455138))) lt!1454782))))

(declare-fun b!4066949 () Bool)

(declare-fun e!2523909 () Option!9391)

(assert (=> b!4066949 (= e!2523909 None!9390)))

(declare-fun b!4066950 () Bool)

(declare-fun e!2523910 () Bool)

(assert (=> b!4066950 (= e!2523910 e!2523912)))

(declare-fun res!1659967 () Bool)

(assert (=> b!4066950 (=> (not res!1659967) (not e!2523912))))

(assert (=> b!4066950 (= res!1659967 (matchR!5835 (regex!6977 (rule!10077 token!484)) (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455138))))))))

(declare-fun b!4066951 () Bool)

(declare-fun lt!1455136 () tuple2!42492)

(assert (=> b!4066951 (= e!2523909 (Some!9390 (tuple2!42489 (Token!13093 (apply!10166 (transformation!6977 (rule!10077 token!484)) (seqFromList!5194 (_1!24380 lt!1455136))) (rule!10077 token!484) (size!32477 (seqFromList!5194 (_1!24380 lt!1455136))) (_1!24380 lt!1455136)) (_2!24380 lt!1455136))))))

(declare-fun lt!1455135 () Unit!62963)

(assert (=> b!4066951 (= lt!1455135 (longestMatchIsAcceptedByMatchOrIsEmpty!1387 (regex!6977 (rule!10077 token!484)) lt!1454782))))

(declare-fun res!1659972 () Bool)

(assert (=> b!4066951 (= res!1659972 (isEmpty!25924 (_1!24380 (findLongestMatchInner!1414 (regex!6977 (rule!10077 token!484)) Nil!43434 (size!32474 Nil!43434) lt!1454782 lt!1454782 (size!32474 lt!1454782)))))))

(declare-fun e!2523911 () Bool)

(assert (=> b!4066951 (=> res!1659972 e!2523911)))

(assert (=> b!4066951 e!2523911))

(declare-fun lt!1455134 () Unit!62963)

(assert (=> b!4066951 (= lt!1455134 lt!1455135)))

(declare-fun lt!1455137 () Unit!62963)

(assert (=> b!4066951 (= lt!1455137 (lemmaSemiInverse!1946 (transformation!6977 (rule!10077 token!484)) (seqFromList!5194 (_1!24380 lt!1455136))))))

(declare-fun b!4066952 () Bool)

(assert (=> b!4066952 (= e!2523911 (matchR!5835 (regex!6977 (rule!10077 token!484)) (_1!24380 (findLongestMatchInner!1414 (regex!6977 (rule!10077 token!484)) Nil!43434 (size!32474 Nil!43434) lt!1454782 lt!1454782 (size!32474 lt!1454782)))))))

(declare-fun b!4066953 () Bool)

(declare-fun res!1659969 () Bool)

(assert (=> b!4066953 (=> (not res!1659969) (not e!2523912))))

(assert (=> b!4066953 (= res!1659969 (= (value!219480 (_1!24378 (get!14244 lt!1455138))) (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (get!14244 lt!1455138)))) (seqFromList!5194 (originalCharacters!7577 (_1!24378 (get!14244 lt!1455138)))))))))

(declare-fun b!4066954 () Bool)

(assert (=> b!4066954 (= e!2523912 (= (size!32473 (_1!24378 (get!14244 lt!1455138))) (size!32474 (originalCharacters!7577 (_1!24378 (get!14244 lt!1455138))))))))

(declare-fun b!4066947 () Bool)

(declare-fun res!1659968 () Bool)

(assert (=> b!4066947 (=> (not res!1659968) (not e!2523912))))

(assert (=> b!4066947 (= res!1659968 (< (size!32474 (_2!24378 (get!14244 lt!1455138))) (size!32474 lt!1454782)))))

(declare-fun d!1208896 () Bool)

(assert (=> d!1208896 e!2523910))

(declare-fun res!1659971 () Bool)

(assert (=> d!1208896 (=> res!1659971 e!2523910)))

(assert (=> d!1208896 (= res!1659971 (isEmpty!25925 lt!1455138))))

(assert (=> d!1208896 (= lt!1455138 e!2523909)))

(declare-fun c!702198 () Bool)

(assert (=> d!1208896 (= c!702198 (isEmpty!25924 (_1!24380 lt!1455136)))))

(assert (=> d!1208896 (= lt!1455136 (findLongestMatch!1327 (regex!6977 (rule!10077 token!484)) lt!1454782))))

(assert (=> d!1208896 (ruleValid!2907 thiss!21717 (rule!10077 token!484))))

(assert (=> d!1208896 (= (maxPrefixOneRule!2876 thiss!21717 (rule!10077 token!484) lt!1454782) lt!1455138)))

(assert (= (and d!1208896 c!702198) b!4066949))

(assert (= (and d!1208896 (not c!702198)) b!4066951))

(assert (= (and b!4066951 (not res!1659972)) b!4066952))

(assert (= (and d!1208896 (not res!1659971)) b!4066950))

(assert (= (and b!4066950 res!1659967) b!4066948))

(assert (= (and b!4066948 res!1659970) b!4066947))

(assert (= (and b!4066947 res!1659968) b!4066946))

(assert (= (and b!4066946 res!1659973) b!4066953))

(assert (= (and b!4066953 res!1659969) b!4066954))

(declare-fun m!4675139 () Bool)

(assert (=> b!4066950 m!4675139))

(declare-fun m!4675141 () Bool)

(assert (=> b!4066950 m!4675141))

(assert (=> b!4066950 m!4675141))

(declare-fun m!4675143 () Bool)

(assert (=> b!4066950 m!4675143))

(assert (=> b!4066950 m!4675143))

(declare-fun m!4675145 () Bool)

(assert (=> b!4066950 m!4675145))

(assert (=> b!4066952 m!4674861))

(assert (=> b!4066952 m!4674763))

(assert (=> b!4066952 m!4674861))

(assert (=> b!4066952 m!4674763))

(declare-fun m!4675147 () Bool)

(assert (=> b!4066952 m!4675147))

(declare-fun m!4675149 () Bool)

(assert (=> b!4066952 m!4675149))

(assert (=> b!4066953 m!4675139))

(declare-fun m!4675151 () Bool)

(assert (=> b!4066953 m!4675151))

(assert (=> b!4066953 m!4675151))

(declare-fun m!4675153 () Bool)

(assert (=> b!4066953 m!4675153))

(declare-fun m!4675155 () Bool)

(assert (=> b!4066951 m!4675155))

(declare-fun m!4675157 () Bool)

(assert (=> b!4066951 m!4675157))

(declare-fun m!4675159 () Bool)

(assert (=> b!4066951 m!4675159))

(declare-fun m!4675161 () Bool)

(assert (=> b!4066951 m!4675161))

(assert (=> b!4066951 m!4675155))

(declare-fun m!4675163 () Bool)

(assert (=> b!4066951 m!4675163))

(assert (=> b!4066951 m!4674861))

(assert (=> b!4066951 m!4675155))

(declare-fun m!4675165 () Bool)

(assert (=> b!4066951 m!4675165))

(assert (=> b!4066951 m!4675155))

(assert (=> b!4066951 m!4674861))

(assert (=> b!4066951 m!4674763))

(assert (=> b!4066951 m!4675147))

(assert (=> b!4066951 m!4674763))

(declare-fun m!4675167 () Bool)

(assert (=> d!1208896 m!4675167))

(declare-fun m!4675169 () Bool)

(assert (=> d!1208896 m!4675169))

(declare-fun m!4675171 () Bool)

(assert (=> d!1208896 m!4675171))

(assert (=> d!1208896 m!4674447))

(assert (=> b!4066948 m!4675139))

(assert (=> b!4066948 m!4675141))

(assert (=> b!4066948 m!4675141))

(assert (=> b!4066948 m!4675143))

(assert (=> b!4066948 m!4675143))

(declare-fun m!4675173 () Bool)

(assert (=> b!4066948 m!4675173))

(assert (=> b!4066946 m!4675139))

(assert (=> b!4066947 m!4675139))

(declare-fun m!4675175 () Bool)

(assert (=> b!4066947 m!4675175))

(assert (=> b!4066947 m!4674763))

(assert (=> b!4066954 m!4675139))

(declare-fun m!4675177 () Bool)

(assert (=> b!4066954 m!4675177))

(assert (=> b!4066437 d!1208896))

(declare-fun d!1208898 () Bool)

(declare-fun e!2523919 () Bool)

(assert (=> d!1208898 e!2523919))

(declare-fun res!1659978 () Bool)

(assert (=> d!1208898 (=> (not res!1659978) (not e!2523919))))

(declare-fun lt!1455149 () List!43558)

(assert (=> d!1208898 (= res!1659978 (= (content!6632 lt!1455149) (set.union (content!6632 lt!1454752) (content!6632 suffixResult!105))))))

(declare-fun e!2523920 () List!43558)

(assert (=> d!1208898 (= lt!1455149 e!2523920)))

(declare-fun c!702201 () Bool)

(assert (=> d!1208898 (= c!702201 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208898 (= (++!11379 lt!1454752 suffixResult!105) lt!1455149)))

(declare-fun b!4066963 () Bool)

(assert (=> b!4066963 (= e!2523920 suffixResult!105)))

(declare-fun b!4066965 () Bool)

(declare-fun res!1659981 () Bool)

(assert (=> b!4066965 (=> (not res!1659981) (not e!2523919))))

(assert (=> b!4066965 (= res!1659981 (= (size!32474 lt!1455149) (+ (size!32474 lt!1454752) (size!32474 suffixResult!105))))))

(declare-fun b!4066966 () Bool)

(assert (=> b!4066966 (= e!2523919 (or (not (= suffixResult!105 Nil!43434)) (= lt!1455149 lt!1454752)))))

(declare-fun b!4066964 () Bool)

(assert (=> b!4066964 (= e!2523920 (Cons!43434 (h!48854 lt!1454752) (++!11379 (t!336861 lt!1454752) suffixResult!105)))))

(assert (= (and d!1208898 c!702201) b!4066963))

(assert (= (and d!1208898 (not c!702201)) b!4066964))

(assert (= (and d!1208898 res!1659978) b!4066965))

(assert (= (and b!4066965 res!1659981) b!4066966))

(declare-fun m!4675179 () Bool)

(assert (=> d!1208898 m!4675179))

(assert (=> d!1208898 m!4675019))

(declare-fun m!4675181 () Bool)

(assert (=> d!1208898 m!4675181))

(declare-fun m!4675183 () Bool)

(assert (=> b!4066965 m!4675183))

(assert (=> b!4066965 m!4674385))

(declare-fun m!4675185 () Bool)

(assert (=> b!4066965 m!4675185))

(declare-fun m!4675187 () Bool)

(assert (=> b!4066964 m!4675187))

(assert (=> b!4066449 d!1208898))

(declare-fun d!1208900 () Bool)

(declare-fun e!2523921 () Bool)

(assert (=> d!1208900 e!2523921))

(declare-fun res!1659990 () Bool)

(assert (=> d!1208900 (=> (not res!1659990) (not e!2523921))))

(assert (=> d!1208900 (= res!1659990 (semiInverseModEq!2985 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))))))

(declare-fun Unit!62988 () Unit!62963)

(assert (=> d!1208900 (= (lemmaInv!1186 (transformation!6977 (rule!10077 token!484))) Unit!62988)))

(declare-fun b!4066975 () Bool)

(assert (=> b!4066975 (= e!2523921 (equivClasses!2884 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))))))

(assert (= (and d!1208900 res!1659990) b!4066975))

(declare-fun m!4675189 () Bool)

(assert (=> d!1208900 m!4675189))

(declare-fun m!4675191 () Bool)

(assert (=> b!4066975 m!4675191))

(assert (=> b!4066449 d!1208900))

(declare-fun d!1208902 () Bool)

(declare-fun res!1659991 () Bool)

(declare-fun e!2523922 () Bool)

(assert (=> d!1208902 (=> (not res!1659991) (not e!2523922))))

(assert (=> d!1208902 (= res!1659991 (validRegex!5377 (regex!6977 (rule!10077 token!484))))))

(assert (=> d!1208902 (= (ruleValid!2907 thiss!21717 (rule!10077 token!484)) e!2523922)))

(declare-fun b!4066978 () Bool)

(declare-fun res!1659992 () Bool)

(assert (=> b!4066978 (=> (not res!1659992) (not e!2523922))))

(assert (=> b!4066978 (= res!1659992 (not (nullable!4177 (regex!6977 (rule!10077 token!484)))))))

(declare-fun b!4066979 () Bool)

(assert (=> b!4066979 (= e!2523922 (not (= (tag!7837 (rule!10077 token!484)) (String!49756 ""))))))

(assert (= (and d!1208902 res!1659991) b!4066978))

(assert (= (and b!4066978 res!1659992) b!4066979))

(assert (=> d!1208902 m!4674797))

(assert (=> b!4066978 m!4674799))

(assert (=> b!4066449 d!1208902))

(declare-fun d!1208904 () Bool)

(assert (=> d!1208904 (ruleValid!2907 thiss!21717 (rule!10077 token!484))))

(declare-fun lt!1455150 () Unit!62963)

(assert (=> d!1208904 (= lt!1455150 (choose!24770 thiss!21717 (rule!10077 token!484) rules!2999))))

(assert (=> d!1208904 (contains!8643 rules!2999 (rule!10077 token!484))))

(assert (=> d!1208904 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1977 thiss!21717 (rule!10077 token!484) rules!2999) lt!1455150)))

(declare-fun bs!592410 () Bool)

(assert (= bs!592410 d!1208904))

(assert (=> bs!592410 m!4674447))

(declare-fun m!4675193 () Bool)

(assert (=> bs!592410 m!4675193))

(assert (=> bs!592410 m!4674513))

(assert (=> b!4066449 d!1208904))

(declare-fun d!1208906 () Bool)

(assert (=> d!1208906 (= (_2!24378 (v!39818 lt!1454783)) lt!1454758)))

(declare-fun lt!1455151 () Unit!62963)

(assert (=> d!1208906 (= lt!1455151 (choose!24772 lt!1454784 (_2!24378 (v!39818 lt!1454783)) lt!1454784 lt!1454758 lt!1454774))))

(assert (=> d!1208906 (isPrefix!4064 lt!1454784 lt!1454774)))

(assert (=> d!1208906 (= (lemmaSamePrefixThenSameSuffix!2225 lt!1454784 (_2!24378 (v!39818 lt!1454783)) lt!1454784 lt!1454758 lt!1454774) lt!1455151)))

(declare-fun bs!592411 () Bool)

(assert (= bs!592411 d!1208906))

(declare-fun m!4675195 () Bool)

(assert (=> bs!592411 m!4675195))

(assert (=> bs!592411 m!4674327))

(assert (=> b!4066428 d!1208906))

(declare-fun b!4066983 () Bool)

(declare-fun e!2523924 () Bool)

(assert (=> b!4066983 (= e!2523924 (>= (size!32474 lt!1454757) (size!32474 lt!1454784)))))

(declare-fun b!4066982 () Bool)

(declare-fun e!2523925 () Bool)

(assert (=> b!4066982 (= e!2523925 (isPrefix!4064 (tail!6312 lt!1454784) (tail!6312 lt!1454757)))))

(declare-fun d!1208908 () Bool)

(assert (=> d!1208908 e!2523924))

(declare-fun res!1659994 () Bool)

(assert (=> d!1208908 (=> res!1659994 e!2523924)))

(declare-fun lt!1455152 () Bool)

(assert (=> d!1208908 (= res!1659994 (not lt!1455152))))

(declare-fun e!2523923 () Bool)

(assert (=> d!1208908 (= lt!1455152 e!2523923)))

(declare-fun res!1659995 () Bool)

(assert (=> d!1208908 (=> res!1659995 e!2523923)))

(assert (=> d!1208908 (= res!1659995 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208908 (= (isPrefix!4064 lt!1454784 lt!1454757) lt!1455152)))

(declare-fun b!4066980 () Bool)

(assert (=> b!4066980 (= e!2523923 e!2523925)))

(declare-fun res!1659996 () Bool)

(assert (=> b!4066980 (=> (not res!1659996) (not e!2523925))))

(assert (=> b!4066980 (= res!1659996 (not (is-Nil!43434 lt!1454757)))))

(declare-fun b!4066981 () Bool)

(declare-fun res!1659993 () Bool)

(assert (=> b!4066981 (=> (not res!1659993) (not e!2523925))))

(assert (=> b!4066981 (= res!1659993 (= (head!8580 lt!1454784) (head!8580 lt!1454757)))))

(assert (= (and d!1208908 (not res!1659995)) b!4066980))

(assert (= (and b!4066980 res!1659996) b!4066981))

(assert (= (and b!4066981 res!1659993) b!4066982))

(assert (= (and d!1208908 (not res!1659994)) b!4066983))

(declare-fun m!4675197 () Bool)

(assert (=> b!4066983 m!4675197))

(assert (=> b!4066983 m!4674351))

(assert (=> b!4066982 m!4674723))

(declare-fun m!4675199 () Bool)

(assert (=> b!4066982 m!4675199))

(assert (=> b!4066982 m!4674723))

(assert (=> b!4066982 m!4675199))

(declare-fun m!4675201 () Bool)

(assert (=> b!4066982 m!4675201))

(assert (=> b!4066981 m!4674727))

(declare-fun m!4675203 () Bool)

(assert (=> b!4066981 m!4675203))

(assert (=> b!4066428 d!1208908))

(declare-fun d!1208910 () Bool)

(assert (=> d!1208910 (isPrefix!4064 lt!1454784 (++!11379 lt!1454784 lt!1454758))))

(declare-fun lt!1455153 () Unit!62963)

(assert (=> d!1208910 (= lt!1455153 (choose!24766 lt!1454784 lt!1454758))))

(assert (=> d!1208910 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454784 lt!1454758) lt!1455153)))

(declare-fun bs!592412 () Bool)

(assert (= bs!592412 d!1208910))

(assert (=> bs!592412 m!4674397))

(assert (=> bs!592412 m!4674397))

(declare-fun m!4675205 () Bool)

(assert (=> bs!592412 m!4675205))

(declare-fun m!4675207 () Bool)

(assert (=> bs!592412 m!4675207))

(assert (=> b!4066428 d!1208910))

(declare-fun b!4067045 () Bool)

(declare-fun res!1660045 () Bool)

(declare-fun e!2523958 () Bool)

(assert (=> b!4067045 (=> (not res!1660045) (not e!2523958))))

(declare-fun lt!1455186 () Option!9391)

(assert (=> b!4067045 (= res!1660045 (= (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455186)))) (originalCharacters!7577 (_1!24378 (get!14244 lt!1455186)))))))

(declare-fun b!4067047 () Bool)

(declare-fun res!1660046 () Bool)

(assert (=> b!4067047 (=> (not res!1660046) (not e!2523958))))

(assert (=> b!4067047 (= res!1660046 (= (++!11379 (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455186)))) (_2!24378 (get!14244 lt!1455186))) lt!1454774))))

(declare-fun b!4067048 () Bool)

(declare-fun e!2523955 () Option!9391)

(declare-fun call!288307 () Option!9391)

(assert (=> b!4067048 (= e!2523955 call!288307)))

(declare-fun b!4067049 () Bool)

(declare-fun res!1660041 () Bool)

(assert (=> b!4067049 (=> (not res!1660041) (not e!2523958))))

(assert (=> b!4067049 (= res!1660041 (= (value!219480 (_1!24378 (get!14244 lt!1455186))) (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (get!14244 lt!1455186)))) (seqFromList!5194 (originalCharacters!7577 (_1!24378 (get!14244 lt!1455186)))))))))

(declare-fun b!4067050 () Bool)

(declare-fun res!1660042 () Bool)

(assert (=> b!4067050 (=> (not res!1660042) (not e!2523958))))

(assert (=> b!4067050 (= res!1660042 (< (size!32474 (_2!24378 (get!14244 lt!1455186))) (size!32474 lt!1454774)))))

(declare-fun b!4067051 () Bool)

(declare-fun res!1660044 () Bool)

(assert (=> b!4067051 (=> (not res!1660044) (not e!2523958))))

(assert (=> b!4067051 (= res!1660044 (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (get!14244 lt!1455186)))) (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455186))))))))

(declare-fun b!4067052 () Bool)

(declare-fun e!2523956 () Bool)

(assert (=> b!4067052 (= e!2523956 e!2523958)))

(declare-fun res!1660040 () Bool)

(assert (=> b!4067052 (=> (not res!1660040) (not e!2523958))))

(declare-fun isDefined!7132 (Option!9391) Bool)

(assert (=> b!4067052 (= res!1660040 (isDefined!7132 lt!1455186))))

(declare-fun bm!288302 () Bool)

(assert (=> bm!288302 (= call!288307 (maxPrefixOneRule!2876 thiss!21717 (h!48856 rules!2999) lt!1454774))))

(declare-fun b!4067053 () Bool)

(declare-fun lt!1455190 () Option!9391)

(declare-fun lt!1455191 () Option!9391)

(assert (=> b!4067053 (= e!2523955 (ite (and (is-None!9390 lt!1455190) (is-None!9390 lt!1455191)) None!9390 (ite (is-None!9390 lt!1455191) lt!1455190 (ite (is-None!9390 lt!1455190) lt!1455191 (ite (>= (size!32473 (_1!24378 (v!39818 lt!1455190))) (size!32473 (_1!24378 (v!39818 lt!1455191)))) lt!1455190 lt!1455191)))))))

(assert (=> b!4067053 (= lt!1455190 call!288307)))

(assert (=> b!4067053 (= lt!1455191 (maxPrefix!3864 thiss!21717 (t!336863 rules!2999) lt!1454774))))

(declare-fun d!1208912 () Bool)

(assert (=> d!1208912 e!2523956))

(declare-fun res!1660043 () Bool)

(assert (=> d!1208912 (=> res!1660043 e!2523956)))

(assert (=> d!1208912 (= res!1660043 (isEmpty!25925 lt!1455186))))

(assert (=> d!1208912 (= lt!1455186 e!2523955)))

(declare-fun c!702211 () Bool)

(assert (=> d!1208912 (= c!702211 (and (is-Cons!43436 rules!2999) (is-Nil!43436 (t!336863 rules!2999))))))

(declare-fun lt!1455188 () Unit!62963)

(declare-fun lt!1455187 () Unit!62963)

(assert (=> d!1208912 (= lt!1455188 lt!1455187)))

(assert (=> d!1208912 (isPrefix!4064 lt!1454774 lt!1454774)))

(assert (=> d!1208912 (= lt!1455187 (lemmaIsPrefixRefl!2631 lt!1454774 lt!1454774))))

(declare-fun rulesValidInductive!2553 (LexerInterface!6566 List!43560) Bool)

(assert (=> d!1208912 (rulesValidInductive!2553 thiss!21717 rules!2999)))

(assert (=> d!1208912 (= (maxPrefix!3864 thiss!21717 rules!2999 lt!1454774) lt!1455186)))

(declare-fun b!4067046 () Bool)

(assert (=> b!4067046 (= e!2523958 (contains!8643 rules!2999 (rule!10077 (_1!24378 (get!14244 lt!1455186)))))))

(assert (= (and d!1208912 c!702211) b!4067048))

(assert (= (and d!1208912 (not c!702211)) b!4067053))

(assert (= (or b!4067048 b!4067053) bm!288302))

(assert (= (and d!1208912 (not res!1660043)) b!4067052))

(assert (= (and b!4067052 res!1660040) b!4067045))

(assert (= (and b!4067045 res!1660045) b!4067050))

(assert (= (and b!4067050 res!1660042) b!4067047))

(assert (= (and b!4067047 res!1660046) b!4067049))

(assert (= (and b!4067049 res!1660041) b!4067051))

(assert (= (and b!4067051 res!1660044) b!4067046))

(declare-fun m!4675303 () Bool)

(assert (=> bm!288302 m!4675303))

(declare-fun m!4675305 () Bool)

(assert (=> d!1208912 m!4675305))

(declare-fun m!4675307 () Bool)

(assert (=> d!1208912 m!4675307))

(declare-fun m!4675309 () Bool)

(assert (=> d!1208912 m!4675309))

(declare-fun m!4675311 () Bool)

(assert (=> d!1208912 m!4675311))

(declare-fun m!4675313 () Bool)

(assert (=> b!4067053 m!4675313))

(declare-fun m!4675315 () Bool)

(assert (=> b!4067045 m!4675315))

(declare-fun m!4675317 () Bool)

(assert (=> b!4067045 m!4675317))

(assert (=> b!4067045 m!4675317))

(declare-fun m!4675319 () Bool)

(assert (=> b!4067045 m!4675319))

(assert (=> b!4067050 m!4675315))

(declare-fun m!4675321 () Bool)

(assert (=> b!4067050 m!4675321))

(assert (=> b!4067050 m!4674735))

(assert (=> b!4067046 m!4675315))

(declare-fun m!4675323 () Bool)

(assert (=> b!4067046 m!4675323))

(declare-fun m!4675325 () Bool)

(assert (=> b!4067052 m!4675325))

(assert (=> b!4067047 m!4675315))

(assert (=> b!4067047 m!4675317))

(assert (=> b!4067047 m!4675317))

(assert (=> b!4067047 m!4675319))

(assert (=> b!4067047 m!4675319))

(declare-fun m!4675329 () Bool)

(assert (=> b!4067047 m!4675329))

(assert (=> b!4067051 m!4675315))

(assert (=> b!4067051 m!4675317))

(assert (=> b!4067051 m!4675317))

(assert (=> b!4067051 m!4675319))

(assert (=> b!4067051 m!4675319))

(declare-fun m!4675331 () Bool)

(assert (=> b!4067051 m!4675331))

(assert (=> b!4067049 m!4675315))

(declare-fun m!4675335 () Bool)

(assert (=> b!4067049 m!4675335))

(assert (=> b!4067049 m!4675335))

(declare-fun m!4675345 () Bool)

(assert (=> b!4067049 m!4675345))

(assert (=> b!4066451 d!1208912))

(declare-fun d!1208942 () Bool)

(assert (=> d!1208942 (= suffixResult!105 lt!1454815)))

(declare-fun lt!1455197 () Unit!62963)

(assert (=> d!1208942 (= lt!1455197 (choose!24772 lt!1454752 suffixResult!105 lt!1454752 lt!1454815 lt!1454782))))

(assert (=> d!1208942 (isPrefix!4064 lt!1454752 lt!1454782)))

(assert (=> d!1208942 (= (lemmaSamePrefixThenSameSuffix!2225 lt!1454752 suffixResult!105 lt!1454752 lt!1454815 lt!1454782) lt!1455197)))

(declare-fun bs!592418 () Bool)

(assert (= bs!592418 d!1208942))

(declare-fun m!4675347 () Bool)

(assert (=> bs!592418 m!4675347))

(assert (=> bs!592418 m!4674331))

(assert (=> b!4066451 d!1208942))

(declare-fun b!4067065 () Bool)

(declare-fun e!2523965 () Bool)

(assert (=> b!4067065 (= e!2523965 (>= (size!32474 lt!1454809) (size!32474 lt!1454752)))))

(declare-fun b!4067064 () Bool)

(declare-fun e!2523966 () Bool)

(assert (=> b!4067064 (= e!2523966 (isPrefix!4064 (tail!6312 lt!1454752) (tail!6312 lt!1454809)))))

(declare-fun d!1208944 () Bool)

(assert (=> d!1208944 e!2523965))

(declare-fun res!1660054 () Bool)

(assert (=> d!1208944 (=> res!1660054 e!2523965)))

(declare-fun lt!1455198 () Bool)

(assert (=> d!1208944 (= res!1660054 (not lt!1455198))))

(declare-fun e!2523964 () Bool)

(assert (=> d!1208944 (= lt!1455198 e!2523964)))

(declare-fun res!1660055 () Bool)

(assert (=> d!1208944 (=> res!1660055 e!2523964)))

(assert (=> d!1208944 (= res!1660055 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208944 (= (isPrefix!4064 lt!1454752 lt!1454809) lt!1455198)))

(declare-fun b!4067062 () Bool)

(assert (=> b!4067062 (= e!2523964 e!2523966)))

(declare-fun res!1660056 () Bool)

(assert (=> b!4067062 (=> (not res!1660056) (not e!2523966))))

(assert (=> b!4067062 (= res!1660056 (not (is-Nil!43434 lt!1454809)))))

(declare-fun b!4067063 () Bool)

(declare-fun res!1660053 () Bool)

(assert (=> b!4067063 (=> (not res!1660053) (not e!2523966))))

(assert (=> b!4067063 (= res!1660053 (= (head!8580 lt!1454752) (head!8580 lt!1454809)))))

(assert (= (and d!1208944 (not res!1660055)) b!4067062))

(assert (= (and b!4067062 res!1660056) b!4067063))

(assert (= (and b!4067063 res!1660053) b!4067064))

(assert (= (and d!1208944 (not res!1660054)) b!4067065))

(declare-fun m!4675349 () Bool)

(assert (=> b!4067065 m!4675349))

(assert (=> b!4067065 m!4674385))

(assert (=> b!4067064 m!4674745))

(declare-fun m!4675351 () Bool)

(assert (=> b!4067064 m!4675351))

(assert (=> b!4067064 m!4674745))

(assert (=> b!4067064 m!4675351))

(declare-fun m!4675353 () Bool)

(assert (=> b!4067064 m!4675353))

(assert (=> b!4067063 m!4674751))

(declare-fun m!4675355 () Bool)

(assert (=> b!4067063 m!4675355))

(assert (=> b!4066451 d!1208944))

(declare-fun d!1208946 () Bool)

(assert (=> d!1208946 (isPrefix!4064 lt!1454752 (++!11379 lt!1454752 lt!1454815))))

(declare-fun lt!1455199 () Unit!62963)

(assert (=> d!1208946 (= lt!1455199 (choose!24766 lt!1454752 lt!1454815))))

(assert (=> d!1208946 (= (lemmaConcatTwoListThenFirstIsPrefix!2899 lt!1454752 lt!1454815) lt!1455199)))

(declare-fun bs!592419 () Bool)

(assert (= bs!592419 d!1208946))

(assert (=> bs!592419 m!4674403))

(assert (=> bs!592419 m!4674403))

(declare-fun m!4675357 () Bool)

(assert (=> bs!592419 m!4675357))

(declare-fun m!4675359 () Bool)

(assert (=> bs!592419 m!4675359))

(assert (=> b!4066451 d!1208946))

(declare-fun d!1208948 () Bool)

(declare-fun e!2523967 () Bool)

(assert (=> d!1208948 e!2523967))

(declare-fun res!1660057 () Bool)

(assert (=> d!1208948 (=> (not res!1660057) (not e!2523967))))

(declare-fun lt!1455200 () List!43558)

(assert (=> d!1208948 (= res!1660057 (= (content!6632 lt!1455200) (set.union (content!6632 newSuffix!27) (content!6632 lt!1454788))))))

(declare-fun e!2523968 () List!43558)

(assert (=> d!1208948 (= lt!1455200 e!2523968)))

(declare-fun c!702213 () Bool)

(assert (=> d!1208948 (= c!702213 (is-Nil!43434 newSuffix!27))))

(assert (=> d!1208948 (= (++!11379 newSuffix!27 lt!1454788) lt!1455200)))

(declare-fun b!4067066 () Bool)

(assert (=> b!4067066 (= e!2523968 lt!1454788)))

(declare-fun b!4067068 () Bool)

(declare-fun res!1660058 () Bool)

(assert (=> b!4067068 (=> (not res!1660058) (not e!2523967))))

(assert (=> b!4067068 (= res!1660058 (= (size!32474 lt!1455200) (+ (size!32474 newSuffix!27) (size!32474 lt!1454788))))))

(declare-fun b!4067069 () Bool)

(assert (=> b!4067069 (= e!2523967 (or (not (= lt!1454788 Nil!43434)) (= lt!1455200 newSuffix!27)))))

(declare-fun b!4067067 () Bool)

(assert (=> b!4067067 (= e!2523968 (Cons!43434 (h!48854 newSuffix!27) (++!11379 (t!336861 newSuffix!27) lt!1454788)))))

(assert (= (and d!1208948 c!702213) b!4067066))

(assert (= (and d!1208948 (not c!702213)) b!4067067))

(assert (= (and d!1208948 res!1660057) b!4067068))

(assert (= (and b!4067068 res!1660058) b!4067069))

(declare-fun m!4675361 () Bool)

(assert (=> d!1208948 m!4675361))

(assert (=> d!1208948 m!4675041))

(assert (=> d!1208948 m!4675101))

(declare-fun m!4675363 () Bool)

(assert (=> b!4067068 m!4675363))

(assert (=> b!4067068 m!4674463))

(assert (=> b!4067068 m!4675105))

(declare-fun m!4675365 () Bool)

(assert (=> b!4067067 m!4675365))

(assert (=> b!4066431 d!1208948))

(declare-fun d!1208950 () Bool)

(declare-fun lt!1455201 () List!43558)

(assert (=> d!1208950 (= (++!11379 newSuffix!27 lt!1455201) suffix!1299)))

(declare-fun e!2523971 () List!43558)

(assert (=> d!1208950 (= lt!1455201 e!2523971)))

(declare-fun c!702214 () Bool)

(assert (=> d!1208950 (= c!702214 (is-Cons!43434 newSuffix!27))))

(assert (=> d!1208950 (>= (size!32474 suffix!1299) (size!32474 newSuffix!27))))

(assert (=> d!1208950 (= (getSuffix!2481 suffix!1299 newSuffix!27) lt!1455201)))

(declare-fun b!4067070 () Bool)

(assert (=> b!4067070 (= e!2523971 (getSuffix!2481 (tail!6312 suffix!1299) (t!336861 newSuffix!27)))))

(declare-fun b!4067071 () Bool)

(assert (=> b!4067071 (= e!2523971 suffix!1299)))

(assert (= (and d!1208950 c!702214) b!4067070))

(assert (= (and d!1208950 (not c!702214)) b!4067071))

(declare-fun m!4675367 () Bool)

(assert (=> d!1208950 m!4675367))

(assert (=> d!1208950 m!4674461))

(assert (=> d!1208950 m!4674463))

(assert (=> b!4067070 m!4674985))

(assert (=> b!4067070 m!4674985))

(declare-fun m!4675369 () Bool)

(assert (=> b!4067070 m!4675369))

(assert (=> b!4066431 d!1208950))

(declare-fun d!1208952 () Bool)

(assert (=> d!1208952 (= (inv!58064 (tag!7837 (rule!10077 token!484))) (= (mod (str.len (value!219479 (tag!7837 (rule!10077 token!484)))) 2) 0))))

(assert (=> b!4066452 d!1208952))

(declare-fun d!1208954 () Bool)

(declare-fun res!1660070 () Bool)

(declare-fun e!2523978 () Bool)

(assert (=> d!1208954 (=> (not res!1660070) (not e!2523978))))

(assert (=> d!1208954 (= res!1660070 (semiInverseModEq!2985 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))))))

(assert (=> d!1208954 (= (inv!58068 (transformation!6977 (rule!10077 token!484))) e!2523978)))

(declare-fun b!4067083 () Bool)

(assert (=> b!4067083 (= e!2523978 (equivClasses!2884 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))))))

(assert (= (and d!1208954 res!1660070) b!4067083))

(assert (=> d!1208954 m!4675189))

(assert (=> b!4067083 m!4675191))

(assert (=> b!4066452 d!1208954))

(declare-fun d!1208960 () Bool)

(declare-fun e!2523979 () Bool)

(assert (=> d!1208960 e!2523979))

(declare-fun res!1660071 () Bool)

(assert (=> d!1208960 (=> (not res!1660071) (not e!2523979))))

(declare-fun lt!1455202 () List!43558)

(assert (=> d!1208960 (= res!1660071 (= (content!6632 lt!1455202) (set.union (content!6632 lt!1454752) (content!6632 lt!1454815))))))

(declare-fun e!2523980 () List!43558)

(assert (=> d!1208960 (= lt!1455202 e!2523980)))

(declare-fun c!702215 () Bool)

(assert (=> d!1208960 (= c!702215 (is-Nil!43434 lt!1454752))))

(assert (=> d!1208960 (= (++!11379 lt!1454752 lt!1454815) lt!1455202)))

(declare-fun b!4067084 () Bool)

(assert (=> b!4067084 (= e!2523980 lt!1454815)))

(declare-fun b!4067086 () Bool)

(declare-fun res!1660072 () Bool)

(assert (=> b!4067086 (=> (not res!1660072) (not e!2523979))))

(assert (=> b!4067086 (= res!1660072 (= (size!32474 lt!1455202) (+ (size!32474 lt!1454752) (size!32474 lt!1454815))))))

(declare-fun b!4067087 () Bool)

(assert (=> b!4067087 (= e!2523979 (or (not (= lt!1454815 Nil!43434)) (= lt!1455202 lt!1454752)))))

(declare-fun b!4067085 () Bool)

(assert (=> b!4067085 (= e!2523980 (Cons!43434 (h!48854 lt!1454752) (++!11379 (t!336861 lt!1454752) lt!1454815)))))

(assert (= (and d!1208960 c!702215) b!4067084))

(assert (= (and d!1208960 (not c!702215)) b!4067085))

(assert (= (and d!1208960 res!1660071) b!4067086))

(assert (= (and b!4067086 res!1660072) b!4067087))

(declare-fun m!4675371 () Bool)

(assert (=> d!1208960 m!4675371))

(assert (=> d!1208960 m!4675019))

(declare-fun m!4675373 () Bool)

(assert (=> d!1208960 m!4675373))

(declare-fun m!4675375 () Bool)

(assert (=> b!4067086 m!4675375))

(assert (=> b!4067086 m!4674385))

(declare-fun m!4675377 () Bool)

(assert (=> b!4067086 m!4675377))

(declare-fun m!4675379 () Bool)

(assert (=> b!4067085 m!4675379))

(assert (=> b!4066454 d!1208960))

(declare-fun d!1208962 () Bool)

(declare-fun lt!1455203 () List!43558)

(assert (=> d!1208962 (= (++!11379 lt!1454752 lt!1455203) lt!1454782)))

(declare-fun e!2523981 () List!43558)

(assert (=> d!1208962 (= lt!1455203 e!2523981)))

(declare-fun c!702216 () Bool)

(assert (=> d!1208962 (= c!702216 (is-Cons!43434 lt!1454752))))

(assert (=> d!1208962 (>= (size!32474 lt!1454782) (size!32474 lt!1454752))))

(assert (=> d!1208962 (= (getSuffix!2481 lt!1454782 lt!1454752) lt!1455203)))

(declare-fun b!4067088 () Bool)

(assert (=> b!4067088 (= e!2523981 (getSuffix!2481 (tail!6312 lt!1454782) (t!336861 lt!1454752)))))

(declare-fun b!4067089 () Bool)

(assert (=> b!4067089 (= e!2523981 lt!1454782)))

(assert (= (and d!1208962 c!702216) b!4067088))

(assert (= (and d!1208962 (not c!702216)) b!4067089))

(declare-fun m!4675381 () Bool)

(assert (=> d!1208962 m!4675381))

(assert (=> d!1208962 m!4674763))

(assert (=> d!1208962 m!4674385))

(assert (=> b!4067088 m!4674767))

(assert (=> b!4067088 m!4674767))

(declare-fun m!4675383 () Bool)

(assert (=> b!4067088 m!4675383))

(assert (=> b!4066454 d!1208962))

(declare-fun b!4067093 () Bool)

(declare-fun e!2523983 () Bool)

(assert (=> b!4067093 (= e!2523983 (>= (size!32474 lt!1454782) (size!32474 lt!1454782)))))

(declare-fun b!4067092 () Bool)

(declare-fun e!2523984 () Bool)

(assert (=> b!4067092 (= e!2523984 (isPrefix!4064 (tail!6312 lt!1454782) (tail!6312 lt!1454782)))))

(declare-fun d!1208964 () Bool)

(assert (=> d!1208964 e!2523983))

(declare-fun res!1660074 () Bool)

(assert (=> d!1208964 (=> res!1660074 e!2523983)))

(declare-fun lt!1455204 () Bool)

(assert (=> d!1208964 (= res!1660074 (not lt!1455204))))

(declare-fun e!2523982 () Bool)

(assert (=> d!1208964 (= lt!1455204 e!2523982)))

(declare-fun res!1660075 () Bool)

(assert (=> d!1208964 (=> res!1660075 e!2523982)))

(assert (=> d!1208964 (= res!1660075 (is-Nil!43434 lt!1454782))))

(assert (=> d!1208964 (= (isPrefix!4064 lt!1454782 lt!1454782) lt!1455204)))

(declare-fun b!4067090 () Bool)

(assert (=> b!4067090 (= e!2523982 e!2523984)))

(declare-fun res!1660076 () Bool)

(assert (=> b!4067090 (=> (not res!1660076) (not e!2523984))))

(assert (=> b!4067090 (= res!1660076 (not (is-Nil!43434 lt!1454782)))))

(declare-fun b!4067091 () Bool)

(declare-fun res!1660073 () Bool)

(assert (=> b!4067091 (=> (not res!1660073) (not e!2523984))))

(assert (=> b!4067091 (= res!1660073 (= (head!8580 lt!1454782) (head!8580 lt!1454782)))))

(assert (= (and d!1208964 (not res!1660075)) b!4067090))

(assert (= (and b!4067090 res!1660076) b!4067091))

(assert (= (and b!4067091 res!1660073) b!4067092))

(assert (= (and d!1208964 (not res!1660074)) b!4067093))

(assert (=> b!4067093 m!4674763))

(assert (=> b!4067093 m!4674763))

(assert (=> b!4067092 m!4674767))

(assert (=> b!4067092 m!4674767))

(assert (=> b!4067092 m!4674767))

(assert (=> b!4067092 m!4674767))

(declare-fun m!4675385 () Bool)

(assert (=> b!4067092 m!4675385))

(assert (=> b!4067091 m!4674773))

(assert (=> b!4067091 m!4674773))

(assert (=> b!4066454 d!1208964))

(declare-fun d!1208966 () Bool)

(assert (=> d!1208966 (isPrefix!4064 lt!1454782 lt!1454782)))

(declare-fun lt!1455210 () Unit!62963)

(declare-fun choose!24782 (List!43558 List!43558) Unit!62963)

(assert (=> d!1208966 (= lt!1455210 (choose!24782 lt!1454782 lt!1454782))))

(assert (=> d!1208966 (= (lemmaIsPrefixRefl!2631 lt!1454782 lt!1454782) lt!1455210)))

(declare-fun bs!592421 () Bool)

(assert (= bs!592421 d!1208966))

(assert (=> bs!592421 m!4674407))

(declare-fun m!4675389 () Bool)

(assert (=> bs!592421 m!4675389))

(assert (=> b!4066454 d!1208966))

(declare-fun d!1208970 () Bool)

(declare-fun res!1660085 () Bool)

(declare-fun e!2523995 () Bool)

(assert (=> d!1208970 (=> (not res!1660085) (not e!2523995))))

(declare-fun rulesValid!2719 (LexerInterface!6566 List!43560) Bool)

(assert (=> d!1208970 (= res!1660085 (rulesValid!2719 thiss!21717 rules!2999))))

(assert (=> d!1208970 (= (rulesInvariant!5909 thiss!21717 rules!2999) e!2523995)))

(declare-fun b!4067108 () Bool)

(declare-datatypes ((List!43564 0))(
  ( (Nil!43440) (Cons!43440 (h!48860 String!49755) (t!336915 List!43564)) )
))
(declare-fun noDuplicateTag!2720 (LexerInterface!6566 List!43560 List!43564) Bool)

(assert (=> b!4067108 (= e!2523995 (noDuplicateTag!2720 thiss!21717 rules!2999 Nil!43440))))

(assert (= (and d!1208970 res!1660085) b!4067108))

(declare-fun m!4675403 () Bool)

(assert (=> d!1208970 m!4675403))

(declare-fun m!4675405 () Bool)

(assert (=> b!4067108 m!4675405))

(assert (=> b!4066432 d!1208970))

(declare-fun d!1208978 () Bool)

(declare-fun e!2523996 () Bool)

(assert (=> d!1208978 e!2523996))

(declare-fun res!1660086 () Bool)

(assert (=> d!1208978 (=> (not res!1660086) (not e!2523996))))

(declare-fun lt!1455217 () List!43558)

(assert (=> d!1208978 (= res!1660086 (= (content!6632 lt!1455217) (set.union (content!6632 lt!1454784) (content!6632 lt!1454758))))))

(declare-fun e!2523997 () List!43558)

(assert (=> d!1208978 (= lt!1455217 e!2523997)))

(declare-fun c!702221 () Bool)

(assert (=> d!1208978 (= c!702221 (is-Nil!43434 lt!1454784))))

(assert (=> d!1208978 (= (++!11379 lt!1454784 lt!1454758) lt!1455217)))

(declare-fun b!4067111 () Bool)

(assert (=> b!4067111 (= e!2523997 lt!1454758)))

(declare-fun b!4067113 () Bool)

(declare-fun res!1660087 () Bool)

(assert (=> b!4067113 (=> (not res!1660087) (not e!2523996))))

(assert (=> b!4067113 (= res!1660087 (= (size!32474 lt!1455217) (+ (size!32474 lt!1454784) (size!32474 lt!1454758))))))

(declare-fun b!4067114 () Bool)

(assert (=> b!4067114 (= e!2523996 (or (not (= lt!1454758 Nil!43434)) (= lt!1455217 lt!1454784)))))

(declare-fun b!4067112 () Bool)

(assert (=> b!4067112 (= e!2523997 (Cons!43434 (h!48854 lt!1454784) (++!11379 (t!336861 lt!1454784) lt!1454758)))))

(assert (= (and d!1208978 c!702221) b!4067111))

(assert (= (and d!1208978 (not c!702221)) b!4067112))

(assert (= (and d!1208978 res!1660086) b!4067113))

(assert (= (and b!4067113 res!1660087) b!4067114))

(declare-fun m!4675419 () Bool)

(assert (=> d!1208978 m!4675419))

(assert (=> d!1208978 m!4674913))

(declare-fun m!4675421 () Bool)

(assert (=> d!1208978 m!4675421))

(declare-fun m!4675423 () Bool)

(assert (=> b!4067113 m!4675423))

(assert (=> b!4067113 m!4674351))

(declare-fun m!4675425 () Bool)

(assert (=> b!4067113 m!4675425))

(declare-fun m!4675427 () Bool)

(assert (=> b!4067112 m!4675427))

(assert (=> b!4066465 d!1208978))

(declare-fun d!1208982 () Bool)

(declare-fun lt!1455218 () List!43558)

(assert (=> d!1208982 (= (++!11379 lt!1454784 lt!1455218) lt!1454774)))

(declare-fun e!2523998 () List!43558)

(assert (=> d!1208982 (= lt!1455218 e!2523998)))

(declare-fun c!702222 () Bool)

(assert (=> d!1208982 (= c!702222 (is-Cons!43434 lt!1454784))))

(assert (=> d!1208982 (>= (size!32474 lt!1454774) (size!32474 lt!1454784))))

(assert (=> d!1208982 (= (getSuffix!2481 lt!1454774 lt!1454784) lt!1455218)))

(declare-fun b!4067115 () Bool)

(assert (=> b!4067115 (= e!2523998 (getSuffix!2481 (tail!6312 lt!1454774) (t!336861 lt!1454784)))))

(declare-fun b!4067116 () Bool)

(assert (=> b!4067116 (= e!2523998 lt!1454774)))

(assert (= (and d!1208982 c!702222) b!4067115))

(assert (= (and d!1208982 (not c!702222)) b!4067116))

(declare-fun m!4675429 () Bool)

(assert (=> d!1208982 m!4675429))

(assert (=> d!1208982 m!4674735))

(assert (=> d!1208982 m!4674351))

(assert (=> b!4067115 m!4674737))

(assert (=> b!4067115 m!4674737))

(declare-fun m!4675431 () Bool)

(assert (=> b!4067115 m!4675431))

(assert (=> b!4066465 d!1208982))

(declare-fun d!1208984 () Bool)

(declare-fun lt!1455219 () Int)

(assert (=> d!1208984 (>= lt!1455219 0)))

(declare-fun e!2523999 () Int)

(assert (=> d!1208984 (= lt!1455219 e!2523999)))

(declare-fun c!702223 () Bool)

(assert (=> d!1208984 (= c!702223 (is-Nil!43434 (originalCharacters!7577 token!484)))))

(assert (=> d!1208984 (= (size!32474 (originalCharacters!7577 token!484)) lt!1455219)))

(declare-fun b!4067117 () Bool)

(assert (=> b!4067117 (= e!2523999 0)))

(declare-fun b!4067118 () Bool)

(assert (=> b!4067118 (= e!2523999 (+ 1 (size!32474 (t!336861 (originalCharacters!7577 token!484)))))))

(assert (= (and d!1208984 c!702223) b!4067117))

(assert (= (and d!1208984 (not c!702223)) b!4067118))

(declare-fun m!4675433 () Bool)

(assert (=> b!4067118 m!4675433))

(assert (=> b!4066444 d!1208984))

(declare-fun b!4067119 () Bool)

(declare-fun res!1660093 () Bool)

(declare-fun e!2524002 () Bool)

(assert (=> b!4067119 (=> (not res!1660093) (not e!2524002))))

(declare-fun lt!1455220 () Option!9391)

(assert (=> b!4067119 (= res!1660093 (= (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455220)))) (originalCharacters!7577 (_1!24378 (get!14244 lt!1455220)))))))

(declare-fun b!4067121 () Bool)

(declare-fun res!1660094 () Bool)

(assert (=> b!4067121 (=> (not res!1660094) (not e!2524002))))

(assert (=> b!4067121 (= res!1660094 (= (++!11379 (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455220)))) (_2!24378 (get!14244 lt!1455220))) lt!1454782))))

(declare-fun b!4067122 () Bool)

(declare-fun e!2524000 () Option!9391)

(declare-fun call!288308 () Option!9391)

(assert (=> b!4067122 (= e!2524000 call!288308)))

(declare-fun b!4067123 () Bool)

(declare-fun res!1660089 () Bool)

(assert (=> b!4067123 (=> (not res!1660089) (not e!2524002))))

(assert (=> b!4067123 (= res!1660089 (= (value!219480 (_1!24378 (get!14244 lt!1455220))) (apply!10166 (transformation!6977 (rule!10077 (_1!24378 (get!14244 lt!1455220)))) (seqFromList!5194 (originalCharacters!7577 (_1!24378 (get!14244 lt!1455220)))))))))

(declare-fun b!4067124 () Bool)

(declare-fun res!1660090 () Bool)

(assert (=> b!4067124 (=> (not res!1660090) (not e!2524002))))

(assert (=> b!4067124 (= res!1660090 (< (size!32474 (_2!24378 (get!14244 lt!1455220))) (size!32474 lt!1454782)))))

(declare-fun b!4067125 () Bool)

(declare-fun res!1660092 () Bool)

(assert (=> b!4067125 (=> (not res!1660092) (not e!2524002))))

(assert (=> b!4067125 (= res!1660092 (matchR!5835 (regex!6977 (rule!10077 (_1!24378 (get!14244 lt!1455220)))) (list!16193 (charsOf!4793 (_1!24378 (get!14244 lt!1455220))))))))

(declare-fun b!4067126 () Bool)

(declare-fun e!2524001 () Bool)

(assert (=> b!4067126 (= e!2524001 e!2524002)))

(declare-fun res!1660088 () Bool)

(assert (=> b!4067126 (=> (not res!1660088) (not e!2524002))))

(assert (=> b!4067126 (= res!1660088 (isDefined!7132 lt!1455220))))

(declare-fun bm!288303 () Bool)

(assert (=> bm!288303 (= call!288308 (maxPrefixOneRule!2876 thiss!21717 (h!48856 rules!2999) lt!1454782))))

(declare-fun b!4067127 () Bool)

(declare-fun lt!1455223 () Option!9391)

(declare-fun lt!1455224 () Option!9391)

(assert (=> b!4067127 (= e!2524000 (ite (and (is-None!9390 lt!1455223) (is-None!9390 lt!1455224)) None!9390 (ite (is-None!9390 lt!1455224) lt!1455223 (ite (is-None!9390 lt!1455223) lt!1455224 (ite (>= (size!32473 (_1!24378 (v!39818 lt!1455223))) (size!32473 (_1!24378 (v!39818 lt!1455224)))) lt!1455223 lt!1455224)))))))

(assert (=> b!4067127 (= lt!1455223 call!288308)))

(assert (=> b!4067127 (= lt!1455224 (maxPrefix!3864 thiss!21717 (t!336863 rules!2999) lt!1454782))))

(declare-fun d!1208986 () Bool)

(assert (=> d!1208986 e!2524001))

(declare-fun res!1660091 () Bool)

(assert (=> d!1208986 (=> res!1660091 e!2524001)))

(assert (=> d!1208986 (= res!1660091 (isEmpty!25925 lt!1455220))))

(assert (=> d!1208986 (= lt!1455220 e!2524000)))

(declare-fun c!702224 () Bool)

(assert (=> d!1208986 (= c!702224 (and (is-Cons!43436 rules!2999) (is-Nil!43436 (t!336863 rules!2999))))))

(declare-fun lt!1455222 () Unit!62963)

(declare-fun lt!1455221 () Unit!62963)

(assert (=> d!1208986 (= lt!1455222 lt!1455221)))

(assert (=> d!1208986 (isPrefix!4064 lt!1454782 lt!1454782)))

(assert (=> d!1208986 (= lt!1455221 (lemmaIsPrefixRefl!2631 lt!1454782 lt!1454782))))

(assert (=> d!1208986 (rulesValidInductive!2553 thiss!21717 rules!2999)))

(assert (=> d!1208986 (= (maxPrefix!3864 thiss!21717 rules!2999 lt!1454782) lt!1455220)))

(declare-fun b!4067120 () Bool)

(assert (=> b!4067120 (= e!2524002 (contains!8643 rules!2999 (rule!10077 (_1!24378 (get!14244 lt!1455220)))))))

(assert (= (and d!1208986 c!702224) b!4067122))

(assert (= (and d!1208986 (not c!702224)) b!4067127))

(assert (= (or b!4067122 b!4067127) bm!288303))

(assert (= (and d!1208986 (not res!1660091)) b!4067126))

(assert (= (and b!4067126 res!1660088) b!4067119))

(assert (= (and b!4067119 res!1660093) b!4067124))

(assert (= (and b!4067124 res!1660090) b!4067121))

(assert (= (and b!4067121 res!1660094) b!4067123))

(assert (= (and b!4067123 res!1660089) b!4067125))

(assert (= (and b!4067125 res!1660092) b!4067120))

(declare-fun m!4675443 () Bool)

(assert (=> bm!288303 m!4675443))

(declare-fun m!4675445 () Bool)

(assert (=> d!1208986 m!4675445))

(assert (=> d!1208986 m!4674407))

(assert (=> d!1208986 m!4674409))

(assert (=> d!1208986 m!4675311))

(declare-fun m!4675447 () Bool)

(assert (=> b!4067127 m!4675447))

(declare-fun m!4675449 () Bool)

(assert (=> b!4067119 m!4675449))

(declare-fun m!4675451 () Bool)

(assert (=> b!4067119 m!4675451))

(assert (=> b!4067119 m!4675451))

(declare-fun m!4675453 () Bool)

(assert (=> b!4067119 m!4675453))

(assert (=> b!4067124 m!4675449))

(declare-fun m!4675455 () Bool)

(assert (=> b!4067124 m!4675455))

(assert (=> b!4067124 m!4674763))

(assert (=> b!4067120 m!4675449))

(declare-fun m!4675457 () Bool)

(assert (=> b!4067120 m!4675457))

(declare-fun m!4675459 () Bool)

(assert (=> b!4067126 m!4675459))

(assert (=> b!4067121 m!4675449))

(assert (=> b!4067121 m!4675451))

(assert (=> b!4067121 m!4675451))

(assert (=> b!4067121 m!4675453))

(assert (=> b!4067121 m!4675453))

(declare-fun m!4675461 () Bool)

(assert (=> b!4067121 m!4675461))

(assert (=> b!4067125 m!4675449))

(assert (=> b!4067125 m!4675451))

(assert (=> b!4067125 m!4675451))

(assert (=> b!4067125 m!4675453))

(assert (=> b!4067125 m!4675453))

(declare-fun m!4675463 () Bool)

(assert (=> b!4067125 m!4675463))

(assert (=> b!4067123 m!4675449))

(declare-fun m!4675465 () Bool)

(assert (=> b!4067123 m!4675465))

(assert (=> b!4067123 m!4675465))

(declare-fun m!4675467 () Bool)

(assert (=> b!4067123 m!4675467))

(assert (=> b!4066446 d!1208986))

(declare-fun d!1208992 () Bool)

(declare-fun e!2524006 () Bool)

(assert (=> d!1208992 e!2524006))

(declare-fun res!1660099 () Bool)

(assert (=> d!1208992 (=> (not res!1660099) (not e!2524006))))

(declare-fun lt!1455226 () List!43558)

(assert (=> d!1208992 (= res!1660099 (= (content!6632 lt!1455226) (set.union (content!6632 prefix!494) (content!6632 suffix!1299))))))

(declare-fun e!2524007 () List!43558)

(assert (=> d!1208992 (= lt!1455226 e!2524007)))

(declare-fun c!702225 () Bool)

(assert (=> d!1208992 (= c!702225 (is-Nil!43434 prefix!494))))

(assert (=> d!1208992 (= (++!11379 prefix!494 suffix!1299) lt!1455226)))

(declare-fun b!4067132 () Bool)

(assert (=> b!4067132 (= e!2524007 suffix!1299)))

(declare-fun b!4067134 () Bool)

(declare-fun res!1660100 () Bool)

(assert (=> b!4067134 (=> (not res!1660100) (not e!2524006))))

(assert (=> b!4067134 (= res!1660100 (= (size!32474 lt!1455226) (+ (size!32474 prefix!494) (size!32474 suffix!1299))))))

(declare-fun b!4067135 () Bool)

(assert (=> b!4067135 (= e!2524006 (or (not (= suffix!1299 Nil!43434)) (= lt!1455226 prefix!494)))))

(declare-fun b!4067133 () Bool)

(assert (=> b!4067133 (= e!2524007 (Cons!43434 (h!48854 prefix!494) (++!11379 (t!336861 prefix!494) suffix!1299)))))

(assert (= (and d!1208992 c!702225) b!4067132))

(assert (= (and d!1208992 (not c!702225)) b!4067133))

(assert (= (and d!1208992 res!1660099) b!4067134))

(assert (= (and b!4067134 res!1660100) b!4067135))

(declare-fun m!4675469 () Bool)

(assert (=> d!1208992 m!4675469))

(assert (=> d!1208992 m!4675039))

(assert (=> d!1208992 m!4675067))

(declare-fun m!4675471 () Bool)

(assert (=> b!4067134 m!4675471))

(assert (=> b!4067134 m!4674387))

(assert (=> b!4067134 m!4674461))

(declare-fun m!4675473 () Bool)

(assert (=> b!4067133 m!4675473))

(assert (=> b!4066446 d!1208992))

(declare-fun b!4067146 () Bool)

(declare-fun e!2524015 () Bool)

(declare-fun e!2524014 () Bool)

(assert (=> b!4067146 (= e!2524015 e!2524014)))

(declare-fun c!702231 () Bool)

(assert (=> b!4067146 (= c!702231 (is-IntegerValue!21622 (value!219480 token!484)))))

(declare-fun b!4067147 () Bool)

(declare-fun inv!17 (TokenValue!7207) Bool)

(assert (=> b!4067147 (= e!2524014 (inv!17 (value!219480 token!484)))))

(declare-fun b!4067148 () Bool)

(declare-fun e!2524016 () Bool)

(declare-fun inv!15 (TokenValue!7207) Bool)

(assert (=> b!4067148 (= e!2524016 (inv!15 (value!219480 token!484)))))

(declare-fun d!1208994 () Bool)

(declare-fun c!702230 () Bool)

(assert (=> d!1208994 (= c!702230 (is-IntegerValue!21621 (value!219480 token!484)))))

(assert (=> d!1208994 (= (inv!21 (value!219480 token!484)) e!2524015)))

(declare-fun b!4067149 () Bool)

(declare-fun res!1660103 () Bool)

(assert (=> b!4067149 (=> res!1660103 e!2524016)))

(assert (=> b!4067149 (= res!1660103 (not (is-IntegerValue!21623 (value!219480 token!484))))))

(assert (=> b!4067149 (= e!2524014 e!2524016)))

(declare-fun b!4067150 () Bool)

(declare-fun inv!16 (TokenValue!7207) Bool)

(assert (=> b!4067150 (= e!2524015 (inv!16 (value!219480 token!484)))))

(assert (= (and d!1208994 c!702230) b!4067150))

(assert (= (and d!1208994 (not c!702230)) b!4067146))

(assert (= (and b!4067146 c!702231) b!4067147))

(assert (= (and b!4067146 (not c!702231)) b!4067149))

(assert (= (and b!4067149 (not res!1660103)) b!4067148))

(declare-fun m!4675475 () Bool)

(assert (=> b!4067147 m!4675475))

(declare-fun m!4675477 () Bool)

(assert (=> b!4067148 m!4675477))

(declare-fun m!4675479 () Bool)

(assert (=> b!4067150 m!4675479))

(assert (=> b!4066424 d!1208994))

(declare-fun d!1208996 () Bool)

(declare-fun lt!1455227 () Bool)

(assert (=> d!1208996 (= lt!1455227 (set.member (rule!10077 token!484) (content!6633 rules!2999)))))

(declare-fun e!2524017 () Bool)

(assert (=> d!1208996 (= lt!1455227 e!2524017)))

(declare-fun res!1660105 () Bool)

(assert (=> d!1208996 (=> (not res!1660105) (not e!2524017))))

(assert (=> d!1208996 (= res!1660105 (is-Cons!43436 rules!2999))))

(assert (=> d!1208996 (= (contains!8643 rules!2999 (rule!10077 token!484)) lt!1455227)))

(declare-fun b!4067151 () Bool)

(declare-fun e!2524018 () Bool)

(assert (=> b!4067151 (= e!2524017 e!2524018)))

(declare-fun res!1660104 () Bool)

(assert (=> b!4067151 (=> res!1660104 e!2524018)))

(assert (=> b!4067151 (= res!1660104 (= (h!48856 rules!2999) (rule!10077 token!484)))))

(declare-fun b!4067152 () Bool)

(assert (=> b!4067152 (= e!2524018 (contains!8643 (t!336863 rules!2999) (rule!10077 token!484)))))

(assert (= (and d!1208996 res!1660105) b!4067151))

(assert (= (and b!4067151 (not res!1660104)) b!4067152))

(assert (=> d!1208996 m!4675003))

(declare-fun m!4675481 () Bool)

(assert (=> d!1208996 m!4675481))

(declare-fun m!4675483 () Bool)

(assert (=> b!4067152 m!4675483))

(assert (=> b!4066447 d!1208996))

(declare-fun b!4067153 () Bool)

(declare-fun e!2524024 () Bool)

(declare-fun lt!1455228 () Bool)

(declare-fun call!288309 () Bool)

(assert (=> b!4067153 (= e!2524024 (= lt!1455228 call!288309))))

(declare-fun b!4067154 () Bool)

(declare-fun res!1660109 () Bool)

(declare-fun e!2524020 () Bool)

(assert (=> b!4067154 (=> (not res!1660109) (not e!2524020))))

(assert (=> b!4067154 (= res!1660109 (not call!288309))))

(declare-fun b!4067155 () Bool)

(declare-fun res!1660108 () Bool)

(declare-fun e!2524023 () Bool)

(assert (=> b!4067155 (=> res!1660108 e!2524023)))

(assert (=> b!4067155 (= res!1660108 (not (isEmpty!25924 (tail!6312 lt!1454752))))))

(declare-fun b!4067156 () Bool)

(assert (=> b!4067156 (= e!2524020 (= (head!8580 lt!1454752) (c!702124 (regex!6977 (rule!10077 token!484)))))))

(declare-fun b!4067157 () Bool)

(declare-fun res!1660107 () Bool)

(assert (=> b!4067157 (=> (not res!1660107) (not e!2524020))))

(assert (=> b!4067157 (= res!1660107 (isEmpty!25924 (tail!6312 lt!1454752)))))

(declare-fun b!4067158 () Bool)

(declare-fun e!2524019 () Bool)

(assert (=> b!4067158 (= e!2524019 (nullable!4177 (regex!6977 (rule!10077 token!484))))))

(declare-fun b!4067159 () Bool)

(declare-fun e!2524021 () Bool)

(assert (=> b!4067159 (= e!2524021 e!2524023)))

(declare-fun res!1660110 () Bool)

(assert (=> b!4067159 (=> res!1660110 e!2524023)))

(assert (=> b!4067159 (= res!1660110 call!288309)))

(declare-fun b!4067160 () Bool)

(declare-fun res!1660113 () Bool)

(declare-fun e!2524025 () Bool)

(assert (=> b!4067160 (=> res!1660113 e!2524025)))

(assert (=> b!4067160 (= res!1660113 e!2524020)))

(declare-fun res!1660106 () Bool)

(assert (=> b!4067160 (=> (not res!1660106) (not e!2524020))))

(assert (=> b!4067160 (= res!1660106 lt!1455228)))

(declare-fun b!4067161 () Bool)

(declare-fun res!1660112 () Bool)

(assert (=> b!4067161 (=> res!1660112 e!2524025)))

(assert (=> b!4067161 (= res!1660112 (not (is-ElementMatch!11882 (regex!6977 (rule!10077 token!484)))))))

(declare-fun e!2524022 () Bool)

(assert (=> b!4067161 (= e!2524022 e!2524025)))

(declare-fun bm!288304 () Bool)

(assert (=> bm!288304 (= call!288309 (isEmpty!25924 lt!1454752))))

(declare-fun d!1208998 () Bool)

(assert (=> d!1208998 e!2524024))

(declare-fun c!702232 () Bool)

(assert (=> d!1208998 (= c!702232 (is-EmptyExpr!11882 (regex!6977 (rule!10077 token!484))))))

(assert (=> d!1208998 (= lt!1455228 e!2524019)))

(declare-fun c!702234 () Bool)

(assert (=> d!1208998 (= c!702234 (isEmpty!25924 lt!1454752))))

(assert (=> d!1208998 (validRegex!5377 (regex!6977 (rule!10077 token!484)))))

(assert (=> d!1208998 (= (matchR!5835 (regex!6977 (rule!10077 token!484)) lt!1454752) lt!1455228)))

(declare-fun b!4067162 () Bool)

(assert (=> b!4067162 (= e!2524024 e!2524022)))

(declare-fun c!702233 () Bool)

(assert (=> b!4067162 (= c!702233 (is-EmptyLang!11882 (regex!6977 (rule!10077 token!484))))))

(declare-fun b!4067163 () Bool)

(assert (=> b!4067163 (= e!2524023 (not (= (head!8580 lt!1454752) (c!702124 (regex!6977 (rule!10077 token!484))))))))

(declare-fun b!4067164 () Bool)

(assert (=> b!4067164 (= e!2524022 (not lt!1455228))))

(declare-fun b!4067165 () Bool)

(assert (=> b!4067165 (= e!2524025 e!2524021)))

(declare-fun res!1660111 () Bool)

(assert (=> b!4067165 (=> (not res!1660111) (not e!2524021))))

(assert (=> b!4067165 (= res!1660111 (not lt!1455228))))

(declare-fun b!4067166 () Bool)

(assert (=> b!4067166 (= e!2524019 (matchR!5835 (derivativeStep!3582 (regex!6977 (rule!10077 token!484)) (head!8580 lt!1454752)) (tail!6312 lt!1454752)))))

(assert (= (and d!1208998 c!702234) b!4067158))

(assert (= (and d!1208998 (not c!702234)) b!4067166))

(assert (= (and d!1208998 c!702232) b!4067153))

(assert (= (and d!1208998 (not c!702232)) b!4067162))

(assert (= (and b!4067162 c!702233) b!4067164))

(assert (= (and b!4067162 (not c!702233)) b!4067161))

(assert (= (and b!4067161 (not res!1660112)) b!4067160))

(assert (= (and b!4067160 res!1660106) b!4067154))

(assert (= (and b!4067154 res!1660109) b!4067157))

(assert (= (and b!4067157 res!1660107) b!4067156))

(assert (= (and b!4067160 (not res!1660113)) b!4067165))

(assert (= (and b!4067165 res!1660111) b!4067159))

(assert (= (and b!4067159 (not res!1660110)) b!4067155))

(assert (= (and b!4067155 (not res!1660108)) b!4067163))

(assert (= (or b!4067153 b!4067154 b!4067159) bm!288304))

(assert (=> d!1208998 m!4674975))

(assert (=> d!1208998 m!4674797))

(assert (=> b!4067155 m!4674745))

(assert (=> b!4067155 m!4674745))

(assert (=> b!4067155 m!4674977))

(assert (=> b!4067157 m!4674745))

(assert (=> b!4067157 m!4674745))

(assert (=> b!4067157 m!4674977))

(assert (=> bm!288304 m!4674975))

(assert (=> b!4067163 m!4674751))

(assert (=> b!4067156 m!4674751))

(assert (=> b!4067158 m!4674799))

(assert (=> b!4067166 m!4674751))

(assert (=> b!4067166 m!4674751))

(declare-fun m!4675485 () Bool)

(assert (=> b!4067166 m!4675485))

(assert (=> b!4067166 m!4674745))

(assert (=> b!4067166 m!4675485))

(assert (=> b!4067166 m!4674745))

(declare-fun m!4675487 () Bool)

(assert (=> b!4067166 m!4675487))

(assert (=> b!4066425 d!1208998))

(declare-fun b!4067170 () Bool)

(declare-fun e!2524027 () Bool)

(assert (=> b!4067170 (= e!2524027 (>= (size!32474 lt!1454774) (size!32474 lt!1454752)))))

(declare-fun b!4067169 () Bool)

(declare-fun e!2524028 () Bool)

(assert (=> b!4067169 (= e!2524028 (isPrefix!4064 (tail!6312 lt!1454752) (tail!6312 lt!1454774)))))

(declare-fun d!1209000 () Bool)

(assert (=> d!1209000 e!2524027))

(declare-fun res!1660115 () Bool)

(assert (=> d!1209000 (=> res!1660115 e!2524027)))

(declare-fun lt!1455229 () Bool)

(assert (=> d!1209000 (= res!1660115 (not lt!1455229))))

(declare-fun e!2524026 () Bool)

(assert (=> d!1209000 (= lt!1455229 e!2524026)))

(declare-fun res!1660116 () Bool)

(assert (=> d!1209000 (=> res!1660116 e!2524026)))

(assert (=> d!1209000 (= res!1660116 (is-Nil!43434 lt!1454752))))

(assert (=> d!1209000 (= (isPrefix!4064 lt!1454752 lt!1454774) lt!1455229)))

(declare-fun b!4067167 () Bool)

(assert (=> b!4067167 (= e!2524026 e!2524028)))

(declare-fun res!1660117 () Bool)

(assert (=> b!4067167 (=> (not res!1660117) (not e!2524028))))

(assert (=> b!4067167 (= res!1660117 (not (is-Nil!43434 lt!1454774)))))

(declare-fun b!4067168 () Bool)

(declare-fun res!1660114 () Bool)

(assert (=> b!4067168 (=> (not res!1660114) (not e!2524028))))

(assert (=> b!4067168 (= res!1660114 (= (head!8580 lt!1454752) (head!8580 lt!1454774)))))

(assert (= (and d!1209000 (not res!1660116)) b!4067167))

(assert (= (and b!4067167 res!1660117) b!4067168))

(assert (= (and b!4067168 res!1660114) b!4067169))

(assert (= (and d!1209000 (not res!1660115)) b!4067170))

(assert (=> b!4067170 m!4674735))

(assert (=> b!4067170 m!4674385))

(assert (=> b!4067169 m!4674745))

(assert (=> b!4067169 m!4674737))

(assert (=> b!4067169 m!4674745))

(assert (=> b!4067169 m!4674737))

(declare-fun m!4675489 () Bool)

(assert (=> b!4067169 m!4675489))

(assert (=> b!4067168 m!4674751))

(assert (=> b!4067168 m!4674741))

(assert (=> b!4066425 d!1209000))

(declare-fun d!1209002 () Bool)

(assert (=> d!1209002 (isPrefix!4064 lt!1454752 (++!11379 prefix!494 newSuffix!27))))

(declare-fun lt!1455230 () Unit!62963)

(assert (=> d!1209002 (= lt!1455230 (choose!24767 lt!1454752 prefix!494 newSuffix!27))))

(assert (=> d!1209002 (isPrefix!4064 lt!1454752 prefix!494)))

(assert (=> d!1209002 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!857 lt!1454752 prefix!494 newSuffix!27) lt!1455230)))

(declare-fun bs!592424 () Bool)

(assert (= bs!592424 d!1209002))

(assert (=> bs!592424 m!4674453))

(assert (=> bs!592424 m!4674453))

(declare-fun m!4675491 () Bool)

(assert (=> bs!592424 m!4675491))

(declare-fun m!4675493 () Bool)

(assert (=> bs!592424 m!4675493))

(assert (=> bs!592424 m!4674345))

(assert (=> b!4066425 d!1209002))

(declare-fun d!1209004 () Bool)

(assert (=> d!1209004 (isPrefix!4064 lt!1454752 (++!11379 prefix!494 suffix!1299))))

(declare-fun lt!1455231 () Unit!62963)

(assert (=> d!1209004 (= lt!1455231 (choose!24767 lt!1454752 prefix!494 suffix!1299))))

(assert (=> d!1209004 (isPrefix!4064 lt!1454752 prefix!494)))

(assert (=> d!1209004 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!857 lt!1454752 prefix!494 suffix!1299) lt!1455231)))

(declare-fun bs!592425 () Bool)

(assert (= bs!592425 d!1209004))

(assert (=> bs!592425 m!4674395))

(assert (=> bs!592425 m!4674395))

(declare-fun m!4675495 () Bool)

(assert (=> bs!592425 m!4675495))

(declare-fun m!4675497 () Bool)

(assert (=> bs!592425 m!4675497))

(assert (=> bs!592425 m!4674345))

(assert (=> b!4066425 d!1209004))

(declare-fun d!1209006 () Bool)

(assert (=> d!1209006 (= (inv!58064 (tag!7837 (h!48856 rules!2999))) (= (mod (str.len (value!219479 (tag!7837 (h!48856 rules!2999)))) 2) 0))))

(assert (=> b!4066427 d!1209006))

(declare-fun d!1209008 () Bool)

(declare-fun res!1660118 () Bool)

(declare-fun e!2524029 () Bool)

(assert (=> d!1209008 (=> (not res!1660118) (not e!2524029))))

(assert (=> d!1209008 (= res!1660118 (semiInverseModEq!2985 (toChars!9396 (transformation!6977 (h!48856 rules!2999))) (toValue!9537 (transformation!6977 (h!48856 rules!2999)))))))

(assert (=> d!1209008 (= (inv!58068 (transformation!6977 (h!48856 rules!2999))) e!2524029)))

(declare-fun b!4067171 () Bool)

(assert (=> b!4067171 (= e!2524029 (equivClasses!2884 (toChars!9396 (transformation!6977 (h!48856 rules!2999))) (toValue!9537 (transformation!6977 (h!48856 rules!2999)))))))

(assert (= (and d!1209008 res!1660118) b!4067171))

(declare-fun m!4675499 () Bool)

(assert (=> d!1209008 m!4675499))

(declare-fun m!4675501 () Bool)

(assert (=> b!4067171 m!4675501))

(assert (=> b!4066427 d!1209008))

(declare-fun d!1209010 () Bool)

(declare-fun lt!1455232 () Int)

(assert (=> d!1209010 (>= lt!1455232 0)))

(declare-fun e!2524030 () Int)

(assert (=> d!1209010 (= lt!1455232 e!2524030)))

(declare-fun c!702235 () Bool)

(assert (=> d!1209010 (= c!702235 (is-Nil!43434 lt!1454752))))

(assert (=> d!1209010 (= (size!32474 lt!1454752) lt!1455232)))

(declare-fun b!4067172 () Bool)

(assert (=> b!4067172 (= e!2524030 0)))

(declare-fun b!4067173 () Bool)

(assert (=> b!4067173 (= e!2524030 (+ 1 (size!32474 (t!336861 lt!1454752))))))

(assert (= (and d!1209010 c!702235) b!4067172))

(assert (= (and d!1209010 (not c!702235)) b!4067173))

(declare-fun m!4675503 () Bool)

(assert (=> b!4067173 m!4675503))

(assert (=> b!4066448 d!1209010))

(declare-fun d!1209012 () Bool)

(declare-fun lt!1455233 () Int)

(assert (=> d!1209012 (>= lt!1455233 0)))

(declare-fun e!2524031 () Int)

(assert (=> d!1209012 (= lt!1455233 e!2524031)))

(declare-fun c!702236 () Bool)

(assert (=> d!1209012 (= c!702236 (is-Nil!43434 prefix!494))))

(assert (=> d!1209012 (= (size!32474 prefix!494) lt!1455233)))

(declare-fun b!4067174 () Bool)

(assert (=> b!4067174 (= e!2524031 0)))

(declare-fun b!4067175 () Bool)

(assert (=> b!4067175 (= e!2524031 (+ 1 (size!32474 (t!336861 prefix!494))))))

(assert (= (and d!1209012 c!702236) b!4067174))

(assert (= (and d!1209012 (not c!702236)) b!4067175))

(declare-fun m!4675505 () Bool)

(assert (=> b!4067175 m!4675505))

(assert (=> b!4066448 d!1209012))

(declare-fun d!1209014 () Bool)

(assert (=> d!1209014 (= (list!16193 (charsOf!4793 token!484)) (list!16195 (c!702123 (charsOf!4793 token!484))))))

(declare-fun bs!592426 () Bool)

(assert (= bs!592426 d!1209014))

(declare-fun m!4675507 () Bool)

(assert (=> bs!592426 m!4675507))

(assert (=> b!4066448 d!1209014))

(declare-fun d!1209016 () Bool)

(declare-fun lt!1455234 () BalanceConc!25970)

(assert (=> d!1209016 (= (list!16193 lt!1455234) (originalCharacters!7577 token!484))))

(assert (=> d!1209016 (= lt!1455234 (dynLambda!18452 (toChars!9396 (transformation!6977 (rule!10077 token!484))) (value!219480 token!484)))))

(assert (=> d!1209016 (= (charsOf!4793 token!484) lt!1455234)))

(declare-fun b_lambda!118815 () Bool)

(assert (=> (not b_lambda!118815) (not d!1209016)))

(assert (=> d!1209016 t!336876))

(declare-fun b_and!312587 () Bool)

(assert (= b_and!312579 (and (=> t!336876 result!296338) b_and!312587)))

(assert (=> d!1209016 t!336878))

(declare-fun b_and!312589 () Bool)

(assert (= b_and!312581 (and (=> t!336878 result!296340) b_and!312589)))

(declare-fun m!4675509 () Bool)

(assert (=> d!1209016 m!4675509))

(assert (=> d!1209016 m!4674999))

(assert (=> b!4066448 d!1209016))

(declare-fun b!4067186 () Bool)

(declare-fun b_free!113129 () Bool)

(declare-fun b_next!113833 () Bool)

(assert (=> b!4067186 (= b_free!113129 (not b_next!113833))))

(declare-fun t!336884 () Bool)

(declare-fun tb!244545 () Bool)

(assert (=> (and b!4067186 (= (toValue!9537 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toValue!9537 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))) t!336884) tb!244545))

(declare-fun result!296348 () Bool)

(assert (= result!296348 result!296326))

(assert (=> d!1208784 t!336884))

(declare-fun t!336886 () Bool)

(declare-fun tb!244547 () Bool)

(assert (=> (and b!4067186 (= (toValue!9537 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toValue!9537 (transformation!6977 (rule!10077 token!484)))) t!336886) tb!244547))

(declare-fun result!296350 () Bool)

(assert (= result!296350 result!296342))

(assert (=> d!1208890 t!336886))

(declare-fun tp!1231063 () Bool)

(declare-fun b_and!312591 () Bool)

(assert (=> b!4067186 (= tp!1231063 (and (=> t!336884 result!296348) (=> t!336886 result!296350) b_and!312591))))

(declare-fun b_free!113131 () Bool)

(declare-fun b_next!113835 () Bool)

(assert (=> b!4067186 (= b_free!113131 (not b_next!113835))))

(declare-fun t!336888 () Bool)

(declare-fun tb!244549 () Bool)

(assert (=> (and b!4067186 (= (toChars!9396 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toChars!9396 (transformation!6977 (rule!10077 (_1!24378 (v!39818 lt!1454783)))))) t!336888) tb!244549))

(declare-fun result!296352 () Bool)

(assert (= result!296352 result!296332))

(assert (=> d!1208834 t!336888))

(declare-fun tb!244551 () Bool)

(declare-fun t!336890 () Bool)

(assert (=> (and b!4067186 (= (toChars!9396 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toChars!9396 (transformation!6977 (rule!10077 token!484)))) t!336890) tb!244551))

(declare-fun result!296354 () Bool)

(assert (= result!296354 result!296338))

(assert (=> b!4066875 t!336890))

(assert (=> d!1209016 t!336890))

(declare-fun tp!1231062 () Bool)

(declare-fun b_and!312593 () Bool)

(assert (=> b!4067186 (= tp!1231062 (and (=> t!336888 result!296352) (=> t!336890 result!296354) b_and!312593))))

(declare-fun e!2524041 () Bool)

(assert (=> b!4067186 (= e!2524041 (and tp!1231063 tp!1231062))))

(declare-fun tp!1231061 () Bool)

(declare-fun b!4067185 () Bool)

(declare-fun e!2524043 () Bool)

(assert (=> b!4067185 (= e!2524043 (and tp!1231061 (inv!58064 (tag!7837 (h!48856 (t!336863 rules!2999)))) (inv!58068 (transformation!6977 (h!48856 (t!336863 rules!2999)))) e!2524041))))

(declare-fun b!4067184 () Bool)

(declare-fun e!2524042 () Bool)

(declare-fun tp!1231064 () Bool)

(assert (=> b!4067184 (= e!2524042 (and e!2524043 tp!1231064))))

(assert (=> b!4066423 (= tp!1231005 e!2524042)))

(assert (= b!4067185 b!4067186))

(assert (= b!4067184 b!4067185))

(assert (= (and b!4066423 (is-Cons!43436 (t!336863 rules!2999))) b!4067184))

(declare-fun m!4675517 () Bool)

(assert (=> b!4067185 m!4675517))

(declare-fun m!4675519 () Bool)

(assert (=> b!4067185 m!4675519))

(declare-fun b!4067195 () Bool)

(declare-fun e!2524048 () Bool)

(declare-fun tp!1231067 () Bool)

(assert (=> b!4067195 (= e!2524048 (and tp_is_empty!20735 tp!1231067))))

(assert (=> b!4066450 (= tp!1231008 e!2524048)))

(assert (= (and b!4066450 (is-Cons!43434 (t!336861 suffix!1299))) b!4067195))

(declare-fun b!4067196 () Bool)

(declare-fun e!2524049 () Bool)

(declare-fun tp!1231068 () Bool)

(assert (=> b!4067196 (= e!2524049 (and tp_is_empty!20735 tp!1231068))))

(assert (=> b!4066430 (= tp!1230999 e!2524049)))

(assert (= (and b!4066430 (is-Cons!43434 (t!336861 suffixResult!105))) b!4067196))

(declare-fun b!4067197 () Bool)

(declare-fun e!2524050 () Bool)

(declare-fun tp!1231069 () Bool)

(assert (=> b!4067197 (= e!2524050 (and tp_is_empty!20735 tp!1231069))))

(assert (=> b!4066424 (= tp!1231000 e!2524050)))

(assert (= (and b!4066424 (is-Cons!43434 (originalCharacters!7577 token!484))) b!4067197))

(declare-fun b!4067198 () Bool)

(declare-fun e!2524051 () Bool)

(declare-fun tp!1231070 () Bool)

(assert (=> b!4067198 (= e!2524051 (and tp_is_empty!20735 tp!1231070))))

(assert (=> b!4066441 (= tp!1231002 e!2524051)))

(assert (= (and b!4066441 (is-Cons!43434 (t!336861 newSuffix!27))) b!4067198))

(declare-fun b!4067200 () Bool)

(declare-fun e!2524053 () Bool)

(declare-fun tp!1231071 () Bool)

(assert (=> b!4067200 (= e!2524053 (and tp_is_empty!20735 tp!1231071))))

(assert (=> b!4066420 (= tp!1231001 e!2524053)))

(assert (= (and b!4066420 (is-Cons!43434 (t!336861 newSuffixResult!27))) b!4067200))

(declare-fun b!4067213 () Bool)

(declare-fun e!2524056 () Bool)

(declare-fun tp!1231083 () Bool)

(assert (=> b!4067213 (= e!2524056 tp!1231083)))

(assert (=> b!4066452 (= tp!1230998 e!2524056)))

(declare-fun b!4067212 () Bool)

(declare-fun tp!1231082 () Bool)

(declare-fun tp!1231084 () Bool)

(assert (=> b!4067212 (= e!2524056 (and tp!1231082 tp!1231084))))

(declare-fun b!4067214 () Bool)

(declare-fun tp!1231086 () Bool)

(declare-fun tp!1231085 () Bool)

(assert (=> b!4067214 (= e!2524056 (and tp!1231086 tp!1231085))))

(declare-fun b!4067211 () Bool)

(assert (=> b!4067211 (= e!2524056 tp_is_empty!20735)))

(assert (= (and b!4066452 (is-ElementMatch!11882 (regex!6977 (rule!10077 token!484)))) b!4067211))

(assert (= (and b!4066452 (is-Concat!19090 (regex!6977 (rule!10077 token!484)))) b!4067212))

(assert (= (and b!4066452 (is-Star!11882 (regex!6977 (rule!10077 token!484)))) b!4067213))

(assert (= (and b!4066452 (is-Union!11882 (regex!6977 (rule!10077 token!484)))) b!4067214))

(declare-fun b!4067217 () Bool)

(declare-fun e!2524057 () Bool)

(declare-fun tp!1231088 () Bool)

(assert (=> b!4067217 (= e!2524057 tp!1231088)))

(assert (=> b!4066427 (= tp!1230997 e!2524057)))

(declare-fun b!4067216 () Bool)

(declare-fun tp!1231087 () Bool)

(declare-fun tp!1231089 () Bool)

(assert (=> b!4067216 (= e!2524057 (and tp!1231087 tp!1231089))))

(declare-fun b!4067218 () Bool)

(declare-fun tp!1231091 () Bool)

(declare-fun tp!1231090 () Bool)

(assert (=> b!4067218 (= e!2524057 (and tp!1231091 tp!1231090))))

(declare-fun b!4067215 () Bool)

(assert (=> b!4067215 (= e!2524057 tp_is_empty!20735)))

(assert (= (and b!4066427 (is-ElementMatch!11882 (regex!6977 (h!48856 rules!2999)))) b!4067215))

(assert (= (and b!4066427 (is-Concat!19090 (regex!6977 (h!48856 rules!2999)))) b!4067216))

(assert (= (and b!4066427 (is-Star!11882 (regex!6977 (h!48856 rules!2999)))) b!4067217))

(assert (= (and b!4066427 (is-Union!11882 (regex!6977 (h!48856 rules!2999)))) b!4067218))

(declare-fun b!4067221 () Bool)

(declare-fun e!2524058 () Bool)

(declare-fun tp!1231092 () Bool)

(assert (=> b!4067221 (= e!2524058 (and tp_is_empty!20735 tp!1231092))))

(assert (=> b!4066438 (= tp!1231004 e!2524058)))

(assert (= (and b!4066438 (is-Cons!43434 (t!336861 prefix!494))) b!4067221))

(declare-fun b_lambda!118819 () Bool)

(assert (= b_lambda!118815 (or (and b!4066435 b_free!113115 (= (toChars!9396 (transformation!6977 (h!48856 rules!2999))) (toChars!9396 (transformation!6977 (rule!10077 token!484))))) (and b!4066459 b_free!113119) (and b!4067186 b_free!113131 (= (toChars!9396 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toChars!9396 (transformation!6977 (rule!10077 token!484))))) b_lambda!118819)))

(declare-fun b_lambda!118821 () Bool)

(assert (= b_lambda!118811 (or (and b!4066435 b_free!113115 (= (toChars!9396 (transformation!6977 (h!48856 rules!2999))) (toChars!9396 (transformation!6977 (rule!10077 token!484))))) (and b!4066459 b_free!113119) (and b!4067186 b_free!113131 (= (toChars!9396 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toChars!9396 (transformation!6977 (rule!10077 token!484))))) b_lambda!118821)))

(declare-fun b_lambda!118823 () Bool)

(assert (= b_lambda!118813 (or (and b!4066435 b_free!113113 (= (toValue!9537 (transformation!6977 (h!48856 rules!2999))) (toValue!9537 (transformation!6977 (rule!10077 token!484))))) (and b!4066459 b_free!113117) (and b!4067186 b_free!113129 (= (toValue!9537 (transformation!6977 (h!48856 (t!336863 rules!2999)))) (toValue!9537 (transformation!6977 (rule!10077 token!484))))) b_lambda!118823)))

(push 1)

(assert (not b!4066863))

(assert (not b!4066898))

(assert (not b!4067217))

(assert (not d!1208904))

(assert (not b!4066945))

(assert (not b!4066698))

(assert (not d!1208960))

(assert (not d!1208872))

(assert (not b!4066852))

(assert (not d!1208824))

(assert (not b!4066870))

(assert (not d!1208836))

(assert (not b!4067168))

(assert (not b!4066876))

(assert b_and!312591)

(assert (not b!4066912))

(assert (not b!4067070))

(assert (not b!4066919))

(assert (not b!4066655))

(assert (not b!4067156))

(assert (not d!1208752))

(assert (not b!4066648))

(assert (not b!4067047))

(assert (not b!4066947))

(assert (not b!4066827))

(assert (not d!1208970))

(assert (not b!4066894))

(assert (not d!1208942))

(assert (not b!4067169))

(assert (not d!1208754))

(assert (not b!4066856))

(assert (not b!4066692))

(assert (not b!4067171))

(assert (not b!4067216))

(assert (not b!4066824))

(assert (not b!4067049))

(assert (not d!1209004))

(assert (not b!4066950))

(assert (not b!4067052))

(assert (not d!1208820))

(assert (not b!4067166))

(assert (not b!4067123))

(assert (not b_next!113821))

(assert (not b!4066677))

(assert (not b!4067221))

(assert (not d!1208838))

(assert (not b!4066902))

(assert (not b!4066920))

(assert (not b!4067051))

(assert (not b!4066931))

(assert (not b!4067124))

(assert (not b!4066805))

(assert (not b!4066975))

(assert (not b!4066811))

(assert (not b!4067163))

(assert (not d!1208992))

(assert (not d!1209014))

(assert (not d!1208816))

(assert (not b!4066868))

(assert (not d!1208862))

(assert (not b!4066681))

(assert (not b!4066915))

(assert (not b!4067045))

(assert (not b!4067150))

(assert (not b!4066908))

(assert (not b!4067085))

(assert (not b!4067212))

(assert (not b!4066923))

(assert (not b!4066844))

(assert (not d!1208832))

(assert (not d!1208834))

(assert (not b!4067068))

(assert (not b!4067197))

(assert (not b!4066911))

(assert (not tb!244529))

(assert (not d!1208910))

(assert (not b!4067088))

(assert (not b!4066804))

(assert (not b!4067214))

(assert (not b!4066944))

(assert (not b_next!113819))

(assert (not b!4066835))

(assert (not b!4066801))

(assert (not d!1208996))

(assert (not d!1208888))

(assert (not b!4066982))

(assert (not b!4067108))

(assert (not b!4066812))

(assert (not d!1209002))

(assert (not b!4067065))

(assert (not b!4066936))

(assert (not b!4066951))

(assert (not b!4066803))

(assert (not b!4066673))

(assert (not b!4066981))

(assert (not b!4066712))

(assert (not d!1208812))

(assert (not b!4066823))

(assert tp_is_empty!20735)

(assert (not b!4066647))

(assert (not d!1208950))

(assert (not b!4066869))

(assert (not b_lambda!118807))

(assert (not d!1208828))

(assert (not b!4067134))

(assert (not d!1208886))

(assert (not d!1208818))

(assert (not d!1209008))

(assert (not d!1208874))

(assert (not b!4066702))

(assert (not d!1208860))

(assert (not b!4066948))

(assert (not b!4066680))

(assert (not b!4067218))

(assert (not b!4066983))

(assert (not b!4067175))

(assert (not d!1208906))

(assert (not tb!244537))

(assert (not b!4066965))

(assert (not b!4067115))

(assert (not b!4067170))

(assert (not bm!288304))

(assert (not b!4067086))

(assert (not b!4066924))

(assert (not b!4066978))

(assert (not b!4067155))

(assert (not d!1208866))

(assert (not b!4066932))

(assert (not b!4066697))

(assert (not d!1208778))

(assert (not b_lambda!118823))

(assert (not b!4067125))

(assert (not d!1208780))

(assert (not d!1208900))

(assert (not tb!244541))

(assert (not d!1208842))

(assert (not b!4066940))

(assert (not b!4067148))

(assert (not b!4067083))

(assert (not d!1208878))

(assert (not d!1208948))

(assert (not b!4066834))

(assert (not d!1208864))

(assert (not bm!288302))

(assert (not b!4067157))

(assert (not d!1208954))

(assert (not b!4067127))

(assert (not d!1208844))

(assert (not b_next!113817))

(assert (not d!1208998))

(assert (not d!1208856))

(assert (not b!4066857))

(assert (not d!1208846))

(assert (not d!1208854))

(assert (not d!1208894))

(assert (not b!4067173))

(assert (not b!4066952))

(assert (not b!4067050))

(assert (not b!4066928))

(assert (not b!4067196))

(assert (not b!4067195))

(assert (not b!4066855))

(assert (not b!4067198))

(assert (not b!4066649))

(assert (not d!1208814))

(assert (not b!4066954))

(assert (not b!4066943))

(assert (not d!1208790))

(assert (not bm!288303))

(assert (not b_next!113835))

(assert (not d!1208880))

(assert (not b!4066669))

(assert (not d!1209016))

(assert (not b!4066668))

(assert (not b!4066858))

(assert (not b!4066674))

(assert (not d!1208876))

(assert (not d!1208966))

(assert (not b!4066866))

(assert (not d!1208884))

(assert (not b!4066704))

(assert (not d!1208802))

(assert (not b!4066927))

(assert (not b!4066709))

(assert (not b!4067063))

(assert (not b!4066676))

(assert (not b_lambda!118819))

(assert (not b!4067133))

(assert (not b!4066670))

(assert (not d!1208898))

(assert (not b!4067091))

(assert (not d!1208868))

(assert (not bm!288290))

(assert (not b!4066798))

(assert (not b!4066703))

(assert (not b!4067120))

(assert (not b!4066693))

(assert (not d!1208776))

(assert (not d!1208870))

(assert (not b_next!113823))

(assert (not b!4066682))

(assert (not b!4066939))

(assert (not b!4067053))

(assert (not d!1208852))

(assert (not b!4066658))

(assert (not b!4066690))

(assert (not b!4067118))

(assert (not d!1208902))

(assert (not tb!244533))

(assert (not b!4067184))

(assert (not b!4066832))

(assert (not b!4066829))

(assert (not d!1208762))

(assert (not b_lambda!118809))

(assert (not b!4067112))

(assert (not d!1208850))

(assert (not d!1208830))

(assert (not d!1208912))

(assert (not d!1208896))

(assert (not b!4066946))

(assert b_and!312585)

(assert (not d!1208786))

(assert (not d!1208978))

(assert (not d!1208782))

(assert (not b!4067147))

(assert (not b!4066678))

(assert (not b!4066953))

(assert (not b!4067064))

(assert (not b!4067200))

(assert (not b!4066847))

(assert (not b!4067092))

(assert (not b!4066701))

(assert (not b!4066935))

(assert (not b_next!113833))

(assert (not d!1208848))

(assert (not b!4067158))

(assert (not b!4066802))

(assert (not d!1208982))

(assert (not b!4067152))

(assert (not b!4066799))

(assert b_and!312583)

(assert (not b!4066913))

(assert (not b_lambda!118821))

(assert (not b!4066828))

(assert (not b!4066813))

(assert (not d!1208986))

(assert (not b!4066964))

(assert (not b!4066688))

(assert (not b!4066901))

(assert b_and!312589)

(assert (not b!4067113))

(assert (not b!4067046))

(assert (not b!4066672))

(assert (not d!1208946))

(assert (not b!4066694))

(assert b_and!312587)

(assert (not bm!288296))

(assert (not b!4067121))

(assert (not bm!288291))

(assert (not b!4067119))

(assert b_and!312593)

(assert (not b!4066877))

(assert (not b!4066797))

(assert (not b!4066875))

(assert (not b!4067067))

(assert (not b!4067126))

(assert (not b!4066916))

(assert (not b!4066650))

(assert (not b!4066696))

(assert (not d!1208760))

(assert (not b!4067213))

(assert (not b!4067185))

(assert (not b!4067093))

(assert (not b!4066883))

(assert (not d!1208962))

(check-sat)

(pop 1)

(push 1)

(assert b_and!312591)

(assert (not b_next!113821))

(assert (not b_next!113819))

(assert (not b_next!113817))

(assert (not b_next!113835))

(assert (not b_next!113823))

(assert b_and!312585)

(assert b_and!312593)

(assert (not b_next!113833))

(assert b_and!312583)

(assert b_and!312589)

(assert b_and!312587)

(check-sat)

(pop 1)

