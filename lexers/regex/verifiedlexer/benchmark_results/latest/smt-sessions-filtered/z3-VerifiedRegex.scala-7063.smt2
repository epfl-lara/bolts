; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374600 () Bool)

(assert start!374600)

(declare-fun b!3979943 () Bool)

(declare-fun b_free!110449 () Bool)

(declare-fun b_next!111153 () Bool)

(assert (=> b!3979943 (= b_free!110449 (not b_next!111153))))

(declare-fun tp!1213298 () Bool)

(declare-fun b_and!305919 () Bool)

(assert (=> b!3979943 (= tp!1213298 b_and!305919)))

(declare-fun b_free!110451 () Bool)

(declare-fun b_next!111155 () Bool)

(assert (=> b!3979943 (= b_free!110451 (not b_next!111155))))

(declare-fun tp!1213295 () Bool)

(declare-fun b_and!305921 () Bool)

(assert (=> b!3979943 (= tp!1213295 b_and!305921)))

(declare-fun b!3979935 () Bool)

(declare-fun b_free!110453 () Bool)

(declare-fun b_next!111157 () Bool)

(assert (=> b!3979935 (= b_free!110453 (not b_next!111157))))

(declare-fun tp!1213296 () Bool)

(declare-fun b_and!305923 () Bool)

(assert (=> b!3979935 (= tp!1213296 b_and!305923)))

(declare-fun b_free!110455 () Bool)

(declare-fun b_next!111159 () Bool)

(assert (=> b!3979935 (= b_free!110455 (not b_next!111159))))

(declare-fun tp!1213297 () Bool)

(declare-fun b_and!305925 () Bool)

(assert (=> b!3979935 (= tp!1213297 b_and!305925)))

(declare-datatypes ((C!23424 0))(
  ( (C!23425 (val!13806 Int)) )
))
(declare-datatypes ((List!42666 0))(
  ( (Nil!42542) (Cons!42542 (h!47962 C!23424) (t!331273 List!42666)) )
))
(declare-datatypes ((IArray!25855 0))(
  ( (IArray!25856 (innerList!12985 List!42666)) )
))
(declare-datatypes ((Conc!12925 0))(
  ( (Node!12925 (left!32180 Conc!12925) (right!32510 Conc!12925) (csize!26080 Int) (cheight!13136 Int)) (Leaf!19989 (xs!16231 IArray!25855) (csize!26081 Int)) (Empty!12925) )
))
(declare-datatypes ((BalanceConc!25444 0))(
  ( (BalanceConc!25445 (c!689600 Conc!12925)) )
))
(declare-datatypes ((List!42667 0))(
  ( (Nil!42543) (Cons!42543 (h!47963 (_ BitVec 16)) (t!331274 List!42667)) )
))
(declare-datatypes ((TokenValue!6944 0))(
  ( (FloatLiteralValue!13888 (text!49053 List!42667)) (TokenValueExt!6943 (__x!26105 Int)) (Broken!34720 (value!211957 List!42667)) (Object!7067) (End!6944) (Def!6944) (Underscore!6944) (Match!6944) (Else!6944) (Error!6944) (Case!6944) (If!6944) (Extends!6944) (Abstract!6944) (Class!6944) (Val!6944) (DelimiterValue!13888 (del!7004 List!42667)) (KeywordValue!6950 (value!211958 List!42667)) (CommentValue!13888 (value!211959 List!42667)) (WhitespaceValue!13888 (value!211960 List!42667)) (IndentationValue!6944 (value!211961 List!42667)) (String!48437) (Int32!6944) (Broken!34721 (value!211962 List!42667)) (Boolean!6945) (Unit!61203) (OperatorValue!6947 (op!7004 List!42667)) (IdentifierValue!13888 (value!211963 List!42667)) (IdentifierValue!13889 (value!211964 List!42667)) (WhitespaceValue!13889 (value!211965 List!42667)) (True!13888) (False!13888) (Broken!34722 (value!211966 List!42667)) (Broken!34723 (value!211967 List!42667)) (True!13889) (RightBrace!6944) (RightBracket!6944) (Colon!6944) (Null!6944) (Comma!6944) (LeftBracket!6944) (False!13889) (LeftBrace!6944) (ImaginaryLiteralValue!6944 (text!49054 List!42667)) (StringLiteralValue!20832 (value!211968 List!42667)) (EOFValue!6944 (value!211969 List!42667)) (IdentValue!6944 (value!211970 List!42667)) (DelimiterValue!13889 (value!211971 List!42667)) (DedentValue!6944 (value!211972 List!42667)) (NewLineValue!6944 (value!211973 List!42667)) (IntegerValue!20832 (value!211974 (_ BitVec 32)) (text!49055 List!42667)) (IntegerValue!20833 (value!211975 Int) (text!49056 List!42667)) (Times!6944) (Or!6944) (Equal!6944) (Minus!6944) (Broken!34724 (value!211976 List!42667)) (And!6944) (Div!6944) (LessEqual!6944) (Mod!6944) (Concat!18563) (Not!6944) (Plus!6944) (SpaceValue!6944 (value!211977 List!42667)) (IntegerValue!20834 (value!211978 Int) (text!49057 List!42667)) (StringLiteralValue!20833 (text!49058 List!42667)) (FloatLiteralValue!13889 (text!49059 List!42667)) (BytesLiteralValue!6944 (value!211979 List!42667)) (CommentValue!13889 (value!211980 List!42667)) (StringLiteralValue!20834 (value!211981 List!42667)) (ErrorTokenValue!6944 (msg!7005 List!42667)) )
))
(declare-datatypes ((Regex!11619 0))(
  ( (ElementMatch!11619 (c!689601 C!23424)) (Concat!18564 (regOne!23750 Regex!11619) (regTwo!23750 Regex!11619)) (EmptyExpr!11619) (Star!11619 (reg!11948 Regex!11619)) (EmptyLang!11619) (Union!11619 (regOne!23751 Regex!11619) (regTwo!23751 Regex!11619)) )
))
(declare-datatypes ((String!48438 0))(
  ( (String!48439 (value!211982 String)) )
))
(declare-datatypes ((TokenValueInjection!13316 0))(
  ( (TokenValueInjection!13317 (toValue!9202 Int) (toChars!9061 Int)) )
))
(declare-datatypes ((Rule!13228 0))(
  ( (Rule!13229 (regex!6714 Regex!11619) (tag!7574 String!48438) (isSeparator!6714 Bool) (transformation!6714 TokenValueInjection!13316)) )
))
(declare-datatypes ((Token!12566 0))(
  ( (Token!12567 (value!211983 TokenValue!6944) (rule!9718 Rule!13228) (size!31824 Int) (originalCharacters!7314 List!42666)) )
))
(declare-fun token!484 () Token!12566)

