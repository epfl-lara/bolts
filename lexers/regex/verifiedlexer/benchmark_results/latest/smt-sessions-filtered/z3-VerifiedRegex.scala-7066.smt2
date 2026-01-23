; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374724 () Bool)

(assert start!374724)

(declare-fun b!3981323 () Bool)

(declare-fun b_free!110505 () Bool)

(declare-fun b_next!111209 () Bool)

(assert (=> b!3981323 (= b_free!110505 (not b_next!111209))))

(declare-fun tp!1213623 () Bool)

(declare-fun b_and!306015 () Bool)

(assert (=> b!3981323 (= tp!1213623 b_and!306015)))

(declare-fun b_free!110507 () Bool)

(declare-fun b_next!111211 () Bool)

(assert (=> b!3981323 (= b_free!110507 (not b_next!111211))))

(declare-fun tp!1213616 () Bool)

(declare-fun b_and!306017 () Bool)

(assert (=> b!3981323 (= tp!1213616 b_and!306017)))

(declare-fun b!3981338 () Bool)

(declare-fun b_free!110509 () Bool)

(declare-fun b_next!111213 () Bool)

(assert (=> b!3981338 (= b_free!110509 (not b_next!111213))))

(declare-fun tp!1213624 () Bool)

(declare-fun b_and!306019 () Bool)

(assert (=> b!3981338 (= tp!1213624 b_and!306019)))

(declare-fun b_free!110511 () Bool)

(declare-fun b_next!111215 () Bool)

(assert (=> b!3981338 (= b_free!110511 (not b_next!111215))))

(declare-fun tp!1213621 () Bool)

(declare-fun b_and!306021 () Bool)

(assert (=> b!3981338 (= tp!1213621 b_and!306021)))

(declare-fun b!3981309 () Bool)

(declare-fun res!1613580 () Bool)

(declare-fun e!2467286 () Bool)

(assert (=> b!3981309 (=> (not res!1613580) (not e!2467286))))

(declare-datatypes ((C!23436 0))(
  ( (C!23437 (val!13812 Int)) )
))
(declare-datatypes ((List!42686 0))(
  ( (Nil!42562) (Cons!42562 (h!47982 C!23436) (t!331341 List!42686)) )
))
(declare-datatypes ((IArray!25867 0))(
  ( (IArray!25868 (innerList!12991 List!42686)) )
))
(declare-datatypes ((Conc!12931 0))(
  ( (Node!12931 (left!32189 Conc!12931) (right!32519 Conc!12931) (csize!26092 Int) (cheight!13142 Int)) (Leaf!19998 (xs!16237 IArray!25867) (csize!26093 Int)) (Empty!12931) )
))
(declare-datatypes ((BalanceConc!25456 0))(
  ( (BalanceConc!25457 (c!689728 Conc!12931)) )
))
(declare-datatypes ((List!42687 0))(
  ( (Nil!42563) (Cons!42563 (h!47983 (_ BitVec 16)) (t!331342 List!42687)) )
))
(declare-datatypes ((TokenValue!6950 0))(
  ( (FloatLiteralValue!13900 (text!49095 List!42687)) (TokenValueExt!6949 (__x!26117 Int)) (Broken!34750 (value!212128 List!42687)) (Object!7073) (End!6950) (Def!6950) (Underscore!6950) (Match!6950) (Else!6950) (Error!6950) (Case!6950) (If!6950) (Extends!6950) (Abstract!6950) (Class!6950) (Val!6950) (DelimiterValue!13900 (del!7010 List!42687)) (KeywordValue!6956 (value!212129 List!42687)) (CommentValue!13900 (value!212130 List!42687)) (WhitespaceValue!13900 (value!212131 List!42687)) (IndentationValue!6950 (value!212132 List!42687)) (String!48467) (Int32!6950) (Broken!34751 (value!212133 List!42687)) (Boolean!6951) (Unit!61229) (OperatorValue!6953 (op!7010 List!42687)) (IdentifierValue!13900 (value!212134 List!42687)) (IdentifierValue!13901 (value!212135 List!42687)) (WhitespaceValue!13901 (value!212136 List!42687)) (True!13900) (False!13900) (Broken!34752 (value!212137 List!42687)) (Broken!34753 (value!212138 List!42687)) (True!13901) (RightBrace!6950) (RightBracket!6950) (Colon!6950) (Null!6950) (Comma!6950) (LeftBracket!6950) (False!13901) (LeftBrace!6950) (ImaginaryLiteralValue!6950 (text!49096 List!42687)) (StringLiteralValue!20850 (value!212139 List!42687)) (EOFValue!6950 (value!212140 List!42687)) (IdentValue!6950 (value!212141 List!42687)) (DelimiterValue!13901 (value!212142 List!42687)) (DedentValue!6950 (value!212143 List!42687)) (NewLineValue!6950 (value!212144 List!42687)) (IntegerValue!20850 (value!212145 (_ BitVec 32)) (text!49097 List!42687)) (IntegerValue!20851 (value!212146 Int) (text!49098 List!42687)) (Times!6950) (Or!6950) (Equal!6950) (Minus!6950) (Broken!34754 (value!212147 List!42687)) (And!6950) (Div!6950) (LessEqual!6950) (Mod!6950) (Concat!18575) (Not!6950) (Plus!6950) (SpaceValue!6950 (value!212148 List!42687)) (IntegerValue!20852 (value!212149 Int) (text!49099 List!42687)) (StringLiteralValue!20851 (text!49100 List!42687)) (FloatLiteralValue!13901 (text!49101 List!42687)) (BytesLiteralValue!6950 (value!212150 List!42687)) (CommentValue!13901 (value!212151 List!42687)) (StringLiteralValue!20852 (value!212152 List!42687)) (ErrorTokenValue!6950 (msg!7011 List!42687)) )
))
(declare-datatypes ((Regex!11625 0))(
  ( (ElementMatch!11625 (c!689729 C!23436)) (Concat!18576 (regOne!23762 Regex!11625) (regTwo!23762 Regex!11625)) (EmptyExpr!11625) (Star!11625 (reg!11954 Regex!11625)) (EmptyLang!11625) (Union!11625 (regOne!23763 Regex!11625) (regTwo!23763 Regex!11625)) )
))
(declare-datatypes ((String!48468 0))(
  ( (String!48469 (value!212153 String)) )
))
(declare-datatypes ((TokenValueInjection!13328 0))(
  ( (TokenValueInjection!13329 (toValue!9208 Int) (toChars!9067 Int)) )
))
(declare-datatypes ((Rule!13240 0))(
  ( (Rule!13241 (regex!6720 Regex!11625) (tag!7580 String!48468) (isSeparator!6720 Bool) (transformation!6720 TokenValueInjection!13328)) )
))
(declare-datatypes ((Token!12578 0))(
  ( (Token!12579 (value!212154 TokenValue!6950) (rule!9726 Rule!13240) (size!31838 Int) (originalCharacters!7320 List!42686)) )
))
(declare-fun token!484 () Token!12578)

