; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372892 () Bool)

(assert start!372892)

(declare-fun b!3964011 () Bool)

(declare-fun b_free!109557 () Bool)

(declare-fun b_next!110261 () Bool)

(assert (=> b!3964011 (= b_free!109557 (not b_next!110261))))

(declare-fun tp!1208295 () Bool)

(declare-fun b_and!304435 () Bool)

(assert (=> b!3964011 (= tp!1208295 b_and!304435)))

(declare-fun b_free!109559 () Bool)

(declare-fun b_next!110263 () Bool)

(assert (=> b!3964011 (= b_free!109559 (not b_next!110263))))

(declare-fun tp!1208293 () Bool)

(declare-fun b_and!304437 () Bool)

(assert (=> b!3964011 (= tp!1208293 b_and!304437)))

(declare-fun b!3964044 () Bool)

(declare-fun b_free!109561 () Bool)

(declare-fun b_next!110265 () Bool)

(assert (=> b!3964044 (= b_free!109561 (not b_next!110265))))

(declare-fun tp!1208283 () Bool)

(declare-fun b_and!304439 () Bool)

(assert (=> b!3964044 (= tp!1208283 b_and!304439)))

(declare-fun b_free!109563 () Bool)

(declare-fun b_next!110267 () Bool)

(assert (=> b!3964044 (= b_free!109563 (not b_next!110267))))

(declare-fun tp!1208280 () Bool)

(declare-fun b_and!304441 () Bool)

(assert (=> b!3964044 (= tp!1208280 b_and!304441)))

(declare-fun b!3964043 () Bool)

(declare-fun b_free!109565 () Bool)

(declare-fun b_next!110269 () Bool)

(assert (=> b!3964043 (= b_free!109565 (not b_next!110269))))

(declare-fun tp!1208296 () Bool)

(declare-fun b_and!304443 () Bool)

(assert (=> b!3964043 (= tp!1208296 b_and!304443)))

(declare-fun b_free!109567 () Bool)

(declare-fun b_next!110271 () Bool)

(assert (=> b!3964043 (= b_free!109567 (not b_next!110271))))

(declare-fun tp!1208285 () Bool)

(declare-fun b_and!304445 () Bool)

(assert (=> b!3964043 (= tp!1208285 b_and!304445)))

(declare-fun b!3963999 () Bool)

(declare-fun res!1604496 () Bool)

(declare-fun e!2455019 () Bool)

(assert (=> b!3963999 (=> (not res!1604496) (not e!2455019))))

(declare-datatypes ((LexerInterface!6221 0))(
  ( (LexerInterfaceExt!6218 (__x!25941 Int)) (Lexer!6219) )
))
(declare-fun thiss!20629 () LexerInterface!6221)

(declare-datatypes ((C!23260 0))(
  ( (C!23261 (val!13724 Int)) )
))
(declare-datatypes ((List!42381 0))(
  ( (Nil!42257) (Cons!42257 (h!47677 C!23260) (t!330140 List!42381)) )
))
(declare-datatypes ((IArray!25691 0))(
  ( (IArray!25692 (innerList!12903 List!42381)) )
))
(declare-datatypes ((Conc!12843 0))(
  ( (Node!12843 (left!32041 Conc!12843) (right!32371 Conc!12843) (csize!25916 Int) (cheight!13054 Int)) (Leaf!19866 (xs!16149 IArray!25691) (csize!25917 Int)) (Empty!12843) )
))
(declare-datatypes ((BalanceConc!25280 0))(
  ( (BalanceConc!25281 (c!687736 Conc!12843)) )
))
(declare-datatypes ((List!42382 0))(
  ( (Nil!42258) (Cons!42258 (h!47678 (_ BitVec 16)) (t!330141 List!42382)) )
))
(declare-datatypes ((TokenValue!6862 0))(
  ( (FloatLiteralValue!13724 (text!48479 List!42382)) (TokenValueExt!6861 (__x!25942 Int)) (Broken!34310 (value!209620 List!42382)) (Object!6985) (End!6862) (Def!6862) (Underscore!6862) (Match!6862) (Else!6862) (Error!6862) (Case!6862) (If!6862) (Extends!6862) (Abstract!6862) (Class!6862) (Val!6862) (DelimiterValue!13724 (del!6922 List!42382)) (KeywordValue!6868 (value!209621 List!42382)) (CommentValue!13724 (value!209622 List!42382)) (WhitespaceValue!13724 (value!209623 List!42382)) (IndentationValue!6862 (value!209624 List!42382)) (String!48027) (Int32!6862) (Broken!34311 (value!209625 List!42382)) (Boolean!6863) (Unit!60858) (OperatorValue!6865 (op!6922 List!42382)) (IdentifierValue!13724 (value!209626 List!42382)) (IdentifierValue!13725 (value!209627 List!42382)) (WhitespaceValue!13725 (value!209628 List!42382)) (True!13724) (False!13724) (Broken!34312 (value!209629 List!42382)) (Broken!34313 (value!209630 List!42382)) (True!13725) (RightBrace!6862) (RightBracket!6862) (Colon!6862) (Null!6862) (Comma!6862) (LeftBracket!6862) (False!13725) (LeftBrace!6862) (ImaginaryLiteralValue!6862 (text!48480 List!42382)) (StringLiteralValue!20586 (value!209631 List!42382)) (EOFValue!6862 (value!209632 List!42382)) (IdentValue!6862 (value!209633 List!42382)) (DelimiterValue!13725 (value!209634 List!42382)) (DedentValue!6862 (value!209635 List!42382)) (NewLineValue!6862 (value!209636 List!42382)) (IntegerValue!20586 (value!209637 (_ BitVec 32)) (text!48481 List!42382)) (IntegerValue!20587 (value!209638 Int) (text!48482 List!42382)) (Times!6862) (Or!6862) (Equal!6862) (Minus!6862) (Broken!34314 (value!209639 List!42382)) (And!6862) (Div!6862) (LessEqual!6862) (Mod!6862) (Concat!18399) (Not!6862) (Plus!6862) (SpaceValue!6862 (value!209640 List!42382)) (IntegerValue!20588 (value!209641 Int) (text!48483 List!42382)) (StringLiteralValue!20587 (text!48484 List!42382)) (FloatLiteralValue!13725 (text!48485 List!42382)) (BytesLiteralValue!6862 (value!209642 List!42382)) (CommentValue!13725 (value!209643 List!42382)) (StringLiteralValue!20588 (value!209644 List!42382)) (ErrorTokenValue!6862 (msg!6923 List!42382)) )
))
(declare-datatypes ((Regex!11537 0))(
  ( (ElementMatch!11537 (c!687737 C!23260)) (Concat!18400 (regOne!23586 Regex!11537) (regTwo!23586 Regex!11537)) (EmptyExpr!11537) (Star!11537 (reg!11866 Regex!11537)) (EmptyLang!11537) (Union!11537 (regOne!23587 Regex!11537) (regTwo!23587 Regex!11537)) )
))
(declare-datatypes ((String!48028 0))(
  ( (String!48029 (value!209645 String)) )
))
(declare-datatypes ((TokenValueInjection!13152 0))(
  ( (TokenValueInjection!13153 (toValue!9112 Int) (toChars!8971 Int)) )
))
(declare-datatypes ((Rule!13064 0))(
  ( (Rule!13065 (regex!6632 Regex!11537) (tag!7492 String!48028) (isSeparator!6632 Bool) (transformation!6632 TokenValueInjection!13152)) )
))
(declare-datatypes ((List!42383 0))(
  ( (Nil!42259) (Cons!42259 (h!47679 Rule!13064) (t!330142 List!42383)) )
))
(declare-fun rules!2768 () List!42383)

