; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382580 () Bool)

(assert start!382580)

(declare-fun b!4056994 () Bool)

(declare-fun b_free!112905 () Bool)

(declare-fun b_next!113609 () Bool)

(assert (=> b!4056994 (= b_free!112905 (not b_next!113609))))

(declare-fun tp!1229567 () Bool)

(declare-fun b_and!311939 () Bool)

(assert (=> b!4056994 (= tp!1229567 b_and!311939)))

(declare-fun b_free!112907 () Bool)

(declare-fun b_next!113611 () Bool)

(assert (=> b!4056994 (= b_free!112907 (not b_next!113611))))

(declare-fun tp!1229571 () Bool)

(declare-fun b_and!311941 () Bool)

(assert (=> b!4056994 (= tp!1229571 b_and!311941)))

(declare-fun b!4056971 () Bool)

(declare-fun b_free!112909 () Bool)

(declare-fun b_next!113613 () Bool)

(assert (=> b!4056971 (= b_free!112909 (not b_next!113613))))

(declare-fun tp!1229574 () Bool)

(declare-fun b_and!311943 () Bool)

(assert (=> b!4056971 (= tp!1229574 b_and!311943)))

(declare-fun b_free!112911 () Bool)

(declare-fun b_next!113615 () Bool)

(assert (=> b!4056971 (= b_free!112911 (not b_next!113615))))

(declare-fun tp!1229565 () Bool)

(declare-fun b_and!311945 () Bool)

(assert (=> b!4056971 (= tp!1229565 b_and!311945)))

(declare-fun b!4056962 () Bool)

(declare-fun e!2517569 () Bool)

(declare-fun e!2517567 () Bool)

(assert (=> b!4056962 (= e!2517569 e!2517567)))

(declare-fun res!1654357 () Bool)

(assert (=> b!4056962 (=> res!1654357 e!2517567)))

(declare-datatypes ((C!23912 0))(
  ( (C!23913 (val!14050 Int)) )
))
(declare-datatypes ((List!43489 0))(
  ( (Nil!43365) (Cons!43365 (h!48785 C!23912) (t!336294 List!43489)) )
))
(declare-fun lt!1448600 () List!43489)

(declare-fun lt!1448578 () List!43489)

(declare-fun isPrefix!4045 (List!43489 List!43489) Bool)

(assert (=> b!4056962 (= res!1654357 (not (isPrefix!4045 lt!1448600 lt!1448578)))))

(declare-fun prefix!494 () List!43489)

(assert (=> b!4056962 (isPrefix!4045 prefix!494 lt!1448578)))

(declare-datatypes ((Unit!62734 0))(
  ( (Unit!62735) )
))
(declare-fun lt!1448560 () Unit!62734)

(declare-fun suffix!1299 () List!43489)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2880 (List!43489 List!43489) Unit!62734)

(assert (=> b!4056962 (= lt!1448560 (lemmaConcatTwoListThenFirstIsPrefix!2880 prefix!494 suffix!1299))))

(declare-fun lt!1448589 () List!43489)

(assert (=> b!4056962 (isPrefix!4045 lt!1448600 lt!1448589)))

(declare-fun lt!1448593 () Unit!62734)

(declare-fun suffixResult!105 () List!43489)

(assert (=> b!4056962 (= lt!1448593 (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448600 suffixResult!105))))

(declare-fun b!4056963 () Bool)

(declare-fun e!2517553 () Bool)

(declare-fun tp_is_empty!20697 () Bool)

(declare-fun tp!1229570 () Bool)

(assert (=> b!4056963 (= e!2517553 (and tp_is_empty!20697 tp!1229570))))

(declare-fun b!4056964 () Bool)

(declare-fun e!2517560 () Bool)

(declare-fun e!2517574 () Bool)

(assert (=> b!4056964 (= e!2517560 e!2517574)))

(declare-fun res!1654377 () Bool)

(assert (=> b!4056964 (=> res!1654377 e!2517574)))

(declare-datatypes ((IArray!26343 0))(
  ( (IArray!26344 (innerList!13229 List!43489)) )
))
(declare-datatypes ((Conc!13169 0))(
  ( (Node!13169 (left!32638 Conc!13169) (right!32968 Conc!13169) (csize!26568 Int) (cheight!13380 Int)) (Leaf!20355 (xs!16475 IArray!26343) (csize!26569 Int)) (Empty!13169) )
))
(declare-datatypes ((BalanceConc!25932 0))(
  ( (BalanceConc!25933 (c!700632 Conc!13169)) )
))
(declare-datatypes ((List!43490 0))(
  ( (Nil!43366) (Cons!43366 (h!48786 (_ BitVec 16)) (t!336295 List!43490)) )
))
(declare-datatypes ((TokenValue!7188 0))(
  ( (FloatLiteralValue!14376 (text!50761 List!43490)) (TokenValueExt!7187 (__x!26593 Int)) (Broken!35940 (value!218911 List!43490)) (Object!7311) (End!7188) (Def!7188) (Underscore!7188) (Match!7188) (Else!7188) (Error!7188) (Case!7188) (If!7188) (Extends!7188) (Abstract!7188) (Class!7188) (Val!7188) (DelimiterValue!14376 (del!7248 List!43490)) (KeywordValue!7194 (value!218912 List!43490)) (CommentValue!14376 (value!218913 List!43490)) (WhitespaceValue!14376 (value!218914 List!43490)) (IndentationValue!7188 (value!218915 List!43490)) (String!49657) (Int32!7188) (Broken!35941 (value!218916 List!43490)) (Boolean!7189) (Unit!62736) (OperatorValue!7191 (op!7248 List!43490)) (IdentifierValue!14376 (value!218917 List!43490)) (IdentifierValue!14377 (value!218918 List!43490)) (WhitespaceValue!14377 (value!218919 List!43490)) (True!14376) (False!14376) (Broken!35942 (value!218920 List!43490)) (Broken!35943 (value!218921 List!43490)) (True!14377) (RightBrace!7188) (RightBracket!7188) (Colon!7188) (Null!7188) (Comma!7188) (LeftBracket!7188) (False!14377) (LeftBrace!7188) (ImaginaryLiteralValue!7188 (text!50762 List!43490)) (StringLiteralValue!21564 (value!218922 List!43490)) (EOFValue!7188 (value!218923 List!43490)) (IdentValue!7188 (value!218924 List!43490)) (DelimiterValue!14377 (value!218925 List!43490)) (DedentValue!7188 (value!218926 List!43490)) (NewLineValue!7188 (value!218927 List!43490)) (IntegerValue!21564 (value!218928 (_ BitVec 32)) (text!50763 List!43490)) (IntegerValue!21565 (value!218929 Int) (text!50764 List!43490)) (Times!7188) (Or!7188) (Equal!7188) (Minus!7188) (Broken!35944 (value!218930 List!43490)) (And!7188) (Div!7188) (LessEqual!7188) (Mod!7188) (Concat!19051) (Not!7188) (Plus!7188) (SpaceValue!7188 (value!218931 List!43490)) (IntegerValue!21566 (value!218932 Int) (text!50765 List!43490)) (StringLiteralValue!21565 (text!50766 List!43490)) (FloatLiteralValue!14377 (text!50767 List!43490)) (BytesLiteralValue!7188 (value!218933 List!43490)) (CommentValue!14377 (value!218934 List!43490)) (StringLiteralValue!21566 (value!218935 List!43490)) (ErrorTokenValue!7188 (msg!7249 List!43490)) )
))
(declare-datatypes ((Regex!11863 0))(
  ( (ElementMatch!11863 (c!700633 C!23912)) (Concat!19052 (regOne!24238 Regex!11863) (regTwo!24238 Regex!11863)) (EmptyExpr!11863) (Star!11863 (reg!12192 Regex!11863)) (EmptyLang!11863) (Union!11863 (regOne!24239 Regex!11863) (regTwo!24239 Regex!11863)) )
))
(declare-datatypes ((String!49658 0))(
  ( (String!49659 (value!218936 String)) )
))
(declare-datatypes ((TokenValueInjection!13804 0))(
  ( (TokenValueInjection!13805 (toValue!9514 Int) (toChars!9373 Int)) )
))
(declare-datatypes ((Rule!13716 0))(
  ( (Rule!13717 (regex!6958 Regex!11863) (tag!7818 String!49658) (isSeparator!6958 Bool) (transformation!6958 TokenValueInjection!13804)) )
))
(declare-datatypes ((Token!13054 0))(
  ( (Token!13055 (value!218937 TokenValue!7188) (rule!10046 Rule!13716) (size!32421 Int) (originalCharacters!7558 List!43489)) )
))
(declare-fun token!484 () Token!13054)

(declare-datatypes ((tuple2!42426 0))(
  ( (tuple2!42427 (_1!24347 Token!13054) (_2!24347 List!43489)) )
))
(declare-datatypes ((Option!9372 0))(
  ( (None!9371) (Some!9371 (v!39787 tuple2!42426)) )
))
(declare-fun lt!1448577 () Option!9372)

(declare-datatypes ((List!43491 0))(
  ( (Nil!43367) (Cons!43367 (h!48787 Rule!13716) (t!336296 List!43491)) )
))
(declare-fun rules!2999 () List!43491)

(declare-fun getIndex!570 (List!43491 Rule!13716) Int)

(assert (=> b!4056964 (= res!1654377 (>= (getIndex!570 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (getIndex!570 rules!2999 (rule!10046 token!484))))))

(declare-fun newSuffixResult!27 () List!43489)

(assert (=> b!4056964 (= (_2!24347 (v!39787 lt!1448577)) newSuffixResult!27)))

(declare-fun lt!1448557 () List!43489)

(declare-fun lt!1448596 () Unit!62734)

(declare-fun lt!1448584 () List!43489)

(declare-fun lemmaSamePrefixThenSameSuffix!2206 (List!43489 List!43489 List!43489 List!43489 List!43489) Unit!62734)

(assert (=> b!4056964 (= lt!1448596 (lemmaSamePrefixThenSameSuffix!2206 lt!1448584 (_2!24347 (v!39787 lt!1448577)) lt!1448600 newSuffixResult!27 lt!1448557))))

(assert (=> b!4056964 (= lt!1448584 lt!1448600)))

(declare-fun lt!1448564 () Unit!62734)

(declare-fun lemmaIsPrefixSameLengthThenSameList!935 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> b!4056964 (= lt!1448564 (lemmaIsPrefixSameLengthThenSameList!935 lt!1448584 lt!1448600 lt!1448557))))

(declare-fun b!4056965 () Bool)

(declare-fun res!1654352 () Bool)

(declare-fun e!2517546 () Bool)

(assert (=> b!4056965 (=> (not res!1654352) (not e!2517546))))

(declare-fun newSuffix!27 () List!43489)

(declare-fun size!32422 (List!43489) Int)

(assert (=> b!4056965 (= res!1654352 (>= (size!32422 suffix!1299) (size!32422 newSuffix!27)))))

(declare-fun b!4056966 () Bool)

(declare-fun e!2517547 () Bool)

(declare-fun e!2517541 () Bool)

(assert (=> b!4056966 (= e!2517547 e!2517541)))

(declare-fun res!1654381 () Bool)

(assert (=> b!4056966 (=> res!1654381 e!2517541)))

(assert (=> b!4056966 (= res!1654381 (not (isPrefix!4045 lt!1448584 lt!1448578)))))

(declare-fun lt!1448595 () List!43489)

(assert (=> b!4056966 (isPrefix!4045 lt!1448584 lt!1448595)))

(declare-fun lt!1448542 () List!43489)

(declare-fun lt!1448543 () Unit!62734)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!838 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> b!4056966 (= lt!1448543 (lemmaPrefixStaysPrefixWhenAddingToSuffix!838 lt!1448584 lt!1448557 lt!1448542))))

(declare-fun b!4056967 () Bool)

(declare-fun res!1654355 () Bool)

(assert (=> b!4056967 (=> res!1654355 e!2517560)))

(assert (=> b!4056967 (= res!1654355 (not (isPrefix!4045 lt!1448584 lt!1448557)))))

(declare-fun b!4056968 () Bool)

(declare-fun res!1654360 () Bool)

(declare-fun e!2517558 () Bool)

(assert (=> b!4056968 (=> (not res!1654360) (not e!2517558))))

(declare-fun lt!1448582 () TokenValue!7188)

(assert (=> b!4056968 (= res!1654360 (= (value!218937 token!484) lt!1448582))))

(declare-fun b!4056969 () Bool)

(declare-fun e!2517549 () Bool)

(declare-fun tp!1229566 () Bool)

(assert (=> b!4056969 (= e!2517549 (and tp_is_empty!20697 tp!1229566))))

(declare-fun res!1654354 () Bool)

(assert (=> start!382580 (=> (not res!1654354) (not e!2517546))))

(declare-datatypes ((LexerInterface!6547 0))(
  ( (LexerInterfaceExt!6544 (__x!26594 Int)) (Lexer!6545) )
))
(declare-fun thiss!21717 () LexerInterface!6547)

(get-info :version)

(assert (=> start!382580 (= res!1654354 ((_ is Lexer!6545) thiss!21717))))

(assert (=> start!382580 e!2517546))

(declare-fun e!2517552 () Bool)

(assert (=> start!382580 e!2517552))

(declare-fun e!2517555 () Bool)

(declare-fun inv!57970 (Token!13054) Bool)

(assert (=> start!382580 (and (inv!57970 token!484) e!2517555)))

(assert (=> start!382580 e!2517549))

(assert (=> start!382580 e!2517553))

(declare-fun e!2517540 () Bool)

(assert (=> start!382580 e!2517540))

(assert (=> start!382580 true))

(declare-fun e!2517545 () Bool)

(assert (=> start!382580 e!2517545))

(declare-fun e!2517554 () Bool)

(assert (=> start!382580 e!2517554))

(declare-fun b!4056970 () Bool)

(declare-fun e!2517542 () Bool)

(assert (=> b!4056970 (= e!2517542 e!2517547)))

(declare-fun res!1654383 () Bool)

(assert (=> b!4056970 (=> res!1654383 e!2517547)))

(assert (=> b!4056970 (= res!1654383 (not (= lt!1448595 lt!1448578)))))

(declare-fun lt!1448563 () List!43489)

(declare-fun ++!11360 (List!43489 List!43489) List!43489)

(assert (=> b!4056970 (= lt!1448595 (++!11360 prefix!494 lt!1448563))))

(assert (=> b!4056970 (= lt!1448595 (++!11360 lt!1448557 lt!1448542))))

(declare-fun lt!1448592 () Unit!62734)

(declare-fun lemmaConcatAssociativity!2662 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> b!4056970 (= lt!1448592 (lemmaConcatAssociativity!2662 prefix!494 newSuffix!27 lt!1448542))))

(declare-fun e!2517561 () Bool)

(assert (=> b!4056971 (= e!2517561 (and tp!1229574 tp!1229565))))

(declare-fun b!4056972 () Bool)

(declare-fun e!2517566 () Bool)

(declare-fun tp!1229562 () Bool)

(assert (=> b!4056972 (= e!2517545 (and e!2517566 tp!1229562))))

(declare-fun b!4056973 () Bool)

(declare-fun e!2517563 () Bool)

(declare-fun e!2517557 () Bool)

(assert (=> b!4056973 (= e!2517563 e!2517557)))

(declare-fun res!1654363 () Bool)

(assert (=> b!4056973 (=> res!1654363 e!2517557)))

(declare-fun lt!1448561 () Option!9372)

(assert (=> b!4056973 (= res!1654363 (not (= lt!1448561 (Some!9371 (v!39787 lt!1448577)))))))

(assert (=> b!4056973 (isPrefix!4045 lt!1448584 (++!11360 lt!1448584 newSuffixResult!27))))

(declare-fun lt!1448598 () Unit!62734)

(assert (=> b!4056973 (= lt!1448598 (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448584 newSuffixResult!27))))

(declare-fun lt!1448602 () List!43489)

(assert (=> b!4056973 (isPrefix!4045 lt!1448584 lt!1448602)))

(assert (=> b!4056973 (= lt!1448602 (++!11360 lt!1448584 (_2!24347 (v!39787 lt!1448577))))))

(declare-fun lt!1448553 () Unit!62734)

(assert (=> b!4056973 (= lt!1448553 (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448584 (_2!24347 (v!39787 lt!1448577))))))

(declare-fun lt!1448555 () Int)

(declare-fun lt!1448567 () TokenValue!7188)

(assert (=> b!4056973 (= lt!1448561 (Some!9371 (tuple2!42427 (Token!13055 lt!1448567 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448555 lt!1448584) (_2!24347 (v!39787 lt!1448577)))))))

(declare-fun maxPrefixOneRule!2857 (LexerInterface!6547 Rule!13716 List!43489) Option!9372)

(assert (=> b!4056973 (= lt!1448561 (maxPrefixOneRule!2857 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448557))))

(assert (=> b!4056973 (= lt!1448555 (size!32422 lt!1448584))))

(declare-fun apply!10147 (TokenValueInjection!13804 BalanceConc!25932) TokenValue!7188)

(declare-fun seqFromList!5175 (List!43489) BalanceConc!25932)

(assert (=> b!4056973 (= lt!1448567 (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (seqFromList!5175 lt!1448584)))))

(declare-fun lt!1448565 () Unit!62734)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1663 (LexerInterface!6547 List!43491 List!43489 List!43489 List!43489 Rule!13716) Unit!62734)

