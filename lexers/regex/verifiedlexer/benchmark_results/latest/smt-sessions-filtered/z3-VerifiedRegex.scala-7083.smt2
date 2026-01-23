; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375516 () Bool)

(assert start!375516)

(declare-fun b!3990097 () Bool)

(declare-fun b_free!110825 () Bool)

(declare-fun b_next!111529 () Bool)

(assert (=> b!3990097 (= b_free!110825 (not b_next!111529))))

(declare-fun tp!1215472 () Bool)

(declare-fun b_and!306575 () Bool)

(assert (=> b!3990097 (= tp!1215472 b_and!306575)))

(declare-fun b_free!110827 () Bool)

(declare-fun b_next!111531 () Bool)

(assert (=> b!3990097 (= b_free!110827 (not b_next!111531))))

(declare-fun tp!1215467 () Bool)

(declare-fun b_and!306577 () Bool)

(assert (=> b!3990097 (= tp!1215467 b_and!306577)))

(declare-fun b!3990103 () Bool)

(declare-fun b_free!110829 () Bool)

(declare-fun b_next!111533 () Bool)

(assert (=> b!3990103 (= b_free!110829 (not b_next!111533))))

(declare-fun tp!1215478 () Bool)

(declare-fun b_and!306579 () Bool)

(assert (=> b!3990103 (= tp!1215478 b_and!306579)))

(declare-fun b_free!110831 () Bool)

(declare-fun b_next!111535 () Bool)

(assert (=> b!3990103 (= b_free!110831 (not b_next!111535))))

(declare-fun tp!1215470 () Bool)

(declare-fun b_and!306581 () Bool)

(assert (=> b!3990103 (= tp!1215470 b_and!306581)))

(declare-fun b!3990061 () Bool)

(declare-fun res!1619148 () Bool)

(declare-fun e!2473402 () Bool)

(assert (=> b!3990061 (=> (not res!1619148) (not e!2473402))))

(declare-datatypes ((C!23504 0))(
  ( (C!23505 (val!13846 Int)) )
))
(declare-datatypes ((List!42800 0))(
  ( (Nil!42676) (Cons!42676 (h!48096 C!23504) (t!331743 List!42800)) )
))
(declare-datatypes ((IArray!25935 0))(
  ( (IArray!25936 (innerList!13025 List!42800)) )
))
(declare-datatypes ((Conc!12965 0))(
  ( (Node!12965 (left!32248 Conc!12965) (right!32578 Conc!12965) (csize!26160 Int) (cheight!13176 Int)) (Leaf!20049 (xs!16271 IArray!25935) (csize!26161 Int)) (Empty!12965) )
))
(declare-datatypes ((BalanceConc!25524 0))(
  ( (BalanceConc!25525 (c!690606 Conc!12965)) )
))
(declare-datatypes ((List!42801 0))(
  ( (Nil!42677) (Cons!42677 (h!48097 (_ BitVec 16)) (t!331744 List!42801)) )
))
(declare-datatypes ((TokenValue!6984 0))(
  ( (FloatLiteralValue!13968 (text!49333 List!42801)) (TokenValueExt!6983 (__x!26185 Int)) (Broken!34920 (value!213097 List!42801)) (Object!7107) (End!6984) (Def!6984) (Underscore!6984) (Match!6984) (Else!6984) (Error!6984) (Case!6984) (If!6984) (Extends!6984) (Abstract!6984) (Class!6984) (Val!6984) (DelimiterValue!13968 (del!7044 List!42801)) (KeywordValue!6990 (value!213098 List!42801)) (CommentValue!13968 (value!213099 List!42801)) (WhitespaceValue!13968 (value!213100 List!42801)) (IndentationValue!6984 (value!213101 List!42801)) (String!48637) (Int32!6984) (Broken!34921 (value!213102 List!42801)) (Boolean!6985) (Unit!61434) (OperatorValue!6987 (op!7044 List!42801)) (IdentifierValue!13968 (value!213103 List!42801)) (IdentifierValue!13969 (value!213104 List!42801)) (WhitespaceValue!13969 (value!213105 List!42801)) (True!13968) (False!13968) (Broken!34922 (value!213106 List!42801)) (Broken!34923 (value!213107 List!42801)) (True!13969) (RightBrace!6984) (RightBracket!6984) (Colon!6984) (Null!6984) (Comma!6984) (LeftBracket!6984) (False!13969) (LeftBrace!6984) (ImaginaryLiteralValue!6984 (text!49334 List!42801)) (StringLiteralValue!20952 (value!213108 List!42801)) (EOFValue!6984 (value!213109 List!42801)) (IdentValue!6984 (value!213110 List!42801)) (DelimiterValue!13969 (value!213111 List!42801)) (DedentValue!6984 (value!213112 List!42801)) (NewLineValue!6984 (value!213113 List!42801)) (IntegerValue!20952 (value!213114 (_ BitVec 32)) (text!49335 List!42801)) (IntegerValue!20953 (value!213115 Int) (text!49336 List!42801)) (Times!6984) (Or!6984) (Equal!6984) (Minus!6984) (Broken!34924 (value!213116 List!42801)) (And!6984) (Div!6984) (LessEqual!6984) (Mod!6984) (Concat!18643) (Not!6984) (Plus!6984) (SpaceValue!6984 (value!213117 List!42801)) (IntegerValue!20954 (value!213118 Int) (text!49337 List!42801)) (StringLiteralValue!20953 (text!49338 List!42801)) (FloatLiteralValue!13969 (text!49339 List!42801)) (BytesLiteralValue!6984 (value!213119 List!42801)) (CommentValue!13969 (value!213120 List!42801)) (StringLiteralValue!20954 (value!213121 List!42801)) (ErrorTokenValue!6984 (msg!7045 List!42801)) )
))
(declare-datatypes ((Regex!11659 0))(
  ( (ElementMatch!11659 (c!690607 C!23504)) (Concat!18644 (regOne!23830 Regex!11659) (regTwo!23830 Regex!11659)) (EmptyExpr!11659) (Star!11659 (reg!11988 Regex!11659)) (EmptyLang!11659) (Union!11659 (regOne!23831 Regex!11659) (regTwo!23831 Regex!11659)) )
))
(declare-datatypes ((String!48638 0))(
  ( (String!48639 (value!213122 String)) )
))
(declare-datatypes ((TokenValueInjection!13396 0))(
  ( (TokenValueInjection!13397 (toValue!9242 Int) (toChars!9101 Int)) )
))
(declare-datatypes ((Rule!13308 0))(
  ( (Rule!13309 (regex!6754 Regex!11659) (tag!7614 String!48638) (isSeparator!6754 Bool) (transformation!6754 TokenValueInjection!13396)) )
))
(declare-datatypes ((Token!12646 0))(
  ( (Token!12647 (value!213123 TokenValue!6984) (rule!9772 Rule!13308) (size!31918 Int) (originalCharacters!7354 List!42800)) )
))
(declare-fun token!484 () Token!12646)

