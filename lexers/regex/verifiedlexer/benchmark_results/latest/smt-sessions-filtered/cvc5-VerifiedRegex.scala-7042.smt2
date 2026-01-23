; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!373642 () Bool)

(assert start!373642)

(declare-fun b!3971201 () Bool)

(declare-fun b_free!110041 () Bool)

(declare-fun b_next!110745 () Bool)

(assert (=> b!3971201 (= b_free!110041 (not b_next!110745))))

(declare-fun tp!1210929 () Bool)

(declare-fun b_and!305287 () Bool)

(assert (=> b!3971201 (= tp!1210929 b_and!305287)))

(declare-fun b_free!110043 () Bool)

(declare-fun b_next!110747 () Bool)

(assert (=> b!3971201 (= b_free!110043 (not b_next!110747))))

(declare-fun tp!1210924 () Bool)

(declare-fun b_and!305289 () Bool)

(assert (=> b!3971201 (= tp!1210924 b_and!305289)))

(declare-fun b!3971204 () Bool)

(declare-fun b_free!110045 () Bool)

(declare-fun b_next!110749 () Bool)

(assert (=> b!3971204 (= b_free!110045 (not b_next!110749))))

(declare-fun tp!1210925 () Bool)

(declare-fun b_and!305291 () Bool)

(assert (=> b!3971204 (= tp!1210925 b_and!305291)))

(declare-fun b_free!110047 () Bool)

(declare-fun b_next!110751 () Bool)

(assert (=> b!3971204 (= b_free!110047 (not b_next!110751))))

(declare-fun tp!1210927 () Bool)

(declare-fun b_and!305293 () Bool)

(assert (=> b!3971204 (= tp!1210927 b_and!305293)))

(declare-fun b!3971184 () Bool)

(declare-fun e!2460062 () Bool)

(declare-fun e!2460065 () Bool)

(assert (=> b!3971184 (= e!2460062 e!2460065)))

(declare-fun res!1607542 () Bool)

(assert (=> b!3971184 (=> (not res!1607542) (not e!2460065))))

(declare-datatypes ((C!23338 0))(
  ( (C!23339 (val!13763 Int)) )
))
(declare-datatypes ((List!42521 0))(
  ( (Nil!42397) (Cons!42397 (h!47817 C!23338) (t!330888 List!42521)) )
))
(declare-datatypes ((IArray!25769 0))(
  ( (IArray!25770 (innerList!12942 List!42521)) )
))
(declare-datatypes ((Conc!12882 0))(
  ( (Node!12882 (left!32112 Conc!12882) (right!32442 Conc!12882) (csize!25994 Int) (cheight!13093 Int)) (Leaf!19925 (xs!16188 IArray!25769) (csize!25995 Int)) (Empty!12882) )
))
(declare-datatypes ((BalanceConc!25358 0))(
  ( (BalanceConc!25359 (c!688747 Conc!12882)) )
))
(declare-datatypes ((List!42522 0))(
  ( (Nil!42398) (Cons!42398 (h!47818 (_ BitVec 16)) (t!330889 List!42522)) )
))
(declare-datatypes ((TokenValue!6901 0))(
  ( (FloatLiteralValue!13802 (text!48752 List!42522)) (TokenValueExt!6900 (__x!26019 Int)) (Broken!34505 (value!210733 List!42522)) (Object!7024) (End!6901) (Def!6901) (Underscore!6901) (Match!6901) (Else!6901) (Error!6901) (Case!6901) (If!6901) (Extends!6901) (Abstract!6901) (Class!6901) (Val!6901) (DelimiterValue!13802 (del!6961 List!42522)) (KeywordValue!6907 (value!210734 List!42522)) (CommentValue!13802 (value!210735 List!42522)) (WhitespaceValue!13802 (value!210736 List!42522)) (IndentationValue!6901 (value!210737 List!42522)) (String!48224) (Int32!6901) (Broken!34506 (value!210738 List!42522)) (Boolean!6902) (Unit!61048) (OperatorValue!6904 (op!6961 List!42522)) (IdentifierValue!13802 (value!210739 List!42522)) (IdentifierValue!13803 (value!210740 List!42522)) (WhitespaceValue!13803 (value!210741 List!42522)) (True!13802) (False!13802) (Broken!34507 (value!210742 List!42522)) (Broken!34508 (value!210743 List!42522)) (True!13803) (RightBrace!6901) (RightBracket!6901) (Colon!6901) (Null!6901) (Comma!6901) (LeftBracket!6901) (False!13803) (LeftBrace!6901) (ImaginaryLiteralValue!6901 (text!48753 List!42522)) (StringLiteralValue!20703 (value!210744 List!42522)) (EOFValue!6901 (value!210745 List!42522)) (IdentValue!6901 (value!210746 List!42522)) (DelimiterValue!13803 (value!210747 List!42522)) (DedentValue!6901 (value!210748 List!42522)) (NewLineValue!6901 (value!210749 List!42522)) (IntegerValue!20703 (value!210750 (_ BitVec 32)) (text!48754 List!42522)) (IntegerValue!20704 (value!210751 Int) (text!48755 List!42522)) (Times!6901) (Or!6901) (Equal!6901) (Minus!6901) (Broken!34509 (value!210752 List!42522)) (And!6901) (Div!6901) (LessEqual!6901) (Mod!6901) (Concat!18477) (Not!6901) (Plus!6901) (SpaceValue!6901 (value!210753 List!42522)) (IntegerValue!20705 (value!210754 Int) (text!48756 List!42522)) (StringLiteralValue!20704 (text!48757 List!42522)) (FloatLiteralValue!13803 (text!48758 List!42522)) (BytesLiteralValue!6901 (value!210755 List!42522)) (CommentValue!13803 (value!210756 List!42522)) (StringLiteralValue!20705 (value!210757 List!42522)) (ErrorTokenValue!6901 (msg!6962 List!42522)) )
))
(declare-datatypes ((Regex!11576 0))(
  ( (ElementMatch!11576 (c!688748 C!23338)) (Concat!18478 (regOne!23664 Regex!11576) (regTwo!23664 Regex!11576)) (EmptyExpr!11576) (Star!11576 (reg!11905 Regex!11576)) (EmptyLang!11576) (Union!11576 (regOne!23665 Regex!11576) (regTwo!23665 Regex!11576)) )
))
(declare-datatypes ((String!48225 0))(
  ( (String!48226 (value!210758 String)) )
))
(declare-datatypes ((TokenValueInjection!13230 0))(
  ( (TokenValueInjection!13231 (toValue!9159 Int) (toChars!9018 Int)) )
))
(declare-datatypes ((Rule!13142 0))(
  ( (Rule!13143 (regex!6671 Regex!11576) (tag!7531 String!48225) (isSeparator!6671 Bool) (transformation!6671 TokenValueInjection!13230)) )
))
(declare-datatypes ((Token!12480 0))(
  ( (Token!12481 (value!210759 TokenValue!6901) (rule!9659 Rule!13142) (size!31722 Int) (originalCharacters!7271 List!42521)) )
))
(declare-datatypes ((tuple2!41654 0))(
  ( (tuple2!41655 (_1!23961 Token!12480) (_2!23961 List!42521)) )
))
(declare-datatypes ((Option!9085 0))(
  ( (None!9084) (Some!9084 (v!39432 tuple2!41654)) )
))
(declare-fun lt!1391069 () Option!9085)

(declare-datatypes ((LexerInterface!6260 0))(
  ( (LexerInterfaceExt!6257 (__x!26020 Int)) (Lexer!6258) )
))
(declare-fun thiss!21717 () LexerInterface!6260)

(declare-datatypes ((List!42523 0))(
  ( (Nil!42399) (Cons!42399 (h!47819 Rule!13142) (t!330890 List!42523)) )
))
(declare-fun rules!2999 () List!42523)

(declare-fun lt!1391051 () List!42521)

(declare-fun maxPrefix!3558 (LexerInterface!6260 List!42523 List!42521) Option!9085)

(assert (=> b!3971184 (= res!1607542 (= (maxPrefix!3558 thiss!21717 rules!2999 lt!1391051) lt!1391069))))

(declare-fun token!484 () Token!12480)

(declare-fun suffixResult!105 () List!42521)

(assert (=> b!3971184 (= lt!1391069 (Some!9084 (tuple2!41655 token!484 suffixResult!105)))))

(declare-fun prefix!494 () List!42521)

(declare-fun suffix!1299 () List!42521)

(declare-fun ++!11073 (List!42521 List!42521) List!42521)

(assert (=> b!3971184 (= lt!1391051 (++!11073 prefix!494 suffix!1299))))

(declare-fun b!3971185 () Bool)

(declare-fun e!2460058 () Bool)

(declare-fun e!2460047 () Bool)

(assert (=> b!3971185 (= e!2460058 e!2460047)))

(declare-fun res!1607538 () Bool)

(assert (=> b!3971185 (=> res!1607538 e!2460047)))

(declare-fun lt!1391064 () List!42521)

(assert (=> b!3971185 (= res!1607538 (not (= lt!1391064 prefix!494)))))

(declare-fun lt!1391058 () List!42521)

(declare-fun lt!1391063 () List!42521)

(assert (=> b!3971185 (= lt!1391064 (++!11073 lt!1391058 lt!1391063))))

(declare-fun getSuffix!2189 (List!42521 List!42521) List!42521)

(assert (=> b!3971185 (= lt!1391063 (getSuffix!2189 prefix!494 lt!1391058))))

(declare-fun isPrefix!3758 (List!42521 List!42521) Bool)

(assert (=> b!3971185 (isPrefix!3758 lt!1391058 prefix!494)))

(declare-datatypes ((Unit!61049 0))(
  ( (Unit!61050) )
))
(declare-fun lt!1391067 () Unit!61049)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!336 (List!42521 List!42521 List!42521) Unit!61049)

(assert (=> b!3971185 (= lt!1391067 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!336 prefix!494 lt!1391058 lt!1391051))))

(declare-fun b!3971186 () Bool)

(declare-fun res!1607540 () Bool)

(declare-fun e!2460056 () Bool)

(assert (=> b!3971186 (=> (not res!1607540) (not e!2460056))))

(declare-fun newSuffix!27 () List!42521)

(assert (=> b!3971186 (= res!1607540 (isPrefix!3758 newSuffix!27 suffix!1299))))

(declare-fun b!3971187 () Bool)

(declare-fun e!2460066 () Bool)

(assert (=> b!3971187 (= e!2460065 (not e!2460066))))

(declare-fun res!1607539 () Bool)

(assert (=> b!3971187 (=> res!1607539 e!2460066)))

(declare-fun lt!1391054 () List!42521)

(assert (=> b!3971187 (= res!1607539 (not (= lt!1391054 lt!1391051)))))

(assert (=> b!3971187 (= lt!1391054 (++!11073 lt!1391058 suffixResult!105))))

(declare-fun lt!1391073 () Unit!61049)

(declare-fun lemmaInv!886 (TokenValueInjection!13230) Unit!61049)

(assert (=> b!3971187 (= lt!1391073 (lemmaInv!886 (transformation!6671 (rule!9659 token!484))))))

(declare-fun ruleValid!2603 (LexerInterface!6260 Rule!13142) Bool)

(assert (=> b!3971187 (ruleValid!2603 thiss!21717 (rule!9659 token!484))))

(declare-fun lt!1391048 () Unit!61049)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1677 (LexerInterface!6260 Rule!13142 List!42523) Unit!61049)

(assert (=> b!3971187 (= lt!1391048 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1677 thiss!21717 (rule!9659 token!484) rules!2999))))

(declare-fun b!3971188 () Bool)

(declare-fun res!1607535 () Bool)

(assert (=> b!3971188 (=> (not res!1607535) (not e!2460056))))

(declare-fun rulesInvariant!5603 (LexerInterface!6260 List!42523) Bool)

(assert (=> b!3971188 (= res!1607535 (rulesInvariant!5603 thiss!21717 rules!2999))))

(declare-fun e!2460067 () Bool)

(declare-fun tp!1210933 () Bool)

(declare-fun b!3971189 () Bool)

(declare-fun e!2460061 () Bool)

(declare-fun inv!56650 (String!48225) Bool)

(declare-fun inv!56653 (TokenValueInjection!13230) Bool)

(assert (=> b!3971189 (= e!2460067 (and tp!1210933 (inv!56650 (tag!7531 (rule!9659 token!484))) (inv!56653 (transformation!6671 (rule!9659 token!484))) e!2460061))))

(declare-fun b!3971190 () Bool)

(declare-fun e!2460069 () Bool)

(declare-fun tp_is_empty!20123 () Bool)

(declare-fun tp!1210931 () Bool)

(assert (=> b!3971190 (= e!2460069 (and tp_is_empty!20123 tp!1210931))))

(declare-fun b!3971191 () Bool)

(declare-fun e!2460049 () Bool)

(declare-fun e!2460057 () Bool)

(assert (=> b!3971191 (= e!2460049 e!2460057)))

(declare-fun res!1607536 () Bool)

(assert (=> b!3971191 (=> res!1607536 e!2460057)))

(declare-fun lt!1391049 () Option!9085)

(assert (=> b!3971191 (= res!1607536 (not (= lt!1391049 lt!1391069)))))

(declare-fun lt!1391056 () Int)

(declare-fun lt!1391062 () TokenValue!6901)

(assert (=> b!3971191 (= lt!1391049 (Some!9084 (tuple2!41655 (Token!12481 lt!1391062 (rule!9659 token!484) lt!1391056 lt!1391058) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2592 (LexerInterface!6260 Rule!13142 List!42521) Option!9085)

(assert (=> b!3971191 (= lt!1391049 (maxPrefixOneRule!2592 thiss!21717 (rule!9659 token!484) lt!1391051))))

(declare-fun apply!9882 (TokenValueInjection!13230 BalanceConc!25358) TokenValue!6901)

(declare-fun seqFromList!4910 (List!42521) BalanceConc!25358)

(assert (=> b!3971191 (= lt!1391062 (apply!9882 (transformation!6671 (rule!9659 token!484)) (seqFromList!4910 lt!1391058)))))

(declare-fun lt!1391055 () Unit!61049)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1414 (LexerInterface!6260 List!42523 List!42521 List!42521 List!42521 Rule!13142) Unit!61049)

(assert (=> b!3971191 (= lt!1391055 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1414 thiss!21717 rules!2999 lt!1391058 lt!1391051 suffixResult!105 (rule!9659 token!484)))))

(declare-fun lt!1391071 () List!42521)

(assert (=> b!3971191 (= lt!1391071 suffixResult!105)))

(declare-fun lt!1391057 () Unit!61049)

(declare-fun lemmaSamePrefixThenSameSuffix!1945 (List!42521 List!42521 List!42521 List!42521 List!42521) Unit!61049)

(assert (=> b!3971191 (= lt!1391057 (lemmaSamePrefixThenSameSuffix!1945 lt!1391058 lt!1391071 lt!1391058 suffixResult!105 lt!1391051))))

(declare-fun lt!1391072 () List!42521)

(assert (=> b!3971191 (isPrefix!3758 lt!1391058 lt!1391072)))

(declare-fun lt!1391068 () Unit!61049)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2601 (List!42521 List!42521) Unit!61049)

(assert (=> b!3971191 (= lt!1391068 (lemmaConcatTwoListThenFirstIsPrefix!2601 lt!1391058 lt!1391071))))

(declare-fun b!3971192 () Bool)

(declare-fun res!1607546 () Bool)

(assert (=> b!3971192 (=> (not res!1607546) (not e!2460056))))

(declare-fun isEmpty!25361 (List!42523) Bool)

(assert (=> b!3971192 (= res!1607546 (not (isEmpty!25361 rules!2999)))))

(declare-fun b!3971193 () Bool)

(declare-fun e!2460050 () Bool)

(declare-fun tp!1210921 () Bool)

(assert (=> b!3971193 (= e!2460050 (and tp_is_empty!20123 tp!1210921))))

(declare-fun b!3971194 () Bool)

(declare-fun e!2460048 () Bool)

(assert (=> b!3971194 (= e!2460056 e!2460048)))

(declare-fun res!1607537 () Bool)

(assert (=> b!3971194 (=> (not res!1607537) (not e!2460048))))

(declare-fun lt!1391065 () Int)

(assert (=> b!3971194 (= res!1607537 (>= lt!1391065 lt!1391056))))

(declare-fun size!31723 (List!42521) Int)

(assert (=> b!3971194 (= lt!1391056 (size!31723 lt!1391058))))

(assert (=> b!3971194 (= lt!1391065 (size!31723 prefix!494))))

(declare-fun list!15731 (BalanceConc!25358) List!42521)

(declare-fun charsOf!4487 (Token!12480) BalanceConc!25358)

(assert (=> b!3971194 (= lt!1391058 (list!15731 (charsOf!4487 token!484)))))

(declare-fun res!1607541 () Bool)

(assert (=> start!373642 (=> (not res!1607541) (not e!2460056))))

(assert (=> start!373642 (= res!1607541 (is-Lexer!6258 thiss!21717))))

(assert (=> start!373642 e!2460056))

(declare-fun e!2460053 () Bool)

(assert (=> start!373642 e!2460053))

(declare-fun e!2460063 () Bool)

(declare-fun inv!56654 (Token!12480) Bool)

(assert (=> start!373642 (and (inv!56654 token!484) e!2460063)))

(assert (=> start!373642 e!2460050))

(assert (=> start!373642 e!2460069))

(declare-fun e!2460052 () Bool)

(assert (=> start!373642 e!2460052))

(assert (=> start!373642 true))

(declare-fun e!2460055 () Bool)

(assert (=> start!373642 e!2460055))

(declare-fun e!2460068 () Bool)

(assert (=> start!373642 e!2460068))

(declare-fun b!3971183 () Bool)

(assert (=> b!3971183 (= e!2460047 e!2460049)))

(declare-fun res!1607547 () Bool)

(assert (=> b!3971183 (=> res!1607547 e!2460049)))

(declare-fun lt!1391050 () List!42521)

(assert (=> b!3971183 (= res!1607547 (or (not (= lt!1391051 lt!1391050)) (not (= lt!1391051 lt!1391072))))))

(assert (=> b!3971183 (= lt!1391050 lt!1391072)))

(assert (=> b!3971183 (= lt!1391072 (++!11073 lt!1391058 lt!1391071))))

(assert (=> b!3971183 (= lt!1391050 (++!11073 lt!1391064 suffix!1299))))

(assert (=> b!3971183 (= lt!1391071 (++!11073 lt!1391063 suffix!1299))))

(declare-fun lt!1391070 () Unit!61049)

(declare-fun lemmaConcatAssociativity!2393 (List!42521 List!42521 List!42521) Unit!61049)

(assert (=> b!3971183 (= lt!1391070 (lemmaConcatAssociativity!2393 lt!1391058 lt!1391063 suffix!1299))))

(declare-fun b!3971195 () Bool)

(declare-fun tp!1210923 () Bool)

(assert (=> b!3971195 (= e!2460068 (and tp_is_empty!20123 tp!1210923))))

(declare-fun b!3971196 () Bool)

(declare-fun validRegex!5259 (Regex!11576) Bool)

(assert (=> b!3971196 (= e!2460057 (validRegex!5259 (regex!6671 (rule!9659 token!484))))))

(declare-fun lt!1391060 () List!42521)

(assert (=> b!3971196 (isPrefix!3758 lt!1391058 lt!1391060)))

(declare-fun lt!1391066 () Unit!61049)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!591 (List!42521 List!42521 List!42521) Unit!61049)

