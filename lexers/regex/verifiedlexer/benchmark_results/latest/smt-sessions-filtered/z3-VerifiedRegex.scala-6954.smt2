; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368076 () Bool)

(assert start!368076)

(declare-fun b!3924739 () Bool)

(declare-fun b_free!106925 () Bool)

(declare-fun b_next!107629 () Bool)

(assert (=> b!3924739 (= b_free!106925 (not b_next!107629))))

(declare-fun tp!1194853 () Bool)

(declare-fun b_and!299279 () Bool)

(assert (=> b!3924739 (= tp!1194853 b_and!299279)))

(declare-fun b_free!106927 () Bool)

(declare-fun b_next!107631 () Bool)

(assert (=> b!3924739 (= b_free!106927 (not b_next!107631))))

(declare-fun tp!1194844 () Bool)

(declare-fun b_and!299281 () Bool)

(assert (=> b!3924739 (= tp!1194844 b_and!299281)))

(declare-fun b!3924729 () Bool)

(declare-fun b_free!106929 () Bool)

(declare-fun b_next!107633 () Bool)

(assert (=> b!3924729 (= b_free!106929 (not b_next!107633))))

(declare-fun tp!1194849 () Bool)

(declare-fun b_and!299283 () Bool)

(assert (=> b!3924729 (= tp!1194849 b_and!299283)))

(declare-fun b_free!106931 () Bool)

(declare-fun b_next!107635 () Bool)

(assert (=> b!3924729 (= b_free!106931 (not b_next!107635))))

(declare-fun tp!1194845 () Bool)

(declare-fun b_and!299285 () Bool)

(assert (=> b!3924729 (= tp!1194845 b_and!299285)))

(declare-fun b!3924723 () Bool)

(declare-fun b_free!106933 () Bool)

(declare-fun b_next!107637 () Bool)

(assert (=> b!3924723 (= b_free!106933 (not b_next!107637))))

(declare-fun tp!1194847 () Bool)

(declare-fun b_and!299287 () Bool)

(assert (=> b!3924723 (= tp!1194847 b_and!299287)))

(declare-fun b_free!106935 () Bool)

(declare-fun b_next!107639 () Bool)

(assert (=> b!3924723 (= b_free!106935 (not b_next!107639))))

(declare-fun tp!1194848 () Bool)

(declare-fun b_and!299289 () Bool)

(assert (=> b!3924723 (= tp!1194848 b_and!299289)))

(declare-fun b!3924710 () Bool)

(declare-fun e!2427401 () Bool)

(declare-fun e!2427416 () Bool)

(assert (=> b!3924710 (= e!2427401 (not e!2427416))))

(declare-fun res!1587719 () Bool)

(assert (=> b!3924710 (=> res!1587719 e!2427416)))

(declare-datatypes ((C!22988 0))(
  ( (C!22989 (val!13588 Int)) )
))
(declare-datatypes ((List!41773 0))(
  ( (Nil!41649) (Cons!41649 (h!47069 C!22988) (t!324908 List!41773)) )
))
(declare-fun lt!1369037 () List!41773)

(declare-fun lt!1369010 () List!41773)

(assert (=> b!3924710 (= res!1587719 (not (= lt!1369037 lt!1369010)))))