(declare-fun lt!1406214 () TokenValue!6984)

(assert (=> b!3990061 (= res!1619148 (= (value!213123 token!484) lt!1406214))))

(declare-fun b!3990062 () Bool)

(declare-fun tp!1215475 () Bool)

(declare-fun e!2473395 () Bool)

(declare-fun e!2473394 () Bool)

(declare-fun inv!56999 (String!48638) Bool)

(declare-fun inv!57002 (TokenValueInjection!13396) Bool)

(assert (=> b!3990062 (= e!2473394 (and tp!1215475 (inv!56999 (tag!7614 (rule!9772 token!484))) (inv!57002 (transformation!6754 (rule!9772 token!484))) e!2473395))))

(declare-fun b!3990063 () Bool)

(declare-fun e!2473424 () Bool)

(declare-fun e!2473416 () Bool)

(assert (=> b!3990063 (= e!2473424 e!2473416)))

(declare-fun res!1619128 () Bool)

(assert (=> b!3990063 (=> res!1619128 e!2473416)))

(declare-fun lt!1406229 () List!42800)

(declare-fun lt!1406212 () List!42800)

(declare-fun isPrefix!3841 (List!42800 List!42800) Bool)

(assert (=> b!3990063 (= res!1619128 (not (isPrefix!3841 lt!1406229 lt!1406212)))))

(declare-fun lt!1406250 () List!42800)

(assert (=> b!3990063 (isPrefix!3841 lt!1406229 lt!1406250)))

(declare-datatypes ((Unit!61435 0))(
  ( (Unit!61436) )
))
(declare-fun lt!1406237 () Unit!61435)

(declare-fun lt!1406234 () List!42800)

(declare-fun lt!1406232 () List!42800)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!674 (List!42800 List!42800 List!42800) Unit!61435)

(assert (=> b!3990063 (= lt!1406237 (lemmaPrefixStaysPrefixWhenAddingToSuffix!674 lt!1406229 lt!1406232 lt!1406234))))

(declare-fun b!3990064 () Bool)

(declare-fun e!2473412 () Bool)

(assert (=> b!3990064 (= e!2473416 e!2473412)))

(declare-fun res!1619122 () Bool)

(assert (=> b!3990064 (=> res!1619122 e!2473412)))

(declare-fun lt!1406272 () List!42800)

(assert (=> b!3990064 (= res!1619122 (not (= lt!1406272 lt!1406232)))))

(declare-fun lt!1406221 () List!42800)

(declare-fun ++!11156 (List!42800 List!42800) List!42800)

(assert (=> b!3990064 (= lt!1406272 (++!11156 lt!1406229 lt!1406221))))

(declare-fun getSuffix!2272 (List!42800 List!42800) List!42800)

(assert (=> b!3990064 (= lt!1406221 (getSuffix!2272 lt!1406232 lt!1406229))))

(declare-fun res!1619131 () Bool)

(declare-fun e!2473414 () Bool)

(assert (=> start!375516 (=> (not res!1619131) (not e!2473414))))

(declare-datatypes ((LexerInterface!6343 0))(
  ( (LexerInterfaceExt!6340 (__x!26186 Int)) (Lexer!6341) )
))
(declare-fun thiss!21717 () LexerInterface!6343)

(get-info :version)

(assert (=> start!375516 (= res!1619131 ((_ is Lexer!6341) thiss!21717))))

(assert (=> start!375516 e!2473414))

(declare-fun e!2473404 () Bool)

(assert (=> start!375516 e!2473404))

(declare-fun e!2473421 () Bool)

(declare-fun inv!57003 (Token!12646) Bool)

(assert (=> start!375516 (and (inv!57003 token!484) e!2473421)))

(declare-fun e!2473428 () Bool)

(assert (=> start!375516 e!2473428))

(declare-fun e!2473403 () Bool)

(assert (=> start!375516 e!2473403))

(declare-fun e!2473405 () Bool)

(assert (=> start!375516 e!2473405))

(assert (=> start!375516 true))

(declare-fun e!2473409 () Bool)

(assert (=> start!375516 e!2473409))

(declare-fun e!2473426 () Bool)

(assert (=> start!375516 e!2473426))

(declare-fun b!3990065 () Bool)

(declare-fun tp_is_empty!20289 () Bool)

(declare-fun tp!1215477 () Bool)

(assert (=> b!3990065 (= e!2473426 (and tp_is_empty!20289 tp!1215477))))

(declare-fun b!3990066 () Bool)

(declare-fun e!2473400 () Bool)

(declare-fun e!2473406 () Bool)

(assert (=> b!3990066 (= e!2473400 e!2473406)))

(declare-fun res!1619141 () Bool)

(assert (=> b!3990066 (=> res!1619141 e!2473406)))

(declare-datatypes ((tuple2!41880 0))(
  ( (tuple2!41881 (_1!24074 Token!12646) (_2!24074 List!42800)) )
))
(declare-datatypes ((Option!9168 0))(
  ( (None!9167) (Some!9167 (v!39523 tuple2!41880)) )
))
(declare-fun lt!1406270 () Option!9168)

(declare-fun lt!1406216 () Option!9168)

(assert (=> b!3990066 (= res!1619141 (not (= lt!1406270 (Some!9167 (v!39523 lt!1406216)))))))

(declare-fun newSuffixResult!27 () List!42800)

(assert (=> b!3990066 (isPrefix!3841 lt!1406229 (++!11156 lt!1406229 newSuffixResult!27))))

(declare-fun lt!1406226 () Unit!61435)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2684 (List!42800 List!42800) Unit!61435)

(assert (=> b!3990066 (= lt!1406226 (lemmaConcatTwoListThenFirstIsPrefix!2684 lt!1406229 newSuffixResult!27))))

(declare-fun lt!1406259 () List!42800)

(assert (=> b!3990066 (isPrefix!3841 lt!1406229 lt!1406259)))

(assert (=> b!3990066 (= lt!1406259 (++!11156 lt!1406229 (_2!24074 (v!39523 lt!1406216))))))

(declare-fun lt!1406257 () Unit!61435)

(assert (=> b!3990066 (= lt!1406257 (lemmaConcatTwoListThenFirstIsPrefix!2684 lt!1406229 (_2!24074 (v!39523 lt!1406216))))))

(declare-fun lt!1406243 () TokenValue!6984)

(declare-fun lt!1406253 () Int)

(assert (=> b!3990066 (= lt!1406270 (Some!9167 (tuple2!41881 (Token!12647 lt!1406243 (rule!9772 (_1!24074 (v!39523 lt!1406216))) lt!1406253 lt!1406229) (_2!24074 (v!39523 lt!1406216)))))))

