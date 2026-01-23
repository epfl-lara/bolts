; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376208 () Bool)

(assert start!376208)

(declare-fun b!3997340 () Bool)

(declare-fun b_free!111041 () Bool)

(declare-fun b_next!111745 () Bool)

(assert (=> b!3997340 (= b_free!111041 (not b_next!111745))))

(declare-fun tp!1216770 () Bool)

(declare-fun b_and!306991 () Bool)

(assert (=> b!3997340 (= tp!1216770 b_and!306991)))

(declare-fun b_free!111043 () Bool)

(declare-fun b_next!111747 () Bool)

(assert (=> b!3997340 (= b_free!111043 (not b_next!111747))))

(declare-fun tp!1216773 () Bool)

(declare-fun b_and!306993 () Bool)

(assert (=> b!3997340 (= tp!1216773 b_and!306993)))

(declare-fun b!3997329 () Bool)

(declare-fun b_free!111045 () Bool)

(declare-fun b_next!111749 () Bool)

(assert (=> b!3997329 (= b_free!111045 (not b_next!111749))))

(declare-fun tp!1216764 () Bool)

(declare-fun b_and!306995 () Bool)

(assert (=> b!3997329 (= tp!1216764 b_and!306995)))

(declare-fun b_free!111047 () Bool)

(declare-fun b_next!111751 () Bool)

(assert (=> b!3997329 (= b_free!111047 (not b_next!111751))))

(declare-fun tp!1216768 () Bool)

(declare-fun b_and!306997 () Bool)

(assert (=> b!3997329 (= tp!1216768 b_and!306997)))

(declare-fun b!3997322 () Bool)

(declare-fun e!2478321 () Bool)

(declare-fun e!2478331 () Bool)

(assert (=> b!3997322 (= e!2478321 e!2478331)))

(declare-fun res!1623461 () Bool)

(assert (=> b!3997322 (=> (not res!1623461) (not e!2478331))))

(declare-fun lt!1411973 () Int)

(declare-fun lt!1411943 () Int)

(assert (=> b!3997322 (= res!1623461 (>= lt!1411973 lt!1411943))))

(declare-datatypes ((C!23548 0))(
  ( (C!23549 (val!13868 Int)) )
))
(declare-datatypes ((List!42876 0))(
  ( (Nil!42752) (Cons!42752 (h!48172 C!23548) (t!332059 List!42876)) )
))
(declare-fun lt!1411960 () List!42876)

(declare-fun size!31971 (List!42876) Int)

(assert (=> b!3997322 (= lt!1411943 (size!31971 lt!1411960))))

(declare-fun prefix!494 () List!42876)

(assert (=> b!3997322 (= lt!1411973 (size!31971 prefix!494))))

(declare-datatypes ((IArray!25979 0))(
  ( (IArray!25980 (innerList!13047 List!42876)) )
))
(declare-datatypes ((Conc!12987 0))(
  ( (Node!12987 (left!32281 Conc!12987) (right!32611 Conc!12987) (csize!26204 Int) (cheight!13198 Int)) (Leaf!20082 (xs!16293 IArray!25979) (csize!26205 Int)) (Empty!12987) )
))
(declare-datatypes ((BalanceConc!25568 0))(
  ( (BalanceConc!25569 (c!691552 Conc!12987)) )
))
(declare-datatypes ((List!42877 0))(
  ( (Nil!42753) (Cons!42753 (h!48173 (_ BitVec 16)) (t!332060 List!42877)) )
))
(declare-datatypes ((TokenValue!7006 0))(
  ( (FloatLiteralValue!14012 (text!49487 List!42877)) (TokenValueExt!7005 (__x!26229 Int)) (Broken!35030 (value!213724 List!42877)) (Object!7129) (End!7006) (Def!7006) (Underscore!7006) (Match!7006) (Else!7006) (Error!7006) (Case!7006) (If!7006) (Extends!7006) (Abstract!7006) (Class!7006) (Val!7006) (DelimiterValue!14012 (del!7066 List!42877)) (KeywordValue!7012 (value!213725 List!42877)) (CommentValue!14012 (value!213726 List!42877)) (WhitespaceValue!14012 (value!213727 List!42877)) (IndentationValue!7006 (value!213728 List!42877)) (String!48747) (Int32!7006) (Broken!35031 (value!213729 List!42877)) (Boolean!7007) (Unit!61657) (OperatorValue!7009 (op!7066 List!42877)) (IdentifierValue!14012 (value!213730 List!42877)) (IdentifierValue!14013 (value!213731 List!42877)) (WhitespaceValue!14013 (value!213732 List!42877)) (True!14012) (False!14012) (Broken!35032 (value!213733 List!42877)) (Broken!35033 (value!213734 List!42877)) (True!14013) (RightBrace!7006) (RightBracket!7006) (Colon!7006) (Null!7006) (Comma!7006) (LeftBracket!7006) (False!14013) (LeftBrace!7006) (ImaginaryLiteralValue!7006 (text!49488 List!42877)) (StringLiteralValue!21018 (value!213735 List!42877)) (EOFValue!7006 (value!213736 List!42877)) (IdentValue!7006 (value!213737 List!42877)) (DelimiterValue!14013 (value!213738 List!42877)) (DedentValue!7006 (value!213739 List!42877)) (NewLineValue!7006 (value!213740 List!42877)) (IntegerValue!21018 (value!213741 (_ BitVec 32)) (text!49489 List!42877)) (IntegerValue!21019 (value!213742 Int) (text!49490 List!42877)) (Times!7006) (Or!7006) (Equal!7006) (Minus!7006) (Broken!35034 (value!213743 List!42877)) (And!7006) (Div!7006) (LessEqual!7006) (Mod!7006) (Concat!18687) (Not!7006) (Plus!7006) (SpaceValue!7006 (value!213744 List!42877)) (IntegerValue!21020 (value!213745 Int) (text!49491 List!42877)) (StringLiteralValue!21019 (text!49492 List!42877)) (FloatLiteralValue!14013 (text!49493 List!42877)) (BytesLiteralValue!7006 (value!213746 List!42877)) (CommentValue!14013 (value!213747 List!42877)) (StringLiteralValue!21020 (value!213748 List!42877)) (ErrorTokenValue!7006 (msg!7067 List!42877)) )
))
(declare-datatypes ((Regex!11681 0))(
  ( (ElementMatch!11681 (c!691553 C!23548)) (Concat!18688 (regOne!23874 Regex!11681) (regTwo!23874 Regex!11681)) (EmptyExpr!11681) (Star!11681 (reg!12010 Regex!11681)) (EmptyLang!11681) (Union!11681 (regOne!23875 Regex!11681) (regTwo!23875 Regex!11681)) )
))
(declare-datatypes ((String!48748 0))(
  ( (String!48749 (value!213749 String)) )
))
(declare-datatypes ((TokenValueInjection!13440 0))(
  ( (TokenValueInjection!13441 (toValue!9264 Int) (toChars!9123 Int)) )
))
(declare-datatypes ((Rule!13352 0))(
  ( (Rule!13353 (regex!6776 Regex!11681) (tag!7636 String!48748) (isSeparator!6776 Bool) (transformation!6776 TokenValueInjection!13440)) )
))
(declare-datatypes ((Token!12690 0))(
  ( (Token!12691 (value!213750 TokenValue!7006) (rule!9804 Rule!13352) (size!31972 Int) (originalCharacters!7376 List!42876)) )
))
(declare-fun token!484 () Token!12690)

