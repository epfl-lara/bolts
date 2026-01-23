; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359524 () Bool)

(assert start!359524)

(declare-fun b!3839648 () Bool)

(declare-fun b_free!102289 () Bool)

(declare-fun b_next!102993 () Bool)

(assert (=> b!3839648 (= b_free!102289 (not b_next!102993))))

(declare-fun tp!1162825 () Bool)

(declare-fun b_and!285887 () Bool)

(assert (=> b!3839648 (= tp!1162825 b_and!285887)))

(declare-fun b_free!102291 () Bool)

(declare-fun b_next!102995 () Bool)

(assert (=> b!3839648 (= b_free!102291 (not b_next!102995))))

(declare-fun tp!1162830 () Bool)

(declare-fun b_and!285889 () Bool)

(assert (=> b!3839648 (= tp!1162830 b_and!285889)))

(declare-fun b!3839631 () Bool)

(declare-fun b_free!102293 () Bool)

(declare-fun b_next!102997 () Bool)

(assert (=> b!3839631 (= b_free!102293 (not b_next!102997))))

(declare-fun tp!1162827 () Bool)

(declare-fun b_and!285891 () Bool)

(assert (=> b!3839631 (= tp!1162827 b_and!285891)))

(declare-fun b_free!102295 () Bool)

(declare-fun b_next!102999 () Bool)

(assert (=> b!3839631 (= b_free!102295 (not b_next!102999))))

(declare-fun tp!1162831 () Bool)

(declare-fun b_and!285893 () Bool)

(assert (=> b!3839631 (= tp!1162831 b_and!285893)))

(declare-fun b!3839653 () Bool)

(declare-fun b_free!102297 () Bool)

(declare-fun b_next!103001 () Bool)

(assert (=> b!3839653 (= b_free!102297 (not b_next!103001))))

(declare-fun tp!1162829 () Bool)

(declare-fun b_and!285895 () Bool)

(assert (=> b!3839653 (= tp!1162829 b_and!285895)))

(declare-fun b_free!102299 () Bool)

(declare-fun b_next!103003 () Bool)

(assert (=> b!3839653 (= b_free!102299 (not b_next!103003))))

(declare-fun tp!1162833 () Bool)

(declare-fun b_and!285897 () Bool)

(assert (=> b!3839653 (= tp!1162833 b_and!285897)))

(declare-fun b!3839651 () Bool)

(declare-fun b_free!102301 () Bool)

(declare-fun b_next!103005 () Bool)

(assert (=> b!3839651 (= b_free!102301 (not b_next!103005))))

(declare-fun tp!1162837 () Bool)

(declare-fun b_and!285899 () Bool)

(assert (=> b!3839651 (= tp!1162837 b_and!285899)))

(declare-fun b_free!102303 () Bool)

(declare-fun b_next!103007 () Bool)

(assert (=> b!3839651 (= b_free!102303 (not b_next!103007))))

(declare-fun tp!1162826 () Bool)

(declare-fun b_and!285901 () Bool)

(assert (=> b!3839651 (= tp!1162826 b_and!285901)))

(declare-fun b!3839623 () Bool)

(declare-fun res!1554032 () Bool)

(declare-fun e!2371824 () Bool)

(assert (=> b!3839623 (=> res!1554032 e!2371824)))

