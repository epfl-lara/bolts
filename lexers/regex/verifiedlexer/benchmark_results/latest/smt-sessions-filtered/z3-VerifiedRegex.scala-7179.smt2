; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382300 () Bool)

(assert start!382300)

(declare-fun b!4053767 () Bool)

(declare-fun b_free!112793 () Bool)

(declare-fun b_next!113497 () Bool)

(assert (=> b!4053767 (= b_free!112793 (not b_next!113497))))

(declare-fun tp!1228918 () Bool)

(declare-fun b_and!311747 () Bool)

(assert (=> b!4053767 (= tp!1228918 b_and!311747)))

(declare-fun b_free!112795 () Bool)

(declare-fun b_next!113499 () Bool)

(assert (=> b!4053767 (= b_free!112795 (not b_next!113499))))

(declare-fun tp!1228930 () Bool)

(declare-fun b_and!311749 () Bool)

(assert (=> b!4053767 (= tp!1228930 b_and!311749)))

(declare-fun b!4053794 () Bool)

(declare-fun b_free!112797 () Bool)

(declare-fun b_next!113501 () Bool)

(assert (=> b!4053794 (= b_free!112797 (not b_next!113501))))

(declare-fun tp!1228927 () Bool)

(declare-fun b_and!311751 () Bool)

(assert (=> b!4053794 (= tp!1228927 b_and!311751)))

(declare-fun b_free!112799 () Bool)

(declare-fun b_next!113503 () Bool)

(assert (=> b!4053794 (= b_free!112799 (not b_next!113503))))

(declare-fun tp!1228922 () Bool)

(declare-fun b_and!311753 () Bool)

(assert (=> b!4053794 (= tp!1228922 b_and!311753)))

(declare-fun b!4053761 () Bool)

(declare-fun res!1652391 () Bool)

(declare-fun e!2515333 () Bool)

(assert (=> b!4053761 (=> res!1652391 e!2515333)))

(declare-datatypes ((C!23888 0))(
  ( (C!23889 (val!14038 Int)) )
))
(declare-datatypes ((List!43449 0))(
  ( (Nil!43325) (Cons!43325 (h!48745 C!23888) (t!336158 List!43449)) )
))
(declare-fun lt!1445806 () List!43449)

(declare-fun lt!1445824 () List!43449)

(assert (=> b!4053761 (= res!1652391 (not (= lt!1445806 lt!1445824)))))

(declare-fun b!4053762 () Bool)

(declare-fun res!1652388 () Bool)

(declare-fun e!2515339 () Bool)

(assert (=> b!4053762 (=> (not res!1652388) (not e!2515339))))

(declare-fun suffix!1299 () List!43449)

(declare-fun newSuffix!27 () List!43449)

(declare-fun size!32393 (List!43449) Int)

(assert (=> b!4053762 (= res!1652388 (>= (size!32393 suffix!1299) (size!32393 newSuffix!27)))))

(declare-fun b!4053763 () Bool)

(declare-fun e!2515336 () Bool)

(declare-fun e!2515312 () Bool)

(assert (=> b!4053763 (= e!2515336 e!2515312)))

(declare-fun res!1652389 () Bool)

(assert (=> b!4053763 (=> res!1652389 e!2515312)))

(declare-fun lt!1445816 () Int)

(declare-fun lt!1445807 () Int)

(assert (=> b!4053763 (= res!1652389 (>= lt!1445816 lt!1445807))))

(declare-datatypes ((Unit!62640 0))(
  ( (Unit!62641) )
))
(declare-fun lt!1445810 () Unit!62640)

(declare-fun e!2515338 () Unit!62640)

(assert (=> b!4053763 (= lt!1445810 e!2515338)))

(declare-fun c!700269 () Bool)

(assert (=> b!4053763 (= c!700269 (> lt!1445816 lt!1445807))))

(declare-datatypes ((IArray!26319 0))(
  ( (IArray!26320 (innerList!13217 List!43449)) )
))
(declare-datatypes ((Conc!13157 0))(
  ( (Node!13157 (left!32620 Conc!13157) (right!32950 Conc!13157) (csize!26544 Int) (cheight!13368 Int)) (Leaf!20337 (xs!16463 IArray!26319) (csize!26545 Int)) (Empty!13157) )
))
(declare-datatypes ((BalanceConc!25908 0))(
  ( (BalanceConc!25909 (c!700270 Conc!13157)) )
))
(declare-datatypes ((List!43450 0))(
  ( (Nil!43326) (Cons!43326 (h!48746 (_ BitVec 16)) (t!336159 List!43450)) )
))
(declare-datatypes ((TokenValue!7176 0))(
  ( (FloatLiteralValue!14352 (text!50677 List!43450)) (TokenValueExt!7175 (__x!26569 Int)) (Broken!35880 (value!218569 List!43450)) (Object!7299) (End!7176) (Def!7176) (Underscore!7176) (Match!7176) (Else!7176) (Error!7176) (Case!7176) (If!7176) (Extends!7176) (Abstract!7176) (Class!7176) (Val!7176) (DelimiterValue!14352 (del!7236 List!43450)) (KeywordValue!7182 (value!218570 List!43450)) (CommentValue!14352 (value!218571 List!43450)) (WhitespaceValue!14352 (value!218572 List!43450)) (IndentationValue!7176 (value!218573 List!43450)) (String!49597) (Int32!7176) (Broken!35881 (value!218574 List!43450)) (Boolean!7177) (Unit!62642) (OperatorValue!7179 (op!7236 List!43450)) (IdentifierValue!14352 (value!218575 List!43450)) (IdentifierValue!14353 (value!218576 List!43450)) (WhitespaceValue!14353 (value!218577 List!43450)) (True!14352) (False!14352) (Broken!35882 (value!218578 List!43450)) (Broken!35883 (value!218579 List!43450)) (True!14353) (RightBrace!7176) (RightBracket!7176) (Colon!7176) (Null!7176) (Comma!7176) (LeftBracket!7176) (False!14353) (LeftBrace!7176) (ImaginaryLiteralValue!7176 (text!50678 List!43450)) (StringLiteralValue!21528 (value!218580 List!43450)) (EOFValue!7176 (value!218581 List!43450)) (IdentValue!7176 (value!218582 List!43450)) (DelimiterValue!14353 (value!218583 List!43450)) (DedentValue!7176 (value!218584 List!43450)) (NewLineValue!7176 (value!218585 List!43450)) (IntegerValue!21528 (value!218586 (_ BitVec 32)) (text!50679 List!43450)) (IntegerValue!21529 (value!218587 Int) (text!50680 List!43450)) (Times!7176) (Or!7176) (Equal!7176) (Minus!7176) (Broken!35884 (value!218588 List!43450)) (And!7176) (Div!7176) (LessEqual!7176) (Mod!7176) (Concat!19027) (Not!7176) (Plus!7176) (SpaceValue!7176 (value!218589 List!43450)) (IntegerValue!21530 (value!218590 Int) (text!50681 List!43450)) (StringLiteralValue!21529 (text!50682 List!43450)) (FloatLiteralValue!14353 (text!50683 List!43450)) (BytesLiteralValue!7176 (value!218591 List!43450)) (CommentValue!14353 (value!218592 List!43450)) (StringLiteralValue!21530 (value!218593 List!43450)) (ErrorTokenValue!7176 (msg!7237 List!43450)) )
))
(declare-datatypes ((Regex!11851 0))(
  ( (ElementMatch!11851 (c!700271 C!23888)) (Concat!19028 (regOne!24214 Regex!11851) (regTwo!24214 Regex!11851)) (EmptyExpr!11851) (Star!11851 (reg!12180 Regex!11851)) (EmptyLang!11851) (Union!11851 (regOne!24215 Regex!11851) (regTwo!24215 Regex!11851)) )
))
(declare-datatypes ((String!49598 0))(
  ( (String!49599 (value!218594 String)) )
))
(declare-datatypes ((TokenValueInjection!13780 0))(
  ( (TokenValueInjection!13781 (toValue!9502 Int) (toChars!9361 Int)) )
))
(declare-datatypes ((Rule!13692 0))(
  ( (Rule!13693 (regex!6946 Regex!11851) (tag!7806 String!49598) (isSeparator!6946 Bool) (transformation!6946 TokenValueInjection!13780)) )
))
(declare-datatypes ((Token!13030 0))(
  ( (Token!13031 (value!218595 TokenValue!7176) (rule!10030 Rule!13692) (size!32394 Int) (originalCharacters!7546 List!43449)) )
))
(declare-datatypes ((tuple2!42394 0))(
  ( (tuple2!42395 (_1!24331 Token!13030) (_2!24331 List!43449)) )
))
(declare-datatypes ((Option!9360 0))(
  ( (None!9359) (Some!9359 (v!39771 tuple2!42394)) )
))
(declare-fun lt!1445784 () Option!9360)