(declare-fun e!2466291 () Bool)

(declare-fun tp!1213302 () Bool)

(declare-fun e!2466292 () Bool)

(declare-fun b!3979928 () Bool)

(declare-fun inv!56831 (String!48438) Bool)

(declare-fun inv!56834 (TokenValueInjection!13316) Bool)

(assert (=> b!3979928 (= e!2466292 (and tp!1213302 (inv!56831 (tag!7574 (rule!9718 token!484))) (inv!56834 (transformation!6714 (rule!9718 token!484))) e!2466291))))

(declare-fun b!3979929 () Bool)

(declare-fun e!2466295 () Bool)

(declare-fun e!2466286 () Bool)

(assert (=> b!3979929 (= e!2466295 e!2466286)))

(declare-fun res!1612714 () Bool)

(assert (=> b!3979929 (=> res!1612714 e!2466286)))

(declare-fun lt!1397359 () List!42666)

(declare-fun suffix!1299 () List!42666)

(assert (=> b!3979929 (= res!1612714 (not (= lt!1397359 suffix!1299)))))

(declare-fun newSuffix!27 () List!42666)

(declare-fun lt!1397404 () List!42666)

(declare-fun ++!11116 (List!42666 List!42666) List!42666)

(assert (=> b!3979929 (= lt!1397359 (++!11116 newSuffix!27 lt!1397404))))

(declare-fun getSuffix!2232 (List!42666 List!42666) List!42666)

(assert (=> b!3979929 (= lt!1397404 (getSuffix!2232 suffix!1299 newSuffix!27))))

(declare-fun b!3979930 () Bool)

(declare-fun res!1612717 () Bool)

(declare-fun e!2466300 () Bool)

(assert (=> b!3979930 (=> res!1612717 e!2466300)))

(declare-fun lt!1397391 () List!42666)

(declare-fun lt!1397368 () List!42666)

(assert (=> b!3979930 (= res!1612717 (not (= (++!11116 lt!1397391 (getSuffix!2232 lt!1397368 lt!1397391)) lt!1397368)))))

(declare-fun b!3979931 () Bool)

(declare-fun res!1612724 () Bool)

(declare-fun e!2466290 () Bool)

(assert (=> b!3979931 (=> (not res!1612724) (not e!2466290))))

(declare-datatypes ((LexerInterface!6303 0))(
  ( (LexerInterfaceExt!6300 (__x!26106 Int)) (Lexer!6301) )
))
(declare-fun thiss!21717 () LexerInterface!6303)

(declare-datatypes ((List!42668 0))(
  ( (Nil!42544) (Cons!42544 (h!47964 Rule!13228) (t!331275 List!42668)) )
))
(declare-fun rules!2999 () List!42668)

(declare-fun rulesInvariant!5646 (LexerInterface!6303 List!42668) Bool)

(assert (=> b!3979931 (= res!1612724 (rulesInvariant!5646 thiss!21717 rules!2999))))

(declare-fun e!2466289 () Bool)

(declare-fun b!3979932 () Bool)

(declare-fun tp!1213299 () Bool)

(declare-fun inv!21 (TokenValue!6944) Bool)

(assert (=> b!3979932 (= e!2466289 (and (inv!21 (value!211983 token!484)) e!2466292 tp!1213299))))

(declare-fun res!1612722 () Bool)

(assert (=> start!374600 (=> (not res!1612722) (not e!2466290))))

(get-info :version)

(assert (=> start!374600 (= res!1612722 ((_ is Lexer!6301) thiss!21717))))

(assert (=> start!374600 e!2466290))

(declare-fun e!2466278 () Bool)

(assert (=> start!374600 e!2466278))

(declare-fun inv!56835 (Token!12566) Bool)

(assert (=> start!374600 (and (inv!56835 token!484) e!2466289)))

(declare-fun e!2466279 () Bool)

(assert (=> start!374600 e!2466279))

(declare-fun e!2466285 () Bool)

(assert (=> start!374600 e!2466285))

(declare-fun e!2466277 () Bool)

(assert (=> start!374600 e!2466277))

(assert (=> start!374600 true))

(declare-fun e!2466297 () Bool)

(assert (=> start!374600 e!2466297))

(declare-fun e!2466288 () Bool)

(assert (=> start!374600 e!2466288))

(declare-fun b!3979933 () Bool)

(declare-fun isPrefix!3801 (List!42666 List!42666) Bool)

(assert (=> b!3979933 (= e!2466300 (isPrefix!3801 lt!1397391 lt!1397368))))

(declare-fun b!3979934 () Bool)

(declare-fun e!2466302 () Bool)

(declare-fun e!2466296 () Bool)

(assert (=> b!3979934 (= e!2466302 e!2466296)))

(declare-fun res!1612706 () Bool)

(assert (=> b!3979934 (=> res!1612706 e!2466296)))

