; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376060 () Bool)

(assert start!376060)

(declare-fun b!3995306 () Bool)

(declare-fun b_free!110969 () Bool)

(declare-fun b_next!111673 () Bool)

(assert (=> b!3995306 (= b_free!110969 (not b_next!111673))))

(declare-fun tp!1216365 () Bool)

(declare-fun b_and!306879 () Bool)

(assert (=> b!3995306 (= tp!1216365 b_and!306879)))

(declare-fun b_free!110971 () Bool)

(declare-fun b_next!111675 () Bool)

(assert (=> b!3995306 (= b_free!110971 (not b_next!111675))))

(declare-fun tp!1216366 () Bool)

(declare-fun b_and!306881 () Bool)

(assert (=> b!3995306 (= tp!1216366 b_and!306881)))

(declare-fun b!3995292 () Bool)

(declare-fun b_free!110973 () Bool)

(declare-fun b_next!111677 () Bool)

(assert (=> b!3995292 (= b_free!110973 (not b_next!111677))))

(declare-fun tp!1216376 () Bool)

(declare-fun b_and!306883 () Bool)

(assert (=> b!3995292 (= tp!1216376 b_and!306883)))

(declare-fun b_free!110975 () Bool)

(declare-fun b_next!111679 () Bool)

(assert (=> b!3995292 (= b_free!110975 (not b_next!111679))))

(declare-fun tp!1216371 () Bool)

(declare-fun b_and!306885 () Bool)

(assert (=> b!3995292 (= tp!1216371 b_and!306885)))

(declare-fun b!3995271 () Bool)

(declare-datatypes ((Unit!61574 0))(
  ( (Unit!61575) )
))
(declare-fun e!2476856 () Unit!61574)

(declare-fun Unit!61576 () Unit!61574)

(assert (=> b!3995271 (= e!2476856 Unit!61576)))

(declare-datatypes ((C!23532 0))(
  ( (C!23533 (val!13860 Int)) )
))
(declare-datatypes ((List!42850 0))(
  ( (Nil!42726) (Cons!42726 (h!48146 C!23532) (t!331985 List!42850)) )
))
(declare-datatypes ((IArray!25963 0))(
  ( (IArray!25964 (innerList!13039 List!42850)) )
))
(declare-datatypes ((Conc!12979 0))(
  ( (Node!12979 (left!32269 Conc!12979) (right!32599 Conc!12979) (csize!26188 Int) (cheight!13190 Int)) (Leaf!20070 (xs!16285 IArray!25963) (csize!26189 Int)) (Empty!12979) )
))
(declare-datatypes ((BalanceConc!25552 0))(
  ( (BalanceConc!25553 (c!691296 Conc!12979)) )
))
(declare-datatypes ((List!42851 0))(
  ( (Nil!42727) (Cons!42727 (h!48147 (_ BitVec 16)) (t!331986 List!42851)) )
))
(declare-datatypes ((TokenValue!6998 0))(
  ( (FloatLiteralValue!13996 (text!49431 List!42851)) (TokenValueExt!6997 (__x!26213 Int)) (Broken!34990 (value!213496 List!42851)) (Object!7121) (End!6998) (Def!6998) (Underscore!6998) (Match!6998) (Else!6998) (Error!6998) (Case!6998) (If!6998) (Extends!6998) (Abstract!6998) (Class!6998) (Val!6998) (DelimiterValue!13996 (del!7058 List!42851)) (KeywordValue!7004 (value!213497 List!42851)) (CommentValue!13996 (value!213498 List!42851)) (WhitespaceValue!13996 (value!213499 List!42851)) (IndentationValue!6998 (value!213500 List!42851)) (String!48707) (Int32!6998) (Broken!34991 (value!213501 List!42851)) (Boolean!6999) (Unit!61577) (OperatorValue!7001 (op!7058 List!42851)) (IdentifierValue!13996 (value!213502 List!42851)) (IdentifierValue!13997 (value!213503 List!42851)) (WhitespaceValue!13997 (value!213504 List!42851)) (True!13996) (False!13996) (Broken!34992 (value!213505 List!42851)) (Broken!34993 (value!213506 List!42851)) (True!13997) (RightBrace!6998) (RightBracket!6998) (Colon!6998) (Null!6998) (Comma!6998) (LeftBracket!6998) (False!13997) (LeftBrace!6998) (ImaginaryLiteralValue!6998 (text!49432 List!42851)) (StringLiteralValue!20994 (value!213507 List!42851)) (EOFValue!6998 (value!213508 List!42851)) (IdentValue!6998 (value!213509 List!42851)) (DelimiterValue!13997 (value!213510 List!42851)) (DedentValue!6998 (value!213511 List!42851)) (NewLineValue!6998 (value!213512 List!42851)) (IntegerValue!20994 (value!213513 (_ BitVec 32)) (text!49433 List!42851)) (IntegerValue!20995 (value!213514 Int) (text!49434 List!42851)) (Times!6998) (Or!6998) (Equal!6998) (Minus!6998) (Broken!34994 (value!213515 List!42851)) (And!6998) (Div!6998) (LessEqual!6998) (Mod!6998) (Concat!18671) (Not!6998) (Plus!6998) (SpaceValue!6998 (value!213516 List!42851)) (IntegerValue!20996 (value!213517 Int) (text!49435 List!42851)) (StringLiteralValue!20995 (text!49436 List!42851)) (FloatLiteralValue!13997 (text!49437 List!42851)) (BytesLiteralValue!6998 (value!213518 List!42851)) (CommentValue!13997 (value!213519 List!42851)) (StringLiteralValue!20996 (value!213520 List!42851)) (ErrorTokenValue!6998 (msg!7059 List!42851)) )
))
(declare-datatypes ((Regex!11673 0))(
  ( (ElementMatch!11673 (c!691297 C!23532)) (Concat!18672 (regOne!23858 Regex!11673) (regTwo!23858 Regex!11673)) (EmptyExpr!11673) (Star!11673 (reg!12002 Regex!11673)) (EmptyLang!11673) (Union!11673 (regOne!23859 Regex!11673) (regTwo!23859 Regex!11673)) )
))
(declare-datatypes ((String!48708 0))(
  ( (String!48709 (value!213521 String)) )
))
(declare-datatypes ((TokenValueInjection!13424 0))(
  ( (TokenValueInjection!13425 (toValue!9256 Int) (toChars!9115 Int)) )
))
(declare-datatypes ((Rule!13336 0))(
  ( (Rule!13337 (regex!6768 Regex!11673) (tag!7628 String!48708) (isSeparator!6768 Bool) (transformation!6768 TokenValueInjection!13424)) )
))
(declare-datatypes ((Token!12674 0))(
  ( (Token!12675 (value!213522 TokenValue!6998) (rule!9794 Rule!13336) (size!31954 Int) (originalCharacters!7368 List!42850)) )
))
(declare-fun token!484 () Token!12674)

