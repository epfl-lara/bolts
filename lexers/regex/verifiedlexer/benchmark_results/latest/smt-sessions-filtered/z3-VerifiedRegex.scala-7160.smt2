; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379648 () Bool)

(assert start!379648)

(declare-fun b!4030388 () Bool)

(declare-fun b_free!112329 () Bool)

(declare-fun b_next!113033 () Bool)

(assert (=> b!4030388 (= b_free!112329 (not b_next!113033))))

(declare-fun tp!1225067 () Bool)

(declare-fun b_and!309719 () Bool)

(assert (=> b!4030388 (= tp!1225067 b_and!309719)))

(declare-fun b_free!112331 () Bool)

(declare-fun b_next!113035 () Bool)

(assert (=> b!4030388 (= b_free!112331 (not b_next!113035))))

(declare-fun tp!1225070 () Bool)

(declare-fun b_and!309721 () Bool)

(assert (=> b!4030388 (= tp!1225070 b_and!309721)))

(declare-fun b!4030385 () Bool)

(declare-fun b_free!112333 () Bool)

(declare-fun b_next!113037 () Bool)

(assert (=> b!4030385 (= b_free!112333 (not b_next!113037))))

(declare-fun tp!1225068 () Bool)

(declare-fun b_and!309723 () Bool)

(assert (=> b!4030385 (= tp!1225068 b_and!309723)))

(declare-fun b_free!112335 () Bool)

(declare-fun b_next!113039 () Bool)

(assert (=> b!4030385 (= b_free!112335 (not b_next!113039))))

(declare-fun tp!1225069 () Bool)

(declare-fun b_and!309725 () Bool)

(assert (=> b!4030385 (= tp!1225069 b_and!309725)))

(declare-fun b!4030383 () Bool)

(declare-fun e!2500866 () Bool)

(declare-fun e!2500864 () Bool)

(assert (=> b!4030383 (= e!2500866 e!2500864)))

(declare-fun res!1640675 () Bool)

(assert (=> b!4030383 (=> res!1640675 e!2500864)))

(declare-datatypes ((C!23812 0))(
  ( (C!23813 (val!14000 Int)) )
))
(declare-datatypes ((List!43311 0))(
  ( (Nil!43187) (Cons!43187 (h!48607 C!23812) (t!334152 List!43311)) )
))
(declare-datatypes ((IArray!26243 0))(
  ( (IArray!26244 (innerList!13179 List!43311)) )
))
(declare-datatypes ((Conc!13119 0))(
  ( (Node!13119 (left!32527 Conc!13119) (right!32857 Conc!13119) (csize!26468 Int) (cheight!13330 Int)) (Leaf!20280 (xs!16425 IArray!26243) (csize!26469 Int)) (Empty!13119) )
))
(declare-datatypes ((BalanceConc!25832 0))(
  ( (BalanceConc!25833 (c!696124 Conc!13119)) )
))
(declare-datatypes ((List!43312 0))(
  ( (Nil!43188) (Cons!43188 (h!48608 (_ BitVec 16)) (t!334153 List!43312)) )
))
(declare-datatypes ((TokenValue!7138 0))(
  ( (FloatLiteralValue!14276 (text!50411 List!43312)) (TokenValueExt!7137 (__x!26493 Int)) (Broken!35690 (value!217486 List!43312)) (Object!7261) (End!7138) (Def!7138) (Underscore!7138) (Match!7138) (Else!7138) (Error!7138) (Case!7138) (If!7138) (Extends!7138) (Abstract!7138) (Class!7138) (Val!7138) (DelimiterValue!14276 (del!7198 List!43312)) (KeywordValue!7144 (value!217487 List!43312)) (CommentValue!14276 (value!217488 List!43312)) (WhitespaceValue!14276 (value!217489 List!43312)) (IndentationValue!7138 (value!217490 List!43312)) (String!49407) (Int32!7138) (Broken!35691 (value!217491 List!43312)) (Boolean!7139) (Unit!62349) (OperatorValue!7141 (op!7198 List!43312)) (IdentifierValue!14276 (value!217492 List!43312)) (IdentifierValue!14277 (value!217493 List!43312)) (WhitespaceValue!14277 (value!217494 List!43312)) (True!14276) (False!14276) (Broken!35692 (value!217495 List!43312)) (Broken!35693 (value!217496 List!43312)) (True!14277) (RightBrace!7138) (RightBracket!7138) (Colon!7138) (Null!7138) (Comma!7138) (LeftBracket!7138) (False!14277) (LeftBrace!7138) (ImaginaryLiteralValue!7138 (text!50412 List!43312)) (StringLiteralValue!21414 (value!217497 List!43312)) (EOFValue!7138 (value!217498 List!43312)) (IdentValue!7138 (value!217499 List!43312)) (DelimiterValue!14277 (value!217500 List!43312)) (DedentValue!7138 (value!217501 List!43312)) (NewLineValue!7138 (value!217502 List!43312)) (IntegerValue!21414 (value!217503 (_ BitVec 32)) (text!50413 List!43312)) (IntegerValue!21415 (value!217504 Int) (text!50414 List!43312)) (Times!7138) (Or!7138) (Equal!7138) (Minus!7138) (Broken!35694 (value!217505 List!43312)) (And!7138) (Div!7138) (LessEqual!7138) (Mod!7138) (Concat!18951) (Not!7138) (Plus!7138) (SpaceValue!7138 (value!217506 List!43312)) (IntegerValue!21416 (value!217507 Int) (text!50415 List!43312)) (StringLiteralValue!21415 (text!50416 List!43312)) (FloatLiteralValue!14277 (text!50417 List!43312)) (BytesLiteralValue!7138 (value!217508 List!43312)) (CommentValue!14277 (value!217509 List!43312)) (StringLiteralValue!21416 (value!217510 List!43312)) (ErrorTokenValue!7138 (msg!7199 List!43312)) )
))
(declare-datatypes ((Regex!11813 0))(
  ( (ElementMatch!11813 (c!696125 C!23812)) (Concat!18952 (regOne!24138 Regex!11813) (regTwo!24138 Regex!11813)) (EmptyExpr!11813) (Star!11813 (reg!12142 Regex!11813)) (EmptyLang!11813) (Union!11813 (regOne!24139 Regex!11813) (regTwo!24139 Regex!11813)) )
))
(declare-datatypes ((String!49408 0))(
  ( (String!49409 (value!217511 String)) )
))
(declare-datatypes ((TokenValueInjection!13704 0))(
  ( (TokenValueInjection!13705 (toValue!9432 Int) (toChars!9291 Int)) )
))
(declare-datatypes ((Rule!13616 0))(
  ( (Rule!13617 (regex!6908 Regex!11813) (tag!7768 String!49408) (isSeparator!6908 Bool) (transformation!6908 TokenValueInjection!13704)) )
))
(declare-datatypes ((Token!12954 0))(
  ( (Token!12955 (value!217512 TokenValue!7138) (rule!9968 Rule!13616) (size!32277 Int) (originalCharacters!7508 List!43311)) )
))
(declare-datatypes ((tuple2!42270 0))(
  ( (tuple2!42271 (_1!24269 Token!12954) (_2!24269 List!43311)) )
))
(declare-datatypes ((Option!9322 0))(
  ( (None!9321) (Some!9321 (v!39709 tuple2!42270)) )
))
(declare-fun lt!1433017 () Option!9322)

(declare-fun lt!1433011 () Option!9322)

(assert (=> b!4030383 (= res!1640675 (not (= lt!1433017 lt!1433011)))))

(declare-fun lt!1432987 () Token!12954)

(declare-fun suffixResult!105 () List!43311)

(assert (=> b!4030383 (= lt!1433017 (Some!9321 (tuple2!42271 lt!1432987 suffixResult!105)))))

(declare-fun token!484 () Token!12954)

(declare-fun lt!1432995 () List!43311)

(declare-datatypes ((LexerInterface!6497 0))(
  ( (LexerInterfaceExt!6494 (__x!26494 Int)) (Lexer!6495) )
))
(declare-fun thiss!21717 () LexerInterface!6497)

(declare-fun maxPrefixOneRule!2807 (LexerInterface!6497 Rule!13616 List!43311) Option!9322)

(assert (=> b!4030383 (= lt!1433017 (maxPrefixOneRule!2807 thiss!21717 (rule!9968 token!484) lt!1432995))))

(declare-fun lt!1433006 () List!43311)

(declare-fun lt!1433013 () TokenValue!7138)

(declare-fun lt!1432991 () Int)

(assert (=> b!4030383 (= lt!1432987 (Token!12955 lt!1433013 (rule!9968 token!484) lt!1432991 lt!1433006))))

(declare-fun apply!10097 (TokenValueInjection!13704 BalanceConc!25832) TokenValue!7138)

(declare-fun seqFromList!5125 (List!43311) BalanceConc!25832)

(assert (=> b!4030383 (= lt!1433013 (apply!10097 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 lt!1433006)))))

(declare-datatypes ((List!43313 0))(
  ( (Nil!43189) (Cons!43189 (h!48609 Rule!13616) (t!334154 List!43313)) )
))
(declare-fun rules!2999 () List!43313)

(declare-datatypes ((Unit!62350 0))(
  ( (Unit!62351) )
))
(declare-fun lt!1433018 () Unit!62350)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1613 (LexerInterface!6497 List!43313 List!43311 List!43311 List!43311 Rule!13616) Unit!62350)

(assert (=> b!4030383 (= lt!1433018 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1613 thiss!21717 rules!2999 lt!1433006 lt!1432995 suffixResult!105 (rule!9968 token!484)))))

(declare-fun lt!1433005 () List!43311)

(assert (=> b!4030383 (= lt!1433005 suffixResult!105)))

(declare-fun lt!1433015 () Unit!62350)

(declare-fun lemmaSamePrefixThenSameSuffix!2156 (List!43311 List!43311 List!43311 List!43311 List!43311) Unit!62350)

(assert (=> b!4030383 (= lt!1433015 (lemmaSamePrefixThenSameSuffix!2156 lt!1433006 lt!1433005 lt!1433006 suffixResult!105 lt!1432995))))

(declare-fun lt!1433007 () List!43311)

(declare-fun isPrefix!3995 (List!43311 List!43311) Bool)

(assert (=> b!4030383 (isPrefix!3995 lt!1433006 lt!1433007)))

(declare-fun lt!1433003 () Unit!62350)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2830 (List!43311 List!43311) Unit!62350)

(assert (=> b!4030383 (= lt!1433003 (lemmaConcatTwoListThenFirstIsPrefix!2830 lt!1433006 lt!1433005))))

(declare-fun b!4030384 () Bool)

(declare-fun res!1640682 () Bool)

(declare-fun e!2500852 () Bool)

(assert (=> b!4030384 (=> (not res!1640682) (not e!2500852))))

(declare-fun newSuffix!27 () List!43311)

(declare-fun suffix!1299 () List!43311)

(assert (=> b!4030384 (= res!1640682 (isPrefix!3995 newSuffix!27 suffix!1299))))

(declare-fun e!2500854 () Bool)

(assert (=> b!4030385 (= e!2500854 (and tp!1225068 tp!1225069))))

(declare-fun b!4030386 () Bool)

(declare-fun e!2500862 () Bool)

(declare-fun e!2500863 () Bool)

(assert (=> b!4030386 (= e!2500862 (not e!2500863))))

(declare-fun res!1640668 () Bool)

(assert (=> b!4030386 (=> res!1640668 e!2500863)))

(declare-fun lt!1433008 () List!43311)

(assert (=> b!4030386 (= res!1640668 (not (= lt!1433008 lt!1432995)))))

(declare-fun ++!11310 (List!43311 List!43311) List!43311)

(assert (=> b!4030386 (= lt!1433008 (++!11310 lt!1433006 suffixResult!105))))

(declare-fun lt!1433004 () Unit!62350)

(declare-fun lemmaInv!1117 (TokenValueInjection!13704) Unit!62350)

(assert (=> b!4030386 (= lt!1433004 (lemmaInv!1117 (transformation!6908 (rule!9968 token!484))))))

(declare-fun ruleValid!2838 (LexerInterface!6497 Rule!13616) Bool)

(assert (=> b!4030386 (ruleValid!2838 thiss!21717 (rule!9968 token!484))))

(declare-fun lt!1432994 () Unit!62350)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1908 (LexerInterface!6497 Rule!13616 List!43313) Unit!62350)

(assert (=> b!4030386 (= lt!1432994 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1908 thiss!21717 (rule!9968 token!484) rules!2999))))

(declare-fun res!1640669 () Bool)

(assert (=> start!379648 (=> (not res!1640669) (not e!2500852))))

(get-info :version)

(assert (=> start!379648 (= res!1640669 ((_ is Lexer!6495) thiss!21717))))

(assert (=> start!379648 e!2500852))

(declare-fun e!2500858 () Bool)

(assert (=> start!379648 e!2500858))

(declare-fun e!2500860 () Bool)

(declare-fun inv!57692 (Token!12954) Bool)

(assert (=> start!379648 (and (inv!57692 token!484) e!2500860)))

(declare-fun e!2500867 () Bool)

(assert (=> start!379648 e!2500867))

(declare-fun e!2500853 () Bool)

(assert (=> start!379648 e!2500853))

(declare-fun e!2500873 () Bool)

(assert (=> start!379648 e!2500873))

(assert (=> start!379648 true))

(declare-fun e!2500859 () Bool)

(assert (=> start!379648 e!2500859))

(declare-fun e!2500855 () Bool)

(assert (=> start!379648 e!2500855))

(declare-fun b!4030387 () Bool)

(declare-fun e!2500851 () Bool)

(declare-fun e!2500857 () Bool)

(assert (=> b!4030387 (= e!2500851 e!2500857)))

(declare-fun res!1640672 () Bool)

(assert (=> b!4030387 (=> res!1640672 e!2500857)))

(declare-fun lt!1432993 () List!43311)

(assert (=> b!4030387 (= res!1640672 (not (= lt!1432993 lt!1432995)))))

(declare-fun lt!1433001 () List!43311)

(assert (=> b!4030387 (= lt!1432993 (++!11310 lt!1433006 lt!1433001))))

(declare-fun getSuffix!2412 (List!43311 List!43311) List!43311)

(assert (=> b!4030387 (= lt!1433001 (getSuffix!2412 lt!1432995 lt!1433006))))

(declare-fun e!2500856 () Bool)

(assert (=> b!4030387 e!2500856))

(declare-fun res!1640674 () Bool)

(assert (=> b!4030387 (=> (not res!1640674) (not e!2500856))))

(assert (=> b!4030387 (= res!1640674 (isPrefix!3995 lt!1432995 lt!1432995))))

(declare-fun lt!1433010 () Unit!62350)

(declare-fun lemmaIsPrefixRefl!2562 (List!43311 List!43311) Unit!62350)

(assert (=> b!4030387 (= lt!1433010 (lemmaIsPrefixRefl!2562 lt!1432995 lt!1432995))))

(declare-fun e!2500850 () Bool)

(assert (=> b!4030388 (= e!2500850 (and tp!1225067 tp!1225070))))

(declare-fun b!4030389 () Bool)

(declare-fun e!2500868 () Bool)

(assert (=> b!4030389 (= e!2500868 e!2500866)))

(declare-fun res!1640677 () Bool)

(assert (=> b!4030389 (=> res!1640677 e!2500866)))

(declare-fun lt!1432998 () List!43311)

(assert (=> b!4030389 (= res!1640677 (or (not (= lt!1432995 lt!1432998)) (not (= lt!1432995 lt!1433007))))))

(assert (=> b!4030389 (= lt!1432998 lt!1433007)))

(assert (=> b!4030389 (= lt!1433007 (++!11310 lt!1433006 lt!1433005))))

(declare-fun lt!1433000 () List!43311)

(assert (=> b!4030389 (= lt!1432998 (++!11310 lt!1433000 suffix!1299))))

(declare-fun lt!1433014 () List!43311)

(assert (=> b!4030389 (= lt!1433005 (++!11310 lt!1433014 suffix!1299))))

(declare-fun lt!1432996 () Unit!62350)

(declare-fun lemmaConcatAssociativity!2612 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> b!4030389 (= lt!1432996 (lemmaConcatAssociativity!2612 lt!1433006 lt!1433014 suffix!1299))))

(declare-fun b!4030390 () Bool)

(declare-fun e!2500869 () Bool)

(declare-fun tp!1225076 () Bool)

(declare-fun inv!57689 (String!49408) Bool)

(declare-fun inv!57693 (TokenValueInjection!13704) Bool)

(assert (=> b!4030390 (= e!2500869 (and tp!1225076 (inv!57689 (tag!7768 (rule!9968 token!484))) (inv!57693 (transformation!6908 (rule!9968 token!484))) e!2500854))))

(declare-fun b!4030391 () Bool)

(declare-fun e!2500870 () Bool)

(assert (=> b!4030391 (= e!2500857 e!2500870)))

(declare-fun res!1640673 () Bool)

(assert (=> b!4030391 (=> res!1640673 e!2500870)))

(declare-fun lt!1432997 () Option!9322)

(assert (=> b!4030391 (= res!1640673 (not ((_ is Some!9321) lt!1432997)))))

(declare-fun lt!1433016 () List!43311)

(declare-fun maxPrefix!3795 (LexerInterface!6497 List!43313 List!43311) Option!9322)

(assert (=> b!4030391 (= lt!1432997 (maxPrefix!3795 thiss!21717 rules!2999 lt!1433016))))

(declare-fun lt!1432989 () tuple2!42270)

(assert (=> b!4030391 (and (= suffixResult!105 lt!1433001) (= lt!1432989 (tuple2!42271 lt!1432987 lt!1433001)))))

(declare-fun lt!1433020 () Unit!62350)

(assert (=> b!4030391 (= lt!1433020 (lemmaSamePrefixThenSameSuffix!2156 lt!1433006 suffixResult!105 lt!1433006 lt!1433001 lt!1432995))))

(assert (=> b!4030391 (isPrefix!3995 lt!1433006 lt!1432993)))

(declare-fun lt!1432999 () Unit!62350)

(assert (=> b!4030391 (= lt!1432999 (lemmaConcatTwoListThenFirstIsPrefix!2830 lt!1433006 lt!1433001))))

(declare-fun b!4030392 () Bool)

(declare-fun e!2500874 () Bool)

(assert (=> b!4030392 (= e!2500863 e!2500874)))

(declare-fun res!1640684 () Bool)

(assert (=> b!4030392 (=> res!1640684 e!2500874)))

(assert (=> b!4030392 (= res!1640684 (not (isPrefix!3995 lt!1433006 lt!1432995)))))

(declare-fun prefix!494 () List!43311)

(assert (=> b!4030392 (isPrefix!3995 prefix!494 lt!1432995)))

(declare-fun lt!1433002 () Unit!62350)

(assert (=> b!4030392 (= lt!1433002 (lemmaConcatTwoListThenFirstIsPrefix!2830 prefix!494 suffix!1299))))

(assert (=> b!4030392 (isPrefix!3995 lt!1433006 lt!1433008)))

(declare-fun lt!1433019 () Unit!62350)

(assert (=> b!4030392 (= lt!1433019 (lemmaConcatTwoListThenFirstIsPrefix!2830 lt!1433006 suffixResult!105))))

(declare-fun b!4030393 () Bool)

(declare-fun tp_is_empty!20597 () Bool)

(declare-fun tp!1225075 () Bool)

(assert (=> b!4030393 (= e!2500867 (and tp_is_empty!20597 tp!1225075))))

(declare-fun b!4030394 () Bool)

(declare-fun contains!8572 (List!43313 Rule!13616) Bool)

(assert (=> b!4030394 (= e!2500870 (contains!8572 rules!2999 (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(declare-fun lt!1432986 () Unit!62350)

(declare-fun lemmaCharactersSize!1427 (Token!12954) Unit!62350)

(assert (=> b!4030394 (= lt!1432986 (lemmaCharactersSize!1427 token!484))))

(declare-fun lt!1433009 () Unit!62350)

(assert (=> b!4030394 (= lt!1433009 (lemmaCharactersSize!1427 (_1!24269 (v!39709 lt!1432997))))))

(declare-fun b!4030395 () Bool)

(assert (=> b!4030395 (= e!2500874 e!2500868)))

(declare-fun res!1640680 () Bool)

(assert (=> b!4030395 (=> res!1640680 e!2500868)))

(assert (=> b!4030395 (= res!1640680 (not (= lt!1433000 prefix!494)))))

(assert (=> b!4030395 (= lt!1433000 (++!11310 lt!1433006 lt!1433014))))

(assert (=> b!4030395 (= lt!1433014 (getSuffix!2412 prefix!494 lt!1433006))))

(assert (=> b!4030395 (isPrefix!3995 lt!1433006 prefix!494)))

(declare-fun lt!1432988 () Unit!62350)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!559 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> b!4030395 (= lt!1432988 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!559 prefix!494 lt!1433006 lt!1432995))))

(declare-fun b!4030396 () Bool)

(declare-fun tp!1225078 () Bool)

(assert (=> b!4030396 (= e!2500858 (and tp_is_empty!20597 tp!1225078))))

(declare-fun tp!1225066 () Bool)

(declare-fun e!2500871 () Bool)

(declare-fun b!4030397 () Bool)

(assert (=> b!4030397 (= e!2500871 (and tp!1225066 (inv!57689 (tag!7768 (h!48609 rules!2999))) (inv!57693 (transformation!6908 (h!48609 rules!2999))) e!2500850))))

(declare-fun b!4030398 () Bool)

(declare-fun res!1640685 () Bool)

(assert (=> b!4030398 (=> (not res!1640685) (not e!2500856))))

(declare-fun size!32278 (List!43311) Int)

(assert (=> b!4030398 (= res!1640685 (= (size!32277 token!484) (size!32278 (originalCharacters!7508 token!484))))))

(declare-fun b!4030399 () Bool)

(declare-fun e!2500875 () Bool)

(declare-fun e!2500865 () Bool)

(assert (=> b!4030399 (= e!2500875 e!2500865)))

(declare-fun res!1640667 () Bool)

(assert (=> b!4030399 (=> (not res!1640667) (not e!2500865))))

(declare-fun lt!1432992 () List!43311)

(assert (=> b!4030399 (= res!1640667 (= lt!1432992 lt!1433016))))

(assert (=> b!4030399 (= lt!1433016 (++!11310 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43311)

(assert (=> b!4030399 (= lt!1432992 (++!11310 lt!1433006 newSuffixResult!27))))

(declare-fun b!4030400 () Bool)

(declare-fun res!1640670 () Bool)

(assert (=> b!4030400 (=> (not res!1640670) (not e!2500852))))

(declare-fun rulesInvariant!5840 (LexerInterface!6497 List!43313) Bool)

(assert (=> b!4030400 (= res!1640670 (rulesInvariant!5840 thiss!21717 rules!2999))))

(declare-fun b!4030401 () Bool)

(declare-fun tp!1225073 () Bool)

(assert (=> b!4030401 (= e!2500859 (and e!2500871 tp!1225073))))

(declare-fun b!4030402 () Bool)

(declare-fun res!1640671 () Bool)

(assert (=> b!4030402 (=> (not res!1640671) (not e!2500856))))

(assert (=> b!4030402 (= res!1640671 (= (value!217512 token!484) lt!1433013))))

(declare-fun b!4030403 () Bool)

(declare-fun tp!1225071 () Bool)

(assert (=> b!4030403 (= e!2500873 (and tp_is_empty!20597 tp!1225071))))

(declare-fun b!4030404 () Bool)

(assert (=> b!4030404 (= e!2500864 e!2500851)))

(declare-fun res!1640683 () Bool)

(assert (=> b!4030404 (=> res!1640683 e!2500851)))

(declare-fun matchR!5766 (Regex!11813 List!43311) Bool)

(assert (=> b!4030404 (= res!1640683 (not (matchR!5766 (regex!6908 (rule!9968 token!484)) lt!1433006)))))

(assert (=> b!4030404 (isPrefix!3995 lt!1433006 lt!1433016)))

(declare-fun lt!1433012 () Unit!62350)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!788 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> b!4030404 (= lt!1433012 (lemmaPrefixStaysPrefixWhenAddingToSuffix!788 lt!1433006 prefix!494 newSuffix!27))))

(declare-fun lt!1433021 () Unit!62350)

(assert (=> b!4030404 (= lt!1433021 (lemmaPrefixStaysPrefixWhenAddingToSuffix!788 lt!1433006 prefix!494 suffix!1299))))

(declare-fun tp!1225077 () Bool)

(declare-fun b!4030405 () Bool)

(declare-fun inv!21 (TokenValue!7138) Bool)

(assert (=> b!4030405 (= e!2500860 (and (inv!21 (value!217512 token!484)) e!2500869 tp!1225077))))

(declare-fun b!4030406 () Bool)

(declare-fun tp!1225074 () Bool)

(assert (=> b!4030406 (= e!2500853 (and tp_is_empty!20597 tp!1225074))))

(declare-fun b!4030407 () Bool)

(assert (=> b!4030407 (= e!2500852 e!2500875)))

(declare-fun res!1640678 () Bool)

(assert (=> b!4030407 (=> (not res!1640678) (not e!2500875))))

(declare-fun lt!1432990 () Int)

(assert (=> b!4030407 (= res!1640678 (>= lt!1432990 lt!1432991))))

(assert (=> b!4030407 (= lt!1432991 (size!32278 lt!1433006))))

(assert (=> b!4030407 (= lt!1432990 (size!32278 prefix!494))))

(declare-fun list!16066 (BalanceConc!25832) List!43311)

(declare-fun charsOf!4724 (Token!12954) BalanceConc!25832)

(assert (=> b!4030407 (= lt!1433006 (list!16066 (charsOf!4724 token!484)))))

(declare-fun b!4030408 () Bool)

(declare-fun tp!1225072 () Bool)

(assert (=> b!4030408 (= e!2500855 (and tp_is_empty!20597 tp!1225072))))

(declare-fun b!4030409 () Bool)

(declare-fun res!1640681 () Bool)

(assert (=> b!4030409 (=> (not res!1640681) (not e!2500852))))

(declare-fun isEmpty!25769 (List!43313) Bool)

(assert (=> b!4030409 (= res!1640681 (not (isEmpty!25769 rules!2999)))))

(declare-fun b!4030410 () Bool)

(assert (=> b!4030410 (= e!2500856 (and (= (size!32277 token!484) lt!1432991) (= (originalCharacters!7508 token!484) lt!1433006)))))

(declare-fun b!4030411 () Bool)

(declare-fun res!1640676 () Bool)

(assert (=> b!4030411 (=> (not res!1640676) (not e!2500852))))

(assert (=> b!4030411 (= res!1640676 (>= (size!32278 suffix!1299) (size!32278 newSuffix!27)))))

(declare-fun b!4030412 () Bool)

(assert (=> b!4030412 (= e!2500865 e!2500862)))

(declare-fun res!1640679 () Bool)

(assert (=> b!4030412 (=> (not res!1640679) (not e!2500862))))

(assert (=> b!4030412 (= res!1640679 (= (maxPrefix!3795 thiss!21717 rules!2999 lt!1432995) lt!1433011))))

(assert (=> b!4030412 (= lt!1433011 (Some!9321 lt!1432989))))

(assert (=> b!4030412 (= lt!1432989 (tuple2!42271 token!484 suffixResult!105))))

(assert (=> b!4030412 (= lt!1432995 (++!11310 prefix!494 suffix!1299))))

(assert (= (and start!379648 res!1640669) b!4030409))

(assert (= (and b!4030409 res!1640681) b!4030400))

(assert (= (and b!4030400 res!1640670) b!4030411))

(assert (= (and b!4030411 res!1640676) b!4030384))

(assert (= (and b!4030384 res!1640682) b!4030407))

(assert (= (and b!4030407 res!1640678) b!4030399))

(assert (= (and b!4030399 res!1640667) b!4030412))

(assert (= (and b!4030412 res!1640679) b!4030386))

(assert (= (and b!4030386 (not res!1640668)) b!4030392))

(assert (= (and b!4030392 (not res!1640684)) b!4030395))

(assert (= (and b!4030395 (not res!1640680)) b!4030389))

(assert (= (and b!4030389 (not res!1640677)) b!4030383))

(assert (= (and b!4030383 (not res!1640675)) b!4030404))

(assert (= (and b!4030404 (not res!1640683)) b!4030387))

(assert (= (and b!4030387 res!1640674) b!4030402))

(assert (= (and b!4030402 res!1640671) b!4030398))

(assert (= (and b!4030398 res!1640685) b!4030410))

(assert (= (and b!4030387 (not res!1640672)) b!4030391))

(assert (= (and b!4030391 (not res!1640673)) b!4030394))

(assert (= (and start!379648 ((_ is Cons!43187) prefix!494)) b!4030396))

(assert (= b!4030390 b!4030385))

(assert (= b!4030405 b!4030390))

(assert (= start!379648 b!4030405))

(assert (= (and start!379648 ((_ is Cons!43187) suffixResult!105)) b!4030393))

(assert (= (and start!379648 ((_ is Cons!43187) suffix!1299)) b!4030406))

(assert (= (and start!379648 ((_ is Cons!43187) newSuffix!27)) b!4030403))

(assert (= b!4030397 b!4030388))

(assert (= b!4030401 b!4030397))

(assert (= (and start!379648 ((_ is Cons!43189) rules!2999)) b!4030401))

(assert (= (and start!379648 ((_ is Cons!43187) newSuffixResult!27)) b!4030408))

(declare-fun m!4622499 () Bool)

(assert (=> b!4030384 m!4622499))

(declare-fun m!4622501 () Bool)

(assert (=> b!4030392 m!4622501))

(declare-fun m!4622503 () Bool)

(assert (=> b!4030392 m!4622503))

(declare-fun m!4622505 () Bool)

(assert (=> b!4030392 m!4622505))

(declare-fun m!4622507 () Bool)

(assert (=> b!4030392 m!4622507))

(declare-fun m!4622509 () Bool)

(assert (=> b!4030392 m!4622509))

(declare-fun m!4622511 () Bool)

(assert (=> b!4030400 m!4622511))

(declare-fun m!4622513 () Bool)

(assert (=> b!4030398 m!4622513))

(declare-fun m!4622515 () Bool)

(assert (=> b!4030386 m!4622515))

(declare-fun m!4622517 () Bool)

(assert (=> b!4030386 m!4622517))

(declare-fun m!4622519 () Bool)

(assert (=> b!4030386 m!4622519))

(declare-fun m!4622521 () Bool)

(assert (=> b!4030386 m!4622521))

(declare-fun m!4622523 () Bool)

(assert (=> b!4030395 m!4622523))

(declare-fun m!4622525 () Bool)

(assert (=> b!4030395 m!4622525))

(declare-fun m!4622527 () Bool)

(assert (=> b!4030395 m!4622527))

(declare-fun m!4622529 () Bool)

(assert (=> b!4030395 m!4622529))

(declare-fun m!4622531 () Bool)

(assert (=> b!4030409 m!4622531))

(declare-fun m!4622533 () Bool)

(assert (=> b!4030412 m!4622533))

(declare-fun m!4622535 () Bool)

(assert (=> b!4030412 m!4622535))

(declare-fun m!4622537 () Bool)

(assert (=> b!4030397 m!4622537))

(declare-fun m!4622539 () Bool)

(assert (=> b!4030397 m!4622539))

(declare-fun m!4622541 () Bool)

(assert (=> b!4030389 m!4622541))

(declare-fun m!4622543 () Bool)

(assert (=> b!4030389 m!4622543))

(declare-fun m!4622545 () Bool)

(assert (=> b!4030389 m!4622545))

(declare-fun m!4622547 () Bool)

(assert (=> b!4030389 m!4622547))

(declare-fun m!4622549 () Bool)

(assert (=> b!4030391 m!4622549))

(declare-fun m!4622551 () Bool)

(assert (=> b!4030391 m!4622551))

(declare-fun m!4622553 () Bool)

(assert (=> b!4030391 m!4622553))

(declare-fun m!4622555 () Bool)

(assert (=> b!4030391 m!4622555))

(declare-fun m!4622557 () Bool)

(assert (=> b!4030383 m!4622557))

(declare-fun m!4622559 () Bool)

(assert (=> b!4030383 m!4622559))

(assert (=> b!4030383 m!4622557))

(declare-fun m!4622561 () Bool)

(assert (=> b!4030383 m!4622561))

(declare-fun m!4622563 () Bool)

(assert (=> b!4030383 m!4622563))

(declare-fun m!4622565 () Bool)

(assert (=> b!4030383 m!4622565))

(declare-fun m!4622567 () Bool)

(assert (=> b!4030383 m!4622567))

(declare-fun m!4622569 () Bool)

(assert (=> b!4030383 m!4622569))

(declare-fun m!4622571 () Bool)

(assert (=> b!4030394 m!4622571))

(declare-fun m!4622573 () Bool)

(assert (=> b!4030394 m!4622573))

(declare-fun m!4622575 () Bool)

(assert (=> b!4030394 m!4622575))

(declare-fun m!4622577 () Bool)

(assert (=> b!4030405 m!4622577))

(declare-fun m!4622579 () Bool)

(assert (=> b!4030399 m!4622579))

(declare-fun m!4622581 () Bool)

(assert (=> b!4030399 m!4622581))

(declare-fun m!4622583 () Bool)

(assert (=> b!4030411 m!4622583))

(declare-fun m!4622585 () Bool)

(assert (=> b!4030411 m!4622585))

(declare-fun m!4622587 () Bool)

(assert (=> b!4030407 m!4622587))

(declare-fun m!4622589 () Bool)

(assert (=> b!4030407 m!4622589))

(declare-fun m!4622591 () Bool)

(assert (=> b!4030407 m!4622591))

(assert (=> b!4030407 m!4622591))

(declare-fun m!4622593 () Bool)

(assert (=> b!4030407 m!4622593))

(declare-fun m!4622595 () Bool)

(assert (=> b!4030390 m!4622595))

(declare-fun m!4622597 () Bool)

(assert (=> b!4030390 m!4622597))

(declare-fun m!4622599 () Bool)

(assert (=> b!4030404 m!4622599))

(declare-fun m!4622601 () Bool)

(assert (=> b!4030404 m!4622601))

(declare-fun m!4622603 () Bool)

(assert (=> b!4030404 m!4622603))

(declare-fun m!4622605 () Bool)

(assert (=> b!4030404 m!4622605))

(declare-fun m!4622607 () Bool)

(assert (=> b!4030387 m!4622607))

(declare-fun m!4622609 () Bool)

(assert (=> b!4030387 m!4622609))

(declare-fun m!4622611 () Bool)

(assert (=> b!4030387 m!4622611))

(declare-fun m!4622613 () Bool)

(assert (=> b!4030387 m!4622613))

(declare-fun m!4622615 () Bool)

(assert (=> start!379648 m!4622615))

(check-sat (not b!4030394) (not b!4030405) tp_is_empty!20597 (not b!4030407) (not b!4030387) (not b!4030411) (not b!4030392) (not b_next!113033) (not b!4030389) (not b!4030401) (not b!4030384) (not b!4030386) (not b!4030408) (not b!4030395) b_and!309721 (not b!4030409) (not b!4030412) (not b!4030398) b_and!309719 (not b!4030396) (not b!4030406) (not b!4030400) (not start!379648) b_and!309725 b_and!309723 (not b_next!113037) (not b!4030390) (not b!4030399) (not b!4030403) (not b!4030397) (not b_next!113035) (not b!4030383) (not b!4030393) (not b!4030391) (not b_next!113039) (not b!4030404))
(check-sat b_and!309721 b_and!309719 (not b_next!113037) (not b_next!113035) (not b_next!113033) (not b_next!113039) b_and!309725 b_and!309723)
(get-model)

(declare-fun d!1193473 () Bool)

(declare-fun e!2500881 () Bool)

(assert (=> d!1193473 e!2500881))

(declare-fun res!1640693 () Bool)

(assert (=> d!1193473 (=> (not res!1640693) (not e!2500881))))

(declare-fun lt!1433024 () List!43311)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6554 (List!43311) (InoxSet C!23812))

(assert (=> d!1193473 (= res!1640693 (= (content!6554 lt!1433024) ((_ map or) (content!6554 lt!1433006) (content!6554 lt!1433014))))))

(declare-fun e!2500882 () List!43311)

(assert (=> d!1193473 (= lt!1433024 e!2500882)))

(declare-fun c!696128 () Bool)

(assert (=> d!1193473 (= c!696128 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193473 (= (++!11310 lt!1433006 lt!1433014) lt!1433024)))

(declare-fun b!4030422 () Bool)

(assert (=> b!4030422 (= e!2500882 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) lt!1433014)))))

(declare-fun b!4030421 () Bool)

(assert (=> b!4030421 (= e!2500882 lt!1433014)))

(declare-fun b!4030424 () Bool)

(assert (=> b!4030424 (= e!2500881 (or (not (= lt!1433014 Nil!43187)) (= lt!1433024 lt!1433006)))))

(declare-fun b!4030423 () Bool)

(declare-fun res!1640692 () Bool)

(assert (=> b!4030423 (=> (not res!1640692) (not e!2500881))))

(assert (=> b!4030423 (= res!1640692 (= (size!32278 lt!1433024) (+ (size!32278 lt!1433006) (size!32278 lt!1433014))))))

(assert (= (and d!1193473 c!696128) b!4030421))

(assert (= (and d!1193473 (not c!696128)) b!4030422))

(assert (= (and d!1193473 res!1640693) b!4030423))

(assert (= (and b!4030423 res!1640692) b!4030424))

(declare-fun m!4622617 () Bool)

(assert (=> d!1193473 m!4622617))

(declare-fun m!4622619 () Bool)

(assert (=> d!1193473 m!4622619))

(declare-fun m!4622621 () Bool)

(assert (=> d!1193473 m!4622621))

(declare-fun m!4622623 () Bool)

(assert (=> b!4030422 m!4622623))

(declare-fun m!4622625 () Bool)

(assert (=> b!4030423 m!4622625))

(assert (=> b!4030423 m!4622587))

(declare-fun m!4622627 () Bool)

(assert (=> b!4030423 m!4622627))

(assert (=> b!4030395 d!1193473))

(declare-fun d!1193475 () Bool)

(declare-fun lt!1433027 () List!43311)

(assert (=> d!1193475 (= (++!11310 lt!1433006 lt!1433027) prefix!494)))

(declare-fun e!2500885 () List!43311)

(assert (=> d!1193475 (= lt!1433027 e!2500885)))

(declare-fun c!696131 () Bool)

(assert (=> d!1193475 (= c!696131 ((_ is Cons!43187) lt!1433006))))

(assert (=> d!1193475 (>= (size!32278 prefix!494) (size!32278 lt!1433006))))

(assert (=> d!1193475 (= (getSuffix!2412 prefix!494 lt!1433006) lt!1433027)))

(declare-fun b!4030429 () Bool)

(declare-fun tail!6273 (List!43311) List!43311)

(assert (=> b!4030429 (= e!2500885 (getSuffix!2412 (tail!6273 prefix!494) (t!334152 lt!1433006)))))

(declare-fun b!4030430 () Bool)

(assert (=> b!4030430 (= e!2500885 prefix!494)))

(assert (= (and d!1193475 c!696131) b!4030429))

(assert (= (and d!1193475 (not c!696131)) b!4030430))

(declare-fun m!4622629 () Bool)

(assert (=> d!1193475 m!4622629))

(assert (=> d!1193475 m!4622589))

(assert (=> d!1193475 m!4622587))

(declare-fun m!4622631 () Bool)

(assert (=> b!4030429 m!4622631))

(assert (=> b!4030429 m!4622631))

(declare-fun m!4622633 () Bool)

(assert (=> b!4030429 m!4622633))

(assert (=> b!4030395 d!1193475))

(declare-fun b!4030443 () Bool)

(declare-fun res!1640707 () Bool)

(declare-fun e!2500896 () Bool)

(assert (=> b!4030443 (=> (not res!1640707) (not e!2500896))))

(declare-fun head!8541 (List!43311) C!23812)

(assert (=> b!4030443 (= res!1640707 (= (head!8541 lt!1433006) (head!8541 prefix!494)))))

(declare-fun b!4030445 () Bool)

(declare-fun e!2500895 () Bool)

(assert (=> b!4030445 (= e!2500895 (>= (size!32278 prefix!494) (size!32278 lt!1433006)))))

(declare-fun b!4030444 () Bool)

(assert (=> b!4030444 (= e!2500896 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 prefix!494)))))

(declare-fun b!4030442 () Bool)

(declare-fun e!2500897 () Bool)

(assert (=> b!4030442 (= e!2500897 e!2500896)))

(declare-fun res!1640709 () Bool)

(assert (=> b!4030442 (=> (not res!1640709) (not e!2500896))))

(assert (=> b!4030442 (= res!1640709 (not ((_ is Nil!43187) prefix!494)))))

(declare-fun d!1193477 () Bool)

(assert (=> d!1193477 e!2500895))

(declare-fun res!1640710 () Bool)

(assert (=> d!1193477 (=> res!1640710 e!2500895)))

(declare-fun lt!1433030 () Bool)

(assert (=> d!1193477 (= res!1640710 (not lt!1433030))))

(assert (=> d!1193477 (= lt!1433030 e!2500897)))

(declare-fun res!1640708 () Bool)

(assert (=> d!1193477 (=> res!1640708 e!2500897)))

(assert (=> d!1193477 (= res!1640708 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193477 (= (isPrefix!3995 lt!1433006 prefix!494) lt!1433030)))

(assert (= (and d!1193477 (not res!1640708)) b!4030442))

(assert (= (and b!4030442 res!1640709) b!4030443))

(assert (= (and b!4030443 res!1640707) b!4030444))

(assert (= (and d!1193477 (not res!1640710)) b!4030445))

(declare-fun m!4622639 () Bool)

(assert (=> b!4030443 m!4622639))

(declare-fun m!4622641 () Bool)

(assert (=> b!4030443 m!4622641))

(assert (=> b!4030445 m!4622589))

(assert (=> b!4030445 m!4622587))

(declare-fun m!4622643 () Bool)

(assert (=> b!4030444 m!4622643))

(assert (=> b!4030444 m!4622631))

(assert (=> b!4030444 m!4622643))

(assert (=> b!4030444 m!4622631))

(declare-fun m!4622645 () Bool)

(assert (=> b!4030444 m!4622645))

(assert (=> b!4030395 d!1193477))

(declare-fun d!1193485 () Bool)

(assert (=> d!1193485 (isPrefix!3995 lt!1433006 prefix!494)))

(declare-fun lt!1433038 () Unit!62350)

(declare-fun choose!24379 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> d!1193485 (= lt!1433038 (choose!24379 prefix!494 lt!1433006 lt!1432995))))

(assert (=> d!1193485 (isPrefix!3995 prefix!494 lt!1432995)))

(assert (=> d!1193485 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!559 prefix!494 lt!1433006 lt!1432995) lt!1433038)))

(declare-fun bs!590213 () Bool)

(assert (= bs!590213 d!1193485))

(assert (=> bs!590213 m!4622527))

(declare-fun m!4622659 () Bool)

(assert (=> bs!590213 m!4622659))

(assert (=> bs!590213 m!4622501))

(assert (=> b!4030395 d!1193485))

(declare-fun b!4030486 () Bool)

(declare-fun e!2500922 () Bool)

(declare-fun inv!16 (TokenValue!7138) Bool)

(assert (=> b!4030486 (= e!2500922 (inv!16 (value!217512 token!484)))))

(declare-fun b!4030487 () Bool)

(declare-fun res!1640731 () Bool)

(declare-fun e!2500923 () Bool)

(assert (=> b!4030487 (=> res!1640731 e!2500923)))

(assert (=> b!4030487 (= res!1640731 (not ((_ is IntegerValue!21416) (value!217512 token!484))))))

(declare-fun e!2500924 () Bool)

(assert (=> b!4030487 (= e!2500924 e!2500923)))

(declare-fun d!1193489 () Bool)

(declare-fun c!696143 () Bool)

(assert (=> d!1193489 (= c!696143 ((_ is IntegerValue!21414) (value!217512 token!484)))))

(assert (=> d!1193489 (= (inv!21 (value!217512 token!484)) e!2500922)))

(declare-fun b!4030488 () Bool)

(assert (=> b!4030488 (= e!2500922 e!2500924)))

(declare-fun c!696142 () Bool)

(assert (=> b!4030488 (= c!696142 ((_ is IntegerValue!21415) (value!217512 token!484)))))

(declare-fun b!4030489 () Bool)

(declare-fun inv!15 (TokenValue!7138) Bool)

(assert (=> b!4030489 (= e!2500923 (inv!15 (value!217512 token!484)))))

(declare-fun b!4030490 () Bool)

(declare-fun inv!17 (TokenValue!7138) Bool)

(assert (=> b!4030490 (= e!2500924 (inv!17 (value!217512 token!484)))))

(assert (= (and d!1193489 c!696143) b!4030486))

(assert (= (and d!1193489 (not c!696143)) b!4030488))

(assert (= (and b!4030488 c!696142) b!4030490))

(assert (= (and b!4030488 (not c!696142)) b!4030487))

(assert (= (and b!4030487 (not res!1640731)) b!4030489))

(declare-fun m!4622677 () Bool)

(assert (=> b!4030486 m!4622677))

(declare-fun m!4622679 () Bool)

(assert (=> b!4030489 m!4622679))

(declare-fun m!4622681 () Bool)

(assert (=> b!4030490 m!4622681))

(assert (=> b!4030405 d!1193489))

(declare-fun b!4030492 () Bool)

(declare-fun res!1640732 () Bool)

(declare-fun e!2500926 () Bool)

(assert (=> b!4030492 (=> (not res!1640732) (not e!2500926))))

(assert (=> b!4030492 (= res!1640732 (= (head!8541 newSuffix!27) (head!8541 suffix!1299)))))

(declare-fun b!4030494 () Bool)

(declare-fun e!2500925 () Bool)

(assert (=> b!4030494 (= e!2500925 (>= (size!32278 suffix!1299) (size!32278 newSuffix!27)))))

(declare-fun b!4030493 () Bool)

(assert (=> b!4030493 (= e!2500926 (isPrefix!3995 (tail!6273 newSuffix!27) (tail!6273 suffix!1299)))))

(declare-fun b!4030491 () Bool)

(declare-fun e!2500927 () Bool)

(assert (=> b!4030491 (= e!2500927 e!2500926)))

(declare-fun res!1640734 () Bool)

(assert (=> b!4030491 (=> (not res!1640734) (not e!2500926))))

(assert (=> b!4030491 (= res!1640734 (not ((_ is Nil!43187) suffix!1299)))))

(declare-fun d!1193497 () Bool)

(assert (=> d!1193497 e!2500925))

(declare-fun res!1640735 () Bool)

(assert (=> d!1193497 (=> res!1640735 e!2500925)))

(declare-fun lt!1433046 () Bool)

(assert (=> d!1193497 (= res!1640735 (not lt!1433046))))

(assert (=> d!1193497 (= lt!1433046 e!2500927)))

(declare-fun res!1640733 () Bool)

(assert (=> d!1193497 (=> res!1640733 e!2500927)))

(assert (=> d!1193497 (= res!1640733 ((_ is Nil!43187) newSuffix!27))))

(assert (=> d!1193497 (= (isPrefix!3995 newSuffix!27 suffix!1299) lt!1433046)))

(assert (= (and d!1193497 (not res!1640733)) b!4030491))

(assert (= (and b!4030491 res!1640734) b!4030492))

(assert (= (and b!4030492 res!1640732) b!4030493))

(assert (= (and d!1193497 (not res!1640735)) b!4030494))

(declare-fun m!4622685 () Bool)

(assert (=> b!4030492 m!4622685))

(declare-fun m!4622687 () Bool)

(assert (=> b!4030492 m!4622687))

(assert (=> b!4030494 m!4622583))

(assert (=> b!4030494 m!4622585))

(declare-fun m!4622689 () Bool)

(assert (=> b!4030493 m!4622689))

(declare-fun m!4622691 () Bool)

(assert (=> b!4030493 m!4622691))

(assert (=> b!4030493 m!4622689))

(assert (=> b!4030493 m!4622691))

(declare-fun m!4622693 () Bool)

(assert (=> b!4030493 m!4622693))

(assert (=> b!4030384 d!1193497))

(declare-fun d!1193501 () Bool)

(assert (=> d!1193501 (= lt!1433005 suffixResult!105)))

(declare-fun lt!1433049 () Unit!62350)

(declare-fun choose!24380 (List!43311 List!43311 List!43311 List!43311 List!43311) Unit!62350)

(assert (=> d!1193501 (= lt!1433049 (choose!24380 lt!1433006 lt!1433005 lt!1433006 suffixResult!105 lt!1432995))))

(assert (=> d!1193501 (isPrefix!3995 lt!1433006 lt!1432995)))

(assert (=> d!1193501 (= (lemmaSamePrefixThenSameSuffix!2156 lt!1433006 lt!1433005 lt!1433006 suffixResult!105 lt!1432995) lt!1433049)))

(declare-fun bs!590216 () Bool)

(assert (= bs!590216 d!1193501))

(declare-fun m!4622699 () Bool)

(assert (=> bs!590216 m!4622699))

(assert (=> bs!590216 m!4622509))

(assert (=> b!4030383 d!1193501))

(declare-fun b!4030615 () Bool)

(declare-fun res!1640823 () Bool)

(declare-fun e!2500994 () Bool)

(assert (=> b!4030615 (=> (not res!1640823) (not e!2500994))))

(declare-fun lt!1433099 () Option!9322)

(declare-fun get!14170 (Option!9322) tuple2!42270)

(assert (=> b!4030615 (= res!1640823 (= (rule!9968 (_1!24269 (get!14170 lt!1433099))) (rule!9968 token!484)))))

(declare-fun b!4030616 () Bool)

(declare-fun e!2500993 () Option!9322)

(declare-datatypes ((tuple2!42274 0))(
  ( (tuple2!42275 (_1!24271 List!43311) (_2!24271 List!43311)) )
))
(declare-fun lt!1433102 () tuple2!42274)

(declare-fun size!32280 (BalanceConc!25832) Int)

(assert (=> b!4030616 (= e!2500993 (Some!9321 (tuple2!42271 (Token!12955 (apply!10097 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 (_1!24271 lt!1433102))) (rule!9968 token!484) (size!32280 (seqFromList!5125 (_1!24271 lt!1433102))) (_1!24271 lt!1433102)) (_2!24271 lt!1433102))))))

(declare-fun lt!1433101 () Unit!62350)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1348 (Regex!11813 List!43311) Unit!62350)

(assert (=> b!4030616 (= lt!1433101 (longestMatchIsAcceptedByMatchOrIsEmpty!1348 (regex!6908 (rule!9968 token!484)) lt!1432995))))

(declare-fun res!1640824 () Bool)

(declare-fun isEmpty!25772 (List!43311) Bool)

(declare-fun findLongestMatchInner!1375 (Regex!11813 List!43311 Int List!43311 List!43311 Int) tuple2!42274)

(assert (=> b!4030616 (= res!1640824 (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(declare-fun e!2500996 () Bool)

(assert (=> b!4030616 (=> res!1640824 e!2500996)))

(assert (=> b!4030616 e!2500996))

(declare-fun lt!1433100 () Unit!62350)

(assert (=> b!4030616 (= lt!1433100 lt!1433101)))

(declare-fun lt!1433098 () Unit!62350)

(declare-fun lemmaSemiInverse!1895 (TokenValueInjection!13704 BalanceConc!25832) Unit!62350)

(assert (=> b!4030616 (= lt!1433098 (lemmaSemiInverse!1895 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 (_1!24271 lt!1433102))))))

(declare-fun b!4030617 () Bool)

(declare-fun e!2500995 () Bool)

(assert (=> b!4030617 (= e!2500995 e!2500994)))

(declare-fun res!1640825 () Bool)

(assert (=> b!4030617 (=> (not res!1640825) (not e!2500994))))

(assert (=> b!4030617 (= res!1640825 (matchR!5766 (regex!6908 (rule!9968 token!484)) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))))))

(declare-fun b!4030618 () Bool)

(declare-fun res!1640826 () Bool)

(assert (=> b!4030618 (=> (not res!1640826) (not e!2500994))))

(assert (=> b!4030618 (= res!1640826 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))) (_2!24269 (get!14170 lt!1433099))) lt!1432995))))

(declare-fun b!4030619 () Bool)

(assert (=> b!4030619 (= e!2500993 None!9321)))

(declare-fun b!4030620 () Bool)

(assert (=> b!4030620 (= e!2500996 (matchR!5766 (regex!6908 (rule!9968 token!484)) (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(declare-fun d!1193505 () Bool)

(assert (=> d!1193505 e!2500995))

(declare-fun res!1640827 () Bool)

(assert (=> d!1193505 (=> res!1640827 e!2500995)))

(declare-fun isEmpty!25773 (Option!9322) Bool)

(assert (=> d!1193505 (= res!1640827 (isEmpty!25773 lt!1433099))))

(assert (=> d!1193505 (= lt!1433099 e!2500993)))

(declare-fun c!696158 () Bool)

(assert (=> d!1193505 (= c!696158 (isEmpty!25772 (_1!24271 lt!1433102)))))

(declare-fun findLongestMatch!1288 (Regex!11813 List!43311) tuple2!42274)

(assert (=> d!1193505 (= lt!1433102 (findLongestMatch!1288 (regex!6908 (rule!9968 token!484)) lt!1432995))))

(assert (=> d!1193505 (ruleValid!2838 thiss!21717 (rule!9968 token!484))))

(assert (=> d!1193505 (= (maxPrefixOneRule!2807 thiss!21717 (rule!9968 token!484) lt!1432995) lt!1433099)))

(declare-fun b!4030621 () Bool)

(assert (=> b!4030621 (= e!2500994 (= (size!32277 (_1!24269 (get!14170 lt!1433099))) (size!32278 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099))))))))

(declare-fun b!4030622 () Bool)

(declare-fun res!1640822 () Bool)

(assert (=> b!4030622 (=> (not res!1640822) (not e!2500994))))

(assert (=> b!4030622 (= res!1640822 (= (value!217512 (_1!24269 (get!14170 lt!1433099))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))))))))

(declare-fun b!4030623 () Bool)

(declare-fun res!1640821 () Bool)

(assert (=> b!4030623 (=> (not res!1640821) (not e!2500994))))

(assert (=> b!4030623 (= res!1640821 (< (size!32278 (_2!24269 (get!14170 lt!1433099))) (size!32278 lt!1432995)))))

(assert (= (and d!1193505 c!696158) b!4030619))

(assert (= (and d!1193505 (not c!696158)) b!4030616))

(assert (= (and b!4030616 (not res!1640824)) b!4030620))

(assert (= (and d!1193505 (not res!1640827)) b!4030617))

(assert (= (and b!4030617 res!1640825) b!4030618))

(assert (= (and b!4030618 res!1640826) b!4030623))

(assert (= (and b!4030623 res!1640821) b!4030615))

(assert (= (and b!4030615 res!1640823) b!4030622))

(assert (= (and b!4030622 res!1640822) b!4030621))

(declare-fun m!4622823 () Bool)

(assert (=> b!4030622 m!4622823))

(declare-fun m!4622825 () Bool)

(assert (=> b!4030622 m!4622825))

(assert (=> b!4030622 m!4622825))

(declare-fun m!4622827 () Bool)

(assert (=> b!4030622 m!4622827))

(assert (=> b!4030617 m!4622823))

(declare-fun m!4622829 () Bool)

(assert (=> b!4030617 m!4622829))

(assert (=> b!4030617 m!4622829))

(declare-fun m!4622831 () Bool)

(assert (=> b!4030617 m!4622831))

(assert (=> b!4030617 m!4622831))

(declare-fun m!4622833 () Bool)

(assert (=> b!4030617 m!4622833))

(assert (=> b!4030615 m!4622823))

(assert (=> b!4030621 m!4622823))

(declare-fun m!4622835 () Bool)

(assert (=> b!4030621 m!4622835))

(assert (=> b!4030618 m!4622823))

(assert (=> b!4030618 m!4622829))

(assert (=> b!4030618 m!4622829))

(assert (=> b!4030618 m!4622831))

(assert (=> b!4030618 m!4622831))

(declare-fun m!4622837 () Bool)

(assert (=> b!4030618 m!4622837))

(assert (=> b!4030623 m!4622823))

(declare-fun m!4622839 () Bool)

(assert (=> b!4030623 m!4622839))

(declare-fun m!4622841 () Bool)

(assert (=> b!4030623 m!4622841))

(declare-fun m!4622843 () Bool)

(assert (=> b!4030616 m!4622843))

(declare-fun m!4622845 () Bool)

(assert (=> b!4030616 m!4622845))

(declare-fun m!4622847 () Bool)

(assert (=> b!4030616 m!4622847))

(assert (=> b!4030616 m!4622845))

(declare-fun m!4622849 () Bool)

(assert (=> b!4030616 m!4622849))

(declare-fun m!4622851 () Bool)

(assert (=> b!4030616 m!4622851))

(assert (=> b!4030616 m!4622845))

(assert (=> b!4030616 m!4622845))

(declare-fun m!4622853 () Bool)

(assert (=> b!4030616 m!4622853))

(assert (=> b!4030616 m!4622841))

(declare-fun m!4622855 () Bool)

(assert (=> b!4030616 m!4622855))

(assert (=> b!4030616 m!4622855))

(assert (=> b!4030616 m!4622841))

(declare-fun m!4622857 () Bool)

(assert (=> b!4030616 m!4622857))

(assert (=> b!4030620 m!4622855))

(assert (=> b!4030620 m!4622841))

(assert (=> b!4030620 m!4622855))

(assert (=> b!4030620 m!4622841))

(assert (=> b!4030620 m!4622857))

(declare-fun m!4622859 () Bool)

(assert (=> b!4030620 m!4622859))

(declare-fun m!4622861 () Bool)

(assert (=> d!1193505 m!4622861))

(declare-fun m!4622863 () Bool)

(assert (=> d!1193505 m!4622863))

(declare-fun m!4622865 () Bool)

(assert (=> d!1193505 m!4622865))

(assert (=> d!1193505 m!4622519))

(assert (=> b!4030383 d!1193505))

(declare-fun d!1193537 () Bool)

(declare-fun dynLambda!18297 (Int BalanceConc!25832) TokenValue!7138)

(assert (=> d!1193537 (= (apply!10097 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 lt!1433006)) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006)))))

(declare-fun b_lambda!117567 () Bool)

(assert (=> (not b_lambda!117567) (not d!1193537)))

(declare-fun tb!242093 () Bool)

(declare-fun t!334164 () Bool)

(assert (=> (and b!4030388 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334164) tb!242093))

(declare-fun result!293458 () Bool)

(assert (=> tb!242093 (= result!293458 (inv!21 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))))))

(declare-fun m!4622867 () Bool)

(assert (=> tb!242093 m!4622867))

(assert (=> d!1193537 t!334164))

(declare-fun b_and!309735 () Bool)

(assert (= b_and!309719 (and (=> t!334164 result!293458) b_and!309735)))

(declare-fun t!334166 () Bool)

(declare-fun tb!242095 () Bool)

(assert (=> (and b!4030385 (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334166) tb!242095))

(declare-fun result!293462 () Bool)

(assert (= result!293462 result!293458))

(assert (=> d!1193537 t!334166))

(declare-fun b_and!309737 () Bool)

(assert (= b_and!309723 (and (=> t!334166 result!293462) b_and!309737)))

(assert (=> d!1193537 m!4622557))

(declare-fun m!4622869 () Bool)

(assert (=> d!1193537 m!4622869))

(assert (=> b!4030383 d!1193537))

(declare-fun d!1193539 () Bool)

(assert (=> d!1193539 (= (maxPrefixOneRule!2807 thiss!21717 (rule!9968 token!484) lt!1432995) (Some!9321 (tuple2!42271 (Token!12955 (apply!10097 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 lt!1433006)) (rule!9968 token!484) (size!32278 lt!1433006) lt!1433006) suffixResult!105)))))

(declare-fun lt!1433129 () Unit!62350)

(declare-fun choose!24381 (LexerInterface!6497 List!43313 List!43311 List!43311 List!43311 Rule!13616) Unit!62350)

(assert (=> d!1193539 (= lt!1433129 (choose!24381 thiss!21717 rules!2999 lt!1433006 lt!1432995 suffixResult!105 (rule!9968 token!484)))))

(assert (=> d!1193539 (not (isEmpty!25769 rules!2999))))

(assert (=> d!1193539 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1613 thiss!21717 rules!2999 lt!1433006 lt!1432995 suffixResult!105 (rule!9968 token!484)) lt!1433129)))

(declare-fun bs!590226 () Bool)

(assert (= bs!590226 d!1193539))

(assert (=> bs!590226 m!4622557))

(assert (=> bs!590226 m!4622559))

(assert (=> bs!590226 m!4622531))

(declare-fun m!4622917 () Bool)

(assert (=> bs!590226 m!4622917))

(assert (=> bs!590226 m!4622587))

(assert (=> bs!590226 m!4622563))

(assert (=> bs!590226 m!4622557))

(assert (=> b!4030383 d!1193539))

(declare-fun d!1193551 () Bool)

(assert (=> d!1193551 (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 lt!1433005))))

(declare-fun lt!1433132 () Unit!62350)

(declare-fun choose!24383 (List!43311 List!43311) Unit!62350)

(assert (=> d!1193551 (= lt!1433132 (choose!24383 lt!1433006 lt!1433005))))

(assert (=> d!1193551 (= (lemmaConcatTwoListThenFirstIsPrefix!2830 lt!1433006 lt!1433005) lt!1433132)))

(declare-fun bs!590227 () Bool)

(assert (= bs!590227 d!1193551))

(assert (=> bs!590227 m!4622541))

(assert (=> bs!590227 m!4622541))

(declare-fun m!4622941 () Bool)

(assert (=> bs!590227 m!4622941))

(declare-fun m!4622943 () Bool)

(assert (=> bs!590227 m!4622943))

(assert (=> b!4030383 d!1193551))

(declare-fun d!1193553 () Bool)

(declare-fun fromListB!2332 (List!43311) BalanceConc!25832)

(assert (=> d!1193553 (= (seqFromList!5125 lt!1433006) (fromListB!2332 lt!1433006))))

(declare-fun bs!590230 () Bool)

(assert (= bs!590230 d!1193553))

(declare-fun m!4622969 () Bool)

(assert (=> bs!590230 m!4622969))

(assert (=> b!4030383 d!1193553))

(declare-fun b!4030678 () Bool)

(declare-fun res!1640869 () Bool)

(declare-fun e!2501025 () Bool)

(assert (=> b!4030678 (=> (not res!1640869) (not e!2501025))))

(assert (=> b!4030678 (= res!1640869 (= (head!8541 lt!1433006) (head!8541 lt!1433007)))))

(declare-fun b!4030680 () Bool)

(declare-fun e!2501024 () Bool)

(assert (=> b!4030680 (= e!2501024 (>= (size!32278 lt!1433007) (size!32278 lt!1433006)))))

(declare-fun b!4030679 () Bool)

(assert (=> b!4030679 (= e!2501025 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1433007)))))

(declare-fun b!4030677 () Bool)

(declare-fun e!2501026 () Bool)

(assert (=> b!4030677 (= e!2501026 e!2501025)))

(declare-fun res!1640871 () Bool)

(assert (=> b!4030677 (=> (not res!1640871) (not e!2501025))))

(assert (=> b!4030677 (= res!1640871 (not ((_ is Nil!43187) lt!1433007)))))

(declare-fun d!1193567 () Bool)

(assert (=> d!1193567 e!2501024))

(declare-fun res!1640872 () Bool)

(assert (=> d!1193567 (=> res!1640872 e!2501024)))

(declare-fun lt!1433136 () Bool)

(assert (=> d!1193567 (= res!1640872 (not lt!1433136))))

(assert (=> d!1193567 (= lt!1433136 e!2501026)))

(declare-fun res!1640870 () Bool)

(assert (=> d!1193567 (=> res!1640870 e!2501026)))

(assert (=> d!1193567 (= res!1640870 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193567 (= (isPrefix!3995 lt!1433006 lt!1433007) lt!1433136)))

(assert (= (and d!1193567 (not res!1640870)) b!4030677))

(assert (= (and b!4030677 res!1640871) b!4030678))

(assert (= (and b!4030678 res!1640869) b!4030679))

(assert (= (and d!1193567 (not res!1640872)) b!4030680))

(assert (=> b!4030678 m!4622639))

(declare-fun m!4622973 () Bool)

(assert (=> b!4030678 m!4622973))

(declare-fun m!4622975 () Bool)

(assert (=> b!4030680 m!4622975))

(assert (=> b!4030680 m!4622587))

(assert (=> b!4030679 m!4622643))

(declare-fun m!4622977 () Bool)

(assert (=> b!4030679 m!4622977))

(assert (=> b!4030679 m!4622643))

(assert (=> b!4030679 m!4622977))

(declare-fun m!4622979 () Bool)

(assert (=> b!4030679 m!4622979))

(assert (=> b!4030383 d!1193567))

(declare-fun d!1193569 () Bool)

(declare-fun lt!1433141 () Bool)

(declare-fun content!6555 (List!43313) (InoxSet Rule!13616))

(assert (=> d!1193569 (= lt!1433141 (select (content!6555 rules!2999) (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(declare-fun e!2501040 () Bool)

(assert (=> d!1193569 (= lt!1433141 e!2501040)))

(declare-fun res!1640886 () Bool)

(assert (=> d!1193569 (=> (not res!1640886) (not e!2501040))))

(assert (=> d!1193569 (= res!1640886 ((_ is Cons!43189) rules!2999))))

(assert (=> d!1193569 (= (contains!8572 rules!2999 (rule!9968 (_1!24269 (v!39709 lt!1432997)))) lt!1433141)))

(declare-fun b!4030696 () Bool)

(declare-fun e!2501039 () Bool)

(assert (=> b!4030696 (= e!2501040 e!2501039)))

(declare-fun res!1640887 () Bool)

(assert (=> b!4030696 (=> res!1640887 e!2501039)))

(assert (=> b!4030696 (= res!1640887 (= (h!48609 rules!2999) (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(declare-fun b!4030697 () Bool)

(assert (=> b!4030697 (= e!2501039 (contains!8572 (t!334154 rules!2999) (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(assert (= (and d!1193569 res!1640886) b!4030696))

(assert (= (and b!4030696 (not res!1640887)) b!4030697))

(declare-fun m!4622995 () Bool)

(assert (=> d!1193569 m!4622995))

(declare-fun m!4623001 () Bool)

(assert (=> d!1193569 m!4623001))

(declare-fun m!4623005 () Bool)

(assert (=> b!4030697 m!4623005))

(assert (=> b!4030394 d!1193569))

(declare-fun d!1193575 () Bool)

(assert (=> d!1193575 (= (size!32277 token!484) (size!32278 (originalCharacters!7508 token!484)))))

(declare-fun Unit!62352 () Unit!62350)

(assert (=> d!1193575 (= (lemmaCharactersSize!1427 token!484) Unit!62352)))

(declare-fun bs!590231 () Bool)

(assert (= bs!590231 d!1193575))

(assert (=> bs!590231 m!4622513))

(assert (=> b!4030394 d!1193575))

(declare-fun d!1193579 () Bool)

(assert (=> d!1193579 (= (size!32277 (_1!24269 (v!39709 lt!1432997))) (size!32278 (originalCharacters!7508 (_1!24269 (v!39709 lt!1432997)))))))

(declare-fun Unit!62353 () Unit!62350)

(assert (=> d!1193579 (= (lemmaCharactersSize!1427 (_1!24269 (v!39709 lt!1432997))) Unit!62353)))

(declare-fun bs!590232 () Bool)

(assert (= bs!590232 d!1193579))

(declare-fun m!4623011 () Bool)

(assert (=> bs!590232 m!4623011))

(assert (=> b!4030394 d!1193579))

(declare-fun b!4030757 () Bool)

(declare-fun res!1640917 () Bool)

(declare-fun e!2501075 () Bool)

(assert (=> b!4030757 (=> res!1640917 e!2501075)))

(assert (=> b!4030757 (= res!1640917 (not (isEmpty!25772 (tail!6273 lt!1433006))))))

(declare-fun b!4030758 () Bool)

(declare-fun e!2501076 () Bool)

(declare-fun derivativeStep!3543 (Regex!11813 C!23812) Regex!11813)

(assert (=> b!4030758 (= e!2501076 (matchR!5766 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)) (tail!6273 lt!1433006)))))

(declare-fun b!4030759 () Bool)

(assert (=> b!4030759 (= e!2501075 (not (= (head!8541 lt!1433006) (c!696125 (regex!6908 (rule!9968 token!484))))))))

(declare-fun b!4030760 () Bool)

(declare-fun res!1640921 () Bool)

(declare-fun e!2501077 () Bool)

(assert (=> b!4030760 (=> (not res!1640921) (not e!2501077))))

(declare-fun call!286870 () Bool)

(assert (=> b!4030760 (= res!1640921 (not call!286870))))

(declare-fun d!1193581 () Bool)

(declare-fun e!2501080 () Bool)

(assert (=> d!1193581 e!2501080))

(declare-fun c!696180 () Bool)

(assert (=> d!1193581 (= c!696180 ((_ is EmptyExpr!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun lt!1433152 () Bool)

(assert (=> d!1193581 (= lt!1433152 e!2501076)))

(declare-fun c!696182 () Bool)

(assert (=> d!1193581 (= c!696182 (isEmpty!25772 lt!1433006))))

(declare-fun validRegex!5338 (Regex!11813) Bool)

(assert (=> d!1193581 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1193581 (= (matchR!5766 (regex!6908 (rule!9968 token!484)) lt!1433006) lt!1433152)))

(declare-fun b!4030761 () Bool)

(declare-fun res!1640918 () Bool)

(declare-fun e!2501072 () Bool)

(assert (=> b!4030761 (=> res!1640918 e!2501072)))

(assert (=> b!4030761 (= res!1640918 e!2501077)))

(declare-fun res!1640920 () Bool)

(assert (=> b!4030761 (=> (not res!1640920) (not e!2501077))))

(assert (=> b!4030761 (= res!1640920 lt!1433152)))

(declare-fun b!4030764 () Bool)

(declare-fun e!2501073 () Bool)

(assert (=> b!4030764 (= e!2501073 (not lt!1433152))))

(declare-fun b!4030765 () Bool)

(assert (=> b!4030765 (= e!2501080 (= lt!1433152 call!286870))))

(declare-fun b!4030766 () Bool)

(declare-fun res!1640922 () Bool)

(assert (=> b!4030766 (=> res!1640922 e!2501072)))

(assert (=> b!4030766 (= res!1640922 (not ((_ is ElementMatch!11813) (regex!6908 (rule!9968 token!484)))))))

(assert (=> b!4030766 (= e!2501073 e!2501072)))

(declare-fun b!4030767 () Bool)

(declare-fun nullable!4138 (Regex!11813) Bool)

(assert (=> b!4030767 (= e!2501076 (nullable!4138 (regex!6908 (rule!9968 token!484))))))

(declare-fun bm!286865 () Bool)

(assert (=> bm!286865 (= call!286870 (isEmpty!25772 lt!1433006))))

(declare-fun b!4030768 () Bool)

(declare-fun e!2501074 () Bool)

(assert (=> b!4030768 (= e!2501072 e!2501074)))

(declare-fun res!1640924 () Bool)

(assert (=> b!4030768 (=> (not res!1640924) (not e!2501074))))

(assert (=> b!4030768 (= res!1640924 (not lt!1433152))))

(declare-fun b!4030769 () Bool)

(declare-fun res!1640923 () Bool)

(assert (=> b!4030769 (=> (not res!1640923) (not e!2501077))))

(assert (=> b!4030769 (= res!1640923 (isEmpty!25772 (tail!6273 lt!1433006)))))

(declare-fun b!4030770 () Bool)

(assert (=> b!4030770 (= e!2501074 e!2501075)))

(declare-fun res!1640919 () Bool)

(assert (=> b!4030770 (=> res!1640919 e!2501075)))

(assert (=> b!4030770 (= res!1640919 call!286870)))

(declare-fun b!4030771 () Bool)

(assert (=> b!4030771 (= e!2501077 (= (head!8541 lt!1433006) (c!696125 (regex!6908 (rule!9968 token!484)))))))

(declare-fun b!4030772 () Bool)

(assert (=> b!4030772 (= e!2501080 e!2501073)))

(declare-fun c!696181 () Bool)

(assert (=> b!4030772 (= c!696181 ((_ is EmptyLang!11813) (regex!6908 (rule!9968 token!484))))))

(assert (= (and d!1193581 c!696182) b!4030767))

(assert (= (and d!1193581 (not c!696182)) b!4030758))

(assert (= (and d!1193581 c!696180) b!4030765))

(assert (= (and d!1193581 (not c!696180)) b!4030772))

(assert (= (and b!4030772 c!696181) b!4030764))

(assert (= (and b!4030772 (not c!696181)) b!4030766))

(assert (= (and b!4030766 (not res!1640922)) b!4030761))

(assert (= (and b!4030761 res!1640920) b!4030760))

(assert (= (and b!4030760 res!1640921) b!4030769))

(assert (= (and b!4030769 res!1640923) b!4030771))

(assert (= (and b!4030761 (not res!1640918)) b!4030768))

(assert (= (and b!4030768 res!1640924) b!4030770))

(assert (= (and b!4030770 (not res!1640919)) b!4030757))

(assert (= (and b!4030757 (not res!1640917)) b!4030759))

(assert (= (or b!4030765 b!4030760 b!4030770) bm!286865))

(declare-fun m!4623037 () Bool)

(assert (=> d!1193581 m!4623037))

(declare-fun m!4623039 () Bool)

(assert (=> d!1193581 m!4623039))

(assert (=> b!4030771 m!4622639))

(declare-fun m!4623041 () Bool)

(assert (=> b!4030767 m!4623041))

(assert (=> b!4030758 m!4622639))

(assert (=> b!4030758 m!4622639))

(declare-fun m!4623043 () Bool)

(assert (=> b!4030758 m!4623043))

(assert (=> b!4030758 m!4622643))

(assert (=> b!4030758 m!4623043))

(assert (=> b!4030758 m!4622643))

(declare-fun m!4623045 () Bool)

(assert (=> b!4030758 m!4623045))

(assert (=> b!4030759 m!4622639))

(assert (=> bm!286865 m!4623037))

(assert (=> b!4030769 m!4622643))

(assert (=> b!4030769 m!4622643))

(declare-fun m!4623047 () Bool)

(assert (=> b!4030769 m!4623047))

(assert (=> b!4030757 m!4622643))

(assert (=> b!4030757 m!4622643))

(assert (=> b!4030757 m!4623047))

(assert (=> b!4030404 d!1193581))

(declare-fun b!4030774 () Bool)

(declare-fun res!1640927 () Bool)

(declare-fun e!2501082 () Bool)

(assert (=> b!4030774 (=> (not res!1640927) (not e!2501082))))

(assert (=> b!4030774 (= res!1640927 (= (head!8541 lt!1433006) (head!8541 lt!1433016)))))

(declare-fun b!4030776 () Bool)

(declare-fun e!2501081 () Bool)

(assert (=> b!4030776 (= e!2501081 (>= (size!32278 lt!1433016) (size!32278 lt!1433006)))))

(declare-fun b!4030775 () Bool)

(assert (=> b!4030775 (= e!2501082 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1433016)))))

(declare-fun b!4030773 () Bool)

(declare-fun e!2501083 () Bool)

(assert (=> b!4030773 (= e!2501083 e!2501082)))

(declare-fun res!1640929 () Bool)

(assert (=> b!4030773 (=> (not res!1640929) (not e!2501082))))

(assert (=> b!4030773 (= res!1640929 (not ((_ is Nil!43187) lt!1433016)))))

(declare-fun d!1193595 () Bool)

(assert (=> d!1193595 e!2501081))

(declare-fun res!1640930 () Bool)

(assert (=> d!1193595 (=> res!1640930 e!2501081)))

(declare-fun lt!1433153 () Bool)

(assert (=> d!1193595 (= res!1640930 (not lt!1433153))))

(assert (=> d!1193595 (= lt!1433153 e!2501083)))

(declare-fun res!1640928 () Bool)

(assert (=> d!1193595 (=> res!1640928 e!2501083)))

(assert (=> d!1193595 (= res!1640928 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193595 (= (isPrefix!3995 lt!1433006 lt!1433016) lt!1433153)))

(assert (= (and d!1193595 (not res!1640928)) b!4030773))

(assert (= (and b!4030773 res!1640929) b!4030774))

(assert (= (and b!4030774 res!1640927) b!4030775))

(assert (= (and d!1193595 (not res!1640930)) b!4030776))

(assert (=> b!4030774 m!4622639))

(declare-fun m!4623049 () Bool)

(assert (=> b!4030774 m!4623049))

(declare-fun m!4623051 () Bool)

(assert (=> b!4030776 m!4623051))

(assert (=> b!4030776 m!4622587))

(assert (=> b!4030775 m!4622643))

(declare-fun m!4623057 () Bool)

(assert (=> b!4030775 m!4623057))

(assert (=> b!4030775 m!4622643))

(assert (=> b!4030775 m!4623057))

(declare-fun m!4623061 () Bool)

(assert (=> b!4030775 m!4623061))

(assert (=> b!4030404 d!1193595))

(declare-fun d!1193599 () Bool)

(assert (=> d!1193599 (isPrefix!3995 lt!1433006 (++!11310 prefix!494 newSuffix!27))))

(declare-fun lt!1433159 () Unit!62350)

(declare-fun choose!24384 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> d!1193599 (= lt!1433159 (choose!24384 lt!1433006 prefix!494 newSuffix!27))))

(assert (=> d!1193599 (isPrefix!3995 lt!1433006 prefix!494)))

(assert (=> d!1193599 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!788 lt!1433006 prefix!494 newSuffix!27) lt!1433159)))

(declare-fun bs!590234 () Bool)

(assert (= bs!590234 d!1193599))

(assert (=> bs!590234 m!4622579))

(assert (=> bs!590234 m!4622579))

(declare-fun m!4623089 () Bool)

(assert (=> bs!590234 m!4623089))

(declare-fun m!4623091 () Bool)

(assert (=> bs!590234 m!4623091))

(assert (=> bs!590234 m!4622527))

(assert (=> b!4030404 d!1193599))

(declare-fun d!1193607 () Bool)

(assert (=> d!1193607 (isPrefix!3995 lt!1433006 (++!11310 prefix!494 suffix!1299))))

(declare-fun lt!1433160 () Unit!62350)

(assert (=> d!1193607 (= lt!1433160 (choose!24384 lt!1433006 prefix!494 suffix!1299))))

(assert (=> d!1193607 (isPrefix!3995 lt!1433006 prefix!494)))

(assert (=> d!1193607 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!788 lt!1433006 prefix!494 suffix!1299) lt!1433160)))

(declare-fun bs!590235 () Bool)

(assert (= bs!590235 d!1193607))

(assert (=> bs!590235 m!4622535))

(assert (=> bs!590235 m!4622535))

(declare-fun m!4623093 () Bool)

(assert (=> bs!590235 m!4623093))

(declare-fun m!4623095 () Bool)

(assert (=> bs!590235 m!4623095))

(assert (=> bs!590235 m!4622527))

(assert (=> b!4030404 d!1193607))

(declare-fun b!4030795 () Bool)

(declare-fun res!1640938 () Bool)

(declare-fun e!2501094 () Bool)

(assert (=> b!4030795 (=> (not res!1640938) (not e!2501094))))

(assert (=> b!4030795 (= res!1640938 (= (head!8541 lt!1433006) (head!8541 lt!1432995)))))

(declare-fun b!4030797 () Bool)

(declare-fun e!2501093 () Bool)

(assert (=> b!4030797 (= e!2501093 (>= (size!32278 lt!1432995) (size!32278 lt!1433006)))))

(declare-fun b!4030796 () Bool)

(assert (=> b!4030796 (= e!2501094 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1432995)))))

(declare-fun b!4030794 () Bool)

(declare-fun e!2501095 () Bool)

(assert (=> b!4030794 (= e!2501095 e!2501094)))

(declare-fun res!1640940 () Bool)

(assert (=> b!4030794 (=> (not res!1640940) (not e!2501094))))

(assert (=> b!4030794 (= res!1640940 (not ((_ is Nil!43187) lt!1432995)))))

(declare-fun d!1193609 () Bool)

(assert (=> d!1193609 e!2501093))

(declare-fun res!1640941 () Bool)

(assert (=> d!1193609 (=> res!1640941 e!2501093)))

(declare-fun lt!1433163 () Bool)

(assert (=> d!1193609 (= res!1640941 (not lt!1433163))))

(assert (=> d!1193609 (= lt!1433163 e!2501095)))

(declare-fun res!1640939 () Bool)

(assert (=> d!1193609 (=> res!1640939 e!2501095)))

(assert (=> d!1193609 (= res!1640939 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193609 (= (isPrefix!3995 lt!1433006 lt!1432995) lt!1433163)))

(assert (= (and d!1193609 (not res!1640939)) b!4030794))

(assert (= (and b!4030794 res!1640940) b!4030795))

(assert (= (and b!4030795 res!1640938) b!4030796))

(assert (= (and d!1193609 (not res!1640941)) b!4030797))

(assert (=> b!4030795 m!4622639))

(declare-fun m!4623097 () Bool)

(assert (=> b!4030795 m!4623097))

(assert (=> b!4030797 m!4622841))

(assert (=> b!4030797 m!4622587))

(assert (=> b!4030796 m!4622643))

(declare-fun m!4623099 () Bool)

(assert (=> b!4030796 m!4623099))

(assert (=> b!4030796 m!4622643))

(assert (=> b!4030796 m!4623099))

(declare-fun m!4623101 () Bool)

(assert (=> b!4030796 m!4623101))

(assert (=> b!4030392 d!1193609))

(declare-fun b!4030799 () Bool)

(declare-fun res!1640942 () Bool)

(declare-fun e!2501097 () Bool)

(assert (=> b!4030799 (=> (not res!1640942) (not e!2501097))))

(assert (=> b!4030799 (= res!1640942 (= (head!8541 lt!1433006) (head!8541 lt!1433008)))))

(declare-fun b!4030801 () Bool)

(declare-fun e!2501096 () Bool)

(assert (=> b!4030801 (= e!2501096 (>= (size!32278 lt!1433008) (size!32278 lt!1433006)))))

(declare-fun b!4030800 () Bool)

(assert (=> b!4030800 (= e!2501097 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1433008)))))

(declare-fun b!4030798 () Bool)

(declare-fun e!2501098 () Bool)

(assert (=> b!4030798 (= e!2501098 e!2501097)))

(declare-fun res!1640944 () Bool)

(assert (=> b!4030798 (=> (not res!1640944) (not e!2501097))))

(assert (=> b!4030798 (= res!1640944 (not ((_ is Nil!43187) lt!1433008)))))

(declare-fun d!1193611 () Bool)

(assert (=> d!1193611 e!2501096))

(declare-fun res!1640945 () Bool)

(assert (=> d!1193611 (=> res!1640945 e!2501096)))

(declare-fun lt!1433164 () Bool)

(assert (=> d!1193611 (= res!1640945 (not lt!1433164))))

(assert (=> d!1193611 (= lt!1433164 e!2501098)))

(declare-fun res!1640943 () Bool)

(assert (=> d!1193611 (=> res!1640943 e!2501098)))

(assert (=> d!1193611 (= res!1640943 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193611 (= (isPrefix!3995 lt!1433006 lt!1433008) lt!1433164)))

(assert (= (and d!1193611 (not res!1640943)) b!4030798))

(assert (= (and b!4030798 res!1640944) b!4030799))

(assert (= (and b!4030799 res!1640942) b!4030800))

(assert (= (and d!1193611 (not res!1640945)) b!4030801))

(assert (=> b!4030799 m!4622639))

(declare-fun m!4623103 () Bool)

(assert (=> b!4030799 m!4623103))

(declare-fun m!4623107 () Bool)

(assert (=> b!4030801 m!4623107))

(assert (=> b!4030801 m!4622587))

(assert (=> b!4030800 m!4622643))

(declare-fun m!4623111 () Bool)

(assert (=> b!4030800 m!4623111))

(assert (=> b!4030800 m!4622643))

(assert (=> b!4030800 m!4623111))

(declare-fun m!4623113 () Bool)

(assert (=> b!4030800 m!4623113))

(assert (=> b!4030392 d!1193611))

(declare-fun b!4030803 () Bool)

(declare-fun res!1640946 () Bool)

(declare-fun e!2501100 () Bool)

(assert (=> b!4030803 (=> (not res!1640946) (not e!2501100))))

(assert (=> b!4030803 (= res!1640946 (= (head!8541 prefix!494) (head!8541 lt!1432995)))))

(declare-fun b!4030805 () Bool)

(declare-fun e!2501099 () Bool)

(assert (=> b!4030805 (= e!2501099 (>= (size!32278 lt!1432995) (size!32278 prefix!494)))))

(declare-fun b!4030804 () Bool)

(assert (=> b!4030804 (= e!2501100 (isPrefix!3995 (tail!6273 prefix!494) (tail!6273 lt!1432995)))))

(declare-fun b!4030802 () Bool)

(declare-fun e!2501101 () Bool)

(assert (=> b!4030802 (= e!2501101 e!2501100)))

(declare-fun res!1640948 () Bool)

(assert (=> b!4030802 (=> (not res!1640948) (not e!2501100))))

(assert (=> b!4030802 (= res!1640948 (not ((_ is Nil!43187) lt!1432995)))))

(declare-fun d!1193613 () Bool)

(assert (=> d!1193613 e!2501099))

(declare-fun res!1640949 () Bool)

(assert (=> d!1193613 (=> res!1640949 e!2501099)))

(declare-fun lt!1433166 () Bool)

(assert (=> d!1193613 (= res!1640949 (not lt!1433166))))

(assert (=> d!1193613 (= lt!1433166 e!2501101)))

(declare-fun res!1640947 () Bool)

(assert (=> d!1193613 (=> res!1640947 e!2501101)))

(assert (=> d!1193613 (= res!1640947 ((_ is Nil!43187) prefix!494))))

(assert (=> d!1193613 (= (isPrefix!3995 prefix!494 lt!1432995) lt!1433166)))

(assert (= (and d!1193613 (not res!1640947)) b!4030802))

(assert (= (and b!4030802 res!1640948) b!4030803))

(assert (= (and b!4030803 res!1640946) b!4030804))

(assert (= (and d!1193613 (not res!1640949)) b!4030805))

(assert (=> b!4030803 m!4622641))

(assert (=> b!4030803 m!4623097))

(assert (=> b!4030805 m!4622841))

(assert (=> b!4030805 m!4622589))

(assert (=> b!4030804 m!4622631))

(assert (=> b!4030804 m!4623099))

(assert (=> b!4030804 m!4622631))

(assert (=> b!4030804 m!4623099))

(declare-fun m!4623119 () Bool)

(assert (=> b!4030804 m!4623119))

(assert (=> b!4030392 d!1193613))

(declare-fun d!1193619 () Bool)

(assert (=> d!1193619 (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 suffixResult!105))))

(declare-fun lt!1433169 () Unit!62350)

(assert (=> d!1193619 (= lt!1433169 (choose!24383 lt!1433006 suffixResult!105))))

(assert (=> d!1193619 (= (lemmaConcatTwoListThenFirstIsPrefix!2830 lt!1433006 suffixResult!105) lt!1433169)))

(declare-fun bs!590237 () Bool)

(assert (= bs!590237 d!1193619))

(assert (=> bs!590237 m!4622515))

(assert (=> bs!590237 m!4622515))

(declare-fun m!4623123 () Bool)

(assert (=> bs!590237 m!4623123))

(declare-fun m!4623125 () Bool)

(assert (=> bs!590237 m!4623125))

(assert (=> b!4030392 d!1193619))

(declare-fun d!1193623 () Bool)

(assert (=> d!1193623 (isPrefix!3995 prefix!494 (++!11310 prefix!494 suffix!1299))))

(declare-fun lt!1433170 () Unit!62350)

(assert (=> d!1193623 (= lt!1433170 (choose!24383 prefix!494 suffix!1299))))

(assert (=> d!1193623 (= (lemmaConcatTwoListThenFirstIsPrefix!2830 prefix!494 suffix!1299) lt!1433170)))

(declare-fun bs!590238 () Bool)

(assert (= bs!590238 d!1193623))

(assert (=> bs!590238 m!4622535))

(assert (=> bs!590238 m!4622535))

(declare-fun m!4623127 () Bool)

(assert (=> bs!590238 m!4623127))

(declare-fun m!4623129 () Bool)

(assert (=> bs!590238 m!4623129))

(assert (=> b!4030392 d!1193623))

(declare-fun b!4030881 () Bool)

(declare-fun e!2501143 () Option!9322)

(declare-fun call!286873 () Option!9322)

(assert (=> b!4030881 (= e!2501143 call!286873)))

(declare-fun b!4030882 () Bool)

(declare-fun res!1640976 () Bool)

(declare-fun e!2501144 () Bool)

(assert (=> b!4030882 (=> (not res!1640976) (not e!2501144))))

(declare-fun lt!1433196 () Option!9322)

(assert (=> b!4030882 (= res!1640976 (matchR!5766 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))))))

(declare-fun b!4030883 () Bool)

(assert (=> b!4030883 (= e!2501144 (contains!8572 rules!2999 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))

(declare-fun d!1193625 () Bool)

(declare-fun e!2501142 () Bool)

(assert (=> d!1193625 e!2501142))

(declare-fun res!1640971 () Bool)

(assert (=> d!1193625 (=> res!1640971 e!2501142)))

(assert (=> d!1193625 (= res!1640971 (isEmpty!25773 lt!1433196))))

(assert (=> d!1193625 (= lt!1433196 e!2501143)))

(declare-fun c!696196 () Bool)

(assert (=> d!1193625 (= c!696196 (and ((_ is Cons!43189) rules!2999) ((_ is Nil!43189) (t!334154 rules!2999))))))

(declare-fun lt!1433194 () Unit!62350)

(declare-fun lt!1433193 () Unit!62350)

(assert (=> d!1193625 (= lt!1433194 lt!1433193)))

(assert (=> d!1193625 (isPrefix!3995 lt!1433016 lt!1433016)))

(assert (=> d!1193625 (= lt!1433193 (lemmaIsPrefixRefl!2562 lt!1433016 lt!1433016))))

(declare-fun rulesValidInductive!2513 (LexerInterface!6497 List!43313) Bool)

(assert (=> d!1193625 (rulesValidInductive!2513 thiss!21717 rules!2999)))

(assert (=> d!1193625 (= (maxPrefix!3795 thiss!21717 rules!2999 lt!1433016) lt!1433196)))

(declare-fun bm!286868 () Bool)

(assert (=> bm!286868 (= call!286873 (maxPrefixOneRule!2807 thiss!21717 (h!48609 rules!2999) lt!1433016))))

(declare-fun b!4030884 () Bool)

(assert (=> b!4030884 (= e!2501142 e!2501144)))

(declare-fun res!1640972 () Bool)

(assert (=> b!4030884 (=> (not res!1640972) (not e!2501144))))

(declare-fun isDefined!7092 (Option!9322) Bool)

(assert (=> b!4030884 (= res!1640972 (isDefined!7092 lt!1433196))))

(declare-fun b!4030885 () Bool)

(declare-fun res!1640974 () Bool)

(assert (=> b!4030885 (=> (not res!1640974) (not e!2501144))))

(assert (=> b!4030885 (= res!1640974 (= (value!217512 (_1!24269 (get!14170 lt!1433196))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196)))))))))

(declare-fun b!4030886 () Bool)

(declare-fun lt!1433195 () Option!9322)

(declare-fun lt!1433192 () Option!9322)

(assert (=> b!4030886 (= e!2501143 (ite (and ((_ is None!9321) lt!1433195) ((_ is None!9321) lt!1433192)) None!9321 (ite ((_ is None!9321) lt!1433192) lt!1433195 (ite ((_ is None!9321) lt!1433195) lt!1433192 (ite (>= (size!32277 (_1!24269 (v!39709 lt!1433195))) (size!32277 (_1!24269 (v!39709 lt!1433192)))) lt!1433195 lt!1433192)))))))

(assert (=> b!4030886 (= lt!1433195 call!286873)))

(assert (=> b!4030886 (= lt!1433192 (maxPrefix!3795 thiss!21717 (t!334154 rules!2999) lt!1433016))))

(declare-fun b!4030887 () Bool)

(declare-fun res!1640975 () Bool)

(assert (=> b!4030887 (=> (not res!1640975) (not e!2501144))))

(assert (=> b!4030887 (= res!1640975 (< (size!32278 (_2!24269 (get!14170 lt!1433196))) (size!32278 lt!1433016)))))

(declare-fun b!4030888 () Bool)

(declare-fun res!1640973 () Bool)

(assert (=> b!4030888 (=> (not res!1640973) (not e!2501144))))

(assert (=> b!4030888 (= res!1640973 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))) (_2!24269 (get!14170 lt!1433196))) lt!1433016))))

(declare-fun b!4030889 () Bool)

(declare-fun res!1640970 () Bool)

(assert (=> b!4030889 (=> (not res!1640970) (not e!2501144))))

(assert (=> b!4030889 (= res!1640970 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196)))))))

(assert (= (and d!1193625 c!696196) b!4030881))

(assert (= (and d!1193625 (not c!696196)) b!4030886))

(assert (= (or b!4030881 b!4030886) bm!286868))

(assert (= (and d!1193625 (not res!1640971)) b!4030884))

(assert (= (and b!4030884 res!1640972) b!4030889))

(assert (= (and b!4030889 res!1640970) b!4030887))

(assert (= (and b!4030887 res!1640975) b!4030888))

(assert (= (and b!4030888 res!1640973) b!4030885))

(assert (= (and b!4030885 res!1640974) b!4030882))

(assert (= (and b!4030882 res!1640976) b!4030883))

(declare-fun m!4623161 () Bool)

(assert (=> b!4030882 m!4623161))

(declare-fun m!4623163 () Bool)

(assert (=> b!4030882 m!4623163))

(assert (=> b!4030882 m!4623163))

(declare-fun m!4623165 () Bool)

(assert (=> b!4030882 m!4623165))

(assert (=> b!4030882 m!4623165))

(declare-fun m!4623167 () Bool)

(assert (=> b!4030882 m!4623167))

(assert (=> b!4030889 m!4623161))

(assert (=> b!4030889 m!4623163))

(assert (=> b!4030889 m!4623163))

(assert (=> b!4030889 m!4623165))

(declare-fun m!4623169 () Bool)

(assert (=> b!4030884 m!4623169))

(assert (=> b!4030887 m!4623161))

(declare-fun m!4623171 () Bool)

(assert (=> b!4030887 m!4623171))

(assert (=> b!4030887 m!4623051))

(declare-fun m!4623173 () Bool)

(assert (=> d!1193625 m!4623173))

(declare-fun m!4623175 () Bool)

(assert (=> d!1193625 m!4623175))

(declare-fun m!4623177 () Bool)

(assert (=> d!1193625 m!4623177))

(declare-fun m!4623179 () Bool)

(assert (=> d!1193625 m!4623179))

(declare-fun m!4623181 () Bool)

(assert (=> b!4030886 m!4623181))

(assert (=> b!4030885 m!4623161))

(declare-fun m!4623183 () Bool)

(assert (=> b!4030885 m!4623183))

(assert (=> b!4030885 m!4623183))

(declare-fun m!4623185 () Bool)

(assert (=> b!4030885 m!4623185))

(assert (=> b!4030883 m!4623161))

(declare-fun m!4623187 () Bool)

(assert (=> b!4030883 m!4623187))

(assert (=> b!4030888 m!4623161))

(assert (=> b!4030888 m!4623163))

(assert (=> b!4030888 m!4623163))

(assert (=> b!4030888 m!4623165))

(assert (=> b!4030888 m!4623165))

(declare-fun m!4623189 () Bool)

(assert (=> b!4030888 m!4623189))

(declare-fun m!4623191 () Bool)

(assert (=> bm!286868 m!4623191))

(assert (=> b!4030391 d!1193625))

(declare-fun d!1193643 () Bool)

(assert (=> d!1193643 (= suffixResult!105 lt!1433001)))

(declare-fun lt!1433197 () Unit!62350)

(assert (=> d!1193643 (= lt!1433197 (choose!24380 lt!1433006 suffixResult!105 lt!1433006 lt!1433001 lt!1432995))))

(assert (=> d!1193643 (isPrefix!3995 lt!1433006 lt!1432995)))

(assert (=> d!1193643 (= (lemmaSamePrefixThenSameSuffix!2156 lt!1433006 suffixResult!105 lt!1433006 lt!1433001 lt!1432995) lt!1433197)))

(declare-fun bs!590241 () Bool)

(assert (= bs!590241 d!1193643))

(declare-fun m!4623193 () Bool)

(assert (=> bs!590241 m!4623193))

(assert (=> bs!590241 m!4622509))

(assert (=> b!4030391 d!1193643))

(declare-fun b!4030891 () Bool)

(declare-fun res!1640977 () Bool)

(declare-fun e!2501146 () Bool)

(assert (=> b!4030891 (=> (not res!1640977) (not e!2501146))))

(assert (=> b!4030891 (= res!1640977 (= (head!8541 lt!1433006) (head!8541 lt!1432993)))))

(declare-fun b!4030893 () Bool)

(declare-fun e!2501145 () Bool)

(assert (=> b!4030893 (= e!2501145 (>= (size!32278 lt!1432993) (size!32278 lt!1433006)))))

(declare-fun b!4030892 () Bool)

(assert (=> b!4030892 (= e!2501146 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1432993)))))

(declare-fun b!4030890 () Bool)

(declare-fun e!2501147 () Bool)

(assert (=> b!4030890 (= e!2501147 e!2501146)))

(declare-fun res!1640979 () Bool)

(assert (=> b!4030890 (=> (not res!1640979) (not e!2501146))))

(assert (=> b!4030890 (= res!1640979 (not ((_ is Nil!43187) lt!1432993)))))

(declare-fun d!1193645 () Bool)

(assert (=> d!1193645 e!2501145))

(declare-fun res!1640980 () Bool)

(assert (=> d!1193645 (=> res!1640980 e!2501145)))

(declare-fun lt!1433198 () Bool)

(assert (=> d!1193645 (= res!1640980 (not lt!1433198))))

(assert (=> d!1193645 (= lt!1433198 e!2501147)))

(declare-fun res!1640978 () Bool)

(assert (=> d!1193645 (=> res!1640978 e!2501147)))

(assert (=> d!1193645 (= res!1640978 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193645 (= (isPrefix!3995 lt!1433006 lt!1432993) lt!1433198)))

(assert (= (and d!1193645 (not res!1640978)) b!4030890))

(assert (= (and b!4030890 res!1640979) b!4030891))

(assert (= (and b!4030891 res!1640977) b!4030892))

(assert (= (and d!1193645 (not res!1640980)) b!4030893))

(assert (=> b!4030891 m!4622639))

(declare-fun m!4623195 () Bool)

(assert (=> b!4030891 m!4623195))

(declare-fun m!4623197 () Bool)

(assert (=> b!4030893 m!4623197))

(assert (=> b!4030893 m!4622587))

(assert (=> b!4030892 m!4622643))

(declare-fun m!4623199 () Bool)

(assert (=> b!4030892 m!4623199))

(assert (=> b!4030892 m!4622643))

(assert (=> b!4030892 m!4623199))

(declare-fun m!4623201 () Bool)

(assert (=> b!4030892 m!4623201))

(assert (=> b!4030391 d!1193645))

(declare-fun d!1193647 () Bool)

(assert (=> d!1193647 (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 lt!1433001))))

(declare-fun lt!1433199 () Unit!62350)

(assert (=> d!1193647 (= lt!1433199 (choose!24383 lt!1433006 lt!1433001))))

(assert (=> d!1193647 (= (lemmaConcatTwoListThenFirstIsPrefix!2830 lt!1433006 lt!1433001) lt!1433199)))

(declare-fun bs!590242 () Bool)

(assert (= bs!590242 d!1193647))

(assert (=> bs!590242 m!4622607))

(assert (=> bs!590242 m!4622607))

(declare-fun m!4623203 () Bool)

(assert (=> bs!590242 m!4623203))

(declare-fun m!4623205 () Bool)

(assert (=> bs!590242 m!4623205))

(assert (=> b!4030391 d!1193647))

(declare-fun b!4030894 () Bool)

(declare-fun e!2501149 () Option!9322)

(declare-fun call!286874 () Option!9322)

(assert (=> b!4030894 (= e!2501149 call!286874)))

(declare-fun b!4030895 () Bool)

(declare-fun res!1640987 () Bool)

(declare-fun e!2501150 () Bool)

(assert (=> b!4030895 (=> (not res!1640987) (not e!2501150))))

(declare-fun lt!1433204 () Option!9322)

(assert (=> b!4030895 (= res!1640987 (matchR!5766 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))))))

(declare-fun b!4030896 () Bool)

(assert (=> b!4030896 (= e!2501150 (contains!8572 rules!2999 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))

(declare-fun d!1193649 () Bool)

(declare-fun e!2501148 () Bool)

(assert (=> d!1193649 e!2501148))

(declare-fun res!1640982 () Bool)

(assert (=> d!1193649 (=> res!1640982 e!2501148)))

(assert (=> d!1193649 (= res!1640982 (isEmpty!25773 lt!1433204))))

(assert (=> d!1193649 (= lt!1433204 e!2501149)))

(declare-fun c!696197 () Bool)

(assert (=> d!1193649 (= c!696197 (and ((_ is Cons!43189) rules!2999) ((_ is Nil!43189) (t!334154 rules!2999))))))

(declare-fun lt!1433202 () Unit!62350)

(declare-fun lt!1433201 () Unit!62350)

(assert (=> d!1193649 (= lt!1433202 lt!1433201)))

(assert (=> d!1193649 (isPrefix!3995 lt!1432995 lt!1432995)))

(assert (=> d!1193649 (= lt!1433201 (lemmaIsPrefixRefl!2562 lt!1432995 lt!1432995))))

(assert (=> d!1193649 (rulesValidInductive!2513 thiss!21717 rules!2999)))

(assert (=> d!1193649 (= (maxPrefix!3795 thiss!21717 rules!2999 lt!1432995) lt!1433204)))

(declare-fun bm!286869 () Bool)

(assert (=> bm!286869 (= call!286874 (maxPrefixOneRule!2807 thiss!21717 (h!48609 rules!2999) lt!1432995))))

(declare-fun b!4030897 () Bool)

(assert (=> b!4030897 (= e!2501148 e!2501150)))

(declare-fun res!1640983 () Bool)

(assert (=> b!4030897 (=> (not res!1640983) (not e!2501150))))

(assert (=> b!4030897 (= res!1640983 (isDefined!7092 lt!1433204))))

(declare-fun b!4030898 () Bool)

(declare-fun res!1640985 () Bool)

(assert (=> b!4030898 (=> (not res!1640985) (not e!2501150))))

(assert (=> b!4030898 (= res!1640985 (= (value!217512 (_1!24269 (get!14170 lt!1433204))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204)))))))))

(declare-fun b!4030899 () Bool)

(declare-fun lt!1433203 () Option!9322)

(declare-fun lt!1433200 () Option!9322)

(assert (=> b!4030899 (= e!2501149 (ite (and ((_ is None!9321) lt!1433203) ((_ is None!9321) lt!1433200)) None!9321 (ite ((_ is None!9321) lt!1433200) lt!1433203 (ite ((_ is None!9321) lt!1433203) lt!1433200 (ite (>= (size!32277 (_1!24269 (v!39709 lt!1433203))) (size!32277 (_1!24269 (v!39709 lt!1433200)))) lt!1433203 lt!1433200)))))))

(assert (=> b!4030899 (= lt!1433203 call!286874)))

(assert (=> b!4030899 (= lt!1433200 (maxPrefix!3795 thiss!21717 (t!334154 rules!2999) lt!1432995))))

(declare-fun b!4030900 () Bool)

(declare-fun res!1640986 () Bool)

(assert (=> b!4030900 (=> (not res!1640986) (not e!2501150))))

(assert (=> b!4030900 (= res!1640986 (< (size!32278 (_2!24269 (get!14170 lt!1433204))) (size!32278 lt!1432995)))))

(declare-fun b!4030901 () Bool)

(declare-fun res!1640984 () Bool)

(assert (=> b!4030901 (=> (not res!1640984) (not e!2501150))))

(assert (=> b!4030901 (= res!1640984 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))) (_2!24269 (get!14170 lt!1433204))) lt!1432995))))

(declare-fun b!4030902 () Bool)

(declare-fun res!1640981 () Bool)

(assert (=> b!4030902 (=> (not res!1640981) (not e!2501150))))

(assert (=> b!4030902 (= res!1640981 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204)))))))

(assert (= (and d!1193649 c!696197) b!4030894))

(assert (= (and d!1193649 (not c!696197)) b!4030899))

(assert (= (or b!4030894 b!4030899) bm!286869))

(assert (= (and d!1193649 (not res!1640982)) b!4030897))

(assert (= (and b!4030897 res!1640983) b!4030902))

(assert (= (and b!4030902 res!1640981) b!4030900))

(assert (= (and b!4030900 res!1640986) b!4030901))

(assert (= (and b!4030901 res!1640984) b!4030898))

(assert (= (and b!4030898 res!1640985) b!4030895))

(assert (= (and b!4030895 res!1640987) b!4030896))

(declare-fun m!4623207 () Bool)

(assert (=> b!4030895 m!4623207))

(declare-fun m!4623209 () Bool)

(assert (=> b!4030895 m!4623209))

(assert (=> b!4030895 m!4623209))

(declare-fun m!4623211 () Bool)

(assert (=> b!4030895 m!4623211))

(assert (=> b!4030895 m!4623211))

(declare-fun m!4623213 () Bool)

(assert (=> b!4030895 m!4623213))

(assert (=> b!4030902 m!4623207))

(assert (=> b!4030902 m!4623209))

(assert (=> b!4030902 m!4623209))

(assert (=> b!4030902 m!4623211))

(declare-fun m!4623215 () Bool)

(assert (=> b!4030897 m!4623215))

(assert (=> b!4030900 m!4623207))

(declare-fun m!4623217 () Bool)

(assert (=> b!4030900 m!4623217))

(assert (=> b!4030900 m!4622841))

(declare-fun m!4623219 () Bool)

(assert (=> d!1193649 m!4623219))

(assert (=> d!1193649 m!4622611))

(assert (=> d!1193649 m!4622613))

(assert (=> d!1193649 m!4623179))

(declare-fun m!4623221 () Bool)

(assert (=> b!4030899 m!4623221))

(assert (=> b!4030898 m!4623207))

(declare-fun m!4623223 () Bool)

(assert (=> b!4030898 m!4623223))

(assert (=> b!4030898 m!4623223))

(declare-fun m!4623225 () Bool)

(assert (=> b!4030898 m!4623225))

(assert (=> b!4030896 m!4623207))

(declare-fun m!4623227 () Bool)

(assert (=> b!4030896 m!4623227))

(assert (=> b!4030901 m!4623207))

(assert (=> b!4030901 m!4623209))

(assert (=> b!4030901 m!4623209))

(assert (=> b!4030901 m!4623211))

(assert (=> b!4030901 m!4623211))

(declare-fun m!4623229 () Bool)

(assert (=> b!4030901 m!4623229))

(declare-fun m!4623231 () Bool)

(assert (=> bm!286869 m!4623231))

(assert (=> b!4030412 d!1193649))

(declare-fun d!1193651 () Bool)

(declare-fun e!2501151 () Bool)

(assert (=> d!1193651 e!2501151))

(declare-fun res!1640989 () Bool)

(assert (=> d!1193651 (=> (not res!1640989) (not e!2501151))))

(declare-fun lt!1433205 () List!43311)

(assert (=> d!1193651 (= res!1640989 (= (content!6554 lt!1433205) ((_ map or) (content!6554 prefix!494) (content!6554 suffix!1299))))))

(declare-fun e!2501152 () List!43311)

(assert (=> d!1193651 (= lt!1433205 e!2501152)))

(declare-fun c!696198 () Bool)

(assert (=> d!1193651 (= c!696198 ((_ is Nil!43187) prefix!494))))

(assert (=> d!1193651 (= (++!11310 prefix!494 suffix!1299) lt!1433205)))

(declare-fun b!4030904 () Bool)

(assert (=> b!4030904 (= e!2501152 (Cons!43187 (h!48607 prefix!494) (++!11310 (t!334152 prefix!494) suffix!1299)))))

(declare-fun b!4030903 () Bool)

(assert (=> b!4030903 (= e!2501152 suffix!1299)))

(declare-fun b!4030906 () Bool)

(assert (=> b!4030906 (= e!2501151 (or (not (= suffix!1299 Nil!43187)) (= lt!1433205 prefix!494)))))

(declare-fun b!4030905 () Bool)

(declare-fun res!1640988 () Bool)

(assert (=> b!4030905 (=> (not res!1640988) (not e!2501151))))

(assert (=> b!4030905 (= res!1640988 (= (size!32278 lt!1433205) (+ (size!32278 prefix!494) (size!32278 suffix!1299))))))

(assert (= (and d!1193651 c!696198) b!4030903))

(assert (= (and d!1193651 (not c!696198)) b!4030904))

(assert (= (and d!1193651 res!1640989) b!4030905))

(assert (= (and b!4030905 res!1640988) b!4030906))

(declare-fun m!4623233 () Bool)

(assert (=> d!1193651 m!4623233))

(declare-fun m!4623235 () Bool)

(assert (=> d!1193651 m!4623235))

(declare-fun m!4623237 () Bool)

(assert (=> d!1193651 m!4623237))

(declare-fun m!4623239 () Bool)

(assert (=> b!4030904 m!4623239))

(declare-fun m!4623241 () Bool)

(assert (=> b!4030905 m!4623241))

(assert (=> b!4030905 m!4622589))

(assert (=> b!4030905 m!4622583))

(assert (=> b!4030412 d!1193651))

(declare-fun d!1193653 () Bool)

(declare-fun lt!1433208 () Int)

(assert (=> d!1193653 (>= lt!1433208 0)))

(declare-fun e!2501155 () Int)

(assert (=> d!1193653 (= lt!1433208 e!2501155)))

(declare-fun c!696201 () Bool)

(assert (=> d!1193653 (= c!696201 ((_ is Nil!43187) suffix!1299))))

(assert (=> d!1193653 (= (size!32278 suffix!1299) lt!1433208)))

(declare-fun b!4030911 () Bool)

(assert (=> b!4030911 (= e!2501155 0)))

(declare-fun b!4030912 () Bool)

(assert (=> b!4030912 (= e!2501155 (+ 1 (size!32278 (t!334152 suffix!1299))))))

(assert (= (and d!1193653 c!696201) b!4030911))

(assert (= (and d!1193653 (not c!696201)) b!4030912))

(declare-fun m!4623243 () Bool)

(assert (=> b!4030912 m!4623243))

(assert (=> b!4030411 d!1193653))

(declare-fun d!1193655 () Bool)

(declare-fun lt!1433209 () Int)

(assert (=> d!1193655 (>= lt!1433209 0)))

(declare-fun e!2501156 () Int)

(assert (=> d!1193655 (= lt!1433209 e!2501156)))

(declare-fun c!696202 () Bool)

(assert (=> d!1193655 (= c!696202 ((_ is Nil!43187) newSuffix!27))))

(assert (=> d!1193655 (= (size!32278 newSuffix!27) lt!1433209)))

(declare-fun b!4030913 () Bool)

(assert (=> b!4030913 (= e!2501156 0)))

(declare-fun b!4030914 () Bool)

(assert (=> b!4030914 (= e!2501156 (+ 1 (size!32278 (t!334152 newSuffix!27))))))

(assert (= (and d!1193655 c!696202) b!4030913))

(assert (= (and d!1193655 (not c!696202)) b!4030914))

(declare-fun m!4623245 () Bool)

(assert (=> b!4030914 m!4623245))

(assert (=> b!4030411 d!1193655))

(declare-fun d!1193657 () Bool)

(assert (=> d!1193657 (= (inv!57689 (tag!7768 (rule!9968 token!484))) (= (mod (str.len (value!217511 (tag!7768 (rule!9968 token!484)))) 2) 0))))

(assert (=> b!4030390 d!1193657))

(declare-fun d!1193659 () Bool)

(declare-fun res!1640992 () Bool)

(declare-fun e!2501159 () Bool)

(assert (=> d!1193659 (=> (not res!1640992) (not e!2501159))))

(declare-fun semiInverseModEq!2946 (Int Int) Bool)

(assert (=> d!1193659 (= res!1640992 (semiInverseModEq!2946 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))))))

(assert (=> d!1193659 (= (inv!57693 (transformation!6908 (rule!9968 token!484))) e!2501159)))

(declare-fun b!4030917 () Bool)

(declare-fun equivClasses!2845 (Int Int) Bool)

(assert (=> b!4030917 (= e!2501159 (equivClasses!2845 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))))))

(assert (= (and d!1193659 res!1640992) b!4030917))

(declare-fun m!4623247 () Bool)

(assert (=> d!1193659 m!4623247))

(declare-fun m!4623249 () Bool)

(assert (=> b!4030917 m!4623249))

(assert (=> b!4030390 d!1193659))

(declare-fun d!1193661 () Bool)

(declare-fun e!2501160 () Bool)

(assert (=> d!1193661 e!2501160))

(declare-fun res!1640994 () Bool)

(assert (=> d!1193661 (=> (not res!1640994) (not e!2501160))))

(declare-fun lt!1433210 () List!43311)

(assert (=> d!1193661 (= res!1640994 (= (content!6554 lt!1433210) ((_ map or) (content!6554 lt!1433006) (content!6554 lt!1433005))))))

(declare-fun e!2501161 () List!43311)

(assert (=> d!1193661 (= lt!1433210 e!2501161)))

(declare-fun c!696203 () Bool)

(assert (=> d!1193661 (= c!696203 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193661 (= (++!11310 lt!1433006 lt!1433005) lt!1433210)))

(declare-fun b!4030919 () Bool)

(assert (=> b!4030919 (= e!2501161 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) lt!1433005)))))

(declare-fun b!4030918 () Bool)

(assert (=> b!4030918 (= e!2501161 lt!1433005)))

(declare-fun b!4030921 () Bool)

(assert (=> b!4030921 (= e!2501160 (or (not (= lt!1433005 Nil!43187)) (= lt!1433210 lt!1433006)))))

(declare-fun b!4030920 () Bool)

(declare-fun res!1640993 () Bool)

(assert (=> b!4030920 (=> (not res!1640993) (not e!2501160))))

(assert (=> b!4030920 (= res!1640993 (= (size!32278 lt!1433210) (+ (size!32278 lt!1433006) (size!32278 lt!1433005))))))

(assert (= (and d!1193661 c!696203) b!4030918))

(assert (= (and d!1193661 (not c!696203)) b!4030919))

(assert (= (and d!1193661 res!1640994) b!4030920))

(assert (= (and b!4030920 res!1640993) b!4030921))

(declare-fun m!4623251 () Bool)

(assert (=> d!1193661 m!4623251))

(assert (=> d!1193661 m!4622619))

(declare-fun m!4623253 () Bool)

(assert (=> d!1193661 m!4623253))

(declare-fun m!4623255 () Bool)

(assert (=> b!4030919 m!4623255))

(declare-fun m!4623257 () Bool)

(assert (=> b!4030920 m!4623257))

(assert (=> b!4030920 m!4622587))

(declare-fun m!4623259 () Bool)

(assert (=> b!4030920 m!4623259))

(assert (=> b!4030389 d!1193661))

(declare-fun d!1193663 () Bool)

(declare-fun e!2501162 () Bool)

(assert (=> d!1193663 e!2501162))

(declare-fun res!1640996 () Bool)

(assert (=> d!1193663 (=> (not res!1640996) (not e!2501162))))

(declare-fun lt!1433211 () List!43311)

(assert (=> d!1193663 (= res!1640996 (= (content!6554 lt!1433211) ((_ map or) (content!6554 lt!1433000) (content!6554 suffix!1299))))))

(declare-fun e!2501163 () List!43311)

(assert (=> d!1193663 (= lt!1433211 e!2501163)))

(declare-fun c!696204 () Bool)

(assert (=> d!1193663 (= c!696204 ((_ is Nil!43187) lt!1433000))))

(assert (=> d!1193663 (= (++!11310 lt!1433000 suffix!1299) lt!1433211)))

(declare-fun b!4030923 () Bool)

(assert (=> b!4030923 (= e!2501163 (Cons!43187 (h!48607 lt!1433000) (++!11310 (t!334152 lt!1433000) suffix!1299)))))

(declare-fun b!4030922 () Bool)

(assert (=> b!4030922 (= e!2501163 suffix!1299)))

(declare-fun b!4030925 () Bool)

(assert (=> b!4030925 (= e!2501162 (or (not (= suffix!1299 Nil!43187)) (= lt!1433211 lt!1433000)))))

(declare-fun b!4030924 () Bool)

(declare-fun res!1640995 () Bool)

(assert (=> b!4030924 (=> (not res!1640995) (not e!2501162))))

(assert (=> b!4030924 (= res!1640995 (= (size!32278 lt!1433211) (+ (size!32278 lt!1433000) (size!32278 suffix!1299))))))

(assert (= (and d!1193663 c!696204) b!4030922))

(assert (= (and d!1193663 (not c!696204)) b!4030923))

(assert (= (and d!1193663 res!1640996) b!4030924))

(assert (= (and b!4030924 res!1640995) b!4030925))

(declare-fun m!4623261 () Bool)

(assert (=> d!1193663 m!4623261))

(declare-fun m!4623263 () Bool)

(assert (=> d!1193663 m!4623263))

(assert (=> d!1193663 m!4623237))

(declare-fun m!4623265 () Bool)

(assert (=> b!4030923 m!4623265))

(declare-fun m!4623267 () Bool)

(assert (=> b!4030924 m!4623267))

(declare-fun m!4623269 () Bool)

(assert (=> b!4030924 m!4623269))

(assert (=> b!4030924 m!4622583))

(assert (=> b!4030389 d!1193663))

(declare-fun d!1193665 () Bool)

(declare-fun e!2501164 () Bool)

(assert (=> d!1193665 e!2501164))

(declare-fun res!1640998 () Bool)

(assert (=> d!1193665 (=> (not res!1640998) (not e!2501164))))

(declare-fun lt!1433212 () List!43311)

(assert (=> d!1193665 (= res!1640998 (= (content!6554 lt!1433212) ((_ map or) (content!6554 lt!1433014) (content!6554 suffix!1299))))))

(declare-fun e!2501165 () List!43311)

(assert (=> d!1193665 (= lt!1433212 e!2501165)))

(declare-fun c!696205 () Bool)

(assert (=> d!1193665 (= c!696205 ((_ is Nil!43187) lt!1433014))))

(assert (=> d!1193665 (= (++!11310 lt!1433014 suffix!1299) lt!1433212)))

(declare-fun b!4030927 () Bool)

(assert (=> b!4030927 (= e!2501165 (Cons!43187 (h!48607 lt!1433014) (++!11310 (t!334152 lt!1433014) suffix!1299)))))

(declare-fun b!4030926 () Bool)

(assert (=> b!4030926 (= e!2501165 suffix!1299)))

(declare-fun b!4030929 () Bool)

(assert (=> b!4030929 (= e!2501164 (or (not (= suffix!1299 Nil!43187)) (= lt!1433212 lt!1433014)))))

(declare-fun b!4030928 () Bool)

(declare-fun res!1640997 () Bool)

(assert (=> b!4030928 (=> (not res!1640997) (not e!2501164))))

(assert (=> b!4030928 (= res!1640997 (= (size!32278 lt!1433212) (+ (size!32278 lt!1433014) (size!32278 suffix!1299))))))

(assert (= (and d!1193665 c!696205) b!4030926))

(assert (= (and d!1193665 (not c!696205)) b!4030927))

(assert (= (and d!1193665 res!1640998) b!4030928))

(assert (= (and b!4030928 res!1640997) b!4030929))

(declare-fun m!4623271 () Bool)

(assert (=> d!1193665 m!4623271))

(assert (=> d!1193665 m!4622621))

(assert (=> d!1193665 m!4623237))

(declare-fun m!4623273 () Bool)

(assert (=> b!4030927 m!4623273))

(declare-fun m!4623275 () Bool)

(assert (=> b!4030928 m!4623275))

(assert (=> b!4030928 m!4622627))

(assert (=> b!4030928 m!4622583))

(assert (=> b!4030389 d!1193665))

(declare-fun d!1193667 () Bool)

(assert (=> d!1193667 (= (++!11310 (++!11310 lt!1433006 lt!1433014) suffix!1299) (++!11310 lt!1433006 (++!11310 lt!1433014 suffix!1299)))))

(declare-fun lt!1433215 () Unit!62350)

(declare-fun choose!24387 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> d!1193667 (= lt!1433215 (choose!24387 lt!1433006 lt!1433014 suffix!1299))))

(assert (=> d!1193667 (= (lemmaConcatAssociativity!2612 lt!1433006 lt!1433014 suffix!1299) lt!1433215)))

(declare-fun bs!590243 () Bool)

(assert (= bs!590243 d!1193667))

(assert (=> bs!590243 m!4622545))

(declare-fun m!4623277 () Bool)

(assert (=> bs!590243 m!4623277))

(assert (=> bs!590243 m!4622545))

(assert (=> bs!590243 m!4622523))

(declare-fun m!4623279 () Bool)

(assert (=> bs!590243 m!4623279))

(assert (=> bs!590243 m!4622523))

(declare-fun m!4623281 () Bool)

(assert (=> bs!590243 m!4623281))

(assert (=> b!4030389 d!1193667))

(declare-fun d!1193669 () Bool)

(declare-fun res!1641001 () Bool)

(declare-fun e!2501168 () Bool)

(assert (=> d!1193669 (=> (not res!1641001) (not e!2501168))))

(declare-fun rulesValid!2680 (LexerInterface!6497 List!43313) Bool)

(assert (=> d!1193669 (= res!1641001 (rulesValid!2680 thiss!21717 rules!2999))))

(assert (=> d!1193669 (= (rulesInvariant!5840 thiss!21717 rules!2999) e!2501168)))

(declare-fun b!4030932 () Bool)

(declare-datatypes ((List!43315 0))(
  ( (Nil!43191) (Cons!43191 (h!48611 String!49408) (t!334180 List!43315)) )
))
(declare-fun noDuplicateTag!2681 (LexerInterface!6497 List!43313 List!43315) Bool)

(assert (=> b!4030932 (= e!2501168 (noDuplicateTag!2681 thiss!21717 rules!2999 Nil!43191))))

(assert (= (and d!1193669 res!1641001) b!4030932))

(declare-fun m!4623283 () Bool)

(assert (=> d!1193669 m!4623283))

(declare-fun m!4623285 () Bool)

(assert (=> b!4030932 m!4623285))

(assert (=> b!4030400 d!1193669))

(declare-fun d!1193671 () Bool)

(declare-fun e!2501169 () Bool)

(assert (=> d!1193671 e!2501169))

(declare-fun res!1641003 () Bool)

(assert (=> d!1193671 (=> (not res!1641003) (not e!2501169))))

(declare-fun lt!1433216 () List!43311)

(assert (=> d!1193671 (= res!1641003 (= (content!6554 lt!1433216) ((_ map or) (content!6554 prefix!494) (content!6554 newSuffix!27))))))

(declare-fun e!2501170 () List!43311)

(assert (=> d!1193671 (= lt!1433216 e!2501170)))

(declare-fun c!696206 () Bool)

(assert (=> d!1193671 (= c!696206 ((_ is Nil!43187) prefix!494))))

(assert (=> d!1193671 (= (++!11310 prefix!494 newSuffix!27) lt!1433216)))

(declare-fun b!4030934 () Bool)

(assert (=> b!4030934 (= e!2501170 (Cons!43187 (h!48607 prefix!494) (++!11310 (t!334152 prefix!494) newSuffix!27)))))

(declare-fun b!4030933 () Bool)

(assert (=> b!4030933 (= e!2501170 newSuffix!27)))

(declare-fun b!4030936 () Bool)

(assert (=> b!4030936 (= e!2501169 (or (not (= newSuffix!27 Nil!43187)) (= lt!1433216 prefix!494)))))

(declare-fun b!4030935 () Bool)

(declare-fun res!1641002 () Bool)

(assert (=> b!4030935 (=> (not res!1641002) (not e!2501169))))

(assert (=> b!4030935 (= res!1641002 (= (size!32278 lt!1433216) (+ (size!32278 prefix!494) (size!32278 newSuffix!27))))))

(assert (= (and d!1193671 c!696206) b!4030933))

(assert (= (and d!1193671 (not c!696206)) b!4030934))

(assert (= (and d!1193671 res!1641003) b!4030935))

(assert (= (and b!4030935 res!1641002) b!4030936))

(declare-fun m!4623287 () Bool)

(assert (=> d!1193671 m!4623287))

(assert (=> d!1193671 m!4623235))

(declare-fun m!4623289 () Bool)

(assert (=> d!1193671 m!4623289))

(declare-fun m!4623291 () Bool)

(assert (=> b!4030934 m!4623291))

(declare-fun m!4623293 () Bool)

(assert (=> b!4030935 m!4623293))

(assert (=> b!4030935 m!4622589))

(assert (=> b!4030935 m!4622585))

(assert (=> b!4030399 d!1193671))

(declare-fun d!1193673 () Bool)

(declare-fun e!2501171 () Bool)

(assert (=> d!1193673 e!2501171))

(declare-fun res!1641005 () Bool)

(assert (=> d!1193673 (=> (not res!1641005) (not e!2501171))))

(declare-fun lt!1433217 () List!43311)

(assert (=> d!1193673 (= res!1641005 (= (content!6554 lt!1433217) ((_ map or) (content!6554 lt!1433006) (content!6554 newSuffixResult!27))))))

(declare-fun e!2501172 () List!43311)

(assert (=> d!1193673 (= lt!1433217 e!2501172)))

(declare-fun c!696207 () Bool)

(assert (=> d!1193673 (= c!696207 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193673 (= (++!11310 lt!1433006 newSuffixResult!27) lt!1433217)))

(declare-fun b!4030938 () Bool)

(assert (=> b!4030938 (= e!2501172 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) newSuffixResult!27)))))

(declare-fun b!4030937 () Bool)

(assert (=> b!4030937 (= e!2501172 newSuffixResult!27)))

(declare-fun b!4030940 () Bool)

(assert (=> b!4030940 (= e!2501171 (or (not (= newSuffixResult!27 Nil!43187)) (= lt!1433217 lt!1433006)))))

(declare-fun b!4030939 () Bool)

(declare-fun res!1641004 () Bool)

(assert (=> b!4030939 (=> (not res!1641004) (not e!2501171))))

(assert (=> b!4030939 (= res!1641004 (= (size!32278 lt!1433217) (+ (size!32278 lt!1433006) (size!32278 newSuffixResult!27))))))

(assert (= (and d!1193673 c!696207) b!4030937))

(assert (= (and d!1193673 (not c!696207)) b!4030938))

(assert (= (and d!1193673 res!1641005) b!4030939))

(assert (= (and b!4030939 res!1641004) b!4030940))

(declare-fun m!4623295 () Bool)

(assert (=> d!1193673 m!4623295))

(assert (=> d!1193673 m!4622619))

(declare-fun m!4623297 () Bool)

(assert (=> d!1193673 m!4623297))

(declare-fun m!4623299 () Bool)

(assert (=> b!4030938 m!4623299))

(declare-fun m!4623301 () Bool)

(assert (=> b!4030939 m!4623301))

(assert (=> b!4030939 m!4622587))

(declare-fun m!4623303 () Bool)

(assert (=> b!4030939 m!4623303))

(assert (=> b!4030399 d!1193673))

(declare-fun d!1193675 () Bool)

(assert (=> d!1193675 (= (isEmpty!25769 rules!2999) ((_ is Nil!43189) rules!2999))))

(assert (=> b!4030409 d!1193675))

(declare-fun d!1193677 () Bool)

(declare-fun e!2501173 () Bool)

(assert (=> d!1193677 e!2501173))

(declare-fun res!1641007 () Bool)

(assert (=> d!1193677 (=> (not res!1641007) (not e!2501173))))

(declare-fun lt!1433218 () List!43311)

(assert (=> d!1193677 (= res!1641007 (= (content!6554 lt!1433218) ((_ map or) (content!6554 lt!1433006) (content!6554 lt!1433001))))))

(declare-fun e!2501174 () List!43311)

(assert (=> d!1193677 (= lt!1433218 e!2501174)))

(declare-fun c!696208 () Bool)

(assert (=> d!1193677 (= c!696208 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193677 (= (++!11310 lt!1433006 lt!1433001) lt!1433218)))

(declare-fun b!4030942 () Bool)

(assert (=> b!4030942 (= e!2501174 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) lt!1433001)))))

(declare-fun b!4030941 () Bool)

(assert (=> b!4030941 (= e!2501174 lt!1433001)))

(declare-fun b!4030944 () Bool)

(assert (=> b!4030944 (= e!2501173 (or (not (= lt!1433001 Nil!43187)) (= lt!1433218 lt!1433006)))))

(declare-fun b!4030943 () Bool)

(declare-fun res!1641006 () Bool)

(assert (=> b!4030943 (=> (not res!1641006) (not e!2501173))))

(assert (=> b!4030943 (= res!1641006 (= (size!32278 lt!1433218) (+ (size!32278 lt!1433006) (size!32278 lt!1433001))))))

(assert (= (and d!1193677 c!696208) b!4030941))

(assert (= (and d!1193677 (not c!696208)) b!4030942))

(assert (= (and d!1193677 res!1641007) b!4030943))

(assert (= (and b!4030943 res!1641006) b!4030944))

(declare-fun m!4623305 () Bool)

(assert (=> d!1193677 m!4623305))

(assert (=> d!1193677 m!4622619))

(declare-fun m!4623307 () Bool)

(assert (=> d!1193677 m!4623307))

(declare-fun m!4623309 () Bool)

(assert (=> b!4030942 m!4623309))

(declare-fun m!4623311 () Bool)

(assert (=> b!4030943 m!4623311))

(assert (=> b!4030943 m!4622587))

(declare-fun m!4623313 () Bool)

(assert (=> b!4030943 m!4623313))

(assert (=> b!4030387 d!1193677))

(declare-fun d!1193679 () Bool)

(declare-fun lt!1433219 () List!43311)

(assert (=> d!1193679 (= (++!11310 lt!1433006 lt!1433219) lt!1432995)))

(declare-fun e!2501175 () List!43311)

(assert (=> d!1193679 (= lt!1433219 e!2501175)))

(declare-fun c!696209 () Bool)

(assert (=> d!1193679 (= c!696209 ((_ is Cons!43187) lt!1433006))))

(assert (=> d!1193679 (>= (size!32278 lt!1432995) (size!32278 lt!1433006))))

(assert (=> d!1193679 (= (getSuffix!2412 lt!1432995 lt!1433006) lt!1433219)))

(declare-fun b!4030945 () Bool)

(assert (=> b!4030945 (= e!2501175 (getSuffix!2412 (tail!6273 lt!1432995) (t!334152 lt!1433006)))))

(declare-fun b!4030946 () Bool)

(assert (=> b!4030946 (= e!2501175 lt!1432995)))

(assert (= (and d!1193679 c!696209) b!4030945))

(assert (= (and d!1193679 (not c!696209)) b!4030946))

(declare-fun m!4623315 () Bool)

(assert (=> d!1193679 m!4623315))

(assert (=> d!1193679 m!4622841))

(assert (=> d!1193679 m!4622587))

(assert (=> b!4030945 m!4623099))

(assert (=> b!4030945 m!4623099))

(declare-fun m!4623317 () Bool)

(assert (=> b!4030945 m!4623317))

(assert (=> b!4030387 d!1193679))

(declare-fun b!4030948 () Bool)

(declare-fun res!1641008 () Bool)

(declare-fun e!2501177 () Bool)

(assert (=> b!4030948 (=> (not res!1641008) (not e!2501177))))

(assert (=> b!4030948 (= res!1641008 (= (head!8541 lt!1432995) (head!8541 lt!1432995)))))

(declare-fun b!4030950 () Bool)

(declare-fun e!2501176 () Bool)

(assert (=> b!4030950 (= e!2501176 (>= (size!32278 lt!1432995) (size!32278 lt!1432995)))))

(declare-fun b!4030949 () Bool)

(assert (=> b!4030949 (= e!2501177 (isPrefix!3995 (tail!6273 lt!1432995) (tail!6273 lt!1432995)))))

(declare-fun b!4030947 () Bool)

(declare-fun e!2501178 () Bool)

(assert (=> b!4030947 (= e!2501178 e!2501177)))

(declare-fun res!1641010 () Bool)

(assert (=> b!4030947 (=> (not res!1641010) (not e!2501177))))

(assert (=> b!4030947 (= res!1641010 (not ((_ is Nil!43187) lt!1432995)))))

(declare-fun d!1193681 () Bool)

(assert (=> d!1193681 e!2501176))

(declare-fun res!1641011 () Bool)

(assert (=> d!1193681 (=> res!1641011 e!2501176)))

(declare-fun lt!1433220 () Bool)

(assert (=> d!1193681 (= res!1641011 (not lt!1433220))))

(assert (=> d!1193681 (= lt!1433220 e!2501178)))

(declare-fun res!1641009 () Bool)

(assert (=> d!1193681 (=> res!1641009 e!2501178)))

(assert (=> d!1193681 (= res!1641009 ((_ is Nil!43187) lt!1432995))))

(assert (=> d!1193681 (= (isPrefix!3995 lt!1432995 lt!1432995) lt!1433220)))

(assert (= (and d!1193681 (not res!1641009)) b!4030947))

(assert (= (and b!4030947 res!1641010) b!4030948))

(assert (= (and b!4030948 res!1641008) b!4030949))

(assert (= (and d!1193681 (not res!1641011)) b!4030950))

(assert (=> b!4030948 m!4623097))

(assert (=> b!4030948 m!4623097))

(assert (=> b!4030950 m!4622841))

(assert (=> b!4030950 m!4622841))

(assert (=> b!4030949 m!4623099))

(assert (=> b!4030949 m!4623099))

(assert (=> b!4030949 m!4623099))

(assert (=> b!4030949 m!4623099))

(declare-fun m!4623319 () Bool)

(assert (=> b!4030949 m!4623319))

(assert (=> b!4030387 d!1193681))

(declare-fun d!1193683 () Bool)

(assert (=> d!1193683 (isPrefix!3995 lt!1432995 lt!1432995)))

(declare-fun lt!1433223 () Unit!62350)

(declare-fun choose!24389 (List!43311 List!43311) Unit!62350)

(assert (=> d!1193683 (= lt!1433223 (choose!24389 lt!1432995 lt!1432995))))

(assert (=> d!1193683 (= (lemmaIsPrefixRefl!2562 lt!1432995 lt!1432995) lt!1433223)))

(declare-fun bs!590244 () Bool)

(assert (= bs!590244 d!1193683))

(assert (=> bs!590244 m!4622611))

(declare-fun m!4623321 () Bool)

(assert (=> bs!590244 m!4623321))

(assert (=> b!4030387 d!1193683))

(declare-fun d!1193685 () Bool)

(declare-fun lt!1433224 () Int)

(assert (=> d!1193685 (>= lt!1433224 0)))

(declare-fun e!2501179 () Int)

(assert (=> d!1193685 (= lt!1433224 e!2501179)))

(declare-fun c!696210 () Bool)

(assert (=> d!1193685 (= c!696210 ((_ is Nil!43187) (originalCharacters!7508 token!484)))))

(assert (=> d!1193685 (= (size!32278 (originalCharacters!7508 token!484)) lt!1433224)))

(declare-fun b!4030951 () Bool)

(assert (=> b!4030951 (= e!2501179 0)))

(declare-fun b!4030952 () Bool)

(assert (=> b!4030952 (= e!2501179 (+ 1 (size!32278 (t!334152 (originalCharacters!7508 token!484)))))))

(assert (= (and d!1193685 c!696210) b!4030951))

(assert (= (and d!1193685 (not c!696210)) b!4030952))

(declare-fun m!4623323 () Bool)

(assert (=> b!4030952 m!4623323))

(assert (=> b!4030398 d!1193685))

(declare-fun d!1193687 () Bool)

(assert (=> d!1193687 (= (inv!57689 (tag!7768 (h!48609 rules!2999))) (= (mod (str.len (value!217511 (tag!7768 (h!48609 rules!2999)))) 2) 0))))

(assert (=> b!4030397 d!1193687))

(declare-fun d!1193689 () Bool)

(declare-fun res!1641012 () Bool)

(declare-fun e!2501180 () Bool)

(assert (=> d!1193689 (=> (not res!1641012) (not e!2501180))))

(assert (=> d!1193689 (= res!1641012 (semiInverseModEq!2946 (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (h!48609 rules!2999)))))))

(assert (=> d!1193689 (= (inv!57693 (transformation!6908 (h!48609 rules!2999))) e!2501180)))

(declare-fun b!4030953 () Bool)

(assert (=> b!4030953 (= e!2501180 (equivClasses!2845 (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (h!48609 rules!2999)))))))

(assert (= (and d!1193689 res!1641012) b!4030953))

(declare-fun m!4623325 () Bool)

(assert (=> d!1193689 m!4623325))

(declare-fun m!4623327 () Bool)

(assert (=> b!4030953 m!4623327))

(assert (=> b!4030397 d!1193689))

(declare-fun d!1193691 () Bool)

(declare-fun lt!1433225 () Int)

(assert (=> d!1193691 (>= lt!1433225 0)))

(declare-fun e!2501181 () Int)

(assert (=> d!1193691 (= lt!1433225 e!2501181)))

(declare-fun c!696211 () Bool)

(assert (=> d!1193691 (= c!696211 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193691 (= (size!32278 lt!1433006) lt!1433225)))

(declare-fun b!4030954 () Bool)

(assert (=> b!4030954 (= e!2501181 0)))

(declare-fun b!4030955 () Bool)

(assert (=> b!4030955 (= e!2501181 (+ 1 (size!32278 (t!334152 lt!1433006))))))

(assert (= (and d!1193691 c!696211) b!4030954))

(assert (= (and d!1193691 (not c!696211)) b!4030955))

(declare-fun m!4623329 () Bool)

(assert (=> b!4030955 m!4623329))

(assert (=> b!4030407 d!1193691))

(declare-fun d!1193693 () Bool)

(declare-fun lt!1433226 () Int)

(assert (=> d!1193693 (>= lt!1433226 0)))

(declare-fun e!2501182 () Int)

(assert (=> d!1193693 (= lt!1433226 e!2501182)))

(declare-fun c!696212 () Bool)

(assert (=> d!1193693 (= c!696212 ((_ is Nil!43187) prefix!494))))

(assert (=> d!1193693 (= (size!32278 prefix!494) lt!1433226)))

(declare-fun b!4030956 () Bool)

(assert (=> b!4030956 (= e!2501182 0)))

(declare-fun b!4030957 () Bool)

(assert (=> b!4030957 (= e!2501182 (+ 1 (size!32278 (t!334152 prefix!494))))))

(assert (= (and d!1193693 c!696212) b!4030956))

(assert (= (and d!1193693 (not c!696212)) b!4030957))

(declare-fun m!4623331 () Bool)

(assert (=> b!4030957 m!4623331))

(assert (=> b!4030407 d!1193693))

(declare-fun d!1193695 () Bool)

(declare-fun list!16068 (Conc!13119) List!43311)

(assert (=> d!1193695 (= (list!16066 (charsOf!4724 token!484)) (list!16068 (c!696124 (charsOf!4724 token!484))))))

(declare-fun bs!590245 () Bool)

(assert (= bs!590245 d!1193695))

(declare-fun m!4623333 () Bool)

(assert (=> bs!590245 m!4623333))

(assert (=> b!4030407 d!1193695))

(declare-fun d!1193697 () Bool)

(declare-fun lt!1433229 () BalanceConc!25832)

(assert (=> d!1193697 (= (list!16066 lt!1433229) (originalCharacters!7508 token!484))))

(declare-fun dynLambda!18298 (Int TokenValue!7138) BalanceConc!25832)

(assert (=> d!1193697 (= lt!1433229 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))

(assert (=> d!1193697 (= (charsOf!4724 token!484) lt!1433229)))

(declare-fun b_lambda!117577 () Bool)

(assert (=> (not b_lambda!117577) (not d!1193697)))

(declare-fun t!334172 () Bool)

(declare-fun tb!242101 () Bool)

(assert (=> (and b!4030388 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334172) tb!242101))

(declare-fun b!4030962 () Bool)

(declare-fun e!2501185 () Bool)

(declare-fun tp!1225124 () Bool)

(declare-fun inv!57696 (Conc!13119) Bool)

(assert (=> b!4030962 (= e!2501185 (and (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))) tp!1225124))))

(declare-fun result!293474 () Bool)

(declare-fun inv!57697 (BalanceConc!25832) Bool)

(assert (=> tb!242101 (= result!293474 (and (inv!57697 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))) e!2501185))))

(assert (= tb!242101 b!4030962))

(declare-fun m!4623335 () Bool)

(assert (=> b!4030962 m!4623335))

(declare-fun m!4623337 () Bool)

(assert (=> tb!242101 m!4623337))

(assert (=> d!1193697 t!334172))

(declare-fun b_and!309747 () Bool)

(assert (= b_and!309721 (and (=> t!334172 result!293474) b_and!309747)))

(declare-fun t!334174 () Bool)

(declare-fun tb!242103 () Bool)

(assert (=> (and b!4030385 (= (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334174) tb!242103))

(declare-fun result!293478 () Bool)

(assert (= result!293478 result!293474))

(assert (=> d!1193697 t!334174))

(declare-fun b_and!309749 () Bool)

(assert (= b_and!309725 (and (=> t!334174 result!293478) b_and!309749)))

(declare-fun m!4623339 () Bool)

(assert (=> d!1193697 m!4623339))

(declare-fun m!4623341 () Bool)

(assert (=> d!1193697 m!4623341))

(assert (=> b!4030407 d!1193697))

(declare-fun d!1193699 () Bool)

(declare-fun res!1641017 () Bool)

(declare-fun e!2501188 () Bool)

(assert (=> d!1193699 (=> (not res!1641017) (not e!2501188))))

(assert (=> d!1193699 (= res!1641017 (not (isEmpty!25772 (originalCharacters!7508 token!484))))))

(assert (=> d!1193699 (= (inv!57692 token!484) e!2501188)))

(declare-fun b!4030967 () Bool)

(declare-fun res!1641018 () Bool)

(assert (=> b!4030967 (=> (not res!1641018) (not e!2501188))))

(assert (=> b!4030967 (= res!1641018 (= (originalCharacters!7508 token!484) (list!16066 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))))

(declare-fun b!4030968 () Bool)

(assert (=> b!4030968 (= e!2501188 (= (size!32277 token!484) (size!32278 (originalCharacters!7508 token!484))))))

(assert (= (and d!1193699 res!1641017) b!4030967))

(assert (= (and b!4030967 res!1641018) b!4030968))

(declare-fun b_lambda!117579 () Bool)

(assert (=> (not b_lambda!117579) (not b!4030967)))

(assert (=> b!4030967 t!334172))

(declare-fun b_and!309751 () Bool)

(assert (= b_and!309747 (and (=> t!334172 result!293474) b_and!309751)))

(assert (=> b!4030967 t!334174))

(declare-fun b_and!309753 () Bool)

(assert (= b_and!309749 (and (=> t!334174 result!293478) b_and!309753)))

(declare-fun m!4623343 () Bool)

(assert (=> d!1193699 m!4623343))

(assert (=> b!4030967 m!4623341))

(assert (=> b!4030967 m!4623341))

(declare-fun m!4623345 () Bool)

(assert (=> b!4030967 m!4623345))

(assert (=> b!4030968 m!4622513))

(assert (=> start!379648 d!1193699))

(declare-fun d!1193701 () Bool)

(declare-fun e!2501189 () Bool)

(assert (=> d!1193701 e!2501189))

(declare-fun res!1641020 () Bool)

(assert (=> d!1193701 (=> (not res!1641020) (not e!2501189))))

(declare-fun lt!1433230 () List!43311)

(assert (=> d!1193701 (= res!1641020 (= (content!6554 lt!1433230) ((_ map or) (content!6554 lt!1433006) (content!6554 suffixResult!105))))))

(declare-fun e!2501190 () List!43311)

(assert (=> d!1193701 (= lt!1433230 e!2501190)))

(declare-fun c!696213 () Bool)

(assert (=> d!1193701 (= c!696213 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193701 (= (++!11310 lt!1433006 suffixResult!105) lt!1433230)))

(declare-fun b!4030970 () Bool)

(assert (=> b!4030970 (= e!2501190 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) suffixResult!105)))))

(declare-fun b!4030969 () Bool)

(assert (=> b!4030969 (= e!2501190 suffixResult!105)))

(declare-fun b!4030972 () Bool)

(assert (=> b!4030972 (= e!2501189 (or (not (= suffixResult!105 Nil!43187)) (= lt!1433230 lt!1433006)))))

(declare-fun b!4030971 () Bool)

(declare-fun res!1641019 () Bool)

(assert (=> b!4030971 (=> (not res!1641019) (not e!2501189))))

(assert (=> b!4030971 (= res!1641019 (= (size!32278 lt!1433230) (+ (size!32278 lt!1433006) (size!32278 suffixResult!105))))))

(assert (= (and d!1193701 c!696213) b!4030969))

(assert (= (and d!1193701 (not c!696213)) b!4030970))

(assert (= (and d!1193701 res!1641020) b!4030971))

(assert (= (and b!4030971 res!1641019) b!4030972))

(declare-fun m!4623347 () Bool)

(assert (=> d!1193701 m!4623347))

(assert (=> d!1193701 m!4622619))

(declare-fun m!4623349 () Bool)

(assert (=> d!1193701 m!4623349))

(declare-fun m!4623351 () Bool)

(assert (=> b!4030970 m!4623351))

(declare-fun m!4623353 () Bool)

(assert (=> b!4030971 m!4623353))

(assert (=> b!4030971 m!4622587))

(declare-fun m!4623355 () Bool)

(assert (=> b!4030971 m!4623355))

(assert (=> b!4030386 d!1193701))

(declare-fun d!1193703 () Bool)

(declare-fun e!2501193 () Bool)

(assert (=> d!1193703 e!2501193))

(declare-fun res!1641023 () Bool)

(assert (=> d!1193703 (=> (not res!1641023) (not e!2501193))))

(assert (=> d!1193703 (= res!1641023 (semiInverseModEq!2946 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))))))

(declare-fun Unit!62357 () Unit!62350)

(assert (=> d!1193703 (= (lemmaInv!1117 (transformation!6908 (rule!9968 token!484))) Unit!62357)))

(declare-fun b!4030975 () Bool)

(assert (=> b!4030975 (= e!2501193 (equivClasses!2845 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))))))

(assert (= (and d!1193703 res!1641023) b!4030975))

(assert (=> d!1193703 m!4623247))

(assert (=> b!4030975 m!4623249))

(assert (=> b!4030386 d!1193703))

(declare-fun d!1193705 () Bool)

(declare-fun res!1641028 () Bool)

(declare-fun e!2501196 () Bool)

(assert (=> d!1193705 (=> (not res!1641028) (not e!2501196))))

(assert (=> d!1193705 (= res!1641028 (validRegex!5338 (regex!6908 (rule!9968 token!484))))))

(assert (=> d!1193705 (= (ruleValid!2838 thiss!21717 (rule!9968 token!484)) e!2501196)))

(declare-fun b!4030980 () Bool)

(declare-fun res!1641029 () Bool)

(assert (=> b!4030980 (=> (not res!1641029) (not e!2501196))))

(assert (=> b!4030980 (= res!1641029 (not (nullable!4138 (regex!6908 (rule!9968 token!484)))))))

(declare-fun b!4030981 () Bool)

(assert (=> b!4030981 (= e!2501196 (not (= (tag!7768 (rule!9968 token!484)) (String!49409 ""))))))

(assert (= (and d!1193705 res!1641028) b!4030980))

(assert (= (and b!4030980 res!1641029) b!4030981))

(assert (=> d!1193705 m!4623039))

(assert (=> b!4030980 m!4623041))

(assert (=> b!4030386 d!1193705))

(declare-fun d!1193707 () Bool)

(assert (=> d!1193707 (ruleValid!2838 thiss!21717 (rule!9968 token!484))))

(declare-fun lt!1433233 () Unit!62350)

(declare-fun choose!24390 (LexerInterface!6497 Rule!13616 List!43313) Unit!62350)

(assert (=> d!1193707 (= lt!1433233 (choose!24390 thiss!21717 (rule!9968 token!484) rules!2999))))

(assert (=> d!1193707 (contains!8572 rules!2999 (rule!9968 token!484))))

(assert (=> d!1193707 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1908 thiss!21717 (rule!9968 token!484) rules!2999) lt!1433233)))

(declare-fun bs!590246 () Bool)

(assert (= bs!590246 d!1193707))

(assert (=> bs!590246 m!4622519))

(declare-fun m!4623357 () Bool)

(assert (=> bs!590246 m!4623357))

(declare-fun m!4623359 () Bool)

(assert (=> bs!590246 m!4623359))

(assert (=> b!4030386 d!1193707))

(declare-fun b!4030992 () Bool)

(declare-fun b_free!112341 () Bool)

(declare-fun b_next!113045 () Bool)

(assert (=> b!4030992 (= b_free!112341 (not b_next!113045))))

(declare-fun t!334176 () Bool)

(declare-fun tb!242105 () Bool)

(assert (=> (and b!4030992 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334176) tb!242105))

(declare-fun result!293482 () Bool)

(assert (= result!293482 result!293458))

(assert (=> d!1193537 t!334176))

(declare-fun b_and!309755 () Bool)

(declare-fun tp!1225135 () Bool)

(assert (=> b!4030992 (= tp!1225135 (and (=> t!334176 result!293482) b_and!309755))))

(declare-fun b_free!112343 () Bool)

(declare-fun b_next!113047 () Bool)

(assert (=> b!4030992 (= b_free!112343 (not b_next!113047))))

(declare-fun tb!242107 () Bool)

(declare-fun t!334178 () Bool)

(assert (=> (and b!4030992 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334178) tb!242107))

(declare-fun result!293484 () Bool)

(assert (= result!293484 result!293474))

(assert (=> d!1193697 t!334178))

(assert (=> b!4030967 t!334178))

(declare-fun b_and!309757 () Bool)

(declare-fun tp!1225136 () Bool)

(assert (=> b!4030992 (= tp!1225136 (and (=> t!334178 result!293484) b_and!309757))))

(declare-fun e!2501206 () Bool)

(assert (=> b!4030992 (= e!2501206 (and tp!1225135 tp!1225136))))

(declare-fun b!4030991 () Bool)

(declare-fun e!2501207 () Bool)

(declare-fun tp!1225134 () Bool)

(assert (=> b!4030991 (= e!2501207 (and tp!1225134 (inv!57689 (tag!7768 (h!48609 (t!334154 rules!2999)))) (inv!57693 (transformation!6908 (h!48609 (t!334154 rules!2999)))) e!2501206))))

(declare-fun b!4030990 () Bool)

(declare-fun e!2501208 () Bool)

(declare-fun tp!1225133 () Bool)

(assert (=> b!4030990 (= e!2501208 (and e!2501207 tp!1225133))))

(assert (=> b!4030401 (= tp!1225073 e!2501208)))

(assert (= b!4030991 b!4030992))

(assert (= b!4030990 b!4030991))

(assert (= (and b!4030401 ((_ is Cons!43189) (t!334154 rules!2999))) b!4030990))

(declare-fun m!4623361 () Bool)

(assert (=> b!4030991 m!4623361))

(declare-fun m!4623363 () Bool)

(assert (=> b!4030991 m!4623363))

(declare-fun b!4030997 () Bool)

(declare-fun e!2501211 () Bool)

(declare-fun tp!1225139 () Bool)

(assert (=> b!4030997 (= e!2501211 (and tp_is_empty!20597 tp!1225139))))

(assert (=> b!4030396 (= tp!1225078 e!2501211)))

(assert (= (and b!4030396 ((_ is Cons!43187) (t!334152 prefix!494))) b!4030997))

(declare-fun b!4030998 () Bool)

(declare-fun e!2501212 () Bool)

(declare-fun tp!1225140 () Bool)

(assert (=> b!4030998 (= e!2501212 (and tp_is_empty!20597 tp!1225140))))

(assert (=> b!4030406 (= tp!1225074 e!2501212)))

(assert (= (and b!4030406 ((_ is Cons!43187) (t!334152 suffix!1299))) b!4030998))

(declare-fun b!4031010 () Bool)

(declare-fun e!2501215 () Bool)

(declare-fun tp!1225152 () Bool)

(declare-fun tp!1225155 () Bool)

(assert (=> b!4031010 (= e!2501215 (and tp!1225152 tp!1225155))))

(assert (=> b!4030390 (= tp!1225076 e!2501215)))

(declare-fun b!4031012 () Bool)

(declare-fun tp!1225154 () Bool)

(declare-fun tp!1225153 () Bool)

(assert (=> b!4031012 (= e!2501215 (and tp!1225154 tp!1225153))))

(declare-fun b!4031011 () Bool)

(declare-fun tp!1225151 () Bool)

(assert (=> b!4031011 (= e!2501215 tp!1225151)))

(declare-fun b!4031009 () Bool)

(assert (=> b!4031009 (= e!2501215 tp_is_empty!20597)))

(assert (= (and b!4030390 ((_ is ElementMatch!11813) (regex!6908 (rule!9968 token!484)))) b!4031009))

(assert (= (and b!4030390 ((_ is Concat!18952) (regex!6908 (rule!9968 token!484)))) b!4031010))

(assert (= (and b!4030390 ((_ is Star!11813) (regex!6908 (rule!9968 token!484)))) b!4031011))

(assert (= (and b!4030390 ((_ is Union!11813) (regex!6908 (rule!9968 token!484)))) b!4031012))

(declare-fun b!4031013 () Bool)

(declare-fun e!2501216 () Bool)

(declare-fun tp!1225156 () Bool)

(assert (=> b!4031013 (= e!2501216 (and tp_is_empty!20597 tp!1225156))))

(assert (=> b!4030405 (= tp!1225077 e!2501216)))

(assert (= (and b!4030405 ((_ is Cons!43187) (originalCharacters!7508 token!484))) b!4031013))

(declare-fun b!4031014 () Bool)

(declare-fun e!2501217 () Bool)

(declare-fun tp!1225157 () Bool)

(assert (=> b!4031014 (= e!2501217 (and tp_is_empty!20597 tp!1225157))))

(assert (=> b!4030393 (= tp!1225075 e!2501217)))

(assert (= (and b!4030393 ((_ is Cons!43187) (t!334152 suffixResult!105))) b!4031014))

(declare-fun b!4031015 () Bool)

(declare-fun e!2501218 () Bool)

(declare-fun tp!1225158 () Bool)

(assert (=> b!4031015 (= e!2501218 (and tp_is_empty!20597 tp!1225158))))

(assert (=> b!4030403 (= tp!1225071 e!2501218)))

(assert (= (and b!4030403 ((_ is Cons!43187) (t!334152 newSuffix!27))) b!4031015))

(declare-fun b!4031017 () Bool)

(declare-fun e!2501219 () Bool)

(declare-fun tp!1225160 () Bool)

(declare-fun tp!1225163 () Bool)

(assert (=> b!4031017 (= e!2501219 (and tp!1225160 tp!1225163))))

(assert (=> b!4030397 (= tp!1225066 e!2501219)))

(declare-fun b!4031019 () Bool)

(declare-fun tp!1225162 () Bool)

(declare-fun tp!1225161 () Bool)

(assert (=> b!4031019 (= e!2501219 (and tp!1225162 tp!1225161))))

(declare-fun b!4031018 () Bool)

(declare-fun tp!1225159 () Bool)

(assert (=> b!4031018 (= e!2501219 tp!1225159)))

(declare-fun b!4031016 () Bool)

(assert (=> b!4031016 (= e!2501219 tp_is_empty!20597)))

(assert (= (and b!4030397 ((_ is ElementMatch!11813) (regex!6908 (h!48609 rules!2999)))) b!4031016))

(assert (= (and b!4030397 ((_ is Concat!18952) (regex!6908 (h!48609 rules!2999)))) b!4031017))

(assert (= (and b!4030397 ((_ is Star!11813) (regex!6908 (h!48609 rules!2999)))) b!4031018))

(assert (= (and b!4030397 ((_ is Union!11813) (regex!6908 (h!48609 rules!2999)))) b!4031019))

(declare-fun b!4031020 () Bool)

(declare-fun e!2501220 () Bool)

(declare-fun tp!1225164 () Bool)

(assert (=> b!4031020 (= e!2501220 (and tp_is_empty!20597 tp!1225164))))

(assert (=> b!4030408 (= tp!1225072 e!2501220)))

(assert (= (and b!4030408 ((_ is Cons!43187) (t!334152 newSuffixResult!27))) b!4031020))

(declare-fun b_lambda!117581 () Bool)

(assert (= b_lambda!117579 (or (and b!4030388 b_free!112331 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) (and b!4030385 b_free!112335) (and b!4030992 b_free!112343 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) b_lambda!117581)))

(declare-fun b_lambda!117583 () Bool)

(assert (= b_lambda!117577 (or (and b!4030388 b_free!112331 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) (and b!4030385 b_free!112335) (and b!4030992 b_free!112343 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) b_lambda!117583)))

(declare-fun b_lambda!117585 () Bool)

(assert (= b_lambda!117567 (or (and b!4030388 b_free!112329 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) (and b!4030385 b_free!112333) (and b!4030992 b_free!112341 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) b_lambda!117585)))

(check-sat (not b!4031018) (not b!4031012) (not b!4031019) (not b!4030494) (not b!4030928) (not b!4030884) (not b!4030883) (not b!4030962) (not b!4030902) (not b!4031020) (not b!4030489) (not b!4030445) (not d!1193651) (not b!4030799) (not b!4030775) (not b!4031013) (not d!1193699) (not d!1193575) (not b!4030443) (not b!4030795) (not d!1193551) (not b!4030805) b_and!309737 (not tb!242093) (not b!4030943) (not b!4030939) (not d!1193689) (not b!4030891) (not b!4030896) (not d!1193669) (not d!1193659) (not b!4030767) (not b!4030623) (not b!4030486) (not b!4030957) (not b!4031014) (not b!4030429) b_and!309755 (not b!4030615) (not b!4030679) (not b_lambda!117581) (not b!4030898) (not d!1193599) (not b!4030490) (not bm!286869) (not d!1193539) (not b!4030934) (not b!4030801) (not b!4030998) (not d!1193623) (not d!1193667) (not b!4030975) (not tb!242101) (not b!4030774) (not b!4030935) (not b!4030492) (not b!4030920) (not b!4030895) (not d!1193703) (not b!4030980) tp_is_empty!20597 (not d!1193679) (not b!4030914) (not b!4030804) (not b!4030886) (not d!1193553) (not d!1193661) (not b!4030991) (not b!4030927) (not d!1193705) (not d!1193649) (not b!4031011) (not b!4030678) (not b!4030621) (not b!4031015) (not b!4030796) (not b!4030493) b_and!309753 (not b_next!113045) (not b!4030919) (not b!4030942) (not b_lambda!117583) (not b!4030444) (not b!4030423) (not b!4030889) (not d!1193701) (not b!4030997) (not b!4030887) (not d!1193643) (not b!4030797) b_and!309735 (not b!4030771) (not b!4030945) (not b!4030917) (not b_next!113047) (not b!4030932) (not b!4030949) (not b!4030971) (not d!1193647) (not b!4031010) (not d!1193485) (not b_next!113037) (not b!4030800) (not b!4030923) (not b!4030990) (not b!4030955) (not b!4030616) (not b!4030968) (not b!4030905) (not b!4030912) (not b!4030618) (not b!4030952) (not b!4030967) (not b!4030622) (not d!1193579) (not b_lambda!117585) (not d!1193671) (not d!1193677) (not b!4030893) (not b!4030924) (not b!4030697) (not b!4030888) (not b_next!113035) (not b!4030803) b_and!309757 (not b!4030970) (not d!1193569) b_and!309751 (not d!1193697) (not d!1193663) (not b!4030422) (not bm!286868) (not d!1193707) (not b!4030680) (not b!4030953) (not b!4030758) (not d!1193695) (not d!1193665) (not b!4030904) (not b_next!113033) (not b!4030620) (not b!4030938) (not bm!286865) (not b!4030776) (not d!1193505) (not b!4030759) (not b!4030882) (not d!1193473) (not b!4030885) (not d!1193673) (not d!1193475) (not b!4030950) (not b!4030892) (not d!1193581) (not d!1193607) (not b!4030900) (not b!4030757) (not b!4030948) (not d!1193619) (not b!4030901) (not d!1193683) (not b!4030897) (not b_next!113039) (not b!4030617) (not b!4030769) (not d!1193625) (not b!4031017) (not d!1193501) (not b!4030899))
(check-sat b_and!309737 b_and!309755 b_and!309753 (not b_next!113045) b_and!309735 (not b_next!113047) (not b_next!113037) (not b_next!113033) (not b_next!113039) (not b_next!113035) b_and!309757 b_and!309751)
(get-model)

(declare-fun d!1193733 () Bool)

(assert (=> d!1193733 true))

(declare-fun order!22575 () Int)

(declare-fun order!22577 () Int)

(declare-fun lambda!127226 () Int)

(declare-fun dynLambda!18299 (Int Int) Int)

(declare-fun dynLambda!18300 (Int Int) Int)

(assert (=> d!1193733 (< (dynLambda!18299 order!22575 (toChars!9291 (transformation!6908 (rule!9968 token!484)))) (dynLambda!18300 order!22577 lambda!127226))))

(assert (=> d!1193733 true))

(declare-fun order!22579 () Int)

(declare-fun dynLambda!18301 (Int Int) Int)

(assert (=> d!1193733 (< (dynLambda!18301 order!22579 (toValue!9432 (transformation!6908 (rule!9968 token!484)))) (dynLambda!18300 order!22577 lambda!127226))))

(declare-fun Forall!1482 (Int) Bool)

(assert (=> d!1193733 (= (semiInverseModEq!2946 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) (Forall!1482 lambda!127226))))

(declare-fun bs!590249 () Bool)

(assert (= bs!590249 d!1193733))

(declare-fun m!4623383 () Bool)

(assert (=> bs!590249 m!4623383))

(assert (=> d!1193703 d!1193733))

(declare-fun d!1193735 () Bool)

(declare-fun e!2501227 () Bool)

(assert (=> d!1193735 e!2501227))

(declare-fun res!1641031 () Bool)

(assert (=> d!1193735 (=> (not res!1641031) (not e!2501227))))

(declare-fun lt!1433234 () List!43311)

(assert (=> d!1193735 (= res!1641031 (= (content!6554 lt!1433234) ((_ map or) (content!6554 (t!334152 prefix!494)) (content!6554 newSuffix!27))))))

(declare-fun e!2501228 () List!43311)

(assert (=> d!1193735 (= lt!1433234 e!2501228)))

(declare-fun c!696219 () Bool)

(assert (=> d!1193735 (= c!696219 ((_ is Nil!43187) (t!334152 prefix!494)))))

(assert (=> d!1193735 (= (++!11310 (t!334152 prefix!494) newSuffix!27) lt!1433234)))

(declare-fun b!4031036 () Bool)

(assert (=> b!4031036 (= e!2501228 (Cons!43187 (h!48607 (t!334152 prefix!494)) (++!11310 (t!334152 (t!334152 prefix!494)) newSuffix!27)))))

(declare-fun b!4031035 () Bool)

(assert (=> b!4031035 (= e!2501228 newSuffix!27)))

(declare-fun b!4031038 () Bool)

(assert (=> b!4031038 (= e!2501227 (or (not (= newSuffix!27 Nil!43187)) (= lt!1433234 (t!334152 prefix!494))))))

(declare-fun b!4031037 () Bool)

(declare-fun res!1641030 () Bool)

(assert (=> b!4031037 (=> (not res!1641030) (not e!2501227))))

(assert (=> b!4031037 (= res!1641030 (= (size!32278 lt!1433234) (+ (size!32278 (t!334152 prefix!494)) (size!32278 newSuffix!27))))))

(assert (= (and d!1193735 c!696219) b!4031035))

(assert (= (and d!1193735 (not c!696219)) b!4031036))

(assert (= (and d!1193735 res!1641031) b!4031037))

(assert (= (and b!4031037 res!1641030) b!4031038))

(declare-fun m!4623385 () Bool)

(assert (=> d!1193735 m!4623385))

(declare-fun m!4623387 () Bool)

(assert (=> d!1193735 m!4623387))

(assert (=> d!1193735 m!4623289))

(declare-fun m!4623389 () Bool)

(assert (=> b!4031036 m!4623389))

(declare-fun m!4623391 () Bool)

(assert (=> b!4031037 m!4623391))

(assert (=> b!4031037 m!4623331))

(assert (=> b!4031037 m!4622585))

(assert (=> b!4030934 d!1193735))

(declare-fun d!1193737 () Bool)

(declare-fun lt!1433235 () Int)

(assert (=> d!1193737 (>= lt!1433235 0)))

(declare-fun e!2501229 () Int)

(assert (=> d!1193737 (= lt!1433235 e!2501229)))

(declare-fun c!696220 () Bool)

(assert (=> d!1193737 (= c!696220 ((_ is Nil!43187) lt!1433217))))

(assert (=> d!1193737 (= (size!32278 lt!1433217) lt!1433235)))

(declare-fun b!4031039 () Bool)

(assert (=> b!4031039 (= e!2501229 0)))

(declare-fun b!4031040 () Bool)

(assert (=> b!4031040 (= e!2501229 (+ 1 (size!32278 (t!334152 lt!1433217))))))

(assert (= (and d!1193737 c!696220) b!4031039))

(assert (= (and d!1193737 (not c!696220)) b!4031040))

(declare-fun m!4623393 () Bool)

(assert (=> b!4031040 m!4623393))

(assert (=> b!4030939 d!1193737))

(assert (=> b!4030939 d!1193691))

(declare-fun d!1193739 () Bool)

(declare-fun lt!1433236 () Int)

(assert (=> d!1193739 (>= lt!1433236 0)))

(declare-fun e!2501230 () Int)

(assert (=> d!1193739 (= lt!1433236 e!2501230)))

(declare-fun c!696221 () Bool)

(assert (=> d!1193739 (= c!696221 ((_ is Nil!43187) newSuffixResult!27))))

(assert (=> d!1193739 (= (size!32278 newSuffixResult!27) lt!1433236)))

(declare-fun b!4031041 () Bool)

(assert (=> b!4031041 (= e!2501230 0)))

(declare-fun b!4031042 () Bool)

(assert (=> b!4031042 (= e!2501230 (+ 1 (size!32278 (t!334152 newSuffixResult!27))))))

(assert (= (and d!1193739 c!696221) b!4031041))

(assert (= (and d!1193739 (not c!696221)) b!4031042))

(declare-fun m!4623395 () Bool)

(assert (=> b!4031042 m!4623395))

(assert (=> b!4030939 d!1193739))

(declare-fun b!4031043 () Bool)

(declare-fun res!1641034 () Bool)

(declare-fun e!2501232 () Bool)

(assert (=> b!4031043 (=> (not res!1641034) (not e!2501232))))

(declare-fun lt!1433238 () Option!9322)

(assert (=> b!4031043 (= res!1641034 (= (rule!9968 (_1!24269 (get!14170 lt!1433238))) (h!48609 rules!2999)))))

(declare-fun b!4031044 () Bool)

(declare-fun e!2501231 () Option!9322)

(declare-fun lt!1433241 () tuple2!42274)

(assert (=> b!4031044 (= e!2501231 (Some!9321 (tuple2!42271 (Token!12955 (apply!10097 (transformation!6908 (h!48609 rules!2999)) (seqFromList!5125 (_1!24271 lt!1433241))) (h!48609 rules!2999) (size!32280 (seqFromList!5125 (_1!24271 lt!1433241))) (_1!24271 lt!1433241)) (_2!24271 lt!1433241))))))

(declare-fun lt!1433240 () Unit!62350)

(assert (=> b!4031044 (= lt!1433240 (longestMatchIsAcceptedByMatchOrIsEmpty!1348 (regex!6908 (h!48609 rules!2999)) lt!1433016))))

(declare-fun res!1641035 () Bool)

(assert (=> b!4031044 (= res!1641035 (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (h!48609 rules!2999)) Nil!43187 (size!32278 Nil!43187) lt!1433016 lt!1433016 (size!32278 lt!1433016)))))))

(declare-fun e!2501234 () Bool)

(assert (=> b!4031044 (=> res!1641035 e!2501234)))

(assert (=> b!4031044 e!2501234))

(declare-fun lt!1433239 () Unit!62350)

(assert (=> b!4031044 (= lt!1433239 lt!1433240)))

(declare-fun lt!1433237 () Unit!62350)

(assert (=> b!4031044 (= lt!1433237 (lemmaSemiInverse!1895 (transformation!6908 (h!48609 rules!2999)) (seqFromList!5125 (_1!24271 lt!1433241))))))

(declare-fun b!4031045 () Bool)

(declare-fun e!2501233 () Bool)

(assert (=> b!4031045 (= e!2501233 e!2501232)))

(declare-fun res!1641036 () Bool)

(assert (=> b!4031045 (=> (not res!1641036) (not e!2501232))))

(assert (=> b!4031045 (= res!1641036 (matchR!5766 (regex!6908 (h!48609 rules!2999)) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433238))))))))

(declare-fun b!4031046 () Bool)

(declare-fun res!1641037 () Bool)

(assert (=> b!4031046 (=> (not res!1641037) (not e!2501232))))

(assert (=> b!4031046 (= res!1641037 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433238)))) (_2!24269 (get!14170 lt!1433238))) lt!1433016))))

(declare-fun b!4031047 () Bool)

(assert (=> b!4031047 (= e!2501231 None!9321)))

(declare-fun b!4031048 () Bool)

(assert (=> b!4031048 (= e!2501234 (matchR!5766 (regex!6908 (h!48609 rules!2999)) (_1!24271 (findLongestMatchInner!1375 (regex!6908 (h!48609 rules!2999)) Nil!43187 (size!32278 Nil!43187) lt!1433016 lt!1433016 (size!32278 lt!1433016)))))))

(declare-fun d!1193741 () Bool)

(assert (=> d!1193741 e!2501233))

(declare-fun res!1641038 () Bool)

(assert (=> d!1193741 (=> res!1641038 e!2501233)))

(assert (=> d!1193741 (= res!1641038 (isEmpty!25773 lt!1433238))))

(assert (=> d!1193741 (= lt!1433238 e!2501231)))

(declare-fun c!696222 () Bool)

(assert (=> d!1193741 (= c!696222 (isEmpty!25772 (_1!24271 lt!1433241)))))

(assert (=> d!1193741 (= lt!1433241 (findLongestMatch!1288 (regex!6908 (h!48609 rules!2999)) lt!1433016))))

(assert (=> d!1193741 (ruleValid!2838 thiss!21717 (h!48609 rules!2999))))

(assert (=> d!1193741 (= (maxPrefixOneRule!2807 thiss!21717 (h!48609 rules!2999) lt!1433016) lt!1433238)))

(declare-fun b!4031049 () Bool)

(assert (=> b!4031049 (= e!2501232 (= (size!32277 (_1!24269 (get!14170 lt!1433238))) (size!32278 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433238))))))))

(declare-fun b!4031050 () Bool)

(declare-fun res!1641033 () Bool)

(assert (=> b!4031050 (=> (not res!1641033) (not e!2501232))))

(assert (=> b!4031050 (= res!1641033 (= (value!217512 (_1!24269 (get!14170 lt!1433238))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433238)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433238)))))))))

(declare-fun b!4031051 () Bool)

(declare-fun res!1641032 () Bool)

(assert (=> b!4031051 (=> (not res!1641032) (not e!2501232))))

(assert (=> b!4031051 (= res!1641032 (< (size!32278 (_2!24269 (get!14170 lt!1433238))) (size!32278 lt!1433016)))))

(assert (= (and d!1193741 c!696222) b!4031047))

(assert (= (and d!1193741 (not c!696222)) b!4031044))

(assert (= (and b!4031044 (not res!1641035)) b!4031048))

(assert (= (and d!1193741 (not res!1641038)) b!4031045))

(assert (= (and b!4031045 res!1641036) b!4031046))

(assert (= (and b!4031046 res!1641037) b!4031051))

(assert (= (and b!4031051 res!1641032) b!4031043))

(assert (= (and b!4031043 res!1641034) b!4031050))

(assert (= (and b!4031050 res!1641033) b!4031049))

(declare-fun m!4623397 () Bool)

(assert (=> b!4031050 m!4623397))

(declare-fun m!4623399 () Bool)

(assert (=> b!4031050 m!4623399))

(assert (=> b!4031050 m!4623399))

(declare-fun m!4623401 () Bool)

(assert (=> b!4031050 m!4623401))

(assert (=> b!4031045 m!4623397))

(declare-fun m!4623403 () Bool)

(assert (=> b!4031045 m!4623403))

(assert (=> b!4031045 m!4623403))

(declare-fun m!4623405 () Bool)

(assert (=> b!4031045 m!4623405))

(assert (=> b!4031045 m!4623405))

(declare-fun m!4623407 () Bool)

(assert (=> b!4031045 m!4623407))

(assert (=> b!4031043 m!4623397))

(assert (=> b!4031049 m!4623397))

(declare-fun m!4623409 () Bool)

(assert (=> b!4031049 m!4623409))

(assert (=> b!4031046 m!4623397))

(assert (=> b!4031046 m!4623403))

(assert (=> b!4031046 m!4623403))

(assert (=> b!4031046 m!4623405))

(assert (=> b!4031046 m!4623405))

(declare-fun m!4623411 () Bool)

(assert (=> b!4031046 m!4623411))

(assert (=> b!4031051 m!4623397))

(declare-fun m!4623413 () Bool)

(assert (=> b!4031051 m!4623413))

(assert (=> b!4031051 m!4623051))

(declare-fun m!4623415 () Bool)

(assert (=> b!4031044 m!4623415))

(declare-fun m!4623417 () Bool)

(assert (=> b!4031044 m!4623417))

(declare-fun m!4623419 () Bool)

(assert (=> b!4031044 m!4623419))

(assert (=> b!4031044 m!4623417))

(declare-fun m!4623421 () Bool)

(assert (=> b!4031044 m!4623421))

(declare-fun m!4623423 () Bool)

(assert (=> b!4031044 m!4623423))

(assert (=> b!4031044 m!4623417))

(assert (=> b!4031044 m!4623417))

(declare-fun m!4623425 () Bool)

(assert (=> b!4031044 m!4623425))

(assert (=> b!4031044 m!4623051))

(assert (=> b!4031044 m!4622855))

(assert (=> b!4031044 m!4622855))

(assert (=> b!4031044 m!4623051))

(declare-fun m!4623427 () Bool)

(assert (=> b!4031044 m!4623427))

(assert (=> b!4031048 m!4622855))

(assert (=> b!4031048 m!4623051))

(assert (=> b!4031048 m!4622855))

(assert (=> b!4031048 m!4623051))

(assert (=> b!4031048 m!4623427))

(declare-fun m!4623429 () Bool)

(assert (=> b!4031048 m!4623429))

(declare-fun m!4623431 () Bool)

(assert (=> d!1193741 m!4623431))

(declare-fun m!4623433 () Bool)

(assert (=> d!1193741 m!4623433))

(declare-fun m!4623435 () Bool)

(assert (=> d!1193741 m!4623435))

(declare-fun m!4623437 () Bool)

(assert (=> d!1193741 m!4623437))

(assert (=> bm!286868 d!1193741))

(assert (=> d!1193667 d!1193665))

(declare-fun d!1193743 () Bool)

(declare-fun e!2501235 () Bool)

(assert (=> d!1193743 e!2501235))

(declare-fun res!1641040 () Bool)

(assert (=> d!1193743 (=> (not res!1641040) (not e!2501235))))

(declare-fun lt!1433242 () List!43311)

(assert (=> d!1193743 (= res!1641040 (= (content!6554 lt!1433242) ((_ map or) (content!6554 lt!1433006) (content!6554 (++!11310 lt!1433014 suffix!1299)))))))

(declare-fun e!2501236 () List!43311)

(assert (=> d!1193743 (= lt!1433242 e!2501236)))

(declare-fun c!696223 () Bool)

(assert (=> d!1193743 (= c!696223 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193743 (= (++!11310 lt!1433006 (++!11310 lt!1433014 suffix!1299)) lt!1433242)))

(declare-fun b!4031053 () Bool)

(assert (=> b!4031053 (= e!2501236 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) (++!11310 lt!1433014 suffix!1299))))))

(declare-fun b!4031052 () Bool)

(assert (=> b!4031052 (= e!2501236 (++!11310 lt!1433014 suffix!1299))))

(declare-fun b!4031055 () Bool)

(assert (=> b!4031055 (= e!2501235 (or (not (= (++!11310 lt!1433014 suffix!1299) Nil!43187)) (= lt!1433242 lt!1433006)))))

(declare-fun b!4031054 () Bool)

(declare-fun res!1641039 () Bool)

(assert (=> b!4031054 (=> (not res!1641039) (not e!2501235))))

(assert (=> b!4031054 (= res!1641039 (= (size!32278 lt!1433242) (+ (size!32278 lt!1433006) (size!32278 (++!11310 lt!1433014 suffix!1299)))))))

(assert (= (and d!1193743 c!696223) b!4031052))

(assert (= (and d!1193743 (not c!696223)) b!4031053))

(assert (= (and d!1193743 res!1641040) b!4031054))

(assert (= (and b!4031054 res!1641039) b!4031055))

(declare-fun m!4623439 () Bool)

(assert (=> d!1193743 m!4623439))

(assert (=> d!1193743 m!4622619))

(assert (=> d!1193743 m!4622545))

(declare-fun m!4623441 () Bool)

(assert (=> d!1193743 m!4623441))

(assert (=> b!4031053 m!4622545))

(declare-fun m!4623443 () Bool)

(assert (=> b!4031053 m!4623443))

(declare-fun m!4623445 () Bool)

(assert (=> b!4031054 m!4623445))

(assert (=> b!4031054 m!4622587))

(assert (=> b!4031054 m!4622545))

(declare-fun m!4623447 () Bool)

(assert (=> b!4031054 m!4623447))

(assert (=> d!1193667 d!1193743))

(declare-fun d!1193745 () Bool)

(assert (=> d!1193745 (= (++!11310 (++!11310 lt!1433006 lt!1433014) suffix!1299) (++!11310 lt!1433006 (++!11310 lt!1433014 suffix!1299)))))

(assert (=> d!1193745 true))

(declare-fun _$52!2289 () Unit!62350)

(assert (=> d!1193745 (= (choose!24387 lt!1433006 lt!1433014 suffix!1299) _$52!2289)))

(declare-fun bs!590250 () Bool)

(assert (= bs!590250 d!1193745))

(assert (=> bs!590250 m!4622523))

(assert (=> bs!590250 m!4622523))

(assert (=> bs!590250 m!4623279))

(assert (=> bs!590250 m!4622545))

(assert (=> bs!590250 m!4622545))

(assert (=> bs!590250 m!4623277))

(assert (=> d!1193667 d!1193745))

(assert (=> d!1193667 d!1193473))

(declare-fun d!1193747 () Bool)

(declare-fun e!2501237 () Bool)

(assert (=> d!1193747 e!2501237))

(declare-fun res!1641042 () Bool)

(assert (=> d!1193747 (=> (not res!1641042) (not e!2501237))))

(declare-fun lt!1433243 () List!43311)

(assert (=> d!1193747 (= res!1641042 (= (content!6554 lt!1433243) ((_ map or) (content!6554 (++!11310 lt!1433006 lt!1433014)) (content!6554 suffix!1299))))))

(declare-fun e!2501238 () List!43311)

(assert (=> d!1193747 (= lt!1433243 e!2501238)))

(declare-fun c!696224 () Bool)

(assert (=> d!1193747 (= c!696224 ((_ is Nil!43187) (++!11310 lt!1433006 lt!1433014)))))

(assert (=> d!1193747 (= (++!11310 (++!11310 lt!1433006 lt!1433014) suffix!1299) lt!1433243)))

(declare-fun b!4031057 () Bool)

(assert (=> b!4031057 (= e!2501238 (Cons!43187 (h!48607 (++!11310 lt!1433006 lt!1433014)) (++!11310 (t!334152 (++!11310 lt!1433006 lt!1433014)) suffix!1299)))))

(declare-fun b!4031056 () Bool)

(assert (=> b!4031056 (= e!2501238 suffix!1299)))

(declare-fun b!4031059 () Bool)

(assert (=> b!4031059 (= e!2501237 (or (not (= suffix!1299 Nil!43187)) (= lt!1433243 (++!11310 lt!1433006 lt!1433014))))))

(declare-fun b!4031058 () Bool)

(declare-fun res!1641041 () Bool)

(assert (=> b!4031058 (=> (not res!1641041) (not e!2501237))))

(assert (=> b!4031058 (= res!1641041 (= (size!32278 lt!1433243) (+ (size!32278 (++!11310 lt!1433006 lt!1433014)) (size!32278 suffix!1299))))))

(assert (= (and d!1193747 c!696224) b!4031056))

(assert (= (and d!1193747 (not c!696224)) b!4031057))

(assert (= (and d!1193747 res!1641042) b!4031058))

(assert (= (and b!4031058 res!1641041) b!4031059))

(declare-fun m!4623449 () Bool)

(assert (=> d!1193747 m!4623449))

(assert (=> d!1193747 m!4622523))

(declare-fun m!4623451 () Bool)

(assert (=> d!1193747 m!4623451))

(assert (=> d!1193747 m!4623237))

(declare-fun m!4623453 () Bool)

(assert (=> b!4031057 m!4623453))

(declare-fun m!4623455 () Bool)

(assert (=> b!4031058 m!4623455))

(assert (=> b!4031058 m!4622523))

(declare-fun m!4623457 () Bool)

(assert (=> b!4031058 m!4623457))

(assert (=> b!4031058 m!4622583))

(assert (=> d!1193667 d!1193747))

(declare-fun d!1193749 () Bool)

(assert (=> d!1193749 (= (head!8541 newSuffix!27) (h!48607 newSuffix!27))))

(assert (=> b!4030492 d!1193749))

(declare-fun d!1193751 () Bool)

(assert (=> d!1193751 (= (head!8541 suffix!1299) (h!48607 suffix!1299))))

(assert (=> b!4030492 d!1193751))

(declare-fun d!1193753 () Bool)

(declare-fun lt!1433244 () Int)

(assert (=> d!1193753 (>= lt!1433244 0)))

(declare-fun e!2501239 () Int)

(assert (=> d!1193753 (= lt!1433244 e!2501239)))

(declare-fun c!696225 () Bool)

(assert (=> d!1193753 (= c!696225 ((_ is Nil!43187) lt!1432995))))

(assert (=> d!1193753 (= (size!32278 lt!1432995) lt!1433244)))

(declare-fun b!4031060 () Bool)

(assert (=> b!4031060 (= e!2501239 0)))

(declare-fun b!4031061 () Bool)

(assert (=> b!4031061 (= e!2501239 (+ 1 (size!32278 (t!334152 lt!1432995))))))

(assert (= (and d!1193753 c!696225) b!4031060))

(assert (= (and d!1193753 (not c!696225)) b!4031061))

(declare-fun m!4623459 () Bool)

(assert (=> b!4031061 m!4623459))

(assert (=> b!4030950 d!1193753))

(declare-fun d!1193755 () Bool)

(declare-fun lt!1433245 () Int)

(assert (=> d!1193755 (>= lt!1433245 0)))

(declare-fun e!2501240 () Int)

(assert (=> d!1193755 (= lt!1433245 e!2501240)))

(declare-fun c!696226 () Bool)

(assert (=> d!1193755 (= c!696226 ((_ is Nil!43187) (t!334152 (originalCharacters!7508 token!484))))))

(assert (=> d!1193755 (= (size!32278 (t!334152 (originalCharacters!7508 token!484))) lt!1433245)))

(declare-fun b!4031062 () Bool)

(assert (=> b!4031062 (= e!2501240 0)))

(declare-fun b!4031063 () Bool)

(assert (=> b!4031063 (= e!2501240 (+ 1 (size!32278 (t!334152 (t!334152 (originalCharacters!7508 token!484))))))))

(assert (= (and d!1193755 c!696226) b!4031062))

(assert (= (and d!1193755 (not c!696226)) b!4031063))

(declare-fun m!4623461 () Bool)

(assert (=> b!4031063 m!4623461))

(assert (=> b!4030952 d!1193755))

(declare-fun d!1193757 () Bool)

(declare-fun charsToBigInt!1 (List!43312) Int)

(assert (=> d!1193757 (= (inv!17 (value!217512 token!484)) (= (charsToBigInt!1 (text!50414 (value!217512 token!484))) (value!217504 (value!217512 token!484))))))

(declare-fun bs!590251 () Bool)

(assert (= bs!590251 d!1193757))

(declare-fun m!4623463 () Bool)

(assert (=> bs!590251 m!4623463))

(assert (=> b!4030490 d!1193757))

(declare-fun d!1193759 () Bool)

(declare-fun lt!1433246 () Int)

(assert (=> d!1193759 (>= lt!1433246 0)))

(declare-fun e!2501241 () Int)

(assert (=> d!1193759 (= lt!1433246 e!2501241)))

(declare-fun c!696227 () Bool)

(assert (=> d!1193759 (= c!696227 ((_ is Nil!43187) (_2!24269 (get!14170 lt!1433196))))))

(assert (=> d!1193759 (= (size!32278 (_2!24269 (get!14170 lt!1433196))) lt!1433246)))

(declare-fun b!4031064 () Bool)

(assert (=> b!4031064 (= e!2501241 0)))

(declare-fun b!4031065 () Bool)

(assert (=> b!4031065 (= e!2501241 (+ 1 (size!32278 (t!334152 (_2!24269 (get!14170 lt!1433196))))))))

(assert (= (and d!1193759 c!696227) b!4031064))

(assert (= (and d!1193759 (not c!696227)) b!4031065))

(declare-fun m!4623465 () Bool)

(assert (=> b!4031065 m!4623465))

(assert (=> b!4030887 d!1193759))

(declare-fun d!1193761 () Bool)

(assert (=> d!1193761 (= (get!14170 lt!1433196) (v!39709 lt!1433196))))

(assert (=> b!4030887 d!1193761))

(declare-fun d!1193763 () Bool)

(declare-fun lt!1433247 () Int)

(assert (=> d!1193763 (>= lt!1433247 0)))

(declare-fun e!2501242 () Int)

(assert (=> d!1193763 (= lt!1433247 e!2501242)))

(declare-fun c!696228 () Bool)

(assert (=> d!1193763 (= c!696228 ((_ is Nil!43187) lt!1433016))))

(assert (=> d!1193763 (= (size!32278 lt!1433016) lt!1433247)))

(declare-fun b!4031066 () Bool)

(assert (=> b!4031066 (= e!2501242 0)))

(declare-fun b!4031067 () Bool)

(assert (=> b!4031067 (= e!2501242 (+ 1 (size!32278 (t!334152 lt!1433016))))))

(assert (= (and d!1193763 c!696228) b!4031066))

(assert (= (and d!1193763 (not c!696228)) b!4031067))

(declare-fun m!4623467 () Bool)

(assert (=> b!4031067 m!4623467))

(assert (=> b!4030887 d!1193763))

(declare-fun d!1193765 () Bool)

(declare-fun e!2501243 () Bool)

(assert (=> d!1193765 e!2501243))

(declare-fun res!1641044 () Bool)

(assert (=> d!1193765 (=> (not res!1641044) (not e!2501243))))

(declare-fun lt!1433248 () List!43311)

(assert (=> d!1193765 (= res!1641044 (= (content!6554 lt!1433248) ((_ map or) (content!6554 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) (content!6554 (_2!24269 (get!14170 lt!1433099))))))))

(declare-fun e!2501244 () List!43311)

(assert (=> d!1193765 (= lt!1433248 e!2501244)))

(declare-fun c!696229 () Bool)

(assert (=> d!1193765 (= c!696229 ((_ is Nil!43187) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))))))

(assert (=> d!1193765 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))) (_2!24269 (get!14170 lt!1433099))) lt!1433248)))

(declare-fun b!4031069 () Bool)

(assert (=> b!4031069 (= e!2501244 (Cons!43187 (h!48607 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) (++!11310 (t!334152 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) (_2!24269 (get!14170 lt!1433099)))))))

(declare-fun b!4031068 () Bool)

(assert (=> b!4031068 (= e!2501244 (_2!24269 (get!14170 lt!1433099)))))

(declare-fun b!4031071 () Bool)

(assert (=> b!4031071 (= e!2501243 (or (not (= (_2!24269 (get!14170 lt!1433099)) Nil!43187)) (= lt!1433248 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))))))))

(declare-fun b!4031070 () Bool)

(declare-fun res!1641043 () Bool)

(assert (=> b!4031070 (=> (not res!1641043) (not e!2501243))))

(assert (=> b!4031070 (= res!1641043 (= (size!32278 lt!1433248) (+ (size!32278 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) (size!32278 (_2!24269 (get!14170 lt!1433099))))))))

(assert (= (and d!1193765 c!696229) b!4031068))

(assert (= (and d!1193765 (not c!696229)) b!4031069))

(assert (= (and d!1193765 res!1641044) b!4031070))

(assert (= (and b!4031070 res!1641043) b!4031071))

(declare-fun m!4623469 () Bool)

(assert (=> d!1193765 m!4623469))

(assert (=> d!1193765 m!4622831))

(declare-fun m!4623471 () Bool)

(assert (=> d!1193765 m!4623471))

(declare-fun m!4623473 () Bool)

(assert (=> d!1193765 m!4623473))

(declare-fun m!4623475 () Bool)

(assert (=> b!4031069 m!4623475))

(declare-fun m!4623477 () Bool)

(assert (=> b!4031070 m!4623477))

(assert (=> b!4031070 m!4622831))

(declare-fun m!4623479 () Bool)

(assert (=> b!4031070 m!4623479))

(assert (=> b!4031070 m!4622839))

(assert (=> b!4030618 d!1193765))

(declare-fun d!1193767 () Bool)

(assert (=> d!1193767 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))) (list!16068 (c!696124 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))))))

(declare-fun bs!590252 () Bool)

(assert (= bs!590252 d!1193767))

(declare-fun m!4623481 () Bool)

(assert (=> bs!590252 m!4623481))

(assert (=> b!4030618 d!1193767))

(declare-fun d!1193769 () Bool)

(declare-fun lt!1433249 () BalanceConc!25832)

(assert (=> d!1193769 (= (list!16066 lt!1433249) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099))))))

(assert (=> d!1193769 (= lt!1433249 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099))))) (value!217512 (_1!24269 (get!14170 lt!1433099)))))))

(assert (=> d!1193769 (= (charsOf!4724 (_1!24269 (get!14170 lt!1433099))) lt!1433249)))

(declare-fun b_lambda!117589 () Bool)

(assert (=> (not b_lambda!117589) (not d!1193769)))

(declare-fun tb!242115 () Bool)

(declare-fun t!334188 () Bool)

(assert (=> (and b!4030388 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334188) tb!242115))

(declare-fun b!4031072 () Bool)

(declare-fun e!2501245 () Bool)

(declare-fun tp!1225165 () Bool)

(assert (=> b!4031072 (= e!2501245 (and (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099))))) (value!217512 (_1!24269 (get!14170 lt!1433099)))))) tp!1225165))))

(declare-fun result!293496 () Bool)

(assert (=> tb!242115 (= result!293496 (and (inv!57697 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099))))) (value!217512 (_1!24269 (get!14170 lt!1433099))))) e!2501245))))

(assert (= tb!242115 b!4031072))

(declare-fun m!4623483 () Bool)

(assert (=> b!4031072 m!4623483))

(declare-fun m!4623485 () Bool)

(assert (=> tb!242115 m!4623485))

(assert (=> d!1193769 t!334188))

(declare-fun b_and!309765 () Bool)

(assert (= b_and!309751 (and (=> t!334188 result!293496) b_and!309765)))

(declare-fun tb!242117 () Bool)

(declare-fun t!334190 () Bool)

(assert (=> (and b!4030385 (= (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334190) tb!242117))

(declare-fun result!293498 () Bool)

(assert (= result!293498 result!293496))

(assert (=> d!1193769 t!334190))

(declare-fun b_and!309767 () Bool)

(assert (= b_and!309753 (and (=> t!334190 result!293498) b_and!309767)))

(declare-fun t!334192 () Bool)

(declare-fun tb!242119 () Bool)

(assert (=> (and b!4030992 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334192) tb!242119))

(declare-fun result!293500 () Bool)

(assert (= result!293500 result!293496))

(assert (=> d!1193769 t!334192))

(declare-fun b_and!309769 () Bool)

(assert (= b_and!309757 (and (=> t!334192 result!293500) b_and!309769)))

(declare-fun m!4623487 () Bool)

(assert (=> d!1193769 m!4623487))

(declare-fun m!4623489 () Bool)

(assert (=> d!1193769 m!4623489))

(assert (=> b!4030618 d!1193769))

(declare-fun d!1193771 () Bool)

(assert (=> d!1193771 (= (get!14170 lt!1433099) (v!39709 lt!1433099))))

(assert (=> b!4030618 d!1193771))

(declare-fun d!1193773 () Bool)

(assert (=> d!1193773 (= (isEmpty!25773 lt!1433196) (not ((_ is Some!9321) lt!1433196)))))

(assert (=> d!1193625 d!1193773))

(declare-fun b!4031074 () Bool)

(declare-fun res!1641045 () Bool)

(declare-fun e!2501247 () Bool)

(assert (=> b!4031074 (=> (not res!1641045) (not e!2501247))))

(assert (=> b!4031074 (= res!1641045 (= (head!8541 lt!1433016) (head!8541 lt!1433016)))))

(declare-fun b!4031076 () Bool)

(declare-fun e!2501246 () Bool)

(assert (=> b!4031076 (= e!2501246 (>= (size!32278 lt!1433016) (size!32278 lt!1433016)))))

(declare-fun b!4031075 () Bool)

(assert (=> b!4031075 (= e!2501247 (isPrefix!3995 (tail!6273 lt!1433016) (tail!6273 lt!1433016)))))

(declare-fun b!4031073 () Bool)

(declare-fun e!2501248 () Bool)

(assert (=> b!4031073 (= e!2501248 e!2501247)))

(declare-fun res!1641047 () Bool)

(assert (=> b!4031073 (=> (not res!1641047) (not e!2501247))))

(assert (=> b!4031073 (= res!1641047 (not ((_ is Nil!43187) lt!1433016)))))

(declare-fun d!1193775 () Bool)

(assert (=> d!1193775 e!2501246))

(declare-fun res!1641048 () Bool)

(assert (=> d!1193775 (=> res!1641048 e!2501246)))

(declare-fun lt!1433250 () Bool)

(assert (=> d!1193775 (= res!1641048 (not lt!1433250))))

(assert (=> d!1193775 (= lt!1433250 e!2501248)))

(declare-fun res!1641046 () Bool)

(assert (=> d!1193775 (=> res!1641046 e!2501248)))

(assert (=> d!1193775 (= res!1641046 ((_ is Nil!43187) lt!1433016))))

(assert (=> d!1193775 (= (isPrefix!3995 lt!1433016 lt!1433016) lt!1433250)))

(assert (= (and d!1193775 (not res!1641046)) b!4031073))

(assert (= (and b!4031073 res!1641047) b!4031074))

(assert (= (and b!4031074 res!1641045) b!4031075))

(assert (= (and d!1193775 (not res!1641048)) b!4031076))

(assert (=> b!4031074 m!4623049))

(assert (=> b!4031074 m!4623049))

(assert (=> b!4031076 m!4623051))

(assert (=> b!4031076 m!4623051))

(assert (=> b!4031075 m!4623057))

(assert (=> b!4031075 m!4623057))

(assert (=> b!4031075 m!4623057))

(assert (=> b!4031075 m!4623057))

(declare-fun m!4623491 () Bool)

(assert (=> b!4031075 m!4623491))

(assert (=> d!1193625 d!1193775))

(declare-fun d!1193777 () Bool)

(assert (=> d!1193777 (isPrefix!3995 lt!1433016 lt!1433016)))

(declare-fun lt!1433251 () Unit!62350)

(assert (=> d!1193777 (= lt!1433251 (choose!24389 lt!1433016 lt!1433016))))

(assert (=> d!1193777 (= (lemmaIsPrefixRefl!2562 lt!1433016 lt!1433016) lt!1433251)))

(declare-fun bs!590253 () Bool)

(assert (= bs!590253 d!1193777))

(assert (=> bs!590253 m!4623175))

(declare-fun m!4623493 () Bool)

(assert (=> bs!590253 m!4623493))

(assert (=> d!1193625 d!1193777))

(declare-fun d!1193779 () Bool)

(assert (=> d!1193779 true))

(declare-fun lt!1433254 () Bool)

(declare-fun lambda!127229 () Int)

(declare-fun forall!8363 (List!43313 Int) Bool)

(assert (=> d!1193779 (= lt!1433254 (forall!8363 rules!2999 lambda!127229))))

(declare-fun e!2501254 () Bool)

(assert (=> d!1193779 (= lt!1433254 e!2501254)))

(declare-fun res!1641053 () Bool)

(assert (=> d!1193779 (=> res!1641053 e!2501254)))

(assert (=> d!1193779 (= res!1641053 (not ((_ is Cons!43189) rules!2999)))))

(assert (=> d!1193779 (= (rulesValidInductive!2513 thiss!21717 rules!2999) lt!1433254)))

(declare-fun b!4031081 () Bool)

(declare-fun e!2501253 () Bool)

(assert (=> b!4031081 (= e!2501254 e!2501253)))

(declare-fun res!1641054 () Bool)

(assert (=> b!4031081 (=> (not res!1641054) (not e!2501253))))

(assert (=> b!4031081 (= res!1641054 (ruleValid!2838 thiss!21717 (h!48609 rules!2999)))))

(declare-fun b!4031082 () Bool)

(assert (=> b!4031082 (= e!2501253 (rulesValidInductive!2513 thiss!21717 (t!334154 rules!2999)))))

(assert (= (and d!1193779 (not res!1641053)) b!4031081))

(assert (= (and b!4031081 res!1641054) b!4031082))

(declare-fun m!4623495 () Bool)

(assert (=> d!1193779 m!4623495))

(assert (=> b!4031081 m!4623437))

(declare-fun m!4623497 () Bool)

(assert (=> b!4031082 m!4623497))

(assert (=> d!1193625 d!1193779))

(declare-fun d!1193781 () Bool)

(declare-fun lt!1433255 () Int)

(assert (=> d!1193781 (>= lt!1433255 0)))

(declare-fun e!2501255 () Int)

(assert (=> d!1193781 (= lt!1433255 e!2501255)))

(declare-fun c!696230 () Bool)

(assert (=> d!1193781 (= c!696230 ((_ is Nil!43187) (t!334152 prefix!494)))))

(assert (=> d!1193781 (= (size!32278 (t!334152 prefix!494)) lt!1433255)))

(declare-fun b!4031085 () Bool)

(assert (=> b!4031085 (= e!2501255 0)))

(declare-fun b!4031086 () Bool)

(assert (=> b!4031086 (= e!2501255 (+ 1 (size!32278 (t!334152 (t!334152 prefix!494)))))))

(assert (= (and d!1193781 c!696230) b!4031085))

(assert (= (and d!1193781 (not c!696230)) b!4031086))

(declare-fun m!4623499 () Bool)

(assert (=> b!4031086 m!4623499))

(assert (=> b!4030957 d!1193781))

(assert (=> d!1193683 d!1193681))

(declare-fun d!1193783 () Bool)

(assert (=> d!1193783 (isPrefix!3995 lt!1432995 lt!1432995)))

(assert (=> d!1193783 true))

(declare-fun _$45!1964 () Unit!62350)

(assert (=> d!1193783 (= (choose!24389 lt!1432995 lt!1432995) _$45!1964)))

(declare-fun bs!590254 () Bool)

(assert (= bs!590254 d!1193783))

(assert (=> bs!590254 m!4622611))

(assert (=> d!1193683 d!1193783))

(assert (=> d!1193659 d!1193733))

(declare-fun d!1193785 () Bool)

(assert (=> d!1193785 (= (isEmpty!25773 lt!1433099) (not ((_ is Some!9321) lt!1433099)))))

(assert (=> d!1193505 d!1193785))

(declare-fun d!1193787 () Bool)

(assert (=> d!1193787 (= (isEmpty!25772 (_1!24271 lt!1433102)) ((_ is Nil!43187) (_1!24271 lt!1433102)))))

(assert (=> d!1193505 d!1193787))

(declare-fun d!1193789 () Bool)

(declare-fun lt!1433278 () tuple2!42274)

(assert (=> d!1193789 (= (++!11310 (_1!24271 lt!1433278) (_2!24271 lt!1433278)) lt!1432995)))

(declare-fun sizeTr!265 (List!43311 Int) Int)

(assert (=> d!1193789 (= lt!1433278 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 0 lt!1432995 lt!1432995 (sizeTr!265 lt!1432995 0)))))

(declare-fun lt!1433272 () Unit!62350)

(declare-fun lt!1433274 () Unit!62350)

(assert (=> d!1193789 (= lt!1433272 lt!1433274)))

(declare-fun lt!1433276 () List!43311)

(declare-fun lt!1433277 () Int)

(assert (=> d!1193789 (= (sizeTr!265 lt!1433276 lt!1433277) (+ (size!32278 lt!1433276) lt!1433277))))

(declare-fun lemmaSizeTrEqualsSize!264 (List!43311 Int) Unit!62350)

(assert (=> d!1193789 (= lt!1433274 (lemmaSizeTrEqualsSize!264 lt!1433276 lt!1433277))))

(assert (=> d!1193789 (= lt!1433277 0)))

(assert (=> d!1193789 (= lt!1433276 Nil!43187)))

(declare-fun lt!1433279 () Unit!62350)

(declare-fun lt!1433273 () Unit!62350)

(assert (=> d!1193789 (= lt!1433279 lt!1433273)))

(declare-fun lt!1433275 () Int)

(assert (=> d!1193789 (= (sizeTr!265 lt!1432995 lt!1433275) (+ (size!32278 lt!1432995) lt!1433275))))

(assert (=> d!1193789 (= lt!1433273 (lemmaSizeTrEqualsSize!264 lt!1432995 lt!1433275))))

(assert (=> d!1193789 (= lt!1433275 0)))

(assert (=> d!1193789 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1193789 (= (findLongestMatch!1288 (regex!6908 (rule!9968 token!484)) lt!1432995) lt!1433278)))

(declare-fun bs!590255 () Bool)

(assert (= bs!590255 d!1193789))

(declare-fun m!4623501 () Bool)

(assert (=> bs!590255 m!4623501))

(declare-fun m!4623503 () Bool)

(assert (=> bs!590255 m!4623503))

(declare-fun m!4623505 () Bool)

(assert (=> bs!590255 m!4623505))

(assert (=> bs!590255 m!4623503))

(declare-fun m!4623507 () Bool)

(assert (=> bs!590255 m!4623507))

(assert (=> bs!590255 m!4623039))

(assert (=> bs!590255 m!4622841))

(declare-fun m!4623509 () Bool)

(assert (=> bs!590255 m!4623509))

(declare-fun m!4623511 () Bool)

(assert (=> bs!590255 m!4623511))

(declare-fun m!4623513 () Bool)

(assert (=> bs!590255 m!4623513))

(declare-fun m!4623515 () Bool)

(assert (=> bs!590255 m!4623515))

(assert (=> d!1193505 d!1193789))

(assert (=> d!1193505 d!1193705))

(declare-fun d!1193791 () Bool)

(assert (=> d!1193791 (= (head!8541 lt!1433006) (h!48607 lt!1433006))))

(assert (=> b!4030678 d!1193791))

(declare-fun d!1193793 () Bool)

(assert (=> d!1193793 (= (head!8541 lt!1433007) (h!48607 lt!1433007))))

(assert (=> b!4030678 d!1193793))

(declare-fun d!1193795 () Bool)

(declare-fun isBalanced!3672 (Conc!13119) Bool)

(assert (=> d!1193795 (= (inv!57697 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))) (isBalanced!3672 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))))

(declare-fun bs!590256 () Bool)

(assert (= bs!590256 d!1193795))

(declare-fun m!4623517 () Bool)

(assert (=> bs!590256 m!4623517))

(assert (=> tb!242101 d!1193795))

(declare-fun d!1193797 () Bool)

(declare-fun c!696233 () Bool)

(assert (=> d!1193797 (= c!696233 ((_ is Node!13119) (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))))

(declare-fun e!2501262 () Bool)

(assert (=> d!1193797 (= (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))) e!2501262)))

(declare-fun b!4031097 () Bool)

(declare-fun inv!57698 (Conc!13119) Bool)

(assert (=> b!4031097 (= e!2501262 (inv!57698 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))))

(declare-fun b!4031098 () Bool)

(declare-fun e!2501263 () Bool)

(assert (=> b!4031098 (= e!2501262 e!2501263)))

(declare-fun res!1641059 () Bool)

(assert (=> b!4031098 (= res!1641059 (not ((_ is Leaf!20280) (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))))))))

(assert (=> b!4031098 (=> res!1641059 e!2501263)))

(declare-fun b!4031099 () Bool)

(declare-fun inv!57699 (Conc!13119) Bool)

(assert (=> b!4031099 (= e!2501263 (inv!57699 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))))

(assert (= (and d!1193797 c!696233) b!4031097))

(assert (= (and d!1193797 (not c!696233)) b!4031098))

(assert (= (and b!4031098 (not res!1641059)) b!4031099))

(declare-fun m!4623521 () Bool)

(assert (=> b!4031097 m!4623521))

(declare-fun m!4623523 () Bool)

(assert (=> b!4031099 m!4623523))

(assert (=> b!4030962 d!1193797))

(declare-fun d!1193801 () Bool)

(declare-fun lt!1433280 () Int)

(assert (=> d!1193801 (>= lt!1433280 0)))

(declare-fun e!2501267 () Int)

(assert (=> d!1193801 (= lt!1433280 e!2501267)))

(declare-fun c!696236 () Bool)

(assert (=> d!1193801 (= c!696236 ((_ is Nil!43187) (_2!24269 (get!14170 lt!1433099))))))

(assert (=> d!1193801 (= (size!32278 (_2!24269 (get!14170 lt!1433099))) lt!1433280)))

(declare-fun b!4031103 () Bool)

(assert (=> b!4031103 (= e!2501267 0)))

(declare-fun b!4031105 () Bool)

(assert (=> b!4031105 (= e!2501267 (+ 1 (size!32278 (t!334152 (_2!24269 (get!14170 lt!1433099))))))))

(assert (= (and d!1193801 c!696236) b!4031103))

(assert (= (and d!1193801 (not c!696236)) b!4031105))

(declare-fun m!4623525 () Bool)

(assert (=> b!4031105 m!4623525))

(assert (=> b!4030623 d!1193801))

(assert (=> b!4030623 d!1193771))

(assert (=> b!4030623 d!1193753))

(declare-fun d!1193803 () Bool)

(assert (=> d!1193803 true))

(declare-fun order!22585 () Int)

(declare-fun lambda!127235 () Int)

(declare-fun dynLambda!18304 (Int Int) Int)

(assert (=> d!1193803 (< (dynLambda!18301 order!22579 (toValue!9432 (transformation!6908 (h!48609 rules!2999)))) (dynLambda!18304 order!22585 lambda!127235))))

(declare-fun Forall2!1083 (Int) Bool)

(assert (=> d!1193803 (= (equivClasses!2845 (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (h!48609 rules!2999)))) (Forall2!1083 lambda!127235))))

(declare-fun bs!590259 () Bool)

(assert (= bs!590259 d!1193803))

(declare-fun m!4623557 () Bool)

(assert (=> bs!590259 m!4623557))

(assert (=> b!4030953 d!1193803))

(declare-fun d!1193819 () Bool)

(assert (=> d!1193819 (= (isEmpty!25772 (tail!6273 lt!1433006)) ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> b!4030769 d!1193819))

(declare-fun d!1193823 () Bool)

(assert (=> d!1193823 (= (tail!6273 lt!1433006) (t!334152 lt!1433006))))

(assert (=> b!4030769 d!1193823))

(assert (=> b!4030776 d!1193763))

(assert (=> b!4030776 d!1193691))

(declare-fun d!1193825 () Bool)

(declare-fun lt!1433284 () Int)

(assert (=> d!1193825 (>= lt!1433284 0)))

(declare-fun e!2501280 () Int)

(assert (=> d!1193825 (= lt!1433284 e!2501280)))

(declare-fun c!696241 () Bool)

(assert (=> d!1193825 (= c!696241 ((_ is Nil!43187) lt!1432993))))

(assert (=> d!1193825 (= (size!32278 lt!1432993) lt!1433284)))

(declare-fun b!4031128 () Bool)

(assert (=> b!4031128 (= e!2501280 0)))

(declare-fun b!4031129 () Bool)

(assert (=> b!4031129 (= e!2501280 (+ 1 (size!32278 (t!334152 lt!1432993))))))

(assert (= (and d!1193825 c!696241) b!4031128))

(assert (= (and d!1193825 (not c!696241)) b!4031129))

(declare-fun m!4623563 () Bool)

(assert (=> b!4031129 m!4623563))

(assert (=> b!4030893 d!1193825))

(assert (=> b!4030893 d!1193691))

(assert (=> b!4030757 d!1193819))

(assert (=> b!4030757 d!1193823))

(declare-fun b!4031130 () Bool)

(declare-fun e!2501282 () Option!9322)

(declare-fun call!286876 () Option!9322)

(assert (=> b!4031130 (= e!2501282 call!286876)))

(declare-fun b!4031131 () Bool)

(declare-fun res!1641077 () Bool)

(declare-fun e!2501283 () Bool)

(assert (=> b!4031131 (=> (not res!1641077) (not e!2501283))))

(declare-fun lt!1433289 () Option!9322)

(assert (=> b!4031131 (= res!1641077 (matchR!5766 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433289)))) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433289))))))))

(declare-fun b!4031132 () Bool)

(assert (=> b!4031132 (= e!2501283 (contains!8572 (t!334154 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433289)))))))

(declare-fun d!1193827 () Bool)

(declare-fun e!2501281 () Bool)

(assert (=> d!1193827 e!2501281))

(declare-fun res!1641072 () Bool)

(assert (=> d!1193827 (=> res!1641072 e!2501281)))

(assert (=> d!1193827 (= res!1641072 (isEmpty!25773 lt!1433289))))

(assert (=> d!1193827 (= lt!1433289 e!2501282)))

(declare-fun c!696242 () Bool)

(assert (=> d!1193827 (= c!696242 (and ((_ is Cons!43189) (t!334154 rules!2999)) ((_ is Nil!43189) (t!334154 (t!334154 rules!2999)))))))

(declare-fun lt!1433287 () Unit!62350)

(declare-fun lt!1433286 () Unit!62350)

(assert (=> d!1193827 (= lt!1433287 lt!1433286)))

(assert (=> d!1193827 (isPrefix!3995 lt!1432995 lt!1432995)))

(assert (=> d!1193827 (= lt!1433286 (lemmaIsPrefixRefl!2562 lt!1432995 lt!1432995))))

(assert (=> d!1193827 (rulesValidInductive!2513 thiss!21717 (t!334154 rules!2999))))

(assert (=> d!1193827 (= (maxPrefix!3795 thiss!21717 (t!334154 rules!2999) lt!1432995) lt!1433289)))

(declare-fun bm!286871 () Bool)

(assert (=> bm!286871 (= call!286876 (maxPrefixOneRule!2807 thiss!21717 (h!48609 (t!334154 rules!2999)) lt!1432995))))

(declare-fun b!4031133 () Bool)

(assert (=> b!4031133 (= e!2501281 e!2501283)))

(declare-fun res!1641073 () Bool)

(assert (=> b!4031133 (=> (not res!1641073) (not e!2501283))))

(assert (=> b!4031133 (= res!1641073 (isDefined!7092 lt!1433289))))

(declare-fun b!4031134 () Bool)

(declare-fun res!1641075 () Bool)

(assert (=> b!4031134 (=> (not res!1641075) (not e!2501283))))

(assert (=> b!4031134 (= res!1641075 (= (value!217512 (_1!24269 (get!14170 lt!1433289))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433289)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433289)))))))))

(declare-fun b!4031135 () Bool)

(declare-fun lt!1433288 () Option!9322)

(declare-fun lt!1433285 () Option!9322)

(assert (=> b!4031135 (= e!2501282 (ite (and ((_ is None!9321) lt!1433288) ((_ is None!9321) lt!1433285)) None!9321 (ite ((_ is None!9321) lt!1433285) lt!1433288 (ite ((_ is None!9321) lt!1433288) lt!1433285 (ite (>= (size!32277 (_1!24269 (v!39709 lt!1433288))) (size!32277 (_1!24269 (v!39709 lt!1433285)))) lt!1433288 lt!1433285)))))))

(assert (=> b!4031135 (= lt!1433288 call!286876)))

(assert (=> b!4031135 (= lt!1433285 (maxPrefix!3795 thiss!21717 (t!334154 (t!334154 rules!2999)) lt!1432995))))

(declare-fun b!4031136 () Bool)

(declare-fun res!1641076 () Bool)

(assert (=> b!4031136 (=> (not res!1641076) (not e!2501283))))

(assert (=> b!4031136 (= res!1641076 (< (size!32278 (_2!24269 (get!14170 lt!1433289))) (size!32278 lt!1432995)))))

(declare-fun b!4031137 () Bool)

(declare-fun res!1641074 () Bool)

(assert (=> b!4031137 (=> (not res!1641074) (not e!2501283))))

(assert (=> b!4031137 (= res!1641074 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433289)))) (_2!24269 (get!14170 lt!1433289))) lt!1432995))))

(declare-fun b!4031138 () Bool)

(declare-fun res!1641071 () Bool)

(assert (=> b!4031138 (=> (not res!1641071) (not e!2501283))))

(assert (=> b!4031138 (= res!1641071 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433289)))) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433289)))))))

(assert (= (and d!1193827 c!696242) b!4031130))

(assert (= (and d!1193827 (not c!696242)) b!4031135))

(assert (= (or b!4031130 b!4031135) bm!286871))

(assert (= (and d!1193827 (not res!1641072)) b!4031133))

(assert (= (and b!4031133 res!1641073) b!4031138))

(assert (= (and b!4031138 res!1641071) b!4031136))

(assert (= (and b!4031136 res!1641076) b!4031137))

(assert (= (and b!4031137 res!1641074) b!4031134))

(assert (= (and b!4031134 res!1641075) b!4031131))

(assert (= (and b!4031131 res!1641077) b!4031132))

(declare-fun m!4623571 () Bool)

(assert (=> b!4031131 m!4623571))

(declare-fun m!4623573 () Bool)

(assert (=> b!4031131 m!4623573))

(assert (=> b!4031131 m!4623573))

(declare-fun m!4623575 () Bool)

(assert (=> b!4031131 m!4623575))

(assert (=> b!4031131 m!4623575))

(declare-fun m!4623577 () Bool)

(assert (=> b!4031131 m!4623577))

(assert (=> b!4031138 m!4623571))

(assert (=> b!4031138 m!4623573))

(assert (=> b!4031138 m!4623573))

(assert (=> b!4031138 m!4623575))

(declare-fun m!4623579 () Bool)

(assert (=> b!4031133 m!4623579))

(assert (=> b!4031136 m!4623571))

(declare-fun m!4623581 () Bool)

(assert (=> b!4031136 m!4623581))

(assert (=> b!4031136 m!4622841))

(declare-fun m!4623583 () Bool)

(assert (=> d!1193827 m!4623583))

(assert (=> d!1193827 m!4622611))

(assert (=> d!1193827 m!4622613))

(assert (=> d!1193827 m!4623497))

(declare-fun m!4623585 () Bool)

(assert (=> b!4031135 m!4623585))

(assert (=> b!4031134 m!4623571))

(declare-fun m!4623587 () Bool)

(assert (=> b!4031134 m!4623587))

(assert (=> b!4031134 m!4623587))

(declare-fun m!4623589 () Bool)

(assert (=> b!4031134 m!4623589))

(assert (=> b!4031132 m!4623571))

(declare-fun m!4623591 () Bool)

(assert (=> b!4031132 m!4623591))

(assert (=> b!4031137 m!4623571))

(assert (=> b!4031137 m!4623573))

(assert (=> b!4031137 m!4623573))

(assert (=> b!4031137 m!4623575))

(assert (=> b!4031137 m!4623575))

(declare-fun m!4623593 () Bool)

(assert (=> b!4031137 m!4623593))

(declare-fun m!4623595 () Bool)

(assert (=> bm!286871 m!4623595))

(assert (=> b!4030899 d!1193827))

(assert (=> b!4030799 d!1193791))

(declare-fun d!1193831 () Bool)

(assert (=> d!1193831 (= (head!8541 lt!1433008) (h!48607 lt!1433008))))

(assert (=> b!4030799 d!1193831))

(declare-fun d!1193833 () Bool)

(declare-fun c!696249 () Bool)

(assert (=> d!1193833 (= c!696249 ((_ is Nil!43187) lt!1433216))))

(declare-fun e!2501300 () (InoxSet C!23812))

(assert (=> d!1193833 (= (content!6554 lt!1433216) e!2501300)))

(declare-fun b!4031161 () Bool)

(assert (=> b!4031161 (= e!2501300 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031162 () Bool)

(assert (=> b!4031162 (= e!2501300 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433216) true) (content!6554 (t!334152 lt!1433216))))))

(assert (= (and d!1193833 c!696249) b!4031161))

(assert (= (and d!1193833 (not c!696249)) b!4031162))

(declare-fun m!4623597 () Bool)

(assert (=> b!4031162 m!4623597))

(declare-fun m!4623599 () Bool)

(assert (=> b!4031162 m!4623599))

(assert (=> d!1193671 d!1193833))

(declare-fun d!1193835 () Bool)

(declare-fun c!696250 () Bool)

(assert (=> d!1193835 (= c!696250 ((_ is Nil!43187) prefix!494))))

(declare-fun e!2501301 () (InoxSet C!23812))

(assert (=> d!1193835 (= (content!6554 prefix!494) e!2501301)))

(declare-fun b!4031163 () Bool)

(assert (=> b!4031163 (= e!2501301 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031164 () Bool)

(assert (=> b!4031164 (= e!2501301 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 prefix!494) true) (content!6554 (t!334152 prefix!494))))))

(assert (= (and d!1193835 c!696250) b!4031163))

(assert (= (and d!1193835 (not c!696250)) b!4031164))

(declare-fun m!4623601 () Bool)

(assert (=> b!4031164 m!4623601))

(assert (=> b!4031164 m!4623387))

(assert (=> d!1193671 d!1193835))

(declare-fun d!1193837 () Bool)

(declare-fun c!696251 () Bool)

(assert (=> d!1193837 (= c!696251 ((_ is Nil!43187) newSuffix!27))))

(declare-fun e!2501302 () (InoxSet C!23812))

(assert (=> d!1193837 (= (content!6554 newSuffix!27) e!2501302)))

(declare-fun b!4031165 () Bool)

(assert (=> b!4031165 (= e!2501302 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031166 () Bool)

(assert (=> b!4031166 (= e!2501302 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 newSuffix!27) true) (content!6554 (t!334152 newSuffix!27))))))

(assert (= (and d!1193837 c!696251) b!4031165))

(assert (= (and d!1193837 (not c!696251)) b!4031166))

(declare-fun m!4623603 () Bool)

(assert (=> b!4031166 m!4623603))

(declare-fun m!4623605 () Bool)

(assert (=> b!4031166 m!4623605))

(assert (=> d!1193671 d!1193837))

(declare-fun d!1193839 () Bool)

(declare-fun e!2501314 () Bool)

(assert (=> d!1193839 e!2501314))

(declare-fun res!1641095 () Bool)

(assert (=> d!1193839 (=> (not res!1641095) (not e!2501314))))

(declare-fun lt!1433294 () BalanceConc!25832)

(assert (=> d!1193839 (= res!1641095 (= (list!16066 lt!1433294) lt!1433006))))

(declare-fun fromList!852 (List!43311) Conc!13119)

(assert (=> d!1193839 (= lt!1433294 (BalanceConc!25833 (fromList!852 lt!1433006)))))

(assert (=> d!1193839 (= (fromListB!2332 lt!1433006) lt!1433294)))

(declare-fun b!4031182 () Bool)

(assert (=> b!4031182 (= e!2501314 (isBalanced!3672 (fromList!852 lt!1433006)))))

(assert (= (and d!1193839 res!1641095) b!4031182))

(declare-fun m!4623619 () Bool)

(assert (=> d!1193839 m!4623619))

(declare-fun m!4623621 () Bool)

(assert (=> d!1193839 m!4623621))

(assert (=> b!4031182 m!4623621))

(assert (=> b!4031182 m!4623621))

(declare-fun m!4623623 () Bool)

(assert (=> b!4031182 m!4623623))

(assert (=> d!1193553 d!1193839))

(declare-fun d!1193849 () Bool)

(declare-fun lt!1433296 () Bool)

(assert (=> d!1193849 (= lt!1433296 (select (content!6555 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))

(declare-fun e!2501319 () Bool)

(assert (=> d!1193849 (= lt!1433296 e!2501319)))

(declare-fun res!1641100 () Bool)

(assert (=> d!1193849 (=> (not res!1641100) (not e!2501319))))

(assert (=> d!1193849 (= res!1641100 ((_ is Cons!43189) rules!2999))))

(assert (=> d!1193849 (= (contains!8572 rules!2999 (rule!9968 (_1!24269 (get!14170 lt!1433204)))) lt!1433296)))

(declare-fun b!4031187 () Bool)

(declare-fun e!2501318 () Bool)

(assert (=> b!4031187 (= e!2501319 e!2501318)))

(declare-fun res!1641101 () Bool)

(assert (=> b!4031187 (=> res!1641101 e!2501318)))

(assert (=> b!4031187 (= res!1641101 (= (h!48609 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))

(declare-fun b!4031188 () Bool)

(assert (=> b!4031188 (= e!2501318 (contains!8572 (t!334154 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))

(assert (= (and d!1193849 res!1641100) b!4031187))

(assert (= (and b!4031187 (not res!1641101)) b!4031188))

(assert (=> d!1193849 m!4622995))

(declare-fun m!4623633 () Bool)

(assert (=> d!1193849 m!4623633))

(declare-fun m!4623635 () Bool)

(assert (=> b!4031188 m!4623635))

(assert (=> b!4030896 d!1193849))

(declare-fun d!1193853 () Bool)

(assert (=> d!1193853 (= (get!14170 lt!1433204) (v!39709 lt!1433204))))

(assert (=> b!4030896 d!1193853))

(declare-fun d!1193855 () Bool)

(declare-fun nullableFct!1157 (Regex!11813) Bool)

(assert (=> d!1193855 (= (nullable!4138 (regex!6908 (rule!9968 token!484))) (nullableFct!1157 (regex!6908 (rule!9968 token!484))))))

(declare-fun bs!590262 () Bool)

(assert (= bs!590262 d!1193855))

(declare-fun m!4623637 () Bool)

(assert (=> bs!590262 m!4623637))

(assert (=> b!4030980 d!1193855))

(declare-fun d!1193857 () Bool)

(declare-fun charsToInt!0 (List!43312) (_ BitVec 32))

(assert (=> d!1193857 (= (inv!16 (value!217512 token!484)) (= (charsToInt!0 (text!50413 (value!217512 token!484))) (value!217503 (value!217512 token!484))))))

(declare-fun bs!590264 () Bool)

(assert (= bs!590264 d!1193857))

(declare-fun m!4623639 () Bool)

(assert (=> bs!590264 m!4623639))

(assert (=> b!4030486 d!1193857))

(assert (=> b!4030445 d!1193693))

(assert (=> b!4030445 d!1193691))

(declare-fun d!1193861 () Bool)

(declare-fun lt!1433298 () Int)

(assert (=> d!1193861 (>= lt!1433298 0)))

(declare-fun e!2501322 () Int)

(assert (=> d!1193861 (= lt!1433298 e!2501322)))

(declare-fun c!696258 () Bool)

(assert (=> d!1193861 (= c!696258 ((_ is Nil!43187) lt!1433216))))

(assert (=> d!1193861 (= (size!32278 lt!1433216) lt!1433298)))

(declare-fun b!4031193 () Bool)

(assert (=> b!4031193 (= e!2501322 0)))

(declare-fun b!4031194 () Bool)

(assert (=> b!4031194 (= e!2501322 (+ 1 (size!32278 (t!334152 lt!1433216))))))

(assert (= (and d!1193861 c!696258) b!4031193))

(assert (= (and d!1193861 (not c!696258)) b!4031194))

(declare-fun m!4623649 () Bool)

(assert (=> b!4031194 m!4623649))

(assert (=> b!4030935 d!1193861))

(assert (=> b!4030935 d!1193693))

(assert (=> b!4030935 d!1193655))

(declare-fun b!4031196 () Bool)

(declare-fun res!1641104 () Bool)

(declare-fun e!2501324 () Bool)

(assert (=> b!4031196 (=> (not res!1641104) (not e!2501324))))

(assert (=> b!4031196 (= res!1641104 (= (head!8541 (tail!6273 newSuffix!27)) (head!8541 (tail!6273 suffix!1299))))))

(declare-fun b!4031198 () Bool)

(declare-fun e!2501323 () Bool)

(assert (=> b!4031198 (= e!2501323 (>= (size!32278 (tail!6273 suffix!1299)) (size!32278 (tail!6273 newSuffix!27))))))

(declare-fun b!4031197 () Bool)

(assert (=> b!4031197 (= e!2501324 (isPrefix!3995 (tail!6273 (tail!6273 newSuffix!27)) (tail!6273 (tail!6273 suffix!1299))))))

(declare-fun b!4031195 () Bool)

(declare-fun e!2501325 () Bool)

(assert (=> b!4031195 (= e!2501325 e!2501324)))

(declare-fun res!1641106 () Bool)

(assert (=> b!4031195 (=> (not res!1641106) (not e!2501324))))

(assert (=> b!4031195 (= res!1641106 (not ((_ is Nil!43187) (tail!6273 suffix!1299))))))

(declare-fun d!1193863 () Bool)

(assert (=> d!1193863 e!2501323))

(declare-fun res!1641107 () Bool)

(assert (=> d!1193863 (=> res!1641107 e!2501323)))

(declare-fun lt!1433299 () Bool)

(assert (=> d!1193863 (= res!1641107 (not lt!1433299))))

(assert (=> d!1193863 (= lt!1433299 e!2501325)))

(declare-fun res!1641105 () Bool)

(assert (=> d!1193863 (=> res!1641105 e!2501325)))

(assert (=> d!1193863 (= res!1641105 ((_ is Nil!43187) (tail!6273 newSuffix!27)))))

(assert (=> d!1193863 (= (isPrefix!3995 (tail!6273 newSuffix!27) (tail!6273 suffix!1299)) lt!1433299)))

(assert (= (and d!1193863 (not res!1641105)) b!4031195))

(assert (= (and b!4031195 res!1641106) b!4031196))

(assert (= (and b!4031196 res!1641104) b!4031197))

(assert (= (and d!1193863 (not res!1641107)) b!4031198))

(assert (=> b!4031196 m!4622689))

(declare-fun m!4623653 () Bool)

(assert (=> b!4031196 m!4623653))

(assert (=> b!4031196 m!4622691))

(declare-fun m!4623655 () Bool)

(assert (=> b!4031196 m!4623655))

(assert (=> b!4031198 m!4622691))

(declare-fun m!4623657 () Bool)

(assert (=> b!4031198 m!4623657))

(assert (=> b!4031198 m!4622689))

(declare-fun m!4623659 () Bool)

(assert (=> b!4031198 m!4623659))

(assert (=> b!4031197 m!4622689))

(declare-fun m!4623661 () Bool)

(assert (=> b!4031197 m!4623661))

(assert (=> b!4031197 m!4622691))

(declare-fun m!4623663 () Bool)

(assert (=> b!4031197 m!4623663))

(assert (=> b!4031197 m!4623661))

(assert (=> b!4031197 m!4623663))

(declare-fun m!4623665 () Bool)

(assert (=> b!4031197 m!4623665))

(assert (=> b!4030493 d!1193863))

(declare-fun d!1193867 () Bool)

(assert (=> d!1193867 (= (tail!6273 newSuffix!27) (t!334152 newSuffix!27))))

(assert (=> b!4030493 d!1193867))

(declare-fun d!1193869 () Bool)

(assert (=> d!1193869 (= (tail!6273 suffix!1299) (t!334152 suffix!1299))))

(assert (=> b!4030493 d!1193869))

(declare-fun d!1193871 () Bool)

(declare-fun lt!1433300 () Int)

(assert (=> d!1193871 (>= lt!1433300 0)))

(declare-fun e!2501326 () Int)

(assert (=> d!1193871 (= lt!1433300 e!2501326)))

(declare-fun c!696259 () Bool)

(assert (=> d!1193871 (= c!696259 ((_ is Nil!43187) (_2!24269 (get!14170 lt!1433204))))))

(assert (=> d!1193871 (= (size!32278 (_2!24269 (get!14170 lt!1433204))) lt!1433300)))

(declare-fun b!4031199 () Bool)

(assert (=> b!4031199 (= e!2501326 0)))

(declare-fun b!4031200 () Bool)

(assert (=> b!4031200 (= e!2501326 (+ 1 (size!32278 (t!334152 (_2!24269 (get!14170 lt!1433204))))))))

(assert (= (and d!1193871 c!696259) b!4031199))

(assert (= (and d!1193871 (not c!696259)) b!4031200))

(declare-fun m!4623667 () Bool)

(assert (=> b!4031200 m!4623667))

(assert (=> b!4030900 d!1193871))

(assert (=> b!4030900 d!1193853))

(assert (=> b!4030900 d!1193753))

(declare-fun b!4031202 () Bool)

(declare-fun res!1641108 () Bool)

(declare-fun e!2501328 () Bool)

(assert (=> b!4031202 (=> (not res!1641108) (not e!2501328))))

(assert (=> b!4031202 (= res!1641108 (= (head!8541 (tail!6273 lt!1433006)) (head!8541 (tail!6273 lt!1433008))))))

(declare-fun b!4031204 () Bool)

(declare-fun e!2501327 () Bool)

(assert (=> b!4031204 (= e!2501327 (>= (size!32278 (tail!6273 lt!1433008)) (size!32278 (tail!6273 lt!1433006))))))

(declare-fun b!4031203 () Bool)

(assert (=> b!4031203 (= e!2501328 (isPrefix!3995 (tail!6273 (tail!6273 lt!1433006)) (tail!6273 (tail!6273 lt!1433008))))))

(declare-fun b!4031201 () Bool)

(declare-fun e!2501329 () Bool)

(assert (=> b!4031201 (= e!2501329 e!2501328)))

(declare-fun res!1641110 () Bool)

(assert (=> b!4031201 (=> (not res!1641110) (not e!2501328))))

(assert (=> b!4031201 (= res!1641110 (not ((_ is Nil!43187) (tail!6273 lt!1433008))))))

(declare-fun d!1193873 () Bool)

(assert (=> d!1193873 e!2501327))

(declare-fun res!1641111 () Bool)

(assert (=> d!1193873 (=> res!1641111 e!2501327)))

(declare-fun lt!1433301 () Bool)

(assert (=> d!1193873 (= res!1641111 (not lt!1433301))))

(assert (=> d!1193873 (= lt!1433301 e!2501329)))

(declare-fun res!1641109 () Bool)

(assert (=> d!1193873 (=> res!1641109 e!2501329)))

(assert (=> d!1193873 (= res!1641109 ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> d!1193873 (= (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1433008)) lt!1433301)))

(assert (= (and d!1193873 (not res!1641109)) b!4031201))

(assert (= (and b!4031201 res!1641110) b!4031202))

(assert (= (and b!4031202 res!1641108) b!4031203))

(assert (= (and d!1193873 (not res!1641111)) b!4031204))

(assert (=> b!4031202 m!4622643))

(declare-fun m!4623669 () Bool)

(assert (=> b!4031202 m!4623669))

(assert (=> b!4031202 m!4623111))

(declare-fun m!4623671 () Bool)

(assert (=> b!4031202 m!4623671))

(assert (=> b!4031204 m!4623111))

(declare-fun m!4623673 () Bool)

(assert (=> b!4031204 m!4623673))

(assert (=> b!4031204 m!4622643))

(declare-fun m!4623675 () Bool)

(assert (=> b!4031204 m!4623675))

(assert (=> b!4031203 m!4622643))

(declare-fun m!4623677 () Bool)

(assert (=> b!4031203 m!4623677))

(assert (=> b!4031203 m!4623111))

(declare-fun m!4623679 () Bool)

(assert (=> b!4031203 m!4623679))

(assert (=> b!4031203 m!4623677))

(assert (=> b!4031203 m!4623679))

(declare-fun m!4623681 () Bool)

(assert (=> b!4031203 m!4623681))

(assert (=> b!4030800 d!1193873))

(assert (=> b!4030800 d!1193823))

(declare-fun d!1193875 () Bool)

(assert (=> d!1193875 (= (tail!6273 lt!1433008) (t!334152 lt!1433008))))

(assert (=> b!4030800 d!1193875))

(declare-fun d!1193877 () Bool)

(declare-fun c!696260 () Bool)

(assert (=> d!1193877 (= c!696260 ((_ is Nil!43187) lt!1433218))))

(declare-fun e!2501330 () (InoxSet C!23812))

(assert (=> d!1193877 (= (content!6554 lt!1433218) e!2501330)))

(declare-fun b!4031205 () Bool)

(assert (=> b!4031205 (= e!2501330 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031206 () Bool)

(assert (=> b!4031206 (= e!2501330 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433218) true) (content!6554 (t!334152 lt!1433218))))))

(assert (= (and d!1193877 c!696260) b!4031205))

(assert (= (and d!1193877 (not c!696260)) b!4031206))

(declare-fun m!4623683 () Bool)

(assert (=> b!4031206 m!4623683))

(declare-fun m!4623685 () Bool)

(assert (=> b!4031206 m!4623685))

(assert (=> d!1193677 d!1193877))

(declare-fun d!1193879 () Bool)

(declare-fun c!696261 () Bool)

(assert (=> d!1193879 (= c!696261 ((_ is Nil!43187) lt!1433006))))

(declare-fun e!2501331 () (InoxSet C!23812))

(assert (=> d!1193879 (= (content!6554 lt!1433006) e!2501331)))

(declare-fun b!4031207 () Bool)

(assert (=> b!4031207 (= e!2501331 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031208 () Bool)

(assert (=> b!4031208 (= e!2501331 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433006) true) (content!6554 (t!334152 lt!1433006))))))

(assert (= (and d!1193879 c!696261) b!4031207))

(assert (= (and d!1193879 (not c!696261)) b!4031208))

(declare-fun m!4623687 () Bool)

(assert (=> b!4031208 m!4623687))

(declare-fun m!4623689 () Bool)

(assert (=> b!4031208 m!4623689))

(assert (=> d!1193677 d!1193879))

(declare-fun d!1193881 () Bool)

(declare-fun c!696262 () Bool)

(assert (=> d!1193881 (= c!696262 ((_ is Nil!43187) lt!1433001))))

(declare-fun e!2501332 () (InoxSet C!23812))

(assert (=> d!1193881 (= (content!6554 lt!1433001) e!2501332)))

(declare-fun b!4031209 () Bool)

(assert (=> b!4031209 (= e!2501332 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031210 () Bool)

(assert (=> b!4031210 (= e!2501332 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433001) true) (content!6554 (t!334152 lt!1433001))))))

(assert (= (and d!1193881 c!696262) b!4031209))

(assert (= (and d!1193881 (not c!696262)) b!4031210))

(declare-fun m!4623695 () Bool)

(assert (=> b!4031210 m!4623695))

(declare-fun m!4623699 () Bool)

(assert (=> b!4031210 m!4623699))

(assert (=> d!1193677 d!1193881))

(declare-fun d!1193883 () Bool)

(declare-fun c!696263 () Bool)

(assert (=> d!1193883 (= c!696263 ((_ is Nil!43187) lt!1433210))))

(declare-fun e!2501333 () (InoxSet C!23812))

(assert (=> d!1193883 (= (content!6554 lt!1433210) e!2501333)))

(declare-fun b!4031211 () Bool)

(assert (=> b!4031211 (= e!2501333 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031212 () Bool)

(assert (=> b!4031212 (= e!2501333 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433210) true) (content!6554 (t!334152 lt!1433210))))))

(assert (= (and d!1193883 c!696263) b!4031211))

(assert (= (and d!1193883 (not c!696263)) b!4031212))

(declare-fun m!4623701 () Bool)

(assert (=> b!4031212 m!4623701))

(declare-fun m!4623703 () Bool)

(assert (=> b!4031212 m!4623703))

(assert (=> d!1193661 d!1193883))

(assert (=> d!1193661 d!1193879))

(declare-fun d!1193887 () Bool)

(declare-fun c!696264 () Bool)

(assert (=> d!1193887 (= c!696264 ((_ is Nil!43187) lt!1433005))))

(declare-fun e!2501334 () (InoxSet C!23812))

(assert (=> d!1193887 (= (content!6554 lt!1433005) e!2501334)))

(declare-fun b!4031213 () Bool)

(assert (=> b!4031213 (= e!2501334 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031214 () Bool)

(assert (=> b!4031214 (= e!2501334 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433005) true) (content!6554 (t!334152 lt!1433005))))))

(assert (= (and d!1193887 c!696264) b!4031213))

(assert (= (and d!1193887 (not c!696264)) b!4031214))

(declare-fun m!4623705 () Bool)

(assert (=> b!4031214 m!4623705))

(declare-fun m!4623707 () Bool)

(assert (=> b!4031214 m!4623707))

(assert (=> d!1193661 d!1193887))

(assert (=> b!4030795 d!1193791))

(declare-fun d!1193889 () Bool)

(assert (=> d!1193889 (= (head!8541 lt!1432995) (h!48607 lt!1432995))))

(assert (=> b!4030795 d!1193889))

(declare-fun d!1193891 () Bool)

(declare-fun e!2501335 () Bool)

(assert (=> d!1193891 e!2501335))

(declare-fun res!1641113 () Bool)

(assert (=> d!1193891 (=> (not res!1641113) (not e!2501335))))

(declare-fun lt!1433305 () List!43311)

(assert (=> d!1193891 (= res!1641113 (= (content!6554 lt!1433305) ((_ map or) (content!6554 (t!334152 lt!1433006)) (content!6554 lt!1433001))))))

(declare-fun e!2501336 () List!43311)

(assert (=> d!1193891 (= lt!1433305 e!2501336)))

(declare-fun c!696265 () Bool)

(assert (=> d!1193891 (= c!696265 ((_ is Nil!43187) (t!334152 lt!1433006)))))

(assert (=> d!1193891 (= (++!11310 (t!334152 lt!1433006) lt!1433001) lt!1433305)))

(declare-fun b!4031216 () Bool)

(assert (=> b!4031216 (= e!2501336 (Cons!43187 (h!48607 (t!334152 lt!1433006)) (++!11310 (t!334152 (t!334152 lt!1433006)) lt!1433001)))))

(declare-fun b!4031215 () Bool)

(assert (=> b!4031215 (= e!2501336 lt!1433001)))

(declare-fun b!4031218 () Bool)

(assert (=> b!4031218 (= e!2501335 (or (not (= lt!1433001 Nil!43187)) (= lt!1433305 (t!334152 lt!1433006))))))

(declare-fun b!4031217 () Bool)

(declare-fun res!1641112 () Bool)

(assert (=> b!4031217 (=> (not res!1641112) (not e!2501335))))

(assert (=> b!4031217 (= res!1641112 (= (size!32278 lt!1433305) (+ (size!32278 (t!334152 lt!1433006)) (size!32278 lt!1433001))))))

(assert (= (and d!1193891 c!696265) b!4031215))

(assert (= (and d!1193891 (not c!696265)) b!4031216))

(assert (= (and d!1193891 res!1641113) b!4031217))

(assert (= (and b!4031217 res!1641112) b!4031218))

(declare-fun m!4623709 () Bool)

(assert (=> d!1193891 m!4623709))

(assert (=> d!1193891 m!4623689))

(assert (=> d!1193891 m!4623307))

(declare-fun m!4623711 () Bool)

(assert (=> b!4031216 m!4623711))

(declare-fun m!4623713 () Bool)

(assert (=> b!4031217 m!4623713))

(assert (=> b!4031217 m!4623329))

(assert (=> b!4031217 m!4623313))

(assert (=> b!4030942 d!1193891))

(assert (=> d!1193485 d!1193477))

(declare-fun d!1193895 () Bool)

(assert (=> d!1193895 (isPrefix!3995 lt!1433006 prefix!494)))

(assert (=> d!1193895 true))

(declare-fun _$69!265 () Unit!62350)

(assert (=> d!1193895 (= (choose!24379 prefix!494 lt!1433006 lt!1432995) _$69!265)))

(declare-fun bs!590266 () Bool)

(assert (= bs!590266 d!1193895))

(assert (=> bs!590266 m!4622527))

(assert (=> d!1193485 d!1193895))

(assert (=> d!1193485 d!1193613))

(declare-fun d!1193897 () Bool)

(declare-fun e!2501337 () Bool)

(assert (=> d!1193897 e!2501337))

(declare-fun res!1641115 () Bool)

(assert (=> d!1193897 (=> (not res!1641115) (not e!2501337))))

(declare-fun lt!1433306 () List!43311)

(assert (=> d!1193897 (= res!1641115 (= (content!6554 lt!1433306) ((_ map or) (content!6554 (t!334152 lt!1433006)) (content!6554 lt!1433005))))))

(declare-fun e!2501338 () List!43311)

(assert (=> d!1193897 (= lt!1433306 e!2501338)))

(declare-fun c!696266 () Bool)

(assert (=> d!1193897 (= c!696266 ((_ is Nil!43187) (t!334152 lt!1433006)))))

(assert (=> d!1193897 (= (++!11310 (t!334152 lt!1433006) lt!1433005) lt!1433306)))

(declare-fun b!4031220 () Bool)

(assert (=> b!4031220 (= e!2501338 (Cons!43187 (h!48607 (t!334152 lt!1433006)) (++!11310 (t!334152 (t!334152 lt!1433006)) lt!1433005)))))

(declare-fun b!4031219 () Bool)

(assert (=> b!4031219 (= e!2501338 lt!1433005)))

(declare-fun b!4031222 () Bool)

(assert (=> b!4031222 (= e!2501337 (or (not (= lt!1433005 Nil!43187)) (= lt!1433306 (t!334152 lt!1433006))))))

(declare-fun b!4031221 () Bool)

(declare-fun res!1641114 () Bool)

(assert (=> b!4031221 (=> (not res!1641114) (not e!2501337))))

(assert (=> b!4031221 (= res!1641114 (= (size!32278 lt!1433306) (+ (size!32278 (t!334152 lt!1433006)) (size!32278 lt!1433005))))))

(assert (= (and d!1193897 c!696266) b!4031219))

(assert (= (and d!1193897 (not c!696266)) b!4031220))

(assert (= (and d!1193897 res!1641115) b!4031221))

(assert (= (and b!4031221 res!1641114) b!4031222))

(declare-fun m!4623715 () Bool)

(assert (=> d!1193897 m!4623715))

(assert (=> d!1193897 m!4623689))

(assert (=> d!1193897 m!4623253))

(declare-fun m!4623717 () Bool)

(assert (=> b!4031220 m!4623717))

(declare-fun m!4623719 () Bool)

(assert (=> b!4031221 m!4623719))

(assert (=> b!4031221 m!4623329))

(assert (=> b!4031221 m!4623259))

(assert (=> b!4030919 d!1193897))

(declare-fun b!4031224 () Bool)

(declare-fun res!1641116 () Bool)

(declare-fun e!2501340 () Bool)

(assert (=> b!4031224 (=> (not res!1641116) (not e!2501340))))

(assert (=> b!4031224 (= res!1641116 (= (head!8541 (tail!6273 lt!1433006)) (head!8541 (tail!6273 lt!1433007))))))

(declare-fun b!4031226 () Bool)

(declare-fun e!2501339 () Bool)

(assert (=> b!4031226 (= e!2501339 (>= (size!32278 (tail!6273 lt!1433007)) (size!32278 (tail!6273 lt!1433006))))))

(declare-fun b!4031225 () Bool)

(assert (=> b!4031225 (= e!2501340 (isPrefix!3995 (tail!6273 (tail!6273 lt!1433006)) (tail!6273 (tail!6273 lt!1433007))))))

(declare-fun b!4031223 () Bool)

(declare-fun e!2501341 () Bool)

(assert (=> b!4031223 (= e!2501341 e!2501340)))

(declare-fun res!1641118 () Bool)

(assert (=> b!4031223 (=> (not res!1641118) (not e!2501340))))

(assert (=> b!4031223 (= res!1641118 (not ((_ is Nil!43187) (tail!6273 lt!1433007))))))

(declare-fun d!1193899 () Bool)

(assert (=> d!1193899 e!2501339))

(declare-fun res!1641119 () Bool)

(assert (=> d!1193899 (=> res!1641119 e!2501339)))

(declare-fun lt!1433307 () Bool)

(assert (=> d!1193899 (= res!1641119 (not lt!1433307))))

(assert (=> d!1193899 (= lt!1433307 e!2501341)))

(declare-fun res!1641117 () Bool)

(assert (=> d!1193899 (=> res!1641117 e!2501341)))

(assert (=> d!1193899 (= res!1641117 ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> d!1193899 (= (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1433007)) lt!1433307)))

(assert (= (and d!1193899 (not res!1641117)) b!4031223))

(assert (= (and b!4031223 res!1641118) b!4031224))

(assert (= (and b!4031224 res!1641116) b!4031225))

(assert (= (and d!1193899 (not res!1641119)) b!4031226))

(assert (=> b!4031224 m!4622643))

(assert (=> b!4031224 m!4623669))

(assert (=> b!4031224 m!4622977))

(declare-fun m!4623721 () Bool)

(assert (=> b!4031224 m!4623721))

(assert (=> b!4031226 m!4622977))

(declare-fun m!4623723 () Bool)

(assert (=> b!4031226 m!4623723))

(assert (=> b!4031226 m!4622643))

(assert (=> b!4031226 m!4623675))

(assert (=> b!4031225 m!4622643))

(assert (=> b!4031225 m!4623677))

(assert (=> b!4031225 m!4622977))

(declare-fun m!4623725 () Bool)

(assert (=> b!4031225 m!4623725))

(assert (=> b!4031225 m!4623677))

(assert (=> b!4031225 m!4623725))

(declare-fun m!4623727 () Bool)

(assert (=> b!4031225 m!4623727))

(assert (=> b!4030679 d!1193899))

(assert (=> b!4030679 d!1193823))

(declare-fun d!1193901 () Bool)

(assert (=> d!1193901 (= (tail!6273 lt!1433007) (t!334152 lt!1433007))))

(assert (=> b!4030679 d!1193901))

(declare-fun d!1193903 () Bool)

(declare-fun e!2501342 () Bool)

(assert (=> d!1193903 e!2501342))

(declare-fun res!1641121 () Bool)

(assert (=> d!1193903 (=> (not res!1641121) (not e!2501342))))

(declare-fun lt!1433308 () List!43311)

(assert (=> d!1193903 (= res!1641121 (= (content!6554 lt!1433308) ((_ map or) (content!6554 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) (content!6554 (_2!24269 (get!14170 lt!1433196))))))))

(declare-fun e!2501343 () List!43311)

(assert (=> d!1193903 (= lt!1433308 e!2501343)))

(declare-fun c!696267 () Bool)

(assert (=> d!1193903 (= c!696267 ((_ is Nil!43187) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))))))

(assert (=> d!1193903 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))) (_2!24269 (get!14170 lt!1433196))) lt!1433308)))

(declare-fun b!4031228 () Bool)

(assert (=> b!4031228 (= e!2501343 (Cons!43187 (h!48607 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) (++!11310 (t!334152 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) (_2!24269 (get!14170 lt!1433196)))))))

(declare-fun b!4031227 () Bool)

(assert (=> b!4031227 (= e!2501343 (_2!24269 (get!14170 lt!1433196)))))

(declare-fun b!4031230 () Bool)

(assert (=> b!4031230 (= e!2501342 (or (not (= (_2!24269 (get!14170 lt!1433196)) Nil!43187)) (= lt!1433308 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))))))))

(declare-fun b!4031229 () Bool)

(declare-fun res!1641120 () Bool)

(assert (=> b!4031229 (=> (not res!1641120) (not e!2501342))))

(assert (=> b!4031229 (= res!1641120 (= (size!32278 lt!1433308) (+ (size!32278 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) (size!32278 (_2!24269 (get!14170 lt!1433196))))))))

(assert (= (and d!1193903 c!696267) b!4031227))

(assert (= (and d!1193903 (not c!696267)) b!4031228))

(assert (= (and d!1193903 res!1641121) b!4031229))

(assert (= (and b!4031229 res!1641120) b!4031230))

(declare-fun m!4623729 () Bool)

(assert (=> d!1193903 m!4623729))

(assert (=> d!1193903 m!4623165))

(declare-fun m!4623731 () Bool)

(assert (=> d!1193903 m!4623731))

(declare-fun m!4623733 () Bool)

(assert (=> d!1193903 m!4623733))

(declare-fun m!4623735 () Bool)

(assert (=> b!4031228 m!4623735))

(declare-fun m!4623737 () Bool)

(assert (=> b!4031229 m!4623737))

(assert (=> b!4031229 m!4623165))

(declare-fun m!4623739 () Bool)

(assert (=> b!4031229 m!4623739))

(assert (=> b!4031229 m!4623171))

(assert (=> b!4030888 d!1193903))

(declare-fun d!1193905 () Bool)

(assert (=> d!1193905 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))) (list!16068 (c!696124 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))))))

(declare-fun bs!590267 () Bool)

(assert (= bs!590267 d!1193905))

(declare-fun m!4623741 () Bool)

(assert (=> bs!590267 m!4623741))

(assert (=> b!4030888 d!1193905))

(declare-fun d!1193907 () Bool)

(declare-fun lt!1433309 () BalanceConc!25832)

(assert (=> d!1193907 (= (list!16066 lt!1433309) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196))))))

(assert (=> d!1193907 (= lt!1433309 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))) (value!217512 (_1!24269 (get!14170 lt!1433196)))))))

(assert (=> d!1193907 (= (charsOf!4724 (_1!24269 (get!14170 lt!1433196))) lt!1433309)))

(declare-fun b_lambda!117595 () Bool)

(assert (=> (not b_lambda!117595) (not d!1193907)))

(declare-fun tb!242133 () Bool)

(declare-fun t!334206 () Bool)

(assert (=> (and b!4030388 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334206) tb!242133))

(declare-fun b!4031231 () Bool)

(declare-fun e!2501344 () Bool)

(declare-fun tp!1225167 () Bool)

(assert (=> b!4031231 (= e!2501344 (and (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))) (value!217512 (_1!24269 (get!14170 lt!1433196)))))) tp!1225167))))

(declare-fun result!293514 () Bool)

(assert (=> tb!242133 (= result!293514 (and (inv!57697 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))) (value!217512 (_1!24269 (get!14170 lt!1433196))))) e!2501344))))

(assert (= tb!242133 b!4031231))

(declare-fun m!4623743 () Bool)

(assert (=> b!4031231 m!4623743))

(declare-fun m!4623745 () Bool)

(assert (=> tb!242133 m!4623745))

(assert (=> d!1193907 t!334206))

(declare-fun b_and!309783 () Bool)

(assert (= b_and!309765 (and (=> t!334206 result!293514) b_and!309783)))

(declare-fun t!334208 () Bool)

(declare-fun tb!242135 () Bool)

(assert (=> (and b!4030385 (= (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334208) tb!242135))

(declare-fun result!293516 () Bool)

(assert (= result!293516 result!293514))

(assert (=> d!1193907 t!334208))

(declare-fun b_and!309785 () Bool)

(assert (= b_and!309767 (and (=> t!334208 result!293516) b_and!309785)))

(declare-fun t!334210 () Bool)

(declare-fun tb!242137 () Bool)

(assert (=> (and b!4030992 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334210) tb!242137))

(declare-fun result!293518 () Bool)

(assert (= result!293518 result!293514))

(assert (=> d!1193907 t!334210))

(declare-fun b_and!309787 () Bool)

(assert (= b_and!309769 (and (=> t!334210 result!293518) b_and!309787)))

(declare-fun m!4623747 () Bool)

(assert (=> d!1193907 m!4623747))

(declare-fun m!4623749 () Bool)

(assert (=> d!1193907 m!4623749))

(assert (=> b!4030888 d!1193907))

(assert (=> b!4030888 d!1193761))

(assert (=> b!4030615 d!1193771))

(declare-fun d!1193909 () Bool)

(assert (=> d!1193909 (= (isDefined!7092 lt!1433196) (not (isEmpty!25773 lt!1433196)))))

(declare-fun bs!590268 () Bool)

(assert (= bs!590268 d!1193909))

(assert (=> bs!590268 m!4623173))

(assert (=> b!4030884 d!1193909))

(declare-fun d!1193911 () Bool)

(assert (=> d!1193911 (= (head!8541 prefix!494) (h!48607 prefix!494))))

(assert (=> b!4030803 d!1193911))

(assert (=> b!4030803 d!1193889))

(declare-fun d!1193913 () Bool)

(assert (=> d!1193913 (= (inv!57689 (tag!7768 (h!48609 (t!334154 rules!2999)))) (= (mod (str.len (value!217511 (tag!7768 (h!48609 (t!334154 rules!2999))))) 2) 0))))

(assert (=> b!4030991 d!1193913))

(declare-fun d!1193915 () Bool)

(declare-fun res!1641122 () Bool)

(declare-fun e!2501345 () Bool)

(assert (=> d!1193915 (=> (not res!1641122) (not e!2501345))))

(assert (=> d!1193915 (= res!1641122 (semiInverseModEq!2946 (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999))))))))

(assert (=> d!1193915 (= (inv!57693 (transformation!6908 (h!48609 (t!334154 rules!2999)))) e!2501345)))

(declare-fun b!4031232 () Bool)

(assert (=> b!4031232 (= e!2501345 (equivClasses!2845 (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999))))))))

(assert (= (and d!1193915 res!1641122) b!4031232))

(declare-fun m!4623751 () Bool)

(assert (=> d!1193915 m!4623751))

(declare-fun m!4623753 () Bool)

(assert (=> b!4031232 m!4623753))

(assert (=> b!4030991 d!1193915))

(declare-fun b!4031234 () Bool)

(declare-fun res!1641123 () Bool)

(declare-fun e!2501347 () Bool)

(assert (=> b!4031234 (=> (not res!1641123) (not e!2501347))))

(assert (=> b!4031234 (= res!1641123 (= (head!8541 lt!1433006) (head!8541 (++!11310 prefix!494 newSuffix!27))))))

(declare-fun b!4031236 () Bool)

(declare-fun e!2501346 () Bool)

(assert (=> b!4031236 (= e!2501346 (>= (size!32278 (++!11310 prefix!494 newSuffix!27)) (size!32278 lt!1433006)))))

(declare-fun b!4031235 () Bool)

(assert (=> b!4031235 (= e!2501347 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 (++!11310 prefix!494 newSuffix!27))))))

(declare-fun b!4031233 () Bool)

(declare-fun e!2501348 () Bool)

(assert (=> b!4031233 (= e!2501348 e!2501347)))

(declare-fun res!1641125 () Bool)

(assert (=> b!4031233 (=> (not res!1641125) (not e!2501347))))

(assert (=> b!4031233 (= res!1641125 (not ((_ is Nil!43187) (++!11310 prefix!494 newSuffix!27))))))

(declare-fun d!1193917 () Bool)

(assert (=> d!1193917 e!2501346))

(declare-fun res!1641126 () Bool)

(assert (=> d!1193917 (=> res!1641126 e!2501346)))

(declare-fun lt!1433310 () Bool)

(assert (=> d!1193917 (= res!1641126 (not lt!1433310))))

(assert (=> d!1193917 (= lt!1433310 e!2501348)))

(declare-fun res!1641124 () Bool)

(assert (=> d!1193917 (=> res!1641124 e!2501348)))

(assert (=> d!1193917 (= res!1641124 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193917 (= (isPrefix!3995 lt!1433006 (++!11310 prefix!494 newSuffix!27)) lt!1433310)))

(assert (= (and d!1193917 (not res!1641124)) b!4031233))

(assert (= (and b!4031233 res!1641125) b!4031234))

(assert (= (and b!4031234 res!1641123) b!4031235))

(assert (= (and d!1193917 (not res!1641126)) b!4031236))

(assert (=> b!4031234 m!4622639))

(assert (=> b!4031234 m!4622579))

(declare-fun m!4623755 () Bool)

(assert (=> b!4031234 m!4623755))

(assert (=> b!4031236 m!4622579))

(declare-fun m!4623757 () Bool)

(assert (=> b!4031236 m!4623757))

(assert (=> b!4031236 m!4622587))

(assert (=> b!4031235 m!4622643))

(assert (=> b!4031235 m!4622579))

(declare-fun m!4623759 () Bool)

(assert (=> b!4031235 m!4623759))

(assert (=> b!4031235 m!4622643))

(assert (=> b!4031235 m!4623759))

(declare-fun m!4623761 () Bool)

(assert (=> b!4031235 m!4623761))

(assert (=> d!1193599 d!1193917))

(assert (=> d!1193599 d!1193671))

(declare-fun d!1193919 () Bool)

(assert (=> d!1193919 (isPrefix!3995 lt!1433006 (++!11310 prefix!494 newSuffix!27))))

(assert (=> d!1193919 true))

(declare-fun _$58!553 () Unit!62350)

(assert (=> d!1193919 (= (choose!24384 lt!1433006 prefix!494 newSuffix!27) _$58!553)))

(declare-fun bs!590269 () Bool)

(assert (= bs!590269 d!1193919))

(assert (=> bs!590269 m!4622579))

(assert (=> bs!590269 m!4622579))

(assert (=> bs!590269 m!4623089))

(assert (=> d!1193599 d!1193919))

(assert (=> d!1193599 d!1193477))

(declare-fun b!4031239 () Bool)

(declare-fun res!1641129 () Bool)

(declare-fun e!2501354 () Bool)

(assert (=> b!4031239 (=> res!1641129 e!2501354)))

(assert (=> b!4031239 (= res!1641129 (not (isEmpty!25772 (tail!6273 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))))

(declare-fun b!4031240 () Bool)

(declare-fun e!2501355 () Bool)

(assert (=> b!4031240 (= e!2501355 (matchR!5766 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995))))) (tail!6273 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995))))))))

(declare-fun b!4031241 () Bool)

(assert (=> b!4031241 (= e!2501354 (not (= (head!8541 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))) (c!696125 (regex!6908 (rule!9968 token!484))))))))

(declare-fun b!4031242 () Bool)

(declare-fun res!1641133 () Bool)

(declare-fun e!2501356 () Bool)

(assert (=> b!4031242 (=> (not res!1641133) (not e!2501356))))

(declare-fun call!286886 () Bool)

(assert (=> b!4031242 (= res!1641133 (not call!286886))))

(declare-fun d!1193921 () Bool)

(declare-fun e!2501357 () Bool)

(assert (=> d!1193921 e!2501357))

(declare-fun c!696268 () Bool)

(assert (=> d!1193921 (= c!696268 ((_ is EmptyExpr!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun lt!1433313 () Bool)

(assert (=> d!1193921 (= lt!1433313 e!2501355)))

(declare-fun c!696270 () Bool)

(assert (=> d!1193921 (= c!696270 (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(assert (=> d!1193921 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1193921 (= (matchR!5766 (regex!6908 (rule!9968 token!484)) (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))) lt!1433313)))

(declare-fun b!4031243 () Bool)

(declare-fun res!1641130 () Bool)

(declare-fun e!2501351 () Bool)

(assert (=> b!4031243 (=> res!1641130 e!2501351)))

(assert (=> b!4031243 (= res!1641130 e!2501356)))

(declare-fun res!1641132 () Bool)

(assert (=> b!4031243 (=> (not res!1641132) (not e!2501356))))

(assert (=> b!4031243 (= res!1641132 lt!1433313)))

(declare-fun b!4031244 () Bool)

(declare-fun e!2501352 () Bool)

(assert (=> b!4031244 (= e!2501352 (not lt!1433313))))

(declare-fun b!4031245 () Bool)

(assert (=> b!4031245 (= e!2501357 (= lt!1433313 call!286886))))

(declare-fun b!4031246 () Bool)

(declare-fun res!1641134 () Bool)

(assert (=> b!4031246 (=> res!1641134 e!2501351)))

(assert (=> b!4031246 (= res!1641134 (not ((_ is ElementMatch!11813) (regex!6908 (rule!9968 token!484)))))))

(assert (=> b!4031246 (= e!2501352 e!2501351)))

(declare-fun b!4031247 () Bool)

(assert (=> b!4031247 (= e!2501355 (nullable!4138 (regex!6908 (rule!9968 token!484))))))

(declare-fun bm!286881 () Bool)

(assert (=> bm!286881 (= call!286886 (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(declare-fun b!4031248 () Bool)

(declare-fun e!2501353 () Bool)

(assert (=> b!4031248 (= e!2501351 e!2501353)))

(declare-fun res!1641136 () Bool)

(assert (=> b!4031248 (=> (not res!1641136) (not e!2501353))))

(assert (=> b!4031248 (= res!1641136 (not lt!1433313))))

(declare-fun b!4031249 () Bool)

(declare-fun res!1641135 () Bool)

(assert (=> b!4031249 (=> (not res!1641135) (not e!2501356))))

(assert (=> b!4031249 (= res!1641135 (isEmpty!25772 (tail!6273 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995))))))))

(declare-fun b!4031250 () Bool)

(assert (=> b!4031250 (= e!2501353 e!2501354)))

(declare-fun res!1641131 () Bool)

(assert (=> b!4031250 (=> res!1641131 e!2501354)))

(assert (=> b!4031250 (= res!1641131 call!286886)))

(declare-fun b!4031251 () Bool)

(assert (=> b!4031251 (= e!2501356 (= (head!8541 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))) (c!696125 (regex!6908 (rule!9968 token!484)))))))

(declare-fun b!4031252 () Bool)

(assert (=> b!4031252 (= e!2501357 e!2501352)))

(declare-fun c!696269 () Bool)

(assert (=> b!4031252 (= c!696269 ((_ is EmptyLang!11813) (regex!6908 (rule!9968 token!484))))))

(assert (= (and d!1193921 c!696270) b!4031247))

(assert (= (and d!1193921 (not c!696270)) b!4031240))

(assert (= (and d!1193921 c!696268) b!4031245))

(assert (= (and d!1193921 (not c!696268)) b!4031252))

(assert (= (and b!4031252 c!696269) b!4031244))

(assert (= (and b!4031252 (not c!696269)) b!4031246))

(assert (= (and b!4031246 (not res!1641134)) b!4031243))

(assert (= (and b!4031243 res!1641132) b!4031242))

(assert (= (and b!4031242 res!1641133) b!4031249))

(assert (= (and b!4031249 res!1641135) b!4031251))

(assert (= (and b!4031243 (not res!1641130)) b!4031248))

(assert (= (and b!4031248 res!1641136) b!4031250))

(assert (= (and b!4031250 (not res!1641131)) b!4031239))

(assert (= (and b!4031239 (not res!1641129)) b!4031241))

(assert (= (or b!4031245 b!4031242 b!4031250) bm!286881))

(assert (=> d!1193921 m!4622843))

(assert (=> d!1193921 m!4623039))

(declare-fun m!4623763 () Bool)

(assert (=> b!4031251 m!4623763))

(assert (=> b!4031247 m!4623041))

(assert (=> b!4031240 m!4623763))

(assert (=> b!4031240 m!4623763))

(declare-fun m!4623765 () Bool)

(assert (=> b!4031240 m!4623765))

(declare-fun m!4623767 () Bool)

(assert (=> b!4031240 m!4623767))

(assert (=> b!4031240 m!4623765))

(assert (=> b!4031240 m!4623767))

(declare-fun m!4623771 () Bool)

(assert (=> b!4031240 m!4623771))

(assert (=> b!4031241 m!4623763))

(assert (=> bm!286881 m!4622843))

(assert (=> b!4031249 m!4623767))

(assert (=> b!4031249 m!4623767))

(declare-fun m!4623773 () Bool)

(assert (=> b!4031249 m!4623773))

(assert (=> b!4031239 m!4623767))

(assert (=> b!4031239 m!4623767))

(assert (=> b!4031239 m!4623773))

(assert (=> b!4030620 d!1193921))

(declare-fun bm!286912 () Bool)

(declare-fun call!286923 () Unit!62350)

(assert (=> bm!286912 (= call!286923 (lemmaIsPrefixRefl!2562 lt!1432995 lt!1432995))))

(declare-fun b!4031315 () Bool)

(declare-fun e!2501399 () tuple2!42274)

(assert (=> b!4031315 (= e!2501399 (tuple2!42275 Nil!43187 lt!1432995))))

(declare-fun b!4031316 () Bool)

(declare-fun e!2501400 () tuple2!42274)

(declare-fun call!286919 () tuple2!42274)

(assert (=> b!4031316 (= e!2501400 call!286919)))

(declare-fun b!4031317 () Bool)

(declare-fun c!696299 () Bool)

(declare-fun call!286922 () Bool)

(assert (=> b!4031317 (= c!696299 call!286922)))

(declare-fun lt!1433442 () Unit!62350)

(declare-fun lt!1433443 () Unit!62350)

(assert (=> b!4031317 (= lt!1433442 lt!1433443)))

(declare-fun lt!1433457 () C!23812)

(declare-fun lt!1433450 () List!43311)

(assert (=> b!4031317 (= (++!11310 (++!11310 Nil!43187 (Cons!43187 lt!1433457 Nil!43187)) lt!1433450) lt!1432995)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1247 (List!43311 C!23812 List!43311 List!43311) Unit!62350)

(assert (=> b!4031317 (= lt!1433443 (lemmaMoveElementToOtherListKeepsConcatEq!1247 Nil!43187 lt!1433457 lt!1433450 lt!1432995))))

(assert (=> b!4031317 (= lt!1433450 (tail!6273 lt!1432995))))

(assert (=> b!4031317 (= lt!1433457 (head!8541 lt!1432995))))

(declare-fun lt!1433432 () Unit!62350)

(declare-fun lt!1433438 () Unit!62350)

(assert (=> b!4031317 (= lt!1433432 lt!1433438)))

(assert (=> b!4031317 (isPrefix!3995 (++!11310 Nil!43187 (Cons!43187 (head!8541 (getSuffix!2412 lt!1432995 Nil!43187)) Nil!43187)) lt!1432995)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!629 (List!43311 List!43311) Unit!62350)

(assert (=> b!4031317 (= lt!1433438 (lemmaAddHeadSuffixToPrefixStillPrefix!629 Nil!43187 lt!1432995))))

(declare-fun lt!1433448 () Unit!62350)

(declare-fun lt!1433436 () Unit!62350)

(assert (=> b!4031317 (= lt!1433448 lt!1433436)))

(assert (=> b!4031317 (= lt!1433436 (lemmaAddHeadSuffixToPrefixStillPrefix!629 Nil!43187 lt!1432995))))

(declare-fun lt!1433446 () List!43311)

(assert (=> b!4031317 (= lt!1433446 (++!11310 Nil!43187 (Cons!43187 (head!8541 lt!1432995) Nil!43187)))))

(declare-fun lt!1433444 () Unit!62350)

(declare-fun e!2501395 () Unit!62350)

(assert (=> b!4031317 (= lt!1433444 e!2501395)))

(declare-fun c!696298 () Bool)

(assert (=> b!4031317 (= c!696298 (= (size!32278 Nil!43187) (size!32278 lt!1432995)))))

(declare-fun lt!1433447 () Unit!62350)

(declare-fun lt!1433434 () Unit!62350)

(assert (=> b!4031317 (= lt!1433447 lt!1433434)))

(assert (=> b!4031317 (<= (size!32278 Nil!43187) (size!32278 lt!1432995))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!437 (List!43311 List!43311) Unit!62350)

(assert (=> b!4031317 (= lt!1433434 (lemmaIsPrefixThenSmallerEqSize!437 Nil!43187 lt!1432995))))

(declare-fun e!2501398 () tuple2!42274)

(assert (=> b!4031317 (= e!2501398 e!2501400)))

(declare-fun b!4031318 () Bool)

(declare-fun e!2501397 () tuple2!42274)

(declare-fun lt!1433441 () tuple2!42274)

(assert (=> b!4031318 (= e!2501397 lt!1433441)))

(declare-fun b!4031319 () Bool)

(declare-fun e!2501393 () Bool)

(declare-fun lt!1433456 () tuple2!42274)

(assert (=> b!4031319 (= e!2501393 (>= (size!32278 (_1!24271 lt!1433456)) (size!32278 Nil!43187)))))

(declare-fun b!4031320 () Bool)

(declare-fun Unit!62361 () Unit!62350)

(assert (=> b!4031320 (= e!2501395 Unit!62361)))

(declare-fun lt!1433449 () Unit!62350)

(assert (=> b!4031320 (= lt!1433449 call!286923)))

(declare-fun call!286918 () Bool)

(assert (=> b!4031320 call!286918))

(declare-fun lt!1433455 () Unit!62350)

(assert (=> b!4031320 (= lt!1433455 lt!1433449)))

(declare-fun lt!1433445 () Unit!62350)

(declare-fun call!286917 () Unit!62350)

(assert (=> b!4031320 (= lt!1433445 call!286917)))

(assert (=> b!4031320 (= lt!1432995 Nil!43187)))

(declare-fun lt!1433458 () Unit!62350)

(assert (=> b!4031320 (= lt!1433458 lt!1433445)))

(assert (=> b!4031320 false))

(declare-fun call!286924 () Regex!11813)

(declare-fun bm!286913 () Bool)

(declare-fun call!286921 () List!43311)

(assert (=> bm!286913 (= call!286919 (findLongestMatchInner!1375 call!286924 lt!1433446 (+ (size!32278 Nil!43187) 1) call!286921 lt!1432995 (size!32278 lt!1432995)))))

(declare-fun b!4031321 () Bool)

(declare-fun e!2501394 () Bool)

(assert (=> b!4031321 (= e!2501394 e!2501393)))

(declare-fun res!1641143 () Bool)

(assert (=> b!4031321 (=> res!1641143 e!2501393)))

(assert (=> b!4031321 (= res!1641143 (isEmpty!25772 (_1!24271 lt!1433456)))))

(declare-fun bm!286914 () Bool)

(assert (=> bm!286914 (= call!286922 (nullable!4138 (regex!6908 (rule!9968 token!484))))))

(declare-fun bm!286915 () Bool)

(assert (=> bm!286915 (= call!286921 (tail!6273 lt!1432995))))

(declare-fun d!1193923 () Bool)

(assert (=> d!1193923 e!2501394))

(declare-fun res!1641142 () Bool)

(assert (=> d!1193923 (=> (not res!1641142) (not e!2501394))))

(assert (=> d!1193923 (= res!1641142 (= (++!11310 (_1!24271 lt!1433456) (_2!24271 lt!1433456)) lt!1432995))))

(assert (=> d!1193923 (= lt!1433456 e!2501399)))

(declare-fun c!696302 () Bool)

(declare-fun lostCause!1003 (Regex!11813) Bool)

(assert (=> d!1193923 (= c!696302 (lostCause!1003 (regex!6908 (rule!9968 token!484))))))

(declare-fun lt!1433452 () Unit!62350)

(declare-fun Unit!62362 () Unit!62350)

(assert (=> d!1193923 (= lt!1433452 Unit!62362)))

(assert (=> d!1193923 (= (getSuffix!2412 lt!1432995 Nil!43187) lt!1432995)))

(declare-fun lt!1433440 () Unit!62350)

(declare-fun lt!1433431 () Unit!62350)

(assert (=> d!1193923 (= lt!1433440 lt!1433431)))

(declare-fun lt!1433435 () List!43311)

(assert (=> d!1193923 (= lt!1432995 lt!1433435)))

(assert (=> d!1193923 (= lt!1433431 (lemmaSamePrefixThenSameSuffix!2156 Nil!43187 lt!1432995 Nil!43187 lt!1433435 lt!1432995))))

(assert (=> d!1193923 (= lt!1433435 (getSuffix!2412 lt!1432995 Nil!43187))))

(declare-fun lt!1433433 () Unit!62350)

(declare-fun lt!1433453 () Unit!62350)

(assert (=> d!1193923 (= lt!1433433 lt!1433453)))

(assert (=> d!1193923 (isPrefix!3995 Nil!43187 (++!11310 Nil!43187 lt!1432995))))

(assert (=> d!1193923 (= lt!1433453 (lemmaConcatTwoListThenFirstIsPrefix!2830 Nil!43187 lt!1432995))))

(assert (=> d!1193923 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1193923 (= (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)) lt!1433456)))

(declare-fun b!4031314 () Bool)

(assert (=> b!4031314 (= e!2501399 e!2501398)))

(declare-fun c!696300 () Bool)

(assert (=> b!4031314 (= c!696300 (= (size!32278 Nil!43187) (size!32278 lt!1432995)))))

(declare-fun b!4031322 () Bool)

(declare-fun e!2501396 () tuple2!42274)

(assert (=> b!4031322 (= e!2501396 (tuple2!42275 Nil!43187 lt!1432995))))

(declare-fun b!4031323 () Bool)

(declare-fun c!696297 () Bool)

(assert (=> b!4031323 (= c!696297 call!286922)))

(declare-fun lt!1433454 () Unit!62350)

(declare-fun lt!1433451 () Unit!62350)

(assert (=> b!4031323 (= lt!1433454 lt!1433451)))

(assert (=> b!4031323 (= lt!1432995 Nil!43187)))

(assert (=> b!4031323 (= lt!1433451 call!286917)))

(declare-fun lt!1433439 () Unit!62350)

(declare-fun lt!1433437 () Unit!62350)

(assert (=> b!4031323 (= lt!1433439 lt!1433437)))

(assert (=> b!4031323 call!286918))

(assert (=> b!4031323 (= lt!1433437 call!286923)))

(assert (=> b!4031323 (= e!2501398 e!2501396)))

(declare-fun bm!286916 () Bool)

(declare-fun call!286920 () C!23812)

(assert (=> bm!286916 (= call!286924 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) call!286920))))

(declare-fun b!4031324 () Bool)

(assert (=> b!4031324 (= e!2501397 (tuple2!42275 Nil!43187 lt!1432995))))

(declare-fun b!4031325 () Bool)

(assert (=> b!4031325 (= e!2501396 (tuple2!42275 Nil!43187 Nil!43187))))

(declare-fun b!4031326 () Bool)

(declare-fun Unit!62363 () Unit!62350)

(assert (=> b!4031326 (= e!2501395 Unit!62363)))

(declare-fun bm!286917 () Bool)

(assert (=> bm!286917 (= call!286918 (isPrefix!3995 lt!1432995 lt!1432995))))

(declare-fun bm!286918 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!913 (List!43311 List!43311 List!43311) Unit!62350)

(assert (=> bm!286918 (= call!286917 (lemmaIsPrefixSameLengthThenSameList!913 lt!1432995 Nil!43187 lt!1432995))))

(declare-fun bm!286919 () Bool)

(assert (=> bm!286919 (= call!286920 (head!8541 lt!1432995))))

(declare-fun b!4031327 () Bool)

(assert (=> b!4031327 (= e!2501400 e!2501397)))

(assert (=> b!4031327 (= lt!1433441 call!286919)))

(declare-fun c!696301 () Bool)

(assert (=> b!4031327 (= c!696301 (isEmpty!25772 (_1!24271 lt!1433441)))))

(assert (= (and d!1193923 c!696302) b!4031315))

(assert (= (and d!1193923 (not c!696302)) b!4031314))

(assert (= (and b!4031314 c!696300) b!4031323))

(assert (= (and b!4031314 (not c!696300)) b!4031317))

(assert (= (and b!4031323 c!696297) b!4031325))

(assert (= (and b!4031323 (not c!696297)) b!4031322))

(assert (= (and b!4031317 c!696298) b!4031320))

(assert (= (and b!4031317 (not c!696298)) b!4031326))

(assert (= (and b!4031317 c!696299) b!4031327))

(assert (= (and b!4031317 (not c!696299)) b!4031316))

(assert (= (and b!4031327 c!696301) b!4031324))

(assert (= (and b!4031327 (not c!696301)) b!4031318))

(assert (= (or b!4031327 b!4031316) bm!286919))

(assert (= (or b!4031327 b!4031316) bm!286915))

(assert (= (or b!4031327 b!4031316) bm!286916))

(assert (= (or b!4031327 b!4031316) bm!286913))

(assert (= (or b!4031323 b!4031320) bm!286917))

(assert (= (or b!4031323 b!4031317) bm!286914))

(assert (= (or b!4031323 b!4031320) bm!286918))

(assert (= (or b!4031323 b!4031320) bm!286912))

(assert (= (and d!1193923 res!1641142) b!4031321))

(assert (= (and b!4031321 (not res!1641143)) b!4031319))

(assert (=> bm!286917 m!4622611))

(declare-fun m!4623793 () Bool)

(assert (=> b!4031319 m!4623793))

(assert (=> b!4031319 m!4622855))

(assert (=> bm!286919 m!4623097))

(declare-fun m!4623795 () Bool)

(assert (=> bm!286916 m!4623795))

(declare-fun m!4623797 () Bool)

(assert (=> b!4031321 m!4623797))

(declare-fun m!4623799 () Bool)

(assert (=> b!4031317 m!4623799))

(declare-fun m!4623801 () Bool)

(assert (=> b!4031317 m!4623801))

(declare-fun m!4623803 () Bool)

(assert (=> b!4031317 m!4623803))

(declare-fun m!4623805 () Bool)

(assert (=> b!4031317 m!4623805))

(declare-fun m!4623807 () Bool)

(assert (=> b!4031317 m!4623807))

(assert (=> b!4031317 m!4623099))

(declare-fun m!4623809 () Bool)

(assert (=> b!4031317 m!4623809))

(declare-fun m!4623811 () Bool)

(assert (=> b!4031317 m!4623811))

(assert (=> b!4031317 m!4623097))

(assert (=> b!4031317 m!4623805))

(assert (=> b!4031317 m!4623799))

(assert (=> b!4031317 m!4622841))

(declare-fun m!4623813 () Bool)

(assert (=> b!4031317 m!4623813))

(assert (=> b!4031317 m!4622855))

(declare-fun m!4623815 () Bool)

(assert (=> b!4031317 m!4623815))

(declare-fun m!4623817 () Bool)

(assert (=> b!4031317 m!4623817))

(assert (=> b!4031317 m!4623815))

(assert (=> bm!286912 m!4622613))

(declare-fun m!4623819 () Bool)

(assert (=> d!1193923 m!4623819))

(declare-fun m!4623821 () Bool)

(assert (=> d!1193923 m!4623821))

(declare-fun m!4623823 () Bool)

(assert (=> d!1193923 m!4623823))

(assert (=> d!1193923 m!4623039))

(assert (=> d!1193923 m!4623815))

(declare-fun m!4623825 () Bool)

(assert (=> d!1193923 m!4623825))

(assert (=> d!1193923 m!4623821))

(declare-fun m!4623827 () Bool)

(assert (=> d!1193923 m!4623827))

(declare-fun m!4623829 () Bool)

(assert (=> d!1193923 m!4623829))

(assert (=> bm!286915 m!4623099))

(assert (=> bm!286914 m!4623041))

(declare-fun m!4623831 () Bool)

(assert (=> bm!286918 m!4623831))

(assert (=> bm!286913 m!4622841))

(declare-fun m!4623833 () Bool)

(assert (=> bm!286913 m!4623833))

(declare-fun m!4623835 () Bool)

(assert (=> b!4031327 m!4623835))

(assert (=> b!4030620 d!1193923))

(declare-fun d!1193935 () Bool)

(declare-fun lt!1433459 () Int)

(assert (=> d!1193935 (>= lt!1433459 0)))

(declare-fun e!2501405 () Int)

(assert (=> d!1193935 (= lt!1433459 e!2501405)))

(declare-fun c!696303 () Bool)

(assert (=> d!1193935 (= c!696303 ((_ is Nil!43187) Nil!43187))))

(assert (=> d!1193935 (= (size!32278 Nil!43187) lt!1433459)))

(declare-fun b!4031332 () Bool)

(assert (=> b!4031332 (= e!2501405 0)))

(declare-fun b!4031333 () Bool)

(assert (=> b!4031333 (= e!2501405 (+ 1 (size!32278 (t!334152 Nil!43187))))))

(assert (= (and d!1193935 c!696303) b!4031332))

(assert (= (and d!1193935 (not c!696303)) b!4031333))

(declare-fun m!4623837 () Bool)

(assert (=> b!4031333 m!4623837))

(assert (=> b!4030620 d!1193935))

(assert (=> b!4030620 d!1193753))

(declare-fun d!1193937 () Bool)

(declare-fun lt!1433460 () Bool)

(assert (=> d!1193937 (= lt!1433460 (select (content!6555 (t!334154 rules!2999)) (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(declare-fun e!2501407 () Bool)

(assert (=> d!1193937 (= lt!1433460 e!2501407)))

(declare-fun res!1641148 () Bool)

(assert (=> d!1193937 (=> (not res!1641148) (not e!2501407))))

(assert (=> d!1193937 (= res!1641148 ((_ is Cons!43189) (t!334154 rules!2999)))))

(assert (=> d!1193937 (= (contains!8572 (t!334154 rules!2999) (rule!9968 (_1!24269 (v!39709 lt!1432997)))) lt!1433460)))

(declare-fun b!4031334 () Bool)

(declare-fun e!2501406 () Bool)

(assert (=> b!4031334 (= e!2501407 e!2501406)))

(declare-fun res!1641149 () Bool)

(assert (=> b!4031334 (=> res!1641149 e!2501406)))

(assert (=> b!4031334 (= res!1641149 (= (h!48609 (t!334154 rules!2999)) (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(declare-fun b!4031335 () Bool)

(assert (=> b!4031335 (= e!2501406 (contains!8572 (t!334154 (t!334154 rules!2999)) (rule!9968 (_1!24269 (v!39709 lt!1432997)))))))

(assert (= (and d!1193937 res!1641148) b!4031334))

(assert (= (and b!4031334 (not res!1641149)) b!4031335))

(declare-fun m!4623839 () Bool)

(assert (=> d!1193937 m!4623839))

(declare-fun m!4623841 () Bool)

(assert (=> d!1193937 m!4623841))

(declare-fun m!4623843 () Bool)

(assert (=> b!4031335 m!4623843))

(assert (=> b!4030697 d!1193937))

(declare-fun d!1193939 () Bool)

(declare-fun lt!1433461 () Int)

(assert (=> d!1193939 (>= lt!1433461 0)))

(declare-fun e!2501408 () Int)

(assert (=> d!1193939 (= lt!1433461 e!2501408)))

(declare-fun c!696304 () Bool)

(assert (=> d!1193939 (= c!696304 ((_ is Nil!43187) lt!1433210))))

(assert (=> d!1193939 (= (size!32278 lt!1433210) lt!1433461)))

(declare-fun b!4031336 () Bool)

(assert (=> b!4031336 (= e!2501408 0)))

(declare-fun b!4031337 () Bool)

(assert (=> b!4031337 (= e!2501408 (+ 1 (size!32278 (t!334152 lt!1433210))))))

(assert (= (and d!1193939 c!696304) b!4031336))

(assert (= (and d!1193939 (not c!696304)) b!4031337))

(declare-fun m!4623845 () Bool)

(assert (=> b!4031337 m!4623845))

(assert (=> b!4030920 d!1193939))

(assert (=> b!4030920 d!1193691))

(declare-fun d!1193941 () Bool)

(declare-fun lt!1433462 () Int)

(assert (=> d!1193941 (>= lt!1433462 0)))

(declare-fun e!2501409 () Int)

(assert (=> d!1193941 (= lt!1433462 e!2501409)))

(declare-fun c!696305 () Bool)

(assert (=> d!1193941 (= c!696305 ((_ is Nil!43187) lt!1433005))))

(assert (=> d!1193941 (= (size!32278 lt!1433005) lt!1433462)))

(declare-fun b!4031338 () Bool)

(assert (=> b!4031338 (= e!2501409 0)))

(declare-fun b!4031339 () Bool)

(assert (=> b!4031339 (= e!2501409 (+ 1 (size!32278 (t!334152 lt!1433005))))))

(assert (= (and d!1193941 c!696305) b!4031338))

(assert (= (and d!1193941 (not c!696305)) b!4031339))

(declare-fun m!4623847 () Bool)

(assert (=> b!4031339 m!4623847))

(assert (=> b!4030920 d!1193941))

(declare-fun d!1193943 () Bool)

(declare-fun e!2501410 () Bool)

(assert (=> d!1193943 e!2501410))

(declare-fun res!1641151 () Bool)

(assert (=> d!1193943 (=> (not res!1641151) (not e!2501410))))

(declare-fun lt!1433463 () List!43311)

(assert (=> d!1193943 (= res!1641151 (= (content!6554 lt!1433463) ((_ map or) (content!6554 (t!334152 lt!1433000)) (content!6554 suffix!1299))))))

(declare-fun e!2501411 () List!43311)

(assert (=> d!1193943 (= lt!1433463 e!2501411)))

(declare-fun c!696306 () Bool)

(assert (=> d!1193943 (= c!696306 ((_ is Nil!43187) (t!334152 lt!1433000)))))

(assert (=> d!1193943 (= (++!11310 (t!334152 lt!1433000) suffix!1299) lt!1433463)))

(declare-fun b!4031341 () Bool)

(assert (=> b!4031341 (= e!2501411 (Cons!43187 (h!48607 (t!334152 lt!1433000)) (++!11310 (t!334152 (t!334152 lt!1433000)) suffix!1299)))))

(declare-fun b!4031340 () Bool)

(assert (=> b!4031340 (= e!2501411 suffix!1299)))

(declare-fun b!4031343 () Bool)

(assert (=> b!4031343 (= e!2501410 (or (not (= suffix!1299 Nil!43187)) (= lt!1433463 (t!334152 lt!1433000))))))

(declare-fun b!4031342 () Bool)

(declare-fun res!1641150 () Bool)

(assert (=> b!4031342 (=> (not res!1641150) (not e!2501410))))

(assert (=> b!4031342 (= res!1641150 (= (size!32278 lt!1433463) (+ (size!32278 (t!334152 lt!1433000)) (size!32278 suffix!1299))))))

(assert (= (and d!1193943 c!696306) b!4031340))

(assert (= (and d!1193943 (not c!696306)) b!4031341))

(assert (= (and d!1193943 res!1641151) b!4031342))

(assert (= (and b!4031342 res!1641150) b!4031343))

(declare-fun m!4623849 () Bool)

(assert (=> d!1193943 m!4623849))

(declare-fun m!4623851 () Bool)

(assert (=> d!1193943 m!4623851))

(assert (=> d!1193943 m!4623237))

(declare-fun m!4623853 () Bool)

(assert (=> b!4031341 m!4623853))

(declare-fun m!4623855 () Bool)

(assert (=> b!4031342 m!4623855))

(declare-fun m!4623857 () Bool)

(assert (=> b!4031342 m!4623857))

(assert (=> b!4031342 m!4622583))

(assert (=> b!4030923 d!1193943))

(assert (=> b!4030889 d!1193905))

(assert (=> b!4030889 d!1193907))

(assert (=> b!4030889 d!1193761))

(declare-fun b!4031344 () Bool)

(declare-fun res!1641152 () Bool)

(declare-fun e!2501415 () Bool)

(assert (=> b!4031344 (=> res!1641152 e!2501415)))

(assert (=> b!4031344 (= res!1641152 (not (isEmpty!25772 (tail!6273 (tail!6273 lt!1433006)))))))

(declare-fun b!4031345 () Bool)

(declare-fun e!2501416 () Bool)

(assert (=> b!4031345 (= e!2501416 (matchR!5766 (derivativeStep!3543 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)) (head!8541 (tail!6273 lt!1433006))) (tail!6273 (tail!6273 lt!1433006))))))

(declare-fun b!4031346 () Bool)

(assert (=> b!4031346 (= e!2501415 (not (= (head!8541 (tail!6273 lt!1433006)) (c!696125 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006))))))))

(declare-fun b!4031347 () Bool)

(declare-fun res!1641156 () Bool)

(declare-fun e!2501417 () Bool)

(assert (=> b!4031347 (=> (not res!1641156) (not e!2501417))))

(declare-fun call!286927 () Bool)

(assert (=> b!4031347 (= res!1641156 (not call!286927))))

(declare-fun d!1193945 () Bool)

(declare-fun e!2501418 () Bool)

(assert (=> d!1193945 e!2501418))

(declare-fun c!696307 () Bool)

(assert (=> d!1193945 (= c!696307 ((_ is EmptyExpr!11813) (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006))))))

(declare-fun lt!1433464 () Bool)

(assert (=> d!1193945 (= lt!1433464 e!2501416)))

(declare-fun c!696309 () Bool)

(assert (=> d!1193945 (= c!696309 (isEmpty!25772 (tail!6273 lt!1433006)))))

(assert (=> d!1193945 (validRegex!5338 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)))))

(assert (=> d!1193945 (= (matchR!5766 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)) (tail!6273 lt!1433006)) lt!1433464)))

(declare-fun b!4031348 () Bool)

(declare-fun res!1641153 () Bool)

(declare-fun e!2501412 () Bool)

(assert (=> b!4031348 (=> res!1641153 e!2501412)))

(assert (=> b!4031348 (= res!1641153 e!2501417)))

(declare-fun res!1641155 () Bool)

(assert (=> b!4031348 (=> (not res!1641155) (not e!2501417))))

(assert (=> b!4031348 (= res!1641155 lt!1433464)))

(declare-fun b!4031349 () Bool)

(declare-fun e!2501413 () Bool)

(assert (=> b!4031349 (= e!2501413 (not lt!1433464))))

(declare-fun b!4031350 () Bool)

(assert (=> b!4031350 (= e!2501418 (= lt!1433464 call!286927))))

(declare-fun b!4031351 () Bool)

(declare-fun res!1641157 () Bool)

(assert (=> b!4031351 (=> res!1641157 e!2501412)))

(assert (=> b!4031351 (= res!1641157 (not ((_ is ElementMatch!11813) (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)))))))

(assert (=> b!4031351 (= e!2501413 e!2501412)))

(declare-fun b!4031352 () Bool)

(assert (=> b!4031352 (= e!2501416 (nullable!4138 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006))))))

(declare-fun bm!286922 () Bool)

(assert (=> bm!286922 (= call!286927 (isEmpty!25772 (tail!6273 lt!1433006)))))

(declare-fun b!4031353 () Bool)

(declare-fun e!2501414 () Bool)

(assert (=> b!4031353 (= e!2501412 e!2501414)))

(declare-fun res!1641159 () Bool)

(assert (=> b!4031353 (=> (not res!1641159) (not e!2501414))))

(assert (=> b!4031353 (= res!1641159 (not lt!1433464))))

(declare-fun b!4031354 () Bool)

(declare-fun res!1641158 () Bool)

(assert (=> b!4031354 (=> (not res!1641158) (not e!2501417))))

(assert (=> b!4031354 (= res!1641158 (isEmpty!25772 (tail!6273 (tail!6273 lt!1433006))))))

(declare-fun b!4031355 () Bool)

(assert (=> b!4031355 (= e!2501414 e!2501415)))

(declare-fun res!1641154 () Bool)

(assert (=> b!4031355 (=> res!1641154 e!2501415)))

(assert (=> b!4031355 (= res!1641154 call!286927)))

(declare-fun b!4031356 () Bool)

(assert (=> b!4031356 (= e!2501417 (= (head!8541 (tail!6273 lt!1433006)) (c!696125 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)))))))

(declare-fun b!4031357 () Bool)

(assert (=> b!4031357 (= e!2501418 e!2501413)))

(declare-fun c!696308 () Bool)

(assert (=> b!4031357 (= c!696308 ((_ is EmptyLang!11813) (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006))))))

(assert (= (and d!1193945 c!696309) b!4031352))

(assert (= (and d!1193945 (not c!696309)) b!4031345))

(assert (= (and d!1193945 c!696307) b!4031350))

(assert (= (and d!1193945 (not c!696307)) b!4031357))

(assert (= (and b!4031357 c!696308) b!4031349))

(assert (= (and b!4031357 (not c!696308)) b!4031351))

(assert (= (and b!4031351 (not res!1641157)) b!4031348))

(assert (= (and b!4031348 res!1641155) b!4031347))

(assert (= (and b!4031347 res!1641156) b!4031354))

(assert (= (and b!4031354 res!1641158) b!4031356))

(assert (= (and b!4031348 (not res!1641153)) b!4031353))

(assert (= (and b!4031353 res!1641159) b!4031355))

(assert (= (and b!4031355 (not res!1641154)) b!4031344))

(assert (= (and b!4031344 (not res!1641152)) b!4031346))

(assert (= (or b!4031350 b!4031347 b!4031355) bm!286922))

(assert (=> d!1193945 m!4622643))

(assert (=> d!1193945 m!4623047))

(assert (=> d!1193945 m!4623043))

(declare-fun m!4623859 () Bool)

(assert (=> d!1193945 m!4623859))

(assert (=> b!4031356 m!4622643))

(assert (=> b!4031356 m!4623669))

(assert (=> b!4031352 m!4623043))

(declare-fun m!4623861 () Bool)

(assert (=> b!4031352 m!4623861))

(assert (=> b!4031345 m!4622643))

(assert (=> b!4031345 m!4623669))

(assert (=> b!4031345 m!4623043))

(assert (=> b!4031345 m!4623669))

(declare-fun m!4623863 () Bool)

(assert (=> b!4031345 m!4623863))

(assert (=> b!4031345 m!4622643))

(assert (=> b!4031345 m!4623677))

(assert (=> b!4031345 m!4623863))

(assert (=> b!4031345 m!4623677))

(declare-fun m!4623865 () Bool)

(assert (=> b!4031345 m!4623865))

(assert (=> b!4031346 m!4622643))

(assert (=> b!4031346 m!4623669))

(assert (=> bm!286922 m!4622643))

(assert (=> bm!286922 m!4623047))

(assert (=> b!4031354 m!4622643))

(assert (=> b!4031354 m!4623677))

(assert (=> b!4031354 m!4623677))

(declare-fun m!4623867 () Bool)

(assert (=> b!4031354 m!4623867))

(assert (=> b!4031344 m!4622643))

(assert (=> b!4031344 m!4623677))

(assert (=> b!4031344 m!4623677))

(assert (=> b!4031344 m!4623867))

(assert (=> b!4030758 d!1193945))

(declare-fun b!4031407 () Bool)

(declare-fun e!2501445 () Regex!11813)

(declare-fun call!286947 () Regex!11813)

(declare-fun call!286946 () Regex!11813)

(assert (=> b!4031407 (= e!2501445 (Union!11813 (Concat!18952 call!286947 (regTwo!24138 (regex!6908 (rule!9968 token!484)))) call!286946))))

(declare-fun b!4031408 () Bool)

(declare-fun e!2501447 () Regex!11813)

(declare-fun call!286945 () Regex!11813)

(assert (=> b!4031408 (= e!2501447 (Union!11813 call!286946 call!286945))))

(declare-fun b!4031409 () Bool)

(declare-fun c!696329 () Bool)

(assert (=> b!4031409 (= c!696329 (nullable!4138 (regOne!24138 (regex!6908 (rule!9968 token!484)))))))

(declare-fun e!2501446 () Regex!11813)

(assert (=> b!4031409 (= e!2501446 e!2501445)))

(declare-fun b!4031410 () Bool)

(declare-fun e!2501448 () Regex!11813)

(assert (=> b!4031410 (= e!2501448 EmptyLang!11813)))

(declare-fun b!4031411 () Bool)

(declare-fun c!696331 () Bool)

(assert (=> b!4031411 (= c!696331 ((_ is Union!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun e!2501449 () Regex!11813)

(assert (=> b!4031411 (= e!2501449 e!2501447)))

(declare-fun c!696333 () Bool)

(declare-fun bm!286939 () Bool)

(assert (=> bm!286939 (= call!286945 (derivativeStep!3543 (ite c!696331 (regTwo!24139 (regex!6908 (rule!9968 token!484))) (ite c!696333 (reg!12142 (regex!6908 (rule!9968 token!484))) (regOne!24138 (regex!6908 (rule!9968 token!484))))) (head!8541 lt!1433006)))))

(declare-fun b!4031412 () Bool)

(declare-fun call!286944 () Regex!11813)

(assert (=> b!4031412 (= e!2501446 (Concat!18952 call!286944 (regex!6908 (rule!9968 token!484))))))

(declare-fun bm!286940 () Bool)

(assert (=> bm!286940 (= call!286946 (derivativeStep!3543 (ite c!696331 (regOne!24139 (regex!6908 (rule!9968 token!484))) (regTwo!24138 (regex!6908 (rule!9968 token!484)))) (head!8541 lt!1433006)))))

(declare-fun bm!286941 () Bool)

(assert (=> bm!286941 (= call!286947 call!286944)))

(declare-fun b!4031413 () Bool)

(assert (=> b!4031413 (= e!2501448 e!2501449)))

(declare-fun c!696332 () Bool)

(assert (=> b!4031413 (= c!696332 ((_ is ElementMatch!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun d!1193947 () Bool)

(declare-fun lt!1433503 () Regex!11813)

(assert (=> d!1193947 (validRegex!5338 lt!1433503)))

(assert (=> d!1193947 (= lt!1433503 e!2501448)))

(declare-fun c!696330 () Bool)

(assert (=> d!1193947 (= c!696330 (or ((_ is EmptyExpr!11813) (regex!6908 (rule!9968 token!484))) ((_ is EmptyLang!11813) (regex!6908 (rule!9968 token!484)))))))

(assert (=> d!1193947 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1193947 (= (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 lt!1433006)) lt!1433503)))

(declare-fun bm!286942 () Bool)

(assert (=> bm!286942 (= call!286944 call!286945)))

(declare-fun b!4031414 () Bool)

(assert (=> b!4031414 (= e!2501445 (Union!11813 (Concat!18952 call!286947 (regTwo!24138 (regex!6908 (rule!9968 token!484)))) EmptyLang!11813))))

(declare-fun b!4031415 () Bool)

(assert (=> b!4031415 (= e!2501447 e!2501446)))

(assert (=> b!4031415 (= c!696333 ((_ is Star!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun b!4031416 () Bool)

(assert (=> b!4031416 (= e!2501449 (ite (= (head!8541 lt!1433006) (c!696125 (regex!6908 (rule!9968 token!484)))) EmptyExpr!11813 EmptyLang!11813))))

(assert (= (and d!1193947 c!696330) b!4031410))

(assert (= (and d!1193947 (not c!696330)) b!4031413))

(assert (= (and b!4031413 c!696332) b!4031416))

(assert (= (and b!4031413 (not c!696332)) b!4031411))

(assert (= (and b!4031411 c!696331) b!4031408))

(assert (= (and b!4031411 (not c!696331)) b!4031415))

(assert (= (and b!4031415 c!696333) b!4031412))

(assert (= (and b!4031415 (not c!696333)) b!4031409))

(assert (= (and b!4031409 c!696329) b!4031407))

(assert (= (and b!4031409 (not c!696329)) b!4031414))

(assert (= (or b!4031407 b!4031414) bm!286941))

(assert (= (or b!4031412 bm!286941) bm!286942))

(assert (= (or b!4031408 b!4031407) bm!286940))

(assert (= (or b!4031408 bm!286942) bm!286939))

(declare-fun m!4623937 () Bool)

(assert (=> b!4031409 m!4623937))

(assert (=> bm!286939 m!4622639))

(declare-fun m!4623941 () Bool)

(assert (=> bm!286939 m!4623941))

(assert (=> bm!286940 m!4622639))

(declare-fun m!4623945 () Bool)

(assert (=> bm!286940 m!4623945))

(declare-fun m!4623947 () Bool)

(assert (=> d!1193947 m!4623947))

(assert (=> d!1193947 m!4623039))

(assert (=> b!4030758 d!1193947))

(assert (=> b!4030758 d!1193791))

(assert (=> b!4030758 d!1193823))

(declare-fun d!1193959 () Bool)

(declare-fun e!2501450 () Bool)

(assert (=> d!1193959 e!2501450))

(declare-fun res!1641172 () Bool)

(assert (=> d!1193959 (=> (not res!1641172) (not e!2501450))))

(declare-fun lt!1433504 () List!43311)

(assert (=> d!1193959 (= res!1641172 (= (content!6554 lt!1433504) ((_ map or) (content!6554 lt!1433006) (content!6554 lt!1433027))))))

(declare-fun e!2501451 () List!43311)

(assert (=> d!1193959 (= lt!1433504 e!2501451)))

(declare-fun c!696334 () Bool)

(assert (=> d!1193959 (= c!696334 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193959 (= (++!11310 lt!1433006 lt!1433027) lt!1433504)))

(declare-fun b!4031418 () Bool)

(assert (=> b!4031418 (= e!2501451 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) lt!1433027)))))

(declare-fun b!4031417 () Bool)

(assert (=> b!4031417 (= e!2501451 lt!1433027)))

(declare-fun b!4031420 () Bool)

(assert (=> b!4031420 (= e!2501450 (or (not (= lt!1433027 Nil!43187)) (= lt!1433504 lt!1433006)))))

(declare-fun b!4031419 () Bool)

(declare-fun res!1641171 () Bool)

(assert (=> b!4031419 (=> (not res!1641171) (not e!2501450))))

(assert (=> b!4031419 (= res!1641171 (= (size!32278 lt!1433504) (+ (size!32278 lt!1433006) (size!32278 lt!1433027))))))

(assert (= (and d!1193959 c!696334) b!4031417))

(assert (= (and d!1193959 (not c!696334)) b!4031418))

(assert (= (and d!1193959 res!1641172) b!4031419))

(assert (= (and b!4031419 res!1641171) b!4031420))

(declare-fun m!4623959 () Bool)

(assert (=> d!1193959 m!4623959))

(assert (=> d!1193959 m!4622619))

(declare-fun m!4623961 () Bool)

(assert (=> d!1193959 m!4623961))

(declare-fun m!4623963 () Bool)

(assert (=> b!4031418 m!4623963))

(declare-fun m!4623967 () Bool)

(assert (=> b!4031419 m!4623967))

(assert (=> b!4031419 m!4622587))

(declare-fun m!4623969 () Bool)

(assert (=> b!4031419 m!4623969))

(assert (=> d!1193475 d!1193959))

(assert (=> d!1193475 d!1193693))

(assert (=> d!1193475 d!1193691))

(declare-fun b!4031422 () Bool)

(declare-fun res!1641173 () Bool)

(declare-fun e!2501453 () Bool)

(assert (=> b!4031422 (=> (not res!1641173) (not e!2501453))))

(assert (=> b!4031422 (= res!1641173 (= (head!8541 prefix!494) (head!8541 (++!11310 prefix!494 suffix!1299))))))

(declare-fun b!4031424 () Bool)

(declare-fun e!2501452 () Bool)

(assert (=> b!4031424 (= e!2501452 (>= (size!32278 (++!11310 prefix!494 suffix!1299)) (size!32278 prefix!494)))))

(declare-fun b!4031423 () Bool)

(assert (=> b!4031423 (= e!2501453 (isPrefix!3995 (tail!6273 prefix!494) (tail!6273 (++!11310 prefix!494 suffix!1299))))))

(declare-fun b!4031421 () Bool)

(declare-fun e!2501454 () Bool)

(assert (=> b!4031421 (= e!2501454 e!2501453)))

(declare-fun res!1641175 () Bool)

(assert (=> b!4031421 (=> (not res!1641175) (not e!2501453))))

(assert (=> b!4031421 (= res!1641175 (not ((_ is Nil!43187) (++!11310 prefix!494 suffix!1299))))))

(declare-fun d!1193961 () Bool)

(assert (=> d!1193961 e!2501452))

(declare-fun res!1641176 () Bool)

(assert (=> d!1193961 (=> res!1641176 e!2501452)))

(declare-fun lt!1433505 () Bool)

(assert (=> d!1193961 (= res!1641176 (not lt!1433505))))

(assert (=> d!1193961 (= lt!1433505 e!2501454)))

(declare-fun res!1641174 () Bool)

(assert (=> d!1193961 (=> res!1641174 e!2501454)))

(assert (=> d!1193961 (= res!1641174 ((_ is Nil!43187) prefix!494))))

(assert (=> d!1193961 (= (isPrefix!3995 prefix!494 (++!11310 prefix!494 suffix!1299)) lt!1433505)))

(assert (= (and d!1193961 (not res!1641174)) b!4031421))

(assert (= (and b!4031421 res!1641175) b!4031422))

(assert (= (and b!4031422 res!1641173) b!4031423))

(assert (= (and d!1193961 (not res!1641176)) b!4031424))

(assert (=> b!4031422 m!4622641))

(assert (=> b!4031422 m!4622535))

(declare-fun m!4623981 () Bool)

(assert (=> b!4031422 m!4623981))

(assert (=> b!4031424 m!4622535))

(declare-fun m!4623983 () Bool)

(assert (=> b!4031424 m!4623983))

(assert (=> b!4031424 m!4622589))

(assert (=> b!4031423 m!4622631))

(assert (=> b!4031423 m!4622535))

(declare-fun m!4623985 () Bool)

(assert (=> b!4031423 m!4623985))

(assert (=> b!4031423 m!4622631))

(assert (=> b!4031423 m!4623985))

(declare-fun m!4623987 () Bool)

(assert (=> b!4031423 m!4623987))

(assert (=> d!1193623 d!1193961))

(assert (=> d!1193623 d!1193651))

(declare-fun d!1193965 () Bool)

(assert (=> d!1193965 (isPrefix!3995 prefix!494 (++!11310 prefix!494 suffix!1299))))

(assert (=> d!1193965 true))

(declare-fun _$46!1717 () Unit!62350)

(assert (=> d!1193965 (= (choose!24383 prefix!494 suffix!1299) _$46!1717)))

(declare-fun bs!590272 () Bool)

(assert (= bs!590272 d!1193965))

(assert (=> bs!590272 m!4622535))

(assert (=> bs!590272 m!4622535))

(assert (=> bs!590272 m!4623127))

(assert (=> d!1193623 d!1193965))

(declare-fun b!4031428 () Bool)

(declare-fun res!1641179 () Bool)

(declare-fun e!2501458 () Bool)

(assert (=> b!4031428 (=> (not res!1641179) (not e!2501458))))

(assert (=> b!4031428 (= res!1641179 (= (head!8541 lt!1433006) (head!8541 (++!11310 prefix!494 suffix!1299))))))

(declare-fun b!4031430 () Bool)

(declare-fun e!2501457 () Bool)

(assert (=> b!4031430 (= e!2501457 (>= (size!32278 (++!11310 prefix!494 suffix!1299)) (size!32278 lt!1433006)))))

(declare-fun b!4031429 () Bool)

(assert (=> b!4031429 (= e!2501458 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 (++!11310 prefix!494 suffix!1299))))))

(declare-fun b!4031427 () Bool)

(declare-fun e!2501459 () Bool)

(assert (=> b!4031427 (= e!2501459 e!2501458)))

(declare-fun res!1641181 () Bool)

(assert (=> b!4031427 (=> (not res!1641181) (not e!2501458))))

(assert (=> b!4031427 (= res!1641181 (not ((_ is Nil!43187) (++!11310 prefix!494 suffix!1299))))))

(declare-fun d!1193969 () Bool)

(assert (=> d!1193969 e!2501457))

(declare-fun res!1641182 () Bool)

(assert (=> d!1193969 (=> res!1641182 e!2501457)))

(declare-fun lt!1433507 () Bool)

(assert (=> d!1193969 (= res!1641182 (not lt!1433507))))

(assert (=> d!1193969 (= lt!1433507 e!2501459)))

(declare-fun res!1641180 () Bool)

(assert (=> d!1193969 (=> res!1641180 e!2501459)))

(assert (=> d!1193969 (= res!1641180 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193969 (= (isPrefix!3995 lt!1433006 (++!11310 prefix!494 suffix!1299)) lt!1433507)))

(assert (= (and d!1193969 (not res!1641180)) b!4031427))

(assert (= (and b!4031427 res!1641181) b!4031428))

(assert (= (and b!4031428 res!1641179) b!4031429))

(assert (= (and d!1193969 (not res!1641182)) b!4031430))

(assert (=> b!4031428 m!4622639))

(assert (=> b!4031428 m!4622535))

(assert (=> b!4031428 m!4623981))

(assert (=> b!4031430 m!4622535))

(assert (=> b!4031430 m!4623983))

(assert (=> b!4031430 m!4622587))

(assert (=> b!4031429 m!4622643))

(assert (=> b!4031429 m!4622535))

(assert (=> b!4031429 m!4623985))

(assert (=> b!4031429 m!4622643))

(assert (=> b!4031429 m!4623985))

(declare-fun m!4623993 () Bool)

(assert (=> b!4031429 m!4623993))

(assert (=> d!1193607 d!1193969))

(assert (=> d!1193607 d!1193651))

(declare-fun d!1193971 () Bool)

(assert (=> d!1193971 (isPrefix!3995 lt!1433006 (++!11310 prefix!494 suffix!1299))))

(assert (=> d!1193971 true))

(declare-fun _$58!554 () Unit!62350)

(assert (=> d!1193971 (= (choose!24384 lt!1433006 prefix!494 suffix!1299) _$58!554)))

(declare-fun bs!590273 () Bool)

(assert (= bs!590273 d!1193971))

(assert (=> bs!590273 m!4622535))

(assert (=> bs!590273 m!4622535))

(assert (=> bs!590273 m!4623093))

(assert (=> d!1193607 d!1193971))

(assert (=> d!1193607 d!1193477))

(declare-fun bs!590276 () Bool)

(declare-fun d!1193973 () Bool)

(assert (= bs!590276 (and d!1193973 d!1193779)))

(declare-fun lambda!127244 () Int)

(assert (=> bs!590276 (= lambda!127244 lambda!127229)))

(assert (=> d!1193973 true))

(declare-fun lt!1433511 () Bool)

(assert (=> d!1193973 (= lt!1433511 (rulesValidInductive!2513 thiss!21717 rules!2999))))

(assert (=> d!1193973 (= lt!1433511 (forall!8363 rules!2999 lambda!127244))))

(assert (=> d!1193973 (= (rulesValid!2680 thiss!21717 rules!2999) lt!1433511)))

(declare-fun bs!590277 () Bool)

(assert (= bs!590277 d!1193973))

(assert (=> bs!590277 m!4623179))

(declare-fun m!4624011 () Bool)

(assert (=> bs!590277 m!4624011))

(assert (=> d!1193669 d!1193973))

(declare-fun d!1193983 () Bool)

(assert (=> d!1193983 (= (isEmpty!25773 lt!1433204) (not ((_ is Some!9321) lt!1433204)))))

(assert (=> d!1193649 d!1193983))

(assert (=> d!1193649 d!1193681))

(assert (=> d!1193649 d!1193683))

(assert (=> d!1193649 d!1193779))

(declare-fun b!4031469 () Bool)

(declare-fun e!2501486 () Bool)

(declare-fun e!2501483 () Bool)

(assert (=> b!4031469 (= e!2501486 e!2501483)))

(declare-fun res!1641205 () Bool)

(assert (=> b!4031469 (= res!1641205 (not (nullable!4138 (reg!12142 (regex!6908 (rule!9968 token!484))))))))

(assert (=> b!4031469 (=> (not res!1641205) (not e!2501483))))

(declare-fun b!4031470 () Bool)

(declare-fun e!2501484 () Bool)

(assert (=> b!4031470 (= e!2501486 e!2501484)))

(declare-fun c!696342 () Bool)

(assert (=> b!4031470 (= c!696342 ((_ is Union!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun b!4031471 () Bool)

(declare-fun res!1641202 () Bool)

(declare-fun e!2501482 () Bool)

(assert (=> b!4031471 (=> (not res!1641202) (not e!2501482))))

(declare-fun call!286954 () Bool)

(assert (=> b!4031471 (= res!1641202 call!286954)))

(assert (=> b!4031471 (= e!2501484 e!2501482)))

(declare-fun c!696343 () Bool)

(declare-fun call!286956 () Bool)

(declare-fun bm!286949 () Bool)

(assert (=> bm!286949 (= call!286956 (validRegex!5338 (ite c!696343 (reg!12142 (regex!6908 (rule!9968 token!484))) (ite c!696342 (regOne!24139 (regex!6908 (rule!9968 token!484))) (regOne!24138 (regex!6908 (rule!9968 token!484)))))))))

(declare-fun d!1193987 () Bool)

(declare-fun res!1641201 () Bool)

(declare-fun e!2501487 () Bool)

(assert (=> d!1193987 (=> res!1641201 e!2501487)))

(assert (=> d!1193987 (= res!1641201 ((_ is ElementMatch!11813) (regex!6908 (rule!9968 token!484))))))

(assert (=> d!1193987 (= (validRegex!5338 (regex!6908 (rule!9968 token!484))) e!2501487)))

(declare-fun b!4031472 () Bool)

(declare-fun res!1641204 () Bool)

(declare-fun e!2501488 () Bool)

(assert (=> b!4031472 (=> res!1641204 e!2501488)))

(assert (=> b!4031472 (= res!1641204 (not ((_ is Concat!18952) (regex!6908 (rule!9968 token!484)))))))

(assert (=> b!4031472 (= e!2501484 e!2501488)))

(declare-fun bm!286950 () Bool)

(declare-fun call!286955 () Bool)

(assert (=> bm!286950 (= call!286955 (validRegex!5338 (ite c!696342 (regTwo!24139 (regex!6908 (rule!9968 token!484))) (regTwo!24138 (regex!6908 (rule!9968 token!484))))))))

(declare-fun bm!286951 () Bool)

(assert (=> bm!286951 (= call!286954 call!286956)))

(declare-fun b!4031473 () Bool)

(assert (=> b!4031473 (= e!2501483 call!286956)))

(declare-fun b!4031474 () Bool)

(assert (=> b!4031474 (= e!2501487 e!2501486)))

(assert (=> b!4031474 (= c!696343 ((_ is Star!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun b!4031475 () Bool)

(assert (=> b!4031475 (= e!2501482 call!286955)))

(declare-fun b!4031476 () Bool)

(declare-fun e!2501485 () Bool)

(assert (=> b!4031476 (= e!2501488 e!2501485)))

(declare-fun res!1641203 () Bool)

(assert (=> b!4031476 (=> (not res!1641203) (not e!2501485))))

(assert (=> b!4031476 (= res!1641203 call!286954)))

(declare-fun b!4031477 () Bool)

(assert (=> b!4031477 (= e!2501485 call!286955)))

(assert (= (and d!1193987 (not res!1641201)) b!4031474))

(assert (= (and b!4031474 c!696343) b!4031469))

(assert (= (and b!4031474 (not c!696343)) b!4031470))

(assert (= (and b!4031469 res!1641205) b!4031473))

(assert (= (and b!4031470 c!696342) b!4031471))

(assert (= (and b!4031470 (not c!696342)) b!4031472))

(assert (= (and b!4031471 res!1641202) b!4031475))

(assert (= (and b!4031472 (not res!1641204)) b!4031476))

(assert (= (and b!4031476 res!1641203) b!4031477))

(assert (= (or b!4031475 b!4031477) bm!286950))

(assert (= (or b!4031471 b!4031476) bm!286951))

(assert (= (or b!4031473 bm!286951) bm!286949))

(declare-fun m!4624039 () Bool)

(assert (=> b!4031469 m!4624039))

(declare-fun m!4624041 () Bool)

(assert (=> bm!286949 m!4624041))

(declare-fun m!4624043 () Bool)

(assert (=> bm!286950 m!4624043))

(assert (=> d!1193705 d!1193987))

(declare-fun b!4031482 () Bool)

(declare-fun res!1641208 () Bool)

(declare-fun e!2501492 () Bool)

(assert (=> b!4031482 (=> (not res!1641208) (not e!2501492))))

(declare-fun lt!1433519 () Option!9322)

(assert (=> b!4031482 (= res!1641208 (= (rule!9968 (_1!24269 (get!14170 lt!1433519))) (h!48609 rules!2999)))))

(declare-fun b!4031483 () Bool)

(declare-fun e!2501491 () Option!9322)

(declare-fun lt!1433522 () tuple2!42274)

(assert (=> b!4031483 (= e!2501491 (Some!9321 (tuple2!42271 (Token!12955 (apply!10097 (transformation!6908 (h!48609 rules!2999)) (seqFromList!5125 (_1!24271 lt!1433522))) (h!48609 rules!2999) (size!32280 (seqFromList!5125 (_1!24271 lt!1433522))) (_1!24271 lt!1433522)) (_2!24271 lt!1433522))))))

(declare-fun lt!1433521 () Unit!62350)

(assert (=> b!4031483 (= lt!1433521 (longestMatchIsAcceptedByMatchOrIsEmpty!1348 (regex!6908 (h!48609 rules!2999)) lt!1432995))))

(declare-fun res!1641209 () Bool)

(assert (=> b!4031483 (= res!1641209 (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (h!48609 rules!2999)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(declare-fun e!2501494 () Bool)

(assert (=> b!4031483 (=> res!1641209 e!2501494)))

(assert (=> b!4031483 e!2501494))

(declare-fun lt!1433520 () Unit!62350)

(assert (=> b!4031483 (= lt!1433520 lt!1433521)))

(declare-fun lt!1433518 () Unit!62350)

(assert (=> b!4031483 (= lt!1433518 (lemmaSemiInverse!1895 (transformation!6908 (h!48609 rules!2999)) (seqFromList!5125 (_1!24271 lt!1433522))))))

(declare-fun b!4031484 () Bool)

(declare-fun e!2501493 () Bool)

(assert (=> b!4031484 (= e!2501493 e!2501492)))

(declare-fun res!1641210 () Bool)

(assert (=> b!4031484 (=> (not res!1641210) (not e!2501492))))

(assert (=> b!4031484 (= res!1641210 (matchR!5766 (regex!6908 (h!48609 rules!2999)) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433519))))))))

(declare-fun b!4031485 () Bool)

(declare-fun res!1641211 () Bool)

(assert (=> b!4031485 (=> (not res!1641211) (not e!2501492))))

(assert (=> b!4031485 (= res!1641211 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433519)))) (_2!24269 (get!14170 lt!1433519))) lt!1432995))))

(declare-fun b!4031486 () Bool)

(assert (=> b!4031486 (= e!2501491 None!9321)))

(declare-fun b!4031487 () Bool)

(assert (=> b!4031487 (= e!2501494 (matchR!5766 (regex!6908 (h!48609 rules!2999)) (_1!24271 (findLongestMatchInner!1375 (regex!6908 (h!48609 rules!2999)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(declare-fun d!1194007 () Bool)

(assert (=> d!1194007 e!2501493))

(declare-fun res!1641212 () Bool)

(assert (=> d!1194007 (=> res!1641212 e!2501493)))

(assert (=> d!1194007 (= res!1641212 (isEmpty!25773 lt!1433519))))

(assert (=> d!1194007 (= lt!1433519 e!2501491)))

(declare-fun c!696346 () Bool)

(assert (=> d!1194007 (= c!696346 (isEmpty!25772 (_1!24271 lt!1433522)))))

(assert (=> d!1194007 (= lt!1433522 (findLongestMatch!1288 (regex!6908 (h!48609 rules!2999)) lt!1432995))))

(assert (=> d!1194007 (ruleValid!2838 thiss!21717 (h!48609 rules!2999))))

(assert (=> d!1194007 (= (maxPrefixOneRule!2807 thiss!21717 (h!48609 rules!2999) lt!1432995) lt!1433519)))

(declare-fun b!4031488 () Bool)

(assert (=> b!4031488 (= e!2501492 (= (size!32277 (_1!24269 (get!14170 lt!1433519))) (size!32278 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433519))))))))

(declare-fun b!4031489 () Bool)

(declare-fun res!1641207 () Bool)

(assert (=> b!4031489 (=> (not res!1641207) (not e!2501492))))

(assert (=> b!4031489 (= res!1641207 (= (value!217512 (_1!24269 (get!14170 lt!1433519))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433519)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433519)))))))))

(declare-fun b!4031490 () Bool)

(declare-fun res!1641206 () Bool)

(assert (=> b!4031490 (=> (not res!1641206) (not e!2501492))))

(assert (=> b!4031490 (= res!1641206 (< (size!32278 (_2!24269 (get!14170 lt!1433519))) (size!32278 lt!1432995)))))

(assert (= (and d!1194007 c!696346) b!4031486))

(assert (= (and d!1194007 (not c!696346)) b!4031483))

(assert (= (and b!4031483 (not res!1641209)) b!4031487))

(assert (= (and d!1194007 (not res!1641212)) b!4031484))

(assert (= (and b!4031484 res!1641210) b!4031485))

(assert (= (and b!4031485 res!1641211) b!4031490))

(assert (= (and b!4031490 res!1641206) b!4031482))

(assert (= (and b!4031482 res!1641208) b!4031489))

(assert (= (and b!4031489 res!1641207) b!4031488))

(declare-fun m!4624077 () Bool)

(assert (=> b!4031489 m!4624077))

(declare-fun m!4624079 () Bool)

(assert (=> b!4031489 m!4624079))

(assert (=> b!4031489 m!4624079))

(declare-fun m!4624081 () Bool)

(assert (=> b!4031489 m!4624081))

(assert (=> b!4031484 m!4624077))

(declare-fun m!4624083 () Bool)

(assert (=> b!4031484 m!4624083))

(assert (=> b!4031484 m!4624083))

(declare-fun m!4624085 () Bool)

(assert (=> b!4031484 m!4624085))

(assert (=> b!4031484 m!4624085))

(declare-fun m!4624087 () Bool)

(assert (=> b!4031484 m!4624087))

(assert (=> b!4031482 m!4624077))

(assert (=> b!4031488 m!4624077))

(declare-fun m!4624089 () Bool)

(assert (=> b!4031488 m!4624089))

(assert (=> b!4031485 m!4624077))

(assert (=> b!4031485 m!4624083))

(assert (=> b!4031485 m!4624083))

(assert (=> b!4031485 m!4624085))

(assert (=> b!4031485 m!4624085))

(declare-fun m!4624091 () Bool)

(assert (=> b!4031485 m!4624091))

(assert (=> b!4031490 m!4624077))

(declare-fun m!4624093 () Bool)

(assert (=> b!4031490 m!4624093))

(assert (=> b!4031490 m!4622841))

(declare-fun m!4624095 () Bool)

(assert (=> b!4031483 m!4624095))

(declare-fun m!4624097 () Bool)

(assert (=> b!4031483 m!4624097))

(declare-fun m!4624099 () Bool)

(assert (=> b!4031483 m!4624099))

(assert (=> b!4031483 m!4624097))

(declare-fun m!4624101 () Bool)

(assert (=> b!4031483 m!4624101))

(declare-fun m!4624103 () Bool)

(assert (=> b!4031483 m!4624103))

(assert (=> b!4031483 m!4624097))

(assert (=> b!4031483 m!4624097))

(declare-fun m!4624107 () Bool)

(assert (=> b!4031483 m!4624107))

(assert (=> b!4031483 m!4622841))

(assert (=> b!4031483 m!4622855))

(assert (=> b!4031483 m!4622855))

(assert (=> b!4031483 m!4622841))

(declare-fun m!4624109 () Bool)

(assert (=> b!4031483 m!4624109))

(assert (=> b!4031487 m!4622855))

(assert (=> b!4031487 m!4622841))

(assert (=> b!4031487 m!4622855))

(assert (=> b!4031487 m!4622841))

(assert (=> b!4031487 m!4624109))

(declare-fun m!4624111 () Bool)

(assert (=> b!4031487 m!4624111))

(declare-fun m!4624113 () Bool)

(assert (=> d!1194007 m!4624113))

(declare-fun m!4624115 () Bool)

(assert (=> d!1194007 m!4624115))

(declare-fun m!4624117 () Bool)

(assert (=> d!1194007 m!4624117))

(assert (=> d!1194007 m!4623437))

(assert (=> bm!286869 d!1194007))

(declare-fun d!1194031 () Bool)

(declare-fun c!696348 () Bool)

(assert (=> d!1194031 (= c!696348 ((_ is Nil!43187) lt!1433211))))

(declare-fun e!2501503 () (InoxSet C!23812))

(assert (=> d!1194031 (= (content!6554 lt!1433211) e!2501503)))

(declare-fun b!4031503 () Bool)

(assert (=> b!4031503 (= e!2501503 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031504 () Bool)

(assert (=> b!4031504 (= e!2501503 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433211) true) (content!6554 (t!334152 lt!1433211))))))

(assert (= (and d!1194031 c!696348) b!4031503))

(assert (= (and d!1194031 (not c!696348)) b!4031504))

(declare-fun m!4624119 () Bool)

(assert (=> b!4031504 m!4624119))

(declare-fun m!4624121 () Bool)

(assert (=> b!4031504 m!4624121))

(assert (=> d!1193663 d!1194031))

(declare-fun d!1194033 () Bool)

(declare-fun c!696349 () Bool)

(assert (=> d!1194033 (= c!696349 ((_ is Nil!43187) lt!1433000))))

(declare-fun e!2501504 () (InoxSet C!23812))

(assert (=> d!1194033 (= (content!6554 lt!1433000) e!2501504)))

(declare-fun b!4031505 () Bool)

(assert (=> b!4031505 (= e!2501504 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031506 () Bool)

(assert (=> b!4031506 (= e!2501504 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433000) true) (content!6554 (t!334152 lt!1433000))))))

(assert (= (and d!1194033 c!696349) b!4031505))

(assert (= (and d!1194033 (not c!696349)) b!4031506))

(declare-fun m!4624123 () Bool)

(assert (=> b!4031506 m!4624123))

(assert (=> b!4031506 m!4623851))

(assert (=> d!1193663 d!1194033))

(declare-fun d!1194037 () Bool)

(declare-fun c!696350 () Bool)

(assert (=> d!1194037 (= c!696350 ((_ is Nil!43187) suffix!1299))))

(declare-fun e!2501505 () (InoxSet C!23812))

(assert (=> d!1194037 (= (content!6554 suffix!1299) e!2501505)))

(declare-fun b!4031507 () Bool)

(assert (=> b!4031507 (= e!2501505 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031508 () Bool)

(assert (=> b!4031508 (= e!2501505 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 suffix!1299) true) (content!6554 (t!334152 suffix!1299))))))

(assert (= (and d!1194037 c!696350) b!4031507))

(assert (= (and d!1194037 (not c!696350)) b!4031508))

(declare-fun m!4624125 () Bool)

(assert (=> b!4031508 m!4624125))

(declare-fun m!4624127 () Bool)

(assert (=> b!4031508 m!4624127))

(assert (=> d!1193663 d!1194037))

(declare-fun b!4031509 () Bool)

(declare-fun res!1641223 () Bool)

(declare-fun e!2501509 () Bool)

(assert (=> b!4031509 (=> res!1641223 e!2501509)))

(assert (=> b!4031509 (= res!1641223 (not (isEmpty!25772 (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))))))))

(declare-fun b!4031510 () Bool)

(declare-fun e!2501510 () Bool)

(assert (=> b!4031510 (= e!2501510 (matchR!5766 (derivativeStep!3543 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))) (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))))) (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))))))))

(declare-fun b!4031511 () Bool)

(assert (=> b!4031511 (= e!2501509 (not (= (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) (c!696125 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))))))))

(declare-fun b!4031512 () Bool)

(declare-fun res!1641227 () Bool)

(declare-fun e!2501511 () Bool)

(assert (=> b!4031512 (=> (not res!1641227) (not e!2501511))))

(declare-fun call!286957 () Bool)

(assert (=> b!4031512 (= res!1641227 (not call!286957))))

(declare-fun d!1194039 () Bool)

(declare-fun e!2501512 () Bool)

(assert (=> d!1194039 e!2501512))

(declare-fun c!696351 () Bool)

(assert (=> d!1194039 (= c!696351 ((_ is EmptyExpr!11813) (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))))))

(declare-fun lt!1433526 () Bool)

(assert (=> d!1194039 (= lt!1433526 e!2501510)))

(declare-fun c!696353 () Bool)

(assert (=> d!1194039 (= c!696353 (isEmpty!25772 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))))))

(assert (=> d!1194039 (validRegex!5338 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))

(assert (=> d!1194039 (= (matchR!5766 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) lt!1433526)))

(declare-fun b!4031513 () Bool)

(declare-fun res!1641224 () Bool)

(declare-fun e!2501506 () Bool)

(assert (=> b!4031513 (=> res!1641224 e!2501506)))

(assert (=> b!4031513 (= res!1641224 e!2501511)))

(declare-fun res!1641226 () Bool)

(assert (=> b!4031513 (=> (not res!1641226) (not e!2501511))))

(assert (=> b!4031513 (= res!1641226 lt!1433526)))

(declare-fun b!4031514 () Bool)

(declare-fun e!2501507 () Bool)

(assert (=> b!4031514 (= e!2501507 (not lt!1433526))))

(declare-fun b!4031515 () Bool)

(assert (=> b!4031515 (= e!2501512 (= lt!1433526 call!286957))))

(declare-fun b!4031516 () Bool)

(declare-fun res!1641228 () Bool)

(assert (=> b!4031516 (=> res!1641228 e!2501506)))

(assert (=> b!4031516 (= res!1641228 (not ((_ is ElementMatch!11813) (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))))

(assert (=> b!4031516 (= e!2501507 e!2501506)))

(declare-fun b!4031517 () Bool)

(assert (=> b!4031517 (= e!2501510 (nullable!4138 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))))))

(declare-fun bm!286952 () Bool)

(assert (=> bm!286952 (= call!286957 (isEmpty!25772 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))))))

(declare-fun b!4031518 () Bool)

(declare-fun e!2501508 () Bool)

(assert (=> b!4031518 (= e!2501506 e!2501508)))

(declare-fun res!1641230 () Bool)

(assert (=> b!4031518 (=> (not res!1641230) (not e!2501508))))

(assert (=> b!4031518 (= res!1641230 (not lt!1433526))))

(declare-fun b!4031519 () Bool)

(declare-fun res!1641229 () Bool)

(assert (=> b!4031519 (=> (not res!1641229) (not e!2501511))))

(assert (=> b!4031519 (= res!1641229 (isEmpty!25772 (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196)))))))))

(declare-fun b!4031520 () Bool)

(assert (=> b!4031520 (= e!2501508 e!2501509)))

(declare-fun res!1641225 () Bool)

(assert (=> b!4031520 (=> res!1641225 e!2501509)))

(assert (=> b!4031520 (= res!1641225 call!286957)))

(declare-fun b!4031521 () Bool)

(assert (=> b!4031521 (= e!2501511 (= (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433196))))) (c!696125 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))))

(declare-fun b!4031522 () Bool)

(assert (=> b!4031522 (= e!2501512 e!2501507)))

(declare-fun c!696352 () Bool)

(assert (=> b!4031522 (= c!696352 ((_ is EmptyLang!11813) (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))))))

(assert (= (and d!1194039 c!696353) b!4031517))

(assert (= (and d!1194039 (not c!696353)) b!4031510))

(assert (= (and d!1194039 c!696351) b!4031515))

(assert (= (and d!1194039 (not c!696351)) b!4031522))

(assert (= (and b!4031522 c!696352) b!4031514))

(assert (= (and b!4031522 (not c!696352)) b!4031516))

(assert (= (and b!4031516 (not res!1641228)) b!4031513))

(assert (= (and b!4031513 res!1641226) b!4031512))

(assert (= (and b!4031512 res!1641227) b!4031519))

(assert (= (and b!4031519 res!1641229) b!4031521))

(assert (= (and b!4031513 (not res!1641224)) b!4031518))

(assert (= (and b!4031518 res!1641230) b!4031520))

(assert (= (and b!4031520 (not res!1641225)) b!4031509))

(assert (= (and b!4031509 (not res!1641223)) b!4031511))

(assert (= (or b!4031515 b!4031512 b!4031520) bm!286952))

(assert (=> d!1194039 m!4623165))

(declare-fun m!4624129 () Bool)

(assert (=> d!1194039 m!4624129))

(declare-fun m!4624131 () Bool)

(assert (=> d!1194039 m!4624131))

(assert (=> b!4031521 m!4623165))

(declare-fun m!4624133 () Bool)

(assert (=> b!4031521 m!4624133))

(declare-fun m!4624135 () Bool)

(assert (=> b!4031517 m!4624135))

(assert (=> b!4031510 m!4623165))

(assert (=> b!4031510 m!4624133))

(assert (=> b!4031510 m!4624133))

(declare-fun m!4624137 () Bool)

(assert (=> b!4031510 m!4624137))

(assert (=> b!4031510 m!4623165))

(declare-fun m!4624139 () Bool)

(assert (=> b!4031510 m!4624139))

(assert (=> b!4031510 m!4624137))

(assert (=> b!4031510 m!4624139))

(declare-fun m!4624141 () Bool)

(assert (=> b!4031510 m!4624141))

(assert (=> b!4031511 m!4623165))

(assert (=> b!4031511 m!4624133))

(assert (=> bm!286952 m!4623165))

(assert (=> bm!286952 m!4624129))

(assert (=> b!4031519 m!4623165))

(assert (=> b!4031519 m!4624139))

(assert (=> b!4031519 m!4624139))

(declare-fun m!4624143 () Bool)

(assert (=> b!4031519 m!4624143))

(assert (=> b!4031509 m!4623165))

(assert (=> b!4031509 m!4624139))

(assert (=> b!4031509 m!4624139))

(assert (=> b!4031509 m!4624143))

(assert (=> b!4030882 d!1194039))

(assert (=> b!4030882 d!1193761))

(assert (=> b!4030882 d!1193905))

(assert (=> b!4030882 d!1193907))

(declare-fun d!1194041 () Bool)

(declare-fun lt!1433529 () List!43311)

(assert (=> d!1194041 (= (++!11310 (t!334152 lt!1433006) lt!1433529) (tail!6273 lt!1432995))))

(declare-fun e!2501517 () List!43311)

(assert (=> d!1194041 (= lt!1433529 e!2501517)))

(declare-fun c!696354 () Bool)

(assert (=> d!1194041 (= c!696354 ((_ is Cons!43187) (t!334152 lt!1433006)))))

(assert (=> d!1194041 (>= (size!32278 (tail!6273 lt!1432995)) (size!32278 (t!334152 lt!1433006)))))

(assert (=> d!1194041 (= (getSuffix!2412 (tail!6273 lt!1432995) (t!334152 lt!1433006)) lt!1433529)))

(declare-fun b!4031527 () Bool)

(assert (=> b!4031527 (= e!2501517 (getSuffix!2412 (tail!6273 (tail!6273 lt!1432995)) (t!334152 (t!334152 lt!1433006))))))

(declare-fun b!4031528 () Bool)

(assert (=> b!4031528 (= e!2501517 (tail!6273 lt!1432995))))

(assert (= (and d!1194041 c!696354) b!4031527))

(assert (= (and d!1194041 (not c!696354)) b!4031528))

(declare-fun m!4624145 () Bool)

(assert (=> d!1194041 m!4624145))

(assert (=> d!1194041 m!4623099))

(declare-fun m!4624147 () Bool)

(assert (=> d!1194041 m!4624147))

(assert (=> d!1194041 m!4623329))

(assert (=> b!4031527 m!4623099))

(declare-fun m!4624149 () Bool)

(assert (=> b!4031527 m!4624149))

(assert (=> b!4031527 m!4624149))

(declare-fun m!4624151 () Bool)

(assert (=> b!4031527 m!4624151))

(assert (=> b!4030945 d!1194041))

(declare-fun d!1194043 () Bool)

(assert (=> d!1194043 (= (tail!6273 lt!1432995) (t!334152 lt!1432995))))

(assert (=> b!4030945 d!1194043))

(declare-fun d!1194045 () Bool)

(declare-fun e!2501518 () Bool)

(assert (=> d!1194045 e!2501518))

(declare-fun res!1641236 () Bool)

(assert (=> d!1194045 (=> (not res!1641236) (not e!2501518))))

(declare-fun lt!1433530 () List!43311)

(assert (=> d!1194045 (= res!1641236 (= (content!6554 lt!1433530) ((_ map or) (content!6554 (t!334152 lt!1433006)) (content!6554 lt!1433014))))))

(declare-fun e!2501519 () List!43311)

(assert (=> d!1194045 (= lt!1433530 e!2501519)))

(declare-fun c!696355 () Bool)

(assert (=> d!1194045 (= c!696355 ((_ is Nil!43187) (t!334152 lt!1433006)))))

(assert (=> d!1194045 (= (++!11310 (t!334152 lt!1433006) lt!1433014) lt!1433530)))

(declare-fun b!4031530 () Bool)

(assert (=> b!4031530 (= e!2501519 (Cons!43187 (h!48607 (t!334152 lt!1433006)) (++!11310 (t!334152 (t!334152 lt!1433006)) lt!1433014)))))

(declare-fun b!4031529 () Bool)

(assert (=> b!4031529 (= e!2501519 lt!1433014)))

(declare-fun b!4031532 () Bool)

(assert (=> b!4031532 (= e!2501518 (or (not (= lt!1433014 Nil!43187)) (= lt!1433530 (t!334152 lt!1433006))))))

(declare-fun b!4031531 () Bool)

(declare-fun res!1641235 () Bool)

(assert (=> b!4031531 (=> (not res!1641235) (not e!2501518))))

(assert (=> b!4031531 (= res!1641235 (= (size!32278 lt!1433530) (+ (size!32278 (t!334152 lt!1433006)) (size!32278 lt!1433014))))))

(assert (= (and d!1194045 c!696355) b!4031529))

(assert (= (and d!1194045 (not c!696355)) b!4031530))

(assert (= (and d!1194045 res!1641236) b!4031531))

(assert (= (and b!4031531 res!1641235) b!4031532))

(declare-fun m!4624153 () Bool)

(assert (=> d!1194045 m!4624153))

(assert (=> d!1194045 m!4623689))

(assert (=> d!1194045 m!4622621))

(declare-fun m!4624155 () Bool)

(assert (=> b!4031530 m!4624155))

(declare-fun m!4624157 () Bool)

(assert (=> b!4031531 m!4624157))

(assert (=> b!4031531 m!4623329))

(assert (=> b!4031531 m!4622627))

(assert (=> b!4030422 d!1194045))

(declare-fun b!4031534 () Bool)

(declare-fun res!1641237 () Bool)

(declare-fun e!2501521 () Bool)

(assert (=> b!4031534 (=> (not res!1641237) (not e!2501521))))

(assert (=> b!4031534 (= res!1641237 (= (head!8541 lt!1433006) (head!8541 (++!11310 lt!1433006 lt!1433005))))))

(declare-fun b!4031536 () Bool)

(declare-fun e!2501520 () Bool)

(assert (=> b!4031536 (= e!2501520 (>= (size!32278 (++!11310 lt!1433006 lt!1433005)) (size!32278 lt!1433006)))))

(declare-fun b!4031535 () Bool)

(assert (=> b!4031535 (= e!2501521 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 (++!11310 lt!1433006 lt!1433005))))))

(declare-fun b!4031533 () Bool)

(declare-fun e!2501522 () Bool)

(assert (=> b!4031533 (= e!2501522 e!2501521)))

(declare-fun res!1641239 () Bool)

(assert (=> b!4031533 (=> (not res!1641239) (not e!2501521))))

(assert (=> b!4031533 (= res!1641239 (not ((_ is Nil!43187) (++!11310 lt!1433006 lt!1433005))))))

(declare-fun d!1194047 () Bool)

(assert (=> d!1194047 e!2501520))

(declare-fun res!1641240 () Bool)

(assert (=> d!1194047 (=> res!1641240 e!2501520)))

(declare-fun lt!1433531 () Bool)

(assert (=> d!1194047 (= res!1641240 (not lt!1433531))))

(assert (=> d!1194047 (= lt!1433531 e!2501522)))

(declare-fun res!1641238 () Bool)

(assert (=> d!1194047 (=> res!1641238 e!2501522)))

(assert (=> d!1194047 (= res!1641238 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1194047 (= (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 lt!1433005)) lt!1433531)))

(assert (= (and d!1194047 (not res!1641238)) b!4031533))

(assert (= (and b!4031533 res!1641239) b!4031534))

(assert (= (and b!4031534 res!1641237) b!4031535))

(assert (= (and d!1194047 (not res!1641240)) b!4031536))

(assert (=> b!4031534 m!4622639))

(assert (=> b!4031534 m!4622541))

(declare-fun m!4624159 () Bool)

(assert (=> b!4031534 m!4624159))

(assert (=> b!4031536 m!4622541))

(declare-fun m!4624161 () Bool)

(assert (=> b!4031536 m!4624161))

(assert (=> b!4031536 m!4622587))

(assert (=> b!4031535 m!4622643))

(assert (=> b!4031535 m!4622541))

(declare-fun m!4624163 () Bool)

(assert (=> b!4031535 m!4624163))

(assert (=> b!4031535 m!4622643))

(assert (=> b!4031535 m!4624163))

(declare-fun m!4624165 () Bool)

(assert (=> b!4031535 m!4624165))

(assert (=> d!1193551 d!1194047))

(assert (=> d!1193551 d!1193661))

(declare-fun d!1194049 () Bool)

(assert (=> d!1194049 (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 lt!1433005))))

(assert (=> d!1194049 true))

(declare-fun _$46!1718 () Unit!62350)

(assert (=> d!1194049 (= (choose!24383 lt!1433006 lt!1433005) _$46!1718)))

(declare-fun bs!590285 () Bool)

(assert (= bs!590285 d!1194049))

(assert (=> bs!590285 m!4622541))

(assert (=> bs!590285 m!4622541))

(assert (=> bs!590285 m!4622941))

(assert (=> d!1193551 d!1194049))

(declare-fun b!4031540 () Bool)

(declare-fun res!1641243 () Bool)

(declare-fun e!2501526 () Bool)

(assert (=> b!4031540 (=> (not res!1641243) (not e!2501526))))

(assert (=> b!4031540 (= res!1641243 (= (head!8541 (tail!6273 lt!1433006)) (head!8541 (tail!6273 lt!1432995))))))

(declare-fun b!4031542 () Bool)

(declare-fun e!2501525 () Bool)

(assert (=> b!4031542 (= e!2501525 (>= (size!32278 (tail!6273 lt!1432995)) (size!32278 (tail!6273 lt!1433006))))))

(declare-fun b!4031541 () Bool)

(assert (=> b!4031541 (= e!2501526 (isPrefix!3995 (tail!6273 (tail!6273 lt!1433006)) (tail!6273 (tail!6273 lt!1432995))))))

(declare-fun b!4031539 () Bool)

(declare-fun e!2501527 () Bool)

(assert (=> b!4031539 (= e!2501527 e!2501526)))

(declare-fun res!1641245 () Bool)

(assert (=> b!4031539 (=> (not res!1641245) (not e!2501526))))

(assert (=> b!4031539 (= res!1641245 (not ((_ is Nil!43187) (tail!6273 lt!1432995))))))

(declare-fun d!1194051 () Bool)

(assert (=> d!1194051 e!2501525))

(declare-fun res!1641246 () Bool)

(assert (=> d!1194051 (=> res!1641246 e!2501525)))

(declare-fun lt!1433533 () Bool)

(assert (=> d!1194051 (= res!1641246 (not lt!1433533))))

(assert (=> d!1194051 (= lt!1433533 e!2501527)))

(declare-fun res!1641244 () Bool)

(assert (=> d!1194051 (=> res!1641244 e!2501527)))

(assert (=> d!1194051 (= res!1641244 ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> d!1194051 (= (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1432995)) lt!1433533)))

(assert (= (and d!1194051 (not res!1641244)) b!4031539))

(assert (= (and b!4031539 res!1641245) b!4031540))

(assert (= (and b!4031540 res!1641243) b!4031541))

(assert (= (and d!1194051 (not res!1641246)) b!4031542))

(assert (=> b!4031540 m!4622643))

(assert (=> b!4031540 m!4623669))

(assert (=> b!4031540 m!4623099))

(declare-fun m!4624171 () Bool)

(assert (=> b!4031540 m!4624171))

(assert (=> b!4031542 m!4623099))

(assert (=> b!4031542 m!4624147))

(assert (=> b!4031542 m!4622643))

(assert (=> b!4031542 m!4623675))

(assert (=> b!4031541 m!4622643))

(assert (=> b!4031541 m!4623677))

(assert (=> b!4031541 m!4623099))

(assert (=> b!4031541 m!4624149))

(assert (=> b!4031541 m!4623677))

(assert (=> b!4031541 m!4624149))

(declare-fun m!4624173 () Bool)

(assert (=> b!4031541 m!4624173))

(assert (=> b!4030796 d!1194051))

(assert (=> b!4030796 d!1193823))

(assert (=> b!4030796 d!1194043))

(declare-fun d!1194055 () Bool)

(declare-fun e!2501531 () Bool)

(assert (=> d!1194055 e!2501531))

(declare-fun res!1641252 () Bool)

(assert (=> d!1194055 (=> (not res!1641252) (not e!2501531))))

(declare-fun lt!1433535 () List!43311)

(assert (=> d!1194055 (= res!1641252 (= (content!6554 lt!1433535) ((_ map or) (content!6554 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) (content!6554 (_2!24269 (get!14170 lt!1433204))))))))

(declare-fun e!2501532 () List!43311)

(assert (=> d!1194055 (= lt!1433535 e!2501532)))

(declare-fun c!696356 () Bool)

(assert (=> d!1194055 (= c!696356 ((_ is Nil!43187) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))))))

(assert (=> d!1194055 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))) (_2!24269 (get!14170 lt!1433204))) lt!1433535)))

(declare-fun b!4031548 () Bool)

(assert (=> b!4031548 (= e!2501532 (Cons!43187 (h!48607 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) (++!11310 (t!334152 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) (_2!24269 (get!14170 lt!1433204)))))))

(declare-fun b!4031547 () Bool)

(assert (=> b!4031547 (= e!2501532 (_2!24269 (get!14170 lt!1433204)))))

(declare-fun b!4031550 () Bool)

(assert (=> b!4031550 (= e!2501531 (or (not (= (_2!24269 (get!14170 lt!1433204)) Nil!43187)) (= lt!1433535 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))))))))

(declare-fun b!4031549 () Bool)

(declare-fun res!1641251 () Bool)

(assert (=> b!4031549 (=> (not res!1641251) (not e!2501531))))

(assert (=> b!4031549 (= res!1641251 (= (size!32278 lt!1433535) (+ (size!32278 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) (size!32278 (_2!24269 (get!14170 lt!1433204))))))))

(assert (= (and d!1194055 c!696356) b!4031547))

(assert (= (and d!1194055 (not c!696356)) b!4031548))

(assert (= (and d!1194055 res!1641252) b!4031549))

(assert (= (and b!4031549 res!1641251) b!4031550))

(declare-fun m!4624187 () Bool)

(assert (=> d!1194055 m!4624187))

(assert (=> d!1194055 m!4623211))

(declare-fun m!4624189 () Bool)

(assert (=> d!1194055 m!4624189))

(declare-fun m!4624191 () Bool)

(assert (=> d!1194055 m!4624191))

(declare-fun m!4624193 () Bool)

(assert (=> b!4031548 m!4624193))

(declare-fun m!4624195 () Bool)

(assert (=> b!4031549 m!4624195))

(assert (=> b!4031549 m!4623211))

(declare-fun m!4624197 () Bool)

(assert (=> b!4031549 m!4624197))

(assert (=> b!4031549 m!4623217))

(assert (=> b!4030901 d!1194055))

(declare-fun d!1194063 () Bool)

(assert (=> d!1194063 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))) (list!16068 (c!696124 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))))))

(declare-fun bs!590286 () Bool)

(assert (= bs!590286 d!1194063))

(declare-fun m!4624199 () Bool)

(assert (=> bs!590286 m!4624199))

(assert (=> b!4030901 d!1194063))

(declare-fun d!1194065 () Bool)

(declare-fun lt!1433537 () BalanceConc!25832)

(assert (=> d!1194065 (= (list!16066 lt!1433537) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204))))))

(assert (=> d!1194065 (= lt!1433537 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))) (value!217512 (_1!24269 (get!14170 lt!1433204)))))))

(assert (=> d!1194065 (= (charsOf!4724 (_1!24269 (get!14170 lt!1433204))) lt!1433537)))

(declare-fun b_lambda!117603 () Bool)

(assert (=> (not b_lambda!117603) (not d!1194065)))

(declare-fun t!334224 () Bool)

(declare-fun tb!242151 () Bool)

(assert (=> (and b!4030388 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334224) tb!242151))

(declare-fun b!4031567 () Bool)

(declare-fun e!2501541 () Bool)

(declare-fun tp!1225169 () Bool)

(assert (=> b!4031567 (= e!2501541 (and (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))) (value!217512 (_1!24269 (get!14170 lt!1433204)))))) tp!1225169))))

(declare-fun result!293532 () Bool)

(assert (=> tb!242151 (= result!293532 (and (inv!57697 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))) (value!217512 (_1!24269 (get!14170 lt!1433204))))) e!2501541))))

(assert (= tb!242151 b!4031567))

(declare-fun m!4624203 () Bool)

(assert (=> b!4031567 m!4624203))

(declare-fun m!4624205 () Bool)

(assert (=> tb!242151 m!4624205))

(assert (=> d!1194065 t!334224))

(declare-fun b_and!309807 () Bool)

(assert (= b_and!309783 (and (=> t!334224 result!293532) b_and!309807)))

(declare-fun tb!242153 () Bool)

(declare-fun t!334226 () Bool)

(assert (=> (and b!4030385 (= (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334226) tb!242153))

(declare-fun result!293534 () Bool)

(assert (= result!293534 result!293532))

(assert (=> d!1194065 t!334226))

(declare-fun b_and!309809 () Bool)

(assert (= b_and!309785 (and (=> t!334226 result!293534) b_and!309809)))

(declare-fun tb!242155 () Bool)

(declare-fun t!334228 () Bool)

(assert (=> (and b!4030992 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334228) tb!242155))

(declare-fun result!293536 () Bool)

(assert (= result!293536 result!293532))

(assert (=> d!1194065 t!334228))

(declare-fun b_and!309811 () Bool)

(assert (= b_and!309787 (and (=> t!334228 result!293536) b_and!309811)))

(declare-fun m!4624207 () Bool)

(assert (=> d!1194065 m!4624207))

(declare-fun m!4624209 () Bool)

(assert (=> d!1194065 m!4624209))

(assert (=> b!4030901 d!1194065))

(assert (=> b!4030901 d!1193853))

(declare-fun d!1194069 () Bool)

(declare-fun lt!1433539 () Int)

(assert (=> d!1194069 (>= lt!1433539 0)))

(declare-fun e!2501542 () Int)

(assert (=> d!1194069 (= lt!1433539 e!2501542)))

(declare-fun c!696361 () Bool)

(assert (=> d!1194069 (= c!696361 ((_ is Nil!43187) lt!1433008))))

(assert (=> d!1194069 (= (size!32278 lt!1433008) lt!1433539)))

(declare-fun b!4031568 () Bool)

(assert (=> b!4031568 (= e!2501542 0)))

(declare-fun b!4031569 () Bool)

(assert (=> b!4031569 (= e!2501542 (+ 1 (size!32278 (t!334152 lt!1433008))))))

(assert (= (and d!1194069 c!696361) b!4031568))

(assert (= (and d!1194069 (not c!696361)) b!4031569))

(declare-fun m!4624211 () Bool)

(assert (=> b!4031569 m!4624211))

(assert (=> b!4030801 d!1194069))

(assert (=> b!4030801 d!1193691))

(declare-fun d!1194071 () Bool)

(declare-fun e!2501543 () Bool)

(assert (=> d!1194071 e!2501543))

(declare-fun res!1641262 () Bool)

(assert (=> d!1194071 (=> (not res!1641262) (not e!2501543))))

(declare-fun lt!1433540 () List!43311)

(assert (=> d!1194071 (= res!1641262 (= (content!6554 lt!1433540) ((_ map or) (content!6554 lt!1433006) (content!6554 lt!1433219))))))

(declare-fun e!2501544 () List!43311)

(assert (=> d!1194071 (= lt!1433540 e!2501544)))

(declare-fun c!696362 () Bool)

(assert (=> d!1194071 (= c!696362 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1194071 (= (++!11310 lt!1433006 lt!1433219) lt!1433540)))

(declare-fun b!4031571 () Bool)

(assert (=> b!4031571 (= e!2501544 (Cons!43187 (h!48607 lt!1433006) (++!11310 (t!334152 lt!1433006) lt!1433219)))))

(declare-fun b!4031570 () Bool)

(assert (=> b!4031570 (= e!2501544 lt!1433219)))

(declare-fun b!4031573 () Bool)

(assert (=> b!4031573 (= e!2501543 (or (not (= lt!1433219 Nil!43187)) (= lt!1433540 lt!1433006)))))

(declare-fun b!4031572 () Bool)

(declare-fun res!1641261 () Bool)

(assert (=> b!4031572 (=> (not res!1641261) (not e!2501543))))

(assert (=> b!4031572 (= res!1641261 (= (size!32278 lt!1433540) (+ (size!32278 lt!1433006) (size!32278 lt!1433219))))))

(assert (= (and d!1194071 c!696362) b!4031570))

(assert (= (and d!1194071 (not c!696362)) b!4031571))

(assert (= (and d!1194071 res!1641262) b!4031572))

(assert (= (and b!4031572 res!1641261) b!4031573))

(declare-fun m!4624223 () Bool)

(assert (=> d!1194071 m!4624223))

(assert (=> d!1194071 m!4622619))

(declare-fun m!4624225 () Bool)

(assert (=> d!1194071 m!4624225))

(declare-fun m!4624227 () Bool)

(assert (=> b!4031571 m!4624227))

(declare-fun m!4624229 () Bool)

(assert (=> b!4031572 m!4624229))

(assert (=> b!4031572 m!4622587))

(declare-fun m!4624231 () Bool)

(assert (=> b!4031572 m!4624231))

(assert (=> d!1193679 d!1194071))

(assert (=> d!1193679 d!1193753))

(assert (=> d!1193679 d!1193691))

(assert (=> b!4030494 d!1193653))

(assert (=> b!4030494 d!1193655))

(assert (=> b!4030948 d!1193889))

(assert (=> b!4030759 d!1193791))

(declare-fun d!1194073 () Bool)

(declare-fun c!696363 () Bool)

(assert (=> d!1194073 (= c!696363 ((_ is Nil!43187) lt!1433230))))

(declare-fun e!2501545 () (InoxSet C!23812))

(assert (=> d!1194073 (= (content!6554 lt!1433230) e!2501545)))

(declare-fun b!4031574 () Bool)

(assert (=> b!4031574 (= e!2501545 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031575 () Bool)

(assert (=> b!4031575 (= e!2501545 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433230) true) (content!6554 (t!334152 lt!1433230))))))

(assert (= (and d!1194073 c!696363) b!4031574))

(assert (= (and d!1194073 (not c!696363)) b!4031575))

(declare-fun m!4624233 () Bool)

(assert (=> b!4031575 m!4624233))

(declare-fun m!4624235 () Bool)

(assert (=> b!4031575 m!4624235))

(assert (=> d!1193701 d!1194073))

(assert (=> d!1193701 d!1193879))

(declare-fun d!1194077 () Bool)

(declare-fun c!696364 () Bool)

(assert (=> d!1194077 (= c!696364 ((_ is Nil!43187) suffixResult!105))))

(declare-fun e!2501546 () (InoxSet C!23812))

(assert (=> d!1194077 (= (content!6554 suffixResult!105) e!2501546)))

(declare-fun b!4031576 () Bool)

(assert (=> b!4031576 (= e!2501546 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031577 () Bool)

(assert (=> b!4031577 (= e!2501546 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 suffixResult!105) true) (content!6554 (t!334152 suffixResult!105))))))

(assert (= (and d!1194077 c!696364) b!4031576))

(assert (= (and d!1194077 (not c!696364)) b!4031577))

(declare-fun m!4624237 () Bool)

(assert (=> b!4031577 m!4624237))

(declare-fun m!4624239 () Bool)

(assert (=> b!4031577 m!4624239))

(assert (=> d!1193701 d!1194077))

(declare-fun d!1194079 () Bool)

(declare-fun lt!1433541 () Int)

(assert (=> d!1194079 (>= lt!1433541 0)))

(declare-fun e!2501547 () Int)

(assert (=> d!1194079 (= lt!1433541 e!2501547)))

(declare-fun c!696365 () Bool)

(assert (=> d!1194079 (= c!696365 ((_ is Nil!43187) lt!1433218))))

(assert (=> d!1194079 (= (size!32278 lt!1433218) lt!1433541)))

(declare-fun b!4031578 () Bool)

(assert (=> b!4031578 (= e!2501547 0)))

(declare-fun b!4031579 () Bool)

(assert (=> b!4031579 (= e!2501547 (+ 1 (size!32278 (t!334152 lt!1433218))))))

(assert (= (and d!1194079 c!696365) b!4031578))

(assert (= (and d!1194079 (not c!696365)) b!4031579))

(declare-fun m!4624241 () Bool)

(assert (=> b!4031579 m!4624241))

(assert (=> b!4030943 d!1194079))

(assert (=> b!4030943 d!1193691))

(declare-fun d!1194081 () Bool)

(declare-fun lt!1433542 () Int)

(assert (=> d!1194081 (>= lt!1433542 0)))

(declare-fun e!2501548 () Int)

(assert (=> d!1194081 (= lt!1433542 e!2501548)))

(declare-fun c!696366 () Bool)

(assert (=> d!1194081 (= c!696366 ((_ is Nil!43187) lt!1433001))))

(assert (=> d!1194081 (= (size!32278 lt!1433001) lt!1433542)))

(declare-fun b!4031580 () Bool)

(assert (=> b!4031580 (= e!2501548 0)))

(declare-fun b!4031581 () Bool)

(assert (=> b!4031581 (= e!2501548 (+ 1 (size!32278 (t!334152 lt!1433001))))))

(assert (= (and d!1194081 c!696366) b!4031580))

(assert (= (and d!1194081 (not c!696366)) b!4031581))

(declare-fun m!4624243 () Bool)

(assert (=> b!4031581 m!4624243))

(assert (=> b!4030943 d!1194081))

(declare-fun d!1194083 () Bool)

(declare-fun lt!1433543 () Int)

(assert (=> d!1194083 (>= lt!1433543 0)))

(declare-fun e!2501549 () Int)

(assert (=> d!1194083 (= lt!1433543 e!2501549)))

(declare-fun c!696367 () Bool)

(assert (=> d!1194083 (= c!696367 ((_ is Nil!43187) lt!1433007))))

(assert (=> d!1194083 (= (size!32278 lt!1433007) lt!1433543)))

(declare-fun b!4031582 () Bool)

(assert (=> b!4031582 (= e!2501549 0)))

(declare-fun b!4031583 () Bool)

(assert (=> b!4031583 (= e!2501549 (+ 1 (size!32278 (t!334152 lt!1433007))))))

(assert (= (and d!1194083 c!696367) b!4031582))

(assert (= (and d!1194083 (not c!696367)) b!4031583))

(declare-fun m!4624245 () Bool)

(assert (=> b!4031583 m!4624245))

(assert (=> b!4030680 d!1194083))

(assert (=> b!4030680 d!1193691))

(declare-fun b!4031585 () Bool)

(declare-fun res!1641263 () Bool)

(declare-fun e!2501551 () Bool)

(assert (=> b!4031585 (=> (not res!1641263) (not e!2501551))))

(assert (=> b!4031585 (= res!1641263 (= (head!8541 (tail!6273 prefix!494)) (head!8541 (tail!6273 lt!1432995))))))

(declare-fun b!4031587 () Bool)

(declare-fun e!2501550 () Bool)

(assert (=> b!4031587 (= e!2501550 (>= (size!32278 (tail!6273 lt!1432995)) (size!32278 (tail!6273 prefix!494))))))

(declare-fun b!4031586 () Bool)

(assert (=> b!4031586 (= e!2501551 (isPrefix!3995 (tail!6273 (tail!6273 prefix!494)) (tail!6273 (tail!6273 lt!1432995))))))

(declare-fun b!4031584 () Bool)

(declare-fun e!2501552 () Bool)

(assert (=> b!4031584 (= e!2501552 e!2501551)))

(declare-fun res!1641265 () Bool)

(assert (=> b!4031584 (=> (not res!1641265) (not e!2501551))))

(assert (=> b!4031584 (= res!1641265 (not ((_ is Nil!43187) (tail!6273 lt!1432995))))))

(declare-fun d!1194085 () Bool)

(assert (=> d!1194085 e!2501550))

(declare-fun res!1641266 () Bool)

(assert (=> d!1194085 (=> res!1641266 e!2501550)))

(declare-fun lt!1433544 () Bool)

(assert (=> d!1194085 (= res!1641266 (not lt!1433544))))

(assert (=> d!1194085 (= lt!1433544 e!2501552)))

(declare-fun res!1641264 () Bool)

(assert (=> d!1194085 (=> res!1641264 e!2501552)))

(assert (=> d!1194085 (= res!1641264 ((_ is Nil!43187) (tail!6273 prefix!494)))))

(assert (=> d!1194085 (= (isPrefix!3995 (tail!6273 prefix!494) (tail!6273 lt!1432995)) lt!1433544)))

(assert (= (and d!1194085 (not res!1641264)) b!4031584))

(assert (= (and b!4031584 res!1641265) b!4031585))

(assert (= (and b!4031585 res!1641263) b!4031586))

(assert (= (and d!1194085 (not res!1641266)) b!4031587))

(assert (=> b!4031585 m!4622631))

(declare-fun m!4624247 () Bool)

(assert (=> b!4031585 m!4624247))

(assert (=> b!4031585 m!4623099))

(assert (=> b!4031585 m!4624171))

(assert (=> b!4031587 m!4623099))

(assert (=> b!4031587 m!4624147))

(assert (=> b!4031587 m!4622631))

(declare-fun m!4624249 () Bool)

(assert (=> b!4031587 m!4624249))

(assert (=> b!4031586 m!4622631))

(declare-fun m!4624251 () Bool)

(assert (=> b!4031586 m!4624251))

(assert (=> b!4031586 m!4623099))

(assert (=> b!4031586 m!4624149))

(assert (=> b!4031586 m!4624251))

(assert (=> b!4031586 m!4624149))

(declare-fun m!4624253 () Bool)

(assert (=> b!4031586 m!4624253))

(assert (=> b!4030804 d!1194085))

(declare-fun d!1194087 () Bool)

(assert (=> d!1194087 (= (tail!6273 prefix!494) (t!334152 prefix!494))))

(assert (=> b!4030804 d!1194087))

(assert (=> b!4030804 d!1194043))

(declare-fun b!4031593 () Bool)

(declare-fun res!1641271 () Bool)

(declare-fun e!2501558 () Bool)

(assert (=> b!4031593 (=> (not res!1641271) (not e!2501558))))

(assert (=> b!4031593 (= res!1641271 (= (head!8541 lt!1433006) (head!8541 (++!11310 lt!1433006 suffixResult!105))))))

(declare-fun b!4031595 () Bool)

(declare-fun e!2501557 () Bool)

(assert (=> b!4031595 (= e!2501557 (>= (size!32278 (++!11310 lt!1433006 suffixResult!105)) (size!32278 lt!1433006)))))

(declare-fun b!4031594 () Bool)

(assert (=> b!4031594 (= e!2501558 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 (++!11310 lt!1433006 suffixResult!105))))))

(declare-fun b!4031592 () Bool)

(declare-fun e!2501559 () Bool)

(assert (=> b!4031592 (= e!2501559 e!2501558)))

(declare-fun res!1641273 () Bool)

(assert (=> b!4031592 (=> (not res!1641273) (not e!2501558))))

(assert (=> b!4031592 (= res!1641273 (not ((_ is Nil!43187) (++!11310 lt!1433006 suffixResult!105))))))

(declare-fun d!1194089 () Bool)

(assert (=> d!1194089 e!2501557))

(declare-fun res!1641274 () Bool)

(assert (=> d!1194089 (=> res!1641274 e!2501557)))

(declare-fun lt!1433545 () Bool)

(assert (=> d!1194089 (= res!1641274 (not lt!1433545))))

(assert (=> d!1194089 (= lt!1433545 e!2501559)))

(declare-fun res!1641272 () Bool)

(assert (=> d!1194089 (=> res!1641272 e!2501559)))

(assert (=> d!1194089 (= res!1641272 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1194089 (= (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 suffixResult!105)) lt!1433545)))

(assert (= (and d!1194089 (not res!1641272)) b!4031592))

(assert (= (and b!4031592 res!1641273) b!4031593))

(assert (= (and b!4031593 res!1641271) b!4031594))

(assert (= (and d!1194089 (not res!1641274)) b!4031595))

(assert (=> b!4031593 m!4622639))

(assert (=> b!4031593 m!4622515))

(declare-fun m!4624255 () Bool)

(assert (=> b!4031593 m!4624255))

(assert (=> b!4031595 m!4622515))

(declare-fun m!4624257 () Bool)

(assert (=> b!4031595 m!4624257))

(assert (=> b!4031595 m!4622587))

(assert (=> b!4031594 m!4622643))

(assert (=> b!4031594 m!4622515))

(declare-fun m!4624259 () Bool)

(assert (=> b!4031594 m!4624259))

(assert (=> b!4031594 m!4622643))

(assert (=> b!4031594 m!4624259))

(declare-fun m!4624261 () Bool)

(assert (=> b!4031594 m!4624261))

(assert (=> d!1193619 d!1194089))

(assert (=> d!1193619 d!1193701))

(declare-fun d!1194091 () Bool)

(assert (=> d!1194091 (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 suffixResult!105))))

(assert (=> d!1194091 true))

(declare-fun _$46!1719 () Unit!62350)

(assert (=> d!1194091 (= (choose!24383 lt!1433006 suffixResult!105) _$46!1719)))

(declare-fun bs!590288 () Bool)

(assert (= bs!590288 d!1194091))

(assert (=> bs!590288 m!4622515))

(assert (=> bs!590288 m!4622515))

(assert (=> bs!590288 m!4623123))

(assert (=> d!1193619 d!1194091))

(declare-fun bs!590289 () Bool)

(declare-fun d!1194093 () Bool)

(assert (= bs!590289 (and d!1194093 d!1193733)))

(declare-fun lambda!127252 () Int)

(assert (=> bs!590289 (= (and (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) (= lambda!127252 lambda!127226))))

(assert (=> d!1194093 true))

(assert (=> d!1194093 (< (dynLambda!18299 order!22575 (toChars!9291 (transformation!6908 (h!48609 rules!2999)))) (dynLambda!18300 order!22577 lambda!127252))))

(assert (=> d!1194093 true))

(assert (=> d!1194093 (< (dynLambda!18301 order!22579 (toValue!9432 (transformation!6908 (h!48609 rules!2999)))) (dynLambda!18300 order!22577 lambda!127252))))

(assert (=> d!1194093 (= (semiInverseModEq!2946 (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (h!48609 rules!2999)))) (Forall!1482 lambda!127252))))

(declare-fun bs!590290 () Bool)

(assert (= bs!590290 d!1194093))

(declare-fun m!4624267 () Bool)

(assert (=> bs!590290 m!4624267))

(assert (=> d!1193689 d!1194093))

(declare-fun d!1194097 () Bool)

(declare-fun lt!1433547 () Int)

(assert (=> d!1194097 (>= lt!1433547 0)))

(declare-fun e!2501563 () Int)

(assert (=> d!1194097 (= lt!1433547 e!2501563)))

(declare-fun c!696369 () Bool)

(assert (=> d!1194097 (= c!696369 ((_ is Nil!43187) (t!334152 suffix!1299)))))

(assert (=> d!1194097 (= (size!32278 (t!334152 suffix!1299)) lt!1433547)))

(declare-fun b!4031600 () Bool)

(assert (=> b!4031600 (= e!2501563 0)))

(declare-fun b!4031601 () Bool)

(assert (=> b!4031601 (= e!2501563 (+ 1 (size!32278 (t!334152 (t!334152 suffix!1299)))))))

(assert (= (and d!1194097 c!696369) b!4031600))

(assert (= (and d!1194097 (not c!696369)) b!4031601))

(declare-fun m!4624271 () Bool)

(assert (=> b!4031601 m!4624271))

(assert (=> b!4030912 d!1194097))

(assert (=> b!4030767 d!1193855))

(declare-fun d!1194101 () Bool)

(assert (=> d!1194101 (= (list!16066 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))) (list!16068 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))))))

(declare-fun bs!590291 () Bool)

(assert (= bs!590291 d!1194101))

(declare-fun m!4624273 () Bool)

(assert (=> bs!590291 m!4624273))

(assert (=> b!4030967 d!1194101))

(declare-fun d!1194103 () Bool)

(declare-fun lt!1433550 () Int)

(assert (=> d!1194103 (= lt!1433550 (size!32278 (list!16066 (seqFromList!5125 (_1!24271 lt!1433102)))))))

(declare-fun size!32282 (Conc!13119) Int)

(assert (=> d!1194103 (= lt!1433550 (size!32282 (c!696124 (seqFromList!5125 (_1!24271 lt!1433102)))))))

(assert (=> d!1194103 (= (size!32280 (seqFromList!5125 (_1!24271 lt!1433102))) lt!1433550)))

(declare-fun bs!590292 () Bool)

(assert (= bs!590292 d!1194103))

(assert (=> bs!590292 m!4622845))

(declare-fun m!4624275 () Bool)

(assert (=> bs!590292 m!4624275))

(assert (=> bs!590292 m!4624275))

(declare-fun m!4624277 () Bool)

(assert (=> bs!590292 m!4624277))

(declare-fun m!4624279 () Bool)

(assert (=> bs!590292 m!4624279))

(assert (=> b!4030616 d!1194103))

(declare-fun d!1194105 () Bool)

(assert (=> d!1194105 (= (apply!10097 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 (_1!24271 lt!1433102))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 (_1!24271 lt!1433102))))))

(declare-fun b_lambda!117605 () Bool)

(assert (=> (not b_lambda!117605) (not d!1194105)))

(declare-fun tb!242157 () Bool)

(declare-fun t!334231 () Bool)

(assert (=> (and b!4030388 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334231) tb!242157))

(declare-fun result!293538 () Bool)

(assert (=> tb!242157 (= result!293538 (inv!21 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 (_1!24271 lt!1433102)))))))

(declare-fun m!4624281 () Bool)

(assert (=> tb!242157 m!4624281))

(assert (=> d!1194105 t!334231))

(declare-fun b_and!309813 () Bool)

(assert (= b_and!309735 (and (=> t!334231 result!293538) b_and!309813)))

(declare-fun t!334233 () Bool)

(declare-fun tb!242159 () Bool)

(assert (=> (and b!4030385 (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334233) tb!242159))

(declare-fun result!293540 () Bool)

(assert (= result!293540 result!293538))

(assert (=> d!1194105 t!334233))

(declare-fun b_and!309815 () Bool)

(assert (= b_and!309737 (and (=> t!334233 result!293540) b_and!309815)))

(declare-fun t!334235 () Bool)

(declare-fun tb!242161 () Bool)

(assert (=> (and b!4030992 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334235) tb!242161))

(declare-fun result!293542 () Bool)

(assert (= result!293542 result!293538))

(assert (=> d!1194105 t!334235))

(declare-fun b_and!309817 () Bool)

(assert (= b_and!309755 (and (=> t!334235 result!293542) b_and!309817)))

(assert (=> d!1194105 m!4622845))

(declare-fun m!4624291 () Bool)

(assert (=> d!1194105 m!4624291))

(assert (=> b!4030616 d!1194105))

(assert (=> b!4030616 d!1193753))

(assert (=> b!4030616 d!1193923))

(declare-fun d!1194109 () Bool)

(declare-fun e!2501584 () Bool)

(assert (=> d!1194109 e!2501584))

(declare-fun res!1641288 () Bool)

(assert (=> d!1194109 (=> res!1641288 e!2501584)))

(assert (=> d!1194109 (= res!1641288 (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(declare-fun lt!1433562 () Unit!62350)

(declare-fun choose!24392 (Regex!11813 List!43311) Unit!62350)

(assert (=> d!1194109 (= lt!1433562 (choose!24392 (regex!6908 (rule!9968 token!484)) lt!1432995))))

(assert (=> d!1194109 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1194109 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1348 (regex!6908 (rule!9968 token!484)) lt!1432995) lt!1433562)))

(declare-fun b!4031640 () Bool)

(assert (=> b!4031640 (= e!2501584 (matchR!5766 (regex!6908 (rule!9968 token!484)) (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(assert (= (and d!1194109 (not res!1641288)) b!4031640))

(assert (=> d!1194109 m!4623039))

(assert (=> d!1194109 m!4622855))

(assert (=> d!1194109 m!4622841))

(assert (=> d!1194109 m!4622857))

(declare-fun m!4624355 () Bool)

(assert (=> d!1194109 m!4624355))

(assert (=> d!1194109 m!4622841))

(assert (=> d!1194109 m!4622843))

(assert (=> d!1194109 m!4622855))

(assert (=> b!4031640 m!4622855))

(assert (=> b!4031640 m!4622841))

(assert (=> b!4031640 m!4622855))

(assert (=> b!4031640 m!4622841))

(assert (=> b!4031640 m!4622857))

(assert (=> b!4031640 m!4622859))

(assert (=> b!4030616 d!1194109))

(assert (=> b!4030616 d!1193935))

(declare-fun d!1194131 () Bool)

(assert (=> d!1194131 (= (seqFromList!5125 (_1!24271 lt!1433102)) (fromListB!2332 (_1!24271 lt!1433102)))))

(declare-fun bs!590295 () Bool)

(assert (= bs!590295 d!1194131))

(declare-fun m!4624357 () Bool)

(assert (=> bs!590295 m!4624357))

(assert (=> b!4030616 d!1194131))

(declare-fun d!1194133 () Bool)

(assert (=> d!1194133 (= (isEmpty!25772 (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))) ((_ is Nil!43187) (_1!24271 (findLongestMatchInner!1375 (regex!6908 (rule!9968 token!484)) Nil!43187 (size!32278 Nil!43187) lt!1432995 lt!1432995 (size!32278 lt!1432995)))))))

(assert (=> b!4030616 d!1194133))

(declare-fun bs!590296 () Bool)

(declare-fun d!1194135 () Bool)

(assert (= bs!590296 (and d!1194135 d!1193733)))

(declare-fun lambda!127255 () Int)

(assert (=> bs!590296 (= lambda!127255 lambda!127226)))

(declare-fun bs!590297 () Bool)

(assert (= bs!590297 (and d!1194135 d!1194093)))

(assert (=> bs!590297 (= (and (= (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toChars!9291 (transformation!6908 (h!48609 rules!2999)))) (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (h!48609 rules!2999))))) (= lambda!127255 lambda!127252))))

(declare-fun b!4031645 () Bool)

(declare-fun e!2501587 () Bool)

(assert (=> b!4031645 (= e!2501587 true)))

(assert (=> d!1194135 e!2501587))

(assert (= d!1194135 b!4031645))

(assert (=> b!4031645 (< (dynLambda!18301 order!22579 (toValue!9432 (transformation!6908 (rule!9968 token!484)))) (dynLambda!18300 order!22577 lambda!127255))))

(assert (=> b!4031645 (< (dynLambda!18299 order!22575 (toChars!9291 (transformation!6908 (rule!9968 token!484)))) (dynLambda!18300 order!22577 lambda!127255))))

(assert (=> d!1194135 (= (list!16066 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 (_1!24271 lt!1433102))))) (list!16066 (seqFromList!5125 (_1!24271 lt!1433102))))))

(declare-fun lt!1433565 () Unit!62350)

(declare-fun ForallOf!817 (Int BalanceConc!25832) Unit!62350)

(assert (=> d!1194135 (= lt!1433565 (ForallOf!817 lambda!127255 (seqFromList!5125 (_1!24271 lt!1433102))))))

(assert (=> d!1194135 (= (lemmaSemiInverse!1895 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 (_1!24271 lt!1433102))) lt!1433565)))

(declare-fun b_lambda!117609 () Bool)

(assert (=> (not b_lambda!117609) (not d!1194135)))

(declare-fun tb!242169 () Bool)

(declare-fun t!334243 () Bool)

(assert (=> (and b!4030388 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334243) tb!242169))

(declare-fun b!4031646 () Bool)

(declare-fun e!2501588 () Bool)

(declare-fun tp!1225171 () Bool)

(assert (=> b!4031646 (= e!2501588 (and (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 (_1!24271 lt!1433102)))))) tp!1225171))))

(declare-fun result!293550 () Bool)

(assert (=> tb!242169 (= result!293550 (and (inv!57697 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 (_1!24271 lt!1433102))))) e!2501588))))

(assert (= tb!242169 b!4031646))

(declare-fun m!4624359 () Bool)

(assert (=> b!4031646 m!4624359))

(declare-fun m!4624361 () Bool)

(assert (=> tb!242169 m!4624361))

(assert (=> d!1194135 t!334243))

(declare-fun b_and!309825 () Bool)

(assert (= b_and!309807 (and (=> t!334243 result!293550) b_and!309825)))

(declare-fun t!334245 () Bool)

(declare-fun tb!242171 () Bool)

(assert (=> (and b!4030385 (= (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334245) tb!242171))

(declare-fun result!293552 () Bool)

(assert (= result!293552 result!293550))

(assert (=> d!1194135 t!334245))

(declare-fun b_and!309827 () Bool)

(assert (= b_and!309809 (and (=> t!334245 result!293552) b_and!309827)))

(declare-fun tb!242173 () Bool)

(declare-fun t!334247 () Bool)

(assert (=> (and b!4030992 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334247) tb!242173))

(declare-fun result!293554 () Bool)

(assert (= result!293554 result!293550))

(assert (=> d!1194135 t!334247))

(declare-fun b_and!309829 () Bool)

(assert (= b_and!309811 (and (=> t!334247 result!293554) b_and!309829)))

(declare-fun b_lambda!117611 () Bool)

(assert (=> (not b_lambda!117611) (not d!1194135)))

(assert (=> d!1194135 t!334231))

(declare-fun b_and!309831 () Bool)

(assert (= b_and!309813 (and (=> t!334231 result!293538) b_and!309831)))

(assert (=> d!1194135 t!334233))

(declare-fun b_and!309833 () Bool)

(assert (= b_and!309815 (and (=> t!334233 result!293540) b_and!309833)))

(assert (=> d!1194135 t!334235))

(declare-fun b_and!309835 () Bool)

(assert (= b_and!309817 (and (=> t!334235 result!293542) b_and!309835)))

(assert (=> d!1194135 m!4622845))

(declare-fun m!4624363 () Bool)

(assert (=> d!1194135 m!4624363))

(assert (=> d!1194135 m!4622845))

(assert (=> d!1194135 m!4624291))

(assert (=> d!1194135 m!4622845))

(assert (=> d!1194135 m!4624275))

(assert (=> d!1194135 m!4624291))

(declare-fun m!4624365 () Bool)

(assert (=> d!1194135 m!4624365))

(assert (=> d!1194135 m!4624365))

(declare-fun m!4624367 () Bool)

(assert (=> d!1194135 m!4624367))

(assert (=> b!4030616 d!1194135))

(declare-fun d!1194137 () Bool)

(declare-fun e!2501589 () Bool)

(assert (=> d!1194137 e!2501589))

(declare-fun res!1641290 () Bool)

(assert (=> d!1194137 (=> (not res!1641290) (not e!2501589))))

(declare-fun lt!1433566 () List!43311)

(assert (=> d!1194137 (= res!1641290 (= (content!6554 lt!1433566) ((_ map or) (content!6554 (t!334152 lt!1433006)) (content!6554 suffixResult!105))))))

(declare-fun e!2501590 () List!43311)

(assert (=> d!1194137 (= lt!1433566 e!2501590)))

(declare-fun c!696384 () Bool)

(assert (=> d!1194137 (= c!696384 ((_ is Nil!43187) (t!334152 lt!1433006)))))

(assert (=> d!1194137 (= (++!11310 (t!334152 lt!1433006) suffixResult!105) lt!1433566)))

(declare-fun b!4031648 () Bool)

(assert (=> b!4031648 (= e!2501590 (Cons!43187 (h!48607 (t!334152 lt!1433006)) (++!11310 (t!334152 (t!334152 lt!1433006)) suffixResult!105)))))

(declare-fun b!4031647 () Bool)

(assert (=> b!4031647 (= e!2501590 suffixResult!105)))

(declare-fun b!4031650 () Bool)

(assert (=> b!4031650 (= e!2501589 (or (not (= suffixResult!105 Nil!43187)) (= lt!1433566 (t!334152 lt!1433006))))))

(declare-fun b!4031649 () Bool)

(declare-fun res!1641289 () Bool)

(assert (=> b!4031649 (=> (not res!1641289) (not e!2501589))))

(assert (=> b!4031649 (= res!1641289 (= (size!32278 lt!1433566) (+ (size!32278 (t!334152 lt!1433006)) (size!32278 suffixResult!105))))))

(assert (= (and d!1194137 c!696384) b!4031647))

(assert (= (and d!1194137 (not c!696384)) b!4031648))

(assert (= (and d!1194137 res!1641290) b!4031649))

(assert (= (and b!4031649 res!1641289) b!4031650))

(declare-fun m!4624369 () Bool)

(assert (=> d!1194137 m!4624369))

(assert (=> d!1194137 m!4623689))

(assert (=> d!1194137 m!4623349))

(declare-fun m!4624371 () Bool)

(assert (=> b!4031648 m!4624371))

(declare-fun m!4624373 () Bool)

(assert (=> b!4031649 m!4624373))

(assert (=> b!4031649 m!4623329))

(assert (=> b!4031649 m!4623355))

(assert (=> b!4030970 d!1194137))

(declare-fun b!4031652 () Bool)

(declare-fun res!1641291 () Bool)

(declare-fun e!2501592 () Bool)

(assert (=> b!4031652 (=> (not res!1641291) (not e!2501592))))

(assert (=> b!4031652 (= res!1641291 (= (head!8541 lt!1433006) (head!8541 (++!11310 lt!1433006 lt!1433001))))))

(declare-fun b!4031654 () Bool)

(declare-fun e!2501591 () Bool)

(assert (=> b!4031654 (= e!2501591 (>= (size!32278 (++!11310 lt!1433006 lt!1433001)) (size!32278 lt!1433006)))))

(declare-fun b!4031653 () Bool)

(assert (=> b!4031653 (= e!2501592 (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 (++!11310 lt!1433006 lt!1433001))))))

(declare-fun b!4031651 () Bool)

(declare-fun e!2501593 () Bool)

(assert (=> b!4031651 (= e!2501593 e!2501592)))

(declare-fun res!1641293 () Bool)

(assert (=> b!4031651 (=> (not res!1641293) (not e!2501592))))

(assert (=> b!4031651 (= res!1641293 (not ((_ is Nil!43187) (++!11310 lt!1433006 lt!1433001))))))

(declare-fun d!1194139 () Bool)

(assert (=> d!1194139 e!2501591))

(declare-fun res!1641294 () Bool)

(assert (=> d!1194139 (=> res!1641294 e!2501591)))

(declare-fun lt!1433567 () Bool)

(assert (=> d!1194139 (= res!1641294 (not lt!1433567))))

(assert (=> d!1194139 (= lt!1433567 e!2501593)))

(declare-fun res!1641292 () Bool)

(assert (=> d!1194139 (=> res!1641292 e!2501593)))

(assert (=> d!1194139 (= res!1641292 ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1194139 (= (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 lt!1433001)) lt!1433567)))

(assert (= (and d!1194139 (not res!1641292)) b!4031651))

(assert (= (and b!4031651 res!1641293) b!4031652))

(assert (= (and b!4031652 res!1641291) b!4031653))

(assert (= (and d!1194139 (not res!1641294)) b!4031654))

(assert (=> b!4031652 m!4622639))

(assert (=> b!4031652 m!4622607))

(declare-fun m!4624375 () Bool)

(assert (=> b!4031652 m!4624375))

(assert (=> b!4031654 m!4622607))

(declare-fun m!4624377 () Bool)

(assert (=> b!4031654 m!4624377))

(assert (=> b!4031654 m!4622587))

(assert (=> b!4031653 m!4622643))

(assert (=> b!4031653 m!4622607))

(declare-fun m!4624379 () Bool)

(assert (=> b!4031653 m!4624379))

(assert (=> b!4031653 m!4622643))

(assert (=> b!4031653 m!4624379))

(declare-fun m!4624381 () Bool)

(assert (=> b!4031653 m!4624381))

(assert (=> d!1193647 d!1194139))

(assert (=> d!1193647 d!1193677))

(declare-fun d!1194143 () Bool)

(assert (=> d!1194143 (isPrefix!3995 lt!1433006 (++!11310 lt!1433006 lt!1433001))))

(assert (=> d!1194143 true))

(declare-fun _$46!1720 () Unit!62350)

(assert (=> d!1194143 (= (choose!24383 lt!1433006 lt!1433001) _$46!1720)))

(declare-fun bs!590299 () Bool)

(assert (= bs!590299 d!1194143))

(assert (=> bs!590299 m!4622607))

(assert (=> bs!590299 m!4622607))

(assert (=> bs!590299 m!4623203))

(assert (=> d!1193647 d!1194143))

(declare-fun d!1194147 () Bool)

(declare-fun lt!1433569 () List!43311)

(assert (=> d!1194147 (= (++!11310 (t!334152 lt!1433006) lt!1433569) (tail!6273 prefix!494))))

(declare-fun e!2501594 () List!43311)

(assert (=> d!1194147 (= lt!1433569 e!2501594)))

(declare-fun c!696385 () Bool)

(assert (=> d!1194147 (= c!696385 ((_ is Cons!43187) (t!334152 lt!1433006)))))

(assert (=> d!1194147 (>= (size!32278 (tail!6273 prefix!494)) (size!32278 (t!334152 lt!1433006)))))

(assert (=> d!1194147 (= (getSuffix!2412 (tail!6273 prefix!494) (t!334152 lt!1433006)) lt!1433569)))

(declare-fun b!4031655 () Bool)

(assert (=> b!4031655 (= e!2501594 (getSuffix!2412 (tail!6273 (tail!6273 prefix!494)) (t!334152 (t!334152 lt!1433006))))))

(declare-fun b!4031656 () Bool)

(assert (=> b!4031656 (= e!2501594 (tail!6273 prefix!494))))

(assert (= (and d!1194147 c!696385) b!4031655))

(assert (= (and d!1194147 (not c!696385)) b!4031656))

(declare-fun m!4624385 () Bool)

(assert (=> d!1194147 m!4624385))

(assert (=> d!1194147 m!4622631))

(assert (=> d!1194147 m!4624249))

(assert (=> d!1194147 m!4623329))

(assert (=> b!4031655 m!4622631))

(assert (=> b!4031655 m!4624251))

(assert (=> b!4031655 m!4624251))

(declare-fun m!4624387 () Bool)

(assert (=> b!4031655 m!4624387))

(assert (=> b!4030429 d!1194147))

(assert (=> b!4030429 d!1194087))

(declare-fun b!4031658 () Bool)

(declare-fun e!2501596 () Bool)

(assert (=> b!4031658 (= e!2501596 (inv!16 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))))))

(declare-fun b!4031659 () Bool)

(declare-fun res!1641295 () Bool)

(declare-fun e!2501597 () Bool)

(assert (=> b!4031659 (=> res!1641295 e!2501597)))

(assert (=> b!4031659 (= res!1641295 (not ((_ is IntegerValue!21416) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006)))))))

(declare-fun e!2501598 () Bool)

(assert (=> b!4031659 (= e!2501598 e!2501597)))

(declare-fun d!1194149 () Bool)

(declare-fun c!696387 () Bool)

(assert (=> d!1194149 (= c!696387 ((_ is IntegerValue!21414) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))))))

(assert (=> d!1194149 (= (inv!21 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))) e!2501596)))

(declare-fun b!4031660 () Bool)

(assert (=> b!4031660 (= e!2501596 e!2501598)))

(declare-fun c!696386 () Bool)

(assert (=> b!4031660 (= c!696386 ((_ is IntegerValue!21415) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))))))

(declare-fun b!4031661 () Bool)

(assert (=> b!4031661 (= e!2501597 (inv!15 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))))))

(declare-fun b!4031662 () Bool)

(assert (=> b!4031662 (= e!2501598 (inv!17 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 token!484))) (seqFromList!5125 lt!1433006))))))

(assert (= (and d!1194149 c!696387) b!4031658))

(assert (= (and d!1194149 (not c!696387)) b!4031660))

(assert (= (and b!4031660 c!696386) b!4031662))

(assert (= (and b!4031660 (not c!696386)) b!4031659))

(assert (= (and b!4031659 (not res!1641295)) b!4031661))

(declare-fun m!4624393 () Bool)

(assert (=> b!4031658 m!4624393))

(declare-fun m!4624395 () Bool)

(assert (=> b!4031661 m!4624395))

(declare-fun m!4624399 () Bool)

(assert (=> b!4031662 m!4624399))

(assert (=> tb!242093 d!1194149))

(declare-fun d!1194151 () Bool)

(assert (=> d!1194151 (= lt!1433005 suffixResult!105)))

(assert (=> d!1194151 true))

(declare-fun _$63!1083 () Unit!62350)

(assert (=> d!1194151 (= (choose!24380 lt!1433006 lt!1433005 lt!1433006 suffixResult!105 lt!1432995) _$63!1083)))

(assert (=> d!1193501 d!1194151))

(assert (=> d!1193501 d!1193609))

(assert (=> b!4030885 d!1193761))

(declare-fun d!1194155 () Bool)

(assert (=> d!1194155 (= (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196))))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196))))))))

(declare-fun b_lambda!117615 () Bool)

(assert (=> (not b_lambda!117615) (not d!1194155)))

(declare-fun t!334255 () Bool)

(declare-fun tb!242181 () Bool)

(assert (=> (and b!4030388 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334255) tb!242181))

(declare-fun result!293562 () Bool)

(assert (=> tb!242181 (= result!293562 (inv!21 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196))))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196)))))))))

(declare-fun m!4624403 () Bool)

(assert (=> tb!242181 m!4624403))

(assert (=> d!1194155 t!334255))

(declare-fun b_and!309843 () Bool)

(assert (= b_and!309831 (and (=> t!334255 result!293562) b_and!309843)))

(declare-fun tb!242183 () Bool)

(declare-fun t!334257 () Bool)

(assert (=> (and b!4030385 (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334257) tb!242183))

(declare-fun result!293564 () Bool)

(assert (= result!293564 result!293562))

(assert (=> d!1194155 t!334257))

(declare-fun b_and!309845 () Bool)

(assert (= b_and!309833 (and (=> t!334257 result!293564) b_and!309845)))

(declare-fun tb!242185 () Bool)

(declare-fun t!334259 () Bool)

(assert (=> (and b!4030992 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334259) tb!242185))

(declare-fun result!293566 () Bool)

(assert (= result!293566 result!293562))

(assert (=> d!1194155 t!334259))

(declare-fun b_and!309847 () Bool)

(assert (= b_and!309835 (and (=> t!334259 result!293566) b_and!309847)))

(assert (=> d!1194155 m!4623183))

(declare-fun m!4624407 () Bool)

(assert (=> d!1194155 m!4624407))

(assert (=> b!4030885 d!1194155))

(declare-fun d!1194159 () Bool)

(assert (=> d!1194159 (= (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196)))) (fromListB!2332 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433196)))))))

(declare-fun bs!590302 () Bool)

(assert (= bs!590302 d!1194159))

(declare-fun m!4624409 () Bool)

(assert (=> bs!590302 m!4624409))

(assert (=> b!4030885 d!1194159))

(assert (=> b!4030443 d!1193791))

(assert (=> b!4030443 d!1193911))

(assert (=> b!4030621 d!1193771))

(declare-fun d!1194161 () Bool)

(declare-fun lt!1433571 () Int)

(assert (=> d!1194161 (>= lt!1433571 0)))

(declare-fun e!2501602 () Int)

(assert (=> d!1194161 (= lt!1433571 e!2501602)))

(declare-fun c!696389 () Bool)

(assert (=> d!1194161 (= c!696389 ((_ is Nil!43187) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))))))

(assert (=> d!1194161 (= (size!32278 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))) lt!1433571)))

(declare-fun b!4031667 () Bool)

(assert (=> b!4031667 (= e!2501602 0)))

(declare-fun b!4031668 () Bool)

(assert (=> b!4031668 (= e!2501602 (+ 1 (size!32278 (t!334152 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))))))))

(assert (= (and d!1194161 c!696389) b!4031667))

(assert (= (and d!1194161 (not c!696389)) b!4031668))

(declare-fun m!4624419 () Bool)

(assert (=> b!4031668 m!4624419))

(assert (=> b!4030621 d!1194161))

(declare-fun d!1194165 () Bool)

(declare-fun e!2501606 () Bool)

(assert (=> d!1194165 e!2501606))

(declare-fun res!1641303 () Bool)

(assert (=> d!1194165 (=> (not res!1641303) (not e!2501606))))

(declare-fun lt!1433573 () List!43311)

(assert (=> d!1194165 (= res!1641303 (= (content!6554 lt!1433573) ((_ map or) (content!6554 (t!334152 lt!1433014)) (content!6554 suffix!1299))))))

(declare-fun e!2501607 () List!43311)

(assert (=> d!1194165 (= lt!1433573 e!2501607)))

(declare-fun c!696390 () Bool)

(assert (=> d!1194165 (= c!696390 ((_ is Nil!43187) (t!334152 lt!1433014)))))

(assert (=> d!1194165 (= (++!11310 (t!334152 lt!1433014) suffix!1299) lt!1433573)))

(declare-fun b!4031674 () Bool)

(assert (=> b!4031674 (= e!2501607 (Cons!43187 (h!48607 (t!334152 lt!1433014)) (++!11310 (t!334152 (t!334152 lt!1433014)) suffix!1299)))))

(declare-fun b!4031673 () Bool)

(assert (=> b!4031673 (= e!2501607 suffix!1299)))

(declare-fun b!4031676 () Bool)

(assert (=> b!4031676 (= e!2501606 (or (not (= suffix!1299 Nil!43187)) (= lt!1433573 (t!334152 lt!1433014))))))

(declare-fun b!4031675 () Bool)

(declare-fun res!1641302 () Bool)

(assert (=> b!4031675 (=> (not res!1641302) (not e!2501606))))

(assert (=> b!4031675 (= res!1641302 (= (size!32278 lt!1433573) (+ (size!32278 (t!334152 lt!1433014)) (size!32278 suffix!1299))))))

(assert (= (and d!1194165 c!696390) b!4031673))

(assert (= (and d!1194165 (not c!696390)) b!4031674))

(assert (= (and d!1194165 res!1641303) b!4031675))

(assert (= (and b!4031675 res!1641302) b!4031676))

(declare-fun m!4624423 () Bool)

(assert (=> d!1194165 m!4624423))

(declare-fun m!4624427 () Bool)

(assert (=> d!1194165 m!4624427))

(assert (=> d!1194165 m!4623237))

(declare-fun m!4624429 () Bool)

(assert (=> b!4031674 m!4624429))

(declare-fun m!4624433 () Bool)

(assert (=> b!4031675 m!4624433))

(declare-fun m!4624435 () Bool)

(assert (=> b!4031675 m!4624435))

(assert (=> b!4031675 m!4622583))

(assert (=> b!4030927 d!1194165))

(assert (=> b!4030968 d!1193685))

(declare-fun d!1194167 () Bool)

(declare-fun lt!1433574 () Int)

(assert (=> d!1194167 (>= lt!1433574 0)))

(declare-fun e!2501608 () Int)

(assert (=> d!1194167 (= lt!1433574 e!2501608)))

(declare-fun c!696391 () Bool)

(assert (=> d!1194167 (= c!696391 ((_ is Nil!43187) lt!1433230))))

(assert (=> d!1194167 (= (size!32278 lt!1433230) lt!1433574)))

(declare-fun b!4031677 () Bool)

(assert (=> b!4031677 (= e!2501608 0)))

(declare-fun b!4031678 () Bool)

(assert (=> b!4031678 (= e!2501608 (+ 1 (size!32278 (t!334152 lt!1433230))))))

(assert (= (and d!1194167 c!696391) b!4031677))

(assert (= (and d!1194167 (not c!696391)) b!4031678))

(declare-fun m!4624439 () Bool)

(assert (=> b!4031678 m!4624439))

(assert (=> b!4030971 d!1194167))

(assert (=> b!4030971 d!1193691))

(declare-fun d!1194173 () Bool)

(declare-fun lt!1433575 () Int)

(assert (=> d!1194173 (>= lt!1433575 0)))

(declare-fun e!2501609 () Int)

(assert (=> d!1194173 (= lt!1433575 e!2501609)))

(declare-fun c!696392 () Bool)

(assert (=> d!1194173 (= c!696392 ((_ is Nil!43187) suffixResult!105))))

(assert (=> d!1194173 (= (size!32278 suffixResult!105) lt!1433575)))

(declare-fun b!4031679 () Bool)

(assert (=> b!4031679 (= e!2501609 0)))

(declare-fun b!4031680 () Bool)

(assert (=> b!4031680 (= e!2501609 (+ 1 (size!32278 (t!334152 suffixResult!105))))))

(assert (= (and d!1194173 c!696392) b!4031679))

(assert (= (and d!1194173 (not c!696392)) b!4031680))

(declare-fun m!4624441 () Bool)

(assert (=> b!4031680 m!4624441))

(assert (=> b!4030971 d!1194173))

(declare-fun d!1194175 () Bool)

(declare-fun res!1641310 () Bool)

(declare-fun e!2501616 () Bool)

(assert (=> d!1194175 (=> res!1641310 e!2501616)))

(assert (=> d!1194175 (= res!1641310 ((_ is Nil!43189) rules!2999))))

(assert (=> d!1194175 (= (noDuplicateTag!2681 thiss!21717 rules!2999 Nil!43191) e!2501616)))

(declare-fun b!4031687 () Bool)

(declare-fun e!2501617 () Bool)

(assert (=> b!4031687 (= e!2501616 e!2501617)))

(declare-fun res!1641311 () Bool)

(assert (=> b!4031687 (=> (not res!1641311) (not e!2501617))))

(declare-fun contains!8574 (List!43315 String!49408) Bool)

(assert (=> b!4031687 (= res!1641311 (not (contains!8574 Nil!43191 (tag!7768 (h!48609 rules!2999)))))))

(declare-fun b!4031688 () Bool)

(assert (=> b!4031688 (= e!2501617 (noDuplicateTag!2681 thiss!21717 (t!334154 rules!2999) (Cons!43191 (tag!7768 (h!48609 rules!2999)) Nil!43191)))))

(assert (= (and d!1194175 (not res!1641310)) b!4031687))

(assert (= (and b!4031687 res!1641311) b!4031688))

(declare-fun m!4624443 () Bool)

(assert (=> b!4031687 m!4624443))

(declare-fun m!4624445 () Bool)

(assert (=> b!4031688 m!4624445))

(assert (=> b!4030932 d!1194175))

(assert (=> b!4030771 d!1193791))

(assert (=> d!1193539 d!1193675))

(assert (=> d!1193539 d!1193505))

(assert (=> d!1193539 d!1193537))

(assert (=> d!1193539 d!1193691))

(declare-fun d!1194177 () Bool)

(assert (=> d!1194177 (= (maxPrefixOneRule!2807 thiss!21717 (rule!9968 token!484) lt!1432995) (Some!9321 (tuple2!42271 (Token!12955 (apply!10097 (transformation!6908 (rule!9968 token!484)) (seqFromList!5125 lt!1433006)) (rule!9968 token!484) (size!32278 lt!1433006) lt!1433006) suffixResult!105)))))

(assert (=> d!1194177 true))

(declare-fun _$59!671 () Unit!62350)

(assert (=> d!1194177 (= (choose!24381 thiss!21717 rules!2999 lt!1433006 lt!1432995 suffixResult!105 (rule!9968 token!484)) _$59!671)))

(declare-fun bs!590305 () Bool)

(assert (= bs!590305 d!1194177))

(assert (=> bs!590305 m!4622563))

(assert (=> bs!590305 m!4622557))

(assert (=> bs!590305 m!4622557))

(assert (=> bs!590305 m!4622559))

(assert (=> bs!590305 m!4622587))

(assert (=> d!1193539 d!1194177))

(assert (=> d!1193539 d!1193553))

(declare-fun d!1194215 () Bool)

(declare-fun lt!1433586 () Int)

(assert (=> d!1194215 (>= lt!1433586 0)))

(declare-fun e!2501636 () Int)

(assert (=> d!1194215 (= lt!1433586 e!2501636)))

(declare-fun c!696406 () Bool)

(assert (=> d!1194215 (= c!696406 ((_ is Nil!43187) lt!1433211))))

(assert (=> d!1194215 (= (size!32278 lt!1433211) lt!1433586)))

(declare-fun b!4031722 () Bool)

(assert (=> b!4031722 (= e!2501636 0)))

(declare-fun b!4031723 () Bool)

(assert (=> b!4031723 (= e!2501636 (+ 1 (size!32278 (t!334152 lt!1433211))))))

(assert (= (and d!1194215 c!696406) b!4031722))

(assert (= (and d!1194215 (not c!696406)) b!4031723))

(declare-fun m!4624503 () Bool)

(assert (=> b!4031723 m!4624503))

(assert (=> b!4030924 d!1194215))

(declare-fun d!1194217 () Bool)

(declare-fun lt!1433587 () Int)

(assert (=> d!1194217 (>= lt!1433587 0)))

(declare-fun e!2501637 () Int)

(assert (=> d!1194217 (= lt!1433587 e!2501637)))

(declare-fun c!696407 () Bool)

(assert (=> d!1194217 (= c!696407 ((_ is Nil!43187) lt!1433000))))

(assert (=> d!1194217 (= (size!32278 lt!1433000) lt!1433587)))

(declare-fun b!4031724 () Bool)

(assert (=> b!4031724 (= e!2501637 0)))

(declare-fun b!4031725 () Bool)

(assert (=> b!4031725 (= e!2501637 (+ 1 (size!32278 (t!334152 lt!1433000))))))

(assert (= (and d!1194217 c!696407) b!4031724))

(assert (= (and d!1194217 (not c!696407)) b!4031725))

(assert (=> b!4031725 m!4623857))

(assert (=> b!4030924 d!1194217))

(assert (=> b!4030924 d!1193653))

(assert (=> b!4030891 d!1193791))

(declare-fun d!1194219 () Bool)

(assert (=> d!1194219 (= (head!8541 lt!1432993) (h!48607 lt!1432993))))

(assert (=> b!4030891 d!1194219))

(declare-fun d!1194221 () Bool)

(assert (=> d!1194221 (= (isDefined!7092 lt!1433204) (not (isEmpty!25773 lt!1433204)))))

(declare-fun bs!590306 () Bool)

(assert (= bs!590306 d!1194221))

(assert (=> bs!590306 m!4623219))

(assert (=> b!4030897 d!1194221))

(assert (=> b!4030774 d!1193791))

(declare-fun d!1194223 () Bool)

(assert (=> d!1194223 (= (head!8541 lt!1433016) (h!48607 lt!1433016))))

(assert (=> b!4030774 d!1194223))

(declare-fun d!1194225 () Bool)

(declare-fun e!2501638 () Bool)

(assert (=> d!1194225 e!2501638))

(declare-fun res!1641322 () Bool)

(assert (=> d!1194225 (=> (not res!1641322) (not e!2501638))))

(declare-fun lt!1433588 () List!43311)

(assert (=> d!1194225 (= res!1641322 (= (content!6554 lt!1433588) ((_ map or) (content!6554 (t!334152 prefix!494)) (content!6554 suffix!1299))))))

(declare-fun e!2501639 () List!43311)

(assert (=> d!1194225 (= lt!1433588 e!2501639)))

(declare-fun c!696408 () Bool)

(assert (=> d!1194225 (= c!696408 ((_ is Nil!43187) (t!334152 prefix!494)))))

(assert (=> d!1194225 (= (++!11310 (t!334152 prefix!494) suffix!1299) lt!1433588)))

(declare-fun b!4031727 () Bool)

(assert (=> b!4031727 (= e!2501639 (Cons!43187 (h!48607 (t!334152 prefix!494)) (++!11310 (t!334152 (t!334152 prefix!494)) suffix!1299)))))

(declare-fun b!4031726 () Bool)

(assert (=> b!4031726 (= e!2501639 suffix!1299)))

(declare-fun b!4031729 () Bool)

(assert (=> b!4031729 (= e!2501638 (or (not (= suffix!1299 Nil!43187)) (= lt!1433588 (t!334152 prefix!494))))))

(declare-fun b!4031728 () Bool)

(declare-fun res!1641321 () Bool)

(assert (=> b!4031728 (=> (not res!1641321) (not e!2501638))))

(assert (=> b!4031728 (= res!1641321 (= (size!32278 lt!1433588) (+ (size!32278 (t!334152 prefix!494)) (size!32278 suffix!1299))))))

(assert (= (and d!1194225 c!696408) b!4031726))

(assert (= (and d!1194225 (not c!696408)) b!4031727))

(assert (= (and d!1194225 res!1641322) b!4031728))

(assert (= (and b!4031728 res!1641321) b!4031729))

(declare-fun m!4624505 () Bool)

(assert (=> d!1194225 m!4624505))

(assert (=> d!1194225 m!4623387))

(assert (=> d!1194225 m!4623237))

(declare-fun m!4624507 () Bool)

(assert (=> b!4031727 m!4624507))

(declare-fun m!4624509 () Bool)

(assert (=> b!4031728 m!4624509))

(assert (=> b!4031728 m!4623331))

(assert (=> b!4031728 m!4622583))

(assert (=> b!4030904 d!1194225))

(declare-fun d!1194227 () Bool)

(declare-fun lt!1433589 () Int)

(assert (=> d!1194227 (>= lt!1433589 0)))

(declare-fun e!2501640 () Int)

(assert (=> d!1194227 (= lt!1433589 e!2501640)))

(declare-fun c!696409 () Bool)

(assert (=> d!1194227 (= c!696409 ((_ is Nil!43187) (originalCharacters!7508 (_1!24269 (v!39709 lt!1432997)))))))

(assert (=> d!1194227 (= (size!32278 (originalCharacters!7508 (_1!24269 (v!39709 lt!1432997)))) lt!1433589)))

(declare-fun b!4031730 () Bool)

(assert (=> b!4031730 (= e!2501640 0)))

(declare-fun b!4031731 () Bool)

(assert (=> b!4031731 (= e!2501640 (+ 1 (size!32278 (t!334152 (originalCharacters!7508 (_1!24269 (v!39709 lt!1432997)))))))))

(assert (= (and d!1194227 c!696409) b!4031730))

(assert (= (and d!1194227 (not c!696409)) b!4031731))

(declare-fun m!4624511 () Bool)

(assert (=> b!4031731 m!4624511))

(assert (=> d!1193579 d!1194227))

(declare-fun d!1194229 () Bool)

(declare-fun lt!1433590 () Bool)

(assert (=> d!1194229 (= lt!1433590 (select (content!6555 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))

(declare-fun e!2501642 () Bool)

(assert (=> d!1194229 (= lt!1433590 e!2501642)))

(declare-fun res!1641323 () Bool)

(assert (=> d!1194229 (=> (not res!1641323) (not e!2501642))))

(assert (=> d!1194229 (= res!1641323 ((_ is Cons!43189) rules!2999))))

(assert (=> d!1194229 (= (contains!8572 rules!2999 (rule!9968 (_1!24269 (get!14170 lt!1433196)))) lt!1433590)))

(declare-fun b!4031732 () Bool)

(declare-fun e!2501641 () Bool)

(assert (=> b!4031732 (= e!2501642 e!2501641)))

(declare-fun res!1641324 () Bool)

(assert (=> b!4031732 (=> res!1641324 e!2501641)))

(assert (=> b!4031732 (= res!1641324 (= (h!48609 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))

(declare-fun b!4031733 () Bool)

(assert (=> b!4031733 (= e!2501641 (contains!8572 (t!334154 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433196)))))))

(assert (= (and d!1194229 res!1641323) b!4031732))

(assert (= (and b!4031732 (not res!1641324)) b!4031733))

(assert (=> d!1194229 m!4622995))

(declare-fun m!4624513 () Bool)

(assert (=> d!1194229 m!4624513))

(declare-fun m!4624515 () Bool)

(assert (=> b!4031733 m!4624515))

(assert (=> b!4030883 d!1194229))

(assert (=> b!4030883 d!1193761))

(declare-fun d!1194231 () Bool)

(declare-fun c!696410 () Bool)

(assert (=> d!1194231 (= c!696410 ((_ is Nil!43187) lt!1433212))))

(declare-fun e!2501643 () (InoxSet C!23812))

(assert (=> d!1194231 (= (content!6554 lt!1433212) e!2501643)))

(declare-fun b!4031734 () Bool)

(assert (=> b!4031734 (= e!2501643 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031735 () Bool)

(assert (=> b!4031735 (= e!2501643 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433212) true) (content!6554 (t!334152 lt!1433212))))))

(assert (= (and d!1194231 c!696410) b!4031734))

(assert (= (and d!1194231 (not c!696410)) b!4031735))

(declare-fun m!4624517 () Bool)

(assert (=> b!4031735 m!4624517))

(declare-fun m!4624519 () Bool)

(assert (=> b!4031735 m!4624519))

(assert (=> d!1193665 d!1194231))

(declare-fun d!1194233 () Bool)

(declare-fun c!696411 () Bool)

(assert (=> d!1194233 (= c!696411 ((_ is Nil!43187) lt!1433014))))

(declare-fun e!2501644 () (InoxSet C!23812))

(assert (=> d!1194233 (= (content!6554 lt!1433014) e!2501644)))

(declare-fun b!4031736 () Bool)

(assert (=> b!4031736 (= e!2501644 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031737 () Bool)

(assert (=> b!4031737 (= e!2501644 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433014) true) (content!6554 (t!334152 lt!1433014))))))

(assert (= (and d!1194233 c!696411) b!4031736))

(assert (= (and d!1194233 (not c!696411)) b!4031737))

(declare-fun m!4624521 () Bool)

(assert (=> b!4031737 m!4624521))

(assert (=> b!4031737 m!4624427))

(assert (=> d!1193665 d!1194233))

(assert (=> d!1193665 d!1194037))

(declare-fun d!1194235 () Bool)

(assert (=> d!1194235 (= suffixResult!105 lt!1433001)))

(assert (=> d!1194235 true))

(declare-fun _$63!1084 () Unit!62350)

(assert (=> d!1194235 (= (choose!24380 lt!1433006 suffixResult!105 lt!1433006 lt!1433001 lt!1432995) _$63!1084)))

(assert (=> d!1193643 d!1194235))

(assert (=> d!1193643 d!1193609))

(declare-fun d!1194237 () Bool)

(declare-fun lt!1433591 () Int)

(assert (=> d!1194237 (>= lt!1433591 0)))

(declare-fun e!2501645 () Int)

(assert (=> d!1194237 (= lt!1433591 e!2501645)))

(declare-fun c!696412 () Bool)

(assert (=> d!1194237 (= c!696412 ((_ is Nil!43187) lt!1433024))))

(assert (=> d!1194237 (= (size!32278 lt!1433024) lt!1433591)))

(declare-fun b!4031738 () Bool)

(assert (=> b!4031738 (= e!2501645 0)))

(declare-fun b!4031739 () Bool)

(assert (=> b!4031739 (= e!2501645 (+ 1 (size!32278 (t!334152 lt!1433024))))))

(assert (= (and d!1194237 c!696412) b!4031738))

(assert (= (and d!1194237 (not c!696412)) b!4031739))

(declare-fun m!4624523 () Bool)

(assert (=> b!4031739 m!4624523))

(assert (=> b!4030423 d!1194237))

(assert (=> b!4030423 d!1193691))

(declare-fun d!1194239 () Bool)

(declare-fun lt!1433592 () Int)

(assert (=> d!1194239 (>= lt!1433592 0)))

(declare-fun e!2501646 () Int)

(assert (=> d!1194239 (= lt!1433592 e!2501646)))

(declare-fun c!696413 () Bool)

(assert (=> d!1194239 (= c!696413 ((_ is Nil!43187) lt!1433014))))

(assert (=> d!1194239 (= (size!32278 lt!1433014) lt!1433592)))

(declare-fun b!4031740 () Bool)

(assert (=> b!4031740 (= e!2501646 0)))

(declare-fun b!4031741 () Bool)

(assert (=> b!4031741 (= e!2501646 (+ 1 (size!32278 (t!334152 lt!1433014))))))

(assert (= (and d!1194239 c!696413) b!4031740))

(assert (= (and d!1194239 (not c!696413)) b!4031741))

(assert (=> b!4031741 m!4624435))

(assert (=> b!4030423 d!1194239))

(declare-fun d!1194241 () Bool)

(declare-fun lt!1433593 () Int)

(assert (=> d!1194241 (>= lt!1433593 0)))

(declare-fun e!2501647 () Int)

(assert (=> d!1194241 (= lt!1433593 e!2501647)))

(declare-fun c!696414 () Bool)

(assert (=> d!1194241 (= c!696414 ((_ is Nil!43187) (t!334152 lt!1433006)))))

(assert (=> d!1194241 (= (size!32278 (t!334152 lt!1433006)) lt!1433593)))

(declare-fun b!4031742 () Bool)

(assert (=> b!4031742 (= e!2501647 0)))

(declare-fun b!4031743 () Bool)

(assert (=> b!4031743 (= e!2501647 (+ 1 (size!32278 (t!334152 (t!334152 lt!1433006)))))))

(assert (= (and d!1194241 c!696414) b!4031742))

(assert (= (and d!1194241 (not c!696414)) b!4031743))

(declare-fun m!4624525 () Bool)

(assert (=> b!4031743 m!4624525))

(assert (=> b!4030955 d!1194241))

(declare-fun d!1194243 () Bool)

(assert (=> d!1194243 (= (list!16066 lt!1433229) (list!16068 (c!696124 lt!1433229)))))

(declare-fun bs!590307 () Bool)

(assert (= bs!590307 d!1194243))

(declare-fun m!4624527 () Bool)

(assert (=> bs!590307 m!4624527))

(assert (=> d!1193697 d!1194243))

(assert (=> b!4030797 d!1193753))

(assert (=> b!4030797 d!1193691))

(declare-fun d!1194245 () Bool)

(declare-fun e!2501648 () Bool)

(assert (=> d!1194245 e!2501648))

(declare-fun res!1641326 () Bool)

(assert (=> d!1194245 (=> (not res!1641326) (not e!2501648))))

(declare-fun lt!1433594 () List!43311)

(assert (=> d!1194245 (= res!1641326 (= (content!6554 lt!1433594) ((_ map or) (content!6554 (t!334152 lt!1433006)) (content!6554 newSuffixResult!27))))))

(declare-fun e!2501649 () List!43311)

(assert (=> d!1194245 (= lt!1433594 e!2501649)))

(declare-fun c!696415 () Bool)

(assert (=> d!1194245 (= c!696415 ((_ is Nil!43187) (t!334152 lt!1433006)))))

(assert (=> d!1194245 (= (++!11310 (t!334152 lt!1433006) newSuffixResult!27) lt!1433594)))

(declare-fun b!4031745 () Bool)

(assert (=> b!4031745 (= e!2501649 (Cons!43187 (h!48607 (t!334152 lt!1433006)) (++!11310 (t!334152 (t!334152 lt!1433006)) newSuffixResult!27)))))

(declare-fun b!4031744 () Bool)

(assert (=> b!4031744 (= e!2501649 newSuffixResult!27)))

(declare-fun b!4031747 () Bool)

(assert (=> b!4031747 (= e!2501648 (or (not (= newSuffixResult!27 Nil!43187)) (= lt!1433594 (t!334152 lt!1433006))))))

(declare-fun b!4031746 () Bool)

(declare-fun res!1641325 () Bool)

(assert (=> b!4031746 (=> (not res!1641325) (not e!2501648))))

(assert (=> b!4031746 (= res!1641325 (= (size!32278 lt!1433594) (+ (size!32278 (t!334152 lt!1433006)) (size!32278 newSuffixResult!27))))))

(assert (= (and d!1194245 c!696415) b!4031744))

(assert (= (and d!1194245 (not c!696415)) b!4031745))

(assert (= (and d!1194245 res!1641326) b!4031746))

(assert (= (and b!4031746 res!1641325) b!4031747))

(declare-fun m!4624529 () Bool)

(assert (=> d!1194245 m!4624529))

(assert (=> d!1194245 m!4623689))

(assert (=> d!1194245 m!4623297))

(declare-fun m!4624531 () Bool)

(assert (=> b!4031745 m!4624531))

(declare-fun m!4624533 () Bool)

(assert (=> b!4031746 m!4624533))

(assert (=> b!4031746 m!4623329))

(assert (=> b!4031746 m!4623303))

(assert (=> b!4030938 d!1194245))

(assert (=> b!4030902 d!1194063))

(assert (=> b!4030902 d!1194065))

(assert (=> b!4030902 d!1193853))

(declare-fun d!1194247 () Bool)

(assert (=> d!1194247 (= (isEmpty!25772 lt!1433006) ((_ is Nil!43187) lt!1433006))))

(assert (=> d!1193581 d!1194247))

(assert (=> d!1193581 d!1193987))

(declare-fun b!4031749 () Bool)

(declare-fun res!1641327 () Bool)

(declare-fun e!2501651 () Bool)

(assert (=> b!4031749 (=> (not res!1641327) (not e!2501651))))

(assert (=> b!4031749 (= res!1641327 (= (head!8541 (tail!6273 lt!1432995)) (head!8541 (tail!6273 lt!1432995))))))

(declare-fun b!4031751 () Bool)

(declare-fun e!2501650 () Bool)

(assert (=> b!4031751 (= e!2501650 (>= (size!32278 (tail!6273 lt!1432995)) (size!32278 (tail!6273 lt!1432995))))))

(declare-fun b!4031750 () Bool)

(assert (=> b!4031750 (= e!2501651 (isPrefix!3995 (tail!6273 (tail!6273 lt!1432995)) (tail!6273 (tail!6273 lt!1432995))))))

(declare-fun b!4031748 () Bool)

(declare-fun e!2501652 () Bool)

(assert (=> b!4031748 (= e!2501652 e!2501651)))

(declare-fun res!1641329 () Bool)

(assert (=> b!4031748 (=> (not res!1641329) (not e!2501651))))

(assert (=> b!4031748 (= res!1641329 (not ((_ is Nil!43187) (tail!6273 lt!1432995))))))

(declare-fun d!1194249 () Bool)

(assert (=> d!1194249 e!2501650))

(declare-fun res!1641330 () Bool)

(assert (=> d!1194249 (=> res!1641330 e!2501650)))

(declare-fun lt!1433601 () Bool)

(assert (=> d!1194249 (= res!1641330 (not lt!1433601))))

(assert (=> d!1194249 (= lt!1433601 e!2501652)))

(declare-fun res!1641328 () Bool)

(assert (=> d!1194249 (=> res!1641328 e!2501652)))

(assert (=> d!1194249 (= res!1641328 ((_ is Nil!43187) (tail!6273 lt!1432995)))))

(assert (=> d!1194249 (= (isPrefix!3995 (tail!6273 lt!1432995) (tail!6273 lt!1432995)) lt!1433601)))

(assert (= (and d!1194249 (not res!1641328)) b!4031748))

(assert (= (and b!4031748 res!1641329) b!4031749))

(assert (= (and b!4031749 res!1641327) b!4031750))

(assert (= (and d!1194249 (not res!1641330)) b!4031751))

(assert (=> b!4031749 m!4623099))

(assert (=> b!4031749 m!4624171))

(assert (=> b!4031749 m!4623099))

(assert (=> b!4031749 m!4624171))

(assert (=> b!4031751 m!4623099))

(assert (=> b!4031751 m!4624147))

(assert (=> b!4031751 m!4623099))

(assert (=> b!4031751 m!4624147))

(assert (=> b!4031750 m!4623099))

(assert (=> b!4031750 m!4624149))

(assert (=> b!4031750 m!4623099))

(assert (=> b!4031750 m!4624149))

(assert (=> b!4031750 m!4624149))

(assert (=> b!4031750 m!4624149))

(declare-fun m!4624535 () Bool)

(assert (=> b!4031750 m!4624535))

(assert (=> b!4030949 d!1194249))

(assert (=> b!4030949 d!1194043))

(declare-fun b!4031752 () Bool)

(declare-fun res!1641331 () Bool)

(declare-fun e!2501656 () Bool)

(assert (=> b!4031752 (=> res!1641331 e!2501656)))

(assert (=> b!4031752 (= res!1641331 (not (isEmpty!25772 (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))))))))

(declare-fun b!4031753 () Bool)

(declare-fun e!2501657 () Bool)

(assert (=> b!4031753 (= e!2501657 (matchR!5766 (derivativeStep!3543 (regex!6908 (rule!9968 token!484)) (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))))) (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))))))))

(declare-fun b!4031754 () Bool)

(assert (=> b!4031754 (= e!2501656 (not (= (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) (c!696125 (regex!6908 (rule!9968 token!484))))))))

(declare-fun b!4031755 () Bool)

(declare-fun res!1641335 () Bool)

(declare-fun e!2501658 () Bool)

(assert (=> b!4031755 (=> (not res!1641335) (not e!2501658))))

(declare-fun call!286960 () Bool)

(assert (=> b!4031755 (= res!1641335 (not call!286960))))

(declare-fun d!1194251 () Bool)

(declare-fun e!2501659 () Bool)

(assert (=> d!1194251 e!2501659))

(declare-fun c!696416 () Bool)

(assert (=> d!1194251 (= c!696416 ((_ is EmptyExpr!11813) (regex!6908 (rule!9968 token!484))))))

(declare-fun lt!1433612 () Bool)

(assert (=> d!1194251 (= lt!1433612 e!2501657)))

(declare-fun c!696418 () Bool)

(assert (=> d!1194251 (= c!696418 (isEmpty!25772 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))))))

(assert (=> d!1194251 (validRegex!5338 (regex!6908 (rule!9968 token!484)))))

(assert (=> d!1194251 (= (matchR!5766 (regex!6908 (rule!9968 token!484)) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) lt!1433612)))

(declare-fun b!4031756 () Bool)

(declare-fun res!1641332 () Bool)

(declare-fun e!2501653 () Bool)

(assert (=> b!4031756 (=> res!1641332 e!2501653)))

(assert (=> b!4031756 (= res!1641332 e!2501658)))

(declare-fun res!1641334 () Bool)

(assert (=> b!4031756 (=> (not res!1641334) (not e!2501658))))

(assert (=> b!4031756 (= res!1641334 lt!1433612)))

(declare-fun b!4031757 () Bool)

(declare-fun e!2501654 () Bool)

(assert (=> b!4031757 (= e!2501654 (not lt!1433612))))

(declare-fun b!4031758 () Bool)

(assert (=> b!4031758 (= e!2501659 (= lt!1433612 call!286960))))

(declare-fun b!4031759 () Bool)

(declare-fun res!1641336 () Bool)

(assert (=> b!4031759 (=> res!1641336 e!2501653)))

(assert (=> b!4031759 (= res!1641336 (not ((_ is ElementMatch!11813) (regex!6908 (rule!9968 token!484)))))))

(assert (=> b!4031759 (= e!2501654 e!2501653)))

(declare-fun b!4031760 () Bool)

(assert (=> b!4031760 (= e!2501657 (nullable!4138 (regex!6908 (rule!9968 token!484))))))

(declare-fun bm!286955 () Bool)

(assert (=> bm!286955 (= call!286960 (isEmpty!25772 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))))))

(declare-fun b!4031761 () Bool)

(declare-fun e!2501655 () Bool)

(assert (=> b!4031761 (= e!2501653 e!2501655)))

(declare-fun res!1641338 () Bool)

(assert (=> b!4031761 (=> (not res!1641338) (not e!2501655))))

(assert (=> b!4031761 (= res!1641338 (not lt!1433612))))

(declare-fun b!4031762 () Bool)

(declare-fun res!1641337 () Bool)

(assert (=> b!4031762 (=> (not res!1641337) (not e!2501658))))

(assert (=> b!4031762 (= res!1641337 (isEmpty!25772 (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099)))))))))

(declare-fun b!4031763 () Bool)

(assert (=> b!4031763 (= e!2501655 e!2501656)))

(declare-fun res!1641333 () Bool)

(assert (=> b!4031763 (=> res!1641333 e!2501656)))

(assert (=> b!4031763 (= res!1641333 call!286960)))

(declare-fun b!4031764 () Bool)

(assert (=> b!4031764 (= e!2501658 (= (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433099))))) (c!696125 (regex!6908 (rule!9968 token!484)))))))

(declare-fun b!4031765 () Bool)

(assert (=> b!4031765 (= e!2501659 e!2501654)))

(declare-fun c!696417 () Bool)

(assert (=> b!4031765 (= c!696417 ((_ is EmptyLang!11813) (regex!6908 (rule!9968 token!484))))))

(assert (= (and d!1194251 c!696418) b!4031760))

(assert (= (and d!1194251 (not c!696418)) b!4031753))

(assert (= (and d!1194251 c!696416) b!4031758))

(assert (= (and d!1194251 (not c!696416)) b!4031765))

(assert (= (and b!4031765 c!696417) b!4031757))

(assert (= (and b!4031765 (not c!696417)) b!4031759))

(assert (= (and b!4031759 (not res!1641336)) b!4031756))

(assert (= (and b!4031756 res!1641334) b!4031755))

(assert (= (and b!4031755 res!1641335) b!4031762))

(assert (= (and b!4031762 res!1641337) b!4031764))

(assert (= (and b!4031756 (not res!1641332)) b!4031761))

(assert (= (and b!4031761 res!1641338) b!4031763))

(assert (= (and b!4031763 (not res!1641333)) b!4031752))

(assert (= (and b!4031752 (not res!1641331)) b!4031754))

(assert (= (or b!4031758 b!4031755 b!4031763) bm!286955))

(assert (=> d!1194251 m!4622831))

(declare-fun m!4624537 () Bool)

(assert (=> d!1194251 m!4624537))

(assert (=> d!1194251 m!4623039))

(assert (=> b!4031764 m!4622831))

(declare-fun m!4624539 () Bool)

(assert (=> b!4031764 m!4624539))

(assert (=> b!4031760 m!4623041))

(assert (=> b!4031753 m!4622831))

(assert (=> b!4031753 m!4624539))

(assert (=> b!4031753 m!4624539))

(declare-fun m!4624541 () Bool)

(assert (=> b!4031753 m!4624541))

(assert (=> b!4031753 m!4622831))

(declare-fun m!4624543 () Bool)

(assert (=> b!4031753 m!4624543))

(assert (=> b!4031753 m!4624541))

(assert (=> b!4031753 m!4624543))

(declare-fun m!4624545 () Bool)

(assert (=> b!4031753 m!4624545))

(assert (=> b!4031754 m!4622831))

(assert (=> b!4031754 m!4624539))

(assert (=> bm!286955 m!4622831))

(assert (=> bm!286955 m!4624537))

(assert (=> b!4031762 m!4622831))

(assert (=> b!4031762 m!4624543))

(assert (=> b!4031762 m!4624543))

(declare-fun m!4624547 () Bool)

(assert (=> b!4031762 m!4624547))

(assert (=> b!4031752 m!4622831))

(assert (=> b!4031752 m!4624543))

(assert (=> b!4031752 m!4624543))

(assert (=> b!4031752 m!4624547))

(assert (=> b!4030617 d!1194251))

(assert (=> b!4030617 d!1193767))

(assert (=> b!4030617 d!1193769))

(assert (=> b!4030617 d!1193771))

(assert (=> b!4030805 d!1193753))

(assert (=> b!4030805 d!1193693))

(declare-fun d!1194253 () Bool)

(declare-fun c!696419 () Bool)

(assert (=> d!1194253 (= c!696419 ((_ is Nil!43187) lt!1433205))))

(declare-fun e!2501660 () (InoxSet C!23812))

(assert (=> d!1194253 (= (content!6554 lt!1433205) e!2501660)))

(declare-fun b!4031766 () Bool)

(assert (=> b!4031766 (= e!2501660 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031767 () Bool)

(assert (=> b!4031767 (= e!2501660 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433205) true) (content!6554 (t!334152 lt!1433205))))))

(assert (= (and d!1194253 c!696419) b!4031766))

(assert (= (and d!1194253 (not c!696419)) b!4031767))

(declare-fun m!4624557 () Bool)

(assert (=> b!4031767 m!4624557))

(declare-fun m!4624561 () Bool)

(assert (=> b!4031767 m!4624561))

(assert (=> d!1193651 d!1194253))

(assert (=> d!1193651 d!1193835))

(assert (=> d!1193651 d!1194037))

(assert (=> bm!286865 d!1194247))

(assert (=> d!1193575 d!1193685))

(declare-fun b!4031768 () Bool)

(declare-fun e!2501662 () Option!9322)

(declare-fun call!286961 () Option!9322)

(assert (=> b!4031768 (= e!2501662 call!286961)))

(declare-fun b!4031769 () Bool)

(declare-fun res!1641345 () Bool)

(declare-fun e!2501663 () Bool)

(assert (=> b!4031769 (=> (not res!1641345) (not e!2501663))))

(declare-fun lt!1433625 () Option!9322)

(assert (=> b!4031769 (= res!1641345 (matchR!5766 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433625)))) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433625))))))))

(declare-fun b!4031770 () Bool)

(assert (=> b!4031770 (= e!2501663 (contains!8572 (t!334154 rules!2999) (rule!9968 (_1!24269 (get!14170 lt!1433625)))))))

(declare-fun d!1194255 () Bool)

(declare-fun e!2501661 () Bool)

(assert (=> d!1194255 e!2501661))

(declare-fun res!1641340 () Bool)

(assert (=> d!1194255 (=> res!1641340 e!2501661)))

(assert (=> d!1194255 (= res!1641340 (isEmpty!25773 lt!1433625))))

(assert (=> d!1194255 (= lt!1433625 e!2501662)))

(declare-fun c!696420 () Bool)

(assert (=> d!1194255 (= c!696420 (and ((_ is Cons!43189) (t!334154 rules!2999)) ((_ is Nil!43189) (t!334154 (t!334154 rules!2999)))))))

(declare-fun lt!1433623 () Unit!62350)

(declare-fun lt!1433622 () Unit!62350)

(assert (=> d!1194255 (= lt!1433623 lt!1433622)))

(assert (=> d!1194255 (isPrefix!3995 lt!1433016 lt!1433016)))

(assert (=> d!1194255 (= lt!1433622 (lemmaIsPrefixRefl!2562 lt!1433016 lt!1433016))))

(assert (=> d!1194255 (rulesValidInductive!2513 thiss!21717 (t!334154 rules!2999))))

(assert (=> d!1194255 (= (maxPrefix!3795 thiss!21717 (t!334154 rules!2999) lt!1433016) lt!1433625)))

(declare-fun bm!286956 () Bool)

(assert (=> bm!286956 (= call!286961 (maxPrefixOneRule!2807 thiss!21717 (h!48609 (t!334154 rules!2999)) lt!1433016))))

(declare-fun b!4031771 () Bool)

(assert (=> b!4031771 (= e!2501661 e!2501663)))

(declare-fun res!1641341 () Bool)

(assert (=> b!4031771 (=> (not res!1641341) (not e!2501663))))

(assert (=> b!4031771 (= res!1641341 (isDefined!7092 lt!1433625))))

(declare-fun b!4031772 () Bool)

(declare-fun res!1641343 () Bool)

(assert (=> b!4031772 (=> (not res!1641343) (not e!2501663))))

(assert (=> b!4031772 (= res!1641343 (= (value!217512 (_1!24269 (get!14170 lt!1433625))) (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433625)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433625)))))))))

(declare-fun b!4031773 () Bool)

(declare-fun lt!1433624 () Option!9322)

(declare-fun lt!1433621 () Option!9322)

(assert (=> b!4031773 (= e!2501662 (ite (and ((_ is None!9321) lt!1433624) ((_ is None!9321) lt!1433621)) None!9321 (ite ((_ is None!9321) lt!1433621) lt!1433624 (ite ((_ is None!9321) lt!1433624) lt!1433621 (ite (>= (size!32277 (_1!24269 (v!39709 lt!1433624))) (size!32277 (_1!24269 (v!39709 lt!1433621)))) lt!1433624 lt!1433621)))))))

(assert (=> b!4031773 (= lt!1433624 call!286961)))

(assert (=> b!4031773 (= lt!1433621 (maxPrefix!3795 thiss!21717 (t!334154 (t!334154 rules!2999)) lt!1433016))))

(declare-fun b!4031774 () Bool)

(declare-fun res!1641344 () Bool)

(assert (=> b!4031774 (=> (not res!1641344) (not e!2501663))))

(assert (=> b!4031774 (= res!1641344 (< (size!32278 (_2!24269 (get!14170 lt!1433625))) (size!32278 lt!1433016)))))

(declare-fun b!4031775 () Bool)

(declare-fun res!1641342 () Bool)

(assert (=> b!4031775 (=> (not res!1641342) (not e!2501663))))

(assert (=> b!4031775 (= res!1641342 (= (++!11310 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433625)))) (_2!24269 (get!14170 lt!1433625))) lt!1433016))))

(declare-fun b!4031776 () Bool)

(declare-fun res!1641339 () Bool)

(assert (=> b!4031776 (=> (not res!1641339) (not e!2501663))))

(assert (=> b!4031776 (= res!1641339 (= (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433625)))) (originalCharacters!7508 (_1!24269 (get!14170 lt!1433625)))))))

(assert (= (and d!1194255 c!696420) b!4031768))

(assert (= (and d!1194255 (not c!696420)) b!4031773))

(assert (= (or b!4031768 b!4031773) bm!286956))

(assert (= (and d!1194255 (not res!1641340)) b!4031771))

(assert (= (and b!4031771 res!1641341) b!4031776))

(assert (= (and b!4031776 res!1641339) b!4031774))

(assert (= (and b!4031774 res!1641344) b!4031775))

(assert (= (and b!4031775 res!1641342) b!4031772))

(assert (= (and b!4031772 res!1641343) b!4031769))

(assert (= (and b!4031769 res!1641345) b!4031770))

(declare-fun m!4624583 () Bool)

(assert (=> b!4031769 m!4624583))

(declare-fun m!4624587 () Bool)

(assert (=> b!4031769 m!4624587))

(assert (=> b!4031769 m!4624587))

(declare-fun m!4624589 () Bool)

(assert (=> b!4031769 m!4624589))

(assert (=> b!4031769 m!4624589))

(declare-fun m!4624591 () Bool)

(assert (=> b!4031769 m!4624591))

(assert (=> b!4031776 m!4624583))

(assert (=> b!4031776 m!4624587))

(assert (=> b!4031776 m!4624587))

(assert (=> b!4031776 m!4624589))

(declare-fun m!4624595 () Bool)

(assert (=> b!4031771 m!4624595))

(assert (=> b!4031774 m!4624583))

(declare-fun m!4624597 () Bool)

(assert (=> b!4031774 m!4624597))

(assert (=> b!4031774 m!4623051))

(declare-fun m!4624599 () Bool)

(assert (=> d!1194255 m!4624599))

(assert (=> d!1194255 m!4623175))

(assert (=> d!1194255 m!4623177))

(assert (=> d!1194255 m!4623497))

(declare-fun m!4624601 () Bool)

(assert (=> b!4031773 m!4624601))

(assert (=> b!4031772 m!4624583))

(declare-fun m!4624603 () Bool)

(assert (=> b!4031772 m!4624603))

(assert (=> b!4031772 m!4624603))

(declare-fun m!4624605 () Bool)

(assert (=> b!4031772 m!4624605))

(assert (=> b!4031770 m!4624583))

(declare-fun m!4624611 () Bool)

(assert (=> b!4031770 m!4624611))

(assert (=> b!4031775 m!4624583))

(assert (=> b!4031775 m!4624587))

(assert (=> b!4031775 m!4624587))

(assert (=> b!4031775 m!4624589))

(assert (=> b!4031775 m!4624589))

(declare-fun m!4624617 () Bool)

(assert (=> b!4031775 m!4624617))

(declare-fun m!4624619 () Bool)

(assert (=> bm!286956 m!4624619))

(assert (=> b!4030886 d!1194255))

(declare-fun b!4031815 () Bool)

(declare-fun e!2501686 () List!43311)

(declare-fun list!16070 (IArray!26243) List!43311)

(assert (=> b!4031815 (= e!2501686 (list!16070 (xs!16425 (c!696124 (charsOf!4724 token!484)))))))

(declare-fun d!1194279 () Bool)

(declare-fun c!696434 () Bool)

(assert (=> d!1194279 (= c!696434 ((_ is Empty!13119) (c!696124 (charsOf!4724 token!484))))))

(declare-fun e!2501685 () List!43311)

(assert (=> d!1194279 (= (list!16068 (c!696124 (charsOf!4724 token!484))) e!2501685)))

(declare-fun b!4031814 () Bool)

(assert (=> b!4031814 (= e!2501685 e!2501686)))

(declare-fun c!696435 () Bool)

(assert (=> b!4031814 (= c!696435 ((_ is Leaf!20280) (c!696124 (charsOf!4724 token!484))))))

(declare-fun b!4031816 () Bool)

(assert (=> b!4031816 (= e!2501686 (++!11310 (list!16068 (left!32527 (c!696124 (charsOf!4724 token!484)))) (list!16068 (right!32857 (c!696124 (charsOf!4724 token!484))))))))

(declare-fun b!4031813 () Bool)

(assert (=> b!4031813 (= e!2501685 Nil!43187)))

(assert (= (and d!1194279 c!696434) b!4031813))

(assert (= (and d!1194279 (not c!696434)) b!4031814))

(assert (= (and b!4031814 c!696435) b!4031815))

(assert (= (and b!4031814 (not c!696435)) b!4031816))

(declare-fun m!4624629 () Bool)

(assert (=> b!4031815 m!4624629))

(declare-fun m!4624631 () Bool)

(assert (=> b!4031816 m!4624631))

(declare-fun m!4624633 () Bool)

(assert (=> b!4031816 m!4624633))

(assert (=> b!4031816 m!4624631))

(assert (=> b!4031816 m!4624633))

(declare-fun m!4624635 () Bool)

(assert (=> b!4031816 m!4624635))

(assert (=> d!1193695 d!1194279))

(declare-fun bs!590310 () Bool)

(declare-fun d!1194285 () Bool)

(assert (= bs!590310 (and d!1194285 d!1193803)))

(declare-fun lambda!127256 () Int)

(assert (=> bs!590310 (= (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (h!48609 rules!2999)))) (= lambda!127256 lambda!127235))))

(assert (=> d!1194285 true))

(assert (=> d!1194285 (< (dynLambda!18301 order!22579 (toValue!9432 (transformation!6908 (rule!9968 token!484)))) (dynLambda!18304 order!22585 lambda!127256))))

(assert (=> d!1194285 (= (equivClasses!2845 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) (Forall2!1083 lambda!127256))))

(declare-fun bs!590311 () Bool)

(assert (= bs!590311 d!1194285))

(declare-fun m!4624641 () Bool)

(assert (=> bs!590311 m!4624641))

(assert (=> b!4030975 d!1194285))

(declare-fun d!1194289 () Bool)

(declare-fun c!696440 () Bool)

(assert (=> d!1194289 (= c!696440 ((_ is Nil!43187) lt!1433217))))

(declare-fun e!2501696 () (InoxSet C!23812))

(assert (=> d!1194289 (= (content!6554 lt!1433217) e!2501696)))

(declare-fun b!4031834 () Bool)

(assert (=> b!4031834 (= e!2501696 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031835 () Bool)

(assert (=> b!4031835 (= e!2501696 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433217) true) (content!6554 (t!334152 lt!1433217))))))

(assert (= (and d!1194289 c!696440) b!4031834))

(assert (= (and d!1194289 (not c!696440)) b!4031835))

(declare-fun m!4624643 () Bool)

(assert (=> b!4031835 m!4624643))

(declare-fun m!4624645 () Bool)

(assert (=> b!4031835 m!4624645))

(assert (=> d!1193673 d!1194289))

(assert (=> d!1193673 d!1193879))

(declare-fun d!1194291 () Bool)

(declare-fun c!696441 () Bool)

(assert (=> d!1194291 (= c!696441 ((_ is Nil!43187) newSuffixResult!27))))

(declare-fun e!2501697 () (InoxSet C!23812))

(assert (=> d!1194291 (= (content!6554 newSuffixResult!27) e!2501697)))

(declare-fun b!4031836 () Bool)

(assert (=> b!4031836 (= e!2501697 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031837 () Bool)

(assert (=> b!4031837 (= e!2501697 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 newSuffixResult!27) true) (content!6554 (t!334152 newSuffixResult!27))))))

(assert (= (and d!1194291 c!696441) b!4031836))

(assert (= (and d!1194291 (not c!696441)) b!4031837))

(declare-fun m!4624647 () Bool)

(assert (=> b!4031837 m!4624647))

(declare-fun m!4624649 () Bool)

(assert (=> b!4031837 m!4624649))

(assert (=> d!1193673 d!1194291))

(declare-fun b!4031838 () Bool)

(declare-fun res!1641365 () Bool)

(declare-fun e!2501701 () Bool)

(assert (=> b!4031838 (=> res!1641365 e!2501701)))

(assert (=> b!4031838 (= res!1641365 (not (isEmpty!25772 (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))))))))

(declare-fun b!4031839 () Bool)

(declare-fun e!2501702 () Bool)

(assert (=> b!4031839 (= e!2501702 (matchR!5766 (derivativeStep!3543 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))) (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))))) (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))))))))

(declare-fun b!4031840 () Bool)

(assert (=> b!4031840 (= e!2501701 (not (= (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) (c!696125 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))))))))

(declare-fun b!4031841 () Bool)

(declare-fun res!1641369 () Bool)

(declare-fun e!2501703 () Bool)

(assert (=> b!4031841 (=> (not res!1641369) (not e!2501703))))

(declare-fun call!286963 () Bool)

(assert (=> b!4031841 (= res!1641369 (not call!286963))))

(declare-fun d!1194293 () Bool)

(declare-fun e!2501704 () Bool)

(assert (=> d!1194293 e!2501704))

(declare-fun c!696442 () Bool)

(assert (=> d!1194293 (= c!696442 ((_ is EmptyExpr!11813) (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))))))

(declare-fun lt!1433634 () Bool)

(assert (=> d!1194293 (= lt!1433634 e!2501702)))

(declare-fun c!696444 () Bool)

(assert (=> d!1194293 (= c!696444 (isEmpty!25772 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))))))

(assert (=> d!1194293 (validRegex!5338 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))

(assert (=> d!1194293 (= (matchR!5766 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))) (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) lt!1433634)))

(declare-fun b!4031842 () Bool)

(declare-fun res!1641366 () Bool)

(declare-fun e!2501698 () Bool)

(assert (=> b!4031842 (=> res!1641366 e!2501698)))

(assert (=> b!4031842 (= res!1641366 e!2501703)))

(declare-fun res!1641368 () Bool)

(assert (=> b!4031842 (=> (not res!1641368) (not e!2501703))))

(assert (=> b!4031842 (= res!1641368 lt!1433634)))

(declare-fun b!4031843 () Bool)

(declare-fun e!2501699 () Bool)

(assert (=> b!4031843 (= e!2501699 (not lt!1433634))))

(declare-fun b!4031844 () Bool)

(assert (=> b!4031844 (= e!2501704 (= lt!1433634 call!286963))))

(declare-fun b!4031845 () Bool)

(declare-fun res!1641370 () Bool)

(assert (=> b!4031845 (=> res!1641370 e!2501698)))

(assert (=> b!4031845 (= res!1641370 (not ((_ is ElementMatch!11813) (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))))

(assert (=> b!4031845 (= e!2501699 e!2501698)))

(declare-fun b!4031846 () Bool)

(assert (=> b!4031846 (= e!2501702 (nullable!4138 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))))))

(declare-fun bm!286958 () Bool)

(assert (=> bm!286958 (= call!286963 (isEmpty!25772 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))))))

(declare-fun b!4031847 () Bool)

(declare-fun e!2501700 () Bool)

(assert (=> b!4031847 (= e!2501698 e!2501700)))

(declare-fun res!1641372 () Bool)

(assert (=> b!4031847 (=> (not res!1641372) (not e!2501700))))

(assert (=> b!4031847 (= res!1641372 (not lt!1433634))))

(declare-fun b!4031848 () Bool)

(declare-fun res!1641371 () Bool)

(assert (=> b!4031848 (=> (not res!1641371) (not e!2501703))))

(assert (=> b!4031848 (= res!1641371 (isEmpty!25772 (tail!6273 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204)))))))))

(declare-fun b!4031849 () Bool)

(assert (=> b!4031849 (= e!2501700 e!2501701)))

(declare-fun res!1641367 () Bool)

(assert (=> b!4031849 (=> res!1641367 e!2501701)))

(assert (=> b!4031849 (= res!1641367 call!286963)))

(declare-fun b!4031850 () Bool)

(assert (=> b!4031850 (= e!2501703 (= (head!8541 (list!16066 (charsOf!4724 (_1!24269 (get!14170 lt!1433204))))) (c!696125 (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))))))

(declare-fun b!4031851 () Bool)

(assert (=> b!4031851 (= e!2501704 e!2501699)))

(declare-fun c!696443 () Bool)

(assert (=> b!4031851 (= c!696443 ((_ is EmptyLang!11813) (regex!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))))))

(assert (= (and d!1194293 c!696444) b!4031846))

(assert (= (and d!1194293 (not c!696444)) b!4031839))

(assert (= (and d!1194293 c!696442) b!4031844))

(assert (= (and d!1194293 (not c!696442)) b!4031851))

(assert (= (and b!4031851 c!696443) b!4031843))

(assert (= (and b!4031851 (not c!696443)) b!4031845))

(assert (= (and b!4031845 (not res!1641370)) b!4031842))

(assert (= (and b!4031842 res!1641368) b!4031841))

(assert (= (and b!4031841 res!1641369) b!4031848))

(assert (= (and b!4031848 res!1641371) b!4031850))

(assert (= (and b!4031842 (not res!1641366)) b!4031847))

(assert (= (and b!4031847 res!1641372) b!4031849))

(assert (= (and b!4031849 (not res!1641367)) b!4031838))

(assert (= (and b!4031838 (not res!1641365)) b!4031840))

(assert (= (or b!4031844 b!4031841 b!4031849) bm!286958))

(assert (=> d!1194293 m!4623211))

(declare-fun m!4624667 () Bool)

(assert (=> d!1194293 m!4624667))

(declare-fun m!4624669 () Bool)

(assert (=> d!1194293 m!4624669))

(assert (=> b!4031850 m!4623211))

(declare-fun m!4624671 () Bool)

(assert (=> b!4031850 m!4624671))

(declare-fun m!4624673 () Bool)

(assert (=> b!4031846 m!4624673))

(assert (=> b!4031839 m!4623211))

(assert (=> b!4031839 m!4624671))

(assert (=> b!4031839 m!4624671))

(declare-fun m!4624675 () Bool)

(assert (=> b!4031839 m!4624675))

(assert (=> b!4031839 m!4623211))

(declare-fun m!4624679 () Bool)

(assert (=> b!4031839 m!4624679))

(assert (=> b!4031839 m!4624675))

(assert (=> b!4031839 m!4624679))

(declare-fun m!4624681 () Bool)

(assert (=> b!4031839 m!4624681))

(assert (=> b!4031840 m!4623211))

(assert (=> b!4031840 m!4624671))

(assert (=> bm!286958 m!4623211))

(assert (=> bm!286958 m!4624667))

(assert (=> b!4031848 m!4623211))

(assert (=> b!4031848 m!4624679))

(assert (=> b!4031848 m!4624679))

(declare-fun m!4624683 () Bool)

(assert (=> b!4031848 m!4624683))

(assert (=> b!4031838 m!4623211))

(assert (=> b!4031838 m!4624679))

(assert (=> b!4031838 m!4624679))

(assert (=> b!4031838 m!4624683))

(assert (=> b!4030895 d!1194293))

(assert (=> b!4030895 d!1193853))

(assert (=> b!4030895 d!1194063))

(assert (=> b!4030895 d!1194065))

(declare-fun d!1194299 () Bool)

(declare-fun c!696447 () Bool)

(assert (=> d!1194299 (= c!696447 ((_ is Nil!43187) lt!1433024))))

(declare-fun e!2501708 () (InoxSet C!23812))

(assert (=> d!1194299 (= (content!6554 lt!1433024) e!2501708)))

(declare-fun b!4031858 () Bool)

(assert (=> b!4031858 (= e!2501708 ((as const (Array C!23812 Bool)) false))))

(declare-fun b!4031859 () Bool)

(assert (=> b!4031859 (= e!2501708 ((_ map or) (store ((as const (Array C!23812 Bool)) false) (h!48607 lt!1433024) true) (content!6554 (t!334152 lt!1433024))))))

(assert (= (and d!1194299 c!696447) b!4031858))

(assert (= (and d!1194299 (not c!696447)) b!4031859))

(declare-fun m!4624691 () Bool)

(assert (=> b!4031859 m!4624691))

(declare-fun m!4624693 () Bool)

(assert (=> b!4031859 m!4624693))

(assert (=> d!1193473 d!1194299))

(assert (=> d!1193473 d!1193879))

(assert (=> d!1193473 d!1194233))

(assert (=> b!4030622 d!1193771))

(declare-fun d!1194305 () Bool)

(assert (=> d!1194305 (= (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099))))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099))))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099))))))))

(declare-fun b_lambda!117617 () Bool)

(assert (=> (not b_lambda!117617) (not d!1194305)))

(declare-fun t!334262 () Bool)

(declare-fun tb!242187 () Bool)

(assert (=> (and b!4030388 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334262) tb!242187))

(declare-fun result!293568 () Bool)

(assert (=> tb!242187 (= result!293568 (inv!21 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099))))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))))))))

(declare-fun m!4624697 () Bool)

(assert (=> tb!242187 m!4624697))

(assert (=> d!1194305 t!334262))

(declare-fun b_and!309849 () Bool)

(assert (= b_and!309843 (and (=> t!334262 result!293568) b_and!309849)))

(declare-fun t!334264 () Bool)

(declare-fun tb!242189 () Bool)

(assert (=> (and b!4030385 (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334264) tb!242189))

(declare-fun result!293570 () Bool)

(assert (= result!293570 result!293568))

(assert (=> d!1194305 t!334264))

(declare-fun b_and!309851 () Bool)

(assert (= b_and!309845 (and (=> t!334264 result!293570) b_and!309851)))

(declare-fun t!334266 () Bool)

(declare-fun tb!242191 () Bool)

(assert (=> (and b!4030992 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334266) tb!242191))

(declare-fun result!293572 () Bool)

(assert (= result!293572 result!293568))

(assert (=> d!1194305 t!334266))

(declare-fun b_and!309853 () Bool)

(assert (= b_and!309847 (and (=> t!334266 result!293572) b_and!309853)))

(assert (=> d!1194305 m!4622825))

(declare-fun m!4624699 () Bool)

(assert (=> d!1194305 m!4624699))

(assert (=> b!4030622 d!1194305))

(declare-fun d!1194309 () Bool)

(assert (=> d!1194309 (= (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))) (fromListB!2332 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433099)))))))

(declare-fun bs!590312 () Bool)

(assert (= bs!590312 d!1194309))

(declare-fun m!4624701 () Bool)

(assert (=> bs!590312 m!4624701))

(assert (=> b!4030622 d!1194309))

(declare-fun d!1194311 () Bool)

(assert (=> d!1194311 (= (isEmpty!25772 (originalCharacters!7508 token!484)) ((_ is Nil!43187) (originalCharacters!7508 token!484)))))

(assert (=> d!1193699 d!1194311))

(declare-fun d!1194313 () Bool)

(declare-fun lt!1433638 () Int)

(assert (=> d!1194313 (>= lt!1433638 0)))

(declare-fun e!2501713 () Int)

(assert (=> d!1194313 (= lt!1433638 e!2501713)))

(declare-fun c!696448 () Bool)

(assert (=> d!1194313 (= c!696448 ((_ is Nil!43187) lt!1433212))))

(assert (=> d!1194313 (= (size!32278 lt!1433212) lt!1433638)))

(declare-fun b!4031864 () Bool)

(assert (=> b!4031864 (= e!2501713 0)))

(declare-fun b!4031865 () Bool)

(assert (=> b!4031865 (= e!2501713 (+ 1 (size!32278 (t!334152 lt!1433212))))))

(assert (= (and d!1194313 c!696448) b!4031864))

(assert (= (and d!1194313 (not c!696448)) b!4031865))

(declare-fun m!4624703 () Bool)

(assert (=> b!4031865 m!4624703))

(assert (=> b!4030928 d!1194313))

(assert (=> b!4030928 d!1194239))

(assert (=> b!4030928 d!1193653))

(assert (=> b!4030898 d!1193853))

(declare-fun d!1194315 () Bool)

(assert (=> d!1194315 (= (apply!10097 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204))))) (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204))))))))

(declare-fun b_lambda!117619 () Bool)

(assert (=> (not b_lambda!117619) (not d!1194315)))

(declare-fun tb!242193 () Bool)

(declare-fun t!334268 () Bool)

(assert (=> (and b!4030388 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334268) tb!242193))

(declare-fun result!293574 () Bool)

(assert (=> tb!242193 (= result!293574 (inv!21 (dynLambda!18297 (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204))))) (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204)))))))))

(declare-fun m!4624705 () Bool)

(assert (=> tb!242193 m!4624705))

(assert (=> d!1194315 t!334268))

(declare-fun b_and!309855 () Bool)

(assert (= b_and!309849 (and (=> t!334268 result!293574) b_and!309855)))

(declare-fun tb!242195 () Bool)

(declare-fun t!334270 () Bool)

(assert (=> (and b!4030385 (= (toValue!9432 (transformation!6908 (rule!9968 token!484))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334270) tb!242195))

(declare-fun result!293576 () Bool)

(assert (= result!293576 result!293574))

(assert (=> d!1194315 t!334270))

(declare-fun b_and!309857 () Bool)

(assert (= b_and!309851 (and (=> t!334270 result!293576) b_and!309857)))

(declare-fun tb!242197 () Bool)

(declare-fun t!334272 () Bool)

(assert (=> (and b!4030992 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334272) tb!242197))

(declare-fun result!293578 () Bool)

(assert (= result!293578 result!293574))

(assert (=> d!1194315 t!334272))

(declare-fun b_and!309859 () Bool)

(assert (= b_and!309853 (and (=> t!334272 result!293578) b_and!309859)))

(assert (=> d!1194315 m!4623223))

(declare-fun m!4624713 () Bool)

(assert (=> d!1194315 m!4624713))

(assert (=> b!4030898 d!1194315))

(declare-fun d!1194321 () Bool)

(assert (=> d!1194321 (= (seqFromList!5125 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204)))) (fromListB!2332 (originalCharacters!7508 (_1!24269 (get!14170 lt!1433204)))))))

(declare-fun bs!590314 () Bool)

(assert (= bs!590314 d!1194321))

(declare-fun m!4624715 () Bool)

(assert (=> bs!590314 m!4624715))

(assert (=> b!4030898 d!1194321))

(assert (=> d!1193707 d!1193705))

(declare-fun d!1194323 () Bool)

(assert (=> d!1194323 (ruleValid!2838 thiss!21717 (rule!9968 token!484))))

(assert (=> d!1194323 true))

(declare-fun _$65!1476 () Unit!62350)

(assert (=> d!1194323 (= (choose!24390 thiss!21717 (rule!9968 token!484) rules!2999) _$65!1476)))

(declare-fun bs!590315 () Bool)

(assert (= bs!590315 d!1194323))

(assert (=> bs!590315 m!4622519))

(assert (=> d!1193707 d!1194323))

(declare-fun d!1194335 () Bool)

(declare-fun lt!1433644 () Bool)

(assert (=> d!1194335 (= lt!1433644 (select (content!6555 rules!2999) (rule!9968 token!484)))))

(declare-fun e!2501724 () Bool)

(assert (=> d!1194335 (= lt!1433644 e!2501724)))

(declare-fun res!1641383 () Bool)

(assert (=> d!1194335 (=> (not res!1641383) (not e!2501724))))

(assert (=> d!1194335 (= res!1641383 ((_ is Cons!43189) rules!2999))))

(assert (=> d!1194335 (= (contains!8572 rules!2999 (rule!9968 token!484)) lt!1433644)))

(declare-fun b!4031880 () Bool)

(declare-fun e!2501723 () Bool)

(assert (=> b!4031880 (= e!2501724 e!2501723)))

(declare-fun res!1641384 () Bool)

(assert (=> b!4031880 (=> res!1641384 e!2501723)))

(assert (=> b!4031880 (= res!1641384 (= (h!48609 rules!2999) (rule!9968 token!484)))))

(declare-fun b!4031881 () Bool)

(assert (=> b!4031881 (= e!2501723 (contains!8572 (t!334154 rules!2999) (rule!9968 token!484)))))

(assert (= (and d!1194335 res!1641383) b!4031880))

(assert (= (and b!4031880 (not res!1641384)) b!4031881))

(assert (=> d!1194335 m!4622995))

(declare-fun m!4624731 () Bool)

(assert (=> d!1194335 m!4624731))

(declare-fun m!4624735 () Bool)

(assert (=> b!4031881 m!4624735))

(assert (=> d!1193707 d!1194335))

(declare-fun d!1194339 () Bool)

(declare-fun charsToBigInt!0 (List!43312 Int) Int)

(assert (=> d!1194339 (= (inv!15 (value!217512 token!484)) (= (charsToBigInt!0 (text!50415 (value!217512 token!484)) 0) (value!217507 (value!217512 token!484))))))

(declare-fun bs!590316 () Bool)

(assert (= bs!590316 d!1194339))

(declare-fun m!4624751 () Bool)

(assert (=> bs!590316 m!4624751))

(assert (=> b!4030489 d!1194339))

(declare-fun d!1194345 () Bool)

(declare-fun lt!1433646 () Int)

(assert (=> d!1194345 (>= lt!1433646 0)))

(declare-fun e!2501733 () Int)

(assert (=> d!1194345 (= lt!1433646 e!2501733)))

(declare-fun c!696457 () Bool)

(assert (=> d!1194345 (= c!696457 ((_ is Nil!43187) lt!1433205))))

(assert (=> d!1194345 (= (size!32278 lt!1433205) lt!1433646)))

(declare-fun b!4031897 () Bool)

(assert (=> b!4031897 (= e!2501733 0)))

(declare-fun b!4031898 () Bool)

(assert (=> b!4031898 (= e!2501733 (+ 1 (size!32278 (t!334152 lt!1433205))))))

(assert (= (and d!1194345 c!696457) b!4031897))

(assert (= (and d!1194345 (not c!696457)) b!4031898))

(declare-fun m!4624753 () Bool)

(assert (=> b!4031898 m!4624753))

(assert (=> b!4030905 d!1194345))

(assert (=> b!4030905 d!1193693))

(assert (=> b!4030905 d!1193653))

(declare-fun d!1194347 () Bool)

(declare-fun c!696461 () Bool)

(assert (=> d!1194347 (= c!696461 ((_ is Nil!43189) rules!2999))))

(declare-fun e!2501743 () (InoxSet Rule!13616))

(assert (=> d!1194347 (= (content!6555 rules!2999) e!2501743)))

(declare-fun b!4031916 () Bool)

(assert (=> b!4031916 (= e!2501743 ((as const (Array Rule!13616 Bool)) false))))

(declare-fun b!4031917 () Bool)

(assert (=> b!4031917 (= e!2501743 ((_ map or) (store ((as const (Array Rule!13616 Bool)) false) (h!48609 rules!2999) true) (content!6555 (t!334154 rules!2999))))))

(assert (= (and d!1194347 c!696461) b!4031916))

(assert (= (and d!1194347 (not c!696461)) b!4031917))

(declare-fun m!4624765 () Bool)

(assert (=> b!4031917 m!4624765))

(assert (=> b!4031917 m!4623839))

(assert (=> d!1193569 d!1194347))

(declare-fun b!4031919 () Bool)

(declare-fun res!1641405 () Bool)

(declare-fun e!2501745 () Bool)

(assert (=> b!4031919 (=> (not res!1641405) (not e!2501745))))

(assert (=> b!4031919 (= res!1641405 (= (head!8541 (tail!6273 lt!1433006)) (head!8541 (tail!6273 lt!1432993))))))

(declare-fun b!4031921 () Bool)

(declare-fun e!2501744 () Bool)

(assert (=> b!4031921 (= e!2501744 (>= (size!32278 (tail!6273 lt!1432993)) (size!32278 (tail!6273 lt!1433006))))))

(declare-fun b!4031920 () Bool)

(assert (=> b!4031920 (= e!2501745 (isPrefix!3995 (tail!6273 (tail!6273 lt!1433006)) (tail!6273 (tail!6273 lt!1432993))))))

(declare-fun b!4031918 () Bool)

(declare-fun e!2501746 () Bool)

(assert (=> b!4031918 (= e!2501746 e!2501745)))

(declare-fun res!1641407 () Bool)

(assert (=> b!4031918 (=> (not res!1641407) (not e!2501745))))

(assert (=> b!4031918 (= res!1641407 (not ((_ is Nil!43187) (tail!6273 lt!1432993))))))

(declare-fun d!1194359 () Bool)

(assert (=> d!1194359 e!2501744))

(declare-fun res!1641408 () Bool)

(assert (=> d!1194359 (=> res!1641408 e!2501744)))

(declare-fun lt!1433654 () Bool)

(assert (=> d!1194359 (= res!1641408 (not lt!1433654))))

(assert (=> d!1194359 (= lt!1433654 e!2501746)))

(declare-fun res!1641406 () Bool)

(assert (=> d!1194359 (=> res!1641406 e!2501746)))

(assert (=> d!1194359 (= res!1641406 ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> d!1194359 (= (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1432993)) lt!1433654)))

(assert (= (and d!1194359 (not res!1641406)) b!4031918))

(assert (= (and b!4031918 res!1641407) b!4031919))

(assert (= (and b!4031919 res!1641405) b!4031920))

(assert (= (and d!1194359 (not res!1641408)) b!4031921))

(assert (=> b!4031919 m!4622643))

(assert (=> b!4031919 m!4623669))

(assert (=> b!4031919 m!4623199))

(declare-fun m!4624767 () Bool)

(assert (=> b!4031919 m!4624767))

(assert (=> b!4031921 m!4623199))

(declare-fun m!4624769 () Bool)

(assert (=> b!4031921 m!4624769))

(assert (=> b!4031921 m!4622643))

(assert (=> b!4031921 m!4623675))

(assert (=> b!4031920 m!4622643))

(assert (=> b!4031920 m!4623677))

(assert (=> b!4031920 m!4623199))

(declare-fun m!4624771 () Bool)

(assert (=> b!4031920 m!4624771))

(assert (=> b!4031920 m!4623677))

(assert (=> b!4031920 m!4624771))

(declare-fun m!4624773 () Bool)

(assert (=> b!4031920 m!4624773))

(assert (=> b!4030892 d!1194359))

(assert (=> b!4030892 d!1193823))

(declare-fun d!1194361 () Bool)

(assert (=> d!1194361 (= (tail!6273 lt!1432993) (t!334152 lt!1432993))))

(assert (=> b!4030892 d!1194361))

(declare-fun b!4031923 () Bool)

(declare-fun res!1641409 () Bool)

(declare-fun e!2501748 () Bool)

(assert (=> b!4031923 (=> (not res!1641409) (not e!2501748))))

(assert (=> b!4031923 (= res!1641409 (= (head!8541 (tail!6273 lt!1433006)) (head!8541 (tail!6273 lt!1433016))))))

(declare-fun b!4031925 () Bool)

(declare-fun e!2501747 () Bool)

(assert (=> b!4031925 (= e!2501747 (>= (size!32278 (tail!6273 lt!1433016)) (size!32278 (tail!6273 lt!1433006))))))

(declare-fun b!4031924 () Bool)

(assert (=> b!4031924 (= e!2501748 (isPrefix!3995 (tail!6273 (tail!6273 lt!1433006)) (tail!6273 (tail!6273 lt!1433016))))))

(declare-fun b!4031922 () Bool)

(declare-fun e!2501749 () Bool)

(assert (=> b!4031922 (= e!2501749 e!2501748)))

(declare-fun res!1641411 () Bool)

(assert (=> b!4031922 (=> (not res!1641411) (not e!2501748))))

(assert (=> b!4031922 (= res!1641411 (not ((_ is Nil!43187) (tail!6273 lt!1433016))))))

(declare-fun d!1194363 () Bool)

(assert (=> d!1194363 e!2501747))

(declare-fun res!1641412 () Bool)

(assert (=> d!1194363 (=> res!1641412 e!2501747)))

(declare-fun lt!1433655 () Bool)

(assert (=> d!1194363 (= res!1641412 (not lt!1433655))))

(assert (=> d!1194363 (= lt!1433655 e!2501749)))

(declare-fun res!1641410 () Bool)

(assert (=> d!1194363 (=> res!1641410 e!2501749)))

(assert (=> d!1194363 (= res!1641410 ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> d!1194363 (= (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 lt!1433016)) lt!1433655)))

(assert (= (and d!1194363 (not res!1641410)) b!4031922))

(assert (= (and b!4031922 res!1641411) b!4031923))

(assert (= (and b!4031923 res!1641409) b!4031924))

(assert (= (and d!1194363 (not res!1641412)) b!4031925))

(assert (=> b!4031923 m!4622643))

(assert (=> b!4031923 m!4623669))

(assert (=> b!4031923 m!4623057))

(declare-fun m!4624775 () Bool)

(assert (=> b!4031923 m!4624775))

(assert (=> b!4031925 m!4623057))

(declare-fun m!4624777 () Bool)

(assert (=> b!4031925 m!4624777))

(assert (=> b!4031925 m!4622643))

(assert (=> b!4031925 m!4623675))

(assert (=> b!4031924 m!4622643))

(assert (=> b!4031924 m!4623677))

(assert (=> b!4031924 m!4623057))

(declare-fun m!4624779 () Bool)

(assert (=> b!4031924 m!4624779))

(assert (=> b!4031924 m!4623677))

(assert (=> b!4031924 m!4624779))

(declare-fun m!4624783 () Bool)

(assert (=> b!4031924 m!4624783))

(assert (=> b!4030775 d!1194363))

(assert (=> b!4030775 d!1193823))

(declare-fun d!1194365 () Bool)

(assert (=> d!1194365 (= (tail!6273 lt!1433016) (t!334152 lt!1433016))))

(assert (=> b!4030775 d!1194365))

(declare-fun b!4031927 () Bool)

(declare-fun res!1641413 () Bool)

(declare-fun e!2501751 () Bool)

(assert (=> b!4031927 (=> (not res!1641413) (not e!2501751))))

(assert (=> b!4031927 (= res!1641413 (= (head!8541 (tail!6273 lt!1433006)) (head!8541 (tail!6273 prefix!494))))))

(declare-fun b!4031929 () Bool)

(declare-fun e!2501750 () Bool)

(assert (=> b!4031929 (= e!2501750 (>= (size!32278 (tail!6273 prefix!494)) (size!32278 (tail!6273 lt!1433006))))))

(declare-fun b!4031928 () Bool)

(assert (=> b!4031928 (= e!2501751 (isPrefix!3995 (tail!6273 (tail!6273 lt!1433006)) (tail!6273 (tail!6273 prefix!494))))))

(declare-fun b!4031926 () Bool)

(declare-fun e!2501752 () Bool)

(assert (=> b!4031926 (= e!2501752 e!2501751)))

(declare-fun res!1641415 () Bool)

(assert (=> b!4031926 (=> (not res!1641415) (not e!2501751))))

(assert (=> b!4031926 (= res!1641415 (not ((_ is Nil!43187) (tail!6273 prefix!494))))))

(declare-fun d!1194367 () Bool)

(assert (=> d!1194367 e!2501750))

(declare-fun res!1641416 () Bool)

(assert (=> d!1194367 (=> res!1641416 e!2501750)))

(declare-fun lt!1433656 () Bool)

(assert (=> d!1194367 (= res!1641416 (not lt!1433656))))

(assert (=> d!1194367 (= lt!1433656 e!2501752)))

(declare-fun res!1641414 () Bool)

(assert (=> d!1194367 (=> res!1641414 e!2501752)))

(assert (=> d!1194367 (= res!1641414 ((_ is Nil!43187) (tail!6273 lt!1433006)))))

(assert (=> d!1194367 (= (isPrefix!3995 (tail!6273 lt!1433006) (tail!6273 prefix!494)) lt!1433656)))

(assert (= (and d!1194367 (not res!1641414)) b!4031926))

(assert (= (and b!4031926 res!1641415) b!4031927))

(assert (= (and b!4031927 res!1641413) b!4031928))

(assert (= (and d!1194367 (not res!1641416)) b!4031929))

(assert (=> b!4031927 m!4622643))

(assert (=> b!4031927 m!4623669))

(assert (=> b!4031927 m!4622631))

(assert (=> b!4031927 m!4624247))

(assert (=> b!4031929 m!4622631))

(assert (=> b!4031929 m!4624249))

(assert (=> b!4031929 m!4622643))

(assert (=> b!4031929 m!4623675))

(assert (=> b!4031928 m!4622643))

(assert (=> b!4031928 m!4623677))

(assert (=> b!4031928 m!4622631))

(assert (=> b!4031928 m!4624251))

(assert (=> b!4031928 m!4623677))

(assert (=> b!4031928 m!4624251))

(declare-fun m!4624801 () Bool)

(assert (=> b!4031928 m!4624801))

(assert (=> b!4030444 d!1194367))

(assert (=> b!4030444 d!1193823))

(assert (=> b!4030444 d!1194087))

(declare-fun d!1194369 () Bool)

(declare-fun lt!1433657 () Int)

(assert (=> d!1194369 (>= lt!1433657 0)))

(declare-fun e!2501753 () Int)

(assert (=> d!1194369 (= lt!1433657 e!2501753)))

(declare-fun c!696462 () Bool)

(assert (=> d!1194369 (= c!696462 ((_ is Nil!43187) (t!334152 newSuffix!27)))))

(assert (=> d!1194369 (= (size!32278 (t!334152 newSuffix!27)) lt!1433657)))

(declare-fun b!4031930 () Bool)

(assert (=> b!4031930 (= e!2501753 0)))

(declare-fun b!4031931 () Bool)

(assert (=> b!4031931 (= e!2501753 (+ 1 (size!32278 (t!334152 (t!334152 newSuffix!27)))))))

(assert (= (and d!1194369 c!696462) b!4031930))

(assert (= (and d!1194369 (not c!696462)) b!4031931))

(declare-fun m!4624805 () Bool)

(assert (=> b!4031931 m!4624805))

(assert (=> b!4030914 d!1194369))

(assert (=> b!4030917 d!1194285))

(declare-fun b!4031936 () Bool)

(declare-fun e!2501756 () Bool)

(declare-fun tp!1225173 () Bool)

(assert (=> b!4031936 (= e!2501756 (and tp_is_empty!20597 tp!1225173))))

(assert (=> b!4031015 (= tp!1225158 e!2501756)))

(assert (= (and b!4031015 ((_ is Cons!43187) (t!334152 (t!334152 newSuffix!27)))) b!4031936))

(declare-fun tp!1225181 () Bool)

(declare-fun e!2501768 () Bool)

(declare-fun b!4031959 () Bool)

(declare-fun tp!1225182 () Bool)

(assert (=> b!4031959 (= e!2501768 (and (inv!57696 (left!32527 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))))) tp!1225181 (inv!57696 (right!32857 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))))) tp!1225182))))

(declare-fun b!4031961 () Bool)

(declare-fun e!2501769 () Bool)

(declare-fun tp!1225180 () Bool)

(assert (=> b!4031961 (= e!2501769 tp!1225180)))

(declare-fun b!4031960 () Bool)

(declare-fun inv!57703 (IArray!26243) Bool)

(assert (=> b!4031960 (= e!2501768 (and (inv!57703 (xs!16425 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))))) e!2501769))))

(assert (=> b!4030962 (= tp!1225124 (and (inv!57696 (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484)))) e!2501768))))

(assert (= (and b!4030962 ((_ is Node!13119) (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))))) b!4031959))

(assert (= b!4031960 b!4031961))

(assert (= (and b!4030962 ((_ is Leaf!20280) (c!696124 (dynLambda!18298 (toChars!9291 (transformation!6908 (rule!9968 token!484))) (value!217512 token!484))))) b!4031960))

(declare-fun m!4624833 () Bool)

(assert (=> b!4031959 m!4624833))

(declare-fun m!4624835 () Bool)

(assert (=> b!4031959 m!4624835))

(declare-fun m!4624837 () Bool)

(assert (=> b!4031960 m!4624837))

(assert (=> b!4030962 m!4623335))

(declare-fun b!4031963 () Bool)

(declare-fun e!2501770 () Bool)

(declare-fun tp!1225184 () Bool)

(declare-fun tp!1225187 () Bool)

(assert (=> b!4031963 (= e!2501770 (and tp!1225184 tp!1225187))))

(assert (=> b!4031019 (= tp!1225162 e!2501770)))

(declare-fun b!4031965 () Bool)

(declare-fun tp!1225186 () Bool)

(declare-fun tp!1225185 () Bool)

(assert (=> b!4031965 (= e!2501770 (and tp!1225186 tp!1225185))))

(declare-fun b!4031964 () Bool)

(declare-fun tp!1225183 () Bool)

(assert (=> b!4031964 (= e!2501770 tp!1225183)))

(declare-fun b!4031962 () Bool)

(assert (=> b!4031962 (= e!2501770 tp_is_empty!20597)))

(assert (= (and b!4031019 ((_ is ElementMatch!11813) (regOne!24139 (regex!6908 (h!48609 rules!2999))))) b!4031962))

(assert (= (and b!4031019 ((_ is Concat!18952) (regOne!24139 (regex!6908 (h!48609 rules!2999))))) b!4031963))

(assert (= (and b!4031019 ((_ is Star!11813) (regOne!24139 (regex!6908 (h!48609 rules!2999))))) b!4031964))

(assert (= (and b!4031019 ((_ is Union!11813) (regOne!24139 (regex!6908 (h!48609 rules!2999))))) b!4031965))

(declare-fun b!4031967 () Bool)

(declare-fun e!2501771 () Bool)

(declare-fun tp!1225189 () Bool)

(declare-fun tp!1225192 () Bool)

(assert (=> b!4031967 (= e!2501771 (and tp!1225189 tp!1225192))))

(assert (=> b!4031019 (= tp!1225161 e!2501771)))

(declare-fun b!4031969 () Bool)

(declare-fun tp!1225191 () Bool)

(declare-fun tp!1225190 () Bool)

(assert (=> b!4031969 (= e!2501771 (and tp!1225191 tp!1225190))))

(declare-fun b!4031968 () Bool)

(declare-fun tp!1225188 () Bool)

(assert (=> b!4031968 (= e!2501771 tp!1225188)))

(declare-fun b!4031966 () Bool)

(assert (=> b!4031966 (= e!2501771 tp_is_empty!20597)))

(assert (= (and b!4031019 ((_ is ElementMatch!11813) (regTwo!24139 (regex!6908 (h!48609 rules!2999))))) b!4031966))

(assert (= (and b!4031019 ((_ is Concat!18952) (regTwo!24139 (regex!6908 (h!48609 rules!2999))))) b!4031967))

(assert (= (and b!4031019 ((_ is Star!11813) (regTwo!24139 (regex!6908 (h!48609 rules!2999))))) b!4031968))

(assert (= (and b!4031019 ((_ is Union!11813) (regTwo!24139 (regex!6908 (h!48609 rules!2999))))) b!4031969))

(declare-fun b!4031971 () Bool)

(declare-fun e!2501772 () Bool)

(declare-fun tp!1225194 () Bool)

(declare-fun tp!1225197 () Bool)

(assert (=> b!4031971 (= e!2501772 (and tp!1225194 tp!1225197))))

(assert (=> b!4031010 (= tp!1225152 e!2501772)))

(declare-fun b!4031973 () Bool)

(declare-fun tp!1225196 () Bool)

(declare-fun tp!1225195 () Bool)

(assert (=> b!4031973 (= e!2501772 (and tp!1225196 tp!1225195))))

(declare-fun b!4031972 () Bool)

(declare-fun tp!1225193 () Bool)

(assert (=> b!4031972 (= e!2501772 tp!1225193)))

(declare-fun b!4031970 () Bool)

(assert (=> b!4031970 (= e!2501772 tp_is_empty!20597)))

(assert (= (and b!4031010 ((_ is ElementMatch!11813) (regOne!24138 (regex!6908 (rule!9968 token!484))))) b!4031970))

(assert (= (and b!4031010 ((_ is Concat!18952) (regOne!24138 (regex!6908 (rule!9968 token!484))))) b!4031971))

(assert (= (and b!4031010 ((_ is Star!11813) (regOne!24138 (regex!6908 (rule!9968 token!484))))) b!4031972))

(assert (= (and b!4031010 ((_ is Union!11813) (regOne!24138 (regex!6908 (rule!9968 token!484))))) b!4031973))

(declare-fun b!4031975 () Bool)

(declare-fun e!2501773 () Bool)

(declare-fun tp!1225199 () Bool)

(declare-fun tp!1225202 () Bool)

(assert (=> b!4031975 (= e!2501773 (and tp!1225199 tp!1225202))))

(assert (=> b!4031010 (= tp!1225155 e!2501773)))

(declare-fun b!4031977 () Bool)

(declare-fun tp!1225201 () Bool)

(declare-fun tp!1225200 () Bool)

(assert (=> b!4031977 (= e!2501773 (and tp!1225201 tp!1225200))))

(declare-fun b!4031976 () Bool)

(declare-fun tp!1225198 () Bool)

(assert (=> b!4031976 (= e!2501773 tp!1225198)))

(declare-fun b!4031974 () Bool)

(assert (=> b!4031974 (= e!2501773 tp_is_empty!20597)))

(assert (= (and b!4031010 ((_ is ElementMatch!11813) (regTwo!24138 (regex!6908 (rule!9968 token!484))))) b!4031974))

(assert (= (and b!4031010 ((_ is Concat!18952) (regTwo!24138 (regex!6908 (rule!9968 token!484))))) b!4031975))

(assert (= (and b!4031010 ((_ is Star!11813) (regTwo!24138 (regex!6908 (rule!9968 token!484))))) b!4031976))

(assert (= (and b!4031010 ((_ is Union!11813) (regTwo!24138 (regex!6908 (rule!9968 token!484))))) b!4031977))

(declare-fun b!4031979 () Bool)

(declare-fun e!2501774 () Bool)

(declare-fun tp!1225204 () Bool)

(declare-fun tp!1225207 () Bool)

(assert (=> b!4031979 (= e!2501774 (and tp!1225204 tp!1225207))))

(assert (=> b!4031012 (= tp!1225154 e!2501774)))

(declare-fun b!4031981 () Bool)

(declare-fun tp!1225206 () Bool)

(declare-fun tp!1225205 () Bool)

(assert (=> b!4031981 (= e!2501774 (and tp!1225206 tp!1225205))))

(declare-fun b!4031980 () Bool)

(declare-fun tp!1225203 () Bool)

(assert (=> b!4031980 (= e!2501774 tp!1225203)))

(declare-fun b!4031978 () Bool)

(assert (=> b!4031978 (= e!2501774 tp_is_empty!20597)))

(assert (= (and b!4031012 ((_ is ElementMatch!11813) (regOne!24139 (regex!6908 (rule!9968 token!484))))) b!4031978))

(assert (= (and b!4031012 ((_ is Concat!18952) (regOne!24139 (regex!6908 (rule!9968 token!484))))) b!4031979))

(assert (= (and b!4031012 ((_ is Star!11813) (regOne!24139 (regex!6908 (rule!9968 token!484))))) b!4031980))

(assert (= (and b!4031012 ((_ is Union!11813) (regOne!24139 (regex!6908 (rule!9968 token!484))))) b!4031981))

(declare-fun b!4031983 () Bool)

(declare-fun e!2501775 () Bool)

(declare-fun tp!1225209 () Bool)

(declare-fun tp!1225212 () Bool)

(assert (=> b!4031983 (= e!2501775 (and tp!1225209 tp!1225212))))

(assert (=> b!4031012 (= tp!1225153 e!2501775)))

(declare-fun b!4031985 () Bool)

(declare-fun tp!1225211 () Bool)

(declare-fun tp!1225210 () Bool)

(assert (=> b!4031985 (= e!2501775 (and tp!1225211 tp!1225210))))

(declare-fun b!4031984 () Bool)

(declare-fun tp!1225208 () Bool)

(assert (=> b!4031984 (= e!2501775 tp!1225208)))

(declare-fun b!4031982 () Bool)

(assert (=> b!4031982 (= e!2501775 tp_is_empty!20597)))

(assert (= (and b!4031012 ((_ is ElementMatch!11813) (regTwo!24139 (regex!6908 (rule!9968 token!484))))) b!4031982))

(assert (= (and b!4031012 ((_ is Concat!18952) (regTwo!24139 (regex!6908 (rule!9968 token!484))))) b!4031983))

(assert (= (and b!4031012 ((_ is Star!11813) (regTwo!24139 (regex!6908 (rule!9968 token!484))))) b!4031984))

(assert (= (and b!4031012 ((_ is Union!11813) (regTwo!24139 (regex!6908 (rule!9968 token!484))))) b!4031985))

(declare-fun b!4031987 () Bool)

(declare-fun e!2501776 () Bool)

(declare-fun tp!1225214 () Bool)

(declare-fun tp!1225217 () Bool)

(assert (=> b!4031987 (= e!2501776 (and tp!1225214 tp!1225217))))

(assert (=> b!4031011 (= tp!1225151 e!2501776)))

(declare-fun b!4031989 () Bool)

(declare-fun tp!1225216 () Bool)

(declare-fun tp!1225215 () Bool)

(assert (=> b!4031989 (= e!2501776 (and tp!1225216 tp!1225215))))

(declare-fun b!4031988 () Bool)

(declare-fun tp!1225213 () Bool)

(assert (=> b!4031988 (= e!2501776 tp!1225213)))

(declare-fun b!4031986 () Bool)

(assert (=> b!4031986 (= e!2501776 tp_is_empty!20597)))

(assert (= (and b!4031011 ((_ is ElementMatch!11813) (reg!12142 (regex!6908 (rule!9968 token!484))))) b!4031986))

(assert (= (and b!4031011 ((_ is Concat!18952) (reg!12142 (regex!6908 (rule!9968 token!484))))) b!4031987))

(assert (= (and b!4031011 ((_ is Star!11813) (reg!12142 (regex!6908 (rule!9968 token!484))))) b!4031988))

(assert (= (and b!4031011 ((_ is Union!11813) (reg!12142 (regex!6908 (rule!9968 token!484))))) b!4031989))

(declare-fun b!4031991 () Bool)

(declare-fun e!2501777 () Bool)

(declare-fun tp!1225219 () Bool)

(declare-fun tp!1225222 () Bool)

(assert (=> b!4031991 (= e!2501777 (and tp!1225219 tp!1225222))))

(assert (=> b!4031017 (= tp!1225160 e!2501777)))

(declare-fun b!4031993 () Bool)

(declare-fun tp!1225221 () Bool)

(declare-fun tp!1225220 () Bool)

(assert (=> b!4031993 (= e!2501777 (and tp!1225221 tp!1225220))))

(declare-fun b!4031992 () Bool)

(declare-fun tp!1225218 () Bool)

(assert (=> b!4031992 (= e!2501777 tp!1225218)))

(declare-fun b!4031990 () Bool)

(assert (=> b!4031990 (= e!2501777 tp_is_empty!20597)))

(assert (= (and b!4031017 ((_ is ElementMatch!11813) (regOne!24138 (regex!6908 (h!48609 rules!2999))))) b!4031990))

(assert (= (and b!4031017 ((_ is Concat!18952) (regOne!24138 (regex!6908 (h!48609 rules!2999))))) b!4031991))

(assert (= (and b!4031017 ((_ is Star!11813) (regOne!24138 (regex!6908 (h!48609 rules!2999))))) b!4031992))

(assert (= (and b!4031017 ((_ is Union!11813) (regOne!24138 (regex!6908 (h!48609 rules!2999))))) b!4031993))

(declare-fun b!4031995 () Bool)

(declare-fun e!2501778 () Bool)

(declare-fun tp!1225224 () Bool)

(declare-fun tp!1225227 () Bool)

(assert (=> b!4031995 (= e!2501778 (and tp!1225224 tp!1225227))))

(assert (=> b!4031017 (= tp!1225163 e!2501778)))

(declare-fun b!4031997 () Bool)

(declare-fun tp!1225226 () Bool)

(declare-fun tp!1225225 () Bool)

(assert (=> b!4031997 (= e!2501778 (and tp!1225226 tp!1225225))))

(declare-fun b!4031996 () Bool)

(declare-fun tp!1225223 () Bool)

(assert (=> b!4031996 (= e!2501778 tp!1225223)))

(declare-fun b!4031994 () Bool)

(assert (=> b!4031994 (= e!2501778 tp_is_empty!20597)))

(assert (= (and b!4031017 ((_ is ElementMatch!11813) (regTwo!24138 (regex!6908 (h!48609 rules!2999))))) b!4031994))

(assert (= (and b!4031017 ((_ is Concat!18952) (regTwo!24138 (regex!6908 (h!48609 rules!2999))))) b!4031995))

(assert (= (and b!4031017 ((_ is Star!11813) (regTwo!24138 (regex!6908 (h!48609 rules!2999))))) b!4031996))

(assert (= (and b!4031017 ((_ is Union!11813) (regTwo!24138 (regex!6908 (h!48609 rules!2999))))) b!4031997))

(declare-fun b!4031998 () Bool)

(declare-fun e!2501779 () Bool)

(declare-fun tp!1225228 () Bool)

(assert (=> b!4031998 (= e!2501779 (and tp_is_empty!20597 tp!1225228))))

(assert (=> b!4030998 (= tp!1225140 e!2501779)))

(assert (= (and b!4030998 ((_ is Cons!43187) (t!334152 (t!334152 suffix!1299)))) b!4031998))

(declare-fun b!4031999 () Bool)

(declare-fun e!2501780 () Bool)

(declare-fun tp!1225229 () Bool)

(assert (=> b!4031999 (= e!2501780 (and tp_is_empty!20597 tp!1225229))))

(assert (=> b!4031014 (= tp!1225157 e!2501780)))

(assert (= (and b!4031014 ((_ is Cons!43187) (t!334152 (t!334152 suffixResult!105)))) b!4031999))

(declare-fun b!4032001 () Bool)

(declare-fun e!2501781 () Bool)

(declare-fun tp!1225231 () Bool)

(declare-fun tp!1225234 () Bool)

(assert (=> b!4032001 (= e!2501781 (and tp!1225231 tp!1225234))))

(assert (=> b!4031018 (= tp!1225159 e!2501781)))

(declare-fun b!4032003 () Bool)

(declare-fun tp!1225233 () Bool)

(declare-fun tp!1225232 () Bool)

(assert (=> b!4032003 (= e!2501781 (and tp!1225233 tp!1225232))))

(declare-fun b!4032002 () Bool)

(declare-fun tp!1225230 () Bool)

(assert (=> b!4032002 (= e!2501781 tp!1225230)))

(declare-fun b!4032000 () Bool)

(assert (=> b!4032000 (= e!2501781 tp_is_empty!20597)))

(assert (= (and b!4031018 ((_ is ElementMatch!11813) (reg!12142 (regex!6908 (h!48609 rules!2999))))) b!4032000))

(assert (= (and b!4031018 ((_ is Concat!18952) (reg!12142 (regex!6908 (h!48609 rules!2999))))) b!4032001))

(assert (= (and b!4031018 ((_ is Star!11813) (reg!12142 (regex!6908 (h!48609 rules!2999))))) b!4032002))

(assert (= (and b!4031018 ((_ is Union!11813) (reg!12142 (regex!6908 (h!48609 rules!2999))))) b!4032003))

(declare-fun b!4032004 () Bool)

(declare-fun e!2501782 () Bool)

(declare-fun tp!1225235 () Bool)

(assert (=> b!4032004 (= e!2501782 (and tp_is_empty!20597 tp!1225235))))

(assert (=> b!4030997 (= tp!1225139 e!2501782)))

(assert (= (and b!4030997 ((_ is Cons!43187) (t!334152 (t!334152 prefix!494)))) b!4032004))

(declare-fun b!4032005 () Bool)

(declare-fun e!2501783 () Bool)

(declare-fun tp!1225236 () Bool)

(assert (=> b!4032005 (= e!2501783 (and tp_is_empty!20597 tp!1225236))))

(assert (=> b!4031013 (= tp!1225156 e!2501783)))

(assert (= (and b!4031013 ((_ is Cons!43187) (t!334152 (originalCharacters!7508 token!484)))) b!4032005))

(declare-fun b!4032008 () Bool)

(declare-fun b_free!112345 () Bool)

(declare-fun b_next!113049 () Bool)

(assert (=> b!4032008 (= b_free!112345 (not b_next!113049))))

(declare-fun tb!242205 () Bool)

(declare-fun t!334280 () Bool)

(assert (=> (and b!4032008 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334280) tb!242205))

(declare-fun result!293588 () Bool)

(assert (= result!293588 result!293538))

(assert (=> d!1194105 t!334280))

(declare-fun t!334282 () Bool)

(declare-fun tb!242207 () Bool)

(assert (=> (and b!4032008 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 token!484)))) t!334282) tb!242207))

(declare-fun result!293590 () Bool)

(assert (= result!293590 result!293458))

(assert (=> d!1193537 t!334282))

(declare-fun t!334284 () Bool)

(declare-fun tb!242209 () Bool)

(assert (=> (and b!4032008 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334284) tb!242209))

(declare-fun result!293592 () Bool)

(assert (= result!293592 result!293574))

(assert (=> d!1194315 t!334284))

(declare-fun t!334286 () Bool)

(declare-fun tb!242211 () Bool)

(assert (=> (and b!4032008 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334286) tb!242211))

(declare-fun result!293594 () Bool)

(assert (= result!293594 result!293568))

(assert (=> d!1194305 t!334286))

(declare-fun tb!242213 () Bool)

(declare-fun t!334288 () Bool)

(assert (=> (and b!4032008 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334288) tb!242213))

(declare-fun result!293596 () Bool)

(assert (= result!293596 result!293562))

(assert (=> d!1194155 t!334288))

(assert (=> d!1194135 t!334280))

(declare-fun tp!1225239 () Bool)

(declare-fun b_and!309867 () Bool)

(assert (=> b!4032008 (= tp!1225239 (and (=> t!334288 result!293596) (=> t!334280 result!293588) (=> t!334282 result!293590) (=> t!334286 result!293594) (=> t!334284 result!293592) b_and!309867))))

(declare-fun b_free!112347 () Bool)

(declare-fun b_next!113051 () Bool)

(assert (=> b!4032008 (= b_free!112347 (not b_next!113051))))

(declare-fun tb!242215 () Bool)

(declare-fun t!334290 () Bool)

(assert (=> (and b!4032008 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334290) tb!242215))

(declare-fun result!293598 () Bool)

(assert (= result!293598 result!293550))

(assert (=> d!1194135 t!334290))

(declare-fun t!334292 () Bool)

(declare-fun tb!242217 () Bool)

(assert (=> (and b!4032008 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433204)))))) t!334292) tb!242217))

(declare-fun result!293600 () Bool)

(assert (= result!293600 result!293532))

(assert (=> d!1194065 t!334292))

(declare-fun t!334294 () Bool)

(declare-fun tb!242219 () Bool)

(assert (=> (and b!4032008 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toChars!9291 (transformation!6908 (rule!9968 token!484)))) t!334294) tb!242219))

(declare-fun result!293602 () Bool)

(assert (= result!293602 result!293474))

(assert (=> b!4030967 t!334294))

(declare-fun tb!242221 () Bool)

(declare-fun t!334296 () Bool)

(assert (=> (and b!4032008 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433196)))))) t!334296) tb!242221))

(declare-fun result!293604 () Bool)

(assert (= result!293604 result!293514))

(assert (=> d!1193907 t!334296))

(declare-fun tb!242223 () Bool)

(declare-fun t!334298 () Bool)

(assert (=> (and b!4032008 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toChars!9291 (transformation!6908 (rule!9968 (_1!24269 (get!14170 lt!1433099)))))) t!334298) tb!242223))

(declare-fun result!293606 () Bool)

(assert (= result!293606 result!293496))

(assert (=> d!1193769 t!334298))

(assert (=> d!1193697 t!334294))

(declare-fun b_and!309869 () Bool)

(declare-fun tp!1225240 () Bool)

(assert (=> b!4032008 (= tp!1225240 (and (=> t!334292 result!293600) (=> t!334296 result!293604) (=> t!334290 result!293598) (=> t!334298 result!293606) (=> t!334294 result!293602) b_and!309869))))

(declare-fun e!2501785 () Bool)

(assert (=> b!4032008 (= e!2501785 (and tp!1225239 tp!1225240))))

(declare-fun tp!1225238 () Bool)

(declare-fun e!2501786 () Bool)

(declare-fun b!4032007 () Bool)

(assert (=> b!4032007 (= e!2501786 (and tp!1225238 (inv!57689 (tag!7768 (h!48609 (t!334154 (t!334154 rules!2999))))) (inv!57693 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) e!2501785))))

(declare-fun b!4032006 () Bool)

(declare-fun e!2501787 () Bool)

(declare-fun tp!1225237 () Bool)

(assert (=> b!4032006 (= e!2501787 (and e!2501786 tp!1225237))))

(assert (=> b!4030990 (= tp!1225133 e!2501787)))

(assert (= b!4032007 b!4032008))

(assert (= b!4032006 b!4032007))

(assert (= (and b!4030990 ((_ is Cons!43189) (t!334154 (t!334154 rules!2999)))) b!4032006))

(declare-fun m!4624839 () Bool)

(assert (=> b!4032007 m!4624839))

(declare-fun m!4624841 () Bool)

(assert (=> b!4032007 m!4624841))

(declare-fun b!4032009 () Bool)

(declare-fun e!2501788 () Bool)

(declare-fun tp!1225241 () Bool)

(assert (=> b!4032009 (= e!2501788 (and tp_is_empty!20597 tp!1225241))))

(assert (=> b!4031020 (= tp!1225164 e!2501788)))

(assert (= (and b!4031020 ((_ is Cons!43187) (t!334152 (t!334152 newSuffixResult!27)))) b!4032009))

(declare-fun b!4032011 () Bool)

(declare-fun e!2501789 () Bool)

(declare-fun tp!1225243 () Bool)

(declare-fun tp!1225246 () Bool)

(assert (=> b!4032011 (= e!2501789 (and tp!1225243 tp!1225246))))

(assert (=> b!4030991 (= tp!1225134 e!2501789)))

(declare-fun b!4032013 () Bool)

(declare-fun tp!1225245 () Bool)

(declare-fun tp!1225244 () Bool)

(assert (=> b!4032013 (= e!2501789 (and tp!1225245 tp!1225244))))

(declare-fun b!4032012 () Bool)

(declare-fun tp!1225242 () Bool)

(assert (=> b!4032012 (= e!2501789 tp!1225242)))

(declare-fun b!4032010 () Bool)

(assert (=> b!4032010 (= e!2501789 tp_is_empty!20597)))

(assert (= (and b!4030991 ((_ is ElementMatch!11813) (regex!6908 (h!48609 (t!334154 rules!2999))))) b!4032010))

(assert (= (and b!4030991 ((_ is Concat!18952) (regex!6908 (h!48609 (t!334154 rules!2999))))) b!4032011))

(assert (= (and b!4030991 ((_ is Star!11813) (regex!6908 (h!48609 (t!334154 rules!2999))))) b!4032012))

(assert (= (and b!4030991 ((_ is Union!11813) (regex!6908 (h!48609 (t!334154 rules!2999))))) b!4032013))

(declare-fun b_lambda!117623 () Bool)

(assert (= b_lambda!117605 (or (and b!4030388 b_free!112329 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) (and b!4030385 b_free!112333) (and b!4030992 b_free!112341 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) (and b!4032008 b_free!112345 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) b_lambda!117623)))

(declare-fun b_lambda!117625 () Bool)

(assert (= b_lambda!117609 (or (and b!4030388 b_free!112331 (= (toChars!9291 (transformation!6908 (h!48609 rules!2999))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) (and b!4030385 b_free!112335) (and b!4030992 b_free!112343 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) (and b!4032008 b_free!112347 (= (toChars!9291 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toChars!9291 (transformation!6908 (rule!9968 token!484))))) b_lambda!117625)))

(declare-fun b_lambda!117627 () Bool)

(assert (= b_lambda!117611 (or (and b!4030388 b_free!112329 (= (toValue!9432 (transformation!6908 (h!48609 rules!2999))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) (and b!4030385 b_free!112333) (and b!4030992 b_free!112341 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 rules!2999)))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) (and b!4032008 b_free!112345 (= (toValue!9432 (transformation!6908 (h!48609 (t!334154 (t!334154 rules!2999))))) (toValue!9432 (transformation!6908 (rule!9968 token!484))))) b_lambda!117627)))

(check-sat (not b!4032011) (not b!4031234) (not b!4031923) (not d!1194039) (not b!4031484) (not b!4031658) (not b!4031164) (not d!1193777) (not d!1194103) (not b_lambda!117627) (not d!1194137) (not d!1193767) b_and!309829 (not b!4032005) (not tb!242187) (not tb!242157) (not b!4031482) (not d!1194131) (not b!4031548) (not b!4031725) (not d!1194049) (not bm!286952) (not b!4031753) (not b!4031967) (not b!4030962) (not b!4031924) (not d!1194321) (not b!4031989) (not b!4031043) b_and!309855 (not b!4031837) (not b!4031929) (not d!1194251) (not d!1194091) (not b!4031585) (not b!4031968) (not b!4031680) (not b!4031251) (not b!4031764) (not b!4031346) (not tb!242193) (not b!4031927) (not b!4031969) (not b!4032003) (not b_lambda!117623) (not b!4031217) (not b!4031224) b_and!309857 (not b!4031220) (not b!4031469) (not b!4031985) (not b!4031662) (not bm!286922) (not b!4031040) (not b!4031076) (not b!4031134) (not bm!286958) (not b!4031668) (not b!4031229) (not b!4031536) (not b!4031653) (not b!4031739) (not b!4031050) (not b!4031661) (not b!4031977) (not d!1194041) (not d!1193779) (not b!4031418) (not b!4031737) (not d!1193959) (not b!4031728) (not d!1194335) (not b!4031429) (not d!1193909) (not d!1194309) (not b!4031587) (not b!4031044) (not b!4031773) (not d!1193965) (not b!4031339) (not d!1194055) (not b!4031319) (not b_lambda!117617) (not d!1194339) (not b!4031646) (not d!1193903) (not b!4031816) (not b!4031504) (not b!4031483) (not b!4031138) (not d!1194165) (not b_lambda!117619) (not b!4031601) (not b!4031135) (not b_lambda!117581) (not b!4031996) (not b!4031162) (not d!1193943) (not b!4031770) (not d!1193839) (not tb!242133) (not b!4031688) (not b!4031979) (not bm!286913) (not b!4031881) (not b!4031838) (not b!4031594) (not d!1193769) (not b!4031136) (not b!4031519) (not bm!286955) (not bm!286917) (not b!4031341) b_and!309825 (not b!4031963) (not b!4031762) (not b!4031648) (not b!4031225) (not b!4031846) (not d!1193795) (not d!1193745) (not b!4031240) (not b!4031074) (not b!4031231) (not d!1193937) (not b!4031997) (not b!4031511) (not b_lambda!117589) (not d!1193783) (not b!4031850) (not b!4031082) (not b!4031674) (not d!1194221) (not b!4032007) (not b!4032004) (not b!4031771) (not b!4031540) (not b!4031061) (not b!4031920) (not bm!286939) (not b!4031848) (not b!4031595) (not b!4031971) (not b!4031975) (not tb!242169) (not b_next!113051) (not d!1193757) tp_is_empty!20597 (not b!4032002) (not d!1193895) (not b!4031488) (not b!4031216) (not bm!286950) (not b!4031133) (not b!4032009) (not b!4031999) (not b!4031046) (not d!1194229) (not d!1194159) (not b!4031581) (not b!4031535) (not b_lambda!117625) (not d!1193733) (not b!4031991) (not b!4031317) (not d!1193765) (not b!4031188) (not d!1193855) (not d!1193789) (not d!1194093) (not b!4031210) (not b!4031337) (not d!1194063) (not d!1194147) (not b!4031510) (not d!1194007) (not b!4031137) (not b!4032013) (not b!4031687) (not b!4031723) (not b!4031487) (not b!4031675) (not b!4031232) (not b!4031960) (not bm!286956) (not b!4031575) (not bm!286871) (not d!1193803) (not b!4031354) (not b!4031917) (not b!4031194) (not b!4031549) (not d!1194243) (not d!1194177) (not b!4031745) (not b!4031327) (not d!1194293) (not b!4031063) (not b!4031321) (not b!4032001) (not b!4031054) (not b_next!113045) (not bm!286918) (not b!4031760) (not b!4031678) (not b_lambda!117583) (not b_lambda!117595) (not b!4031983) (not bm!286915) (not b!4031057) (not b!4031921) (not b!4031965) (not d!1194101) (not b!4031517) (not b!4031586) (not b!4031931) (not b!4031654) (not b!4031249) (not d!1194323) (not d!1194109) (not d!1193971) (not b!4031769) (not b!4031898) (not b!4031774) (not d!1193827) (not d!1193945) (not b!4031428) (not b!4031196) (not b!4031132) (not b!4031197) (not b!4031988) (not b!4031051) (not b!4031531) (not b!4031241) (not b!4031037) (not b!4031972) (not b!4031992) (not b!4031345) (not b!4031208) (not b!4031053) (not b!4031072) (not b!4031936) (not b!4031840) (not b!4031534) (not tb!242181) (not d!1193849) (not d!1193747) (not b!4031655) (not b!4031859) (not b!4031045) (not b_next!113049) (not b!4031131) (not b!4032006) (not b!4031058) (not b!4031649) (not b_next!113047) b_and!309827 (not b!4031424) (not b_lambda!117615) (not b!4031086) (not b!4031409) (not b!4031567) (not b!4031065) (not b!4031081) (not b!4031067) (not d!1194071) (not b!4031530) (not b!4031352) (not d!1193891) (not b!4031998) (not b!4031572) (not d!1193915) (not d!1193857) (not b_next!113037) (not b!4031070) (not d!1194143) (not bm!286912) (not b!4031754) (not d!1193921) (not tb!242151) (not d!1193735) (not d!1193897) (not bm!286919) (not b!4031733) (not b!4031981) (not b!4031200) (not b!4031776) (not b!4031569) (not b!4031741) (not b!4031221) (not b!4031993) (not b!4031987) (not b_lambda!117585) (not bm!286914) (not b!4031928) (not b!4031815) (not b!4031049) (not d!1193947) (not b!4031166) (not b!4031423) (not d!1193743) (not b!4031583) (not b!4031342) (not b!4031727) (not b!4031099) (not b!4031775) (not b!4031206) (not b!4031356) (not b!4031542) (not d!1193741) (not b!4031508) (not b!4031204) (not b_next!113035) (not d!1193907) (not b!4031212) (not b!4031203) (not b!4031527) (not b!4031226) (not b!4031984) (not d!1194255) (not b!4031772) (not b!4031751) (not bm!286940) (not d!1194285) (not d!1194245) (not tb!242115) (not b!4031485) (not bm!286916) (not b!4031746) (not b!4031069) (not b!4031042) (not b!4031228) (not b_next!113033) (not b!4032012) (not b!4031750) (not b!4031214) (not b!4031749) (not d!1193905) (not b!4031743) (not b!4031652) (not b!4031489) (not b!4031839) (not b!4031577) (not b!4031247) (not b!4031509) (not d!1194135) (not b!4031961) (not b!4031419) (not b!4031976) (not bm!286881) (not b!4031571) (not b!4031105) (not b!4031731) (not b!4031198) (not b!4031865) (not b!4031640) (not d!1194065) (not b!4031075) (not b!4031995) (not b!4031430) (not b!4031835) (not b!4031919) (not b!4031735) (not b!4031236) (not d!1194225) (not b!4031048) (not b!4031959) (not b!4031235) (not d!1193973) (not b!4031335) (not b!4031097) (not b!4031752) (not d!1193923) (not d!1193919) (not b!4031541) (not b!4031767) (not b_next!113039) (not b!4031129) (not b!4031925) (not b!4031182) (not b!4031506) (not b!4031422) (not b_lambda!117603) (not b!4031036) (not b!4031579) (not b!4031239) b_and!309869 b_and!309867 b_and!309859 (not d!1194045) (not b!4031973) (not bm!286949) (not b!4031593) (not b!4031980) (not b!4031964) (not b!4031202) (not b!4031333) (not b!4031521) (not b!4031344) (not b!4031490))
(check-sat b_and!309829 b_and!309855 b_and!309857 b_and!309825 (not b_next!113051) (not b_next!113045) (not b_next!113037) (not b_next!113035) (not b_next!113033) (not b_next!113049) (not b_next!113047) b_and!309827 (not b_next!113039) b_and!309869 b_and!309867 b_and!309859)