(declare-fun rulesInvariant!5564 (LexerInterface!6221 List!42383) Bool)

(assert (=> b!3963999 (= res!1604496 (rulesInvariant!5564 thiss!20629 rules!2768))))

(declare-fun b!3964000 () Bool)

(declare-datatypes ((Unit!60859 0))(
  ( (Unit!60860) )
))
(declare-fun e!2455008 () Unit!60859)

(declare-fun Unit!60861 () Unit!60859)

(assert (=> b!3964000 (= e!2455008 Unit!60861)))

(declare-fun lt!1387760 () Int)

(declare-fun lt!1387724 () List!42381)

(declare-fun size!31634 (List!42381) Int)

(assert (=> b!3964000 (= lt!1387760 (size!31634 lt!1387724))))

(declare-fun lt!1387749 () Unit!60859)

(declare-fun lt!1387761 () List!42381)

(declare-datatypes ((Token!12402 0))(
  ( (Token!12403 (value!209646 TokenValue!6862) (rule!9616 Rule!13064) (size!31635 Int) (originalCharacters!7232 List!42381)) )
))
(declare-datatypes ((tuple2!41554 0))(
  ( (tuple2!41555 (_1!23911 Token!12402) (_2!23911 List!42381)) )
))
(declare-datatypes ((Option!9052 0))(
  ( (None!9051) (Some!9051 (v!39397 tuple2!41554)) )
))
(declare-fun lt!1387728 () Option!9052)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1401 (LexerInterface!6221 List!42383 List!42381 List!42381 List!42381 Rule!13064) Unit!60859)

(assert (=> b!3964000 (= lt!1387749 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1401 thiss!20629 rules!2768 lt!1387761 lt!1387724 (_2!23911 (v!39397 lt!1387728)) (rule!9616 (_1!23911 (v!39397 lt!1387728)))))))

(declare-fun lt!1387731 () Int)

(declare-fun lt!1387733 () TokenValue!6862)

(declare-fun maxPrefixOneRule!2575 (LexerInterface!6221 Rule!13064 List!42381) Option!9052)

(assert (=> b!3964000 (= (maxPrefixOneRule!2575 thiss!20629 (rule!9616 (_1!23911 (v!39397 lt!1387728))) lt!1387724) (Some!9051 (tuple2!41555 (Token!12403 lt!1387733 (rule!9616 (_1!23911 (v!39397 lt!1387728))) lt!1387731 lt!1387761) (_2!23911 (v!39397 lt!1387728)))))))

(declare-fun lt!1387757 () tuple2!41554)

(declare-fun get!13938 (Option!9052) tuple2!41554)

(assert (=> b!3964000 (= lt!1387757 (get!13938 lt!1387728))))

(declare-fun c!687734 () Bool)

(declare-fun lt!1387748 () Int)

(assert (=> b!3964000 (= c!687734 (< (size!31634 (_2!23911 lt!1387757)) lt!1387748))))

(declare-fun lt!1387759 () Unit!60859)

(declare-fun e!2455028 () Unit!60859)

(assert (=> b!3964000 (= lt!1387759 e!2455028)))

(assert (=> b!3964000 false))

(declare-fun b!3964001 () Bool)

(declare-fun res!1604495 () Bool)

(declare-fun e!2455001 () Bool)

(assert (=> b!3964001 (=> res!1604495 e!2455001)))

(declare-datatypes ((List!42384 0))(
  ( (Nil!42260) (Cons!42260 (h!47680 Token!12402) (t!330143 List!42384)) )
))
(declare-fun prefixTokens!80 () List!42384)

(declare-fun head!8443 (List!42384) Token!12402)

(assert (=> b!3964001 (= res!1604495 (not (= (head!8443 prefixTokens!80) (_1!23911 (v!39397 lt!1387728)))))))

(declare-fun b!3964002 () Bool)

(declare-fun e!2455015 () Bool)

(declare-fun e!2455021 () Bool)

(assert (=> b!3964002 (= e!2455015 e!2455021)))

(declare-fun res!1604490 () Bool)

(assert (=> b!3964002 (=> (not res!1604490) (not e!2455021))))

(get-info :version)

(assert (=> b!3964002 (= res!1604490 ((_ is Some!9051) lt!1387728))))

(declare-fun maxPrefix!3525 (LexerInterface!6221 List!42383 List!42381) Option!9052)

(assert (=> b!3964002 (= lt!1387728 (maxPrefix!3525 thiss!20629 rules!2768 lt!1387724))))

(declare-fun e!2455003 () Bool)

(declare-fun suffixTokens!72 () List!42384)

(declare-fun b!3964003 () Bool)

(declare-fun e!2455014 () Bool)

(declare-fun tp!1208287 () Bool)

(declare-fun inv!56484 (Token!12402) Bool)

(assert (=> b!3964003 (= e!2455003 (and (inv!56484 (h!47680 suffixTokens!72)) e!2455014 tp!1208287))))

(declare-fun b!3964004 () Bool)

(declare-fun e!2455012 () Bool)

(declare-fun e!2455006 () Bool)

(declare-fun tp!1208286 () Bool)

(declare-fun inv!21 (TokenValue!6862) Bool)

(assert (=> b!3964004 (= e!2455006 (and (inv!21 (value!209646 (h!47680 prefixTokens!80))) e!2455012 tp!1208286))))