(declare-fun list!15876 (BalanceConc!25568) List!42876)

(declare-fun charsOf!4592 (Token!12690) BalanceConc!25568)

(assert (=> b!3997322 (= lt!1411960 (list!15876 (charsOf!4592 token!484)))))

(declare-fun b!3997323 () Bool)

(declare-fun e!2478297 () Bool)

(declare-fun e!2478335 () Bool)

(assert (=> b!3997323 (= e!2478297 e!2478335)))

(declare-fun res!1623475 () Bool)

(assert (=> b!3997323 (=> res!1623475 e!2478335)))

(declare-fun lt!1411957 () List!42876)

(declare-fun lt!1411942 () List!42876)

(assert (=> b!3997323 (= res!1623475 (not (= lt!1411957 lt!1411942)))))

(declare-fun lt!1411977 () List!42876)

(declare-fun ++!11178 (List!42876 List!42876) List!42876)

(assert (=> b!3997323 (= lt!1411957 (++!11178 prefix!494 lt!1411977))))

(declare-fun lt!1411949 () List!42876)

(declare-fun lt!1411975 () List!42876)

(assert (=> b!3997323 (= lt!1411957 (++!11178 lt!1411949 lt!1411975))))

(declare-fun newSuffix!27 () List!42876)

(declare-datatypes ((Unit!61658 0))(
  ( (Unit!61659) )
))
(declare-fun lt!1411956 () Unit!61658)

(declare-fun lemmaConcatAssociativity!2498 (List!42876 List!42876 List!42876) Unit!61658)

(assert (=> b!3997323 (= lt!1411956 (lemmaConcatAssociativity!2498 prefix!494 newSuffix!27 lt!1411975))))

(declare-fun b!3997324 () Bool)

(declare-fun e!2478327 () Bool)

(declare-fun tp_is_empty!20333 () Bool)

(declare-fun tp!1216775 () Bool)

(assert (=> b!3997324 (= e!2478327 (and tp_is_empty!20333 tp!1216775))))

(declare-fun b!3997326 () Bool)

(declare-fun e!2478324 () Bool)

(declare-fun e!2478336 () Bool)

(assert (=> b!3997326 (= e!2478324 e!2478336)))

(declare-fun res!1623481 () Bool)

(assert (=> b!3997326 (=> res!1623481 e!2478336)))

(declare-fun lt!1411984 () List!42876)

(assert (=> b!3997326 (= res!1623481 (not (= lt!1411984 prefix!494)))))

(declare-fun lt!1411992 () List!42876)

(assert (=> b!3997326 (= lt!1411984 (++!11178 lt!1411960 lt!1411992))))

(declare-fun getSuffix!2294 (List!42876 List!42876) List!42876)

(assert (=> b!3997326 (= lt!1411992 (getSuffix!2294 prefix!494 lt!1411960))))

(declare-fun isPrefix!3863 (List!42876 List!42876) Bool)

(assert (=> b!3997326 (isPrefix!3863 lt!1411960 prefix!494)))

(declare-fun lt!1411978 () Unit!61658)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!441 (List!42876 List!42876 List!42876) Unit!61658)

(assert (=> b!3997326 (= lt!1411978 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!441 prefix!494 lt!1411960 lt!1411942))))

(declare-fun b!3997327 () Bool)

(declare-fun tp!1216765 () Bool)

(declare-fun e!2478307 () Bool)

(declare-datatypes ((List!42878 0))(
  ( (Nil!42754) (Cons!42754 (h!48174 Rule!13352) (t!332061 List!42878)) )
))
(declare-fun rules!2999 () List!42878)

(declare-fun e!2478299 () Bool)

(declare-fun inv!57096 (String!48748) Bool)

(declare-fun inv!57099 (TokenValueInjection!13440) Bool)

(assert (=> b!3997327 (= e!2478299 (and tp!1216765 (inv!57096 (tag!7636 (h!48174 rules!2999))) (inv!57099 (transformation!6776 (h!48174 rules!2999))) e!2478307))))

(declare-fun b!3997328 () Bool)

(declare-fun e!2478312 () Bool)

(declare-fun tp!1216772 () Bool)

(assert (=> b!3997328 (= e!2478312 (and e!2478299 tp!1216772))))

(declare-fun e!2478310 () Bool)

(assert (=> b!3997329 (= e!2478310 (and tp!1216764 tp!1216768))))

(declare-fun e!2478315 () Bool)

(declare-fun b!3997330 () Bool)

(declare-fun tp!1216771 () Bool)

(assert (=> b!3997330 (= e!2478315 (and tp!1216771 (inv!57096 (tag!7636 (rule!9804 token!484))) (inv!57099 (transformation!6776 (rule!9804 token!484))) e!2478310))))

(declare-fun b!3997331 () Bool)

(declare-fun e!2478300 () Unit!61658)

(declare-fun Unit!61660 () Unit!61658)

(assert (=> b!3997331 (= e!2478300 Unit!61660)))

(declare-fun b!3997332 () Bool)

(declare-fun e!2478330 () Bool)

(declare-fun e!2478322 () Bool)

(assert (=> b!3997332 (= e!2478330 e!2478322)))

(declare-fun res!1623468 () Bool)

(assert (=> b!3997332 (=> res!1623468 e!2478322)))

(declare-fun matchR!5658 (Regex!11681 List!42876) Bool)

(assert (=> b!3997332 (= res!1623468 (not (matchR!5658 (regex!6776 (rule!9804 token!484)) lt!1411960)))))

(assert (=> b!3997332 (isPrefix!3863 lt!1411960 lt!1411949)))

(declare-fun lt!1411933 () Unit!61658)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!696 (List!42876 List!42876 List!42876) Unit!61658)

(assert (=> b!3997332 (= lt!1411933 (lemmaPrefixStaysPrefixWhenAddingToSuffix!696 lt!1411960 prefix!494 newSuffix!27))))

(declare-fun lt!1411986 () Unit!61658)

(declare-fun suffix!1299 () List!42876)

(assert (=> b!3997332 (= lt!1411986 (lemmaPrefixStaysPrefixWhenAddingToSuffix!696 lt!1411960 prefix!494 suffix!1299))))

(declare-fun b!3997333 () Bool)

(declare-fun e!2478323 () Unit!61658)

(declare-fun Unit!61661 () Unit!61658)

(assert (=> b!3997333 (= e!2478323 Unit!61661)))

(declare-datatypes ((tuple2!41942 0))(
  ( (tuple2!41943 (_1!24105 Token!12690) (_2!24105 List!42876)) )
))
(declare-datatypes ((Option!9190 0))(
  ( (None!9189) (Some!9189 (v!39549 tuple2!41942)) )
))
(declare-fun lt!1411969 () Option!9190)

(declare-fun lt!1411994 () Unit!61658)

(declare-fun lt!1411944 () List!42876)