(assert (=> b!4056973 (= lt!1448565 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1663 thiss!21717 rules!2999 lt!1448584 lt!1448557 (_2!24347 (v!39787 lt!1448577)) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(declare-fun list!16160 (BalanceConc!25932) List!43489)

(declare-fun charsOf!4774 (Token!13054) BalanceConc!25932)

(assert (=> b!4056973 (= lt!1448584 (list!16160 (charsOf!4774 (_1!24347 (v!39787 lt!1448577)))))))

(declare-fun lt!1448603 () Unit!62734)

(declare-fun lemmaInv!1167 (TokenValueInjection!13804) Unit!62734)

(assert (=> b!4056973 (= lt!1448603 (lemmaInv!1167 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(declare-fun ruleValid!2888 (LexerInterface!6547 Rule!13716) Bool)

(assert (=> b!4056973 (ruleValid!2888 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))

(declare-fun lt!1448549 () Unit!62734)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1958 (LexerInterface!6547 Rule!13716 List!43491) Unit!62734)

(assert (=> b!4056973 (= lt!1448549 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1958 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))) rules!2999))))

(declare-fun lt!1448568 () Unit!62734)

(declare-fun lemmaCharactersSize!1477 (Token!13054) Unit!62734)

(assert (=> b!4056973 (= lt!1448568 (lemmaCharactersSize!1477 token!484))))

(declare-fun lt!1448581 () Unit!62734)

(assert (=> b!4056973 (= lt!1448581 (lemmaCharactersSize!1477 (_1!24347 (v!39787 lt!1448577))))))

(declare-fun b!4056974 () Bool)

(declare-fun tp!1229564 () Bool)

(assert (=> b!4056974 (= e!2517552 (and tp_is_empty!20697 tp!1229564))))

(declare-fun b!4056975 () Bool)

(declare-fun res!1654372 () Bool)

(assert (=> b!4056975 (=> (not res!1654372) (not e!2517546))))

(declare-fun rulesInvariant!5890 (LexerInterface!6547 List!43491) Bool)

(assert (=> b!4056975 (= res!1654372 (rulesInvariant!5890 thiss!21717 rules!2999))))

(declare-fun b!4056976 () Bool)

(declare-fun e!2517575 () Bool)

(declare-fun e!2517568 () Bool)

(assert (=> b!4056976 (= e!2517575 e!2517568)))

(declare-fun res!1654374 () Bool)

(assert (=> b!4056976 (=> res!1654374 e!2517568)))

(declare-fun matchR!5816 (Regex!11863 List!43489) Bool)

(assert (=> b!4056976 (= res!1654374 (not (matchR!5816 (regex!6958 (rule!10046 token!484)) lt!1448600)))))

(assert (=> b!4056976 (isPrefix!4045 lt!1448600 lt!1448557)))

(declare-fun lt!1448562 () Unit!62734)

(assert (=> b!4056976 (= lt!1448562 (lemmaPrefixStaysPrefixWhenAddingToSuffix!838 lt!1448600 prefix!494 newSuffix!27))))

(declare-fun lt!1448556 () Unit!62734)

(assert (=> b!4056976 (= lt!1448556 (lemmaPrefixStaysPrefixWhenAddingToSuffix!838 lt!1448600 prefix!494 suffix!1299))))

(declare-fun b!4056977 () Bool)

(declare-fun e!2517570 () Bool)

(assert (=> b!4056977 (= e!2517570 false)))

(declare-fun b!4056978 () Bool)

(declare-fun e!2517551 () Unit!62734)

(declare-fun Unit!62737 () Unit!62734)

(assert (=> b!4056978 (= e!2517551 Unit!62737)))

(declare-fun lt!1448551 () Unit!62734)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!484 (LexerInterface!6547 List!43491 Rule!13716 List!43489 List!43489 List!43489 Rule!13716) Unit!62734)

(assert (=> b!4056978 (= lt!1448551 (lemmaMaxPrefixOutputsMaxPrefix!484 thiss!21717 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448584 lt!1448557 lt!1448600 (rule!10046 token!484)))))

(assert (=> b!4056978 false))

(declare-fun b!4056979 () Bool)

(declare-fun res!1654379 () Bool)

(assert (=> b!4056979 (=> (not res!1654379) (not e!2517558))))

(assert (=> b!4056979 (= res!1654379 (= (size!32421 token!484) (size!32422 (originalCharacters!7558 token!484))))))

(declare-fun b!4056980 () Bool)

(declare-fun res!1654364 () Bool)

(assert (=> b!4056980 (=> (not res!1654364) (not e!2517546))))

(declare-fun isEmpty!25876 (List!43491) Bool)

(assert (=> b!4056980 (= res!1654364 (not (isEmpty!25876 rules!2999)))))

(declare-fun b!4056981 () Bool)

(declare-fun res!1654358 () Bool)

(assert (=> b!4056981 (=> res!1654358 e!2517574)))

(declare-fun contains!8626 (List!43491 Rule!13716) Bool)

(assert (=> b!4056981 (= res!1654358 (not (contains!8626 rules!2999 (rule!10046 token!484))))))

(declare-fun b!4056982 () Bool)

(declare-fun e!2517576 () Bool)

(declare-fun e!2517544 () Bool)

(assert (=> b!4056982 (= e!2517576 e!2517544)))

(declare-fun res!1654353 () Bool)

(assert (=> b!4056982 (=> (not res!1654353) (not e!2517544))))

(declare-fun lt!1448574 () List!43489)

(assert (=> b!4056982 (= res!1654353 (= lt!1448574 lt!1448557))))

(assert (=> b!4056982 (= lt!1448557 (++!11360 prefix!494 newSuffix!27))))

(assert (=> b!4056982 (= lt!1448574 (++!11360 lt!1448600 newSuffixResult!27))))

(declare-fun e!2517556 () Bool)

(declare-fun b!4056983 () Bool)

(declare-fun tp!1229569 () Bool)

(declare-fun inv!57967 (String!49658) Bool)

(declare-fun inv!57971 (TokenValueInjection!13804) Bool)

(assert (=> b!4056983 (= e!2517566 (and tp!1229569 (inv!57967 (tag!7818 (h!48787 rules!2999))) (inv!57971 (transformation!6958 (h!48787 rules!2999))) e!2517556))))

(declare-fun b!4056984 () Bool)

(assert (=> b!4056984 (= e!2517546 e!2517576)))

(declare-fun res!1654367 () Bool)

(assert (=> b!4056984 (=> (not res!1654367) (not e!2517576))))

(declare-fun lt!1448572 () Int)

(declare-fun lt!1448591 () Int)

(assert (=> b!4056984 (= res!1654367 (>= lt!1448572 lt!1448591))))

(assert (=> b!4056984 (= lt!1448591 (size!32422 lt!1448600))))

(assert (=> b!4056984 (= lt!1448572 (size!32422 prefix!494))))

(assert (=> b!4056984 (= lt!1448600 (list!16160 (charsOf!4774 token!484)))))

(declare-fun b!4056985 () Bool)

(assert (=> b!4056985 (= e!2517558 (and (= (size!32421 token!484) lt!1448591) (= (originalCharacters!7558 token!484) lt!1448600)))))

(declare-fun b!4056986 () Bool)

(declare-fun Unit!62738 () Unit!62734)

(assert (=> b!4056986 (= e!2517551 Unit!62738)))

(declare-fun b!4056987 () Bool)

(declare-fun res!1654378 () Bool)

(assert (=> b!4056987 (=> res!1654378 e!2517541)))

(assert (=> b!4056987 (= res!1654378 (not (= lt!1448602 lt!1448557)))))

(declare-fun b!4056988 () Bool)

(declare-fun e!2517562 () Bool)

(declare-fun e!2517565 () Bool)

(assert (=> b!4056988 (= e!2517562 e!2517565)))

(declare-fun res!1654356 () Bool)

(assert (=> b!4056988 (=> res!1654356 e!2517565)))

(declare-fun lt!1448552 () List!43489)

(declare-fun lt!1448554 () List!43489)

(assert (=> b!4056988 (= res!1654356 (or (not (= lt!1448578 lt!1448554)) (not (= lt!1448578 lt!1448552))))))

(assert (=> b!4056988 (= lt!1448554 lt!1448552)))

(declare-fun lt!1448583 () List!43489)

(assert (=> b!4056988 (= lt!1448552 (++!11360 lt!1448600 lt!1448583))))

(declare-fun lt!1448550 () List!43489)

(assert (=> b!4056988 (= lt!1448554 (++!11360 lt!1448550 suffix!1299))))

(declare-fun lt!1448575 () List!43489)

(assert (=> b!4056988 (= lt!1448583 (++!11360 lt!1448575 suffix!1299))))

(declare-fun lt!1448597 () Unit!62734)

(assert (=> b!4056988 (= lt!1448597 (lemmaConcatAssociativity!2662 lt!1448600 lt!1448575 suffix!1299))))

(declare-fun b!4056989 () Bool)

(declare-fun e!2517573 () Unit!62734)

(declare-fun Unit!62739 () Unit!62734)

(assert (=> b!4056989 (= e!2517573 Unit!62739)))

(declare-fun lt!1448588 () Unit!62734)

(assert (=> b!4056989 (= lt!1448588 (lemmaMaxPrefixOutputsMaxPrefix!484 thiss!21717 rules!2999 (rule!10046 token!484) lt!1448600 lt!1448578 lt!1448584 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(declare-fun res!1654366 () Bool)

(assert (=> b!4056989 (= res!1654366 (not (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448584)))))

(assert (=> b!4056989 (=> (not res!1654366) (not e!2517570))))

(assert (=> b!4056989 e!2517570))

(declare-fun b!4056990 () Bool)

(declare-fun e!2517550 () Bool)

(assert (=> b!4056990 (= e!2517544 e!2517550)))

(declare-fun res!1654376 () Bool)

(assert (=> b!4056990 (=> (not res!1654376) (not e!2517550))))

(declare-fun lt!1448544 () Option!9372)

(declare-fun lt!1448570 () Option!9372)

(assert (=> b!4056990 (= res!1654376 (= lt!1448544 lt!1448570))))

(declare-fun lt!1448547 () tuple2!42426)

(assert (=> b!4056990 (= lt!1448570 (Some!9371 lt!1448547))))

(declare-fun maxPrefix!3845 (LexerInterface!6547 List!43491 List!43489) Option!9372)

(assert (=> b!4056990 (= lt!1448544 (maxPrefix!3845 thiss!21717 rules!2999 lt!1448578))))

(assert (=> b!4056990 (= lt!1448547 (tuple2!42427 token!484 suffixResult!105))))

(assert (=> b!4056990 (= lt!1448578 (++!11360 prefix!494 suffix!1299))))

(declare-fun b!4056991 () Bool)

(declare-fun res!1654375 () Bool)

(assert (=> b!4056991 (=> (not res!1654375) (not e!2517546))))

(assert (=> b!4056991 (= res!1654375 (isPrefix!4045 newSuffix!27 suffix!1299))))

(declare-fun b!4056992 () Bool)

(declare-fun e!2517564 () Bool)

(declare-fun tp!1229573 () Bool)

(declare-fun inv!21 (TokenValue!7188) Bool)

(assert (=> b!4056992 (= e!2517555 (and (inv!21 (value!218937 token!484)) e!2517564 tp!1229573))))

(declare-fun b!4056993 () Bool)

(declare-fun e!2517571 () Bool)

(assert (=> b!4056993 (= e!2517571 e!2517563)))

(declare-fun res!1654362 () Bool)

(assert (=> b!4056993 (=> res!1654362 e!2517563)))

(assert (=> b!4056993 (= res!1654362 (not ((_ is Some!9371) lt!1448577)))))

(assert (=> b!4056993 (= lt!1448577 (maxPrefix!3845 thiss!21717 rules!2999 lt!1448557))))

(declare-fun lt!1448545 () Token!13054)

(declare-fun lt!1448587 () List!43489)

(assert (=> b!4056993 (and (= suffixResult!105 lt!1448587) (= lt!1448547 (tuple2!42427 lt!1448545 lt!1448587)))))

(declare-fun lt!1448569 () Unit!62734)

(assert (=> b!4056993 (= lt!1448569 (lemmaSamePrefixThenSameSuffix!2206 lt!1448600 suffixResult!105 lt!1448600 lt!1448587 lt!1448578))))

(declare-fun lt!1448566 () List!43489)

(assert (=> b!4056993 (isPrefix!4045 lt!1448600 lt!1448566)))

(declare-fun lt!1448586 () Unit!62734)

(assert (=> b!4056993 (= lt!1448586 (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448600 lt!1448587))))

(assert (=> b!4056994 (= e!2517556 (and tp!1229567 tp!1229571))))

(declare-fun b!4056995 () Bool)

(declare-fun tp!1229563 () Bool)

(assert (=> b!4056995 (= e!2517554 (and tp_is_empty!20697 tp!1229563))))

(declare-fun b!4056996 () Bool)

(assert (=> b!4056996 (= e!2517568 e!2517571)))

(declare-fun res!1654370 () Bool)

(assert (=> b!4056996 (=> res!1654370 e!2517571)))

(assert (=> b!4056996 (= res!1654370 (not (= lt!1448566 lt!1448578)))))

(assert (=> b!4056996 (= lt!1448566 (++!11360 lt!1448600 lt!1448587))))

(declare-fun getSuffix!2462 (List!43489 List!43489) List!43489)

(assert (=> b!4056996 (= lt!1448587 (getSuffix!2462 lt!1448578 lt!1448600))))

(assert (=> b!4056996 e!2517558))

(declare-fun res!1654365 () Bool)

(assert (=> b!4056996 (=> (not res!1654365) (not e!2517558))))

(assert (=> b!4056996 (= res!1654365 (isPrefix!4045 lt!1448578 lt!1448578))))

(declare-fun lt!1448576 () Unit!62734)

(declare-fun lemmaIsPrefixRefl!2612 (List!43489 List!43489) Unit!62734)

(assert (=> b!4056996 (= lt!1448576 (lemmaIsPrefixRefl!2612 lt!1448578 lt!1448578))))

(declare-fun b!4056997 () Bool)

(declare-fun tp!1229568 () Bool)

(assert (=> b!4056997 (= e!2517540 (and tp_is_empty!20697 tp!1229568))))

(declare-fun b!4056998 () Bool)

(declare-fun res!1654369 () Bool)

(assert (=> b!4056998 (=> res!1654369 e!2517574)))

(assert (=> b!4056998 (= res!1654369 (not (contains!8626 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(declare-fun b!4056999 () Bool)

(declare-fun Unit!62740 () Unit!62734)

(assert (=> b!4056999 (= e!2517573 Unit!62740)))

(declare-fun b!4057000 () Bool)

(declare-fun isEmpty!25877 (List!43489) Bool)

(assert (=> b!4057000 (= e!2517574 (not (isEmpty!25877 lt!1448600)))))

(declare-fun b!4057001 () Bool)

(assert (=> b!4057001 (= e!2517550 (not e!2517569))))

(declare-fun res!1654368 () Bool)

(assert (=> b!4057001 (=> res!1654368 e!2517569)))

(assert (=> b!4057001 (= res!1654368 (not (= lt!1448589 lt!1448578)))))

(assert (=> b!4057001 (= lt!1448589 (++!11360 lt!1448600 suffixResult!105))))

(declare-fun lt!1448558 () Unit!62734)

(assert (=> b!4057001 (= lt!1448558 (lemmaInv!1167 (transformation!6958 (rule!10046 token!484))))))

(assert (=> b!4057001 (ruleValid!2888 thiss!21717 (rule!10046 token!484))))

(declare-fun lt!1448594 () Unit!62734)

(assert (=> b!4057001 (= lt!1448594 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1958 thiss!21717 (rule!10046 token!484) rules!2999))))

(declare-fun b!4057002 () Bool)

(declare-fun res!1654371 () Bool)

(assert (=> b!4057002 (=> res!1654371 e!2517574)))

(assert (=> b!4057002 (= res!1654371 (not (= lt!1448544 (Some!9371 (tuple2!42427 lt!1448545 lt!1448587)))))))

(declare-fun b!4057003 () Bool)

(assert (=> b!4057003 (= e!2517557 e!2517542)))

(declare-fun res!1654361 () Bool)

(assert (=> b!4057003 (=> res!1654361 e!2517542)))

(assert (=> b!4057003 (= res!1654361 (not (= lt!1448563 suffix!1299)))))

(assert (=> b!4057003 (= lt!1448563 (++!11360 newSuffix!27 lt!1448542))))

(assert (=> b!4057003 (= lt!1448542 (getSuffix!2462 suffix!1299 newSuffix!27))))

(declare-fun b!4057004 () Bool)

(assert (=> b!4057004 (= e!2517567 e!2517562)))

(declare-fun res!1654373 () Bool)

(assert (=> b!4057004 (=> res!1654373 e!2517562)))

(assert (=> b!4057004 (= res!1654373 (not (= lt!1448550 prefix!494)))))

(assert (=> b!4057004 (= lt!1448550 (++!11360 lt!1448600 lt!1448575))))

(assert (=> b!4057004 (= lt!1448575 (getSuffix!2462 prefix!494 lt!1448600))))

(assert (=> b!4057004 (isPrefix!4045 lt!1448600 prefix!494)))

(declare-fun lt!1448585 () Unit!62734)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!609 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> b!4057004 (= lt!1448585 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!609 prefix!494 lt!1448600 lt!1448578))))

(declare-fun b!4057005 () Bool)

(assert (=> b!4057005 (= e!2517565 e!2517575)))

(declare-fun res!1654380 () Bool)

(assert (=> b!4057005 (=> res!1654380 e!2517575)))

(declare-fun lt!1448580 () Option!9372)

(assert (=> b!4057005 (= res!1654380 (not (= lt!1448580 lt!1448570)))))

(assert (=> b!4057005 (= lt!1448580 (Some!9371 (tuple2!42427 lt!1448545 suffixResult!105)))))

(assert (=> b!4057005 (= lt!1448580 (maxPrefixOneRule!2857 thiss!21717 (rule!10046 token!484) lt!1448578))))

(assert (=> b!4057005 (= lt!1448545 (Token!13055 lt!1448582 (rule!10046 token!484) lt!1448591 lt!1448600))))

(assert (=> b!4057005 (= lt!1448582 (apply!10147 (transformation!6958 (rule!10046 token!484)) (seqFromList!5175 lt!1448600)))))

(declare-fun lt!1448573 () Unit!62734)

(assert (=> b!4057005 (= lt!1448573 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1663 thiss!21717 rules!2999 lt!1448600 lt!1448578 suffixResult!105 (rule!10046 token!484)))))

(assert (=> b!4057005 (= lt!1448583 suffixResult!105)))

(declare-fun lt!1448571 () Unit!62734)

(assert (=> b!4057005 (= lt!1448571 (lemmaSamePrefixThenSameSuffix!2206 lt!1448600 lt!1448583 lt!1448600 suffixResult!105 lt!1448578))))

(assert (=> b!4057005 (isPrefix!4045 lt!1448600 lt!1448552)))

(declare-fun lt!1448546 () Unit!62734)

(assert (=> b!4057005 (= lt!1448546 (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448600 lt!1448583))))

(declare-fun b!4057006 () Bool)

(declare-fun tp!1229572 () Bool)

(assert (=> b!4057006 (= e!2517564 (and tp!1229572 (inv!57967 (tag!7818 (rule!10046 token!484))) (inv!57971 (transformation!6958 (rule!10046 token!484))) e!2517561))))

(declare-fun b!4057007 () Bool)

(declare-fun e!2517548 () Bool)

(assert (=> b!4057007 (= e!2517548 e!2517560)))

(declare-fun res!1654382 () Bool)

(assert (=> b!4057007 (=> res!1654382 e!2517560)))

(assert (=> b!4057007 (= res!1654382 (not (= lt!1448591 lt!1448555)))))

(declare-fun lt!1448579 () Unit!62734)

(assert (=> b!4057007 (= lt!1448579 e!2517551)))

(declare-fun c!700630 () Bool)

(assert (=> b!4057007 (= c!700630 (< lt!1448555 lt!1448591))))

(declare-fun lt!1448548 () Unit!62734)

(assert (=> b!4057007 (= lt!1448548 e!2517573)))

(declare-fun c!700631 () Bool)

(assert (=> b!4057007 (= c!700631 (> lt!1448555 lt!1448591))))

(declare-fun lt!1448559 () List!43489)

(assert (=> b!4057007 (= (_2!24347 (v!39787 lt!1448577)) lt!1448559)))

(declare-fun lt!1448601 () Unit!62734)

(assert (=> b!4057007 (= lt!1448601 (lemmaSamePrefixThenSameSuffix!2206 lt!1448584 (_2!24347 (v!39787 lt!1448577)) lt!1448584 lt!1448559 lt!1448557))))

(declare-fun lt!1448599 () List!43489)

(assert (=> b!4057007 (isPrefix!4045 lt!1448584 lt!1448599)))

(declare-fun lt!1448590 () Unit!62734)

(assert (=> b!4057007 (= lt!1448590 (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448584 lt!1448559))))

(declare-fun b!4057008 () Bool)

(assert (=> b!4057008 (= e!2517541 e!2517548)))

(declare-fun res!1654359 () Bool)

(assert (=> b!4057008 (=> res!1654359 e!2517548)))

(assert (=> b!4057008 (= res!1654359 (not (= lt!1448599 lt!1448557)))))

(assert (=> b!4057008 (= lt!1448599 (++!11360 lt!1448584 lt!1448559))))

(assert (=> b!4057008 (= lt!1448559 (getSuffix!2462 lt!1448557 lt!1448584))))

(assert (= (and start!382580 res!1654354) b!4056980))

(assert (= (and b!4056980 res!1654364) b!4056975))

(assert (= (and b!4056975 res!1654372) b!4056965))

(assert (= (and b!4056965 res!1654352) b!4056991))

(assert (= (and b!4056991 res!1654375) b!4056984))

(assert (= (and b!4056984 res!1654367) b!4056982))

(assert (= (and b!4056982 res!1654353) b!4056990))

(assert (= (and b!4056990 res!1654376) b!4057001))

(assert (= (and b!4057001 (not res!1654368)) b!4056962))

(assert (= (and b!4056962 (not res!1654357)) b!4057004))

(assert (= (and b!4057004 (not res!1654373)) b!4056988))

(assert (= (and b!4056988 (not res!1654356)) b!4057005))

(assert (= (and b!4057005 (not res!1654380)) b!4056976))

(assert (= (and b!4056976 (not res!1654374)) b!4056996))

(assert (= (and b!4056996 res!1654365) b!4056968))

(assert (= (and b!4056968 res!1654360) b!4056979))

(assert (= (and b!4056979 res!1654379) b!4056985))

(assert (= (and b!4056996 (not res!1654370)) b!4056993))

(assert (= (and b!4056993 (not res!1654362)) b!4056973))

(assert (= (and b!4056973 (not res!1654363)) b!4057003))

(assert (= (and b!4057003 (not res!1654361)) b!4056970))

(assert (= (and b!4056970 (not res!1654383)) b!4056966))

(assert (= (and b!4056966 (not res!1654381)) b!4056987))

(assert (= (and b!4056987 (not res!1654378)) b!4057008))

(assert (= (and b!4057008 (not res!1654359)) b!4057007))

(assert (= (and b!4057007 c!700631) b!4056989))

(assert (= (and b!4057007 (not c!700631)) b!4056999))

(assert (= (and b!4056989 res!1654366) b!4056977))

(assert (= (and b!4057007 c!700630) b!4056978))

(assert (= (and b!4057007 (not c!700630)) b!4056986))

(assert (= (and b!4057007 (not res!1654382)) b!4056967))

(assert (= (and b!4056967 (not res!1654355)) b!4056964))

(assert (= (and b!4056964 (not res!1654377)) b!4057002))

(assert (= (and b!4057002 (not res!1654371)) b!4056981))

(assert (= (and b!4056981 (not res!1654358)) b!4056998))

(assert (= (and b!4056998 (not res!1654369)) b!4057000))

(assert (= (and start!382580 ((_ is Cons!43365) prefix!494)) b!4056974))

(assert (= b!4057006 b!4056971))

(assert (= b!4056992 b!4057006))

(assert (= start!382580 b!4056992))

(assert (= (and start!382580 ((_ is Cons!43365) suffixResult!105)) b!4056969))

(assert (= (and start!382580 ((_ is Cons!43365) suffix!1299)) b!4056963))

(assert (= (and start!382580 ((_ is Cons!43365) newSuffix!27)) b!4056997))

(assert (= b!4056983 b!4056994))

(assert (= b!4056972 b!4056983))

(assert (= (and start!382580 ((_ is Cons!43367) rules!2999)) b!4056972))

(assert (= (and start!382580 ((_ is Cons!43365) newSuffixResult!27)) b!4056995))

(declare-fun m!4660857 () Bool)

(assert (=> b!4056962 m!4660857))

(declare-fun m!4660859 () Bool)

(assert (=> b!4056962 m!4660859))

(declare-fun m!4660861 () Bool)

(assert (=> b!4056962 m!4660861))

(declare-fun m!4660863 () Bool)

(assert (=> b!4056962 m!4660863))

(declare-fun m!4660865 () Bool)

(assert (=> b!4056962 m!4660865))

(declare-fun m!4660867 () Bool)

(assert (=> b!4056991 m!4660867))

(declare-fun m!4660869 () Bool)

(assert (=> b!4056980 m!4660869))

(declare-fun m!4660871 () Bool)

(assert (=> b!4056976 m!4660871))

(declare-fun m!4660873 () Bool)

(assert (=> b!4056976 m!4660873))

(declare-fun m!4660875 () Bool)

(assert (=> b!4056976 m!4660875))

(declare-fun m!4660877 () Bool)

(assert (=> b!4056976 m!4660877))

(declare-fun m!4660879 () Bool)

(assert (=> b!4056973 m!4660879))

(declare-fun m!4660881 () Bool)

(assert (=> b!4056973 m!4660881))

(declare-fun m!4660883 () Bool)

(assert (=> b!4056973 m!4660883))

(declare-fun m!4660885 () Bool)

(assert (=> b!4056973 m!4660885))

(declare-fun m!4660887 () Bool)

(assert (=> b!4056973 m!4660887))

(declare-fun m!4660889 () Bool)

(assert (=> b!4056973 m!4660889))

(declare-fun m!4660891 () Bool)

(assert (=> b!4056973 m!4660891))

(declare-fun m!4660893 () Bool)

(assert (=> b!4056973 m!4660893))

(declare-fun m!4660895 () Bool)

(assert (=> b!4056973 m!4660895))

(declare-fun m!4660897 () Bool)

(assert (=> b!4056973 m!4660897))

(declare-fun m!4660899 () Bool)

(assert (=> b!4056973 m!4660899))

(assert (=> b!4056973 m!4660897))

(declare-fun m!4660901 () Bool)

(assert (=> b!4056973 m!4660901))

(assert (=> b!4056973 m!4660887))

(declare-fun m!4660903 () Bool)

(assert (=> b!4056973 m!4660903))

(declare-fun m!4660905 () Bool)

(assert (=> b!4056973 m!4660905))

(assert (=> b!4056973 m!4660893))

(declare-fun m!4660907 () Bool)

(assert (=> b!4056973 m!4660907))

(declare-fun m!4660909 () Bool)

(assert (=> b!4056973 m!4660909))

(declare-fun m!4660911 () Bool)

(assert (=> b!4056973 m!4660911))

(declare-fun m!4660913 () Bool)

(assert (=> b!4056973 m!4660913))

(declare-fun m!4660915 () Bool)

(assert (=> b!4056989 m!4660915))

(declare-fun m!4660917 () Bool)

(assert (=> b!4056989 m!4660917))

(declare-fun m!4660919 () Bool)

(assert (=> b!4057008 m!4660919))

(declare-fun m!4660921 () Bool)

(assert (=> b!4057008 m!4660921))

(declare-fun m!4660923 () Bool)

(assert (=> b!4056998 m!4660923))

(declare-fun m!4660925 () Bool)

(assert (=> b!4056979 m!4660925))

(declare-fun m!4660927 () Bool)

(assert (=> b!4056996 m!4660927))

(declare-fun m!4660929 () Bool)

(assert (=> b!4056996 m!4660929))

(declare-fun m!4660931 () Bool)

(assert (=> b!4056996 m!4660931))

(declare-fun m!4660933 () Bool)

(assert (=> b!4056996 m!4660933))

(declare-fun m!4660935 () Bool)

(assert (=> b!4056984 m!4660935))

(declare-fun m!4660937 () Bool)

(assert (=> b!4056984 m!4660937))

(declare-fun m!4660939 () Bool)

(assert (=> b!4056984 m!4660939))

(assert (=> b!4056984 m!4660939))

(declare-fun m!4660941 () Bool)

(assert (=> b!4056984 m!4660941))

(declare-fun m!4660943 () Bool)

(assert (=> b!4057005 m!4660943))

(declare-fun m!4660945 () Bool)

(assert (=> b!4057005 m!4660945))

(declare-fun m!4660947 () Bool)

(assert (=> b!4057005 m!4660947))

(declare-fun m!4660949 () Bool)

(assert (=> b!4057005 m!4660949))

(assert (=> b!4057005 m!4660945))

(declare-fun m!4660951 () Bool)

(assert (=> b!4057005 m!4660951))

(declare-fun m!4660953 () Bool)

(assert (=> b!4057005 m!4660953))

(declare-fun m!4660955 () Bool)

(assert (=> b!4057005 m!4660955))

(declare-fun m!4660957 () Bool)

(assert (=> b!4057006 m!4660957))

(declare-fun m!4660959 () Bool)

(assert (=> b!4057006 m!4660959))

(declare-fun m!4660961 () Bool)

(assert (=> b!4056966 m!4660961))

(declare-fun m!4660963 () Bool)

(assert (=> b!4056966 m!4660963))

(declare-fun m!4660965 () Bool)

(assert (=> b!4056966 m!4660965))

(declare-fun m!4660967 () Bool)

(assert (=> b!4056970 m!4660967))

(declare-fun m!4660969 () Bool)

(assert (=> b!4056970 m!4660969))

(declare-fun m!4660971 () Bool)

(assert (=> b!4056970 m!4660971))

(declare-fun m!4660973 () Bool)

(assert (=> b!4056978 m!4660973))

(declare-fun m!4660975 () Bool)

(assert (=> b!4057001 m!4660975))

(declare-fun m!4660977 () Bool)

(assert (=> b!4057001 m!4660977))

(declare-fun m!4660979 () Bool)

(assert (=> b!4057001 m!4660979))

(declare-fun m!4660981 () Bool)

(assert (=> b!4057001 m!4660981))

(declare-fun m!4660983 () Bool)

(assert (=> b!4056990 m!4660983))

(declare-fun m!4660985 () Bool)

(assert (=> b!4056990 m!4660985))

(declare-fun m!4660987 () Bool)

(assert (=> b!4056967 m!4660987))

(declare-fun m!4660989 () Bool)

(assert (=> start!382580 m!4660989))

(declare-fun m!4660991 () Bool)

(assert (=> b!4056982 m!4660991))

(declare-fun m!4660993 () Bool)

(assert (=> b!4056982 m!4660993))

(declare-fun m!4660995 () Bool)

(assert (=> b!4056992 m!4660995))

(declare-fun m!4660997 () Bool)

(assert (=> b!4057004 m!4660997))

(declare-fun m!4660999 () Bool)

(assert (=> b!4057004 m!4660999))

(declare-fun m!4661001 () Bool)

(assert (=> b!4057004 m!4661001))

(declare-fun m!4661003 () Bool)

(assert (=> b!4057004 m!4661003))

(declare-fun m!4661005 () Bool)

(assert (=> b!4056993 m!4661005))

(declare-fun m!4661007 () Bool)

(assert (=> b!4056993 m!4661007))

(declare-fun m!4661009 () Bool)

(assert (=> b!4056993 m!4661009))

(declare-fun m!4661011 () Bool)

(assert (=> b!4056993 m!4661011))

(declare-fun m!4661013 () Bool)

(assert (=> b!4057000 m!4661013))

(declare-fun m!4661015 () Bool)

(assert (=> b!4056981 m!4661015))

(declare-fun m!4661017 () Bool)

(assert (=> b!4057003 m!4661017))

(declare-fun m!4661019 () Bool)

(assert (=> b!4057003 m!4661019))

(declare-fun m!4661021 () Bool)

(assert (=> b!4056975 m!4661021))

(declare-fun m!4661023 () Bool)

(assert (=> b!4057007 m!4661023))

(declare-fun m!4661025 () Bool)

(assert (=> b!4057007 m!4661025))

(declare-fun m!4661027 () Bool)

(assert (=> b!4057007 m!4661027))

(declare-fun m!4661029 () Bool)

(assert (=> b!4056964 m!4661029))

(declare-fun m!4661031 () Bool)

(assert (=> b!4056964 m!4661031))

(declare-fun m!4661033 () Bool)

(assert (=> b!4056964 m!4661033))

(declare-fun m!4661035 () Bool)

(assert (=> b!4056964 m!4661035))

(declare-fun m!4661037 () Bool)

(assert (=> b!4056983 m!4661037))

(declare-fun m!4661039 () Bool)

(assert (=> b!4056983 m!4661039))

(declare-fun m!4661041 () Bool)

(assert (=> b!4056988 m!4661041))

(declare-fun m!4661043 () Bool)

(assert (=> b!4056988 m!4661043))

(declare-fun m!4661045 () Bool)

(assert (=> b!4056988 m!4661045))

(declare-fun m!4661047 () Bool)

(assert (=> b!4056988 m!4661047))

(declare-fun m!4661049 () Bool)

(assert (=> b!4056965 m!4661049))

(declare-fun m!4661051 () Bool)

(assert (=> b!4056965 m!4661051))

(check-sat b_and!311943 (not b!4056972) (not b_next!113615) (not b!4056970) (not b!4057007) (not b!4056992) (not b!4057000) (not b!4056983) (not b!4056966) (not b!4056964) (not b!4056997) (not b!4056978) (not b!4057003) (not b!4056988) (not b!4056973) (not b!4056976) (not b!4056967) (not b!4056981) (not b!4056989) (not b!4056982) tp_is_empty!20697 b_and!311945 (not b!4056975) (not b!4056993) (not b!4056995) (not b!4057004) b_and!311939 (not b!4056974) (not b!4056984) (not b!4056980) (not b!4056979) (not b_next!113609) (not b_next!113613) (not b!4057005) (not b!4056990) (not b!4056996) (not b!4056998) (not b!4057001) (not b!4056965) (not b!4057008) (not b!4056969) (not start!382580) (not b_next!113611) (not b!4056963) (not b!4056962) (not b!4056991) b_and!311941 (not b!4057006))
(check-sat b_and!311943 (not b_next!113615) b_and!311945 b_and!311939 (not b_next!113611) b_and!311941 (not b_next!113609) (not b_next!113613))
(get-model)

(declare-fun b!4057096 () Bool)

(declare-fun e!2517637 () Bool)

(declare-fun tail!6301 (List!43489) List!43489)

(assert (=> b!4057096 (= e!2517637 (isPrefix!4045 (tail!6301 lt!1448584) (tail!6301 (++!11360 lt!1448584 newSuffixResult!27))))))

(declare-fun d!1205242 () Bool)

(declare-fun e!2517638 () Bool)

(assert (=> d!1205242 e!2517638))

(declare-fun res!1654461 () Bool)

(assert (=> d!1205242 (=> res!1654461 e!2517638)))

(declare-fun lt!1448643 () Bool)

(assert (=> d!1205242 (= res!1654461 (not lt!1448643))))

(declare-fun e!2517636 () Bool)

(assert (=> d!1205242 (= lt!1448643 e!2517636)))

(declare-fun res!1654462 () Bool)

(assert (=> d!1205242 (=> res!1654462 e!2517636)))

(assert (=> d!1205242 (= res!1654462 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205242 (= (isPrefix!4045 lt!1448584 (++!11360 lt!1448584 newSuffixResult!27)) lt!1448643)))

(declare-fun b!4057095 () Bool)

(declare-fun res!1654459 () Bool)

(assert (=> b!4057095 (=> (not res!1654459) (not e!2517637))))

(declare-fun head!8569 (List!43489) C!23912)

(assert (=> b!4057095 (= res!1654459 (= (head!8569 lt!1448584) (head!8569 (++!11360 lt!1448584 newSuffixResult!27))))))

(declare-fun b!4057097 () Bool)

(assert (=> b!4057097 (= e!2517638 (>= (size!32422 (++!11360 lt!1448584 newSuffixResult!27)) (size!32422 lt!1448584)))))

(declare-fun b!4057094 () Bool)

(assert (=> b!4057094 (= e!2517636 e!2517637)))

(declare-fun res!1654460 () Bool)

(assert (=> b!4057094 (=> (not res!1654460) (not e!2517637))))

(assert (=> b!4057094 (= res!1654460 (not ((_ is Nil!43365) (++!11360 lt!1448584 newSuffixResult!27))))))

(assert (= (and d!1205242 (not res!1654462)) b!4057094))

(assert (= (and b!4057094 res!1654460) b!4057095))

(assert (= (and b!4057095 res!1654459) b!4057096))

(assert (= (and d!1205242 (not res!1654461)) b!4057097))

(declare-fun m!4661175 () Bool)

(assert (=> b!4057096 m!4661175))

(assert (=> b!4057096 m!4660887))

(declare-fun m!4661177 () Bool)

(assert (=> b!4057096 m!4661177))

(assert (=> b!4057096 m!4661175))

(assert (=> b!4057096 m!4661177))

(declare-fun m!4661179 () Bool)

(assert (=> b!4057096 m!4661179))

(declare-fun m!4661181 () Bool)

(assert (=> b!4057095 m!4661181))

(assert (=> b!4057095 m!4660887))

(declare-fun m!4661183 () Bool)

(assert (=> b!4057095 m!4661183))

(assert (=> b!4057097 m!4660887))

(declare-fun m!4661185 () Bool)

(assert (=> b!4057097 m!4661185))

(assert (=> b!4057097 m!4660909))

(assert (=> b!4056973 d!1205242))

(declare-fun d!1205254 () Bool)

(declare-fun e!2517655 () Bool)

(assert (=> d!1205254 e!2517655))

(declare-fun res!1654481 () Bool)

(assert (=> d!1205254 (=> (not res!1654481) (not e!2517655))))

(declare-fun semiInverseModEq!2974 (Int Int) Bool)

(assert (=> d!1205254 (= res!1654481 (semiInverseModEq!2974 (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))))

(declare-fun Unit!62742 () Unit!62734)

(assert (=> d!1205254 (= (lemmaInv!1167 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) Unit!62742)))

(declare-fun b!4057128 () Bool)

(declare-fun equivClasses!2873 (Int Int) Bool)

(assert (=> b!4057128 (= e!2517655 (equivClasses!2873 (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))))

(assert (= (and d!1205254 res!1654481) b!4057128))

(declare-fun m!4661187 () Bool)

(assert (=> d!1205254 m!4661187))

(declare-fun m!4661189 () Bool)

(assert (=> b!4057128 m!4661189))

(assert (=> b!4056973 d!1205254))

(declare-fun b!4057145 () Bool)

(declare-fun e!2517664 () Bool)

(assert (=> b!4057145 (= e!2517664 (isPrefix!4045 (tail!6301 lt!1448584) (tail!6301 lt!1448602)))))

(declare-fun d!1205256 () Bool)

(declare-fun e!2517665 () Bool)

(assert (=> d!1205256 e!2517665))

(declare-fun res!1654492 () Bool)

(assert (=> d!1205256 (=> res!1654492 e!2517665)))

(declare-fun lt!1448647 () Bool)

(assert (=> d!1205256 (= res!1654492 (not lt!1448647))))

(declare-fun e!2517663 () Bool)

(assert (=> d!1205256 (= lt!1448647 e!2517663)))

(declare-fun res!1654493 () Bool)

(assert (=> d!1205256 (=> res!1654493 e!2517663)))

(assert (=> d!1205256 (= res!1654493 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205256 (= (isPrefix!4045 lt!1448584 lt!1448602) lt!1448647)))

(declare-fun b!4057144 () Bool)

(declare-fun res!1654490 () Bool)

(assert (=> b!4057144 (=> (not res!1654490) (not e!2517664))))

(assert (=> b!4057144 (= res!1654490 (= (head!8569 lt!1448584) (head!8569 lt!1448602)))))

(declare-fun b!4057146 () Bool)

(assert (=> b!4057146 (= e!2517665 (>= (size!32422 lt!1448602) (size!32422 lt!1448584)))))

(declare-fun b!4057143 () Bool)

(assert (=> b!4057143 (= e!2517663 e!2517664)))

(declare-fun res!1654491 () Bool)

(assert (=> b!4057143 (=> (not res!1654491) (not e!2517664))))

(assert (=> b!4057143 (= res!1654491 (not ((_ is Nil!43365) lt!1448602)))))

(assert (= (and d!1205256 (not res!1654493)) b!4057143))

(assert (= (and b!4057143 res!1654491) b!4057144))

(assert (= (and b!4057144 res!1654490) b!4057145))

(assert (= (and d!1205256 (not res!1654492)) b!4057146))

(assert (=> b!4057145 m!4661175))

(declare-fun m!4661199 () Bool)

(assert (=> b!4057145 m!4661199))

(assert (=> b!4057145 m!4661175))

(assert (=> b!4057145 m!4661199))

(declare-fun m!4661205 () Bool)

(assert (=> b!4057145 m!4661205))

(assert (=> b!4057144 m!4661181))

(declare-fun m!4661207 () Bool)

(assert (=> b!4057144 m!4661207))

(declare-fun m!4661209 () Bool)

(assert (=> b!4057146 m!4661209))

(assert (=> b!4057146 m!4660909))

(assert (=> b!4056973 d!1205256))

(declare-fun b!4057156 () Bool)

(declare-fun e!2517671 () List!43489)

(assert (=> b!4057156 (= e!2517671 (Cons!43365 (h!48785 lt!1448584) (++!11360 (t!336294 lt!1448584) newSuffixResult!27)))))

(declare-fun lt!1448650 () List!43489)

(declare-fun b!4057158 () Bool)

(declare-fun e!2517670 () Bool)

(assert (=> b!4057158 (= e!2517670 (or (not (= newSuffixResult!27 Nil!43365)) (= lt!1448650 lt!1448584)))))

(declare-fun b!4057157 () Bool)

(declare-fun res!1654499 () Bool)

(assert (=> b!4057157 (=> (not res!1654499) (not e!2517670))))

(assert (=> b!4057157 (= res!1654499 (= (size!32422 lt!1448650) (+ (size!32422 lt!1448584) (size!32422 newSuffixResult!27))))))

(declare-fun d!1205260 () Bool)

(assert (=> d!1205260 e!2517670))

(declare-fun res!1654498 () Bool)

(assert (=> d!1205260 (=> (not res!1654498) (not e!2517670))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6610 (List!43489) (InoxSet C!23912))

(assert (=> d!1205260 (= res!1654498 (= (content!6610 lt!1448650) ((_ map or) (content!6610 lt!1448584) (content!6610 newSuffixResult!27))))))

(assert (=> d!1205260 (= lt!1448650 e!2517671)))

(declare-fun c!700654 () Bool)

(assert (=> d!1205260 (= c!700654 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205260 (= (++!11360 lt!1448584 newSuffixResult!27) lt!1448650)))

(declare-fun b!4057155 () Bool)

(assert (=> b!4057155 (= e!2517671 newSuffixResult!27)))

(assert (= (and d!1205260 c!700654) b!4057155))

(assert (= (and d!1205260 (not c!700654)) b!4057156))

(assert (= (and d!1205260 res!1654498) b!4057157))

(assert (= (and b!4057157 res!1654499) b!4057158))

(declare-fun m!4661211 () Bool)

(assert (=> b!4057156 m!4661211))

(declare-fun m!4661213 () Bool)

(assert (=> b!4057157 m!4661213))

(assert (=> b!4057157 m!4660909))

(declare-fun m!4661215 () Bool)

(assert (=> b!4057157 m!4661215))

(declare-fun m!4661217 () Bool)

(assert (=> d!1205260 m!4661217))

(declare-fun m!4661219 () Bool)

(assert (=> d!1205260 m!4661219))

(declare-fun m!4661221 () Bool)

(assert (=> d!1205260 m!4661221))

(assert (=> b!4056973 d!1205260))

(declare-fun d!1205262 () Bool)

(assert (=> d!1205262 (= (maxPrefixOneRule!2857 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448557) (Some!9371 (tuple2!42427 (Token!13055 (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (seqFromList!5175 lt!1448584)) (rule!10046 (_1!24347 (v!39787 lt!1448577))) (size!32422 lt!1448584) lt!1448584) (_2!24347 (v!39787 lt!1448577)))))))

(declare-fun lt!1448677 () Unit!62734)

(declare-fun choose!24639 (LexerInterface!6547 List!43491 List!43489 List!43489 List!43489 Rule!13716) Unit!62734)

(assert (=> d!1205262 (= lt!1448677 (choose!24639 thiss!21717 rules!2999 lt!1448584 lt!1448557 (_2!24347 (v!39787 lt!1448577)) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(assert (=> d!1205262 (not (isEmpty!25876 rules!2999))))

(assert (=> d!1205262 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1663 thiss!21717 rules!2999 lt!1448584 lt!1448557 (_2!24347 (v!39787 lt!1448577)) (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448677)))

(declare-fun bs!591847 () Bool)

(assert (= bs!591847 d!1205262))

(assert (=> bs!591847 m!4660869))

(assert (=> bs!591847 m!4660899))

(assert (=> bs!591847 m!4660897))

(declare-fun m!4661311 () Bool)

(assert (=> bs!591847 m!4661311))

(assert (=> bs!591847 m!4660897))

(assert (=> bs!591847 m!4660901))

(assert (=> bs!591847 m!4660909))

(assert (=> b!4056973 d!1205262))

(declare-fun d!1205282 () Bool)

(assert (=> d!1205282 (= (size!32421 (_1!24347 (v!39787 lt!1448577))) (size!32422 (originalCharacters!7558 (_1!24347 (v!39787 lt!1448577)))))))

(declare-fun Unit!62743 () Unit!62734)

(assert (=> d!1205282 (= (lemmaCharactersSize!1477 (_1!24347 (v!39787 lt!1448577))) Unit!62743)))

(declare-fun bs!591849 () Bool)

(assert (= bs!591849 d!1205282))

(declare-fun m!4661321 () Bool)

(assert (=> bs!591849 m!4661321))

(assert (=> b!4056973 d!1205282))

(declare-fun d!1205288 () Bool)

(declare-fun lt!1448690 () BalanceConc!25932)

(assert (=> d!1205288 (= (list!16160 lt!1448690) (originalCharacters!7558 (_1!24347 (v!39787 lt!1448577))))))

(declare-fun dynLambda!18420 (Int TokenValue!7188) BalanceConc!25932)

(assert (=> d!1205288 (= lt!1448690 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (value!218937 (_1!24347 (v!39787 lt!1448577)))))))

(assert (=> d!1205288 (= (charsOf!4774 (_1!24347 (v!39787 lt!1448577))) lt!1448690)))

(declare-fun b_lambda!118541 () Bool)

(assert (=> (not b_lambda!118541) (not d!1205288)))

(declare-fun t!336302 () Bool)

(declare-fun tb!244037 () Bool)

(assert (=> (and b!4056994 (= (toChars!9373 (transformation!6958 (h!48787 rules!2999))) (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))) t!336302) tb!244037))

(declare-fun b!4057275 () Bool)

(declare-fun e!2517731 () Bool)

(declare-fun tp!1229580 () Bool)

(declare-fun inv!57974 (Conc!13169) Bool)

(assert (=> b!4057275 (= e!2517731 (and (inv!57974 (c!700632 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (value!218937 (_1!24347 (v!39787 lt!1448577)))))) tp!1229580))))

(declare-fun result!295712 () Bool)

(declare-fun inv!57975 (BalanceConc!25932) Bool)

(assert (=> tb!244037 (= result!295712 (and (inv!57975 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (value!218937 (_1!24347 (v!39787 lt!1448577))))) e!2517731))))

(assert (= tb!244037 b!4057275))

(declare-fun m!4661385 () Bool)

(assert (=> b!4057275 m!4661385))

(declare-fun m!4661387 () Bool)

(assert (=> tb!244037 m!4661387))

(assert (=> d!1205288 t!336302))

(declare-fun b_and!311951 () Bool)

(assert (= b_and!311941 (and (=> t!336302 result!295712) b_and!311951)))

(declare-fun tb!244039 () Bool)

(declare-fun t!336304 () Bool)

(assert (=> (and b!4056971 (= (toChars!9373 (transformation!6958 (rule!10046 token!484))) (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))) t!336304) tb!244039))

(declare-fun result!295716 () Bool)

(assert (= result!295716 result!295712))

(assert (=> d!1205288 t!336304))

(declare-fun b_and!311953 () Bool)

(assert (= b_and!311945 (and (=> t!336304 result!295716) b_and!311953)))

(declare-fun m!4661389 () Bool)

(assert (=> d!1205288 m!4661389))

(declare-fun m!4661391 () Bool)

(assert (=> d!1205288 m!4661391))

(assert (=> b!4056973 d!1205288))

(declare-fun b!4057427 () Bool)

(declare-fun e!2517818 () Option!9372)

(declare-datatypes ((tuple2!42428 0))(
  ( (tuple2!42429 (_1!24348 List!43489) (_2!24348 List!43489)) )
))
(declare-fun lt!1448777 () tuple2!42428)

(declare-fun size!32423 (BalanceConc!25932) Int)

(assert (=> b!4057427 (= e!2517818 (Some!9371 (tuple2!42427 (Token!13055 (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (seqFromList!5175 (_1!24348 lt!1448777))) (rule!10046 (_1!24347 (v!39787 lt!1448577))) (size!32423 (seqFromList!5175 (_1!24348 lt!1448777))) (_1!24348 lt!1448777)) (_2!24348 lt!1448777))))))

(declare-fun lt!1448778 () Unit!62734)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1375 (Regex!11863 List!43489) Unit!62734)

(assert (=> b!4057427 (= lt!1448778 (longestMatchIsAcceptedByMatchOrIsEmpty!1375 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448557))))

(declare-fun res!1654663 () Bool)

(declare-fun findLongestMatchInner!1402 (Regex!11863 List!43489 Int List!43489 List!43489 Int) tuple2!42428)

(assert (=> b!4057427 (= res!1654663 (isEmpty!25877 (_1!24348 (findLongestMatchInner!1402 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) Nil!43365 (size!32422 Nil!43365) lt!1448557 lt!1448557 (size!32422 lt!1448557)))))))

(declare-fun e!2517819 () Bool)

(assert (=> b!4057427 (=> res!1654663 e!2517819)))

(assert (=> b!4057427 e!2517819))

(declare-fun lt!1448775 () Unit!62734)

(assert (=> b!4057427 (= lt!1448775 lt!1448778)))

(declare-fun lt!1448779 () Unit!62734)

(declare-fun lemmaSemiInverse!1930 (TokenValueInjection!13804 BalanceConc!25932) Unit!62734)

(assert (=> b!4057427 (= lt!1448779 (lemmaSemiInverse!1930 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (seqFromList!5175 (_1!24348 lt!1448777))))))

(declare-fun b!4057429 () Bool)

(assert (=> b!4057429 (= e!2517819 (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (_1!24348 (findLongestMatchInner!1402 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) Nil!43365 (size!32422 Nil!43365) lt!1448557 lt!1448557 (size!32422 lt!1448557)))))))

(declare-fun b!4057430 () Bool)

(declare-fun e!2517816 () Bool)

(declare-fun e!2517817 () Bool)

(assert (=> b!4057430 (= e!2517816 e!2517817)))

(declare-fun res!1654662 () Bool)

(assert (=> b!4057430 (=> (not res!1654662) (not e!2517817))))

(declare-fun lt!1448776 () Option!9372)

(declare-fun get!14223 (Option!9372) tuple2!42426)

(assert (=> b!4057430 (= res!1654662 (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448776))))))))

(declare-fun b!4057431 () Bool)

(declare-fun res!1654660 () Bool)

(assert (=> b!4057431 (=> (not res!1654660) (not e!2517817))))

(assert (=> b!4057431 (= res!1654660 (= (value!218937 (_1!24347 (get!14223 lt!1448776))) (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (get!14223 lt!1448776)))) (seqFromList!5175 (originalCharacters!7558 (_1!24347 (get!14223 lt!1448776)))))))))

(declare-fun b!4057432 () Bool)

(declare-fun res!1654658 () Bool)

(assert (=> b!4057432 (=> (not res!1654658) (not e!2517817))))

(assert (=> b!4057432 (= res!1654658 (< (size!32422 (_2!24347 (get!14223 lt!1448776))) (size!32422 lt!1448557)))))

(declare-fun b!4057433 () Bool)

(assert (=> b!4057433 (= e!2517818 None!9371)))

(declare-fun b!4057434 () Bool)

(assert (=> b!4057434 (= e!2517817 (= (size!32421 (_1!24347 (get!14223 lt!1448776))) (size!32422 (originalCharacters!7558 (_1!24347 (get!14223 lt!1448776))))))))

(declare-fun b!4057435 () Bool)

(declare-fun res!1654661 () Bool)

(assert (=> b!4057435 (=> (not res!1654661) (not e!2517817))))

(assert (=> b!4057435 (= res!1654661 (= (++!11360 (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448776)))) (_2!24347 (get!14223 lt!1448776))) lt!1448557))))