(declare-fun lt!1398629 () TokenValue!6950)

(assert (=> b!3981309 (= res!1613580 (= (value!212154 token!484) lt!1398629))))

(declare-fun b!3981310 () Bool)

(declare-fun e!2467268 () Bool)

(declare-fun e!2467270 () Bool)

(assert (=> b!3981310 (= e!2467268 e!2467270)))

(declare-fun res!1613589 () Bool)

(assert (=> b!3981310 (=> (not res!1613589) (not e!2467270))))

(declare-fun lt!1398616 () List!42686)

(declare-fun lt!1398604 () List!42686)

(assert (=> b!3981310 (= res!1613589 (= lt!1398616 lt!1398604))))

(declare-fun prefix!494 () List!42686)

(declare-fun newSuffix!27 () List!42686)

(declare-fun ++!11122 (List!42686 List!42686) List!42686)

(assert (=> b!3981310 (= lt!1398604 (++!11122 prefix!494 newSuffix!27))))

(declare-fun lt!1398608 () List!42686)

(declare-fun newSuffixResult!27 () List!42686)

(assert (=> b!3981310 (= lt!1398616 (++!11122 lt!1398608 newSuffixResult!27))))

(declare-fun b!3981312 () Bool)

(declare-fun e!2467280 () Bool)

(declare-fun tp_is_empty!20221 () Bool)

(declare-fun tp!1213615 () Bool)

(assert (=> b!3981312 (= e!2467280 (and tp_is_empty!20221 tp!1213615))))

(declare-fun b!3981313 () Bool)

(declare-fun res!1613581 () Bool)

(declare-fun e!2467279 () Bool)

(assert (=> b!3981313 (=> res!1613581 e!2467279)))

(declare-fun lt!1398595 () List!42686)

(assert (=> b!3981313 (= res!1613581 (not (= lt!1398595 lt!1398604)))))

(declare-fun b!3981314 () Bool)

(declare-fun e!2467271 () Bool)

(declare-fun e!2467283 () Bool)

(assert (=> b!3981314 (= e!2467271 e!2467283)))

(declare-fun res!1613592 () Bool)

(assert (=> b!3981314 (=> res!1613592 e!2467283)))

(declare-fun lt!1398611 () List!42686)

(declare-fun lt!1398615 () List!42686)

(assert (=> b!3981314 (= res!1613592 (not (= lt!1398611 lt!1398615)))))

(declare-fun lt!1398597 () List!42686)

(assert (=> b!3981314 (= lt!1398611 (++!11122 prefix!494 lt!1398597))))

(declare-fun lt!1398622 () List!42686)

(assert (=> b!3981314 (= lt!1398611 (++!11122 lt!1398604 lt!1398622))))

(declare-datatypes ((Unit!61230 0))(
  ( (Unit!61231) )
))
(declare-fun lt!1398624 () Unit!61230)

(declare-fun lemmaConcatAssociativity!2442 (List!42686 List!42686 List!42686) Unit!61230)

(assert (=> b!3981314 (= lt!1398624 (lemmaConcatAssociativity!2442 prefix!494 newSuffix!27 lt!1398622))))

(declare-fun b!3981315 () Bool)

(declare-fun e!2467269 () Bool)

(declare-fun e!2467288 () Bool)

(declare-fun tp!1213622 () Bool)

(assert (=> b!3981315 (= e!2467269 (and e!2467288 tp!1213622))))

(declare-fun b!3981316 () Bool)

(declare-fun res!1613577 () Bool)

(declare-fun e!2467274 () Bool)

(assert (=> b!3981316 (=> (not res!1613577) (not e!2467274))))

(declare-datatypes ((List!42688 0))(
  ( (Nil!42564) (Cons!42564 (h!47984 Rule!13240) (t!331343 List!42688)) )
))
(declare-fun rules!2999 () List!42688)

(declare-fun isEmpty!25448 (List!42688) Bool)

(assert (=> b!3981316 (= res!1613577 (not (isEmpty!25448 rules!2999)))))

(declare-fun b!3981317 () Bool)

(declare-fun e!2467273 () Bool)

(declare-fun tp!1213613 () Bool)

(assert (=> b!3981317 (= e!2467273 (and tp_is_empty!20221 tp!1213613))))

(declare-fun b!3981318 () Bool)

(declare-fun e!2467295 () Bool)

(declare-fun e!2467285 () Bool)

(assert (=> b!3981318 (= e!2467295 e!2467285)))

(declare-fun res!1613578 () Bool)

(assert (=> b!3981318 (=> res!1613578 e!2467285)))

(declare-fun lt!1398607 () List!42686)

(declare-fun lt!1398599 () List!42686)

(assert (=> b!3981318 (= res!1613578 (or (not (= lt!1398615 lt!1398599)) (not (= lt!1398615 lt!1398607))))))