(declare-fun b!3964005 () Bool)

(declare-fun e!2455034 () Bool)

(declare-fun tp_is_empty!20045 () Bool)

(declare-fun tp!1208282 () Bool)

(assert (=> b!3964005 (= e!2455034 (and tp_is_empty!20045 tp!1208282))))

(declare-fun b!3964007 () Bool)

(declare-fun e!2455022 () Bool)

(declare-fun e!2455036 () Bool)

(assert (=> b!3964007 (= e!2455022 e!2455036)))

(declare-fun res!1604494 () Bool)

(assert (=> b!3964007 (=> res!1604494 e!2455036)))

(declare-datatypes ((tuple2!41556 0))(
  ( (tuple2!41557 (_1!23912 List!42384) (_2!23912 List!42381)) )
))
(declare-fun lt!1387722 () tuple2!41556)

(declare-fun lt!1387726 () tuple2!41556)

(declare-fun lt!1387730 () List!42384)

(declare-fun ++!11021 (List!42384 List!42384) List!42384)

(assert (=> b!3964007 (= res!1604494 (not (= lt!1387722 (tuple2!41557 (++!11021 lt!1387730 (_1!23912 lt!1387726)) (_2!23912 lt!1387726)))))))

(assert (=> b!3964007 (= lt!1387730 (Cons!42260 (_1!23911 (v!39397 lt!1387728)) Nil!42260))))

(declare-fun b!3964008 () Bool)

(declare-fun e!2455024 () Bool)

(assert (=> b!3964008 (= e!2455024 false)))

(declare-fun b!3964009 () Bool)

(declare-fun e!2455029 () Bool)

(declare-fun e!2455017 () Bool)

(assert (=> b!3964009 (= e!2455029 e!2455017)))

(declare-fun res!1604504 () Bool)

(assert (=> b!3964009 (=> res!1604504 e!2455017)))

(declare-fun lt!1387764 () List!42384)

(declare-fun lt!1387720 () List!42384)

(assert (=> b!3964009 (= res!1604504 (not (= lt!1387764 lt!1387720)))))

(declare-fun lt!1387732 () List!42384)

(assert (=> b!3964009 (= lt!1387764 (++!11021 lt!1387730 lt!1387732))))

(declare-fun lt!1387740 () List!42384)

(assert (=> b!3964009 (= lt!1387764 (++!11021 (++!11021 lt!1387730 lt!1387740) suffixTokens!72))))

(declare-fun lt!1387767 () Unit!60859)

(declare-fun lemmaConcatAssociativity!2367 (List!42384 List!42384 List!42384) Unit!60859)

(assert (=> b!3964009 (= lt!1387767 (lemmaConcatAssociativity!2367 lt!1387730 lt!1387740 suffixTokens!72))))

(declare-fun lt!1387723 () Unit!60859)

(declare-fun e!2455031 () Unit!60859)

(assert (=> b!3964009 (= lt!1387723 e!2455031)))

(declare-fun c!687735 () Bool)

(declare-fun lt!1387763 () Bool)

(assert (=> b!3964009 (= c!687735 lt!1387763)))

(declare-fun isEmpty!25282 (List!42384) Bool)

(assert (=> b!3964009 (= lt!1387763 (isEmpty!25282 lt!1387740))))

(declare-fun b!3964010 () Bool)

(declare-fun e!2455011 () Unit!60859)

(declare-fun Unit!60862 () Unit!60859)

(assert (=> b!3964010 (= e!2455011 Unit!60862)))

(declare-fun lt!1387736 () Unit!60859)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!626 (List!42381 List!42381 List!42381 List!42381) Unit!60859)

(assert (=> b!3964010 (= lt!1387736 (lemmaConcatSameAndSameSizesThenSameLists!626 lt!1387761 (_2!23911 (v!39397 lt!1387728)) lt!1387761 (_2!23911 lt!1387757)))))

(assert (=> b!3964010 (= (_2!23911 (v!39397 lt!1387728)) (_2!23911 lt!1387757))))

(declare-fun lt!1387734 () Unit!60859)

(declare-fun suffixResult!91 () List!42381)

(declare-fun suffix!1176 () List!42381)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!160 (LexerInterface!6221 List!42383 List!42381 List!42381 List!42384 List!42381) Unit!60859)

(assert (=> b!3964010 (= lt!1387734 (lemmaLexWithSmallerInputCannotProduceSameResults!160 thiss!20629 rules!2768 suffix!1176 (_2!23911 lt!1387757) suffixTokens!72 suffixResult!91))))

(declare-fun res!1604508 () Bool)

(declare-fun call!285466 () tuple2!41556)

(declare-fun lt!1387729 () tuple2!41556)

(assert (=> b!3964010 (= res!1604508 (not (= call!285466 lt!1387729)))))

(assert (=> b!3964010 (=> (not res!1604508) (not e!2455024))))

(assert (=> b!3964010 e!2455024))

(declare-fun e!2454997 () Bool)

(assert (=> b!3964011 (= e!2454997 (and tp!1208295 tp!1208293))))

(declare-fun tp!1208284 () Bool)

(declare-fun e!2455004 () Bool)

(declare-fun e!2455020 () Bool)

(declare-fun b!3964012 () Bool)

(declare-fun inv!56481 (String!48028) Bool)

(declare-fun inv!56485 (TokenValueInjection!13152) Bool)

(assert (=> b!3964012 (= e!2455020 (and tp!1208284 (inv!56481 (tag!7492 (h!47679 rules!2768))) (inv!56485 (transformation!6632 (h!47679 rules!2768))) e!2455004))))

(declare-fun b!3964013 () Bool)

(declare-fun Unit!60863 () Unit!60859)

(assert (=> b!3964013 (= e!2455028 Unit!60863)))

(declare-fun b!3964014 () Bool)

(declare-fun e!2455013 () Bool)

(declare-fun e!2455025 () Bool)

(assert (=> b!3964014 (= e!2455013 e!2455025)))

(declare-fun res!1604489 () Bool)

(assert (=> b!3964014 (=> res!1604489 e!2455025)))

(declare-fun lt!1387739 () List!42381)

(declare-fun prefix!426 () List!42381)

(assert (=> b!3964014 (= res!1604489 (not (= lt!1387739 prefix!426)))))

(declare-fun lt!1387718 () List!42381)

(declare-fun ++!11022 (List!42381 List!42381) List!42381)

(assert (=> b!3964014 (= lt!1387739 (++!11022 lt!1387761 lt!1387718))))

(declare-fun getSuffix!2172 (List!42381 List!42381) List!42381)