(declare-fun lt!1445815 () List!43449)

(assert (=> b!4053763 (= (_2!24331 (v!39771 lt!1445784)) lt!1445815)))

(declare-fun lt!1445765 () Unit!62640)

(declare-fun lt!1445822 () List!43449)

(declare-fun lemmaSamePrefixThenSameSuffix!2194 (List!43449 List!43449 List!43449 List!43449 List!43449) Unit!62640)

(assert (=> b!4053763 (= lt!1445765 (lemmaSamePrefixThenSameSuffix!2194 lt!1445822 (_2!24331 (v!39771 lt!1445784)) lt!1445822 lt!1445815 lt!1445824))))

(declare-fun lt!1445776 () List!43449)

(declare-fun isPrefix!4033 (List!43449 List!43449) Bool)

(assert (=> b!4053763 (isPrefix!4033 lt!1445822 lt!1445776)))

(declare-fun lt!1445772 () Unit!62640)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2868 (List!43449 List!43449) Unit!62640)

(assert (=> b!4053763 (= lt!1445772 (lemmaConcatTwoListThenFirstIsPrefix!2868 lt!1445822 lt!1445815))))

(declare-fun b!4053764 () Bool)

(declare-fun e!2515311 () Bool)

(declare-fun e!2515328 () Bool)

(assert (=> b!4053764 (= e!2515311 e!2515328)))

(declare-fun res!1652377 () Bool)

(assert (=> b!4053764 (=> res!1652377 e!2515328)))

(declare-fun lt!1445812 () Option!9360)

(assert (=> b!4053764 (= res!1652377 (not (= lt!1445812 (Some!9359 (v!39771 lt!1445784)))))))

(declare-fun newSuffixResult!27 () List!43449)

(declare-fun ++!11348 (List!43449 List!43449) List!43449)

(assert (=> b!4053764 (isPrefix!4033 lt!1445822 (++!11348 lt!1445822 newSuffixResult!27))))

(declare-fun lt!1445771 () Unit!62640)

(assert (=> b!4053764 (= lt!1445771 (lemmaConcatTwoListThenFirstIsPrefix!2868 lt!1445822 newSuffixResult!27))))

(assert (=> b!4053764 (isPrefix!4033 lt!1445822 lt!1445806)))

(assert (=> b!4053764 (= lt!1445806 (++!11348 lt!1445822 (_2!24331 (v!39771 lt!1445784))))))

(declare-fun lt!1445775 () Unit!62640)

(assert (=> b!4053764 (= lt!1445775 (lemmaConcatTwoListThenFirstIsPrefix!2868 lt!1445822 (_2!24331 (v!39771 lt!1445784))))))

(declare-fun lt!1445769 () Token!13030)

(assert (=> b!4053764 (= lt!1445812 (Some!9359 (tuple2!42395 lt!1445769 (_2!24331 (v!39771 lt!1445784)))))))

(declare-datatypes ((LexerInterface!6535 0))(
  ( (LexerInterfaceExt!6532 (__x!26570 Int)) (Lexer!6533) )
))
(declare-fun thiss!21717 () LexerInterface!6535)

(declare-fun maxPrefixOneRule!2845 (LexerInterface!6535 Rule!13692 List!43449) Option!9360)

(assert (=> b!4053764 (= lt!1445812 (maxPrefixOneRule!2845 thiss!21717 (rule!10030 (_1!24331 (v!39771 lt!1445784))) lt!1445824))))

(declare-fun lt!1445793 () TokenValue!7176)

(assert (=> b!4053764 (= lt!1445769 (Token!13031 lt!1445793 (rule!10030 (_1!24331 (v!39771 lt!1445784))) lt!1445816 lt!1445822))))

(assert (=> b!4053764 (= lt!1445816 (size!32393 lt!1445822))))

(declare-fun lt!1445788 () BalanceConc!25908)

(declare-fun apply!10135 (TokenValueInjection!13780 BalanceConc!25908) TokenValue!7176)

(assert (=> b!4053764 (= lt!1445793 (apply!10135 (transformation!6946 (rule!10030 (_1!24331 (v!39771 lt!1445784)))) lt!1445788))))

(declare-fun seqFromList!5163 (List!43449) BalanceConc!25908)

(assert (=> b!4053764 (= lt!1445788 (seqFromList!5163 lt!1445822))))

(declare-fun lt!1445780 () Unit!62640)

