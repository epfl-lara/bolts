; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378296 () Bool)

(assert start!378296)

(declare-fun b!4016342 () Bool)

(declare-fun b_free!111705 () Bool)

(declare-fun b_next!112409 () Bool)

(assert (=> b!4016342 (= b_free!111705 (not b_next!112409))))

(declare-fun tp!1221175 () Bool)

(declare-fun b_and!308567 () Bool)

(assert (=> b!4016342 (= tp!1221175 b_and!308567)))

(declare-fun b_free!111707 () Bool)

(declare-fun b_next!112411 () Bool)

(assert (=> b!4016342 (= b_free!111707 (not b_next!112411))))

(declare-fun tp!1221179 () Bool)

(declare-fun b_and!308569 () Bool)

(assert (=> b!4016342 (= tp!1221179 b_and!308569)))

(declare-fun b!4016361 () Bool)

(declare-fun b_free!111709 () Bool)

(declare-fun b_next!112413 () Bool)

(assert (=> b!4016361 (= b_free!111709 (not b_next!112413))))

(declare-fun tp!1221181 () Bool)

(declare-fun b_and!308571 () Bool)

(assert (=> b!4016361 (= tp!1221181 b_and!308571)))

(declare-fun b_free!111711 () Bool)

(declare-fun b_next!112415 () Bool)

(assert (=> b!4016361 (= b_free!111711 (not b_next!112415))))

(declare-fun tp!1221176 () Bool)

(declare-fun b_and!308573 () Bool)

(assert (=> b!4016361 (= tp!1221176 b_and!308573)))

(declare-fun b!4016326 () Bool)

(declare-fun res!1633363 () Bool)

(declare-fun e!2490999 () Bool)

(assert (=> b!4016326 (=> (not res!1633363) (not e!2490999))))

(declare-datatypes ((List!43098 0))(
  ( (Nil!42974) (Cons!42974 (h!48394 (_ BitVec 16)) (t!333383 List!43098)) )
))
(declare-datatypes ((C!23680 0))(
  ( (C!23681 (val!13934 Int)) )
))
(declare-datatypes ((List!43099 0))(
  ( (Nil!42975) (Cons!42975 (h!48395 C!23680) (t!333384 List!43099)) )
))
(declare-datatypes ((IArray!26111 0))(
  ( (IArray!26112 (innerList!13113 List!43099)) )
))
(declare-datatypes ((Conc!13053 0))(
  ( (Node!13053 (left!32408 Conc!13053) (right!32738 Conc!13053) (csize!26336 Int) (cheight!13264 Int)) (Leaf!20181 (xs!16359 IArray!26111) (csize!26337 Int)) (Empty!13053) )
))
(declare-datatypes ((BalanceConc!25700 0))(
  ( (BalanceConc!25701 (c!694294 Conc!13053)) )
))
(declare-datatypes ((TokenValue!7072 0))(
  ( (FloatLiteralValue!14144 (text!49949 List!43098)) (TokenValueExt!7071 (__x!26361 Int)) (Broken!35360 (value!215605 List!43098)) (Object!7195) (End!7072) (Def!7072) (Underscore!7072) (Match!7072) (Else!7072) (Error!7072) (Case!7072) (If!7072) (Extends!7072) (Abstract!7072) (Class!7072) (Val!7072) (DelimiterValue!14144 (del!7132 List!43098)) (KeywordValue!7078 (value!215606 List!43098)) (CommentValue!14144 (value!215607 List!43098)) (WhitespaceValue!14144 (value!215608 List!43098)) (IndentationValue!7072 (value!215609 List!43098)) (String!49077) (Int32!7072) (Broken!35361 (value!215610 List!43098)) (Boolean!7073) (Unit!62029) (OperatorValue!7075 (op!7132 List!43098)) (IdentifierValue!14144 (value!215611 List!43098)) (IdentifierValue!14145 (value!215612 List!43098)) (WhitespaceValue!14145 (value!215613 List!43098)) (True!14144) (False!14144) (Broken!35362 (value!215614 List!43098)) (Broken!35363 (value!215615 List!43098)) (True!14145) (RightBrace!7072) (RightBracket!7072) (Colon!7072) (Null!7072) (Comma!7072) (LeftBracket!7072) (False!14145) (LeftBrace!7072) (ImaginaryLiteralValue!7072 (text!49950 List!43098)) (StringLiteralValue!21216 (value!215616 List!43098)) (EOFValue!7072 (value!215617 List!43098)) (IdentValue!7072 (value!215618 List!43098)) (DelimiterValue!14145 (value!215619 List!43098)) (DedentValue!7072 (value!215620 List!43098)) (NewLineValue!7072 (value!215621 List!43098)) (IntegerValue!21216 (value!215622 (_ BitVec 32)) (text!49951 List!43098)) (IntegerValue!21217 (value!215623 Int) (text!49952 List!43098)) (Times!7072) (Or!7072) (Equal!7072) (Minus!7072) (Broken!35364 (value!215624 List!43098)) (And!7072) (Div!7072) (LessEqual!7072) (Mod!7072) (Concat!18819) (Not!7072) (Plus!7072) (SpaceValue!7072 (value!215625 List!43098)) (IntegerValue!21218 (value!215626 Int) (text!49953 List!43098)) (StringLiteralValue!21217 (text!49954 List!43098)) (FloatLiteralValue!14145 (text!49955 List!43098)) (BytesLiteralValue!7072 (value!215627 List!43098)) (CommentValue!14145 (value!215628 List!43098)) (StringLiteralValue!21218 (value!215629 List!43098)) (ErrorTokenValue!7072 (msg!7133 List!43098)) )
))
(declare-datatypes ((Regex!11747 0))(
  ( (ElementMatch!11747 (c!694295 C!23680)) (Concat!18820 (regOne!24006 Regex!11747) (regTwo!24006 Regex!11747)) (EmptyExpr!11747) (Star!11747 (reg!12076 Regex!11747)) (EmptyLang!11747) (Union!11747 (regOne!24007 Regex!11747) (regTwo!24007 Regex!11747)) )
))
(declare-datatypes ((String!49078 0))(
  ( (String!49079 (value!215630 String)) )
))
(declare-datatypes ((TokenValueInjection!13572 0))(
  ( (TokenValueInjection!13573 (toValue!9350 Int) (toChars!9209 Int)) )
))
(declare-datatypes ((Rule!13484 0))(
  ( (Rule!13485 (regex!6842 Regex!11747) (tag!7702 String!49078) (isSeparator!6842 Bool) (transformation!6842 TokenValueInjection!13572)) )
))
(declare-datatypes ((List!43100 0))(
  ( (Nil!42976) (Cons!42976 (h!48396 Rule!13484) (t!333385 List!43100)) )
))
(declare-fun rules!2999 () List!43100)

(declare-fun isEmpty!25670 (List!43100) Bool)

(assert (=> b!4016326 (= res!1633363 (not (isEmpty!25670 rules!2999)))))

(declare-fun b!4016327 () Bool)

(declare-fun e!2490997 () Bool)

(declare-fun e!2490990 () Bool)

(assert (=> b!4016327 (= e!2490997 e!2490990)))

(declare-fun res!1633366 () Bool)

(assert (=> b!4016327 (=> res!1633366 e!2490990)))

(declare-datatypes ((Token!12822 0))(
  ( (Token!12823 (value!215631 TokenValue!7072) (rule!9892 Rule!13484) (size!32133 Int) (originalCharacters!7442 List!43099)) )
))
(declare-datatypes ((tuple2!42118 0))(
  ( (tuple2!42119 (_1!24193 Token!12822) (_2!24193 List!43099)) )
))
(declare-datatypes ((Option!9256 0))(
  ( (None!9255) (Some!9255 (v!39627 tuple2!42118)) )
))
(declare-fun lt!1423712 () Option!9256)

(declare-fun lt!1423703 () Option!9256)

(assert (=> b!4016327 (= res!1633366 (not (= lt!1423712 lt!1423703)))))

(declare-fun lt!1423700 () Token!12822)

(declare-fun suffixResult!105 () List!43099)

(assert (=> b!4016327 (= lt!1423712 (Some!9255 (tuple2!42119 lt!1423700 suffixResult!105)))))

(declare-fun token!484 () Token!12822)

(declare-datatypes ((LexerInterface!6431 0))(
  ( (LexerInterfaceExt!6428 (__x!26362 Int)) (Lexer!6429) )
))
(declare-fun thiss!21717 () LexerInterface!6431)

(declare-fun lt!1423734 () List!43099)

(declare-fun maxPrefixOneRule!2749 (LexerInterface!6431 Rule!13484 List!43099) Option!9256)

(assert (=> b!4016327 (= lt!1423712 (maxPrefixOneRule!2749 thiss!21717 (rule!9892 token!484) lt!1423734))))

(declare-fun lt!1423743 () TokenValue!7072)

(declare-fun lt!1423707 () List!43099)

(declare-fun lt!1423716 () Int)

(assert (=> b!4016327 (= lt!1423700 (Token!12823 lt!1423743 (rule!9892 token!484) lt!1423716 lt!1423707))))

(declare-fun apply!10039 (TokenValueInjection!13572 BalanceConc!25700) TokenValue!7072)

(declare-fun seqFromList!5067 (List!43099) BalanceConc!25700)

(assert (=> b!4016327 (= lt!1423743 (apply!10039 (transformation!6842 (rule!9892 token!484)) (seqFromList!5067 lt!1423707)))))

(declare-datatypes ((Unit!62030 0))(
  ( (Unit!62031) )
))
(declare-fun lt!1423701 () Unit!62030)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1567 (LexerInterface!6431 List!43100 List!43099 List!43099 List!43099 Rule!13484) Unit!62030)

(assert (=> b!4016327 (= lt!1423701 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1567 thiss!21717 rules!2999 lt!1423707 lt!1423734 suffixResult!105 (rule!9892 token!484)))))

(declare-fun lt!1423693 () List!43099)

(assert (=> b!4016327 (= lt!1423693 suffixResult!105)))

(declare-fun lt!1423738 () Unit!62030)

(declare-fun lemmaSamePrefixThenSameSuffix!2100 (List!43099 List!43099 List!43099 List!43099 List!43099) Unit!62030)

(assert (=> b!4016327 (= lt!1423738 (lemmaSamePrefixThenSameSuffix!2100 lt!1423707 lt!1423693 lt!1423707 suffixResult!105 lt!1423734))))

(declare-fun lt!1423730 () List!43099)

(declare-fun isPrefix!3929 (List!43099 List!43099) Bool)

(assert (=> b!4016327 (isPrefix!3929 lt!1423707 lt!1423730)))

(declare-fun lt!1423728 () Unit!62030)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2770 (List!43099 List!43099) Unit!62030)

(assert (=> b!4016327 (= lt!1423728 (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423707 lt!1423693))))

(declare-fun b!4016328 () Bool)

(declare-fun e!2490989 () Bool)

(declare-fun lt!1423731 () Option!9256)

(declare-fun contains!8544 (List!43100 Rule!13484) Bool)

(assert (=> b!4016328 (= e!2490989 (contains!8544 rules!2999 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun b!4016329 () Bool)

(declare-fun res!1633357 () Bool)

(declare-fun e!2490986 () Bool)

(assert (=> b!4016329 (=> (not res!1633357) (not e!2490986))))

(assert (=> b!4016329 (= res!1633357 (= (value!215631 token!484) lt!1423743))))

(declare-fun b!4016330 () Bool)

(declare-fun res!1633375 () Bool)

(assert (=> b!4016330 (=> res!1633375 e!2490989)))

(assert (=> b!4016330 (= res!1633375 (not (contains!8544 rules!2999 (rule!9892 token!484))))))

(declare-fun res!1633358 () Bool)

(assert (=> start!378296 (=> (not res!1633358) (not e!2490999))))

(get-info :version)

(assert (=> start!378296 (= res!1633358 ((_ is Lexer!6429) thiss!21717))))

(assert (=> start!378296 e!2490999))

(declare-fun e!2490978 () Bool)

(assert (=> start!378296 e!2490978))

(declare-fun e!2490988 () Bool)

(declare-fun inv!57405 (Token!12822) Bool)

(assert (=> start!378296 (and (inv!57405 token!484) e!2490988)))

(declare-fun e!2491003 () Bool)

(assert (=> start!378296 e!2491003))

(declare-fun e!2491000 () Bool)

(assert (=> start!378296 e!2491000))

(declare-fun e!2491006 () Bool)

(assert (=> start!378296 e!2491006))

(assert (=> start!378296 true))

(declare-fun e!2490987 () Bool)

(assert (=> start!378296 e!2490987))

(declare-fun e!2490984 () Bool)

(assert (=> start!378296 e!2490984))

(declare-fun b!4016331 () Bool)

(declare-fun e!2491004 () Bool)

(declare-fun e!2491001 () Bool)

(assert (=> b!4016331 (= e!2491004 e!2491001)))

(declare-fun res!1633372 () Bool)

(assert (=> b!4016331 (=> res!1633372 e!2491001)))

(declare-fun lt!1423692 () List!43099)

(declare-fun lt!1423729 () List!43099)

(assert (=> b!4016331 (= res!1633372 (not (= lt!1423692 lt!1423729)))))

(declare-fun lt!1423698 () List!43099)

(declare-fun lt!1423718 () List!43099)

(declare-fun ++!11244 (List!43099 List!43099) List!43099)

(assert (=> b!4016331 (= lt!1423692 (++!11244 lt!1423698 lt!1423718))))

(declare-fun getSuffix!2354 (List!43099 List!43099) List!43099)

(assert (=> b!4016331 (= lt!1423718 (getSuffix!2354 lt!1423729 lt!1423698))))

(declare-fun b!4016332 () Bool)

(declare-fun e!2490998 () Bool)

(declare-fun e!2490980 () Bool)

(assert (=> b!4016332 (= e!2490998 (not e!2490980))))

(declare-fun res!1633374 () Bool)

(assert (=> b!4016332 (=> res!1633374 e!2490980)))

(declare-fun lt!1423719 () List!43099)

(assert (=> b!4016332 (= res!1633374 (not (= lt!1423719 lt!1423734)))))

(assert (=> b!4016332 (= lt!1423719 (++!11244 lt!1423707 suffixResult!105))))

(declare-fun lt!1423715 () Unit!62030)

(declare-fun lemmaInv!1057 (TokenValueInjection!13572) Unit!62030)

(assert (=> b!4016332 (= lt!1423715 (lemmaInv!1057 (transformation!6842 (rule!9892 token!484))))))

(declare-fun ruleValid!2774 (LexerInterface!6431 Rule!13484) Bool)

(assert (=> b!4016332 (ruleValid!2774 thiss!21717 (rule!9892 token!484))))

(declare-fun lt!1423695 () Unit!62030)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1848 (LexerInterface!6431 Rule!13484 List!43100) Unit!62030)

(assert (=> b!4016332 (= lt!1423695 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1848 thiss!21717 (rule!9892 token!484) rules!2999))))

(declare-fun b!4016333 () Bool)

(declare-fun tp_is_empty!20465 () Bool)

(declare-fun tp!1221183 () Bool)

(assert (=> b!4016333 (= e!2490984 (and tp_is_empty!20465 tp!1221183))))

(declare-fun b!4016334 () Bool)

(declare-fun tp!1221182 () Bool)

(assert (=> b!4016334 (= e!2491000 (and tp_is_empty!20465 tp!1221182))))

(declare-fun b!4016335 () Bool)

(declare-fun res!1633356 () Bool)

(assert (=> b!4016335 (=> (not res!1633356) (not e!2490999))))

(declare-fun suffix!1299 () List!43099)

(declare-fun newSuffix!27 () List!43099)

(declare-fun size!32134 (List!43099) Int)

(assert (=> b!4016335 (= res!1633356 (>= (size!32134 suffix!1299) (size!32134 newSuffix!27)))))

(declare-fun b!4016336 () Bool)

(declare-fun e!2490976 () Bool)

(assert (=> b!4016336 (= e!2490976 e!2491004)))

(declare-fun res!1633371 () Bool)

(assert (=> b!4016336 (=> res!1633371 e!2491004)))

(assert (=> b!4016336 (= res!1633371 (not (isPrefix!3929 lt!1423698 lt!1423734)))))

(declare-fun lt!1423699 () List!43099)

(assert (=> b!4016336 (isPrefix!3929 lt!1423698 lt!1423699)))

(declare-fun lt!1423740 () Unit!62030)

(declare-fun lt!1423739 () List!43099)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!742 (List!43099 List!43099 List!43099) Unit!62030)

(assert (=> b!4016336 (= lt!1423740 (lemmaPrefixStaysPrefixWhenAddingToSuffix!742 lt!1423698 lt!1423729 lt!1423739))))

(declare-fun e!2490979 () Bool)

(declare-fun b!4016337 () Bool)

(declare-fun tp!1221177 () Bool)

(declare-fun e!2490981 () Bool)

(declare-fun inv!57402 (String!49078) Bool)

(declare-fun inv!57406 (TokenValueInjection!13572) Bool)

(assert (=> b!4016337 (= e!2490979 (and tp!1221177 (inv!57402 (tag!7702 (rule!9892 token!484))) (inv!57406 (transformation!6842 (rule!9892 token!484))) e!2490981))))

(declare-fun b!4016338 () Bool)

(declare-fun e!2490995 () Bool)

(assert (=> b!4016338 (= e!2490995 e!2490976)))

(declare-fun res!1633378 () Bool)

(assert (=> b!4016338 (=> res!1633378 e!2490976)))

(assert (=> b!4016338 (= res!1633378 (not (= lt!1423699 lt!1423734)))))

(declare-fun prefix!494 () List!43099)

(declare-fun lt!1423741 () List!43099)

(assert (=> b!4016338 (= lt!1423699 (++!11244 prefix!494 lt!1423741))))

(assert (=> b!4016338 (= lt!1423699 (++!11244 lt!1423729 lt!1423739))))

(declare-fun lt!1423733 () Unit!62030)

(declare-fun lemmaConcatAssociativity!2554 (List!43099 List!43099 List!43099) Unit!62030)

(assert (=> b!4016338 (= lt!1423733 (lemmaConcatAssociativity!2554 prefix!494 newSuffix!27 lt!1423739))))

(declare-fun b!4016339 () Bool)

(declare-fun e!2490992 () Bool)

(assert (=> b!4016339 (= e!2490990 e!2490992)))

(declare-fun res!1633381 () Bool)

(assert (=> b!4016339 (=> res!1633381 e!2490992)))

(declare-fun matchR!5708 (Regex!11747 List!43099) Bool)

(assert (=> b!4016339 (= res!1633381 (not (matchR!5708 (regex!6842 (rule!9892 token!484)) lt!1423707)))))

(assert (=> b!4016339 (isPrefix!3929 lt!1423707 lt!1423729)))

(declare-fun lt!1423725 () Unit!62030)

(assert (=> b!4016339 (= lt!1423725 (lemmaPrefixStaysPrefixWhenAddingToSuffix!742 lt!1423707 prefix!494 newSuffix!27))))

(declare-fun lt!1423702 () Unit!62030)

(assert (=> b!4016339 (= lt!1423702 (lemmaPrefixStaysPrefixWhenAddingToSuffix!742 lt!1423707 prefix!494 suffix!1299))))

(declare-fun b!4016340 () Bool)

(declare-fun e!2490985 () Bool)

(declare-fun e!2491002 () Bool)

(assert (=> b!4016340 (= e!2490985 e!2491002)))

(declare-fun res!1633367 () Bool)

(assert (=> b!4016340 (=> res!1633367 e!2491002)))

(declare-fun lt!1423709 () Option!9256)

(assert (=> b!4016340 (= res!1633367 (not (= lt!1423709 (Some!9255 (v!39627 lt!1423731)))))))

(declare-fun newSuffixResult!27 () List!43099)

(assert (=> b!4016340 (isPrefix!3929 lt!1423698 (++!11244 lt!1423698 newSuffixResult!27))))

(declare-fun lt!1423717 () Unit!62030)

(assert (=> b!4016340 (= lt!1423717 (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423698 newSuffixResult!27))))

(declare-fun lt!1423732 () List!43099)

(assert (=> b!4016340 (isPrefix!3929 lt!1423698 lt!1423732)))

(assert (=> b!4016340 (= lt!1423732 (++!11244 lt!1423698 (_2!24193 (v!39627 lt!1423731))))))

(declare-fun lt!1423721 () Unit!62030)

(assert (=> b!4016340 (= lt!1423721 (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423698 (_2!24193 (v!39627 lt!1423731))))))

(declare-fun lt!1423694 () TokenValue!7072)

(declare-fun lt!1423745 () Int)

(assert (=> b!4016340 (= lt!1423709 (Some!9255 (tuple2!42119 (Token!12823 lt!1423694 (rule!9892 (_1!24193 (v!39627 lt!1423731))) lt!1423745 lt!1423698) (_2!24193 (v!39627 lt!1423731)))))))

(assert (=> b!4016340 (= lt!1423709 (maxPrefixOneRule!2749 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))) lt!1423729))))

(assert (=> b!4016340 (= lt!1423745 (size!32134 lt!1423698))))

(assert (=> b!4016340 (= lt!1423694 (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (seqFromList!5067 lt!1423698)))))

(declare-fun lt!1423696 () Unit!62030)

(assert (=> b!4016340 (= lt!1423696 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1567 thiss!21717 rules!2999 lt!1423698 lt!1423729 (_2!24193 (v!39627 lt!1423731)) (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun list!15976 (BalanceConc!25700) List!43099)

(declare-fun charsOf!4658 (Token!12822) BalanceConc!25700)

(assert (=> b!4016340 (= lt!1423698 (list!15976 (charsOf!4658 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun lt!1423706 () Unit!62030)

(assert (=> b!4016340 (= lt!1423706 (lemmaInv!1057 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))))))

(assert (=> b!4016340 (ruleValid!2774 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))))))

(declare-fun lt!1423723 () Unit!62030)

(assert (=> b!4016340 (= lt!1423723 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1848 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))) rules!2999))))

(declare-fun lt!1423724 () Unit!62030)

(declare-fun lemmaCharactersSize!1401 (Token!12822) Unit!62030)

(assert (=> b!4016340 (= lt!1423724 (lemmaCharactersSize!1401 token!484))))

(declare-fun lt!1423714 () Unit!62030)

(assert (=> b!4016340 (= lt!1423714 (lemmaCharactersSize!1401 (_1!24193 (v!39627 lt!1423731))))))

(declare-fun b!4016341 () Bool)

(declare-fun e!2491007 () Bool)

(assert (=> b!4016341 (= e!2490999 e!2491007)))

(declare-fun res!1633362 () Bool)

(assert (=> b!4016341 (=> (not res!1633362) (not e!2491007))))

(declare-fun lt!1423691 () Int)

(assert (=> b!4016341 (= res!1633362 (>= lt!1423691 lt!1423716))))

(assert (=> b!4016341 (= lt!1423716 (size!32134 lt!1423707))))

(assert (=> b!4016341 (= lt!1423691 (size!32134 prefix!494))))

(assert (=> b!4016341 (= lt!1423707 (list!15976 (charsOf!4658 token!484)))))

(assert (=> b!4016342 (= e!2490981 (and tp!1221175 tp!1221179))))

(declare-fun b!4016343 () Bool)

(declare-fun res!1633370 () Bool)

(assert (=> b!4016343 (=> (not res!1633370) (not e!2490986))))

(assert (=> b!4016343 (= res!1633370 (= (size!32133 token!484) (size!32134 (originalCharacters!7442 token!484))))))

(declare-fun b!4016344 () Bool)

(declare-fun res!1633365 () Bool)

(assert (=> b!4016344 (=> (not res!1633365) (not e!2490999))))

(declare-fun rulesInvariant!5774 (LexerInterface!6431 List!43100) Bool)

(assert (=> b!4016344 (= res!1633365 (rulesInvariant!5774 thiss!21717 rules!2999))))

(declare-fun tp!1221186 () Bool)

(declare-fun e!2490982 () Bool)

(declare-fun b!4016345 () Bool)

(declare-fun e!2490983 () Bool)

(assert (=> b!4016345 (= e!2490983 (and tp!1221186 (inv!57402 (tag!7702 (h!48396 rules!2999))) (inv!57406 (transformation!6842 (h!48396 rules!2999))) e!2490982))))

(declare-fun b!4016346 () Bool)

(assert (=> b!4016346 (= e!2491002 e!2490995)))

(declare-fun res!1633379 () Bool)

(assert (=> b!4016346 (=> res!1633379 e!2490995)))

(assert (=> b!4016346 (= res!1633379 (not (= lt!1423741 suffix!1299)))))

(assert (=> b!4016346 (= lt!1423741 (++!11244 newSuffix!27 lt!1423739))))

(assert (=> b!4016346 (= lt!1423739 (getSuffix!2354 suffix!1299 newSuffix!27))))

(declare-fun b!4016347 () Bool)

(declare-fun tp!1221178 () Bool)

(assert (=> b!4016347 (= e!2490978 (and tp_is_empty!20465 tp!1221178))))

(declare-fun b!4016348 () Bool)

(assert (=> b!4016348 (= e!2491001 e!2490989)))

(declare-fun res!1633382 () Bool)

(assert (=> b!4016348 (=> res!1633382 e!2490989)))

(assert (=> b!4016348 (= res!1633382 (<= lt!1423745 lt!1423716))))

(assert (=> b!4016348 (= (_2!24193 (v!39627 lt!1423731)) lt!1423718)))

(declare-fun lt!1423713 () Unit!62030)

(assert (=> b!4016348 (= lt!1423713 (lemmaSamePrefixThenSameSuffix!2100 lt!1423698 (_2!24193 (v!39627 lt!1423731)) lt!1423698 lt!1423718 lt!1423729))))

(assert (=> b!4016348 (isPrefix!3929 lt!1423698 lt!1423692)))

(declare-fun lt!1423742 () Unit!62030)

(assert (=> b!4016348 (= lt!1423742 (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423698 lt!1423718))))

(declare-fun b!4016349 () Bool)

(declare-fun tp!1221180 () Bool)

(declare-fun inv!21 (TokenValue!7072) Bool)

(assert (=> b!4016349 (= e!2490988 (and (inv!21 (value!215631 token!484)) e!2490979 tp!1221180))))

(declare-fun b!4016350 () Bool)

(declare-fun e!2490996 () Bool)

(assert (=> b!4016350 (= e!2490980 e!2490996)))

(declare-fun res!1633383 () Bool)

(assert (=> b!4016350 (=> res!1633383 e!2490996)))

(assert (=> b!4016350 (= res!1633383 (not (isPrefix!3929 lt!1423707 lt!1423734)))))

(assert (=> b!4016350 (isPrefix!3929 prefix!494 lt!1423734)))

(declare-fun lt!1423727 () Unit!62030)

(assert (=> b!4016350 (= lt!1423727 (lemmaConcatTwoListThenFirstIsPrefix!2770 prefix!494 suffix!1299))))

(assert (=> b!4016350 (isPrefix!3929 lt!1423707 lt!1423719)))

(declare-fun lt!1423710 () Unit!62030)

(assert (=> b!4016350 (= lt!1423710 (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423707 suffixResult!105))))

(declare-fun b!4016351 () Bool)

(declare-fun e!2490977 () Bool)

(assert (=> b!4016351 (= e!2490977 e!2490985)))

(declare-fun res!1633361 () Bool)

(assert (=> b!4016351 (=> res!1633361 e!2490985)))

(assert (=> b!4016351 (= res!1633361 (not ((_ is Some!9255) lt!1423731)))))

(declare-fun maxPrefix!3729 (LexerInterface!6431 List!43100 List!43099) Option!9256)

(assert (=> b!4016351 (= lt!1423731 (maxPrefix!3729 thiss!21717 rules!2999 lt!1423729))))

(declare-fun lt!1423705 () List!43099)

(declare-fun lt!1423736 () tuple2!42118)

(assert (=> b!4016351 (and (= suffixResult!105 lt!1423705) (= lt!1423736 (tuple2!42119 lt!1423700 lt!1423705)))))

(declare-fun lt!1423726 () Unit!62030)

(assert (=> b!4016351 (= lt!1423726 (lemmaSamePrefixThenSameSuffix!2100 lt!1423707 suffixResult!105 lt!1423707 lt!1423705 lt!1423734))))

(declare-fun lt!1423737 () List!43099)

(assert (=> b!4016351 (isPrefix!3929 lt!1423707 lt!1423737)))

(declare-fun lt!1423711 () Unit!62030)

(assert (=> b!4016351 (= lt!1423711 (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423707 lt!1423705))))

(declare-fun b!4016352 () Bool)

(declare-fun tp!1221174 () Bool)

(assert (=> b!4016352 (= e!2491003 (and tp_is_empty!20465 tp!1221174))))

(declare-fun b!4016353 () Bool)

(assert (=> b!4016353 (= e!2490992 e!2490977)))

(declare-fun res!1633380 () Bool)

(assert (=> b!4016353 (=> res!1633380 e!2490977)))

(assert (=> b!4016353 (= res!1633380 (not (= lt!1423737 lt!1423734)))))

(assert (=> b!4016353 (= lt!1423737 (++!11244 lt!1423707 lt!1423705))))

(assert (=> b!4016353 (= lt!1423705 (getSuffix!2354 lt!1423734 lt!1423707))))

(assert (=> b!4016353 e!2490986))

(declare-fun res!1633376 () Bool)

(assert (=> b!4016353 (=> (not res!1633376) (not e!2490986))))

(assert (=> b!4016353 (= res!1633376 (isPrefix!3929 lt!1423734 lt!1423734))))

(declare-fun lt!1423697 () Unit!62030)

(declare-fun lemmaIsPrefixRefl!2505 (List!43099 List!43099) Unit!62030)

(assert (=> b!4016353 (= lt!1423697 (lemmaIsPrefixRefl!2505 lt!1423734 lt!1423734))))

(declare-fun b!4016354 () Bool)

(declare-fun e!2491005 () Bool)

(assert (=> b!4016354 (= e!2490996 e!2491005)))

(declare-fun res!1633377 () Bool)

(assert (=> b!4016354 (=> res!1633377 e!2491005)))

(declare-fun lt!1423704 () List!43099)

(assert (=> b!4016354 (= res!1633377 (not (= lt!1423704 prefix!494)))))

