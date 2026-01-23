; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373640 () Bool)

(assert start!373640)

(declare-fun b!3971122 () Bool)

(declare-fun b_free!110033 () Bool)

(declare-fun b_next!110737 () Bool)

(assert (=> b!3971122 (= b_free!110033 (not b_next!110737))))

(declare-fun tp!1210889 () Bool)

(declare-fun b_and!305279 () Bool)

(assert (=> b!3971122 (= tp!1210889 b_and!305279)))

(declare-fun b_free!110035 () Bool)

(declare-fun b_next!110739 () Bool)

(assert (=> b!3971122 (= b_free!110035 (not b_next!110739))))

(declare-fun tp!1210893 () Bool)

(declare-fun b_and!305281 () Bool)

(assert (=> b!3971122 (= tp!1210893 b_and!305281)))

(declare-fun b!3971119 () Bool)

(declare-fun b_free!110037 () Bool)

(declare-fun b_next!110741 () Bool)

(assert (=> b!3971119 (= b_free!110037 (not b_next!110741))))

(declare-fun tp!1210885 () Bool)

(declare-fun b_and!305283 () Bool)

(assert (=> b!3971119 (= tp!1210885 b_and!305283)))

(declare-fun b_free!110039 () Bool)

(declare-fun b_next!110743 () Bool)

(assert (=> b!3971119 (= b_free!110039 (not b_next!110743))))

(declare-fun tp!1210891 () Bool)

(declare-fun b_and!305285 () Bool)

(assert (=> b!3971119 (= tp!1210891 b_and!305285)))

(declare-fun b!3971111 () Bool)

(declare-fun e!2459995 () Bool)

(declare-fun e!2459996 () Bool)

(assert (=> b!3971111 (= e!2459995 e!2459996)))

(declare-fun res!1607507 () Bool)

(assert (=> b!3971111 (=> (not res!1607507) (not e!2459996))))

(declare-datatypes ((C!23336 0))(
  ( (C!23337 (val!13762 Int)) )
))
(declare-datatypes ((List!42518 0))(
  ( (Nil!42394) (Cons!42394 (h!47814 C!23336) (t!330885 List!42518)) )
))
(declare-fun lt!1390988 () List!42518)

(declare-datatypes ((LexerInterface!6259 0))(
  ( (LexerInterfaceExt!6256 (__x!26017 Int)) (Lexer!6257) )
))
(declare-fun thiss!21717 () LexerInterface!6259)