(declare-datatypes ((List!43451 0))(
  ( (Nil!43327) (Cons!43327 (h!48747 Rule!13692) (t!336160 List!43451)) )
))
(declare-fun rules!2999 () List!43451)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1651 (LexerInterface!6535 List!43451 List!43449 List!43449 List!43449 Rule!13692) Unit!62640)

(assert (=> b!4053764 (= lt!1445780 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1651 thiss!21717 rules!2999 lt!1445822 lt!1445824 (_2!24331 (v!39771 lt!1445784)) (rule!10030 (_1!24331 (v!39771 lt!1445784)))))))

(declare-fun list!16144 (BalanceConc!25908) List!43449)

(declare-fun charsOf!4762 (Token!13030) BalanceConc!25908)

(assert (=> b!4053764 (= lt!1445822 (list!16144 (charsOf!4762 (_1!24331 (v!39771 lt!1445784)))))))

(declare-fun lt!1445804 () Unit!62640)

(declare-fun lemmaInv!1155 (TokenValueInjection!13780) Unit!62640)

(assert (=> b!4053764 (= lt!1445804 (lemmaInv!1155 (transformation!6946 (rule!10030 (_1!24331 (v!39771 lt!1445784))))))))

(declare-fun ruleValid!2876 (LexerInterface!6535 Rule!13692) Bool)

(assert (=> b!4053764 (ruleValid!2876 thiss!21717 (rule!10030 (_1!24331 (v!39771 lt!1445784))))))

(declare-fun lt!1445797 () Unit!62640)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1946 (LexerInterface!6535 Rule!13692 List!43451) Unit!62640)

(assert (=> b!4053764 (= lt!1445797 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1946 thiss!21717 (rule!10030 (_1!24331 (v!39771 lt!1445784))) rules!2999))))

(declare-fun lt!1445790 () Unit!62640)

(declare-fun token!484 () Token!13030)

(declare-fun lemmaCharactersSize!1465 (Token!13030) Unit!62640)

(assert (=> b!4053764 (= lt!1445790 (lemmaCharactersSize!1465 token!484))))

(declare-fun lt!1445786 () Unit!62640)

(assert (=> b!4053764 (= lt!1445786 (lemmaCharactersSize!1465 (_1!24331 (v!39771 lt!1445784))))))

(declare-fun b!4053765 () Bool)

(declare-fun e!2515325 () Bool)

(declare-fun e!2515334 () Bool)

(assert (=> b!4053765 (= e!2515325 e!2515334)))

(declare-fun res!1652372 () Bool)

(assert (=> b!4053765 (=> res!1652372 e!2515334)))

(declare-fun lt!1445779 () List!43449)

(declare-fun lt!1445819 () List!43449)

(assert (=> b!4053765 (= res!1652372 (not (= lt!1445779 lt!1445819)))))

(declare-fun lt!1445823 () List!43449)

(declare-fun lt!1445820 () List!43449)

(assert (=> b!4053765 (= lt!1445779 (++!11348 lt!1445823 lt!1445820))))

(declare-fun getSuffix!2450 (List!43449 List!43449) List!43449)

(assert (=> b!4053765 (= lt!1445820 (getSuffix!2450 lt!1445819 lt!1445823))))

(declare-fun e!2515341 () Bool)

(assert (=> b!4053765 e!2515341))

(declare-fun res!1652384 () Bool)

(assert (=> b!4053765 (=> (not res!1652384) (not e!2515341))))

(assert (=> b!4053765 (= res!1652384 (isPrefix!4033 lt!1445819 lt!1445819))))

(declare-fun lt!1445795 () Unit!62640)

(declare-fun lemmaIsPrefixRefl!2600 (List!43449 List!43449) Unit!62640)

(assert (=> b!4053765 (= lt!1445795 (lemmaIsPrefixRefl!2600 lt!1445819 lt!1445819))))

(declare-fun b!4053766 () Bool)

(declare-fun e!2515335 () Bool)

(declare-fun tp_is_empty!20673 () Bool)

(declare-fun tp!1228920 () Bool)

(assert (=> b!4053766 (= e!2515335 (and tp_is_empty!20673 tp!1228920))))

(declare-fun e!2515308 () Bool)

(assert (=> b!4053767 (= e!2515308 (and tp!1228918 tp!1228930))))

(declare-fun b!4053768 () Bool)

(declare-fun tp!1228921 () Bool)

(declare-fun e!2515317 () Bool)

(declare-fun e!2515316 () Bool)

(declare-fun inv!57917 (String!49598) Bool)

(declare-fun inv!57920 (TokenValueInjection!13780) Bool)

(assert (=> b!4053768 (= e!2515316 (and tp!1228921 (inv!57917 (tag!7806 (h!48747 rules!2999))) (inv!57920 (transformation!6946 (h!48747 rules!2999))) e!2515317))))

(declare-fun b!4053769 () Bool)

(declare-fun res!1652399 () Bool)

(assert (=> b!4053769 (=> res!1652399 e!2515312)))

(declare-fun matchR!5804 (Regex!11851 List!43449) Bool)

(assert (=> b!4053769 (= res!1652399 (not (matchR!5804 (regex!6946 (rule!10030 (_1!24331 (v!39771 lt!1445784)))) lt!1445822)))))

(declare-fun b!4053770 () Bool)

(declare-fun e!2515340 () Bool)

(declare-fun tp!1228923 () Bool)

(assert (=> b!4053770 (= e!2515340 (and tp_is_empty!20673 tp!1228923))))

(declare-fun b!4053771 () Bool)

(declare-fun e!2515327 () Bool)

(declare-fun e!2515310 () Bool)

(assert (=> b!4053771 (= e!2515327 e!2515310)))

(declare-fun res!1652386 () Bool)

(assert (=> b!4053771 (=> res!1652386 e!2515310)))

(assert (=> b!4053771 (= res!1652386 (not (isPrefix!4033 lt!1445823 lt!1445819)))))

(declare-fun prefix!494 () List!43449)

(assert (=> b!4053771 (isPrefix!4033 prefix!494 lt!1445819)))

(declare-fun lt!1445764 () Unit!62640)

(assert (=> b!4053771 (= lt!1445764 (lemmaConcatTwoListThenFirstIsPrefix!2868 prefix!494 suffix!1299))))

(declare-fun lt!1445808 () List!43449)

(assert (=> b!4053771 (isPrefix!4033 lt!1445823 lt!1445808)))

(declare-fun lt!1445791 () Unit!62640)

(declare-fun suffixResult!105 () List!43449)

(assert (=> b!4053771 (= lt!1445791 (lemmaConcatTwoListThenFirstIsPrefix!2868 lt!1445823 suffixResult!105))))

(declare-fun b!4053772 () Bool)

(declare-fun e!2515322 () Bool)

(assert (=> b!4053772 (= e!2515310 e!2515322)))