(declare-fun maxPrefixOneRule!2675 (LexerInterface!6343 Rule!13308 List!42800) Option!9168)

(assert (=> b!3990066 (= lt!1406270 (maxPrefixOneRule!2675 thiss!21717 (rule!9772 (_1!24074 (v!39523 lt!1406216))) lt!1406232))))

(declare-fun size!31919 (List!42800) Int)

(assert (=> b!3990066 (= lt!1406253 (size!31919 lt!1406229))))

(declare-fun apply!9965 (TokenValueInjection!13396 BalanceConc!25524) TokenValue!6984)

(declare-fun seqFromList!4993 (List!42800) BalanceConc!25524)

(assert (=> b!3990066 (= lt!1406243 (apply!9965 (transformation!6754 (rule!9772 (_1!24074 (v!39523 lt!1406216)))) (seqFromList!4993 lt!1406229)))))

(declare-datatypes ((List!42802 0))(
  ( (Nil!42678) (Cons!42678 (h!48098 Rule!13308) (t!331745 List!42802)) )
))
(declare-fun rules!2999 () List!42802)

(declare-fun lt!1406217 () Unit!61435)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1497 (LexerInterface!6343 List!42802 List!42800 List!42800 List!42800 Rule!13308) Unit!61435)

(assert (=> b!3990066 (= lt!1406217 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1497 thiss!21717 rules!2999 lt!1406229 lt!1406232 (_2!24074 (v!39523 lt!1406216)) (rule!9772 (_1!24074 (v!39523 lt!1406216)))))))

(declare-fun list!15844 (BalanceConc!25524) List!42800)

(declare-fun charsOf!4570 (Token!12646) BalanceConc!25524)

(assert (=> b!3990066 (= lt!1406229 (list!15844 (charsOf!4570 (_1!24074 (v!39523 lt!1406216)))))))

(declare-fun lt!1406219 () Unit!61435)

(declare-fun lemmaInv!969 (TokenValueInjection!13396) Unit!61435)

(assert (=> b!3990066 (= lt!1406219 (lemmaInv!969 (transformation!6754 (rule!9772 (_1!24074 (v!39523 lt!1406216))))))))

(declare-fun ruleValid!2686 (LexerInterface!6343 Rule!13308) Bool)

(assert (=> b!3990066 (ruleValid!2686 thiss!21717 (rule!9772 (_1!24074 (v!39523 lt!1406216))))))

(declare-fun lt!1406262 () Unit!61435)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1760 (LexerInterface!6343 Rule!13308 List!42802) Unit!61435)

(assert (=> b!3990066 (= lt!1406262 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1760 thiss!21717 (rule!9772 (_1!24074 (v!39523 lt!1406216))) rules!2999))))

(declare-fun lt!1406271 () Unit!61435)

(declare-fun lemmaCharactersSize!1349 (Token!12646) Unit!61435)

(assert (=> b!3990066 (= lt!1406271 (lemmaCharactersSize!1349 token!484))))

(declare-fun lt!1406266 () Unit!61435)

(assert (=> b!3990066 (= lt!1406266 (lemmaCharactersSize!1349 (_1!24074 (v!39523 lt!1406216))))))

(declare-fun b!3990067 () Bool)

(declare-fun e!2473410 () Bool)

(assert (=> b!3990067 (= e!2473410 false)))

(declare-fun b!3990068 () Bool)

(declare-fun e!2473396 () Bool)

(declare-fun e!2473425 () Bool)

(assert (=> b!3990068 (= e!2473396 e!2473425)))

(declare-fun res!1619139 () Bool)

(assert (=> b!3990068 (=> res!1619139 e!2473425)))

(declare-fun lt!1406255 () List!42800)

(declare-fun prefix!494 () List!42800)

(assert (=> b!3990068 (= res!1619139 (not (= lt!1406255 prefix!494)))))

(declare-fun lt!1406230 () List!42800)

(declare-fun lt!1406263 () List!42800)

(assert (=> b!3990068 (= lt!1406255 (++!11156 lt!1406230 lt!1406263))))

(assert (=> b!3990068 (= lt!1406263 (getSuffix!2272 prefix!494 lt!1406230))))

(assert (=> b!3990068 (isPrefix!3841 lt!1406230 prefix!494)))

(declare-fun lt!1406245 () Unit!61435)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!419 (List!42800 List!42800 List!42800) Unit!61435)

(assert (=> b!3990068 (= lt!1406245 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!419 prefix!494 lt!1406230 lt!1406212))))

(declare-fun b!3990069 () Bool)

(declare-fun e!2473423 () Unit!61435)

(declare-fun Unit!61437 () Unit!61435)

(assert (=> b!3990069 (= e!2473423 Unit!61437)))

(declare-fun b!3990070 () Bool)

(declare-fun tp!1215468 () Bool)

(assert (=> b!3990070 (= e!2473428 (and tp_is_empty!20289 tp!1215468))))

(declare-fun b!3990071 () Bool)

(declare-fun e!2473401 () Bool)

(declare-fun tp!1215469 () Bool)

(assert (=> b!3990071 (= e!2473409 (and e!2473401 tp!1215469))))

(declare-fun b!3990072 () Bool)

(declare-fun e!2473415 () Bool)

(assert (=> b!3990072 (= e!2473412 e!2473415)))

(declare-fun res!1619137 () Bool)

(assert (=> b!3990072 (=> res!1619137 e!2473415)))

(declare-fun lt!1406248 () Int)

(assert (=> b!3990072 (= res!1619137 (not (= lt!1406248 lt!1406253)))))

(declare-fun lt!1406239 () Unit!61435)

(assert (=> b!3990072 (= lt!1406239 e!2473423)))

(declare-fun c!690604 () Bool)

(assert (=> b!3990072 (= c!690604 (< lt!1406253 lt!1406248))))

(declare-fun lt!1406269 () Unit!61435)

(declare-fun e!2473408 () Unit!61435)

(assert (=> b!3990072 (= lt!1406269 e!2473408)))

(declare-fun c!690605 () Bool)

(assert (=> b!3990072 (= c!690605 (> lt!1406253 lt!1406248))))

(assert (=> b!3990072 (= (_2!24074 (v!39523 lt!1406216)) lt!1406221)))

(declare-fun lt!1406215 () Unit!61435)

(declare-fun lemmaSamePrefixThenSameSuffix!2028 (List!42800 List!42800 List!42800 List!42800 List!42800) Unit!61435)

(assert (=> b!3990072 (= lt!1406215 (lemmaSamePrefixThenSameSuffix!2028 lt!1406229 (_2!24074 (v!39523 lt!1406216)) lt!1406229 lt!1406221 lt!1406232))))

