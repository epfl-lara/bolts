; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359644 () Bool)

(assert start!359644)

(declare-fun b!3840842 () Bool)

(declare-fun b_free!102409 () Bool)

(declare-fun b_next!103113 () Bool)

(assert (=> b!3840842 (= b_free!102409 (not b_next!103113))))

(declare-fun tp!1163389 () Bool)

(declare-fun b_and!286087 () Bool)

(assert (=> b!3840842 (= tp!1163389 b_and!286087)))

(declare-fun b_free!102411 () Bool)

(declare-fun b_next!103115 () Bool)

(assert (=> b!3840842 (= b_free!102411 (not b_next!103115))))

(declare-fun tp!1163376 () Bool)

(declare-fun b_and!286089 () Bool)

(assert (=> b!3840842 (= tp!1163376 b_and!286089)))

(declare-fun b!3840854 () Bool)

(declare-fun b_free!102413 () Bool)

(declare-fun b_next!103117 () Bool)

(assert (=> b!3840854 (= b_free!102413 (not b_next!103117))))

(declare-fun tp!1163384 () Bool)

(declare-fun b_and!286091 () Bool)

(assert (=> b!3840854 (= tp!1163384 b_and!286091)))

(declare-fun b_free!102415 () Bool)

(declare-fun b_next!103119 () Bool)

(assert (=> b!3840854 (= b_free!102415 (not b_next!103119))))

(declare-fun tp!1163382 () Bool)

(declare-fun b_and!286093 () Bool)

(assert (=> b!3840854 (= tp!1163382 b_and!286093)))

(declare-fun b!3840829 () Bool)

(declare-fun b_free!102417 () Bool)

(declare-fun b_next!103121 () Bool)

(assert (=> b!3840829 (= b_free!102417 (not b_next!103121))))

(declare-fun tp!1163378 () Bool)

(declare-fun b_and!286095 () Bool)

(assert (=> b!3840829 (= tp!1163378 b_and!286095)))

(declare-fun b_free!102419 () Bool)

(declare-fun b_next!103123 () Bool)

(assert (=> b!3840829 (= b_free!102419 (not b_next!103123))))

(declare-fun tp!1163390 () Bool)

(declare-fun b_and!286097 () Bool)

(assert (=> b!3840829 (= tp!1163390 b_and!286097)))

(declare-fun b!3840837 () Bool)

(declare-fun b_free!102421 () Bool)

(declare-fun b_next!103125 () Bool)

(assert (=> b!3840837 (= b_free!102421 (not b_next!103125))))

(declare-fun tp!1163393 () Bool)

(declare-fun b_and!286099 () Bool)

(assert (=> b!3840837 (= tp!1163393 b_and!286099)))

(declare-fun b_free!102423 () Bool)

(declare-fun b_next!103127 () Bool)

(assert (=> b!3840837 (= b_free!102423 (not b_next!103127))))

(declare-fun tp!1163375 () Bool)

(declare-fun b_and!286101 () Bool)

(assert (=> b!3840837 (= tp!1163375 b_and!286101)))

(declare-fun e!2372744 () Bool)

