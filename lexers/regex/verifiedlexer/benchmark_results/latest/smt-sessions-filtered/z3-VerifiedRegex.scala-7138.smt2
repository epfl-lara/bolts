; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378740 () Bool)

(assert start!378740)

(declare-fun b!4022450 () Bool)

(declare-fun b_free!111905 () Bool)

(declare-fun b_next!112609 () Bool)

(assert (=> b!4022450 (= b_free!111905 (not b_next!112609))))

(declare-fun tp!1222377 () Bool)

(declare-fun b_and!309015 () Bool)

(assert (=> b!4022450 (= tp!1222377 b_and!309015)))

(declare-fun b_free!111907 () Bool)

(declare-fun b_next!112611 () Bool)

(assert (=> b!4022450 (= b_free!111907 (not b_next!112611))))

(declare-fun tp!1222381 () Bool)

(declare-fun b_and!309017 () Bool)

(assert (=> b!4022450 (= tp!1222381 b_and!309017)))

(declare-fun b!4022480 () Bool)

(declare-fun b_free!111909 () Bool)

(declare-fun b_next!112613 () Bool)

(assert (=> b!4022480 (= b_free!111909 (not b_next!112613))))

(declare-fun tp!1222378 () Bool)

(declare-fun b_and!309019 () Bool)

(assert (=> b!4022480 (= tp!1222378 b_and!309019)))

(declare-fun b_free!111911 () Bool)

(declare-fun b_next!112615 () Bool)

(assert (=> b!4022480 (= b_free!111911 (not b_next!112615))))

(declare-fun tp!1222379 () Bool)

(declare-fun b_and!309021 () Bool)

(assert (=> b!4022480 (= tp!1222379 b_and!309021)))

(declare-fun b!4022436 () Bool)

(declare-datatypes ((Unit!62207 0))(
  ( (Unit!62208) )
))
(declare-fun e!2495259 () Unit!62207)

(declare-fun Unit!62209 () Unit!62207)

(assert (=> b!4022436 (= e!2495259 Unit!62209)))

(declare-fun b!4022437 () Bool)

(declare-fun e!2495267 () Bool)

(declare-fun e!2495263 () Bool)

(assert (=> b!4022437 (= e!2495267 e!2495263)))

(declare-fun res!1636774 () Bool)

(assert (=> b!4022437 (=> (not res!1636774) (not e!2495263))))

(declare-datatypes ((C!23724 0))(
  ( (C!23725 (val!13956 Int)) )
))
(declare-datatypes ((List!43168 0))(
  ( (Nil!43044) (Cons!43044 (h!48464 C!23724) (t!333759 List!43168)) )
))
(declare-fun lt!1428925 () List!43168)

(declare-fun lt!1428935 () List!43168)

(assert (=> b!4022437 (= res!1636774 (= lt!1428925 lt!1428935))))

(declare-fun prefix!494 () List!43168)

(declare-fun newSuffix!27 () List!43168)

(declare-fun ++!11266 (List!43168 List!43168) List!43168)

(assert (=> b!4022437 (= lt!1428935 (++!11266 prefix!494 newSuffix!27))))

(declare-fun lt!1428945 () List!43168)

(declare-fun newSuffixResult!27 () List!43168)

(assert (=> b!4022437 (= lt!1428925 (++!11266 lt!1428945 newSuffixResult!27))))

(declare-fun b!4022438 () Bool)

(declare-fun e!2495245 () Bool)

(declare-fun e!2495244 () Bool)

(assert (=> b!4022438 (= e!2495245 e!2495244)))

(declare-fun res!1636764 () Bool)

(assert (=> b!4022438 (=> res!1636764 e!2495244)))

(declare-fun lt!1428974 () List!43168)

(assert (=> b!4022438 (= res!1636764 (not (= lt!1428974 lt!1428935)))))

(declare-fun lt!1428944 () List!43168)

(declare-fun lt!1428942 () List!43168)

(assert (=> b!4022438 (= lt!1428974 (++!11266 lt!1428944 lt!1428942))))

(declare-fun getSuffix!2376 (List!43168 List!43168) List!43168)

(assert (=> b!4022438 (= lt!1428942 (getSuffix!2376 lt!1428935 lt!1428944))))

(declare-fun b!4022439 () Bool)

(declare-fun e!2495257 () Unit!62207)

(declare-fun Unit!62210 () Unit!62207)

(assert (=> b!4022439 (= e!2495257 Unit!62210)))

(declare-fun b!4022440 () Bool)

(declare-fun e!2495260 () Bool)

(declare-fun e!2495238 () Bool)

(assert (=> b!4022440 (= e!2495260 (not e!2495238))))

(declare-fun res!1636772 () Bool)

(assert (=> b!4022440 (=> res!1636772 e!2495238)))

(declare-fun lt!1428930 () List!43168)

(declare-fun lt!1428950 () List!43168)

(assert (=> b!4022440 (= res!1636772 (not (= lt!1428930 lt!1428950)))))

(declare-fun suffixResult!105 () List!43168)

(assert (=> b!4022440 (= lt!1428930 (++!11266 lt!1428945 suffixResult!105))))

(declare-fun lt!1428928 () Unit!62207)