(declare-datatypes ((tuple2!41772 0))(
  ( (tuple2!41773 (_1!24020 Token!12566) (_2!24020 List!42666)) )
))
(declare-datatypes ((Option!9128 0))(
  ( (None!9127) (Some!9127 (v!39475 tuple2!41772)) )
))
(declare-fun lt!1397370 () Option!9128)

(assert (=> b!3979934 (= res!1612706 (not ((_ is Some!9127) lt!1397370)))))

(declare-fun maxPrefix!3601 (LexerInterface!6303 List!42668 List!42666) Option!9128)

(assert (=> b!3979934 (= lt!1397370 (maxPrefix!3601 thiss!21717 rules!2999 lt!1397368))))

(declare-fun lt!1397360 () List!42666)

(declare-fun lt!1397355 () tuple2!41772)

(declare-fun lt!1397372 () Token!12566)

(declare-fun suffixResult!105 () List!42666)

(assert (=> b!3979934 (and (= suffixResult!105 lt!1397360) (= lt!1397355 (tuple2!41773 lt!1397372 lt!1397360)))))

(declare-fun lt!1397386 () List!42666)

(declare-fun lt!1397376 () List!42666)

(declare-datatypes ((Unit!61204 0))(
  ( (Unit!61205) )
))
(declare-fun lt!1397363 () Unit!61204)

(declare-fun lemmaSamePrefixThenSameSuffix!1988 (List!42666 List!42666 List!42666 List!42666 List!42666) Unit!61204)

(assert (=> b!3979934 (= lt!1397363 (lemmaSamePrefixThenSameSuffix!1988 lt!1397386 suffixResult!105 lt!1397386 lt!1397360 lt!1397376))))

(declare-fun lt!1397395 () List!42666)

(assert (=> b!3979934 (isPrefix!3801 lt!1397386 lt!1397395)))

(declare-fun lt!1397397 () Unit!61204)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2644 (List!42666 List!42666) Unit!61204)

(assert (=> b!3979934 (= lt!1397397 (lemmaConcatTwoListThenFirstIsPrefix!2644 lt!1397386 lt!1397360))))

(declare-fun e!2466298 () Bool)

(assert (=> b!3979935 (= e!2466298 (and tp!1213296 tp!1213297))))

(declare-fun b!3979936 () Bool)

(declare-fun res!1612712 () Bool)

(assert (=> b!3979936 (=> res!1612712 e!2466300)))

(declare-fun lt!1397394 () List!42666)

(assert (=> b!3979936 (= res!1612712 (not (= lt!1397394 lt!1397368)))))

(declare-fun b!3979937 () Bool)

(declare-fun e!2466280 () Bool)

(assert (=> b!3979937 (= e!2466280 e!2466300)))

(declare-fun res!1612719 () Bool)

(assert (=> b!3979937 (=> res!1612719 e!2466300)))

(assert (=> b!3979937 (= res!1612719 (not (isPrefix!3801 lt!1397391 lt!1397376)))))

(declare-fun lt!1397381 () List!42666)

(assert (=> b!3979937 (isPrefix!3801 lt!1397391 lt!1397381)))

(declare-fun lt!1397378 () Unit!61204)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!634 (List!42666 List!42666 List!42666) Unit!61204)

(assert (=> b!3979937 (= lt!1397378 (lemmaPrefixStaysPrefixWhenAddingToSuffix!634 lt!1397391 lt!1397368 lt!1397404))))

(declare-fun b!3979938 () Bool)

(declare-fun res!1612718 () Bool)

(assert (=> b!3979938 (=> res!1612718 e!2466300)))

(declare-fun lt!1397358 () Int)

(declare-fun size!31825 (List!42666) Int)

(assert (=> b!3979938 (= res!1612718 (< (size!31825 lt!1397368) lt!1397358))))

(declare-fun b!3979939 () Bool)

(declare-fun res!1612716 () Bool)

(declare-fun e!2466304 () Bool)

(assert (=> b!3979939 (=> (not res!1612716) (not e!2466304))))

(declare-fun lt!1397398 () TokenValue!6944)

(assert (=> b!3979939 (= res!1612716 (= (value!211983 token!484) lt!1397398))))

(declare-fun b!3979940 () Bool)

(declare-fun e!2466283 () Bool)

(declare-fun e!2466301 () Bool)

(assert (=> b!3979940 (= e!2466283 e!2466301)))

(declare-fun res!1612723 () Bool)

(assert (=> b!3979940 (=> res!1612723 e!2466301)))

(declare-fun lt!1397356 () Option!9128)

(declare-fun lt!1397388 () Option!9128)

(assert (=> b!3979940 (= res!1612723 (not (= lt!1397356 lt!1397388)))))