(declare-datatypes ((tuple2!41924 0))(
  ( (tuple2!41925 (_1!24096 Token!12674) (_2!24096 List!42850)) )
))
(declare-datatypes ((Option!9182 0))(
  ( (None!9181) (Some!9181 (v!39541 tuple2!41924)) )
))
(declare-fun lt!1410074 () Option!9182)

(declare-fun lt!1410046 () Unit!61574)

(declare-fun lt!1410038 () List!42850)

(declare-datatypes ((LexerInterface!6357 0))(
  ( (LexerInterfaceExt!6354 (__x!26214 Int)) (Lexer!6355) )
))
(declare-fun thiss!21717 () LexerInterface!6357)

(declare-fun lt!1410030 () List!42850)

(declare-datatypes ((List!42852 0))(
  ( (Nil!42728) (Cons!42728 (h!48148 Rule!13336) (t!331987 List!42852)) )
))
(declare-fun rules!2999 () List!42852)

(declare-fun lt!1410077 () List!42850)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!422 (LexerInterface!6357 List!42852 Rule!13336 List!42850 List!42850 List!42850 Rule!13336) Unit!61574)

(assert (=> b!3995271 (= lt!1410046 (lemmaMaxPrefixOutputsMaxPrefix!422 thiss!21717 rules!2999 (rule!9794 (_1!24096 (v!39541 lt!1410074))) lt!1410030 lt!1410077 lt!1410038 (rule!9794 token!484)))))

(assert (=> b!3995271 false))

(declare-fun b!3995272 () Bool)

(declare-fun e!2476847 () Bool)

(declare-fun tp_is_empty!20317 () Bool)

(declare-fun tp!1216370 () Bool)

(assert (=> b!3995272 (= e!2476847 (and tp_is_empty!20317 tp!1216370))))

(declare-fun b!3995273 () Bool)

(declare-fun e!2476848 () Bool)

(declare-fun e!2476866 () Bool)

(assert (=> b!3995273 (= e!2476848 e!2476866)))

(declare-fun res!1622223 () Bool)

(assert (=> b!3995273 (=> res!1622223 e!2476866)))

(declare-fun lt!1410076 () List!42850)

(declare-fun lt!1410054 () List!42850)

(declare-fun lt!1410042 () List!42850)

(assert (=> b!3995273 (= res!1622223 (or (not (= lt!1410076 lt!1410054)) (not (= lt!1410076 lt!1410042))))))

(assert (=> b!3995273 (= lt!1410054 lt!1410042)))

(declare-fun lt!1410069 () List!42850)

(declare-fun ++!11170 (List!42850 List!42850) List!42850)

(assert (=> b!3995273 (= lt!1410042 (++!11170 lt!1410038 lt!1410069))))

(declare-fun lt!1410044 () List!42850)

(declare-fun suffix!1299 () List!42850)

(assert (=> b!3995273 (= lt!1410054 (++!11170 lt!1410044 suffix!1299))))

(declare-fun lt!1410064 () List!42850)

(assert (=> b!3995273 (= lt!1410069 (++!11170 lt!1410064 suffix!1299))))

(declare-fun lt!1410066 () Unit!61574)

(declare-fun lemmaConcatAssociativity!2490 (List!42850 List!42850 List!42850) Unit!61574)

(assert (=> b!3995273 (= lt!1410066 (lemmaConcatAssociativity!2490 lt!1410038 lt!1410064 suffix!1299))))

(declare-fun b!3995274 () Bool)

(declare-fun e!2476875 () Bool)

(assert (=> b!3995274 (= e!2476875 false)))

(declare-fun b!3995275 () Bool)

(declare-fun e!2476849 () Bool)

(assert (=> b!3995275 (= e!2476866 e!2476849)))

(declare-fun res!1622240 () Bool)

(assert (=> b!3995275 (=> res!1622240 e!2476849)))

(declare-fun lt!1410052 () Option!9182)

(declare-fun lt!1410053 () Option!9182)

(assert (=> b!3995275 (= res!1622240 (not (= lt!1410052 lt!1410053)))))

(declare-fun lt!1410082 () Token!12674)

(declare-fun suffixResult!105 () List!42850)