(declare-datatypes ((List!42519 0))(
  ( (Nil!42395) (Cons!42395 (h!47815 (_ BitVec 16)) (t!330886 List!42519)) )
))
(declare-datatypes ((IArray!25767 0))(
  ( (IArray!25768 (innerList!12941 List!42518)) )
))
(declare-datatypes ((Conc!12881 0))(
  ( (Node!12881 (left!32110 Conc!12881) (right!32440 Conc!12881) (csize!25992 Int) (cheight!13092 Int)) (Leaf!19923 (xs!16187 IArray!25767) (csize!25993 Int)) (Empty!12881) )
))
(declare-datatypes ((BalanceConc!25356 0))(
  ( (BalanceConc!25357 (c!688744 Conc!12881)) )
))
(declare-datatypes ((TokenValue!6900 0))(
  ( (FloatLiteralValue!13800 (text!48745 List!42519)) (TokenValueExt!6899 (__x!26018 Int)) (Broken!34500 (value!210703 List!42519)) (Object!7023) (End!6900) (Def!6900) (Underscore!6900) (Match!6900) (Else!6900) (Error!6900) (Case!6900) (If!6900) (Extends!6900) (Abstract!6900) (Class!6900) (Val!6900) (DelimiterValue!13800 (del!6960 List!42519)) (KeywordValue!6906 (value!210704 List!42519)) (CommentValue!13800 (value!210705 List!42519)) (WhitespaceValue!13800 (value!210706 List!42519)) (IndentationValue!6900 (value!210707 List!42519)) (String!48217) (Int32!6900) (Broken!34501 (value!210708 List!42519)) (Boolean!6901) (Unit!61045) (OperatorValue!6903 (op!6960 List!42519)) (IdentifierValue!13800 (value!210709 List!42519)) (IdentifierValue!13801 (value!210710 List!42519)) (WhitespaceValue!13801 (value!210711 List!42519)) (True!13800) (False!13800) (Broken!34502 (value!210712 List!42519)) (Broken!34503 (value!210713 List!42519)) (True!13801) (RightBrace!6900) (RightBracket!6900) (Colon!6900) (Null!6900) (Comma!6900) (LeftBracket!6900) (False!13801) (LeftBrace!6900) (ImaginaryLiteralValue!6900 (text!48746 List!42519)) (StringLiteralValue!20700 (value!210714 List!42519)) (EOFValue!6900 (value!210715 List!42519)) (IdentValue!6900 (value!210716 List!42519)) (DelimiterValue!13801 (value!210717 List!42519)) (DedentValue!6900 (value!210718 List!42519)) (NewLineValue!6900 (value!210719 List!42519)) (IntegerValue!20700 (value!210720 (_ BitVec 32)) (text!48747 List!42519)) (IntegerValue!20701 (value!210721 Int) (text!48748 List!42519)) (Times!6900) (Or!6900) (Equal!6900) (Minus!6900) (Broken!34504 (value!210722 List!42519)) (And!6900) (Div!6900) (LessEqual!6900) (Mod!6900) (Concat!18475) (Not!6900) (Plus!6900) (SpaceValue!6900 (value!210723 List!42519)) (IntegerValue!20702 (value!210724 Int) (text!48749 List!42519)) (StringLiteralValue!20701 (text!48750 List!42519)) (FloatLiteralValue!13801 (text!48751 List!42519)) (BytesLiteralValue!6900 (value!210725 List!42519)) (CommentValue!13801 (value!210726 List!42519)) (StringLiteralValue!20702 (value!210727 List!42519)) (ErrorTokenValue!6900 (msg!6961 List!42519)) )
))
(declare-datatypes ((Regex!11575 0))(
  ( (ElementMatch!11575 (c!688745 C!23336)) (Concat!18476 (regOne!23662 Regex!11575) (regTwo!23662 Regex!11575)) (EmptyExpr!11575) (Star!11575 (reg!11904 Regex!11575)) (EmptyLang!11575) (Union!11575 (regOne!23663 Regex!11575) (regTwo!23663 Regex!11575)) )
))
(declare-datatypes ((String!48218 0))(
  ( (String!48219 (value!210728 String)) )
))
(declare-datatypes ((TokenValueInjection!13228 0))(
  ( (TokenValueInjection!13229 (toValue!9158 Int) (toChars!9017 Int)) )
))
(declare-datatypes ((Rule!13140 0))(
  ( (Rule!13141 (regex!6670 Regex!11575) (tag!7530 String!48218) (isSeparator!6670 Bool) (transformation!6670 TokenValueInjection!13228)) )
))
(declare-datatypes ((List!42520 0))(
  ( (Nil!42396) (Cons!42396 (h!47816 Rule!13140) (t!330887 List!42520)) )
))
(declare-fun rules!2999 () List!42520)

(declare-datatypes ((Token!12478 0))(
  ( (Token!12479 (value!210729 TokenValue!6900) (rule!9658 Rule!13140) (size!31720 Int) (originalCharacters!7270 List!42518)) )
))
(declare-datatypes ((tuple2!41652 0))(
  ( (tuple2!41653 (_1!23960 Token!12478) (_2!23960 List!42518)) )
))
(declare-datatypes ((Option!9084 0))(
  ( (None!9083) (Some!9083 (v!39431 tuple2!41652)) )
))
(declare-fun lt!1390986 () Option!9084)

(declare-fun maxPrefix!3557 (LexerInterface!6259 List!42520 List!42518) Option!9084)

(assert (=> b!3971111 (= res!1607507 (= (maxPrefix!3557 thiss!21717 rules!2999 lt!1390988) lt!1390986))))

(declare-fun token!484 () Token!12478)

(declare-fun suffixResult!105 () List!42518)

(assert (=> b!3971111 (= lt!1390986 (Some!9083 (tuple2!41653 token!484 suffixResult!105)))))

(declare-fun prefix!494 () List!42518)

(declare-fun suffix!1299 () List!42518)

(declare-fun ++!11072 (List!42518 List!42518) List!42518)