(declare-datatypes ((IArray!26155 0))(
  ( (IArray!26156 (innerList!13135 List!43168)) )
))
(declare-datatypes ((Conc!13075 0))(
  ( (Node!13075 (left!32445 Conc!13075) (right!32775 Conc!13075) (csize!26380 Int) (cheight!13286 Int)) (Leaf!20214 (xs!16381 IArray!26155) (csize!26381 Int)) (Empty!13075) )
))
(declare-datatypes ((BalanceConc!25744 0))(
  ( (BalanceConc!25745 (c!695186 Conc!13075)) )
))
(declare-datatypes ((List!43169 0))(
  ( (Nil!43045) (Cons!43045 (h!48465 (_ BitVec 16)) (t!333760 List!43169)) )
))
(declare-datatypes ((TokenValue!7094 0))(
  ( (FloatLiteralValue!14188 (text!50103 List!43169)) (TokenValueExt!7093 (__x!26405 Int)) (Broken!35470 (value!216232 List!43169)) (Object!7217) (End!7094) (Def!7094) (Underscore!7094) (Match!7094) (Else!7094) (Error!7094) (Case!7094) (If!7094) (Extends!7094) (Abstract!7094) (Class!7094) (Val!7094) (DelimiterValue!14188 (del!7154 List!43169)) (KeywordValue!7100 (value!216233 List!43169)) (CommentValue!14188 (value!216234 List!43169)) (WhitespaceValue!14188 (value!216235 List!43169)) (IndentationValue!7094 (value!216236 List!43169)) (String!49187) (Int32!7094) (Broken!35471 (value!216237 List!43169)) (Boolean!7095) (Unit!62211) (OperatorValue!7097 (op!7154 List!43169)) (IdentifierValue!14188 (value!216238 List!43169)) (IdentifierValue!14189 (value!216239 List!43169)) (WhitespaceValue!14189 (value!216240 List!43169)) (True!14188) (False!14188) (Broken!35472 (value!216241 List!43169)) (Broken!35473 (value!216242 List!43169)) (True!14189) (RightBrace!7094) (RightBracket!7094) (Colon!7094) (Null!7094) (Comma!7094) (LeftBracket!7094) (False!14189) (LeftBrace!7094) (ImaginaryLiteralValue!7094 (text!50104 List!43169)) (StringLiteralValue!21282 (value!216243 List!43169)) (EOFValue!7094 (value!216244 List!43169)) (IdentValue!7094 (value!216245 List!43169)) (DelimiterValue!14189 (value!216246 List!43169)) (DedentValue!7094 (value!216247 List!43169)) (NewLineValue!7094 (value!216248 List!43169)) (IntegerValue!21282 (value!216249 (_ BitVec 32)) (text!50105 List!43169)) (IntegerValue!21283 (value!216250 Int) (text!50106 List!43169)) (Times!7094) (Or!7094) (Equal!7094) (Minus!7094) (Broken!35474 (value!216251 List!43169)) (And!7094) (Div!7094) (LessEqual!7094) (Mod!7094) (Concat!18863) (Not!7094) (Plus!7094) (SpaceValue!7094 (value!216252 List!43169)) (IntegerValue!21284 (value!216253 Int) (text!50107 List!43169)) (StringLiteralValue!21283 (text!50108 List!43169)) (FloatLiteralValue!14189 (text!50109 List!43169)) (BytesLiteralValue!7094 (value!216254 List!43169)) (CommentValue!14189 (value!216255 List!43169)) (StringLiteralValue!21284 (value!216256 List!43169)) (ErrorTokenValue!7094 (msg!7155 List!43169)) )
))
(declare-datatypes ((Regex!11769 0))(
  ( (ElementMatch!11769 (c!695187 C!23724)) (Concat!18864 (regOne!24050 Regex!11769) (regTwo!24050 Regex!11769)) (EmptyExpr!11769) (Star!11769 (reg!12098 Regex!11769)) (EmptyLang!11769) (Union!11769 (regOne!24051 Regex!11769) (regTwo!24051 Regex!11769)) )
))
(declare-datatypes ((String!49188 0))(
  ( (String!49189 (value!216257 String)) )
))
(declare-datatypes ((TokenValueInjection!13616 0))(
  ( (TokenValueInjection!13617 (toValue!9376 Int) (toChars!9235 Int)) )
))
(declare-datatypes ((Rule!13528 0))(
  ( (Rule!13529 (regex!6864 Regex!11769) (tag!7724 String!49188) (isSeparator!6864 Bool) (transformation!6864 TokenValueInjection!13616)) )
))
(declare-datatypes ((Token!12866 0))(
  ( (Token!12867 (value!216258 TokenValue!7094) (rule!9918 Rule!13528) (size!32183 Int) (originalCharacters!7464 List!43168)) )
))
(declare-fun token!484 () Token!12866)

(declare-fun lemmaInv!1079 (TokenValueInjection!13616) Unit!62207)

(assert (=> b!4022440 (= lt!1428928 (lemmaInv!1079 (transformation!6864 (rule!9918 token!484))))))

(declare-datatypes ((LexerInterface!6453 0))(
  ( (LexerInterfaceExt!6450 (__x!26406 Int)) (Lexer!6451) )
))
(declare-fun thiss!21717 () LexerInterface!6453)

(declare-fun ruleValid!2796 (LexerInterface!6453 Rule!13528) Bool)

(assert (=> b!4022440 (ruleValid!2796 thiss!21717 (rule!9918 token!484))))

(declare-fun lt!1428979 () Unit!62207)

(declare-datatypes ((List!43170 0))(
  ( (Nil!43046) (Cons!43046 (h!48466 Rule!13528) (t!333761 List!43170)) )
))
(declare-fun rules!2999 () List!43170)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1870 (LexerInterface!6453 Rule!13528 List!43170) Unit!62207)

(assert (=> b!4022440 (= lt!1428979 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1870 thiss!21717 (rule!9918 token!484) rules!2999))))

(declare-fun b!4022442 () Bool)

(declare-fun res!1636777 () Bool)

(declare-fun e!2495229 () Bool)

(assert (=> b!4022442 (=> (not res!1636777) (not e!2495229))))

(declare-fun rulesInvariant!5796 (LexerInterface!6453 List!43170) Bool)

(assert (=> b!4022442 (= res!1636777 (rulesInvariant!5796 thiss!21717 rules!2999))))

(declare-fun b!4022443 () Bool)

(declare-fun e!2495262 () Bool)

(assert (=> b!4022443 (= e!2495262 false)))

(declare-fun b!4022444 () Bool)

(declare-fun e!2495230 () Unit!62207)

(declare-fun Unit!62212 () Unit!62207)

(assert (=> b!4022444 (= e!2495230 Unit!62212)))

(declare-fun lt!1428934 () Unit!62207)

(declare-datatypes ((tuple2!42170 0))(
  ( (tuple2!42171 (_1!24219 Token!12866) (_2!24219 List!43168)) )
))
(declare-datatypes ((Option!9278 0))(
  ( (None!9277) (Some!9277 (v!39653 tuple2!42170)) )
))
(declare-fun lt!1428946 () Option!9278)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!286 (LexerInterface!6453 List!43170 Rule!13528 List!43168 List!43168 Rule!13528) Unit!62207)

(assert (=> b!4022444 (= lt!1428934 (lemmaMaxPrefNoSmallerRuleMatches!286 thiss!21717 rules!2999 (rule!9918 token!484) lt!1428945 lt!1428950 (rule!9918 (_1!24219 (v!39653 lt!1428946)))))))

(declare-fun res!1636770 () Bool)

(declare-fun matchR!5730 (Regex!11769 List!43168) Bool)

(assert (=> b!4022444 (= res!1636770 (not (matchR!5730 (regex!6864 (rule!9918 (_1!24219 (v!39653 lt!1428946)))) lt!1428945)))))

(declare-fun e!2495264 () Bool)

(assert (=> b!4022444 (=> (not res!1636770) (not e!2495264))))

(assert (=> b!4022444 e!2495264))

(declare-fun b!4022445 () Bool)

(declare-fun e!2495234 () Bool)

(assert (=> b!4022445 (= e!2495234 (or (not (= (_1!24219 (v!39653 lt!1428946)) token!484)) (= lt!1428946 (Some!9277 (tuple2!42171 token!484 newSuffixResult!27)))))))

(assert (=> b!4022445 (= (rule!9918 (_1!24219 (v!39653 lt!1428946))) (rule!9918 token!484))))

(declare-fun lt!1428917 () Unit!62207)

(declare-fun lemmaSameIndexThenSameElement!264 (List!43170 Rule!13528 Rule!13528) Unit!62207)

(assert (=> b!4022445 (= lt!1428917 (lemmaSameIndexThenSameElement!264 rules!2999 (rule!9918 (_1!24219 (v!39653 lt!1428946))) (rule!9918 token!484)))))

(declare-fun lt!1428941 () Unit!62207)

(declare-fun e!2495232 () Unit!62207)

(assert (=> b!4022445 (= lt!1428941 e!2495232)))

(declare-fun c!695184 () Bool)

(declare-fun lt!1428923 () Int)

(declare-fun lt!1428954 () Int)

(assert (=> b!4022445 (= c!695184 (> lt!1428923 lt!1428954))))

(declare-fun lt!1428940 () Unit!62207)