(declare-datatypes ((LexerInterface!6365 0))(
  ( (LexerInterfaceExt!6362 (__x!26230 Int)) (Lexer!6363) )
))
(declare-fun thiss!21717 () LexerInterface!6365)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!272 (LexerInterface!6365 List!42878 Rule!13352 List!42876 List!42876 Rule!13352) Unit!61658)

(assert (=> b!3997333 (= lt!1411994 (lemmaMaxPrefNoSmallerRuleMatches!272 thiss!21717 rules!2999 (rule!9804 (_1!24105 (v!39549 lt!1411969))) lt!1411944 lt!1411949 (rule!9804 token!484)))))

(declare-fun res!1623482 () Bool)

(assert (=> b!3997333 (= res!1623482 (not (matchR!5658 (regex!6776 (rule!9804 token!484)) lt!1411944)))))

(declare-fun e!2478334 () Bool)

(assert (=> b!3997333 (=> (not res!1623482) (not e!2478334))))

(assert (=> b!3997333 e!2478334))

(declare-fun b!3997334 () Bool)

(declare-fun e!2478304 () Bool)

(declare-fun e!2478320 () Bool)

(assert (=> b!3997334 (= e!2478304 e!2478320)))

(declare-fun res!1623472 () Bool)

(assert (=> b!3997334 (=> res!1623472 e!2478320)))

(declare-fun lt!1411951 () Int)

(assert (=> b!3997334 (= res!1623472 (not (= lt!1411943 lt!1411951)))))

(declare-fun lt!1411937 () Unit!61658)

(assert (=> b!3997334 (= lt!1411937 e!2478300)))

(declare-fun c!691550 () Bool)

(assert (=> b!3997334 (= c!691550 (< lt!1411951 lt!1411943))))

(declare-fun lt!1411987 () Unit!61658)

(declare-fun e!2478298 () Unit!61658)

(assert (=> b!3997334 (= lt!1411987 e!2478298)))

(declare-fun c!691548 () Bool)

(assert (=> b!3997334 (= c!691548 (> lt!1411951 lt!1411943))))

(declare-fun lt!1411981 () List!42876)

(assert (=> b!3997334 (= (_2!24105 (v!39549 lt!1411969)) lt!1411981)))

(declare-fun lt!1411934 () Unit!61658)

(declare-fun lemmaSamePrefixThenSameSuffix!2050 (List!42876 List!42876 List!42876 List!42876 List!42876) Unit!61658)

(assert (=> b!3997334 (= lt!1411934 (lemmaSamePrefixThenSameSuffix!2050 lt!1411944 (_2!24105 (v!39549 lt!1411969)) lt!1411944 lt!1411981 lt!1411949))))

(declare-fun lt!1411935 () List!42876)

(assert (=> b!3997334 (isPrefix!3863 lt!1411944 lt!1411935)))

(declare-fun lt!1411965 () Unit!61658)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2706 (List!42876 List!42876) Unit!61658)

(assert (=> b!3997334 (= lt!1411965 (lemmaConcatTwoListThenFirstIsPrefix!2706 lt!1411944 lt!1411981))))

(declare-fun b!3997335 () Bool)

(declare-fun e!2478313 () Bool)

(assert (=> b!3997335 (= e!2478322 e!2478313)))

(declare-fun res!1623473 () Bool)

(assert (=> b!3997335 (=> res!1623473 e!2478313)))

(declare-fun lt!1411990 () List!42876)

(assert (=> b!3997335 (= res!1623473 (not (= lt!1411990 lt!1411942)))))

(declare-fun lt!1411982 () List!42876)

(assert (=> b!3997335 (= lt!1411990 (++!11178 lt!1411960 lt!1411982))))

(assert (=> b!3997335 (= lt!1411982 (getSuffix!2294 lt!1411942 lt!1411960))))

(declare-fun e!2478302 () Bool)

(assert (=> b!3997335 e!2478302))

(declare-fun res!1623462 () Bool)

(assert (=> b!3997335 (=> (not res!1623462) (not e!2478302))))

(assert (=> b!3997335 (= res!1623462 (isPrefix!3863 lt!1411942 lt!1411942))))

(declare-fun lt!1411997 () Unit!61658)

(declare-fun lemmaIsPrefixRefl!2455 (List!42876 List!42876) Unit!61658)

(assert (=> b!3997335 (= lt!1411997 (lemmaIsPrefixRefl!2455 lt!1411942 lt!1411942))))

(declare-fun b!3997336 () Bool)

(declare-fun res!1623464 () Bool)

(declare-fun e!2478301 () Bool)

(assert (=> b!3997336 (=> res!1623464 e!2478301)))

(declare-fun lt!1411931 () List!42876)

(assert (=> b!3997336 (= res!1623464 (not (= lt!1411931 lt!1411949)))))

(declare-fun b!3997337 () Bool)

(declare-fun e!2478309 () Bool)

(declare-fun tp!1216766 () Bool)

(assert (=> b!3997337 (= e!2478309 (and tp_is_empty!20333 tp!1216766))))

(declare-fun b!3997338 () Bool)

(declare-fun e!2478314 () Bool)

(assert (=> b!3997338 (= e!2478336 e!2478314)))

(declare-fun res!1623467 () Bool)

(assert (=> b!3997338 (=> res!1623467 e!2478314)))

(declare-fun lt!1411971 () List!42876)

(declare-fun lt!1411940 () List!42876)

(assert (=> b!3997338 (= res!1623467 (or (not (= lt!1411942 lt!1411971)) (not (= lt!1411942 lt!1411940))))))

(assert (=> b!3997338 (= lt!1411971 lt!1411940)))

(declare-fun lt!1411985 () List!42876)

(assert (=> b!3997338 (= lt!1411940 (++!11178 lt!1411960 lt!1411985))))

(assert (=> b!3997338 (= lt!1411971 (++!11178 lt!1411984 suffix!1299))))

(assert (=> b!3997338 (= lt!1411985 (++!11178 lt!1411992 suffix!1299))))

(declare-fun lt!1411970 () Unit!61658)

(assert (=> b!3997338 (= lt!1411970 (lemmaConcatAssociativity!2498 lt!1411960 lt!1411992 suffix!1299))))

(declare-fun b!3997339 () Bool)

(declare-fun res!1623487 () Bool)

(assert (=> b!3997339 (=> (not res!1623487) (not e!2478302))))

(assert (=> b!3997339 (= res!1623487 (= (size!31972 token!484) (size!31971 (originalCharacters!7376 token!484))))))

(assert (=> b!3997340 (= e!2478307 (and tp!1216770 tp!1216773))))

(declare-fun b!3997341 () Bool)

(declare-fun e!2478311 () Bool)

(assert (=> b!3997341 (= e!2478311 e!2478297)))

(declare-fun res!1623470 () Bool)

(assert (=> b!3997341 (=> res!1623470 e!2478297)))

(assert (=> b!3997341 (= res!1623470 (not (= lt!1411977 suffix!1299)))))

(assert (=> b!3997341 (= lt!1411977 (++!11178 newSuffix!27 lt!1411975))))

(assert (=> b!3997341 (= lt!1411975 (getSuffix!2294 suffix!1299 newSuffix!27))))

(declare-fun b!3997342 () Bool)

(declare-fun e!2478317 () Bool)

(assert (=> b!3997342 (= e!2478317 false)))

