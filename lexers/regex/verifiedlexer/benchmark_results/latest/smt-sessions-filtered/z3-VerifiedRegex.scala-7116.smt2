; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377292 () Bool)

(assert start!377292)

(declare-fun b!4007129 () Bool)

(declare-fun b_free!111465 () Bool)

(declare-fun b_next!112169 () Bool)

(assert (=> b!4007129 (= b_free!111465 (not b_next!112169))))

(declare-fun tp!1219467 () Bool)

(declare-fun b_and!307767 () Bool)

(assert (=> b!4007129 (= tp!1219467 b_and!307767)))

(declare-fun b_free!111467 () Bool)

(declare-fun b_next!112171 () Bool)

(assert (=> b!4007129 (= b_free!111467 (not b_next!112171))))

(declare-fun tp!1219461 () Bool)

(declare-fun b_and!307769 () Bool)

(assert (=> b!4007129 (= tp!1219461 b_and!307769)))

(declare-fun b!4007134 () Bool)

(declare-fun b_free!111469 () Bool)

(declare-fun b_next!112173 () Bool)

(assert (=> b!4007134 (= b_free!111469 (not b_next!112173))))

(declare-fun tp!1219459 () Bool)

(declare-fun b_and!307771 () Bool)

(assert (=> b!4007134 (= tp!1219459 b_and!307771)))

(declare-fun b_free!111471 () Bool)

(declare-fun b_next!112175 () Bool)

(assert (=> b!4007134 (= b_free!111471 (not b_next!112175))))

(declare-fun tp!1219462 () Bool)

(declare-fun b_and!307773 () Bool)

(assert (=> b!4007134 (= tp!1219462 b_and!307773)))

(declare-fun e!2485050 () Bool)

(declare-fun b!4007126 () Bool)

(declare-fun tp!1219458 () Bool)

(declare-datatypes ((C!23636 0))(
  ( (C!23637 (val!13912 Int)) )
))
(declare-datatypes ((List!43020 0))(
  ( (Nil!42896) (Cons!42896 (h!48316 C!23636) (t!332621 List!43020)) )
))
(declare-datatypes ((IArray!26067 0))(
  ( (IArray!26068 (innerList!13091 List!43020)) )
))
(declare-datatypes ((Conc!13031 0))(
  ( (Node!13031 (left!32367 Conc!13031) (right!32697 Conc!13031) (csize!26292 Int) (cheight!13242 Int)) (Leaf!20148 (xs!16337 IArray!26067) (csize!26293 Int)) (Empty!13031) )
))
(declare-datatypes ((BalanceConc!25656 0))(
  ( (BalanceConc!25657 (c!692888 Conc!13031)) )
))
(declare-datatypes ((List!43021 0))(
  ( (Nil!42897) (Cons!42897 (h!48317 (_ BitVec 16)) (t!332622 List!43021)) )
))
(declare-datatypes ((TokenValue!7050 0))(
  ( (FloatLiteralValue!14100 (text!49795 List!43021)) (TokenValueExt!7049 (__x!26317 Int)) (Broken!35250 (value!214978 List!43021)) (Object!7173) (End!7050) (Def!7050) (Underscore!7050) (Match!7050) (Else!7050) (Error!7050) (Case!7050) (If!7050) (Extends!7050) (Abstract!7050) (Class!7050) (Val!7050) (DelimiterValue!14100 (del!7110 List!43021)) (KeywordValue!7056 (value!214979 List!43021)) (CommentValue!14100 (value!214980 List!43021)) (WhitespaceValue!14100 (value!214981 List!43021)) (IndentationValue!7050 (value!214982 List!43021)) (String!48967) (Int32!7050) (Broken!35251 (value!214983 List!43021)) (Boolean!7051) (Unit!61897) (OperatorValue!7053 (op!7110 List!43021)) (IdentifierValue!14100 (value!214984 List!43021)) (IdentifierValue!14101 (value!214985 List!43021)) (WhitespaceValue!14101 (value!214986 List!43021)) (True!14100) (False!14100) (Broken!35252 (value!214987 List!43021)) (Broken!35253 (value!214988 List!43021)) (True!14101) (RightBrace!7050) (RightBracket!7050) (Colon!7050) (Null!7050) (Comma!7050) (LeftBracket!7050) (False!14101) (LeftBrace!7050) (ImaginaryLiteralValue!7050 (text!49796 List!43021)) (StringLiteralValue!21150 (value!214989 List!43021)) (EOFValue!7050 (value!214990 List!43021)) (IdentValue!7050 (value!214991 List!43021)) (DelimiterValue!14101 (value!214992 List!43021)) (DedentValue!7050 (value!214993 List!43021)) (NewLineValue!7050 (value!214994 List!43021)) (IntegerValue!21150 (value!214995 (_ BitVec 32)) (text!49797 List!43021)) (IntegerValue!21151 (value!214996 Int) (text!49798 List!43021)) (Times!7050) (Or!7050) (Equal!7050) (Minus!7050) (Broken!35254 (value!214997 List!43021)) (And!7050) (Div!7050) (LessEqual!7050) (Mod!7050) (Concat!18775) (Not!7050) (Plus!7050) (SpaceValue!7050 (value!214998 List!43021)) (IntegerValue!21152 (value!214999 Int) (text!49799 List!43021)) (StringLiteralValue!21151 (text!49800 List!43021)) (FloatLiteralValue!14101 (text!49801 List!43021)) (BytesLiteralValue!7050 (value!215000 List!43021)) (CommentValue!14101 (value!215001 List!43021)) (StringLiteralValue!21152 (value!215002 List!43021)) (ErrorTokenValue!7050 (msg!7111 List!43021)) )
))
(declare-datatypes ((Regex!11725 0))(
  ( (ElementMatch!11725 (c!692889 C!23636)) (Concat!18776 (regOne!23962 Regex!11725) (regTwo!23962 Regex!11725)) (EmptyExpr!11725) (Star!11725 (reg!12054 Regex!11725)) (EmptyLang!11725) (Union!11725 (regOne!23963 Regex!11725) (regTwo!23963 Regex!11725)) )
))
(declare-datatypes ((String!48968 0))(
  ( (String!48969 (value!215003 String)) )
))
(declare-datatypes ((TokenValueInjection!13528 0))(
  ( (TokenValueInjection!13529 (toValue!9320 Int) (toChars!9179 Int)) )
))
(declare-datatypes ((Rule!13440 0))(
  ( (Rule!13441 (regex!6820 Regex!11725) (tag!7680 String!48968) (isSeparator!6820 Bool) (transformation!6820 TokenValueInjection!13528)) )
))
(declare-datatypes ((List!43022 0))(
  ( (Nil!42898) (Cons!42898 (h!48318 Rule!13440) (t!332623 List!43022)) )
))
(declare-fun rules!2999 () List!43022)

(declare-fun e!2485035 () Bool)

(declare-fun inv!57289 (String!48968) Bool)

(declare-fun inv!57292 (TokenValueInjection!13528) Bool)

(assert (=> b!4007126 (= e!2485035 (and tp!1219458 (inv!57289 (tag!7680 (h!48318 rules!2999))) (inv!57292 (transformation!6820 (h!48318 rules!2999))) e!2485050))))

(declare-fun b!4007127 () Bool)

(declare-fun res!1628423 () Bool)

(declare-fun e!2485037 () Bool)

(assert (=> b!4007127 (=> (not res!1628423) (not e!2485037))))

(declare-datatypes ((Token!12778 0))(
  ( (Token!12779 (value!215004 TokenValue!7050) (rule!9858 Rule!13440) (size!32073 Int) (originalCharacters!7420 List!43020)) )
))
(declare-fun token!484 () Token!12778)

(declare-fun size!32074 (List!43020) Int)

(assert (=> b!4007127 (= res!1628423 (= (size!32073 token!484) (size!32074 (originalCharacters!7420 token!484))))))

(declare-fun b!4007128 () Bool)

(declare-fun e!2485044 () Bool)

(declare-fun e!2485054 () Bool)

(assert (=> b!4007128 (= e!2485044 e!2485054)))

(declare-fun res!1628426 () Bool)

(assert (=> b!4007128 (=> (not res!1628426) (not e!2485054))))

(declare-datatypes ((tuple2!42050 0))(
  ( (tuple2!42051 (_1!24159 Token!12778) (_2!24159 List!43020)) )
))
(declare-datatypes ((Option!9234 0))(
  ( (None!9233) (Some!9233 (v!39599 tuple2!42050)) )
))
(declare-fun lt!1417813 () Option!9234)

(declare-datatypes ((LexerInterface!6409 0))(
  ( (LexerInterfaceExt!6406 (__x!26318 Int)) (Lexer!6407) )
))
(declare-fun thiss!21717 () LexerInterface!6409)

(declare-fun lt!1417824 () List!43020)

(declare-fun maxPrefix!3707 (LexerInterface!6409 List!43022 List!43020) Option!9234)

(assert (=> b!4007128 (= res!1628426 (= (maxPrefix!3707 thiss!21717 rules!2999 lt!1417824) lt!1417813))))

(declare-fun suffixResult!105 () List!43020)

(assert (=> b!4007128 (= lt!1417813 (Some!9233 (tuple2!42051 token!484 suffixResult!105)))))

(declare-fun prefix!494 () List!43020)

(declare-fun suffix!1299 () List!43020)

(declare-fun ++!11222 (List!43020 List!43020) List!43020)

(assert (=> b!4007128 (= lt!1417824 (++!11222 prefix!494 suffix!1299))))

(declare-fun e!2485040 () Bool)

(assert (=> b!4007129 (= e!2485040 (and tp!1219467 tp!1219461))))

(declare-fun b!4007130 () Bool)

(declare-fun e!2485032 () Bool)

(declare-fun e!2485039 () Bool)

(assert (=> b!4007130 (= e!2485032 e!2485039)))

(declare-fun res!1628431 () Bool)

(assert (=> b!4007130 (=> (not res!1628431) (not e!2485039))))

(declare-fun lt!1417817 () Int)

(declare-fun lt!1417808 () Int)

(assert (=> b!4007130 (= res!1628431 (>= lt!1417817 lt!1417808))))

(declare-fun lt!1417807 () List!43020)

(assert (=> b!4007130 (= lt!1417808 (size!32074 lt!1417807))))

(assert (=> b!4007130 (= lt!1417817 (size!32074 prefix!494))))

(declare-fun list!15938 (BalanceConc!25656) List!43020)

(declare-fun charsOf!4636 (Token!12778) BalanceConc!25656)

(assert (=> b!4007130 (= lt!1417807 (list!15938 (charsOf!4636 token!484)))))

(declare-fun b!4007131 () Bool)

(declare-fun e!2485048 () Bool)

(declare-fun tp_is_empty!20421 () Bool)

(declare-fun tp!1219470 () Bool)

(assert (=> b!4007131 (= e!2485048 (and tp_is_empty!20421 tp!1219470))))

(declare-fun b!4007132 () Bool)

(declare-fun tp!1219464 () Bool)

(declare-fun e!2485045 () Bool)

(assert (=> b!4007132 (= e!2485045 (and tp!1219464 (inv!57289 (tag!7680 (rule!9858 token!484))) (inv!57292 (transformation!6820 (rule!9858 token!484))) e!2485040))))

(declare-fun b!4007133 () Bool)

(declare-fun e!2485043 () Bool)

(declare-fun tp!1219469 () Bool)

(assert (=> b!4007133 (= e!2485043 (and e!2485035 tp!1219469))))

(assert (=> b!4007134 (= e!2485050 (and tp!1219459 tp!1219462))))

(declare-fun b!4007125 () Bool)

(assert (=> b!4007125 (= e!2485039 e!2485044)))

(declare-fun res!1628427 () Bool)

(assert (=> b!4007125 (=> (not res!1628427) (not e!2485044))))

(declare-fun lt!1417825 () List!43020)

(declare-fun lt!1417819 () List!43020)

(assert (=> b!4007125 (= res!1628427 (= lt!1417825 lt!1417819))))

(declare-fun newSuffix!27 () List!43020)

(assert (=> b!4007125 (= lt!1417819 (++!11222 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43020)

(assert (=> b!4007125 (= lt!1417825 (++!11222 lt!1417807 newSuffixResult!27))))

(declare-fun res!1628425 () Bool)

(assert (=> start!377292 (=> (not res!1628425) (not e!2485032))))

(get-info :version)

(assert (=> start!377292 (= res!1628425 ((_ is Lexer!6407) thiss!21717))))

(assert (=> start!377292 e!2485032))

(assert (=> start!377292 e!2485048))

(declare-fun e!2485034 () Bool)

(declare-fun inv!57293 (Token!12778) Bool)

(assert (=> start!377292 (and (inv!57293 token!484) e!2485034)))

(declare-fun e!2485053 () Bool)

(assert (=> start!377292 e!2485053))

(declare-fun e!2485047 () Bool)

(assert (=> start!377292 e!2485047))

(declare-fun e!2485042 () Bool)

(assert (=> start!377292 e!2485042))

(assert (=> start!377292 true))

(assert (=> start!377292 e!2485043))

(declare-fun e!2485041 () Bool)

(assert (=> start!377292 e!2485041))

(declare-fun b!4007135 () Bool)

(declare-fun e!2485038 () Bool)

(declare-fun getSuffix!2332 (List!43020 List!43020) List!43020)

(assert (=> b!4007135 (= e!2485038 (= (++!11222 lt!1417807 (getSuffix!2332 lt!1417824 lt!1417807)) lt!1417824))))

(assert (=> b!4007135 e!2485037))

(declare-fun res!1628420 () Bool)

(assert (=> b!4007135 (=> (not res!1628420) (not e!2485037))))

(declare-fun isPrefix!3907 (List!43020 List!43020) Bool)

(assert (=> b!4007135 (= res!1628420 (isPrefix!3907 lt!1417824 lt!1417824))))

(declare-datatypes ((Unit!61898 0))(
  ( (Unit!61899) )
))
(declare-fun lt!1417811 () Unit!61898)

(declare-fun lemmaIsPrefixRefl!2483 (List!43020 List!43020) Unit!61898)

(assert (=> b!4007135 (= lt!1417811 (lemmaIsPrefixRefl!2483 lt!1417824 lt!1417824))))

(declare-fun b!4007136 () Bool)

(declare-fun tp!1219460 () Bool)

(assert (=> b!4007136 (= e!2485047 (and tp_is_empty!20421 tp!1219460))))

(declare-fun tp!1219468 () Bool)

(declare-fun b!4007137 () Bool)

(declare-fun inv!21 (TokenValue!7050) Bool)

(assert (=> b!4007137 (= e!2485034 (and (inv!21 (value!215004 token!484)) e!2485045 tp!1219468))))

(declare-fun b!4007138 () Bool)

(declare-fun e!2485033 () Bool)

(assert (=> b!4007138 (= e!2485054 (not e!2485033))))

(declare-fun res!1628418 () Bool)

(assert (=> b!4007138 (=> res!1628418 e!2485033)))

(declare-fun lt!1417821 () List!43020)

(assert (=> b!4007138 (= res!1628418 (not (= lt!1417821 lt!1417824)))))

(assert (=> b!4007138 (= lt!1417821 (++!11222 lt!1417807 suffixResult!105))))

(declare-fun lt!1417800 () Unit!61898)

(declare-fun lemmaInv!1035 (TokenValueInjection!13528) Unit!61898)

(assert (=> b!4007138 (= lt!1417800 (lemmaInv!1035 (transformation!6820 (rule!9858 token!484))))))

(declare-fun ruleValid!2752 (LexerInterface!6409 Rule!13440) Bool)

(assert (=> b!4007138 (ruleValid!2752 thiss!21717 (rule!9858 token!484))))

(declare-fun lt!1417814 () Unit!61898)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1826 (LexerInterface!6409 Rule!13440 List!43022) Unit!61898)

(assert (=> b!4007138 (= lt!1417814 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1826 thiss!21717 (rule!9858 token!484) rules!2999))))

(declare-fun b!4007139 () Bool)

(declare-fun e!2485036 () Bool)

(assert (=> b!4007139 (= e!2485033 e!2485036)))

(declare-fun res!1628429 () Bool)

(assert (=> b!4007139 (=> res!1628429 e!2485036)))

(assert (=> b!4007139 (= res!1628429 (not (isPrefix!3907 lt!1417807 lt!1417824)))))

(assert (=> b!4007139 (isPrefix!3907 prefix!494 lt!1417824)))

(declare-fun lt!1417804 () Unit!61898)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2748 (List!43020 List!43020) Unit!61898)

(assert (=> b!4007139 (= lt!1417804 (lemmaConcatTwoListThenFirstIsPrefix!2748 prefix!494 suffix!1299))))

(assert (=> b!4007139 (isPrefix!3907 lt!1417807 lt!1417821)))

(declare-fun lt!1417816 () Unit!61898)

(assert (=> b!4007139 (= lt!1417816 (lemmaConcatTwoListThenFirstIsPrefix!2748 lt!1417807 suffixResult!105))))

(declare-fun b!4007140 () Bool)

(declare-fun e!2485049 () Bool)

(declare-fun e!2485031 () Bool)

(assert (=> b!4007140 (= e!2485049 e!2485031)))

(declare-fun res!1628430 () Bool)

(assert (=> b!4007140 (=> res!1628430 e!2485031)))

(declare-fun lt!1417815 () Option!9234)

(assert (=> b!4007140 (= res!1628430 (not (= lt!1417815 lt!1417813)))))

(declare-fun lt!1417823 () TokenValue!7050)