(assert (=> b!4022445 (= lt!1428940 e!2495230)))

(declare-fun c!695183 () Bool)

(assert (=> b!4022445 (= c!695183 (< lt!1428923 lt!1428954))))

(declare-fun getIndex!562 (List!43170 Rule!13528) Int)

(assert (=> b!4022445 (= lt!1428954 (getIndex!562 rules!2999 (rule!9918 token!484)))))

(assert (=> b!4022445 (= lt!1428923 (getIndex!562 rules!2999 (rule!9918 (_1!24219 (v!39653 lt!1428946)))))))

(assert (=> b!4022445 (= (_2!24219 (v!39653 lt!1428946)) newSuffixResult!27)))

(declare-fun lt!1428916 () Unit!62207)

(declare-fun lemmaSamePrefixThenSameSuffix!2122 (List!43168 List!43168 List!43168 List!43168 List!43168) Unit!62207)

(assert (=> b!4022445 (= lt!1428916 (lemmaSamePrefixThenSameSuffix!2122 lt!1428944 (_2!24219 (v!39653 lt!1428946)) lt!1428945 newSuffixResult!27 lt!1428935))))

(assert (=> b!4022445 (= lt!1428944 lt!1428945)))

(declare-fun lt!1428981 () Unit!62207)

(declare-fun lemmaIsPrefixSameLengthThenSameList!911 (List!43168 List!43168 List!43168) Unit!62207)

(assert (=> b!4022445 (= lt!1428981 (lemmaIsPrefixSameLengthThenSameList!911 lt!1428944 lt!1428945 lt!1428935))))

(declare-fun b!4022446 () Bool)

(assert (=> b!4022446 (= e!2495244 e!2495234)))

(declare-fun res!1636767 () Bool)

(assert (=> b!4022446 (=> res!1636767 e!2495234)))

(declare-fun lt!1428957 () Int)

(declare-fun lt!1428931 () Int)

(assert (=> b!4022446 (= res!1636767 (not (= lt!1428957 lt!1428931)))))

(declare-fun lt!1428977 () Unit!62207)

(assert (=> b!4022446 (= lt!1428977 e!2495259)))

(declare-fun c!695185 () Bool)

(assert (=> b!4022446 (= c!695185 (< lt!1428931 lt!1428957))))

(declare-fun lt!1428951 () Unit!62207)

(assert (=> b!4022446 (= lt!1428951 e!2495257)))

(declare-fun c!695182 () Bool)

(assert (=> b!4022446 (= c!695182 (> lt!1428931 lt!1428957))))

(assert (=> b!4022446 (= (_2!24219 (v!39653 lt!1428946)) lt!1428942)))

(declare-fun lt!1428919 () Unit!62207)

(assert (=> b!4022446 (= lt!1428919 (lemmaSamePrefixThenSameSuffix!2122 lt!1428944 (_2!24219 (v!39653 lt!1428946)) lt!1428944 lt!1428942 lt!1428935))))

(declare-fun isPrefix!3951 (List!43168 List!43168) Bool)

(assert (=> b!4022446 (isPrefix!3951 lt!1428944 lt!1428974)))

(declare-fun lt!1428960 () Unit!62207)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2792 (List!43168 List!43168) Unit!62207)

(assert (=> b!4022446 (= lt!1428960 (lemmaConcatTwoListThenFirstIsPrefix!2792 lt!1428944 lt!1428942))))

(declare-fun b!4022447 () Bool)

(declare-fun e!2495231 () Bool)

(declare-fun tp_is_empty!20509 () Bool)

(declare-fun tp!1222384 () Bool)

(assert (=> b!4022447 (= e!2495231 (and tp_is_empty!20509 tp!1222384))))

(declare-fun b!4022448 () Bool)

(declare-fun e!2495240 () Bool)

(declare-fun e!2495251 () Bool)

(assert (=> b!4022448 (= e!2495240 e!2495251)))

(declare-fun res!1636768 () Bool)

(assert (=> b!4022448 (=> res!1636768 e!2495251)))

(declare-fun lt!1428926 () List!43168)

(assert (=> b!4022448 (= res!1636768 (not (= lt!1428926 prefix!494)))))

(declare-fun lt!1428965 () List!43168)

(assert (=> b!4022448 (= lt!1428926 (++!11266 lt!1428945 lt!1428965))))

(assert (=> b!4022448 (= lt!1428965 (getSuffix!2376 prefix!494 lt!1428945))))

(assert (=> b!4022448 (isPrefix!3951 lt!1428945 prefix!494)))

(declare-fun lt!1428962 () Unit!62207)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!523 (List!43168 List!43168 List!43168) Unit!62207)

(assert (=> b!4022448 (= lt!1428962 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!523 prefix!494 lt!1428945 lt!1428950))))

(declare-fun b!4022449 () Bool)

(declare-fun Unit!62213 () Unit!62207)

(assert (=> b!4022449 (= e!2495230 Unit!62213)))

(declare-fun e!2495250 () Bool)

(assert (=> b!4022450 (= e!2495250 (and tp!1222377 tp!1222381))))

(declare-fun e!2495241 () Bool)

(declare-fun b!4022441 () Bool)

(assert (=> b!4022441 (= e!2495241 (and (= (size!32183 token!484) lt!1428957) (= (originalCharacters!7464 token!484) lt!1428945)))))

(declare-fun res!1636786 () Bool)

(assert (=> start!378740 (=> (not res!1636786) (not e!2495229))))

(get-info :version)

(assert (=> start!378740 (= res!1636786 ((_ is Lexer!6451) thiss!21717))))

(assert (=> start!378740 e!2495229))

(declare-fun e!2495258 () Bool)

(assert (=> start!378740 e!2495258))

(declare-fun e!2495243 () Bool)

(declare-fun inv!57496 (Token!12866) Bool)

(assert (=> start!378740 (and (inv!57496 token!484) e!2495243)))

(assert (=> start!378740 e!2495231))

(declare-fun e!2495255 () Bool)

(assert (=> start!378740 e!2495255))

(declare-fun e!2495247 () Bool)

(assert (=> start!378740 e!2495247))

(assert (=> start!378740 true))

(declare-fun e!2495239 () Bool)

(assert (=> start!378740 e!2495239))

(declare-fun e!2495268 () Bool)

(assert (=> start!378740 e!2495268))

(declare-fun b!4022451 () Bool)

(declare-fun e!2495256 () Bool)

(declare-fun tp!1222375 () Bool)

(assert (=> b!4022451 (= e!2495239 (and e!2495256 tp!1222375))))

(declare-fun b!4022452 () Bool)

(declare-fun e!2495252 () Bool)

(assert (=> b!4022452 (= e!2495252 false)))

(declare-fun b!4022453 () Bool)

(declare-fun tp!1222376 () Bool)

(assert (=> b!4022453 (= e!2495258 (and tp_is_empty!20509 tp!1222376))))

(declare-fun b!4022454 () Bool)

(declare-fun res!1636773 () Bool)

(assert (=> b!4022454 (=> res!1636773 e!2495234)))

(assert (=> b!4022454 (= res!1636773 (not (isPrefix!3951 lt!1428944 lt!1428935)))))

(declare-fun b!4022455 () Bool)

(declare-fun res!1636784 () Bool)

