; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378744 () Bool)

(assert start!378744)

(declare-fun b!4022662 () Bool)

(declare-fun b_free!111921 () Bool)

(declare-fun b_next!112625 () Bool)

(assert (=> b!4022662 (= b_free!111921 (not b_next!112625))))

(declare-fun tp!1222463 () Bool)

(declare-fun b_and!309031 () Bool)

(assert (=> b!4022662 (= tp!1222463 b_and!309031)))

(declare-fun b_free!111923 () Bool)

(declare-fun b_next!112627 () Bool)

(assert (=> b!4022662 (= b_free!111923 (not b_next!112627))))

(declare-fun tp!1222464 () Bool)

(declare-fun b_and!309033 () Bool)

(assert (=> b!4022662 (= tp!1222464 b_and!309033)))

(declare-fun b!4022659 () Bool)

(declare-fun b_free!111925 () Bool)

(declare-fun b_next!112629 () Bool)

(assert (=> b!4022659 (= b_free!111925 (not b_next!112629))))

(declare-fun tp!1222452 () Bool)

(declare-fun b_and!309035 () Bool)

(assert (=> b!4022659 (= tp!1222452 b_and!309035)))

(declare-fun b_free!111927 () Bool)

(declare-fun b_next!112631 () Bool)

(assert (=> b!4022659 (= b_free!111927 (not b_next!112631))))

(declare-fun tp!1222462 () Bool)

(declare-fun b_and!309037 () Bool)

(assert (=> b!4022659 (= tp!1222462 b_and!309037)))

(declare-fun b!4022635 () Bool)

(declare-fun e!2495421 () Bool)

(declare-fun e!2495422 () Bool)

(assert (=> b!4022635 (= e!2495421 e!2495422)))

(declare-fun res!1636883 () Bool)

(assert (=> b!4022635 (=> (not res!1636883) (not e!2495422))))

(declare-fun lt!1429172 () Int)

(declare-fun lt!1429181 () Int)

(assert (=> b!4022635 (= res!1636883 (>= lt!1429172 lt!1429181))))

(declare-datatypes ((C!23728 0))(
  ( (C!23729 (val!13958 Int)) )
))
(declare-datatypes ((List!43174 0))(
  ( (Nil!43050) (Cons!43050 (h!48470 C!23728) (t!333765 List!43174)) )
))
(declare-fun lt!1429169 () List!43174)

(declare-fun size!32187 (List!43174) Int)

(assert (=> b!4022635 (= lt!1429181 (size!32187 lt!1429169))))

(declare-fun prefix!494 () List!43174)

(assert (=> b!4022635 (= lt!1429172 (size!32187 prefix!494))))