(assert (=> b!3971196 (= lt!1391066 (lemmaPrefixStaysPrefixWhenAddingToSuffix!591 lt!1391058 prefix!494 newSuffix!27))))

(declare-fun lt!1391053 () Unit!61049)

(assert (=> b!3971196 (= lt!1391053 (lemmaPrefixStaysPrefixWhenAddingToSuffix!591 lt!1391058 prefix!494 suffix!1299))))

(declare-fun b!3971197 () Bool)

(declare-fun e!2460051 () Bool)

(declare-fun tp!1210922 () Bool)

(assert (=> b!3971197 (= e!2460055 (and e!2460051 tp!1210922))))

(declare-fun b!3971198 () Bool)

(declare-fun res!1607544 () Bool)

(assert (=> b!3971198 (=> (not res!1607544) (not e!2460056))))

(assert (=> b!3971198 (= res!1607544 (>= (size!31723 suffix!1299) (size!31723 newSuffix!27)))))

(declare-fun b!3971199 () Bool)

(declare-fun tp!1210926 () Bool)

(assert (=> b!3971199 (= e!2460053 (and tp_is_empty!20123 tp!1210926))))

(declare-fun b!3971200 () Bool)

(declare-fun tp!1210932 () Bool)

(assert (=> b!3971200 (= e!2460052 (and tp_is_empty!20123 tp!1210932))))

(assert (=> b!3971201 (= e!2460061 (and tp!1210929 tp!1210924))))

(declare-fun b!3971202 () Bool)

(assert (=> b!3971202 (= e!2460066 e!2460058)))

(declare-fun res!1607545 () Bool)

(assert (=> b!3971202 (=> res!1607545 e!2460058)))

(assert (=> b!3971202 (= res!1607545 (not (isPrefix!3758 lt!1391058 lt!1391051)))))

(assert (=> b!3971202 (isPrefix!3758 prefix!494 lt!1391051)))

(declare-fun lt!1391061 () Unit!61049)

(assert (=> b!3971202 (= lt!1391061 (lemmaConcatTwoListThenFirstIsPrefix!2601 prefix!494 suffix!1299))))

(assert (=> b!3971202 (isPrefix!3758 lt!1391058 lt!1391054)))

(declare-fun lt!1391052 () Unit!61049)

(assert (=> b!3971202 (= lt!1391052 (lemmaConcatTwoListThenFirstIsPrefix!2601 lt!1391058 suffixResult!105))))

(declare-fun e!2460054 () Bool)

(declare-fun b!3971203 () Bool)

(declare-fun tp!1210928 () Bool)

(assert (=> b!3971203 (= e!2460051 (and tp!1210928 (inv!56650 (tag!7531 (h!47819 rules!2999))) (inv!56653 (transformation!6671 (h!47819 rules!2999))) e!2460054))))

(assert (=> b!3971204 (= e!2460054 (and tp!1210925 tp!1210927))))

(declare-fun b!3971205 () Bool)

(declare-fun tp!1210930 () Bool)

(declare-fun inv!21 (TokenValue!6901) Bool)

(assert (=> b!3971205 (= e!2460063 (and (inv!21 (value!210759 token!484)) e!2460067 tp!1210930))))

(declare-fun b!3971206 () Bool)

(assert (=> b!3971206 (= e!2460048 e!2460062)))

(declare-fun res!1607543 () Bool)

(assert (=> b!3971206 (=> (not res!1607543) (not e!2460062))))

(declare-fun lt!1391059 () List!42521)

(assert (=> b!3971206 (= res!1607543 (= lt!1391059 lt!1391060))))

(assert (=> b!3971206 (= lt!1391060 (++!11073 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42521)

(assert (=> b!3971206 (= lt!1391059 (++!11073 lt!1391058 newSuffixResult!27))))

(assert (= (and start!373642 res!1607541) b!3971192))

(assert (= (and b!3971192 res!1607546) b!3971188))

(assert (= (and b!3971188 res!1607535) b!3971198))

(assert (= (and b!3971198 res!1607544) b!3971186))

(assert (= (and b!3971186 res!1607540) b!3971194))

(assert (= (and b!3971194 res!1607537) b!3971206))

(assert (= (and b!3971206 res!1607543) b!3971184))

(assert (= (and b!3971184 res!1607542) b!3971187))

(assert (= (and b!3971187 (not res!1607539)) b!3971202))

(assert (= (and b!3971202 (not res!1607545)) b!3971185))

(assert (= (and b!3971185 (not res!1607538)) b!3971183))

(assert (= (and b!3971183 (not res!1607547)) b!3971191))

(assert (= (and b!3971191 (not res!1607536)) b!3971196))

(assert (= (and start!373642 (is-Cons!42397 prefix!494)) b!3971199))

(assert (= b!3971189 b!3971201))

(assert (= b!3971205 b!3971189))

(assert (= start!373642 b!3971205))

(assert (= (and start!373642 (is-Cons!42397 suffixResult!105)) b!3971193))

(assert (= (and start!373642 (is-Cons!42397 suffix!1299)) b!3971190))

(assert (= (and start!373642 (is-Cons!42397 newSuffix!27)) b!3971200))

(assert (= b!3971203 b!3971204))

(assert (= b!3971197 b!3971203))

(assert (= (and start!373642 (is-Cons!42399 rules!2999)) b!3971197))

(assert (= (and start!373642 (is-Cons!42397 newSuffixResult!27)) b!3971195))

(declare-fun m!4541405 () Bool)

(assert (=> start!373642 m!4541405))

(declare-fun m!4541407 () Bool)

(assert (=> b!3971187 m!4541407))

(declare-fun m!4541409 () Bool)

(assert (=> b!3971187 m!4541409))

(declare-fun m!4541411 () Bool)

(assert (=> b!3971187 m!4541411))

(declare-fun m!4541413 () Bool)

(assert (=> b!3971187 m!4541413))

(declare-fun m!4541415 () Bool)

(assert (=> b!3971189 m!4541415))

(declare-fun m!4541417 () Bool)

(assert (=> b!3971189 m!4541417))

(declare-fun m!4541419 () Bool)

(assert (=> b!3971184 m!4541419))

(declare-fun m!4541421 () Bool)

(assert (=> b!3971184 m!4541421))

(declare-fun m!4541423 () Bool)

(assert (=> b!3971191 m!4541423))

(declare-fun m!4541425 () Bool)

(assert (=> b!3971191 m!4541425))

(declare-fun m!4541427 () Bool)

(assert (=> b!3971191 m!4541427))

(declare-fun m!4541429 () Bool)

(assert (=> b!3971191 m!4541429))

(declare-fun m!4541431 () Bool)

(assert (=> b!3971191 m!4541431))

(declare-fun m!4541433 () Bool)

(assert (=> b!3971191 m!4541433))

(assert (=> b!3971191 m!4541429))

(declare-fun m!4541435 () Bool)

(assert (=> b!3971191 m!4541435))

(declare-fun m!4541437 () Bool)

(assert (=> b!3971198 m!4541437))

(declare-fun m!4541439 () Bool)

(assert (=> b!3971198 m!4541439))

(declare-fun m!4541441 () Bool)

(assert (=> b!3971192 m!4541441))

(declare-fun m!4541443 () Bool)

(assert (=> b!3971194 m!4541443))

(declare-fun m!4541445 () Bool)

(assert (=> b!3971194 m!4541445))

(declare-fun m!4541447 () Bool)

(assert (=> b!3971194 m!4541447))

(assert (=> b!3971194 m!4541447))

(declare-fun m!4541449 () Bool)

(assert (=> b!3971194 m!4541449))

(declare-fun m!4541451 () Bool)

(assert (=> b!3971186 m!4541451))

(declare-fun m!4541453 () Bool)

(assert (=> b!3971196 m!4541453))

(declare-fun m!4541455 () Bool)

(assert (=> b!3971196 m!4541455))

(declare-fun m!4541457 () Bool)

(assert (=> b!3971196 m!4541457))

(declare-fun m!4541459 () Bool)

(assert (=> b!3971196 m!4541459))

(declare-fun m!4541461 () Bool)

(assert (=> b!3971203 m!4541461))

(declare-fun m!4541463 () Bool)

(assert (=> b!3971203 m!4541463))

(declare-fun m!4541465 () Bool)

(assert (=> b!3971188 m!4541465))

(declare-fun m!4541467 () Bool)

(assert (=> b!3971183 m!4541467))

(declare-fun m!4541469 () Bool)

(assert (=> b!3971183 m!4541469))

(declare-fun m!4541471 () Bool)

(assert (=> b!3971183 m!4541471))

(declare-fun m!4541473 () Bool)

(assert (=> b!3971183 m!4541473))

(declare-fun m!4541475 () Bool)

(assert (=> b!3971205 m!4541475))

(declare-fun m!4541477 () Bool)

(assert (=> b!3971206 m!4541477))

(declare-fun m!4541479 () Bool)

(assert (=> b!3971206 m!4541479))

(declare-fun m!4541481 () Bool)

(assert (=> b!3971202 m!4541481))

(declare-fun m!4541483 () Bool)

(assert (=> b!3971202 m!4541483))

(declare-fun m!4541485 () Bool)

(assert (=> b!3971202 m!4541485))

(declare-fun m!4541487 () Bool)

(assert (=> b!3971202 m!4541487))

(declare-fun m!4541489 () Bool)

(assert (=> b!3971202 m!4541489))

(declare-fun m!4541491 () Bool)

(assert (=> b!3971185 m!4541491))

(declare-fun m!4541493 () Bool)

(assert (=> b!3971185 m!4541493))

(declare-fun m!4541495 () Bool)

(assert (=> b!3971185 m!4541495))

(declare-fun m!4541497 () Bool)

(assert (=> b!3971185 m!4541497))

(push 1)

(assert (not b!3971202))

(assert (not b!3971192))

(assert b_and!305291)

(assert (not b_next!110751))

(assert (not b_next!110745))

(assert (not b!3971193))

(assert b_and!305293)

(assert (not b!3971191))

(assert (not b!3971203))

(assert (not b!3971197))

(assert (not b!3971186))

(assert (not b!3971188))

(assert (not b_next!110749))

(assert (not start!373642))

(assert (not b!3971184))

(assert (not b!3971187))

(assert b_and!305289)

(assert (not b!3971195))

(assert b_and!305287)

(assert (not b_next!110747))

(assert (not b!3971190))

(assert (not b!3971196))

(assert (not b!3971185))

(assert (not b!3971205))

(assert (not b!3971206))

(assert (not b!3971199))

(assert (not b!3971200))

(assert (not b!3971189))

(assert (not b!3971183))

(assert (not b!3971198))

(assert (not b!3971194))

(assert tp_is_empty!20123)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!110749))

(assert b_and!305289)

(assert b_and!305291)

(assert (not b_next!110751))

(assert (not b_next!110745))

(assert b_and!305293)

(assert b_and!305287)

(assert (not b_next!110747))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1176223 () Bool)

(assert (=> d!1176223 (= (inv!56650 (tag!7531 (rule!9659 token!484))) (= (mod (str.len (value!210758 (tag!7531 (rule!9659 token!484)))) 2) 0))))

(assert (=> b!3971189 d!1176223))

(declare-fun d!1176225 () Bool)

(declare-fun res!1607593 () Bool)

(declare-fun e!2460141 () Bool)

(assert (=> d!1176225 (=> (not res!1607593) (not e!2460141))))

(declare-fun semiInverseModEq!2866 (Int Int) Bool)

(assert (=> d!1176225 (= res!1607593 (semiInverseModEq!2866 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))))))

(assert (=> d!1176225 (= (inv!56653 (transformation!6671 (rule!9659 token!484))) e!2460141)))

(declare-fun b!3971281 () Bool)

(declare-fun equivClasses!2765 (Int Int) Bool)

(assert (=> b!3971281 (= e!2460141 (equivClasses!2765 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))))))

(assert (= (and d!1176225 res!1607593) b!3971281))

(declare-fun m!4541593 () Bool)

(assert (=> d!1176225 m!4541593))

(declare-fun m!4541595 () Bool)

(assert (=> b!3971281 m!4541595))

(assert (=> b!3971189 d!1176225))

(declare-fun d!1176229 () Bool)

(declare-fun res!1607596 () Bool)

(declare-fun e!2460144 () Bool)

(assert (=> d!1176229 (=> (not res!1607596) (not e!2460144))))

(declare-fun rulesValid!2600 (LexerInterface!6260 List!42523) Bool)

(assert (=> d!1176229 (= res!1607596 (rulesValid!2600 thiss!21717 rules!2999))))

(assert (=> d!1176229 (= (rulesInvariant!5603 thiss!21717 rules!2999) e!2460144)))

(declare-fun b!3971284 () Bool)

(declare-datatypes ((List!42527 0))(
  ( (Nil!42403) (Cons!42403 (h!47823 String!48225) (t!330914 List!42527)) )
))
(declare-fun noDuplicateTag!2601 (LexerInterface!6260 List!42523 List!42527) Bool)

(assert (=> b!3971284 (= e!2460144 (noDuplicateTag!2601 thiss!21717 rules!2999 Nil!42403))))

(assert (= (and d!1176229 res!1607596) b!3971284))

(declare-fun m!4541597 () Bool)

(assert (=> d!1176229 m!4541597))

(declare-fun m!4541599 () Bool)

(assert (=> b!3971284 m!4541599))

(assert (=> b!3971188 d!1176229))

(declare-fun d!1176231 () Bool)

(declare-fun lt!1391156 () Int)

(assert (=> d!1176231 (>= lt!1391156 0)))

(declare-fun e!2460151 () Int)

(assert (=> d!1176231 (= lt!1391156 e!2460151)))

(declare-fun c!688756 () Bool)

(assert (=> d!1176231 (= c!688756 (is-Nil!42397 suffix!1299))))

(assert (=> d!1176231 (= (size!31723 suffix!1299) lt!1391156)))

(declare-fun b!3971297 () Bool)

(assert (=> b!3971297 (= e!2460151 0)))

(declare-fun b!3971298 () Bool)

(assert (=> b!3971298 (= e!2460151 (+ 1 (size!31723 (t!330888 suffix!1299))))))

(assert (= (and d!1176231 c!688756) b!3971297))

(assert (= (and d!1176231 (not c!688756)) b!3971298))

(declare-fun m!4541601 () Bool)

(assert (=> b!3971298 m!4541601))

(assert (=> b!3971198 d!1176231))

(declare-fun d!1176233 () Bool)

(declare-fun lt!1391157 () Int)

(assert (=> d!1176233 (>= lt!1391157 0)))

(declare-fun e!2460152 () Int)

(assert (=> d!1176233 (= lt!1391157 e!2460152)))

(declare-fun c!688757 () Bool)

(assert (=> d!1176233 (= c!688757 (is-Nil!42397 newSuffix!27))))

(assert (=> d!1176233 (= (size!31723 newSuffix!27) lt!1391157)))

(declare-fun b!3971299 () Bool)

(assert (=> b!3971299 (= e!2460152 0)))

(declare-fun b!3971300 () Bool)

(assert (=> b!3971300 (= e!2460152 (+ 1 (size!31723 (t!330888 newSuffix!27))))))

(assert (= (and d!1176233 c!688757) b!3971299))

(assert (= (and d!1176233 (not c!688757)) b!3971300))

(declare-fun m!4541603 () Bool)

(assert (=> b!3971300 m!4541603))

