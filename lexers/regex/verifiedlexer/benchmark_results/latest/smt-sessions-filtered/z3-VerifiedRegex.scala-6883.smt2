; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362612 () Bool)

(assert start!362612)

(declare-fun b!3865401 () Bool)

(declare-fun b_free!104125 () Bool)

(declare-fun b_next!104829 () Bool)

(assert (=> b!3865401 (= b_free!104125 (not b_next!104829))))

(declare-fun tp!1171882 () Bool)

(declare-fun b_and!289539 () Bool)

(assert (=> b!3865401 (= tp!1171882 b_and!289539)))

(declare-fun b_free!104127 () Bool)

(declare-fun b_next!104831 () Bool)

(assert (=> b!3865401 (= b_free!104127 (not b_next!104831))))

(declare-fun tp!1171878 () Bool)

(declare-fun b_and!289541 () Bool)

(assert (=> b!3865401 (= tp!1171878 b_and!289541)))

(declare-fun b!3865405 () Bool)

(declare-fun b_free!104129 () Bool)

(declare-fun b_next!104833 () Bool)

(assert (=> b!3865405 (= b_free!104129 (not b_next!104833))))

(declare-fun tp!1171884 () Bool)

(declare-fun b_and!289543 () Bool)

(assert (=> b!3865405 (= tp!1171884 b_and!289543)))

(declare-fun b_free!104131 () Bool)

(declare-fun b_next!104835 () Bool)

(assert (=> b!3865405 (= b_free!104131 (not b_next!104835))))

(declare-fun tp!1171883 () Bool)

(declare-fun b_and!289545 () Bool)

(assert (=> b!3865405 (= tp!1171883 b_and!289545)))

(declare-fun b!3865394 () Bool)

(declare-fun b_free!104133 () Bool)

(declare-fun b_next!104837 () Bool)

(assert (=> b!3865394 (= b_free!104133 (not b_next!104837))))

(declare-fun tp!1171880 () Bool)

(declare-fun b_and!289547 () Bool)

(assert (=> b!3865394 (= tp!1171880 b_and!289547)))

(declare-fun b_free!104135 () Bool)

(declare-fun b_next!104839 () Bool)

(assert (=> b!3865394 (= b_free!104135 (not b_next!104839))))

(declare-fun tp!1171868 () Bool)

(declare-fun b_and!289549 () Bool)

(assert (=> b!3865394 (= tp!1171868 b_and!289549)))

(declare-fun b!3865381 () Bool)

(declare-datatypes ((Unit!58700 0))(
  ( (Unit!58701) )
))
(declare-fun e!2390153 () Unit!58700)

(declare-fun Unit!58702 () Unit!58700)

(assert (=> b!3865381 (= e!2390153 Unit!58702)))

(declare-datatypes ((C!22704 0))(
  ( (C!22705 (val!13446 Int)) )
))
(declare-datatypes ((List!41140 0))(
  ( (Nil!41016) (Cons!41016 (h!46436 C!22704) (t!313919 List!41140)) )
))
(declare-fun lt!1343739 () List!41140)