(declare-fun lt!1423735 () List!43099)

(assert (=> b!4016354 (= lt!1423704 (++!11244 lt!1423707 lt!1423735))))

(assert (=> b!4016354 (= lt!1423735 (getSuffix!2354 prefix!494 lt!1423707))))

(assert (=> b!4016354 (isPrefix!3929 lt!1423707 prefix!494)))

(declare-fun lt!1423708 () Unit!62030)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!501 (List!43099 List!43099 List!43099) Unit!62030)

(assert (=> b!4016354 (= lt!1423708 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!501 prefix!494 lt!1423707 lt!1423734))))

(declare-fun b!4016355 () Bool)

(declare-fun e!2490991 () Bool)

(assert (=> b!4016355 (= e!2491007 e!2490991)))

(declare-fun res!1633364 () Bool)

(assert (=> b!4016355 (=> (not res!1633364) (not e!2490991))))

(declare-fun lt!1423720 () List!43099)

(assert (=> b!4016355 (= res!1633364 (= lt!1423720 lt!1423729))))

(assert (=> b!4016355 (= lt!1423729 (++!11244 prefix!494 newSuffix!27))))

(assert (=> b!4016355 (= lt!1423720 (++!11244 lt!1423707 newSuffixResult!27))))

(declare-fun b!4016356 () Bool)

(assert (=> b!4016356 (= e!2491005 e!2490997)))

(declare-fun res!1633368 () Bool)

(assert (=> b!4016356 (=> res!1633368 e!2490997)))

(declare-fun lt!1423722 () List!43099)

(assert (=> b!4016356 (= res!1633368 (or (not (= lt!1423734 lt!1423722)) (not (= lt!1423734 lt!1423730))))))

(assert (=> b!4016356 (= lt!1423722 lt!1423730)))

(assert (=> b!4016356 (= lt!1423730 (++!11244 lt!1423707 lt!1423693))))

(assert (=> b!4016356 (= lt!1423722 (++!11244 lt!1423704 suffix!1299))))

(assert (=> b!4016356 (= lt!1423693 (++!11244 lt!1423735 suffix!1299))))

(declare-fun lt!1423744 () Unit!62030)

(assert (=> b!4016356 (= lt!1423744 (lemmaConcatAssociativity!2554 lt!1423707 lt!1423735 suffix!1299))))

(declare-fun b!4016357 () Bool)

(declare-fun res!1633359 () Bool)

(assert (=> b!4016357 (=> res!1633359 e!2491004)))

(assert (=> b!4016357 (= res!1633359 (not (= lt!1423732 lt!1423729)))))

(declare-fun b!4016358 () Bool)

(declare-fun tp!1221184 () Bool)

(assert (=> b!4016358 (= e!2490987 (and e!2490983 tp!1221184))))

(declare-fun b!4016359 () Bool)

(declare-fun res!1633360 () Bool)

(assert (=> b!4016359 (=> (not res!1633360) (not e!2490999))))

(assert (=> b!4016359 (= res!1633360 (isPrefix!3929 newSuffix!27 suffix!1299))))

(declare-fun b!4016360 () Bool)

(declare-fun tp!1221185 () Bool)

(assert (=> b!4016360 (= e!2491006 (and tp_is_empty!20465 tp!1221185))))

(assert (=> b!4016361 (= e!2490982 (and tp!1221181 tp!1221176))))

(declare-fun b!4016362 () Bool)

(assert (=> b!4016362 (= e!2490991 e!2490998)))

(declare-fun res!1633373 () Bool)

(assert (=> b!4016362 (=> (not res!1633373) (not e!2490998))))

(assert (=> b!4016362 (= res!1633373 (= (maxPrefix!3729 thiss!21717 rules!2999 lt!1423734) lt!1423703))))

(assert (=> b!4016362 (= lt!1423703 (Some!9255 lt!1423736))))

(assert (=> b!4016362 (= lt!1423736 (tuple2!42119 token!484 suffixResult!105))))

(assert (=> b!4016362 (= lt!1423734 (++!11244 prefix!494 suffix!1299))))

(declare-fun b!4016363 () Bool)

(assert (=> b!4016363 (= e!2490986 (and (= (size!32133 token!484) lt!1423716) (= (originalCharacters!7442 token!484) lt!1423707)))))

(declare-fun b!4016364 () Bool)

(declare-fun res!1633369 () Bool)

(assert (=> b!4016364 (=> res!1633369 e!2490989)))

(assert (=> b!4016364 (= res!1633369 (not (isPrefix!3929 lt!1423698 lt!1423729)))))

(assert (= (and start!378296 res!1633358) b!4016326))

(assert (= (and b!4016326 res!1633363) b!4016344))

(assert (= (and b!4016344 res!1633365) b!4016335))

(assert (= (and b!4016335 res!1633356) b!4016359))

(assert (= (and b!4016359 res!1633360) b!4016341))

(assert (= (and b!4016341 res!1633362) b!4016355))

(assert (= (and b!4016355 res!1633364) b!4016362))

(assert (= (and b!4016362 res!1633373) b!4016332))

(assert (= (and b!4016332 (not res!1633374)) b!4016350))

(assert (= (and b!4016350 (not res!1633383)) b!4016354))

(assert (= (and b!4016354 (not res!1633377)) b!4016356))

(assert (= (and b!4016356 (not res!1633368)) b!4016327))

(assert (= (and b!4016327 (not res!1633366)) b!4016339))

(assert (= (and b!4016339 (not res!1633381)) b!4016353))

(assert (= (and b!4016353 res!1633376) b!4016329))

(assert (= (and b!4016329 res!1633357) b!4016343))

(assert (= (and b!4016343 res!1633370) b!4016363))

(assert (= (and b!4016353 (not res!1633380)) b!4016351))

(assert (= (and b!4016351 (not res!1633361)) b!4016340))

(assert (= (and b!4016340 (not res!1633367)) b!4016346))

(assert (= (and b!4016346 (not res!1633379)) b!4016338))

(assert (= (and b!4016338 (not res!1633378)) b!4016336))

(assert (= (and b!4016336 (not res!1633371)) b!4016357))

(assert (= (and b!4016357 (not res!1633359)) b!4016331))

(assert (= (and b!4016331 (not res!1633372)) b!4016348))

(assert (= (and b!4016348 (not res!1633382)) b!4016364))

(assert (= (and b!4016364 (not res!1633369)) b!4016330))

(assert (= (and b!4016330 (not res!1633375)) b!4016328))

(assert (= (and start!378296 ((_ is Cons!42975) prefix!494)) b!4016347))

(assert (= b!4016337 b!4016342))

(assert (= b!4016349 b!4016337))

(assert (= start!378296 b!4016349))

(assert (= (and start!378296 ((_ is Cons!42975) suffixResult!105)) b!4016352))

(assert (= (and start!378296 ((_ is Cons!42975) suffix!1299)) b!4016334))

(assert (= (and start!378296 ((_ is Cons!42975) newSuffix!27)) b!4016360))

(assert (= b!4016345 b!4016361))

(assert (= b!4016358 b!4016345))

(assert (= (and start!378296 ((_ is Cons!42976) rules!2999)) b!4016358))

(assert (= (and start!378296 ((_ is Cons!42975) newSuffixResult!27)) b!4016333))

(declare-fun m!4604465 () Bool)

(assert (=> b!4016354 m!4604465))

(declare-fun m!4604467 () Bool)

(assert (=> b!4016354 m!4604467))

(declare-fun m!4604469 () Bool)

(assert (=> b!4016354 m!4604469))

(declare-fun m!4604471 () Bool)

(assert (=> b!4016354 m!4604471))

(declare-fun m!4604473 () Bool)

(assert (=> b!4016326 m!4604473))

(declare-fun m!4604475 () Bool)

(assert (=> b!4016349 m!4604475))

(declare-fun m!4604477 () Bool)

(assert (=> b!4016353 m!4604477))

(declare-fun m!4604479 () Bool)

(assert (=> b!4016353 m!4604479))

(declare-fun m!4604481 () Bool)

(assert (=> b!4016353 m!4604481))

(declare-fun m!4604483 () Bool)

(assert (=> b!4016353 m!4604483))

(declare-fun m!4604485 () Bool)

(assert (=> b!4016341 m!4604485))

(declare-fun m!4604487 () Bool)

(assert (=> b!4016341 m!4604487))

(declare-fun m!4604489 () Bool)

(assert (=> b!4016341 m!4604489))

(assert (=> b!4016341 m!4604489))

(declare-fun m!4604491 () Bool)

(assert (=> b!4016341 m!4604491))

(declare-fun m!4604493 () Bool)

(assert (=> b!4016335 m!4604493))

(declare-fun m!4604495 () Bool)

(assert (=> b!4016335 m!4604495))

(declare-fun m!4604497 () Bool)

(assert (=> b!4016327 m!4604497))

(declare-fun m!4604499 () Bool)

(assert (=> b!4016327 m!4604499))

(declare-fun m!4604501 () Bool)

(assert (=> b!4016327 m!4604501))

(declare-fun m!4604503 () Bool)

(assert (=> b!4016327 m!4604503))

(declare-fun m!4604505 () Bool)

(assert (=> b!4016327 m!4604505))

(assert (=> b!4016327 m!4604501))

(declare-fun m!4604507 () Bool)

(assert (=> b!4016327 m!4604507))

(declare-fun m!4604509 () Bool)

(assert (=> b!4016327 m!4604509))

(declare-fun m!4604511 () Bool)

(assert (=> b!4016328 m!4604511))

(declare-fun m!4604513 () Bool)

(assert (=> b!4016343 m!4604513))

(declare-fun m!4604515 () Bool)

(assert (=> b!4016348 m!4604515))

(declare-fun m!4604517 () Bool)

(assert (=> b!4016348 m!4604517))

(declare-fun m!4604519 () Bool)

(assert (=> b!4016348 m!4604519))

(declare-fun m!4604521 () Bool)

(assert (=> b!4016330 m!4604521))

(declare-fun m!4604523 () Bool)

(assert (=> b!4016350 m!4604523))

(declare-fun m!4604525 () Bool)

(assert (=> b!4016350 m!4604525))

(declare-fun m!4604527 () Bool)

(assert (=> b!4016350 m!4604527))

(declare-fun m!4604529 () Bool)

(assert (=> b!4016350 m!4604529))

(declare-fun m!4604531 () Bool)

(assert (=> b!4016350 m!4604531))

(declare-fun m!4604533 () Bool)

(assert (=> b!4016344 m!4604533))

(declare-fun m!4604535 () Bool)

(assert (=> b!4016337 m!4604535))

(declare-fun m!4604537 () Bool)

(assert (=> b!4016337 m!4604537))

(declare-fun m!4604539 () Bool)

(assert (=> b!4016364 m!4604539))

(declare-fun m!4604541 () Bool)

(assert (=> start!378296 m!4604541))

(declare-fun m!4604543 () Bool)

(assert (=> b!4016359 m!4604543))

(declare-fun m!4604545 () Bool)

(assert (=> b!4016332 m!4604545))

(declare-fun m!4604547 () Bool)

(assert (=> b!4016332 m!4604547))

(declare-fun m!4604549 () Bool)

(assert (=> b!4016332 m!4604549))

(declare-fun m!4604551 () Bool)

(assert (=> b!4016332 m!4604551))

(declare-fun m!4604553 () Bool)

(assert (=> b!4016351 m!4604553))

(declare-fun m!4604555 () Bool)

(assert (=> b!4016351 m!4604555))

(declare-fun m!4604557 () Bool)

(assert (=> b!4016351 m!4604557))

(declare-fun m!4604559 () Bool)

(assert (=> b!4016351 m!4604559))

(declare-fun m!4604561 () Bool)

(assert (=> b!4016339 m!4604561))

(declare-fun m!4604563 () Bool)

(assert (=> b!4016339 m!4604563))

(declare-fun m!4604565 () Bool)

(assert (=> b!4016339 m!4604565))

(declare-fun m!4604567 () Bool)

(assert (=> b!4016339 m!4604567))

(declare-fun m!4604569 () Bool)

(assert (=> b!4016338 m!4604569))

(declare-fun m!4604571 () Bool)

(assert (=> b!4016338 m!4604571))

(declare-fun m!4604573 () Bool)

(assert (=> b!4016338 m!4604573))

(declare-fun m!4604575 () Bool)

(assert (=> b!4016331 m!4604575))

(declare-fun m!4604577 () Bool)

(assert (=> b!4016331 m!4604577))

(declare-fun m!4604579 () Bool)

(assert (=> b!4016355 m!4604579))

(declare-fun m!4604581 () Bool)

(assert (=> b!4016355 m!4604581))

(declare-fun m!4604583 () Bool)

(assert (=> b!4016362 m!4604583))

(declare-fun m!4604585 () Bool)

(assert (=> b!4016362 m!4604585))

(declare-fun m!4604587 () Bool)

(assert (=> b!4016340 m!4604587))

(declare-fun m!4604589 () Bool)

(assert (=> b!4016340 m!4604589))

(declare-fun m!4604591 () Bool)

(assert (=> b!4016340 m!4604591))

(declare-fun m!4604593 () Bool)

(assert (=> b!4016340 m!4604593))

(assert (=> b!4016340 m!4604591))

(declare-fun m!4604595 () Bool)

(assert (=> b!4016340 m!4604595))

(declare-fun m!4604597 () Bool)

(assert (=> b!4016340 m!4604597))

(declare-fun m!4604599 () Bool)

(assert (=> b!4016340 m!4604599))

(declare-fun m!4604601 () Bool)

(assert (=> b!4016340 m!4604601))

(declare-fun m!4604603 () Bool)

(assert (=> b!4016340 m!4604603))

(declare-fun m!4604605 () Bool)

(assert (=> b!4016340 m!4604605))

(declare-fun m!4604607 () Bool)

(assert (=> b!4016340 m!4604607))

(declare-fun m!4604609 () Bool)

(assert (=> b!4016340 m!4604609))

(declare-fun m!4604611 () Bool)

(assert (=> b!4016340 m!4604611))

(declare-fun m!4604613 () Bool)

(assert (=> b!4016340 m!4604613))

(declare-fun m!4604615 () Bool)

(assert (=> b!4016340 m!4604615))

(assert (=> b!4016340 m!4604605))

(assert (=> b!4016340 m!4604589))

(declare-fun m!4604617 () Bool)

(assert (=> b!4016340 m!4604617))

(declare-fun m!4604619 () Bool)

(assert (=> b!4016340 m!4604619))

(declare-fun m!4604621 () Bool)

(assert (=> b!4016340 m!4604621))

(declare-fun m!4604623 () Bool)

(assert (=> b!4016356 m!4604623))

(declare-fun m!4604625 () Bool)

(assert (=> b!4016356 m!4604625))

(declare-fun m!4604627 () Bool)

(assert (=> b!4016356 m!4604627))

(declare-fun m!4604629 () Bool)

(assert (=> b!4016356 m!4604629))

(declare-fun m!4604631 () Bool)

(assert (=> b!4016336 m!4604631))

(declare-fun m!4604633 () Bool)

(assert (=> b!4016336 m!4604633))

(declare-fun m!4604635 () Bool)

(assert (=> b!4016336 m!4604635))

(declare-fun m!4604637 () Bool)

(assert (=> b!4016345 m!4604637))

(declare-fun m!4604639 () Bool)

(assert (=> b!4016345 m!4604639))

(declare-fun m!4604641 () Bool)

(assert (=> b!4016346 m!4604641))

(declare-fun m!4604643 () Bool)

(assert (=> b!4016346 m!4604643))

(check-sat (not b_next!112415) (not b!4016344) (not b!4016341) (not b!4016337) (not b!4016327) (not b!4016350) (not b!4016349) (not b!4016336) (not b!4016330) (not b!4016359) (not b!4016356) (not b!4016326) (not b!4016348) (not b!4016354) (not b!4016332) b_and!308571 (not b_next!112411) (not b!4016351) b_and!308573 tp_is_empty!20465 (not b!4016345) (not b!4016355) (not b!4016352) (not b!4016343) (not b!4016364) (not b_next!112409) (not b!4016334) (not b!4016339) b_and!308569 (not b!4016338) (not b!4016340) (not b!4016335) (not b!4016331) (not b!4016333) (not b!4016353) (not b!4016347) (not b!4016358) (not start!378296) (not b!4016328) (not b!4016346) (not b!4016362) b_and!308567 (not b_next!112413) (not b!4016360))
(check-sat (not b_next!112415) b_and!308573 (not b_next!112409) b_and!308569 b_and!308571 (not b_next!112411) b_and!308567 (not b_next!112413))
(get-model)

(declare-fun d!1189474 () Bool)

(assert (=> d!1189474 (= (_2!24193 (v!39627 lt!1423731)) lt!1423718)))

(declare-fun lt!1423783 () Unit!62030)

(declare-fun choose!24290 (List!43099 List!43099 List!43099 List!43099 List!43099) Unit!62030)

(assert (=> d!1189474 (= lt!1423783 (choose!24290 lt!1423698 (_2!24193 (v!39627 lt!1423731)) lt!1423698 lt!1423718 lt!1423729))))

(assert (=> d!1189474 (isPrefix!3929 lt!1423698 lt!1423729)))

(assert (=> d!1189474 (= (lemmaSamePrefixThenSameSuffix!2100 lt!1423698 (_2!24193 (v!39627 lt!1423731)) lt!1423698 lt!1423718 lt!1423729) lt!1423783)))

(declare-fun bs!589662 () Bool)

(assert (= bs!589662 d!1189474))

(declare-fun m!4604783 () Bool)

(assert (=> bs!589662 m!4604783))

(assert (=> bs!589662 m!4604539))

(assert (=> b!4016348 d!1189474))

(declare-fun b!4016463 () Bool)

(declare-fun e!2491072 () Bool)

(declare-fun tail!6257 (List!43099) List!43099)

(assert (=> b!4016463 (= e!2491072 (isPrefix!3929 (tail!6257 lt!1423698) (tail!6257 lt!1423692)))))

(declare-fun b!4016461 () Bool)

(declare-fun e!2491071 () Bool)

(assert (=> b!4016461 (= e!2491071 e!2491072)))

(declare-fun res!1633446 () Bool)

(assert (=> b!4016461 (=> (not res!1633446) (not e!2491072))))

(assert (=> b!4016461 (= res!1633446 (not ((_ is Nil!42975) lt!1423692)))))

(declare-fun b!4016462 () Bool)

(declare-fun res!1633449 () Bool)

(assert (=> b!4016462 (=> (not res!1633449) (not e!2491072))))

(declare-fun head!8525 (List!43099) C!23680)

(assert (=> b!4016462 (= res!1633449 (= (head!8525 lt!1423698) (head!8525 lt!1423692)))))

(declare-fun b!4016464 () Bool)

(declare-fun e!2491073 () Bool)

(assert (=> b!4016464 (= e!2491073 (>= (size!32134 lt!1423692) (size!32134 lt!1423698)))))

(declare-fun d!1189476 () Bool)

(assert (=> d!1189476 e!2491073))

(declare-fun res!1633448 () Bool)

(assert (=> d!1189476 (=> res!1633448 e!2491073)))

(declare-fun lt!1423786 () Bool)

(assert (=> d!1189476 (= res!1633448 (not lt!1423786))))

(assert (=> d!1189476 (= lt!1423786 e!2491071)))

(declare-fun res!1633447 () Bool)

(assert (=> d!1189476 (=> res!1633447 e!2491071)))

(assert (=> d!1189476 (= res!1633447 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189476 (= (isPrefix!3929 lt!1423698 lt!1423692) lt!1423786)))

(assert (= (and d!1189476 (not res!1633447)) b!4016461))

(assert (= (and b!4016461 res!1633446) b!4016462))

(assert (= (and b!4016462 res!1633449) b!4016463))

(assert (= (and d!1189476 (not res!1633448)) b!4016464))

(declare-fun m!4604785 () Bool)

(assert (=> b!4016463 m!4604785))

(declare-fun m!4604787 () Bool)

(assert (=> b!4016463 m!4604787))

(assert (=> b!4016463 m!4604785))

(assert (=> b!4016463 m!4604787))

(declare-fun m!4604789 () Bool)

(assert (=> b!4016463 m!4604789))

(declare-fun m!4604791 () Bool)

(assert (=> b!4016462 m!4604791))

(declare-fun m!4604793 () Bool)

(assert (=> b!4016462 m!4604793))

(declare-fun m!4604795 () Bool)

(assert (=> b!4016464 m!4604795))

(assert (=> b!4016464 m!4604601))

(assert (=> b!4016348 d!1189476))

(declare-fun d!1189478 () Bool)

(assert (=> d!1189478 (isPrefix!3929 lt!1423698 (++!11244 lt!1423698 lt!1423718))))

(declare-fun lt!1423789 () Unit!62030)

(declare-fun choose!24291 (List!43099 List!43099) Unit!62030)

(assert (=> d!1189478 (= lt!1423789 (choose!24291 lt!1423698 lt!1423718))))

(assert (=> d!1189478 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423698 lt!1423718) lt!1423789)))

(declare-fun bs!589663 () Bool)

(assert (= bs!589663 d!1189478))

(assert (=> bs!589663 m!4604575))

(assert (=> bs!589663 m!4604575))

(declare-fun m!4604797 () Bool)

(assert (=> bs!589663 m!4604797))

(declare-fun m!4604799 () Bool)

(assert (=> bs!589663 m!4604799))

(assert (=> b!4016348 d!1189478))

(declare-fun d!1189480 () Bool)

(declare-fun res!1633468 () Bool)

(declare-fun e!2491084 () Bool)

(assert (=> d!1189480 (=> (not res!1633468) (not e!2491084))))

(declare-fun isEmpty!25673 (List!43099) Bool)

(assert (=> d!1189480 (= res!1633468 (not (isEmpty!25673 (originalCharacters!7442 token!484))))))

(assert (=> d!1189480 (= (inv!57405 token!484) e!2491084)))

(declare-fun b!4016487 () Bool)

(declare-fun res!1633469 () Bool)

(assert (=> b!4016487 (=> (not res!1633469) (not e!2491084))))

(declare-fun dynLambda!18235 (Int TokenValue!7072) BalanceConc!25700)

(assert (=> b!4016487 (= res!1633469 (= (originalCharacters!7442 token!484) (list!15976 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (value!215631 token!484)))))))

(declare-fun b!4016488 () Bool)

(assert (=> b!4016488 (= e!2491084 (= (size!32133 token!484) (size!32134 (originalCharacters!7442 token!484))))))

(assert (= (and d!1189480 res!1633468) b!4016487))

(assert (= (and b!4016487 res!1633469) b!4016488))

(declare-fun b_lambda!117225 () Bool)

(assert (=> (not b_lambda!117225) (not b!4016487)))

(declare-fun t!333391 () Bool)

(declare-fun tb!241541 () Bool)

(assert (=> (and b!4016342 (= (toChars!9209 (transformation!6842 (rule!9892 token!484))) (toChars!9209 (transformation!6842 (rule!9892 token!484)))) t!333391) tb!241541))

(declare-fun b!4016493 () Bool)

(declare-fun e!2491087 () Bool)

(declare-fun tp!1221189 () Bool)

(declare-fun inv!57409 (Conc!13053) Bool)

(assert (=> b!4016493 (= e!2491087 (and (inv!57409 (c!694294 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (value!215631 token!484)))) tp!1221189))))

(declare-fun result!292740 () Bool)

(declare-fun inv!57410 (BalanceConc!25700) Bool)

(assert (=> tb!241541 (= result!292740 (and (inv!57410 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (value!215631 token!484))) e!2491087))))

(assert (= tb!241541 b!4016493))

(declare-fun m!4604801 () Bool)

(assert (=> b!4016493 m!4604801))

(declare-fun m!4604803 () Bool)

(assert (=> tb!241541 m!4604803))

(assert (=> b!4016487 t!333391))

(declare-fun b_and!308579 () Bool)

(assert (= b_and!308569 (and (=> t!333391 result!292740) b_and!308579)))

(declare-fun tb!241543 () Bool)

(declare-fun t!333393 () Bool)

(assert (=> (and b!4016361 (= (toChars!9209 (transformation!6842 (h!48396 rules!2999))) (toChars!9209 (transformation!6842 (rule!9892 token!484)))) t!333393) tb!241543))

(declare-fun result!292744 () Bool)

(assert (= result!292744 result!292740))

(assert (=> b!4016487 t!333393))

(declare-fun b_and!308581 () Bool)

(assert (= b_and!308573 (and (=> t!333393 result!292744) b_and!308581)))

(declare-fun m!4604805 () Bool)

(assert (=> d!1189480 m!4604805))

(declare-fun m!4604807 () Bool)

(assert (=> b!4016487 m!4604807))

(assert (=> b!4016487 m!4604807))

(declare-fun m!4604809 () Bool)

(assert (=> b!4016487 m!4604809))

(assert (=> b!4016488 m!4604513))

(assert (=> start!378296 d!1189480))

(declare-fun d!1189482 () Bool)

(assert (=> d!1189482 (= lt!1423693 suffixResult!105)))

(declare-fun lt!1423805 () Unit!62030)

(assert (=> d!1189482 (= lt!1423805 (choose!24290 lt!1423707 lt!1423693 lt!1423707 suffixResult!105 lt!1423734))))

(assert (=> d!1189482 (isPrefix!3929 lt!1423707 lt!1423734)))

(assert (=> d!1189482 (= (lemmaSamePrefixThenSameSuffix!2100 lt!1423707 lt!1423693 lt!1423707 suffixResult!105 lt!1423734) lt!1423805)))

(declare-fun bs!589664 () Bool)

(assert (= bs!589664 d!1189482))

(declare-fun m!4604811 () Bool)

(assert (=> bs!589664 m!4604811))

(assert (=> bs!589664 m!4604523))

(assert (=> b!4016327 d!1189482))

(declare-fun d!1189484 () Bool)

(assert (=> d!1189484 (= (maxPrefixOneRule!2749 thiss!21717 (rule!9892 token!484) lt!1423734) (Some!9255 (tuple2!42119 (Token!12823 (apply!10039 (transformation!6842 (rule!9892 token!484)) (seqFromList!5067 lt!1423707)) (rule!9892 token!484) (size!32134 lt!1423707) lt!1423707) suffixResult!105)))))

(declare-fun lt!1423836 () Unit!62030)

(declare-fun choose!24292 (LexerInterface!6431 List!43100 List!43099 List!43099 List!43099 Rule!13484) Unit!62030)

(assert (=> d!1189484 (= lt!1423836 (choose!24292 thiss!21717 rules!2999 lt!1423707 lt!1423734 suffixResult!105 (rule!9892 token!484)))))

(assert (=> d!1189484 (not (isEmpty!25670 rules!2999))))

(assert (=> d!1189484 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1567 thiss!21717 rules!2999 lt!1423707 lt!1423734 suffixResult!105 (rule!9892 token!484)) lt!1423836)))

(declare-fun bs!589675 () Bool)

(assert (= bs!589675 d!1189484))

(assert (=> bs!589675 m!4604509))

(assert (=> bs!589675 m!4604485))

(declare-fun m!4605025 () Bool)

(assert (=> bs!589675 m!4605025))

(assert (=> bs!589675 m!4604501))

(assert (=> bs!589675 m!4604473))

(assert (=> bs!589675 m!4604501))

(assert (=> bs!589675 m!4604503))

(assert (=> b!4016327 d!1189484))

(declare-fun d!1189544 () Bool)

(declare-fun dynLambda!18236 (Int BalanceConc!25700) TokenValue!7072)

(assert (=> d!1189544 (= (apply!10039 (transformation!6842 (rule!9892 token!484)) (seqFromList!5067 lt!1423707)) (dynLambda!18236 (toValue!9350 (transformation!6842 (rule!9892 token!484))) (seqFromList!5067 lt!1423707)))))

(declare-fun b_lambda!117233 () Bool)

(assert (=> (not b_lambda!117233) (not d!1189544)))

(declare-fun t!333407 () Bool)

(declare-fun tb!241557 () Bool)

(assert (=> (and b!4016342 (= (toValue!9350 (transformation!6842 (rule!9892 token!484))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))) t!333407) tb!241557))

(declare-fun result!292760 () Bool)

(assert (=> tb!241557 (= result!292760 (inv!21 (dynLambda!18236 (toValue!9350 (transformation!6842 (rule!9892 token!484))) (seqFromList!5067 lt!1423707))))))

(declare-fun m!4605027 () Bool)

(assert (=> tb!241557 m!4605027))

(assert (=> d!1189544 t!333407))

(declare-fun b_and!308595 () Bool)

(assert (= b_and!308567 (and (=> t!333407 result!292760) b_and!308595)))

(declare-fun t!333409 () Bool)

(declare-fun tb!241559 () Bool)

(assert (=> (and b!4016361 (= (toValue!9350 (transformation!6842 (h!48396 rules!2999))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))) t!333409) tb!241559))

(declare-fun result!292764 () Bool)

(assert (= result!292764 result!292760))

(assert (=> d!1189544 t!333409))

(declare-fun b_and!308597 () Bool)

(assert (= b_and!308571 (and (=> t!333409 result!292764) b_and!308597)))

(assert (=> d!1189544 m!4604501))

(declare-fun m!4605029 () Bool)

(assert (=> d!1189544 m!4605029))

(assert (=> b!4016327 d!1189544))

(declare-fun b!4016781 () Bool)

(declare-fun res!1633648 () Bool)

(declare-fun e!2491252 () Bool)

(assert (=> b!4016781 (=> (not res!1633648) (not e!2491252))))

(declare-fun lt!1423905 () Option!9256)

(declare-fun get!14121 (Option!9256) tuple2!42118)

(assert (=> b!4016781 (= res!1633648 (= (rule!9892 (_1!24193 (get!14121 lt!1423905))) (rule!9892 token!484)))))

(declare-fun b!4016782 () Bool)

(assert (=> b!4016782 (= e!2491252 (= (size!32133 (_1!24193 (get!14121 lt!1423905))) (size!32134 (originalCharacters!7442 (_1!24193 (get!14121 lt!1423905))))))))

(declare-fun b!4016783 () Bool)

(declare-fun res!1633646 () Bool)

(assert (=> b!4016783 (=> (not res!1633646) (not e!2491252))))