(declare-datatypes ((C!22528 0))(
  ( (C!22529 (val!13358 Int)) )
))
(declare-datatypes ((List!40748 0))(
  ( (Nil!40624) (Cons!40624 (h!46044 C!22528) (t!310417 List!40748)) )
))
(declare-datatypes ((IArray!24959 0))(
  ( (IArray!24960 (innerList!12537 List!40748)) )
))
(declare-datatypes ((Conc!12477 0))(
  ( (Node!12477 (left!31384 Conc!12477) (right!31714 Conc!12477) (csize!25184 Int) (cheight!12688 Int)) (Leaf!19317 (xs!15783 IArray!24959) (csize!25185 Int)) (Empty!12477) )
))
(declare-datatypes ((BalanceConc!24548 0))(
  ( (BalanceConc!24549 (c!669416 Conc!12477)) )
))
(declare-datatypes ((List!40749 0))(
  ( (Nil!40625) (Cons!40625 (h!46045 (_ BitVec 16)) (t!310418 List!40749)) )
))
(declare-datatypes ((TokenValue!6496 0))(
  ( (FloatLiteralValue!12992 (text!45917 List!40749)) (TokenValueExt!6495 (__x!25209 Int)) (Broken!32480 (value!199189 List!40749)) (Object!6619) (End!6496) (Def!6496) (Underscore!6496) (Match!6496) (Else!6496) (Error!6496) (Case!6496) (If!6496) (Extends!6496) (Abstract!6496) (Class!6496) (Val!6496) (DelimiterValue!12992 (del!6556 List!40749)) (KeywordValue!6502 (value!199190 List!40749)) (CommentValue!12992 (value!199191 List!40749)) (WhitespaceValue!12992 (value!199192 List!40749)) (IndentationValue!6496 (value!199193 List!40749)) (String!46197) (Int32!6496) (Broken!32481 (value!199194 List!40749)) (Boolean!6497) (Unit!58333) (OperatorValue!6499 (op!6556 List!40749)) (IdentifierValue!12992 (value!199195 List!40749)) (IdentifierValue!12993 (value!199196 List!40749)) (WhitespaceValue!12993 (value!199197 List!40749)) (True!12992) (False!12992) (Broken!32482 (value!199198 List!40749)) (Broken!32483 (value!199199 List!40749)) (True!12993) (RightBrace!6496) (RightBracket!6496) (Colon!6496) (Null!6496) (Comma!6496) (LeftBracket!6496) (False!12993) (LeftBrace!6496) (ImaginaryLiteralValue!6496 (text!45918 List!40749)) (StringLiteralValue!19488 (value!199200 List!40749)) (EOFValue!6496 (value!199201 List!40749)) (IdentValue!6496 (value!199202 List!40749)) (DelimiterValue!12993 (value!199203 List!40749)) (DedentValue!6496 (value!199204 List!40749)) (NewLineValue!6496 (value!199205 List!40749)) (IntegerValue!19488 (value!199206 (_ BitVec 32)) (text!45919 List!40749)) (IntegerValue!19489 (value!199207 Int) (text!45920 List!40749)) (Times!6496) (Or!6496) (Equal!6496) (Minus!6496) (Broken!32484 (value!199208 List!40749)) (And!6496) (Div!6496) (LessEqual!6496) (Mod!6496) (Concat!17667) (Not!6496) (Plus!6496) (SpaceValue!6496 (value!199209 List!40749)) (IntegerValue!19490 (value!199210 Int) (text!45921 List!40749)) (StringLiteralValue!19489 (text!45922 List!40749)) (FloatLiteralValue!12993 (text!45923 List!40749)) (BytesLiteralValue!6496 (value!199211 List!40749)) (CommentValue!12993 (value!199212 List!40749)) (StringLiteralValue!19490 (value!199213 List!40749)) (ErrorTokenValue!6496 (msg!6557 List!40749)) )
))
(declare-datatypes ((Regex!11171 0))(
  ( (ElementMatch!11171 (c!669417 C!22528)) (Concat!17668 (regOne!22854 Regex!11171) (regTwo!22854 Regex!11171)) (EmptyExpr!11171) (Star!11171 (reg!11500 Regex!11171)) (EmptyLang!11171) (Union!11171 (regOne!22855 Regex!11171) (regTwo!22855 Regex!11171)) )
))
(declare-datatypes ((String!46198 0))(
  ( (String!46199 (value!199214 String)) )
))
(declare-datatypes ((TokenValueInjection!12420 0))(
  ( (TokenValueInjection!12421 (toValue!8682 Int) (toChars!8541 Int)) )
))
(declare-datatypes ((Rule!12332 0))(
  ( (Rule!12333 (regex!6266 Regex!11171) (tag!7126 String!46198) (isSeparator!6266 Bool) (transformation!6266 TokenValueInjection!12420)) )
))
(declare-datatypes ((List!40750 0))(
  ( (Nil!40626) (Cons!40626 (h!46046 Rule!12332) (t!310419 List!40750)) )
))
(declare-fun rules!2768 () List!40750)

(declare-fun e!2372759 () Bool)

(declare-fun b!3840825 () Bool)

(declare-fun tp!1163381 () Bool)

(declare-fun inv!54771 (String!46198) Bool)

(declare-fun inv!54774 (TokenValueInjection!12420) Bool)

(assert (=> b!3840825 (= e!2372744 (and tp!1163381 (inv!54771 (tag!7126 (h!46046 rules!2768))) (inv!54774 (transformation!6266 (h!46046 rules!2768))) e!2372759))))

(declare-fun b!3840826 () Bool)

(declare-fun res!1554531 () Bool)

(declare-fun e!2372754 () Bool)

(assert (=> b!3840826 (=> res!1554531 e!2372754)))

(declare-datatypes ((Token!11670 0))(
  ( (Token!11671 (value!199215 TokenValue!6496) (rule!9104 Rule!12332) (size!30579 Int) (originalCharacters!6866 List!40748)) )
))
(declare-datatypes ((List!40751 0))(
  ( (Nil!40627) (Cons!40627 (h!46047 Token!11670) (t!310420 List!40751)) )
))
(declare-datatypes ((tuple2!39798 0))(
  ( (tuple2!39799 (_1!23033 List!40751) (_2!23033 List!40748)) )
))
(declare-fun lt!1333000 () tuple2!39798)