(assert (=> b!3971111 (= lt!1390988 (++!11072 prefix!494 suffix!1299))))

(declare-fun b!3971112 () Bool)

(declare-fun res!1607501 () Bool)

(declare-fun e!2459989 () Bool)

(assert (=> b!3971112 (=> (not res!1607501) (not e!2459989))))

(declare-fun isEmpty!25360 (List!42520) Bool)

(assert (=> b!3971112 (= res!1607501 (not (isEmpty!25360 rules!2999)))))

(declare-fun b!3971113 () Bool)

(declare-fun tp!1210890 () Bool)

(declare-fun e!2459981 () Bool)

(declare-fun e!2459982 () Bool)

(declare-fun inv!21 (TokenValue!6900) Bool)

(assert (=> b!3971113 (= e!2459982 (and (inv!21 (value!210729 token!484)) e!2459981 tp!1210890))))

(declare-fun b!3971114 () Bool)

(declare-fun res!1607500 () Bool)

(assert (=> b!3971114 (=> (not res!1607500) (not e!2459989))))

(declare-fun rulesInvariant!5602 (LexerInterface!6259 List!42520) Bool)

(assert (=> b!3971114 (= res!1607500 (rulesInvariant!5602 thiss!21717 rules!2999))))

(declare-fun b!3971115 () Bool)

(assert (=> b!3971115 (= e!2459989 e!2459995)))

(declare-fun res!1607502 () Bool)

(assert (=> b!3971115 (=> (not res!1607502) (not e!2459995))))

(declare-fun lt!1390985 () Int)

(declare-fun lt!1390980 () Int)

(assert (=> b!3971115 (= res!1607502 (>= lt!1390985 lt!1390980))))

(declare-fun lt!1390990 () List!42518)

(declare-fun size!31721 (List!42518) Int)

(assert (=> b!3971115 (= lt!1390980 (size!31721 lt!1390990))))

(assert (=> b!3971115 (= lt!1390985 (size!31721 prefix!494))))

(declare-fun list!15730 (BalanceConc!25356) List!42518)

(declare-fun charsOf!4486 (Token!12478) BalanceConc!25356)

(assert (=> b!3971115 (= lt!1390990 (list!15730 (charsOf!4486 token!484)))))

(declare-fun res!1607506 () Bool)

(assert (=> start!373640 (=> (not res!1607506) (not e!2459989))))

(get-info :version)

(assert (=> start!373640 (= res!1607506 ((_ is Lexer!6257) thiss!21717))))

(assert (=> start!373640 e!2459989))

(declare-fun e!2459992 () Bool)

(assert (=> start!373640 e!2459992))

(declare-fun inv!56648 (Token!12478) Bool)

(assert (=> start!373640 (and (inv!56648 token!484) e!2459982)))

(declare-fun e!2459991 () Bool)

(assert (=> start!373640 e!2459991))

(declare-fun e!2459994 () Bool)

(assert (=> start!373640 e!2459994))

(declare-fun e!2459998 () Bool)

(assert (=> start!373640 e!2459998))

(assert (=> start!373640 true))

(declare-fun e!2459986 () Bool)

(assert (=> start!373640 e!2459986))

(declare-fun e!2459979 () Bool)

(assert (=> start!373640 e!2459979))

(declare-fun b!3971116 () Bool)

(declare-fun tp_is_empty!20121 () Bool)

(declare-fun tp!1210894 () Bool)

(assert (=> b!3971116 (= e!2459998 (and tp_is_empty!20121 tp!1210894))))

(declare-fun b!3971117 () Bool)

(declare-fun tp!1210886 () Bool)

(assert (=> b!3971117 (= e!2459991 (and tp_is_empty!20121 tp!1210886))))

(declare-fun b!3971118 () Bool)

(declare-fun res!1607498 () Bool)

(assert (=> b!3971118 (=> (not res!1607498) (not e!2459989))))

(declare-fun newSuffix!27 () List!42518)

(assert (=> b!3971118 (= res!1607498 (>= (size!31721 suffix!1299) (size!31721 newSuffix!27)))))

(declare-fun e!2459985 () Bool)

(assert (=> b!3971119 (= e!2459985 (and tp!1210885 tp!1210891))))

(declare-fun tp!1210884 () Bool)