(assert (=> b!4016783 (= res!1633646 (< (size!32134 (_2!24193 (get!14121 lt!1423905))) (size!32134 lt!1423734)))))

(declare-fun b!4016784 () Bool)

(declare-fun res!1633647 () Bool)

(assert (=> b!4016784 (=> (not res!1633647) (not e!2491252))))

(assert (=> b!4016784 (= res!1633647 (= (value!215631 (_1!24193 (get!14121 lt!1423905))) (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (get!14121 lt!1423905)))) (seqFromList!5067 (originalCharacters!7442 (_1!24193 (get!14121 lt!1423905)))))))))

(declare-fun b!4016785 () Bool)

(declare-fun res!1633645 () Bool)

(assert (=> b!4016785 (=> (not res!1633645) (not e!2491252))))

(assert (=> b!4016785 (= res!1633645 (= (++!11244 (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423905)))) (_2!24193 (get!14121 lt!1423905))) lt!1423734))))

(declare-fun b!4016786 () Bool)

(declare-fun e!2491253 () Bool)

(declare-datatypes ((tuple2!42122 0))(
  ( (tuple2!42123 (_1!24195 List!43099) (_2!24195 List!43099)) )
))
(declare-fun findLongestMatchInner!1365 (Regex!11747 List!43099 Int List!43099 List!43099 Int) tuple2!42122)

(assert (=> b!4016786 (= e!2491253 (matchR!5708 (regex!6842 (rule!9892 token!484)) (_1!24195 (findLongestMatchInner!1365 (regex!6842 (rule!9892 token!484)) Nil!42975 (size!32134 Nil!42975) lt!1423734 lt!1423734 (size!32134 lt!1423734)))))))

(declare-fun b!4016787 () Bool)

(declare-fun e!2491251 () Option!9256)

(declare-fun lt!1423906 () tuple2!42122)

(declare-fun size!32136 (BalanceConc!25700) Int)

(assert (=> b!4016787 (= e!2491251 (Some!9255 (tuple2!42119 (Token!12823 (apply!10039 (transformation!6842 (rule!9892 token!484)) (seqFromList!5067 (_1!24195 lt!1423906))) (rule!9892 token!484) (size!32136 (seqFromList!5067 (_1!24195 lt!1423906))) (_1!24195 lt!1423906)) (_2!24195 lt!1423906))))))

(declare-fun lt!1423908 () Unit!62030)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1338 (Regex!11747 List!43099) Unit!62030)

(assert (=> b!4016787 (= lt!1423908 (longestMatchIsAcceptedByMatchOrIsEmpty!1338 (regex!6842 (rule!9892 token!484)) lt!1423734))))

(declare-fun res!1633642 () Bool)

(assert (=> b!4016787 (= res!1633642 (isEmpty!25673 (_1!24195 (findLongestMatchInner!1365 (regex!6842 (rule!9892 token!484)) Nil!42975 (size!32134 Nil!42975) lt!1423734 lt!1423734 (size!32134 lt!1423734)))))))

(assert (=> b!4016787 (=> res!1633642 e!2491253)))

(assert (=> b!4016787 e!2491253))

(declare-fun lt!1423909 () Unit!62030)

(assert (=> b!4016787 (= lt!1423909 lt!1423908)))

(declare-fun lt!1423907 () Unit!62030)

(declare-fun lemmaSemiInverse!1885 (TokenValueInjection!13572 BalanceConc!25700) Unit!62030)

(assert (=> b!4016787 (= lt!1423907 (lemmaSemiInverse!1885 (transformation!6842 (rule!9892 token!484)) (seqFromList!5067 (_1!24195 lt!1423906))))))

(declare-fun b!4016788 () Bool)

(declare-fun e!2491250 () Bool)

(assert (=> b!4016788 (= e!2491250 e!2491252)))

(declare-fun res!1633644 () Bool)

(assert (=> b!4016788 (=> (not res!1633644) (not e!2491252))))

(assert (=> b!4016788 (= res!1633644 (matchR!5708 (regex!6842 (rule!9892 token!484)) (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423905))))))))

(declare-fun b!4016789 () Bool)

(assert (=> b!4016789 (= e!2491251 None!9255)))

(declare-fun d!1189546 () Bool)

(assert (=> d!1189546 e!2491250))

(declare-fun res!1633643 () Bool)

(assert (=> d!1189546 (=> res!1633643 e!2491250)))

(declare-fun isEmpty!25674 (Option!9256) Bool)

(assert (=> d!1189546 (= res!1633643 (isEmpty!25674 lt!1423905))))

(assert (=> d!1189546 (= lt!1423905 e!2491251)))

(declare-fun c!694352 () Bool)

(assert (=> d!1189546 (= c!694352 (isEmpty!25673 (_1!24195 lt!1423906)))))

(declare-fun findLongestMatch!1278 (Regex!11747 List!43099) tuple2!42122)

(assert (=> d!1189546 (= lt!1423906 (findLongestMatch!1278 (regex!6842 (rule!9892 token!484)) lt!1423734))))

(assert (=> d!1189546 (ruleValid!2774 thiss!21717 (rule!9892 token!484))))

(assert (=> d!1189546 (= (maxPrefixOneRule!2749 thiss!21717 (rule!9892 token!484) lt!1423734) lt!1423905)))

(assert (= (and d!1189546 c!694352) b!4016789))

(assert (= (and d!1189546 (not c!694352)) b!4016787))

(assert (= (and b!4016787 (not res!1633642)) b!4016786))

(assert (= (and d!1189546 (not res!1633643)) b!4016788))

(assert (= (and b!4016788 res!1633644) b!4016785))

(assert (= (and b!4016785 res!1633645) b!4016783))

(assert (= (and b!4016783 res!1633646) b!4016781))

(assert (= (and b!4016781 res!1633648) b!4016784))

(assert (= (and b!4016784 res!1633647) b!4016782))

(declare-fun m!4605253 () Bool)

(assert (=> b!4016783 m!4605253))

(declare-fun m!4605255 () Bool)

(assert (=> b!4016783 m!4605255))

(declare-fun m!4605257 () Bool)

(assert (=> b!4016783 m!4605257))

(assert (=> b!4016788 m!4605253))

(declare-fun m!4605259 () Bool)

(assert (=> b!4016788 m!4605259))

(assert (=> b!4016788 m!4605259))

(declare-fun m!4605261 () Bool)

(assert (=> b!4016788 m!4605261))

(assert (=> b!4016788 m!4605261))

(declare-fun m!4605263 () Bool)

(assert (=> b!4016788 m!4605263))

(declare-fun m!4605265 () Bool)

(assert (=> b!4016787 m!4605265))

(declare-fun m!4605267 () Bool)

(assert (=> b!4016787 m!4605267))

(declare-fun m!4605269 () Bool)

(assert (=> b!4016787 m!4605269))

(assert (=> b!4016787 m!4605265))

(assert (=> b!4016787 m!4605265))

(declare-fun m!4605271 () Bool)

(assert (=> b!4016787 m!4605271))

(declare-fun m!4605273 () Bool)

(assert (=> b!4016787 m!4605273))

(assert (=> b!4016787 m!4605257))

(declare-fun m!4605275 () Bool)

(assert (=> b!4016787 m!4605275))

(assert (=> b!4016787 m!4605257))

(declare-fun m!4605277 () Bool)

(assert (=> b!4016787 m!4605277))

(assert (=> b!4016787 m!4605265))

(declare-fun m!4605279 () Bool)

(assert (=> b!4016787 m!4605279))

(assert (=> b!4016787 m!4605273))

(assert (=> b!4016786 m!4605273))

(assert (=> b!4016786 m!4605257))

(assert (=> b!4016786 m!4605273))

(assert (=> b!4016786 m!4605257))

(assert (=> b!4016786 m!4605275))

(declare-fun m!4605281 () Bool)

(assert (=> b!4016786 m!4605281))

(assert (=> b!4016782 m!4605253))

(declare-fun m!4605283 () Bool)

(assert (=> b!4016782 m!4605283))

(declare-fun m!4605285 () Bool)

(assert (=> d!1189546 m!4605285))

(declare-fun m!4605287 () Bool)

(assert (=> d!1189546 m!4605287))

(declare-fun m!4605289 () Bool)

(assert (=> d!1189546 m!4605289))

(assert (=> d!1189546 m!4604549))

(assert (=> b!4016784 m!4605253))

(declare-fun m!4605291 () Bool)

(assert (=> b!4016784 m!4605291))

(assert (=> b!4016784 m!4605291))

(declare-fun m!4605293 () Bool)

(assert (=> b!4016784 m!4605293))

(assert (=> b!4016781 m!4605253))

(assert (=> b!4016785 m!4605253))

(assert (=> b!4016785 m!4605259))

(assert (=> b!4016785 m!4605259))

(assert (=> b!4016785 m!4605261))

(assert (=> b!4016785 m!4605261))

(declare-fun m!4605295 () Bool)

(assert (=> b!4016785 m!4605295))

(assert (=> b!4016327 d!1189546))

(declare-fun d!1189620 () Bool)

(assert (=> d!1189620 (isPrefix!3929 lt!1423707 (++!11244 lt!1423707 lt!1423693))))

(declare-fun lt!1423910 () Unit!62030)

(assert (=> d!1189620 (= lt!1423910 (choose!24291 lt!1423707 lt!1423693))))

(assert (=> d!1189620 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423707 lt!1423693) lt!1423910)))

(declare-fun bs!589686 () Bool)

(assert (= bs!589686 d!1189620))

(assert (=> bs!589686 m!4604623))

(assert (=> bs!589686 m!4604623))

(declare-fun m!4605297 () Bool)

(assert (=> bs!589686 m!4605297))

(declare-fun m!4605299 () Bool)

(assert (=> bs!589686 m!4605299))

(assert (=> b!4016327 d!1189620))

(declare-fun d!1189622 () Bool)

(declare-fun fromListB!2322 (List!43099) BalanceConc!25700)

(assert (=> d!1189622 (= (seqFromList!5067 lt!1423707) (fromListB!2322 lt!1423707))))

(declare-fun bs!589687 () Bool)

(assert (= bs!589687 d!1189622))

(declare-fun m!4605301 () Bool)

(assert (=> bs!589687 m!4605301))

(assert (=> b!4016327 d!1189622))

(declare-fun b!4016792 () Bool)

(declare-fun e!2491255 () Bool)

(assert (=> b!4016792 (= e!2491255 (isPrefix!3929 (tail!6257 lt!1423707) (tail!6257 lt!1423730)))))

(declare-fun b!4016790 () Bool)

(declare-fun e!2491254 () Bool)

(assert (=> b!4016790 (= e!2491254 e!2491255)))

(declare-fun res!1633649 () Bool)

(assert (=> b!4016790 (=> (not res!1633649) (not e!2491255))))

(assert (=> b!4016790 (= res!1633649 (not ((_ is Nil!42975) lt!1423730)))))

(declare-fun b!4016791 () Bool)

(declare-fun res!1633652 () Bool)

(assert (=> b!4016791 (=> (not res!1633652) (not e!2491255))))

(assert (=> b!4016791 (= res!1633652 (= (head!8525 lt!1423707) (head!8525 lt!1423730)))))

(declare-fun b!4016793 () Bool)

(declare-fun e!2491256 () Bool)

(assert (=> b!4016793 (= e!2491256 (>= (size!32134 lt!1423730) (size!32134 lt!1423707)))))

(declare-fun d!1189624 () Bool)

(assert (=> d!1189624 e!2491256))

(declare-fun res!1633651 () Bool)

(assert (=> d!1189624 (=> res!1633651 e!2491256)))

(declare-fun lt!1423911 () Bool)

(assert (=> d!1189624 (= res!1633651 (not lt!1423911))))

(assert (=> d!1189624 (= lt!1423911 e!2491254)))

(declare-fun res!1633650 () Bool)

(assert (=> d!1189624 (=> res!1633650 e!2491254)))