(declare-fun lt!1333001 () tuple2!39798)

(declare-datatypes ((tuple2!39800 0))(
  ( (tuple2!39801 (_1!23034 Token!11670) (_2!23034 List!40748)) )
))
(declare-datatypes ((Option!8684 0))(
  ( (None!8683) (Some!8683 (v!38975 tuple2!39800)) )
))
(declare-fun lt!1333007 () Option!8684)

(declare-fun ++!10289 (List!40751 List!40751) List!40751)

(assert (=> b!3840826 (= res!1554531 (not (= lt!1333001 (tuple2!39799 (++!10289 (Cons!40627 (_1!23034 (v!38975 lt!1333007)) Nil!40627) (_1!23033 lt!1333000)) (_2!23033 lt!1333000)))))))

(declare-fun b!3840827 () Bool)

(declare-fun res!1554526 () Bool)

(declare-fun e!2372772 () Bool)

(assert (=> b!3840827 (=> (not res!1554526) (not e!2372772))))

(declare-fun prefixTokens!80 () List!40751)

(declare-fun isEmpty!24010 (List!40751) Bool)

(assert (=> b!3840827 (= res!1554526 (not (isEmpty!24010 prefixTokens!80)))))

(declare-fun b!3840828 () Bool)

(declare-fun e!2372756 () Bool)

(declare-fun tp_is_empty!19313 () Bool)

(declare-fun tp!1163385 () Bool)

(assert (=> b!3840828 (= e!2372756 (and tp_is_empty!19313 tp!1163385))))

(assert (=> b!3840829 (= e!2372759 (and tp!1163378 tp!1163390))))

(declare-fun b!3840830 () Bool)

(declare-fun tp!1163386 () Bool)

(declare-fun e!2372763 () Bool)

(declare-fun e!2372765 () Bool)

(declare-fun inv!54775 (Token!11670) Bool)

(assert (=> b!3840830 (= e!2372763 (and (inv!54775 (h!46047 prefixTokens!80)) e!2372765 tp!1163386))))

(declare-fun b!3840831 () Bool)

(declare-fun e!2372745 () Bool)

(assert (=> b!3840831 (= e!2372772 e!2372745)))

(declare-fun res!1554523 () Bool)

(assert (=> b!3840831 (=> (not res!1554523) (not e!2372745))))

(declare-fun suffixResult!91 () List!40748)

(declare-fun lt!1333012 () List!40751)