(declare-datatypes ((List!41141 0))(
  ( (Nil!41017) (Cons!41017 (h!46437 (_ BitVec 16)) (t!313920 List!41141)) )
))
(declare-datatypes ((TokenValue!6584 0))(
  ( (FloatLiteralValue!13168 (text!46533 List!41141)) (TokenValueExt!6583 (__x!25385 Int)) (Broken!32920 (value!201697 List!41141)) (Object!6707) (End!6584) (Def!6584) (Underscore!6584) (Match!6584) (Else!6584) (Error!6584) (Case!6584) (If!6584) (Extends!6584) (Abstract!6584) (Class!6584) (Val!6584) (DelimiterValue!13168 (del!6644 List!41141)) (KeywordValue!6590 (value!201698 List!41141)) (CommentValue!13168 (value!201699 List!41141)) (WhitespaceValue!13168 (value!201700 List!41141)) (IndentationValue!6584 (value!201701 List!41141)) (String!46637) (Int32!6584) (Broken!32921 (value!201702 List!41141)) (Boolean!6585) (Unit!58703) (OperatorValue!6587 (op!6644 List!41141)) (IdentifierValue!13168 (value!201703 List!41141)) (IdentifierValue!13169 (value!201704 List!41141)) (WhitespaceValue!13169 (value!201705 List!41141)) (True!13168) (False!13168) (Broken!32922 (value!201706 List!41141)) (Broken!32923 (value!201707 List!41141)) (True!13169) (RightBrace!6584) (RightBracket!6584) (Colon!6584) (Null!6584) (Comma!6584) (LeftBracket!6584) (False!13169) (LeftBrace!6584) (ImaginaryLiteralValue!6584 (text!46534 List!41141)) (StringLiteralValue!19752 (value!201708 List!41141)) (EOFValue!6584 (value!201709 List!41141)) (IdentValue!6584 (value!201710 List!41141)) (DelimiterValue!13169 (value!201711 List!41141)) (DedentValue!6584 (value!201712 List!41141)) (NewLineValue!6584 (value!201713 List!41141)) (IntegerValue!19752 (value!201714 (_ BitVec 32)) (text!46535 List!41141)) (IntegerValue!19753 (value!201715 Int) (text!46536 List!41141)) (Times!6584) (Or!6584) (Equal!6584) (Minus!6584) (Broken!32924 (value!201716 List!41141)) (And!6584) (Div!6584) (LessEqual!6584) (Mod!6584) (Concat!17843) (Not!6584) (Plus!6584) (SpaceValue!6584 (value!201717 List!41141)) (IntegerValue!19754 (value!201718 Int) (text!46537 List!41141)) (StringLiteralValue!19753 (text!46538 List!41141)) (FloatLiteralValue!13169 (text!46539 List!41141)) (BytesLiteralValue!6584 (value!201719 List!41141)) (CommentValue!13169 (value!201720 List!41141)) (StringLiteralValue!19754 (value!201721 List!41141)) (ErrorTokenValue!6584 (msg!6645 List!41141)) )
))
(declare-datatypes ((Regex!11259 0))(
  ( (ElementMatch!11259 (c!672792 C!22704)) (Concat!17844 (regOne!23030 Regex!11259) (regTwo!23030 Regex!11259)) (EmptyExpr!11259) (Star!11259 (reg!11588 Regex!11259)) (EmptyLang!11259) (Union!11259 (regOne!23031 Regex!11259) (regTwo!23031 Regex!11259)) )
))
(declare-datatypes ((String!46638 0))(
  ( (String!46639 (value!201722 String)) )
))
(declare-datatypes ((IArray!25135 0))(
  ( (IArray!25136 (innerList!12625 List!41140)) )
))
(declare-datatypes ((Conc!12565 0))(
  ( (Node!12565 (left!31560 Conc!12565) (right!31890 Conc!12565) (csize!25360 Int) (cheight!12776 Int)) (Leaf!19449 (xs!15871 IArray!25135) (csize!25361 Int)) (Empty!12565) )
))
(declare-datatypes ((BalanceConc!24724 0))(
  ( (BalanceConc!24725 (c!672793 Conc!12565)) )
))
(declare-datatypes ((TokenValueInjection!12596 0))(
  ( (TokenValueInjection!12597 (toValue!8782 Int) (toChars!8641 Int)) )
))
(declare-datatypes ((Rule!12508 0))(
  ( (Rule!12509 (regex!6354 Regex!11259) (tag!7214 String!46638) (isSeparator!6354 Bool) (transformation!6354 TokenValueInjection!12596)) )
))
(declare-datatypes ((Token!11846 0))(
  ( (Token!11847 (value!201723 TokenValue!6584) (rule!9232 Rule!12508) (size!30841 Int) (originalCharacters!6954 List!41140)) )
))
(declare-datatypes ((tuple2!40230 0))(
  ( (tuple2!40231 (_1!23249 Token!11846) (_2!23249 List!41140)) )
))
(declare-datatypes ((Option!8772 0))(
  ( (None!8771) (Some!8771 (v!39069 tuple2!40230)) )
))
(declare-fun lt!1343744 () Option!8772)

(declare-fun lt!1343755 () Unit!58700)

(declare-fun lt!1343751 () tuple2!40230)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!438 (List!41140 List!41140 List!41140 List!41140) Unit!58700)

(assert (=> b!3865381 (= lt!1343755 (lemmaConcatSameAndSameSizesThenSameLists!438 lt!1343739 (_2!23249 (v!39069 lt!1343744)) lt!1343739 (_2!23249 lt!1343751)))))

(assert (=> b!3865381 (= (_2!23249 (v!39069 lt!1343744)) (_2!23249 lt!1343751))))

(declare-fun suffixResult!91 () List!41140)

(declare-datatypes ((LexerInterface!5943 0))(
  ( (LexerInterfaceExt!5940 (__x!25386 Int)) (Lexer!5941) )
))
(declare-fun thiss!20629 () LexerInterface!5943)

(declare-fun suffix!1176 () List!41140)

(declare-datatypes ((List!41142 0))(
  ( (Nil!41018) (Cons!41018 (h!46438 Rule!12508) (t!313921 List!41142)) )
))
(declare-fun rules!2768 () List!41142)

(declare-datatypes ((List!41143 0))(
  ( (Nil!41019) (Cons!41019 (h!46439 Token!11846) (t!313922 List!41143)) )
))
(declare-fun suffixTokens!72 () List!41143)

(declare-fun lt!1343758 () Unit!58700)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!14 (LexerInterface!5943 List!41142 List!41140 List!41140 List!41143 List!41140) Unit!58700)

(assert (=> b!3865381 (= lt!1343758 (lemmaLexWithSmallerInputCannotProduceSameResults!14 thiss!20629 rules!2768 suffix!1176 (_2!23249 lt!1343751) suffixTokens!72 suffixResult!91))))

