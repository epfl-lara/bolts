; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373872 () Bool)

(assert start!373872)

(declare-fun b!3973006 () Bool)

(declare-fun b_free!110129 () Bool)

(declare-fun b_next!110833 () Bool)

(assert (=> b!3973006 (= b_free!110129 (not b_next!110833))))

(declare-fun tp!1211444 () Bool)

(declare-fun b_and!305423 () Bool)

(assert (=> b!3973006 (= tp!1211444 b_and!305423)))

(declare-fun b_free!110131 () Bool)

(declare-fun b_next!110835 () Bool)

(assert (=> b!3973006 (= b_free!110131 (not b_next!110835))))

(declare-fun tp!1211455 () Bool)

(declare-fun b_and!305425 () Bool)

(assert (=> b!3973006 (= tp!1211455 b_and!305425)))

(declare-fun b!3972985 () Bool)

(declare-fun b_free!110133 () Bool)

(declare-fun b_next!110837 () Bool)

(assert (=> b!3972985 (= b_free!110133 (not b_next!110837))))

(declare-fun tp!1211448 () Bool)

(declare-fun b_and!305427 () Bool)

(assert (=> b!3972985 (= tp!1211448 b_and!305427)))

(declare-fun b_free!110135 () Bool)

(declare-fun b_next!110839 () Bool)

(assert (=> b!3972985 (= b_free!110135 (not b_next!110839))))

(declare-fun tp!1211449 () Bool)

(declare-fun b_and!305429 () Bool)

(assert (=> b!3972985 (= tp!1211449 b_and!305429)))

(declare-datatypes ((C!23356 0))(
  ( (C!23357 (val!13772 Int)) )
))
(declare-datatypes ((List!42552 0))(
  ( (Nil!42428) (Cons!42428 (h!47848 C!23356) (t!330967 List!42552)) )
))
(declare-datatypes ((IArray!25787 0))(
  ( (IArray!25788 (innerList!12951 List!42552)) )
))
(declare-datatypes ((Conc!12891 0))(
  ( (Node!12891 (left!32125 Conc!12891) (right!32455 Conc!12891) (csize!26012 Int) (cheight!13102 Int)) (Leaf!19938 (xs!16197 IArray!25787) (csize!26013 Int)) (Empty!12891) )
))
(declare-datatypes ((BalanceConc!25376 0))(
  ( (BalanceConc!25377 (c!688932 Conc!12891)) )
))
(declare-datatypes ((List!42553 0))(
  ( (Nil!42429) (Cons!42429 (h!47849 (_ BitVec 16)) (t!330968 List!42553)) )
))
(declare-datatypes ((TokenValue!6910 0))(
  ( (FloatLiteralValue!13820 (text!48815 List!42553)) (TokenValueExt!6909 (__x!26037 Int)) (Broken!34550 (value!210988 List!42553)) (Object!7033) (End!6910) (Def!6910) (Underscore!6910) (Match!6910) (Else!6910) (Error!6910) (Case!6910) (If!6910) (Extends!6910) (Abstract!6910) (Class!6910) (Val!6910) (DelimiterValue!13820 (del!6970 List!42553)) (KeywordValue!6916 (value!210989 List!42553)) (CommentValue!13820 (value!210990 List!42553)) (WhitespaceValue!13820 (value!210991 List!42553)) (IndentationValue!6910 (value!210992 List!42553)) (String!48267) (Int32!6910) (Broken!34551 (value!210993 List!42553)) (Boolean!6911) (Unit!61078) (OperatorValue!6913 (op!6970 List!42553)) (IdentifierValue!13820 (value!210994 List!42553)) (IdentifierValue!13821 (value!210995 List!42553)) (WhitespaceValue!13821 (value!210996 List!42553)) (True!13820) (False!13820) (Broken!34552 (value!210997 List!42553)) (Broken!34553 (value!210998 List!42553)) (True!13821) (RightBrace!6910) (RightBracket!6910) (Colon!6910) (Null!6910) (Comma!6910) (LeftBracket!6910) (False!13821) (LeftBrace!6910) (ImaginaryLiteralValue!6910 (text!48816 List!42553)) (StringLiteralValue!20730 (value!210999 List!42553)) (EOFValue!6910 (value!211000 List!42553)) (IdentValue!6910 (value!211001 List!42553)) (DelimiterValue!13821 (value!211002 List!42553)) (DedentValue!6910 (value!211003 List!42553)) (NewLineValue!6910 (value!211004 List!42553)) (IntegerValue!20730 (value!211005 (_ BitVec 32)) (text!48817 List!42553)) (IntegerValue!20731 (value!211006 Int) (text!48818 List!42553)) (Times!6910) (Or!6910) (Equal!6910) (Minus!6910) (Broken!34554 (value!211007 List!42553)) (And!6910) (Div!6910) (LessEqual!6910) (Mod!6910) (Concat!18495) (Not!6910) (Plus!6910) (SpaceValue!6910 (value!211008 List!42553)) (IntegerValue!20732 (value!211009 Int) (text!48819 List!42553)) (StringLiteralValue!20731 (text!48820 List!42553)) (FloatLiteralValue!13821 (text!48821 List!42553)) (BytesLiteralValue!6910 (value!211010 List!42553)) (CommentValue!13821 (value!211011 List!42553)) (StringLiteralValue!20732 (value!211012 List!42553)) (ErrorTokenValue!6910 (msg!6971 List!42553)) )
))
(declare-datatypes ((Regex!11585 0))(
  ( (ElementMatch!11585 (c!688933 C!23356)) (Concat!18496 (regOne!23682 Regex!11585) (regTwo!23682 Regex!11585)) (EmptyExpr!11585) (Star!11585 (reg!11914 Regex!11585)) (EmptyLang!11585) (Union!11585 (regOne!23683 Regex!11585) (regTwo!23683 Regex!11585)) )
))
(declare-datatypes ((String!48268 0))(
  ( (String!48269 (value!211013 String)) )
))
(declare-datatypes ((TokenValueInjection!13248 0))(
  ( (TokenValueInjection!13249 (toValue!9168 Int) (toChars!9027 Int)) )
))
(declare-datatypes ((Rule!13160 0))(
  ( (Rule!13161 (regex!6680 Regex!11585) (tag!7540 String!48268) (isSeparator!6680 Bool) (transformation!6680 TokenValueInjection!13248)) )
))
(declare-datatypes ((Token!12498 0))(
  ( (Token!12499 (value!211014 TokenValue!6910) (rule!9672 Rule!13160) (size!31744 Int) (originalCharacters!7280 List!42552)) )
))
(declare-fun token!484 () Token!12498)

(declare-fun b!3972982 () Bool)

(declare-fun e!2461353 () Bool)

(declare-fun lt!1392144 () Int)

(declare-fun lt!1392137 () List!42552)

(assert (=> b!3972982 (= e!2461353 (and (= (size!31744 token!484) lt!1392144) (= (originalCharacters!7280 token!484) lt!1392137)))))

(declare-fun res!1608551 () Bool)

(declare-fun e!2461345 () Bool)

(assert (=> start!373872 (=> (not res!1608551) (not e!2461345))))

(declare-datatypes ((LexerInterface!6269 0))(
  ( (LexerInterfaceExt!6266 (__x!26038 Int)) (Lexer!6267) )
))
(declare-fun thiss!21717 () LexerInterface!6269)

(get-info :version)

(assert (=> start!373872 (= res!1608551 ((_ is Lexer!6267) thiss!21717))))

(assert (=> start!373872 e!2461345))

(declare-fun e!2461336 () Bool)

(assert (=> start!373872 e!2461336))

(declare-fun e!2461346 () Bool)

(declare-fun inv!56691 (Token!12498) Bool)

(assert (=> start!373872 (and (inv!56691 token!484) e!2461346)))

(declare-fun e!2461352 () Bool)

(assert (=> start!373872 e!2461352))

(declare-fun e!2461351 () Bool)

(assert (=> start!373872 e!2461351))

(declare-fun e!2461342 () Bool)

(assert (=> start!373872 e!2461342))

(assert (=> start!373872 true))

(declare-fun e!2461332 () Bool)

(assert (=> start!373872 e!2461332))

(declare-fun e!2461349 () Bool)

(assert (=> start!373872 e!2461349))

(declare-fun b!3972983 () Bool)

(declare-fun tp_is_empty!20141 () Bool)

(declare-fun tp!1211447 () Bool)

(assert (=> b!3972983 (= e!2461349 (and tp_is_empty!20141 tp!1211447))))

(declare-fun b!3972984 () Bool)

(declare-fun e!2461334 () Bool)

(declare-fun e!2461340 () Bool)

(assert (=> b!3972984 (= e!2461334 e!2461340)))

(declare-fun res!1608559 () Bool)

(assert (=> b!3972984 (=> res!1608559 e!2461340)))

(declare-fun lt!1392139 () List!42552)

(declare-fun prefix!494 () List!42552)

(assert (=> b!3972984 (= res!1608559 (not (= lt!1392139 prefix!494)))))

(declare-fun lt!1392145 () List!42552)

(declare-fun ++!11082 (List!42552 List!42552) List!42552)

(assert (=> b!3972984 (= lt!1392139 (++!11082 lt!1392137 lt!1392145))))

(declare-fun getSuffix!2198 (List!42552 List!42552) List!42552)

(assert (=> b!3972984 (= lt!1392145 (getSuffix!2198 prefix!494 lt!1392137))))

(declare-fun isPrefix!3767 (List!42552 List!42552) Bool)

(assert (=> b!3972984 (isPrefix!3767 lt!1392137 prefix!494)))

(declare-datatypes ((Unit!61079 0))(
  ( (Unit!61080) )
))
(declare-fun lt!1392142 () Unit!61079)

(declare-fun lt!1392159 () List!42552)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!345 (List!42552 List!42552 List!42552) Unit!61079)

(assert (=> b!3972984 (= lt!1392142 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!345 prefix!494 lt!1392137 lt!1392159))))

(declare-fun e!2461339 () Bool)

(assert (=> b!3972985 (= e!2461339 (and tp!1211448 tp!1211449))))

(declare-fun b!3972986 () Bool)

(declare-fun e!2461331 () Bool)

(declare-fun size!31745 (List!42552) Int)

(assert (=> b!3972986 (= e!2461331 (>= (size!31745 lt!1392159) lt!1392144))))

(declare-fun b!3972987 () Bool)

(declare-fun e!2461344 () Bool)

(declare-fun e!2461348 () Bool)

(assert (=> b!3972987 (= e!2461344 (not e!2461348))))

(declare-fun res!1608555 () Bool)

(assert (=> b!3972987 (=> res!1608555 e!2461348)))

(declare-fun lt!1392146 () List!42552)

(assert (=> b!3972987 (= res!1608555 (not (= lt!1392146 lt!1392159)))))

(declare-fun suffixResult!105 () List!42552)

(assert (=> b!3972987 (= lt!1392146 (++!11082 lt!1392137 suffixResult!105))))

(declare-fun lt!1392147 () Unit!61079)

(declare-fun lemmaInv!895 (TokenValueInjection!13248) Unit!61079)

(assert (=> b!3972987 (= lt!1392147 (lemmaInv!895 (transformation!6680 (rule!9672 token!484))))))

(declare-fun ruleValid!2612 (LexerInterface!6269 Rule!13160) Bool)

(assert (=> b!3972987 (ruleValid!2612 thiss!21717 (rule!9672 token!484))))

(declare-fun lt!1392143 () Unit!61079)

(declare-datatypes ((List!42554 0))(
  ( (Nil!42430) (Cons!42430 (h!47850 Rule!13160) (t!330969 List!42554)) )
))
(declare-fun rules!2999 () List!42554)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1686 (LexerInterface!6269 Rule!13160 List!42554) Unit!61079)

(assert (=> b!3972987 (= lt!1392143 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1686 thiss!21717 (rule!9672 token!484) rules!2999))))

(declare-fun b!3972988 () Bool)

(declare-fun e!2461338 () Bool)

(declare-fun e!2461329 () Bool)

(assert (=> b!3972988 (= e!2461338 e!2461329)))

(declare-fun res!1608548 () Bool)

(assert (=> b!3972988 (=> res!1608548 e!2461329)))

(declare-fun matchR!5562 (Regex!11585 List!42552) Bool)

(assert (=> b!3972988 (= res!1608548 (not (matchR!5562 (regex!6680 (rule!9672 token!484)) lt!1392137)))))

(declare-fun lt!1392138 () List!42552)

(assert (=> b!3972988 (isPrefix!3767 lt!1392137 lt!1392138)))

(declare-fun lt!1392161 () Unit!61079)

(declare-fun newSuffix!27 () List!42552)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!600 (List!42552 List!42552 List!42552) Unit!61079)