(assert (=> b!3990072 (isPrefix!3841 lt!1406229 lt!1406272)))

(declare-fun lt!1406252 () Unit!61435)

(assert (=> b!3990072 (= lt!1406252 (lemmaConcatTwoListThenFirstIsPrefix!2684 lt!1406229 lt!1406221))))

(declare-fun b!3990073 () Bool)

(declare-fun e!2473418 () Bool)

(declare-fun e!2473411 () Bool)

(assert (=> b!3990073 (= e!2473418 (not e!2473411))))

(declare-fun res!1619133 () Bool)

(assert (=> b!3990073 (=> res!1619133 e!2473411)))

(declare-fun lt!1406246 () List!42800)

(assert (=> b!3990073 (= res!1619133 (not (= lt!1406246 lt!1406212)))))

(declare-fun suffixResult!105 () List!42800)

(assert (=> b!3990073 (= lt!1406246 (++!11156 lt!1406230 suffixResult!105))))

(declare-fun lt!1406261 () Unit!61435)

(assert (=> b!3990073 (= lt!1406261 (lemmaInv!969 (transformation!6754 (rule!9772 token!484))))))

(assert (=> b!3990073 (ruleValid!2686 thiss!21717 (rule!9772 token!484))))

(declare-fun lt!1406228 () Unit!61435)

(assert (=> b!3990073 (= lt!1406228 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1760 thiss!21717 (rule!9772 token!484) rules!2999))))

(declare-fun b!3990074 () Bool)

(declare-fun tp!1215466 () Bool)

(assert (=> b!3990074 (= e!2473405 (and tp_is_empty!20289 tp!1215466))))

(declare-fun b!3990075 () Bool)

(declare-fun res!1619147 () Bool)

(assert (=> b!3990075 (=> (not res!1619147) (not e!2473414))))

(declare-fun isEmpty!25506 (List!42802) Bool)

(assert (=> b!3990075 (= res!1619147 (not (isEmpty!25506 rules!2999)))))

(declare-fun b!3990076 () Bool)

(declare-fun e!2473413 () Bool)

(assert (=> b!3990076 (= e!2473406 e!2473413)))

(declare-fun res!1619123 () Bool)

(assert (=> b!3990076 (=> res!1619123 e!2473413)))

(declare-fun lt!1406224 () List!42800)

(declare-fun suffix!1299 () List!42800)

(assert (=> b!3990076 (= res!1619123 (not (= lt!1406224 suffix!1299)))))

(declare-fun newSuffix!27 () List!42800)

(assert (=> b!3990076 (= lt!1406224 (++!11156 newSuffix!27 lt!1406234))))

(assert (=> b!3990076 (= lt!1406234 (getSuffix!2272 suffix!1299 newSuffix!27))))

(declare-fun b!3990077 () Bool)

(assert (=> b!3990077 (= e!2473402 (and (= (size!31918 token!484) lt!1406248) (= (originalCharacters!7354 token!484) lt!1406230)))))

(declare-fun b!3990078 () Bool)

(declare-fun res!1619130 () Bool)

(assert (=> b!3990078 (=> res!1619130 e!2473415)))

(assert (=> b!3990078 (= res!1619130 (not (isPrefix!3841 lt!1406229 lt!1406232)))))

(declare-fun b!3990079 () Bool)

(assert (=> b!3990079 (= e!2473413 e!2473424)))

(declare-fun res!1619145 () Bool)

(assert (=> b!3990079 (=> res!1619145 e!2473424)))

(assert (=> b!3990079 (= res!1619145 (not (= lt!1406250 lt!1406212)))))

(assert (=> b!3990079 (= lt!1406250 (++!11156 prefix!494 lt!1406224))))

(assert (=> b!3990079 (= lt!1406250 (++!11156 lt!1406232 lt!1406234))))

(declare-fun lt!1406258 () Unit!61435)

(declare-fun lemmaConcatAssociativity!2476 (List!42800 List!42800 List!42800) Unit!61435)

(assert (=> b!3990079 (= lt!1406258 (lemmaConcatAssociativity!2476 prefix!494 newSuffix!27 lt!1406234))))

(declare-fun b!3990080 () Bool)

(declare-fun res!1619120 () Bool)

(assert (=> b!3990080 (=> (not res!1619120) (not e!2473414))))

(assert (=> b!3990080 (= res!1619120 (isPrefix!3841 newSuffix!27 suffix!1299))))

(declare-fun b!3990081 () Bool)

(declare-fun res!1619124 () Bool)

(assert (=> b!3990081 (=> (not res!1619124) (not e!2473414))))

(assert (=> b!3990081 (= res!1619124 (>= (size!31919 suffix!1299) (size!31919 newSuffix!27)))))

(declare-fun b!3990082 () Bool)

(declare-fun tp!1215471 () Bool)

(assert (=> b!3990082 (= e!2473404 (and tp_is_empty!20289 tp!1215471))))

(declare-fun b!3990083 () Bool)

(declare-fun e!2473398 () Bool)

(assert (=> b!3990083 (= e!2473398 e!2473400)))

(declare-fun res!1619126 () Bool)

(assert (=> b!3990083 (=> res!1619126 e!2473400)))

(assert (=> b!3990083 (= res!1619126 (not ((_ is Some!9167) lt!1406216)))))

(declare-fun maxPrefix!3641 (LexerInterface!6343 List!42802 List!42800) Option!9168)

(assert (=> b!3990083 (= lt!1406216 (maxPrefix!3641 thiss!21717 rules!2999 lt!1406232))))

(declare-fun lt!1406273 () Token!12646)

(declare-fun lt!1406222 () tuple2!41880)

(declare-fun lt!1406251 () List!42800)

(assert (=> b!3990083 (and (= suffixResult!105 lt!1406251) (= lt!1406222 (tuple2!41881 lt!1406273 lt!1406251)))))

(declare-fun lt!1406236 () Unit!61435)

(assert (=> b!3990083 (= lt!1406236 (lemmaSamePrefixThenSameSuffix!2028 lt!1406230 suffixResult!105 lt!1406230 lt!1406251 lt!1406212))))

(declare-fun lt!1406213 () List!42800)

(assert (=> b!3990083 (isPrefix!3841 lt!1406230 lt!1406213)))

(declare-fun lt!1406238 () Unit!61435)

(assert (=> b!3990083 (= lt!1406238 (lemmaConcatTwoListThenFirstIsPrefix!2684 lt!1406230 lt!1406251))))

(declare-fun b!3990084 () Bool)

(declare-fun res!1619142 () Bool)

(assert (=> b!3990084 (=> res!1619142 e!2473416)))

(assert (=> b!3990084 (= res!1619142 (not (= lt!1406259 lt!1406232)))))