(declare-fun b!3997343 () Bool)

(assert (=> b!3997343 (= e!2478301 e!2478304)))

(declare-fun res!1623465 () Bool)

(assert (=> b!3997343 (=> res!1623465 e!2478304)))

(assert (=> b!3997343 (= res!1623465 (not (= lt!1411935 lt!1411949)))))

(assert (=> b!3997343 (= lt!1411935 (++!11178 lt!1411944 lt!1411981))))

(assert (=> b!3997343 (= lt!1411981 (getSuffix!2294 lt!1411949 lt!1411944))))

(declare-fun b!3997344 () Bool)

(declare-fun res!1623476 () Bool)

(assert (=> b!3997344 (=> (not res!1623476) (not e!2478302))))

(declare-fun lt!1411988 () TokenValue!7006)

(assert (=> b!3997344 (= res!1623476 (= (value!213750 token!484) lt!1411988))))

(declare-fun b!3997345 () Bool)

(declare-fun e!2478303 () Bool)

(assert (=> b!3997345 (= e!2478303 false)))

(declare-fun b!3997346 () Bool)

(declare-fun Unit!61662 () Unit!61658)

(assert (=> b!3997346 (= e!2478300 Unit!61662)))

(declare-fun lt!1411963 () Unit!61658)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!430 (LexerInterface!6365 List!42878 Rule!13352 List!42876 List!42876 List!42876 Rule!13352) Unit!61658)

(assert (=> b!3997346 (= lt!1411963 (lemmaMaxPrefixOutputsMaxPrefix!430 thiss!21717 rules!2999 (rule!9804 (_1!24105 (v!39549 lt!1411969))) lt!1411944 lt!1411949 lt!1411960 (rule!9804 token!484)))))

(assert (=> b!3997346 false))

(declare-fun b!3997347 () Bool)

(assert (=> b!3997347 (= e!2478334 false)))

(declare-fun res!1623469 () Bool)

(assert (=> start!376208 (=> (not res!1623469) (not e!2478321))))

(get-info :version)

(assert (=> start!376208 (= res!1623469 ((_ is Lexer!6363) thiss!21717))))

(assert (=> start!376208 e!2478321))

(declare-fun e!2478333 () Bool)

(assert (=> start!376208 e!2478333))

(declare-fun e!2478332 () Bool)

(declare-fun inv!57100 (Token!12690) Bool)

(assert (=> start!376208 (and (inv!57100 token!484) e!2478332)))

(declare-fun e!2478328 () Bool)

(assert (=> start!376208 e!2478328))

(declare-fun e!2478318 () Bool)

(assert (=> start!376208 e!2478318))

(assert (=> start!376208 e!2478327))

(assert (=> start!376208 true))

(assert (=> start!376208 e!2478312))

(assert (=> start!376208 e!2478309))

(declare-fun b!3997325 () Bool)

(declare-fun e!2478306 () Bool)

(declare-fun e!2478325 () Bool)

(assert (=> b!3997325 (= e!2478306 (not e!2478325))))

(declare-fun res!1623486 () Bool)

(assert (=> b!3997325 (=> res!1623486 e!2478325)))

(declare-fun lt!1411958 () List!42876)

(assert (=> b!3997325 (= res!1623486 (not (= lt!1411958 lt!1411942)))))

(declare-fun suffixResult!105 () List!42876)

(assert (=> b!3997325 (= lt!1411958 (++!11178 lt!1411960 suffixResult!105))))

(declare-fun lt!1411972 () Unit!61658)

(declare-fun lemmaInv!991 (TokenValueInjection!13440) Unit!61658)

(assert (=> b!3997325 (= lt!1411972 (lemmaInv!991 (transformation!6776 (rule!9804 token!484))))))

(declare-fun ruleValid!2708 (LexerInterface!6365 Rule!13352) Bool)

(assert (=> b!3997325 (ruleValid!2708 thiss!21717 (rule!9804 token!484))))

(declare-fun lt!1411993 () Unit!61658)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1782 (LexerInterface!6365 Rule!13352 List!42878) Unit!61658)

(assert (=> b!3997325 (= lt!1411993 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1782 thiss!21717 (rule!9804 token!484) rules!2999))))

(declare-fun b!3997348 () Bool)

(declare-fun tp!1216767 () Bool)

(assert (=> b!3997348 (= e!2478333 (and tp_is_empty!20333 tp!1216767))))

(declare-fun b!3997349 () Bool)

(declare-fun Unit!61663 () Unit!61658)

(assert (=> b!3997349 (= e!2478298 Unit!61663)))

(declare-fun lt!1411955 () Unit!61658)

(assert (=> b!3997349 (= lt!1411955 (lemmaMaxPrefixOutputsMaxPrefix!430 thiss!21717 rules!2999 (rule!9804 token!484) lt!1411960 lt!1411942 lt!1411944 (rule!9804 (_1!24105 (v!39549 lt!1411969)))))))

(declare-fun res!1623488 () Bool)

(assert (=> b!3997349 (= res!1623488 (not (matchR!5658 (regex!6776 (rule!9804 (_1!24105 (v!39549 lt!1411969)))) lt!1411944)))))

(assert (=> b!3997349 (=> (not res!1623488) (not e!2478303))))

(assert (=> b!3997349 e!2478303))

(declare-fun b!3997350 () Bool)

(assert (=> b!3997350 (= e!2478314 e!2478330)))

(declare-fun res!1623483 () Bool)

(assert (=> b!3997350 (=> res!1623483 e!2478330)))

(declare-fun lt!1411966 () Option!9190)

(declare-fun lt!1411948 () Option!9190)

(assert (=> b!3997350 (= res!1623483 (not (= lt!1411966 lt!1411948)))))

(declare-fun lt!1411953 () Token!12690)