(assert (=> b!3972988 (= lt!1392161 (lemmaPrefixStaysPrefixWhenAddingToSuffix!600 lt!1392137 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!42552)

(declare-fun lt!1392141 () Unit!61079)

(assert (=> b!3972988 (= lt!1392141 (lemmaPrefixStaysPrefixWhenAddingToSuffix!600 lt!1392137 prefix!494 suffix!1299))))

(declare-fun b!3972989 () Bool)

(declare-fun res!1608553 () Bool)

(assert (=> b!3972989 (=> (not res!1608553) (not e!2461345))))

(assert (=> b!3972989 (= res!1608553 (isPrefix!3767 newSuffix!27 suffix!1299))))

(declare-fun b!3972990 () Bool)

(declare-fun res!1608545 () Bool)

(assert (=> b!3972990 (=> (not res!1608545) (not e!2461353))))

(assert (=> b!3972990 (= res!1608545 (= (size!31744 token!484) (size!31745 (originalCharacters!7280 token!484))))))

(declare-fun b!3972991 () Bool)

(declare-fun e!2461347 () Bool)

(declare-fun e!2461335 () Bool)

(assert (=> b!3972991 (= e!2461347 e!2461335)))

(declare-fun res!1608546 () Bool)

(assert (=> b!3972991 (=> (not res!1608546) (not e!2461335))))

(declare-fun lt!1392162 () List!42552)

(assert (=> b!3972991 (= res!1608546 (= lt!1392162 lt!1392138))))

(assert (=> b!3972991 (= lt!1392138 (++!11082 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42552)

(assert (=> b!3972991 (= lt!1392162 (++!11082 lt!1392137 newSuffixResult!27))))

(declare-fun b!3972992 () Bool)

(declare-fun e!2461341 () Bool)

(declare-fun tp!1211454 () Bool)

(assert (=> b!3972992 (= e!2461332 (and e!2461341 tp!1211454))))

(declare-fun b!3972993 () Bool)

(assert (=> b!3972993 (= e!2461348 e!2461334)))

(declare-fun res!1608562 () Bool)

(assert (=> b!3972993 (=> res!1608562 e!2461334)))

(assert (=> b!3972993 (= res!1608562 (not (isPrefix!3767 lt!1392137 lt!1392159)))))

(assert (=> b!3972993 (isPrefix!3767 prefix!494 lt!1392159)))

(declare-fun lt!1392151 () Unit!61079)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2610 (List!42552 List!42552) Unit!61079)

(assert (=> b!3972993 (= lt!1392151 (lemmaConcatTwoListThenFirstIsPrefix!2610 prefix!494 suffix!1299))))

(assert (=> b!3972993 (isPrefix!3767 lt!1392137 lt!1392146)))

(declare-fun lt!1392152 () Unit!61079)

(assert (=> b!3972993 (= lt!1392152 (lemmaConcatTwoListThenFirstIsPrefix!2610 lt!1392137 suffixResult!105))))

(declare-fun tp!1211445 () Bool)

(declare-fun e!2461330 () Bool)

(declare-fun b!3972994 () Bool)

(declare-fun e!2461337 () Bool)

(declare-fun inv!56688 (String!48268) Bool)

(declare-fun inv!56692 (TokenValueInjection!13248) Bool)

(assert (=> b!3972994 (= e!2461330 (and tp!1211445 (inv!56688 (tag!7540 (rule!9672 token!484))) (inv!56692 (transformation!6680 (rule!9672 token!484))) e!2461337))))

(declare-fun b!3972995 () Bool)

(declare-fun tp!1211451 () Bool)

(assert (=> b!3972995 (= e!2461352 (and tp_is_empty!20141 tp!1211451))))

(declare-fun b!3972996 () Bool)

(declare-fun tp!1211456 () Bool)

(assert (=> b!3972996 (= e!2461342 (and tp_is_empty!20141 tp!1211456))))

(declare-fun b!3972997 () Bool)

(declare-fun tp!1211446 () Bool)

(assert (=> b!3972997 (= e!2461336 (and tp_is_empty!20141 tp!1211446))))

(declare-fun b!3972998 () Bool)

(assert (=> b!3972998 (= e!2461335 e!2461344)))

(declare-fun res!1608549 () Bool)

(assert (=> b!3972998 (=> (not res!1608549) (not e!2461344))))

(declare-datatypes ((tuple2!41680 0))(
  ( (tuple2!41681 (_1!23974 Token!12498) (_2!23974 List!42552)) )
))
(declare-datatypes ((Option!9094 0))(
  ( (None!9093) (Some!9093 (v!39441 tuple2!41680)) )
))
(declare-fun lt!1392154 () Option!9094)

(declare-fun maxPrefix!3567 (LexerInterface!6269 List!42554 List!42552) Option!9094)

(assert (=> b!3972998 (= res!1608549 (= (maxPrefix!3567 thiss!21717 rules!2999 lt!1392159) lt!1392154))))

(assert (=> b!3972998 (= lt!1392154 (Some!9093 (tuple2!41681 token!484 suffixResult!105)))))

(assert (=> b!3972998 (= lt!1392159 (++!11082 prefix!494 suffix!1299))))

(declare-fun b!3972999 () Bool)

(declare-fun res!1608561 () Bool)

(assert (=> b!3972999 (=> (not res!1608561) (not e!2461345))))

(declare-fun rulesInvariant!5612 (LexerInterface!6269 List!42554) Bool)

(assert (=> b!3972999 (= res!1608561 (rulesInvariant!5612 thiss!21717 rules!2999))))

(declare-fun b!3973000 () Bool)

(declare-fun e!2461333 () Bool)

(assert (=> b!3973000 (= e!2461340 e!2461333)))

(declare-fun res!1608554 () Bool)

(assert (=> b!3973000 (=> res!1608554 e!2461333)))

(declare-fun lt!1392158 () List!42552)

(declare-fun lt!1392155 () List!42552)

(assert (=> b!3973000 (= res!1608554 (or (not (= lt!1392159 lt!1392155)) (not (= lt!1392159 lt!1392158))))))

(assert (=> b!3973000 (= lt!1392155 lt!1392158)))

(declare-fun lt!1392163 () List!42552)

(assert (=> b!3973000 (= lt!1392158 (++!11082 lt!1392137 lt!1392163))))

(assert (=> b!3973000 (= lt!1392155 (++!11082 lt!1392139 suffix!1299))))

(assert (=> b!3973000 (= lt!1392163 (++!11082 lt!1392145 suffix!1299))))

(declare-fun lt!1392157 () Unit!61079)

(declare-fun lemmaConcatAssociativity!2402 (List!42552 List!42552 List!42552) Unit!61079)

(assert (=> b!3973000 (= lt!1392157 (lemmaConcatAssociativity!2402 lt!1392137 lt!1392145 suffix!1299))))

(declare-fun b!3973001 () Bool)

(declare-fun tp!1211450 () Bool)

(declare-fun inv!21 (TokenValue!6910) Bool)

(assert (=> b!3973001 (= e!2461346 (and (inv!21 (value!211014 token!484)) e!2461330 tp!1211450))))

(declare-fun b!3973002 () Bool)

(declare-fun res!1608557 () Bool)

(assert (=> b!3973002 (=> (not res!1608557) (not e!2461345))))

(assert (=> b!3973002 (= res!1608557 (>= (size!31745 suffix!1299) (size!31745 newSuffix!27)))))

(declare-fun b!3973003 () Bool)

(assert (=> b!3973003 (= e!2461345 e!2461347)))

(declare-fun res!1608556 () Bool)

(assert (=> b!3973003 (=> (not res!1608556) (not e!2461347))))

(declare-fun lt!1392148 () Int)

(assert (=> b!3973003 (= res!1608556 (>= lt!1392148 lt!1392144))))

(assert (=> b!3973003 (= lt!1392144 (size!31745 lt!1392137))))

(assert (=> b!3973003 (= lt!1392148 (size!31745 prefix!494))))

(declare-fun list!15744 (BalanceConc!25376) List!42552)

(declare-fun charsOf!4496 (Token!12498) BalanceConc!25376)

(assert (=> b!3973003 (= lt!1392137 (list!15744 (charsOf!4496 token!484)))))

(declare-fun b!3973004 () Bool)

(assert (=> b!3973004 (= e!2461329 e!2461331)))

(declare-fun res!1608558 () Bool)

(assert (=> b!3973004 (=> res!1608558 e!2461331)))

(assert (=> b!3973004 (= res!1608558 (not (= (++!11082 lt!1392137 (getSuffix!2198 lt!1392159 lt!1392137)) lt!1392159)))))

(assert (=> b!3973004 e!2461353))

(declare-fun res!1608560 () Bool)

(assert (=> b!3973004 (=> (not res!1608560) (not e!2461353))))

(assert (=> b!3973004 (= res!1608560 (isPrefix!3767 lt!1392159 lt!1392159))))

(declare-fun lt!1392150 () Unit!61079)

(declare-fun lemmaIsPrefixRefl!2359 (List!42552 List!42552) Unit!61079)

(assert (=> b!3973004 (= lt!1392150 (lemmaIsPrefixRefl!2359 lt!1392159 lt!1392159))))

(declare-fun tp!1211453 () Bool)

(declare-fun b!3973005 () Bool)

(assert (=> b!3973005 (= e!2461341 (and tp!1211453 (inv!56688 (tag!7540 (h!47850 rules!2999))) (inv!56692 (transformation!6680 (h!47850 rules!2999))) e!2461339))))

(assert (=> b!3973006 (= e!2461337 (and tp!1211444 tp!1211455))))

(declare-fun b!3973007 () Bool)

(declare-fun tp!1211452 () Bool)

(assert (=> b!3973007 (= e!2461351 (and tp_is_empty!20141 tp!1211452))))

(declare-fun b!3973008 () Bool)

(declare-fun res!1608550 () Bool)

(assert (=> b!3973008 (=> (not res!1608550) (not e!2461353))))

(declare-fun lt!1392153 () TokenValue!6910)

(assert (=> b!3973008 (= res!1608550 (= (value!211014 token!484) lt!1392153))))

(declare-fun b!3973009 () Bool)

(assert (=> b!3973009 (= e!2461333 e!2461338)))

(declare-fun res!1608547 () Bool)

(assert (=> b!3973009 (=> res!1608547 e!2461338)))

(declare-fun lt!1392160 () Option!9094)

(assert (=> b!3973009 (= res!1608547 (not (= lt!1392160 lt!1392154)))))

(assert (=> b!3973009 (= lt!1392160 (Some!9093 (tuple2!41681 (Token!12499 lt!1392153 (rule!9672 token!484) lt!1392144 lt!1392137) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2601 (LexerInterface!6269 Rule!13160 List!42552) Option!9094)

(assert (=> b!3973009 (= lt!1392160 (maxPrefixOneRule!2601 thiss!21717 (rule!9672 token!484) lt!1392159))))

(declare-fun apply!9891 (TokenValueInjection!13248 BalanceConc!25376) TokenValue!6910)

(declare-fun seqFromList!4919 (List!42552) BalanceConc!25376)

(assert (=> b!3973009 (= lt!1392153 (apply!9891 (transformation!6680 (rule!9672 token!484)) (seqFromList!4919 lt!1392137)))))

(declare-fun lt!1392149 () Unit!61079)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1423 (LexerInterface!6269 List!42554 List!42552 List!42552 List!42552 Rule!13160) Unit!61079)

(assert (=> b!3973009 (= lt!1392149 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1423 thiss!21717 rules!2999 lt!1392137 lt!1392159 suffixResult!105 (rule!9672 token!484)))))

(assert (=> b!3973009 (= lt!1392163 suffixResult!105)))

(declare-fun lt!1392140 () Unit!61079)

(declare-fun lemmaSamePrefixThenSameSuffix!1954 (List!42552 List!42552 List!42552 List!42552 List!42552) Unit!61079)

(assert (=> b!3973009 (= lt!1392140 (lemmaSamePrefixThenSameSuffix!1954 lt!1392137 lt!1392163 lt!1392137 suffixResult!105 lt!1392159))))

(assert (=> b!3973009 (isPrefix!3767 lt!1392137 lt!1392158)))

(declare-fun lt!1392156 () Unit!61079)

(assert (=> b!3973009 (= lt!1392156 (lemmaConcatTwoListThenFirstIsPrefix!2610 lt!1392137 lt!1392163))))

(declare-fun b!3973010 () Bool)

(declare-fun res!1608552 () Bool)

(assert (=> b!3973010 (=> (not res!1608552) (not e!2461345))))

(declare-fun isEmpty!25378 (List!42554) Bool)

(assert (=> b!3973010 (= res!1608552 (not (isEmpty!25378 rules!2999)))))

(assert (= (and start!373872 res!1608551) b!3973010))

(assert (= (and b!3973010 res!1608552) b!3972999))

(assert (= (and b!3972999 res!1608561) b!3973002))

(assert (= (and b!3973002 res!1608557) b!3972989))

(assert (= (and b!3972989 res!1608553) b!3973003))

(assert (= (and b!3973003 res!1608556) b!3972991))

(assert (= (and b!3972991 res!1608546) b!3972998))

(assert (= (and b!3972998 res!1608549) b!3972987))

(assert (= (and b!3972987 (not res!1608555)) b!3972993))

(assert (= (and b!3972993 (not res!1608562)) b!3972984))

(assert (= (and b!3972984 (not res!1608559)) b!3973000))

(assert (= (and b!3973000 (not res!1608554)) b!3973009))

(assert (= (and b!3973009 (not res!1608547)) b!3972988))

(assert (= (and b!3972988 (not res!1608548)) b!3973004))

(assert (= (and b!3973004 res!1608560) b!3973008))

(assert (= (and b!3973008 res!1608550) b!3972990))

(assert (= (and b!3972990 res!1608545) b!3972982))

(assert (= (and b!3973004 (not res!1608558)) b!3972986))

(assert (= (and start!373872 ((_ is Cons!42428) prefix!494)) b!3972997))

(assert (= b!3972994 b!3973006))

(assert (= b!3973001 b!3972994))

(assert (= start!373872 b!3973001))

(assert (= (and start!373872 ((_ is Cons!42428) suffixResult!105)) b!3972995))

(assert (= (and start!373872 ((_ is Cons!42428) suffix!1299)) b!3973007))

(assert (= (and start!373872 ((_ is Cons!42428) newSuffix!27)) b!3972996))

(assert (= b!3973005 b!3972985))

(assert (= b!3972992 b!3973005))

(assert (= (and start!373872 ((_ is Cons!42430) rules!2999)) b!3972992))

(assert (= (and start!373872 ((_ is Cons!42428) newSuffixResult!27)) b!3972983))

(declare-fun m!4543519 () Bool)

(assert (=> b!3972994 m!4543519))

(declare-fun m!4543521 () Bool)

(assert (=> b!3972994 m!4543521))

(declare-fun m!4543523 () Bool)

(assert (=> b!3972998 m!4543523))

(declare-fun m!4543525 () Bool)

(assert (=> b!3972998 m!4543525))

(declare-fun m!4543527 () Bool)

(assert (=> b!3973000 m!4543527))

(declare-fun m!4543529 () Bool)

(assert (=> b!3973000 m!4543529))

(declare-fun m!4543531 () Bool)

(assert (=> b!3973000 m!4543531))

(declare-fun m!4543533 () Bool)

(assert (=> b!3973000 m!4543533))

(declare-fun m!4543535 () Bool)

(assert (=> b!3973003 m!4543535))

(declare-fun m!4543537 () Bool)

(assert (=> b!3973003 m!4543537))

(declare-fun m!4543539 () Bool)

(assert (=> b!3973003 m!4543539))

(assert (=> b!3973003 m!4543539))

(declare-fun m!4543541 () Bool)

(assert (=> b!3973003 m!4543541))

(declare-fun m!4543543 () Bool)

(assert (=> start!373872 m!4543543))

(declare-fun m!4543545 () Bool)

(assert (=> b!3972999 m!4543545))

(declare-fun m!4543547 () Bool)

(assert (=> b!3972989 m!4543547))

(declare-fun m!4543549 () Bool)

(assert (=> b!3972991 m!4543549))

(declare-fun m!4543551 () Bool)

(assert (=> b!3972991 m!4543551))

(declare-fun m!4543553 () Bool)

(assert (=> b!3972984 m!4543553))

(declare-fun m!4543555 () Bool)

(assert (=> b!3972984 m!4543555))

(declare-fun m!4543557 () Bool)

(assert (=> b!3972984 m!4543557))

(declare-fun m!4543559 () Bool)

(assert (=> b!3972984 m!4543559))

(declare-fun m!4543561 () Bool)

(assert (=> b!3972986 m!4543561))

(declare-fun m!4543563 () Bool)

(assert (=> b!3973002 m!4543563))

(declare-fun m!4543565 () Bool)

(assert (=> b!3973002 m!4543565))

(declare-fun m!4543567 () Bool)

(assert (=> b!3973001 m!4543567))

(declare-fun m!4543569 () Bool)

(assert (=> b!3972988 m!4543569))

(declare-fun m!4543571 () Bool)

(assert (=> b!3972988 m!4543571))

(declare-fun m!4543573 () Bool)

(assert (=> b!3972988 m!4543573))

(declare-fun m!4543575 () Bool)

(assert (=> b!3972988 m!4543575))

(declare-fun m!4543577 () Bool)

(assert (=> b!3973004 m!4543577))

(assert (=> b!3973004 m!4543577))

(declare-fun m!4543579 () Bool)

(assert (=> b!3973004 m!4543579))

(declare-fun m!4543581 () Bool)

(assert (=> b!3973004 m!4543581))

(declare-fun m!4543583 () Bool)

(assert (=> b!3973004 m!4543583))

(declare-fun m!4543585 () Bool)

(assert (=> b!3973010 m!4543585))

(declare-fun m!4543587 () Bool)

(assert (=> b!3972987 m!4543587))

(declare-fun m!4543589 () Bool)

(assert (=> b!3972987 m!4543589))

(declare-fun m!4543591 () Bool)

(assert (=> b!3972987 m!4543591))

(declare-fun m!4543593 () Bool)

(assert (=> b!3972987 m!4543593))

(declare-fun m!4543595 () Bool)

(assert (=> b!3972990 m!4543595))

(declare-fun m!4543597 () Bool)

(assert (=> b!3973009 m!4543597))

(declare-fun m!4543599 () Bool)

(assert (=> b!3973009 m!4543599))

(declare-fun m!4543601 () Bool)

(assert (=> b!3973009 m!4543601))

(declare-fun m!4543603 () Bool)

(assert (=> b!3973009 m!4543603))

(declare-fun m!4543605 () Bool)

(assert (=> b!3973009 m!4543605))

(declare-fun m!4543607 () Bool)

(assert (=> b!3973009 m!4543607))

(assert (=> b!3973009 m!4543599))

(declare-fun m!4543609 () Bool)

(assert (=> b!3973009 m!4543609))

(declare-fun m!4543611 () Bool)

(assert (=> b!3973005 m!4543611))

(declare-fun m!4543613 () Bool)

(assert (=> b!3973005 m!4543613))

(declare-fun m!4543615 () Bool)

(assert (=> b!3972993 m!4543615))

(declare-fun m!4543617 () Bool)

(assert (=> b!3972993 m!4543617))

(declare-fun m!4543619 () Bool)

(assert (=> b!3972993 m!4543619))

(declare-fun m!4543621 () Bool)

(assert (=> b!3972993 m!4543621))

(declare-fun m!4543623 () Bool)

(assert (=> b!3972993 m!4543623))

(check-sat (not b!3973003) (not b!3972995) (not b!3972998) (not b_next!110839) (not b!3972983) (not b!3972986) (not b!3973009) (not b!3972992) b_and!305423 (not start!373872) (not b_next!110835) (not b!3972993) tp_is_empty!20141 (not b!3972989) (not b!3972994) (not b!3972991) (not b!3972996) (not b!3973007) (not b!3972999) (not b!3972987) (not b!3972984) (not b!3973010) (not b!3973004) (not b!3972997) b_and!305427 (not b_next!110833) (not b!3973002) (not b!3972988) (not b!3973000) b_and!305429 b_and!305425 (not b!3972990) (not b!3973001) (not b_next!110837) (not b!3973005))
(check-sat (not b_next!110839) b_and!305429 b_and!305423 b_and!305425 (not b_next!110835) (not b_next!110837) b_and!305427 (not b_next!110833))
(get-model)

(declare-fun b!3973059 () Bool)

(declare-fun res!1608590 () Bool)

(declare-fun e!2461382 () Bool)

(assert (=> b!3973059 (=> (not res!1608590) (not e!2461382))))

(declare-fun lt!1392181 () List!42552)

(assert (=> b!3973059 (= res!1608590 (= (size!31745 lt!1392181) (+ (size!31745 lt!1392137) (size!31745 suffixResult!105))))))

(declare-fun b!3973060 () Bool)

(assert (=> b!3973060 (= e!2461382 (or (not (= suffixResult!105 Nil!42428)) (= lt!1392181 lt!1392137)))))

(declare-fun b!3973057 () Bool)

(declare-fun e!2461381 () List!42552)

(assert (=> b!3973057 (= e!2461381 suffixResult!105)))

(declare-fun d!1176625 () Bool)

(assert (=> d!1176625 e!2461382))

(declare-fun res!1608589 () Bool)

(assert (=> d!1176625 (=> (not res!1608589) (not e!2461382))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6439 (List!42552) (InoxSet C!23356))

(assert (=> d!1176625 (= res!1608589 (= (content!6439 lt!1392181) ((_ map or) (content!6439 lt!1392137) (content!6439 suffixResult!105))))))

(assert (=> d!1176625 (= lt!1392181 e!2461381)))

(declare-fun c!688946 () Bool)

(assert (=> d!1176625 (= c!688946 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176625 (= (++!11082 lt!1392137 suffixResult!105) lt!1392181)))

(declare-fun b!3973058 () Bool)

(assert (=> b!3973058 (= e!2461381 (Cons!42428 (h!47848 lt!1392137) (++!11082 (t!330967 lt!1392137) suffixResult!105)))))

(assert (= (and d!1176625 c!688946) b!3973057))

(assert (= (and d!1176625 (not c!688946)) b!3973058))

(assert (= (and d!1176625 res!1608589) b!3973059))

(assert (= (and b!3973059 res!1608590) b!3973060))

(declare-fun m!4543663 () Bool)

(assert (=> b!3973059 m!4543663))

(assert (=> b!3973059 m!4543535))

(declare-fun m!4543665 () Bool)

(assert (=> b!3973059 m!4543665))

(declare-fun m!4543667 () Bool)

(assert (=> d!1176625 m!4543667))

(declare-fun m!4543669 () Bool)

(assert (=> d!1176625 m!4543669))

(declare-fun m!4543671 () Bool)

(assert (=> d!1176625 m!4543671))

(declare-fun m!4543673 () Bool)

(assert (=> b!3973058 m!4543673))

(assert (=> b!3972987 d!1176625))

(declare-fun d!1176637 () Bool)

(declare-fun e!2461407 () Bool)

(assert (=> d!1176637 e!2461407))

(declare-fun res!1608617 () Bool)

(assert (=> d!1176637 (=> (not res!1608617) (not e!2461407))))

(declare-fun semiInverseModEq!2871 (Int Int) Bool)

(assert (=> d!1176637 (= res!1608617 (semiInverseModEq!2871 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))))))

(declare-fun Unit!61081 () Unit!61079)

(assert (=> d!1176637 (= (lemmaInv!895 (transformation!6680 (rule!9672 token!484))) Unit!61081)))

(declare-fun b!3973105 () Bool)

(declare-fun equivClasses!2770 (Int Int) Bool)

(assert (=> b!3973105 (= e!2461407 (equivClasses!2770 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))))))

(assert (= (and d!1176637 res!1608617) b!3973105))

(declare-fun m!4543697 () Bool)

(assert (=> d!1176637 m!4543697))

(declare-fun m!4543699 () Bool)

(assert (=> b!3973105 m!4543699))

(assert (=> b!3972987 d!1176637))

(declare-fun d!1176645 () Bool)

(declare-fun res!1608630 () Bool)

(declare-fun e!2461417 () Bool)

(assert (=> d!1176645 (=> (not res!1608630) (not e!2461417))))

(declare-fun validRegex!5264 (Regex!11585) Bool)

(assert (=> d!1176645 (= res!1608630 (validRegex!5264 (regex!6680 (rule!9672 token!484))))))

(assert (=> d!1176645 (= (ruleValid!2612 thiss!21717 (rule!9672 token!484)) e!2461417)))

(declare-fun b!3973124 () Bool)

(declare-fun res!1608631 () Bool)

(assert (=> b!3973124 (=> (not res!1608631) (not e!2461417))))

(declare-fun nullable!4064 (Regex!11585) Bool)

(assert (=> b!3973124 (= res!1608631 (not (nullable!4064 (regex!6680 (rule!9672 token!484)))))))

(declare-fun b!3973125 () Bool)

(assert (=> b!3973125 (= e!2461417 (not (= (tag!7540 (rule!9672 token!484)) (String!48269 ""))))))

(assert (= (and d!1176645 res!1608630) b!3973124))

(assert (= (and b!3973124 res!1608631) b!3973125))

(declare-fun m!4543725 () Bool)

(assert (=> d!1176645 m!4543725))

(declare-fun m!4543727 () Bool)

(assert (=> b!3973124 m!4543727))

(assert (=> b!3972987 d!1176645))

(declare-fun d!1176651 () Bool)

(assert (=> d!1176651 (ruleValid!2612 thiss!21717 (rule!9672 token!484))))

(declare-fun lt!1392197 () Unit!61079)

(declare-fun choose!23778 (LexerInterface!6269 Rule!13160 List!42554) Unit!61079)

(assert (=> d!1176651 (= lt!1392197 (choose!23778 thiss!21717 (rule!9672 token!484) rules!2999))))

(declare-fun contains!8452 (List!42554 Rule!13160) Bool)

(assert (=> d!1176651 (contains!8452 rules!2999 (rule!9672 token!484))))

(assert (=> d!1176651 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1686 thiss!21717 (rule!9672 token!484) rules!2999) lt!1392197)))

(declare-fun bs!587668 () Bool)

(assert (= bs!587668 d!1176651))

(assert (=> bs!587668 m!4543591))

(declare-fun m!4543737 () Bool)

(assert (=> bs!587668 m!4543737))

(declare-fun m!4543739 () Bool)

(assert (=> bs!587668 m!4543739))

(assert (=> b!3972987 d!1176651))

(declare-fun d!1176659 () Bool)

(declare-fun lt!1392206 () Int)

(assert (=> d!1176659 (>= lt!1392206 0)))

(declare-fun e!2461432 () Int)

(assert (=> d!1176659 (= lt!1392206 e!2461432)))

(declare-fun c!688963 () Bool)

(assert (=> d!1176659 (= c!688963 ((_ is Nil!42428) lt!1392159))))

(assert (=> d!1176659 (= (size!31745 lt!1392159) lt!1392206)))

(declare-fun b!3973147 () Bool)

(assert (=> b!3973147 (= e!2461432 0)))

(declare-fun b!3973148 () Bool)

(assert (=> b!3973148 (= e!2461432 (+ 1 (size!31745 (t!330967 lt!1392159))))))

(assert (= (and d!1176659 c!688963) b!3973147))

(assert (= (and d!1176659 (not c!688963)) b!3973148))

(declare-fun m!4543767 () Bool)

(assert (=> b!3973148 m!4543767))

(assert (=> b!3972986 d!1176659))

(declare-fun d!1176671 () Bool)

(declare-fun res!1608663 () Bool)

(declare-fun e!2461451 () Bool)

(assert (=> d!1176671 (=> (not res!1608663) (not e!2461451))))

(declare-fun isEmpty!25380 (List!42552) Bool)

(assert (=> d!1176671 (= res!1608663 (not (isEmpty!25380 (originalCharacters!7280 token!484))))))

(assert (=> d!1176671 (= (inv!56691 token!484) e!2461451)))

(declare-fun b!3973177 () Bool)

(declare-fun res!1608664 () Bool)

(assert (=> b!3973177 (=> (not res!1608664) (not e!2461451))))

(declare-fun dynLambda!18078 (Int TokenValue!6910) BalanceConc!25376)

(assert (=> b!3973177 (= res!1608664 (= (originalCharacters!7280 token!484) (list!15744 (dynLambda!18078 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (value!211014 token!484)))))))

(declare-fun b!3973178 () Bool)

(assert (=> b!3973178 (= e!2461451 (= (size!31744 token!484) (size!31745 (originalCharacters!7280 token!484))))))

(assert (= (and d!1176671 res!1608663) b!3973177))

(assert (= (and b!3973177 res!1608664) b!3973178))

(declare-fun b_lambda!116111 () Bool)

(assert (=> (not b_lambda!116111) (not b!3973177)))

(declare-fun t!330971 () Bool)

(declare-fun tb!239677 () Bool)

(assert (=> (and b!3973006 (= (toChars!9027 (transformation!6680 (rule!9672 token!484))) (toChars!9027 (transformation!6680 (rule!9672 token!484)))) t!330971) tb!239677))

(declare-fun b!3973188 () Bool)

(declare-fun e!2461457 () Bool)

(declare-fun tp!1211459 () Bool)

(declare-fun inv!56693 (Conc!12891) Bool)

(assert (=> b!3973188 (= e!2461457 (and (inv!56693 (c!688932 (dynLambda!18078 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (value!211014 token!484)))) tp!1211459))))

(declare-fun result!290258 () Bool)

(declare-fun inv!56694 (BalanceConc!25376) Bool)

(assert (=> tb!239677 (= result!290258 (and (inv!56694 (dynLambda!18078 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (value!211014 token!484))) e!2461457))))

(assert (= tb!239677 b!3973188))

(declare-fun m!4543797 () Bool)

(assert (=> b!3973188 m!4543797))

(declare-fun m!4543799 () Bool)

(assert (=> tb!239677 m!4543799))

(assert (=> b!3973177 t!330971))

(declare-fun b_and!305431 () Bool)

(assert (= b_and!305425 (and (=> t!330971 result!290258) b_and!305431)))

(declare-fun t!330973 () Bool)

(declare-fun tb!239679 () Bool)

(assert (=> (and b!3972985 (= (toChars!9027 (transformation!6680 (h!47850 rules!2999))) (toChars!9027 (transformation!6680 (rule!9672 token!484)))) t!330973) tb!239679))

(declare-fun result!290262 () Bool)

(assert (= result!290262 result!290258))

(assert (=> b!3973177 t!330973))

(declare-fun b_and!305433 () Bool)

(assert (= b_and!305429 (and (=> t!330973 result!290262) b_and!305433)))

(declare-fun m!4543801 () Bool)

(assert (=> d!1176671 m!4543801))

(declare-fun m!4543803 () Bool)

(assert (=> b!3973177 m!4543803))

(assert (=> b!3973177 m!4543803))

(declare-fun m!4543805 () Bool)

(assert (=> b!3973177 m!4543805))

(assert (=> b!3973178 m!4543595))

(assert (=> start!373872 d!1176671))

(declare-fun b!3973235 () Bool)

(declare-fun e!2461480 () Bool)

(declare-fun e!2461478 () Bool)

(assert (=> b!3973235 (= e!2461480 e!2461478)))

(declare-fun res!1608697 () Bool)

(assert (=> b!3973235 (=> (not res!1608697) (not e!2461478))))

(declare-fun lt!1392227 () Bool)

(assert (=> b!3973235 (= res!1608697 (not lt!1392227))))

(declare-fun b!3973236 () Bool)

(declare-fun res!1608701 () Bool)

(declare-fun e!2461483 () Bool)

(assert (=> b!3973236 (=> res!1608701 e!2461483)))

(declare-fun tail!6197 (List!42552) List!42552)

(assert (=> b!3973236 (= res!1608701 (not (isEmpty!25380 (tail!6197 lt!1392137))))))

(declare-fun b!3973237 () Bool)

(declare-fun res!1608699 () Bool)

(declare-fun e!2461482 () Bool)

(assert (=> b!3973237 (=> (not res!1608699) (not e!2461482))))

(declare-fun call!285644 () Bool)

(assert (=> b!3973237 (= res!1608699 (not call!285644))))

(declare-fun bm!285639 () Bool)

(assert (=> bm!285639 (= call!285644 (isEmpty!25380 lt!1392137))))

(declare-fun b!3973238 () Bool)

(declare-fun e!2461481 () Bool)

(assert (=> b!3973238 (= e!2461481 (nullable!4064 (regex!6680 (rule!9672 token!484))))))

(declare-fun b!3973239 () Bool)

(declare-fun e!2461479 () Bool)

(declare-fun e!2461484 () Bool)

(assert (=> b!3973239 (= e!2461479 e!2461484)))

(declare-fun c!688981 () Bool)

(assert (=> b!3973239 (= c!688981 ((_ is EmptyLang!11585) (regex!6680 (rule!9672 token!484))))))

(declare-fun b!3973240 () Bool)

(assert (=> b!3973240 (= e!2461478 e!2461483)))

(declare-fun res!1608702 () Bool)

(assert (=> b!3973240 (=> res!1608702 e!2461483)))

(assert (=> b!3973240 (= res!1608702 call!285644)))

(declare-fun b!3973241 () Bool)

(declare-fun head!8465 (List!42552) C!23356)

(assert (=> b!3973241 (= e!2461482 (= (head!8465 lt!1392137) (c!688933 (regex!6680 (rule!9672 token!484)))))))

(declare-fun b!3973242 () Bool)

(declare-fun res!1608703 () Bool)

(assert (=> b!3973242 (=> res!1608703 e!2461480)))

(assert (=> b!3973242 (= res!1608703 e!2461482)))

(declare-fun res!1608700 () Bool)

(assert (=> b!3973242 (=> (not res!1608700) (not e!2461482))))

(assert (=> b!3973242 (= res!1608700 lt!1392227)))

(declare-fun b!3973243 () Bool)

(declare-fun derivativeStep!3475 (Regex!11585 C!23356) Regex!11585)

(assert (=> b!3973243 (= e!2461481 (matchR!5562 (derivativeStep!3475 (regex!6680 (rule!9672 token!484)) (head!8465 lt!1392137)) (tail!6197 lt!1392137)))))

(declare-fun b!3973244 () Bool)

(declare-fun res!1608696 () Bool)

(assert (=> b!3973244 (=> res!1608696 e!2461480)))

(assert (=> b!3973244 (= res!1608696 (not ((_ is ElementMatch!11585) (regex!6680 (rule!9672 token!484)))))))

(assert (=> b!3973244 (= e!2461484 e!2461480)))

(declare-fun d!1176689 () Bool)

(assert (=> d!1176689 e!2461479))

(declare-fun c!688980 () Bool)

(assert (=> d!1176689 (= c!688980 ((_ is EmptyExpr!11585) (regex!6680 (rule!9672 token!484))))))

(assert (=> d!1176689 (= lt!1392227 e!2461481)))

(declare-fun c!688979 () Bool)

(assert (=> d!1176689 (= c!688979 (isEmpty!25380 lt!1392137))))

(assert (=> d!1176689 (validRegex!5264 (regex!6680 (rule!9672 token!484)))))

(assert (=> d!1176689 (= (matchR!5562 (regex!6680 (rule!9672 token!484)) lt!1392137) lt!1392227)))

(declare-fun b!3973245 () Bool)

(assert (=> b!3973245 (= e!2461484 (not lt!1392227))))

(declare-fun b!3973246 () Bool)

(assert (=> b!3973246 (= e!2461479 (= lt!1392227 call!285644))))

(declare-fun b!3973247 () Bool)

(declare-fun res!1608698 () Bool)

(assert (=> b!3973247 (=> (not res!1608698) (not e!2461482))))

(assert (=> b!3973247 (= res!1608698 (isEmpty!25380 (tail!6197 lt!1392137)))))

(declare-fun b!3973248 () Bool)

(assert (=> b!3973248 (= e!2461483 (not (= (head!8465 lt!1392137) (c!688933 (regex!6680 (rule!9672 token!484))))))))

(assert (= (and d!1176689 c!688979) b!3973238))

(assert (= (and d!1176689 (not c!688979)) b!3973243))

(assert (= (and d!1176689 c!688980) b!3973246))

(assert (= (and d!1176689 (not c!688980)) b!3973239))

(assert (= (and b!3973239 c!688981) b!3973245))

(assert (= (and b!3973239 (not c!688981)) b!3973244))

(assert (= (and b!3973244 (not res!1608696)) b!3973242))

(assert (= (and b!3973242 res!1608700) b!3973237))

(assert (= (and b!3973237 res!1608699) b!3973247))

(assert (= (and b!3973247 res!1608698) b!3973241))

(assert (= (and b!3973242 (not res!1608703)) b!3973235))

(assert (= (and b!3973235 res!1608697) b!3973240))

(assert (= (and b!3973240 (not res!1608702)) b!3973236))

(assert (= (and b!3973236 (not res!1608701)) b!3973248))

(assert (= (or b!3973246 b!3973237 b!3973240) bm!285639))

(declare-fun m!4543807 () Bool)

(assert (=> b!3973236 m!4543807))

(assert (=> b!3973236 m!4543807))

(declare-fun m!4543809 () Bool)

(assert (=> b!3973236 m!4543809))

(assert (=> b!3973238 m!4543727))

(declare-fun m!4543811 () Bool)

(assert (=> d!1176689 m!4543811))

(assert (=> d!1176689 m!4543725))

(assert (=> b!3973247 m!4543807))

(assert (=> b!3973247 m!4543807))

(assert (=> b!3973247 m!4543809))

(declare-fun m!4543817 () Bool)

(assert (=> b!3973241 m!4543817))

(assert (=> bm!285639 m!4543811))

(assert (=> b!3973243 m!4543817))

(assert (=> b!3973243 m!4543817))

(declare-fun m!4543823 () Bool)

(assert (=> b!3973243 m!4543823))

(assert (=> b!3973243 m!4543807))

(assert (=> b!3973243 m!4543823))

(assert (=> b!3973243 m!4543807))

(declare-fun m!4543827 () Bool)

(assert (=> b!3973243 m!4543827))

(assert (=> b!3973248 m!4543817))

(assert (=> b!3972988 d!1176689))

(declare-fun b!3973273 () Bool)

(declare-fun e!2461496 () Bool)

(assert (=> b!3973273 (= e!2461496 (>= (size!31745 lt!1392138) (size!31745 lt!1392137)))))

(declare-fun d!1176691 () Bool)

(assert (=> d!1176691 e!2461496))

(declare-fun res!1608723 () Bool)

(assert (=> d!1176691 (=> res!1608723 e!2461496)))

(declare-fun lt!1392236 () Bool)

(assert (=> d!1176691 (= res!1608723 (not lt!1392236))))

(declare-fun e!2461497 () Bool)

(assert (=> d!1176691 (= lt!1392236 e!2461497)))

(declare-fun res!1608721 () Bool)

(assert (=> d!1176691 (=> res!1608721 e!2461497)))

(assert (=> d!1176691 (= res!1608721 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176691 (= (isPrefix!3767 lt!1392137 lt!1392138) lt!1392236)))

(declare-fun b!3973270 () Bool)

(declare-fun e!2461498 () Bool)

(assert (=> b!3973270 (= e!2461497 e!2461498)))

(declare-fun res!1608722 () Bool)

(assert (=> b!3973270 (=> (not res!1608722) (not e!2461498))))

(assert (=> b!3973270 (= res!1608722 (not ((_ is Nil!42428) lt!1392138)))))

(declare-fun b!3973271 () Bool)

(declare-fun res!1608724 () Bool)

(assert (=> b!3973271 (=> (not res!1608724) (not e!2461498))))

(assert (=> b!3973271 (= res!1608724 (= (head!8465 lt!1392137) (head!8465 lt!1392138)))))

(declare-fun b!3973272 () Bool)

(assert (=> b!3973272 (= e!2461498 (isPrefix!3767 (tail!6197 lt!1392137) (tail!6197 lt!1392138)))))

(assert (= (and d!1176691 (not res!1608721)) b!3973270))

(assert (= (and b!3973270 res!1608722) b!3973271))

(assert (= (and b!3973271 res!1608724) b!3973272))

(assert (= (and d!1176691 (not res!1608723)) b!3973273))

(declare-fun m!4543857 () Bool)

(assert (=> b!3973273 m!4543857))

(assert (=> b!3973273 m!4543535))

(assert (=> b!3973271 m!4543817))

(declare-fun m!4543859 () Bool)

(assert (=> b!3973271 m!4543859))

(assert (=> b!3973272 m!4543807))

(declare-fun m!4543861 () Bool)

(assert (=> b!3973272 m!4543861))

(assert (=> b!3973272 m!4543807))

(assert (=> b!3973272 m!4543861))

(declare-fun m!4543863 () Bool)

(assert (=> b!3973272 m!4543863))

(assert (=> b!3972988 d!1176691))

(declare-fun d!1176699 () Bool)

(assert (=> d!1176699 (isPrefix!3767 lt!1392137 (++!11082 prefix!494 newSuffix!27))))

(declare-fun lt!1392239 () Unit!61079)

(declare-fun choose!23779 (List!42552 List!42552 List!42552) Unit!61079)

(assert (=> d!1176699 (= lt!1392239 (choose!23779 lt!1392137 prefix!494 newSuffix!27))))

(assert (=> d!1176699 (isPrefix!3767 lt!1392137 prefix!494)))

(assert (=> d!1176699 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!600 lt!1392137 prefix!494 newSuffix!27) lt!1392239)))

(declare-fun bs!587673 () Bool)

(assert (= bs!587673 d!1176699))

(assert (=> bs!587673 m!4543549))

(assert (=> bs!587673 m!4543549))

(declare-fun m!4543865 () Bool)

(assert (=> bs!587673 m!4543865))

(declare-fun m!4543867 () Bool)

(assert (=> bs!587673 m!4543867))

(assert (=> bs!587673 m!4543557))

(assert (=> b!3972988 d!1176699))

(declare-fun d!1176701 () Bool)

(assert (=> d!1176701 (isPrefix!3767 lt!1392137 (++!11082 prefix!494 suffix!1299))))

(declare-fun lt!1392240 () Unit!61079)

(assert (=> d!1176701 (= lt!1392240 (choose!23779 lt!1392137 prefix!494 suffix!1299))))

(assert (=> d!1176701 (isPrefix!3767 lt!1392137 prefix!494)))

(assert (=> d!1176701 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!600 lt!1392137 prefix!494 suffix!1299) lt!1392240)))