(declare-fun b!3990085 () Bool)

(declare-fun e!2473417 () Bool)

(assert (=> b!3990085 (= e!2473425 e!2473417)))

(declare-fun res!1619121 () Bool)

(assert (=> b!3990085 (=> res!1619121 e!2473417)))

(declare-fun lt!1406268 () List!42800)

(declare-fun lt!1406256 () List!42800)

(assert (=> b!3990085 (= res!1619121 (or (not (= lt!1406212 lt!1406256)) (not (= lt!1406212 lt!1406268))))))

(assert (=> b!3990085 (= lt!1406256 lt!1406268)))

(declare-fun lt!1406235 () List!42800)

(assert (=> b!3990085 (= lt!1406268 (++!11156 lt!1406230 lt!1406235))))

(assert (=> b!3990085 (= lt!1406256 (++!11156 lt!1406255 suffix!1299))))

(assert (=> b!3990085 (= lt!1406235 (++!11156 lt!1406263 suffix!1299))))

(declare-fun lt!1406240 () Unit!61435)

(assert (=> b!3990085 (= lt!1406240 (lemmaConcatAssociativity!2476 lt!1406230 lt!1406263 suffix!1299))))

(declare-fun b!3990086 () Bool)

(declare-fun e!2473397 () Bool)

(assert (=> b!3990086 (= e!2473417 e!2473397)))

(declare-fun res!1619134 () Bool)

(assert (=> b!3990086 (=> res!1619134 e!2473397)))

(declare-fun lt!1406218 () Option!9168)

(declare-fun lt!1406260 () Option!9168)

(assert (=> b!3990086 (= res!1619134 (not (= lt!1406218 lt!1406260)))))

(assert (=> b!3990086 (= lt!1406218 (Some!9167 (tuple2!41881 lt!1406273 suffixResult!105)))))

(assert (=> b!3990086 (= lt!1406218 (maxPrefixOneRule!2675 thiss!21717 (rule!9772 token!484) lt!1406212))))

(assert (=> b!3990086 (= lt!1406273 (Token!12647 lt!1406214 (rule!9772 token!484) lt!1406248 lt!1406230))))

(assert (=> b!3990086 (= lt!1406214 (apply!9965 (transformation!6754 (rule!9772 token!484)) (seqFromList!4993 lt!1406230)))))

(declare-fun lt!1406265 () Unit!61435)

(assert (=> b!3990086 (= lt!1406265 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1497 thiss!21717 rules!2999 lt!1406230 lt!1406212 suffixResult!105 (rule!9772 token!484)))))

(assert (=> b!3990086 (= lt!1406235 suffixResult!105)))

(declare-fun lt!1406264 () Unit!61435)

(assert (=> b!3990086 (= lt!1406264 (lemmaSamePrefixThenSameSuffix!2028 lt!1406230 lt!1406235 lt!1406230 suffixResult!105 lt!1406212))))

(assert (=> b!3990086 (isPrefix!3841 lt!1406230 lt!1406268)))

(declare-fun lt!1406223 () Unit!61435)

(assert (=> b!3990086 (= lt!1406223 (lemmaConcatTwoListThenFirstIsPrefix!2684 lt!1406230 lt!1406235))))

(declare-fun b!3990087 () Bool)

(declare-fun e!2473422 () Bool)

(assert (=> b!3990087 (= e!2473397 e!2473422)))

(declare-fun res!1619146 () Bool)

(assert (=> b!3990087 (=> res!1619146 e!2473422)))

(declare-fun matchR!5636 (Regex!11659 List!42800) Bool)

(assert (=> b!3990087 (= res!1619146 (not (matchR!5636 (regex!6754 (rule!9772 token!484)) lt!1406230)))))

(assert (=> b!3990087 (isPrefix!3841 lt!1406230 lt!1406232)))

(declare-fun lt!1406244 () Unit!61435)

(assert (=> b!3990087 (= lt!1406244 (lemmaPrefixStaysPrefixWhenAddingToSuffix!674 lt!1406230 prefix!494 newSuffix!27))))

(declare-fun lt!1406254 () Unit!61435)

(assert (=> b!3990087 (= lt!1406254 (lemmaPrefixStaysPrefixWhenAddingToSuffix!674 lt!1406230 prefix!494 suffix!1299))))

(declare-fun b!3990088 () Bool)

(assert (=> b!3990088 (= e!2473411 e!2473396)))

(declare-fun res!1619135 () Bool)

(assert (=> b!3990088 (=> res!1619135 e!2473396)))

(assert (=> b!3990088 (= res!1619135 (not (isPrefix!3841 lt!1406230 lt!1406212)))))

(assert (=> b!3990088 (isPrefix!3841 prefix!494 lt!1406212)))

(declare-fun lt!1406225 () Unit!61435)

(assert (=> b!3990088 (= lt!1406225 (lemmaConcatTwoListThenFirstIsPrefix!2684 prefix!494 suffix!1299))))

(assert (=> b!3990088 (isPrefix!3841 lt!1406230 lt!1406246)))

(declare-fun lt!1406241 () Unit!61435)

(assert (=> b!3990088 (= lt!1406241 (lemmaConcatTwoListThenFirstIsPrefix!2684 lt!1406230 suffixResult!105))))

(declare-fun b!3990089 () Bool)

(declare-fun e!2473399 () Bool)

(assert (=> b!3990089 (= e!2473414 e!2473399)))

(declare-fun res!1619140 () Bool)

(assert (=> b!3990089 (=> (not res!1619140) (not e!2473399))))

(declare-fun lt!1406220 () Int)

(assert (=> b!3990089 (= res!1619140 (>= lt!1406220 lt!1406248))))

(assert (=> b!3990089 (= lt!1406248 (size!31919 lt!1406230))))

(assert (=> b!3990089 (= lt!1406220 (size!31919 prefix!494))))

(assert (=> b!3990089 (= lt!1406230 (list!15844 (charsOf!4570 token!484)))))

(declare-fun b!3990090 () Bool)

(declare-fun Unit!61438 () Unit!61435)

(assert (=> b!3990090 (= e!2473423 Unit!61438)))

(declare-fun lt!1406227 () Unit!61435)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!408 (LexerInterface!6343 List!42802 Rule!13308 List!42800 List!42800 List!42800 Rule!13308) Unit!61435)

(assert (=> b!3990090 (= lt!1406227 (lemmaMaxPrefixOutputsMaxPrefix!408 thiss!21717 rules!2999 (rule!9772 (_1!24074 (v!39523 lt!1406216))) lt!1406229 lt!1406232 lt!1406230 (rule!9772 token!484)))))

(assert (=> b!3990090 false))

(declare-fun b!3990091 () Bool)

(assert (=> b!3990091 (= e!2473422 e!2473398)))