(declare-datatypes ((IArray!26159 0))(
  ( (IArray!26160 (innerList!13137 List!43174)) )
))
(declare-datatypes ((Conc!13077 0))(
  ( (Node!13077 (left!32448 Conc!13077) (right!32778 Conc!13077) (csize!26384 Int) (cheight!13288 Int)) (Leaf!20217 (xs!16383 IArray!26159) (csize!26385 Int)) (Empty!13077) )
))
(declare-datatypes ((BalanceConc!25748 0))(
  ( (BalanceConc!25749 (c!695192 Conc!13077)) )
))
(declare-datatypes ((List!43175 0))(
  ( (Nil!43051) (Cons!43051 (h!48471 (_ BitVec 16)) (t!333766 List!43175)) )
))
(declare-datatypes ((TokenValue!7096 0))(
  ( (FloatLiteralValue!14192 (text!50117 List!43175)) (TokenValueExt!7095 (__x!26409 Int)) (Broken!35480 (value!216289 List!43175)) (Object!7219) (End!7096) (Def!7096) (Underscore!7096) (Match!7096) (Else!7096) (Error!7096) (Case!7096) (If!7096) (Extends!7096) (Abstract!7096) (Class!7096) (Val!7096) (DelimiterValue!14192 (del!7156 List!43175)) (KeywordValue!7102 (value!216290 List!43175)) (CommentValue!14192 (value!216291 List!43175)) (WhitespaceValue!14192 (value!216292 List!43175)) (IndentationValue!7096 (value!216293 List!43175)) (String!49197) (Int32!7096) (Broken!35481 (value!216294 List!43175)) (Boolean!7097) (Unit!62221) (OperatorValue!7099 (op!7156 List!43175)) (IdentifierValue!14192 (value!216295 List!43175)) (IdentifierValue!14193 (value!216296 List!43175)) (WhitespaceValue!14193 (value!216297 List!43175)) (True!14192) (False!14192) (Broken!35482 (value!216298 List!43175)) (Broken!35483 (value!216299 List!43175)) (True!14193) (RightBrace!7096) (RightBracket!7096) (Colon!7096) (Null!7096) (Comma!7096) (LeftBracket!7096) (False!14193) (LeftBrace!7096) (ImaginaryLiteralValue!7096 (text!50118 List!43175)) (StringLiteralValue!21288 (value!216300 List!43175)) (EOFValue!7096 (value!216301 List!43175)) (IdentValue!7096 (value!216302 List!43175)) (DelimiterValue!14193 (value!216303 List!43175)) (DedentValue!7096 (value!216304 List!43175)) (NewLineValue!7096 (value!216305 List!43175)) (IntegerValue!21288 (value!216306 (_ BitVec 32)) (text!50119 List!43175)) (IntegerValue!21289 (value!216307 Int) (text!50120 List!43175)) (Times!7096) (Or!7096) (Equal!7096) (Minus!7096) (Broken!35484 (value!216308 List!43175)) (And!7096) (Div!7096) (LessEqual!7096) (Mod!7096) (Concat!18867) (Not!7096) (Plus!7096) (SpaceValue!7096 (value!216309 List!43175)) (IntegerValue!21290 (value!216310 Int) (text!50121 List!43175)) (StringLiteralValue!21289 (text!50122 List!43175)) (FloatLiteralValue!14193 (text!50123 List!43175)) (BytesLiteralValue!7096 (value!216311 List!43175)) (CommentValue!14193 (value!216312 List!43175)) (StringLiteralValue!21290 (value!216313 List!43175)) (ErrorTokenValue!7096 (msg!7157 List!43175)) )
))
(declare-datatypes ((Regex!11771 0))(
  ( (ElementMatch!11771 (c!695193 C!23728)) (Concat!18868 (regOne!24054 Regex!11771) (regTwo!24054 Regex!11771)) (EmptyExpr!11771) (Star!11771 (reg!12100 Regex!11771)) (EmptyLang!11771) (Union!11771 (regOne!24055 Regex!11771) (regTwo!24055 Regex!11771)) )
))
(declare-datatypes ((String!49198 0))(
  ( (String!49199 (value!216314 String)) )
))
(declare-datatypes ((TokenValueInjection!13620 0))(
  ( (TokenValueInjection!13621 (toValue!9378 Int) (toChars!9237 Int)) )
))
(declare-datatypes ((Rule!13532 0))(
  ( (Rule!13533 (regex!6866 Regex!11771) (tag!7726 String!49198) (isSeparator!6866 Bool) (transformation!6866 TokenValueInjection!13620)) )
))
(declare-datatypes ((Token!12870 0))(
  ( (Token!12871 (value!216315 TokenValue!7096) (rule!9920 Rule!13532) (size!32188 Int) (originalCharacters!7466 List!43174)) )
))
(declare-fun token!484 () Token!12870)

(declare-fun list!16006 (BalanceConc!25748) List!43174)

(declare-fun charsOf!4682 (Token!12870) BalanceConc!25748)

(assert (=> b!4022635 (= lt!1429169 (list!16006 (charsOf!4682 token!484)))))

(declare-fun b!4022636 () Bool)

(declare-fun e!2495416 () Bool)

(declare-fun e!2495426 () Bool)

(assert (=> b!4022636 (= e!2495416 e!2495426)))

(declare-fun res!1636898 () Bool)

(assert (=> b!4022636 (=> res!1636898 e!2495426)))

(declare-fun matchR!5732 (Regex!11771 List!43174) Bool)

(assert (=> b!4022636 (= res!1636898 (not (matchR!5732 (regex!6866 (rule!9920 token!484)) lt!1429169)))))

(declare-fun lt!1429186 () List!43174)

(declare-fun isPrefix!3953 (List!43174 List!43174) Bool)

(assert (=> b!4022636 (isPrefix!3953 lt!1429169 lt!1429186)))

(declare-fun newSuffix!27 () List!43174)

(declare-datatypes ((Unit!62222 0))(
  ( (Unit!62223) )
))
(declare-fun lt!1429170 () Unit!62222)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!766 (List!43174 List!43174 List!43174) Unit!62222)