(declare-fun res!1565413 () Bool)

(declare-datatypes ((tuple2!40232 0))(
  ( (tuple2!40233 (_1!23250 List!41143) (_2!23250 List!41140)) )
))
(declare-fun call!282630 () tuple2!40232)

(declare-fun lt!1343743 () tuple2!40232)

(assert (=> b!3865381 (= res!1565413 (not (= call!282630 lt!1343743)))))

(declare-fun e!2390174 () Bool)

(assert (=> b!3865381 (=> (not res!1565413) (not e!2390174))))

(assert (=> b!3865381 e!2390174))

(declare-fun e!2390171 () Bool)

(declare-fun e!2390172 () Bool)

(declare-fun b!3865382 () Bool)

(declare-fun tp!1171869 () Bool)

(declare-fun inv!55176 (String!46638) Bool)

(declare-fun inv!55179 (TokenValueInjection!12596) Bool)

(assert (=> b!3865382 (= e!2390171 (and tp!1171869 (inv!55176 (tag!7214 (h!46438 rules!2768))) (inv!55179 (transformation!6354 (h!46438 rules!2768))) e!2390172))))

(declare-fun b!3865383 () Bool)

(declare-fun res!1565402 () Bool)

(declare-fun e!2390150 () Bool)

(assert (=> b!3865383 (=> (not res!1565402) (not e!2390150))))

(declare-fun rulesInvariant!5286 (LexerInterface!5943 List!41142) Bool)

(assert (=> b!3865383 (= res!1565402 (rulesInvariant!5286 thiss!20629 rules!2768))))

(declare-fun e!2390161 () Bool)

(declare-fun b!3865384 () Bool)

(declare-fun tp!1171870 () Bool)

(declare-fun e!2390168 () Bool)

(declare-fun inv!55180 (Token!11846) Bool)

(assert (=> b!3865384 (= e!2390168 (and (inv!55180 (h!46439 suffixTokens!72)) e!2390161 tp!1171870))))

(declare-fun b!3865385 () Bool)

(declare-fun e!2390146 () Bool)

(declare-fun e!2390158 () Bool)

(assert (=> b!3865385 (= e!2390146 e!2390158)))

(declare-fun res!1565412 () Bool)

(assert (=> b!3865385 (=> res!1565412 e!2390158)))

(declare-fun lt!1343740 () List!41140)

(declare-fun isPrefix!3453 (List!41140 List!41140) Bool)

(assert (=> b!3865385 (= res!1565412 (not (isPrefix!3453 lt!1343739 lt!1343740)))))

(declare-fun prefix!426 () List!41140)

(assert (=> b!3865385 (isPrefix!3453 prefix!426 lt!1343740)))

(declare-fun lt!1343754 () Unit!58700)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2316 (List!41140 List!41140) Unit!58700)

(assert (=> b!3865385 (= lt!1343754 (lemmaConcatTwoListThenFirstIsPrefix!2316 prefix!426 suffix!1176))))

(declare-fun res!1565408 () Bool)

(assert (=> start!362612 (=> (not res!1565408) (not e!2390150))))

(get-info :version)

(assert (=> start!362612 (= res!1565408 ((_ is Lexer!5941) thiss!20629))))

(assert (=> start!362612 e!2390150))

(declare-fun e!2390167 () Bool)

(assert (=> start!362612 e!2390167))

(assert (=> start!362612 true))

(declare-fun e!2390149 () Bool)

(assert (=> start!362612 e!2390149))

(declare-fun e!2390166 () Bool)

(assert (=> start!362612 e!2390166))

(declare-fun e!2390163 () Bool)

(assert (=> start!362612 e!2390163))

(assert (=> start!362612 e!2390168))

(declare-fun e!2390159 () Bool)

(assert (=> start!362612 e!2390159))

(declare-fun b!3865386 () Bool)

(declare-fun tp_is_empty!19489 () Bool)

(declare-fun tp!1171871 () Bool)

(assert (=> b!3865386 (= e!2390167 (and tp_is_empty!19489 tp!1171871))))

(declare-fun b!3865387 () Bool)

(assert (=> b!3865387 (= e!2390174 false)))

(declare-fun b!3865388 () Bool)

(declare-fun e!2390155 () Bool)

(assert (=> b!3865388 (= e!2390155 false)))

(declare-fun b!3865389 () Bool)

(declare-fun e!2390148 () Unit!58700)

(declare-fun Unit!58704 () Unit!58700)

(assert (=> b!3865389 (= e!2390148 Unit!58704)))

(declare-fun b!3865390 () Bool)

(declare-fun e!2390175 () Bool)

(assert (=> b!3865390 (= e!2390150 e!2390175)))

(declare-fun res!1565401 () Bool)

(assert (=> b!3865390 (=> (not res!1565401) (not e!2390175))))

(declare-fun lt!1343736 () tuple2!40232)

(declare-fun lt!1343763 () List!41143)