(declare-fun res!1619125 () Bool)

(assert (=> b!3990091 (=> res!1619125 e!2473398)))

(assert (=> b!3990091 (= res!1619125 (not (= lt!1406213 lt!1406212)))))

(assert (=> b!3990091 (= lt!1406213 (++!11156 lt!1406230 lt!1406251))))

(assert (=> b!3990091 (= lt!1406251 (getSuffix!2272 lt!1406212 lt!1406230))))

(assert (=> b!3990091 e!2473402))

(declare-fun res!1619136 () Bool)

(assert (=> b!3990091 (=> (not res!1619136) (not e!2473402))))

(assert (=> b!3990091 (= res!1619136 (isPrefix!3841 lt!1406212 lt!1406212))))

(declare-fun lt!1406249 () Unit!61435)

(declare-fun lemmaIsPrefixRefl!2433 (List!42800 List!42800) Unit!61435)

(assert (=> b!3990091 (= lt!1406249 (lemmaIsPrefixRefl!2433 lt!1406212 lt!1406212))))

(declare-fun tp!1215476 () Bool)

(declare-fun e!2473420 () Bool)

(declare-fun b!3990092 () Bool)

(assert (=> b!3990092 (= e!2473401 (and tp!1215476 (inv!56999 (tag!7614 (h!48098 rules!2999))) (inv!57002 (transformation!6754 (h!48098 rules!2999))) e!2473420))))

(declare-fun b!3990093 () Bool)

(declare-fun e!2473407 () Bool)

(assert (=> b!3990093 (= e!2473415 e!2473407)))

(declare-fun res!1619132 () Bool)

(assert (=> b!3990093 (=> res!1619132 e!2473407)))

(declare-fun getIndex!524 (List!42802 Rule!13308) Int)

(assert (=> b!3990093 (= res!1619132 (>= (getIndex!524 rules!2999 (rule!9772 (_1!24074 (v!39523 lt!1406216)))) (getIndex!524 rules!2999 (rule!9772 token!484))))))

(assert (=> b!3990093 (= (_2!24074 (v!39523 lt!1406216)) newSuffixResult!27)))

(declare-fun lt!1406267 () Unit!61435)

(assert (=> b!3990093 (= lt!1406267 (lemmaSamePrefixThenSameSuffix!2028 lt!1406229 (_2!24074 (v!39523 lt!1406216)) lt!1406230 newSuffixResult!27 lt!1406232))))

(assert (=> b!3990093 (= lt!1406229 lt!1406230)))

(declare-fun lt!1406233 () Unit!61435)

(declare-fun lemmaIsPrefixSameLengthThenSameList!863 (List!42800 List!42800 List!42800) Unit!61435)

(assert (=> b!3990093 (= lt!1406233 (lemmaIsPrefixSameLengthThenSameList!863 lt!1406229 lt!1406230 lt!1406232))))

(declare-fun b!3990094 () Bool)

(declare-fun Unit!61439 () Unit!61435)

(assert (=> b!3990094 (= e!2473408 Unit!61439)))

(declare-fun b!3990095 () Bool)

(declare-fun e!2473419 () Bool)

(assert (=> b!3990095 (= e!2473399 e!2473419)))

(declare-fun res!1619129 () Bool)

(assert (=> b!3990095 (=> (not res!1619129) (not e!2473419))))

(declare-fun lt!1406247 () List!42800)

(assert (=> b!3990095 (= res!1619129 (= lt!1406247 lt!1406232))))

(assert (=> b!3990095 (= lt!1406232 (++!11156 prefix!494 newSuffix!27))))

(assert (=> b!3990095 (= lt!1406247 (++!11156 lt!1406230 newSuffixResult!27))))

(declare-fun b!3990096 () Bool)

(assert (=> b!3990096 (= e!2473407 true)))

(declare-fun lt!1406231 () Bool)

(declare-fun rulesValidInductive!2455 (LexerInterface!6343 List!42802) Bool)

(assert (=> b!3990096 (= lt!1406231 (rulesValidInductive!2455 thiss!21717 rules!2999))))

(assert (=> b!3990097 (= e!2473395 (and tp!1215472 tp!1215467))))

(declare-fun b!3990098 () Bool)

(assert (=> b!3990098 (= e!2473419 e!2473418)))

(declare-fun res!1619143 () Bool)

(assert (=> b!3990098 (=> (not res!1619143) (not e!2473418))))

(assert (=> b!3990098 (= res!1619143 (= (maxPrefix!3641 thiss!21717 rules!2999 lt!1406212) lt!1406260))))

(assert (=> b!3990098 (= lt!1406260 (Some!9167 lt!1406222))))

(assert (=> b!3990098 (= lt!1406222 (tuple2!41881 token!484 suffixResult!105))))

(assert (=> b!3990098 (= lt!1406212 (++!11156 prefix!494 suffix!1299))))

(declare-fun tp!1215473 () Bool)

(declare-fun b!3990099 () Bool)

(declare-fun inv!21 (TokenValue!6984) Bool)

(assert (=> b!3990099 (= e!2473421 (and (inv!21 (value!213123 token!484)) e!2473394 tp!1215473))))

(declare-fun b!3990100 () Bool)

(declare-fun res!1619138 () Bool)

(assert (=> b!3990100 (=> (not res!1619138) (not e!2473402))))

(assert (=> b!3990100 (= res!1619138 (= (size!31918 token!484) (size!31919 (originalCharacters!7354 token!484))))))

(declare-fun b!3990101 () Bool)

(declare-fun tp!1215474 () Bool)

(assert (=> b!3990101 (= e!2473403 (and tp_is_empty!20289 tp!1215474))))

(declare-fun b!3990102 () Bool)

(declare-fun res!1619144 () Bool)

(assert (=> b!3990102 (=> (not res!1619144) (not e!2473414))))

(declare-fun rulesInvariant!5686 (LexerInterface!6343 List!42802) Bool)

(assert (=> b!3990102 (= res!1619144 (rulesInvariant!5686 thiss!21717 rules!2999))))

(assert (=> b!3990103 (= e!2473420 (and tp!1215478 tp!1215470))))

(declare-fun b!3990104 () Bool)

(declare-fun Unit!61440 () Unit!61435)

(assert (=> b!3990104 (= e!2473408 Unit!61440)))

(declare-fun lt!1406242 () Unit!61435)

(assert (=> b!3990104 (= lt!1406242 (lemmaMaxPrefixOutputsMaxPrefix!408 thiss!21717 rules!2999 (rule!9772 token!484) lt!1406230 lt!1406212 lt!1406229 (rule!9772 (_1!24074 (v!39523 lt!1406216)))))))

(declare-fun res!1619127 () Bool)