(declare-fun e!2459993 () Bool)

(declare-fun b!3971120 () Bool)

(declare-fun inv!56645 (String!48218) Bool)

(declare-fun inv!56649 (TokenValueInjection!13228) Bool)

(assert (=> b!3971120 (= e!2459993 (and tp!1210884 (inv!56645 (tag!7530 (h!47816 rules!2999))) (inv!56649 (transformation!6670 (h!47816 rules!2999))) e!2459985))))

(declare-fun b!3971121 () Bool)

(declare-fun e!2459984 () Bool)

(declare-fun tp!1210883 () Bool)

(assert (=> b!3971121 (= e!2459981 (and tp!1210883 (inv!56645 (tag!7530 (rule!9658 token!484))) (inv!56649 (transformation!6670 (rule!9658 token!484))) e!2459984))))

(assert (=> b!3971122 (= e!2459984 (and tp!1210889 tp!1210893))))

(declare-fun b!3971123 () Bool)

(declare-fun e!2459990 () Bool)

(declare-fun e!2459997 () Bool)

(assert (=> b!3971123 (= e!2459990 e!2459997)))

(declare-fun res!1607503 () Bool)

(assert (=> b!3971123 (=> res!1607503 e!2459997)))

(declare-fun lt!1390984 () List!42518)

(declare-fun lt!1390991 () List!42518)

(assert (=> b!3971123 (= res!1607503 (or (not (= lt!1390988 lt!1390984)) (not (= lt!1390988 lt!1390991))))))

(assert (=> b!3971123 (= lt!1390984 lt!1390991)))

(declare-fun lt!1390974 () List!42518)

(assert (=> b!3971123 (= lt!1390991 (++!11072 lt!1390990 lt!1390974))))

(declare-fun lt!1390983 () List!42518)

(assert (=> b!3971123 (= lt!1390984 (++!11072 lt!1390983 suffix!1299))))

(declare-fun lt!1390995 () List!42518)

(assert (=> b!3971123 (= lt!1390974 (++!11072 lt!1390995 suffix!1299))))

(declare-datatypes ((Unit!61046 0))(
  ( (Unit!61047) )
))
(declare-fun lt!1390978 () Unit!61046)

(declare-fun lemmaConcatAssociativity!2392 (List!42518 List!42518 List!42518) Unit!61046)

(assert (=> b!3971123 (= lt!1390978 (lemmaConcatAssociativity!2392 lt!1390990 lt!1390995 suffix!1299))))

(declare-fun b!3971124 () Bool)

(declare-fun e!2459983 () Bool)

(assert (=> b!3971124 (= e!2459983 true)))

(declare-fun lt!1390989 () Unit!61046)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!590 (List!42518 List!42518 List!42518) Unit!61046)

(assert (=> b!3971124 (= lt!1390989 (lemmaPrefixStaysPrefixWhenAddingToSuffix!590 lt!1390990 prefix!494 suffix!1299))))

(declare-fun b!3971125 () Bool)

(declare-fun tp!1210882 () Bool)

(assert (=> b!3971125 (= e!2459979 (and tp_is_empty!20121 tp!1210882))))

(declare-fun b!3971126 () Bool)

(declare-fun e!2459987 () Bool)

(assert (=> b!3971126 (= e!2459987 e!2459990)))

(declare-fun res!1607508 () Bool)

(assert (=> b!3971126 (=> res!1607508 e!2459990)))

(assert (=> b!3971126 (= res!1607508 (not (= lt!1390983 prefix!494)))))

(assert (=> b!3971126 (= lt!1390983 (++!11072 lt!1390990 lt!1390995))))

(declare-fun getSuffix!2188 (List!42518 List!42518) List!42518)

(assert (=> b!3971126 (= lt!1390995 (getSuffix!2188 prefix!494 lt!1390990))))

(declare-fun isPrefix!3757 (List!42518 List!42518) Bool)

(assert (=> b!3971126 (isPrefix!3757 lt!1390990 prefix!494)))

(declare-fun lt!1390994 () Unit!61046)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!335 (List!42518 List!42518 List!42518) Unit!61046)

(assert (=> b!3971126 (= lt!1390994 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!335 prefix!494 lt!1390990 lt!1390988))))

(declare-fun b!3971127 () Bool)