(assert (=> b!3865390 (= res!1565401 (= lt!1343736 (tuple2!40233 lt!1343763 suffixResult!91)))))

(declare-fun lexList!1711 (LexerInterface!5943 List!41142 List!41140) tuple2!40232)

(assert (=> b!3865390 (= lt!1343736 (lexList!1711 thiss!20629 rules!2768 lt!1343740))))

(declare-fun prefixTokens!80 () List!41143)

(declare-fun ++!10465 (List!41143 List!41143) List!41143)

(assert (=> b!3865390 (= lt!1343763 (++!10465 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10466 (List!41140 List!41140) List!41140)

(assert (=> b!3865390 (= lt!1343740 (++!10466 prefix!426 suffix!1176))))

(declare-fun b!3865391 () Bool)

(declare-fun Unit!58705 () Unit!58700)

(assert (=> b!3865391 (= e!2390148 Unit!58705)))

(declare-fun lt!1343756 () Int)

(declare-fun size!30842 (List!41140) Int)

(assert (=> b!3865391 (= lt!1343756 (size!30842 lt!1343740))))

(declare-fun lt!1343746 () Unit!58700)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1227 (LexerInterface!5943 List!41142 List!41140 List!41140 List!41140 Rule!12508) Unit!58700)

(assert (=> b!3865391 (= lt!1343746 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1227 thiss!20629 rules!2768 lt!1343739 lt!1343740 (_2!23249 (v!39069 lt!1343744)) (rule!9232 (_1!23249 (v!39069 lt!1343744)))))))

(declare-fun lt!1343762 () TokenValue!6584)

(declare-fun lt!1343759 () Int)

(declare-fun maxPrefixOneRule!2329 (LexerInterface!5943 Rule!12508 List!41140) Option!8772)

(assert (=> b!3865391 (= (maxPrefixOneRule!2329 thiss!20629 (rule!9232 (_1!23249 (v!39069 lt!1343744))) lt!1343740) (Some!8771 (tuple2!40231 (Token!11847 lt!1343762 (rule!9232 (_1!23249 (v!39069 lt!1343744))) lt!1343759 lt!1343739) (_2!23249 (v!39069 lt!1343744)))))))

(declare-fun get!13571 (Option!8772) tuple2!40230)

(assert (=> b!3865391 (= lt!1343751 (get!13571 lt!1343744))))

(declare-fun c!672790 () Bool)

(declare-fun lt!1343760 () Int)

(assert (=> b!3865391 (= c!672790 (< (size!30842 (_2!23249 lt!1343751)) lt!1343760))))

(declare-fun lt!1343742 () Unit!58700)

(declare-fun e!2390170 () Unit!58700)

(assert (=> b!3865391 (= lt!1343742 e!2390170)))

(assert (=> b!3865391 false))

(declare-fun b!3865392 () Bool)

(declare-fun e!2390152 () Bool)

(assert (=> b!3865392 (= e!2390175 e!2390152)))

(declare-fun res!1565410 () Bool)

(assert (=> b!3865392 (=> (not res!1565410) (not e!2390152))))

(assert (=> b!3865392 (= res!1565410 (= (lexList!1711 thiss!20629 rules!2768 suffix!1176) lt!1343743))))

(assert (=> b!3865392 (= lt!1343743 (tuple2!40233 suffixTokens!72 suffixResult!91))))

(declare-fun b!3865393 () Bool)

(declare-fun res!1565403 () Bool)

(assert (=> b!3865393 (=> (not res!1565403) (not e!2390150))))

(declare-fun isEmpty!24314 (List!41142) Bool)

(assert (=> b!3865393 (= res!1565403 (not (isEmpty!24314 rules!2768)))))

(declare-fun e!2390173 () Bool)

(assert (=> b!3865394 (= e!2390173 (and tp!1171880 tp!1171868))))

(declare-fun bm!282625 () Bool)

(assert (=> bm!282625 (= call!282630 (lexList!1711 thiss!20629 rules!2768 (_2!23249 lt!1343751)))))

(declare-fun b!3865395 () Bool)

(declare-fun tp!1171877 () Bool)

(assert (=> b!3865395 (= e!2390166 (and e!2390171 tp!1171877))))

(declare-fun b!3865396 () Bool)

(declare-fun res!1565414 () Bool)

(declare-fun e!2390176 () Bool)

(assert (=> b!3865396 (=> res!1565414 e!2390176)))

(declare-fun lt!1343752 () tuple2!40232)

(assert (=> b!3865396 (= res!1565414 (not (= lt!1343736 (tuple2!40233 (++!10465 (Cons!41019 (_1!23249 (v!39069 lt!1343744)) Nil!41019) (_1!23250 lt!1343752)) (_2!23250 lt!1343752)))))))

(declare-fun b!3865397 () Bool)

(declare-fun e!2390160 () Bool)

(assert (=> b!3865397 (= e!2390160 (not e!2390176))))

(declare-fun res!1565405 () Bool)

(assert (=> b!3865397 (=> res!1565405 e!2390176)))

(declare-fun lt!1343747 () List!41140)

(assert (=> b!3865397 (= res!1565405 (not (= lt!1343747 lt!1343740)))))

(assert (=> b!3865397 (= lt!1343752 (lexList!1711 thiss!20629 rules!2768 (_2!23249 (v!39069 lt!1343744))))))

(declare-fun lt!1343753 () List!41140)

(assert (=> b!3865397 (and (= (size!30841 (_1!23249 (v!39069 lt!1343744))) lt!1343759) (= (originalCharacters!6954 (_1!23249 (v!39069 lt!1343744))) lt!1343739) (= (v!39069 lt!1343744) (tuple2!40231 (Token!11847 lt!1343762 (rule!9232 (_1!23249 (v!39069 lt!1343744))) lt!1343759 lt!1343739) lt!1343753)))))

(assert (=> b!3865397 (= lt!1343759 (size!30842 lt!1343739))))

(declare-fun e!2390169 () Bool)

(assert (=> b!3865397 e!2390169))

(declare-fun res!1565406 () Bool)

(assert (=> b!3865397 (=> (not res!1565406) (not e!2390169))))

(assert (=> b!3865397 (= res!1565406 (= (value!201723 (_1!23249 (v!39069 lt!1343744))) lt!1343762))))

(declare-fun apply!9597 (TokenValueInjection!12596 BalanceConc!24724) TokenValue!6584)

(declare-fun seqFromList!4625 (List!41140) BalanceConc!24724)

(assert (=> b!3865397 (= lt!1343762 (apply!9597 (transformation!6354 (rule!9232 (_1!23249 (v!39069 lt!1343744)))) (seqFromList!4625 lt!1343739)))))

(assert (=> b!3865397 (= (_2!23249 (v!39069 lt!1343744)) lt!1343753)))

(declare-fun lt!1343741 () Unit!58700)

(declare-fun lemmaSamePrefixThenSameSuffix!1674 (List!41140 List!41140 List!41140 List!41140 List!41140) Unit!58700)

(assert (=> b!3865397 (= lt!1343741 (lemmaSamePrefixThenSameSuffix!1674 lt!1343739 (_2!23249 (v!39069 lt!1343744)) lt!1343739 lt!1343753 lt!1343740))))

(declare-fun getSuffix!1908 (List!41140 List!41140) List!41140)

(assert (=> b!3865397 (= lt!1343753 (getSuffix!1908 lt!1343740 lt!1343739))))

(assert (=> b!3865397 (isPrefix!3453 lt!1343739 lt!1343747)))

(assert (=> b!3865397 (= lt!1343747 (++!10466 lt!1343739 (_2!23249 (v!39069 lt!1343744))))))

(declare-fun lt!1343761 () Unit!58700)

(assert (=> b!3865397 (= lt!1343761 (lemmaConcatTwoListThenFirstIsPrefix!2316 lt!1343739 (_2!23249 (v!39069 lt!1343744))))))

(declare-fun list!15264 (BalanceConc!24724) List!41140)

(declare-fun charsOf!4182 (Token!11846) BalanceConc!24724)

(assert (=> b!3865397 (= lt!1343739 (list!15264 (charsOf!4182 (_1!23249 (v!39069 lt!1343744)))))))

(declare-fun ruleValid!2306 (LexerInterface!5943 Rule!12508) Bool)

(assert (=> b!3865397 (ruleValid!2306 thiss!20629 (rule!9232 (_1!23249 (v!39069 lt!1343744))))))

(declare-fun lt!1343757 () Unit!58700)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1386 (LexerInterface!5943 Rule!12508 List!41142) Unit!58700)