(assert (=> b!3990104 (= res!1619127 (not (matchR!5636 (regex!6754 (rule!9772 (_1!24074 (v!39523 lt!1406216)))) lt!1406229)))))

(assert (=> b!3990104 (=> (not res!1619127) (not e!2473410))))

(assert (=> b!3990104 e!2473410))

(assert (= (and start!375516 res!1619131) b!3990075))

(assert (= (and b!3990075 res!1619147) b!3990102))

(assert (= (and b!3990102 res!1619144) b!3990081))

(assert (= (and b!3990081 res!1619124) b!3990080))

(assert (= (and b!3990080 res!1619120) b!3990089))

(assert (= (and b!3990089 res!1619140) b!3990095))

(assert (= (and b!3990095 res!1619129) b!3990098))

(assert (= (and b!3990098 res!1619143) b!3990073))

(assert (= (and b!3990073 (not res!1619133)) b!3990088))

(assert (= (and b!3990088 (not res!1619135)) b!3990068))

(assert (= (and b!3990068 (not res!1619139)) b!3990085))

(assert (= (and b!3990085 (not res!1619121)) b!3990086))

(assert (= (and b!3990086 (not res!1619134)) b!3990087))

(assert (= (and b!3990087 (not res!1619146)) b!3990091))

(assert (= (and b!3990091 res!1619136) b!3990061))

(assert (= (and b!3990061 res!1619148) b!3990100))

(assert (= (and b!3990100 res!1619138) b!3990077))

(assert (= (and b!3990091 (not res!1619125)) b!3990083))

(assert (= (and b!3990083 (not res!1619126)) b!3990066))

(assert (= (and b!3990066 (not res!1619141)) b!3990076))

(assert (= (and b!3990076 (not res!1619123)) b!3990079))

(assert (= (and b!3990079 (not res!1619145)) b!3990063))

(assert (= (and b!3990063 (not res!1619128)) b!3990084))

(assert (= (and b!3990084 (not res!1619142)) b!3990064))

(assert (= (and b!3990064 (not res!1619122)) b!3990072))

(assert (= (and b!3990072 c!690605) b!3990104))

(assert (= (and b!3990072 (not c!690605)) b!3990094))

(assert (= (and b!3990104 res!1619127) b!3990067))

(assert (= (and b!3990072 c!690604) b!3990090))

(assert (= (and b!3990072 (not c!690604)) b!3990069))

(assert (= (and b!3990072 (not res!1619137)) b!3990078))

(assert (= (and b!3990078 (not res!1619130)) b!3990093))

(assert (= (and b!3990093 (not res!1619132)) b!3990096))

(assert (= (and start!375516 ((_ is Cons!42676) prefix!494)) b!3990082))

(assert (= b!3990062 b!3990097))

(assert (= b!3990099 b!3990062))

(assert (= start!375516 b!3990099))

(assert (= (and start!375516 ((_ is Cons!42676) suffixResult!105)) b!3990070))

(assert (= (and start!375516 ((_ is Cons!42676) suffix!1299)) b!3990101))

(assert (= (and start!375516 ((_ is Cons!42676) newSuffix!27)) b!3990074))

(assert (= b!3990092 b!3990103))

(assert (= b!3990071 b!3990092))

(assert (= (and start!375516 ((_ is Cons!42678) rules!2999)) b!3990071))

(assert (= (and start!375516 ((_ is Cons!42676) newSuffixResult!27)) b!3990065))

(declare-fun m!4568133 () Bool)

(assert (=> b!3990100 m!4568133))

(declare-fun m!4568135 () Bool)

(assert (=> b!3990086 m!4568135))

(declare-fun m!4568137 () Bool)

(assert (=> b!3990086 m!4568137))

(declare-fun m!4568139 () Bool)

(assert (=> b!3990086 m!4568139))

(assert (=> b!3990086 m!4568139))

(declare-fun m!4568141 () Bool)

(assert (=> b!3990086 m!4568141))

(declare-fun m!4568143 () Bool)

(assert (=> b!3990086 m!4568143))

(declare-fun m!4568145 () Bool)

(assert (=> b!3990086 m!4568145))

(declare-fun m!4568147 () Bool)

(assert (=> b!3990086 m!4568147))

(declare-fun m!4568149 () Bool)

(assert (=> b!3990064 m!4568149))

(declare-fun m!4568151 () Bool)

(assert (=> b!3990064 m!4568151))

(declare-fun m!4568153 () Bool)

(assert (=> b!3990081 m!4568153))

(declare-fun m!4568155 () Bool)

(assert (=> b!3990081 m!4568155))

(declare-fun m!4568157 () Bool)

(assert (=> b!3990098 m!4568157))

(declare-fun m!4568159 () Bool)

(assert (=> b!3990098 m!4568159))

(declare-fun m!4568161 () Bool)

(assert (=> b!3990091 m!4568161))

(declare-fun m!4568163 () Bool)

(assert (=> b!3990091 m!4568163))

(declare-fun m!4568165 () Bool)

(assert (=> b!3990091 m!4568165))

(declare-fun m!4568167 () Bool)

(assert (=> b!3990091 m!4568167))

(declare-fun m!4568169 () Bool)

(assert (=> b!3990085 m!4568169))

(declare-fun m!4568171 () Bool)

(assert (=> b!3990085 m!4568171))

(declare-fun m!4568173 () Bool)

(assert (=> b!3990085 m!4568173))

(declare-fun m!4568175 () Bool)

(assert (=> b!3990085 m!4568175))

(declare-fun m!4568177 () Bool)

(assert (=> b!3990080 m!4568177))

(declare-fun m!4568179 () Bool)

(assert (=> b!3990079 m!4568179))

(declare-fun m!4568181 () Bool)

(assert (=> b!3990079 m!4568181))

(declare-fun m!4568183 () Bool)

(assert (=> b!3990079 m!4568183))

(declare-fun m!4568185 () Bool)

(assert (=> b!3990068 m!4568185))

(declare-fun m!4568187 () Bool)

(assert (=> b!3990068 m!4568187))

(declare-fun m!4568189 () Bool)

(assert (=> b!3990068 m!4568189))

(declare-fun m!4568191 () Bool)

(assert (=> b!3990068 m!4568191))

(declare-fun m!4568193 () Bool)

(assert (=> b!3990104 m!4568193))

(declare-fun m!4568195 () Bool)

(assert (=> b!3990104 m!4568195))

(declare-fun m!4568197 () Bool)

(assert (=> b!3990102 m!4568197))

(declare-fun m!4568199 () Bool)

(assert (=> b!3990083 m!4568199))

(declare-fun m!4568201 () Bool)

(assert (=> b!3990083 m!4568201))

(declare-fun m!4568203 () Bool)

(assert (=> b!3990083 m!4568203))

(declare-fun m!4568205 () Bool)

(assert (=> b!3990083 m!4568205))