(assert (=> d!1189624 (= res!1633650 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189624 (= (isPrefix!3929 lt!1423707 lt!1423730) lt!1423911)))

(assert (= (and d!1189624 (not res!1633650)) b!4016790))

(assert (= (and b!4016790 res!1633649) b!4016791))

(assert (= (and b!4016791 res!1633652) b!4016792))

(assert (= (and d!1189624 (not res!1633651)) b!4016793))

(declare-fun m!4605303 () Bool)

(assert (=> b!4016792 m!4605303))

(declare-fun m!4605305 () Bool)

(assert (=> b!4016792 m!4605305))

(assert (=> b!4016792 m!4605303))

(assert (=> b!4016792 m!4605305))

(declare-fun m!4605307 () Bool)

(assert (=> b!4016792 m!4605307))

(declare-fun m!4605309 () Bool)

(assert (=> b!4016791 m!4605309))

(declare-fun m!4605311 () Bool)

(assert (=> b!4016791 m!4605311))

(declare-fun m!4605313 () Bool)

(assert (=> b!4016793 m!4605313))

(assert (=> b!4016793 m!4604485))

(assert (=> b!4016327 d!1189624))

(declare-fun d!1189626 () Bool)

(declare-fun lt!1423914 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6522 (List!43100) (InoxSet Rule!13484))

(assert (=> d!1189626 (= lt!1423914 (select (content!6522 rules!2999) (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun e!2491262 () Bool)

(assert (=> d!1189626 (= lt!1423914 e!2491262)))

(declare-fun res!1633657 () Bool)

(assert (=> d!1189626 (=> (not res!1633657) (not e!2491262))))

(assert (=> d!1189626 (= res!1633657 ((_ is Cons!42976) rules!2999))))

(assert (=> d!1189626 (= (contains!8544 rules!2999 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) lt!1423914)))

(declare-fun b!4016798 () Bool)

(declare-fun e!2491261 () Bool)

(assert (=> b!4016798 (= e!2491262 e!2491261)))

(declare-fun res!1633658 () Bool)

(assert (=> b!4016798 (=> res!1633658 e!2491261)))

(assert (=> b!4016798 (= res!1633658 (= (h!48396 rules!2999) (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun b!4016799 () Bool)

(assert (=> b!4016799 (= e!2491261 (contains!8544 (t!333385 rules!2999) (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(assert (= (and d!1189626 res!1633657) b!4016798))

(assert (= (and b!4016798 (not res!1633658)) b!4016799))

(declare-fun m!4605315 () Bool)

(assert (=> d!1189626 m!4605315))

(declare-fun m!4605317 () Bool)

(assert (=> d!1189626 m!4605317))

(declare-fun m!4605319 () Bool)

(assert (=> b!4016799 m!4605319))

(assert (=> b!4016328 d!1189626))

(declare-fun d!1189628 () Bool)

(declare-fun c!694358 () Bool)

(assert (=> d!1189628 (= c!694358 ((_ is IntegerValue!21216) (value!215631 token!484)))))

(declare-fun e!2491270 () Bool)

(assert (=> d!1189628 (= (inv!21 (value!215631 token!484)) e!2491270)))

(declare-fun b!4016810 () Bool)

(declare-fun e!2491271 () Bool)

(declare-fun inv!15 (TokenValue!7072) Bool)

(assert (=> b!4016810 (= e!2491271 (inv!15 (value!215631 token!484)))))

(declare-fun b!4016811 () Bool)

(declare-fun inv!16 (TokenValue!7072) Bool)

(assert (=> b!4016811 (= e!2491270 (inv!16 (value!215631 token!484)))))

(declare-fun b!4016812 () Bool)

(declare-fun e!2491269 () Bool)

(declare-fun inv!17 (TokenValue!7072) Bool)

(assert (=> b!4016812 (= e!2491269 (inv!17 (value!215631 token!484)))))

(declare-fun b!4016813 () Bool)

(declare-fun res!1633661 () Bool)

(assert (=> b!4016813 (=> res!1633661 e!2491271)))

(assert (=> b!4016813 (= res!1633661 (not ((_ is IntegerValue!21218) (value!215631 token!484))))))

(assert (=> b!4016813 (= e!2491269 e!2491271)))

(declare-fun b!4016814 () Bool)

(assert (=> b!4016814 (= e!2491270 e!2491269)))

(declare-fun c!694357 () Bool)

(assert (=> b!4016814 (= c!694357 ((_ is IntegerValue!21217) (value!215631 token!484)))))

(assert (= (and d!1189628 c!694358) b!4016811))

(assert (= (and d!1189628 (not c!694358)) b!4016814))

(assert (= (and b!4016814 c!694357) b!4016812))

(assert (= (and b!4016814 (not c!694357)) b!4016813))

(assert (= (and b!4016813 (not res!1633661)) b!4016810))

(declare-fun m!4605321 () Bool)

(assert (=> b!4016810 m!4605321))

(declare-fun m!4605323 () Bool)

(assert (=> b!4016811 m!4605323))

(declare-fun m!4605325 () Bool)

(assert (=> b!4016812 m!4605325))

(assert (=> b!4016349 d!1189628))

(declare-fun b!4016817 () Bool)

(declare-fun e!2491273 () Bool)

(assert (=> b!4016817 (= e!2491273 (isPrefix!3929 (tail!6257 lt!1423707) (tail!6257 lt!1423734)))))

(declare-fun b!4016815 () Bool)

(declare-fun e!2491272 () Bool)

(assert (=> b!4016815 (= e!2491272 e!2491273)))

(declare-fun res!1633662 () Bool)

(assert (=> b!4016815 (=> (not res!1633662) (not e!2491273))))

(assert (=> b!4016815 (= res!1633662 (not ((_ is Nil!42975) lt!1423734)))))

(declare-fun b!4016816 () Bool)

(declare-fun res!1633665 () Bool)

(assert (=> b!4016816 (=> (not res!1633665) (not e!2491273))))

(assert (=> b!4016816 (= res!1633665 (= (head!8525 lt!1423707) (head!8525 lt!1423734)))))

(declare-fun b!4016818 () Bool)

(declare-fun e!2491274 () Bool)

(assert (=> b!4016818 (= e!2491274 (>= (size!32134 lt!1423734) (size!32134 lt!1423707)))))

(declare-fun d!1189630 () Bool)

(assert (=> d!1189630 e!2491274))

(declare-fun res!1633664 () Bool)

(assert (=> d!1189630 (=> res!1633664 e!2491274)))

(declare-fun lt!1423915 () Bool)

(assert (=> d!1189630 (= res!1633664 (not lt!1423915))))

(assert (=> d!1189630 (= lt!1423915 e!2491272)))

(declare-fun res!1633663 () Bool)

(assert (=> d!1189630 (=> res!1633663 e!2491272)))

(assert (=> d!1189630 (= res!1633663 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189630 (= (isPrefix!3929 lt!1423707 lt!1423734) lt!1423915)))

(assert (= (and d!1189630 (not res!1633663)) b!4016815))

(assert (= (and b!4016815 res!1633662) b!4016816))

(assert (= (and b!4016816 res!1633665) b!4016817))

(assert (= (and d!1189630 (not res!1633664)) b!4016818))

(assert (=> b!4016817 m!4605303))

(declare-fun m!4605327 () Bool)

(assert (=> b!4016817 m!4605327))

(assert (=> b!4016817 m!4605303))

(assert (=> b!4016817 m!4605327))

(declare-fun m!4605329 () Bool)

(assert (=> b!4016817 m!4605329))

(assert (=> b!4016816 m!4605309))

(declare-fun m!4605331 () Bool)

(assert (=> b!4016816 m!4605331))

(assert (=> b!4016818 m!4605257))

(assert (=> b!4016818 m!4604485))

(assert (=> b!4016350 d!1189630))

(declare-fun b!4016821 () Bool)

(declare-fun e!2491276 () Bool)

(assert (=> b!4016821 (= e!2491276 (isPrefix!3929 (tail!6257 lt!1423707) (tail!6257 lt!1423719)))))

(declare-fun b!4016819 () Bool)

(declare-fun e!2491275 () Bool)

(assert (=> b!4016819 (= e!2491275 e!2491276)))

(declare-fun res!1633666 () Bool)

(assert (=> b!4016819 (=> (not res!1633666) (not e!2491276))))

(assert (=> b!4016819 (= res!1633666 (not ((_ is Nil!42975) lt!1423719)))))

(declare-fun b!4016820 () Bool)

(declare-fun res!1633669 () Bool)

(assert (=> b!4016820 (=> (not res!1633669) (not e!2491276))))

(assert (=> b!4016820 (= res!1633669 (= (head!8525 lt!1423707) (head!8525 lt!1423719)))))

(declare-fun b!4016822 () Bool)

(declare-fun e!2491277 () Bool)

(assert (=> b!4016822 (= e!2491277 (>= (size!32134 lt!1423719) (size!32134 lt!1423707)))))

(declare-fun d!1189632 () Bool)

(assert (=> d!1189632 e!2491277))

(declare-fun res!1633668 () Bool)

(assert (=> d!1189632 (=> res!1633668 e!2491277)))

(declare-fun lt!1423916 () Bool)

(assert (=> d!1189632 (= res!1633668 (not lt!1423916))))

(assert (=> d!1189632 (= lt!1423916 e!2491275)))

(declare-fun res!1633667 () Bool)

(assert (=> d!1189632 (=> res!1633667 e!2491275)))

(assert (=> d!1189632 (= res!1633667 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189632 (= (isPrefix!3929 lt!1423707 lt!1423719) lt!1423916)))

(assert (= (and d!1189632 (not res!1633667)) b!4016819))

(assert (= (and b!4016819 res!1633666) b!4016820))

(assert (= (and b!4016820 res!1633669) b!4016821))

(assert (= (and d!1189632 (not res!1633668)) b!4016822))

(assert (=> b!4016821 m!4605303))

(declare-fun m!4605333 () Bool)

(assert (=> b!4016821 m!4605333))

(assert (=> b!4016821 m!4605303))

(assert (=> b!4016821 m!4605333))

(declare-fun m!4605335 () Bool)

(assert (=> b!4016821 m!4605335))

(assert (=> b!4016820 m!4605309))

(declare-fun m!4605337 () Bool)

(assert (=> b!4016820 m!4605337))

(declare-fun m!4605339 () Bool)

(assert (=> b!4016822 m!4605339))

(assert (=> b!4016822 m!4604485))

(assert (=> b!4016350 d!1189632))

(declare-fun d!1189634 () Bool)

(assert (=> d!1189634 (isPrefix!3929 lt!1423707 (++!11244 lt!1423707 suffixResult!105))))

(declare-fun lt!1423917 () Unit!62030)

(assert (=> d!1189634 (= lt!1423917 (choose!24291 lt!1423707 suffixResult!105))))

(assert (=> d!1189634 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423707 suffixResult!105) lt!1423917)))

(declare-fun bs!589688 () Bool)

(assert (= bs!589688 d!1189634))

(assert (=> bs!589688 m!4604545))

(assert (=> bs!589688 m!4604545))

(declare-fun m!4605341 () Bool)

(assert (=> bs!589688 m!4605341))

(declare-fun m!4605343 () Bool)

(assert (=> bs!589688 m!4605343))

(assert (=> b!4016350 d!1189634))

(declare-fun b!4016825 () Bool)

(declare-fun e!2491279 () Bool)

(assert (=> b!4016825 (= e!2491279 (isPrefix!3929 (tail!6257 prefix!494) (tail!6257 lt!1423734)))))

(declare-fun b!4016823 () Bool)

(declare-fun e!2491278 () Bool)

(assert (=> b!4016823 (= e!2491278 e!2491279)))

(declare-fun res!1633670 () Bool)

(assert (=> b!4016823 (=> (not res!1633670) (not e!2491279))))

(assert (=> b!4016823 (= res!1633670 (not ((_ is Nil!42975) lt!1423734)))))

(declare-fun b!4016824 () Bool)

(declare-fun res!1633673 () Bool)

(assert (=> b!4016824 (=> (not res!1633673) (not e!2491279))))

(assert (=> b!4016824 (= res!1633673 (= (head!8525 prefix!494) (head!8525 lt!1423734)))))

(declare-fun b!4016826 () Bool)

(declare-fun e!2491280 () Bool)

(assert (=> b!4016826 (= e!2491280 (>= (size!32134 lt!1423734) (size!32134 prefix!494)))))

(declare-fun d!1189636 () Bool)

(assert (=> d!1189636 e!2491280))

(declare-fun res!1633672 () Bool)

(assert (=> d!1189636 (=> res!1633672 e!2491280)))

(declare-fun lt!1423918 () Bool)

(assert (=> d!1189636 (= res!1633672 (not lt!1423918))))

(assert (=> d!1189636 (= lt!1423918 e!2491278)))

(declare-fun res!1633671 () Bool)

(assert (=> d!1189636 (=> res!1633671 e!2491278)))

(assert (=> d!1189636 (= res!1633671 ((_ is Nil!42975) prefix!494))))

(assert (=> d!1189636 (= (isPrefix!3929 prefix!494 lt!1423734) lt!1423918)))

(assert (= (and d!1189636 (not res!1633671)) b!4016823))

(assert (= (and b!4016823 res!1633670) b!4016824))

(assert (= (and b!4016824 res!1633673) b!4016825))

(assert (= (and d!1189636 (not res!1633672)) b!4016826))

(declare-fun m!4605345 () Bool)

(assert (=> b!4016825 m!4605345))

(assert (=> b!4016825 m!4605327))

(assert (=> b!4016825 m!4605345))

(assert (=> b!4016825 m!4605327))

(declare-fun m!4605347 () Bool)

(assert (=> b!4016825 m!4605347))

(declare-fun m!4605349 () Bool)

(assert (=> b!4016824 m!4605349))

(assert (=> b!4016824 m!4605331))

(assert (=> b!4016826 m!4605257))

(assert (=> b!4016826 m!4604487))

(assert (=> b!4016350 d!1189636))

(declare-fun d!1189638 () Bool)

(assert (=> d!1189638 (isPrefix!3929 prefix!494 (++!11244 prefix!494 suffix!1299))))

(declare-fun lt!1423919 () Unit!62030)

(assert (=> d!1189638 (= lt!1423919 (choose!24291 prefix!494 suffix!1299))))

(assert (=> d!1189638 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 prefix!494 suffix!1299) lt!1423919)))

(declare-fun bs!589689 () Bool)

(assert (= bs!589689 d!1189638))

(assert (=> bs!589689 m!4604585))

(assert (=> bs!589689 m!4604585))

(declare-fun m!4605351 () Bool)

(assert (=> bs!589689 m!4605351))

(declare-fun m!4605353 () Bool)

(assert (=> bs!589689 m!4605353))

(assert (=> b!4016350 d!1189638))

(declare-fun d!1189640 () Bool)

(assert (=> d!1189640 (= (inv!57402 (tag!7702 (h!48396 rules!2999))) (= (mod (str.len (value!215630 (tag!7702 (h!48396 rules!2999)))) 2) 0))))

(assert (=> b!4016345 d!1189640))

(declare-fun d!1189642 () Bool)

(declare-fun res!1633676 () Bool)

(declare-fun e!2491283 () Bool)

(assert (=> d!1189642 (=> (not res!1633676) (not e!2491283))))

(declare-fun semiInverseModEq!2931 (Int Int) Bool)

(assert (=> d!1189642 (= res!1633676 (semiInverseModEq!2931 (toChars!9209 (transformation!6842 (h!48396 rules!2999))) (toValue!9350 (transformation!6842 (h!48396 rules!2999)))))))

(assert (=> d!1189642 (= (inv!57406 (transformation!6842 (h!48396 rules!2999))) e!2491283)))

(declare-fun b!4016829 () Bool)

(declare-fun equivClasses!2830 (Int Int) Bool)

(assert (=> b!4016829 (= e!2491283 (equivClasses!2830 (toChars!9209 (transformation!6842 (h!48396 rules!2999))) (toValue!9350 (transformation!6842 (h!48396 rules!2999)))))))

(assert (= (and d!1189642 res!1633676) b!4016829))

(declare-fun m!4605355 () Bool)

(assert (=> d!1189642 m!4605355))

(declare-fun m!4605357 () Bool)

(assert (=> b!4016829 m!4605357))

(assert (=> b!4016345 d!1189642))

(declare-fun b!4016839 () Bool)

(declare-fun e!2491289 () List!43099)

(assert (=> b!4016839 (= e!2491289 (Cons!42975 (h!48395 newSuffix!27) (++!11244 (t!333384 newSuffix!27) lt!1423739)))))

(declare-fun b!4016841 () Bool)

(declare-fun e!2491288 () Bool)

(declare-fun lt!1423922 () List!43099)

(assert (=> b!4016841 (= e!2491288 (or (not (= lt!1423739 Nil!42975)) (= lt!1423922 newSuffix!27)))))

(declare-fun b!4016840 () Bool)

(declare-fun res!1633682 () Bool)

(assert (=> b!4016840 (=> (not res!1633682) (not e!2491288))))

(assert (=> b!4016840 (= res!1633682 (= (size!32134 lt!1423922) (+ (size!32134 newSuffix!27) (size!32134 lt!1423739))))))

(declare-fun d!1189644 () Bool)

(assert (=> d!1189644 e!2491288))

(declare-fun res!1633681 () Bool)

(assert (=> d!1189644 (=> (not res!1633681) (not e!2491288))))

(declare-fun content!6523 (List!43099) (InoxSet C!23680))

(assert (=> d!1189644 (= res!1633681 (= (content!6523 lt!1423922) ((_ map or) (content!6523 newSuffix!27) (content!6523 lt!1423739))))))

(assert (=> d!1189644 (= lt!1423922 e!2491289)))

(declare-fun c!694361 () Bool)

(assert (=> d!1189644 (= c!694361 ((_ is Nil!42975) newSuffix!27))))

(assert (=> d!1189644 (= (++!11244 newSuffix!27 lt!1423739) lt!1423922)))

(declare-fun b!4016838 () Bool)

(assert (=> b!4016838 (= e!2491289 lt!1423739)))

(assert (= (and d!1189644 c!694361) b!4016838))

(assert (= (and d!1189644 (not c!694361)) b!4016839))

(assert (= (and d!1189644 res!1633681) b!4016840))

(assert (= (and b!4016840 res!1633682) b!4016841))

(declare-fun m!4605359 () Bool)

(assert (=> b!4016839 m!4605359))

(declare-fun m!4605361 () Bool)

(assert (=> b!4016840 m!4605361))

(assert (=> b!4016840 m!4604495))

(declare-fun m!4605363 () Bool)

(assert (=> b!4016840 m!4605363))

(declare-fun m!4605365 () Bool)

(assert (=> d!1189644 m!4605365))

(declare-fun m!4605367 () Bool)

(assert (=> d!1189644 m!4605367))

(declare-fun m!4605369 () Bool)

(assert (=> d!1189644 m!4605369))

(assert (=> b!4016346 d!1189644))

(declare-fun d!1189646 () Bool)

(declare-fun lt!1423925 () List!43099)

(assert (=> d!1189646 (= (++!11244 newSuffix!27 lt!1423925) suffix!1299)))

(declare-fun e!2491292 () List!43099)

(assert (=> d!1189646 (= lt!1423925 e!2491292)))

(declare-fun c!694364 () Bool)

(assert (=> d!1189646 (= c!694364 ((_ is Cons!42975) newSuffix!27))))

(assert (=> d!1189646 (>= (size!32134 suffix!1299) (size!32134 newSuffix!27))))

(assert (=> d!1189646 (= (getSuffix!2354 suffix!1299 newSuffix!27) lt!1423925)))

(declare-fun b!4016846 () Bool)

(assert (=> b!4016846 (= e!2491292 (getSuffix!2354 (tail!6257 suffix!1299) (t!333384 newSuffix!27)))))

(declare-fun b!4016847 () Bool)

(assert (=> b!4016847 (= e!2491292 suffix!1299)))

(assert (= (and d!1189646 c!694364) b!4016846))

(assert (= (and d!1189646 (not c!694364)) b!4016847))

(declare-fun m!4605371 () Bool)

(assert (=> d!1189646 m!4605371))

(assert (=> d!1189646 m!4604493))

(assert (=> d!1189646 m!4604495))

(declare-fun m!4605373 () Bool)

(assert (=> b!4016846 m!4605373))

(assert (=> b!4016846 m!4605373))

(declare-fun m!4605375 () Bool)

(assert (=> b!4016846 m!4605375))

(assert (=> b!4016346 d!1189646))

(declare-fun d!1189648 () Bool)

(assert (=> d!1189648 (= (isEmpty!25670 rules!2999) ((_ is Nil!42976) rules!2999))))

(assert (=> b!4016326 d!1189648))

(declare-fun b!4016849 () Bool)

(declare-fun e!2491294 () List!43099)

(assert (=> b!4016849 (= e!2491294 (Cons!42975 (h!48395 lt!1423707) (++!11244 (t!333384 lt!1423707) suffixResult!105)))))

(declare-fun e!2491293 () Bool)

(declare-fun lt!1423926 () List!43099)

(declare-fun b!4016851 () Bool)

(assert (=> b!4016851 (= e!2491293 (or (not (= suffixResult!105 Nil!42975)) (= lt!1423926 lt!1423707)))))

(declare-fun b!4016850 () Bool)

(declare-fun res!1633684 () Bool)

(assert (=> b!4016850 (=> (not res!1633684) (not e!2491293))))

(assert (=> b!4016850 (= res!1633684 (= (size!32134 lt!1423926) (+ (size!32134 lt!1423707) (size!32134 suffixResult!105))))))

(declare-fun d!1189650 () Bool)

(assert (=> d!1189650 e!2491293))

(declare-fun res!1633683 () Bool)

(assert (=> d!1189650 (=> (not res!1633683) (not e!2491293))))

(assert (=> d!1189650 (= res!1633683 (= (content!6523 lt!1423926) ((_ map or) (content!6523 lt!1423707) (content!6523 suffixResult!105))))))

(assert (=> d!1189650 (= lt!1423926 e!2491294)))

(declare-fun c!694365 () Bool)

(assert (=> d!1189650 (= c!694365 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189650 (= (++!11244 lt!1423707 suffixResult!105) lt!1423926)))

(declare-fun b!4016848 () Bool)

(assert (=> b!4016848 (= e!2491294 suffixResult!105)))

(assert (= (and d!1189650 c!694365) b!4016848))

(assert (= (and d!1189650 (not c!694365)) b!4016849))

(assert (= (and d!1189650 res!1633683) b!4016850))

(assert (= (and b!4016850 res!1633684) b!4016851))

(declare-fun m!4605377 () Bool)

(assert (=> b!4016849 m!4605377))

(declare-fun m!4605379 () Bool)

(assert (=> b!4016850 m!4605379))

(assert (=> b!4016850 m!4604485))

(declare-fun m!4605381 () Bool)

(assert (=> b!4016850 m!4605381))

(declare-fun m!4605383 () Bool)

(assert (=> d!1189650 m!4605383))

(declare-fun m!4605385 () Bool)

(assert (=> d!1189650 m!4605385))

(declare-fun m!4605387 () Bool)

(assert (=> d!1189650 m!4605387))

(assert (=> b!4016332 d!1189650))

(declare-fun d!1189652 () Bool)

(declare-fun e!2491297 () Bool)

(assert (=> d!1189652 e!2491297))

(declare-fun res!1633687 () Bool)

(assert (=> d!1189652 (=> (not res!1633687) (not e!2491297))))

(assert (=> d!1189652 (= res!1633687 (semiInverseModEq!2931 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))))))

(declare-fun Unit!62036 () Unit!62030)

(assert (=> d!1189652 (= (lemmaInv!1057 (transformation!6842 (rule!9892 token!484))) Unit!62036)))

(declare-fun b!4016854 () Bool)

(assert (=> b!4016854 (= e!2491297 (equivClasses!2830 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))))))

(assert (= (and d!1189652 res!1633687) b!4016854))

(declare-fun m!4605389 () Bool)

(assert (=> d!1189652 m!4605389))

(declare-fun m!4605391 () Bool)

(assert (=> b!4016854 m!4605391))

(assert (=> b!4016332 d!1189652))

(declare-fun d!1189654 () Bool)

(declare-fun res!1633692 () Bool)

(declare-fun e!2491300 () Bool)

(assert (=> d!1189654 (=> (not res!1633692) (not e!2491300))))

(declare-fun validRegex!5324 (Regex!11747) Bool)

(assert (=> d!1189654 (= res!1633692 (validRegex!5324 (regex!6842 (rule!9892 token!484))))))

(assert (=> d!1189654 (= (ruleValid!2774 thiss!21717 (rule!9892 token!484)) e!2491300)))

(declare-fun b!4016859 () Bool)

(declare-fun res!1633693 () Bool)

(assert (=> b!4016859 (=> (not res!1633693) (not e!2491300))))

(declare-fun nullable!4124 (Regex!11747) Bool)

(assert (=> b!4016859 (= res!1633693 (not (nullable!4124 (regex!6842 (rule!9892 token!484)))))))

(declare-fun b!4016860 () Bool)

(assert (=> b!4016860 (= e!2491300 (not (= (tag!7702 (rule!9892 token!484)) (String!49079 ""))))))

(assert (= (and d!1189654 res!1633692) b!4016859))

(assert (= (and b!4016859 res!1633693) b!4016860))

(declare-fun m!4605393 () Bool)

(assert (=> d!1189654 m!4605393))

(declare-fun m!4605395 () Bool)

(assert (=> b!4016859 m!4605395))

(assert (=> b!4016332 d!1189654))

(declare-fun d!1189656 () Bool)

(assert (=> d!1189656 (ruleValid!2774 thiss!21717 (rule!9892 token!484))))

(declare-fun lt!1423929 () Unit!62030)

(declare-fun choose!24293 (LexerInterface!6431 Rule!13484 List!43100) Unit!62030)

(assert (=> d!1189656 (= lt!1423929 (choose!24293 thiss!21717 (rule!9892 token!484) rules!2999))))

(assert (=> d!1189656 (contains!8544 rules!2999 (rule!9892 token!484))))

(assert (=> d!1189656 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1848 thiss!21717 (rule!9892 token!484) rules!2999) lt!1423929)))

(declare-fun bs!589690 () Bool)

(assert (= bs!589690 d!1189656))

(assert (=> bs!589690 m!4604549))

(declare-fun m!4605397 () Bool)

(assert (=> bs!589690 m!4605397))

(assert (=> bs!589690 m!4604521))

(assert (=> b!4016332 d!1189656))

(declare-fun b!4016862 () Bool)

(declare-fun e!2491302 () List!43099)

(assert (=> b!4016862 (= e!2491302 (Cons!42975 (h!48395 lt!1423707) (++!11244 (t!333384 lt!1423707) lt!1423705)))))

(declare-fun b!4016864 () Bool)

(declare-fun e!2491301 () Bool)

(declare-fun lt!1423930 () List!43099)

(assert (=> b!4016864 (= e!2491301 (or (not (= lt!1423705 Nil!42975)) (= lt!1423930 lt!1423707)))))

(declare-fun b!4016863 () Bool)

(declare-fun res!1633695 () Bool)

(assert (=> b!4016863 (=> (not res!1633695) (not e!2491301))))

(assert (=> b!4016863 (= res!1633695 (= (size!32134 lt!1423930) (+ (size!32134 lt!1423707) (size!32134 lt!1423705))))))

(declare-fun d!1189658 () Bool)

(assert (=> d!1189658 e!2491301))

(declare-fun res!1633694 () Bool)

(assert (=> d!1189658 (=> (not res!1633694) (not e!2491301))))

(assert (=> d!1189658 (= res!1633694 (= (content!6523 lt!1423930) ((_ map or) (content!6523 lt!1423707) (content!6523 lt!1423705))))))

(assert (=> d!1189658 (= lt!1423930 e!2491302)))

(declare-fun c!694366 () Bool)

(assert (=> d!1189658 (= c!694366 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189658 (= (++!11244 lt!1423707 lt!1423705) lt!1423930)))

(declare-fun b!4016861 () Bool)

(assert (=> b!4016861 (= e!2491302 lt!1423705)))

(assert (= (and d!1189658 c!694366) b!4016861))

(assert (= (and d!1189658 (not c!694366)) b!4016862))

(assert (= (and d!1189658 res!1633694) b!4016863))

(assert (= (and b!4016863 res!1633695) b!4016864))

(declare-fun m!4605399 () Bool)

(assert (=> b!4016862 m!4605399))

(declare-fun m!4605401 () Bool)

(assert (=> b!4016863 m!4605401))

(assert (=> b!4016863 m!4604485))

(declare-fun m!4605403 () Bool)

(assert (=> b!4016863 m!4605403))

(declare-fun m!4605405 () Bool)

(assert (=> d!1189658 m!4605405))

(assert (=> d!1189658 m!4605385))

(declare-fun m!4605407 () Bool)

(assert (=> d!1189658 m!4605407))

(assert (=> b!4016353 d!1189658))

(declare-fun d!1189660 () Bool)

(declare-fun lt!1423931 () List!43099)

(assert (=> d!1189660 (= (++!11244 lt!1423707 lt!1423931) lt!1423734)))

(declare-fun e!2491303 () List!43099)

(assert (=> d!1189660 (= lt!1423931 e!2491303)))

(declare-fun c!694367 () Bool)

(assert (=> d!1189660 (= c!694367 ((_ is Cons!42975) lt!1423707))))

(assert (=> d!1189660 (>= (size!32134 lt!1423734) (size!32134 lt!1423707))))

(assert (=> d!1189660 (= (getSuffix!2354 lt!1423734 lt!1423707) lt!1423931)))

(declare-fun b!4016865 () Bool)

(assert (=> b!4016865 (= e!2491303 (getSuffix!2354 (tail!6257 lt!1423734) (t!333384 lt!1423707)))))

(declare-fun b!4016866 () Bool)

(assert (=> b!4016866 (= e!2491303 lt!1423734)))

(assert (= (and d!1189660 c!694367) b!4016865))

(assert (= (and d!1189660 (not c!694367)) b!4016866))

(declare-fun m!4605409 () Bool)

(assert (=> d!1189660 m!4605409))

(assert (=> d!1189660 m!4605257))

(assert (=> d!1189660 m!4604485))

(assert (=> b!4016865 m!4605327))

(assert (=> b!4016865 m!4605327))

(declare-fun m!4605411 () Bool)

(assert (=> b!4016865 m!4605411))

(assert (=> b!4016353 d!1189660))

(declare-fun b!4016869 () Bool)

(declare-fun e!2491305 () Bool)

(assert (=> b!4016869 (= e!2491305 (isPrefix!3929 (tail!6257 lt!1423734) (tail!6257 lt!1423734)))))

(declare-fun b!4016867 () Bool)

(declare-fun e!2491304 () Bool)

(assert (=> b!4016867 (= e!2491304 e!2491305)))

(declare-fun res!1633696 () Bool)

(assert (=> b!4016867 (=> (not res!1633696) (not e!2491305))))

(assert (=> b!4016867 (= res!1633696 (not ((_ is Nil!42975) lt!1423734)))))

(declare-fun b!4016868 () Bool)

(declare-fun res!1633699 () Bool)

(assert (=> b!4016868 (=> (not res!1633699) (not e!2491305))))

(assert (=> b!4016868 (= res!1633699 (= (head!8525 lt!1423734) (head!8525 lt!1423734)))))

(declare-fun b!4016870 () Bool)

(declare-fun e!2491306 () Bool)

(assert (=> b!4016870 (= e!2491306 (>= (size!32134 lt!1423734) (size!32134 lt!1423734)))))

(declare-fun d!1189662 () Bool)

(assert (=> d!1189662 e!2491306))

(declare-fun res!1633698 () Bool)

(assert (=> d!1189662 (=> res!1633698 e!2491306)))

(declare-fun lt!1423932 () Bool)

(assert (=> d!1189662 (= res!1633698 (not lt!1423932))))

(assert (=> d!1189662 (= lt!1423932 e!2491304)))

(declare-fun res!1633697 () Bool)

(assert (=> d!1189662 (=> res!1633697 e!2491304)))

(assert (=> d!1189662 (= res!1633697 ((_ is Nil!42975) lt!1423734))))

(assert (=> d!1189662 (= (isPrefix!3929 lt!1423734 lt!1423734) lt!1423932)))

(assert (= (and d!1189662 (not res!1633697)) b!4016867))

(assert (= (and b!4016867 res!1633696) b!4016868))

(assert (= (and b!4016868 res!1633699) b!4016869))

(assert (= (and d!1189662 (not res!1633698)) b!4016870))

(assert (=> b!4016869 m!4605327))

(assert (=> b!4016869 m!4605327))

(assert (=> b!4016869 m!4605327))

(assert (=> b!4016869 m!4605327))

(declare-fun m!4605413 () Bool)

(assert (=> b!4016869 m!4605413))

(assert (=> b!4016868 m!4605331))

(assert (=> b!4016868 m!4605331))

(assert (=> b!4016870 m!4605257))

(assert (=> b!4016870 m!4605257))

(assert (=> b!4016353 d!1189662))

(declare-fun d!1189664 () Bool)

(assert (=> d!1189664 (isPrefix!3929 lt!1423734 lt!1423734)))

(declare-fun lt!1423935 () Unit!62030)

(declare-fun choose!24295 (List!43099 List!43099) Unit!62030)

(assert (=> d!1189664 (= lt!1423935 (choose!24295 lt!1423734 lt!1423734))))

(assert (=> d!1189664 (= (lemmaIsPrefixRefl!2505 lt!1423734 lt!1423734) lt!1423935)))

(declare-fun bs!589691 () Bool)

(assert (= bs!589691 d!1189664))

(assert (=> bs!589691 m!4604481))

(declare-fun m!4605415 () Bool)

(assert (=> bs!589691 m!4605415))

(assert (=> b!4016353 d!1189664))

(declare-fun b!4016872 () Bool)

(declare-fun e!2491308 () List!43099)

(assert (=> b!4016872 (= e!2491308 (Cons!42975 (h!48395 lt!1423707) (++!11244 (t!333384 lt!1423707) lt!1423735)))))

(declare-fun lt!1423936 () List!43099)

(declare-fun b!4016874 () Bool)

(declare-fun e!2491307 () Bool)

(assert (=> b!4016874 (= e!2491307 (or (not (= lt!1423735 Nil!42975)) (= lt!1423936 lt!1423707)))))

(declare-fun b!4016873 () Bool)

(declare-fun res!1633701 () Bool)

(assert (=> b!4016873 (=> (not res!1633701) (not e!2491307))))

(assert (=> b!4016873 (= res!1633701 (= (size!32134 lt!1423936) (+ (size!32134 lt!1423707) (size!32134 lt!1423735))))))

(declare-fun d!1189666 () Bool)

(assert (=> d!1189666 e!2491307))

(declare-fun res!1633700 () Bool)

(assert (=> d!1189666 (=> (not res!1633700) (not e!2491307))))

(assert (=> d!1189666 (= res!1633700 (= (content!6523 lt!1423936) ((_ map or) (content!6523 lt!1423707) (content!6523 lt!1423735))))))

(assert (=> d!1189666 (= lt!1423936 e!2491308)))

(declare-fun c!694368 () Bool)

(assert (=> d!1189666 (= c!694368 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189666 (= (++!11244 lt!1423707 lt!1423735) lt!1423936)))

(declare-fun b!4016871 () Bool)

(assert (=> b!4016871 (= e!2491308 lt!1423735)))

(assert (= (and d!1189666 c!694368) b!4016871))

(assert (= (and d!1189666 (not c!694368)) b!4016872))

(assert (= (and d!1189666 res!1633700) b!4016873))

(assert (= (and b!4016873 res!1633701) b!4016874))

(declare-fun m!4605417 () Bool)

(assert (=> b!4016872 m!4605417))

(declare-fun m!4605419 () Bool)

(assert (=> b!4016873 m!4605419))

(assert (=> b!4016873 m!4604485))

(declare-fun m!4605421 () Bool)

(assert (=> b!4016873 m!4605421))

(declare-fun m!4605423 () Bool)

(assert (=> d!1189666 m!4605423))

(assert (=> d!1189666 m!4605385))

(declare-fun m!4605425 () Bool)

(assert (=> d!1189666 m!4605425))

(assert (=> b!4016354 d!1189666))

(declare-fun d!1189668 () Bool)

(declare-fun lt!1423937 () List!43099)

(assert (=> d!1189668 (= (++!11244 lt!1423707 lt!1423937) prefix!494)))

(declare-fun e!2491309 () List!43099)

(assert (=> d!1189668 (= lt!1423937 e!2491309)))

(declare-fun c!694369 () Bool)

(assert (=> d!1189668 (= c!694369 ((_ is Cons!42975) lt!1423707))))

(assert (=> d!1189668 (>= (size!32134 prefix!494) (size!32134 lt!1423707))))

(assert (=> d!1189668 (= (getSuffix!2354 prefix!494 lt!1423707) lt!1423937)))

(declare-fun b!4016875 () Bool)

(assert (=> b!4016875 (= e!2491309 (getSuffix!2354 (tail!6257 prefix!494) (t!333384 lt!1423707)))))

(declare-fun b!4016876 () Bool)

(assert (=> b!4016876 (= e!2491309 prefix!494)))

(assert (= (and d!1189668 c!694369) b!4016875))

(assert (= (and d!1189668 (not c!694369)) b!4016876))

(declare-fun m!4605427 () Bool)

(assert (=> d!1189668 m!4605427))

(assert (=> d!1189668 m!4604487))

(assert (=> d!1189668 m!4604485))

(assert (=> b!4016875 m!4605345))

(assert (=> b!4016875 m!4605345))

(declare-fun m!4605429 () Bool)

(assert (=> b!4016875 m!4605429))

(assert (=> b!4016354 d!1189668))

(declare-fun b!4016879 () Bool)

(declare-fun e!2491311 () Bool)

(assert (=> b!4016879 (= e!2491311 (isPrefix!3929 (tail!6257 lt!1423707) (tail!6257 prefix!494)))))

(declare-fun b!4016877 () Bool)

(declare-fun e!2491310 () Bool)

(assert (=> b!4016877 (= e!2491310 e!2491311)))

(declare-fun res!1633702 () Bool)

(assert (=> b!4016877 (=> (not res!1633702) (not e!2491311))))

(assert (=> b!4016877 (= res!1633702 (not ((_ is Nil!42975) prefix!494)))))

(declare-fun b!4016878 () Bool)

(declare-fun res!1633705 () Bool)

(assert (=> b!4016878 (=> (not res!1633705) (not e!2491311))))

(assert (=> b!4016878 (= res!1633705 (= (head!8525 lt!1423707) (head!8525 prefix!494)))))

(declare-fun b!4016880 () Bool)

(declare-fun e!2491312 () Bool)

(assert (=> b!4016880 (= e!2491312 (>= (size!32134 prefix!494) (size!32134 lt!1423707)))))

(declare-fun d!1189670 () Bool)

(assert (=> d!1189670 e!2491312))

(declare-fun res!1633704 () Bool)

(assert (=> d!1189670 (=> res!1633704 e!2491312)))

(declare-fun lt!1423938 () Bool)

(assert (=> d!1189670 (= res!1633704 (not lt!1423938))))

(assert (=> d!1189670 (= lt!1423938 e!2491310)))

(declare-fun res!1633703 () Bool)

(assert (=> d!1189670 (=> res!1633703 e!2491310)))

(assert (=> d!1189670 (= res!1633703 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189670 (= (isPrefix!3929 lt!1423707 prefix!494) lt!1423938)))

(assert (= (and d!1189670 (not res!1633703)) b!4016877))

(assert (= (and b!4016877 res!1633702) b!4016878))

(assert (= (and b!4016878 res!1633705) b!4016879))

(assert (= (and d!1189670 (not res!1633704)) b!4016880))

(assert (=> b!4016879 m!4605303))

(assert (=> b!4016879 m!4605345))

(assert (=> b!4016879 m!4605303))

(assert (=> b!4016879 m!4605345))

(declare-fun m!4605431 () Bool)

(assert (=> b!4016879 m!4605431))

(assert (=> b!4016878 m!4605309))

(assert (=> b!4016878 m!4605349))

(assert (=> b!4016880 m!4604487))

(assert (=> b!4016880 m!4604485))

(assert (=> b!4016354 d!1189670))

(declare-fun d!1189672 () Bool)

(assert (=> d!1189672 (isPrefix!3929 lt!1423707 prefix!494)))

(declare-fun lt!1423941 () Unit!62030)

(declare-fun choose!24297 (List!43099 List!43099 List!43099) Unit!62030)

(assert (=> d!1189672 (= lt!1423941 (choose!24297 prefix!494 lt!1423707 lt!1423734))))

(assert (=> d!1189672 (isPrefix!3929 prefix!494 lt!1423734)))

(assert (=> d!1189672 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!501 prefix!494 lt!1423707 lt!1423734) lt!1423941)))

(declare-fun bs!589692 () Bool)

(assert (= bs!589692 d!1189672))

(assert (=> bs!589692 m!4604469))

(declare-fun m!4605433 () Bool)

(assert (=> bs!589692 m!4605433))

(assert (=> bs!589692 m!4604529))

(assert (=> b!4016354 d!1189672))

(declare-fun b!4016882 () Bool)

(declare-fun e!2491314 () List!43099)

(assert (=> b!4016882 (= e!2491314 (Cons!42975 (h!48395 prefix!494) (++!11244 (t!333384 prefix!494) newSuffix!27)))))

(declare-fun e!2491313 () Bool)

(declare-fun lt!1423942 () List!43099)

(declare-fun b!4016884 () Bool)

(assert (=> b!4016884 (= e!2491313 (or (not (= newSuffix!27 Nil!42975)) (= lt!1423942 prefix!494)))))

(declare-fun b!4016883 () Bool)

(declare-fun res!1633707 () Bool)

(assert (=> b!4016883 (=> (not res!1633707) (not e!2491313))))

(assert (=> b!4016883 (= res!1633707 (= (size!32134 lt!1423942) (+ (size!32134 prefix!494) (size!32134 newSuffix!27))))))

(declare-fun d!1189674 () Bool)

(assert (=> d!1189674 e!2491313))

(declare-fun res!1633706 () Bool)

(assert (=> d!1189674 (=> (not res!1633706) (not e!2491313))))

(assert (=> d!1189674 (= res!1633706 (= (content!6523 lt!1423942) ((_ map or) (content!6523 prefix!494) (content!6523 newSuffix!27))))))

(assert (=> d!1189674 (= lt!1423942 e!2491314)))

(declare-fun c!694370 () Bool)

(assert (=> d!1189674 (= c!694370 ((_ is Nil!42975) prefix!494))))

(assert (=> d!1189674 (= (++!11244 prefix!494 newSuffix!27) lt!1423942)))

(declare-fun b!4016881 () Bool)

(assert (=> b!4016881 (= e!2491314 newSuffix!27)))

(assert (= (and d!1189674 c!694370) b!4016881))

(assert (= (and d!1189674 (not c!694370)) b!4016882))

(assert (= (and d!1189674 res!1633706) b!4016883))

(assert (= (and b!4016883 res!1633707) b!4016884))

(declare-fun m!4605435 () Bool)

(assert (=> b!4016882 m!4605435))

(declare-fun m!4605437 () Bool)

(assert (=> b!4016883 m!4605437))

(assert (=> b!4016883 m!4604487))

(assert (=> b!4016883 m!4604495))

(declare-fun m!4605439 () Bool)

(assert (=> d!1189674 m!4605439))

(declare-fun m!4605441 () Bool)

(assert (=> d!1189674 m!4605441))

(assert (=> d!1189674 m!4605367))

(assert (=> b!4016355 d!1189674))

(declare-fun b!4016886 () Bool)

(declare-fun e!2491316 () List!43099)

(assert (=> b!4016886 (= e!2491316 (Cons!42975 (h!48395 lt!1423707) (++!11244 (t!333384 lt!1423707) newSuffixResult!27)))))

(declare-fun lt!1423943 () List!43099)

(declare-fun e!2491315 () Bool)

(declare-fun b!4016888 () Bool)

(assert (=> b!4016888 (= e!2491315 (or (not (= newSuffixResult!27 Nil!42975)) (= lt!1423943 lt!1423707)))))

(declare-fun b!4016887 () Bool)

(declare-fun res!1633709 () Bool)

(assert (=> b!4016887 (=> (not res!1633709) (not e!2491315))))

(assert (=> b!4016887 (= res!1633709 (= (size!32134 lt!1423943) (+ (size!32134 lt!1423707) (size!32134 newSuffixResult!27))))))

(declare-fun d!1189676 () Bool)

(assert (=> d!1189676 e!2491315))

(declare-fun res!1633708 () Bool)

(assert (=> d!1189676 (=> (not res!1633708) (not e!2491315))))

(assert (=> d!1189676 (= res!1633708 (= (content!6523 lt!1423943) ((_ map or) (content!6523 lt!1423707) (content!6523 newSuffixResult!27))))))

(assert (=> d!1189676 (= lt!1423943 e!2491316)))

(declare-fun c!694371 () Bool)

(assert (=> d!1189676 (= c!694371 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189676 (= (++!11244 lt!1423707 newSuffixResult!27) lt!1423943)))

(declare-fun b!4016885 () Bool)

(assert (=> b!4016885 (= e!2491316 newSuffixResult!27)))

(assert (= (and d!1189676 c!694371) b!4016885))

(assert (= (and d!1189676 (not c!694371)) b!4016886))

(assert (= (and d!1189676 res!1633708) b!4016887))

(assert (= (and b!4016887 res!1633709) b!4016888))

(declare-fun m!4605443 () Bool)

(assert (=> b!4016886 m!4605443))

(declare-fun m!4605445 () Bool)

(assert (=> b!4016887 m!4605445))

(assert (=> b!4016887 m!4604485))

(declare-fun m!4605447 () Bool)

(assert (=> b!4016887 m!4605447))

(declare-fun m!4605449 () Bool)

(assert (=> d!1189676 m!4605449))

(assert (=> d!1189676 m!4605385))

(declare-fun m!4605451 () Bool)

(assert (=> d!1189676 m!4605451))

(assert (=> b!4016355 d!1189676))

(declare-fun d!1189678 () Bool)

(declare-fun lt!1423944 () Bool)

(assert (=> d!1189678 (= lt!1423944 (select (content!6522 rules!2999) (rule!9892 token!484)))))

(declare-fun e!2491318 () Bool)

(assert (=> d!1189678 (= lt!1423944 e!2491318)))

(declare-fun res!1633710 () Bool)

(assert (=> d!1189678 (=> (not res!1633710) (not e!2491318))))

(assert (=> d!1189678 (= res!1633710 ((_ is Cons!42976) rules!2999))))

(assert (=> d!1189678 (= (contains!8544 rules!2999 (rule!9892 token!484)) lt!1423944)))

(declare-fun b!4016889 () Bool)

(declare-fun e!2491317 () Bool)

(assert (=> b!4016889 (= e!2491318 e!2491317)))

(declare-fun res!1633711 () Bool)

(assert (=> b!4016889 (=> res!1633711 e!2491317)))

(assert (=> b!4016889 (= res!1633711 (= (h!48396 rules!2999) (rule!9892 token!484)))))

(declare-fun b!4016890 () Bool)

(assert (=> b!4016890 (= e!2491317 (contains!8544 (t!333385 rules!2999) (rule!9892 token!484)))))

(assert (= (and d!1189678 res!1633710) b!4016889))

(assert (= (and b!4016889 (not res!1633711)) b!4016890))

(assert (=> d!1189678 m!4605315))

(declare-fun m!4605453 () Bool)

(assert (=> d!1189678 m!4605453))

(declare-fun m!4605455 () Bool)

(assert (=> b!4016890 m!4605455))

(assert (=> b!4016330 d!1189678))

(declare-fun b!4016909 () Bool)

(declare-fun res!1633728 () Bool)

(declare-fun e!2491325 () Bool)

(assert (=> b!4016909 (=> (not res!1633728) (not e!2491325))))

(declare-fun lt!1423955 () Option!9256)

(assert (=> b!4016909 (= res!1633728 (< (size!32134 (_2!24193 (get!14121 lt!1423955))) (size!32134 lt!1423729)))))

(declare-fun b!4016911 () Bool)

(declare-fun e!2491326 () Option!9256)

(declare-fun lt!1423959 () Option!9256)

(declare-fun lt!1423956 () Option!9256)

(assert (=> b!4016911 (= e!2491326 (ite (and ((_ is None!9255) lt!1423959) ((_ is None!9255) lt!1423956)) None!9255 (ite ((_ is None!9255) lt!1423956) lt!1423959 (ite ((_ is None!9255) lt!1423959) lt!1423956 (ite (>= (size!32133 (_1!24193 (v!39627 lt!1423959))) (size!32133 (_1!24193 (v!39627 lt!1423956)))) lt!1423959 lt!1423956)))))))

(declare-fun call!286564 () Option!9256)

(assert (=> b!4016911 (= lt!1423959 call!286564)))

(assert (=> b!4016911 (= lt!1423956 (maxPrefix!3729 thiss!21717 (t!333385 rules!2999) lt!1423729))))

(declare-fun b!4016912 () Bool)

(assert (=> b!4016912 (= e!2491326 call!286564)))

(declare-fun b!4016913 () Bool)

(declare-fun res!1633731 () Bool)

(assert (=> b!4016913 (=> (not res!1633731) (not e!2491325))))

(assert (=> b!4016913 (= res!1633731 (matchR!5708 (regex!6842 (rule!9892 (_1!24193 (get!14121 lt!1423955)))) (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423955))))))))

(declare-fun b!4016914 () Bool)

(declare-fun res!1633732 () Bool)

(assert (=> b!4016914 (=> (not res!1633732) (not e!2491325))))

(assert (=> b!4016914 (= res!1633732 (= (value!215631 (_1!24193 (get!14121 lt!1423955))) (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (get!14121 lt!1423955)))) (seqFromList!5067 (originalCharacters!7442 (_1!24193 (get!14121 lt!1423955)))))))))

(declare-fun b!4016915 () Bool)

(declare-fun res!1633730 () Bool)

(assert (=> b!4016915 (=> (not res!1633730) (not e!2491325))))

(assert (=> b!4016915 (= res!1633730 (= (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423955)))) (originalCharacters!7442 (_1!24193 (get!14121 lt!1423955)))))))