(assert (=> b!4022636 (= lt!1429170 (lemmaPrefixStaysPrefixWhenAddingToSuffix!766 lt!1429169 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43174)

(declare-fun lt!1429165 () Unit!62222)

(assert (=> b!4022636 (= lt!1429165 (lemmaPrefixStaysPrefixWhenAddingToSuffix!766 lt!1429169 prefix!494 suffix!1299))))

(declare-fun b!4022637 () Bool)

(declare-fun e!2495424 () Bool)

(declare-fun e!2495408 () Bool)

(assert (=> b!4022637 (= e!2495424 e!2495408)))

(declare-fun res!1636897 () Bool)

(assert (=> b!4022637 (=> res!1636897 e!2495408)))

(declare-fun lt!1429179 () List!43174)

(declare-fun lt!1429174 () List!43174)

(declare-fun lt!1429192 () List!43174)

(assert (=> b!4022637 (= res!1636897 (or (not (= lt!1429174 lt!1429179)) (not (= lt!1429174 lt!1429192))))))

(assert (=> b!4022637 (= lt!1429179 lt!1429192)))

(declare-fun lt!1429195 () List!43174)

(declare-fun ++!11268 (List!43174 List!43174) List!43174)

(assert (=> b!4022637 (= lt!1429192 (++!11268 lt!1429169 lt!1429195))))

(declare-fun lt!1429164 () List!43174)

(assert (=> b!4022637 (= lt!1429179 (++!11268 lt!1429164 suffix!1299))))

(declare-fun lt!1429167 () List!43174)

(assert (=> b!4022637 (= lt!1429195 (++!11268 lt!1429167 suffix!1299))))

(declare-fun lt!1429194 () Unit!62222)

(declare-fun lemmaConcatAssociativity!2578 (List!43174 List!43174 List!43174) Unit!62222)

(assert (=> b!4022637 (= lt!1429194 (lemmaConcatAssociativity!2578 lt!1429169 lt!1429167 suffix!1299))))

(declare-fun e!2495423 () Bool)

(declare-fun b!4022638 () Bool)

(assert (=> b!4022638 (= e!2495423 (and (= (size!32188 token!484) lt!1429181) (= (originalCharacters!7466 token!484) lt!1429169)))))

(declare-fun b!4022639 () Bool)

(declare-fun e!2495413 () Bool)

(declare-fun e!2495407 () Bool)

(assert (=> b!4022639 (= e!2495413 e!2495407)))

(declare-fun res!1636901 () Bool)

(assert (=> b!4022639 (=> (not res!1636901) (not e!2495407))))

(declare-datatypes ((LexerInterface!6455 0))(
  ( (LexerInterfaceExt!6452 (__x!26410 Int)) (Lexer!6453) )
))
(declare-fun thiss!21717 () LexerInterface!6455)

(declare-datatypes ((tuple2!42174 0))(
  ( (tuple2!42175 (_1!24221 Token!12870) (_2!24221 List!43174)) )
))
(declare-datatypes ((Option!9280 0))(
  ( (None!9279) (Some!9279 (v!39655 tuple2!42174)) )
))
(declare-fun lt!1429185 () Option!9280)

(declare-datatypes ((List!43176 0))(
  ( (Nil!43052) (Cons!43052 (h!48472 Rule!13532) (t!333767 List!43176)) )
))
(declare-fun rules!2999 () List!43176)

(declare-fun maxPrefix!3753 (LexerInterface!6455 List!43176 List!43174) Option!9280)

(assert (=> b!4022639 (= res!1636901 (= (maxPrefix!3753 thiss!21717 rules!2999 lt!1429174) lt!1429185))))

(declare-fun lt!1429180 () tuple2!42174)

(assert (=> b!4022639 (= lt!1429185 (Some!9279 lt!1429180))))

(declare-fun suffixResult!105 () List!43174)

(assert (=> b!4022639 (= lt!1429180 (tuple2!42175 token!484 suffixResult!105))))

(assert (=> b!4022639 (= lt!1429174 (++!11268 prefix!494 suffix!1299))))

(declare-fun lt!1429187 () Option!9280)

(declare-fun b!4022640 () Bool)

(declare-fun e!2495415 () Bool)

(declare-fun newSuffixResult!27 () List!43174)

(assert (=> b!4022640 (= e!2495415 (= lt!1429187 (Some!9279 (tuple2!42175 token!484 newSuffixResult!27))))))

(assert (=> b!4022640 false))

(declare-fun lt!1429163 () Unit!62222)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!578 (LexerInterface!6455 Rule!13532 List!43174 List!43174) Unit!62222)

(assert (=> b!4022640 (= lt!1429163 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!578 thiss!21717 (rule!9920 token!484) lt!1429169 lt!1429186))))

(declare-fun isEmpty!25703 (Option!9280) Bool)

(declare-fun maxPrefixOneRule!2773 (LexerInterface!6455 Rule!13532 List!43174) Option!9280)

(assert (=> b!4022640 (isEmpty!25703 (maxPrefixOneRule!2773 thiss!21717 (rule!9920 token!484) lt!1429186))))

(declare-fun lt!1429175 () Unit!62222)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!600 (LexerInterface!6455 Rule!13532 List!43176 List!43174) Unit!62222)