(assert (=> b!3981318 (= lt!1398599 lt!1398607)))

(declare-fun lt!1398621 () List!42686)

(assert (=> b!3981318 (= lt!1398607 (++!11122 lt!1398608 lt!1398621))))

(declare-fun lt!1398602 () List!42686)

(declare-fun suffix!1299 () List!42686)

(assert (=> b!3981318 (= lt!1398599 (++!11122 lt!1398602 suffix!1299))))

(declare-fun lt!1398625 () List!42686)

(assert (=> b!3981318 (= lt!1398621 (++!11122 lt!1398625 suffix!1299))))

(declare-fun lt!1398618 () Unit!61230)

(assert (=> b!3981318 (= lt!1398618 (lemmaConcatAssociativity!2442 lt!1398608 lt!1398625 suffix!1299))))

(declare-fun b!3981311 () Bool)

(assert (=> b!3981311 (= e!2467283 e!2467279)))

(declare-fun res!1613593 () Bool)

(assert (=> b!3981311 (=> res!1613593 e!2467279)))

(declare-fun lt!1398635 () List!42686)

(declare-fun isPrefix!3807 (List!42686 List!42686) Bool)

(assert (=> b!3981311 (= res!1613593 (not (isPrefix!3807 lt!1398635 lt!1398615)))))

(assert (=> b!3981311 (isPrefix!3807 lt!1398635 lt!1398611)))

(declare-fun lt!1398642 () Unit!61230)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!640 (List!42686 List!42686 List!42686) Unit!61230)

(assert (=> b!3981311 (= lt!1398642 (lemmaPrefixStaysPrefixWhenAddingToSuffix!640 lt!1398635 lt!1398604 lt!1398622))))

(declare-fun res!1613583 () Bool)

(assert (=> start!374724 (=> (not res!1613583) (not e!2467274))))

(declare-datatypes ((LexerInterface!6309 0))(
  ( (LexerInterfaceExt!6306 (__x!26118 Int)) (Lexer!6307) )
))
(declare-fun thiss!21717 () LexerInterface!6309)

(get-info :version)

(assert (=> start!374724 (= res!1613583 ((_ is Lexer!6307) thiss!21717))))

(assert (=> start!374724 e!2467274))

(assert (=> start!374724 e!2467273))

(declare-fun e!2467278 () Bool)

(declare-fun inv!56859 (Token!12578) Bool)

(assert (=> start!374724 (and (inv!56859 token!484) e!2467278)))

(assert (=> start!374724 e!2467280))

(declare-fun e!2467296 () Bool)

(assert (=> start!374724 e!2467296))

(declare-fun e!2467293 () Bool)

(assert (=> start!374724 e!2467293))

(assert (=> start!374724 true))

(assert (=> start!374724 e!2467269))

(declare-fun e!2467284 () Bool)

(assert (=> start!374724 e!2467284))

(declare-fun b!3981319 () Bool)

(declare-fun e!2467265 () Bool)

(declare-fun tp!1213614 () Bool)

(declare-fun inv!56856 (String!48468) Bool)

(declare-fun inv!56860 (TokenValueInjection!13328) Bool)

(assert (=> b!3981319 (= e!2467288 (and tp!1213614 (inv!56856 (tag!7580 (h!47984 rules!2999))) (inv!56860 (transformation!6720 (h!47984 rules!2999))) e!2467265))))

(declare-fun b!3981320 () Bool)

(declare-fun e!2467272 () Bool)

(declare-fun e!2467287 () Bool)

(assert (=> b!3981320 (= e!2467272 (not e!2467287))))

(declare-fun res!1613585 () Bool)

(assert (=> b!3981320 (=> res!1613585 e!2467287)))

(declare-fun lt!1398626 () List!42686)

(assert (=> b!3981320 (= res!1613585 (not (= lt!1398626 lt!1398615)))))

(declare-fun suffixResult!105 () List!42686)

(assert (=> b!3981320 (= lt!1398626 (++!11122 lt!1398608 suffixResult!105))))

(declare-fun lt!1398641 () Unit!61230)

(declare-fun lemmaInv!935 (TokenValueInjection!13328) Unit!61230)

(assert (=> b!3981320 (= lt!1398641 (lemmaInv!935 (transformation!6720 (rule!9726 token!484))))))

(declare-fun ruleValid!2652 (LexerInterface!6309 Rule!13240) Bool)

(assert (=> b!3981320 (ruleValid!2652 thiss!21717 (rule!9726 token!484))))

(declare-fun lt!1398645 () Unit!61230)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1726 (LexerInterface!6309 Rule!13240 List!42688) Unit!61230)

(assert (=> b!3981320 (= lt!1398645 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1726 thiss!21717 (rule!9726 token!484) rules!2999))))

(declare-fun b!3981321 () Bool)

(declare-fun e!2467266 () Bool)

(assert (=> b!3981321 (= e!2467266 e!2467271)))

(declare-fun res!1613587 () Bool)

(assert (=> b!3981321 (=> res!1613587 e!2467271)))

(assert (=> b!3981321 (= res!1613587 (not (= lt!1398597 suffix!1299)))))

(assert (=> b!3981321 (= lt!1398597 (++!11122 newSuffix!27 lt!1398622))))

(declare-fun getSuffix!2238 (List!42686 List!42686) List!42686)

(assert (=> b!3981321 (= lt!1398622 (getSuffix!2238 suffix!1299 newSuffix!27))))

(declare-fun b!3981322 () Bool)

(declare-fun e!2467292 () Bool)

(assert (=> b!3981322 (= e!2467292 e!2467266)))

(declare-fun res!1613597 () Bool)

(assert (=> b!3981322 (=> res!1613597 e!2467266)))

(declare-datatypes ((tuple2!41788 0))(
  ( (tuple2!41789 (_1!24028 Token!12578) (_2!24028 List!42686)) )
))
(declare-datatypes ((Option!9134 0))(
  ( (None!9133) (Some!9133 (v!39481 tuple2!41788)) )
))
(declare-fun lt!1398643 () Option!9134)