(assert (=> b!3840831 (= res!1554523 (= lt!1333001 (tuple2!39799 lt!1333012 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5855 0))(
  ( (LexerInterfaceExt!5852 (__x!25210 Int)) (Lexer!5853) )
))
(declare-fun thiss!20629 () LexerInterface!5855)

(declare-fun lt!1332998 () List!40748)

(declare-fun lexList!1623 (LexerInterface!5855 List!40750 List!40748) tuple2!39798)

(assert (=> b!3840831 (= lt!1333001 (lexList!1623 thiss!20629 rules!2768 lt!1332998))))

(declare-fun suffixTokens!72 () List!40751)

(assert (=> b!3840831 (= lt!1333012 (++!10289 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40748)

(declare-fun suffix!1176 () List!40748)

(declare-fun ++!10290 (List!40748 List!40748) List!40748)

(assert (=> b!3840831 (= lt!1332998 (++!10290 prefix!426 suffix!1176))))

(declare-fun b!3840833 () Bool)

(assert (=> b!3840833 true))

(declare-fun e!2372770 () Bool)

(assert (=> b!3840833 e!2372770))

(declare-fun e!2372762 () Option!8684)

(declare-fun err!4217 () Option!8684)

(assert (=> b!3840833 (= e!2372762 err!4217)))

(declare-fun e!2372768 () Bool)

(declare-fun b!3840834 () Bool)

(declare-fun e!2372766 () Bool)

(declare-fun tp!1163396 () Bool)

(assert (=> b!3840834 (= e!2372766 (and tp!1163396 (inv!54771 (tag!7126 (rule!9104 (_1!23034 (v!38975 err!4217))))) (inv!54774 (transformation!6266 (rule!9104 (_1!23034 (v!38975 err!4217))))) e!2372768))))

(declare-fun b!3840835 () Bool)

(declare-fun e!2372751 () Bool)

(declare-fun e!2372748 () Bool)

(declare-fun tp!1163377 () Bool)

(declare-fun inv!21 (TokenValue!6496) Bool)

(assert (=> b!3840835 (= e!2372748 (and (inv!21 (value!199215 (h!46047 suffixTokens!72))) e!2372751 tp!1163377))))

(declare-fun b!3840836 () Bool)

(declare-fun e!2372746 () Option!8684)

(declare-fun call!281948 () Option!8684)

(assert (=> b!3840836 (= e!2372746 call!281948)))

(assert (=> b!3840837 (= e!2372768 (and tp!1163393 tp!1163375))))

(declare-fun b!3840838 () Bool)

(declare-fun res!1554529 () Bool)

(assert (=> b!3840838 (=> (not res!1554529) (not e!2372745))))

(assert (=> b!3840838 (= res!1554529 (= (lexList!1623 thiss!20629 rules!2768 suffix!1176) (tuple2!39799 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1163391 () Bool)

(declare-fun b!3840839 () Bool)

(declare-fun e!2372750 () Bool)

(assert (=> b!3840839 (= e!2372770 (and (inv!54775 (_1!23034 (v!38975 err!4217))) e!2372750 tp!1163391))))

(declare-fun b!3840840 () Bool)

(declare-fun tp!1163395 () Bool)

(assert (=> b!3840840 (= e!2372750 (and (inv!21 (value!199215 (_1!23034 (v!38975 err!4217)))) e!2372766 tp!1163395))))

(declare-fun b!3840841 () Bool)

(declare-fun res!1554527 () Bool)

(assert (=> b!3840841 (=> res!1554527 e!2372754)))

(assert (=> b!3840841 (= res!1554527 (or (not (= lt!1333000 (tuple2!39799 (_1!23033 lt!1333000) (_2!23033 lt!1333000)))) (not (= (_2!23034 (v!38975 lt!1333007)) suffix!1176))))))

(declare-fun e!2372775 () Bool)

(assert (=> b!3840842 (= e!2372775 (and tp!1163389 tp!1163376))))

(declare-fun b!3840843 () Bool)

(declare-fun e!2372758 () Bool)

(assert (=> b!3840843 (= e!2372758 (not e!2372754))))

(declare-fun res!1554525 () Bool)

(assert (=> b!3840843 (=> res!1554525 e!2372754)))

(declare-fun lt!1333011 () List!40748)

(assert (=> b!3840843 (= res!1554525 (not (= lt!1333011 lt!1332998)))))

(assert (=> b!3840843 (= lt!1333000 (lexList!1623 thiss!20629 rules!2768 (_2!23034 (v!38975 lt!1333007))))))

(declare-fun lt!1333008 () Int)

(declare-fun lt!1332996 () List!40748)

(declare-fun lt!1332999 () List!40748)

(declare-fun lt!1333006 () TokenValue!6496)

(assert (=> b!3840843 (and (= (size!30579 (_1!23034 (v!38975 lt!1333007))) lt!1333008) (= (originalCharacters!6866 (_1!23034 (v!38975 lt!1333007))) lt!1332996) (= (tuple2!39801 (_1!23034 (v!38975 lt!1333007)) (_2!23034 (v!38975 lt!1333007))) (tuple2!39801 (Token!11671 lt!1333006 (rule!9104 (_1!23034 (v!38975 lt!1333007))) lt!1333008 lt!1332996) lt!1332999)))))

(declare-fun size!30580 (List!40748) Int)

(assert (=> b!3840843 (= lt!1333008 (size!30580 lt!1332996))))

(declare-fun e!2372743 () Bool)

(assert (=> b!3840843 e!2372743))

(declare-fun res!1554532 () Bool)

(assert (=> b!3840843 (=> (not res!1554532) (not e!2372743))))

(assert (=> b!3840843 (= res!1554532 (= (value!199215 (_1!23034 (v!38975 lt!1333007))) lt!1333006))))

(declare-fun apply!9509 (TokenValueInjection!12420 BalanceConc!24548) TokenValue!6496)

(declare-fun seqFromList!4537 (List!40748) BalanceConc!24548)

(assert (=> b!3840843 (= lt!1333006 (apply!9509 (transformation!6266 (rule!9104 (_1!23034 (v!38975 lt!1333007)))) (seqFromList!4537 lt!1332996)))))

(assert (=> b!3840843 (= (_2!23034 (v!38975 lt!1333007)) lt!1332999)))

(declare-datatypes ((Unit!58334 0))(
  ( (Unit!58335) )
))
(declare-fun lt!1333003 () Unit!58334)

(declare-fun lemmaSamePrefixThenSameSuffix!1586 (List!40748 List!40748 List!40748 List!40748 List!40748) Unit!58334)

(assert (=> b!3840843 (= lt!1333003 (lemmaSamePrefixThenSameSuffix!1586 lt!1332996 (_2!23034 (v!38975 lt!1333007)) lt!1332996 lt!1332999 lt!1332998))))

(declare-fun getSuffix!1820 (List!40748 List!40748) List!40748)

(assert (=> b!3840843 (= lt!1332999 (getSuffix!1820 lt!1332998 lt!1332996))))

(declare-fun isPrefix!3365 (List!40748 List!40748) Bool)

(assert (=> b!3840843 (isPrefix!3365 lt!1332996 lt!1333011)))

(assert (=> b!3840843 (= lt!1333011 (++!10290 lt!1332996 (_2!23034 (v!38975 lt!1333007))))))

(declare-fun lt!1333004 () Unit!58334)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2228 (List!40748 List!40748) Unit!58334)

(assert (=> b!3840843 (= lt!1333004 (lemmaConcatTwoListThenFirstIsPrefix!2228 lt!1332996 (_2!23034 (v!38975 lt!1333007))))))

(declare-fun list!15130 (BalanceConc!24548) List!40748)

(declare-fun charsOf!4094 (Token!11670) BalanceConc!24548)

(assert (=> b!3840843 (= lt!1332996 (list!15130 (charsOf!4094 (_1!23034 (v!38975 lt!1333007)))))))

(declare-fun ruleValid!2218 (LexerInterface!5855 Rule!12332) Bool)

(assert (=> b!3840843 (ruleValid!2218 thiss!20629 (rule!9104 (_1!23034 (v!38975 lt!1333007))))))

(declare-fun lt!1333009 () Unit!58334)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1298 (LexerInterface!5855 Rule!12332 List!40750) Unit!58334)

(assert (=> b!3840843 (= lt!1333009 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1298 thiss!20629 (rule!9104 (_1!23034 (v!38975 lt!1333007))) rules!2768))))

(declare-fun lt!1333013 () Unit!58334)

(declare-fun lemmaCharactersSize!927 (Token!11670) Unit!58334)

(assert (=> b!3840843 (= lt!1333013 (lemmaCharactersSize!927 (_1!23034 (v!38975 lt!1333007))))))

(declare-fun b!3840844 () Bool)

(declare-fun e!2372760 () Bool)

(declare-fun tp!1163379 () Bool)

(assert (=> b!3840844 (= e!2372760 (and tp_is_empty!19313 tp!1163379))))

(declare-fun bm!281943 () Bool)

(declare-fun maxPrefixOneRule!2243 (LexerInterface!5855 Rule!12332 List!40748) Option!8684)

(assert (=> bm!281943 (= call!281948 (maxPrefixOneRule!2243 thiss!20629 (h!46046 rules!2768) lt!1332998))))

(declare-fun b!3840845 () Bool)

(assert (=> b!3840845 (= e!2372746 e!2372762)))

(declare-fun c!669415 () Bool)

(get-info :version)

(assert (=> b!3840845 (= c!669415 ((_ is Cons!40626) rules!2768))))

(declare-fun tp!1163392 () Bool)

(declare-fun b!3840846 () Bool)

(declare-fun e!2372755 () Bool)

(assert (=> b!3840846 (= e!2372755 (and (inv!54775 (h!46047 suffixTokens!72)) e!2372748 tp!1163392))))

(declare-fun b!3840847 () Bool)

(declare-fun e!2372771 () Bool)

(declare-fun tp!1163388 () Bool)

(assert (=> b!3840847 (= e!2372771 (and e!2372744 tp!1163388))))

(declare-fun tp!1163394 () Bool)

(declare-fun e!2372767 () Bool)

(declare-fun e!2372773 () Bool)

(declare-fun b!3840848 () Bool)

(assert (=> b!3840848 (= e!2372767 (and tp!1163394 (inv!54771 (tag!7126 (rule!9104 (h!46047 prefixTokens!80)))) (inv!54774 (transformation!6266 (rule!9104 (h!46047 prefixTokens!80)))) e!2372773))))

(declare-fun b!3840849 () Bool)

(declare-fun e!2372752 () Bool)

(assert (=> b!3840849 (= e!2372752 (= lt!1333007 e!2372746))))

(declare-fun c!669414 () Bool)

(assert (=> b!3840849 (= c!669414 (and ((_ is Cons!40626) rules!2768) ((_ is Nil!40626) (t!310419 rules!2768))))))

(declare-fun b!3840850 () Bool)

(declare-fun e!2372764 () Bool)

(assert (=> b!3840850 (= e!2372754 e!2372764)))

(declare-fun res!1554524 () Bool)

(assert (=> b!3840850 (=> res!1554524 e!2372764)))

(assert (=> b!3840850 (= res!1554524 (not (= lt!1333007 (Some!8683 (tuple2!39801 (_1!23034 (v!38975 lt!1333007)) (_2!23034 (v!38975 lt!1333007)))))))))

(assert (=> b!3840850 e!2372752))

(declare-fun res!1554522 () Bool)

(assert (=> b!3840850 (=> (not res!1554522) (not e!2372752))))

(assert (=> b!3840850 (= res!1554522 (isPrefix!3365 lt!1332998 lt!1332998))))

(declare-fun lt!1333010 () Unit!58334)

(declare-fun lemmaIsPrefixRefl!2138 (List!40748 List!40748) Unit!58334)

(assert (=> b!3840850 (= lt!1333010 (lemmaIsPrefixRefl!2138 lt!1332998 lt!1332998))))

(assert (=> b!3840850 (= lt!1333001 (tuple2!39799 (Cons!40627 (_1!23034 (v!38975 lt!1333007)) (_1!23033 lt!1333000)) (_2!23033 lt!1333000)))))

(declare-fun b!3840851 () Bool)

(assert (=> b!3840851 (= e!2372764 true)))

(declare-fun lt!1333002 () Int)

(assert (=> b!3840851 (= lt!1333002 (size!30580 prefix!426))))

(declare-fun res!1554520 () Bool)

(assert (=> start!359644 (=> (not res!1554520) (not e!2372772))))

(assert (=> start!359644 (= res!1554520 ((_ is Lexer!5853) thiss!20629))))

(assert (=> start!359644 e!2372772))

(assert (=> start!359644 e!2372756))

(assert (=> start!359644 true))

(declare-fun e!2372776 () Bool)

(assert (=> start!359644 e!2372776))

(assert (=> start!359644 e!2372771))

(assert (=> start!359644 e!2372763))

(assert (=> start!359644 e!2372755))

(assert (=> start!359644 e!2372760))

(declare-fun tp!1163387 () Bool)

(declare-fun b!3840832 () Bool)

(assert (=> b!3840832 (= e!2372765 (and (inv!21 (value!199215 (h!46047 prefixTokens!80))) e!2372767 tp!1163387))))

(declare-fun lt!1333005 () Option!8684)

(declare-fun b!3840852 () Bool)

(declare-fun maxPrefix!3159 (LexerInterface!5855 List!40750 List!40748) Option!8684)

(assert (=> b!3840852 (= lt!1333005 (maxPrefix!3159 thiss!20629 (t!310419 rules!2768) lt!1332998))))

(declare-fun lt!1332997 () Option!8684)

(assert (=> b!3840852 (= lt!1332997 call!281948)))

(assert (=> b!3840852 (= e!2372762 (ite (and ((_ is None!8683) lt!1332997) ((_ is None!8683) lt!1333005)) None!8683 (ite ((_ is None!8683) lt!1333005) lt!1332997 (ite ((_ is None!8683) lt!1332997) lt!1333005 (ite (>= (size!30579 (_1!23034 (v!38975 lt!1332997))) (size!30579 (_1!23034 (v!38975 lt!1333005)))) (Some!8683 (v!38975 lt!1332997)) lt!1333005)))))))

(declare-fun b!3840853 () Bool)

(declare-fun res!1554519 () Bool)

(assert (=> b!3840853 (=> (not res!1554519) (not e!2372772))))

(declare-fun rulesInvariant!5198 (LexerInterface!5855 List!40750) Bool)

(assert (=> b!3840853 (= res!1554519 (rulesInvariant!5198 thiss!20629 rules!2768))))

(assert (=> b!3840854 (= e!2372773 (and tp!1163384 tp!1163382))))

(declare-fun b!3840855 () Bool)

(assert (=> b!3840855 (= e!2372743 (= (size!30579 (_1!23034 (v!38975 lt!1333007))) (size!30580 (originalCharacters!6866 (_1!23034 (v!38975 lt!1333007))))))))

(declare-fun b!3840856 () Bool)

(declare-fun res!1554530 () Bool)

(assert (=> b!3840856 (=> (not res!1554530) (not e!2372772))))

(declare-fun isEmpty!24011 (List!40750) Bool)

(assert (=> b!3840856 (= res!1554530 (not (isEmpty!24011 rules!2768)))))

(declare-fun tp!1163383 () Bool)

(declare-fun b!3840857 () Bool)

(assert (=> b!3840857 (= e!2372751 (and tp!1163383 (inv!54771 (tag!7126 (rule!9104 (h!46047 suffixTokens!72)))) (inv!54774 (transformation!6266 (rule!9104 (h!46047 suffixTokens!72)))) e!2372775))))

(declare-fun b!3840858 () Bool)

(assert (=> b!3840858 (= e!2372745 e!2372758)))

(declare-fun res!1554528 () Bool)

(assert (=> b!3840858 (=> (not res!1554528) (not e!2372758))))

(assert (=> b!3840858 (= res!1554528 ((_ is Some!8683) lt!1333007))))

(assert (=> b!3840858 (= lt!1333007 (maxPrefix!3159 thiss!20629 rules!2768 lt!1332998))))

(declare-fun b!3840859 () Bool)

(declare-fun tp!1163380 () Bool)

(assert (=> b!3840859 (= e!2372776 (and tp_is_empty!19313 tp!1163380))))

(declare-fun b!3840860 () Bool)

(declare-fun res!1554521 () Bool)

(assert (=> b!3840860 (=> (not res!1554521) (not e!2372772))))

(declare-fun isEmpty!24012 (List!40748) Bool)

(assert (=> b!3840860 (= res!1554521 (not (isEmpty!24012 prefix!426)))))

(assert (= (and start!359644 res!1554520) b!3840856))

(assert (= (and b!3840856 res!1554530) b!3840853))

(assert (= (and b!3840853 res!1554519) b!3840827))

(assert (= (and b!3840827 res!1554526) b!3840860))

(assert (= (and b!3840860 res!1554521) b!3840831))

(assert (= (and b!3840831 res!1554523) b!3840838))

(assert (= (and b!3840838 res!1554529) b!3840858))

(assert (= (and b!3840858 res!1554528) b!3840843))

(assert (= (and b!3840843 res!1554532) b!3840855))

(assert (= (and b!3840843 (not res!1554525)) b!3840826))

(assert (= (and b!3840826 (not res!1554531)) b!3840841))

(assert (= (and b!3840841 (not res!1554527)) b!3840850))

(assert (= (and b!3840850 res!1554522) b!3840849))

(assert (= (and b!3840849 c!669414) b!3840836))

(assert (= (and b!3840849 (not c!669414)) b!3840845))

(assert (= (and b!3840845 c!669415) b!3840852))

(assert (= (and b!3840845 (not c!669415)) b!3840833))

(assert (= b!3840834 b!3840837))

(assert (= b!3840840 b!3840834))

(assert (= b!3840839 b!3840840))

(assert (= (and b!3840833 ((_ is Some!8683) err!4217)) b!3840839))

(assert (= (or b!3840836 b!3840852) bm!281943))

(assert (= (and b!3840850 (not res!1554524)) b!3840851))

(assert (= (and start!359644 ((_ is Cons!40624) suffixResult!91)) b!3840828))

(assert (= (and start!359644 ((_ is Cons!40624) suffix!1176)) b!3840859))

(assert (= b!3840825 b!3840829))

(assert (= b!3840847 b!3840825))

(assert (= (and start!359644 ((_ is Cons!40626) rules!2768)) b!3840847))

(assert (= b!3840848 b!3840854))

(assert (= b!3840832 b!3840848))

(assert (= b!3840830 b!3840832))

(assert (= (and start!359644 ((_ is Cons!40627) prefixTokens!80)) b!3840830))

(assert (= b!3840857 b!3840842))

(assert (= b!3840835 b!3840857))

(assert (= b!3840846 b!3840835))

(assert (= (and start!359644 ((_ is Cons!40627) suffixTokens!72)) b!3840846))

(assert (= (and start!359644 ((_ is Cons!40624) prefix!426)) b!3840844))

(declare-fun m!4395105 () Bool)

(assert (=> b!3840860 m!4395105))

(declare-fun m!4395107 () Bool)

(assert (=> bm!281943 m!4395107))

(declare-fun m!4395109 () Bool)

(assert (=> b!3840850 m!4395109))

(declare-fun m!4395111 () Bool)

(assert (=> b!3840850 m!4395111))

(declare-fun m!4395113 () Bool)

(assert (=> b!3840857 m!4395113))

(declare-fun m!4395115 () Bool)

(assert (=> b!3840857 m!4395115))

(declare-fun m!4395117 () Bool)

(assert (=> b!3840858 m!4395117))

(declare-fun m!4395119 () Bool)

(assert (=> b!3840853 m!4395119))

(declare-fun m!4395121 () Bool)

(assert (=> b!3840827 m!4395121))

(declare-fun m!4395123 () Bool)

(assert (=> b!3840830 m!4395123))

(declare-fun m!4395125 () Bool)

(assert (=> b!3840846 m!4395125))

(declare-fun m!4395127 () Bool)

(assert (=> b!3840835 m!4395127))

(declare-fun m!4395129 () Bool)

(assert (=> b!3840825 m!4395129))

(declare-fun m!4395131 () Bool)

(assert (=> b!3840825 m!4395131))

(declare-fun m!4395133 () Bool)

(assert (=> b!3840855 m!4395133))

(declare-fun m!4395135 () Bool)

(assert (=> b!3840843 m!4395135))

(declare-fun m!4395137 () Bool)

(assert (=> b!3840843 m!4395137))

(declare-fun m!4395139 () Bool)

(assert (=> b!3840843 m!4395139))

(assert (=> b!3840843 m!4395139))

(declare-fun m!4395141 () Bool)

(assert (=> b!3840843 m!4395141))

(declare-fun m!4395143 () Bool)

(assert (=> b!3840843 m!4395143))

(declare-fun m!4395145 () Bool)

(assert (=> b!3840843 m!4395145))

(declare-fun m!4395147 () Bool)

(assert (=> b!3840843 m!4395147))

(declare-fun m!4395149 () Bool)

(assert (=> b!3840843 m!4395149))

(declare-fun m!4395151 () Bool)

(assert (=> b!3840843 m!4395151))

(assert (=> b!3840843 m!4395147))

(declare-fun m!4395153 () Bool)

(assert (=> b!3840843 m!4395153))

(declare-fun m!4395155 () Bool)

(assert (=> b!3840843 m!4395155))

(declare-fun m!4395157 () Bool)

(assert (=> b!3840843 m!4395157))

(declare-fun m!4395159 () Bool)

(assert (=> b!3840843 m!4395159))

(declare-fun m!4395161 () Bool)

(assert (=> b!3840843 m!4395161))

(declare-fun m!4395163 () Bool)

(assert (=> b!3840831 m!4395163))

(declare-fun m!4395165 () Bool)

(assert (=> b!3840831 m!4395165))

(declare-fun m!4395167 () Bool)

(assert (=> b!3840831 m!4395167))

(declare-fun m!4395169 () Bool)

(assert (=> b!3840848 m!4395169))

(declare-fun m!4395171 () Bool)

(assert (=> b!3840848 m!4395171))

(declare-fun m!4395173 () Bool)

(assert (=> b!3840840 m!4395173))

(declare-fun m!4395175 () Bool)

(assert (=> b!3840851 m!4395175))

(declare-fun m!4395177 () Bool)

(assert (=> b!3840826 m!4395177))

(declare-fun m!4395179 () Bool)

(assert (=> b!3840834 m!4395179))

(declare-fun m!4395181 () Bool)

(assert (=> b!3840834 m!4395181))

(declare-fun m!4395183 () Bool)

(assert (=> b!3840838 m!4395183))

(declare-fun m!4395185 () Bool)

(assert (=> b!3840839 m!4395185))

(declare-fun m!4395187 () Bool)

(assert (=> b!3840856 m!4395187))

(declare-fun m!4395189 () Bool)

(assert (=> b!3840852 m!4395189))

(declare-fun m!4395191 () Bool)

(assert (=> b!3840832 m!4395191))

(check-sat (not b!3840855) b_and!286093 (not b!3840825) (not b!3840857) (not b_next!103121) b_and!286097 (not b!3840840) (not b!3840851) (not b!3840852) (not b!3840831) (not b_next!103117) (not b!3840834) b_and!286095 (not b!3840850) (not b!3840847) (not b!3840844) (not b!3840853) b_and!286101 (not b_next!103115) (not b!3840835) (not b!3840843) (not b!3840859) (not b_next!103125) (not b!3840838) (not b!3840846) (not b!3840860) (not b_next!103127) (not b!3840832) (not b!3840828) (not b_next!103119) (not b!3840830) b_and!286089 (not bm!281943) (not b!3840856) b_and!286091 (not b!3840839) (not b_next!103123) tp_is_empty!19313 (not b!3840826) (not b!3840858) (not b!3840848) b_and!286087 (not b!3840827) b_and!286099 (not b_next!103113))
(check-sat b_and!286093 b_and!286095 b_and!286101 (not b_next!103121) (not b_next!103115) b_and!286097 (not b_next!103125) (not b_next!103127) (not b_next!103119) b_and!286089 b_and!286091 (not b_next!103123) b_and!286087 (not b_next!103117) b_and!286099 (not b_next!103113))