(declare-fun res!1652390 () Bool)

(assert (=> b!4053772 (=> res!1652390 e!2515322)))

(declare-fun lt!1445811 () List!43449)

(assert (=> b!4053772 (= res!1652390 (not (= lt!1445811 prefix!494)))))

(declare-fun lt!1445785 () List!43449)

(assert (=> b!4053772 (= lt!1445811 (++!11348 lt!1445823 lt!1445785))))

(assert (=> b!4053772 (= lt!1445785 (getSuffix!2450 prefix!494 lt!1445823))))

(assert (=> b!4053772 (isPrefix!4033 lt!1445823 prefix!494)))

(declare-fun lt!1445794 () Unit!62640)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!597 (List!43449 List!43449 List!43449) Unit!62640)

(assert (=> b!4053772 (= lt!1445794 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!597 prefix!494 lt!1445823 lt!1445819))))

(declare-fun res!1652369 () Bool)

(assert (=> start!382300 (=> (not res!1652369) (not e!2515339))))

(get-info :version)

(assert (=> start!382300 (= res!1652369 ((_ is Lexer!6533) thiss!21717))))

(assert (=> start!382300 e!2515339))

(declare-fun e!2515313 () Bool)

(assert (=> start!382300 e!2515313))

(declare-fun e!2515342 () Bool)

(declare-fun inv!57921 (Token!13030) Bool)

(assert (=> start!382300 (and (inv!57921 token!484) e!2515342)))

(assert (=> start!382300 e!2515335))

(declare-fun e!2515329 () Bool)

(assert (=> start!382300 e!2515329))

(declare-fun e!2515324 () Bool)

(assert (=> start!382300 e!2515324))

(assert (=> start!382300 true))

(declare-fun e!2515326 () Bool)

(assert (=> start!382300 e!2515326))

(assert (=> start!382300 e!2515340))

(declare-fun b!4053773 () Bool)

(declare-fun lt!1445817 () Option!9360)

(assert (=> b!4053773 (= e!2515312 (or (not (= lt!1445812 lt!1445817)) (<= lt!1445807 lt!1445816) (= lt!1445784 lt!1445817)))))

(assert (=> b!4053773 (= lt!1445817 (Some!9359 (tuple2!42395 lt!1445769 lt!1445815)))))

(assert (=> b!4053773 (isPrefix!4033 lt!1445824 lt!1445824)))

(declare-fun lt!1445809 () Unit!62640)

(assert (=> b!4053773 (= lt!1445809 (lemmaIsPrefixRefl!2600 lt!1445824 lt!1445824))))

(declare-fun lt!1445778 () Unit!62640)

(declare-fun lemmaSemiInverse!1925 (TokenValueInjection!13780 BalanceConc!25908) Unit!62640)

(assert (=> b!4053773 (= lt!1445778 (lemmaSemiInverse!1925 (transformation!6946 (rule!10030 (_1!24331 (v!39771 lt!1445784)))) lt!1445788))))

(declare-fun b!4053774 () Bool)

(declare-fun Unit!62643 () Unit!62640)

(assert (=> b!4053774 (= e!2515338 Unit!62643)))

(declare-fun lt!1445825 () Unit!62640)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!472 (LexerInterface!6535 List!43451 Rule!13692 List!43449 List!43449 List!43449 Rule!13692) Unit!62640)

(assert (=> b!4053774 (= lt!1445825 (lemmaMaxPrefixOutputsMaxPrefix!472 thiss!21717 rules!2999 (rule!10030 token!484) lt!1445823 lt!1445819 lt!1445822 (rule!10030 (_1!24331 (v!39771 lt!1445784)))))))

(declare-fun res!1652370 () Bool)

(assert (=> b!4053774 (= res!1652370 (not (matchR!5804 (regex!6946 (rule!10030 (_1!24331 (v!39771 lt!1445784)))) lt!1445822)))))

(declare-fun e!2515318 () Bool)

(assert (=> b!4053774 (=> (not res!1652370) (not e!2515318))))

(assert (=> b!4053774 e!2515318))

(declare-fun b!4053775 () Bool)

(declare-fun e!2515330 () Bool)

(declare-fun e!2515337 () Bool)

(assert (=> b!4053775 (= e!2515330 e!2515337)))

(declare-fun res!1652376 () Bool)

(assert (=> b!4053775 (=> res!1652376 e!2515337)))

(declare-fun lt!1445802 () List!43449)

(assert (=> b!4053775 (= res!1652376 (not (= lt!1445802 lt!1445819)))))

(declare-fun lt!1445774 () List!43449)

(assert (=> b!4053775 (= lt!1445802 (++!11348 prefix!494 lt!1445774))))

(declare-fun lt!1445801 () List!43449)

(assert (=> b!4053775 (= lt!1445802 (++!11348 lt!1445824 lt!1445801))))

(declare-fun lt!1445767 () Unit!62640)

(declare-fun lemmaConcatAssociativity!2650 (List!43449 List!43449 List!43449) Unit!62640)

(assert (=> b!4053775 (= lt!1445767 (lemmaConcatAssociativity!2650 prefix!494 newSuffix!27 lt!1445801))))

(declare-fun b!4053776 () Bool)

(declare-fun tp!1228924 () Bool)

(assert (=> b!4053776 (= e!2515313 (and tp_is_empty!20673 tp!1228924))))

(declare-fun b!4053777 () Bool)

(assert (=> b!4053777 (= e!2515337 e!2515333)))

(declare-fun res!1652396 () Bool)

(assert (=> b!4053777 (=> res!1652396 e!2515333)))

(assert (=> b!4053777 (= res!1652396 (not (isPrefix!4033 lt!1445822 lt!1445819)))))

(assert (=> b!4053777 (isPrefix!4033 lt!1445822 lt!1445802)))

(declare-fun lt!1445800 () Unit!62640)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!826 (List!43449 List!43449 List!43449) Unit!62640)

(assert (=> b!4053777 (= lt!1445800 (lemmaPrefixStaysPrefixWhenAddingToSuffix!826 lt!1445822 lt!1445824 lt!1445801))))

(declare-fun b!4053778 () Bool)

(declare-fun res!1652380 () Bool)

(assert (=> b!4053778 (=> (not res!1652380) (not e!2515339))))

(assert (=> b!4053778 (= res!1652380 (isPrefix!4033 newSuffix!27 suffix!1299))))

(declare-fun b!4053779 () Bool)

(declare-fun e!2515332 () Bool)

(assert (=> b!4053779 (= e!2515332 (not e!2515327))))

(declare-fun res!1652394 () Bool)

(assert (=> b!4053779 (=> res!1652394 e!2515327)))