(assert (=> b!3971198 d!1176233))

(declare-fun e!2460160 () Bool)

(declare-fun b!3971316 () Bool)

(declare-fun lt!1391161 () List!42521)

(assert (=> b!3971316 (= e!2460160 (or (not (= suffixResult!105 Nil!42397)) (= lt!1391161 lt!1391058)))))

(declare-fun b!3971314 () Bool)

(declare-fun e!2460159 () List!42521)

(assert (=> b!3971314 (= e!2460159 (Cons!42397 (h!47817 lt!1391058) (++!11073 (t!330888 lt!1391058) suffixResult!105)))))

(declare-fun d!1176235 () Bool)

(assert (=> d!1176235 e!2460160))

(declare-fun res!1607607 () Bool)

(assert (=> d!1176235 (=> (not res!1607607) (not e!2460160))))

(declare-fun content!6434 (List!42521) (Set C!23338))

(assert (=> d!1176235 (= res!1607607 (= (content!6434 lt!1391161) (set.union (content!6434 lt!1391058) (content!6434 suffixResult!105))))))

(assert (=> d!1176235 (= lt!1391161 e!2460159)))

(declare-fun c!688761 () Bool)

(assert (=> d!1176235 (= c!688761 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176235 (= (++!11073 lt!1391058 suffixResult!105) lt!1391161)))

(declare-fun b!3971315 () Bool)

(declare-fun res!1607608 () Bool)

(assert (=> b!3971315 (=> (not res!1607608) (not e!2460160))))

(assert (=> b!3971315 (= res!1607608 (= (size!31723 lt!1391161) (+ (size!31723 lt!1391058) (size!31723 suffixResult!105))))))

(declare-fun b!3971313 () Bool)

(assert (=> b!3971313 (= e!2460159 suffixResult!105)))

(assert (= (and d!1176235 c!688761) b!3971313))

(assert (= (and d!1176235 (not c!688761)) b!3971314))

(assert (= (and d!1176235 res!1607607) b!3971315))

(assert (= (and b!3971315 res!1607608) b!3971316))

(declare-fun m!4541617 () Bool)

(assert (=> b!3971314 m!4541617))

(declare-fun m!4541619 () Bool)

(assert (=> d!1176235 m!4541619))

(declare-fun m!4541621 () Bool)

(assert (=> d!1176235 m!4541621))

(declare-fun m!4541623 () Bool)

(assert (=> d!1176235 m!4541623))

(declare-fun m!4541625 () Bool)

(assert (=> b!3971315 m!4541625))

(assert (=> b!3971315 m!4541443))

(declare-fun m!4541627 () Bool)

(assert (=> b!3971315 m!4541627))

(assert (=> b!3971187 d!1176235))

(declare-fun d!1176239 () Bool)

(declare-fun e!2460163 () Bool)

(assert (=> d!1176239 e!2460163))

(declare-fun res!1607611 () Bool)

(assert (=> d!1176239 (=> (not res!1607611) (not e!2460163))))

(assert (=> d!1176239 (= res!1607611 (semiInverseModEq!2866 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))))))

(declare-fun Unit!61054 () Unit!61049)

(assert (=> d!1176239 (= (lemmaInv!886 (transformation!6671 (rule!9659 token!484))) Unit!61054)))

(declare-fun b!3971319 () Bool)

(assert (=> b!3971319 (= e!2460163 (equivClasses!2765 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))))))

(assert (= (and d!1176239 res!1607611) b!3971319))

(assert (=> d!1176239 m!4541593))

(assert (=> b!3971319 m!4541595))

(assert (=> b!3971187 d!1176239))

(declare-fun d!1176241 () Bool)

(declare-fun res!1607616 () Bool)

(declare-fun e!2460168 () Bool)

(assert (=> d!1176241 (=> (not res!1607616) (not e!2460168))))

(assert (=> d!1176241 (= res!1607616 (validRegex!5259 (regex!6671 (rule!9659 token!484))))))

(assert (=> d!1176241 (= (ruleValid!2603 thiss!21717 (rule!9659 token!484)) e!2460168)))

(declare-fun b!3971328 () Bool)

(declare-fun res!1607617 () Bool)

(assert (=> b!3971328 (=> (not res!1607617) (not e!2460168))))

(declare-fun nullable!4060 (Regex!11576) Bool)

(assert (=> b!3971328 (= res!1607617 (not (nullable!4060 (regex!6671 (rule!9659 token!484)))))))

(declare-fun b!3971329 () Bool)

(assert (=> b!3971329 (= e!2460168 (not (= (tag!7531 (rule!9659 token!484)) (String!48226 ""))))))

(assert (= (and d!1176241 res!1607616) b!3971328))

(assert (= (and b!3971328 res!1607617) b!3971329))

(assert (=> d!1176241 m!4541453))

(declare-fun m!4541629 () Bool)

(assert (=> b!3971328 m!4541629))

(assert (=> b!3971187 d!1176241))

(declare-fun d!1176243 () Bool)

(assert (=> d!1176243 (ruleValid!2603 thiss!21717 (rule!9659 token!484))))

(declare-fun lt!1391166 () Unit!61049)

(declare-fun choose!23746 (LexerInterface!6260 Rule!13142 List!42523) Unit!61049)

(assert (=> d!1176243 (= lt!1391166 (choose!23746 thiss!21717 (rule!9659 token!484) rules!2999))))

(declare-fun contains!8449 (List!42523 Rule!13142) Bool)

(assert (=> d!1176243 (contains!8449 rules!2999 (rule!9659 token!484))))

(assert (=> d!1176243 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1677 thiss!21717 (rule!9659 token!484) rules!2999) lt!1391166)))

(declare-fun bs!587607 () Bool)

(assert (= bs!587607 d!1176243))

(assert (=> bs!587607 m!4541411))

(declare-fun m!4541631 () Bool)

(assert (=> bs!587607 m!4541631))

(declare-fun m!4541633 () Bool)

(assert (=> bs!587607 m!4541633))

(assert (=> b!3971187 d!1176243))

(declare-fun d!1176245 () Bool)

(declare-fun res!1607631 () Bool)

(declare-fun e!2460184 () Bool)

(assert (=> d!1176245 (=> res!1607631 e!2460184)))

(assert (=> d!1176245 (= res!1607631 (is-ElementMatch!11576 (regex!6671 (rule!9659 token!484))))))

(assert (=> d!1176245 (= (validRegex!5259 (regex!6671 (rule!9659 token!484))) e!2460184)))

(declare-fun b!3971350 () Bool)

(declare-fun e!2460187 () Bool)

(declare-fun e!2460189 () Bool)

(assert (=> b!3971350 (= e!2460187 e!2460189)))

(declare-fun res!1607632 () Bool)

(assert (=> b!3971350 (=> (not res!1607632) (not e!2460189))))

(declare-fun call!285609 () Bool)

(assert (=> b!3971350 (= res!1607632 call!285609)))

(declare-fun b!3971351 () Bool)

(declare-fun call!285607 () Bool)

(assert (=> b!3971351 (= e!2460189 call!285607)))

(declare-fun bm!285602 () Bool)

(declare-fun c!688770 () Bool)

(assert (=> bm!285602 (= call!285609 (validRegex!5259 (ite c!688770 (regOne!23665 (regex!6671 (rule!9659 token!484))) (regOne!23664 (regex!6671 (rule!9659 token!484))))))))

(declare-fun b!3971352 () Bool)

(declare-fun e!2460188 () Bool)

(declare-fun e!2460190 () Bool)

(assert (=> b!3971352 (= e!2460188 e!2460190)))

(declare-fun res!1607628 () Bool)

(assert (=> b!3971352 (= res!1607628 (not (nullable!4060 (reg!11905 (regex!6671 (rule!9659 token!484))))))))

(assert (=> b!3971352 (=> (not res!1607628) (not e!2460190))))

(declare-fun bm!285603 () Bool)

(declare-fun call!285608 () Bool)

(assert (=> bm!285603 (= call!285607 call!285608)))

(declare-fun b!3971353 () Bool)

(declare-fun e!2460185 () Bool)

(assert (=> b!3971353 (= e!2460185 call!285607)))

(declare-fun b!3971354 () Bool)

(assert (=> b!3971354 (= e!2460190 call!285608)))

(declare-fun b!3971355 () Bool)

(declare-fun res!1607629 () Bool)

(assert (=> b!3971355 (=> res!1607629 e!2460187)))

(assert (=> b!3971355 (= res!1607629 (not (is-Concat!18478 (regex!6671 (rule!9659 token!484)))))))

(declare-fun e!2460186 () Bool)

(assert (=> b!3971355 (= e!2460186 e!2460187)))

(declare-fun c!688769 () Bool)

(declare-fun bm!285604 () Bool)

(assert (=> bm!285604 (= call!285608 (validRegex!5259 (ite c!688769 (reg!11905 (regex!6671 (rule!9659 token!484))) (ite c!688770 (regTwo!23665 (regex!6671 (rule!9659 token!484))) (regTwo!23664 (regex!6671 (rule!9659 token!484)))))))))

(declare-fun b!3971356 () Bool)

(assert (=> b!3971356 (= e!2460184 e!2460188)))

(assert (=> b!3971356 (= c!688769 (is-Star!11576 (regex!6671 (rule!9659 token!484))))))

(declare-fun b!3971357 () Bool)

(assert (=> b!3971357 (= e!2460188 e!2460186)))

(assert (=> b!3971357 (= c!688770 (is-Union!11576 (regex!6671 (rule!9659 token!484))))))

(declare-fun b!3971358 () Bool)

(declare-fun res!1607630 () Bool)

(assert (=> b!3971358 (=> (not res!1607630) (not e!2460185))))

(assert (=> b!3971358 (= res!1607630 call!285609)))

(assert (=> b!3971358 (= e!2460186 e!2460185)))

(assert (= (and d!1176245 (not res!1607631)) b!3971356))

(assert (= (and b!3971356 c!688769) b!3971352))

(assert (= (and b!3971356 (not c!688769)) b!3971357))

(assert (= (and b!3971352 res!1607628) b!3971354))

(assert (= (and b!3971357 c!688770) b!3971358))

(assert (= (and b!3971357 (not c!688770)) b!3971355))

(assert (= (and b!3971358 res!1607630) b!3971353))

(assert (= (and b!3971355 (not res!1607629)) b!3971350))

(assert (= (and b!3971350 res!1607632) b!3971351))

(assert (= (or b!3971353 b!3971351) bm!285603))

(assert (= (or b!3971358 b!3971350) bm!285602))

(assert (= (or b!3971354 bm!285603) bm!285604))

(declare-fun m!4541641 () Bool)

(assert (=> bm!285602 m!4541641))

(declare-fun m!4541643 () Bool)

(assert (=> b!3971352 m!4541643))

(declare-fun m!4541645 () Bool)

(assert (=> bm!285604 m!4541645))

(assert (=> b!3971196 d!1176245))

(declare-fun b!3971379 () Bool)

(declare-fun e!2460208 () Bool)

(declare-fun e!2460206 () Bool)

(assert (=> b!3971379 (= e!2460208 e!2460206)))

(declare-fun res!1607656 () Bool)

(assert (=> b!3971379 (=> (not res!1607656) (not e!2460206))))

(assert (=> b!3971379 (= res!1607656 (not (is-Nil!42397 lt!1391060)))))

(declare-fun b!3971382 () Bool)

(declare-fun e!2460207 () Bool)

(assert (=> b!3971382 (= e!2460207 (>= (size!31723 lt!1391060) (size!31723 lt!1391058)))))

(declare-fun d!1176249 () Bool)

(assert (=> d!1176249 e!2460207))

(declare-fun res!1607655 () Bool)

(assert (=> d!1176249 (=> res!1607655 e!2460207)))

(declare-fun lt!1391173 () Bool)

(assert (=> d!1176249 (= res!1607655 (not lt!1391173))))

(assert (=> d!1176249 (= lt!1391173 e!2460208)))

(declare-fun res!1607654 () Bool)

(assert (=> d!1176249 (=> res!1607654 e!2460208)))

(assert (=> d!1176249 (= res!1607654 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176249 (= (isPrefix!3758 lt!1391058 lt!1391060) lt!1391173)))

(declare-fun b!3971380 () Bool)

(declare-fun res!1607653 () Bool)

(assert (=> b!3971380 (=> (not res!1607653) (not e!2460206))))

(declare-fun head!8460 (List!42521) C!23338)

(assert (=> b!3971380 (= res!1607653 (= (head!8460 lt!1391058) (head!8460 lt!1391060)))))

(declare-fun b!3971381 () Bool)

(declare-fun tail!6192 (List!42521) List!42521)

(assert (=> b!3971381 (= e!2460206 (isPrefix!3758 (tail!6192 lt!1391058) (tail!6192 lt!1391060)))))

(assert (= (and d!1176249 (not res!1607654)) b!3971379))

(assert (= (and b!3971379 res!1607656) b!3971380))

(assert (= (and b!3971380 res!1607653) b!3971381))

(assert (= (and d!1176249 (not res!1607655)) b!3971382))

(declare-fun m!4541653 () Bool)

(assert (=> b!3971382 m!4541653))

(assert (=> b!3971382 m!4541443))

(declare-fun m!4541655 () Bool)

(assert (=> b!3971380 m!4541655))

(declare-fun m!4541657 () Bool)

(assert (=> b!3971380 m!4541657))

(declare-fun m!4541659 () Bool)

(assert (=> b!3971381 m!4541659))

(declare-fun m!4541661 () Bool)

(assert (=> b!3971381 m!4541661))

(assert (=> b!3971381 m!4541659))

(assert (=> b!3971381 m!4541661))

(declare-fun m!4541665 () Bool)

(assert (=> b!3971381 m!4541665))

(assert (=> b!3971196 d!1176249))

(declare-fun d!1176251 () Bool)

(assert (=> d!1176251 (isPrefix!3758 lt!1391058 (++!11073 prefix!494 newSuffix!27))))

(declare-fun lt!1391176 () Unit!61049)

(declare-fun choose!23747 (List!42521 List!42521 List!42521) Unit!61049)

(assert (=> d!1176251 (= lt!1391176 (choose!23747 lt!1391058 prefix!494 newSuffix!27))))

(assert (=> d!1176251 (isPrefix!3758 lt!1391058 prefix!494)))

(assert (=> d!1176251 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!591 lt!1391058 prefix!494 newSuffix!27) lt!1391176)))

(declare-fun bs!587608 () Bool)

(assert (= bs!587608 d!1176251))

(assert (=> bs!587608 m!4541477))

(assert (=> bs!587608 m!4541477))

(declare-fun m!4541667 () Bool)

(assert (=> bs!587608 m!4541667))

(declare-fun m!4541669 () Bool)

(assert (=> bs!587608 m!4541669))

(assert (=> bs!587608 m!4541495))

(assert (=> b!3971196 d!1176251))

(declare-fun d!1176255 () Bool)

(assert (=> d!1176255 (isPrefix!3758 lt!1391058 (++!11073 prefix!494 suffix!1299))))

(declare-fun lt!1391177 () Unit!61049)

(assert (=> d!1176255 (= lt!1391177 (choose!23747 lt!1391058 prefix!494 suffix!1299))))

(assert (=> d!1176255 (isPrefix!3758 lt!1391058 prefix!494)))

(assert (=> d!1176255 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!591 lt!1391058 prefix!494 suffix!1299) lt!1391177)))

(declare-fun bs!587609 () Bool)

(assert (= bs!587609 d!1176255))

(assert (=> bs!587609 m!4541421))

(assert (=> bs!587609 m!4541421))

(declare-fun m!4541671 () Bool)

(assert (=> bs!587609 m!4541671))

(declare-fun m!4541673 () Bool)

(assert (=> bs!587609 m!4541673))

(assert (=> bs!587609 m!4541495))

(assert (=> b!3971196 d!1176255))

(declare-fun b!3971386 () Bool)

(declare-fun e!2460210 () Bool)

(declare-fun lt!1391178 () List!42521)

(assert (=> b!3971386 (= e!2460210 (or (not (= lt!1391063 Nil!42397)) (= lt!1391178 lt!1391058)))))

(declare-fun b!3971384 () Bool)

(declare-fun e!2460209 () List!42521)

(assert (=> b!3971384 (= e!2460209 (Cons!42397 (h!47817 lt!1391058) (++!11073 (t!330888 lt!1391058) lt!1391063)))))

(declare-fun d!1176257 () Bool)

(assert (=> d!1176257 e!2460210))

(declare-fun res!1607657 () Bool)

(assert (=> d!1176257 (=> (not res!1607657) (not e!2460210))))

(assert (=> d!1176257 (= res!1607657 (= (content!6434 lt!1391178) (set.union (content!6434 lt!1391058) (content!6434 lt!1391063))))))

(assert (=> d!1176257 (= lt!1391178 e!2460209)))

(declare-fun c!688771 () Bool)