(declare-fun bs!587674 () Bool)

(assert (= bs!587674 d!1176701))

(assert (=> bs!587674 m!4543525))

(assert (=> bs!587674 m!4543525))

(declare-fun m!4543869 () Bool)

(assert (=> bs!587674 m!4543869))

(declare-fun m!4543871 () Bool)

(assert (=> bs!587674 m!4543871))

(assert (=> bs!587674 m!4543557))

(assert (=> b!3972988 d!1176701))

(declare-fun d!1176703 () Bool)

(declare-fun res!1608727 () Bool)

(declare-fun e!2461501 () Bool)

(assert (=> d!1176703 (=> (not res!1608727) (not e!2461501))))

(declare-fun rulesValid!2604 (LexerInterface!6269 List!42554) Bool)

(assert (=> d!1176703 (= res!1608727 (rulesValid!2604 thiss!21717 rules!2999))))

(assert (=> d!1176703 (= (rulesInvariant!5612 thiss!21717 rules!2999) e!2461501)))

(declare-fun b!3973276 () Bool)

(declare-datatypes ((List!42555 0))(
  ( (Nil!42431) (Cons!42431 (h!47851 String!48268) (t!330994 List!42555)) )
))
(declare-fun noDuplicateTag!2605 (LexerInterface!6269 List!42554 List!42555) Bool)

(assert (=> b!3973276 (= e!2461501 (noDuplicateTag!2605 thiss!21717 rules!2999 Nil!42431))))

(assert (= (and d!1176703 res!1608727) b!3973276))

(declare-fun m!4543873 () Bool)

(assert (=> d!1176703 m!4543873))

(declare-fun m!4543875 () Bool)

(assert (=> b!3973276 m!4543875))

(assert (=> b!3972999 d!1176703))

(declare-fun b!3973353 () Bool)

(declare-fun res!1608791 () Bool)

(declare-fun e!2461541 () Bool)

(assert (=> b!3973353 (=> (not res!1608791) (not e!2461541))))

(declare-fun lt!1392280 () Option!9094)