(assert (=> b!4007140 (= lt!1417815 (Some!9233 (tuple2!42051 (Token!12779 lt!1417823 (rule!9858 token!484) lt!1417808 lt!1417807) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2727 (LexerInterface!6409 Rule!13440 List!43020) Option!9234)

(assert (=> b!4007140 (= lt!1417815 (maxPrefixOneRule!2727 thiss!21717 (rule!9858 token!484) lt!1417824))))

(declare-fun apply!10017 (TokenValueInjection!13528 BalanceConc!25656) TokenValue!7050)

(declare-fun seqFromList!5045 (List!43020) BalanceConc!25656)

(assert (=> b!4007140 (= lt!1417823 (apply!10017 (transformation!6820 (rule!9858 token!484)) (seqFromList!5045 lt!1417807)))))

(declare-fun lt!1417803 () Unit!61898)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1545 (LexerInterface!6409 List!43022 List!43020 List!43020 List!43020 Rule!13440) Unit!61898)

(assert (=> b!4007140 (= lt!1417803 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1545 thiss!21717 rules!2999 lt!1417807 lt!1417824 suffixResult!105 (rule!9858 token!484)))))

(declare-fun lt!1417820 () List!43020)

(assert (=> b!4007140 (= lt!1417820 suffixResult!105)))

(declare-fun lt!1417802 () Unit!61898)

(declare-fun lemmaSamePrefixThenSameSuffix!2078 (List!43020 List!43020 List!43020 List!43020 List!43020) Unit!61898)

(assert (=> b!4007140 (= lt!1417802 (lemmaSamePrefixThenSameSuffix!2078 lt!1417807 lt!1417820 lt!1417807 suffixResult!105 lt!1417824))))

(declare-fun lt!1417799 () List!43020)

(assert (=> b!4007140 (isPrefix!3907 lt!1417807 lt!1417799)))

(declare-fun lt!1417805 () Unit!61898)

(assert (=> b!4007140 (= lt!1417805 (lemmaConcatTwoListThenFirstIsPrefix!2748 lt!1417807 lt!1417820))))

(declare-fun b!4007141 () Bool)

(assert (=> b!4007141 (= e!2485031 e!2485038)))

(declare-fun res!1628417 () Bool)

(assert (=> b!4007141 (=> res!1628417 e!2485038)))

(declare-fun matchR!5686 (Regex!11725 List!43020) Bool)

(assert (=> b!4007141 (= res!1628417 (not (matchR!5686 (regex!6820 (rule!9858 token!484)) lt!1417807)))))

(assert (=> b!4007141 (isPrefix!3907 lt!1417807 lt!1417819)))

(declare-fun lt!1417809 () Unit!61898)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!720 (List!43020 List!43020 List!43020) Unit!61898)

(assert (=> b!4007141 (= lt!1417809 (lemmaPrefixStaysPrefixWhenAddingToSuffix!720 lt!1417807 prefix!494 newSuffix!27))))

(declare-fun lt!1417810 () Unit!61898)

(assert (=> b!4007141 (= lt!1417810 (lemmaPrefixStaysPrefixWhenAddingToSuffix!720 lt!1417807 prefix!494 suffix!1299))))

(declare-fun b!4007142 () Bool)

(declare-fun res!1628419 () Bool)

(assert (=> b!4007142 (=> (not res!1628419) (not e!2485032))))

(declare-fun rulesInvariant!5752 (LexerInterface!6409 List!43022) Bool)

(assert (=> b!4007142 (= res!1628419 (rulesInvariant!5752 thiss!21717 rules!2999))))

(declare-fun b!4007143 () Bool)

(declare-fun e!2485051 () Bool)

(assert (=> b!4007143 (= e!2485051 e!2485049)))

(declare-fun res!1628415 () Bool)

(assert (=> b!4007143 (=> res!1628415 e!2485049)))

(declare-fun lt!1417806 () List!43020)

(assert (=> b!4007143 (= res!1628415 (or (not (= lt!1417824 lt!1417806)) (not (= lt!1417824 lt!1417799))))))

(assert (=> b!4007143 (= lt!1417806 lt!1417799)))

(assert (=> b!4007143 (= lt!1417799 (++!11222 lt!1417807 lt!1417820))))

(declare-fun lt!1417822 () List!43020)

(assert (=> b!4007143 (= lt!1417806 (++!11222 lt!1417822 suffix!1299))))

(declare-fun lt!1417818 () List!43020)

(assert (=> b!4007143 (= lt!1417820 (++!11222 lt!1417818 suffix!1299))))

(declare-fun lt!1417812 () Unit!61898)

(declare-fun lemmaConcatAssociativity!2532 (List!43020 List!43020 List!43020) Unit!61898)

(assert (=> b!4007143 (= lt!1417812 (lemmaConcatAssociativity!2532 lt!1417807 lt!1417818 suffix!1299))))

(declare-fun b!4007144 () Bool)

(declare-fun res!1628422 () Bool)

(assert (=> b!4007144 (=> (not res!1628422) (not e!2485037))))

(assert (=> b!4007144 (= res!1628422 (= (value!215004 token!484) lt!1417823))))

(declare-fun b!4007145 () Bool)

(declare-fun tp!1219463 () Bool)

(assert (=> b!4007145 (= e!2485041 (and tp_is_empty!20421 tp!1219463))))

(declare-fun b!4007146 () Bool)

(declare-fun tp!1219466 () Bool)

(assert (=> b!4007146 (= e!2485053 (and tp_is_empty!20421 tp!1219466))))

(declare-fun b!4007147 () Bool)

(declare-fun tp!1219465 () Bool)

(assert (=> b!4007147 (= e!2485042 (and tp_is_empty!20421 tp!1219465))))

(declare-fun b!4007148 () Bool)

(assert (=> b!4007148 (= e!2485037 (and (= (size!32073 token!484) lt!1417808) (= (originalCharacters!7420 token!484) lt!1417807)))))

(declare-fun b!4007149 () Bool)

(declare-fun res!1628416 () Bool)

(assert (=> b!4007149 (=> (not res!1628416) (not e!2485032))))

(assert (=> b!4007149 (= res!1628416 (>= (size!32074 suffix!1299) (size!32074 newSuffix!27)))))

(declare-fun b!4007150 () Bool)

(assert (=> b!4007150 (= e!2485036 e!2485051)))

(declare-fun res!1628428 () Bool)

(assert (=> b!4007150 (=> res!1628428 e!2485051)))

(assert (=> b!4007150 (= res!1628428 (not (= lt!1417822 prefix!494)))))

(assert (=> b!4007150 (= lt!1417822 (++!11222 lt!1417807 lt!1417818))))

(assert (=> b!4007150 (= lt!1417818 (getSuffix!2332 prefix!494 lt!1417807))))

(assert (=> b!4007150 (isPrefix!3907 lt!1417807 prefix!494)))

(declare-fun lt!1417801 () Unit!61898)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!479 (List!43020 List!43020 List!43020) Unit!61898)

(assert (=> b!4007150 (= lt!1417801 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!479 prefix!494 lt!1417807 lt!1417824))))

(declare-fun b!4007151 () Bool)

(declare-fun res!1628424 () Bool)

(assert (=> b!4007151 (=> (not res!1628424) (not e!2485032))))

(declare-fun isEmpty!25624 (List!43022) Bool)

(assert (=> b!4007151 (= res!1628424 (not (isEmpty!25624 rules!2999)))))

(declare-fun b!4007152 () Bool)

(declare-fun res!1628421 () Bool)

(assert (=> b!4007152 (=> (not res!1628421) (not e!2485032))))

(assert (=> b!4007152 (= res!1628421 (isPrefix!3907 newSuffix!27 suffix!1299))))

(assert (= (and start!377292 res!1628425) b!4007151))

(assert (= (and b!4007151 res!1628424) b!4007142))

(assert (= (and b!4007142 res!1628419) b!4007149))

(assert (= (and b!4007149 res!1628416) b!4007152))

(assert (= (and b!4007152 res!1628421) b!4007130))

(assert (= (and b!4007130 res!1628431) b!4007125))

(assert (= (and b!4007125 res!1628427) b!4007128))

(assert (= (and b!4007128 res!1628426) b!4007138))

(assert (= (and b!4007138 (not res!1628418)) b!4007139))

(assert (= (and b!4007139 (not res!1628429)) b!4007150))

(assert (= (and b!4007150 (not res!1628428)) b!4007143))

(assert (= (and b!4007143 (not res!1628415)) b!4007140))

(assert (= (and b!4007140 (not res!1628430)) b!4007141))

(assert (= (and b!4007141 (not res!1628417)) b!4007135))

(assert (= (and b!4007135 res!1628420) b!4007144))

(assert (= (and b!4007144 res!1628422) b!4007127))

(assert (= (and b!4007127 res!1628423) b!4007148))

(assert (= (and start!377292 ((_ is Cons!42896) prefix!494)) b!4007131))

(assert (= b!4007132 b!4007129))

(assert (= b!4007137 b!4007132))

(assert (= start!377292 b!4007137))

(assert (= (and start!377292 ((_ is Cons!42896) suffixResult!105)) b!4007146))

(assert (= (and start!377292 ((_ is Cons!42896) suffix!1299)) b!4007136))

(assert (= (and start!377292 ((_ is Cons!42896) newSuffix!27)) b!4007147))

(assert (= b!4007126 b!4007134))

(assert (= b!4007133 b!4007126))

(assert (= (and start!377292 ((_ is Cons!42898) rules!2999)) b!4007133))

(assert (= (and start!377292 ((_ is Cons!42896) newSuffixResult!27)) b!4007145))

(declare-fun m!4590509 () Bool)

(assert (=> b!4007128 m!4590509))

(declare-fun m!4590511 () Bool)

(assert (=> b!4007128 m!4590511))

(declare-fun m!4590513 () Bool)

(assert (=> b!4007140 m!4590513))

(declare-fun m!4590515 () Bool)

(assert (=> b!4007140 m!4590515))

(declare-fun m!4590517 () Bool)

(assert (=> b!4007140 m!4590517))

(declare-fun m!4590519 () Bool)

(assert (=> b!4007140 m!4590519))

(declare-fun m!4590521 () Bool)

(assert (=> b!4007140 m!4590521))

(declare-fun m!4590523 () Bool)

(assert (=> b!4007140 m!4590523))

(declare-fun m!4590525 () Bool)

(assert (=> b!4007140 m!4590525))

(assert (=> b!4007140 m!4590515))

(declare-fun m!4590527 () Bool)

(assert (=> b!4007126 m!4590527))

(declare-fun m!4590529 () Bool)

(assert (=> b!4007126 m!4590529))

(declare-fun m!4590531 () Bool)

(assert (=> b!4007152 m!4590531))

(declare-fun m!4590533 () Bool)

(assert (=> b!4007150 m!4590533))

(declare-fun m!4590535 () Bool)

(assert (=> b!4007150 m!4590535))

(declare-fun m!4590537 () Bool)

(assert (=> b!4007150 m!4590537))

(declare-fun m!4590539 () Bool)

(assert (=> b!4007150 m!4590539))

(declare-fun m!4590541 () Bool)

(assert (=> b!4007139 m!4590541))

(declare-fun m!4590543 () Bool)

(assert (=> b!4007139 m!4590543))

(declare-fun m!4590545 () Bool)

(assert (=> b!4007139 m!4590545))

(declare-fun m!4590547 () Bool)

(assert (=> b!4007139 m!4590547))

(declare-fun m!4590549 () Bool)

(assert (=> b!4007139 m!4590549))

(declare-fun m!4590551 () Bool)

(assert (=> b!4007138 m!4590551))

(declare-fun m!4590553 () Bool)

(assert (=> b!4007138 m!4590553))

(declare-fun m!4590555 () Bool)

(assert (=> b!4007138 m!4590555))

(declare-fun m!4590557 () Bool)

(assert (=> b!4007138 m!4590557))

(declare-fun m!4590559 () Bool)

(assert (=> b!4007125 m!4590559))

(declare-fun m!4590561 () Bool)

(assert (=> b!4007125 m!4590561))

(declare-fun m!4590563 () Bool)

(assert (=> b!4007130 m!4590563))

(declare-fun m!4590565 () Bool)

(assert (=> b!4007130 m!4590565))

(declare-fun m!4590567 () Bool)

(assert (=> b!4007130 m!4590567))

(assert (=> b!4007130 m!4590567))

(declare-fun m!4590569 () Bool)

(assert (=> b!4007130 m!4590569))

(declare-fun m!4590571 () Bool)

(assert (=> b!4007143 m!4590571))

(declare-fun m!4590573 () Bool)

(assert (=> b!4007143 m!4590573))

(declare-fun m!4590575 () Bool)

(assert (=> b!4007143 m!4590575))

(declare-fun m!4590577 () Bool)

(assert (=> b!4007143 m!4590577))

(declare-fun m!4590579 () Bool)

(assert (=> b!4007137 m!4590579))

(declare-fun m!4590581 () Bool)

(assert (=> b!4007127 m!4590581))

(declare-fun m!4590583 () Bool)

(assert (=> b!4007141 m!4590583))

(declare-fun m!4590585 () Bool)

(assert (=> b!4007141 m!4590585))

(declare-fun m!4590587 () Bool)

(assert (=> b!4007141 m!4590587))

(declare-fun m!4590589 () Bool)

(assert (=> b!4007141 m!4590589))

(declare-fun m!4590591 () Bool)

(assert (=> b!4007151 m!4590591))

(declare-fun m!4590593 () Bool)

(assert (=> b!4007149 m!4590593))

(declare-fun m!4590595 () Bool)

(assert (=> b!4007149 m!4590595))

(declare-fun m!4590597 () Bool)

(assert (=> start!377292 m!4590597))

(declare-fun m!4590599 () Bool)

(assert (=> b!4007132 m!4590599))

(declare-fun m!4590601 () Bool)

(assert (=> b!4007132 m!4590601))

(declare-fun m!4590603 () Bool)

(assert (=> b!4007142 m!4590603))

(declare-fun m!4590605 () Bool)

(assert (=> b!4007135 m!4590605))

(assert (=> b!4007135 m!4590605))

(declare-fun m!4590607 () Bool)

(assert (=> b!4007135 m!4590607))

(declare-fun m!4590609 () Bool)

(assert (=> b!4007135 m!4590609))

(declare-fun m!4590611 () Bool)

(assert (=> b!4007135 m!4590611))

(check-sat b_and!307771 (not b_next!112171) (not b!4007138) (not b!4007137) (not start!377292) tp_is_empty!20421 (not b!4007150) b_and!307767 (not b!4007130) (not b_next!112169) (not b!4007126) (not b_next!112175) (not b!4007141) (not b!4007125) (not b!4007128) (not b!4007147) (not b!4007140) (not b!4007152) (not b!4007132) b_and!307773 (not b!4007143) (not b!4007146) (not b!4007136) (not b!4007131) (not b!4007149) (not b!4007139) b_and!307769 (not b!4007127) (not b!4007135) (not b!4007133) (not b!4007142) (not b!4007151) (not b_next!112173) (not b!4007145))
(check-sat b_and!307771 (not b_next!112171) b_and!307773 b_and!307767 (not b_next!112169) (not b_next!112175) b_and!307769 (not b_next!112173))
(get-model)

(declare-fun d!1185581 () Bool)

(assert (=> d!1185581 (= (inv!57289 (tag!7680 (h!48318 rules!2999))) (= (mod (str.len (value!215003 (tag!7680 (h!48318 rules!2999)))) 2) 0))))

(assert (=> b!4007126 d!1185581))

(declare-fun d!1185583 () Bool)

(declare-fun res!1628438 () Bool)

(declare-fun e!2485057 () Bool)

(assert (=> d!1185583 (=> (not res!1628438) (not e!2485057))))

(declare-fun semiInverseModEq!2919 (Int Int) Bool)

(assert (=> d!1185583 (= res!1628438 (semiInverseModEq!2919 (toChars!9179 (transformation!6820 (h!48318 rules!2999))) (toValue!9320 (transformation!6820 (h!48318 rules!2999)))))))

(assert (=> d!1185583 (= (inv!57292 (transformation!6820 (h!48318 rules!2999))) e!2485057)))

(declare-fun b!4007155 () Bool)

(declare-fun equivClasses!2818 (Int Int) Bool)

(assert (=> b!4007155 (= e!2485057 (equivClasses!2818 (toChars!9179 (transformation!6820 (h!48318 rules!2999))) (toValue!9320 (transformation!6820 (h!48318 rules!2999)))))))

(assert (= (and d!1185583 res!1628438) b!4007155))

(declare-fun m!4590615 () Bool)

(assert (=> d!1185583 m!4590615))

(declare-fun m!4590617 () Bool)

(assert (=> b!4007155 m!4590617))

(assert (=> b!4007126 d!1185583))

(declare-fun b!4007164 () Bool)

(declare-fun e!2485062 () List!43020)

(assert (=> b!4007164 (= e!2485062 newSuffix!27)))

(declare-fun b!4007165 () Bool)

(assert (=> b!4007165 (= e!2485062 (Cons!42896 (h!48316 prefix!494) (++!11222 (t!332621 prefix!494) newSuffix!27)))))

(declare-fun d!1185585 () Bool)

(declare-fun e!2485063 () Bool)

(assert (=> d!1185585 e!2485063))

(declare-fun res!1628443 () Bool)

(assert (=> d!1185585 (=> (not res!1628443) (not e!2485063))))

(declare-fun lt!1417831 () List!43020)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6504 (List!43020) (InoxSet C!23636))

(assert (=> d!1185585 (= res!1628443 (= (content!6504 lt!1417831) ((_ map or) (content!6504 prefix!494) (content!6504 newSuffix!27))))))

(assert (=> d!1185585 (= lt!1417831 e!2485062)))

(declare-fun c!692892 () Bool)

(assert (=> d!1185585 (= c!692892 ((_ is Nil!42896) prefix!494))))

(assert (=> d!1185585 (= (++!11222 prefix!494 newSuffix!27) lt!1417831)))

(declare-fun b!4007167 () Bool)

(assert (=> b!4007167 (= e!2485063 (or (not (= newSuffix!27 Nil!42896)) (= lt!1417831 prefix!494)))))

(declare-fun b!4007166 () Bool)

(declare-fun res!1628444 () Bool)

(assert (=> b!4007166 (=> (not res!1628444) (not e!2485063))))

(assert (=> b!4007166 (= res!1628444 (= (size!32074 lt!1417831) (+ (size!32074 prefix!494) (size!32074 newSuffix!27))))))

(assert (= (and d!1185585 c!692892) b!4007164))

(assert (= (and d!1185585 (not c!692892)) b!4007165))

(assert (= (and d!1185585 res!1628443) b!4007166))

(assert (= (and b!4007166 res!1628444) b!4007167))

(declare-fun m!4590619 () Bool)

(assert (=> b!4007165 m!4590619))

(declare-fun m!4590621 () Bool)

(assert (=> d!1185585 m!4590621))

(declare-fun m!4590623 () Bool)

(assert (=> d!1185585 m!4590623))

(declare-fun m!4590625 () Bool)

(assert (=> d!1185585 m!4590625))

(declare-fun m!4590627 () Bool)

(assert (=> b!4007166 m!4590627))

(assert (=> b!4007166 m!4590565))

(assert (=> b!4007166 m!4590595))

(assert (=> b!4007125 d!1185585))

(declare-fun b!4007168 () Bool)

(declare-fun e!2485064 () List!43020)

(assert (=> b!4007168 (= e!2485064 newSuffixResult!27)))

(declare-fun b!4007169 () Bool)

(assert (=> b!4007169 (= e!2485064 (Cons!42896 (h!48316 lt!1417807) (++!11222 (t!332621 lt!1417807) newSuffixResult!27)))))

(declare-fun d!1185587 () Bool)

(declare-fun e!2485065 () Bool)

(assert (=> d!1185587 e!2485065))

(declare-fun res!1628445 () Bool)

(assert (=> d!1185587 (=> (not res!1628445) (not e!2485065))))

(declare-fun lt!1417832 () List!43020)

(assert (=> d!1185587 (= res!1628445 (= (content!6504 lt!1417832) ((_ map or) (content!6504 lt!1417807) (content!6504 newSuffixResult!27))))))

(assert (=> d!1185587 (= lt!1417832 e!2485064)))

(declare-fun c!692893 () Bool)