(declare-fun d!1205316 () Bool)

(assert (=> d!1205316 e!2517816))

(declare-fun res!1654659 () Bool)

(assert (=> d!1205316 (=> res!1654659 e!2517816)))

(declare-fun isEmpty!25879 (Option!9372) Bool)

(assert (=> d!1205316 (= res!1654659 (isEmpty!25879 lt!1448776))))

(assert (=> d!1205316 (= lt!1448776 e!2517818)))

(declare-fun c!700704 () Bool)

(assert (=> d!1205316 (= c!700704 (isEmpty!25877 (_1!24348 lt!1448777)))))

(declare-fun findLongestMatch!1315 (Regex!11863 List!43489) tuple2!42428)

(assert (=> d!1205316 (= lt!1448777 (findLongestMatch!1315 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448557))))

(assert (=> d!1205316 (ruleValid!2888 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))

(assert (=> d!1205316 (= (maxPrefixOneRule!2857 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448557) lt!1448776)))

(declare-fun b!4057428 () Bool)

(declare-fun res!1654657 () Bool)

(assert (=> b!4057428 (=> (not res!1654657) (not e!2517817))))

(assert (=> b!4057428 (= res!1654657 (= (rule!10046 (_1!24347 (get!14223 lt!1448776))) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(assert (= (and d!1205316 c!700704) b!4057433))

(assert (= (and d!1205316 (not c!700704)) b!4057427))

(assert (= (and b!4057427 (not res!1654663)) b!4057429))

(assert (= (and d!1205316 (not res!1654659)) b!4057430))

(assert (= (and b!4057430 res!1654662) b!4057435))

(assert (= (and b!4057435 res!1654661) b!4057432))

(assert (= (and b!4057432 res!1654658) b!4057428))

(assert (= (and b!4057428 res!1654657) b!4057431))

(assert (= (and b!4057431 res!1654660) b!4057434))

(declare-fun m!4661687 () Bool)

(assert (=> b!4057431 m!4661687))

(declare-fun m!4661689 () Bool)

(assert (=> b!4057431 m!4661689))

(assert (=> b!4057431 m!4661689))

(declare-fun m!4661691 () Bool)

(assert (=> b!4057431 m!4661691))

(declare-fun m!4661693 () Bool)

(assert (=> d!1205316 m!4661693))

(declare-fun m!4661695 () Bool)

(assert (=> d!1205316 m!4661695))

(declare-fun m!4661697 () Bool)

(assert (=> d!1205316 m!4661697))

(assert (=> d!1205316 m!4660913))

(assert (=> b!4057435 m!4661687))

(declare-fun m!4661699 () Bool)

(assert (=> b!4057435 m!4661699))

(assert (=> b!4057435 m!4661699))

(declare-fun m!4661701 () Bool)

(assert (=> b!4057435 m!4661701))

(assert (=> b!4057435 m!4661701))

(declare-fun m!4661703 () Bool)

(assert (=> b!4057435 m!4661703))

(declare-fun m!4661705 () Bool)

(assert (=> b!4057427 m!4661705))

(declare-fun m!4661707 () Bool)

(assert (=> b!4057427 m!4661707))

(declare-fun m!4661709 () Bool)

(assert (=> b!4057427 m!4661709))

(declare-fun m!4661711 () Bool)

(assert (=> b!4057427 m!4661711))

(assert (=> b!4057427 m!4661705))

(declare-fun m!4661713 () Bool)

(assert (=> b!4057427 m!4661713))

(assert (=> b!4057427 m!4661707))

(declare-fun m!4661715 () Bool)

(assert (=> b!4057427 m!4661715))

(assert (=> b!4057427 m!4661707))

(declare-fun m!4661717 () Bool)

(assert (=> b!4057427 m!4661717))

(assert (=> b!4057427 m!4661707))

(declare-fun m!4661719 () Bool)

(assert (=> b!4057427 m!4661719))

(assert (=> b!4057427 m!4661711))

(declare-fun m!4661721 () Bool)

(assert (=> b!4057427 m!4661721))

(assert (=> b!4057428 m!4661687))

(assert (=> b!4057429 m!4661711))

(assert (=> b!4057429 m!4661705))

(assert (=> b!4057429 m!4661711))

(assert (=> b!4057429 m!4661705))

(assert (=> b!4057429 m!4661713))

(declare-fun m!4661727 () Bool)

(assert (=> b!4057429 m!4661727))

(assert (=> b!4057432 m!4661687))

(declare-fun m!4661729 () Bool)

(assert (=> b!4057432 m!4661729))

(assert (=> b!4057432 m!4661705))

(assert (=> b!4057434 m!4661687))

(declare-fun m!4661731 () Bool)

(assert (=> b!4057434 m!4661731))

(assert (=> b!4057430 m!4661687))

(assert (=> b!4057430 m!4661699))

(assert (=> b!4057430 m!4661699))

(assert (=> b!4057430 m!4661701))

(assert (=> b!4057430 m!4661701))

(declare-fun m!4661733 () Bool)

(assert (=> b!4057430 m!4661733))

(assert (=> b!4056973 d!1205316))

(declare-fun d!1205418 () Bool)

(declare-fun res!1654668 () Bool)

(declare-fun e!2517846 () Bool)

(assert (=> d!1205418 (=> (not res!1654668) (not e!2517846))))

(declare-fun validRegex!5366 (Regex!11863) Bool)

(assert (=> d!1205418 (= res!1654668 (validRegex!5366 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(assert (=> d!1205418 (= (ruleValid!2888 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) e!2517846)))

(declare-fun b!4057479 () Bool)

(declare-fun res!1654669 () Bool)

(assert (=> b!4057479 (=> (not res!1654669) (not e!2517846))))

(declare-fun nullable!4166 (Regex!11863) Bool)

(assert (=> b!4057479 (= res!1654669 (not (nullable!4166 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))))

(declare-fun b!4057480 () Bool)

(assert (=> b!4057480 (= e!2517846 (not (= (tag!7818 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (String!49659 ""))))))

(assert (= (and d!1205418 res!1654668) b!4057479))

(assert (= (and b!4057479 res!1654669) b!4057480))

(declare-fun m!4661735 () Bool)

(assert (=> d!1205418 m!4661735))

(declare-fun m!4661737 () Bool)

(assert (=> b!4057479 m!4661737))

(assert (=> b!4056973 d!1205418))

(declare-fun d!1205420 () Bool)

(declare-fun fromListB!2359 (List!43489) BalanceConc!25932)

(assert (=> d!1205420 (= (seqFromList!5175 lt!1448584) (fromListB!2359 lt!1448584))))

(declare-fun bs!591874 () Bool)

(assert (= bs!591874 d!1205420))

(declare-fun m!4661739 () Bool)

(assert (=> bs!591874 m!4661739))

(assert (=> b!4056973 d!1205420))

(declare-fun b!4057482 () Bool)

(declare-fun e!2517848 () List!43489)

(assert (=> b!4057482 (= e!2517848 (Cons!43365 (h!48785 lt!1448584) (++!11360 (t!336294 lt!1448584) (_2!24347 (v!39787 lt!1448577)))))))

(declare-fun b!4057484 () Bool)

(declare-fun e!2517847 () Bool)

(declare-fun lt!1448781 () List!43489)

(assert (=> b!4057484 (= e!2517847 (or (not (= (_2!24347 (v!39787 lt!1448577)) Nil!43365)) (= lt!1448781 lt!1448584)))))

(declare-fun b!4057483 () Bool)

(declare-fun res!1654671 () Bool)

(assert (=> b!4057483 (=> (not res!1654671) (not e!2517847))))

(assert (=> b!4057483 (= res!1654671 (= (size!32422 lt!1448781) (+ (size!32422 lt!1448584) (size!32422 (_2!24347 (v!39787 lt!1448577))))))))

(declare-fun d!1205422 () Bool)

(assert (=> d!1205422 e!2517847))

(declare-fun res!1654670 () Bool)

(assert (=> d!1205422 (=> (not res!1654670) (not e!2517847))))

(assert (=> d!1205422 (= res!1654670 (= (content!6610 lt!1448781) ((_ map or) (content!6610 lt!1448584) (content!6610 (_2!24347 (v!39787 lt!1448577))))))))

(assert (=> d!1205422 (= lt!1448781 e!2517848)))

(declare-fun c!700705 () Bool)

(assert (=> d!1205422 (= c!700705 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205422 (= (++!11360 lt!1448584 (_2!24347 (v!39787 lt!1448577))) lt!1448781)))

(declare-fun b!4057481 () Bool)

(assert (=> b!4057481 (= e!2517848 (_2!24347 (v!39787 lt!1448577)))))

(assert (= (and d!1205422 c!700705) b!4057481))

(assert (= (and d!1205422 (not c!700705)) b!4057482))

(assert (= (and d!1205422 res!1654670) b!4057483))

(assert (= (and b!4057483 res!1654671) b!4057484))

(declare-fun m!4661741 () Bool)

(assert (=> b!4057482 m!4661741))

(declare-fun m!4661743 () Bool)

(assert (=> b!4057483 m!4661743))

(assert (=> b!4057483 m!4660909))

(declare-fun m!4661745 () Bool)

(assert (=> b!4057483 m!4661745))

(declare-fun m!4661747 () Bool)

(assert (=> d!1205422 m!4661747))

(assert (=> d!1205422 m!4661219))

(declare-fun m!4661749 () Bool)

(assert (=> d!1205422 m!4661749))

(assert (=> b!4056973 d!1205422))

(declare-fun d!1205424 () Bool)

(assert (=> d!1205424 (isPrefix!4045 lt!1448584 (++!11360 lt!1448584 (_2!24347 (v!39787 lt!1448577))))))

(declare-fun lt!1448784 () Unit!62734)

(declare-fun choose!24641 (List!43489 List!43489) Unit!62734)

(assert (=> d!1205424 (= lt!1448784 (choose!24641 lt!1448584 (_2!24347 (v!39787 lt!1448577))))))

(assert (=> d!1205424 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448584 (_2!24347 (v!39787 lt!1448577))) lt!1448784)))

(declare-fun bs!591875 () Bool)

(assert (= bs!591875 d!1205424))

(assert (=> bs!591875 m!4660883))

(assert (=> bs!591875 m!4660883))

(declare-fun m!4661751 () Bool)

(assert (=> bs!591875 m!4661751))

(declare-fun m!4661753 () Bool)

(assert (=> bs!591875 m!4661753))

(assert (=> b!4056973 d!1205424))

(declare-fun d!1205426 () Bool)

(assert (=> d!1205426 (ruleValid!2888 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))

(declare-fun lt!1448787 () Unit!62734)

(declare-fun choose!24642 (LexerInterface!6547 Rule!13716 List!43491) Unit!62734)

(assert (=> d!1205426 (= lt!1448787 (choose!24642 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))) rules!2999))))

(assert (=> d!1205426 (contains!8626 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))

(assert (=> d!1205426 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1958 thiss!21717 (rule!10046 (_1!24347 (v!39787 lt!1448577))) rules!2999) lt!1448787)))

(declare-fun bs!591876 () Bool)

(assert (= bs!591876 d!1205426))

(assert (=> bs!591876 m!4660913))

(declare-fun m!4661755 () Bool)

(assert (=> bs!591876 m!4661755))

(assert (=> bs!591876 m!4660923))

(assert (=> b!4056973 d!1205426))

(declare-fun d!1205428 () Bool)

(declare-fun list!16161 (Conc!13169) List!43489)

(assert (=> d!1205428 (= (list!16160 (charsOf!4774 (_1!24347 (v!39787 lt!1448577)))) (list!16161 (c!700632 (charsOf!4774 (_1!24347 (v!39787 lt!1448577))))))))

(declare-fun bs!591877 () Bool)

(assert (= bs!591877 d!1205428))

(declare-fun m!4661757 () Bool)

(assert (=> bs!591877 m!4661757))

(assert (=> b!4056973 d!1205428))

(declare-fun d!1205430 () Bool)

(assert (=> d!1205430 (= (size!32421 token!484) (size!32422 (originalCharacters!7558 token!484)))))

(declare-fun Unit!62744 () Unit!62734)

(assert (=> d!1205430 (= (lemmaCharactersSize!1477 token!484) Unit!62744)))

(declare-fun bs!591878 () Bool)

(assert (= bs!591878 d!1205430))

(assert (=> bs!591878 m!4660925))

(assert (=> b!4056973 d!1205430))

(declare-fun d!1205432 () Bool)

(declare-fun lt!1448790 () Int)

(assert (=> d!1205432 (>= lt!1448790 0)))

(declare-fun e!2517851 () Int)

(assert (=> d!1205432 (= lt!1448790 e!2517851)))

(declare-fun c!700708 () Bool)

(assert (=> d!1205432 (= c!700708 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205432 (= (size!32422 lt!1448584) lt!1448790)))

(declare-fun b!4057489 () Bool)

(assert (=> b!4057489 (= e!2517851 0)))

(declare-fun b!4057490 () Bool)

(assert (=> b!4057490 (= e!2517851 (+ 1 (size!32422 (t!336294 lt!1448584))))))

(assert (= (and d!1205432 c!700708) b!4057489))

(assert (= (and d!1205432 (not c!700708)) b!4057490))

(declare-fun m!4661759 () Bool)

(assert (=> b!4057490 m!4661759))

(assert (=> b!4056973 d!1205432))

(declare-fun d!1205434 () Bool)

(assert (=> d!1205434 (isPrefix!4045 lt!1448584 (++!11360 lt!1448584 newSuffixResult!27))))

(declare-fun lt!1448791 () Unit!62734)

(assert (=> d!1205434 (= lt!1448791 (choose!24641 lt!1448584 newSuffixResult!27))))

(assert (=> d!1205434 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448584 newSuffixResult!27) lt!1448791)))

(declare-fun bs!591879 () Bool)

(assert (= bs!591879 d!1205434))

(assert (=> bs!591879 m!4660887))

(assert (=> bs!591879 m!4660887))

(assert (=> bs!591879 m!4660889))

(declare-fun m!4661761 () Bool)

(assert (=> bs!591879 m!4661761))

(assert (=> b!4056973 d!1205434))

(declare-fun d!1205436 () Bool)

(declare-fun dynLambda!18421 (Int BalanceConc!25932) TokenValue!7188)

(assert (=> d!1205436 (= (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (seqFromList!5175 lt!1448584)) (dynLambda!18421 (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (seqFromList!5175 lt!1448584)))))

(declare-fun b_lambda!118557 () Bool)

(assert (=> (not b_lambda!118557) (not d!1205436)))

(declare-fun t!336326 () Bool)

(declare-fun tb!244061 () Bool)

(assert (=> (and b!4056994 (= (toValue!9514 (transformation!6958 (h!48787 rules!2999))) (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))) t!336326) tb!244061))

(declare-fun result!295746 () Bool)

(assert (=> tb!244061 (= result!295746 (inv!21 (dynLambda!18421 (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))) (seqFromList!5175 lt!1448584))))))

(declare-fun m!4661763 () Bool)

(assert (=> tb!244061 m!4661763))

(assert (=> d!1205436 t!336326))

(declare-fun b_and!311975 () Bool)

(assert (= b_and!311939 (and (=> t!336326 result!295746) b_and!311975)))

(declare-fun t!336328 () Bool)

(declare-fun tb!244063 () Bool)

(assert (=> (and b!4056971 (= (toValue!9514 (transformation!6958 (rule!10046 token!484))) (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))) t!336328) tb!244063))

(declare-fun result!295750 () Bool)

(assert (= result!295750 result!295746))

(assert (=> d!1205436 t!336328))

(declare-fun b_and!311977 () Bool)

(assert (= b_and!311943 (and (=> t!336328 result!295750) b_and!311977)))

(assert (=> d!1205436 m!4660897))

(declare-fun m!4661765 () Bool)

(assert (=> d!1205436 m!4661765))

(assert (=> b!4056973 d!1205436))

(declare-fun b!4057494 () Bool)

(declare-fun e!2517856 () List!43489)

(assert (=> b!4057494 (= e!2517856 (Cons!43365 (h!48785 prefix!494) (++!11360 (t!336294 prefix!494) lt!1448563)))))

(declare-fun e!2517855 () Bool)

(declare-fun b!4057496 () Bool)

(declare-fun lt!1448792 () List!43489)

(assert (=> b!4057496 (= e!2517855 (or (not (= lt!1448563 Nil!43365)) (= lt!1448792 prefix!494)))))

(declare-fun b!4057495 () Bool)

(declare-fun res!1654673 () Bool)

(assert (=> b!4057495 (=> (not res!1654673) (not e!2517855))))

(assert (=> b!4057495 (= res!1654673 (= (size!32422 lt!1448792) (+ (size!32422 prefix!494) (size!32422 lt!1448563))))))

(declare-fun d!1205438 () Bool)

(assert (=> d!1205438 e!2517855))

(declare-fun res!1654672 () Bool)

(assert (=> d!1205438 (=> (not res!1654672) (not e!2517855))))

(assert (=> d!1205438 (= res!1654672 (= (content!6610 lt!1448792) ((_ map or) (content!6610 prefix!494) (content!6610 lt!1448563))))))

(assert (=> d!1205438 (= lt!1448792 e!2517856)))

(declare-fun c!700709 () Bool)

(assert (=> d!1205438 (= c!700709 ((_ is Nil!43365) prefix!494))))

(assert (=> d!1205438 (= (++!11360 prefix!494 lt!1448563) lt!1448792)))

(declare-fun b!4057493 () Bool)

(assert (=> b!4057493 (= e!2517856 lt!1448563)))

(assert (= (and d!1205438 c!700709) b!4057493))

(assert (= (and d!1205438 (not c!700709)) b!4057494))

(assert (= (and d!1205438 res!1654672) b!4057495))

(assert (= (and b!4057495 res!1654673) b!4057496))

(declare-fun m!4661767 () Bool)

(assert (=> b!4057494 m!4661767))

(declare-fun m!4661769 () Bool)

(assert (=> b!4057495 m!4661769))

(assert (=> b!4057495 m!4660937))

(declare-fun m!4661771 () Bool)

(assert (=> b!4057495 m!4661771))

(declare-fun m!4661773 () Bool)

(assert (=> d!1205438 m!4661773))

(declare-fun m!4661775 () Bool)

(assert (=> d!1205438 m!4661775))

(declare-fun m!4661777 () Bool)

(assert (=> d!1205438 m!4661777))

(assert (=> b!4056970 d!1205438))

(declare-fun b!4057498 () Bool)

(declare-fun e!2517858 () List!43489)

(assert (=> b!4057498 (= e!2517858 (Cons!43365 (h!48785 lt!1448557) (++!11360 (t!336294 lt!1448557) lt!1448542)))))

(declare-fun e!2517857 () Bool)

(declare-fun lt!1448793 () List!43489)

(declare-fun b!4057500 () Bool)

(assert (=> b!4057500 (= e!2517857 (or (not (= lt!1448542 Nil!43365)) (= lt!1448793 lt!1448557)))))

(declare-fun b!4057499 () Bool)

(declare-fun res!1654675 () Bool)

(assert (=> b!4057499 (=> (not res!1654675) (not e!2517857))))

(assert (=> b!4057499 (= res!1654675 (= (size!32422 lt!1448793) (+ (size!32422 lt!1448557) (size!32422 lt!1448542))))))

(declare-fun d!1205440 () Bool)

(assert (=> d!1205440 e!2517857))

(declare-fun res!1654674 () Bool)

(assert (=> d!1205440 (=> (not res!1654674) (not e!2517857))))

(assert (=> d!1205440 (= res!1654674 (= (content!6610 lt!1448793) ((_ map or) (content!6610 lt!1448557) (content!6610 lt!1448542))))))

(assert (=> d!1205440 (= lt!1448793 e!2517858)))

(declare-fun c!700710 () Bool)

(assert (=> d!1205440 (= c!700710 ((_ is Nil!43365) lt!1448557))))

(assert (=> d!1205440 (= (++!11360 lt!1448557 lt!1448542) lt!1448793)))

(declare-fun b!4057497 () Bool)

(assert (=> b!4057497 (= e!2517858 lt!1448542)))

(assert (= (and d!1205440 c!700710) b!4057497))

(assert (= (and d!1205440 (not c!700710)) b!4057498))

(assert (= (and d!1205440 res!1654674) b!4057499))

(assert (= (and b!4057499 res!1654675) b!4057500))

(declare-fun m!4661779 () Bool)

(assert (=> b!4057498 m!4661779))

(declare-fun m!4661781 () Bool)

(assert (=> b!4057499 m!4661781))

(assert (=> b!4057499 m!4661705))

(declare-fun m!4661783 () Bool)

(assert (=> b!4057499 m!4661783))

(declare-fun m!4661785 () Bool)

(assert (=> d!1205440 m!4661785))

(declare-fun m!4661787 () Bool)

(assert (=> d!1205440 m!4661787))

(declare-fun m!4661789 () Bool)

(assert (=> d!1205440 m!4661789))

(assert (=> b!4056970 d!1205440))

(declare-fun d!1205442 () Bool)

(assert (=> d!1205442 (= (++!11360 (++!11360 prefix!494 newSuffix!27) lt!1448542) (++!11360 prefix!494 (++!11360 newSuffix!27 lt!1448542)))))

(declare-fun lt!1448796 () Unit!62734)

(declare-fun choose!24643 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> d!1205442 (= lt!1448796 (choose!24643 prefix!494 newSuffix!27 lt!1448542))))

(assert (=> d!1205442 (= (lemmaConcatAssociativity!2662 prefix!494 newSuffix!27 lt!1448542) lt!1448796)))

(declare-fun bs!591880 () Bool)

(assert (= bs!591880 d!1205442))

(assert (=> bs!591880 m!4661017))

(declare-fun m!4661791 () Bool)

(assert (=> bs!591880 m!4661791))

(assert (=> bs!591880 m!4661017))

(assert (=> bs!591880 m!4660991))

(declare-fun m!4661793 () Bool)

(assert (=> bs!591880 m!4661793))

(declare-fun m!4661795 () Bool)

(assert (=> bs!591880 m!4661795))

(assert (=> bs!591880 m!4660991))

(assert (=> b!4056970 d!1205442))

(declare-fun b!4057503 () Bool)

(declare-fun e!2517860 () Bool)

(assert (=> b!4057503 (= e!2517860 (isPrefix!4045 (tail!6301 newSuffix!27) (tail!6301 suffix!1299)))))

(declare-fun d!1205444 () Bool)

(declare-fun e!2517861 () Bool)

(assert (=> d!1205444 e!2517861))

(declare-fun res!1654678 () Bool)

(assert (=> d!1205444 (=> res!1654678 e!2517861)))

(declare-fun lt!1448797 () Bool)

(assert (=> d!1205444 (= res!1654678 (not lt!1448797))))

(declare-fun e!2517859 () Bool)

(assert (=> d!1205444 (= lt!1448797 e!2517859)))

(declare-fun res!1654679 () Bool)

(assert (=> d!1205444 (=> res!1654679 e!2517859)))

(assert (=> d!1205444 (= res!1654679 ((_ is Nil!43365) newSuffix!27))))

(assert (=> d!1205444 (= (isPrefix!4045 newSuffix!27 suffix!1299) lt!1448797)))

(declare-fun b!4057502 () Bool)

(declare-fun res!1654676 () Bool)

(assert (=> b!4057502 (=> (not res!1654676) (not e!2517860))))

(assert (=> b!4057502 (= res!1654676 (= (head!8569 newSuffix!27) (head!8569 suffix!1299)))))

(declare-fun b!4057504 () Bool)

(assert (=> b!4057504 (= e!2517861 (>= (size!32422 suffix!1299) (size!32422 newSuffix!27)))))

(declare-fun b!4057501 () Bool)

(assert (=> b!4057501 (= e!2517859 e!2517860)))

(declare-fun res!1654677 () Bool)

(assert (=> b!4057501 (=> (not res!1654677) (not e!2517860))))

(assert (=> b!4057501 (= res!1654677 (not ((_ is Nil!43365) suffix!1299)))))

(assert (= (and d!1205444 (not res!1654679)) b!4057501))

(assert (= (and b!4057501 res!1654677) b!4057502))

(assert (= (and b!4057502 res!1654676) b!4057503))

(assert (= (and d!1205444 (not res!1654678)) b!4057504))

(declare-fun m!4661797 () Bool)

(assert (=> b!4057503 m!4661797))

(declare-fun m!4661799 () Bool)

(assert (=> b!4057503 m!4661799))

(assert (=> b!4057503 m!4661797))

(assert (=> b!4057503 m!4661799))

(declare-fun m!4661801 () Bool)

(assert (=> b!4057503 m!4661801))

(declare-fun m!4661803 () Bool)

(assert (=> b!4057502 m!4661803))

(declare-fun m!4661805 () Bool)

(assert (=> b!4057502 m!4661805))

(assert (=> b!4057504 m!4661049))

(assert (=> b!4057504 m!4661051))

(assert (=> b!4056991 d!1205444))

(declare-fun b!4057523 () Bool)

(declare-fun res!1654697 () Bool)

(declare-fun e!2517869 () Bool)

(assert (=> b!4057523 (=> (not res!1654697) (not e!2517869))))

(declare-fun lt!1448812 () Option!9372)

(assert (=> b!4057523 (= res!1654697 (= (++!11360 (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448812)))) (_2!24347 (get!14223 lt!1448812))) lt!1448557))))

(declare-fun b!4057524 () Bool)

(declare-fun res!1654696 () Bool)

(assert (=> b!4057524 (=> (not res!1654696) (not e!2517869))))

(assert (=> b!4057524 (= res!1654696 (= (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448812)))) (originalCharacters!7558 (_1!24347 (get!14223 lt!1448812)))))))

(declare-fun d!1205446 () Bool)

(declare-fun e!2517868 () Bool)

(assert (=> d!1205446 e!2517868))

(declare-fun res!1654698 () Bool)

(assert (=> d!1205446 (=> res!1654698 e!2517868)))

(assert (=> d!1205446 (= res!1654698 (isEmpty!25879 lt!1448812))))

(declare-fun e!2517870 () Option!9372)

(assert (=> d!1205446 (= lt!1448812 e!2517870)))

(declare-fun c!700713 () Bool)

(assert (=> d!1205446 (= c!700713 (and ((_ is Cons!43367) rules!2999) ((_ is Nil!43367) (t!336296 rules!2999))))))

(declare-fun lt!1448811 () Unit!62734)

(declare-fun lt!1448809 () Unit!62734)

(assert (=> d!1205446 (= lt!1448811 lt!1448809)))

(assert (=> d!1205446 (isPrefix!4045 lt!1448557 lt!1448557)))

(assert (=> d!1205446 (= lt!1448809 (lemmaIsPrefixRefl!2612 lt!1448557 lt!1448557))))

(declare-fun rulesValidInductive!2541 (LexerInterface!6547 List!43491) Bool)

(assert (=> d!1205446 (rulesValidInductive!2541 thiss!21717 rules!2999)))

(assert (=> d!1205446 (= (maxPrefix!3845 thiss!21717 rules!2999 lt!1448557) lt!1448812)))

(declare-fun b!4057525 () Bool)

(declare-fun lt!1448810 () Option!9372)