(assert (=> b!3964014 (= lt!1387718 (getSuffix!2172 prefix!426 lt!1387761))))

(declare-fun b!3964015 () Bool)

(declare-fun res!1604506 () Bool)

(assert (=> b!3964015 (=> (not res!1604506) (not e!2455019))))

(declare-fun isEmpty!25283 (List!42381) Bool)

(assert (=> b!3964015 (= res!1604506 (not (isEmpty!25283 prefix!426)))))

(declare-fun b!3964016 () Bool)

(declare-fun Unit!60864 () Unit!60859)

(assert (=> b!3964016 (= e!2455031 Unit!60864)))

(declare-fun lt!1387727 () Unit!60859)

(assert (=> b!3964016 (= lt!1387727 (lemmaLexWithSmallerInputCannotProduceSameResults!160 thiss!20629 rules!2768 (_2!23911 (v!39397 lt!1387728)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3964016 false))

(declare-fun b!3964017 () Bool)

(assert (=> b!3964017 (= e!2455036 e!2455001)))

(declare-fun res!1604485 () Bool)

(assert (=> b!3964017 (=> res!1604485 e!2455001)))

(declare-fun lt!1387738 () Int)

(assert (=> b!3964017 (= res!1604485 (<= lt!1387738 lt!1387748))))

(declare-fun lt!1387752 () Unit!60859)

(declare-fun e!2455033 () Unit!60859)

(assert (=> b!3964017 (= lt!1387752 e!2455033)))

(declare-fun c!687731 () Bool)

(assert (=> b!3964017 (= c!687731 (= lt!1387738 lt!1387748))))

(declare-fun lt!1387758 () Unit!60859)

(assert (=> b!3964017 (= lt!1387758 e!2455008)))

(declare-fun c!687732 () Bool)

(assert (=> b!3964017 (= c!687732 (< lt!1387738 lt!1387748))))

(assert (=> b!3964017 (= lt!1387748 (size!31634 suffix!1176))))

(assert (=> b!3964017 (= lt!1387738 (size!31634 (_2!23911 (v!39397 lt!1387728))))))

(declare-fun b!3964018 () Bool)

(declare-fun e!2455027 () Bool)

(declare-fun tp!1208288 () Bool)

(assert (=> b!3964018 (= e!2455027 (and tp_is_empty!20045 tp!1208288))))

(declare-fun b!3964019 () Bool)

(declare-fun e!2454996 () Bool)

(assert (=> b!3964019 (= e!2454996 e!2455029)))

(declare-fun res!1604499 () Bool)

(assert (=> b!3964019 (=> res!1604499 e!2455029)))

(declare-fun lt!1387766 () tuple2!41556)

(assert (=> b!3964019 (= res!1604499 (not (= lt!1387726 lt!1387766)))))

(assert (=> b!3964019 (= lt!1387766 (tuple2!41557 lt!1387732 suffixResult!91))))

(assert (=> b!3964019 (= lt!1387732 (++!11021 lt!1387740 suffixTokens!72))))

(declare-fun tail!6175 (List!42384) List!42384)

(assert (=> b!3964019 (= lt!1387740 (tail!6175 prefixTokens!80))))

(declare-fun lt!1387751 () List!42381)

(declare-fun isPrefix!3721 (List!42381 List!42381) Bool)

(assert (=> b!3964019 (isPrefix!3721 lt!1387718 lt!1387751)))

(declare-fun lt!1387762 () Unit!60859)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2580 (List!42381 List!42381) Unit!60859)

(assert (=> b!3964019 (= lt!1387762 (lemmaConcatTwoListThenFirstIsPrefix!2580 lt!1387718 suffix!1176))))

(declare-fun b!3964020 () Bool)

(declare-fun Unit!60865 () Unit!60859)

(assert (=> b!3964020 (= e!2455033 Unit!60865)))

(declare-fun lt!1387744 () Unit!60859)

(assert (=> b!3964020 (= lt!1387744 (lemmaConcatTwoListThenFirstIsPrefix!2580 prefix!426 suffix!1176))))

(assert (=> b!3964020 (isPrefix!3721 prefix!426 lt!1387724)))

(declare-fun lt!1387735 () Unit!60859)

(declare-fun lemmaIsPrefixSameLengthThenSameList!843 (List!42381 List!42381 List!42381) Unit!60859)

(assert (=> b!3964020 (= lt!1387735 (lemmaIsPrefixSameLengthThenSameList!843 lt!1387761 prefix!426 lt!1387724))))

(assert (=> b!3964020 (= lt!1387761 prefix!426)))

(declare-fun lt!1387741 () Unit!60859)

(declare-fun lemmaSamePrefixThenSameSuffix!1930 (List!42381 List!42381 List!42381 List!42381 List!42381) Unit!60859)

(assert (=> b!3964020 (= lt!1387741 (lemmaSamePrefixThenSameSuffix!1930 lt!1387761 (_2!23911 (v!39397 lt!1387728)) prefix!426 suffix!1176 lt!1387724))))

(assert (=> b!3964020 false))

(declare-fun b!3964021 () Bool)

(declare-fun e!2454999 () Bool)

(assert (=> b!3964021 (= e!2455019 e!2454999)))

(declare-fun res!1604488 () Bool)

(assert (=> b!3964021 (=> (not res!1604488) (not e!2454999))))

(assert (=> b!3964021 (= res!1604488 (= lt!1387722 (tuple2!41557 lt!1387720 suffixResult!91)))))

(declare-fun lexList!1989 (LexerInterface!6221 List!42383 List!42381) tuple2!41556)

(assert (=> b!3964021 (= lt!1387722 (lexList!1989 thiss!20629 rules!2768 lt!1387724))))

(assert (=> b!3964021 (= lt!1387720 (++!11021 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3964021 (= lt!1387724 (++!11022 prefix!426 suffix!1176))))

(declare-fun b!3964022 () Bool)

(declare-fun Unit!60866 () Unit!60859)

(assert (=> b!3964022 (= e!2455008 Unit!60866)))

(declare-fun b!3964023 () Bool)

(declare-fun res!1604486 () Bool)

(assert (=> b!3964023 (=> (not res!1604486) (not e!2455019))))

(assert (=> b!3964023 (= res!1604486 (not (isEmpty!25282 prefixTokens!80)))))

(declare-fun b!3964024 () Bool)

(declare-fun e!2455010 () Bool)

(declare-fun tp!1208281 () Bool)

(assert (=> b!3964024 (= e!2455010 (and e!2455020 tp!1208281))))

(declare-fun b!3964025 () Bool)

(assert (=> b!3964025 (= e!2454999 e!2455015)))

(declare-fun res!1604491 () Bool)

(assert (=> b!3964025 (=> (not res!1604491) (not e!2455015))))

(assert (=> b!3964025 (= res!1604491 (= (lexList!1989 thiss!20629 rules!2768 suffix!1176) lt!1387729))))

(assert (=> b!3964025 (= lt!1387729 (tuple2!41557 suffixTokens!72 suffixResult!91))))

(declare-fun b!3964026 () Bool)

(declare-fun tp!1208289 () Bool)

(assert (=> b!3964026 (= e!2455012 (and tp!1208289 (inv!56481 (tag!7492 (rule!9616 (h!47680 prefixTokens!80)))) (inv!56485 (transformation!6632 (rule!9616 (h!47680 prefixTokens!80)))) e!2454997))))

(declare-fun b!3964027 () Bool)

(declare-fun res!1604501 () Bool)

(assert (=> b!3964027 (=> (not res!1604501) (not e!2455019))))

(declare-fun isEmpty!25284 (List!42383) Bool)

(assert (=> b!3964027 (= res!1604501 (not (isEmpty!25284 rules!2768)))))

(declare-fun b!3964028 () Bool)

(declare-fun e!2455035 () Bool)

(assert (=> b!3964028 (= e!2455035 (= (size!31635 (_1!23911 (v!39397 lt!1387728))) (size!31634 (originalCharacters!7232 (_1!23911 (v!39397 lt!1387728))))))))

(declare-fun e!2455030 () Bool)

(declare-fun b!3964029 () Bool)

(declare-fun tp!1208290 () Bool)

(assert (=> b!3964029 (= e!2455030 (and (inv!56484 (h!47680 prefixTokens!80)) e!2455006 tp!1208290))))

(declare-fun b!3964030 () Bool)

(declare-fun c!687733 () Bool)

(declare-fun lt!1387746 () List!42384)

(assert (=> b!3964030 (= c!687733 (isEmpty!25282 lt!1387746))))

(assert (=> b!3964030 (= lt!1387746 (tail!6175 prefixTokens!80))))

(assert (=> b!3964030 (= e!2455028 e!2455011)))

(declare-fun b!3964031 () Bool)

(declare-fun Unit!60867 () Unit!60859)

(assert (=> b!3964031 (= e!2455031 Unit!60867)))

(declare-fun b!3964032 () Bool)

(assert (=> b!3964032 (= e!2455021 (not e!2455022))))

(declare-fun res!1604492 () Bool)

(assert (=> b!3964032 (=> res!1604492 e!2455022)))

(declare-fun lt!1387754 () List!42381)

(assert (=> b!3964032 (= res!1604492 (not (= lt!1387754 lt!1387724)))))

(assert (=> b!3964032 (= lt!1387726 (lexList!1989 thiss!20629 rules!2768 (_2!23911 (v!39397 lt!1387728))))))

(declare-fun lt!1387721 () List!42381)

(assert (=> b!3964032 (and (= (size!31635 (_1!23911 (v!39397 lt!1387728))) lt!1387731) (= (originalCharacters!7232 (_1!23911 (v!39397 lt!1387728))) lt!1387761) (= (v!39397 lt!1387728) (tuple2!41555 (Token!12403 lt!1387733 (rule!9616 (_1!23911 (v!39397 lt!1387728))) lt!1387731 lt!1387761) lt!1387721)))))

(assert (=> b!3964032 (= lt!1387731 (size!31634 lt!1387761))))

(assert (=> b!3964032 e!2455035))

(declare-fun res!1604500 () Bool)

(assert (=> b!3964032 (=> (not res!1604500) (not e!2455035))))

(assert (=> b!3964032 (= res!1604500 (= (value!209646 (_1!23911 (v!39397 lt!1387728))) lt!1387733))))

(declare-fun apply!9863 (TokenValueInjection!13152 BalanceConc!25280) TokenValue!6862)

(declare-fun seqFromList!4891 (List!42381) BalanceConc!25280)

(assert (=> b!3964032 (= lt!1387733 (apply!9863 (transformation!6632 (rule!9616 (_1!23911 (v!39397 lt!1387728)))) (seqFromList!4891 lt!1387761)))))

(assert (=> b!3964032 (= (_2!23911 (v!39397 lt!1387728)) lt!1387721)))

(declare-fun lt!1387753 () Unit!60859)

(assert (=> b!3964032 (= lt!1387753 (lemmaSamePrefixThenSameSuffix!1930 lt!1387761 (_2!23911 (v!39397 lt!1387728)) lt!1387761 lt!1387721 lt!1387724))))

(assert (=> b!3964032 (= lt!1387721 (getSuffix!2172 lt!1387724 lt!1387761))))

(assert (=> b!3964032 (isPrefix!3721 lt!1387761 lt!1387754)))

(assert (=> b!3964032 (= lt!1387754 (++!11022 lt!1387761 (_2!23911 (v!39397 lt!1387728))))))

(declare-fun lt!1387765 () Unit!60859)

(assert (=> b!3964032 (= lt!1387765 (lemmaConcatTwoListThenFirstIsPrefix!2580 lt!1387761 (_2!23911 (v!39397 lt!1387728))))))

(declare-fun list!15682 (BalanceConc!25280) List!42381)

(declare-fun charsOf!4450 (Token!12402) BalanceConc!25280)

(assert (=> b!3964032 (= lt!1387761 (list!15682 (charsOf!4450 (_1!23911 (v!39397 lt!1387728)))))))

(declare-fun ruleValid!2574 (LexerInterface!6221 Rule!13064) Bool)

(assert (=> b!3964032 (ruleValid!2574 thiss!20629 (rule!9616 (_1!23911 (v!39397 lt!1387728))))))

(declare-fun lt!1387755 () Unit!60859)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1650 (LexerInterface!6221 Rule!13064 List!42383) Unit!60859)

(assert (=> b!3964032 (= lt!1387755 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1650 thiss!20629 (rule!9616 (_1!23911 (v!39397 lt!1387728))) rules!2768))))

(declare-fun lt!1387747 () Unit!60859)

(declare-fun lemmaCharactersSize!1285 (Token!12402) Unit!60859)

(assert (=> b!3964032 (= lt!1387747 (lemmaCharactersSize!1285 (_1!23911 (v!39397 lt!1387728))))))

(declare-fun b!3964033 () Bool)

(declare-fun e!2455005 () Bool)

(declare-fun tp!1208292 () Bool)

(assert (=> b!3964033 (= e!2455005 (and tp_is_empty!20045 tp!1208292))))

(declare-fun bm!285461 () Bool)

(assert (=> bm!285461 (= call!285466 (lexList!1989 thiss!20629 rules!2768 (_2!23911 lt!1387757)))))

(declare-fun e!2455002 () Bool)

(declare-fun e!2455007 () Bool)

(declare-fun b!3964034 () Bool)

(declare-fun tp!1208294 () Bool)

(assert (=> b!3964034 (= e!2455007 (and tp!1208294 (inv!56481 (tag!7492 (rule!9616 (h!47680 suffixTokens!72)))) (inv!56485 (transformation!6632 (rule!9616 (h!47680 suffixTokens!72)))) e!2455002))))

(declare-fun b!3964035 () Bool)

(declare-fun e!2455018 () Bool)

(assert (=> b!3964035 (= e!2455025 e!2455018)))

(declare-fun res!1604505 () Bool)

(assert (=> b!3964035 (=> res!1604505 e!2455018)))

(declare-fun lt!1387743 () List!42381)

(assert (=> b!3964035 (= res!1604505 (or (not (= lt!1387743 lt!1387724)) (not (= lt!1387743 lt!1387754))))))

(assert (=> b!3964035 (= lt!1387743 (++!11022 lt!1387739 suffix!1176))))

(declare-fun b!3964036 () Bool)

(declare-fun res!1604507 () Bool)

(assert (=> b!3964036 (=> res!1604507 e!2455017)))

(assert (=> b!3964036 (= res!1604507 (not (= (lexList!1989 thiss!20629 rules!2768 lt!1387751) lt!1387766)))))

(declare-fun b!3964037 () Bool)

(declare-fun e!2455009 () Bool)

(assert (=> b!3964037 (= e!2455009 e!2454996)))

(declare-fun res!1604493 () Bool)

(assert (=> b!3964037 (=> res!1604493 e!2454996)))

(assert (=> b!3964037 (= res!1604493 (not (= lt!1387751 (_2!23911 (v!39397 lt!1387728)))))))

(assert (=> b!3964037 (= (_2!23911 (v!39397 lt!1387728)) lt!1387751)))

(declare-fun lt!1387737 () Unit!60859)

(assert (=> b!3964037 (= lt!1387737 (lemmaSamePrefixThenSameSuffix!1930 lt!1387761 (_2!23911 (v!39397 lt!1387728)) lt!1387761 lt!1387751 lt!1387724))))

(declare-fun lt!1387756 () List!42381)

(assert (=> b!3964037 (isPrefix!3721 lt!1387761 lt!1387756)))

(declare-fun lt!1387719 () Unit!60859)

(assert (=> b!3964037 (= lt!1387719 (lemmaConcatTwoListThenFirstIsPrefix!2580 lt!1387761 lt!1387751))))

(declare-fun b!3964038 () Bool)

(declare-fun Unit!60868 () Unit!60859)

(assert (=> b!3964038 (= e!2455033 Unit!60868)))

(declare-fun b!3964039 () Bool)

(declare-fun res!1604487 () Bool)

(assert (=> b!3964039 (=> res!1604487 e!2455036)))

(assert (=> b!3964039 (= res!1604487 (or (not (= lt!1387726 (tuple2!41557 (_1!23912 lt!1387726) (_2!23912 lt!1387726)))) (= (_2!23911 (v!39397 lt!1387728)) suffix!1176)))))

(declare-fun tp!1208291 () Bool)

(declare-fun b!3964040 () Bool)

(assert (=> b!3964040 (= e!2455014 (and (inv!21 (value!209646 (h!47680 suffixTokens!72))) e!2455007 tp!1208291))))

(declare-fun b!3964006 () Bool)

(assert (=> b!3964006 (= e!2455018 e!2455009)))

(declare-fun res!1604497 () Bool)

(assert (=> b!3964006 (=> res!1604497 e!2455009)))

(assert (=> b!3964006 (= res!1604497 (or (not (= lt!1387724 lt!1387743)) (not (= lt!1387724 lt!1387756)) (not (= lt!1387754 lt!1387756))))))

(assert (=> b!3964006 (= lt!1387743 lt!1387756)))

(assert (=> b!3964006 (= lt!1387756 (++!11022 lt!1387761 lt!1387751))))

(assert (=> b!3964006 (= lt!1387751 (++!11022 lt!1387718 suffix!1176))))

(declare-fun lt!1387725 () Unit!60859)

(declare-fun lemmaConcatAssociativity!2368 (List!42381 List!42381 List!42381) Unit!60859)

(assert (=> b!3964006 (= lt!1387725 (lemmaConcatAssociativity!2368 lt!1387761 lt!1387718 suffix!1176))))

(declare-fun res!1604502 () Bool)

(assert (=> start!372892 (=> (not res!1604502) (not e!2455019))))

(assert (=> start!372892 (= res!1604502 ((_ is Lexer!6219) thiss!20629))))

(assert (=> start!372892 e!2455019))

(assert (=> start!372892 e!2455005))

(assert (=> start!372892 true))

(assert (=> start!372892 e!2455034))

(assert (=> start!372892 e!2455010))

(assert (=> start!372892 e!2455030))

(assert (=> start!372892 e!2455003))

(assert (=> start!372892 e!2455027))

(declare-fun b!3964041 () Bool)

(assert (=> b!3964041 (= e!2455017 (not lt!1387763))))

(declare-fun b!3964042 () Bool)

(declare-fun e!2455026 () Bool)

(assert (=> b!3964042 (= e!2455026 false)))

(assert (=> b!3964043 (= e!2455002 (and tp!1208296 tp!1208285))))

(assert (=> b!3964044 (= e!2455004 (and tp!1208283 tp!1208280))))

(declare-fun b!3964045 () Bool)

(declare-fun Unit!60869 () Unit!60859)

(assert (=> b!3964045 (= e!2455011 Unit!60869)))

(declare-fun lt!1387742 () Unit!60859)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!160 (LexerInterface!6221 List!42383 List!42381 List!42381 List!42384 List!42381 List!42384) Unit!60859)

(assert (=> b!3964045 (= lt!1387742 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!160 thiss!20629 rules!2768 suffix!1176 (_2!23911 lt!1387757) suffixTokens!72 suffixResult!91 lt!1387746))))