(assert (=> d!1185587 (= c!692893 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185587 (= (++!11222 lt!1417807 newSuffixResult!27) lt!1417832)))

(declare-fun b!4007171 () Bool)

(assert (=> b!4007171 (= e!2485065 (or (not (= newSuffixResult!27 Nil!42896)) (= lt!1417832 lt!1417807)))))

(declare-fun b!4007170 () Bool)

(declare-fun res!1628446 () Bool)

(assert (=> b!4007170 (=> (not res!1628446) (not e!2485065))))

(assert (=> b!4007170 (= res!1628446 (= (size!32074 lt!1417832) (+ (size!32074 lt!1417807) (size!32074 newSuffixResult!27))))))

(assert (= (and d!1185587 c!692893) b!4007168))

(assert (= (and d!1185587 (not c!692893)) b!4007169))

(assert (= (and d!1185587 res!1628445) b!4007170))

(assert (= (and b!4007170 res!1628446) b!4007171))

(declare-fun m!4590629 () Bool)

(assert (=> b!4007169 m!4590629))

(declare-fun m!4590631 () Bool)

(assert (=> d!1185587 m!4590631))

(declare-fun m!4590633 () Bool)

(assert (=> d!1185587 m!4590633))

(declare-fun m!4590635 () Bool)

(assert (=> d!1185587 m!4590635))

(declare-fun m!4590637 () Bool)

(assert (=> b!4007170 m!4590637))

(assert (=> b!4007170 m!4590563))

(declare-fun m!4590639 () Bool)

(assert (=> b!4007170 m!4590639))

(assert (=> b!4007125 d!1185587))

(declare-fun b!4007172 () Bool)

(declare-fun e!2485066 () List!43020)

(assert (=> b!4007172 (= e!2485066 suffixResult!105)))

(declare-fun b!4007173 () Bool)

(assert (=> b!4007173 (= e!2485066 (Cons!42896 (h!48316 lt!1417807) (++!11222 (t!332621 lt!1417807) suffixResult!105)))))

(declare-fun d!1185589 () Bool)

(declare-fun e!2485067 () Bool)

(assert (=> d!1185589 e!2485067))

(declare-fun res!1628447 () Bool)

(assert (=> d!1185589 (=> (not res!1628447) (not e!2485067))))

(declare-fun lt!1417833 () List!43020)

(assert (=> d!1185589 (= res!1628447 (= (content!6504 lt!1417833) ((_ map or) (content!6504 lt!1417807) (content!6504 suffixResult!105))))))

(assert (=> d!1185589 (= lt!1417833 e!2485066)))

(declare-fun c!692894 () Bool)

(assert (=> d!1185589 (= c!692894 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185589 (= (++!11222 lt!1417807 suffixResult!105) lt!1417833)))

(declare-fun b!4007175 () Bool)

(assert (=> b!4007175 (= e!2485067 (or (not (= suffixResult!105 Nil!42896)) (= lt!1417833 lt!1417807)))))

(declare-fun b!4007174 () Bool)

(declare-fun res!1628448 () Bool)

(assert (=> b!4007174 (=> (not res!1628448) (not e!2485067))))

(assert (=> b!4007174 (= res!1628448 (= (size!32074 lt!1417833) (+ (size!32074 lt!1417807) (size!32074 suffixResult!105))))))

(assert (= (and d!1185589 c!692894) b!4007172))

(assert (= (and d!1185589 (not c!692894)) b!4007173))

(assert (= (and d!1185589 res!1628447) b!4007174))

(assert (= (and b!4007174 res!1628448) b!4007175))

(declare-fun m!4590641 () Bool)

(assert (=> b!4007173 m!4590641))

(declare-fun m!4590643 () Bool)

(assert (=> d!1185589 m!4590643))

(assert (=> d!1185589 m!4590633))

(declare-fun m!4590645 () Bool)

(assert (=> d!1185589 m!4590645))

(declare-fun m!4590647 () Bool)

(assert (=> b!4007174 m!4590647))

(assert (=> b!4007174 m!4590563))

(declare-fun m!4590649 () Bool)

(assert (=> b!4007174 m!4590649))

(assert (=> b!4007138 d!1185589))

(declare-fun d!1185591 () Bool)

(declare-fun e!2485070 () Bool)

(assert (=> d!1185591 e!2485070))

(declare-fun res!1628451 () Bool)

(assert (=> d!1185591 (=> (not res!1628451) (not e!2485070))))

(assert (=> d!1185591 (= res!1628451 (semiInverseModEq!2919 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))))))

(declare-fun Unit!61900 () Unit!61898)

(assert (=> d!1185591 (= (lemmaInv!1035 (transformation!6820 (rule!9858 token!484))) Unit!61900)))

(declare-fun b!4007178 () Bool)

(assert (=> b!4007178 (= e!2485070 (equivClasses!2818 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))))))

(assert (= (and d!1185591 res!1628451) b!4007178))

(declare-fun m!4590651 () Bool)

(assert (=> d!1185591 m!4590651))

(declare-fun m!4590653 () Bool)

(assert (=> b!4007178 m!4590653))

(assert (=> b!4007138 d!1185591))

(declare-fun d!1185593 () Bool)

(declare-fun res!1628470 () Bool)

(declare-fun e!2485081 () Bool)

(assert (=> d!1185593 (=> (not res!1628470) (not e!2485081))))

(declare-fun validRegex!5312 (Regex!11725) Bool)

(assert (=> d!1185593 (= res!1628470 (validRegex!5312 (regex!6820 (rule!9858 token!484))))))

(assert (=> d!1185593 (= (ruleValid!2752 thiss!21717 (rule!9858 token!484)) e!2485081)))

(declare-fun b!4007201 () Bool)

(declare-fun res!1628471 () Bool)

(assert (=> b!4007201 (=> (not res!1628471) (not e!2485081))))

(declare-fun nullable!4112 (Regex!11725) Bool)

(assert (=> b!4007201 (= res!1628471 (not (nullable!4112 (regex!6820 (rule!9858 token!484)))))))

(declare-fun b!4007202 () Bool)

(assert (=> b!4007202 (= e!2485081 (not (= (tag!7680 (rule!9858 token!484)) (String!48969 ""))))))

(assert (= (and d!1185593 res!1628470) b!4007201))

(assert (= (and b!4007201 res!1628471) b!4007202))

(declare-fun m!4590655 () Bool)

(assert (=> d!1185593 m!4590655))

(declare-fun m!4590657 () Bool)

(assert (=> b!4007201 m!4590657))

(assert (=> b!4007138 d!1185593))

(declare-fun d!1185595 () Bool)

(assert (=> d!1185595 (ruleValid!2752 thiss!21717 (rule!9858 token!484))))

(declare-fun lt!1417851 () Unit!61898)

(declare-fun choose!24191 (LexerInterface!6409 Rule!13440 List!43022) Unit!61898)

(assert (=> d!1185595 (= lt!1417851 (choose!24191 thiss!21717 (rule!9858 token!484) rules!2999))))

(declare-fun contains!8527 (List!43022 Rule!13440) Bool)

(assert (=> d!1185595 (contains!8527 rules!2999 (rule!9858 token!484))))

(assert (=> d!1185595 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1826 thiss!21717 (rule!9858 token!484) rules!2999) lt!1417851)))

(declare-fun bs!589106 () Bool)

(assert (= bs!589106 d!1185595))

(assert (=> bs!589106 m!4590555))

(declare-fun m!4590659 () Bool)

(assert (=> bs!589106 m!4590659))

(declare-fun m!4590661 () Bool)

(assert (=> bs!589106 m!4590661))

(assert (=> b!4007138 d!1185595))

(declare-fun d!1185597 () Bool)

(declare-fun lt!1417854 () Int)

(assert (=> d!1185597 (>= lt!1417854 0)))

(declare-fun e!2485088 () Int)

(assert (=> d!1185597 (= lt!1417854 e!2485088)))

(declare-fun c!692900 () Bool)

(assert (=> d!1185597 (= c!692900 ((_ is Nil!42896) (originalCharacters!7420 token!484)))))

(assert (=> d!1185597 (= (size!32074 (originalCharacters!7420 token!484)) lt!1417854)))

(declare-fun b!4007216 () Bool)

(assert (=> b!4007216 (= e!2485088 0)))

(declare-fun b!4007217 () Bool)

(assert (=> b!4007217 (= e!2485088 (+ 1 (size!32074 (t!332621 (originalCharacters!7420 token!484)))))))

(assert (= (and d!1185597 c!692900) b!4007216))

(assert (= (and d!1185597 (not c!692900)) b!4007217))

(declare-fun m!4590707 () Bool)

(assert (=> b!4007217 m!4590707))

(assert (=> b!4007127 d!1185597))

(declare-fun b!4007236 () Bool)

(declare-fun e!2485103 () Bool)

(declare-fun inv!16 (TokenValue!7050) Bool)

(assert (=> b!4007236 (= e!2485103 (inv!16 (value!215004 token!484)))))

(declare-fun b!4007237 () Bool)

(declare-fun e!2485101 () Bool)

(declare-fun inv!17 (TokenValue!7050) Bool)

(assert (=> b!4007237 (= e!2485101 (inv!17 (value!215004 token!484)))))

(declare-fun d!1185601 () Bool)

(declare-fun c!692906 () Bool)

(assert (=> d!1185601 (= c!692906 ((_ is IntegerValue!21150) (value!215004 token!484)))))

(assert (=> d!1185601 (= (inv!21 (value!215004 token!484)) e!2485103)))

(declare-fun b!4007238 () Bool)

(assert (=> b!4007238 (= e!2485103 e!2485101)))

(declare-fun c!692905 () Bool)

(assert (=> b!4007238 (= c!692905 ((_ is IntegerValue!21151) (value!215004 token!484)))))

(declare-fun b!4007239 () Bool)

(declare-fun e!2485102 () Bool)

(declare-fun inv!15 (TokenValue!7050) Bool)

(assert (=> b!4007239 (= e!2485102 (inv!15 (value!215004 token!484)))))

(declare-fun b!4007240 () Bool)

(declare-fun res!1628489 () Bool)

(assert (=> b!4007240 (=> res!1628489 e!2485102)))

(assert (=> b!4007240 (= res!1628489 (not ((_ is IntegerValue!21152) (value!215004 token!484))))))

(assert (=> b!4007240 (= e!2485101 e!2485102)))

(assert (= (and d!1185601 c!692906) b!4007236))

(assert (= (and d!1185601 (not c!692906)) b!4007238))

(assert (= (and b!4007238 c!692905) b!4007237))

(assert (= (and b!4007238 (not c!692905)) b!4007240))

(assert (= (and b!4007240 (not res!1628489)) b!4007239))

(declare-fun m!4590717 () Bool)

(assert (=> b!4007236 m!4590717))

(declare-fun m!4590719 () Bool)

(assert (=> b!4007237 m!4590719))

(declare-fun m!4590721 () Bool)

(assert (=> b!4007239 m!4590721))

(assert (=> b!4007137 d!1185601))

(declare-fun b!4007245 () Bool)

(declare-fun e!2485107 () List!43020)

(assert (=> b!4007245 (= e!2485107 lt!1417818)))

(declare-fun b!4007246 () Bool)

(assert (=> b!4007246 (= e!2485107 (Cons!42896 (h!48316 lt!1417807) (++!11222 (t!332621 lt!1417807) lt!1417818)))))

(declare-fun d!1185609 () Bool)

(declare-fun e!2485108 () Bool)

(assert (=> d!1185609 e!2485108))

(declare-fun res!1628494 () Bool)

(assert (=> d!1185609 (=> (not res!1628494) (not e!2485108))))

(declare-fun lt!1417864 () List!43020)

(assert (=> d!1185609 (= res!1628494 (= (content!6504 lt!1417864) ((_ map or) (content!6504 lt!1417807) (content!6504 lt!1417818))))))

(assert (=> d!1185609 (= lt!1417864 e!2485107)))

(declare-fun c!692907 () Bool)

(assert (=> d!1185609 (= c!692907 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185609 (= (++!11222 lt!1417807 lt!1417818) lt!1417864)))

(declare-fun b!4007248 () Bool)

(assert (=> b!4007248 (= e!2485108 (or (not (= lt!1417818 Nil!42896)) (= lt!1417864 lt!1417807)))))

(declare-fun b!4007247 () Bool)

(declare-fun res!1628495 () Bool)

(assert (=> b!4007247 (=> (not res!1628495) (not e!2485108))))

(assert (=> b!4007247 (= res!1628495 (= (size!32074 lt!1417864) (+ (size!32074 lt!1417807) (size!32074 lt!1417818))))))

(assert (= (and d!1185609 c!692907) b!4007245))

(assert (= (and d!1185609 (not c!692907)) b!4007246))

(assert (= (and d!1185609 res!1628494) b!4007247))

(assert (= (and b!4007247 res!1628495) b!4007248))

(declare-fun m!4590735 () Bool)

(assert (=> b!4007246 m!4590735))

(declare-fun m!4590737 () Bool)

(assert (=> d!1185609 m!4590737))

(assert (=> d!1185609 m!4590633))

(declare-fun m!4590739 () Bool)

(assert (=> d!1185609 m!4590739))

(declare-fun m!4590741 () Bool)

(assert (=> b!4007247 m!4590741))

(assert (=> b!4007247 m!4590563))

(declare-fun m!4590743 () Bool)

(assert (=> b!4007247 m!4590743))

(assert (=> b!4007150 d!1185609))

(declare-fun d!1185613 () Bool)

(declare-fun lt!1417870 () List!43020)

(assert (=> d!1185613 (= (++!11222 lt!1417807 lt!1417870) prefix!494)))

(declare-fun e!2485120 () List!43020)

(assert (=> d!1185613 (= lt!1417870 e!2485120)))

(declare-fun c!692913 () Bool)

(assert (=> d!1185613 (= c!692913 ((_ is Cons!42896) lt!1417807))))

(assert (=> d!1185613 (>= (size!32074 prefix!494) (size!32074 lt!1417807))))

(assert (=> d!1185613 (= (getSuffix!2332 prefix!494 lt!1417807) lt!1417870)))

(declare-fun b!4007267 () Bool)

(declare-fun tail!6245 (List!43020) List!43020)

(assert (=> b!4007267 (= e!2485120 (getSuffix!2332 (tail!6245 prefix!494) (t!332621 lt!1417807)))))

(declare-fun b!4007268 () Bool)

(assert (=> b!4007268 (= e!2485120 prefix!494)))

(assert (= (and d!1185613 c!692913) b!4007267))

(assert (= (and d!1185613 (not c!692913)) b!4007268))

(declare-fun m!4590761 () Bool)

(assert (=> d!1185613 m!4590761))

(assert (=> d!1185613 m!4590565))

(assert (=> d!1185613 m!4590563))

(declare-fun m!4590763 () Bool)

(assert (=> b!4007267 m!4590763))

(assert (=> b!4007267 m!4590763))

(declare-fun m!4590765 () Bool)

(assert (=> b!4007267 m!4590765))

(assert (=> b!4007150 d!1185613))

(declare-fun b!4007300 () Bool)

(declare-fun e!2485141 () Bool)

(declare-fun e!2485142 () Bool)

(assert (=> b!4007300 (= e!2485141 e!2485142)))

(declare-fun res!1628517 () Bool)

(assert (=> b!4007300 (=> (not res!1628517) (not e!2485142))))

(assert (=> b!4007300 (= res!1628517 (not ((_ is Nil!42896) prefix!494)))))

(declare-fun b!4007303 () Bool)

(declare-fun e!2485143 () Bool)

(assert (=> b!4007303 (= e!2485143 (>= (size!32074 prefix!494) (size!32074 lt!1417807)))))

(declare-fun b!4007302 () Bool)

(assert (=> b!4007302 (= e!2485142 (isPrefix!3907 (tail!6245 lt!1417807) (tail!6245 prefix!494)))))

(declare-fun d!1185619 () Bool)

(assert (=> d!1185619 e!2485143))

(declare-fun res!1628520 () Bool)

(assert (=> d!1185619 (=> res!1628520 e!2485143)))

(declare-fun lt!1417885 () Bool)

(assert (=> d!1185619 (= res!1628520 (not lt!1417885))))

(assert (=> d!1185619 (= lt!1417885 e!2485141)))

(declare-fun res!1628519 () Bool)

(assert (=> d!1185619 (=> res!1628519 e!2485141)))

(assert (=> d!1185619 (= res!1628519 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185619 (= (isPrefix!3907 lt!1417807 prefix!494) lt!1417885)))

(declare-fun b!4007301 () Bool)

(declare-fun res!1628518 () Bool)

(assert (=> b!4007301 (=> (not res!1628518) (not e!2485142))))

(declare-fun head!8513 (List!43020) C!23636)

(assert (=> b!4007301 (= res!1628518 (= (head!8513 lt!1417807) (head!8513 prefix!494)))))

(assert (= (and d!1185619 (not res!1628519)) b!4007300))

(assert (= (and b!4007300 res!1628517) b!4007301))

(assert (= (and b!4007301 res!1628518) b!4007302))

(assert (= (and d!1185619 (not res!1628520)) b!4007303))

(assert (=> b!4007303 m!4590565))

(assert (=> b!4007303 m!4590563))

(declare-fun m!4590789 () Bool)

(assert (=> b!4007302 m!4590789))

(assert (=> b!4007302 m!4590763))

(assert (=> b!4007302 m!4590789))

(assert (=> b!4007302 m!4590763))

(declare-fun m!4590791 () Bool)

(assert (=> b!4007302 m!4590791))

(declare-fun m!4590793 () Bool)

(assert (=> b!4007301 m!4590793))

(declare-fun m!4590795 () Bool)

(assert (=> b!4007301 m!4590795))

(assert (=> b!4007150 d!1185619))

(declare-fun d!1185637 () Bool)

(assert (=> d!1185637 (isPrefix!3907 lt!1417807 prefix!494)))

(declare-fun lt!1417890 () Unit!61898)

(declare-fun choose!24193 (List!43020 List!43020 List!43020) Unit!61898)

(assert (=> d!1185637 (= lt!1417890 (choose!24193 prefix!494 lt!1417807 lt!1417824))))

(assert (=> d!1185637 (isPrefix!3907 prefix!494 lt!1417824)))

(assert (=> d!1185637 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!479 prefix!494 lt!1417807 lt!1417824) lt!1417890)))

(declare-fun bs!589111 () Bool)

(assert (= bs!589111 d!1185637))

(assert (=> bs!589111 m!4590537))

(declare-fun m!4590823 () Bool)

(assert (=> bs!589111 m!4590823))

(assert (=> bs!589111 m!4590543))

(assert (=> b!4007150 d!1185637))

(declare-fun b!4007327 () Bool)

(declare-fun e!2485157 () Bool)

(declare-fun e!2485158 () Bool)

(assert (=> b!4007327 (= e!2485157 e!2485158)))

(declare-fun res!1628528 () Bool)

(assert (=> b!4007327 (=> (not res!1628528) (not e!2485158))))

(assert (=> b!4007327 (= res!1628528 (not ((_ is Nil!42896) lt!1417821)))))