(assert (=> b!4022455 (=> (not res!1636784) (not e!2495229))))

(declare-fun suffix!1299 () List!43168)

(assert (=> b!4022455 (= res!1636784 (isPrefix!3951 newSuffix!27 suffix!1299))))

(declare-fun b!4022456 () Bool)

(declare-fun Unit!62214 () Unit!62207)

(assert (=> b!4022456 (= e!2495257 Unit!62214)))

(declare-fun lt!1428921 () Unit!62207)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!458 (LexerInterface!6453 List!43170 Rule!13528 List!43168 List!43168 List!43168 Rule!13528) Unit!62207)

(assert (=> b!4022456 (= lt!1428921 (lemmaMaxPrefixOutputsMaxPrefix!458 thiss!21717 rules!2999 (rule!9918 token!484) lt!1428945 lt!1428950 lt!1428944 (rule!9918 (_1!24219 (v!39653 lt!1428946)))))))

(declare-fun res!1636760 () Bool)

(assert (=> b!4022456 (= res!1636760 (not (matchR!5730 (regex!6864 (rule!9918 (_1!24219 (v!39653 lt!1428946)))) lt!1428944)))))

(assert (=> b!4022456 (=> (not res!1636760) (not e!2495262))))

(assert (=> b!4022456 e!2495262))

(declare-fun b!4022457 () Bool)

(declare-fun res!1636776 () Bool)

(assert (=> b!4022457 (=> (not res!1636776) (not e!2495229))))

(declare-fun isEmpty!25700 (List!43170) Bool)

(assert (=> b!4022457 (= res!1636776 (not (isEmpty!25700 rules!2999)))))

(declare-fun b!4022458 () Bool)

(declare-fun e!2495248 () Bool)

(declare-fun e!2495237 () Bool)

(assert (=> b!4022458 (= e!2495248 e!2495237)))

(declare-fun res!1636787 () Bool)

(assert (=> b!4022458 (=> res!1636787 e!2495237)))

(declare-fun lt!1428918 () List!43168)

(assert (=> b!4022458 (= res!1636787 (not (= lt!1428918 lt!1428950)))))

(declare-fun lt!1428976 () List!43168)

(assert (=> b!4022458 (= lt!1428918 (++!11266 prefix!494 lt!1428976))))

(declare-fun lt!1428943 () List!43168)

(assert (=> b!4022458 (= lt!1428918 (++!11266 lt!1428935 lt!1428943))))

(declare-fun lt!1428952 () Unit!62207)

(declare-fun lemmaConcatAssociativity!2576 (List!43168 List!43168 List!43168) Unit!62207)

(assert (=> b!4022458 (= lt!1428952 (lemmaConcatAssociativity!2576 prefix!494 newSuffix!27 lt!1428943))))

(declare-fun b!4022459 () Bool)

(declare-fun e!2495253 () Bool)

(declare-fun e!2495236 () Bool)

(assert (=> b!4022459 (= e!2495253 e!2495236)))

(declare-fun res!1636763 () Bool)

(assert (=> b!4022459 (=> res!1636763 e!2495236)))

(assert (=> b!4022459 (= res!1636763 (not (matchR!5730 (regex!6864 (rule!9918 token!484)) lt!1428945)))))

(assert (=> b!4022459 (isPrefix!3951 lt!1428945 lt!1428935)))

(declare-fun lt!1428947 () Unit!62207)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!764 (List!43168 List!43168 List!43168) Unit!62207)

(assert (=> b!4022459 (= lt!1428947 (lemmaPrefixStaysPrefixWhenAddingToSuffix!764 lt!1428945 prefix!494 newSuffix!27))))

(declare-fun lt!1428937 () Unit!62207)

(assert (=> b!4022459 (= lt!1428937 (lemmaPrefixStaysPrefixWhenAddingToSuffix!764 lt!1428945 prefix!494 suffix!1299))))

(declare-fun b!4022460 () Bool)

(declare-fun res!1636783 () Bool)

(assert (=> b!4022460 (=> res!1636783 e!2495245)))

(declare-fun lt!1428966 () List!43168)

(assert (=> b!4022460 (= res!1636783 (not (= lt!1428966 lt!1428935)))))

(declare-fun e!2495233 () Bool)

(declare-fun tp!1222382 () Bool)

(declare-fun b!4022461 () Bool)

(declare-fun inv!21 (TokenValue!7094) Bool)

(assert (=> b!4022461 (= e!2495243 (and (inv!21 (value!216258 token!484)) e!2495233 tp!1222382))))

(declare-fun b!4022462 () Bool)

(declare-fun e!2495265 () Bool)

(assert (=> b!4022462 (= e!2495265 e!2495253)))

(declare-fun res!1636766 () Bool)

(assert (=> b!4022462 (=> res!1636766 e!2495253)))

(declare-fun lt!1428963 () Option!9278)

(declare-fun lt!1428964 () Option!9278)

(assert (=> b!4022462 (= res!1636766 (not (= lt!1428963 lt!1428964)))))

(declare-fun lt!1428972 () Token!12866)