(declare-fun res!1607505 () Bool)

(assert (=> b!3971127 (=> (not res!1607505) (not e!2459989))))

(assert (=> b!3971127 (= res!1607505 (isPrefix!3757 newSuffix!27 suffix!1299))))

(declare-fun b!3971128 () Bool)

(declare-fun tp!1210892 () Bool)

(assert (=> b!3971128 (= e!2459992 (and tp_is_empty!20121 tp!1210892))))

(declare-fun b!3971129 () Bool)

(assert (=> b!3971129 (= e!2459997 e!2459983)))

(declare-fun res!1607496 () Bool)

(assert (=> b!3971129 (=> res!1607496 e!2459983)))

(declare-fun lt!1390975 () Option!9084)

(assert (=> b!3971129 (= res!1607496 (not (= lt!1390975 lt!1390986)))))

(declare-fun lt!1390973 () TokenValue!6900)

(assert (=> b!3971129 (= lt!1390975 (Some!9083 (tuple2!41653 (Token!12479 lt!1390973 (rule!9658 token!484) lt!1390980 lt!1390990) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2591 (LexerInterface!6259 Rule!13140 List!42518) Option!9084)

(assert (=> b!3971129 (= lt!1390975 (maxPrefixOneRule!2591 thiss!21717 (rule!9658 token!484) lt!1390988))))

(declare-fun apply!9881 (TokenValueInjection!13228 BalanceConc!25356) TokenValue!6900)

(declare-fun seqFromList!4909 (List!42518) BalanceConc!25356)

(assert (=> b!3971129 (= lt!1390973 (apply!9881 (transformation!6670 (rule!9658 token!484)) (seqFromList!4909 lt!1390990)))))

(declare-fun lt!1390982 () Unit!61046)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1413 (LexerInterface!6259 List!42520 List!42518 List!42518 List!42518 Rule!13140) Unit!61046)

(assert (=> b!3971129 (= lt!1390982 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1413 thiss!21717 rules!2999 lt!1390990 lt!1390988 suffixResult!105 (rule!9658 token!484)))))

(assert (=> b!3971129 (= lt!1390974 suffixResult!105)))

(declare-fun lt!1390981 () Unit!61046)

(declare-fun lemmaSamePrefixThenSameSuffix!1944 (List!42518 List!42518 List!42518 List!42518 List!42518) Unit!61046)

(assert (=> b!3971129 (= lt!1390981 (lemmaSamePrefixThenSameSuffix!1944 lt!1390990 lt!1390974 lt!1390990 suffixResult!105 lt!1390988))))

(assert (=> b!3971129 (isPrefix!3757 lt!1390990 lt!1390991)))

(declare-fun lt!1390977 () Unit!61046)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2600 (List!42518 List!42518) Unit!61046)

(assert (=> b!3971129 (= lt!1390977 (lemmaConcatTwoListThenFirstIsPrefix!2600 lt!1390990 lt!1390974))))

(declare-fun b!3971130 () Bool)

(declare-fun tp!1210887 () Bool)

(assert (=> b!3971130 (= e!2459994 (and tp_is_empty!20121 tp!1210887))))

(declare-fun b!3971131 () Bool)

(declare-fun e!2459999 () Bool)

(assert (=> b!3971131 (= e!2459999 e!2459987)))

(declare-fun res!1607497 () Bool)

(assert (=> b!3971131 (=> res!1607497 e!2459987)))

(assert (=> b!3971131 (= res!1607497 (not (isPrefix!3757 lt!1390990 lt!1390988)))))

(assert (=> b!3971131 (isPrefix!3757 prefix!494 lt!1390988)))

(declare-fun lt!1390976 () Unit!61046)

(assert (=> b!3971131 (= lt!1390976 (lemmaConcatTwoListThenFirstIsPrefix!2600 prefix!494 suffix!1299))))

(declare-fun lt!1390987 () List!42518)

(assert (=> b!3971131 (isPrefix!3757 lt!1390990 lt!1390987)))

(declare-fun lt!1390993 () Unit!61046)

(assert (=> b!3971131 (= lt!1390993 (lemmaConcatTwoListThenFirstIsPrefix!2600 lt!1390990 suffixResult!105))))

(declare-fun b!3971132 () Bool)

(assert (=> b!3971132 (= e!2459996 (not e!2459999))))

(declare-fun res!1607499 () Bool)

(assert (=> b!3971132 (=> res!1607499 e!2459999)))

(assert (=> b!3971132 (= res!1607499 (not (= lt!1390987 lt!1390988)))))

(assert (=> b!3971132 (= lt!1390987 (++!11072 lt!1390990 suffixResult!105))))

(declare-fun lt!1390979 () Unit!61046)

(declare-fun lemmaInv!885 (TokenValueInjection!13228) Unit!61046)

(assert (=> b!3971132 (= lt!1390979 (lemmaInv!885 (transformation!6670 (rule!9658 token!484))))))

(declare-fun ruleValid!2602 (LexerInterface!6259 Rule!13140) Bool)

(assert (=> b!3971132 (ruleValid!2602 thiss!21717 (rule!9658 token!484))))

(declare-fun lt!1390992 () Unit!61046)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1676 (LexerInterface!6259 Rule!13140 List!42520) Unit!61046)