(declare-fun b!4007330 () Bool)

(declare-fun e!2485159 () Bool)

(assert (=> b!4007330 (= e!2485159 (>= (size!32074 lt!1417821) (size!32074 lt!1417807)))))

(declare-fun b!4007329 () Bool)

(assert (=> b!4007329 (= e!2485158 (isPrefix!3907 (tail!6245 lt!1417807) (tail!6245 lt!1417821)))))

(declare-fun d!1185645 () Bool)

(assert (=> d!1185645 e!2485159))

(declare-fun res!1628531 () Bool)

(assert (=> d!1185645 (=> res!1628531 e!2485159)))

(declare-fun lt!1417891 () Bool)

(assert (=> d!1185645 (= res!1628531 (not lt!1417891))))

(assert (=> d!1185645 (= lt!1417891 e!2485157)))

(declare-fun res!1628530 () Bool)

(assert (=> d!1185645 (=> res!1628530 e!2485157)))

(assert (=> d!1185645 (= res!1628530 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185645 (= (isPrefix!3907 lt!1417807 lt!1417821) lt!1417891)))

(declare-fun b!4007328 () Bool)

(declare-fun res!1628529 () Bool)

(assert (=> b!4007328 (=> (not res!1628529) (not e!2485158))))

(assert (=> b!4007328 (= res!1628529 (= (head!8513 lt!1417807) (head!8513 lt!1417821)))))

(assert (= (and d!1185645 (not res!1628530)) b!4007327))

(assert (= (and b!4007327 res!1628528) b!4007328))

(assert (= (and b!4007328 res!1628529) b!4007329))

(assert (= (and d!1185645 (not res!1628531)) b!4007330))

(declare-fun m!4590825 () Bool)

(assert (=> b!4007330 m!4590825))

(assert (=> b!4007330 m!4590563))

(assert (=> b!4007329 m!4590789))

(declare-fun m!4590827 () Bool)

(assert (=> b!4007329 m!4590827))

(assert (=> b!4007329 m!4590789))

(assert (=> b!4007329 m!4590827))

(declare-fun m!4590829 () Bool)

(assert (=> b!4007329 m!4590829))

(assert (=> b!4007328 m!4590793))

(declare-fun m!4590831 () Bool)

(assert (=> b!4007328 m!4590831))

(assert (=> b!4007139 d!1185645))

(declare-fun b!4007331 () Bool)

(declare-fun e!2485160 () Bool)

(declare-fun e!2485161 () Bool)

(assert (=> b!4007331 (= e!2485160 e!2485161)))

(declare-fun res!1628532 () Bool)

(assert (=> b!4007331 (=> (not res!1628532) (not e!2485161))))

(assert (=> b!4007331 (= res!1628532 (not ((_ is Nil!42896) lt!1417824)))))

(declare-fun b!4007334 () Bool)

(declare-fun e!2485162 () Bool)

(assert (=> b!4007334 (= e!2485162 (>= (size!32074 lt!1417824) (size!32074 prefix!494)))))

(declare-fun b!4007333 () Bool)

(assert (=> b!4007333 (= e!2485161 (isPrefix!3907 (tail!6245 prefix!494) (tail!6245 lt!1417824)))))

(declare-fun d!1185647 () Bool)

(assert (=> d!1185647 e!2485162))

(declare-fun res!1628535 () Bool)

(assert (=> d!1185647 (=> res!1628535 e!2485162)))

(declare-fun lt!1417892 () Bool)

(assert (=> d!1185647 (= res!1628535 (not lt!1417892))))

(assert (=> d!1185647 (= lt!1417892 e!2485160)))

(declare-fun res!1628534 () Bool)

(assert (=> d!1185647 (=> res!1628534 e!2485160)))

(assert (=> d!1185647 (= res!1628534 ((_ is Nil!42896) prefix!494))))

(assert (=> d!1185647 (= (isPrefix!3907 prefix!494 lt!1417824) lt!1417892)))

(declare-fun b!4007332 () Bool)

(declare-fun res!1628533 () Bool)

(assert (=> b!4007332 (=> (not res!1628533) (not e!2485161))))

(assert (=> b!4007332 (= res!1628533 (= (head!8513 prefix!494) (head!8513 lt!1417824)))))

(assert (= (and d!1185647 (not res!1628534)) b!4007331))

(assert (= (and b!4007331 res!1628532) b!4007332))

(assert (= (and b!4007332 res!1628533) b!4007333))

(assert (= (and d!1185647 (not res!1628535)) b!4007334))

(declare-fun m!4590833 () Bool)

(assert (=> b!4007334 m!4590833))

(assert (=> b!4007334 m!4590565))

(assert (=> b!4007333 m!4590763))

(declare-fun m!4590835 () Bool)

(assert (=> b!4007333 m!4590835))

(assert (=> b!4007333 m!4590763))

(assert (=> b!4007333 m!4590835))

(declare-fun m!4590837 () Bool)

(assert (=> b!4007333 m!4590837))

(assert (=> b!4007332 m!4590795))

(declare-fun m!4590839 () Bool)

(assert (=> b!4007332 m!4590839))

(assert (=> b!4007139 d!1185647))

(declare-fun d!1185649 () Bool)

(assert (=> d!1185649 (isPrefix!3907 prefix!494 (++!11222 prefix!494 suffix!1299))))

(declare-fun lt!1417897 () Unit!61898)

(declare-fun choose!24194 (List!43020 List!43020) Unit!61898)

(assert (=> d!1185649 (= lt!1417897 (choose!24194 prefix!494 suffix!1299))))

(assert (=> d!1185649 (= (lemmaConcatTwoListThenFirstIsPrefix!2748 prefix!494 suffix!1299) lt!1417897)))

(declare-fun bs!589112 () Bool)

(assert (= bs!589112 d!1185649))

(assert (=> bs!589112 m!4590511))

(assert (=> bs!589112 m!4590511))

(declare-fun m!4590841 () Bool)

(assert (=> bs!589112 m!4590841))

(declare-fun m!4590843 () Bool)

(assert (=> bs!589112 m!4590843))

(assert (=> b!4007139 d!1185649))

(declare-fun b!4007363 () Bool)

(declare-fun e!2485177 () Bool)

(declare-fun e!2485178 () Bool)

(assert (=> b!4007363 (= e!2485177 e!2485178)))

(declare-fun res!1628552 () Bool)

(assert (=> b!4007363 (=> (not res!1628552) (not e!2485178))))

(assert (=> b!4007363 (= res!1628552 (not ((_ is Nil!42896) lt!1417824)))))

(declare-fun b!4007366 () Bool)

(declare-fun e!2485179 () Bool)

(assert (=> b!4007366 (= e!2485179 (>= (size!32074 lt!1417824) (size!32074 lt!1417807)))))

(declare-fun b!4007365 () Bool)

(assert (=> b!4007365 (= e!2485178 (isPrefix!3907 (tail!6245 lt!1417807) (tail!6245 lt!1417824)))))

(declare-fun d!1185651 () Bool)

(assert (=> d!1185651 e!2485179))

(declare-fun res!1628555 () Bool)

(assert (=> d!1185651 (=> res!1628555 e!2485179)))

(declare-fun lt!1417898 () Bool)

(assert (=> d!1185651 (= res!1628555 (not lt!1417898))))

(assert (=> d!1185651 (= lt!1417898 e!2485177)))

(declare-fun res!1628554 () Bool)

(assert (=> d!1185651 (=> res!1628554 e!2485177)))

(assert (=> d!1185651 (= res!1628554 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185651 (= (isPrefix!3907 lt!1417807 lt!1417824) lt!1417898)))

(declare-fun b!4007364 () Bool)

(declare-fun res!1628553 () Bool)

(assert (=> b!4007364 (=> (not res!1628553) (not e!2485178))))

(assert (=> b!4007364 (= res!1628553 (= (head!8513 lt!1417807) (head!8513 lt!1417824)))))

(assert (= (and d!1185651 (not res!1628554)) b!4007363))

(assert (= (and b!4007363 res!1628552) b!4007364))

(assert (= (and b!4007364 res!1628553) b!4007365))

(assert (= (and d!1185651 (not res!1628555)) b!4007366))

(assert (=> b!4007366 m!4590833))

(assert (=> b!4007366 m!4590563))

(assert (=> b!4007365 m!4590789))

(assert (=> b!4007365 m!4590835))

(assert (=> b!4007365 m!4590789))

(assert (=> b!4007365 m!4590835))

(declare-fun m!4590845 () Bool)

(assert (=> b!4007365 m!4590845))

(assert (=> b!4007364 m!4590793))

(assert (=> b!4007364 m!4590839))

(assert (=> b!4007139 d!1185651))

(declare-fun d!1185653 () Bool)

(assert (=> d!1185653 (isPrefix!3907 lt!1417807 (++!11222 lt!1417807 suffixResult!105))))

(declare-fun lt!1417899 () Unit!61898)

(assert (=> d!1185653 (= lt!1417899 (choose!24194 lt!1417807 suffixResult!105))))

(assert (=> d!1185653 (= (lemmaConcatTwoListThenFirstIsPrefix!2748 lt!1417807 suffixResult!105) lt!1417899)))

(declare-fun bs!589113 () Bool)

(assert (= bs!589113 d!1185653))

(assert (=> bs!589113 m!4590551))

(assert (=> bs!589113 m!4590551))

(declare-fun m!4590847 () Bool)

(assert (=> bs!589113 m!4590847))

(declare-fun m!4590849 () Bool)

(assert (=> bs!589113 m!4590849))

(assert (=> b!4007139 d!1185653))

(declare-fun d!1185655 () Bool)

(declare-fun res!1628574 () Bool)

(declare-fun e!2485194 () Bool)

(assert (=> d!1185655 (=> (not res!1628574) (not e!2485194))))

(declare-fun isEmpty!25627 (List!43020) Bool)

(assert (=> d!1185655 (= res!1628574 (not (isEmpty!25627 (originalCharacters!7420 token!484))))))

(assert (=> d!1185655 (= (inv!57293 token!484) e!2485194)))

(declare-fun b!4007393 () Bool)

(declare-fun res!1628575 () Bool)

(assert (=> b!4007393 (=> (not res!1628575) (not e!2485194))))

(declare-fun dynLambda!18195 (Int TokenValue!7050) BalanceConc!25656)

(assert (=> b!4007393 (= res!1628575 (= (originalCharacters!7420 token!484) (list!15938 (dynLambda!18195 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (value!215004 token!484)))))))

(declare-fun b!4007394 () Bool)

(assert (=> b!4007394 (= e!2485194 (= (size!32073 token!484) (size!32074 (originalCharacters!7420 token!484))))))

(assert (= (and d!1185655 res!1628574) b!4007393))

(assert (= (and b!4007393 res!1628575) b!4007394))

(declare-fun b_lambda!116889 () Bool)

(assert (=> (not b_lambda!116889) (not b!4007393)))

(declare-fun t!332629 () Bool)

(declare-fun tb!240861 () Bool)

(assert (=> (and b!4007129 (= (toChars!9179 (transformation!6820 (rule!9858 token!484))) (toChars!9179 (transformation!6820 (rule!9858 token!484)))) t!332629) tb!240861))

(declare-fun b!4007407 () Bool)

(declare-fun e!2485201 () Bool)

(declare-fun tp!1219473 () Bool)

(declare-fun inv!57296 (Conc!13031) Bool)

(assert (=> b!4007407 (= e!2485201 (and (inv!57296 (c!692888 (dynLambda!18195 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (value!215004 token!484)))) tp!1219473))))

(declare-fun result!291932 () Bool)

(declare-fun inv!57297 (BalanceConc!25656) Bool)

(assert (=> tb!240861 (= result!291932 (and (inv!57297 (dynLambda!18195 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (value!215004 token!484))) e!2485201))))

(assert (= tb!240861 b!4007407))

(declare-fun m!4590911 () Bool)

(assert (=> b!4007407 m!4590911))

(declare-fun m!4590913 () Bool)

(assert (=> tb!240861 m!4590913))

(assert (=> b!4007393 t!332629))

(declare-fun b_and!307779 () Bool)

(assert (= b_and!307769 (and (=> t!332629 result!291932) b_and!307779)))

(declare-fun t!332631 () Bool)

(declare-fun tb!240863 () Bool)

(assert (=> (and b!4007134 (= (toChars!9179 (transformation!6820 (h!48318 rules!2999))) (toChars!9179 (transformation!6820 (rule!9858 token!484)))) t!332631) tb!240863))

(declare-fun result!291936 () Bool)

(assert (= result!291936 result!291932))

(assert (=> b!4007393 t!332631))

(declare-fun b_and!307781 () Bool)

(assert (= b_and!307773 (and (=> t!332631 result!291936) b_and!307781)))

(declare-fun m!4590921 () Bool)

(assert (=> d!1185655 m!4590921))

(declare-fun m!4590923 () Bool)

(assert (=> b!4007393 m!4590923))

(assert (=> b!4007393 m!4590923))

(declare-fun m!4590929 () Bool)

(assert (=> b!4007393 m!4590929))

(assert (=> b!4007394 m!4590581))

(assert (=> start!377292 d!1185655))

(declare-fun b!4007528 () Bool)

(declare-fun res!1628663 () Bool)

(declare-fun e!2485262 () Bool)

(assert (=> b!4007528 (=> (not res!1628663) (not e!2485262))))

(declare-fun lt!1417961 () Option!9234)

(declare-fun get!14098 (Option!9234) tuple2!42050)

(assert (=> b!4007528 (= res!1628663 (matchR!5686 (regex!6820 (rule!9858 (_1!24159 (get!14098 lt!1417961)))) (list!15938 (charsOf!4636 (_1!24159 (get!14098 lt!1417961))))))))

(declare-fun b!4007529 () Bool)

(declare-fun res!1628660 () Bool)

(assert (=> b!4007529 (=> (not res!1628660) (not e!2485262))))

(assert (=> b!4007529 (= res!1628660 (= (value!215004 (_1!24159 (get!14098 lt!1417961))) (apply!10017 (transformation!6820 (rule!9858 (_1!24159 (get!14098 lt!1417961)))) (seqFromList!5045 (originalCharacters!7420 (_1!24159 (get!14098 lt!1417961)))))))))

(declare-fun b!4007530 () Bool)

(declare-fun e!2485263 () Option!9234)

(declare-fun lt!1417960 () Option!9234)

(declare-fun lt!1417963 () Option!9234)

(assert (=> b!4007530 (= e!2485263 (ite (and ((_ is None!9233) lt!1417960) ((_ is None!9233) lt!1417963)) None!9233 (ite ((_ is None!9233) lt!1417963) lt!1417960 (ite ((_ is None!9233) lt!1417960) lt!1417963 (ite (>= (size!32073 (_1!24159 (v!39599 lt!1417960))) (size!32073 (_1!24159 (v!39599 lt!1417963)))) lt!1417960 lt!1417963)))))))

(declare-fun call!286221 () Option!9234)

(assert (=> b!4007530 (= lt!1417960 call!286221)))

(assert (=> b!4007530 (= lt!1417963 (maxPrefix!3707 thiss!21717 (t!332623 rules!2999) lt!1417824))))

(declare-fun b!4007531 () Bool)

(declare-fun res!1628665 () Bool)

(assert (=> b!4007531 (=> (not res!1628665) (not e!2485262))))

(assert (=> b!4007531 (= res!1628665 (= (list!15938 (charsOf!4636 (_1!24159 (get!14098 lt!1417961)))) (originalCharacters!7420 (_1!24159 (get!14098 lt!1417961)))))))

(declare-fun d!1185675 () Bool)

(declare-fun e!2485264 () Bool)

(assert (=> d!1185675 e!2485264))

(declare-fun res!1628666 () Bool)

(assert (=> d!1185675 (=> res!1628666 e!2485264)))

(declare-fun isEmpty!25628 (Option!9234) Bool)

(assert (=> d!1185675 (= res!1628666 (isEmpty!25628 lt!1417961))))

(assert (=> d!1185675 (= lt!1417961 e!2485263)))

(declare-fun c!692953 () Bool)

(assert (=> d!1185675 (= c!692953 (and ((_ is Cons!42898) rules!2999) ((_ is Nil!42898) (t!332623 rules!2999))))))

(declare-fun lt!1417962 () Unit!61898)

(declare-fun lt!1417959 () Unit!61898)

(assert (=> d!1185675 (= lt!1417962 lt!1417959)))

(assert (=> d!1185675 (isPrefix!3907 lt!1417824 lt!1417824)))

(assert (=> d!1185675 (= lt!1417959 (lemmaIsPrefixRefl!2483 lt!1417824 lt!1417824))))

(declare-fun rulesValidInductive!2485 (LexerInterface!6409 List!43022) Bool)

(assert (=> d!1185675 (rulesValidInductive!2485 thiss!21717 rules!2999)))

(assert (=> d!1185675 (= (maxPrefix!3707 thiss!21717 rules!2999 lt!1417824) lt!1417961)))

(declare-fun b!4007532 () Bool)

(declare-fun res!1628664 () Bool)

(assert (=> b!4007532 (=> (not res!1628664) (not e!2485262))))

(assert (=> b!4007532 (= res!1628664 (= (++!11222 (list!15938 (charsOf!4636 (_1!24159 (get!14098 lt!1417961)))) (_2!24159 (get!14098 lt!1417961))) lt!1417824))))

(declare-fun b!4007533 () Bool)

(assert (=> b!4007533 (= e!2485263 call!286221)))

(declare-fun b!4007534 () Bool)

(declare-fun res!1628662 () Bool)

(assert (=> b!4007534 (=> (not res!1628662) (not e!2485262))))

(assert (=> b!4007534 (= res!1628662 (< (size!32074 (_2!24159 (get!14098 lt!1417961))) (size!32074 lt!1417824)))))

(declare-fun b!4007535 () Bool)

(assert (=> b!4007535 (= e!2485262 (contains!8527 rules!2999 (rule!9858 (_1!24159 (get!14098 lt!1417961)))))))

(declare-fun b!4007536 () Bool)

(assert (=> b!4007536 (= e!2485264 e!2485262)))

(declare-fun res!1628661 () Bool)

(assert (=> b!4007536 (=> (not res!1628661) (not e!2485262))))

(declare-fun isDefined!7064 (Option!9234) Bool)

(assert (=> b!4007536 (= res!1628661 (isDefined!7064 lt!1417961))))

(declare-fun bm!286216 () Bool)

(assert (=> bm!286216 (= call!286221 (maxPrefixOneRule!2727 thiss!21717 (h!48318 rules!2999) lt!1417824))))

(assert (= (and d!1185675 c!692953) b!4007533))

(assert (= (and d!1185675 (not c!692953)) b!4007530))

(assert (= (or b!4007533 b!4007530) bm!286216))

(assert (= (and d!1185675 (not res!1628666)) b!4007536))

(assert (= (and b!4007536 res!1628661) b!4007531))

(assert (= (and b!4007531 res!1628665) b!4007534))

(assert (= (and b!4007534 res!1628662) b!4007532))

(assert (= (and b!4007532 res!1628664) b!4007529))

(assert (= (and b!4007529 res!1628660) b!4007528))

(assert (= (and b!4007528 res!1628663) b!4007535))

(declare-fun m!4591049 () Bool)

(assert (=> bm!286216 m!4591049))

(declare-fun m!4591051 () Bool)

(assert (=> b!4007529 m!4591051))

(declare-fun m!4591053 () Bool)

(assert (=> b!4007529 m!4591053))

(assert (=> b!4007529 m!4591053))

(declare-fun m!4591055 () Bool)

(assert (=> b!4007529 m!4591055))

(declare-fun m!4591057 () Bool)

(assert (=> b!4007536 m!4591057))

(declare-fun m!4591059 () Bool)

(assert (=> b!4007530 m!4591059))

(assert (=> b!4007531 m!4591051))

(declare-fun m!4591061 () Bool)

(assert (=> b!4007531 m!4591061))

(assert (=> b!4007531 m!4591061))

(declare-fun m!4591065 () Bool)

(assert (=> b!4007531 m!4591065))

(assert (=> b!4007532 m!4591051))

(assert (=> b!4007532 m!4591061))

(assert (=> b!4007532 m!4591061))

(assert (=> b!4007532 m!4591065))

(assert (=> b!4007532 m!4591065))

(declare-fun m!4591069 () Bool)

(assert (=> b!4007532 m!4591069))

(declare-fun m!4591071 () Bool)

(assert (=> d!1185675 m!4591071))

(assert (=> d!1185675 m!4590609))

(assert (=> d!1185675 m!4590611))

(declare-fun m!4591073 () Bool)

(assert (=> d!1185675 m!4591073))

(assert (=> b!4007528 m!4591051))

(assert (=> b!4007528 m!4591061))

(assert (=> b!4007528 m!4591061))

(assert (=> b!4007528 m!4591065))

(assert (=> b!4007528 m!4591065))

(declare-fun m!4591075 () Bool)

(assert (=> b!4007528 m!4591075))

(assert (=> b!4007535 m!4591051))

(declare-fun m!4591077 () Bool)

(assert (=> b!4007535 m!4591077))

(assert (=> b!4007534 m!4591051))

(declare-fun m!4591079 () Bool)

(assert (=> b!4007534 m!4591079))

(assert (=> b!4007534 m!4590833))

(assert (=> b!4007128 d!1185675))

(declare-fun b!4007563 () Bool)

(declare-fun e!2485284 () List!43020)

(assert (=> b!4007563 (= e!2485284 suffix!1299)))

(declare-fun b!4007564 () Bool)

(assert (=> b!4007564 (= e!2485284 (Cons!42896 (h!48316 prefix!494) (++!11222 (t!332621 prefix!494) suffix!1299)))))

(declare-fun d!1185723 () Bool)

(declare-fun e!2485285 () Bool)

(assert (=> d!1185723 e!2485285))

(declare-fun res!1628667 () Bool)

(assert (=> d!1185723 (=> (not res!1628667) (not e!2485285))))

(declare-fun lt!1417964 () List!43020)

(assert (=> d!1185723 (= res!1628667 (= (content!6504 lt!1417964) ((_ map or) (content!6504 prefix!494) (content!6504 suffix!1299))))))

(assert (=> d!1185723 (= lt!1417964 e!2485284)))

(declare-fun c!692954 () Bool)

(assert (=> d!1185723 (= c!692954 ((_ is Nil!42896) prefix!494))))

(assert (=> d!1185723 (= (++!11222 prefix!494 suffix!1299) lt!1417964)))

(declare-fun b!4007566 () Bool)

(assert (=> b!4007566 (= e!2485285 (or (not (= suffix!1299 Nil!42896)) (= lt!1417964 prefix!494)))))

(declare-fun b!4007565 () Bool)

(declare-fun res!1628668 () Bool)

(assert (=> b!4007565 (=> (not res!1628668) (not e!2485285))))

(assert (=> b!4007565 (= res!1628668 (= (size!32074 lt!1417964) (+ (size!32074 prefix!494) (size!32074 suffix!1299))))))

(assert (= (and d!1185723 c!692954) b!4007563))

(assert (= (and d!1185723 (not c!692954)) b!4007564))

(assert (= (and d!1185723 res!1628667) b!4007565))

(assert (= (and b!4007565 res!1628668) b!4007566))

(declare-fun m!4591081 () Bool)

(assert (=> b!4007564 m!4591081))

(declare-fun m!4591083 () Bool)

(assert (=> d!1185723 m!4591083))

(assert (=> d!1185723 m!4590623))

(declare-fun m!4591085 () Bool)

(assert (=> d!1185723 m!4591085))

(declare-fun m!4591087 () Bool)

(assert (=> b!4007565 m!4591087))

(assert (=> b!4007565 m!4590565))

(assert (=> b!4007565 m!4590593))

(assert (=> b!4007128 d!1185723))

(declare-fun d!1185725 () Bool)

(declare-fun lt!1417965 () Int)

(assert (=> d!1185725 (>= lt!1417965 0)))

(declare-fun e!2485286 () Int)

(assert (=> d!1185725 (= lt!1417965 e!2485286)))

(declare-fun c!692955 () Bool)

(assert (=> d!1185725 (= c!692955 ((_ is Nil!42896) suffix!1299))))

(assert (=> d!1185725 (= (size!32074 suffix!1299) lt!1417965)))

(declare-fun b!4007567 () Bool)

(assert (=> b!4007567 (= e!2485286 0)))

(declare-fun b!4007568 () Bool)

(assert (=> b!4007568 (= e!2485286 (+ 1 (size!32074 (t!332621 suffix!1299))))))

(assert (= (and d!1185725 c!692955) b!4007567))

(assert (= (and d!1185725 (not c!692955)) b!4007568))

(declare-fun m!4591089 () Bool)

(assert (=> b!4007568 m!4591089))

(assert (=> b!4007149 d!1185725))

(declare-fun d!1185727 () Bool)

(declare-fun lt!1417966 () Int)

(assert (=> d!1185727 (>= lt!1417966 0)))

(declare-fun e!2485287 () Int)

(assert (=> d!1185727 (= lt!1417966 e!2485287)))

(declare-fun c!692956 () Bool)

(assert (=> d!1185727 (= c!692956 ((_ is Nil!42896) newSuffix!27))))

(assert (=> d!1185727 (= (size!32074 newSuffix!27) lt!1417966)))

(declare-fun b!4007569 () Bool)

(assert (=> b!4007569 (= e!2485287 0)))

(declare-fun b!4007570 () Bool)

(assert (=> b!4007570 (= e!2485287 (+ 1 (size!32074 (t!332621 newSuffix!27))))))

(assert (= (and d!1185727 c!692956) b!4007569))

(assert (= (and d!1185727 (not c!692956)) b!4007570))

(declare-fun m!4591091 () Bool)

(assert (=> b!4007570 m!4591091))

(assert (=> b!4007149 d!1185727))

(declare-fun d!1185729 () Bool)

(declare-fun lt!1417967 () Int)

(assert (=> d!1185729 (>= lt!1417967 0)))

(declare-fun e!2485288 () Int)

(assert (=> d!1185729 (= lt!1417967 e!2485288)))

(declare-fun c!692957 () Bool)

(assert (=> d!1185729 (= c!692957 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185729 (= (size!32074 lt!1417807) lt!1417967)))

(declare-fun b!4007571 () Bool)

(assert (=> b!4007571 (= e!2485288 0)))

(declare-fun b!4007572 () Bool)

(assert (=> b!4007572 (= e!2485288 (+ 1 (size!32074 (t!332621 lt!1417807))))))

(assert (= (and d!1185729 c!692957) b!4007571))

(assert (= (and d!1185729 (not c!692957)) b!4007572))

(declare-fun m!4591093 () Bool)

(assert (=> b!4007572 m!4591093))

(assert (=> b!4007130 d!1185729))

(declare-fun d!1185731 () Bool)

(declare-fun lt!1417968 () Int)

(assert (=> d!1185731 (>= lt!1417968 0)))

(declare-fun e!2485289 () Int)

(assert (=> d!1185731 (= lt!1417968 e!2485289)))

(declare-fun c!692958 () Bool)

(assert (=> d!1185731 (= c!692958 ((_ is Nil!42896) prefix!494))))

(assert (=> d!1185731 (= (size!32074 prefix!494) lt!1417968)))

(declare-fun b!4007573 () Bool)

(assert (=> b!4007573 (= e!2485289 0)))

(declare-fun b!4007574 () Bool)

(assert (=> b!4007574 (= e!2485289 (+ 1 (size!32074 (t!332621 prefix!494))))))

(assert (= (and d!1185731 c!692958) b!4007573))

(assert (= (and d!1185731 (not c!692958)) b!4007574))

(declare-fun m!4591095 () Bool)

(assert (=> b!4007574 m!4591095))

(assert (=> b!4007130 d!1185731))

(declare-fun d!1185733 () Bool)

(declare-fun list!15940 (Conc!13031) List!43020)

(assert (=> d!1185733 (= (list!15938 (charsOf!4636 token!484)) (list!15940 (c!692888 (charsOf!4636 token!484))))))

(declare-fun bs!589122 () Bool)

(assert (= bs!589122 d!1185733))

(declare-fun m!4591097 () Bool)

(assert (=> bs!589122 m!4591097))

(assert (=> b!4007130 d!1185733))

(declare-fun d!1185735 () Bool)

(declare-fun lt!1417971 () BalanceConc!25656)

(assert (=> d!1185735 (= (list!15938 lt!1417971) (originalCharacters!7420 token!484))))

(assert (=> d!1185735 (= lt!1417971 (dynLambda!18195 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (value!215004 token!484)))))

(assert (=> d!1185735 (= (charsOf!4636 token!484) lt!1417971)))

(declare-fun b_lambda!116901 () Bool)

(assert (=> (not b_lambda!116901) (not d!1185735)))

(assert (=> d!1185735 t!332629))

(declare-fun b_and!307795 () Bool)

(assert (= b_and!307779 (and (=> t!332629 result!291932) b_and!307795)))

(assert (=> d!1185735 t!332631))

(declare-fun b_and!307797 () Bool)

(assert (= b_and!307781 (and (=> t!332631 result!291936) b_and!307797)))

(declare-fun m!4591099 () Bool)

(assert (=> d!1185735 m!4591099))

(assert (=> d!1185735 m!4590923))

(assert (=> b!4007130 d!1185735))

(declare-fun d!1185737 () Bool)

(assert (=> d!1185737 (= (isEmpty!25624 rules!2999) ((_ is Nil!42898) rules!2999))))

(assert (=> b!4007151 d!1185737))

(declare-fun d!1185739 () Bool)

(declare-fun dynLambda!18196 (Int BalanceConc!25656) TokenValue!7050)

(assert (=> d!1185739 (= (apply!10017 (transformation!6820 (rule!9858 token!484)) (seqFromList!5045 lt!1417807)) (dynLambda!18196 (toValue!9320 (transformation!6820 (rule!9858 token!484))) (seqFromList!5045 lt!1417807)))))

(declare-fun b_lambda!116903 () Bool)

(assert (=> (not b_lambda!116903) (not d!1185739)))

(declare-fun t!332641 () Bool)

(declare-fun tb!240873 () Bool)

(assert (=> (and b!4007129 (= (toValue!9320 (transformation!6820 (rule!9858 token!484))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))) t!332641) tb!240873))

(declare-fun result!291954 () Bool)

(assert (=> tb!240873 (= result!291954 (inv!21 (dynLambda!18196 (toValue!9320 (transformation!6820 (rule!9858 token!484))) (seqFromList!5045 lt!1417807))))))

(declare-fun m!4591101 () Bool)

(assert (=> tb!240873 m!4591101))

(assert (=> d!1185739 t!332641))

(declare-fun b_and!307799 () Bool)

(assert (= b_and!307767 (and (=> t!332641 result!291954) b_and!307799)))

(declare-fun t!332643 () Bool)

(declare-fun tb!240875 () Bool)

(assert (=> (and b!4007134 (= (toValue!9320 (transformation!6820 (h!48318 rules!2999))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))) t!332643) tb!240875))

(declare-fun result!291958 () Bool)

(assert (= result!291958 result!291954))

(assert (=> d!1185739 t!332643))

(declare-fun b_and!307801 () Bool)

(assert (= b_and!307771 (and (=> t!332643 result!291958) b_and!307801)))

(assert (=> d!1185739 m!4590515))

(declare-fun m!4591103 () Bool)

(assert (=> d!1185739 m!4591103))

(assert (=> b!4007140 d!1185739))

(declare-fun d!1185741 () Bool)

(assert (=> d!1185741 (= (maxPrefixOneRule!2727 thiss!21717 (rule!9858 token!484) lt!1417824) (Some!9233 (tuple2!42051 (Token!12779 (apply!10017 (transformation!6820 (rule!9858 token!484)) (seqFromList!5045 lt!1417807)) (rule!9858 token!484) (size!32074 lt!1417807) lt!1417807) suffixResult!105)))))

(declare-fun lt!1417974 () Unit!61898)

(declare-fun choose!24195 (LexerInterface!6409 List!43022 List!43020 List!43020 List!43020 Rule!13440) Unit!61898)

(assert (=> d!1185741 (= lt!1417974 (choose!24195 thiss!21717 rules!2999 lt!1417807 lt!1417824 suffixResult!105 (rule!9858 token!484)))))

(assert (=> d!1185741 (not (isEmpty!25624 rules!2999))))

(assert (=> d!1185741 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1545 thiss!21717 rules!2999 lt!1417807 lt!1417824 suffixResult!105 (rule!9858 token!484)) lt!1417974)))