(assert (=> b!4022462 (= lt!1428963 (Some!9277 (tuple2!42171 lt!1428972 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2771 (LexerInterface!6453 Rule!13528 List!43168) Option!9278)

(assert (=> b!4022462 (= lt!1428963 (maxPrefixOneRule!2771 thiss!21717 (rule!9918 token!484) lt!1428950))))

(declare-fun lt!1428978 () TokenValue!7094)

(assert (=> b!4022462 (= lt!1428972 (Token!12867 lt!1428978 (rule!9918 token!484) lt!1428957 lt!1428945))))

(declare-fun apply!10061 (TokenValueInjection!13616 BalanceConc!25744) TokenValue!7094)

(declare-fun seqFromList!5089 (List!43168) BalanceConc!25744)

(assert (=> b!4022462 (= lt!1428978 (apply!10061 (transformation!6864 (rule!9918 token!484)) (seqFromList!5089 lt!1428945)))))

(declare-fun lt!1428922 () Unit!62207)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1589 (LexerInterface!6453 List!43170 List!43168 List!43168 List!43168 Rule!13528) Unit!62207)

(assert (=> b!4022462 (= lt!1428922 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1589 thiss!21717 rules!2999 lt!1428945 lt!1428950 suffixResult!105 (rule!9918 token!484)))))

(declare-fun lt!1428970 () List!43168)

(assert (=> b!4022462 (= lt!1428970 suffixResult!105)))

(declare-fun lt!1428973 () Unit!62207)

(assert (=> b!4022462 (= lt!1428973 (lemmaSamePrefixThenSameSuffix!2122 lt!1428945 lt!1428970 lt!1428945 suffixResult!105 lt!1428950))))

(declare-fun lt!1428955 () List!43168)

(assert (=> b!4022462 (isPrefix!3951 lt!1428945 lt!1428955)))

(declare-fun lt!1428958 () Unit!62207)

(assert (=> b!4022462 (= lt!1428958 (lemmaConcatTwoListThenFirstIsPrefix!2792 lt!1428945 lt!1428970))))

(declare-fun b!4022463 () Bool)

(assert (=> b!4022463 (= e!2495237 e!2495245)))

(declare-fun res!1636781 () Bool)

(assert (=> b!4022463 (=> res!1636781 e!2495245)))

(assert (=> b!4022463 (= res!1636781 (not (isPrefix!3951 lt!1428944 lt!1428950)))))

(assert (=> b!4022463 (isPrefix!3951 lt!1428944 lt!1428918)))

(declare-fun lt!1428914 () Unit!62207)

(assert (=> b!4022463 (= lt!1428914 (lemmaPrefixStaysPrefixWhenAddingToSuffix!764 lt!1428944 lt!1428935 lt!1428943))))

(declare-fun b!4022464 () Bool)

(declare-fun tp!1222385 () Bool)

(assert (=> b!4022464 (= e!2495268 (and tp_is_empty!20509 tp!1222385))))

(declare-fun b!4022465 () Bool)

(assert (=> b!4022465 (= e!2495229 e!2495267)))

(declare-fun res!1636758 () Bool)

(assert (=> b!4022465 (=> (not res!1636758) (not e!2495267))))

(declare-fun lt!1428920 () Int)

(assert (=> b!4022465 (= res!1636758 (>= lt!1428920 lt!1428957))))

(declare-fun size!32184 (List!43168) Int)

(assert (=> b!4022465 (= lt!1428957 (size!32184 lt!1428945))))

(assert (=> b!4022465 (= lt!1428920 (size!32184 prefix!494))))

(declare-fun list!16004 (BalanceConc!25744) List!43168)

(declare-fun charsOf!4680 (Token!12866) BalanceConc!25744)

(assert (=> b!4022465 (= lt!1428945 (list!16004 (charsOf!4680 token!484)))))

(declare-fun b!4022466 () Bool)

(declare-fun e!2495242 () Bool)

(assert (=> b!4022466 (= e!2495242 e!2495248)))

(declare-fun res!1636771 () Bool)

(assert (=> b!4022466 (=> res!1636771 e!2495248)))

(assert (=> b!4022466 (= res!1636771 (not (= lt!1428976 suffix!1299)))))

(assert (=> b!4022466 (= lt!1428976 (++!11266 newSuffix!27 lt!1428943))))

(assert (=> b!4022466 (= lt!1428943 (getSuffix!2376 suffix!1299 newSuffix!27))))

(declare-fun b!4022467 () Bool)

(declare-fun e!2495266 () Bool)

(assert (=> b!4022467 (= e!2495266 e!2495242)))

(declare-fun res!1636782 () Bool)

(assert (=> b!4022467 (=> res!1636782 e!2495242)))

(declare-fun lt!1428939 () Option!9278)

(assert (=> b!4022467 (= res!1636782 (not (= lt!1428939 (Some!9277 (v!39653 lt!1428946)))))))

(assert (=> b!4022467 (isPrefix!3951 lt!1428944 (++!11266 lt!1428944 newSuffixResult!27))))

(declare-fun lt!1428949 () Unit!62207)

(assert (=> b!4022467 (= lt!1428949 (lemmaConcatTwoListThenFirstIsPrefix!2792 lt!1428944 newSuffixResult!27))))

(assert (=> b!4022467 (isPrefix!3951 lt!1428944 lt!1428966)))

(assert (=> b!4022467 (= lt!1428966 (++!11266 lt!1428944 (_2!24219 (v!39653 lt!1428946))))))

(declare-fun lt!1428980 () Unit!62207)

(assert (=> b!4022467 (= lt!1428980 (lemmaConcatTwoListThenFirstIsPrefix!2792 lt!1428944 (_2!24219 (v!39653 lt!1428946))))))

(declare-fun lt!1428924 () TokenValue!7094)

(assert (=> b!4022467 (= lt!1428939 (Some!9277 (tuple2!42171 (Token!12867 lt!1428924 (rule!9918 (_1!24219 (v!39653 lt!1428946))) lt!1428931 lt!1428944) (_2!24219 (v!39653 lt!1428946)))))))

(assert (=> b!4022467 (= lt!1428939 (maxPrefixOneRule!2771 thiss!21717 (rule!9918 (_1!24219 (v!39653 lt!1428946))) lt!1428935))))

(assert (=> b!4022467 (= lt!1428931 (size!32184 lt!1428944))))

(assert (=> b!4022467 (= lt!1428924 (apply!10061 (transformation!6864 (rule!9918 (_1!24219 (v!39653 lt!1428946)))) (seqFromList!5089 lt!1428944)))))

(declare-fun lt!1428961 () Unit!62207)

(assert (=> b!4022467 (= lt!1428961 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1589 thiss!21717 rules!2999 lt!1428944 lt!1428935 (_2!24219 (v!39653 lt!1428946)) (rule!9918 (_1!24219 (v!39653 lt!1428946)))))))

(assert (=> b!4022467 (= lt!1428944 (list!16004 (charsOf!4680 (_1!24219 (v!39653 lt!1428946)))))))

(declare-fun lt!1428971 () Unit!62207)

(assert (=> b!4022467 (= lt!1428971 (lemmaInv!1079 (transformation!6864 (rule!9918 (_1!24219 (v!39653 lt!1428946))))))))

(assert (=> b!4022467 (ruleValid!2796 thiss!21717 (rule!9918 (_1!24219 (v!39653 lt!1428946))))))

(declare-fun lt!1428953 () Unit!62207)

(assert (=> b!4022467 (= lt!1428953 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1870 thiss!21717 (rule!9918 (_1!24219 (v!39653 lt!1428946))) rules!2999))))

(declare-fun lt!1428927 () Unit!62207)

(declare-fun lemmaCharactersSize!1423 (Token!12866) Unit!62207)

(assert (=> b!4022467 (= lt!1428927 (lemmaCharactersSize!1423 token!484))))

(declare-fun lt!1428969 () Unit!62207)

(assert (=> b!4022467 (= lt!1428969 (lemmaCharactersSize!1423 (_1!24219 (v!39653 lt!1428946))))))

(declare-fun b!4022468 () Bool)

(declare-fun tp!1222380 () Bool)

(assert (=> b!4022468 (= e!2495255 (and tp_is_empty!20509 tp!1222380))))

(declare-fun b!4022469 () Bool)

(assert (=> b!4022469 (= e!2495251 e!2495265)))

(declare-fun res!1636785 () Bool)

(assert (=> b!4022469 (=> res!1636785 e!2495265)))

(declare-fun lt!1428967 () List!43168)

(assert (=> b!4022469 (= res!1636785 (or (not (= lt!1428950 lt!1428967)) (not (= lt!1428950 lt!1428955))))))

(assert (=> b!4022469 (= lt!1428967 lt!1428955)))

(assert (=> b!4022469 (= lt!1428955 (++!11266 lt!1428945 lt!1428970))))

(assert (=> b!4022469 (= lt!1428967 (++!11266 lt!1428926 suffix!1299))))

(assert (=> b!4022469 (= lt!1428970 (++!11266 lt!1428965 suffix!1299))))

(declare-fun lt!1428915 () Unit!62207)

(assert (=> b!4022469 (= lt!1428915 (lemmaConcatAssociativity!2576 lt!1428945 lt!1428965 suffix!1299))))

(declare-fun b!4022470 () Bool)

(assert (=> b!4022470 (= e!2495264 false)))

(declare-fun b!4022471 () Bool)

(assert (=> b!4022471 (= e!2495238 e!2495240)))