(assert (=> b!3979940 (= lt!1397356 (Some!9127 (tuple2!41773 lt!1397372 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2635 (LexerInterface!6303 Rule!13228 List!42666) Option!9128)

(assert (=> b!3979940 (= lt!1397356 (maxPrefixOneRule!2635 thiss!21717 (rule!9718 token!484) lt!1397376))))

(declare-fun lt!1397374 () Int)

(assert (=> b!3979940 (= lt!1397372 (Token!12567 lt!1397398 (rule!9718 token!484) lt!1397374 lt!1397386))))

(declare-fun apply!9925 (TokenValueInjection!13316 BalanceConc!25444) TokenValue!6944)

(declare-fun seqFromList!4953 (List!42666) BalanceConc!25444)

(assert (=> b!3979940 (= lt!1397398 (apply!9925 (transformation!6714 (rule!9718 token!484)) (seqFromList!4953 lt!1397386)))))

(declare-fun lt!1397402 () Unit!61204)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1457 (LexerInterface!6303 List!42668 List!42666 List!42666 List!42666 Rule!13228) Unit!61204)

(assert (=> b!3979940 (= lt!1397402 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1457 thiss!21717 rules!2999 lt!1397386 lt!1397376 suffixResult!105 (rule!9718 token!484)))))

(declare-fun lt!1397382 () List!42666)

(assert (=> b!3979940 (= lt!1397382 suffixResult!105)))

(declare-fun lt!1397401 () Unit!61204)

(assert (=> b!3979940 (= lt!1397401 (lemmaSamePrefixThenSameSuffix!1988 lt!1397386 lt!1397382 lt!1397386 suffixResult!105 lt!1397376))))

(declare-fun lt!1397387 () List!42666)

(assert (=> b!3979940 (isPrefix!3801 lt!1397386 lt!1397387)))

(declare-fun lt!1397385 () Unit!61204)

(assert (=> b!3979940 (= lt!1397385 (lemmaConcatTwoListThenFirstIsPrefix!2644 lt!1397386 lt!1397382))))

(declare-fun b!3979941 () Bool)

(declare-fun e!2466284 () Bool)

(declare-fun e!2466294 () Bool)

(assert (=> b!3979941 (= e!2466284 e!2466294)))

(declare-fun res!1612711 () Bool)

(assert (=> b!3979941 (=> (not res!1612711) (not e!2466294))))

(declare-fun lt!1397399 () List!42666)

(assert (=> b!3979941 (= res!1612711 (= lt!1397399 lt!1397368))))

(declare-fun prefix!494 () List!42666)

(assert (=> b!3979941 (= lt!1397368 (++!11116 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42666)

(assert (=> b!3979941 (= lt!1397399 (++!11116 lt!1397386 newSuffixResult!27))))

(declare-fun b!3979942 () Bool)

(assert (=> b!3979942 (= e!2466296 e!2466295)))

(declare-fun res!1612713 () Bool)

(assert (=> b!3979942 (=> res!1612713 e!2466295)))

(declare-fun lt!1397379 () Option!9128)

(assert (=> b!3979942 (= res!1612713 (not (= lt!1397379 (Some!9127 (v!39475 lt!1397370)))))))

(assert (=> b!3979942 (isPrefix!3801 lt!1397391 (++!11116 lt!1397391 newSuffixResult!27))))

(declare-fun lt!1397365 () Unit!61204)

(assert (=> b!3979942 (= lt!1397365 (lemmaConcatTwoListThenFirstIsPrefix!2644 lt!1397391 newSuffixResult!27))))

(assert (=> b!3979942 (isPrefix!3801 lt!1397391 lt!1397394)))

(assert (=> b!3979942 (= lt!1397394 (++!11116 lt!1397391 (_2!24020 (v!39475 lt!1397370))))))

(declare-fun lt!1397366 () Unit!61204)

(assert (=> b!3979942 (= lt!1397366 (lemmaConcatTwoListThenFirstIsPrefix!2644 lt!1397391 (_2!24020 (v!39475 lt!1397370))))))

(declare-fun lt!1397389 () TokenValue!6944)

(assert (=> b!3979942 (= lt!1397379 (Some!9127 (tuple2!41773 (Token!12567 lt!1397389 (rule!9718 (_1!24020 (v!39475 lt!1397370))) lt!1397358 lt!1397391) (_2!24020 (v!39475 lt!1397370)))))))

(assert (=> b!3979942 (= lt!1397379 (maxPrefixOneRule!2635 thiss!21717 (rule!9718 (_1!24020 (v!39475 lt!1397370))) lt!1397368))))

(assert (=> b!3979942 (= lt!1397358 (size!31825 lt!1397391))))

(assert (=> b!3979942 (= lt!1397389 (apply!9925 (transformation!6714 (rule!9718 (_1!24020 (v!39475 lt!1397370)))) (seqFromList!4953 lt!1397391)))))

(declare-fun lt!1397373 () Unit!61204)

(assert (=> b!3979942 (= lt!1397373 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1457 thiss!21717 rules!2999 lt!1397391 lt!1397368 (_2!24020 (v!39475 lt!1397370)) (rule!9718 (_1!24020 (v!39475 lt!1397370)))))))

(declare-fun list!15790 (BalanceConc!25444) List!42666)

(declare-fun charsOf!4530 (Token!12566) BalanceConc!25444)

(assert (=> b!3979942 (= lt!1397391 (list!15790 (charsOf!4530 (_1!24020 (v!39475 lt!1397370)))))))

(declare-fun lt!1397393 () Unit!61204)

(declare-fun lemmaInv!929 (TokenValueInjection!13316) Unit!61204)

(assert (=> b!3979942 (= lt!1397393 (lemmaInv!929 (transformation!6714 (rule!9718 (_1!24020 (v!39475 lt!1397370))))))))

(declare-fun ruleValid!2646 (LexerInterface!6303 Rule!13228) Bool)

(assert (=> b!3979942 (ruleValid!2646 thiss!21717 (rule!9718 (_1!24020 (v!39475 lt!1397370))))))

(declare-fun lt!1397392 () Unit!61204)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1720 (LexerInterface!6303 Rule!13228 List!42668) Unit!61204)

(assert (=> b!3979942 (= lt!1397392 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1720 thiss!21717 (rule!9718 (_1!24020 (v!39475 lt!1397370))) rules!2999))))

(declare-fun lt!1397396 () Unit!61204)

(declare-fun lemmaCharactersSize!1309 (Token!12566) Unit!61204)

(assert (=> b!3979942 (= lt!1397396 (lemmaCharactersSize!1309 token!484))))

(declare-fun lt!1397369 () Unit!61204)

(assert (=> b!3979942 (= lt!1397369 (lemmaCharactersSize!1309 (_1!24020 (v!39475 lt!1397370))))))

(assert (=> b!3979943 (= e!2466291 (and tp!1213298 tp!1213295))))

(declare-fun b!3979944 () Bool)

(declare-fun e!2466303 () Bool)

(declare-fun e!2466293 () Bool)

(assert (=> b!3979944 (= e!2466303 e!2466293)))

(declare-fun res!1612705 () Bool)

(assert (=> b!3979944 (=> res!1612705 e!2466293)))

(assert (=> b!3979944 (= res!1612705 (not (isPrefix!3801 lt!1397386 lt!1397376)))))

(assert (=> b!3979944 (isPrefix!3801 prefix!494 lt!1397376)))

(declare-fun lt!1397364 () Unit!61204)

(assert (=> b!3979944 (= lt!1397364 (lemmaConcatTwoListThenFirstIsPrefix!2644 prefix!494 suffix!1299))))

(declare-fun lt!1397405 () List!42666)

(assert (=> b!3979944 (isPrefix!3801 lt!1397386 lt!1397405)))

(declare-fun lt!1397377 () Unit!61204)

(assert (=> b!3979944 (= lt!1397377 (lemmaConcatTwoListThenFirstIsPrefix!2644 lt!1397386 suffixResult!105))))

(declare-fun b!3979945 () Bool)

(declare-fun res!1612701 () Bool)

(assert (=> b!3979945 (=> (not res!1612701) (not e!2466290))))

(assert (=> b!3979945 (= res!1612701 (isPrefix!3801 newSuffix!27 suffix!1299))))

(declare-fun b!3979946 () Bool)

(declare-fun e!2466274 () Bool)

(assert (=> b!3979946 (= e!2466293 e!2466274)))

(declare-fun res!1612709 () Bool)

(assert (=> b!3979946 (=> res!1612709 e!2466274)))

(declare-fun lt!1397380 () List!42666)

(assert (=> b!3979946 (= res!1612709 (not (= lt!1397380 prefix!494)))))

(declare-fun lt!1397384 () List!42666)

(assert (=> b!3979946 (= lt!1397380 (++!11116 lt!1397386 lt!1397384))))

(assert (=> b!3979946 (= lt!1397384 (getSuffix!2232 prefix!494 lt!1397386))))

(assert (=> b!3979946 (isPrefix!3801 lt!1397386 prefix!494)))

(declare-fun lt!1397400 () Unit!61204)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!379 (List!42666 List!42666 List!42666) Unit!61204)

(assert (=> b!3979946 (= lt!1397400 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!379 prefix!494 lt!1397386 lt!1397376))))