(declare-fun lt!1448808 () Option!9372)

(assert (=> b!4057525 (= e!2517870 (ite (and ((_ is None!9371) lt!1448810) ((_ is None!9371) lt!1448808)) None!9371 (ite ((_ is None!9371) lt!1448808) lt!1448810 (ite ((_ is None!9371) lt!1448810) lt!1448808 (ite (>= (size!32421 (_1!24347 (v!39787 lt!1448810))) (size!32421 (_1!24347 (v!39787 lt!1448808)))) lt!1448810 lt!1448808)))))))

(declare-fun call!288045 () Option!9372)

(assert (=> b!4057525 (= lt!1448810 call!288045)))

(assert (=> b!4057525 (= lt!1448808 (maxPrefix!3845 thiss!21717 (t!336296 rules!2999) lt!1448557))))

(declare-fun b!4057526 () Bool)

(assert (=> b!4057526 (= e!2517870 call!288045)))

(declare-fun b!4057527 () Bool)

(declare-fun res!1654695 () Bool)

(assert (=> b!4057527 (=> (not res!1654695) (not e!2517869))))

(assert (=> b!4057527 (= res!1654695 (< (size!32422 (_2!24347 (get!14223 lt!1448812))) (size!32422 lt!1448557)))))

(declare-fun b!4057528 () Bool)

(declare-fun res!1654700 () Bool)

(assert (=> b!4057528 (=> (not res!1654700) (not e!2517869))))

(assert (=> b!4057528 (= res!1654700 (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (get!14223 lt!1448812)))) (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448812))))))))

(declare-fun bm!288040 () Bool)

(assert (=> bm!288040 (= call!288045 (maxPrefixOneRule!2857 thiss!21717 (h!48787 rules!2999) lt!1448557))))

(declare-fun b!4057529 () Bool)

(declare-fun res!1654699 () Bool)

(assert (=> b!4057529 (=> (not res!1654699) (not e!2517869))))

(assert (=> b!4057529 (= res!1654699 (= (value!218937 (_1!24347 (get!14223 lt!1448812))) (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (get!14223 lt!1448812)))) (seqFromList!5175 (originalCharacters!7558 (_1!24347 (get!14223 lt!1448812)))))))))

(declare-fun b!4057530 () Bool)

(assert (=> b!4057530 (= e!2517869 (contains!8626 rules!2999 (rule!10046 (_1!24347 (get!14223 lt!1448812)))))))

(declare-fun b!4057531 () Bool)

(assert (=> b!4057531 (= e!2517868 e!2517869)))

(declare-fun res!1654694 () Bool)

(assert (=> b!4057531 (=> (not res!1654694) (not e!2517869))))

(declare-fun isDefined!7120 (Option!9372) Bool)

(assert (=> b!4057531 (= res!1654694 (isDefined!7120 lt!1448812))))

(assert (= (and d!1205446 c!700713) b!4057526))

(assert (= (and d!1205446 (not c!700713)) b!4057525))

(assert (= (or b!4057526 b!4057525) bm!288040))

(assert (= (and d!1205446 (not res!1654698)) b!4057531))

(assert (= (and b!4057531 res!1654694) b!4057524))

(assert (= (and b!4057524 res!1654696) b!4057527))

(assert (= (and b!4057527 res!1654695) b!4057523))

(assert (= (and b!4057523 res!1654697) b!4057529))

(assert (= (and b!4057529 res!1654699) b!4057528))

(assert (= (and b!4057528 res!1654700) b!4057530))

(declare-fun m!4661807 () Bool)

(assert (=> b!4057530 m!4661807))

(declare-fun m!4661809 () Bool)

(assert (=> b!4057530 m!4661809))

(assert (=> b!4057523 m!4661807))

(declare-fun m!4661811 () Bool)

(assert (=> b!4057523 m!4661811))

(assert (=> b!4057523 m!4661811))

(declare-fun m!4661813 () Bool)

(assert (=> b!4057523 m!4661813))

(assert (=> b!4057523 m!4661813))

(declare-fun m!4661815 () Bool)

(assert (=> b!4057523 m!4661815))

(assert (=> b!4057529 m!4661807))

(declare-fun m!4661817 () Bool)

(assert (=> b!4057529 m!4661817))

(assert (=> b!4057529 m!4661817))

(declare-fun m!4661819 () Bool)

(assert (=> b!4057529 m!4661819))

(assert (=> b!4057528 m!4661807))

(assert (=> b!4057528 m!4661811))

(assert (=> b!4057528 m!4661811))

(assert (=> b!4057528 m!4661813))

(assert (=> b!4057528 m!4661813))

(declare-fun m!4661821 () Bool)

(assert (=> b!4057528 m!4661821))

(declare-fun m!4661823 () Bool)

(assert (=> b!4057525 m!4661823))

(declare-fun m!4661825 () Bool)

(assert (=> b!4057531 m!4661825))

(assert (=> b!4057527 m!4661807))

(declare-fun m!4661827 () Bool)

(assert (=> b!4057527 m!4661827))

(assert (=> b!4057527 m!4661705))

(declare-fun m!4661829 () Bool)

(assert (=> d!1205446 m!4661829))

(declare-fun m!4661831 () Bool)

(assert (=> d!1205446 m!4661831))

(declare-fun m!4661833 () Bool)

(assert (=> d!1205446 m!4661833))

(declare-fun m!4661835 () Bool)

(assert (=> d!1205446 m!4661835))

(declare-fun m!4661837 () Bool)

(assert (=> bm!288040 m!4661837))

(assert (=> b!4057524 m!4661807))

(assert (=> b!4057524 m!4661811))

(assert (=> b!4057524 m!4661811))

(assert (=> b!4057524 m!4661813))

(assert (=> b!4056993 d!1205446))

(declare-fun d!1205448 () Bool)

(assert (=> d!1205448 (= suffixResult!105 lt!1448587)))

(declare-fun lt!1448815 () Unit!62734)

(declare-fun choose!24645 (List!43489 List!43489 List!43489 List!43489 List!43489) Unit!62734)

(assert (=> d!1205448 (= lt!1448815 (choose!24645 lt!1448600 suffixResult!105 lt!1448600 lt!1448587 lt!1448578))))

(assert (=> d!1205448 (isPrefix!4045 lt!1448600 lt!1448578)))

(assert (=> d!1205448 (= (lemmaSamePrefixThenSameSuffix!2206 lt!1448600 suffixResult!105 lt!1448600 lt!1448587 lt!1448578) lt!1448815)))

(declare-fun bs!591881 () Bool)

(assert (= bs!591881 d!1205448))

(declare-fun m!4661839 () Bool)

(assert (=> bs!591881 m!4661839))

(assert (=> bs!591881 m!4660865))

(assert (=> b!4056993 d!1205448))

(declare-fun b!4057534 () Bool)

(declare-fun e!2517872 () Bool)

(assert (=> b!4057534 (= e!2517872 (isPrefix!4045 (tail!6301 lt!1448600) (tail!6301 lt!1448566)))))

(declare-fun d!1205450 () Bool)

(declare-fun e!2517873 () Bool)

(assert (=> d!1205450 e!2517873))

(declare-fun res!1654703 () Bool)

(assert (=> d!1205450 (=> res!1654703 e!2517873)))

(declare-fun lt!1448816 () Bool)

(assert (=> d!1205450 (= res!1654703 (not lt!1448816))))

(declare-fun e!2517871 () Bool)

(assert (=> d!1205450 (= lt!1448816 e!2517871)))

(declare-fun res!1654704 () Bool)

(assert (=> d!1205450 (=> res!1654704 e!2517871)))

(assert (=> d!1205450 (= res!1654704 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205450 (= (isPrefix!4045 lt!1448600 lt!1448566) lt!1448816)))

(declare-fun b!4057533 () Bool)

(declare-fun res!1654701 () Bool)

(assert (=> b!4057533 (=> (not res!1654701) (not e!2517872))))

(assert (=> b!4057533 (= res!1654701 (= (head!8569 lt!1448600) (head!8569 lt!1448566)))))

(declare-fun b!4057535 () Bool)

(assert (=> b!4057535 (= e!2517873 (>= (size!32422 lt!1448566) (size!32422 lt!1448600)))))

(declare-fun b!4057532 () Bool)

(assert (=> b!4057532 (= e!2517871 e!2517872)))

(declare-fun res!1654702 () Bool)

(assert (=> b!4057532 (=> (not res!1654702) (not e!2517872))))

(assert (=> b!4057532 (= res!1654702 (not ((_ is Nil!43365) lt!1448566)))))

(assert (= (and d!1205450 (not res!1654704)) b!4057532))

(assert (= (and b!4057532 res!1654702) b!4057533))

(assert (= (and b!4057533 res!1654701) b!4057534))

(assert (= (and d!1205450 (not res!1654703)) b!4057535))

(declare-fun m!4661841 () Bool)

(assert (=> b!4057534 m!4661841))

(declare-fun m!4661843 () Bool)

(assert (=> b!4057534 m!4661843))

(assert (=> b!4057534 m!4661841))

(assert (=> b!4057534 m!4661843))

(declare-fun m!4661845 () Bool)

(assert (=> b!4057534 m!4661845))

(declare-fun m!4661847 () Bool)

(assert (=> b!4057533 m!4661847))

(declare-fun m!4661849 () Bool)

(assert (=> b!4057533 m!4661849))

(declare-fun m!4661851 () Bool)

(assert (=> b!4057535 m!4661851))

(assert (=> b!4057535 m!4660935))

(assert (=> b!4056993 d!1205450))

(declare-fun d!1205452 () Bool)

(assert (=> d!1205452 (isPrefix!4045 lt!1448600 (++!11360 lt!1448600 lt!1448587))))

(declare-fun lt!1448817 () Unit!62734)

(assert (=> d!1205452 (= lt!1448817 (choose!24641 lt!1448600 lt!1448587))))

(assert (=> d!1205452 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448600 lt!1448587) lt!1448817)))

(declare-fun bs!591882 () Bool)

(assert (= bs!591882 d!1205452))

(assert (=> bs!591882 m!4660927))

(assert (=> bs!591882 m!4660927))

(declare-fun m!4661853 () Bool)

(assert (=> bs!591882 m!4661853))

(declare-fun m!4661855 () Bool)

(assert (=> bs!591882 m!4661855))

(assert (=> b!4056993 d!1205452))

(declare-fun b!4057546 () Bool)

(declare-fun res!1654707 () Bool)

(declare-fun e!2517881 () Bool)

(assert (=> b!4057546 (=> res!1654707 e!2517881)))

(assert (=> b!4057546 (= res!1654707 (not ((_ is IntegerValue!21566) (value!218937 token!484))))))

(declare-fun e!2517880 () Bool)

(assert (=> b!4057546 (= e!2517880 e!2517881)))

(declare-fun b!4057547 () Bool)

(declare-fun e!2517882 () Bool)

(declare-fun inv!16 (TokenValue!7188) Bool)

(assert (=> b!4057547 (= e!2517882 (inv!16 (value!218937 token!484)))))

(declare-fun b!4057548 () Bool)

(declare-fun inv!15 (TokenValue!7188) Bool)

(assert (=> b!4057548 (= e!2517881 (inv!15 (value!218937 token!484)))))

(declare-fun d!1205454 () Bool)

(declare-fun c!700718 () Bool)

(assert (=> d!1205454 (= c!700718 ((_ is IntegerValue!21564) (value!218937 token!484)))))

(assert (=> d!1205454 (= (inv!21 (value!218937 token!484)) e!2517882)))

(declare-fun b!4057549 () Bool)

(declare-fun inv!17 (TokenValue!7188) Bool)

(assert (=> b!4057549 (= e!2517880 (inv!17 (value!218937 token!484)))))

(declare-fun b!4057550 () Bool)

(assert (=> b!4057550 (= e!2517882 e!2517880)))

(declare-fun c!700719 () Bool)

(assert (=> b!4057550 (= c!700719 ((_ is IntegerValue!21565) (value!218937 token!484)))))

(assert (= (and d!1205454 c!700718) b!4057547))

(assert (= (and d!1205454 (not c!700718)) b!4057550))

(assert (= (and b!4057550 c!700719) b!4057549))

(assert (= (and b!4057550 (not c!700719)) b!4057546))

(assert (= (and b!4057546 (not res!1654707)) b!4057548))

(declare-fun m!4661857 () Bool)

(assert (=> b!4057547 m!4661857))

(declare-fun m!4661859 () Bool)

(assert (=> b!4057548 m!4661859))

(declare-fun m!4661861 () Bool)

(assert (=> b!4057549 m!4661861))

(assert (=> b!4056992 d!1205454))

(declare-fun d!1205456 () Bool)

(assert (=> d!1205456 (not (matchR!5816 (regex!6958 (rule!10046 token!484)) lt!1448600))))

(declare-fun lt!1448820 () Unit!62734)

(declare-fun choose!24646 (LexerInterface!6547 List!43491 Rule!13716 List!43489 List!43489 List!43489 Rule!13716) Unit!62734)

(assert (=> d!1205456 (= lt!1448820 (choose!24646 thiss!21717 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448584 lt!1448557 lt!1448600 (rule!10046 token!484)))))

(assert (=> d!1205456 (isPrefix!4045 lt!1448584 lt!1448557)))

(assert (=> d!1205456 (= (lemmaMaxPrefixOutputsMaxPrefix!484 thiss!21717 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577))) lt!1448584 lt!1448557 lt!1448600 (rule!10046 token!484)) lt!1448820)))

(declare-fun bs!591883 () Bool)

(assert (= bs!591883 d!1205456))

(assert (=> bs!591883 m!4660871))

(declare-fun m!4661863 () Bool)

(assert (=> bs!591883 m!4661863))

(assert (=> bs!591883 m!4660987))

(assert (=> b!4056978 d!1205456))

(declare-fun d!1205458 () Bool)

(declare-fun res!1654712 () Bool)

(declare-fun e!2517885 () Bool)

(assert (=> d!1205458 (=> (not res!1654712) (not e!2517885))))

(assert (=> d!1205458 (= res!1654712 (not (isEmpty!25877 (originalCharacters!7558 token!484))))))

(assert (=> d!1205458 (= (inv!57970 token!484) e!2517885)))

(declare-fun b!4057555 () Bool)

(declare-fun res!1654713 () Bool)

(assert (=> b!4057555 (=> (not res!1654713) (not e!2517885))))

(assert (=> b!4057555 (= res!1654713 (= (originalCharacters!7558 token!484) (list!16160 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (value!218937 token!484)))))))

(declare-fun b!4057556 () Bool)

(assert (=> b!4057556 (= e!2517885 (= (size!32421 token!484) (size!32422 (originalCharacters!7558 token!484))))))

(assert (= (and d!1205458 res!1654712) b!4057555))

(assert (= (and b!4057555 res!1654713) b!4057556))

(declare-fun b_lambda!118559 () Bool)

(assert (=> (not b_lambda!118559) (not b!4057555)))

(declare-fun tb!244065 () Bool)

(declare-fun t!336331 () Bool)

(assert (=> (and b!4056994 (= (toChars!9373 (transformation!6958 (h!48787 rules!2999))) (toChars!9373 (transformation!6958 (rule!10046 token!484)))) t!336331) tb!244065))

(declare-fun b!4057557 () Bool)

(declare-fun e!2517886 () Bool)

(declare-fun tp!1229622 () Bool)

(assert (=> b!4057557 (= e!2517886 (and (inv!57974 (c!700632 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (value!218937 token!484)))) tp!1229622))))

(declare-fun result!295752 () Bool)

(assert (=> tb!244065 (= result!295752 (and (inv!57975 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (value!218937 token!484))) e!2517886))))

(assert (= tb!244065 b!4057557))

(declare-fun m!4661865 () Bool)

(assert (=> b!4057557 m!4661865))

(declare-fun m!4661867 () Bool)

(assert (=> tb!244065 m!4661867))

(assert (=> b!4057555 t!336331))

(declare-fun b_and!311979 () Bool)

(assert (= b_and!311951 (and (=> t!336331 result!295752) b_and!311979)))

(declare-fun t!336333 () Bool)

(declare-fun tb!244067 () Bool)

(assert (=> (and b!4056971 (= (toChars!9373 (transformation!6958 (rule!10046 token!484))) (toChars!9373 (transformation!6958 (rule!10046 token!484)))) t!336333) tb!244067))

(declare-fun result!295754 () Bool)

(assert (= result!295754 result!295752))

(assert (=> b!4057555 t!336333))

(declare-fun b_and!311981 () Bool)

(assert (= b_and!311953 (and (=> t!336333 result!295754) b_and!311981)))

(declare-fun m!4661869 () Bool)

(assert (=> d!1205458 m!4661869))

(declare-fun m!4661871 () Bool)

(assert (=> b!4057555 m!4661871))

(assert (=> b!4057555 m!4661871))

(declare-fun m!4661873 () Bool)

(assert (=> b!4057555 m!4661873))

(assert (=> b!4057556 m!4660925))

(assert (=> start!382580 d!1205458))

(declare-fun b!4057559 () Bool)

(declare-fun e!2517888 () List!43489)

(assert (=> b!4057559 (= e!2517888 (Cons!43365 (h!48785 lt!1448600) (++!11360 (t!336294 lt!1448600) suffixResult!105)))))

(declare-fun lt!1448821 () List!43489)

(declare-fun e!2517887 () Bool)

(declare-fun b!4057561 () Bool)

(assert (=> b!4057561 (= e!2517887 (or (not (= suffixResult!105 Nil!43365)) (= lt!1448821 lt!1448600)))))

(declare-fun b!4057560 () Bool)

(declare-fun res!1654715 () Bool)

(assert (=> b!4057560 (=> (not res!1654715) (not e!2517887))))

(assert (=> b!4057560 (= res!1654715 (= (size!32422 lt!1448821) (+ (size!32422 lt!1448600) (size!32422 suffixResult!105))))))

(declare-fun d!1205460 () Bool)

(assert (=> d!1205460 e!2517887))

(declare-fun res!1654714 () Bool)

(assert (=> d!1205460 (=> (not res!1654714) (not e!2517887))))

(assert (=> d!1205460 (= res!1654714 (= (content!6610 lt!1448821) ((_ map or) (content!6610 lt!1448600) (content!6610 suffixResult!105))))))

(assert (=> d!1205460 (= lt!1448821 e!2517888)))

(declare-fun c!700720 () Bool)

(assert (=> d!1205460 (= c!700720 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205460 (= (++!11360 lt!1448600 suffixResult!105) lt!1448821)))

(declare-fun b!4057558 () Bool)

(assert (=> b!4057558 (= e!2517888 suffixResult!105)))

(assert (= (and d!1205460 c!700720) b!4057558))

(assert (= (and d!1205460 (not c!700720)) b!4057559))

(assert (= (and d!1205460 res!1654714) b!4057560))

(assert (= (and b!4057560 res!1654715) b!4057561))

(declare-fun m!4661875 () Bool)

(assert (=> b!4057559 m!4661875))

(declare-fun m!4661877 () Bool)

(assert (=> b!4057560 m!4661877))

(assert (=> b!4057560 m!4660935))

(declare-fun m!4661879 () Bool)

(assert (=> b!4057560 m!4661879))

(declare-fun m!4661881 () Bool)

(assert (=> d!1205460 m!4661881))

(declare-fun m!4661883 () Bool)

(assert (=> d!1205460 m!4661883))

(declare-fun m!4661885 () Bool)

(assert (=> d!1205460 m!4661885))

(assert (=> b!4057001 d!1205460))

(declare-fun d!1205462 () Bool)

(declare-fun e!2517889 () Bool)

(assert (=> d!1205462 e!2517889))

(declare-fun res!1654716 () Bool)

(assert (=> d!1205462 (=> (not res!1654716) (not e!2517889))))

(assert (=> d!1205462 (= res!1654716 (semiInverseModEq!2974 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))))))

(declare-fun Unit!62745 () Unit!62734)

(assert (=> d!1205462 (= (lemmaInv!1167 (transformation!6958 (rule!10046 token!484))) Unit!62745)))

(declare-fun b!4057562 () Bool)

(assert (=> b!4057562 (= e!2517889 (equivClasses!2873 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))))))

(assert (= (and d!1205462 res!1654716) b!4057562))

(declare-fun m!4661887 () Bool)

(assert (=> d!1205462 m!4661887))

(declare-fun m!4661889 () Bool)

(assert (=> b!4057562 m!4661889))

(assert (=> b!4057001 d!1205462))

(declare-fun d!1205464 () Bool)

(declare-fun res!1654717 () Bool)

(declare-fun e!2517890 () Bool)

(assert (=> d!1205464 (=> (not res!1654717) (not e!2517890))))

(assert (=> d!1205464 (= res!1654717 (validRegex!5366 (regex!6958 (rule!10046 token!484))))))

(assert (=> d!1205464 (= (ruleValid!2888 thiss!21717 (rule!10046 token!484)) e!2517890)))

(declare-fun b!4057563 () Bool)

(declare-fun res!1654718 () Bool)

(assert (=> b!4057563 (=> (not res!1654718) (not e!2517890))))

(assert (=> b!4057563 (= res!1654718 (not (nullable!4166 (regex!6958 (rule!10046 token!484)))))))

(declare-fun b!4057564 () Bool)

(assert (=> b!4057564 (= e!2517890 (not (= (tag!7818 (rule!10046 token!484)) (String!49659 ""))))))

(assert (= (and d!1205464 res!1654717) b!4057563))

(assert (= (and b!4057563 res!1654718) b!4057564))

(declare-fun m!4661891 () Bool)

(assert (=> d!1205464 m!4661891))

(declare-fun m!4661893 () Bool)

(assert (=> b!4057563 m!4661893))

(assert (=> b!4057001 d!1205464))

(declare-fun d!1205466 () Bool)

(assert (=> d!1205466 (ruleValid!2888 thiss!21717 (rule!10046 token!484))))

(declare-fun lt!1448822 () Unit!62734)

(assert (=> d!1205466 (= lt!1448822 (choose!24642 thiss!21717 (rule!10046 token!484) rules!2999))))

(assert (=> d!1205466 (contains!8626 rules!2999 (rule!10046 token!484))))

(assert (=> d!1205466 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1958 thiss!21717 (rule!10046 token!484) rules!2999) lt!1448822)))

(declare-fun bs!591884 () Bool)

(assert (= bs!591884 d!1205466))

(assert (=> bs!591884 m!4660979))

(declare-fun m!4661895 () Bool)

(assert (=> bs!591884 m!4661895))

(assert (=> bs!591884 m!4661015))

(assert (=> b!4057001 d!1205466))

(declare-fun d!1205468 () Bool)

(assert (=> d!1205468 (= (isEmpty!25877 lt!1448600) ((_ is Nil!43365) lt!1448600))))

(assert (=> b!4057000 d!1205468))

(declare-fun d!1205470 () Bool)

(declare-fun lt!1448823 () Int)

(assert (=> d!1205470 (>= lt!1448823 0)))

(declare-fun e!2517891 () Int)

(assert (=> d!1205470 (= lt!1448823 e!2517891)))

(declare-fun c!700721 () Bool)

(assert (=> d!1205470 (= c!700721 ((_ is Nil!43365) (originalCharacters!7558 token!484)))))

(assert (=> d!1205470 (= (size!32422 (originalCharacters!7558 token!484)) lt!1448823)))

(declare-fun b!4057565 () Bool)

(assert (=> b!4057565 (= e!2517891 0)))

(declare-fun b!4057566 () Bool)

(assert (=> b!4057566 (= e!2517891 (+ 1 (size!32422 (t!336294 (originalCharacters!7558 token!484)))))))

(assert (= (and d!1205470 c!700721) b!4057565))

(assert (= (and d!1205470 (not c!700721)) b!4057566))

(declare-fun m!4661897 () Bool)

(assert (=> b!4057566 m!4661897))

(assert (=> b!4056979 d!1205470))

(declare-fun b!4057568 () Bool)

(declare-fun e!2517893 () List!43489)

(assert (=> b!4057568 (= e!2517893 (Cons!43365 (h!48785 lt!1448600) (++!11360 (t!336294 lt!1448600) lt!1448587)))))

(declare-fun e!2517892 () Bool)

(declare-fun lt!1448824 () List!43489)

(declare-fun b!4057570 () Bool)

(assert (=> b!4057570 (= e!2517892 (or (not (= lt!1448587 Nil!43365)) (= lt!1448824 lt!1448600)))))

(declare-fun b!4057569 () Bool)

(declare-fun res!1654720 () Bool)

(assert (=> b!4057569 (=> (not res!1654720) (not e!2517892))))

(assert (=> b!4057569 (= res!1654720 (= (size!32422 lt!1448824) (+ (size!32422 lt!1448600) (size!32422 lt!1448587))))))

(declare-fun d!1205472 () Bool)

(assert (=> d!1205472 e!2517892))

(declare-fun res!1654719 () Bool)

(assert (=> d!1205472 (=> (not res!1654719) (not e!2517892))))

(assert (=> d!1205472 (= res!1654719 (= (content!6610 lt!1448824) ((_ map or) (content!6610 lt!1448600) (content!6610 lt!1448587))))))

(assert (=> d!1205472 (= lt!1448824 e!2517893)))

(declare-fun c!700722 () Bool)