(declare-fun res!1636765 () Bool)

(assert (=> b!4022471 (=> res!1636765 e!2495240)))

(assert (=> b!4022471 (= res!1636765 (not (isPrefix!3951 lt!1428945 lt!1428950)))))

(assert (=> b!4022471 (isPrefix!3951 prefix!494 lt!1428950)))

(declare-fun lt!1428929 () Unit!62207)

(assert (=> b!4022471 (= lt!1428929 (lemmaConcatTwoListThenFirstIsPrefix!2792 prefix!494 suffix!1299))))

(assert (=> b!4022471 (isPrefix!3951 lt!1428945 lt!1428930)))

(declare-fun lt!1428948 () Unit!62207)

(assert (=> b!4022471 (= lt!1428948 (lemmaConcatTwoListThenFirstIsPrefix!2792 lt!1428945 suffixResult!105))))

(declare-fun b!4022472 () Bool)

(declare-fun res!1636769 () Bool)

(assert (=> b!4022472 (=> (not res!1636769) (not e!2495229))))

(assert (=> b!4022472 (= res!1636769 (>= (size!32184 suffix!1299) (size!32184 newSuffix!27)))))

(declare-fun e!2495235 () Bool)

(declare-fun b!4022473 () Bool)

(declare-fun tp!1222386 () Bool)

(declare-fun inv!57493 (String!49188) Bool)

(declare-fun inv!57497 (TokenValueInjection!13616) Bool)

(assert (=> b!4022473 (= e!2495256 (and tp!1222386 (inv!57493 (tag!7724 (h!48466 rules!2999))) (inv!57497 (transformation!6864 (h!48466 rules!2999))) e!2495235))))

(declare-fun b!4022474 () Bool)

(declare-fun Unit!62215 () Unit!62207)

(assert (=> b!4022474 (= e!2495259 Unit!62215)))

(declare-fun lt!1428938 () Unit!62207)

(assert (=> b!4022474 (= lt!1428938 (lemmaMaxPrefixOutputsMaxPrefix!458 thiss!21717 rules!2999 (rule!9918 (_1!24219 (v!39653 lt!1428946))) lt!1428944 lt!1428935 lt!1428945 (rule!9918 token!484)))))

(assert (=> b!4022474 false))

(declare-fun b!4022475 () Bool)

(declare-fun Unit!62216 () Unit!62207)

(assert (=> b!4022475 (= e!2495232 Unit!62216)))

(declare-fun b!4022476 () Bool)

(declare-fun Unit!62217 () Unit!62207)

(assert (=> b!4022476 (= e!2495232 Unit!62217)))

(declare-fun lt!1428959 () Unit!62207)

(assert (=> b!4022476 (= lt!1428959 (lemmaMaxPrefNoSmallerRuleMatches!286 thiss!21717 rules!2999 (rule!9918 (_1!24219 (v!39653 lt!1428946))) lt!1428944 lt!1428935 (rule!9918 token!484)))))

(declare-fun res!1636778 () Bool)

(assert (=> b!4022476 (= res!1636778 (not (matchR!5730 (regex!6864 (rule!9918 token!484)) lt!1428944)))))

(assert (=> b!4022476 (=> (not res!1636778) (not e!2495252))))

(assert (=> b!4022476 e!2495252))

(declare-fun tp!1222383 () Bool)

(declare-fun b!4022477 () Bool)

(assert (=> b!4022477 (= e!2495233 (and tp!1222383 (inv!57493 (tag!7724 (rule!9918 token!484))) (inv!57497 (transformation!6864 (rule!9918 token!484))) e!2495250))))

(declare-fun b!4022478 () Bool)

(declare-fun e!2495249 () Bool)

(assert (=> b!4022478 (= e!2495236 e!2495249)))

(declare-fun res!1636761 () Bool)

(assert (=> b!4022478 (=> res!1636761 e!2495249)))

(declare-fun lt!1428932 () List!43168)

(assert (=> b!4022478 (= res!1636761 (not (= lt!1428932 lt!1428950)))))

(declare-fun lt!1428975 () List!43168)

(assert (=> b!4022478 (= lt!1428932 (++!11266 lt!1428945 lt!1428975))))

(assert (=> b!4022478 (= lt!1428975 (getSuffix!2376 lt!1428950 lt!1428945))))

(assert (=> b!4022478 e!2495241))

(declare-fun res!1636780 () Bool)

(assert (=> b!4022478 (=> (not res!1636780) (not e!2495241))))

(assert (=> b!4022478 (= res!1636780 (isPrefix!3951 lt!1428950 lt!1428950))))

(declare-fun lt!1428936 () Unit!62207)

(declare-fun lemmaIsPrefixRefl!2527 (List!43168 List!43168) Unit!62207)

(assert (=> b!4022478 (= lt!1428936 (lemmaIsPrefixRefl!2527 lt!1428950 lt!1428950))))

(declare-fun b!4022479 () Bool)

(declare-fun res!1636779 () Bool)

(assert (=> b!4022479 (=> (not res!1636779) (not e!2495241))))

(assert (=> b!4022479 (= res!1636779 (= (size!32183 token!484) (size!32184 (originalCharacters!7464 token!484))))))

(assert (=> b!4022480 (= e!2495235 (and tp!1222378 tp!1222379))))

(declare-fun b!4022481 () Bool)

(assert (=> b!4022481 (= e!2495263 e!2495260)))

(declare-fun res!1636775 () Bool)

(assert (=> b!4022481 (=> (not res!1636775) (not e!2495260))))

(declare-fun maxPrefix!3751 (LexerInterface!6453 List!43170 List!43168) Option!9278)

(assert (=> b!4022481 (= res!1636775 (= (maxPrefix!3751 thiss!21717 rules!2999 lt!1428950) lt!1428964))))

(declare-fun lt!1428933 () tuple2!42170)

(assert (=> b!4022481 (= lt!1428964 (Some!9277 lt!1428933))))

(assert (=> b!4022481 (= lt!1428933 (tuple2!42171 token!484 suffixResult!105))))

(assert (=> b!4022481 (= lt!1428950 (++!11266 prefix!494 suffix!1299))))

(declare-fun b!4022482 () Bool)

(declare-fun res!1636759 () Bool)

(assert (=> b!4022482 (=> (not res!1636759) (not e!2495241))))

(assert (=> b!4022482 (= res!1636759 (= (value!216258 token!484) lt!1428978))))

(declare-fun b!4022483 () Bool)

(declare-fun tp!1222374 () Bool)

(assert (=> b!4022483 (= e!2495247 (and tp_is_empty!20509 tp!1222374))))

(declare-fun b!4022484 () Bool)

(assert (=> b!4022484 (= e!2495249 e!2495266)))

(declare-fun res!1636762 () Bool)

(assert (=> b!4022484 (=> res!1636762 e!2495266)))

(assert (=> b!4022484 (= res!1636762 (not ((_ is Some!9277) lt!1428946)))))

(assert (=> b!4022484 (= lt!1428946 (maxPrefix!3751 thiss!21717 rules!2999 lt!1428935))))

(assert (=> b!4022484 (and (= suffixResult!105 lt!1428975) (= lt!1428933 (tuple2!42171 lt!1428972 lt!1428975)))))

(declare-fun lt!1428956 () Unit!62207)