(assert (=> b!3995275 (= lt!1410052 (Some!9181 (tuple2!41925 lt!1410082 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2689 (LexerInterface!6357 Rule!13336 List!42850) Option!9182)

(assert (=> b!3995275 (= lt!1410052 (maxPrefixOneRule!2689 thiss!21717 (rule!9794 token!484) lt!1410076))))

(declare-fun lt!1410079 () Int)

(declare-fun lt!1410055 () TokenValue!6998)

(assert (=> b!3995275 (= lt!1410082 (Token!12675 lt!1410055 (rule!9794 token!484) lt!1410079 lt!1410038))))

(declare-fun apply!9979 (TokenValueInjection!13424 BalanceConc!25552) TokenValue!6998)

(declare-fun seqFromList!5007 (List!42850) BalanceConc!25552)

(assert (=> b!3995275 (= lt!1410055 (apply!9979 (transformation!6768 (rule!9794 token!484)) (seqFromList!5007 lt!1410038)))))

(declare-fun lt!1410075 () Unit!61574)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1511 (LexerInterface!6357 List!42852 List!42850 List!42850 List!42850 Rule!13336) Unit!61574)

(assert (=> b!3995275 (= lt!1410075 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1511 thiss!21717 rules!2999 lt!1410038 lt!1410076 suffixResult!105 (rule!9794 token!484)))))

(assert (=> b!3995275 (= lt!1410069 suffixResult!105)))

(declare-fun lt!1410073 () Unit!61574)

(declare-fun lemmaSamePrefixThenSameSuffix!2042 (List!42850 List!42850 List!42850 List!42850 List!42850) Unit!61574)

(assert (=> b!3995275 (= lt!1410073 (lemmaSamePrefixThenSameSuffix!2042 lt!1410038 lt!1410069 lt!1410038 suffixResult!105 lt!1410076))))

(declare-fun isPrefix!3855 (List!42850 List!42850) Bool)

(assert (=> b!3995275 (isPrefix!3855 lt!1410038 lt!1410042)))

(declare-fun lt!1410078 () Unit!61574)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2698 (List!42850 List!42850) Unit!61574)

(assert (=> b!3995275 (= lt!1410078 (lemmaConcatTwoListThenFirstIsPrefix!2698 lt!1410038 lt!1410069))))

(declare-fun res!1622228 () Bool)

(declare-fun e!2476865 () Bool)

(assert (=> start!376060 (=> (not res!1622228) (not e!2476865))))

(get-info :version)

(assert (=> start!376060 (= res!1622228 ((_ is Lexer!6355) thiss!21717))))

(assert (=> start!376060 e!2476865))

(declare-fun e!2476861 () Bool)

(assert (=> start!376060 e!2476861))

(declare-fun e!2476863 () Bool)

(declare-fun inv!57067 (Token!12674) Bool)

(assert (=> start!376060 (and (inv!57067 token!484) e!2476863)))

(assert (=> start!376060 e!2476847))

(declare-fun e!2476851 () Bool)

(assert (=> start!376060 e!2476851))

(declare-fun e!2476880 () Bool)

(assert (=> start!376060 e!2476880))

(assert (=> start!376060 true))

(declare-fun e!2476860 () Bool)

(assert (=> start!376060 e!2476860))

(declare-fun e!2476853 () Bool)

(assert (=> start!376060 e!2476853))

(declare-fun b!3995276 () Bool)

(declare-fun e!2476854 () Bool)

(declare-fun e!2476871 () Bool)

(assert (=> b!3995276 (= e!2476854 e!2476871)))

(declare-fun res!1622227 () Bool)

(assert (=> b!3995276 (=> res!1622227 e!2476871)))

(declare-fun lt!1410062 () List!42850)

(assert (=> b!3995276 (= res!1622227 (not (= lt!1410062 suffix!1299)))))

(declare-fun newSuffix!27 () List!42850)

(declare-fun lt!1410056 () List!42850)

(assert (=> b!3995276 (= lt!1410062 (++!11170 newSuffix!27 lt!1410056))))

(declare-fun getSuffix!2286 (List!42850 List!42850) List!42850)

(assert (=> b!3995276 (= lt!1410056 (getSuffix!2286 suffix!1299 newSuffix!27))))

(declare-fun b!3995277 () Bool)

(declare-fun e!2476873 () Unit!61574)

(declare-fun Unit!61578 () Unit!61574)

(assert (=> b!3995277 (= e!2476873 Unit!61578)))

(declare-fun b!3995278 () Bool)

(declare-fun e!2476850 () Bool)

(declare-fun e!2476878 () Bool)

(assert (=> b!3995278 (= e!2476850 e!2476878)))

(declare-fun res!1622236 () Bool)

(assert (=> b!3995278 (=> res!1622236 e!2476878)))

(declare-fun lt!1410091 () List!42850)

(assert (=> b!3995278 (= res!1622236 (not (= lt!1410091 lt!1410076)))))

(declare-fun lt!1410037 () List!42850)

(assert (=> b!3995278 (= lt!1410091 (++!11170 lt!1410038 lt!1410037))))

(assert (=> b!3995278 (= lt!1410037 (getSuffix!2286 lt!1410076 lt!1410038))))

(declare-fun e!2476858 () Bool)

(assert (=> b!3995278 e!2476858))

(declare-fun res!1622242 () Bool)

(assert (=> b!3995278 (=> (not res!1622242) (not e!2476858))))

(assert (=> b!3995278 (= res!1622242 (isPrefix!3855 lt!1410076 lt!1410076))))

(declare-fun lt!1410045 () Unit!61574)

(declare-fun lemmaIsPrefixRefl!2447 (List!42850 List!42850) Unit!61574)

(assert (=> b!3995278 (= lt!1410045 (lemmaIsPrefixRefl!2447 lt!1410076 lt!1410076))))

(declare-fun b!3995279 () Bool)

(declare-fun e!2476852 () Bool)

(assert (=> b!3995279 (= e!2476871 e!2476852)))

(declare-fun res!1622247 () Bool)

(assert (=> b!3995279 (=> res!1622247 e!2476852)))

(declare-fun lt!1410068 () List!42850)

(assert (=> b!3995279 (= res!1622247 (not (= lt!1410068 lt!1410076)))))

(declare-fun prefix!494 () List!42850)

(assert (=> b!3995279 (= lt!1410068 (++!11170 prefix!494 lt!1410062))))

(assert (=> b!3995279 (= lt!1410068 (++!11170 lt!1410077 lt!1410056))))

(declare-fun lt!1410057 () Unit!61574)

(assert (=> b!3995279 (= lt!1410057 (lemmaConcatAssociativity!2490 prefix!494 newSuffix!27 lt!1410056))))

(declare-fun b!3995280 () Bool)

(declare-fun res!1622234 () Bool)

(declare-fun e!2476857 () Bool)

(assert (=> b!3995280 (=> res!1622234 e!2476857)))

(declare-fun lt!1410083 () List!42850)

(assert (=> b!3995280 (= res!1622234 (not (= lt!1410083 lt!1410077)))))

(declare-fun b!3995281 () Bool)

(declare-fun tp!1216372 () Bool)

(assert (=> b!3995281 (= e!2476851 (and tp_is_empty!20317 tp!1216372))))

(declare-fun b!3995282 () Bool)

(declare-fun e!2476879 () Bool)

(declare-fun tp!1216373 () Bool)

(assert (=> b!3995282 (= e!2476860 (and e!2476879 tp!1216373))))

(declare-fun b!3995283 () Bool)

(declare-fun e!2476869 () Unit!61574)

(declare-fun Unit!61579 () Unit!61574)

(assert (=> b!3995283 (= e!2476869 Unit!61579)))

(declare-fun lt!1410047 () Unit!61574)

(assert (=> b!3995283 (= lt!1410047 (lemmaMaxPrefixOutputsMaxPrefix!422 thiss!21717 rules!2999 (rule!9794 token!484) lt!1410038 lt!1410076 lt!1410030 (rule!9794 (_1!24096 (v!39541 lt!1410074)))))))

(declare-fun res!1622237 () Bool)

(declare-fun matchR!5650 (Regex!11673 List!42850) Bool)

(assert (=> b!3995283 (= res!1622237 (not (matchR!5650 (regex!6768 (rule!9794 (_1!24096 (v!39541 lt!1410074)))) lt!1410030)))))

(assert (=> b!3995283 (=> (not res!1622237) (not e!2476875))))

(assert (=> b!3995283 e!2476875))

(declare-fun b!3995284 () Bool)

(assert (=> b!3995284 (= e!2476849 e!2476850)))

(declare-fun res!1622233 () Bool)

(assert (=> b!3995284 (=> res!1622233 e!2476850)))

(assert (=> b!3995284 (= res!1622233 (not (matchR!5650 (regex!6768 (rule!9794 token!484)) lt!1410038)))))

(assert (=> b!3995284 (isPrefix!3855 lt!1410038 lt!1410077)))

(declare-fun lt!1410086 () Unit!61574)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!688 (List!42850 List!42850 List!42850) Unit!61574)

(assert (=> b!3995284 (= lt!1410086 (lemmaPrefixStaysPrefixWhenAddingToSuffix!688 lt!1410038 prefix!494 newSuffix!27))))

(declare-fun lt!1410031 () Unit!61574)

(assert (=> b!3995284 (= lt!1410031 (lemmaPrefixStaysPrefixWhenAddingToSuffix!688 lt!1410038 prefix!494 suffix!1299))))

(declare-fun b!3995285 () Bool)