(assert (=> d!1205472 (= c!700722 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205472 (= (++!11360 lt!1448600 lt!1448587) lt!1448824)))

(declare-fun b!4057567 () Bool)

(assert (=> b!4057567 (= e!2517893 lt!1448587)))

(assert (= (and d!1205472 c!700722) b!4057567))

(assert (= (and d!1205472 (not c!700722)) b!4057568))

(assert (= (and d!1205472 res!1654719) b!4057569))

(assert (= (and b!4057569 res!1654720) b!4057570))

(declare-fun m!4661899 () Bool)

(assert (=> b!4057568 m!4661899))

(declare-fun m!4661901 () Bool)

(assert (=> b!4057569 m!4661901))

(assert (=> b!4057569 m!4660935))

(declare-fun m!4661903 () Bool)

(assert (=> b!4057569 m!4661903))

(declare-fun m!4661905 () Bool)

(assert (=> d!1205472 m!4661905))

(assert (=> d!1205472 m!4661883))

(declare-fun m!4661907 () Bool)

(assert (=> d!1205472 m!4661907))

(assert (=> b!4056996 d!1205472))

(declare-fun d!1205474 () Bool)

(declare-fun lt!1448827 () List!43489)

(assert (=> d!1205474 (= (++!11360 lt!1448600 lt!1448827) lt!1448578)))

(declare-fun e!2517896 () List!43489)

(assert (=> d!1205474 (= lt!1448827 e!2517896)))

(declare-fun c!700725 () Bool)

(assert (=> d!1205474 (= c!700725 ((_ is Cons!43365) lt!1448600))))

(assert (=> d!1205474 (>= (size!32422 lt!1448578) (size!32422 lt!1448600))))

(assert (=> d!1205474 (= (getSuffix!2462 lt!1448578 lt!1448600) lt!1448827)))

(declare-fun b!4057575 () Bool)

(assert (=> b!4057575 (= e!2517896 (getSuffix!2462 (tail!6301 lt!1448578) (t!336294 lt!1448600)))))

(declare-fun b!4057576 () Bool)

(assert (=> b!4057576 (= e!2517896 lt!1448578)))

(assert (= (and d!1205474 c!700725) b!4057575))

(assert (= (and d!1205474 (not c!700725)) b!4057576))

(declare-fun m!4661909 () Bool)

(assert (=> d!1205474 m!4661909))

(declare-fun m!4661911 () Bool)

(assert (=> d!1205474 m!4661911))

(assert (=> d!1205474 m!4660935))

(declare-fun m!4661913 () Bool)

(assert (=> b!4057575 m!4661913))

(assert (=> b!4057575 m!4661913))

(declare-fun m!4661915 () Bool)

(assert (=> b!4057575 m!4661915))

(assert (=> b!4056996 d!1205474))

(declare-fun b!4057579 () Bool)

(declare-fun e!2517898 () Bool)

(assert (=> b!4057579 (= e!2517898 (isPrefix!4045 (tail!6301 lt!1448578) (tail!6301 lt!1448578)))))

(declare-fun d!1205476 () Bool)

(declare-fun e!2517899 () Bool)

(assert (=> d!1205476 e!2517899))

(declare-fun res!1654723 () Bool)

(assert (=> d!1205476 (=> res!1654723 e!2517899)))

(declare-fun lt!1448828 () Bool)

(assert (=> d!1205476 (= res!1654723 (not lt!1448828))))

(declare-fun e!2517897 () Bool)

(assert (=> d!1205476 (= lt!1448828 e!2517897)))

(declare-fun res!1654724 () Bool)

(assert (=> d!1205476 (=> res!1654724 e!2517897)))

(assert (=> d!1205476 (= res!1654724 ((_ is Nil!43365) lt!1448578))))

(assert (=> d!1205476 (= (isPrefix!4045 lt!1448578 lt!1448578) lt!1448828)))

(declare-fun b!4057578 () Bool)

(declare-fun res!1654721 () Bool)

(assert (=> b!4057578 (=> (not res!1654721) (not e!2517898))))

(assert (=> b!4057578 (= res!1654721 (= (head!8569 lt!1448578) (head!8569 lt!1448578)))))

(declare-fun b!4057580 () Bool)

(assert (=> b!4057580 (= e!2517899 (>= (size!32422 lt!1448578) (size!32422 lt!1448578)))))

(declare-fun b!4057577 () Bool)

(assert (=> b!4057577 (= e!2517897 e!2517898)))

(declare-fun res!1654722 () Bool)

(assert (=> b!4057577 (=> (not res!1654722) (not e!2517898))))

(assert (=> b!4057577 (= res!1654722 (not ((_ is Nil!43365) lt!1448578)))))

(assert (= (and d!1205476 (not res!1654724)) b!4057577))

(assert (= (and b!4057577 res!1654722) b!4057578))

(assert (= (and b!4057578 res!1654721) b!4057579))

(assert (= (and d!1205476 (not res!1654723)) b!4057580))

(assert (=> b!4057579 m!4661913))

(assert (=> b!4057579 m!4661913))

(assert (=> b!4057579 m!4661913))

(assert (=> b!4057579 m!4661913))

(declare-fun m!4661917 () Bool)

(assert (=> b!4057579 m!4661917))

(declare-fun m!4661919 () Bool)

(assert (=> b!4057578 m!4661919))

(assert (=> b!4057578 m!4661919))

(assert (=> b!4057580 m!4661911))

(assert (=> b!4057580 m!4661911))

(assert (=> b!4056996 d!1205476))

(declare-fun d!1205478 () Bool)

(assert (=> d!1205478 (isPrefix!4045 lt!1448578 lt!1448578)))

(declare-fun lt!1448831 () Unit!62734)

(declare-fun choose!24647 (List!43489 List!43489) Unit!62734)

(assert (=> d!1205478 (= lt!1448831 (choose!24647 lt!1448578 lt!1448578))))

(assert (=> d!1205478 (= (lemmaIsPrefixRefl!2612 lt!1448578 lt!1448578) lt!1448831)))

(declare-fun bs!591885 () Bool)

(assert (= bs!591885 d!1205478))

(assert (=> bs!591885 m!4660931))

(declare-fun m!4661921 () Bool)

(assert (=> bs!591885 m!4661921))

(assert (=> b!4056996 d!1205478))

(declare-fun d!1205480 () Bool)

(declare-fun res!1654727 () Bool)

(declare-fun e!2517902 () Bool)

(assert (=> d!1205480 (=> (not res!1654727) (not e!2517902))))

(declare-fun rulesValid!2708 (LexerInterface!6547 List!43491) Bool)

(assert (=> d!1205480 (= res!1654727 (rulesValid!2708 thiss!21717 rules!2999))))

(assert (=> d!1205480 (= (rulesInvariant!5890 thiss!21717 rules!2999) e!2517902)))

(declare-fun b!4057583 () Bool)

(declare-datatypes ((List!43493 0))(
  ( (Nil!43369) (Cons!43369 (h!48789 String!49658) (t!336346 List!43493)) )
))
(declare-fun noDuplicateTag!2709 (LexerInterface!6547 List!43491 List!43493) Bool)

(assert (=> b!4057583 (= e!2517902 (noDuplicateTag!2709 thiss!21717 rules!2999 Nil!43369))))

(assert (= (and d!1205480 res!1654727) b!4057583))

(declare-fun m!4661923 () Bool)

(assert (=> d!1205480 m!4661923))

(declare-fun m!4661925 () Bool)

(assert (=> b!4057583 m!4661925))

(assert (=> b!4056975 d!1205480))

(declare-fun d!1205482 () Bool)

(declare-fun lt!1448834 () Bool)

(declare-fun content!6611 (List!43491) (InoxSet Rule!13716))

(assert (=> d!1205482 (= lt!1448834 (select (content!6611 rules!2999) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(declare-fun e!2517908 () Bool)

(assert (=> d!1205482 (= lt!1448834 e!2517908)))

(declare-fun res!1654733 () Bool)

(assert (=> d!1205482 (=> (not res!1654733) (not e!2517908))))

(assert (=> d!1205482 (= res!1654733 ((_ is Cons!43367) rules!2999))))

(assert (=> d!1205482 (= (contains!8626 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448834)))

(declare-fun b!4057588 () Bool)

(declare-fun e!2517907 () Bool)

(assert (=> b!4057588 (= e!2517908 e!2517907)))

(declare-fun res!1654732 () Bool)

(assert (=> b!4057588 (=> res!1654732 e!2517907)))

(assert (=> b!4057588 (= res!1654732 (= (h!48787 rules!2999) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(declare-fun b!4057589 () Bool)

(assert (=> b!4057589 (= e!2517907 (contains!8626 (t!336296 rules!2999) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(assert (= (and d!1205482 res!1654733) b!4057588))

(assert (= (and b!4057588 (not res!1654732)) b!4057589))

(declare-fun m!4661927 () Bool)

(assert (=> d!1205482 m!4661927))

(declare-fun m!4661929 () Bool)

(assert (=> d!1205482 m!4661929))

(declare-fun m!4661931 () Bool)

(assert (=> b!4057589 m!4661931))

(assert (=> b!4056998 d!1205482))

(declare-fun b!4057618 () Bool)

(declare-fun e!2517924 () Bool)

(assert (=> b!4057618 (= e!2517924 (not (= (head!8569 lt!1448600) (c!700633 (regex!6958 (rule!10046 token!484))))))))

(declare-fun b!4057619 () Bool)

(declare-fun res!1654753 () Bool)

(assert (=> b!4057619 (=> res!1654753 e!2517924)))

(assert (=> b!4057619 (= res!1654753 (not (isEmpty!25877 (tail!6301 lt!1448600))))))

(declare-fun b!4057620 () Bool)

(declare-fun res!1654752 () Bool)

(declare-fun e!2517923 () Bool)

(assert (=> b!4057620 (=> (not res!1654752) (not e!2517923))))

(declare-fun call!288048 () Bool)

(assert (=> b!4057620 (= res!1654752 (not call!288048))))

(declare-fun bm!288043 () Bool)

(assert (=> bm!288043 (= call!288048 (isEmpty!25877 lt!1448600))))

(declare-fun d!1205484 () Bool)

(declare-fun e!2517929 () Bool)

(assert (=> d!1205484 e!2517929))

(declare-fun c!700732 () Bool)

(assert (=> d!1205484 (= c!700732 ((_ is EmptyExpr!11863) (regex!6958 (rule!10046 token!484))))))

(declare-fun lt!1448837 () Bool)

(declare-fun e!2517928 () Bool)

(assert (=> d!1205484 (= lt!1448837 e!2517928)))

(declare-fun c!700733 () Bool)

(assert (=> d!1205484 (= c!700733 (isEmpty!25877 lt!1448600))))

(assert (=> d!1205484 (validRegex!5366 (regex!6958 (rule!10046 token!484)))))

(assert (=> d!1205484 (= (matchR!5816 (regex!6958 (rule!10046 token!484)) lt!1448600) lt!1448837)))

(declare-fun b!4057621 () Bool)

(declare-fun res!1654750 () Bool)

(assert (=> b!4057621 (=> (not res!1654750) (not e!2517923))))

(assert (=> b!4057621 (= res!1654750 (isEmpty!25877 (tail!6301 lt!1448600)))))

(declare-fun b!4057622 () Bool)

(assert (=> b!4057622 (= e!2517928 (nullable!4166 (regex!6958 (rule!10046 token!484))))))

(declare-fun b!4057623 () Bool)

(declare-fun e!2517927 () Bool)

(declare-fun e!2517926 () Bool)

(assert (=> b!4057623 (= e!2517927 e!2517926)))

(declare-fun res!1654754 () Bool)

(assert (=> b!4057623 (=> (not res!1654754) (not e!2517926))))

(assert (=> b!4057623 (= res!1654754 (not lt!1448837))))

(declare-fun b!4057624 () Bool)

(declare-fun e!2517925 () Bool)

(assert (=> b!4057624 (= e!2517925 (not lt!1448837))))

(declare-fun b!4057625 () Bool)

(assert (=> b!4057625 (= e!2517929 (= lt!1448837 call!288048))))

(declare-fun b!4057626 () Bool)

(assert (=> b!4057626 (= e!2517926 e!2517924)))

(declare-fun res!1654755 () Bool)

(assert (=> b!4057626 (=> res!1654755 e!2517924)))

(assert (=> b!4057626 (= res!1654755 call!288048)))

(declare-fun b!4057627 () Bool)

(declare-fun res!1654757 () Bool)

(assert (=> b!4057627 (=> res!1654757 e!2517927)))

(assert (=> b!4057627 (= res!1654757 e!2517923)))

(declare-fun res!1654756 () Bool)

(assert (=> b!4057627 (=> (not res!1654756) (not e!2517923))))

(assert (=> b!4057627 (= res!1654756 lt!1448837)))

(declare-fun b!4057628 () Bool)

(declare-fun res!1654751 () Bool)

(assert (=> b!4057628 (=> res!1654751 e!2517927)))

(assert (=> b!4057628 (= res!1654751 (not ((_ is ElementMatch!11863) (regex!6958 (rule!10046 token!484)))))))

(assert (=> b!4057628 (= e!2517925 e!2517927)))

(declare-fun b!4057629 () Bool)

(assert (=> b!4057629 (= e!2517923 (= (head!8569 lt!1448600) (c!700633 (regex!6958 (rule!10046 token!484)))))))

(declare-fun b!4057630 () Bool)

(declare-fun derivativeStep!3571 (Regex!11863 C!23912) Regex!11863)

(assert (=> b!4057630 (= e!2517928 (matchR!5816 (derivativeStep!3571 (regex!6958 (rule!10046 token!484)) (head!8569 lt!1448600)) (tail!6301 lt!1448600)))))

(declare-fun b!4057631 () Bool)

(assert (=> b!4057631 (= e!2517929 e!2517925)))

(declare-fun c!700734 () Bool)

(assert (=> b!4057631 (= c!700734 ((_ is EmptyLang!11863) (regex!6958 (rule!10046 token!484))))))

(assert (= (and d!1205484 c!700733) b!4057622))

(assert (= (and d!1205484 (not c!700733)) b!4057630))

(assert (= (and d!1205484 c!700732) b!4057625))

(assert (= (and d!1205484 (not c!700732)) b!4057631))

(assert (= (and b!4057631 c!700734) b!4057624))

(assert (= (and b!4057631 (not c!700734)) b!4057628))

(assert (= (and b!4057628 (not res!1654751)) b!4057627))

(assert (= (and b!4057627 res!1654756) b!4057620))

(assert (= (and b!4057620 res!1654752) b!4057621))

(assert (= (and b!4057621 res!1654750) b!4057629))

(assert (= (and b!4057627 (not res!1654757)) b!4057623))

(assert (= (and b!4057623 res!1654754) b!4057626))

(assert (= (and b!4057626 (not res!1654755)) b!4057619))

(assert (= (and b!4057619 (not res!1654753)) b!4057618))

(assert (= (or b!4057625 b!4057620 b!4057626) bm!288043))

(assert (=> bm!288043 m!4661013))

(assert (=> b!4057630 m!4661847))

(assert (=> b!4057630 m!4661847))

(declare-fun m!4661933 () Bool)

(assert (=> b!4057630 m!4661933))

(assert (=> b!4057630 m!4661841))

(assert (=> b!4057630 m!4661933))

(assert (=> b!4057630 m!4661841))

(declare-fun m!4661935 () Bool)

(assert (=> b!4057630 m!4661935))

(assert (=> b!4057618 m!4661847))

(assert (=> b!4057629 m!4661847))

(assert (=> b!4057622 m!4661893))

(assert (=> b!4057619 m!4661841))

(assert (=> b!4057619 m!4661841))

(declare-fun m!4661937 () Bool)

(assert (=> b!4057619 m!4661937))

(assert (=> b!4057621 m!4661841))

(assert (=> b!4057621 m!4661841))

(assert (=> b!4057621 m!4661937))

(assert (=> d!1205484 m!4661013))

(assert (=> d!1205484 m!4661891))

(assert (=> b!4056976 d!1205484))

(declare-fun b!4057634 () Bool)

(declare-fun e!2517931 () Bool)

(assert (=> b!4057634 (= e!2517931 (isPrefix!4045 (tail!6301 lt!1448600) (tail!6301 lt!1448557)))))

(declare-fun d!1205486 () Bool)

(declare-fun e!2517932 () Bool)

(assert (=> d!1205486 e!2517932))

(declare-fun res!1654760 () Bool)

(assert (=> d!1205486 (=> res!1654760 e!2517932)))

(declare-fun lt!1448838 () Bool)

(assert (=> d!1205486 (= res!1654760 (not lt!1448838))))

(declare-fun e!2517930 () Bool)

(assert (=> d!1205486 (= lt!1448838 e!2517930)))

(declare-fun res!1654761 () Bool)

(assert (=> d!1205486 (=> res!1654761 e!2517930)))

(assert (=> d!1205486 (= res!1654761 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205486 (= (isPrefix!4045 lt!1448600 lt!1448557) lt!1448838)))

(declare-fun b!4057633 () Bool)

(declare-fun res!1654758 () Bool)

(assert (=> b!4057633 (=> (not res!1654758) (not e!2517931))))

(assert (=> b!4057633 (= res!1654758 (= (head!8569 lt!1448600) (head!8569 lt!1448557)))))

(declare-fun b!4057635 () Bool)

(assert (=> b!4057635 (= e!2517932 (>= (size!32422 lt!1448557) (size!32422 lt!1448600)))))

(declare-fun b!4057632 () Bool)

(assert (=> b!4057632 (= e!2517930 e!2517931)))

(declare-fun res!1654759 () Bool)

(assert (=> b!4057632 (=> (not res!1654759) (not e!2517931))))

(assert (=> b!4057632 (= res!1654759 (not ((_ is Nil!43365) lt!1448557)))))

(assert (= (and d!1205486 (not res!1654761)) b!4057632))

(assert (= (and b!4057632 res!1654759) b!4057633))

(assert (= (and b!4057633 res!1654758) b!4057634))

(assert (= (and d!1205486 (not res!1654760)) b!4057635))

(assert (=> b!4057634 m!4661841))

(declare-fun m!4661939 () Bool)

(assert (=> b!4057634 m!4661939))

(assert (=> b!4057634 m!4661841))

(assert (=> b!4057634 m!4661939))

(declare-fun m!4661941 () Bool)

(assert (=> b!4057634 m!4661941))

(assert (=> b!4057633 m!4661847))

(declare-fun m!4661943 () Bool)

(assert (=> b!4057633 m!4661943))

(assert (=> b!4057635 m!4661705))

(assert (=> b!4057635 m!4660935))

(assert (=> b!4056976 d!1205486))

(declare-fun d!1205488 () Bool)

(assert (=> d!1205488 (isPrefix!4045 lt!1448600 (++!11360 prefix!494 newSuffix!27))))

(declare-fun lt!1448841 () Unit!62734)

(declare-fun choose!24648 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> d!1205488 (= lt!1448841 (choose!24648 lt!1448600 prefix!494 newSuffix!27))))

(assert (=> d!1205488 (isPrefix!4045 lt!1448600 prefix!494)))

(assert (=> d!1205488 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!838 lt!1448600 prefix!494 newSuffix!27) lt!1448841)))

(declare-fun bs!591886 () Bool)

(assert (= bs!591886 d!1205488))

(assert (=> bs!591886 m!4660991))

(assert (=> bs!591886 m!4660991))

(declare-fun m!4661945 () Bool)

(assert (=> bs!591886 m!4661945))

(declare-fun m!4661947 () Bool)

(assert (=> bs!591886 m!4661947))

(assert (=> bs!591886 m!4661001))

(assert (=> b!4056976 d!1205488))

(declare-fun d!1205490 () Bool)

(assert (=> d!1205490 (isPrefix!4045 lt!1448600 (++!11360 prefix!494 suffix!1299))))

(declare-fun lt!1448842 () Unit!62734)

(assert (=> d!1205490 (= lt!1448842 (choose!24648 lt!1448600 prefix!494 suffix!1299))))

(assert (=> d!1205490 (isPrefix!4045 lt!1448600 prefix!494)))

(assert (=> d!1205490 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!838 lt!1448600 prefix!494 suffix!1299) lt!1448842)))

(declare-fun bs!591887 () Bool)

(assert (= bs!591887 d!1205490))

(assert (=> bs!591887 m!4660985))

(assert (=> bs!591887 m!4660985))

(declare-fun m!4661949 () Bool)

(assert (=> bs!591887 m!4661949))

(declare-fun m!4661951 () Bool)

(assert (=> bs!591887 m!4661951))

(assert (=> bs!591887 m!4661001))

(assert (=> b!4056976 d!1205490))

(declare-fun b!4057638 () Bool)

(declare-fun e!2517934 () Bool)

(assert (=> b!4057638 (= e!2517934 (isPrefix!4045 (tail!6301 lt!1448600) (tail!6301 lt!1448578)))))

(declare-fun d!1205492 () Bool)

(declare-fun e!2517935 () Bool)

(assert (=> d!1205492 e!2517935))

(declare-fun res!1654764 () Bool)

(assert (=> d!1205492 (=> res!1654764 e!2517935)))

(declare-fun lt!1448843 () Bool)

(assert (=> d!1205492 (= res!1654764 (not lt!1448843))))

(declare-fun e!2517933 () Bool)

(assert (=> d!1205492 (= lt!1448843 e!2517933)))

(declare-fun res!1654765 () Bool)

(assert (=> d!1205492 (=> res!1654765 e!2517933)))

(assert (=> d!1205492 (= res!1654765 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205492 (= (isPrefix!4045 lt!1448600 lt!1448578) lt!1448843)))

(declare-fun b!4057637 () Bool)

(declare-fun res!1654762 () Bool)

(assert (=> b!4057637 (=> (not res!1654762) (not e!2517934))))

(assert (=> b!4057637 (= res!1654762 (= (head!8569 lt!1448600) (head!8569 lt!1448578)))))

(declare-fun b!4057639 () Bool)

(assert (=> b!4057639 (= e!2517935 (>= (size!32422 lt!1448578) (size!32422 lt!1448600)))))

(declare-fun b!4057636 () Bool)

(assert (=> b!4057636 (= e!2517933 e!2517934)))

(declare-fun res!1654763 () Bool)

(assert (=> b!4057636 (=> (not res!1654763) (not e!2517934))))

(assert (=> b!4057636 (= res!1654763 (not ((_ is Nil!43365) lt!1448578)))))

(assert (= (and d!1205492 (not res!1654765)) b!4057636))

(assert (= (and b!4057636 res!1654763) b!4057637))

(assert (= (and b!4057637 res!1654762) b!4057638))

(assert (= (and d!1205492 (not res!1654764)) b!4057639))

(assert (=> b!4057638 m!4661841))

(assert (=> b!4057638 m!4661913))

(assert (=> b!4057638 m!4661841))

(assert (=> b!4057638 m!4661913))

(declare-fun m!4661953 () Bool)

(assert (=> b!4057638 m!4661953))

(assert (=> b!4057637 m!4661847))

(assert (=> b!4057637 m!4661919))

(assert (=> b!4057639 m!4661911))

(assert (=> b!4057639 m!4660935))

(assert (=> b!4056962 d!1205492))

(declare-fun b!4057642 () Bool)

(declare-fun e!2517937 () Bool)

(assert (=> b!4057642 (= e!2517937 (isPrefix!4045 (tail!6301 prefix!494) (tail!6301 lt!1448578)))))

(declare-fun d!1205494 () Bool)

(declare-fun e!2517938 () Bool)

(assert (=> d!1205494 e!2517938))

(declare-fun res!1654768 () Bool)

(assert (=> d!1205494 (=> res!1654768 e!2517938)))

(declare-fun lt!1448844 () Bool)

(assert (=> d!1205494 (= res!1654768 (not lt!1448844))))

(declare-fun e!2517936 () Bool)

(assert (=> d!1205494 (= lt!1448844 e!2517936)))

(declare-fun res!1654769 () Bool)

(assert (=> d!1205494 (=> res!1654769 e!2517936)))

(assert (=> d!1205494 (= res!1654769 ((_ is Nil!43365) prefix!494))))

(assert (=> d!1205494 (= (isPrefix!4045 prefix!494 lt!1448578) lt!1448844)))

(declare-fun b!4057641 () Bool)

(declare-fun res!1654766 () Bool)

(assert (=> b!4057641 (=> (not res!1654766) (not e!2517937))))

(assert (=> b!4057641 (= res!1654766 (= (head!8569 prefix!494) (head!8569 lt!1448578)))))

(declare-fun b!4057643 () Bool)

(assert (=> b!4057643 (= e!2517938 (>= (size!32422 lt!1448578) (size!32422 prefix!494)))))

(declare-fun b!4057640 () Bool)

(assert (=> b!4057640 (= e!2517936 e!2517937)))

(declare-fun res!1654767 () Bool)

(assert (=> b!4057640 (=> (not res!1654767) (not e!2517937))))

(assert (=> b!4057640 (= res!1654767 (not ((_ is Nil!43365) lt!1448578)))))

(assert (= (and d!1205494 (not res!1654769)) b!4057640))

(assert (= (and b!4057640 res!1654767) b!4057641))

(assert (= (and b!4057641 res!1654766) b!4057642))

(assert (= (and d!1205494 (not res!1654768)) b!4057643))

(declare-fun m!4661955 () Bool)

(assert (=> b!4057642 m!4661955))

(assert (=> b!4057642 m!4661913))

(assert (=> b!4057642 m!4661955))

(assert (=> b!4057642 m!4661913))

(declare-fun m!4661957 () Bool)

(assert (=> b!4057642 m!4661957))

(declare-fun m!4661959 () Bool)

(assert (=> b!4057641 m!4661959))

(assert (=> b!4057641 m!4661919))

(assert (=> b!4057643 m!4661911))

(assert (=> b!4057643 m!4660937))

(assert (=> b!4056962 d!1205494))

(declare-fun d!1205496 () Bool)

(assert (=> d!1205496 (isPrefix!4045 lt!1448600 (++!11360 lt!1448600 suffixResult!105))))

(declare-fun lt!1448845 () Unit!62734)

(assert (=> d!1205496 (= lt!1448845 (choose!24641 lt!1448600 suffixResult!105))))

(assert (=> d!1205496 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448600 suffixResult!105) lt!1448845)))

(declare-fun bs!591888 () Bool)

(assert (= bs!591888 d!1205496))

(assert (=> bs!591888 m!4660975))

(assert (=> bs!591888 m!4660975))

(declare-fun m!4661961 () Bool)

(assert (=> bs!591888 m!4661961))

(declare-fun m!4661963 () Bool)

(assert (=> bs!591888 m!4661963))

(assert (=> b!4056962 d!1205496))

(declare-fun d!1205498 () Bool)

(assert (=> d!1205498 (isPrefix!4045 prefix!494 (++!11360 prefix!494 suffix!1299))))

(declare-fun lt!1448846 () Unit!62734)

(assert (=> d!1205498 (= lt!1448846 (choose!24641 prefix!494 suffix!1299))))

(assert (=> d!1205498 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 prefix!494 suffix!1299) lt!1448846)))

(declare-fun bs!591889 () Bool)

(assert (= bs!591889 d!1205498))

(assert (=> bs!591889 m!4660985))

(assert (=> bs!591889 m!4660985))

(declare-fun m!4661965 () Bool)

(assert (=> bs!591889 m!4661965))

(declare-fun m!4661967 () Bool)

(assert (=> bs!591889 m!4661967))

(assert (=> b!4056962 d!1205498))

(declare-fun b!4057646 () Bool)

(declare-fun e!2517940 () Bool)

(assert (=> b!4057646 (= e!2517940 (isPrefix!4045 (tail!6301 lt!1448600) (tail!6301 lt!1448589)))))

(declare-fun d!1205500 () Bool)

(declare-fun e!2517941 () Bool)

(assert (=> d!1205500 e!2517941))

(declare-fun res!1654772 () Bool)

(assert (=> d!1205500 (=> res!1654772 e!2517941)))

(declare-fun lt!1448847 () Bool)

(assert (=> d!1205500 (= res!1654772 (not lt!1448847))))

(declare-fun e!2517939 () Bool)

(assert (=> d!1205500 (= lt!1448847 e!2517939)))

(declare-fun res!1654773 () Bool)

(assert (=> d!1205500 (=> res!1654773 e!2517939)))

(assert (=> d!1205500 (= res!1654773 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205500 (= (isPrefix!4045 lt!1448600 lt!1448589) lt!1448847)))

(declare-fun b!4057645 () Bool)

(declare-fun res!1654770 () Bool)

(assert (=> b!4057645 (=> (not res!1654770) (not e!2517940))))

(assert (=> b!4057645 (= res!1654770 (= (head!8569 lt!1448600) (head!8569 lt!1448589)))))

(declare-fun b!4057647 () Bool)

(assert (=> b!4057647 (= e!2517941 (>= (size!32422 lt!1448589) (size!32422 lt!1448600)))))

(declare-fun b!4057644 () Bool)

(assert (=> b!4057644 (= e!2517939 e!2517940)))

(declare-fun res!1654771 () Bool)

(assert (=> b!4057644 (=> (not res!1654771) (not e!2517940))))

(assert (=> b!4057644 (= res!1654771 (not ((_ is Nil!43365) lt!1448589)))))

(assert (= (and d!1205500 (not res!1654773)) b!4057644))

(assert (= (and b!4057644 res!1654771) b!4057645))

(assert (= (and b!4057645 res!1654770) b!4057646))

(assert (= (and d!1205500 (not res!1654772)) b!4057647))

(assert (=> b!4057646 m!4661841))

(declare-fun m!4661969 () Bool)

(assert (=> b!4057646 m!4661969))

(assert (=> b!4057646 m!4661841))

(assert (=> b!4057646 m!4661969))

(declare-fun m!4661971 () Bool)

(assert (=> b!4057646 m!4661971))

(assert (=> b!4057645 m!4661847))

(declare-fun m!4661973 () Bool)

(assert (=> b!4057645 m!4661973))

(declare-fun m!4661975 () Bool)

(assert (=> b!4057647 m!4661975))

(assert (=> b!4057647 m!4660935))

(assert (=> b!4056962 d!1205500))

(declare-fun b!4057650 () Bool)

(declare-fun e!2517943 () Bool)

(assert (=> b!4057650 (= e!2517943 (isPrefix!4045 (tail!6301 lt!1448600) (tail!6301 lt!1448552)))))

(declare-fun d!1205502 () Bool)

(declare-fun e!2517944 () Bool)

(assert (=> d!1205502 e!2517944))

(declare-fun res!1654776 () Bool)

(assert (=> d!1205502 (=> res!1654776 e!2517944)))

(declare-fun lt!1448848 () Bool)

(assert (=> d!1205502 (= res!1654776 (not lt!1448848))))

(declare-fun e!2517942 () Bool)

(assert (=> d!1205502 (= lt!1448848 e!2517942)))

(declare-fun res!1654777 () Bool)

(assert (=> d!1205502 (=> res!1654777 e!2517942)))

(assert (=> d!1205502 (= res!1654777 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205502 (= (isPrefix!4045 lt!1448600 lt!1448552) lt!1448848)))

(declare-fun b!4057649 () Bool)

(declare-fun res!1654774 () Bool)

(assert (=> b!4057649 (=> (not res!1654774) (not e!2517943))))

(assert (=> b!4057649 (= res!1654774 (= (head!8569 lt!1448600) (head!8569 lt!1448552)))))

(declare-fun b!4057651 () Bool)

(assert (=> b!4057651 (= e!2517944 (>= (size!32422 lt!1448552) (size!32422 lt!1448600)))))

(declare-fun b!4057648 () Bool)

(assert (=> b!4057648 (= e!2517942 e!2517943)))

(declare-fun res!1654775 () Bool)

(assert (=> b!4057648 (=> (not res!1654775) (not e!2517943))))

(assert (=> b!4057648 (= res!1654775 (not ((_ is Nil!43365) lt!1448552)))))

(assert (= (and d!1205502 (not res!1654777)) b!4057648))

(assert (= (and b!4057648 res!1654775) b!4057649))

(assert (= (and b!4057649 res!1654774) b!4057650))

(assert (= (and d!1205502 (not res!1654776)) b!4057651))

(assert (=> b!4057650 m!4661841))

(declare-fun m!4661977 () Bool)

(assert (=> b!4057650 m!4661977))

(assert (=> b!4057650 m!4661841))

(assert (=> b!4057650 m!4661977))

(declare-fun m!4661979 () Bool)

(assert (=> b!4057650 m!4661979))

(assert (=> b!4057649 m!4661847))

(declare-fun m!4661981 () Bool)

(assert (=> b!4057649 m!4661981))

(declare-fun m!4661983 () Bool)

(assert (=> b!4057651 m!4661983))

(assert (=> b!4057651 m!4660935))

(assert (=> b!4057005 d!1205502))

(declare-fun b!4057652 () Bool)

(declare-fun e!2517947 () Option!9372)

(declare-fun lt!1448851 () tuple2!42428)

(assert (=> b!4057652 (= e!2517947 (Some!9371 (tuple2!42427 (Token!13055 (apply!10147 (transformation!6958 (rule!10046 token!484)) (seqFromList!5175 (_1!24348 lt!1448851))) (rule!10046 token!484) (size!32423 (seqFromList!5175 (_1!24348 lt!1448851))) (_1!24348 lt!1448851)) (_2!24348 lt!1448851))))))

(declare-fun lt!1448852 () Unit!62734)

(assert (=> b!4057652 (= lt!1448852 (longestMatchIsAcceptedByMatchOrIsEmpty!1375 (regex!6958 (rule!10046 token!484)) lt!1448578))))

(declare-fun res!1654784 () Bool)

(assert (=> b!4057652 (= res!1654784 (isEmpty!25877 (_1!24348 (findLongestMatchInner!1402 (regex!6958 (rule!10046 token!484)) Nil!43365 (size!32422 Nil!43365) lt!1448578 lt!1448578 (size!32422 lt!1448578)))))))

(declare-fun e!2517948 () Bool)

(assert (=> b!4057652 (=> res!1654784 e!2517948)))

(assert (=> b!4057652 e!2517948))

(declare-fun lt!1448849 () Unit!62734)

(assert (=> b!4057652 (= lt!1448849 lt!1448852)))

(declare-fun lt!1448853 () Unit!62734)

(assert (=> b!4057652 (= lt!1448853 (lemmaSemiInverse!1930 (transformation!6958 (rule!10046 token!484)) (seqFromList!5175 (_1!24348 lt!1448851))))))

(declare-fun b!4057654 () Bool)

(assert (=> b!4057654 (= e!2517948 (matchR!5816 (regex!6958 (rule!10046 token!484)) (_1!24348 (findLongestMatchInner!1402 (regex!6958 (rule!10046 token!484)) Nil!43365 (size!32422 Nil!43365) lt!1448578 lt!1448578 (size!32422 lt!1448578)))))))

(declare-fun b!4057655 () Bool)

(declare-fun e!2517945 () Bool)

(declare-fun e!2517946 () Bool)

(assert (=> b!4057655 (= e!2517945 e!2517946)))

(declare-fun res!1654783 () Bool)

(assert (=> b!4057655 (=> (not res!1654783) (not e!2517946))))

(declare-fun lt!1448850 () Option!9372)

(assert (=> b!4057655 (= res!1654783 (matchR!5816 (regex!6958 (rule!10046 token!484)) (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448850))))))))

(declare-fun b!4057656 () Bool)

(declare-fun res!1654781 () Bool)

(assert (=> b!4057656 (=> (not res!1654781) (not e!2517946))))

(assert (=> b!4057656 (= res!1654781 (= (value!218937 (_1!24347 (get!14223 lt!1448850))) (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (get!14223 lt!1448850)))) (seqFromList!5175 (originalCharacters!7558 (_1!24347 (get!14223 lt!1448850)))))))))

(declare-fun b!4057657 () Bool)

(declare-fun res!1654779 () Bool)

(assert (=> b!4057657 (=> (not res!1654779) (not e!2517946))))

(assert (=> b!4057657 (= res!1654779 (< (size!32422 (_2!24347 (get!14223 lt!1448850))) (size!32422 lt!1448578)))))

(declare-fun b!4057658 () Bool)

(assert (=> b!4057658 (= e!2517947 None!9371)))

(declare-fun b!4057659 () Bool)

(assert (=> b!4057659 (= e!2517946 (= (size!32421 (_1!24347 (get!14223 lt!1448850))) (size!32422 (originalCharacters!7558 (_1!24347 (get!14223 lt!1448850))))))))

(declare-fun b!4057660 () Bool)

(declare-fun res!1654782 () Bool)

(assert (=> b!4057660 (=> (not res!1654782) (not e!2517946))))

(assert (=> b!4057660 (= res!1654782 (= (++!11360 (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448850)))) (_2!24347 (get!14223 lt!1448850))) lt!1448578))))

(declare-fun d!1205504 () Bool)

(assert (=> d!1205504 e!2517945))

(declare-fun res!1654780 () Bool)

(assert (=> d!1205504 (=> res!1654780 e!2517945)))

(assert (=> d!1205504 (= res!1654780 (isEmpty!25879 lt!1448850))))

(assert (=> d!1205504 (= lt!1448850 e!2517947)))

(declare-fun c!700735 () Bool)

(assert (=> d!1205504 (= c!700735 (isEmpty!25877 (_1!24348 lt!1448851)))))

(assert (=> d!1205504 (= lt!1448851 (findLongestMatch!1315 (regex!6958 (rule!10046 token!484)) lt!1448578))))

(assert (=> d!1205504 (ruleValid!2888 thiss!21717 (rule!10046 token!484))))

(assert (=> d!1205504 (= (maxPrefixOneRule!2857 thiss!21717 (rule!10046 token!484) lt!1448578) lt!1448850)))

(declare-fun b!4057653 () Bool)

(declare-fun res!1654778 () Bool)

(assert (=> b!4057653 (=> (not res!1654778) (not e!2517946))))

(assert (=> b!4057653 (= res!1654778 (= (rule!10046 (_1!24347 (get!14223 lt!1448850))) (rule!10046 token!484)))))

(assert (= (and d!1205504 c!700735) b!4057658))

(assert (= (and d!1205504 (not c!700735)) b!4057652))

(assert (= (and b!4057652 (not res!1654784)) b!4057654))

(assert (= (and d!1205504 (not res!1654780)) b!4057655))

(assert (= (and b!4057655 res!1654783) b!4057660))

(assert (= (and b!4057660 res!1654782) b!4057657))

(assert (= (and b!4057657 res!1654779) b!4057653))

(assert (= (and b!4057653 res!1654778) b!4057656))

(assert (= (and b!4057656 res!1654781) b!4057659))

(declare-fun m!4661985 () Bool)

(assert (=> b!4057656 m!4661985))

(declare-fun m!4661987 () Bool)

(assert (=> b!4057656 m!4661987))

(assert (=> b!4057656 m!4661987))

(declare-fun m!4661989 () Bool)

(assert (=> b!4057656 m!4661989))

(declare-fun m!4661991 () Bool)

(assert (=> d!1205504 m!4661991))

(declare-fun m!4661993 () Bool)

(assert (=> d!1205504 m!4661993))

(declare-fun m!4661995 () Bool)

(assert (=> d!1205504 m!4661995))

(assert (=> d!1205504 m!4660979))

(assert (=> b!4057660 m!4661985))

(declare-fun m!4661997 () Bool)

(assert (=> b!4057660 m!4661997))

(assert (=> b!4057660 m!4661997))

(declare-fun m!4661999 () Bool)

(assert (=> b!4057660 m!4661999))

(assert (=> b!4057660 m!4661999))

(declare-fun m!4662001 () Bool)

(assert (=> b!4057660 m!4662001))

(assert (=> b!4057652 m!4661911))

(declare-fun m!4662003 () Bool)

(assert (=> b!4057652 m!4662003))

(declare-fun m!4662005 () Bool)

(assert (=> b!4057652 m!4662005))

(assert (=> b!4057652 m!4661711))

(assert (=> b!4057652 m!4661911))

(declare-fun m!4662007 () Bool)

(assert (=> b!4057652 m!4662007))

(assert (=> b!4057652 m!4662003))