(declare-fun bm!286559 () Bool)

(assert (=> bm!286559 (= call!286564 (maxPrefixOneRule!2749 thiss!21717 (h!48396 rules!2999) lt!1423729))))

(declare-fun b!4016916 () Bool)

(declare-fun res!1633726 () Bool)

(assert (=> b!4016916 (=> (not res!1633726) (not e!2491325))))

(assert (=> b!4016916 (= res!1633726 (= (++!11244 (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423955)))) (_2!24193 (get!14121 lt!1423955))) lt!1423729))))

(declare-fun b!4016917 () Bool)

(declare-fun e!2491327 () Bool)

(assert (=> b!4016917 (= e!2491327 e!2491325)))

(declare-fun res!1633729 () Bool)

(assert (=> b!4016917 (=> (not res!1633729) (not e!2491325))))

(declare-fun isDefined!7076 (Option!9256) Bool)

(assert (=> b!4016917 (= res!1633729 (isDefined!7076 lt!1423955))))

(declare-fun d!1189680 () Bool)

(assert (=> d!1189680 e!2491327))

(declare-fun res!1633727 () Bool)

(assert (=> d!1189680 (=> res!1633727 e!2491327)))

(assert (=> d!1189680 (= res!1633727 (isEmpty!25674 lt!1423955))))

(assert (=> d!1189680 (= lt!1423955 e!2491326)))

(declare-fun c!694374 () Bool)

(assert (=> d!1189680 (= c!694374 (and ((_ is Cons!42976) rules!2999) ((_ is Nil!42976) (t!333385 rules!2999))))))

(declare-fun lt!1423958 () Unit!62030)

(declare-fun lt!1423957 () Unit!62030)

(assert (=> d!1189680 (= lt!1423958 lt!1423957)))

(assert (=> d!1189680 (isPrefix!3929 lt!1423729 lt!1423729)))

(assert (=> d!1189680 (= lt!1423957 (lemmaIsPrefixRefl!2505 lt!1423729 lt!1423729))))

(declare-fun rulesValidInductive!2497 (LexerInterface!6431 List!43100) Bool)

(assert (=> d!1189680 (rulesValidInductive!2497 thiss!21717 rules!2999)))

(assert (=> d!1189680 (= (maxPrefix!3729 thiss!21717 rules!2999 lt!1423729) lt!1423955)))

(declare-fun b!4016910 () Bool)

(assert (=> b!4016910 (= e!2491325 (contains!8544 rules!2999 (rule!9892 (_1!24193 (get!14121 lt!1423955)))))))

(assert (= (and d!1189680 c!694374) b!4016912))

(assert (= (and d!1189680 (not c!694374)) b!4016911))

(assert (= (or b!4016912 b!4016911) bm!286559))

(assert (= (and d!1189680 (not res!1633727)) b!4016917))

(assert (= (and b!4016917 res!1633729) b!4016915))

(assert (= (and b!4016915 res!1633730) b!4016909))

(assert (= (and b!4016909 res!1633728) b!4016916))

(assert (= (and b!4016916 res!1633726) b!4016914))

(assert (= (and b!4016914 res!1633732) b!4016913))

(assert (= (and b!4016913 res!1633731) b!4016910))

(declare-fun m!4605457 () Bool)

(assert (=> bm!286559 m!4605457))

(declare-fun m!4605459 () Bool)

(assert (=> b!4016911 m!4605459))

(declare-fun m!4605461 () Bool)

(assert (=> b!4016916 m!4605461))

(declare-fun m!4605463 () Bool)

(assert (=> b!4016916 m!4605463))

(assert (=> b!4016916 m!4605463))

(declare-fun m!4605465 () Bool)

(assert (=> b!4016916 m!4605465))

(assert (=> b!4016916 m!4605465))

(declare-fun m!4605467 () Bool)

(assert (=> b!4016916 m!4605467))

(declare-fun m!4605469 () Bool)

(assert (=> b!4016917 m!4605469))

(assert (=> b!4016914 m!4605461))

(declare-fun m!4605471 () Bool)

(assert (=> b!4016914 m!4605471))

(assert (=> b!4016914 m!4605471))

(declare-fun m!4605473 () Bool)

(assert (=> b!4016914 m!4605473))

(declare-fun m!4605475 () Bool)

(assert (=> d!1189680 m!4605475))

(declare-fun m!4605477 () Bool)

(assert (=> d!1189680 m!4605477))

(declare-fun m!4605479 () Bool)

(assert (=> d!1189680 m!4605479))

(declare-fun m!4605481 () Bool)

(assert (=> d!1189680 m!4605481))

(assert (=> b!4016915 m!4605461))

(assert (=> b!4016915 m!4605463))

(assert (=> b!4016915 m!4605463))

(assert (=> b!4016915 m!4605465))

(assert (=> b!4016909 m!4605461))

(declare-fun m!4605483 () Bool)

(assert (=> b!4016909 m!4605483))

(declare-fun m!4605485 () Bool)

(assert (=> b!4016909 m!4605485))

(assert (=> b!4016913 m!4605461))

(assert (=> b!4016913 m!4605463))

(assert (=> b!4016913 m!4605463))

(assert (=> b!4016913 m!4605465))

(assert (=> b!4016913 m!4605465))

(declare-fun m!4605487 () Bool)

(assert (=> b!4016913 m!4605487))

(assert (=> b!4016910 m!4605461))

(declare-fun m!4605489 () Bool)

(assert (=> b!4016910 m!4605489))

(assert (=> b!4016351 d!1189680))

(declare-fun d!1189682 () Bool)

(assert (=> d!1189682 (= suffixResult!105 lt!1423705)))

(declare-fun lt!1423960 () Unit!62030)

(assert (=> d!1189682 (= lt!1423960 (choose!24290 lt!1423707 suffixResult!105 lt!1423707 lt!1423705 lt!1423734))))

(assert (=> d!1189682 (isPrefix!3929 lt!1423707 lt!1423734)))

(assert (=> d!1189682 (= (lemmaSamePrefixThenSameSuffix!2100 lt!1423707 suffixResult!105 lt!1423707 lt!1423705 lt!1423734) lt!1423960)))

(declare-fun bs!589693 () Bool)

(assert (= bs!589693 d!1189682))

(declare-fun m!4605491 () Bool)

(assert (=> bs!589693 m!4605491))

(assert (=> bs!589693 m!4604523))

(assert (=> b!4016351 d!1189682))

(declare-fun b!4016920 () Bool)

(declare-fun e!2491329 () Bool)

(assert (=> b!4016920 (= e!2491329 (isPrefix!3929 (tail!6257 lt!1423707) (tail!6257 lt!1423737)))))

(declare-fun b!4016918 () Bool)

(declare-fun e!2491328 () Bool)

(assert (=> b!4016918 (= e!2491328 e!2491329)))

(declare-fun res!1633733 () Bool)

(assert (=> b!4016918 (=> (not res!1633733) (not e!2491329))))

(assert (=> b!4016918 (= res!1633733 (not ((_ is Nil!42975) lt!1423737)))))

(declare-fun b!4016919 () Bool)

(declare-fun res!1633736 () Bool)

(assert (=> b!4016919 (=> (not res!1633736) (not e!2491329))))

(assert (=> b!4016919 (= res!1633736 (= (head!8525 lt!1423707) (head!8525 lt!1423737)))))

(declare-fun b!4016921 () Bool)

(declare-fun e!2491330 () Bool)

(assert (=> b!4016921 (= e!2491330 (>= (size!32134 lt!1423737) (size!32134 lt!1423707)))))

(declare-fun d!1189684 () Bool)

(assert (=> d!1189684 e!2491330))

(declare-fun res!1633735 () Bool)

(assert (=> d!1189684 (=> res!1633735 e!2491330)))

(declare-fun lt!1423961 () Bool)

(assert (=> d!1189684 (= res!1633735 (not lt!1423961))))

(assert (=> d!1189684 (= lt!1423961 e!2491328)))

(declare-fun res!1633734 () Bool)

(assert (=> d!1189684 (=> res!1633734 e!2491328)))

(assert (=> d!1189684 (= res!1633734 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189684 (= (isPrefix!3929 lt!1423707 lt!1423737) lt!1423961)))

(assert (= (and d!1189684 (not res!1633734)) b!4016918))

(assert (= (and b!4016918 res!1633733) b!4016919))

(assert (= (and b!4016919 res!1633736) b!4016920))

(assert (= (and d!1189684 (not res!1633735)) b!4016921))

(assert (=> b!4016920 m!4605303))

(declare-fun m!4605493 () Bool)

(assert (=> b!4016920 m!4605493))

(assert (=> b!4016920 m!4605303))

(assert (=> b!4016920 m!4605493))

(declare-fun m!4605495 () Bool)

(assert (=> b!4016920 m!4605495))

(assert (=> b!4016919 m!4605309))

(declare-fun m!4605497 () Bool)

(assert (=> b!4016919 m!4605497))

(declare-fun m!4605499 () Bool)

(assert (=> b!4016921 m!4605499))

(assert (=> b!4016921 m!4604485))

(assert (=> b!4016351 d!1189684))

(declare-fun d!1189686 () Bool)

(assert (=> d!1189686 (isPrefix!3929 lt!1423707 (++!11244 lt!1423707 lt!1423705))))

(declare-fun lt!1423962 () Unit!62030)

(assert (=> d!1189686 (= lt!1423962 (choose!24291 lt!1423707 lt!1423705))))

(assert (=> d!1189686 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423707 lt!1423705) lt!1423962)))

(declare-fun bs!589694 () Bool)

(assert (= bs!589694 d!1189686))

(assert (=> bs!589694 m!4604477))

(assert (=> bs!589694 m!4604477))

(declare-fun m!4605501 () Bool)

(assert (=> bs!589694 m!4605501))

(declare-fun m!4605503 () Bool)

(assert (=> bs!589694 m!4605503))

(assert (=> b!4016351 d!1189686))

(declare-fun b!4016923 () Bool)

(declare-fun e!2491332 () List!43099)

(assert (=> b!4016923 (= e!2491332 (Cons!42975 (h!48395 lt!1423698) (++!11244 (t!333384 lt!1423698) lt!1423718)))))

(declare-fun lt!1423963 () List!43099)

(declare-fun b!4016925 () Bool)

(declare-fun e!2491331 () Bool)

(assert (=> b!4016925 (= e!2491331 (or (not (= lt!1423718 Nil!42975)) (= lt!1423963 lt!1423698)))))

(declare-fun b!4016924 () Bool)

(declare-fun res!1633738 () Bool)

(assert (=> b!4016924 (=> (not res!1633738) (not e!2491331))))

(assert (=> b!4016924 (= res!1633738 (= (size!32134 lt!1423963) (+ (size!32134 lt!1423698) (size!32134 lt!1423718))))))

(declare-fun d!1189688 () Bool)

(assert (=> d!1189688 e!2491331))

(declare-fun res!1633737 () Bool)

(assert (=> d!1189688 (=> (not res!1633737) (not e!2491331))))

(assert (=> d!1189688 (= res!1633737 (= (content!6523 lt!1423963) ((_ map or) (content!6523 lt!1423698) (content!6523 lt!1423718))))))

(assert (=> d!1189688 (= lt!1423963 e!2491332)))

(declare-fun c!694375 () Bool)

(assert (=> d!1189688 (= c!694375 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189688 (= (++!11244 lt!1423698 lt!1423718) lt!1423963)))

(declare-fun b!4016922 () Bool)

(assert (=> b!4016922 (= e!2491332 lt!1423718)))

(assert (= (and d!1189688 c!694375) b!4016922))

(assert (= (and d!1189688 (not c!694375)) b!4016923))

(assert (= (and d!1189688 res!1633737) b!4016924))

(assert (= (and b!4016924 res!1633738) b!4016925))

(declare-fun m!4605505 () Bool)

(assert (=> b!4016923 m!4605505))

(declare-fun m!4605507 () Bool)

(assert (=> b!4016924 m!4605507))

(assert (=> b!4016924 m!4604601))

(declare-fun m!4605509 () Bool)

(assert (=> b!4016924 m!4605509))

(declare-fun m!4605511 () Bool)

(assert (=> d!1189688 m!4605511))

(declare-fun m!4605513 () Bool)

(assert (=> d!1189688 m!4605513))

(declare-fun m!4605515 () Bool)

(assert (=> d!1189688 m!4605515))

(assert (=> b!4016331 d!1189688))

(declare-fun d!1189690 () Bool)

(declare-fun lt!1423964 () List!43099)

(assert (=> d!1189690 (= (++!11244 lt!1423698 lt!1423964) lt!1423729)))

(declare-fun e!2491333 () List!43099)

(assert (=> d!1189690 (= lt!1423964 e!2491333)))

(declare-fun c!694376 () Bool)

(assert (=> d!1189690 (= c!694376 ((_ is Cons!42975) lt!1423698))))

(assert (=> d!1189690 (>= (size!32134 lt!1423729) (size!32134 lt!1423698))))

(assert (=> d!1189690 (= (getSuffix!2354 lt!1423729 lt!1423698) lt!1423964)))

(declare-fun b!4016926 () Bool)

(assert (=> b!4016926 (= e!2491333 (getSuffix!2354 (tail!6257 lt!1423729) (t!333384 lt!1423698)))))

(declare-fun b!4016927 () Bool)

(assert (=> b!4016927 (= e!2491333 lt!1423729)))

(assert (= (and d!1189690 c!694376) b!4016926))

(assert (= (and d!1189690 (not c!694376)) b!4016927))

(declare-fun m!4605517 () Bool)

(assert (=> d!1189690 m!4605517))

(assert (=> d!1189690 m!4605485))

(assert (=> d!1189690 m!4604601))

(declare-fun m!4605519 () Bool)

(assert (=> b!4016926 m!4605519))

(assert (=> b!4016926 m!4605519))

(declare-fun m!4605521 () Bool)

(assert (=> b!4016926 m!4605521))

(assert (=> b!4016331 d!1189690))

(declare-fun d!1189692 () Bool)

(assert (=> d!1189692 (= (inv!57402 (tag!7702 (rule!9892 token!484))) (= (mod (str.len (value!215630 (tag!7702 (rule!9892 token!484)))) 2) 0))))

(assert (=> b!4016337 d!1189692))

(declare-fun d!1189694 () Bool)

(declare-fun res!1633739 () Bool)

(declare-fun e!2491334 () Bool)

(assert (=> d!1189694 (=> (not res!1633739) (not e!2491334))))

(assert (=> d!1189694 (= res!1633739 (semiInverseModEq!2931 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))))))

(assert (=> d!1189694 (= (inv!57406 (transformation!6842 (rule!9892 token!484))) e!2491334)))

(declare-fun b!4016928 () Bool)

(assert (=> b!4016928 (= e!2491334 (equivClasses!2830 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))))))

(assert (= (and d!1189694 res!1633739) b!4016928))

(assert (=> d!1189694 m!4605389))

(assert (=> b!4016928 m!4605391))

(assert (=> b!4016337 d!1189694))

(declare-fun b!4016930 () Bool)

(declare-fun e!2491336 () List!43099)

(assert (=> b!4016930 (= e!2491336 (Cons!42975 (h!48395 prefix!494) (++!11244 (t!333384 prefix!494) lt!1423741)))))

(declare-fun e!2491335 () Bool)

(declare-fun lt!1423965 () List!43099)

(declare-fun b!4016932 () Bool)

(assert (=> b!4016932 (= e!2491335 (or (not (= lt!1423741 Nil!42975)) (= lt!1423965 prefix!494)))))

(declare-fun b!4016931 () Bool)

(declare-fun res!1633741 () Bool)

(assert (=> b!4016931 (=> (not res!1633741) (not e!2491335))))

(assert (=> b!4016931 (= res!1633741 (= (size!32134 lt!1423965) (+ (size!32134 prefix!494) (size!32134 lt!1423741))))))

(declare-fun d!1189696 () Bool)

(assert (=> d!1189696 e!2491335))

(declare-fun res!1633740 () Bool)

(assert (=> d!1189696 (=> (not res!1633740) (not e!2491335))))

(assert (=> d!1189696 (= res!1633740 (= (content!6523 lt!1423965) ((_ map or) (content!6523 prefix!494) (content!6523 lt!1423741))))))

(assert (=> d!1189696 (= lt!1423965 e!2491336)))

(declare-fun c!694377 () Bool)

(assert (=> d!1189696 (= c!694377 ((_ is Nil!42975) prefix!494))))

(assert (=> d!1189696 (= (++!11244 prefix!494 lt!1423741) lt!1423965)))

(declare-fun b!4016929 () Bool)

(assert (=> b!4016929 (= e!2491336 lt!1423741)))

(assert (= (and d!1189696 c!694377) b!4016929))

(assert (= (and d!1189696 (not c!694377)) b!4016930))

(assert (= (and d!1189696 res!1633740) b!4016931))

(assert (= (and b!4016931 res!1633741) b!4016932))

(declare-fun m!4605523 () Bool)

(assert (=> b!4016930 m!4605523))

(declare-fun m!4605525 () Bool)

(assert (=> b!4016931 m!4605525))

(assert (=> b!4016931 m!4604487))

(declare-fun m!4605527 () Bool)

(assert (=> b!4016931 m!4605527))

(declare-fun m!4605529 () Bool)

(assert (=> d!1189696 m!4605529))

(assert (=> d!1189696 m!4605441))

(declare-fun m!4605531 () Bool)

(assert (=> d!1189696 m!4605531))

(assert (=> b!4016338 d!1189696))

(declare-fun b!4016934 () Bool)

(declare-fun e!2491338 () List!43099)

(assert (=> b!4016934 (= e!2491338 (Cons!42975 (h!48395 lt!1423729) (++!11244 (t!333384 lt!1423729) lt!1423739)))))

(declare-fun lt!1423966 () List!43099)

(declare-fun b!4016936 () Bool)

(declare-fun e!2491337 () Bool)

(assert (=> b!4016936 (= e!2491337 (or (not (= lt!1423739 Nil!42975)) (= lt!1423966 lt!1423729)))))

(declare-fun b!4016935 () Bool)

(declare-fun res!1633743 () Bool)

(assert (=> b!4016935 (=> (not res!1633743) (not e!2491337))))

(assert (=> b!4016935 (= res!1633743 (= (size!32134 lt!1423966) (+ (size!32134 lt!1423729) (size!32134 lt!1423739))))))

(declare-fun d!1189698 () Bool)

(assert (=> d!1189698 e!2491337))

(declare-fun res!1633742 () Bool)

(assert (=> d!1189698 (=> (not res!1633742) (not e!2491337))))

(assert (=> d!1189698 (= res!1633742 (= (content!6523 lt!1423966) ((_ map or) (content!6523 lt!1423729) (content!6523 lt!1423739))))))

(assert (=> d!1189698 (= lt!1423966 e!2491338)))

(declare-fun c!694378 () Bool)

(assert (=> d!1189698 (= c!694378 ((_ is Nil!42975) lt!1423729))))

(assert (=> d!1189698 (= (++!11244 lt!1423729 lt!1423739) lt!1423966)))

(declare-fun b!4016933 () Bool)

(assert (=> b!4016933 (= e!2491338 lt!1423739)))

(assert (= (and d!1189698 c!694378) b!4016933))

(assert (= (and d!1189698 (not c!694378)) b!4016934))

(assert (= (and d!1189698 res!1633742) b!4016935))

(assert (= (and b!4016935 res!1633743) b!4016936))

(declare-fun m!4605533 () Bool)

(assert (=> b!4016934 m!4605533))

(declare-fun m!4605535 () Bool)

(assert (=> b!4016935 m!4605535))

(assert (=> b!4016935 m!4605485))

(assert (=> b!4016935 m!4605363))

(declare-fun m!4605537 () Bool)

(assert (=> d!1189698 m!4605537))

(declare-fun m!4605539 () Bool)

(assert (=> d!1189698 m!4605539))

(assert (=> d!1189698 m!4605369))

(assert (=> b!4016338 d!1189698))

(declare-fun d!1189700 () Bool)

(assert (=> d!1189700 (= (++!11244 (++!11244 prefix!494 newSuffix!27) lt!1423739) (++!11244 prefix!494 (++!11244 newSuffix!27 lt!1423739)))))

(declare-fun lt!1423969 () Unit!62030)

(declare-fun choose!24299 (List!43099 List!43099 List!43099) Unit!62030)

(assert (=> d!1189700 (= lt!1423969 (choose!24299 prefix!494 newSuffix!27 lt!1423739))))

(assert (=> d!1189700 (= (lemmaConcatAssociativity!2554 prefix!494 newSuffix!27 lt!1423739) lt!1423969)))

(declare-fun bs!589695 () Bool)

(assert (= bs!589695 d!1189700))

(assert (=> bs!589695 m!4604641))

(assert (=> bs!589695 m!4604579))

(declare-fun m!4605541 () Bool)

(assert (=> bs!589695 m!4605541))

(declare-fun m!4605543 () Bool)

(assert (=> bs!589695 m!4605543))

(assert (=> bs!589695 m!4604579))

(assert (=> bs!589695 m!4604641))

(declare-fun m!4605545 () Bool)

(assert (=> bs!589695 m!4605545))

(assert (=> b!4016338 d!1189700))

(declare-fun b!4016939 () Bool)

(declare-fun e!2491340 () Bool)

(assert (=> b!4016939 (= e!2491340 (isPrefix!3929 (tail!6257 newSuffix!27) (tail!6257 suffix!1299)))))

(declare-fun b!4016937 () Bool)

(declare-fun e!2491339 () Bool)

(assert (=> b!4016937 (= e!2491339 e!2491340)))

(declare-fun res!1633744 () Bool)

(assert (=> b!4016937 (=> (not res!1633744) (not e!2491340))))

(assert (=> b!4016937 (= res!1633744 (not ((_ is Nil!42975) suffix!1299)))))

(declare-fun b!4016938 () Bool)

(declare-fun res!1633747 () Bool)

(assert (=> b!4016938 (=> (not res!1633747) (not e!2491340))))

(assert (=> b!4016938 (= res!1633747 (= (head!8525 newSuffix!27) (head!8525 suffix!1299)))))

(declare-fun b!4016940 () Bool)

(declare-fun e!2491341 () Bool)

(assert (=> b!4016940 (= e!2491341 (>= (size!32134 suffix!1299) (size!32134 newSuffix!27)))))

(declare-fun d!1189702 () Bool)

(assert (=> d!1189702 e!2491341))

(declare-fun res!1633746 () Bool)

(assert (=> d!1189702 (=> res!1633746 e!2491341)))

(declare-fun lt!1423970 () Bool)

(assert (=> d!1189702 (= res!1633746 (not lt!1423970))))

(assert (=> d!1189702 (= lt!1423970 e!2491339)))

(declare-fun res!1633745 () Bool)

(assert (=> d!1189702 (=> res!1633745 e!2491339)))

(assert (=> d!1189702 (= res!1633745 ((_ is Nil!42975) newSuffix!27))))

(assert (=> d!1189702 (= (isPrefix!3929 newSuffix!27 suffix!1299) lt!1423970)))

(assert (= (and d!1189702 (not res!1633745)) b!4016937))

(assert (= (and b!4016937 res!1633744) b!4016938))

(assert (= (and b!4016938 res!1633747) b!4016939))

(assert (= (and d!1189702 (not res!1633746)) b!4016940))

(declare-fun m!4605547 () Bool)

(assert (=> b!4016939 m!4605547))

(assert (=> b!4016939 m!4605373))

(assert (=> b!4016939 m!4605547))

(assert (=> b!4016939 m!4605373))

(declare-fun m!4605549 () Bool)

(assert (=> b!4016939 m!4605549))

(declare-fun m!4605551 () Bool)

(assert (=> b!4016938 m!4605551))

(declare-fun m!4605553 () Bool)

(assert (=> b!4016938 m!4605553))

(assert (=> b!4016940 m!4604493))

(assert (=> b!4016940 m!4604495))

(assert (=> b!4016359 d!1189702))

(declare-fun d!1189704 () Bool)

(declare-fun e!2491357 () Bool)

(assert (=> d!1189704 e!2491357))

(declare-fun c!694386 () Bool)

(assert (=> d!1189704 (= c!694386 ((_ is EmptyExpr!11747) (regex!6842 (rule!9892 token!484))))))

(declare-fun lt!1423973 () Bool)

(declare-fun e!2491359 () Bool)

(assert (=> d!1189704 (= lt!1423973 e!2491359)))

(declare-fun c!694385 () Bool)

(assert (=> d!1189704 (= c!694385 (isEmpty!25673 lt!1423707))))

(assert (=> d!1189704 (validRegex!5324 (regex!6842 (rule!9892 token!484)))))

(assert (=> d!1189704 (= (matchR!5708 (regex!6842 (rule!9892 token!484)) lt!1423707) lt!1423973)))

(declare-fun bm!286562 () Bool)

(declare-fun call!286567 () Bool)

(assert (=> bm!286562 (= call!286567 (isEmpty!25673 lt!1423707))))

(declare-fun b!4016969 () Bool)

(assert (=> b!4016969 (= e!2491357 (= lt!1423973 call!286567))))

(declare-fun b!4016970 () Bool)

(declare-fun res!1633765 () Bool)

(declare-fun e!2491356 () Bool)

(assert (=> b!4016970 (=> res!1633765 e!2491356)))

(assert (=> b!4016970 (= res!1633765 (not (isEmpty!25673 (tail!6257 lt!1423707))))))

(declare-fun b!4016971 () Bool)

(declare-fun res!1633769 () Bool)

(declare-fun e!2491360 () Bool)

(assert (=> b!4016971 (=> (not res!1633769) (not e!2491360))))

(assert (=> b!4016971 (= res!1633769 (isEmpty!25673 (tail!6257 lt!1423707)))))

(declare-fun b!4016972 () Bool)

(declare-fun e!2491361 () Bool)

(assert (=> b!4016972 (= e!2491361 e!2491356)))

(declare-fun res!1633767 () Bool)

(assert (=> b!4016972 (=> res!1633767 e!2491356)))

(assert (=> b!4016972 (= res!1633767 call!286567)))

(declare-fun b!4016973 () Bool)

(declare-fun e!2491362 () Bool)

(assert (=> b!4016973 (= e!2491357 e!2491362)))

(declare-fun c!694387 () Bool)

(assert (=> b!4016973 (= c!694387 ((_ is EmptyLang!11747) (regex!6842 (rule!9892 token!484))))))

(declare-fun b!4016974 () Bool)

(assert (=> b!4016974 (= e!2491359 (nullable!4124 (regex!6842 (rule!9892 token!484))))))

(declare-fun b!4016975 () Bool)

(declare-fun res!1633766 () Bool)

(declare-fun e!2491358 () Bool)

(assert (=> b!4016975 (=> res!1633766 e!2491358)))

(assert (=> b!4016975 (= res!1633766 (not ((_ is ElementMatch!11747) (regex!6842 (rule!9892 token!484)))))))

(assert (=> b!4016975 (= e!2491362 e!2491358)))

(declare-fun b!4016976 () Bool)

(assert (=> b!4016976 (= e!2491358 e!2491361)))

(declare-fun res!1633771 () Bool)

(assert (=> b!4016976 (=> (not res!1633771) (not e!2491361))))

(assert (=> b!4016976 (= res!1633771 (not lt!1423973))))

(declare-fun b!4016977 () Bool)

(declare-fun derivativeStep!3533 (Regex!11747 C!23680) Regex!11747)

(assert (=> b!4016977 (= e!2491359 (matchR!5708 (derivativeStep!3533 (regex!6842 (rule!9892 token!484)) (head!8525 lt!1423707)) (tail!6257 lt!1423707)))))

(declare-fun b!4016978 () Bool)

(assert (=> b!4016978 (= e!2491360 (= (head!8525 lt!1423707) (c!694295 (regex!6842 (rule!9892 token!484)))))))

(declare-fun b!4016979 () Bool)

(declare-fun res!1633770 () Bool)

(assert (=> b!4016979 (=> res!1633770 e!2491358)))

(assert (=> b!4016979 (= res!1633770 e!2491360)))

(declare-fun res!1633764 () Bool)

(assert (=> b!4016979 (=> (not res!1633764) (not e!2491360))))

(assert (=> b!4016979 (= res!1633764 lt!1423973)))

(declare-fun b!4016980 () Bool)

(declare-fun res!1633768 () Bool)

(assert (=> b!4016980 (=> (not res!1633768) (not e!2491360))))

(assert (=> b!4016980 (= res!1633768 (not call!286567))))