(declare-fun e!2476870 () Bool)

(assert (=> b!3995285 (= e!2476870 false)))

(declare-fun b!3995286 () Bool)

(declare-fun e!2476859 () Bool)

(assert (=> b!3995286 (= e!2476878 e!2476859)))

(declare-fun res!1622231 () Bool)

(assert (=> b!3995286 (=> res!1622231 e!2476859)))

(assert (=> b!3995286 (= res!1622231 (not ((_ is Some!9181) lt!1410074)))))

(declare-fun maxPrefix!3655 (LexerInterface!6357 List!42852 List!42850) Option!9182)

(assert (=> b!3995286 (= lt!1410074 (maxPrefix!3655 thiss!21717 rules!2999 lt!1410077))))

(declare-fun lt!1410067 () tuple2!41924)

(assert (=> b!3995286 (and (= suffixResult!105 lt!1410037) (= lt!1410067 (tuple2!41925 lt!1410082 lt!1410037)))))

(declare-fun lt!1410032 () Unit!61574)

(assert (=> b!3995286 (= lt!1410032 (lemmaSamePrefixThenSameSuffix!2042 lt!1410038 suffixResult!105 lt!1410038 lt!1410037 lt!1410076))))

(assert (=> b!3995286 (isPrefix!3855 lt!1410038 lt!1410091)))

(declare-fun lt!1410059 () Unit!61574)

(assert (=> b!3995286 (= lt!1410059 (lemmaConcatTwoListThenFirstIsPrefix!2698 lt!1410038 lt!1410037))))

(declare-fun b!3995287 () Bool)

(declare-fun res!1622230 () Bool)

(assert (=> b!3995287 (=> (not res!1622230) (not e!2476865))))

(declare-fun rulesInvariant!5700 (LexerInterface!6357 List!42852) Bool)

(assert (=> b!3995287 (= res!1622230 (rulesInvariant!5700 thiss!21717 rules!2999))))

(declare-fun b!3995288 () Bool)

(assert (=> b!3995288 (= e!2476852 e!2476857)))

(declare-fun res!1622232 () Bool)

(assert (=> b!3995288 (=> res!1622232 e!2476857)))

(assert (=> b!3995288 (= res!1622232 (not (isPrefix!3855 lt!1410030 lt!1410076)))))

(assert (=> b!3995288 (isPrefix!3855 lt!1410030 lt!1410068)))

(declare-fun lt!1410081 () Unit!61574)

(assert (=> b!3995288 (= lt!1410081 (lemmaPrefixStaysPrefixWhenAddingToSuffix!688 lt!1410030 lt!1410077 lt!1410056))))

(declare-fun e!2476843 () Bool)

(declare-fun tp!1216374 () Bool)

(declare-fun b!3995289 () Bool)

(declare-fun inv!57064 (String!48708) Bool)

(declare-fun inv!57068 (TokenValueInjection!13424) Bool)

(assert (=> b!3995289 (= e!2476879 (and tp!1216374 (inv!57064 (tag!7628 (h!48148 rules!2999))) (inv!57068 (transformation!6768 (h!48148 rules!2999))) e!2476843))))

(declare-fun b!3995290 () Bool)

(declare-fun tp!1216364 () Bool)

(assert (=> b!3995290 (= e!2476880 (and tp_is_empty!20317 tp!1216364))))

(declare-fun b!3995291 () Bool)

(declare-fun e!2476864 () Bool)

(declare-fun e!2476877 () Bool)

(declare-fun tp!1216367 () Bool)

(assert (=> b!3995291 (= e!2476864 (and tp!1216367 (inv!57064 (tag!7628 (rule!9794 token!484))) (inv!57068 (transformation!6768 (rule!9794 token!484))) e!2476877))))

(assert (=> b!3995292 (= e!2476877 (and tp!1216376 tp!1216371))))

(declare-fun b!3995293 () Bool)

(declare-fun Unit!61580 () Unit!61574)

(assert (=> b!3995293 (= e!2476856 Unit!61580)))

(declare-fun b!3995294 () Bool)

(declare-fun tp!1216368 () Bool)

(assert (=> b!3995294 (= e!2476861 (and tp_is_empty!20317 tp!1216368))))

(declare-fun b!3995295 () Bool)

(declare-fun res!1622225 () Bool)

(assert (=> b!3995295 (=> (not res!1622225) (not e!2476858))))

(declare-fun size!31955 (List!42850) Int)

(assert (=> b!3995295 (= res!1622225 (= (size!31954 token!484) (size!31955 (originalCharacters!7368 token!484))))))

(declare-fun b!3995296 () Bool)

(declare-fun e!2476872 () Bool)

(assert (=> b!3995296 (= e!2476865 e!2476872)))

(declare-fun res!1622226 () Bool)

(assert (=> b!3995296 (=> (not res!1622226) (not e!2476872))))

(declare-fun lt!1410040 () Int)

(assert (=> b!3995296 (= res!1622226 (>= lt!1410040 lt!1410079))))

(assert (=> b!3995296 (= lt!1410079 (size!31955 lt!1410038))))

(assert (=> b!3995296 (= lt!1410040 (size!31955 prefix!494))))

(declare-fun list!15866 (BalanceConc!25552) List!42850)

(declare-fun charsOf!4584 (Token!12674) BalanceConc!25552)

(assert (=> b!3995296 (= lt!1410038 (list!15866 (charsOf!4584 token!484)))))

(declare-fun b!3995297 () Bool)

(declare-fun res!1622246 () Bool)

(assert (=> b!3995297 (=> (not res!1622246) (not e!2476865))))

(assert (=> b!3995297 (= res!1622246 (>= (size!31955 suffix!1299) (size!31955 newSuffix!27)))))

(declare-fun b!3995298 () Bool)

(declare-fun e!2476845 () Bool)

(assert (=> b!3995298 (= e!2476872 e!2476845)))

(declare-fun res!1622239 () Bool)

(assert (=> b!3995298 (=> (not res!1622239) (not e!2476845))))

(declare-fun lt!1410050 () List!42850)

(assert (=> b!3995298 (= res!1622239 (= lt!1410050 lt!1410077))))