(declare-fun bs!589123 () Bool)

(assert (= bs!589123 d!1185741))

(assert (=> bs!589123 m!4590515))

(assert (=> bs!589123 m!4590517))

(declare-fun m!4591105 () Bool)

(assert (=> bs!589123 m!4591105))

(assert (=> bs!589123 m!4590515))

(assert (=> bs!589123 m!4590563))

(assert (=> bs!589123 m!4590591))

(assert (=> bs!589123 m!4590523))

(assert (=> b!4007140 d!1185741))

(declare-fun d!1185743 () Bool)

(assert (=> d!1185743 (isPrefix!3907 lt!1417807 (++!11222 lt!1417807 lt!1417820))))

(declare-fun lt!1417975 () Unit!61898)

(assert (=> d!1185743 (= lt!1417975 (choose!24194 lt!1417807 lt!1417820))))

(assert (=> d!1185743 (= (lemmaConcatTwoListThenFirstIsPrefix!2748 lt!1417807 lt!1417820) lt!1417975)))

(declare-fun bs!589124 () Bool)

(assert (= bs!589124 d!1185743))

(assert (=> bs!589124 m!4590571))

(assert (=> bs!589124 m!4590571))

(declare-fun m!4591107 () Bool)

(assert (=> bs!589124 m!4591107))

(declare-fun m!4591109 () Bool)

(assert (=> bs!589124 m!4591109))

(assert (=> b!4007140 d!1185743))

(declare-fun b!4007577 () Bool)

(declare-fun e!2485293 () Bool)

(declare-fun e!2485294 () Bool)

(assert (=> b!4007577 (= e!2485293 e!2485294)))

(declare-fun res!1628669 () Bool)

(assert (=> b!4007577 (=> (not res!1628669) (not e!2485294))))

(assert (=> b!4007577 (= res!1628669 (not ((_ is Nil!42896) lt!1417799)))))

(declare-fun b!4007580 () Bool)

(declare-fun e!2485295 () Bool)

(assert (=> b!4007580 (= e!2485295 (>= (size!32074 lt!1417799) (size!32074 lt!1417807)))))

(declare-fun b!4007579 () Bool)

(assert (=> b!4007579 (= e!2485294 (isPrefix!3907 (tail!6245 lt!1417807) (tail!6245 lt!1417799)))))

(declare-fun d!1185745 () Bool)

(assert (=> d!1185745 e!2485295))

(declare-fun res!1628672 () Bool)

(assert (=> d!1185745 (=> res!1628672 e!2485295)))

(declare-fun lt!1417976 () Bool)

(assert (=> d!1185745 (= res!1628672 (not lt!1417976))))

(assert (=> d!1185745 (= lt!1417976 e!2485293)))

(declare-fun res!1628671 () Bool)

(assert (=> d!1185745 (=> res!1628671 e!2485293)))