(assert (=> b!3971132 (= lt!1390992 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1676 thiss!21717 (rule!9658 token!484) rules!2999))))

(declare-fun b!3971133 () Bool)

(declare-fun res!1607504 () Bool)

(assert (=> b!3971133 (=> (not res!1607504) (not e!2459995))))

(declare-fun newSuffixResult!27 () List!42518)

(assert (=> b!3971133 (= res!1607504 (= (++!11072 lt!1390990 newSuffixResult!27) (++!11072 prefix!494 newSuffix!27)))))

(declare-fun b!3971134 () Bool)

(declare-fun tp!1210888 () Bool)

(assert (=> b!3971134 (= e!2459986 (and e!2459993 tp!1210888))))

(assert (= (and start!373640 res!1607506) b!3971112))

(assert (= (and b!3971112 res!1607501) b!3971114))

(assert (= (and b!3971114 res!1607500) b!3971118))

(assert (= (and b!3971118 res!1607498) b!3971127))

(assert (= (and b!3971127 res!1607505) b!3971115))

(assert (= (and b!3971115 res!1607502) b!3971133))

(assert (= (and b!3971133 res!1607504) b!3971111))

(assert (= (and b!3971111 res!1607507) b!3971132))

(assert (= (and b!3971132 (not res!1607499)) b!3971131))

(assert (= (and b!3971131 (not res!1607497)) b!3971126))

(assert (= (and b!3971126 (not res!1607508)) b!3971123))

(assert (= (and b!3971123 (not res!1607503)) b!3971129))

(assert (= (and b!3971129 (not res!1607496)) b!3971124))

(assert (= (and start!373640 ((_ is Cons!42394) prefix!494)) b!3971128))

(assert (= b!3971121 b!3971122))

(assert (= b!3971113 b!3971121))

(assert (= start!373640 b!3971113))

(assert (= (and start!373640 ((_ is Cons!42394) suffixResult!105)) b!3971117))

(assert (= (and start!373640 ((_ is Cons!42394) suffix!1299)) b!3971130))

(assert (= (and start!373640 ((_ is Cons!42394) newSuffix!27)) b!3971116))

(assert (= b!3971120 b!3971119))

(assert (= b!3971134 b!3971120))

(assert (= (and start!373640 ((_ is Cons!42396) rules!2999)) b!3971134))

(assert (= (and start!373640 ((_ is Cons!42394) newSuffixResult!27)) b!3971125))

(declare-fun m!4541317 () Bool)

(assert (=> b!3971124 m!4541317))

(declare-fun m!4541319 () Bool)

(assert (=> b!3971118 m!4541319))

(declare-fun m!4541321 () Bool)

(assert (=> b!3971118 m!4541321))

(declare-fun m!4541323 () Bool)

(assert (=> b!3971126 m!4541323))

(declare-fun m!4541325 () Bool)

(assert (=> b!3971126 m!4541325))

(declare-fun m!4541327 () Bool)

(assert (=> b!3971126 m!4541327))

(declare-fun m!4541329 () Bool)

(assert (=> b!3971126 m!4541329))

(declare-fun m!4541331 () Bool)

(assert (=> b!3971112 m!4541331))

(declare-fun m!4541333 () Bool)