(declare-fun get!13980 (Option!9094) tuple2!41680)

(assert (=> b!3973353 (= res!1608791 (= (value!211014 (_1!23974 (get!13980 lt!1392280))) (apply!9891 (transformation!6680 (rule!9672 (_1!23974 (get!13980 lt!1392280)))) (seqFromList!4919 (originalCharacters!7280 (_1!23974 (get!13980 lt!1392280)))))))))

(declare-fun b!3973354 () Bool)

(declare-fun res!1608789 () Bool)

(assert (=> b!3973354 (=> (not res!1608789) (not e!2461541))))

(assert (=> b!3973354 (= res!1608789 (= (++!11082 (list!15744 (charsOf!4496 (_1!23974 (get!13980 lt!1392280)))) (_2!23974 (get!13980 lt!1392280))) lt!1392159))))

(declare-fun b!3973355 () Bool)

(declare-fun res!1608790 () Bool)

(assert (=> b!3973355 (=> (not res!1608790) (not e!2461541))))

(assert (=> b!3973355 (= res!1608790 (= (list!15744 (charsOf!4496 (_1!23974 (get!13980 lt!1392280)))) (originalCharacters!7280 (_1!23974 (get!13980 lt!1392280)))))))

(declare-fun b!3973356 () Bool)

(declare-fun res!1608787 () Bool)

(assert (=> b!3973356 (=> (not res!1608787) (not e!2461541))))

(assert (=> b!3973356 (= res!1608787 (< (size!31745 (_2!23974 (get!13980 lt!1392280))) (size!31745 lt!1392159)))))

(declare-fun b!3973357 () Bool)

(declare-fun res!1608788 () Bool)

(assert (=> b!3973357 (=> (not res!1608788) (not e!2461541))))

(assert (=> b!3973357 (= res!1608788 (matchR!5562 (regex!6680 (rule!9672 (_1!23974 (get!13980 lt!1392280)))) (list!15744 (charsOf!4496 (_1!23974 (get!13980 lt!1392280))))))))

(declare-fun b!3973358 () Bool)

(declare-fun e!2461542 () Option!9094)

(declare-fun lt!1392279 () Option!9094)

(declare-fun lt!1392277 () Option!9094)

(assert (=> b!3973358 (= e!2461542 (ite (and ((_ is None!9093) lt!1392279) ((_ is None!9093) lt!1392277)) None!9093 (ite ((_ is None!9093) lt!1392277) lt!1392279 (ite ((_ is None!9093) lt!1392279) lt!1392277 (ite (>= (size!31744 (_1!23974 (v!39441 lt!1392279))) (size!31744 (_1!23974 (v!39441 lt!1392277)))) lt!1392279 lt!1392277)))))))

(declare-fun call!285648 () Option!9094)

(assert (=> b!3973358 (= lt!1392279 call!285648)))

(assert (=> b!3973358 (= lt!1392277 (maxPrefix!3567 thiss!21717 (t!330969 rules!2999) lt!1392159))))

(declare-fun b!3973359 () Bool)

(assert (=> b!3973359 (= e!2461541 (contains!8452 rules!2999 (rule!9672 (_1!23974 (get!13980 lt!1392280)))))))

(declare-fun b!3973360 () Bool)

(assert (=> b!3973360 (= e!2461542 call!285648)))

(declare-fun b!3973361 () Bool)

(declare-fun e!2461543 () Bool)

(assert (=> b!3973361 (= e!2461543 e!2461541)))

(declare-fun res!1608786 () Bool)

(assert (=> b!3973361 (=> (not res!1608786) (not e!2461541))))

(declare-fun isDefined!7016 (Option!9094) Bool)

(assert (=> b!3973361 (= res!1608786 (isDefined!7016 lt!1392280))))

(declare-fun bm!285643 () Bool)

(assert (=> bm!285643 (= call!285648 (maxPrefixOneRule!2601 thiss!21717 (h!47850 rules!2999) lt!1392159))))

(declare-fun d!1176705 () Bool)

(assert (=> d!1176705 e!2461543))

(declare-fun res!1608785 () Bool)

(assert (=> d!1176705 (=> res!1608785 e!2461543)))

(declare-fun isEmpty!25382 (Option!9094) Bool)

(assert (=> d!1176705 (= res!1608785 (isEmpty!25382 lt!1392280))))

(assert (=> d!1176705 (= lt!1392280 e!2461542)))

(declare-fun c!688990 () Bool)

(assert (=> d!1176705 (= c!688990 (and ((_ is Cons!42430) rules!2999) ((_ is Nil!42430) (t!330969 rules!2999))))))

(declare-fun lt!1392278 () Unit!61079)

(declare-fun lt!1392281 () Unit!61079)

(assert (=> d!1176705 (= lt!1392278 lt!1392281)))

(assert (=> d!1176705 (isPrefix!3767 lt!1392159 lt!1392159)))

(assert (=> d!1176705 (= lt!1392281 (lemmaIsPrefixRefl!2359 lt!1392159 lt!1392159))))

(declare-fun rulesValidInductive!2423 (LexerInterface!6269 List!42554) Bool)

(assert (=> d!1176705 (rulesValidInductive!2423 thiss!21717 rules!2999)))

(assert (=> d!1176705 (= (maxPrefix!3567 thiss!21717 rules!2999 lt!1392159) lt!1392280)))

(assert (= (and d!1176705 c!688990) b!3973360))

(assert (= (and d!1176705 (not c!688990)) b!3973358))

(assert (= (or b!3973360 b!3973358) bm!285643))

(assert (= (and d!1176705 (not res!1608785)) b!3973361))

(assert (= (and b!3973361 res!1608786) b!3973355))

(assert (= (and b!3973355 res!1608790) b!3973356))

(assert (= (and b!3973356 res!1608787) b!3973354))

(assert (= (and b!3973354 res!1608789) b!3973353))

(assert (= (and b!3973353 res!1608791) b!3973357))

(assert (= (and b!3973357 res!1608788) b!3973359))

(declare-fun m!4543973 () Bool)

(assert (=> bm!285643 m!4543973))

(declare-fun m!4543975 () Bool)

(assert (=> b!3973358 m!4543975))

(declare-fun m!4543977 () Bool)

(assert (=> b!3973353 m!4543977))

(declare-fun m!4543979 () Bool)

(assert (=> b!3973353 m!4543979))

(assert (=> b!3973353 m!4543979))

(declare-fun m!4543981 () Bool)

(assert (=> b!3973353 m!4543981))

(assert (=> b!3973356 m!4543977))

(declare-fun m!4543985 () Bool)

(assert (=> b!3973356 m!4543985))

(assert (=> b!3973356 m!4543561))

(assert (=> b!3973354 m!4543977))

(declare-fun m!4543987 () Bool)

(assert (=> b!3973354 m!4543987))

(assert (=> b!3973354 m!4543987))

(declare-fun m!4543989 () Bool)

(assert (=> b!3973354 m!4543989))

(assert (=> b!3973354 m!4543989))

(declare-fun m!4543991 () Bool)

(assert (=> b!3973354 m!4543991))

(declare-fun m!4543993 () Bool)

(assert (=> d!1176705 m!4543993))

(assert (=> d!1176705 m!4543581))

(assert (=> d!1176705 m!4543583))

(declare-fun m!4543995 () Bool)

(assert (=> d!1176705 m!4543995))

(assert (=> b!3973357 m!4543977))

(assert (=> b!3973357 m!4543987))

(assert (=> b!3973357 m!4543987))

(assert (=> b!3973357 m!4543989))

(assert (=> b!3973357 m!4543989))

(declare-fun m!4543997 () Bool)

(assert (=> b!3973357 m!4543997))

(assert (=> b!3973355 m!4543977))

(assert (=> b!3973355 m!4543987))

(assert (=> b!3973355 m!4543987))

(assert (=> b!3973355 m!4543989))

(declare-fun m!4543999 () Bool)

(assert (=> b!3973361 m!4543999))

(assert (=> b!3973359 m!4543977))

(declare-fun m!4544001 () Bool)

(assert (=> b!3973359 m!4544001))

(assert (=> b!3972998 d!1176705))

(declare-fun b!3973370 () Bool)

(declare-fun res!1608795 () Bool)

(declare-fun e!2461549 () Bool)

(assert (=> b!3973370 (=> (not res!1608795) (not e!2461549))))

(declare-fun lt!1392288 () List!42552)

(assert (=> b!3973370 (= res!1608795 (= (size!31745 lt!1392288) (+ (size!31745 prefix!494) (size!31745 suffix!1299))))))

(declare-fun b!3973371 () Bool)

(assert (=> b!3973371 (= e!2461549 (or (not (= suffix!1299 Nil!42428)) (= lt!1392288 prefix!494)))))

(declare-fun b!3973368 () Bool)

(declare-fun e!2461548 () List!42552)

(assert (=> b!3973368 (= e!2461548 suffix!1299)))

(declare-fun d!1176741 () Bool)

(assert (=> d!1176741 e!2461549))

(declare-fun res!1608794 () Bool)

(assert (=> d!1176741 (=> (not res!1608794) (not e!2461549))))

(assert (=> d!1176741 (= res!1608794 (= (content!6439 lt!1392288) ((_ map or) (content!6439 prefix!494) (content!6439 suffix!1299))))))

(assert (=> d!1176741 (= lt!1392288 e!2461548)))

(declare-fun c!688993 () Bool)

(assert (=> d!1176741 (= c!688993 ((_ is Nil!42428) prefix!494))))

(assert (=> d!1176741 (= (++!11082 prefix!494 suffix!1299) lt!1392288)))

(declare-fun b!3973369 () Bool)

(assert (=> b!3973369 (= e!2461548 (Cons!42428 (h!47848 prefix!494) (++!11082 (t!330967 prefix!494) suffix!1299)))))

(assert (= (and d!1176741 c!688993) b!3973368))

(assert (= (and d!1176741 (not c!688993)) b!3973369))

(assert (= (and d!1176741 res!1608794) b!3973370))

(assert (= (and b!3973370 res!1608795) b!3973371))

(declare-fun m!4544007 () Bool)

(assert (=> b!3973370 m!4544007))

(assert (=> b!3973370 m!4543537))

(assert (=> b!3973370 m!4543563))

(declare-fun m!4544009 () Bool)

(assert (=> d!1176741 m!4544009))

(declare-fun m!4544011 () Bool)

(assert (=> d!1176741 m!4544011))

(declare-fun m!4544013 () Bool)

(assert (=> d!1176741 m!4544013))

(declare-fun m!4544015 () Bool)

(assert (=> b!3973369 m!4544015))

(assert (=> b!3972998 d!1176741))

(declare-fun b!3973380 () Bool)

(declare-fun e!2461553 () Bool)

(assert (=> b!3973380 (= e!2461553 (>= (size!31745 lt!1392158) (size!31745 lt!1392137)))))

(declare-fun d!1176745 () Bool)

(assert (=> d!1176745 e!2461553))

(declare-fun res!1608801 () Bool)

(assert (=> d!1176745 (=> res!1608801 e!2461553)))

(declare-fun lt!1392290 () Bool)

(assert (=> d!1176745 (= res!1608801 (not lt!1392290))))

(declare-fun e!2461554 () Bool)

(assert (=> d!1176745 (= lt!1392290 e!2461554)))

(declare-fun res!1608799 () Bool)

(assert (=> d!1176745 (=> res!1608799 e!2461554)))

(assert (=> d!1176745 (= res!1608799 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176745 (= (isPrefix!3767 lt!1392137 lt!1392158) lt!1392290)))

(declare-fun b!3973377 () Bool)

(declare-fun e!2461555 () Bool)

(assert (=> b!3973377 (= e!2461554 e!2461555)))

(declare-fun res!1608800 () Bool)

(assert (=> b!3973377 (=> (not res!1608800) (not e!2461555))))

(assert (=> b!3973377 (= res!1608800 (not ((_ is Nil!42428) lt!1392158)))))

(declare-fun b!3973378 () Bool)

(declare-fun res!1608802 () Bool)

(assert (=> b!3973378 (=> (not res!1608802) (not e!2461555))))

(assert (=> b!3973378 (= res!1608802 (= (head!8465 lt!1392137) (head!8465 lt!1392158)))))

(declare-fun b!3973379 () Bool)

(assert (=> b!3973379 (= e!2461555 (isPrefix!3767 (tail!6197 lt!1392137) (tail!6197 lt!1392158)))))

(assert (= (and d!1176745 (not res!1608799)) b!3973377))

(assert (= (and b!3973377 res!1608800) b!3973378))

(assert (= (and b!3973378 res!1608802) b!3973379))

(assert (= (and d!1176745 (not res!1608801)) b!3973380))

(declare-fun m!4544037 () Bool)

(assert (=> b!3973380 m!4544037))

(assert (=> b!3973380 m!4543535))

(assert (=> b!3973378 m!4543817))

(declare-fun m!4544039 () Bool)

(assert (=> b!3973378 m!4544039))

(assert (=> b!3973379 m!4543807))

(declare-fun m!4544041 () Bool)

(assert (=> b!3973379 m!4544041))

(assert (=> b!3973379 m!4543807))

(assert (=> b!3973379 m!4544041))

(declare-fun m!4544043 () Bool)

(assert (=> b!3973379 m!4544043))

(assert (=> b!3973009 d!1176745))

(declare-fun d!1176751 () Bool)

(declare-fun dynLambda!18080 (Int BalanceConc!25376) TokenValue!6910)

(assert (=> d!1176751 (= (apply!9891 (transformation!6680 (rule!9672 token!484)) (seqFromList!4919 lt!1392137)) (dynLambda!18080 (toValue!9168 (transformation!6680 (rule!9672 token!484))) (seqFromList!4919 lt!1392137)))))

(declare-fun b_lambda!116119 () Bool)

(assert (=> (not b_lambda!116119) (not d!1176751)))

(declare-fun t!330983 () Bool)

(declare-fun tb!239689 () Bool)

(assert (=> (and b!3973006 (= (toValue!9168 (transformation!6680 (rule!9672 token!484))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))) t!330983) tb!239689))

(declare-fun result!290276 () Bool)

(assert (=> tb!239689 (= result!290276 (inv!21 (dynLambda!18080 (toValue!9168 (transformation!6680 (rule!9672 token!484))) (seqFromList!4919 lt!1392137))))))

(declare-fun m!4544057 () Bool)

(assert (=> tb!239689 m!4544057))

(assert (=> d!1176751 t!330983))

(declare-fun b_and!305447 () Bool)

(assert (= b_and!305423 (and (=> t!330983 result!290276) b_and!305447)))

(declare-fun tb!239691 () Bool)

(declare-fun t!330985 () Bool)

(assert (=> (and b!3972985 (= (toValue!9168 (transformation!6680 (h!47850 rules!2999))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))) t!330985) tb!239691))

(declare-fun result!290282 () Bool)

(assert (= result!290282 result!290276))

(assert (=> d!1176751 t!330985))

(declare-fun b_and!305449 () Bool)

(assert (= b_and!305427 (and (=> t!330985 result!290282) b_and!305449)))

(assert (=> d!1176751 m!4543599))

(declare-fun m!4544059 () Bool)

(assert (=> d!1176751 m!4544059))

(assert (=> b!3973009 d!1176751))

(declare-fun d!1176755 () Bool)

(assert (=> d!1176755 (= (maxPrefixOneRule!2601 thiss!21717 (rule!9672 token!484) lt!1392159) (Some!9093 (tuple2!41681 (Token!12499 (apply!9891 (transformation!6680 (rule!9672 token!484)) (seqFromList!4919 lt!1392137)) (rule!9672 token!484) (size!31745 lt!1392137) lt!1392137) suffixResult!105)))))

(declare-fun lt!1392298 () Unit!61079)

(declare-fun choose!23782 (LexerInterface!6269 List!42554 List!42552 List!42552 List!42552 Rule!13160) Unit!61079)

(assert (=> d!1176755 (= lt!1392298 (choose!23782 thiss!21717 rules!2999 lt!1392137 lt!1392159 suffixResult!105 (rule!9672 token!484)))))

(assert (=> d!1176755 (not (isEmpty!25378 rules!2999))))

(assert (=> d!1176755 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1423 thiss!21717 rules!2999 lt!1392137 lt!1392159 suffixResult!105 (rule!9672 token!484)) lt!1392298)))

(declare-fun bs!587681 () Bool)

(assert (= bs!587681 d!1176755))

(assert (=> bs!587681 m!4543599))

(assert (=> bs!587681 m!4543609))

(declare-fun m!4544065 () Bool)

(assert (=> bs!587681 m!4544065))

(assert (=> bs!587681 m!4543585))

(assert (=> bs!587681 m!4543535))

(assert (=> bs!587681 m!4543603))

(assert (=> bs!587681 m!4543599))

(assert (=> b!3973009 d!1176755))

(declare-fun d!1176757 () Bool)

(assert (=> d!1176757 (= lt!1392163 suffixResult!105)))

(declare-fun lt!1392301 () Unit!61079)

(declare-fun choose!23783 (List!42552 List!42552 List!42552 List!42552 List!42552) Unit!61079)

(assert (=> d!1176757 (= lt!1392301 (choose!23783 lt!1392137 lt!1392163 lt!1392137 suffixResult!105 lt!1392159))))

(assert (=> d!1176757 (isPrefix!3767 lt!1392137 lt!1392159)))

(assert (=> d!1176757 (= (lemmaSamePrefixThenSameSuffix!1954 lt!1392137 lt!1392163 lt!1392137 suffixResult!105 lt!1392159) lt!1392301)))

(declare-fun bs!587682 () Bool)

(assert (= bs!587682 d!1176757))

(declare-fun m!4544067 () Bool)

(assert (=> bs!587682 m!4544067))

(assert (=> bs!587682 m!4543623))

(assert (=> b!3973009 d!1176757))

(declare-fun d!1176759 () Bool)

(declare-fun fromListB!2266 (List!42552) BalanceConc!25376)

(assert (=> d!1176759 (= (seqFromList!4919 lt!1392137) (fromListB!2266 lt!1392137))))

(declare-fun bs!587683 () Bool)

(assert (= bs!587683 d!1176759))

(declare-fun m!4544069 () Bool)

(assert (=> bs!587683 m!4544069))

(assert (=> b!3973009 d!1176759))

(declare-fun b!3973448 () Bool)

(declare-fun res!1608823 () Bool)

(declare-fun e!2461595 () Bool)

(assert (=> b!3973448 (=> (not res!1608823) (not e!2461595))))

(declare-fun lt!1392313 () Option!9094)

(assert (=> b!3973448 (= res!1608823 (= (value!211014 (_1!23974 (get!13980 lt!1392313))) (apply!9891 (transformation!6680 (rule!9672 (_1!23974 (get!13980 lt!1392313)))) (seqFromList!4919 (originalCharacters!7280 (_1!23974 (get!13980 lt!1392313)))))))))

(declare-fun b!3973449 () Bool)

(declare-fun e!2461596 () Option!9094)

(assert (=> b!3973449 (= e!2461596 None!9093)))

(declare-fun b!3973450 () Bool)