(assert (=> b!3997350 (= lt!1411966 (Some!9189 (tuple2!41943 lt!1411953 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2697 (LexerInterface!6365 Rule!13352 List!42876) Option!9190)

(assert (=> b!3997350 (= lt!1411966 (maxPrefixOneRule!2697 thiss!21717 (rule!9804 token!484) lt!1411942))))

(assert (=> b!3997350 (= lt!1411953 (Token!12691 lt!1411988 (rule!9804 token!484) lt!1411943 lt!1411960))))

(declare-fun apply!9987 (TokenValueInjection!13440 BalanceConc!25568) TokenValue!7006)

(declare-fun seqFromList!5015 (List!42876) BalanceConc!25568)

(assert (=> b!3997350 (= lt!1411988 (apply!9987 (transformation!6776 (rule!9804 token!484)) (seqFromList!5015 lt!1411960)))))

(declare-fun lt!1411954 () Unit!61658)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1519 (LexerInterface!6365 List!42878 List!42876 List!42876 List!42876 Rule!13352) Unit!61658)

(assert (=> b!3997350 (= lt!1411954 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1519 thiss!21717 rules!2999 lt!1411960 lt!1411942 suffixResult!105 (rule!9804 token!484)))))

(assert (=> b!3997350 (= lt!1411985 suffixResult!105)))

(declare-fun lt!1411961 () Unit!61658)

(assert (=> b!3997350 (= lt!1411961 (lemmaSamePrefixThenSameSuffix!2050 lt!1411960 lt!1411985 lt!1411960 suffixResult!105 lt!1411942))))

(assert (=> b!3997350 (isPrefix!3863 lt!1411960 lt!1411940)))

(declare-fun lt!1411976 () Unit!61658)

(assert (=> b!3997350 (= lt!1411976 (lemmaConcatTwoListThenFirstIsPrefix!2706 lt!1411960 lt!1411985))))

(declare-fun b!3997351 () Bool)

(declare-fun Unit!61664 () Unit!61658)

(assert (=> b!3997351 (= e!2478298 Unit!61664)))

(declare-fun b!3997352 () Bool)

(assert (=> b!3997352 (= e!2478302 (and (= (size!31972 token!484) lt!1411943) (= (originalCharacters!7376 token!484) lt!1411960)))))

(declare-fun b!3997353 () Bool)

(assert (=> b!3997353 (= e!2478335 e!2478301)))

(declare-fun res!1623489 () Bool)

(assert (=> b!3997353 (=> res!1623489 e!2478301)))

(assert (=> b!3997353 (= res!1623489 (not (isPrefix!3863 lt!1411944 lt!1411942)))))

(assert (=> b!3997353 (isPrefix!3863 lt!1411944 lt!1411957)))

(declare-fun lt!1411964 () Unit!61658)

(assert (=> b!3997353 (= lt!1411964 (lemmaPrefixStaysPrefixWhenAddingToSuffix!696 lt!1411944 lt!1411949 lt!1411975))))

(declare-fun b!3997354 () Bool)

(declare-fun tp!1216776 () Bool)

(assert (=> b!3997354 (= e!2478328 (and tp_is_empty!20333 tp!1216776))))

(declare-fun b!3997355 () Bool)

(declare-fun Unit!61665 () Unit!61658)

(assert (=> b!3997355 (= e!2478323 Unit!61665)))

(declare-fun b!3997356 () Bool)

(declare-fun e!2478326 () Bool)

(assert (=> b!3997356 (= e!2478326 e!2478311)))

(declare-fun res!1623485 () Bool)

(assert (=> b!3997356 (=> res!1623485 e!2478311)))

(declare-fun lt!1411959 () Option!9190)

(assert (=> b!3997356 (= res!1623485 (not (= lt!1411959 (Some!9189 (v!39549 lt!1411969)))))))

(declare-fun newSuffixResult!27 () List!42876)

(assert (=> b!3997356 (isPrefix!3863 lt!1411944 (++!11178 lt!1411944 newSuffixResult!27))))

(declare-fun lt!1411947 () Unit!61658)

(assert (=> b!3997356 (= lt!1411947 (lemmaConcatTwoListThenFirstIsPrefix!2706 lt!1411944 newSuffixResult!27))))

(assert (=> b!3997356 (isPrefix!3863 lt!1411944 lt!1411931)))

(assert (=> b!3997356 (= lt!1411931 (++!11178 lt!1411944 (_2!24105 (v!39549 lt!1411969))))))

(declare-fun lt!1411979 () Unit!61658)

(assert (=> b!3997356 (= lt!1411979 (lemmaConcatTwoListThenFirstIsPrefix!2706 lt!1411944 (_2!24105 (v!39549 lt!1411969))))))

(declare-fun lt!1411936 () TokenValue!7006)

(assert (=> b!3997356 (= lt!1411959 (Some!9189 (tuple2!41943 (Token!12691 lt!1411936 (rule!9804 (_1!24105 (v!39549 lt!1411969))) lt!1411951 lt!1411944) (_2!24105 (v!39549 lt!1411969)))))))

(assert (=> b!3997356 (= lt!1411959 (maxPrefixOneRule!2697 thiss!21717 (rule!9804 (_1!24105 (v!39549 lt!1411969))) lt!1411949))))

(assert (=> b!3997356 (= lt!1411951 (size!31971 lt!1411944))))

(assert (=> b!3997356 (= lt!1411936 (apply!9987 (transformation!6776 (rule!9804 (_1!24105 (v!39549 lt!1411969)))) (seqFromList!5015 lt!1411944)))))

(declare-fun lt!1411952 () Unit!61658)

(assert (=> b!3997356 (= lt!1411952 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1519 thiss!21717 rules!2999 lt!1411944 lt!1411949 (_2!24105 (v!39549 lt!1411969)) (rule!9804 (_1!24105 (v!39549 lt!1411969)))))))

(assert (=> b!3997356 (= lt!1411944 (list!15876 (charsOf!4592 (_1!24105 (v!39549 lt!1411969)))))))

(declare-fun lt!1411930 () Unit!61658)

(assert (=> b!3997356 (= lt!1411930 (lemmaInv!991 (transformation!6776 (rule!9804 (_1!24105 (v!39549 lt!1411969))))))))

(assert (=> b!3997356 (ruleValid!2708 thiss!21717 (rule!9804 (_1!24105 (v!39549 lt!1411969))))))

(declare-fun lt!1411932 () Unit!61658)

(assert (=> b!3997356 (= lt!1411932 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1782 thiss!21717 (rule!9804 (_1!24105 (v!39549 lt!1411969))) rules!2999))))

(declare-fun lt!1411962 () Unit!61658)

(declare-fun lemmaCharactersSize!1371 (Token!12690) Unit!61658)

(assert (=> b!3997356 (= lt!1411962 (lemmaCharactersSize!1371 token!484))))

(declare-fun lt!1411950 () Unit!61658)

(assert (=> b!3997356 (= lt!1411950 (lemmaCharactersSize!1371 (_1!24105 (v!39549 lt!1411969))))))

(declare-fun b!3997357 () Bool)

(declare-fun res!1623471 () Bool)

(assert (=> b!3997357 (=> (not res!1623471) (not e!2478321))))

(assert (=> b!3997357 (= res!1623471 (isPrefix!3863 newSuffix!27 suffix!1299))))

(declare-fun b!3997358 () Bool)

(assert (=> b!3997358 (= e!2478320 true)))

(assert (=> b!3997358 (= (rule!9804 (_1!24105 (v!39549 lt!1411969))) (rule!9804 token!484))))

(declare-fun lt!1411968 () Unit!61658)

(declare-fun lemmaSameIndexThenSameElement!252 (List!42878 Rule!13352 Rule!13352) Unit!61658)

(assert (=> b!3997358 (= lt!1411968 (lemmaSameIndexThenSameElement!252 rules!2999 (rule!9804 (_1!24105 (v!39549 lt!1411969))) (rule!9804 token!484)))))

(declare-fun lt!1411941 () Unit!61658)

(assert (=> b!3997358 (= lt!1411941 e!2478323)))

(declare-fun c!691551 () Bool)

(declare-fun lt!1411995 () Int)

(declare-fun lt!1411974 () Int)

(assert (=> b!3997358 (= c!691551 (> lt!1411995 lt!1411974))))

(declare-fun lt!1411989 () Unit!61658)

(declare-fun e!2478308 () Unit!61658)

(assert (=> b!3997358 (= lt!1411989 e!2478308)))

(declare-fun c!691549 () Bool)

(assert (=> b!3997358 (= c!691549 (< lt!1411995 lt!1411974))))

(declare-fun getIndex!546 (List!42878 Rule!13352) Int)