(assert (=> b!3995298 (= lt!1410077 (++!11170 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42850)

(assert (=> b!3995298 (= lt!1410050 (++!11170 lt!1410038 newSuffixResult!27))))

(declare-fun b!3995299 () Bool)

(declare-fun Unit!61581 () Unit!61574)

(assert (=> b!3995299 (= e!2476873 Unit!61581)))

(declare-fun lt!1410060 () Unit!61574)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!264 (LexerInterface!6357 List!42852 Rule!13336 List!42850 List!42850 Rule!13336) Unit!61574)

(assert (=> b!3995299 (= lt!1410060 (lemmaMaxPrefNoSmallerRuleMatches!264 thiss!21717 rules!2999 (rule!9794 token!484) lt!1410038 lt!1410076 (rule!9794 (_1!24096 (v!39541 lt!1410074)))))))

(declare-fun res!1622248 () Bool)

(assert (=> b!3995299 (= res!1622248 (not (matchR!5650 (regex!6768 (rule!9794 (_1!24096 (v!39541 lt!1410074)))) lt!1410038)))))

(assert (=> b!3995299 (=> (not res!1622248) (not e!2476870))))

(assert (=> b!3995299 e!2476870))

(declare-fun b!3995300 () Bool)

(declare-fun e!2476844 () Bool)

(declare-fun e!2476867 () Bool)

(assert (=> b!3995300 (= e!2476844 e!2476867)))

(declare-fun res!1622222 () Bool)

(assert (=> b!3995300 (=> res!1622222 e!2476867)))

(declare-fun lt!1410039 () Int)

(assert (=> b!3995300 (= res!1622222 (not (= lt!1410079 lt!1410039)))))

(declare-fun lt!1410036 () Unit!61574)

(assert (=> b!3995300 (= lt!1410036 e!2476856)))

(declare-fun c!691293 () Bool)

(assert (=> b!3995300 (= c!691293 (< lt!1410039 lt!1410079))))

(declare-fun lt!1410071 () Unit!61574)

(assert (=> b!3995300 (= lt!1410071 e!2476869)))

(declare-fun c!691294 () Bool)

(assert (=> b!3995300 (= c!691294 (> lt!1410039 lt!1410079))))

(declare-fun lt!1410088 () List!42850)

(assert (=> b!3995300 (= (_2!24096 (v!39541 lt!1410074)) lt!1410088)))

(declare-fun lt!1410063 () Unit!61574)

(assert (=> b!3995300 (= lt!1410063 (lemmaSamePrefixThenSameSuffix!2042 lt!1410030 (_2!24096 (v!39541 lt!1410074)) lt!1410030 lt!1410088 lt!1410077))))

(declare-fun lt!1410089 () List!42850)

(assert (=> b!3995300 (isPrefix!3855 lt!1410030 lt!1410089)))

(declare-fun lt!1410058 () Unit!61574)

(assert (=> b!3995300 (= lt!1410058 (lemmaConcatTwoListThenFirstIsPrefix!2698 lt!1410030 lt!1410088))))

(declare-fun b!3995301 () Bool)

(assert (=> b!3995301 (= e!2476867 true)))

(declare-fun lt!1410041 () Unit!61574)

(assert (=> b!3995301 (= lt!1410041 e!2476873)))

(declare-fun c!691295 () Bool)

(declare-fun getIndex!538 (List!42852 Rule!13336) Int)

(assert (=> b!3995301 (= c!691295 (< (getIndex!538 rules!2999 (rule!9794 (_1!24096 (v!39541 lt!1410074)))) (getIndex!538 rules!2999 (rule!9794 token!484))))))

(assert (=> b!3995301 (= (_2!24096 (v!39541 lt!1410074)) newSuffixResult!27)))

(declare-fun lt!1410051 () Unit!61574)

(assert (=> b!3995301 (= lt!1410051 (lemmaSamePrefixThenSameSuffix!2042 lt!1410030 (_2!24096 (v!39541 lt!1410074)) lt!1410038 newSuffixResult!27 lt!1410077))))

(assert (=> b!3995301 (= lt!1410030 lt!1410038)))

(declare-fun lt!1410084 () Unit!61574)

(declare-fun lemmaIsPrefixSameLengthThenSameList!877 (List!42850 List!42850 List!42850) Unit!61574)

(assert (=> b!3995301 (= lt!1410084 (lemmaIsPrefixSameLengthThenSameList!877 lt!1410030 lt!1410038 lt!1410077))))

(declare-fun b!3995302 () Bool)

(assert (=> b!3995302 (= e!2476859 e!2476854)))

(declare-fun res!1622238 () Bool)

(assert (=> b!3995302 (=> res!1622238 e!2476854)))

(declare-fun lt!1410035 () Option!9182)

(assert (=> b!3995302 (= res!1622238 (not (= lt!1410035 (Some!9181 (v!39541 lt!1410074)))))))

(assert (=> b!3995302 (isPrefix!3855 lt!1410030 (++!11170 lt!1410030 newSuffixResult!27))))

(declare-fun lt!1410090 () Unit!61574)

(assert (=> b!3995302 (= lt!1410090 (lemmaConcatTwoListThenFirstIsPrefix!2698 lt!1410030 newSuffixResult!27))))

(assert (=> b!3995302 (isPrefix!3855 lt!1410030 lt!1410083)))

(assert (=> b!3995302 (= lt!1410083 (++!11170 lt!1410030 (_2!24096 (v!39541 lt!1410074))))))

(declare-fun lt!1410034 () Unit!61574)

(assert (=> b!3995302 (= lt!1410034 (lemmaConcatTwoListThenFirstIsPrefix!2698 lt!1410030 (_2!24096 (v!39541 lt!1410074))))))

(declare-fun lt!1410043 () TokenValue!6998)

(assert (=> b!3995302 (= lt!1410035 (Some!9181 (tuple2!41925 (Token!12675 lt!1410043 (rule!9794 (_1!24096 (v!39541 lt!1410074))) lt!1410039 lt!1410030) (_2!24096 (v!39541 lt!1410074)))))))

(assert (=> b!3995302 (= lt!1410035 (maxPrefixOneRule!2689 thiss!21717 (rule!9794 (_1!24096 (v!39541 lt!1410074))) lt!1410077))))

(assert (=> b!3995302 (= lt!1410039 (size!31955 lt!1410030))))

(assert (=> b!3995302 (= lt!1410043 (apply!9979 (transformation!6768 (rule!9794 (_1!24096 (v!39541 lt!1410074)))) (seqFromList!5007 lt!1410030)))))

(declare-fun lt!1410087 () Unit!61574)

(assert (=> b!3995302 (= lt!1410087 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1511 thiss!21717 rules!2999 lt!1410030 lt!1410077 (_2!24096 (v!39541 lt!1410074)) (rule!9794 (_1!24096 (v!39541 lt!1410074)))))))

(assert (=> b!3995302 (= lt!1410030 (list!15866 (charsOf!4584 (_1!24096 (v!39541 lt!1410074)))))))

(declare-fun lt!1410085 () Unit!61574)

(declare-fun lemmaInv!983 (TokenValueInjection!13424) Unit!61574)

(assert (=> b!3995302 (= lt!1410085 (lemmaInv!983 (transformation!6768 (rule!9794 (_1!24096 (v!39541 lt!1410074))))))))

(declare-fun ruleValid!2700 (LexerInterface!6357 Rule!13336) Bool)

(assert (=> b!3995302 (ruleValid!2700 thiss!21717 (rule!9794 (_1!24096 (v!39541 lt!1410074))))))

(declare-fun lt!1410061 () Unit!61574)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1774 (LexerInterface!6357 Rule!13336 List!42852) Unit!61574)