(declare-fun m!4662009 () Bool)

(assert (=> b!4057652 m!4662009))

(assert (=> b!4057652 m!4662003))

(declare-fun m!4662011 () Bool)

(assert (=> b!4057652 m!4662011))

(assert (=> b!4057652 m!4662003))

(declare-fun m!4662013 () Bool)

(assert (=> b!4057652 m!4662013))

(assert (=> b!4057652 m!4661711))

(declare-fun m!4662015 () Bool)

(assert (=> b!4057652 m!4662015))

(assert (=> b!4057653 m!4661985))

(assert (=> b!4057654 m!4661711))

(assert (=> b!4057654 m!4661911))

(assert (=> b!4057654 m!4661711))

(assert (=> b!4057654 m!4661911))

(assert (=> b!4057654 m!4662007))

(declare-fun m!4662017 () Bool)

(assert (=> b!4057654 m!4662017))

(assert (=> b!4057657 m!4661985))

(declare-fun m!4662019 () Bool)

(assert (=> b!4057657 m!4662019))

(assert (=> b!4057657 m!4661911))

(assert (=> b!4057659 m!4661985))

(declare-fun m!4662021 () Bool)

(assert (=> b!4057659 m!4662021))

(assert (=> b!4057655 m!4661985))

(assert (=> b!4057655 m!4661997))

(assert (=> b!4057655 m!4661997))

(assert (=> b!4057655 m!4661999))

(assert (=> b!4057655 m!4661999))

(declare-fun m!4662023 () Bool)

(assert (=> b!4057655 m!4662023))

(assert (=> b!4057005 d!1205504))

(declare-fun d!1205506 () Bool)

(assert (=> d!1205506 (isPrefix!4045 lt!1448600 (++!11360 lt!1448600 lt!1448583))))

(declare-fun lt!1448854 () Unit!62734)

(assert (=> d!1205506 (= lt!1448854 (choose!24641 lt!1448600 lt!1448583))))

(assert (=> d!1205506 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448600 lt!1448583) lt!1448854)))

(declare-fun bs!591890 () Bool)

(assert (= bs!591890 d!1205506))

(assert (=> bs!591890 m!4661041))

(assert (=> bs!591890 m!4661041))

(declare-fun m!4662025 () Bool)

(assert (=> bs!591890 m!4662025))

(declare-fun m!4662027 () Bool)

(assert (=> bs!591890 m!4662027))

(assert (=> b!4057005 d!1205506))

(declare-fun d!1205508 () Bool)

(assert (=> d!1205508 (= (apply!10147 (transformation!6958 (rule!10046 token!484)) (seqFromList!5175 lt!1448600)) (dynLambda!18421 (toValue!9514 (transformation!6958 (rule!10046 token!484))) (seqFromList!5175 lt!1448600)))))

(declare-fun b_lambda!118561 () Bool)

(assert (=> (not b_lambda!118561) (not d!1205508)))

(declare-fun t!336335 () Bool)

(declare-fun tb!244069 () Bool)

(assert (=> (and b!4056994 (= (toValue!9514 (transformation!6958 (h!48787 rules!2999))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))) t!336335) tb!244069))

(declare-fun result!295756 () Bool)

(assert (=> tb!244069 (= result!295756 (inv!21 (dynLambda!18421 (toValue!9514 (transformation!6958 (rule!10046 token!484))) (seqFromList!5175 lt!1448600))))))

(declare-fun m!4662029 () Bool)

(assert (=> tb!244069 m!4662029))

(assert (=> d!1205508 t!336335))

(declare-fun b_and!311983 () Bool)

(assert (= b_and!311975 (and (=> t!336335 result!295756) b_and!311983)))

(declare-fun t!336337 () Bool)

(declare-fun tb!244071 () Bool)

(assert (=> (and b!4056971 (= (toValue!9514 (transformation!6958 (rule!10046 token!484))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))) t!336337) tb!244071))

(declare-fun result!295758 () Bool)

(assert (= result!295758 result!295756))

(assert (=> d!1205508 t!336337))

(declare-fun b_and!311985 () Bool)

(assert (= b_and!311977 (and (=> t!336337 result!295758) b_and!311985)))

(assert (=> d!1205508 m!4660945))

(declare-fun m!4662031 () Bool)

(assert (=> d!1205508 m!4662031))

(assert (=> b!4057005 d!1205508))

(declare-fun d!1205510 () Bool)

(assert (=> d!1205510 (= lt!1448583 suffixResult!105)))

(declare-fun lt!1448855 () Unit!62734)

(assert (=> d!1205510 (= lt!1448855 (choose!24645 lt!1448600 lt!1448583 lt!1448600 suffixResult!105 lt!1448578))))

(assert (=> d!1205510 (isPrefix!4045 lt!1448600 lt!1448578)))

(assert (=> d!1205510 (= (lemmaSamePrefixThenSameSuffix!2206 lt!1448600 lt!1448583 lt!1448600 suffixResult!105 lt!1448578) lt!1448855)))

(declare-fun bs!591891 () Bool)

(assert (= bs!591891 d!1205510))

(declare-fun m!4662033 () Bool)

(assert (=> bs!591891 m!4662033))

(assert (=> bs!591891 m!4660865))

(assert (=> b!4057005 d!1205510))

(declare-fun d!1205512 () Bool)

(assert (=> d!1205512 (= (seqFromList!5175 lt!1448600) (fromListB!2359 lt!1448600))))

(declare-fun bs!591892 () Bool)

(assert (= bs!591892 d!1205512))

(declare-fun m!4662035 () Bool)

(assert (=> bs!591892 m!4662035))

(assert (=> b!4057005 d!1205512))

(declare-fun d!1205514 () Bool)

(assert (=> d!1205514 (= (maxPrefixOneRule!2857 thiss!21717 (rule!10046 token!484) lt!1448578) (Some!9371 (tuple2!42427 (Token!13055 (apply!10147 (transformation!6958 (rule!10046 token!484)) (seqFromList!5175 lt!1448600)) (rule!10046 token!484) (size!32422 lt!1448600) lt!1448600) suffixResult!105)))))

(declare-fun lt!1448856 () Unit!62734)

(assert (=> d!1205514 (= lt!1448856 (choose!24639 thiss!21717 rules!2999 lt!1448600 lt!1448578 suffixResult!105 (rule!10046 token!484)))))

(assert (=> d!1205514 (not (isEmpty!25876 rules!2999))))

(assert (=> d!1205514 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1663 thiss!21717 rules!2999 lt!1448600 lt!1448578 suffixResult!105 (rule!10046 token!484)) lt!1448856)))

(declare-fun bs!591893 () Bool)

(assert (= bs!591893 d!1205514))

(assert (=> bs!591893 m!4660869))

(assert (=> bs!591893 m!4660949))

(assert (=> bs!591893 m!4660945))

(declare-fun m!4662037 () Bool)

(assert (=> bs!591893 m!4662037))

(assert (=> bs!591893 m!4660945))

(assert (=> bs!591893 m!4660947))

(assert (=> bs!591893 m!4660935))

(assert (=> b!4057005 d!1205514))

(declare-fun b!4057662 () Bool)

(declare-fun e!2517951 () List!43489)

(assert (=> b!4057662 (= e!2517951 (Cons!43365 (h!48785 lt!1448600) (++!11360 (t!336294 lt!1448600) lt!1448575)))))

(declare-fun b!4057664 () Bool)

(declare-fun lt!1448857 () List!43489)

(declare-fun e!2517950 () Bool)

(assert (=> b!4057664 (= e!2517950 (or (not (= lt!1448575 Nil!43365)) (= lt!1448857 lt!1448600)))))

(declare-fun b!4057663 () Bool)

(declare-fun res!1654786 () Bool)

(assert (=> b!4057663 (=> (not res!1654786) (not e!2517950))))

(assert (=> b!4057663 (= res!1654786 (= (size!32422 lt!1448857) (+ (size!32422 lt!1448600) (size!32422 lt!1448575))))))

(declare-fun d!1205516 () Bool)

(assert (=> d!1205516 e!2517950))

(declare-fun res!1654785 () Bool)

(assert (=> d!1205516 (=> (not res!1654785) (not e!2517950))))

(assert (=> d!1205516 (= res!1654785 (= (content!6610 lt!1448857) ((_ map or) (content!6610 lt!1448600) (content!6610 lt!1448575))))))

(assert (=> d!1205516 (= lt!1448857 e!2517951)))

(declare-fun c!700736 () Bool)

(assert (=> d!1205516 (= c!700736 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205516 (= (++!11360 lt!1448600 lt!1448575) lt!1448857)))

(declare-fun b!4057661 () Bool)

(assert (=> b!4057661 (= e!2517951 lt!1448575)))

(assert (= (and d!1205516 c!700736) b!4057661))

(assert (= (and d!1205516 (not c!700736)) b!4057662))

(assert (= (and d!1205516 res!1654785) b!4057663))

(assert (= (and b!4057663 res!1654786) b!4057664))

(declare-fun m!4662039 () Bool)

(assert (=> b!4057662 m!4662039))

(declare-fun m!4662041 () Bool)

(assert (=> b!4057663 m!4662041))

(assert (=> b!4057663 m!4660935))

(declare-fun m!4662043 () Bool)

(assert (=> b!4057663 m!4662043))

(declare-fun m!4662045 () Bool)

(assert (=> d!1205516 m!4662045))

(assert (=> d!1205516 m!4661883))

(declare-fun m!4662047 () Bool)

(assert (=> d!1205516 m!4662047))

(assert (=> b!4057004 d!1205516))

(declare-fun d!1205518 () Bool)

(declare-fun lt!1448858 () List!43489)

(assert (=> d!1205518 (= (++!11360 lt!1448600 lt!1448858) prefix!494)))

(declare-fun e!2517952 () List!43489)

(assert (=> d!1205518 (= lt!1448858 e!2517952)))

(declare-fun c!700737 () Bool)

(assert (=> d!1205518 (= c!700737 ((_ is Cons!43365) lt!1448600))))

(assert (=> d!1205518 (>= (size!32422 prefix!494) (size!32422 lt!1448600))))

(assert (=> d!1205518 (= (getSuffix!2462 prefix!494 lt!1448600) lt!1448858)))

(declare-fun b!4057665 () Bool)

(assert (=> b!4057665 (= e!2517952 (getSuffix!2462 (tail!6301 prefix!494) (t!336294 lt!1448600)))))

(declare-fun b!4057666 () Bool)

(assert (=> b!4057666 (= e!2517952 prefix!494)))

(assert (= (and d!1205518 c!700737) b!4057665))

(assert (= (and d!1205518 (not c!700737)) b!4057666))

(declare-fun m!4662049 () Bool)

(assert (=> d!1205518 m!4662049))

(assert (=> d!1205518 m!4660937))

(assert (=> d!1205518 m!4660935))

(assert (=> b!4057665 m!4661955))

(assert (=> b!4057665 m!4661955))

(declare-fun m!4662051 () Bool)

(assert (=> b!4057665 m!4662051))

(assert (=> b!4057004 d!1205518))

(declare-fun b!4057669 () Bool)

(declare-fun e!2517954 () Bool)

(assert (=> b!4057669 (= e!2517954 (isPrefix!4045 (tail!6301 lt!1448600) (tail!6301 prefix!494)))))

(declare-fun d!1205520 () Bool)

(declare-fun e!2517955 () Bool)

(assert (=> d!1205520 e!2517955))

(declare-fun res!1654789 () Bool)

(assert (=> d!1205520 (=> res!1654789 e!2517955)))

(declare-fun lt!1448859 () Bool)

(assert (=> d!1205520 (= res!1654789 (not lt!1448859))))

(declare-fun e!2517953 () Bool)

(assert (=> d!1205520 (= lt!1448859 e!2517953)))

(declare-fun res!1654790 () Bool)

(assert (=> d!1205520 (=> res!1654790 e!2517953)))

(assert (=> d!1205520 (= res!1654790 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205520 (= (isPrefix!4045 lt!1448600 prefix!494) lt!1448859)))

(declare-fun b!4057668 () Bool)

(declare-fun res!1654787 () Bool)

(assert (=> b!4057668 (=> (not res!1654787) (not e!2517954))))

(assert (=> b!4057668 (= res!1654787 (= (head!8569 lt!1448600) (head!8569 prefix!494)))))

(declare-fun b!4057670 () Bool)

(assert (=> b!4057670 (= e!2517955 (>= (size!32422 prefix!494) (size!32422 lt!1448600)))))

(declare-fun b!4057667 () Bool)

(assert (=> b!4057667 (= e!2517953 e!2517954)))

(declare-fun res!1654788 () Bool)

(assert (=> b!4057667 (=> (not res!1654788) (not e!2517954))))

(assert (=> b!4057667 (= res!1654788 (not ((_ is Nil!43365) prefix!494)))))

(assert (= (and d!1205520 (not res!1654790)) b!4057667))

(assert (= (and b!4057667 res!1654788) b!4057668))

(assert (= (and b!4057668 res!1654787) b!4057669))

(assert (= (and d!1205520 (not res!1654789)) b!4057670))

(assert (=> b!4057669 m!4661841))

(assert (=> b!4057669 m!4661955))

(assert (=> b!4057669 m!4661841))

(assert (=> b!4057669 m!4661955))

(declare-fun m!4662053 () Bool)

(assert (=> b!4057669 m!4662053))

(assert (=> b!4057668 m!4661847))

(assert (=> b!4057668 m!4661959))

(assert (=> b!4057670 m!4660937))

(assert (=> b!4057670 m!4660935))

(assert (=> b!4057004 d!1205520))

(declare-fun d!1205522 () Bool)

(assert (=> d!1205522 (isPrefix!4045 lt!1448600 prefix!494)))

(declare-fun lt!1448862 () Unit!62734)

(declare-fun choose!24649 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> d!1205522 (= lt!1448862 (choose!24649 prefix!494 lt!1448600 lt!1448578))))

(assert (=> d!1205522 (isPrefix!4045 prefix!494 lt!1448578)))

(assert (=> d!1205522 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!609 prefix!494 lt!1448600 lt!1448578) lt!1448862)))

(declare-fun bs!591894 () Bool)

(assert (= bs!591894 d!1205522))

(assert (=> bs!591894 m!4661001))

(declare-fun m!4662055 () Bool)

(assert (=> bs!591894 m!4662055))

(assert (=> bs!591894 m!4660863))

(assert (=> b!4057004 d!1205522))

(declare-fun d!1205524 () Bool)

(assert (=> d!1205524 (= (inv!57967 (tag!7818 (h!48787 rules!2999))) (= (mod (str.len (value!218936 (tag!7818 (h!48787 rules!2999)))) 2) 0))))

(assert (=> b!4056983 d!1205524))

(declare-fun d!1205526 () Bool)

(declare-fun res!1654793 () Bool)

(declare-fun e!2517958 () Bool)

(assert (=> d!1205526 (=> (not res!1654793) (not e!2517958))))

(assert (=> d!1205526 (= res!1654793 (semiInverseModEq!2974 (toChars!9373 (transformation!6958 (h!48787 rules!2999))) (toValue!9514 (transformation!6958 (h!48787 rules!2999)))))))

(assert (=> d!1205526 (= (inv!57971 (transformation!6958 (h!48787 rules!2999))) e!2517958)))

(declare-fun b!4057673 () Bool)

(assert (=> b!4057673 (= e!2517958 (equivClasses!2873 (toChars!9373 (transformation!6958 (h!48787 rules!2999))) (toValue!9514 (transformation!6958 (h!48787 rules!2999)))))))

(assert (= (and d!1205526 res!1654793) b!4057673))

(declare-fun m!4662057 () Bool)

(assert (=> d!1205526 m!4662057))

(declare-fun m!4662059 () Bool)

(assert (=> b!4057673 m!4662059))

(assert (=> b!4056983 d!1205526))

(declare-fun d!1205528 () Bool)

(assert (=> d!1205528 (= (inv!57967 (tag!7818 (rule!10046 token!484))) (= (mod (str.len (value!218936 (tag!7818 (rule!10046 token!484)))) 2) 0))))

(assert (=> b!4057006 d!1205528))

(declare-fun d!1205530 () Bool)

(declare-fun res!1654794 () Bool)

(declare-fun e!2517959 () Bool)

(assert (=> d!1205530 (=> (not res!1654794) (not e!2517959))))

(assert (=> d!1205530 (= res!1654794 (semiInverseModEq!2974 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))))))

(assert (=> d!1205530 (= (inv!57971 (transformation!6958 (rule!10046 token!484))) e!2517959)))

(declare-fun b!4057674 () Bool)

(assert (=> b!4057674 (= e!2517959 (equivClasses!2873 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))))))

(assert (= (and d!1205530 res!1654794) b!4057674))

(assert (=> d!1205530 m!4661887))

(assert (=> b!4057674 m!4661889))

(assert (=> b!4057006 d!1205530))

(declare-fun d!1205532 () Bool)

(declare-fun lt!1448863 () Int)

(assert (=> d!1205532 (>= lt!1448863 0)))

(declare-fun e!2517960 () Int)

(assert (=> d!1205532 (= lt!1448863 e!2517960)))

(declare-fun c!700738 () Bool)