(assert (=> b!4022640 (= lt!1429175 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!600 thiss!21717 (rule!9920 token!484) rules!2999 lt!1429186))))

(declare-fun b!4022641 () Bool)

(declare-fun e!2495429 () Bool)

(assert (=> b!4022641 (= e!2495426 e!2495429)))

(declare-fun res!1636894 () Bool)

(assert (=> b!4022641 (=> res!1636894 e!2495429)))

(declare-fun lt!1429193 () List!43174)

(assert (=> b!4022641 (= res!1636894 (not (= lt!1429193 lt!1429174)))))

(declare-fun lt!1429178 () List!43174)

(assert (=> b!4022641 (= lt!1429193 (++!11268 lt!1429169 lt!1429178))))

(declare-fun getSuffix!2378 (List!43174 List!43174) List!43174)

(assert (=> b!4022641 (= lt!1429178 (getSuffix!2378 lt!1429174 lt!1429169))))

(assert (=> b!4022641 e!2495423))

(declare-fun res!1636893 () Bool)

(assert (=> b!4022641 (=> (not res!1636893) (not e!2495423))))

(assert (=> b!4022641 (= res!1636893 (isPrefix!3953 lt!1429174 lt!1429174))))

(declare-fun lt!1429189 () Unit!62222)

(declare-fun lemmaIsPrefixRefl!2529 (List!43174 List!43174) Unit!62222)

(assert (=> b!4022641 (= lt!1429189 (lemmaIsPrefixRefl!2529 lt!1429174 lt!1429174))))

(declare-fun b!4022642 () Bool)

(declare-fun e!2495409 () Bool)

(declare-fun tp_is_empty!20513 () Bool)

(declare-fun tp!1222457 () Bool)

(assert (=> b!4022642 (= e!2495409 (and tp_is_empty!20513 tp!1222457))))

(declare-fun b!4022643 () Bool)

(assert (=> b!4022643 (= e!2495422 e!2495413)))

(declare-fun res!1636885 () Bool)

(assert (=> b!4022643 (=> (not res!1636885) (not e!2495413))))

(declare-fun lt!1429162 () List!43174)

(assert (=> b!4022643 (= res!1636885 (= lt!1429162 lt!1429186))))

(assert (=> b!4022643 (= lt!1429186 (++!11268 prefix!494 newSuffix!27))))

(assert (=> b!4022643 (= lt!1429162 (++!11268 lt!1429169 newSuffixResult!27))))

(declare-fun b!4022644 () Bool)

(declare-fun res!1636900 () Bool)

(assert (=> b!4022644 (=> (not res!1636900) (not e!2495421))))

(assert (=> b!4022644 (= res!1636900 (isPrefix!3953 newSuffix!27 suffix!1299))))

(declare-fun b!4022645 () Bool)

(declare-fun e!2495412 () Bool)

(declare-fun e!2495405 () Bool)

(declare-fun tp!1222459 () Bool)

(declare-fun inv!57500 (String!49198) Bool)

(declare-fun inv!57503 (TokenValueInjection!13620) Bool)

(assert (=> b!4022645 (= e!2495405 (and tp!1222459 (inv!57500 (tag!7726 (h!48472 rules!2999))) (inv!57503 (transformation!6866 (h!48472 rules!2999))) e!2495412))))

(declare-fun b!4022646 () Bool)

(declare-fun e!2495420 () Bool)

(declare-fun tp!1222453 () Bool)

(assert (=> b!4022646 (= e!2495420 (and tp_is_empty!20513 tp!1222453))))

(declare-fun b!4022647 () Bool)

(declare-fun e!2495419 () Bool)

(declare-fun e!2495404 () Bool)

(assert (=> b!4022647 (= e!2495419 e!2495404)))

(declare-fun res!1636886 () Bool)

(assert (=> b!4022647 (=> res!1636886 e!2495404)))

(assert (=> b!4022647 (= res!1636886 (not (isPrefix!3953 lt!1429169 lt!1429174)))))

(assert (=> b!4022647 (isPrefix!3953 prefix!494 lt!1429174)))

(declare-fun lt!1429183 () Unit!62222)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2794 (List!43174 List!43174) Unit!62222)

(assert (=> b!4022647 (= lt!1429183 (lemmaConcatTwoListThenFirstIsPrefix!2794 prefix!494 suffix!1299))))

(declare-fun lt!1429177 () List!43174)

(assert (=> b!4022647 (isPrefix!3953 lt!1429169 lt!1429177)))

(declare-fun lt!1429182 () Unit!62222)

(assert (=> b!4022647 (= lt!1429182 (lemmaConcatTwoListThenFirstIsPrefix!2794 lt!1429169 suffixResult!105))))

(declare-fun e!2495430 () Bool)