(declare-fun res!1604503 () Bool)

(assert (=> b!3964045 (= res!1604503 (not (= call!285466 (tuple2!41557 (++!11021 lt!1387746 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3964045 (=> (not res!1604503) (not e!2455026))))

(assert (=> b!3964045 e!2455026))

(declare-fun b!3964046 () Bool)

(assert (=> b!3964046 (= e!2455001 e!2455013)))

(declare-fun res!1604498 () Bool)

(assert (=> b!3964046 (=> res!1604498 e!2455013)))

(assert (=> b!3964046 (= res!1604498 (>= lt!1387731 (size!31634 prefix!426)))))

(assert (=> b!3964046 (isPrefix!3721 lt!1387761 prefix!426)))

(declare-fun lt!1387745 () Unit!60859)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!317 (List!42381 List!42381 List!42381) Unit!60859)

(assert (=> b!3964046 (= lt!1387745 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!317 prefix!426 lt!1387761 lt!1387724))))

(assert (=> b!3964046 (isPrefix!3721 prefix!426 lt!1387724)))

(declare-fun lt!1387750 () Unit!60859)

(assert (=> b!3964046 (= lt!1387750 (lemmaConcatTwoListThenFirstIsPrefix!2580 prefix!426 suffix!1176))))

(assert (= (and start!372892 res!1604502) b!3964027))

(assert (= (and b!3964027 res!1604501) b!3963999))

(assert (= (and b!3963999 res!1604496) b!3964023))

(assert (= (and b!3964023 res!1604486) b!3964015))

(assert (= (and b!3964015 res!1604506) b!3964021))

(assert (= (and b!3964021 res!1604488) b!3964025))

(assert (= (and b!3964025 res!1604491) b!3964002))

(assert (= (and b!3964002 res!1604490) b!3964032))

(assert (= (and b!3964032 res!1604500) b!3964028))

(assert (= (and b!3964032 (not res!1604492)) b!3964007))

(assert (= (and b!3964007 (not res!1604494)) b!3964039))

(assert (= (and b!3964039 (not res!1604487)) b!3964017))

(assert (= (and b!3964017 c!687732) b!3964000))

(assert (= (and b!3964017 (not c!687732)) b!3964022))

(assert (= (and b!3964000 c!687734) b!3964030))

(assert (= (and b!3964000 (not c!687734)) b!3964013))

(assert (= (and b!3964030 c!687733) b!3964010))

(assert (= (and b!3964030 (not c!687733)) b!3964045))

(assert (= (and b!3964010 res!1604508) b!3964008))

(assert (= (and b!3964045 res!1604503) b!3964042))

(assert (= (or b!3964010 b!3964045) bm!285461))

(assert (= (and b!3964017 c!687731) b!3964020))

(assert (= (and b!3964017 (not c!687731)) b!3964038))

(assert (= (and b!3964017 (not res!1604485)) b!3964001))

(assert (= (and b!3964001 (not res!1604495)) b!3964046))

(assert (= (and b!3964046 (not res!1604498)) b!3964014))

(assert (= (and b!3964014 (not res!1604489)) b!3964035))

(assert (= (and b!3964035 (not res!1604505)) b!3964006))

(assert (= (and b!3964006 (not res!1604497)) b!3964037))

(assert (= (and b!3964037 (not res!1604493)) b!3964019))

(assert (= (and b!3964019 (not res!1604499)) b!3964009))

(assert (= (and b!3964009 c!687735) b!3964016))

(assert (= (and b!3964009 (not c!687735)) b!3964031))

(assert (= (and b!3964009 (not res!1604504)) b!3964036))

(assert (= (and b!3964036 (not res!1604507)) b!3964041))

(assert (= (and start!372892 ((_ is Cons!42257) suffixResult!91)) b!3964033))

(assert (= (and start!372892 ((_ is Cons!42257) suffix!1176)) b!3964005))

(assert (= b!3964012 b!3964044))

(assert (= b!3964024 b!3964012))

(assert (= (and start!372892 ((_ is Cons!42259) rules!2768)) b!3964024))

(assert (= b!3964026 b!3964011))

(assert (= b!3964004 b!3964026))

(assert (= b!3964029 b!3964004))

(assert (= (and start!372892 ((_ is Cons!42260) prefixTokens!80)) b!3964029))

(assert (= b!3964034 b!3964043))

(assert (= b!3964040 b!3964034))

(assert (= b!3964003 b!3964040))

(assert (= (and start!372892 ((_ is Cons!42260) suffixTokens!72)) b!3964003))

(assert (= (and start!372892 ((_ is Cons!42257) prefix!426)) b!3964018))

(declare-fun m!4533301 () Bool)

(assert (=> b!3964006 m!4533301))

(declare-fun m!4533303 () Bool)

(assert (=> b!3964006 m!4533303))

(declare-fun m!4533305 () Bool)

(assert (=> b!3964006 m!4533305))

(declare-fun m!4533307 () Bool)

(assert (=> b!3964016 m!4533307))

(declare-fun m!4533309 () Bool)

(assert (=> b!3964003 m!4533309))

(declare-fun m!4533311 () Bool)

(assert (=> b!3964023 m!4533311))

(declare-fun m!4533313 () Bool)

(assert (=> b!3964036 m!4533313))

(declare-fun m!4533315 () Bool)

(assert (=> b!3964007 m!4533315))

(declare-fun m!4533317 () Bool)

(assert (=> b!3964014 m!4533317))

(declare-fun m!4533319 () Bool)

(assert (=> b!3964014 m!4533319))

(declare-fun m!4533321 () Bool)

(assert (=> b!3964035 m!4533321))

(declare-fun m!4533323 () Bool)

(assert (=> b!3964029 m!4533323))

(declare-fun m!4533325 () Bool)

(assert (=> b!3964010 m!4533325))

(declare-fun m!4533327 () Bool)

(assert (=> b!3964010 m!4533327))

(declare-fun m!4533329 () Bool)

(assert (=> b!3964009 m!4533329))

(declare-fun m!4533331 () Bool)

(assert (=> b!3964009 m!4533331))

(declare-fun m!4533333 () Bool)

(assert (=> b!3964009 m!4533333))

(declare-fun m!4533335 () Bool)

(assert (=> b!3964009 m!4533335))

(declare-fun m!4533337 () Bool)

(assert (=> b!3964009 m!4533337))

(assert (=> b!3964009 m!4533331))

(declare-fun m!4533339 () Bool)

(assert (=> b!3964001 m!4533339))

(declare-fun m!4533341 () Bool)

(assert (=> b!3964028 m!4533341))

(declare-fun m!4533343 () Bool)

(assert (=> b!3964025 m!4533343))

(declare-fun m!4533345 () Bool)

(assert (=> bm!285461 m!4533345))

(declare-fun m!4533347 () Bool)

(assert (=> b!3963999 m!4533347))

(declare-fun m!4533349 () Bool)

(assert (=> b!3964004 m!4533349))

(declare-fun m!4533351 () Bool)

(assert (=> b!3964030 m!4533351))

(declare-fun m!4533353 () Bool)

(assert (=> b!3964030 m!4533353))

(declare-fun m!4533355 () Bool)

(assert (=> b!3964020 m!4533355))

(declare-fun m!4533357 () Bool)

(assert (=> b!3964020 m!4533357))

(declare-fun m!4533359 () Bool)

(assert (=> b!3964020 m!4533359))

(declare-fun m!4533361 () Bool)

(assert (=> b!3964020 m!4533361))

(declare-fun m!4533363 () Bool)

(assert (=> b!3964034 m!4533363))

(declare-fun m!4533365 () Bool)

(assert (=> b!3964034 m!4533365))

(declare-fun m!4533367 () Bool)

(assert (=> b!3964026 m!4533367))

(declare-fun m!4533369 () Bool)

(assert (=> b!3964026 m!4533369))

(declare-fun m!4533371 () Bool)

(assert (=> b!3964045 m!4533371))

(declare-fun m!4533373 () Bool)

(assert (=> b!3964045 m!4533373))

(declare-fun m!4533375 () Bool)

(assert (=> b!3964037 m!4533375))

(declare-fun m!4533377 () Bool)

(assert (=> b!3964037 m!4533377))

(declare-fun m!4533379 () Bool)

(assert (=> b!3964037 m!4533379))

(declare-fun m!4533381 () Bool)

(assert (=> b!3964012 m!4533381))

(declare-fun m!4533383 () Bool)

(assert (=> b!3964012 m!4533383))

(declare-fun m!4533385 () Bool)

(assert (=> b!3964040 m!4533385))

(declare-fun m!4533387 () Bool)

(assert (=> b!3964021 m!4533387))

(declare-fun m!4533389 () Bool)

(assert (=> b!3964021 m!4533389))

(declare-fun m!4533391 () Bool)

(assert (=> b!3964021 m!4533391))

(declare-fun m!4533393 () Bool)

(assert (=> b!3964032 m!4533393))

(declare-fun m!4533395 () Bool)

(assert (=> b!3964032 m!4533395))

(declare-fun m!4533397 () Bool)

(assert (=> b!3964032 m!4533397))

(declare-fun m!4533399 () Bool)

(assert (=> b!3964032 m!4533399))

(declare-fun m!4533401 () Bool)

(assert (=> b!3964032 m!4533401))

(declare-fun m!4533403 () Bool)

(assert (=> b!3964032 m!4533403))

(declare-fun m!4533405 () Bool)

(assert (=> b!3964032 m!4533405))

(declare-fun m!4533407 () Bool)

(assert (=> b!3964032 m!4533407))

(declare-fun m!4533409 () Bool)

(assert (=> b!3964032 m!4533409))

(declare-fun m!4533411 () Bool)

(assert (=> b!3964032 m!4533411))

(declare-fun m!4533413 () Bool)

(assert (=> b!3964032 m!4533413))

(assert (=> b!3964032 m!4533395))

(declare-fun m!4533415 () Bool)

(assert (=> b!3964032 m!4533415))

(assert (=> b!3964032 m!4533413))

(declare-fun m!4533417 () Bool)

(assert (=> b!3964032 m!4533417))

(declare-fun m!4533419 () Bool)

(assert (=> b!3964032 m!4533419))

(declare-fun m!4533421 () Bool)

(assert (=> b!3964017 m!4533421))

(declare-fun m!4533423 () Bool)

(assert (=> b!3964017 m!4533423))

(declare-fun m!4533425 () Bool)

(assert (=> b!3964000 m!4533425))

(declare-fun m!4533427 () Bool)

(assert (=> b!3964000 m!4533427))

(declare-fun m!4533429 () Bool)

(assert (=> b!3964000 m!4533429))

(declare-fun m!4533431 () Bool)

(assert (=> b!3964000 m!4533431))

(declare-fun m!4533433 () Bool)

(assert (=> b!3964000 m!4533433))

(declare-fun m!4533435 () Bool)

(assert (=> b!3964002 m!4533435))

(declare-fun m!4533437 () Bool)

(assert (=> b!3964046 m!4533437))

(assert (=> b!3964046 m!4533355))

(declare-fun m!4533439 () Bool)

(assert (=> b!3964046 m!4533439))

(assert (=> b!3964046 m!4533357))

(declare-fun m!4533441 () Bool)

(assert (=> b!3964046 m!4533441))

(declare-fun m!4533443 () Bool)

(assert (=> b!3964027 m!4533443))

(declare-fun m!4533445 () Bool)

(assert (=> b!3964015 m!4533445))

(declare-fun m!4533447 () Bool)

(assert (=> b!3964019 m!4533447))

(assert (=> b!3964019 m!4533353))

(declare-fun m!4533449 () Bool)

(assert (=> b!3964019 m!4533449))

(declare-fun m!4533451 () Bool)

(assert (=> b!3964019 m!4533451))

(check-sat (not b!3964026) b_and!304435 (not b!3964035) (not b!3964000) b_and!304441 (not b!3964025) (not b!3964018) (not b!3964036) (not bm!285461) (not b!3964002) (not b_next!110263) tp_is_empty!20045 (not b!3964016) (not b!3964006) (not b!3964033) (not b!3964004) (not b!3964032) (not b_next!110267) (not b!3964024) (not b!3964017) (not b!3964010) b_and!304437 (not b!3964001) (not b!3964023) (not b!3964046) (not b!3964020) (not b!3964029) (not b!3964030) b_and!304445 (not b!3964019) (not b!3964012) (not b_next!110265) (not b!3964015) (not b!3964014) (not b!3964007) (not b!3964040) (not b!3964037) (not b!3964003) (not b_next!110271) (not b!3964009) b_and!304439 (not b!3964005) (not b!3963999) (not b_next!110269) (not b!3964034) (not b!3964021) (not b_next!110261) (not b!3964028) (not b!3964045) b_and!304443 (not b!3964027))
(check-sat (not b_next!110263) b_and!304435 b_and!304441 (not b_next!110267) b_and!304437 b_and!304445 (not b_next!110265) (not b_next!110271) b_and!304439 (not b_next!110269) (not b_next!110261) b_and!304443)