(assert (=> b!4022484 (= lt!1428956 (lemmaSamePrefixThenSameSuffix!2122 lt!1428945 suffixResult!105 lt!1428945 lt!1428975 lt!1428950))))

(assert (=> b!4022484 (isPrefix!3951 lt!1428945 lt!1428932)))

(declare-fun lt!1428968 () Unit!62207)

(assert (=> b!4022484 (= lt!1428968 (lemmaConcatTwoListThenFirstIsPrefix!2792 lt!1428945 lt!1428975))))

(assert (= (and start!378740 res!1636786) b!4022457))

(assert (= (and b!4022457 res!1636776) b!4022442))

(assert (= (and b!4022442 res!1636777) b!4022472))

(assert (= (and b!4022472 res!1636769) b!4022455))

(assert (= (and b!4022455 res!1636784) b!4022465))

(assert (= (and b!4022465 res!1636758) b!4022437))

(assert (= (and b!4022437 res!1636774) b!4022481))

(assert (= (and b!4022481 res!1636775) b!4022440))

(assert (= (and b!4022440 (not res!1636772)) b!4022471))

(assert (= (and b!4022471 (not res!1636765)) b!4022448))

(assert (= (and b!4022448 (not res!1636768)) b!4022469))

(assert (= (and b!4022469 (not res!1636785)) b!4022462))

(assert (= (and b!4022462 (not res!1636766)) b!4022459))

(assert (= (and b!4022459 (not res!1636763)) b!4022478))

(assert (= (and b!4022478 res!1636780) b!4022482))

(assert (= (and b!4022482 res!1636759) b!4022479))

(assert (= (and b!4022479 res!1636779) b!4022441))

(assert (= (and b!4022478 (not res!1636761)) b!4022484))

(assert (= (and b!4022484 (not res!1636762)) b!4022467))

(assert (= (and b!4022467 (not res!1636782)) b!4022466))

(assert (= (and b!4022466 (not res!1636771)) b!4022458))

(assert (= (and b!4022458 (not res!1636787)) b!4022463))

(assert (= (and b!4022463 (not res!1636781)) b!4022460))

(assert (= (and b!4022460 (not res!1636783)) b!4022438))

(assert (= (and b!4022438 (not res!1636764)) b!4022446))

(assert (= (and b!4022446 c!695182) b!4022456))

(assert (= (and b!4022446 (not c!695182)) b!4022439))

(assert (= (and b!4022456 res!1636760) b!4022443))

(assert (= (and b!4022446 c!695185) b!4022474))

(assert (= (and b!4022446 (not c!695185)) b!4022436))

(assert (= (and b!4022446 (not res!1636767)) b!4022454))

(assert (= (and b!4022454 (not res!1636773)) b!4022445))

(assert (= (and b!4022445 c!695183) b!4022444))

(assert (= (and b!4022445 (not c!695183)) b!4022449))

(assert (= (and b!4022444 res!1636770) b!4022470))

(assert (= (and b!4022445 c!695184) b!4022476))

(assert (= (and b!4022445 (not c!695184)) b!4022475))

(assert (= (and b!4022476 res!1636778) b!4022452))

(assert (= (and start!378740 ((_ is Cons!43044) prefix!494)) b!4022453))

(assert (= b!4022477 b!4022450))

(assert (= b!4022461 b!4022477))

(assert (= start!378740 b!4022461))

(assert (= (and start!378740 ((_ is Cons!43044) suffixResult!105)) b!4022447))

(assert (= (and start!378740 ((_ is Cons!43044) suffix!1299)) b!4022468))

(assert (= (and start!378740 ((_ is Cons!43044) newSuffix!27)) b!4022483))

(assert (= b!4022473 b!4022480))

(assert (= b!4022451 b!4022473))

(assert (= (and start!378740 ((_ is Cons!43046) rules!2999)) b!4022451))

(assert (= (and start!378740 ((_ is Cons!43044) newSuffixResult!27)) b!4022464))

(declare-fun m!4613421 () Bool)

(assert (=> b!4022465 m!4613421))

(declare-fun m!4613423 () Bool)

(assert (=> b!4022465 m!4613423))

(declare-fun m!4613425 () Bool)

(assert (=> b!4022465 m!4613425))

(assert (=> b!4022465 m!4613425))

(declare-fun m!4613427 () Bool)

(assert (=> b!4022465 m!4613427))

(declare-fun m!4613429 () Bool)

(assert (=> b!4022466 m!4613429))

(declare-fun m!4613431 () Bool)

(assert (=> b!4022466 m!4613431))

(declare-fun m!4613433 () Bool)

(assert (=> b!4022454 m!4613433))

(declare-fun m!4613435 () Bool)

(assert (=> b!4022478 m!4613435))

(declare-fun m!4613437 () Bool)

(assert (=> b!4022478 m!4613437))

(declare-fun m!4613439 () Bool)

(assert (=> b!4022478 m!4613439))

(declare-fun m!4613441 () Bool)

(assert (=> b!4022478 m!4613441))

(declare-fun m!4613443 () Bool)

(assert (=> b!4022457 m!4613443))

(declare-fun m!4613445 () Bool)

(assert (=> b!4022479 m!4613445))

(declare-fun m!4613447 () Bool)

(assert (=> b!4022484 m!4613447))

(declare-fun m!4613449 () Bool)

(assert (=> b!4022484 m!4613449))

(declare-fun m!4613451 () Bool)

(assert (=> b!4022484 m!4613451))

(declare-fun m!4613453 () Bool)

(assert (=> b!4022484 m!4613453))

(declare-fun m!4613455 () Bool)

(assert (=> b!4022438 m!4613455))

(declare-fun m!4613457 () Bool)

(assert (=> b!4022438 m!4613457))

(declare-fun m!4613459 () Bool)

(assert (=> b!4022477 m!4613459))

(declare-fun m!4613461 () Bool)

(assert (=> b!4022477 m!4613461))

(declare-fun m!4613463 () Bool)

(assert (=> b!4022446 m!4613463))

(declare-fun m!4613465 () Bool)

(assert (=> b!4022446 m!4613465))

(declare-fun m!4613467 () Bool)

(assert (=> b!4022446 m!4613467))

(declare-fun m!4613469 () Bool)

(assert (=> b!4022437 m!4613469))

(declare-fun m!4613471 () Bool)

(assert (=> b!4022437 m!4613471))

(declare-fun m!4613473 () Bool)

(assert (=> b!4022461 m!4613473))

(declare-fun m!4613475 () Bool)

(assert (=> b!4022481 m!4613475))

(declare-fun m!4613477 () Bool)

(assert (=> b!4022481 m!4613477))

(declare-fun m!4613479 () Bool)

(assert (=> b!4022473 m!4613479))

(declare-fun m!4613481 () Bool)

(assert (=> b!4022473 m!4613481))

(declare-fun m!4613483 () Bool)

(assert (=> b!4022472 m!4613483))

(declare-fun m!4613485 () Bool)

(assert (=> b!4022472 m!4613485))

(declare-fun m!4613487 () Bool)

(assert (=> b!4022458 m!4613487))

(declare-fun m!4613489 () Bool)

(assert (=> b!4022458 m!4613489))

(declare-fun m!4613491 () Bool)