(declare-fun lt!1398614 () Option!9134)

(assert (=> b!3981322 (= res!1613597 (not (= lt!1398643 (Some!9133 (v!39481 lt!1398614)))))))

(assert (=> b!3981322 (isPrefix!3807 lt!1398635 (++!11122 lt!1398635 newSuffixResult!27))))

(declare-fun lt!1398640 () Unit!61230)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2650 (List!42686 List!42686) Unit!61230)

(assert (=> b!3981322 (= lt!1398640 (lemmaConcatTwoListThenFirstIsPrefix!2650 lt!1398635 newSuffixResult!27))))

(assert (=> b!3981322 (isPrefix!3807 lt!1398635 lt!1398595)))

(assert (=> b!3981322 (= lt!1398595 (++!11122 lt!1398635 (_2!24028 (v!39481 lt!1398614))))))

(declare-fun lt!1398620 () Unit!61230)

(assert (=> b!3981322 (= lt!1398620 (lemmaConcatTwoListThenFirstIsPrefix!2650 lt!1398635 (_2!24028 (v!39481 lt!1398614))))))

(declare-fun lt!1398612 () TokenValue!6950)

(declare-fun lt!1398630 () Int)

(assert (=> b!3981322 (= lt!1398643 (Some!9133 (tuple2!41789 (Token!12579 lt!1398612 (rule!9726 (_1!24028 (v!39481 lt!1398614))) lt!1398630 lt!1398635) (_2!24028 (v!39481 lt!1398614)))))))

(declare-fun maxPrefixOneRule!2641 (LexerInterface!6309 Rule!13240 List!42686) Option!9134)

(assert (=> b!3981322 (= lt!1398643 (maxPrefixOneRule!2641 thiss!21717 (rule!9726 (_1!24028 (v!39481 lt!1398614))) lt!1398604))))

(declare-fun size!31839 (List!42686) Int)

(assert (=> b!3981322 (= lt!1398630 (size!31839 lt!1398635))))

(declare-fun apply!9931 (TokenValueInjection!13328 BalanceConc!25456) TokenValue!6950)

(declare-fun seqFromList!4959 (List!42686) BalanceConc!25456)

(assert (=> b!3981322 (= lt!1398612 (apply!9931 (transformation!6720 (rule!9726 (_1!24028 (v!39481 lt!1398614)))) (seqFromList!4959 lt!1398635)))))

(declare-fun lt!1398596 () Unit!61230)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1463 (LexerInterface!6309 List!42688 List!42686 List!42686 List!42686 Rule!13240) Unit!61230)

(assert (=> b!3981322 (= lt!1398596 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1463 thiss!21717 rules!2999 lt!1398635 lt!1398604 (_2!24028 (v!39481 lt!1398614)) (rule!9726 (_1!24028 (v!39481 lt!1398614)))))))

(declare-fun list!15798 (BalanceConc!25456) List!42686)

(declare-fun charsOf!4536 (Token!12578) BalanceConc!25456)

(assert (=> b!3981322 (= lt!1398635 (list!15798 (charsOf!4536 (_1!24028 (v!39481 lt!1398614)))))))

(declare-fun lt!1398619 () Unit!61230)

(assert (=> b!3981322 (= lt!1398619 (lemmaInv!935 (transformation!6720 (rule!9726 (_1!24028 (v!39481 lt!1398614))))))))

(assert (=> b!3981322 (ruleValid!2652 thiss!21717 (rule!9726 (_1!24028 (v!39481 lt!1398614))))))

(declare-fun lt!1398598 () Unit!61230)

(assert (=> b!3981322 (= lt!1398598 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1726 thiss!21717 (rule!9726 (_1!24028 (v!39481 lt!1398614))) rules!2999))))

(declare-fun lt!1398638 () Unit!61230)

(declare-fun lemmaCharactersSize!1315 (Token!12578) Unit!61230)

(assert (=> b!3981322 (= lt!1398638 (lemmaCharactersSize!1315 token!484))))

(declare-fun lt!1398592 () Unit!61230)

(assert (=> b!3981322 (= lt!1398592 (lemmaCharactersSize!1315 (_1!24028 (v!39481 lt!1398614))))))

(assert (=> b!3981323 (= e!2467265 (and tp!1213623 tp!1213616))))

(declare-fun b!3981324 () Bool)

(declare-fun tp!1213620 () Bool)

(assert (=> b!3981324 (= e!2467284 (and tp_is_empty!20221 tp!1213620))))

(declare-fun b!3981325 () Bool)

(declare-fun e!2467282 () Bool)

(assert (=> b!3981325 (= e!2467282 true)))

(declare-fun lt!1398600 () Bool)

(assert (=> b!3981325 (= lt!1398600 (isPrefix!3807 lt!1398635 lt!1398604))))

(declare-fun lt!1398613 () List!42686)

(assert (=> b!3981325 (isPrefix!3807 lt!1398635 lt!1398613)))

(declare-fun lt!1398601 () Unit!61230)

(declare-fun lt!1398636 () List!42686)

(assert (=> b!3981325 (= lt!1398601 (lemmaConcatTwoListThenFirstIsPrefix!2650 lt!1398635 lt!1398636))))

(declare-fun b!3981326 () Bool)

(declare-fun res!1613586 () Bool)

(assert (=> b!3981326 (=> (not res!1613586) (not e!2467274))))

(declare-fun rulesInvariant!5652 (LexerInterface!6309 List!42688) Bool)

(assert (=> b!3981326 (= res!1613586 (rulesInvariant!5652 thiss!21717 rules!2999))))

(declare-fun b!3981327 () Bool)

(declare-fun e!2467290 () Bool)

(assert (=> b!3981327 (= e!2467285 e!2467290)))

(declare-fun res!1613584 () Bool)

(assert (=> b!3981327 (=> res!1613584 e!2467290)))