(declare-fun m!4568207 () Bool)

(assert (=> start!375516 m!4568207))

(declare-fun m!4568209 () Bool)

(assert (=> b!3990093 m!4568209))

(declare-fun m!4568211 () Bool)

(assert (=> b!3990093 m!4568211))

(declare-fun m!4568213 () Bool)

(assert (=> b!3990093 m!4568213))

(declare-fun m!4568215 () Bool)

(assert (=> b!3990093 m!4568215))

(declare-fun m!4568217 () Bool)

(assert (=> b!3990073 m!4568217))

(declare-fun m!4568219 () Bool)

(assert (=> b!3990073 m!4568219))

(declare-fun m!4568221 () Bool)

(assert (=> b!3990073 m!4568221))

(declare-fun m!4568223 () Bool)

(assert (=> b!3990073 m!4568223))

(declare-fun m!4568225 () Bool)

(assert (=> b!3990062 m!4568225))

(declare-fun m!4568227 () Bool)

(assert (=> b!3990062 m!4568227))

(declare-fun m!4568229 () Bool)

(assert (=> b!3990096 m!4568229))

(declare-fun m!4568231 () Bool)

(assert (=> b!3990072 m!4568231))

(declare-fun m!4568233 () Bool)

(assert (=> b!3990072 m!4568233))

(declare-fun m!4568235 () Bool)

(assert (=> b!3990072 m!4568235))

(declare-fun m!4568237 () Bool)

(assert (=> b!3990066 m!4568237))

(declare-fun m!4568239 () Bool)

(assert (=> b!3990066 m!4568239))

(declare-fun m!4568241 () Bool)

(assert (=> b!3990066 m!4568241))

(declare-fun m!4568243 () Bool)

(assert (=> b!3990066 m!4568243))

(declare-fun m!4568245 () Bool)

(assert (=> b!3990066 m!4568245))

(declare-fun m!4568247 () Bool)

(assert (=> b!3990066 m!4568247))

(assert (=> b!3990066 m!4568237))

(declare-fun m!4568249 () Bool)

(assert (=> b!3990066 m!4568249))

(declare-fun m!4568251 () Bool)

(assert (=> b!3990066 m!4568251))

(declare-fun m!4568253 () Bool)

(assert (=> b!3990066 m!4568253))

(assert (=> b!3990066 m!4568239))

(declare-fun m!4568255 () Bool)

(assert (=> b!3990066 m!4568255))

(declare-fun m!4568257 () Bool)

(assert (=> b!3990066 m!4568257))

(declare-fun m!4568259 () Bool)

(assert (=> b!3990066 m!4568259))

(declare-fun m!4568261 () Bool)

(assert (=> b!3990066 m!4568261))

(declare-fun m!4568263 () Bool)

(assert (=> b!3990066 m!4568263))

(declare-fun m!4568265 () Bool)

(assert (=> b!3990066 m!4568265))

(assert (=> b!3990066 m!4568261))

(declare-fun m!4568267 () Bool)

(assert (=> b!3990066 m!4568267))

(declare-fun m!4568269 () Bool)

(assert (=> b!3990066 m!4568269))

(declare-fun m!4568271 () Bool)

(assert (=> b!3990066 m!4568271))

(declare-fun m!4568273 () Bool)

(assert (=> b!3990092 m!4568273))

(declare-fun m!4568275 () Bool)

(assert (=> b!3990092 m!4568275))

(declare-fun m!4568277 () Bool)

(assert (=> b!3990090 m!4568277))

(declare-fun m!4568279 () Bool)

(assert (=> b!3990075 m!4568279))

(declare-fun m!4568281 () Bool)

(assert (=> b!3990095 m!4568281))

(declare-fun m!4568283 () Bool)

(assert (=> b!3990095 m!4568283))

(declare-fun m!4568285 () Bool)

(assert (=> b!3990099 m!4568285))

(declare-fun m!4568287 () Bool)

(assert (=> b!3990078 m!4568287))

(declare-fun m!4568289 () Bool)

(assert (=> b!3990063 m!4568289))

(declare-fun m!4568291 () Bool)

(assert (=> b!3990063 m!4568291))

(declare-fun m!4568293 () Bool)

(assert (=> b!3990063 m!4568293))

(declare-fun m!4568295 () Bool)

(assert (=> b!3990087 m!4568295))

(declare-fun m!4568297 () Bool)

(assert (=> b!3990087 m!4568297))

(declare-fun m!4568299 () Bool)

(assert (=> b!3990087 m!4568299))

(declare-fun m!4568301 () Bool)

(assert (=> b!3990087 m!4568301))

(declare-fun m!4568303 () Bool)

(assert (=> b!3990089 m!4568303))

(declare-fun m!4568305 () Bool)

(assert (=> b!3990089 m!4568305))

(declare-fun m!4568307 () Bool)

(assert (=> b!3990089 m!4568307))

(assert (=> b!3990089 m!4568307))

(declare-fun m!4568309 () Bool)

(assert (=> b!3990089 m!4568309))

(declare-fun m!4568311 () Bool)

(assert (=> b!3990076 m!4568311))

(declare-fun m!4568313 () Bool)

(assert (=> b!3990076 m!4568313))

(declare-fun m!4568315 () Bool)

(assert (=> b!3990088 m!4568315))

(declare-fun m!4568317 () Bool)

(assert (=> b!3990088 m!4568317))

(declare-fun m!4568319 () Bool)

(assert (=> b!3990088 m!4568319))

(declare-fun m!4568321 () Bool)

(assert (=> b!3990088 m!4568321))

(declare-fun m!4568323 () Bool)

(assert (=> b!3990088 m!4568323))

(check-sat (not b!3990095) (not b!3990080) (not b!3990087) (not start!375516) (not b!3990100) (not b_next!111535) (not b!3990096) (not b!3990086) (not b!3990082) (not b!3990101) (not b!3990083) (not b!3990075) (not b!3990104) (not b!3990068) (not b!3990070) (not b!3990078) (not b!3990074) b_and!306581 (not b!3990085) (not b!3990063) b_and!306577 (not b!3990093) (not b!3990098) (not b_next!111531) (not b!3990091) (not b!3990071) (not b!3990079) (not b!3990092) (not b_next!111529) (not b!3990072) b_and!306579 (not b!3990066) (not b!3990064) b_and!306575 (not b!3990099) (not b!3990088) (not b!3990065) (not b_next!111533) (not b!3990081) (not b!3990090) tp_is_empty!20289 (not b!3990062) (not b!3990102) (not b!3990076) (not b!3990073) (not b!3990089))
(check-sat b_and!306581 b_and!306577 (not b_next!111531) (not b_next!111535) (not b_next!111529) b_and!306579 b_and!306575 (not b_next!111533))