(declare-fun tp!1222458 () Bool)

(declare-fun b!4022648 () Bool)

(declare-fun e!2495410 () Bool)

(assert (=> b!4022648 (= e!2495410 (and tp!1222458 (inv!57500 (tag!7726 (rule!9920 token!484))) (inv!57503 (transformation!6866 (rule!9920 token!484))) e!2495430))))

(declare-fun res!1636890 () Bool)

(assert (=> start!378744 (=> (not res!1636890) (not e!2495421))))

(get-info :version)

(assert (=> start!378744 (= res!1636890 ((_ is Lexer!6453) thiss!21717))))

(assert (=> start!378744 e!2495421))

(assert (=> start!378744 e!2495409))

(declare-fun e!2495411 () Bool)

(declare-fun inv!57504 (Token!12870) Bool)

(assert (=> start!378744 (and (inv!57504 token!484) e!2495411)))

(declare-fun e!2495418 () Bool)

(assert (=> start!378744 e!2495418))

(assert (=> start!378744 e!2495420))

(declare-fun e!2495427 () Bool)

(assert (=> start!378744 e!2495427))

(assert (=> start!378744 true))

(declare-fun e!2495414 () Bool)

(assert (=> start!378744 e!2495414))

(declare-fun e!2495425 () Bool)

(assert (=> start!378744 e!2495425))

(declare-fun b!4022649 () Bool)

(assert (=> b!4022649 (= e!2495404 e!2495424)))

(declare-fun res!1636889 () Bool)

(assert (=> b!4022649 (=> res!1636889 e!2495424)))

(assert (=> b!4022649 (= res!1636889 (not (= lt!1429164 prefix!494)))))

(assert (=> b!4022649 (= lt!1429164 (++!11268 lt!1429169 lt!1429167))))

(assert (=> b!4022649 (= lt!1429167 (getSuffix!2378 prefix!494 lt!1429169))))

(assert (=> b!4022649 (isPrefix!3953 lt!1429169 prefix!494)))

(declare-fun lt!1429176 () Unit!62222)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!525 (List!43174 List!43174 List!43174) Unit!62222)

(assert (=> b!4022649 (= lt!1429176 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!525 prefix!494 lt!1429169 lt!1429174))))

(declare-fun b!4022650 () Bool)

(declare-fun tp!1222456 () Bool)

(assert (=> b!4022650 (= e!2495425 (and tp_is_empty!20513 tp!1222456))))

(declare-fun b!4022651 () Bool)

(declare-fun res!1636892 () Bool)

(assert (=> b!4022651 (=> (not res!1636892) (not e!2495423))))

(assert (=> b!4022651 (= res!1636892 (= (size!32188 token!484) (size!32187 (originalCharacters!7466 token!484))))))

(declare-fun tp!1222461 () Bool)

(declare-fun b!4022652 () Bool)

(declare-fun inv!21 (TokenValue!7096) Bool)

(assert (=> b!4022652 (= e!2495411 (and (inv!21 (value!216315 token!484)) e!2495410 tp!1222461))))

(declare-fun b!4022653 () Bool)

(declare-fun res!1636884 () Bool)

(assert (=> b!4022653 (=> (not res!1636884) (not e!2495421))))

(declare-fun rulesInvariant!5798 (LexerInterface!6455 List!43176) Bool)

(assert (=> b!4022653 (= res!1636884 (rulesInvariant!5798 thiss!21717 rules!2999))))

(declare-fun b!4022654 () Bool)

(assert (=> b!4022654 (= e!2495408 e!2495416)))

(declare-fun res!1636887 () Bool)

(assert (=> b!4022654 (=> res!1636887 e!2495416)))

(declare-fun lt!1429190 () Option!9280)

(assert (=> b!4022654 (= res!1636887 (not (= lt!1429190 lt!1429185)))))

(declare-fun lt!1429184 () Token!12870)

(assert (=> b!4022654 (= lt!1429190 (Some!9279 (tuple2!42175 lt!1429184 suffixResult!105)))))

(assert (=> b!4022654 (= lt!1429190 (maxPrefixOneRule!2773 thiss!21717 (rule!9920 token!484) lt!1429174))))

(declare-fun lt!1429197 () TokenValue!7096)

(assert (=> b!4022654 (= lt!1429184 (Token!12871 lt!1429197 (rule!9920 token!484) lt!1429181 lt!1429169))))

(declare-fun apply!10063 (TokenValueInjection!13620 BalanceConc!25748) TokenValue!7096)

(declare-fun seqFromList!5091 (List!43174) BalanceConc!25748)

(assert (=> b!4022654 (= lt!1429197 (apply!10063 (transformation!6866 (rule!9920 token!484)) (seqFromList!5091 lt!1429169)))))