(assert (=> b!3865397 (= lt!1343757 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1386 thiss!20629 (rule!9232 (_1!23249 (v!39069 lt!1343744))) rules!2768))))

(declare-fun lt!1343738 () Unit!58700)

(declare-fun lemmaCharactersSize!1015 (Token!11846) Unit!58700)

(assert (=> b!3865397 (= lt!1343738 (lemmaCharactersSize!1015 (_1!23249 (v!39069 lt!1343744))))))

(declare-fun b!3865398 () Bool)

(declare-fun res!1565409 () Bool)

(assert (=> b!3865398 (=> (not res!1565409) (not e!2390150))))

(declare-fun isEmpty!24315 (List!41140) Bool)

(assert (=> b!3865398 (= res!1565409 (not (isEmpty!24315 prefix!426)))))

(declare-fun b!3865399 () Bool)

(assert (=> b!3865399 (= e!2390152 e!2390160)))

(declare-fun res!1565411 () Bool)

(assert (=> b!3865399 (=> (not res!1565411) (not e!2390160))))

(assert (=> b!3865399 (= res!1565411 ((_ is Some!8771) lt!1343744))))

(declare-fun maxPrefix!3247 (LexerInterface!5943 List!41142 List!41140) Option!8772)

(assert (=> b!3865399 (= lt!1343744 (maxPrefix!3247 thiss!20629 rules!2768 lt!1343740))))