(declare-fun b!3979947 () Bool)

(assert (=> b!3979947 (= e!2466274 e!2466283)))

(declare-fun res!1612725 () Bool)

(assert (=> b!3979947 (=> res!1612725 e!2466283)))

(declare-fun lt!1397403 () List!42666)

(assert (=> b!3979947 (= res!1612725 (or (not (= lt!1397376 lt!1397403)) (not (= lt!1397376 lt!1397387))))))

(assert (=> b!3979947 (= lt!1397403 lt!1397387)))

(assert (=> b!3979947 (= lt!1397387 (++!11116 lt!1397386 lt!1397382))))

(assert (=> b!3979947 (= lt!1397403 (++!11116 lt!1397380 suffix!1299))))

(assert (=> b!3979947 (= lt!1397382 (++!11116 lt!1397384 suffix!1299))))

(declare-fun lt!1397390 () Unit!61204)

(declare-fun lemmaConcatAssociativity!2436 (List!42666 List!42666 List!42666) Unit!61204)

(assert (=> b!3979947 (= lt!1397390 (lemmaConcatAssociativity!2436 lt!1397386 lt!1397384 suffix!1299))))

(declare-fun b!3979948 () Bool)

(declare-fun e!2466281 () Bool)

(assert (=> b!3979948 (= e!2466301 e!2466281)))

(declare-fun res!1612703 () Bool)

(assert (=> b!3979948 (=> res!1612703 e!2466281)))

(declare-fun matchR!5596 (Regex!11619 List!42666) Bool)

(assert (=> b!3979948 (= res!1612703 (not (matchR!5596 (regex!6714 (rule!9718 token!484)) lt!1397386)))))

(assert (=> b!3979948 (isPrefix!3801 lt!1397386 lt!1397368)))

(declare-fun lt!1397357 () Unit!61204)

(assert (=> b!3979948 (= lt!1397357 (lemmaPrefixStaysPrefixWhenAddingToSuffix!634 lt!1397386 prefix!494 newSuffix!27))))

(declare-fun lt!1397375 () Unit!61204)

(assert (=> b!3979948 (= lt!1397375 (lemmaPrefixStaysPrefixWhenAddingToSuffix!634 lt!1397386 prefix!494 suffix!1299))))

(declare-fun b!3979949 () Bool)

(declare-fun res!1612702 () Bool)

(assert (=> b!3979949 (=> (not res!1612702) (not e!2466290))))

(assert (=> b!3979949 (= res!1612702 (>= (size!31825 suffix!1299) (size!31825 newSuffix!27)))))

(declare-fun b!3979950 () Bool)

(declare-fun res!1612708 () Bool)

(assert (=> b!3979950 (=> (not res!1612708) (not e!2466304))))

(assert (=> b!3979950 (= res!1612708 (= (size!31824 token!484) (size!31825 (originalCharacters!7314 token!484))))))

(declare-fun e!2466287 () Bool)

(declare-fun b!3979951 () Bool)

(declare-fun tp!1213300 () Bool)

(assert (=> b!3979951 (= e!2466287 (and tp!1213300 (inv!56831 (tag!7574 (h!47964 rules!2999))) (inv!56834 (transformation!6714 (h!47964 rules!2999))) e!2466298))))

(declare-fun b!3979952 () Bool)

(assert (=> b!3979952 (= e!2466304 (and (= (size!31824 token!484) lt!1397374) (= (originalCharacters!7314 token!484) lt!1397386)))))

(declare-fun b!3979953 () Bool)

(declare-fun tp_is_empty!20209 () Bool)

(declare-fun tp!1213292 () Bool)