(declare-fun lt!1429173 () Unit!62222)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1591 (LexerInterface!6455 List!43176 List!43174 List!43174 List!43174 Rule!13532) Unit!62222)

(assert (=> b!4022654 (= lt!1429173 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1591 thiss!21717 rules!2999 lt!1429169 lt!1429174 suffixResult!105 (rule!9920 token!484)))))

(assert (=> b!4022654 (= lt!1429195 suffixResult!105)))

(declare-fun lt!1429168 () Unit!62222)

(declare-fun lemmaSamePrefixThenSameSuffix!2124 (List!43174 List!43174 List!43174 List!43174 List!43174) Unit!62222)

(assert (=> b!4022654 (= lt!1429168 (lemmaSamePrefixThenSameSuffix!2124 lt!1429169 lt!1429195 lt!1429169 suffixResult!105 lt!1429174))))

(assert (=> b!4022654 (isPrefix!3953 lt!1429169 lt!1429192)))

(declare-fun lt!1429191 () Unit!62222)

(assert (=> b!4022654 (= lt!1429191 (lemmaConcatTwoListThenFirstIsPrefix!2794 lt!1429169 lt!1429195))))

(declare-fun b!4022655 () Bool)

(declare-fun res!1636891 () Bool)

(assert (=> b!4022655 (=> (not res!1636891) (not e!2495421))))

(declare-fun isEmpty!25704 (List!43176) Bool)

(assert (=> b!4022655 (= res!1636891 (not (isEmpty!25704 rules!2999)))))

(declare-fun b!4022656 () Bool)

(declare-fun res!1636896 () Bool)

(assert (=> b!4022656 (=> (not res!1636896) (not e!2495421))))

(assert (=> b!4022656 (= res!1636896 (>= (size!32187 suffix!1299) (size!32187 newSuffix!27)))))

(declare-fun b!4022657 () Bool)

(assert (=> b!4022657 (= e!2495407 (not e!2495419))))

(declare-fun res!1636888 () Bool)

(assert (=> b!4022657 (=> res!1636888 e!2495419)))

(assert (=> b!4022657 (= res!1636888 (not (= lt!1429177 lt!1429174)))))

(assert (=> b!4022657 (= lt!1429177 (++!11268 lt!1429169 suffixResult!105))))

(declare-fun lt!1429196 () Unit!62222)

(declare-fun lemmaInv!1081 (TokenValueInjection!13620) Unit!62222)

(assert (=> b!4022657 (= lt!1429196 (lemmaInv!1081 (transformation!6866 (rule!9920 token!484))))))

(declare-fun ruleValid!2798 (LexerInterface!6455 Rule!13532) Bool)

(assert (=> b!4022657 (ruleValid!2798 thiss!21717 (rule!9920 token!484))))

(declare-fun lt!1429171 () Unit!62222)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1872 (LexerInterface!6455 Rule!13532 List!43176) Unit!62222)

(assert (=> b!4022657 (= lt!1429171 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1872 thiss!21717 (rule!9920 token!484) rules!2999))))

(declare-fun b!4022658 () Bool)

(declare-fun res!1636899 () Bool)

(assert (=> b!4022658 (=> (not res!1636899) (not e!2495423))))

(assert (=> b!4022658 (= res!1636899 (= (value!216315 token!484) lt!1429197))))

(assert (=> b!4022659 (= e!2495412 (and tp!1222452 tp!1222462))))

(declare-fun b!4022660 () Bool)

(declare-fun tp!1222460 () Bool)

(assert (=> b!4022660 (= e!2495418 (and tp_is_empty!20513 tp!1222460))))

(declare-fun b!4022661 () Bool)

(assert (=> b!4022661 (= e!2495429 e!2495415)))

(declare-fun res!1636895 () Bool)

(assert (=> b!4022661 (=> res!1636895 e!2495415)))

(assert (=> b!4022661 (= res!1636895 ((_ is Some!9279) lt!1429187))))

(assert (=> b!4022661 (= lt!1429187 (maxPrefix!3753 thiss!21717 rules!2999 lt!1429186))))

(assert (=> b!4022661 (and (= suffixResult!105 lt!1429178) (= lt!1429180 (tuple2!42175 lt!1429184 lt!1429178)))))

(declare-fun lt!1429188 () Unit!62222)

(assert (=> b!4022661 (= lt!1429188 (lemmaSamePrefixThenSameSuffix!2124 lt!1429169 suffixResult!105 lt!1429169 lt!1429178 lt!1429174))))

(assert (=> b!4022661 (isPrefix!3953 lt!1429169 lt!1429193)))

(declare-fun lt!1429166 () Unit!62222)