(declare-datatypes ((tuple2!41684 0))(
  ( (tuple2!41685 (_1!23976 List!42552) (_2!23976 List!42552)) )
))
(declare-fun lt!1392315 () tuple2!41684)

(declare-fun size!31747 (BalanceConc!25376) Int)

(assert (=> b!3973450 (= e!2461596 (Some!9093 (tuple2!41681 (Token!12499 (apply!9891 (transformation!6680 (rule!9672 token!484)) (seqFromList!4919 (_1!23976 lt!1392315))) (rule!9672 token!484) (size!31747 (seqFromList!4919 (_1!23976 lt!1392315))) (_1!23976 lt!1392315)) (_2!23976 lt!1392315))))))

(declare-fun lt!1392312 () Unit!61079)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1281 (Regex!11585 List!42552) Unit!61079)

(assert (=> b!3973450 (= lt!1392312 (longestMatchIsAcceptedByMatchOrIsEmpty!1281 (regex!6680 (rule!9672 token!484)) lt!1392159))))

(declare-fun res!1608825 () Bool)

(declare-fun findLongestMatchInner!1308 (Regex!11585 List!42552 Int List!42552 List!42552 Int) tuple2!41684)

(assert (=> b!3973450 (= res!1608825 (isEmpty!25380 (_1!23976 (findLongestMatchInner!1308 (regex!6680 (rule!9672 token!484)) Nil!42428 (size!31745 Nil!42428) lt!1392159 lt!1392159 (size!31745 lt!1392159)))))))

(declare-fun e!2461597 () Bool)

(assert (=> b!3973450 (=> res!1608825 e!2461597)))

(assert (=> b!3973450 e!2461597))

(declare-fun lt!1392316 () Unit!61079)

(assert (=> b!3973450 (= lt!1392316 lt!1392312)))

(declare-fun lt!1392314 () Unit!61079)

(declare-fun lemmaSemiInverse!1818 (TokenValueInjection!13248 BalanceConc!25376) Unit!61079)

(assert (=> b!3973450 (= lt!1392314 (lemmaSemiInverse!1818 (transformation!6680 (rule!9672 token!484)) (seqFromList!4919 (_1!23976 lt!1392315))))))

(declare-fun d!1176761 () Bool)

(declare-fun e!2461598 () Bool)

(assert (=> d!1176761 e!2461598))

(declare-fun res!1608821 () Bool)

(assert (=> d!1176761 (=> res!1608821 e!2461598)))

(assert (=> d!1176761 (= res!1608821 (isEmpty!25382 lt!1392313))))

(assert (=> d!1176761 (= lt!1392313 e!2461596)))

(declare-fun c!688999 () Bool)

(assert (=> d!1176761 (= c!688999 (isEmpty!25380 (_1!23976 lt!1392315)))))

(declare-fun findLongestMatch!1221 (Regex!11585 List!42552) tuple2!41684)

(assert (=> d!1176761 (= lt!1392315 (findLongestMatch!1221 (regex!6680 (rule!9672 token!484)) lt!1392159))))

(assert (=> d!1176761 (ruleValid!2612 thiss!21717 (rule!9672 token!484))))

(assert (=> d!1176761 (= (maxPrefixOneRule!2601 thiss!21717 (rule!9672 token!484) lt!1392159) lt!1392313)))

(declare-fun b!3973451 () Bool)

(assert (=> b!3973451 (= e!2461595 (= (size!31744 (_1!23974 (get!13980 lt!1392313))) (size!31745 (originalCharacters!7280 (_1!23974 (get!13980 lt!1392313))))))))

(declare-fun b!3973452 () Bool)

(declare-fun res!1608826 () Bool)

(assert (=> b!3973452 (=> (not res!1608826) (not e!2461595))))

(assert (=> b!3973452 (= res!1608826 (= (++!11082 (list!15744 (charsOf!4496 (_1!23974 (get!13980 lt!1392313)))) (_2!23974 (get!13980 lt!1392313))) lt!1392159))))

(declare-fun b!3973453 () Bool)

(declare-fun res!1608827 () Bool)

(assert (=> b!3973453 (=> (not res!1608827) (not e!2461595))))

(assert (=> b!3973453 (= res!1608827 (= (rule!9672 (_1!23974 (get!13980 lt!1392313))) (rule!9672 token!484)))))

(declare-fun b!3973454 () Bool)

(declare-fun res!1608822 () Bool)

(assert (=> b!3973454 (=> (not res!1608822) (not e!2461595))))

(assert (=> b!3973454 (= res!1608822 (< (size!31745 (_2!23974 (get!13980 lt!1392313))) (size!31745 lt!1392159)))))

(declare-fun b!3973455 () Bool)

(assert (=> b!3973455 (= e!2461597 (matchR!5562 (regex!6680 (rule!9672 token!484)) (_1!23976 (findLongestMatchInner!1308 (regex!6680 (rule!9672 token!484)) Nil!42428 (size!31745 Nil!42428) lt!1392159 lt!1392159 (size!31745 lt!1392159)))))))

(declare-fun b!3973456 () Bool)

(assert (=> b!3973456 (= e!2461598 e!2461595)))

(declare-fun res!1608824 () Bool)

(assert (=> b!3973456 (=> (not res!1608824) (not e!2461595))))

(assert (=> b!3973456 (= res!1608824 (matchR!5562 (regex!6680 (rule!9672 token!484)) (list!15744 (charsOf!4496 (_1!23974 (get!13980 lt!1392313))))))))

(assert (= (and d!1176761 c!688999) b!3973449))

(assert (= (and d!1176761 (not c!688999)) b!3973450))

(assert (= (and b!3973450 (not res!1608825)) b!3973455))

(assert (= (and d!1176761 (not res!1608821)) b!3973456))

(assert (= (and b!3973456 res!1608824) b!3973452))

(assert (= (and b!3973452 res!1608826) b!3973454))

(assert (= (and b!3973454 res!1608822) b!3973453))

(assert (= (and b!3973453 res!1608827) b!3973448))

(assert (= (and b!3973448 res!1608823) b!3973451))

(declare-fun m!4544071 () Bool)

(assert (=> b!3973456 m!4544071))

(declare-fun m!4544073 () Bool)

(assert (=> b!3973456 m!4544073))

(assert (=> b!3973456 m!4544073))

(declare-fun m!4544075 () Bool)

(assert (=> b!3973456 m!4544075))

(assert (=> b!3973456 m!4544075))

(declare-fun m!4544077 () Bool)

(assert (=> b!3973456 m!4544077))

(assert (=> b!3973448 m!4544071))

(declare-fun m!4544079 () Bool)

(assert (=> b!3973448 m!4544079))

(assert (=> b!3973448 m!4544079))

(declare-fun m!4544081 () Bool)

(assert (=> b!3973448 m!4544081))

(declare-fun m!4544083 () Bool)

(assert (=> b!3973455 m!4544083))

(assert (=> b!3973455 m!4543561))

(assert (=> b!3973455 m!4544083))

(assert (=> b!3973455 m!4543561))

(declare-fun m!4544085 () Bool)

(assert (=> b!3973455 m!4544085))

(declare-fun m!4544087 () Bool)

(assert (=> b!3973455 m!4544087))

(declare-fun m!4544089 () Bool)

(assert (=> d!1176761 m!4544089))

(declare-fun m!4544091 () Bool)

(assert (=> d!1176761 m!4544091))

(declare-fun m!4544093 () Bool)

(assert (=> d!1176761 m!4544093))

(assert (=> d!1176761 m!4543591))

(assert (=> b!3973453 m!4544071))

(declare-fun m!4544095 () Bool)

(assert (=> b!3973450 m!4544095))

(declare-fun m!4544097 () Bool)

(assert (=> b!3973450 m!4544097))

(declare-fun m!4544099 () Bool)

(assert (=> b!3973450 m!4544099))

(declare-fun m!4544101 () Bool)

(assert (=> b!3973450 m!4544101))

(assert (=> b!3973450 m!4544099))

(declare-fun m!4544103 () Bool)

(assert (=> b!3973450 m!4544103))

(assert (=> b!3973450 m!4544099))

(assert (=> b!3973450 m!4544083))

(assert (=> b!3973450 m!4543561))

(assert (=> b!3973450 m!4544085))

(assert (=> b!3973450 m!4544083))

(assert (=> b!3973450 m!4543561))

(assert (=> b!3973450 m!4544099))

(declare-fun m!4544105 () Bool)

(assert (=> b!3973450 m!4544105))

(assert (=> b!3973452 m!4544071))

(assert (=> b!3973452 m!4544073))

(assert (=> b!3973452 m!4544073))

(assert (=> b!3973452 m!4544075))

(assert (=> b!3973452 m!4544075))

(declare-fun m!4544107 () Bool)

(assert (=> b!3973452 m!4544107))

(assert (=> b!3973451 m!4544071))

(declare-fun m!4544109 () Bool)

(assert (=> b!3973451 m!4544109))

(assert (=> b!3973454 m!4544071))

(declare-fun m!4544111 () Bool)

(assert (=> b!3973454 m!4544111))

(assert (=> b!3973454 m!4543561))

(assert (=> b!3973009 d!1176761))

(declare-fun d!1176763 () Bool)

(assert (=> d!1176763 (isPrefix!3767 lt!1392137 (++!11082 lt!1392137 lt!1392163))))

(declare-fun lt!1392319 () Unit!61079)

(declare-fun choose!23784 (List!42552 List!42552) Unit!61079)

(assert (=> d!1176763 (= lt!1392319 (choose!23784 lt!1392137 lt!1392163))))

(assert (=> d!1176763 (= (lemmaConcatTwoListThenFirstIsPrefix!2610 lt!1392137 lt!1392163) lt!1392319)))

(declare-fun bs!587684 () Bool)

(assert (= bs!587684 d!1176763))

(assert (=> bs!587684 m!4543527))

(assert (=> bs!587684 m!4543527))

(declare-fun m!4544113 () Bool)

(assert (=> bs!587684 m!4544113))

(declare-fun m!4544115 () Bool)

(assert (=> bs!587684 m!4544115))

(assert (=> b!3973009 d!1176763))

(declare-fun b!3973459 () Bool)

(declare-fun res!1608829 () Bool)

(declare-fun e!2461600 () Bool)

(assert (=> b!3973459 (=> (not res!1608829) (not e!2461600))))

(declare-fun lt!1392320 () List!42552)

(assert (=> b!3973459 (= res!1608829 (= (size!31745 lt!1392320) (+ (size!31745 lt!1392137) (size!31745 lt!1392163))))))

(declare-fun b!3973460 () Bool)

(assert (=> b!3973460 (= e!2461600 (or (not (= lt!1392163 Nil!42428)) (= lt!1392320 lt!1392137)))))

(declare-fun b!3973457 () Bool)

(declare-fun e!2461599 () List!42552)

(assert (=> b!3973457 (= e!2461599 lt!1392163)))

(declare-fun d!1176765 () Bool)

(assert (=> d!1176765 e!2461600))

(declare-fun res!1608828 () Bool)

(assert (=> d!1176765 (=> (not res!1608828) (not e!2461600))))

(assert (=> d!1176765 (= res!1608828 (= (content!6439 lt!1392320) ((_ map or) (content!6439 lt!1392137) (content!6439 lt!1392163))))))

(assert (=> d!1176765 (= lt!1392320 e!2461599)))

(declare-fun c!689000 () Bool)