(declare-fun b!4016981 () Bool)

(assert (=> b!4016981 (= e!2491356 (not (= (head!8525 lt!1423707) (c!694295 (regex!6842 (rule!9892 token!484))))))))

(declare-fun b!4016982 () Bool)

(assert (=> b!4016982 (= e!2491362 (not lt!1423973))))

(assert (= (and d!1189704 c!694385) b!4016974))

(assert (= (and d!1189704 (not c!694385)) b!4016977))

(assert (= (and d!1189704 c!694386) b!4016969))

(assert (= (and d!1189704 (not c!694386)) b!4016973))

(assert (= (and b!4016973 c!694387) b!4016982))

(assert (= (and b!4016973 (not c!694387)) b!4016975))

(assert (= (and b!4016975 (not res!1633766)) b!4016979))

(assert (= (and b!4016979 res!1633764) b!4016980))

(assert (= (and b!4016980 res!1633768) b!4016971))

(assert (= (and b!4016971 res!1633769) b!4016978))

(assert (= (and b!4016979 (not res!1633770)) b!4016976))

(assert (= (and b!4016976 res!1633771) b!4016972))

(assert (= (and b!4016972 (not res!1633767)) b!4016970))

(assert (= (and b!4016970 (not res!1633765)) b!4016981))

(assert (= (or b!4016969 b!4016972 b!4016980) bm!286562))

(assert (=> b!4016971 m!4605303))

(assert (=> b!4016971 m!4605303))

(declare-fun m!4605555 () Bool)

(assert (=> b!4016971 m!4605555))

(declare-fun m!4605557 () Bool)

(assert (=> bm!286562 m!4605557))

(assert (=> b!4016974 m!4605395))

(assert (=> b!4016981 m!4605309))

(assert (=> b!4016978 m!4605309))

(assert (=> d!1189704 m!4605557))

(assert (=> d!1189704 m!4605393))

(assert (=> b!4016977 m!4605309))

(assert (=> b!4016977 m!4605309))

(declare-fun m!4605559 () Bool)

(assert (=> b!4016977 m!4605559))

(assert (=> b!4016977 m!4605303))

(assert (=> b!4016977 m!4605559))

(assert (=> b!4016977 m!4605303))

(declare-fun m!4605561 () Bool)

(assert (=> b!4016977 m!4605561))

(assert (=> b!4016970 m!4605303))

(assert (=> b!4016970 m!4605303))

(assert (=> b!4016970 m!4605555))

(assert (=> b!4016339 d!1189704))

(declare-fun b!4016985 () Bool)

(declare-fun e!2491364 () Bool)

(assert (=> b!4016985 (= e!2491364 (isPrefix!3929 (tail!6257 lt!1423707) (tail!6257 lt!1423729)))))

(declare-fun b!4016983 () Bool)

(declare-fun e!2491363 () Bool)

(assert (=> b!4016983 (= e!2491363 e!2491364)))

(declare-fun res!1633772 () Bool)

(assert (=> b!4016983 (=> (not res!1633772) (not e!2491364))))

(assert (=> b!4016983 (= res!1633772 (not ((_ is Nil!42975) lt!1423729)))))

(declare-fun b!4016984 () Bool)

(declare-fun res!1633775 () Bool)

(assert (=> b!4016984 (=> (not res!1633775) (not e!2491364))))

(assert (=> b!4016984 (= res!1633775 (= (head!8525 lt!1423707) (head!8525 lt!1423729)))))

(declare-fun b!4016986 () Bool)

(declare-fun e!2491365 () Bool)

(assert (=> b!4016986 (= e!2491365 (>= (size!32134 lt!1423729) (size!32134 lt!1423707)))))

(declare-fun d!1189706 () Bool)

(assert (=> d!1189706 e!2491365))

(declare-fun res!1633774 () Bool)

(assert (=> d!1189706 (=> res!1633774 e!2491365)))

(declare-fun lt!1423974 () Bool)

(assert (=> d!1189706 (= res!1633774 (not lt!1423974))))

(assert (=> d!1189706 (= lt!1423974 e!2491363)))

(declare-fun res!1633773 () Bool)

(assert (=> d!1189706 (=> res!1633773 e!2491363)))

(assert (=> d!1189706 (= res!1633773 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189706 (= (isPrefix!3929 lt!1423707 lt!1423729) lt!1423974)))

(assert (= (and d!1189706 (not res!1633773)) b!4016983))

(assert (= (and b!4016983 res!1633772) b!4016984))

(assert (= (and b!4016984 res!1633775) b!4016985))

(assert (= (and d!1189706 (not res!1633774)) b!4016986))

(assert (=> b!4016985 m!4605303))

(assert (=> b!4016985 m!4605519))

(assert (=> b!4016985 m!4605303))

(assert (=> b!4016985 m!4605519))

(declare-fun m!4605563 () Bool)

(assert (=> b!4016985 m!4605563))

(assert (=> b!4016984 m!4605309))

(declare-fun m!4605565 () Bool)

(assert (=> b!4016984 m!4605565))

(assert (=> b!4016986 m!4605485))

(assert (=> b!4016986 m!4604485))

(assert (=> b!4016339 d!1189706))

(declare-fun d!1189708 () Bool)

(assert (=> d!1189708 (isPrefix!3929 lt!1423707 (++!11244 prefix!494 newSuffix!27))))

(declare-fun lt!1423977 () Unit!62030)

(declare-fun choose!24300 (List!43099 List!43099 List!43099) Unit!62030)

(assert (=> d!1189708 (= lt!1423977 (choose!24300 lt!1423707 prefix!494 newSuffix!27))))

(assert (=> d!1189708 (isPrefix!3929 lt!1423707 prefix!494)))

(assert (=> d!1189708 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!742 lt!1423707 prefix!494 newSuffix!27) lt!1423977)))

(declare-fun bs!589696 () Bool)

(assert (= bs!589696 d!1189708))

(assert (=> bs!589696 m!4604579))

(assert (=> bs!589696 m!4604579))

(declare-fun m!4605567 () Bool)

(assert (=> bs!589696 m!4605567))

(declare-fun m!4605569 () Bool)

(assert (=> bs!589696 m!4605569))

(assert (=> bs!589696 m!4604469))

(assert (=> b!4016339 d!1189708))

(declare-fun d!1189710 () Bool)

(assert (=> d!1189710 (isPrefix!3929 lt!1423707 (++!11244 prefix!494 suffix!1299))))

(declare-fun lt!1423978 () Unit!62030)

(assert (=> d!1189710 (= lt!1423978 (choose!24300 lt!1423707 prefix!494 suffix!1299))))

(assert (=> d!1189710 (isPrefix!3929 lt!1423707 prefix!494)))

(assert (=> d!1189710 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!742 lt!1423707 prefix!494 suffix!1299) lt!1423978)))

(declare-fun bs!589697 () Bool)

(assert (= bs!589697 d!1189710))

(assert (=> bs!589697 m!4604585))

(assert (=> bs!589697 m!4604585))

(declare-fun m!4605571 () Bool)

(assert (=> bs!589697 m!4605571))

(declare-fun m!4605573 () Bool)

(assert (=> bs!589697 m!4605573))

(assert (=> bs!589697 m!4604469))

(assert (=> b!4016339 d!1189710))

(declare-fun b!4016988 () Bool)

(declare-fun e!2491367 () List!43099)

(assert (=> b!4016988 (= e!2491367 (Cons!42975 (h!48395 lt!1423707) (++!11244 (t!333384 lt!1423707) lt!1423693)))))

(declare-fun lt!1423979 () List!43099)

(declare-fun e!2491366 () Bool)

(declare-fun b!4016990 () Bool)

(assert (=> b!4016990 (= e!2491366 (or (not (= lt!1423693 Nil!42975)) (= lt!1423979 lt!1423707)))))

(declare-fun b!4016989 () Bool)

(declare-fun res!1633777 () Bool)

(assert (=> b!4016989 (=> (not res!1633777) (not e!2491366))))

(assert (=> b!4016989 (= res!1633777 (= (size!32134 lt!1423979) (+ (size!32134 lt!1423707) (size!32134 lt!1423693))))))

(declare-fun d!1189712 () Bool)

(assert (=> d!1189712 e!2491366))

(declare-fun res!1633776 () Bool)

(assert (=> d!1189712 (=> (not res!1633776) (not e!2491366))))

(assert (=> d!1189712 (= res!1633776 (= (content!6523 lt!1423979) ((_ map or) (content!6523 lt!1423707) (content!6523 lt!1423693))))))

(assert (=> d!1189712 (= lt!1423979 e!2491367)))

(declare-fun c!694388 () Bool)

(assert (=> d!1189712 (= c!694388 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189712 (= (++!11244 lt!1423707 lt!1423693) lt!1423979)))

(declare-fun b!4016987 () Bool)

(assert (=> b!4016987 (= e!2491367 lt!1423693)))

(assert (= (and d!1189712 c!694388) b!4016987))

(assert (= (and d!1189712 (not c!694388)) b!4016988))

(assert (= (and d!1189712 res!1633776) b!4016989))

(assert (= (and b!4016989 res!1633777) b!4016990))

(declare-fun m!4605575 () Bool)

(assert (=> b!4016988 m!4605575))

(declare-fun m!4605577 () Bool)

(assert (=> b!4016989 m!4605577))

(assert (=> b!4016989 m!4604485))

(declare-fun m!4605579 () Bool)

(assert (=> b!4016989 m!4605579))

(declare-fun m!4605581 () Bool)

(assert (=> d!1189712 m!4605581))

(assert (=> d!1189712 m!4605385))

(declare-fun m!4605583 () Bool)

(assert (=> d!1189712 m!4605583))

(assert (=> b!4016356 d!1189712))

(declare-fun b!4016992 () Bool)

(declare-fun e!2491369 () List!43099)

(assert (=> b!4016992 (= e!2491369 (Cons!42975 (h!48395 lt!1423704) (++!11244 (t!333384 lt!1423704) suffix!1299)))))

(declare-fun b!4016994 () Bool)

(declare-fun lt!1423980 () List!43099)

(declare-fun e!2491368 () Bool)

(assert (=> b!4016994 (= e!2491368 (or (not (= suffix!1299 Nil!42975)) (= lt!1423980 lt!1423704)))))

(declare-fun b!4016993 () Bool)

(declare-fun res!1633779 () Bool)

(assert (=> b!4016993 (=> (not res!1633779) (not e!2491368))))

(assert (=> b!4016993 (= res!1633779 (= (size!32134 lt!1423980) (+ (size!32134 lt!1423704) (size!32134 suffix!1299))))))

(declare-fun d!1189714 () Bool)

(assert (=> d!1189714 e!2491368))

(declare-fun res!1633778 () Bool)

(assert (=> d!1189714 (=> (not res!1633778) (not e!2491368))))

(assert (=> d!1189714 (= res!1633778 (= (content!6523 lt!1423980) ((_ map or) (content!6523 lt!1423704) (content!6523 suffix!1299))))))

(assert (=> d!1189714 (= lt!1423980 e!2491369)))

(declare-fun c!694389 () Bool)

(assert (=> d!1189714 (= c!694389 ((_ is Nil!42975) lt!1423704))))

(assert (=> d!1189714 (= (++!11244 lt!1423704 suffix!1299) lt!1423980)))

(declare-fun b!4016991 () Bool)

(assert (=> b!4016991 (= e!2491369 suffix!1299)))

(assert (= (and d!1189714 c!694389) b!4016991))

(assert (= (and d!1189714 (not c!694389)) b!4016992))

(assert (= (and d!1189714 res!1633778) b!4016993))

(assert (= (and b!4016993 res!1633779) b!4016994))

(declare-fun m!4605585 () Bool)

(assert (=> b!4016992 m!4605585))

(declare-fun m!4605587 () Bool)

(assert (=> b!4016993 m!4605587))

(declare-fun m!4605589 () Bool)

(assert (=> b!4016993 m!4605589))

(assert (=> b!4016993 m!4604493))

(declare-fun m!4605591 () Bool)

(assert (=> d!1189714 m!4605591))

(declare-fun m!4605593 () Bool)

(assert (=> d!1189714 m!4605593))

(declare-fun m!4605595 () Bool)

(assert (=> d!1189714 m!4605595))

(assert (=> b!4016356 d!1189714))

(declare-fun b!4016996 () Bool)

(declare-fun e!2491371 () List!43099)

(assert (=> b!4016996 (= e!2491371 (Cons!42975 (h!48395 lt!1423735) (++!11244 (t!333384 lt!1423735) suffix!1299)))))

(declare-fun b!4016998 () Bool)

(declare-fun e!2491370 () Bool)

(declare-fun lt!1423981 () List!43099)

(assert (=> b!4016998 (= e!2491370 (or (not (= suffix!1299 Nil!42975)) (= lt!1423981 lt!1423735)))))

(declare-fun b!4016997 () Bool)

(declare-fun res!1633781 () Bool)

(assert (=> b!4016997 (=> (not res!1633781) (not e!2491370))))

(assert (=> b!4016997 (= res!1633781 (= (size!32134 lt!1423981) (+ (size!32134 lt!1423735) (size!32134 suffix!1299))))))

(declare-fun d!1189716 () Bool)

(assert (=> d!1189716 e!2491370))

(declare-fun res!1633780 () Bool)

(assert (=> d!1189716 (=> (not res!1633780) (not e!2491370))))

(assert (=> d!1189716 (= res!1633780 (= (content!6523 lt!1423981) ((_ map or) (content!6523 lt!1423735) (content!6523 suffix!1299))))))

(assert (=> d!1189716 (= lt!1423981 e!2491371)))

(declare-fun c!694390 () Bool)

(assert (=> d!1189716 (= c!694390 ((_ is Nil!42975) lt!1423735))))

(assert (=> d!1189716 (= (++!11244 lt!1423735 suffix!1299) lt!1423981)))

(declare-fun b!4016995 () Bool)

(assert (=> b!4016995 (= e!2491371 suffix!1299)))

(assert (= (and d!1189716 c!694390) b!4016995))

(assert (= (and d!1189716 (not c!694390)) b!4016996))

(assert (= (and d!1189716 res!1633780) b!4016997))

(assert (= (and b!4016997 res!1633781) b!4016998))

(declare-fun m!4605597 () Bool)

(assert (=> b!4016996 m!4605597))

(declare-fun m!4605599 () Bool)

(assert (=> b!4016997 m!4605599))

(assert (=> b!4016997 m!4605421))

(assert (=> b!4016997 m!4604493))

(declare-fun m!4605601 () Bool)

(assert (=> d!1189716 m!4605601))

(assert (=> d!1189716 m!4605425))

(assert (=> d!1189716 m!4605595))

(assert (=> b!4016356 d!1189716))

(declare-fun d!1189718 () Bool)

(assert (=> d!1189718 (= (++!11244 (++!11244 lt!1423707 lt!1423735) suffix!1299) (++!11244 lt!1423707 (++!11244 lt!1423735 suffix!1299)))))

(declare-fun lt!1423982 () Unit!62030)

(assert (=> d!1189718 (= lt!1423982 (choose!24299 lt!1423707 lt!1423735 suffix!1299))))

(assert (=> d!1189718 (= (lemmaConcatAssociativity!2554 lt!1423707 lt!1423735 suffix!1299) lt!1423982)))

(declare-fun bs!589698 () Bool)

(assert (= bs!589698 d!1189718))

(assert (=> bs!589698 m!4604627))

(assert (=> bs!589698 m!4604465))

(declare-fun m!4605603 () Bool)

(assert (=> bs!589698 m!4605603))

(declare-fun m!4605605 () Bool)

(assert (=> bs!589698 m!4605605))

(assert (=> bs!589698 m!4604465))

(assert (=> bs!589698 m!4604627))

(declare-fun m!4605607 () Bool)

(assert (=> bs!589698 m!4605607))

(assert (=> b!4016356 d!1189718))

(declare-fun d!1189720 () Bool)

(declare-fun lt!1423985 () Int)

(assert (=> d!1189720 (>= lt!1423985 0)))

(declare-fun e!2491374 () Int)

(assert (=> d!1189720 (= lt!1423985 e!2491374)))

(declare-fun c!694393 () Bool)

(assert (=> d!1189720 (= c!694393 ((_ is Nil!42975) suffix!1299))))

(assert (=> d!1189720 (= (size!32134 suffix!1299) lt!1423985)))

(declare-fun b!4017003 () Bool)

(assert (=> b!4017003 (= e!2491374 0)))

(declare-fun b!4017004 () Bool)

(assert (=> b!4017004 (= e!2491374 (+ 1 (size!32134 (t!333384 suffix!1299))))))

(assert (= (and d!1189720 c!694393) b!4017003))

(assert (= (and d!1189720 (not c!694393)) b!4017004))

(declare-fun m!4605609 () Bool)

(assert (=> b!4017004 m!4605609))

(assert (=> b!4016335 d!1189720))

(declare-fun d!1189722 () Bool)

(declare-fun lt!1423986 () Int)

(assert (=> d!1189722 (>= lt!1423986 0)))

(declare-fun e!2491375 () Int)

(assert (=> d!1189722 (= lt!1423986 e!2491375)))

(declare-fun c!694394 () Bool)

(assert (=> d!1189722 (= c!694394 ((_ is Nil!42975) newSuffix!27))))

(assert (=> d!1189722 (= (size!32134 newSuffix!27) lt!1423986)))

(declare-fun b!4017005 () Bool)

(assert (=> b!4017005 (= e!2491375 0)))

(declare-fun b!4017006 () Bool)

(assert (=> b!4017006 (= e!2491375 (+ 1 (size!32134 (t!333384 newSuffix!27))))))

(assert (= (and d!1189722 c!694394) b!4017005))

(assert (= (and d!1189722 (not c!694394)) b!4017006))

(declare-fun m!4605611 () Bool)

(assert (=> b!4017006 m!4605611))

(assert (=> b!4016335 d!1189722))

(declare-fun b!4017009 () Bool)

(declare-fun e!2491377 () Bool)

(assert (=> b!4017009 (= e!2491377 (isPrefix!3929 (tail!6257 lt!1423698) (tail!6257 lt!1423734)))))

(declare-fun b!4017007 () Bool)

(declare-fun e!2491376 () Bool)

(assert (=> b!4017007 (= e!2491376 e!2491377)))

(declare-fun res!1633782 () Bool)

(assert (=> b!4017007 (=> (not res!1633782) (not e!2491377))))

(assert (=> b!4017007 (= res!1633782 (not ((_ is Nil!42975) lt!1423734)))))

(declare-fun b!4017008 () Bool)

(declare-fun res!1633785 () Bool)

(assert (=> b!4017008 (=> (not res!1633785) (not e!2491377))))

(assert (=> b!4017008 (= res!1633785 (= (head!8525 lt!1423698) (head!8525 lt!1423734)))))

(declare-fun b!4017010 () Bool)

(declare-fun e!2491378 () Bool)

(assert (=> b!4017010 (= e!2491378 (>= (size!32134 lt!1423734) (size!32134 lt!1423698)))))

(declare-fun d!1189724 () Bool)

(assert (=> d!1189724 e!2491378))

(declare-fun res!1633784 () Bool)

(assert (=> d!1189724 (=> res!1633784 e!2491378)))

(declare-fun lt!1423987 () Bool)

(assert (=> d!1189724 (= res!1633784 (not lt!1423987))))

(assert (=> d!1189724 (= lt!1423987 e!2491376)))

(declare-fun res!1633783 () Bool)

(assert (=> d!1189724 (=> res!1633783 e!2491376)))

(assert (=> d!1189724 (= res!1633783 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189724 (= (isPrefix!3929 lt!1423698 lt!1423734) lt!1423987)))

(assert (= (and d!1189724 (not res!1633783)) b!4017007))

(assert (= (and b!4017007 res!1633782) b!4017008))

(assert (= (and b!4017008 res!1633785) b!4017009))

(assert (= (and d!1189724 (not res!1633784)) b!4017010))

(assert (=> b!4017009 m!4604785))

(assert (=> b!4017009 m!4605327))

(assert (=> b!4017009 m!4604785))

(assert (=> b!4017009 m!4605327))

(declare-fun m!4605613 () Bool)

(assert (=> b!4017009 m!4605613))

(assert (=> b!4017008 m!4604791))

(assert (=> b!4017008 m!4605331))

(assert (=> b!4017010 m!4605257))

(assert (=> b!4017010 m!4604601))

(assert (=> b!4016336 d!1189724))

(declare-fun b!4017013 () Bool)

(declare-fun e!2491380 () Bool)

(assert (=> b!4017013 (= e!2491380 (isPrefix!3929 (tail!6257 lt!1423698) (tail!6257 lt!1423699)))))

(declare-fun b!4017011 () Bool)

(declare-fun e!2491379 () Bool)

(assert (=> b!4017011 (= e!2491379 e!2491380)))

(declare-fun res!1633786 () Bool)

(assert (=> b!4017011 (=> (not res!1633786) (not e!2491380))))

(assert (=> b!4017011 (= res!1633786 (not ((_ is Nil!42975) lt!1423699)))))

(declare-fun b!4017012 () Bool)

(declare-fun res!1633789 () Bool)

(assert (=> b!4017012 (=> (not res!1633789) (not e!2491380))))

(assert (=> b!4017012 (= res!1633789 (= (head!8525 lt!1423698) (head!8525 lt!1423699)))))

(declare-fun b!4017014 () Bool)

(declare-fun e!2491381 () Bool)

(assert (=> b!4017014 (= e!2491381 (>= (size!32134 lt!1423699) (size!32134 lt!1423698)))))

(declare-fun d!1189726 () Bool)

(assert (=> d!1189726 e!2491381))

(declare-fun res!1633788 () Bool)

(assert (=> d!1189726 (=> res!1633788 e!2491381)))

(declare-fun lt!1423988 () Bool)

(assert (=> d!1189726 (= res!1633788 (not lt!1423988))))

(assert (=> d!1189726 (= lt!1423988 e!2491379)))

(declare-fun res!1633787 () Bool)

(assert (=> d!1189726 (=> res!1633787 e!2491379)))

(assert (=> d!1189726 (= res!1633787 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189726 (= (isPrefix!3929 lt!1423698 lt!1423699) lt!1423988)))

(assert (= (and d!1189726 (not res!1633787)) b!4017011))

(assert (= (and b!4017011 res!1633786) b!4017012))

(assert (= (and b!4017012 res!1633789) b!4017013))

(assert (= (and d!1189726 (not res!1633788)) b!4017014))

(assert (=> b!4017013 m!4604785))

(declare-fun m!4605615 () Bool)

(assert (=> b!4017013 m!4605615))

(assert (=> b!4017013 m!4604785))

(assert (=> b!4017013 m!4605615))

(declare-fun m!4605617 () Bool)

(assert (=> b!4017013 m!4605617))

(assert (=> b!4017012 m!4604791))

(declare-fun m!4605619 () Bool)

(assert (=> b!4017012 m!4605619))

(declare-fun m!4605621 () Bool)

(assert (=> b!4017014 m!4605621))

(assert (=> b!4017014 m!4604601))

(assert (=> b!4016336 d!1189726))

(declare-fun d!1189728 () Bool)

(assert (=> d!1189728 (isPrefix!3929 lt!1423698 (++!11244 lt!1423729 lt!1423739))))

(declare-fun lt!1423989 () Unit!62030)

(assert (=> d!1189728 (= lt!1423989 (choose!24300 lt!1423698 lt!1423729 lt!1423739))))

(assert (=> d!1189728 (isPrefix!3929 lt!1423698 lt!1423729)))

(assert (=> d!1189728 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!742 lt!1423698 lt!1423729 lt!1423739) lt!1423989)))

(declare-fun bs!589699 () Bool)

(assert (= bs!589699 d!1189728))

(assert (=> bs!589699 m!4604571))

(assert (=> bs!589699 m!4604571))

(declare-fun m!4605623 () Bool)

(assert (=> bs!589699 m!4605623))

(declare-fun m!4605625 () Bool)

(assert (=> bs!589699 m!4605625))

(assert (=> bs!589699 m!4604539))

(assert (=> b!4016336 d!1189728))

(declare-fun b!4017017 () Bool)

(declare-fun e!2491383 () Bool)

(assert (=> b!4017017 (= e!2491383 (isPrefix!3929 (tail!6257 lt!1423698) (tail!6257 lt!1423729)))))

(declare-fun b!4017015 () Bool)

(declare-fun e!2491382 () Bool)

(assert (=> b!4017015 (= e!2491382 e!2491383)))

(declare-fun res!1633790 () Bool)

(assert (=> b!4017015 (=> (not res!1633790) (not e!2491383))))

(assert (=> b!4017015 (= res!1633790 (not ((_ is Nil!42975) lt!1423729)))))

(declare-fun b!4017016 () Bool)

(declare-fun res!1633793 () Bool)

(assert (=> b!4017016 (=> (not res!1633793) (not e!2491383))))

(assert (=> b!4017016 (= res!1633793 (= (head!8525 lt!1423698) (head!8525 lt!1423729)))))

(declare-fun b!4017018 () Bool)

(declare-fun e!2491384 () Bool)

(assert (=> b!4017018 (= e!2491384 (>= (size!32134 lt!1423729) (size!32134 lt!1423698)))))

(declare-fun d!1189730 () Bool)

(assert (=> d!1189730 e!2491384))

(declare-fun res!1633792 () Bool)

(assert (=> d!1189730 (=> res!1633792 e!2491384)))

(declare-fun lt!1423990 () Bool)

(assert (=> d!1189730 (= res!1633792 (not lt!1423990))))

(assert (=> d!1189730 (= lt!1423990 e!2491382)))

(declare-fun res!1633791 () Bool)

(assert (=> d!1189730 (=> res!1633791 e!2491382)))

(assert (=> d!1189730 (= res!1633791 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189730 (= (isPrefix!3929 lt!1423698 lt!1423729) lt!1423990)))

(assert (= (and d!1189730 (not res!1633791)) b!4017015))

(assert (= (and b!4017015 res!1633790) b!4017016))

(assert (= (and b!4017016 res!1633793) b!4017017))

(assert (= (and d!1189730 (not res!1633792)) b!4017018))

(assert (=> b!4017017 m!4604785))

(assert (=> b!4017017 m!4605519))

(assert (=> b!4017017 m!4604785))

(assert (=> b!4017017 m!4605519))

(declare-fun m!4605627 () Bool)

(assert (=> b!4017017 m!4605627))

(assert (=> b!4017016 m!4604791))

(assert (=> b!4017016 m!4605565))

(assert (=> b!4017018 m!4605485))

(assert (=> b!4017018 m!4604601))

(assert (=> b!4016364 d!1189730))

(declare-fun d!1189732 () Bool)

(declare-fun lt!1423991 () Int)

(assert (=> d!1189732 (>= lt!1423991 0)))

(declare-fun e!2491385 () Int)

(assert (=> d!1189732 (= lt!1423991 e!2491385)))

(declare-fun c!694395 () Bool)

(assert (=> d!1189732 (= c!694395 ((_ is Nil!42975) (originalCharacters!7442 token!484)))))

(assert (=> d!1189732 (= (size!32134 (originalCharacters!7442 token!484)) lt!1423991)))

(declare-fun b!4017019 () Bool)

(assert (=> b!4017019 (= e!2491385 0)))

(declare-fun b!4017020 () Bool)

(assert (=> b!4017020 (= e!2491385 (+ 1 (size!32134 (t!333384 (originalCharacters!7442 token!484)))))))

(assert (= (and d!1189732 c!694395) b!4017019))

(assert (= (and d!1189732 (not c!694395)) b!4017020))

(declare-fun m!4605629 () Bool)

(assert (=> b!4017020 m!4605629))

(assert (=> b!4016343 d!1189732))

(declare-fun d!1189734 () Bool)

(declare-fun res!1633796 () Bool)

(declare-fun e!2491388 () Bool)

(assert (=> d!1189734 (=> (not res!1633796) (not e!2491388))))

(declare-fun rulesValid!2665 (LexerInterface!6431 List!43100) Bool)

(assert (=> d!1189734 (= res!1633796 (rulesValid!2665 thiss!21717 rules!2999))))

(assert (=> d!1189734 (= (rulesInvariant!5774 thiss!21717 rules!2999) e!2491388)))

(declare-fun b!4017023 () Bool)

(declare-datatypes ((List!43102 0))(
  ( (Nil!42978) (Cons!42978 (h!48398 String!49078) (t!333435 List!43102)) )
))
(declare-fun noDuplicateTag!2666 (LexerInterface!6431 List!43100 List!43102) Bool)

(assert (=> b!4017023 (= e!2491388 (noDuplicateTag!2666 thiss!21717 rules!2999 Nil!42978))))

(assert (= (and d!1189734 res!1633796) b!4017023))

(declare-fun m!4605631 () Bool)

(assert (=> d!1189734 m!4605631))

(declare-fun m!4605633 () Bool)

(assert (=> b!4017023 m!4605633))

(assert (=> b!4016344 d!1189734))

(declare-fun d!1189736 () Bool)

(assert (=> d!1189736 (isPrefix!3929 lt!1423698 (++!11244 lt!1423698 (_2!24193 (v!39627 lt!1423731))))))

(declare-fun lt!1423992 () Unit!62030)

(assert (=> d!1189736 (= lt!1423992 (choose!24291 lt!1423698 (_2!24193 (v!39627 lt!1423731))))))

(assert (=> d!1189736 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423698 (_2!24193 (v!39627 lt!1423731))) lt!1423992)))

(declare-fun bs!589700 () Bool)

(assert (= bs!589700 d!1189736))

(assert (=> bs!589700 m!4604609))

(assert (=> bs!589700 m!4604609))

(declare-fun m!4605635 () Bool)

(assert (=> bs!589700 m!4605635))

(declare-fun m!4605637 () Bool)

(assert (=> bs!589700 m!4605637))

(assert (=> b!4016340 d!1189736))

(declare-fun b!4017026 () Bool)

(declare-fun e!2491390 () Bool)

(assert (=> b!4017026 (= e!2491390 (isPrefix!3929 (tail!6257 lt!1423698) (tail!6257 lt!1423732)))))

(declare-fun b!4017024 () Bool)

(declare-fun e!2491389 () Bool)

(assert (=> b!4017024 (= e!2491389 e!2491390)))

(declare-fun res!1633797 () Bool)