(assert (=> d!1185745 (= res!1628671 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185745 (= (isPrefix!3907 lt!1417807 lt!1417799) lt!1417976)))

(declare-fun b!4007578 () Bool)

(declare-fun res!1628670 () Bool)

(assert (=> b!4007578 (=> (not res!1628670) (not e!2485294))))

(assert (=> b!4007578 (= res!1628670 (= (head!8513 lt!1417807) (head!8513 lt!1417799)))))

(assert (= (and d!1185745 (not res!1628671)) b!4007577))

(assert (= (and b!4007577 res!1628669) b!4007578))

(assert (= (and b!4007578 res!1628670) b!4007579))

(assert (= (and d!1185745 (not res!1628672)) b!4007580))

(declare-fun m!4591111 () Bool)

(assert (=> b!4007580 m!4591111))

(assert (=> b!4007580 m!4590563))

(assert (=> b!4007579 m!4590789))

(declare-fun m!4591113 () Bool)

(assert (=> b!4007579 m!4591113))

(assert (=> b!4007579 m!4590789))

(assert (=> b!4007579 m!4591113))

(declare-fun m!4591115 () Bool)

(assert (=> b!4007579 m!4591115))

(assert (=> b!4007578 m!4590793))

(declare-fun m!4591117 () Bool)

(assert (=> b!4007578 m!4591117))

(assert (=> b!4007140 d!1185745))

(declare-fun b!4007599 () Bool)

(declare-fun res!1628689 () Bool)

(declare-fun e!2485307 () Bool)

(assert (=> b!4007599 (=> (not res!1628689) (not e!2485307))))

(declare-fun lt!1417987 () Option!9234)

(assert (=> b!4007599 (= res!1628689 (= (value!215004 (_1!24159 (get!14098 lt!1417987))) (apply!10017 (transformation!6820 (rule!9858 (_1!24159 (get!14098 lt!1417987)))) (seqFromList!5045 (originalCharacters!7420 (_1!24159 (get!14098 lt!1417987)))))))))

(declare-fun b!4007600 () Bool)

(declare-fun e!2485304 () Bool)

(declare-datatypes ((tuple2!42054 0))(
  ( (tuple2!42055 (_1!24161 List!43020) (_2!24161 List!43020)) )
))
(declare-fun findLongestMatchInner!1353 (Regex!11725 List!43020 Int List!43020 List!43020 Int) tuple2!42054)

(assert (=> b!4007600 (= e!2485304 (matchR!5686 (regex!6820 (rule!9858 token!484)) (_1!24161 (findLongestMatchInner!1353 (regex!6820 (rule!9858 token!484)) Nil!42896 (size!32074 Nil!42896) lt!1417824 lt!1417824 (size!32074 lt!1417824)))))))

(declare-fun b!4007601 () Bool)

(declare-fun e!2485305 () Bool)

(assert (=> b!4007601 (= e!2485305 e!2485307)))

(declare-fun res!1628688 () Bool)

(assert (=> b!4007601 (=> (not res!1628688) (not e!2485307))))

(assert (=> b!4007601 (= res!1628688 (matchR!5686 (regex!6820 (rule!9858 token!484)) (list!15938 (charsOf!4636 (_1!24159 (get!14098 lt!1417987))))))))

(declare-fun b!4007602 () Bool)

(declare-fun e!2485306 () Option!9234)

(assert (=> b!4007602 (= e!2485306 None!9233)))

(declare-fun b!4007603 () Bool)

(declare-fun res!1628690 () Bool)

(assert (=> b!4007603 (=> (not res!1628690) (not e!2485307))))

(assert (=> b!4007603 (= res!1628690 (< (size!32074 (_2!24159 (get!14098 lt!1417987))) (size!32074 lt!1417824)))))

(declare-fun b!4007604 () Bool)

(assert (=> b!4007604 (= e!2485307 (= (size!32073 (_1!24159 (get!14098 lt!1417987))) (size!32074 (originalCharacters!7420 (_1!24159 (get!14098 lt!1417987))))))))

(declare-fun b!4007605 () Bool)

(declare-fun res!1628687 () Bool)

(assert (=> b!4007605 (=> (not res!1628687) (not e!2485307))))

(assert (=> b!4007605 (= res!1628687 (= (++!11222 (list!15938 (charsOf!4636 (_1!24159 (get!14098 lt!1417987)))) (_2!24159 (get!14098 lt!1417987))) lt!1417824))))

(declare-fun d!1185747 () Bool)

(assert (=> d!1185747 e!2485305))

(declare-fun res!1628691 () Bool)

(assert (=> d!1185747 (=> res!1628691 e!2485305)))

(assert (=> d!1185747 (= res!1628691 (isEmpty!25628 lt!1417987))))

(assert (=> d!1185747 (= lt!1417987 e!2485306)))

(declare-fun c!692961 () Bool)

(declare-fun lt!1417990 () tuple2!42054)

(assert (=> d!1185747 (= c!692961 (isEmpty!25627 (_1!24161 lt!1417990)))))

(declare-fun findLongestMatch!1266 (Regex!11725 List!43020) tuple2!42054)

(assert (=> d!1185747 (= lt!1417990 (findLongestMatch!1266 (regex!6820 (rule!9858 token!484)) lt!1417824))))

(assert (=> d!1185747 (ruleValid!2752 thiss!21717 (rule!9858 token!484))))

(assert (=> d!1185747 (= (maxPrefixOneRule!2727 thiss!21717 (rule!9858 token!484) lt!1417824) lt!1417987)))

(declare-fun b!4007606 () Bool)

(declare-fun res!1628692 () Bool)

(assert (=> b!4007606 (=> (not res!1628692) (not e!2485307))))

(assert (=> b!4007606 (= res!1628692 (= (rule!9858 (_1!24159 (get!14098 lt!1417987))) (rule!9858 token!484)))))

(declare-fun b!4007607 () Bool)

(declare-fun size!32076 (BalanceConc!25656) Int)

(assert (=> b!4007607 (= e!2485306 (Some!9233 (tuple2!42051 (Token!12779 (apply!10017 (transformation!6820 (rule!9858 token!484)) (seqFromList!5045 (_1!24161 lt!1417990))) (rule!9858 token!484) (size!32076 (seqFromList!5045 (_1!24161 lt!1417990))) (_1!24161 lt!1417990)) (_2!24161 lt!1417990))))))

(declare-fun lt!1417988 () Unit!61898)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1326 (Regex!11725 List!43020) Unit!61898)

(assert (=> b!4007607 (= lt!1417988 (longestMatchIsAcceptedByMatchOrIsEmpty!1326 (regex!6820 (rule!9858 token!484)) lt!1417824))))

(declare-fun res!1628693 () Bool)

(assert (=> b!4007607 (= res!1628693 (isEmpty!25627 (_1!24161 (findLongestMatchInner!1353 (regex!6820 (rule!9858 token!484)) Nil!42896 (size!32074 Nil!42896) lt!1417824 lt!1417824 (size!32074 lt!1417824)))))))

(assert (=> b!4007607 (=> res!1628693 e!2485304)))

(assert (=> b!4007607 e!2485304))

(declare-fun lt!1417991 () Unit!61898)

(assert (=> b!4007607 (= lt!1417991 lt!1417988)))

(declare-fun lt!1417989 () Unit!61898)

(declare-fun lemmaSemiInverse!1873 (TokenValueInjection!13528 BalanceConc!25656) Unit!61898)

(assert (=> b!4007607 (= lt!1417989 (lemmaSemiInverse!1873 (transformation!6820 (rule!9858 token!484)) (seqFromList!5045 (_1!24161 lt!1417990))))))

(assert (= (and d!1185747 c!692961) b!4007602))

(assert (= (and d!1185747 (not c!692961)) b!4007607))

(assert (= (and b!4007607 (not res!1628693)) b!4007600))

(assert (= (and d!1185747 (not res!1628691)) b!4007601))

(assert (= (and b!4007601 res!1628688) b!4007605))

(assert (= (and b!4007605 res!1628687) b!4007603))

(assert (= (and b!4007603 res!1628690) b!4007606))

(assert (= (and b!4007606 res!1628692) b!4007599))

(assert (= (and b!4007599 res!1628689) b!4007604))

(declare-fun m!4591119 () Bool)

(assert (=> b!4007607 m!4591119))

(declare-fun m!4591121 () Bool)

(assert (=> b!4007607 m!4591121))

(assert (=> b!4007607 m!4590833))

(declare-fun m!4591123 () Bool)

(assert (=> b!4007607 m!4591123))

(declare-fun m!4591125 () Bool)

(assert (=> b!4007607 m!4591125))

(declare-fun m!4591127 () Bool)

(assert (=> b!4007607 m!4591127))

(assert (=> b!4007607 m!4591125))

(declare-fun m!4591129 () Bool)

(assert (=> b!4007607 m!4591129))

(assert (=> b!4007607 m!4591125))

(declare-fun m!4591131 () Bool)

(assert (=> b!4007607 m!4591131))

(assert (=> b!4007607 m!4591125))

(declare-fun m!4591133 () Bool)

(assert (=> b!4007607 m!4591133))

(assert (=> b!4007607 m!4591121))

(assert (=> b!4007607 m!4590833))

(declare-fun m!4591135 () Bool)

(assert (=> d!1185747 m!4591135))

(declare-fun m!4591137 () Bool)

(assert (=> d!1185747 m!4591137))

(declare-fun m!4591139 () Bool)

(assert (=> d!1185747 m!4591139))

(assert (=> d!1185747 m!4590555))

(declare-fun m!4591141 () Bool)

(assert (=> b!4007606 m!4591141))

(assert (=> b!4007601 m!4591141))

(declare-fun m!4591143 () Bool)

(assert (=> b!4007601 m!4591143))

(assert (=> b!4007601 m!4591143))

(declare-fun m!4591145 () Bool)

(assert (=> b!4007601 m!4591145))

(assert (=> b!4007601 m!4591145))

(declare-fun m!4591147 () Bool)

(assert (=> b!4007601 m!4591147))

(assert (=> b!4007603 m!4591141))

(declare-fun m!4591149 () Bool)

(assert (=> b!4007603 m!4591149))

(assert (=> b!4007603 m!4590833))

(assert (=> b!4007599 m!4591141))

(declare-fun m!4591151 () Bool)

(assert (=> b!4007599 m!4591151))

(assert (=> b!4007599 m!4591151))

(declare-fun m!4591153 () Bool)

(assert (=> b!4007599 m!4591153))

(assert (=> b!4007605 m!4591141))

(assert (=> b!4007605 m!4591143))

(assert (=> b!4007605 m!4591143))

(assert (=> b!4007605 m!4591145))

(assert (=> b!4007605 m!4591145))

(declare-fun m!4591155 () Bool)

(assert (=> b!4007605 m!4591155))

(assert (=> b!4007604 m!4591141))

(declare-fun m!4591157 () Bool)

(assert (=> b!4007604 m!4591157))

(assert (=> b!4007600 m!4591121))

(assert (=> b!4007600 m!4590833))

(assert (=> b!4007600 m!4591121))

(assert (=> b!4007600 m!4590833))

(assert (=> b!4007600 m!4591123))

(declare-fun m!4591159 () Bool)

(assert (=> b!4007600 m!4591159))

(assert (=> b!4007140 d!1185747))

(declare-fun d!1185749 () Bool)

(declare-fun fromListB!2310 (List!43020) BalanceConc!25656)

(assert (=> d!1185749 (= (seqFromList!5045 lt!1417807) (fromListB!2310 lt!1417807))))

(declare-fun bs!589125 () Bool)

(assert (= bs!589125 d!1185749))

(declare-fun m!4591161 () Bool)

(assert (=> bs!589125 m!4591161))

(assert (=> b!4007140 d!1185749))

(declare-fun d!1185751 () Bool)

(assert (=> d!1185751 (= lt!1417820 suffixResult!105)))

(declare-fun lt!1417994 () Unit!61898)

(declare-fun choose!24197 (List!43020 List!43020 List!43020 List!43020 List!43020) Unit!61898)

(assert (=> d!1185751 (= lt!1417994 (choose!24197 lt!1417807 lt!1417820 lt!1417807 suffixResult!105 lt!1417824))))

(assert (=> d!1185751 (isPrefix!3907 lt!1417807 lt!1417824)))

(assert (=> d!1185751 (= (lemmaSamePrefixThenSameSuffix!2078 lt!1417807 lt!1417820 lt!1417807 suffixResult!105 lt!1417824) lt!1417994)))

(declare-fun bs!589126 () Bool)

(assert (= bs!589126 d!1185751))

(declare-fun m!4591163 () Bool)

(assert (=> bs!589126 m!4591163))

(assert (=> bs!589126 m!4590547))

(assert (=> b!4007140 d!1185751))

(declare-fun d!1185753 () Bool)

(declare-fun res!1628696 () Bool)

(declare-fun e!2485310 () Bool)

(assert (=> d!1185753 (=> (not res!1628696) (not e!2485310))))

(declare-fun rulesValid!2653 (LexerInterface!6409 List!43022) Bool)

(assert (=> d!1185753 (= res!1628696 (rulesValid!2653 thiss!21717 rules!2999))))

(assert (=> d!1185753 (= (rulesInvariant!5752 thiss!21717 rules!2999) e!2485310)))

(declare-fun b!4007610 () Bool)

(declare-datatypes ((List!43024 0))(
  ( (Nil!42900) (Cons!42900 (h!48320 String!48968) (t!332649 List!43024)) )
))
(declare-fun noDuplicateTag!2654 (LexerInterface!6409 List!43022 List!43024) Bool)

(assert (=> b!4007610 (= e!2485310 (noDuplicateTag!2654 thiss!21717 rules!2999 Nil!42900))))

(assert (= (and d!1185753 res!1628696) b!4007610))

(declare-fun m!4591165 () Bool)

(assert (=> d!1185753 m!4591165))

(declare-fun m!4591167 () Bool)

(assert (=> b!4007610 m!4591167))

(assert (=> b!4007142 d!1185753))

(declare-fun b!4007611 () Bool)

(declare-fun e!2485311 () Bool)

(declare-fun e!2485312 () Bool)

(assert (=> b!4007611 (= e!2485311 e!2485312)))

(declare-fun res!1628697 () Bool)

(assert (=> b!4007611 (=> (not res!1628697) (not e!2485312))))

(assert (=> b!4007611 (= res!1628697 (not ((_ is Nil!42896) suffix!1299)))))

(declare-fun b!4007614 () Bool)

(declare-fun e!2485313 () Bool)

(assert (=> b!4007614 (= e!2485313 (>= (size!32074 suffix!1299) (size!32074 newSuffix!27)))))

(declare-fun b!4007613 () Bool)

(assert (=> b!4007613 (= e!2485312 (isPrefix!3907 (tail!6245 newSuffix!27) (tail!6245 suffix!1299)))))

(declare-fun d!1185755 () Bool)

(assert (=> d!1185755 e!2485313))

(declare-fun res!1628700 () Bool)

(assert (=> d!1185755 (=> res!1628700 e!2485313)))

(declare-fun lt!1417995 () Bool)

(assert (=> d!1185755 (= res!1628700 (not lt!1417995))))

(assert (=> d!1185755 (= lt!1417995 e!2485311)))

(declare-fun res!1628699 () Bool)

(assert (=> d!1185755 (=> res!1628699 e!2485311)))

(assert (=> d!1185755 (= res!1628699 ((_ is Nil!42896) newSuffix!27))))

(assert (=> d!1185755 (= (isPrefix!3907 newSuffix!27 suffix!1299) lt!1417995)))

(declare-fun b!4007612 () Bool)

(declare-fun res!1628698 () Bool)

(assert (=> b!4007612 (=> (not res!1628698) (not e!2485312))))

(assert (=> b!4007612 (= res!1628698 (= (head!8513 newSuffix!27) (head!8513 suffix!1299)))))

(assert (= (and d!1185755 (not res!1628699)) b!4007611))

(assert (= (and b!4007611 res!1628697) b!4007612))

(assert (= (and b!4007612 res!1628698) b!4007613))

(assert (= (and d!1185755 (not res!1628700)) b!4007614))

(assert (=> b!4007614 m!4590593))

(assert (=> b!4007614 m!4590595))

(declare-fun m!4591169 () Bool)

(assert (=> b!4007613 m!4591169))

(declare-fun m!4591171 () Bool)

(assert (=> b!4007613 m!4591171))

(assert (=> b!4007613 m!4591169))

(assert (=> b!4007613 m!4591171))

(declare-fun m!4591173 () Bool)

(assert (=> b!4007613 m!4591173))

(declare-fun m!4591175 () Bool)

(assert (=> b!4007612 m!4591175))

(declare-fun m!4591177 () Bool)

(assert (=> b!4007612 m!4591177))

(assert (=> b!4007152 d!1185755))

(declare-fun b!4007643 () Bool)

(declare-fun e!2485332 () Bool)

(declare-fun lt!1417998 () Bool)

(assert (=> b!4007643 (= e!2485332 (not lt!1417998))))

(declare-fun b!4007644 () Bool)

(declare-fun e!2485330 () Bool)

(declare-fun derivativeStep!3521 (Regex!11725 C!23636) Regex!11725)

(assert (=> b!4007644 (= e!2485330 (matchR!5686 (derivativeStep!3521 (regex!6820 (rule!9858 token!484)) (head!8513 lt!1417807)) (tail!6245 lt!1417807)))))

(declare-fun d!1185757 () Bool)

(declare-fun e!2485331 () Bool)

(assert (=> d!1185757 e!2485331))

(declare-fun c!692970 () Bool)

(assert (=> d!1185757 (= c!692970 ((_ is EmptyExpr!11725) (regex!6820 (rule!9858 token!484))))))

(assert (=> d!1185757 (= lt!1417998 e!2485330)))

(declare-fun c!692968 () Bool)

(assert (=> d!1185757 (= c!692968 (isEmpty!25627 lt!1417807))))

(assert (=> d!1185757 (validRegex!5312 (regex!6820 (rule!9858 token!484)))))

(assert (=> d!1185757 (= (matchR!5686 (regex!6820 (rule!9858 token!484)) lt!1417807) lt!1417998)))

(declare-fun bm!286219 () Bool)

(declare-fun call!286224 () Bool)

(assert (=> bm!286219 (= call!286224 (isEmpty!25627 lt!1417807))))

(declare-fun b!4007645 () Bool)

(assert (=> b!4007645 (= e!2485331 e!2485332)))

(declare-fun c!692969 () Bool)

(assert (=> b!4007645 (= c!692969 ((_ is EmptyLang!11725) (regex!6820 (rule!9858 token!484))))))

(declare-fun b!4007646 () Bool)

(assert (=> b!4007646 (= e!2485331 (= lt!1417998 call!286224))))

(declare-fun b!4007647 () Bool)

(declare-fun e!2485334 () Bool)

(assert (=> b!4007647 (= e!2485334 (not (= (head!8513 lt!1417807) (c!692889 (regex!6820 (rule!9858 token!484))))))))

(declare-fun b!4007648 () Bool)

(declare-fun e!2485333 () Bool)

(assert (=> b!4007648 (= e!2485333 (= (head!8513 lt!1417807) (c!692889 (regex!6820 (rule!9858 token!484)))))))

(declare-fun b!4007649 () Bool)

(declare-fun res!1628721 () Bool)

(declare-fun e!2485328 () Bool)

(assert (=> b!4007649 (=> res!1628721 e!2485328)))

(assert (=> b!4007649 (= res!1628721 (not ((_ is ElementMatch!11725) (regex!6820 (rule!9858 token!484)))))))

(assert (=> b!4007649 (= e!2485332 e!2485328)))

(declare-fun b!4007650 () Bool)

(declare-fun res!1628717 () Bool)

(assert (=> b!4007650 (=> res!1628717 e!2485328)))

(assert (=> b!4007650 (= res!1628717 e!2485333)))

(declare-fun res!1628723 () Bool)

(assert (=> b!4007650 (=> (not res!1628723) (not e!2485333))))

(assert (=> b!4007650 (= res!1628723 lt!1417998)))

(declare-fun b!4007651 () Bool)

(declare-fun e!2485329 () Bool)

(assert (=> b!4007651 (= e!2485328 e!2485329)))

(declare-fun res!1628719 () Bool)

(assert (=> b!4007651 (=> (not res!1628719) (not e!2485329))))

(assert (=> b!4007651 (= res!1628719 (not lt!1417998))))

(declare-fun b!4007652 () Bool)

(declare-fun res!1628722 () Bool)

(assert (=> b!4007652 (=> res!1628722 e!2485334)))

(assert (=> b!4007652 (= res!1628722 (not (isEmpty!25627 (tail!6245 lt!1417807))))))

(declare-fun b!4007653 () Bool)

(assert (=> b!4007653 (= e!2485329 e!2485334)))

(declare-fun res!1628720 () Bool)

(assert (=> b!4007653 (=> res!1628720 e!2485334)))

(assert (=> b!4007653 (= res!1628720 call!286224)))

(declare-fun b!4007654 () Bool)

(assert (=> b!4007654 (= e!2485330 (nullable!4112 (regex!6820 (rule!9858 token!484))))))

(declare-fun b!4007655 () Bool)

(declare-fun res!1628724 () Bool)

(assert (=> b!4007655 (=> (not res!1628724) (not e!2485333))))

(assert (=> b!4007655 (= res!1628724 (isEmpty!25627 (tail!6245 lt!1417807)))))