(assert (=> d!1176257 (= c!688771 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176257 (= (++!11073 lt!1391058 lt!1391063) lt!1391178)))

(declare-fun b!3971385 () Bool)

(declare-fun res!1607658 () Bool)

(assert (=> b!3971385 (=> (not res!1607658) (not e!2460210))))

(assert (=> b!3971385 (= res!1607658 (= (size!31723 lt!1391178) (+ (size!31723 lt!1391058) (size!31723 lt!1391063))))))

(declare-fun b!3971383 () Bool)

(assert (=> b!3971383 (= e!2460209 lt!1391063)))

(assert (= (and d!1176257 c!688771) b!3971383))

(assert (= (and d!1176257 (not c!688771)) b!3971384))

(assert (= (and d!1176257 res!1607657) b!3971385))

(assert (= (and b!3971385 res!1607658) b!3971386))

(declare-fun m!4541675 () Bool)

(assert (=> b!3971384 m!4541675))

(declare-fun m!4541677 () Bool)

(assert (=> d!1176257 m!4541677))

(assert (=> d!1176257 m!4541621))

(declare-fun m!4541679 () Bool)

(assert (=> d!1176257 m!4541679))

(declare-fun m!4541681 () Bool)

(assert (=> b!3971385 m!4541681))

(assert (=> b!3971385 m!4541443))

(declare-fun m!4541683 () Bool)

(assert (=> b!3971385 m!4541683))

(assert (=> b!3971185 d!1176257))

(declare-fun d!1176259 () Bool)

(declare-fun lt!1391184 () List!42521)

(assert (=> d!1176259 (= (++!11073 lt!1391058 lt!1391184) prefix!494)))

(declare-fun e!2460213 () List!42521)

(assert (=> d!1176259 (= lt!1391184 e!2460213)))

(declare-fun c!688774 () Bool)

(assert (=> d!1176259 (= c!688774 (is-Cons!42397 lt!1391058))))

(assert (=> d!1176259 (>= (size!31723 prefix!494) (size!31723 lt!1391058))))

(assert (=> d!1176259 (= (getSuffix!2189 prefix!494 lt!1391058) lt!1391184)))

(declare-fun b!3971391 () Bool)

(assert (=> b!3971391 (= e!2460213 (getSuffix!2189 (tail!6192 prefix!494) (t!330888 lt!1391058)))))

(declare-fun b!3971392 () Bool)

(assert (=> b!3971392 (= e!2460213 prefix!494)))

(assert (= (and d!1176259 c!688774) b!3971391))

(assert (= (and d!1176259 (not c!688774)) b!3971392))

(declare-fun m!4541687 () Bool)

(assert (=> d!1176259 m!4541687))

(assert (=> d!1176259 m!4541445))

(assert (=> d!1176259 m!4541443))

(declare-fun m!4541689 () Bool)

(assert (=> b!3971391 m!4541689))

(assert (=> b!3971391 m!4541689))

(declare-fun m!4541691 () Bool)

(assert (=> b!3971391 m!4541691))

(assert (=> b!3971185 d!1176259))

(declare-fun b!3971393 () Bool)

(declare-fun e!2460216 () Bool)

(declare-fun e!2460214 () Bool)

(assert (=> b!3971393 (= e!2460216 e!2460214)))

(declare-fun res!1607662 () Bool)

(assert (=> b!3971393 (=> (not res!1607662) (not e!2460214))))

(assert (=> b!3971393 (= res!1607662 (not (is-Nil!42397 prefix!494)))))

(declare-fun b!3971396 () Bool)

(declare-fun e!2460215 () Bool)

(assert (=> b!3971396 (= e!2460215 (>= (size!31723 prefix!494) (size!31723 lt!1391058)))))

(declare-fun d!1176265 () Bool)

(assert (=> d!1176265 e!2460215))

(declare-fun res!1607661 () Bool)

(assert (=> d!1176265 (=> res!1607661 e!2460215)))

(declare-fun lt!1391185 () Bool)

(assert (=> d!1176265 (= res!1607661 (not lt!1391185))))

(assert (=> d!1176265 (= lt!1391185 e!2460216)))

(declare-fun res!1607660 () Bool)

(assert (=> d!1176265 (=> res!1607660 e!2460216)))

(assert (=> d!1176265 (= res!1607660 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176265 (= (isPrefix!3758 lt!1391058 prefix!494) lt!1391185)))

(declare-fun b!3971394 () Bool)

(declare-fun res!1607659 () Bool)

(assert (=> b!3971394 (=> (not res!1607659) (not e!2460214))))

(assert (=> b!3971394 (= res!1607659 (= (head!8460 lt!1391058) (head!8460 prefix!494)))))

(declare-fun b!3971395 () Bool)

(assert (=> b!3971395 (= e!2460214 (isPrefix!3758 (tail!6192 lt!1391058) (tail!6192 prefix!494)))))

(assert (= (and d!1176265 (not res!1607660)) b!3971393))

(assert (= (and b!3971393 res!1607662) b!3971394))

(assert (= (and b!3971394 res!1607659) b!3971395))

(assert (= (and d!1176265 (not res!1607661)) b!3971396))

(assert (=> b!3971396 m!4541445))

(assert (=> b!3971396 m!4541443))

(assert (=> b!3971394 m!4541655))

(declare-fun m!4541693 () Bool)

(assert (=> b!3971394 m!4541693))

(assert (=> b!3971395 m!4541659))

(assert (=> b!3971395 m!4541689))

(assert (=> b!3971395 m!4541659))

(assert (=> b!3971395 m!4541689))

(declare-fun m!4541695 () Bool)

(assert (=> b!3971395 m!4541695))

(assert (=> b!3971185 d!1176265))

(declare-fun d!1176267 () Bool)

(assert (=> d!1176267 (isPrefix!3758 lt!1391058 prefix!494)))

(declare-fun lt!1391188 () Unit!61049)

(declare-fun choose!23748 (List!42521 List!42521 List!42521) Unit!61049)

(assert (=> d!1176267 (= lt!1391188 (choose!23748 prefix!494 lt!1391058 lt!1391051))))

(assert (=> d!1176267 (isPrefix!3758 prefix!494 lt!1391051)))

(assert (=> d!1176267 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!336 prefix!494 lt!1391058 lt!1391051) lt!1391188)))

(declare-fun bs!587611 () Bool)

(assert (= bs!587611 d!1176267))

(assert (=> bs!587611 m!4541495))

(declare-fun m!4541697 () Bool)

(assert (=> bs!587611 m!4541697))

(assert (=> bs!587611 m!4541483))

(assert (=> b!3971185 d!1176267))

(declare-fun b!3971397 () Bool)

(declare-fun e!2460219 () Bool)

(declare-fun e!2460217 () Bool)

(assert (=> b!3971397 (= e!2460219 e!2460217)))

(declare-fun res!1607666 () Bool)

(assert (=> b!3971397 (=> (not res!1607666) (not e!2460217))))

(assert (=> b!3971397 (= res!1607666 (not (is-Nil!42397 suffix!1299)))))

(declare-fun b!3971400 () Bool)

(declare-fun e!2460218 () Bool)

(assert (=> b!3971400 (= e!2460218 (>= (size!31723 suffix!1299) (size!31723 newSuffix!27)))))

(declare-fun d!1176271 () Bool)

(assert (=> d!1176271 e!2460218))

(declare-fun res!1607665 () Bool)

(assert (=> d!1176271 (=> res!1607665 e!2460218)))

(declare-fun lt!1391189 () Bool)

(assert (=> d!1176271 (= res!1607665 (not lt!1391189))))

(assert (=> d!1176271 (= lt!1391189 e!2460219)))

(declare-fun res!1607664 () Bool)

(assert (=> d!1176271 (=> res!1607664 e!2460219)))

(assert (=> d!1176271 (= res!1607664 (is-Nil!42397 newSuffix!27))))

(assert (=> d!1176271 (= (isPrefix!3758 newSuffix!27 suffix!1299) lt!1391189)))

(declare-fun b!3971398 () Bool)

(declare-fun res!1607663 () Bool)

(assert (=> b!3971398 (=> (not res!1607663) (not e!2460217))))

(assert (=> b!3971398 (= res!1607663 (= (head!8460 newSuffix!27) (head!8460 suffix!1299)))))

(declare-fun b!3971399 () Bool)

(assert (=> b!3971399 (= e!2460217 (isPrefix!3758 (tail!6192 newSuffix!27) (tail!6192 suffix!1299)))))

(assert (= (and d!1176271 (not res!1607664)) b!3971397))

(assert (= (and b!3971397 res!1607666) b!3971398))

(assert (= (and b!3971398 res!1607663) b!3971399))

(assert (= (and d!1176271 (not res!1607665)) b!3971400))

(assert (=> b!3971400 m!4541437))

(assert (=> b!3971400 m!4541439))

(declare-fun m!4541699 () Bool)

(assert (=> b!3971398 m!4541699))

(declare-fun m!4541701 () Bool)

(assert (=> b!3971398 m!4541701))

(declare-fun m!4541703 () Bool)

(assert (=> b!3971399 m!4541703))

(declare-fun m!4541705 () Bool)

(assert (=> b!3971399 m!4541705))

(assert (=> b!3971399 m!4541703))

(assert (=> b!3971399 m!4541705))

(declare-fun m!4541707 () Bool)

(assert (=> b!3971399 m!4541707))

(assert (=> b!3971186 d!1176271))

(declare-fun b!3971455 () Bool)

(declare-fun e!2460249 () Bool)

(declare-fun e!2460250 () Bool)

(assert (=> b!3971455 (= e!2460249 e!2460250)))

(declare-fun res!1607696 () Bool)

(assert (=> b!3971455 (=> (not res!1607696) (not e!2460250))))

(declare-fun lt!1391210 () Option!9085)

(declare-fun isDefined!7012 (Option!9085) Bool)

(assert (=> b!3971455 (= res!1607696 (isDefined!7012 lt!1391210))))

(declare-fun b!3971456 () Bool)

(declare-fun res!1607697 () Bool)

(assert (=> b!3971456 (=> (not res!1607697) (not e!2460250))))

(declare-fun matchR!5553 (Regex!11576 List!42521) Bool)

(declare-fun get!13971 (Option!9085) tuple2!41654)

(assert (=> b!3971456 (= res!1607697 (matchR!5553 (regex!6671 (rule!9659 (_1!23961 (get!13971 lt!1391210)))) (list!15731 (charsOf!4487 (_1!23961 (get!13971 lt!1391210))))))))

(declare-fun b!3971457 () Bool)

(declare-fun res!1607694 () Bool)

(assert (=> b!3971457 (=> (not res!1607694) (not e!2460250))))

(assert (=> b!3971457 (= res!1607694 (= (list!15731 (charsOf!4487 (_1!23961 (get!13971 lt!1391210)))) (originalCharacters!7271 (_1!23961 (get!13971 lt!1391210)))))))

(declare-fun b!3971458 () Bool)

(declare-fun e!2460248 () Option!9085)

(declare-fun lt!1391208 () Option!9085)

(declare-fun lt!1391211 () Option!9085)

(assert (=> b!3971458 (= e!2460248 (ite (and (is-None!9084 lt!1391208) (is-None!9084 lt!1391211)) None!9084 (ite (is-None!9084 lt!1391211) lt!1391208 (ite (is-None!9084 lt!1391208) lt!1391211 (ite (>= (size!31722 (_1!23961 (v!39432 lt!1391208))) (size!31722 (_1!23961 (v!39432 lt!1391211)))) lt!1391208 lt!1391211)))))))

(declare-fun call!285612 () Option!9085)

(assert (=> b!3971458 (= lt!1391208 call!285612)))

(assert (=> b!3971458 (= lt!1391211 (maxPrefix!3558 thiss!21717 (t!330890 rules!2999) lt!1391051))))

(declare-fun b!3971459 () Bool)

(assert (=> b!3971459 (= e!2460250 (contains!8449 rules!2999 (rule!9659 (_1!23961 (get!13971 lt!1391210)))))))

(declare-fun d!1176273 () Bool)

(assert (=> d!1176273 e!2460249))

(declare-fun res!1607693 () Bool)

(assert (=> d!1176273 (=> res!1607693 e!2460249)))

(declare-fun isEmpty!25363 (Option!9085) Bool)

(assert (=> d!1176273 (= res!1607693 (isEmpty!25363 lt!1391210))))

(assert (=> d!1176273 (= lt!1391210 e!2460248)))

(declare-fun c!688787 () Bool)

(assert (=> d!1176273 (= c!688787 (and (is-Cons!42399 rules!2999) (is-Nil!42399 (t!330890 rules!2999))))))

(declare-fun lt!1391209 () Unit!61049)

(declare-fun lt!1391212 () Unit!61049)

(assert (=> d!1176273 (= lt!1391209 lt!1391212)))

(assert (=> d!1176273 (isPrefix!3758 lt!1391051 lt!1391051)))

(declare-fun lemmaIsPrefixRefl!2353 (List!42521 List!42521) Unit!61049)

(assert (=> d!1176273 (= lt!1391212 (lemmaIsPrefixRefl!2353 lt!1391051 lt!1391051))))

(declare-fun rulesValidInductive!2419 (LexerInterface!6260 List!42523) Bool)

(assert (=> d!1176273 (rulesValidInductive!2419 thiss!21717 rules!2999)))

(assert (=> d!1176273 (= (maxPrefix!3558 thiss!21717 rules!2999 lt!1391051) lt!1391210)))

(declare-fun b!3971454 () Bool)

(declare-fun res!1607695 () Bool)

(assert (=> b!3971454 (=> (not res!1607695) (not e!2460250))))

(assert (=> b!3971454 (= res!1607695 (< (size!31723 (_2!23961 (get!13971 lt!1391210))) (size!31723 lt!1391051)))))

(declare-fun bm!285607 () Bool)

(assert (=> bm!285607 (= call!285612 (maxPrefixOneRule!2592 thiss!21717 (h!47819 rules!2999) lt!1391051))))

(declare-fun b!3971460 () Bool)

(declare-fun res!1607692 () Bool)

(assert (=> b!3971460 (=> (not res!1607692) (not e!2460250))))

(assert (=> b!3971460 (= res!1607692 (= (++!11073 (list!15731 (charsOf!4487 (_1!23961 (get!13971 lt!1391210)))) (_2!23961 (get!13971 lt!1391210))) lt!1391051))))

(declare-fun b!3971461 () Bool)

(assert (=> b!3971461 (= e!2460248 call!285612)))

(declare-fun b!3971462 () Bool)

(declare-fun res!1607691 () Bool)

(assert (=> b!3971462 (=> (not res!1607691) (not e!2460250))))

(assert (=> b!3971462 (= res!1607691 (= (value!210759 (_1!23961 (get!13971 lt!1391210))) (apply!9882 (transformation!6671 (rule!9659 (_1!23961 (get!13971 lt!1391210)))) (seqFromList!4910 (originalCharacters!7271 (_1!23961 (get!13971 lt!1391210)))))))))

(assert (= (and d!1176273 c!688787) b!3971461))

(assert (= (and d!1176273 (not c!688787)) b!3971458))

(assert (= (or b!3971461 b!3971458) bm!285607))

(assert (= (and d!1176273 (not res!1607693)) b!3971455))

(assert (= (and b!3971455 res!1607696) b!3971457))

(assert (= (and b!3971457 res!1607694) b!3971454))

(assert (= (and b!3971454 res!1607695) b!3971460))

(assert (= (and b!3971460 res!1607692) b!3971462))

(assert (= (and b!3971462 res!1607691) b!3971456))

(assert (= (and b!3971456 res!1607697) b!3971459))

(declare-fun m!4541743 () Bool)

(assert (=> b!3971460 m!4541743))

(declare-fun m!4541745 () Bool)

(assert (=> b!3971460 m!4541745))

(assert (=> b!3971460 m!4541745))

(declare-fun m!4541747 () Bool)

(assert (=> b!3971460 m!4541747))

(assert (=> b!3971460 m!4541747))

(declare-fun m!4541749 () Bool)

(assert (=> b!3971460 m!4541749))

(assert (=> b!3971459 m!4541743))

(declare-fun m!4541751 () Bool)

(assert (=> b!3971459 m!4541751))

(declare-fun m!4541753 () Bool)

(assert (=> b!3971455 m!4541753))

(declare-fun m!4541755 () Bool)

(assert (=> b!3971458 m!4541755))

(assert (=> b!3971456 m!4541743))

(assert (=> b!3971456 m!4541745))

(assert (=> b!3971456 m!4541745))

(assert (=> b!3971456 m!4541747))

(assert (=> b!3971456 m!4541747))

(declare-fun m!4541757 () Bool)

(assert (=> b!3971456 m!4541757))

(declare-fun m!4541759 () Bool)

(assert (=> d!1176273 m!4541759))

(declare-fun m!4541761 () Bool)

(assert (=> d!1176273 m!4541761))

(declare-fun m!4541763 () Bool)

(assert (=> d!1176273 m!4541763))

(declare-fun m!4541765 () Bool)

(assert (=> d!1176273 m!4541765))

(assert (=> b!3971462 m!4541743))

(declare-fun m!4541767 () Bool)

(assert (=> b!3971462 m!4541767))

(assert (=> b!3971462 m!4541767))

(declare-fun m!4541769 () Bool)

(assert (=> b!3971462 m!4541769))

(declare-fun m!4541771 () Bool)

(assert (=> bm!285607 m!4541771))

(assert (=> b!3971454 m!4541743))

(declare-fun m!4541773 () Bool)

(assert (=> b!3971454 m!4541773))

(declare-fun m!4541775 () Bool)

(assert (=> b!3971454 m!4541775))

(assert (=> b!3971457 m!4541743))

(assert (=> b!3971457 m!4541745))

(assert (=> b!3971457 m!4541745))

(assert (=> b!3971457 m!4541747))

(assert (=> b!3971184 d!1176273))

(declare-fun b!3971466 () Bool)

(declare-fun e!2460252 () Bool)

(declare-fun lt!1391213 () List!42521)