(declare-datatypes ((List!40722 0))(
  ( (Nil!40598) (Cons!40598 (h!46018 (_ BitVec 16)) (t!310251 List!40722)) )
))
(declare-datatypes ((TokenValue!6490 0))(
  ( (FloatLiteralValue!12980 (text!45875 List!40722)) (TokenValueExt!6489 (__x!25197 Int)) (Broken!32450 (value!199018 List!40722)) (Object!6613) (End!6490) (Def!6490) (Underscore!6490) (Match!6490) (Else!6490) (Error!6490) (Case!6490) (If!6490) (Extends!6490) (Abstract!6490) (Class!6490) (Val!6490) (DelimiterValue!12980 (del!6550 List!40722)) (KeywordValue!6496 (value!199019 List!40722)) (CommentValue!12980 (value!199020 List!40722)) (WhitespaceValue!12980 (value!199021 List!40722)) (IndentationValue!6490 (value!199022 List!40722)) (String!46167) (Int32!6490) (Broken!32451 (value!199023 List!40722)) (Boolean!6491) (Unit!58313) (OperatorValue!6493 (op!6550 List!40722)) (IdentifierValue!12980 (value!199024 List!40722)) (IdentifierValue!12981 (value!199025 List!40722)) (WhitespaceValue!12981 (value!199026 List!40722)) (True!12980) (False!12980) (Broken!32452 (value!199027 List!40722)) (Broken!32453 (value!199028 List!40722)) (True!12981) (RightBrace!6490) (RightBracket!6490) (Colon!6490) (Null!6490) (Comma!6490) (LeftBracket!6490) (False!12981) (LeftBrace!6490) (ImaginaryLiteralValue!6490 (text!45876 List!40722)) (StringLiteralValue!19470 (value!199029 List!40722)) (EOFValue!6490 (value!199030 List!40722)) (IdentValue!6490 (value!199031 List!40722)) (DelimiterValue!12981 (value!199032 List!40722)) (DedentValue!6490 (value!199033 List!40722)) (NewLineValue!6490 (value!199034 List!40722)) (IntegerValue!19470 (value!199035 (_ BitVec 32)) (text!45877 List!40722)) (IntegerValue!19471 (value!199036 Int) (text!45878 List!40722)) (Times!6490) (Or!6490) (Equal!6490) (Minus!6490) (Broken!32454 (value!199037 List!40722)) (And!6490) (Div!6490) (LessEqual!6490) (Mod!6490) (Concat!17655) (Not!6490) (Plus!6490) (SpaceValue!6490 (value!199038 List!40722)) (IntegerValue!19472 (value!199039 Int) (text!45879 List!40722)) (StringLiteralValue!19471 (text!45880 List!40722)) (FloatLiteralValue!12981 (text!45881 List!40722)) (BytesLiteralValue!6490 (value!199040 List!40722)) (CommentValue!12981 (value!199041 List!40722)) (StringLiteralValue!19472 (value!199042 List!40722)) (ErrorTokenValue!6490 (msg!6551 List!40722)) )
))
(declare-datatypes ((C!22516 0))(
  ( (C!22517 (val!13352 Int)) )
))
(declare-datatypes ((Regex!11165 0))(
  ( (ElementMatch!11165 (c!669278 C!22516)) (Concat!17656 (regOne!22842 Regex!11165) (regTwo!22842 Regex!11165)) (EmptyExpr!11165) (Star!11165 (reg!11494 Regex!11165)) (EmptyLang!11165) (Union!11165 (regOne!22843 Regex!11165) (regTwo!22843 Regex!11165)) )
))
(declare-datatypes ((String!46168 0))(
  ( (String!46169 (value!199043 String)) )
))
(declare-datatypes ((List!40723 0))(
  ( (Nil!40599) (Cons!40599 (h!46019 C!22516) (t!310252 List!40723)) )
))
(declare-datatypes ((IArray!24947 0))(
  ( (IArray!24948 (innerList!12531 List!40723)) )
))
(declare-datatypes ((Conc!12471 0))(
  ( (Node!12471 (left!31371 Conc!12471) (right!31701 Conc!12471) (csize!25172 Int) (cheight!12682 Int)) (Leaf!19308 (xs!15777 IArray!24947) (csize!25173 Int)) (Empty!12471) )
))
(declare-datatypes ((BalanceConc!24536 0))(
  ( (BalanceConc!24537 (c!669279 Conc!12471)) )
))
(declare-datatypes ((TokenValueInjection!12408 0))(
  ( (TokenValueInjection!12409 (toValue!8676 Int) (toChars!8535 Int)) )
))
(declare-datatypes ((Rule!12320 0))(
  ( (Rule!12321 (regex!6260 Regex!11165) (tag!7120 String!46168) (isSeparator!6260 Bool) (transformation!6260 TokenValueInjection!12408)) )
))
(declare-datatypes ((Token!11658 0))(
  ( (Token!11659 (value!199044 TokenValue!6490) (rule!9096 Rule!12320) (size!30563 Int) (originalCharacters!6860 List!40723)) )
))
(declare-datatypes ((List!40724 0))(
  ( (Nil!40600) (Cons!40600 (h!46020 Token!11658) (t!310253 List!40724)) )
))
(declare-datatypes ((tuple2!39770 0))(
  ( (tuple2!39771 (_1!23019 List!40724) (_2!23019 List!40723)) )
))
(declare-fun lt!1332510 () tuple2!39770)

(declare-datatypes ((tuple2!39772 0))(
  ( (tuple2!39773 (_1!23020 Token!11658) (_2!23020 List!40723)) )
))
(declare-datatypes ((Option!8678 0))(
  ( (None!8677) (Some!8677 (v!38969 tuple2!39772)) )
))
(declare-fun lt!1332508 () Option!8678)