(declare-fun e!2390147 () Bool)

(declare-fun tp!1171874 () Bool)

(declare-fun e!2390157 () Bool)

(declare-fun b!3865400 () Bool)

(declare-fun inv!21 (TokenValue!6584) Bool)

(assert (=> b!3865400 (= e!2390157 (and (inv!21 (value!201723 (h!46439 prefixTokens!80))) e!2390147 tp!1171874))))

(assert (=> b!3865401 (= e!2390172 (and tp!1171882 tp!1171878))))

(declare-fun e!2390156 () Bool)

(declare-fun b!3865402 () Bool)

(declare-fun e!2390165 () Bool)

(declare-fun tp!1171873 () Bool)

(assert (=> b!3865402 (= e!2390156 (and tp!1171873 (inv!55176 (tag!7214 (rule!9232 (h!46439 suffixTokens!72)))) (inv!55179 (transformation!6354 (rule!9232 (h!46439 suffixTokens!72)))) e!2390165))))

(declare-fun b!3865403 () Bool)

(declare-fun c!672789 () Bool)

(declare-fun lt!1343745 () List!41143)

(declare-fun isEmpty!24316 (List!41143) Bool)

(assert (=> b!3865403 (= c!672789 (isEmpty!24316 lt!1343745))))

(declare-fun tail!5879 (List!41143) List!41143)

(assert (=> b!3865403 (= lt!1343745 (tail!5879 prefixTokens!80))))

(assert (=> b!3865403 (= e!2390170 e!2390153)))

(declare-fun b!3865404 () Bool)

(assert (=> b!3865404 (= e!2390158 true)))

(assert (=> b!3865404 (= lt!1343739 prefix!426)))

(declare-fun lt!1343748 () Unit!58700)

(declare-fun lemmaIsPrefixSameLengthThenSameList!705 (List!41140 List!41140 List!41140) Unit!58700)

(assert (=> b!3865404 (= lt!1343748 (lemmaIsPrefixSameLengthThenSameList!705 lt!1343739 prefix!426 lt!1343740))))

(assert (=> b!3865405 (= e!2390165 (and tp!1171884 tp!1171883))))

(declare-fun b!3865406 () Bool)

(assert (=> b!3865406 (= e!2390169 (= (size!30841 (_1!23249 (v!39069 lt!1343744))) (size!30842 (originalCharacters!6954 (_1!23249 (v!39069 lt!1343744))))))))

(declare-fun tp!1171881 () Bool)

(declare-fun b!3865407 () Bool)

(assert (=> b!3865407 (= e!2390147 (and tp!1171881 (inv!55176 (tag!7214 (rule!9232 (h!46439 prefixTokens!80)))) (inv!55179 (transformation!6354 (rule!9232 (h!46439 prefixTokens!80)))) e!2390173))))

(declare-fun b!3865408 () Bool)

(declare-fun res!1565404 () Bool)

(assert (=> b!3865408 (=> res!1565404 e!2390176)))

(assert (=> b!3865408 (= res!1565404 (or (not (= lt!1343752 (tuple2!40233 (_1!23250 lt!1343752) (_2!23250 lt!1343752)))) (= (_2!23249 (v!39069 lt!1343744)) suffix!1176)))))

(declare-fun tp!1171876 () Bool)

(declare-fun b!3865409 () Bool)

(assert (=> b!3865409 (= e!2390161 (and (inv!21 (value!201723 (h!46439 suffixTokens!72))) e!2390156 tp!1171876))))

(declare-fun b!3865410 () Bool)

(declare-fun tp!1171872 () Bool)

(assert (=> b!3865410 (= e!2390163 (and (inv!55180 (h!46439 prefixTokens!80)) e!2390157 tp!1171872))))

(declare-fun b!3865411 () Bool)

(declare-fun tp!1171875 () Bool)

(assert (=> b!3865411 (= e!2390159 (and tp_is_empty!19489 tp!1171875))))

(declare-fun b!3865412 () Bool)

(declare-fun Unit!58706 () Unit!58700)

(assert (=> b!3865412 (= e!2390153 Unit!58706)))

(declare-fun lt!1343750 () Unit!58700)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!14 (LexerInterface!5943 List!41142 List!41140 List!41140 List!41143 List!41140 List!41143) Unit!58700)

(assert (=> b!3865412 (= lt!1343750 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!14 thiss!20629 rules!2768 suffix!1176 (_2!23249 lt!1343751) suffixTokens!72 suffixResult!91 lt!1343745))))

(declare-fun res!1565399 () Bool)