(declare-fun b!4007656 () Bool)

(declare-fun res!1628718 () Bool)

(assert (=> b!4007656 (=> (not res!1628718) (not e!2485333))))

(assert (=> b!4007656 (= res!1628718 (not call!286224))))

(assert (= (and d!1185757 c!692968) b!4007654))

(assert (= (and d!1185757 (not c!692968)) b!4007644))

(assert (= (and d!1185757 c!692970) b!4007646))

(assert (= (and d!1185757 (not c!692970)) b!4007645))

(assert (= (and b!4007645 c!692969) b!4007643))

(assert (= (and b!4007645 (not c!692969)) b!4007649))

(assert (= (and b!4007649 (not res!1628721)) b!4007650))

(assert (= (and b!4007650 res!1628723) b!4007656))

(assert (= (and b!4007656 res!1628718) b!4007655))

(assert (= (and b!4007655 res!1628724) b!4007648))

(assert (= (and b!4007650 (not res!1628717)) b!4007651))

(assert (= (and b!4007651 res!1628719) b!4007653))

(assert (= (and b!4007653 (not res!1628720)) b!4007652))

(assert (= (and b!4007652 (not res!1628722)) b!4007647))

(assert (= (or b!4007646 b!4007653 b!4007656) bm!286219))

(assert (=> b!4007648 m!4590793))

(assert (=> b!4007644 m!4590793))

(assert (=> b!4007644 m!4590793))

(declare-fun m!4591179 () Bool)

(assert (=> b!4007644 m!4591179))

(assert (=> b!4007644 m!4590789))

(assert (=> b!4007644 m!4591179))

(assert (=> b!4007644 m!4590789))

(declare-fun m!4591181 () Bool)

(assert (=> b!4007644 m!4591181))

(assert (=> b!4007654 m!4590657))

(declare-fun m!4591183 () Bool)

(assert (=> bm!286219 m!4591183))

(assert (=> b!4007652 m!4590789))

(assert (=> b!4007652 m!4590789))

(declare-fun m!4591185 () Bool)

(assert (=> b!4007652 m!4591185))

(assert (=> d!1185757 m!4591183))

(assert (=> d!1185757 m!4590655))

(assert (=> b!4007655 m!4590789))

(assert (=> b!4007655 m!4590789))

(assert (=> b!4007655 m!4591185))

(assert (=> b!4007647 m!4590793))

(assert (=> b!4007141 d!1185757))

(declare-fun b!4007657 () Bool)

(declare-fun e!2485335 () Bool)

(declare-fun e!2485336 () Bool)

(assert (=> b!4007657 (= e!2485335 e!2485336)))

(declare-fun res!1628725 () Bool)

(assert (=> b!4007657 (=> (not res!1628725) (not e!2485336))))

(assert (=> b!4007657 (= res!1628725 (not ((_ is Nil!42896) lt!1417819)))))

(declare-fun b!4007660 () Bool)

(declare-fun e!2485337 () Bool)

(assert (=> b!4007660 (= e!2485337 (>= (size!32074 lt!1417819) (size!32074 lt!1417807)))))

(declare-fun b!4007659 () Bool)

(assert (=> b!4007659 (= e!2485336 (isPrefix!3907 (tail!6245 lt!1417807) (tail!6245 lt!1417819)))))

(declare-fun d!1185759 () Bool)

(assert (=> d!1185759 e!2485337))

(declare-fun res!1628728 () Bool)

(assert (=> d!1185759 (=> res!1628728 e!2485337)))

(declare-fun lt!1417999 () Bool)

(assert (=> d!1185759 (= res!1628728 (not lt!1417999))))

(assert (=> d!1185759 (= lt!1417999 e!2485335)))

(declare-fun res!1628727 () Bool)

(assert (=> d!1185759 (=> res!1628727 e!2485335)))

(assert (=> d!1185759 (= res!1628727 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185759 (= (isPrefix!3907 lt!1417807 lt!1417819) lt!1417999)))

(declare-fun b!4007658 () Bool)

(declare-fun res!1628726 () Bool)

(assert (=> b!4007658 (=> (not res!1628726) (not e!2485336))))

(assert (=> b!4007658 (= res!1628726 (= (head!8513 lt!1417807) (head!8513 lt!1417819)))))

(assert (= (and d!1185759 (not res!1628727)) b!4007657))

(assert (= (and b!4007657 res!1628725) b!4007658))

(assert (= (and b!4007658 res!1628726) b!4007659))

(assert (= (and d!1185759 (not res!1628728)) b!4007660))

(declare-fun m!4591187 () Bool)

(assert (=> b!4007660 m!4591187))

(assert (=> b!4007660 m!4590563))

(assert (=> b!4007659 m!4590789))

(declare-fun m!4591189 () Bool)

(assert (=> b!4007659 m!4591189))

(assert (=> b!4007659 m!4590789))

(assert (=> b!4007659 m!4591189))

(declare-fun m!4591191 () Bool)

(assert (=> b!4007659 m!4591191))

(assert (=> b!4007658 m!4590793))

(declare-fun m!4591193 () Bool)

(assert (=> b!4007658 m!4591193))

(assert (=> b!4007141 d!1185759))

(declare-fun d!1185761 () Bool)

(assert (=> d!1185761 (isPrefix!3907 lt!1417807 (++!11222 prefix!494 newSuffix!27))))

(declare-fun lt!1418002 () Unit!61898)

(declare-fun choose!24198 (List!43020 List!43020 List!43020) Unit!61898)

(assert (=> d!1185761 (= lt!1418002 (choose!24198 lt!1417807 prefix!494 newSuffix!27))))

(assert (=> d!1185761 (isPrefix!3907 lt!1417807 prefix!494)))

(assert (=> d!1185761 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!720 lt!1417807 prefix!494 newSuffix!27) lt!1418002)))

(declare-fun bs!589127 () Bool)

(assert (= bs!589127 d!1185761))

(assert (=> bs!589127 m!4590559))

(assert (=> bs!589127 m!4590559))

(declare-fun m!4591195 () Bool)

(assert (=> bs!589127 m!4591195))

(declare-fun m!4591197 () Bool)

(assert (=> bs!589127 m!4591197))

(assert (=> bs!589127 m!4590537))

(assert (=> b!4007141 d!1185761))

(declare-fun d!1185763 () Bool)

(assert (=> d!1185763 (isPrefix!3907 lt!1417807 (++!11222 prefix!494 suffix!1299))))

(declare-fun lt!1418003 () Unit!61898)

(assert (=> d!1185763 (= lt!1418003 (choose!24198 lt!1417807 prefix!494 suffix!1299))))

(assert (=> d!1185763 (isPrefix!3907 lt!1417807 prefix!494)))

(assert (=> d!1185763 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!720 lt!1417807 prefix!494 suffix!1299) lt!1418003)))

(declare-fun bs!589128 () Bool)

(assert (= bs!589128 d!1185763))

(assert (=> bs!589128 m!4590511))

(assert (=> bs!589128 m!4590511))

(declare-fun m!4591199 () Bool)

(assert (=> bs!589128 m!4591199))

(declare-fun m!4591201 () Bool)

(assert (=> bs!589128 m!4591201))

(assert (=> bs!589128 m!4590537))

(assert (=> b!4007141 d!1185763))

(declare-fun b!4007661 () Bool)

(declare-fun e!2485338 () List!43020)

(assert (=> b!4007661 (= e!2485338 lt!1417820)))

(declare-fun b!4007662 () Bool)

(assert (=> b!4007662 (= e!2485338 (Cons!42896 (h!48316 lt!1417807) (++!11222 (t!332621 lt!1417807) lt!1417820)))))

(declare-fun d!1185765 () Bool)

(declare-fun e!2485339 () Bool)

(assert (=> d!1185765 e!2485339))

(declare-fun res!1628729 () Bool)

(assert (=> d!1185765 (=> (not res!1628729) (not e!2485339))))

(declare-fun lt!1418004 () List!43020)

(assert (=> d!1185765 (= res!1628729 (= (content!6504 lt!1418004) ((_ map or) (content!6504 lt!1417807) (content!6504 lt!1417820))))))

(assert (=> d!1185765 (= lt!1418004 e!2485338)))

(declare-fun c!692971 () Bool)

(assert (=> d!1185765 (= c!692971 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185765 (= (++!11222 lt!1417807 lt!1417820) lt!1418004)))

(declare-fun b!4007664 () Bool)

(assert (=> b!4007664 (= e!2485339 (or (not (= lt!1417820 Nil!42896)) (= lt!1418004 lt!1417807)))))

(declare-fun b!4007663 () Bool)

(declare-fun res!1628730 () Bool)

(assert (=> b!4007663 (=> (not res!1628730) (not e!2485339))))

(assert (=> b!4007663 (= res!1628730 (= (size!32074 lt!1418004) (+ (size!32074 lt!1417807) (size!32074 lt!1417820))))))

(assert (= (and d!1185765 c!692971) b!4007661))

(assert (= (and d!1185765 (not c!692971)) b!4007662))

(assert (= (and d!1185765 res!1628729) b!4007663))

(assert (= (and b!4007663 res!1628730) b!4007664))

(declare-fun m!4591203 () Bool)

(assert (=> b!4007662 m!4591203))

(declare-fun m!4591205 () Bool)

(assert (=> d!1185765 m!4591205))

(assert (=> d!1185765 m!4590633))

(declare-fun m!4591207 () Bool)

(assert (=> d!1185765 m!4591207))

(declare-fun m!4591209 () Bool)

(assert (=> b!4007663 m!4591209))

(assert (=> b!4007663 m!4590563))

(declare-fun m!4591211 () Bool)

(assert (=> b!4007663 m!4591211))

(assert (=> b!4007143 d!1185765))

(declare-fun b!4007665 () Bool)

(declare-fun e!2485340 () List!43020)

(assert (=> b!4007665 (= e!2485340 suffix!1299)))

(declare-fun b!4007666 () Bool)

(assert (=> b!4007666 (= e!2485340 (Cons!42896 (h!48316 lt!1417822) (++!11222 (t!332621 lt!1417822) suffix!1299)))))

(declare-fun d!1185767 () Bool)

(declare-fun e!2485341 () Bool)

(assert (=> d!1185767 e!2485341))

(declare-fun res!1628731 () Bool)

(assert (=> d!1185767 (=> (not res!1628731) (not e!2485341))))

(declare-fun lt!1418005 () List!43020)

(assert (=> d!1185767 (= res!1628731 (= (content!6504 lt!1418005) ((_ map or) (content!6504 lt!1417822) (content!6504 suffix!1299))))))

(assert (=> d!1185767 (= lt!1418005 e!2485340)))

(declare-fun c!692972 () Bool)

(assert (=> d!1185767 (= c!692972 ((_ is Nil!42896) lt!1417822))))

(assert (=> d!1185767 (= (++!11222 lt!1417822 suffix!1299) lt!1418005)))

(declare-fun b!4007668 () Bool)

(assert (=> b!4007668 (= e!2485341 (or (not (= suffix!1299 Nil!42896)) (= lt!1418005 lt!1417822)))))

(declare-fun b!4007667 () Bool)

(declare-fun res!1628732 () Bool)

(assert (=> b!4007667 (=> (not res!1628732) (not e!2485341))))

(assert (=> b!4007667 (= res!1628732 (= (size!32074 lt!1418005) (+ (size!32074 lt!1417822) (size!32074 suffix!1299))))))

(assert (= (and d!1185767 c!692972) b!4007665))

(assert (= (and d!1185767 (not c!692972)) b!4007666))

(assert (= (and d!1185767 res!1628731) b!4007667))

(assert (= (and b!4007667 res!1628732) b!4007668))

(declare-fun m!4591213 () Bool)

(assert (=> b!4007666 m!4591213))

(declare-fun m!4591215 () Bool)

(assert (=> d!1185767 m!4591215))

(declare-fun m!4591217 () Bool)

(assert (=> d!1185767 m!4591217))

(assert (=> d!1185767 m!4591085))

(declare-fun m!4591219 () Bool)

(assert (=> b!4007667 m!4591219))

(declare-fun m!4591221 () Bool)

(assert (=> b!4007667 m!4591221))

(assert (=> b!4007667 m!4590593))

(assert (=> b!4007143 d!1185767))

(declare-fun b!4007669 () Bool)

(declare-fun e!2485342 () List!43020)

(assert (=> b!4007669 (= e!2485342 suffix!1299)))

(declare-fun b!4007670 () Bool)

(assert (=> b!4007670 (= e!2485342 (Cons!42896 (h!48316 lt!1417818) (++!11222 (t!332621 lt!1417818) suffix!1299)))))

(declare-fun d!1185769 () Bool)

(declare-fun e!2485343 () Bool)

(assert (=> d!1185769 e!2485343))

(declare-fun res!1628733 () Bool)

(assert (=> d!1185769 (=> (not res!1628733) (not e!2485343))))

(declare-fun lt!1418006 () List!43020)

(assert (=> d!1185769 (= res!1628733 (= (content!6504 lt!1418006) ((_ map or) (content!6504 lt!1417818) (content!6504 suffix!1299))))))

(assert (=> d!1185769 (= lt!1418006 e!2485342)))

(declare-fun c!692973 () Bool)

(assert (=> d!1185769 (= c!692973 ((_ is Nil!42896) lt!1417818))))

(assert (=> d!1185769 (= (++!11222 lt!1417818 suffix!1299) lt!1418006)))

(declare-fun b!4007672 () Bool)

(assert (=> b!4007672 (= e!2485343 (or (not (= suffix!1299 Nil!42896)) (= lt!1418006 lt!1417818)))))

(declare-fun b!4007671 () Bool)

(declare-fun res!1628734 () Bool)

(assert (=> b!4007671 (=> (not res!1628734) (not e!2485343))))

(assert (=> b!4007671 (= res!1628734 (= (size!32074 lt!1418006) (+ (size!32074 lt!1417818) (size!32074 suffix!1299))))))

(assert (= (and d!1185769 c!692973) b!4007669))

(assert (= (and d!1185769 (not c!692973)) b!4007670))

(assert (= (and d!1185769 res!1628733) b!4007671))

(assert (= (and b!4007671 res!1628734) b!4007672))

(declare-fun m!4591223 () Bool)

(assert (=> b!4007670 m!4591223))

(declare-fun m!4591225 () Bool)

(assert (=> d!1185769 m!4591225))

(assert (=> d!1185769 m!4590739))

(assert (=> d!1185769 m!4591085))

(declare-fun m!4591227 () Bool)

(assert (=> b!4007671 m!4591227))

(assert (=> b!4007671 m!4590743))

(assert (=> b!4007671 m!4590593))

(assert (=> b!4007143 d!1185769))

(declare-fun d!1185771 () Bool)

(assert (=> d!1185771 (= (++!11222 (++!11222 lt!1417807 lt!1417818) suffix!1299) (++!11222 lt!1417807 (++!11222 lt!1417818 suffix!1299)))))

(declare-fun lt!1418009 () Unit!61898)

(declare-fun choose!24199 (List!43020 List!43020 List!43020) Unit!61898)

(assert (=> d!1185771 (= lt!1418009 (choose!24199 lt!1417807 lt!1417818 suffix!1299))))

(assert (=> d!1185771 (= (lemmaConcatAssociativity!2532 lt!1417807 lt!1417818 suffix!1299) lt!1418009)))

(declare-fun bs!589129 () Bool)

(assert (= bs!589129 d!1185771))

(assert (=> bs!589129 m!4590533))

(assert (=> bs!589129 m!4590575))

(declare-fun m!4591229 () Bool)

(assert (=> bs!589129 m!4591229))

(assert (=> bs!589129 m!4590575))

(assert (=> bs!589129 m!4590533))

(declare-fun m!4591231 () Bool)

(assert (=> bs!589129 m!4591231))

(declare-fun m!4591233 () Bool)

(assert (=> bs!589129 m!4591233))

(assert (=> b!4007143 d!1185771))

(declare-fun d!1185773 () Bool)

(assert (=> d!1185773 (= (inv!57289 (tag!7680 (rule!9858 token!484))) (= (mod (str.len (value!215003 (tag!7680 (rule!9858 token!484)))) 2) 0))))

(assert (=> b!4007132 d!1185773))

(declare-fun d!1185775 () Bool)

(declare-fun res!1628735 () Bool)

(declare-fun e!2485344 () Bool)

(assert (=> d!1185775 (=> (not res!1628735) (not e!2485344))))

(assert (=> d!1185775 (= res!1628735 (semiInverseModEq!2919 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))))))

(assert (=> d!1185775 (= (inv!57292 (transformation!6820 (rule!9858 token!484))) e!2485344)))

(declare-fun b!4007673 () Bool)

(assert (=> b!4007673 (= e!2485344 (equivClasses!2818 (toChars!9179 (transformation!6820 (rule!9858 token!484))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))))))

(assert (= (and d!1185775 res!1628735) b!4007673))

(assert (=> d!1185775 m!4590651))

(assert (=> b!4007673 m!4590653))

(assert (=> b!4007132 d!1185775))

(declare-fun b!4007674 () Bool)

(declare-fun e!2485345 () List!43020)

(assert (=> b!4007674 (= e!2485345 (getSuffix!2332 lt!1417824 lt!1417807))))

(declare-fun b!4007675 () Bool)

(assert (=> b!4007675 (= e!2485345 (Cons!42896 (h!48316 lt!1417807) (++!11222 (t!332621 lt!1417807) (getSuffix!2332 lt!1417824 lt!1417807))))))

(declare-fun d!1185777 () Bool)

(declare-fun e!2485346 () Bool)

(assert (=> d!1185777 e!2485346))

(declare-fun res!1628736 () Bool)

(assert (=> d!1185777 (=> (not res!1628736) (not e!2485346))))

(declare-fun lt!1418010 () List!43020)

(assert (=> d!1185777 (= res!1628736 (= (content!6504 lt!1418010) ((_ map or) (content!6504 lt!1417807) (content!6504 (getSuffix!2332 lt!1417824 lt!1417807)))))))

(assert (=> d!1185777 (= lt!1418010 e!2485345)))

(declare-fun c!692974 () Bool)

(assert (=> d!1185777 (= c!692974 ((_ is Nil!42896) lt!1417807))))

(assert (=> d!1185777 (= (++!11222 lt!1417807 (getSuffix!2332 lt!1417824 lt!1417807)) lt!1418010)))

(declare-fun b!4007677 () Bool)

(assert (=> b!4007677 (= e!2485346 (or (not (= (getSuffix!2332 lt!1417824 lt!1417807) Nil!42896)) (= lt!1418010 lt!1417807)))))

(declare-fun b!4007676 () Bool)

(declare-fun res!1628737 () Bool)

(assert (=> b!4007676 (=> (not res!1628737) (not e!2485346))))

(assert (=> b!4007676 (= res!1628737 (= (size!32074 lt!1418010) (+ (size!32074 lt!1417807) (size!32074 (getSuffix!2332 lt!1417824 lt!1417807)))))))