(assert (=> b!4053779 (= res!1652394 (not (= lt!1445808 lt!1445819)))))

(assert (=> b!4053779 (= lt!1445808 (++!11348 lt!1445823 suffixResult!105))))

(declare-fun lt!1445805 () Unit!62640)

(assert (=> b!4053779 (= lt!1445805 (lemmaInv!1155 (transformation!6946 (rule!10030 token!484))))))

(assert (=> b!4053779 (ruleValid!2876 thiss!21717 (rule!10030 token!484))))

(declare-fun lt!1445777 () Unit!62640)

(assert (=> b!4053779 (= lt!1445777 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1946 thiss!21717 (rule!10030 token!484) rules!2999))))

(declare-fun b!4053780 () Bool)

(declare-fun tp!1228919 () Bool)

(assert (=> b!4053780 (= e!2515324 (and tp_is_empty!20673 tp!1228919))))

(declare-fun b!4053781 () Bool)

(declare-fun e!2515321 () Bool)

(assert (=> b!4053781 (= e!2515339 e!2515321)))

(declare-fun res!1652395 () Bool)

(assert (=> b!4053781 (=> (not res!1652395) (not e!2515321))))

(declare-fun lt!1445792 () Int)

(assert (=> b!4053781 (= res!1652395 (>= lt!1445792 lt!1445807))))

(assert (=> b!4053781 (= lt!1445807 (size!32393 lt!1445823))))

(assert (=> b!4053781 (= lt!1445792 (size!32393 prefix!494))))

(assert (=> b!4053781 (= lt!1445823 (list!16144 (charsOf!4762 token!484)))))

(declare-fun tp!1228926 () Bool)

(declare-fun e!2515315 () Bool)

(declare-fun b!4053782 () Bool)

(declare-fun inv!21 (TokenValue!7176) Bool)

(assert (=> b!4053782 (= e!2515342 (and (inv!21 (value!218595 token!484)) e!2515315 tp!1228926))))

(declare-fun b!4053783 () Bool)

(declare-fun e!2515314 () Bool)

(assert (=> b!4053783 (= e!2515322 e!2515314)))

(declare-fun res!1652373 () Bool)

(assert (=> b!4053783 (=> res!1652373 e!2515314)))

(declare-fun lt!1445796 () List!43449)

(declare-fun lt!1445787 () List!43449)

(assert (=> b!4053783 (= res!1652373 (or (not (= lt!1445819 lt!1445796)) (not (= lt!1445819 lt!1445787))))))

(assert (=> b!4053783 (= lt!1445796 lt!1445787)))

(declare-fun lt!1445821 () List!43449)

(assert (=> b!4053783 (= lt!1445787 (++!11348 lt!1445823 lt!1445821))))

(assert (=> b!4053783 (= lt!1445796 (++!11348 lt!1445811 suffix!1299))))

(assert (=> b!4053783 (= lt!1445821 (++!11348 lt!1445785 suffix!1299))))

(declare-fun lt!1445789 () Unit!62640)

(assert (=> b!4053783 (= lt!1445789 (lemmaConcatAssociativity!2650 lt!1445823 lt!1445785 suffix!1299))))

(declare-fun b!4053784 () Bool)

(declare-fun res!1652379 () Bool)

(assert (=> b!4053784 (=> res!1652379 e!2515312)))

(declare-fun contains!8620 (List!43451 Rule!13692) Bool)

(assert (=> b!4053784 (= res!1652379 (not (contains!8620 rules!2999 (rule!10030 (_1!24331 (v!39771 lt!1445784))))))))

(declare-fun b!4053785 () Bool)

(declare-fun e!2515309 () Bool)

(assert (=> b!4053785 (= e!2515309 e!2515325)))

(declare-fun res!1652387 () Bool)

(assert (=> b!4053785 (=> res!1652387 e!2515325)))

(assert (=> b!4053785 (= res!1652387 (not (matchR!5804 (regex!6946 (rule!10030 token!484)) lt!1445823)))))

(assert (=> b!4053785 (isPrefix!4033 lt!1445823 lt!1445824)))

(declare-fun lt!1445798 () Unit!62640)

(assert (=> b!4053785 (= lt!1445798 (lemmaPrefixStaysPrefixWhenAddingToSuffix!826 lt!1445823 prefix!494 newSuffix!27))))

(declare-fun lt!1445770 () Unit!62640)

(assert (=> b!4053785 (= lt!1445770 (lemmaPrefixStaysPrefixWhenAddingToSuffix!826 lt!1445823 prefix!494 suffix!1299))))

(declare-fun b!4053786 () Bool)

(assert (=> b!4053786 (= e!2515334 e!2515311)))

(declare-fun res!1652393 () Bool)

(assert (=> b!4053786 (=> res!1652393 e!2515311)))

(assert (=> b!4053786 (= res!1652393 (not ((_ is Some!9359) lt!1445784)))))

(declare-fun maxPrefix!3833 (LexerInterface!6535 List!43451 List!43449) Option!9360)

(assert (=> b!4053786 (= lt!1445784 (maxPrefix!3833 thiss!21717 rules!2999 lt!1445824))))

(declare-fun lt!1445782 () Token!13030)

(declare-fun lt!1445766 () tuple2!42394)

(assert (=> b!4053786 (and (= suffixResult!105 lt!1445820) (= lt!1445766 (tuple2!42395 lt!1445782 lt!1445820)))))

(declare-fun lt!1445799 () Unit!62640)

(assert (=> b!4053786 (= lt!1445799 (lemmaSamePrefixThenSameSuffix!2194 lt!1445823 suffixResult!105 lt!1445823 lt!1445820 lt!1445819))))

(assert (=> b!4053786 (isPrefix!4033 lt!1445823 lt!1445779)))

(declare-fun lt!1445814 () Unit!62640)

(assert (=> b!4053786 (= lt!1445814 (lemmaConcatTwoListThenFirstIsPrefix!2868 lt!1445823 lt!1445820))))

(declare-fun b!4053787 () Bool)

(declare-fun res!1652392 () Bool)

(assert (=> b!4053787 (=> res!1652392 e!2515312)))

(assert (=> b!4053787 (= res!1652392 (not (contains!8620 rules!2999 (rule!10030 token!484))))))

(declare-fun b!4053788 () Bool)

(declare-fun Unit!62644 () Unit!62640)

(assert (=> b!4053788 (= e!2515338 Unit!62644)))

(declare-fun b!4053789 () Bool)

(assert (=> b!4053789 (= e!2515318 false)))

(declare-fun b!4053790 () Bool)

(declare-fun e!2515323 () Bool)

(assert (=> b!4053790 (= e!2515321 e!2515323)))

(declare-fun res!1652397 () Bool)