(assert (=> b!4022661 (= lt!1429166 (lemmaConcatTwoListThenFirstIsPrefix!2794 lt!1429169 lt!1429178))))

(assert (=> b!4022662 (= e!2495430 (and tp!1222463 tp!1222464))))

(declare-fun b!4022663 () Bool)

(declare-fun tp!1222455 () Bool)

(assert (=> b!4022663 (= e!2495414 (and e!2495405 tp!1222455))))

(declare-fun b!4022664 () Bool)

(declare-fun tp!1222454 () Bool)

(assert (=> b!4022664 (= e!2495427 (and tp_is_empty!20513 tp!1222454))))

(assert (= (and start!378744 res!1636890) b!4022655))

(assert (= (and b!4022655 res!1636891) b!4022653))

(assert (= (and b!4022653 res!1636884) b!4022656))

(assert (= (and b!4022656 res!1636896) b!4022644))

(assert (= (and b!4022644 res!1636900) b!4022635))

(assert (= (and b!4022635 res!1636883) b!4022643))

(assert (= (and b!4022643 res!1636885) b!4022639))

(assert (= (and b!4022639 res!1636901) b!4022657))

(assert (= (and b!4022657 (not res!1636888)) b!4022647))

(assert (= (and b!4022647 (not res!1636886)) b!4022649))

(assert (= (and b!4022649 (not res!1636889)) b!4022637))

(assert (= (and b!4022637 (not res!1636897)) b!4022654))

(assert (= (and b!4022654 (not res!1636887)) b!4022636))

(assert (= (and b!4022636 (not res!1636898)) b!4022641))

(assert (= (and b!4022641 res!1636893) b!4022658))

(assert (= (and b!4022658 res!1636899) b!4022651))

(assert (= (and b!4022651 res!1636892) b!4022638))

(assert (= (and b!4022641 (not res!1636894)) b!4022661))

(assert (= (and b!4022661 (not res!1636895)) b!4022640))

(assert (= (and start!378744 ((_ is Cons!43050) prefix!494)) b!4022642))

(assert (= b!4022648 b!4022662))

(assert (= b!4022652 b!4022648))

(assert (= start!378744 b!4022652))

(assert (= (and start!378744 ((_ is Cons!43050) suffixResult!105)) b!4022660))

(assert (= (and start!378744 ((_ is Cons!43050) suffix!1299)) b!4022646))

(assert (= (and start!378744 ((_ is Cons!43050) newSuffix!27)) b!4022664))

(assert (= b!4022645 b!4022659))

(assert (= b!4022663 b!4022645))

(assert (= (and start!378744 ((_ is Cons!43052) rules!2999)) b!4022663))

(assert (= (and start!378744 ((_ is Cons!43050) newSuffixResult!27)) b!4022650))

(declare-fun m!4613741 () Bool)

(assert (=> b!4022656 m!4613741))

(declare-fun m!4613743 () Bool)

(assert (=> b!4022656 m!4613743))

(declare-fun m!4613745 () Bool)

(assert (=> b!4022637 m!4613745))

(declare-fun m!4613747 () Bool)

(assert (=> b!4022637 m!4613747))

(declare-fun m!4613749 () Bool)

(assert (=> b!4022637 m!4613749))

(declare-fun m!4613751 () Bool)

(assert (=> b!4022637 m!4613751))

(declare-fun m!4613753 () Bool)

(assert (=> b!4022653 m!4613753))

(declare-fun m!4613755 () Bool)

(assert (=> b!4022643 m!4613755))

(declare-fun m!4613757 () Bool)

(assert (=> b!4022643 m!4613757))

(declare-fun m!4613759 () Bool)

(assert (=> b!4022654 m!4613759))

(declare-fun m!4613761 () Bool)

(assert (=> b!4022654 m!4613761))

(declare-fun m!4613763 () Bool)

(assert (=> b!4022654 m!4613763))

(declare-fun m!4613765 () Bool)

(assert (=> b!4022654 m!4613765))

(declare-fun m!4613767 () Bool)

(assert (=> b!4022654 m!4613767))

(declare-fun m!4613769 () Bool)

(assert (=> b!4022654 m!4613769))

(declare-fun m!4613771 () Bool)

(assert (=> b!4022654 m!4613771))

(assert (=> b!4022654 m!4613767))

(declare-fun m!4613773 () Bool)

(assert (=> b!4022636 m!4613773))

(declare-fun m!4613775 () Bool)

(assert (=> b!4022636 m!4613775))

(declare-fun m!4613777 () Bool)

(assert (=> b!4022636 m!4613777))

(declare-fun m!4613779 () Bool)

(assert (=> b!4022636 m!4613779))

(declare-fun m!4613781 () Bool)