(assert (=> d!1205532 (= c!700738 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205532 (= (size!32422 lt!1448600) lt!1448863)))

(declare-fun b!4057675 () Bool)

(assert (=> b!4057675 (= e!2517960 0)))

(declare-fun b!4057676 () Bool)

(assert (=> b!4057676 (= e!2517960 (+ 1 (size!32422 (t!336294 lt!1448600))))))

(assert (= (and d!1205532 c!700738) b!4057675))

(assert (= (and d!1205532 (not c!700738)) b!4057676))

(declare-fun m!4662061 () Bool)

(assert (=> b!4057676 m!4662061))

(assert (=> b!4056984 d!1205532))

(declare-fun d!1205534 () Bool)

(declare-fun lt!1448864 () Int)

(assert (=> d!1205534 (>= lt!1448864 0)))

(declare-fun e!2517961 () Int)

(assert (=> d!1205534 (= lt!1448864 e!2517961)))

(declare-fun c!700739 () Bool)

(assert (=> d!1205534 (= c!700739 ((_ is Nil!43365) prefix!494))))

(assert (=> d!1205534 (= (size!32422 prefix!494) lt!1448864)))

(declare-fun b!4057677 () Bool)

(assert (=> b!4057677 (= e!2517961 0)))

(declare-fun b!4057678 () Bool)

(assert (=> b!4057678 (= e!2517961 (+ 1 (size!32422 (t!336294 prefix!494))))))

(assert (= (and d!1205534 c!700739) b!4057677))

(assert (= (and d!1205534 (not c!700739)) b!4057678))

(declare-fun m!4662063 () Bool)

(assert (=> b!4057678 m!4662063))

(assert (=> b!4056984 d!1205534))

(declare-fun d!1205536 () Bool)

(assert (=> d!1205536 (= (list!16160 (charsOf!4774 token!484)) (list!16161 (c!700632 (charsOf!4774 token!484))))))

(declare-fun bs!591895 () Bool)

(assert (= bs!591895 d!1205536))

(declare-fun m!4662065 () Bool)

(assert (=> bs!591895 m!4662065))

(assert (=> b!4056984 d!1205536))

(declare-fun d!1205538 () Bool)

(declare-fun lt!1448865 () BalanceConc!25932)

(assert (=> d!1205538 (= (list!16160 lt!1448865) (originalCharacters!7558 token!484))))

(assert (=> d!1205538 (= lt!1448865 (dynLambda!18420 (toChars!9373 (transformation!6958 (rule!10046 token!484))) (value!218937 token!484)))))

(assert (=> d!1205538 (= (charsOf!4774 token!484) lt!1448865)))

(declare-fun b_lambda!118563 () Bool)

(assert (=> (not b_lambda!118563) (not d!1205538)))

(assert (=> d!1205538 t!336331))

(declare-fun b_and!311987 () Bool)

(assert (= b_and!311979 (and (=> t!336331 result!295752) b_and!311987)))

(assert (=> d!1205538 t!336333))

(declare-fun b_and!311989 () Bool)

(assert (= b_and!311981 (and (=> t!336333 result!295754) b_and!311989)))

(declare-fun m!4662067 () Bool)

(assert (=> d!1205538 m!4662067))

(assert (=> d!1205538 m!4661871))

(assert (=> b!4056984 d!1205538))

(declare-fun d!1205540 () Bool)

(declare-fun lt!1448866 () Bool)

(assert (=> d!1205540 (= lt!1448866 (select (content!6611 rules!2999) (rule!10046 token!484)))))

(declare-fun e!2517963 () Bool)

(assert (=> d!1205540 (= lt!1448866 e!2517963)))

(declare-fun res!1654796 () Bool)

(assert (=> d!1205540 (=> (not res!1654796) (not e!2517963))))

(assert (=> d!1205540 (= res!1654796 ((_ is Cons!43367) rules!2999))))

(assert (=> d!1205540 (= (contains!8626 rules!2999 (rule!10046 token!484)) lt!1448866)))

(declare-fun b!4057679 () Bool)

(declare-fun e!2517962 () Bool)

(assert (=> b!4057679 (= e!2517963 e!2517962)))

(declare-fun res!1654795 () Bool)

(assert (=> b!4057679 (=> res!1654795 e!2517962)))

(assert (=> b!4057679 (= res!1654795 (= (h!48787 rules!2999) (rule!10046 token!484)))))

(declare-fun b!4057680 () Bool)

(assert (=> b!4057680 (= e!2517962 (contains!8626 (t!336296 rules!2999) (rule!10046 token!484)))))

(assert (= (and d!1205540 res!1654796) b!4057679))

(assert (= (and b!4057679 (not res!1654795)) b!4057680))

(assert (=> d!1205540 m!4661927))

(declare-fun m!4662069 () Bool)

(assert (=> d!1205540 m!4662069))

(declare-fun m!4662071 () Bool)

(assert (=> b!4057680 m!4662071))

(assert (=> b!4056981 d!1205540))

(declare-fun d!1205542 () Bool)

(assert (=> d!1205542 (= (isEmpty!25876 rules!2999) ((_ is Nil!43367) rules!2999))))

(assert (=> b!4056980 d!1205542))

(declare-fun b!4057682 () Bool)

(declare-fun e!2517965 () List!43489)

(assert (=> b!4057682 (= e!2517965 (Cons!43365 (h!48785 prefix!494) (++!11360 (t!336294 prefix!494) newSuffix!27)))))

(declare-fun b!4057684 () Bool)

(declare-fun e!2517964 () Bool)

(declare-fun lt!1448867 () List!43489)

(assert (=> b!4057684 (= e!2517964 (or (not (= newSuffix!27 Nil!43365)) (= lt!1448867 prefix!494)))))

(declare-fun b!4057683 () Bool)

(declare-fun res!1654798 () Bool)

(assert (=> b!4057683 (=> (not res!1654798) (not e!2517964))))

(assert (=> b!4057683 (= res!1654798 (= (size!32422 lt!1448867) (+ (size!32422 prefix!494) (size!32422 newSuffix!27))))))

(declare-fun d!1205544 () Bool)

(assert (=> d!1205544 e!2517964))

(declare-fun res!1654797 () Bool)

(assert (=> d!1205544 (=> (not res!1654797) (not e!2517964))))

(assert (=> d!1205544 (= res!1654797 (= (content!6610 lt!1448867) ((_ map or) (content!6610 prefix!494) (content!6610 newSuffix!27))))))

(assert (=> d!1205544 (= lt!1448867 e!2517965)))

(declare-fun c!700740 () Bool)

(assert (=> d!1205544 (= c!700740 ((_ is Nil!43365) prefix!494))))

(assert (=> d!1205544 (= (++!11360 prefix!494 newSuffix!27) lt!1448867)))

(declare-fun b!4057681 () Bool)

(assert (=> b!4057681 (= e!2517965 newSuffix!27)))

(assert (= (and d!1205544 c!700740) b!4057681))

(assert (= (and d!1205544 (not c!700740)) b!4057682))

(assert (= (and d!1205544 res!1654797) b!4057683))

(assert (= (and b!4057683 res!1654798) b!4057684))

(declare-fun m!4662073 () Bool)

(assert (=> b!4057682 m!4662073))

(declare-fun m!4662075 () Bool)

(assert (=> b!4057683 m!4662075))

(assert (=> b!4057683 m!4660937))

(assert (=> b!4057683 m!4661051))

(declare-fun m!4662077 () Bool)

(assert (=> d!1205544 m!4662077))

(assert (=> d!1205544 m!4661775))

(declare-fun m!4662079 () Bool)

(assert (=> d!1205544 m!4662079))

(assert (=> b!4056982 d!1205544))

(declare-fun b!4057686 () Bool)

(declare-fun e!2517967 () List!43489)

(assert (=> b!4057686 (= e!2517967 (Cons!43365 (h!48785 lt!1448600) (++!11360 (t!336294 lt!1448600) newSuffixResult!27)))))

(declare-fun b!4057688 () Bool)

(declare-fun e!2517966 () Bool)

(declare-fun lt!1448868 () List!43489)

(assert (=> b!4057688 (= e!2517966 (or (not (= newSuffixResult!27 Nil!43365)) (= lt!1448868 lt!1448600)))))

(declare-fun b!4057687 () Bool)

(declare-fun res!1654800 () Bool)

(assert (=> b!4057687 (=> (not res!1654800) (not e!2517966))))

(assert (=> b!4057687 (= res!1654800 (= (size!32422 lt!1448868) (+ (size!32422 lt!1448600) (size!32422 newSuffixResult!27))))))

(declare-fun d!1205546 () Bool)

(assert (=> d!1205546 e!2517966))

(declare-fun res!1654799 () Bool)

(assert (=> d!1205546 (=> (not res!1654799) (not e!2517966))))

(assert (=> d!1205546 (= res!1654799 (= (content!6610 lt!1448868) ((_ map or) (content!6610 lt!1448600) (content!6610 newSuffixResult!27))))))

(assert (=> d!1205546 (= lt!1448868 e!2517967)))

(declare-fun c!700741 () Bool)

(assert (=> d!1205546 (= c!700741 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205546 (= (++!11360 lt!1448600 newSuffixResult!27) lt!1448868)))

(declare-fun b!4057685 () Bool)

(assert (=> b!4057685 (= e!2517967 newSuffixResult!27)))

(assert (= (and d!1205546 c!700741) b!4057685))

(assert (= (and d!1205546 (not c!700741)) b!4057686))

(assert (= (and d!1205546 res!1654799) b!4057687))

(assert (= (and b!4057687 res!1654800) b!4057688))

(declare-fun m!4662081 () Bool)

(assert (=> b!4057686 m!4662081))

(declare-fun m!4662083 () Bool)

(assert (=> b!4057687 m!4662083))

(assert (=> b!4057687 m!4660935))

(assert (=> b!4057687 m!4661215))

(declare-fun m!4662085 () Bool)

(assert (=> d!1205546 m!4662085))

(assert (=> d!1205546 m!4661883))

(assert (=> d!1205546 m!4661221))

(assert (=> b!4056982 d!1205546))

(declare-fun b!4057690 () Bool)

(declare-fun e!2517969 () List!43489)

(assert (=> b!4057690 (= e!2517969 (Cons!43365 (h!48785 newSuffix!27) (++!11360 (t!336294 newSuffix!27) lt!1448542)))))

(declare-fun e!2517968 () Bool)

(declare-fun lt!1448869 () List!43489)

(declare-fun b!4057692 () Bool)

(assert (=> b!4057692 (= e!2517968 (or (not (= lt!1448542 Nil!43365)) (= lt!1448869 newSuffix!27)))))

(declare-fun b!4057691 () Bool)

(declare-fun res!1654802 () Bool)

(assert (=> b!4057691 (=> (not res!1654802) (not e!2517968))))

(assert (=> b!4057691 (= res!1654802 (= (size!32422 lt!1448869) (+ (size!32422 newSuffix!27) (size!32422 lt!1448542))))))

(declare-fun d!1205548 () Bool)

(assert (=> d!1205548 e!2517968))

(declare-fun res!1654801 () Bool)

(assert (=> d!1205548 (=> (not res!1654801) (not e!2517968))))

(assert (=> d!1205548 (= res!1654801 (= (content!6610 lt!1448869) ((_ map or) (content!6610 newSuffix!27) (content!6610 lt!1448542))))))

(assert (=> d!1205548 (= lt!1448869 e!2517969)))

(declare-fun c!700742 () Bool)

(assert (=> d!1205548 (= c!700742 ((_ is Nil!43365) newSuffix!27))))

(assert (=> d!1205548 (= (++!11360 newSuffix!27 lt!1448542) lt!1448869)))

(declare-fun b!4057689 () Bool)

(assert (=> b!4057689 (= e!2517969 lt!1448542)))

(assert (= (and d!1205548 c!700742) b!4057689))

(assert (= (and d!1205548 (not c!700742)) b!4057690))

(assert (= (and d!1205548 res!1654801) b!4057691))

(assert (= (and b!4057691 res!1654802) b!4057692))

(declare-fun m!4662087 () Bool)

(assert (=> b!4057690 m!4662087))

(declare-fun m!4662089 () Bool)

(assert (=> b!4057691 m!4662089))

(assert (=> b!4057691 m!4661051))

(assert (=> b!4057691 m!4661783))

(declare-fun m!4662091 () Bool)

(assert (=> d!1205548 m!4662091))

(assert (=> d!1205548 m!4662079))

(assert (=> d!1205548 m!4661789))

(assert (=> b!4057003 d!1205548))

(declare-fun d!1205550 () Bool)

(declare-fun lt!1448870 () List!43489)

(assert (=> d!1205550 (= (++!11360 newSuffix!27 lt!1448870) suffix!1299)))

(declare-fun e!2517970 () List!43489)

(assert (=> d!1205550 (= lt!1448870 e!2517970)))

(declare-fun c!700743 () Bool)

(assert (=> d!1205550 (= c!700743 ((_ is Cons!43365) newSuffix!27))))

(assert (=> d!1205550 (>= (size!32422 suffix!1299) (size!32422 newSuffix!27))))

(assert (=> d!1205550 (= (getSuffix!2462 suffix!1299 newSuffix!27) lt!1448870)))

(declare-fun b!4057693 () Bool)

(assert (=> b!4057693 (= e!2517970 (getSuffix!2462 (tail!6301 suffix!1299) (t!336294 newSuffix!27)))))

(declare-fun b!4057694 () Bool)

(assert (=> b!4057694 (= e!2517970 suffix!1299)))

(assert (= (and d!1205550 c!700743) b!4057693))

(assert (= (and d!1205550 (not c!700743)) b!4057694))

(declare-fun m!4662093 () Bool)

(assert (=> d!1205550 m!4662093))

(assert (=> d!1205550 m!4661049))

(assert (=> d!1205550 m!4661051))

(assert (=> b!4057693 m!4661799))

(assert (=> b!4057693 m!4661799))

(declare-fun m!4662095 () Bool)

(assert (=> b!4057693 m!4662095))

(assert (=> b!4057003 d!1205550))

(declare-fun d!1205552 () Bool)

(assert (=> d!1205552 (not (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448584))))

(declare-fun lt!1448871 () Unit!62734)

(assert (=> d!1205552 (= lt!1448871 (choose!24646 thiss!21717 rules!2999 (rule!10046 token!484) lt!1448600 lt!1448578 lt!1448584 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(assert (=> d!1205552 (isPrefix!4045 lt!1448600 lt!1448578)))

(assert (=> d!1205552 (= (lemmaMaxPrefixOutputsMaxPrefix!484 thiss!21717 rules!2999 (rule!10046 token!484) lt!1448600 lt!1448578 lt!1448584 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448871)))

(declare-fun bs!591896 () Bool)

(assert (= bs!591896 d!1205552))

(assert (=> bs!591896 m!4660917))

(declare-fun m!4662097 () Bool)

(assert (=> bs!591896 m!4662097))

(assert (=> bs!591896 m!4660865))

(assert (=> b!4056989 d!1205552))

(declare-fun b!4057695 () Bool)

(declare-fun e!2517972 () Bool)

(assert (=> b!4057695 (= e!2517972 (not (= (head!8569 lt!1448584) (c!700633 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))))

(declare-fun b!4057696 () Bool)

(declare-fun res!1654806 () Bool)

(assert (=> b!4057696 (=> res!1654806 e!2517972)))

(assert (=> b!4057696 (= res!1654806 (not (isEmpty!25877 (tail!6301 lt!1448584))))))

(declare-fun b!4057697 () Bool)

(declare-fun res!1654805 () Bool)

(declare-fun e!2517971 () Bool)

(assert (=> b!4057697 (=> (not res!1654805) (not e!2517971))))

(declare-fun call!288049 () Bool)

(assert (=> b!4057697 (= res!1654805 (not call!288049))))

(declare-fun bm!288044 () Bool)

(assert (=> bm!288044 (= call!288049 (isEmpty!25877 lt!1448584))))

(declare-fun d!1205554 () Bool)

(declare-fun e!2517977 () Bool)

(assert (=> d!1205554 e!2517977))

(declare-fun c!700744 () Bool)

(assert (=> d!1205554 (= c!700744 ((_ is EmptyExpr!11863) (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(declare-fun lt!1448872 () Bool)

(declare-fun e!2517976 () Bool)

(assert (=> d!1205554 (= lt!1448872 e!2517976)))

(declare-fun c!700745 () Bool)

(assert (=> d!1205554 (= c!700745 (isEmpty!25877 lt!1448584))))

(assert (=> d!1205554 (validRegex!5366 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))

(assert (=> d!1205554 (= (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448584) lt!1448872)))

(declare-fun b!4057698 () Bool)

(declare-fun res!1654803 () Bool)

(assert (=> b!4057698 (=> (not res!1654803) (not e!2517971))))

(assert (=> b!4057698 (= res!1654803 (isEmpty!25877 (tail!6301 lt!1448584)))))

(declare-fun b!4057699 () Bool)

(assert (=> b!4057699 (= e!2517976 (nullable!4166 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(declare-fun b!4057700 () Bool)

(declare-fun e!2517975 () Bool)

(declare-fun e!2517974 () Bool)

(assert (=> b!4057700 (= e!2517975 e!2517974)))

(declare-fun res!1654807 () Bool)

(assert (=> b!4057700 (=> (not res!1654807) (not e!2517974))))

(assert (=> b!4057700 (= res!1654807 (not lt!1448872))))

(declare-fun b!4057701 () Bool)

(declare-fun e!2517973 () Bool)

(assert (=> b!4057701 (= e!2517973 (not lt!1448872))))

(declare-fun b!4057702 () Bool)

(assert (=> b!4057702 (= e!2517977 (= lt!1448872 call!288049))))

(declare-fun b!4057703 () Bool)

(assert (=> b!4057703 (= e!2517974 e!2517972)))

(declare-fun res!1654808 () Bool)

(assert (=> b!4057703 (=> res!1654808 e!2517972)))

(assert (=> b!4057703 (= res!1654808 call!288049)))

(declare-fun b!4057704 () Bool)

(declare-fun res!1654810 () Bool)

(assert (=> b!4057704 (=> res!1654810 e!2517975)))

(assert (=> b!4057704 (= res!1654810 e!2517971)))

(declare-fun res!1654809 () Bool)

(assert (=> b!4057704 (=> (not res!1654809) (not e!2517971))))

(assert (=> b!4057704 (= res!1654809 lt!1448872)))

(declare-fun b!4057705 () Bool)

(declare-fun res!1654804 () Bool)

(assert (=> b!4057705 (=> res!1654804 e!2517975)))

(assert (=> b!4057705 (= res!1654804 (not ((_ is ElementMatch!11863) (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))))

(assert (=> b!4057705 (= e!2517973 e!2517975)))

(declare-fun b!4057706 () Bool)

(assert (=> b!4057706 (= e!2517971 (= (head!8569 lt!1448584) (c!700633 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))))

(declare-fun b!4057707 () Bool)

(assert (=> b!4057707 (= e!2517976 (matchR!5816 (derivativeStep!3571 (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) (head!8569 lt!1448584)) (tail!6301 lt!1448584)))))

(declare-fun b!4057708 () Bool)

(assert (=> b!4057708 (= e!2517977 e!2517973)))

(declare-fun c!700746 () Bool)

(assert (=> b!4057708 (= c!700746 ((_ is EmptyLang!11863) (regex!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(assert (= (and d!1205554 c!700745) b!4057699))

(assert (= (and d!1205554 (not c!700745)) b!4057707))

(assert (= (and d!1205554 c!700744) b!4057702))

(assert (= (and d!1205554 (not c!700744)) b!4057708))

(assert (= (and b!4057708 c!700746) b!4057701))

(assert (= (and b!4057708 (not c!700746)) b!4057705))

(assert (= (and b!4057705 (not res!1654804)) b!4057704))

(assert (= (and b!4057704 res!1654809) b!4057697))

(assert (= (and b!4057697 res!1654805) b!4057698))

(assert (= (and b!4057698 res!1654803) b!4057706))

(assert (= (and b!4057704 (not res!1654810)) b!4057700))

(assert (= (and b!4057700 res!1654807) b!4057703))

(assert (= (and b!4057703 (not res!1654808)) b!4057696))

(assert (= (and b!4057696 (not res!1654806)) b!4057695))

(assert (= (or b!4057702 b!4057697 b!4057703) bm!288044))

(declare-fun m!4662099 () Bool)

(assert (=> bm!288044 m!4662099))

(assert (=> b!4057707 m!4661181))

(assert (=> b!4057707 m!4661181))

(declare-fun m!4662101 () Bool)

(assert (=> b!4057707 m!4662101))

(assert (=> b!4057707 m!4661175))

(assert (=> b!4057707 m!4662101))

(assert (=> b!4057707 m!4661175))

(declare-fun m!4662103 () Bool)

(assert (=> b!4057707 m!4662103))

(assert (=> b!4057695 m!4661181))

(assert (=> b!4057706 m!4661181))

(assert (=> b!4057699 m!4661737))

(assert (=> b!4057696 m!4661175))

(assert (=> b!4057696 m!4661175))

(declare-fun m!4662105 () Bool)

(assert (=> b!4057696 m!4662105))

(assert (=> b!4057698 m!4661175))

(assert (=> b!4057698 m!4661175))

(assert (=> b!4057698 m!4662105))

(assert (=> d!1205554 m!4662099))

(assert (=> d!1205554 m!4661735))

(assert (=> b!4056989 d!1205554))

(declare-fun b!4057710 () Bool)

(declare-fun e!2517979 () List!43489)

(assert (=> b!4057710 (= e!2517979 (Cons!43365 (h!48785 lt!1448600) (++!11360 (t!336294 lt!1448600) lt!1448583)))))

(declare-fun e!2517978 () Bool)

(declare-fun b!4057712 () Bool)

(declare-fun lt!1448873 () List!43489)

(assert (=> b!4057712 (= e!2517978 (or (not (= lt!1448583 Nil!43365)) (= lt!1448873 lt!1448600)))))

(declare-fun b!4057711 () Bool)

(declare-fun res!1654812 () Bool)

(assert (=> b!4057711 (=> (not res!1654812) (not e!2517978))))

(assert (=> b!4057711 (= res!1654812 (= (size!32422 lt!1448873) (+ (size!32422 lt!1448600) (size!32422 lt!1448583))))))

(declare-fun d!1205556 () Bool)

(assert (=> d!1205556 e!2517978))

(declare-fun res!1654811 () Bool)

(assert (=> d!1205556 (=> (not res!1654811) (not e!2517978))))

(assert (=> d!1205556 (= res!1654811 (= (content!6610 lt!1448873) ((_ map or) (content!6610 lt!1448600) (content!6610 lt!1448583))))))

(assert (=> d!1205556 (= lt!1448873 e!2517979)))

(declare-fun c!700747 () Bool)

(assert (=> d!1205556 (= c!700747 ((_ is Nil!43365) lt!1448600))))

(assert (=> d!1205556 (= (++!11360 lt!1448600 lt!1448583) lt!1448873)))

(declare-fun b!4057709 () Bool)

(assert (=> b!4057709 (= e!2517979 lt!1448583)))

(assert (= (and d!1205556 c!700747) b!4057709))

(assert (= (and d!1205556 (not c!700747)) b!4057710))

(assert (= (and d!1205556 res!1654811) b!4057711))

(assert (= (and b!4057711 res!1654812) b!4057712))

(declare-fun m!4662107 () Bool)

(assert (=> b!4057710 m!4662107))

(declare-fun m!4662109 () Bool)

(assert (=> b!4057711 m!4662109))

(assert (=> b!4057711 m!4660935))

(declare-fun m!4662111 () Bool)

(assert (=> b!4057711 m!4662111))

(declare-fun m!4662113 () Bool)

(assert (=> d!1205556 m!4662113))

(assert (=> d!1205556 m!4661883))

(declare-fun m!4662115 () Bool)

(assert (=> d!1205556 m!4662115))

(assert (=> b!4056988 d!1205556))

(declare-fun b!4057714 () Bool)

(declare-fun e!2517981 () List!43489)

(assert (=> b!4057714 (= e!2517981 (Cons!43365 (h!48785 lt!1448550) (++!11360 (t!336294 lt!1448550) suffix!1299)))))

(declare-fun lt!1448874 () List!43489)

(declare-fun e!2517980 () Bool)

(declare-fun b!4057716 () Bool)

(assert (=> b!4057716 (= e!2517980 (or (not (= suffix!1299 Nil!43365)) (= lt!1448874 lt!1448550)))))

(declare-fun b!4057715 () Bool)

(declare-fun res!1654814 () Bool)

(assert (=> b!4057715 (=> (not res!1654814) (not e!2517980))))

(assert (=> b!4057715 (= res!1654814 (= (size!32422 lt!1448874) (+ (size!32422 lt!1448550) (size!32422 suffix!1299))))))

(declare-fun d!1205558 () Bool)

(assert (=> d!1205558 e!2517980))

(declare-fun res!1654813 () Bool)

(assert (=> d!1205558 (=> (not res!1654813) (not e!2517980))))

(assert (=> d!1205558 (= res!1654813 (= (content!6610 lt!1448874) ((_ map or) (content!6610 lt!1448550) (content!6610 suffix!1299))))))

(assert (=> d!1205558 (= lt!1448874 e!2517981)))

(declare-fun c!700748 () Bool)

(assert (=> d!1205558 (= c!700748 ((_ is Nil!43365) lt!1448550))))

(assert (=> d!1205558 (= (++!11360 lt!1448550 suffix!1299) lt!1448874)))

(declare-fun b!4057713 () Bool)

(assert (=> b!4057713 (= e!2517981 suffix!1299)))

(assert (= (and d!1205558 c!700748) b!4057713))

(assert (= (and d!1205558 (not c!700748)) b!4057714))

(assert (= (and d!1205558 res!1654813) b!4057715))

(assert (= (and b!4057715 res!1654814) b!4057716))

(declare-fun m!4662117 () Bool)

(assert (=> b!4057714 m!4662117))

(declare-fun m!4662119 () Bool)

(assert (=> b!4057715 m!4662119))

(declare-fun m!4662121 () Bool)

(assert (=> b!4057715 m!4662121))

(assert (=> b!4057715 m!4661049))

(declare-fun m!4662123 () Bool)

(assert (=> d!1205558 m!4662123))

(declare-fun m!4662125 () Bool)

(assert (=> d!1205558 m!4662125))

(declare-fun m!4662127 () Bool)

(assert (=> d!1205558 m!4662127))

(assert (=> b!4056988 d!1205558))

(declare-fun b!4057718 () Bool)

(declare-fun e!2517983 () List!43489)

(assert (=> b!4057718 (= e!2517983 (Cons!43365 (h!48785 lt!1448575) (++!11360 (t!336294 lt!1448575) suffix!1299)))))

(declare-fun e!2517982 () Bool)

(declare-fun b!4057720 () Bool)

(declare-fun lt!1448875 () List!43489)

(assert (=> b!4057720 (= e!2517982 (or (not (= suffix!1299 Nil!43365)) (= lt!1448875 lt!1448575)))))

(declare-fun b!4057719 () Bool)

(declare-fun res!1654816 () Bool)

(assert (=> b!4057719 (=> (not res!1654816) (not e!2517982))))

(assert (=> b!4057719 (= res!1654816 (= (size!32422 lt!1448875) (+ (size!32422 lt!1448575) (size!32422 suffix!1299))))))

(declare-fun d!1205560 () Bool)

(assert (=> d!1205560 e!2517982))

(declare-fun res!1654815 () Bool)

(assert (=> d!1205560 (=> (not res!1654815) (not e!2517982))))

(assert (=> d!1205560 (= res!1654815 (= (content!6610 lt!1448875) ((_ map or) (content!6610 lt!1448575) (content!6610 suffix!1299))))))

(assert (=> d!1205560 (= lt!1448875 e!2517983)))

(declare-fun c!700749 () Bool)

(assert (=> d!1205560 (= c!700749 ((_ is Nil!43365) lt!1448575))))

(assert (=> d!1205560 (= (++!11360 lt!1448575 suffix!1299) lt!1448875)))

(declare-fun b!4057717 () Bool)

(assert (=> b!4057717 (= e!2517983 suffix!1299)))

(assert (= (and d!1205560 c!700749) b!4057717))

(assert (= (and d!1205560 (not c!700749)) b!4057718))

(assert (= (and d!1205560 res!1654815) b!4057719))

(assert (= (and b!4057719 res!1654816) b!4057720))

(declare-fun m!4662129 () Bool)

(assert (=> b!4057718 m!4662129))

(declare-fun m!4662131 () Bool)

(assert (=> b!4057719 m!4662131))

(assert (=> b!4057719 m!4662043))

(assert (=> b!4057719 m!4661049))

(declare-fun m!4662133 () Bool)

(assert (=> d!1205560 m!4662133))

(assert (=> d!1205560 m!4662047))

(assert (=> d!1205560 m!4662127))

(assert (=> b!4056988 d!1205560))

(declare-fun d!1205562 () Bool)

(assert (=> d!1205562 (= (++!11360 (++!11360 lt!1448600 lt!1448575) suffix!1299) (++!11360 lt!1448600 (++!11360 lt!1448575 suffix!1299)))))

(declare-fun lt!1448876 () Unit!62734)

(assert (=> d!1205562 (= lt!1448876 (choose!24643 lt!1448600 lt!1448575 suffix!1299))))

(assert (=> d!1205562 (= (lemmaConcatAssociativity!2662 lt!1448600 lt!1448575 suffix!1299) lt!1448876)))

(declare-fun bs!591897 () Bool)

(assert (= bs!591897 d!1205562))

(assert (=> bs!591897 m!4661045))

(declare-fun m!4662135 () Bool)

(assert (=> bs!591897 m!4662135))

(assert (=> bs!591897 m!4661045))

(assert (=> bs!591897 m!4660997))

(declare-fun m!4662137 () Bool)

(assert (=> bs!591897 m!4662137))

(declare-fun m!4662139 () Bool)

(assert (=> bs!591897 m!4662139))

(assert (=> bs!591897 m!4660997))

(assert (=> b!4056988 d!1205562))

(declare-fun b!4057723 () Bool)

(declare-fun e!2517985 () Bool)

(assert (=> b!4057723 (= e!2517985 (isPrefix!4045 (tail!6301 lt!1448584) (tail!6301 lt!1448557)))))

(declare-fun d!1205564 () Bool)

(declare-fun e!2517986 () Bool)

(assert (=> d!1205564 e!2517986))

(declare-fun res!1654819 () Bool)

(assert (=> d!1205564 (=> res!1654819 e!2517986)))

(declare-fun lt!1448877 () Bool)

(assert (=> d!1205564 (= res!1654819 (not lt!1448877))))

(declare-fun e!2517984 () Bool)

(assert (=> d!1205564 (= lt!1448877 e!2517984)))

(declare-fun res!1654820 () Bool)

(assert (=> d!1205564 (=> res!1654820 e!2517984)))

(assert (=> d!1205564 (= res!1654820 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205564 (= (isPrefix!4045 lt!1448584 lt!1448557) lt!1448877)))

(declare-fun b!4057722 () Bool)

(declare-fun res!1654817 () Bool)

(assert (=> b!4057722 (=> (not res!1654817) (not e!2517985))))

(assert (=> b!4057722 (= res!1654817 (= (head!8569 lt!1448584) (head!8569 lt!1448557)))))

(declare-fun b!4057724 () Bool)

(assert (=> b!4057724 (= e!2517986 (>= (size!32422 lt!1448557) (size!32422 lt!1448584)))))

(declare-fun b!4057721 () Bool)

(assert (=> b!4057721 (= e!2517984 e!2517985)))

(declare-fun res!1654818 () Bool)

(assert (=> b!4057721 (=> (not res!1654818) (not e!2517985))))

(assert (=> b!4057721 (= res!1654818 (not ((_ is Nil!43365) lt!1448557)))))

(assert (= (and d!1205564 (not res!1654820)) b!4057721))

(assert (= (and b!4057721 res!1654818) b!4057722))

(assert (= (and b!4057722 res!1654817) b!4057723))

(assert (= (and d!1205564 (not res!1654819)) b!4057724))

(assert (=> b!4057723 m!4661175))

(assert (=> b!4057723 m!4661939))

(assert (=> b!4057723 m!4661175))

(assert (=> b!4057723 m!4661939))

(declare-fun m!4662141 () Bool)

(assert (=> b!4057723 m!4662141))

(assert (=> b!4057722 m!4661181))

(assert (=> b!4057722 m!4661943))

(assert (=> b!4057724 m!4661705))

(assert (=> b!4057724 m!4660909))

(assert (=> b!4056967 d!1205564))

(declare-fun b!4057725 () Bool)

(declare-fun res!1654824 () Bool)

(declare-fun e!2517988 () Bool)

(assert (=> b!4057725 (=> (not res!1654824) (not e!2517988))))

(declare-fun lt!1448882 () Option!9372)

(assert (=> b!4057725 (= res!1654824 (= (++!11360 (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448882)))) (_2!24347 (get!14223 lt!1448882))) lt!1448578))))

(declare-fun b!4057726 () Bool)

(declare-fun res!1654823 () Bool)

(assert (=> b!4057726 (=> (not res!1654823) (not e!2517988))))

(assert (=> b!4057726 (= res!1654823 (= (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448882)))) (originalCharacters!7558 (_1!24347 (get!14223 lt!1448882)))))))

(declare-fun d!1205566 () Bool)

(declare-fun e!2517987 () Bool)

(assert (=> d!1205566 e!2517987))

(declare-fun res!1654825 () Bool)

(assert (=> d!1205566 (=> res!1654825 e!2517987)))

(assert (=> d!1205566 (= res!1654825 (isEmpty!25879 lt!1448882))))

(declare-fun e!2517989 () Option!9372)

(assert (=> d!1205566 (= lt!1448882 e!2517989)))

(declare-fun c!700750 () Bool)

(assert (=> d!1205566 (= c!700750 (and ((_ is Cons!43367) rules!2999) ((_ is Nil!43367) (t!336296 rules!2999))))))

(declare-fun lt!1448881 () Unit!62734)

(declare-fun lt!1448879 () Unit!62734)

(assert (=> d!1205566 (= lt!1448881 lt!1448879)))

(assert (=> d!1205566 (isPrefix!4045 lt!1448578 lt!1448578)))

(assert (=> d!1205566 (= lt!1448879 (lemmaIsPrefixRefl!2612 lt!1448578 lt!1448578))))

(assert (=> d!1205566 (rulesValidInductive!2541 thiss!21717 rules!2999)))

(assert (=> d!1205566 (= (maxPrefix!3845 thiss!21717 rules!2999 lt!1448578) lt!1448882)))

(declare-fun b!4057727 () Bool)

(declare-fun lt!1448880 () Option!9372)

(declare-fun lt!1448878 () Option!9372)

(assert (=> b!4057727 (= e!2517989 (ite (and ((_ is None!9371) lt!1448880) ((_ is None!9371) lt!1448878)) None!9371 (ite ((_ is None!9371) lt!1448878) lt!1448880 (ite ((_ is None!9371) lt!1448880) lt!1448878 (ite (>= (size!32421 (_1!24347 (v!39787 lt!1448880))) (size!32421 (_1!24347 (v!39787 lt!1448878)))) lt!1448880 lt!1448878)))))))

(declare-fun call!288050 () Option!9372)

(assert (=> b!4057727 (= lt!1448880 call!288050)))

(assert (=> b!4057727 (= lt!1448878 (maxPrefix!3845 thiss!21717 (t!336296 rules!2999) lt!1448578))))

(declare-fun b!4057728 () Bool)

(assert (=> b!4057728 (= e!2517989 call!288050)))

(declare-fun b!4057729 () Bool)

(declare-fun res!1654822 () Bool)

(assert (=> b!4057729 (=> (not res!1654822) (not e!2517988))))

(assert (=> b!4057729 (= res!1654822 (< (size!32422 (_2!24347 (get!14223 lt!1448882))) (size!32422 lt!1448578)))))

(declare-fun b!4057730 () Bool)

(declare-fun res!1654827 () Bool)

(assert (=> b!4057730 (=> (not res!1654827) (not e!2517988))))

(assert (=> b!4057730 (= res!1654827 (matchR!5816 (regex!6958 (rule!10046 (_1!24347 (get!14223 lt!1448882)))) (list!16160 (charsOf!4774 (_1!24347 (get!14223 lt!1448882))))))))

(declare-fun bm!288045 () Bool)

(assert (=> bm!288045 (= call!288050 (maxPrefixOneRule!2857 thiss!21717 (h!48787 rules!2999) lt!1448578))))

(declare-fun b!4057731 () Bool)

(declare-fun res!1654826 () Bool)

(assert (=> b!4057731 (=> (not res!1654826) (not e!2517988))))

(assert (=> b!4057731 (= res!1654826 (= (value!218937 (_1!24347 (get!14223 lt!1448882))) (apply!10147 (transformation!6958 (rule!10046 (_1!24347 (get!14223 lt!1448882)))) (seqFromList!5175 (originalCharacters!7558 (_1!24347 (get!14223 lt!1448882)))))))))

(declare-fun b!4057732 () Bool)

(assert (=> b!4057732 (= e!2517988 (contains!8626 rules!2999 (rule!10046 (_1!24347 (get!14223 lt!1448882)))))))

(declare-fun b!4057733 () Bool)

(assert (=> b!4057733 (= e!2517987 e!2517988)))

(declare-fun res!1654821 () Bool)

(assert (=> b!4057733 (=> (not res!1654821) (not e!2517988))))

(assert (=> b!4057733 (= res!1654821 (isDefined!7120 lt!1448882))))

(assert (= (and d!1205566 c!700750) b!4057728))

(assert (= (and d!1205566 (not c!700750)) b!4057727))

(assert (= (or b!4057728 b!4057727) bm!288045))

(assert (= (and d!1205566 (not res!1654825)) b!4057733))

(assert (= (and b!4057733 res!1654821) b!4057726))

(assert (= (and b!4057726 res!1654823) b!4057729))

(assert (= (and b!4057729 res!1654822) b!4057725))

(assert (= (and b!4057725 res!1654824) b!4057731))

(assert (= (and b!4057731 res!1654826) b!4057730))

(assert (= (and b!4057730 res!1654827) b!4057732))

(declare-fun m!4662143 () Bool)

(assert (=> b!4057732 m!4662143))

(declare-fun m!4662145 () Bool)

(assert (=> b!4057732 m!4662145))

(assert (=> b!4057725 m!4662143))

(declare-fun m!4662147 () Bool)

(assert (=> b!4057725 m!4662147))

(assert (=> b!4057725 m!4662147))

(declare-fun m!4662149 () Bool)

(assert (=> b!4057725 m!4662149))

(assert (=> b!4057725 m!4662149))

(declare-fun m!4662151 () Bool)

(assert (=> b!4057725 m!4662151))

(assert (=> b!4057731 m!4662143))

(declare-fun m!4662153 () Bool)

(assert (=> b!4057731 m!4662153))

(assert (=> b!4057731 m!4662153))

(declare-fun m!4662155 () Bool)

(assert (=> b!4057731 m!4662155))

(assert (=> b!4057730 m!4662143))

(assert (=> b!4057730 m!4662147))

(assert (=> b!4057730 m!4662147))

(assert (=> b!4057730 m!4662149))

(assert (=> b!4057730 m!4662149))

(declare-fun m!4662157 () Bool)

(assert (=> b!4057730 m!4662157))

(declare-fun m!4662159 () Bool)

(assert (=> b!4057727 m!4662159))

(declare-fun m!4662161 () Bool)

(assert (=> b!4057733 m!4662161))

(assert (=> b!4057729 m!4662143))

(declare-fun m!4662163 () Bool)

(assert (=> b!4057729 m!4662163))

(assert (=> b!4057729 m!4661911))

(declare-fun m!4662165 () Bool)

(assert (=> d!1205566 m!4662165))

(assert (=> d!1205566 m!4660931))

(assert (=> d!1205566 m!4660933))

(assert (=> d!1205566 m!4661835))

(declare-fun m!4662167 () Bool)

(assert (=> bm!288045 m!4662167))

(assert (=> b!4057726 m!4662143))

(assert (=> b!4057726 m!4662147))

(assert (=> b!4057726 m!4662147))

(assert (=> b!4057726 m!4662149))

(assert (=> b!4056990 d!1205566))

(declare-fun b!4057735 () Bool)

(declare-fun e!2517991 () List!43489)

(assert (=> b!4057735 (= e!2517991 (Cons!43365 (h!48785 prefix!494) (++!11360 (t!336294 prefix!494) suffix!1299)))))

(declare-fun b!4057737 () Bool)

(declare-fun e!2517990 () Bool)

(declare-fun lt!1448883 () List!43489)

(assert (=> b!4057737 (= e!2517990 (or (not (= suffix!1299 Nil!43365)) (= lt!1448883 prefix!494)))))

(declare-fun b!4057736 () Bool)

(declare-fun res!1654829 () Bool)

(assert (=> b!4057736 (=> (not res!1654829) (not e!2517990))))

(assert (=> b!4057736 (= res!1654829 (= (size!32422 lt!1448883) (+ (size!32422 prefix!494) (size!32422 suffix!1299))))))

(declare-fun d!1205568 () Bool)

(assert (=> d!1205568 e!2517990))

(declare-fun res!1654828 () Bool)

(assert (=> d!1205568 (=> (not res!1654828) (not e!2517990))))

(assert (=> d!1205568 (= res!1654828 (= (content!6610 lt!1448883) ((_ map or) (content!6610 prefix!494) (content!6610 suffix!1299))))))

(assert (=> d!1205568 (= lt!1448883 e!2517991)))

(declare-fun c!700751 () Bool)

(assert (=> d!1205568 (= c!700751 ((_ is Nil!43365) prefix!494))))

(assert (=> d!1205568 (= (++!11360 prefix!494 suffix!1299) lt!1448883)))

(declare-fun b!4057734 () Bool)

(assert (=> b!4057734 (= e!2517991 suffix!1299)))

(assert (= (and d!1205568 c!700751) b!4057734))

(assert (= (and d!1205568 (not c!700751)) b!4057735))

(assert (= (and d!1205568 res!1654828) b!4057736))

(assert (= (and b!4057736 res!1654829) b!4057737))

(declare-fun m!4662169 () Bool)

(assert (=> b!4057735 m!4662169))

(declare-fun m!4662171 () Bool)

(assert (=> b!4057736 m!4662171))

(assert (=> b!4057736 m!4660937))

(assert (=> b!4057736 m!4661049))

(declare-fun m!4662173 () Bool)

(assert (=> d!1205568 m!4662173))

(assert (=> d!1205568 m!4661775))

(assert (=> d!1205568 m!4662127))

(assert (=> b!4056990 d!1205568))

(declare-fun d!1205570 () Bool)

(declare-fun lt!1448884 () Int)

(assert (=> d!1205570 (>= lt!1448884 0)))

(declare-fun e!2517992 () Int)

(assert (=> d!1205570 (= lt!1448884 e!2517992)))

(declare-fun c!700752 () Bool)

(assert (=> d!1205570 (= c!700752 ((_ is Nil!43365) suffix!1299))))

(assert (=> d!1205570 (= (size!32422 suffix!1299) lt!1448884)))

(declare-fun b!4057738 () Bool)

(assert (=> b!4057738 (= e!2517992 0)))

(declare-fun b!4057739 () Bool)

(assert (=> b!4057739 (= e!2517992 (+ 1 (size!32422 (t!336294 suffix!1299))))))

(assert (= (and d!1205570 c!700752) b!4057738))

(assert (= (and d!1205570 (not c!700752)) b!4057739))

(declare-fun m!4662175 () Bool)

(assert (=> b!4057739 m!4662175))

(assert (=> b!4056965 d!1205570))

(declare-fun d!1205572 () Bool)

(declare-fun lt!1448885 () Int)

(assert (=> d!1205572 (>= lt!1448885 0)))

(declare-fun e!2517993 () Int)

(assert (=> d!1205572 (= lt!1448885 e!2517993)))

(declare-fun c!700753 () Bool)

(assert (=> d!1205572 (= c!700753 ((_ is Nil!43365) newSuffix!27))))

(assert (=> d!1205572 (= (size!32422 newSuffix!27) lt!1448885)))

(declare-fun b!4057740 () Bool)

(assert (=> b!4057740 (= e!2517993 0)))

(declare-fun b!4057741 () Bool)

(assert (=> b!4057741 (= e!2517993 (+ 1 (size!32422 (t!336294 newSuffix!27))))))

(assert (= (and d!1205572 c!700753) b!4057740))

(assert (= (and d!1205572 (not c!700753)) b!4057741))

(declare-fun m!4662177 () Bool)

(assert (=> b!4057741 m!4662177))

(assert (=> b!4056965 d!1205572))

(declare-fun b!4057753 () Bool)

(declare-fun e!2517999 () Int)

(assert (=> b!4057753 (= e!2517999 (- 1))))

(declare-fun b!4057751 () Bool)

(declare-fun e!2518000 () Int)

(assert (=> b!4057751 (= e!2518000 e!2517999)))

(declare-fun c!700758 () Bool)

(assert (=> b!4057751 (= c!700758 (and ((_ is Cons!43367) rules!2999) (not (= (h!48787 rules!2999) (rule!10046 (_1!24347 (v!39787 lt!1448577)))))))))

(declare-fun b!4057750 () Bool)

(assert (=> b!4057750 (= e!2518000 0)))

(declare-fun b!4057752 () Bool)

(assert (=> b!4057752 (= e!2517999 (+ 1 (getIndex!570 (t!336296 rules!2999) (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(declare-fun d!1205574 () Bool)

(declare-fun lt!1448888 () Int)

(assert (=> d!1205574 (>= lt!1448888 0)))

(assert (=> d!1205574 (= lt!1448888 e!2518000)))

(declare-fun c!700759 () Bool)

(assert (=> d!1205574 (= c!700759 (and ((_ is Cons!43367) rules!2999) (= (h!48787 rules!2999) (rule!10046 (_1!24347 (v!39787 lt!1448577))))))))

(assert (=> d!1205574 (contains!8626 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577))))))

(assert (=> d!1205574 (= (getIndex!570 rules!2999 (rule!10046 (_1!24347 (v!39787 lt!1448577)))) lt!1448888)))

(assert (= (and d!1205574 c!700759) b!4057750))

(assert (= (and d!1205574 (not c!700759)) b!4057751))

(assert (= (and b!4057751 c!700758) b!4057752))

(assert (= (and b!4057751 (not c!700758)) b!4057753))

(declare-fun m!4662179 () Bool)

(assert (=> b!4057752 m!4662179))

(assert (=> d!1205574 m!4660923))

(assert (=> b!4056964 d!1205574))

(declare-fun b!4057757 () Bool)

(declare-fun e!2518001 () Int)

(assert (=> b!4057757 (= e!2518001 (- 1))))

(declare-fun b!4057755 () Bool)

(declare-fun e!2518002 () Int)

(assert (=> b!4057755 (= e!2518002 e!2518001)))

(declare-fun c!700760 () Bool)

(assert (=> b!4057755 (= c!700760 (and ((_ is Cons!43367) rules!2999) (not (= (h!48787 rules!2999) (rule!10046 token!484)))))))

(declare-fun b!4057754 () Bool)

(assert (=> b!4057754 (= e!2518002 0)))

(declare-fun b!4057756 () Bool)

(assert (=> b!4057756 (= e!2518001 (+ 1 (getIndex!570 (t!336296 rules!2999) (rule!10046 token!484))))))

(declare-fun d!1205576 () Bool)

(declare-fun lt!1448889 () Int)

(assert (=> d!1205576 (>= lt!1448889 0)))

(assert (=> d!1205576 (= lt!1448889 e!2518002)))

(declare-fun c!700761 () Bool)

(assert (=> d!1205576 (= c!700761 (and ((_ is Cons!43367) rules!2999) (= (h!48787 rules!2999) (rule!10046 token!484))))))

(assert (=> d!1205576 (contains!8626 rules!2999 (rule!10046 token!484))))

(assert (=> d!1205576 (= (getIndex!570 rules!2999 (rule!10046 token!484)) lt!1448889)))

(assert (= (and d!1205576 c!700761) b!4057754))

(assert (= (and d!1205576 (not c!700761)) b!4057755))

(assert (= (and b!4057755 c!700760) b!4057756))

(assert (= (and b!4057755 (not c!700760)) b!4057757))

(declare-fun m!4662181 () Bool)

(assert (=> b!4057756 m!4662181))

(assert (=> d!1205576 m!4661015))

(assert (=> b!4056964 d!1205576))

(declare-fun d!1205578 () Bool)

(assert (=> d!1205578 (= (_2!24347 (v!39787 lt!1448577)) newSuffixResult!27)))

(declare-fun lt!1448890 () Unit!62734)

(assert (=> d!1205578 (= lt!1448890 (choose!24645 lt!1448584 (_2!24347 (v!39787 lt!1448577)) lt!1448600 newSuffixResult!27 lt!1448557))))

(assert (=> d!1205578 (isPrefix!4045 lt!1448584 lt!1448557)))

(assert (=> d!1205578 (= (lemmaSamePrefixThenSameSuffix!2206 lt!1448584 (_2!24347 (v!39787 lt!1448577)) lt!1448600 newSuffixResult!27 lt!1448557) lt!1448890)))

(declare-fun bs!591898 () Bool)

(assert (= bs!591898 d!1205578))

(declare-fun m!4662183 () Bool)

(assert (=> bs!591898 m!4662183))

(assert (=> bs!591898 m!4660987))

(assert (=> b!4056964 d!1205578))

(declare-fun d!1205580 () Bool)

(assert (=> d!1205580 (= lt!1448584 lt!1448600)))

(declare-fun lt!1448893 () Unit!62734)

(declare-fun choose!24652 (List!43489 List!43489 List!43489) Unit!62734)

(assert (=> d!1205580 (= lt!1448893 (choose!24652 lt!1448584 lt!1448600 lt!1448557))))

(assert (=> d!1205580 (isPrefix!4045 lt!1448584 lt!1448557)))

(assert (=> d!1205580 (= (lemmaIsPrefixSameLengthThenSameList!935 lt!1448584 lt!1448600 lt!1448557) lt!1448893)))

(declare-fun bs!591899 () Bool)

(assert (= bs!591899 d!1205580))

(declare-fun m!4662185 () Bool)

(assert (=> bs!591899 m!4662185))

(assert (=> bs!591899 m!4660987))

(assert (=> b!4056964 d!1205580))

(declare-fun d!1205582 () Bool)

(assert (=> d!1205582 (= (_2!24347 (v!39787 lt!1448577)) lt!1448559)))

(declare-fun lt!1448894 () Unit!62734)

(assert (=> d!1205582 (= lt!1448894 (choose!24645 lt!1448584 (_2!24347 (v!39787 lt!1448577)) lt!1448584 lt!1448559 lt!1448557))))

(assert (=> d!1205582 (isPrefix!4045 lt!1448584 lt!1448557)))

(assert (=> d!1205582 (= (lemmaSamePrefixThenSameSuffix!2206 lt!1448584 (_2!24347 (v!39787 lt!1448577)) lt!1448584 lt!1448559 lt!1448557) lt!1448894)))

(declare-fun bs!591900 () Bool)

(assert (= bs!591900 d!1205582))

(declare-fun m!4662187 () Bool)

(assert (=> bs!591900 m!4662187))

(assert (=> bs!591900 m!4660987))

(assert (=> b!4057007 d!1205582))

(declare-fun b!4057760 () Bool)

(declare-fun e!2518004 () Bool)

(assert (=> b!4057760 (= e!2518004 (isPrefix!4045 (tail!6301 lt!1448584) (tail!6301 lt!1448599)))))

(declare-fun d!1205584 () Bool)

(declare-fun e!2518005 () Bool)

(assert (=> d!1205584 e!2518005))

(declare-fun res!1654832 () Bool)

(assert (=> d!1205584 (=> res!1654832 e!2518005)))

(declare-fun lt!1448895 () Bool)

(assert (=> d!1205584 (= res!1654832 (not lt!1448895))))

(declare-fun e!2518003 () Bool)

(assert (=> d!1205584 (= lt!1448895 e!2518003)))

(declare-fun res!1654833 () Bool)

(assert (=> d!1205584 (=> res!1654833 e!2518003)))

(assert (=> d!1205584 (= res!1654833 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205584 (= (isPrefix!4045 lt!1448584 lt!1448599) lt!1448895)))

(declare-fun b!4057759 () Bool)

(declare-fun res!1654830 () Bool)

(assert (=> b!4057759 (=> (not res!1654830) (not e!2518004))))

(assert (=> b!4057759 (= res!1654830 (= (head!8569 lt!1448584) (head!8569 lt!1448599)))))

(declare-fun b!4057761 () Bool)

(assert (=> b!4057761 (= e!2518005 (>= (size!32422 lt!1448599) (size!32422 lt!1448584)))))

(declare-fun b!4057758 () Bool)

(assert (=> b!4057758 (= e!2518003 e!2518004)))

(declare-fun res!1654831 () Bool)

(assert (=> b!4057758 (=> (not res!1654831) (not e!2518004))))

(assert (=> b!4057758 (= res!1654831 (not ((_ is Nil!43365) lt!1448599)))))

(assert (= (and d!1205584 (not res!1654833)) b!4057758))

(assert (= (and b!4057758 res!1654831) b!4057759))

(assert (= (and b!4057759 res!1654830) b!4057760))

(assert (= (and d!1205584 (not res!1654832)) b!4057761))

(assert (=> b!4057760 m!4661175))

(declare-fun m!4662189 () Bool)

(assert (=> b!4057760 m!4662189))

(assert (=> b!4057760 m!4661175))

(assert (=> b!4057760 m!4662189))

(declare-fun m!4662191 () Bool)

(assert (=> b!4057760 m!4662191))

(assert (=> b!4057759 m!4661181))

(declare-fun m!4662193 () Bool)

(assert (=> b!4057759 m!4662193))

(declare-fun m!4662195 () Bool)

(assert (=> b!4057761 m!4662195))

(assert (=> b!4057761 m!4660909))

(assert (=> b!4057007 d!1205584))

(declare-fun d!1205586 () Bool)

(assert (=> d!1205586 (isPrefix!4045 lt!1448584 (++!11360 lt!1448584 lt!1448559))))

(declare-fun lt!1448896 () Unit!62734)

(assert (=> d!1205586 (= lt!1448896 (choose!24641 lt!1448584 lt!1448559))))

(assert (=> d!1205586 (= (lemmaConcatTwoListThenFirstIsPrefix!2880 lt!1448584 lt!1448559) lt!1448896)))

(declare-fun bs!591901 () Bool)

(assert (= bs!591901 d!1205586))

(assert (=> bs!591901 m!4660919))

(assert (=> bs!591901 m!4660919))

(declare-fun m!4662197 () Bool)

(assert (=> bs!591901 m!4662197))

(declare-fun m!4662199 () Bool)

(assert (=> bs!591901 m!4662199))

(assert (=> b!4057007 d!1205586))

(declare-fun b!4057764 () Bool)

(declare-fun e!2518007 () Bool)

(assert (=> b!4057764 (= e!2518007 (isPrefix!4045 (tail!6301 lt!1448584) (tail!6301 lt!1448578)))))

(declare-fun d!1205588 () Bool)

(declare-fun e!2518008 () Bool)

(assert (=> d!1205588 e!2518008))

(declare-fun res!1654836 () Bool)

(assert (=> d!1205588 (=> res!1654836 e!2518008)))

(declare-fun lt!1448897 () Bool)

(assert (=> d!1205588 (= res!1654836 (not lt!1448897))))

(declare-fun e!2518006 () Bool)

(assert (=> d!1205588 (= lt!1448897 e!2518006)))

(declare-fun res!1654837 () Bool)

(assert (=> d!1205588 (=> res!1654837 e!2518006)))

(assert (=> d!1205588 (= res!1654837 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205588 (= (isPrefix!4045 lt!1448584 lt!1448578) lt!1448897)))

(declare-fun b!4057763 () Bool)

(declare-fun res!1654834 () Bool)

(assert (=> b!4057763 (=> (not res!1654834) (not e!2518007))))

(assert (=> b!4057763 (= res!1654834 (= (head!8569 lt!1448584) (head!8569 lt!1448578)))))

(declare-fun b!4057765 () Bool)

(assert (=> b!4057765 (= e!2518008 (>= (size!32422 lt!1448578) (size!32422 lt!1448584)))))

(declare-fun b!4057762 () Bool)

(assert (=> b!4057762 (= e!2518006 e!2518007)))

(declare-fun res!1654835 () Bool)

(assert (=> b!4057762 (=> (not res!1654835) (not e!2518007))))

(assert (=> b!4057762 (= res!1654835 (not ((_ is Nil!43365) lt!1448578)))))

(assert (= (and d!1205588 (not res!1654837)) b!4057762))

(assert (= (and b!4057762 res!1654835) b!4057763))

(assert (= (and b!4057763 res!1654834) b!4057764))

(assert (= (and d!1205588 (not res!1654836)) b!4057765))

(assert (=> b!4057764 m!4661175))

(assert (=> b!4057764 m!4661913))

(assert (=> b!4057764 m!4661175))

(assert (=> b!4057764 m!4661913))

(declare-fun m!4662201 () Bool)

(assert (=> b!4057764 m!4662201))

(assert (=> b!4057763 m!4661181))

(assert (=> b!4057763 m!4661919))

(assert (=> b!4057765 m!4661911))

(assert (=> b!4057765 m!4660909))

(assert (=> b!4056966 d!1205588))

(declare-fun b!4057768 () Bool)

(declare-fun e!2518010 () Bool)

(assert (=> b!4057768 (= e!2518010 (isPrefix!4045 (tail!6301 lt!1448584) (tail!6301 lt!1448595)))))

(declare-fun d!1205590 () Bool)

(declare-fun e!2518011 () Bool)

(assert (=> d!1205590 e!2518011))

(declare-fun res!1654840 () Bool)

(assert (=> d!1205590 (=> res!1654840 e!2518011)))

(declare-fun lt!1448898 () Bool)

(assert (=> d!1205590 (= res!1654840 (not lt!1448898))))

(declare-fun e!2518009 () Bool)

(assert (=> d!1205590 (= lt!1448898 e!2518009)))

(declare-fun res!1654841 () Bool)

(assert (=> d!1205590 (=> res!1654841 e!2518009)))

(assert (=> d!1205590 (= res!1654841 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205590 (= (isPrefix!4045 lt!1448584 lt!1448595) lt!1448898)))

(declare-fun b!4057767 () Bool)

(declare-fun res!1654838 () Bool)

(assert (=> b!4057767 (=> (not res!1654838) (not e!2518010))))

(assert (=> b!4057767 (= res!1654838 (= (head!8569 lt!1448584) (head!8569 lt!1448595)))))

(declare-fun b!4057769 () Bool)

(assert (=> b!4057769 (= e!2518011 (>= (size!32422 lt!1448595) (size!32422 lt!1448584)))))

(declare-fun b!4057766 () Bool)

(assert (=> b!4057766 (= e!2518009 e!2518010)))

(declare-fun res!1654839 () Bool)

(assert (=> b!4057766 (=> (not res!1654839) (not e!2518010))))

(assert (=> b!4057766 (= res!1654839 (not ((_ is Nil!43365) lt!1448595)))))

(assert (= (and d!1205590 (not res!1654841)) b!4057766))

(assert (= (and b!4057766 res!1654839) b!4057767))

(assert (= (and b!4057767 res!1654838) b!4057768))

(assert (= (and d!1205590 (not res!1654840)) b!4057769))

(assert (=> b!4057768 m!4661175))

(declare-fun m!4662203 () Bool)

(assert (=> b!4057768 m!4662203))

(assert (=> b!4057768 m!4661175))

(assert (=> b!4057768 m!4662203))

(declare-fun m!4662205 () Bool)

(assert (=> b!4057768 m!4662205))

(assert (=> b!4057767 m!4661181))

(declare-fun m!4662207 () Bool)

(assert (=> b!4057767 m!4662207))

(declare-fun m!4662209 () Bool)

(assert (=> b!4057769 m!4662209))

(assert (=> b!4057769 m!4660909))

(assert (=> b!4056966 d!1205590))

(declare-fun d!1205592 () Bool)

(assert (=> d!1205592 (isPrefix!4045 lt!1448584 (++!11360 lt!1448557 lt!1448542))))

(declare-fun lt!1448899 () Unit!62734)

(assert (=> d!1205592 (= lt!1448899 (choose!24648 lt!1448584 lt!1448557 lt!1448542))))

(assert (=> d!1205592 (isPrefix!4045 lt!1448584 lt!1448557)))

(assert (=> d!1205592 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!838 lt!1448584 lt!1448557 lt!1448542) lt!1448899)))

(declare-fun bs!591902 () Bool)

(assert (= bs!591902 d!1205592))

(assert (=> bs!591902 m!4660969))

(assert (=> bs!591902 m!4660969))

(declare-fun m!4662211 () Bool)

(assert (=> bs!591902 m!4662211))

(declare-fun m!4662213 () Bool)

(assert (=> bs!591902 m!4662213))

(assert (=> bs!591902 m!4660987))

(assert (=> b!4056966 d!1205592))

(declare-fun b!4057771 () Bool)

(declare-fun e!2518013 () List!43489)

(assert (=> b!4057771 (= e!2518013 (Cons!43365 (h!48785 lt!1448584) (++!11360 (t!336294 lt!1448584) lt!1448559)))))

(declare-fun e!2518012 () Bool)

(declare-fun lt!1448900 () List!43489)

(declare-fun b!4057773 () Bool)

(assert (=> b!4057773 (= e!2518012 (or (not (= lt!1448559 Nil!43365)) (= lt!1448900 lt!1448584)))))

(declare-fun b!4057772 () Bool)

(declare-fun res!1654843 () Bool)

(assert (=> b!4057772 (=> (not res!1654843) (not e!2518012))))

(assert (=> b!4057772 (= res!1654843 (= (size!32422 lt!1448900) (+ (size!32422 lt!1448584) (size!32422 lt!1448559))))))

(declare-fun d!1205594 () Bool)

(assert (=> d!1205594 e!2518012))

(declare-fun res!1654842 () Bool)

(assert (=> d!1205594 (=> (not res!1654842) (not e!2518012))))

(assert (=> d!1205594 (= res!1654842 (= (content!6610 lt!1448900) ((_ map or) (content!6610 lt!1448584) (content!6610 lt!1448559))))))

(assert (=> d!1205594 (= lt!1448900 e!2518013)))

(declare-fun c!700762 () Bool)

(assert (=> d!1205594 (= c!700762 ((_ is Nil!43365) lt!1448584))))

(assert (=> d!1205594 (= (++!11360 lt!1448584 lt!1448559) lt!1448900)))

(declare-fun b!4057770 () Bool)

(assert (=> b!4057770 (= e!2518013 lt!1448559)))

(assert (= (and d!1205594 c!700762) b!4057770))

(assert (= (and d!1205594 (not c!700762)) b!4057771))

(assert (= (and d!1205594 res!1654842) b!4057772))

(assert (= (and b!4057772 res!1654843) b!4057773))

(declare-fun m!4662215 () Bool)

(assert (=> b!4057771 m!4662215))

(declare-fun m!4662217 () Bool)

(assert (=> b!4057772 m!4662217))

(assert (=> b!4057772 m!4660909))

(declare-fun m!4662219 () Bool)

(assert (=> b!4057772 m!4662219))

(declare-fun m!4662221 () Bool)

(assert (=> d!1205594 m!4662221))

(assert (=> d!1205594 m!4661219))

(declare-fun m!4662223 () Bool)

(assert (=> d!1205594 m!4662223))

(assert (=> b!4057008 d!1205594))

(declare-fun d!1205596 () Bool)

(declare-fun lt!1448901 () List!43489)

(assert (=> d!1205596 (= (++!11360 lt!1448584 lt!1448901) lt!1448557)))

(declare-fun e!2518014 () List!43489)

(assert (=> d!1205596 (= lt!1448901 e!2518014)))

(declare-fun c!700763 () Bool)

(assert (=> d!1205596 (= c!700763 ((_ is Cons!43365) lt!1448584))))

(assert (=> d!1205596 (>= (size!32422 lt!1448557) (size!32422 lt!1448584))))

(assert (=> d!1205596 (= (getSuffix!2462 lt!1448557 lt!1448584) lt!1448901)))

(declare-fun b!4057774 () Bool)

(assert (=> b!4057774 (= e!2518014 (getSuffix!2462 (tail!6301 lt!1448557) (t!336294 lt!1448584)))))

(declare-fun b!4057775 () Bool)

(assert (=> b!4057775 (= e!2518014 lt!1448557)))

(assert (= (and d!1205596 c!700763) b!4057774))

(assert (= (and d!1205596 (not c!700763)) b!4057775))

(declare-fun m!4662225 () Bool)

(assert (=> d!1205596 m!4662225))

(assert (=> d!1205596 m!4661705))

(assert (=> d!1205596 m!4660909))

(assert (=> b!4057774 m!4661939))

(assert (=> b!4057774 m!4661939))

(declare-fun m!4662227 () Bool)

(assert (=> b!4057774 m!4662227))

(assert (=> b!4057008 d!1205596))

(declare-fun b!4057786 () Bool)

(declare-fun b_free!112917 () Bool)

(declare-fun b_next!113621 () Bool)

(assert (=> b!4057786 (= b_free!112917 (not b_next!113621))))

(declare-fun t!336339 () Bool)

(declare-fun tb!244073 () Bool)

(assert (=> (and b!4057786 (= (toValue!9514 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toValue!9514 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))) t!336339) tb!244073))

(declare-fun result!295762 () Bool)

(assert (= result!295762 result!295746))

(assert (=> d!1205436 t!336339))

(declare-fun tb!244075 () Bool)

(declare-fun t!336341 () Bool)

(assert (=> (and b!4057786 (= (toValue!9514 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toValue!9514 (transformation!6958 (rule!10046 token!484)))) t!336341) tb!244075))

(declare-fun result!295764 () Bool)

(assert (= result!295764 result!295756))

(assert (=> d!1205508 t!336341))

(declare-fun b_and!311991 () Bool)

(declare-fun tp!1229634 () Bool)

(assert (=> b!4057786 (= tp!1229634 (and (=> t!336339 result!295762) (=> t!336341 result!295764) b_and!311991))))

(declare-fun b_free!112919 () Bool)

(declare-fun b_next!113623 () Bool)

(assert (=> b!4057786 (= b_free!112919 (not b_next!113623))))

(declare-fun tb!244077 () Bool)

(declare-fun t!336343 () Bool)

(assert (=> (and b!4057786 (= (toChars!9373 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toChars!9373 (transformation!6958 (rule!10046 (_1!24347 (v!39787 lt!1448577)))))) t!336343) tb!244077))

(declare-fun result!295766 () Bool)

(assert (= result!295766 result!295712))

(assert (=> d!1205288 t!336343))

(declare-fun tb!244079 () Bool)

(declare-fun t!336345 () Bool)

(assert (=> (and b!4057786 (= (toChars!9373 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toChars!9373 (transformation!6958 (rule!10046 token!484)))) t!336345) tb!244079))

(declare-fun result!295768 () Bool)

(assert (= result!295768 result!295752))

(assert (=> b!4057555 t!336345))

(assert (=> d!1205538 t!336345))

(declare-fun tp!1229631 () Bool)

(declare-fun b_and!311993 () Bool)

(assert (=> b!4057786 (= tp!1229631 (and (=> t!336343 result!295766) (=> t!336345 result!295768) b_and!311993))))

(declare-fun e!2518023 () Bool)

(assert (=> b!4057786 (= e!2518023 (and tp!1229634 tp!1229631))))

(declare-fun e!2518026 () Bool)

(declare-fun b!4057785 () Bool)

(declare-fun tp!1229632 () Bool)

(assert (=> b!4057785 (= e!2518026 (and tp!1229632 (inv!57967 (tag!7818 (h!48787 (t!336296 rules!2999)))) (inv!57971 (transformation!6958 (h!48787 (t!336296 rules!2999)))) e!2518023))))

(declare-fun b!4057784 () Bool)

(declare-fun e!2518024 () Bool)

(declare-fun tp!1229633 () Bool)

(assert (=> b!4057784 (= e!2518024 (and e!2518026 tp!1229633))))

(assert (=> b!4056972 (= tp!1229562 e!2518024)))

(assert (= b!4057785 b!4057786))

(assert (= b!4057784 b!4057785))

(assert (= (and b!4056972 ((_ is Cons!43367) (t!336296 rules!2999))) b!4057784))

(declare-fun m!4662229 () Bool)

(assert (=> b!4057785 m!4662229))

(declare-fun m!4662231 () Bool)

(assert (=> b!4057785 m!4662231))

(declare-fun b!4057797 () Bool)

(declare-fun e!2518029 () Bool)

(assert (=> b!4057797 (= e!2518029 tp_is_empty!20697)))

(declare-fun b!4057799 () Bool)

(declare-fun tp!1229649 () Bool)

(assert (=> b!4057799 (= e!2518029 tp!1229649)))

(declare-fun b!4057800 () Bool)

(declare-fun tp!1229645 () Bool)

(declare-fun tp!1229646 () Bool)

(assert (=> b!4057800 (= e!2518029 (and tp!1229645 tp!1229646))))

(assert (=> b!4056983 (= tp!1229569 e!2518029)))

(declare-fun b!4057798 () Bool)

(declare-fun tp!1229648 () Bool)

(declare-fun tp!1229647 () Bool)

(assert (=> b!4057798 (= e!2518029 (and tp!1229648 tp!1229647))))

(assert (= (and b!4056983 ((_ is ElementMatch!11863) (regex!6958 (h!48787 rules!2999)))) b!4057797))

(assert (= (and b!4056983 ((_ is Concat!19052) (regex!6958 (h!48787 rules!2999)))) b!4057798))

(assert (= (and b!4056983 ((_ is Star!11863) (regex!6958 (h!48787 rules!2999)))) b!4057799))

(assert (= (and b!4056983 ((_ is Union!11863) (regex!6958 (h!48787 rules!2999)))) b!4057800))

(declare-fun b!4057805 () Bool)

(declare-fun e!2518032 () Bool)

(declare-fun tp!1229652 () Bool)

(assert (=> b!4057805 (= e!2518032 (and tp_is_empty!20697 tp!1229652))))

(assert (=> b!4056974 (= tp!1229564 e!2518032)))

(assert (= (and b!4056974 ((_ is Cons!43365) (t!336294 prefix!494))) b!4057805))

(declare-fun b!4057806 () Bool)

(declare-fun e!2518033 () Bool)

(assert (=> b!4057806 (= e!2518033 tp_is_empty!20697)))

(declare-fun b!4057808 () Bool)

(declare-fun tp!1229657 () Bool)

(assert (=> b!4057808 (= e!2518033 tp!1229657)))

(declare-fun b!4057809 () Bool)

(declare-fun tp!1229653 () Bool)

(declare-fun tp!1229654 () Bool)

(assert (=> b!4057809 (= e!2518033 (and tp!1229653 tp!1229654))))

(assert (=> b!4057006 (= tp!1229572 e!2518033)))

(declare-fun b!4057807 () Bool)

(declare-fun tp!1229656 () Bool)

(declare-fun tp!1229655 () Bool)

(assert (=> b!4057807 (= e!2518033 (and tp!1229656 tp!1229655))))

(assert (= (and b!4057006 ((_ is ElementMatch!11863) (regex!6958 (rule!10046 token!484)))) b!4057806))

(assert (= (and b!4057006 ((_ is Concat!19052) (regex!6958 (rule!10046 token!484)))) b!4057807))

(assert (= (and b!4057006 ((_ is Star!11863) (regex!6958 (rule!10046 token!484)))) b!4057808))

(assert (= (and b!4057006 ((_ is Union!11863) (regex!6958 (rule!10046 token!484)))) b!4057809))

(declare-fun b!4057810 () Bool)

(declare-fun e!2518034 () Bool)

(declare-fun tp!1229658 () Bool)

(assert (=> b!4057810 (= e!2518034 (and tp_is_empty!20697 tp!1229658))))

(assert (=> b!4056969 (= tp!1229566 e!2518034)))

(assert (= (and b!4056969 ((_ is Cons!43365) (t!336294 suffixResult!105))) b!4057810))

(declare-fun b!4057811 () Bool)

(declare-fun e!2518035 () Bool)

(declare-fun tp!1229659 () Bool)

(assert (=> b!4057811 (= e!2518035 (and tp_is_empty!20697 tp!1229659))))

(assert (=> b!4056963 (= tp!1229570 e!2518035)))

(assert (= (and b!4056963 ((_ is Cons!43365) (t!336294 suffix!1299))) b!4057811))

(declare-fun b!4057812 () Bool)

(declare-fun e!2518036 () Bool)

(declare-fun tp!1229660 () Bool)

(assert (=> b!4057812 (= e!2518036 (and tp_is_empty!20697 tp!1229660))))

(assert (=> b!4056995 (= tp!1229563 e!2518036)))

(assert (= (and b!4056995 ((_ is Cons!43365) (t!336294 newSuffixResult!27))) b!4057812))

(declare-fun b!4057813 () Bool)

(declare-fun e!2518037 () Bool)

(declare-fun tp!1229661 () Bool)

(assert (=> b!4057813 (= e!2518037 (and tp_is_empty!20697 tp!1229661))))

(assert (=> b!4056997 (= tp!1229568 e!2518037)))

(assert (= (and b!4056997 ((_ is Cons!43365) (t!336294 newSuffix!27))) b!4057813))

(declare-fun b!4057814 () Bool)

(declare-fun e!2518038 () Bool)

(declare-fun tp!1229662 () Bool)

(assert (=> b!4057814 (= e!2518038 (and tp_is_empty!20697 tp!1229662))))

(assert (=> b!4056992 (= tp!1229573 e!2518038)))

(assert (= (and b!4056992 ((_ is Cons!43365) (originalCharacters!7558 token!484))) b!4057814))

(declare-fun b_lambda!118565 () Bool)

(assert (= b_lambda!118559 (or (and b!4056994 b_free!112907 (= (toChars!9373 (transformation!6958 (h!48787 rules!2999))) (toChars!9373 (transformation!6958 (rule!10046 token!484))))) (and b!4056971 b_free!112911) (and b!4057786 b_free!112919 (= (toChars!9373 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toChars!9373 (transformation!6958 (rule!10046 token!484))))) b_lambda!118565)))

(declare-fun b_lambda!118567 () Bool)

(assert (= b_lambda!118561 (or (and b!4056994 b_free!112905 (= (toValue!9514 (transformation!6958 (h!48787 rules!2999))) (toValue!9514 (transformation!6958 (rule!10046 token!484))))) (and b!4056971 b_free!112909) (and b!4057786 b_free!112917 (= (toValue!9514 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toValue!9514 (transformation!6958 (rule!10046 token!484))))) b_lambda!118567)))

(declare-fun b_lambda!118569 () Bool)

(assert (= b_lambda!118563 (or (and b!4056994 b_free!112907 (= (toChars!9373 (transformation!6958 (h!48787 rules!2999))) (toChars!9373 (transformation!6958 (rule!10046 token!484))))) (and b!4056971 b_free!112911) (and b!4057786 b_free!112919 (= (toChars!9373 (transformation!6958 (h!48787 (t!336296 rules!2999)))) (toChars!9373 (transformation!6958 (rule!10046 token!484))))) b_lambda!118569)))

(check-sat (not b!4057687) (not d!1205480) (not b_lambda!118567) (not tb!244037) (not b_lambda!118569) (not d!1205448) (not b!4057665) (not bm!288043) (not b!4057523) (not b!4057560) (not d!1205560) b_and!311983 (not d!1205580) (not b!4057674) (not b!4057752) (not bm!288044) (not d!1205498) (not d!1205558) (not b!4057432) (not bm!288045) (not b!4057563) (not d!1205428) (not b!4057722) (not d!1205516) (not b!4057495) (not b!4057637) (not b!4057719) (not b_lambda!118565) (not b!4057569) (not b!4057698) (not b!4057633) (not d!1205552) (not b!4057673) (not b!4057531) (not b!4057741) (not b!4057559) (not b!4057157) (not b!4057771) (not d!1205514) (not d!1205474) (not b!4057490) (not d!1205540) (not b!4057651) (not b!4057670) (not b!4057798) (not b!4057621) (not d!1205586) (not b!4057683) (not b!4057097) (not bm!288040) (not d!1205466) (not b_next!113615) (not d!1205472) (not b!4057427) (not b!4057527) (not b_lambda!118541) (not d!1205430) (not b!4057649) (not b_next!113621) (not b!4057707) (not b!4057812) (not b!4057706) (not d!1205526) tp_is_empty!20697 (not b!4057645) (not b!4057657) (not b!4057534) (not d!1205440) (not d!1205522) (not b!4057555) (not b!4057682) (not b!4057528) b_and!311987 (not d!1205582) (not b!4057811) (not b!4057662) (not tb!244065) (not b!4057483) (not b!4057686) (not d!1205504) (not d!1205262) (not b!4057504) (not d!1205550) (not b!4057669) (not b!4057434) (not b!4057680) (not d!1205482) (not b!4057808) (not b!4057638) (not b!4057814) (not b!4057562) (not b!4057642) (not b!4057547) (not b!4057659) (not d!1205254) (not b!4057566) (not b!4057557) (not b!4057656) (not b!4057695) (not d!1205478) (not b!4057635) (not d!1205554) (not tb!244069) (not b!4057498) (not b!4057693) (not b!4057663) (not b!4057774) (not b!4057146) (not b!4057549) (not d!1205464) (not b!4057723) (not d!1205460) (not b!4057499) (not b!4057711) (not b!4057583) (not d!1205452) (not b!4057718) (not b!4057556) (not b!4057580) (not b!4057482) (not b!4057730) (not b!4057641) (not b!4057535) (not b!4057715) (not d!1205576) (not b!4057699) (not b!4057799) (not b!4057763) (not b!4057654) (not d!1205594) (not d!1205544) (not b!4057769) (not b!4057145) (not b!4057435) (not b!4057736) (not b!4057691) (not b!4057731) (not b!4057144) (not d!1205566) (not b!4057579) (not b!4057646) (not b!4057275) (not b!4057772) (not b!4057726) (not d!1205548) (not b!4057503) (not d!1205506) (not b!4057809) (not b!4057156) (not d!1205484) (not b!4057622) (not b!4057529) (not d!1205512) (not b!4057578) (not d!1205288) (not b!4057428) (not b!4057494) (not d!1205562) (not b!4057807) (not b!4057805) (not d!1205530) (not b!4057128) (not b!4057668) (not d!1205260) (not b!4057429) (not b!4057095) (not b!4057629) (not b_next!113609) (not b!4057764) (not b!4057810) (not b!4057784) (not d!1205556) (not b!4057430) (not d!1205424) (not b_lambda!118557) (not b!4057739) (not b_next!113613) b_and!311991 (not b!4057714) (not b!4057650) (not d!1205418) b_and!311985 (not b!4057639) (not d!1205578) (not d!1205442) (not b!4057765) (not b!4057761) (not b!4057733) (not tb!244061) (not b!4057768) (not b!4057530) (not b!4057678) (not d!1205518) (not b!4057696) (not d!1205456) b_and!311989 (not b!4057479) (not b!4057647) (not b!4057727) (not b!4057096) (not d!1205536) (not b!4057724) (not d!1205422) (not d!1205446) (not b!4057653) (not b!4057568) (not b!4057710) (not b!4057619) (not b!4057785) (not b!4057767) (not b!4057660) (not d!1205426) (not b!4057634) (not b!4057729) (not d!1205282) (not b!4057655) (not b_next!113611) (not b!4057800) (not b!4057589) b_and!311993 (not d!1205538) (not b!4057525) (not b!4057735) (not d!1205546) (not d!1205574) (not b!4057575) (not b!4057732) (not b!4057690) (not d!1205592) (not b!4057431) (not b!4057813) (not b!4057643) (not d!1205596) (not d!1205316) (not b!4057760) (not b!4057630) (not d!1205420) (not b_next!113623) (not d!1205568) (not b!4057618) (not b!4057548) (not d!1205488) (not b!4057756) (not d!1205496) (not d!1205438) (not b!4057502) (not b!4057676) (not b!4057524) (not b!4057652) (not d!1205462) (not d!1205458) (not d!1205434) (not d!1205490) (not b!4057725) (not b!4057533) (not d!1205510) (not b!4057759))
(check-sat b_and!311983 (not b_next!113615) (not b_next!113621) b_and!311987 b_and!311989 (not b_next!113623) (not b_next!113609) (not b_next!113613) b_and!311991 b_and!311985 (not b_next!113611) b_and!311993)