(assert (=> b!4053790 (=> (not res!1652397) (not e!2515323))))

(declare-fun lt!1445783 () List!43449)

(assert (=> b!4053790 (= res!1652397 (= lt!1445783 lt!1445824))))

(assert (=> b!4053790 (= lt!1445824 (++!11348 prefix!494 newSuffix!27))))

(assert (=> b!4053790 (= lt!1445783 (++!11348 lt!1445823 newSuffixResult!27))))

(declare-fun b!4053791 () Bool)

(declare-fun res!1652382 () Bool)

(assert (=> b!4053791 (=> res!1652382 e!2515312)))

(assert (=> b!4053791 (= res!1652382 (not (isPrefix!4033 lt!1445822 lt!1445824)))))

(declare-fun b!4053792 () Bool)

(declare-fun res!1652371 () Bool)

(assert (=> b!4053792 (=> (not res!1652371) (not e!2515339))))

(declare-fun rulesInvariant!5878 (LexerInterface!6535 List!43451) Bool)

(assert (=> b!4053792 (= res!1652371 (rulesInvariant!5878 thiss!21717 rules!2999))))

(declare-fun b!4053793 () Bool)

(assert (=> b!4053793 (= e!2515333 e!2515336)))

(declare-fun res!1652381 () Bool)

(assert (=> b!4053793 (=> res!1652381 e!2515336)))

(assert (=> b!4053793 (= res!1652381 (not (= lt!1445776 lt!1445824)))))

(assert (=> b!4053793 (= lt!1445776 (++!11348 lt!1445822 lt!1445815))))

(assert (=> b!4053793 (= lt!1445815 (getSuffix!2450 lt!1445824 lt!1445822))))

(assert (=> b!4053794 (= e!2515317 (and tp!1228927 tp!1228922))))

(declare-fun b!4053795 () Bool)

(assert (=> b!4053795 (= e!2515328 e!2515330)))

(declare-fun res!1652375 () Bool)

(assert (=> b!4053795 (=> res!1652375 e!2515330)))

(assert (=> b!4053795 (= res!1652375 (not (= lt!1445774 suffix!1299)))))

(assert (=> b!4053795 (= lt!1445774 (++!11348 newSuffix!27 lt!1445801))))

(assert (=> b!4053795 (= lt!1445801 (getSuffix!2450 suffix!1299 newSuffix!27))))

(declare-fun b!4053796 () Bool)

(declare-fun tp!1228929 () Bool)

(assert (=> b!4053796 (= e!2515329 (and tp_is_empty!20673 tp!1228929))))

(declare-fun b!4053797 () Bool)

(declare-fun res!1652378 () Bool)

(assert (=> b!4053797 (=> (not res!1652378) (not e!2515339))))

(declare-fun isEmpty!25855 (List!43451) Bool)

(assert (=> b!4053797 (= res!1652378 (not (isEmpty!25855 rules!2999)))))

(declare-fun b!4053798 () Bool)

(assert (=> b!4053798 (= e!2515323 e!2515332)))

(declare-fun res!1652385 () Bool)

(assert (=> b!4053798 (=> (not res!1652385) (not e!2515332))))

(declare-fun lt!1445768 () Option!9360)

(assert (=> b!4053798 (= res!1652385 (= (maxPrefix!3833 thiss!21717 rules!2999 lt!1445819) lt!1445768))))

(assert (=> b!4053798 (= lt!1445768 (Some!9359 lt!1445766))))

(assert (=> b!4053798 (= lt!1445766 (tuple2!42395 token!484 suffixResult!105))))

(assert (=> b!4053798 (= lt!1445819 (++!11348 prefix!494 suffix!1299))))

(declare-fun b!4053799 () Bool)

(declare-fun tp!1228928 () Bool)

(assert (=> b!4053799 (= e!2515326 (and e!2515316 tp!1228928))))

(declare-fun b!4053800 () Bool)

(assert (=> b!4053800 (= e!2515314 e!2515309)))

(declare-fun res!1652383 () Bool)

(assert (=> b!4053800 (=> res!1652383 e!2515309)))

(declare-fun lt!1445773 () Option!9360)

(assert (=> b!4053800 (= res!1652383 (not (= lt!1445773 lt!1445768)))))

(assert (=> b!4053800 (= lt!1445773 (Some!9359 (tuple2!42395 lt!1445782 suffixResult!105)))))

(assert (=> b!4053800 (= lt!1445773 (maxPrefixOneRule!2845 thiss!21717 (rule!10030 token!484) lt!1445819))))

(declare-fun lt!1445818 () TokenValue!7176)

(assert (=> b!4053800 (= lt!1445782 (Token!13031 lt!1445818 (rule!10030 token!484) lt!1445807 lt!1445823))))

(assert (=> b!4053800 (= lt!1445818 (apply!10135 (transformation!6946 (rule!10030 token!484)) (seqFromList!5163 lt!1445823)))))

(declare-fun lt!1445813 () Unit!62640)

(assert (=> b!4053800 (= lt!1445813 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1651 thiss!21717 rules!2999 lt!1445823 lt!1445819 suffixResult!105 (rule!10030 token!484)))))

(assert (=> b!4053800 (= lt!1445821 suffixResult!105)))

(declare-fun lt!1445803 () Unit!62640)

(assert (=> b!4053800 (= lt!1445803 (lemmaSamePrefixThenSameSuffix!2194 lt!1445823 lt!1445821 lt!1445823 suffixResult!105 lt!1445819))))

(assert (=> b!4053800 (isPrefix!4033 lt!1445823 lt!1445787)))

(declare-fun lt!1445781 () Unit!62640)

(assert (=> b!4053800 (= lt!1445781 (lemmaConcatTwoListThenFirstIsPrefix!2868 lt!1445823 lt!1445821))))

(declare-fun tp!1228925 () Bool)

(declare-fun b!4053801 () Bool)

(assert (=> b!4053801 (= e!2515315 (and tp!1228925 (inv!57917 (tag!7806 (rule!10030 token!484))) (inv!57920 (transformation!6946 (rule!10030 token!484))) e!2515308))))

(declare-fun b!4053802 () Bool)

(declare-fun res!1652374 () Bool)

(assert (=> b!4053802 (=> (not res!1652374) (not e!2515341))))

(assert (=> b!4053802 (= res!1652374 (= (value!218595 token!484) lt!1445818))))

(declare-fun b!4053803 () Bool)

(assert (=> b!4053803 (= e!2515341 (and (= (size!32394 token!484) lt!1445807) (= (originalCharacters!7546 token!484) lt!1445823)))))

(declare-fun b!4053804 () Bool)

(declare-fun res!1652398 () Bool)

(assert (=> b!4053804 (=> (not res!1652398) (not e!2515341))))