(assert (=> b!3971466 (= e!2460252 (or (not (= suffix!1299 Nil!42397)) (= lt!1391213 prefix!494)))))

(declare-fun b!3971464 () Bool)

(declare-fun e!2460251 () List!42521)

(assert (=> b!3971464 (= e!2460251 (Cons!42397 (h!47817 prefix!494) (++!11073 (t!330888 prefix!494) suffix!1299)))))

(declare-fun d!1176289 () Bool)

(assert (=> d!1176289 e!2460252))

(declare-fun res!1607698 () Bool)

(assert (=> d!1176289 (=> (not res!1607698) (not e!2460252))))

(assert (=> d!1176289 (= res!1607698 (= (content!6434 lt!1391213) (set.union (content!6434 prefix!494) (content!6434 suffix!1299))))))

(assert (=> d!1176289 (= lt!1391213 e!2460251)))

(declare-fun c!688788 () Bool)

(assert (=> d!1176289 (= c!688788 (is-Nil!42397 prefix!494))))

(assert (=> d!1176289 (= (++!11073 prefix!494 suffix!1299) lt!1391213)))

(declare-fun b!3971465 () Bool)

(declare-fun res!1607699 () Bool)

(assert (=> b!3971465 (=> (not res!1607699) (not e!2460252))))

(assert (=> b!3971465 (= res!1607699 (= (size!31723 lt!1391213) (+ (size!31723 prefix!494) (size!31723 suffix!1299))))))

(declare-fun b!3971463 () Bool)

(assert (=> b!3971463 (= e!2460251 suffix!1299)))

(assert (= (and d!1176289 c!688788) b!3971463))

(assert (= (and d!1176289 (not c!688788)) b!3971464))

(assert (= (and d!1176289 res!1607698) b!3971465))

(assert (= (and b!3971465 res!1607699) b!3971466))

(declare-fun m!4541777 () Bool)

(assert (=> b!3971464 m!4541777))

(declare-fun m!4541779 () Bool)

(assert (=> d!1176289 m!4541779))

(declare-fun m!4541781 () Bool)

(assert (=> d!1176289 m!4541781))

(declare-fun m!4541783 () Bool)

(assert (=> d!1176289 m!4541783))

(declare-fun m!4541785 () Bool)

(assert (=> b!3971465 m!4541785))

(assert (=> b!3971465 m!4541445))

(assert (=> b!3971465 m!4541437))

(assert (=> b!3971184 d!1176289))

(declare-fun b!3971483 () Bool)

(declare-fun e!2460262 () Bool)

(declare-fun e!2460263 () Bool)

(assert (=> b!3971483 (= e!2460262 e!2460263)))

(declare-fun c!688794 () Bool)

(assert (=> b!3971483 (= c!688794 (is-IntegerValue!20704 (value!210759 token!484)))))

(declare-fun b!3971484 () Bool)

(declare-fun res!1607708 () Bool)

(declare-fun e!2460264 () Bool)

(assert (=> b!3971484 (=> res!1607708 e!2460264)))

(assert (=> b!3971484 (= res!1607708 (not (is-IntegerValue!20705 (value!210759 token!484))))))

(assert (=> b!3971484 (= e!2460263 e!2460264)))

(declare-fun b!3971485 () Bool)

(declare-fun inv!16 (TokenValue!6901) Bool)

(assert (=> b!3971485 (= e!2460262 (inv!16 (value!210759 token!484)))))

(declare-fun d!1176291 () Bool)

(declare-fun c!688793 () Bool)

(assert (=> d!1176291 (= c!688793 (is-IntegerValue!20703 (value!210759 token!484)))))

(assert (=> d!1176291 (= (inv!21 (value!210759 token!484)) e!2460262)))

(declare-fun b!3971486 () Bool)

(declare-fun inv!15 (TokenValue!6901) Bool)

(assert (=> b!3971486 (= e!2460264 (inv!15 (value!210759 token!484)))))

(declare-fun b!3971487 () Bool)

(declare-fun inv!17 (TokenValue!6901) Bool)

(assert (=> b!3971487 (= e!2460263 (inv!17 (value!210759 token!484)))))

(assert (= (and d!1176291 c!688793) b!3971485))

(assert (= (and d!1176291 (not c!688793)) b!3971483))

(assert (= (and b!3971483 c!688794) b!3971487))

(assert (= (and b!3971483 (not c!688794)) b!3971484))

(assert (= (and b!3971484 (not res!1607708)) b!3971486))

(declare-fun m!4541787 () Bool)

(assert (=> b!3971485 m!4541787))

(declare-fun m!4541789 () Bool)

(assert (=> b!3971486 m!4541789))

(declare-fun m!4541791 () Bool)

(assert (=> b!3971487 m!4541791))

(assert (=> b!3971205 d!1176291))

(declare-fun lt!1391214 () List!42521)

(declare-fun b!3971491 () Bool)

(declare-fun e!2460266 () Bool)

(assert (=> b!3971491 (= e!2460266 (or (not (= newSuffix!27 Nil!42397)) (= lt!1391214 prefix!494)))))

(declare-fun b!3971489 () Bool)

(declare-fun e!2460265 () List!42521)

(assert (=> b!3971489 (= e!2460265 (Cons!42397 (h!47817 prefix!494) (++!11073 (t!330888 prefix!494) newSuffix!27)))))

(declare-fun d!1176293 () Bool)

(assert (=> d!1176293 e!2460266))

(declare-fun res!1607709 () Bool)

(assert (=> d!1176293 (=> (not res!1607709) (not e!2460266))))

(assert (=> d!1176293 (= res!1607709 (= (content!6434 lt!1391214) (set.union (content!6434 prefix!494) (content!6434 newSuffix!27))))))

(assert (=> d!1176293 (= lt!1391214 e!2460265)))

(declare-fun c!688795 () Bool)

(assert (=> d!1176293 (= c!688795 (is-Nil!42397 prefix!494))))

(assert (=> d!1176293 (= (++!11073 prefix!494 newSuffix!27) lt!1391214)))

(declare-fun b!3971490 () Bool)

(declare-fun res!1607710 () Bool)

(assert (=> b!3971490 (=> (not res!1607710) (not e!2460266))))

(assert (=> b!3971490 (= res!1607710 (= (size!31723 lt!1391214) (+ (size!31723 prefix!494) (size!31723 newSuffix!27))))))

(declare-fun b!3971488 () Bool)

(assert (=> b!3971488 (= e!2460265 newSuffix!27)))

(assert (= (and d!1176293 c!688795) b!3971488))

(assert (= (and d!1176293 (not c!688795)) b!3971489))

(assert (= (and d!1176293 res!1607709) b!3971490))

(assert (= (and b!3971490 res!1607710) b!3971491))

(declare-fun m!4541795 () Bool)

(assert (=> b!3971489 m!4541795))

(declare-fun m!4541797 () Bool)

(assert (=> d!1176293 m!4541797))

(assert (=> d!1176293 m!4541781))

(declare-fun m!4541799 () Bool)

(assert (=> d!1176293 m!4541799))

(declare-fun m!4541801 () Bool)

(assert (=> b!3971490 m!4541801))

(assert (=> b!3971490 m!4541445))

(assert (=> b!3971490 m!4541439))

(assert (=> b!3971206 d!1176293))

(declare-fun e!2460268 () Bool)

(declare-fun lt!1391215 () List!42521)

(declare-fun b!3971495 () Bool)

(assert (=> b!3971495 (= e!2460268 (or (not (= newSuffixResult!27 Nil!42397)) (= lt!1391215 lt!1391058)))))

(declare-fun b!3971493 () Bool)

(declare-fun e!2460267 () List!42521)

(assert (=> b!3971493 (= e!2460267 (Cons!42397 (h!47817 lt!1391058) (++!11073 (t!330888 lt!1391058) newSuffixResult!27)))))

(declare-fun d!1176295 () Bool)

(assert (=> d!1176295 e!2460268))

(declare-fun res!1607711 () Bool)

(assert (=> d!1176295 (=> (not res!1607711) (not e!2460268))))

(assert (=> d!1176295 (= res!1607711 (= (content!6434 lt!1391215) (set.union (content!6434 lt!1391058) (content!6434 newSuffixResult!27))))))

(assert (=> d!1176295 (= lt!1391215 e!2460267)))

(declare-fun c!688796 () Bool)