(assert (= (and d!1185777 c!692974) b!4007674))

(assert (= (and d!1185777 (not c!692974)) b!4007675))

(assert (= (and d!1185777 res!1628736) b!4007676))

(assert (= (and b!4007676 res!1628737) b!4007677))

(assert (=> b!4007675 m!4590605))

(declare-fun m!4591235 () Bool)

(assert (=> b!4007675 m!4591235))

(declare-fun m!4591237 () Bool)

(assert (=> d!1185777 m!4591237))

(assert (=> d!1185777 m!4590633))

(assert (=> d!1185777 m!4590605))

(declare-fun m!4591239 () Bool)

(assert (=> d!1185777 m!4591239))

(declare-fun m!4591241 () Bool)

(assert (=> b!4007676 m!4591241))

(assert (=> b!4007676 m!4590563))

(assert (=> b!4007676 m!4590605))

(declare-fun m!4591243 () Bool)

(assert (=> b!4007676 m!4591243))

(assert (=> b!4007135 d!1185777))

(declare-fun d!1185779 () Bool)

(declare-fun lt!1418011 () List!43020)

(assert (=> d!1185779 (= (++!11222 lt!1417807 lt!1418011) lt!1417824)))

(declare-fun e!2485347 () List!43020)

(assert (=> d!1185779 (= lt!1418011 e!2485347)))

(declare-fun c!692975 () Bool)

(assert (=> d!1185779 (= c!692975 ((_ is Cons!42896) lt!1417807))))

(assert (=> d!1185779 (>= (size!32074 lt!1417824) (size!32074 lt!1417807))))

(assert (=> d!1185779 (= (getSuffix!2332 lt!1417824 lt!1417807) lt!1418011)))

(declare-fun b!4007678 () Bool)

(assert (=> b!4007678 (= e!2485347 (getSuffix!2332 (tail!6245 lt!1417824) (t!332621 lt!1417807)))))

(declare-fun b!4007679 () Bool)

(assert (=> b!4007679 (= e!2485347 lt!1417824)))

(assert (= (and d!1185779 c!692975) b!4007678))

(assert (= (and d!1185779 (not c!692975)) b!4007679))

(declare-fun m!4591245 () Bool)

(assert (=> d!1185779 m!4591245))

(assert (=> d!1185779 m!4590833))

(assert (=> d!1185779 m!4590563))

(assert (=> b!4007678 m!4590835))

(assert (=> b!4007678 m!4590835))

(declare-fun m!4591247 () Bool)

(assert (=> b!4007678 m!4591247))

(assert (=> b!4007135 d!1185779))

(declare-fun b!4007680 () Bool)

(declare-fun e!2485348 () Bool)

(declare-fun e!2485349 () Bool)

(assert (=> b!4007680 (= e!2485348 e!2485349)))

(declare-fun res!1628738 () Bool)

(assert (=> b!4007680 (=> (not res!1628738) (not e!2485349))))

(assert (=> b!4007680 (= res!1628738 (not ((_ is Nil!42896) lt!1417824)))))

(declare-fun b!4007683 () Bool)

(declare-fun e!2485350 () Bool)

(assert (=> b!4007683 (= e!2485350 (>= (size!32074 lt!1417824) (size!32074 lt!1417824)))))

(declare-fun b!4007682 () Bool)

(assert (=> b!4007682 (= e!2485349 (isPrefix!3907 (tail!6245 lt!1417824) (tail!6245 lt!1417824)))))

(declare-fun d!1185781 () Bool)

(assert (=> d!1185781 e!2485350))

(declare-fun res!1628741 () Bool)

(assert (=> d!1185781 (=> res!1628741 e!2485350)))

(declare-fun lt!1418012 () Bool)

(assert (=> d!1185781 (= res!1628741 (not lt!1418012))))

(assert (=> d!1185781 (= lt!1418012 e!2485348)))

(declare-fun res!1628740 () Bool)

(assert (=> d!1185781 (=> res!1628740 e!2485348)))

(assert (=> d!1185781 (= res!1628740 ((_ is Nil!42896) lt!1417824))))

(assert (=> d!1185781 (= (isPrefix!3907 lt!1417824 lt!1417824) lt!1418012)))

(declare-fun b!4007681 () Bool)

(declare-fun res!1628739 () Bool)

(assert (=> b!4007681 (=> (not res!1628739) (not e!2485349))))

(assert (=> b!4007681 (= res!1628739 (= (head!8513 lt!1417824) (head!8513 lt!1417824)))))

(assert (= (and d!1185781 (not res!1628740)) b!4007680))

(assert (= (and b!4007680 res!1628738) b!4007681))

(assert (= (and b!4007681 res!1628739) b!4007682))

(assert (= (and d!1185781 (not res!1628741)) b!4007683))

(assert (=> b!4007683 m!4590833))

(assert (=> b!4007683 m!4590833))

(assert (=> b!4007682 m!4590835))

(assert (=> b!4007682 m!4590835))

(assert (=> b!4007682 m!4590835))

(assert (=> b!4007682 m!4590835))

(declare-fun m!4591249 () Bool)

(assert (=> b!4007682 m!4591249))

(assert (=> b!4007681 m!4590839))

(assert (=> b!4007681 m!4590839))

(assert (=> b!4007135 d!1185781))

(declare-fun d!1185783 () Bool)

(assert (=> d!1185783 (isPrefix!3907 lt!1417824 lt!1417824)))

(declare-fun lt!1418015 () Unit!61898)

(declare-fun choose!24200 (List!43020 List!43020) Unit!61898)

(assert (=> d!1185783 (= lt!1418015 (choose!24200 lt!1417824 lt!1417824))))

(assert (=> d!1185783 (= (lemmaIsPrefixRefl!2483 lt!1417824 lt!1417824) lt!1418015)))

(declare-fun bs!589130 () Bool)

(assert (= bs!589130 d!1185783))

(assert (=> bs!589130 m!4590609))

(declare-fun m!4591251 () Bool)

(assert (=> bs!589130 m!4591251))

(assert (=> b!4007135 d!1185783))

(declare-fun b!4007694 () Bool)

(declare-fun e!2485353 () Bool)

(assert (=> b!4007694 (= e!2485353 tp_is_empty!20421)))

(declare-fun b!4007696 () Bool)

(declare-fun tp!1219531 () Bool)

(assert (=> b!4007696 (= e!2485353 tp!1219531)))

(declare-fun b!4007695 () Bool)

(declare-fun tp!1219528 () Bool)

(declare-fun tp!1219530 () Bool)

(assert (=> b!4007695 (= e!2485353 (and tp!1219528 tp!1219530))))

(declare-fun b!4007697 () Bool)

(declare-fun tp!1219527 () Bool)

(declare-fun tp!1219529 () Bool)

(assert (=> b!4007697 (= e!2485353 (and tp!1219527 tp!1219529))))

(assert (=> b!4007126 (= tp!1219458 e!2485353)))

(assert (= (and b!4007126 ((_ is ElementMatch!11725) (regex!6820 (h!48318 rules!2999)))) b!4007694))

(assert (= (and b!4007126 ((_ is Concat!18776) (regex!6820 (h!48318 rules!2999)))) b!4007695))

(assert (= (and b!4007126 ((_ is Star!11725) (regex!6820 (h!48318 rules!2999)))) b!4007696))

(assert (= (and b!4007126 ((_ is Union!11725) (regex!6820 (h!48318 rules!2999)))) b!4007697))

(declare-fun b!4007702 () Bool)

(declare-fun e!2485356 () Bool)

(declare-fun tp!1219534 () Bool)

(assert (=> b!4007702 (= e!2485356 (and tp_is_empty!20421 tp!1219534))))

(assert (=> b!4007147 (= tp!1219465 e!2485356)))

(assert (= (and b!4007147 ((_ is Cons!42896) (t!332621 newSuffix!27))) b!4007702))

(declare-fun b!4007703 () Bool)

(declare-fun e!2485357 () Bool)

(declare-fun tp!1219535 () Bool)

(assert (=> b!4007703 (= e!2485357 (and tp_is_empty!20421 tp!1219535))))

(assert (=> b!4007131 (= tp!1219470 e!2485357)))

(assert (= (and b!4007131 ((_ is Cons!42896) (t!332621 prefix!494))) b!4007703))

(declare-fun b!4007704 () Bool)

(declare-fun e!2485358 () Bool)

(declare-fun tp!1219536 () Bool)

(assert (=> b!4007704 (= e!2485358 (and tp_is_empty!20421 tp!1219536))))

(assert (=> b!4007136 (= tp!1219460 e!2485358)))

(assert (= (and b!4007136 ((_ is Cons!42896) (t!332621 suffix!1299))) b!4007704))

(declare-fun b!4007705 () Bool)

(declare-fun e!2485359 () Bool)

(assert (=> b!4007705 (= e!2485359 tp_is_empty!20421)))

(declare-fun b!4007707 () Bool)

(declare-fun tp!1219541 () Bool)

(assert (=> b!4007707 (= e!2485359 tp!1219541)))

(declare-fun b!4007706 () Bool)

(declare-fun tp!1219538 () Bool)

(declare-fun tp!1219540 () Bool)

(assert (=> b!4007706 (= e!2485359 (and tp!1219538 tp!1219540))))

(declare-fun b!4007708 () Bool)

(declare-fun tp!1219537 () Bool)

(declare-fun tp!1219539 () Bool)

(assert (=> b!4007708 (= e!2485359 (and tp!1219537 tp!1219539))))

(assert (=> b!4007132 (= tp!1219464 e!2485359)))

(assert (= (and b!4007132 ((_ is ElementMatch!11725) (regex!6820 (rule!9858 token!484)))) b!4007705))

(assert (= (and b!4007132 ((_ is Concat!18776) (regex!6820 (rule!9858 token!484)))) b!4007706))

(assert (= (and b!4007132 ((_ is Star!11725) (regex!6820 (rule!9858 token!484)))) b!4007707))

(assert (= (and b!4007132 ((_ is Union!11725) (regex!6820 (rule!9858 token!484)))) b!4007708))

(declare-fun b!4007709 () Bool)

(declare-fun e!2485360 () Bool)

(declare-fun tp!1219542 () Bool)

(assert (=> b!4007709 (= e!2485360 (and tp_is_empty!20421 tp!1219542))))

(assert (=> b!4007137 (= tp!1219468 e!2485360)))

(assert (= (and b!4007137 ((_ is Cons!42896) (originalCharacters!7420 token!484))) b!4007709))

(declare-fun b!4007720 () Bool)

(declare-fun b_free!111477 () Bool)

(declare-fun b_next!112181 () Bool)

(assert (=> b!4007720 (= b_free!111477 (not b_next!112181))))

(declare-fun t!332645 () Bool)

(declare-fun tb!240877 () Bool)

(assert (=> (and b!4007720 (= (toValue!9320 (transformation!6820 (h!48318 (t!332623 rules!2999)))) (toValue!9320 (transformation!6820 (rule!9858 token!484)))) t!332645) tb!240877))

(declare-fun result!291966 () Bool)

(assert (= result!291966 result!291954))

(assert (=> d!1185739 t!332645))

(declare-fun b_and!307803 () Bool)

(declare-fun tp!1219554 () Bool)

(assert (=> b!4007720 (= tp!1219554 (and (=> t!332645 result!291966) b_and!307803))))

(declare-fun b_free!111479 () Bool)

(declare-fun b_next!112183 () Bool)

(assert (=> b!4007720 (= b_free!111479 (not b_next!112183))))

(declare-fun tb!240879 () Bool)

(declare-fun t!332647 () Bool)

(assert (=> (and b!4007720 (= (toChars!9179 (transformation!6820 (h!48318 (t!332623 rules!2999)))) (toChars!9179 (transformation!6820 (rule!9858 token!484)))) t!332647) tb!240879))

(declare-fun result!291968 () Bool)

(assert (= result!291968 result!291932))

(assert (=> b!4007393 t!332647))

(assert (=> d!1185735 t!332647))

(declare-fun tp!1219551 () Bool)

(declare-fun b_and!307805 () Bool)

(assert (=> b!4007720 (= tp!1219551 (and (=> t!332647 result!291968) b_and!307805))))

(declare-fun e!2485369 () Bool)

(assert (=> b!4007720 (= e!2485369 (and tp!1219554 tp!1219551))))

(declare-fun tp!1219552 () Bool)

(declare-fun b!4007719 () Bool)

(declare-fun e!2485370 () Bool)

(assert (=> b!4007719 (= e!2485370 (and tp!1219552 (inv!57289 (tag!7680 (h!48318 (t!332623 rules!2999)))) (inv!57292 (transformation!6820 (h!48318 (t!332623 rules!2999)))) e!2485369))))

(declare-fun b!4007718 () Bool)

(declare-fun e!2485372 () Bool)

(declare-fun tp!1219553 () Bool)

(assert (=> b!4007718 (= e!2485372 (and e!2485370 tp!1219553))))

(assert (=> b!4007133 (= tp!1219469 e!2485372)))

(assert (= b!4007719 b!4007720))

(assert (= b!4007718 b!4007719))

(assert (= (and b!4007133 ((_ is Cons!42898) (t!332623 rules!2999))) b!4007718))

(declare-fun m!4591253 () Bool)

(assert (=> b!4007719 m!4591253))

(declare-fun m!4591255 () Bool)

(assert (=> b!4007719 m!4591255))

(declare-fun b!4007721 () Bool)

(declare-fun e!2485373 () Bool)

(declare-fun tp!1219555 () Bool)

(assert (=> b!4007721 (= e!2485373 (and tp_is_empty!20421 tp!1219555))))

(assert (=> b!4007146 (= tp!1219466 e!2485373)))

(assert (= (and b!4007146 ((_ is Cons!42896) (t!332621 suffixResult!105))) b!4007721))

(declare-fun b!4007722 () Bool)

(declare-fun e!2485374 () Bool)

(declare-fun tp!1219556 () Bool)

(assert (=> b!4007722 (= e!2485374 (and tp_is_empty!20421 tp!1219556))))

(assert (=> b!4007145 (= tp!1219463 e!2485374)))

(assert (= (and b!4007145 ((_ is Cons!42896) (t!332621 newSuffixResult!27))) b!4007722))

(declare-fun b_lambda!116905 () Bool)

(assert (= b_lambda!116903 (or (and b!4007129 b_free!111465) (and b!4007134 b_free!111469 (= (toValue!9320 (transformation!6820 (h!48318 rules!2999))) (toValue!9320 (transformation!6820 (rule!9858 token!484))))) (and b!4007720 b_free!111477 (= (toValue!9320 (transformation!6820 (h!48318 (t!332623 rules!2999)))) (toValue!9320 (transformation!6820 (rule!9858 token!484))))) b_lambda!116905)))

(declare-fun b_lambda!116907 () Bool)

(assert (= b_lambda!116889 (or (and b!4007129 b_free!111467) (and b!4007134 b_free!111471 (= (toChars!9179 (transformation!6820 (h!48318 rules!2999))) (toChars!9179 (transformation!6820 (rule!9858 token!484))))) (and b!4007720 b_free!111479 (= (toChars!9179 (transformation!6820 (h!48318 (t!332623 rules!2999)))) (toChars!9179 (transformation!6820 (rule!9858 token!484))))) b_lambda!116907)))

(declare-fun b_lambda!116909 () Bool)

(assert (= b_lambda!116901 (or (and b!4007129 b_free!111467) (and b!4007134 b_free!111471 (= (toChars!9179 (transformation!6820 (h!48318 rules!2999))) (toChars!9179 (transformation!6820 (rule!9858 token!484))))) (and b!4007720 b_free!111479 (= (toChars!9179 (transformation!6820 (h!48318 (t!332623 rules!2999)))) (toChars!9179 (transformation!6820 (rule!9858 token!484))))) b_lambda!116909)))

(check-sat (not d!1185753) (not b!4007169) (not b!4007681) (not b!4007301) (not d!1185749) (not b!4007603) (not b!4007366) (not b!4007707) (not d!1185593) (not b!4007565) (not b_next!112171) (not b!4007246) (not d!1185763) (not b!4007721) (not d!1185735) (not b!4007239) (not d!1185775) (not d!1185733) (not b_lambda!116909) (not b!4007683) (not b!4007173) (not b!4007709) (not d!1185765) (not b!4007614) b_and!307805 (not d!1185609) (not b!4007719) (not b!4007666) (not b!4007237) (not d!1185583) (not b!4007155) (not d!1185591) (not b!4007604) (not b!4007267) (not d!1185589) (not b!4007302) (not b!4007174) (not b!4007648) (not b_next!112183) (not b!4007365) (not b!4007170) (not b!4007655) (not b!4007166) (not d!1185723) (not b!4007330) (not b!4007217) (not d!1185761) (not b!4007722) tp_is_empty!20421 (not b!4007534) (not b!4007675) (not b!4007670) (not d!1185751) (not d!1185783) (not d!1185655) (not b!4007578) (not b!4007579) (not b!4007658) (not b!4007663) (not b!4007599) (not b!4007612) (not b!4007333) (not b!4007606) (not d!1185747) (not b!4007702) (not tb!240861) (not b!4007662) (not b!4007334) (not d!1185767) (not b!4007570) (not b_next!112169) (not b!4007697) (not b!4007696) (not b!4007329) (not bm!286219) (not b!4007364) (not b!4007667) (not b_next!112181) (not b!4007407) (not d!1185777) (not b!4007695) b_and!307797 (not b!4007718) (not b!4007529) (not b_next!112175) (not b!4007574) (not b!4007580) (not d!1185595) (not b!4007607) (not d!1185585) (not b!4007659) (not b!4007676) (not b!4007178) (not d!1185613) (not b!4007328) (not d!1185779) (not b!4007600) (not b!4007531) (not tb!240873) b_and!307803 b_and!307795 (not b!4007706) (not d!1185769) (not b!4007671) (not b!4007610) (not d!1185649) (not b!4007530) (not b!4007332) (not b!4007201) (not b!4007236) (not d!1185743) (not b!4007532) (not b!4007652) b_and!307799 (not b!4007660) (not b!4007673) (not b!4007601) (not b!4007528) (not b!4007708) (not b_lambda!116905) (not b!4007572) (not b!4007678) (not b!4007394) (not b!4007303) (not b!4007644) (not b!4007393) (not b!4007613) (not b!4007704) (not b!4007535) (not bm!286216) (not b!4007647) (not b!4007165) (not b!4007703) (not b!4007568) (not b!4007247) (not d!1185637) (not b!4007564) (not d!1185771) (not b!4007682) (not d!1185587) (not d!1185675) b_and!307801 (not b!4007654) (not d!1185653) (not d!1185741) (not b_next!112173) (not d!1185757) (not b_lambda!116907) (not b!4007605) (not b!4007536))
(check-sat (not b_next!112171) b_and!307805 (not b_next!112183) (not b_next!112169) (not b_next!112175) b_and!307799 b_and!307801 (not b_next!112173) (not b_next!112181) b_and!307797 b_and!307803 b_and!307795)