(declare-datatypes ((List!41774 0))(
  ( (Nil!41650) (Cons!41650 (h!47070 (_ BitVec 16)) (t!324909 List!41774)) )
))
(declare-datatypes ((TokenValue!6726 0))(
  ( (FloatLiteralValue!13452 (text!47527 List!41774)) (TokenValueExt!6725 (__x!25669 Int)) (Broken!33630 (value!205744 List!41774)) (Object!6849) (End!6726) (Def!6726) (Underscore!6726) (Match!6726) (Else!6726) (Error!6726) (Case!6726) (If!6726) (Extends!6726) (Abstract!6726) (Class!6726) (Val!6726) (DelimiterValue!13452 (del!6786 List!41774)) (KeywordValue!6732 (value!205745 List!41774)) (CommentValue!13452 (value!205746 List!41774)) (WhitespaceValue!13452 (value!205747 List!41774)) (IndentationValue!6726 (value!205748 List!41774)) (String!47347) (Int32!6726) (Broken!33631 (value!205749 List!41774)) (Boolean!6727) (Unit!59919) (OperatorValue!6729 (op!6786 List!41774)) (IdentifierValue!13452 (value!205750 List!41774)) (IdentifierValue!13453 (value!205751 List!41774)) (WhitespaceValue!13453 (value!205752 List!41774)) (True!13452) (False!13452) (Broken!33632 (value!205753 List!41774)) (Broken!33633 (value!205754 List!41774)) (True!13453) (RightBrace!6726) (RightBracket!6726) (Colon!6726) (Null!6726) (Comma!6726) (LeftBracket!6726) (False!13453) (LeftBrace!6726) (ImaginaryLiteralValue!6726 (text!47528 List!41774)) (StringLiteralValue!20178 (value!205755 List!41774)) (EOFValue!6726 (value!205756 List!41774)) (IdentValue!6726 (value!205757 List!41774)) (DelimiterValue!13453 (value!205758 List!41774)) (DedentValue!6726 (value!205759 List!41774)) (NewLineValue!6726 (value!205760 List!41774)) (IntegerValue!20178 (value!205761 (_ BitVec 32)) (text!47529 List!41774)) (IntegerValue!20179 (value!205762 Int) (text!47530 List!41774)) (Times!6726) (Or!6726) (Equal!6726) (Minus!6726) (Broken!33634 (value!205763 List!41774)) (And!6726) (Div!6726) (LessEqual!6726) (Mod!6726) (Concat!18127) (Not!6726) (Plus!6726) (SpaceValue!6726 (value!205764 List!41774)) (IntegerValue!20180 (value!205765 Int) (text!47531 List!41774)) (StringLiteralValue!20179 (text!47532 List!41774)) (FloatLiteralValue!13453 (text!47533 List!41774)) (BytesLiteralValue!6726 (value!205766 List!41774)) (CommentValue!13453 (value!205767 List!41774)) (StringLiteralValue!20180 (value!205768 List!41774)) (ErrorTokenValue!6726 (msg!6787 List!41774)) )
))
(declare-datatypes ((Regex!11401 0))(
  ( (ElementMatch!11401 (c!681962 C!22988)) (Concat!18128 (regOne!23314 Regex!11401) (regTwo!23314 Regex!11401)) (EmptyExpr!11401) (Star!11401 (reg!11730 Regex!11401)) (EmptyLang!11401) (Union!11401 (regOne!23315 Regex!11401) (regTwo!23315 Regex!11401)) )
))
(declare-datatypes ((String!47348 0))(
  ( (String!47349 (value!205769 String)) )
))
(declare-datatypes ((IArray!25419 0))(
  ( (IArray!25420 (innerList!12767 List!41773)) )
))
(declare-datatypes ((Conc!12707 0))(
  ( (Node!12707 (left!31805 Conc!12707) (right!32135 Conc!12707) (csize!25644 Int) (cheight!12918 Int)) (Leaf!19662 (xs!16013 IArray!25419) (csize!25645 Int)) (Empty!12707) )
))
(declare-datatypes ((BalanceConc!25008 0))(
  ( (BalanceConc!25009 (c!681963 Conc!12707)) )
))
(declare-datatypes ((TokenValueInjection!12880 0))(
  ( (TokenValueInjection!12881 (toValue!8948 Int) (toChars!8807 Int)) )
))
(declare-datatypes ((Rule!12792 0))(
  ( (Rule!12793 (regex!6496 Regex!11401) (tag!7356 String!47348) (isSeparator!6496 Bool) (transformation!6496 TokenValueInjection!12880)) )
))
(declare-datatypes ((Token!12130 0))(
  ( (Token!12131 (value!205770 TokenValue!6726) (rule!9434 Rule!12792) (size!31257 Int) (originalCharacters!7096 List!41773)) )
))
(declare-datatypes ((List!41775 0))(
  ( (Nil!41651) (Cons!41651 (h!47071 Token!12130) (t!324910 List!41775)) )
))
(declare-datatypes ((tuple2!40918 0))(
  ( (tuple2!40919 (_1!23593 List!41775) (_2!23593 List!41773)) )
))
(declare-fun lt!1369016 () tuple2!40918)

(declare-datatypes ((LexerInterface!6085 0))(
  ( (LexerInterfaceExt!6082 (__x!25670 Int)) (Lexer!6083) )
))
(declare-fun thiss!20629 () LexerInterface!6085)

(declare-datatypes ((List!41776 0))(
  ( (Nil!41652) (Cons!41652 (h!47072 Rule!12792) (t!324911 List!41776)) )
))
(declare-fun rules!2768 () List!41776)

(declare-datatypes ((tuple2!40920 0))(
  ( (tuple2!40921 (_1!23594 Token!12130) (_2!23594 List!41773)) )
))
(declare-datatypes ((Option!8916 0))(
  ( (None!8915) (Some!8915 (v!39241 tuple2!40920)) )
))
(declare-fun lt!1369036 () Option!8916)

(declare-fun lexList!1853 (LexerInterface!6085 List!41776 List!41773) tuple2!40918)

(assert (=> b!3924710 (= lt!1369016 (lexList!1853 thiss!20629 rules!2768 (_2!23594 (v!39241 lt!1369036))))))

(declare-fun lt!1369013 () Int)

(declare-fun lt!1369033 () List!41773)

(declare-fun lt!1369018 () TokenValue!6726)

(declare-fun lt!1369029 () List!41773)

(assert (=> b!3924710 (and (= (size!31257 (_1!23594 (v!39241 lt!1369036))) lt!1369013) (= (originalCharacters!7096 (_1!23594 (v!39241 lt!1369036))) lt!1369029) (= (v!39241 lt!1369036) (tuple2!40921 (Token!12131 lt!1369018 (rule!9434 (_1!23594 (v!39241 lt!1369036))) lt!1369013 lt!1369029) lt!1369033)))))

(declare-fun size!31258 (List!41773) Int)

(assert (=> b!3924710 (= lt!1369013 (size!31258 lt!1369029))))

(declare-fun e!2427409 () Bool)

(assert (=> b!3924710 e!2427409))

(declare-fun res!1587718 () Bool)

(assert (=> b!3924710 (=> (not res!1587718) (not e!2427409))))

(assert (=> b!3924710 (= res!1587718 (= (value!205770 (_1!23594 (v!39241 lt!1369036))) lt!1369018))))

(declare-fun apply!9735 (TokenValueInjection!12880 BalanceConc!25008) TokenValue!6726)

(declare-fun seqFromList!4763 (List!41773) BalanceConc!25008)

(assert (=> b!3924710 (= lt!1369018 (apply!9735 (transformation!6496 (rule!9434 (_1!23594 (v!39241 lt!1369036)))) (seqFromList!4763 lt!1369029)))))

(assert (=> b!3924710 (= (_2!23594 (v!39241 lt!1369036)) lt!1369033)))

(declare-datatypes ((Unit!59920 0))(
  ( (Unit!59921) )
))
(declare-fun lt!1369002 () Unit!59920)