(assert (=> b!4017024 (=> (not res!1633797) (not e!2491390))))

(assert (=> b!4017024 (= res!1633797 (not ((_ is Nil!42975) lt!1423732)))))

(declare-fun b!4017025 () Bool)

(declare-fun res!1633800 () Bool)

(assert (=> b!4017025 (=> (not res!1633800) (not e!2491390))))

(assert (=> b!4017025 (= res!1633800 (= (head!8525 lt!1423698) (head!8525 lt!1423732)))))

(declare-fun b!4017027 () Bool)

(declare-fun e!2491391 () Bool)

(assert (=> b!4017027 (= e!2491391 (>= (size!32134 lt!1423732) (size!32134 lt!1423698)))))

(declare-fun d!1189738 () Bool)

(assert (=> d!1189738 e!2491391))

(declare-fun res!1633799 () Bool)

(assert (=> d!1189738 (=> res!1633799 e!2491391)))

(declare-fun lt!1423993 () Bool)

(assert (=> d!1189738 (= res!1633799 (not lt!1423993))))

(assert (=> d!1189738 (= lt!1423993 e!2491389)))

(declare-fun res!1633798 () Bool)

(assert (=> d!1189738 (=> res!1633798 e!2491389)))

(assert (=> d!1189738 (= res!1633798 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189738 (= (isPrefix!3929 lt!1423698 lt!1423732) lt!1423993)))

(assert (= (and d!1189738 (not res!1633798)) b!4017024))

(assert (= (and b!4017024 res!1633797) b!4017025))

(assert (= (and b!4017025 res!1633800) b!4017026))

(assert (= (and d!1189738 (not res!1633799)) b!4017027))

(assert (=> b!4017026 m!4604785))

(declare-fun m!4605639 () Bool)

(assert (=> b!4017026 m!4605639))

(assert (=> b!4017026 m!4604785))

(assert (=> b!4017026 m!4605639))

(declare-fun m!4605641 () Bool)

(assert (=> b!4017026 m!4605641))

(assert (=> b!4017025 m!4604791))

(declare-fun m!4605643 () Bool)

(assert (=> b!4017025 m!4605643))

(declare-fun m!4605645 () Bool)

(assert (=> b!4017027 m!4605645))

(assert (=> b!4017027 m!4604601))

(assert (=> b!4016340 d!1189738))

(declare-fun b!4017030 () Bool)

(declare-fun e!2491393 () Bool)

(assert (=> b!4017030 (= e!2491393 (isPrefix!3929 (tail!6257 lt!1423698) (tail!6257 (++!11244 lt!1423698 newSuffixResult!27))))))

(declare-fun b!4017028 () Bool)

(declare-fun e!2491392 () Bool)

(assert (=> b!4017028 (= e!2491392 e!2491393)))

(declare-fun res!1633801 () Bool)

(assert (=> b!4017028 (=> (not res!1633801) (not e!2491393))))

(assert (=> b!4017028 (= res!1633801 (not ((_ is Nil!42975) (++!11244 lt!1423698 newSuffixResult!27))))))

(declare-fun b!4017029 () Bool)

(declare-fun res!1633804 () Bool)

(assert (=> b!4017029 (=> (not res!1633804) (not e!2491393))))

(assert (=> b!4017029 (= res!1633804 (= (head!8525 lt!1423698) (head!8525 (++!11244 lt!1423698 newSuffixResult!27))))))

(declare-fun b!4017031 () Bool)

(declare-fun e!2491394 () Bool)

(assert (=> b!4017031 (= e!2491394 (>= (size!32134 (++!11244 lt!1423698 newSuffixResult!27)) (size!32134 lt!1423698)))))

(declare-fun d!1189740 () Bool)

(assert (=> d!1189740 e!2491394))

(declare-fun res!1633803 () Bool)

(assert (=> d!1189740 (=> res!1633803 e!2491394)))

(declare-fun lt!1423994 () Bool)

(assert (=> d!1189740 (= res!1633803 (not lt!1423994))))

(assert (=> d!1189740 (= lt!1423994 e!2491392)))

(declare-fun res!1633802 () Bool)

(assert (=> d!1189740 (=> res!1633802 e!2491392)))

(assert (=> d!1189740 (= res!1633802 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189740 (= (isPrefix!3929 lt!1423698 (++!11244 lt!1423698 newSuffixResult!27)) lt!1423994)))

(assert (= (and d!1189740 (not res!1633802)) b!4017028))

(assert (= (and b!4017028 res!1633801) b!4017029))

(assert (= (and b!4017029 res!1633804) b!4017030))

(assert (= (and d!1189740 (not res!1633803)) b!4017031))

(assert (=> b!4017030 m!4604785))

(assert (=> b!4017030 m!4604605))

(declare-fun m!4605647 () Bool)

(assert (=> b!4017030 m!4605647))

(assert (=> b!4017030 m!4604785))

(assert (=> b!4017030 m!4605647))

(declare-fun m!4605649 () Bool)

(assert (=> b!4017030 m!4605649))

(assert (=> b!4017029 m!4604791))

(assert (=> b!4017029 m!4604605))

(declare-fun m!4605651 () Bool)

(assert (=> b!4017029 m!4605651))

(assert (=> b!4017031 m!4604605))

(declare-fun m!4605653 () Bool)

(assert (=> b!4017031 m!4605653))

(assert (=> b!4017031 m!4604601))

(assert (=> b!4016340 d!1189740))

(declare-fun b!4017032 () Bool)

(declare-fun res!1633811 () Bool)

(declare-fun e!2491397 () Bool)

(assert (=> b!4017032 (=> (not res!1633811) (not e!2491397))))

(declare-fun lt!1423995 () Option!9256)

(assert (=> b!4017032 (= res!1633811 (= (rule!9892 (_1!24193 (get!14121 lt!1423995))) (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun b!4017033 () Bool)

(assert (=> b!4017033 (= e!2491397 (= (size!32133 (_1!24193 (get!14121 lt!1423995))) (size!32134 (originalCharacters!7442 (_1!24193 (get!14121 lt!1423995))))))))

(declare-fun b!4017034 () Bool)

(declare-fun res!1633809 () Bool)

(assert (=> b!4017034 (=> (not res!1633809) (not e!2491397))))

(assert (=> b!4017034 (= res!1633809 (< (size!32134 (_2!24193 (get!14121 lt!1423995))) (size!32134 lt!1423729)))))

(declare-fun b!4017035 () Bool)

(declare-fun res!1633810 () Bool)

(assert (=> b!4017035 (=> (not res!1633810) (not e!2491397))))

(assert (=> b!4017035 (= res!1633810 (= (value!215631 (_1!24193 (get!14121 lt!1423995))) (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (get!14121 lt!1423995)))) (seqFromList!5067 (originalCharacters!7442 (_1!24193 (get!14121 lt!1423995)))))))))

(declare-fun b!4017036 () Bool)

(declare-fun res!1633808 () Bool)

(assert (=> b!4017036 (=> (not res!1633808) (not e!2491397))))

(assert (=> b!4017036 (= res!1633808 (= (++!11244 (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423995)))) (_2!24193 (get!14121 lt!1423995))) lt!1423729))))

(declare-fun b!4017037 () Bool)

(declare-fun e!2491398 () Bool)

(assert (=> b!4017037 (= e!2491398 (matchR!5708 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (_1!24195 (findLongestMatchInner!1365 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) Nil!42975 (size!32134 Nil!42975) lt!1423729 lt!1423729 (size!32134 lt!1423729)))))))

(declare-fun b!4017038 () Bool)

(declare-fun e!2491396 () Option!9256)

(declare-fun lt!1423996 () tuple2!42122)

(assert (=> b!4017038 (= e!2491396 (Some!9255 (tuple2!42119 (Token!12823 (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (seqFromList!5067 (_1!24195 lt!1423996))) (rule!9892 (_1!24193 (v!39627 lt!1423731))) (size!32136 (seqFromList!5067 (_1!24195 lt!1423996))) (_1!24195 lt!1423996)) (_2!24195 lt!1423996))))))

(declare-fun lt!1423998 () Unit!62030)

(assert (=> b!4017038 (= lt!1423998 (longestMatchIsAcceptedByMatchOrIsEmpty!1338 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) lt!1423729))))

(declare-fun res!1633805 () Bool)

(assert (=> b!4017038 (= res!1633805 (isEmpty!25673 (_1!24195 (findLongestMatchInner!1365 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) Nil!42975 (size!32134 Nil!42975) lt!1423729 lt!1423729 (size!32134 lt!1423729)))))))

(assert (=> b!4017038 (=> res!1633805 e!2491398)))

(assert (=> b!4017038 e!2491398))

(declare-fun lt!1423999 () Unit!62030)

(assert (=> b!4017038 (= lt!1423999 lt!1423998)))

(declare-fun lt!1423997 () Unit!62030)

(assert (=> b!4017038 (= lt!1423997 (lemmaSemiInverse!1885 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (seqFromList!5067 (_1!24195 lt!1423996))))))

(declare-fun b!4017039 () Bool)

(declare-fun e!2491395 () Bool)

(assert (=> b!4017039 (= e!2491395 e!2491397)))

(declare-fun res!1633807 () Bool)

(assert (=> b!4017039 (=> (not res!1633807) (not e!2491397))))

(assert (=> b!4017039 (= res!1633807 (matchR!5708 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1423995))))))))

(declare-fun b!4017040 () Bool)

(assert (=> b!4017040 (= e!2491396 None!9255)))

(declare-fun d!1189742 () Bool)

(assert (=> d!1189742 e!2491395))

(declare-fun res!1633806 () Bool)

(assert (=> d!1189742 (=> res!1633806 e!2491395)))

(assert (=> d!1189742 (= res!1633806 (isEmpty!25674 lt!1423995))))

(assert (=> d!1189742 (= lt!1423995 e!2491396)))

(declare-fun c!694396 () Bool)

(assert (=> d!1189742 (= c!694396 (isEmpty!25673 (_1!24195 lt!1423996)))))

(assert (=> d!1189742 (= lt!1423996 (findLongestMatch!1278 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) lt!1423729))))

(assert (=> d!1189742 (ruleValid!2774 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))))))

(assert (=> d!1189742 (= (maxPrefixOneRule!2749 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))) lt!1423729) lt!1423995)))

(assert (= (and d!1189742 c!694396) b!4017040))

(assert (= (and d!1189742 (not c!694396)) b!4017038))

(assert (= (and b!4017038 (not res!1633805)) b!4017037))

(assert (= (and d!1189742 (not res!1633806)) b!4017039))

(assert (= (and b!4017039 res!1633807) b!4017036))

(assert (= (and b!4017036 res!1633808) b!4017034))

(assert (= (and b!4017034 res!1633809) b!4017032))

(assert (= (and b!4017032 res!1633811) b!4017035))

(assert (= (and b!4017035 res!1633810) b!4017033))

(declare-fun m!4605655 () Bool)

(assert (=> b!4017034 m!4605655))

(declare-fun m!4605657 () Bool)

(assert (=> b!4017034 m!4605657))

(assert (=> b!4017034 m!4605485))

(assert (=> b!4017039 m!4605655))

(declare-fun m!4605659 () Bool)

(assert (=> b!4017039 m!4605659))

(assert (=> b!4017039 m!4605659))

(declare-fun m!4605661 () Bool)

(assert (=> b!4017039 m!4605661))

(assert (=> b!4017039 m!4605661))

(declare-fun m!4605663 () Bool)

(assert (=> b!4017039 m!4605663))

(declare-fun m!4605665 () Bool)

(assert (=> b!4017038 m!4605665))

(declare-fun m!4605667 () Bool)

(assert (=> b!4017038 m!4605667))

(declare-fun m!4605669 () Bool)

(assert (=> b!4017038 m!4605669))

(assert (=> b!4017038 m!4605665))

(assert (=> b!4017038 m!4605665))

(declare-fun m!4605671 () Bool)

(assert (=> b!4017038 m!4605671))

(assert (=> b!4017038 m!4605273))

(assert (=> b!4017038 m!4605485))

(declare-fun m!4605673 () Bool)

(assert (=> b!4017038 m!4605673))

(assert (=> b!4017038 m!4605485))

(declare-fun m!4605675 () Bool)

(assert (=> b!4017038 m!4605675))

(assert (=> b!4017038 m!4605665))

(declare-fun m!4605677 () Bool)

(assert (=> b!4017038 m!4605677))

(assert (=> b!4017038 m!4605273))

(assert (=> b!4017037 m!4605273))

(assert (=> b!4017037 m!4605485))

(assert (=> b!4017037 m!4605273))

(assert (=> b!4017037 m!4605485))

(assert (=> b!4017037 m!4605673))

(declare-fun m!4605679 () Bool)

(assert (=> b!4017037 m!4605679))

(assert (=> b!4017033 m!4605655))

(declare-fun m!4605681 () Bool)

(assert (=> b!4017033 m!4605681))

(declare-fun m!4605683 () Bool)

(assert (=> d!1189742 m!4605683))

(declare-fun m!4605685 () Bool)

(assert (=> d!1189742 m!4605685))

(declare-fun m!4605687 () Bool)

(assert (=> d!1189742 m!4605687))

(assert (=> d!1189742 m!4604611))

(assert (=> b!4017035 m!4605655))

(declare-fun m!4605689 () Bool)

(assert (=> b!4017035 m!4605689))

(assert (=> b!4017035 m!4605689))

(declare-fun m!4605691 () Bool)

(assert (=> b!4017035 m!4605691))

(assert (=> b!4017032 m!4605655))

(assert (=> b!4017036 m!4605655))

(assert (=> b!4017036 m!4605659))

(assert (=> b!4017036 m!4605659))

(assert (=> b!4017036 m!4605661))

(assert (=> b!4017036 m!4605661))

(declare-fun m!4605693 () Bool)

(assert (=> b!4017036 m!4605693))

(assert (=> b!4016340 d!1189742))

(declare-fun d!1189744 () Bool)

(assert (=> d!1189744 (isPrefix!3929 lt!1423698 (++!11244 lt!1423698 newSuffixResult!27))))

(declare-fun lt!1424000 () Unit!62030)

(assert (=> d!1189744 (= lt!1424000 (choose!24291 lt!1423698 newSuffixResult!27))))

(assert (=> d!1189744 (= (lemmaConcatTwoListThenFirstIsPrefix!2770 lt!1423698 newSuffixResult!27) lt!1424000)))

(declare-fun bs!589701 () Bool)

(assert (= bs!589701 d!1189744))

(assert (=> bs!589701 m!4604605))

(assert (=> bs!589701 m!4604605))

(assert (=> bs!589701 m!4604607))

(declare-fun m!4605695 () Bool)

(assert (=> bs!589701 m!4605695))

(assert (=> b!4016340 d!1189744))

(declare-fun d!1189746 () Bool)

(assert (=> d!1189746 (= (maxPrefixOneRule!2749 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))) lt!1423729) (Some!9255 (tuple2!42119 (Token!12823 (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (seqFromList!5067 lt!1423698)) (rule!9892 (_1!24193 (v!39627 lt!1423731))) (size!32134 lt!1423698) lt!1423698) (_2!24193 (v!39627 lt!1423731)))))))

(declare-fun lt!1424001 () Unit!62030)

(assert (=> d!1189746 (= lt!1424001 (choose!24292 thiss!21717 rules!2999 lt!1423698 lt!1423729 (_2!24193 (v!39627 lt!1423731)) (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))

(assert (=> d!1189746 (not (isEmpty!25670 rules!2999))))

(assert (=> d!1189746 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1567 thiss!21717 rules!2999 lt!1423698 lt!1423729 (_2!24193 (v!39627 lt!1423731)) (rule!9892 (_1!24193 (v!39627 lt!1423731)))) lt!1424001)))

(declare-fun bs!589702 () Bool)

(assert (= bs!589702 d!1189746))

(assert (=> bs!589702 m!4604603))

(assert (=> bs!589702 m!4604601))

(declare-fun m!4605697 () Bool)

(assert (=> bs!589702 m!4605697))

(assert (=> bs!589702 m!4604589))

(assert (=> bs!589702 m!4604473))

(assert (=> bs!589702 m!4604589))

(assert (=> bs!589702 m!4604617))

(assert (=> b!4016340 d!1189746))

(declare-fun d!1189748 () Bool)

(declare-fun e!2491399 () Bool)

(assert (=> d!1189748 e!2491399))

(declare-fun res!1633812 () Bool)

(assert (=> d!1189748 (=> (not res!1633812) (not e!2491399))))

(assert (=> d!1189748 (= res!1633812 (semiInverseModEq!2931 (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))))

(declare-fun Unit!62037 () Unit!62030)

(assert (=> d!1189748 (= (lemmaInv!1057 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) Unit!62037)))

(declare-fun b!4017041 () Bool)

(assert (=> b!4017041 (= e!2491399 (equivClasses!2830 (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))))

(assert (= (and d!1189748 res!1633812) b!4017041))

(declare-fun m!4605699 () Bool)

(assert (=> d!1189748 m!4605699))

(declare-fun m!4605701 () Bool)

(assert (=> b!4017041 m!4605701))

(assert (=> b!4016340 d!1189748))

(declare-fun d!1189750 () Bool)

(assert (=> d!1189750 (= (seqFromList!5067 lt!1423698) (fromListB!2322 lt!1423698))))

(declare-fun bs!589703 () Bool)

(assert (= bs!589703 d!1189750))

(declare-fun m!4605703 () Bool)

(assert (=> bs!589703 m!4605703))

(assert (=> b!4016340 d!1189750))

(declare-fun d!1189752 () Bool)

(assert (=> d!1189752 (ruleValid!2774 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))))))

(declare-fun lt!1424002 () Unit!62030)

(assert (=> d!1189752 (= lt!1424002 (choose!24293 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))) rules!2999))))

(assert (=> d!1189752 (contains!8544 rules!2999 (rule!9892 (_1!24193 (v!39627 lt!1423731))))))

(assert (=> d!1189752 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1848 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731))) rules!2999) lt!1424002)))

(declare-fun bs!589704 () Bool)

(assert (= bs!589704 d!1189752))

(assert (=> bs!589704 m!4604611))

(declare-fun m!4605705 () Bool)

(assert (=> bs!589704 m!4605705))

(assert (=> bs!589704 m!4604511))

(assert (=> b!4016340 d!1189752))

(declare-fun b!4017043 () Bool)

(declare-fun e!2491401 () List!43099)

(assert (=> b!4017043 (= e!2491401 (Cons!42975 (h!48395 lt!1423698) (++!11244 (t!333384 lt!1423698) (_2!24193 (v!39627 lt!1423731)))))))

(declare-fun b!4017045 () Bool)

(declare-fun e!2491400 () Bool)

(declare-fun lt!1424003 () List!43099)

(assert (=> b!4017045 (= e!2491400 (or (not (= (_2!24193 (v!39627 lt!1423731)) Nil!42975)) (= lt!1424003 lt!1423698)))))

(declare-fun b!4017044 () Bool)

(declare-fun res!1633814 () Bool)

(assert (=> b!4017044 (=> (not res!1633814) (not e!2491400))))

(assert (=> b!4017044 (= res!1633814 (= (size!32134 lt!1424003) (+ (size!32134 lt!1423698) (size!32134 (_2!24193 (v!39627 lt!1423731))))))))

(declare-fun d!1189754 () Bool)

(assert (=> d!1189754 e!2491400))

(declare-fun res!1633813 () Bool)

(assert (=> d!1189754 (=> (not res!1633813) (not e!2491400))))

(assert (=> d!1189754 (= res!1633813 (= (content!6523 lt!1424003) ((_ map or) (content!6523 lt!1423698) (content!6523 (_2!24193 (v!39627 lt!1423731))))))))

(assert (=> d!1189754 (= lt!1424003 e!2491401)))

(declare-fun c!694397 () Bool)

(assert (=> d!1189754 (= c!694397 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189754 (= (++!11244 lt!1423698 (_2!24193 (v!39627 lt!1423731))) lt!1424003)))

(declare-fun b!4017042 () Bool)

(assert (=> b!4017042 (= e!2491401 (_2!24193 (v!39627 lt!1423731)))))

(assert (= (and d!1189754 c!694397) b!4017042))

(assert (= (and d!1189754 (not c!694397)) b!4017043))

(assert (= (and d!1189754 res!1633813) b!4017044))

(assert (= (and b!4017044 res!1633814) b!4017045))

(declare-fun m!4605707 () Bool)

(assert (=> b!4017043 m!4605707))

(declare-fun m!4605709 () Bool)

(assert (=> b!4017044 m!4605709))

(assert (=> b!4017044 m!4604601))

(declare-fun m!4605711 () Bool)

(assert (=> b!4017044 m!4605711))

(declare-fun m!4605713 () Bool)

(assert (=> d!1189754 m!4605713))

(assert (=> d!1189754 m!4605513))

(declare-fun m!4605715 () Bool)

(assert (=> d!1189754 m!4605715))

(assert (=> b!4016340 d!1189754))

(declare-fun d!1189756 () Bool)

(declare-fun lt!1424004 () Int)

(assert (=> d!1189756 (>= lt!1424004 0)))

(declare-fun e!2491402 () Int)

(assert (=> d!1189756 (= lt!1424004 e!2491402)))

(declare-fun c!694398 () Bool)

(assert (=> d!1189756 (= c!694398 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189756 (= (size!32134 lt!1423698) lt!1424004)))

(declare-fun b!4017046 () Bool)

(assert (=> b!4017046 (= e!2491402 0)))

(declare-fun b!4017047 () Bool)

(assert (=> b!4017047 (= e!2491402 (+ 1 (size!32134 (t!333384 lt!1423698))))))

(assert (= (and d!1189756 c!694398) b!4017046))

(assert (= (and d!1189756 (not c!694398)) b!4017047))

(declare-fun m!4605717 () Bool)

(assert (=> b!4017047 m!4605717))

(assert (=> b!4016340 d!1189756))

(declare-fun b!4017049 () Bool)

(declare-fun e!2491404 () List!43099)

(assert (=> b!4017049 (= e!2491404 (Cons!42975 (h!48395 lt!1423698) (++!11244 (t!333384 lt!1423698) newSuffixResult!27)))))

(declare-fun lt!1424005 () List!43099)

(declare-fun b!4017051 () Bool)

(declare-fun e!2491403 () Bool)

(assert (=> b!4017051 (= e!2491403 (or (not (= newSuffixResult!27 Nil!42975)) (= lt!1424005 lt!1423698)))))

(declare-fun b!4017050 () Bool)

(declare-fun res!1633816 () Bool)

(assert (=> b!4017050 (=> (not res!1633816) (not e!2491403))))

(assert (=> b!4017050 (= res!1633816 (= (size!32134 lt!1424005) (+ (size!32134 lt!1423698) (size!32134 newSuffixResult!27))))))

(declare-fun d!1189758 () Bool)

(assert (=> d!1189758 e!2491403))

(declare-fun res!1633815 () Bool)

(assert (=> d!1189758 (=> (not res!1633815) (not e!2491403))))

(assert (=> d!1189758 (= res!1633815 (= (content!6523 lt!1424005) ((_ map or) (content!6523 lt!1423698) (content!6523 newSuffixResult!27))))))

(assert (=> d!1189758 (= lt!1424005 e!2491404)))

(declare-fun c!694399 () Bool)

(assert (=> d!1189758 (= c!694399 ((_ is Nil!42975) lt!1423698))))

(assert (=> d!1189758 (= (++!11244 lt!1423698 newSuffixResult!27) lt!1424005)))

(declare-fun b!4017048 () Bool)

(assert (=> b!4017048 (= e!2491404 newSuffixResult!27)))

(assert (= (and d!1189758 c!694399) b!4017048))

(assert (= (and d!1189758 (not c!694399)) b!4017049))

(assert (= (and d!1189758 res!1633815) b!4017050))

(assert (= (and b!4017050 res!1633816) b!4017051))

(declare-fun m!4605719 () Bool)

(assert (=> b!4017049 m!4605719))

(declare-fun m!4605721 () Bool)

(assert (=> b!4017050 m!4605721))

(assert (=> b!4017050 m!4604601))

(assert (=> b!4017050 m!4605447))

(declare-fun m!4605723 () Bool)

(assert (=> d!1189758 m!4605723))

(assert (=> d!1189758 m!4605513))

(assert (=> d!1189758 m!4605451))

(assert (=> b!4016340 d!1189758))

(declare-fun d!1189760 () Bool)

(assert (=> d!1189760 (= (size!32133 (_1!24193 (v!39627 lt!1423731))) (size!32134 (originalCharacters!7442 (_1!24193 (v!39627 lt!1423731)))))))

(declare-fun Unit!62038 () Unit!62030)

(assert (=> d!1189760 (= (lemmaCharactersSize!1401 (_1!24193 (v!39627 lt!1423731))) Unit!62038)))

(declare-fun bs!589705 () Bool)

(assert (= bs!589705 d!1189760))

(declare-fun m!4605725 () Bool)

(assert (=> bs!589705 m!4605725))

(assert (=> b!4016340 d!1189760))

(declare-fun d!1189762 () Bool)

(assert (=> d!1189762 (= (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (seqFromList!5067 lt!1423698)) (dynLambda!18236 (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (seqFromList!5067 lt!1423698)))))

(declare-fun b_lambda!117243 () Bool)

(assert (=> (not b_lambda!117243) (not d!1189762)))

(declare-fun tb!241569 () Bool)

(declare-fun t!333420 () Bool)

(assert (=> (and b!4016342 (= (toValue!9350 (transformation!6842 (rule!9892 token!484))) (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))) t!333420) tb!241569))

(declare-fun result!292780 () Bool)

(assert (=> tb!241569 (= result!292780 (inv!21 (dynLambda!18236 (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (seqFromList!5067 lt!1423698))))))

(declare-fun m!4605727 () Bool)

(assert (=> tb!241569 m!4605727))

(assert (=> d!1189762 t!333420))

(declare-fun b_and!308607 () Bool)

(assert (= b_and!308595 (and (=> t!333420 result!292780) b_and!308607)))

(declare-fun tb!241571 () Bool)

(declare-fun t!333422 () Bool)

(assert (=> (and b!4016361 (= (toValue!9350 (transformation!6842 (h!48396 rules!2999))) (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))) t!333422) tb!241571))

(declare-fun result!292782 () Bool)

(assert (= result!292782 result!292780))

(assert (=> d!1189762 t!333422))

(declare-fun b_and!308609 () Bool)

(assert (= b_and!308597 (and (=> t!333422 result!292782) b_and!308609)))

(assert (=> d!1189762 m!4604589))

(declare-fun m!4605729 () Bool)

(assert (=> d!1189762 m!4605729))

(assert (=> b!4016340 d!1189762))

(declare-fun d!1189764 () Bool)

(declare-fun lt!1424008 () BalanceConc!25700)

(assert (=> d!1189764 (= (list!15976 lt!1424008) (originalCharacters!7442 (_1!24193 (v!39627 lt!1423731))))))

(assert (=> d!1189764 (= lt!1424008 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (value!215631 (_1!24193 (v!39627 lt!1423731)))))))

(assert (=> d!1189764 (= (charsOf!4658 (_1!24193 (v!39627 lt!1423731))) lt!1424008)))

(declare-fun b_lambda!117245 () Bool)

(assert (=> (not b_lambda!117245) (not d!1189764)))

(declare-fun t!333424 () Bool)

(declare-fun tb!241573 () Bool)

(assert (=> (and b!4016342 (= (toChars!9209 (transformation!6842 (rule!9892 token!484))) (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))) t!333424) tb!241573))

(declare-fun b!4017052 () Bool)

(declare-fun e!2491406 () Bool)

(declare-fun tp!1221234 () Bool)

(assert (=> b!4017052 (= e!2491406 (and (inv!57409 (c!694294 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (value!215631 (_1!24193 (v!39627 lt!1423731)))))) tp!1221234))))

(declare-fun result!292784 () Bool)

(assert (=> tb!241573 (= result!292784 (and (inv!57410 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))) (value!215631 (_1!24193 (v!39627 lt!1423731))))) e!2491406))))

(assert (= tb!241573 b!4017052))

(declare-fun m!4605731 () Bool)

(assert (=> b!4017052 m!4605731))

(declare-fun m!4605733 () Bool)

(assert (=> tb!241573 m!4605733))

(assert (=> d!1189764 t!333424))

(declare-fun b_and!308611 () Bool)

(assert (= b_and!308579 (and (=> t!333424 result!292784) b_and!308611)))

(declare-fun tb!241575 () Bool)

(declare-fun t!333426 () Bool)

(assert (=> (and b!4016361 (= (toChars!9209 (transformation!6842 (h!48396 rules!2999))) (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))) t!333426) tb!241575))

(declare-fun result!292786 () Bool)

(assert (= result!292786 result!292784))

(assert (=> d!1189764 t!333426))

(declare-fun b_and!308613 () Bool)

(assert (= b_and!308581 (and (=> t!333426 result!292786) b_and!308613)))

(declare-fun m!4605735 () Bool)

(assert (=> d!1189764 m!4605735))

(declare-fun m!4605737 () Bool)

(assert (=> d!1189764 m!4605737))

(assert (=> b!4016340 d!1189764))

(declare-fun d!1189766 () Bool)

(declare-fun res!1633817 () Bool)

(declare-fun e!2491407 () Bool)

(assert (=> d!1189766 (=> (not res!1633817) (not e!2491407))))

(assert (=> d!1189766 (= res!1633817 (validRegex!5324 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731))))))))

(assert (=> d!1189766 (= (ruleValid!2774 thiss!21717 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) e!2491407)))

(declare-fun b!4017053 () Bool)

(declare-fun res!1633818 () Bool)

(assert (=> b!4017053 (=> (not res!1633818) (not e!2491407))))

(assert (=> b!4017053 (= res!1633818 (not (nullable!4124 (regex!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))))))

(declare-fun b!4017054 () Bool)

(assert (=> b!4017054 (= e!2491407 (not (= (tag!7702 (rule!9892 (_1!24193 (v!39627 lt!1423731)))) (String!49079 ""))))))

(assert (= (and d!1189766 res!1633817) b!4017053))

(assert (= (and b!4017053 res!1633818) b!4017054))

(declare-fun m!4605739 () Bool)

(assert (=> d!1189766 m!4605739))