(assert (=> b!3979953 (= e!2466279 (and tp_is_empty!20209 tp!1213292))))

(declare-fun b!3979954 () Bool)

(assert (=> b!3979954 (= e!2466290 e!2466284)))

(declare-fun res!1612720 () Bool)

(assert (=> b!3979954 (=> (not res!1612720) (not e!2466284))))

(declare-fun lt!1397367 () Int)

(assert (=> b!3979954 (= res!1612720 (>= lt!1397367 lt!1397374))))

(assert (=> b!3979954 (= lt!1397374 (size!31825 lt!1397386))))

(assert (=> b!3979954 (= lt!1397367 (size!31825 prefix!494))))

(assert (=> b!3979954 (= lt!1397386 (list!15790 (charsOf!4530 token!484)))))

(declare-fun b!3979955 () Bool)

(assert (=> b!3979955 (= e!2466281 e!2466302)))

(declare-fun res!1612710 () Bool)

(assert (=> b!3979955 (=> res!1612710 e!2466302)))

(assert (=> b!3979955 (= res!1612710 (not (= lt!1397395 lt!1397376)))))

(assert (=> b!3979955 (= lt!1397395 (++!11116 lt!1397386 lt!1397360))))

(assert (=> b!3979955 (= lt!1397360 (getSuffix!2232 lt!1397376 lt!1397386))))

(assert (=> b!3979955 e!2466304))

(declare-fun res!1612704 () Bool)

(assert (=> b!3979955 (=> (not res!1612704) (not e!2466304))))

(assert (=> b!3979955 (= res!1612704 (isPrefix!3801 lt!1397376 lt!1397376))))

(declare-fun lt!1397361 () Unit!61204)

(declare-fun lemmaIsPrefixRefl!2393 (List!42666 List!42666) Unit!61204)

(assert (=> b!3979955 (= lt!1397361 (lemmaIsPrefixRefl!2393 lt!1397376 lt!1397376))))

(declare-fun b!3979956 () Bool)

(declare-fun tp!1213293 () Bool)

(assert (=> b!3979956 (= e!2466278 (and tp_is_empty!20209 tp!1213293))))

(declare-fun b!3979957 () Bool)

(declare-fun tp!1213291 () Bool)

(assert (=> b!3979957 (= e!2466297 (and e!2466287 tp!1213291))))

(declare-fun b!3979958 () Bool)

(assert (=> b!3979958 (= e!2466286 e!2466280)))

(declare-fun res!1612726 () Bool)

(assert (=> b!3979958 (=> res!1612726 e!2466280)))

(assert (=> b!3979958 (= res!1612726 (not (= lt!1397381 lt!1397376)))))

(assert (=> b!3979958 (= lt!1397381 (++!11116 prefix!494 lt!1397359))))

(assert (=> b!3979958 (= lt!1397381 (++!11116 lt!1397368 lt!1397404))))

(declare-fun lt!1397362 () Unit!61204)

(assert (=> b!3979958 (= lt!1397362 (lemmaConcatAssociativity!2436 prefix!494 newSuffix!27 lt!1397404))))

(declare-fun b!3979959 () Bool)

(declare-fun tp!1213290 () Bool)

(assert (=> b!3979959 (= e!2466288 (and tp_is_empty!20209 tp!1213290))))

(declare-fun b!3979960 () Bool)

(declare-fun tp!1213301 () Bool)

(assert (=> b!3979960 (= e!2466285 (and tp_is_empty!20209 tp!1213301))))

(declare-fun b!3979961 () Bool)

(declare-fun res!1612721 () Bool)

(assert (=> b!3979961 (=> (not res!1612721) (not e!2466290))))

(declare-fun isEmpty!25438 (List!42668) Bool)

(assert (=> b!3979961 (= res!1612721 (not (isEmpty!25438 rules!2999)))))

(declare-fun b!3979962 () Bool)

(declare-fun e!2466276 () Bool)

(assert (=> b!3979962 (= e!2466294 e!2466276)))

(declare-fun res!1612715 () Bool)

(assert (=> b!3979962 (=> (not res!1612715) (not e!2466276))))

(assert (=> b!3979962 (= res!1612715 (= (maxPrefix!3601 thiss!21717 rules!2999 lt!1397376) lt!1397388))))

(assert (=> b!3979962 (= lt!1397388 (Some!9127 lt!1397355))))

(assert (=> b!3979962 (= lt!1397355 (tuple2!41773 token!484 suffixResult!105))))

(assert (=> b!3979962 (= lt!1397376 (++!11116 prefix!494 suffix!1299))))

(declare-fun b!3979963 () Bool)

(declare-fun tp!1213294 () Bool)

(assert (=> b!3979963 (= e!2466277 (and tp_is_empty!20209 tp!1213294))))

(declare-fun b!3979964 () Bool)

(assert (=> b!3979964 (= e!2466276 (not e!2466303))))

(declare-fun res!1612707 () Bool)

(assert (=> b!3979964 (=> res!1612707 e!2466303)))

(assert (=> b!3979964 (= res!1612707 (not (= lt!1397405 lt!1397376)))))

(assert (=> b!3979964 (= lt!1397405 (++!11116 lt!1397386 suffixResult!105))))

(declare-fun lt!1397383 () Unit!61204)

(assert (=> b!3979964 (= lt!1397383 (lemmaInv!929 (transformation!6714 (rule!9718 token!484))))))

(assert (=> b!3979964 (ruleValid!2646 thiss!21717 (rule!9718 token!484))))

(declare-fun lt!1397371 () Unit!61204)

(assert (=> b!3979964 (= lt!1397371 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1720 thiss!21717 (rule!9718 token!484) rules!2999))))

(assert (= (and start!374600 res!1612722) b!3979961))

(assert (= (and b!3979961 res!1612721) b!3979931))

(assert (= (and b!3979931 res!1612724) b!3979949))