(assert (=> b!3995302 (= lt!1410061 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1774 thiss!21717 (rule!9794 (_1!24096 (v!39541 lt!1410074))) rules!2999))))

(declare-fun lt!1410049 () Unit!61574)

(declare-fun lemmaCharactersSize!1363 (Token!12674) Unit!61574)

(assert (=> b!3995302 (= lt!1410049 (lemmaCharactersSize!1363 token!484))))

(declare-fun lt!1410033 () Unit!61574)

(assert (=> b!3995302 (= lt!1410033 (lemmaCharactersSize!1363 (_1!24096 (v!39541 lt!1410074))))))

(declare-fun b!3995303 () Bool)

(declare-fun tp!1216375 () Bool)

(assert (=> b!3995303 (= e!2476853 (and tp_is_empty!20317 tp!1216375))))

(declare-fun b!3995304 () Bool)

(declare-fun res!1622244 () Bool)

(assert (=> b!3995304 (=> (not res!1622244) (not e!2476865))))

(declare-fun isEmpty!25538 (List!42852) Bool)

(assert (=> b!3995304 (= res!1622244 (not (isEmpty!25538 rules!2999)))))

(declare-fun b!3995305 () Bool)

(declare-fun Unit!61582 () Unit!61574)

(assert (=> b!3995305 (= e!2476869 Unit!61582)))

(assert (=> b!3995306 (= e!2476843 (and tp!1216365 tp!1216366))))

(declare-fun b!3995307 () Bool)

(declare-fun res!1622245 () Bool)

(assert (=> b!3995307 (=> (not res!1622245) (not e!2476858))))

(assert (=> b!3995307 (= res!1622245 (= (value!213522 token!484) lt!1410055))))

(declare-fun b!3995308 () Bool)

(assert (=> b!3995308 (= e!2476858 (and (= (size!31954 token!484) lt!1410079) (= (originalCharacters!7368 token!484) lt!1410038)))))

(declare-fun b!3995309 () Bool)

(declare-fun e!2476874 () Bool)

(assert (=> b!3995309 (= e!2476845 e!2476874)))

(declare-fun res!1622224 () Bool)

(assert (=> b!3995309 (=> (not res!1622224) (not e!2476874))))

(assert (=> b!3995309 (= res!1622224 (= (maxPrefix!3655 thiss!21717 rules!2999 lt!1410076) lt!1410053))))

(assert (=> b!3995309 (= lt!1410053 (Some!9181 lt!1410067))))

(assert (=> b!3995309 (= lt!1410067 (tuple2!41925 token!484 suffixResult!105))))

(assert (=> b!3995309 (= lt!1410076 (++!11170 prefix!494 suffix!1299))))

(declare-fun b!3995310 () Bool)

(declare-fun res!1622243 () Bool)

(assert (=> b!3995310 (=> res!1622243 e!2476867)))

(assert (=> b!3995310 (= res!1622243 (not (isPrefix!3855 lt!1410030 lt!1410077)))))

(declare-fun b!3995311 () Bool)

(assert (=> b!3995311 (= e!2476857 e!2476844)))

(declare-fun res!1622235 () Bool)

(assert (=> b!3995311 (=> res!1622235 e!2476844)))

(assert (=> b!3995311 (= res!1622235 (not (= lt!1410089 lt!1410077)))))

(assert (=> b!3995311 (= lt!1410089 (++!11170 lt!1410030 lt!1410088))))

(assert (=> b!3995311 (= lt!1410088 (getSuffix!2286 lt!1410077 lt!1410030))))

(declare-fun b!3995312 () Bool)

(declare-fun e!2476846 () Bool)

(assert (=> b!3995312 (= e!2476874 (not e!2476846))))

(declare-fun res!1622229 () Bool)

(assert (=> b!3995312 (=> res!1622229 e!2476846)))

(declare-fun lt!1410065 () List!42850)

(assert (=> b!3995312 (= res!1622229 (not (= lt!1410065 lt!1410076)))))

(assert (=> b!3995312 (= lt!1410065 (++!11170 lt!1410038 suffixResult!105))))

(declare-fun lt!1410080 () Unit!61574)

(assert (=> b!3995312 (= lt!1410080 (lemmaInv!983 (transformation!6768 (rule!9794 token!484))))))

(assert (=> b!3995312 (ruleValid!2700 thiss!21717 (rule!9794 token!484))))

(declare-fun lt!1410029 () Unit!61574)

(assert (=> b!3995312 (= lt!1410029 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1774 thiss!21717 (rule!9794 token!484) rules!2999))))

(declare-fun b!3995313 () Bool)

(declare-fun e!2476876 () Bool)

(assert (=> b!3995313 (= e!2476876 e!2476848)))

(declare-fun res!1622241 () Bool)

(assert (=> b!3995313 (=> res!1622241 e!2476848)))

(assert (=> b!3995313 (= res!1622241 (not (= lt!1410044 prefix!494)))))

(assert (=> b!3995313 (= lt!1410044 (++!11170 lt!1410038 lt!1410064))))

(assert (=> b!3995313 (= lt!1410064 (getSuffix!2286 prefix!494 lt!1410038))))

(assert (=> b!3995313 (isPrefix!3855 lt!1410038 prefix!494)))

(declare-fun lt!1410048 () Unit!61574)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!433 (List!42850 List!42850 List!42850) Unit!61574)

(assert (=> b!3995313 (= lt!1410048 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!433 prefix!494 lt!1410038 lt!1410076))))

(declare-fun b!3995314 () Bool)

(declare-fun res!1622249 () Bool)

(assert (=> b!3995314 (=> (not res!1622249) (not e!2476865))))

(assert (=> b!3995314 (= res!1622249 (isPrefix!3855 newSuffix!27 suffix!1299))))

(declare-fun b!3995315 () Bool)

(declare-fun tp!1216369 () Bool)

(declare-fun inv!21 (TokenValue!6998) Bool)

(assert (=> b!3995315 (= e!2476863 (and (inv!21 (value!213522 token!484)) e!2476864 tp!1216369))))

(declare-fun b!3995316 () Bool)

(assert (=> b!3995316 (= e!2476846 e!2476876)))

(declare-fun res!1622250 () Bool)

(assert (=> b!3995316 (=> res!1622250 e!2476876)))

(assert (=> b!3995316 (= res!1622250 (not (isPrefix!3855 lt!1410038 lt!1410076)))))

(assert (=> b!3995316 (isPrefix!3855 prefix!494 lt!1410076)))

(declare-fun lt!1410072 () Unit!61574)

(assert (=> b!3995316 (= lt!1410072 (lemmaConcatTwoListThenFirstIsPrefix!2698 prefix!494 suffix!1299))))

(assert (=> b!3995316 (isPrefix!3855 lt!1410038 lt!1410065)))