(assert (=> b!3971132 m!4541333))

(declare-fun m!4541335 () Bool)

(assert (=> b!3971132 m!4541335))

(declare-fun m!4541337 () Bool)

(assert (=> b!3971132 m!4541337))

(declare-fun m!4541339 () Bool)

(assert (=> b!3971132 m!4541339))

(declare-fun m!4541341 () Bool)

(assert (=> b!3971113 m!4541341))

(declare-fun m!4541343 () Bool)

(assert (=> b!3971133 m!4541343))

(declare-fun m!4541345 () Bool)

(assert (=> b!3971133 m!4541345))

(declare-fun m!4541347 () Bool)

(assert (=> start!373640 m!4541347))

(declare-fun m!4541349 () Bool)

(assert (=> b!3971127 m!4541349))

(declare-fun m!4541351 () Bool)

(assert (=> b!3971111 m!4541351))

(declare-fun m!4541353 () Bool)

(assert (=> b!3971111 m!4541353))

(declare-fun m!4541355 () Bool)

(assert (=> b!3971114 m!4541355))

(declare-fun m!4541357 () Bool)

(assert (=> b!3971129 m!4541357))

(declare-fun m!4541359 () Bool)

(assert (=> b!3971129 m!4541359))

(declare-fun m!4541361 () Bool)

(assert (=> b!3971129 m!4541361))

(assert (=> b!3971129 m!4541359))

(declare-fun m!4541363 () Bool)

(assert (=> b!3971129 m!4541363))

(declare-fun m!4541365 () Bool)

(assert (=> b!3971129 m!4541365))

(declare-fun m!4541367 () Bool)

(assert (=> b!3971129 m!4541367))

(declare-fun m!4541369 () Bool)

(assert (=> b!3971129 m!4541369))

(declare-fun m!4541371 () Bool)

(assert (=> b!3971131 m!4541371))

(declare-fun m!4541373 () Bool)

(assert (=> b!3971131 m!4541373))

(declare-fun m!4541375 () Bool)

(assert (=> b!3971131 m!4541375))

(declare-fun m!4541377 () Bool)

(assert (=> b!3971131 m!4541377))

(declare-fun m!4541379 () Bool)

(assert (=> b!3971131 m!4541379))

(declare-fun m!4541381 () Bool)

(assert (=> b!3971123 m!4541381))

(declare-fun m!4541383 () Bool)

(assert (=> b!3971123 m!4541383))

(declare-fun m!4541385 () Bool)

(assert (=> b!3971123 m!4541385))

(declare-fun m!4541387 () Bool)

(assert (=> b!3971123 m!4541387))

(declare-fun m!4541389 () Bool)

(assert (=> b!3971121 m!4541389))

(declare-fun m!4541391 () Bool)

(assert (=> b!3971121 m!4541391))

(declare-fun m!4541393 () Bool)

(assert (=> b!3971115 m!4541393))

(declare-fun m!4541395 () Bool)

(assert (=> b!3971115 m!4541395))

(declare-fun m!4541397 () Bool)

(assert (=> b!3971115 m!4541397))

(assert (=> b!3971115 m!4541397))

(declare-fun m!4541399 () Bool)

(assert (=> b!3971115 m!4541399))

(declare-fun m!4541401 () Bool)

(assert (=> b!3971120 m!4541401))

(declare-fun m!4541403 () Bool)

(assert (=> b!3971120 m!4541403))

(check-sat (not b!3971131) tp_is_empty!20121 b_and!305281 (not b!3971114) (not b!3971134) (not b!3971121) (not b_next!110741) (not b!3971124) (not b!3971111) (not b!3971113) (not b!3971126) (not b!3971115) (not b_next!110743) (not b!3971117) (not b!3971128) (not start!373640) (not b!3971132) b_and!305283 (not b!3971112) (not b_next!110739) (not b!3971125) (not b!3971133) (not b!3971130) (not b!3971116) b_and!305285 (not b!3971120) (not b_next!110737) b_and!305279 (not b!3971118) (not b!3971123) (not b!3971129) (not b!3971127))
(check-sat b_and!305281 b_and!305283 (not b_next!110741) (not b_next!110739) (not b_next!110743) b_and!305285 (not b_next!110737) b_and!305279)