(assert (=> d!1176295 (= c!688796 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176295 (= (++!11073 lt!1391058 newSuffixResult!27) lt!1391215)))

(declare-fun b!3971494 () Bool)

(declare-fun res!1607712 () Bool)

(assert (=> b!3971494 (=> (not res!1607712) (not e!2460268))))

(assert (=> b!3971494 (= res!1607712 (= (size!31723 lt!1391215) (+ (size!31723 lt!1391058) (size!31723 newSuffixResult!27))))))

(declare-fun b!3971492 () Bool)

(assert (=> b!3971492 (= e!2460267 newSuffixResult!27)))

(assert (= (and d!1176295 c!688796) b!3971492))

(assert (= (and d!1176295 (not c!688796)) b!3971493))

(assert (= (and d!1176295 res!1607711) b!3971494))

(assert (= (and b!3971494 res!1607712) b!3971495))

(declare-fun m!4541807 () Bool)

(assert (=> b!3971493 m!4541807))

(declare-fun m!4541809 () Bool)

(assert (=> d!1176295 m!4541809))

(assert (=> d!1176295 m!4541621))

(declare-fun m!4541811 () Bool)

(assert (=> d!1176295 m!4541811))

(declare-fun m!4541813 () Bool)

(assert (=> b!3971494 m!4541813))

(assert (=> b!3971494 m!4541443))

(declare-fun m!4541815 () Bool)

(assert (=> b!3971494 m!4541815))

(assert (=> b!3971206 d!1176295))

(declare-fun d!1176299 () Bool)

(declare-fun lt!1391217 () Int)

(assert (=> d!1176299 (>= lt!1391217 0)))

(declare-fun e!2460271 () Int)

(assert (=> d!1176299 (= lt!1391217 e!2460271)))

(declare-fun c!688798 () Bool)

(assert (=> d!1176299 (= c!688798 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176299 (= (size!31723 lt!1391058) lt!1391217)))

(declare-fun b!3971500 () Bool)

(assert (=> b!3971500 (= e!2460271 0)))

(declare-fun b!3971501 () Bool)

(assert (=> b!3971501 (= e!2460271 (+ 1 (size!31723 (t!330888 lt!1391058))))))

(assert (= (and d!1176299 c!688798) b!3971500))

(assert (= (and d!1176299 (not c!688798)) b!3971501))

(declare-fun m!4541817 () Bool)

(assert (=> b!3971501 m!4541817))

(assert (=> b!3971194 d!1176299))

(declare-fun d!1176301 () Bool)

(declare-fun lt!1391218 () Int)

(assert (=> d!1176301 (>= lt!1391218 0)))

(declare-fun e!2460272 () Int)

(assert (=> d!1176301 (= lt!1391218 e!2460272)))

(declare-fun c!688799 () Bool)

(assert (=> d!1176301 (= c!688799 (is-Nil!42397 prefix!494))))

(assert (=> d!1176301 (= (size!31723 prefix!494) lt!1391218)))

(declare-fun b!3971502 () Bool)

(assert (=> b!3971502 (= e!2460272 0)))

(declare-fun b!3971503 () Bool)

(assert (=> b!3971503 (= e!2460272 (+ 1 (size!31723 (t!330888 prefix!494))))))

(assert (= (and d!1176301 c!688799) b!3971502))

(assert (= (and d!1176301 (not c!688799)) b!3971503))

(declare-fun m!4541819 () Bool)

(assert (=> b!3971503 m!4541819))

(assert (=> b!3971194 d!1176301))

(declare-fun d!1176303 () Bool)

(declare-fun list!15733 (Conc!12882) List!42521)

(assert (=> d!1176303 (= (list!15731 (charsOf!4487 token!484)) (list!15733 (c!688747 (charsOf!4487 token!484))))))

(declare-fun bs!587613 () Bool)

(assert (= bs!587613 d!1176303))

(declare-fun m!4541831 () Bool)

(assert (=> bs!587613 m!4541831))

(assert (=> b!3971194 d!1176303))

(declare-fun d!1176307 () Bool)

(declare-fun lt!1391223 () BalanceConc!25358)

(assert (=> d!1176307 (= (list!15731 lt!1391223) (originalCharacters!7271 token!484))))

(declare-fun dynLambda!18070 (Int TokenValue!6901) BalanceConc!25358)

(assert (=> d!1176307 (= lt!1391223 (dynLambda!18070 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (value!210759 token!484)))))

(assert (=> d!1176307 (= (charsOf!4487 token!484) lt!1391223)))

(declare-fun b_lambda!116067 () Bool)

(assert (=> (not b_lambda!116067) (not d!1176307)))

(declare-fun t!330899 () Bool)

(declare-fun tb!239633 () Bool)

(assert (=> (and b!3971201 (= (toChars!9018 (transformation!6671 (rule!9659 token!484))) (toChars!9018 (transformation!6671 (rule!9659 token!484)))) t!330899) tb!239633))

(declare-fun b!3971516 () Bool)

(declare-fun e!2460279 () Bool)

(declare-fun tp!1210978 () Bool)

(declare-fun inv!56657 (Conc!12882) Bool)

(assert (=> b!3971516 (= e!2460279 (and (inv!56657 (c!688747 (dynLambda!18070 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (value!210759 token!484)))) tp!1210978))))

(declare-fun result!290176 () Bool)

(declare-fun inv!56658 (BalanceConc!25358) Bool)

(assert (=> tb!239633 (= result!290176 (and (inv!56658 (dynLambda!18070 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (value!210759 token!484))) e!2460279))))

(assert (= tb!239633 b!3971516))

(declare-fun m!4541851 () Bool)

(assert (=> b!3971516 m!4541851))

(declare-fun m!4541853 () Bool)

(assert (=> tb!239633 m!4541853))

(assert (=> d!1176307 t!330899))

(declare-fun b_and!305311 () Bool)

(assert (= b_and!305289 (and (=> t!330899 result!290176) b_and!305311)))

(declare-fun t!330901 () Bool)

(declare-fun tb!239635 () Bool)

(assert (=> (and b!3971204 (= (toChars!9018 (transformation!6671 (h!47819 rules!2999))) (toChars!9018 (transformation!6671 (rule!9659 token!484)))) t!330901) tb!239635))

(declare-fun result!290180 () Bool)

(assert (= result!290180 result!290176))

(assert (=> d!1176307 t!330901))

(declare-fun b_and!305313 () Bool)

(assert (= b_and!305293 (and (=> t!330901 result!290180) b_and!305313)))

(declare-fun m!4541855 () Bool)

(assert (=> d!1176307 m!4541855))

(declare-fun m!4541857 () Bool)

(assert (=> d!1176307 m!4541857))

(assert (=> b!3971194 d!1176307))

(declare-fun d!1176313 () Bool)

(declare-fun res!1607723 () Bool)

(declare-fun e!2460282 () Bool)

(assert (=> d!1176313 (=> (not res!1607723) (not e!2460282))))

(declare-fun isEmpty!25364 (List!42521) Bool)

(assert (=> d!1176313 (= res!1607723 (not (isEmpty!25364 (originalCharacters!7271 token!484))))))

(assert (=> d!1176313 (= (inv!56654 token!484) e!2460282)))

(declare-fun b!3971521 () Bool)

(declare-fun res!1607724 () Bool)

(assert (=> b!3971521 (=> (not res!1607724) (not e!2460282))))

(assert (=> b!3971521 (= res!1607724 (= (originalCharacters!7271 token!484) (list!15731 (dynLambda!18070 (toChars!9018 (transformation!6671 (rule!9659 token!484))) (value!210759 token!484)))))))

(declare-fun b!3971522 () Bool)

(assert (=> b!3971522 (= e!2460282 (= (size!31722 token!484) (size!31723 (originalCharacters!7271 token!484))))))

(assert (= (and d!1176313 res!1607723) b!3971521))

(assert (= (and b!3971521 res!1607724) b!3971522))

(declare-fun b_lambda!116069 () Bool)

(assert (=> (not b_lambda!116069) (not b!3971521)))

(assert (=> b!3971521 t!330899))

(declare-fun b_and!305315 () Bool)

(assert (= b_and!305311 (and (=> t!330899 result!290176) b_and!305315)))

(assert (=> b!3971521 t!330901))

(declare-fun b_and!305317 () Bool)

(assert (= b_and!305313 (and (=> t!330901 result!290180) b_and!305317)))

(declare-fun m!4541859 () Bool)

(assert (=> d!1176313 m!4541859))

(assert (=> b!3971521 m!4541857))

(assert (=> b!3971521 m!4541857))

(declare-fun m!4541861 () Bool)

(assert (=> b!3971521 m!4541861))

(declare-fun m!4541863 () Bool)

(assert (=> b!3971522 m!4541863))

(assert (=> start!373642 d!1176313))

(declare-fun lt!1391227 () List!42521)

(declare-fun e!2460284 () Bool)

(declare-fun b!3971526 () Bool)

(assert (=> b!3971526 (= e!2460284 (or (not (= lt!1391071 Nil!42397)) (= lt!1391227 lt!1391058)))))

(declare-fun b!3971524 () Bool)

(declare-fun e!2460283 () List!42521)

(assert (=> b!3971524 (= e!2460283 (Cons!42397 (h!47817 lt!1391058) (++!11073 (t!330888 lt!1391058) lt!1391071)))))

(declare-fun d!1176315 () Bool)

(assert (=> d!1176315 e!2460284))

(declare-fun res!1607725 () Bool)

(assert (=> d!1176315 (=> (not res!1607725) (not e!2460284))))

(assert (=> d!1176315 (= res!1607725 (= (content!6434 lt!1391227) (set.union (content!6434 lt!1391058) (content!6434 lt!1391071))))))

(assert (=> d!1176315 (= lt!1391227 e!2460283)))

(declare-fun c!688802 () Bool)

(assert (=> d!1176315 (= c!688802 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176315 (= (++!11073 lt!1391058 lt!1391071) lt!1391227)))

(declare-fun b!3971525 () Bool)

(declare-fun res!1607726 () Bool)

(assert (=> b!3971525 (=> (not res!1607726) (not e!2460284))))

(assert (=> b!3971525 (= res!1607726 (= (size!31723 lt!1391227) (+ (size!31723 lt!1391058) (size!31723 lt!1391071))))))

(declare-fun b!3971523 () Bool)

(assert (=> b!3971523 (= e!2460283 lt!1391071)))

(assert (= (and d!1176315 c!688802) b!3971523))

(assert (= (and d!1176315 (not c!688802)) b!3971524))

(assert (= (and d!1176315 res!1607725) b!3971525))

(assert (= (and b!3971525 res!1607726) b!3971526))

(declare-fun m!4541865 () Bool)

(assert (=> b!3971524 m!4541865))

(declare-fun m!4541867 () Bool)

(assert (=> d!1176315 m!4541867))

(assert (=> d!1176315 m!4541621))

(declare-fun m!4541869 () Bool)

(assert (=> d!1176315 m!4541869))

(declare-fun m!4541871 () Bool)

(assert (=> b!3971525 m!4541871))

(assert (=> b!3971525 m!4541443))

(declare-fun m!4541875 () Bool)

(assert (=> b!3971525 m!4541875))

(assert (=> b!3971183 d!1176315))

(declare-fun e!2460286 () Bool)

(declare-fun b!3971530 () Bool)

(declare-fun lt!1391228 () List!42521)

(assert (=> b!3971530 (= e!2460286 (or (not (= suffix!1299 Nil!42397)) (= lt!1391228 lt!1391064)))))

(declare-fun b!3971528 () Bool)

(declare-fun e!2460285 () List!42521)

(assert (=> b!3971528 (= e!2460285 (Cons!42397 (h!47817 lt!1391064) (++!11073 (t!330888 lt!1391064) suffix!1299)))))

(declare-fun d!1176317 () Bool)

(assert (=> d!1176317 e!2460286))

(declare-fun res!1607727 () Bool)

(assert (=> d!1176317 (=> (not res!1607727) (not e!2460286))))

(assert (=> d!1176317 (= res!1607727 (= (content!6434 lt!1391228) (set.union (content!6434 lt!1391064) (content!6434 suffix!1299))))))

(assert (=> d!1176317 (= lt!1391228 e!2460285)))

(declare-fun c!688803 () Bool)

(assert (=> d!1176317 (= c!688803 (is-Nil!42397 lt!1391064))))

(assert (=> d!1176317 (= (++!11073 lt!1391064 suffix!1299) lt!1391228)))

(declare-fun b!3971529 () Bool)

(declare-fun res!1607728 () Bool)

(assert (=> b!3971529 (=> (not res!1607728) (not e!2460286))))

(assert (=> b!3971529 (= res!1607728 (= (size!31723 lt!1391228) (+ (size!31723 lt!1391064) (size!31723 suffix!1299))))))

(declare-fun b!3971527 () Bool)

(assert (=> b!3971527 (= e!2460285 suffix!1299)))

(assert (= (and d!1176317 c!688803) b!3971527))

(assert (= (and d!1176317 (not c!688803)) b!3971528))

(assert (= (and d!1176317 res!1607727) b!3971529))

(assert (= (and b!3971529 res!1607728) b!3971530))

(declare-fun m!4541881 () Bool)

(assert (=> b!3971528 m!4541881))

(declare-fun m!4541883 () Bool)

(assert (=> d!1176317 m!4541883))

(declare-fun m!4541885 () Bool)

(assert (=> d!1176317 m!4541885))

(assert (=> d!1176317 m!4541783))

(declare-fun m!4541887 () Bool)

(assert (=> b!3971529 m!4541887))

(declare-fun m!4541889 () Bool)

(assert (=> b!3971529 m!4541889))

(assert (=> b!3971529 m!4541437))

(assert (=> b!3971183 d!1176317))

(declare-fun lt!1391230 () List!42521)

(declare-fun b!3971538 () Bool)

(declare-fun e!2460290 () Bool)

(assert (=> b!3971538 (= e!2460290 (or (not (= suffix!1299 Nil!42397)) (= lt!1391230 lt!1391063)))))

(declare-fun b!3971536 () Bool)

(declare-fun e!2460289 () List!42521)

(assert (=> b!3971536 (= e!2460289 (Cons!42397 (h!47817 lt!1391063) (++!11073 (t!330888 lt!1391063) suffix!1299)))))

(declare-fun d!1176321 () Bool)

(assert (=> d!1176321 e!2460290))

(declare-fun res!1607731 () Bool)

(assert (=> d!1176321 (=> (not res!1607731) (not e!2460290))))

(assert (=> d!1176321 (= res!1607731 (= (content!6434 lt!1391230) (set.union (content!6434 lt!1391063) (content!6434 suffix!1299))))))

(assert (=> d!1176321 (= lt!1391230 e!2460289)))

(declare-fun c!688805 () Bool)

(assert (=> d!1176321 (= c!688805 (is-Nil!42397 lt!1391063))))

(assert (=> d!1176321 (= (++!11073 lt!1391063 suffix!1299) lt!1391230)))

(declare-fun b!3971537 () Bool)

(declare-fun res!1607732 () Bool)

(assert (=> b!3971537 (=> (not res!1607732) (not e!2460290))))

(assert (=> b!3971537 (= res!1607732 (= (size!31723 lt!1391230) (+ (size!31723 lt!1391063) (size!31723 suffix!1299))))))

(declare-fun b!3971535 () Bool)

(assert (=> b!3971535 (= e!2460289 suffix!1299)))

(assert (= (and d!1176321 c!688805) b!3971535))

(assert (= (and d!1176321 (not c!688805)) b!3971536))

(assert (= (and d!1176321 res!1607731) b!3971537))

(assert (= (and b!3971537 res!1607732) b!3971538))

(declare-fun m!4541891 () Bool)

(assert (=> b!3971536 m!4541891))

(declare-fun m!4541893 () Bool)

(assert (=> d!1176321 m!4541893))

(assert (=> d!1176321 m!4541679))

(assert (=> d!1176321 m!4541783))

(declare-fun m!4541895 () Bool)

(assert (=> b!3971537 m!4541895))

(assert (=> b!3971537 m!4541683))

(assert (=> b!3971537 m!4541437))

(assert (=> b!3971183 d!1176321))

(declare-fun d!1176323 () Bool)

(assert (=> d!1176323 (= (++!11073 (++!11073 lt!1391058 lt!1391063) suffix!1299) (++!11073 lt!1391058 (++!11073 lt!1391063 suffix!1299)))))

(declare-fun lt!1391234 () Unit!61049)

(declare-fun choose!23749 (List!42521 List!42521 List!42521) Unit!61049)

(assert (=> d!1176323 (= lt!1391234 (choose!23749 lt!1391058 lt!1391063 suffix!1299))))

(assert (=> d!1176323 (= (lemmaConcatAssociativity!2393 lt!1391058 lt!1391063 suffix!1299) lt!1391234)))

(declare-fun bs!587615 () Bool)

(assert (= bs!587615 d!1176323))

(assert (=> bs!587615 m!4541471))

(declare-fun m!4541907 () Bool)

(assert (=> bs!587615 m!4541907))

(assert (=> bs!587615 m!4541491))

(declare-fun m!4541909 () Bool)

(assert (=> bs!587615 m!4541909))

(assert (=> bs!587615 m!4541491))

(assert (=> bs!587615 m!4541471))

(declare-fun m!4541911 () Bool)

(assert (=> bs!587615 m!4541911))

(assert (=> b!3971183 d!1176323))

(declare-fun d!1176327 () Bool)

(assert (=> d!1176327 (= (isEmpty!25361 rules!2999) (is-Nil!42399 rules!2999))))

(assert (=> b!3971192 d!1176327))

(declare-fun d!1176331 () Bool)

(assert (=> d!1176331 (= (inv!56650 (tag!7531 (h!47819 rules!2999))) (= (mod (str.len (value!210758 (tag!7531 (h!47819 rules!2999)))) 2) 0))))

(assert (=> b!3971203 d!1176331))

(declare-fun d!1176333 () Bool)

(declare-fun res!1607735 () Bool)

(declare-fun e!2460293 () Bool)

(assert (=> d!1176333 (=> (not res!1607735) (not e!2460293))))

(assert (=> d!1176333 (= res!1607735 (semiInverseModEq!2866 (toChars!9018 (transformation!6671 (h!47819 rules!2999))) (toValue!9159 (transformation!6671 (h!47819 rules!2999)))))))

(assert (=> d!1176333 (= (inv!56653 (transformation!6671 (h!47819 rules!2999))) e!2460293)))

(declare-fun b!3971543 () Bool)

(assert (=> b!3971543 (= e!2460293 (equivClasses!2765 (toChars!9018 (transformation!6671 (h!47819 rules!2999))) (toValue!9159 (transformation!6671 (h!47819 rules!2999)))))))

(assert (= (and d!1176333 res!1607735) b!3971543))

(declare-fun m!4541923 () Bool)

(assert (=> d!1176333 m!4541923))

(declare-fun m!4541925 () Bool)

(assert (=> b!3971543 m!4541925))

(assert (=> b!3971203 d!1176333))

(declare-fun d!1176337 () Bool)

(assert (=> d!1176337 (isPrefix!3758 lt!1391058 (++!11073 lt!1391058 suffixResult!105))))

(declare-fun lt!1391239 () Unit!61049)

(declare-fun choose!23750 (List!42521 List!42521) Unit!61049)

(assert (=> d!1176337 (= lt!1391239 (choose!23750 lt!1391058 suffixResult!105))))

(assert (=> d!1176337 (= (lemmaConcatTwoListThenFirstIsPrefix!2601 lt!1391058 suffixResult!105) lt!1391239)))

(declare-fun bs!587616 () Bool)

(assert (= bs!587616 d!1176337))

(assert (=> bs!587616 m!4541407))

(assert (=> bs!587616 m!4541407))

(declare-fun m!4541935 () Bool)

(assert (=> bs!587616 m!4541935))

(declare-fun m!4541937 () Bool)

(assert (=> bs!587616 m!4541937))

(assert (=> b!3971202 d!1176337))

(declare-fun b!3971549 () Bool)

(declare-fun e!2460299 () Bool)

(declare-fun e!2460297 () Bool)

(assert (=> b!3971549 (= e!2460299 e!2460297)))

(declare-fun res!1607740 () Bool)

(assert (=> b!3971549 (=> (not res!1607740) (not e!2460297))))

(assert (=> b!3971549 (= res!1607740 (not (is-Nil!42397 lt!1391051)))))

(declare-fun b!3971552 () Bool)

(declare-fun e!2460298 () Bool)

(assert (=> b!3971552 (= e!2460298 (>= (size!31723 lt!1391051) (size!31723 prefix!494)))))

(declare-fun d!1176345 () Bool)

(assert (=> d!1176345 e!2460298))

(declare-fun res!1607739 () Bool)

(assert (=> d!1176345 (=> res!1607739 e!2460298)))

(declare-fun lt!1391240 () Bool)

(assert (=> d!1176345 (= res!1607739 (not lt!1391240))))

(assert (=> d!1176345 (= lt!1391240 e!2460299)))

(declare-fun res!1607738 () Bool)

(assert (=> d!1176345 (=> res!1607738 e!2460299)))

(assert (=> d!1176345 (= res!1607738 (is-Nil!42397 prefix!494))))

(assert (=> d!1176345 (= (isPrefix!3758 prefix!494 lt!1391051) lt!1391240)))

(declare-fun b!3971550 () Bool)

(declare-fun res!1607737 () Bool)

(assert (=> b!3971550 (=> (not res!1607737) (not e!2460297))))

(assert (=> b!3971550 (= res!1607737 (= (head!8460 prefix!494) (head!8460 lt!1391051)))))

(declare-fun b!3971551 () Bool)

(assert (=> b!3971551 (= e!2460297 (isPrefix!3758 (tail!6192 prefix!494) (tail!6192 lt!1391051)))))

(assert (= (and d!1176345 (not res!1607738)) b!3971549))

(assert (= (and b!3971549 res!1607740) b!3971550))

(assert (= (and b!3971550 res!1607737) b!3971551))

(assert (= (and d!1176345 (not res!1607739)) b!3971552))

(assert (=> b!3971552 m!4541775))

(assert (=> b!3971552 m!4541445))

(assert (=> b!3971550 m!4541693))

(declare-fun m!4541939 () Bool)

(assert (=> b!3971550 m!4541939))

(assert (=> b!3971551 m!4541689))

(declare-fun m!4541941 () Bool)

(assert (=> b!3971551 m!4541941))

(assert (=> b!3971551 m!4541689))

(assert (=> b!3971551 m!4541941))

(declare-fun m!4541943 () Bool)

(assert (=> b!3971551 m!4541943))

(assert (=> b!3971202 d!1176345))

(declare-fun b!3971553 () Bool)

(declare-fun e!2460302 () Bool)

(declare-fun e!2460300 () Bool)

(assert (=> b!3971553 (= e!2460302 e!2460300)))

(declare-fun res!1607744 () Bool)

(assert (=> b!3971553 (=> (not res!1607744) (not e!2460300))))

(assert (=> b!3971553 (= res!1607744 (not (is-Nil!42397 lt!1391051)))))

(declare-fun b!3971556 () Bool)

(declare-fun e!2460301 () Bool)

(assert (=> b!3971556 (= e!2460301 (>= (size!31723 lt!1391051) (size!31723 lt!1391058)))))

(declare-fun d!1176347 () Bool)

(assert (=> d!1176347 e!2460301))

(declare-fun res!1607743 () Bool)

(assert (=> d!1176347 (=> res!1607743 e!2460301)))

(declare-fun lt!1391241 () Bool)

(assert (=> d!1176347 (= res!1607743 (not lt!1391241))))

(assert (=> d!1176347 (= lt!1391241 e!2460302)))

(declare-fun res!1607742 () Bool)

(assert (=> d!1176347 (=> res!1607742 e!2460302)))

(assert (=> d!1176347 (= res!1607742 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176347 (= (isPrefix!3758 lt!1391058 lt!1391051) lt!1391241)))

(declare-fun b!3971554 () Bool)

(declare-fun res!1607741 () Bool)

(assert (=> b!3971554 (=> (not res!1607741) (not e!2460300))))

(assert (=> b!3971554 (= res!1607741 (= (head!8460 lt!1391058) (head!8460 lt!1391051)))))

(declare-fun b!3971555 () Bool)

(assert (=> b!3971555 (= e!2460300 (isPrefix!3758 (tail!6192 lt!1391058) (tail!6192 lt!1391051)))))

(assert (= (and d!1176347 (not res!1607742)) b!3971553))

(assert (= (and b!3971553 res!1607744) b!3971554))

(assert (= (and b!3971554 res!1607741) b!3971555))

(assert (= (and d!1176347 (not res!1607743)) b!3971556))

(assert (=> b!3971556 m!4541775))

(assert (=> b!3971556 m!4541443))

(assert (=> b!3971554 m!4541655))

(assert (=> b!3971554 m!4541939))

(assert (=> b!3971555 m!4541659))

(assert (=> b!3971555 m!4541941))

(assert (=> b!3971555 m!4541659))

(assert (=> b!3971555 m!4541941))

(declare-fun m!4541945 () Bool)

(assert (=> b!3971555 m!4541945))

(assert (=> b!3971202 d!1176347))

(declare-fun d!1176349 () Bool)

(assert (=> d!1176349 (isPrefix!3758 prefix!494 (++!11073 prefix!494 suffix!1299))))

(declare-fun lt!1391242 () Unit!61049)

(assert (=> d!1176349 (= lt!1391242 (choose!23750 prefix!494 suffix!1299))))

(assert (=> d!1176349 (= (lemmaConcatTwoListThenFirstIsPrefix!2601 prefix!494 suffix!1299) lt!1391242)))

(declare-fun bs!587617 () Bool)

(assert (= bs!587617 d!1176349))

(assert (=> bs!587617 m!4541421))

(assert (=> bs!587617 m!4541421))

(declare-fun m!4541947 () Bool)

(assert (=> bs!587617 m!4541947))

(declare-fun m!4541949 () Bool)

(assert (=> bs!587617 m!4541949))

(assert (=> b!3971202 d!1176349))

(declare-fun b!3971557 () Bool)

(declare-fun e!2460305 () Bool)

(declare-fun e!2460303 () Bool)

(assert (=> b!3971557 (= e!2460305 e!2460303)))

(declare-fun res!1607748 () Bool)

(assert (=> b!3971557 (=> (not res!1607748) (not e!2460303))))

(assert (=> b!3971557 (= res!1607748 (not (is-Nil!42397 lt!1391054)))))

(declare-fun b!3971560 () Bool)

(declare-fun e!2460304 () Bool)

(assert (=> b!3971560 (= e!2460304 (>= (size!31723 lt!1391054) (size!31723 lt!1391058)))))

(declare-fun d!1176351 () Bool)

(assert (=> d!1176351 e!2460304))

(declare-fun res!1607747 () Bool)

(assert (=> d!1176351 (=> res!1607747 e!2460304)))

(declare-fun lt!1391243 () Bool)

(assert (=> d!1176351 (= res!1607747 (not lt!1391243))))

(assert (=> d!1176351 (= lt!1391243 e!2460305)))

(declare-fun res!1607746 () Bool)

(assert (=> d!1176351 (=> res!1607746 e!2460305)))

(assert (=> d!1176351 (= res!1607746 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176351 (= (isPrefix!3758 lt!1391058 lt!1391054) lt!1391243)))

(declare-fun b!3971558 () Bool)

(declare-fun res!1607745 () Bool)

(assert (=> b!3971558 (=> (not res!1607745) (not e!2460303))))

(assert (=> b!3971558 (= res!1607745 (= (head!8460 lt!1391058) (head!8460 lt!1391054)))))

(declare-fun b!3971559 () Bool)

(assert (=> b!3971559 (= e!2460303 (isPrefix!3758 (tail!6192 lt!1391058) (tail!6192 lt!1391054)))))

(assert (= (and d!1176351 (not res!1607746)) b!3971557))

(assert (= (and b!3971557 res!1607748) b!3971558))

(assert (= (and b!3971558 res!1607745) b!3971559))

(assert (= (and d!1176351 (not res!1607747)) b!3971560))

(declare-fun m!4541951 () Bool)

(assert (=> b!3971560 m!4541951))

(assert (=> b!3971560 m!4541443))

(assert (=> b!3971558 m!4541655))

(declare-fun m!4541953 () Bool)

(assert (=> b!3971558 m!4541953))

(assert (=> b!3971559 m!4541659))

(declare-fun m!4541955 () Bool)

(assert (=> b!3971559 m!4541955))

(assert (=> b!3971559 m!4541659))

(assert (=> b!3971559 m!4541955))

(declare-fun m!4541957 () Bool)

(assert (=> b!3971559 m!4541957))

(assert (=> b!3971202 d!1176351))

(declare-fun d!1176353 () Bool)

(declare-fun dynLambda!18071 (Int BalanceConc!25358) TokenValue!6901)

(assert (=> d!1176353 (= (apply!9882 (transformation!6671 (rule!9659 token!484)) (seqFromList!4910 lt!1391058)) (dynLambda!18071 (toValue!9159 (transformation!6671 (rule!9659 token!484))) (seqFromList!4910 lt!1391058)))))

(declare-fun b_lambda!116071 () Bool)

(assert (=> (not b_lambda!116071) (not d!1176353)))

(declare-fun t!330903 () Bool)

(declare-fun tb!239637 () Bool)

(assert (=> (and b!3971201 (= (toValue!9159 (transformation!6671 (rule!9659 token!484))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))) t!330903) tb!239637))

(declare-fun result!290182 () Bool)

(assert (=> tb!239637 (= result!290182 (inv!21 (dynLambda!18071 (toValue!9159 (transformation!6671 (rule!9659 token!484))) (seqFromList!4910 lt!1391058))))))

(declare-fun m!4541959 () Bool)

(assert (=> tb!239637 m!4541959))

(assert (=> d!1176353 t!330903))

(declare-fun b_and!305319 () Bool)

(assert (= b_and!305287 (and (=> t!330903 result!290182) b_and!305319)))

(declare-fun tb!239639 () Bool)

(declare-fun t!330905 () Bool)

(assert (=> (and b!3971204 (= (toValue!9159 (transformation!6671 (h!47819 rules!2999))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))) t!330905) tb!239639))

(declare-fun result!290186 () Bool)

(assert (= result!290186 result!290182))

(assert (=> d!1176353 t!330905))

(declare-fun b_and!305321 () Bool)

(assert (= b_and!305291 (and (=> t!330905 result!290186) b_and!305321)))

(assert (=> d!1176353 m!4541429))

(declare-fun m!4541961 () Bool)

(assert (=> d!1176353 m!4541961))

(assert (=> b!3971191 d!1176353))

(declare-fun b!3971590 () Bool)

(declare-fun e!2460329 () Bool)

(declare-fun lt!1391264 () Option!9085)

(assert (=> b!3971590 (= e!2460329 (= (size!31722 (_1!23961 (get!13971 lt!1391264))) (size!31723 (originalCharacters!7271 (_1!23961 (get!13971 lt!1391264))))))))

(declare-fun d!1176355 () Bool)

(declare-fun e!2460327 () Bool)

(assert (=> d!1176355 e!2460327))

(declare-fun res!1607770 () Bool)

(assert (=> d!1176355 (=> res!1607770 e!2460327)))

(assert (=> d!1176355 (= res!1607770 (isEmpty!25363 lt!1391264))))

(declare-fun e!2460328 () Option!9085)

(assert (=> d!1176355 (= lt!1391264 e!2460328)))

(declare-fun c!688811 () Bool)

(declare-datatypes ((tuple2!41658 0))(
  ( (tuple2!41659 (_1!23963 List!42521) (_2!23963 List!42521)) )
))
(declare-fun lt!1391266 () tuple2!41658)

(assert (=> d!1176355 (= c!688811 (isEmpty!25364 (_1!23963 lt!1391266)))))

(declare-fun findLongestMatch!1216 (Regex!11576 List!42521) tuple2!41658)

(assert (=> d!1176355 (= lt!1391266 (findLongestMatch!1216 (regex!6671 (rule!9659 token!484)) lt!1391051))))

(assert (=> d!1176355 (ruleValid!2603 thiss!21717 (rule!9659 token!484))))

(assert (=> d!1176355 (= (maxPrefixOneRule!2592 thiss!21717 (rule!9659 token!484) lt!1391051) lt!1391264)))

(declare-fun b!3971591 () Bool)

(declare-fun res!1607773 () Bool)

(assert (=> b!3971591 (=> (not res!1607773) (not e!2460329))))

(assert (=> b!3971591 (= res!1607773 (= (++!11073 (list!15731 (charsOf!4487 (_1!23961 (get!13971 lt!1391264)))) (_2!23961 (get!13971 lt!1391264))) lt!1391051))))

(declare-fun b!3971592 () Bool)

(declare-fun res!1607771 () Bool)

(assert (=> b!3971592 (=> (not res!1607771) (not e!2460329))))

(assert (=> b!3971592 (= res!1607771 (= (rule!9659 (_1!23961 (get!13971 lt!1391264))) (rule!9659 token!484)))))

(declare-fun b!3971593 () Bool)

(assert (=> b!3971593 (= e!2460327 e!2460329)))

(declare-fun res!1607776 () Bool)

(assert (=> b!3971593 (=> (not res!1607776) (not e!2460329))))

(assert (=> b!3971593 (= res!1607776 (matchR!5553 (regex!6671 (rule!9659 token!484)) (list!15731 (charsOf!4487 (_1!23961 (get!13971 lt!1391264))))))))

(declare-fun b!3971594 () Bool)

(declare-fun res!1607775 () Bool)

(assert (=> b!3971594 (=> (not res!1607775) (not e!2460329))))

(assert (=> b!3971594 (= res!1607775 (< (size!31723 (_2!23961 (get!13971 lt!1391264))) (size!31723 lt!1391051)))))

(declare-fun b!3971595 () Bool)

(declare-fun size!31726 (BalanceConc!25358) Int)

(assert (=> b!3971595 (= e!2460328 (Some!9084 (tuple2!41655 (Token!12481 (apply!9882 (transformation!6671 (rule!9659 token!484)) (seqFromList!4910 (_1!23963 lt!1391266))) (rule!9659 token!484) (size!31726 (seqFromList!4910 (_1!23963 lt!1391266))) (_1!23963 lt!1391266)) (_2!23963 lt!1391266))))))

(declare-fun lt!1391267 () Unit!61049)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1276 (Regex!11576 List!42521) Unit!61049)

(assert (=> b!3971595 (= lt!1391267 (longestMatchIsAcceptedByMatchOrIsEmpty!1276 (regex!6671 (rule!9659 token!484)) lt!1391051))))

(declare-fun res!1607774 () Bool)

(declare-fun findLongestMatchInner!1303 (Regex!11576 List!42521 Int List!42521 List!42521 Int) tuple2!41658)

(assert (=> b!3971595 (= res!1607774 (isEmpty!25364 (_1!23963 (findLongestMatchInner!1303 (regex!6671 (rule!9659 token!484)) Nil!42397 (size!31723 Nil!42397) lt!1391051 lt!1391051 (size!31723 lt!1391051)))))))

(declare-fun e!2460326 () Bool)

(assert (=> b!3971595 (=> res!1607774 e!2460326)))

(assert (=> b!3971595 e!2460326))

(declare-fun lt!1391265 () Unit!61049)

(assert (=> b!3971595 (= lt!1391265 lt!1391267)))

(declare-fun lt!1391268 () Unit!61049)

(declare-fun lemmaSemiInverse!1813 (TokenValueInjection!13230 BalanceConc!25358) Unit!61049)

(assert (=> b!3971595 (= lt!1391268 (lemmaSemiInverse!1813 (transformation!6671 (rule!9659 token!484)) (seqFromList!4910 (_1!23963 lt!1391266))))))

(declare-fun b!3971596 () Bool)

(declare-fun res!1607772 () Bool)

(assert (=> b!3971596 (=> (not res!1607772) (not e!2460329))))

(assert (=> b!3971596 (= res!1607772 (= (value!210759 (_1!23961 (get!13971 lt!1391264))) (apply!9882 (transformation!6671 (rule!9659 (_1!23961 (get!13971 lt!1391264)))) (seqFromList!4910 (originalCharacters!7271 (_1!23961 (get!13971 lt!1391264)))))))))

(declare-fun b!3971597 () Bool)

(assert (=> b!3971597 (= e!2460328 None!9084)))

(declare-fun b!3971598 () Bool)

(assert (=> b!3971598 (= e!2460326 (matchR!5553 (regex!6671 (rule!9659 token!484)) (_1!23963 (findLongestMatchInner!1303 (regex!6671 (rule!9659 token!484)) Nil!42397 (size!31723 Nil!42397) lt!1391051 lt!1391051 (size!31723 lt!1391051)))))))

(assert (= (and d!1176355 c!688811) b!3971597))

(assert (= (and d!1176355 (not c!688811)) b!3971595))

(assert (= (and b!3971595 (not res!1607774)) b!3971598))

(assert (= (and d!1176355 (not res!1607770)) b!3971593))

(assert (= (and b!3971593 res!1607776) b!3971591))

(assert (= (and b!3971591 res!1607773) b!3971594))

(assert (= (and b!3971594 res!1607775) b!3971592))

(assert (= (and b!3971592 res!1607771) b!3971596))

(assert (= (and b!3971596 res!1607772) b!3971590))

(declare-fun m!4541989 () Bool)

(assert (=> b!3971594 m!4541989))

(declare-fun m!4541991 () Bool)

(assert (=> b!3971594 m!4541991))

(assert (=> b!3971594 m!4541775))

(assert (=> b!3971593 m!4541989))

(declare-fun m!4541993 () Bool)

(assert (=> b!3971593 m!4541993))

(assert (=> b!3971593 m!4541993))

(declare-fun m!4541995 () Bool)

(assert (=> b!3971593 m!4541995))

(assert (=> b!3971593 m!4541995))

(declare-fun m!4541997 () Bool)

(assert (=> b!3971593 m!4541997))

(assert (=> b!3971592 m!4541989))

(assert (=> b!3971591 m!4541989))

(assert (=> b!3971591 m!4541993))

(assert (=> b!3971591 m!4541993))

(assert (=> b!3971591 m!4541995))

(assert (=> b!3971591 m!4541995))

(declare-fun m!4541999 () Bool)

(assert (=> b!3971591 m!4541999))

(assert (=> b!3971590 m!4541989))

(declare-fun m!4542001 () Bool)

(assert (=> b!3971590 m!4542001))

(declare-fun m!4542003 () Bool)

(assert (=> b!3971598 m!4542003))

(assert (=> b!3971598 m!4541775))

(assert (=> b!3971598 m!4542003))

(assert (=> b!3971598 m!4541775))

(declare-fun m!4542005 () Bool)

(assert (=> b!3971598 m!4542005))

(declare-fun m!4542007 () Bool)

(assert (=> b!3971598 m!4542007))

(declare-fun m!4542009 () Bool)

(assert (=> b!3971595 m!4542009))

(declare-fun m!4542011 () Bool)

(assert (=> b!3971595 m!4542011))

(assert (=> b!3971595 m!4542003))

(assert (=> b!3971595 m!4541775))

(assert (=> b!3971595 m!4542005))

(assert (=> b!3971595 m!4541775))

(assert (=> b!3971595 m!4542009))

(declare-fun m!4542013 () Bool)

(assert (=> b!3971595 m!4542013))

(declare-fun m!4542015 () Bool)

(assert (=> b!3971595 m!4542015))

(assert (=> b!3971595 m!4542009))

(declare-fun m!4542017 () Bool)

(assert (=> b!3971595 m!4542017))

(assert (=> b!3971595 m!4542009))

(declare-fun m!4542019 () Bool)

(assert (=> b!3971595 m!4542019))

(assert (=> b!3971595 m!4542003))

(assert (=> b!3971596 m!4541989))

(declare-fun m!4542021 () Bool)

(assert (=> b!3971596 m!4542021))

(assert (=> b!3971596 m!4542021))

(declare-fun m!4542023 () Bool)

(assert (=> b!3971596 m!4542023))

(declare-fun m!4542025 () Bool)

(assert (=> d!1176355 m!4542025))

(declare-fun m!4542027 () Bool)

(assert (=> d!1176355 m!4542027))

(declare-fun m!4542029 () Bool)

(assert (=> d!1176355 m!4542029))

(assert (=> d!1176355 m!4541411))

(assert (=> b!3971191 d!1176355))

(declare-fun d!1176371 () Bool)

(assert (=> d!1176371 (isPrefix!3758 lt!1391058 (++!11073 lt!1391058 lt!1391071))))

(declare-fun lt!1391269 () Unit!61049)

(assert (=> d!1176371 (= lt!1391269 (choose!23750 lt!1391058 lt!1391071))))

(assert (=> d!1176371 (= (lemmaConcatTwoListThenFirstIsPrefix!2601 lt!1391058 lt!1391071) lt!1391269)))

(declare-fun bs!587622 () Bool)

(assert (= bs!587622 d!1176371))

(assert (=> bs!587622 m!4541467))

(assert (=> bs!587622 m!4541467))

(declare-fun m!4542031 () Bool)

(assert (=> bs!587622 m!4542031))

(declare-fun m!4542033 () Bool)

(assert (=> bs!587622 m!4542033))

(assert (=> b!3971191 d!1176371))

(declare-fun b!3971599 () Bool)

(declare-fun e!2460332 () Bool)

(declare-fun e!2460330 () Bool)

(assert (=> b!3971599 (= e!2460332 e!2460330)))

(declare-fun res!1607780 () Bool)

(assert (=> b!3971599 (=> (not res!1607780) (not e!2460330))))

(assert (=> b!3971599 (= res!1607780 (not (is-Nil!42397 lt!1391072)))))

(declare-fun b!3971602 () Bool)

(declare-fun e!2460331 () Bool)

(assert (=> b!3971602 (= e!2460331 (>= (size!31723 lt!1391072) (size!31723 lt!1391058)))))

(declare-fun d!1176373 () Bool)

(assert (=> d!1176373 e!2460331))

(declare-fun res!1607779 () Bool)

(assert (=> d!1176373 (=> res!1607779 e!2460331)))

(declare-fun lt!1391270 () Bool)

(assert (=> d!1176373 (= res!1607779 (not lt!1391270))))

(assert (=> d!1176373 (= lt!1391270 e!2460332)))

(declare-fun res!1607778 () Bool)

(assert (=> d!1176373 (=> res!1607778 e!2460332)))

(assert (=> d!1176373 (= res!1607778 (is-Nil!42397 lt!1391058))))

(assert (=> d!1176373 (= (isPrefix!3758 lt!1391058 lt!1391072) lt!1391270)))

(declare-fun b!3971600 () Bool)

(declare-fun res!1607777 () Bool)

(assert (=> b!3971600 (=> (not res!1607777) (not e!2460330))))

(assert (=> b!3971600 (= res!1607777 (= (head!8460 lt!1391058) (head!8460 lt!1391072)))))

(declare-fun b!3971601 () Bool)

(assert (=> b!3971601 (= e!2460330 (isPrefix!3758 (tail!6192 lt!1391058) (tail!6192 lt!1391072)))))

(assert (= (and d!1176373 (not res!1607778)) b!3971599))

(assert (= (and b!3971599 res!1607780) b!3971600))

(assert (= (and b!3971600 res!1607777) b!3971601))

(assert (= (and d!1176373 (not res!1607779)) b!3971602))

(declare-fun m!4542035 () Bool)

(assert (=> b!3971602 m!4542035))

(assert (=> b!3971602 m!4541443))

(assert (=> b!3971600 m!4541655))

(declare-fun m!4542037 () Bool)

(assert (=> b!3971600 m!4542037))

(assert (=> b!3971601 m!4541659))

(declare-fun m!4542039 () Bool)

(assert (=> b!3971601 m!4542039))

(assert (=> b!3971601 m!4541659))

(assert (=> b!3971601 m!4542039))

(declare-fun m!4542041 () Bool)

(assert (=> b!3971601 m!4542041))

(assert (=> b!3971191 d!1176373))

(declare-fun d!1176375 () Bool)

(assert (=> d!1176375 (= lt!1391071 suffixResult!105)))

(declare-fun lt!1391273 () Unit!61049)

(declare-fun choose!23752 (List!42521 List!42521 List!42521 List!42521 List!42521) Unit!61049)

(assert (=> d!1176375 (= lt!1391273 (choose!23752 lt!1391058 lt!1391071 lt!1391058 suffixResult!105 lt!1391051))))

(assert (=> d!1176375 (isPrefix!3758 lt!1391058 lt!1391051)))

(assert (=> d!1176375 (= (lemmaSamePrefixThenSameSuffix!1945 lt!1391058 lt!1391071 lt!1391058 suffixResult!105 lt!1391051) lt!1391273)))

(declare-fun bs!587623 () Bool)

(assert (= bs!587623 d!1176375))

(declare-fun m!4542043 () Bool)

(assert (=> bs!587623 m!4542043))

(assert (=> bs!587623 m!4541485))

(assert (=> b!3971191 d!1176375))

(declare-fun d!1176377 () Bool)

(assert (=> d!1176377 (= (maxPrefixOneRule!2592 thiss!21717 (rule!9659 token!484) lt!1391051) (Some!9084 (tuple2!41655 (Token!12481 (apply!9882 (transformation!6671 (rule!9659 token!484)) (seqFromList!4910 lt!1391058)) (rule!9659 token!484) (size!31723 lt!1391058) lt!1391058) suffixResult!105)))))

(declare-fun lt!1391276 () Unit!61049)

(declare-fun choose!23753 (LexerInterface!6260 List!42523 List!42521 List!42521 List!42521 Rule!13142) Unit!61049)

(assert (=> d!1176377 (= lt!1391276 (choose!23753 thiss!21717 rules!2999 lt!1391058 lt!1391051 suffixResult!105 (rule!9659 token!484)))))

(assert (=> d!1176377 (not (isEmpty!25361 rules!2999))))

(assert (=> d!1176377 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1414 thiss!21717 rules!2999 lt!1391058 lt!1391051 suffixResult!105 (rule!9659 token!484)) lt!1391276)))