(declare-fun lt!1410070 () Unit!61574)

(assert (=> b!3995316 (= lt!1410070 (lemmaConcatTwoListThenFirstIsPrefix!2698 lt!1410038 suffixResult!105))))

(assert (= (and start!376060 res!1622228) b!3995304))

(assert (= (and b!3995304 res!1622244) b!3995287))

(assert (= (and b!3995287 res!1622230) b!3995297))

(assert (= (and b!3995297 res!1622246) b!3995314))

(assert (= (and b!3995314 res!1622249) b!3995296))

(assert (= (and b!3995296 res!1622226) b!3995298))

(assert (= (and b!3995298 res!1622239) b!3995309))

(assert (= (and b!3995309 res!1622224) b!3995312))

(assert (= (and b!3995312 (not res!1622229)) b!3995316))

(assert (= (and b!3995316 (not res!1622250)) b!3995313))

(assert (= (and b!3995313 (not res!1622241)) b!3995273))

(assert (= (and b!3995273 (not res!1622223)) b!3995275))

(assert (= (and b!3995275 (not res!1622240)) b!3995284))

(assert (= (and b!3995284 (not res!1622233)) b!3995278))

(assert (= (and b!3995278 res!1622242) b!3995307))

(assert (= (and b!3995307 res!1622245) b!3995295))

(assert (= (and b!3995295 res!1622225) b!3995308))

(assert (= (and b!3995278 (not res!1622236)) b!3995286))

(assert (= (and b!3995286 (not res!1622231)) b!3995302))

(assert (= (and b!3995302 (not res!1622238)) b!3995276))

(assert (= (and b!3995276 (not res!1622227)) b!3995279))

(assert (= (and b!3995279 (not res!1622247)) b!3995288))

(assert (= (and b!3995288 (not res!1622232)) b!3995280))

(assert (= (and b!3995280 (not res!1622234)) b!3995311))

(assert (= (and b!3995311 (not res!1622235)) b!3995300))

(assert (= (and b!3995300 c!691294) b!3995283))

(assert (= (and b!3995300 (not c!691294)) b!3995305))

(assert (= (and b!3995283 res!1622237) b!3995274))

(assert (= (and b!3995300 c!691293) b!3995271))

(assert (= (and b!3995300 (not c!691293)) b!3995293))

(assert (= (and b!3995300 (not res!1622222)) b!3995310))

(assert (= (and b!3995310 (not res!1622243)) b!3995301))

(assert (= (and b!3995301 c!691295) b!3995299))

(assert (= (and b!3995301 (not c!691295)) b!3995277))

(assert (= (and b!3995299 res!1622248) b!3995285))

(assert (= (and start!376060 ((_ is Cons!42726) prefix!494)) b!3995294))

(assert (= b!3995291 b!3995292))

(assert (= b!3995315 b!3995291))

(assert (= start!376060 b!3995315))

(assert (= (and start!376060 ((_ is Cons!42726) suffixResult!105)) b!3995272))

(assert (= (and start!376060 ((_ is Cons!42726) suffix!1299)) b!3995281))

(assert (= (and start!376060 ((_ is Cons!42726) newSuffix!27)) b!3995290))

(assert (= b!3995289 b!3995306))

(assert (= b!3995282 b!3995289))

(assert (= (and start!376060 ((_ is Cons!42728) rules!2999)) b!3995282))

(assert (= (and start!376060 ((_ is Cons!42726) newSuffixResult!27)) b!3995303))

(declare-fun m!4575587 () Bool)

(assert (=> b!3995298 m!4575587))

(declare-fun m!4575589 () Bool)

(assert (=> b!3995298 m!4575589))

(declare-fun m!4575591 () Bool)

(assert (=> b!3995283 m!4575591))

(declare-fun m!4575593 () Bool)

(assert (=> b!3995283 m!4575593))

(declare-fun m!4575595 () Bool)

(assert (=> b!3995311 m!4575595))

(declare-fun m!4575597 () Bool)

(assert (=> b!3995311 m!4575597))

(declare-fun m!4575599 () Bool)

(assert (=> b!3995302 m!4575599))

(declare-fun m!4575601 () Bool)

(assert (=> b!3995302 m!4575601))

(declare-fun m!4575603 () Bool)

(assert (=> b!3995302 m!4575603))

(declare-fun m!4575605 () Bool)

(assert (=> b!3995302 m!4575605))

(declare-fun m!4575607 () Bool)

(assert (=> b!3995302 m!4575607))

(declare-fun m!4575609 () Bool)

(assert (=> b!3995302 m!4575609))

(declare-fun m!4575611 () Bool)

(assert (=> b!3995302 m!4575611))

(declare-fun m!4575613 () Bool)

(assert (=> b!3995302 m!4575613))

(declare-fun m!4575615 () Bool)

(assert (=> b!3995302 m!4575615))

(declare-fun m!4575617 () Bool)

(assert (=> b!3995302 m!4575617))

(declare-fun m!4575619 () Bool)

(assert (=> b!3995302 m!4575619))

(declare-fun m!4575621 () Bool)

(assert (=> b!3995302 m!4575621))

(declare-fun m!4575623 () Bool)

(assert (=> b!3995302 m!4575623))

(assert (=> b!3995302 m!4575615))

(declare-fun m!4575625 () Bool)

(assert (=> b!3995302 m!4575625))

(declare-fun m!4575627 () Bool)

(assert (=> b!3995302 m!4575627))

(declare-fun m!4575629 () Bool)

(assert (=> b!3995302 m!4575629))

(declare-fun m!4575631 () Bool)

(assert (=> b!3995302 m!4575631))

(assert (=> b!3995302 m!4575621))

(declare-fun m!4575633 () Bool)

(assert (=> b!3995302 m!4575633))

(assert (=> b!3995302 m!4575601))

(declare-fun m!4575635 () Bool)

(assert (=> b!3995284 m!4575635))

(declare-fun m!4575637 () Bool)

(assert (=> b!3995284 m!4575637))

(declare-fun m!4575639 () Bool)

(assert (=> b!3995284 m!4575639))

(declare-fun m!4575641 () Bool)

(assert (=> b!3995284 m!4575641))

(declare-fun m!4575643 () Bool)

(assert (=> b!3995278 m!4575643))

(declare-fun m!4575645 () Bool)

(assert (=> b!3995278 m!4575645))

(declare-fun m!4575647 () Bool)

(assert (=> b!3995278 m!4575647))

(declare-fun m!4575649 () Bool)

(assert (=> b!3995278 m!4575649))

(declare-fun m!4575651 () Bool)

(assert (=> b!3995295 m!4575651))

(declare-fun m!4575653 () Bool)

(assert (=> b!3995289 m!4575653))

(declare-fun m!4575655 () Bool)

(assert (=> b!3995289 m!4575655))

(declare-fun m!4575657 () Bool)