(assert (=> b!4022651 m!4613781))

(declare-fun m!4613783 () Bool)

(assert (=> b!4022640 m!4613783))

(declare-fun m!4613785 () Bool)

(assert (=> b!4022640 m!4613785))

(assert (=> b!4022640 m!4613785))

(declare-fun m!4613787 () Bool)

(assert (=> b!4022640 m!4613787))

(declare-fun m!4613789 () Bool)

(assert (=> b!4022640 m!4613789))

(declare-fun m!4613791 () Bool)

(assert (=> b!4022635 m!4613791))

(declare-fun m!4613793 () Bool)

(assert (=> b!4022635 m!4613793))

(declare-fun m!4613795 () Bool)

(assert (=> b!4022635 m!4613795))

(assert (=> b!4022635 m!4613795))

(declare-fun m!4613797 () Bool)

(assert (=> b!4022635 m!4613797))

(declare-fun m!4613799 () Bool)

(assert (=> b!4022657 m!4613799))

(declare-fun m!4613801 () Bool)

(assert (=> b!4022657 m!4613801))

(declare-fun m!4613803 () Bool)

(assert (=> b!4022657 m!4613803))

(declare-fun m!4613805 () Bool)

(assert (=> b!4022657 m!4613805))

(declare-fun m!4613807 () Bool)

(assert (=> b!4022649 m!4613807))

(declare-fun m!4613809 () Bool)

(assert (=> b!4022649 m!4613809))

(declare-fun m!4613811 () Bool)

(assert (=> b!4022649 m!4613811))

(declare-fun m!4613813 () Bool)

(assert (=> b!4022649 m!4613813))

(declare-fun m!4613815 () Bool)

(assert (=> b!4022647 m!4613815))

(declare-fun m!4613817 () Bool)

(assert (=> b!4022647 m!4613817))

(declare-fun m!4613819 () Bool)

(assert (=> b!4022647 m!4613819))

(declare-fun m!4613821 () Bool)

(assert (=> b!4022647 m!4613821))

(declare-fun m!4613823 () Bool)

(assert (=> b!4022647 m!4613823))

(declare-fun m!4613825 () Bool)

(assert (=> b!4022641 m!4613825))

(declare-fun m!4613827 () Bool)

(assert (=> b!4022641 m!4613827))

(declare-fun m!4613829 () Bool)

(assert (=> b!4022641 m!4613829))

(declare-fun m!4613831 () Bool)

(assert (=> b!4022641 m!4613831))

(declare-fun m!4613833 () Bool)

(assert (=> b!4022648 m!4613833))

(declare-fun m!4613835 () Bool)

(assert (=> b!4022648 m!4613835))

(declare-fun m!4613837 () Bool)

(assert (=> b!4022655 m!4613837))

(declare-fun m!4613839 () Bool)

(assert (=> b!4022661 m!4613839))

(declare-fun m!4613841 () Bool)

(assert (=> b!4022661 m!4613841))

(declare-fun m!4613843 () Bool)

(assert (=> b!4022661 m!4613843))

(declare-fun m!4613845 () Bool)

(assert (=> b!4022661 m!4613845))

(declare-fun m!4613847 () Bool)

(assert (=> b!4022652 m!4613847))

(declare-fun m!4613849 () Bool)

(assert (=> b!4022644 m!4613849))

(declare-fun m!4613851 () Bool)

(assert (=> b!4022645 m!4613851))

(declare-fun m!4613853 () Bool)

(assert (=> b!4022645 m!4613853))

(declare-fun m!4613855 () Bool)

(assert (=> b!4022639 m!4613855))

(declare-fun m!4613857 () Bool)

(assert (=> b!4022639 m!4613857))

(declare-fun m!4613859 () Bool)

(assert (=> start!378744 m!4613859))

(check-sat (not b!4022651) (not b!4022655) b_and!309035 (not b_next!112629) b_and!309037 (not b!4022648) (not b_next!112631) (not b!4022641) tp_is_empty!20513 (not b!4022654) (not b!4022663) (not b!4022639) (not b_next!112625) (not b!4022661) (not b!4022646) b_and!309033 (not b!4022644) (not b!4022640) (not b!4022643) (not b!4022652) (not b!4022660) (not start!378744) (not b!4022642) (not b!4022635) (not b!4022647) (not b!4022657) (not b!4022664) b_and!309031 (not b!4022653) (not b!4022649) (not b!4022637) (not b!4022650) (not b!4022656) (not b!4022636) (not b_next!112627) (not b!4022645))
(check-sat b_and!309035 b_and!309033 (not b_next!112629) b_and!309037 (not b_next!112631) b_and!309031 (not b_next!112627) (not b_next!112625))