(declare-fun lt!1398623 () Option!9134)

(declare-fun lt!1398627 () Option!9134)

(assert (=> b!3981327 (= res!1613584 (not (= lt!1398623 lt!1398627)))))

(declare-fun lt!1398631 () Token!12578)

(assert (=> b!3981327 (= lt!1398623 (Some!9133 (tuple2!41789 lt!1398631 suffixResult!105)))))

(assert (=> b!3981327 (= lt!1398623 (maxPrefixOneRule!2641 thiss!21717 (rule!9726 token!484) lt!1398615))))

(declare-fun lt!1398594 () Int)

(assert (=> b!3981327 (= lt!1398631 (Token!12579 lt!1398629 (rule!9726 token!484) lt!1398594 lt!1398608))))

(assert (=> b!3981327 (= lt!1398629 (apply!9931 (transformation!6720 (rule!9726 token!484)) (seqFromList!4959 lt!1398608)))))

(declare-fun lt!1398605 () Unit!61230)

(assert (=> b!3981327 (= lt!1398605 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1463 thiss!21717 rules!2999 lt!1398608 lt!1398615 suffixResult!105 (rule!9726 token!484)))))

(assert (=> b!3981327 (= lt!1398621 suffixResult!105)))

(declare-fun lt!1398633 () Unit!61230)

(declare-fun lemmaSamePrefixThenSameSuffix!1994 (List!42686 List!42686 List!42686 List!42686 List!42686) Unit!61230)

(assert (=> b!3981327 (= lt!1398633 (lemmaSamePrefixThenSameSuffix!1994 lt!1398608 lt!1398621 lt!1398608 suffixResult!105 lt!1398615))))

(assert (=> b!3981327 (isPrefix!3807 lt!1398608 lt!1398607)))

(declare-fun lt!1398593 () Unit!61230)

(assert (=> b!3981327 (= lt!1398593 (lemmaConcatTwoListThenFirstIsPrefix!2650 lt!1398608 lt!1398621))))

(declare-fun e!2467281 () Bool)

(declare-fun b!3981328 () Bool)

(declare-fun tp!1213618 () Bool)

(declare-fun e!2467276 () Bool)

(assert (=> b!3981328 (= e!2467281 (and tp!1213618 (inv!56856 (tag!7580 (rule!9726 token!484))) (inv!56860 (transformation!6720 (rule!9726 token!484))) e!2467276))))

(declare-fun b!3981329 () Bool)

(declare-fun res!1613594 () Bool)

(assert (=> b!3981329 (=> (not res!1613594) (not e!2467274))))

(assert (=> b!3981329 (= res!1613594 (isPrefix!3807 newSuffix!27 suffix!1299))))

(declare-fun b!3981330 () Bool)

(declare-fun res!1613574 () Bool)

(assert (=> b!3981330 (=> (not res!1613574) (not e!2467286))))

(assert (=> b!3981330 (= res!1613574 (= (size!31838 token!484) (size!31839 (originalCharacters!7320 token!484))))))

(declare-fun b!3981331 () Bool)

(assert (=> b!3981331 (= e!2467279 e!2467282)))

(declare-fun res!1613598 () Bool)

(assert (=> b!3981331 (=> res!1613598 e!2467282)))

(assert (=> b!3981331 (= res!1613598 (not (= lt!1398613 lt!1398604)))))

(assert (=> b!3981331 (= lt!1398613 (++!11122 lt!1398635 lt!1398636))))

(assert (=> b!3981331 (= lt!1398636 (getSuffix!2238 lt!1398604 lt!1398635))))

(declare-fun b!3981332 () Bool)

(declare-fun tp!1213619 () Bool)

(assert (=> b!3981332 (= e!2467296 (and tp_is_empty!20221 tp!1213619))))

(declare-fun b!3981333 () Bool)

(declare-fun e!2467289 () Bool)

(assert (=> b!3981333 (= e!2467289 e!2467295)))

(declare-fun res!1613595 () Bool)

(assert (=> b!3981333 (=> res!1613595 e!2467295)))

(assert (=> b!3981333 (= res!1613595 (not (= lt!1398602 prefix!494)))))

(assert (=> b!3981333 (= lt!1398602 (++!11122 lt!1398608 lt!1398625))))

(assert (=> b!3981333 (= lt!1398625 (getSuffix!2238 prefix!494 lt!1398608))))

(assert (=> b!3981333 (isPrefix!3807 lt!1398608 prefix!494)))

(declare-fun lt!1398606 () Unit!61230)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!385 (List!42686 List!42686 List!42686) Unit!61230)

(assert (=> b!3981333 (= lt!1398606 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!385 prefix!494 lt!1398608 lt!1398615))))

(declare-fun b!3981334 () Bool)

(declare-fun res!1613591 () Bool)

(assert (=> b!3981334 (=> (not res!1613591) (not e!2467274))))

(assert (=> b!3981334 (= res!1613591 (>= (size!31839 suffix!1299) (size!31839 newSuffix!27)))))

(declare-fun b!3981335 () Bool)

(declare-fun e!2467291 () Bool)

(assert (=> b!3981335 (= e!2467291 e!2467292)))

(declare-fun res!1613582 () Bool)

(assert (=> b!3981335 (=> res!1613582 e!2467292)))

(assert (=> b!3981335 (= res!1613582 (not ((_ is Some!9133) lt!1398614)))))

(declare-fun maxPrefix!3607 (LexerInterface!6309 List!42688 List!42686) Option!9134)

(assert (=> b!3981335 (= lt!1398614 (maxPrefix!3607 thiss!21717 rules!2999 lt!1398604))))

(declare-fun lt!1398634 () tuple2!41788)

(declare-fun lt!1398603 () List!42686)

(assert (=> b!3981335 (and (= suffixResult!105 lt!1398603) (= lt!1398634 (tuple2!41789 lt!1398631 lt!1398603)))))

(declare-fun lt!1398617 () Unit!61230)