(assert (=> b!3997358 (= lt!1411974 (getIndex!546 rules!2999 (rule!9804 token!484)))))

(assert (=> b!3997358 (= lt!1411995 (getIndex!546 rules!2999 (rule!9804 (_1!24105 (v!39549 lt!1411969)))))))

(assert (=> b!3997358 (= (_2!24105 (v!39549 lt!1411969)) newSuffixResult!27)))

(declare-fun lt!1411996 () Unit!61658)

(assert (=> b!3997358 (= lt!1411996 (lemmaSamePrefixThenSameSuffix!2050 lt!1411944 (_2!24105 (v!39549 lt!1411969)) lt!1411960 newSuffixResult!27 lt!1411949))))

(assert (=> b!3997358 (= lt!1411944 lt!1411960)))

(declare-fun lt!1411939 () Unit!61658)

(declare-fun lemmaIsPrefixSameLengthThenSameList!885 (List!42876 List!42876 List!42876) Unit!61658)

(assert (=> b!3997358 (= lt!1411939 (lemmaIsPrefixSameLengthThenSameList!885 lt!1411944 lt!1411960 lt!1411949))))

(declare-fun b!3997359 () Bool)

(declare-fun res!1623480 () Bool)

(assert (=> b!3997359 (=> res!1623480 e!2478320)))

(assert (=> b!3997359 (= res!1623480 (not (isPrefix!3863 lt!1411944 lt!1411949)))))

(declare-fun b!3997360 () Bool)

(assert (=> b!3997360 (= e!2478313 e!2478326)))

(declare-fun res!1623490 () Bool)

(assert (=> b!3997360 (=> res!1623490 e!2478326)))

(assert (=> b!3997360 (= res!1623490 (not ((_ is Some!9189) lt!1411969)))))

(declare-fun maxPrefix!3663 (LexerInterface!6365 List!42878 List!42876) Option!9190)

(assert (=> b!3997360 (= lt!1411969 (maxPrefix!3663 thiss!21717 rules!2999 lt!1411949))))

(declare-fun lt!1411967 () tuple2!41942)

(assert (=> b!3997360 (and (= suffixResult!105 lt!1411982) (= lt!1411967 (tuple2!41943 lt!1411953 lt!1411982)))))

(declare-fun lt!1411980 () Unit!61658)

(assert (=> b!3997360 (= lt!1411980 (lemmaSamePrefixThenSameSuffix!2050 lt!1411960 suffixResult!105 lt!1411960 lt!1411982 lt!1411942))))

(assert (=> b!3997360 (isPrefix!3863 lt!1411960 lt!1411990)))

(declare-fun lt!1411991 () Unit!61658)

(assert (=> b!3997360 (= lt!1411991 (lemmaConcatTwoListThenFirstIsPrefix!2706 lt!1411960 lt!1411982))))

(declare-fun b!3997361 () Bool)

(declare-fun e!2478305 () Bool)

(assert (=> b!3997361 (= e!2478305 e!2478306)))

(declare-fun res!1623478 () Bool)

(assert (=> b!3997361 (=> (not res!1623478) (not e!2478306))))

(assert (=> b!3997361 (= res!1623478 (= (maxPrefix!3663 thiss!21717 rules!2999 lt!1411942) lt!1411948))))

(assert (=> b!3997361 (= lt!1411948 (Some!9189 lt!1411967))))

(assert (=> b!3997361 (= lt!1411967 (tuple2!41943 token!484 suffixResult!105))))

(assert (=> b!3997361 (= lt!1411942 (++!11178 prefix!494 suffix!1299))))

(declare-fun b!3997362 () Bool)

(declare-fun Unit!61666 () Unit!61658)

(assert (=> b!3997362 (= e!2478308 Unit!61666)))

(declare-fun lt!1411945 () Unit!61658)

(assert (=> b!3997362 (= lt!1411945 (lemmaMaxPrefNoSmallerRuleMatches!272 thiss!21717 rules!2999 (rule!9804 token!484) lt!1411960 lt!1411942 (rule!9804 (_1!24105 (v!39549 lt!1411969)))))))

(declare-fun res!1623477 () Bool)

(assert (=> b!3997362 (= res!1623477 (not (matchR!5658 (regex!6776 (rule!9804 (_1!24105 (v!39549 lt!1411969)))) lt!1411960)))))

(assert (=> b!3997362 (=> (not res!1623477) (not e!2478317))))

(assert (=> b!3997362 e!2478317))

(declare-fun b!3997363 () Bool)

(assert (=> b!3997363 (= e!2478331 e!2478305)))

(declare-fun res!1623474 () Bool)

(assert (=> b!3997363 (=> (not res!1623474) (not e!2478305))))

(declare-fun lt!1411983 () List!42876)

(assert (=> b!3997363 (= res!1623474 (= lt!1411983 lt!1411949))))

(assert (=> b!3997363 (= lt!1411949 (++!11178 prefix!494 newSuffix!27))))

(assert (=> b!3997363 (= lt!1411983 (++!11178 lt!1411960 newSuffixResult!27))))

(declare-fun b!3997364 () Bool)

(assert (=> b!3997364 (= e!2478325 e!2478324)))

(declare-fun res!1623466 () Bool)

(assert (=> b!3997364 (=> res!1623466 e!2478324)))

(assert (=> b!3997364 (= res!1623466 (not (isPrefix!3863 lt!1411960 lt!1411942)))))

(assert (=> b!3997364 (isPrefix!3863 prefix!494 lt!1411942)))

(declare-fun lt!1411946 () Unit!61658)

(assert (=> b!3997364 (= lt!1411946 (lemmaConcatTwoListThenFirstIsPrefix!2706 prefix!494 suffix!1299))))

(assert (=> b!3997364 (isPrefix!3863 lt!1411960 lt!1411958)))

(declare-fun lt!1411938 () Unit!61658)

(assert (=> b!3997364 (= lt!1411938 (lemmaConcatTwoListThenFirstIsPrefix!2706 lt!1411960 suffixResult!105))))

(declare-fun b!3997365 () Bool)

(declare-fun tp!1216769 () Bool)

(assert (=> b!3997365 (= e!2478318 (and tp_is_empty!20333 tp!1216769))))

(declare-fun b!3997366 () Bool)

(declare-fun res!1623463 () Bool)

(assert (=> b!3997366 (=> (not res!1623463) (not e!2478321))))

(declare-fun rulesInvariant!5708 (LexerInterface!6365 List!42878) Bool)

(assert (=> b!3997366 (= res!1623463 (rulesInvariant!5708 thiss!21717 rules!2999))))

(declare-fun b!3997367 () Bool)

(declare-fun res!1623479 () Bool)

(assert (=> b!3997367 (=> (not res!1623479) (not e!2478321))))

(assert (=> b!3997367 (= res!1623479 (>= (size!31971 suffix!1299) (size!31971 newSuffix!27)))))

(declare-fun b!3997368 () Bool)

(declare-fun res!1623484 () Bool)

(assert (=> b!3997368 (=> (not res!1623484) (not e!2478321))))

(declare-fun isEmpty!25552 (List!42878) Bool)

(assert (=> b!3997368 (= res!1623484 (not (isEmpty!25552 rules!2999)))))