(declare-fun bs!587624 () Bool)

(assert (= bs!587624 d!1176377))

(assert (=> bs!587624 m!4541429))

(assert (=> bs!587624 m!4541441))

(assert (=> bs!587624 m!4541435))

(assert (=> bs!587624 m!4541429))

(assert (=> bs!587624 m!4541431))

(declare-fun m!4542045 () Bool)

(assert (=> bs!587624 m!4542045))

(assert (=> bs!587624 m!4541443))

(assert (=> b!3971191 d!1176377))

(declare-fun d!1176379 () Bool)

(declare-fun fromListB!2261 (List!42521) BalanceConc!25358)

(assert (=> d!1176379 (= (seqFromList!4910 lt!1391058) (fromListB!2261 lt!1391058))))

(declare-fun bs!587625 () Bool)

(assert (= bs!587625 d!1176379))

(declare-fun m!4542047 () Bool)

(assert (=> bs!587625 m!4542047))

(assert (=> b!3971191 d!1176379))

(declare-fun b!3971607 () Bool)

(declare-fun e!2460335 () Bool)

(declare-fun tp!1210981 () Bool)

(assert (=> b!3971607 (= e!2460335 (and tp_is_empty!20123 tp!1210981))))

(assert (=> b!3971200 (= tp!1210932 e!2460335)))