(declare-fun m!4605741 () Bool)

(assert (=> b!4017053 m!4605741))

(assert (=> b!4016340 d!1189766))

(declare-fun d!1189768 () Bool)

(declare-fun list!15978 (Conc!13053) List!43099)

(assert (=> d!1189768 (= (list!15976 (charsOf!4658 (_1!24193 (v!39627 lt!1423731)))) (list!15978 (c!694294 (charsOf!4658 (_1!24193 (v!39627 lt!1423731))))))))

(declare-fun bs!589706 () Bool)

(assert (= bs!589706 d!1189768))

(declare-fun m!4605743 () Bool)

(assert (=> bs!589706 m!4605743))

(assert (=> b!4016340 d!1189768))

(declare-fun d!1189770 () Bool)

(assert (=> d!1189770 (= (size!32133 token!484) (size!32134 (originalCharacters!7442 token!484)))))

(declare-fun Unit!62039 () Unit!62030)

(assert (=> d!1189770 (= (lemmaCharactersSize!1401 token!484) Unit!62039)))

(declare-fun bs!589707 () Bool)

(assert (= bs!589707 d!1189770))

(assert (=> bs!589707 m!4604513))

(assert (=> b!4016340 d!1189770))

(declare-fun b!4017055 () Bool)

(declare-fun res!1633821 () Bool)

(declare-fun e!2491408 () Bool)

(assert (=> b!4017055 (=> (not res!1633821) (not e!2491408))))

(declare-fun lt!1424009 () Option!9256)

(assert (=> b!4017055 (= res!1633821 (< (size!32134 (_2!24193 (get!14121 lt!1424009))) (size!32134 lt!1423734)))))

(declare-fun b!4017057 () Bool)

(declare-fun e!2491409 () Option!9256)

(declare-fun lt!1424013 () Option!9256)

(declare-fun lt!1424010 () Option!9256)

(assert (=> b!4017057 (= e!2491409 (ite (and ((_ is None!9255) lt!1424013) ((_ is None!9255) lt!1424010)) None!9255 (ite ((_ is None!9255) lt!1424010) lt!1424013 (ite ((_ is None!9255) lt!1424013) lt!1424010 (ite (>= (size!32133 (_1!24193 (v!39627 lt!1424013))) (size!32133 (_1!24193 (v!39627 lt!1424010)))) lt!1424013 lt!1424010)))))))

(declare-fun call!286568 () Option!9256)

(assert (=> b!4017057 (= lt!1424013 call!286568)))

(assert (=> b!4017057 (= lt!1424010 (maxPrefix!3729 thiss!21717 (t!333385 rules!2999) lt!1423734))))

(declare-fun b!4017058 () Bool)

(assert (=> b!4017058 (= e!2491409 call!286568)))

(declare-fun b!4017059 () Bool)

(declare-fun res!1633824 () Bool)

(assert (=> b!4017059 (=> (not res!1633824) (not e!2491408))))

(assert (=> b!4017059 (= res!1633824 (matchR!5708 (regex!6842 (rule!9892 (_1!24193 (get!14121 lt!1424009)))) (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1424009))))))))

(declare-fun b!4017060 () Bool)

(declare-fun res!1633825 () Bool)

(assert (=> b!4017060 (=> (not res!1633825) (not e!2491408))))

(assert (=> b!4017060 (= res!1633825 (= (value!215631 (_1!24193 (get!14121 lt!1424009))) (apply!10039 (transformation!6842 (rule!9892 (_1!24193 (get!14121 lt!1424009)))) (seqFromList!5067 (originalCharacters!7442 (_1!24193 (get!14121 lt!1424009)))))))))

(declare-fun b!4017061 () Bool)

(declare-fun res!1633823 () Bool)

(assert (=> b!4017061 (=> (not res!1633823) (not e!2491408))))

(assert (=> b!4017061 (= res!1633823 (= (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1424009)))) (originalCharacters!7442 (_1!24193 (get!14121 lt!1424009)))))))

(declare-fun bm!286563 () Bool)

(assert (=> bm!286563 (= call!286568 (maxPrefixOneRule!2749 thiss!21717 (h!48396 rules!2999) lt!1423734))))

(declare-fun b!4017062 () Bool)

(declare-fun res!1633819 () Bool)

(assert (=> b!4017062 (=> (not res!1633819) (not e!2491408))))

(assert (=> b!4017062 (= res!1633819 (= (++!11244 (list!15976 (charsOf!4658 (_1!24193 (get!14121 lt!1424009)))) (_2!24193 (get!14121 lt!1424009))) lt!1423734))))

(declare-fun b!4017063 () Bool)

(declare-fun e!2491410 () Bool)

(assert (=> b!4017063 (= e!2491410 e!2491408)))

(declare-fun res!1633822 () Bool)

(assert (=> b!4017063 (=> (not res!1633822) (not e!2491408))))

(assert (=> b!4017063 (= res!1633822 (isDefined!7076 lt!1424009))))

(declare-fun d!1189772 () Bool)

(assert (=> d!1189772 e!2491410))

(declare-fun res!1633820 () Bool)

(assert (=> d!1189772 (=> res!1633820 e!2491410)))

(assert (=> d!1189772 (= res!1633820 (isEmpty!25674 lt!1424009))))

(assert (=> d!1189772 (= lt!1424009 e!2491409)))

(declare-fun c!694400 () Bool)

(assert (=> d!1189772 (= c!694400 (and ((_ is Cons!42976) rules!2999) ((_ is Nil!42976) (t!333385 rules!2999))))))

(declare-fun lt!1424012 () Unit!62030)

(declare-fun lt!1424011 () Unit!62030)

(assert (=> d!1189772 (= lt!1424012 lt!1424011)))

(assert (=> d!1189772 (isPrefix!3929 lt!1423734 lt!1423734)))

(assert (=> d!1189772 (= lt!1424011 (lemmaIsPrefixRefl!2505 lt!1423734 lt!1423734))))

(assert (=> d!1189772 (rulesValidInductive!2497 thiss!21717 rules!2999)))

(assert (=> d!1189772 (= (maxPrefix!3729 thiss!21717 rules!2999 lt!1423734) lt!1424009)))

(declare-fun b!4017056 () Bool)

(assert (=> b!4017056 (= e!2491408 (contains!8544 rules!2999 (rule!9892 (_1!24193 (get!14121 lt!1424009)))))))

(assert (= (and d!1189772 c!694400) b!4017058))

(assert (= (and d!1189772 (not c!694400)) b!4017057))

(assert (= (or b!4017058 b!4017057) bm!286563))

(assert (= (and d!1189772 (not res!1633820)) b!4017063))

(assert (= (and b!4017063 res!1633822) b!4017061))

(assert (= (and b!4017061 res!1633823) b!4017055))

(assert (= (and b!4017055 res!1633821) b!4017062))

(assert (= (and b!4017062 res!1633819) b!4017060))

(assert (= (and b!4017060 res!1633825) b!4017059))

(assert (= (and b!4017059 res!1633824) b!4017056))

(declare-fun m!4605745 () Bool)

(assert (=> bm!286563 m!4605745))

(declare-fun m!4605747 () Bool)

(assert (=> b!4017057 m!4605747))

(declare-fun m!4605749 () Bool)

(assert (=> b!4017062 m!4605749))

(declare-fun m!4605751 () Bool)

(assert (=> b!4017062 m!4605751))

(assert (=> b!4017062 m!4605751))

(declare-fun m!4605753 () Bool)

(assert (=> b!4017062 m!4605753))

(assert (=> b!4017062 m!4605753))

(declare-fun m!4605755 () Bool)

(assert (=> b!4017062 m!4605755))

(declare-fun m!4605757 () Bool)

(assert (=> b!4017063 m!4605757))

(assert (=> b!4017060 m!4605749))

(declare-fun m!4605759 () Bool)

(assert (=> b!4017060 m!4605759))

(assert (=> b!4017060 m!4605759))

(declare-fun m!4605761 () Bool)

(assert (=> b!4017060 m!4605761))

(declare-fun m!4605763 () Bool)

(assert (=> d!1189772 m!4605763))

(assert (=> d!1189772 m!4604481))

(assert (=> d!1189772 m!4604483))

(assert (=> d!1189772 m!4605481))

(assert (=> b!4017061 m!4605749))

(assert (=> b!4017061 m!4605751))

(assert (=> b!4017061 m!4605751))

(assert (=> b!4017061 m!4605753))

(assert (=> b!4017055 m!4605749))

(declare-fun m!4605765 () Bool)

(assert (=> b!4017055 m!4605765))

(assert (=> b!4017055 m!4605257))

(assert (=> b!4017059 m!4605749))

(assert (=> b!4017059 m!4605751))

(assert (=> b!4017059 m!4605751))

(assert (=> b!4017059 m!4605753))

(assert (=> b!4017059 m!4605753))

(declare-fun m!4605767 () Bool)

(assert (=> b!4017059 m!4605767))

(assert (=> b!4017056 m!4605749))

(declare-fun m!4605769 () Bool)

(assert (=> b!4017056 m!4605769))

(assert (=> b!4016362 d!1189772))

(declare-fun b!4017065 () Bool)

(declare-fun e!2491412 () List!43099)

(assert (=> b!4017065 (= e!2491412 (Cons!42975 (h!48395 prefix!494) (++!11244 (t!333384 prefix!494) suffix!1299)))))

(declare-fun e!2491411 () Bool)

(declare-fun lt!1424014 () List!43099)

(declare-fun b!4017067 () Bool)

(assert (=> b!4017067 (= e!2491411 (or (not (= suffix!1299 Nil!42975)) (= lt!1424014 prefix!494)))))

(declare-fun b!4017066 () Bool)

(declare-fun res!1633827 () Bool)

(assert (=> b!4017066 (=> (not res!1633827) (not e!2491411))))

(assert (=> b!4017066 (= res!1633827 (= (size!32134 lt!1424014) (+ (size!32134 prefix!494) (size!32134 suffix!1299))))))

(declare-fun d!1189774 () Bool)

(assert (=> d!1189774 e!2491411))

(declare-fun res!1633826 () Bool)

(assert (=> d!1189774 (=> (not res!1633826) (not e!2491411))))

(assert (=> d!1189774 (= res!1633826 (= (content!6523 lt!1424014) ((_ map or) (content!6523 prefix!494) (content!6523 suffix!1299))))))

(assert (=> d!1189774 (= lt!1424014 e!2491412)))

(declare-fun c!694401 () Bool)

(assert (=> d!1189774 (= c!694401 ((_ is Nil!42975) prefix!494))))

(assert (=> d!1189774 (= (++!11244 prefix!494 suffix!1299) lt!1424014)))

(declare-fun b!4017064 () Bool)

(assert (=> b!4017064 (= e!2491412 suffix!1299)))

(assert (= (and d!1189774 c!694401) b!4017064))

(assert (= (and d!1189774 (not c!694401)) b!4017065))

(assert (= (and d!1189774 res!1633826) b!4017066))

(assert (= (and b!4017066 res!1633827) b!4017067))

(declare-fun m!4605771 () Bool)

(assert (=> b!4017065 m!4605771))

(declare-fun m!4605773 () Bool)

(assert (=> b!4017066 m!4605773))

(assert (=> b!4017066 m!4604487))

(assert (=> b!4017066 m!4604493))

(declare-fun m!4605775 () Bool)

(assert (=> d!1189774 m!4605775))

(assert (=> d!1189774 m!4605441))

(assert (=> d!1189774 m!4605595))

(assert (=> b!4016362 d!1189774))

(declare-fun d!1189776 () Bool)

(declare-fun lt!1424015 () Int)

(assert (=> d!1189776 (>= lt!1424015 0)))

(declare-fun e!2491413 () Int)

(assert (=> d!1189776 (= lt!1424015 e!2491413)))

(declare-fun c!694402 () Bool)

(assert (=> d!1189776 (= c!694402 ((_ is Nil!42975) lt!1423707))))

(assert (=> d!1189776 (= (size!32134 lt!1423707) lt!1424015)))

(declare-fun b!4017068 () Bool)

(assert (=> b!4017068 (= e!2491413 0)))

(declare-fun b!4017069 () Bool)

(assert (=> b!4017069 (= e!2491413 (+ 1 (size!32134 (t!333384 lt!1423707))))))

(assert (= (and d!1189776 c!694402) b!4017068))

(assert (= (and d!1189776 (not c!694402)) b!4017069))

(declare-fun m!4605777 () Bool)

(assert (=> b!4017069 m!4605777))

(assert (=> b!4016341 d!1189776))

(declare-fun d!1189778 () Bool)

(declare-fun lt!1424016 () Int)

(assert (=> d!1189778 (>= lt!1424016 0)))

(declare-fun e!2491414 () Int)

(assert (=> d!1189778 (= lt!1424016 e!2491414)))

(declare-fun c!694403 () Bool)

(assert (=> d!1189778 (= c!694403 ((_ is Nil!42975) prefix!494))))

(assert (=> d!1189778 (= (size!32134 prefix!494) lt!1424016)))

(declare-fun b!4017070 () Bool)

(assert (=> b!4017070 (= e!2491414 0)))

(declare-fun b!4017071 () Bool)

(assert (=> b!4017071 (= e!2491414 (+ 1 (size!32134 (t!333384 prefix!494))))))

(assert (= (and d!1189778 c!694403) b!4017070))

(assert (= (and d!1189778 (not c!694403)) b!4017071))

(declare-fun m!4605779 () Bool)

(assert (=> b!4017071 m!4605779))

(assert (=> b!4016341 d!1189778))

(declare-fun d!1189780 () Bool)

(assert (=> d!1189780 (= (list!15976 (charsOf!4658 token!484)) (list!15978 (c!694294 (charsOf!4658 token!484))))))

(declare-fun bs!589708 () Bool)

(assert (= bs!589708 d!1189780))

(declare-fun m!4605781 () Bool)

(assert (=> bs!589708 m!4605781))

(assert (=> b!4016341 d!1189780))

(declare-fun d!1189782 () Bool)

(declare-fun lt!1424017 () BalanceConc!25700)

(assert (=> d!1189782 (= (list!15976 lt!1424017) (originalCharacters!7442 token!484))))

(assert (=> d!1189782 (= lt!1424017 (dynLambda!18235 (toChars!9209 (transformation!6842 (rule!9892 token!484))) (value!215631 token!484)))))

(assert (=> d!1189782 (= (charsOf!4658 token!484) lt!1424017)))

(declare-fun b_lambda!117247 () Bool)

(assert (=> (not b_lambda!117247) (not d!1189782)))

(assert (=> d!1189782 t!333391))

(declare-fun b_and!308615 () Bool)

(assert (= b_and!308611 (and (=> t!333391 result!292740) b_and!308615)))

(assert (=> d!1189782 t!333393))

(declare-fun b_and!308617 () Bool)

(assert (= b_and!308613 (and (=> t!333393 result!292744) b_and!308617)))

(declare-fun m!4605783 () Bool)

(assert (=> d!1189782 m!4605783))

(assert (=> d!1189782 m!4604807))

(assert (=> b!4016341 d!1189782))

(declare-fun b!4017083 () Bool)

(declare-fun e!2491417 () Bool)

(declare-fun tp!1221249 () Bool)

(declare-fun tp!1221245 () Bool)

(assert (=> b!4017083 (= e!2491417 (and tp!1221249 tp!1221245))))

(assert (=> b!4016337 (= tp!1221177 e!2491417)))

(declare-fun b!4017082 () Bool)

(assert (=> b!4017082 (= e!2491417 tp_is_empty!20465)))

(declare-fun b!4017085 () Bool)

(declare-fun tp!1221247 () Bool)

(declare-fun tp!1221248 () Bool)

(assert (=> b!4017085 (= e!2491417 (and tp!1221247 tp!1221248))))

(declare-fun b!4017084 () Bool)

(declare-fun tp!1221246 () Bool)

(assert (=> b!4017084 (= e!2491417 tp!1221246)))

(assert (= (and b!4016337 ((_ is ElementMatch!11747) (regex!6842 (rule!9892 token!484)))) b!4017082))

(assert (= (and b!4016337 ((_ is Concat!18820) (regex!6842 (rule!9892 token!484)))) b!4017083))

(assert (= (and b!4016337 ((_ is Star!11747) (regex!6842 (rule!9892 token!484)))) b!4017084))

(assert (= (and b!4016337 ((_ is Union!11747) (regex!6842 (rule!9892 token!484)))) b!4017085))

(declare-fun b!4017090 () Bool)

(declare-fun e!2491420 () Bool)

(declare-fun tp!1221252 () Bool)

(assert (=> b!4017090 (= e!2491420 (and tp_is_empty!20465 tp!1221252))))

(assert (=> b!4016360 (= tp!1221185 e!2491420)))

(assert (= (and b!4016360 ((_ is Cons!42975) (t!333384 newSuffix!27))) b!4017090))

(declare-fun b!4017091 () Bool)

(declare-fun e!2491421 () Bool)

(declare-fun tp!1221253 () Bool)

(assert (=> b!4017091 (= e!2491421 (and tp_is_empty!20465 tp!1221253))))

(assert (=> b!4016349 (= tp!1221180 e!2491421)))

(assert (= (and b!4016349 ((_ is Cons!42975) (originalCharacters!7442 token!484))) b!4017091))

(declare-fun b!4017092 () Bool)

(declare-fun e!2491422 () Bool)

(declare-fun tp!1221254 () Bool)

(assert (=> b!4017092 (= e!2491422 (and tp_is_empty!20465 tp!1221254))))

(assert (=> b!4016333 (= tp!1221183 e!2491422)))

(assert (= (and b!4016333 ((_ is Cons!42975) (t!333384 newSuffixResult!27))) b!4017092))

(declare-fun b!4017093 () Bool)

(declare-fun e!2491423 () Bool)

(declare-fun tp!1221255 () Bool)

(assert (=> b!4017093 (= e!2491423 (and tp_is_empty!20465 tp!1221255))))

(assert (=> b!4016334 (= tp!1221182 e!2491423)))

(assert (= (and b!4016334 ((_ is Cons!42975) (t!333384 suffix!1299))) b!4017093))

(declare-fun b!4017095 () Bool)

(declare-fun e!2491424 () Bool)

(declare-fun tp!1221260 () Bool)

(declare-fun tp!1221256 () Bool)

(assert (=> b!4017095 (= e!2491424 (and tp!1221260 tp!1221256))))

(assert (=> b!4016345 (= tp!1221186 e!2491424)))

(declare-fun b!4017094 () Bool)

(assert (=> b!4017094 (= e!2491424 tp_is_empty!20465)))

(declare-fun b!4017097 () Bool)

(declare-fun tp!1221258 () Bool)

(declare-fun tp!1221259 () Bool)

(assert (=> b!4017097 (= e!2491424 (and tp!1221258 tp!1221259))))

(declare-fun b!4017096 () Bool)

(declare-fun tp!1221257 () Bool)

(assert (=> b!4017096 (= e!2491424 tp!1221257)))

(assert (= (and b!4016345 ((_ is ElementMatch!11747) (regex!6842 (h!48396 rules!2999)))) b!4017094))

(assert (= (and b!4016345 ((_ is Concat!18820) (regex!6842 (h!48396 rules!2999)))) b!4017095))

(assert (= (and b!4016345 ((_ is Star!11747) (regex!6842 (h!48396 rules!2999)))) b!4017096))

(assert (= (and b!4016345 ((_ is Union!11747) (regex!6842 (h!48396 rules!2999)))) b!4017097))

(declare-fun b!4017098 () Bool)

(declare-fun e!2491425 () Bool)

(declare-fun tp!1221261 () Bool)

(assert (=> b!4017098 (= e!2491425 (and tp_is_empty!20465 tp!1221261))))

(assert (=> b!4016352 (= tp!1221174 e!2491425)))

(assert (= (and b!4016352 ((_ is Cons!42975) (t!333384 suffixResult!105))) b!4017098))

(declare-fun b!4017109 () Bool)

(declare-fun b_free!111717 () Bool)

(declare-fun b_next!112421 () Bool)

(assert (=> b!4017109 (= b_free!111717 (not b_next!112421))))

(declare-fun tb!241577 () Bool)

(declare-fun t!333428 () Bool)

(assert (=> (and b!4017109 (= (toValue!9350 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toValue!9350 (transformation!6842 (rule!9892 token!484)))) t!333428) tb!241577))

(declare-fun result!292794 () Bool)

(assert (= result!292794 result!292760))

(assert (=> d!1189544 t!333428))

(declare-fun tb!241579 () Bool)

(declare-fun t!333430 () Bool)

(assert (=> (and b!4017109 (= (toValue!9350 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toValue!9350 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))) t!333430) tb!241579))

(declare-fun result!292796 () Bool)

(assert (= result!292796 result!292780))

(assert (=> d!1189762 t!333430))

(declare-fun tp!1221272 () Bool)

(declare-fun b_and!308619 () Bool)

(assert (=> b!4017109 (= tp!1221272 (and (=> t!333428 result!292794) (=> t!333430 result!292796) b_and!308619))))

(declare-fun b_free!111719 () Bool)

(declare-fun b_next!112423 () Bool)

(assert (=> b!4017109 (= b_free!111719 (not b_next!112423))))

(declare-fun t!333432 () Bool)

(declare-fun tb!241581 () Bool)

(assert (=> (and b!4017109 (= (toChars!9209 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toChars!9209 (transformation!6842 (rule!9892 token!484)))) t!333432) tb!241581))

(declare-fun result!292798 () Bool)

(assert (= result!292798 result!292740))

(assert (=> b!4016487 t!333432))

(declare-fun t!333434 () Bool)

(declare-fun tb!241583 () Bool)

(assert (=> (and b!4017109 (= (toChars!9209 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toChars!9209 (transformation!6842 (rule!9892 (_1!24193 (v!39627 lt!1423731)))))) t!333434) tb!241583))

(declare-fun result!292800 () Bool)

(assert (= result!292800 result!292784))

(assert (=> d!1189764 t!333434))

(assert (=> d!1189782 t!333432))

(declare-fun tp!1221273 () Bool)

(declare-fun b_and!308621 () Bool)

(assert (=> b!4017109 (= tp!1221273 (and (=> t!333432 result!292798) (=> t!333434 result!292800) b_and!308621))))

(declare-fun e!2491437 () Bool)

(assert (=> b!4017109 (= e!2491437 (and tp!1221272 tp!1221273))))

(declare-fun tp!1221270 () Bool)

(declare-fun b!4017108 () Bool)

(declare-fun e!2491435 () Bool)

(assert (=> b!4017108 (= e!2491435 (and tp!1221270 (inv!57402 (tag!7702 (h!48396 (t!333385 rules!2999)))) (inv!57406 (transformation!6842 (h!48396 (t!333385 rules!2999)))) e!2491437))))

(declare-fun b!4017107 () Bool)

(declare-fun e!2491434 () Bool)

(declare-fun tp!1221271 () Bool)

(assert (=> b!4017107 (= e!2491434 (and e!2491435 tp!1221271))))

(assert (=> b!4016358 (= tp!1221184 e!2491434)))

(assert (= b!4017108 b!4017109))

(assert (= b!4017107 b!4017108))

(assert (= (and b!4016358 ((_ is Cons!42976) (t!333385 rules!2999))) b!4017107))

(declare-fun m!4605785 () Bool)

(assert (=> b!4017108 m!4605785))

(declare-fun m!4605787 () Bool)

(assert (=> b!4017108 m!4605787))

(declare-fun b!4017110 () Bool)

(declare-fun e!2491438 () Bool)

(declare-fun tp!1221274 () Bool)

(assert (=> b!4017110 (= e!2491438 (and tp_is_empty!20465 tp!1221274))))

(assert (=> b!4016347 (= tp!1221178 e!2491438)))

(assert (= (and b!4016347 ((_ is Cons!42975) (t!333384 prefix!494))) b!4017110))

(declare-fun b_lambda!117249 () Bool)

(assert (= b_lambda!117233 (or (and b!4016342 b_free!111705) (and b!4016361 b_free!111709 (= (toValue!9350 (transformation!6842 (h!48396 rules!2999))) (toValue!9350 (transformation!6842 (rule!9892 token!484))))) (and b!4017109 b_free!111717 (= (toValue!9350 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toValue!9350 (transformation!6842 (rule!9892 token!484))))) b_lambda!117249)))

(declare-fun b_lambda!117251 () Bool)

(assert (= b_lambda!117225 (or (and b!4016342 b_free!111707) (and b!4016361 b_free!111711 (= (toChars!9209 (transformation!6842 (h!48396 rules!2999))) (toChars!9209 (transformation!6842 (rule!9892 token!484))))) (and b!4017109 b_free!111719 (= (toChars!9209 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toChars!9209 (transformation!6842 (rule!9892 token!484))))) b_lambda!117251)))

(declare-fun b_lambda!117253 () Bool)

(assert (= b_lambda!117247 (or (and b!4016342 b_free!111707) (and b!4016361 b_free!111711 (= (toChars!9209 (transformation!6842 (h!48396 rules!2999))) (toChars!9209 (transformation!6842 (rule!9892 token!484))))) (and b!4017109 b_free!111719 (= (toChars!9209 (transformation!6842 (h!48396 (t!333385 rules!2999)))) (toChars!9209 (transformation!6842 (rule!9892 token!484))))) b_lambda!117253)))

(check-sat (not b!4017090) (not d!1189752) (not b!4016915) (not b!4016840) (not bm!286559) (not b!4016783) b_and!308617 (not tb!241557) (not bm!286563) (not b!4017062) (not b!4016910) (not b!4016849) (not d!1189622) (not d!1189484) (not d!1189750) (not b!4016924) (not b!4017025) (not d!1189478) (not b!4017096) (not d!1189546) (not b!4016981) (not b!4016791) (not b!4016868) (not b!4017095) (not b!4017056) (not b!4016799) (not b!4017027) (not b!4016970) (not b_next!112415) (not b!4016988) (not d!1189758) (not b!4017034) (not b!4016786) (not b!4017053) (not d!1189660) (not b!4017012) (not d!1189678) (not b!4016839) (not d!1189652) (not d!1189712) (not d!1189782) (not b!4016989) (not b!4016875) (not b!4016810) (not b!4016784) (not b!4017037) (not b!4017016) (not b_lambda!117243) (not d!1189480) (not d!1189696) (not b!4016911) (not b!4017110) (not b!4017057) (not b!4016865) (not b!4016878) (not b!4017107) (not b!4017043) (not b!4016993) (not b_next!112411) (not b!4016792) (not b!4017097) (not d!1189638) (not b!4016487) (not b!4016923) (not b!4016996) (not b!4016934) (not d!1189760) (not d!1189774) (not b!4016822) (not d!1189680) (not b!4016939) (not d!1189708) (not b!4016850) (not b!4017031) (not b!4016811) (not b!4017085) (not b!4016788) (not b!4017018) (not b!4017083) (not b!4016826) (not b!4017063) (not d!1189764) (not b!4016817) b_and!308609 (not b!4016816) (not d!1189704) (not b_lambda!117253) (not b_lambda!117249) (not b!4017035) (not b!4017041) (not d!1189780) (not b!4017033) (not d!1189474) (not d!1189710) (not b!4016782) (not b!4016818) (not d!1189742) (not d!1189746) (not d!1189664) (not d!1189650) (not d!1189682) (not b!4017091) (not b!4017030) b_and!308619 (not b!4016793) (not b!4016781) (not b!4017071) (not b!4017014) tp_is_empty!20465 (not b!4016974) (not b!4016931) (not b!4016854) (not d!1189768) (not b!4017050) (not b!4016879) (not b!4017059) (not b!4017009) (not b!4016869) (not b!4016914) (not b_next!112423) (not b!4016859) (not b!4017036) (not d!1189620) (not b!4017098) (not d!1189736) (not d!1189668) (not b!4016984) (not b!4016920) (not b!4017049) (not b!4017013) (not b!4016919) (not b!4016940) (not d!1189766) (not b!4016829) (not b!4016887) (not d!1189728) (not b!4016862) (not b!4017065) (not b!4016873) (not b!4016872) (not b!4017108) (not d!1189674) (not b!4016870) (not b_lambda!117251) (not d!1189734) (not d!1189754) (not b!4016928) (not tb!241569) (not b!4016971) (not b!4016978) (not b!4016926) (not d!1189646) (not b!4016992) (not b!4016886) b_and!308621 (not b!4016824) (not b!4016909) (not b!4016820) (not b!4017029) (not b!4016821) (not b!4017026) (not d!1189644) (not b_next!112409) (not b!4016917) (not b!4016463) (not d!1189716) (not d!1189482) (not d!1189694) (not b_lambda!117245) (not b!4016462) (not d!1189676) (not b!4016880) (not b!4016890) (not b!4016488) b_and!308607 (not tb!241573) (not b!4017004) (not b!4016812) (not d!1189748) (not b!4016787) (not b!4016883) (not b!4017008) (not b!4016997) (not b!4016493) b_and!308615 (not b!4017060) (not b!4016938) (not b!4016913) (not d!1189698) (not b!4016985) (not b!4017052) (not b!4017047) (not b!4017032) (not b_next!112421) (not d!1189770) (not b!4017061) (not tb!241541) (not bm!286562) (not b!4016785) (not b!4017084) (not d!1189634) (not b!4017006) (not b!4017092) (not b!4016930) (not b!4017066) (not d!1189744) (not b!4016916) (not d!1189772) (not b!4017038) (not d!1189688) (not b!4016846) (not b!4016863) (not d!1189690) (not d!1189666) (not d!1189718) (not d!1189626) (not b!4016986) (not b!4017020) (not b!4016935) (not b!4017069) (not b!4017039) (not d!1189700) (not b!4017055) (not d!1189658) (not b!4017093) (not d!1189672) (not b!4017017) (not d!1189686) (not d!1189642) (not b!4016921) (not b!4016882) (not d!1189714) (not b!4016825) (not d!1189654) (not b!4017010) (not b_next!112413) (not b!4017044) (not d!1189656) (not b!4017023) (not b!4016464) (not b!4016977))
(check-sat b_and!308617 (not b_next!112415) (not b_next!112411) b_and!308609 b_and!308619 (not b_next!112423) b_and!308621 (not b_next!112409) b_and!308607 b_and!308615 (not b_next!112421) (not b_next!112413))