(assert (=> b!3981335 (= lt!1398617 (lemmaSamePrefixThenSameSuffix!1994 lt!1398608 suffixResult!105 lt!1398608 lt!1398603 lt!1398615))))

(declare-fun lt!1398632 () List!42686)

(assert (=> b!3981335 (isPrefix!3807 lt!1398608 lt!1398632)))

(declare-fun lt!1398639 () Unit!61230)

(assert (=> b!3981335 (= lt!1398639 (lemmaConcatTwoListThenFirstIsPrefix!2650 lt!1398608 lt!1398603))))

(declare-fun b!3981336 () Bool)

(assert (=> b!3981336 (= e!2467270 e!2467272)))

(declare-fun res!1613576 () Bool)

(assert (=> b!3981336 (=> (not res!1613576) (not e!2467272))))

(assert (=> b!3981336 (= res!1613576 (= (maxPrefix!3607 thiss!21717 rules!2999 lt!1398615) lt!1398627))))

(assert (=> b!3981336 (= lt!1398627 (Some!9133 lt!1398634))))

(assert (=> b!3981336 (= lt!1398634 (tuple2!41789 token!484 suffixResult!105))))

(assert (=> b!3981336 (= lt!1398615 (++!11122 prefix!494 suffix!1299))))

(declare-fun b!3981337 () Bool)

(assert (=> b!3981337 (= e!2467287 e!2467289)))

(declare-fun res!1613579 () Bool)

(assert (=> b!3981337 (=> res!1613579 e!2467289)))

(assert (=> b!3981337 (= res!1613579 (not (isPrefix!3807 lt!1398608 lt!1398615)))))

(assert (=> b!3981337 (isPrefix!3807 prefix!494 lt!1398615)))

(declare-fun lt!1398609 () Unit!61230)

(assert (=> b!3981337 (= lt!1398609 (lemmaConcatTwoListThenFirstIsPrefix!2650 prefix!494 suffix!1299))))

(assert (=> b!3981337 (isPrefix!3807 lt!1398608 lt!1398626)))

(declare-fun lt!1398628 () Unit!61230)

(assert (=> b!3981337 (= lt!1398628 (lemmaConcatTwoListThenFirstIsPrefix!2650 lt!1398608 suffixResult!105))))

(assert (=> b!3981338 (= e!2467276 (and tp!1213624 tp!1213621))))

(declare-fun b!3981339 () Bool)

(declare-fun tp!1213617 () Bool)

(assert (=> b!3981339 (= e!2467293 (and tp_is_empty!20221 tp!1213617))))

(declare-fun b!3981340 () Bool)

(declare-fun e!2467275 () Bool)

(assert (=> b!3981340 (= e!2467275 e!2467291)))

(declare-fun res!1613596 () Bool)

(assert (=> b!3981340 (=> res!1613596 e!2467291)))

(assert (=> b!3981340 (= res!1613596 (not (= lt!1398632 lt!1398615)))))

(assert (=> b!3981340 (= lt!1398632 (++!11122 lt!1398608 lt!1398603))))

(assert (=> b!3981340 (= lt!1398603 (getSuffix!2238 lt!1398615 lt!1398608))))

(assert (=> b!3981340 e!2467286))

(declare-fun res!1613588 () Bool)

(assert (=> b!3981340 (=> (not res!1613588) (not e!2467286))))

(assert (=> b!3981340 (= res!1613588 (isPrefix!3807 lt!1398615 lt!1398615))))

(declare-fun lt!1398610 () Unit!61230)

(declare-fun lemmaIsPrefixRefl!2399 (List!42686 List!42686) Unit!61230)

(assert (=> b!3981340 (= lt!1398610 (lemmaIsPrefixRefl!2399 lt!1398615 lt!1398615))))

(declare-fun b!3981341 () Bool)

(assert (=> b!3981341 (= e!2467274 e!2467268)))

(declare-fun res!1613575 () Bool)

(assert (=> b!3981341 (=> (not res!1613575) (not e!2467268))))

(declare-fun lt!1398637 () Int)

(assert (=> b!3981341 (= res!1613575 (>= lt!1398637 lt!1398594))))

(assert (=> b!3981341 (= lt!1398594 (size!31839 lt!1398608))))

(assert (=> b!3981341 (= lt!1398637 (size!31839 prefix!494))))

(assert (=> b!3981341 (= lt!1398608 (list!15798 (charsOf!4536 token!484)))))

(declare-fun b!3981342 () Bool)

(assert (=> b!3981342 (= e!2467290 e!2467275)))

(declare-fun res!1613590 () Bool)

(assert (=> b!3981342 (=> res!1613590 e!2467275)))

(declare-fun matchR!5602 (Regex!11625 List!42686) Bool)

(assert (=> b!3981342 (= res!1613590 (not (matchR!5602 (regex!6720 (rule!9726 token!484)) lt!1398608)))))

(assert (=> b!3981342 (isPrefix!3807 lt!1398608 lt!1398604)))

(declare-fun lt!1398644 () Unit!61230)

(assert (=> b!3981342 (= lt!1398644 (lemmaPrefixStaysPrefixWhenAddingToSuffix!640 lt!1398608 prefix!494 newSuffix!27))))

(declare-fun lt!1398591 () Unit!61230)

(assert (=> b!3981342 (= lt!1398591 (lemmaPrefixStaysPrefixWhenAddingToSuffix!640 lt!1398608 prefix!494 suffix!1299))))

(declare-fun tp!1213612 () Bool)

(declare-fun b!3981343 () Bool)

(declare-fun inv!21 (TokenValue!6950) Bool)

(assert (=> b!3981343 (= e!2467278 (and (inv!21 (value!212154 token!484)) e!2467281 tp!1213612))))

(declare-fun b!3981344 () Bool)

(assert (=> b!3981344 (= e!2467286 (and (= (size!31838 token!484) lt!1398594) (= (originalCharacters!7320 token!484) lt!1398608)))))