(declare-fun lemmaSamePrefixThenSameSuffix!1812 (List!41773 List!41773 List!41773 List!41773 List!41773) Unit!59920)

(assert (=> b!3924710 (= lt!1369002 (lemmaSamePrefixThenSameSuffix!1812 lt!1369029 (_2!23594 (v!39241 lt!1369036)) lt!1369029 lt!1369033 lt!1369010))))

(declare-fun getSuffix!2046 (List!41773 List!41773) List!41773)

(assert (=> b!3924710 (= lt!1369033 (getSuffix!2046 lt!1369010 lt!1369029))))

(declare-fun isPrefix!3591 (List!41773 List!41773) Bool)

(assert (=> b!3924710 (isPrefix!3591 lt!1369029 lt!1369037)))

(declare-fun ++!10749 (List!41773 List!41773) List!41773)

(assert (=> b!3924710 (= lt!1369037 (++!10749 lt!1369029 (_2!23594 (v!39241 lt!1369036))))))

(declare-fun lt!1369004 () Unit!59920)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2454 (List!41773 List!41773) Unit!59920)

(assert (=> b!3924710 (= lt!1369004 (lemmaConcatTwoListThenFirstIsPrefix!2454 lt!1369029 (_2!23594 (v!39241 lt!1369036))))))

(declare-fun list!15479 (BalanceConc!25008) List!41773)

(declare-fun charsOf!4320 (Token!12130) BalanceConc!25008)

(assert (=> b!3924710 (= lt!1369029 (list!15479 (charsOf!4320 (_1!23594 (v!39241 lt!1369036)))))))

(declare-fun ruleValid!2444 (LexerInterface!6085 Rule!12792) Bool)

(assert (=> b!3924710 (ruleValid!2444 thiss!20629 (rule!9434 (_1!23594 (v!39241 lt!1369036))))))

(declare-fun lt!1369026 () Unit!59920)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1524 (LexerInterface!6085 Rule!12792 List!41776) Unit!59920)

(assert (=> b!3924710 (= lt!1369026 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1524 thiss!20629 (rule!9434 (_1!23594 (v!39241 lt!1369036))) rules!2768))))

(declare-fun lt!1369005 () Unit!59920)

(declare-fun lemmaCharactersSize!1153 (Token!12130) Unit!59920)

(assert (=> b!3924710 (= lt!1369005 (lemmaCharactersSize!1153 (_1!23594 (v!39241 lt!1369036))))))

(declare-fun b!3924711 () Bool)

(declare-fun res!1587714 () Bool)

(declare-fun e!2427413 () Bool)

(assert (=> b!3924711 (=> res!1587714 e!2427413)))

(declare-fun prefixTokens!80 () List!41775)

(declare-fun head!8315 (List!41775) Token!12130)

(assert (=> b!3924711 (= res!1587714 (not (= (head!8315 prefixTokens!80) (_1!23594 (v!39241 lt!1369036)))))))

(declare-fun b!3924712 () Bool)

(assert (=> b!3924712 (= e!2427409 (= (size!31257 (_1!23594 (v!39241 lt!1369036))) (size!31258 (originalCharacters!7096 (_1!23594 (v!39241 lt!1369036))))))))

(declare-fun b!3924713 () Bool)

(declare-fun e!2427398 () Bool)

(declare-fun lt!1369009 () List!41773)

(assert (=> b!3924713 (= e!2427398 (= lt!1369010 lt!1369009))))

(declare-fun suffix!1176 () List!41773)

(declare-fun lt!1369003 () List!41773)

(assert (=> b!3924713 (= lt!1369009 (++!10749 lt!1369029 (++!10749 lt!1369003 suffix!1176)))))

(declare-fun lt!1369019 () Unit!59920)

(declare-fun lemmaConcatAssociativity!2292 (List!41773 List!41773 List!41773) Unit!59920)

(assert (=> b!3924713 (= lt!1369019 (lemmaConcatAssociativity!2292 lt!1369029 lt!1369003 suffix!1176))))

(declare-fun b!3924714 () Bool)

(declare-fun e!2427395 () Unit!59920)

(declare-fun Unit!59922 () Unit!59920)

(assert (=> b!3924714 (= e!2427395 Unit!59922)))

(declare-fun e!2427415 () Bool)

(declare-fun b!3924715 () Bool)

(declare-fun e!2427394 () Bool)

(declare-fun tp!1194858 () Bool)

(declare-fun inv!55841 (String!47348) Bool)

(declare-fun inv!55844 (TokenValueInjection!12880) Bool)

(assert (=> b!3924715 (= e!2427415 (and tp!1194858 (inv!55841 (tag!7356 (rule!9434 (h!47071 prefixTokens!80)))) (inv!55844 (transformation!6496 (rule!9434 (h!47071 prefixTokens!80)))) e!2427394))))

(declare-fun b!3924716 () Bool)

(declare-fun e!2427388 () Unit!59920)

(declare-fun Unit!59923 () Unit!59920)

(assert (=> b!3924716 (= e!2427388 Unit!59923)))

(declare-fun lt!1369012 () Unit!59920)

(declare-fun prefix!426 () List!41773)

(assert (=> b!3924716 (= lt!1369012 (lemmaConcatTwoListThenFirstIsPrefix!2454 prefix!426 suffix!1176))))

(assert (=> b!3924716 (isPrefix!3591 prefix!426 lt!1369010)))

(declare-fun lt!1369027 () Unit!59920)

(declare-fun lemmaIsPrefixSameLengthThenSameList!787 (List!41773 List!41773 List!41773) Unit!59920)