(assert (=> b!4022458 m!4613491))

(declare-fun m!4613493 () Bool)

(assert (=> b!4022459 m!4613493))

(declare-fun m!4613495 () Bool)

(assert (=> b!4022459 m!4613495))

(declare-fun m!4613497 () Bool)

(assert (=> b!4022459 m!4613497))

(declare-fun m!4613499 () Bool)

(assert (=> b!4022459 m!4613499))

(declare-fun m!4613501 () Bool)

(assert (=> b!4022445 m!4613501))

(declare-fun m!4613503 () Bool)

(assert (=> b!4022445 m!4613503))

(declare-fun m!4613505 () Bool)

(assert (=> b!4022445 m!4613505))

(declare-fun m!4613507 () Bool)

(assert (=> b!4022445 m!4613507))

(declare-fun m!4613509 () Bool)

(assert (=> b!4022445 m!4613509))

(declare-fun m!4613511 () Bool)

(assert (=> b!4022467 m!4613511))

(declare-fun m!4613513 () Bool)

(assert (=> b!4022467 m!4613513))

(declare-fun m!4613515 () Bool)

(assert (=> b!4022467 m!4613515))

(declare-fun m!4613517 () Bool)

(assert (=> b!4022467 m!4613517))

(declare-fun m!4613519 () Bool)

(assert (=> b!4022467 m!4613519))

(declare-fun m!4613521 () Bool)

(assert (=> b!4022467 m!4613521))

(assert (=> b!4022467 m!4613519))

(declare-fun m!4613523 () Bool)

(assert (=> b!4022467 m!4613523))

(declare-fun m!4613525 () Bool)

(assert (=> b!4022467 m!4613525))

(assert (=> b!4022467 m!4613511))

(declare-fun m!4613527 () Bool)

(assert (=> b!4022467 m!4613527))

(declare-fun m!4613529 () Bool)

(assert (=> b!4022467 m!4613529))

(declare-fun m!4613531 () Bool)

(assert (=> b!4022467 m!4613531))

(declare-fun m!4613533 () Bool)

(assert (=> b!4022467 m!4613533))

(declare-fun m!4613535 () Bool)

(assert (=> b!4022467 m!4613535))

(declare-fun m!4613537 () Bool)

(assert (=> b!4022467 m!4613537))

(declare-fun m!4613539 () Bool)

(assert (=> b!4022467 m!4613539))

(declare-fun m!4613541 () Bool)

(assert (=> b!4022467 m!4613541))

(assert (=> b!4022467 m!4613539))

(declare-fun m!4613543 () Bool)

(assert (=> b!4022467 m!4613543))

(declare-fun m!4613545 () Bool)

(assert (=> b!4022467 m!4613545))

(declare-fun m!4613547 () Bool)

(assert (=> b!4022440 m!4613547))

(declare-fun m!4613549 () Bool)

(assert (=> b!4022440 m!4613549))

(declare-fun m!4613551 () Bool)

(assert (=> b!4022440 m!4613551))

(declare-fun m!4613553 () Bool)

(assert (=> b!4022440 m!4613553))

(declare-fun m!4613555 () Bool)

(assert (=> b!4022469 m!4613555))

(declare-fun m!4613557 () Bool)

(assert (=> b!4022469 m!4613557))

(declare-fun m!4613559 () Bool)

(assert (=> b!4022469 m!4613559))

(declare-fun m!4613561 () Bool)

(assert (=> b!4022469 m!4613561))

(declare-fun m!4613563 () Bool)

(assert (=> b!4022463 m!4613563))

(declare-fun m!4613565 () Bool)

(assert (=> b!4022463 m!4613565))

(declare-fun m!4613567 () Bool)

(assert (=> b!4022463 m!4613567))

(declare-fun m!4613569 () Bool)

(assert (=> b!4022476 m!4613569))

(declare-fun m!4613571 () Bool)

(assert (=> b!4022476 m!4613571))

(declare-fun m!4613573 () Bool)

(assert (=> b!4022444 m!4613573))

(declare-fun m!4613575 () Bool)

(assert (=> b!4022444 m!4613575))

(declare-fun m!4613577 () Bool)

(assert (=> b!4022462 m!4613577))

(declare-fun m!4613579 () Bool)

(assert (=> b!4022462 m!4613579))

(declare-fun m!4613581 () Bool)

(assert (=> b!4022462 m!4613581))

(declare-fun m!4613583 () Bool)

(assert (=> b!4022462 m!4613583))

(assert (=> b!4022462 m!4613577))

(declare-fun m!4613585 () Bool)

(assert (=> b!4022462 m!4613585))

(declare-fun m!4613587 () Bool)

(assert (=> b!4022462 m!4613587))

(declare-fun m!4613589 () Bool)

(assert (=> b!4022462 m!4613589))

(declare-fun m!4613591 () Bool)

(assert (=> b!4022456 m!4613591))

(declare-fun m!4613593 () Bool)

(assert (=> b!4022456 m!4613593))

(declare-fun m!4613595 () Bool)

(assert (=> start!378740 m!4613595))

(declare-fun m!4613597 () Bool)

(assert (=> b!4022471 m!4613597))

(declare-fun m!4613599 () Bool)

(assert (=> b!4022471 m!4613599))

(declare-fun m!4613601 () Bool)

(assert (=> b!4022471 m!4613601))

(declare-fun m!4613603 () Bool)

(assert (=> b!4022471 m!4613603))

(declare-fun m!4613605 () Bool)

(assert (=> b!4022471 m!4613605))

(declare-fun m!4613607 () Bool)

(assert (=> b!4022474 m!4613607))

(declare-fun m!4613609 () Bool)

(assert (=> b!4022455 m!4613609))

(declare-fun m!4613611 () Bool)

(assert (=> b!4022442 m!4613611))

(declare-fun m!4613613 () Bool)

(assert (=> b!4022448 m!4613613))

(declare-fun m!4613615 () Bool)

(assert (=> b!4022448 m!4613615))

(declare-fun m!4613617 () Bool)

(assert (=> b!4022448 m!4613617))

(declare-fun m!4613619 () Bool)

(assert (=> b!4022448 m!4613619))

(check-sat (not b!4022463) (not b!4022451) b_and!309021 (not b!4022457) tp_is_empty!20509 (not b!4022437) (not b!4022456) (not b!4022464) (not b!4022447) (not b!4022446) (not b!4022459) (not b!4022473) (not b!4022476) (not b!4022466) (not b!4022453) (not b!4022448) (not b!4022477) (not b!4022440) (not b!4022438) b_and!309019 (not b!4022442) (not b_next!112615) (not b!4022468) (not b_next!112611) (not b!4022465) (not b!4022454) (not start!378740) b_and!309017 (not b!4022472) (not b!4022481) (not b!4022458) (not b!4022478) (not b!4022455) (not b!4022471) b_and!309015 (not b!4022461) (not b!4022444) (not b!4022445) (not b!4022479) (not b!4022474) (not b!4022462) (not b!4022469) (not b_next!112613) (not b!4022483) (not b_next!112609) (not b!4022467) (not b!4022484))
(check-sat b_and!309021 (not b_next!112611) b_and!309017 b_and!309015 (not b_next!112613) (not b_next!112609) b_and!309019 (not b_next!112615))