(assert (=> d!1176765 (= c!689000 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176765 (= (++!11082 lt!1392137 lt!1392163) lt!1392320)))

(declare-fun b!3973458 () Bool)

(assert (=> b!3973458 (= e!2461599 (Cons!42428 (h!47848 lt!1392137) (++!11082 (t!330967 lt!1392137) lt!1392163)))))

(assert (= (and d!1176765 c!689000) b!3973457))

(assert (= (and d!1176765 (not c!689000)) b!3973458))

(assert (= (and d!1176765 res!1608828) b!3973459))

(assert (= (and b!3973459 res!1608829) b!3973460))

(declare-fun m!4544117 () Bool)

(assert (=> b!3973459 m!4544117))

(assert (=> b!3973459 m!4543535))

(declare-fun m!4544119 () Bool)

(assert (=> b!3973459 m!4544119))

(declare-fun m!4544121 () Bool)

(assert (=> d!1176765 m!4544121))

(assert (=> d!1176765 m!4543669))

(declare-fun m!4544123 () Bool)

(assert (=> d!1176765 m!4544123))

(declare-fun m!4544125 () Bool)

(assert (=> b!3973458 m!4544125))

(assert (=> b!3973000 d!1176765))

(declare-fun b!3973463 () Bool)

(declare-fun res!1608831 () Bool)

(declare-fun e!2461602 () Bool)

(assert (=> b!3973463 (=> (not res!1608831) (not e!2461602))))

(declare-fun lt!1392321 () List!42552)

(assert (=> b!3973463 (= res!1608831 (= (size!31745 lt!1392321) (+ (size!31745 lt!1392139) (size!31745 suffix!1299))))))

(declare-fun b!3973464 () Bool)

(assert (=> b!3973464 (= e!2461602 (or (not (= suffix!1299 Nil!42428)) (= lt!1392321 lt!1392139)))))

(declare-fun b!3973461 () Bool)

(declare-fun e!2461601 () List!42552)

(assert (=> b!3973461 (= e!2461601 suffix!1299)))

(declare-fun d!1176767 () Bool)

(assert (=> d!1176767 e!2461602))

(declare-fun res!1608830 () Bool)

(assert (=> d!1176767 (=> (not res!1608830) (not e!2461602))))

(assert (=> d!1176767 (= res!1608830 (= (content!6439 lt!1392321) ((_ map or) (content!6439 lt!1392139) (content!6439 suffix!1299))))))

(assert (=> d!1176767 (= lt!1392321 e!2461601)))

(declare-fun c!689001 () Bool)

(assert (=> d!1176767 (= c!689001 ((_ is Nil!42428) lt!1392139))))

(assert (=> d!1176767 (= (++!11082 lt!1392139 suffix!1299) lt!1392321)))

(declare-fun b!3973462 () Bool)

(assert (=> b!3973462 (= e!2461601 (Cons!42428 (h!47848 lt!1392139) (++!11082 (t!330967 lt!1392139) suffix!1299)))))

(assert (= (and d!1176767 c!689001) b!3973461))

(assert (= (and d!1176767 (not c!689001)) b!3973462))

(assert (= (and d!1176767 res!1608830) b!3973463))

(assert (= (and b!3973463 res!1608831) b!3973464))

(declare-fun m!4544127 () Bool)

(assert (=> b!3973463 m!4544127))

(declare-fun m!4544129 () Bool)

(assert (=> b!3973463 m!4544129))

(assert (=> b!3973463 m!4543563))

(declare-fun m!4544131 () Bool)

(assert (=> d!1176767 m!4544131))

(declare-fun m!4544133 () Bool)

(assert (=> d!1176767 m!4544133))

(assert (=> d!1176767 m!4544013))

(declare-fun m!4544135 () Bool)

(assert (=> b!3973462 m!4544135))

(assert (=> b!3973000 d!1176767))

(declare-fun b!3973467 () Bool)

(declare-fun res!1608833 () Bool)

(declare-fun e!2461604 () Bool)

(assert (=> b!3973467 (=> (not res!1608833) (not e!2461604))))

(declare-fun lt!1392322 () List!42552)

(assert (=> b!3973467 (= res!1608833 (= (size!31745 lt!1392322) (+ (size!31745 lt!1392145) (size!31745 suffix!1299))))))

(declare-fun b!3973468 () Bool)

(assert (=> b!3973468 (= e!2461604 (or (not (= suffix!1299 Nil!42428)) (= lt!1392322 lt!1392145)))))

(declare-fun b!3973465 () Bool)

(declare-fun e!2461603 () List!42552)

(assert (=> b!3973465 (= e!2461603 suffix!1299)))

(declare-fun d!1176769 () Bool)

(assert (=> d!1176769 e!2461604))

(declare-fun res!1608832 () Bool)

(assert (=> d!1176769 (=> (not res!1608832) (not e!2461604))))

(assert (=> d!1176769 (= res!1608832 (= (content!6439 lt!1392322) ((_ map or) (content!6439 lt!1392145) (content!6439 suffix!1299))))))

(assert (=> d!1176769 (= lt!1392322 e!2461603)))

(declare-fun c!689002 () Bool)

(assert (=> d!1176769 (= c!689002 ((_ is Nil!42428) lt!1392145))))

(assert (=> d!1176769 (= (++!11082 lt!1392145 suffix!1299) lt!1392322)))

(declare-fun b!3973466 () Bool)

(assert (=> b!3973466 (= e!2461603 (Cons!42428 (h!47848 lt!1392145) (++!11082 (t!330967 lt!1392145) suffix!1299)))))

(assert (= (and d!1176769 c!689002) b!3973465))

(assert (= (and d!1176769 (not c!689002)) b!3973466))

(assert (= (and d!1176769 res!1608832) b!3973467))

(assert (= (and b!3973467 res!1608833) b!3973468))

(declare-fun m!4544137 () Bool)

(assert (=> b!3973467 m!4544137))

(declare-fun m!4544139 () Bool)

(assert (=> b!3973467 m!4544139))

(assert (=> b!3973467 m!4543563))

(declare-fun m!4544141 () Bool)

(assert (=> d!1176769 m!4544141))

(declare-fun m!4544143 () Bool)

(assert (=> d!1176769 m!4544143))

(assert (=> d!1176769 m!4544013))

(declare-fun m!4544145 () Bool)

(assert (=> b!3973466 m!4544145))

(assert (=> b!3973000 d!1176769))

(declare-fun d!1176771 () Bool)

(assert (=> d!1176771 (= (++!11082 (++!11082 lt!1392137 lt!1392145) suffix!1299) (++!11082 lt!1392137 (++!11082 lt!1392145 suffix!1299)))))

(declare-fun lt!1392325 () Unit!61079)

(declare-fun choose!23786 (List!42552 List!42552 List!42552) Unit!61079)

(assert (=> d!1176771 (= lt!1392325 (choose!23786 lt!1392137 lt!1392145 suffix!1299))))

(assert (=> d!1176771 (= (lemmaConcatAssociativity!2402 lt!1392137 lt!1392145 suffix!1299) lt!1392325)))

(declare-fun bs!587685 () Bool)

(assert (= bs!587685 d!1176771))

(declare-fun m!4544147 () Bool)

(assert (=> bs!587685 m!4544147))

(assert (=> bs!587685 m!4543553))

(assert (=> bs!587685 m!4543531))

(assert (=> bs!587685 m!4543553))

(declare-fun m!4544149 () Bool)

(assert (=> bs!587685 m!4544149))

(assert (=> bs!587685 m!4543531))

(declare-fun m!4544151 () Bool)

(assert (=> bs!587685 m!4544151))

(assert (=> b!3973000 d!1176771))

(declare-fun d!1176773 () Bool)

(assert (=> d!1176773 (= (isEmpty!25378 rules!2999) ((_ is Nil!42430) rules!2999))))

(assert (=> b!3973010 d!1176773))

(declare-fun b!3973472 () Bool)

(declare-fun e!2461605 () Bool)

(assert (=> b!3973472 (= e!2461605 (>= (size!31745 suffix!1299) (size!31745 newSuffix!27)))))

(declare-fun d!1176775 () Bool)

(assert (=> d!1176775 e!2461605))

(declare-fun res!1608836 () Bool)

(assert (=> d!1176775 (=> res!1608836 e!2461605)))

(declare-fun lt!1392326 () Bool)

(assert (=> d!1176775 (= res!1608836 (not lt!1392326))))

(declare-fun e!2461606 () Bool)

(assert (=> d!1176775 (= lt!1392326 e!2461606)))

(declare-fun res!1608834 () Bool)

(assert (=> d!1176775 (=> res!1608834 e!2461606)))

(assert (=> d!1176775 (= res!1608834 ((_ is Nil!42428) newSuffix!27))))

(assert (=> d!1176775 (= (isPrefix!3767 newSuffix!27 suffix!1299) lt!1392326)))

(declare-fun b!3973469 () Bool)

(declare-fun e!2461607 () Bool)

(assert (=> b!3973469 (= e!2461606 e!2461607)))

(declare-fun res!1608835 () Bool)

(assert (=> b!3973469 (=> (not res!1608835) (not e!2461607))))

(assert (=> b!3973469 (= res!1608835 (not ((_ is Nil!42428) suffix!1299)))))

(declare-fun b!3973470 () Bool)

(declare-fun res!1608837 () Bool)

(assert (=> b!3973470 (=> (not res!1608837) (not e!2461607))))

(assert (=> b!3973470 (= res!1608837 (= (head!8465 newSuffix!27) (head!8465 suffix!1299)))))

(declare-fun b!3973471 () Bool)

(assert (=> b!3973471 (= e!2461607 (isPrefix!3767 (tail!6197 newSuffix!27) (tail!6197 suffix!1299)))))

(assert (= (and d!1176775 (not res!1608834)) b!3973469))

(assert (= (and b!3973469 res!1608835) b!3973470))

(assert (= (and b!3973470 res!1608837) b!3973471))

(assert (= (and d!1176775 (not res!1608836)) b!3973472))

(assert (=> b!3973472 m!4543563))

(assert (=> b!3973472 m!4543565))

(declare-fun m!4544153 () Bool)

(assert (=> b!3973470 m!4544153))

(declare-fun m!4544155 () Bool)

(assert (=> b!3973470 m!4544155))

(declare-fun m!4544157 () Bool)

(assert (=> b!3973471 m!4544157))

(declare-fun m!4544159 () Bool)

(assert (=> b!3973471 m!4544159))

(assert (=> b!3973471 m!4544157))

(assert (=> b!3973471 m!4544159))

(declare-fun m!4544161 () Bool)

(assert (=> b!3973471 m!4544161))

(assert (=> b!3972989 d!1176775))

(declare-fun b!3973475 () Bool)

(declare-fun res!1608839 () Bool)

(declare-fun e!2461609 () Bool)

(assert (=> b!3973475 (=> (not res!1608839) (not e!2461609))))

(declare-fun lt!1392327 () List!42552)

(assert (=> b!3973475 (= res!1608839 (= (size!31745 lt!1392327) (+ (size!31745 prefix!494) (size!31745 newSuffix!27))))))

(declare-fun b!3973476 () Bool)

(assert (=> b!3973476 (= e!2461609 (or (not (= newSuffix!27 Nil!42428)) (= lt!1392327 prefix!494)))))

(declare-fun b!3973473 () Bool)

(declare-fun e!2461608 () List!42552)

(assert (=> b!3973473 (= e!2461608 newSuffix!27)))

(declare-fun d!1176777 () Bool)

(assert (=> d!1176777 e!2461609))

(declare-fun res!1608838 () Bool)

(assert (=> d!1176777 (=> (not res!1608838) (not e!2461609))))

(assert (=> d!1176777 (= res!1608838 (= (content!6439 lt!1392327) ((_ map or) (content!6439 prefix!494) (content!6439 newSuffix!27))))))

(assert (=> d!1176777 (= lt!1392327 e!2461608)))

(declare-fun c!689003 () Bool)

(assert (=> d!1176777 (= c!689003 ((_ is Nil!42428) prefix!494))))

(assert (=> d!1176777 (= (++!11082 prefix!494 newSuffix!27) lt!1392327)))

(declare-fun b!3973474 () Bool)

(assert (=> b!3973474 (= e!2461608 (Cons!42428 (h!47848 prefix!494) (++!11082 (t!330967 prefix!494) newSuffix!27)))))

(assert (= (and d!1176777 c!689003) b!3973473))

(assert (= (and d!1176777 (not c!689003)) b!3973474))

(assert (= (and d!1176777 res!1608838) b!3973475))

(assert (= (and b!3973475 res!1608839) b!3973476))

(declare-fun m!4544163 () Bool)

(assert (=> b!3973475 m!4544163))

(assert (=> b!3973475 m!4543537))

(assert (=> b!3973475 m!4543565))

(declare-fun m!4544165 () Bool)

(assert (=> d!1176777 m!4544165))

(assert (=> d!1176777 m!4544011))

(declare-fun m!4544167 () Bool)

(assert (=> d!1176777 m!4544167))

(declare-fun m!4544169 () Bool)

(assert (=> b!3973474 m!4544169))

(assert (=> b!3972991 d!1176777))

(declare-fun b!3973479 () Bool)

(declare-fun res!1608841 () Bool)

(declare-fun e!2461611 () Bool)

(assert (=> b!3973479 (=> (not res!1608841) (not e!2461611))))

(declare-fun lt!1392328 () List!42552)

(assert (=> b!3973479 (= res!1608841 (= (size!31745 lt!1392328) (+ (size!31745 lt!1392137) (size!31745 newSuffixResult!27))))))

(declare-fun b!3973480 () Bool)

(assert (=> b!3973480 (= e!2461611 (or (not (= newSuffixResult!27 Nil!42428)) (= lt!1392328 lt!1392137)))))

(declare-fun b!3973477 () Bool)

(declare-fun e!2461610 () List!42552)

(assert (=> b!3973477 (= e!2461610 newSuffixResult!27)))

(declare-fun d!1176779 () Bool)

(assert (=> d!1176779 e!2461611))

(declare-fun res!1608840 () Bool)

(assert (=> d!1176779 (=> (not res!1608840) (not e!2461611))))

(assert (=> d!1176779 (= res!1608840 (= (content!6439 lt!1392328) ((_ map or) (content!6439 lt!1392137) (content!6439 newSuffixResult!27))))))

(assert (=> d!1176779 (= lt!1392328 e!2461610)))

(declare-fun c!689004 () Bool)

(assert (=> d!1176779 (= c!689004 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176779 (= (++!11082 lt!1392137 newSuffixResult!27) lt!1392328)))

(declare-fun b!3973478 () Bool)

(assert (=> b!3973478 (= e!2461610 (Cons!42428 (h!47848 lt!1392137) (++!11082 (t!330967 lt!1392137) newSuffixResult!27)))))

(assert (= (and d!1176779 c!689004) b!3973477))

(assert (= (and d!1176779 (not c!689004)) b!3973478))

(assert (= (and d!1176779 res!1608840) b!3973479))

(assert (= (and b!3973479 res!1608841) b!3973480))

(declare-fun m!4544171 () Bool)

(assert (=> b!3973479 m!4544171))

(assert (=> b!3973479 m!4543535))

(declare-fun m!4544173 () Bool)

(assert (=> b!3973479 m!4544173))

(declare-fun m!4544175 () Bool)

(assert (=> d!1176779 m!4544175))

(assert (=> d!1176779 m!4543669))

(declare-fun m!4544177 () Bool)

(assert (=> d!1176779 m!4544177))

(declare-fun m!4544179 () Bool)

(assert (=> b!3973478 m!4544179))

(assert (=> b!3972991 d!1176779))

(declare-fun d!1176781 () Bool)

(declare-fun lt!1392329 () Int)

(assert (=> d!1176781 (>= lt!1392329 0)))

(declare-fun e!2461612 () Int)

(assert (=> d!1176781 (= lt!1392329 e!2461612)))

(declare-fun c!689005 () Bool)

(assert (=> d!1176781 (= c!689005 ((_ is Nil!42428) (originalCharacters!7280 token!484)))))

(assert (=> d!1176781 (= (size!31745 (originalCharacters!7280 token!484)) lt!1392329)))

(declare-fun b!3973481 () Bool)

(assert (=> b!3973481 (= e!2461612 0)))

(declare-fun b!3973482 () Bool)

(assert (=> b!3973482 (= e!2461612 (+ 1 (size!31745 (t!330967 (originalCharacters!7280 token!484)))))))

(assert (= (and d!1176781 c!689005) b!3973481))

(assert (= (and d!1176781 (not c!689005)) b!3973482))

(declare-fun m!4544181 () Bool)

(assert (=> b!3973482 m!4544181))

(assert (=> b!3972990 d!1176781))

(declare-fun d!1176783 () Bool)

(declare-fun c!689010 () Bool)

(assert (=> d!1176783 (= c!689010 ((_ is IntegerValue!20730) (value!211014 token!484)))))

(declare-fun e!2461619 () Bool)

(assert (=> d!1176783 (= (inv!21 (value!211014 token!484)) e!2461619)))

(declare-fun b!3973493 () Bool)

(declare-fun e!2461621 () Bool)

(declare-fun inv!15 (TokenValue!6910) Bool)

(assert (=> b!3973493 (= e!2461621 (inv!15 (value!211014 token!484)))))

(declare-fun b!3973494 () Bool)

(declare-fun e!2461620 () Bool)

(declare-fun inv!17 (TokenValue!6910) Bool)

(assert (=> b!3973494 (= e!2461620 (inv!17 (value!211014 token!484)))))

(declare-fun b!3973495 () Bool)

(declare-fun res!1608844 () Bool)

(assert (=> b!3973495 (=> res!1608844 e!2461621)))

(assert (=> b!3973495 (= res!1608844 (not ((_ is IntegerValue!20732) (value!211014 token!484))))))

(assert (=> b!3973495 (= e!2461620 e!2461621)))

(declare-fun b!3973496 () Bool)

(assert (=> b!3973496 (= e!2461619 e!2461620)))

(declare-fun c!689011 () Bool)

(assert (=> b!3973496 (= c!689011 ((_ is IntegerValue!20731) (value!211014 token!484)))))

(declare-fun b!3973497 () Bool)

(declare-fun inv!16 (TokenValue!6910) Bool)

(assert (=> b!3973497 (= e!2461619 (inv!16 (value!211014 token!484)))))

(assert (= (and d!1176783 c!689010) b!3973497))

(assert (= (and d!1176783 (not c!689010)) b!3973496))

(assert (= (and b!3973496 c!689011) b!3973494))

(assert (= (and b!3973496 (not c!689011)) b!3973495))

(assert (= (and b!3973495 (not res!1608844)) b!3973493))

(declare-fun m!4544183 () Bool)

(assert (=> b!3973493 m!4544183))

(declare-fun m!4544185 () Bool)

(assert (=> b!3973494 m!4544185))

(declare-fun m!4544187 () Bool)

(assert (=> b!3973497 m!4544187))

(assert (=> b!3973001 d!1176783))

(declare-fun d!1176785 () Bool)

(declare-fun lt!1392330 () Int)

(assert (=> d!1176785 (>= lt!1392330 0)))

(declare-fun e!2461622 () Int)

(assert (=> d!1176785 (= lt!1392330 e!2461622)))

(declare-fun c!689012 () Bool)

(assert (=> d!1176785 (= c!689012 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176785 (= (size!31745 lt!1392137) lt!1392330)))

(declare-fun b!3973498 () Bool)

(assert (=> b!3973498 (= e!2461622 0)))

(declare-fun b!3973499 () Bool)

(assert (=> b!3973499 (= e!2461622 (+ 1 (size!31745 (t!330967 lt!1392137))))))

(assert (= (and d!1176785 c!689012) b!3973498))

(assert (= (and d!1176785 (not c!689012)) b!3973499))

(declare-fun m!4544189 () Bool)

(assert (=> b!3973499 m!4544189))

(assert (=> b!3973003 d!1176785))

(declare-fun d!1176787 () Bool)

(declare-fun lt!1392331 () Int)

(assert (=> d!1176787 (>= lt!1392331 0)))

(declare-fun e!2461623 () Int)

(assert (=> d!1176787 (= lt!1392331 e!2461623)))

(declare-fun c!689013 () Bool)

(assert (=> d!1176787 (= c!689013 ((_ is Nil!42428) prefix!494))))

(assert (=> d!1176787 (= (size!31745 prefix!494) lt!1392331)))

(declare-fun b!3973500 () Bool)

(assert (=> b!3973500 (= e!2461623 0)))

(declare-fun b!3973501 () Bool)

(assert (=> b!3973501 (= e!2461623 (+ 1 (size!31745 (t!330967 prefix!494))))))

(assert (= (and d!1176787 c!689013) b!3973500))

(assert (= (and d!1176787 (not c!689013)) b!3973501))

(declare-fun m!4544191 () Bool)

(assert (=> b!3973501 m!4544191))

(assert (=> b!3973003 d!1176787))

(declare-fun d!1176789 () Bool)

(declare-fun list!15746 (Conc!12891) List!42552)

(assert (=> d!1176789 (= (list!15744 (charsOf!4496 token!484)) (list!15746 (c!688932 (charsOf!4496 token!484))))))

(declare-fun bs!587686 () Bool)

(assert (= bs!587686 d!1176789))

(declare-fun m!4544193 () Bool)

(assert (=> bs!587686 m!4544193))

(assert (=> b!3973003 d!1176789))

(declare-fun d!1176791 () Bool)

(declare-fun lt!1392334 () BalanceConc!25376)

(assert (=> d!1176791 (= (list!15744 lt!1392334) (originalCharacters!7280 token!484))))

(assert (=> d!1176791 (= lt!1392334 (dynLambda!18078 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (value!211014 token!484)))))

(assert (=> d!1176791 (= (charsOf!4496 token!484) lt!1392334)))

(declare-fun b_lambda!116127 () Bool)

(assert (=> (not b_lambda!116127) (not d!1176791)))

(assert (=> d!1176791 t!330971))

(declare-fun b_and!305455 () Bool)

(assert (= b_and!305431 (and (=> t!330971 result!290258) b_and!305455)))

(assert (=> d!1176791 t!330973))

(declare-fun b_and!305457 () Bool)

(assert (= b_and!305433 (and (=> t!330973 result!290262) b_and!305457)))

(declare-fun m!4544195 () Bool)

(assert (=> d!1176791 m!4544195))

(assert (=> d!1176791 m!4543803))

(assert (=> b!3973003 d!1176791))

(declare-fun d!1176793 () Bool)

(declare-fun lt!1392335 () Int)

(assert (=> d!1176793 (>= lt!1392335 0)))

(declare-fun e!2461624 () Int)

(assert (=> d!1176793 (= lt!1392335 e!2461624)))

(declare-fun c!689014 () Bool)

(assert (=> d!1176793 (= c!689014 ((_ is Nil!42428) suffix!1299))))

(assert (=> d!1176793 (= (size!31745 suffix!1299) lt!1392335)))

(declare-fun b!3973502 () Bool)

(assert (=> b!3973502 (= e!2461624 0)))

(declare-fun b!3973503 () Bool)

(assert (=> b!3973503 (= e!2461624 (+ 1 (size!31745 (t!330967 suffix!1299))))))

(assert (= (and d!1176793 c!689014) b!3973502))

(assert (= (and d!1176793 (not c!689014)) b!3973503))

(declare-fun m!4544197 () Bool)

(assert (=> b!3973503 m!4544197))

(assert (=> b!3973002 d!1176793))

(declare-fun d!1176795 () Bool)

(declare-fun lt!1392336 () Int)

(assert (=> d!1176795 (>= lt!1392336 0)))

(declare-fun e!2461625 () Int)

(assert (=> d!1176795 (= lt!1392336 e!2461625)))

(declare-fun c!689015 () Bool)

(assert (=> d!1176795 (= c!689015 ((_ is Nil!42428) newSuffix!27))))

(assert (=> d!1176795 (= (size!31745 newSuffix!27) lt!1392336)))

(declare-fun b!3973504 () Bool)

(assert (=> b!3973504 (= e!2461625 0)))

(declare-fun b!3973505 () Bool)

(assert (=> b!3973505 (= e!2461625 (+ 1 (size!31745 (t!330967 newSuffix!27))))))

(assert (= (and d!1176795 c!689015) b!3973504))

(assert (= (and d!1176795 (not c!689015)) b!3973505))

(declare-fun m!4544199 () Bool)

(assert (=> b!3973505 m!4544199))

(assert (=> b!3973002 d!1176795))

(declare-fun b!3973508 () Bool)

(declare-fun res!1608846 () Bool)

(declare-fun e!2461627 () Bool)

(assert (=> b!3973508 (=> (not res!1608846) (not e!2461627))))

(declare-fun lt!1392337 () List!42552)

(assert (=> b!3973508 (= res!1608846 (= (size!31745 lt!1392337) (+ (size!31745 lt!1392137) (size!31745 (getSuffix!2198 lt!1392159 lt!1392137)))))))

(declare-fun b!3973509 () Bool)

(assert (=> b!3973509 (= e!2461627 (or (not (= (getSuffix!2198 lt!1392159 lt!1392137) Nil!42428)) (= lt!1392337 lt!1392137)))))

(declare-fun b!3973506 () Bool)

(declare-fun e!2461626 () List!42552)

(assert (=> b!3973506 (= e!2461626 (getSuffix!2198 lt!1392159 lt!1392137))))

(declare-fun d!1176797 () Bool)

(assert (=> d!1176797 e!2461627))

(declare-fun res!1608845 () Bool)

(assert (=> d!1176797 (=> (not res!1608845) (not e!2461627))))

(assert (=> d!1176797 (= res!1608845 (= (content!6439 lt!1392337) ((_ map or) (content!6439 lt!1392137) (content!6439 (getSuffix!2198 lt!1392159 lt!1392137)))))))

(assert (=> d!1176797 (= lt!1392337 e!2461626)))

(declare-fun c!689016 () Bool)

(assert (=> d!1176797 (= c!689016 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176797 (= (++!11082 lt!1392137 (getSuffix!2198 lt!1392159 lt!1392137)) lt!1392337)))

(declare-fun b!3973507 () Bool)

(assert (=> b!3973507 (= e!2461626 (Cons!42428 (h!47848 lt!1392137) (++!11082 (t!330967 lt!1392137) (getSuffix!2198 lt!1392159 lt!1392137))))))

(assert (= (and d!1176797 c!689016) b!3973506))

(assert (= (and d!1176797 (not c!689016)) b!3973507))

(assert (= (and d!1176797 res!1608845) b!3973508))

(assert (= (and b!3973508 res!1608846) b!3973509))

(declare-fun m!4544201 () Bool)

(assert (=> b!3973508 m!4544201))

(assert (=> b!3973508 m!4543535))

(assert (=> b!3973508 m!4543577))

(declare-fun m!4544203 () Bool)

(assert (=> b!3973508 m!4544203))

(declare-fun m!4544205 () Bool)

(assert (=> d!1176797 m!4544205))

(assert (=> d!1176797 m!4543669))

(assert (=> d!1176797 m!4543577))

(declare-fun m!4544207 () Bool)

(assert (=> d!1176797 m!4544207))

(assert (=> b!3973507 m!4543577))

(declare-fun m!4544209 () Bool)

(assert (=> b!3973507 m!4544209))

(assert (=> b!3973004 d!1176797))

(declare-fun d!1176799 () Bool)

(declare-fun lt!1392340 () List!42552)

(assert (=> d!1176799 (= (++!11082 lt!1392137 lt!1392340) lt!1392159)))

(declare-fun e!2461630 () List!42552)

(assert (=> d!1176799 (= lt!1392340 e!2461630)))

(declare-fun c!689019 () Bool)

(assert (=> d!1176799 (= c!689019 ((_ is Cons!42428) lt!1392137))))

(assert (=> d!1176799 (>= (size!31745 lt!1392159) (size!31745 lt!1392137))))

(assert (=> d!1176799 (= (getSuffix!2198 lt!1392159 lt!1392137) lt!1392340)))

(declare-fun b!3973514 () Bool)

(assert (=> b!3973514 (= e!2461630 (getSuffix!2198 (tail!6197 lt!1392159) (t!330967 lt!1392137)))))

(declare-fun b!3973515 () Bool)

(assert (=> b!3973515 (= e!2461630 lt!1392159)))

(assert (= (and d!1176799 c!689019) b!3973514))

(assert (= (and d!1176799 (not c!689019)) b!3973515))

(declare-fun m!4544211 () Bool)

(assert (=> d!1176799 m!4544211))

(assert (=> d!1176799 m!4543561))

(assert (=> d!1176799 m!4543535))

(declare-fun m!4544213 () Bool)

(assert (=> b!3973514 m!4544213))

(assert (=> b!3973514 m!4544213))

(declare-fun m!4544215 () Bool)

(assert (=> b!3973514 m!4544215))

(assert (=> b!3973004 d!1176799))

(declare-fun b!3973519 () Bool)

(declare-fun e!2461631 () Bool)

(assert (=> b!3973519 (= e!2461631 (>= (size!31745 lt!1392159) (size!31745 lt!1392159)))))

(declare-fun d!1176801 () Bool)

(assert (=> d!1176801 e!2461631))

(declare-fun res!1608849 () Bool)

(assert (=> d!1176801 (=> res!1608849 e!2461631)))

(declare-fun lt!1392341 () Bool)

(assert (=> d!1176801 (= res!1608849 (not lt!1392341))))

(declare-fun e!2461632 () Bool)

(assert (=> d!1176801 (= lt!1392341 e!2461632)))

(declare-fun res!1608847 () Bool)

(assert (=> d!1176801 (=> res!1608847 e!2461632)))

(assert (=> d!1176801 (= res!1608847 ((_ is Nil!42428) lt!1392159))))

(assert (=> d!1176801 (= (isPrefix!3767 lt!1392159 lt!1392159) lt!1392341)))

(declare-fun b!3973516 () Bool)

(declare-fun e!2461633 () Bool)

(assert (=> b!3973516 (= e!2461632 e!2461633)))

(declare-fun res!1608848 () Bool)

(assert (=> b!3973516 (=> (not res!1608848) (not e!2461633))))

(assert (=> b!3973516 (= res!1608848 (not ((_ is Nil!42428) lt!1392159)))))

(declare-fun b!3973517 () Bool)

(declare-fun res!1608850 () Bool)

(assert (=> b!3973517 (=> (not res!1608850) (not e!2461633))))

(assert (=> b!3973517 (= res!1608850 (= (head!8465 lt!1392159) (head!8465 lt!1392159)))))

(declare-fun b!3973518 () Bool)

(assert (=> b!3973518 (= e!2461633 (isPrefix!3767 (tail!6197 lt!1392159) (tail!6197 lt!1392159)))))

(assert (= (and d!1176801 (not res!1608847)) b!3973516))

(assert (= (and b!3973516 res!1608848) b!3973517))

(assert (= (and b!3973517 res!1608850) b!3973518))

(assert (= (and d!1176801 (not res!1608849)) b!3973519))

(assert (=> b!3973519 m!4543561))

(assert (=> b!3973519 m!4543561))

(declare-fun m!4544217 () Bool)

(assert (=> b!3973517 m!4544217))

(assert (=> b!3973517 m!4544217))

(assert (=> b!3973518 m!4544213))

(assert (=> b!3973518 m!4544213))

(assert (=> b!3973518 m!4544213))

(assert (=> b!3973518 m!4544213))

(declare-fun m!4544219 () Bool)

(assert (=> b!3973518 m!4544219))

(assert (=> b!3973004 d!1176801))

(declare-fun d!1176803 () Bool)

(assert (=> d!1176803 (isPrefix!3767 lt!1392159 lt!1392159)))

(declare-fun lt!1392344 () Unit!61079)

(declare-fun choose!23788 (List!42552 List!42552) Unit!61079)

(assert (=> d!1176803 (= lt!1392344 (choose!23788 lt!1392159 lt!1392159))))

(assert (=> d!1176803 (= (lemmaIsPrefixRefl!2359 lt!1392159 lt!1392159) lt!1392344)))

(declare-fun bs!587687 () Bool)

(assert (= bs!587687 d!1176803))

(assert (=> bs!587687 m!4543581))

(declare-fun m!4544221 () Bool)

(assert (=> bs!587687 m!4544221))

(assert (=> b!3973004 d!1176803))

(declare-fun d!1176805 () Bool)

(assert (=> d!1176805 (isPrefix!3767 lt!1392137 (++!11082 lt!1392137 suffixResult!105))))

(declare-fun lt!1392345 () Unit!61079)

(assert (=> d!1176805 (= lt!1392345 (choose!23784 lt!1392137 suffixResult!105))))

(assert (=> d!1176805 (= (lemmaConcatTwoListThenFirstIsPrefix!2610 lt!1392137 suffixResult!105) lt!1392345)))

(declare-fun bs!587688 () Bool)

(assert (= bs!587688 d!1176805))

(assert (=> bs!587688 m!4543587))

(assert (=> bs!587688 m!4543587))

(declare-fun m!4544223 () Bool)

(assert (=> bs!587688 m!4544223))

(declare-fun m!4544225 () Bool)

(assert (=> bs!587688 m!4544225))

(assert (=> b!3972993 d!1176805))

(declare-fun b!3973523 () Bool)

(declare-fun e!2461634 () Bool)

(assert (=> b!3973523 (= e!2461634 (>= (size!31745 lt!1392146) (size!31745 lt!1392137)))))

(declare-fun d!1176807 () Bool)

(assert (=> d!1176807 e!2461634))

(declare-fun res!1608853 () Bool)

(assert (=> d!1176807 (=> res!1608853 e!2461634)))

(declare-fun lt!1392346 () Bool)

(assert (=> d!1176807 (= res!1608853 (not lt!1392346))))

(declare-fun e!2461635 () Bool)

(assert (=> d!1176807 (= lt!1392346 e!2461635)))

(declare-fun res!1608851 () Bool)

(assert (=> d!1176807 (=> res!1608851 e!2461635)))

(assert (=> d!1176807 (= res!1608851 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176807 (= (isPrefix!3767 lt!1392137 lt!1392146) lt!1392346)))

(declare-fun b!3973520 () Bool)

(declare-fun e!2461636 () Bool)

(assert (=> b!3973520 (= e!2461635 e!2461636)))

(declare-fun res!1608852 () Bool)

(assert (=> b!3973520 (=> (not res!1608852) (not e!2461636))))

(assert (=> b!3973520 (= res!1608852 (not ((_ is Nil!42428) lt!1392146)))))

(declare-fun b!3973521 () Bool)

(declare-fun res!1608854 () Bool)

(assert (=> b!3973521 (=> (not res!1608854) (not e!2461636))))

(assert (=> b!3973521 (= res!1608854 (= (head!8465 lt!1392137) (head!8465 lt!1392146)))))

(declare-fun b!3973522 () Bool)

(assert (=> b!3973522 (= e!2461636 (isPrefix!3767 (tail!6197 lt!1392137) (tail!6197 lt!1392146)))))

(assert (= (and d!1176807 (not res!1608851)) b!3973520))

(assert (= (and b!3973520 res!1608852) b!3973521))

(assert (= (and b!3973521 res!1608854) b!3973522))

(assert (= (and d!1176807 (not res!1608853)) b!3973523))

(declare-fun m!4544227 () Bool)

(assert (=> b!3973523 m!4544227))

(assert (=> b!3973523 m!4543535))

(assert (=> b!3973521 m!4543817))

(declare-fun m!4544229 () Bool)

(assert (=> b!3973521 m!4544229))

(assert (=> b!3973522 m!4543807))

(declare-fun m!4544231 () Bool)

(assert (=> b!3973522 m!4544231))

(assert (=> b!3973522 m!4543807))

(assert (=> b!3973522 m!4544231))

(declare-fun m!4544233 () Bool)

(assert (=> b!3973522 m!4544233))

(assert (=> b!3972993 d!1176807))

(declare-fun b!3973527 () Bool)

(declare-fun e!2461637 () Bool)

(assert (=> b!3973527 (= e!2461637 (>= (size!31745 lt!1392159) (size!31745 lt!1392137)))))

(declare-fun d!1176809 () Bool)

(assert (=> d!1176809 e!2461637))

(declare-fun res!1608857 () Bool)

(assert (=> d!1176809 (=> res!1608857 e!2461637)))

(declare-fun lt!1392347 () Bool)

(assert (=> d!1176809 (= res!1608857 (not lt!1392347))))

(declare-fun e!2461638 () Bool)

(assert (=> d!1176809 (= lt!1392347 e!2461638)))

(declare-fun res!1608855 () Bool)

(assert (=> d!1176809 (=> res!1608855 e!2461638)))

(assert (=> d!1176809 (= res!1608855 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176809 (= (isPrefix!3767 lt!1392137 lt!1392159) lt!1392347)))

(declare-fun b!3973524 () Bool)

(declare-fun e!2461639 () Bool)

(assert (=> b!3973524 (= e!2461638 e!2461639)))

(declare-fun res!1608856 () Bool)

(assert (=> b!3973524 (=> (not res!1608856) (not e!2461639))))

(assert (=> b!3973524 (= res!1608856 (not ((_ is Nil!42428) lt!1392159)))))

(declare-fun b!3973525 () Bool)

(declare-fun res!1608858 () Bool)

(assert (=> b!3973525 (=> (not res!1608858) (not e!2461639))))

(assert (=> b!3973525 (= res!1608858 (= (head!8465 lt!1392137) (head!8465 lt!1392159)))))

(declare-fun b!3973526 () Bool)

(assert (=> b!3973526 (= e!2461639 (isPrefix!3767 (tail!6197 lt!1392137) (tail!6197 lt!1392159)))))

(assert (= (and d!1176809 (not res!1608855)) b!3973524))

(assert (= (and b!3973524 res!1608856) b!3973525))

(assert (= (and b!3973525 res!1608858) b!3973526))

(assert (= (and d!1176809 (not res!1608857)) b!3973527))

(assert (=> b!3973527 m!4543561))

(assert (=> b!3973527 m!4543535))

(assert (=> b!3973525 m!4543817))

(assert (=> b!3973525 m!4544217))

(assert (=> b!3973526 m!4543807))

(assert (=> b!3973526 m!4544213))

(assert (=> b!3973526 m!4543807))

(assert (=> b!3973526 m!4544213))

(declare-fun m!4544235 () Bool)

(assert (=> b!3973526 m!4544235))

(assert (=> b!3972993 d!1176809))

(declare-fun b!3973531 () Bool)

(declare-fun e!2461640 () Bool)

(assert (=> b!3973531 (= e!2461640 (>= (size!31745 lt!1392159) (size!31745 prefix!494)))))

(declare-fun d!1176811 () Bool)

(assert (=> d!1176811 e!2461640))

(declare-fun res!1608861 () Bool)

(assert (=> d!1176811 (=> res!1608861 e!2461640)))

(declare-fun lt!1392348 () Bool)

(assert (=> d!1176811 (= res!1608861 (not lt!1392348))))

(declare-fun e!2461641 () Bool)

(assert (=> d!1176811 (= lt!1392348 e!2461641)))

(declare-fun res!1608859 () Bool)

(assert (=> d!1176811 (=> res!1608859 e!2461641)))

(assert (=> d!1176811 (= res!1608859 ((_ is Nil!42428) prefix!494))))

(assert (=> d!1176811 (= (isPrefix!3767 prefix!494 lt!1392159) lt!1392348)))

(declare-fun b!3973528 () Bool)

(declare-fun e!2461642 () Bool)

(assert (=> b!3973528 (= e!2461641 e!2461642)))

(declare-fun res!1608860 () Bool)

(assert (=> b!3973528 (=> (not res!1608860) (not e!2461642))))

(assert (=> b!3973528 (= res!1608860 (not ((_ is Nil!42428) lt!1392159)))))

(declare-fun b!3973529 () Bool)

(declare-fun res!1608862 () Bool)

(assert (=> b!3973529 (=> (not res!1608862) (not e!2461642))))

(assert (=> b!3973529 (= res!1608862 (= (head!8465 prefix!494) (head!8465 lt!1392159)))))

(declare-fun b!3973530 () Bool)

(assert (=> b!3973530 (= e!2461642 (isPrefix!3767 (tail!6197 prefix!494) (tail!6197 lt!1392159)))))

(assert (= (and d!1176811 (not res!1608859)) b!3973528))

(assert (= (and b!3973528 res!1608860) b!3973529))

(assert (= (and b!3973529 res!1608862) b!3973530))

(assert (= (and d!1176811 (not res!1608861)) b!3973531))

(assert (=> b!3973531 m!4543561))

(assert (=> b!3973531 m!4543537))

(declare-fun m!4544237 () Bool)

(assert (=> b!3973529 m!4544237))

(assert (=> b!3973529 m!4544217))

(declare-fun m!4544239 () Bool)

(assert (=> b!3973530 m!4544239))

(assert (=> b!3973530 m!4544213))

(assert (=> b!3973530 m!4544239))

(assert (=> b!3973530 m!4544213))

(declare-fun m!4544241 () Bool)

(assert (=> b!3973530 m!4544241))

(assert (=> b!3972993 d!1176811))

(declare-fun d!1176813 () Bool)

(assert (=> d!1176813 (isPrefix!3767 prefix!494 (++!11082 prefix!494 suffix!1299))))

(declare-fun lt!1392349 () Unit!61079)

(assert (=> d!1176813 (= lt!1392349 (choose!23784 prefix!494 suffix!1299))))

(assert (=> d!1176813 (= (lemmaConcatTwoListThenFirstIsPrefix!2610 prefix!494 suffix!1299) lt!1392349)))

(declare-fun bs!587689 () Bool)

(assert (= bs!587689 d!1176813))

(assert (=> bs!587689 m!4543525))

(assert (=> bs!587689 m!4543525))

(declare-fun m!4544243 () Bool)

(assert (=> bs!587689 m!4544243))

(declare-fun m!4544245 () Bool)

(assert (=> bs!587689 m!4544245))

(assert (=> b!3972993 d!1176813))

(declare-fun b!3973534 () Bool)

(declare-fun res!1608864 () Bool)

(declare-fun e!2461644 () Bool)

(assert (=> b!3973534 (=> (not res!1608864) (not e!2461644))))

(declare-fun lt!1392350 () List!42552)

(assert (=> b!3973534 (= res!1608864 (= (size!31745 lt!1392350) (+ (size!31745 lt!1392137) (size!31745 lt!1392145))))))

(declare-fun b!3973535 () Bool)

(assert (=> b!3973535 (= e!2461644 (or (not (= lt!1392145 Nil!42428)) (= lt!1392350 lt!1392137)))))

(declare-fun b!3973532 () Bool)

(declare-fun e!2461643 () List!42552)

(assert (=> b!3973532 (= e!2461643 lt!1392145)))

(declare-fun d!1176815 () Bool)

(assert (=> d!1176815 e!2461644))

(declare-fun res!1608863 () Bool)

(assert (=> d!1176815 (=> (not res!1608863) (not e!2461644))))

(assert (=> d!1176815 (= res!1608863 (= (content!6439 lt!1392350) ((_ map or) (content!6439 lt!1392137) (content!6439 lt!1392145))))))

(assert (=> d!1176815 (= lt!1392350 e!2461643)))

(declare-fun c!689020 () Bool)

(assert (=> d!1176815 (= c!689020 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176815 (= (++!11082 lt!1392137 lt!1392145) lt!1392350)))

(declare-fun b!3973533 () Bool)

(assert (=> b!3973533 (= e!2461643 (Cons!42428 (h!47848 lt!1392137) (++!11082 (t!330967 lt!1392137) lt!1392145)))))

(assert (= (and d!1176815 c!689020) b!3973532))

(assert (= (and d!1176815 (not c!689020)) b!3973533))

(assert (= (and d!1176815 res!1608863) b!3973534))

(assert (= (and b!3973534 res!1608864) b!3973535))

(declare-fun m!4544247 () Bool)

(assert (=> b!3973534 m!4544247))

(assert (=> b!3973534 m!4543535))

(assert (=> b!3973534 m!4544139))

(declare-fun m!4544249 () Bool)

(assert (=> d!1176815 m!4544249))

(assert (=> d!1176815 m!4543669))

(assert (=> d!1176815 m!4544143))

(declare-fun m!4544251 () Bool)

(assert (=> b!3973533 m!4544251))

(assert (=> b!3972984 d!1176815))

(declare-fun d!1176817 () Bool)

(declare-fun lt!1392351 () List!42552)

(assert (=> d!1176817 (= (++!11082 lt!1392137 lt!1392351) prefix!494)))

(declare-fun e!2461645 () List!42552)

(assert (=> d!1176817 (= lt!1392351 e!2461645)))

(declare-fun c!689021 () Bool)

(assert (=> d!1176817 (= c!689021 ((_ is Cons!42428) lt!1392137))))

(assert (=> d!1176817 (>= (size!31745 prefix!494) (size!31745 lt!1392137))))

(assert (=> d!1176817 (= (getSuffix!2198 prefix!494 lt!1392137) lt!1392351)))

(declare-fun b!3973536 () Bool)

(assert (=> b!3973536 (= e!2461645 (getSuffix!2198 (tail!6197 prefix!494) (t!330967 lt!1392137)))))

(declare-fun b!3973537 () Bool)

(assert (=> b!3973537 (= e!2461645 prefix!494)))

(assert (= (and d!1176817 c!689021) b!3973536))

(assert (= (and d!1176817 (not c!689021)) b!3973537))

(declare-fun m!4544253 () Bool)

(assert (=> d!1176817 m!4544253))

(assert (=> d!1176817 m!4543537))

(assert (=> d!1176817 m!4543535))

(assert (=> b!3973536 m!4544239))

(assert (=> b!3973536 m!4544239))

(declare-fun m!4544255 () Bool)

(assert (=> b!3973536 m!4544255))

(assert (=> b!3972984 d!1176817))

(declare-fun b!3973541 () Bool)

(declare-fun e!2461646 () Bool)

(assert (=> b!3973541 (= e!2461646 (>= (size!31745 prefix!494) (size!31745 lt!1392137)))))

(declare-fun d!1176819 () Bool)

(assert (=> d!1176819 e!2461646))

(declare-fun res!1608867 () Bool)

(assert (=> d!1176819 (=> res!1608867 e!2461646)))

(declare-fun lt!1392352 () Bool)

(assert (=> d!1176819 (= res!1608867 (not lt!1392352))))

(declare-fun e!2461647 () Bool)

(assert (=> d!1176819 (= lt!1392352 e!2461647)))

(declare-fun res!1608865 () Bool)

(assert (=> d!1176819 (=> res!1608865 e!2461647)))

(assert (=> d!1176819 (= res!1608865 ((_ is Nil!42428) lt!1392137))))

(assert (=> d!1176819 (= (isPrefix!3767 lt!1392137 prefix!494) lt!1392352)))

(declare-fun b!3973538 () Bool)

(declare-fun e!2461648 () Bool)

(assert (=> b!3973538 (= e!2461647 e!2461648)))

(declare-fun res!1608866 () Bool)

(assert (=> b!3973538 (=> (not res!1608866) (not e!2461648))))

(assert (=> b!3973538 (= res!1608866 (not ((_ is Nil!42428) prefix!494)))))

(declare-fun b!3973539 () Bool)

(declare-fun res!1608868 () Bool)

(assert (=> b!3973539 (=> (not res!1608868) (not e!2461648))))

(assert (=> b!3973539 (= res!1608868 (= (head!8465 lt!1392137) (head!8465 prefix!494)))))

(declare-fun b!3973540 () Bool)

(assert (=> b!3973540 (= e!2461648 (isPrefix!3767 (tail!6197 lt!1392137) (tail!6197 prefix!494)))))

(assert (= (and d!1176819 (not res!1608865)) b!3973538))

(assert (= (and b!3973538 res!1608866) b!3973539))

(assert (= (and b!3973539 res!1608868) b!3973540))

(assert (= (and d!1176819 (not res!1608867)) b!3973541))

(assert (=> b!3973541 m!4543537))

(assert (=> b!3973541 m!4543535))

(assert (=> b!3973539 m!4543817))

(assert (=> b!3973539 m!4544237))

(assert (=> b!3973540 m!4543807))

(assert (=> b!3973540 m!4544239))

(assert (=> b!3973540 m!4543807))

(assert (=> b!3973540 m!4544239))

(declare-fun m!4544257 () Bool)

(assert (=> b!3973540 m!4544257))

(assert (=> b!3972984 d!1176819))

(declare-fun d!1176821 () Bool)

(assert (=> d!1176821 (isPrefix!3767 lt!1392137 prefix!494)))

(declare-fun lt!1392355 () Unit!61079)

(declare-fun choose!23789 (List!42552 List!42552 List!42552) Unit!61079)

(assert (=> d!1176821 (= lt!1392355 (choose!23789 prefix!494 lt!1392137 lt!1392159))))

(assert (=> d!1176821 (isPrefix!3767 prefix!494 lt!1392159)))

(assert (=> d!1176821 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!345 prefix!494 lt!1392137 lt!1392159) lt!1392355)))

(declare-fun bs!587690 () Bool)

(assert (= bs!587690 d!1176821))

(assert (=> bs!587690 m!4543557))

(declare-fun m!4544259 () Bool)

(assert (=> bs!587690 m!4544259))

(assert (=> bs!587690 m!4543619))

(assert (=> b!3972984 d!1176821))

(declare-fun d!1176823 () Bool)

(assert (=> d!1176823 (= (inv!56688 (tag!7540 (rule!9672 token!484))) (= (mod (str.len (value!211013 (tag!7540 (rule!9672 token!484)))) 2) 0))))

(assert (=> b!3972994 d!1176823))

(declare-fun d!1176825 () Bool)

(declare-fun res!1608871 () Bool)

(declare-fun e!2461651 () Bool)

(assert (=> d!1176825 (=> (not res!1608871) (not e!2461651))))

(assert (=> d!1176825 (= res!1608871 (semiInverseModEq!2871 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))))))

(assert (=> d!1176825 (= (inv!56692 (transformation!6680 (rule!9672 token!484))) e!2461651)))

(declare-fun b!3973544 () Bool)

(assert (=> b!3973544 (= e!2461651 (equivClasses!2770 (toChars!9027 (transformation!6680 (rule!9672 token!484))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))))))

(assert (= (and d!1176825 res!1608871) b!3973544))

(assert (=> d!1176825 m!4543697))

(assert (=> b!3973544 m!4543699))

(assert (=> b!3972994 d!1176825))

(declare-fun d!1176827 () Bool)

(assert (=> d!1176827 (= (inv!56688 (tag!7540 (h!47850 rules!2999))) (= (mod (str.len (value!211013 (tag!7540 (h!47850 rules!2999)))) 2) 0))))

(assert (=> b!3973005 d!1176827))

(declare-fun d!1176829 () Bool)

(declare-fun res!1608872 () Bool)

(declare-fun e!2461652 () Bool)

(assert (=> d!1176829 (=> (not res!1608872) (not e!2461652))))

(assert (=> d!1176829 (= res!1608872 (semiInverseModEq!2871 (toChars!9027 (transformation!6680 (h!47850 rules!2999))) (toValue!9168 (transformation!6680 (h!47850 rules!2999)))))))

(assert (=> d!1176829 (= (inv!56692 (transformation!6680 (h!47850 rules!2999))) e!2461652)))

(declare-fun b!3973545 () Bool)

(assert (=> b!3973545 (= e!2461652 (equivClasses!2770 (toChars!9027 (transformation!6680 (h!47850 rules!2999))) (toValue!9168 (transformation!6680 (h!47850 rules!2999)))))))

(assert (= (and d!1176829 res!1608872) b!3973545))

(declare-fun m!4544261 () Bool)

(assert (=> d!1176829 m!4544261))

(declare-fun m!4544263 () Bool)

(assert (=> b!3973545 m!4544263))

(assert (=> b!3973005 d!1176829))

(declare-fun b!3973550 () Bool)

(declare-fun e!2461655 () Bool)

(declare-fun tp!1211505 () Bool)

(assert (=> b!3973550 (= e!2461655 (and tp_is_empty!20141 tp!1211505))))

(assert (=> b!3972996 (= tp!1211456 e!2461655)))

(assert (= (and b!3972996 ((_ is Cons!42428) (t!330967 newSuffix!27))) b!3973550))

(declare-fun b!3973551 () Bool)

(declare-fun e!2461656 () Bool)

(declare-fun tp!1211506 () Bool)

(assert (=> b!3973551 (= e!2461656 (and tp_is_empty!20141 tp!1211506))))

(assert (=> b!3973007 (= tp!1211452 e!2461656)))

(assert (= (and b!3973007 ((_ is Cons!42428) (t!330967 suffix!1299))) b!3973551))

(declare-fun b!3973552 () Bool)

(declare-fun e!2461657 () Bool)

(declare-fun tp!1211507 () Bool)

(assert (=> b!3973552 (= e!2461657 (and tp_is_empty!20141 tp!1211507))))

(assert (=> b!3973001 (= tp!1211450 e!2461657)))

(assert (= (and b!3973001 ((_ is Cons!42428) (originalCharacters!7280 token!484))) b!3973552))

(declare-fun b!3973563 () Bool)

(declare-fun b_free!110141 () Bool)

(declare-fun b_next!110845 () Bool)

(assert (=> b!3973563 (= b_free!110141 (not b_next!110845))))

(declare-fun t!330991 () Bool)

(declare-fun tb!239697 () Bool)

(assert (=> (and b!3973563 (= (toValue!9168 (transformation!6680 (h!47850 (t!330969 rules!2999)))) (toValue!9168 (transformation!6680 (rule!9672 token!484)))) t!330991) tb!239697))

(declare-fun result!290296 () Bool)

(assert (= result!290296 result!290276))

(assert (=> d!1176751 t!330991))

(declare-fun tp!1211519 () Bool)

(declare-fun b_and!305459 () Bool)

(assert (=> b!3973563 (= tp!1211519 (and (=> t!330991 result!290296) b_and!305459))))

(declare-fun b_free!110143 () Bool)

(declare-fun b_next!110847 () Bool)

(assert (=> b!3973563 (= b_free!110143 (not b_next!110847))))

(declare-fun tb!239699 () Bool)

(declare-fun t!330993 () Bool)

(assert (=> (and b!3973563 (= (toChars!9027 (transformation!6680 (h!47850 (t!330969 rules!2999)))) (toChars!9027 (transformation!6680 (rule!9672 token!484)))) t!330993) tb!239699))

(declare-fun result!290298 () Bool)

(assert (= result!290298 result!290258))

(assert (=> b!3973177 t!330993))

(assert (=> d!1176791 t!330993))

(declare-fun b_and!305461 () Bool)

(declare-fun tp!1211516 () Bool)

(assert (=> b!3973563 (= tp!1211516 (and (=> t!330993 result!290298) b_and!305461))))

(declare-fun e!2461669 () Bool)

(assert (=> b!3973563 (= e!2461669 (and tp!1211519 tp!1211516))))

(declare-fun b!3973562 () Bool)

(declare-fun e!2461668 () Bool)

(declare-fun tp!1211518 () Bool)

(assert (=> b!3973562 (= e!2461668 (and tp!1211518 (inv!56688 (tag!7540 (h!47850 (t!330969 rules!2999)))) (inv!56692 (transformation!6680 (h!47850 (t!330969 rules!2999)))) e!2461669))))

(declare-fun b!3973561 () Bool)

(declare-fun e!2461666 () Bool)

(declare-fun tp!1211517 () Bool)

(assert (=> b!3973561 (= e!2461666 (and e!2461668 tp!1211517))))

(assert (=> b!3972992 (= tp!1211454 e!2461666)))

(assert (= b!3973562 b!3973563))

(assert (= b!3973561 b!3973562))

(assert (= (and b!3972992 ((_ is Cons!42430) (t!330969 rules!2999))) b!3973561))

(declare-fun m!4544265 () Bool)

(assert (=> b!3973562 m!4544265))

(declare-fun m!4544267 () Bool)

(assert (=> b!3973562 m!4544267))

(declare-fun b!3973564 () Bool)

(declare-fun e!2461670 () Bool)

(declare-fun tp!1211520 () Bool)

(assert (=> b!3973564 (= e!2461670 (and tp_is_empty!20141 tp!1211520))))

(assert (=> b!3972997 (= tp!1211446 e!2461670)))

(assert (= (and b!3972997 ((_ is Cons!42428) (t!330967 prefix!494))) b!3973564))

(declare-fun b!3973565 () Bool)

(declare-fun e!2461671 () Bool)

(declare-fun tp!1211521 () Bool)

(assert (=> b!3973565 (= e!2461671 (and tp_is_empty!20141 tp!1211521))))

(assert (=> b!3972983 (= tp!1211447 e!2461671)))

(assert (= (and b!3972983 ((_ is Cons!42428) (t!330967 newSuffixResult!27))) b!3973565))

(declare-fun b!3973566 () Bool)

(declare-fun e!2461672 () Bool)

(declare-fun tp!1211522 () Bool)

(assert (=> b!3973566 (= e!2461672 (and tp_is_empty!20141 tp!1211522))))

(assert (=> b!3972995 (= tp!1211451 e!2461672)))

(assert (= (and b!3972995 ((_ is Cons!42428) (t!330967 suffixResult!105))) b!3973566))

(declare-fun b!3973578 () Bool)

(declare-fun e!2461675 () Bool)

(declare-fun tp!1211534 () Bool)

(declare-fun tp!1211536 () Bool)

(assert (=> b!3973578 (= e!2461675 (and tp!1211534 tp!1211536))))

(declare-fun b!3973579 () Bool)

(declare-fun tp!1211533 () Bool)

(assert (=> b!3973579 (= e!2461675 tp!1211533)))

(assert (=> b!3972994 (= tp!1211445 e!2461675)))

(declare-fun b!3973577 () Bool)

(assert (=> b!3973577 (= e!2461675 tp_is_empty!20141)))

(declare-fun b!3973580 () Bool)

(declare-fun tp!1211535 () Bool)

(declare-fun tp!1211537 () Bool)

(assert (=> b!3973580 (= e!2461675 (and tp!1211535 tp!1211537))))

(assert (= (and b!3972994 ((_ is ElementMatch!11585) (regex!6680 (rule!9672 token!484)))) b!3973577))

(assert (= (and b!3972994 ((_ is Concat!18496) (regex!6680 (rule!9672 token!484)))) b!3973578))

(assert (= (and b!3972994 ((_ is Star!11585) (regex!6680 (rule!9672 token!484)))) b!3973579))

(assert (= (and b!3972994 ((_ is Union!11585) (regex!6680 (rule!9672 token!484)))) b!3973580))

(declare-fun b!3973582 () Bool)

(declare-fun e!2461676 () Bool)

(declare-fun tp!1211539 () Bool)

(declare-fun tp!1211541 () Bool)

(assert (=> b!3973582 (= e!2461676 (and tp!1211539 tp!1211541))))

(declare-fun b!3973583 () Bool)

(declare-fun tp!1211538 () Bool)

(assert (=> b!3973583 (= e!2461676 tp!1211538)))

(assert (=> b!3973005 (= tp!1211453 e!2461676)))

(declare-fun b!3973581 () Bool)

(assert (=> b!3973581 (= e!2461676 tp_is_empty!20141)))

(declare-fun b!3973584 () Bool)

(declare-fun tp!1211540 () Bool)

(declare-fun tp!1211542 () Bool)

(assert (=> b!3973584 (= e!2461676 (and tp!1211540 tp!1211542))))

(assert (= (and b!3973005 ((_ is ElementMatch!11585) (regex!6680 (h!47850 rules!2999)))) b!3973581))

(assert (= (and b!3973005 ((_ is Concat!18496) (regex!6680 (h!47850 rules!2999)))) b!3973582))

(assert (= (and b!3973005 ((_ is Star!11585) (regex!6680 (h!47850 rules!2999)))) b!3973583))

(assert (= (and b!3973005 ((_ is Union!11585) (regex!6680 (h!47850 rules!2999)))) b!3973584))

(declare-fun b_lambda!116129 () Bool)

(assert (= b_lambda!116111 (or (and b!3973006 b_free!110131) (and b!3972985 b_free!110135 (= (toChars!9027 (transformation!6680 (h!47850 rules!2999))) (toChars!9027 (transformation!6680 (rule!9672 token!484))))) (and b!3973563 b_free!110143 (= (toChars!9027 (transformation!6680 (h!47850 (t!330969 rules!2999)))) (toChars!9027 (transformation!6680 (rule!9672 token!484))))) b_lambda!116129)))

(declare-fun b_lambda!116131 () Bool)

(assert (= b_lambda!116119 (or (and b!3973006 b_free!110129) (and b!3972985 b_free!110133 (= (toValue!9168 (transformation!6680 (h!47850 rules!2999))) (toValue!9168 (transformation!6680 (rule!9672 token!484))))) (and b!3973563 b_free!110141 (= (toValue!9168 (transformation!6680 (h!47850 (t!330969 rules!2999)))) (toValue!9168 (transformation!6680 (rule!9672 token!484))))) b_lambda!116131)))

(declare-fun b_lambda!116133 () Bool)

(assert (= b_lambda!116127 (or (and b!3973006 b_free!110131) (and b!3972985 b_free!110135 (= (toChars!9027 (transformation!6680 (h!47850 rules!2999))) (toChars!9027 (transformation!6680 (rule!9672 token!484))))) (and b!3973563 b_free!110143 (= (toChars!9027 (transformation!6680 (h!47850 (t!330969 rules!2999)))) (toChars!9027 (transformation!6680 (rule!9672 token!484))))) b_lambda!116133)))

(check-sat (not b!3973517) (not d!1176759) (not d!1176637) (not b!3973247) (not b!3973357) (not b!3973561) (not d!1176805) (not b!3973359) (not d!1176705) (not b!3973453) (not b!3973536) (not b!3973355) (not b!3973450) (not b!3973539) (not d!1176763) (not d!1176817) (not d!1176825) (not b!3973521) (not b!3973472) (not b!3973551) (not b!3973470) (not b!3973124) (not b!3973566) (not d!1176701) (not b!3973467) (not b!3973579) (not d!1176741) (not d!1176689) (not d!1176829) b_and!305461 (not b!3973466) (not b!3973474) (not b!3973503) (not b!3973552) (not b!3973463) (not b!3973564) (not b_next!110839) (not bm!285643) (not b!3973475) (not d!1176769) (not d!1176755) (not d!1176671) (not d!1176771) (not b!3973518) (not b!3973523) (not b!3973462) b_and!305455 (not b!3973058) (not d!1176797) (not b!3973148) (not b!3973188) (not b!3973459) (not b!3973271) (not b!3973454) (not d!1176779) (not b_next!110833) (not b!3973455) (not b!3973534) (not b!3973059) (not b!3973276) (not b!3973448) (not b!3973497) (not d!1176799) (not b!3973505) b_and!305447 (not b!3973545) (not b!3973370) (not b!3973541) (not b!3973507) (not tb!239677) (not tb!239689) (not b!3973479) (not b!3973451) (not d!1176765) (not b!3973273) (not b!3973354) (not b!3973530) (not b!3973525) (not b!3973353) (not b!3973458) (not d!1176625) (not b!3973369) (not d!1176645) (not d!1176821) (not d!1176761) (not bm!285639) (not b!3973105) (not b_next!110847) (not d!1176651) (not b!3973379) (not b!3973238) (not d!1176803) (not b!3973243) (not b!3973248) (not b!3973533) (not d!1176703) (not b!3973522) (not b!3973580) (not b!3973583) b_and!305457 (not b!3973177) (not b_lambda!116129) (not d!1176699) (not b!3973499) (not b_next!110845) (not d!1176777) (not d!1176767) (not b!3973582) (not b!3973471) (not b!3973236) (not b!3973358) (not b!3973540) (not b_next!110835) b_and!305459 (not b!3973378) b_and!305449 (not d!1176789) (not b!3973361) (not b!3973456) (not b_next!110837) (not d!1176757) (not b!3973501) (not b!3973493) (not b!3973527) (not b!3973550) (not b_lambda!116131) tp_is_empty!20141 (not d!1176813) (not d!1176815) (not b!3973482) (not b!3973526) (not b!3973544) (not b!3973508) (not b!3973562) (not b!3973452) (not d!1176791) (not b!3973519) (not b!3973380) (not b!3973494) (not b!3973178) (not b!3973531) (not b!3973578) (not b_lambda!116133) (not b!3973241) (not b!3973565) (not b!3973478) (not b!3973356) (not b!3973272) (not b!3973514) (not b!3973584) (not b!3973529))
(check-sat b_and!305461 (not b_next!110839) b_and!305455 (not b_next!110833) b_and!305447 (not b_next!110847) b_and!305457 (not b_next!110845) (not b_next!110837) (not b_next!110835) b_and!305459 b_and!305449)