(assert (= (and start!374724 res!1613583) b!3981316))

(assert (= (and b!3981316 res!1613577) b!3981326))

(assert (= (and b!3981326 res!1613586) b!3981334))

(assert (= (and b!3981334 res!1613591) b!3981329))

(assert (= (and b!3981329 res!1613594) b!3981341))

(assert (= (and b!3981341 res!1613575) b!3981310))

(assert (= (and b!3981310 res!1613589) b!3981336))

(assert (= (and b!3981336 res!1613576) b!3981320))

(assert (= (and b!3981320 (not res!1613585)) b!3981337))

(assert (= (and b!3981337 (not res!1613579)) b!3981333))

(assert (= (and b!3981333 (not res!1613595)) b!3981318))

(assert (= (and b!3981318 (not res!1613578)) b!3981327))

(assert (= (and b!3981327 (not res!1613584)) b!3981342))

(assert (= (and b!3981342 (not res!1613590)) b!3981340))

(assert (= (and b!3981340 res!1613588) b!3981309))

(assert (= (and b!3981309 res!1613580) b!3981330))

(assert (= (and b!3981330 res!1613574) b!3981344))

(assert (= (and b!3981340 (not res!1613596)) b!3981335))

(assert (= (and b!3981335 (not res!1613582)) b!3981322))

(assert (= (and b!3981322 (not res!1613597)) b!3981321))

(assert (= (and b!3981321 (not res!1613587)) b!3981314))

(assert (= (and b!3981314 (not res!1613592)) b!3981311))

(assert (= (and b!3981311 (not res!1613593)) b!3981313))

(assert (= (and b!3981313 (not res!1613581)) b!3981331))

(assert (= (and b!3981331 (not res!1613598)) b!3981325))

(assert (= (and start!374724 ((_ is Cons!42562) prefix!494)) b!3981317))

(assert (= b!3981328 b!3981338))

(assert (= b!3981343 b!3981328))

(assert (= start!374724 b!3981343))

(assert (= (and start!374724 ((_ is Cons!42562) suffixResult!105)) b!3981312))

(assert (= (and start!374724 ((_ is Cons!42562) suffix!1299)) b!3981332))

(assert (= (and start!374724 ((_ is Cons!42562) newSuffix!27)) b!3981339))

(assert (= b!3981319 b!3981323))

(assert (= b!3981315 b!3981319))

(assert (= (and start!374724 ((_ is Cons!42564) rules!2999)) b!3981315))

(assert (= (and start!374724 ((_ is Cons!42562) newSuffixResult!27)) b!3981324))

(declare-fun m!4554947 () Bool)

(assert (=> b!3981326 m!4554947))

(declare-fun m!4554949 () Bool)

(assert (=> b!3981333 m!4554949))

(declare-fun m!4554951 () Bool)

(assert (=> b!3981333 m!4554951))

(declare-fun m!4554953 () Bool)

(assert (=> b!3981333 m!4554953))

(declare-fun m!4554955 () Bool)

(assert (=> b!3981333 m!4554955))

(declare-fun m!4554957 () Bool)

(assert (=> b!3981341 m!4554957))

(declare-fun m!4554959 () Bool)

(assert (=> b!3981341 m!4554959))

(declare-fun m!4554961 () Bool)

(assert (=> b!3981341 m!4554961))

(assert (=> b!3981341 m!4554961))

(declare-fun m!4554963 () Bool)

(assert (=> b!3981341 m!4554963))

(declare-fun m!4554965 () Bool)

(assert (=> b!3981342 m!4554965))

(declare-fun m!4554967 () Bool)

(assert (=> b!3981342 m!4554967))

(declare-fun m!4554969 () Bool)

(assert (=> b!3981342 m!4554969))

(declare-fun m!4554971 () Bool)

(assert (=> b!3981342 m!4554971))

(declare-fun m!4554973 () Bool)

(assert (=> b!3981343 m!4554973))

(declare-fun m!4554975 () Bool)

(assert (=> b!3981318 m!4554975))

(declare-fun m!4554977 () Bool)

(assert (=> b!3981318 m!4554977))

(declare-fun m!4554979 () Bool)

(assert (=> b!3981318 m!4554979))

(declare-fun m!4554981 () Bool)

(assert (=> b!3981318 m!4554981))

(declare-fun m!4554983 () Bool)

(assert (=> b!3981314 m!4554983))

(declare-fun m!4554985 () Bool)

(assert (=> b!3981314 m!4554985))

(declare-fun m!4554987 () Bool)

(assert (=> b!3981314 m!4554987))

(declare-fun m!4554989 () Bool)

(assert (=> b!3981335 m!4554989))

(declare-fun m!4554991 () Bool)

(assert (=> b!3981335 m!4554991))

(declare-fun m!4554993 () Bool)

(assert (=> b!3981335 m!4554993))

(declare-fun m!4554995 () Bool)

(assert (=> b!3981335 m!4554995))

(declare-fun m!4554997 () Bool)

(assert (=> b!3981340 m!4554997))

(declare-fun m!4554999 () Bool)

(assert (=> b!3981340 m!4554999))

(declare-fun m!4555001 () Bool)

(assert (=> b!3981340 m!4555001))

(declare-fun m!4555003 () Bool)

(assert (=> b!3981340 m!4555003))

(declare-fun m!4555005 () Bool)

(assert (=> b!3981337 m!4555005))

(declare-fun m!4555007 () Bool)

(assert (=> b!3981337 m!4555007))

(declare-fun m!4555009 () Bool)

(assert (=> b!3981337 m!4555009))

(declare-fun m!4555011 () Bool)

(assert (=> b!3981337 m!4555011))

(declare-fun m!4555013 () Bool)

(assert (=> b!3981337 m!4555013))

(declare-fun m!4555015 () Bool)

(assert (=> b!3981320 m!4555015))

(declare-fun m!4555017 () Bool)

(assert (=> b!3981320 m!4555017))