(assert (= (and b!3979949 res!1612702) b!3979945))

(assert (= (and b!3979945 res!1612701) b!3979954))

(assert (= (and b!3979954 res!1612720) b!3979941))

(assert (= (and b!3979941 res!1612711) b!3979962))

(assert (= (and b!3979962 res!1612715) b!3979964))

(assert (= (and b!3979964 (not res!1612707)) b!3979944))

(assert (= (and b!3979944 (not res!1612705)) b!3979946))

(assert (= (and b!3979946 (not res!1612709)) b!3979947))

(assert (= (and b!3979947 (not res!1612725)) b!3979940))

(assert (= (and b!3979940 (not res!1612723)) b!3979948))

(assert (= (and b!3979948 (not res!1612703)) b!3979955))

(assert (= (and b!3979955 res!1612704) b!3979939))

(assert (= (and b!3979939 res!1612716) b!3979950))

(assert (= (and b!3979950 res!1612708) b!3979952))

(assert (= (and b!3979955 (not res!1612710)) b!3979934))

(assert (= (and b!3979934 (not res!1612706)) b!3979942))

(assert (= (and b!3979942 (not res!1612713)) b!3979929))

(assert (= (and b!3979929 (not res!1612714)) b!3979958))

(assert (= (and b!3979958 (not res!1612726)) b!3979937))

(assert (= (and b!3979937 (not res!1612719)) b!3979936))

(assert (= (and b!3979936 (not res!1612712)) b!3979930))

(assert (= (and b!3979930 (not res!1612717)) b!3979938))

(assert (= (and b!3979938 (not res!1612718)) b!3979933))

(assert (= (and start!374600 ((_ is Cons!42542) prefix!494)) b!3979956))

(assert (= b!3979928 b!3979943))

(assert (= b!3979932 b!3979928))

(assert (= start!374600 b!3979932))

(assert (= (and start!374600 ((_ is Cons!42542) suffixResult!105)) b!3979953))

(assert (= (and start!374600 ((_ is Cons!42542) suffix!1299)) b!3979960))

(assert (= (and start!374600 ((_ is Cons!42542) newSuffix!27)) b!3979963))

(assert (= b!3979951 b!3979935))

(assert (= b!3979957 b!3979951))

(assert (= (and start!374600 ((_ is Cons!42544) rules!2999)) b!3979957))

(assert (= (and start!374600 ((_ is Cons!42542) newSuffixResult!27)) b!3979959))

(declare-fun m!4552773 () Bool)

(assert (=> b!3979954 m!4552773))

(declare-fun m!4552775 () Bool)

(assert (=> b!3979954 m!4552775))

(declare-fun m!4552777 () Bool)

(assert (=> b!3979954 m!4552777))

(assert (=> b!3979954 m!4552777))

(declare-fun m!4552779 () Bool)

(assert (=> b!3979954 m!4552779))

(declare-fun m!4552781 () Bool)

(assert (=> b!3979949 m!4552781))

(declare-fun m!4552783 () Bool)

(assert (=> b!3979949 m!4552783))

(declare-fun m!4552785 () Bool)

(assert (=> b!3979934 m!4552785))

(declare-fun m!4552787 () Bool)

(assert (=> b!3979934 m!4552787))

(declare-fun m!4552789 () Bool)

(assert (=> b!3979934 m!4552789))

(declare-fun m!4552791 () Bool)

(assert (=> b!3979934 m!4552791))

(declare-fun m!4552793 () Bool)

(assert (=> b!3979958 m!4552793))

(declare-fun m!4552795 () Bool)

(assert (=> b!3979958 m!4552795))

(declare-fun m!4552797 () Bool)

(assert (=> b!3979958 m!4552797))

(declare-fun m!4552799 () Bool)

(assert (=> b!3979950 m!4552799))

(declare-fun m!4552801 () Bool)

(assert (=> b!3979948 m!4552801))

(declare-fun m!4552803 () Bool)

(assert (=> b!3979948 m!4552803))

(declare-fun m!4552805 () Bool)

(assert (=> b!3979948 m!4552805))

(declare-fun m!4552807 () Bool)

(assert (=> b!3979948 m!4552807))

(declare-fun m!4552809 () Bool)

(assert (=> b!3979933 m!4552809))

(declare-fun m!4552811 () Bool)

(assert (=> b!3979955 m!4552811))

(declare-fun m!4552813 () Bool)

(assert (=> b!3979955 m!4552813))

(declare-fun m!4552815 () Bool)

(assert (=> b!3979955 m!4552815))

(declare-fun m!4552817 () Bool)

(assert (=> b!3979955 m!4552817))

(declare-fun m!4552819 () Bool)

(assert (=> b!3979946 m!4552819))

(declare-fun m!4552821 () Bool)

(assert (=> b!3979946 m!4552821))

(declare-fun m!4552823 () Bool)

(assert (=> b!3979946 m!4552823))

(declare-fun m!4552825 () Bool)

(assert (=> b!3979946 m!4552825))

(declare-fun m!4552827 () Bool)

(assert (=> start!374600 m!4552827))

(declare-fun m!4552829 () Bool)

(assert (=> b!3979962 m!4552829))

(declare-fun m!4552831 () Bool)

(assert (=> b!3979962 m!4552831))

(declare-fun m!4552833 () Bool)

(assert (=> b!3979944 m!4552833))

(declare-fun m!4552835 () Bool)

(assert (=> b!3979944 m!4552835))

(declare-fun m!4552837 () Bool)

(assert (=> b!3979944 m!4552837))

(declare-fun m!4552839 () Bool)

(assert (=> b!3979944 m!4552839))

(declare-fun m!4552841 () Bool)

(assert (=> b!3979944 m!4552841))

(declare-fun m!4552843 () Bool)

(assert (=> b!3979961 m!4552843))

(declare-fun m!4552845 () Bool)