(assert (= (and b!3971200 (is-Cons!42397 (t!330888 newSuffix!27))) b!3971607))

(declare-fun b!3971620 () Bool)

(declare-fun e!2460338 () Bool)

(declare-fun tp!1210996 () Bool)

(assert (=> b!3971620 (= e!2460338 tp!1210996)))

(declare-fun b!3971621 () Bool)

(declare-fun tp!1210994 () Bool)

(declare-fun tp!1210995 () Bool)

(assert (=> b!3971621 (= e!2460338 (and tp!1210994 tp!1210995))))

(declare-fun b!3971619 () Bool)

(declare-fun tp!1210992 () Bool)

(declare-fun tp!1210993 () Bool)

(assert (=> b!3971619 (= e!2460338 (and tp!1210992 tp!1210993))))

(assert (=> b!3971189 (= tp!1210933 e!2460338)))

(declare-fun b!3971618 () Bool)

(assert (=> b!3971618 (= e!2460338 tp_is_empty!20123)))

(assert (= (and b!3971189 (is-ElementMatch!11576 (regex!6671 (rule!9659 token!484)))) b!3971618))

(assert (= (and b!3971189 (is-Concat!18478 (regex!6671 (rule!9659 token!484)))) b!3971619))

(assert (= (and b!3971189 (is-Star!11576 (regex!6671 (rule!9659 token!484)))) b!3971620))

(assert (= (and b!3971189 (is-Union!11576 (regex!6671 (rule!9659 token!484)))) b!3971621))

(declare-fun b!3971622 () Bool)

(declare-fun e!2460339 () Bool)

(declare-fun tp!1210997 () Bool)

(assert (=> b!3971622 (= e!2460339 (and tp_is_empty!20123 tp!1210997))))

(assert (=> b!3971205 (= tp!1210930 e!2460339)))

(assert (= (and b!3971205 (is-Cons!42397 (originalCharacters!7271 token!484))) b!3971622))

(declare-fun b!3971623 () Bool)

(declare-fun e!2460340 () Bool)

(declare-fun tp!1210998 () Bool)

(assert (=> b!3971623 (= e!2460340 (and tp_is_empty!20123 tp!1210998))))

(assert (=> b!3971190 (= tp!1210931 e!2460340)))

(assert (= (and b!3971190 (is-Cons!42397 (t!330888 suffix!1299))) b!3971623))

(declare-fun b!3971624 () Bool)

(declare-fun e!2460341 () Bool)

(declare-fun tp!1210999 () Bool)

(assert (=> b!3971624 (= e!2460341 (and tp_is_empty!20123 tp!1210999))))

(assert (=> b!3971195 (= tp!1210923 e!2460341)))

(assert (= (and b!3971195 (is-Cons!42397 (t!330888 newSuffixResult!27))) b!3971624))

(declare-fun b!3971625 () Bool)

(declare-fun e!2460342 () Bool)

(declare-fun tp!1211000 () Bool)

(assert (=> b!3971625 (= e!2460342 (and tp_is_empty!20123 tp!1211000))))

(assert (=> b!3971193 (= tp!1210921 e!2460342)))

(assert (= (and b!3971193 (is-Cons!42397 (t!330888 suffixResult!105))) b!3971625))

(declare-fun b!3971626 () Bool)

(declare-fun e!2460343 () Bool)

(declare-fun tp!1211001 () Bool)

(assert (=> b!3971626 (= e!2460343 (and tp_is_empty!20123 tp!1211001))))

(assert (=> b!3971199 (= tp!1210926 e!2460343)))

(assert (= (and b!3971199 (is-Cons!42397 (t!330888 prefix!494))) b!3971626))

(declare-fun b!3971637 () Bool)

(declare-fun b_free!110057 () Bool)

(declare-fun b_next!110761 () Bool)

(assert (=> b!3971637 (= b_free!110057 (not b_next!110761))))

(declare-fun tb!239645 () Bool)

(declare-fun t!330911 () Bool)

(assert (=> (and b!3971637 (= (toValue!9159 (transformation!6671 (h!47819 (t!330890 rules!2999)))) (toValue!9159 (transformation!6671 (rule!9659 token!484)))) t!330911) tb!239645))

(declare-fun result!290200 () Bool)

(assert (= result!290200 result!290182))

(assert (=> d!1176353 t!330911))

(declare-fun b_and!305327 () Bool)

(declare-fun tp!1211012 () Bool)

(assert (=> b!3971637 (= tp!1211012 (and (=> t!330911 result!290200) b_and!305327))))

(declare-fun b_free!110059 () Bool)

(declare-fun b_next!110763 () Bool)

(assert (=> b!3971637 (= b_free!110059 (not b_next!110763))))

(declare-fun t!330913 () Bool)

(declare-fun tb!239647 () Bool)

(assert (=> (and b!3971637 (= (toChars!9018 (transformation!6671 (h!47819 (t!330890 rules!2999)))) (toChars!9018 (transformation!6671 (rule!9659 token!484)))) t!330913) tb!239647))

(declare-fun result!290202 () Bool)

(assert (= result!290202 result!290176))

(assert (=> d!1176307 t!330913))

(assert (=> b!3971521 t!330913))

(declare-fun tp!1211013 () Bool)

(declare-fun b_and!305329 () Bool)

(assert (=> b!3971637 (= tp!1211013 (and (=> t!330913 result!290202) b_and!305329))))

(declare-fun e!2460354 () Bool)

(assert (=> b!3971637 (= e!2460354 (and tp!1211012 tp!1211013))))

(declare-fun e!2460353 () Bool)

(declare-fun b!3971636 () Bool)

(declare-fun tp!1211010 () Bool)

(assert (=> b!3971636 (= e!2460353 (and tp!1211010 (inv!56650 (tag!7531 (h!47819 (t!330890 rules!2999)))) (inv!56653 (transformation!6671 (h!47819 (t!330890 rules!2999)))) e!2460354))))

(declare-fun b!3971635 () Bool)

(declare-fun e!2460352 () Bool)

(declare-fun tp!1211011 () Bool)

(assert (=> b!3971635 (= e!2460352 (and e!2460353 tp!1211011))))

(assert (=> b!3971197 (= tp!1210922 e!2460352)))

(assert (= b!3971636 b!3971637))

(assert (= b!3971635 b!3971636))

(assert (= (and b!3971197 (is-Cons!42399 (t!330890 rules!2999))) b!3971635))

(declare-fun m!4542049 () Bool)

(assert (=> b!3971636 m!4542049))

(declare-fun m!4542051 () Bool)

(assert (=> b!3971636 m!4542051))

(declare-fun b!3971640 () Bool)

(declare-fun e!2460356 () Bool)

(declare-fun tp!1211018 () Bool)

(assert (=> b!3971640 (= e!2460356 tp!1211018)))

(declare-fun b!3971641 () Bool)

(declare-fun tp!1211016 () Bool)

(declare-fun tp!1211017 () Bool)

(assert (=> b!3971641 (= e!2460356 (and tp!1211016 tp!1211017))))

(declare-fun b!3971639 () Bool)

(declare-fun tp!1211014 () Bool)

(declare-fun tp!1211015 () Bool)

(assert (=> b!3971639 (= e!2460356 (and tp!1211014 tp!1211015))))

(assert (=> b!3971203 (= tp!1210928 e!2460356)))

(declare-fun b!3971638 () Bool)

(assert (=> b!3971638 (= e!2460356 tp_is_empty!20123)))

(assert (= (and b!3971203 (is-ElementMatch!11576 (regex!6671 (h!47819 rules!2999)))) b!3971638))

(assert (= (and b!3971203 (is-Concat!18478 (regex!6671 (h!47819 rules!2999)))) b!3971639))

(assert (= (and b!3971203 (is-Star!11576 (regex!6671 (h!47819 rules!2999)))) b!3971640))

(assert (= (and b!3971203 (is-Union!11576 (regex!6671 (h!47819 rules!2999)))) b!3971641))

(declare-fun b_lambda!116075 () Bool)

(assert (= b_lambda!116071 (or (and b!3971201 b_free!110041) (and b!3971204 b_free!110045 (= (toValue!9159 (transformation!6671 (h!47819 rules!2999))) (toValue!9159 (transformation!6671 (rule!9659 token!484))))) (and b!3971637 b_free!110057 (= (toValue!9159 (transformation!6671 (h!47819 (t!330890 rules!2999)))) (toValue!9159 (transformation!6671 (rule!9659 token!484))))) b_lambda!116075)))

(declare-fun b_lambda!116077 () Bool)

(assert (= b_lambda!116067 (or (and b!3971201 b_free!110043) (and b!3971204 b_free!110047 (= (toChars!9018 (transformation!6671 (h!47819 rules!2999))) (toChars!9018 (transformation!6671 (rule!9659 token!484))))) (and b!3971637 b_free!110059 (= (toChars!9018 (transformation!6671 (h!47819 (t!330890 rules!2999)))) (toChars!9018 (transformation!6671 (rule!9659 token!484))))) b_lambda!116077)))

(declare-fun b_lambda!116079 () Bool)

(assert (= b_lambda!116069 (or (and b!3971201 b_free!110043) (and b!3971204 b_free!110047 (= (toChars!9018 (transformation!6671 (h!47819 rules!2999))) (toChars!9018 (transformation!6671 (rule!9659 token!484))))) (and b!3971637 b_free!110059 (= (toChars!9018 (transformation!6671 (h!47819 (t!330890 rules!2999)))) (toChars!9018 (transformation!6671 (rule!9659 token!484))))) b_lambda!116079)))

(push 1)

(assert (not b!3971622))

(assert (not d!1176323))

(assert (not b_next!110749))

(assert (not b!3971641))

(assert b_and!305327)

(assert (not b!3971552))

(assert (not b!3971501))

(assert (not d!1176349))

(assert (not b!3971640))

(assert (not b!3971536))

(assert (not d!1176235))

(assert (not d!1176251))

(assert (not b!3971592))

(assert (not b!3971594))

(assert (not b!3971556))

(assert (not b!3971456))

(assert (not b!3971537))

(assert (not d!1176293))

(assert (not b!3971319))

(assert (not b!3971560))

(assert (not b!3971395))

(assert (not b!3971619))

(assert (not b!3971529))

(assert (not b!3971555))

(assert (not b!3971457))

(assert (not b!3971300))

(assert (not b!3971464))

(assert (not b!3971391))

(assert (not tb!239637))

(assert (not d!1176379))

(assert (not b!3971494))

(assert (not b!3971503))

(assert (not b!3971394))

(assert (not b!3971485))

(assert (not bm!285602))

(assert (not d!1176333))

(assert (not b!3971623))

(assert b_and!305315)

(assert (not d!1176243))

(assert (not b_lambda!116079))

(assert (not b!3971558))

(assert (not b!3971600))

(assert (not d!1176241))

(assert (not b_next!110747))

(assert (not b!3971384))

(assert (not d!1176317))

(assert (not b!3971524))

(assert (not b!3971493))

(assert (not b!3971396))

(assert (not d!1176377))

(assert (not b!3971490))

(assert b_and!305319)

(assert (not b_next!110763))

(assert (not b!3971385))

(assert (not d!1176337))

(assert (not b!3971636))

(assert (not d!1176255))

(assert (not b!3971551))

(assert (not b!3971554))

(assert (not b!3971635))

(assert (not b!3971458))

(assert (not b!3971516))

(assert (not b!3971550))

(assert (not d!1176229))

(assert (not b!3971382))

(assert (not b!3971522))

(assert (not b!3971590))

(assert (not b_next!110751))

(assert (not b!3971460))

(assert (not d!1176267))

(assert (not d!1176289))

(assert (not b!3971400))

(assert (not bm!285607))

(assert (not d!1176225))

(assert (not d!1176321))

(assert (not b!3971525))

(assert (not b!3971593))

(assert (not b!3971281))

(assert (not b_next!110745))

(assert (not d!1176375))

(assert (not b!3971521))

(assert (not b!3971298))

(assert (not b_lambda!116075))

(assert (not b!3971315))

(assert (not d!1176355))

(assert (not d!1176371))

(assert (not tb!239633))

(assert (not bm!285604))

(assert (not b!3971352))

(assert (not d!1176259))

(assert (not b!3971399))

(assert (not b!3971559))

(assert b_and!305321)

(assert tp_is_empty!20123)

(assert (not b!3971620))

(assert (not b!3971625))

(assert (not b!3971607))

(assert (not b!3971314))

(assert (not b!3971528))

(assert (not b!3971591))

(assert (not b!3971462))

(assert (not d!1176273))

(assert (not b_lambda!116077))

(assert (not b!3971621))

(assert (not d!1176295))

(assert b_and!305317)

(assert (not b!3971284))

(assert (not d!1176313))

(assert (not b!3971381))

(assert (not b!3971489))

(assert (not b!3971626))

(assert (not b!3971543))

(assert (not d!1176257))

(assert (not b_next!110761))

(assert b_and!305329)

(assert (not b!3971624))

(assert (not b!3971380))

(assert (not d!1176239))

(assert (not b!3971455))

(assert (not b!3971487))

(assert (not b!3971459))

(assert (not b!3971454))

(assert (not b!3971596))

(assert (not b!3971639))

(assert (not b!3971598))

(assert (not b!3971328))

(assert (not b!3971398))

(assert (not b!3971601))

(assert (not b!3971602))

(assert (not b!3971465))

(assert (not d!1176307))

(assert (not b!3971595))

(assert (not d!1176303))

(assert (not b!3971486))

(assert (not d!1176315))

(check-sat)

(pop 1)

(push 1)

(assert b_and!305315)

(assert (not b_next!110747))

(assert (not b_next!110751))

(assert (not b_next!110745))

(assert b_and!305321)

(assert b_and!305317)

(assert (not b_next!110749))

(assert b_and!305327)

(assert b_and!305319)

(assert (not b_next!110763))

(assert (not b_next!110761))

(assert b_and!305329)

(check-sat)

(pop 1)