(declare-fun suffix!1176 () List!40723)

(assert (=> b!3839623 (= res!1554032 (or (not (= lt!1332510 (tuple2!39771 (_1!23019 lt!1332510) (_2!23019 lt!1332510)))) (not (= (_2!23020 (v!38969 lt!1332508)) suffix!1176))))))

(declare-fun b!3839624 () Bool)

(declare-fun e!2371821 () Bool)

(declare-fun tp_is_empty!19301 () Bool)

(declare-fun tp!1162835 () Bool)

(assert (=> b!3839624 (= e!2371821 (and tp_is_empty!19301 tp!1162835))))

(declare-fun b!3839625 () Bool)

(assert (=> b!3839625 (= e!2371824 true)))

(declare-fun e!2371814 () Bool)

(assert (=> b!3839625 e!2371814))

(declare-fun res!1554031 () Bool)

(assert (=> b!3839625 (=> (not res!1554031) (not e!2371814))))

(declare-fun lt!1332512 () List!40723)

(declare-fun isPrefix!3359 (List!40723 List!40723) Bool)

(assert (=> b!3839625 (= res!1554031 (isPrefix!3359 lt!1332512 lt!1332512))))

(declare-datatypes ((Unit!58314 0))(
  ( (Unit!58315) )
))
(declare-fun lt!1332511 () Unit!58314)

(declare-fun lemmaIsPrefixRefl!2132 (List!40723 List!40723) Unit!58314)

(assert (=> b!3839625 (= lt!1332511 (lemmaIsPrefixRefl!2132 lt!1332512 lt!1332512))))

(declare-fun lt!1332507 () tuple2!39770)

(assert (=> b!3839625 (= lt!1332507 (tuple2!39771 (Cons!40600 (_1!23020 (v!38969 lt!1332508)) (_1!23019 lt!1332510)) (_2!23019 lt!1332510)))))

(declare-fun b!3839626 () Bool)

(declare-fun e!2371827 () Bool)

(declare-fun tp!1162843 () Bool)

(assert (=> b!3839626 (= e!2371827 (and tp_is_empty!19301 tp!1162843))))

(declare-fun b!3839627 () Bool)

(declare-fun suffixTokens!72 () List!40724)

(declare-fun tp!1162840 () Bool)

(declare-fun e!2371801 () Bool)

(declare-fun e!2371812 () Bool)

(declare-fun inv!21 (TokenValue!6490) Bool)

(assert (=> b!3839627 (= e!2371801 (and (inv!21 (value!199044 (h!46020 suffixTokens!72))) e!2371812 tp!1162840))))

(declare-fun b!3839628 () Bool)

(declare-fun res!1554029 () Bool)

(declare-fun e!2371803 () Bool)

(assert (=> b!3839628 (=> (not res!1554029) (not e!2371803))))

(declare-datatypes ((LexerInterface!5849 0))(
  ( (LexerInterfaceExt!5846 (__x!25198 Int)) (Lexer!5847) )
))
(declare-fun thiss!20629 () LexerInterface!5849)

(declare-datatypes ((List!40725 0))(
  ( (Nil!40601) (Cons!40601 (h!46021 Rule!12320) (t!310254 List!40725)) )
))
(declare-fun rules!2768 () List!40725)

(declare-fun rulesInvariant!5192 (LexerInterface!5849 List!40725) Bool)

(assert (=> b!3839628 (= res!1554029 (rulesInvariant!5192 thiss!20629 rules!2768))))

(declare-fun b!3839629 () Bool)

(declare-fun res!1554036 () Bool)

(assert (=> b!3839629 (=> (not res!1554036) (not e!2371803))))

(declare-fun prefix!426 () List!40723)

(declare-fun isEmpty!23990 (List!40723) Bool)

(assert (=> b!3839629 (= res!1554036 (not (isEmpty!23990 prefix!426)))))

(declare-fun b!3839630 () Bool)

(declare-fun res!1554030 () Bool)

(assert (=> b!3839630 (=> res!1554030 e!2371824)))

(declare-fun ++!10277 (List!40724 List!40724) List!40724)

(assert (=> b!3839630 (= res!1554030 (not (= lt!1332507 (tuple2!39771 (++!10277 (Cons!40600 (_1!23020 (v!38969 lt!1332508)) Nil!40600) (_1!23019 lt!1332510)) (_2!23019 lt!1332510)))))))

(declare-fun e!2371829 () Bool)