(assert (=> b!3979930 m!4552845))

(assert (=> b!3979930 m!4552845))

(declare-fun m!4552847 () Bool)

(assert (=> b!3979930 m!4552847))

(declare-fun m!4552849 () Bool)

(assert (=> b!3979947 m!4552849))

(declare-fun m!4552851 () Bool)

(assert (=> b!3979947 m!4552851))

(declare-fun m!4552853 () Bool)

(assert (=> b!3979947 m!4552853))

(declare-fun m!4552855 () Bool)

(assert (=> b!3979947 m!4552855))

(declare-fun m!4552857 () Bool)

(assert (=> b!3979937 m!4552857))

(declare-fun m!4552859 () Bool)

(assert (=> b!3979937 m!4552859))

(declare-fun m!4552861 () Bool)

(assert (=> b!3979937 m!4552861))

(declare-fun m!4552863 () Bool)

(assert (=> b!3979942 m!4552863))

(declare-fun m!4552865 () Bool)

(assert (=> b!3979942 m!4552865))

(declare-fun m!4552867 () Bool)

(assert (=> b!3979942 m!4552867))

(declare-fun m!4552869 () Bool)

(assert (=> b!3979942 m!4552869))

(declare-fun m!4552871 () Bool)

(assert (=> b!3979942 m!4552871))

(declare-fun m!4552873 () Bool)

(assert (=> b!3979942 m!4552873))

(declare-fun m!4552875 () Bool)

(assert (=> b!3979942 m!4552875))

(declare-fun m!4552877 () Bool)

(assert (=> b!3979942 m!4552877))

(declare-fun m!4552879 () Bool)

(assert (=> b!3979942 m!4552879))

(declare-fun m!4552881 () Bool)

(assert (=> b!3979942 m!4552881))

(declare-fun m!4552883 () Bool)

(assert (=> b!3979942 m!4552883))

(declare-fun m!4552885 () Bool)

(assert (=> b!3979942 m!4552885))

(assert (=> b!3979942 m!4552879))

(declare-fun m!4552887 () Bool)

(assert (=> b!3979942 m!4552887))

(assert (=> b!3979942 m!4552863))

(declare-fun m!4552889 () Bool)

(assert (=> b!3979942 m!4552889))

(declare-fun m!4552891 () Bool)

(assert (=> b!3979942 m!4552891))

(declare-fun m!4552893 () Bool)

(assert (=> b!3979942 m!4552893))

(assert (=> b!3979942 m!4552867))

(declare-fun m!4552895 () Bool)

(assert (=> b!3979942 m!4552895))

(declare-fun m!4552897 () Bool)

(assert (=> b!3979942 m!4552897))

(declare-fun m!4552899 () Bool)

(assert (=> b!3979932 m!4552899))

(declare-fun m!4552901 () Bool)

(assert (=> b!3979929 m!4552901))

(declare-fun m!4552903 () Bool)

(assert (=> b!3979929 m!4552903))

(declare-fun m!4552905 () Bool)

(assert (=> b!3979951 m!4552905))

(declare-fun m!4552907 () Bool)

(assert (=> b!3979951 m!4552907))

(declare-fun m!4552909 () Bool)

(assert (=> b!3979941 m!4552909))

(declare-fun m!4552911 () Bool)

(assert (=> b!3979941 m!4552911))

(declare-fun m!4552913 () Bool)

(assert (=> b!3979964 m!4552913))

(declare-fun m!4552915 () Bool)

(assert (=> b!3979964 m!4552915))

(declare-fun m!4552917 () Bool)

(assert (=> b!3979964 m!4552917))

(declare-fun m!4552919 () Bool)

(assert (=> b!3979964 m!4552919))

(declare-fun m!4552921 () Bool)

(assert (=> b!3979938 m!4552921))

(declare-fun m!4552923 () Bool)

(assert (=> b!3979931 m!4552923))

(declare-fun m!4552925 () Bool)

(assert (=> b!3979940 m!4552925))

(declare-fun m!4552927 () Bool)

(assert (=> b!3979940 m!4552927))

(declare-fun m!4552929 () Bool)

(assert (=> b!3979940 m!4552929))

(declare-fun m!4552931 () Bool)

(assert (=> b!3979940 m!4552931))

(declare-fun m!4552933 () Bool)

(assert (=> b!3979940 m!4552933))

(declare-fun m!4552935 () Bool)

(assert (=> b!3979940 m!4552935))

(assert (=> b!3979940 m!4552927))

(declare-fun m!4552937 () Bool)

(assert (=> b!3979940 m!4552937))

(declare-fun m!4552939 () Bool)

(assert (=> b!3979928 m!4552939))

(declare-fun m!4552941 () Bool)

(assert (=> b!3979928 m!4552941))

(declare-fun m!4552943 () Bool)

(assert (=> b!3979945 m!4552943))

(check-sat (not b!3979940) (not b!3979930) (not b!3979931) (not b_next!111155) (not b!3979961) b_and!305925 (not b!3979954) b_and!305921 (not b!3979945) b_and!305919 (not b!3979963) (not b!3979928) (not b!3979934) tp_is_empty!20209 (not b!3979964) (not b!3979960) (not b!3979944) (not b_next!111159) (not start!374600) b_and!305923 (not b!3979937) (not b!3979929) (not b!3979953) (not b!3979938) (not b_next!111153) (not b!3979962) (not b!3979956) (not b!3979941) (not b_next!111157) (not b!3979950) (not b!3979947) (not b!3979957) (not b!3979932) (not b!3979946) (not b!3979949) (not b!3979942) (not b!3979951) (not b!3979933) (not b!3979955) (not b!3979958) (not b!3979959) (not b!3979948))
(check-sat b_and!305923 (not b_next!111155) (not b_next!111153) b_and!305925 (not b_next!111157) b_and!305921 b_and!305919 (not b_next!111159))