(assert (=> b!3924716 (= lt!1369027 (lemmaIsPrefixSameLengthThenSameList!787 lt!1369029 prefix!426 lt!1369010))))

(assert (=> b!3924716 (= lt!1369029 prefix!426)))

(declare-fun lt!1369017 () Unit!59920)

(assert (=> b!3924716 (= lt!1369017 (lemmaSamePrefixThenSameSuffix!1812 lt!1369029 (_2!23594 (v!39241 lt!1369036)) prefix!426 suffix!1176 lt!1369010))))

(assert (=> b!3924716 false))

(declare-fun b!3924717 () Bool)

(declare-fun e!2427391 () Bool)

(assert (=> b!3924717 (= e!2427413 e!2427391)))

(declare-fun res!1587713 () Bool)

(assert (=> b!3924717 (=> res!1587713 e!2427391)))

(assert (=> b!3924717 (= res!1587713 (>= lt!1369013 (size!31258 prefix!426)))))

(assert (=> b!3924717 (isPrefix!3591 lt!1369029 prefix!426)))

(declare-fun lt!1369028 () Unit!59920)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!269 (List!41773 List!41773 List!41773) Unit!59920)

(assert (=> b!3924717 (= lt!1369028 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!269 prefix!426 lt!1369029 lt!1369010))))

(assert (=> b!3924717 (isPrefix!3591 prefix!426 lt!1369010)))

(declare-fun lt!1369032 () Unit!59920)

(assert (=> b!3924717 (= lt!1369032 (lemmaConcatTwoListThenFirstIsPrefix!2454 prefix!426 suffix!1176))))

(declare-fun b!3924718 () Bool)

(declare-fun res!1587722 () Bool)

(assert (=> b!3924718 (=> res!1587722 e!2427416)))

(assert (=> b!3924718 (= res!1587722 (or (not (= lt!1369016 (tuple2!40919 (_1!23593 lt!1369016) (_2!23593 lt!1369016)))) (= (_2!23594 (v!39241 lt!1369036)) suffix!1176)))))

(declare-fun b!3924719 () Bool)

(declare-fun e!2427397 () Bool)

(declare-fun e!2427417 () Bool)

(assert (=> b!3924719 (= e!2427397 e!2427417)))

(declare-fun res!1587715 () Bool)

(assert (=> b!3924719 (=> (not res!1587715) (not e!2427417))))

(declare-fun lt!1369024 () List!41775)

(declare-fun suffixResult!91 () List!41773)

(declare-fun lt!1369023 () tuple2!40918)

(assert (=> b!3924719 (= res!1587715 (= lt!1369023 (tuple2!40919 lt!1369024 suffixResult!91)))))

(assert (=> b!3924719 (= lt!1369023 (lexList!1853 thiss!20629 rules!2768 lt!1369010))))

(declare-fun suffixTokens!72 () List!41775)

(declare-fun ++!10750 (List!41775 List!41775) List!41775)

(assert (=> b!3924719 (= lt!1369024 (++!10750 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3924719 (= lt!1369010 (++!10749 prefix!426 suffix!1176))))

(declare-fun b!3924720 () Bool)

(assert (=> b!3924720 (= e!2427416 e!2427413)))

(declare-fun res!1587720 () Bool)

(assert (=> b!3924720 (=> res!1587720 e!2427413)))

(declare-fun lt!1369034 () Int)

(declare-fun lt!1369006 () Int)

(assert (=> b!3924720 (= res!1587720 (<= lt!1369034 lt!1369006))))

(declare-fun lt!1369008 () Unit!59920)

(assert (=> b!3924720 (= lt!1369008 e!2427388)))

(declare-fun c!681958 () Bool)

(assert (=> b!3924720 (= c!681958 (= lt!1369034 lt!1369006))))

(declare-fun lt!1369011 () Unit!59920)

(declare-fun e!2427410 () Unit!59920)

(assert (=> b!3924720 (= lt!1369011 e!2427410)))

(declare-fun c!681960 () Bool)

(assert (=> b!3924720 (= c!681960 (< lt!1369034 lt!1369006))))

(assert (=> b!3924720 (= lt!1369006 (size!31258 suffix!1176))))

(assert (=> b!3924720 (= lt!1369034 (size!31258 (_2!23594 (v!39241 lt!1369036))))))

(declare-fun b!3924721 () Bool)

(declare-fun c!681959 () Bool)

(declare-fun lt!1369025 () List!41775)

(declare-fun isEmpty!24812 (List!41775) Bool)

(assert (=> b!3924721 (= c!681959 (isEmpty!24812 lt!1369025))))

(declare-fun tail!6041 (List!41775) List!41775)

(assert (=> b!3924721 (= lt!1369025 (tail!6041 prefixTokens!80))))

(declare-fun e!2427405 () Unit!59920)

(assert (=> b!3924721 (= e!2427395 e!2427405)))

(declare-fun b!3924722 () Bool)

(declare-fun res!1587726 () Bool)

(assert (=> b!3924722 (=> res!1587726 e!2427416)))

(assert (=> b!3924722 (= res!1587726 (not (= lt!1369023 (tuple2!40919 (++!10750 (Cons!41651 (_1!23594 (v!39241 lt!1369036)) Nil!41651) (_1!23593 lt!1369016)) (_2!23593 lt!1369016)))))))

(declare-fun e!2427402 () Bool)

(assert (=> b!3924723 (= e!2427402 (and tp!1194847 tp!1194848))))

(declare-fun b!3924724 () Bool)

(declare-fun e!2427414 () Bool)

(assert (=> b!3924724 (= e!2427417 e!2427414)))

(declare-fun res!1587724 () Bool)

(assert (=> b!3924724 (=> (not res!1587724) (not e!2427414))))

(declare-fun lt!1369014 () tuple2!40918)

(assert (=> b!3924724 (= res!1587724 (= (lexList!1853 thiss!20629 rules!2768 suffix!1176) lt!1369014))))

(assert (=> b!3924724 (= lt!1369014 (tuple2!40919 suffixTokens!72 suffixResult!91))))

(declare-fun b!3924725 () Bool)

(declare-fun Unit!59924 () Unit!59920)

(assert (=> b!3924725 (= e!2427405 Unit!59924)))

(declare-fun lt!1369020 () Unit!59920)

(declare-fun lt!1369030 () tuple2!40920)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!544 (List!41773 List!41773 List!41773 List!41773) Unit!59920)

(assert (=> b!3924725 (= lt!1369020 (lemmaConcatSameAndSameSizesThenSameLists!544 lt!1369029 (_2!23594 (v!39241 lt!1369036)) lt!1369029 (_2!23594 lt!1369030)))))

(assert (=> b!3924725 (= (_2!23594 (v!39241 lt!1369036)) (_2!23594 lt!1369030))))

(declare-fun lt!1369022 () Unit!59920)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!96 (LexerInterface!6085 List!41776 List!41773 List!41773 List!41775 List!41773) Unit!59920)