(assert (=> b!4053804 (= res!1652398 (= (size!32394 token!484) (size!32393 (originalCharacters!7546 token!484))))))

(assert (= (and start!382300 res!1652369) b!4053797))

(assert (= (and b!4053797 res!1652378) b!4053792))

(assert (= (and b!4053792 res!1652371) b!4053762))

(assert (= (and b!4053762 res!1652388) b!4053778))

(assert (= (and b!4053778 res!1652380) b!4053781))

(assert (= (and b!4053781 res!1652395) b!4053790))

(assert (= (and b!4053790 res!1652397) b!4053798))

(assert (= (and b!4053798 res!1652385) b!4053779))

(assert (= (and b!4053779 (not res!1652394)) b!4053771))

(assert (= (and b!4053771 (not res!1652386)) b!4053772))

(assert (= (and b!4053772 (not res!1652390)) b!4053783))

(assert (= (and b!4053783 (not res!1652373)) b!4053800))

(assert (= (and b!4053800 (not res!1652383)) b!4053785))

(assert (= (and b!4053785 (not res!1652387)) b!4053765))

(assert (= (and b!4053765 res!1652384) b!4053802))

(assert (= (and b!4053802 res!1652374) b!4053804))

(assert (= (and b!4053804 res!1652398) b!4053803))

(assert (= (and b!4053765 (not res!1652372)) b!4053786))

(assert (= (and b!4053786 (not res!1652393)) b!4053764))

(assert (= (and b!4053764 (not res!1652377)) b!4053795))

(assert (= (and b!4053795 (not res!1652375)) b!4053775))

(assert (= (and b!4053775 (not res!1652376)) b!4053777))

(assert (= (and b!4053777 (not res!1652396)) b!4053761))

(assert (= (and b!4053761 (not res!1652391)) b!4053793))

(assert (= (and b!4053793 (not res!1652381)) b!4053763))

(assert (= (and b!4053763 c!700269) b!4053774))

(assert (= (and b!4053763 (not c!700269)) b!4053788))

(assert (= (and b!4053774 res!1652370) b!4053789))

(assert (= (and b!4053763 (not res!1652389)) b!4053791))

(assert (= (and b!4053791 (not res!1652382)) b!4053784))

(assert (= (and b!4053784 (not res!1652379)) b!4053787))

(assert (= (and b!4053787 (not res!1652392)) b!4053769))

(assert (= (and b!4053769 (not res!1652399)) b!4053773))

(assert (= (and start!382300 ((_ is Cons!43325) prefix!494)) b!4053776))

(assert (= b!4053801 b!4053767))

(assert (= b!4053782 b!4053801))

(assert (= start!382300 b!4053782))

(assert (= (and start!382300 ((_ is Cons!43325) suffixResult!105)) b!4053766))

(assert (= (and start!382300 ((_ is Cons!43325) suffix!1299)) b!4053796))

(assert (= (and start!382300 ((_ is Cons!43325) newSuffix!27)) b!4053780))

(assert (= b!4053768 b!4053794))

(assert (= b!4053799 b!4053768))

(assert (= (and start!382300 ((_ is Cons!43327) rules!2999)) b!4053799))

(assert (= (and start!382300 ((_ is Cons!43325) newSuffixResult!27)) b!4053770))

(declare-fun m!4656223 () Bool)

(assert (=> b!4053764 m!4656223))

(declare-fun m!4656225 () Bool)

(assert (=> b!4053764 m!4656225))

(declare-fun m!4656227 () Bool)

(assert (=> b!4053764 m!4656227))

(declare-fun m!4656229 () Bool)

(assert (=> b!4053764 m!4656229))

(declare-fun m!4656231 () Bool)

(assert (=> b!4053764 m!4656231))

(assert (=> b!4053764 m!4656229))

(declare-fun m!4656233 () Bool)

(assert (=> b!4053764 m!4656233))

(declare-fun m!4656235 () Bool)

(assert (=> b!4053764 m!4656235))

(declare-fun m!4656237 () Bool)

(assert (=> b!4053764 m!4656237))

(declare-fun m!4656239 () Bool)

(assert (=> b!4053764 m!4656239))

(declare-fun m!4656241 () Bool)

(assert (=> b!4053764 m!4656241))

(declare-fun m!4656243 () Bool)

(assert (=> b!4053764 m!4656243))

(declare-fun m!4656245 () Bool)

(assert (=> b!4053764 m!4656245))

(assert (=> b!4053764 m!4656239))

(declare-fun m!4656247 () Bool)

(assert (=> b!4053764 m!4656247))

(declare-fun m!4656249 () Bool)

(assert (=> b!4053764 m!4656249))

(declare-fun m!4656251 () Bool)

(assert (=> b!4053764 m!4656251))

(declare-fun m!4656253 () Bool)

(assert (=> b!4053764 m!4656253))

(declare-fun m!4656255 () Bool)

(assert (=> b!4053764 m!4656255))

(declare-fun m!4656257 () Bool)

(assert (=> b!4053764 m!4656257))

(declare-fun m!4656259 () Bool)

(assert (=> b!4053797 m!4656259))

(declare-fun m!4656261 () Bool)

(assert (=> b!4053790 m!4656261))

(declare-fun m!4656263 () Bool)

(assert (=> b!4053790 m!4656263))

(declare-fun m!4656265 () Bool)

(assert (=> b!4053774 m!4656265))

(declare-fun m!4656267 () Bool)

(assert (=> b!4053774 m!4656267))

(declare-fun m!4656269 () Bool)

(assert (=> b!4053787 m!4656269))

(declare-fun m!4656271 () Bool)

(assert (=> b!4053801 m!4656271))

(declare-fun m!4656273 () Bool)

(assert (=> b!4053801 m!4656273))

(declare-fun m!4656275 () Bool)

(assert (=> b!4053798 m!4656275))

(declare-fun m!4656277 () Bool)

(assert (=> b!4053798 m!4656277))

(declare-fun m!4656279 () Bool)

(assert (=> b!4053791 m!4656279))

(declare-fun m!4656281 () Bool)

(assert (=> b!4053772 m!4656281))

(declare-fun m!4656283 () Bool)

(assert (=> b!4053772 m!4656283))

(declare-fun m!4656285 () Bool)

(assert (=> b!4053772 m!4656285))

(declare-fun m!4656287 () Bool)

(assert (=> b!4053772 m!4656287))

(declare-fun m!4656289 () Bool)

(assert (=> b!4053779 m!4656289))

(declare-fun m!4656291 () Bool)

(assert (=> b!4053779 m!4656291))

(declare-fun m!4656293 () Bool)

(assert (=> b!4053779 m!4656293))

(declare-fun m!4656295 () Bool)