(assert (=> b!3995273 m!4575657))

(declare-fun m!4575659 () Bool)

(assert (=> b!3995273 m!4575659))

(declare-fun m!4575661 () Bool)

(assert (=> b!3995273 m!4575661))

(declare-fun m!4575663 () Bool)

(assert (=> b!3995273 m!4575663))

(declare-fun m!4575665 () Bool)

(assert (=> b!3995271 m!4575665))

(declare-fun m!4575667 () Bool)

(assert (=> b!3995297 m!4575667))

(declare-fun m!4575669 () Bool)

(assert (=> b!3995297 m!4575669))

(declare-fun m!4575671 () Bool)

(assert (=> b!3995291 m!4575671))

(declare-fun m!4575673 () Bool)

(assert (=> b!3995291 m!4575673))

(declare-fun m!4575675 () Bool)

(assert (=> b!3995315 m!4575675))

(declare-fun m!4575677 () Bool)

(assert (=> start!376060 m!4575677))

(declare-fun m!4575679 () Bool)

(assert (=> b!3995312 m!4575679))

(declare-fun m!4575681 () Bool)

(assert (=> b!3995312 m!4575681))

(declare-fun m!4575683 () Bool)

(assert (=> b!3995312 m!4575683))

(declare-fun m!4575685 () Bool)

(assert (=> b!3995312 m!4575685))

(declare-fun m!4575687 () Bool)

(assert (=> b!3995276 m!4575687))

(declare-fun m!4575689 () Bool)

(assert (=> b!3995276 m!4575689))

(declare-fun m!4575691 () Bool)

(assert (=> b!3995275 m!4575691))

(declare-fun m!4575693 () Bool)

(assert (=> b!3995275 m!4575693))

(declare-fun m!4575695 () Bool)

(assert (=> b!3995275 m!4575695))

(declare-fun m!4575697 () Bool)

(assert (=> b!3995275 m!4575697))

(declare-fun m!4575699 () Bool)

(assert (=> b!3995275 m!4575699))

(declare-fun m!4575701 () Bool)

(assert (=> b!3995275 m!4575701))

(assert (=> b!3995275 m!4575695))

(declare-fun m!4575703 () Bool)

(assert (=> b!3995275 m!4575703))

(declare-fun m!4575705 () Bool)

(assert (=> b!3995286 m!4575705))

(declare-fun m!4575707 () Bool)

(assert (=> b!3995286 m!4575707))

(declare-fun m!4575709 () Bool)

(assert (=> b!3995286 m!4575709))

(declare-fun m!4575711 () Bool)

(assert (=> b!3995286 m!4575711))

(declare-fun m!4575713 () Bool)

(assert (=> b!3995279 m!4575713))

(declare-fun m!4575715 () Bool)

(assert (=> b!3995279 m!4575715))

(declare-fun m!4575717 () Bool)

(assert (=> b!3995279 m!4575717))

(declare-fun m!4575719 () Bool)

(assert (=> b!3995301 m!4575719))

(declare-fun m!4575721 () Bool)

(assert (=> b!3995301 m!4575721))

(declare-fun m!4575723 () Bool)

(assert (=> b!3995301 m!4575723))

(declare-fun m!4575725 () Bool)

(assert (=> b!3995301 m!4575725))

(declare-fun m!4575727 () Bool)

(assert (=> b!3995304 m!4575727))

(declare-fun m!4575729 () Bool)

(assert (=> b!3995296 m!4575729))

(declare-fun m!4575731 () Bool)

(assert (=> b!3995296 m!4575731))

(declare-fun m!4575733 () Bool)

(assert (=> b!3995296 m!4575733))

(assert (=> b!3995296 m!4575733))

(declare-fun m!4575735 () Bool)

(assert (=> b!3995296 m!4575735))

(declare-fun m!4575737 () Bool)

(assert (=> b!3995287 m!4575737))

(declare-fun m!4575739 () Bool)

(assert (=> b!3995288 m!4575739))

(declare-fun m!4575741 () Bool)

(assert (=> b!3995288 m!4575741))

(declare-fun m!4575743 () Bool)

(assert (=> b!3995288 m!4575743))

(declare-fun m!4575745 () Bool)

(assert (=> b!3995300 m!4575745))

(declare-fun m!4575747 () Bool)

(assert (=> b!3995300 m!4575747))

(declare-fun m!4575749 () Bool)

(assert (=> b!3995300 m!4575749))

(declare-fun m!4575751 () Bool)

(assert (=> b!3995314 m!4575751))

(declare-fun m!4575753 () Bool)

(assert (=> b!3995310 m!4575753))

(declare-fun m!4575755 () Bool)

(assert (=> b!3995309 m!4575755))

(declare-fun m!4575757 () Bool)

(assert (=> b!3995309 m!4575757))

(declare-fun m!4575759 () Bool)

(assert (=> b!3995313 m!4575759))

(declare-fun m!4575761 () Bool)

(assert (=> b!3995313 m!4575761))

(declare-fun m!4575763 () Bool)

(assert (=> b!3995313 m!4575763))

(declare-fun m!4575765 () Bool)

(assert (=> b!3995313 m!4575765))

(declare-fun m!4575767 () Bool)

(assert (=> b!3995299 m!4575767))

(declare-fun m!4575769 () Bool)

(assert (=> b!3995299 m!4575769))

(declare-fun m!4575771 () Bool)

(assert (=> b!3995316 m!4575771))

(declare-fun m!4575773 () Bool)

(assert (=> b!3995316 m!4575773))

(declare-fun m!4575775 () Bool)

(assert (=> b!3995316 m!4575775))

(declare-fun m!4575777 () Bool)

(assert (=> b!3995316 m!4575777))

(declare-fun m!4575779 () Bool)

(assert (=> b!3995316 m!4575779))

(check-sat (not b!3995302) b_and!306881 (not b!3995311) (not b!3995287) (not b!3995303) (not b_next!111675) (not b!3995298) (not b!3995316) b_and!306885 (not b!3995295) (not b!3995279) (not b!3995300) (not start!376060) (not b!3995281) (not b!3995283) (not b!3995309) tp_is_empty!20317 (not b!3995288) (not b!3995286) (not b!3995304) (not b!3995282) b_and!306883 (not b!3995271) (not b_next!111677) (not b!3995313) (not b!3995315) (not b!3995312) (not b!3995284) (not b!3995275) (not b!3995273) (not b!3995289) (not b!3995297) (not b!3995291) (not b!3995296) (not b_next!111673) (not b_next!111679) (not b!3995276) (not b!3995272) (not b!3995310) (not b!3995301) b_and!306879 (not b!3995294) (not b!3995299) (not b!3995314) (not b!3995278) (not b!3995290))
(check-sat b_and!306881 b_and!306883 (not b_next!111677) (not b_next!111675) b_and!306879 b_and!306885 (not b_next!111673) (not b_next!111679))