(assert (=> b!3839631 (= e!2371829 (and tp!1162827 tp!1162831))))

(declare-fun e!2371823 () Bool)

(declare-fun prefixTokens!80 () List!40724)

(declare-fun tp!1162838 () Bool)

(declare-fun e!2371818 () Bool)

(declare-fun b!3839632 () Bool)

(assert (=> b!3839632 (= e!2371823 (and (inv!21 (value!199044 (h!46020 prefixTokens!80))) e!2371818 tp!1162838))))

(declare-fun b!3839633 () Bool)

(declare-fun e!2371832 () Bool)

(assert (=> b!3839633 (= e!2371803 e!2371832)))

(declare-fun res!1554040 () Bool)

(assert (=> b!3839633 (=> (not res!1554040) (not e!2371832))))

(declare-fun suffixResult!91 () List!40723)

(declare-fun lt!1332518 () List!40724)

(assert (=> b!3839633 (= res!1554040 (= lt!1332507 (tuple2!39771 lt!1332518 suffixResult!91)))))

(declare-fun lexList!1617 (LexerInterface!5849 List!40725 List!40723) tuple2!39770)

(assert (=> b!3839633 (= lt!1332507 (lexList!1617 thiss!20629 rules!2768 lt!1332512))))

(assert (=> b!3839633 (= lt!1332518 (++!10277 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10278 (List!40723 List!40723) List!40723)

(assert (=> b!3839633 (= lt!1332512 (++!10278 prefix!426 suffix!1176))))

(declare-fun b!3839634 () Bool)

(declare-fun e!2371800 () Option!8678)

(assert (=> b!3839634 (= e!2371814 (= lt!1332508 e!2371800))))

(declare-fun c!669277 () Bool)

(get-info :version)

(assert (=> b!3839634 (= c!669277 (and ((_ is Cons!40601) rules!2768) ((_ is Nil!40601) (t!310254 rules!2768))))))

(declare-fun b!3839635 () Bool)

(declare-fun e!2371802 () Bool)

(declare-fun size!30564 (List!40723) Int)

(assert (=> b!3839635 (= e!2371802 (= (size!30563 (_1!23020 (v!38969 lt!1332508))) (size!30564 (originalCharacters!6860 (_1!23020 (v!38969 lt!1332508))))))))

(declare-fun b!3839636 () Bool)

(declare-fun res!1554028 () Bool)

(assert (=> b!3839636 (=> (not res!1554028) (not e!2371832))))

(assert (=> b!3839636 (= res!1554028 (= (lexList!1617 thiss!20629 rules!2768 suffix!1176) (tuple2!39771 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3839637 () Bool)

(declare-fun res!1554037 () Bool)

(assert (=> b!3839637 (=> (not res!1554037) (not e!2371803))))

(declare-fun isEmpty!23991 (List!40724) Bool)

(assert (=> b!3839637 (= res!1554037 (not (isEmpty!23991 prefixTokens!80)))))

(declare-fun res!1554039 () Bool)

(assert (=> start!359524 (=> (not res!1554039) (not e!2371803))))

(assert (=> start!359524 (= res!1554039 ((_ is Lexer!5847) thiss!20629))))

(assert (=> start!359524 e!2371803))

(assert (=> start!359524 e!2371821))

(assert (=> start!359524 true))

(declare-fun e!2371804 () Bool)

(assert (=> start!359524 e!2371804))

(declare-fun e!2371831 () Bool)

(assert (=> start!359524 e!2371831))

(declare-fun e!2371820 () Bool)

(assert (=> start!359524 e!2371820))

(declare-fun e!2371813 () Bool)

(assert (=> start!359524 e!2371813))

(assert (=> start!359524 e!2371827))

(declare-fun b!3839622 () Bool)

(declare-fun e!2371807 () Bool)

(declare-fun tp!1162846 () Bool)

(declare-fun inv!54746 (String!46168) Bool)

(declare-fun inv!54749 (TokenValueInjection!12408) Bool)

(assert (=> b!3839622 (= e!2371818 (and tp!1162846 (inv!54746 (tag!7120 (rule!9096 (h!46020 prefixTokens!80)))) (inv!54749 (transformation!6260 (rule!9096 (h!46020 prefixTokens!80)))) e!2371807))))

(declare-fun b!3839638 () Bool)

(declare-fun e!2371825 () Bool)

(assert (=> b!3839638 (= e!2371825 (not e!2371824))))

(declare-fun res!1554038 () Bool)

(assert (=> b!3839638 (=> res!1554038 e!2371824)))

(declare-fun lt!1332521 () List!40723)

(assert (=> b!3839638 (= res!1554038 (not (= lt!1332521 lt!1332512)))))

(assert (=> b!3839638 (= lt!1332510 (lexList!1617 thiss!20629 rules!2768 (_2!23020 (v!38969 lt!1332508))))))

(declare-fun lt!1332505 () TokenValue!6490)

(declare-fun lt!1332516 () List!40723)

(declare-fun lt!1332509 () Int)

(declare-fun lt!1332519 () List!40723)

(assert (=> b!3839638 (and (= (size!30563 (_1!23020 (v!38969 lt!1332508))) lt!1332509) (= (originalCharacters!6860 (_1!23020 (v!38969 lt!1332508))) lt!1332516) (= (v!38969 lt!1332508) (tuple2!39773 (Token!11659 lt!1332505 (rule!9096 (_1!23020 (v!38969 lt!1332508))) lt!1332509 lt!1332516) lt!1332519)))))

(assert (=> b!3839638 (= lt!1332509 (size!30564 lt!1332516))))

(assert (=> b!3839638 e!2371802))

(declare-fun res!1554033 () Bool)

(assert (=> b!3839638 (=> (not res!1554033) (not e!2371802))))

(assert (=> b!3839638 (= res!1554033 (= (value!199044 (_1!23020 (v!38969 lt!1332508))) lt!1332505))))

(declare-fun apply!9503 (TokenValueInjection!12408 BalanceConc!24536) TokenValue!6490)

(declare-fun seqFromList!4531 (List!40723) BalanceConc!24536)

(assert (=> b!3839638 (= lt!1332505 (apply!9503 (transformation!6260 (rule!9096 (_1!23020 (v!38969 lt!1332508)))) (seqFromList!4531 lt!1332516)))))

(assert (=> b!3839638 (= (_2!23020 (v!38969 lt!1332508)) lt!1332519)))

(declare-fun lt!1332517 () Unit!58314)

(declare-fun lemmaSamePrefixThenSameSuffix!1580 (List!40723 List!40723 List!40723 List!40723 List!40723) Unit!58314)

(assert (=> b!3839638 (= lt!1332517 (lemmaSamePrefixThenSameSuffix!1580 lt!1332516 (_2!23020 (v!38969 lt!1332508)) lt!1332516 lt!1332519 lt!1332512))))

(declare-fun getSuffix!1814 (List!40723 List!40723) List!40723)

(assert (=> b!3839638 (= lt!1332519 (getSuffix!1814 lt!1332512 lt!1332516))))

(assert (=> b!3839638 (isPrefix!3359 lt!1332516 lt!1332521)))

(assert (=> b!3839638 (= lt!1332521 (++!10278 lt!1332516 (_2!23020 (v!38969 lt!1332508))))))

(declare-fun lt!1332515 () Unit!58314)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2222 (List!40723 List!40723) Unit!58314)

(assert (=> b!3839638 (= lt!1332515 (lemmaConcatTwoListThenFirstIsPrefix!2222 lt!1332516 (_2!23020 (v!38969 lt!1332508))))))

(declare-fun list!15122 (BalanceConc!24536) List!40723)

(declare-fun charsOf!4088 (Token!11658) BalanceConc!24536)

(assert (=> b!3839638 (= lt!1332516 (list!15122 (charsOf!4088 (_1!23020 (v!38969 lt!1332508)))))))

(declare-fun ruleValid!2212 (LexerInterface!5849 Rule!12320) Bool)

(assert (=> b!3839638 (ruleValid!2212 thiss!20629 (rule!9096 (_1!23020 (v!38969 lt!1332508))))))

(declare-fun lt!1332513 () Unit!58314)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1292 (LexerInterface!5849 Rule!12320 List!40725) Unit!58314)

(assert (=> b!3839638 (= lt!1332513 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1292 thiss!20629 (rule!9096 (_1!23020 (v!38969 lt!1332508))) rules!2768))))

(declare-fun lt!1332506 () Unit!58314)

(declare-fun lemmaCharactersSize!921 (Token!11658) Unit!58314)

(assert (=> b!3839638 (= lt!1332506 (lemmaCharactersSize!921 (_1!23020 (v!38969 lt!1332508))))))

(declare-fun e!2371808 () Bool)

(declare-fun b!3839639 () Bool)

(declare-fun err!4193 () Option!8678)

(declare-fun tp!1162842 () Bool)

(assert (=> b!3839639 (= e!2371808 (and tp!1162842 (inv!54746 (tag!7120 (rule!9096 (_1!23020 (v!38969 err!4193))))) (inv!54749 (transformation!6260 (rule!9096 (_1!23020 (v!38969 err!4193))))) e!2371829))))

(declare-fun b!3839640 () Bool)

(declare-fun tp!1162845 () Bool)

(assert (=> b!3839640 (= e!2371804 (and tp_is_empty!19301 tp!1162845))))

(declare-fun b!3839641 () Bool)

(assert (=> b!3839641 (= e!2371832 e!2371825)))

(declare-fun res!1554034 () Bool)

(assert (=> b!3839641 (=> (not res!1554034) (not e!2371825))))

(assert (=> b!3839641 (= res!1554034 ((_ is Some!8677) lt!1332508))))

(declare-fun maxPrefix!3153 (LexerInterface!5849 List!40725 List!40723) Option!8678)

(assert (=> b!3839641 (= lt!1332508 (maxPrefix!3153 thiss!20629 rules!2768 lt!1332512))))

(declare-fun e!2371816 () Bool)

(declare-fun tp!1162841 () Bool)

(declare-fun b!3839642 () Bool)

(assert (=> b!3839642 (= e!2371816 (and (inv!21 (value!199044 (_1!23020 (v!38969 err!4193)))) e!2371808 tp!1162841))))

(declare-fun b!3839643 () Bool)

(declare-fun e!2371815 () Option!8678)

(assert (=> b!3839643 (= e!2371800 e!2371815)))

(declare-fun c!669276 () Bool)

(assert (=> b!3839643 (= c!669276 ((_ is Cons!40601) rules!2768))))

(declare-fun tp!1162832 () Bool)

(declare-fun e!2371806 () Bool)

(declare-fun b!3839644 () Bool)

(declare-fun e!2371811 () Bool)

(assert (=> b!3839644 (= e!2371806 (and tp!1162832 (inv!54746 (tag!7120 (h!46021 rules!2768))) (inv!54749 (transformation!6260 (h!46021 rules!2768))) e!2371811))))

(declare-fun b!3839645 () Bool)

(declare-fun tp!1162844 () Bool)

(declare-fun inv!54750 (Token!11658) Bool)

(assert (=> b!3839645 (= e!2371820 (and (inv!54750 (h!46020 prefixTokens!80)) e!2371823 tp!1162844))))

(declare-fun b!3839646 () Bool)

(assert (=> b!3839646 true))

(declare-fun e!2371830 () Bool)

(assert (=> b!3839646 e!2371830))

(assert (=> b!3839646 (= e!2371815 err!4193)))

(declare-fun b!3839647 () Bool)

(declare-fun tp!1162828 () Bool)

(declare-fun e!2371828 () Bool)

(assert (=> b!3839647 (= e!2371812 (and tp!1162828 (inv!54746 (tag!7120 (rule!9096 (h!46020 suffixTokens!72)))) (inv!54749 (transformation!6260 (rule!9096 (h!46020 suffixTokens!72)))) e!2371828))))

(assert (=> b!3839648 (= e!2371828 (and tp!1162825 tp!1162830))))

(declare-fun tp!1162839 () Bool)

(declare-fun b!3839649 () Bool)

(assert (=> b!3839649 (= e!2371830 (and (inv!54750 (_1!23020 (v!38969 err!4193))) e!2371816 tp!1162839))))

(declare-fun b!3839650 () Bool)

(declare-fun call!281922 () Option!8678)

(assert (=> b!3839650 (= e!2371800 call!281922)))

(declare-fun bm!281917 () Bool)

(declare-fun maxPrefixOneRule!2237 (LexerInterface!5849 Rule!12320 List!40723) Option!8678)

(assert (=> bm!281917 (= call!281922 (maxPrefixOneRule!2237 thiss!20629 (h!46021 rules!2768) lt!1332512))))

(assert (=> b!3839651 (= e!2371807 (and tp!1162837 tp!1162826))))

(declare-fun b!3839652 () Bool)

(declare-fun res!1554035 () Bool)

(assert (=> b!3839652 (=> (not res!1554035) (not e!2371803))))

(declare-fun isEmpty!23992 (List!40725) Bool)

(assert (=> b!3839652 (= res!1554035 (not (isEmpty!23992 rules!2768)))))

(assert (=> b!3839653 (= e!2371811 (and tp!1162829 tp!1162833))))

(declare-fun b!3839654 () Bool)

(declare-fun tp!1162836 () Bool)

(assert (=> b!3839654 (= e!2371831 (and e!2371806 tp!1162836))))

(declare-fun lt!1332514 () Option!8678)

(declare-fun b!3839655 () Bool)

(assert (=> b!3839655 (= lt!1332514 (maxPrefix!3153 thiss!20629 (t!310254 rules!2768) lt!1332512))))

(declare-fun lt!1332520 () Option!8678)

(assert (=> b!3839655 (= lt!1332520 call!281922)))

(assert (=> b!3839655 (= e!2371815 (ite (and ((_ is None!8677) lt!1332520) ((_ is None!8677) lt!1332514)) None!8677 (ite ((_ is None!8677) lt!1332514) lt!1332520 (ite ((_ is None!8677) lt!1332520) lt!1332514 (ite (>= (size!30563 (_1!23020 (v!38969 lt!1332520))) (size!30563 (_1!23020 (v!38969 lt!1332514)))) (Some!8677 (v!38969 lt!1332520)) lt!1332514)))))))

(declare-fun b!3839656 () Bool)

(declare-fun tp!1162834 () Bool)

(assert (=> b!3839656 (= e!2371813 (and (inv!54750 (h!46020 suffixTokens!72)) e!2371801 tp!1162834))))

(assert (= (and start!359524 res!1554039) b!3839652))

(assert (= (and b!3839652 res!1554035) b!3839628))

(assert (= (and b!3839628 res!1554029) b!3839637))

(assert (= (and b!3839637 res!1554037) b!3839629))

(assert (= (and b!3839629 res!1554036) b!3839633))

(assert (= (and b!3839633 res!1554040) b!3839636))

(assert (= (and b!3839636 res!1554028) b!3839641))

(assert (= (and b!3839641 res!1554034) b!3839638))

(assert (= (and b!3839638 res!1554033) b!3839635))

(assert (= (and b!3839638 (not res!1554038)) b!3839630))

(assert (= (and b!3839630 (not res!1554030)) b!3839623))

(assert (= (and b!3839623 (not res!1554032)) b!3839625))

(assert (= (and b!3839625 res!1554031) b!3839634))

(assert (= (and b!3839634 c!669277) b!3839650))

(assert (= (and b!3839634 (not c!669277)) b!3839643))

(assert (= (and b!3839643 c!669276) b!3839655))

(assert (= (and b!3839643 (not c!669276)) b!3839646))

(assert (= b!3839639 b!3839631))

(assert (= b!3839642 b!3839639))

(assert (= b!3839649 b!3839642))

(assert (= (and b!3839646 ((_ is Some!8677) err!4193)) b!3839649))

(assert (= (or b!3839650 b!3839655) bm!281917))

(assert (= (and start!359524 ((_ is Cons!40599) suffixResult!91)) b!3839624))

(assert (= (and start!359524 ((_ is Cons!40599) suffix!1176)) b!3839640))

(assert (= b!3839644 b!3839653))

(assert (= b!3839654 b!3839644))

(assert (= (and start!359524 ((_ is Cons!40601) rules!2768)) b!3839654))

(assert (= b!3839622 b!3839651))

(assert (= b!3839632 b!3839622))

(assert (= b!3839645 b!3839632))

(assert (= (and start!359524 ((_ is Cons!40600) prefixTokens!80)) b!3839645))

(assert (= b!3839647 b!3839648))

(assert (= b!3839627 b!3839647))

(assert (= b!3839656 b!3839627))

(assert (= (and start!359524 ((_ is Cons!40600) suffixTokens!72)) b!3839656))

(assert (= (and start!359524 ((_ is Cons!40599) prefix!426)) b!3839626))

(declare-fun m!4393911 () Bool)

(assert (=> b!3839642 m!4393911))

(declare-fun m!4393913 () Bool)

(assert (=> b!3839649 m!4393913))

(declare-fun m!4393915 () Bool)

(assert (=> b!3839632 m!4393915))

(declare-fun m!4393917 () Bool)

(assert (=> b!3839625 m!4393917))

(declare-fun m!4393919 () Bool)

(assert (=> b!3839625 m!4393919))

(declare-fun m!4393921 () Bool)

(assert (=> b!3839641 m!4393921))

(declare-fun m!4393923 () Bool)

(assert (=> b!3839630 m!4393923))

(declare-fun m!4393925 () Bool)

(assert (=> b!3839636 m!4393925))

(declare-fun m!4393927 () Bool)

(assert (=> b!3839629 m!4393927))

(declare-fun m!4393929 () Bool)

(assert (=> b!3839627 m!4393929))

(declare-fun m!4393931 () Bool)

(assert (=> b!3839655 m!4393931))

(declare-fun m!4393933 () Bool)

(assert (=> b!3839637 m!4393933))

(declare-fun m!4393935 () Bool)

(assert (=> b!3839652 m!4393935))

(declare-fun m!4393937 () Bool)

(assert (=> b!3839644 m!4393937))

(declare-fun m!4393939 () Bool)

(assert (=> b!3839644 m!4393939))

(declare-fun m!4393941 () Bool)

(assert (=> bm!281917 m!4393941))

(declare-fun m!4393943 () Bool)

(assert (=> b!3839622 m!4393943))

(declare-fun m!4393945 () Bool)

(assert (=> b!3839622 m!4393945))

(declare-fun m!4393947 () Bool)

(assert (=> b!3839633 m!4393947))

(declare-fun m!4393949 () Bool)

(assert (=> b!3839633 m!4393949))

(declare-fun m!4393951 () Bool)

(assert (=> b!3839633 m!4393951))

(declare-fun m!4393953 () Bool)

(assert (=> b!3839656 m!4393953))

(declare-fun m!4393955 () Bool)

(assert (=> b!3839628 m!4393955))

(declare-fun m!4393957 () Bool)

(assert (=> b!3839645 m!4393957))

(declare-fun m!4393959 () Bool)

(assert (=> b!3839647 m!4393959))

(declare-fun m!4393961 () Bool)

(assert (=> b!3839647 m!4393961))

(declare-fun m!4393963 () Bool)

(assert (=> b!3839635 m!4393963))

(declare-fun m!4393965 () Bool)

(assert (=> b!3839639 m!4393965))

(declare-fun m!4393967 () Bool)

(assert (=> b!3839639 m!4393967))

(declare-fun m!4393969 () Bool)

(assert (=> b!3839638 m!4393969))

(declare-fun m!4393971 () Bool)

(assert (=> b!3839638 m!4393971))

(declare-fun m!4393973 () Bool)

(assert (=> b!3839638 m!4393973))

(assert (=> b!3839638 m!4393969))

(declare-fun m!4393975 () Bool)

(assert (=> b!3839638 m!4393975))

(declare-fun m!4393977 () Bool)

(assert (=> b!3839638 m!4393977))

(declare-fun m!4393979 () Bool)

(assert (=> b!3839638 m!4393979))

(declare-fun m!4393981 () Bool)

(assert (=> b!3839638 m!4393981))

(declare-fun m!4393983 () Bool)

(assert (=> b!3839638 m!4393983))

(declare-fun m!4393985 () Bool)

(assert (=> b!3839638 m!4393985))

(declare-fun m!4393987 () Bool)

(assert (=> b!3839638 m!4393987))

(declare-fun m!4393989 () Bool)

(assert (=> b!3839638 m!4393989))

(declare-fun m!4393991 () Bool)

(assert (=> b!3839638 m!4393991))

(declare-fun m!4393993 () Bool)

(assert (=> b!3839638 m!4393993))

(assert (=> b!3839638 m!4393983))

(declare-fun m!4393995 () Bool)

(assert (=> b!3839638 m!4393995))

(check-sat (not b!3839624) (not b!3839632) tp_is_empty!19301 b_and!285895 (not b!3839633) b_and!285893 b_and!285897 (not b!3839647) (not b!3839637) (not b_next!102997) b_and!285887 (not b_next!102999) (not b!3839645) (not b!3839639) (not b!3839625) (not b!3839652) (not bm!281917) (not b!3839649) b_and!285901 (not b!3839642) (not b!3839629) (not b!3839641) (not b!3839628) (not b!3839630) (not b!3839654) (not b!3839627) (not b_next!102995) (not b_next!103005) (not b_next!103007) (not b!3839626) (not b!3839656) (not b!3839635) b_and!285891 (not b_next!103001) (not b!3839655) (not b!3839640) b_and!285899 (not b!3839622) (not b_next!103003) b_and!285889 (not b!3839636) (not b_next!102993) (not b!3839644) (not b!3839638))
(check-sat b_and!285895 b_and!285901 b_and!285893 b_and!285897 (not b_next!103007) (not b_next!102997) b_and!285887 (not b_next!102999) (not b_next!102995) (not b_next!103005) b_and!285891 (not b_next!103001) b_and!285899 (not b_next!103003) b_and!285889 (not b_next!102993))