(assert (=> b!3865412 (= res!1565399 (not (= call!282630 (tuple2!40233 (++!10465 lt!1343745 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3865412 (=> (not res!1565399) (not e!2390155))))

(assert (=> b!3865412 e!2390155))

(declare-fun b!3865413 () Bool)

(declare-fun Unit!58707 () Unit!58700)

(assert (=> b!3865413 (= e!2390170 Unit!58707)))

(declare-fun b!3865414 () Bool)

(declare-fun tp!1171879 () Bool)

(assert (=> b!3865414 (= e!2390149 (and tp_is_empty!19489 tp!1171879))))

(declare-fun b!3865415 () Bool)

(assert (=> b!3865415 (= e!2390176 e!2390146)))

(declare-fun res!1565400 () Bool)

(assert (=> b!3865415 (=> res!1565400 e!2390146)))

(declare-fun lt!1343737 () Int)

(assert (=> b!3865415 (= res!1565400 (not (= lt!1343737 lt!1343760)))))

(declare-fun lt!1343749 () Unit!58700)

(assert (=> b!3865415 (= lt!1343749 e!2390148)))

(declare-fun c!672791 () Bool)

(assert (=> b!3865415 (= c!672791 (< lt!1343737 lt!1343760))))

(assert (=> b!3865415 (= lt!1343760 (size!30842 suffix!1176))))

(assert (=> b!3865415 (= lt!1343737 (size!30842 (_2!23249 (v!39069 lt!1343744))))))

(declare-fun b!3865416 () Bool)

(declare-fun res!1565407 () Bool)

(assert (=> b!3865416 (=> (not res!1565407) (not e!2390150))))

(assert (=> b!3865416 (= res!1565407 (not (isEmpty!24316 prefixTokens!80)))))

(assert (= (and start!362612 res!1565408) b!3865393))

(assert (= (and b!3865393 res!1565403) b!3865383))

(assert (= (and b!3865383 res!1565402) b!3865416))

(assert (= (and b!3865416 res!1565407) b!3865398))

(assert (= (and b!3865398 res!1565409) b!3865390))

(assert (= (and b!3865390 res!1565401) b!3865392))

(assert (= (and b!3865392 res!1565410) b!3865399))

(assert (= (and b!3865399 res!1565411) b!3865397))

(assert (= (and b!3865397 res!1565406) b!3865406))

(assert (= (and b!3865397 (not res!1565405)) b!3865396))

(assert (= (and b!3865396 (not res!1565414)) b!3865408))

(assert (= (and b!3865408 (not res!1565404)) b!3865415))

(assert (= (and b!3865415 c!672791) b!3865391))

(assert (= (and b!3865415 (not c!672791)) b!3865389))

(assert (= (and b!3865391 c!672790) b!3865403))

(assert (= (and b!3865391 (not c!672790)) b!3865413))

(assert (= (and b!3865403 c!672789) b!3865381))

(assert (= (and b!3865403 (not c!672789)) b!3865412))

(assert (= (and b!3865381 res!1565413) b!3865387))

(assert (= (and b!3865412 res!1565399) b!3865388))

(assert (= (or b!3865381 b!3865412) bm!282625))

(assert (= (and b!3865415 (not res!1565400)) b!3865385))

(assert (= (and b!3865385 (not res!1565412)) b!3865404))

(assert (= (and start!362612 ((_ is Cons!41016) suffixResult!91)) b!3865386))

(assert (= (and start!362612 ((_ is Cons!41016) suffix!1176)) b!3865414))

(assert (= b!3865382 b!3865401))

(assert (= b!3865395 b!3865382))

(assert (= (and start!362612 ((_ is Cons!41018) rules!2768)) b!3865395))

(assert (= b!3865407 b!3865394))

(assert (= b!3865400 b!3865407))

(assert (= b!3865410 b!3865400))

(assert (= (and start!362612 ((_ is Cons!41019) prefixTokens!80)) b!3865410))

(assert (= b!3865402 b!3865405))

(assert (= b!3865409 b!3865402))

(assert (= b!3865384 b!3865409))

(assert (= (and start!362612 ((_ is Cons!41019) suffixTokens!72)) b!3865384))

(assert (= (and start!362612 ((_ is Cons!41016) prefix!426)) b!3865411))

(declare-fun m!4420847 () Bool)

(assert (=> b!3865390 m!4420847))

(declare-fun m!4420849 () Bool)

(assert (=> b!3865390 m!4420849))

(declare-fun m!4420851 () Bool)

(assert (=> b!3865390 m!4420851))

(declare-fun m!4420853 () Bool)

(assert (=> b!3865410 m!4420853))

(declare-fun m!4420855 () Bool)

(assert (=> b!3865383 m!4420855))

(declare-fun m!4420857 () Bool)

(assert (=> b!3865404 m!4420857))

(declare-fun m!4420859 () Bool)

(assert (=> b!3865397 m!4420859))

(declare-fun m!4420861 () Bool)

(assert (=> b!3865397 m!4420861))

(declare-fun m!4420863 () Bool)

(assert (=> b!3865397 m!4420863))

(declare-fun m!4420865 () Bool)

(assert (=> b!3865397 m!4420865))

(declare-fun m!4420867 () Bool)

(assert (=> b!3865397 m!4420867))

(assert (=> b!3865397 m!4420867))

(declare-fun m!4420869 () Bool)

(assert (=> b!3865397 m!4420869))

(assert (=> b!3865397 m!4420861))

(declare-fun m!4420871 () Bool)

(assert (=> b!3865397 m!4420871))

(declare-fun m!4420873 () Bool)

(assert (=> b!3865397 m!4420873))

(declare-fun m!4420875 () Bool)

(assert (=> b!3865397 m!4420875))

(declare-fun m!4420877 () Bool)

(assert (=> b!3865397 m!4420877))

(declare-fun m!4420879 () Bool)

(assert (=> b!3865397 m!4420879))

(declare-fun m!4420881 () Bool)

(assert (=> b!3865397 m!4420881))

(declare-fun m!4420883 () Bool)

(assert (=> b!3865397 m!4420883))

(declare-fun m!4420885 () Bool)

(assert (=> b!3865397 m!4420885))

(declare-fun m!4420887 () Bool)

(assert (=> b!3865385 m!4420887))

(declare-fun m!4420889 () Bool)

(assert (=> b!3865385 m!4420889))

(declare-fun m!4420891 () Bool)

(assert (=> b!3865385 m!4420891))

(declare-fun m!4420893 () Bool)

(assert (=> b!3865392 m!4420893))

(declare-fun m!4420895 () Bool)

(assert (=> b!3865412 m!4420895))

(declare-fun m!4420897 () Bool)

(assert (=> b!3865412 m!4420897))

(declare-fun m!4420899 () Bool)

(assert (=> b!3865402 m!4420899))

(declare-fun m!4420901 () Bool)

(assert (=> b!3865402 m!4420901))

(declare-fun m!4420903 () Bool)

(assert (=> bm!282625 m!4420903))

(declare-fun m!4420905 () Bool)

(assert (=> b!3865409 m!4420905))

(declare-fun m!4420907 () Bool)

(assert (=> b!3865406 m!4420907))

(declare-fun m!4420909 () Bool)

(assert (=> b!3865384 m!4420909))

(declare-fun m!4420911 () Bool)

(assert (=> b!3865391 m!4420911))

(declare-fun m!4420913 () Bool)

(assert (=> b!3865391 m!4420913))

(declare-fun m!4420915 () Bool)

(assert (=> b!3865391 m!4420915))

(declare-fun m!4420917 () Bool)

(assert (=> b!3865391 m!4420917))

(declare-fun m!4420919 () Bool)

(assert (=> b!3865391 m!4420919))

(declare-fun m!4420921 () Bool)

(assert (=> b!3865400 m!4420921))

(declare-fun m!4420923 () Bool)

(assert (=> b!3865416 m!4420923))

(declare-fun m!4420925 () Bool)

(assert (=> b!3865399 m!4420925))

(declare-fun m!4420927 () Bool)

(assert (=> b!3865382 m!4420927))

(declare-fun m!4420929 () Bool)

(assert (=> b!3865382 m!4420929))

(declare-fun m!4420931 () Bool)

(assert (=> b!3865396 m!4420931))

(declare-fun m!4420933 () Bool)

(assert (=> b!3865381 m!4420933))

(declare-fun m!4420935 () Bool)

(assert (=> b!3865381 m!4420935))

(declare-fun m!4420937 () Bool)

(assert (=> b!3865415 m!4420937))

(declare-fun m!4420939 () Bool)

(assert (=> b!3865415 m!4420939))

(declare-fun m!4420941 () Bool)

(assert (=> b!3865403 m!4420941))

(declare-fun m!4420943 () Bool)

(assert (=> b!3865403 m!4420943))

(declare-fun m!4420945 () Bool)

(assert (=> b!3865398 m!4420945))

(declare-fun m!4420947 () Bool)

(assert (=> b!3865393 m!4420947))

(declare-fun m!4420949 () Bool)

(assert (=> b!3865407 m!4420949))

(declare-fun m!4420951 () Bool)

(assert (=> b!3865407 m!4420951))

(check-sat tp_is_empty!19489 (not b!3865400) (not b!3865402) (not bm!282625) b_and!289545 (not b!3865386) b_and!289539 (not b!3865406) b_and!289541 (not b!3865384) (not b!3865397) (not b_next!104837) (not b!3865395) (not b!3865410) b_and!289543 (not b!3865385) (not b!3865398) (not b_next!104839) (not b!3865390) (not b!3865399) b_and!289547 (not b_next!104833) (not b!3865409) (not b!3865391) b_and!289549 (not b!3865416) (not b!3865393) (not b!3865404) (not b!3865407) (not b!3865412) (not b!3865383) (not b_next!104829) (not b!3865411) (not b!3865414) (not b_next!104831) (not b!3865415) (not b_next!104835) (not b!3865396) (not b!3865382) (not b!3865403) (not b!3865392) (not b!3865381))
(check-sat b_and!289543 (not b_next!104839) b_and!289547 (not b_next!104833) b_and!289545 b_and!289539 b_and!289549 b_and!289541 (not b_next!104829) (not b_next!104837) (not b_next!104831) (not b_next!104835))