(assert (=> b!4053779 m!4656295))

(declare-fun m!4656297 () Bool)

(assert (=> b!4053792 m!4656297))

(declare-fun m!4656299 () Bool)

(assert (=> b!4053765 m!4656299))

(declare-fun m!4656301 () Bool)

(assert (=> b!4053765 m!4656301))

(declare-fun m!4656303 () Bool)

(assert (=> b!4053765 m!4656303))

(declare-fun m!4656305 () Bool)

(assert (=> b!4053765 m!4656305))

(declare-fun m!4656307 () Bool)

(assert (=> b!4053771 m!4656307))

(declare-fun m!4656309 () Bool)

(assert (=> b!4053771 m!4656309))

(declare-fun m!4656311 () Bool)

(assert (=> b!4053771 m!4656311))

(declare-fun m!4656313 () Bool)

(assert (=> b!4053771 m!4656313))

(declare-fun m!4656315 () Bool)

(assert (=> b!4053771 m!4656315))

(declare-fun m!4656317 () Bool)

(assert (=> b!4053782 m!4656317))

(declare-fun m!4656319 () Bool)

(assert (=> b!4053786 m!4656319))

(declare-fun m!4656321 () Bool)

(assert (=> b!4053786 m!4656321))

(declare-fun m!4656323 () Bool)

(assert (=> b!4053786 m!4656323))

(declare-fun m!4656325 () Bool)

(assert (=> b!4053786 m!4656325))

(declare-fun m!4656327 () Bool)

(assert (=> b!4053804 m!4656327))

(declare-fun m!4656329 () Bool)

(assert (=> b!4053795 m!4656329))

(declare-fun m!4656331 () Bool)

(assert (=> b!4053795 m!4656331))

(declare-fun m!4656333 () Bool)

(assert (=> b!4053778 m!4656333))

(declare-fun m!4656335 () Bool)

(assert (=> b!4053777 m!4656335))

(declare-fun m!4656337 () Bool)

(assert (=> b!4053777 m!4656337))

(declare-fun m!4656339 () Bool)

(assert (=> b!4053777 m!4656339))

(declare-fun m!4656341 () Bool)

(assert (=> b!4053793 m!4656341))

(declare-fun m!4656343 () Bool)

(assert (=> b!4053793 m!4656343))

(declare-fun m!4656345 () Bool)

(assert (=> b!4053785 m!4656345))

(declare-fun m!4656347 () Bool)

(assert (=> b!4053785 m!4656347))

(declare-fun m!4656349 () Bool)

(assert (=> b!4053785 m!4656349))

(declare-fun m!4656351 () Bool)

(assert (=> b!4053785 m!4656351))

(declare-fun m!4656353 () Bool)

(assert (=> b!4053762 m!4656353))

(declare-fun m!4656355 () Bool)

(assert (=> b!4053762 m!4656355))

(declare-fun m!4656357 () Bool)

(assert (=> b!4053784 m!4656357))

(declare-fun m!4656359 () Bool)

(assert (=> b!4053763 m!4656359))

(declare-fun m!4656361 () Bool)

(assert (=> b!4053763 m!4656361))

(declare-fun m!4656363 () Bool)

(assert (=> b!4053763 m!4656363))

(assert (=> b!4053769 m!4656267))

(declare-fun m!4656365 () Bool)

(assert (=> b!4053781 m!4656365))

(declare-fun m!4656367 () Bool)

(assert (=> b!4053781 m!4656367))

(declare-fun m!4656369 () Bool)

(assert (=> b!4053781 m!4656369))

(assert (=> b!4053781 m!4656369))

(declare-fun m!4656371 () Bool)

(assert (=> b!4053781 m!4656371))

(declare-fun m!4656373 () Bool)

(assert (=> b!4053775 m!4656373))

(declare-fun m!4656375 () Bool)

(assert (=> b!4053775 m!4656375))

(declare-fun m!4656377 () Bool)

(assert (=> b!4053775 m!4656377))

(declare-fun m!4656379 () Bool)

(assert (=> b!4053800 m!4656379))

(declare-fun m!4656381 () Bool)

(assert (=> b!4053800 m!4656381))

(declare-fun m!4656383 () Bool)

(assert (=> b!4053800 m!4656383))

(declare-fun m!4656385 () Bool)

(assert (=> b!4053800 m!4656385))

(declare-fun m!4656387 () Bool)

(assert (=> b!4053800 m!4656387))

(declare-fun m!4656389 () Bool)

(assert (=> b!4053800 m!4656389))

(assert (=> b!4053800 m!4656389))

(declare-fun m!4656391 () Bool)

(assert (=> b!4053800 m!4656391))

(declare-fun m!4656393 () Bool)

(assert (=> b!4053768 m!4656393))

(declare-fun m!4656395 () Bool)

(assert (=> b!4053768 m!4656395))

(declare-fun m!4656397 () Bool)

(assert (=> b!4053783 m!4656397))

(declare-fun m!4656399 () Bool)

(assert (=> b!4053783 m!4656399))

(declare-fun m!4656401 () Bool)

(assert (=> b!4053783 m!4656401))

(declare-fun m!4656403 () Bool)

(assert (=> b!4053783 m!4656403))

(declare-fun m!4656405 () Bool)

(assert (=> start!382300 m!4656405))

(declare-fun m!4656407 () Bool)

(assert (=> b!4053773 m!4656407))

(declare-fun m!4656409 () Bool)

(assert (=> b!4053773 m!4656409))

(declare-fun m!4656411 () Bool)

(assert (=> b!4053773 m!4656411))

(check-sat (not b_next!113503) b_and!311751 (not b!4053786) b_and!311747 (not b!4053766) (not b!4053799) (not b!4053793) (not b!4053797) b_and!311749 (not b!4053772) (not b!4053795) (not start!382300) (not b_next!113497) (not b!4053769) (not b_next!113501) (not b!4053777) (not b!4053804) tp_is_empty!20673 (not b!4053764) (not b!4053773) b_and!311753 (not b!4053763) (not b!4053779) (not b!4053800) (not b!4053762) (not b!4053787) (not b!4053770) (not b!4053774) (not b_next!113499) (not b!4053776) (not b!4053801) (not b!4053790) (not b!4053782) (not b!4053785) (not b!4053783) (not b!4053792) (not b!4053765) (not b!4053781) (not b!4053780) (not b!4053768) (not b!4053771) (not b!4053796) (not b!4053798) (not b!4053778) (not b!4053784) (not b!4053775) (not b!4053791))
(check-sat (not b_next!113503) (not b_next!113501) b_and!311751 b_and!311753 b_and!311747 (not b_next!113499) b_and!311749 (not b_next!113497))