(declare-fun m!4555019 () Bool)

(assert (=> b!3981320 m!4555019))

(declare-fun m!4555021 () Bool)

(assert (=> b!3981320 m!4555021))

(declare-fun m!4555023 () Bool)

(assert (=> b!3981310 m!4555023))

(declare-fun m!4555025 () Bool)

(assert (=> b!3981310 m!4555025))

(declare-fun m!4555027 () Bool)

(assert (=> b!3981321 m!4555027))

(declare-fun m!4555029 () Bool)

(assert (=> b!3981321 m!4555029))

(declare-fun m!4555031 () Bool)

(assert (=> b!3981330 m!4555031))

(declare-fun m!4555033 () Bool)

(assert (=> b!3981329 m!4555033))

(declare-fun m!4555035 () Bool)

(assert (=> b!3981336 m!4555035))

(declare-fun m!4555037 () Bool)

(assert (=> b!3981336 m!4555037))

(declare-fun m!4555039 () Bool)

(assert (=> b!3981325 m!4555039))

(declare-fun m!4555041 () Bool)

(assert (=> b!3981325 m!4555041))

(declare-fun m!4555043 () Bool)

(assert (=> b!3981325 m!4555043))

(declare-fun m!4555045 () Bool)

(assert (=> b!3981327 m!4555045))

(declare-fun m!4555047 () Bool)

(assert (=> b!3981327 m!4555047))

(declare-fun m!4555049 () Bool)

(assert (=> b!3981327 m!4555049))

(assert (=> b!3981327 m!4555047))

(declare-fun m!4555051 () Bool)

(assert (=> b!3981327 m!4555051))

(declare-fun m!4555053 () Bool)

(assert (=> b!3981327 m!4555053))

(declare-fun m!4555055 () Bool)

(assert (=> b!3981327 m!4555055))

(declare-fun m!4555057 () Bool)

(assert (=> b!3981327 m!4555057))

(declare-fun m!4555059 () Bool)

(assert (=> b!3981331 m!4555059))

(declare-fun m!4555061 () Bool)

(assert (=> b!3981331 m!4555061))

(declare-fun m!4555063 () Bool)

(assert (=> b!3981311 m!4555063))

(declare-fun m!4555065 () Bool)

(assert (=> b!3981311 m!4555065))

(declare-fun m!4555067 () Bool)

(assert (=> b!3981311 m!4555067))

(declare-fun m!4555069 () Bool)

(assert (=> b!3981328 m!4555069))

(declare-fun m!4555071 () Bool)

(assert (=> b!3981328 m!4555071))

(declare-fun m!4555073 () Bool)

(assert (=> b!3981322 m!4555073))

(declare-fun m!4555075 () Bool)

(assert (=> b!3981322 m!4555075))

(declare-fun m!4555077 () Bool)

(assert (=> b!3981322 m!4555077))

(assert (=> b!3981322 m!4555075))

(declare-fun m!4555079 () Bool)

(assert (=> b!3981322 m!4555079))

(declare-fun m!4555081 () Bool)

(assert (=> b!3981322 m!4555081))

(declare-fun m!4555083 () Bool)

(assert (=> b!3981322 m!4555083))

(declare-fun m!4555085 () Bool)

(assert (=> b!3981322 m!4555085))

(declare-fun m!4555087 () Bool)

(assert (=> b!3981322 m!4555087))

(declare-fun m!4555089 () Bool)

(assert (=> b!3981322 m!4555089))

(declare-fun m!4555091 () Bool)

(assert (=> b!3981322 m!4555091))

(declare-fun m!4555093 () Bool)

(assert (=> b!3981322 m!4555093))

(declare-fun m!4555095 () Bool)

(assert (=> b!3981322 m!4555095))

(declare-fun m!4555097 () Bool)

(assert (=> b!3981322 m!4555097))

(declare-fun m!4555099 () Bool)

(assert (=> b!3981322 m!4555099))

(assert (=> b!3981322 m!4555093))

(declare-fun m!4555101 () Bool)

(assert (=> b!3981322 m!4555101))

(assert (=> b!3981322 m!4555081))

(declare-fun m!4555103 () Bool)

(assert (=> b!3981322 m!4555103))

(declare-fun m!4555105 () Bool)

(assert (=> b!3981322 m!4555105))

(declare-fun m!4555107 () Bool)

(assert (=> b!3981322 m!4555107))

(declare-fun m!4555109 () Bool)

(assert (=> start!374724 m!4555109))

(declare-fun m!4555111 () Bool)

(assert (=> b!3981316 m!4555111))

(declare-fun m!4555113 () Bool)

(assert (=> b!3981319 m!4555113))

(declare-fun m!4555115 () Bool)

(assert (=> b!3981319 m!4555115))

(declare-fun m!4555117 () Bool)

(assert (=> b!3981334 m!4555117))

(declare-fun m!4555119 () Bool)

(assert (=> b!3981334 m!4555119))

(check-sat (not b!3981334) (not b_next!111211) (not b!3981337) (not b!3981336) (not b!3981335) b_and!306017 (not b!3981324) (not b!3981326) (not b!3981333) (not b_next!111209) (not b!3981310) (not b!3981342) b_and!306019 (not b!3981322) (not b!3981318) (not b!3981343) (not b!3981328) b_and!306021 (not b!3981331) (not b!3981325) (not b!3981339) (not b!3981341) (not b!3981340) (not b!3981330) (not b!3981315) (not b!3981317) (not b!3981312) (not b!3981321) (not start!374724) b_and!306015 (not b!3981311) (not b!3981332) (not b!3981316) (not b!3981327) (not b!3981314) (not b!3981319) (not b!3981320) (not b_next!111213) (not b!3981329) (not b_next!111215) tp_is_empty!20221)
(check-sat (not b_next!111211) b_and!306021 b_and!306015 b_and!306017 (not b_next!111209) (not b_next!111213) (not b_next!111215) b_and!306019)