(declare-fun tp!1216774 () Bool)

(declare-fun b!3997369 () Bool)

(declare-fun inv!21 (TokenValue!7006) Bool)

(assert (=> b!3997369 (= e!2478332 (and (inv!21 (value!213750 token!484)) e!2478315 tp!1216774))))

(declare-fun b!3997370 () Bool)

(declare-fun Unit!61667 () Unit!61658)

(assert (=> b!3997370 (= e!2478308 Unit!61667)))

(assert (= (and start!376208 res!1623469) b!3997368))

(assert (= (and b!3997368 res!1623484) b!3997366))

(assert (= (and b!3997366 res!1623463) b!3997367))

(assert (= (and b!3997367 res!1623479) b!3997357))

(assert (= (and b!3997357 res!1623471) b!3997322))

(assert (= (and b!3997322 res!1623461) b!3997363))

(assert (= (and b!3997363 res!1623474) b!3997361))

(assert (= (and b!3997361 res!1623478) b!3997325))

(assert (= (and b!3997325 (not res!1623486)) b!3997364))

(assert (= (and b!3997364 (not res!1623466)) b!3997326))

(assert (= (and b!3997326 (not res!1623481)) b!3997338))

(assert (= (and b!3997338 (not res!1623467)) b!3997350))

(assert (= (and b!3997350 (not res!1623483)) b!3997332))

(assert (= (and b!3997332 (not res!1623468)) b!3997335))

(assert (= (and b!3997335 res!1623462) b!3997344))

(assert (= (and b!3997344 res!1623476) b!3997339))

(assert (= (and b!3997339 res!1623487) b!3997352))

(assert (= (and b!3997335 (not res!1623473)) b!3997360))

(assert (= (and b!3997360 (not res!1623490)) b!3997356))

(assert (= (and b!3997356 (not res!1623485)) b!3997341))

(assert (= (and b!3997341 (not res!1623470)) b!3997323))

(assert (= (and b!3997323 (not res!1623475)) b!3997353))

(assert (= (and b!3997353 (not res!1623489)) b!3997336))

(assert (= (and b!3997336 (not res!1623464)) b!3997343))

(assert (= (and b!3997343 (not res!1623465)) b!3997334))

(assert (= (and b!3997334 c!691548) b!3997349))

(assert (= (and b!3997334 (not c!691548)) b!3997351))

(assert (= (and b!3997349 res!1623488) b!3997345))

(assert (= (and b!3997334 c!691550) b!3997346))

(assert (= (and b!3997334 (not c!691550)) b!3997331))

(assert (= (and b!3997334 (not res!1623472)) b!3997359))

(assert (= (and b!3997359 (not res!1623480)) b!3997358))

(assert (= (and b!3997358 c!691549) b!3997362))

(assert (= (and b!3997358 (not c!691549)) b!3997370))

(assert (= (and b!3997362 res!1623477) b!3997342))

(assert (= (and b!3997358 c!691551) b!3997333))

(assert (= (and b!3997358 (not c!691551)) b!3997355))

(assert (= (and b!3997333 res!1623482) b!3997347))

(assert (= (and start!376208 ((_ is Cons!42752) prefix!494)) b!3997348))

(assert (= b!3997330 b!3997329))

(assert (= b!3997369 b!3997330))

(assert (= start!376208 b!3997369))

(assert (= (and start!376208 ((_ is Cons!42752) suffixResult!105)) b!3997354))

(assert (= (and start!376208 ((_ is Cons!42752) suffix!1299)) b!3997365))

(assert (= (and start!376208 ((_ is Cons!42752) newSuffix!27)) b!3997324))

(assert (= b!3997327 b!3997340))

(assert (= b!3997328 b!3997327))

(assert (= (and start!376208 ((_ is Cons!42754) rules!2999)) b!3997328))

(assert (= (and start!376208 ((_ is Cons!42752) newSuffixResult!27)) b!3997337))

(declare-fun m!4578373 () Bool)

(assert (=> b!3997357 m!4578373))

(declare-fun m!4578375 () Bool)

(assert (=> b!3997322 m!4578375))

(declare-fun m!4578377 () Bool)

(assert (=> b!3997322 m!4578377))

(declare-fun m!4578379 () Bool)

(assert (=> b!3997322 m!4578379))

(assert (=> b!3997322 m!4578379))

(declare-fun m!4578381 () Bool)

(assert (=> b!3997322 m!4578381))

(declare-fun m!4578383 () Bool)

(assert (=> b!3997332 m!4578383))

(declare-fun m!4578385 () Bool)

(assert (=> b!3997332 m!4578385))

(declare-fun m!4578387 () Bool)

(assert (=> b!3997332 m!4578387))

(declare-fun m!4578389 () Bool)

(assert (=> b!3997332 m!4578389))

(declare-fun m!4578391 () Bool)

(assert (=> b!3997346 m!4578391))

(declare-fun m!4578393 () Bool)

(assert (=> b!3997326 m!4578393))

(declare-fun m!4578395 () Bool)

(assert (=> b!3997326 m!4578395))

(declare-fun m!4578397 () Bool)

(assert (=> b!3997326 m!4578397))

(declare-fun m!4578399 () Bool)

(assert (=> b!3997326 m!4578399))

(declare-fun m!4578401 () Bool)

(assert (=> b!3997369 m!4578401))

(declare-fun m!4578403 () Bool)

(assert (=> b!3997343 m!4578403))

(declare-fun m!4578405 () Bool)

(assert (=> b!3997343 m!4578405))

(declare-fun m!4578407 () Bool)

(assert (=> b!3997330 m!4578407))

(declare-fun m!4578409 () Bool)

(assert (=> b!3997330 m!4578409))

(declare-fun m!4578411 () Bool)

(assert (=> b!3997361 m!4578411))

(declare-fun m!4578413 () Bool)

(assert (=> b!3997361 m!4578413))

(declare-fun m!4578415 () Bool)

(assert (=> b!3997368 m!4578415))

(declare-fun m!4578417 () Bool)

(assert (=> b!3997359 m!4578417))

(declare-fun m!4578419 () Bool)

(assert (=> b!3997367 m!4578419))

(declare-fun m!4578421 () Bool)

(assert (=> b!3997367 m!4578421))

(declare-fun m!4578423 () Bool)

(assert (=> b!3997339 m!4578423))

(declare-fun m!4578425 () Bool)

(assert (=> b!3997350 m!4578425))

(declare-fun m!4578427 () Bool)

(assert (=> b!3997350 m!4578427))

(declare-fun m!4578429 () Bool)

(assert (=> b!3997350 m!4578429))

(declare-fun m!4578431 () Bool)

(assert (=> b!3997350 m!4578431))

(declare-fun m!4578433 () Bool)

(assert (=> b!3997350 m!4578433))

(declare-fun m!4578435 () Bool)

(assert (=> b!3997350 m!4578435))

(assert (=> b!3997350 m!4578427))

(declare-fun m!4578437 () Bool)

(assert (=> b!3997350 m!4578437))

(declare-fun m!4578439 () Bool)

(assert (=> b!3997363 m!4578439))

(declare-fun m!4578441 () Bool)

(assert (=> b!3997363 m!4578441))

(declare-fun m!4578443 () Bool)