(assert (=> b!3924725 (= lt!1369022 (lemmaLexWithSmallerInputCannotProduceSameResults!96 thiss!20629 rules!2768 suffix!1176 (_2!23594 lt!1369030) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587723 () Bool)

(declare-fun call!284692 () tuple2!40918)

(assert (=> b!3924725 (= res!1587723 (not (= call!284692 lt!1369014)))))

(declare-fun e!2427422 () Bool)

(assert (=> b!3924725 (=> (not res!1587723) (not e!2427422))))

(assert (=> b!3924725 e!2427422))

(declare-fun b!3924726 () Bool)

(assert (=> b!3924726 (= e!2427414 e!2427401)))

(declare-fun res!1587725 () Bool)

(assert (=> b!3924726 (=> (not res!1587725) (not e!2427401))))

(get-info :version)

(assert (=> b!3924726 (= res!1587725 ((_ is Some!8915) lt!1369036))))

(declare-fun maxPrefix!3389 (LexerInterface!6085 List!41776 List!41773) Option!8916)

(assert (=> b!3924726 (= lt!1369036 (maxPrefix!3389 thiss!20629 rules!2768 lt!1369010))))

(declare-fun b!3924727 () Bool)

(declare-fun res!1587710 () Bool)

(assert (=> b!3924727 (=> (not res!1587710) (not e!2427397))))

(declare-fun rulesInvariant!5428 (LexerInterface!6085 List!41776) Bool)

(assert (=> b!3924727 (= res!1587710 (rulesInvariant!5428 thiss!20629 rules!2768))))

(declare-fun b!3924728 () Bool)

(declare-fun e!2427420 () Bool)

(declare-fun tp_is_empty!19773 () Bool)

(declare-fun tp!1194843 () Bool)

(assert (=> b!3924728 (= e!2427420 (and tp_is_empty!19773 tp!1194843))))

(declare-fun e!2427407 () Bool)

(assert (=> b!3924729 (= e!2427407 (and tp!1194849 tp!1194845))))

(declare-fun b!3924730 () Bool)

(declare-fun e!2427419 () Bool)

(declare-fun e!2427411 () Bool)

(declare-fun tp!1194856 () Bool)

(assert (=> b!3924730 (= e!2427419 (and e!2427411 tp!1194856))))

(declare-fun bm!284687 () Bool)

(assert (=> bm!284687 (= call!284692 (lexList!1853 thiss!20629 rules!2768 (_2!23594 lt!1369030)))))

(declare-fun b!3924731 () Bool)

(declare-fun e!2427404 () Bool)

(declare-fun tp!1194846 () Bool)

(assert (=> b!3924731 (= e!2427404 (and tp_is_empty!19773 tp!1194846))))

(declare-fun b!3924732 () Bool)

(declare-fun Unit!59925 () Unit!59920)

(assert (=> b!3924732 (= e!2427405 Unit!59925)))

(declare-fun lt!1369021 () Unit!59920)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!96 (LexerInterface!6085 List!41776 List!41773 List!41773 List!41775 List!41773 List!41775) Unit!59920)

(assert (=> b!3924732 (= lt!1369021 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!96 thiss!20629 rules!2768 suffix!1176 (_2!23594 lt!1369030) suffixTokens!72 suffixResult!91 lt!1369025))))

(declare-fun res!1587711 () Bool)

(assert (=> b!3924732 (= res!1587711 (not (= call!284692 (tuple2!40919 (++!10750 lt!1369025 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2427393 () Bool)

(assert (=> b!3924732 (=> (not res!1587711) (not e!2427393))))

(assert (=> b!3924732 e!2427393))

(declare-fun b!3924733 () Bool)

(declare-fun e!2427392 () Bool)

(declare-fun tp!1194857 () Bool)

(assert (=> b!3924733 (= e!2427392 (and tp_is_empty!19773 tp!1194857))))

(declare-fun b!3924734 () Bool)

(declare-fun Unit!59926 () Unit!59920)

(assert (=> b!3924734 (= e!2427410 Unit!59926)))

(declare-fun lt!1369007 () Int)

(assert (=> b!3924734 (= lt!1369007 (size!31258 lt!1369010))))

(declare-fun lt!1369031 () Unit!59920)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1327 (LexerInterface!6085 List!41776 List!41773 List!41773 List!41773 Rule!12792) Unit!59920)

(assert (=> b!3924734 (= lt!1369031 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1327 thiss!20629 rules!2768 lt!1369029 lt!1369010 (_2!23594 (v!39241 lt!1369036)) (rule!9434 (_1!23594 (v!39241 lt!1369036)))))))

(declare-fun maxPrefixOneRule!2459 (LexerInterface!6085 Rule!12792 List!41773) Option!8916)

(assert (=> b!3924734 (= (maxPrefixOneRule!2459 thiss!20629 (rule!9434 (_1!23594 (v!39241 lt!1369036))) lt!1369010) (Some!8915 (tuple2!40921 (Token!12131 lt!1369018 (rule!9434 (_1!23594 (v!39241 lt!1369036))) lt!1369013 lt!1369029) (_2!23594 (v!39241 lt!1369036)))))))

(declare-fun get!13764 (Option!8916) tuple2!40920)

(assert (=> b!3924734 (= lt!1369030 (get!13764 lt!1369036))))

(declare-fun c!681961 () Bool)

(assert (=> b!3924734 (= c!681961 (< (size!31258 (_2!23594 lt!1369030)) lt!1369006))))

(declare-fun lt!1369035 () Unit!59920)

(assert (=> b!3924734 (= lt!1369035 e!2427395)))

(assert (=> b!3924734 false))

(declare-fun b!3924735 () Bool)

(declare-fun res!1587721 () Bool)

(assert (=> b!3924735 (=> (not res!1587721) (not e!2427397))))

(declare-fun isEmpty!24813 (List!41773) Bool)

(assert (=> b!3924735 (= res!1587721 (not (isEmpty!24813 prefix!426)))))

(declare-fun b!3924736 () Bool)

(declare-fun e!2427400 () Bool)

(declare-fun tp!1194842 () Bool)

(declare-fun e!2427418 () Bool)

(declare-fun inv!21 (TokenValue!6726) Bool)

(assert (=> b!3924736 (= e!2427400 (and (inv!21 (value!205770 (h!47071 suffixTokens!72))) e!2427418 tp!1194842))))

(declare-fun b!3924737 () Bool)

(declare-fun e!2427396 () Bool)

(assert (=> b!3924737 (= e!2427396 e!2427398)))

(declare-fun res!1587727 () Bool)

(assert (=> b!3924737 (=> res!1587727 e!2427398)))

(assert (=> b!3924737 (= res!1587727 (or (not (= lt!1369009 lt!1369010)) (not (= lt!1369009 lt!1369037))))))

(declare-fun lt!1369015 () List!41773)

(assert (=> b!3924737 (= lt!1369009 (++!10749 lt!1369015 suffix!1176))))

(declare-fun b!3924738 () Bool)

(assert (=> b!3924738 (= e!2427393 false)))

(assert (=> b!3924739 (= e!2427394 (and tp!1194853 tp!1194844))))

(declare-fun b!3924740 () Bool)

(assert (=> b!3924740 (= e!2427422 false)))

(declare-fun b!3924741 () Bool)

(declare-fun Unit!59927 () Unit!59920)

(assert (=> b!3924741 (= e!2427388 Unit!59927)))

(declare-fun tp!1194852 () Bool)

(declare-fun b!3924742 () Bool)

(declare-fun e!2427406 () Bool)

(declare-fun inv!55845 (Token!12130) Bool)

(assert (=> b!3924742 (= e!2427406 (and (inv!55845 (h!47071 suffixTokens!72)) e!2427400 tp!1194852))))

(declare-fun tp!1194851 () Bool)

(declare-fun e!2427403 () Bool)

(declare-fun e!2427399 () Bool)

(declare-fun b!3924743 () Bool)

(assert (=> b!3924743 (= e!2427399 (and (inv!55845 (h!47071 prefixTokens!80)) e!2427403 tp!1194851))))

(declare-fun b!3924744 () Bool)

(declare-fun res!1587717 () Bool)

(assert (=> b!3924744 (=> (not res!1587717) (not e!2427397))))

(assert (=> b!3924744 (= res!1587717 (not (isEmpty!24812 prefixTokens!80)))))

(declare-fun b!3924745 () Bool)

(declare-fun Unit!59928 () Unit!59920)

(assert (=> b!3924745 (= e!2427410 Unit!59928)))

(declare-fun tp!1194854 () Bool)

(declare-fun b!3924746 () Bool)

(assert (=> b!3924746 (= e!2427418 (and tp!1194854 (inv!55841 (tag!7356 (rule!9434 (h!47071 suffixTokens!72)))) (inv!55844 (transformation!6496 (rule!9434 (h!47071 suffixTokens!72)))) e!2427407))))

(declare-fun b!3924747 () Bool)

(declare-fun tp!1194850 () Bool)

(assert (=> b!3924747 (= e!2427403 (and (inv!21 (value!205770 (h!47071 prefixTokens!80))) e!2427415 tp!1194850))))

(declare-fun tp!1194855 () Bool)

(declare-fun b!3924748 () Bool)

(assert (=> b!3924748 (= e!2427411 (and tp!1194855 (inv!55841 (tag!7356 (h!47072 rules!2768))) (inv!55844 (transformation!6496 (h!47072 rules!2768))) e!2427402))))

(declare-fun b!3924749 () Bool)

(declare-fun res!1587712 () Bool)

(assert (=> b!3924749 (=> (not res!1587712) (not e!2427397))))

(declare-fun isEmpty!24814 (List!41776) Bool)

(assert (=> b!3924749 (= res!1587712 (not (isEmpty!24814 rules!2768)))))

(declare-fun b!3924750 () Bool)

(assert (=> b!3924750 (= e!2427391 e!2427396)))

(declare-fun res!1587709 () Bool)

(assert (=> b!3924750 (=> res!1587709 e!2427396)))

(assert (=> b!3924750 (= res!1587709 (not (= lt!1369015 prefix!426)))))

(assert (=> b!3924750 (= lt!1369015 (++!10749 lt!1369029 lt!1369003))))

(assert (=> b!3924750 (= lt!1369003 (getSuffix!2046 prefix!426 lt!1369029))))

(declare-fun res!1587716 () Bool)

(assert (=> start!368076 (=> (not res!1587716) (not e!2427397))))

(assert (=> start!368076 (= res!1587716 ((_ is Lexer!6083) thiss!20629))))

(assert (=> start!368076 e!2427397))

(assert (=> start!368076 e!2427392))

(assert (=> start!368076 true))

(assert (=> start!368076 e!2427420))

(assert (=> start!368076 e!2427419))

(assert (=> start!368076 e!2427399))

(assert (=> start!368076 e!2427406))

(assert (=> start!368076 e!2427404))

(assert (= (and start!368076 res!1587716) b!3924749))

(assert (= (and b!3924749 res!1587712) b!3924727))

(assert (= (and b!3924727 res!1587710) b!3924744))

(assert (= (and b!3924744 res!1587717) b!3924735))

(assert (= (and b!3924735 res!1587721) b!3924719))

(assert (= (and b!3924719 res!1587715) b!3924724))

(assert (= (and b!3924724 res!1587724) b!3924726))

(assert (= (and b!3924726 res!1587725) b!3924710))

(assert (= (and b!3924710 res!1587718) b!3924712))

(assert (= (and b!3924710 (not res!1587719)) b!3924722))

(assert (= (and b!3924722 (not res!1587726)) b!3924718))

(assert (= (and b!3924718 (not res!1587722)) b!3924720))

(assert (= (and b!3924720 c!681960) b!3924734))

(assert (= (and b!3924720 (not c!681960)) b!3924745))

(assert (= (and b!3924734 c!681961) b!3924721))

(assert (= (and b!3924734 (not c!681961)) b!3924714))

(assert (= (and b!3924721 c!681959) b!3924725))

(assert (= (and b!3924721 (not c!681959)) b!3924732))

(assert (= (and b!3924725 res!1587723) b!3924740))

(assert (= (and b!3924732 res!1587711) b!3924738))

(assert (= (or b!3924725 b!3924732) bm!284687))

(assert (= (and b!3924720 c!681958) b!3924716))

(assert (= (and b!3924720 (not c!681958)) b!3924741))

(assert (= (and b!3924720 (not res!1587720)) b!3924711))

(assert (= (and b!3924711 (not res!1587714)) b!3924717))

(assert (= (and b!3924717 (not res!1587713)) b!3924750))

(assert (= (and b!3924750 (not res!1587709)) b!3924737))

(assert (= (and b!3924737 (not res!1587727)) b!3924713))

(assert (= (and start!368076 ((_ is Cons!41649) suffixResult!91)) b!3924733))

(assert (= (and start!368076 ((_ is Cons!41649) suffix!1176)) b!3924728))

(assert (= b!3924748 b!3924723))

(assert (= b!3924730 b!3924748))

(assert (= (and start!368076 ((_ is Cons!41652) rules!2768)) b!3924730))

(assert (= b!3924715 b!3924739))

(assert (= b!3924747 b!3924715))

(assert (= b!3924743 b!3924747))

(assert (= (and start!368076 ((_ is Cons!41651) prefixTokens!80)) b!3924743))

(assert (= b!3924746 b!3924729))

(assert (= b!3924736 b!3924746))

(assert (= b!3924742 b!3924736))

(assert (= (and start!368076 ((_ is Cons!41651) suffixTokens!72)) b!3924742))

(assert (= (and start!368076 ((_ is Cons!41649) prefix!426)) b!3924731))

(declare-fun m!4488799 () Bool)

(assert (=> b!3924734 m!4488799))

(declare-fun m!4488801 () Bool)

(assert (=> b!3924734 m!4488801))

(declare-fun m!4488803 () Bool)

(assert (=> b!3924734 m!4488803))

(declare-fun m!4488805 () Bool)

(assert (=> b!3924734 m!4488805))

(declare-fun m!4488807 () Bool)

(assert (=> b!3924734 m!4488807))

(declare-fun m!4488809 () Bool)

(assert (=> b!3924726 m!4488809))

(declare-fun m!4488811 () Bool)

(assert (=> bm!284687 m!4488811))

(declare-fun m!4488813 () Bool)

(assert (=> b!3924716 m!4488813))

(declare-fun m!4488815 () Bool)

(assert (=> b!3924716 m!4488815))

(declare-fun m!4488817 () Bool)

(assert (=> b!3924716 m!4488817))

(declare-fun m!4488819 () Bool)

(assert (=> b!3924716 m!4488819))

(declare-fun m!4488821 () Bool)

(assert (=> b!3924735 m!4488821))

(declare-fun m!4488823 () Bool)

(assert (=> b!3924720 m!4488823))

(declare-fun m!4488825 () Bool)

(assert (=> b!3924720 m!4488825))

(declare-fun m!4488827 () Bool)

(assert (=> b!3924749 m!4488827))

(declare-fun m!4488829 () Bool)

(assert (=> b!3924717 m!4488829))

(declare-fun m!4488831 () Bool)

(assert (=> b!3924717 m!4488831))

(assert (=> b!3924717 m!4488813))

(declare-fun m!4488833 () Bool)

(assert (=> b!3924717 m!4488833))

(assert (=> b!3924717 m!4488815))

(declare-fun m!4488835 () Bool)

(assert (=> b!3924722 m!4488835))

(declare-fun m!4488837 () Bool)

(assert (=> b!3924732 m!4488837))

(declare-fun m!4488839 () Bool)

(assert (=> b!3924732 m!4488839))

(declare-fun m!4488841 () Bool)

(assert (=> b!3924750 m!4488841))

(declare-fun m!4488843 () Bool)

(assert (=> b!3924750 m!4488843))

(declare-fun m!4488845 () Bool)

(assert (=> b!3924712 m!4488845))

(declare-fun m!4488847 () Bool)

(assert (=> b!3924724 m!4488847))

(declare-fun m!4488849 () Bool)

(assert (=> b!3924737 m!4488849))

(declare-fun m!4488851 () Bool)

(assert (=> b!3924744 m!4488851))

(declare-fun m!4488853 () Bool)

(assert (=> b!3924747 m!4488853))

(declare-fun m!4488855 () Bool)

(assert (=> b!3924742 m!4488855))

(declare-fun m!4488857 () Bool)

(assert (=> b!3924721 m!4488857))

(declare-fun m!4488859 () Bool)

(assert (=> b!3924721 m!4488859))

(declare-fun m!4488861 () Bool)

(assert (=> b!3924743 m!4488861))

(declare-fun m!4488863 () Bool)

(assert (=> b!3924746 m!4488863))

(declare-fun m!4488865 () Bool)

(assert (=> b!3924746 m!4488865))

(declare-fun m!4488867 () Bool)

(assert (=> b!3924736 m!4488867))

(declare-fun m!4488869 () Bool)

(assert (=> b!3924748 m!4488869))

(declare-fun m!4488871 () Bool)

(assert (=> b!3924748 m!4488871))

(declare-fun m!4488873 () Bool)

(assert (=> b!3924713 m!4488873))

(assert (=> b!3924713 m!4488873))

(declare-fun m!4488875 () Bool)

(assert (=> b!3924713 m!4488875))

(declare-fun m!4488877 () Bool)

(assert (=> b!3924713 m!4488877))

(declare-fun m!4488879 () Bool)

(assert (=> b!3924715 m!4488879))

(declare-fun m!4488881 () Bool)

(assert (=> b!3924715 m!4488881))

(declare-fun m!4488883 () Bool)

(assert (=> b!3924710 m!4488883))

(declare-fun m!4488885 () Bool)

(assert (=> b!3924710 m!4488885))

(declare-fun m!4488887 () Bool)

(assert (=> b!3924710 m!4488887))

(declare-fun m!4488889 () Bool)

(assert (=> b!3924710 m!4488889))

(declare-fun m!4488891 () Bool)

(assert (=> b!3924710 m!4488891))

(declare-fun m!4488893 () Bool)

(assert (=> b!3924710 m!4488893))

(declare-fun m!4488895 () Bool)

(assert (=> b!3924710 m!4488895))

(declare-fun m!4488897 () Bool)

(assert (=> b!3924710 m!4488897))

(declare-fun m!4488899 () Bool)

(assert (=> b!3924710 m!4488899))

(declare-fun m!4488901 () Bool)

(assert (=> b!3924710 m!4488901))

(declare-fun m!4488903 () Bool)

(assert (=> b!3924710 m!4488903))

(assert (=> b!3924710 m!4488889))

(declare-fun m!4488905 () Bool)

(assert (=> b!3924710 m!4488905))

(declare-fun m!4488907 () Bool)

(assert (=> b!3924710 m!4488907))

(assert (=> b!3924710 m!4488885))

(declare-fun m!4488909 () Bool)

(assert (=> b!3924710 m!4488909))

(declare-fun m!4488911 () Bool)

(assert (=> b!3924725 m!4488911))

(declare-fun m!4488913 () Bool)

(assert (=> b!3924725 m!4488913))

(declare-fun m!4488915 () Bool)

(assert (=> b!3924719 m!4488915))

(declare-fun m!4488917 () Bool)

(assert (=> b!3924719 m!4488917))

(declare-fun m!4488919 () Bool)

(assert (=> b!3924719 m!4488919))

(declare-fun m!4488921 () Bool)

(assert (=> b!3924727 m!4488921))

(declare-fun m!4488923 () Bool)

(assert (=> b!3924711 m!4488923))

(check-sat (not b!3924736) (not b!3924735) (not b!3924732) (not b!3924719) (not b!3924737) (not b!3924710) b_and!299285 (not b!3924750) (not b!3924747) (not b!3924742) tp_is_empty!19773 (not b!3924746) (not b!3924726) (not b!3924734) (not b!3924727) (not b!3924717) (not b!3924712) b_and!299281 b_and!299289 (not b_next!107631) (not b!3924730) (not b!3924749) (not b_next!107629) (not b!3924722) (not b_next!107637) b_and!299279 (not b!3924721) (not b!3924720) (not b!3924748) (not b!3924724) (not b!3924744) b_and!299283 (not b!3924716) (not b!3924728) (not bm!284687) (not b!3924743) (not b_next!107635) (not b_next!107633) (not b!3924731) (not b!3924713) (not b!3924715) (not b!3924711) (not b!3924733) (not b!3924725) (not b_next!107639) b_and!299287)
(check-sat (not b_next!107629) b_and!299283 b_and!299285 b_and!299281 b_and!299289 (not b_next!107631) (not b_next!107637) b_and!299279 (not b_next!107635) (not b_next!107633) (not b_next!107639) b_and!299287)