(assert (=> b!3997353 m!4578443))

(declare-fun m!4578445 () Bool)

(assert (=> b!3997353 m!4578445))

(declare-fun m!4578447 () Bool)

(assert (=> b!3997353 m!4578447))

(declare-fun m!4578449 () Bool)

(assert (=> b!3997360 m!4578449))

(declare-fun m!4578451 () Bool)

(assert (=> b!3997360 m!4578451))

(declare-fun m!4578453 () Bool)

(assert (=> b!3997360 m!4578453))

(declare-fun m!4578455 () Bool)

(assert (=> b!3997360 m!4578455))

(declare-fun m!4578457 () Bool)

(assert (=> b!3997334 m!4578457))

(declare-fun m!4578459 () Bool)

(assert (=> b!3997334 m!4578459))

(declare-fun m!4578461 () Bool)

(assert (=> b!3997334 m!4578461))

(declare-fun m!4578463 () Bool)

(assert (=> b!3997356 m!4578463))

(declare-fun m!4578465 () Bool)

(assert (=> b!3997356 m!4578465))

(declare-fun m!4578467 () Bool)

(assert (=> b!3997356 m!4578467))

(declare-fun m!4578469 () Bool)

(assert (=> b!3997356 m!4578469))

(declare-fun m!4578471 () Bool)

(assert (=> b!3997356 m!4578471))

(declare-fun m!4578473 () Bool)

(assert (=> b!3997356 m!4578473))

(declare-fun m!4578475 () Bool)

(assert (=> b!3997356 m!4578475))

(declare-fun m!4578477 () Bool)

(assert (=> b!3997356 m!4578477))

(declare-fun m!4578479 () Bool)

(assert (=> b!3997356 m!4578479))

(declare-fun m!4578481 () Bool)

(assert (=> b!3997356 m!4578481))

(declare-fun m!4578483 () Bool)

(assert (=> b!3997356 m!4578483))

(declare-fun m!4578485 () Bool)

(assert (=> b!3997356 m!4578485))

(declare-fun m!4578487 () Bool)

(assert (=> b!3997356 m!4578487))

(assert (=> b!3997356 m!4578475))

(declare-fun m!4578489 () Bool)

(assert (=> b!3997356 m!4578489))

(assert (=> b!3997356 m!4578465))

(declare-fun m!4578491 () Bool)

(assert (=> b!3997356 m!4578491))

(declare-fun m!4578493 () Bool)

(assert (=> b!3997356 m!4578493))

(assert (=> b!3997356 m!4578483))

(declare-fun m!4578495 () Bool)

(assert (=> b!3997356 m!4578495))

(declare-fun m!4578497 () Bool)

(assert (=> b!3997356 m!4578497))

(declare-fun m!4578499 () Bool)

(assert (=> b!3997364 m!4578499))

(declare-fun m!4578501 () Bool)

(assert (=> b!3997364 m!4578501))

(declare-fun m!4578503 () Bool)

(assert (=> b!3997364 m!4578503))

(declare-fun m!4578505 () Bool)

(assert (=> b!3997364 m!4578505))

(declare-fun m!4578507 () Bool)

(assert (=> b!3997364 m!4578507))

(declare-fun m!4578509 () Bool)

(assert (=> b!3997327 m!4578509))

(declare-fun m!4578511 () Bool)

(assert (=> b!3997327 m!4578511))

(declare-fun m!4578513 () Bool)

(assert (=> b!3997362 m!4578513))

(declare-fun m!4578515 () Bool)

(assert (=> b!3997362 m!4578515))

(declare-fun m!4578517 () Bool)

(assert (=> start!376208 m!4578517))

(declare-fun m!4578519 () Bool)

(assert (=> b!3997325 m!4578519))

(declare-fun m!4578521 () Bool)

(assert (=> b!3997325 m!4578521))

(declare-fun m!4578523 () Bool)

(assert (=> b!3997325 m!4578523))

(declare-fun m!4578525 () Bool)

(assert (=> b!3997325 m!4578525))

(declare-fun m!4578527 () Bool)

(assert (=> b!3997358 m!4578527))

(declare-fun m!4578529 () Bool)

(assert (=> b!3997358 m!4578529))

(declare-fun m!4578531 () Bool)

(assert (=> b!3997358 m!4578531))

(declare-fun m!4578533 () Bool)

(assert (=> b!3997358 m!4578533))

(declare-fun m!4578535 () Bool)

(assert (=> b!3997358 m!4578535))

(declare-fun m!4578537 () Bool)

(assert (=> b!3997338 m!4578537))

(declare-fun m!4578539 () Bool)

(assert (=> b!3997338 m!4578539))

(declare-fun m!4578541 () Bool)

(assert (=> b!3997338 m!4578541))

(declare-fun m!4578543 () Bool)

(assert (=> b!3997338 m!4578543))

(declare-fun m!4578545 () Bool)

(assert (=> b!3997349 m!4578545))

(declare-fun m!4578547 () Bool)

(assert (=> b!3997349 m!4578547))

(declare-fun m!4578549 () Bool)

(assert (=> b!3997323 m!4578549))

(declare-fun m!4578551 () Bool)

(assert (=> b!3997323 m!4578551))

(declare-fun m!4578553 () Bool)

(assert (=> b!3997323 m!4578553))

(declare-fun m!4578555 () Bool)

(assert (=> b!3997333 m!4578555))

(declare-fun m!4578557 () Bool)

(assert (=> b!3997333 m!4578557))

(declare-fun m!4578559 () Bool)

(assert (=> b!3997366 m!4578559))

(declare-fun m!4578561 () Bool)

(assert (=> b!3997341 m!4578561))

(declare-fun m!4578563 () Bool)

(assert (=> b!3997341 m!4578563))

(declare-fun m!4578565 () Bool)

(assert (=> b!3997335 m!4578565))

(declare-fun m!4578567 () Bool)

(assert (=> b!3997335 m!4578567))

(declare-fun m!4578569 () Bool)

(assert (=> b!3997335 m!4578569))

(declare-fun m!4578571 () Bool)

(assert (=> b!3997335 m!4578571))

(check-sat (not b!3997332) (not b!3997348) (not b!3997363) (not b!3997354) (not b_next!111747) (not b!3997367) (not b!3997346) (not b!3997349) (not b_next!111749) (not b!3997361) (not b!3997357) (not b!3997324) (not start!376208) (not b!3997365) (not b!3997322) (not b!3997323) (not b_next!111751) (not b!3997350) (not b!3997330) (not b!3997359) (not b!3997358) (not b!3997369) (not b!3997341) (not b!3997362) (not b!3997325) (not b!3997327) (not b!3997366) b_and!306993 tp_is_empty!20333 (not b!3997338) (not b!3997337) (not b!3997334) (not b!3997335) (not b!3997326) (not b!3997360) (not b!3997339) b_and!306997 b_and!306991 (not b!3997364) (not b!3997353) (not b!3997343) b_and!306995 (not b!3997333) (not b!3997328) (not b!3997368) (not b!3997356) (not b_next!111745))
(check-sat (not b_next!111747) (not b_next!111751) b_and!306993 b_and!306997 (not b_next!111749) (not b_next!111745) b_and!306991 b_and!306995)
